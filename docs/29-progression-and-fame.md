---
status: active
created: 2026-07-13
game: uw
---
# Ch.29 — The progression loop: fame, rank, mates, and the combat cap

How the mid/late game actually gates itself — read from the labeled code, cross-checked against a
recorded speedrun. This chapter corrects two of my own earlier mislabels and settles the
"what does the run really require?" question. See also [ch.17](17-naval-combat.md) (combat),
[ch.28](28-port-economy.md) (economy), [ch.14](14-quest-story-spine.md) (princess story).

## Two stats, not one: FAME vs RANK

I had originally labeled `$6F72` as "port investment." That was wrong — it's **fame**, and investment
is only one of its many sources. The tell: `bank30` **displays it on the status panel next to gold**
(`draw_field($6F72, $666B)`), and seven different banks write it.

| var | name | range | raised by | role |
|---|---|---|---|---|
| `$6F72` | **fame** | 0–50000 (`$C350`) | discovery ("Land ho", bank08), trading (bank20), port investment scaled by rank (bank19), outfitting/events (bank21/24), **winning combat** (bank14 `+~600`) | **gates the King's audience** — the court (bank25) reads it at every quest stage |
| `$6F74` | **rank_fame** | 0–9 | **court-quest completion ONLY** (bank25, +1/quest) | the *reward*: ship-bargain discount + scaling court cash + recruit multiplier + title |

Fame gain per event ≈ `rng(100) + (ship crew + durability)/2`, so a bigger fleet even earns fame
faster. **Fame gates quests; rank is what quests pay out.** They are not the same axis — an earlier
analysis conflated them.

The rank ladder (pointer table bank58 `$1C56`, indexed by `$6F74`): 0=*(commoner)*, 1 Page, 2 Squire,
3 Knight, 4 Baronet, 5 Baron, 6 Viscount, **7 Count**, 8 Marquis, 9 Duke. (The WR's last rank goal is
Count = 7.)

## Mates: the fleet-width gate

Each ship in your fleet needs a **mate** to captain it — the shipyard refuses a buy/build with
"there is no man to navigate" when none is idle. The active roster is `$6A9A` (**max 10**,
255-terminated), each slot indexing an officer record at `$6542`.

Recruiting (`event_recruit_sailor`, **bank24** `$8FEB` — note: *not* bank23, which is why an early
search for a rank gate there came up empty):

1. **Availability** — the sailor must be **at your current port** (`$6A6F`), flagged available
   (`$6548` bit0 set, bit1 clear), and the roster not full.
2. **Search success** — whether a sailor even appears is gated by port wealth:
   `rng(1000) ≤ port_economic_worth + 300` (richer ports turn one up more often).
3. **Join roll** (`bank24:1049`):
   ```
   sailor_worth = sailor_best_stat × (sailor_stat2 + sailor_stat3)
   player_worth = player_stat[sailor's_best_idx] × (player_stat2 + player_stat3) × (1 + rank/10)
   JOINS  if  sailor_worth ≤ rng(0..19) + player_worth
   ```

**Key consequence:** rank enters only as a `1.0–1.9×` multiplier. **High starting stats substitute for
rank** — which is exactly why a WR spends real time rolling 80s at character creation. You can recruit
the mates you need at *low* rank if your stats are high. The `rng(0..19)` noise term means a borderline
refusal is re-rollable (ties to the frame-churned RNG, [ch.31 RNG](#) TBD).

## The combat cap: 5 ships per side

`combat_grid_index` (`$83F7`) = `(idx<5?0:5) + (idx%5)` — it partitions the combat ship array `$6C90`
into **two fleets of five**: slots **0–4 = your battle line, 5–9 = the enemy** (enemy base
`$6C90+35 = $6CB3`). This is a hard structural limit:

- **You can never field more than 5 ships in any battle**, including the princess finale. "10 maxed
  galleons" is *impossible* — there is no slot for a sixth.
- Your flagship is one of the five, so a full line is **you + 4 mates = 5 ships**.
- The enemy fleet (≤5) is loaded from the rival `npc_record` (`$6004`, stride 51) at battle start; the
  kidnapper's exact ships are runtime-generated (read them live from `$6CB3+` during the finale).

## The princess finale is NOT gated by fame or rank

`bank14`/`bank18` (the story spine) never gate on `$6F72` or `$6F74` — the only rank reference is a
cosmetic title draw, and the only fame reference *grants* fame for a combat win. The ending bank (38)
has zero rank checks. Christiana's rescue is a standard naval battle at `quest_target_port` (`$7052`),
revealed through tavern info, with no nobility prerequisite.

## What the run actually requires (the optimization)

Chaining the gates bottom-up, the requirement collapses to a small constant:

```
combat fields ≤ 5 ships  →  need ≤ 4 mates  →  recruitable at LOW rank with high stats
                                                (princess itself has no fame/rank gate)
```

Therefore the deep rank climb and the heavy port-investment fame-farming a typical run performs are
**over-investment**: nothing downstream of the finale needs them. The minimal route:

> roll high stats → trade to fund **5 galleons** (fame accrues passively from the runs) → recruit
> **~4 mates on stats alone** at low rank → outfit the 5 to whatever the finale demands → rescue.

Crucially, the enemy fleet's strength — the one number still unmeasured — **does not change the
mate/rank math**. Fleet size is capped at 5 either way; enemy strength only sets how much *gold* goes
into outfitting those 5 hulls (guns/durability), an independent axis. So the "how much rank / how many
mates" question is answered *without* knowing the kidnapper's fleet: ≤5 ships, ~4 mates, low rank.

**Open:** the kidnapper's exact 5-ship stats (needs a live combat Work-RAM dump at `$6CB3+`) → sets the
minimum galleon build. And the per-good buy-chunk reroll tech (does each buy re-roll `calc_good_price`?).
