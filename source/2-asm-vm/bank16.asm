VM bytecode disassembly
  ROM:          Uncharted Waters (USA).nes
  mode:         bulk dump of bank 16
  opcode spec:  vm-opcodes-v2.toml via nobunaga_vm.OPCODE_INFO (execution-validated lengths)
  labels:       0 CPU addresses named

  bank 16: found 42 bytecode-subroutine stubs

; ============================================================
; sub $8003   (frame_off=+0, body @ $8008)   [PRG $20003]
; ============================================================
  $8008  8E 14 87                   PUSH_imm2              $8714
  $800B  8E D1 00                   PUSH_imm2              $00D1
  $800E  61                         PUSH_qimm   ; inline operand = 1
  $800F  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $8013  CF                         RETURN

; ============================================================
; sub $8014   (frame_off=+0, body @ $8019)   [PRG $20014]
; ============================================================
  $8019  8E F6 96                   PUSH_imm2              $96F6
  $801C  8E D1 00                   PUSH_imm2              $00D1
  $801F  61                         PUSH_qimm   ; inline operand = 1
  $8020  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $8024  CF                         RETURN

; ============================================================
; sub $8025   (frame_off=+0, body @ $802A)   [PRG $20025]
; ============================================================
  $802A  8E CE 8A                   PUSH_imm2              $8ACE
  $802D  8E DE 00                   PUSH_imm2              $00DE
  $8030  61                         PUSH_qimm   ; inline operand = 1
  $8031  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $8035  CF                         RETURN

; ============================================================
; sub $8036   (frame_off=-20, body @ $803B)   [PRG $20036]
; ============================================================
  $803B  8A E8 00                   LOADL_imm2             $00E8
  $803E  2B                         STORE_quick   ; inline operand = 11
  $803F  0C                         LOADL_quick   ; inline operand = 12
  $8040  D2                         LSHIFT1
  $8041  72                         ADD_qimm   ; inline operand = 2
  $8042  53                         LOADR_qimm   ; inline operand = 3
  $8043  BD                         LSHIFT
  $8044  2C                         STORE_quick   ; inline operand = 12
  $8045  0D                         LOADL_quick   ; inline operand = 13
  $8046  D2                         LSHIFT1
  $8047  D0                         INC
  $8048  53                         LOADR_qimm   ; inline operand = 3
  $8049  BD                         LSHIFT
  $804A  B3                         PUSHL
  $804B  A5 7D 73                   BYTE_LOADL_abs         $737D (ui_shared_var_737d)
  $804E  D2                         LSHIFT1
  $804F  8C 14 DF                   LOADR_imm2             $DF14
  $8052  BB                         ADD
  $8053  B0                         DEREF
  $8054  B4                         POPR
  $8055  BB                         ADD
  $8056  2D                         STORE_quick   ; inline operand = 13
  $8057  0D                         LOADL_quick   ; inline operand = 13
  $8058  A2 F0 FF                   BYTE_STORE_far         $FFF0
  $805B  A2 EC FF                   BYTE_STORE_far         $FFEC
  $805E  0D                         LOADL_quick   ; inline operand = 13
  $805F  78                         ADD_qimm   ; inline operand = 8
  $8060  A2 F8 FF                   BYTE_STORE_far         $FFF8
  $8063  A2 F4 FF                   BYTE_STORE_far         $FFF4
  $8066  0C                         LOADL_quick   ; inline operand = 12
  $8067  A2 F7 FF                   BYTE_STORE_far         $FFF7
  $806A  A2 EF FF                   BYTE_STORE_far         $FFEF
  $806D  0C                         LOADL_quick   ; inline operand = 12
  $806E  78                         ADD_qimm   ; inline operand = 8
  $806F  A2 FB FF                   BYTE_STORE_far         $FFFB
  $8072  A2 F3 FF                   BYTE_STORE_far         $FFF3
  $8075  40                         LOADL_qimm   ; inline operand = 0
  $8076  A2 FA FF                   BYTE_STORE_far         $FFFA
  $8079  A2 F6 FF                   BYTE_STORE_far         $FFF6
  $807C  A2 F2 FF                   BYTE_STORE_far         $FFF2
  $807F  A2 EE FF                   BYTE_STORE_far         $FFEE
  $8082  40                         LOADL_qimm   ; inline operand = 0
  $8083  2A                         STORE_quick   ; inline operand = 10
 >$8084  DE ED FF                   LEAL_far               $FFED
  $8087  B3                         PUSHL
  $8088  0A                         LOADL_quick   ; inline operand = 10
  $8089  D2                         LSHIFT1
  $808A  D2                         LSHIFT1
  $808B  B4                         POPR
  $808C  BB                         ADD
  $808D  B3                         PUSHL
  $808E  0B                         LOADL_quick   ; inline operand = 11
  $808F  D4                         BYTE_POPSTORE
  $8090  0A                         LOADL_quick   ; inline operand = 10
  $8091  D0                         INC
  $8092  2A                         STORE_quick   ; inline operand = 10
  $8093  0B                         LOADL_quick   ; inline operand = 11
  $8094  D0                         INC
  $8095  2B                         STORE_quick   ; inline operand = 11
  $8096  0A                         LOADL_quick   ; inline operand = 10
  $8097  54                         LOADR_qimm   ; inline operand = 4
  $8098  C6                         UCMPLT
  $8099  D7 84 80                   JUMPT_abs              $8084
  $809C  64                         PUSH_qimm   ; inline operand = 4
  $809D  61                         PUSH_qimm   ; inline operand = 1
  $809E  DE EC FF                   LEAL_far               $FFEC
  $80A1  B3                         PUSHL
  $80A2  6D                         PUSH_qimm   ; inline operand = 13
  $80A3  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $80A7  CF                         RETURN

; ============================================================
; sub $80A8   (frame_off=+0, body @ $80AD)   [PRG $200A8]
; ============================================================
  $80AD  64                         PUSH_qimm   ; inline operand = 4
  $80AE  61                         PUSH_qimm   ; inline operand = 1
  $80AF  6C                         PUSH_qimm   ; inline operand = 12
  $80B0  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $80B4  CF                         RETURN

; ============================================================
; sub $80B5   (frame_off=-2, body @ $80BA)   [PRG $200B5]
; ============================================================
  $80BA  AC 70 B5                   CALL_abs               $B570 {native}
  $80BD  A5 7F 70                   BYTE_LOADL_abs         $707F
  $80C0  D8 DB 80                   JUMPF_abs              $80DB
  $80C3  65                         PUSH_qimm   ; inline operand = 5
  $80C4  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $80C8  D7 DB 80                   JUMPT_abs              $80DB
  $80CB  60                         PUSH_qimm   ; inline operand = 0
  $80CC  AC 91 D7                   CALL_abs               $D791 {native}
  $80CF  B3                         PUSHL
  $80D0  E9 B1 B2 04                CALL_abs_imm1          $B2B1 {native}, $04
  $80D4  8E 27 95                   PUSH_imm2              $9527
  $80D7  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
 >$80DB  AC 63 B5                   CALL_abs               $B563 {native}
 >$80DE  63                         PUSH_qimm   ; inline operand = 3
  $80DF  66                         PUSH_qimm   ; inline operand = 6
  $80E0  8E EA 94                   PUSH_imm2              $94EA
  $80E3  62                         PUSH_qimm   ; inline operand = 2
  $80E4  68                         PUSH_qimm   ; inline operand = 8
  $80E5  E9 B1 A1 0A                CALL_abs_imm1          $A1B1 {native}, $0A
  $80E9  2B                         STORE_quick   ; inline operand = 11
  $80EA  0B                         LOADL_quick   ; inline operand = 11
  $80EB  8B FE                      BYTE_LOADR_imm1        -2
  $80ED  C0                         CMPEQ
  $80EE  D8 02 81                   JUMPF_abs              $8102
  $80F1  46                         LOADL_qimm   ; inline operand = 6
  $80F2  2B                         STORE_quick   ; inline operand = 11
 >$80F3  0B                         LOADL_quick   ; inline operand = 11
  $80F4  D2                         LSHIFT1
  $80F5  8C F6 94                   LOADR_imm2             $94F6
  $80F8  BB                         ADD
  $80F9  B0                         DEREF
  $80FA  DD                         CALLPTR
  $80FB  D8 DE 80                   JUMPF_abs              $80DE
 >$80FE  AC E5 B5                   CALL_abs               $B5E5 {native}
  $8101  CF                         RETURN
 >$8102  0B                         LOADL_quick   ; inline operand = 11
  $8103  8B FF                      BYTE_LOADR_imm1        -1
  $8105  C0                         CMPEQ
  $8106  D8 F3 80                   JUMPF_abs              $80F3
  $8109  D6 FE 80                   JUMP_abs               $80FE

; ============================================================
; sub $810C   (frame_off=-4, body @ $8111)   [PRG $2010C]
; ============================================================
  $8111  8A 62 66                   LOADL_imm2             $6662
  $8114  2A                         STORE_quick   ; inline operand = 10
  $8115  AC E8 B2                   CALL_abs               $B2E8 {native}
  $8118  0A                         LOADL_quick   ; inline operand = 10
  $8119  7F                         ADD_qimm   ; inline operand = 15
  $811A  D3                         BYTE_DEREF
  $811B  51                         LOADR_qimm   ; inline operand = 1
  $811C  DA                         AND
  $811D  D8 5C 81                   JUMPF_abs              $815C
  $8120  61                         PUSH_qimm   ; inline operand = 1
  $8121  8E A6 95                   PUSH_imm2              $95A6
  $8124  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8128  AC 92 A2                   CALL_abs               $A292 {native}
  $812B  2B                         STORE_quick   ; inline operand = 11
  $812C  A5 6A 66                   BYTE_LOADL_abs         $666A
  $812F  B3                         PUSHL
  $8130  A5 65 66                   BYTE_LOADL_abs         $6665
  $8133  B3                         PUSHL
  $8134  A5 64 66                   BYTE_LOADL_abs         $6664
  $8137  B3                         PUSHL
  $8138  E9 41 AD 06                CALL_abs_imm1          $AD41 {native}, $06
  $813C  0B                         LOADL_quick   ; inline operand = 11
  $813D  D8 5A 81                   JUMPF_abs              $815A
  $8140  60                         PUSH_qimm   ; inline operand = 0
  $8141  60                         PUSH_qimm   ; inline operand = 0
  $8142  E9 67 B2 04                CALL_abs_imm1          $B267 {native}, $04
  $8146  AC 4B B2                   CALL_abs               $B24B {native}
  $8149  0A                         LOADL_quick   ; inline operand = 10
  $814A  78                         ADD_qimm   ; inline operand = 8
  $814B  D3                         BYTE_DEREF
  $814C  D2                         LSHIFT1
  $814D  8C 58 95                   LOADR_imm2             $9558
  $8150  BB                         ADD
  $8151  B0                         DEREF
  $8152  B3                         PUSHL
  $8153  8E BE 95                   PUSH_imm2              $95BE
  $8156  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
 >$815A  0B                         LOADL_quick   ; inline operand = 11
  $815B  CF                         RETURN
 >$815C  8E E0 95                   PUSH_imm2              $95E0
  $815F  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8163  40                         LOADL_qimm   ; inline operand = 0
  $8164  CF                         RETURN

; ============================================================
; sub $8165   (frame_off=-2, body @ $816A)   [PRG $20165]
; ============================================================
  $816A  8A 62 66                   LOADL_imm2             $6662
  $816D  2B                         STORE_quick   ; inline operand = 11
  $816E  60                         PUSH_qimm   ; inline operand = 0
  $816F  60                         PUSH_qimm   ; inline operand = 0
  $8170  E9 67 B2 04                CALL_abs_imm1          $B267 {native}, $04
  $8174  0B                         LOADL_quick   ; inline operand = 11
  $8175  7F                         ADD_qimm   ; inline operand = 15
  $8176  D3                         BYTE_DEREF
  $8177  51                         LOADR_qimm   ; inline operand = 1
  $8178  DA                         AND
  $8179  D8 8F 81                   JUMPF_abs              $818F
  $817C  8E FB 95                   PUSH_imm2              $95FB
  $817F  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8183  8E FE 00                   PUSH_imm2              $00FE
  $8186  0B                         LOADL_quick   ; inline operand = 11
  $8187  7F                         ADD_qimm   ; inline operand = 15
  $8188  B4                         POPR
  $8189  B3                         PUSHL
  $818A  D3                         BYTE_DEREF
  $818B  DA                         AND
  $818C  D6 9D 81                   JUMP_abs               $819D
 >$818F  8E 12 96                   PUSH_imm2              $9612
  $8192  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8196  61                         PUSH_qimm   ; inline operand = 1
  $8197  0B                         LOADL_quick   ; inline operand = 11
  $8198  7F                         ADD_qimm   ; inline operand = 15
  $8199  B4                         POPR
  $819A  B3                         PUSHL
  $819B  D3                         BYTE_DEREF
  $819C  DB                         OR
 >$819D  D4                         BYTE_POPSTORE
  $819E  A5 6A 66                   BYTE_LOADL_abs         $666A
  $81A1  B3                         PUSHL
  $81A2  A5 65 66                   BYTE_LOADL_abs         $6665
  $81A5  B3                         PUSHL
  $81A6  A5 64 66                   BYTE_LOADL_abs         $6664
  $81A9  B3                         PUSHL
  $81AA  E9 41 AD 06                CALL_abs_imm1          $AD41 {native}, $06
  $81AE  41                         LOADL_qimm   ; inline operand = 1
  $81AF  CF                         RETURN

; ============================================================
; sub $81B0   (frame_off=-2, body @ $81B5)   [PRG $201B0]
; ============================================================
  $81B5  62                         PUSH_qimm   ; inline operand = 2
  $81B6  62                         PUSH_qimm   ; inline operand = 2
  $81B7  8E 32 96                   PUSH_imm2              $9632
  $81BA  62                         PUSH_qimm   ; inline operand = 2
  $81BB  60                         PUSH_qimm   ; inline operand = 0
  $81BC  E9 EB A0 0A                CALL_abs_imm1          $A0EB {native}, $0A
  $81C0  2B                         STORE_quick   ; inline operand = 11
  $81C1  0B                         LOADL_quick   ; inline operand = 11
  $81C2  8C FF 00                   LOADR_imm2             $00FF
  $81C5  C0                         CMPEQ
  $81C6  D8 CB 81                   JUMPF_abs              $81CB
  $81C9  40                         LOADL_qimm   ; inline operand = 0
  $81CA  CF                         RETURN
 >$81CB  0B                         LOADL_quick   ; inline operand = 11
  $81CC  D2                         LSHIFT1
  $81CD  8C 36 96                   LOADR_imm2             $9636
  $81D0  BB                         ADD
  $81D1  B0                         DEREF
  $81D2  DD                         CALLPTR
  $81D3  CF                         RETURN

; ============================================================
; sub $81D4   (frame_off=+0, body @ $81D9)   [PRG $201D4]
; ============================================================
  $81D9  0C                         LOADL_quick   ; inline operand = 12
  $81DA  50                         LOADR_qimm   ; inline operand = 0
  $81DB  C2                         SCMPLT
  $81DC  D7 F5 81                   JUMPT_abs              $81F5
  $81DF  0C                         LOADL_quick   ; inline operand = 12
  $81E0  5D                         LOADR_qimm   ; inline operand = 13
  $81E1  C4                         SCMPGT
  $81E2  D7 F5 81                   JUMPT_abs              $81F5
  $81E5  0D                         LOADL_quick   ; inline operand = 13
  $81E6  50                         LOADR_qimm   ; inline operand = 0
  $81E7  C2                         SCMPLT
  $81E8  D7 F5 81                   JUMPT_abs              $81F5
  $81EB  0D                         LOADL_quick   ; inline operand = 13
  $81EC  5D                         LOADR_qimm   ; inline operand = 13
  $81ED  C4                         SCMPGT
  $81EE  D7 F5 81                   JUMPT_abs              $81F5
  $81F1  40                         LOADL_qimm   ; inline operand = 0
  $81F2  D6 F6 81                   JUMP_abs               $81F6
 >$81F5  41                         LOADL_qimm   ; inline operand = 1
 >$81F6  CF                         RETURN

; ============================================================
; sub $81F7   (frame_off=-6, body @ $81FC)   [PRG $201F7]
; ============================================================
  $81FC  3D                         PUSH_quick   ; inline operand = 13
  $81FD  3C                         PUSH_quick   ; inline operand = 12
  $81FE  E9 D4 81 04                CALL_abs_imm1          $81D4 {bytecode}, $04
  $8202  D8 09 82                   JUMPF_abs              $8209
  $8205  8A FF 00                   LOADL_imm2             $00FF
  $8208  CF                         RETURN
 >$8209  0F                         LOADL_quick   ; inline operand = 15
  $820A  2A                         STORE_quick   ; inline operand = 10
  $820B  1E                         LOADR_quick   ; inline operand = 14
  $820C  BB                         ADD
  $820D  29                         STORE_quick   ; inline operand = 9
  $820E  D6 3F 82                   JUMP_abs               $823F
 >$8211  0A                         LOADL_quick   ; inline operand = 10
  $8212  D3                         BYTE_DEREF
  $8213  8B 13                      BYTE_LOADR_imm1        +19
  $8215  B5                         MULT
  $8216  8C D8 AF                   LOADR_imm2             $AFD8
  $8219  BB                         ADD
  $821A  2B                         STORE_quick   ; inline operand = 11
  $821B  0C                         LOADL_quick   ; inline operand = 12
  $821C  B3                         PUSHL
  $821D  0B                         LOADL_quick   ; inline operand = 11
  $821E  8F 11                      BYTE_ADD_imm1          +17
  $8220  B3                         PUSHL
  $8221  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8225  B4                         POPR
  $8226  C0                         CMPEQ
  $8227  D8 3C 82                   JUMPF_abs              $823C
  $822A  0D                         LOADL_quick   ; inline operand = 13
  $822B  B3                         PUSHL
  $822C  0B                         LOADL_quick   ; inline operand = 11
  $822D  8F 12                      BYTE_ADD_imm1          +18
  $822F  B3                         PUSHL
  $8230  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8234  B4                         POPR
  $8235  C0                         CMPEQ
  $8236  D8 3C 82                   JUMPF_abs              $823C
  $8239  0A                         LOADL_quick   ; inline operand = 10
  $823A  D3                         BYTE_DEREF
  $823B  CF                         RETURN
 >$823C  0A                         LOADL_quick   ; inline operand = 10
  $823D  D0                         INC
  $823E  2A                         STORE_quick   ; inline operand = 10
 >$823F  0A                         LOADL_quick   ; inline operand = 10
  $8240  19                         LOADR_quick   ; inline operand = 9
  $8241  C6                         UCMPLT
  $8242  D7 11 82                   JUMPT_abs              $8211
  $8245  8A FF 00                   LOADL_imm2             $00FF
  $8248  CF                         RETURN

; ============================================================
; sub $8249   (frame_off=-6, body @ $824E)   [PRG $20249]
; ============================================================
  $824E  40                         LOADL_qimm   ; inline operand = 0
  $824F  2B                         STORE_quick   ; inline operand = 11
 >$8250  0B                         LOADL_quick   ; inline operand = 11
  $8251  2A                         STORE_quick   ; inline operand = 10
  $8252  0C                         LOADL_quick   ; inline operand = 12
  $8253  1B                         LOADR_quick   ; inline operand = 11
  $8254  BB                         ADD
  $8255  5F                         LOADR_qimm   ; inline operand = 15
  $8256  C9                         UCMPGE
  $8257  D8 72 82                   JUMPF_abs              $8272
  $825A  0D                         LOADL_quick   ; inline operand = 13
  $825B  B0                         DEREF
  $825C  8C E0 2E                   LOADR_imm2             $2EE0
  $825F  C9                         UCMPGE
  $8260  D8 90 82                   JUMPF_abs              $8290
  $8263  0B                         LOADL_quick   ; inline operand = 11
  $8264  D0                         INC
  $8265  2B                         STORE_quick   ; inline operand = 11
  $8266  8E E0 2E                   PUSH_imm2              $2EE0
  $8269  0D                         LOADL_quick   ; inline operand = 13
  $826A  B4                         POPR
  $826B  B3                         PUSHL
  $826C  B0                         DEREF
  $826D  BC                         SUB
  $826E  B1                         POPSTORE
  $826F  D6 90 82                   JUMP_abs               $8290
 >$8272  0C                         LOADL_quick   ; inline operand = 12
  $8273  1B                         LOADR_quick   ; inline operand = 11
  $8274  BB                         ADD
  $8275  B3                         PUSHL
  $8276  0C                         LOADL_quick   ; inline operand = 12
  $8277  1B                         LOADR_quick   ; inline operand = 11
  $8278  BB                         ADD
  $8279  B4                         POPR
  $827A  B5                         MULT
  $827B  8B 32                      BYTE_LOADR_imm1        +50
  $827D  B5                         MULT
  $827E  29                         STORE_quick   ; inline operand = 9
  $827F  0D                         LOADL_quick   ; inline operand = 13
  $8280  B0                         DEREF
  $8281  19                         LOADR_quick   ; inline operand = 9
  $8282  C8                         UCMPGT
  $8283  D8 90 82                   JUMPF_abs              $8290
  $8286  39                         PUSH_quick   ; inline operand = 9
  $8287  0D                         LOADL_quick   ; inline operand = 13
  $8288  B4                         POPR
  $8289  B3                         PUSHL
  $828A  B0                         DEREF
  $828B  BC                         SUB
  $828C  B1                         POPSTORE
  $828D  0B                         LOADL_quick   ; inline operand = 11
  $828E  D0                         INC
  $828F  2B                         STORE_quick   ; inline operand = 11
 >$8290  0A                         LOADL_quick   ; inline operand = 10
  $8291  1B                         LOADR_quick   ; inline operand = 11
  $8292  C1                         CMPNE
  $8293  D7 50 82                   JUMPT_abs              $8250
  $8296  0C                         LOADL_quick   ; inline operand = 12
  $8297  1B                         LOADR_quick   ; inline operand = 11
  $8298  BB                         ADD
  $8299  8B 32                      BYTE_LOADR_imm1        +50
  $829B  C8                         UCMPGT
  $829C  D8 AF 82                   JUMPF_abs              $82AF
 >$829F  0B                         LOADL_quick   ; inline operand = 11
  $82A0  D1                         DEC
  $82A1  2B                         STORE_quick   ; inline operand = 11
  $82A2  0B                         LOADL_quick   ; inline operand = 11
  $82A3  D7 9F 82                   JUMPT_abs              $829F
  $82A6  0C                         LOADL_quick   ; inline operand = 12
  $82A7  1B                         LOADR_quick   ; inline operand = 11
  $82A8  BB                         ADD
  $82A9  8B 32                      BYTE_LOADR_imm1        +50
  $82AB  C8                         UCMPGT
  $82AC  D7 9F 82                   JUMPT_abs              $829F
 >$82AF  0B                         LOADL_quick   ; inline operand = 11
  $82B0  CF                         RETURN

; ============================================================
; sub $82B1   (frame_off=-25, body @ $82B6)   [PRG $202B1]
; ============================================================
  $82B6  A4 96 6A                   LOADL_abs              $6A96
  $82B9  2B                         STORE_quick   ; inline operand = 11
  $82BA  DE EF FF                   LEAL_far               $FFEF
  $82BD  B3                         PUSHL
  $82BE  60                         PUSH_qimm   ; inline operand = 0
  $82BF  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $82C3  28                         STORE_quick   ; inline operand = 8
  $82C4  40                         LOADL_qimm   ; inline operand = 0
  $82C5  D6 0F 84                   JUMP_abs               $840F
 >$82C8  DE EF FF                   LEAL_far               $FFEF
  $82CB  B3                         PUSHL
  $82CC  07                         LOADL_quick   ; inline operand = 7
  $82CD  B4                         POPR
  $82CE  BB                         ADD
  $82CF  D3                         BYTE_DEREF
  $82D0  8B 18                      BYTE_LOADR_imm1        +24
  $82D2  B5                         MULT
  $82D3  8C A4 6A                   LOADR_imm2             $6AA4
  $82D6  BB                         ADD
  $82D7  85 ED                      STORE_near             $ED
  $82D9  81 ED                      LOADL_near             $ED
  $82DB  D3                         BYTE_DEREF
  $82DC  5A                         LOADR_qimm   ; inline operand = 10
  $82DD  B5                         MULT
  $82DE  8C BE 6B                   LOADR_imm2             $6BBE
  $82E1  BB                         ADD
  $82E2  85 EB                      STORE_near             $EB
  $82E4  81 ED                      LOADL_near             $ED
  $82E6  D3                         BYTE_DEREF
  $82E7  57                         LOADR_qimm   ; inline operand = 7
  $82E8  B5                         MULT
  $82E9  8C 42 65                   LOADR_imm2             $6542
  $82EC  BB                         ADD
  $82ED  85 E9                      STORE_near             $E9
  $82EF  81 E9                      LOADL_near             $E9
  $82F1  73                         ADD_qimm   ; inline operand = 3
  $82F2  D3                         BYTE_DEREF
  $82F3  8B 32                      BYTE_LOADR_imm1        +50
  $82F5  C6                         UCMPLT
  $82F6  D8 22 83                   JUMPF_abs              $8322
  $82F9  81 EB                      LOADL_near             $EB
  $82FB  78                         ADD_qimm   ; inline operand = 8
  $82FC  B3                         PUSHL
  $82FD  8E 60 EA                   PUSH_imm2              $EA60
  $8300  81 EB                      LOADL_near             $EB
  $8302  78                         ADD_qimm   ; inline operand = 8
  $8303  B0                         DEREF
  $8304  B3                         PUSHL
  $8305  0B                         LOADL_quick   ; inline operand = 11
  $8306  5A                         LOADR_qimm   ; inline operand = 10
  $8307  B9                         SMOD
  $8308  5A                         LOADR_qimm   ; inline operand = 10
  $8309  B5                         MULT
  $830A  B3                         PUSHL
  $830B  0B                         LOADL_quick   ; inline operand = 11
  $830C  5A                         LOADR_qimm   ; inline operand = 10
  $830D  B6                         SDIV
  $830E  B3                         PUSHL
  $830F  0B                         LOADL_quick   ; inline operand = 11
  $8310  5A                         LOADR_qimm   ; inline operand = 10
  $8311  B6                         SDIV
  $8312  B4                         POPR
  $8313  B5                         MULT
  $8314  8C C8 00                   LOADR_imm2             $00C8
  $8317  B5                         MULT
  $8318  B4                         POPR
  $8319  BB                         ADD
  $831A  B4                         POPR
  $831B  BB                         ADD
  $831C  B3                         PUSHL
  $831D  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8321  B1                         POPSTORE
 >$8322  81 ED                      LOADL_near             $ED
  $8324  D3                         BYTE_DEREF
  $8325  D8 5B 83                   JUMPF_abs              $835B
  $8328  81 ED                      LOADL_near             $ED
  $832A  D3                         BYTE_DEREF
  $832B  D1                         DEC
  $832C  D2                         LSHIFT1
  $832D  8C 6E 6A                   LOADR_imm2             $6A6E
  $8330  BB                         ADD
  $8331  85 E7                      STORE_near             $E7
  $8333  81 E7                      LOADL_near             $E7
  $8335  D3                         BYTE_DEREF
  $8336  2A                         STORE_quick   ; inline operand = 10
  $8337  81 EB                      LOADL_near             $EB
  $8339  D0                         INC
  $833A  D3                         BYTE_DEREF
  $833B  B3                         PUSHL
  $833C  A5 BF 6B                   BYTE_LOADL_abs         $6BBF
  $833F  B4                         POPR
  $8340  BC                         SUB
  $8341  5A                         LOADR_qimm   ; inline operand = 10
  $8342  B6                         SDIV
  $8343  CD                         SWAP
  $8344  0A                         LOADL_quick   ; inline operand = 10
  $8345  BB                         ADD
  $8346  2A                         STORE_quick   ; inline operand = 10
  $8347  0A                         LOADL_quick   ; inline operand = 10
  $8348  50                         LOADR_qimm   ; inline operand = 0
  $8349  C2                         SCMPLT
  $834A  D8 4F 83                   JUMPF_abs              $834F
  $834D  40                         LOADL_qimm   ; inline operand = 0
  $834E  2A                         STORE_quick   ; inline operand = 10
 >$834F  8D 64                      BYTE_PUSH_imm1         +100
  $8351  3A                         PUSH_quick   ; inline operand = 10
  $8352  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8356  2A                         STORE_quick   ; inline operand = 10
  $8357  87 E7                      PUSH_near              $E7
  $8359  0A                         LOADL_quick   ; inline operand = 10
  $835A  D4                         BYTE_POPSTORE
 >$835B  81 E9                      LOADL_near             $E9
  $835D  73                         ADD_qimm   ; inline operand = 3
  $835E  D3                         BYTE_DEREF
  $835F  8B 32                      BYTE_LOADR_imm1        +50
  $8361  C6                         UCMPLT
  $8362  D8 0D 84                   JUMPF_abs              $840D
  $8365  81 EB                      LOADL_near             $EB
  $8367  78                         ADD_qimm   ; inline operand = 8
  $8368  B3                         PUSHL
  $8369  81 E9                      LOADL_near             $E9
  $836B  73                         ADD_qimm   ; inline operand = 3
  $836C  D3                         BYTE_DEREF
  $836D  B3                         PUSHL
  $836E  E9 49 82 04                CALL_abs_imm1          $8249 {bytecode}, $04
  $8372  29                         STORE_quick   ; inline operand = 9
  $8373  09                         LOADL_quick   ; inline operand = 9
  $8374  D8 0D 84                   JUMPF_abs              $840D
  $8377  AC 4B B2                   CALL_abs               $B24B {native}
  $837A  60                         PUSH_qimm   ; inline operand = 0
  $837B  8E 50 96                   PUSH_imm2              $9650
  $837E  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8382  81 ED                      LOADL_near             $ED
  $8384  D3                         BYTE_DEREF
  $8385  D8 9E 83                   JUMPF_abs              $839E
  $8388  81 ED                      LOADL_near             $ED
  $838A  D3                         BYTE_DEREF
  $838B  57                         LOADR_qimm   ; inline operand = 7
  $838C  B5                         MULT
  $838D  8C 42 65                   LOADR_imm2             $6542
  $8390  BB                         ADD
  $8391  B0                         DEREF
  $8392  B3                         PUSHL
  $8393  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8397  60                         PUSH_qimm   ; inline operand = 0
  $8398  8E 52 96                   PUSH_imm2              $9652
  $839B  D6 A2 83                   JUMP_abs               $83A2
 >$839E  60                         PUSH_qimm   ; inline operand = 0
  $839F  8E 55 96                   PUSH_imm2              $9655
 >$83A2  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $83A6  60                         PUSH_qimm   ; inline operand = 0
  $83A7  8E 61 96                   PUSH_imm2              $9661
  $83AA  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $83AE  09                         LOADL_quick   ; inline operand = 9
  $83AF  B3                         PUSHL
  $83B0  81 E9                      LOADL_near             $E9
  $83B2  73                         ADD_qimm   ; inline operand = 3
  $83B3  B4                         POPR
  $83B4  B3                         PUSHL
  $83B5  D3                         BYTE_DEREF
  $83B6  BB                         ADD
  $83B7  D4                         BYTE_POPSTORE
  $83B8  40                         LOADL_qimm   ; inline operand = 0
  $83B9  D6 06 84                   JUMP_abs               $8406
 >$83BC  81 EB                      LOADL_near             $EB
  $83BE  D0                         INC
  $83BF  B3                         PUSHL
  $83C0  8D 64                      BYTE_PUSH_imm1         +100
  $83C2  81 EB                      LOADL_near             $EB
  $83C4  D0                         INC
  $83C5  D3                         BYTE_DEREF
  $83C6  B3                         PUSHL
  $83C7  64                         PUSH_qimm   ; inline operand = 4
  $83C8  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $83CC  B4                         POPR
  $83CD  BB                         ADD
  $83CE  B3                         PUSHL
  $83CF  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $83D3  D4                         BYTE_POPSTORE
  $83D4  81 EB                      LOADL_near             $EB
  $83D6  72                         ADD_qimm   ; inline operand = 2
  $83D7  B3                         PUSHL
  $83D8  8D 64                      BYTE_PUSH_imm1         +100
  $83DA  81 EB                      LOADL_near             $EB
  $83DC  72                         ADD_qimm   ; inline operand = 2
  $83DD  D3                         BYTE_DEREF
  $83DE  B3                         PUSHL
  $83DF  64                         PUSH_qimm   ; inline operand = 4
  $83E0  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $83E4  B4                         POPR
  $83E5  BB                         ADD
  $83E6  B3                         PUSHL
  $83E7  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $83EB  D4                         BYTE_POPSTORE
  $83EC  81 EB                      LOADL_near             $EB
  $83EE  73                         ADD_qimm   ; inline operand = 3
  $83EF  B3                         PUSHL
  $83F0  8D 64                      BYTE_PUSH_imm1         +100
  $83F2  81 EB                      LOADL_near             $EB
  $83F4  73                         ADD_qimm   ; inline operand = 3
  $83F5  D3                         BYTE_DEREF
  $83F6  B3                         PUSHL
  $83F7  64                         PUSH_qimm   ; inline operand = 4
  $83F8  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $83FC  B4                         POPR
  $83FD  BB                         ADD
  $83FE  B3                         PUSHL
  $83FF  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8403  D4                         BYTE_POPSTORE
  $8404  06                         LOADL_quick   ; inline operand = 6
  $8405  D0                         INC
 >$8406  26                         STORE_quick   ; inline operand = 6
  $8407  06                         LOADL_quick   ; inline operand = 6
  $8408  19                         LOADR_quick   ; inline operand = 9
  $8409  C6                         UCMPLT
  $840A  D7 BC 83                   JUMPT_abs              $83BC
 >$840D  07                         LOADL_quick   ; inline operand = 7
  $840E  D0                         INC
 >$840F  27                         STORE_quick   ; inline operand = 7
  $8410  07                         LOADL_quick   ; inline operand = 7
  $8411  18                         LOADR_quick   ; inline operand = 8
  $8412  C6                         UCMPLT
  $8413  D7 C8 82                   JUMPT_abs              $82C8
  $8416  40                         LOADL_qimm   ; inline operand = 0
  $8417  A8 96 6A                   STORE_abs              $6A96
  $841A  CF                         RETURN

; ============================================================
; sub $841B   (frame_off=-80, body @ $8420)   [PRG $2041B]
; ============================================================
  $8420  DE BA FF                   LEAL_far               $FFBA
  $8423  B3                         PUSHL
  $8424  A5 66 72                   BYTE_LOADL_abs         $7266
  $8427  B3                         PUSHL
  $8428  A5 64 72                   BYTE_LOADL_abs         $7264
  $842B  53                         LOADR_qimm   ; inline operand = 3
  $842C  B5                         MULT
  $842D  B4                         POPR
  $842E  BB                         ADD
  $842F  B3                         PUSHL
  $8430  A5 65 72                   BYTE_LOADL_abs         $7265
  $8433  B3                         PUSHL
  $8434  A5 63 72                   BYTE_LOADL_abs         $7263
  $8437  53                         LOADR_qimm   ; inline operand = 3
  $8438  B5                         MULT
  $8439  B4                         POPR
  $843A  BB                         ADD
  $843B  B3                         PUSHL
  $843C  E9 30 D2 06                CALL_abs_imm1          $D230 (collect_ports_by_key) {native}, $06
  $8440  85 B8                      STORE_near             $B8
  $8442  8A 62 66                   LOADL_imm2             $6662
  $8445  85 B2                      STORE_near             $B2
  $8447  8A FF 00                   LOADL_imm2             $00FF
  $844A  85 B6                      STORE_near             $B6
  $844C  81 B8                      LOADL_near             $B8
  $844E  D8 97 84                   JUMPF_abs              $8497
  $8451  40                         LOADL_qimm   ; inline operand = 0
  $8452  85 B4                      STORE_near             $B4
 >$8454  DE BA FF                   LEAL_far               $FFBA
  $8457  B3                         PUSHL
  $8458  87 B8                      PUSH_near              $B8
  $845A  81 B4                      LOADL_near             $B4
  $845C  D2                         LSHIFT1
  $845D  D2                         LSHIFT1
  $845E  8C 87 70                   LOADR_imm2             $7087
  $8461  BB                         ADD
  $8462  B0                         DEREF
  $8463  B3                         PUSHL
  $8464  81 B2                      LOADL_near             $B2
  $8466  73                         ADD_qimm   ; inline operand = 3
  $8467  D3                         BYTE_DEREF
  $8468  B4                         POPR
  $8469  BB                         ADD
  $846A  B3                         PUSHL
  $846B  81 B4                      LOADL_near             $B4
  $846D  D2                         LSHIFT1
  $846E  D2                         LSHIFT1
  $846F  8C 85 70                   LOADR_imm2             $7085
  $8472  BB                         ADD
  $8473  B0                         DEREF
  $8474  B3                         PUSHL
  $8475  81 B2                      LOADL_near             $B2
  $8477  72                         ADD_qimm   ; inline operand = 2
  $8478  D3                         BYTE_DEREF
  $8479  B4                         POPR
  $847A  BB                         ADD
  $847B  B3                         PUSHL
  $847C  E9 F7 81 08                CALL_abs_imm1          $81F7 {bytecode}, $08
  $8480  85 B6                      STORE_near             $B6
  $8482  81 B6                      LOADL_near             $B6
  $8484  8C FF 00                   LOADR_imm2             $00FF
  $8487  C1                         CMPNE
  $8488  D7 97 84                   JUMPT_abs              $8497
  $848B  81 B4                      LOADL_near             $B4
  $848D  D0                         INC
  $848E  85 B4                      STORE_near             $B4
  $8490  81 B4                      LOADL_near             $B4
  $8492  58                         LOADR_qimm   ; inline operand = 8
  $8493  C6                         UCMPLT
  $8494  D7 54 84                   JUMPT_abs              $8454
 >$8497  AC E8 B2                   CALL_abs               $B2E8 {native}
  $849A  81 B6                      LOADL_near             $B6
  $849C  8C FF 00                   LOADR_imm2             $00FF
  $849F  C0                         CMPEQ
  $84A0  D8 AC 84                   JUMPF_abs              $84AC
  $84A3  8E 81 96                   PUSH_imm2              $9681
  $84A6  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $84AA  40                         LOADL_qimm   ; inline operand = 0
  $84AB  CF                         RETURN
 >$84AC  60                         PUSH_qimm   ; inline operand = 0
  $84AD  8E 96 96                   PUSH_imm2              $9696
  $84B0  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $84B4  81 B6                      LOADL_near             $B6
  $84B6  8B 13                      BYTE_LOADR_imm1        +19
  $84B8  B5                         MULT
  $84B9  8C D8 AF                   LOADR_imm2             $AFD8
  $84BC  BB                         ADD
  $84BD  B3                         PUSHL
  $84BE  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $84C2  60                         PUSH_qimm   ; inline operand = 0
  $84C3  8E A7 96                   PUSH_imm2              $96A7
  $84C6  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $84CA  AC 9F CD                   CALL_abs               $CD9F {native}
  $84CD  D8 5C 85                   JUMPF_abs              $855C
  $84D0  AC B1 82                   CALL_abs               $82B1 (helm_sailing_skill_up) {bytecode}
  $84D3  40                         LOADL_qimm   ; inline operand = 0
  $84D4  A9 86 6B                   BYTE_STORE_abs         $6B86
  $84D7  40                         LOADL_qimm   ; inline operand = 0
  $84D8  A9 7E 73                   BYTE_STORE_abs         $737E
  $84DB  60                         PUSH_qimm   ; inline operand = 0
  $84DC  81 B2                      LOADL_near             $B2
  $84DE  73                         ADD_qimm   ; inline operand = 3
  $84DF  D3                         BYTE_DEREF
  $84E0  B3                         PUSHL
  $84E1  81 B2                      LOADL_near             $B2
  $84E3  72                         ADD_qimm   ; inline operand = 2
  $84E4  D3                         BYTE_DEREF
  $84E5  B3                         PUSHL
  $84E6  E9 18 A9 06                CALL_abs_imm1          $A918 {native}, $06
  $84EA  81 B2                      LOADL_near             $B2
  $84EC  73                         ADD_qimm   ; inline operand = 3
  $84ED  D3                         BYTE_DEREF
  $84EE  B3                         PUSHL
  $84EF  81 B2                      LOADL_near             $B2
  $84F1  72                         ADD_qimm   ; inline operand = 2
  $84F2  D3                         BYTE_DEREF
  $84F3  5E                         LOADR_qimm   ; inline operand = 14
  $84F4  B5                         MULT
  $84F5  B4                         POPR
  $84F6  BB                         ADD
  $84F7  8C B6 72                   LOADR_imm2             $72B6
  $84FA  BB                         ADD
  $84FB  D3                         BYTE_DEREF
  $84FC  8C FF 00                   LOADR_imm2             $00FF
  $84FF  C0                         CMPEQ
  $8500  D8 22 85                   JUMPF_abs              $8522
  $8503  81 B2                      LOADL_near             $B2
  $8505  D3                         BYTE_DEREF
  $8506  53                         LOADR_qimm   ; inline operand = 3
  $8507  BA                         UMOD
  $8508  B3                         PUSHL
  $8509  81 B2                      LOADL_near             $B2
  $850B  D0                         INC
  $850C  D3                         BYTE_DEREF
  $850D  53                         LOADR_qimm   ; inline operand = 3
  $850E  BA                         UMOD
  $850F  53                         LOADR_qimm   ; inline operand = 3
  $8510  B5                         MULT
  $8511  B4                         POPR
  $8512  BB                         ADD
  $8513  B3                         PUSHL
  $8514  81 B2                      LOADL_near             $B2
  $8516  73                         ADD_qimm   ; inline operand = 3
  $8517  D3                         BYTE_DEREF
  $8518  B3                         PUSHL
  $8519  81 B2                      LOADL_near             $B2
  $851B  72                         ADD_qimm   ; inline operand = 2
  $851C  D3                         BYTE_DEREF
  $851D  B3                         PUSHL
  $851E  E9 DD AC 06                CALL_abs_imm1          $ACDD {native}, $06
 >$8522  81 B6                      LOADL_near             $B6
  $8524  8B 13                      BYTE_LOADR_imm1        +19
  $8526  B5                         MULT
  $8527  8C D8 AF                   LOADR_imm2             $AFD8
  $852A  BB                         ADD
  $852B  85 B0                      STORE_near             $B0
  $852D  81 B2                      LOADL_near             $B2
  $852F  72                         ADD_qimm   ; inline operand = 2
  $8530  B3                         PUSHL
  $8531  81 B0                      LOADL_near             $B0
  $8533  8F 11                      BYTE_ADD_imm1          +17
  $8535  B3                         PUSHL
  $8536  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $853A  D4                         BYTE_POPSTORE
  $853B  81 B2                      LOADL_near             $B2
  $853D  73                         ADD_qimm   ; inline operand = 3
  $853E  B3                         PUSHL
  $853F  81 B0                      LOADL_near             $B0
  $8541  8F 12                      BYTE_ADD_imm1          +18
  $8543  B3                         PUSHL
  $8544  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8548  D4                         BYTE_POPSTORE
  $8549  8D 12                      BYTE_PUSH_imm1         +18
  $854B  81 B2                      LOADL_near             $B2
  $854D  7F                         ADD_qimm   ; inline operand = 15
  $854E  B4                         POPR
  $854F  B3                         PUSHL
  $8550  D3                         BYTE_DEREF
  $8551  DB                         OR
  $8552  D4                         BYTE_POPSTORE
  $8553  64                         PUSH_qimm   ; inline operand = 4
  $8554  65                         PUSH_qimm   ; inline operand = 5
  $8555  6C                         PUSH_qimm   ; inline operand = 12
  $8556  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $855A  41                         LOADL_qimm   ; inline operand = 1
  $855B  CF                         RETURN
 >$855C  40                         LOADL_qimm   ; inline operand = 0
  $855D  CF                         RETURN

; ============================================================
; sub $855E   (frame_off=+0, body @ $8563)   [PRG $2055E]
; ============================================================
  $8563  3D                         PUSH_quick   ; inline operand = 13
  $8564  3C                         PUSH_quick   ; inline operand = 12
  $8565  E9 D4 81 04                CALL_abs_imm1          $81D4 {bytecode}, $04
  $8569  D8 6E 85                   JUMPF_abs              $856E
  $856C  40                         LOADL_qimm   ; inline operand = 0
  $856D  CF                         RETURN
 >$856E  0D                         LOADL_quick   ; inline operand = 13
  $856F  B3                         PUSHL
  $8570  0C                         LOADL_quick   ; inline operand = 12
  $8571  B3                         PUSHL
  $8572  A5 66 72                   BYTE_LOADL_abs         $7266
  $8575  B3                         PUSHL
  $8576  A5 64 72                   BYTE_LOADL_abs         $7264
  $8579  53                         LOADR_qimm   ; inline operand = 3
  $857A  B5                         MULT
  $857B  B4                         POPR
  $857C  BB                         ADD
  $857D  B3                         PUSHL
  $857E  A5 65 72                   BYTE_LOADL_abs         $7265
  $8581  B3                         PUSHL
  $8582  A5 63 72                   BYTE_LOADL_abs         $7263
  $8585  53                         LOADR_qimm   ; inline operand = 3
  $8586  B5                         MULT
  $8587  B4                         POPR
  $8588  BB                         ADD
  $8589  B3                         PUSHL
  $858A  E9 05 D4 08                CALL_abs_imm1          $D405 (calc_pos_relative) {native}, $08
  $858E  D8 95 85                   JUMPF_abs              $8595
  $8591  40                         LOADL_qimm   ; inline operand = 0
  $8592  D6 96 85                   JUMP_abs               $8596
 >$8595  41                         LOADL_qimm   ; inline operand = 1
 >$8596  CF                         RETURN

; ============================================================
; sub $8597   (frame_off=-2, body @ $859C)   [PRG $20597]
; ============================================================
  $859C  40                         LOADL_qimm   ; inline operand = 0
  $859D  D6 B9 85                   JUMP_abs               $85B9
 >$85A0  0B                         LOADL_quick   ; inline operand = 11
  $85A1  D2                         LSHIFT1
  $85A2  1F                         LOADR_quick   ; inline operand = 15
  $85A3  BB                         ADD
  $85A4  D3                         BYTE_DEREF
  $85A5  1C                         LOADR_quick   ; inline operand = 12
  $85A6  C0                         CMPEQ
  $85A7  D8 B7 85                   JUMPF_abs              $85B7
  $85AA  0B                         LOADL_quick   ; inline operand = 11
  $85AB  D2                         LSHIFT1
  $85AC  1F                         LOADR_quick   ; inline operand = 15
  $85AD  BB                         ADD
  $85AE  D0                         INC
  $85AF  D3                         BYTE_DEREF
  $85B0  1D                         LOADR_quick   ; inline operand = 13
  $85B1  C0                         CMPEQ
  $85B2  D8 B7 85                   JUMPF_abs              $85B7
  $85B5  41                         LOADL_qimm   ; inline operand = 1
  $85B6  CF                         RETURN
 >$85B7  0B                         LOADL_quick   ; inline operand = 11
  $85B8  D0                         INC
 >$85B9  2B                         STORE_quick   ; inline operand = 11
  $85BA  0B                         LOADL_quick   ; inline operand = 11
  $85BB  1E                         LOADR_quick   ; inline operand = 14
  $85BC  C6                         UCMPLT
  $85BD  D7 A0 85                   JUMPT_abs              $85A0
  $85C0  40                         LOADL_qimm   ; inline operand = 0
  $85C1  CF                         RETURN

; ============================================================
; sub $85C2   (frame_off=-36, body @ $85C7)   [PRG $205C2]
; ============================================================
  $85C7  8A 62 66                   LOADL_imm2             $6662
  $85CA  85 DC                      STORE_near             $DC
  $85CC  81 DC                      LOADL_near             $DC
  $85CE  72                         ADD_qimm   ; inline operand = 2
  $85CF  D3                         BYTE_DEREF
  $85D0  20                         STORE_quick   ; inline operand = 0
  $85D1  81 DC                      LOADL_near             $DC
  $85D3  73                         ADD_qimm   ; inline operand = 3
  $85D4  D3                         BYTE_DEREF
  $85D5  85 E6                      STORE_near             $E6
  $85D7  40                         LOADL_qimm   ; inline operand = 0
  $85D8  85 E4                      STORE_near             $E4
  $85DA  23                         STORE_quick   ; inline operand = 3
  $85DB  D6 31 86                   JUMP_abs               $8631
 >$85DE  81 E4                      LOADL_near             $E4
  $85E0  D2                         LSHIFT1
  $85E1  D2                         LSHIFT1
  $85E2  8C 87 70                   LOADR_imm2             $7087
  $85E5  BB                         ADD
  $85E6  B0                         DEREF
  $85E7  83 E6                      LOADR_near             $E6
  $85E9  BB                         ADD
  $85EA  B3                         PUSHL
  $85EB  81 E4                      LOADL_near             $E4
  $85ED  D2                         LSHIFT1
  $85EE  D2                         LSHIFT1
  $85EF  8C 85 70                   LOADR_imm2             $7085
  $85F2  BB                         ADD
  $85F3  B0                         DEREF
  $85F4  10                         LOADR_quick   ; inline operand = 0
  $85F5  BB                         ADD
  $85F6  B3                         PUSHL
  $85F7  E9 5E 85 04                CALL_abs_imm1          $855E {bytecode}, $04
  $85FB  D8 2C 86                   JUMPF_abs              $862C
  $85FE  DE F0 FF                   LEAL_far               $FFF0
  $8601  B3                         PUSHL
  $8602  03                         LOADL_quick   ; inline operand = 3
  $8603  D2                         LSHIFT1
  $8604  B4                         POPR
  $8605  BB                         ADD
  $8606  B3                         PUSHL
  $8607  81 E4                      LOADL_near             $E4
  $8609  D2                         LSHIFT1
  $860A  D2                         LSHIFT1
  $860B  8C 85 70                   LOADR_imm2             $7085
  $860E  BB                         ADD
  $860F  B0                         DEREF
  $8610  10                         LOADR_quick   ; inline operand = 0
  $8611  BB                         ADD
  $8612  D4                         BYTE_POPSTORE
  $8613  DE F1 FF                   LEAL_far               $FFF1
  $8616  B3                         PUSHL
  $8617  03                         LOADL_quick   ; inline operand = 3
  $8618  D2                         LSHIFT1
  $8619  B4                         POPR
  $861A  BB                         ADD
  $861B  B3                         PUSHL
  $861C  81 E4                      LOADL_near             $E4
  $861E  D2                         LSHIFT1
  $861F  D2                         LSHIFT1
  $8620  8C 87 70                   LOADR_imm2             $7087
  $8623  BB                         ADD
  $8624  B0                         DEREF
  $8625  83 E6                      LOADR_near             $E6
  $8627  BB                         ADD
  $8628  D4                         BYTE_POPSTORE
  $8629  03                         LOADL_quick   ; inline operand = 3
  $862A  D0                         INC
  $862B  23                         STORE_quick   ; inline operand = 3
 >$862C  81 E4                      LOADL_near             $E4
  $862E  D0                         INC
  $862F  85 E4                      STORE_near             $E4
 >$8631  81 E4                      LOADL_near             $E4
  $8633  58                         LOADR_qimm   ; inline operand = 8
  $8634  C6                         UCMPLT
  $8635  D7 DE 85                   JUMPT_abs              $85DE
  $8638  33                         PUSH_quick   ; inline operand = 3
  $8639  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $863D  85 E2                      STORE_near             $E2
  $863F  DE F0 FF                   LEAL_far               $FFF0
  $8642  B3                         PUSHL
  $8643  81 E2                      LOADL_near             $E2
  $8645  D2                         LSHIFT1
  $8646  B4                         POPR
  $8647  BB                         ADD
  $8648  D3                         BYTE_DEREF
  $8649  22                         STORE_quick   ; inline operand = 2
  $864A  DE F1 FF                   LEAL_far               $FFF1
  $864D  B3                         PUSHL
  $864E  81 E2                      LOADL_near             $E2
  $8650  D2                         LSHIFT1
  $8651  B4                         POPR
  $8652  BB                         ADD
  $8653  D3                         BYTE_DEREF
  $8654  21                         STORE_quick   ; inline operand = 1
 >$8655  31                         PUSH_quick   ; inline operand = 1
  $8656  32                         PUSH_quick   ; inline operand = 2
  $8657  E9 36 80 04                CALL_abs_imm1          $8036 {bytecode}, $04
  $865B  6C                         PUSH_qimm   ; inline operand = 12
  $865C  87 E0                      PUSH_near              $E0
  $865E  E9 4D CE 04                CALL_abs_imm1          $CE4D {native}, $04
  $8662  AC F6 C7                   CALL_abs               $C7F6 {native}
  $8665  85 E0                      STORE_near             $E0
  $8667  D9 04 00 10 00 7C 86 20 00 9E 86 40 ... SWITCH_noncontig       count=4   ; .table 4 (key,target) + default (noncontiguous); SWITCH 16=>$867C 32=>$869E 64=>$86D4 128=>$86B9 default=>$86EB
 >$867C  01                         LOADL_quick   ; inline operand = 1
  $867D  D8 EB 86                   JUMPF_abs              $86EB
  $8680  DE F0 FF                   LEAL_far               $FFF0
  $8683  B3                         PUSHL
  $8684  33                         PUSH_quick   ; inline operand = 3
  $8685  01                         LOADL_quick   ; inline operand = 1
  $8686  D1                         DEC
  $8687  B3                         PUSHL
  $8688  32                         PUSH_quick   ; inline operand = 2
  $8689  E9 97 85 08                CALL_abs_imm1          $8597 {bytecode}, $08
  $868D  D8 EB 86                   JUMPF_abs              $86EB
  $8690  01                         LOADL_quick   ; inline operand = 1
  $8691  D1                         DEC
 >$8692  21                         STORE_quick   ; inline operand = 1
  $8693  D6 EB 86                   JUMP_abs               $86EB
 >$8696  3C                         PUSH_quick   ; inline operand = 12
  $8697  02                         LOADL_quick   ; inline operand = 2
  $8698  D4                         BYTE_POPSTORE
  $8699  3D                         PUSH_quick   ; inline operand = 13
  $869A  01                         LOADL_quick   ; inline operand = 1
  $869B  D4                         BYTE_POPSTORE
  $869C  41                         LOADL_qimm   ; inline operand = 1
  $869D  CF                         RETURN
 >$869E  01                         LOADL_quick   ; inline operand = 1
  $869F  5D                         LOADR_qimm   ; inline operand = 13
  $86A0  C1                         CMPNE
  $86A1  D8 EB 86                   JUMPF_abs              $86EB
  $86A4  DE F0 FF                   LEAL_far               $FFF0
  $86A7  B3                         PUSHL
  $86A8  33                         PUSH_quick   ; inline operand = 3
  $86A9  01                         LOADL_quick   ; inline operand = 1
  $86AA  D0                         INC
  $86AB  B3                         PUSHL
  $86AC  32                         PUSH_quick   ; inline operand = 2
  $86AD  E9 97 85 08                CALL_abs_imm1          $8597 {bytecode}, $08
  $86B1  D8 EB 86                   JUMPF_abs              $86EB
  $86B4  01                         LOADL_quick   ; inline operand = 1
  $86B5  D0                         INC
  $86B6  D6 92 86                   JUMP_abs               $8692
 >$86B9  02                         LOADL_quick   ; inline operand = 2
  $86BA  5D                         LOADR_qimm   ; inline operand = 13
  $86BB  C1                         CMPNE
  $86BC  D8 EB 86                   JUMPF_abs              $86EB
  $86BF  DE F0 FF                   LEAL_far               $FFF0
  $86C2  B3                         PUSHL
  $86C3  33                         PUSH_quick   ; inline operand = 3
  $86C4  31                         PUSH_quick   ; inline operand = 1
  $86C5  02                         LOADL_quick   ; inline operand = 2
  $86C6  D0                         INC
  $86C7  B3                         PUSHL
  $86C8  E9 97 85 08                CALL_abs_imm1          $8597 {bytecode}, $08
  $86CC  D8 EB 86                   JUMPF_abs              $86EB
  $86CF  02                         LOADL_quick   ; inline operand = 2
  $86D0  D0                         INC
  $86D1  D6 EA 86                   JUMP_abs               $86EA
 >$86D4  02                         LOADL_quick   ; inline operand = 2
  $86D5  D8 EB 86                   JUMPF_abs              $86EB
  $86D8  DE F0 FF                   LEAL_far               $FFF0
  $86DB  B3                         PUSHL
  $86DC  33                         PUSH_quick   ; inline operand = 3
  $86DD  31                         PUSH_quick   ; inline operand = 1
  $86DE  02                         LOADL_quick   ; inline operand = 2
  $86DF  D1                         DEC
  $86E0  B3                         PUSHL
  $86E1  E9 97 85 08                CALL_abs_imm1          $8597 {bytecode}, $08
  $86E5  D8 EB 86                   JUMPF_abs              $86EB
  $86E8  02                         LOADL_quick   ; inline operand = 2
  $86E9  D1                         DEC
 >$86EA  22                         STORE_quick   ; inline operand = 2
 >$86EB  81 E0                      LOADL_near             $E0
  $86ED  51                         LOADR_qimm   ; inline operand = 1
  $86EE  C0                         CMPEQ
  $86EF  D7 F9 86                   JUMPT_abs              $86F9
  $86F2  81 E0                      LOADL_near             $E0
  $86F4  52                         LOADR_qimm   ; inline operand = 2
  $86F5  C0                         CMPEQ
  $86F6  D8 55 86                   JUMPF_abs              $8655
 >$86F9  AC A8 80                   CALL_abs               $80A8 {bytecode}
  $86FC  81 E0                      LOADL_near             $E0
  $86FE  51                         LOADR_qimm   ; inline operand = 1
  $86FF  C0                         CMPEQ
  $8700  D7 96 86                   JUMPT_abs              $8696
  $8703  40                         LOADL_qimm   ; inline operand = 0
  $8704  CF                         RETURN

; ============================================================
; sub $8705   (frame_off=-6, body @ $870A)   [PRG $20705]
; ============================================================
  $870A  8A 62 66                   LOADL_imm2             $6662
  $870D  2A                         STORE_quick   ; inline operand = 10
  $870E  AC E8 B2                   CALL_abs               $B2E8 {native}
  $8711  61                         PUSH_qimm   ; inline operand = 1
  $8712  8E A9 96                   PUSH_imm2              $96A9
  $8715  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8719  DE FE FF                   LEAL_far               $FFFE
  $871C  B3                         PUSHL
  $871D  DE FF FF                   LEAL_far               $FFFF
  $8720  B3                         PUSHL
  $8721  E9 C2 85 04                CALL_abs_imm1          $85C2 {bytecode}, $04
  $8725  29                         STORE_quick   ; inline operand = 9
  $8726  09                         LOADL_quick   ; inline operand = 9
  $8727  D8 B8 87                   JUMPF_abs              $87B8
  $872A  AC 4B B2                   CALL_abs               $B24B {native}
  $872D  61                         PUSH_qimm   ; inline operand = 1
  $872E  8E C0 96                   PUSH_imm2              $96C0
  $8731  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8735  AC 9F CD                   CALL_abs               $CD9F {native}
  $8738  D8 B6 87                   JUMPF_abs              $87B6
  $873B  60                         PUSH_qimm   ; inline operand = 0
  $873C  0A                         LOADL_quick   ; inline operand = 10
  $873D  73                         ADD_qimm   ; inline operand = 3
  $873E  D3                         BYTE_DEREF
  $873F  B3                         PUSHL
  $8740  0A                         LOADL_quick   ; inline operand = 10
  $8741  72                         ADD_qimm   ; inline operand = 2
  $8742  D3                         BYTE_DEREF
  $8743  B3                         PUSHL
  $8744  E9 18 A9 06                CALL_abs_imm1          $A918 {native}, $06
  $8748  0A                         LOADL_quick   ; inline operand = 10
  $8749  73                         ADD_qimm   ; inline operand = 3
  $874A  D3                         BYTE_DEREF
  $874B  B3                         PUSHL
  $874C  0A                         LOADL_quick   ; inline operand = 10
  $874D  72                         ADD_qimm   ; inline operand = 2
  $874E  D3                         BYTE_DEREF
  $874F  5E                         LOADR_qimm   ; inline operand = 14
  $8750  B5                         MULT
  $8751  B4                         POPR
  $8752  BB                         ADD
  $8753  8C B6 72                   LOADR_imm2             $72B6
  $8756  BB                         ADD
  $8757  D3                         BYTE_DEREF
  $8758  8C FF 00                   LOADR_imm2             $00FF
  $875B  C0                         CMPEQ
  $875C  D8 7A 87                   JUMPF_abs              $877A
  $875F  0A                         LOADL_quick   ; inline operand = 10
  $8760  D3                         BYTE_DEREF
  $8761  53                         LOADR_qimm   ; inline operand = 3
  $8762  BA                         UMOD
  $8763  B3                         PUSHL
  $8764  0A                         LOADL_quick   ; inline operand = 10
  $8765  D0                         INC
  $8766  D3                         BYTE_DEREF
  $8767  53                         LOADR_qimm   ; inline operand = 3
  $8768  BA                         UMOD
  $8769  53                         LOADR_qimm   ; inline operand = 3
  $876A  B5                         MULT
  $876B  B4                         POPR
  $876C  BB                         ADD
  $876D  B3                         PUSHL
  $876E  0A                         LOADL_quick   ; inline operand = 10
  $876F  73                         ADD_qimm   ; inline operand = 3
  $8770  D3                         BYTE_DEREF
  $8771  B3                         PUSHL
  $8772  0A                         LOADL_quick   ; inline operand = 10
  $8773  72                         ADD_qimm   ; inline operand = 2
  $8774  D3                         BYTE_DEREF
  $8775  B3                         PUSHL
  $8776  E9 DD AC 06                CALL_abs_imm1          $ACDD {native}, $06
 >$877A  8D 30                      BYTE_PUSH_imm1         +48
  $877C  0A                         LOADL_quick   ; inline operand = 10
  $877D  7F                         ADD_qimm   ; inline operand = 15
  $877E  B4                         POPR
  $877F  B3                         PUSHL
  $8780  D3                         BYTE_DEREF
  $8781  DB                         OR
  $8782  D4                         BYTE_POPSTORE
  $8783  8E FE 00                   PUSH_imm2              $00FE
  $8786  0A                         LOADL_quick   ; inline operand = 10
  $8787  7F                         ADD_qimm   ; inline operand = 15
  $8788  B4                         POPR
  $8789  B3                         PUSHL
  $878A  D3                         BYTE_DEREF
  $878B  DA                         AND
  $878C  D4                         BYTE_POPSTORE
  $878D  0A                         LOADL_quick   ; inline operand = 10
  $878E  72                         ADD_qimm   ; inline operand = 2
  $878F  B3                         PUSHL
  $8790  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8793  D4                         BYTE_POPSTORE
  $8794  0A                         LOADL_quick   ; inline operand = 10
  $8795  73                         ADD_qimm   ; inline operand = 3
  $8796  B3                         PUSHL
  $8797  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $879A  D4                         BYTE_POPSTORE
  $879B  64                         PUSH_qimm   ; inline operand = 4
  $879C  65                         PUSH_qimm   ; inline operand = 5
  $879D  6C                         PUSH_qimm   ; inline operand = 12
  $879E  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $87A2  A5 6A 66                   BYTE_LOADL_abs         $666A
  $87A5  B3                         PUSHL
  $87A6  A5 65 66                   BYTE_LOADL_abs         $6665
  $87A9  B3                         PUSHL
  $87AA  A5 64 66                   BYTE_LOADL_abs         $6664
  $87AD  B3                         PUSHL
  $87AE  E9 41 AD 06                CALL_abs_imm1          $AD41 {native}, $06
  $87B2  41                         LOADL_qimm   ; inline operand = 1
  $87B3  D6 B7 87                   JUMP_abs               $87B7
 >$87B6  40                         LOADL_qimm   ; inline operand = 0
 >$87B7  29                         STORE_quick   ; inline operand = 9
 >$87B8  09                         LOADL_quick   ; inline operand = 9
  $87B9  CF                         RETURN

; ============================================================
; sub $87BA   (frame_off=-16, body @ $87BF)   [PRG $207BA]
; ============================================================
  $87BF  A5 65 72                   BYTE_LOADL_abs         $7265
  $87C2  B3                         PUSHL
  $87C3  A5 63 72                   BYTE_LOADL_abs         $7263
  $87C6  53                         LOADR_qimm   ; inline operand = 3
  $87C7  B5                         MULT
  $87C8  B4                         POPR
  $87C9  BB                         ADD
  $87CA  27                         STORE_quick   ; inline operand = 7
  $87CB  A5 66 72                   BYTE_LOADL_abs         $7266
  $87CE  B3                         PUSHL
  $87CF  A5 64 72                   BYTE_LOADL_abs         $7264
  $87D2  53                         LOADR_qimm   ; inline operand = 3
  $87D3  B5                         MULT
  $87D4  B4                         POPR
  $87D5  BB                         ADD
  $87D6  26                         STORE_quick   ; inline operand = 6
  $87D7  8A 62 66                   LOADL_imm2             $6662
  $87DA  24                         STORE_quick   ; inline operand = 4
  $87DB  40                         LOADL_qimm   ; inline operand = 0
  $87DC  2B                         STORE_quick   ; inline operand = 11
  $87DD  40                         LOADL_qimm   ; inline operand = 0
  $87DE  D6 17 88                   JUMP_abs               $8817
 >$87E1  05                         LOADL_quick   ; inline operand = 5
  $87E2  D2                         LSHIFT1
  $87E3  D2                         LSHIFT1
  $87E4  8C 85 70                   LOADR_imm2             $7085
  $87E7  BB                         ADD
  $87E8  B0                         DEREF
  $87E9  B3                         PUSHL
  $87EA  04                         LOADL_quick   ; inline operand = 4
  $87EB  72                         ADD_qimm   ; inline operand = 2
  $87EC  D3                         BYTE_DEREF
  $87ED  B4                         POPR
  $87EE  BB                         ADD
  $87EF  2A                         STORE_quick   ; inline operand = 10
  $87F0  05                         LOADL_quick   ; inline operand = 5
  $87F1  D2                         LSHIFT1
  $87F2  D2                         LSHIFT1
  $87F3  8C 87 70                   LOADR_imm2             $7087
  $87F6  BB                         ADD
  $87F7  B0                         DEREF
  $87F8  B3                         PUSHL
  $87F9  04                         LOADL_quick   ; inline operand = 4
  $87FA  73                         ADD_qimm   ; inline operand = 3
  $87FB  D3                         BYTE_DEREF
  $87FC  B4                         POPR
  $87FD  BB                         ADD
  $87FE  29                         STORE_quick   ; inline operand = 9
  $87FF  39                         PUSH_quick   ; inline operand = 9
  $8800  3A                         PUSH_quick   ; inline operand = 10
  $8801  E9 D4 81 04                CALL_abs_imm1          $81D4 {bytecode}, $04
  $8805  D7 15 88                   JUMPT_abs              $8815
  $8808  39                         PUSH_quick   ; inline operand = 9
  $8809  3A                         PUSH_quick   ; inline operand = 10
  $880A  36                         PUSH_quick   ; inline operand = 6
  $880B  37                         PUSH_quick   ; inline operand = 7
  $880C  E9 05 D4 08                CALL_abs_imm1          $D405 (calc_pos_relative) {native}, $08
  $8810  D7 15 88                   JUMPT_abs              $8815
  $8813  41                         LOADL_qimm   ; inline operand = 1
  $8814  2B                         STORE_quick   ; inline operand = 11
 >$8815  05                         LOADL_quick   ; inline operand = 5
  $8816  D0                         INC
 >$8817  25                         STORE_quick   ; inline operand = 5
  $8818  05                         LOADL_quick   ; inline operand = 5
  $8819  58                         LOADR_qimm   ; inline operand = 8
  $881A  C6                         UCMPLT
  $881B  D7 E1 87                   JUMPT_abs              $87E1
  $881E  0B                         LOADL_quick   ; inline operand = 11
  $881F  D7 2E 88                   JUMPT_abs              $882E
  $8822  AC E8 B2                   CALL_abs               $B2E8 {native}
  $8825  8E ED 96                   PUSH_imm2              $96ED
  $8828  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $882C  40                         LOADL_qimm   ; inline operand = 0
  $882D  CF                         RETURN
 >$882E  62                         PUSH_qimm   ; inline operand = 2
  $882F  62                         PUSH_qimm   ; inline operand = 2
  $8830  8E D1 96                   PUSH_imm2              $96D1
  $8833  62                         PUSH_qimm   ; inline operand = 2
  $8834  60                         PUSH_qimm   ; inline operand = 0
  $8835  E9 EB A0 0A                CALL_abs_imm1          $A0EB {native}, $0A
  $8839  28                         STORE_quick   ; inline operand = 8
  $883A  08                         LOADL_quick   ; inline operand = 8
  $883B  8C FF 00                   LOADR_imm2             $00FF
  $883E  C0                         CMPEQ
  $883F  D8 44 88                   JUMPF_abs              $8844
  $8842  40                         LOADL_qimm   ; inline operand = 0
  $8843  CF                         RETURN
 >$8844  08                         LOADL_quick   ; inline operand = 8
  $8845  D2                         LSHIFT1
  $8846  8C D5 96                   LOADR_imm2             $96D5
  $8849  BB                         ADD
  $884A  B0                         DEREF
  $884B  DD                         CALLPTR
  $884C  CF                         RETURN

; ============================================================
; sub $884D   (frame_off=-6, body @ $8852)   [PRG $2084D]
; ============================================================
  $8852  0C                         LOADL_quick   ; inline operand = 12
  $8853  B0                         DEREF
  $8854  2A                         STORE_quick   ; inline operand = 10
  $8855  0D                         LOADL_quick   ; inline operand = 13
  $8856  B0                         DEREF
  $8857  29                         STORE_quick   ; inline operand = 9
 >$8858  39                         PUSH_quick   ; inline operand = 9
  $8859  3A                         PUSH_quick   ; inline operand = 10
  $885A  E9 36 80 04                CALL_abs_imm1          $8036 {bytecode}, $04
  $885E  66                         PUSH_qimm   ; inline operand = 6
  $885F  3B                         PUSH_quick   ; inline operand = 11
  $8860  E9 4D CE 04                CALL_abs_imm1          $CE4D {native}, $04
  $8864  AC F6 C7                   CALL_abs               $C7F6 {native}
  $8867  2B                         STORE_quick   ; inline operand = 11
  $8868  0B                         LOADL_quick   ; inline operand = 11
  $8869  D9 04 00 10 00 7E 88 20 00 C6 88 40 ... SWITCH_noncontig       count=4   ; .table 4 (key,target) + default (noncontiguous); SWITCH 16=>$887E 32=>$88C6 64=>$88EE 128=>$88E1 default=>$88B2
 >$887E  09                         LOADL_quick   ; inline operand = 9
  $887F  1F                         LOADR_quick   ; inline operand = 15
  $8880  C8                         UCMPGT
  $8881  D8 B2 88                   JUMPF_abs              $88B2
  $8884  09                         LOADL_quick   ; inline operand = 9
  $8885  D1                         DEC
  $8886  29                         STORE_quick   ; inline operand = 9
  $8887  09                         LOADL_quick   ; inline operand = 9
  $8888  54                         LOADR_qimm   ; inline operand = 4
  $8889  C0                         CMPEQ
  $888A  D8 B2 88                   JUMPF_abs              $88B2
  $888D  42                         LOADL_qimm   ; inline operand = 2
  $888E  A9 7D 73                   BYTE_STORE_abs         $737D (ui_shared_var_737d)
  $8891  8E E7 00                   PUSH_imm2              $00E7
 >$8894  60                         PUSH_qimm   ; inline operand = 0
  $8895  8D 12                      BYTE_PUSH_imm1         +18
  $8897  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $889B  A5 6A 66                   BYTE_LOADL_abs         $666A
  $889E  B3                         PUSHL
  $889F  A5 65 66                   BYTE_LOADL_abs         $6665
  $88A2  B3                         PUSHL
  $88A3  A5 64 66                   BYTE_LOADL_abs         $6664
  $88A6  B3                         PUSHL
  $88A7  E9 41 AD 06                CALL_abs_imm1          $AD41 {native}, $06
  $88AB  61                         PUSH_qimm   ; inline operand = 1
  $88AC  8D 11                      BYTE_PUSH_imm1         +17
  $88AE  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
 >$88B2  0B                         LOADL_quick   ; inline operand = 11
  $88B3  51                         LOADR_qimm   ; inline operand = 1
  $88B4  C0                         CMPEQ
  $88B5  D7 BE 88                   JUMPT_abs              $88BE
  $88B8  0B                         LOADL_quick   ; inline operand = 11
  $88B9  52                         LOADR_qimm   ; inline operand = 2
  $88BA  C0                         CMPEQ
  $88BB  D8 58 88                   JUMPF_abs              $8858
 >$88BE  3C                         PUSH_quick   ; inline operand = 12
  $88BF  0A                         LOADL_quick   ; inline operand = 10
  $88C0  B1                         POPSTORE
  $88C1  3D                         PUSH_quick   ; inline operand = 13
  $88C2  09                         LOADL_quick   ; inline operand = 9
  $88C3  B1                         POPSTORE
  $88C4  0B                         LOADL_quick   ; inline operand = 11
  $88C5  CF                         RETURN
 >$88C6  09                         LOADL_quick   ; inline operand = 9
  $88C7  83 15                      LOADR_near             $15
  $88C9  C6                         UCMPLT
  $88CA  D8 B2 88                   JUMPF_abs              $88B2
  $88CD  09                         LOADL_quick   ; inline operand = 9
  $88CE  D0                         INC
  $88CF  29                         STORE_quick   ; inline operand = 9
  $88D0  09                         LOADL_quick   ; inline operand = 9
  $88D1  59                         LOADR_qimm   ; inline operand = 9
  $88D2  C0                         CMPEQ
  $88D3  D8 B2 88                   JUMPF_abs              $88B2
  $88D6  41                         LOADL_qimm   ; inline operand = 1
  $88D7  A9 7D 73                   BYTE_STORE_abs         $737D (ui_shared_var_737d)
  $88DA  67                         PUSH_qimm   ; inline operand = 7
  $88DB  D6 94 88                   JUMP_abs               $8894
  $88DE  D6 B2 88                   JUMP_abs               $88B2
 >$88E1  0A                         LOADL_quick   ; inline operand = 10
  $88E2  83 13                      LOADR_near             $13
  $88E4  C6                         UCMPLT
  $88E5  D8 B2 88                   JUMPF_abs              $88B2
  $88E8  0A                         LOADL_quick   ; inline operand = 10
  $88E9  D0                         INC
 >$88EA  2A                         STORE_quick   ; inline operand = 10
  $88EB  D6 B2 88                   JUMP_abs               $88B2
 >$88EE  0A                         LOADL_quick   ; inline operand = 10
  $88EF  1E                         LOADR_quick   ; inline operand = 14
  $88F0  C8                         UCMPGT
  $88F1  D8 B2 88                   JUMPF_abs              $88B2
  $88F4  0A                         LOADL_quick   ; inline operand = 10
  $88F5  D1                         DEC
  $88F6  D6 EA 88                   JUMP_abs               $88EA

; ============================================================
; sub $88F9   (frame_off=-8, body @ $88FE)   [PRG $208F9]
; ============================================================
  $88FE  0F                         LOADL_quick   ; inline operand = 15
  $88FF  2A                         STORE_quick   ; inline operand = 10
  $8900  1E                         LOADR_quick   ; inline operand = 14
  $8901  BB                         ADD
  $8902  29                         STORE_quick   ; inline operand = 9
  $8903  40                         LOADL_qimm   ; inline operand = 0
  $8904  2B                         STORE_quick   ; inline operand = 11
  $8905  D6 2E 89                   JUMP_abs               $892E
 >$8908  0F                         LOADL_quick   ; inline operand = 15
  $8909  D3                         BYTE_DEREF
  $890A  54                         LOADR_qimm   ; inline operand = 4
  $890B  BD                         LSHIFT
  $890C  8C 62 66                   LOADR_imm2             $6662
  $890F  BB                         ADD
  $8910  28                         STORE_quick   ; inline operand = 8
  $8911  08                         LOADL_quick   ; inline operand = 8
  $8912  72                         ADD_qimm   ; inline operand = 2
  $8913  D3                         BYTE_DEREF
  $8914  1C                         LOADR_quick   ; inline operand = 12
  $8915  C0                         CMPEQ
  $8916  D8 2B 89                   JUMPF_abs              $892B
  $8919  08                         LOADL_quick   ; inline operand = 8
  $891A  73                         ADD_qimm   ; inline operand = 3
  $891B  D3                         BYTE_DEREF
  $891C  1D                         LOADR_quick   ; inline operand = 13
  $891D  C0                         CMPEQ
  $891E  D8 2B 89                   JUMPF_abs              $892B
  $8921  3A                         PUSH_quick   ; inline operand = 10
  $8922  0F                         LOADL_quick   ; inline operand = 15
  $8923  D3                         BYTE_DEREF
  $8924  D4                         BYTE_POPSTORE
  $8925  0A                         LOADL_quick   ; inline operand = 10
  $8926  D0                         INC
  $8927  2A                         STORE_quick   ; inline operand = 10
  $8928  0B                         LOADL_quick   ; inline operand = 11
  $8929  D0                         INC
  $892A  2B                         STORE_quick   ; inline operand = 11
 >$892B  0F                         LOADL_quick   ; inline operand = 15
  $892C  D0                         INC
  $892D  2F                         STORE_quick   ; inline operand = 15
 >$892E  0F                         LOADL_quick   ; inline operand = 15
  $892F  19                         LOADR_quick   ; inline operand = 9
  $8930  C6                         UCMPLT
  $8931  D7 08 89                   JUMPT_abs              $8908
  $8934  0B                         LOADL_quick   ; inline operand = 11
  $8935  CF                         RETURN

; ============================================================
; sub $8936   (frame_off=-8, body @ $893B)   [PRG $20936]
; ============================================================
  $893B  0C                         LOADL_quick   ; inline operand = 12
  $893C  51                         LOADR_qimm   ; inline operand = 1
  $893D  C8                         UCMPGT
  $893E  D8 97 89                   JUMPF_abs              $8997
  $8941  0D                         LOADL_quick   ; inline operand = 13
  $8942  2B                         STORE_quick   ; inline operand = 11
  $8943  29                         STORE_quick   ; inline operand = 9
  $8944  1C                         LOADR_quick   ; inline operand = 12
  $8945  BB                         ADD
  $8946  2A                         STORE_quick   ; inline operand = 10
  $8947  D6 5F 89                   JUMP_abs               $895F
 >$894A  0B                         LOADL_quick   ; inline operand = 11
  $894B  D3                         BYTE_DEREF
  $894C  D7 55 89                   JUMPT_abs              $8955
  $894F  0C                         LOADL_quick   ; inline operand = 12
  $8950  D1                         DEC
  $8951  2C                         STORE_quick   ; inline operand = 12
  $8952  D6 5C 89                   JUMP_abs               $895C
 >$8955  39                         PUSH_quick   ; inline operand = 9
  $8956  0B                         LOADL_quick   ; inline operand = 11
  $8957  D3                         BYTE_DEREF
  $8958  D4                         BYTE_POPSTORE
  $8959  09                         LOADL_quick   ; inline operand = 9
  $895A  D0                         INC
  $895B  29                         STORE_quick   ; inline operand = 9
 >$895C  0B                         LOADL_quick   ; inline operand = 11
  $895D  D0                         INC
  $895E  2B                         STORE_quick   ; inline operand = 11
 >$895F  0B                         LOADL_quick   ; inline operand = 11
  $8960  1A                         LOADR_quick   ; inline operand = 10
  $8961  C6                         UCMPLT
  $8962  D7 4A 89                   JUMPT_abs              $894A
  $8965  AC 4B B2                   CALL_abs               $B24B {native}
  $8968  0C                         LOADL_quick   ; inline operand = 12
  $8969  51                         LOADR_qimm   ; inline operand = 1
  $896A  C8                         UCMPGT
  $896B  D8 90 89                   JUMPF_abs              $8990
  $896E  3C                         PUSH_quick   ; inline operand = 12
  $896F  8E 08 97                   PUSH_imm2              $9708
  $8972  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8976  3C                         PUSH_quick   ; inline operand = 12
  $8977  8E 24 97                   PUSH_imm2              $9724
  $897A  E9 20 CD 04                CALL_abs_imm1          $CD20 {native}, $04
  $897E  28                         STORE_quick   ; inline operand = 8
  $897F  08                         LOADL_quick   ; inline operand = 8
  $8980  8B FF                      BYTE_LOADR_imm1        -1
  $8982  C0                         CMPEQ
  $8983  D8 8A 89                   JUMPF_abs              $898A
  $8986  8A FF 00                   LOADL_imm2             $00FF
  $8989  CF                         RETURN
 >$898A  0D                         LOADL_quick   ; inline operand = 13
  $898B  18                         LOADR_quick   ; inline operand = 8
  $898C  BB                         ADD
  $898D  D1                         DEC
  $898E  D3                         BYTE_DEREF
  $898F  CF                         RETURN
 >$8990  8E 2E 97                   PUSH_imm2              $972E
  $8993  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
 >$8997  0D                         LOADL_quick   ; inline operand = 13
  $8998  D3                         BYTE_DEREF
  $8999  CF                         RETURN

; ============================================================
; sub $899A   (frame_off=-20, body @ $899F)   [PRG $2099A]
; ============================================================
  $899F  8A 62 66                   LOADL_imm2             $6662
  $89A2  22                         STORE_quick   ; inline operand = 2
  $89A3  02                         LOADL_quick   ; inline operand = 2
  $89A4  7B                         ADD_qimm   ; inline operand = 11
  $89A5  B0                         DEREF
  $89A6  52                         LOADR_qimm   ; inline operand = 2
  $89A7  DA                         AND
  $89A8  D7 B7 89                   JUMPT_abs              $89B7
  $89AB  AC E8 B2                   CALL_abs               $B2E8 {native}
  $89AE  8E 5D 97                   PUSH_imm2              $975D
  $89B1  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $89B5  40                         LOADL_qimm   ; inline operand = 0
  $89B6  CF                         RETURN
 >$89B7  AC 91 D7                   CALL_abs               $D791 {native}
  $89BA  25                         STORE_quick   ; inline operand = 5
  $89BB  02                         LOADL_quick   ; inline operand = 2
  $89BC  D3                         BYTE_DEREF
  $89BD  24                         STORE_quick   ; inline operand = 4
  $89BE  02                         LOADL_quick   ; inline operand = 2
  $89BF  D0                         INC
  $89C0  D3                         BYTE_DEREF
  $89C1  23                         STORE_quick   ; inline operand = 3
  $89C2  05                         LOADL_quick   ; inline operand = 5
  $89C3  8C FF 00                   LOADR_imm2             $00FF
  $89C6  C0                         CMPEQ
  $89C7  D8 D2 89                   JUMPF_abs              $89D2
  $89CA  A5 C1 6B                   BYTE_LOADL_abs         $6BC1
  $89CD  8F 3C                      BYTE_ADD_imm1          +60
  $89CF  D6 E0 89                   JUMP_abs               $89E0
 >$89D2  A5 C1 6B                   BYTE_LOADL_abs         $6BC1
  $89D5  B3                         PUSHL
  $89D6  05                         LOADL_quick   ; inline operand = 5
  $89D7  5A                         LOADR_qimm   ; inline operand = 10
  $89D8  B5                         MULT
  $89D9  8C C1 6B                   LOADR_imm2             $6BC1
  $89DC  BB                         ADD
  $89DD  D3                         BYTE_DEREF
  $89DE  B4                         POPR
  $89DF  BB                         ADD
 >$89E0  26                         STORE_quick   ; inline operand = 6
  $89E1  8E B4 00                   PUSH_imm2              $00B4
  $89E4  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $89E8  B3                         PUSHL
  $89E9  06                         LOADL_quick   ; inline operand = 6
  $89EA  B4                         POPR
  $89EB  C6                         UCMPLT
  $89EC  D8 26 8A                   JUMPF_abs              $8A26
  $89EF  65                         PUSH_qimm   ; inline operand = 5
  $89F0  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $89F4  14                         LOADR_quick   ; inline operand = 4
  $89F5  BB                         ADD
  $89F6  8F FE                      BYTE_ADD_imm1          -2
  $89F8  24                         STORE_quick   ; inline operand = 4
  $89F9  63                         PUSH_qimm   ; inline operand = 3
  $89FA  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $89FE  13                         LOADR_quick   ; inline operand = 3
  $89FF  BB                         ADD
  $8A00  D1                         DEC
  $8A01  23                         STORE_quick   ; inline operand = 3
  $8A02  04                         LOADL_quick   ; inline operand = 4
  $8A03  50                         LOADR_qimm   ; inline operand = 0
  $8A04  C2                         SCMPLT
  $8A05  D8 0C 8A                   JUMPF_abs              $8A0C
  $8A08  40                         LOADL_qimm   ; inline operand = 0
  $8A09  D6 13 8A                   JUMP_abs               $8A13
 >$8A0C  8D 47                      BYTE_PUSH_imm1         +71
  $8A0E  34                         PUSH_quick   ; inline operand = 4
  $8A0F  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
 >$8A13  24                         STORE_quick   ; inline operand = 4
  $8A14  03                         LOADL_quick   ; inline operand = 3
  $8A15  50                         LOADR_qimm   ; inline operand = 0
  $8A16  C2                         SCMPLT
  $8A17  D8 1E 8A                   JUMPF_abs              $8A1E
  $8A1A  40                         LOADL_qimm   ; inline operand = 0
  $8A1B  D6 25 8A                   JUMP_abs               $8A25
 >$8A1E  8D 23                      BYTE_PUSH_imm1         +35
  $8A20  33                         PUSH_quick   ; inline operand = 3
  $8A21  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
 >$8A25  23                         STORE_quick   ; inline operand = 3
 >$8A26  03                         LOADL_quick   ; inline operand = 3
  $8A27  8B 12                      BYTE_LOADR_imm1        +18
  $8A29  B6                         SDIV
  $8A2A  2B                         STORE_quick   ; inline operand = 11
  $8A2B  0B                         LOADL_quick   ; inline operand = 11
  $8A2C  D8 37 8A                   JUMPF_abs              $8A37
  $8A2F  03                         LOADL_quick   ; inline operand = 3
  $8A30  55                         LOADR_qimm   ; inline operand = 5
  $8A31  B5                         MULT
  $8A32  8F A6                      BYTE_ADD_imm1          -90
  $8A34  D6 3F 8A                   JUMP_abs               $8A3F
 >$8A37  03                         LOADL_quick   ; inline operand = 3
  $8A38  55                         LOADR_qimm   ; inline operand = 5
  $8A39  B5                         MULT
  $8A3A  B3                         PUSHL
  $8A3B  89 5A                      BYTE_LOADL_imm1        +90
  $8A3D  B4                         POPR
  $8A3E  BC                         SUB
 >$8A3F  29                         STORE_quick   ; inline operand = 9
  $8A40  04                         LOADL_quick   ; inline operand = 4
  $8A41  8F 26                      BYTE_ADD_imm1          +38
  $8A43  8B 48                      BYTE_LOADR_imm1        +72
  $8A45  B9                         SMOD
  $8A46  27                         STORE_quick   ; inline operand = 7
  $8A47  07                         LOADL_quick   ; inline operand = 7
  $8A48  8B 24                      BYTE_LOADR_imm1        +36
  $8A4A  B8                         UDIV
  $8A4B  2A                         STORE_quick   ; inline operand = 10
  $8A4C  0A                         LOADL_quick   ; inline operand = 10
  $8A4D  D8 57 8A                   JUMPF_abs              $8A57
  $8A50  89 48                      BYTE_LOADL_imm1        +72
  $8A52  17                         LOADR_quick   ; inline operand = 7
  $8A53  BC                         SUB
  $8A54  D6 58 8A                   JUMP_abs               $8A58
 >$8A57  07                         LOADL_quick   ; inline operand = 7
 >$8A58  55                         LOADR_qimm   ; inline operand = 5
  $8A59  B5                         MULT
  $8A5A  28                         STORE_quick   ; inline operand = 8
  $8A5B  AC E8 B2                   CALL_abs               $B2E8 {native}
  $8A5E  38                         PUSH_quick   ; inline operand = 8
  $8A5F  0A                         LOADL_quick   ; inline operand = 10
  $8A60  D2                         LSHIFT1
  $8A61  8C 51 97                   LOADR_imm2             $9751
  $8A64  BB                         ADD
  $8A65  B0                         DEREF
  $8A66  B3                         PUSHL
  $8A67  39                         PUSH_quick   ; inline operand = 9
  $8A68  0B                         LOADL_quick   ; inline operand = 11
  $8A69  D2                         LSHIFT1
  $8A6A  8C 4D 97                   LOADR_imm2             $974D
  $8A6D  BB                         ADD
  $8A6E  B0                         DEREF
  $8A6F  B3                         PUSHL
  $8A70  8E 75 97                   PUSH_imm2              $9775
  $8A73  E9 99 C7 0A                CALL_abs_imm1          $C799 {native}, $0A
  $8A77  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8A7A  41                         LOADL_qimm   ; inline operand = 1
  $8A7B  CF                         RETURN

; ============================================================
; sub $8A7C   (frame_off=+0, body @ $8A81)   [PRG $20A7C]
; ============================================================
  $8A81  0C                         LOADL_quick   ; inline operand = 12
  $8A82  72                         ADD_qimm   ; inline operand = 2
  $8A83  D3                         BYTE_DEREF
  $8A84  57                         LOADR_qimm   ; inline operand = 7
  $8A85  C6                         UCMPLT
  $8A86  D8 8E 8A                   JUMPF_abs              $8A8E
  $8A89  89 12                      BYTE_LOADL_imm1        +18
  $8A8B  D6 8F 8A                   JUMP_abs               $8A8F
 >$8A8E  41                         LOADL_qimm   ; inline operand = 1
 >$8A8F  CF                         RETURN

; ============================================================
; sub $8A90   (frame_off=+0, body @ $8A95)   [PRG $20A90]
; ============================================================
  $8A95  A5 7D 73                   BYTE_LOADL_abs         $737D (ui_shared_var_737d)
  $8A98  51                         LOADR_qimm   ; inline operand = 1
  $8A99  C0                         CMPEQ
  $8A9A  D8 A1 8A                   JUMPF_abs              $8AA1
  $8A9D  4B                         LOADL_qimm   ; inline operand = 11
  $8A9E  D6 A2 8A                   JUMP_abs               $8AA2
 >$8AA1  41                         LOADL_qimm   ; inline operand = 1
 >$8AA2  CF                         RETURN

; ============================================================
; sub $8AA3   (frame_off=-29, body @ $8AA8)   [PRG $20AA3]
; ============================================================
  $8AA8  0C                         LOADL_quick   ; inline operand = 12
  $8AA9  54                         LOADR_qimm   ; inline operand = 4
  $8AAA  BD                         LSHIFT
  $8AAB  8C 62 66                   LOADR_imm2             $6662
  $8AAE  BB                         ADD
  $8AAF  85 E5                      STORE_near             $E5
  $8AB1  87 E5                      PUSH_near              $E5
  $8AB3  E9 7C 8A 02                CALL_abs_imm1          $8A7C {bytecode}, $02
  $8AB7  85 ED                      STORE_near             $ED
  $8AB9  AC 90 8A                   CALL_abs               $8A90 {bytecode}
  $8ABC  85 EB                      STORE_near             $EB
  $8ABE  DE F7 FF                   LEAL_far               $FFF7
  $8AC1  B3                         PUSHL
  $8AC2  3C                         PUSH_quick   ; inline operand = 12
  $8AC3  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $8AC7  85 F1                      STORE_near             $F1
  $8AC9  0C                         LOADL_quick   ; inline operand = 12
  $8ACA  D1                         DEC
  $8ACB  55                         LOADR_qimm   ; inline operand = 5
  $8ACC  B8                         UDIV
  $8ACD  85 E9                      STORE_near             $E9
  $8ACF  81 F1                      LOADL_near             $F1
  $8AD1  7A                         ADD_qimm   ; inline operand = 10
  $8AD2  85 F3                      STORE_near             $F3
  $8AD4  87 F3                      PUSH_near              $F3
  $8AD6  6D                         PUSH_qimm   ; inline operand = 13
  $8AD7  87 EB                      PUSH_near              $EB
  $8AD9  87 ED                      PUSH_near              $ED
  $8ADB  E9 02 A5 08                CALL_abs_imm1          $A502 {native}, $08
  $8ADF  87 F3                      PUSH_near              $F3
  $8AE1  6D                         PUSH_qimm   ; inline operand = 13
  $8AE2  87 EB                      PUSH_near              $EB
  $8AE4  87 ED                      PUSH_near              $ED
  $8AE6  E9 34 B6 08                CALL_abs_imm1          $B634 {native}, $08
  $8AEA  85 E3                      STORE_near             $E3
  $8AEC  60                         PUSH_qimm   ; inline operand = 0
  $8AED  60                         PUSH_qimm   ; inline operand = 0
  $8AEE  87 F3                      PUSH_near              $F3
  $8AF0  6D                         PUSH_qimm   ; inline operand = 13
  $8AF1  87 EB                      PUSH_near              $EB
  $8AF3  87 ED                      PUSH_near              $ED
  $8AF5  E9 92 A6 0C                CALL_abs_imm1          $A692 {native}, $0C
  $8AF9  81 EB                      LOADL_near             $EB
  $8AFB  D0                         INC
  $8AFC  85 F3                      STORE_near             $F3
  $8AFE  B3                         PUSHL
  $8AFF  81 ED                      LOADL_near             $ED
  $8B01  D0                         INC
  $8B02  B3                         PUSHL
  $8B03  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8B07  81 E9                      LOADL_near             $E9
  $8B09  D2                         LSHIFT1
  $8B0A  8C 9B 97                   LOADR_imm2             $979B
  $8B0D  BB                         ADD
  $8B0E  B0                         DEREF
  $8B0F  B3                         PUSHL
  $8B10  8E 06 98                   PUSH_imm2              $9806
  $8B13  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $8B17  81 F3                      LOADL_near             $F3
  $8B19  D0                         INC
  $8B1A  85 F3                      STORE_near             $F3
  $8B1C  B3                         PUSHL
  $8B1D  81 ED                      LOADL_near             $ED
  $8B1F  D0                         INC
  $8B20  B3                         PUSHL
  $8B21  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8B25  0C                         LOADL_quick   ; inline operand = 12
  $8B26  D1                         DEC
  $8B27  55                         LOADR_qimm   ; inline operand = 5
  $8B28  BA                         UMOD
  $8B29  53                         LOADR_qimm   ; inline operand = 3
  $8B2A  B8                         UDIV
  $8B2B  D2                         LSHIFT1
  $8B2C  8C A3 97                   LOADR_imm2             $97A3
  $8B2F  BB                         ADD
  $8B30  B0                         DEREF
  $8B31  B3                         PUSHL
  $8B32  8E 0F 98                   PUSH_imm2              $980F
  $8B35  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $8B39  81 F3                      LOADL_near             $F3
  $8B3B  D0                         INC
  $8B3C  85 F3                      STORE_near             $F3
  $8B3E  B3                         PUSHL
  $8B3F  81 ED                      LOADL_near             $ED
  $8B41  D0                         INC
  $8B42  B3                         PUSHL
  $8B43  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8B47  3C                         PUSH_quick   ; inline operand = 12
  $8B48  8E 20 88                   PUSH_imm2              $8820
  $8B4B  8E DE 00                   PUSH_imm2              $00DE
  $8B4E  61                         PUSH_qimm   ; inline operand = 1
  $8B4F  E9 3A DE 08                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $08
  $8B53  B3                         PUSHL
  $8B54  8E 12 98                   PUSH_imm2              $9812
  $8B57  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8B5B  42                         LOADL_qimm   ; inline operand = 2
  $8B5C  CD                         SWAP
  $8B5D  81 F3                      LOADL_near             $F3
  $8B5F  BB                         ADD
  $8B60  85 F3                      STORE_near             $F3
  $8B62  B3                         PUSHL
  $8B63  81 ED                      LOADL_near             $ED
  $8B65  D0                         INC
  $8B66  B3                         PUSHL
  $8B67  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8B6B  81 E5                      LOADL_near             $E5
  $8B6D  78                         ADD_qimm   ; inline operand = 8
  $8B6E  D3                         BYTE_DEREF
  $8B6F  57                         LOADR_qimm   ; inline operand = 7
  $8B70  DA                         AND
  $8B71  D2                         LSHIFT1
  $8B72  8C A7 97                   LOADR_imm2             $97A7
  $8B75  BB                         ADD
  $8B76  B0                         DEREF
  $8B77  B3                         PUSHL
  $8B78  8E 1C 98                   PUSH_imm2              $981C
  $8B7B  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8B7F  42                         LOADL_qimm   ; inline operand = 2
  $8B80  CD                         SWAP
  $8B81  81 F3                      LOADL_near             $F3
  $8B83  BB                         ADD
  $8B84  85 F3                      STORE_near             $F3
  $8B86  B3                         PUSHL
  $8B87  81 ED                      LOADL_near             $ED
  $8B89  D0                         INC
  $8B8A  B3                         PUSHL
  $8B8B  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8B8F  61                         PUSH_qimm   ; inline operand = 1
  $8B90  8E 27 98                   PUSH_imm2              $9827
  $8B93  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8B97  DE F7 FF                   LEAL_far               $FFF7
  $8B9A  2B                         STORE_quick   ; inline operand = 11
  $8B9B  83 F1                      LOADR_near             $F1
  $8B9D  BB                         ADD
  $8B9E  2A                         STORE_quick   ; inline operand = 10
  $8B9F  D6 D4 8B                   JUMP_abs               $8BD4
 >$8BA2  0B                         LOADL_quick   ; inline operand = 11
  $8BA3  D3                         BYTE_DEREF
  $8BA4  57                         LOADR_qimm   ; inline operand = 7
  $8BA5  B5                         MULT
  $8BA6  8C 90 6C                   LOADR_imm2             $6C90
  $8BA9  BB                         ADD
  $8BAA  85 E7                      STORE_near             $E7
  $8BAC  81 E7                      LOADL_near             $E7
  $8BAE  76                         ADD_qimm   ; inline operand = 6
  $8BAF  D3                         BYTE_DEREF
  $8BB0  5F                         LOADR_qimm   ; inline operand = 15
  $8BB1  DA                         AND
  $8BB2  B3                         PUSHL
  $8BB3  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8BB7  85 F5                      STORE_near             $F5
  $8BB9  81 F3                      LOADL_near             $F3
  $8BBB  72                         ADD_qimm   ; inline operand = 2
  $8BBC  B3                         PUSHL
  $8BBD  81 ED                      LOADL_near             $ED
  $8BBF  72                         ADD_qimm   ; inline operand = 2
  $8BC0  B3                         PUSHL
  $8BC1  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8BC5  87 F5                      PUSH_near              $F5
  $8BC7  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8BCB  81 F3                      LOADL_near             $F3
  $8BCD  D0                         INC
  $8BCE  85 F3                      STORE_near             $F3
  $8BD0  D1                         DEC
  $8BD1  0B                         LOADL_quick   ; inline operand = 11
  $8BD2  D0                         INC
  $8BD3  2B                         STORE_quick   ; inline operand = 11
 >$8BD4  0B                         LOADL_quick   ; inline operand = 11
  $8BD5  1A                         LOADR_quick   ; inline operand = 10
  $8BD6  C6                         UCMPLT
  $8BD7  D7 A2 8B                   JUMPT_abs              $8BA2
  $8BDA  AC 91 D7                   CALL_abs               $D791 {native}
  $8BDD  85 F3                      STORE_near             $F3
  $8BDF  A5 C1 6B                   BYTE_LOADL_abs         $6BC1
  $8BE2  85 EF                      STORE_near             $EF
  $8BE4  81 F3                      LOADL_near             $F3
  $8BE6  8C FF 00                   LOADR_imm2             $00FF
  $8BE9  C0                         CMPEQ
  $8BEA  D8 F2 8B                   JUMPF_abs              $8BF2
  $8BED  89 3C                      BYTE_LOADL_imm1        +60
  $8BEF  D6 FB 8B                   JUMP_abs               $8BFB
 >$8BF2  81 F3                      LOADL_near             $F3
  $8BF4  5A                         LOADR_qimm   ; inline operand = 10
  $8BF5  B5                         MULT
  $8BF6  8C C1 6B                   LOADR_imm2             $6BC1
  $8BF9  BB                         ADD
  $8BFA  D3                         BYTE_DEREF
 >$8BFB  CD                         SWAP
  $8BFC  81 EF                      LOADL_near             $EF
  $8BFE  BB                         ADD
  $8BFF  85 EF                      STORE_near             $EF
  $8C01  AC 4B B2                   CALL_abs               $B24B {native}
  $8C04  8D 50                      BYTE_PUSH_imm1         +80
  $8C06  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8C0A  8F 64                      BYTE_ADD_imm1          +100
  $8C0C  B3                         PUSHL
  $8C0D  81 EF                      LOADL_near             $EF
  $8C0F  B4                         POPR
  $8C10  C9                         UCMPGE
  $8C11  D8 4B 8C                   JUMPF_abs              $8C4B
  $8C14  60                         PUSH_qimm   ; inline operand = 0
  $8C15  8E 2D 98                   PUSH_imm2              $982D
  $8C18  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8C1C  0C                         LOADL_quick   ; inline operand = 12
  $8C1D  8F 14                      BYTE_ADD_imm1          +20
  $8C1F  57                         LOADR_qimm   ; inline operand = 7
  $8C20  B5                         MULT
  $8C21  8C 42 65                   LOADR_imm2             $6542
  $8C24  BB                         ADD
  $8C25  B0                         DEREF
  $8C26  B3                         PUSHL
  $8C27  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8C2B  60                         PUSH_qimm   ; inline operand = 0
  $8C2C  8E 3C 98                   PUSH_imm2              $983C
  $8C2F  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8C33  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $8C36  0C                         LOADL_quick   ; inline operand = 12
  $8C37  8B 10                      BYTE_LOADR_imm1        +16
  $8C39  C9                         UCMPGE
  $8C3A  D8 62 8C                   JUMPF_abs              $8C62
  $8C3D  AC 4B B2                   CALL_abs               $B24B {native}
  $8C40  61                         PUSH_qimm   ; inline operand = 1
  $8C41  8E 47 98                   PUSH_imm2              $9847
  $8C44  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8C48  D6 5F 8C                   JUMP_abs               $8C5F
 >$8C4B  81 E5                      LOADL_near             $E5
  $8C4D  78                         ADD_qimm   ; inline operand = 8
  $8C4E  D3                         BYTE_DEREF
  $8C4F  57                         LOADR_qimm   ; inline operand = 7
  $8C50  DA                         AND
  $8C51  D2                         LSHIFT1
  $8C52  8C A7 97                   LOADR_imm2             $97A7
  $8C55  BB                         ADD
  $8C56  B0                         DEREF
  $8C57  B3                         PUSHL
  $8C58  8E 62 98                   PUSH_imm2              $9862
  $8C5B  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
 >$8C5F  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
 >$8C62  81 E3                      LOADL_near             $E3
  $8C64  D8 77 8C                   JUMPF_abs              $8C77
  $8C67  A5 6A 66                   BYTE_LOADL_abs         $666A
  $8C6A  B3                         PUSHL
  $8C6B  A5 65 66                   BYTE_LOADL_abs         $6665
  $8C6E  B3                         PUSHL
  $8C6F  A5 64 66                   BYTE_LOADL_abs         $6664
  $8C72  B3                         PUSHL
  $8C73  E9 41 AD 06                CALL_abs_imm1          $AD41 {native}, $06
 >$8C77  AC 44 A5                   CALL_abs               $A544 {native}
  $8C7A  CF                         RETURN

; ============================================================
; sub $8C7B   (frame_off=-7, body @ $8C80)   [PRG $20C7B]
; ============================================================
  $8C80  40                         LOADL_qimm   ; inline operand = 0
  $8C81  85 FD                      STORE_near             $FD
  $8C83  8B 13                      BYTE_LOADR_imm1        +19
  $8C85  B5                         MULT
  $8C86  8C D8 AF                   LOADR_imm2             $AFD8
  $8C89  BB                         ADD
  $8C8A  85 FB                      STORE_near             $FB
  $8C8C  90 32 05                   ADD_imm2               $0532
  $8C8F  85 F9                      STORE_near             $F9
  $8C91  40                         LOADL_qimm   ; inline operand = 0
  $8C92  A2 FF FF                   BYTE_STORE_far         $FFFF
  $8C95  D6 CE 8C                   JUMP_abs               $8CCE
 >$8C98  81 FB                      LOADL_near             $FB
  $8C9A  7F                         ADD_qimm   ; inline operand = 15
  $8C9B  B3                         PUSHL
  $8C9C  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8CA0  1C                         LOADR_quick   ; inline operand = 12
  $8CA1  C0                         CMPEQ
  $8CA2  D8 C1 8C                   JUMPF_abs              $8CC1
  $8CA5  81 FB                      LOADL_near             $FB
  $8CA7  8F 10                      BYTE_ADD_imm1          +16
  $8CA9  B3                         PUSHL
  $8CAA  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8CAE  1D                         LOADR_quick   ; inline operand = 13
  $8CAF  C0                         CMPEQ
  $8CB0  D8 C1 8C                   JUMPF_abs              $8CC1
  $8CB3  0E                         LOADL_quick   ; inline operand = 14
  $8CB4  83 FD                      LOADR_near             $FD
  $8CB6  BB                         ADD
  $8CB7  B3                         PUSHL
  $8CB8  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8CBB  D4                         BYTE_POPSTORE
  $8CBC  81 FD                      LOADL_near             $FD
  $8CBE  D0                         INC
  $8CBF  85 FD                      STORE_near             $FD
 >$8CC1  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8CC4  D0                         INC
  $8CC5  A2 FF FF                   BYTE_STORE_far         $FFFF
  $8CC8  81 FB                      LOADL_near             $FB
  $8CCA  8F 13                      BYTE_ADD_imm1          +19
  $8CCC  85 FB                      STORE_near             $FB
 >$8CCE  81 FB                      LOADL_near             $FB
  $8CD0  83 F9                      LOADR_near             $F9
  $8CD2  C6                         UCMPLT
  $8CD3  D7 98 8C                   JUMPT_abs              $8C98
  $8CD6  81 FD                      LOADL_near             $FD
  $8CD8  CF                         RETURN

; ============================================================
; sub $8CD9   (frame_off=-6, body @ $8CDE)   [PRG $20CD9]
; ============================================================
  $8CDE  0F                         LOADL_quick   ; inline operand = 15
  $8CDF  2B                         STORE_quick   ; inline operand = 11
  $8CE0  1E                         LOADR_quick   ; inline operand = 14
  $8CE1  BB                         ADD
  $8CE2  2A                         STORE_quick   ; inline operand = 10
  $8CE3  D6 32 8D                   JUMP_abs               $8D32
 >$8CE6  0B                         LOADL_quick   ; inline operand = 11
  $8CE7  D3                         BYTE_DEREF
  $8CE8  8B 13                      BYTE_LOADR_imm1        +19
  $8CEA  B5                         MULT
  $8CEB  8C D8 AF                   LOADR_imm2             $AFD8
  $8CEE  BB                         ADD
  $8CEF  29                         STORE_quick   ; inline operand = 9
  $8CF0  09                         LOADL_quick   ; inline operand = 9
  $8CF1  8F 11                      BYTE_ADD_imm1          +17
  $8CF3  B3                         PUSHL
  $8CF4  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8CF8  1C                         LOADR_quick   ; inline operand = 12
  $8CF9  C0                         CMPEQ
  $8CFA  D8 2F 8D                   JUMPF_abs              $8D2F
  $8CFD  09                         LOADL_quick   ; inline operand = 9
  $8CFE  8F 12                      BYTE_ADD_imm1          +18
  $8D00  B3                         PUSHL
  $8D01  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8D05  1D                         LOADR_quick   ; inline operand = 13
  $8D06  C0                         CMPEQ
  $8D07  D8 2F 8D                   JUMPF_abs              $8D2F
  $8D0A  A5 62 66                   BYTE_LOADL_abs         $6662
  $8D0D  B3                         PUSHL
  $8D0E  09                         LOADL_quick   ; inline operand = 9
  $8D0F  7F                         ADD_qimm   ; inline operand = 15
  $8D10  B3                         PUSHL
  $8D11  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8D15  B4                         POPR
  $8D16  C0                         CMPEQ
  $8D17  D8 2F 8D                   JUMPF_abs              $8D2F
  $8D1A  A5 63 66                   BYTE_LOADL_abs         $6663
  $8D1D  B3                         PUSHL
  $8D1E  09                         LOADL_quick   ; inline operand = 9
  $8D1F  8F 10                      BYTE_ADD_imm1          +16
  $8D21  B3                         PUSHL
  $8D22  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8D26  B4                         POPR
  $8D27  C0                         CMPEQ
  $8D28  D8 2F 8D                   JUMPF_abs              $8D2F
  $8D2B  0B                         LOADL_quick   ; inline operand = 11
  $8D2C  D3                         BYTE_DEREF
  $8D2D  D0                         INC
  $8D2E  CF                         RETURN
 >$8D2F  0B                         LOADL_quick   ; inline operand = 11
  $8D30  D0                         INC
  $8D31  2B                         STORE_quick   ; inline operand = 11
 >$8D32  0B                         LOADL_quick   ; inline operand = 11
  $8D33  1A                         LOADR_quick   ; inline operand = 10
  $8D34  C6                         UCMPLT
  $8D35  D7 E6 8C                   JUMPT_abs              $8CE6
  $8D38  40                         LOADL_qimm   ; inline operand = 0
  $8D39  CF                         RETURN

; ============================================================
; sub $8D3A   (frame_off=-6, body @ $8D3F)   [PRG $20D3A]
; ============================================================
  $8D3F  40                         LOADL_qimm   ; inline operand = 0
  $8D40  29                         STORE_quick   ; inline operand = 9
  $8D41  A5 64 66                   BYTE_LOADL_abs         $6664
  $8D44  2B                         STORE_quick   ; inline operand = 11
  $8D45  0B                         LOADL_quick   ; inline operand = 11
  $8D46  51                         LOADR_qimm   ; inline operand = 1
  $8D47  C8                         UCMPGT
  $8D48  D8 70 8D                   JUMPF_abs              $8D70
  $8D4B  A5 65 66                   BYTE_LOADL_abs         $6665
  $8D4E  2A                         STORE_quick   ; inline operand = 10
  $8D4F  A5 7D 73                   BYTE_LOADL_abs         $737D (ui_shared_var_737d)
  $8D52  51                         LOADR_qimm   ; inline operand = 1
  $8D53  C0                         CMPEQ
  $8D54  D8 62 8D                   JUMPF_abs              $8D62
  $8D57  0A                         LOADL_quick   ; inline operand = 10
  $8D58  50                         LOADR_qimm   ; inline operand = 0
  $8D59  C8                         UCMPGT
  $8D5A  D8 70 8D                   JUMPF_abs              $8D70
  $8D5D  0A                         LOADL_quick   ; inline operand = 10
  $8D5E  55                         LOADR_qimm   ; inline operand = 5
  $8D5F  D6 6A 8D                   JUMP_abs               $8D6A
 >$8D62  0A                         LOADL_quick   ; inline operand = 10
  $8D63  58                         LOADR_qimm   ; inline operand = 8
  $8D64  C8                         UCMPGT
  $8D65  D8 70 8D                   JUMPF_abs              $8D70
  $8D68  0A                         LOADL_quick   ; inline operand = 10
  $8D69  5E                         LOADR_qimm   ; inline operand = 14
 >$8D6A  C6                         UCMPLT
  $8D6B  D8 70 8D                   JUMPF_abs              $8D70
  $8D6E  41                         LOADL_qimm   ; inline operand = 1
  $8D6F  29                         STORE_quick   ; inline operand = 9
 >$8D70  09                         LOADL_quick   ; inline operand = 9
  $8D71  D8 7B 8D                   JUMPF_abs              $8D7B
  $8D74  64                         PUSH_qimm   ; inline operand = 4
  $8D75  65                         PUSH_qimm   ; inline operand = 5
  $8D76  6C                         PUSH_qimm   ; inline operand = 12
  $8D77  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
 >$8D7B  09                         LOADL_quick   ; inline operand = 9
  $8D7C  CF                         RETURN

; ============================================================
; sub $8D7D   (frame_off=+0, body @ $8D82)   [PRG $20D7D]
; ============================================================
  $8D82  AC 3A 8D                   CALL_abs               $8D3A {bytecode}
  $8D85  AC E8 B2                   CALL_abs               $B2E8 {native}
  $8D88  CF                         RETURN

; ============================================================
; sub $8D89   (frame_off=-121, body @ $8D8E)   [PRG $20D89]
; ============================================================
  $8D8E  40                         LOADL_qimm   ; inline operand = 0
  $8D8F  22                         STORE_quick   ; inline operand = 2
  $8D90  23                         STORE_quick   ; inline operand = 3
  $8D91  4D                         LOADL_qimm   ; inline operand = 13
  $8D92  20                         STORE_quick   ; inline operand = 0
  $8D93  21                         STORE_quick   ; inline operand = 1
  $8D94  8A 62 66                   LOADL_imm2             $6662
  $8D97  85 E6                      STORE_near             $E6
  $8D99  DE CD FF                   LEAL_far               $FFCD
  $8D9C  B3                         PUSHL
  $8D9D  81 E6                      LOADL_near             $E6
  $8D9F  D0                         INC
  $8DA0  D3                         BYTE_DEREF
  $8DA1  B3                         PUSHL
  $8DA2  81 E6                      LOADL_near             $E6
  $8DA4  D3                         BYTE_DEREF
  $8DA5  B3                         PUSHL
  $8DA6  E9 9B D2 06                CALL_abs_imm1          $D29B (scan_records_6662) {native}, $06
  $8DAA  2B                         STORE_quick   ; inline operand = 11
  $8DAB  DE 87 FF                   LEAL_far               $FF87
  $8DAE  B3                         PUSHL
  $8DAF  81 E6                      LOADL_near             $E6
  $8DB1  D0                         INC
  $8DB2  D3                         BYTE_DEREF
  $8DB3  B3                         PUSHL
  $8DB4  81 E6                      LOADL_near             $E6
  $8DB6  D3                         BYTE_DEREF
  $8DB7  B3                         PUSHL
  $8DB8  E9 7B 8C 06                CALL_abs_imm1          $8C7B {bytecode}, $06
  $8DBC  25                         STORE_quick   ; inline operand = 5
  $8DBD  AC E8 B2                   CALL_abs               $B2E8 {native}
  $8DC0  0B                         LOADL_quick   ; inline operand = 11
  $8DC1  51                         LOADR_qimm   ; inline operand = 1
  $8DC2  C0                         CMPEQ
  $8DC3  D8 D3 8D                   JUMPF_abs              $8DD3
  $8DC6  05                         LOADL_quick   ; inline operand = 5
  $8DC7  D7 D3 8D                   JUMPT_abs              $8DD3
  $8DCA  8E 78 98                   PUSH_imm2              $9878
  $8DCD  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8DD1  40                         LOADL_qimm   ; inline operand = 0
  $8DD2  CF                         RETURN
 >$8DD3  81 E6                      LOADL_near             $E6
  $8DD5  72                         ADD_qimm   ; inline operand = 2
  $8DD6  D3                         BYTE_DEREF
  $8DD7  2A                         STORE_quick   ; inline operand = 10
  $8DD8  81 E6                      LOADL_near             $E6
  $8DDA  73                         ADD_qimm   ; inline operand = 3
  $8DDB  D3                         BYTE_DEREF
  $8DDC  29                         STORE_quick   ; inline operand = 9
  $8DDD  81 E6                      LOADL_near             $E6
  $8DDF  7B                         ADD_qimm   ; inline operand = 11
  $8DE0  B0                         DEREF
  $8DE1  51                         LOADR_qimm   ; inline operand = 1
  $8DE2  DA                         AND
  $8DE3  85 E2                      STORE_near             $E2
  $8DE5  81 E2                      LOADL_near             $E2
  $8DE7  D7 12 8E                   JUMPT_abs              $8E12
  $8DEA  0A                         LOADL_quick   ; inline operand = 10
  $8DEB  D8 F3 8D                   JUMPF_abs              $8DF3
  $8DEE  0A                         LOADL_quick   ; inline operand = 10
  $8DEF  D1                         DEC
  $8DF0  D6 F4 8D                   JUMP_abs               $8DF4
 >$8DF3  40                         LOADL_qimm   ; inline operand = 0
 >$8DF4  23                         STORE_quick   ; inline operand = 3
  $8DF5  09                         LOADL_quick   ; inline operand = 9
  $8DF6  D8 FE 8D                   JUMPF_abs              $8DFE
  $8DF9  09                         LOADL_quick   ; inline operand = 9
  $8DFA  D1                         DEC
  $8DFB  D6 FF 8D                   JUMP_abs               $8DFF
 >$8DFE  40                         LOADL_qimm   ; inline operand = 0
 >$8DFF  22                         STORE_quick   ; inline operand = 2
  $8E00  6D                         PUSH_qimm   ; inline operand = 13
  $8E01  0A                         LOADL_quick   ; inline operand = 10
  $8E02  D0                         INC
  $8E03  B3                         PUSHL
  $8E04  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8E08  21                         STORE_quick   ; inline operand = 1
  $8E09  6D                         PUSH_qimm   ; inline operand = 13
  $8E0A  09                         LOADL_quick   ; inline operand = 9
  $8E0B  D0                         INC
  $8E0C  B3                         PUSHL
  $8E0D  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8E11  20                         STORE_quick   ; inline operand = 0
 >$8E12  40                         LOADL_qimm   ; inline operand = 0
  $8E13  24                         STORE_quick   ; inline operand = 4
  $8E14  28                         STORE_quick   ; inline operand = 8
 >$8E15  04                         LOADL_quick   ; inline operand = 4
  $8E16  D8 30 8E                   JUMPF_abs              $8E30
  $8E19  08                         LOADL_quick   ; inline operand = 8
  $8E1A  51                         LOADR_qimm   ; inline operand = 1
  $8E1B  C0                         CMPEQ
  $8E1C  D8 27 8E                   JUMPF_abs              $8E27
  $8E1F  AC 4B B2                   CALL_abs               $B24B {native}
  $8E22  40                         LOADL_qimm   ; inline operand = 0
  $8E23  28                         STORE_quick   ; inline operand = 8
  $8E24  D6 30 8E                   JUMP_abs               $8E30
 >$8E27  81 E2                      LOADL_near             $E2
  $8E29  D2                         LSHIFT1
  $8E2A  8C 74 98                   LOADR_imm2             $9874
  $8E2D  BB                         ADD
  $8E2E  B0                         DEREF
  $8E2F  DD                         CALLPTR
 >$8E30  41                         LOADL_qimm   ; inline operand = 1
  $8E31  24                         STORE_quick   ; inline operand = 4
  $8E32  8E 8D 98                   PUSH_imm2              $988D
  $8E35  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8E39  81 E2                      LOADL_near             $E2
  $8E3B  D8 51 8E                   JUMPF_abs              $8E51
  $8E3E  AC E5 B5                   CALL_abs               $B5E5 {native}
  $8E41  A5 6A 66                   BYTE_LOADL_abs         $666A
  $8E44  B3                         PUSHL
  $8E45  A5 65 66                   BYTE_LOADL_abs         $6665
  $8E48  B3                         PUSHL
  $8E49  A5 64 66                   BYTE_LOADL_abs         $6664
  $8E4C  B3                         PUSHL
  $8E4D  E9 41 AD 06                CALL_abs_imm1          $AD41 {native}, $06
 >$8E51  30                         PUSH_quick   ; inline operand = 0
  $8E52  31                         PUSH_quick   ; inline operand = 1
  $8E53  32                         PUSH_quick   ; inline operand = 2
  $8E54  33                         PUSH_quick   ; inline operand = 3
  $8E55  DE FA FF                   LEAL_far               $FFFA
  $8E58  B3                         PUSHL
  $8E59  DE FC FF                   LEAL_far               $FFFC
  $8E5C  B3                         PUSHL
  $8E5D  E9 4D 88 0C                CALL_abs_imm1          $884D {bytecode}, $0C
  $8E61  26                         STORE_quick   ; inline operand = 6
  $8E62  06                         LOADL_quick   ; inline operand = 6
  $8E63  51                         LOADR_qimm   ; inline operand = 1
  $8E64  C0                         CMPEQ
  $8E65  D8 FD 8E                   JUMPF_abs              $8EFD
  $8E68  DE CD FF                   LEAL_far               $FFCD
  $8E6B  B3                         PUSHL
  $8E6C  81 E6                      LOADL_near             $E6
  $8E6E  D0                         INC
  $8E6F  D3                         BYTE_DEREF
  $8E70  B3                         PUSHL
  $8E71  81 E6                      LOADL_near             $E6
  $8E73  D3                         BYTE_DEREF
  $8E74  B3                         PUSHL
  $8E75  E9 9B D2 06                CALL_abs_imm1          $D29B (scan_records_6662) {native}, $06
  $8E79  2B                         STORE_quick   ; inline operand = 11
  $8E7A  DE CD FF                   LEAL_far               $FFCD
  $8E7D  B3                         PUSHL
  $8E7E  3B                         PUSH_quick   ; inline operand = 11
  $8E7F  39                         PUSH_quick   ; inline operand = 9
  $8E80  3A                         PUSH_quick   ; inline operand = 10
  $8E81  E9 F9 88 08                CALL_abs_imm1          $88F9 {bytecode}, $08
  $8E85  2B                         STORE_quick   ; inline operand = 11
  $8E86  0B                         LOADL_quick   ; inline operand = 11
  $8E87  D8 ED 8E                   JUMPF_abs              $8EED
  $8E8A  81 E2                      LOADL_near             $E2
  $8E8C  D2                         LSHIFT1
  $8E8D  8C 74 98                   LOADR_imm2             $9874
  $8E90  BB                         ADD
  $8E91  B0                         DEREF
  $8E92  DD                         CALLPTR
  $8E93  DE CD FF                   LEAL_far               $FFCD
  $8E96  B3                         PUSHL
  $8E97  3B                         PUSH_quick   ; inline operand = 11
  $8E98  E9 36 89 04                CALL_abs_imm1          $8936 (helm_look_fleets) {bytecode}, $04
  $8E9C  27                         STORE_quick   ; inline operand = 7
  $8E9D  07                         LOADL_quick   ; inline operand = 7
  $8E9E  8C FF 00                   LOADR_imm2             $00FF
  $8EA1  C1                         CMPNE
  $8EA2  D8 E8 8E                   JUMPF_abs              $8EE8
  $8EA5  07                         LOADL_quick   ; inline operand = 7
  $8EA6  D7 B6 8E                   JUMPT_abs              $8EB6
  $8EA9  AC 4B B2                   CALL_abs               $B24B {native}
  $8EAC  8E 99 98                   PUSH_imm2              $9899
  $8EAF  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8EB3  D6 E8 8E                   JUMP_abs               $8EE8
 >$8EB6  41                         LOADL_qimm   ; inline operand = 1
  $8EB7  85 E4                      STORE_near             $E4
  $8EB9  37                         PUSH_quick   ; inline operand = 7
  $8EBA  E9 A3 8A 02                CALL_abs_imm1          $8AA3 {bytecode}, $02
  $8EBE  D6 E8 8E                   JUMP_abs               $8EE8
 >$8EC1  81 E2                      LOADL_near             $E2
  $8EC3  D2                         LSHIFT1
  $8EC4  8C 74 98                   LOADR_imm2             $9874
  $8EC7  BB                         ADD
  $8EC8  B0                         DEREF
  $8EC9  DD                         CALLPTR
  $8ECA  60                         PUSH_qimm   ; inline operand = 0
  $8ECB  8E AA 98                   PUSH_imm2              $98AA
  $8ECE  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8ED2  0B                         LOADL_quick   ; inline operand = 11
  $8ED3  D1                         DEC
  $8ED4  8B 13                      BYTE_LOADR_imm1        +19
  $8ED6  B5                         MULT
  $8ED7  8C D8 AF                   LOADR_imm2             $AFD8
  $8EDA  BB                         ADD
  $8EDB  B3                         PUSHL
  $8EDC  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8EE0  60                         PUSH_qimm   ; inline operand = 0
  $8EE1  8E C8 98                   PUSH_imm2              $98C8
  $8EE4  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
 >$8EE8  41                         LOADL_qimm   ; inline operand = 1
  $8EE9  28                         STORE_quick   ; inline operand = 8
  $8EEA  D6 03 8F                   JUMP_abs               $8F03
 >$8EED  DE 87 FF                   LEAL_far               $FF87
  $8EF0  B3                         PUSHL
  $8EF1  35                         PUSH_quick   ; inline operand = 5
  $8EF2  39                         PUSH_quick   ; inline operand = 9
  $8EF3  3A                         PUSH_quick   ; inline operand = 10
  $8EF4  E9 D9 8C 08                CALL_abs_imm1          $8CD9 {bytecode}, $08
  $8EF8  2B                         STORE_quick   ; inline operand = 11
  $8EF9  0B                         LOADL_quick   ; inline operand = 11
  $8EFA  D7 C1 8E                   JUMPT_abs              $8EC1
 >$8EFD  06                         LOADL_quick   ; inline operand = 6
  $8EFE  52                         LOADR_qimm   ; inline operand = 2
  $8EFF  C1                         CMPNE
  $8F00  D7 51 8E                   JUMPT_abs              $8E51
 >$8F03  06                         LOADL_quick   ; inline operand = 6
  $8F04  52                         LOADR_qimm   ; inline operand = 2
  $8F05  C1                         CMPNE
  $8F06  D7 15 8E                   JUMPT_abs              $8E15
  $8F09  AC A8 80                   CALL_abs               $80A8 {bytecode}
  $8F0C  81 E2                      LOADL_near             $E2
  $8F0E  D8 24 8F                   JUMPF_abs              $8F24
  $8F11  AC 7F AF                   CALL_abs               $AF7F {native}
  $8F14  A5 6A 66                   BYTE_LOADL_abs         $666A
  $8F17  B3                         PUSHL
  $8F18  A5 65 66                   BYTE_LOADL_abs         $6665
  $8F1B  B3                         PUSHL
  $8F1C  A5 64 66                   BYTE_LOADL_abs         $6664
  $8F1F  B3                         PUSHL
  $8F20  E9 41 AD 06                CALL_abs_imm1          $AD41 {native}, $06
 >$8F24  40                         LOADL_qimm   ; inline operand = 0
  $8F25  CF                         RETURN

; ============================================================
; sub $8F26   (frame_off=-16, body @ $8F2B)   [PRG $20F26]
; ============================================================
  $8F2B  40                         LOADL_qimm   ; inline operand = 0
  $8F2C  24                         STORE_quick   ; inline operand = 4
  $8F2D  40                         LOADL_qimm   ; inline operand = 0
  $8F2E  28                         STORE_quick   ; inline operand = 8
  $8F2F  29                         STORE_quick   ; inline operand = 9
  $8F30  D6 AE 8F                   JUMP_abs               $8FAE
 >$8F33  08                         LOADL_quick   ; inline operand = 8
  $8F34  55                         LOADR_qimm   ; inline operand = 5
  $8F35  B5                         MULT
  $8F36  8C 0A B5                   LOADR_imm2             $B50A
  $8F39  BB                         ADD
  $8F3A  2B                         STORE_quick   ; inline operand = 11
  $8F3B  08                         LOADL_quick   ; inline operand = 8
  $8F3C  5E                         LOADR_qimm   ; inline operand = 14
  $8F3D  B5                         MULT
  $8F3E  8C B2 67                   LOADR_imm2             $67B2
  $8F41  BB                         ADD
  $8F42  2A                         STORE_quick   ; inline operand = 10
  $8F43  0A                         LOADL_quick   ; inline operand = 10
  $8F44  7B                         ADD_qimm   ; inline operand = 11
  $8F45  D3                         BYTE_DEREF
  $8F46  8F 32                      BYTE_ADD_imm1          +50
  $8F48  26                         STORE_quick   ; inline operand = 6
  $8F49  0C                         LOADL_quick   ; inline operand = 12
  $8F4A  D2                         LSHIFT1
  $8F4B  B3                         PUSHL
  $8F4C  3B                         PUSH_quick   ; inline operand = 11
  $8F4D  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8F51  8B 58                      BYTE_LOADR_imm1        +88
  $8F53  B5                         MULT
  $8F54  B4                         POPR
  $8F55  BB                         ADD
  $8F56  8C 88 B8                   LOADR_imm2             $B888
  $8F59  BB                         ADD
  $8F5A  B3                         PUSHL
  $8F5B  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8F5F  25                         STORE_quick   ; inline operand = 5
  $8F60  06                         LOADL_quick   ; inline operand = 6
  $8F61  B7 25                      LONG                   $25
  $8F63  B7 14                      LONG                   $14
  $8F65  05                         LOADL_quick   ; inline operand = 5
  $8F66  B7 25                      LONG                   $25
  $8F68  B7 15                      LONG                   $15
  $8F6A  B7 01                      LONG                   $01
  $8F6C  B7 19 64 00 00 00          LONG                   $19 $64 $00 $00 $00
  $8F72  B7 02                      LONG                   $02
  $8F74  B7 27                      LONG                   $27
  $8F76  25                         STORE_quick   ; inline operand = 5
  $8F77  0B                         LOADL_quick   ; inline operand = 11
  $8F78  D0                         INC
  $8F79  B3                         PUSHL
  $8F7A  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8F7E  27                         STORE_quick   ; inline operand = 7
  $8F7F  07                         LOADL_quick   ; inline operand = 7
  $8F80  1C                         LOADR_quick   ; inline operand = 12
  $8F81  C0                         CMPEQ
  $8F82  D8 A1 8F                   JUMPF_abs              $8FA1
  $8F85  06                         LOADL_quick   ; inline operand = 6
  $8F86  B7 25                      LONG                   $25
  $8F88  B7 14                      LONG                   $14
  $8F8A  0A                         LOADL_quick   ; inline operand = 10
  $8F8B  7C                         ADD_qimm   ; inline operand = 12
  $8F8C  B0                         DEREF
  $8F8D  B7 25                      LONG                   $25
  $8F8F  B7 15                      LONG                   $15
  $8F91  B7 01                      LONG                   $01
  $8F93  B7 19 64 00 00 00          LONG                   $19 $64 $00 $00 $00
  $8F99  B7 02                      LONG                   $02
  $8F9B  B7 27                      LONG                   $27
  $8F9D  52                         LOADR_qimm   ; inline operand = 2
  $8F9E  B6                         SDIV
  $8F9F  D0                         INC
  $8FA0  25                         STORE_quick   ; inline operand = 5
 >$8FA1  05                         LOADL_quick   ; inline operand = 5
  $8FA2  14                         LOADR_quick   ; inline operand = 4
  $8FA3  C4                         SCMPGT
  $8FA4  D8 AB 8F                   JUMPF_abs              $8FAB
  $8FA7  05                         LOADL_quick   ; inline operand = 5
  $8FA8  24                         STORE_quick   ; inline operand = 4
  $8FA9  08                         LOADL_quick   ; inline operand = 8
  $8FAA  29                         STORE_quick   ; inline operand = 9
 >$8FAB  08                         LOADL_quick   ; inline operand = 8
  $8FAC  D0                         INC
  $8FAD  28                         STORE_quick   ; inline operand = 8
 >$8FAE  08                         LOADL_quick   ; inline operand = 8
  $8FAF  8B 1B                      BYTE_LOADR_imm1        +27
  $8FB1  C6                         UCMPLT
  $8FB2  D7 33 8F                   JUMPT_abs              $8F33
  $8FB5  09                         LOADL_quick   ; inline operand = 9
  $8FB6  CF                         RETURN

; ============================================================
; sub $8FB7   (frame_off=-25, body @ $8FBC)   [PRG $20FB7]
; ============================================================
  $8FBC  DE F7 FF                   LEAL_far               $FFF7
  $8FBF  B3                         PUSHL
  $8FC0  60                         PUSH_qimm   ; inline operand = 0
  $8FC1  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $8FC5  85 EB                      STORE_near             $EB
  $8FC7  DE F7 FF                   LEAL_far               $FFF7
  $8FCA  85 F5                      STORE_near             $F5
  $8FCC  83 EB                      LOADR_near             $EB
  $8FCE  BB                         ADD
  $8FCF  85 F3                      STORE_near             $F3
  $8FD1  40                         LOADL_qimm   ; inline operand = 0
  $8FD2  85 F1                      STORE_near             $F1
  $8FD4  D6 21 90                   JUMP_abs               $9021
 >$8FD7  81 F5                      LOADL_near             $F5
  $8FD9  D3                         BYTE_DEREF
  $8FDA  8B 18                      BYTE_LOADR_imm1        +24
  $8FDC  B5                         MULT
  $8FDD  8C A4 6A                   LOADR_imm2             $6AA4
  $8FE0  BB                         ADD
  $8FE1  2B                         STORE_quick   ; inline operand = 11
  $8FE2  0B                         LOADL_quick   ; inline operand = 11
  $8FE3  D0                         INC
  $8FE4  2A                         STORE_quick   ; inline operand = 10
  $8FE5  0B                         LOADL_quick   ; inline operand = 11
  $8FE6  76                         ADD_qimm   ; inline operand = 6
  $8FE7  85 E9                      STORE_near             $E9
  $8FE9  81 E9                      LOADL_near             $E9
  $8FEB  7A                         ADD_qimm   ; inline operand = 10
  $8FEC  85 E7                      STORE_near             $E7
  $8FEE  40                         LOADL_qimm   ; inline operand = 0
  $8FEF  85 ED                      STORE_near             $ED
  $8FF1  D6 14 90                   JUMP_abs               $9014
 >$8FF4  81 E9                      LOADL_near             $E9
  $8FF6  B0                         DEREF
  $8FF7  D8 0A 90                   JUMPF_abs              $900A
  $8FFA  0C                         LOADL_quick   ; inline operand = 12
  $8FFB  83 F1                      LOADR_near             $F1
  $8FFD  BB                         ADD
  $8FFE  B3                         PUSHL
  $8FFF  0A                         LOADL_quick   ; inline operand = 10
  $9000  83 ED                      LOADR_near             $ED
  $9002  BB                         ADD
  $9003  D3                         BYTE_DEREF
  $9004  D4                         BYTE_POPSTORE
  $9005  81 F1                      LOADL_near             $F1
  $9007  D0                         INC
  $9008  85 F1                      STORE_near             $F1
 >$900A  81 ED                      LOADL_near             $ED
  $900C  D0                         INC
  $900D  85 ED                      STORE_near             $ED
  $900F  81 E9                      LOADL_near             $E9
  $9011  72                         ADD_qimm   ; inline operand = 2
  $9012  85 E9                      STORE_near             $E9
 >$9014  81 E9                      LOADL_near             $E9
  $9016  83 E7                      LOADR_near             $E7
  $9018  C6                         UCMPLT
  $9019  D7 F4 8F                   JUMPT_abs              $8FF4
  $901C  81 F5                      LOADL_near             $F5
  $901E  D0                         INC
  $901F  85 F5                      STORE_near             $F5
 >$9021  81 F5                      LOADL_near             $F5
  $9023  83 F3                      LOADR_near             $F3
  $9025  C6                         UCMPLT
  $9026  D7 D7 8F                   JUMPT_abs              $8FD7
  $9029  81 F1                      LOADL_near             $F1
  $902B  CF                         RETURN

; ============================================================
; sub $902C   (frame_off=-8, body @ $9031)   [PRG $2102C]
; ============================================================
  $9031  8A 6E 6A                   LOADL_imm2             $6A6E
  $9034  28                         STORE_quick   ; inline operand = 8
  $9035  8A 49 65                   LOADL_imm2             $6549
  $9038  2A                         STORE_quick   ; inline operand = 10
  $9039  90 8C 00                   ADD_imm2               $008C
  $903C  29                         STORE_quick   ; inline operand = 9
  $903D  D6 60 90                   JUMP_abs               $9060
 >$9040  0A                         LOADL_quick   ; inline operand = 10
  $9041  76                         ADD_qimm   ; inline operand = 6
  $9042  D3                         BYTE_DEREF
  $9043  2B                         STORE_quick   ; inline operand = 11
  $9044  08                         LOADL_quick   ; inline operand = 8
  $9045  D0                         INC
  $9046  D3                         BYTE_DEREF
  $9047  1C                         LOADR_quick   ; inline operand = 12
  $9048  C0                         CMPEQ
  $9049  D8 5A 90                   JUMPF_abs              $905A
  $904C  0B                         LOADL_quick   ; inline operand = 11
  $904D  52                         LOADR_qimm   ; inline operand = 2
  $904E  DA                         AND
  $904F  D7 5A 90                   JUMPT_abs              $905A
  $9052  0B                         LOADL_quick   ; inline operand = 11
  $9053  51                         LOADR_qimm   ; inline operand = 1
  $9054  DA                         AND
  $9055  D8 5A 90                   JUMPF_abs              $905A
  $9058  41                         LOADL_qimm   ; inline operand = 1
  $9059  CF                         RETURN
 >$905A  08                         LOADL_quick   ; inline operand = 8
  $905B  72                         ADD_qimm   ; inline operand = 2
  $905C  28                         STORE_quick   ; inline operand = 8
  $905D  0A                         LOADL_quick   ; inline operand = 10
  $905E  77                         ADD_qimm   ; inline operand = 7
  $905F  2A                         STORE_quick   ; inline operand = 10
 >$9060  0A                         LOADL_quick   ; inline operand = 10
  $9061  19                         LOADR_quick   ; inline operand = 9
  $9062  C6                         UCMPLT
  $9063  D7 40 90                   JUMPT_abs              $9040
  $9066  40                         LOADL_qimm   ; inline operand = 0
  $9067  CF                         RETURN

; ============================================================
; sub $9068   (frame_off=-4, body @ $906D)   [PRG $21068]
; ============================================================
  $906D  40                         LOADL_qimm   ; inline operand = 0
  $906E  2B                         STORE_quick   ; inline operand = 11
 >$906F  8D 1B                      BYTE_PUSH_imm1         +27
  $9071  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $9075  2A                         STORE_quick   ; inline operand = 10
  $9076  3A                         PUSH_quick   ; inline operand = 10
  $9077  E9 2C 90 02                CALL_abs_imm1          $902C {bytecode}, $02
  $907B  D8 80 90                   JUMPF_abs              $9080
  $907E  0A                         LOADL_quick   ; inline operand = 10
  $907F  CF                         RETURN
 >$9080  0B                         LOADL_quick   ; inline operand = 11
  $9081  D0                         INC
  $9082  2B                         STORE_quick   ; inline operand = 11
  $9083  0B                         LOADL_quick   ; inline operand = 11
  $9084  8B 1E                      BYTE_LOADR_imm1        +30
  $9086  C6                         UCMPLT
  $9087  D7 6F 90                   JUMPT_abs              $906F
  $908A  8A FF 00                   LOADL_imm2             $00FF
  $908D  CF                         RETURN

; ============================================================
; sub $908E   (frame_off=-31, body @ $9093)   [PRG $2108E]
; ============================================================
  $9093  0C                         LOADL_quick   ; inline operand = 12
  $9094  D1                         DEC
  $9095  55                         LOADR_qimm   ; inline operand = 5
  $9096  B8                         UDIV
  $9097  D2                         LSHIFT1
  $9098  D2                         LSHIFT1
  $9099  8C BE 6F                   LOADR_imm2             $6FBE
  $909C  BB                         ADD
  $909D  D3                         BYTE_DEREF
  $909E  8B 27                      BYTE_LOADR_imm1        +39
  $90A0  C8                         UCMPGT
  $90A1  D8 AD 90                   JUMPF_abs              $90AD
  $90A4  AC 4B B2                   CALL_abs               $B24B {native}
  $90A7  8E CD 98                   PUSH_imm2              $98CD
  $90AA  D6 7D 91                   JUMP_abs               $917D
 >$90AD  0C                         LOADL_quick   ; inline operand = 12
  $90AE  D1                         DEC
  $90AF  55                         LOADR_qimm   ; inline operand = 5
  $90B0  BA                         UMOD
  $90B1  53                         LOADR_qimm   ; inline operand = 3
  $90B2  C6                         UCMPLT
  $90B3  D8 42 91                   JUMPF_abs              $9142
  $90B6  DE E7 FF                   LEAL_far               $FFE7
  $90B9  B3                         PUSHL
  $90BA  E9 B7 8F 02                CALL_abs_imm1          $8FB7 {bytecode}, $02
  $90BE  85 E5                      STORE_near             $E5
  $90C0  81 E5                      LOADL_near             $E5
  $90C2  D8 39 91                   JUMPF_abs              $9139
  $90C5  DE E7 FF                   LEAL_far               $FFE7
  $90C8  B3                         PUSHL
  $90C9  87 E5                      PUSH_near              $E5
  $90CB  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $90CF  B4                         POPR
  $90D0  BB                         ADD
  $90D1  D3                         BYTE_DEREF
  $90D2  85 E3                      STORE_near             $E3
  $90D4  87 E3                      PUSH_near              $E3
  $90D6  E9 26 8F 02                CALL_abs_imm1          $8F26 {bytecode}, $02
  $90DA  85 E1                      STORE_near             $E1
  $90DC  AC 4B B2                   CALL_abs               $B24B {native}
  $90DF  60                         PUSH_qimm   ; inline operand = 0
  $90E0  8E EC 98                   PUSH_imm2              $98EC
  $90E3  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $90E7  81 E3                      LOADL_near             $E3
  $90E9  D2                         LSHIFT1
  $90EA  8C 49 BB                   LOADR_imm2             $BB49
  $90ED  BB                         ADD
  $90EE  B3                         PUSHL
  $90EF  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $90F3  B3                         PUSHL
  $90F4  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $90F8  81 E3                      LOADL_near             $E3
  $90FA  54                         LOADR_qimm   ; inline operand = 4
  $90FB  C0                         CMPEQ
  $90FC  D7 0E 91                   JUMPT_abs              $910E
  $90FF  81 E3                      LOADL_near             $E3
  $9101  56                         LOADR_qimm   ; inline operand = 6
  $9102  C0                         CMPEQ
  $9103  D7 0E 91                   JUMPT_abs              $910E
  $9106  81 E3                      LOADL_near             $E3
  $9108  8B 15                      BYTE_LOADR_imm1        +21
  $910A  C0                         CMPEQ
  $910B  D8 15 91                   JUMPF_abs              $9115
 >$910E  60                         PUSH_qimm   ; inline operand = 0
  $910F  8E EE 98                   PUSH_imm2              $98EE
  $9112  D6 19 91                   JUMP_abs               $9119
 >$9115  60                         PUSH_qimm   ; inline operand = 0
  $9116  8E F3 98                   PUSH_imm2              $98F3
 >$9119  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $911D  60                         PUSH_qimm   ; inline operand = 0
  $911E  8E F7 98                   PUSH_imm2              $98F7
  $9121  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $9125  81 E1                      LOADL_near             $E1
  $9127  8B 13                      BYTE_LOADR_imm1        +19
  $9129  B5                         MULT
  $912A  8C D8 AF                   LOADR_imm2             $AFD8
  $912D  BB                         ADD
  $912E  B3                         PUSHL
  $912F  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $9133  8E 08 99                   PUSH_imm2              $9908
  $9136  D6 7D 91                   JUMP_abs               $917D
 >$9139  AC 4B B2                   CALL_abs               $B24B {native}
  $913C  8E 09 99                   PUSH_imm2              $9909
  $913F  D6 7D 91                   JUMP_abs               $917D
 >$9142  AC 68 90                   CALL_abs               $9068 {bytecode}
  $9145  85 E1                      STORE_near             $E1
  $9147  81 E1                      LOADL_near             $E1
  $9149  8C FF 00                   LOADR_imm2             $00FF
  $914C  C1                         CMPNE
  $914D  D8 77 91                   JUMPF_abs              $9177
  $9150  AC 4B B2                   CALL_abs               $B24B {native}
  $9153  60                         PUSH_qimm   ; inline operand = 0
  $9154  8E 23 99                   PUSH_imm2              $9923
  $9157  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $915B  81 E1                      LOADL_near             $E1
  $915D  8B 13                      BYTE_LOADR_imm1        +19
  $915F  B5                         MULT
  $9160  8C D8 AF                   LOADR_imm2             $AFD8
  $9163  BB                         ADD
  $9164  B3                         PUSHL
  $9165  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $9169  60                         PUSH_qimm   ; inline operand = 0
  $916A  8E 2D 99                   PUSH_imm2              $992D
  $916D  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $9171  8E 4A 99                   PUSH_imm2              $994A
  $9174  D6 7D 91                   JUMP_abs               $917D
 >$9177  AC 4B B2                   CALL_abs               $B24B {native}
  $917A  8E 4B 99                   PUSH_imm2              $994B
 >$917D  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $9181  CF                         RETURN

; ============================================================
; sub $9182   (frame_off=-2, body @ $9187)   [PRG $21182]
; ============================================================
  $9187  0C                         LOADL_quick   ; inline operand = 12
  $9188  D1                         DEC
  $9189  8B 33                      BYTE_LOADR_imm1        +51
  $918B  B5                         MULT
  $918C  8C 04 60                   LOADR_imm2             $6004
  $918F  BB                         ADD
  $9190  2B                         STORE_quick   ; inline operand = 11
  $9191  0B                         LOADL_quick   ; inline operand = 11
  $9192  74                         ADD_qimm   ; inline operand = 4
  $9193  B3                         PUSHL
  $9194  40                         LOADL_qimm   ; inline operand = 0
  $9195  D4                         BYTE_POPSTORE
  $9196  0B                         LOADL_quick   ; inline operand = 11
  $9197  75                         ADD_qimm   ; inline operand = 5
  $9198  B3                         PUSHL
  $9199  40                         LOADL_qimm   ; inline operand = 0
  $919A  D4                         BYTE_POPSTORE
  $919B  0B                         LOADL_quick   ; inline operand = 11
  $919C  77                         ADD_qimm   ; inline operand = 7
  $919D  B3                         PUSHL
  $919E  40                         LOADL_qimm   ; inline operand = 0
  $919F  B1                         POPSTORE
  $91A0  CF                         RETURN

; ============================================================
; sub $91A1   (frame_off=+0, body @ $91A6)   [PRG $211A1]
; ============================================================
  $91A6  A5 8C 6B                   BYTE_LOADL_abs         $6B8C
  $91A9  5F                         LOADR_qimm   ; inline operand = 15
  $91AA  C9                         UCMPGE
  $91AB  D8 C8 91                   JUMPF_abs              $91C8
  $91AE  3C                         PUSH_quick   ; inline operand = 12
  $91AF  E9 82 91 02                CALL_abs_imm1          $9182 {bytecode}, $02
  $91B3  AC 4B B2                   CALL_abs               $B24B {native}
  $91B6  60                         PUSH_qimm   ; inline operand = 0
  $91B7  8E 5E 99                   PUSH_imm2              $995E
  $91BA  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $91BE  8E 98 99                   PUSH_imm2              $9998
  $91C1  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $91C5  D6 D0 91                   JUMP_abs               $91D0
 >$91C8  0C                         LOADL_quick   ; inline operand = 12
  $91C9  A9 9E 72                   BYTE_STORE_abs         $729E
  $91CC  41                         LOADL_qimm   ; inline operand = 1
  $91CD  A9 9D 72                   BYTE_STORE_abs         $729D
 >$91D0  CF                         RETURN

; ============================================================
; sub $91D1   (frame_off=-45, body @ $91D6)   [PRG $211D1]
; ============================================================
  $91D6  8A 62 66                   LOADL_imm2             $6662
  $91D9  85 D5                      STORE_near             $D5
  $91DB  AC E8 B2                   CALL_abs               $B2E8 {native}
  $91DE  DE EB FF                   LEAL_far               $FFEB
  $91E1  B3                         PUSHL
  $91E2  81 D5                      LOADL_near             $D5
  $91E4  D0                         INC
  $91E5  D3                         BYTE_DEREF
  $91E6  B3                         PUSHL
  $91E7  81 D5                      LOADL_near             $D5
  $91E9  D3                         BYTE_DEREF
  $91EA  B3                         PUSHL
  $91EB  E9 9B D2 06                CALL_abs_imm1          $D29B (scan_records_6662) {native}, $06
  $91EF  85 E9                      STORE_near             $E9
  $91F1  81 E9                      LOADL_near             $E9
  $91F3  51                         LOADR_qimm   ; inline operand = 1
  $91F4  C0                         CMPEQ
  $91F5  D8 01 92                   JUMPF_abs              $9201
  $91F8  8E 99 99                   PUSH_imm2              $9999
  $91FB  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $91FF  40                         LOADL_qimm   ; inline operand = 0
  $9200  CF                         RETURN
 >$9201  40                         LOADL_qimm   ; inline operand = 0
  $9202  85 E3                      STORE_near             $E3
  $9204  81 D5                      LOADL_near             $D5
  $9206  72                         ADD_qimm   ; inline operand = 2
  $9207  D3                         BYTE_DEREF
  $9208  85 E7                      STORE_near             $E7
  $920A  81 D5                      LOADL_near             $D5
  $920C  73                         ADD_qimm   ; inline operand = 3
  $920D  D3                         BYTE_DEREF
  $920E  85 E5                      STORE_near             $E5
  $9210  81 E7                      LOADL_near             $E7
  $9212  D8 1B 92                   JUMPF_abs              $921B
  $9215  81 E7                      LOADL_near             $E7
  $9217  D1                         DEC
  $9218  D6 1C 92                   JUMP_abs               $921C
 >$921B  40                         LOADL_qimm   ; inline operand = 0
 >$921C  85 DD                      STORE_near             $DD
  $921E  81 E5                      LOADL_near             $E5
  $9220  D8 29 92                   JUMPF_abs              $9229
  $9223  81 E5                      LOADL_near             $E5
  $9225  D1                         DEC
  $9226  D6 2A 92                   JUMP_abs               $922A
 >$9229  40                         LOADL_qimm   ; inline operand = 0
 >$922A  85 DB                      STORE_near             $DB
  $922C  6D                         PUSH_qimm   ; inline operand = 13
  $922D  81 E7                      LOADL_near             $E7
  $922F  D0                         INC
  $9230  B3                         PUSHL
  $9231  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $9235  85 D9                      STORE_near             $D9
  $9237  6D                         PUSH_qimm   ; inline operand = 13
  $9238  81 E5                      LOADL_near             $E5
  $923A  D0                         INC
  $923B  B3                         PUSHL
  $923C  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $9240  85 D7                      STORE_near             $D7
 >$9242  81 E3                      LOADL_near             $E3
  $9244  D8 50 92                   JUMPF_abs              $9250
  $9247  AC E8 B2                   CALL_abs               $B2E8 {native}
  $924A  40                         LOADL_qimm   ; inline operand = 0
  $924B  85 E3                      STORE_near             $E3
  $924D  D6 53 92                   JUMP_abs               $9253
 >$9250  AC 4B B2                   CALL_abs               $B24B {native}
 >$9253  8E B5 99                   PUSH_imm2              $99B5
  $9256  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
 >$925A  87 D7                      PUSH_near              $D7
  $925C  87 D9                      PUSH_near              $D9
  $925E  87 DB                      PUSH_near              $DB
  $9260  87 DD                      PUSH_near              $DD
  $9262  DE E5 FF                   LEAL_far               $FFE5
  $9265  B3                         PUSHL
  $9266  DE E7 FF                   LEAL_far               $FFE7
  $9269  B3                         PUSHL
  $926A  E9 4D 88 0C                CALL_abs_imm1          $884D {bytecode}, $0C
  $926E  85 DF                      STORE_near             $DF
  $9270  81 DF                      LOADL_near             $DF
  $9272  51                         LOADR_qimm   ; inline operand = 1
  $9273  C0                         CMPEQ
  $9274  D8 EE 92                   JUMPF_abs              $92EE
  $9277  DE EB FF                   LEAL_far               $FFEB
  $927A  B3                         PUSHL
  $927B  81 D5                      LOADL_near             $D5
  $927D  D0                         INC
  $927E  D3                         BYTE_DEREF
  $927F  B3                         PUSHL
  $9280  81 D5                      LOADL_near             $D5
  $9282  D3                         BYTE_DEREF
  $9283  B3                         PUSHL
  $9284  E9 9B D2 06                CALL_abs_imm1          $D29B (scan_records_6662) {native}, $06
  $9288  85 E9                      STORE_near             $E9
  $928A  DE EB FF                   LEAL_far               $FFEB
  $928D  B3                         PUSHL
  $928E  87 E9                      PUSH_near              $E9
  $9290  87 E5                      PUSH_near              $E5
  $9292  87 E7                      PUSH_near              $E7
  $9294  E9 F9 88 08                CALL_abs_imm1          $88F9 {bytecode}, $08
  $9298  85 E9                      STORE_near             $E9
  $929A  81 E9                      LOADL_near             $E9
  $929C  D8 EE 92                   JUMPF_abs              $92EE
  $929F  DE EB FF                   LEAL_far               $FFEB
  $92A2  B3                         PUSHL
  $92A3  87 E9                      PUSH_near              $E9
  $92A5  E9 36 89 04                CALL_abs_imm1          $8936 (helm_look_fleets) {bytecode}, $04
  $92A9  85 E1                      STORE_near             $E1
  $92AB  81 E1                      LOADL_near             $E1
  $92AD  8C FF 00                   LOADR_imm2             $00FF
  $92B0  C1                         CMPNE
  $92B1  D8 F5 92                   JUMPF_abs              $92F5
  $92B4  81 E1                      LOADL_near             $E1
  $92B6  D7 C6 92                   JUMPT_abs              $92C6
  $92B9  AC 4B B2                   CALL_abs               $B24B {native}
  $92BC  8E C2 99                   PUSH_imm2              $99C2
  $92BF  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $92C3  D6 F5 92                   JUMP_abs               $92F5
 >$92C6  81 E1                      LOADL_near             $E1
  $92C8  5F                         LOADR_qimm   ; inline operand = 15
  $92C9  C8                         UCMPGT
  $92CA  D8 D8 92                   JUMPF_abs              $92D8
  $92CD  87 E1                      PUSH_near              $E1
  $92CF  E9 A1 91 02                CALL_abs_imm1          $91A1 {bytecode}, $02
  $92D3  AC A8 80                   CALL_abs               $80A8 {bytecode}
  $92D6  41                         LOADL_qimm   ; inline operand = 1
  $92D7  CF                         RETURN
 >$92D8  60                         PUSH_qimm   ; inline operand = 0
  $92D9  81 E1                      LOADL_near             $E1
  $92DB  8F 14                      BYTE_ADD_imm1          +20
  $92DD  B3                         PUSHL
  $92DE  E9 B1 B2 04                CALL_abs_imm1          $B2B1 {native}, $04
  $92E2  87 E1                      PUSH_near              $E1
  $92E4  E9 8E 90 02                CALL_abs_imm1          $908E (helm_hail_fleet) {bytecode}, $02
  $92E8  41                         LOADL_qimm   ; inline operand = 1
  $92E9  85 E3                      STORE_near             $E3
  $92EB  D6 F5 92                   JUMP_abs               $92F5
 >$92EE  81 DF                      LOADL_near             $DF
  $92F0  52                         LOADR_qimm   ; inline operand = 2
  $92F1  C1                         CMPNE
  $92F2  D7 5A 92                   JUMPT_abs              $925A
 >$92F5  81 DF                      LOADL_near             $DF
  $92F7  52                         LOADR_qimm   ; inline operand = 2
  $92F8  C1                         CMPNE
  $92F9  D7 42 92                   JUMPT_abs              $9242
  $92FC  AC A8 80                   CALL_abs               $80A8 {bytecode}
  $92FF  40                         LOADL_qimm   ; inline operand = 0
  $9300  CF                         RETURN

; ============================================================
; sub $9301   (frame_off=-2, body @ $9306)   [PRG $21301]
; ============================================================
  $9306  63                         PUSH_qimm   ; inline operand = 3
  $9307  63                         PUSH_qimm   ; inline operand = 3
  $9308  8E D3 99                   PUSH_imm2              $99D3
  $930B  62                         PUSH_qimm   ; inline operand = 2
  $930C  60                         PUSH_qimm   ; inline operand = 0
  $930D  E9 EB A0 0A                CALL_abs_imm1          $A0EB {native}, $0A
  $9311  2B                         STORE_quick   ; inline operand = 11
  $9312  0B                         LOADL_quick   ; inline operand = 11
  $9313  8C FF 00                   LOADR_imm2             $00FF
  $9316  C0                         CMPEQ
  $9317  D8 1C 93                   JUMPF_abs              $931C
  $931A  40                         LOADL_qimm   ; inline operand = 0
  $931B  CF                         RETURN
 >$931C  0B                         LOADL_quick   ; inline operand = 11
  $931D  D2                         LSHIFT1
  $931E  8C D9 99                   LOADR_imm2             $99D9
  $9321  BB                         ADD
  $9322  B0                         DEREF
  $9323  DD                         CALLPTR
  $9324  CF                         RETURN

; ============================================================
; sub $9325   (frame_off=-8, body @ $932A)   [PRG $21325]
; ============================================================
  $932A  0C                         LOADL_quick   ; inline operand = 12
  $932B  2B                         STORE_quick   ; inline operand = 11
  $932C  1D                         LOADR_quick   ; inline operand = 13
  $932D  BB                         ADD
  $932E  2A                         STORE_quick   ; inline operand = 10
  $932F  40                         LOADL_qimm   ; inline operand = 0
  $9330  2D                         STORE_quick   ; inline operand = 13
  $9331  D6 6F 93                   JUMP_abs               $936F
 >$9334  0B                         LOADL_quick   ; inline operand = 11
  $9335  D3                         BYTE_DEREF
  $9336  54                         LOADR_qimm   ; inline operand = 4
  $9337  BD                         LSHIFT
  $9338  8C 62 66                   LOADR_imm2             $6662
  $933B  BB                         ADD
  $933C  28                         STORE_quick   ; inline operand = 8
  $933D  0B                         LOADL_quick   ; inline operand = 11
  $933E  D3                         BYTE_DEREF
  $933F  D8 6C 93                   JUMPF_abs              $936C
  $9342  08                         LOADL_quick   ; inline operand = 8
  $9343  72                         ADD_qimm   ; inline operand = 2
  $9344  D3                         BYTE_DEREF
  $9345  29                         STORE_quick   ; inline operand = 9
  $9346  1E                         LOADR_quick   ; inline operand = 14
  $9347  C9                         UCMPGE
  $9348  D8 6C 93                   JUMPF_abs              $936C
  $934B  09                         LOADL_quick   ; inline operand = 9
  $934C  83 13                      LOADR_near             $13
  $934E  C7                         UCMPLE
  $934F  D8 6C 93                   JUMPF_abs              $936C
  $9352  08                         LOADL_quick   ; inline operand = 8
  $9353  73                         ADD_qimm   ; inline operand = 3
  $9354  D3                         BYTE_DEREF
  $9355  29                         STORE_quick   ; inline operand = 9
  $9356  1F                         LOADR_quick   ; inline operand = 15
  $9357  C9                         UCMPGE
  $9358  D8 6C 93                   JUMPF_abs              $936C
  $935B  09                         LOADL_quick   ; inline operand = 9
  $935C  83 15                      LOADR_near             $15
  $935E  C7                         UCMPLE
  $935F  D8 6C 93                   JUMPF_abs              $936C
  $9362  3C                         PUSH_quick   ; inline operand = 12
  $9363  0B                         LOADL_quick   ; inline operand = 11
  $9364  D3                         BYTE_DEREF
  $9365  D4                         BYTE_POPSTORE
  $9366  0C                         LOADL_quick   ; inline operand = 12
  $9367  D0                         INC
  $9368  2C                         STORE_quick   ; inline operand = 12
  $9369  0D                         LOADL_quick   ; inline operand = 13
  $936A  D0                         INC
  $936B  2D                         STORE_quick   ; inline operand = 13
 >$936C  0B                         LOADL_quick   ; inline operand = 11
  $936D  D0                         INC
  $936E  2B                         STORE_quick   ; inline operand = 11
 >$936F  0B                         LOADL_quick   ; inline operand = 11
  $9370  1A                         LOADR_quick   ; inline operand = 10
  $9371  C6                         UCMPLT
  $9372  D7 34 93                   JUMPT_abs              $9334
  $9375  0D                         LOADL_quick   ; inline operand = 13
  $9376  CF                         RETURN

; ============================================================
; sub $9377   (frame_off=-47, body @ $937C)   [PRG $21377]
; ============================================================
  $937C  8A 62 66                   LOADL_imm2             $6662
  $937F  85 D1                      STORE_near             $D1
  $9381  81 D1                      LOADL_near             $D1
  $9383  72                         ADD_qimm   ; inline operand = 2
  $9384  D3                         BYTE_DEREF
  $9385  85 E7                      STORE_near             $E7
  $9387  81 D1                      LOADL_near             $D1
  $9389  73                         ADD_qimm   ; inline operand = 3
  $938A  D3                         BYTE_DEREF
  $938B  85 E5                      STORE_near             $E5
  $938D  81 E7                      LOADL_near             $E7
  $938F  D8 98 93                   JUMPF_abs              $9398
  $9392  81 E7                      LOADL_near             $E7
  $9394  D1                         DEC
  $9395  D6 99 93                   JUMP_abs               $9399
 >$9398  40                         LOADL_qimm   ; inline operand = 0
 >$9399  85 DD                      STORE_near             $DD
  $939B  81 E5                      LOADL_near             $E5
  $939D  D8 A6 93                   JUMPF_abs              $93A6
  $93A0  81 E5                      LOADL_near             $E5
  $93A2  D1                         DEC
  $93A3  D6 A7 93                   JUMP_abs               $93A7
 >$93A6  40                         LOADL_qimm   ; inline operand = 0
 >$93A7  85 DB                      STORE_near             $DB
  $93A9  6D                         PUSH_qimm   ; inline operand = 13
  $93AA  81 E7                      LOADL_near             $E7
  $93AC  D0                         INC
  $93AD  B3                         PUSHL
  $93AE  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $93B2  85 D9                      STORE_near             $D9
  $93B4  6D                         PUSH_qimm   ; inline operand = 13
  $93B5  81 E5                      LOADL_near             $E5
  $93B7  D0                         INC
  $93B8  B3                         PUSHL
  $93B9  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $93BD  85 D7                      STORE_near             $D7
  $93BF  AC E8 B2                   CALL_abs               $B2E8 {native}
  $93C2  A5 8C 6B                   BYTE_LOADL_abs         $6B8C
  $93C5  5F                         LOADR_qimm   ; inline operand = 15
  $93C6  C9                         UCMPGE
  $93C7  D8 D3 93                   JUMPF_abs              $93D3
  $93CA  8E 16 9A                   PUSH_imm2              $9A16
  $93CD  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $93D1  40                         LOADL_qimm   ; inline operand = 0
  $93D2  CF                         RETURN
 >$93D3  DE EB FF                   LEAL_far               $FFEB
  $93D6  B3                         PUSHL
  $93D7  81 D1                      LOADL_near             $D1
  $93D9  D0                         INC
  $93DA  D3                         BYTE_DEREF
  $93DB  B3                         PUSHL
  $93DC  81 D1                      LOADL_near             $D1
  $93DE  D3                         BYTE_DEREF
  $93DF  B3                         PUSHL
  $93E0  E9 9B D2 06                CALL_abs_imm1          $D29B (scan_records_6662) {native}, $06
  $93E4  85 E9                      STORE_near             $E9
  $93E6  87 D7                      PUSH_near              $D7
  $93E8  87 D9                      PUSH_near              $D9
  $93EA  87 DB                      PUSH_near              $DB
  $93EC  87 DD                      PUSH_near              $DD
  $93EE  87 E9                      PUSH_near              $E9
  $93F0  DE EB FF                   LEAL_far               $FFEB
  $93F3  B3                         PUSHL
  $93F4  E9 25 93 0C                CALL_abs_imm1          $9325 {bytecode}, $0C
  $93F8  85 E9                      STORE_near             $E9
  $93FA  81 E9                      LOADL_near             $E9
  $93FC  D7 08 94                   JUMPT_abs              $9408
  $93FF  8E 41 9A                   PUSH_imm2              $9A41
  $9402  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $9406  40                         LOADL_qimm   ; inline operand = 0
  $9407  CF                         RETURN
 >$9408  40                         LOADL_qimm   ; inline operand = 0
  $9409  85 E3                      STORE_near             $E3
 >$940B  AC 4B B2                   CALL_abs               $B24B {native}
  $940E  8E 5C 9A                   PUSH_imm2              $9A5C
  $9411  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $9415  87 D7                      PUSH_near              $D7
  $9417  87 D9                      PUSH_near              $D9
  $9419  87 DB                      PUSH_near              $DB
  $941B  87 DD                      PUSH_near              $DD
  $941D  DE E5 FF                   LEAL_far               $FFE5
  $9420  B3                         PUSHL
  $9421  DE E7 FF                   LEAL_far               $FFE7
  $9424  B3                         PUSHL
  $9425  E9 4D 88 0C                CALL_abs_imm1          $884D {bytecode}, $0C
  $9429  85 DF                      STORE_near             $DF
  $942B  81 DF                      LOADL_near             $DF
  $942D  51                         LOADR_qimm   ; inline operand = 1
  $942E  C0                         CMPEQ
  $942F  D8 D7 94                   JUMPF_abs              $94D7
  $9432  DE EB FF                   LEAL_far               $FFEB
  $9435  B3                         PUSHL
  $9436  81 D1                      LOADL_near             $D1
  $9438  D0                         INC
  $9439  D3                         BYTE_DEREF
  $943A  B3                         PUSHL
  $943B  81 D1                      LOADL_near             $D1
  $943D  D3                         BYTE_DEREF
  $943E  B3                         PUSHL
  $943F  E9 9B D2 06                CALL_abs_imm1          $D29B (scan_records_6662) {native}, $06
  $9443  85 E9                      STORE_near             $E9
  $9445  87 D7                      PUSH_near              $D7
  $9447  87 D9                      PUSH_near              $D9
  $9449  87 DB                      PUSH_near              $DB
  $944B  87 DD                      PUSH_near              $DD
  $944D  87 E9                      PUSH_near              $E9
  $944F  DE EB FF                   LEAL_far               $FFEB
  $9452  B3                         PUSHL
  $9453  E9 25 93 0C                CALL_abs_imm1          $9325 {bytecode}, $0C
  $9457  85 E9                      STORE_near             $E9
  $9459  DE EB FF                   LEAL_far               $FFEB
  $945C  B3                         PUSHL
  $945D  87 E9                      PUSH_near              $E9
  $945F  87 E5                      PUSH_near              $E5
  $9461  87 E7                      PUSH_near              $E7
  $9463  E9 F9 88 08                CALL_abs_imm1          $88F9 {bytecode}, $08
  $9467  85 E9                      STORE_near             $E9
  $9469  81 E9                      LOADL_near             $E9
  $946B  D8 D7 94                   JUMPF_abs              $94D7
  $946E  DE EB FF                   LEAL_far               $FFEB
  $9471  B3                         PUSHL
  $9472  87 E9                      PUSH_near              $E9
  $9474  E9 36 89 04                CALL_abs_imm1          $8936 (helm_look_fleets) {bytecode}, $04
  $9478  85 E1                      STORE_near             $E1
  $947A  81 E1                      LOADL_near             $E1
  $947C  8C FF 00                   LOADR_imm2             $00FF
  $947F  C1                         CMPNE
  $9480  D8 D7 94                   JUMPF_abs              $94D7
  $9483  AC 4B B2                   CALL_abs               $B24B {native}
  $9486  A4 99 6B                   LOADL_abs              $6B99
  $9489  8B F7                      BYTE_LOADR_imm1        -9
  $948B  DA                         AND
  $948C  51                         LOADR_qimm   ; inline operand = 1
  $948D  BE                         URSHIFT
  $948E  5F                         LOADR_qimm   ; inline operand = 15
  $948F  DA                         AND
  $9490  85 D3                      STORE_near             $D3
  $9492  81 E1                      LOADL_near             $E1
  $9494  D1                         DEC
  $9495  55                         LOADR_qimm   ; inline operand = 5
  $9496  B8                         UDIV
  $9497  85 D5                      STORE_near             $D5
  $9499  61                         PUSH_qimm   ; inline operand = 1
  $949A  8E 69 9A                   PUSH_imm2              $9A69
  $949D  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $94A1  81 D5                      LOADL_near             $D5
  $94A3  53                         LOADR_qimm   ; inline operand = 3
  $94A4  C0                         CMPEQ
  $94A5  D8 AF 94                   JUMPF_abs              $94AF
  $94A8  61                         PUSH_qimm   ; inline operand = 1
  $94A9  8E 75 9A                   PUSH_imm2              $9A75
  $94AC  D6 C2 94                   JUMP_abs               $94C2
 >$94AF  81 E1                      LOADL_near             $E1
  $94B1  D1                         DEC
  $94B2  55                         LOADR_qimm   ; inline operand = 5
  $94B3  BA                         UMOD
  $94B4  53                         LOADR_qimm   ; inline operand = 3
  $94B5  B8                         UDIV
  $94B6  85 D5                      STORE_near             $D5
  $94B8  61                         PUSH_qimm   ; inline operand = 1
  $94B9  81 D5                      LOADL_near             $D5
  $94BB  D2                         LSHIFT1
  $94BC  8C F8 99                   LOADR_imm2             $99F8
  $94BF  BB                         ADD
  $94C0  B0                         DEREF
  $94C1  B3                         PUSHL
 >$94C2  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $94C6  AC 9F CD                   CALL_abs               $CD9F {native}
  $94C9  D8 DE 94                   JUMPF_abs              $94DE
  $94CC  81 E1                      LOADL_near             $E1
  $94CE  D0                         INC
  $94CF  A9 9D 72                   BYTE_STORE_abs         $729D
  $94D2  AC A8 80                   CALL_abs               $80A8 {bytecode}
  $94D5  41                         LOADL_qimm   ; inline operand = 1
  $94D6  CF                         RETURN
 >$94D7  81 DF                      LOADL_near             $DF
  $94D9  52                         LOADR_qimm   ; inline operand = 2
  $94DA  C1                         CMPNE
  $94DB  D7 0B 94                   JUMPT_abs              $940B
 >$94DE  81 DF                      LOADL_near             $DF
  $94E0  52                         LOADR_qimm   ; inline operand = 2
  $94E1  C1                         CMPNE
  $94E2  D7 0B 94                   JUMPT_abs              $940B
  $94E5  AC A8 80                   CALL_abs               $80A8 {bytecode}
  $94E8  40                         LOADL_qimm   ; inline operand = 0
  $94E9  CF                         RETURN

