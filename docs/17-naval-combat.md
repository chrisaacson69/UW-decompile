---
status: active
created: 2026-07-06
game: uw
---
# Ch.17 — Naval combat (RT) + fleet management — and the story climax

> The last gameplay branch (helm `Battle`, ch.15). Like sailing, it's a multi-bank real-time subsystem
> — command + engine/dialogue — and it turns out to *contain the main story climax*: rescuing Princess
> Christiana is a naval battle, closing the arc set up in the bank-2 intro (ch.16).

## Naval combat — two banks (command + dialogue)

**Bank 12 — the combat command interface** (the battle helm, parallel to the sailing helm bank 16):

- `combat_fire` ("Fire on which ship?") — cannon attack
- `combat_board` ("Board which ship?") — boarding attack
- `combat_view_vessel` ("View which vessel?") — inspect a target
- `combat_draw_ship_stats` — the battle panel: Crew, **Arms (%d guns)**, **Mobility**, **Durability**,
  **Tacking power**, **Battle level** (+ flagship marker). These are the combat-relevant ship stats.

> **Combat is hard-capped at 5 ships per side.** `combat_grid_index` (`$83F7`) =
> `(idx<5?0:5)+(idx%5)` partitions the ship array `$6C90` into two fleets of five: slots **0–4 = your
> line, 5–9 = enemy** (enemy base `$6C90+35 = $6CB3`). You can never bring more than 5 ships to a
> battle — flagship + up to 4 mate-captained ships. The enemy (≤5) is loaded from the rival
> `npc_record` (`$6004`) at battle start. This means the **finale needs ≤5 warships, not a maxed
> 10-ship fleet** — see the [progression/optimization analysis, ch.29](29-progression-and-fame.md).

**Bank 14 — combat dialogue, story events, and outcomes** (the text/event half; strings driven by
event code):

- **Enemy taunts by faction** — pirates ("You pirate! … give in without a fight?"), and nation ships
  (Portugal / Spain / Turk / the Sultan / King / the Empire "will hear about this!").
- **Outcomes** — victory ("the enemy's flagship roared into flames"), retreat ("the sun's setting, we
  can't go on fighting", "Let's pull out"), losses ("the head count doesn't tally"), and **spoils**
  ("Here are our spoils — Gold: %d, Treasure:") + growth ("your battle skill has improved!").
- **THE STORY CLIMAX** — "So you're the rat who kidnapped **Christiana**! Prepare to fight!" →
  "Please save me! / Hold on, I'll rescue you!" → "Where's the princess? / Don't worry, she's safe
  now" → "We're thankful for your safe return, **Princess Christiana**!". The Princess rescue is a
  **naval battle**. This closes the loop from the intro (ch.16: Christiana to be married off; Leon's
  quest) to the finale.

## Bank 17 — fleet / crew / cargo management

Reached from the helm's fleet/Order menu (Fleet / Cargo / Land / Mates / Items / Rations):

- `fleet_set_rations` ("Set rations to what (1-99)?") — provisioning the crew
- `fleet_give_gold_loyalty` ("Give how much", "Loyalty:%4d") — pay crew to raise **loyalty**
- `fleet_replace_mate` / `fleet_replace_navigator` — assign crew roles (navigator, sailors)
- `fleet_view_cargo` / `fleet_view_items` — inspect a ship's hold
- `fleet_dispose_vessel` ("Dispose of which vessel?") — scrap a ship

Loyalty + rations gate crew morale (tie-in to the sailing engine's provision depletion, ch.15). This
complements bank 30 (higher-level fleet overview) with the detailed crew/cargo admin.

## The complete gameplay map

With combat named, the overworld helm's branches are all walked:

```
 HELM (16) ─ Move/dock ─► port subsystems (market/shipyard/tavern/gambling/court/quest)   [ch.12-14]
           ─ Battle ─────► NAVAL COMBAT: command(12) + dialogue/story(14)  ← Christiana rescue [ch.17]
           ─ Debark ─────► land exploration                                        [open]
           ─ Order/fleet ► FLEET mgmt (17): rations/loyalty/crew/cargo             [ch.17]
           ─ (sail) ─────► ENGINE (8): movement + at-sea events                    [ch.15]
```

The RT combat, like sailing, is a per-frame loop (native math for hit/damage/movement; no
`read_controller` syscall — the polled pattern) with data-driven event dialogue (bank 14). The two RT
subsystems (sailing, combat) share that architecture, distinct from the draw-then-wait menus.

## Where this leaves the project

**Every gameplay branch is now mapped and named**: economy, port services, story/quest, gambling,
fleet, the real-time overworld (sailing), and real-time naval combat — plus the character creation and
intro that frame it and the story climax that resolves it. Only **land exploration** (helm `Debark`)
remains unwalked, and the *dynamic* confirmations (RT state fields, quest machine) are emulator tasks.

## Open

- Land exploration (helm `Debark`) — the on-foot/treasure-dig branch — the last unwalked piece.
- Emulator: confirm combat RT state + the hit/damage native math on real inputs.
- The bank-14 combat-event trigger table (which taunt/outcome fires when) — the event dispatch.
