---
status: active
created: 2026-07-06
game: uw
---
# Ch.7 — Fixed-bank bytecode: the ground level (OS core + shared library)

> The bytecode walk starts at the bottom: the **resident** bytecode in the fixed banks (63 @ `$E000`,
> 62 @ `$C000`) that every paged app bank calls. This is the OS core + shared library — the leaves of
> the bytecode call tree. Getting here first surfaced (and fixed) a koei_vm fixed-bank disasm bug.

## Tooling fix — koei_vm can't read fixed banks; workaround shipped

`koei_vm disasm uw 62` gave **wrong bytes** (found 23 of 62 stubs; `$C008` showed `$A5` where the ROM
has `$FF`), and bank 63 at base `$E000` found **0**. Root cause: the koeivm emulator maps a disasm
target bank only into the `$8000/$A000` **paged** slots — the `$C000/$E000` windows read whatever
fixed banks it booted, not the requested bank. `tools/disasm_fixed_bytecode.py` forces the fixed bank
into the `$A000` slot (correct read) and translates the printed `$A0xx` back to the real base
(+`$2000` for bank 62 → `$C0xx`; +`$4000` for bank 63 → `$E0xx`). Verified: bank 62 now finds all 62
stubs at `$C47B…`; bank 63's `os_main` matches the raw ROM. Listings:
`source/2-asm-vm/bank63_E000_os.asm`, `…/bank62_C000_library.asm`. *(Clean long-term fix: teach the
koeivm mem model to map disasm banks into any window — a shared-tool change for later.)*

## Bank 63 (`$E000`) — the OS core (6 subs)

| sub | role |
|---|---|
| **`$E003` os_main** | boot init: `copy_from_bank $2000 B → $6000` (load initial game state into SRAM), then a run of syscalls setting banking / CHR / palette (`$00C0–$00E5` bank ids). The top of the game. |
| `$E06F`, `$E08C` | range/bounds helpers (`UCMPLT` / `UCMPGT` clamps) |
| `$E0C1`, `$E0D6`, `$E0EA` | flag-gated syscall wrappers: each tests **`$6B87` bit 4** and conditionally fires a syscall (routine ids 22/23/24) |

**`$6B87` = a shared OS mode-flags byte** (bit 4 gates those three routines) — the native banks touch
it too (ch.6), so it's a genuine cross-layer anchor. All 6 subs are called from native code (they
were in the ch.2 bytecode-leaf set).

## Bank 62 (`$C000`) — the shared bytecode library (62 subs)

`$C000–$C47A` is native (the fixed-floor helpers, ch.2); the bytecode library is **62 subs from
`$C47B`**. They are small (7–26 instrs) shared utilities: drawing via syscalls, and state access to
the hot RAM clusters from ch.6 (e.g. `$7286–$728E`, `$7050`). These are the OS-level routines every
paged app bank calls — the true leaves of the bytecode call tree, so decoding them first makes the
app-bank walk resolve to named library calls (the leaves-first discipline).

## What this establishes

The bytecode ground level is now readable: `os_main` (the entry), the OS flag/range helpers, and the
62-sub shared library. Combined with the native floor (ch.2), native ALU (ch.6), syscall table
(ch.1), and the record schemas (ch.5), the **bottom three layers are mapped**: native engine → native
ALU/library → fixed bytecode library. The paged app-bank bytecode (the subsystems: market, shipyard,
sailing, …) sits on top and is the next walk.

## Open

- Name the 62 bank-62 library subs by behavior (drawing / state-accessor / math) — leaves-first.
- Trace `os_main`'s `copy_from_bank` source → which ROM table seeds SRAM `$6000` (the initial state
  layout; ties the ch.5 records to their runtime `$6xxx` homes).
- Then the **paged app-bank bytecode walk** (per subsystem, using the ch.4 string anchors), which
  resolves the `$Axxx` targets + `$6xxx` fields and finally unlocks the native `calc` sub formulas.
