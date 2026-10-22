---
status: active
created: 2026-07-06
game: uw
---
# Ch.5 — Records: the port table (the world map, extracted from the ROM)

> The data-walk's first record schema. Records sit adjacent to their name tables (ch.4), as
> fixed-stride arrays indexed parallel to the name list. The **port table** decodes cleanly and its
> coordinate fields are **verified against real-world geography** — this is the literal map of the
> game world, read out of the cartridge.

## PORT record — bank 58, `$0FD8`, stride 19  (CORRECTED — see below)

```
struct Port {          // 19 bytes, 70 records; NAME FIRST, meta AFTER
  char name[15];       // +0  NUL-padded ASCII port name
  u8   x;              // +15 world-map X  (west->east, 1..64)
  u8   y;              // +16 world-map Y  (north->south, 4..31)
  u8   field2;         // +17 region / culture / specialty (0..12) -- TBD via reader code
  u8   field3;         // +18 region / nation / goods-seed (0..12) -- TBD
};
```

70 ports, starting at bank-58 offset `$0FD8` — the address the CODE uses (`$AFD8` in
`find_port_by_key`). Record 0 = **Lisbon** = (X 32, Y 8), clean. Full table:
[`assets/ports.tsv`](../assets/ports.tsv). Reproduce: `py -3 tools/dump_records.py ports --tsv`.

## The correction (off-by-one-record) — a grounding lesson

The original draft read this table as `[meta 4][name 15]` starting 4 bytes early at `$0FD4`. That kept
the NAMES clean (they still landed on real strings) but gave **every port the *next* port's coords** —
an off-by-one-record shift. It survived the "verified vs geography" check below because cluster-
neighbours share coordinates, so the shift is invisible *inside* a cluster (Mediterranean still looked
like a Mediterranean blob). It broke only on **isolated** ports: Da Nang read X=22 (should be ~55,
Vietnam is far-east), Acapulco X=41 (should be ~12, Mexico is far-west). Those outliers are what
exposed it.

**The fix came from the code, not geography.** `find_port_by_key` loads the table pointer `$AFD8` =
bank-58 offset `$0FD8` — which is where "Lisbon" (the *name*) begins. So name is at record offset 0 and
the 4 meta bytes follow. Real geography was a *weak* second oracle here (a 64×28 stylised grid that
"mostly fits" many placements); the byte-exact address the interpreter reads is the *strong* one.
Lesson: "mostly fits real-world data" is not verification — drop to the address the code actually uses.

## Verification after the fix — geography now lines up cleanly

| check | reads |
|---|---|
| Lisbon (32,8) N of Seville (32,10); Nagasaki (59) E of Macao (56) | ✓ fine ordering now correct |
| Da Nang X=55 (Vietnam, far-E), Acapulco X=12 (Mexico, far-W), Kailua X=1 (Hawaii, Pacific wrap) | ✓ isolated ports fixed |
| Americas cluster X<25, Europe/Africa X=32–41, Asia/Pacific X=45–64; south = high Y (Cape Town 27) | ✓ |

An ASCII render of (X,Y) reproduces a recognizable world map (Europe north-centre, Caribbean far
west, E.Asia far east, S.Africa/SE-Asia south). Both oracles agree → **X/Y confirmed**.

`field2`/`field3` (both 0–12) are *not* constant within a region, so they aren't a plain region id —
likely a per-port attribute (culture, ruling nation, or specialty good / supply seed). Resolving them
needs the **reader code** (the sub that indexes the port record) — a concrete task now that we know
the stride and can breakpoint the fields. Deferred, honestly flagged.

## SHIP template record — bank 58, `$0481`, stride 21

```
struct ShipTemplate {  // 21 bytes; ~7 entries (2 sail types + ship hulls)
  char name[15];       // Latin, Redonda, Bergantin, Nao, Carrack, Galleon, ...
  u8  b0;              // rises 25->60->90->160  (cargo capacity?)
  u8  b1;              // 0
  u8  b2;              // rises 20->30->40->50   (crew tier?)
  u16 durability;      // b3|b4<<8: 105,310,420,490 monotonic -> a word stat (durability/hull)
  u8  b5;              // 1,17,33,85,117,153 -> type id / table offset
};
```

Latin & Redonda (the two **sail** types) share base stats `[20,0,10,70]`; the hulls (Bergantin→
Galleon) climb monotonically. The player's start ship **Hermes** is a live instance at `$0418`
(`14 00 0a 46 …`) followed by empty ("null") fleet slots. Field→stat-name mapping (the shipyard
prints Crew/Capacity/Cargo/Power/Handling/Durability/Arms) needs the bank-22 reader; `assets/ships.tsv`.

## The data floor — where the game's data lives (map)

| data | bank | addr | structure | status |
|---|---|---|---|---|
| **Ports** | 58 | `$0FD4` | 70 × 19: X,Y,f2,f3,name | X/Y **verified**; f2/f3 TBD |
| **Ship templates** | 58 | `$0481` | ~7 × 21: name + stats | stats found; field names TBD |
| Player fleet (Hermes) | 58 | `$0418` | live ship instances | located |
| Character names | 58 | `$0036`, `$0800` | NUL-list + ptr tables (base **$A000**) | located |
| Pirate names | 58 | `$0F01` | NUL-list | located |
| Goods (26) | 20 | `$9529` | names + ptr table `$94F5` | names done; price/cat TBD |
| Ship UI (types/sails/hulls) | 22 | `$B12A`,`$B4AD` | name lists | done (ch.4/5) |
| World map tiles | 39–41,59–61 | — | tile/nametable graphics | identified (ch.4) |

The character-name pointer tables use base **$A000** → bank 58 is read in the `$A000` window
(another window-map fact from the data, cf. ch.4's bank-20→$8000).

## Method that generalizes

Name table (ch.4 string-walk) → adjacent fixed-stride record array → confirm stride from name spacing
→ decode fields against a second oracle. Proven on ports (geography) and ships (monotonic stats).

## Open (the "mine later" queue)

- **Field meanings** via reader code: port `f2`/`f3`; ship stat→name mapping; goods base-price/category.
- **Per-port price model** — the trade economy (global base × per-port supply/demand, or a matrix).
- **NPC stat records** (charisma/wisdom etc., paralleling the bank-58 name lists).
- Then: back to naming the native subs (ch.3), now with port/goods/ship ids as anchors; then bytecode.

- `field2`/`field3` of the port record — resolve via the reader sub (breakpoint / trace the indexer).
- Goods base-price + category table (the per-port price model — supply/demand vs global base).
- Ship-type and NPC stat records.
- Then: back to naming the native subs (ch.3), now with port/goods ids as anchors; then bytecode.
