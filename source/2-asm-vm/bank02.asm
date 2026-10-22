VM bytecode disassembly
  ROM:          Uncharted Waters (USA).nes
  mode:         bulk dump of bank 2
  opcode spec:  vm-opcodes-v2.toml via nobunaga_vm.OPCODE_INFO (execution-validated lengths)
  labels:       0 CPU addresses named

  bank 2: found 29 bytecode-subroutine stubs

; ============================================================
; sub $8003   (frame_off=-2, body @ $8008)   [PRG $04003]
; ============================================================
  $8008  40                         LOADL_qimm   ; inline operand = 0
  $8009  A8 86 72                   STORE_abs              $7286 (window_stack_lo)
  $800C  40                         LOADL_qimm   ; inline operand = 0
  $800D  A8 88 72                   STORE_abs              $7288 (window_stack_depth)
  $8010  40                         LOADL_qimm   ; inline operand = 0
  $8011  A8 8A 72                   STORE_abs              $728A
  $8014  89 20                      BYTE_LOADL_imm1        +32
  $8016  A8 8C 72                   STORE_abs              $728C
  $8019  40                         LOADL_qimm   ; inline operand = 0
  $801A  A9 8E 72                   BYTE_STORE_abs         $728E
  $801D  44                         LOADL_qimm   ; inline operand = 4
  $801E  A9 87 6B                   BYTE_STORE_abs         $6B87 (os_mode_flags)
  $8021  40                         LOADL_qimm   ; inline operand = 0
  $8022  A8 90 72                   STORE_abs              $7290
  $8025  B7 18 00 00 00 00          LONG                   $18 $00 $00 $00 $00
  $802B  B7 12                      LONG                   $12
  $802D  94                         UNK
  $802E  72                         ADD_qimm   ; inline operand = 2
  $802F  CF                         RETURN

; ============================================================
; sub $8030   (frame_off=+0, body @ $8035)   [PRG $04030]
; ============================================================
  $8035  8A FF 00                   LOADL_imm2             $00FF
  $8038  A9 87 6B                   BYTE_STORE_abs         $6B87 (os_mode_flags)
  $803B  AC 37 CE                   CALL_abs               $CE37 {native}
  $803E  60                         PUSH_qimm   ; inline operand = 0
  $803F  60                         PUSH_qimm   ; inline operand = 0
  $8040  61                         PUSH_qimm   ; inline operand = 1
  $8041  67                         PUSH_qimm   ; inline operand = 7
  $8042  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8046  60                         PUSH_qimm   ; inline operand = 0
  $8047  8E C2 8F                   PUSH_imm2              $8FC2
  $804A  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $804E  60                         PUSH_qimm   ; inline operand = 0
  $804F  60                         PUSH_qimm   ; inline operand = 0
  $8050  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8054  CF                         RETURN

; ============================================================
; sub $8055   (frame_off=+0, body @ $805A)   [PRG $04055]
; ============================================================
  $805A  8A 85 72                   LOADL_imm2             $7285
  $805D  8C 62 70                   LOADR_imm2             $7062
  $8060  BC                         SUB
  $8061  D0                         INC
  $8062  B3                         PUSHL
  $8063  8E 62 70                   PUSH_imm2              $7062
  $8066  8E 62 90                   PUSH_imm2              $9062
  $8069  8E F9 00                   PUSH_imm2              $00F9
  $806C  61                         PUSH_qimm   ; inline operand = 1
  $806D  E9 EC DC 0A                CALL_abs_imm1          $DCEC (copy_from_bank) {native}, $0A
  $8071  8A FF 00                   LOADL_imm2             $00FF
  $8074  A9 7C 73                   BYTE_STORE_abs         $737C
  $8077  60                         PUSH_qimm   ; inline operand = 0
  $8078  8D 15                      BYTE_PUSH_imm1         +21
  $807A  8E A0 72                   PUSH_imm2              $72A0
  $807D  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $8081  60                         PUSH_qimm   ; inline operand = 0
  $8082  8E C4 00                   PUSH_imm2              $00C4
  $8085  8E B6 72                   PUSH_imm2              $72B6
  $8088  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $808C  68                         PUSH_qimm   ; inline operand = 8
  $808D  8E 82 73                   PUSH_imm2              $7382
  $8090  8E 5E F3                   PUSH_imm2              $F35E
  $8093  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $8097  8E 82 73                   PUSH_imm2              $7382
  $809A  65                         PUSH_qimm   ; inline operand = 5
  $809B  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $809F  40                         LOADL_qimm   ; inline operand = 0
  $80A0  A9 7D 73                   BYTE_STORE_abs         $737D (ui_shared_var_737d)
  $80A3  8A FF 00                   LOADL_imm2             $00FF
  $80A6  A9 8E 73                   BYTE_STORE_abs         $738E
  $80A9  A9 8B 73                   BYTE_STORE_abs         $738B
  $80AC  A9 8A 73                   BYTE_STORE_abs         $738A
  $80AF  89 FF                      BYTE_LOADL_imm1        -1
  $80B1  A8 8C 73                   STORE_abs              $738C
  $80B4  CF                         RETURN

; ============================================================
; sub $80B5   (frame_off=-2, body @ $80BA)   [PRG $040B5]
; ============================================================
  $80BA  AC 03 80                   CALL_abs               $8003 {bytecode}
  $80BD  AC 55 80                   CALL_abs               $8055 (char_create_helper_a) {bytecode}
  $80C0  AC 57 8F                   CALL_abs               $8F57 {bytecode}
  $80C3  AC 30 80                   CALL_abs               $8030 {bytecode}
  $80C6  AC 07 88                   CALL_abs               $8807 {bytecode}
  $80C9  AC 75 A6                   CALL_abs               $A675 {native}
  $80CC  AC 37 CE                   CALL_abs               $CE37 {native}
  $80CF  CF                         RETURN

; ============================================================
; sub $80D0   (frame_off=-15, body @ $80D5)   [PRG $040D0]
; ============================================================
  $80D5  6F                         PUSH_qimm   ; inline operand = 15
  $80D6  DE F1 FF                   LEAL_far               $FFF1
  $80D9  B3                         PUSHL
  $80DA  3D                         PUSH_quick   ; inline operand = 13
  $80DB  8E FA 00                   PUSH_imm2              $00FA
  $80DE  62                         PUSH_qimm   ; inline operand = 2
  $80DF  E9 EC DC 0A                CALL_abs_imm1          $DCEC (copy_from_bank) {native}, $0A
  $80E3  DE F1 FF                   LEAL_far               $FFF1
  $80E6  2D                         STORE_quick   ; inline operand = 13
  $80E7  D6 FE 80                   JUMP_abs               $80FE
 >$80EA  0D                         LOADL_quick   ; inline operand = 13
  $80EB  D3                         BYTE_DEREF
  $80EC  B3                         PUSHL
  $80ED  0C                         LOADL_quick   ; inline operand = 12
  $80EE  D3                         BYTE_DEREF
  $80EF  B4                         POPR
  $80F0  C1                         CMPNE
  $80F1  D8 F6 80                   JUMPF_abs              $80F6
  $80F4  40                         LOADL_qimm   ; inline operand = 0
  $80F5  CF                         RETURN
 >$80F6  0C                         LOADL_quick   ; inline operand = 12
  $80F7  D0                         INC
  $80F8  2C                         STORE_quick   ; inline operand = 12
  $80F9  D1                         DEC
  $80FA  0D                         LOADL_quick   ; inline operand = 13
  $80FB  D0                         INC
  $80FC  2D                         STORE_quick   ; inline operand = 13
  $80FD  D1                         DEC
 >$80FE  0C                         LOADL_quick   ; inline operand = 12
  $80FF  D3                         BYTE_DEREF
  $8100  D7 EA 80                   JUMPT_abs              $80EA
  $8103  0D                         LOADL_quick   ; inline operand = 13
  $8104  D3                         BYTE_DEREF
  $8105  D7 EA 80                   JUMPT_abs              $80EA
  $8108  41                         LOADL_qimm   ; inline operand = 1
  $8109  CF                         RETURN

; ============================================================
; sub $810A   (frame_off=+0, body @ $810F)   [PRG $0410A]
; ============================================================
  $810F  8E 61 10                   PUSH_imm2              $1061
  $8112  8E 00 60                   PUSH_imm2              $6000
  $8115  8E 00 80                   PUSH_imm2              $8000
  $8118  8E F9 00                   PUSH_imm2              $00F9
  $811B  61                         PUSH_qimm   ; inline operand = 1
  $811C  E9 EC DC 0A                CALL_abs_imm1          $DCEC (copy_from_bank) {native}, $0A
  $8120  CF                         RETURN

; ============================================================
; sub $8121   (frame_off=+0, body @ $8126)   [PRG $04121]
; ============================================================
  $8126  8E E2 00                   PUSH_imm2              $00E2
  $8129  8E EA B5                   PUSH_imm2              $B5EA
  $812C  8E DE B2                   PUSH_imm2              $B2DE
  $812F  8D 1A                      BYTE_PUSH_imm1         +26
  $8131  8D 1E                      BYTE_PUSH_imm1         +30
  $8133  62                         PUSH_qimm   ; inline operand = 2
  $8134  61                         PUSH_qimm   ; inline operand = 1
  $8135  69                         PUSH_qimm   ; inline operand = 9
  $8136  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $813A  60                         PUSH_qimm   ; inline operand = 0
  $813B  60                         PUSH_qimm   ; inline operand = 0
  $813C  68                         PUSH_qimm   ; inline operand = 8
  $813D  8D 12                      BYTE_PUSH_imm1         +18
  $813F  67                         PUSH_qimm   ; inline operand = 7
  $8140  67                         PUSH_qimm   ; inline operand = 7
  $8141  68                         PUSH_qimm   ; inline operand = 8
  $8142  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $8146  68                         PUSH_qimm   ; inline operand = 8
  $8147  69                         PUSH_qimm   ; inline operand = 9
  $8148  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $814C  61                         PUSH_qimm   ; inline operand = 1
  $814D  8E DA 8F                   PUSH_imm2              $8FDA
  $8150  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8154  6B                         PUSH_qimm   ; inline operand = 11
  $8155  69                         PUSH_qimm   ; inline operand = 9
  $8156  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $815A  61                         PUSH_qimm   ; inline operand = 1
  $815B  8E E8 8F                   PUSH_imm2              $8FE8
  $815E  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8162  8E E7 00                   PUSH_imm2              $00E7
  $8165  8E F2 AC                   PUSH_imm2              $ACF2
  $8168  8E 7A AC                   PUSH_imm2              $AC7A
  $816B  66                         PUSH_qimm   ; inline operand = 6
  $816C  8D 14                      BYTE_PUSH_imm1         +20
  $816E  8D 16                      BYTE_PUSH_imm1         +22
  $8170  66                         PUSH_qimm   ; inline operand = 6
  $8171  69                         PUSH_qimm   ; inline operand = 9
  $8172  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8176  8D 17                      BYTE_PUSH_imm1         +23
  $8178  67                         PUSH_qimm   ; inline operand = 7
  $8179  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $817D  61                         PUSH_qimm   ; inline operand = 1
  $817E  8E F3 8F                   PUSH_imm2              $8FF3
  $8181  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8185  8D 10                      BYTE_PUSH_imm1         +16
  $8187  60                         PUSH_qimm   ; inline operand = 0
  $8188  8E CA 8F                   PUSH_imm2              $8FCA
  $818B  66                         PUSH_qimm   ; inline operand = 6
  $818C  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8190  8D 10                      BYTE_PUSH_imm1         +16
  $8192  8D 10                      BYTE_PUSH_imm1         +16
  $8194  8E 76 F3                   PUSH_imm2              $F376
  $8197  66                         PUSH_qimm   ; inline operand = 6
  $8198  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $819C  CF                         RETURN

; ============================================================
; sub $819D   (frame_off=-2, body @ $81A2)   [PRG $0419D]
; ============================================================
  $81A2  8D 19                      BYTE_PUSH_imm1         +25
  $81A4  67                         PUSH_qimm   ; inline operand = 7
  $81A5  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $81A9  61                         PUSH_qimm   ; inline operand = 1
  $81AA  3C                         PUSH_quick   ; inline operand = 12
  $81AB  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $81AF  61                         PUSH_qimm   ; inline operand = 1
  $81B0  8E FF 8F                   PUSH_imm2              $8FFF
  $81B3  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $81B7  AC 9F CD                   CALL_abs               $CD9F {native}
  $81BA  2B                         STORE_quick   ; inline operand = 11
  $81BB  0B                         LOADL_quick   ; inline operand = 11
  $81BC  CF                         RETURN

; ============================================================
; sub $81BD   (frame_off=-53, body @ $81C2)   [PRG $041BD]
; ============================================================
  $81C2  AC 0A 81                   CALL_abs               $810A {bytecode}
  $81C5  8E E2 00                   PUSH_imm2              $00E2
  $81C8  8E EA B5                   PUSH_imm2              $B5EA
  $81CB  8E DE B2                   PUSH_imm2              $B2DE
  $81CE  8D 1A                      BYTE_PUSH_imm1         +26
  $81D0  8D 1E                      BYTE_PUSH_imm1         +30
  $81D2  62                         PUSH_qimm   ; inline operand = 2
  $81D3  61                         PUSH_qimm   ; inline operand = 1
  $81D4  69                         PUSH_qimm   ; inline operand = 9
  $81D5  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $81D9  8E E7 00                   PUSH_imm2              $00E7
  $81DC  8E AC A0                   PUSH_imm2              $A0AC
  $81DF  8E 04 A0                   PUSH_imm2              $A004
  $81E2  66                         PUSH_qimm   ; inline operand = 6
  $81E3  8D 1C                      BYTE_PUSH_imm1         +28
  $81E5  8D 16                      BYTE_PUSH_imm1         +22
  $81E7  62                         PUSH_qimm   ; inline operand = 2
  $81E8  69                         PUSH_qimm   ; inline operand = 9
  $81E9  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
 >$81ED  8D 19                      BYTE_PUSH_imm1         +25
  $81EF  67                         PUSH_qimm   ; inline operand = 7
  $81F0  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $81F4  61                         PUSH_qimm   ; inline operand = 1
  $81F5  8E 33 90                   PUSH_imm2              $9033 (str_enter_hero_name)
  $81F8  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
 >$81FC  DE DE FF                   LEAL_far               $FFDE
  $81FF  B3                         PUSHL
  $8200  6C                         PUSH_qimm   ; inline operand = 12
  $8201  8E A6 83                   PUSH_imm2              $83A6
  $8204  8E C0 00                   PUSH_imm2              $00C0
  $8207  61                         PUSH_qimm   ; inline operand = 1
  $8208  E9 3A DE 0A                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $0A
  $820C  A2 F9 FF                   BYTE_STORE_far         $FFF9
  $820F  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $8212  D8 5B 82                   JUMPF_abs              $825B
  $8215  41                         LOADL_qimm   ; inline operand = 1
  $8216  85 CB                      STORE_near             $CB
 >$8218  81 CB                      LOADL_near             $CB
  $821A  57                         LOADR_qimm   ; inline operand = 7
  $821B  B5                         MULT
  $821C  8C 42 65                   LOADR_imm2             $6542
  $821F  BB                         ADD
  $8220  B0                         DEREF
  $8221  B3                         PUSHL
  $8222  DE DE FF                   LEAL_far               $FFDE
  $8225  B3                         PUSHL
  $8226  E9 D0 80 04                CALL_abs_imm1          $80D0 {bytecode}, $04
  $822A  D8 4E 82                   JUMPF_abs              $824E
  $822D  89 1E                      BYTE_LOADL_imm1        +30
  $822F  A2 F9 FF                   BYTE_STORE_far         $FFF9
  $8232  60                         PUSH_qimm   ; inline operand = 0
  $8233  60                         PUSH_qimm   ; inline operand = 0
  $8234  62                         PUSH_qimm   ; inline operand = 2
  $8235  8D 1A                      BYTE_PUSH_imm1         +26
  $8237  8D 19                      BYTE_PUSH_imm1         +25
  $8239  63                         PUSH_qimm   ; inline operand = 3
  $823A  68                         PUSH_qimm   ; inline operand = 8
  $823B  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $823F  8D 19                      BYTE_PUSH_imm1         +25
  $8241  66                         PUSH_qimm   ; inline operand = 6
  $8242  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8246  61                         PUSH_qimm   ; inline operand = 1
  $8247  8E 46 90                   PUSH_imm2              $9046
  $824A  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
 >$824E  81 CB                      LOADL_near             $CB
  $8250  D0                         INC
  $8251  85 CB                      STORE_near             $CB
  $8253  81 CB                      LOADL_near             $CB
  $8255  8B 29                      BYTE_LOADR_imm1        +41
  $8257  C2                         SCMPLT
  $8258  D7 18 82                   JUMPT_abs              $8218
 >$825B  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $825E  8B 1E                      BYTE_LOADR_imm1        +30
  $8260  C0                         CMPEQ
  $8261  D7 FC 81                   JUMPT_abs              $81FC
  $8264  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $8267  D7 78 82                   JUMPT_abs              $8278
  $826A  8D 18                      BYTE_PUSH_imm1         +24
  $826C  6A                         PUSH_qimm   ; inline operand = 10
  $826D  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8271  8E AE 6B                   PUSH_imm2              $6BAE
  $8274  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
 >$8278  8E 5B 90                   PUSH_imm2              $905B
  $827B  E9 9D 81 02                CALL_abs_imm1          $819D {bytecode}, $02
  $827F  D8 ED 81                   JUMPF_abs              $81ED
  $8282  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $8285  D8 8F 82                   JUMPF_abs              $828F
  $8288  DE DE FF                   LEAL_far               $FFDE
  $828B  B3                         PUSHL
  $828C  D6 92 82                   JUMP_abs               $8292
 >$828F  8E 64 90                   PUSH_imm2              $9064
 >$8292  8E AE 6B                   PUSH_imm2              $6BAE
  $8295  E9 A6 DE 04                CALL_abs_imm1          $DEA6 (str_copy) {native}, $04
  $8299  8A AE 6B                   LOADL_imm2             $6BAE
  $829C  A8 42 65                   STORE_abs              $6542
  $829F  8E E2 00                   PUSH_imm2              $00E2
  $82A2  8E EA B5                   PUSH_imm2              $B5EA
  $82A5  8E DE B2                   PUSH_imm2              $B2DE
  $82A8  8D 1A                      BYTE_PUSH_imm1         +26
  $82AA  8D 1E                      BYTE_PUSH_imm1         +30
  $82AC  62                         PUSH_qimm   ; inline operand = 2
  $82AD  61                         PUSH_qimm   ; inline operand = 1
  $82AE  69                         PUSH_qimm   ; inline operand = 9
  $82AF  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $82B3  60                         PUSH_qimm   ; inline operand = 0
  $82B4  60                         PUSH_qimm   ; inline operand = 0
  $82B5  8D 11                      BYTE_PUSH_imm1         +17
  $82B7  6E                         PUSH_qimm   ; inline operand = 14
  $82B8  64                         PUSH_qimm   ; inline operand = 4
  $82B9  69                         PUSH_qimm   ; inline operand = 9
  $82BA  68                         PUSH_qimm   ; inline operand = 8
  $82BB  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $82BF  65                         PUSH_qimm   ; inline operand = 5
  $82C0  6A                         PUSH_qimm   ; inline operand = 10
  $82C1  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $82C5  AA 42 65                   PUSH_abs               $6542
  $82C8  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
 >$82CC  40                         LOADL_qimm   ; inline operand = 0
  $82CD  D6 21 83                   JUMP_abs               $8321
 >$82D0  DE FA FF                   LEAL_far               $FFFA
  $82D3  B3                         PUSHL
  $82D4  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $82D7  B4                         POPR
  $82D8  BB                         ADD
  $82D9  B3                         PUSHL
  $82DA  8D 1E                      BYTE_PUSH_imm1         +30
  $82DC  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $82E0  8F 28                      BYTE_ADD_imm1          +40
  $82E2  D4                         BYTE_POPSTORE
  $82E3  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $82E6  D2                         LSHIFT1
  $82E7  76                         ADD_qimm   ; inline operand = 6
  $82E8  B3                         PUSHL
  $82E9  6A                         PUSH_qimm   ; inline operand = 10
  $82EA  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $82EE  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $82F1  D2                         LSHIFT1
  $82F2  8C 02 90                   LOADR_imm2             $9002
  $82F5  BB                         ADD
  $82F6  B0                         DEREF
  $82F7  B3                         PUSHL
  $82F8  8E 70 90                   PUSH_imm2              $9070
  $82FB  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $82FF  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $8302  D2                         LSHIFT1
  $8303  76                         ADD_qimm   ; inline operand = 6
  $8304  B3                         PUSHL
  $8305  8D 13                      BYTE_PUSH_imm1         +19
  $8307  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $830B  DE FA FF                   LEAL_far               $FFFA
  $830E  B3                         PUSHL
  $830F  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $8312  B4                         POPR
  $8313  BB                         ADD
  $8314  D3                         BYTE_DEREF
  $8315  B3                         PUSHL
  $8316  8E 73 90                   PUSH_imm2              $9073
  $8319  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $831D  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $8320  D0                         INC
 >$8321  A2 F9 FF                   BYTE_STORE_far         $FFF9
  $8324  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $8327  55                         LOADR_qimm   ; inline operand = 5
  $8328  C6                         UCMPLT
  $8329  D7 D0 82                   JUMPT_abs              $82D0
  $832C  8D 28                      BYTE_PUSH_imm1         +40
  $832E  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8332  D0                         INC
  $8333  8B 28                      BYTE_LOADR_imm1        +40
  $8335  B8                         UDIV
  $8336  A2 F8 FF                   BYTE_STORE_far         $FFF8
  $8339  8D 1E                      BYTE_PUSH_imm1         +30
  $833B  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $833F  B3                         PUSHL
  $8340  A0 F8 FF                   BYTE_LOADL_far         $FFF8
  $8343  B3                         PUSHL
  $8344  8D 32                      BYTE_PUSH_imm1         +50
  $8346  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $834A  8F 14                      BYTE_ADD_imm1          +20
  $834C  B4                         POPR
  $834D  B5                         MULT
  $834E  B4                         POPR
  $834F  BB                         ADD
  $8350  8F 28                      BYTE_ADD_imm1          +40
  $8352  A2 FF FF                   BYTE_STORE_far         $FFFF
  $8355  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $8358  D2                         LSHIFT1
  $8359  77                         ADD_qimm   ; inline operand = 7
  $835A  B3                         PUSHL
  $835B  6A                         PUSH_qimm   ; inline operand = 10
  $835C  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8360  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8363  B3                         PUSHL
  $8364  8E 77 90                   PUSH_imm2              $9077 (str_bonus_points)
  $8367  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $836B  8E E7 00                   PUSH_imm2              $00E7
  $836E  8E F2 AC                   PUSH_imm2              $ACF2
  $8371  8E 7A AC                   PUSH_imm2              $AC7A
  $8374  66                         PUSH_qimm   ; inline operand = 6
  $8375  8D 14                      BYTE_PUSH_imm1         +20
  $8377  8D 16                      BYTE_PUSH_imm1         +22
  $8379  66                         PUSH_qimm   ; inline operand = 6
  $837A  69                         PUSH_qimm   ; inline operand = 9
  $837B  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $837F  8E 84 90                   PUSH_imm2              $9084
  $8382  E9 9D 81 02                CALL_abs_imm1          $819D {bytecode}, $02
  $8386  D8 CC 82                   JUMPF_abs              $82CC
  $8389  60                         PUSH_qimm   ; inline operand = 0
  $838A  65                         PUSH_qimm   ; inline operand = 5
  $838B  DE ED FF                   LEAL_far               $FFED
  $838E  B3                         PUSHL
  $838F  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
 >$8393  8E E7 00                   PUSH_imm2              $00E7
  $8396  8E F2 AC                   PUSH_imm2              $ACF2
  $8399  8E 7A AC                   PUSH_imm2              $AC7A
  $839C  66                         PUSH_qimm   ; inline operand = 6
  $839D  8D 14                      BYTE_PUSH_imm1         +20
  $839F  8D 16                      BYTE_PUSH_imm1         +22
  $83A1  66                         PUSH_qimm   ; inline operand = 6
  $83A2  69                         PUSH_qimm   ; inline operand = 9
  $83A3  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $83A7  8D 17                      BYTE_PUSH_imm1         +23
  $83A9  67                         PUSH_qimm   ; inline operand = 7
  $83AA  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $83AE  61                         PUSH_qimm   ; inline operand = 1
  $83AF  8E 8D 90                   PUSH_imm2              $908D
  $83B2  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $83B6  8D 19                      BYTE_PUSH_imm1         +25
  $83B8  67                         PUSH_qimm   ; inline operand = 7
  $83B9  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $83BD  61                         PUSH_qimm   ; inline operand = 1
  $83BE  8E 9B 90                   PUSH_imm2              $909B
  $83C1  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $83C5  40                         LOADL_qimm   ; inline operand = 0
  $83C6  D6 09 84                   JUMP_abs               $8409
 >$83C9  DE ED FF                   LEAL_far               $FFED
  $83CC  B3                         PUSHL
  $83CD  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $83D0  B4                         POPR
  $83D1  BB                         ADD
  $83D2  D3                         BYTE_DEREF
  $83D3  CD                         SWAP
  $83D4  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $83D7  BB                         ADD
  $83D8  A2 FF FF                   BYTE_STORE_far         $FFFF
  $83DB  DE ED FF                   LEAL_far               $FFED
  $83DE  B3                         PUSHL
  $83DF  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $83E2  B4                         POPR
  $83E3  BB                         ADD
  $83E4  B3                         PUSHL
  $83E5  40                         LOADL_qimm   ; inline operand = 0
  $83E6  D4                         BYTE_POPSTORE
  $83E7  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $83EA  D2                         LSHIFT1
  $83EB  76                         ADD_qimm   ; inline operand = 6
  $83EC  B3                         PUSHL
  $83ED  8D 13                      BYTE_PUSH_imm1         +19
  $83EF  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $83F3  DE FA FF                   LEAL_far               $FFFA
  $83F6  B3                         PUSHL
  $83F7  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $83FA  B4                         POPR
  $83FB  BB                         ADD
  $83FC  D3                         BYTE_DEREF
  $83FD  B3                         PUSHL
  $83FE  8E A8 90                   PUSH_imm2              $90A8
  $8401  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8405  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $8408  D0                         INC
 >$8409  A2 F9 FF                   BYTE_STORE_far         $FFF9
  $840C  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $840F  55                         LOADR_qimm   ; inline operand = 5
  $8410  C6                         UCMPLT
  $8411  D7 C9 83                   JUMPT_abs              $83C9
  $8414  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $8417  D2                         LSHIFT1
  $8418  77                         ADD_qimm   ; inline operand = 7
  $8419  B3                         PUSHL
  $841A  8D 13                      BYTE_PUSH_imm1         +19
  $841C  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8420  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8423  B3                         PUSHL
  $8424  8E AC 90                   PUSH_imm2              $90AC
  $8427  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $842B  40                         LOADL_qimm   ; inline operand = 0
  $842C  85 CD                      STORE_near             $CD
  $842E  4C                         LOADL_qimm   ; inline operand = 12
  $842F  85 CB                      STORE_near             $CB
 >$8431  81 CD                      LOADL_near             $CD
  $8433  D2                         LSHIFT1
  $8434  77                         ADD_qimm   ; inline operand = 7
  $8435  53                         LOADR_qimm   ; inline operand = 3
  $8436  BD                         LSHIFT
  $8437  D1                         DEC
  $8438  A2 F4 FF                   BYTE_STORE_far         $FFF4
  $843B  8A E1 00                   LOADL_imm2             $00E1
  $843E  A2 F5 FF                   BYTE_STORE_far         $FFF5
  $8441  40                         LOADL_qimm   ; inline operand = 0
  $8442  A2 F6 FF                   BYTE_STORE_far         $FFF6
  $8445  89 48                      BYTE_LOADL_imm1        +72
  $8447  A2 F7 FF                   BYTE_STORE_far         $FFF7
  $844A  61                         PUSH_qimm   ; inline operand = 1
  $844B  60                         PUSH_qimm   ; inline operand = 0
  $844C  DE F4 FF                   LEAL_far               $FFF4
  $844F  B3                         PUSHL
  $8450  6D                         PUSH_qimm   ; inline operand = 13
  $8451  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8455  87 CB                      PUSH_near              $CB
  $8457  A0 F8 FF                   BYTE_LOADL_far         $FFF8
  $845A  B3                         PUSHL
  $845B  E9 4D CE 04                CALL_abs_imm1          $CE4D {native}, $04
  $845F  4C                         LOADL_qimm   ; inline operand = 12
  $8460  85 CB                      STORE_near             $CB
  $8462  60                         PUSH_qimm   ; inline operand = 0
  $8463  E9 A9 C4 02                CALL_abs_imm1          $C4A9 {native}, $02
  $8467  A2 F8 FF                   BYTE_STORE_far         $FFF8
  $846A  D9 06 00 01 00 39 85 02 00 D5 84 10 ... SWITCH_noncontig       count=6   ; .table 6 (key,target) + default (noncontiguous); SWITCH 1=>$8539 2=>$84D5 16=>$8487 32=>$84C7 64=>$8539 128=>$84D5 default=>$8494
 >$8487  81 CD                      LOADL_near             $CD
  $8489  D1                         DEC
  $848A  85 CD                      STORE_near             $CD
  $848C  50                         LOADR_qimm   ; inline operand = 0
  $848D  C2                         SCMPLT
  $848E  D8 94 84                   JUMPF_abs              $8494
  $8491  44                         LOADL_qimm   ; inline operand = 4
 >$8492  85 CD                      STORE_near             $CD
 >$8494  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8497  D7 31 84                   JUMPT_abs              $8431
  $849A  61                         PUSH_qimm   ; inline operand = 1
  $849B  60                         PUSH_qimm   ; inline operand = 0
  $849C  6C                         PUSH_qimm   ; inline operand = 12
  $849D  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $84A1  8E E7 00                   PUSH_imm2              $00E7
  $84A4  8E F2 AC                   PUSH_imm2              $ACF2
  $84A7  8E 7A AC                   PUSH_imm2              $AC7A
  $84AA  66                         PUSH_qimm   ; inline operand = 6
  $84AB  8D 14                      BYTE_PUSH_imm1         +20
  $84AD  8D 16                      BYTE_PUSH_imm1         +22
  $84AF  66                         PUSH_qimm   ; inline operand = 6
  $84B0  69                         PUSH_qimm   ; inline operand = 9
  $84B1  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $84B5  8E C0 90                   PUSH_imm2              $90C0
  $84B8  E9 9D 81 02                CALL_abs_imm1          $819D {bytecode}, $02
  $84BC  D8 93 83                   JUMPF_abs              $8393
  $84BF  8A BF 6B                   LOADL_imm2             $6BBF
  $84C2  25                         STORE_quick   ; inline operand = 5
  $84C3  40                         LOADL_qimm   ; inline operand = 0
  $84C4  D6 CD 85                   JUMP_abs               $85CD
 >$84C7  81 CD                      LOADL_near             $CD
  $84C9  D0                         INC
  $84CA  85 CD                      STORE_near             $CD
  $84CC  54                         LOADR_qimm   ; inline operand = 4
  $84CD  C4                         SCMPGT
  $84CE  D8 94 84                   JUMPF_abs              $8494
  $84D1  40                         LOADL_qimm   ; inline operand = 0
  $84D2  D6 92 84                   JUMP_abs               $8492
 >$84D5  DE ED FF                   LEAL_far               $FFED
  $84D8  B3                         PUSHL
  $84D9  81 CD                      LOADL_near             $CD
  $84DB  B4                         POPR
  $84DC  BB                         ADD
  $84DD  D3                         BYTE_DEREF
  $84DE  D8 94 84                   JUMPF_abs              $8494
  $84E1  DE ED FF                   LEAL_far               $FFED
  $84E4  B3                         PUSHL
  $84E5  81 CD                      LOADL_near             $CD
  $84E7  B4                         POPR
  $84E8  BB                         ADD
  $84E9  B3                         PUSHL
  $84EA  D3                         BYTE_DEREF
  $84EB  D1                         DEC
  $84EC  D4                         BYTE_POPSTORE
  $84ED  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $84F0  D0                         INC
  $84F1  A2 FF FF                   BYTE_STORE_far         $FFFF
  $84F4  81 CD                      LOADL_near             $CD
  $84F6  D2                         LSHIFT1
  $84F7  76                         ADD_qimm   ; inline operand = 6
  $84F8  B3                         PUSHL
  $84F9  8D 13                      BYTE_PUSH_imm1         +19
  $84FB  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $84FF  DE ED FF                   LEAL_far               $FFED
  $8502  B3                         PUSHL
  $8503  81 CD                      LOADL_near             $CD
  $8505  B4                         POPR
  $8506  BB                         ADD
  $8507  D3                         BYTE_DEREF
  $8508  B3                         PUSHL
  $8509  DE FA FF                   LEAL_far               $FFFA
  $850C  B3                         PUSHL
  $850D  81 CD                      LOADL_near             $CD
  $850F  B4                         POPR
  $8510  BB                         ADD
  $8511  D3                         BYTE_DEREF
  $8512  B4                         POPR
  $8513  BB                         ADD
  $8514  B3                         PUSHL
  $8515  8E B0 90                   PUSH_imm2              $90B0
  $8518  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $851C  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $851F  D2                         LSHIFT1
  $8520  77                         ADD_qimm   ; inline operand = 7
  $8521  B3                         PUSHL
  $8522  8D 13                      BYTE_PUSH_imm1         +19
  $8524  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8528  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $852B  B3                         PUSHL
  $852C  8E B4 90                   PUSH_imm2              $90B4
 >$852F  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8533  41                         LOADL_qimm   ; inline operand = 1
  $8534  85 CB                      STORE_near             $CB
  $8536  D6 94 84                   JUMP_abs               $8494
 >$8539  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $853C  D8 94 84                   JUMPF_abs              $8494
  $853F  DE FA FF                   LEAL_far               $FFFA
  $8542  B3                         PUSHL
  $8543  81 CD                      LOADL_near             $CD
  $8545  B4                         POPR
  $8546  BB                         ADD
  $8547  D3                         BYTE_DEREF
  $8548  B3                         PUSHL
  $8549  DE ED FF                   LEAL_far               $FFED
  $854C  B3                         PUSHL
  $854D  81 CD                      LOADL_near             $CD
  $854F  B4                         POPR
  $8550  BB                         ADD
  $8551  D3                         BYTE_DEREF
  $8552  B4                         POPR
  $8553  BB                         ADD
  $8554  8B 64                      BYTE_LOADR_imm1        +100
  $8556  C6                         UCMPLT
  $8557  D8 94 84                   JUMPF_abs              $8494
  $855A  DE ED FF                   LEAL_far               $FFED
  $855D  B3                         PUSHL
  $855E  81 CD                      LOADL_near             $CD
  $8560  B4                         POPR
  $8561  BB                         ADD
  $8562  B3                         PUSHL
  $8563  D3                         BYTE_DEREF
  $8564  D0                         INC
  $8565  D4                         BYTE_POPSTORE
  $8566  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8569  D1                         DEC
  $856A  A2 FF FF                   BYTE_STORE_far         $FFFF
  $856D  81 CD                      LOADL_near             $CD
  $856F  D2                         LSHIFT1
  $8570  76                         ADD_qimm   ; inline operand = 6
  $8571  B3                         PUSHL
  $8572  8D 13                      BYTE_PUSH_imm1         +19
  $8574  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8578  DE ED FF                   LEAL_far               $FFED
  $857B  B3                         PUSHL
  $857C  81 CD                      LOADL_near             $CD
  $857E  B4                         POPR
  $857F  BB                         ADD
  $8580  D3                         BYTE_DEREF
  $8581  B3                         PUSHL
  $8582  DE FA FF                   LEAL_far               $FFFA
  $8585  B3                         PUSHL
  $8586  81 CD                      LOADL_near             $CD
  $8588  B4                         POPR
  $8589  BB                         ADD
  $858A  D3                         BYTE_DEREF
  $858B  B4                         POPR
  $858C  BB                         ADD
  $858D  B3                         PUSHL
  $858E  8E B8 90                   PUSH_imm2              $90B8
  $8591  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8595  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $8598  D2                         LSHIFT1
  $8599  77                         ADD_qimm   ; inline operand = 7
  $859A  B3                         PUSHL
  $859B  8D 13                      BYTE_PUSH_imm1         +19
  $859D  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $85A1  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $85A4  B3                         PUSHL
  $85A5  8E BC 90                   PUSH_imm2              $90BC
  $85A8  D6 2F 85                   JUMP_abs               $852F
 >$85AB  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $85AE  15                         LOADR_quick   ; inline operand = 5
  $85AF  BB                         ADD
  $85B0  B3                         PUSHL
  $85B1  DE ED FF                   LEAL_far               $FFED
  $85B4  B3                         PUSHL
  $85B5  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $85B8  B4                         POPR
  $85B9  BB                         ADD
  $85BA  D3                         BYTE_DEREF
  $85BB  B3                         PUSHL
  $85BC  DE FA FF                   LEAL_far               $FFFA
  $85BF  B3                         PUSHL
  $85C0  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $85C3  B4                         POPR
  $85C4  BB                         ADD
  $85C5  D3                         BYTE_DEREF
  $85C6  B4                         POPR
  $85C7  BB                         ADD
  $85C8  D4                         BYTE_POPSTORE
  $85C9  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $85CC  D0                         INC
 >$85CD  A2 F9 FF                   BYTE_STORE_far         $FFF9
  $85D0  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $85D3  55                         LOADR_qimm   ; inline operand = 5
  $85D4  C6                         UCMPLT
  $85D5  D7 AB 85                   JUMPT_abs              $85AB
  $85D8  8E E2 00                   PUSH_imm2              $00E2
  $85DB  8E EA B5                   PUSH_imm2              $B5EA
  $85DE  8E DE B2                   PUSH_imm2              $B2DE
  $85E1  8D 1A                      BYTE_PUSH_imm1         +26
  $85E3  8D 1E                      BYTE_PUSH_imm1         +30
  $85E5  62                         PUSH_qimm   ; inline operand = 2
  $85E6  61                         PUSH_qimm   ; inline operand = 1
  $85E7  69                         PUSH_qimm   ; inline operand = 9
  $85E8  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $85EC  8E E7 00                   PUSH_imm2              $00E7
  $85EF  8E AC A0                   PUSH_imm2              $A0AC
  $85F2  8E 04 A0                   PUSH_imm2              $A004
  $85F5  66                         PUSH_qimm   ; inline operand = 6
  $85F6  8D 1C                      BYTE_PUSH_imm1         +28
  $85F8  8D 16                      BYTE_PUSH_imm1         +22
  $85FA  62                         PUSH_qimm   ; inline operand = 2
  $85FB  69                         PUSH_qimm   ; inline operand = 9
  $85FC  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
 >$8600  8D 19                      BYTE_PUSH_imm1         +25
  $8602  65                         PUSH_qimm   ; inline operand = 5
  $8603  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8607  61                         PUSH_qimm   ; inline operand = 1
  $8608  8E C9 90                   PUSH_imm2              $90C9 (str_enter_flagship)
  $860B  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $860F  DE CF FF                   LEAL_far               $FFCF
  $8612  B3                         PUSHL
  $8613  67                         PUSH_qimm   ; inline operand = 7
  $8614  8E A6 83                   PUSH_imm2              $83A6
  $8617  8E C0 00                   PUSH_imm2              $00C0
  $861A  61                         PUSH_qimm   ; inline operand = 1
  $861B  E9 3A DE 0A                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $0A
  $861F  A2 F9 FF                   BYTE_STORE_far         $FFF9
  $8622  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $8625  D7 3C 86                   JUMPT_abs              $863C
  $8628  8D 17                      BYTE_PUSH_imm1         +23
  $862A  6D                         PUSH_qimm   ; inline operand = 13
  $862B  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $862F  60                         PUSH_qimm   ; inline operand = 0
  $8630  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8634  B3                         PUSHL
  $8635  8E E0 90                   PUSH_imm2              $90E0
  $8638  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
 >$863C  8E E3 90                   PUSH_imm2              $90E3
  $863F  E9 9D 81 02                CALL_abs_imm1          $819D {bytecode}, $02
  $8643  D8 00 86                   JUMPF_abs              $8600
  $8646  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $8649  D8 5A 86                   JUMPF_abs              $865A
  $864C  DE CF FF                   LEAL_far               $FFCF
  $864F  B3                         PUSHL
  $8650  60                         PUSH_qimm   ; inline operand = 0
  $8651  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8655  B3                         PUSHL
  $8656  E9 A6 DE 04                CALL_abs_imm1          $DEA6 (str_copy) {native}, $04
 >$865A  8E E2 00                   PUSH_imm2              $00E2
  $865D  8E EA B5                   PUSH_imm2              $B5EA
  $8660  8E DE B2                   PUSH_imm2              $B2DE
  $8663  8D 1A                      BYTE_PUSH_imm1         +26
  $8665  8D 1E                      BYTE_PUSH_imm1         +30
  $8667  62                         PUSH_qimm   ; inline operand = 2
  $8668  61                         PUSH_qimm   ; inline operand = 1
  $8669  69                         PUSH_qimm   ; inline operand = 9
  $866A  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $866E  60                         PUSH_qimm   ; inline operand = 0
  $866F  60                         PUSH_qimm   ; inline operand = 0
  $8670  8D 11                      BYTE_PUSH_imm1         +17
  $8672  6E                         PUSH_qimm   ; inline operand = 14
  $8673  64                         PUSH_qimm   ; inline operand = 4
  $8674  69                         PUSH_qimm   ; inline operand = 9
  $8675  68                         PUSH_qimm   ; inline operand = 8
  $8676  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $867A  8E E7 00                   PUSH_imm2              $00E7
  $867D  8E AC A0                   PUSH_imm2              $A0AC
  $8680  8E 04 A0                   PUSH_imm2              $A004
  $8683  66                         PUSH_qimm   ; inline operand = 6
  $8684  8D 1C                      BYTE_PUSH_imm1         +28
  $8686  8D 16                      BYTE_PUSH_imm1         +22
  $8688  62                         PUSH_qimm   ; inline operand = 2
  $8689  69                         PUSH_qimm   ; inline operand = 9
  $868A  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $868E  65                         PUSH_qimm   ; inline operand = 5
  $868F  6A                         PUSH_qimm   ; inline operand = 10
  $8690  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8694  AA 42 65                   PUSH_abs               $6542
  $8697  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $869B  40                         LOADL_qimm   ; inline operand = 0
  $869C  D6 D7 86                   JUMP_abs               $86D7
 >$869F  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $86A2  D2                         LSHIFT1
  $86A3  76                         ADD_qimm   ; inline operand = 6
  $86A4  B3                         PUSHL
  $86A5  6A                         PUSH_qimm   ; inline operand = 10
  $86A6  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $86AA  61                         PUSH_qimm   ; inline operand = 1
  $86AB  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $86AE  D2                         LSHIFT1
  $86AF  8C 02 90                   LOADR_imm2             $9002
  $86B2  BB                         ADD
  $86B3  B0                         DEREF
  $86B4  B3                         PUSHL
  $86B5  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $86B9  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $86BC  D2                         LSHIFT1
  $86BD  76                         ADD_qimm   ; inline operand = 6
  $86BE  B3                         PUSHL
  $86BF  8D 13                      BYTE_PUSH_imm1         +19
  $86C1  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $86C5  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $86C8  15                         LOADR_quick   ; inline operand = 5
  $86C9  BB                         ADD
  $86CA  D3                         BYTE_DEREF
  $86CB  B3                         PUSHL
  $86CC  8E EC 90                   PUSH_imm2              $90EC
  $86CF  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $86D3  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $86D6  D0                         INC
 >$86D7  A2 F9 FF                   BYTE_STORE_far         $FFF9
  $86DA  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $86DD  55                         LOADR_qimm   ; inline operand = 5
  $86DE  C6                         UCMPLT
  $86DF  D7 9F 86                   JUMPT_abs              $869F
  $86E2  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $86E5  D2                         LSHIFT1
  $86E6  76                         ADD_qimm   ; inline operand = 6
  $86E7  B3                         PUSHL
  $86E8  6A                         PUSH_qimm   ; inline operand = 10
  $86E9  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $86ED  60                         PUSH_qimm   ; inline operand = 0
  $86EE  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $86F2  B3                         PUSHL
  $86F3  8E F0 90                   PUSH_imm2              $90F0
  $86F6  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $86FA  8E F9 90                   PUSH_imm2              $90F9
  $86FD  E9 9D 81 02                CALL_abs_imm1          $819D {bytecode}, $02
  $8701  CF                         RETURN

; ============================================================
; sub $8702   (frame_off=-5, body @ $8707)   [PRG $04702]
; ============================================================
  $8707  AC BD 81                   CALL_abs               $81BD (char_create) {bytecode}
  $870A  85 FD                      STORE_near             $FD
  $870C  40                         LOADL_qimm   ; inline operand = 0
  $870D  D6 28 87                   JUMP_abs               $8728
 >$8710  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8713  8B 33                      BYTE_LOADR_imm1        +51
  $8715  B5                         MULT
  $8716  8C 04 60                   LOADR_imm2             $6004
  $8719  BB                         ADD
  $871A  85 FB                      STORE_near             $FB
  $871C  81 FB                      LOADL_near             $FB
  $871E  77                         ADD_qimm   ; inline operand = 7
  $871F  B3                         PUSHL
  $8720  81 FB                      LOADL_near             $FB
  $8722  79                         ADD_qimm   ; inline operand = 9
  $8723  B1                         POPSTORE
  $8724  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8727  D0                         INC
 >$8728  A2 FF FF                   BYTE_STORE_far         $FFFF
  $872B  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $872E  8B 14                      BYTE_LOADR_imm1        +20
  $8730  C6                         UCMPLT
  $8731  D7 10 87                   JUMPT_abs              $8710
  $8734  81 FD                      LOADL_near             $FD
  $8736  CF                         RETURN

; ============================================================
; sub $8737   (frame_off=-2, body @ $873C)   [PRG $04737]
; ============================================================
  $873C  61                         PUSH_qimm   ; inline operand = 1
  $873D  60                         PUSH_qimm   ; inline operand = 0
  $873E  63                         PUSH_qimm   ; inline operand = 3
  $873F  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $8743  A5 60 70                   BYTE_LOADL_abs         $7060
  $8746  8B 4B                      BYTE_LOADR_imm1        +75
  $8748  C1                         CMPNE
  $8749  D8 85 87                   JUMPF_abs              $8785
  $874C  65                         PUSH_qimm   ; inline operand = 5
  $874D  60                         PUSH_qimm   ; inline operand = 0
  $874E  63                         PUSH_qimm   ; inline operand = 3
  $874F  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $8753  8E E7 00                   PUSH_imm2              $00E7
  $8756  8E F2 AC                   PUSH_imm2              $ACF2
  $8759  8E 7A AC                   PUSH_imm2              $AC7A
  $875C  66                         PUSH_qimm   ; inline operand = 6
  $875D  8D 14                      BYTE_PUSH_imm1         +20
  $875F  8D 16                      BYTE_PUSH_imm1         +22
  $8761  66                         PUSH_qimm   ; inline operand = 6
  $8762  69                         PUSH_qimm   ; inline operand = 9
  $8763  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8767  8D 17                      BYTE_PUSH_imm1         +23
  $8769  67                         PUSH_qimm   ; inline operand = 7
  $876A  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $876E  61                         PUSH_qimm   ; inline operand = 1
  $876F  8E 02 91                   PUSH_imm2              $9102
  $8772  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8776  40                         LOADL_qimm   ; inline operand = 0
  $8777  2B                         STORE_quick   ; inline operand = 11
 >$8778  0B                         LOADL_quick   ; inline operand = 11
  $8779  D0                         INC
  $877A  2B                         STORE_quick   ; inline operand = 11
  $877B  0B                         LOADL_quick   ; inline operand = 11
  $877C  8C F4 01                   LOADR_imm2             $01F4
  $877F  C6                         UCMPLT
  $8780  D7 78 87                   JUMPT_abs              $8778
  $8783  40                         LOADL_qimm   ; inline operand = 0
  $8784  CF                         RETURN
 >$8785  65                         PUSH_qimm   ; inline operand = 5
  $8786  60                         PUSH_qimm   ; inline operand = 0
  $8787  63                         PUSH_qimm   ; inline operand = 3
  $8788  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $878C  8E 61 10                   PUSH_imm2              $1061
  $878F  8E 00 60                   PUSH_imm2              $6000
  $8792  8E 00 80                   PUSH_imm2              $8000
  $8795  61                         PUSH_qimm   ; inline operand = 1
  $8796  61                         PUSH_qimm   ; inline operand = 1
  $8797  E9 EC DC 0A                CALL_abs_imm1          $DCEC (copy_from_bank) {native}, $0A
  $879B  8E E7 00                   PUSH_imm2              $00E7
  $879E  8E F2 AC                   PUSH_imm2              $ACF2
  $87A1  8E 7A AC                   PUSH_imm2              $AC7A
  $87A4  66                         PUSH_qimm   ; inline operand = 6
  $87A5  8D 14                      BYTE_PUSH_imm1         +20
  $87A7  8D 16                      BYTE_PUSH_imm1         +22
  $87A9  66                         PUSH_qimm   ; inline operand = 6
  $87AA  69                         PUSH_qimm   ; inline operand = 9
  $87AB  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $87AF  8D 18                      BYTE_PUSH_imm1         +24
  $87B1  67                         PUSH_qimm   ; inline operand = 7
  $87B2  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $87B6  61                         PUSH_qimm   ; inline operand = 1
  $87B7  8E 10 91                   PUSH_imm2              $9110
  $87BA  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $87BE  41                         LOADL_qimm   ; inline operand = 1
  $87BF  CF                         RETURN

; ============================================================
; sub $87C0   (frame_off=-2, body @ $87C5)   [PRG $047C0]
; ============================================================
  $87C5  AC 37 87                   CALL_abs               $8737 (char_create_helper_b) {bytecode}
  $87C8  2B                         STORE_quick   ; inline operand = 11
  $87C9  0B                         LOADL_quick   ; inline operand = 11
  $87CA  CF                         RETURN

; ============================================================
; sub $87CB   (frame_off=-6, body @ $87D0)   [PRG $047CB]
; ============================================================
  $87D0  AC 75 A6                   CALL_abs               $A675 {native}
 >$87D3  AC 21 81                   CALL_abs               $8121 (title_menu) {bytecode}
  $87D6  60                         PUSH_qimm   ; inline operand = 0
  $87D7  62                         PUSH_qimm   ; inline operand = 2
  $87D8  63                         PUSH_qimm   ; inline operand = 3
  $87D9  60                         PUSH_qimm   ; inline operand = 0
  $87DA  69                         PUSH_qimm   ; inline operand = 9
  $87DB  68                         PUSH_qimm   ; inline operand = 8
  $87DC  62                         PUSH_qimm   ; inline operand = 2
  $87DD  8E 1D 91                   PUSH_imm2              $911D
  $87E0  E9 24 C8 10                CALL_abs_imm1          $C824 {native}, $10
  $87E4  29                         STORE_quick   ; inline operand = 9
  $87E5  09                         LOADL_quick   ; inline operand = 9
  $87E6  D9 02 00 01 00 F3 87 02 00 FF 87 F9 ... SWITCH_noncontig       count=2   ; .table 2 (key,target) + default (noncontiguous); SWITCH 1=>$87F3 2=>$87FF default=>$87F9
 >$87F3  AC 02 87                   CALL_abs               $8702 {bytecode}
  $87F6  2B                         STORE_quick   ; inline operand = 11
  $87F7  41                         LOADL_qimm   ; inline operand = 1
 >$87F8  2A                         STORE_quick   ; inline operand = 10
 >$87F9  0B                         LOADL_quick   ; inline operand = 11
  $87FA  D8 D3 87                   JUMPF_abs              $87D3
  $87FD  0A                         LOADL_quick   ; inline operand = 10
  $87FE  CF                         RETURN
 >$87FF  AC C0 87                   CALL_abs               $87C0 {bytecode}
  $8802  2B                         STORE_quick   ; inline operand = 11
  $8803  40                         LOADL_qimm   ; inline operand = 0
  $8804  D6 F8 87                   JUMP_abs               $87F8

; ============================================================
; sub $8807   (frame_off=+0, body @ $880C)   [PRG $04807]
; ============================================================
  $880C  62                         PUSH_qimm   ; inline operand = 2
  $880D  E9 8C E0 02                CALL_abs_imm1          $E08C {native}, $02
  $8811  61                         PUSH_qimm   ; inline operand = 1
  $8812  E9 C1 E0 02                CALL_abs_imm1          $E0C1 {native}, $02
  $8816  AC CB 87                   CALL_abs               $87CB {bytecode}
  $8819  D8 1F 88                   JUMPF_abs              $881F
  $881C  AC 47 89                   CALL_abs               $8947 {bytecode}
 >$881F  A5 87 6B                   BYTE_LOADL_abs         $6B87 (os_mode_flags)
  $8822  54                         LOADR_qimm   ; inline operand = 4
  $8823  DA                         AND
  $8824  D7 2D 88                   JUMPT_abs              $882D
  $8827  8D 17                      BYTE_PUSH_imm1         +23
  $8829  E9 D4 EE 02                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $02
 >$882D  40                         LOADL_qimm   ; inline operand = 0
  $882E  A9 98 72                   BYTE_STORE_abs         $7298 (ship_sail_state)
  $8831  40                         LOADL_qimm   ; inline operand = 0
  $8832  A9 99 72                   BYTE_STORE_abs         $7299
  $8835  40                         LOADL_qimm   ; inline operand = 0
  $8836  A9 9A 72                   BYTE_STORE_abs         $729A
  $8839  40                         LOADL_qimm   ; inline operand = 0
  $883A  A9 9B 72                   BYTE_STORE_abs         $729B
  $883D  8A FF 00                   LOADL_imm2             $00FF
  $8840  A9 68 70                   BYTE_STORE_abs         $7068
  $8843  CF                         RETURN

; ============================================================
; sub $8844   (frame_off=+0, body @ $8849)   [PRG $04844]
; ============================================================
 >$8849  0C                         LOADL_quick   ; inline operand = 12
  $884A  D1                         DEC
  $884B  2C                         STORE_quick   ; inline operand = 12
  $884C  D0                         INC
  $884D  D8 69 88                   JUMPF_abs              $8869
  $8850  60                         PUSH_qimm   ; inline operand = 0
  $8851  8D 10                      BYTE_PUSH_imm1         +16
  $8853  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8857  D8 5F 88                   JUMPF_abs              $885F
  $885A  41                         LOADL_qimm   ; inline operand = 1
  $885B  A8 90 73                   STORE_abs              $7390
  $885E  CF                         RETURN
 >$885F  61                         PUSH_qimm   ; inline operand = 1
  $8860  8D 11                      BYTE_PUSH_imm1         +17
  $8862  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8866  D6 49 88                   JUMP_abs               $8849
 >$8869  CF                         RETURN

; ============================================================
; sub $886A   (frame_off=-7, body @ $886F)   [PRG $0486A]
; ============================================================
  $886F  8E FC 9B                   PUSH_imm2              $9BFC
  $8872  DE F9 FF                   LEAL_far               $FFF9
  $8875  B3                         PUSHL
  $8876  E9 A6 DE 04                CALL_abs_imm1          $DEA6 (str_copy) {native}, $04
 >$887A  0C                         LOADL_quick   ; inline operand = 12
  $887B  D3                         BYTE_DEREF
  $887C  A2 FF FF                   BYTE_STORE_far         $FFFF
  $887F  D8 46 89                   JUMPF_abs              $8946
  $8882  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8885  D6 2C 89                   JUMP_abs               $892C
 >$8888  61                         PUSH_qimm   ; inline operand = 1
  $8889  8E FF 9B                   PUSH_imm2              $9BFF
  $888C  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8890  D6 39 89                   JUMP_abs               $8939
 >$8893  0C                         LOADL_quick   ; inline operand = 12
  $8894  D0                         INC
  $8895  2C                         STORE_quick   ; inline operand = 12
  $8896  0C                         LOADL_quick   ; inline operand = 12
  $8897  D3                         BYTE_DEREF
  $8898  A2 FE FF                   BYTE_STORE_far         $FFFE
  $889B  D6 E7 88                   JUMP_abs               $88E7
 >$889E  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $88A1  A2 FA FF                   BYTE_STORE_far         $FFFA
  $88A4  D6 08 89                   JUMP_abs               $8908
 >$88A7  8D 37                      BYTE_PUSH_imm1         +55
  $88A9  E9 44 88 02                CALL_abs_imm1          $8844 {bytecode}, $02
  $88AD  D6 08 89                   JUMP_abs               $8908
 >$88B0  8D 4B                      BYTE_PUSH_imm1         +75
  $88B2  E9 44 88 02                CALL_abs_imm1          $8844 {bytecode}, $02
  $88B6  D6 08 89                   JUMP_abs               $8908
 >$88B9  61                         PUSH_qimm   ; inline operand = 1
  $88BA  A5 92 73                   BYTE_LOADL_abs         $7392
  $88BD  8C F8 9B                   LOADR_imm2             $9BF8
  $88C0  BB                         ADD
  $88C1  D3                         BYTE_DEREF
  $88C2  B3                         PUSHL
  $88C3  66                         PUSH_qimm   ; inline operand = 6
  $88C4  65                         PUSH_qimm   ; inline operand = 5
  $88C5  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $88C9  A5 92 73                   BYTE_LOADL_abs         $7392
  $88CC  D0                         INC
  $88CD  A9 92 73                   BYTE_STORE_abs         $7392
  $88D0  D6 08 89                   JUMP_abs               $8908
 >$88D3  8E 93 73                   PUSH_imm2              $7393
  $88D6  E9 6A 88 02                CALL_abs_imm1          $886A {bytecode}, $02
  $88DA  D6 08 89                   JUMP_abs               $8908
 >$88DD  8E A2 73                   PUSH_imm2              $73A2
  $88E0  E9 6A 88 02                CALL_abs_imm1          $886A {bytecode}, $02
  $88E4  D6 08 89                   JUMP_abs               $8908
 >$88E7  D9 07 00 46 00 DD 88 48 00 9E 88 4B ... SWITCH_noncontig       count=7   ; .table 7 (key,target) + default (noncontiguous); SWITCH 70=>$88DD 72=>$889E 75=>$889E 80=>$88B9 83=>$88D3 87=>$88A7 88=>$88B0 default=>$8908
 >$8908  D6 39 89                   JUMP_abs               $8939
 >$890B  0C                         LOADL_quick   ; inline operand = 12
  $890C  D0                         INC
  $890D  D3                         BYTE_DEREF
  $890E  A2 FE FF                   BYTE_STORE_far         $FFFE
  $8911  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8914  A2 FB FF                   BYTE_STORE_far         $FFFB
  $8917  40                         LOADL_qimm   ; inline operand = 0
  $8918  A2 FC FF                   BYTE_STORE_far         $FFFC
  $891B  61                         PUSH_qimm   ; inline operand = 1
  $891C  DE F9 FF                   LEAL_far               $FFF9
  $891F  B3                         PUSHL
  $8920  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8924  66                         PUSH_qimm   ; inline operand = 6
  $8925  E9 44 88 02                CALL_abs_imm1          $8844 {bytecode}, $02
  $8929  D6 39 89                   JUMP_abs               $8939
 >$892C  D9 02 00 0A 00 88 88 1B 00 93 88 0B ... SWITCH_noncontig       count=2   ; .table 2 (key,target) + default (noncontiguous); SWITCH 10=>$8888 27=>$8893 default=>$890B
 >$8939  0C                         LOADL_quick   ; inline operand = 12
  $893A  D0                         INC
  $893B  2C                         STORE_quick   ; inline operand = 12
  $893C  A4 90 73                   LOADL_abs              $7390
  $893F  D8 43 89                   JUMPF_abs              $8943
  $8942  CF                         RETURN
 >$8943  D6 7A 88                   JUMP_abs               $887A
 >$8946  CF                         RETURN

; ============================================================
; sub $8947   (frame_off=-2, body @ $894C)   [PRG $04947]
; ============================================================
  $894C  AC 75 A6                   CALL_abs               $A675 {native}
  $894F  60                         PUSH_qimm   ; inline operand = 0
  $8950  60                         PUSH_qimm   ; inline operand = 0
  $8951  60                         PUSH_qimm   ; inline operand = 0
  $8952  67                         PUSH_qimm   ; inline operand = 7
  $8953  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8957  60                         PUSH_qimm   ; inline operand = 0
  $8958  8D 15                      BYTE_PUSH_imm1         +21
  $895A  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $895E  61                         PUSH_qimm   ; inline operand = 1
  $895F  8D 16                      BYTE_PUSH_imm1         +22
  $8961  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8965  8D 10                      BYTE_PUSH_imm1         +16
  $8967  60                         PUSH_qimm   ; inline operand = 0
  $8968  8E C6 97                   PUSH_imm2              $97C6
  $896B  66                         PUSH_qimm   ; inline operand = 6
  $896C  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8970  8D 10                      BYTE_PUSH_imm1         +16
  $8972  8D 10                      BYTE_PUSH_imm1         +16
  $8974  8E 76 F3                   PUSH_imm2              $F376
  $8977  66                         PUSH_qimm   ; inline operand = 6
  $8978  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $897C  8E E2 00                   PUSH_imm2              $00E2
  $897F  8E F8 A6                   PUSH_imm2              $A6F8
  $8982  8E 1C A6                   PUSH_imm2              $A61C
  $8985  6A                         PUSH_qimm   ; inline operand = 10
  $8986  8D 16                      BYTE_PUSH_imm1         +22
  $8988  6C                         PUSH_qimm   ; inline operand = 12
  $8989  65                         PUSH_qimm   ; inline operand = 5
  $898A  69                         PUSH_qimm   ; inline operand = 9
  $898B  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $898F  40                         LOADL_qimm   ; inline operand = 0
  $8990  A9 92 73                   BYTE_STORE_abs         $7392
  $8993  AA 42 65                   PUSH_abs               $6542
  $8996  8E 93 73                   PUSH_imm2              $7393
  $8999  E9 A6 DE 04                CALL_abs_imm1          $DEA6 (str_copy) {native}, $04
  $899D  60                         PUSH_qimm   ; inline operand = 0
  $899E  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $89A2  B3                         PUSHL
  $89A3  8E A2 73                   PUSH_imm2              $73A2
  $89A6  E9 A6 DE 04                CALL_abs_imm1          $DEA6 (str_copy) {native}, $04
  $89AA  40                         LOADL_qimm   ; inline operand = 0
  $89AB  2B                         STORE_quick   ; inline operand = 11
 >$89AC  40                         LOADL_qimm   ; inline operand = 0
  $89AD  A8 90 73                   STORE_abs              $7390
  $89B0  60                         PUSH_qimm   ; inline operand = 0
  $89B1  60                         PUSH_qimm   ; inline operand = 0
  $89B2  67                         PUSH_qimm   ; inline operand = 7
  $89B3  8D 14                      BYTE_PUSH_imm1         +20
  $89B5  6E                         PUSH_qimm   ; inline operand = 14
  $89B6  66                         PUSH_qimm   ; inline operand = 6
  $89B7  68                         PUSH_qimm   ; inline operand = 8
  $89B8  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $89BC  61                         PUSH_qimm   ; inline operand = 1
  $89BD  8E 01 9C                   PUSH_imm2              $9C01
  $89C0  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $89C4  0B                         LOADL_quick   ; inline operand = 11
  $89C5  D2                         LSHIFT1
  $89C6  8C D6 97                   LOADR_imm2             $97D6
  $89C9  BB                         ADD
  $89CA  B0                         DEREF
  $89CB  B3                         PUSHL
  $89CC  E9 6A 88 02                CALL_abs_imm1          $886A {bytecode}, $02
  $89D0  0B                         LOADL_quick   ; inline operand = 11
  $89D1  D0                         INC
  $89D2  2B                         STORE_quick   ; inline operand = 11
  $89D3  0B                         LOADL_quick   ; inline operand = 11
  $89D4  8B 16                      BYTE_LOADR_imm1        +22
  $89D6  C2                         SCMPLT
  $89D7  D7 AC 89                   JUMPT_abs              $89AC
  $89DA  AC 89 A5                   CALL_abs               $A589 {native}
  $89DD  60                         PUSH_qimm   ; inline operand = 0
  $89DE  60                         PUSH_qimm   ; inline operand = 0
  $89DF  60                         PUSH_qimm   ; inline operand = 0
  $89E0  67                         PUSH_qimm   ; inline operand = 7
  $89E1  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $89E5  8E 82 73                   PUSH_imm2              $7382
  $89E8  65                         PUSH_qimm   ; inline operand = 5
  $89E9  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $89ED  8D 20                      BYTE_PUSH_imm1         +32
  $89EF  60                         PUSH_qimm   ; inline operand = 0
  $89F0  8E 66 F3                   PUSH_imm2              $F366
  $89F3  66                         PUSH_qimm   ; inline operand = 6
  $89F4  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $89F8  CF                         RETURN

; ============================================================
; sub $89F9   (frame_off=+0, body @ $89FE)   [PRG $049F9]
; ============================================================
 >$89FE  0C                         LOADL_quick   ; inline operand = 12
  $89FF  D1                         DEC
  $8A00  2C                         STORE_quick   ; inline operand = 12
  $8A01  D0                         INC
  $8A02  D8 20 8A                   JUMPF_abs              $8A20
  $8A05  60                         PUSH_qimm   ; inline operand = 0
  $8A06  8D 10                      BYTE_PUSH_imm1         +16
  $8A08  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8A0C  58                         LOADR_qimm   ; inline operand = 8
  $8A0D  C0                         CMPEQ
  $8A0E  D8 16 8A                   JUMPF_abs              $8A16
  $8A11  41                         LOADL_qimm   ; inline operand = 1
  $8A12  A8 90 73                   STORE_abs              $7390
  $8A15  CF                         RETURN
 >$8A16  61                         PUSH_qimm   ; inline operand = 1
  $8A17  8D 11                      BYTE_PUSH_imm1         +17
  $8A19  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8A1D  D6 FE 89                   JUMP_abs               $89FE
 >$8A20  CF                         RETURN

; ============================================================
; sub $8A21   (frame_off=-8, body @ $8A26)   [PRG $04A21]
; ============================================================
  $8A26  40                         LOADL_qimm   ; inline operand = 0
  $8A27  29                         STORE_quick   ; inline operand = 9
 >$8A28  09                         LOADL_quick   ; inline operand = 9
  $8A29  52                         LOADR_qimm   ; inline operand = 2
  $8A2A  C1                         CMPNE
  $8A2B  D8 6A 8A                   JUMPF_abs              $8A6A
  $8A2E  64                         PUSH_qimm   ; inline operand = 4
  $8A2F  DE FC FF                   LEAL_far               $FFFC
  $8A32  B3                         PUSHL
  $8A33  8E 09 9C                   PUSH_imm2              $9C09
  $8A36  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $8A3A  40                         LOADL_qimm   ; inline operand = 0
  $8A3B  28                         STORE_quick   ; inline operand = 8
 >$8A3C  09                         LOADL_quick   ; inline operand = 9
  $8A3D  8C 5E 91                   LOADR_imm2             $915E
  $8A40  BB                         ADD
  $8A41  D3                         BYTE_DEREF
  $8A42  B3                         PUSHL
  $8A43  DE FC FF                   LEAL_far               $FFFC
  $8A46  B3                         PUSHL
  $8A47  08                         LOADL_quick   ; inline operand = 8
  $8A48  B4                         POPR
  $8A49  BB                         ADD
  $8A4A  B4                         POPR
  $8A4B  B3                         PUSHL
  $8A4C  D3                         BYTE_DEREF
  $8A4D  DA                         AND
  $8A4E  D4                         BYTE_POPSTORE
  $8A4F  08                         LOADL_quick   ; inline operand = 8
  $8A50  D0                         INC
  $8A51  28                         STORE_quick   ; inline operand = 8
  $8A52  08                         LOADL_quick   ; inline operand = 8
  $8A53  54                         LOADR_qimm   ; inline operand = 4
  $8A54  C2                         SCMPLT
  $8A55  D7 3C 8A                   JUMPT_abs              $8A3C
  $8A58  64                         PUSH_qimm   ; inline operand = 4
  $8A59  60                         PUSH_qimm   ; inline operand = 0
  $8A5A  DE FC FF                   LEAL_far               $FFFC
  $8A5D  B3                         PUSHL
  $8A5E  66                         PUSH_qimm   ; inline operand = 6
  $8A5F  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8A63  6A                         PUSH_qimm   ; inline operand = 10
  $8A64  8D 11                      BYTE_PUSH_imm1         +17
  $8A66  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
 >$8A6A  09                         LOADL_quick   ; inline operand = 9
  $8A6B  D0                         INC
  $8A6C  29                         STORE_quick   ; inline operand = 9
  $8A6D  09                         LOADL_quick   ; inline operand = 9
  $8A6E  54                         LOADR_qimm   ; inline operand = 4
  $8A6F  C2                         SCMPLT
  $8A70  D7 28 8A                   JUMPT_abs              $8A28
  $8A73  CF                         RETURN

; ============================================================
; sub $8A74   (frame_off=-8, body @ $8A79)   [PRG $04A74]
; ============================================================
  $8A79  40                         LOADL_qimm   ; inline operand = 0
  $8A7A  29                         STORE_quick   ; inline operand = 9
 >$8A7B  64                         PUSH_qimm   ; inline operand = 4
  $8A7C  DE FC FF                   LEAL_far               $FFFC
  $8A7F  B3                         PUSHL
  $8A80  8E 0D 9C                   PUSH_imm2              $9C0D
  $8A83  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $8A87  40                         LOADL_qimm   ; inline operand = 0
  $8A88  28                         STORE_quick   ; inline operand = 8
 >$8A89  09                         LOADL_quick   ; inline operand = 9
  $8A8A  8C 5E 91                   LOADR_imm2             $915E
  $8A8D  BB                         ADD
  $8A8E  D3                         BYTE_DEREF
  $8A8F  B3                         PUSHL
  $8A90  DE FC FF                   LEAL_far               $FFFC
  $8A93  B3                         PUSHL
  $8A94  08                         LOADL_quick   ; inline operand = 8
  $8A95  B4                         POPR
  $8A96  BB                         ADD
  $8A97  B4                         POPR
  $8A98  B3                         PUSHL
  $8A99  D3                         BYTE_DEREF
  $8A9A  DA                         AND
  $8A9B  D4                         BYTE_POPSTORE
  $8A9C  08                         LOADL_quick   ; inline operand = 8
  $8A9D  D0                         INC
  $8A9E  28                         STORE_quick   ; inline operand = 8
  $8A9F  08                         LOADL_quick   ; inline operand = 8
  $8AA0  54                         LOADR_qimm   ; inline operand = 4
  $8AA1  C2                         SCMPLT
  $8AA2  D7 89 8A                   JUMPT_abs              $8A89
  $8AA5  64                         PUSH_qimm   ; inline operand = 4
  $8AA6  60                         PUSH_qimm   ; inline operand = 0
  $8AA7  DE FC FF                   LEAL_far               $FFFC
  $8AAA  B3                         PUSHL
  $8AAB  66                         PUSH_qimm   ; inline operand = 6
  $8AAC  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8AB0  69                         PUSH_qimm   ; inline operand = 9
  $8AB1  E9 F9 89 02                CALL_abs_imm1          $89F9 {bytecode}, $02
  $8AB5  A4 90 73                   LOADL_abs              $7390
  $8AB8  D8 BC 8A                   JUMPF_abs              $8ABC
  $8ABB  CF                         RETURN
 >$8ABC  09                         LOADL_quick   ; inline operand = 9
  $8ABD  D0                         INC
  $8ABE  29                         STORE_quick   ; inline operand = 9
  $8ABF  09                         LOADL_quick   ; inline operand = 9
  $8AC0  54                         LOADR_qimm   ; inline operand = 4
  $8AC1  C2                         SCMPLT
  $8AC2  D7 7B 8A                   JUMPT_abs              $8A7B
  $8AC5  CF                         RETURN

; ============================================================
; sub $8AC6   (frame_off=-20, body @ $8ACB)   [PRG $04AC6]
; ============================================================
  $8ACB  40                         LOADL_qimm   ; inline operand = 0
  $8ACC  23                         STORE_quick   ; inline operand = 3
 >$8ACD  03                         LOADL_quick   ; inline operand = 3
  $8ACE  52                         LOADR_qimm   ; inline operand = 2
  $8ACF  C1                         CMPNE
  $8AD0  D8 10 8B                   JUMPF_abs              $8B10
  $8AD3  8D 10                      BYTE_PUSH_imm1         +16
  $8AD5  DE F0 FF                   LEAL_far               $FFF0
  $8AD8  B3                         PUSHL
  $8AD9  8E 2E 91                   PUSH_imm2              $912E
  $8ADC  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $8AE0  40                         LOADL_qimm   ; inline operand = 0
  $8AE1  22                         STORE_quick   ; inline operand = 2
 >$8AE2  03                         LOADL_quick   ; inline operand = 3
  $8AE3  8C 5E 91                   LOADR_imm2             $915E
  $8AE6  BB                         ADD
  $8AE7  D3                         BYTE_DEREF
  $8AE8  B3                         PUSHL
  $8AE9  DE F0 FF                   LEAL_far               $FFF0
  $8AEC  B3                         PUSHL
  $8AED  02                         LOADL_quick   ; inline operand = 2
  $8AEE  B4                         POPR
  $8AEF  BB                         ADD
  $8AF0  B4                         POPR
  $8AF1  B3                         PUSHL
  $8AF2  D3                         BYTE_DEREF
  $8AF3  DA                         AND
  $8AF4  D4                         BYTE_POPSTORE
  $8AF5  02                         LOADL_quick   ; inline operand = 2
  $8AF6  D0                         INC
  $8AF7  22                         STORE_quick   ; inline operand = 2
  $8AF8  02                         LOADL_quick   ; inline operand = 2
  $8AF9  8B 10                      BYTE_LOADR_imm1        +16
  $8AFB  C2                         SCMPLT
  $8AFC  D7 E2 8A                   JUMPT_abs              $8AE2
  $8AFF  8D 10                      BYTE_PUSH_imm1         +16
  $8B01  60                         PUSH_qimm   ; inline operand = 0
  $8B02  DE F0 FF                   LEAL_far               $FFF0
  $8B05  B3                         PUSHL
  $8B06  66                         PUSH_qimm   ; inline operand = 6
  $8B07  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8B0B  6A                         PUSH_qimm   ; inline operand = 10
  $8B0C  E9 F9 89 02                CALL_abs_imm1          $89F9 {bytecode}, $02
 >$8B10  03                         LOADL_quick   ; inline operand = 3
  $8B11  D0                         INC
  $8B12  23                         STORE_quick   ; inline operand = 3
  $8B13  03                         LOADL_quick   ; inline operand = 3
  $8B14  54                         LOADR_qimm   ; inline operand = 4
  $8B15  C2                         SCMPLT
  $8B16  D7 CD 8A                   JUMPT_abs              $8ACD
  $8B19  CF                         RETURN

; ============================================================
; sub $8B1A   (frame_off=-20, body @ $8B1F)   [PRG $04B1A]
; ============================================================
  $8B1F  40                         LOADL_qimm   ; inline operand = 0
  $8B20  23                         STORE_quick   ; inline operand = 3
 >$8B21  8D 10                      BYTE_PUSH_imm1         +16
  $8B23  DE F0 FF                   LEAL_far               $FFF0
  $8B26  B3                         PUSHL
  $8B27  8E 11 9C                   PUSH_imm2              $9C11
  $8B2A  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $8B2E  40                         LOADL_qimm   ; inline operand = 0
  $8B2F  22                         STORE_quick   ; inline operand = 2
 >$8B30  03                         LOADL_quick   ; inline operand = 3
  $8B31  8C 62 91                   LOADR_imm2             $9162
  $8B34  BB                         ADD
  $8B35  D3                         BYTE_DEREF
  $8B36  B3                         PUSHL
  $8B37  DE F0 FF                   LEAL_far               $FFF0
  $8B3A  B3                         PUSHL
  $8B3B  02                         LOADL_quick   ; inline operand = 2
  $8B3C  B4                         POPR
  $8B3D  BB                         ADD
  $8B3E  B4                         POPR
  $8B3F  B3                         PUSHL
  $8B40  D3                         BYTE_DEREF
  $8B41  DA                         AND
  $8B42  D4                         BYTE_POPSTORE
  $8B43  02                         LOADL_quick   ; inline operand = 2
  $8B44  D0                         INC
  $8B45  22                         STORE_quick   ; inline operand = 2
  $8B46  02                         LOADL_quick   ; inline operand = 2
  $8B47  54                         LOADR_qimm   ; inline operand = 4
  $8B48  C2                         SCMPLT
  $8B49  D7 30 8B                   JUMPT_abs              $8B30
  $8B4C  64                         PUSH_qimm   ; inline operand = 4
  $8B4D  60                         PUSH_qimm   ; inline operand = 0
  $8B4E  DE F0 FF                   LEAL_far               $FFF0
  $8B51  B3                         PUSHL
  $8B52  66                         PUSH_qimm   ; inline operand = 6
  $8B53  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8B57  69                         PUSH_qimm   ; inline operand = 9
  $8B58  E9 F9 89 02                CALL_abs_imm1          $89F9 {bytecode}, $02
  $8B5C  A4 90 73                   LOADL_abs              $7390
  $8B5F  D8 63 8B                   JUMPF_abs              $8B63
  $8B62  CF                         RETURN
 >$8B63  03                         LOADL_quick   ; inline operand = 3
  $8B64  D0                         INC
  $8B65  23                         STORE_quick   ; inline operand = 3
  $8B66  03                         LOADL_quick   ; inline operand = 3
  $8B67  54                         LOADR_qimm   ; inline operand = 4
  $8B68  C2                         SCMPLT
  $8B69  D7 21 8B                   JUMPT_abs              $8B21
  $8B6C  CF                         RETURN

; ============================================================
; sub $8B6D   (frame_off=-20, body @ $8B72)   [PRG $04B6D]
; ============================================================
  $8B72  40                         LOADL_qimm   ; inline operand = 0
  $8B73  23                         STORE_quick   ; inline operand = 3
 >$8B74  8D 10                      BYTE_PUSH_imm1         +16
  $8B76  DE F0 FF                   LEAL_far               $FFF0
  $8B79  B3                         PUSHL
  $8B7A  8E 2E 91                   PUSH_imm2              $912E
  $8B7D  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $8B81  40                         LOADL_qimm   ; inline operand = 0
  $8B82  22                         STORE_quick   ; inline operand = 2
 >$8B83  03                         LOADL_quick   ; inline operand = 3
  $8B84  8C 62 91                   LOADR_imm2             $9162
  $8B87  BB                         ADD
  $8B88  D3                         BYTE_DEREF
  $8B89  B3                         PUSHL
  $8B8A  DE F0 FF                   LEAL_far               $FFF0
  $8B8D  B3                         PUSHL
  $8B8E  02                         LOADL_quick   ; inline operand = 2
  $8B8F  B4                         POPR
  $8B90  BB                         ADD
  $8B91  B4                         POPR
  $8B92  B3                         PUSHL
  $8B93  D3                         BYTE_DEREF
  $8B94  DA                         AND
  $8B95  D4                         BYTE_POPSTORE
  $8B96  02                         LOADL_quick   ; inline operand = 2
  $8B97  D0                         INC
  $8B98  22                         STORE_quick   ; inline operand = 2
  $8B99  02                         LOADL_quick   ; inline operand = 2
  $8B9A  8B 10                      BYTE_LOADR_imm1        +16
  $8B9C  C2                         SCMPLT
  $8B9D  D7 83 8B                   JUMPT_abs              $8B83
  $8BA0  8D 10                      BYTE_PUSH_imm1         +16
  $8BA2  60                         PUSH_qimm   ; inline operand = 0
  $8BA3  DE F0 FF                   LEAL_far               $FFF0
  $8BA6  B3                         PUSHL
  $8BA7  66                         PUSH_qimm   ; inline operand = 6
  $8BA8  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8BAC  65                         PUSH_qimm   ; inline operand = 5
  $8BAD  E9 F9 89 02                CALL_abs_imm1          $89F9 {bytecode}, $02
  $8BB1  A4 90 73                   LOADL_abs              $7390
  $8BB4  D8 B8 8B                   JUMPF_abs              $8BB8
  $8BB7  CF                         RETURN
 >$8BB8  03                         LOADL_quick   ; inline operand = 3
  $8BB9  D0                         INC
  $8BBA  23                         STORE_quick   ; inline operand = 3
  $8BBB  03                         LOADL_quick   ; inline operand = 3
  $8BBC  54                         LOADR_qimm   ; inline operand = 4
  $8BBD  C2                         SCMPLT
  $8BBE  D7 74 8B                   JUMPT_abs              $8B74
  $8BC1  CF                         RETURN

; ============================================================
; sub $8BC2   (frame_off=-20, body @ $8BC7)   [PRG $04BC2]
; ============================================================
  $8BC7  40                         LOADL_qimm   ; inline operand = 0
  $8BC8  23                         STORE_quick   ; inline operand = 3
 >$8BC9  8D 10                      BYTE_PUSH_imm1         +16
  $8BCB  DE F0 FF                   LEAL_far               $FFF0
  $8BCE  B3                         PUSHL
  $8BCF  8E 1E 91                   PUSH_imm2              $911E
  $8BD2  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $8BD6  40                         LOADL_qimm   ; inline operand = 0
  $8BD7  22                         STORE_quick   ; inline operand = 2
 >$8BD8  03                         LOADL_quick   ; inline operand = 3
  $8BD9  8C 5E 91                   LOADR_imm2             $915E
  $8BDC  BB                         ADD
  $8BDD  D3                         BYTE_DEREF
  $8BDE  B3                         PUSHL
  $8BDF  DE F0 FF                   LEAL_far               $FFF0
  $8BE2  B3                         PUSHL
  $8BE3  02                         LOADL_quick   ; inline operand = 2
  $8BE4  B4                         POPR
  $8BE5  BB                         ADD
  $8BE6  B4                         POPR
  $8BE7  B3                         PUSHL
  $8BE8  D3                         BYTE_DEREF
  $8BE9  DA                         AND
  $8BEA  D4                         BYTE_POPSTORE
  $8BEB  02                         LOADL_quick   ; inline operand = 2
  $8BEC  D0                         INC
  $8BED  22                         STORE_quick   ; inline operand = 2
  $8BEE  02                         LOADL_quick   ; inline operand = 2
  $8BEF  8B 10                      BYTE_LOADR_imm1        +16
  $8BF1  C2                         SCMPLT
  $8BF2  D7 D8 8B                   JUMPT_abs              $8BD8
  $8BF5  8D 10                      BYTE_PUSH_imm1         +16
  $8BF7  8D 10                      BYTE_PUSH_imm1         +16
  $8BF9  DE F0 FF                   LEAL_far               $FFF0
  $8BFC  B3                         PUSHL
  $8BFD  66                         PUSH_qimm   ; inline operand = 6
  $8BFE  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8C02  8D 14                      BYTE_PUSH_imm1         +20
  $8C04  E9 F9 89 02                CALL_abs_imm1          $89F9 {bytecode}, $02
  $8C08  A4 90 73                   LOADL_abs              $7390
  $8C0B  D8 0F 8C                   JUMPF_abs              $8C0F
  $8C0E  CF                         RETURN
 >$8C0F  03                         LOADL_quick   ; inline operand = 3
  $8C10  D0                         INC
  $8C11  23                         STORE_quick   ; inline operand = 3
  $8C12  03                         LOADL_quick   ; inline operand = 3
  $8C13  54                         LOADR_qimm   ; inline operand = 4
  $8C14  C2                         SCMPLT
  $8C15  D7 C9 8B                   JUMPT_abs              $8BC9
  $8C18  CF                         RETURN

; ============================================================
; sub $8C19   (frame_off=-20, body @ $8C1E)   [PRG $04C19]
; ============================================================
  $8C1E  40                         LOADL_qimm   ; inline operand = 0
  $8C1F  23                         STORE_quick   ; inline operand = 3
 >$8C20  8D 10                      BYTE_PUSH_imm1         +16
  $8C22  DE F0 FF                   LEAL_far               $FFF0
  $8C25  B3                         PUSHL
  $8C26  8E 1E 91                   PUSH_imm2              $911E
  $8C29  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $8C2D  40                         LOADL_qimm   ; inline operand = 0
  $8C2E  22                         STORE_quick   ; inline operand = 2
 >$8C2F  03                         LOADL_quick   ; inline operand = 3
  $8C30  8C 62 91                   LOADR_imm2             $9162
  $8C33  BB                         ADD
  $8C34  D3                         BYTE_DEREF
  $8C35  B3                         PUSHL
  $8C36  DE F0 FF                   LEAL_far               $FFF0
  $8C39  B3                         PUSHL
  $8C3A  02                         LOADL_quick   ; inline operand = 2
  $8C3B  B4                         POPR
  $8C3C  BB                         ADD
  $8C3D  B4                         POPR
  $8C3E  B3                         PUSHL
  $8C3F  D3                         BYTE_DEREF
  $8C40  DA                         AND
  $8C41  D4                         BYTE_POPSTORE
  $8C42  02                         LOADL_quick   ; inline operand = 2
  $8C43  D0                         INC
  $8C44  22                         STORE_quick   ; inline operand = 2
  $8C45  02                         LOADL_quick   ; inline operand = 2
  $8C46  8B 10                      BYTE_LOADR_imm1        +16
  $8C48  C2                         SCMPLT
  $8C49  D7 2F 8C                   JUMPT_abs              $8C2F
  $8C4C  8D 10                      BYTE_PUSH_imm1         +16
  $8C4E  8D 10                      BYTE_PUSH_imm1         +16
  $8C50  DE F0 FF                   LEAL_far               $FFF0
  $8C53  B3                         PUSHL
  $8C54  66                         PUSH_qimm   ; inline operand = 6
  $8C55  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8C59  8D 14                      BYTE_PUSH_imm1         +20
  $8C5B  E9 F9 89 02                CALL_abs_imm1          $89F9 {bytecode}, $02
  $8C5F  A4 90 73                   LOADL_abs              $7390
  $8C62  D8 66 8C                   JUMPF_abs              $8C66
  $8C65  CF                         RETURN
 >$8C66  03                         LOADL_quick   ; inline operand = 3
  $8C67  D0                         INC
  $8C68  23                         STORE_quick   ; inline operand = 3
  $8C69  03                         LOADL_quick   ; inline operand = 3
  $8C6A  54                         LOADR_qimm   ; inline operand = 4
  $8C6B  C2                         SCMPLT
  $8C6C  D7 20 8C                   JUMPT_abs              $8C20
  $8C6F  CF                         RETURN

; ============================================================
; sub $8C70   (frame_off=+0, body @ $8C75)   [PRG $04C70]
; ============================================================
  $8C75  64                         PUSH_qimm   ; inline operand = 4
  $8C76  60                         PUSH_qimm   ; inline operand = 0
  $8C77  8E 3E 91                   PUSH_imm2              $913E
  $8C7A  66                         PUSH_qimm   ; inline operand = 6
  $8C7B  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8C7F  8E E2 00                   PUSH_imm2              $00E2
  $8C82  8E B0 A0                   PUSH_imm2              $A0B0
  $8C85  8E 74 A0                   PUSH_imm2              $A074
  $8C88  66                         PUSH_qimm   ; inline operand = 6
  $8C89  6A                         PUSH_qimm   ; inline operand = 10
  $8C8A  69                         PUSH_qimm   ; inline operand = 9
  $8C8B  6B                         PUSH_qimm   ; inline operand = 11
  $8C8C  69                         PUSH_qimm   ; inline operand = 9
  $8C8D  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8C91  AC 21 8A                   CALL_abs               $8A21 {bytecode}
  $8C94  8D 1E                      BYTE_PUSH_imm1         +30
  $8C96  8D 11                      BYTE_PUSH_imm1         +17
  $8C98  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8C9C  8E E2 00                   PUSH_imm2              $00E2
  $8C9F  8E 0C A1                   PUSH_imm2              $A10C
  $8CA2  8E EC A0                   PUSH_imm2              $A0EC
  $8CA5  62                         PUSH_qimm   ; inline operand = 2
  $8CA6  8D 10                      BYTE_PUSH_imm1         +16
  $8CA8  8D 11                      BYTE_PUSH_imm1         +17
  $8CAA  68                         PUSH_qimm   ; inline operand = 8
  $8CAB  69                         PUSH_qimm   ; inline operand = 9
  $8CAC  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8CB0  8D 78                      BYTE_PUSH_imm1         +120
  $8CB2  E9 F9 89 02                CALL_abs_imm1          $89F9 {bytecode}, $02
  $8CB6  A4 90 73                   LOADL_abs              $7390
  $8CB9  D8 BD 8C                   JUMPF_abs              $8CBD
  $8CBC  CF                         RETURN
 >$8CBD  60                         PUSH_qimm   ; inline operand = 0
  $8CBE  60                         PUSH_qimm   ; inline operand = 0
  $8CBF  60                         PUSH_qimm   ; inline operand = 0
  $8CC0  67                         PUSH_qimm   ; inline operand = 7
  $8CC1  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8CC5  8E E2 00                   PUSH_imm2              $00E2
  $8CC8  8E 3C A0                   PUSH_imm2              $A03C
  $8CCB  8E 04 A0                   PUSH_imm2              $A004
  $8CCE  62                         PUSH_qimm   ; inline operand = 2
  $8CCF  8D 1C                      BYTE_PUSH_imm1         +28
  $8CD1  6F                         PUSH_qimm   ; inline operand = 15
  $8CD2  62                         PUSH_qimm   ; inline operand = 2
  $8CD3  69                         PUSH_qimm   ; inline operand = 9
  $8CD4  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8CD8  64                         PUSH_qimm   ; inline operand = 4
  $8CD9  60                         PUSH_qimm   ; inline operand = 0
  $8CDA  8E 15 9C                   PUSH_imm2              $9C15
  $8CDD  66                         PUSH_qimm   ; inline operand = 6
  $8CDE  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8CE2  8D 78                      BYTE_PUSH_imm1         +120
  $8CE4  E9 F9 89 02                CALL_abs_imm1          $89F9 {bytecode}, $02
  $8CE8  A4 90 73                   LOADL_abs              $7390
  $8CEB  D8 EF 8C                   JUMPF_abs              $8CEF
  $8CEE  CF                         RETURN
 >$8CEF  AC 1A 8B                   CALL_abs               $8B1A {bytecode}
  $8CF2  A4 90 73                   LOADL_abs              $7390
  $8CF5  D8 F9 8C                   JUMPF_abs              $8CF9
  $8CF8  CF                         RETURN
 >$8CF9  60                         PUSH_qimm   ; inline operand = 0
  $8CFA  60                         PUSH_qimm   ; inline operand = 0
  $8CFB  60                         PUSH_qimm   ; inline operand = 0
  $8CFC  67                         PUSH_qimm   ; inline operand = 7
  $8CFD  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8D01  8E E2 00                   PUSH_imm2              $00E2
  $8D04  8E EC A7                   PUSH_imm2              $A7EC
  $8D07  8E D4 A7                   PUSH_imm2              $A7D4
  $8D0A  63                         PUSH_qimm   ; inline operand = 3
  $8D0B  68                         PUSH_qimm   ; inline operand = 8
  $8D0C  6C                         PUSH_qimm   ; inline operand = 12
  $8D0D  6C                         PUSH_qimm   ; inline operand = 12
  $8D0E  69                         PUSH_qimm   ; inline operand = 9
  $8D0F  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8D13  8E E2 00                   PUSH_imm2              $00E2
  $8D16  8E 40 A2                   PUSH_imm2              $A240
  $8D19  8E 1C A2                   PUSH_imm2              $A21C
  $8D1C  62                         PUSH_qimm   ; inline operand = 2
  $8D1D  8D 12                      BYTE_PUSH_imm1         +18
  $8D1F  8D 10                      BYTE_PUSH_imm1         +16
  $8D21  67                         PUSH_qimm   ; inline operand = 7
  $8D22  69                         PUSH_qimm   ; inline operand = 9
  $8D23  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8D27  AC 74 8A                   CALL_abs               $8A74 {bytecode}
  $8D2A  A4 90 73                   LOADL_abs              $7390
  $8D2D  D8 31 8D                   JUMPF_abs              $8D31
  $8D30  CF                         RETURN
 >$8D31  8D 78                      BYTE_PUSH_imm1         +120
  $8D33  E9 F9 89 02                CALL_abs_imm1          $89F9 {bytecode}, $02
  $8D37  A4 90 73                   LOADL_abs              $7390
  $8D3A  D8 3E 8D                   JUMPF_abs              $8D3E
  $8D3D  CF                         RETURN
 >$8D3E  AC 1A 8B                   CALL_abs               $8B1A {bytecode}
  $8D41  A4 90 73                   LOADL_abs              $7390
  $8D44  D8 48 8D                   JUMPF_abs              $8D48
  $8D47  CF                         RETURN
 >$8D48  60                         PUSH_qimm   ; inline operand = 0
  $8D49  60                         PUSH_qimm   ; inline operand = 0
  $8D4A  60                         PUSH_qimm   ; inline operand = 0
  $8D4B  67                         PUSH_qimm   ; inline operand = 7
  $8D4C  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8D50  64                         PUSH_qimm   ; inline operand = 4
  $8D51  60                         PUSH_qimm   ; inline operand = 0
  $8D52  8E 66 F3                   PUSH_imm2              $F366
  $8D55  66                         PUSH_qimm   ; inline operand = 6
  $8D56  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8D5A  8D 3C                      BYTE_PUSH_imm1         +60
  $8D5C  E9 F9 89 02                CALL_abs_imm1          $89F9 {bytecode}, $02
  $8D60  CF                         RETURN

; ============================================================
; sub $8D61   (frame_off=-12, body @ $8D66)   [PRG $04D61]
; ============================================================
  $8D66  8D 10                      BYTE_PUSH_imm1         +16
  $8D68  60                         PUSH_qimm   ; inline operand = 0
  $8D69  8E 2E 91                   PUSH_imm2              $912E
  $8D6C  66                         PUSH_qimm   ; inline operand = 6
  $8D6D  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8D71  8D 14                      BYTE_PUSH_imm1         +20
  $8D73  8D 15                      BYTE_PUSH_imm1         +21
  $8D75  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8D79  60                         PUSH_qimm   ; inline operand = 0
  $8D7A  8D 16                      BYTE_PUSH_imm1         +22
  $8D7C  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8D80  8E BE 96                   PUSH_imm2              $96BE
  $8D83  65                         PUSH_qimm   ; inline operand = 5
  $8D84  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8D88  8D 10                      BYTE_PUSH_imm1         +16
  $8D8A  8D 10                      BYTE_PUSH_imm1         +16
  $8D8C  8E 3E 91                   PUSH_imm2              $913E
  $8D8F  66                         PUSH_qimm   ; inline operand = 6
  $8D90  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8D94  8D 40                      BYTE_PUSH_imm1         +64
  $8D96  60                         PUSH_qimm   ; inline operand = 0
  $8D97  8E C6 96                   PUSH_imm2              $96C6
  $8D9A  6D                         PUSH_qimm   ; inline operand = 13
  $8D9B  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8D9F  AC C2 8B                   CALL_abs               $8BC2 {bytecode}
  $8DA2  A4 90 73                   LOADL_abs              $7390
  $8DA5  D8 A9 8D                   JUMPF_abs              $8DA9
  $8DA8  CF                         RETURN
 >$8DA9  8A 78 91                   LOADL_imm2             $9178
  $8DAC  2B                         STORE_quick   ; inline operand = 11
  $8DAD  40                         LOADL_qimm   ; inline operand = 0
  $8DAE  2A                         STORE_quick   ; inline operand = 10
  $8DAF  40                         LOADL_qimm   ; inline operand = 0
  $8DB0  29                         STORE_quick   ; inline operand = 9
 >$8DB1  09                         LOADL_quick   ; inline operand = 9
  $8DB2  8C 96 00                   LOADR_imm2             $0096
  $8DB5  C2                         SCMPLT
  $8DB6  D8 AA 8E                   JUMPF_abs              $8EAA
  $8DB9  40                         LOADL_qimm   ; inline operand = 0
  $8DBA  26                         STORE_quick   ; inline operand = 6
 >$8DBB  0A                         LOADL_quick   ; inline operand = 10
  $8DBC  D0                         INC
  $8DBD  2A                         STORE_quick   ; inline operand = 10
  $8DBE  0A                         LOADL_quick   ; inline operand = 10
  $8DBF  8C FF 00                   LOADR_imm2             $00FF
  $8DC2  DA                         AND
  $8DC3  8C EF 00                   LOADR_imm2             $00EF
  $8DC6  C8                         UCMPGT
  $8DC7  D8 D8 8D                   JUMPF_abs              $8DD8
  $8DCA  8A 00 FF                   LOADL_imm2             $FF00
  $8DCD  CD                         SWAP
  $8DCE  0A                         LOADL_quick   ; inline operand = 10
  $8DCF  DA                         AND
  $8DD0  2A                         STORE_quick   ; inline operand = 10
  $8DD1  8A 00 01                   LOADL_imm2             $0100
  $8DD4  CD                         SWAP
  $8DD5  0A                         LOADL_quick   ; inline operand = 10
  $8DD6  DC                         XOR
  $8DD7  2A                         STORE_quick   ; inline operand = 10
 >$8DD8  3A                         PUSH_quick   ; inline operand = 10
  $8DD9  60                         PUSH_qimm   ; inline operand = 0
  $8DDA  8D 12                      BYTE_PUSH_imm1         +18
  $8DDC  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $8DE0  60                         PUSH_qimm   ; inline operand = 0
  $8DE1  60                         PUSH_qimm   ; inline operand = 0
  $8DE2  61                         PUSH_qimm   ; inline operand = 1
  $8DE3  8D 12                      BYTE_PUSH_imm1         +18
  $8DE5  09                         LOADL_quick   ; inline operand = 9
  $8DE6  8B 1E                      BYTE_LOADR_imm1        +30
  $8DE8  B9                         SMOD
  $8DE9  B3                         PUSHL
  $8DEA  66                         PUSH_qimm   ; inline operand = 6
  $8DEB  68                         PUSH_qimm   ; inline operand = 8
  $8DEC  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $8DF0  62                         PUSH_qimm   ; inline operand = 2
  $8DF1  64                         PUSH_qimm   ; inline operand = 4
  $8DF2  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8DF6  B3                         PUSHL
  $8DF7  60                         PUSH_qimm   ; inline operand = 0
  $8DF8  3B                         PUSH_quick   ; inline operand = 11
  $8DF9  61                         PUSH_qimm   ; inline operand = 1
  $8DFA  8D 12                      BYTE_PUSH_imm1         +18
  $8DFC  09                         LOADL_quick   ; inline operand = 9
  $8DFD  8F 1D                      BYTE_ADD_imm1          +29
  $8DFF  8B 1E                      BYTE_LOADR_imm1        +30
  $8E01  B9                         SMOD
  $8E02  B3                         PUSHL
  $8E03  66                         PUSH_qimm   ; inline operand = 6
  $8E04  69                         PUSH_qimm   ; inline operand = 9
  $8E05  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8E09  64                         PUSH_qimm   ; inline operand = 4
  $8E0A  E9 F9 89 02                CALL_abs_imm1          $89F9 {bytecode}, $02
  $8E0E  A4 90 73                   LOADL_abs              $7390
  $8E11  D8 15 8E                   JUMPF_abs              $8E15
  $8E14  CF                         RETURN
 >$8E15  06                         LOADL_quick   ; inline operand = 6
  $8E16  D0                         INC
  $8E17  26                         STORE_quick   ; inline operand = 6
  $8E18  06                         LOADL_quick   ; inline operand = 6
  $8E19  58                         LOADR_qimm   ; inline operand = 8
  $8E1A  C2                         SCMPLT
  $8E1B  D7 BB 8D                   JUMPT_abs              $8DBB
  $8E1E  09                         LOADL_quick   ; inline operand = 9
  $8E1F  D0                         INC
  $8E20  29                         STORE_quick   ; inline operand = 9
  $8E21  40                         LOADL_qimm   ; inline operand = 0
  $8E22  26                         STORE_quick   ; inline operand = 6
 >$8E23  0A                         LOADL_quick   ; inline operand = 10
  $8E24  D0                         INC
  $8E25  2A                         STORE_quick   ; inline operand = 10
  $8E26  0A                         LOADL_quick   ; inline operand = 10
  $8E27  8C FF 00                   LOADR_imm2             $00FF
  $8E2A  DA                         AND
  $8E2B  8C EF 00                   LOADR_imm2             $00EF
  $8E2E  C8                         UCMPGT
  $8E2F  D8 40 8E                   JUMPF_abs              $8E40
  $8E32  8A 00 FF                   LOADL_imm2             $FF00
  $8E35  CD                         SWAP
  $8E36  0A                         LOADL_quick   ; inline operand = 10
  $8E37  DA                         AND
  $8E38  2A                         STORE_quick   ; inline operand = 10
  $8E39  8A 00 01                   LOADL_imm2             $0100
  $8E3C  CD                         SWAP
  $8E3D  0A                         LOADL_quick   ; inline operand = 10
  $8E3E  DC                         XOR
  $8E3F  2A                         STORE_quick   ; inline operand = 10
 >$8E40  3A                         PUSH_quick   ; inline operand = 10
  $8E41  60                         PUSH_qimm   ; inline operand = 0
  $8E42  8D 12                      BYTE_PUSH_imm1         +18
  $8E44  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $8E48  60                         PUSH_qimm   ; inline operand = 0
  $8E49  60                         PUSH_qimm   ; inline operand = 0
  $8E4A  61                         PUSH_qimm   ; inline operand = 1
  $8E4B  8D 12                      BYTE_PUSH_imm1         +18
  $8E4D  09                         LOADL_quick   ; inline operand = 9
  $8E4E  8B 1E                      BYTE_LOADR_imm1        +30
  $8E50  B9                         SMOD
  $8E51  B3                         PUSHL
  $8E52  66                         PUSH_qimm   ; inline operand = 6
  $8E53  68                         PUSH_qimm   ; inline operand = 8
  $8E54  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $8E58  62                         PUSH_qimm   ; inline operand = 2
  $8E59  64                         PUSH_qimm   ; inline operand = 4
  $8E5A  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8E5E  B3                         PUSHL
  $8E5F  60                         PUSH_qimm   ; inline operand = 0
  $8E60  8E 66 91                   PUSH_imm2              $9166
  $8E63  61                         PUSH_qimm   ; inline operand = 1
  $8E64  8D 12                      BYTE_PUSH_imm1         +18
  $8E66  09                         LOADL_quick   ; inline operand = 9
  $8E67  8F 1D                      BYTE_ADD_imm1          +29
  $8E69  8B 1E                      BYTE_LOADR_imm1        +30
  $8E6B  B9                         SMOD
  $8E6C  B3                         PUSHL
  $8E6D  66                         PUSH_qimm   ; inline operand = 6
  $8E6E  69                         PUSH_qimm   ; inline operand = 9
  $8E6F  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8E73  64                         PUSH_qimm   ; inline operand = 4
  $8E74  E9 F9 89 02                CALL_abs_imm1          $89F9 {bytecode}, $02
  $8E78  A4 90 73                   LOADL_abs              $7390
  $8E7B  D8 7F 8E                   JUMPF_abs              $8E7F
  $8E7E  CF                         RETURN
 >$8E7F  06                         LOADL_quick   ; inline operand = 6
  $8E80  D0                         INC
  $8E81  26                         STORE_quick   ; inline operand = 6
  $8E82  06                         LOADL_quick   ; inline operand = 6
  $8E83  58                         LOADR_qimm   ; inline operand = 8
  $8E84  C2                         SCMPLT
  $8E85  D7 23 8E                   JUMPT_abs              $8E23
  $8E88  89 12                      BYTE_LOADL_imm1        +18
  $8E8A  CD                         SWAP
  $8E8B  0B                         LOADL_quick   ; inline operand = 11
  $8E8C  BB                         ADD
  $8E8D  2B                         STORE_quick   ; inline operand = 11
  $8E8E  09                         LOADL_quick   ; inline operand = 9
  $8E8F  D0                         INC
  $8E90  29                         STORE_quick   ; inline operand = 9
  $8E91  09                         LOADL_quick   ; inline operand = 9
  $8E92  8B 5A                      BYTE_LOADR_imm1        +90
  $8E94  C0                         CMPEQ
  $8E95  D8 A7 8E                   JUMPF_abs              $8EA7
  $8E98  8D 14                      BYTE_PUSH_imm1         +20
  $8E9A  8D 15                      BYTE_PUSH_imm1         +21
  $8E9C  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8EA0  60                         PUSH_qimm   ; inline operand = 0
  $8EA1  8D 16                      BYTE_PUSH_imm1         +22
  $8EA3  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
 >$8EA7  D6 B1 8D                   JUMP_abs               $8DB1
 >$8EAA  AC 19 8C                   CALL_abs               $8C19 {bytecode}
  $8EAD  CF                         RETURN

; ============================================================
; sub $8EAE   (frame_off=-6, body @ $8EB3)   [PRG $04EAE]
; ============================================================
  $8EB3  40                         LOADL_qimm   ; inline operand = 0
  $8EB4  A8 90 73                   STORE_abs              $7390
  $8EB7  60                         PUSH_qimm   ; inline operand = 0
  $8EB8  60                         PUSH_qimm   ; inline operand = 0
  $8EB9  60                         PUSH_qimm   ; inline operand = 0
  $8EBA  67                         PUSH_qimm   ; inline operand = 7
  $8EBB  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8EBF  61                         PUSH_qimm   ; inline operand = 1
  $8EC0  8D 15                      BYTE_PUSH_imm1         +21
  $8EC2  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8EC6  60                         PUSH_qimm   ; inline operand = 0
  $8EC7  8D 16                      BYTE_PUSH_imm1         +22
  $8EC9  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8ECD  8D 37                      BYTE_PUSH_imm1         +55
  $8ECF  E9 F9 89 02                CALL_abs_imm1          $89F9 {bytecode}, $02
  $8ED3  8D 10                      BYTE_PUSH_imm1         +16
  $8ED5  60                         PUSH_qimm   ; inline operand = 0
  $8ED6  8E 3E 91                   PUSH_imm2              $913E
  $8ED9  66                         PUSH_qimm   ; inline operand = 6
  $8EDA  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8EDE  8E E2 00                   PUSH_imm2              $00E2
  $8EE1  8E 40 A3                   PUSH_imm2              $A340
  $8EE4  8E 64 A2                   PUSH_imm2              $A264
  $8EE7  6A                         PUSH_qimm   ; inline operand = 10
  $8EE8  8D 16                      BYTE_PUSH_imm1         +22
  $8EEA  64                         PUSH_qimm   ; inline operand = 4
  $8EEB  65                         PUSH_qimm   ; inline operand = 5
  $8EEC  69                         PUSH_qimm   ; inline operand = 9
  $8EED  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8EF1  8E E2 00                   PUSH_imm2              $00E2
  $8EF4  8E A4 A1                   PUSH_imm2              $A1A4
  $8EF7  8E 2C A1                   PUSH_imm2              $A12C
  $8EFA  6C                         PUSH_qimm   ; inline operand = 12
  $8EFB  6A                         PUSH_qimm   ; inline operand = 10
  $8EFC  6B                         PUSH_qimm   ; inline operand = 11
  $8EFD  6B                         PUSH_qimm   ; inline operand = 11
  $8EFE  69                         PUSH_qimm   ; inline operand = 9
  $8EFF  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8F03  AC C6 8A                   CALL_abs               $8AC6 {bytecode}
  $8F06  8D 32                      BYTE_PUSH_imm1         +50
  $8F08  E9 F9 89 02                CALL_abs_imm1          $89F9 {bytecode}, $02
  $8F0C  8E E2 00                   PUSH_imm2              $00E2
  $8F0F  8E 20 A8                   PUSH_imm2              $A820
  $8F12  8E 04 A8                   PUSH_imm2              $A804
  $8F15  61                         PUSH_qimm   ; inline operand = 1
  $8F16  8D 1C                      BYTE_PUSH_imm1         +28
  $8F18  8D 1A                      BYTE_PUSH_imm1         +26
  $8F1A  62                         PUSH_qimm   ; inline operand = 2
  $8F1B  69                         PUSH_qimm   ; inline operand = 9
  $8F1C  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8F20  8D 50                      BYTE_PUSH_imm1         +80
  $8F22  8D 11                      BYTE_PUSH_imm1         +17
  $8F24  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
 >$8F28  8D 18                      BYTE_PUSH_imm1         +24
  $8F2A  E9 D4 EE 02                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $02
  $8F2E  D8 40 8F                   JUMPF_abs              $8F40
  $8F31  61                         PUSH_qimm   ; inline operand = 1
  $8F32  E9 F9 89 02                CALL_abs_imm1          $89F9 {bytecode}, $02
  $8F36  A4 90 73                   LOADL_abs              $7390
  $8F39  D8 3D 8F                   JUMPF_abs              $8F3D
  $8F3C  CF                         RETURN
 >$8F3D  D6 28 8F                   JUMP_abs               $8F28
 >$8F40  8D 17                      BYTE_PUSH_imm1         +23
  $8F42  67                         PUSH_qimm   ; inline operand = 7
  $8F43  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8F47  61                         PUSH_qimm   ; inline operand = 1
  $8F48  8E 19 9C                   PUSH_imm2              $9C19
  $8F4B  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8F4F  8E D0 07                   PUSH_imm2              $07D0
  $8F52  E9 F9 89 02                CALL_abs_imm1          $89F9 {bytecode}, $02
  $8F56  CF                         RETURN

; ============================================================
; sub $8F57   (frame_off=+0, body @ $8F5C)   [PRG $04F57]
; ============================================================
  $8F5C  61                         PUSH_qimm   ; inline operand = 1
  $8F5D  61                         PUSH_qimm   ; inline operand = 1
  $8F5E  60                         PUSH_qimm   ; inline operand = 0
  $8F5F  61                         PUSH_qimm   ; inline operand = 1
  $8F60  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8F64  40                         LOADL_qimm   ; inline operand = 0
  $8F65  A8 90 73                   STORE_abs              $7390
  $8F68  AC 70 8C                   CALL_abs               $8C70 {bytecode}
  $8F6B  A4 90 73                   LOADL_abs              $7390
  $8F6E  D7 95 8F                   JUMPT_abs              $8F95
  $8F71  AC 61 8D                   CALL_abs               $8D61 {bytecode}
  $8F74  8D 17                      BYTE_PUSH_imm1         +23
  $8F76  E9 D4 EE 02                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $02
  $8F7A  8D 20                      BYTE_PUSH_imm1         +32
  $8F7C  60                         PUSH_qimm   ; inline operand = 0
  $8F7D  8E 3E 91                   PUSH_imm2              $913E
  $8F80  66                         PUSH_qimm   ; inline operand = 6
  $8F81  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8F85  60                         PUSH_qimm   ; inline operand = 0
  $8F86  60                         PUSH_qimm   ; inline operand = 0
  $8F87  8D 12                      BYTE_PUSH_imm1         +18
  $8F89  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $8F8D  8D 40                      BYTE_PUSH_imm1         +64
  $8F8F  60                         PUSH_qimm   ; inline operand = 0
  $8F90  6C                         PUSH_qimm   ; inline operand = 12
  $8F91  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
 >$8F95  AC AE 8E                   CALL_abs               $8EAE {bytecode}
  $8F98  8D 17                      BYTE_PUSH_imm1         +23
  $8F9A  E9 D4 EE 02                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $02
  $8F9E  60                         PUSH_qimm   ; inline operand = 0
  $8F9F  60                         PUSH_qimm   ; inline operand = 0
  $8FA0  60                         PUSH_qimm   ; inline operand = 0
  $8FA1  67                         PUSH_qimm   ; inline operand = 7
  $8FA2  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8FA6  60                         PUSH_qimm   ; inline operand = 0
  $8FA7  60                         PUSH_qimm   ; inline operand = 0
  $8FA8  8D 12                      BYTE_PUSH_imm1         +18
  $8FAA  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $8FAE  8E 82 73                   PUSH_imm2              $7382
  $8FB1  65                         PUSH_qimm   ; inline operand = 5
  $8FB2  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8FB6  8D 20                      BYTE_PUSH_imm1         +32
  $8FB8  60                         PUSH_qimm   ; inline operand = 0
  $8FB9  8E 66 F3                   PUSH_imm2              $F366
  $8FBC  66                         PUSH_qimm   ; inline operand = 6
  $8FBD  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8FC1  CF                         RETURN

