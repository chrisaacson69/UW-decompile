---
status: active
created: 2026-07-06
game: uw
---
# Ch.12 — Subsystem walk (leaves-first, stop-at-known): the MARKET bank

> First subsystem walk, and the method that scales to the other 28. Walk a subsystem bank's own subs
> **leaves-first**, but **stop at existing dependencies** — a call into the mapped base (bank 1/62/63,
> named natives) is *resolved*, not re-descended. String anchors (ch.4) name each local sub.

## The method (`tools/walk_bank.py`)

For a `$8000` subsystem bank, classify every `CALL_abs`:

| target | meaning | action |
|---|---|---|
| `$8xxx` (own stub) | **local sub** | walk it (intra-bank edge) |
| `$Axxx` | bank 1 UI lib (named ch.9) | **existing dep — stop** |
| `$Cxxx/$Dxxx` | bank 62 lib | existing dep — stop |
| `$Exxx/$Fxxx` | bank 63 OS / native floor + ALU | existing dep — stop |

Then topo-order the local subs leaves-first (subs whose calls are all existing deps come first).
Each local sub is named from the **strings it pushes** (`PUSH_imm2 $8xxx` → in-bank text) + its base
deps (heavy `draw_window` ⇒ a screen; goods-table refs ⇒ goods handling). "Stop at known" is exactly
the ask: we never re-analyze the base — 25 market subs resolved against an already-named foundation.

## Market (bank 20) — named

25 local subs; the string-anchored core:

| sub | role | anchor |
|---|---|---|
| `$8059` | `market_draw_gold` | "Total gold: %5d", "%3d/%3d" |
| `$8094` | `market_draw_ship_load` | "Ship  Load/Max" |
| `$8119` | `market_draw_goods_list` | goods-string table `$95xx` |
| `$8789` | `market_draw_cargo` | "cargo:%2d", "Space left:%3d" |
| `$826F` | `market_sell_screen` | "Variety Amt Rate", "No goods on that vessel" |
| `$8485` | `market_sell_pick_ship` | "Which ship's cargo is for sale?" |
| `$8A5A` | `market_buy_confirm` | "will cost ye %d gold", "We can't buy at those prices" |
| `$8CEC` | `market_buy_menu` | "What are ye looking for today?", "Variety Amt Cost" |
| `$8E27` | `market_buy_pick_ship` | "Which ship will carry the goods?" (top orchestrator) |
| `$8FB7` | `market_price_list` | "Sell  Buy", "market" |

Structure: **draw primitives** (gold, ship-load, cargo, goods-list) at the leaves → **screens**
(sell / buy / price-list) → **pickers & menus** → the `market_buy_pick_ship` orchestrator on top.
Shared market state: `$666B` (touched by most subs — the market working var), `$7063/$7064/$7067`
(ship/goods selection indices). Named in `mesen-labels.toml` `[prg.bank20]`; the bank now disassembles
as `CALL market_sell_screen`, etc.

## What's still open in bank 20 (and the RT note)

The market is a menu subsystem, so it named cleanly from strings. The **price computation** — how buy/
sell prices derive from the port + goods + supply/demand — runs through the bank-3 native `calc` subs
(ch.6) it calls; those resolve when we trace them on the emulator (ch.11) with real inputs. This is
where the "different way of doing things" (your RT note) shows up: the *numbers* are native/data-driven,
the *screens* are bytecode. We named the screens; the formulas are a targeted emulator task.

## The method scales

Every subsystem is one `$8000` bank + the shared base, with its own string block (ch.4 map). So the
same walk names each: shipyard (22), tavern (23), sailing (29), gambling (27/28), … — leaves-first,
stop-at-known, string-anchored. The base is done once; subsystems are now independent, bounded walks.

## Open

- Run `walk_bank.py` on the remaining subsystems (shipyard/tavern/sailing next by richness).
- Resolve the market price formula: trace bank-3 `calc` natives on the emulator with (port, good, qty).
- Seed a save (ch.11) to observe the market loaded live and confirm the buy/sell flow end-to-end.
