VM bytecode disassembly
  ROM:          Uncharted Waters (USA).nes
  mode:         FIXED bank (real base $E000; via $A000 slot +translate) -- 63
  opcode spec:  vm-opcodes-v2.toml via nobunaga_vm.OPCODE_INFO (execution-validated lengths)
  labels:       0 CPU addresses named

  bank 63: found 6 bytecode-subroutine stubs

; ============================================================
; sub $E003   (frame_off=+0, body @ $E008)   [PRG $7E003]
; ============================================================
  $E008  65                         PUSH_qimm   ; inline operand = 5
  $E009  60                         PUSH_qimm   ; inline operand = 0
  $E00A  63                         PUSH_qimm   ; inline operand = 3
  $E00B  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $E00F  60                         PUSH_qimm   ; inline operand = 0
  $E010  8E 00 20                   PUSH_imm2              $2000
  $E013  8E 00 60                   PUSH_imm2              $6000
  $E016  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $E01A  61                         PUSH_qimm   ; inline operand = 1
  $E01B  61                         PUSH_qimm   ; inline operand = 1
  $E01C  60                         PUSH_qimm   ; inline operand = 0
  $E01D  61                         PUSH_qimm   ; inline operand = 1
  $E01E  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $E022  8E 5E F3                   PUSH_imm2              $F35E
  $E025  65                         PUSH_qimm   ; inline operand = 5
  $E026  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $E02A  60                         PUSH_qimm   ; inline operand = 0
  $E02B  60                         PUSH_qimm   ; inline operand = 0
  $E02C  60                         PUSH_qimm   ; inline operand = 0
  $E02D  67                         PUSH_qimm   ; inline operand = 7
  $E02E  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $E032  8D 20                      BYTE_PUSH_imm1         +32
  $E034  60                         PUSH_qimm   ; inline operand = 0
  $E035  8E 66 F3                   PUSH_imm2              $F366
  $E038  66                         PUSH_qimm   ; inline operand = 6
  $E039  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $E03D  8E C0 00                   PUSH_imm2              $00C0
  $E040  61                         PUSH_qimm   ; inline operand = 1
  $E041  63                         PUSH_qimm   ; inline operand = 3
  $E042  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $E046  8E C1 00                   PUSH_imm2              $00C1
  $E049  62                         PUSH_qimm   ; inline operand = 2
  $E04A  63                         PUSH_qimm   ; inline operand = 3
  $E04B  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $E04F  40                         LOADL_qimm   ; inline operand = 0
  $E050  A9 67 72                   BYTE_STORE_abs         $7267
  $E053  8E C2 00                   PUSH_imm2              $00C2
  $E056  61                         PUSH_qimm   ; inline operand = 1
  $E057  62                         PUSH_qimm   ; inline operand = 2
  $E058  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $E05C  8E C3 00                   PUSH_imm2              $00C3
  $E05F  61                         PUSH_qimm   ; inline operand = 1
  $E060  62                         PUSH_qimm   ; inline operand = 2
  $E061  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $E065  8E E5 00                   PUSH_imm2              $00E5
  $E068  61                         PUSH_qimm   ; inline operand = 1
  $E069  62                         PUSH_qimm   ; inline operand = 2
  $E06A  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $E06E  CF                         RETURN

; ============================================================
; sub $E06F   (frame_off=+0, body @ $E074)   [PRG $7E06F]
; ============================================================
  $E074  0C                         LOADL_quick   ; inline operand = 12
  $E075  8B 15                      BYTE_LOADR_imm1        +21
  $E077  C6                         UCMPLT
  $E078  D8 7C E0                   JUMPF_abs              $E07C
  $E07B  CF                         RETURN

; ============================================================
; sub $E08C   (frame_off=+0, body @ $E091)   [PRG $7E08C]
; ============================================================
  $E091  0C                         LOADL_quick   ; inline operand = 12
  $E092  8B 14                      BYTE_LOADR_imm1        +20
  $E094  C8                         UCMPGT
  $E095  D8 99 E0                   JUMPF_abs              $E099
  $E098  CF                         RETURN

; ============================================================
; sub $E0C1   (frame_off=+0, body @ $E0C6)   [PRG $7E0C1]
; ============================================================
  $E0C6  A5 87 6B                   BYTE_LOADL_abs         $6B87 (os_mode_flags)
  $E0C9  54                         LOADR_qimm   ; inline operand = 4
  $E0CA  DA                         AND
  $E0CB  D8 D5 E0                   JUMPF_abs              $E0D5
  $E0CE  3C                         PUSH_quick   ; inline operand = 12
  $E0CF  8D 16                      BYTE_PUSH_imm1         +22
  $E0D1  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $E0D5  CF                         RETURN

; ============================================================
; sub $E0D6   (frame_off=+0, body @ $E0DB)   [PRG $7E0D6]
; ============================================================
  $E0DB  A5 87 6B                   BYTE_LOADL_abs         $6B87 (os_mode_flags)
  $E0DE  54                         LOADR_qimm   ; inline operand = 4
  $E0DF  DA                         AND
  $E0E0  D8 E9 E0                   JUMPF_abs              $E0E9
  $E0E3  8D 17                      BYTE_PUSH_imm1         +23
  $E0E5  E9 D4 EE 02                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $02
  $E0E9  CF                         RETURN

; ============================================================
; sub $E0EA   (frame_off=+0, body @ $E0EF)   [PRG $7E0EA]
; ============================================================
  $E0EF  A5 87 6B                   BYTE_LOADL_abs         $6B87 (os_mode_flags)
  $E0F2  54                         LOADR_qimm   ; inline operand = 4
  $E0F3  DA                         AND
  $E0F4  D8 FE E0                   JUMPF_abs              $E0FE
  $E0F7  8D 18                      BYTE_PUSH_imm1         +24
  $E0F9  E9 D4 EE 02                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $02
  $E0FD  CF                         RETURN

