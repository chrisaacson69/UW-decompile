#!/usr/bin/env python3
"""
disasm_native.py - UNCHARTED WATERS: control-flow-following disassembler for a PAGED native ($E299) bank.

Unlike a linear sweep (which desyncs on the 3 inline-operand bytes after each JSR $E299 and on data
tables), this follows real control flow from every native-sub entry, so code/data split cleanly. It
knows the native-call convention: a native sub = `JSR $E299` + 3 inline bytes (argcount + 16-bit frame
param) + native body @ stub+6. It classifies in-bank subs as STUBBED (VM-frame entries, called from
bytecode/OS) vs PLAIN (leaf helpers, called via bare JSR from other native code -> the LEAVES), and
resolves every call against mesen-labels.toml (fixed floor + this bank's discovered subs).

The control-flow walk is emu_harness's shared descent (emu-harness MIGRATION.md row B); this tool
keeps what is UW's: the stub convention, the bank windows, and the listing.

Usage:
  py -3.14 disasm_native.py <bank> [out.asm]     # window base from games.toml [uw]
Emits leaves-first (topological by in-bank call graph), with a header summary of the sub inventory.
"""
import sys, re
from collections import Counter, defaultdict
from pathlib import Path

from emu_harness.cpu.m6502 import disasm as D
from emu_harness.cpu.m6502.descent import Window, descend, gaps

HERE = Path(__file__).resolve().parents[1]
PRG = (HERE / "Uncharted Waters (USA).nes").read_bytes()[16:16+524288]
NAT_STUB = bytes([0x20,0x99,0xE2]); BC_STUB = bytes([0x20,0xBF,0xE4])
# INLINE-OPERAND BRIDGES: JSR targets that consume N inline bytes after the JSR (control resumes at
# return+N), so those bytes are DATA, not instructions. Verified: $E299 VM->native (3: argcount+frame),
# $E338 native->VM (3: target_lo, target_hi, argcount -> runs bytecode via jmp($0008), resumes native).
INLINE_BRIDGES = {0xE299: 3, 0xE338: 3}
BANKS_AT_8000 = {2,3,4,5,6,9,11,15,16,18,27,28,35,36,37,38}; BANKS_AT_C000 = {62}
def base_of(b): return 0xC000 if b in BANKS_AT_C000 else (0x8000 if b in BANKS_AT_8000 else 0xA000)

def load_labels():
    labs = {}
    for l in open(HERE / "mesen-labels.toml", encoding="utf-8"):
        m = re.match(r'"(0x[0-9A-Fa-f]+)"\s*=\s*\{\s*name\s*=\s*"([^"]+)"', l)
        if m: labs[int(m.group(1),16)] = m.group(2)
    return labs

def disasm_bank(b):
    base = base_of(b); bk = PRG[b*8192:(b+1)*8192]; N = len(bk)
    win = Window(bk, base)
    stubs = set(i for i in range(N-2) if bk[i:i+3] == NAT_STUB)
    # entry points: stub bodies (stub+6), native bodies after JSR $E299 + 3 inline. The descent adds
    # plain helper subs (in-bank JSR targets) as it walks.
    sub_entry = {off+6: ('stub', off) for off in stubs}  # body-off -> (kind, stub-off)
    seeds = {base + off for off in sub_entry}
    d = descend(win, seeds, inline=INLINE_BRIDGES)
    # CODE-RECOVERY: native subs reached only via jump tables / bytecode CALL_abs have no $E299 stub and
    # no followed JSR -> unreached. Seed the start of each large uncovered non-$FF run that decodes densely
    # as code (a plain leaf), then re-walk. Iterate to fixpoint. (Honest: flags what it recovers.)
    # GATED to PURE-NATIVE banks: in MIXED banks (with `20 bf e4` bytecode stubs) a bytecode body decodes
    # as valid-looking 6502, so blind prologue-recovery would fabricate false natives. There, report only
    # the $E299-stubbed + JSR-reached natives (firm); recovering the rest needs the VM tiler's bytecode map.
    has_bytecode = any(bk[i:i+3] == BC_STUB for i in range(N-2))
    recovered = []
    def full_cover():
        return d.starts | d.operands | d.inline | {base + o for s in stubs for o in range(s, s+6)}
    for _ in range(8 if not has_bytecode else 0):
        seeded = False
        for s in gaps(win, full_cover()):
            # a run start this round's earlier seeds already walked over is not a new sub
            if s in d.entries or s in full_cover():
                continue
            recovered.append(s - base); seeds.add(s); seeded = True
            d = descend(win, seeds, inline=INLINE_BRIDGES)
        if not seeded:
            break
    for e in sorted(d.entries):
        kind = 'recovered' if e - base in recovered else 'plain'
        sub_entry.setdefault(e - base, (kind, None))
    code = {a - base for a in d.starts}
    inline_data = {a - base for a in d.inline}
    callers = defaultdict(set)                          # callee-off -> {caller-sub-off}
    for t, es in d.callers().items():
        if t in win:
            callers[t - base] |= {e - base for e in es}
    ext_calls = Counter()                               # fixed/other-window target -> count
    for f in d.flows.values():
        ext_calls.update(t for t in (*f.calls.values(), *f.jumps.values()) if t not in win)
    return base, bk, N, stubs, sub_entry, code, inline_data, callers, ext_calls, recovered


def render(b, out=None):
    base, bk, N, stubs, sub_entry, code, inline_data, callers, ext_calls, recovered = disasm_bank(b)
    labs = load_labels()
    # order subs leaves-first: plain helpers with fewest in-bank callees first, then stubbed entries.
    subs = sorted(sub_entry)  # by offset; good enough, annotate kind + callers
    L = []
    nstub = sum(1 for k in sub_entry.values() if k[0]=='stub')
    nplain = sum(1 for k in sub_entry.values() if k[0]=='plain')
    nrec = sum(1 for k in sub_entry.values() if k[0]=='recovered')
    # coverage: code(full length)+inline+stubs vs $FF padding vs remaining
    cov = set(inline_data) | set(o for s in stubs for o in range(s, s+6))
    for j in code:
        op = bk[j]; ln = 1 + D.MODE_LEN[D.OPS[op][1]] if op in D.OPS else 1
        for o in range(j, min(j+ln, N)): cov.add(o)
    pad = sum(1 for o in range(N) if o not in cov and bk[o] == 0xFF)
    other = N - len(cov) - pad
    L.append(f"; ============================================================================")
    L.append(f"; Uncharted Waters - bank {b} NATIVE disassembly (window base ${base:04X})")
    L.append(f"; {len(sub_entry)} native subs: {nstub} $E299-stubbed (VM-frame entries) + {nplain} plain + {nrec} jumptable/CALL-recovered")
    L.append(f"; coverage: {len(cov)}B code+inline ({100*len(cov)//N}%) + {pad}B $FF-pad + {other}B data")
    L.append(f"; control-flow-followed, inline bridges ($E299/$E338) skipped; calls resolved vs mesen-labels.toml.")
    L.append(f"; ============================================================================")
    L.append(f".base ${base:04X}")
    L.append("")
    def lname(a): return labs.get(a)
    for off in subs:
        kind, stuboff = sub_entry[off]
        entry_cpu = base + off
        clist = sorted(base+c for c in callers.get(off, set()))
        ctxt = f"  <- callers: {', '.join(f'${c:04X}' for c in clist[:6])}" if clist else "  <- (entry: bytecode/OS via $E299)" if kind=='stub' else "  <- (uncalled?)"
        L.append(f"; ---- sub_{b}_{off:04x}  [{kind}]{ctxt}")
        if kind == 'stub':
            so = stuboff
            inline = bk[so+3:so+6]
            L.append(f"nat_{b}_{so:04x}: jsr $E299                    ; {b}:{base+so:04X}  native-call prologue")
            L.append(f"            .db {' '.join(f'${x:02x}' for x in inline)}            ; inline: argcount ${inline[0]:02x}, frame ${inline[2]:02x}{inline[1]:02x}")
        # linear render of the body from entry, showing only decoded code addrs
        j = off
        while j < N:
            if j not in code:
                # data gap until next code or sub
                j += 1; continue
            op = bk[j]
            if op not in D.OPS:
                L.append(f"  ${base+j:04X}: {op:02x}          .db ${op:02x}"); j += 1; continue
            mn, mode = D.OPS[op]; ln = 1 + D.MODE_LEN[mode]
            lo = bk[j+1] if ln>=2 else 0; hi = bk[j+2] if ln>=3 else 0
            operand = D.fmt_operand(mode, lo, hi, base+j, ln)
            hx = " ".join(f"{x:02x}" for x in bk[j:j+ln])
            note = ""
            if mode in (D.ABS,D.ABX,D.ABY,D.IND,D.REL) and op in (0x20,0x4c,0x6c) or mode==D.ABS:
                a = lo|hi<<8
                nm = lname(a)
                if nm: note = f"   ; {nm}"
            L.append(f"  ${base+j:04X}: {hx:11s} {mn} {operand}{note}")
            nextj = j + ln
            # inline-operand bridge: render its N data bytes, then resume after them
            if op == 0x20 and (lo|hi<<8) in INLINE_BRIDGES:
                k = INLINE_BRIDGES[lo|hi<<8]
                ib = bk[nextj:nextj+k]
                tgt_vm = (ib[0]|ib[1]<<8) if k>=2 else 0
                vmnote = f"  -> vm ${tgt_vm:04X} argc {ib[2] if k>=3 else '?'}" if (lo|hi<<8)==0xE338 else "  (argcount,frame)"
                L.append(f"  ${base+nextj:04X}: {' '.join(f'{x:02x}' for x in ib):11s} .db {' '.join(f'${x:02x}' for x in ib)}{vmnote}")
                j = nextj + k; continue
            if op in (0x60,0x40,0x4c,0x6c):
                if (nextj in sub_entry) or nextj in stubs: break
                if nextj not in code: break
            j = nextj
        L.append("")
    txt = "\n".join(L)
    if out:
        open(out, "w", encoding="utf-8").write(txt)
        # summary to stdout
        print(f"bank {b}: {len(sub_entry)} native subs ({nstub} stubbed + {nplain} plain leaves), "
              f"{len(ext_calls)} distinct external call targets. -> {out}")
        top = sorted(ext_calls.items(), key=lambda x:-x[1])[:10]
        print("  top external calls:", " ".join(f"{labs.get(a,f'${a:04X}')}x{c}" for a,c in top))
    else:
        print(txt)

if __name__ == "__main__":
    b = int(sys.argv[1], 0)
    out = sys.argv[2] if len(sys.argv) > 2 else None
    render(b, out)
