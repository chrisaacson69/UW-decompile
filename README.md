# UW-decompile — Uncharted Waters (NES, USA)

Per-game decompile repo for **Uncharted Waters** (KOEI, NES) — **game 9** in KOEI's NES engine
family and the **first genre break**: exploration / trade / piracy with real-time interaction and
a multi-character storyline, not a turn-based conquest sim. It is also the **first 512K-PRG
title** (all eight prior titles were 256K). A thin consumer of the shared engine tooling in
[`koei-nes`](../koei-nes) — the VM decompiler, disassembler, and record readers live there; this
repo holds only UW's recon, per-bank output, wiki, and the small patch constants.

## Status (recon 2026-07-06)

Chapters 0–2 complete. [`docs/00-recon.md`](docs/00-recon.md) — cartridge + engine bring-up;
[`docs/01-syscalls-and-native-floor.md`](docs/01-syscalls-and-native-floor.md) — syscall ABI +
static floor; [`docs/02-native-call-convention.md`](docs/02-native-call-convention.md) — the
`$E299` native-call convention + complete native walk. Engine transferred with **zero code fork**;
UW registered in `koei-nes/tools/games.toml` as `[uw]`.

- **Ch.1:** 27-slot syscall table decoded (22/26 byte-identical to L'Empereur; **no new real-time
  syscalls** — the ABI is L'Empereur's kernel + a rich audio cluster).
- **Ch.2:** classified `$E299` as a **native-call convention** (verified), exposing paged native
  subs the bytecode tiler can't see; closed the fixed floor bottom-up (314→**336**).
- **Ch.3:** found the mirror bridge `$E338` (native→VM); both carry 3 inline bytes. Built a
  control-flow native disassembler (`disasm_native.py`) that skips both bridges and decoded all
  **12 native banks** → `source/1-asm-6502/bankNN.asm`. **Complete native inventory = 555
  subroutines** (336 fixed + 219 paged: 113 firm `$E299`-stubbed + 106 jumptable-recovered).

- **Ch.4:** initial data-walk ([`docs/04-data-walk.md`](docs/04-data-walk.md)) — KOEI text is plain
  ASCII, so a string sweep gave a full **subsystem map** (market=b20, shipyard=b22, tavern=b23,
  sailing=b29, …), the **trade core** (26 goods + pointer table `$94F5`), and the **world** (~56
  ports + NPC/pirate names in b58). Bonus: string pointer tables **resolve window bases** (fixed
  bank 20 → $8000). Tool: `dump_strings.py`.

- **Ch.5:** first record schema ([`docs/05-records.md`](docs/05-records.md)) — the **port table**
  (bank 58, 70 records, stride 19: `[X][Y][f2][f3][name]`). X/Y are world-map coordinates, **verified
  against real geography** (renders a recognizable world map). Full table: `assets/ports.tsv`. Tool:
  `dump_records.py`.

- **Ch.6:** back to the native subs ([`docs/06-native-naming.md`](docs/06-native-naming.md)) — the
  native layer is a **math coprocessor for the VM**: 58% of subs are ALU-heavy (16-bit mul/div/shift
  via the MMC5 hardware multiplier). Named the shared **native ALU** (`alu_mul16`, `alu_shr16_n`, …)
  and built the game-state RAM map (75 fields, 19 record clusters). Per-sub semantic names gated on
  the bytecode walk (honestly deferred).

- **Ch.7:** fixed-bank bytecode ground level ([`docs/07-fixed-bank-bytecode.md`](docs/07-fixed-bank-bytecode.md))
  — walked `os_main $E003` (boot init: loads SRAM, banking/CHR/palette) + bank 63's OS helpers
  (`$6B87` flag-gated) + bank 62's 62-sub shared library. Fixed a koei_vm fixed-bank disasm bug
  (maps only paged slots) with `disasm_fixed_bytecode.py`. Listings in `source/2-asm-vm/`.

- **Ch.8:** calling-mechanism map ([`docs/08-calling-mechanisms.md`](docs/08-calling-mechanisms.md))
  — resolved the window map (UW is **inverted**: `$8000`=rotating code, `$A000`=**bank 1**, the
  universal co-resident shared library — proven by 704 cross-window calls) and the 5 call mechanisms.
  Committed `banks_at_8000` (30 banks) + `coresident_N=[1]` to games.toml. Unblocks the app-bank walk.

- **Ch.9:** walked **bank 1**, the universal `$A000` shared library ([`docs/09-bank1-shared-library.md`](docs/09-bank1-shared-library.md))
  — it's the **windowing/UI toolkit**. Named the core API by call frequency (`draw_window` @ 291
  calls, `win_open`/`win_close` + the `$7286/$7288` window stack, box-draw primitives, `native_draw_box`).
  Subsystem banks now read `CALL draw_window`.

- **Ch.10:** whole-program call graph ([`docs/10-call-graph.md`](docs/10-call-graph.md)) — UW is
  **strictly layered**: base = {bank 62, 63, 1}; **29 subsystem banks each call only base + self, zero
  subsystem→subsystem edges.** No hidden base code. Safe to walk subsystems independently. Tool: `call_graph.py`.

- **Ch.11:** control-flow **traced in execution** ([`docs/11-control-flow-trace.md`](docs/11-control-flow-trace.md))
  — built a **headless MMC5 boot emulator** (`trace_boot.py`, a family first). Observed: boot →
  `os_main` init → **`call_banked_routine` loads bank 2 (title) at frame 7** → bank 2 runs as the
  top-level controller. Confirms subsystem routing = bank-switch dispatch (not CALL_abs). Self-validated
  vs the static `$F53D` decode. **Emulator completed** — full 6502 (18 added opcodes) + NES serial
  controller + input scripting; traces boot → title → new-game → char-create transitions
  (2→35→3+18→35). Reusable for verifying native formulas / record fields against the running CPU.

- **Ch.12:** first **subsystem walk** ([`docs/12-subsystem-walk-market.md`](docs/12-subsystem-walk-market.md))
  — leaves-first, **stop-at-known** (calls into the mapped base are resolved, not re-walked). Named the
  **market** (bank 20): draw primitives → sell/buy/price-list screens → pickers/menus, all anchored by
  their strings. Method scales to all 28 subsystems. Tool: `walk_bank.py`.

- **Ch.13:** more port subsystems ([`docs/13-port-subsystems.md`](docs/13-port-subsystems.md)) —
  **shipyard** (22: buy-used + build-new ship customizer), **tavern** (23: the **information hub** —
  recruit + rumors linking trade/naval/quests), **gambling** (27=poker, 28=blackjack). Named
  leaves-first by string anchors.

- **Ch.14:** the **quest/story spine** ([`docs/14-quest-story-spine.md`](docs/14-quest-story-spine.md))
  — bank 24 (event/quest dialogue dispatcher: hooks, map clues, trade intel, "save the princess",
  romance, recruit) + bank 25 (royal court: quest turn-in, titles/rank, letters, royal bank). Mapped
  the item/treasure table (bank 58, 31 items → `assets/items.tsv`) + procedural names (bank 4).
  Completes the **static** story layer.

- **Ch.15:** the **real-time sailing engine** ([`docs/15-sailing-engine.md`](docs/15-sailing-engine.md))
  — the finale. A **three-bank split**: bank 16 (**helm** — compass steering + Move/Look/Battle/Debark
  command hub), bank 8 (**engine** — native per-frame movement over `$7298–$729B` + data-driven at-sea
  events: storm/seaweed/land-ho/provisions), bank 29 (voyage **prep**). Genuinely different from the
  menu subsystems: a polled per-frame loop (zero `read_controller` syscalls) + native math. **Every
  code bank now has an identity — the static game is fully mapped.**

- **Ch.16:** **tie-together** ([`docs/16-main-loop-and-character.md`](docs/16-main-loop-and-character.md))
  — bank 2 = the entry: title menu + **character creation** (5 stats Charisma/Wisdom/Intel/Courage/
  Strength + bonus points + name "Leon Franco" + flagship) + the **intro story** (Prince Henry, the
  fallen family, Princess Christiana). The main loop *is* the overworld helm, switching in each port/
  combat subsystem on demand. Bank 18 = hostile-port encounters (arrest/bribery/nationality). **The
  entire static game is now mapped and threaded into one flow, header → sailing loop.**

- **Ch.17:** **naval combat** (RT) + fleet mgmt ([`docs/17-naval-combat.md`](docs/17-naval-combat.md))
  — bank 12 (combat command: Fire/Board/View + battle stats), bank 14 (combat dialogue/outcomes/spoils
  — and the **story climax**: rescuing Princess Christiana *is* a naval battle), bank 17 (fleet/crew/
  cargo/rations/loyalty). All overworld branches now walked except land exploration.

- **Ch.18:** **land exploration + the ending** ([`docs/18-land-exploration-and-ending.md`](docs/18-land-exploration-and-ending.md))
  — bank 15 (`Debark`→ashore: search for **water** + **treasure-map digging** + ship repair + fleet
  orders), and bank 38 (**the ending cutscene**: Lord of Alcobaça → marry Christiana → **King of
  Portugal** → epilogue). **Every code bank now has an identity — the static RE is complete,
  iNES header → King of Portugal.**

- **Ch.19:** **completeness audit** ([`docs/19-completeness-audit.md`](docs/19-completeness-audit.md))
  — cross-checked against the official **manual** (validates the whole RE; adds the 9 ranks, Latin
  start, 10-mate limit, and a **1522 time limit**). Remaining: ~10 numeric data banks (47-56) + the
  native-math semantic names (164/578 labels are generic, concentrated in the native/math layer) + the
  date mechanic — all bounded detail-fill, no new systems. **Static RE complete.**

- **Ch.20:** numeric **data-walk** (banks 47-56) ([`docs/20-world-map-data.md`](docs/20-world-map-data.md))
  — they're the **world map**: banks 48-56 = a ~73KB terrain grid that's **~72% sea (Earth's actual
  ocean ratio)**, bank 47 = a bitmap overlay. Not per-entity stats. Every non-code bank now has an
  identity. (Port `field2/3` = region/culture ids, not goods-specialty; tile legend = an emulator task.)

Tools (native floor: koei-nes `tools/native_floor.py uw`): `native_banks.py`, `disasm_native.py`, `dump_strings.py`, `dump_records.py`, `disasm_fixed_bytecode.py`, `call_graph.py`, `trace_boot.py`, `walk_bank.py`, `gen_labels.py`.

| | value | note |
|---|---|---|
| mapper | MMC5 | 128K-CHR sub-family (NA2/BK/LEmp) |
| PRG / CHR | **512K** / 128K | first 512K title — 64 × 8K banks |
| base title | **L'Empereur** | NMI `$F64C` identical, `$FFDE` syscall vector |
| reset / NMI / IRQ | `$F500` / `$F64C` / `$FF3E` (bare RTI) | |
| os_entry | `$E003` | OS main is itself bytecode |
| vm_entry / dispatcher | `$E4BF` / `$E503` | `dispatcher = vm_entry + 0x44` ✓ |
| handler lo/hi | `$ECD4` / `$EDD4` | default handler `$EC40` |
| syscall | fakebrk_priv, `($FFDE)=$F962`, table `$F98C` | L'Empereur engine +1 |
| ext-op (`$B7`) | dispatch `$EF06`, table `$EF21` | |
| census | **37 code banks, 846 bytecode subs, 13 UNK** | ~clean tile |

## Layout

- `docs/` — recon + chapter write-ups (byte-grounded).
- `source/` — `1-asm-6502` (native disasm, 12 banks), `2-asm-vm` (bytecode VM-asm, 32 banks),
  `4-c` (**decompiled C — 31 banks, 846 functions**, DREAM-structured, with all labels applied:
  e.g. `market_sell_screen()` calling `draw_window()`, `mem_666B`). Regenerate: `koei_vm.py disasm`
  then `koei_vm.py decompile`.
- `tools/` — UW-specific scripts (record readers, etc.); shared tools stay in `koei-nes`.
- `mesen-labels.toml` — the patch surface / label scope (grows as banks are named).

## Drive it

```
cd ../koei-nes/tools
py -3 koei_vm.py games                 # uw is listed
py -3 koei_vm.py disasm  uw <bank>     # tile a bank's bytecode
py -3 koei_vm.py emulate uw 0x<sub>    # run a bytecode sub
```

## Next (see docs/00-recon.md → Open threads)

Window map + native-trampoline recovery (ch.2) · syscall-table decode (ch.1) · **the data dig**:
ports, goods, prices, ship/crew stats, world map, storyline (ch.3+) · real-time sailing/naval
engine — classify native vs bytecode before choosing method (ch.4+).
