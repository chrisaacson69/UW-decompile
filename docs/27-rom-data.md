---
status: active
created: 2026-07-07
game: uw
---
# Ch.27 — ROM data mine (goods, ships, items)

Static game data read straight from the cartridge, anchored by the ch.4 string-walk and the now-complete
labeling. Each list is verified by count + internal category structure. Tool: `tools/dump_records.py
goods|ships|items|ports [--tsv]`.

> ROM data = real values (below). Runtime SRAM records (ship/port/char instances) are structure-only —
> see ch.26.

## GOODS — 26 tradeable commodities (bank 20, ptr table `$94F5`)
Six trade categories; the string index **is** the code's goods id.

| id | category | goods |
|---|---|---|
| 0–4 | Spice | Pepper, Cinnamon, Nutmeg, Pimento, Cloves |
| 5–9 | Food | Olive Oil, Grapes, Sugar, Cheese, Grain |
| 10–15 | Metal/Gem | Gold, Silver, Quartz, Coral, Ivory, Pearl |
| 16–20 | Textile | Cotton, Raw Silk, Wool, Cloth, Silk |
| 21–25 | Manufactured | Firearms, Wood, Porcelain, Artwork, Carpet |

Per-port availability/price is **not** a flat table — it derives from the port economy record (`$67B2`:
economic/industrial worth + `price_pct`, ch.26) and the port's specialty (port record `f2/f3`, ch.5 TBD).

## SHIPS — 6 hull types (bank 22, `$112A`)
`Latin · Redonda · Bergantin · Nao · Carrack · Galleon` — the historical age-of-exploration progression
(lateen caravel → galleon). **Stats are formula-derived**, not tabular: the shipyard computes
Capacity/Cargo/Power/Handling/Durability/Arms/Crew from `hull_class × mast_count × sail_config × arms`
(seen in `shipyard_build_hull_masts`, `calc_ship_build_cost`). A built ship's live stats live in the
SRAM ship-stats record (`$6C90`, ch.26).

## ITEMS — treasure/trinket name space (bank 4)
Composed as **material + type** (e.g. "Golden Statue", "Dragon Sword", "Magic Ring") — the dig-site
treasures and diplomatic valuables.

- **12 materials** (`$1A33`): Lion, Dragon, Hydra, Ebony, Bronze, Crystal, Silver, Ruby, Magic, Royal, Golden, Emerald
- **13 types** (`$1A81`): Dagger, Charm, Crown, Goblet, Statue, Harp, Mirror, Ladle, Shield, Armor, Sword, Helmet, Ring
- → 12 × 13 = **156** possible trinkets. (Material likely encodes value tier; per-item worth is a TBD
  numeric table / formula — a follow-up like the ship stats.)

## PORTS — 70 (bank 58 `$0FD4`, ch.5)
Done earlier: X/Y world coords verified against real 16th-c. geography. `assets/ports.tsv`.

## Still open (numeric-value follow-ups)
- Goods **base prices** + per-port buy/sell modifiers (formula inputs)
- Item **value tiers** (material → worth)
- Port record `f2/f3` = region/culture/specialty decode
These need either the referenced numeric tables located or a Mesen SRAM dump as the second oracle.
