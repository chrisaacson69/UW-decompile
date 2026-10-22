#!/usr/bin/env python3
"""
field_census.py - code-driven record-STRUCTURE discovery. Now that all 27 banks are labeled, every
record-field access has named context around it. This scans source/4-c for `record[idx].+N` accesses
against the known record bases (address + stride) and tags each field with the OPERATION seen at that
site (displayed via which format string / compared vs K / bit-extracted / assigned). Triangulating the
ops across all access sites reveals each field's meaning -- grounded purely in code, no emulator.

  py -3 field_census.py            # full report, all records
  py -3 field_census.py 6AA4       # one record (ship) only
"""
import sys, re, glob, os
HERE = r"C:\Users\Chris.Isaacson\UW-decompile"

# known record tables: name -> (base_addr, stride).  67BA = 67B2+8 (same port row, later fields).
TABLES = {
    "ship":       (0x6AA4, 24),   # SRAM ship records (cargo/holds)
    "shippart":   (0x6C90, 7),    # ship durability parts (hull/mast/rudder) + class byte @+6
    "port_trade": (0x67B2, 14),   # SRAM port trade/economy state
    "entity":     (0x6662, 16),   # overworld entity table (party+NPC)
    "npc":        (0x6004, 51),   # rival/NPC ship records
    "rec6542":    (0x6542, 7),    # name-indexed records
    "portidx":    (0xB50A, 5),    # port-index records
    "rec6b1c":    (0x6B1C, 21),   # record_base_6b1c table (ship stats)
}
# map any hex literal that is base+k (k<stride) back to (table, field_offset)
def classify(addr):
    best = None
    for name, (base, stride) in TABLES.items():
        if base <= addr < base + stride:
            best = (name, addr - base)
    return best

FMT = re.compile(r'draw_field\w*\((0x[0-9A-Fa-f]+)')  # first arg = format-string ptr
PRG = open(HERE + r"\Uncharted Waters (USA).nes", "rb").read()[16:]

def fmt_text(cpu, bank):
    bk = PRG[bank*0x2000:(bank+1)*0x2000]; o = cpu - (0x8000 if cpu < 0xA000 else (cpu & 0xE000))
    o = cpu - 0x8000 if 0x8000 <= cpu < 0xA000 else None
    if o is None: return ""
    s = ""
    for k in range(24):
        if not (0 <= o+k < len(bk)): break
        c = bk[o+k]
        if c == 0: break
        s += chr(c) if 32 <= c < 127 else "."
    return s

def op_kind(line, bank, off):
    """coarse classification of what the access DOES, from the enclosing line."""
    m = FMT.search(line)
    if 'draw_field' in line and m:
        t = fmt_text(int(m.group(1), 16), bank)
        return f'display "{t}"' if t else f"display fmt={m.group(1)}"
    if re.search(r'>>\s*\d+\s*\)?\s*&', line) or re.search(r'&\s*\d+\)', line): return "bitfield (>>&)"
    if re.search(r'==\s*\w', line) or re.search(r'[<>]=?\s*\w', line): return "compare"
    if re.search(r'\)\s*=\s*[^=]', line): return "assign/mutate"
    if re.search(r'\+\s*\w|\*\s*\w|-\s*\w', line): return "arithmetic"
    return "read"

def main():
    only = sys.argv[1].upper() if len(sys.argv) > 1 else None
    # fields[(table,off)] = {"byte":n,"word":n, ctx:set}
    fields = {}
    for cf in glob.glob(HERE + r"\source\4-c\bank*.c"):
        bank = int(re.search(r'bank0*(\d+)', os.path.basename(cf)).group(1))
        text = open(cf, encoding="utf-8").read()
        lines = text.splitlines()
        # pass 1: locals bound to (idx*STRIDE + 0xBASE) or (idx<<k + 0xBASE)
        localbase = {}   # localname -> base_addr
        for ln in lines:
            m = re.search(r'(\w+)\s*=\s*\(+[^;]*?0x([0-9A-Fa-f]{4})\)', ln)
            if m:
                a = int(m.group(2), 16)
                if any(b <= a < b+s+24 for b, s in TABLES.values()):
                    localbase[m.group(1)] = a
        # pass 2: accesses -- inline `((idx*STR)+0xADDR)` [+N], via-local `LOCAL + N`, accessor(...+N)
        for ln in lines:
            hits = []
            for m in re.finditer(r'\*\(\s*(byte|word)\s*\*\)\(+\s*([^;]*?0x([0-9A-Fa-f]{4}))\s*(?:\+\s*(\d+))?\)', ln):
                sz = m.group(1); a = int(m.group(3), 16); off = int(m.group(4) or 0)
                hits.append((a, off, sz))
            for m in re.finditer(r'\*\(\s*(byte|word)\s*\*\)\(+\s*(\w+)\s*(?:\+\s*(\d+))?\)', ln):
                lb = m.group(2)
                if lb in localbase:
                    hits.append((localbase[lb], int(m.group(3) or 0), m.group(1)))
            for m in re.finditer(r'record_field_(byte|word)\(+\s*record_base_6b1c\([^)]*\)\s*\+\s*(\d+)', ln):
                hits.append((0x6B1C, int(m.group(2)), 'byte' if m.group(1)=='byte' else 'word'))
            for a, off, sz in hits:
                c = classify(a + off if a not in (x[0] for x in TABLES.values()) else a)  # normalize
                # normalize: total offset from table base
                cl = classify(a)
                if not cl: continue
                tname, base_off = cl
                total = base_off + off
                if only and only not in (f"{TABLES[tname][0]:04X}", tname.upper()): continue
                key = (tname, total)
                d = fields.setdefault(key, {"byte":0,"word":0,"ctx":{}})
                d[sz] += 1
                k = op_kind(ln.strip(), bank, total)
                d["ctx"][k] = d["ctx"].get(k,0)+1
    # report
    for tname,(base,stride) in TABLES.items():
        if only and only not in (f"{base:04X}", tname.upper()): continue
        rows = sorted((k[1],v) for k,v in fields.items() if k[0]==tname)
        if not rows: continue
        print(f"\n=== {tname}  base ${base:04X}  stride {stride}  ({len(rows)} distinct fields seen) ===")
        for off,v in rows:
            ctx = ", ".join(f"{k}x{n}" for k,n in sorted(v['ctx'].items(), key=lambda x:-x[1]))
            print(f"  +{off:<3} {'W' if v['word']>=v['byte'] else 'B'}  ({v['byte']}b/{v['word']}w)  {ctx}")

if __name__ == "__main__":
    main()
