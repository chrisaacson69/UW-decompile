#!/usr/bin/env python3
"""
native_floor.py - UNCHARTED WATERS fixed-bank NATIVE-6502 floor: enumeration + canonical naming vs L'Empereur.

UW retarget of LEmp-decompiler/tools/native_floor.py (reuse > rebuild). UW is KOEI game 9, the first
GENRE break (exploration/trade/piracy w/ real-time) AND the first 512K-PRG title (64x8K banks). Its
engine is L'Empereur's, relocated +1 (NMI $F64C byte-identical, $FFDE private syscall vector, jmp($006F)
dispatch, 27-slot syscall table). So **L'Empereur is the oracle** (fully named). Shared subs inherit
LEmp's canonical name by relocation-invariant signature match; residue (<.70) is a human-read placeholder.

RESIDENT FIXED 16K (the walk buffer) -- verified from boot banking-init $F53D, NOT assumed:
  MMC5 $5116<-$FE masks to bank 62 (@ $C000, 512K=64-bank ROM &0x3F); $5117=$FF -> bank 63 (@ $E000).
  => resident = banks 62+63 = the FILE'S LAST 16K, so handler_match.bank15() (last 16K, $C000 base) is
  correct as-is. (This is the family "2nd-last + last bank" arch, renumbered for 64 banks.)

UW specifics (all in koei-nes/games.toml [uw]; see docs/00-recon.md):
  - vm_entry stub = `20 bf e4` (JSR $E4BF); dispatcher $E503 (= entry+0x44); handler tables $ECD4/$EDD4
  - OS main $E003 (itself bytecode); RESET $F500; NMI $F64C; IRQ/BRK $FF3E (bare RTI)
  - SYSCALL: private vector $FFDE -> dispatcher $F962; 27-slot table $F98C; central return $F985;
    generic entry trampolines $EEE7/$EF01; ext-op ($B7) dispatch $EF06 / table $EF21.
  - the fixed bank INTERLEAVES bytecode subs with native code -> classify per-address via is_bytecode_stub.

Usage:
  py -3 native_floor.py            # ranked match table + completeness summary
  py -3 native_floor.py --toml     # emit the native label block (canonical names)
"""
import sys, difflib
from collections import Counter, deque
sys.path.insert(0, r"C:\Users\Chris.Isaacson\ro3k-decompiler\tools")
import handler_match as H   # bank15(), signature(), load_names()
import disasm6502 as D      # OPS / MODE_LEN / addressing-mode consts

UW_ROM   = r"C:\Users\Chris.Isaacson\UW-decompile\Uncharted Waters (USA).nes"
UW_TOML  = r"C:\Users\Chris.Isaacson\UW-decompile\mesen-labels.toml"
# Oracle = L'Empereur (UW's base title; engine relocated +1; fully named, CPU-addr-keyed fixed region).
ORA_ROM  = r"C:\Users\Chris.Isaacson\LEmp-decompiler\Empereur, L' (USA).nes"
ORA_TOML = r"C:\Users\Chris.Isaacson\LEmp-decompiler\mesen-labels.toml"
ORA_STUB = bytes([0x20, 0x09, 0xE5])             # L'Empereur vm_entry stub (to exclude oracle bytecode subs)

VM_STUB = bytes([0x20, 0xBF, 0xE4])              # UW vm_entry stub; a bytecode sub begins with this
HANDLER_LO, HANDLER_HI = 0xECD4, 0xEDD4          # VM opcode-handler address tables (256 entries)
VM_SEEDS = {0xE4BF, 0xE503, 0xEF06}              # vm_entry, dispatcher, ext-op ($B7) sub-dispatcher
SYSCALL_VEC   = 0xFFDE                            # ($FFDE) = $F962 dispatcher
SYSCALL_TABLE = 0xF98C                            # raw 2-byte handler addresses; id0=$F500 reset
SYSCALL_SLOTS = 27                                # id 0-26 (== L'Empereur; vs NA2 31)
SYSCALL_TRAMPS = {0xEEE7, 0xEF01, 0xF962, 0xF985}  # generic entry trampolines, dispatcher, central return

# BYTECODE-reachable native leaves: native subs called ONLY from bytecode via CALL_abs {native} -- never
# from a native JSR, so vector/handler/JSR-census seeds miss them. Extracted from the {native} CALL targets
# across ALL decompiled code banks (tools: koei_vm disasm). Seeding them closes the floor bottom-up.
BYTECODE_LEAVES = {
    0xC47B,0xC4A9,0xC70B,0xC719,0xC770,0xC799,0xC7AA,0xC7F6,0xC824,0xC9CD,0xCCF3,0xCD12,0xCD20,0xCD9F,
    0xCE37,0xCE4D,0xCE8D,0xCE9B,0xCFE1,0xD003,0xD026,0xD08C,0xD1B0,0xD230,0xD29B,0xD30C,0xD326,0xD394,
    0xD405,0xD532,0xD550,0xD56B,0xD59E,0xD652,0xD6A6,0xD6D6,0xD718,0xD75A,0xD791,0xD87B,0xD8BE,0xD92F,
    0xD9A8,0xD9EA,0xDA2A,0xDA6A,0xDA89,0xDAD1,0xDC0C,0xDC56,0xDCEC,0xDD6C,0xDDE0,0xDE3A,0xDEA6,0xE06F,
    0xE08C,0xE0C1,0xE0D6,0xE0EA,0xEED4,0xF33A,
}

def uw_fixed():
    """UW resident fixed 16K = banks 62(@$C000)+63(@$E000) = the file's LAST 16K (base $C000).
    NOT H.bank15() -- that hardcodes 15*0x4000 (=banks 30/31 mid-file) for 256K carts; UW is 512K."""
    import pathlib
    prg = pathlib.Path(UW_ROM).read_bytes()[16:16 + 524288]
    return prg[-0x4000:]

# PAGED-NATIVE fixed-bank seeds: fixed-bank ($C000-$FFFF) helpers called ONLY via the paged $E299
# native-call banks (tools/native_banks.py --seeds). Invisible to a fixed-bank-only JSR census, so they
# were MISSING from the first floor pass -- adding them (then recursive reach) CLOSES the floor bottom-up.
PAGED_NATIVE_FIXED_SEEDS = {
    0xC03E,0xC0FA,0xC104,0xC144,0xC179,0xC1A3,0xC2D8,0xC2EA,0xC325,0xC32A,0xC35F,0xC366,
    0xC36D,0xC374,0xC37B,0xC382,0xC41D,0xC42F,0xC444,0xE150,0xE177,0xE1B4,0xE1D9,0xE1EB,
    0xE1FD,0xE299,0xE338,0xE395,0xE3BA,0xE3F0,0xE415,0xE445,0xE485,0xE4BF,0xEF81,0xEFB0,
}

def is_bytecode_stub(buf, addr):
    o = addr - 0xC000
    return 0 <= o <= 0x4000 - 3 and buf[o:o+3] == VM_STUB

def jsr_targets(buf):
    c = Counter()
    for i in range(0x4000 - 2):
        if buf[i] == 0x20:
            t = buf[i+1] | buf[i+2] << 8
            if 0xC000 <= t <= 0xFFFF:
                c[t] += 1
    return c

def vm_op_handlers(buf):
    lo, hi = HANDLER_LO - 0xC000, HANDLER_HI - 0xC000
    return set(buf[lo+i] | buf[hi+i] << 8 for i in range(256))

def vectors(buf):
    return {
        buf[0x3FFA] | buf[0x3FFB] << 8: "nmi_handler",
        buf[0x3FFC] | buf[0x3FFD] << 8: "reset_handler",
        buf[0x3FFE] | buf[0x3FFF] << 8: "irq_brk_handler",
        buf[SYSCALL_VEC - 0xC000] | buf[SYSCALL_VEC - 0xC000 + 1] << 8: "syscall_dispatch",
    }

def syscall_handlers(buf):
    t = SYSCALL_TABLE - 0xC000
    out = set(SYSCALL_TRAMPS)
    for i in range(SYSCALL_SLOTS):
        a = buf[t + 2*i] | buf[t + 2*i + 1] << 8
        if 0xC000 <= a <= 0xFFFF:
            out.add(a)
    return out

def reach_from(buf, seeds):
    subs = set(a for a in seeds if 0xC000 <= a <= 0xFFFF and not is_bytecode_stub(buf, a))
    seen, work = set(), deque(subs)
    while work:
        a = work.popleft()
        if a in seen or not (0xC000 <= a <= 0xFFFF):
            continue
        seen.add(a)
        i = a - 0xC000
        while 0 <= i < 0x4000:
            op = buf[i]
            if op not in D.OPS:
                break
            _mn, mode = D.OPS[op]; ln = 1 + D.MODE_LEN[mode]
            if i + ln > 0x4000:
                break
            tgt = (buf[i+1] | buf[i+2] << 8) if ln == 3 else None
            if op == 0x20 and tgt is not None:
                if 0xC000 <= tgt <= 0xFFFF and not is_bytecode_stub(buf, tgt) and tgt not in subs:
                    subs.add(tgt); work.append(tgt)
            elif mode == D.REL:
                work.append((i + ln + ((buf[i+1] ^ 0x80) - 0x80) + 0xC000) & 0xFFFF)
            if op in (0x60, 0x40):
                break
            if op == 0x4C:
                if tgt is not None and 0xC000 <= tgt <= 0xFFFF and not is_bytecode_stub(buf, tgt):
                    work.append(tgt)
                break
            if op == 0x6C:
                break
            i += ln
    return subs

def native_subs(buf):
    seeds = set(vectors(buf)) | vm_op_handlers(buf) | syscall_handlers(buf) | VM_SEEDS | BYTECODE_LEAVES | PAGED_NATIVE_FIXED_SEEDS
    jt = jsr_targets(buf)
    census = set(a for a in jt if not is_bytecode_stub(buf, a))
    subs = reach_from(buf, seeds | census)
    subs |= census
    def is_code(a):
        # JUNK filter: a real native sub starts with clean 6502 and reaches a terminator (rts/rti/jmp)
        # without hitting an illegal opcode. Data/padding that the census mislabeled (e.g. $C851, $D6D4
        # in bank 62's byte-code band) hits an illegal byte within a few ops -> reject.
        i = a - 0xC000; n = 0
        while 0 <= i < 0x4000 and n < 24:
            op = buf[i]
            if op not in D.OPS: return False                 # illegal opcode before any terminator = junk
            if op in (0x60, 0x40, 0x4C, 0x6C): return True   # clean rts/rti/jmp reached
            i += 1 + D.MODE_LEN[D.OPS[op][1]]; n += 1
        return True                                          # long clean run (large sub) -> keep
    subs = set(a for a in subs if not is_bytecode_stub(buf, a) and is_code(a))
    # PHANTOM filter: the flat JSR-census counts every $20 byte as a JSR target, so operand bytes
    # (e.g. the $20 in `sta $2005`) surface as fake subs mid-instruction. Decode each sub linearly and
    # mark interior (operand) bytes; drop any "sub" that lands on another sub's interior byte.
    interior = set()
    ss = sorted(subs)
    for k, a in enumerate(ss):
        nxt = ss[k+1] if k+1 < len(ss) else 0x10000             # decode the sub's whole byte span
        i = a - 0xC000; n = 0
        while 0 <= i < 0x4000 and 0xC000 + i < nxt and n < 600:  # step instructions across internal jmps/rts
            op = buf[i]
            if op not in D.OPS: i += 1; n += 1; continue
            ln = 1 + D.MODE_LEN[D.OPS[op][1]]
            for j in range(1, ln): interior.add(0xC000 + i + j)  # operand bytes, never a valid sub start
            i += ln; n += 1
    subs = set(a for a in subs if a not in interior)
    return sorted(subs), jt

def is_ora_stub(buf, a):
    o = a - 0xC000
    return 0 <= o <= 0x4000 - 3 and buf[o:o+3] == ORA_STUB

def oracle():
    buf = H.bank15(ORA_ROM)
    names = H.load_names(ORA_TOML)
    sig = {}
    for a in names:
        if 0xC000 <= a <= 0xFFFF and not is_ora_stub(buf, a):
            s = H.signature(buf, a)
            if len(s) >= 3:
                sig[a] = s
    return buf, names, sig

def best_match(sig, ora_sig):
    best_a, best = None, 0.0
    for oa, os in ora_sig.items():
        sc = difflib.SequenceMatcher(None, sig, os).ratio()
        if sc > best:
            best, best_a = sc, oa
    return best_a, best

def analyze():
    uw = uw_fixed()
    subs, jt = native_subs(uw)
    _o, ora_names, ora_sig = oracle()
    rows = []
    for a in subs:
        sig = H.signature(uw, a)
        if len(sig) < 3:
            rows.append((a, len(sig), None, 0.0, jt.get(a, 0))); continue
        oa, sc = best_match(sig, ora_sig)
        rows.append((a, len(sig), oa, sc, jt.get(a, 0)))
    return rows, ora_names

def oname(ora_names, oa):
    if not oa: return None
    v = ora_names.get(oa)
    return v.get("name") if isinstance(v, dict) else v

def main():
    rows, ora_names = analyze()
    if "--toml" in sys.argv:
        print("# --- UNCHARTED WATERS fixed-bank NATIVE floor (GENERATED by tools/native_floor.py; oracle = L'Empereur) ---")
        print("# >=.90 inherit LEmp canonical name (relocated-identical); .70-.90 diverged (verify);")
        print("# <.70 UW-specific/reworked (read before naming). Sorted by address.")
        seen = {}
        for a, ln, oa, sc, callers in sorted(rows):
            if ln < 3:
                continue
            nm = oname(ora_names, oa)
            if sc >= 0.90 and nm:
                key = nm if nm not in seen else f"{nm}_{a:04x}"; seen[nm] = 1
                c = f"== LEmp {nm} (${oa:04X}) score {sc:.2f} relocated-identical; {callers} callers"
            elif sc >= 0.70 and nm:
                key = nm if nm not in seen else f"{nm}_{a:04x}"; seen[nm] = 1
                c = f"~ LEmp {nm} (${oa:04X}) score {sc:.2f} diverged (reloc); same function -- verify; {callers} callers"
            else:
                key = f"native_{a:04x}"; best = oname(ora_names, oa) or '-'
                c = f"UW-specific native (best LEmp {best} {sc:.2f}); {callers} callers -- READ before naming"
            print(f'"0x{a:04X}" = {{ name = "{key}", comment = "{c}" }}')
        return
    print(f"{'UWaddr':>8} {'len':>4} {'callers':>7} {'LEmp':>6} {'score':>6}  verdict / inherited name")
    print("-" * 96)
    shared = near = spec = 0
    for a, ln, oa, sc, callers in sorted(rows, key=lambda r: -r[3]):
        nm = oname(ora_names, oa) or (f"sub_{oa:04x}" if oa else "-")
        if sc >= 0.90:   tag = "=="; shared += 1
        elif sc >= 0.70: tag = "~ "; near += 1
        else:            tag = "!!"; spec += 1
        oa_s = f"${oa:04x}" if oa else "  -  "
        print(f"${a:04x} {ln:>4} {callers:>7} {oa_s:>6} {sc:>6.2f}  {tag} {nm}")
    print("-" * 96)
    thunks = sum(1 for a, ln, *_ in rows if ln < 3)
    real_spec = spec - thunks
    total = len(rows)
    jsr_reached = sum(1 for a, *_ , c in rows if c > 0)
    print(f"UW fixed-bank native subs: {total} total ({jsr_reached} JSR-reached + vector/handler/leaf seeds)")
    print(f"  SHARED w/ LEmp (>=.90): {shared}   NEAR (.70-.90): {near}")
    print(f"  UW-SPECIFIC (<.70): {real_spec} real  +  {thunks} thunks/<3-op")
    print(f"  => named canonically (>=.70): {shared+near} / {total-thunks} fingerprintable native subs")

if __name__ == "__main__":
    main()
