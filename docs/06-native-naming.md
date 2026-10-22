---
status: active
created: 2026-07-06
game: uw
---
# Ch.6 — Naming the native subs: the ALU vocabulary + what the native layer *is*

> Returning to the 219 paged native subs (ch.3) with the data anchors (ch.4–5). The finding: the
> native layer is a **math coprocessor for the bytecode VM**. Naming its shared ALU vocabulary makes
> every sub readable; full per-sub *semantic* names are (honestly) gated on the bytecode/SRAM walk.

## What the native subs actually are — glue + arithmetic

A native sub is called from bytecode via `$E299` (inline call). Inside, it: pops VM-stack operands
into native registers, does arithmetic, optionally calls back into bytecode via `$E338`
(native→VM), reads/writes game-state RAM (`$6xxx/$7xxx`), and pushes results back. Example
(sub_3_0009): read state `$6664/$6665/$666A`, call bytecode `$AD41` with 8 args, return.

**Role distribution of the 113 `$E299`-stubbed subs:**

| role | count | meaning |
|---|---|---|
| **calc (ALU-heavy)** | **66 (58%)** | 16-bit multiply/divide/shift on VM operands |
| vm_glue | 19 | orchestrate bytecode calls (`$E338`) |
| mixed/light | 16 | small helpers |
| leaf/other | 8 | |
| state_mutator | 4 | write `$6xxx` records directly |

**58% are arithmetic.** This is *why* the code is native: the bytecode VM is slow at 16/32-bit
math, so the compute-bound game logic (trade-price formulas, ship-stat aggregation, navigation
distance, combat resolution) is offloaded to native subs that use the **MMC5 hardware multiplier**.

## The native ALU — the shared vocabulary (named, byte-verified)

The hot fixed-bank helpers every native bank calls, decoded from bank 63:

| addr | name | what |
|---|---|---|
| `$E177` | `alu_mul16` | 16-bit multiply via MMC5 `$5205/$5206` hardware multiplier |
| `$E3F0` | `alu_shl16_n` | shift-left by Y (×2^Y) |
| `$E415` | `alu_shr16_n` | logical shift-right by Y (÷2^Y) |
| `$E401` | `alu_shr16_n_signed` | arithmetic (sign-preserving) shift-right |
| `$E1B4` | `alu_abs16` | absolute value (sign-conditional negate) |
| `$E1EB` | `alu_udiv16` | unsigned 16-bit divide → push quotient (`$40/$41`) |
| `$E1D9` | `alu_div_push_remainder` | divide → push remainder (`$44/$45`) |
| `$E426` / `$E395` | `vm_load_operand16` / `vm_pop_operand16` | VM-stack operand → native reg |
| `$E3BA` | `vm_push_result16` | native result → VM stack |

Named in `mesen-labels.toml` (via `gen_labels.py`); the native `.asm` now reads
`jsr $e177 ; alu_mul16`, etc. (regenerated 12 banks).

## Game-state RAM map (from native accesses)

Native code touches **75 distinct `$6xxx/$7xxx` game-state addresses in 19 contiguous clusters** —
the runtime record layout (records loaded from the ch.5 ROM tables). Hottest working records:

| cluster | fields | accesses | likely |
|---|---|---|---|
| `$7050-$705F` | 12 | 50 | main working record (current ship/entity) |
| `$7FF0-$7FF5` | 6 | 46 | hot global (cursor/menu/scratch) |
| `$7286-$728E`, `$7298-$729E` | 5+7 | 24+24 | paired records (compared entities) |
| `$6B89-$6B8C` | 4 | 17 | small struct |

## The honest gate

Per-sub *semantic* names (which formula each `calc` sub computes, what each `$6xxx` field means)
require knowing the **bytecode targets** (`$Axxx`) and the **SRAM field meanings** — i.e. the
bytecode walk (next phase) and an SRAM-layer pass. So this chapter delivers what *is* groundable
now — the ALU vocabulary, the role classification, the RAM cluster map — and does **not** invent
semantic names it can't yet support. Those land when the bytecode walk resolves the `$Axxx`/`$6xxx`
anchors, at which point each `calc` sub's formula becomes readable in one step.

## Open

- Behavioral role tags into the per-sub labels (mechanical; calc/vm_glue/dispatch).
- Name the remaining fixed-floor ALU/util helpers (`$E222`, `$E226`, `$E274`, `$E1FD`, …).
- Then the **bytecode walk** — resolves `$Axxx` targets + `$6xxx` fields, unlocking semantic native
  names and the trade/combat formulas.
