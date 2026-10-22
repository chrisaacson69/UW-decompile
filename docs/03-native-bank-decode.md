---
status: active
created: 2026-07-06
game: uw
---
# Ch.3 — Decoding the native banks (the two inline-call bridges)

> Continues the native hunt from ch.2. The `$E299` VM→native call has a **mirror**, `$E338`
> (native→VM), and both carry **inline operands** — so a naive linear sweep desyncs on them. Once
> both are modeled, all 12 native banks disassemble cleanly, bank by bank, and the native
> inventory reaches **555 subroutines**.

## Two inline-call bridges = an inline-assembly ABI between the layers

Chris's framing nails it: `$E299` is a **syscall that lives inline in the code layer**. It uses the
VM-frame machinery to capture the return address, then jumps to native code sitting right there —
inline assembly, callable from bytecode. It has a partner going the other way:

| bridge | direction | inline operand (bytes after the JSR) | resume |
|---|---|---|---|
| **`$E299`** | VM bytecode → native | 3: argcount `$00` + 16-bit frame param | native body @ JSR+3+3 |
| **`$E338`** | native → VM bytecode | 3: target_lo, target_hi, argcount | native @ return+3 |

`$E338` verified: it sets `$00/$01 = return−1`, reads `($00),Y` for Y=1,2,3 → the 3 inline bytes,
runs the target sub via `$E392: JMP ($0008)`, and resumes native at return+3. Confirmed on bank 6:
`JSR $E338 / .db $3a $de $0c` → runs bytecode `$DE3A` (a known leaf) with 12 args, then `rts`.

**A disassembler must skip both bridges' inline bytes.** `tools/disasm_native.py` does
(`INLINE_BRIDGES = {0xE299:3, 0xE338:3}`), follows real control flow from every native-sub entry,
and resolves all calls against `mesen-labels.toml`. Output reads as real decompilation — e.g. bank
6 shows a handler load a state flag, push args, and tail-call two bytecode subs via `$E338`.

## Finding the un-stubbed natives (jump-table / CALL-reached)

Not every native sub has an `$E299` stub. Command handlers reached through a **jump table** (indexed
`JMP ($ptr)`) or called from bytecode via `CALL_abs {native}` have no stub and aren't hit by any
followed `JSR`, so they go unwalked. `disasm_native.py` adds a **code-recovery pass**: seed the
start of each large uncovered non-`$FF` run whose prologue decodes as clean 6502, then re-walk to
fixpoint. This is **gated to pure-native banks** — in *mixed* banks a bytecode body decodes as
valid-looking 6502, so blind recovery there would fabricate false natives (that needs the VM tiler's
bytecode map; deferred).

## Per-bank native inventory (12 banks)

| bank | window | kind | native subs | firm (`$E299`) | recovered | coverage |
|---|---|---|---|---|---|---|
| 3 | $8000 | pure | 22 | 22 | 0 | 89% + pad |
| 4 | $8000 | pure | 24 | 23 | 1 | 78% + 15% pad |
| 6 | $8000 | pure | 10 | 8 | 1 | 79% + 19% pad |
| 7 | $A000 | pure | 35 | 7 | 28 | 80% |
| 10 | $A000 | pure | 49 | 12 | 37 | 54% + 44% pad |
| 13 | $A000 | pure | 34 | 7 | 27 | 64% + 32% pad |
| 1 | $A000 | mixed | 1 | 1 | — | (rest = bytecode) |
| 5 | $8000 | mixed | 7 | 7 | — | |
| 8 | $A000 | mixed | 15 | 15 | — | |
| 9 | $8000 | mixed | 7 | 7 | — | |
| 17 | $A000 | mixed | 14 | 3 | — | |
| 62 | $C000 | mixed | 12 | 1 | + 11 plain | |

Coverage in pure banks closes to ~90–98% once `$FF` padding is counted; the small remainder is
data tables (e.g. bank 6's 80-byte table at `$9975`). Mixed banks show low native coverage *by
design* — the rest is bytecode (koei_vm's job). Banks **7, 10, 13** (33–49 subs, 63–73 distinct
floor calls each) are the fat game-logic native modules — the most likely homes of the real-time /
trade / naval logic.

## Complete native inventory

| region | native subs |
|---|---|
| fixed engine floor (banks 62+63) | 336 |
| paged native — firm `$E299`-stubbed | 113 |
| paged native — jumptable-recovered (pure banks) + plain | 106 |
| **total** | **555** |

Per-bank disassembly: `source/1-asm-6502/bankNN.asm` (12 files). Regenerate any bank:
`py -3 tools/disasm_native.py <bank> source/1-asm-6502/bankNN.asm`.

## Open

- Name the 219 paged native subs by behavior (which are trade/ship/naval/world-sim) — start with
  the fat banks 7/10/13; use `$E338` bytecode-call targets + touched RAM/record fields as evidence.
- Recover mixed-bank un-stubbed natives once the VM tiler exports bytecode-sub extents (to exclude
  them from the recovery pass safely).
- Confirm `$A000` vs `$8000` window for the filler-header banks if any absolute self-ref appears.
- Ch.4 — the data dig: the native subs above are the *readers*; next are the *records*.
