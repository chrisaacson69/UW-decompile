VM bytecode disassembly
  ROM:          Uncharted Waters (USA).nes
  mode:         bulk dump of bank 20
  opcode spec:  vm-opcodes-v2.toml via nobunaga_vm.OPCODE_INFO (execution-validated lengths)
  labels:       0 CPU addresses named

  bank 20: found 25 bytecode-subroutine stubs

; ============================================================
; sub $8003   (frame_off=-6, body @ $8008)   [PRG $28003]
; ============================================================
  $8008  0C                         LOADL_quick   ; inline operand = 12
  $8009  8B 18                      BYTE_LOADR_imm1        +24
  $800B  B5                         MULT
  $800C  8C A4 6A                   LOADR_imm2             $6AA4
  $800F  BB                         ADD
  $8010  29                         STORE_quick   ; inline operand = 9
  $8011  40                         LOADL_qimm   ; inline operand = 0
  $8012  2B                         STORE_quick   ; inline operand = 11
  $8013  40                         LOADL_qimm   ; inline operand = 0
  $8014  D6 23 80                   JUMP_abs               $8023
 >$8017  0A                         LOADL_quick   ; inline operand = 10
  $8018  D2                         LSHIFT1
  $8019  19                         LOADR_quick   ; inline operand = 9
  $801A  BB                         ADD
  $801B  76                         ADD_qimm   ; inline operand = 6
  $801C  B0                         DEREF
  $801D  CD                         SWAP
  $801E  0B                         LOADL_quick   ; inline operand = 11
  $801F  BB                         ADD
  $8020  2B                         STORE_quick   ; inline operand = 11
  $8021  0A                         LOADL_quick   ; inline operand = 10
  $8022  D0                         INC
 >$8023  2A                         STORE_quick   ; inline operand = 10
  $8024  0A                         LOADL_quick   ; inline operand = 10
  $8025  55                         LOADR_qimm   ; inline operand = 5
  $8026  C6                         UCMPLT
  $8027  D7 17 80                   JUMPT_abs              $8017
  $802A  0B                         LOADL_quick   ; inline operand = 11
  $802B  CF                         RETURN

; ============================================================
; sub $802C   (frame_off=-2, body @ $8031)   [PRG $2802C]
; ============================================================
  $8031  0C                         LOADL_quick   ; inline operand = 12
  $8032  8B 18                      BYTE_LOADR_imm1        +24
  $8034  B5                         MULT
  $8035  8C A4 6A                   LOADR_imm2             $6AA4
  $8038  BB                         ADD
  $8039  2B                         STORE_quick   ; inline operand = 11
  $803A  0B                         LOADL_quick   ; inline operand = 11
  $803B  8F 14                      BYTE_ADD_imm1          +20
  $803D  B0                         DEREF
  $803E  B3                         PUSHL
  $803F  0B                         LOADL_quick   ; inline operand = 11
  $8040  8F 12                      BYTE_ADD_imm1          +18
  $8042  B0                         DEREF
  $8043  5A                         LOADR_qimm   ; inline operand = 10
  $8044  B6                         SDIV
  $8045  B3                         PUSHL
  $8046  0B                         LOADL_quick   ; inline operand = 11
  $8047  8F 10                      BYTE_ADD_imm1          +16
  $8049  B0                         DEREF
  $804A  5A                         LOADR_qimm   ; inline operand = 10
  $804B  B6                         SDIV
  $804C  B3                         PUSHL
  $804D  3C                         PUSH_quick   ; inline operand = 12
  $804E  E9 03 80 02                CALL_abs_imm1          $8003 {bytecode}, $02
  $8052  B4                         POPR
  $8053  BB                         ADD
  $8054  B4                         POPR
  $8055  BB                         ADD
  $8056  B4                         POPR
  $8057  BB                         ADD
  $8058  CF                         RETURN

; ============================================================
; sub $8059   (frame_off=+0, body @ $805E)   [PRG $28059]
; ============================================================
  $805E  0C                         LOADL_quick   ; inline operand = 12
  $805F  D2                         LSHIFT1
  $8060  78                         ADD_qimm   ; inline operand = 8
  $8061  B3                         PUSHL
  $8062  8D 12                      BYTE_PUSH_imm1         +18
  $8064  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8068  3D                         PUSH_quick   ; inline operand = 13
  $8069  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $806D  8F 12                      BYTE_ADD_imm1          +18
  $806F  B3                         PUSHL
  $8070  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8074  B3                         PUSHL
  $8075  3D                         PUSH_quick   ; inline operand = 13
  $8076  E9 EA D9 02                CALL_abs_imm1          $D9EA {native}, $02
  $807A  B3                         PUSHL
  $807B  8E CA 94                   PUSH_imm2              $94CA
  $807E  E9 19 C7 06                CALL_abs_imm1          $C719 {native}, $06
  $8082  8D 11                      BYTE_PUSH_imm1         +17
  $8084  68                         PUSH_qimm   ; inline operand = 8
  $8085  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8089  AA 6B 66                   PUSH_abs               $666B
  $808C  8E D2 94                   PUSH_imm2              $94D2
  $808F  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8093  CF                         RETURN

; ============================================================
; sub $8094   (frame_off=-12, body @ $8099)   [PRG $28094]
; ============================================================
  $8099  89 FF                      BYTE_LOADL_imm1        -1
  $809B  A8 64 70                   STORE_abs              $7064
  $809E  8E E7 00                   PUSH_imm2              $00E7
  $80A1  8E E0 AE                   PUSH_imm2              $AEE0
  $80A4  8E 6A AD                   PUSH_imm2              $AD6A
  $80A7  8D 11                      BYTE_PUSH_imm1         +17
  $80A9  8D 16                      BYTE_PUSH_imm1         +22
  $80AB  63                         PUSH_qimm   ; inline operand = 3
  $80AC  65                         PUSH_qimm   ; inline operand = 5
  $80AD  69                         PUSH_qimm   ; inline operand = 9
  $80AE  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $80B2  60                         PUSH_qimm   ; inline operand = 0
  $80B3  8E F9 00                   PUSH_imm2              $00F9
  $80B6  61                         PUSH_qimm   ; inline operand = 1
  $80B7  8D 14                      BYTE_PUSH_imm1         +20
  $80B9  66                         PUSH_qimm   ; inline operand = 6
  $80BA  66                         PUSH_qimm   ; inline operand = 6
  $80BB  68                         PUSH_qimm   ; inline operand = 8
  $80BC  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $80C0  64                         PUSH_qimm   ; inline operand = 4
  $80C1  67                         PUSH_qimm   ; inline operand = 7
  $80C2  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $80C6  61                         PUSH_qimm   ; inline operand = 1
  $80C7  8E E2 94                   PUSH_imm2              $94E2
  $80CA  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $80CE  40                         LOADL_qimm   ; inline operand = 0
  $80CF  D6 11 81                   JUMP_abs               $8111
 >$80D2  0D                         LOADL_quick   ; inline operand = 13
  $80D3  16                         LOADR_quick   ; inline operand = 6
  $80D4  BB                         ADD
  $80D5  D3                         BYTE_DEREF
  $80D6  B3                         PUSHL
  $80D7  36                         PUSH_quick   ; inline operand = 6
  $80D8  E9 59 80 04                CALL_abs_imm1          $8059 (market_draw_gold) {bytecode}, $04
  $80DC  DE F6 FF                   LEAL_far               $FFF6
  $80DF  B3                         PUSHL
  $80E0  06                         LOADL_quick   ; inline operand = 6
  $80E1  D2                         LSHIFT1
  $80E2  B4                         POPR
  $80E3  BB                         ADD
  $80E4  B3                         PUSHL
  $80E5  0D                         LOADL_quick   ; inline operand = 13
  $80E6  16                         LOADR_quick   ; inline operand = 6
  $80E7  BB                         ADD
  $80E8  D3                         BYTE_DEREF
  $80E9  57                         LOADR_qimm   ; inline operand = 7
  $80EA  B5                         MULT
  $80EB  8C 96 6C                   LOADR_imm2             $6C96
  $80EE  BB                         ADD
  $80EF  D3                         BYTE_DEREF
  $80F0  5F                         LOADR_qimm   ; inline operand = 15
  $80F1  DA                         AND
  $80F2  B3                         PUSHL
  $80F3  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $80F7  B1                         POPSTORE
  $80F8  06                         LOADL_quick   ; inline operand = 6
  $80F9  D2                         LSHIFT1
  $80FA  78                         ADD_qimm   ; inline operand = 8
  $80FB  B3                         PUSHL
  $80FC  67                         PUSH_qimm   ; inline operand = 7
  $80FD  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8101  DE F6 FF                   LEAL_far               $FFF6
  $8104  B3                         PUSHL
  $8105  06                         LOADL_quick   ; inline operand = 6
  $8106  D2                         LSHIFT1
  $8107  B4                         POPR
  $8108  BB                         ADD
  $8109  B0                         DEREF
  $810A  B3                         PUSHL
  $810B  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $810F  06                         LOADL_quick   ; inline operand = 6
  $8110  D0                         INC
 >$8111  26                         STORE_quick   ; inline operand = 6
  $8112  06                         LOADL_quick   ; inline operand = 6
  $8113  1C                         LOADR_quick   ; inline operand = 12
  $8114  C6                         UCMPLT
  $8115  D7 D2 80                   JUMPT_abs              $80D2
  $8118  CF                         RETURN

; ============================================================
; sub $8119   (frame_off=-29, body @ $811E)   [PRG $28119]
; ============================================================
  $811E  40                         LOADL_qimm   ; inline operand = 0
  $811F  2B                         STORE_quick   ; inline operand = 11
  $8120  60                         PUSH_qimm   ; inline operand = 0
  $8121  60                         PUSH_qimm   ; inline operand = 0
  $8122  6A                         PUSH_qimm   ; inline operand = 10
  $8123  8D 14                      BYTE_PUSH_imm1         +20
  $8125  67                         PUSH_qimm   ; inline operand = 7
  $8126  66                         PUSH_qimm   ; inline operand = 6
  $8127  68                         PUSH_qimm   ; inline operand = 8
  $8128  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $812C  A5 67 70                   BYTE_LOADL_abs         $7067
  $812F  5E                         LOADR_qimm   ; inline operand = 14
  $8130  B5                         MULT
  $8131  8C B2 67                   LOADR_imm2             $67B2
  $8134  BB                         ADD
  $8135  85 E5                      STORE_near             $E5
  $8137  7B                         ADD_qimm   ; inline operand = 11
  $8138  D3                         BYTE_DEREF
  $8139  8F 32                      BYTE_ADD_imm1          +50
  $813B  85 F5                      STORE_near             $F5
  $813D  0C                         LOADL_quick   ; inline operand = 12
  $813E  8B 18                      BYTE_LOADR_imm1        +24
  $8140  B5                         MULT
  $8141  8C A4 6A                   LOADR_imm2             $6AA4
  $8144  BB                         ADD
  $8145  85 E9                      STORE_near             $E9
  $8147  76                         ADD_qimm   ; inline operand = 6
  $8148  85 F1                      STORE_near             $F1
  $814A  81 E9                      LOADL_near             $E9
  $814C  D0                         INC
  $814D  28                         STORE_quick   ; inline operand = 8
  $814E  40                         LOADL_qimm   ; inline operand = 0
  $814F  29                         STORE_quick   ; inline operand = 9
  $8150  D6 66 82                   JUMP_abs               $8266
 >$8153  81 F1                      LOADL_near             $F1
  $8155  B0                         DEREF
  $8156  D8 5C 82                   JUMPF_abs              $825C
  $8159  0B                         LOADL_quick   ; inline operand = 11
  $815A  D7 99 81                   JUMPT_abs              $8199
  $815D  A5 67 70                   BYTE_LOADL_abs         $7067
  $8160  55                         LOADR_qimm   ; inline operand = 5
  $8161  B5                         MULT
  $8162  8C 0A B5                   LOADR_imm2             $B50A
  $8165  BB                         ADD
  $8166  85 E7                      STORE_near             $E7
  $8168  81 E7                      LOADL_near             $E7
  $816A  D0                         INC
  $816B  B3                         PUSHL
  $816C  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8170  A2 F7 FF                   BYTE_STORE_far         $FFF7
  $8173  81 E7                      LOADL_near             $E7
  $8175  72                         ADD_qimm   ; inline operand = 2
  $8176  B3                         PUSHL
  $8177  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $817B  85 EF                      STORE_near             $EF
  $817D  87 E7                      PUSH_near              $E7
  $817F  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8183  8B 58                      BYTE_LOADR_imm1        +88
  $8185  B5                         MULT
  $8186  8C 64 B8                   LOADR_imm2             $B864
  $8189  BB                         ADD
  $818A  85 E3                      STORE_near             $E3
  $818C  81 E5                      LOADL_near             $E5
  $818E  B0                         DEREF
  $818F  85 ED                      STORE_near             $ED
  $8191  81 E5                      LOADL_near             $E5
  $8193  7C                         ADD_qimm   ; inline operand = 12
  $8194  B0                         DEREF
  $8195  85 EB                      STORE_near             $EB
  $8197  41                         LOADL_qimm   ; inline operand = 1
  $8198  2B                         STORE_quick   ; inline operand = 11
 >$8199  09                         LOADL_quick   ; inline operand = 9
  $819A  D2                         LSHIFT1
  $819B  77                         ADD_qimm   ; inline operand = 7
  $819C  B3                         PUSHL
  $819D  67                         PUSH_qimm   ; inline operand = 7
  $819E  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $81A2  08                         LOADL_quick   ; inline operand = 8
  $81A3  D3                         BYTE_DEREF
  $81A4  D2                         LSHIFT1
  $81A5  83 E3                      LOADR_near             $E3
  $81A7  BB                         ADD
  $81A8  8F 24                      BYTE_ADD_imm1          +36
  $81AA  B3                         PUSHL
  $81AB  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $81AF  85 F3                      STORE_near             $F3
  $81B1  81 F5                      LOADL_near             $F5
  $81B3  B7 25                      LONG                   $25
  $81B5  B7 14                      LONG                   $14
  $81B7  81 F3                      LOADL_near             $F3
  $81B9  B7 25                      LONG                   $25
  $81BB  B7 15                      LONG                   $15
  $81BD  B7 01                      LONG                   $01
  $81BF  B7 19 64 00 00 00          LONG                   $19 $64 $00 $00 $00
  $81C5  B7 02                      LONG                   $02
  $81C7  B7 27                      LONG                   $27
  $81C9  85 F3                      STORE_near             $F3
  $81CB  08                         LOADL_quick   ; inline operand = 8
  $81CC  D3                         BYTE_DEREF
  $81CD  B3                         PUSHL
  $81CE  A0 F7 FF                   BYTE_LOADL_far         $FFF7
  $81D1  B4                         POPR
  $81D2  C0                         CMPEQ
  $81D3  D8 FE 81                   JUMPF_abs              $81FE
  $81D6  81 EF                      LOADL_near             $EF
  $81D8  8B 32                      BYTE_LOADR_imm1        +50
  $81DA  B5                         MULT
  $81DB  83 ED                      LOADR_near             $ED
  $81DD  C3                         SCMPLE
  $81DE  D8 FE 81                   JUMPF_abs              $81FE
  $81E1  81 F5                      LOADL_near             $F5
  $81E3  B7 25                      LONG                   $25
  $81E5  B7 14                      LONG                   $14
  $81E7  81 EB                      LOADL_near             $EB
  $81E9  B7 25                      LONG                   $25
  $81EB  B7 15                      LONG                   $15
  $81ED  B7 01                      LONG                   $01
  $81EF  B7 19 64 00 00 00          LONG                   $19 $64 $00 $00 $00
  $81F5  B7 02                      LONG                   $02
  $81F7  B7 27                      LONG                   $27
  $81F9  52                         LOADR_qimm   ; inline operand = 2
  $81FA  B6                         SDIV
  $81FB  D0                         INC
  $81FC  85 F3                      STORE_near             $F3
 >$81FE  09                         LOADL_quick   ; inline operand = 9
  $81FF  D2                         LSHIFT1
  $8200  1E                         LOADR_quick   ; inline operand = 14
  $8201  BB                         ADD
  $8202  B3                         PUSHL
  $8203  81 F3                      LOADL_near             $F3
  $8205  B1                         POPSTORE
  $8206  09                         LOADL_quick   ; inline operand = 9
  $8207  D2                         LSHIFT1
  $8208  1F                         LOADR_quick   ; inline operand = 15
  $8209  BB                         ADD
  $820A  B3                         PUSHL
  $820B  81 F1                      LOADL_near             $F1
  $820D  B0                         DEREF
  $820E  B1                         POPSTORE
  $820F  09                         LOADL_quick   ; inline operand = 9
  $8210  D2                         LSHIFT1
  $8211  1D                         LOADR_quick   ; inline operand = 13
  $8212  BB                         ADD
  $8213  B3                         PUSHL
  $8214  08                         LOADL_quick   ; inline operand = 8
  $8215  D3                         BYTE_DEREF
  $8216  D2                         LSHIFT1
  $8217  8C F5 94                   LOADR_imm2             $94F5
  $821A  BB                         ADD
  $821B  B0                         DEREF
  $821C  B1                         POPSTORE
  $821D  81 13                      LOADL_near             $13
  $821F  19                         LOADR_quick   ; inline operand = 9
  $8220  BB                         ADD
  $8221  B3                         PUSHL
  $8222  0A                         LOADL_quick   ; inline operand = 10
  $8223  D4                         BYTE_POPSTORE
  $8224  09                         LOADL_quick   ; inline operand = 9
  $8225  D2                         LSHIFT1
  $8226  1D                         LOADR_quick   ; inline operand = 13
  $8227  BB                         ADD
  $8228  B0                         DEREF
  $8229  B3                         PUSHL
  $822A  8E DF 95                   PUSH_imm2              $95DF
  $822D  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8231  09                         LOADL_quick   ; inline operand = 9
  $8232  D2                         LSHIFT1
  $8233  77                         ADD_qimm   ; inline operand = 7
  $8234  B3                         PUSHL
  $8235  8D 12                      BYTE_PUSH_imm1         +18
  $8237  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $823B  81 F1                      LOADL_near             $F1
  $823D  B0                         DEREF
  $823E  B3                         PUSHL
  $823F  8E E2 95                   PUSH_imm2              $95E2
  $8242  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8246  09                         LOADL_quick   ; inline operand = 9
  $8247  D2                         LSHIFT1
  $8248  77                         ADD_qimm   ; inline operand = 7
  $8249  B3                         PUSHL
  $824A  8D 16                      BYTE_PUSH_imm1         +22
  $824C  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8250  87 F3                      PUSH_near              $F3
  $8252  8E E6 95                   PUSH_imm2              $95E6
  $8255  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8259  09                         LOADL_quick   ; inline operand = 9
  $825A  D0                         INC
  $825B  29                         STORE_quick   ; inline operand = 9
 >$825C  81 F1                      LOADL_near             $F1
  $825E  72                         ADD_qimm   ; inline operand = 2
  $825F  85 F1                      STORE_near             $F1
  $8261  08                         LOADL_quick   ; inline operand = 8
  $8262  D0                         INC
  $8263  28                         STORE_quick   ; inline operand = 8
  $8264  0A                         LOADL_quick   ; inline operand = 10
  $8265  D0                         INC
 >$8266  2A                         STORE_quick   ; inline operand = 10
  $8267  0A                         LOADL_quick   ; inline operand = 10
  $8268  55                         LOADR_qimm   ; inline operand = 5
  $8269  C6                         UCMPLT
  $826A  D7 53 81                   JUMPT_abs              $8153
  $826D  09                         LOADL_quick   ; inline operand = 9
  $826E  CF                         RETURN

; ============================================================
; sub $826F   (frame_off=-47, body @ $8274)   [PRG $2826F]
; ============================================================
  $8274  3C                         PUSH_quick   ; inline operand = 12
  $8275  E9 03 80 02                CALL_abs_imm1          $8003 {bytecode}, $02
  $8279  D7 8B 82                   JUMPT_abs              $828B
  $827C  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $827F  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8282  8E EA 95                   PUSH_imm2              $95EA
  $8285  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8289  40                         LOADL_qimm   ; inline operand = 0
  $828A  CF                         RETURN
 >$828B  A4 6B 66                   LOADL_abs              $666B
  $828E  8C 60 EA                   LOADR_imm2             $EA60
  $8291  C0                         CMPEQ
  $8292  D8 A4 82                   JUMPF_abs              $82A4
  $8295  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8298  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $829B  8E 09 96                   PUSH_imm2              $9609
  $829E  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $82A2  40                         LOADL_qimm   ; inline operand = 0
  $82A3  CF                         RETURN
 >$82A4  40                         LOADL_qimm   ; inline operand = 0
  $82A5  85 D3                      STORE_near             $D3
  $82A7  60                         PUSH_qimm   ; inline operand = 0
  $82A8  60                         PUSH_qimm   ; inline operand = 0
  $82A9  6A                         PUSH_qimm   ; inline operand = 10
  $82AA  8D 14                      BYTE_PUSH_imm1         +20
  $82AC  67                         PUSH_qimm   ; inline operand = 7
  $82AD  66                         PUSH_qimm   ; inline operand = 6
  $82AE  68                         PUSH_qimm   ; inline operand = 8
  $82AF  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $82B3  64                         PUSH_qimm   ; inline operand = 4
  $82B4  67                         PUSH_qimm   ; inline operand = 7
  $82B5  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $82B9  61                         PUSH_qimm   ; inline operand = 1
  $82BA  8E 38 96                   PUSH_imm2              $9638
  $82BD  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $82C1  60                         PUSH_qimm   ; inline operand = 0
  $82C2  8E F9 00                   PUSH_imm2              $00F9
  $82C5  61                         PUSH_qimm   ; inline operand = 1
  $82C6  8D 14                      BYTE_PUSH_imm1         +20
  $82C8  66                         PUSH_qimm   ; inline operand = 6
  $82C9  66                         PUSH_qimm   ; inline operand = 6
  $82CA  68                         PUSH_qimm   ; inline operand = 8
  $82CB  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $82CF  8D 11                      BYTE_PUSH_imm1         +17
  $82D1  68                         PUSH_qimm   ; inline operand = 8
  $82D2  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $82D6  AA 6B 66                   PUSH_abs               $666B
  $82D9  8E 4C 96                   PUSH_imm2              $964C
  $82DC  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $82E0  41                         LOADL_qimm   ; inline operand = 1
  $82E1  85 D1                      STORE_near             $D1
 >$82E3  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $82E6  61                         PUSH_qimm   ; inline operand = 1
  $82E7  8E 5C 96                   PUSH_imm2              $965C
  $82EA  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $82EE  81 D1                      LOADL_near             $D1
  $82F0  D8 09 83                   JUMPF_abs              $8309
  $82F3  DE ED FF                   LEAL_far               $FFED
  $82F6  B3                         PUSHL
  $82F7  DE D9 FF                   LEAL_far               $FFD9
  $82FA  B3                         PUSHL
  $82FB  DE E3 FF                   LEAL_far               $FFE3
  $82FE  B3                         PUSHL
  $82FF  DE F2 FF                   LEAL_far               $FFF2
  $8302  B3                         PUSHL
  $8303  3C                         PUSH_quick   ; inline operand = 12
  $8304  E9 19 81 0A                CALL_abs_imm1          $8119 (market_draw_goods_list) {bytecode}, $0A
  $8308  2B                         STORE_quick   ; inline operand = 11
 >$8309  3B                         PUSH_quick   ; inline operand = 11
  $830A  62                         PUSH_qimm   ; inline operand = 2
  $830B  68                         PUSH_qimm   ; inline operand = 8
  $830C  66                         PUSH_qimm   ; inline operand = 6
  $830D  E9 16 A2 08                CALL_abs_imm1          $A216 {native}, $08
  $8311  2A                         STORE_quick   ; inline operand = 10
  $8312  0A                         LOADL_quick   ; inline operand = 10
  $8313  8C FF 00                   LOADR_imm2             $00FF
  $8316  C1                         CMPNE
  $8317  D8 70 84                   JUMPF_abs              $8470
  $831A  A4 6B 66                   LOADL_abs              $666B
  $831D  B7 26                      LONG                   $26
  $831F  B7 14                      LONG                   $14
  $8321  DE E3 FF                   LEAL_far               $FFE3
  $8324  B3                         PUSHL
  $8325  0A                         LOADL_quick   ; inline operand = 10
  $8326  D2                         LSHIFT1
  $8327  B4                         POPR
  $8328  BB                         ADD
  $8329  B0                         DEREF
  $832A  B7 25                      LONG                   $25
  $832C  B7 14                      LONG                   $14
  $832E  DE D9 FF                   LEAL_far               $FFD9
  $8331  B3                         PUSHL
  $8332  0A                         LOADL_quick   ; inline operand = 10
  $8333  D2                         LSHIFT1
  $8334  B4                         POPR
  $8335  BB                         ADD
  $8336  B0                         DEREF
  $8337  B7 25                      LONG                   $25
  $8339  B7 15                      LONG                   $15
  $833B  B7 01                      LONG                   $01
  $833D  B7 15                      LONG                   $15
  $833F  B7 03                      LONG                   $03
  $8341  B7 19 60 EA 00 00          LONG                   $19 $60 $EA $00 $00
  $8347  B7 0A                      LONG                   $0A
  $8349  D8 7F 83                   JUMPF_abs              $837F
  $834C  8A 60 EA                   LOADL_imm2             $EA60
  $834F  A6 6B 66                   LOADR_abs              $666B
  $8352  BC                         SUB
  $8353  85 D7                      STORE_near             $D7
  $8355  DE E3 FF                   LEAL_far               $FFE3
  $8358  B3                         PUSHL
  $8359  0A                         LOADL_quick   ; inline operand = 10
  $835A  D2                         LSHIFT1
  $835B  B4                         POPR
  $835C  BB                         ADD
  $835D  B0                         DEREF
  $835E  B3                         PUSHL
  $835F  81 D7                      LOADL_near             $D7
  $8361  B4                         POPR
  $8362  B8                         UDIV
  $8363  B3                         PUSHL
  $8364  DE E3 FF                   LEAL_far               $FFE3
  $8367  B3                         PUSHL
  $8368  0A                         LOADL_quick   ; inline operand = 10
  $8369  D2                         LSHIFT1
  $836A  B4                         POPR
  $836B  BB                         ADD
  $836C  B0                         DEREF
  $836D  B3                         PUSHL
  $836E  81 D7                      LOADL_near             $D7
  $8370  B4                         POPR
  $8371  BA                         UMOD
  $8372  D8 79 83                   JUMPF_abs              $8379
  $8375  41                         LOADL_qimm   ; inline operand = 1
  $8376  D6 7A 83                   JUMP_abs               $837A
 >$8379  40                         LOADL_qimm   ; inline operand = 0
 >$837A  B4                         POPR
  $837B  BB                         ADD
  $837C  D6 88 83                   JUMP_abs               $8388
 >$837F  DE D9 FF                   LEAL_far               $FFD9
  $8382  B3                         PUSHL
  $8383  0A                         LOADL_quick   ; inline operand = 10
  $8384  D2                         LSHIFT1
  $8385  B4                         POPR
  $8386  BB                         ADD
  $8387  B0                         DEREF
 >$8388  85 D7                      STORE_near             $D7
  $838A  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $838D  DE F2 FF                   LEAL_far               $FFF2
  $8390  B3                         PUSHL
  $8391  0A                         LOADL_quick   ; inline operand = 10
  $8392  D2                         LSHIFT1
  $8393  B4                         POPR
  $8394  BB                         ADD
  $8395  B0                         DEREF
  $8396  B3                         PUSHL
  $8397  8E 71 96                   PUSH_imm2              $9671
  $839A  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $839E  87 D7                      PUSH_near              $D7
  $83A0  61                         PUSH_qimm   ; inline operand = 1
  $83A1  8E 8B 96                   PUSH_imm2              $968B
  $83A4  E9 12 CD 06                CALL_abs_imm1          $CD12 {native}, $06
  $83A8  85 D5                      STORE_near             $D5
  $83AA  81 D5                      LOADL_near             $D5
  $83AC  8B FF                      BYTE_LOADR_imm1        -1
  $83AE  C1                         CMPNE
  $83AF  D8 6C 84                   JUMPF_abs              $846C
  $83B2  87 D5                      PUSH_near              $D5
  $83B4  0C                         LOADL_quick   ; inline operand = 12
  $83B5  8B 18                      BYTE_LOADR_imm1        +24
  $83B7  B5                         MULT
  $83B8  B3                         PUSHL
  $83B9  DE ED FF                   LEAL_far               $FFED
  $83BC  B3                         PUSHL
  $83BD  0A                         LOADL_quick   ; inline operand = 10
  $83BE  B4                         POPR
  $83BF  BB                         ADD
  $83C0  D3                         BYTE_DEREF
  $83C1  D2                         LSHIFT1
  $83C2  B4                         POPR
  $83C3  BB                         ADD
  $83C4  8C AA 6A                   LOADR_imm2             $6AAA
  $83C7  BB                         ADD
  $83C8  B4                         POPR
  $83C9  B3                         PUSHL
  $83CA  B0                         DEREF
  $83CB  BC                         SUB
  $83CC  B1                         POPSTORE
  $83CD  DE E3 FF                   LEAL_far               $FFE3
  $83D0  B3                         PUSHL
  $83D1  0A                         LOADL_quick   ; inline operand = 10
  $83D2  D2                         LSHIFT1
  $83D3  B4                         POPR
  $83D4  BB                         ADD
  $83D5  B0                         DEREF
  $83D6  83 D5                      LOADR_near             $D5
  $83D8  B5                         MULT
  $83D9  CD                         SWAP
  $83DA  A4 6B 66                   LOADL_abs              $666B
  $83DD  BB                         ADD
  $83DE  A8 6B 66                   STORE_abs              $666B
  $83E1  41                         LOADL_qimm   ; inline operand = 1
  $83E2  85 D3                      STORE_near             $D3
  $83E4  A4 6B 66                   LOADL_abs              $666B
  $83E7  8C 60 EA                   LOADR_imm2             $EA60
  $83EA  C8                         UCMPGT
  $83EB  D8 F4 83                   JUMPF_abs              $83F4
  $83EE  8A 60 EA                   LOADL_imm2             $EA60
  $83F1  A8 6B 66                   STORE_abs              $666B
 >$83F4  8D 11                      BYTE_PUSH_imm1         +17
  $83F6  68                         PUSH_qimm   ; inline operand = 8
  $83F7  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $83FB  AA 6B 66                   PUSH_abs               $666B
  $83FE  8E 8C 96                   PUSH_imm2              $968C
  $8401  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8405  DE E3 FF                   LEAL_far               $FFE3
  $8408  B3                         PUSHL
  $8409  0A                         LOADL_quick   ; inline operand = 10
  $840A  D2                         LSHIFT1
  $840B  B4                         POPR
  $840C  BB                         ADD
  $840D  B0                         DEREF
  $840E  83 D5                      LOADR_near             $D5
  $8410  B5                         MULT
  $8411  8C E8 03                   LOADR_imm2             $03E8
  $8414  B8                         UDIV
  $8415  5A                         LOADR_qimm   ; inline operand = 10
  $8416  C8                         UCMPGT
  $8417  D8 1F 84                   JUMPF_abs              $841F
  $841A  3D                         PUSH_quick   ; inline operand = 13
  $841B  4A                         LOADL_qimm   ; inline operand = 10
  $841C  D6 30 84                   JUMP_abs               $8430
 >$841F  3D                         PUSH_quick   ; inline operand = 13
  $8420  DE E3 FF                   LEAL_far               $FFE3
  $8423  B3                         PUSHL
  $8424  0A                         LOADL_quick   ; inline operand = 10
  $8425  D2                         LSHIFT1
  $8426  B4                         POPR
  $8427  BB                         ADD
  $8428  B0                         DEREF
  $8429  83 D5                      LOADR_near             $D5
  $842B  B5                         MULT
  $842C  8C E8 03                   LOADR_imm2             $03E8
  $842F  B8                         UDIV
 >$8430  D4                         BYTE_POPSTORE
  $8431  A4 6B 66                   LOADL_abs              $666B
  $8434  8C 60 EA                   LOADR_imm2             $EA60
  $8437  C0                         CMPEQ
  $8438  D8 4B 84                   JUMPF_abs              $844B
  $843B  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $843E  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8441  8E 9C 96                   PUSH_imm2              $969C
  $8444  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8448  81 D3                      LOADL_near             $D3
  $844A  CF                         RETURN
 >$844B  3C                         PUSH_quick   ; inline operand = 12
  $844C  E9 03 80 02                CALL_abs_imm1          $8003 {bytecode}, $02
  $8450  D7 63 84                   JUMPT_abs              $8463
  $8453  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8456  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8459  8E BC 96                   PUSH_imm2              $96BC
  $845C  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8460  81 D3                      LOADL_near             $D3
  $8462  CF                         RETURN
 >$8463  40                         LOADL_qimm   ; inline operand = 0
  $8464  85 D3                      STORE_near             $D3
  $8466  41                         LOADL_qimm   ; inline operand = 1
 >$8467  85 D1                      STORE_near             $D1
  $8469  D6 75 84                   JUMP_abs               $8475
 >$846C  40                         LOADL_qimm   ; inline operand = 0
  $846D  D6 67 84                   JUMP_abs               $8467
 >$8470  8A FF 00                   LOADL_imm2             $00FF
  $8473  85 D3                      STORE_near             $D3
 >$8475  0A                         LOADL_quick   ; inline operand = 10
  $8476  8C FF 00                   LOADR_imm2             $00FF
  $8479  C0                         CMPEQ
  $847A  D7 82 84                   JUMPT_abs              $8482
  $847D  81 D3                      LOADL_near             $D3
  $847F  D8 E3 82                   JUMPF_abs              $82E3
 >$8482  81 D3                      LOADL_near             $D3
  $8484  CF                         RETURN

; ============================================================
; sub $8485   (frame_off=-29, body @ $848A)   [PRG $28485]
; ============================================================
  $848A  3C                         PUSH_quick   ; inline operand = 12
  $848B  40                         LOADL_qimm   ; inline operand = 0
  $848C  D4                         BYTE_POPSTORE
  $848D  41                         LOADL_qimm   ; inline operand = 1
  $848E  85 E3                      STORE_near             $E3
  $8490  DE FB FF                   LEAL_far               $FFFB
  $8493  B3                         PUSHL
  $8494  60                         PUSH_qimm   ; inline operand = 0
  $8495  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $8499  85 EF                      STORE_near             $EF
  $849B  40                         LOADL_qimm   ; inline operand = 0
  $849C  85 E9                      STORE_near             $E9
  $849E  40                         LOADL_qimm   ; inline operand = 0
  $849F  D6 B9 84                   JUMP_abs               $84B9
 >$84A2  DE FB FF                   LEAL_far               $FFFB
  $84A5  B3                         PUSHL
  $84A6  81 ED                      LOADL_near             $ED
  $84A8  B4                         POPR
  $84A9  BB                         ADD
  $84AA  D3                         BYTE_DEREF
  $84AB  B3                         PUSHL
  $84AC  E9 03 80 02                CALL_abs_imm1          $8003 {bytecode}, $02
  $84B0  CD                         SWAP
  $84B1  81 E9                      LOADL_near             $E9
  $84B3  BB                         ADD
  $84B4  85 E9                      STORE_near             $E9
  $84B6  81 ED                      LOADL_near             $ED
  $84B8  D0                         INC
 >$84B9  85 ED                      STORE_near             $ED
  $84BB  81 ED                      LOADL_near             $ED
  $84BD  83 EF                      LOADR_near             $EF
  $84BF  C6                         UCMPLT
  $84C0  D7 A2 84                   JUMPT_abs              $84A2
  $84C3  81 E9                      LOADL_near             $E9
  $84C5  D7 D9 84                   JUMPT_abs              $84D9
  $84C8  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $84CB  61                         PUSH_qimm   ; inline operand = 1
  $84CC  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $84D0  8E D7 96                   PUSH_imm2              $96D7
  $84D3  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $84D7  40                         LOADL_qimm   ; inline operand = 0
  $84D8  CF                         RETURN
 >$84D9  A4 6B 66                   LOADL_abs              $666B
  $84DC  8C 60 EA                   LOADR_imm2             $EA60
  $84DF  C0                         CMPEQ
  $84E0  D8 F4 84                   JUMPF_abs              $84F4
  $84E3  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $84E6  61                         PUSH_qimm   ; inline operand = 1
  $84E7  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $84EB  8E F4 96                   PUSH_imm2              $96F4
  $84EE  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $84F2  40                         LOADL_qimm   ; inline operand = 0
  $84F3  CF                         RETURN
 >$84F4  40                         LOADL_qimm   ; inline operand = 0
  $84F5  85 E5                      STORE_near             $E5
  $84F7  85 E7                      STORE_near             $E7
  $84F9  8A F0 00                   LOADL_imm2             $00F0
  $84FC  A9 63 70                   BYTE_STORE_abs         $7063
  $84FF  60                         PUSH_qimm   ; inline operand = 0
  $8500  8D 12                      BYTE_PUSH_imm1         +18
  $8502  8D 1C                      BYTE_PUSH_imm1         +28
  $8504  62                         PUSH_qimm   ; inline operand = 2
  $8505  62                         PUSH_qimm   ; inline operand = 2
  $8506  E9 05 A4 0A                CALL_abs_imm1          $A405 {native}, $0A
  $850A  AC EC B7                   CALL_abs               $B7EC {native}
 >$850D  61                         PUSH_qimm   ; inline operand = 1
  $850E  66                         PUSH_qimm   ; inline operand = 6
  $850F  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8513  61                         PUSH_qimm   ; inline operand = 1
  $8514  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $8518  61                         PUSH_qimm   ; inline operand = 1
  $8519  8E 13 97                   PUSH_imm2              $9713
  $851C  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8520  81 E3                      LOADL_near             $E3
  $8522  D8 32 85                   JUMPF_abs              $8532
  $8525  DE FB FF                   LEAL_far               $FFFB
  $8528  B3                         PUSHL
  $8529  87 EF                      PUSH_near              $EF
  $852B  E9 94 80 04                CALL_abs_imm1          $8094 (market_draw_ship_load) {bytecode}, $04
  $852F  40                         LOADL_qimm   ; inline operand = 0
  $8530  85 E3                      STORE_near             $E3
 >$8532  87 EF                      PUSH_near              $EF
  $8534  62                         PUSH_qimm   ; inline operand = 2
  $8535  68                         PUSH_qimm   ; inline operand = 8
  $8536  66                         PUSH_qimm   ; inline operand = 6
  $8537  E9 16 A2 08                CALL_abs_imm1          $A216 {native}, $08
  $853B  85 EB                      STORE_near             $EB
  $853D  81 EB                      LOADL_near             $EB
  $853F  8C FF 00                   LOADR_imm2             $00FF
  $8542  C1                         CMPNE
  $8543  D8 73 85                   JUMPF_abs              $8573
  $8546  3C                         PUSH_quick   ; inline operand = 12
  $8547  DE FB FF                   LEAL_far               $FFFB
  $854A  B3                         PUSHL
  $854B  81 EB                      LOADL_near             $EB
  $854D  B4                         POPR
  $854E  BB                         ADD
  $854F  D3                         BYTE_DEREF
  $8550  B3                         PUSHL
  $8551  E9 6F 82 04                CALL_abs_imm1          $826F (market_sell_screen) {bytecode}, $04
  $8555  85 E5                      STORE_near             $E5
  $8557  81 E5                      LOADL_near             $E5
  $8559  D8 6B 85                   JUMPF_abs              $856B
  $855C  81 E5                      LOADL_near             $E5
  $855E  8C FF 00                   LOADR_imm2             $00FF
  $8561  C0                         CMPEQ
  $8562  D8 68 85                   JUMPF_abs              $8568
  $8565  40                         LOADL_qimm   ; inline operand = 0
  $8566  85 E5                      STORE_near             $E5
 >$8568  41                         LOADL_qimm   ; inline operand = 1
  $8569  85 E3                      STORE_near             $E3
 >$856B  81 E5                      LOADL_near             $E5
  $856D  CD                         SWAP
  $856E  81 E7                      LOADL_near             $E7
  $8570  DB                         OR
  $8571  85 E7                      STORE_near             $E7
 >$8573  81 EB                      LOADL_near             $EB
  $8575  8C FF 00                   LOADR_imm2             $00FF
  $8578  C0                         CMPEQ
  $8579  D7 81 85                   JUMPT_abs              $8581
  $857C  81 E7                      LOADL_near             $E7
  $857E  D8 0D 85                   JUMPF_abs              $850D
 >$8581  81 E7                      LOADL_near             $E7
  $8583  D7 8B 85                   JUMPT_abs              $858B
  $8586  0C                         LOADL_quick   ; inline operand = 12
  $8587  D3                         BYTE_DEREF
  $8588  D8 B9 85                   JUMPF_abs              $85B9
 >$858B  A5 67 70                   BYTE_LOADL_abs         $7067
  $858E  5E                         LOADR_qimm   ; inline operand = 14
  $858F  B5                         MULT
  $8590  8C BD 67                   LOADR_imm2             $67BD
  $8593  BB                         ADD
  $8594  D3                         BYTE_DEREF
  $8595  59                         LOADR_qimm   ; inline operand = 9
  $8596  C8                         UCMPGT
  $8597  D8 AD 85                   JUMPF_abs              $85AD
  $859A  0C                         LOADL_quick   ; inline operand = 12
  $859B  D3                         BYTE_DEREF
  $859C  B3                         PUSHL
  $859D  A5 67 70                   BYTE_LOADL_abs         $7067
  $85A0  5E                         LOADR_qimm   ; inline operand = 14
  $85A1  B5                         MULT
  $85A2  8C BD 67                   LOADR_imm2             $67BD
  $85A5  BB                         ADD
  $85A6  B4                         POPR
  $85A7  B3                         PUSHL
  $85A8  D3                         BYTE_DEREF
  $85A9  BC                         SUB
  $85AA  D6 B8 85                   JUMP_abs               $85B8
 >$85AD  A5 67 70                   BYTE_LOADL_abs         $7067
  $85B0  5E                         LOADR_qimm   ; inline operand = 14
  $85B1  B5                         MULT
  $85B2  8C BD 67                   LOADR_imm2             $67BD
  $85B5  BB                         ADD
  $85B6  B3                         PUSHL
  $85B7  40                         LOADL_qimm   ; inline operand = 0
 >$85B8  D4                         BYTE_POPSTORE
 >$85B9  60                         PUSH_qimm   ; inline operand = 0
  $85BA  8D 12                      BYTE_PUSH_imm1         +18
  $85BC  8D 1C                      BYTE_PUSH_imm1         +28
  $85BE  62                         PUSH_qimm   ; inline operand = 2
  $85BF  62                         PUSH_qimm   ; inline operand = 2
  $85C0  E9 9B A4 0A                CALL_abs_imm1          $A49B {native}, $0A
  $85C4  81 E7                      LOADL_near             $E7
  $85C6  CF                         RETURN

; ============================================================
; sub $85C7   (frame_off=-6, body @ $85CC)   [PRG $285C7]
; ============================================================
  $85CC  0C                         LOADL_quick   ; inline operand = 12
  $85CD  8B 18                      BYTE_LOADR_imm1        +24
  $85CF  B5                         MULT
  $85D0  8C AA 6A                   LOADR_imm2             $6AAA
  $85D3  BB                         ADD
  $85D4  2A                         STORE_quick   ; inline operand = 10
  $85D5  40                         LOADL_qimm   ; inline operand = 0
  $85D6  2B                         STORE_quick   ; inline operand = 11
  $85D7  40                         LOADL_qimm   ; inline operand = 0
  $85D8  D6 E9 85                   JUMP_abs               $85E9
 >$85DB  0A                         LOADL_quick   ; inline operand = 10
  $85DC  72                         ADD_qimm   ; inline operand = 2
  $85DD  2A                         STORE_quick   ; inline operand = 10
  $85DE  8F FE                      BYTE_ADD_imm1          -2
  $85E0  B0                         DEREF
  $85E1  D8 E7 85                   JUMPF_abs              $85E7
  $85E4  0B                         LOADL_quick   ; inline operand = 11
  $85E5  D0                         INC
  $85E6  2B                         STORE_quick   ; inline operand = 11
 >$85E7  09                         LOADL_quick   ; inline operand = 9
  $85E8  D0                         INC
 >$85E9  29                         STORE_quick   ; inline operand = 9
  $85EA  09                         LOADL_quick   ; inline operand = 9
  $85EB  55                         LOADR_qimm   ; inline operand = 5
  $85EC  C6                         UCMPLT
  $85ED  D7 DB 85                   JUMPT_abs              $85DB
  $85F0  0B                         LOADL_quick   ; inline operand = 11
  $85F1  CF                         RETURN

; ============================================================
; sub $85F2   (frame_off=-14, body @ $85F7)   [PRG $285F2]
; ============================================================
  $85F7  A5 67 70                   BYTE_LOADL_abs         $7067
  $85FA  55                         LOADR_qimm   ; inline operand = 5
  $85FB  B5                         MULT
  $85FC  8C 0A B5                   LOADR_imm2             $B50A
  $85FF  BB                         ADD
  $8600  B3                         PUSHL
  $8601  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8605  8B 58                      BYTE_LOADR_imm1        +88
  $8607  B5                         MULT
  $8608  8C 64 B8                   LOADR_imm2             $B864
  $860B  BB                         ADD
  $860C  2A                         STORE_quick   ; inline operand = 10
  $860D  0A                         LOADL_quick   ; inline operand = 10
  $860E  79                         ADD_qimm   ; inline operand = 9
  $860F  28                         STORE_quick   ; inline operand = 8
  $8610  0A                         LOADL_quick   ; inline operand = 10
  $8611  27                         STORE_quick   ; inline operand = 7
  $8612  0A                         LOADL_quick   ; inline operand = 10
  $8613  8F 12                      BYTE_ADD_imm1          +18
  $8615  26                         STORE_quick   ; inline operand = 6
  $8616  A5 67 70                   BYTE_LOADL_abs         $7067
  $8619  5E                         LOADR_qimm   ; inline operand = 14
  $861A  B5                         MULT
  $861B  8C B2 67                   LOADR_imm2             $67B2
  $861E  BB                         ADD
  $861F  29                         STORE_quick   ; inline operand = 9
  $8620  09                         LOADL_quick   ; inline operand = 9
  $8621  B0                         DEREF
  $8622  25                         STORE_quick   ; inline operand = 5
  $8623  40                         LOADL_qimm   ; inline operand = 0
  $8624  2B                         STORE_quick   ; inline operand = 11
 >$8625  38                         PUSH_quick   ; inline operand = 8
  $8626  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $862A  D8 59 86                   JUMPF_abs              $8659
  $862D  37                         PUSH_quick   ; inline operand = 7
  $862E  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8632  8B 32                      BYTE_LOADR_imm1        +50
  $8634  B5                         MULT
  $8635  15                         LOADR_quick   ; inline operand = 5
  $8636  C3                         SCMPLE
  $8637  D8 59 86                   JUMPF_abs              $8659
  $863A  09                         LOADL_quick   ; inline operand = 9
  $863B  7B                         ADD_qimm   ; inline operand = 11
  $863C  D3                         BYTE_DEREF
  $863D  8F 32                      BYTE_ADD_imm1          +50
  $863F  B7 25                      LONG                   $25
  $8641  B7 14                      LONG                   $14
  $8643  36                         PUSH_quick   ; inline operand = 6
  $8644  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8648  B7 25                      LONG                   $25
  $864A  B7 15                      LONG                   $15
  $864C  B7 01                      LONG                   $01
  $864E  B7 19 64 00 00 00          LONG                   $19 $64 $00 $00 $00
  $8654  B7 02                      LONG                   $02
  $8656  B7 27                      LONG                   $27
  $8658  CF                         RETURN
 >$8659  08                         LOADL_quick   ; inline operand = 8
  $865A  D0                         INC
  $865B  28                         STORE_quick   ; inline operand = 8
  $865C  06                         LOADL_quick   ; inline operand = 6
  $865D  72                         ADD_qimm   ; inline operand = 2
  $865E  26                         STORE_quick   ; inline operand = 6
  $865F  07                         LOADL_quick   ; inline operand = 7
  $8660  D0                         INC
  $8661  27                         STORE_quick   ; inline operand = 7
  $8662  0B                         LOADL_quick   ; inline operand = 11
  $8663  D0                         INC
  $8664  2B                         STORE_quick   ; inline operand = 11
  $8665  0B                         LOADL_quick   ; inline operand = 11
  $8666  59                         LOADR_qimm   ; inline operand = 9
  $8667  C6                         UCMPLT
  $8668  D7 25 86                   JUMPT_abs              $8625
  $866B  40                         LOADL_qimm   ; inline operand = 0
  $866C  CF                         RETURN

; ============================================================
; sub $866D   (frame_off=-10, body @ $8672)   [PRG $2866D]
; ============================================================
  $8672  0C                         LOADL_quick   ; inline operand = 12
  $8673  8B 18                      BYTE_LOADR_imm1        +24
  $8675  B5                         MULT
  $8676  8C A4 6A                   LOADR_imm2             $6AA4
  $8679  BB                         ADD
  $867A  29                         STORE_quick   ; inline operand = 9
  $867B  40                         LOADL_qimm   ; inline operand = 0
  $867C  2B                         STORE_quick   ; inline operand = 11
 >$867D  0B                         LOADL_quick   ; inline operand = 11
  $867E  D2                         LSHIFT1
  $867F  19                         LOADR_quick   ; inline operand = 9
  $8680  BB                         ADD
  $8681  76                         ADD_qimm   ; inline operand = 6
  $8682  B0                         DEREF
  $8683  D8 A9 86                   JUMPF_abs              $86A9
  $8686  3E                         PUSH_quick   ; inline operand = 14
  $8687  09                         LOADL_quick   ; inline operand = 9
  $8688  1B                         LOADR_quick   ; inline operand = 11
  $8689  BB                         ADD
  $868A  D0                         INC
  $868B  D3                         BYTE_DEREF
  $868C  B3                         PUSHL
  $868D  E9 F2 85 02                CALL_abs_imm1          $85F2 {bytecode}, $02
  $8691  B1                         POPSTORE
  $8692  D8 A9 86                   JUMPF_abs              $86A9
  $8695  3D                         PUSH_quick   ; inline operand = 13
  $8696  09                         LOADL_quick   ; inline operand = 9
  $8697  1B                         LOADR_quick   ; inline operand = 11
  $8698  BB                         ADD
  $8699  D0                         INC
  $869A  D3                         BYTE_DEREF
  $869B  D4                         BYTE_POPSTORE
  $869C  0D                         LOADL_quick   ; inline operand = 13
  $869D  D0                         INC
  $869E  2D                         STORE_quick   ; inline operand = 13
  $869F  0E                         LOADL_quick   ; inline operand = 14
  $86A0  72                         ADD_qimm   ; inline operand = 2
  $86A1  2E                         STORE_quick   ; inline operand = 14
  $86A2  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $86A5  D0                         INC
  $86A6  A2 FD FF                   BYTE_STORE_far         $FFFD
 >$86A9  0B                         LOADL_quick   ; inline operand = 11
  $86AA  D0                         INC
  $86AB  2B                         STORE_quick   ; inline operand = 11
  $86AC  0B                         LOADL_quick   ; inline operand = 11
  $86AD  55                         LOADR_qimm   ; inline operand = 5
  $86AE  C6                         UCMPLT
  $86AF  D7 7D 86                   JUMPT_abs              $867D
  $86B2  A5 67 70                   BYTE_LOADL_abs         $7067
  $86B5  55                         LOADR_qimm   ; inline operand = 5
  $86B6  B5                         MULT
  $86B7  8C 0A B5                   LOADR_imm2             $B50A
  $86BA  BB                         ADD
  $86BB  28                         STORE_quick   ; inline operand = 8
  $86BC  08                         LOADL_quick   ; inline operand = 8
  $86BD  D0                         INC
  $86BE  B3                         PUSHL
  $86BF  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $86C3  A2 FC FF                   BYTE_STORE_far         $FFFC
  $86C6  8C FF 00                   LOADR_imm2             $00FF
  $86C9  C1                         CMPNE
  $86CA  D8 29 87                   JUMPF_abs              $8729
  $86CD  40                         LOADL_qimm   ; inline operand = 0
  $86CE  2B                         STORE_quick   ; inline operand = 11
 >$86CF  0B                         LOADL_quick   ; inline operand = 11
  $86D0  D2                         LSHIFT1
  $86D1  19                         LOADR_quick   ; inline operand = 9
  $86D2  BB                         ADD
  $86D3  76                         ADD_qimm   ; inline operand = 6
  $86D4  B0                         DEREF
  $86D5  D8 20 87                   JUMPF_abs              $8720
  $86D8  A0 FC FF                   BYTE_LOADL_far         $FFFC
  $86DB  B3                         PUSHL
  $86DC  09                         LOADL_quick   ; inline operand = 9
  $86DD  1B                         LOADR_quick   ; inline operand = 11
  $86DE  BB                         ADD
  $86DF  D0                         INC
  $86E0  D3                         BYTE_DEREF
  $86E1  B4                         POPR
  $86E2  C0                         CMPEQ
  $86E3  D8 20 87                   JUMPF_abs              $8720
  $86E6  A5 67 70                   BYTE_LOADL_abs         $7067
  $86E9  5E                         LOADR_qimm   ; inline operand = 14
  $86EA  B5                         MULT
  $86EB  8C B2 67                   LOADR_imm2             $67B2
  $86EE  BB                         ADD
  $86EF  27                         STORE_quick   ; inline operand = 7
  $86F0  3D                         PUSH_quick   ; inline operand = 13
  $86F1  A0 FC FF                   BYTE_LOADL_far         $FFFC
  $86F4  D4                         BYTE_POPSTORE
  $86F5  0D                         LOADL_quick   ; inline operand = 13
  $86F6  D0                         INC
  $86F7  2D                         STORE_quick   ; inline operand = 13
  $86F8  3E                         PUSH_quick   ; inline operand = 14
  $86F9  07                         LOADL_quick   ; inline operand = 7
  $86FA  7B                         ADD_qimm   ; inline operand = 11
  $86FB  D3                         BYTE_DEREF
  $86FC  8F 32                      BYTE_ADD_imm1          +50
  $86FE  B7 25                      LONG                   $25
  $8700  B7 14                      LONG                   $14
  $8702  07                         LOADL_quick   ; inline operand = 7
  $8703  7C                         ADD_qimm   ; inline operand = 12
  $8704  B0                         DEREF
  $8705  B7 25                      LONG                   $25
  $8707  B7 15                      LONG                   $15
  $8709  B7 01                      LONG                   $01
  $870B  B7 19 64 00 00 00          LONG                   $19 $64 $00 $00 $00
  $8711  B7 02                      LONG                   $02
  $8713  B7 27                      LONG                   $27
  $8715  B1                         POPSTORE
  $8716  0E                         LOADL_quick   ; inline operand = 14
  $8717  72                         ADD_qimm   ; inline operand = 2
  $8718  2E                         STORE_quick   ; inline operand = 14
  $8719  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $871C  D0                         INC
  $871D  A2 FD FF                   BYTE_STORE_far         $FFFD
 >$8720  0B                         LOADL_quick   ; inline operand = 11
  $8721  D0                         INC
  $8722  2B                         STORE_quick   ; inline operand = 11
  $8723  0B                         LOADL_quick   ; inline operand = 11
  $8724  55                         LOADR_qimm   ; inline operand = 5
  $8725  C6                         UCMPLT
  $8726  D7 CF 86                   JUMPT_abs              $86CF
 >$8729  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $872C  CF                         RETURN

; ============================================================
; sub $872D   (frame_off=-4, body @ $8732)   [PRG $2872D]
; ============================================================
  $8732  0C                         LOADL_quick   ; inline operand = 12
  $8733  8B 18                      BYTE_LOADR_imm1        +24
  $8735  B5                         MULT
  $8736  8C A4 6A                   LOADR_imm2             $6AA4
  $8739  BB                         ADD
  $873A  2A                         STORE_quick   ; inline operand = 10
  $873B  40                         LOADL_qimm   ; inline operand = 0
  $873C  2B                         STORE_quick   ; inline operand = 11
 >$873D  0A                         LOADL_quick   ; inline operand = 10
  $873E  1B                         LOADR_quick   ; inline operand = 11
  $873F  BB                         ADD
  $8740  D0                         INC
  $8741  D3                         BYTE_DEREF
  $8742  1D                         LOADR_quick   ; inline operand = 13
  $8743  C0                         CMPEQ
  $8744  D8 4E 87                   JUMPF_abs              $874E
  $8747  0B                         LOADL_quick   ; inline operand = 11
  $8748  D2                         LSHIFT1
  $8749  1A                         LOADR_quick   ; inline operand = 10
  $874A  BB                         ADD
  $874B  76                         ADD_qimm   ; inline operand = 6
  $874C  B0                         DEREF
  $874D  CF                         RETURN
 >$874E  0B                         LOADL_quick   ; inline operand = 11
  $874F  D0                         INC
  $8750  2B                         STORE_quick   ; inline operand = 11
  $8751  0B                         LOADL_quick   ; inline operand = 11
  $8752  55                         LOADR_qimm   ; inline operand = 5
  $8753  C6                         UCMPLT
  $8754  D7 3D 87                   JUMPT_abs              $873D
  $8757  40                         LOADL_qimm   ; inline operand = 0
  $8758  CF                         RETURN

; ============================================================
; sub $8759   (frame_off=-4, body @ $875E)   [PRG $28759]
; ============================================================
  $875E  0C                         LOADL_quick   ; inline operand = 12
  $875F  8B 18                      BYTE_LOADR_imm1        +24
  $8761  B5                         MULT
  $8762  8C A4 6A                   LOADR_imm2             $6AA4
  $8765  BB                         ADD
  $8766  2A                         STORE_quick   ; inline operand = 10
  $8767  40                         LOADL_qimm   ; inline operand = 0
  $8768  2B                         STORE_quick   ; inline operand = 11
 >$8769  0A                         LOADL_quick   ; inline operand = 10
  $876A  1B                         LOADR_quick   ; inline operand = 11
  $876B  BB                         ADD
  $876C  D0                         INC
  $876D  D3                         BYTE_DEREF
  $876E  1D                         LOADR_quick   ; inline operand = 13
  $876F  C0                         CMPEQ
  $8770  D8 7E 87                   JUMPF_abs              $877E
  $8773  0B                         LOADL_quick   ; inline operand = 11
  $8774  D2                         LSHIFT1
  $8775  1A                         LOADR_quick   ; inline operand = 10
  $8776  BB                         ADD
  $8777  76                         ADD_qimm   ; inline operand = 6
  $8778  B0                         DEREF
  $8779  D8 7E 87                   JUMPF_abs              $877E
  $877C  40                         LOADL_qimm   ; inline operand = 0
  $877D  CF                         RETURN
 >$877E  0B                         LOADL_quick   ; inline operand = 11
  $877F  D0                         INC
  $8780  2B                         STORE_quick   ; inline operand = 11
  $8781  0B                         LOADL_quick   ; inline operand = 11
  $8782  55                         LOADR_qimm   ; inline operand = 5
  $8783  C6                         UCMPLT
  $8784  D7 69 87                   JUMPT_abs              $8769
  $8787  41                         LOADL_qimm   ; inline operand = 1
  $8788  CF                         RETURN

; ============================================================
; sub $8789   (frame_off=-4, body @ $878E)   [PRG $28789]
; ============================================================
  $878E  8D 10                      BYTE_PUSH_imm1         +16
  $8790  8D 16                      BYTE_PUSH_imm1         +22
  $8792  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8796  60                         PUSH_qimm   ; inline operand = 0
  $8797  8E 33 97                   PUSH_imm2              $9733
  $879A  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $879E  8D 11                      BYTE_PUSH_imm1         +17
  $87A0  8D 16                      BYTE_PUSH_imm1         +22
  $87A2  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $87A6  AA 6B 66                   PUSH_abs               $666B
  $87A9  8E 39 97                   PUSH_imm2              $9739
  $87AC  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $87B0  68                         PUSH_qimm   ; inline operand = 8
  $87B1  8D 16                      BYTE_PUSH_imm1         +22
  $87B3  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $87B7  60                         PUSH_qimm   ; inline operand = 0
  $87B8  8E 3D 97                   PUSH_imm2              $973D
  $87BB  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $87BF  69                         PUSH_qimm   ; inline operand = 9
  $87C0  8D 16                      BYTE_PUSH_imm1         +22
  $87C2  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $87C6  3F                         PUSH_quick   ; inline operand = 15
  $87C7  E9 C7 85 02                CALL_abs_imm1          $85C7 {bytecode}, $02
  $87CB  B3                         PUSHL
  $87CC  8E 46 97                   PUSH_imm2              $9746
  $87CF  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $87D3  6C                         PUSH_qimm   ; inline operand = 12
  $87D4  8D 16                      BYTE_PUSH_imm1         +22
  $87D6  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $87DA  60                         PUSH_qimm   ; inline operand = 0
  $87DB  8E 50 97                   PUSH_imm2              $9750
  $87DE  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $87E2  6D                         PUSH_qimm   ; inline operand = 13
  $87E3  8D 16                      BYTE_PUSH_imm1         +22
  $87E5  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $87E9  3F                         PUSH_quick   ; inline operand = 15
  $87EA  E9 2C 80 02                CALL_abs_imm1          $802C {bytecode}, $02
  $87EE  B3                         PUSHL
  $87EF  0F                         LOADL_quick   ; inline operand = 15
  $87F0  57                         LOADR_qimm   ; inline operand = 7
  $87F1  B5                         MULT
  $87F2  8C 96 6C                   LOADR_imm2             $6C96
  $87F5  BB                         ADD
  $87F6  D3                         BYTE_DEREF
  $87F7  5F                         LOADR_qimm   ; inline operand = 15
  $87F8  DA                         AND
  $87F9  B3                         PUSHL
  $87FA  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $87FE  8F 12                      BYTE_ADD_imm1          +18
  $8800  B3                         PUSHL
  $8801  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8805  B4                         POPR
  $8806  BC                         SUB
  $8807  B3                         PUSHL
  $8808  8E 56 97                   PUSH_imm2              $9756
  $880B  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $880F  81 13                      LOADL_near             $13
  $8811  56                         LOADR_qimm   ; inline operand = 6
  $8812  B5                         MULT
  $8813  D6 97 88                   JUMP_abs               $8897
 >$8816  0B                         LOADL_quick   ; inline operand = 11
  $8817  D2                         LSHIFT1
  $8818  78                         ADD_qimm   ; inline operand = 8
  $8819  B3                         PUSHL
  $881A  63                         PUSH_qimm   ; inline operand = 3
  $881B  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $881F  3F                         PUSH_quick   ; inline operand = 15
  $8820  E9 C7 85 02                CALL_abs_imm1          $85C7 {bytecode}, $02
  $8824  55                         LOADR_qimm   ; inline operand = 5
  $8825  C0                         CMPEQ
  $8826  D8 3F 88                   JUMPF_abs              $883F
  $8829  81 13                      LOADL_near             $13
  $882B  56                         LOADR_qimm   ; inline operand = 6
  $882C  B5                         MULT
  $882D  1D                         LOADR_quick   ; inline operand = 13
  $882E  BB                         ADD
  $882F  1B                         LOADR_quick   ; inline operand = 11
  $8830  BB                         ADD
  $8831  D3                         BYTE_DEREF
  $8832  B3                         PUSHL
  $8833  3F                         PUSH_quick   ; inline operand = 15
  $8834  E9 59 87 04                CALL_abs_imm1          $8759 {bytecode}, $04
  $8838  D8 3F 88                   JUMPF_abs              $883F
  $883B  43                         LOADL_qimm   ; inline operand = 3
  $883C  D6 40 88                   JUMP_abs               $8840
 >$883F  40                         LOADL_qimm   ; inline operand = 0
 >$8840  2A                         STORE_quick   ; inline operand = 10
  $8841  81 13                      LOADL_near             $13
  $8843  56                         LOADR_qimm   ; inline operand = 6
  $8844  B5                         MULT
  $8845  1D                         LOADR_quick   ; inline operand = 13
  $8846  BB                         ADD
  $8847  1B                         LOADR_quick   ; inline operand = 11
  $8848  BB                         ADD
  $8849  D3                         BYTE_DEREF
  $884A  D2                         LSHIFT1
  $884B  8C 49 BB                   LOADR_imm2             $BB49
  $884E  BB                         ADD
  $884F  B3                         PUSHL
  $8850  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8854  B3                         PUSHL
  $8855  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8859  0B                         LOADL_quick   ; inline operand = 11
  $885A  D2                         LSHIFT1
  $885B  78                         ADD_qimm   ; inline operand = 8
  $885C  B3                         PUSHL
  $885D  6D                         PUSH_qimm   ; inline operand = 13
  $885E  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8862  81 13                      LOADL_near             $13
  $8864  56                         LOADR_qimm   ; inline operand = 6
  $8865  B5                         MULT
  $8866  1D                         LOADR_quick   ; inline operand = 13
  $8867  BB                         ADD
  $8868  1B                         LOADR_quick   ; inline operand = 11
  $8869  BB                         ADD
  $886A  D3                         BYTE_DEREF
  $886B  B3                         PUSHL
  $886C  3F                         PUSH_quick   ; inline operand = 15
  $886D  E9 2D 87 04                CALL_abs_imm1          $872D {bytecode}, $04
  $8871  B3                         PUSHL
  $8872  8E 5F 97                   PUSH_imm2              $975F
  $8875  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $8879  0B                         LOADL_quick   ; inline operand = 11
  $887A  D2                         LSHIFT1
  $887B  78                         ADD_qimm   ; inline operand = 8
  $887C  B3                         PUSHL
  $887D  8D 11                      BYTE_PUSH_imm1         +17
  $887F  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8883  81 13                      LOADL_near             $13
  $8885  56                         LOADR_qimm   ; inline operand = 6
  $8886  B5                         MULT
  $8887  1B                         LOADR_quick   ; inline operand = 11
  $8888  BB                         ADD
  $8889  D2                         LSHIFT1
  $888A  1E                         LOADR_quick   ; inline operand = 14
  $888B  BB                         ADD
  $888C  B0                         DEREF
  $888D  B3                         PUSHL
  $888E  8E 63 97                   PUSH_imm2              $9763
  $8891  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $8895  0B                         LOADL_quick   ; inline operand = 11
  $8896  D0                         INC
 >$8897  2B                         STORE_quick   ; inline operand = 11
  $8898  0B                         LOADL_quick   ; inline operand = 11
  $8899  1C                         LOADR_quick   ; inline operand = 12
  $889A  C6                         UCMPLT
  $889B  D7 16 88                   JUMPT_abs              $8816
  $889E  CF                         RETURN

; ============================================================
; sub $889F   (frame_off=-28, body @ $88A4)   [PRG $2889F]
; ============================================================
  $88A4  A5 67 70                   BYTE_LOADL_abs         $7067
  $88A7  5E                         LOADR_qimm   ; inline operand = 14
  $88A8  B5                         MULT
  $88A9  8C B2 67                   LOADR_imm2             $67B2
  $88AC  BB                         ADD
  $88AD  22                         STORE_quick   ; inline operand = 2
  $88AE  02                         LOADL_quick   ; inline operand = 2
  $88AF  7B                         ADD_qimm   ; inline operand = 11
  $88B0  D3                         BYTE_DEREF
  $88B1  8F 32                      BYTE_ADD_imm1          +50
  $88B3  26                         STORE_quick   ; inline operand = 6
  $88B4  02                         LOADL_quick   ; inline operand = 2
  $88B5  B0                         DEREF
  $88B6  27                         STORE_quick   ; inline operand = 7
  $88B7  A5 67 70                   BYTE_LOADL_abs         $7067
  $88BA  55                         LOADR_qimm   ; inline operand = 5
  $88BB  B5                         MULT
  $88BC  8C 0A B5                   LOADR_imm2             $B50A
  $88BF  BB                         ADD
  $88C0  21                         STORE_quick   ; inline operand = 1
  $88C1  31                         PUSH_quick   ; inline operand = 1
  $88C2  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $88C6  8B 58                      BYTE_LOADR_imm1        +88
  $88C8  B5                         MULT
  $88C9  8C 64 B8                   LOADR_imm2             $B864
  $88CC  BB                         ADD
  $88CD  2B                         STORE_quick   ; inline operand = 11
  $88CE  0B                         LOADL_quick   ; inline operand = 11
  $88CF  28                         STORE_quick   ; inline operand = 8
  $88D0  0B                         LOADL_quick   ; inline operand = 11
  $88D1  79                         ADD_qimm   ; inline operand = 9
  $88D2  29                         STORE_quick   ; inline operand = 9
  $88D3  0B                         LOADL_quick   ; inline operand = 11
  $88D4  8F 12                      BYTE_ADD_imm1          +18
  $88D6  25                         STORE_quick   ; inline operand = 5
  $88D7  40                         LOADL_qimm   ; inline operand = 0
  $88D8  20                         STORE_quick   ; inline operand = 0
  $88D9  85 E6                      STORE_near             $E6
  $88DB  D6 35 89                   JUMP_abs               $8935
 >$88DE  39                         PUSH_quick   ; inline operand = 9
  $88DF  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $88E3  85 E4                      STORE_near             $E4
  $88E5  8C FF 00                   LOADR_imm2             $00FF
  $88E8  C1                         CMPNE
  $88E9  D8 29 89                   JUMPF_abs              $8929
  $88EC  38                         PUSH_quick   ; inline operand = 8
  $88ED  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $88F1  24                         STORE_quick   ; inline operand = 4
  $88F2  04                         LOADL_quick   ; inline operand = 4
  $88F3  8B 32                      BYTE_LOADR_imm1        +50
  $88F5  B5                         MULT
  $88F6  17                         LOADR_quick   ; inline operand = 7
  $88F7  C3                         SCMPLE
  $88F8  D8 29 89                   JUMPF_abs              $8929
  $88FB  0C                         LOADL_quick   ; inline operand = 12
  $88FC  83 E6                      LOADR_near             $E6
  $88FE  BB                         ADD
  $88FF  B3                         PUSHL
  $8900  81 E4                      LOADL_near             $E4
  $8902  D4                         BYTE_POPSTORE
  $8903  81 E6                      LOADL_near             $E6
  $8905  D2                         LSHIFT1
  $8906  1D                         LOADR_quick   ; inline operand = 13
  $8907  BB                         ADD
  $8908  B3                         PUSHL
  $8909  06                         LOADL_quick   ; inline operand = 6
  $890A  B7 25                      LONG                   $25
  $890C  B7 14                      LONG                   $14
  $890E  35                         PUSH_quick   ; inline operand = 5
  $890F  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8913  B7 25                      LONG                   $25
  $8915  B7 15                      LONG                   $15
  $8917  B7 01                      LONG                   $01
  $8919  B7 19 64 00 00 00          LONG                   $19 $64 $00 $00 $00
  $891F  B7 02                      LONG                   $02
  $8921  B7 27                      LONG                   $27
  $8923  B1                         POPSTORE
  $8924  81 E6                      LOADL_near             $E6
  $8926  D0                         INC
  $8927  85 E6                      STORE_near             $E6
 >$8929  09                         LOADL_quick   ; inline operand = 9
  $892A  D0                         INC
  $892B  29                         STORE_quick   ; inline operand = 9
  $892C  08                         LOADL_quick   ; inline operand = 8
  $892D  D0                         INC
  $892E  28                         STORE_quick   ; inline operand = 8
  $892F  05                         LOADL_quick   ; inline operand = 5
  $8930  72                         ADD_qimm   ; inline operand = 2
  $8931  25                         STORE_quick   ; inline operand = 5
  $8932  00                         LOADL_quick   ; inline operand = 0
  $8933  D0                         INC
  $8934  20                         STORE_quick   ; inline operand = 0
 >$8935  00                         LOADL_quick   ; inline operand = 0
  $8936  59                         LOADR_qimm   ; inline operand = 9
  $8937  C6                         UCMPLT
  $8938  D7 DE 88                   JUMPT_abs              $88DE
  $893B  01                         LOADL_quick   ; inline operand = 1
  $893C  D0                         INC
  $893D  B3                         PUSHL
  $893E  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8942  2A                         STORE_quick   ; inline operand = 10
  $8943  0A                         LOADL_quick   ; inline operand = 10
  $8944  8C FF 00                   LOADR_imm2             $00FF
  $8947  C1                         CMPNE
  $8948  D8 85 89                   JUMPF_abs              $8985
  $894B  01                         LOADL_quick   ; inline operand = 1
  $894C  72                         ADD_qimm   ; inline operand = 2
  $894D  B3                         PUSHL
  $894E  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8952  8B 32                      BYTE_LOADR_imm1        +50
  $8954  B5                         MULT
  $8955  17                         LOADR_quick   ; inline operand = 7
  $8956  C3                         SCMPLE
  $8957  D8 85 89                   JUMPF_abs              $8985
  $895A  0C                         LOADL_quick   ; inline operand = 12
  $895B  83 E6                      LOADR_near             $E6
  $895D  BB                         ADD
  $895E  B3                         PUSHL
  $895F  0A                         LOADL_quick   ; inline operand = 10
  $8960  D4                         BYTE_POPSTORE
  $8961  81 E6                      LOADL_near             $E6
  $8963  D2                         LSHIFT1
  $8964  1D                         LOADR_quick   ; inline operand = 13
  $8965  BB                         ADD
  $8966  B3                         PUSHL
  $8967  06                         LOADL_quick   ; inline operand = 6
  $8968  B7 25                      LONG                   $25
  $896A  B7 14                      LONG                   $14
  $896C  02                         LOADL_quick   ; inline operand = 2
  $896D  7C                         ADD_qimm   ; inline operand = 12
  $896E  B0                         DEREF
  $896F  B7 25                      LONG                   $25
  $8971  B7 15                      LONG                   $15
  $8973  B7 01                      LONG                   $01
  $8975  B7 19 64 00 00 00          LONG                   $19 $64 $00 $00 $00
  $897B  B7 02                      LONG                   $02
  $897D  B7 27                      LONG                   $27
  $897F  B1                         POPSTORE
  $8980  81 E6                      LOADL_near             $E6
  $8982  D0                         INC
  $8983  85 E6                      STORE_near             $E6
 >$8985  81 E6                      LOADL_near             $E6
  $8987  CF                         RETURN

; ============================================================
; sub $8988   (frame_off=-14, body @ $898D)   [PRG $28988]
; ============================================================
  $898D  8A E1 00                   LOADL_imm2             $00E1
  $8990  A2 F3 FF                   BYTE_STORE_far         $FFF3
  $8993  40                         LOADL_qimm   ; inline operand = 0
  $8994  A2 F4 FF                   BYTE_STORE_far         $FFF4
  $8997  40                         LOADL_qimm   ; inline operand = 0
  $8998  27                         STORE_quick   ; inline operand = 7
  $8999  28                         STORE_quick   ; inline operand = 8
  $899A  42                         LOADL_qimm   ; inline operand = 2
  $899B  2B                         STORE_quick   ; inline operand = 11
  $899C  48                         LOADL_qimm   ; inline operand = 8
 >$899D  2A                         STORE_quick   ; inline operand = 10
 >$899E  60                         PUSH_qimm   ; inline operand = 0
  $899F  E9 A9 C4 02                CALL_abs_imm1          $C4A9 {native}, $02
  $89A3  29                         STORE_quick   ; inline operand = 9
  $89A4  09                         LOADL_quick   ; inline operand = 9
  $89A5  51                         LOADR_qimm   ; inline operand = 1
  $89A6  C0                         CMPEQ
  $89A7  D7 B0 89                   JUMPT_abs              $89B0
  $89AA  09                         LOADL_quick   ; inline operand = 9
  $89AB  52                         LOADR_qimm   ; inline operand = 2
  $89AC  C0                         CMPEQ
  $89AD  D8 B4 89                   JUMPF_abs              $89B4
 >$89B0  40                         LOADL_qimm   ; inline operand = 0
  $89B1  D6 B5 89                   JUMP_abs               $89B5
 >$89B4  41                         LOADL_qimm   ; inline operand = 1
 >$89B5  D8 43 8A                   JUMPF_abs              $8A43
  $89B8  0A                         LOADL_quick   ; inline operand = 10
  $89B9  53                         LOADR_qimm   ; inline operand = 3
  $89BA  BD                         LSHIFT
  $89BB  D1                         DEC
  $89BC  A2 F2 FF                   BYTE_STORE_far         $FFF2
  $89BF  0B                         LOADL_quick   ; inline operand = 11
  $89C0  53                         LOADR_qimm   ; inline operand = 3
  $89C1  BD                         LSHIFT
  $89C2  A2 F5 FF                   BYTE_STORE_far         $FFF5
  $89C5  61                         PUSH_qimm   ; inline operand = 1
  $89C6  60                         PUSH_qimm   ; inline operand = 0
  $89C7  DE F2 FF                   LEAL_far               $FFF2
  $89CA  B3                         PUSHL
  $89CB  6D                         PUSH_qimm   ; inline operand = 13
  $89CC  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $89D0  6C                         PUSH_qimm   ; inline operand = 12
  $89D1  39                         PUSH_quick   ; inline operand = 9
  $89D2  E9 4D CE 04                CALL_abs_imm1          $CE4D {native}, $04
  $89D6  09                         LOADL_quick   ; inline operand = 9
  $89D7  D9 04 00 10 00 EC 89 20 00 02 8A 40 ... SWITCH_noncontig       count=4   ; .table 4 (key,target) + default (noncontiguous); SWITCH 16=>$89EC 32=>$8A02 64=>$8A3B 128=>$8A19 default=>$899E
 >$89EC  08                         LOADL_quick   ; inline operand = 8
  $89ED  D7 F8 89                   JUMPT_abs              $89F8
  $89F0  0C                         LOADL_quick   ; inline operand = 12
  $89F1  28                         STORE_quick   ; inline operand = 8
  $89F2  0C                         LOADL_quick   ; inline operand = 12
  $89F3  D2                         LSHIFT1
  $89F4  78                         ADD_qimm   ; inline operand = 8
  $89F5  D6 9D 89                   JUMP_abs               $899D
 >$89F8  08                         LOADL_quick   ; inline operand = 8
  $89F9  D1                         DEC
  $89FA  28                         STORE_quick   ; inline operand = 8
  $89FB  42                         LOADL_qimm   ; inline operand = 2
  $89FC  CD                         SWAP
  $89FD  0A                         LOADL_quick   ; inline operand = 10
  $89FE  BC                         SUB
  $89FF  D6 9D 89                   JUMP_abs               $899D
 >$8A02  08                         LOADL_quick   ; inline operand = 8
  $8A03  1C                         LOADR_quick   ; inline operand = 12
  $8A04  C0                         CMPEQ
  $8A05  D8 0F 8A                   JUMPF_abs              $8A0F
  $8A08  48                         LOADL_qimm   ; inline operand = 8
  $8A09  2A                         STORE_quick   ; inline operand = 10
  $8A0A  40                         LOADL_qimm   ; inline operand = 0
 >$8A0B  28                         STORE_quick   ; inline operand = 8
  $8A0C  D6 9E 89                   JUMP_abs               $899E
 >$8A0F  42                         LOADL_qimm   ; inline operand = 2
  $8A10  CD                         SWAP
  $8A11  0A                         LOADL_quick   ; inline operand = 10
  $8A12  BB                         ADD
  $8A13  2A                         STORE_quick   ; inline operand = 10
  $8A14  08                         LOADL_quick   ; inline operand = 8
  $8A15  D0                         INC
  $8A16  D6 0B 8A                   JUMP_abs               $8A0B
 >$8A19  07                         LOADL_quick   ; inline operand = 7
  $8A1A  D7 9E 89                   JUMPT_abs              $899E
  $8A1D  0C                         LOADL_quick   ; inline operand = 12
  $8A1E  D0                         INC
  $8A1F  56                         LOADR_qimm   ; inline operand = 6
  $8A20  C8                         UCMPGT
  $8A21  D8 9E 89                   JUMPF_abs              $899E
  $8A24  41                         LOADL_qimm   ; inline operand = 1
 >$8A25  27                         STORE_quick   ; inline operand = 7
  $8A26  61                         PUSH_qimm   ; inline operand = 1
  $8A27  60                         PUSH_qimm   ; inline operand = 0
  $8A28  6C                         PUSH_qimm   ; inline operand = 12
  $8A29  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $8A2D  37                         PUSH_quick   ; inline operand = 7
  $8A2E  3F                         PUSH_quick   ; inline operand = 15
  $8A2F  3E                         PUSH_quick   ; inline operand = 14
  $8A30  3D                         PUSH_quick   ; inline operand = 13
  $8A31  0C                         LOADL_quick   ; inline operand = 12
  $8A32  D0                         INC
  $8A33  B3                         PUSHL
  $8A34  E9 89 87 0A                CALL_abs_imm1          $8789 (market_draw_cargo) {bytecode}, $0A
  $8A38  D6 9E 89                   JUMP_abs               $899E
 >$8A3B  07                         LOADL_quick   ; inline operand = 7
  $8A3C  D8 9E 89                   JUMPF_abs              $899E
  $8A3F  40                         LOADL_qimm   ; inline operand = 0
  $8A40  D6 25 8A                   JUMP_abs               $8A25
 >$8A43  61                         PUSH_qimm   ; inline operand = 1
  $8A44  60                         PUSH_qimm   ; inline operand = 0
  $8A45  6C                         PUSH_qimm   ; inline operand = 12
  $8A46  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $8A4A  09                         LOADL_quick   ; inline operand = 9
  $8A4B  52                         LOADR_qimm   ; inline operand = 2
  $8A4C  C0                         CMPEQ
  $8A4D  D8 54 8A                   JUMPF_abs              $8A54
  $8A50  8A FF 00                   LOADL_imm2             $00FF
  $8A53  CF                         RETURN
 >$8A54  07                         LOADL_quick   ; inline operand = 7
  $8A55  56                         LOADR_qimm   ; inline operand = 6
  $8A56  B5                         MULT
  $8A57  18                         LOADR_quick   ; inline operand = 8
  $8A58  BB                         ADD
  $8A59  CF                         RETURN

; ============================================================
; sub $8A5A   (frame_off=-17, body @ $8A5F)   [PRG $28A5A]
; ============================================================
  $8A5F  3F                         PUSH_quick   ; inline operand = 15
  $8A60  E9 C7 85 02                CALL_abs_imm1          $85C7 {bytecode}, $02
  $8A64  55                         LOADR_qimm   ; inline operand = 5
  $8A65  C0                         CMPEQ
  $8A66  D8 76 8A                   JUMPF_abs              $8A76
  $8A69  0D                         LOADL_quick   ; inline operand = 13
  $8A6A  1C                         LOADR_quick   ; inline operand = 12
  $8A6B  BB                         ADD
  $8A6C  D3                         BYTE_DEREF
  $8A6D  B3                         PUSHL
  $8A6E  3F                         PUSH_quick   ; inline operand = 15
  $8A6F  E9 59 87 04                CALL_abs_imm1          $8759 {bytecode}, $04
  $8A73  D7 97 8A                   JUMPT_abs              $8A97
 >$8A76  3F                         PUSH_quick   ; inline operand = 15
  $8A77  E9 2C 80 02                CALL_abs_imm1          $802C {bytecode}, $02
  $8A7B  B3                         PUSHL
  $8A7C  0F                         LOADL_quick   ; inline operand = 15
  $8A7D  57                         LOADR_qimm   ; inline operand = 7
  $8A7E  B5                         MULT
  $8A7F  8C 96 6C                   LOADR_imm2             $6C96
  $8A82  BB                         ADD
  $8A83  D3                         BYTE_DEREF
  $8A84  5F                         LOADR_qimm   ; inline operand = 15
  $8A85  DA                         AND
  $8A86  B3                         PUSHL
  $8A87  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8A8B  8F 12                      BYTE_ADD_imm1          +18
  $8A8D  B3                         PUSHL
  $8A8E  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8A92  B4                         POPR
  $8A93  BC                         SUB
  $8A94  D7 A6 8A                   JUMPT_abs              $8AA6
 >$8A97  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8A9A  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8A9D  8E 67 97                   PUSH_imm2              $9767
  $8AA0  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8AA4  40                         LOADL_qimm   ; inline operand = 0
  $8AA5  CF                         RETURN
 >$8AA6  61                         PUSH_qimm   ; inline operand = 1
  $8AA7  66                         PUSH_qimm   ; inline operand = 6
  $8AA8  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8AAC  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8AAF  0C                         LOADL_quick   ; inline operand = 12
  $8AB0  D2                         LSHIFT1
  $8AB1  1E                         LOADR_quick   ; inline operand = 14
  $8AB2  BB                         ADD
  $8AB3  B0                         DEREF
  $8AB4  27                         STORE_quick   ; inline operand = 7
  $8AB5  60                         PUSH_qimm   ; inline operand = 0
  $8AB6  8E 86 97                   PUSH_imm2              $9786
  $8AB9  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8ABD  0D                         LOADL_quick   ; inline operand = 13
  $8ABE  1C                         LOADR_quick   ; inline operand = 12
  $8ABF  BB                         ADD
  $8AC0  D3                         BYTE_DEREF
  $8AC1  D2                         LSHIFT1
  $8AC2  8C 49 BB                   LOADR_imm2             $BB49
  $8AC5  BB                         ADD
  $8AC6  B3                         PUSHL
  $8AC7  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8ACB  B3                         PUSHL
  $8ACC  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8AD0  60                         PUSH_qimm   ; inline operand = 0
  $8AD1  8E 88 97                   PUSH_imm2              $9788
  $8AD4  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8AD8  8D 17                      BYTE_PUSH_imm1         +23
  $8ADA  68                         PUSH_qimm   ; inline operand = 8
  $8ADB  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8ADF  37                         PUSH_quick   ; inline operand = 7
  $8AE0  8E 96 97                   PUSH_imm2              $9796
  $8AE3  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8AE7  A4 6B 66                   LOADL_abs              $666B
  $8AEA  29                         STORE_quick   ; inline operand = 9
  $8AEB  AC 9F CD                   CALL_abs               $CD9F {native}
  $8AEE  26                         STORE_quick   ; inline operand = 6
  $8AEF  06                         LOADL_quick   ; inline operand = 6
  $8AF0  D8 0A 8B                   JUMPF_abs              $8B0A
  $8AF3  07                         LOADL_quick   ; inline operand = 7
  $8AF4  19                         LOADR_quick   ; inline operand = 9
  $8AF5  C8                         UCMPGT
  $8AF6  D8 7C 8B                   JUMPF_abs              $8B7C
  $8AF9  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8AFC  61                         PUSH_qimm   ; inline operand = 1
  $8AFD  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $8B01  8E AF 97                   PUSH_imm2              $97AF
  $8B04  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8B08  40                         LOADL_qimm   ; inline operand = 0
  $8B09  CF                         RETURN
 >$8B0A  6A                         PUSH_qimm   ; inline operand = 10
  $8B0B  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8B0F  8F 46                      BYTE_ADD_imm1          +70
  $8B11  B3                         PUSHL
  $8B12  A5 67 70                   BYTE_LOADL_abs         $7067
  $8B15  5E                         LOADR_qimm   ; inline operand = 14
  $8B16  B5                         MULT
  $8B17  8C BA 67                   LOADR_imm2             $67BA
  $8B1A  BB                         ADD
  $8B1B  D3                         BYTE_DEREF
  $8B1C  B4                         POPR
  $8B1D  C9                         UCMPGE
  $8B1E  D8 F8 8B                   JUMPF_abs              $8BF8
  $8B21  61                         PUSH_qimm   ; inline operand = 1
  $8B22  66                         PUSH_qimm   ; inline operand = 6
  $8B23  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8B27  61                         PUSH_qimm   ; inline operand = 1
  $8B28  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $8B2C  37                         PUSH_quick   ; inline operand = 7
  $8B2D  39                         PUSH_quick   ; inline operand = 9
  $8B2E  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8B32  28                         STORE_quick   ; inline operand = 8
  $8B33  61                         PUSH_qimm   ; inline operand = 1
  $8B34  38                         PUSH_quick   ; inline operand = 8
  $8B35  61                         PUSH_qimm   ; inline operand = 1
  $8B36  8E CD 97                   PUSH_imm2              $97CD
  $8B39  E9 12 CD 08                CALL_abs_imm1          $CD12 {native}, $08
  $8B3D  2B                         STORE_quick   ; inline operand = 11
  $8B3E  07                         LOADL_quick   ; inline operand = 7
  $8B3F  52                         LOADR_qimm   ; inline operand = 2
  $8B40  B6                         SDIV
  $8B41  B3                         PUSHL
  $8B42  A5 74 6F                   BYTE_LOADL_abs         $6F74
  $8B45  D0                         INC
  $8B46  B4                         POPR
  $8B47  B5                         MULT
  $8B48  5A                         LOADR_qimm   ; inline operand = 10
  $8B49  B8                         UDIV
  $8B4A  B3                         PUSHL
  $8B4B  07                         LOADL_quick   ; inline operand = 7
  $8B4C  B4                         POPR
  $8B4D  BC                         SUB
  $8B4E  B3                         PUSHL
  $8B4F  0B                         LOADL_quick   ; inline operand = 11
  $8B50  B4                         POPR
  $8B51  C6                         UCMPLT
  $8B52  D8 67 8B                   JUMPF_abs              $8B67
  $8B55  61                         PUSH_qimm   ; inline operand = 1
  $8B56  66                         PUSH_qimm   ; inline operand = 6
  $8B57  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8B5B  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8B5E  8E E9 97                   PUSH_imm2              $97E9
  $8B61  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8B65  41                         LOADL_qimm   ; inline operand = 1
  $8B66  CF                         RETURN
 >$8B67  0B                         LOADL_quick   ; inline operand = 11
  $8B68  8B FF                      BYTE_LOADR_imm1        -1
  $8B6A  C0                         CMPEQ
  $8B6B  D8 7A 8B                   JUMPF_abs              $8B7A
  $8B6E  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8B71  8E 04 98                   PUSH_imm2              $9804
  $8B74  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8B78  43                         LOADL_qimm   ; inline operand = 3
  $8B79  CF                         RETURN
 >$8B7A  0B                         LOADL_quick   ; inline operand = 11
  $8B7B  27                         STORE_quick   ; inline operand = 7
 >$8B7C  3F                         PUSH_quick   ; inline operand = 15
  $8B7D  E9 2C 80 02                CALL_abs_imm1          $802C {bytecode}, $02
  $8B81  B3                         PUSHL
  $8B82  0F                         LOADL_quick   ; inline operand = 15
  $8B83  57                         LOADR_qimm   ; inline operand = 7
  $8B84  B5                         MULT
  $8B85  8C 96 6C                   LOADR_imm2             $6C96
  $8B88  BB                         ADD
  $8B89  D3                         BYTE_DEREF
  $8B8A  5F                         LOADR_qimm   ; inline operand = 15
  $8B8B  DA                         AND
  $8B8C  B3                         PUSHL
  $8B8D  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8B91  8F 12                      BYTE_ADD_imm1          +18
  $8B93  B3                         PUSHL
  $8B94  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8B98  B4                         POPR
  $8B99  BC                         SUB
  $8B9A  2A                         STORE_quick   ; inline operand = 10
  $8B9B  A4 6B 66                   LOADL_abs              $666B
  $8B9E  17                         LOADR_quick   ; inline operand = 7
  $8B9F  B8                         UDIV
  $8BA0  B3                         PUSHL
  $8BA1  3A                         PUSH_quick   ; inline operand = 10
  $8BA2  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8BA6  2A                         STORE_quick   ; inline operand = 10
  $8BA7  61                         PUSH_qimm   ; inline operand = 1
  $8BA8  66                         PUSH_qimm   ; inline operand = 6
  $8BA9  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8BAD  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8BB0  60                         PUSH_qimm   ; inline operand = 0
  $8BB1  8E 3D 98                   PUSH_imm2              $983D
  $8BB4  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8BB8  0D                         LOADL_quick   ; inline operand = 13
  $8BB9  1C                         LOADR_quick   ; inline operand = 12
  $8BBA  BB                         ADD
  $8BBB  D3                         BYTE_DEREF
  $8BBC  D2                         LSHIFT1
  $8BBD  8C 49 BB                   LOADR_imm2             $BB49
  $8BC0  BB                         ADD
  $8BC1  B3                         PUSHL
  $8BC2  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8BC6  B3                         PUSHL
  $8BC7  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8BCB  8D 17                      BYTE_PUSH_imm1         +23
  $8BCD  68                         PUSH_qimm   ; inline operand = 8
  $8BCE  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8BD2  61                         PUSH_qimm   ; inline operand = 1
  $8BD3  8E 48 98                   PUSH_imm2              $9848
  $8BD6  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8BDA  61                         PUSH_qimm   ; inline operand = 1
  $8BDB  3A                         PUSH_quick   ; inline operand = 10
  $8BDC  61                         PUSH_qimm   ; inline operand = 1
  $8BDD  8E 5A 98                   PUSH_imm2              $985A
  $8BE0  E9 F3 CC 08                CALL_abs_imm1          $CCF3 {native}, $08
  $8BE4  2B                         STORE_quick   ; inline operand = 11
  $8BE5  0B                         LOADL_quick   ; inline operand = 11
  $8BE6  8B FF                      BYTE_LOADR_imm1        -1
  $8BE8  C0                         CMPEQ
  $8BE9  D8 0A 8C                   JUMPF_abs              $8C0A
  $8BEC  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8BEF  8E 5B 98                   PUSH_imm2              $985B
  $8BF2  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8BF6  43                         LOADL_qimm   ; inline operand = 3
  $8BF7  CF                         RETURN
 >$8BF8  61                         PUSH_qimm   ; inline operand = 1
  $8BF9  66                         PUSH_qimm   ; inline operand = 6
  $8BFA  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8BFE  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8C01  8E 1E 98                   PUSH_imm2              $981E
  $8C04  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8C08  40                         LOADL_qimm   ; inline operand = 0
  $8C09  CF                         RETURN
 >$8C0A  0F                         LOADL_quick   ; inline operand = 15
  $8C0B  8B 18                      BYTE_LOADR_imm1        +24
  $8C0D  B5                         MULT
  $8C0E  8C A4 6A                   LOADR_imm2             $6AA4
  $8C11  BB                         ADD
  $8C12  85 EF                      STORE_near             $EF
  $8C14  40                         LOADL_qimm   ; inline operand = 0
  $8C15  26                         STORE_quick   ; inline operand = 6
  $8C16  40                         LOADL_qimm   ; inline operand = 0
  $8C17  D6 3B 8C                   JUMP_abs               $8C3B
 >$8C1A  0D                         LOADL_quick   ; inline operand = 13
  $8C1B  1C                         LOADR_quick   ; inline operand = 12
  $8C1C  BB                         ADD
  $8C1D  D3                         BYTE_DEREF
  $8C1E  B3                         PUSHL
  $8C1F  A0 F3 FF                   BYTE_LOADL_far         $FFF3
  $8C22  83 EF                      LOADR_near             $EF
  $8C24  BB                         ADD
  $8C25  D0                         INC
  $8C26  D3                         BYTE_DEREF
  $8C27  B4                         POPR
  $8C28  C0                         CMPEQ
  $8C29  D8 37 8C                   JUMPF_abs              $8C37
  $8C2C  A0 F3 FF                   BYTE_LOADL_far         $FFF3
  $8C2F  A2 F2 FF                   BYTE_STORE_far         $FFF2
  $8C32  41                         LOADL_qimm   ; inline operand = 1
  $8C33  26                         STORE_quick   ; inline operand = 6
  $8C34  D6 46 8C                   JUMP_abs               $8C46
 >$8C37  A0 F3 FF                   BYTE_LOADL_far         $FFF3
  $8C3A  D0                         INC
 >$8C3B  A2 F3 FF                   BYTE_STORE_far         $FFF3
  $8C3E  A0 F3 FF                   BYTE_LOADL_far         $FFF3
  $8C41  55                         LOADR_qimm   ; inline operand = 5
  $8C42  C6                         UCMPLT
  $8C43  D7 1A 8C                   JUMPT_abs              $8C1A
 >$8C46  06                         LOADL_quick   ; inline operand = 6
  $8C47  D7 74 8C                   JUMPT_abs              $8C74
  $8C4A  40                         LOADL_qimm   ; inline operand = 0
  $8C4B  D6 69 8C                   JUMP_abs               $8C69
 >$8C4E  A0 F3 FF                   BYTE_LOADL_far         $FFF3
  $8C51  D2                         LSHIFT1
  $8C52  83 EF                      LOADR_near             $EF
  $8C54  BB                         ADD
  $8C55  76                         ADD_qimm   ; inline operand = 6
  $8C56  B0                         DEREF
  $8C57  D7 65 8C                   JUMPT_abs              $8C65
  $8C5A  A0 F3 FF                   BYTE_LOADL_far         $FFF3
  $8C5D  A2 F2 FF                   BYTE_STORE_far         $FFF2
  $8C60  41                         LOADL_qimm   ; inline operand = 1
  $8C61  26                         STORE_quick   ; inline operand = 6
  $8C62  D6 74 8C                   JUMP_abs               $8C74
 >$8C65  A0 F3 FF                   BYTE_LOADL_far         $FFF3
  $8C68  D0                         INC
 >$8C69  A2 F3 FF                   BYTE_STORE_far         $FFF3
  $8C6C  A0 F3 FF                   BYTE_LOADL_far         $FFF3
  $8C6F  55                         LOADR_qimm   ; inline operand = 5
  $8C70  C6                         UCMPLT
  $8C71  D7 4E 8C                   JUMPT_abs              $8C4E
 >$8C74  A0 F2 FF                   BYTE_LOADL_far         $FFF2
  $8C77  83 EF                      LOADR_near             $EF
  $8C79  BB                         ADD
  $8C7A  D0                         INC
  $8C7B  B3                         PUSHL
  $8C7C  0D                         LOADL_quick   ; inline operand = 13
  $8C7D  1C                         LOADR_quick   ; inline operand = 12
  $8C7E  BB                         ADD
  $8C7F  D3                         BYTE_DEREF
  $8C80  D4                         BYTE_POPSTORE
  $8C81  3B                         PUSH_quick   ; inline operand = 11
  $8C82  A0 F2 FF                   BYTE_LOADL_far         $FFF2
  $8C85  D2                         LSHIFT1
  $8C86  83 EF                      LOADR_near             $EF
  $8C88  BB                         ADD
  $8C89  76                         ADD_qimm   ; inline operand = 6
  $8C8A  B4                         POPR
  $8C8B  B3                         PUSHL
  $8C8C  B0                         DEREF
  $8C8D  BB                         ADD
  $8C8E  B1                         POPSTORE
  $8C8F  0B                         LOADL_quick   ; inline operand = 11
  $8C90  17                         LOADR_quick   ; inline operand = 7
  $8C91  B5                         MULT
  $8C92  CD                         SWAP
  $8C93  A4 6B 66                   LOADL_abs              $666B
  $8C96  BC                         SUB
  $8C97  A8 6B 66                   STORE_abs              $666B
  $8C9A  0B                         LOADL_quick   ; inline operand = 11
  $8C9B  17                         LOADR_quick   ; inline operand = 7
  $8C9C  B5                         MULT
  $8C9D  8C E8 03                   LOADR_imm2             $03E8
  $8CA0  C8                         UCMPGT
  $8CA1  D8 EA 8C                   JUMPF_abs              $8CEA
  $8CA4  0B                         LOADL_quick   ; inline operand = 11
  $8CA5  17                         LOADR_quick   ; inline operand = 7
  $8CA6  B5                         MULT
  $8CA7  8C E8 03                   LOADR_imm2             $03E8
  $8CAA  B8                         UDIV
  $8CAB  B3                         PUSHL
  $8CAC  6A                         PUSH_qimm   ; inline operand = 10
  $8CAD  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8CB1  A2 F1 FF                   BYTE_STORE_far         $FFF1
  $8CB4  A0 F1 FF                   BYTE_LOADL_far         $FFF1
  $8CB7  B3                         PUSHL
  $8CB8  A5 67 70                   BYTE_LOADL_abs         $7067
  $8CBB  5E                         LOADR_qimm   ; inline operand = 14
  $8CBC  B5                         MULT
  $8CBD  8C BD 67                   LOADR_imm2             $67BD
  $8CC0  BB                         ADD
  $8CC1  D3                         BYTE_DEREF
  $8CC2  B4                         POPR
  $8CC3  BB                         ADD
  $8CC4  8B 64                      BYTE_LOADR_imm1        +100
  $8CC6  C8                         UCMPGT
  $8CC7  D8 D9 8C                   JUMPF_abs              $8CD9
  $8CCA  A5 67 70                   BYTE_LOADL_abs         $7067
  $8CCD  5E                         LOADR_qimm   ; inline operand = 14
  $8CCE  B5                         MULT
  $8CCF  8C BD 67                   LOADR_imm2             $67BD
  $8CD2  BB                         ADD
  $8CD3  B3                         PUSHL
  $8CD4  89 64                      BYTE_LOADL_imm1        +100
  $8CD6  D6 E9 8C                   JUMP_abs               $8CE9
 >$8CD9  A3 F1 FF                   BYTE_PUSH_far          $FFF1
  $8CDC  A5 67 70                   BYTE_LOADL_abs         $7067
  $8CDF  5E                         LOADR_qimm   ; inline operand = 14
  $8CE0  B5                         MULT
  $8CE1  8C BD 67                   LOADR_imm2             $67BD
  $8CE4  BB                         ADD
  $8CE5  B4                         POPR
  $8CE6  B3                         PUSHL
  $8CE7  D3                         BYTE_DEREF
  $8CE8  BB                         ADD
 >$8CE9  D4                         BYTE_POPSTORE
 >$8CEA  40                         LOADL_qimm   ; inline operand = 0
  $8CEB  CF                         RETURN

; ============================================================
; sub $8CEC   (frame_off=-40, body @ $8CF1)   [PRG $28CEC]
; ============================================================
  $8CF1  40                         LOADL_qimm   ; inline operand = 0
  $8CF2  24                         STORE_quick   ; inline operand = 4
  $8CF3  0C                         LOADL_quick   ; inline operand = 12
  $8CF4  57                         LOADR_qimm   ; inline operand = 7
  $8CF5  B5                         MULT
  $8CF6  8C 96 6C                   LOADR_imm2             $6C96
  $8CF9  BB                         ADD
  $8CFA  D3                         BYTE_DEREF
  $8CFB  5F                         LOADR_qimm   ; inline operand = 15
  $8CFC  DA                         AND
  $8CFD  B3                         PUSHL
  $8CFE  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8D02  8F 12                      BYTE_ADD_imm1          +18
  $8D04  B3                         PUSHL
  $8D05  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8D09  B3                         PUSHL
  $8D0A  3C                         PUSH_quick   ; inline operand = 12
  $8D0B  E9 2C 80 02                CALL_abs_imm1          $802C {bytecode}, $02
  $8D0F  B4                         POPR
  $8D10  C0                         CMPEQ
  $8D11  D7 2F 8D                   JUMPT_abs              $8D2F
  $8D14  3C                         PUSH_quick   ; inline operand = 12
  $8D15  E9 C7 85 02                CALL_abs_imm1          $85C7 {bytecode}, $02
  $8D19  55                         LOADR_qimm   ; inline operand = 5
  $8D1A  C0                         CMPEQ
  $8D1B  D8 40 8D                   JUMPF_abs              $8D40
  $8D1E  DE DC FF                   LEAL_far               $FFDC
  $8D21  B3                         PUSHL
  $8D22  DE F6 FF                   LEAL_far               $FFF6
  $8D25  B3                         PUSHL
  $8D26  3C                         PUSH_quick   ; inline operand = 12
  $8D27  E9 6D 86 06                CALL_abs_imm1          $866D {bytecode}, $06
  $8D2B  26                         STORE_quick   ; inline operand = 6
  $8D2C  D7 40 8D                   JUMPT_abs              $8D40
 >$8D2F  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8D32  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8D35  8E 82 98                   PUSH_imm2              $9882
  $8D38  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8D3C  8A FF 00                   LOADL_imm2             $00FF
  $8D3F  CF                         RETURN
 >$8D40  AC EC B7                   CALL_abs               $B7EC {native}
  $8D43  8E E7 00                   PUSH_imm2              $00E7
  $8D46  8E 54 B2                   PUSH_imm2              $B254
  $8D49  8E 56 B0                   PUSH_imm2              $B056
  $8D4C  8D 11                      BYTE_PUSH_imm1         +17
  $8D4E  8D 1E                      BYTE_PUSH_imm1         +30
  $8D50  63                         PUSH_qimm   ; inline operand = 3
  $8D51  61                         PUSH_qimm   ; inline operand = 1
  $8D52  69                         PUSH_qimm   ; inline operand = 9
  $8D53  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8D57  60                         PUSH_qimm   ; inline operand = 0
  $8D58  8E F9 00                   PUSH_imm2              $00F9
  $8D5B  61                         PUSH_qimm   ; inline operand = 1
  $8D5C  8D 1C                      BYTE_PUSH_imm1         +28
  $8D5E  66                         PUSH_qimm   ; inline operand = 6
  $8D5F  62                         PUSH_qimm   ; inline operand = 2
  $8D60  68                         PUSH_qimm   ; inline operand = 8
  $8D61  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $8D65  60                         PUSH_qimm   ; inline operand = 0
  $8D66  8E FA 00                   PUSH_imm2              $00FA
  $8D69  6C                         PUSH_qimm   ; inline operand = 12
  $8D6A  61                         PUSH_qimm   ; inline operand = 1
  $8D6B  67                         PUSH_qimm   ; inline operand = 7
  $8D6C  8D 15                      BYTE_PUSH_imm1         +21
  $8D6E  68                         PUSH_qimm   ; inline operand = 8
  $8D6F  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $8D73  64                         PUSH_qimm   ; inline operand = 4
  $8D74  63                         PUSH_qimm   ; inline operand = 3
  $8D75  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8D79  61                         PUSH_qimm   ; inline operand = 1
  $8D7A  8E 95 98                   PUSH_imm2              $9895
  $8D7D  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8D81  41                         LOADL_qimm   ; inline operand = 1
  $8D82  85 D8                      STORE_near             $D8
 >$8D84  40                         LOADL_qimm   ; inline operand = 0
  $8D85  85 DA                      STORE_near             $DA
  $8D87  81 D8                      LOADL_near             $D8
  $8D89  D8 99 8D                   JUMPF_abs              $8D99
  $8D8C  DE DC FF                   LEAL_far               $FFDC
  $8D8F  B3                         PUSHL
  $8D90  DE F6 FF                   LEAL_far               $FFF6
  $8D93  B3                         PUSHL
  $8D94  E9 9F 88 04                CALL_abs_imm1          $889F {bytecode}, $04
  $8D98  26                         STORE_quick   ; inline operand = 6
 >$8D99  41                         LOADL_qimm   ; inline operand = 1
  $8D9A  85 D8                      STORE_near             $D8
  $8D9C  61                         PUSH_qimm   ; inline operand = 1
  $8D9D  66                         PUSH_qimm   ; inline operand = 6
  $8D9E  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8DA2  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8DA5  61                         PUSH_qimm   ; inline operand = 1
  $8DA6  8E A8 98                   PUSH_imm2              $98A8
  $8DA9  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8DAD  34                         PUSH_quick   ; inline operand = 4
  $8DAE  3C                         PUSH_quick   ; inline operand = 12
  $8DAF  DE DC FF                   LEAL_far               $FFDC
  $8DB2  B3                         PUSHL
  $8DB3  DE F6 FF                   LEAL_far               $FFF6
  $8DB6  B3                         PUSHL
  $8DB7  36                         PUSH_quick   ; inline operand = 6
  $8DB8  E9 89 87 0A                CALL_abs_imm1          $8789 (market_draw_cargo) {bytecode}, $0A
  $8DBC  3C                         PUSH_quick   ; inline operand = 12
  $8DBD  DE DC FF                   LEAL_far               $FFDC
  $8DC0  B3                         PUSHL
  $8DC1  DE F6 FF                   LEAL_far               $FFF6
  $8DC4  B3                         PUSHL
  $8DC5  06                         LOADL_quick   ; inline operand = 6
  $8DC6  D1                         DEC
  $8DC7  B3                         PUSHL
  $8DC8  E9 88 89 08                CALL_abs_imm1          $8988 {bytecode}, $08
  $8DCC  25                         STORE_quick   ; inline operand = 5
  $8DCD  05                         LOADL_quick   ; inline operand = 5
  $8DCE  8C FF 00                   LOADR_imm2             $00FF
  $8DD1  C1                         CMPNE
  $8DD2  D8 17 8E                   JUMPF_abs              $8E17
  $8DD5  3C                         PUSH_quick   ; inline operand = 12
  $8DD6  DE DC FF                   LEAL_far               $FFDC
  $8DD9  B3                         PUSHL
  $8DDA  DE F6 FF                   LEAL_far               $FFF6
  $8DDD  B3                         PUSHL
  $8DDE  35                         PUSH_quick   ; inline operand = 5
  $8DDF  E9 5A 8A 08                CALL_abs_imm1          $8A5A (market_buy_confirm) {bytecode}, $08
  $8DE3  85 DA                      STORE_near             $DA
  $8DE5  81 DA                      LOADL_near             $DA
  $8DE7  53                         LOADR_qimm   ; inline operand = 3
  $8DE8  C0                         CMPEQ
  $8DE9  D8 F1 8D                   JUMPF_abs              $8DF1
  $8DEC  40                         LOADL_qimm   ; inline operand = 0
  $8DED  85 DA                      STORE_near             $DA
  $8DEF  85 D8                      STORE_near             $D8
 >$8DF1  3C                         PUSH_quick   ; inline operand = 12
  $8DF2  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8DF6  8F 12                      BYTE_ADD_imm1          +18
  $8DF8  B3                         PUSHL
  $8DF9  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8DFD  B3                         PUSHL
  $8DFE  3C                         PUSH_quick   ; inline operand = 12
  $8DFF  E9 EA D9 02                CALL_abs_imm1          $D9EA {native}, $02
  $8E03  B4                         POPR
  $8E04  C0                         CMPEQ
  $8E05  D8 17 8E                   JUMPF_abs              $8E17
  $8E08  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8E0B  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8E0E  8E C7 98                   PUSH_imm2              $98C7
  $8E11  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8E15  41                         LOADL_qimm   ; inline operand = 1
  $8E16  CF                         RETURN
 >$8E17  05                         LOADL_quick   ; inline operand = 5
  $8E18  8C FF 00                   LOADR_imm2             $00FF
  $8E1B  C0                         CMPEQ
  $8E1C  D7 24 8E                   JUMPT_abs              $8E24
  $8E1F  81 DA                      LOADL_near             $DA
  $8E21  D8 84 8D                   JUMPF_abs              $8D84
 >$8E24  81 DA                      LOADL_near             $DA
  $8E26  CF                         RETURN

; ============================================================
; sub $8E27   (frame_off=-24, body @ $8E2C)   [PRG $28E27]
; ============================================================
  $8E2C  3C                         PUSH_quick   ; inline operand = 12
  $8E2D  40                         LOADL_qimm   ; inline operand = 0
  $8E2E  D4                         BYTE_POPSTORE
  $8E2F  40                         LOADL_qimm   ; inline operand = 0
  $8E30  20                         STORE_quick   ; inline operand = 0
  $8E31  DE F8 FF                   LEAL_far               $FFF8
  $8E34  B3                         PUSHL
  $8E35  60                         PUSH_qimm   ; inline operand = 0
  $8E36  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $8E3A  A2 FF FF                   BYTE_STORE_far         $FFFF
  $8E3D  41                         LOADL_qimm   ; inline operand = 1
  $8E3E  21                         STORE_quick   ; inline operand = 1
  $8E3F  40                         LOADL_qimm   ; inline operand = 0
  $8E40  22                         STORE_quick   ; inline operand = 2
  $8E41  40                         LOADL_qimm   ; inline operand = 0
  $8E42  D6 96 8E                   JUMP_abs               $8E96
 >$8E45  DE F8 FF                   LEAL_far               $FFF8
  $8E48  B3                         PUSHL
  $8E49  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $8E4C  B4                         POPR
  $8E4D  BB                         ADD
  $8E4E  D3                         BYTE_DEREF
  $8E4F  57                         LOADR_qimm   ; inline operand = 7
  $8E50  B5                         MULT
  $8E51  8C 96 6C                   LOADR_imm2             $6C96
  $8E54  BB                         ADD
  $8E55  D3                         BYTE_DEREF
  $8E56  5F                         LOADR_qimm   ; inline operand = 15
  $8E57  DA                         AND
  $8E58  B3                         PUSHL
  $8E59  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8E5D  8F 12                      BYTE_ADD_imm1          +18
  $8E5F  B3                         PUSHL
  $8E60  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8E64  B3                         PUSHL
  $8E65  DE F8 FF                   LEAL_far               $FFF8
  $8E68  B3                         PUSHL
  $8E69  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $8E6C  B4                         POPR
  $8E6D  BB                         ADD
  $8E6E  D3                         BYTE_DEREF
  $8E6F  B3                         PUSHL
  $8E70  E9 2C 80 02                CALL_abs_imm1          $802C {bytecode}, $02
  $8E74  B4                         POPR
  $8E75  C2                         SCMPLT
  $8E76  D8 92 8E                   JUMPF_abs              $8E92
  $8E79  DE F8 FF                   LEAL_far               $FFF8
  $8E7C  B3                         PUSHL
  $8E7D  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $8E80  B4                         POPR
  $8E81  BB                         ADD
  $8E82  D3                         BYTE_DEREF
  $8E83  B3                         PUSHL
  $8E84  E9 C7 85 02                CALL_abs_imm1          $85C7 {bytecode}, $02
  $8E88  55                         LOADR_qimm   ; inline operand = 5
  $8E89  C7                         UCMPLE
  $8E8A  D8 92 8E                   JUMPF_abs              $8E92
  $8E8D  40                         LOADL_qimm   ; inline operand = 0
  $8E8E  21                         STORE_quick   ; inline operand = 1
  $8E8F  D6 A5 8E                   JUMP_abs               $8EA5
 >$8E92  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $8E95  D0                         INC
 >$8E96  A2 FE FF                   BYTE_STORE_far         $FFFE
  $8E99  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8E9C  B3                         PUSHL
  $8E9D  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $8EA0  B4                         POPR
  $8EA1  C6                         UCMPLT
  $8EA2  D7 45 8E                   JUMPT_abs              $8E45
 >$8EA5  01                         LOADL_quick   ; inline operand = 1
  $8EA6  D8 B8 8E                   JUMPF_abs              $8EB8
  $8EA9  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8EAC  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8EAF  8E DF 98                   PUSH_imm2              $98DF
  $8EB2  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8EB6  40                         LOADL_qimm   ; inline operand = 0
  $8EB7  CF                         RETURN
 >$8EB8  A4 6B 66                   LOADL_abs              $666B
  $8EBB  D7 CD 8E                   JUMPT_abs              $8ECD
  $8EBE  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8EC1  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8EC4  8E FE 98                   PUSH_imm2              $98FE
  $8EC7  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8ECB  40                         LOADL_qimm   ; inline operand = 0
  $8ECC  CF                         RETURN
 >$8ECD  40                         LOADL_qimm   ; inline operand = 0
  $8ECE  21                         STORE_quick   ; inline operand = 1
  $8ECF  8A F0 00                   LOADL_imm2             $00F0
  $8ED2  A9 63 70                   BYTE_STORE_abs         $7063
  $8ED5  60                         PUSH_qimm   ; inline operand = 0
  $8ED6  8D 12                      BYTE_PUSH_imm1         +18
  $8ED8  8D 1C                      BYTE_PUSH_imm1         +28
  $8EDA  62                         PUSH_qimm   ; inline operand = 2
  $8EDB  62                         PUSH_qimm   ; inline operand = 2
  $8EDC  E9 05 A4 0A                CALL_abs_imm1          $A405 {native}, $0A
 >$8EE0  61                         PUSH_qimm   ; inline operand = 1
  $8EE1  66                         PUSH_qimm   ; inline operand = 6
  $8EE2  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8EE6  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8EE9  61                         PUSH_qimm   ; inline operand = 1
  $8EEA  8E 1E 99                   PUSH_imm2              $991E
  $8EED  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8EF1  00                         LOADL_quick   ; inline operand = 0
  $8EF2  D7 06 8F                   JUMPT_abs              $8F06
  $8EF5  AC EC B7                   CALL_abs               $B7EC {native}
  $8EF8  DE F8 FF                   LEAL_far               $FFF8
  $8EFB  B3                         PUSHL
  $8EFC  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8EFF  B3                         PUSHL
  $8F00  E9 94 80 04                CALL_abs_imm1          $8094 (market_draw_ship_load) {bytecode}, $04
  $8F04  41                         LOADL_qimm   ; inline operand = 1
  $8F05  20                         STORE_quick   ; inline operand = 0
 >$8F06  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8F09  B3                         PUSHL
  $8F0A  62                         PUSH_qimm   ; inline operand = 2
  $8F0B  68                         PUSH_qimm   ; inline operand = 8
  $8F0C  66                         PUSH_qimm   ; inline operand = 6
  $8F0D  E9 16 A2 08                CALL_abs_imm1          $A216 {native}, $08
  $8F11  A2 FD FF                   BYTE_STORE_far         $FFFD
  $8F14  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $8F17  8C FF 00                   LOADR_imm2             $00FF
  $8F1A  C1                         CMPNE
  $8F1B  D8 3E 8F                   JUMPF_abs              $8F3E
  $8F1E  3C                         PUSH_quick   ; inline operand = 12
  $8F1F  DE F8 FF                   LEAL_far               $FFF8
  $8F22  B3                         PUSHL
  $8F23  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $8F26  B4                         POPR
  $8F27  BB                         ADD
  $8F28  D3                         BYTE_DEREF
  $8F29  B3                         PUSHL
  $8F2A  E9 EC 8C 04                CALL_abs_imm1          $8CEC (market_buy_menu) {bytecode}, $04
  $8F2E  21                         STORE_quick   ; inline operand = 1
  $8F2F  01                         LOADL_quick   ; inline operand = 1
  $8F30  8C FF 00                   LOADR_imm2             $00FF
  $8F33  C0                         CMPEQ
  $8F34  D8 3C 8F                   JUMPF_abs              $8F3C
  $8F37  40                         LOADL_qimm   ; inline operand = 0
  $8F38  21                         STORE_quick   ; inline operand = 1
  $8F39  D6 3E 8F                   JUMP_abs               $8F3E
 >$8F3C  40                         LOADL_qimm   ; inline operand = 0
  $8F3D  20                         STORE_quick   ; inline operand = 0
 >$8F3E  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $8F41  8C FF 00                   LOADR_imm2             $00FF
  $8F44  C0                         CMPEQ
  $8F45  D7 4C 8F                   JUMPT_abs              $8F4C
  $8F48  01                         LOADL_quick   ; inline operand = 1
  $8F49  D8 E0 8E                   JUMPF_abs              $8EE0
 >$8F4C  01                         LOADL_quick   ; inline operand = 1
  $8F4D  D8 80 8F                   JUMPF_abs              $8F80
  $8F50  A5 67 70                   BYTE_LOADL_abs         $7067
  $8F53  5E                         LOADR_qimm   ; inline operand = 14
  $8F54  B5                         MULT
  $8F55  8C BD 67                   LOADR_imm2             $67BD
  $8F58  BB                         ADD
  $8F59  D3                         BYTE_DEREF
  $8F5A  8B 5A                      BYTE_LOADR_imm1        +90
  $8F5C  C6                         UCMPLT
  $8F5D  D8 73 8F                   JUMPF_abs              $8F73
  $8F60  0C                         LOADL_quick   ; inline operand = 12
  $8F61  D3                         BYTE_DEREF
  $8F62  B3                         PUSHL
  $8F63  A5 67 70                   BYTE_LOADL_abs         $7067
  $8F66  5E                         LOADR_qimm   ; inline operand = 14
  $8F67  B5                         MULT
  $8F68  8C BD 67                   LOADR_imm2             $67BD
  $8F6B  BB                         ADD
  $8F6C  B4                         POPR
  $8F6D  B3                         PUSHL
  $8F6E  D3                         BYTE_DEREF
  $8F6F  BB                         ADD
  $8F70  D6 7F 8F                   JUMP_abs               $8F7F
 >$8F73  A5 67 70                   BYTE_LOADL_abs         $7067
  $8F76  5E                         LOADR_qimm   ; inline operand = 14
  $8F77  B5                         MULT
  $8F78  8C BD 67                   LOADR_imm2             $67BD
  $8F7B  BB                         ADD
  $8F7C  B3                         PUSHL
  $8F7D  89 64                      BYTE_LOADL_imm1        +100
 >$8F7F  D4                         BYTE_POPSTORE
 >$8F80  AC EC B7                   CALL_abs               $B7EC {native}
  $8F83  60                         PUSH_qimm   ; inline operand = 0
  $8F84  8D 12                      BYTE_PUSH_imm1         +18
  $8F86  8D 1C                      BYTE_PUSH_imm1         +28
  $8F88  62                         PUSH_qimm   ; inline operand = 2
  $8F89  62                         PUSH_qimm   ; inline operand = 2
  $8F8A  E9 9B A4 0A                CALL_abs_imm1          $A49B {native}, $0A
  $8F8E  40                         LOADL_qimm   ; inline operand = 0
  $8F8F  CF                         RETURN

; ============================================================
; sub $8F90   (frame_off=-2, body @ $8F95)   [PRG $28F90]
; ============================================================
  $8F95  40                         LOADL_qimm   ; inline operand = 0
  $8F96  2B                         STORE_quick   ; inline operand = 11
 >$8F97  A0 0D 00                   BYTE_LOADL_far         $000D
  $8F9A  B3                         PUSHL
  $8F9B  3C                         PUSH_quick   ; inline operand = 12
  $8F9C  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8FA0  B4                         POPR
  $8FA1  C0                         CMPEQ
  $8FA2  D8 A7 8F                   JUMPF_abs              $8FA7
  $8FA5  0B                         LOADL_quick   ; inline operand = 11
  $8FA6  CF                         RETURN
 >$8FA7  0C                         LOADL_quick   ; inline operand = 12
  $8FA8  D0                         INC
  $8FA9  2C                         STORE_quick   ; inline operand = 12
  $8FAA  0B                         LOADL_quick   ; inline operand = 11
  $8FAB  D0                         INC
  $8FAC  2B                         STORE_quick   ; inline operand = 11
  $8FAD  0B                         LOADL_quick   ; inline operand = 11
  $8FAE  59                         LOADR_qimm   ; inline operand = 9
  $8FAF  C6                         UCMPLT
  $8FB0  D7 97 8F                   JUMPT_abs              $8F97
  $8FB3  8A FF 00                   LOADL_imm2             $00FF
  $8FB6  CF                         RETURN

; ============================================================
; sub $8FB7   (frame_off=-32, body @ $8FBC)   [PRG $28FB7]
; ============================================================
  $8FBC  A5 67 70                   BYTE_LOADL_abs         $7067
  $8FBF  55                         LOADR_qimm   ; inline operand = 5
  $8FC0  B5                         MULT
  $8FC1  8C 0A B5                   LOADR_imm2             $B50A
  $8FC4  BB                         ADD
  $8FC5  2A                         STORE_quick   ; inline operand = 10
  $8FC6  0A                         LOADL_quick   ; inline operand = 10
  $8FC7  D0                         INC
  $8FC8  B3                         PUSHL
  $8FC9  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8FCD  24                         STORE_quick   ; inline operand = 4
  $8FCE  0A                         LOADL_quick   ; inline operand = 10
  $8FCF  72                         ADD_qimm   ; inline operand = 2
  $8FD0  B3                         PUSHL
  $8FD1  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8FD5  23                         STORE_quick   ; inline operand = 3
  $8FD6  3A                         PUSH_quick   ; inline operand = 10
  $8FD7  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8FDB  8B 58                      BYTE_LOADR_imm1        +88
  $8FDD  B5                         MULT
  $8FDE  8C 64 B8                   LOADR_imm2             $B864
  $8FE1  BB                         ADD
  $8FE2  2B                         STORE_quick   ; inline operand = 11
  $8FE3  0B                         LOADL_quick   ; inline operand = 11
  $8FE4  28                         STORE_quick   ; inline operand = 8
  $8FE5  0B                         LOADL_quick   ; inline operand = 11
  $8FE6  79                         ADD_qimm   ; inline operand = 9
  $8FE7  27                         STORE_quick   ; inline operand = 7
  $8FE8  0B                         LOADL_quick   ; inline operand = 11
  $8FE9  8F 12                      BYTE_ADD_imm1          +18
  $8FEB  22                         STORE_quick   ; inline operand = 2
  $8FEC  0B                         LOADL_quick   ; inline operand = 11
  $8FED  8F 24                      BYTE_ADD_imm1          +36
  $8FEF  21                         STORE_quick   ; inline operand = 1
  $8FF0  A5 67 70                   BYTE_LOADL_abs         $7067
  $8FF3  5E                         LOADR_qimm   ; inline operand = 14
  $8FF4  B5                         MULT
  $8FF5  8C B2 67                   LOADR_imm2             $67B2
  $8FF8  BB                         ADD
  $8FF9  29                         STORE_quick   ; inline operand = 9
  $8FFA  09                         LOADL_quick   ; inline operand = 9
  $8FFB  B0                         DEREF
  $8FFC  85 E4                      STORE_near             $E4
  $8FFE  09                         LOADL_quick   ; inline operand = 9
  $8FFF  7C                         ADD_qimm   ; inline operand = 12
  $9000  B0                         DEREF
  $9001  85 E2                      STORE_near             $E2
  $9003  09                         LOADL_quick   ; inline operand = 9
  $9004  7B                         ADD_qimm   ; inline operand = 11
  $9005  D3                         BYTE_DEREF
  $9006  8F 32                      BYTE_ADD_imm1          +50
  $9008  20                         STORE_quick   ; inline operand = 0
  $9009  0D                         LOADL_quick   ; inline operand = 13
  $900A  D8 4B 90                   JUMPF_abs              $904B
  $900D  AC EC B7                   CALL_abs               $B7EC {native}
  $9010  8E E7 00                   PUSH_imm2              $00E7
  $9013  8E E0 AE                   PUSH_imm2              $AEE0
  $9016  8E 6A AD                   PUSH_imm2              $AD6A
  $9019  8D 11                      BYTE_PUSH_imm1         +17
  $901B  8D 16                      BYTE_PUSH_imm1         +22
  $901D  63                         PUSH_qimm   ; inline operand = 3
  $901E  65                         PUSH_qimm   ; inline operand = 5
  $901F  69                         PUSH_qimm   ; inline operand = 9
  $9020  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $9024  64                         PUSH_qimm   ; inline operand = 4
  $9025  66                         PUSH_qimm   ; inline operand = 6
  $9026  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $902A  60                         PUSH_qimm   ; inline operand = 0
  $902B  8E 8E 99                   PUSH_imm2              $998E
  $902E  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $9032  65                         PUSH_qimm   ; inline operand = 5
  $9033  66                         PUSH_qimm   ; inline operand = 6
  $9034  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $9038  60                         PUSH_qimm   ; inline operand = 0
  $9039  8E A3 99                   PUSH_imm2              $99A3
  $903C  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $9040  60                         PUSH_qimm   ; inline operand = 0
  $9041  8E F9 00                   PUSH_imm2              $00F9
  $9044  61                         PUSH_qimm   ; inline operand = 1
  $9045  8D 14                      BYTE_PUSH_imm1         +20
  $9047  66                         PUSH_qimm   ; inline operand = 6
  $9048  D6 51 90                   JUMP_abs               $9051
 >$904B  60                         PUSH_qimm   ; inline operand = 0
  $904C  60                         PUSH_qimm   ; inline operand = 0
  $904D  6C                         PUSH_qimm   ; inline operand = 12
  $904E  8D 14                      BYTE_PUSH_imm1         +20
  $9050  67                         PUSH_qimm   ; inline operand = 7
 >$9051  66                         PUSH_qimm   ; inline operand = 6
  $9052  68                         PUSH_qimm   ; inline operand = 8
  $9053  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $9057  40                         LOADL_qimm   ; inline operand = 0
  $9058  D6 95 91                   JUMP_abs               $9195
 >$905B  06                         LOADL_quick   ; inline operand = 6
  $905C  D2                         LSHIFT1
  $905D  78                         ADD_qimm   ; inline operand = 8
  $905E  B3                         PUSHL
  $905F  66                         PUSH_qimm   ; inline operand = 6
  $9060  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $9064  0C                         LOADL_quick   ; inline operand = 12
  $9065  8C 4B 99                   LOADR_imm2             $994B
  $9068  BB                         ADD
  $9069  D3                         BYTE_DEREF
  $906A  16                         LOADR_quick   ; inline operand = 6
  $906B  BB                         ADD
  $906C  D2                         LSHIFT1
  $906D  8C 49 BB                   LOADR_imm2             $BB49
  $9070  BB                         ADD
  $9071  B3                         PUSHL
  $9072  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $9076  B3                         PUSHL
  $9077  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $907B  0C                         LOADL_quick   ; inline operand = 12
  $907C  8C 4B 99                   LOADR_imm2             $994B
  $907F  BB                         ADD
  $9080  D3                         BYTE_DEREF
  $9081  16                         LOADR_quick   ; inline operand = 6
  $9082  BB                         ADD
  $9083  B3                         PUSHL
  $9084  37                         PUSH_quick   ; inline operand = 7
  $9085  E9 90 8F 04                CALL_abs_imm1          $8F90 {bytecode}, $04
  $9089  25                         STORE_quick   ; inline operand = 5
  $908A  06                         LOADL_quick   ; inline operand = 6
  $908B  D2                         LSHIFT1
  $908C  78                         ADD_qimm   ; inline operand = 8
  $908D  B3                         PUSHL
  $908E  8D 10                      BYTE_PUSH_imm1         +16
  $9090  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $9094  08                         LOADL_quick   ; inline operand = 8
  $9095  15                         LOADR_quick   ; inline operand = 5
  $9096  BB                         ADD
  $9097  B3                         PUSHL
  $9098  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $909C  85 E0                      STORE_near             $E0
  $909E  05                         LOADL_quick   ; inline operand = 5
  $909F  8C FF 00                   LOADR_imm2             $00FF
  $90A2  C1                         CMPNE
  $90A3  D8 DA 90                   JUMPF_abs              $90DA
  $90A6  81 E0                      LOADL_near             $E0
  $90A8  8B 32                      BYTE_LOADR_imm1        +50
  $90AA  B5                         MULT
  $90AB  83 E4                      LOADR_near             $E4
  $90AD  C3                         SCMPLE
  $90AE  D8 DA 90                   JUMPF_abs              $90DA
  $90B1  00                         LOADL_quick   ; inline operand = 0
  $90B2  B7 25                      LONG                   $25
  $90B4  B7 14                      LONG                   $14
  $90B6  05                         LOADL_quick   ; inline operand = 5
  $90B7  D2                         LSHIFT1
  $90B8  12                         LOADR_quick   ; inline operand = 2
  $90B9  BB                         ADD
  $90BA  B3                         PUSHL
  $90BB  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $90BF  B7 25                      LONG                   $25
  $90C1  B7 15                      LONG                   $15
  $90C3  B7 01                      LONG                   $01
  $90C5  B7 19 64 00 00 00          LONG                   $19 $64 $00 $00 $00
  $90CB  B7 02                      LONG                   $02
  $90CD  B7 27                      LONG                   $27
  $90CF  B3                         PUSHL
  $90D0  8E B8 99                   PUSH_imm2              $99B8
 >$90D3  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $90D7  D6 26 91                   JUMP_abs               $9126
 >$90DA  04                         LOADL_quick   ; inline operand = 4
  $90DB  8C FF 00                   LOADR_imm2             $00FF
  $90DE  C1                         CMPNE
  $90DF  D8 1E 91                   JUMPF_abs              $911E
  $90E2  0C                         LOADL_quick   ; inline operand = 12
  $90E3  8C 4B 99                   LOADR_imm2             $994B
  $90E6  BB                         ADD
  $90E7  D3                         BYTE_DEREF
  $90E8  16                         LOADR_quick   ; inline operand = 6
  $90E9  BB                         ADD
  $90EA  14                         LOADR_quick   ; inline operand = 4
  $90EB  C0                         CMPEQ
  $90EC  D8 1E 91                   JUMPF_abs              $911E
  $90EF  03                         LOADL_quick   ; inline operand = 3
  $90F0  8B 32                      BYTE_LOADR_imm1        +50
  $90F2  B5                         MULT
  $90F3  83 E4                      LOADR_near             $E4
  $90F5  C3                         SCMPLE
  $90F6  D8 17 91                   JUMPF_abs              $9117
  $90F9  00                         LOADL_quick   ; inline operand = 0
  $90FA  B7 25                      LONG                   $25
  $90FC  B7 14                      LONG                   $14
  $90FE  81 E2                      LOADL_near             $E2
  $9100  B7 25                      LONG                   $25
  $9102  B7 15                      LONG                   $15
  $9104  B7 01                      LONG                   $01
  $9106  B7 19 64 00 00 00          LONG                   $19 $64 $00 $00 $00
  $910C  B7 02                      LONG                   $02
  $910E  B7 27                      LONG                   $27
  $9110  B3                         PUSHL
  $9111  8E BC 99                   PUSH_imm2              $99BC
  $9114  D6 D3 90                   JUMP_abs               $90D3
 >$9117  60                         PUSH_qimm   ; inline operand = 0
  $9118  8E C0 99                   PUSH_imm2              $99C0
  $911B  D6 22 91                   JUMP_abs               $9122
 >$911E  60                         PUSH_qimm   ; inline operand = 0
  $911F  8E C5 99                   PUSH_imm2              $99C5
 >$9122  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
 >$9126  06                         LOADL_quick   ; inline operand = 6
  $9127  D2                         LSHIFT1
  $9128  78                         ADD_qimm   ; inline operand = 8
  $9129  B3                         PUSHL
  $912A  8D 16                      BYTE_PUSH_imm1         +22
  $912C  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $9130  00                         LOADL_quick   ; inline operand = 0
  $9131  B7 25                      LONG                   $25
  $9133  B7 14                      LONG                   $14
  $9135  0C                         LOADL_quick   ; inline operand = 12
  $9136  8C 4B 99                   LOADR_imm2             $994B
  $9139  BB                         ADD
  $913A  D3                         BYTE_DEREF
  $913B  16                         LOADR_quick   ; inline operand = 6
  $913C  BB                         ADD
  $913D  D2                         LSHIFT1
  $913E  11                         LOADR_quick   ; inline operand = 1
  $913F  BB                         ADD
  $9140  B3                         PUSHL
  $9141  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $9145  B7 25                      LONG                   $25
  $9147  B7 15                      LONG                   $15
  $9149  B7 01                      LONG                   $01
  $914B  B7 19 64 00 00 00          LONG                   $19 $64 $00 $00 $00
  $9151  B7 02                      LONG                   $02
  $9153  B7 27                      LONG                   $27
  $9155  85 E6                      STORE_near             $E6
  $9157  0C                         LOADL_quick   ; inline operand = 12
  $9158  8C 4B 99                   LOADR_imm2             $994B
  $915B  BB                         ADD
  $915C  D3                         BYTE_DEREF
  $915D  16                         LOADR_quick   ; inline operand = 6
  $915E  BB                         ADD
  $915F  14                         LOADR_quick   ; inline operand = 4
  $9160  C0                         CMPEQ
  $9161  D8 8A 91                   JUMPF_abs              $918A
  $9164  03                         LOADL_quick   ; inline operand = 3
  $9165  8B 32                      BYTE_LOADR_imm1        +50
  $9167  B5                         MULT
  $9168  83 E4                      LOADR_near             $E4
  $916A  C7                         UCMPLE
  $916B  D8 8A 91                   JUMPF_abs              $918A
  $916E  00                         LOADL_quick   ; inline operand = 0
  $916F  B7 25                      LONG                   $25
  $9171  B7 14                      LONG                   $14
  $9173  81 E2                      LOADL_near             $E2
  $9175  B7 25                      LONG                   $25
  $9177  B7 15                      LONG                   $15
  $9179  B7 01                      LONG                   $01
  $917B  B7 19 64 00 00 00          LONG                   $19 $64 $00 $00 $00
  $9181  B7 02                      LONG                   $02
  $9183  B7 27                      LONG                   $27
  $9185  52                         LOADR_qimm   ; inline operand = 2
  $9186  B6                         SDIV
  $9187  D0                         INC
  $9188  85 E6                      STORE_near             $E6
 >$918A  87 E6                      PUSH_near              $E6
  $918C  8E CA 99                   PUSH_imm2              $99CA
  $918F  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $9193  06                         LOADL_quick   ; inline operand = 6
  $9194  D0                         INC
 >$9195  26                         STORE_quick   ; inline operand = 6
  $9196  0C                         LOADL_quick   ; inline operand = 12
  $9197  8C 51 99                   LOADR_imm2             $9951
  $919A  BB                         ADD
  $919B  D3                         BYTE_DEREF
  $919C  B3                         PUSHL
  $919D  06                         LOADL_quick   ; inline operand = 6
  $919E  B4                         POPR
  $919F  C6                         UCMPLT
  $91A0  D7 5B 90                   JUMPT_abs              $905B
  $91A3  8D 11                      BYTE_PUSH_imm1         +17
  $91A5  6C                         PUSH_qimm   ; inline operand = 12
  $91A6  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $91AA  0C                         LOADL_quick   ; inline operand = 12
  $91AB  D2                         LSHIFT1
  $91AC  8C 3F 99                   LOADR_imm2             $993F
  $91AF  BB                         ADD
  $91B0  B0                         DEREF
  $91B1  B3                         PUSHL
  $91B2  8E CE 99                   PUSH_imm2              $99CE
  $91B5  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $91B9  0C                         LOADL_quick   ; inline operand = 12
  $91BA  55                         LOADR_qimm   ; inline operand = 5
  $91BB  C6                         UCMPLT
  $91BC  D8 C6 91                   JUMPF_abs              $91C6
  $91BF  8E D1 99                   PUSH_imm2              $99D1
  $91C2  E9 99 C7 02                CALL_abs_imm1          $C799 {native}, $02
 >$91C6  CF                         RETURN

; ============================================================
; sub $91C7   (frame_off=-6, body @ $91CC)   [PRG $291C7]
; ============================================================
  $91CC  41                         LOADL_qimm   ; inline operand = 1
  $91CD  2A                         STORE_quick   ; inline operand = 10
  $91CE  2B                         STORE_quick   ; inline operand = 11
 >$91CF  61                         PUSH_qimm   ; inline operand = 1
  $91D0  66                         PUSH_qimm   ; inline operand = 6
  $91D1  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $91D5  61                         PUSH_qimm   ; inline operand = 1
  $91D6  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $91DA  61                         PUSH_qimm   ; inline operand = 1
  $91DB  8E 09 9A                   PUSH_imm2              $9A09
  $91DE  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $91E2  62                         PUSH_qimm   ; inline operand = 2
  $91E3  66                         PUSH_qimm   ; inline operand = 6
  $91E4  8E D9 99                   PUSH_imm2              $99D9
  $91E7  62                         PUSH_qimm   ; inline operand = 2
  $91E8  67                         PUSH_qimm   ; inline operand = 7
  $91E9  8D 17                      BYTE_PUSH_imm1         +23
  $91EB  68                         PUSH_qimm   ; inline operand = 8
  $91EC  E9 56 A1 0E                CALL_abs_imm1          $A156 {native}, $0E
  $91F0  29                         STORE_quick   ; inline operand = 9
  $91F1  09                         LOADL_quick   ; inline operand = 9
  $91F2  8C FF 00                   LOADR_imm2             $00FF
  $91F5  C1                         CMPNE
  $91F6  D8 18 92                   JUMPF_abs              $9218
  $91F9  8A F0 00                   LOADL_imm2             $00F0
  $91FC  A9 63 70                   BYTE_STORE_abs         $7063
  $91FF  0B                         LOADL_quick   ; inline operand = 11
  $9200  D8 10 92                   JUMPF_abs              $9210
  $9203  60                         PUSH_qimm   ; inline operand = 0
  $9204  8D 12                      BYTE_PUSH_imm1         +18
  $9206  8D 1C                      BYTE_PUSH_imm1         +28
  $9208  62                         PUSH_qimm   ; inline operand = 2
  $9209  62                         PUSH_qimm   ; inline operand = 2
  $920A  E9 05 A4 0A                CALL_abs_imm1          $A405 {native}, $0A
  $920E  40                         LOADL_qimm   ; inline operand = 0
  $920F  2B                         STORE_quick   ; inline operand = 11
 >$9210  3A                         PUSH_quick   ; inline operand = 10
  $9211  39                         PUSH_quick   ; inline operand = 9
  $9212  E9 B7 8F 04                CALL_abs_imm1          $8FB7 (market_price_list) {bytecode}, $04
  $9216  40                         LOADL_qimm   ; inline operand = 0
  $9217  2A                         STORE_quick   ; inline operand = 10
 >$9218  09                         LOADL_quick   ; inline operand = 9
  $9219  8C FF 00                   LOADR_imm2             $00FF
  $921C  C1                         CMPNE
  $921D  D7 CF 91                   JUMPT_abs              $91CF
  $9220  0B                         LOADL_quick   ; inline operand = 11
  $9221  D7 2F 92                   JUMPT_abs              $922F
  $9224  60                         PUSH_qimm   ; inline operand = 0
  $9225  8D 12                      BYTE_PUSH_imm1         +18
  $9227  8D 1C                      BYTE_PUSH_imm1         +28
  $9229  62                         PUSH_qimm   ; inline operand = 2
  $922A  62                         PUSH_qimm   ; inline operand = 2
  $922B  E9 9B A4 0A                CALL_abs_imm1          $A49B {native}, $0A
 >$922F  40                         LOADL_qimm   ; inline operand = 0
  $9230  CF                         RETURN

; ============================================================
; sub $9231   (frame_off=-4, body @ $9236)   [PRG $29231]
; ============================================================
  $9236  A4 72 6F                   LOADL_abs              $6F72
  $9239  8C 50 C3                   LOADR_imm2             $C350
  $923C  C6                         UCMPLT
  $923D  D8 6D 92                   JUMPF_abs              $926D
  $9240  A5 67 70                   BYTE_LOADL_abs         $7067
  $9243  5E                         LOADR_qimm   ; inline operand = 14
  $9244  B5                         MULT
  $9245  8C B2 67                   LOADR_imm2             $67B2
  $9248  BB                         ADD
  $9249  2B                         STORE_quick   ; inline operand = 11
  $924A  0B                         LOADL_quick   ; inline operand = 11
  $924B  B0                         DEREF
  $924C  B3                         PUSHL
  $924D  0B                         LOADL_quick   ; inline operand = 11
  $924E  74                         ADD_qimm   ; inline operand = 4
  $924F  B0                         DEREF
  $9250  B4                         POPR
  $9251  BB                         ADD
  $9252  51                         LOADR_qimm   ; inline operand = 1
  $9253  BE                         URSHIFT
  $9254  B3                         PUSHL
  $9255  8D 64                      BYTE_PUSH_imm1         +100
  $9257  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $925B  B4                         POPR
  $925C  BB                         ADD
  $925D  A6 72 6F                   LOADR_abs              $6F72
  $9260  BB                         ADD
  $9261  2A                         STORE_quick   ; inline operand = 10
  $9262  8E 50 C3                   PUSH_imm2              $C350
  $9265  3A                         PUSH_quick   ; inline operand = 10
  $9266  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $926A  A8 72 6F                   STORE_abs              $6F72
 >$926D  CF                         RETURN

; ============================================================
; sub $926E   (frame_off=-4, body @ $9273)   [PRG $2926E]
; ============================================================
  $9273  A5 67 70                   BYTE_LOADL_abs         $7067
  $9276  5E                         LOADR_qimm   ; inline operand = 14
  $9277  B5                         MULT
  $9278  8C B2 67                   LOADR_imm2             $67B2
  $927B  BB                         ADD
  $927C  2B                         STORE_quick   ; inline operand = 11
  $927D  0C                         LOADL_quick   ; inline operand = 12
  $927E  D2                         LSHIFT1
  $927F  D2                         LSHIFT1
  $9280  8C BE 6F                   LOADR_imm2             $6FBE
  $9283  BB                         ADD
  $9284  D3                         BYTE_DEREF
  $9285  2A                         STORE_quick   ; inline operand = 10
  $9286  0B                         LOADL_quick   ; inline operand = 11
  $9287  B0                         DEREF
  $9288  B3                         PUSHL
  $9289  0B                         LOADL_quick   ; inline operand = 11
  $928A  74                         ADD_qimm   ; inline operand = 4
  $928B  B0                         DEREF
  $928C  B4                         POPR
  $928D  BB                         ADD
  $928E  8B 41                      BYTE_LOADR_imm1        +65
  $9290  B8                         UDIV
  $9291  B3                         PUSHL
  $9292  63                         PUSH_qimm   ; inline operand = 3
  $9293  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $9297  B4                         POPR
  $9298  BB                         ADD
  $9299  1A                         LOADR_quick   ; inline operand = 10
  $929A  BB                         ADD
  $929B  75                         ADD_qimm   ; inline operand = 5
  $929C  2A                         STORE_quick   ; inline operand = 10
  $929D  0C                         LOADL_quick   ; inline operand = 12
  $929E  D2                         LSHIFT1
  $929F  D2                         LSHIFT1
  $92A0  8C BE 6F                   LOADR_imm2             $6FBE
  $92A3  BB                         ADD
  $92A4  B3                         PUSHL
  $92A5  8D 64                      BYTE_PUSH_imm1         +100
  $92A7  3A                         PUSH_quick   ; inline operand = 10
  $92A8  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $92AC  D4                         BYTE_POPSTORE
  $92AD  CF                         RETURN

; ============================================================
; sub $92AE   (frame_off=-12, body @ $92B3)   [PRG $292AE]
; ============================================================
  $92B3  A4 6B 66                   LOADL_abs              $666B
  $92B6  D7 C8 92                   JUMPT_abs              $92C8
  $92B9  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $92BC  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $92BF  8E 14 9A                   PUSH_imm2              $9A14
  $92C2  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $92C6  40                         LOADL_qimm   ; inline operand = 0
  $92C7  CF                         RETURN
 >$92C8  A5 67 70                   BYTE_LOADL_abs         $7067
  $92CB  53                         LOADR_qimm   ; inline operand = 3
  $92CC  C6                         UCMPLT
  $92CD  D8 F4 92                   JUMPF_abs              $92F4
  $92D0  61                         PUSH_qimm   ; inline operand = 1
  $92D1  66                         PUSH_qimm   ; inline operand = 6
  $92D2  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $92D6  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $92D9  A5 67 70                   BYTE_LOADL_abs         $7067
  $92DC  52                         LOADR_qimm   ; inline operand = 2
  $92DD  C0                         CMPEQ
  $92DE  D8 E7 92                   JUMPF_abs              $92E7
  $92E1  8A 60 9A                   LOADL_imm2             $9A60
  $92E4  D6 EA 92                   JUMP_abs               $92EA
 >$92E7  8A 67 9A                   LOADL_imm2             $9A67
 >$92EA  B3                         PUSHL
  $92EB  8E 27 9A                   PUSH_imm2              $9A27
  $92EE  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $92F2  40                         LOADL_qimm   ; inline operand = 0
  $92F3  CF                         RETURN
 >$92F4  A5 67 70                   BYTE_LOADL_abs         $7067
  $92F7  5E                         LOADR_qimm   ; inline operand = 14
  $92F8  B5                         MULT
  $92F9  8C B4 67                   LOADR_imm2             $67B4
  $92FC  BB                         ADD
  $92FD  B0                         DEREF
  $92FE  8C 60 EA                   LOADR_imm2             $EA60
  $9301  C0                         CMPEQ
  $9302  D8 17 93                   JUMPF_abs              $9317
  $9305  61                         PUSH_qimm   ; inline operand = 1
  $9306  66                         PUSH_qimm   ; inline operand = 6
  $9307  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $930B  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $930E  8E 6C 9A                   PUSH_imm2              $9A6C
  $9311  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $9315  40                         LOADL_qimm   ; inline operand = 0
  $9316  CF                         RETURN
 >$9317  61                         PUSH_qimm   ; inline operand = 1
  $9318  66                         PUSH_qimm   ; inline operand = 6
  $9319  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $931D  61                         PUSH_qimm   ; inline operand = 1
  $931E  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $9322  8E 8C 9A                   PUSH_imm2              $9A8C
  $9325  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $9329  A5 67 70                   BYTE_LOADL_abs         $7067
  $932C  5E                         LOADR_qimm   ; inline operand = 14
  $932D  B5                         MULT
  $932E  8C B4 67                   LOADR_imm2             $67B4
  $9331  BB                         ADD
  $9332  B0                         DEREF
  $9333  B3                         PUSHL
  $9334  8A 60 EA                   LOADL_imm2             $EA60
  $9337  B4                         POPR
  $9338  BC                         SUB
  $9339  2B                         STORE_quick   ; inline operand = 11
  $933A  A4 6B 66                   LOADL_abs              $666B
  $933D  1B                         LOADR_quick   ; inline operand = 11
  $933E  C6                         UCMPLT
  $933F  D8 46 93                   JUMPF_abs              $9346
  $9342  A4 6B 66                   LOADL_abs              $666B
  $9345  2B                         STORE_quick   ; inline operand = 11
 >$9346  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $9349  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $934C  61                         PUSH_qimm   ; inline operand = 1
  $934D  3B                         PUSH_quick   ; inline operand = 11
  $934E  61                         PUSH_qimm   ; inline operand = 1
  $934F  8E AC 9A                   PUSH_imm2              $9AAC
  $9352  E9 F3 CC 08                CALL_abs_imm1          $CCF3 {native}, $08
  $9356  2A                         STORE_quick   ; inline operand = 10
  $9357  0A                         LOADL_quick   ; inline operand = 10
  $9358  8B FF                      BYTE_LOADR_imm1        -1
  $935A  C0                         CMPEQ
  $935B  D8 70 93                   JUMPF_abs              $9370
  $935E  61                         PUSH_qimm   ; inline operand = 1
  $935F  66                         PUSH_qimm   ; inline operand = 6
  $9360  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $9364  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $9367  8E C5 9A                   PUSH_imm2              $9AC5
  $936A  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $936E  40                         LOADL_qimm   ; inline operand = 0
  $936F  CF                         RETURN
 >$9370  3A                         PUSH_quick   ; inline operand = 10
  $9371  A5 67 70                   BYTE_LOADL_abs         $7067
  $9374  5E                         LOADR_qimm   ; inline operand = 14
  $9375  B5                         MULT
  $9376  8C B4 67                   LOADR_imm2             $67B4
  $9379  BB                         ADD
  $937A  B0                         DEREF
  $937B  B3                         PUSHL
  $937C  8A 60 EA                   LOADL_imm2             $EA60
  $937F  B4                         POPR
  $9380  BC                         SUB
  $9381  B3                         PUSHL
  $9382  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $9386  B3                         PUSHL
  $9387  A5 67 70                   BYTE_LOADL_abs         $7067
  $938A  5E                         LOADR_qimm   ; inline operand = 14
  $938B  B5                         MULT
  $938C  8C B4 67                   LOADR_imm2             $67B4
  $938F  BB                         ADD
  $9390  B4                         POPR
  $9391  B3                         PUSHL
  $9392  B0                         DEREF
  $9393  BB                         ADD
  $9394  B1                         POPSTORE
  $9395  0A                         LOADL_quick   ; inline operand = 10
  $9396  CD                         SWAP
  $9397  A4 6B 66                   LOADL_abs              $666B
  $939A  BC                         SUB
  $939B  A8 6B 66                   STORE_abs              $666B
  $939E  61                         PUSH_qimm   ; inline operand = 1
  $939F  66                         PUSH_qimm   ; inline operand = 6
  $93A0  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $93A4  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $93A7  0A                         LOADL_quick   ; inline operand = 10
  $93A8  8C E8 03                   LOADR_imm2             $03E8
  $93AB  C6                         UCMPLT
  $93AC  D8 BC 93                   JUMPF_abs              $93BC
  $93AF  0A                         LOADL_quick   ; inline operand = 10
  $93B0  D0                         INC
  $93B1  8B 14                      BYTE_LOADR_imm1        +20
  $93B3  B8                         UDIV
  $93B4  29                         STORE_quick   ; inline operand = 9
  $93B5  61                         PUSH_qimm   ; inline operand = 1
  $93B6  8E EF 9A                   PUSH_imm2              $9AEF
  $93B9  D6 DF 93                   JUMP_abs               $93DF
 >$93BC  0A                         LOADL_quick   ; inline operand = 10
  $93BD  8C 0F 27                   LOADR_imm2             $270F
  $93C0  C8                         UCMPGT
  $93C1  D8 D4 93                   JUMPF_abs              $93D4
  $93C4  0A                         LOADL_quick   ; inline operand = 10
  $93C5  8C E8 03                   LOADR_imm2             $03E8
  $93C8  B8                         UDIV
  $93C9  90 96 00                   ADD_imm2               $0096
  $93CC  29                         STORE_quick   ; inline operand = 9
  $93CD  61                         PUSH_qimm   ; inline operand = 1
  $93CE  8E 00 9B                   PUSH_imm2              $9B00
  $93D1  D6 DF 93                   JUMP_abs               $93DF
 >$93D4  0A                         LOADL_quick   ; inline operand = 10
  $93D5  8B 64                      BYTE_LOADR_imm1        +100
  $93D7  B8                         UDIV
  $93D8  8F 32                      BYTE_ADD_imm1          +50
  $93DA  29                         STORE_quick   ; inline operand = 9
  $93DB  61                         PUSH_qimm   ; inline operand = 1
  $93DC  8E 25 9B                   PUSH_imm2              $9B25
 >$93DF  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $93E3  61                         PUSH_qimm   ; inline operand = 1
  $93E4  E9 9B CE 02                CALL_abs_imm1          $CE9B {native}, $02
  $93E8  A5 67 70                   BYTE_LOADL_abs         $7067
  $93EB  5E                         LOADR_qimm   ; inline operand = 14
  $93EC  B5                         MULT
  $93ED  8C BA 67                   LOADR_imm2             $67BA
  $93F0  BB                         ADD
  $93F1  D3                         BYTE_DEREF
  $93F2  8B 31                      BYTE_LOADR_imm1        +49
  $93F4  C8                         UCMPGT
  $93F5  D8 0B 94                   JUMPF_abs              $940B
  $93F8  62                         PUSH_qimm   ; inline operand = 2
  $93F9  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $93FD  B3                         PUSHL
  $93FE  A5 67 70                   BYTE_LOADL_abs         $7067
  $9401  5E                         LOADR_qimm   ; inline operand = 14
  $9402  B5                         MULT
  $9403  8C BA 67                   LOADR_imm2             $67BA
  $9406  BB                         ADD
  $9407  D3                         BYTE_DEREF
  $9408  D6 20 94                   JUMP_abs               $9420
 >$940B  62                         PUSH_qimm   ; inline operand = 2
  $940C  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $9410  B3                         PUSHL
  $9411  A5 67 70                   BYTE_LOADL_abs         $7067
  $9414  5E                         LOADR_qimm   ; inline operand = 14
  $9415  B5                         MULT
  $9416  8C BA 67                   LOADR_imm2             $67BA
  $9419  BB                         ADD
  $941A  D3                         BYTE_DEREF
  $941B  B3                         PUSHL
  $941C  89 64                      BYTE_LOADL_imm1        +100
  $941E  B4                         POPR
  $941F  BC                         SUB
 >$9420  57                         LOADR_qimm   ; inline operand = 7
  $9421  B8                         UDIV
  $9422  B3                         PUSHL
  $9423  09                         LOADL_quick   ; inline operand = 9
  $9424  D0                         INC
  $9425  B4                         POPR
  $9426  B8                         UDIV
  $9427  B4                         POPR
  $9428  BB                         ADD
  $9429  28                         STORE_quick   ; inline operand = 8
  $942A  A5 67 70                   BYTE_LOADL_abs         $7067
  $942D  8C 76 6F                   LOADR_imm2             $6F76
  $9430  BB                         ADD
  $9431  D3                         BYTE_DEREF
  $9432  53                         LOADR_qimm   ; inline operand = 3
  $9433  DA                         AND
  $9434  27                         STORE_quick   ; inline operand = 7
  $9435  38                         PUSH_quick   ; inline operand = 8
  $9436  60                         PUSH_qimm   ; inline operand = 0
  $9437  A5 67 70                   BYTE_LOADL_abs         $7067
  $943A  B3                         PUSHL
  $943B  E9 D8 D7 06                CALL_abs_imm1          $D7D8 {native}, $06
  $943F  A5 67 70                   BYTE_LOADL_abs         $7067
  $9442  8C 76 6F                   LOADR_imm2             $6F76
  $9445  BB                         ADD
  $9446  D3                         BYTE_DEREF
  $9447  53                         LOADR_qimm   ; inline operand = 3
  $9448  DA                         AND
  $9449  26                         STORE_quick   ; inline operand = 6
  $944A  07                         LOADL_quick   ; inline operand = 7
  $944B  16                         LOADR_quick   ; inline operand = 6
  $944C  C1                         CMPNE
  $944D  D8 79 94                   JUMPF_abs              $9479
  $9450  06                         LOADL_quick   ; inline operand = 6
  $9451  D7 6A 94                   JUMPT_abs              $946A
  $9454  07                         LOADL_quick   ; inline operand = 7
  $9455  52                         LOADR_qimm   ; inline operand = 2
  $9456  C0                         CMPEQ
  $9457  D7 60 94                   JUMPT_abs              $9460
  $945A  07                         LOADL_quick   ; inline operand = 7
  $945B  53                         LOADR_qimm   ; inline operand = 3
  $945C  C0                         CMPEQ
  $945D  D8 6A 94                   JUMPF_abs              $946A
 >$9460  07                         LOADL_quick   ; inline operand = 7
  $9461  D1                         DEC
  $9462  B3                         PUSHL
  $9463  E9 6E 92 02                CALL_abs_imm1          $926E {bytecode}, $02
  $9467  D6 79 94                   JUMP_abs               $9479
 >$946A  07                         LOADL_quick   ; inline operand = 7
  $946B  51                         LOADR_qimm   ; inline operand = 1
  $946C  C1                         CMPNE
  $946D  D8 79 94                   JUMPF_abs              $9479
  $9470  06                         LOADL_quick   ; inline operand = 6
  $9471  51                         LOADR_qimm   ; inline operand = 1
  $9472  C0                         CMPEQ
  $9473  D8 79 94                   JUMPF_abs              $9479
  $9476  AC 31 92                   CALL_abs               $9231 {bytecode}
 >$9479  41                         LOADL_qimm   ; inline operand = 1
  $947A  CF                         RETURN

; ============================================================
; sub $947B   (frame_off=-4, body @ $9480)   [PRG $2947B]
; ============================================================
  $9480  40                         LOADL_qimm   ; inline operand = 0
  $9481  2A                         STORE_quick   ; inline operand = 10
 >$9482  61                         PUSH_qimm   ; inline operand = 1
  $9483  66                         PUSH_qimm   ; inline operand = 6
  $9484  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $9488  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $948B  61                         PUSH_qimm   ; inline operand = 1
  $948C  8E 65 9B                   PUSH_imm2              $9B65
  $948F  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $9493  62                         PUSH_qimm   ; inline operand = 2
  $9494  64                         PUSH_qimm   ; inline operand = 4
  $9495  8E 39 9B                   PUSH_imm2              $9B39
  $9498  62                         PUSH_qimm   ; inline operand = 2
  $9499  67                         PUSH_qimm   ; inline operand = 7
  $949A  8D 17                      BYTE_PUSH_imm1         +23
  $949C  68                         PUSH_qimm   ; inline operand = 8
  $949D  E9 56 A1 0E                CALL_abs_imm1          $A156 {native}, $0E
  $94A1  A2 FF FF                   BYTE_STORE_far         $FFFF
  $94A4  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $94A7  8C FF 00                   LOADR_imm2             $00FF
  $94AA  C1                         CMPNE
  $94AB  D8 BE 94                   JUMPF_abs              $94BE
  $94AE  DE FE FF                   LEAL_far               $FFFE
  $94B1  B3                         PUSHL
  $94B2  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $94B5  D2                         LSHIFT1
  $94B6  8C 41 9B                   LOADR_imm2             $9B41
  $94B9  BB                         ADD
  $94BA  B0                         DEREF
  $94BB  EA 02                      CALLPTR_imm1           $02
  $94BD  2A                         STORE_quick   ; inline operand = 10
 >$94BE  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $94C1  8C FF 00                   LOADR_imm2             $00FF
  $94C4  C1                         CMPNE
  $94C5  D7 82 94                   JUMPT_abs              $9482
  $94C8  0A                         LOADL_quick   ; inline operand = 10
  $94C9  CF                         RETURN

