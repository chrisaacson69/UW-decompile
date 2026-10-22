---
status: active
created: 2026-07-06
game: uw
---
# Ch.8 — The calling-mechanism map (window + co-residency), before the app-bank walk

> The app banks can't be walked bottom-up until every call resolves to an owning bank — and UW has
> several call mechanisms, many that *assume a bank is already loaded* (intra-region `CALL_abs`, no
> bank switch). This chapter pins the window map + co-residency so those calls resolve. It also found
> UW is **inverted** from the rest of the family.

## The window map — UW is inverted ($8000 = code, $A000 = shared lib)

The prior titles default bytecode to `$A000` (app) with `$8000` shared libs. **UW flips it**, proven
by the own-call test (a bank's `CALL_abs` to its *own* stub offsets reveals its window) + header JMPs:

- **`$8000` = the rotating CODE window** — each subsystem's bank loads here. 30 code banks:
  `0,2,3,4,5,6,8,9,11,12,14–24,26–30,35–38`.
- **`$A000` = bank 1, the UNIVERSAL co-resident shared library.** **Proof:** 704 cross-window
  `CALL $Axxx` from **21 different `$8000` banks** land in bank 1's stub entries (bank 25: 0;
  unmatched: 15). Bank 1 (66 subs) holds the shared routines every subsystem calls.
- **`$A000` also:** bank 25 — a standalone subsystem (royal-audience), not a shared-lib target.
- `$C000` = bank 62 (semi-fixed bytecode+native lib); `$E000` = bank 63 (fixed OS core).

## The five call mechanisms — how each resolves

| in a `$8000` code bank, a call to… | resolves to | mechanism |
|---|---|---|
| `CALL $8xxx` | **own bank** | intra-bank (self) |
| `CALL $Axxx` | **bank 1** | co-resident shared lib (no bank switch — "assumes loaded") |
| `CALL $Cxxx/$Dxxx` | **bank 62** | semi-fixed lib (always mapped) |
| `CALL $Exxx/$Fxxx` | **bank 63** + fixed natives | fixed OS/engine (always mapped) |
| `syscall id2` (`call_banked_routine $FAB9`) | the target **data/subsystem bank** | explicit bank switch (load + call/jmp) |
| `$E299` / `$E338` | native ↔ VM inline bridges (ch.2–3) | inline call |

The first four need **no bank switch** — that's the co-residency assumption. Only syscall id2 (and
the `$E299`-side trampolines) actually re-page. This is exactly the "many calls assume a bank is
loaded" complexity — now resolved by knowing the co-resident loadout (`$8000` bank + bank 1 + 62 + 63).

## Committed to `games.toml`

- `banks_at_8000` = the full 30-bank list (was 17; own-call-test resolved the filler-header banks).
- `coresident_N = [1]` for every `$8000` code bank → the decompiler pulls bank 1's labels into each
  bank's scope, so `CALL $Axxx` renders as a named shared-lib routine.
- Verified: `bank_base_for` → bank 0=`$8000`, bank 1/25=`$A000`; bank-20 scope now includes bank 1.

## Why this unblocks the app-bank walk (leaves-first)

The bytecode call tree is now a clean hierarchy: **app bank (`$8000`) → bank 1 shared lib (`$A000`) →
bank 62 lib (`$C000`) → bank 63 OS (`$E000`) → native floor/ALU (ch.2/6)**. Leaves-first means:

1. **Bank 1 (the `$A000` shared library) is the next target** — it's called by ~everything, so naming
   its 66 subs makes every subsystem's `CALL $Axxx` resolve to a name.
2. Then each `$8000` subsystem bank, anchored by its ch.4 strings (market=20, shipyard=22, sailing=29…).

## Open

- Walk + name **bank 1** (the universal shared lib) — the highest-leverage leaf.
- Confirm bank 25's co-resident partner (standalone `$A000`; which `$8000` bank loads it?).
- Map syscall-id2 dispatch targets (which subsystem bank each screen/command loads) → the top-level
  menu/mode → bank routing.
- Then per-subsystem app-bank walks; that resolves the `$Axxx`/`$6xxx` anchors and the native formulas.
