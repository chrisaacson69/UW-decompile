---
status: active
created: 2026-07-06
game: uw
---
# Ch.15 — The real-time sailing system (the finale, the "different way of doing things")

> The interactive engine we deferred to last. It is genuinely **different** from the menu subsystems —
> not draw-then-wait, but a per-frame simulation loop with native movement math and **data-driven event
> dispatch**. And it is *not one bank*: the sailing system is a **three-bank split** (helm + engine +
> prep), which is why the ch.4 one-bank "29 = sailing" label was too coarse.

## The three banks (corrected map)

| bank | role | kind |
|---|---|---|
| **16** | **HELM** — the at-sea command interface | bytecode |
| **8** | **ENGINE** — per-frame movement + at-sea events | native + bytecode (mixed) |
| **29** | **voyage PREP** — load provisions before departing | bytecode (menu) |

(ch.4 guessed 29 = sailing from its "want to sail" strings; it's actually the *pre-sail* provisioning
menu. The real-time loop is banks 16 + 8.)

## Bank 16 — the helm (what the player drives)

The at-sea command menu **Move / Look / Battle / Debark / Info / Order**, with **8-direction compass
steering** (north … northwest, "Set the compass bearing"). Command handlers named (`[prg.bank16]`):

- `helm_set_sail` ("All hands aloft! Set to the %s") / `helm_anchor` ("Heave to! Anchor down!") — steer/stop
- `helm_call_at_port` ("OK to call at <port>") — **Move → dock** (enters the port-menu subsystems)
- `helm_debark` ("Select a landing point", "OK to go ashore") — **land exploration**
- `helm_look` / `helm_look_fleets` — spot ports and other fleets
- `helm_hail_fleet` ("best sold in…", "Good luck") — **Order/hail** other ships (trade intel at sea)
- `helm_attack_fleet` ("no fleet to attack") — **Battle → naval combat**
- `helm_sailing_skill_up` ("your sailing skill has improved")

So the helm is the **overworld hub**: it steers the ship and branches to docking (→ market/tavern/…),
land exploration, and naval combat.

## Bank 8 — the engine (the simulation)

**Native (15 subs) = the per-frame movement math**, driving the ship-state cluster **`$7298–$729B`**
(position / heading / speed — labeled `ship_sail_state`; exact field map is an emulator task) plus
`$707F`. **Bytecode (11 subs) + an event-string block = the at-sea events**, triggered *by condition
in native code*, not by a menu — the **data-driven dispatch** predicted at the very start:

- Weather/hazard: **storm** ("Take to the helm! … lost control of the rudder!"), **seaweed** ("caught
  up in seaweed!"), the **vanishing-ships** mystery ("ships vanishing in these waters")
- Navigation: **`sail_event_land_ho`** ("Land ho! There's a port in sight!")
- Survival: **`sail_event_out_of_provisions`** ("run out of food/water!" — consumes the bank-29 stores)

## Why this is the "different way"

The menu subsystems are **draw → wait for input → dispatch**. The sailing engine is a **loop**:
per-frame, read the pad (from the NMI-filled RAM — note **zero `read_controller` syscalls anywhere**,
the tell of a polled real-time loop), advance the ship via native math (`$7298–$729B` from heading +
wind + speed), check event conditions, and trigger events by data. It leans on the **native ALU**
(ch.6, MMC5 multiply) for the movement/distance math and the **world-map tile data** (bank 60) for
collision/land detection. This is the architecture the whole project was building toward understanding.

## The overworld ties everything together

```
 voyage PREP (29): load water/food/lumber ─┐
 HELM (16): steer by compass ──────────────┤
   ├─ Move/dock → port menu → market/tavern/shipyard/… (ch.12-14)
   ├─ Debark    → land exploration (treasure/map clues, ch.14)
   ├─ Battle    → naval combat (its own subsystem)
   └─ Order     → hail fleets (trade intel)
 ENGINE (8): per-frame movement + at-sea events (storm/land-ho/provisions) ← ship state $7298-$729B
```

## Static map: complete

With the sailing system named, **every code bank now has an identity** and the whole static game is
mapped — engine, native floor/ALU, syscalls, records, shared libs, and all 29 subsystems (economy,
port services, story/quest, gambling, fleet, and the real-time overworld). What remains is *dynamic*:
confirm the RT state fields (`$7298–$729B`) and the quest-state machine (`$7050`) by watching them on
the emulator, and the one unwalked branch — **naval combat** (reached via helm `Battle`).

## Open

- Emulator: watch `$7298–$729B` while the ship moves → decode position/heading/speed fields exactly.
- Naval combat subsystem (helm `Battle` target) — the last gameplay branch.
- Land exploration (helm `Debark`) — the treasure-hunt/map side of the story clues (ch.14).
