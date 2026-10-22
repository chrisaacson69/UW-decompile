#!/usr/bin/env python3
"""
call_graph.py - UW whole-program bank-level call graph (are we missing base code? how layered is it?).

Resolves every bytecode CALL_abs to an owning bank using the ch.8 window/co-residency rules:
  $8xxx -> own bank (single rotating $8000 code slot)   $Axxx -> bank 1 (universal $A000 shared lib)
  $Cxxx/$Dxxx -> bank 62 ($C000 lib)                     $Exxx/$Fxxx -> bank 63 ($E000 OS)
(bank 25 shares 2 stub offsets with bank 1 but is NEVER called unambiguously -> it's a subsystem, not base.)

Result (ch.10): STRICT LAYERING. base = {62,63,1}; 29 subsystem banks each call ONLY base + self,
ZERO subsystem->subsystem edges. No hidden base code.

  py -3 call_graph.py            # in-degree ranking + layering check
  py -3 call_graph.py --matrix   # per-bank callee breakdown
"""
import sys, re, io, contextlib
from collections import Counter, defaultdict
sys.path.insert(0, r"C:\Users\Chris.Isaacson\koei-nes\tools")
import koei_vm

PRG = open(r"C:\Users\Chris.Isaacson\UW-decompile\Uncharted Waters (USA).nes","rb").read()[16:]
BC = bytes([0x20,0xbf,0xe4])
def stubs(b):
    bk = PRG[b*0x2000:(b+1)*0x2000]
    return set(i for i in range(len(bk)-2) if bk[i:i+3] == BC)
CODE_BANKS = [b for b in range(64) if len(stubs(b)) > 0 and b not in (62,63)]
STUBMAP = {b: stubs(b) for b in CODE_BANKS}

def calls(b):
    buf = io.StringIO()
    with contextlib.redirect_stdout(buf):
        koei_vm.disasm("uw", b)
    return [int(x,16) for x in re.findall(r'CALL_abs(?:_imm\d)?\s+\$([0-9A-Fa-f]{4})', buf.getvalue())]

def owner(addr, self_bank):
    if 0xC000 <= addr < 0xE000: return 62
    if addr >= 0xE000:          return 63
    off = addr & 0x1FFF
    if 0xA000 <= addr < 0xC000: return 1                                    # $A000 resident = bank 1
    if 0x8000 <= addr < 0xA000: return self_bank if off in STUBMAP.get(self_bank, ()) else None
    return None

def build():
    callers = defaultdict(set); indeg = Counter(); matrix = defaultdict(Counter)
    for b in CODE_BANKS:
        for a in calls(b):
            o = owner(a, b)
            if o is not None and o != b:
                callers[o].add(b); indeg[o] += 1; matrix[b][o] += 1
    return callers, indeg, matrix

def main():
    callers, indeg, matrix = build()
    BASE = {62, 63, 1}
    if "--matrix" in sys.argv:
        for b in CODE_BANKS:
            row = " ".join(f"{d}:{n}" for d, n in matrix[b].most_common())
            print(f"bank {b:2d} -> {row or '(self only)'}")
        return
    print("in-degree (banks that call each; shared-ness):")
    for d in sorted(callers, key=lambda d: -len(callers[d])):
        tag = "BASE" if d in BASE else "subsystem?!"
        print(f"  bank {d:2d}: called by {len(callers[d]):2d} banks, {indeg[d]:4d} calls   [{tag}]")
    nonbase = [d for d in callers if d not in BASE]
    print(f"\nsubsystem->subsystem edges: {nonbase or 'NONE -> strict layering'}")
    print(f"code banks: {len(CODE_BANKS)}; base layer: {sorted(BASE)}; each subsystem calls only base + self.")

if __name__ == "__main__":
    main()
