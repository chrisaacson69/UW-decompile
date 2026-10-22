#!/usr/bin/env python3
"""
export_mlb.py - project UW mesen-labels.toml -> a Mesen 2 .mlb label file.

Lean UW retarget of na1-decompiler/nobunaga/tools/mesen-labels.py (reuse > rebuild). UW is MMC5 with
8K paged banks, so a code label's PRG-ROM offset = bank*0x2000 + (cpu & 0x1FFF). RAM ($00-$7FF) ->
NesInternalRam; SRAM ($6000-$7FFF) -> NesSaveRam. Mesen 2 auto-loads a .mlb sitting next to the ROM
with the ROM's basename, so all 578 of our names + comments show up in the debugger / trace / event
viewer -- the generic `nat_*` / `native_*` subs then stand out in context while you play.

  py -3 export_mlb.py        # writes "Uncharted Waters (USA).mlb" next to the ROM
"""
import re, sys
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parent))
import prg as PRGADDR                         # the ONE canonical (bank,cpu)->prg converter
HERE = Path(r"C:\Users\Chris.Isaacson\UW-decompile")
TOML = HERE / "mesen-labels.toml"
OUT  = HERE / "Uncharted Waters (USA).mlb"

SEC   = re.compile(r'^\s*\[([^\]]+)\]')
# forgiving: name has no quotes; comment is greedy to the last quote before the closing brace
# (so inner quotes/apostrophes in a comment don't drop the whole entry).
ENTRY = re.compile(r'^"0x([0-9A-Fa-f]+)"\s*=\s*\{\s*name\s*=\s*"([^"]*)"'
                   r'(?:\s*,\s*comment\s*=\s*"(.*)")?\s*\}\s*$')

def flat(s): return (s or "").replace("\\n", " ").replace("\\\"", "'").replace("\n", " ").strip()

def main():
    sec = None; rows = []
    for ln in TOML.read_text(encoding="utf-8").splitlines():
        m = SEC.match(ln)
        if m: sec = m.group(1); continue
        m = ENTRY.match(ln.strip())
        if not (m and sec): continue
        addr = int(m.group(1), 16); name = flat(m.group(2)); comment = flat(m.group(3))
        if sec == "ram":
            # $0000-$07FF internal RAM ; $6000-$7FFF battery SRAM
            if addr < 0x800:            typ, off = "NesInternalRam", addr
            elif 0x6000 <= addr < 0x8000: typ, off = "NesSaveRam", addr - 0x6000
            else:                        typ, off = "NesMemory", addr        # zero-page-ish / other
        elif sec.startswith("prg.bank"):
            bank = int(sec[len("prg.bank"):])
            typ, off = "NesPrgRom", PRGADDR.cpu_to_prg(bank, addr)   # canonical converter (no ad-hoc math)
        else:
            continue
        rows.append(f"{typ}:{off:X}:{name}:{comment}")
    OUT.write_text("\n".join(rows) + "\n", encoding="utf-8")
    print(f"wrote {OUT.name}: {len(rows)} labels "
          f"({sum(1 for r in rows if r.startswith('NesPrgRom'))} ROM, "
          f"{sum(1 for r in rows if 'Ram' in r.split(':')[0])} RAM)")

if __name__ == "__main__":
    main()
