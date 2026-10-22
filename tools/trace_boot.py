#!/usr/bin/env python3
"""
trace_boot.py - headless MMC5 boot tracer for UW: watch the REAL control flow (bank-switch dispatch).

The koeivm CPU6502 is a real 6502 core but its Memory is MMC1-only (one $8000 window). UW is MMC5, so
this wraps the CPU in a proper MMC5 Memory: 8K windows $8000/$A000/$C000/$E000 via $5114-$5117, PRG-RAM
via $5113, the $5205/$5206 hardware multiplier, and stubbed PPU/input so the boot doesn't hang. It logs
every bank-switch ($5114-$5117 write) with the PC that caused it -> the actual title/main-loop/subsystem
transition sequence, grounded in execution (not inferred from static bytes).

  py -3 trace_boot.py [max_steps]
"""
import sys
sys.path.insert(0, r"C:\Users\Chris.Isaacson\koei-nes\tools")
from koeivm.cpu6502 import CPU6502

class CompleteCPU(CPU6502):
    """koeivm's CPU6502 covers the VM handlers but lacks 18 legal opcodes the full game uses (indexed
    RMW/load/store, (zp,X) ALU, CPX/CPY abs, BRK). Add them here so the shared tool stays untouched."""
    def addr_zp_y(self):
        a = (self.mem.read(self.pc) + self.y) & 0xFF; self.pc += 1; return a
    def _dispatch(self, op):
        M = self.mem
        if   op == 0x01: self.a |= M.read(self.addr_ind_x()); self.set_nz(self.a)   # ORA (zp,X)
        elif op == 0x21: self.a &= M.read(self.addr_ind_x()); self.set_nz(self.a)   # AND (zp,X)
        elif op == 0x41: self.a ^= M.read(self.addr_ind_x()); self.set_nz(self.a)   # EOR (zp,X)
        elif op == 0x61: self._adc(M.read(self.addr_ind_x()))                       # ADC (zp,X)
        elif op == 0xC1: self._cmp(self.a, M.read(self.addr_ind_x()))              # CMP (zp,X)
        elif op == 0x94: M.write(self.addr_zp_x(), self.y)                         # STY zp,X
        elif op == 0x96: M.write(self.addr_zp_y(), self.x)                         # STX zp,Y
        elif op == 0xB4: self.y = M.read(self.addr_zp_x()); self.set_nz(self.y)    # LDY zp,X
        elif op == 0xB6: self.x = M.read(self.addr_zp_y()); self.set_nz(self.x)    # LDX zp,Y
        elif op == 0xBC: self.y = M.read(self.addr_abs_x()); self.set_nz(self.y)   # LDY abs,X
        elif op == 0xBE: self.x = M.read(self.addr_abs_y()); self.set_nz(self.x)   # LDX abs,Y
        elif op == 0xCC: self._cmp(self.y, M.read(self.addr_abs()))                # CPY abs
        elif op == 0xEC: self._cmp(self.x, M.read(self.addr_abs()))                # CPX abs
        elif op == 0xD6:                                                            # DEC zp,X
            a=self.addr_zp_x(); v=(M.read(a)-1)&0xFF; M.write(a,v); self.set_nz(v)
        elif op == 0xF6:                                                            # INC zp,X
            a=self.addr_zp_x(); v=(M.read(a)+1)&0xFF; M.write(a,v); self.set_nz(v)
        elif op == 0xDE:                                                            # DEC abs,X
            a=self.addr_abs_x(); v=(M.read(a)-1)&0xFF; M.write(a,v); self.set_nz(v)
        elif op == 0xFE:                                                            # INC abs,X
            a=self.addr_abs_x(); v=(M.read(a)+1)&0xFF; M.write(a,v); self.set_nz(v)
        elif op == 0x00:                                                            # BRK
            self.pc = (self.pc+1)&0xFFFF
            self.push((self.pc>>8)&0xFF); self.push(self.pc&0xFF)
            p=0x30|(0x80 if self.n else 0)|(0x40 if self.v else 0)|(0x08 if self.d else 0)|(0x04 if self.i else 0)|(0x02 if self.z else 0)|(0x01 if self.c else 0)
            self.push(p); self.i=True; self.pc = M.read(0xFFFE)|(M.read(0xFFFF)<<8)
        else:
            super()._dispatch(op)

ROM = open(r"C:\Users\Chris.Isaacson\UW-decompile\Uncharted Waters (USA).nes","rb").read()
PRG = ROM[16:16+524288]
NBANKS = 64

class MMC5:
    def __init__(self):
        self.ram = bytearray(0x2000)      # $0000-$1FFF (mirrored)
        self.sram = bytearray(0x2000)     # $6000-$7FFF PRG-RAM
        # 8K window -> bank number. power-on: $5117=$FF (bank 63 fixed). others set by boot.
        self.bank = {0x8000:0, 0xA000:0, 0xC000:0xFE & 0x3F, 0xE000:63}
        self.mult_a = 0; self.mult_b = 0
        self.ppu_toggle = 0
        self.log = []                     # (pc, reg, bank)
        self.cur_pc = 0
        self.nmi_ready = 0
        self.buttons = 0                  # current button state (bit0=A,1=B,2=Sel,3=Start,4=U,5=D,6=L,7=R)
        self._strobe = 0; self._ctr = 0   # NES serial-controller shift state

    def _rom(self, bank, off):
        return PRG[(bank & 0x3F)*0x2000 + off]

    def read(self, addr):
        addr &= 0xFFFF
        if addr < 0x2000: return self.ram[addr & 0x1FFF]
        if addr == 0x2002:                # PPU status: toggle vblank so boot waits complete
            self.ppu_toggle ^= 0x80; return self.ppu_toggle
        if addr < 0x4000: return 0
        if addr == 0x4016:                               # controller 1 serial read: bit `ctr` of buttons
            b = (self.buttons >> self._ctr) & 1
            if self._ctr < 8: self._ctr += 1
            return b
        if addr == 0x4017: return 0                      # controller 2
        if addr == 0x5205: return (self.mult_a * self.mult_b) & 0xFF          # MMC5 mult lo
        if addr == 0x5206: return ((self.mult_a * self.mult_b) >> 8) & 0xFF   # MMC5 mult hi
        if 0x5000 <= addr < 0x6000: return 0
        if 0x6000 <= addr < 0x8000: return self.sram[addr - 0x6000]
        if addr >= 0x8000:
            base = addr & 0xE000
            if base < 0x8000: base = 0x8000
            return self._rom(self.bank[base], addr - base)
        return 0

    def write(self, addr, val):
        addr &= 0xFFFF; val &= 0xFF
        if addr < 0x2000: self.ram[addr & 0x1FFF] = val; return
        if addr == 0x5205: self.mult_a = val; return
        if addr == 0x5206: self.mult_b = val; return
        if addr == 0x4016:                               # controller strobe
            if val & 1: self._strobe = 1
            elif self._strobe: self._strobe = 0; self._ctr = 0
            return
        if addr in (0x5114,0x5115,0x5116,0x5117):        # PRG bank select (bit7=ROM, low6=bank on 512K)
            base = {0x5114:0x8000,0x5115:0xA000,0x5116:0xC000,0x5117:0xE000}[addr]
            self.bank[base] = val & 0x3F
            self.log.append((self.cur_pc, addr, val & 0x3F))
            return
        if 0x5000 <= addr < 0x6000: return               # other MMC5 regs (ignore)
        if 0x6000 <= addr < 0x8000: self.sram[addr - 0x6000] = val; return
        if addr < 0x8000: return                          # PPU/APU regs
        return                                            # ROM write ignored

    def read_word(self, a): return self.read(a) | (self.read(a+1) << 8)
    def write_word(self, a, v): self.write(a, v & 0xFF); self.write(a+1, (v>>8)&0xFF)

def main():
    maxsteps = int(sys.argv[1]) if len(sys.argv) > 1 else 2_000_000
    mem = MMC5()
    cpu = CompleteCPU(mem)
    cpu.pc = mem.read_word(0xFFFC)        # RESET vector ($F500)
    print(f"RESET -> ${cpu.pc:04X}")
    def pack_p(c):
        p = 0x20
        if c.n: p|=0x80
        if c.v: p|=0x40
        if c.d: p|=0x08
        if c.i: p|=0x04
        if c.z: p|=0x02
        if c.c: p|=0x01
        return p
    def fire_nmi(c):                       # simulate the per-frame PPU vblank NMI
        c.push((c.pc>>8)&0xFF); c.push(c.pc&0xFF); c.push(pack_p(c)); c.i=True
        c.pc = mem.read_word(0xFFFA)
    FRAME = 8000                            # ~instructions per simulated frame; fire NMI each frame
    nmi_count = 0
    dispatch = []                           # call_banked_routine events: (frame, caller, window_slot, bank)
    NMI_ENTRY = mem.read_word(0xFFFA)
    from collections import Counter
    hotpc = Counter()        # (resident_8000_bank, pc>>8) -> count, sampled outside NMI/fixed
    for step in range(maxsteps):
        mem.cur_pc = cpu.pc
        pc = cpu.pc
        # watch call_banked_routine ($FAB9): the subsystem-dispatch primitive. read window($52)+bank($54)+caller.
        if pc == 0xFAB9:
            caller = (mem.read(0x100+((cpu.sp+1)&0xFF)) | (mem.read(0x100+((cpu.sp+2)&0xFF))<<8))
            dispatch.append((nmi_count, caller, mem.ram[0x52], mem.ram[0x54] & 0x3F))
        # sample MAIN-LOOP location: only real subsystem CODE banks (exclude graphics banks 32-61 = NMI churn)
        if step % 17 == 0 and 0x8000 <= pc < 0xC000:
            resident = mem.bank[pc & 0xE000]
            if resident < 31:
                hotpc[(resident, pc & 0xFF00)] += 1
        if step and step % FRAME == 0 and nmi_count < 3000:
            nmi_count += 1
            # simulate the per-frame VRAM-transfer engine completing: clear $9F pending bits + frame flags
            # (the boot/main loop sets $9F=$83 to request a PPU transfer, then spins until NMI clears $9F&3).
            mem.ram[0x9F] &= 0xFC
            mem.ram[0xAE] = 0            # blocking-copy done flag (syscall_ppu_copy_blocking spins on $AE)
            # INPUT SCRIPT: pulse buttons as EDGES (press 2 frames, release). Alternate Start/A to
            # click through title -> new-game -> confirm prompts; A=0x01, Start=0x08, Down=0x20.
            # richer script: Start to begin, then cycle A(confirm)/Down(navigate)/A to click through the
            # new-game -> character -> world flow. Each = a 2-frame edge with gaps.
            seq = [0x08,0,0x01,0,0x01,0,0x20,0,0x01,0,0x08,0,0x01,0,0x20,0,0x01,0]  # Start,A,A,Down,A,Start,A,Down,A
            btn = 0 if nmi_count < 10 else (seq[(nmi_count//2) % len(seq)] if nmi_count % 2 == 0 else 0)
            mem.buttons = btn
            if cpu.pc != NMI_ENTRY: fire_nmi(cpu)
        try:
            cpu.step()
        except Exception as e:
            print(f"halt at step {step} pc ${pc:04X}: {e}"); break
    slot = {0:'$C000',1:'$8000',2:'$A000'}   # $52 window-slot index -> window (shadow $97/$98/$99)
    print(f"\ncall_banked_routine DISPATCH TRACE ({len(dispatch)} events over {nmi_count} frames):")
    print(f"{'frame':>5} {'caller':>7} {'window':>6}  target-bank (subsystem)")
    SUB={2:'title/new-game',20:'market',21:'ship-stats',22:'shipyard',23:'tavern',24:'quest',
         25:'royal',26:'crew',27:'gamble',28:'gamble',29:'sailing',30:'fleet',0:'?',1:'shared-lib'}
    seen_pair=set(); last=None
    for fr,caller,win,bank in dispatch:
        if (last,bank)==last: pass
        if bank==last: continue
        last=bank
        print(f"{fr:>5} ${caller:04X}  {slot.get(win,win)}  bank {bank:2d} {SUB.get(bank,'')}")
    print(f"\nMAIN-LOOP hot code (where execution runs; resident-bank : PC-page : samples):")
    for (bank,page),c in hotpc.most_common(15):
        win = '$A000' if page>=0xA000 else '$8000'
        print(f"  bank {bank:2d} @ {win}  ${page:04X}xx  {c:5d} samples  {SUB.get(bank,'')}")

if __name__ == "__main__":
    main()
