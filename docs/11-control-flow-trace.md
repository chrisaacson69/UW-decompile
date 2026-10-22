---
status: active
created: 2026-07-06
game: uw
---
# Ch.11 — The control layer, traced in execution (headless MMC5 emulation)

> Ch.10 showed the *dependency* graph is strictly layered — but the *control* structure (how the game
> loads and routes between subsystems) lives in the **bank-switch dispatch**, invisible to CALL_abs.
> Rather than infer it from ambiguous static bytes, drop to the running machine: a headless MMC5
> emulator boots the ROM and *observes* the real transitions.

## The tool — a headless MMC5 boot emulator (a family first)

`tools/trace_boot.py` wraps koeivm's CPU6502 (a real 6502 core) in a proper **MMC5 memory model**:
8K windows `$8000/$A000/$C000/$E000` via `$5114-$5117`, PRG-RAM via `$5113`, the `$5205/$5206`
hardware multiplier, stubbed PPU/input, and simulated per-frame NMI (clears the `$9F` VRAM-transfer
flag the boot spins on). It logs every bank switch + every `call_banked_routine` dispatch with the
triggering PC. (The prior family emulator was MMC1-only, single-window — this is the first that boots
an MMC5 title.)

**Self-validation:** the emulator's first three bank writes — `$C000←62`, `$8000←32`, `$A000←33` —
match the static decode of the boot init `$F53D` (ch.8) exactly. The CPU is executing the real ROM.

## What the trace shows — boot → title, grounded

```
RESET $F500 → PPU warmup → init-sub chain ($F53D banking: 62/32/33) → jmp $E000 → os_main $E003 (init)
 └─ per-frame NMI $F64C: rotate graphics banks 59/60/61 through the windows (CHR/nametable upload), restore
 frame 7:  call_banked_routine($54 = bank 2)   ← via the syscall path ($F985)
 └─ control enters BANK 2 @ $8000 and runs there  ← the top-level controller
```

So the **control mechanism is confirmed in execution**: subsystems are entered by
`call_banked_routine` (syscall id2, `$FAB9`) — a bank switch, *not* a CALL_abs — which is exactly why
the ch.10 dependency graph looked flat. And the **entry controller is bank 2** (title / new-game), the
subsystem the boot hands off to. (This corrects the ch.8 tentative "bank 25 standalone" guess about
where control starts — it starts at bank 2.)

The `call_banked_routine` handler (decoded ch.10): `$52` = window slot, `$54` = target bank → maps the
bank via `set_prg_bank`, jumps to the window entry, runs it, restores the prior bank. Subsystem
transitions = a stack of these.

## The emulator is now complete (both gaps closed)

1. **6502 core completed** — koeivm's CPU covers the VM handlers but lacked exactly **18 legal
   opcodes** (indexed RMW/load/store, `(zp,X)` ALU, `CPX/CPY abs`, `BRK`). Added via a *local*
   `CompleteCPU` subclass in the tracer (shared koeivm untouched). No more opcode halts.
2. **Real NES serial controller + input script** — `$4016` strobe/shift implemented; buttons pulsed
   as *edges* (press 2 frames, release) since menus wait for a fresh press, not a held button.

With both, the emulator boots and **navigates menus**, tracing the real transition graph:

```
frame    7:  bank 2   (title / new-game)          ← boot hands off here
frame  982:  bank 35                              ← new-game / character setup
frame 1086:  bank 3  +  bank 18                   ← char-create (bank 3 = native math, co-loaded w/ 18)
frame 1130:  bank 35                              ← back to the setup menu
```

Every transition is a `call_banked_routine` dispatch (caller `$F985` = the syscall path), confirming
the bank-switch routing end-to-end. Live execution now runs in banks 1/2/3/18/35 — real gameplay code.

## Boundary (honest)

The trace plateaus in **character-creation** (bank 18): generic button-mashing can't complete
game-specific steps (name entry, portrait/stat selection), so it loops there. Reaching the **open
world → dock → port-menu → market/shipyard** cleanly wants a **valid SRAM save seeded at `$6000`**
(skip new-game and load straight into the world) — the emulator supports it; we just need a save
image. That's the one remaining input to capture the *gameplay* half of the transition graph.

## The control structure (answer)

- **Boot / init:** reset native → `os_main $E003` (bytecode init: load SRAM, set banking/CHR/palette).
- **Entry controller: bank 2** (title / new-game / character-create) — loaded via `call_banked_routine`.
- **Routing:** subsystem-to-subsystem is `call_banked_routine($54=bank)` — a save/switch/jump/restore
  stack. This is the orchestration layer, orthogonal to the ch.10 call graph.
- **Per-frame engine:** NMI `$F64C` handles rendering (graphics-bank rotation + VRAM transfer), the
  clock the main loops wait on (`$9F`).

## The emulator as a reusable asset

`trace_boot.py` is now a complete headless MMC5 executor (full 6502, MMC5 banking, HW multiplier,
NMI, serial controller). Beyond control-flow tracing it's useful for: **verifying** the native `calc`
formulas (ch.6) by executing them on real inputs, **confirming** record-field meanings (ch.5) by
watching reads/writes, and **grounding** any subsystem claim against the running CPU — the
verification-independence tool for the whole project.

## Open

- Seed a **valid SRAM save** at `$6000` → boot straight into the open world; capture the gameplay
  transition graph (world/sailing loop → port menu → market/shipyard/tavern/…) in execution.
- Confirm whether the world/sailing real-time loop is a `call_banked_routine` target (bank 29 =
  sailing) or runs from a resident bank — the trace will show it directly once past char-create.
