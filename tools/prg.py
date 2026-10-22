#!/usr/bin/env python3
"""
prg.py - the CANONICAL address layer for UW-decompile. PRG-ROM offset is the label IDENTITY; the CPU
address is a DERIVED VIEW (resolved by the bank's mapping window). Every tool routes address math
through here so no tool ever re-implements a CPU<->bank translation again -- that's where the bugs
lived (the $A/$B slot-translation that dropped 11 subs; the $F8D0 operand phantom; the $7Fxxx vs
$Fxxx confusion). Rule: store/key/diff by PRG offset; convert to CPU only to render or follow a
6502 reference.

  py -3 prg.py <prg_offset>     # resolve a ROM offset -> bank / CPU addr / label / disasm  (e.g. 7F882)
  py -3 prg.py --cpu <bank> <cpuaddr>   # inverse: (bank, CPU) -> PRG offset
  py -3 prg.py --validate      # check every label's PRG offset is unique + CPU maps back consistently
"""
import sys, re
sys.path.insert(0, r"C:\Users\Chris.Isaacson\koei-nes\tools")
import disasm6502 as D

HERE = r"C:\Users\Chris.Isaacson\UW-decompile"
PRG  = open(HERE + r"\Uncharted Waters (USA).nes", "rb").read()[16:16 + 524288]
BANK_SIZE = 0x2000
NBANKS = len(PRG) // BANK_SIZE                        # 64

# Bank -> CPU mapping window (games.toml [uw]). Identity math (prg = bank*0x2000 + (cpu & 0x1FFF)) is
# window-independent since every window base has low-13 bits = 0; the window only affects the CPU VIEW.
AT_8000 = {0,2,3,4,5,6,8,9,11,12,14,15,16,17,18,19,20,21,22,23,24,26,27,28,29,30,35,36,37,38}
def window(bank):
    if bank == 63: return 0xE000            # fixed OS bank
    if bank == 62: return 0xC000            # semi-fixed lib
    if bank in AT_8000: return 0x8000       # rotating code window
    return 0xA000                           # default (app/data window)

# ---- the ONE converter pair -------------------------------------------------
def cpu_to_prg(bank, cpu):  return bank * BANK_SIZE + (cpu & 0x1FFF)
def prg_to_bank(prg):       return prg // BANK_SIZE
def prg_to_cpu(prg):        b = prg_to_bank(prg); return window(b) + (prg % BANK_SIZE)

# ---- labels, keyed canonically by PRG offset --------------------------------
def load_labels():
    """{prg_offset: (name, comment, bank, cpu)} -- parses the bank-scoped toml, re-keys to PRG."""
    out, sec = {}, None
    for ln in open(HERE + r"\mesen-labels.toml", encoding="utf-8"):
        m = re.match(r'^\s*\[([^\]]+)\]', ln)
        if m: sec = m.group(1); continue
        m = re.match(r'^"0x([0-9A-Fa-f]+)"\s*=\s*\{\s*name\s*=\s*"([^"]*)"(?:,\s*comment\s*=\s*"(.*)")?\s*\}', ln.strip())
        if not (m and sec): continue
        addr = int(m.group(1), 16); name = m.group(2); comment = m.group(3) or ""
        if sec.startswith("prg.bank"):
            bank = int(sec[len("prg.bank"):]); prg = cpu_to_prg(bank, addr)
            out[prg] = (name, comment, bank, addr)
    return out

def disasm(cpu, buf_base, buf, n=12):
    i = cpu - buf_base
    while n > 0 and 0 <= i < len(buf):
        op = buf[i]
        if op not in D.OPS: print(f"    ${buf_base+i:04X}: .db ${op:02x}"); i += 1; n -= 1; continue
        mn, mode = D.OPS[op]; ln = 1 + D.MODE_LEN[mode]
        lo = buf[i+1] if ln >= 2 else 0; hi = buf[i+2] if ln >= 3 else 0
        print(f"    ${buf_base+i:04X}: {mn} {D.fmt_operand(mode, lo, hi, buf_base+i, ln)}")
        if op in (0x60, 0x40): break
        i += ln; n -= 1

def main():
    if "--validate" in sys.argv:
        labs = load_labels(); coll = {}
        for prg in labs: coll.setdefault(prg, 0); coll[prg] += 1
        dups = [p for p, c in coll.items() if c > 1]
        # round-trip check: cpu_to_prg(bank, cpu) == prg for every label
        bad = [(p, l) for p, l in labs.items() if cpu_to_prg(l[2], l[3]) != p]
        print(f"labels: {len(labs)}  PRG-unique: {'YES' if not dups else f'NO ({len(dups)} collisions)'}  "
              f"round-trip: {'OK' if not bad else f'{len(bad)} FAIL'}")
        return
    if "--cpu" in sys.argv:
        bank = int(sys.argv[2], 0); cpu = int(sys.argv[3], 0)
        print(f"bank {bank} CPU ${cpu:04X}  ->  PRG ${cpu_to_prg(bank, cpu):05X}")
        return
    prg = int(sys.argv[1], 0)
    bank = prg_to_bank(prg); cpu = prg_to_cpu(prg); labs = load_labels()
    print(f"PRG ${prg:05X}  =  bank {bank} @ CPU ${cpu:04X}  (window ${window(bank):04X})")
    lab = labs.get(prg)
    print(f"label: {lab[0] + ('  -- ' + lab[1] if lab[1] else '') if lab else '(unlabeled)'}")
    buf = PRG[bank*BANK_SIZE:(bank+1)*BANK_SIZE]
    print("disasm (native 6502 view):")
    disasm(cpu, window(bank), buf)

if __name__ == "__main__":
    main()
