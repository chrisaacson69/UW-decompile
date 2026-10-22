VM bytecode disassembly
  ROM:          Uncharted Waters (USA).nes
  mode:         bulk dump of bank 21
  opcode spec:  vm-opcodes-v2.toml via nobunaga_vm.OPCODE_INFO (execution-validated lengths)
  labels:       0 CPU addresses named

  bank 21: found 25 bytecode-subroutine stubs

; ============================================================
; sub $8003   (frame_off=+0, body @ $8008)   [PRG $2A003]
; ============================================================
  $8008  68                         PUSH_qimm   ; inline operand = 8
  $8009  68                         PUSH_qimm   ; inline operand = 8
  $800A  8E 58 92                   PUSH_imm2              $9258
  $800D  66                         PUSH_qimm   ; inline operand = 6
  $800E  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8012  CF                         RETURN

; ============================================================
; sub $8013   (frame_off=-6, body @ $8018)   [PRG $2A013]
; ============================================================
  $8018  A0 0B 00                   BYTE_LOADL_far         $000B
  $801B  53                         LOADR_qimm   ; inline operand = 3
  $801C  BA                         UMOD
  $801D  59                         LOADR_qimm   ; inline operand = 9
  $801E  B5                         MULT
  $801F  73                         ADD_qimm   ; inline operand = 3
  $8020  2B                         STORE_quick   ; inline operand = 11
  $8021  A0 0B 00                   BYTE_LOADL_far         $000B
  $8024  53                         LOADR_qimm   ; inline operand = 3
  $8025  B8                         UDIV
  $8026  57                         LOADR_qimm   ; inline operand = 7
  $8027  B5                         MULT
  $8028  D0                         INC
  $8029  2A                         STORE_quick   ; inline operand = 10
  $802A  A0 0B 00                   BYTE_LOADL_far         $000B
  $802D  75                         ADD_qimm   ; inline operand = 5
  $802E  B3                         PUSHL
  $802F  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8033  29                         STORE_quick   ; inline operand = 9
  $8034  A0 0D 00                   BYTE_LOADL_far         $000D
  $8037  57                         LOADR_qimm   ; inline operand = 7
  $8038  B5                         MULT
  $8039  8C 96 6C                   LOADR_imm2             $6C96
  $803C  BB                         ADD
  $803D  D3                         BYTE_DEREF
  $803E  5F                         LOADR_qimm   ; inline operand = 15
  $803F  DA                         AND
  $8040  B3                         PUSHL
  $8041  0A                         LOADL_quick   ; inline operand = 10
  $8042  76                         ADD_qimm   ; inline operand = 6
  $8043  B3                         PUSHL
  $8044  3B                         PUSH_quick   ; inline operand = 11
  $8045  8E 39 81                   PUSH_imm2              $8139
  $8048  8E DE 00                   PUSH_imm2              $00DE
  $804B  61                         PUSH_qimm   ; inline operand = 1
  $804C  E9 3A DE 0C                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $0C
  $8050  0A                         LOADL_quick   ; inline operand = 10
  $8051  7B                         ADD_qimm   ; inline operand = 11
  $8052  B3                         PUSHL
  $8053  3B                         PUSH_quick   ; inline operand = 11
  $8054  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8058  A0 0D 00                   BYTE_LOADL_far         $000D
  $805B  57                         LOADR_qimm   ; inline operand = 7
  $805C  B5                         MULT
  $805D  8C 96 6C                   LOADR_imm2             $6C96
  $8060  BB                         ADD
  $8061  D3                         BYTE_DEREF
  $8062  5F                         LOADR_qimm   ; inline operand = 15
  $8063  DA                         AND
  $8064  B3                         PUSHL
  $8065  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8069  B3                         PUSHL
  $806A  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $806E  CF                         RETURN

; ============================================================
; sub $806F   (frame_off=-4, body @ $8074)   [PRG $2A06F]
; ============================================================
  $8074  89 FF                      BYTE_LOADL_imm1        -1
  $8076  A8 64 70                   STORE_abs              $7064
  $8079  AC CE B7                   CALL_abs               $B7CE {native}
  $807C  3C                         PUSH_quick   ; inline operand = 12
  $807D  60                         PUSH_qimm   ; inline operand = 0
  $807E  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $8082  2B                         STORE_quick   ; inline operand = 11
  $8083  AC 03 80                   CALL_abs               $8003 {bytecode}
  $8086  40                         LOADL_qimm   ; inline operand = 0
  $8087  D6 96 80                   JUMP_abs               $8096
 >$808A  0C                         LOADL_quick   ; inline operand = 12
  $808B  1A                         LOADR_quick   ; inline operand = 10
  $808C  BB                         ADD
  $808D  D3                         BYTE_DEREF
  $808E  B3                         PUSHL
  $808F  3A                         PUSH_quick   ; inline operand = 10
  $8090  E9 13 80 04                CALL_abs_imm1          $8013 {bytecode}, $04
  $8094  0A                         LOADL_quick   ; inline operand = 10
  $8095  D0                         INC
 >$8096  2A                         STORE_quick   ; inline operand = 10
  $8097  0A                         LOADL_quick   ; inline operand = 10
  $8098  1B                         LOADR_quick   ; inline operand = 11
  $8099  C6                         UCMPLT
  $809A  D7 8A 80                   JUMPT_abs              $808A
  $809D  0B                         LOADL_quick   ; inline operand = 11
  $809E  CF                         RETURN

; ============================================================
; sub $809F   (frame_off=+0, body @ $80A4)   [PRG $2A09F]
; ============================================================
  $80A4  6C                         PUSH_qimm   ; inline operand = 12
  $80A5  63                         PUSH_qimm   ; inline operand = 3
  $80A6  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $80AA  3C                         PUSH_quick   ; inline operand = 12
  $80AB  E9 7B D8 02                CALL_abs_imm1          $D87B {native}, $02
  $80AF  B3                         PUSHL
  $80B0  0C                         LOADL_quick   ; inline operand = 12
  $80B1  57                         LOADR_qimm   ; inline operand = 7
  $80B2  B5                         MULT
  $80B3  8C 90 6C                   LOADR_imm2             $6C90
  $80B6  BB                         ADD
  $80B7  D3                         BYTE_DEREF
  $80B8  B3                         PUSHL
  $80B9  8E 60 92                   PUSH_imm2              $9260
  $80BC  E9 19 C7 06                CALL_abs_imm1          $C719 {native}, $06
  $80C0  CF                         RETURN

; ============================================================
; sub $80C1   (frame_off=+0, body @ $80C6)   [PRG $2A0C1]
; ============================================================
  $80C6  6E                         PUSH_qimm   ; inline operand = 14
  $80C7  63                         PUSH_qimm   ; inline operand = 3
  $80C8  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $80CC  3C                         PUSH_quick   ; inline operand = 12
  $80CD  E9 BE D8 02                CALL_abs_imm1          $D8BE {native}, $02
  $80D1  B3                         PUSHL
  $80D2  0C                         LOADL_quick   ; inline operand = 12
  $80D3  57                         LOADR_qimm   ; inline operand = 7
  $80D4  B5                         MULT
  $80D5  8C 91 6C                   LOADR_imm2             $6C91
  $80D8  BB                         ADD
  $80D9  D3                         BYTE_DEREF
  $80DA  B3                         PUSHL
  $80DB  8E 7B 92                   PUSH_imm2              $927B
  $80DE  E9 19 C7 06                CALL_abs_imm1          $C719 {native}, $06
  $80E2  CF                         RETURN

; ============================================================
; sub $80E3   (frame_off=+0, body @ $80E8)   [PRG $2A0E3]
; ============================================================
  $80E8  6D                         PUSH_qimm   ; inline operand = 13
  $80E9  63                         PUSH_qimm   ; inline operand = 3
  $80EA  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $80EE  3C                         PUSH_quick   ; inline operand = 12
  $80EF  E9 2F D9 02                CALL_abs_imm1          $D92F {native}, $02
  $80F3  B3                         PUSHL
  $80F4  0C                         LOADL_quick   ; inline operand = 12
  $80F5  57                         LOADR_qimm   ; inline operand = 7
  $80F6  B5                         MULT
  $80F7  8C 92 6C                   LOADR_imm2             $6C92
  $80FA  BB                         ADD
  $80FB  D3                         BYTE_DEREF
  $80FC  B3                         PUSHL
  $80FD  8E 96 92                   PUSH_imm2              $9296
  $8100  E9 19 C7 06                CALL_abs_imm1          $C719 {native}, $06
  $8104  CF                         RETURN

; ============================================================
; sub $8105   (frame_off=+0, body @ $810A)   [PRG $2A105]
; ============================================================
  $810A  6F                         PUSH_qimm   ; inline operand = 15
  $810B  63                         PUSH_qimm   ; inline operand = 3
  $810C  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8110  0C                         LOADL_quick   ; inline operand = 12
  $8111  57                         LOADR_qimm   ; inline operand = 7
  $8112  B5                         MULT
  $8113  8C 96 6C                   LOADR_imm2             $6C96
  $8116  BB                         ADD
  $8117  D3                         BYTE_DEREF
  $8118  5F                         LOADR_qimm   ; inline operand = 15
  $8119  DA                         AND
  $811A  B3                         PUSHL
  $811B  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $811F  8F 12                      BYTE_ADD_imm1          +18
  $8121  B3                         PUSHL
  $8122  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8126  B3                         PUSHL
  $8127  3C                         PUSH_quick   ; inline operand = 12
  $8128  E9 2A DA 02                CALL_abs_imm1          $DA2A {native}, $02
  $812C  B3                         PUSHL
  $812D  8E B1 92                   PUSH_imm2              $92B1
  $8130  E9 19 C7 06                CALL_abs_imm1          $C719 {native}, $06
  $8134  CF                         RETURN

; ============================================================
; sub $8135   (frame_off=+0, body @ $813A)   [PRG $2A135]
; ============================================================
  $813A  8D 12                      BYTE_PUSH_imm1         +18
  $813C  63                         PUSH_qimm   ; inline operand = 3
  $813D  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8141  3C                         PUSH_quick   ; inline operand = 12
  $8142  E9 A8 D9 02                CALL_abs_imm1          $D9A8 {native}, $02
  $8146  B3                         PUSHL
  $8147  3C                         PUSH_quick   ; inline operand = 12
  $8148  E9 6A DA 02                CALL_abs_imm1          $DA6A {native}, $02
  $814C  B3                         PUSHL
  $814D  8E CC 92                   PUSH_imm2              $92CC
  $8150  E9 19 C7 06                CALL_abs_imm1          $C719 {native}, $06
  $8154  CF                         RETURN

; ============================================================
; sub $8155   (frame_off=+0, body @ $815A)   [PRG $2A155]
; ============================================================
  $815A  8D 10                      BYTE_PUSH_imm1         +16
  $815C  63                         PUSH_qimm   ; inline operand = 3
  $815D  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8161  60                         PUSH_qimm   ; inline operand = 0
  $8162  8E E5 92                   PUSH_imm2              $92E5
  $8165  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8169  0C                         LOADL_quick   ; inline operand = 12
  $816A  57                         LOADR_qimm   ; inline operand = 7
  $816B  B5                         MULT
  $816C  8C 94 6C                   LOADR_imm2             $6C94
  $816F  BB                         ADD
  $8170  B0                         DEREF
  $8171  B3                         PUSHL
  $8172  8E F9 92                   PUSH_imm2              $92F9
  $8175  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $8179  0C                         LOADL_quick   ; inline operand = 12
  $817A  57                         LOADR_qimm   ; inline operand = 7
  $817B  B5                         MULT
  $817C  8C 96 6C                   LOADR_imm2             $6C96
  $817F  BB                         ADD
  $8180  D3                         BYTE_DEREF
  $8181  5F                         LOADR_qimm   ; inline operand = 15
  $8182  DA                         AND
  $8183  B3                         PUSHL
  $8184  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8188  7F                         ADD_qimm   ; inline operand = 15
  $8189  B0                         DEREF
  $818A  B3                         PUSHL
  $818B  8E FE 92                   PUSH_imm2              $92FE
  $818E  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $8192  CF                         RETURN

; ============================================================
; sub $8193   (frame_off=-6, body @ $8198)   [PRG $2A193]
; ============================================================
  $8198  0C                         LOADL_quick   ; inline operand = 12
  $8199  8B 18                      BYTE_LOADR_imm1        +24
  $819B  B5                         MULT
  $819C  8C A4 6A                   LOADR_imm2             $6AA4
  $819F  BB                         ADD
  $81A0  29                         STORE_quick   ; inline operand = 9
  $81A1  0C                         LOADL_quick   ; inline operand = 12
  $81A2  57                         LOADR_qimm   ; inline operand = 7
  $81A3  B5                         MULT
  $81A4  8C 90 6C                   LOADR_imm2             $6C90
  $81A7  BB                         ADD
  $81A8  2A                         STORE_quick   ; inline operand = 10
  $81A9  0A                         LOADL_quick   ; inline operand = 10
  $81AA  76                         ADD_qimm   ; inline operand = 6
  $81AB  D3                         BYTE_DEREF
  $81AC  5F                         LOADR_qimm   ; inline operand = 15
  $81AD  DA                         AND
  $81AE  B3                         PUSHL
  $81AF  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $81B3  2B                         STORE_quick   ; inline operand = 11
  $81B4  AC CE B7                   CALL_abs               $B7CE {native}
  $81B7  8E E8 00                   PUSH_imm2              $00E8
  $81BA  8E 36 A9                   PUSH_imm2              $A936
  $81BD  8E 92 A7                   PUSH_imm2              $A792
  $81C0  6E                         PUSH_qimm   ; inline operand = 14
  $81C1  8D 1E                      BYTE_PUSH_imm1         +30
  $81C3  66                         PUSH_qimm   ; inline operand = 6
  $81C4  61                         PUSH_qimm   ; inline operand = 1
  $81C5  69                         PUSH_qimm   ; inline operand = 9
  $81C6  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $81CA  AC 03 80                   CALL_abs               $8003 {bytecode}
  $81CD  0A                         LOADL_quick   ; inline operand = 10
  $81CE  76                         ADD_qimm   ; inline operand = 6
  $81CF  D3                         BYTE_DEREF
  $81D0  5F                         LOADR_qimm   ; inline operand = 15
  $81D1  DA                         AND
  $81D2  B3                         PUSHL
  $81D3  67                         PUSH_qimm   ; inline operand = 7
  $81D4  63                         PUSH_qimm   ; inline operand = 3
  $81D5  8E 39 81                   PUSH_imm2              $8139
  $81D8  8E DE 00                   PUSH_imm2              $00DE
  $81DB  61                         PUSH_qimm   ; inline operand = 1
  $81DC  E9 3A DE 0C                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $0C
  $81E0  67                         PUSH_qimm   ; inline operand = 7
  $81E1  6F                         PUSH_qimm   ; inline operand = 15
  $81E2  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $81E6  3B                         PUSH_quick   ; inline operand = 11
  $81E7  8E 02 93                   PUSH_imm2              $9302
  $81EA  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $81EE  69                         PUSH_qimm   ; inline operand = 9
  $81EF  6F                         PUSH_qimm   ; inline operand = 15
  $81F0  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $81F4  60                         PUSH_qimm   ; inline operand = 0
  $81F5  8E 0B 93                   PUSH_imm2              $930B
  $81F8  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $81FC  6A                         PUSH_qimm   ; inline operand = 10
  $81FD  6F                         PUSH_qimm   ; inline operand = 15
  $81FE  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8202  0C                         LOADL_quick   ; inline operand = 12
  $8203  8B 18                      BYTE_LOADR_imm1        +24
  $8205  B5                         MULT
  $8206  8C A4 6A                   LOADR_imm2             $6AA4
  $8209  BB                         ADD
  $820A  D3                         BYTE_DEREF
  $820B  57                         LOADR_qimm   ; inline operand = 7
  $820C  B5                         MULT
  $820D  8C 42 65                   LOADR_imm2             $6542
  $8210  BB                         ADD
  $8211  B0                         DEREF
  $8212  B3                         PUSHL
  $8213  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8217  0C                         LOADL_quick   ; inline operand = 12
  $8218  8B 18                      BYTE_LOADR_imm1        +24
  $821A  B5                         MULT
  $821B  8C BB 6A                   LOADR_imm2             $6ABB
  $821E  BB                         ADD
  $821F  D3                         BYTE_DEREF
  $8220  B3                         PUSHL
  $8221  68                         PUSH_qimm   ; inline operand = 8
  $8222  6B                         PUSH_qimm   ; inline operand = 11
  $8223  8E 87 81                   PUSH_imm2              $8187
  $8226  8E DE 00                   PUSH_imm2              $00DE
  $8229  61                         PUSH_qimm   ; inline operand = 1
  $822A  E9 3A DE 0C                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $0C
  $822E  3C                         PUSH_quick   ; inline operand = 12
  $822F  E9 9F 80 02                CALL_abs_imm1          $809F {bytecode}, $02
  $8233  3C                         PUSH_quick   ; inline operand = 12
  $8234  E9 E3 80 02                CALL_abs_imm1          $80E3 {bytecode}, $02
  $8238  3C                         PUSH_quick   ; inline operand = 12
  $8239  E9 C1 80 02                CALL_abs_imm1          $80C1 {bytecode}, $02
  $823D  3C                         PUSH_quick   ; inline operand = 12
  $823E  E9 05 81 02                CALL_abs_imm1          $8105 {bytecode}, $02
  $8242  3C                         PUSH_quick   ; inline operand = 12
  $8243  E9 35 81 02                CALL_abs_imm1          $8135 {bytecode}, $02
  $8247  3C                         PUSH_quick   ; inline operand = 12
  $8248  E9 55 81 02                CALL_abs_imm1          $8155 {bytecode}, $02
  $824C  8D 11                      BYTE_PUSH_imm1         +17
  $824E  63                         PUSH_qimm   ; inline operand = 3
  $824F  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8253  60                         PUSH_qimm   ; inline operand = 0
  $8254  8E 16 93                   PUSH_imm2              $9316
  $8257  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $825B  0A                         LOADL_quick   ; inline operand = 10
  $825C  76                         ADD_qimm   ; inline operand = 6
  $825D  D3                         BYTE_DEREF
  $825E  54                         LOADR_qimm   ; inline operand = 4
  $825F  BE                         URSHIFT
  $8260  53                         LOADR_qimm   ; inline operand = 3
  $8261  DA                         AND
  $8262  D2                         LSHIFT1
  $8263  8C 33 BC                   LOADR_imm2             $BC33
  $8266  BB                         ADD
  $8267  B3                         PUSHL
  $8268  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $826C  B3                         PUSHL
  $826D  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8271  60                         PUSH_qimm   ; inline operand = 0
  $8272  8E 1D 93                   PUSH_imm2              $931D
  $8275  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8279  8D 11                      BYTE_PUSH_imm1         +17
  $827B  8D 16                      BYTE_PUSH_imm1         +22
  $827D  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8281  0B                         LOADL_quick   ; inline operand = 11
  $8282  8F 11                      BYTE_ADD_imm1          +17
  $8284  B3                         PUSHL
  $8285  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8289  B3                         PUSHL
  $828A  0A                         LOADL_quick   ; inline operand = 10
  $828B  73                         ADD_qimm   ; inline operand = 3
  $828C  D3                         BYTE_DEREF
  $828D  B3                         PUSHL
  $828E  8E 20 93                   PUSH_imm2              $9320
  $8291  E9 19 C7 06                CALL_abs_imm1          $C719 {native}, $06
  $8295  CF                         RETURN

; ============================================================
; sub $8296   (frame_off=+0, body @ $829B)   [PRG $2A296]
; ============================================================
  $829B  8E 03 80                   PUSH_imm2              $8003
  $829E  8E D6 00                   PUSH_imm2              $00D6
  $82A1  61                         PUSH_qimm   ; inline operand = 1
  $82A2  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $82A6  CF                         RETURN

; ============================================================
; sub $82A7   (frame_off=-4, body @ $82AC)   [PRG $2A2A7]
; ============================================================
  $82AC  40                         LOADL_qimm   ; inline operand = 0
  $82AD  2A                         STORE_quick   ; inline operand = 10
 >$82AE  61                         PUSH_qimm   ; inline operand = 1
  $82AF  65                         PUSH_qimm   ; inline operand = 5
  $82B0  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $82B4  61                         PUSH_qimm   ; inline operand = 1
  $82B5  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $82B9  61                         PUSH_qimm   ; inline operand = 1
  $82BA  8E 58 93                   PUSH_imm2              $9358
  $82BD  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $82C1  62                         PUSH_qimm   ; inline operand = 2
  $82C2  65                         PUSH_qimm   ; inline operand = 5
  $82C3  8E 28 93                   PUSH_imm2              $9328
  $82C6  62                         PUSH_qimm   ; inline operand = 2
  $82C7  67                         PUSH_qimm   ; inline operand = 7
  $82C8  8D 17                      BYTE_PUSH_imm1         +23
  $82CA  68                         PUSH_qimm   ; inline operand = 8
  $82CB  E9 56 A1 0E                CALL_abs_imm1          $A156 {native}, $0E
  $82CF  2B                         STORE_quick   ; inline operand = 11
  $82D0  0B                         LOADL_quick   ; inline operand = 11
  $82D1  8C FF 00                   LOADR_imm2             $00FF
  $82D4  C1                         CMPNE
  $82D5  D8 E4 82                   JUMPF_abs              $82E4
  $82D8  0B                         LOADL_quick   ; inline operand = 11
  $82D9  D2                         LSHIFT1
  $82DA  8C 32 93                   LOADR_imm2             $9332
  $82DD  BB                         ADD
  $82DE  B0                         DEREF
  $82DF  DD                         CALLPTR
  $82E0  CD                         SWAP
  $82E1  0A                         LOADL_quick   ; inline operand = 10
  $82E2  DB                         OR
  $82E3  2A                         STORE_quick   ; inline operand = 10
 >$82E4  0B                         LOADL_quick   ; inline operand = 11
  $82E5  8C FF 00                   LOADR_imm2             $00FF
  $82E8  C0                         CMPEQ
  $82E9  D8 AE 82                   JUMPF_abs              $82AE
  $82EC  0A                         LOADL_quick   ; inline operand = 10
  $82ED  CF                         RETURN

; ============================================================
; sub $82EE   (frame_off=+0, body @ $82F3)   [PRG $2A2EE]
; ============================================================
  $82F3  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $82F6  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $82F9  8E 6E 93                   PUSH_imm2              $936E
  $82FC  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8300  CF                         RETURN

; ============================================================
; sub $8301   (frame_off=+0, body @ $8306)   [PRG $2A301]
; ============================================================
  $8306  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8309  8E 88 93                   PUSH_imm2              $9388
  $830C  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8310  CF                         RETURN

; ============================================================
; sub $8311   (frame_off=-14, body @ $8316)   [PRG $2A311]
; ============================================================
  $8316  61                         PUSH_qimm   ; inline operand = 1
  $8317  65                         PUSH_qimm   ; inline operand = 5
  $8318  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $831C  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $831F  8E AE 93                   PUSH_imm2              $93AE
  $8322  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8326  A4 6B 66                   LOADL_abs              $666B
  $8329  5A                         LOADR_qimm   ; inline operand = 10
  $832A  C6                         UCMPLT
  $832B  D8 33 83                   JUMPF_abs              $8333
  $832E  AC EE 82                   CALL_abs               $82EE {bytecode}
  $8331  40                         LOADL_qimm   ; inline operand = 0
  $8332  CF                         RETURN
 >$8333  DE F6 FF                   LEAL_far               $FFF6
  $8336  B3                         PUSHL
  $8337  E9 6F 80 02                CALL_abs_imm1          $806F {bytecode}, $02
  $833B  A2 F5 FF                   BYTE_STORE_far         $FFF5
  $833E  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8341  61                         PUSH_qimm   ; inline operand = 1
  $8342  8E D7 93                   PUSH_imm2              $93D7
  $8345  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8349  A0 F5 FF                   BYTE_LOADL_far         $FFF5
  $834C  B3                         PUSHL
  $834D  E9 98 B8 02                CALL_abs_imm1          $B898 {native}, $02
  $8351  A2 F4 FF                   BYTE_STORE_far         $FFF4
  $8354  A0 F4 FF                   BYTE_LOADL_far         $FFF4
  $8357  8C FF 00                   LOADR_imm2             $00FF
  $835A  C0                         CMPEQ
  $835B  D8 66 83                   JUMPF_abs              $8366
  $835E  AC 01 83                   CALL_abs               $8301 {bytecode}
  $8361  AC CE B7                   CALL_abs               $B7CE {native}
  $8364  40                         LOADL_qimm   ; inline operand = 0
  $8365  CF                         RETURN
 >$8366  DE F6 FF                   LEAL_far               $FFF6
  $8369  B3                         PUSHL
  $836A  A0 F4 FF                   BYTE_LOADL_far         $FFF4
  $836D  B4                         POPR
  $836E  BB                         ADD
  $836F  D3                         BYTE_DEREF
  $8370  B3                         PUSHL
  $8371  E9 93 81 02                CALL_abs_imm1          $8193 {bytecode}, $02
  $8375  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8378  61                         PUSH_qimm   ; inline operand = 1
  $8379  8E EA 93                   PUSH_imm2              $93EA
  $837C  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8380  AC 9F CD                   CALL_abs               $CD9F {native}
  $8383  25                         STORE_quick   ; inline operand = 5
  $8384  05                         LOADL_quick   ; inline operand = 5
  $8385  D7 92 83                   JUMPT_abs              $8392
  $8388  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $838B  8E FD 93                   PUSH_imm2              $93FD
  $838E  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
 >$8392  05                         LOADL_quick   ; inline operand = 5
  $8393  D8 33 83                   JUMPF_abs              $8333
  $8396  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8399  8E 16 94                   PUSH_imm2              $9416
  $839C  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $83A0  AC 37 CE                   CALL_abs               $CE37 {native}
  $83A3  AC 89 A5                   CALL_abs               $A589 {native}
  $83A6  8D 10                      BYTE_PUSH_imm1         +16
  $83A8  60                         PUSH_qimm   ; inline operand = 0
  $83A9  8E 9E 93                   PUSH_imm2              $939E
  $83AC  66                         PUSH_qimm   ; inline operand = 6
  $83AD  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $83B1  8E E2 00                   PUSH_imm2              $00E2
  $83B4  8E EA B5                   PUSH_imm2              $B5EA
  $83B7  8E DE B2                   PUSH_imm2              $B2DE
  $83BA  8D 1A                      BYTE_PUSH_imm1         +26
  $83BC  8D 1E                      BYTE_PUSH_imm1         +30
  $83BE  62                         PUSH_qimm   ; inline operand = 2
  $83BF  61                         PUSH_qimm   ; inline operand = 1
  $83C0  69                         PUSH_qimm   ; inline operand = 9
  $83C1  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
 >$83C5  8E E7 00                   PUSH_imm2              $00E7
  $83C8  8E AC A0                   PUSH_imm2              $A0AC
  $83CB  8E 04 A0                   PUSH_imm2              $A004
  $83CE  66                         PUSH_qimm   ; inline operand = 6
  $83CF  8D 1C                      BYTE_PUSH_imm1         +28
  $83D1  8D 16                      BYTE_PUSH_imm1         +22
  $83D3  62                         PUSH_qimm   ; inline operand = 2
  $83D4  69                         PUSH_qimm   ; inline operand = 9
  $83D5  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
 >$83D9  DE F6 FF                   LEAL_far               $FFF6
  $83DC  B3                         PUSHL
  $83DD  A0 F4 FF                   BYTE_LOADL_far         $FFF4
  $83E0  B4                         POPR
  $83E1  BB                         ADD
  $83E2  D3                         BYTE_DEREF
  $83E3  B3                         PUSHL
  $83E4  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $83E8  B3                         PUSHL
  $83E9  67                         PUSH_qimm   ; inline operand = 7
  $83EA  8E A6 83                   PUSH_imm2              $83A6
  $83ED  8E C0 00                   PUSH_imm2              $00C0
  $83F0  61                         PUSH_qimm   ; inline operand = 1
  $83F1  E9 3A DE 0A                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $0A
  $83F5  D8 D9 83                   JUMPF_abs              $83D9
  $83F8  8D 19                      BYTE_PUSH_imm1         +25
  $83FA  65                         PUSH_qimm   ; inline operand = 5
  $83FB  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $83FF  61                         PUSH_qimm   ; inline operand = 1
  $8400  8E 31 94                   PUSH_imm2              $9431
  $8403  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8407  AC 9F CD                   CALL_abs               $CD9F {native}
  $840A  D8 C5 83                   JUMPF_abs              $83C5
  $840D  AC 89 A5                   CALL_abs               $A589 {native}
  $8410  AC 37 CE                   CALL_abs               $CE37 {native}
  $8413  4A                         LOADL_qimm   ; inline operand = 10
  $8414  CD                         SWAP
  $8415  A4 6B 66                   LOADL_abs              $666B
  $8418  BC                         SUB
  $8419  A8 6B 66                   STORE_abs              $666B
  $841C  41                         LOADL_qimm   ; inline operand = 1
  $841D  CF                         RETURN

; ============================================================
; sub $841E   (frame_off=-24, body @ $8423)   [PRG $2A41E]
; ============================================================
  $8423  61                         PUSH_qimm   ; inline operand = 1
  $8424  65                         PUSH_qimm   ; inline operand = 5
  $8425  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
 >$8429  DE EC FF                   LEAL_far               $FFEC
  $842C  B3                         PUSHL
  $842D  E9 6F 80 02                CALL_abs_imm1          $806F {bytecode}, $02
  $8431  A2 F6 FF                   BYTE_STORE_far         $FFF6
  $8434  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8437  61                         PUSH_qimm   ; inline operand = 1
  $8438  8E 5D 94                   PUSH_imm2              $945D
  $843B  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $843F  A0 F6 FF                   BYTE_LOADL_far         $FFF6
  $8442  B3                         PUSHL
  $8443  E9 98 B8 02                CALL_abs_imm1          $B898 {native}, $02
  $8447  A2 EB FF                   BYTE_STORE_far         $FFEB
  $844A  A0 EB FF                   BYTE_LOADL_far         $FFEB
  $844D  8C FF 00                   LOADR_imm2             $00FF
  $8450  C0                         CMPEQ
  $8451  D8 5C 84                   JUMPF_abs              $845C
  $8454  AC 01 83                   CALL_abs               $8301 {bytecode}
  $8457  AC CE B7                   CALL_abs               $B7CE {native}
  $845A  40                         LOADL_qimm   ; inline operand = 0
  $845B  CF                         RETURN
 >$845C  DE EC FF                   LEAL_far               $FFEC
  $845F  B3                         PUSHL
  $8460  A0 EB FF                   BYTE_LOADL_far         $FFEB
  $8463  B4                         POPR
  $8464  BB                         ADD
  $8465  D3                         BYTE_DEREF
  $8466  A2 F8 FF                   BYTE_STORE_far         $FFF8
  $8469  A0 F8 FF                   BYTE_LOADL_far         $FFF8
  $846C  B3                         PUSHL
  $846D  E9 93 81 02                CALL_abs_imm1          $8193 {bytecode}, $02
  $8471  40                         LOADL_qimm   ; inline operand = 0
  $8472  A2 F9 FF                   BYTE_STORE_far         $FFF9
  $8475  A0 F8 FF                   BYTE_LOADL_far         $FFF8
  $8478  57                         LOADR_qimm   ; inline operand = 7
  $8479  B5                         MULT
  $847A  8C 90 6C                   LOADR_imm2             $6C90
  $847D  BB                         ADD
  $847E  20                         STORE_quick   ; inline operand = 0
  $847F  00                         LOADL_quick   ; inline operand = 0
  $8480  73                         ADD_qimm   ; inline operand = 3
  $8481  D3                         BYTE_DEREF
  $8482  D8 8F 84                   JUMPF_abs              $848F
  $8485  00                         LOADL_quick   ; inline operand = 0
  $8486  76                         ADD_qimm   ; inline operand = 6
  $8487  D3                         BYTE_DEREF
  $8488  54                         LOADR_qimm   ; inline operand = 4
  $8489  BE                         URSHIFT
  $848A  53                         LOADR_qimm   ; inline operand = 3
  $848B  DA                         AND
  $848C  A2 F9 FF                   BYTE_STORE_far         $FFF9
 >$848F  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8492  61                         PUSH_qimm   ; inline operand = 1
  $8493  8E 78 94                   PUSH_imm2              $9478
  $8496  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $849A  AC 9F CD                   CALL_abs               $CD9F {native}
  $849D  D8 A2 86                   JUMPF_abs              $86A2
  $84A0  D6 8F 86                   JUMP_abs               $868F
 >$84A3  61                         PUSH_qimm   ; inline operand = 1
  $84A4  65                         PUSH_qimm   ; inline operand = 5
  $84A5  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $84A9  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $84AC  61                         PUSH_qimm   ; inline operand = 1
  $84AD  8E 89 94                   PUSH_imm2              $9489
  $84B0  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $84B4  62                         PUSH_qimm   ; inline operand = 2
  $84B5  63                         PUSH_qimm   ; inline operand = 3
  $84B6  8E 41 94                   PUSH_imm2              $9441
  $84B9  62                         PUSH_qimm   ; inline operand = 2
  $84BA  6A                         PUSH_qimm   ; inline operand = 10
  $84BB  8D 17                      BYTE_PUSH_imm1         +23
  $84BD  68                         PUSH_qimm   ; inline operand = 8
  $84BE  E9 56 A1 0E                CALL_abs_imm1          $A156 {native}, $0E
  $84C2  A2 EB FF                   BYTE_STORE_far         $FFEB
  $84C5  A0 EB FF                   BYTE_LOADL_far         $FFEB
  $84C8  8C FF 00                   LOADR_imm2             $00FF
  $84CB  C1                         CMPNE
  $84CC  D8 8F 86                   JUMPF_abs              $868F
  $84CF  A5 67 70                   BYTE_LOADL_abs         $7067
  $84D2  5E                         LOADR_qimm   ; inline operand = 14
  $84D3  B5                         MULT
  $84D4  8C BD 67                   LOADR_imm2             $67BD
  $84D7  BB                         ADD
  $84D8  D3                         BYTE_DEREF
  $84D9  8F 32                      BYTE_ADD_imm1          +50
  $84DB  B3                         PUSHL
  $84DC  A0 EB FF                   BYTE_LOADL_far         $FFEB
  $84DF  51                         LOADR_qimm   ; inline operand = 1
  $84E0  BE                         URSHIFT
  $84E1  D0                         INC
  $84E2  B4                         POPR
  $84E3  B5                         MULT
  $84E4  2B                         STORE_quick   ; inline operand = 11
  $84E5  00                         LOADL_quick   ; inline operand = 0
  $84E6  76                         ADD_qimm   ; inline operand = 6
  $84E7  D3                         BYTE_DEREF
  $84E8  5F                         LOADR_qimm   ; inline operand = 15
  $84E9  DA                         AND
  $84EA  B3                         PUSHL
  $84EB  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $84EF  8F 11                      BYTE_ADD_imm1          +17
  $84F1  B3                         PUSHL
  $84F2  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $84F6  A2 F7 FF                   BYTE_STORE_far         $FFF7
  $84F9  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $84FC  B3                         PUSHL
  $84FD  A0 EB FF                   BYTE_LOADL_far         $FFEB
  $8500  D0                         INC
  $8501  B4                         POPR
  $8502  C0                         CMPEQ
  $8503  D8 11 85                   JUMPF_abs              $8511
  $8506  00                         LOADL_quick   ; inline operand = 0
  $8507  73                         ADD_qimm   ; inline operand = 3
  $8508  D3                         BYTE_DEREF
  $8509  CD                         SWAP
  $850A  A0 F7 FF                   BYTE_LOADL_far         $FFF7
  $850D  BC                         SUB
  $850E  A2 F7 FF                   BYTE_STORE_far         $FFF7
 >$8511  A0 F7 FF                   BYTE_LOADL_far         $FFF7
  $8514  D8 82 86                   JUMPF_abs              $8682
  $8517  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $851A  60                         PUSH_qimm   ; inline operand = 0
  $851B  8E 9C 94                   PUSH_imm2              $949C
  $851E  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8522  A0 EB FF                   BYTE_LOADL_far         $FFEB
  $8525  D0                         INC
  $8526  D2                         LSHIFT1
  $8527  8C 33 BC                   LOADR_imm2             $BC33
  $852A  BB                         ADD
  $852B  B3                         PUSHL
  $852C  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8530  B3                         PUSHL
  $8531  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8535  3B                         PUSH_quick   ; inline operand = 11
  $8536  8E 9E 94                   PUSH_imm2              $949E
  $8539  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $853D  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $8540  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8543  8D 19                      BYTE_PUSH_imm1         +25
  $8545  6C                         PUSH_qimm   ; inline operand = 12
  $8546  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $854A  AA 6B 66                   PUSH_abs               $666B
  $854D  8E BA 94                   PUSH_imm2              $94BA
  $8550  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8554  61                         PUSH_qimm   ; inline operand = 1
  $8555  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $8559  A0 F7 FF                   BYTE_LOADL_far         $FFF7
  $855C  B3                         PUSHL
  $855D  61                         PUSH_qimm   ; inline operand = 1
  $855E  8E CA 94                   PUSH_imm2              $94CA
  $8561  E9 12 CD 06                CALL_abs_imm1          $CD12 {native}, $06
  $8565  2A                         STORE_quick   ; inline operand = 10
  $8566  0A                         LOADL_quick   ; inline operand = 10
  $8567  8B FF                      BYTE_LOADR_imm1        -1
  $8569  C1                         CMPNE
  $856A  D8 8F 86                   JUMPF_abs              $868F
  $856D  0A                         LOADL_quick   ; inline operand = 10
  $856E  1B                         LOADR_quick   ; inline operand = 11
  $856F  B5                         MULT
  $8570  B3                         PUSHL
  $8571  A4 6B 66                   LOADL_abs              $666B
  $8574  B4                         POPR
  $8575  C6                         UCMPLT
  $8576  D8 7F 85                   JUMPF_abs              $857F
  $8579  AC EE 82                   CALL_abs               $82EE {bytecode}
  $857C  D6 8F 86                   JUMP_abs               $868F
 >$857F  AC 01 B8                   CALL_abs               $B801 (draw_box_frame) {native}
  $8582  0B                         LOADL_quick   ; inline operand = 11
  $8583  1A                         LOADR_quick   ; inline operand = 10
  $8584  B5                         MULT
  $8585  CD                         SWAP
  $8586  A4 6B 66                   LOADL_abs              $666B
  $8589  BC                         SUB
  $858A  A8 6B 66                   STORE_abs              $666B
  $858D  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $8590  B3                         PUSHL
  $8591  A0 EB FF                   BYTE_LOADL_far         $FFEB
  $8594  D0                         INC
  $8595  B4                         POPR
  $8596  C0                         CMPEQ
  $8597  D8 C0 85                   JUMPF_abs              $85C0
  $859A  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $859D  0A                         LOADL_quick   ; inline operand = 10
  $859E  51                         LOADR_qimm   ; inline operand = 1
  $859F  C0                         CMPEQ
  $85A0  D8 A9 85                   JUMPF_abs              $85A9
  $85A3  8A FB 94                   LOADL_imm2             $94FB
  $85A6  D6 AC 85                   JUMP_abs               $85AC
 >$85A9  8A FC 94                   LOADL_imm2             $94FC
 >$85AC  B3                         PUSHL
  $85AD  3A                         PUSH_quick   ; inline operand = 10
  $85AE  8E D8 94                   PUSH_imm2              $94D8
  $85B1  E9 99 C7 06                CALL_abs_imm1          $C799 {native}, $06
  $85B5  0A                         LOADL_quick   ; inline operand = 10
  $85B6  B3                         PUSHL
  $85B7  00                         LOADL_quick   ; inline operand = 0
  $85B8  73                         ADD_qimm   ; inline operand = 3
  $85B9  B4                         POPR
  $85BA  B3                         PUSHL
  $85BB  D3                         BYTE_DEREF
  $85BC  BB                         ADD
  $85BD  D6 77 86                   JUMP_abs               $8677
 >$85C0  00                         LOADL_quick   ; inline operand = 0
  $85C1  73                         ADD_qimm   ; inline operand = 3
  $85C2  D3                         BYTE_DEREF
  $85C3  D8 35 86                   JUMPF_abs              $8635
  $85C6  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $85C9  60                         PUSH_qimm   ; inline operand = 0
  $85CA  8E FE 94                   PUSH_imm2              $94FE
  $85CD  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $85D1  A0 EB FF                   BYTE_LOADL_far         $FFEB
  $85D4  D0                         INC
  $85D5  D2                         LSHIFT1
  $85D6  8C 33 BC                   LOADR_imm2             $BC33
  $85D9  BB                         ADD
  $85DA  B3                         PUSHL
  $85DB  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $85DF  B3                         PUSHL
  $85E0  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $85E4  60                         PUSH_qimm   ; inline operand = 0
  $85E5  8E 00 95                   PUSH_imm2              $9500
  $85E8  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $85EC  00                         LOADL_quick   ; inline operand = 0
  $85ED  73                         ADD_qimm   ; inline operand = 3
  $85EE  D3                         BYTE_DEREF
  $85EF  B3                         PUSHL
  $85F0  A5 67 70                   BYTE_LOADL_abs         $7067
  $85F3  5E                         LOADR_qimm   ; inline operand = 14
  $85F4  B5                         MULT
  $85F5  8C BD 67                   LOADR_imm2             $67BD
  $85F8  BB                         ADD
  $85F9  D3                         BYTE_DEREF
  $85FA  8F 32                      BYTE_ADD_imm1          +50
  $85FC  B3                         PUSHL
  $85FD  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $8600  51                         LOADR_qimm   ; inline operand = 1
  $8601  BE                         URSHIFT
  $8602  D0                         INC
  $8603  B4                         POPR
  $8604  B5                         MULT
  $8605  51                         LOADR_qimm   ; inline operand = 1
  $8606  BE                         URSHIFT
  $8607  B4                         POPR
  $8608  B5                         MULT
  $8609  29                         STORE_quick   ; inline operand = 9
  $860A  09                         LOADL_quick   ; inline operand = 9
  $860B  B7 26                      LONG                   $26
  $860D  B7 14                      LONG                   $14
  $860F  A4 6B 66                   LOADL_abs              $666B
  $8612  B7 26                      LONG                   $26
  $8614  B7 15                      LONG                   $15
  $8616  B7 03                      LONG                   $03
  $8618  B7 19 60 EA 00 00          LONG                   $19 $60 $EA $00 $00
  $861E  B7 0A                      LONG                   $0A
  $8620  D8 2C 86                   JUMPF_abs              $862C
  $8623  8A 60 EA                   LOADL_imm2             $EA60
 >$8626  A8 6B 66                   STORE_abs              $666B
  $8629  D6 5B 86                   JUMP_abs               $865B
 >$862C  09                         LOADL_quick   ; inline operand = 9
  $862D  CD                         SWAP
  $862E  A4 6B 66                   LOADL_abs              $666B
  $8631  BB                         ADD
  $8632  D6 26 86                   JUMP_abs               $8626
 >$8635  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8638  60                         PUSH_qimm   ; inline operand = 0
  $8639  8E 37 95                   PUSH_imm2              $9537
  $863C  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8640  A0 EB FF                   BYTE_LOADL_far         $FFEB
  $8643  D0                         INC
  $8644  D2                         LSHIFT1
  $8645  8C 33 BC                   LOADR_imm2             $BC33
  $8648  BB                         ADD
  $8649  B3                         PUSHL
  $864A  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $864E  B3                         PUSHL
  $864F  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8653  60                         PUSH_qimm   ; inline operand = 0
  $8654  8E 50 95                   PUSH_imm2              $9550
  $8657  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
 >$865B  00                         LOADL_quick   ; inline operand = 0
  $865C  73                         ADD_qimm   ; inline operand = 3
  $865D  B3                         PUSHL
  $865E  0A                         LOADL_quick   ; inline operand = 10
  $865F  D4                         BYTE_POPSTORE
  $8660  8E CF 00                   PUSH_imm2              $00CF
  $8663  00                         LOADL_quick   ; inline operand = 0
  $8664  76                         ADD_qimm   ; inline operand = 6
  $8665  B4                         POPR
  $8666  B3                         PUSHL
  $8667  D3                         BYTE_DEREF
  $8668  DA                         AND
  $8669  D4                         BYTE_POPSTORE
  $866A  A0 EB FF                   BYTE_LOADL_far         $FFEB
  $866D  D0                         INC
  $866E  54                         LOADR_qimm   ; inline operand = 4
  $866F  BD                         LSHIFT
  $8670  B3                         PUSHL
  $8671  00                         LOADL_quick   ; inline operand = 0
  $8672  76                         ADD_qimm   ; inline operand = 6
  $8673  B4                         POPR
  $8674  B3                         PUSHL
  $8675  D3                         BYTE_DEREF
  $8676  DB                         OR
 >$8677  D4                         BYTE_POPSTORE
  $8678  61                         PUSH_qimm   ; inline operand = 1
  $8679  E9 9B CE 02                CALL_abs_imm1          $CE9B {native}, $02
  $867D  AC CE B7                   CALL_abs               $B7CE {native}
  $8680  41                         LOADL_qimm   ; inline operand = 1
  $8681  CF                         RETURN
 >$8682  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8685  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8688  8E 52 95                   PUSH_imm2              $9552
  $868B  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
 >$868F  A0 EB FF                   BYTE_LOADL_far         $FFEB
  $8692  8C FF 00                   LOADR_imm2             $00FF
  $8695  C1                         CMPNE
  $8696  D7 A3 84                   JUMPT_abs              $84A3
  $8699  61                         PUSH_qimm   ; inline operand = 1
  $869A  65                         PUSH_qimm   ; inline operand = 5
  $869B  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $869F  AC 01 83                   CALL_abs               $8301 {bytecode}
 >$86A2  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $86A5  8E 6E 95                   PUSH_imm2              $956E
  $86A8  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $86AC  D6 29 84                   JUMP_abs               $8429

; ============================================================
; sub $86AF   (frame_off=-28, body @ $86B4)   [PRG $2A6AF]
; ============================================================
 >$86B4  DE F2 FF                   LEAL_far               $FFF2
  $86B7  B3                         PUSHL
  $86B8  E9 6F 80 02                CALL_abs_imm1          $806F {bytecode}, $02
  $86BC  A2 F1 FF                   BYTE_STORE_far         $FFF1
  $86BF  61                         PUSH_qimm   ; inline operand = 1
  $86C0  65                         PUSH_qimm   ; inline operand = 5
  $86C1  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $86C5  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $86C8  61                         PUSH_qimm   ; inline operand = 1
  $86C9  8E 87 95                   PUSH_imm2              $9587
  $86CC  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $86D0  A0 F1 FF                   BYTE_LOADL_far         $FFF1
  $86D3  B3                         PUSHL
  $86D4  E9 98 B8 02                CALL_abs_imm1          $B898 {native}, $02
  $86D8  A2 F0 FF                   BYTE_STORE_far         $FFF0
  $86DB  A0 F0 FF                   BYTE_LOADL_far         $FFF0
  $86DE  8C FF 00                   LOADR_imm2             $00FF
  $86E1  C0                         CMPEQ
  $86E2  D8 ED 86                   JUMPF_abs              $86ED
  $86E5  AC 01 83                   CALL_abs               $8301 {bytecode}
  $86E8  AC CE B7                   CALL_abs               $B7CE {native}
  $86EB  40                         LOADL_qimm   ; inline operand = 0
  $86EC  CF                         RETURN
 >$86ED  DE F2 FF                   LEAL_far               $FFF2
  $86F0  B3                         PUSHL
  $86F1  A0 F0 FF                   BYTE_LOADL_far         $FFF0
  $86F4  B4                         POPR
  $86F5  BB                         ADD
  $86F6  D3                         BYTE_DEREF
  $86F7  B3                         PUSHL
  $86F8  E9 93 81 02                CALL_abs_imm1          $8193 {bytecode}, $02
  $86FC  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $86FF  61                         PUSH_qimm   ; inline operand = 1
  $8700  8E A0 95                   PUSH_imm2              $95A0
  $8703  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8707  AC 9F CD                   CALL_abs               $CD9F {native}
  $870A  2B                         STORE_quick   ; inline operand = 11
  $870B  0B                         LOADL_quick   ; inline operand = 11
  $870C  D7 19 87                   JUMPT_abs              $8719
  $870F  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8712  8E B3 95                   PUSH_imm2              $95B3
  $8715  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
 >$8719  0B                         LOADL_quick   ; inline operand = 11
  $871A  D8 B4 86                   JUMPF_abs              $86B4
  $871D  AC 01 B8                   CALL_abs               $B801 (draw_box_frame) {native}
  $8720  A5 67 70                   BYTE_LOADL_abs         $7067
  $8723  5E                         LOADR_qimm   ; inline operand = 14
  $8724  B5                         MULT
  $8725  8C BD 67                   LOADR_imm2             $67BD
  $8728  BB                         ADD
  $8729  D3                         BYTE_DEREF
  $872A  8F 14                      BYTE_ADD_imm1          +20
  $872C  B3                         PUSHL
  $872D  DE F2 FF                   LEAL_far               $FFF2
  $8730  B3                         PUSHL
  $8731  A0 F0 FF                   BYTE_LOADL_far         $FFF0
  $8734  B4                         POPR
  $8735  BB                         ADD
  $8736  D3                         BYTE_DEREF
  $8737  B3                         PUSHL
  $8738  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $873C  8F 14                      BYTE_ADD_imm1          +20
  $873E  B3                         PUSHL
  $873F  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8743  52                         LOADR_qimm   ; inline operand = 2
  $8744  BE                         URSHIFT
  $8745  53                         LOADR_qimm   ; inline operand = 3
  $8746  DA                         AND
  $8747  D0                         INC
  $8748  B4                         POPR
  $8749  B5                         MULT
  $874A  53                         LOADR_qimm   ; inline operand = 3
  $874B  B5                         MULT
  $874C  23                         STORE_quick   ; inline operand = 3
  $874D  8D 19                      BYTE_PUSH_imm1         +25
  $874F  6C                         PUSH_qimm   ; inline operand = 12
  $8750  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8754  AA 6B 66                   PUSH_abs               $666B
  $8757  8E CC 95                   PUSH_imm2              $95CC
  $875A  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $875E  61                         PUSH_qimm   ; inline operand = 1
  $875F  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $8763  DE F2 FF                   LEAL_far               $FFF2
  $8766  B3                         PUSHL
  $8767  A0 F0 FF                   BYTE_LOADL_far         $FFF0
  $876A  B4                         POPR
  $876B  BB                         ADD
  $876C  D3                         BYTE_DEREF
  $876D  B3                         PUSHL
  $876E  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8772  8F 14                      BYTE_ADD_imm1          +20
  $8774  B3                         PUSHL
  $8775  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8779  54                         LOADR_qimm   ; inline operand = 4
  $877A  BE                         URSHIFT
  $877B  51                         LOADR_qimm   ; inline operand = 1
  $877C  DA                         AND
  $877D  2A                         STORE_quick   ; inline operand = 10
  $877E  33                         PUSH_quick   ; inline operand = 3
  $877F  0A                         LOADL_quick   ; inline operand = 10
  $8780  D8 89 87                   JUMPF_abs              $8789
  $8783  8A FC 95                   LOADL_imm2             $95FC
  $8786  D6 8C 87                   JUMP_abs               $878C
 >$8789  8A FE 95                   LOADL_imm2             $95FE
 >$878C  B3                         PUSHL
  $878D  8E DC 95                   PUSH_imm2              $95DC
  $8790  E9 99 C7 06                CALL_abs_imm1          $C799 {native}, $06
  $8794  AC 9F CD                   CALL_abs               $CD9F {native}
  $8797  2B                         STORE_quick   ; inline operand = 11
  $8798  0B                         LOADL_quick   ; inline operand = 11
  $8799  D8 A8 87                   JUMPF_abs              $87A8
  $879C  0B                         LOADL_quick   ; inline operand = 11
  $879D  D8 C5 87                   JUMPF_abs              $87C5
  $87A0  A4 6B 66                   LOADL_abs              $666B
  $87A3  13                         LOADR_quick   ; inline operand = 3
  $87A4  C6                         UCMPLT
  $87A5  D8 C5 87                   JUMPF_abs              $87C5
 >$87A8  0B                         LOADL_quick   ; inline operand = 11
  $87A9  D8 B7 87                   JUMPF_abs              $87B7
  $87AC  A4 6B 66                   LOADL_abs              $666B
  $87AF  13                         LOADR_quick   ; inline operand = 3
  $87B0  C6                         UCMPLT
  $87B1  D8 B7 87                   JUMPF_abs              $87B7
  $87B4  AC EE 82                   CALL_abs               $82EE {bytecode}
 >$87B7  61                         PUSH_qimm   ; inline operand = 1
  $87B8  65                         PUSH_qimm   ; inline operand = 5
  $87B9  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $87BD  AC 01 83                   CALL_abs               $8301 {bytecode}
  $87C0  AC CE B7                   CALL_abs               $B7CE {native}
  $87C3  40                         LOADL_qimm   ; inline operand = 0
  $87C4  2B                         STORE_quick   ; inline operand = 11
 >$87C5  0B                         LOADL_quick   ; inline operand = 11
  $87C6  D8 B4 86                   JUMPF_abs              $86B4
  $87C9  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $87CC  8E 00 96                   PUSH_imm2              $9600
  $87CF  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $87D3  03                         LOADL_quick   ; inline operand = 3
  $87D4  CD                         SWAP
  $87D5  A4 6B 66                   LOADL_abs              $666B
  $87D8  BC                         SUB
  $87D9  A8 6B 66                   STORE_abs              $666B
  $87DC  8D 10                      BYTE_PUSH_imm1         +16
  $87DE  DE F2 FF                   LEAL_far               $FFF2
  $87E1  B3                         PUSHL
  $87E2  A0 F0 FF                   BYTE_LOADL_far         $FFF0
  $87E5  B4                         POPR
  $87E6  BB                         ADD
  $87E7  D3                         BYTE_DEREF
  $87E8  B3                         PUSHL
  $87E9  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $87ED  8F 14                      BYTE_ADD_imm1          +20
  $87EF  B4                         POPR
  $87F0  B3                         PUSHL
  $87F1  D3                         BYTE_DEREF
  $87F2  DC                         XOR
  $87F3  D4                         BYTE_POPSTORE
  $87F4  DE F2 FF                   LEAL_far               $FFF2
  $87F7  B3                         PUSHL
  $87F8  A0 F0 FF                   BYTE_LOADL_far         $FFF0
  $87FB  B4                         POPR
  $87FC  BB                         ADD
  $87FD  D3                         BYTE_DEREF
  $87FE  57                         LOADR_qimm   ; inline operand = 7
  $87FF  B5                         MULT
  $8800  8C 96 6C                   LOADR_imm2             $6C96
  $8803  BB                         ADD
  $8804  D3                         BYTE_DEREF
  $8805  5F                         LOADR_qimm   ; inline operand = 15
  $8806  DA                         AND
  $8807  B3                         PUSHL
  $8808  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $880C  8F 14                      BYTE_ADD_imm1          +20
  $880E  B3                         PUSHL
  $880F  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8813  55                         LOADR_qimm   ; inline operand = 5
  $8814  BE                         URSHIFT
  $8815  57                         LOADR_qimm   ; inline operand = 7
  $8816  DA                         AND
  $8817  21                         STORE_quick   ; inline operand = 1
  $8818  DE F2 FF                   LEAL_far               $FFF2
  $881B  B3                         PUSHL
  $881C  A0 F0 FF                   BYTE_LOADL_far         $FFF0
  $881F  B4                         POPR
  $8820  BB                         ADD
  $8821  D3                         BYTE_DEREF
  $8822  57                         LOADR_qimm   ; inline operand = 7
  $8823  B5                         MULT
  $8824  8C 96 6C                   LOADR_imm2             $6C96
  $8827  BB                         ADD
  $8828  D3                         BYTE_DEREF
  $8829  5F                         LOADR_qimm   ; inline operand = 15
  $882A  DA                         AND
  $882B  B3                         PUSHL
  $882C  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8830  8F 14                      BYTE_ADD_imm1          +20
  $8832  B3                         PUSHL
  $8833  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8837  53                         LOADR_qimm   ; inline operand = 3
  $8838  DA                         AND
  $8839  20                         STORE_quick   ; inline operand = 0
  $883A  DE F2 FF                   LEAL_far               $FFF2
  $883D  B3                         PUSHL
  $883E  A0 F0 FF                   BYTE_LOADL_far         $FFF0
  $8841  B4                         POPR
  $8842  BB                         ADD
  $8843  D3                         BYTE_DEREF
  $8844  57                         LOADR_qimm   ; inline operand = 7
  $8845  B5                         MULT
  $8846  8C 96 6C                   LOADR_imm2             $6C96
  $8849  BB                         ADD
  $884A  D3                         BYTE_DEREF
  $884B  5F                         LOADR_qimm   ; inline operand = 15
  $884C  DA                         AND
  $884D  B3                         PUSHL
  $884E  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8852  8F 14                      BYTE_ADD_imm1          +20
  $8854  B3                         PUSHL
  $8855  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8859  52                         LOADR_qimm   ; inline operand = 2
  $885A  BE                         URSHIFT
  $885B  53                         LOADR_qimm   ; inline operand = 3
  $885C  DA                         AND
  $885D  85 E6                      STORE_near             $E6
  $885F  DE F2 FF                   LEAL_far               $FFF2
  $8862  B3                         PUSHL
  $8863  A0 F0 FF                   BYTE_LOADL_far         $FFF0
  $8866  B4                         POPR
  $8867  BB                         ADD
  $8868  D3                         BYTE_DEREF
  $8869  57                         LOADR_qimm   ; inline operand = 7
  $886A  B5                         MULT
  $886B  8C 96 6C                   LOADR_imm2             $6C96
  $886E  BB                         ADD
  $886F  D3                         BYTE_DEREF
  $8870  5F                         LOADR_qimm   ; inline operand = 15
  $8871  DA                         AND
  $8872  B3                         PUSHL
  $8873  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8877  8F 14                      BYTE_ADD_imm1          +20
  $8879  B3                         PUSHL
  $887A  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $887E  54                         LOADR_qimm   ; inline operand = 4
  $887F  BE                         URSHIFT
  $8880  51                         LOADR_qimm   ; inline operand = 1
  $8881  DA                         AND
  $8882  85 E4                      STORE_near             $E4
  $8884  DE F2 FF                   LEAL_far               $FFF2
  $8887  B3                         PUSHL
  $8888  A0 F0 FF                   BYTE_LOADL_far         $FFF0
  $888B  B4                         POPR
  $888C  BB                         ADD
  $888D  D3                         BYTE_DEREF
  $888E  57                         LOADR_qimm   ; inline operand = 7
  $888F  B5                         MULT
  $8890  8C 90 6C                   LOADR_imm2             $6C90
  $8893  BB                         ADD
  $8894  22                         STORE_quick   ; inline operand = 2
  $8895  32                         PUSH_quick   ; inline operand = 2
  $8896  00                         LOADL_quick   ; inline operand = 0
  $8897  5A                         LOADR_qimm   ; inline operand = 10
  $8898  B5                         MULT
  $8899  B3                         PUSHL
  $889A  01                         LOADL_quick   ; inline operand = 1
  $889B  5A                         LOADR_qimm   ; inline operand = 10
  $889C  B5                         MULT
  $889D  B4                         POPR
  $889E  BB                         ADD
  $889F  8F 14                      BYTE_ADD_imm1          +20
  $88A1  B3                         PUSHL
  $88A2  02                         LOADL_quick   ; inline operand = 2
  $88A3  D3                         BYTE_DEREF
  $88A4  B3                         PUSHL
  $88A5  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $88A9  D4                         BYTE_POPSTORE
  $88AA  02                         LOADL_quick   ; inline operand = 2
  $88AB  D0                         INC
  $88AC  B3                         PUSHL
  $88AD  44                         LOADL_qimm   ; inline operand = 4
  $88AE  83 E4                      LOADR_near             $E4
  $88B0  BC                         SUB
  $88B1  B3                         PUSHL
  $88B2  4A                         LOADL_qimm   ; inline operand = 10
  $88B3  83 E6                      LOADR_near             $E6
  $88B5  BC                         SUB
  $88B6  B3                         PUSHL
  $88B7  89 14                      BYTE_LOADL_imm1        +20
  $88B9  11                         LOADR_quick   ; inline operand = 1
  $88BA  BC                         SUB
  $88BB  8B 64                      BYTE_LOADR_imm1        +100
  $88BD  B5                         MULT
  $88BE  8B 14                      BYTE_LOADR_imm1        +20
  $88C0  B6                         SDIV
  $88C1  B4                         POPR
  $88C2  B5                         MULT
  $88C3  5A                         LOADR_qimm   ; inline operand = 10
  $88C4  B6                         SDIV
  $88C5  B4                         POPR
  $88C6  B5                         MULT
  $88C7  54                         LOADR_qimm   ; inline operand = 4
  $88C8  B6                         SDIV
  $88C9  B3                         PUSHL
  $88CA  02                         LOADL_quick   ; inline operand = 2
  $88CB  D0                         INC
  $88CC  D3                         BYTE_DEREF
  $88CD  B3                         PUSHL
  $88CE  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $88D2  D4                         BYTE_POPSTORE
  $88D3  02                         LOADL_quick   ; inline operand = 2
  $88D4  72                         ADD_qimm   ; inline operand = 2
  $88D5  B3                         PUSHL
  $88D6  81 E4                      LOADL_near             $E4
  $88D8  73                         ADD_qimm   ; inline operand = 3
  $88D9  B3                         PUSHL
  $88DA  4A                         LOADL_qimm   ; inline operand = 10
  $88DB  11                         LOADR_quick   ; inline operand = 1
  $88DC  BC                         SUB
  $88DD  B3                         PUSHL
  $88DE  81 E6                      LOADL_near             $E6
  $88E0  5A                         LOADR_qimm   ; inline operand = 10
  $88E1  B5                         MULT
  $88E2  8F 64                      BYTE_ADD_imm1          +100
  $88E4  B4                         POPR
  $88E5  B5                         MULT
  $88E6  5A                         LOADR_qimm   ; inline operand = 10
  $88E7  B8                         UDIV
  $88E8  B4                         POPR
  $88E9  B5                         MULT
  $88EA  52                         LOADR_qimm   ; inline operand = 2
  $88EB  BE                         URSHIFT
  $88EC  B3                         PUSHL
  $88ED  02                         LOADL_quick   ; inline operand = 2
  $88EE  72                         ADD_qimm   ; inline operand = 2
  $88EF  D3                         BYTE_DEREF
  $88F0  B3                         PUSHL
  $88F1  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $88F5  D4                         BYTE_POPSTORE
  $88F6  AC CE B7                   CALL_abs               $B7CE {native}
  $88F9  40                         LOADL_qimm   ; inline operand = 0
  $88FA  CF                         RETURN

; ============================================================
; sub $88FB   (frame_off=-22, body @ $8900)   [PRG $2A8FB]
; ============================================================
  $8900  41                         LOADL_qimm   ; inline operand = 1
  $8901  2A                         STORE_quick   ; inline operand = 10
 >$8902  41                         LOADL_qimm   ; inline operand = 1
  $8903  A2 EF FF                   BYTE_STORE_far         $FFEF
  $8906  61                         PUSH_qimm   ; inline operand = 1
  $8907  65                         PUSH_qimm   ; inline operand = 5
  $8908  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $890C  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $890F  0A                         LOADL_quick   ; inline operand = 10
  $8910  D8 20 89                   JUMPF_abs              $8920
  $8913  61                         PUSH_qimm   ; inline operand = 1
  $8914  8E 4F 96                   PUSH_imm2              $964F
  $8917  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $891B  40                         LOADL_qimm   ; inline operand = 0
  $891C  2A                         STORE_quick   ; inline operand = 10
  $891D  D6 28 89                   JUMP_abs               $8928
 >$8920  61                         PUSH_qimm   ; inline operand = 1
  $8921  8E 8E 96                   PUSH_imm2              $968E
  $8924  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
 >$8928  DE F2 FF                   LEAL_far               $FFF2
  $892B  B3                         PUSHL
  $892C  E9 6F 80 02                CALL_abs_imm1          $806F {bytecode}, $02
  $8930  A2 F1 FF                   BYTE_STORE_far         $FFF1
  $8933  A0 F1 FF                   BYTE_LOADL_far         $FFF1
  $8936  B3                         PUSHL
  $8937  E9 98 B8 02                CALL_abs_imm1          $B898 {native}, $02
  $893B  A2 F0 FF                   BYTE_STORE_far         $FFF0
  $893E  A0 F0 FF                   BYTE_LOADL_far         $FFF0
  $8941  8C FF 00                   LOADR_imm2             $00FF
  $8944  C0                         CMPEQ
  $8945  D8 50 89                   JUMPF_abs              $8950
  $8948  AC 01 83                   CALL_abs               $8301 {bytecode}
  $894B  AC CE B7                   CALL_abs               $B7CE {native}
  $894E  40                         LOADL_qimm   ; inline operand = 0
  $894F  CF                         RETURN
 >$8950  DE F2 FF                   LEAL_far               $FFF2
  $8953  B3                         PUSHL
  $8954  A0 F0 FF                   BYTE_LOADL_far         $FFF0
  $8957  B4                         POPR
  $8958  BB                         ADD
  $8959  D3                         BYTE_DEREF
  $895A  B3                         PUSHL
  $895B  E9 93 81 02                CALL_abs_imm1          $8193 {bytecode}, $02
  $895F  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8962  61                         PUSH_qimm   ; inline operand = 1
  $8963  8E A2 96                   PUSH_imm2              $96A2
  $8966  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $896A  AC 9F CD                   CALL_abs               $CD9F {native}
  $896D  2B                         STORE_quick   ; inline operand = 11
  $896E  0B                         LOADL_quick   ; inline operand = 11
  $896F  D7 7C 89                   JUMPT_abs              $897C
  $8972  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8975  8E B5 96                   PUSH_imm2              $96B5
  $8978  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
 >$897C  0B                         LOADL_quick   ; inline operand = 11
  $897D  D8 28 89                   JUMPF_abs              $8928
  $8980  40                         LOADL_qimm   ; inline operand = 0
  $8981  2B                         STORE_quick   ; inline operand = 11
  $8982  A4 6B 66                   LOADL_abs              $666B
  $8985  B7 26                      LONG                   $26
  $8987  B7 19 B8 88 00 00          LONG                   $19 $B8 $88 $00 $00
  $898D  B7 2B                      LONG                   $2B
  $898F  D8 F9 89                   JUMPF_abs              $89F9
  $8992  A5 67 70                   BYTE_LOADL_abs         $7067
  $8995  5E                         LOADR_qimm   ; inline operand = 14
  $8996  B5                         MULT
  $8997  8C B2 67                   LOADR_imm2             $67B2
  $899A  BB                         ADD
  $899B  B0                         DEREF
  $899C  8C 52 03                   LOADR_imm2             $0352
  $899F  C4                         SCMPGT
  $89A0  D8 F9 89                   JUMPF_abs              $89F9
  $89A3  8D 64                      BYTE_PUSH_imm1         +100
  $89A5  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $89A9  D7 F9 89                   JUMPT_abs              $89F9
  $89AC  8E E8 03                   PUSH_imm2              $03E8
  $89AF  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $89B3  90 30 75                   ADD_imm2               $7530
  $89B6  22                         STORE_quick   ; inline operand = 2
  $89B7  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $89BA  32                         PUSH_quick   ; inline operand = 2
  $89BB  8E C9 96                   PUSH_imm2              $96C9
  $89BE  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $89C2  AC 9F CD                   CALL_abs               $CD9F {native}
  $89C5  D8 EA 89                   JUMPF_abs              $89EA
  $89C8  02                         LOADL_quick   ; inline operand = 2
  $89C9  CD                         SWAP
  $89CA  A4 6B 66                   LOADL_abs              $666B
  $89CD  BC                         SUB
  $89CE  A8 6B 66                   STORE_abs              $666B
  $89D1  DE F2 FF                   LEAL_far               $FFF2
  $89D4  B3                         PUSHL
  $89D5  A0 F0 FF                   BYTE_LOADL_far         $FFF0
  $89D8  B4                         POPR
  $89D9  BB                         ADD
  $89DA  D3                         BYTE_DEREF
  $89DB  8B 18                      BYTE_LOADR_imm1        +24
  $89DD  B5                         MULT
  $89DE  8C BB 6A                   LOADR_imm2             $6ABB
  $89E1  BB                         ADD
  $89E2  B3                         PUSHL
  $89E3  47                         LOADL_qimm   ; inline operand = 7
  $89E4  D4                         BYTE_POPSTORE
  $89E5  AC CE B7                   CALL_abs               $B7CE {native}
  $89E8  41                         LOADL_qimm   ; inline operand = 1
  $89E9  CF                         RETURN
 >$89EA  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $89ED  8E 01 97                   PUSH_imm2              $9701
  $89F0  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $89F4  AC CE B7                   CALL_abs               $B7CE {native}
  $89F7  40                         LOADL_qimm   ; inline operand = 0
  $89F8  CF                         RETURN
 >$89F9  DE F2 FF                   LEAL_far               $FFF2
  $89FC  B3                         PUSHL
  $89FD  A0 F0 FF                   BYTE_LOADL_far         $FFF0
  $8A00  B4                         POPR
  $8A01  BB                         ADD
  $8A02  D3                         BYTE_DEREF
  $8A03  8B 18                      BYTE_LOADR_imm1        +24
  $8A05  B5                         MULT
  $8A06  8C A4 6A                   LOADR_imm2             $6AA4
  $8A09  BB                         ADD
  $8A0A  21                         STORE_quick   ; inline operand = 1
  $8A0B  A5 67 70                   BYTE_LOADL_abs         $7067
  $8A0E  5E                         LOADR_qimm   ; inline operand = 14
  $8A0F  B5                         MULT
  $8A10  8C B2 67                   LOADR_imm2             $67B2
  $8A13  BB                         ADD
  $8A14  B0                         DEREF
  $8A15  8C AA 00                   LOADR_imm2             $00AA
  $8A18  B6                         SDIV
  $8A19  D0                         INC
  $8A1A  A2 F1 FF                   BYTE_STORE_far         $FFF1
 >$8A1D  A0 EF FF                   BYTE_LOADL_far         $FFEF
  $8A20  8C FF 00                   LOADR_imm2             $00FF
  $8A23  C1                         CMPNE
  $8A24  D8 2F 8B                   JUMPF_abs              $8B2F
  $8A27  0B                         LOADL_quick   ; inline operand = 11
  $8A28  D7 2F 8B                   JUMPT_abs              $8B2F
  $8A2B  61                         PUSH_qimm   ; inline operand = 1
  $8A2C  65                         PUSH_qimm   ; inline operand = 5
  $8A2D  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8A31  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8A34  01                         LOADL_quick   ; inline operand = 1
  $8A35  8F 17                      BYTE_ADD_imm1          +23
  $8A37  D3                         BYTE_DEREF
  $8A38  A2 EE FF                   BYTE_STORE_far         $FFEE
  $8A3B  A0 EE FF                   BYTE_LOADL_far         $FFEE
  $8A3E  D8 8C 8A                   JUMPF_abs              $8A8C
  $8A41  61                         PUSH_qimm   ; inline operand = 1
  $8A42  8E 33 97                   PUSH_imm2              $9733
  $8A45  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8A49  A0 EE FF                   BYTE_LOADL_far         $FFEE
  $8A4C  52                         LOADR_qimm   ; inline operand = 2
  $8A4D  C0                         CMPEQ
  $8A4E  D8 59 8A                   JUMPF_abs              $8A59
  $8A51  61                         PUSH_qimm   ; inline operand = 1
  $8A52  8E 41 97                   PUSH_imm2              $9741
  $8A55  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
 >$8A59  A0 EE FF                   BYTE_LOADL_far         $FFEE
  $8A5C  57                         LOADR_qimm   ; inline operand = 7
  $8A5D  C1                         CMPNE
  $8A5E  D8 7C 8A                   JUMPF_abs              $8A7C
  $8A61  A0 EE FF                   BYTE_LOADL_far         $FFEE
  $8A64  D1                         DEC
  $8A65  A2 EE FF                   BYTE_STORE_far         $FFEE
  $8A68  A0 EE FF                   BYTE_LOADL_far         $FFEE
  $8A6B  D2                         LSHIFT1
  $8A6C  8C 1C 96                   LOADR_imm2             $961C
  $8A6F  BB                         ADD
  $8A70  B0                         DEREF
  $8A71  B3                         PUSHL
  $8A72  8E 43 97                   PUSH_imm2              $9743
  $8A75  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8A79  D6 84 8A                   JUMP_abs               $8A84
 >$8A7C  61                         PUSH_qimm   ; inline operand = 1
  $8A7D  8E 47 97                   PUSH_imm2              $9747
  $8A80  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
 >$8A84  61                         PUSH_qimm   ; inline operand = 1
  $8A85  8E 4E 97                   PUSH_imm2              $974E
  $8A88  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
 >$8A8C  61                         PUSH_qimm   ; inline operand = 1
  $8A8D  8E 5C 97                   PUSH_imm2              $975C
  $8A90  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8A94  6F                         PUSH_qimm   ; inline operand = 15
  $8A95  6A                         PUSH_qimm   ; inline operand = 10
  $8A96  66                         PUSH_qimm   ; inline operand = 6
  $8A97  8D 14                      BYTE_PUSH_imm1         +20
  $8A99  E9 02 A5 08                CALL_abs_imm1          $A502 {native}, $08
  $8A9D  62                         PUSH_qimm   ; inline operand = 2
  $8A9E  8E 1C 96                   PUSH_imm2              $961C
  $8AA1  A0 F1 FF                   BYTE_LOADL_far         $FFF1
  $8AA4  B3                         PUSHL
  $8AA5  66                         PUSH_qimm   ; inline operand = 6
  $8AA6  8D 14                      BYTE_PUSH_imm1         +20
  $8AA8  E9 8D A0 0A                CALL_abs_imm1          $A08D {native}, $0A
  $8AAC  A2 EF FF                   BYTE_STORE_far         $FFEF
  $8AAF  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8AB2  AC 01 B8                   CALL_abs               $B801 (draw_box_frame) {native}
  $8AB5  AC 44 A5                   CALL_abs               $A544 {native}
  $8AB8  A0 EF FF                   BYTE_LOADL_far         $FFEF
  $8ABB  8C FF 00                   LOADR_imm2             $00FF
  $8ABE  C1                         CMPNE
  $8ABF  D8 1D 8A                   JUMPF_abs              $8A1D
  $8AC2  A0 EF FF                   BYTE_LOADL_far         $FFEF
  $8AC5  B3                         PUSHL
  $8AC6  41                         LOADL_qimm   ; inline operand = 1
  $8AC7  B4                         POPR
  $8AC8  BD                         LSHIFT
  $8AC9  8C E8 03                   LOADR_imm2             $03E8
  $8ACC  B5                         MULT
  $8ACD  22                         STORE_quick   ; inline operand = 2
  $8ACE  8D 19                      BYTE_PUSH_imm1         +25
  $8AD0  6C                         PUSH_qimm   ; inline operand = 12
  $8AD1  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8AD5  AA 6B 66                   PUSH_abs               $666B
  $8AD8  8E 72 97                   PUSH_imm2              $9772
  $8ADB  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8ADF  61                         PUSH_qimm   ; inline operand = 1
  $8AE0  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $8AE4  32                         PUSH_quick   ; inline operand = 2
  $8AE5  8E 82 97                   PUSH_imm2              $9782
  $8AE8  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8AEC  AC 9F CD                   CALL_abs               $CD9F {native}
  $8AEF  D8 1D 8A                   JUMPF_abs              $8A1D
  $8AF2  A4 6B 66                   LOADL_abs              $666B
  $8AF5  12                         LOADR_quick   ; inline operand = 2
  $8AF6  C6                         UCMPLT
  $8AF7  D8 00 8B                   JUMPF_abs              $8B00
  $8AFA  AC EE 82                   CALL_abs               $82EE {bytecode}
  $8AFD  D6 1D 8A                   JUMP_abs               $8A1D
 >$8B00  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8B03  8E A1 97                   PUSH_imm2              $97A1
  $8B06  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8B0A  02                         LOADL_quick   ; inline operand = 2
  $8B0B  CD                         SWAP
  $8B0C  A4 6B 66                   LOADL_abs              $666B
  $8B0F  BC                         SUB
  $8B10  A8 6B 66                   STORE_abs              $666B
  $8B13  DE F2 FF                   LEAL_far               $FFF2
  $8B16  B3                         PUSHL
  $8B17  A0 F0 FF                   BYTE_LOADL_far         $FFF0
  $8B1A  B4                         POPR
  $8B1B  BB                         ADD
  $8B1C  D3                         BYTE_DEREF
  $8B1D  8B 18                      BYTE_LOADR_imm1        +24
  $8B1F  B5                         MULT
  $8B20  8C BB 6A                   LOADR_imm2             $6ABB
  $8B23  BB                         ADD
  $8B24  B3                         PUSHL
  $8B25  A0 EF FF                   BYTE_LOADL_far         $FFEF
  $8B28  D0                         INC
  $8B29  D4                         BYTE_POPSTORE
  $8B2A  AC CE B7                   CALL_abs               $B7CE {native}
  $8B2D  41                         LOADL_qimm   ; inline operand = 1
  $8B2E  CF                         RETURN
 >$8B2F  A0 EF FF                   BYTE_LOADL_far         $FFEF
  $8B32  8C FF 00                   LOADR_imm2             $00FF
  $8B35  C1                         CMPNE
  $8B36  D7 02 89                   JUMPT_abs              $8902
  $8B39  0B                         LOADL_quick   ; inline operand = 11
  $8B3A  D8 02 89                   JUMPF_abs              $8902
  $8B3D  AC CE B7                   CALL_abs               $B7CE {native}
  $8B40  0B                         LOADL_quick   ; inline operand = 11
  $8B41  CF                         RETURN

; ============================================================
; sub $8B42   (frame_off=-3, body @ $8B47)   [PRG $2AB42]
; ============================================================
  $8B47  40                         LOADL_qimm   ; inline operand = 0
  $8B48  2B                         STORE_quick   ; inline operand = 11
 >$8B49  61                         PUSH_qimm   ; inline operand = 1
  $8B4A  65                         PUSH_qimm   ; inline operand = 5
  $8B4B  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8B4F  61                         PUSH_qimm   ; inline operand = 1
  $8B50  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $8B54  61                         PUSH_qimm   ; inline operand = 1
  $8B55  8E F3 97                   PUSH_imm2              $97F3
  $8B58  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8B5C  62                         PUSH_qimm   ; inline operand = 2
  $8B5D  64                         PUSH_qimm   ; inline operand = 4
  $8B5E  8E C1 97                   PUSH_imm2              $97C1
  $8B61  62                         PUSH_qimm   ; inline operand = 2
  $8B62  67                         PUSH_qimm   ; inline operand = 7
  $8B63  8D 17                      BYTE_PUSH_imm1         +23
  $8B65  68                         PUSH_qimm   ; inline operand = 8
  $8B66  E9 56 A1 0E                CALL_abs_imm1          $A156 {native}, $0E
  $8B6A  A2 FD FF                   BYTE_STORE_far         $FFFD
  $8B6D  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $8B70  8C FF 00                   LOADR_imm2             $00FF
  $8B73  C1                         CMPNE
  $8B74  D8 A9 8B                   JUMPF_abs              $8BA9
  $8B77  60                         PUSH_qimm   ; inline operand = 0
  $8B78  8D 12                      BYTE_PUSH_imm1         +18
  $8B7A  8D 1C                      BYTE_PUSH_imm1         +28
  $8B7C  62                         PUSH_qimm   ; inline operand = 2
  $8B7D  62                         PUSH_qimm   ; inline operand = 2
  $8B7E  E9 05 A4 0A                CALL_abs_imm1          $A405 {native}, $0A
  $8B82  8A F0 00                   LOADL_imm2             $00F0
  $8B85  A9 63 70                   BYTE_STORE_abs         $7063
  $8B88  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $8B8B  D2                         LSHIFT1
  $8B8C  8C C9 97                   LOADR_imm2             $97C9
  $8B8F  BB                         ADD
  $8B90  B0                         DEREF
  $8B91  DD                         CALLPTR
  $8B92  2B                         STORE_quick   ; inline operand = 11
  $8B93  8E 03 80                   PUSH_imm2              $8003
  $8B96  8E DE 00                   PUSH_imm2              $00DE
  $8B99  61                         PUSH_qimm   ; inline operand = 1
  $8B9A  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $8B9E  60                         PUSH_qimm   ; inline operand = 0
  $8B9F  8D 12                      BYTE_PUSH_imm1         +18
  $8BA1  8D 1C                      BYTE_PUSH_imm1         +28
  $8BA3  62                         PUSH_qimm   ; inline operand = 2
  $8BA4  62                         PUSH_qimm   ; inline operand = 2
  $8BA5  E9 9B A4 0A                CALL_abs_imm1          $A49B {native}, $0A
 >$8BA9  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $8BAC  8C FF 00                   LOADR_imm2             $00FF
  $8BAF  C0                         CMPEQ
  $8BB0  D7 B7 8B                   JUMPT_abs              $8BB7
  $8BB3  0B                         LOADL_quick   ; inline operand = 11
  $8BB4  D8 49 8B                   JUMPF_abs              $8B49
 >$8BB7  0B                         LOADL_quick   ; inline operand = 11
  $8BB8  CF                         RETURN

; ============================================================
; sub $8BB9   (frame_off=-4, body @ $8BBE)   [PRG $2ABB9]
; ============================================================
  $8BBE  A4 72 6F                   LOADL_abs              $6F72
  $8BC1  8C 50 C3                   LOADR_imm2             $C350
  $8BC4  C6                         UCMPLT
  $8BC5  D8 F5 8B                   JUMPF_abs              $8BF5
  $8BC8  A5 67 70                   BYTE_LOADL_abs         $7067
  $8BCB  5E                         LOADR_qimm   ; inline operand = 14
  $8BCC  B5                         MULT
  $8BCD  8C B2 67                   LOADR_imm2             $67B2
  $8BD0  BB                         ADD
  $8BD1  2B                         STORE_quick   ; inline operand = 11
  $8BD2  0B                         LOADL_quick   ; inline operand = 11
  $8BD3  B0                         DEREF
  $8BD4  B3                         PUSHL
  $8BD5  0B                         LOADL_quick   ; inline operand = 11
  $8BD6  74                         ADD_qimm   ; inline operand = 4
  $8BD7  B0                         DEREF
  $8BD8  B4                         POPR
  $8BD9  BB                         ADD
  $8BDA  51                         LOADR_qimm   ; inline operand = 1
  $8BDB  BE                         URSHIFT
  $8BDC  B3                         PUSHL
  $8BDD  8D 64                      BYTE_PUSH_imm1         +100
  $8BDF  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8BE3  B4                         POPR
  $8BE4  BB                         ADD
  $8BE5  A6 72 6F                   LOADR_abs              $6F72
  $8BE8  BB                         ADD
  $8BE9  2A                         STORE_quick   ; inline operand = 10
  $8BEA  8E 50 C3                   PUSH_imm2              $C350
  $8BED  3A                         PUSH_quick   ; inline operand = 10
  $8BEE  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8BF2  A8 72 6F                   STORE_abs              $6F72
 >$8BF5  CF                         RETURN

; ============================================================
; sub $8BF6   (frame_off=-4, body @ $8BFB)   [PRG $2ABF6]
; ============================================================
  $8BFB  A5 67 70                   BYTE_LOADL_abs         $7067
  $8BFE  5E                         LOADR_qimm   ; inline operand = 14
  $8BFF  B5                         MULT
  $8C00  8C B2 67                   LOADR_imm2             $67B2
  $8C03  BB                         ADD
  $8C04  2B                         STORE_quick   ; inline operand = 11
  $8C05  0C                         LOADL_quick   ; inline operand = 12
  $8C06  D2                         LSHIFT1
  $8C07  D2                         LSHIFT1
  $8C08  8C BE 6F                   LOADR_imm2             $6FBE
  $8C0B  BB                         ADD
  $8C0C  D3                         BYTE_DEREF
  $8C0D  2A                         STORE_quick   ; inline operand = 10
  $8C0E  0B                         LOADL_quick   ; inline operand = 11
  $8C0F  B0                         DEREF
  $8C10  B3                         PUSHL
  $8C11  0B                         LOADL_quick   ; inline operand = 11
  $8C12  74                         ADD_qimm   ; inline operand = 4
  $8C13  B0                         DEREF
  $8C14  B4                         POPR
  $8C15  BB                         ADD
  $8C16  8B 41                      BYTE_LOADR_imm1        +65
  $8C18  B8                         UDIV
  $8C19  B3                         PUSHL
  $8C1A  63                         PUSH_qimm   ; inline operand = 3
  $8C1B  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8C1F  B4                         POPR
  $8C20  BB                         ADD
  $8C21  1A                         LOADR_quick   ; inline operand = 10
  $8C22  BB                         ADD
  $8C23  75                         ADD_qimm   ; inline operand = 5
  $8C24  2A                         STORE_quick   ; inline operand = 10
  $8C25  0C                         LOADL_quick   ; inline operand = 12
  $8C26  D2                         LSHIFT1
  $8C27  D2                         LSHIFT1
  $8C28  8C BE 6F                   LOADR_imm2             $6FBE
  $8C2B  BB                         ADD
  $8C2C  B3                         PUSHL
  $8C2D  8D 64                      BYTE_PUSH_imm1         +100
  $8C2F  3A                         PUSH_quick   ; inline operand = 10
  $8C30  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8C34  D4                         BYTE_POPSTORE
  $8C35  CF                         RETURN

; ============================================================
; sub $8C36   (frame_off=-14, body @ $8C3B)   [PRG $2AC36]
; ============================================================
  $8C3B  A4 6B 66                   LOADL_abs              $666B
  $8C3E  D7 50 8C                   JUMPT_abs              $8C50
  $8C41  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8C44  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8C47  8E 06 98                   PUSH_imm2              $9806
  $8C4A  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8C4E  40                         LOADL_qimm   ; inline operand = 0
  $8C4F  CF                         RETURN
 >$8C50  A5 67 70                   BYTE_LOADL_abs         $7067
  $8C53  53                         LOADR_qimm   ; inline operand = 3
  $8C54  C6                         UCMPLT
  $8C55  D8 7C 8C                   JUMPF_abs              $8C7C
  $8C58  61                         PUSH_qimm   ; inline operand = 1
  $8C59  65                         PUSH_qimm   ; inline operand = 5
  $8C5A  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8C5E  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8C61  A5 67 70                   BYTE_LOADL_abs         $7067
  $8C64  52                         LOADR_qimm   ; inline operand = 2
  $8C65  C0                         CMPEQ
  $8C66  D8 6F 8C                   JUMPF_abs              $8C6F
  $8C69  8A 4E 98                   LOADL_imm2             $984E
  $8C6C  D6 72 8C                   JUMP_abs               $8C72
 >$8C6F  8A 55 98                   LOADL_imm2             $9855
 >$8C72  B3                         PUSHL
  $8C73  8E 1D 98                   PUSH_imm2              $981D
  $8C76  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8C7A  40                         LOADL_qimm   ; inline operand = 0
  $8C7B  CF                         RETURN
 >$8C7C  A5 67 70                   BYTE_LOADL_abs         $7067
  $8C7F  5E                         LOADR_qimm   ; inline operand = 14
  $8C80  B5                         MULT
  $8C81  8C B8 67                   LOADR_imm2             $67B8
  $8C84  BB                         ADD
  $8C85  B0                         DEREF
  $8C86  8C 60 EA                   LOADR_imm2             $EA60
  $8C89  C0                         CMPEQ
  $8C8A  D8 9F 8C                   JUMPF_abs              $8C9F
  $8C8D  61                         PUSH_qimm   ; inline operand = 1
  $8C8E  65                         PUSH_qimm   ; inline operand = 5
  $8C8F  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8C93  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8C96  8E 5A 98                   PUSH_imm2              $985A
  $8C99  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8C9D  40                         LOADL_qimm   ; inline operand = 0
  $8C9E  CF                         RETURN
 >$8C9F  61                         PUSH_qimm   ; inline operand = 1
  $8CA0  65                         PUSH_qimm   ; inline operand = 5
  $8CA1  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8CA5  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8CA8  8E 96 98                   PUSH_imm2              $9896
  $8CAB  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8CAF  A5 67 70                   BYTE_LOADL_abs         $7067
  $8CB2  5E                         LOADR_qimm   ; inline operand = 14
  $8CB3  B5                         MULT
  $8CB4  8C B8 67                   LOADR_imm2             $67B8
  $8CB7  BB                         ADD
  $8CB8  B0                         DEREF
  $8CB9  B3                         PUSHL
  $8CBA  8A 60 EA                   LOADL_imm2             $EA60
  $8CBD  B4                         POPR
  $8CBE  BC                         SUB
  $8CBF  2B                         STORE_quick   ; inline operand = 11
  $8CC0  A4 6B 66                   LOADL_abs              $666B
  $8CC3  1B                         LOADR_quick   ; inline operand = 11
  $8CC4  C6                         UCMPLT
  $8CC5  D8 CC 8C                   JUMPF_abs              $8CCC
  $8CC8  A4 6B 66                   LOADL_abs              $666B
  $8CCB  2B                         STORE_quick   ; inline operand = 11
 >$8CCC  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8CCF  61                         PUSH_qimm   ; inline operand = 1
  $8CD0  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $8CD4  3B                         PUSH_quick   ; inline operand = 11
  $8CD5  AA 6B 66                   PUSH_abs               $666B
  $8CD8  8E C8 98                   PUSH_imm2              $98C8
  $8CDB  E9 99 C7 06                CALL_abs_imm1          $C799 {native}, $06
  $8CDF  3B                         PUSH_quick   ; inline operand = 11
  $8CE0  61                         PUSH_qimm   ; inline operand = 1
  $8CE1  8E F4 98                   PUSH_imm2              $98F4
  $8CE4  E9 F3 CC 06                CALL_abs_imm1          $CCF3 {native}, $06
  $8CE8  2A                         STORE_quick   ; inline operand = 10
  $8CE9  0A                         LOADL_quick   ; inline operand = 10
  $8CEA  8B FF                      BYTE_LOADR_imm1        -1
  $8CEC  C0                         CMPEQ
  $8CED  D8 02 8D                   JUMPF_abs              $8D02
  $8CF0  61                         PUSH_qimm   ; inline operand = 1
  $8CF1  65                         PUSH_qimm   ; inline operand = 5
  $8CF2  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8CF6  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8CF9  8E F5 98                   PUSH_imm2              $98F5
  $8CFC  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8D00  40                         LOADL_qimm   ; inline operand = 0
  $8D01  CF                         RETURN
 >$8D02  3A                         PUSH_quick   ; inline operand = 10
  $8D03  A5 67 70                   BYTE_LOADL_abs         $7067
  $8D06  5E                         LOADR_qimm   ; inline operand = 14
  $8D07  B5                         MULT
  $8D08  8C B8 67                   LOADR_imm2             $67B8
  $8D0B  BB                         ADD
  $8D0C  B4                         POPR
  $8D0D  B3                         PUSHL
  $8D0E  B0                         DEREF
  $8D0F  BB                         ADD
  $8D10  B1                         POPSTORE
  $8D11  0A                         LOADL_quick   ; inline operand = 10
  $8D12  CD                         SWAP
  $8D13  A4 6B 66                   LOADL_abs              $666B
  $8D16  BC                         SUB
  $8D17  A8 6B 66                   STORE_abs              $666B
  $8D1A  61                         PUSH_qimm   ; inline operand = 1
  $8D1B  65                         PUSH_qimm   ; inline operand = 5
  $8D1C  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8D20  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8D23  0A                         LOADL_quick   ; inline operand = 10
  $8D24  8C E8 03                   LOADR_imm2             $03E8
  $8D27  C6                         UCMPLT
  $8D28  D8 38 8D                   JUMPF_abs              $8D38
  $8D2B  0A                         LOADL_quick   ; inline operand = 10
  $8D2C  D0                         INC
  $8D2D  8B 14                      BYTE_LOADR_imm1        +20
  $8D2F  B8                         UDIV
  $8D30  29                         STORE_quick   ; inline operand = 9
  $8D31  61                         PUSH_qimm   ; inline operand = 1
  $8D32  8E 01 99                   PUSH_imm2              $9901
  $8D35  D6 5C 8D                   JUMP_abs               $8D5C
 >$8D38  0A                         LOADL_quick   ; inline operand = 10
  $8D39  8C 0F 27                   LOADR_imm2             $270F
  $8D3C  C8                         UCMPGT
  $8D3D  D8 50 8D                   JUMPF_abs              $8D50
  $8D40  0A                         LOADL_quick   ; inline operand = 10
  $8D41  8C E8 03                   LOADR_imm2             $03E8
  $8D44  B8                         UDIV
  $8D45  90 96 00                   ADD_imm2               $0096
  $8D48  29                         STORE_quick   ; inline operand = 9
  $8D49  61                         PUSH_qimm   ; inline operand = 1
  $8D4A  8E 18 99                   PUSH_imm2              $9918
  $8D4D  D6 5C 8D                   JUMP_abs               $8D5C
 >$8D50  0A                         LOADL_quick   ; inline operand = 10
  $8D51  8C E8 03                   LOADR_imm2             $03E8
  $8D54  B8                         UDIV
  $8D55  8F 32                      BYTE_ADD_imm1          +50
  $8D57  29                         STORE_quick   ; inline operand = 9
  $8D58  61                         PUSH_qimm   ; inline operand = 1
  $8D59  8E 37 99                   PUSH_imm2              $9937
 >$8D5C  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8D60  61                         PUSH_qimm   ; inline operand = 1
  $8D61  E9 9B CE 02                CALL_abs_imm1          $CE9B {native}, $02
  $8D65  A5 67 70                   BYTE_LOADL_abs         $7067
  $8D68  5E                         LOADR_qimm   ; inline operand = 14
  $8D69  B5                         MULT
  $8D6A  8C BA 67                   LOADR_imm2             $67BA
  $8D6D  BB                         ADD
  $8D6E  D3                         BYTE_DEREF
  $8D6F  25                         STORE_quick   ; inline operand = 5
  $8D70  05                         LOADL_quick   ; inline operand = 5
  $8D71  8B 31                      BYTE_LOADR_imm1        +49
  $8D73  C8                         UCMPGT
  $8D74  D8 7B 8D                   JUMPF_abs              $8D7B
  $8D77  05                         LOADL_quick   ; inline operand = 5
  $8D78  D6 7F 8D                   JUMP_abs               $8D7F
 >$8D7B  89 64                      BYTE_LOADL_imm1        +100
  $8D7D  15                         LOADR_quick   ; inline operand = 5
  $8D7E  BC                         SUB
 >$8D7F  57                         LOADR_qimm   ; inline operand = 7
  $8D80  B8                         UDIV
  $8D81  B3                         PUSHL
  $8D82  09                         LOADL_quick   ; inline operand = 9
  $8D83  D0                         INC
  $8D84  B4                         POPR
  $8D85  B8                         UDIV
  $8D86  B3                         PUSHL
  $8D87  62                         PUSH_qimm   ; inline operand = 2
  $8D88  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8D8C  B4                         POPR
  $8D8D  BB                         ADD
  $8D8E  28                         STORE_quick   ; inline operand = 8
  $8D8F  A5 67 70                   BYTE_LOADL_abs         $7067
  $8D92  8C 76 6F                   LOADR_imm2             $6F76
  $8D95  BB                         ADD
  $8D96  D3                         BYTE_DEREF
  $8D97  53                         LOADR_qimm   ; inline operand = 3
  $8D98  DA                         AND
  $8D99  27                         STORE_quick   ; inline operand = 7
  $8D9A  38                         PUSH_quick   ; inline operand = 8
  $8D9B  60                         PUSH_qimm   ; inline operand = 0
  $8D9C  A5 67 70                   BYTE_LOADL_abs         $7067
  $8D9F  B3                         PUSHL
  $8DA0  E9 D8 D7 06                CALL_abs_imm1          $D7D8 {native}, $06
  $8DA4  A5 67 70                   BYTE_LOADL_abs         $7067
  $8DA7  8C 76 6F                   LOADR_imm2             $6F76
  $8DAA  BB                         ADD
  $8DAB  D3                         BYTE_DEREF
  $8DAC  53                         LOADR_qimm   ; inline operand = 3
  $8DAD  DA                         AND
  $8DAE  26                         STORE_quick   ; inline operand = 6
  $8DAF  07                         LOADL_quick   ; inline operand = 7
  $8DB0  16                         LOADR_quick   ; inline operand = 6
  $8DB1  C1                         CMPNE
  $8DB2  D8 DE 8D                   JUMPF_abs              $8DDE
  $8DB5  06                         LOADL_quick   ; inline operand = 6
  $8DB6  D7 CF 8D                   JUMPT_abs              $8DCF
  $8DB9  07                         LOADL_quick   ; inline operand = 7
  $8DBA  52                         LOADR_qimm   ; inline operand = 2
  $8DBB  C0                         CMPEQ
  $8DBC  D7 C5 8D                   JUMPT_abs              $8DC5
  $8DBF  07                         LOADL_quick   ; inline operand = 7
  $8DC0  53                         LOADR_qimm   ; inline operand = 3
  $8DC1  C0                         CMPEQ
  $8DC2  D8 CF 8D                   JUMPF_abs              $8DCF
 >$8DC5  07                         LOADL_quick   ; inline operand = 7
  $8DC6  D1                         DEC
  $8DC7  B3                         PUSHL
  $8DC8  E9 F6 8B 02                CALL_abs_imm1          $8BF6 {bytecode}, $02
  $8DCC  D6 DE 8D                   JUMP_abs               $8DDE
 >$8DCF  07                         LOADL_quick   ; inline operand = 7
  $8DD0  51                         LOADR_qimm   ; inline operand = 1
  $8DD1  C1                         CMPNE
  $8DD2  D8 DE 8D                   JUMPF_abs              $8DDE
  $8DD5  06                         LOADL_quick   ; inline operand = 6
  $8DD6  51                         LOADR_qimm   ; inline operand = 1
  $8DD7  C0                         CMPEQ
  $8DD8  D8 DE 8D                   JUMPF_abs              $8DDE
  $8DDB  AC B9 8B                   CALL_abs               $8BB9 {bytecode}
 >$8DDE  41                         LOADL_qimm   ; inline operand = 1
  $8DDF  CF                         RETURN

; ============================================================
; sub $8DE0   (frame_off=-16, body @ $8DE5)   [PRG $2ADE0]
; ============================================================
  $8DE5  A0 0B 00                   BYTE_LOADL_far         $000B
  $8DE8  57                         LOADR_qimm   ; inline operand = 7
  $8DE9  B5                         MULT
  $8DEA  8C 96 6C                   LOADR_imm2             $6C96
  $8DED  BB                         ADD
  $8DEE  D3                         BYTE_DEREF
  $8DEF  5F                         LOADR_qimm   ; inline operand = 15
  $8DF0  DA                         AND
  $8DF1  B3                         PUSHL
  $8DF2  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8DF6  8F 14                      BYTE_ADD_imm1          +20
  $8DF8  B3                         PUSHL
  $8DF9  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8DFD  55                         LOADR_qimm   ; inline operand = 5
  $8DFE  BE                         URSHIFT
  $8DFF  57                         LOADR_qimm   ; inline operand = 7
  $8E00  DA                         AND
  $8E01  27                         STORE_quick   ; inline operand = 7
  $8E02  A0 0B 00                   BYTE_LOADL_far         $000B
  $8E05  57                         LOADR_qimm   ; inline operand = 7
  $8E06  B5                         MULT
  $8E07  8C 96 6C                   LOADR_imm2             $6C96
  $8E0A  BB                         ADD
  $8E0B  D3                         BYTE_DEREF
  $8E0C  5F                         LOADR_qimm   ; inline operand = 15
  $8E0D  DA                         AND
  $8E0E  B3                         PUSHL
  $8E0F  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8E13  8F 14                      BYTE_ADD_imm1          +20
  $8E15  B3                         PUSHL
  $8E16  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8E1A  53                         LOADR_qimm   ; inline operand = 3
  $8E1B  DA                         AND
  $8E1C  26                         STORE_quick   ; inline operand = 6
  $8E1D  A0 0B 00                   BYTE_LOADL_far         $000B
  $8E20  57                         LOADR_qimm   ; inline operand = 7
  $8E21  B5                         MULT
  $8E22  8C 96 6C                   LOADR_imm2             $6C96
  $8E25  BB                         ADD
  $8E26  D3                         BYTE_DEREF
  $8E27  5F                         LOADR_qimm   ; inline operand = 15
  $8E28  DA                         AND
  $8E29  B3                         PUSHL
  $8E2A  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8E2E  8F 14                      BYTE_ADD_imm1          +20
  $8E30  B3                         PUSHL
  $8E31  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8E35  52                         LOADR_qimm   ; inline operand = 2
  $8E36  BE                         URSHIFT
  $8E37  53                         LOADR_qimm   ; inline operand = 3
  $8E38  DA                         AND
  $8E39  25                         STORE_quick   ; inline operand = 5
  $8E3A  A0 0B 00                   BYTE_LOADL_far         $000B
  $8E3D  57                         LOADR_qimm   ; inline operand = 7
  $8E3E  B5                         MULT
  $8E3F  8C 96 6C                   LOADR_imm2             $6C96
  $8E42  BB                         ADD
  $8E43  D3                         BYTE_DEREF
  $8E44  5F                         LOADR_qimm   ; inline operand = 15
  $8E45  DA                         AND
  $8E46  B3                         PUSHL
  $8E47  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8E4B  8F 14                      BYTE_ADD_imm1          +20
  $8E4D  B3                         PUSHL
  $8E4E  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8E52  54                         LOADR_qimm   ; inline operand = 4
  $8E53  BE                         URSHIFT
  $8E54  51                         LOADR_qimm   ; inline operand = 1
  $8E55  DA                         AND
  $8E56  24                         STORE_quick   ; inline operand = 4
  $8E57  A0 0B 00                   BYTE_LOADL_far         $000B
  $8E5A  57                         LOADR_qimm   ; inline operand = 7
  $8E5B  B5                         MULT
  $8E5C  8C 90 6C                   LOADR_imm2             $6C90
  $8E5F  BB                         ADD
  $8E60  28                         STORE_quick   ; inline operand = 8
  $8E61  04                         LOADL_quick   ; inline operand = 4
  $8E62  73                         ADD_qimm   ; inline operand = 3
  $8E63  B3                         PUSHL
  $8E64  4A                         LOADL_qimm   ; inline operand = 10
  $8E65  17                         LOADR_quick   ; inline operand = 7
  $8E66  BC                         SUB
  $8E67  B3                         PUSHL
  $8E68  05                         LOADL_quick   ; inline operand = 5
  $8E69  5A                         LOADR_qimm   ; inline operand = 10
  $8E6A  B5                         MULT
  $8E6B  8F 64                      BYTE_ADD_imm1          +100
  $8E6D  B4                         POPR
  $8E6E  B5                         MULT
  $8E6F  5A                         LOADR_qimm   ; inline operand = 10
  $8E70  B6                         SDIV
  $8E71  B4                         POPR
  $8E72  B5                         MULT
  $8E73  54                         LOADR_qimm   ; inline operand = 4
  $8E74  B6                         SDIV
  $8E75  29                         STORE_quick   ; inline operand = 9
  $8E76  8D 64                      BYTE_PUSH_imm1         +100
  $8E78  39                         PUSH_quick   ; inline operand = 9
  $8E79  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8E7D  29                         STORE_quick   ; inline operand = 9
  $8E7E  08                         LOADL_quick   ; inline operand = 8
  $8E7F  72                         ADD_qimm   ; inline operand = 2
  $8E80  D3                         BYTE_DEREF
  $8E81  B3                         PUSHL
  $8E82  09                         LOADL_quick   ; inline operand = 9
  $8E83  B4                         POPR
  $8E84  BC                         SUB
  $8E85  B3                         PUSHL
  $8E86  08                         LOADL_quick   ; inline operand = 8
  $8E87  D3                         BYTE_DEREF
  $8E88  B3                         PUSHL
  $8E89  06                         LOADL_quick   ; inline operand = 6
  $8E8A  5A                         LOADR_qimm   ; inline operand = 10
  $8E8B  B5                         MULT
  $8E8C  B3                         PUSHL
  $8E8D  07                         LOADL_quick   ; inline operand = 7
  $8E8E  5A                         LOADR_qimm   ; inline operand = 10
  $8E8F  B5                         MULT
  $8E90  B4                         POPR
  $8E91  BB                         ADD
  $8E92  8F 14                      BYTE_ADD_imm1          +20
  $8E94  B4                         POPR
  $8E95  BC                         SUB
  $8E96  B3                         PUSHL
  $8E97  08                         LOADL_quick   ; inline operand = 8
  $8E98  D0                         INC
  $8E99  D3                         BYTE_DEREF
  $8E9A  B3                         PUSHL
  $8E9B  44                         LOADL_qimm   ; inline operand = 4
  $8E9C  14                         LOADR_quick   ; inline operand = 4
  $8E9D  BC                         SUB
  $8E9E  B3                         PUSHL
  $8E9F  4A                         LOADL_qimm   ; inline operand = 10
  $8EA0  15                         LOADR_quick   ; inline operand = 5
  $8EA1  BC                         SUB
  $8EA2  B3                         PUSHL
  $8EA3  89 14                      BYTE_LOADL_imm1        +20
  $8EA5  17                         LOADR_quick   ; inline operand = 7
  $8EA6  BC                         SUB
  $8EA7  8B 64                      BYTE_LOADR_imm1        +100
  $8EA9  B5                         MULT
  $8EAA  8B 14                      BYTE_LOADR_imm1        +20
  $8EAC  B6                         SDIV
  $8EAD  B4                         POPR
  $8EAE  B5                         MULT
  $8EAF  5A                         LOADR_qimm   ; inline operand = 10
  $8EB0  B6                         SDIV
  $8EB1  B4                         POPR
  $8EB2  B5                         MULT
  $8EB3  54                         LOADR_qimm   ; inline operand = 4
  $8EB4  B6                         SDIV
  $8EB5  B4                         POPR
  $8EB6  BC                         SUB
  $8EB7  B4                         POPR
  $8EB8  BB                         ADD
  $8EB9  B4                         POPR
  $8EBA  BB                         ADD
  $8EBB  2A                         STORE_quick   ; inline operand = 10
  $8EBC  0A                         LOADL_quick   ; inline operand = 10
  $8EBD  D7 CC 8E                   JUMPT_abs              $8ECC
  $8EC0  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8EC3  8E 44 99                   PUSH_imm2              $9944
  $8EC6  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8ECA  40                         LOADL_qimm   ; inline operand = 0
  $8ECB  CF                         RETURN
 >$8ECC  A5 67 70                   BYTE_LOADL_abs         $7067
  $8ECF  5E                         LOADR_qimm   ; inline operand = 14
  $8ED0  B5                         MULT
  $8ED1  8C BD 67                   LOADR_imm2             $67BD
  $8ED4  BB                         ADD
  $8ED5  D3                         BYTE_DEREF
  $8ED6  7F                         ADD_qimm   ; inline operand = 15
  $8ED7  1A                         LOADR_quick   ; inline operand = 10
  $8ED8  B5                         MULT
  $8ED9  5A                         LOADR_qimm   ; inline operand = 10
  $8EDA  B8                         UDIV
  $8EDB  2B                         STORE_quick   ; inline operand = 11
  $8EDC  AC 01 B8                   CALL_abs               $B801 (draw_box_frame) {native}
  $8EDF  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8EE2  3B                         PUSH_quick   ; inline operand = 11
  $8EE3  8E 69 99                   PUSH_imm2              $9969
  $8EE6  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8EEA  AC 9F CD                   CALL_abs               $CD9F {native}
  $8EED  D8 07 8F                   JUMPF_abs              $8F07
  $8EF0  A4 6B 66                   LOADL_abs              $666B
  $8EF3  1B                         LOADR_quick   ; inline operand = 11
  $8EF4  C6                         UCMPLT
  $8EF5  D8 12 8F                   JUMPF_abs              $8F12
  $8EF8  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8EFB  61                         PUSH_qimm   ; inline operand = 1
  $8EFC  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $8F00  8E 97 99                   PUSH_imm2              $9997
  $8F03  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
 >$8F07  61                         PUSH_qimm   ; inline operand = 1
  $8F08  65                         PUSH_qimm   ; inline operand = 5
  $8F09  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8F0D  AC 01 B8                   CALL_abs               $B801 (draw_box_frame) {native}
  $8F10  40                         LOADL_qimm   ; inline operand = 0
  $8F11  CF                         RETURN
 >$8F12  0B                         LOADL_quick   ; inline operand = 11
  $8F13  CD                         SWAP
  $8F14  A4 6B 66                   LOADL_abs              $666B
  $8F17  BC                         SUB
  $8F18  A8 6B 66                   STORE_abs              $666B
  $8F1B  38                         PUSH_quick   ; inline operand = 8
  $8F1C  06                         LOADL_quick   ; inline operand = 6
  $8F1D  5A                         LOADR_qimm   ; inline operand = 10
  $8F1E  B5                         MULT
  $8F1F  B3                         PUSHL
  $8F20  07                         LOADL_quick   ; inline operand = 7
  $8F21  5A                         LOADR_qimm   ; inline operand = 10
  $8F22  B5                         MULT
  $8F23  B4                         POPR
  $8F24  BB                         ADD
  $8F25  8F 14                      BYTE_ADD_imm1          +20
  $8F27  D4                         BYTE_POPSTORE
  $8F28  08                         LOADL_quick   ; inline operand = 8
  $8F29  D0                         INC
  $8F2A  B3                         PUSHL
  $8F2B  44                         LOADL_qimm   ; inline operand = 4
  $8F2C  14                         LOADR_quick   ; inline operand = 4
  $8F2D  BC                         SUB
  $8F2E  B3                         PUSHL
  $8F2F  4A                         LOADL_qimm   ; inline operand = 10
  $8F30  15                         LOADR_quick   ; inline operand = 5
  $8F31  BC                         SUB
  $8F32  B3                         PUSHL
  $8F33  89 14                      BYTE_LOADL_imm1        +20
  $8F35  17                         LOADR_quick   ; inline operand = 7
  $8F36  BC                         SUB
  $8F37  8B 64                      BYTE_LOADR_imm1        +100
  $8F39  B5                         MULT
  $8F3A  8B 14                      BYTE_LOADR_imm1        +20
  $8F3C  B6                         SDIV
  $8F3D  B4                         POPR
  $8F3E  B5                         MULT
  $8F3F  5A                         LOADR_qimm   ; inline operand = 10
  $8F40  B6                         SDIV
  $8F41  B4                         POPR
  $8F42  B5                         MULT
  $8F43  54                         LOADR_qimm   ; inline operand = 4
  $8F44  B6                         SDIV
  $8F45  D4                         BYTE_POPSTORE
  $8F46  08                         LOADL_quick   ; inline operand = 8
  $8F47  72                         ADD_qimm   ; inline operand = 2
  $8F48  B3                         PUSHL
  $8F49  04                         LOADL_quick   ; inline operand = 4
  $8F4A  73                         ADD_qimm   ; inline operand = 3
  $8F4B  B3                         PUSHL
  $8F4C  4A                         LOADL_qimm   ; inline operand = 10
  $8F4D  17                         LOADR_quick   ; inline operand = 7
  $8F4E  BC                         SUB
  $8F4F  B3                         PUSHL
  $8F50  05                         LOADL_quick   ; inline operand = 5
  $8F51  5A                         LOADR_qimm   ; inline operand = 10
  $8F52  B5                         MULT
  $8F53  8F 64                      BYTE_ADD_imm1          +100
  $8F55  B4                         POPR
  $8F56  B5                         MULT
  $8F57  5A                         LOADR_qimm   ; inline operand = 10
  $8F58  B6                         SDIV
  $8F59  B4                         POPR
  $8F5A  B5                         MULT
  $8F5B  54                         LOADR_qimm   ; inline operand = 4
  $8F5C  B6                         SDIV
  $8F5D  D4                         BYTE_POPSTORE
  $8F5E  08                         LOADL_quick   ; inline operand = 8
  $8F5F  72                         ADD_qimm   ; inline operand = 2
  $8F60  D3                         BYTE_DEREF
  $8F61  29                         STORE_quick   ; inline operand = 9
  $8F62  09                         LOADL_quick   ; inline operand = 9
  $8F63  8B 64                      BYTE_LOADR_imm1        +100
  $8F65  C4                         SCMPGT
  $8F66  D8 6F 8F                   JUMPF_abs              $8F6F
  $8F69  08                         LOADL_quick   ; inline operand = 8
  $8F6A  72                         ADD_qimm   ; inline operand = 2
  $8F6B  B3                         PUSHL
  $8F6C  89 64                      BYTE_LOADL_imm1        +100
  $8F6E  D4                         BYTE_POPSTORE
 >$8F6F  41                         LOADL_qimm   ; inline operand = 1
  $8F70  CF                         RETURN

; ============================================================
; sub $8F71   (frame_off=-10, body @ $8F76)   [PRG $2AF71]
; ============================================================
  $8F76  40                         LOADL_qimm   ; inline operand = 0
  $8F77  27                         STORE_quick   ; inline operand = 7
  $8F78  60                         PUSH_qimm   ; inline operand = 0
  $8F79  8D 12                      BYTE_PUSH_imm1         +18
  $8F7B  8D 1C                      BYTE_PUSH_imm1         +28
  $8F7D  62                         PUSH_qimm   ; inline operand = 2
  $8F7E  62                         PUSH_qimm   ; inline operand = 2
  $8F7F  E9 05 A4 0A                CALL_abs_imm1          $A405 {native}, $0A
  $8F83  DE FA FF                   LEAL_far               $FFFA
  $8F86  B3                         PUSHL
  $8F87  E9 6F 80 02                CALL_abs_imm1          $806F {bytecode}, $02
  $8F8B  A2 F8 FF                   BYTE_STORE_far         $FFF8
  $8F8E  8A F0 00                   LOADL_imm2             $00F0
  $8F91  A9 63 70                   BYTE_STORE_abs         $7063
 >$8F94  AC 01 B8                   CALL_abs               $B801 (draw_box_frame) {native}
  $8F97  61                         PUSH_qimm   ; inline operand = 1
  $8F98  65                         PUSH_qimm   ; inline operand = 5
  $8F99  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8F9D  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8FA0  61                         PUSH_qimm   ; inline operand = 1
  $8FA1  8E B2 99                   PUSH_imm2              $99B2
  $8FA4  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8FA8  A0 F8 FF                   BYTE_LOADL_far         $FFF8
  $8FAB  B3                         PUSHL
  $8FAC  E9 98 B8 02                CALL_abs_imm1          $B898 {native}, $02
  $8FB0  A2 F9 FF                   BYTE_STORE_far         $FFF9
  $8FB3  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $8FB6  8C FF 00                   LOADR_imm2             $00FF
  $8FB9  C1                         CMPNE
  $8FBA  D8 D0 8F                   JUMPF_abs              $8FD0
  $8FBD  DE FA FF                   LEAL_far               $FFFA
  $8FC0  B3                         PUSHL
  $8FC1  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $8FC4  B4                         POPR
  $8FC5  BB                         ADD
  $8FC6  D3                         BYTE_DEREF
  $8FC7  B3                         PUSHL
  $8FC8  E9 E0 8D 02                CALL_abs_imm1          $8DE0 {bytecode}, $02
  $8FCC  CD                         SWAP
  $8FCD  07                         LOADL_quick   ; inline operand = 7
  $8FCE  DB                         OR
  $8FCF  27                         STORE_quick   ; inline operand = 7
 >$8FD0  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $8FD3  8C FF 00                   LOADR_imm2             $00FF
  $8FD6  C1                         CMPNE
  $8FD7  D7 94 8F                   JUMPT_abs              $8F94
  $8FDA  AC 01 B8                   CALL_abs               $B801 (draw_box_frame) {native}
  $8FDD  AC CE B7                   CALL_abs               $B7CE {native}
  $8FE0  8E 03 80                   PUSH_imm2              $8003
  $8FE3  8E DE 00                   PUSH_imm2              $00DE
  $8FE6  61                         PUSH_qimm   ; inline operand = 1
  $8FE7  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $8FEB  60                         PUSH_qimm   ; inline operand = 0
  $8FEC  8D 12                      BYTE_PUSH_imm1         +18
  $8FEE  8D 1C                      BYTE_PUSH_imm1         +28
  $8FF0  62                         PUSH_qimm   ; inline operand = 2
  $8FF1  62                         PUSH_qimm   ; inline operand = 2
  $8FF2  E9 9B A4 0A                CALL_abs_imm1          $A49B {native}, $0A
  $8FF6  07                         LOADL_quick   ; inline operand = 7
  $8FF7  CF                         RETURN

; ============================================================
; sub $8FF8   (frame_off=-20, body @ $8FFD)   [PRG $2AFF8]
; ============================================================
  $8FFD  DE F9 FF                   LEAL_far               $FFF9
  $9000  B3                         PUSHL
  $9001  60                         PUSH_qimm   ; inline operand = 0
  $9002  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $9006  22                         STORE_quick   ; inline operand = 2
  $9007  02                         LOADL_quick   ; inline operand = 2
  $9008  51                         LOADR_qimm   ; inline operand = 1
  $9009  C0                         CMPEQ
  $900A  D8 1C 90                   JUMPF_abs              $901C
  $900D  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $9010  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $9013  8E C4 99                   PUSH_imm2              $99C4
  $9016  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $901A  40                         LOADL_qimm   ; inline operand = 0
  $901B  CF                         RETURN
 >$901C  40                         LOADL_qimm   ; inline operand = 0
  $901D  23                         STORE_quick   ; inline operand = 3
  $901E  8A F0 00                   LOADL_imm2             $00F0
  $9021  A9 63 70                   BYTE_STORE_abs         $7063
  $9024  60                         PUSH_qimm   ; inline operand = 0
  $9025  8D 12                      BYTE_PUSH_imm1         +18
  $9027  8D 1C                      BYTE_PUSH_imm1         +28
  $9029  62                         PUSH_qimm   ; inline operand = 2
  $902A  62                         PUSH_qimm   ; inline operand = 2
  $902B  E9 05 A4 0A                CALL_abs_imm1          $A405 {native}, $0A
  $902F  DE F9 FF                   LEAL_far               $FFF9
  $9032  B3                         PUSHL
  $9033  E9 6F 80 02                CALL_abs_imm1          $806F {bytecode}, $02
  $9037  22                         STORE_quick   ; inline operand = 2
 >$9038  61                         PUSH_qimm   ; inline operand = 1
  $9039  65                         PUSH_qimm   ; inline operand = 5
  $903A  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $903E  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $9041  61                         PUSH_qimm   ; inline operand = 1
  $9042  8E D9 99                   PUSH_imm2              $99D9
  $9045  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $9049  32                         PUSH_quick   ; inline operand = 2
  $904A  E9 98 B8 02                CALL_abs_imm1          $B898 {native}, $02
  $904E  A2 FE FF                   BYTE_STORE_far         $FFFE
  $9051  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $9054  8C FF 00                   LOADR_imm2             $00FF
  $9057  C0                         CMPEQ
  $9058  D8 82 90                   JUMPF_abs              $9082
  $905B  62                         PUSH_qimm   ; inline operand = 2
  $905C  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $9060  8E EC 99                   PUSH_imm2              $99EC
  $9063  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $9067  AC CE B7                   CALL_abs               $B7CE {native}
  $906A  8E 03 80                   PUSH_imm2              $8003
  $906D  8E DE 00                   PUSH_imm2              $00DE
  $9070  61                         PUSH_qimm   ; inline operand = 1
  $9071  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $9075  60                         PUSH_qimm   ; inline operand = 0
  $9076  8D 12                      BYTE_PUSH_imm1         +18
  $9078  8D 1C                      BYTE_PUSH_imm1         +28
  $907A  62                         PUSH_qimm   ; inline operand = 2
  $907B  62                         PUSH_qimm   ; inline operand = 2
  $907C  E9 9B A4 0A                CALL_abs_imm1          $A49B {native}, $0A
  $9080  40                         LOADL_qimm   ; inline operand = 0
  $9081  CF                         RETURN
 >$9082  DE F9 FF                   LEAL_far               $FFF9
  $9085  B3                         PUSHL
  $9086  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $9089  B4                         POPR
  $908A  BB                         ADD
  $908B  D3                         BYTE_DEREF
  $908C  A2 FF FF                   BYTE_STORE_far         $FFFF
  $908F  AC 01 B8                   CALL_abs               $B801 (draw_box_frame) {native}
  $9092  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $9095  8B 18                      BYTE_LOADR_imm1        +24
  $9097  B5                         MULT
  $9098  8C A4 6A                   LOADR_imm2             $6AA4
  $909B  BB                         ADD
  $909C  D3                         BYTE_DEREF
  $909D  D7 C0 90                   JUMPT_abs              $90C0
  $90A0  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $90A3  61                         PUSH_qimm   ; inline operand = 1
  $90A4  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $90A8  8E 02 9A                   PUSH_imm2              $9A02
  $90AB  D6 B9 90                   JUMP_abs               $90B9
 >$90AE  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $90B1  61                         PUSH_qimm   ; inline operand = 1
  $90B2  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $90B6  8E 1F 9A                   PUSH_imm2              $9A1F
 >$90B9  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $90BD  D6 39 92                   JUMP_abs               $9239
 >$90C0  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $90C3  57                         LOADR_qimm   ; inline operand = 7
  $90C4  B5                         MULT
  $90C5  8C 94 6C                   LOADR_imm2             $6C94
  $90C8  BB                         ADD
  $90C9  B0                         DEREF
  $90CA  D7 AE 90                   JUMPT_abs              $90AE
  $90CD  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $90D0  8B 18                      BYTE_LOADR_imm1        +24
  $90D2  B5                         MULT
  $90D3  8C AA 6A                   LOADR_imm2             $6AAA
  $90D6  BB                         ADD
  $90D7  27                         STORE_quick   ; inline operand = 7
  $90D8  07                         LOADL_quick   ; inline operand = 7
  $90D9  B0                         DEREF
  $90DA  B3                         PUSHL
  $90DB  07                         LOADL_quick   ; inline operand = 7
  $90DC  78                         ADD_qimm   ; inline operand = 8
  $90DD  B0                         DEREF
  $90DE  B3                         PUSHL
  $90DF  07                         LOADL_quick   ; inline operand = 7
  $90E0  76                         ADD_qimm   ; inline operand = 6
  $90E1  B0                         DEREF
  $90E2  B3                         PUSHL
  $90E3  07                         LOADL_quick   ; inline operand = 7
  $90E4  74                         ADD_qimm   ; inline operand = 4
  $90E5  B0                         DEREF
  $90E6  B3                         PUSHL
  $90E7  07                         LOADL_quick   ; inline operand = 7
  $90E8  72                         ADD_qimm   ; inline operand = 2
  $90E9  B0                         DEREF
  $90EA  B4                         POPR
  $90EB  BB                         ADD
  $90EC  B4                         POPR
  $90ED  BB                         ADD
  $90EE  B4                         POPR
  $90EF  BB                         ADD
  $90F0  B4                         POPR
  $90F1  BB                         ADD
  $90F2  D8 09 91                   JUMPF_abs              $9109
  $90F5  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $90F8  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $90FB  61                         PUSH_qimm   ; inline operand = 1
  $90FC  8E 45 9A                   PUSH_imm2              $9A45
  $90FF  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $9103  AC 9F CD                   CALL_abs               $CD9F {native}
  $9106  D8 39 92                   JUMPF_abs              $9239
 >$9109  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $910C  B3                         PUSHL
  $910D  E9 93 81 02                CALL_abs_imm1          $8193 {bytecode}, $02
  $9111  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $9114  57                         LOADR_qimm   ; inline operand = 7
  $9115  B5                         MULT
  $9116  8C 96 6C                   LOADR_imm2             $6C96
  $9119  BB                         ADD
  $911A  D3                         BYTE_DEREF
  $911B  5F                         LOADR_qimm   ; inline operand = 15
  $911C  DA                         AND
  $911D  B3                         PUSHL
  $911E  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $9122  8F 14                      BYTE_ADD_imm1          +20
  $9124  B3                         PUSHL
  $9125  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $9129  55                         LOADR_qimm   ; inline operand = 5
  $912A  BE                         URSHIFT
  $912B  57                         LOADR_qimm   ; inline operand = 7
  $912C  DA                         AND
  $912D  A2 F8 FF                   BYTE_STORE_far         $FFF8
  $9130  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $9133  57                         LOADR_qimm   ; inline operand = 7
  $9134  B5                         MULT
  $9135  8C 96 6C                   LOADR_imm2             $6C96
  $9138  BB                         ADD
  $9139  D3                         BYTE_DEREF
  $913A  5F                         LOADR_qimm   ; inline operand = 15
  $913B  DA                         AND
  $913C  B3                         PUSHL
  $913D  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $9141  8F 14                      BYTE_ADD_imm1          +20
  $9143  B3                         PUSHL
  $9144  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $9148  53                         LOADR_qimm   ; inline operand = 3
  $9149  DA                         AND
  $914A  72                         ADD_qimm   ; inline operand = 2
  $914B  B3                         PUSHL
  $914C  A0 F8 FF                   BYTE_LOADL_far         $FFF8
  $914F  57                         LOADR_qimm   ; inline operand = 7
  $9150  B5                         MULT
  $9151  51                         LOADR_qimm   ; inline operand = 1
  $9152  BE                         URSHIFT
  $9153  D0                         INC
  $9154  B4                         POPR
  $9155  B5                         MULT
  $9156  51                         LOADR_qimm   ; inline operand = 1
  $9157  BE                         URSHIFT
  $9158  53                         LOADR_qimm   ; inline operand = 3
  $9159  B5                         MULT
  $915A  25                         STORE_quick   ; inline operand = 5
  $915B  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $915E  57                         LOADR_qimm   ; inline operand = 7
  $915F  B5                         MULT
  $9160  8C 96 6C                   LOADR_imm2             $6C96
  $9163  BB                         ADD
  $9164  D3                         BYTE_DEREF
  $9165  5F                         LOADR_qimm   ; inline operand = 15
  $9166  DA                         AND
  $9167  B3                         PUSHL
  $9168  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $916C  8F 14                      BYTE_ADD_imm1          +20
  $916E  B3                         PUSHL
  $916F  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $9173  52                         LOADR_qimm   ; inline operand = 2
  $9174  BE                         URSHIFT
  $9175  53                         LOADR_qimm   ; inline operand = 3
  $9176  DA                         AND
  $9177  D0                         INC
  $9178  B3                         PUSHL
  $9179  A0 F8 FF                   BYTE_LOADL_far         $FFF8
  $917C  51                         LOADR_qimm   ; inline operand = 1
  $917D  BE                         URSHIFT
  $917E  56                         LOADR_qimm   ; inline operand = 6
  $917F  B5                         MULT
  $9180  D0                         INC
  $9181  B4                         POPR
  $9182  B5                         MULT
  $9183  24                         STORE_quick   ; inline operand = 4
  $9184  05                         LOADL_quick   ; inline operand = 5
  $9185  14                         LOADR_quick   ; inline operand = 4
  $9186  BB                         ADD
  $9187  B3                         PUSHL
  $9188  A5 67 70                   BYTE_LOADL_abs         $7067
  $918B  5E                         LOADR_qimm   ; inline operand = 14
  $918C  B5                         MULT
  $918D  8C BD 67                   LOADR_imm2             $67BD
  $9190  BB                         ADD
  $9191  D3                         BYTE_DEREF
  $9192  8F 32                      BYTE_ADD_imm1          +50
  $9194  B4                         POPR
  $9195  B5                         MULT
  $9196  26                         STORE_quick   ; inline operand = 6
  $9197  61                         PUSH_qimm   ; inline operand = 1
  $9198  65                         PUSH_qimm   ; inline operand = 5
  $9199  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $919D  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $91A0  61                         PUSH_qimm   ; inline operand = 1
  $91A1  8E 77 9A                   PUSH_imm2              $9A77
  $91A4  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $91A8  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $91AB  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $91AE  36                         PUSH_quick   ; inline operand = 6
  $91AF  8E 9A 9A                   PUSH_imm2              $9A9A
  $91B2  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $91B6  AC 9F CD                   CALL_abs               $CD9F {native}
  $91B9  D8 C0 91                   JUMPF_abs              $91C0
  $91BC  41                         LOADL_qimm   ; inline operand = 1
  $91BD  D6 E6 91                   JUMP_abs               $91E6
 >$91C0  A5 74 6F                   BYTE_LOADL_abs         $6F74
  $91C3  D0                         INC
  $91C4  B3                         PUSHL
  $91C5  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $91C9  D7 E7 91                   JUMPT_abs              $91E7
  $91CC  06                         LOADL_quick   ; inline operand = 6
  $91CD  5A                         LOADR_qimm   ; inline operand = 10
  $91CE  B6                         SDIV
  $91CF  CD                         SWAP
  $91D0  06                         LOADL_quick   ; inline operand = 6
  $91D1  BB                         ADD
  $91D2  26                         STORE_quick   ; inline operand = 6
  $91D3  AC 01 B8                   CALL_abs               $B801 (draw_box_frame) {native}
  $91D6  61                         PUSH_qimm   ; inline operand = 1
  $91D7  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $91DB  36                         PUSH_quick   ; inline operand = 6
  $91DC  8E B7 9A                   PUSH_imm2              $9AB7
  $91DF  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $91E3  AC 9F CD                   CALL_abs               $CD9F {native}
 >$91E6  23                         STORE_quick   ; inline operand = 3
 >$91E7  03                         LOADL_quick   ; inline operand = 3
  $91E8  D8 2D 92                   JUMPF_abs              $922D
  $91EB  06                         LOADL_quick   ; inline operand = 6
  $91EC  B7 25                      LONG                   $25
  $91EE  B7 14                      LONG                   $14
  $91F0  A4 6B 66                   LOADL_abs              $666B
  $91F3  B7 26                      LONG                   $26
  $91F5  B7 15                      LONG                   $15
  $91F7  B7 03                      LONG                   $03
  $91F9  B7 19 60 EA 00 00          LONG                   $19 $60 $EA $00 $00
  $91FF  B7 0A                      LONG                   $0A
  $9201  D8 0A 92                   JUMPF_abs              $920A
  $9204  8A 60 EA                   LOADL_imm2             $EA60
  $9207  D6 10 92                   JUMP_abs               $9210
 >$920A  06                         LOADL_quick   ; inline operand = 6
  $920B  CD                         SWAP
  $920C  A4 6B 66                   LOADL_abs              $666B
  $920F  BB                         ADD
 >$9210  A8 6B 66                   STORE_abs              $666B
  $9213  8E BF 00                   PUSH_imm2              $00BF
  $9216  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $9219  57                         LOADR_qimm   ; inline operand = 7
  $921A  B5                         MULT
  $921B  8C 96 6C                   LOADR_imm2             $6C96
  $921E  BB                         ADD
  $921F  B4                         POPR
  $9220  B3                         PUSHL
  $9221  D3                         BYTE_DEREF
  $9222  DA                         AND
  $9223  D4                         BYTE_POPSTORE
  $9224  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $9227  8E DD 9A                   PUSH_imm2              $9ADD
  $922A  D6 B9 90                   JUMP_abs               $90B9
 >$922D  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $9230  8E FC 9A                   PUSH_imm2              $9AFC
  $9233  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $9237  41                         LOADL_qimm   ; inline operand = 1
  $9238  23                         STORE_quick   ; inline operand = 3
 >$9239  03                         LOADL_quick   ; inline operand = 3
  $923A  D8 38 90                   JUMPF_abs              $9038
  $923D  AC CE B7                   CALL_abs               $B7CE {native}
  $9240  8E 03 80                   PUSH_imm2              $8003
  $9243  8E DE 00                   PUSH_imm2              $00DE
  $9246  61                         PUSH_qimm   ; inline operand = 1
  $9247  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $924B  60                         PUSH_qimm   ; inline operand = 0
  $924C  8D 12                      BYTE_PUSH_imm1         +18
  $924E  8D 1C                      BYTE_PUSH_imm1         +28
  $9250  62                         PUSH_qimm   ; inline operand = 2
  $9251  62                         PUSH_qimm   ; inline operand = 2
  $9252  E9 9B A4 0A                CALL_abs_imm1          $A49B {native}, $0A
  $9256  03                         LOADL_quick   ; inline operand = 3
  $9257  CF                         RETURN

