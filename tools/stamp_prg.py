#!/usr/bin/env python3
"""
stamp_prg.py - annotate a disassembly .asm with the canonical PRG-ROM offset on every line, so the
source speaks Mesen's language (Mesen keys on NesPrgRom offsets) and CPU-vs-PRG is never ambiguous.

The CPU address stays (6502 operands ARE CPU addresses, needed to follow references); we just append
`; PRG $XXXXX` -- the canonical identity -- to each `  $CPUADDR:` line and to each `; sub $CPUADDR`
header. The bank comes from the filename (bankNN[...].asm) so the (bank,cpu)->prg is unambiguous.

  py -3 stamp_prg.py <bank> <file.asm>      # rewrite the file in place with PRG stamps
  py -3 stamp_prg.py --all                  # stamp every source/{1-asm-6502,2-asm-vm}/bankNN*.asm
"""
import sys, re
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parent))
import prg as PRGADDR

LINE = re.compile(r'^(\s*)\$([0-9A-Fa-f]{4}):')          # "  $F882:" body line
SUB  = re.compile(r'^(; sub )\$([0-9A-Fa-f]{4})')        # "; sub $F882" header

def stamp(bank, text):
    out = []
    for ln in text.splitlines():
        if "; PRG $" in ln:                              # already stamped -> leave it
            out.append(ln); continue
        m = LINE.match(ln)
        if m:
            p = PRGADDR.cpu_to_prg(bank, int(m.group(2), 16))
            out.append(f"{ln.rstrip()}    ; PRG ${p:05X}"); continue
        m = SUB.match(ln)
        if m:
            p = PRGADDR.cpu_to_prg(bank, int(m.group(2), 16))
            out.append(f"{ln.rstrip()}   [PRG ${p:05X}]"); continue
        out.append(ln)
    return "\n".join(out) + "\n"

def bank_of(name):
    m = re.search(r'bank(\d+)', name)
    return int(m.group(1)) if m else None

def main():
    if "--all" in sys.argv:
        root = Path(r"C:\Users\Chris.Isaacson\UW-decompile\source")
        n = 0
        for d in ("1-asm-6502", "2-asm-vm"):
            for f in sorted((root / d).glob("bank*.asm")):
                b = bank_of(f.name)
                if b is None: continue
                f.write_text(stamp(b, f.read_text(encoding="utf-8")), encoding="utf-8"); n += 1
        print(f"stamped {n} .asm files with PRG offsets"); return
    bank = int(sys.argv[1], 0); f = Path(sys.argv[2])
    f.write_text(stamp(bank, f.read_text(encoding="utf-8")), encoding="utf-8")
    print(f"stamped {f.name} (bank {bank})")

if __name__ == "__main__":
    main()
