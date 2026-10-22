---
status: active
created: 2026-07-06
game: uw
---
# Ch.10 — The whole-program call graph: is the code well-organized?

> Before diving into subsystems, check the shape: build the bank-level call graph, confirm the layering,
> and make sure there is no **hidden base code** beyond the shared banks we've named. Answer: UW is
> **strictly layered** — 3 base banks, 29 independent subsystems, zero cross-subsystem coupling.

## The graph (bank-level, all CALL_abs resolved via ch.8 rules)

Resolution: `$8xxx` → own bank (the `$8000` slot holds one subsystem at a time) · `$Axxx` → bank 1 ·
`$Cxxx/$Dxxx` → bank 62 · `$Exxx/$Fxxx` → bank 63.

| bank | role | called by | calls | layer |
|---|---|---|---|---|
| **62** | `$C000` bytecode+native library | **29 banks** | 2530 | base |
| **63** | `$E000` OS core + engine | 27 banks | 634 | base |
| **1** | `$A000` UI / windowing library | 23 banks | 1422 | base |
| (29 code banks) | subsystems | — | — | leaves |

**Every one of the 29 subsystem banks calls only {62, 63, 1} + itself. ZERO subsystem→subsystem
edges.** No hidden base code; no inter-subsystem coupling. `tools/call_graph.py`.

## Bank 25 was a false alarm

A first pass showed "bank 25 called by 12 banks" — a possible 4th base bank. It wasn't: bank 25 (24
stubs) shares exactly **2 stub offsets** with bank 1, and **no caller ever hits a bank-25-*only*
offset**. So those 128 "calls" were the 2 coincidental overlaps — really calls to bank 1 (the `$A000`
resident). Bank 25 is a normal subsystem (royal-audience). Resolver now gives bank 1 the `$Axxx` tie.

## The full layer stack (bottom → top)

```
 L0  native engine + ALU        banks 62/63 native floor (336 subs), MMC5 mul, sw-div, VM-stack ALU   [ch.2,6]
 L1  fixed OS bytecode          bank 63 $E000: os_main + flag/range helpers (6 subs)                   [ch.7]
 L2  shared libraries           bank 62 $C000 (62 subs)  +  bank 1 $A000 UI/windowing (66 subs)        [ch.7,9]
 L3  subsystems (29 banks)      market, shipyard, tavern, sailing, gambling, royal, ... -- independent [ch.4]
      + paged native banks      3,4,6,7,10,13,... : per-subsystem native math (calc), calls L0/L1/L2   [ch.3,6]
      + data banks              ports/goods/ships/names/map (read via banking)                         [ch.4,5]
```

Each subsystem = one `$8000` bytecode bank + (optionally) a paired native bank for its heavy math,
sitting on the L0–L2 base. Clean separation: this is why the string-anchored subsystem map (ch.4) lines
up 1:1 with banks — the architecture really is one-subsystem-per-bank.

## Verdict

The code is **well-organized and fully base-mapped**. There is no more base code to discover — the
shared foundation is {native floor, bank 63 OS, bank 62 lib, bank 1 UI}, all located (bank 1 core API
named in ch.9; bank 62's 62 subs are the remaining base-naming work). It is now **safe to walk
subsystems independently** — each is self-contained against a known base.

## Open

- Name bank 62's 62 library subs (the last big base chunk; leaves-first, high leverage — 2530 calls).
- Then per-subsystem walks (market first — richest anchors), each resolving its native `calc` formulas.
- Map the syscall-id2 dispatch (subsystem *routing*: menu/mode → which subsystem bank loads) — the
  top-level control flow, orthogonal to the call graph.
