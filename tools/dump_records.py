#!/usr/bin/env python3
"""
dump_records.py - UNCHARTED WATERS fixed-stride record tables (the data-walk, ch.5).

Records sit adjacent to their name tables (found via the ch.4 string-walk). Each is a fixed-stride
array indexed parallel to the name list. Verified so far:

  PORTS  - bank 58, record start $0FD4, stride 19 = [m0=X][m1=Y][m2][m3][name(15, NUL-padded)].
           70 ports. m0/m1 = world-map coords (X west->east 1-64, Y north->south 4-31) -- VERIFIED
           vs real geography (Oslo northmost, Cape Town/Da Nang south, Caribbean west, E.Asia east)
           AND internal region clustering. m2/m3 = region/culture/specialty (TBD via reader code).
           (rec 0 = Lisbon: its 4 meta bytes are pre-table bytes -> coords junk; name valid.)

Static ROM name lists (ch.27 data-mine; string-anchored, verified by count + category structure):
  GOODS  - bank 20, LE pointer table $94F5 -> 26 goods strings (6 trade categories).
  SHIPS  - bank 22, $112A -> 6 hull types (Latin/Redonda/Bergantin/Nao/Carrack/Galleon). Per-ship
           stats are FORMULA-derived (hull class x masts x sails x arms), not a flat table.
  ITEMS  - bank 4: 12 materials ($1A33) x 13 types ($1A81) = the treasure/trinket name space.

  py -3 dump_records.py ports|goods|ships|items [--tsv]
"""
import sys
PRG = open(r"C:\Users\Chris.Isaacson\UW-decompile\Uncharted Waters (USA).nes","rb").read()[16:16+524288]
def bankbytes(b): return PRG[b*0x2000:(b+1)*0x2000]

# Layout is [name 15][meta 4], table starts at $0FD8 -- the address the CODE uses ($AFD8 in
# find_port_by_key, = bank58 offset $0FD8). The ch.5 draft read it as [meta 4][name 15] starting 4
# bytes early ($0FD4); that kept NAMES clean but gave every port the NEXT port's coords (off-by-one
# record). It "mostly fit" real geography because cluster-neighbors share coords -- but broke on
# isolated ports (Da Nang, Acapulco). Corrected here: meta AFTER the name. (rec0 Lisbon now clean.)
PORTS = dict(bank=58, start=0x0FD8, stride=19, namelen=15, meta=4)

def _cstr(data, o, maxl=20):
    s = b""
    while o < len(data) and data[o] != 0 and len(s) < maxl:
        s += bytes([data[o]]); o += 1
    return s.decode('ascii', 'replace')

def _strlist(bank, off, n):
    """n consecutive NUL-terminated strings from a bank offset."""
    data = bankbytes(bank); out = []
    while len(out) < n and off < len(data):
        s = _cstr(data, off); off += len(s) + 1
        out.append(s)
    return out

def goods():
    """26 goods via the LE pointer table at $94F5 (bank 20, $8000 window)."""
    bk = bankbytes(20); tab = 0x94F5 - 0x8000; out = []
    for i in range(26):
        p = bk[tab+2*i] | (bk[tab+2*i+1] << 8)
        out.append((i, p, _cstr(bk, p - 0x8000)))
    return out

CATEGORIES = ["Spice"]*5 + ["Food"]*5 + ["Metal/Gem"]*6 + ["Textile"]*5 + ["Manufactured"]*5

def ships():
    """6 hull types with base stats, bank 58 $8481, stride 21: [name14][00][cargo][00][crew][dur LE]."""
    bk = bankbytes(58); o = bk.find(b"Latin"); out = []
    for i in range(6):
        b = bk[o:o+21]
        name = bytes(b[:14]).split(b'\0')[0].decode('ascii', 'replace')
        cargo, crew, dur = b[15], b[17], b[18] | (b[19] << 8)
        out.append((name, cargo, crew, dur)); o += 21
    return out

_GOODS = ["Pepper","Cinnamon","Nutmeg","Pimento","Cloves","Olive Oil","Grapes","Sugar","Cheese",
          "Grain","Gold","Silver","Quartz","Coral","Ivory","Pearl","Cotton","Raw Silk","Wool","Cloth",
          "Silk","Firearms","Wood","Porcelain","Artwork","Carpet"]

def goods_sets():
    """8 regional trade seeds, bank 58 $1864, stride 88: [9 thresholds][9 ids][9 prices(word)]. Each
    good stocked when threshold*50 <= port economic worth; price seeded from base (ch.28)."""
    bk = bankbytes(58); out = []
    for s in range(8):
        o = 0x1864 + s * 88
        goods = [(_GOODS[bk[o+9+k]], bk[o+k], bk[o+18+2*k] | (bk[o+19+2*k] << 8))
                 for k in range(9) if bk[o+9+k] < 26]
        out.append((s, goods))
    return out

def port_goods():
    """Trading port -> regional goods-set: index at bank58 $150A + port*5 + 0 (255/>=8 = no ROM goods).
    Offset +0 verified against the live game (Bordeaux reads set 1 = Cheese/Grain/Cloth/Firearms/Porcelain,
    matching in-game). Ports cluster into 8 regional economies -- trade is BETWEEN regions, not within."""
    bk = bankbytes(58)
    return [(p, bk[0x150A + p*5]) for p in range(50)]

REGION = {0:"Iberia/Med", 1:"N.Europe", 2:"W.Africa", 3:"E.Africa", 4:"Caribbean",
          5:"Arabia/India", 6:"Far East", 7:"India/SE-Asia"}

def demand_tables():
    """Per-region bid price for all 26 goods -- the +36 block of each set's 88-byte matrix (ch.28)."""
    bk = bankbytes(58); out = {}
    for s in range(8):
        o = 0x1864 + s * 88
        out[s] = {_GOODS[g]: (bk[o+36+2*g] | bk[o+37+2*g] << 8) for g in range(26)}
    return out

def items():
    """31 treasures with gold value, bank 58 $9604, stride 17: [name15][value2 LE]."""
    bk = bankbytes(58); o = 0x1604; out = []
    for i in range(40):
        name = bytes(bk[o:o+15]).split(b'\0')[0].decode('ascii', 'replace')
        val = bk[o+15] | (bk[o+16] << 8)
        if not name or sum(c.isalpha() or c == ' ' for c in name) < 2: break
        out.append((name, val)); o += 17
    return out

def item_shops():
    """Per-port item shop, bank 58 $00E9 + port*4 = up to 4 item indices (all-equal = no shop).
    Verified live: Lisbon = Falcon Icon/Sextant/Dagger/Sword. Stock is FIXED per port, not random."""
    bk = bankbytes(58); names = [n for _,_,_,_,_,n in ports()]; itemnames = [n for n,_ in items()]
    out = []
    for p in range(50):
        idx = [bk[0x00E9 + p*4 + k] for k in range(4)]
        if len(set(idx)) == 1: continue                 # all same = empty shop
        out.append((names[p], [itemnames[i] for i in idx if i < len(itemnames)]))
    return out

def ports():
    bk = bankbytes(PORTS["bank"]); a = PORTS["start"]; out = []
    while a + PORTS["stride"] <= len(bk):
        name = bytes(bk[a:a+PORTS["namelen"]]).split(b'\0')[0]           # name FIRST
        meta = bk[a+PORTS["namelen"]:a+PORTS["stride"]]                  # meta (X,Y,f2,f3) AFTER
        if not name or sum(chr(c).isalpha() for c in name) < 2: break
        out.append((a, meta[0], meta[1], meta[2], meta[3], name.decode('ascii','replace')))
        a += PORTS["stride"]
    return out

def main():
    what = sys.argv[1] if len(sys.argv) > 1 else "ports"
    tsv = "--tsv" in sys.argv
    if what == "ports":
        rows = ports()
        if tsv:
            print("idx\taddr\tX\tY\tf2\tf3\tname")
            for i,(a,x,y,f2,f3,n) in enumerate(rows): print(f"{i}\t${a:04X}\t{x}\t{y}\t{f2}\t{f3}\t{n}")
        else:
            print(f"PORTS ({len(rows)} records, bank 58 $0FD8, stride 19: [name15][X][Y][f2][f3])")
            for i,(a,x,y,f2,f3,n) in enumerate(rows):
                print(f"{i:>3} {x:>3} {y:>3} {f2:>3} {f3:>3}  {n}")
    elif what == "goods":
        rows = goods()
        if tsv:
            print("id\taddr\tcategory\tname")
            for i,p,n in rows: print(f"{i}\t${p:04X}\t{CATEGORIES[i]}\t{n}")
        else:
            print("GOODS (26, bank 20, ptr table $94F5):")
            for i,p,n in rows: print(f"  {i:>2} [{CATEGORIES[i]:>12}]  {n}")
    elif what == "ships":
        rows = ships()
        if tsv:
            print("id\tname\tcargo\tcrew\tdurability")
            for i,(n,c,cr,d) in enumerate(rows): print(f"{i}\t{n}\t{c}\t{cr}\t{d}")
        else:
            print("SHIP HULL TYPES (6, bank 58 $8481 — base stats; final stats add masts/sails/arms):")
            print(f"  {'name':10} {'cargo':>5} {'crew':>4} {'durab':>5}")
            for n,c,cr,d in rows: print(f"  {n:10} {c:>5} {cr:>4} {d:>5}")
    elif what == "items":
        rows = items()
        if tsv:
            print("id\tname\tvalue_gold")
            for i,(n,v) in enumerate(rows): print(f"{i}\t{n}\t{v}")
        else:
            print(f"TREASURES ({len(rows)}, bank 58 $9604 — name + gold value):")
            for n,v in sorted(rows, key=lambda r:r[1]): print(f"  {v:>6}g  {n}")
    elif what == "economy":
        gs = dict(goods_sets()); dem = demand_tables(); pr = ports()
        region_ports = {s: [] for s in range(8)}
        for p, s in port_goods():
            if s < 8: region_ports[s].append(pr[p][5])
        print("8 REGIONAL ECONOMIES (bank58; buy at production base, sell where a good is imported):")
        for s in range(8):
            if not region_ports[s]: continue
            sells = ", ".join(f"{n} {p}g" for n, t, p in gs[s])
            top = sorted(dem[s].items(), key=lambda x: -x[1])[:4]
            print(f"\n  [{REGION[s]}]  ports: {', '.join(region_ports[s][:6])}{'...' if len(region_ports[s])>6 else ''}")
            print(f"     SELLS (buy here): {sells}")
            print(f"     BIDS most for   : " + ", ".join(f"{n} {v}g" for n, v in top))
    elif what == "itemshops":
        for port, its in item_shops():
            print(f"  {port:14}: {', '.join(its)}")
    else:
        sys.exit("usage: dump_records.py ports|goods|ships|items|economy|itemshops [--tsv]")

if __name__ == "__main__":
    main()
