---
status: active
created: 2026-07-06
game: uw
---
# Ch.16 — Tying it together: character creation + the main game loop

> The capstone. Every bank now has an identity; this chapter threads them into the whole-game flow —
> boot → title → character creation → the overworld loop that dispatches to all 29 subsystems → the
> story climax. It closes the arc that started at the iNES header (ch.0).

## Bank 2 — the entry controller (title + character creation + intro story)

`call_banked_routine` hands the boot off to bank 2 (ch.11). It holds three things:

- **`title_menu` (`$8121`)** — "New Adventure" / "Saved Game" / "Which one?".
- **`char_create` (`$81BD`)** — CHARACTER CREATION: the **5 stats** *Charisma / Wisdom / Intel /
  Courage / Strength*, **bonus-point allocation** ("Please assign bonus points"), **hero name**
  ("Enter name of hero", default **Leon Franco**), and **flagship name**. (Stats/labels in the
  `[prg.bank2]` data block.)
- **The intro story** — the opening cutscene text: Prince Henry the Navigator, the fallen noble
  family (the "Diary of Lord Alcobaça"), **Princess Christiana**, the father lost to a storm, "Never
  give up your dreams!" — Leon's premise: restore the family name and win the Princess by seeking
  adventure in Uncharted Waters.

So the RPG premise, the player character, and the starting fleet are all established here.

## The whole-game flow (the tie-together)

```
 RESET → os_main $E003 (init: SRAM, banking, CHR/palette)          [ch.7,11]
   └─ call_banked_routine → BANK 2 (entry)                          [ch.11,16]
        ├─ title_menu:  New Adventure ──► intro story ──► char_create (5 stats, name, flagship)
        └─ Saved Game ──► load
   ▼
 THE OVERWORLD LOOP  — helm (bank 16) steers; engine (bank 8) simulates   [ch.15]
   │  per-frame: read pad (NMI-polled) → native movement ($7298-$729B) → at-sea events
   │
   ├─ Move/dock  ─► PORT (call_banked_routine to a port bank):
   │     market(20) · shipyard(22) · tavern(23) · gambling(27 poker/28 blackjack)
   │     royal court(25) · quest dialogue(24) · fleet(30) · ship-stats(21)      [ch.12-14]
   ├─ Debark     ─► land exploration (treasure/map clues)                        [ch.14 open]
   ├─ Battle     ─► naval combat                                                 [open]
   ├─ Order/hail ─► talk to fleets (trade intel)                                 [ch.15]
   └─ encounters ─► hostile-port events: arrest / bribery / confiscation (bank 18) [ch.16]
   ▼
 PROGRESSION — quests (tavern/court) → find legendary items → turn in at court →
   titles/rank → story beats ("save the princess", "at last there will be peace")   [ch.14]
```

Everything routes through two hubs: **bank 2** sets the game up once, then the **helm (bank 16)** is
the steady-state hub — the overworld is the main loop, and `call_banked_routine` switches in each
port/combat subsystem on demand, returning to the helm after. There is no monolithic "game loop
function"; the loop *is* the overworld, and control is a stack of bank-switches over the shared base.

## Bank 18 — the encounter layer (found while tracing)

The ch.11 random-input trace wandered the new captain into **bank 18 — the hostile-port encounter
system**: arrest ("you are under arrest in the name of…"), bribery ("What's this money? Did ye think
ye could…"), confiscation ("We're surrounded! … confiscated"), and **nationality gating** ("All
Portuguese are prohibited here"). It also carries story rumors (the Princess). This is the risk layer
of sailing into foreign/hostile ports — it sits between the overworld and the port menus.

## The arc is complete (static)

From the iNES header (ch.0) to the sailing loop (ch.15) to this tie-together: the **entire static game
is mapped and named** — the MMC5/VM engine, the native floor + ALU, the syscall ABI, every data record
(ports/goods/ships/items/names), the shared libraries, and all 29 subsystems threaded into one flow.
The character you create in bank 2 sails the world we decoded in bank 58, trading the goods of bank 20
and chasing the legendary items of bank 58 to restore a noble name — all running on an 8-bit engine
reaching for 16-bit scale.

## Open (dynamic / remaining branches)

- **Naval combat** and **land exploration** — the two overworld branches not yet walked.
- Confirm the dynamic state on the **emulator**: RT ship fields (`$7298-$729B`), quest-state (`$7050`),
  and the actual title→char-create→overworld hand-off (drive it past char-create with scripted input).
- A save-state seed to trace the steady-state overworld↔port loop in execution.
