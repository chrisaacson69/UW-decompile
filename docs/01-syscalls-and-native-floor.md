---
status: active
created: 2026-07-06
game: uw
oracle: lemp
---
# Ch.1 — Syscall table + fixed-bank native floor (Uncharted Waters)

> Decodes UW's kernel ABI (the 27-slot syscall table) and walks the **static banks' native-6502
> floor completely** (banks 62+63, the resident 16K). Both are byte-grounded. Headline: **UW's
> engine is L'Empereur's, reused wholesale** — and the answer to "where's the real-time code" is
> *not here*: the static floor is the shared substrate; the novel real-time logic is paged in.

## Resident 16K — verified, not assumed

Boot banking-init `$F53D` writes `$5116 ← $FE`; on a 512K/64-bank ROM that masks (`&0x3F`) to
**bank 62** at `$C000–$DFFF`; `$5117` (power-on `$FF`) → **bank 63** at `$E000–$FFFF`. So the
resident fixed 16K = **banks 62 + 63 = the file's last 16K** (the family's "2nd-last + last bank"
architecture, renumbered for 64 banks). *(An earlier provisional note said bank 30 — that was a
naive 32-bank copy; corrected in `games.toml`.)* This is the walk buffer; `handler_match.bank15()`
could **not** be reused as-is (it hardcodes `15×0x4000`, which lands mid-file on a 512K cart).

## Syscall table `$F98C` — 27 slots, L'Empereur's ABI relocated +1

Dispatcher `$F962` (`($FFDE)`): save A/X/Y → clear `$66/$67` → push central return `$F985` →
`LDA $50 / ASL / LDA $F98C,X` → `JMP ($006F)`. Generic entry trampolines `$EEE7` (param-struct
copy) / `$EF01` (id in A); inline invokers also at `$C42A/$D38F/$DD67`.

| id | handler | fn (vs L'Empereur) | id | handler | fn |
|---|---|---|---|---|---|
| 0 | `$F500` | reset | 14 | `$FC6E` | set_metasprite |
| 1 | `$FA99` | set_nt_exram_mode ⚠0.79 | 15 | `$FCD4` | ppu_copy_blocking |
| 2 | `$FAB9` | call_banked_routine | 16 | `$FCF5` | read_controller |
| 3 | `$FAF7` | set_prg_bank | 17 | `$FCFC` | busy_wait |
| 4 | `$FAFF` | get_prg_bank | 18 | `$FD10` | set_scroll ⚠0.78 |
| 5 | `$FB06` | set_chr_banks | 19 | `$FD49` | scroll_vsplit |
| 6 | `$FB14` | set_sprite_block | 20 | `$FD85` | set_vertical_split |
| 7 | `$FB2C` | queue_vram_row | 21 | `$FDB3` | **play_music** |
| 8 | `$FB6C` | queue_ppu_transfer | 22 | `$FE38` | **set_sound_param** ⚠0.75 |
| 9 | `$FBA8` | banked_blit_m3 | 23 | `$FE3D` | **audio_reset** |
| 10 | `$FBB0` | banked_ppu_blit | 24 | `$FE6C` | **audio_is_playing** |
| 11 | `$FC1E` | set_fill_mode | 25 | `$FE82` | **play_music** (variant) |
| 12 | `$FC29` | set_chr_banks | 26 | `$FF31` | **set_sound_params** |
| 13 | `$FC50` | set_chr_bank_alt | | | |

**22 of 26 handlers are byte-identical (score 1.00) to L'Empereur**; the 4 marked ⚠ are the same
functions, lightly diverged (verify before trusting the exact body). id0 = reset, family-standard.

### The real-time answer, part 1: the ABI did NOT grow

There are **zero new UW-specific syscalls**. A genre change from turn-based conquest to real-time
sailing/piracy added **no kernel calls**. The entire ABI is L'Empereur's OS primitives (banking,
VRAM/PPU transfer, sprites/metasprites, scroll, controller) plus a **rich 6-call audio cluster
(id21–26)** — the one place UW leans harder than its siblings, fitting a game with more
music/ambient (ports, sailing, battle). Conclusion: **real-time gameplay is built on the existing
primitives, not a new syscall surface.**

## Native floor — banks 62+63 walked completely

`tools/native_floor.py` (retarget of L'Empereur's; oracle = L'Empereur). Seeds: CPU vectors +
private syscall vector, all 256 VM opcode handlers, the 27 syscall handlers + trampolines,
vm_entry/dispatcher/ext-op, **62 bytecode-reachable `{native}` leaves** (from the bank disasm),
JSR census, then recursive-descent reach.

| metric | UW | (L'Empereur's own floor) |
|---|---|---|
| total native subs | **314** | 334 |
| shared ≥.90 (byte-identical) | **276** | 219 |
| near .70–.90 | 8 | 20 |
| UW-specific <.70 | 28 (+2 thunks) | 93 |
| **named canonically (≥.70)** | **284 / 312 = 91%** | 239 / 332 = 72% |

**91% of UW's static native floor is L'Empereur's engine, byte-for-byte** — a far higher match
than L'Empereur got against its more-distant NA2 oracle. Full seed coverage + this match rate =
the static floor is **complete**; the residue is *relocated* engine, not a hidden subsystem.

### The residue (30 subs to human-read)

Split by region: 6 in `$E000–$FFFF` (true engine bank) are all known engine subs that merely
signature-diverged (`$E100` load_vm_args variant, `$EEE7/$EF01` syscall trampolines, `$EF06`
ext-op dispatch). 22 in `$C000–$DFFF` (bank 62) are relocated record/VM/library helpers
(`$D394` music_nmi_tick 0.26, `$D33D` copy_from_bank 0.34, `$D003` record_field_and, `$D31E`
vm_store_word_indexed, …). **None is a large unmatched new native subsystem.**

### The real-time answer, part 2: it's paged, not resident

The static banks are the shared substrate — OS, VM, ALU, record/string/UI library. The novel
real-time sailing/naval engine is **not in the resident 16K**; it must live in the **paged code
banks**, and the prime suspects are the **8 `$E299` native-CALL-trampoline banks (3, 4, 6, 7, 8,
10, 13, 62)**. That convention (build a VM frame → `jmp` to native → `rts` back into the VM) is
exactly how you embed performance-sensitive native routines callable from bytecode — the natural
home for per-frame ship movement, wind/current, and naval-combat resolution. **Next chapter.**

## Artifacts

- `mesen-labels.toml` — 317 labels, sectioned `[prg.bank63]` / `[prg.bank62]`; applied by
  `koei_vm.py` (native calls now resolve inline, e.g. `$DDE0 (memcpy_ptr)`).
- the UW floor walker is now koei-nes `tools/native_floor.py` (profile `[uw.native_floor]`; regenerate labels: `py -3.14 ../koei-nes/tools/native_floor.py uw --toml`). This repo's own copy was retired 2026-10-22 (emu-harness MIGRATION.md row D).
- `koei-nes/tools/games.toml [uw]` — engine constants (banking-verified `banks_at_c000=[62]`).

## Open

- Verify the 4 ⚠ diverged syscalls (id1/18/22 + the audio bodies) against a live trace.
- Human-read the 30 residue natives (mostly relocated; name the few genuine UW variants).
- **Walk the `$E299` native-trampoline paged banks — the real-time engine hunt (ch.2).**
