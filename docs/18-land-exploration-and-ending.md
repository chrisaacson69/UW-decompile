---
status: active
created: 2026-07-06
game: uw
---
# Ch.18 — Land exploration + the ending (the last branch, and the true finale)

> The final unwalked branch (helm `Debark`, ch.15) — going ashore. And in walking it, the game's
> **ending cutscene** surfaced, which resolves the whole arc from the bank-2 intro (ch.16). This
> closes the reverse-engineering: **every code bank now has an identity.**

## Bank 15 — land exploration (Search) + ship repair + fleet orders

Reached via the helm `Debark` → go ashore. The core is the **Search** system:

- `search_water` — "We found a clear spring!", "not enough space to store the water": search land for
  **fresh water** to replenish provisions (ties to the sailing engine's water depletion, ch.15).
- `search_treasure` — **treasure hunting**: "Let me have a look at the treasure map", "Looks like the
  treasure's at %s", "I reckon it's further %s", "Captain <name> found the <treasure>", "This doesn't
  seem to be the spot, Cap'n". This is the payoff of the **map clues** from the quest/tavern system
  (ch.13/14) — sail to the hinted area, go ashore, dig at the spot, recover a legendary item (ch.14
  item table).

Bank 15 also carries **ship repair** (`repair_choose`/`repair_finish` — mend Hull/Mast/Rudder with
lumber) and **fleet standby orders** (`fleet_order_sail`/`fleet_order_wait`). So "ashore" activity =
resupply water + hunt treasure + repair, the survival/exploration loop that complements trading.

## Bank 38 — the ENDING cutscene (the story finale)

Walking here surfaced the game's conclusion — the reward ceremony after the Christiana rescue (ch.17):

> "Sir <name>, my thanks for saving Christiana! … You are truly the bravest of them all. … I shall
> award you as you please. **Land / Princess / Honor / Refuse**."

- **Land / Honor** → "you shall be known as **Lord of Alcobaça**" — restores the ancestral land/title
  the intro said the family lost (ch.16: "Diary of Lord Alcobaça").
- **Princess** → "Will you marry Christiana and be my successor? … Father, please! I can marry no one
  but <name>! … Then it's settled. … **As of this day you are King of Portugal!**"
- **Epilogue** → "King <name> went on to lead Portugal into a new age of prosperity. And those sailors
  with ambitions still aglow embarked for the high seas."

The full arc closes: fallen noble (intro) → trade, explore, quest, **rescue Christiana in naval combat**
(ch.17) → marry her and become King, restoring the family name (ending). (Linear cutscene text; not
individually sub-labeled — documented here.)

## Reverse-engineering complete — the whole map

Every code bank now has an identity. The 512K cart, top to bottom:

```
 ENGINE   62/63 native floor + ALU · 63 OS bytecode · 62 lib · 1 UI lib · VM · syscalls   [ch.0-2,6-9]
 DATA     58 ports/ships/items/names · 20 goods · 4 item-names · 60 world-map · 32-56 tables [ch.4-5]
 ENTRY    2 title + char-create + intro story                                              [ch.16]
 OVERWORLD (RT)  16 helm · 8 sailing engine · 29 voyage prep · 18 hostile-port encounters   [ch.15-16]
 PORTS    20 market · 22 shipyard · 23 tavern · 25 court · 24 quests · 26 crew · 27/28 gamble · 21 ship [ch.12-14]
 FLEET    30 overview · 17 crew/cargo/rations · 15 land/search/repair                       [ch.17-18]
 COMBAT (RT)  12 command · 14 dialogue/story (Christiana rescue)                            [ch.17]
 STORY    24/25 quest+court · 14/38 climax+ending · items/titles/rank                       [ch.14,17,18]
```

## What remains (dynamic only)

The static reverse-engineering is **done** — engine, data, and all subsystems mapped and named
(578 labels). What's left is purely *dynamic*, and all emulator work:

- Confirm the RT state fields (`$7298-$729B` sailing/combat) and the quest-state machine (`$7050`) by
  watching them tick on the headless emulator (ch.11).
- Resolve the native `calc` formulas (price, hit/damage, movement) by executing them on real inputs.
- Seed a save state to trace the steady-state overworld↔port↔combat loop end to end.

From the iNES header (ch.0) to King of Portugal (ch.18) — the grand finale, charted. 🏴‍☠️👑
