---
status: active
created: 2026-07-07
game: uw
---
# Ch.26 — Record field schemas (code-driven field census)

The [full labeling pass](25-*) made every record-field access legible, so `tools/field_census.py`
scans `source/4-c` for `record[idx].+N` accesses against each known base+stride and tags every field
with the **operation** at that site — crucially the *format string* it's displayed with. A "Durability:
%3d" printf at offset +0 pins that field. Grounded purely in code; no emulator.

Reproduce: `py -3 tools/field_census.py [BASE]`.

> Distinction: **ROM tables** (port master @ bank58 $0FD4 — see ch.5 — goods/ships/items — ch.27) hold
> real *values*. The records below live in **SRAM** ($6xxx-$7xxx) = runtime save data; the code gives
> their *structure*, actual values need a Mesen SRAM dump (the second oracle).

## SHIP STATS — `$6C90`, stride 7 (per ship)
| off | sz | field | evidence |
|---|---|---|---|
| +0 | b | `durability` (hull) | "Durability: %3d/%d"; repaired by `repair_hull`; max = `record_proc_6c96_1` |
| +1 | b | `handling` (sails/mast) | "Handling: %3d", "Tacking power:%2d"; `repair_mast`; max = `record_proc_6c96_2` |
| +2 | b | `power` (rudder/guns) | "Power: %3d"; `repair_rudder`; max = `record_proc_6c96_3` |
| +3 | b | `arms` | "%d guns" |
| +4 | w | `crew` | "Crew:%4d", "Crewmen: %3d" |
| +6 | b | `class_and_cargo` | packed: bit-extracted 69× (`>>4&3` = hull class), also "Cargo load:%3d" |

## SHIP CARGO — `$6AA4`, stride 24 (per ship, parallel to stats)
| off | sz | field | evidence |
|---|---|---|---|
| +0 | b | `ship_id`/index | heavy arithmetic + `>>&` |
| +6 | w | `cargo_space` | compared vs load |
| +16,+18,+20 | w | `goods_qty[0..2]` | "%3d   %3d   %3d" row |
| +22,+23 | b | (misc) | mutated |

## PORT ECONOMY — `$67B2`, stride 14 (per port; +8.. overlaps `$67BA`)
| off | sz | field | evidence |
|---|---|---|---|
| +0 | w | `economic_worth` | "Economic worth: %d" |
| +2 | w | `economic_investment` | "Economic investment: %d" |
| +4 | w | `industrial_worth` | "Industrial worth: %d" |
| +6 | w | `industrial_investment` | "Industrial investment: %d" |
| +11 | b | `price_pct` | "Prices:%3d%%" |

## CHARACTER — `$6662`, stride 16 (party leader + crew; player record extends past 16)
| off | sz | field | evidence |
|---|---|---|---|
| +2 | b | `battle_exp` / level | "Battle Exp: %5d Level:" *(but movement engine reads +2/+3 as target x/y — dual use, verify)* |
| +3 | b | `sailing_exp` / level | "Sailing Exp:%5d Level:" |
| +8 | b | `facing` | movement engine (`%8`) |
| +15 | b | `age` | "Age: %2d" |
| +16 | w | `charisma` | "Charisma:%3d" |
| +17/+18 | b | `wisdom` / `intelligence` | "Wisdom", "Intelligence:%3d" |
| +19 | b | `strength` | "Strength:%3d" |
| +20 | w | `courage` | "Courage" |

> ⚠️ **CORRECTED by a live SRAM dump (ch.28).** The char-*stats* are NOT at `$6662`. `$6662` is the
> **entity POSITION table** — a live new-game dump reads `$6662 = (32,8,3,12)` = the party's Lisbon
> `(x,y,f2,f3)`. The real **player character record is at `$6BAE`**: name "Leon Franco", then the 5
> char-create stats at +`$11` (Charisma/Wisdom/Intelligence/Strength/Courage, live = 63/62/62/62/62 with
> equal-stat setup). The census's "Charisma at +16" was a mis-attribution — those display accesses key
> off `$6BAE`, not the position table. Lesson: SRAM field offsets need the live oracle, not just the
> code pattern.

## Partially resolved
- `$6B1C` stride 21 (`record_base_6b1c`): +20 = packed ship condition (bit-extracted 26×, `>>5&7`/`>>2&3`/`>>4&1` drives used-ship depreciation in `calc_used_ship_price`); +18 word "%3d/%3d".
- `$6542` stride 7, `$B50A` stride 5 (port index), `$6004` stride 51 (NPC/rival ships): structure emitted by census, field meanings TBD.

## Schema wiring
`koeivm` `set_schema("uw")` = `("", {}, {})` — **generic**: disables the inherited na1 `rice/debt/town`
field names (which were wrong for UW), so unmapped record accesses render as `arg->field_N` / raw
offsets. Real field names live here, not fabricated into the C. Re-resolve later by wiring these maps
in once an SRAM dump confirms the byte-exact layout.
