---
status: active
created: 2026-07-06
game: uw
---
# Ch.13 — More port subsystems: shipyard, tavern, gambling

> Same leaves-first + string-anchor method (ch.12) across three more port banks. The tavern turns out
> to be the game's **information hub** — the connective tissue that links trade, naval, and quests.

## Shipyard (bank 22) — buy-used + build-new

Two flows named from strings:

- **Buy used:** `shipyard_buy_used_select` ("Which ship will ye buy?") → `shipyard_buy_used_dialog`
  (" is a %s", "I'll sell this vessel for %d gold") → `shipyard_buy_confirm_name` ("Name yer ship").
- **Build new:** `shipyard_build_entry` ("Choose yer hull") → `shipyard_build_hull_masts`
  ("What kind of hull?" Teak/Beach/Oak/Mahogany, "How many masts?", 3-/4-point sails) →
  `shipyard_build_arms_crew` ("gun placements", "bunks for the crew") → `shipyard_build_confirm`.
- **Draw primitives (leaves):** `draw_stat_durability/handling/power/capacity/cargo/crew/arms` +
  `shipyard_draw_ship_stats` (the full panel) — these render the ch.5 ship-template fields.

The build flow is the runtime side of the ship-template record (ch.5): hull material + masts + sails
+ arms + crew → a custom ship. A natural cross-link to verify on the emulator.

## Tavern (bank 23) — the information hub (the interesting one)

Beyond recruiting mates (`tavern_recruit_greet`/`_stats`, `tavern_crew_roster`, `tavern_dismiss_crew`),
the tavern dispenses **rumors that reach into every other system**:

| sub | rumor type | links to |
|---|---|---|
| `tavern_rumor_trade` | "X will pay a fine price for…", "the marketplace in Y doesn't have…" | **trade / market** (where to sell) |
| `tavern_rumor_port_specialty` | "the specialty of this here port…" | **goods economy** (port produces) |
| `tavern_rumor_rival_loc` | "he's sailing for…, seeking out your ship!" | **naval / real-time** (rival positions) |
| `tavern_quest_hook`(`_b`) | "The King of Portugal / guild master is looking for you in <port>" | **storyline / quests** |

So the tavern is where the trade economy, the naval/RT layer, and the quest storyline surface to the
player as text. `tavern_stay_gather_info` ("stay a while and find out") gates it. This is a promising
thread: the rumor strings reference **port names + goods + rivals**, so tracing this bank ties the
ch.4/5 data (ports, goods, pirate/NPC names) to the systems that consume them.

## Gambling — two games

- **Bank 27 = poker** — `poker_bet_screen` ("Bet:%3d","Gold:%5d","Dlr","Continue") + the
  "Pair/3-of-a-kind/Straight/Flush/Full house" hand names from ch.4. Dealer table.
- **Bank 28 = blackjack** — `blackjack_bet_screen` ("Total gold:%5d","Bet: %d") + `blackjack_hit`
  ("Hit"). Hit/stand card game.

Both are self-contained minigames (the port's diversion) — good candidates to verify the RNG syscall
(id12 `rng_next`) and the card-eval `calc` natives on the emulator.

## Where the interesting paths lead

- **Tavern rumors → trade routing:** the "which port pays for what" intel is the *player-facing* view
  of the port×goods price model — walking `tavern_rumor_trade` should surface the same price/spec data
  the market uses, giving a second anchor on the (still-open) price formula.
- **Tavern quest hooks → storyline:** "looking for you in <port>" is the quest/event dispatcher — a
  thread into the multi-character story mode (the game's headline feature).
- **Shipyard build → ship record:** the build config writes the ch.5 ship-template fields; the
  emulator can confirm the field→stat mapping we left TBD.

## Open

- Walk `tavern_rumor_trade` / `tavern_quest_hook` deeper — they reference the port/goods/name tables;
  likely reveals the quest-event structure (storyline) and a 2nd view of the price model.
- Sailing (bank 29) — the real-time engine — remains the big unwalked subsystem.
- Verify gambling RNG + card-eval and shipyard build-writes on the emulator.
