---
status: active
created: 2026-07-06
game: uw
---
# Ch.2 — The `$E299` native-call convention + the complete native walk

> The goal isn't the real-time engine per se — it's **finding native code**, which in this family
> is hard precisely because of the *many ways a call can be made*. UW adds one the standard tiler
> can't see: a **native-from-VM call convention (`$E299`)** that carries **113 native subroutines
> in paged banks**, plus a tail of fixed-bank helpers they alone reach. Walking it takes the native
> inventory from 314 → **449 subroutines** and closes the fixed floor bottom-up.

## Classification — `$E299` is native, verified (not assumed)

Bank headers show two stub kinds: `20 bf e4` (JSR vm_entry $E4BF → **bytecode**) and `20 99 e2`
(JSR $E299 → ?). Disassembling `$E299` settles it:

- Prologue builds the **same 9-byte VM frame** as vm_entry (`PLA→$08/$09`, copy `$00–$07`,
  `LDA $02 / SBC #$09`), **but** pulls the descriptor `+1` and computes vm_ip from an inline
  arg-count at return+8.
- It **pre-pushes a teardown return** (`$E303`: push `$E3`,`$10` → `$E310`/`$E311`).
- It **terminates at `$E30E: JMP ($0008)`** — and since the prologue advanced `$08/$09` (the JSR
  return) by 4, it jumps to the code **right after the call site's 3 inline operand bytes**. That
  code is **native 6502**, not bytecode. When it `RTS`es, control lands at `$E311`, which unwinds
  the VM frame.

So it is emphatically a native-call trampoline, **not** a second bytecode entry (→ we walk it, not
circle back). Empirical confirmation — bank 3 entry:

```
$8D09: 20 99 e2      JSR $E299          ; native-call prologue
$8D0C: 00 fe ff      (inline: argcount $00, frame param $FFFE)
$8D0F: 4c 15 8d      JMP $8D15          ; <- native body starts here
$8D15: ee 8a 6b      INC $6B8A          ; clean native: bump a counter, cmp #$0C, loop... (12 items)
```

**A native sub = `JSR $E299` + 3 inline bytes (argcount `$00` + 16-bit frame param, usually
`$FFxx`) + native body @ stub+6** — the native analog of the `20 bf e4` bytecode stub. Structure is
consistent across all sites. 109/113 bodies reach a clean terminator (`rts`/`rti`/`jmp`) before the
next stub; the 4 exceptions likely carry inline data (human-read).

## The native inventory the tiler couldn't see — 113 paged subs

`tools/native_banks.py` scans every bank for `20 99 e2` and walks each body:

| kind | banks | native subs |
|---|---|---|
| **pure native** | 3 (22), 4 (23), 6 (8), 7 (7), 10 (12), 13 (7) | **79** |
| **mixed** (bytecode + native) | 8 (15 nat + 11 bc), 62 (1 + 62) | 16 |
| **hidden in "bytecode" banks** | 1 (1), 5 (7), 9 (7), 17 (3) | 18 |
| | | **113** |

**All 113 are UW-specific** (0 match L'Empereur ≥.90) — as expected: L'Empereur's paged banks were
bytecode, so this native code is genuinely new. It is the **game-specific native engine** (the
place the real-time sailing/naval/trade/exploration logic lives — the pure-native banks 3/4 with
45 subs between them are the fattest). The banks are **leaves**: their absolute calls go almost
entirely into `$Exxx` fixed-bank helpers (e.g. `$E177` ×66, `$E338` ×23, `$E3F0` ×47), never
sibling stubs — so window base is cosmetic here; the true identity is **(bank, offset)**, fitting
UW's 512K / 19-bit address space (6 bank bits + 13 offset, up from 18-bit on the 256K titles).

## Closing the fixed floor bottom-up

The paged native code calls **36 distinct fixed-bank helpers, 22 of which the first floor pass
MISSED** — they are reachable *only* through the `$E299` path, invisible to a fixed-bank-only JSR
census and absent from the bytecode `{native}` leaves. Feeding them back as seeds
(`native_banks.py --seeds` → `native_floor.py PAGED_NATIVE_FIXED_SEEDS`) and re-reaching:

| | before | after |
|---|---|---|
| fixed-floor native subs | 314 | **336** |
| shared w/ L'Empereur (≥.90) | 276 | 279 |
| named canonically (≥.70) | 284 | 289 |

336 now matches L'Empereur's own floor (334) — the two engines are the same size, so the fixed
floor is **complete**.

## Complete native inventory

| region | native subs | source |
|---|---|---|
| fixed engine floor (banks 62+63) | **336** | `native_floor.py` (closed) |
| paged native-call (`$E299`) | **113** | `native_banks.py` |
| **total** | **449** | |

`mesen-labels.toml` — 451 labels, bank-scoped (`[prg.bank63]`/`[prg.bank62]` + one section per
paged native bank), applied by `koei_vm.py`; regenerate with `tools/gen_labels.py`.

## Open

- Human-read the 45 UW-specific fixed-floor natives + the 4 unterminated paged subs.
- Name/classify the 113 paged native subs by behavior (which are trade calc, ship movement,
  naval combat, world sim) — the real-time engine identification, now that they're enumerated.
- Confirm window base for the filler-header native banks (7,8,10,13,17) if any absolute
  self-reference turns up during naming.
- **The data dig** (ch.3): ports, goods, prices, ship/crew stats, world map, storyline — the
  native subs above are the *readers*; next is the *records* they read.
