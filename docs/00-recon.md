---
status: active
created: 2026-07-06
game: uw
title: Uncharted Waters (USA)
base_title: lemp
---
# Fixed-region recon — Uncharted Waters bring-up (KOEI game 9, the genre break)

> **Two firsts in one cartridge.** UW is (1) the **first genre break** in KOEI's NES family —
> an exploration / trade / piracy sim with real-time interaction and a multi-character story
> mode, *not* a turn-based territory-acquisition sim like the eight titles before it; and (2)
> the **biggest cart yet — the first 512K-PRG title** (all eight priors were 256K PRG). Yet the
> firmware, the bytecode VM, and the whole `koei-nes` toolchain transferred with **zero code
> fork** — only retarget addresses. Every claim here is byte-grounded in the ROM
> (`Uncharted Waters (USA).nes`, 655376 B). Header decode + all engine constants reproduced by
> `py -3` reads; VM proven by tiling with the ROM's own interpreter (`koei_vm.py disasm uw`).

## Cartridge profile — PRG doubles; the family's biggest jump

Decoded from the NES 2.0 header `4E 45 53 1A 20 10 52 08 00 00 77 00 00 00 00 01`:

| | mapper | PRG | CHR | battery | header | file |
|---|---|---|---|---|---|---|
| ROTK / NA1 / GK (games 1–3) | 1 (MMC1) | 256K | CHR-RAM | yes | iNES | 262160 B |
| NA2 (4) | 5 (MMC5) | 256K | 128K CHR-ROM | yes | NES 2.0 | 393232 B |
| RoTK II (5) | 5 | 256K | 256K CHR-ROM | yes | NES 2.0 | 524304 B |
| Bandit Kings (6) | 5 | 256K | 128K CHR-ROM | yes | NES 2.0 | 393232 B |
| Gemfire (7) | 5 | 256K | 256K CHR-ROM | yes | NES 2.0 | 524304 B |
| L'Empereur (8) | 5 | 256K | 128K CHR-ROM | yes | NES 2.0 | 393232 B |
| **Uncharted Waters (9)** | **5** | **512K** ⚑ | **128K CHR-ROM** | yes | NES 2.0 | **655376 B** |

Size math closes exactly: `16 (hdr) + 524288 (PRG) + 131072 (CHR) = 655376`. **Every extra byte
over L'Empereur is PRG** — the CHR is unchanged at 128K (UW is squarely in the NA2/BK/LEmp
128K-CHR sub-family). PRG jumps **256K → 512K = 64 × 8K banks** (all priors capped at 32 banks).
The "biggest cart" is entirely *program/content*: double the bytecode banks, matching the game's
larger world, trade tables, and multi-character storyline. Header byte4 = `0x20` (32 × 16K) vs
L'Empereur's `0x10` (16 × 16K) is the single decoded tell.

## CPU vectors — the L'Empereur tell

Last 16 bytes of PRG (`$FFF0–$FFFF`): `ff ff ff ff ff ff ff ff  ff ff 4c f6 00 f5 3e ff`

| vector | UW | note |
|---|---|---|
| `($FFF8)` | `$FFFF` (**unused**) | NA2/BK put the private syscall vector here; UW does not |
| NMI (`$FFFA`) | **`$F64C`** | **byte-identical to L'Empereur** — the base-title fingerprint |
| RESET (`$FFFC`) | `$F500` | family-standard MMC5 reset |
| IRQ/BRK (`$FFFE`) | `$FF3E` → `40` = **bare RTI** | HW IRQ ignored (timing off NMI), family-standard |

RESET `$F500` + NMI `$F64C` + the freed `$FFF8` slot place UW's firmware in the **GemFire/
L'Empereur lineage**, where the private syscall vector relocated to `$FFDE`. Confirmed below.

## Fixed region = bank 63 (`$E000–$FFFF`); semi-fixed bank 30 (`$C000`)

64-bank ROM, so the MMC5-pinned last 8K is **bank 63** (prior 32-bank titles pinned bank 31).
`$5117` untouched at power-on `$FF` → bank 63 resident at `$E000–$FFFF` (holds reset + vectors +
VM core + OS bytecode). Bank 30 (`$C000–$DFFF`) is the semi-fixed shared-library band, family-
standard. `os_entry`: `$E000 = JMP $E003`; `$E003` = `JSR $E4BF` (vm_entry) + inline operands →
**the OS main is itself bytecode**, exactly as in NA2/LEmp.

## The bytecode VM transferred — vm_entry `$E4BF`, dispatcher `$E503`

`vm_entry $E4BF` reproduces the family frame-save fingerprint **verbatim**:
`PLA→$08/$09` (return addr), `PLA→$00/$01`, `LDY #$07 / SEC / LDA $02 / SBC #$09` (the `($02)−9`
frame-alloc), then the copy-`$00–$07` loop (`LDA $0000,Y / STA ($0c),Y`).

The dispatcher sits at **`$E503` = `vm_entry + 0x44`** — the **family-invariant offset holds for a
ninth title**. Fetch top: `LDA ($06),Y` (vm_ip = `$06`), advance ip, `TAX / LDA $ECD4,X → $00 /
LDA $EDD4,X → $01 / JMP ($0000)`. So:

| const | UW | derivation |
|---|---|---|
| `vm_entry` | `$E4BF` | JSR target of 29 bank stubs (`20 bf e4`) |
| `dispatcher` | `$E503` | `= vm_entry + 0x44` ✓ |
| `handler_lo` | `$ECD4` | `LDA $ECD4,X → $00` |
| `handler_hi` | `$EDD4` | `= handler_lo + 0x100`, `LDA $EDD4,X → $01` |
| default handler | `$EC40` | 37 of 256 slots (VM no-op) |
| ext-op (`$B7`) dispatch | `$EF06` | 32-bit-math sub-dispatcher |
| ext-op table | `$EF21` | `LDA $EF21,X / LDA $EF22,X` |
| native-CALL trampoline | `$E299` | second stub kind (8 banks) — LEmp `$E2E3` analog |

## Syscalls — L'Empereur's engine, relocated +1

Fake-BRK via a **private vector `$FFDE = $F962`** (the real IRQ/BRK `$FFFE=$FF3E` is a bare RTI —
decoupled, GemFire/LEmp-style; NA2/BK's `$FFF8` slot is unused here). Dispatcher `$F962`: save
A/X/Y, clear `$66/$67`, push central return `$F985`, `LDA $50 / ASL / TAX / LDA $F98C,X → $6F /
INX / LDA $F98C,X → $70 / JMP ($006F)`.

| const | UW | L'Empereur (base) |
|---|---|---|
| `syscall_kind` | `fakebrk_priv` | `fakebrk_priv` |
| `syscall_vector` | `$FFDE` | `$FFDE` |
| `syscall_dispatch` | `$F962` | `$F961` |
| `syscall_table` | `$F98C` (raw 2-byte addrs) | `$F98B` |
| indirect jmp slot | `($006F)` | `($006F)` |

Handler decode (id0 = reset `$F500`) is Chapter 1 work.

## Bank census — 37 code banks, 846 bytecode subs, ~clean tile

`py -3 koei_vm.py disasm uw <bank>` over all code banks (the ROM's own interpreter drives it):

- **37 code banks** = **29** `$E4BF`-stub (bytecode) + **8** `$E299`-stub (native-trampoline).
- **846 bytecode subroutines** tiled — **nearly double** any prior title (fits the 512K PRG).
- **13 UNK opcodes across the entire ROM** — consistent with the family's measured "217/219
  opcodes identical"; no structural VM divergence.
- Banks with 0 subs (3,4,6,7,10,13) are `$E299` native-trampoline banks — **not empty**; per
  the L'Empereur precedent (its bank 13 held 42 standard subs behind a native trampoline) these
  need the native-CALL entry path, deferred to Chapter 2.

Data/native banks (roughly 31–61, minus code banks 35/36/37/38/62) hold the game's tables. The
header sniff already shows structured data (e.g. bank 48 `a4 05 52 15…`, bank 60 `52 72 52 52 72
52…`) — **this is where the "data is the big deal" dig lives**: port/city locations, goods,
prices, ship stats, the world map, the multi-character storyline data. Chapter 3+.

## games.toml — registered

Full `[uw]` block committed to `koei-nes/tools/games.toml` (game 9). Toolchain lists it
(`koei_vm.py games`) and disassembles it with no code change — the ninth proof that the KOEI NES
engine + its RE toolchain are a genuinely shared component.

## Open threads (next chapters)

1. **Window map (ch.2):** classify the 21 "JMP $E003 filler"-header banks as `$8000` vs `$A000`
   via the own-call-window test; recover the `$E299` native-trampoline banks' bytecode.
2. **Syscall table decode (ch.1):** name the `$F98C` handlers (expect LEmp's set + any UW-new
   real-time/audio calls).
3. **Co-residency (ch.2):** cross-window `CALL_abs $8xxx` → resident lib bank pairing.
4. **The data dig (ch.3+):** ports, goods, prices, ship/crew stats, world map, storyline — the
   real payload of this title. Build record-schema readers (cf. koei-nes `RECORD_SCHEMAS.md`).
5. **Real-time engine (ch.4+):** classify sailing / naval-combat — likely native, data-driven
   dispatch rather than the turn-based bytecode call tree. **Classify before choosing method.**
