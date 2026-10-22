---
status: active
created: 2026-07-06
game: uw
---
# Ch.20 — Numeric data-walk (banks 47-56): the world map

> The data-walk of the un-decoded numeric banks. They turned out to be **not** per-entity stat tables —
> they are the **world map terrain grid**, the single largest data structure on the cart (~75KB), which
> the sailing engine reads for movement and land detection.

## The finding — banks 48-56 = the world map (Earth-proportioned)

Nine dense 8K banks, uniform structure. The value bands are consistent across all of them and match a
real terrain map:

| band | value | share | meaning |
|---|---|---|---|
| sea | 0–3 | **~72–78%** | open water (0–3 likely = depth / distance-from-land) |
| mid | 4–43 | ~11–16% | coastal / shallows / terrain gradient |
| land | 44–52 | ~10–12% | land / coastline tiles |

**~72% sea / ~11% land is Earth's actual ocean-to-land ratio** (~71% water) — the map models the real
globe. That ratio holding across 8 independent banks is the proof this is one uniform geographic field,
not a coincidence of records. Total ≈ 8×8K + partial (bank 56) ≈ **~73KB of world map** — by far the
biggest single data structure in the ROM, exactly what a global exploration game needs.

Bank **47** is different (99% high-value, ~1.7KB used, an `ff/fe` bitmap) — a **map overlay** (likely a
coastline/known-waters or region mask), not part of the terrain grid.

## What this resolves (and re-frames)

The ch.19 audit guessed banks 47-56 held "per-entity stat tables (port economy, NPC/mate stats)." That
was wrong — they're the map. So:

- **Per-port economy** is *not* a big static table here. Consistent with the manual (dynamic pricing):
  the static part is small — the port record's `field2`/`field3` (ch.5, left TBD) most likely encode
  the port's **specialty good / supply seed**, and prices are computed at runtime in SRAM. Re-check
  those two fields against the goods list is the cheap follow-up.
- **NPC/mate stats** (Marco, Christopher, …) aren't in 47-56 either — they sit with the name tables in
  bank 58 or in the new-game SRAM-init data. A targeted parallel-table hunt near the bank-58 names.

## Precise tile encoding = a native-reader task

The exact meaning of the three bands (sea-depth levels 0–3, the 4–43 mid gradient, the 44–52 land
types) is read by the **bank-8 sailing-engine native subs** (ch.15) that do collision/land detection
and "Land ho" — they index this grid by the ship position (`$7298-$729B`). Decoding the tile semantics
precisely (and the map's exact width / bank layout) is best done by watching those reads on the
emulator, consistent with the native-math-needs-execution theme. The **structure is grounded**; the
per-tile legend is the dynamic step.

## Data-walk: complete

Every non-code bank now has an identity:

| banks | content |
|---|---|
| 58 | ports / ships / items / names (records) — ch.5 |
| 20, 4 | goods names / procedural item names — ch.4 |
| **48–56** | **world map terrain grid (~73KB, Earth-proportioned)** — ch.20 |
| **47** | **world-map bitmap overlay** — ch.20 |
| 59, 60, 61, 39–41, 32–34 | tile / nametable / screen graphics |
| 31, 42–46 | `$FF` padding (spare capacity) |

## Open

- Re-check port record `field2`/`field3` vs the goods list → the static port-specialty/economy seed.
- NPC/mate stat table (near bank-58 names or SRAM-init).
- Emulator: decode the map tile legend + width by watching the bank-8 map reads during sailing.
