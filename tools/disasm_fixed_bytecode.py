#!/usr/bin/env python3
"""
disasm_fixed_bytecode.py - correctly disassemble UW's FIXED-bank bytecode (banks 62 @ $C000, 63 @ $E000).

WHY THIS EXISTS: koei_vm's emulator memory maps a disasm target bank only into the $8000/$A000 PAGED
slots; the $C000/$E000 windows read whatever fixed banks the emulator booted, NOT the requested bank.
So `koei_vm disasm uw 62` (base $C000) reads the WRONG bytes / finds 23 of 62 stubs, and base $E000
finds 0. Verified: bank62 offset 8 = $FF but koei_vm's $C008 showed $A5.

FIX (no risky change to the shared koeivm): force the fixed bank into the $A000 paged slot (correct
read), then translate the printed $A0xx addresses back to the bank's real base. Bank 62 -> +$2000
($A0xx=$C0xx); bank 63 -> +$4000 ($A0xx=$E0xx). Verified: bank 62 now finds all 62 stubs at $C47B...,
bank 63's os_main content matches the raw ROM.

  py -3 disasm_fixed_bytecode.py <62|63> [out.asm]
"""
import sys, io, re, contextlib
sys.path.insert(0, r"C:\Users\Chris.Isaacson\koei-nes\tools")
import koei_vm

REAL_BASE = {62: 0xC000, 63: 0xE000}          # bank -> its true fixed CPU base
SLOT = 0xA000                                  # paged slot the emulator reads correctly

def disasm_fixed(bank):
    delta = REAL_BASE[bank] - SLOT
    orig = koei_vm.bank_base_for
    koei_vm.bank_base_for = lambda cfg, b, _o=orig: SLOT if b == bank else _o(cfg, b)
    try:
        buf = io.StringIO()
        with contextlib.redirect_stdout(buf):
            koei_vm.disasm("uw", bank)
    finally:
        koei_vm.bank_base_for = orig
    text = buf.getvalue()
    # translate every $Axxx/$Bxxx token to its real address (+delta). An 8K bank in the $A000 slot spans
    # $A000-$BFFF: lower half = $Axxx (-> $Cxxx/$Exxx), UPPER half = $Bxxx (-> $Dxxx/$Fxxx). Both shift by
    # the same delta. (Earlier this matched only $Axxx, silently dropping every $Dxxx/$Fxxx bytecode sub.)
    def bump(m):
        return f"${(int(m.group(1),16)+delta)&0xFFFF:04X}"
    text = re.sub(r'\$([AB][0-9A-Fa-f]{3})', bump, text)
    text = text.replace("bulk dump of bank", f"FIXED bank (real base ${REAL_BASE[bank]:04X}; via $A000 slot +translate) --")
    return text

def main():
    bank = int(sys.argv[1], 0)
    if bank not in REAL_BASE:
        sys.exit("bank must be 62 or 63 (the fixed bytecode banks)")
    text = disasm_fixed(bank)
    if len(sys.argv) > 2:
        open(sys.argv[2], "w", encoding="utf-8").write(text)
        n = len(re.findall(r'; sub \$', text))
        print(f"bank {bank}: {n} bytecode subs -> {sys.argv[2]}")
    else:
        print(text)

if __name__ == "__main__":
    main()
