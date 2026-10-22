#!/usr/bin/env python3
"""
dump_strings.py - UNCHARTED WATERS 8K-bank-aware ASCII string extractor for the data-walk.

KOEI stores UI text / names as NUL-terminated ASCII (char_classify ascii-40), so strings decode
directly. koei-nes/tools/dump_data.py assumes 16K banks (bank*0x4000) -> wrong for UW's 512K/8K
banks; this uses bank*0x2000. CPU addr for an 8K bytecode/native bank is window-relative; for pure
DATA banks we just index by ROM offset within the bank.

  py -3 dump_strings.py <bank> [minlen]        # list NUL/FF-delimited ASCII strings (>=minlen, default 3)
  py -3 dump_strings.py <bank> --table         # treat as a fixed-slot table: index -> string (incl. empties)
"""
import sys
PRG = open(r"C:\Users\Chris.Isaacson\UW-decompile\Uncharted Waters (USA).nes","rb").read()[16:16+524288]
def bankbytes(b): return PRG[b*0x2000:(b+1)*0x2000]

def strings(b, minlen=3):
    bk = bankbytes(b); out = []; s = None
    for i, c in enumerate(bk):
        printable = 32 <= c < 127
        if printable and s is None: s = i
        elif not printable and s is not None:
            if i - s >= minlen: out.append((s, bytes(bk[s:i])))
            s = None
    return out

def table(b):
    """Fixed-slot view: split on NUL, report every slot (empty slots kept as index placeholders)."""
    bk = bankbytes(b); out = []; i = 0; idx = 0
    # find first string start, infer records by scanning NUL-delimited fields
    cur = bytearray(); start = 0
    for i, c in enumerate(bk):
        if c == 0:
            if cur: out.append((idx, start, bytes(cur))); idx += 1
            cur = bytearray(); start = i + 1
        elif 32 <= c < 127:
            if not cur: start = i
            cur.append(c)
        else:
            if cur: out.append((idx, start, bytes(cur))); idx += 1
            cur = bytearray()
    return out

def main():
    b = int(sys.argv[1], 0)
    if len(sys.argv) > 2 and sys.argv[2] == "--table":
        rows = table(b)
        print(f"bank {b}: {len(rows)} non-empty string slots")
        for idx, off, s in rows:
            print(f"  [{idx:3d}] ${off:04X}(bankoff): {s.decode('ascii','replace')}")
    else:
        minlen = int(sys.argv[2]) if len(sys.argv) > 2 else 3
        rows = strings(b, minlen)
        print(f"bank {b}: {len(rows)} ASCII strings (minlen {minlen})")
        for off, s in rows:
            print(f"  ${off:04X}: {s.decode('ascii','replace')}")

if __name__ == "__main__":
    main()
