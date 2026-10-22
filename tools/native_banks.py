#!/usr/bin/env python3
"""
native_banks.py - UNCHARTED WATERS: walk the PAGED native-call ($E299) banks + close the fixed floor.

THE PROBLEM (why the standard walk misses this): koei's VM tiler finds bytecode subs by the `20 bf e4`
(JSR vm_entry) stub. But UW's paged banks ALSO carry NATIVE 6502 subs behind a *different* stub --
`20 99 e2` (JSR $E299) -- a native-call trampoline (VERIFIED $E299: builds a VM frame, then
`JMP ($0008)` to the code right after 3 inline operand bytes; native RTS unwinds via pushed $E310->$E311).
So a native sub = `JSR $E299` + 3 inline bytes (argcount $00 + 16-bit frame param) + native body @ stub+6.
The bytecode tiler is blind to these; a fixed-bank-only JSR census is blind to the fixed-bank helpers
they call. Result: ~113 paged native subs + a tail of fixed-bank helpers were invisible. This tool
walks them and emits the fixed-bank helper targets as extra seeds to CLOSE native_floor.py bottom-up.

Enumeration is window-independent (stub OFFSET within the bank). CPU addresses use the bank's window
base (games.toml banks_at_8000 -> $8000, banks_at_c000 -> $C000, else $A000 default) -- but the paged
native subs are LEAVES that call almost only into $Exxx fixed-bank helpers (measured), never sibling
stubs, so the base is cosmetic here; the true identity is (bank, offset) [UW is a 512K/19-bit ROM].

Usage:
  py -3 native_banks.py                 # per-bank native inventory + fixed-bank helper seeds + oracle match
  py -3 native_banks.py --seeds         # print the fixed-bank JSR-target set as a Python literal (for native_floor)
  py -3 native_banks.py --toml          # emit bank-scoped labels for the paged native subs
"""
import sys, difflib
from collections import Counter
sys.path.insert(0, r"C:\Users\Chris.Isaacson\koei-nes\tools")
sys.path.insert(0, r"C:\Users\Chris.Isaacson\ro3k-decompiler\tools")
import disasm6502 as D
import handler_match as H

UW_ROM = r"C:\Users\Chris.Isaacson\UW-decompile\Uncharted Waters (USA).nes"
ORA_ROM  = r"C:\Users\Chris.Isaacson\LEmp-decompiler\Empereur, L' (USA).nes"
ORA_TOML = r"C:\Users\Chris.Isaacson\LEmp-decompiler\mesen-labels.toml"
ORA_STUB = bytes([0x20, 0x09, 0xE5])

NAT_STUB = bytes([0x20, 0x99, 0xE2])         # JSR $E299 = native-call trampoline
BC_STUB  = bytes([0x20, 0xBF, 0xE4])         # JSR $E4BF = bytecode vm_entry
INLINE   = 3                                  # inline operand bytes after the JSR (argcount + 16-bit frame param)
# window base per bank (games.toml [uw]); banks with filler headers default $A000. Base is cosmetic for
# these leaf natives (they don't self-reference); identity is (bank, offset).
BANKS_AT_8000 = {2,3,4,5,6,9,11,15,16,18,27,28,35,36,37,38}
BANKS_AT_C000 = {62}
def base_of(b):
    if b in BANKS_AT_C000: return 0xC000
    if b in BANKS_AT_8000: return 0x8000
    return 0xA000

PRG = open(UW_ROM, "rb").read()[16:16 + 524288]
def bank(b): return PRG[b*8192:(b+1)*8192]

def native_stubs(b):
    bk = bank(b)
    return [i for i in range(len(bk)-2) if bk[i:i+3] == NAT_STUB]

def native_banks():
    """All banks carrying >=1 JSR $E299 native sub (excl. the fixed banks 62/63 handled by native_floor)."""
    out = {}
    for b in range(64):
        st = native_stubs(b)
        if st:
            out[b] = st
    return out

def walk_body(bk, off, base, cap=400):
    """Linear-decode a native body from stub+3+INLINE to first rts/rti (follow fallthrough only).
    Returns (signature_tokens, set_of_abs_JSR/JMP_targets)."""
    i = off + 3 + INLINE
    toks, tgts, n = [], set(), 0
    while 0 <= i < len(bk) and n < cap:
        op = bk[i]
        if op not in D.OPS:
            toks.append(".db"); i += 1; n += 1; continue
        mn, mode = D.OPS[op]; ln = 1 + D.MODE_LEN[mode]
        if i + ln > len(bk): break
        lo = bk[i+1] if ln >= 2 else 0; hi = bk[i+2] if ln >= 3 else 0
        if mode == D.IMM: toks.append(f"{mn}#{lo:02x}")
        elif mode in (D.ZP,D.ZPX,D.ZPY,D.IZX,D.IZY): toks.append(f"{mn}/{mode}/{lo:02x}")
        elif mode in (D.ABS,D.ABX,D.ABY,D.IND):
            a = lo|hi<<8; toks.append(f"{mn}/{mode}/{'ROM' if a>=0x8000 else f'{a:04x}'}")
            if op in (0x20,0x4c): tgts.add(a)
        else: toks.append(mn)
        n += 1
        if op in (0x60,0x40): break
        i += ln
    return toks, tgts

def oracle():
    buf = H.bank15(ORA_ROM); names = H.load_names(ORA_TOML)
    sig = {}
    for a in names:
        if 0xC000<=a<=0xFFFF and not (0<=a-0xC000<=0x3ffd and buf[a-0xC000:a-0xC000+3]==ORA_STUB):
            s = H.signature(buf, a)
            if len(s) >= 3: sig[a] = s
    return names, sig

def best(sig, ora_sig):
    ba, bs = None, 0.0
    for oa, os in ora_sig.items():
        r = difflib.SequenceMatcher(None, sig, os).ratio()
        if r > bs: bs, ba = r, oa
    return ba, bs

def analyze():
    nb = native_banks()
    ora_names, ora_sig = oracle()
    fixed_seeds = Counter()   # $C000-$FFFF JSR targets (extra floor seeds)
    rows = []                 # (bank, off, base, cpuaddr, siglen, oracle_addr, score)
    for b, stubs in sorted(nb.items()):
        base = base_of(b); bk = bank(b)
        for off in stubs:
            sig, tgts = walk_body(bk, off, base)
            for t in tgts:
                if 0xC000 <= t <= 0xFFFF: fixed_seeds[t] += 1
            oa, sc = best(sig, ora_sig) if len(sig) >= 3 else (None, 0.0)
            rows.append((b, off, base, base+off, len(sig), oa, sc))
    return rows, fixed_seeds, ora_names

def main():
    rows, fixed_seeds, ora_names = analyze()
    if "--seeds" in sys.argv:
        print("PAGED_NATIVE_FIXED_SEEDS = {")
        addrs = sorted(fixed_seeds)
        for i in range(0, len(addrs), 12):
            print("    " + ",".join(f"0x{a:04X}" for a in addrs[i:i+12]) + ",")
        print("}")
        return
    if "--toml" in sys.argv:
        from collections import defaultdict
        bybank = defaultdict(list)
        for b, off, base, cpu, ln, oa, sc in rows: bybank[b].append((cpu, off, ln, oa, sc))
        for b in sorted(bybank):
            print(f"[prg.bank{b}]  # PAGED native-call ($E299) subs; window base ${base_of(b):04X}")
            for cpu, off, ln, oa, sc in sorted(bybank[b]):
                if sc >= 0.90 and oa:
                    nm = ora_names.get(oa); nm = nm.get('name') if isinstance(nm,dict) else nm
                    c = f'native_call sub == LEmp {nm} (${oa:04X}) {sc:.2f}'; key = f"nat_{b}_{off:04x}_{nm}"
                else:
                    c = f'native_call sub (bank{b}:${off:04X}); best LEmp {sc:.2f} -- UW-specific, READ'
                    key = f"nat_{b}_{off:04x}"
                print(f'"0x{cpu:04X}" = {{ name = "{key}", comment = "{c}" }}')
            print()
        return
    # default: inventory
    from collections import defaultdict
    perbank = defaultdict(lambda: [0,0,0])  # subs, shared>=.90, uwspecific
    for b, off, base, cpu, ln, oa, sc in rows:
        perbank[b][0]+=1
        if sc>=0.90: perbank[b][1]+=1
        else: perbank[b][2]+=1
    print(f"{'bank':>4} {'base':>6} {'natsubs':>7} {'==LEmp':>6} {'UWspec':>6}")
    tot=[0,0,0]
    for b in sorted(perbank):
        s=perbank[b]; tot=[tot[i]+s[i] for i in range(3)]
        print(f"{b:>4} ${base_of(b):04X} {s[0]:>7} {s[1]:>6} {s[2]:>6}")
    print("-"*36)
    print(f"{'TOT':>4} {'':>6} {tot[0]:>7} {tot[1]:>6} {tot[2]:>6}")
    print(f"\nPAGED native subs total: {tot[0]}  (shared-library {tot[1]} / UW-specific-native {tot[2]})")
    # completeness: fixed-bank helpers these call, and how many are NEW (missing from current floor)
    import re
    floor = set()
    for l in open(r"C:\Users\Chris.Isaacson\UW-decompile\mesen-labels.toml", encoding="utf-8"):
        m = re.match(r'"(0x[0-9A-Fa-f]+)"', l)
        if m: floor.add(int(m.group(1),16))
    new = [a for a in fixed_seeds if a not in floor]
    print(f"\nfixed-bank ($C000-$FFFF) helpers called by paged native code: {len(fixed_seeds)} distinct")
    print(f"  of these, {len(new)} are NOT yet in the floor -> extra seeds to CLOSE native_floor.py:")
    print("  " + " ".join(f"${a:04X}({fixed_seeds[a]})" for a in sorted(new, key=lambda a:-fixed_seeds[a])[:20]))

if __name__ == "__main__":
    main()
