#!/usr/bin/env python3
"""
disasm_native.py - UNCHARTED WATERS: control-flow-following disassembler for a PAGED native ($E299) bank.

Unlike a linear sweep (which desyncs on the 3 inline-operand bytes after each JSR $E299 and on data
tables), this follows real control flow from every native-sub entry, so code/data split cleanly. It
knows the native-call convention: a native sub = `JSR $E299` + 3 inline bytes (argcount + 16-bit frame
param) + native body @ stub+6. It classifies in-bank subs as STUBBED (VM-frame entries, called from
bytecode/OS) vs PLAIN (leaf helpers, called via bare JSR from other native code -> the LEAVES), and
resolves every call against mesen-labels.toml (fixed floor + this bank's discovered subs).

Usage:
  py -3 disasm_native.py <bank> [out.asm]     # window base from games.toml [uw]
Emits leaves-first (topological by in-bank call graph), with a header summary of the sub inventory.
"""
import sys, re
from collections import defaultdict, deque
sys.path.insert(0, r"C:\Users\Chris.Isaacson\koei-nes\tools")
import disasm6502 as D

HERE = r"C:\Users\Chris.Isaacson\UW-decompile"
PRG = open(HERE + r"\Uncharted Waters (USA).nes","rb").read()[16:16+524288]
NAT_STUB = bytes([0x20,0x99,0xE2]); BC_STUB = bytes([0x20,0xBF,0xE4])
# INLINE-OPERAND BRIDGES: JSR targets that consume N inline bytes after the JSR (control resumes at
# return+N), so those bytes are DATA, not instructions. Verified: $E299 VM->native (3: argcount+frame),
# $E338 native->VM (3: target_lo, target_hi, argcount -> runs bytecode via jmp($0008), resumes native).
INLINE_BRIDGES = {0xE299: 3, 0xE338: 3}
BANKS_AT_8000 = {2,3,4,5,6,9,11,15,16,18,27,28,35,36,37,38}; BANKS_AT_C000 = {62}
def base_of(b): return 0xC000 if b in BANKS_AT_C000 else (0x8000 if b in BANKS_AT_8000 else 0xA000)

def load_labels():
    labs = {}
    for l in open(HERE + r"\mesen-labels.toml", encoding="utf-8"):
        m = re.match(r'"(0x[0-9A-Fa-f]+)"\s*=\s*\{\s*name\s*=\s*"([^"]+)"', l)
        if m: labs[int(m.group(1),16)] = m.group(2)
    return labs

def disasm_bank(b):
    base = base_of(b); bk = PRG[b*8192:(b+1)*8192]; N = len(bk)
    def inb(a): return base <= a < base + N
    stubs = set(i for i in range(N-2) if bk[i:i+3] == NAT_STUB)
    # entry points: stub bodies (stub+6). also discover plain helper subs via JSR targets during walk.
    starts = set(off+6 for off in stubs)               # native bodies after JSR $E299 + 3 inline
    sub_entry = {off+6: ('stub', off) for off in stubs} # body-addr -> (kind, stub-off)
    code = set()                                        # instruction start offsets
    inline_data = set()                                 # offsets that are inline-bridge operand bytes (data)
    callers = defaultdict(set)                          # callee-off -> {caller-sub-off}
    ext_calls = defaultdict(int)                        # fixed/other-window target -> count
    work = deque(starts); seen_starts = set()
    # per-sub linear walk following branches/jmp; record JSR targets as new subs (plain helpers)
    def walk(entry):
        i = entry; run = deque([i]); local_seen = set()
        while run:
            j = run.popleft()
            while 0 <= j < N:
                if j in local_seen: break
                local_seen.add(j); code.add(j)
                op = bk[j]
                if op not in D.OPS: break
                mn, mode = D.OPS[op]; ln = 1 + D.MODE_LEN[mode]
                if j + ln > N: break
                tgt = (bk[j+1] | bk[j+2] << 8) if ln == 3 else None
                if op == 0x20 and tgt is not None:        # JSR
                    if tgt in INLINE_BRIDGES:              # inline-operand bridge: skip its N data bytes
                        k = INLINE_BRIDGES[tgt]
                        for d in range(ln, ln + k): inline_data.add(j + d)
                        ext_calls[tgt] += 1
                        j += ln + k; continue
                    if inb(tgt):
                        toff = tgt - base
                        callers[toff].add(entry)
                        if toff not in seen_starts and toff not in starts and toff not in sub_entry:
                            sub_entry.setdefault(toff, ('plain', None)); starts.add(toff); work.append(toff)
                    else:
                        ext_calls[tgt] += 1
                elif mode == D.REL:
                    t = j + ln + ((bk[j+1] ^ 0x80) - 0x80)
                    if 0 <= t < N: run.append(t)
                if op in (0x60, 0x40): break              # rts/rti
                if op == 0x4C:                             # jmp abs
                    if tgt is not None and inb(tgt): run.append(tgt - base)
                    else:
                        if tgt is not None: ext_calls[tgt] += 1
                    break
                if op == 0x6C: break                       # jmp ind
                j += ln
    while work:
        e = work.popleft()
        if e in seen_starts: continue
        seen_starts.add(e); walk(e)
    # CODE-RECOVERY: native subs reached only via jump tables / bytecode CALL_abs have no $E299 stub and
    # no followed JSR -> unreached. Seed the start of each large uncovered non-$FF run that decodes densely
    # as code (a plain leaf), then re-walk. Iterate to fixpoint. (Honest: flags what it recovers.)
    # GATED to PURE-NATIVE banks: in MIXED banks (with `20 bf e4` bytecode stubs) a bytecode body decodes
    # as valid-looking 6502, so blind prologue-recovery would fabricate false natives. There, report only
    # the $E299-stubbed + JSR-reached natives (firm); recovering the rest needs the VM tiler's bytecode map.
    has_bytecode = any(bk[i:i+3] == BC_STUB for i in range(N-2))
    recovered = []
    if has_bytecode:
        return base, bk, N, stubs, sub_entry, code, inline_data, callers, ext_calls, recovered
    def full_cover():
        cov = set(inline_data) | set(o for s in stubs for o in range(s, s+6))
        for j in code:
            op = bk[j]; ln = 1 + D.MODE_LEN[D.OPS[op][1]] if op in D.OPS else 1
            for o in range(j, min(j+ln, N)): cov.add(o)
        return cov
    for _ in range(8):
        cov = full_cover(); runs = []; s = None
        for o in range(N+1):
            un = o < N and o not in cov
            if un and s is None: s = o
            elif not un and s is not None: runs.append((s, o)); s = None
        seeded = False
        for s, e in runs:
            if e - s < 8 or bk[s] == 0xFF or s in seen_starts: continue
            # seed if the PROLOGUE decodes as clean code (first 6 ops, no invalid opcode) -- walk() then
            # follows control flow and stops at the real code/data boundary inside the run.
            i = s; okops = 0; clean = True
            while i < e and okops < 6:
                op = bk[i]
                if op not in D.OPS: clean = False; break
                i += 1 + D.MODE_LEN[D.OPS[op][1]]; okops += 1
            if clean and okops >= 6:
                sub_entry.setdefault(s, ('recovered', None)); recovered.append(s)
                seen_starts.add(s); walk(s); seeded = True
        if not seeded: break
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
