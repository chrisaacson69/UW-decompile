---
status: active
created: 2026-07-06
game: uw
---
# Ch.4 — Initial data-walk: strings as anchors (ports, goods, the subsystem map)

> Pivot into game code. KOEI stores UI text as plain NUL-terminated ASCII, so a string sweep gives
> **concrete anchors** that turn the code walk from generic guessing into named subsystems — and, as
> a bonus, the string **pointer tables resolve window bases**. This is the "less generic, less
> guessing" pass before returning to the native/bytecode walks.

## Tooling note

`koei-nes/tools/dump_data.py` assumes 16K banks (`bank*0x4000`) → wrong for UW's 512K/8K cart.
`tools/dump_strings.py` is the 8K-aware sweep (`bank*0x2000`) used here.

## The subsystem map — every string-bearing bank now has an identity

Distinctive strings (esp. `%`-format strings, which name the code that prints them) label each bank:

| bank | kind | subsystem (from its strings) |
|---|---|---|
| 2 | bytecode | title / new-game / char stats ("New Adventure", "Charisma", "Wisdom") |
| 4 | **native** | item/ship quality tiers ("Dragon, Bronze, Crystal, Silver, Golden, Emerald") |
| 20 | bytecode | **MARKET** — buy/sell goods (26 goods + haggling text + `Total gold: %5d`) |
| 21 | bytecode | ship stats display (`Durability/Handling/Power/Cargo load: %3d/%3d`) |
| 22 | bytecode | shipyard ("Buy used ship", "Build new ship", "no man to navigate") |
| 23 | bytecode | tavern ("Find mates", "Gossip", "Gamble", "Hi there") |
| 24 | bytecode | NPC / quest dialogue ("Someone's looking for you", "King of Portugal") |
| 25 | bytecode | royal audience + bank ("Meet King", "Meet Sultan", "Savings", "Request") |
| 26 | bytecode | crew & royal mgmt ("We don't need any more crew", "His Majesty") |
| 27 | bytecode | gambling — poker ("Pair", "3 of a kind", "Straight", "Flush", "Full house") |
| 28 | bytecode | gambling dialogue ("let's gamble", "ye've played before?") |
| 29 | bytecode | **SAILING / voyage prep** ("want to sail", "not well prepared", "Preparations") |
| 30 | bytecode | fleet/ship mgmt ("Ship:", "Condition", "Navigator", stats) |
| 57 | data | player ship ("Hermes") + "Leon Franco" (protagonist) + binary tables |
| 58 | data | **names**: NPCs/rivals, pirate captains, ~56 world ports (below) |

Bank **29 = sailing** is the real-time subsystem flagged back in ch.1.

## The trade core (bank 20)

**26 goods** (string index = the code's goods id), in 6 categories:

`Spice`: Pepper, Cinnamon, Nutmeg, Pimento, Cloves · `Food`: Olive Oil, Grapes, Sugar, Cheese,
Grain · `Metal`: Gold, Silver, Quartz · `Gem`: Coral, Ivory, Pearl · `Textile`: Cotton, Raw Silk,
Wool, Cloth, Silk · `Misc`: Firearms, Wood, Porcelain, Artwork, Carpet.

Pointer table at **CPU $94F5** = 26 consecutive 16-bit LE pointers to the goods strings
(`$9529` Pepper … `$95D8` Carpet). This is the anchor: any code indexing `$94F5,x` is the
goods-name renderer.

## The world (bank 58) — ~56 ports, spanning the globe

Lisbon, Seville, Istanbul, Genoa, Venice, Pisa, Marseille, Valencia, Algiers, Majorca, Tunis,
Naples, Alexandria, Trebizond, Azov, London, Bordeaux, Oslo, Hamburg, Antwerp, Santo Domingo,
Jamaica, Guatemala, Panama, Veracruz, Caracas, Pernambuco, Argin, San Jorge, Sofala, Mozambique,
Mombasa, Muscat, Baghdad, Aden, Mecca, Hormuz, Goa, Diu, Malacca, Ceylon, Sumatra, Java, Amboina,
Ternate, Calicut, Cochin, Nagasaki, Macao, Zeiton, Nova Granada, Rio de Janeiro, Da Nang, Guam,
Kailua, Eureka. (Europe → Africa → Americas → Middle East → India → SE Asia → East Asia → Pacific.)

Also in bank 58: **NPC names** (Carlotta, Maria, Oharu, Mei Ling, Fernando, Muhammed, Ali, …) and
named **rivals/pirates** — Singleton, El Drago (Drake), Morgan — plus generic pirate captains
(Skullface, Pegleg Lou, Salty Sam, Billy Bones…).

## Bonus: string pointer tables resolve window bases

The goods pointer table at `$94F5` points to `$95xx` — i.e. base **$8000**. So **bank 20 is an
$8000-window bank**, not the `$A000` default I'd assumed for its filler-header. String tables thus
double as **window-base oracles**, closing the ch.2 window-map open item bank by bank as the
data-walk proceeds. (games.toml `banks_at_8000` updated for bank 20.)

## Why this helps the native walk

Each native bank's identity now comes for free from the bytecode subsystem that calls it and the
strings it references: bank 20's callees are market handlers, bank 29's are sailing, bank 4's native
subs render the quality tiers, etc. Returning to name the 219 paged native subs (ch.3) is now
grounded, not guesswork.

## Open

- Extract the **records** the strings label: goods buy/sell prices per port, port coordinates/region,
  ship-type stats, NPC stats — the numeric tables in banks 32–56 (the header sniff showed structured
  byte/word tables). Wire each via its pointer table + the code that indexes it.
- Resolve remaining window bases from each bytecode bank's string pointer tables.
- Then: back to naming native subs (ch.3), then the bytecode walks.
