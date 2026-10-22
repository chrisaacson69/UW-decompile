---
status: active
created: 2026-07-07
game: uw
---
# Ch.28 — The port economy (bytecode-walked)

The trade model, read straight from the labeled market code (bank 20) — no emulation needed. Runtime
state lives in SRAM; the static tables are in bank 58 (paged, read via `copy_from_bank58`).

## The formulas (from `calc_good_price` / `calc_port_prices` / `accrue_port_investment`)

Let `EW` = port economic worth (`$67B2[port]+0`, word, SRAM), `IW` = industrial worth (`+4`).

**Availability** — a good is stocked when its threshold clears the port's wealth:
```
stocked(good)  ⇔  good.threshold × 50  ≤  EW
```
Investing/developing a port raises EW, so wealthier ports unlock more of their region's goods.
✅ **Verified live**: at Lisbon EW=800; every set-0 good clears the gate (Firearms `t7×50=350 ≤ 800`).

**Shelf (buy) price = base price × the port's price%.** `price% = port.field[+11] + 50` (`calc_port_prices`:
`local6 = port+11 + 50`), shown on the View→Town screen. ✅ **Verified live at Lisbon**: `+11 = 51 →
101%`, and Olive Oil = base 42 × 1.01 = **42g** on screen. Ports start near 100% (live: Lisbon 101,
Seville 100, Mecca 99). The price% is the drift knob — buying pushes it up, selling pulls it down
("the market remembers"), and it modulates both the shelf and the demand side at that port.

**Price drift** (`$6FBE[good]`, a *separate* per-good value, floored at 100, grows as you work a route):
```
$6FBE[good] = max( $6FBE[good] + (EW+IW)/65 + rng(0..2) + 5,  100 )
```
This is the "market remembers your deals" mechanic (likely the sell-back / over-trade rate) — NOT the
shelf price. It only ever ≥100 and climbs; the fresh shelf price is the base. Exact buy-vs-sell role of
`$6FBE` is the one open item (needs a before/after-trade dump pair to pin).

**Investment** (`accrue_fame_from_investment`, accumulator `$6F72`):
```
$6F72 += rng(0..99) + (EW + IW) / 2               ;   capped at 50000 ($C350)
```
Investment feeds back into EW/IW → lowers the availability gate and lifts every price. The first 3
ports (Lisbon home + 2) can't be invested in; a port maxes at `$67B4 == 60000` (`$EA60`).

> ⚠️ **`$6F72` is FAME, not "port investment"** (corrected [ch.29](29-progression-and-fame.md)). Port
> investment is only *one* of ~7 activities that raise it (also discovery, trade, combat, outfitting);
> it's displayed on the status panel next to gold, and the King's court reads it to gate quests. The
> routine here (formerly `accrue_port_investment`) is one fame source, renamed `accrue_fame_from_investment`.

## The static tables (bank 58, paged as `$Bxxx`)

- **Port → goods-set index**: `$B50A + port×5`, byte at **+0** (= bank58 `$150A`). ⚠️ **+0, not +3** —
  live game proved it: Bordeaux reads set 1 = Cheese/Grain/Cloth/Firearms/Porcelain, matching in-game
  (I first used `record_field_byte`'s internal +3, which permuted every port's set). 50-entry table.
- **Goods-set matrix**: `$B864 + set×88` (= bank58 `$1864`), **8 sets**, each
  `[9 thresholds][9 ids][9 prices][26-word demand table]`. The +36 demand block = the region's *bid*
  price for all 26 goods (what it pays you). Matrix ends at `$1B24`.

## The economy is REGIONAL — 8 zones, not 8 ports

Each goods-set is a **regional profile** shared by every port in that region. Trade is *between*
regions; same-region legs earn nothing (identical goods + demand, modulo the per-port price%).

| set | region | ports (sample) | sells (base) | bids most for |
|---|---|---|---|---|
| 0 | **Iberia/Med** | Lisbon, Seville, Genoa, Venice, Istanbul (14) | Olive Oil 42, Grapes 38, Cloth 60, Firearms 100 | Gold 1000, Artwork 400 |
| 1 | **N.Europe** | Bordeaux, London, Hamburg, Antwerp, Oslo, Azov | Cheese 35, Grain 12, Cloth 62, Firearms 105, Porcelain 60 | Gold 1000, Carpet 340 |
| 2 | **W.Africa** | Argin, San Jorge | Gold 750, Cotton 30 | Coral 290, Quartz 220 |
| 3 | **E.Africa** | Sofala, Mozambique, Mombasa | Quartz 180, Cotton 25, Wood 28 | Silver 280, Coral 260 |
| 4 | **Caribbean** | Panama, Jamaica, Veracruz, Caracas (7) | **Gold 400**, Cotton 22 | (imports everything) |
| 5 | **Arabia/India** | Mecca, Muscat, Aden, Baghdad, Hormuz, Diu | Olive Oil 30, Grain 18, Cotton 20, Wool 20, **Carpet 70** | — |
| 6 | **Far East** | Nagasaki, Macao, Zeiton | Pearl 170, Silk 45, Porcelain 25, **Artwork 140** | — |
| 7 | **India/SE-Asia** | Goa, Malacca, Ceylon, Java, Calicut (9) | Grain 10, Cotton 15 | — |

The money routes are **inter-continental**: Caribbean Gold 400 → Europe 1000 (+600, Atlantic); Far-East
Artwork/Silk → Europe; Arabia Carpet → Europe (round Africa). Distances that cross land (Suez doesn't
exist) are far longer than the map-grid Manhattan distance suggests. `rng` = `load_operand16_14(N)`.

## Navigation-tool items (equipment flags at `$6662+11`)

Two treasures double as navigation gear — owning them sets a bit in the party record's `+11` flags word:
- **bit 0 = Telescope**: the **Look** command shows the full 13×13 area instead of ±1 tile (`helm_look`).
- **bit 1 = Sextant**: enables the lat/long **position** readout (`helm_show_position`), but with error
  scaled by navigation skill (`mem_6BC1`) — `if skill < rng(180)` it fuzzes position by ±several tiles.

**Item shops are fixed per port**, table at bank58 `$00E9 + port×4` (4 item indices; all-equal = no
shop). `dump_records itemshops` prints the map. Telescope (1000g) sells at 18 ports — nearest to the
Iberia loop: Valencia, Genoa, Pisa; on the N.Europe leg: London. The Far East (Macao/Zeiton) stocks the
priciest court-gift treasures (Dragon Icon 15000, Shining Amulet 12000).

## Second-oracle check — DONE (Mesen Work-RAM dumps, new game in Lisbon)

Verified against `traces/UWFoodNesWorkRam.dmp` (new game, equal stats, at the Lisbon market):
- **EW/IW live**: Lisbon `$67B2` = EW 800 / IW 800 (start values). Ports 1-3 = 950/950, 820/820, 300/200.
- **Availability gate confirmed** (all Lisbon goods stocked at EW=800).
- **Shelf price = base**: Olive Oil = 42g on screen = matrix base. The `(EW+IW)/65` term is drift, not shelf.
- **`$6FBE` is not the shelf buffer** — it didn't change between the spice and food market views (only a
  2-byte cursor at `$7294` did); prices are computed → drawn → discarded, so the base table IS the price.

**Two labeling corrections the live dump forced** (SRAM addresses are runtime, not what the census guessed):
- **Player character record is at `$6BAE`** ("Leon Franco" + 5 stats at +`$11`: 63/62/62/62/62 =
  Charisma/Wisdom/Intelligence/Strength/Courage). Ch.26 had placed the stats at `$6662` — wrong.
- **`$6662` is the entity POSITION table**: live = `(32,8,3,12)` = Lisbon's `(x,y,f2,f3)` — which also
  confirms the corrected port coordinates (ch.5) and that `f2/f3` are a real port key.

Still open: the exact buy-vs-sell role of `$6FBE` (needs a before/after-trade dump), and per-port
starting EW/IW for the non-seed ports.
