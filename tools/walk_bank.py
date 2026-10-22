#!/usr/bin/env python3
"""
walk_bank.py - leaves-first walk of a subsystem bytecode bank, stopping at KNOWN dependencies.

For a subsystem bank ($8000 code), classify every call so we walk only NEW local subs and treat calls
into the mapped base as resolved "existing dependencies" (no re-descent):
  CALL $8xxx (own stub)     -> LOCAL sub (walk it; edge in the intra-bank call graph)
  CALL $Axxx                -> bank 1 shared lib (named ch.9)      [existing dependency]
  CALL $Cxxx/$Dxxx          -> bank 62 lib                         [existing dependency]
  CALL $Exxx/$Fxxx          -> bank 63 OS / native floor + ALU     [existing dependency]
Then topologically order the local subs LEAVES-FIRST (subs whose only calls are existing deps come
first). Annotate each with: base deps, syscalls, strings referenced, goods/record table refs, state.

  py -3 walk_bank.py <bank>
"""
import sys, re, io, contextlib
from collections import defaultdict, Counter
sys.path.insert(0, r"C:\Users\Chris.Isaacson\koei-nes\tools")
import koei_vm

HERE = r"C:\Users\Chris.Isaacson\UW-decompile"
PRG = open(HERE + r"\Uncharted Waters (USA).nes","rb").read()[16:16+524288]
BC = bytes([0x20,0xbf,0xe4])
LABELS = {}
for l in open(HERE + r"\mesen-labels.toml", encoding="utf-8"):
    m = re.match(r'"(0x[0-9A-Fa-f]+)"\s*=\s*\{\s*name\s*=\s*"([^"]+)"', l)
    if m: LABELS[int(m.group(1),16)] = m.group(2)

def disasm(b):
    buf = io.StringIO()
    with contextlib.redirect_stdout(buf): koei_vm.disasm("uw", b)
    return buf.getvalue()

def split_subs(text):
    subs = {}
    for m in re.finditer(r'; sub \$([0-9A-Fa-f]{4})(.*?)(?=; ={5,}\n; sub |\Z)', text, re.S):
        subs[int(m.group(1),16)] = m.group(0)
    return subs

def dep_class(addr):
    if 0xA000 <= addr < 0xC000: return ('bank1', LABELS.get(addr, f'${addr:04X}'))
    if 0xC000 <= addr < 0xE000: return ('bank62', LABELS.get(addr, f'${addr:04X}'))
    if addr >= 0xE000:          return ('bank63/native', LABELS.get(addr, f'${addr:04X}'))
    return None

def main():
    b = int(sys.argv[1], 0)
    text = disasm(b); subs = split_subs(text)
    local = set(subs)
    intra = defaultdict(set)          # sub -> set(local callees)
    deps = defaultdict(Counter)       # sub -> Counter(existing-dependency name)
    strings = defaultdict(list); state = defaultdict(set); tables = defaultdict(set)
    for a, body in subs.items():
        for c in re.findall(r'CALL_abs(?:_imm\d)?\s+\$([0-9A-Fa-f]{4})', body):
            t = int(c,16)
            if 0x8000 <= t < 0xA000 and t in local: intra[a].add(t)
            else:
                d = dep_class(t)
                if d: deps[a][f'{d[1]}'] += 1
        for s in re.findall(r'PUSH_imm2\s+\$([0-9A-Fa-f]{4})', body):
            v = int(s,16)
            if 0x8000 <= v < 0xA000: tables[a].add(v)      # in-bank data-table pointer
        for st in re.findall(r'_abs\s+\$([67][0-9A-Fa-f]{3})', body): state[a].add('$'+st)
    # leaves-first topo order: subs with fewest unresolved local callees first
    order = []; placed = set()
    while len(placed) < len(local):
        progress = False
        for a in sorted(local):
            if a in placed: continue
            if intra[a] <= placed:
                order.append(a); placed.add(a); progress = True
        if not progress:                       # cycle: place remaining by callee count
            for a in sorted(local, key=lambda a: len(intra[a])):
                if a not in placed: order.append(a); placed.add(a); break
    print(f"BANK {b} leaves-first walk ({len(local)} local subs). '=>' = local callee, '·' = existing dep.\n")
    for a in order:
        callees = " ".join(f"${c:04X}" for c in sorted(intra[a])) or "(leaf)"
        dl = " ".join(f"{n}x{c}" for n,c in deps[a].most_common(4))
        print(f"${a:04X}  local:{callees}")
        if dl:            print(f"        · deps: {dl}")
        if tables[a]:     print(f"        · tables: {' '.join(f'${t:04X}' for t in sorted(tables[a]))}")
        if state[a]:      print(f"        · state: {' '.join(sorted(state[a])[:6])}")

if __name__ == "__main__":
    main()
