---
status: active
created: 2026-07-06
game: uw
---
# Ch.19 — Completeness audit: manual cross-check, remaining data, generic labels

> Closing pass. Cross-check the reverse-engineering against the **official manual** (the second
> grounding oracle), audit what data is still un-decoded, and quantify the remaining generic labels.

## Manual cross-check (`docs/Uncharted Waters.pdf`, scanned; rendered via PyMuPDF)

The manual **validates the entire RE** — story, characters, and every subsystem match what we decoded:

| manual says | our finding |
|---|---|
| 1502 start, young Portuguese captain, restore noble family name | ch.16 intro (bank 2) ✓ |
| Princess Christiana (14), rescue her | ch.16/17 (bank 14 rescue) ✓ |
| First Mate = old sailor who sailed with the father | ch.16 intro ✓ |
| Trade specialty goods; ports specialize; **prices rise/fall on route overuse** | ch.12-14; dynamic price `calc` ✓ |
| Ye Olde Inn: gossip, tip the waitress, mates (Marco/Christopher), 10-mate limit | ch.13/14 tavern ✓ |
| Buy used / build ships; the starting ship is a **Latin** | ch.5 ship table (Latin present!) / ch.13 ✓ |
| Fight Spanish & Turkish fleets; pirates | ch.17 combat (faction taunts) ✓ |
| Discover hidden ports / mysterious ports; treasure | ch.14/18 exploration ✓ |
| Invest in distant ports, gain allies | ch.14 `court_port_support` ✓ |

**New details the manual adds** (worth noting; mostly confirm data we found):
- **9 noble ranks**: Page → Squire → Knight → Baronet → Baron → Viscount → Count → Marquis → Duke
  (the bank-25 title progression — a 9-entry rank table likely exists in the numeric data).
- **Time limit: complete your journey before 1522** (1502 + 20 yrs). We had not surfaced a **date/year
  mechanic** — there is a game clock (year) with a lose/deadline condition. → a small follow-up.

**Verdict: nothing structural was left out.** The manual is narrative (no numeric stat tables), so it
can't cross-check field *values* — that's the emulator's job.

## Remaining data-walk

Non-code banks split cleanly:

- **Done / named:** 58 (ports/ships/items/names), 20 (goods), 4 (item-names), 60 (world-map), 59/61
  (gfx), 39-41 (gfx), 32-34 (nametable/screen-layout gfx — the "printable" bytes are tile indices).
- **Empty:** 31, 42-46 (`$FF` padding — headroom on the 512K cart).
- **Un-decoded numeric tables (the real remaining data):** **47, 48, 49, 50, 51, 52, 53, 54, 55, 56**
  — ~10 banks of pure numeric/pointer data, no text. These are the **per-entity stat tables**
  parallel-indexed to the records we named: likely per-port economy (specialty good + base prices +
  supply/demand), NPC/mate stats (the recruitable sailors), the 9-rank thresholds, and event/quest
  tables. We decoded the *named* records (coords, ship/item fields); the *numbers* behind the economy
  and NPCs live here.

So: **yes, more data-walk remains** — but it's "fill in the numeric tables," not "find new systems."
Best done with the record → parallel-table method (ch.5) plus the emulator to confirm field meanings.

## Generic labels

578 labels: **414 semantic (72%)**, **164 generic (28%)**:

| kind | count | why generic |
|---|---|---|
| `nat_<bank>_<off>` (paged native subs) | 112 | game-specific native **math** — naming needs the emulator (execute the `calc`) |
| `native_<addr>` (fixed-floor residue) | 39 | UW-specific fixed natives that didn't match the L'Empereur oracle (ch.2) |
| misc (`phantom_*`, helpers, `*_var_*` TBD) | 13 | data phantoms / unresolved shared vars |

The generics are **concentrated in the native/math layer** — expected, and by design deferred to
dynamic analysis (ch.6: the `calc` formulas resolve by running them). The **bytecode/subsystem layer
is essentially fully named** (every subsystem, command, screen, event). No generic labels remain in
the game-logic layer that a static pass could resolve.

## Bottom line

- **Static RE: complete** — engine, control flow, all subsystems, and the headline data records, all
  cross-validated against the manual.
- **Remaining, all bounded:** (1) the ~10 numeric data banks (47-56) — a data-walk; (2) the native
  math semantic names + the RT/quest state fields — emulator tasks; (3) the date/1522 time mechanic —
  a small hunt. None are new systems; all are detail-fill on a fully-mapped skeleton.

## Open

- Data-walk banks 47-56 (per-port economy, NPC/mate stats, rank thresholds, event tables).
- Find the year/date variable + the 1522 deadline check.
- Emulator: native `calc` formulas + RT/quest state fields (the 112 `nat_*` + `$7298`/`$7050`).
