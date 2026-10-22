---
status: active
created: 2026-07-06
game: uw
---
# Ch.9 — Bank 1: the universal shared library (windowing / UI)

> Bank 1 (`$A000`, co-resident with every `$8000` code bank — ch.8) is the highest-leverage leaf: its
> 66 subs are called by ~everything. Naming its core API makes every subsystem's `CALL $Axxx` read as
> a named operation. It turns out to be the **windowing / UI library**.

## What bank 1 is

49 of its 66 subs are called cross-bank (the shared API surface). Ranking by caller frequency + body
decode shows a **text-window UI toolkit**: open/close nested windows, draw boxes/frames, render via
PPU syscalls, and draw game-state records into windows.

## Core API — named (by call frequency + grounded body decode)

| sub | name | evidence | calls |
|---|---|---|---|
| `$B83F` | **`draw_window`** | `draw_box_frame` + `win_render_syscall(1)` | **291** / 11 banks |
| `$A003` | `win_open` | pushes window-stack `$7286/$7288`, draws frame | 127 / 11 |
| `$B869` | `draw_box_variant` | native `$A73C` + extra arg | 99 / 10 |
| `$B889` | `draw_box_from_native` | native `$D791` → `draw_box_variant` | 69 / 11 |
| `$A07D` | `win_close` | `dec $7288` (depth) → redraw via `win_open` | 55 / 11 |
| `$B801` | `draw_box_frame` | pushes dims (w8,h24,x20) → native `$A73C` | (via `$B83F`) |
| `$B81B` | `win_render_syscall` | 14-arg PPU descriptor via `syscall_entry_struct` | 87 / 11 |
| `$A73C` | `native_draw_box` | bank 1's **native** 12-arg tile-box draw | — |

Shared RAM vars named: **`$7286`/`$7288` = the UI window-nesting stack** (pointer + depth;
`win_open` pushes, `win_close` decrements — a classic nested-menu window stack). `$737D` = a hot UI
var ~15 subs touch (cursor/handle? — left `ui_shared_var_737d`, honestly TBD).

**Verified propagation:** the market bank (20) now disassembles as `CALL draw_window`,
`CALL draw_box_from_native` — the leaves-first payoff. Labels in `mesen-labels.toml` `[prg.bank1]` +
`[ram]` (via `gen_labels.py`); listing `source/2-asm-vm/bank01_A000_sharedlib.asm`.

## What's left in bank 1 (same method, incremental)

The remaining ~40 subs are lower-frequency: record-drawers (e.g. `$B598` draws the `$6664/$6665/$666A`
record; `$B634` similar), state accessors (the `$6B89/8A/8B` triplet at `$A340/$A36D/$A39D`), and two
big orchestrators (`$AFD9` 221 instrs; `$AD41` 161 instrs, called from native bank 3). These name out
as their referenced records/strings get identified — no new mechanism needed, just more passes.

## Where this leaves the walk

Bottom-up layers now named/mapped: native engine (ch.2) → native ALU (ch.6) → fixed OS/lib bytecode
(ch.7) → **bank 1 shared UI lib (ch.9)**. Every `$8000` subsystem bank now resolves its `$Axxx` calls
to named UI ops. The subsystems are next — each anchored by its ch.4 strings and now readable at the
UI layer.

## Open

- Finish bank 1's record-drawer + accessor subs (incremental; tie to ch.5 records + ch.6 RAM map).
- Identify `$737D` (the hot UI var) and the `$A73C`/`$D791` native draw helpers' exact params.
- **Per-subsystem app-bank walk** — start with **market (bank 20)**: richest anchors (26 goods, prices,
  `draw_window` calls), and it finally resolves the trade `calc` natives (ch.6) into price formulas.
