---
status: active
created: 2026-07-06
game: uw
---
# Ch.14 — The quest / story spine (the roleplaying half)

> Finishing the static story code before the interactive engine. The tavern (ch.13) pointed here: the
> quest/story system is **bank 24** (event/quest dialogue dispatcher) + **bank 25** (royal court), over
> an **item/treasure data table** and the player-character record. This is the RPG + story-mode heart.

## Bank 24 — the event / quest dialogue dispatcher ($8000)

A broad router over event types, all named from their strings (`[prg.bank24]`):

| category | subs | examples |
|---|---|---|
| quest hooks | `event_hook_generic/_multi`, `event_royal_summons`, `event_guild_hook`, `event_trader_hook` | "Someone's looking for you in <port>", "King of Portugal wants to see you" |
| **exploration** | `event_map_clue` | "Looking for points on this map?", "in search of the %s?" (treasure hints) |
| **trade intel** | `event_trade_intel` | "I hear they sell it in %s" (where to buy/sell) |
| **main story** | `event_story_princess` | "Something serious at the palace", "save the princess?" |
| **romance / fetch** | `event_fetch_gift`, `event_waitress` | "bring me back a little gift from <port>", "the waitress would appreciate 10 gold" |
| recruiting | `event_recruit_crew/_sailor`, quest objectives/urgency/reward | "How'd you like to join", "deposit your reward at the palace" |

The dialogue fills `%s` slots from the data tables (ports, goods, NPC names — ch.4/5) and the item
table (below), so this bank is where **trade, exploration, and story all surface to the player as
text**. It reads the player-character record `$7050-$705F` (the hottest RAM cluster, ch.6) — the
current-character/quest state.

## Bank 25 — the royal court ($A000)

The court / progression side (`[prg.bank25]`):

- **Quest turn-in + rank:** `court_turnin_legendary` ("Ah, the legendary <item>! … Bestow a new
  title"), `court_reward_service` ("I hereby award you a new title"), `court_eval_quest`
  ("this isn't enough! Will you go").
- **Diplomacy:** `court_deliver_letter` ("I bring a letter from the King" — inter-kingdom letters).
- **Story milestones:** `court_story_peace` ("At last there will be peace").
- **Economy:** `court_port_support` ("Support | Port Index" — port investment), `royal_bank_*` (deposit
  gold with the crown).

So progression = do quests → turn in legendary items at court → gain **titles/rank** → unlock more.

## The item / treasure data

- **Bank 58 item table** — 31 records, stride 17 = `[value/rarity byte][16-byte name]`
  (`assets/items.tsv`): navigation instruments (Telescope 4, Sextant 3, Speculum), amulets (Nymph/Sun/
  Angel/Shining), weapons (Dagger→Chinese Sword), icons (Falcon→Dragon), treasures (Sapphire, Ruby,
  Emerald, Crown 50, Jewelled Ladle 58…). The value byte tracks rarity/worth. These are the
  "legendary %s" the court quests ask for.
- **Bank 4 — procedural valuable names** — an adjective × noun generator (Ebony/Bronze/Magic/Royal/
  Golden × Dagger/Crown/Goblet/Statue/Sword/Ring…) for generated reward treasures, plus the ship/item
  quality tiers (Dragon/Bronze/Crystal/Silver/Golden).

## How the spine fits together

```
 tavern (23) / event dispatcher (24)  --hooks-->  "someone/King is looking for you in <port>"
        │  reads: ports, goods, NPC names, ITEM table (bank 58/4)
        ▼
 player sails to <port>, finds NPC / legendary item  (exploration + trade + naval)
        ▼
 royal court (25)  --turn-in-->  title/rank up, reward, next story beat ("save the princess", "peace")
        │  state in $7050-$705F (current character / quest progress)
```

The multi-character story mode rides on this: each character's arc is a sequence of these events
(hook → objective → turn-in → title), scripted by the quest state in `$7050` and the data tables.

## Static story code — done

Named: banks 24 (event dialogue) + 25 (royal court). Mapped: the item/treasure table (bank 58, 31
items) + procedural names (bank 4). This completes the **static** story/quest layer — dialogue,
rewards, items, and the progression loop. What remains is *dynamic*: the exact quest-trigger/state
machine in `$7050` (best read on the emulator, watching a quest advance) — a dynamic task, and the
interactive **sailing/exploration engine** (bank 29), the last big subsystem.

## Open

- The quest-state machine in `$7050-$705F` — decode the fields via the emulator (watch a quest tick).
- The item `value` byte's exact role (price vs rarity vs quest-key) — cross-check on the emulator.
- Sailing / real-time engine (bank 29) — the interactive finale.
