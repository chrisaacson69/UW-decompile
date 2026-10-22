VM bytecode disassembly
  ROM:          Uncharted Waters (USA).nes
  mode:         bulk dump of bank 28
  opcode spec:  vm-opcodes-v2.toml via nobunaga_vm.OPCODE_INFO (execution-validated lengths)
  labels:       0 CPU addresses named

  bank 28: found 22 bytecode-subroutine stubs

; ============================================================
; sub $8003   (frame_off=+0, body @ $8008)   [PRG $38003]
; ============================================================
  $8008  8E E2 00                   PUSH_imm2              $00E2
  $800B  8E EA B5                   PUSH_imm2              $B5EA
  $800E  8E DE B2                   PUSH_imm2              $B2DE
  $8011  8D 1A                      BYTE_PUSH_imm1         +26
  $8013  8D 1E                      BYTE_PUSH_imm1         +30
  $8015  62                         PUSH_qimm   ; inline operand = 2
  $8016  61                         PUSH_qimm   ; inline operand = 1
  $8017  69                         PUSH_qimm   ; inline operand = 9
  $8018  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $801C  8E E7 00                   PUSH_imm2              $00E7
  $801F  8E A6 A8                   PUSH_imm2              $A8A6
  $8022  8E 16 A8                   PUSH_imm2              $A816
  $8025  69                         PUSH_qimm   ; inline operand = 9
  $8026  8D 10                      BYTE_PUSH_imm1         +16
  $8028  61                         PUSH_qimm   ; inline operand = 1
  $8029  68                         PUSH_qimm   ; inline operand = 8
  $802A  69                         PUSH_qimm   ; inline operand = 9
  $802B  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $802F  8E E7 00                   PUSH_imm2              $00E7
  $8032  8E A6 A8                   PUSH_imm2              $A8A6
  $8035  8E 16 A8                   PUSH_imm2              $A816
  $8038  69                         PUSH_qimm   ; inline operand = 9
  $8039  8D 10                      BYTE_PUSH_imm1         +16
  $803B  69                         PUSH_qimm   ; inline operand = 9
  $803C  60                         PUSH_qimm   ; inline operand = 0
  $803D  69                         PUSH_qimm   ; inline operand = 9
  $803E  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8042  8E E7 00                   PUSH_imm2              $00E7
  $8045  8E A6 A8                   PUSH_imm2              $A8A6
  $8048  8E 16 A8                   PUSH_imm2              $A816
  $804B  69                         PUSH_qimm   ; inline operand = 9
  $804C  8D 10                      BYTE_PUSH_imm1         +16
  $804E  69                         PUSH_qimm   ; inline operand = 9
  $804F  8D 10                      BYTE_PUSH_imm1         +16
  $8051  69                         PUSH_qimm   ; inline operand = 9
  $8052  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8056  8E E7 00                   PUSH_imm2              $00E7
  $8059  8E E6 A9                   PUSH_imm2              $A9E6
  $805C  8E 36 A9                   PUSH_imm2              $A936
  $805F  6B                         PUSH_qimm   ; inline operand = 11
  $8060  8D 10                      BYTE_PUSH_imm1         +16
  $8062  8D 11                      BYTE_PUSH_imm1         +17
  $8064  68                         PUSH_qimm   ; inline operand = 8
  $8065  69                         PUSH_qimm   ; inline operand = 9
  $8066  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $806A  CF                         RETURN

; ============================================================
; sub $806B   (frame_off=+0, body @ $8070)   [PRG $3806B]
; ============================================================
  $8070  8E E2 00                   PUSH_imm2              $00E2
  $8073  0F                         LOADL_quick   ; inline operand = 15
  $8074  D2                         LSHIFT1
  $8075  D2                         LSHIFT1
  $8076  8C 90 8B                   LOADR_imm2             $8B90
  $8079  BB                         ADD
  $807A  B0                         DEREF
  $807B  B3                         PUSHL
  $807C  0F                         LOADL_quick   ; inline operand = 15
  $807D  D2                         LSHIFT1
  $807E  D2                         LSHIFT1
  $807F  8C 8E 8B                   LOADR_imm2             $8B8E
  $8082  BB                         ADD
  $8083  B0                         DEREF
  $8084  B3                         PUSHL
  $8085  61                         PUSH_qimm   ; inline operand = 1
  $8086  62                         PUSH_qimm   ; inline operand = 2
  $8087  3D                         PUSH_quick   ; inline operand = 13
  $8088  3C                         PUSH_quick   ; inline operand = 12
  $8089  69                         PUSH_qimm   ; inline operand = 9
  $808A  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $808E  8E E2 00                   PUSH_imm2              $00E2
  $8091  0E                         LOADL_quick   ; inline operand = 14
  $8092  D2                         LSHIFT1
  $8093  D2                         LSHIFT1
  $8094  B3                         PUSHL
  $8095  0F                         LOADL_quick   ; inline operand = 15
  $8096  8C AE 8B                   LOADR_imm2             $8BAE
  $8099  BB                         ADD
  $809A  D3                         BYTE_DEREF
  $809B  8B 34                      BYTE_LOADR_imm1        +52
  $809D  B5                         MULT
  $809E  B4                         POPR
  $809F  BB                         ADD
  $80A0  8C F0 B0                   LOADR_imm2             $B0F0
  $80A3  BB                         ADD
  $80A4  B3                         PUSHL
  $80A5  0E                         LOADL_quick   ; inline operand = 14
  $80A6  D2                         LSHIFT1
  $80A7  D2                         LSHIFT1
  $80A8  B3                         PUSHL
  $80A9  0F                         LOADL_quick   ; inline operand = 15
  $80AA  8C AE 8B                   LOADR_imm2             $8BAE
  $80AD  BB                         ADD
  $80AE  D3                         BYTE_DEREF
  $80AF  8B 34                      BYTE_LOADR_imm1        +52
  $80B1  B5                         MULT
  $80B2  B4                         POPR
  $80B3  BB                         ADD
  $80B4  8C EE B0                   LOADR_imm2             $B0EE
  $80B7  BB                         ADD
  $80B8  B3                         PUSHL
  $80B9  61                         PUSH_qimm   ; inline operand = 1
  $80BA  62                         PUSH_qimm   ; inline operand = 2
  $80BB  0D                         LOADL_quick   ; inline operand = 13
  $80BC  D0                         INC
  $80BD  B3                         PUSHL
  $80BE  3C                         PUSH_quick   ; inline operand = 12
  $80BF  69                         PUSH_qimm   ; inline operand = 9
  $80C0  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $80C4  8E E2 00                   PUSH_imm2              $00E2
  $80C7  0F                         LOADL_quick   ; inline operand = 15
  $80C8  D2                         LSHIFT1
  $80C9  D2                         LSHIFT1
  $80CA  8C A0 8B                   LOADR_imm2             $8BA0
  $80CD  BB                         ADD
  $80CE  B0                         DEREF
  $80CF  B3                         PUSHL
  $80D0  0F                         LOADL_quick   ; inline operand = 15
  $80D1  D2                         LSHIFT1
  $80D2  D2                         LSHIFT1
  $80D3  8C 9E 8B                   LOADR_imm2             $8B9E
  $80D6  BB                         ADD
  $80D7  B0                         DEREF
  $80D8  B3                         PUSHL
  $80D9  61                         PUSH_qimm   ; inline operand = 1
  $80DA  62                         PUSH_qimm   ; inline operand = 2
  $80DB  0D                         LOADL_quick   ; inline operand = 13
  $80DC  72                         ADD_qimm   ; inline operand = 2
  $80DD  B3                         PUSHL
  $80DE  3C                         PUSH_quick   ; inline operand = 12
  $80DF  69                         PUSH_qimm   ; inline operand = 9
  $80E0  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $80E4  0D                         LOADL_quick   ; inline operand = 13
  $80E5  D1                         DEC
  $80E6  B3                         PUSHL
  $80E7  3C                         PUSH_quick   ; inline operand = 12
  $80E8  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $80EC  60                         PUSH_qimm   ; inline operand = 0
  $80ED  8E B2 8B                   PUSH_imm2              $8BB2
  $80F0  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $80F4  CF                         RETURN

; ============================================================
; sub $80F5   (frame_off=+0, body @ $80FA)   [PRG $380F5]
; ============================================================
  $80FA  63                         PUSH_qimm   ; inline operand = 3
  $80FB  E9 8D CE 02                CALL_abs_imm1          $CE8D {native}, $02
  $80FF  CF                         RETURN

; ============================================================
; sub $8100   (frame_off=-11, body @ $8105)   [PRG $38100]
; ============================================================
  $8105  40                         LOADL_qimm   ; inline operand = 0
  $8106  85 F5                      STORE_near             $F5
  $8108  85 F7                      STORE_near             $F7
  $810A  D6 4D 81                   JUMP_abs               $814D
 >$810D  81 F5                      LOADL_near             $F5
  $810F  51                         LOADR_qimm   ; inline operand = 1
  $8110  C1                         CMPNE
  $8111  D8 48 81                   JUMPF_abs              $8148
  $8114  81 F5                      LOADL_near             $F5
  $8116  53                         LOADR_qimm   ; inline operand = 3
  $8117  C1                         CMPNE
  $8118  D8 48 81                   JUMPF_abs              $8148
  $811B  81 F5                      LOADL_near             $F5
  $811D  55                         LOADR_qimm   ; inline operand = 5
  $811E  C1                         CMPNE
  $811F  D8 48 81                   JUMPF_abs              $8148
  $8122  81 F5                      LOADL_near             $F5
  $8124  8C 68 8E                   LOADR_imm2             $8E68
  $8127  BB                         ADD
  $8128  D3                         BYTE_DEREF
  $8129  B3                         PUSHL
  $812A  A5 66 70                   BYTE_LOADL_abs         $7066
  $812D  B4                         POPR
  $812E  DA                         AND
  $812F  D8 48 81                   JUMPF_abs              $8148
  $8132  DE FA FF                   LEAL_far               $FFFA
  $8135  B3                         PUSHL
  $8136  81 F7                      LOADL_near             $F7
  $8138  B4                         POPR
  $8139  BB                         ADD
  $813A  B3                         PUSHL
  $813B  81 F5                      LOADL_near             $F5
  $813D  8C 6E 8E                   LOADR_imm2             $8E6E
  $8140  BB                         ADD
  $8141  D3                         BYTE_DEREF
  $8142  D4                         BYTE_POPSTORE
  $8143  81 F7                      LOADL_near             $F7
  $8145  D0                         INC
  $8146  85 F7                      STORE_near             $F7
 >$8148  81 F5                      LOADL_near             $F5
  $814A  D0                         INC
  $814B  85 F5                      STORE_near             $F5
 >$814D  81 F5                      LOADL_near             $F5
  $814F  56                         LOADR_qimm   ; inline operand = 6
  $8150  C6                         UCMPLT
  $8151  D7 0D 81                   JUMPT_abs              $810D
  $8154  DE FA FF                   LEAL_far               $FFFA
  $8157  B3                         PUSHL
  $8158  87 F7                      PUSH_near              $F7
  $815A  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $815E  B4                         POPR
  $815F  BB                         ADD
  $8160  D3                         BYTE_DEREF
  $8161  A2 F9 FF                   BYTE_STORE_far         $FFF9
  $8164  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $8167  CF                         RETURN

; ============================================================
; sub $8168   (frame_off=+0, body @ $816D)   [PRG $38168]
; ============================================================
  $816D  8E E2 00                   PUSH_imm2              $00E2
  $8170  8E EA B5                   PUSH_imm2              $B5EA
  $8173  8E DE B2                   PUSH_imm2              $B2DE
  $8176  8D 1A                      BYTE_PUSH_imm1         +26
  $8178  8D 1E                      BYTE_PUSH_imm1         +30
  $817A  62                         PUSH_qimm   ; inline operand = 2
  $817B  61                         PUSH_qimm   ; inline operand = 1
  $817C  69                         PUSH_qimm   ; inline operand = 9
  $817D  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8181  8E E7 00                   PUSH_imm2              $00E7
  $8184  8E 88 AB                   PUSH_imm2              $AB88
  $8187  8E 96 AA                   PUSH_imm2              $AA96
  $818A  6B                         PUSH_qimm   ; inline operand = 11
  $818B  8D 16                      BYTE_PUSH_imm1         +22
  $818D  63                         PUSH_qimm   ; inline operand = 3
  $818E  66                         PUSH_qimm   ; inline operand = 6
  $818F  69                         PUSH_qimm   ; inline operand = 9
  $8190  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8194  8E E7 00                   PUSH_imm2              $00E7
  $8197  8E 88 AB                   PUSH_imm2              $AB88
  $819A  8E 96 AA                   PUSH_imm2              $AA96
  $819D  6B                         PUSH_qimm   ; inline operand = 11
  $819E  8D 16                      BYTE_PUSH_imm1         +22
  $81A0  8D 10                      BYTE_PUSH_imm1         +16
  $81A2  66                         PUSH_qimm   ; inline operand = 6
  $81A3  69                         PUSH_qimm   ; inline operand = 9
  $81A4  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $81A8  8D 10                      BYTE_PUSH_imm1         +16
  $81AA  60                         PUSH_qimm   ; inline operand = 0
  $81AB  8E 74 8E                   PUSH_imm2              $8E74
  $81AE  66                         PUSH_qimm   ; inline operand = 6
  $81AF  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $81B3  63                         PUSH_qimm   ; inline operand = 3
  $81B4  A0 0B 00                   BYTE_LOADL_far         $000B
  $81B7  B3                         PUSHL
  $81B8  63                         PUSH_qimm   ; inline operand = 3
  $81B9  65                         PUSH_qimm   ; inline operand = 5
  $81BA  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $81BE  63                         PUSH_qimm   ; inline operand = 3
  $81BF  60                         PUSH_qimm   ; inline operand = 0
  $81C0  8D 10                      BYTE_PUSH_imm1         +16
  $81C2  65                         PUSH_qimm   ; inline operand = 5
  $81C3  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $81C7  CF                         RETURN

; ============================================================
; sub $81C8   (frame_off=-1, body @ $81CD)   [PRG $381C8]
; ============================================================
  $81CD  A0 0B 00                   BYTE_LOADL_far         $000B
  $81D0  54                         LOADR_qimm   ; inline operand = 4
  $81D1  BE                         URSHIFT
  $81D2  5F                         LOADR_qimm   ; inline operand = 15
  $81D3  DA                         AND
  $81D4  A2 FF FF                   BYTE_STORE_far         $FFFF
  $81D7  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $81DA  B3                         PUSHL
  $81DB  A0 0B 00                   BYTE_LOADL_far         $000B
  $81DE  5F                         LOADR_qimm   ; inline operand = 15
  $81DF  DA                         AND
  $81E0  B3                         PUSHL
  $81E1  A0 0F 00                   BYTE_LOADL_far         $000F
  $81E4  B3                         PUSHL
  $81E5  A0 0D 00                   BYTE_LOADL_far         $000D
  $81E8  B3                         PUSHL
  $81E9  E9 6B 80 08                CALL_abs_imm1          $806B {bytecode}, $08
  $81ED  CF                         RETURN

; ============================================================
; sub $81EE   (frame_off=+0, body @ $81F3)   [PRG $381EE]
; ============================================================
  $81F3  A0 0B 00                   BYTE_LOADL_far         $000B
  $81F6  5F                         LOADR_qimm   ; inline operand = 15
  $81F7  DA                         AND
  $81F8  A2 0B 00                   BYTE_STORE_far         $000B
  $81FB  A0 0B 00                   BYTE_LOADL_far         $000B
  $81FE  D7 03 82                   JUMPT_abs              $8203
  $8201  40                         LOADL_qimm   ; inline operand = 0
  $8202  CF                         RETURN
 >$8203  41                         LOADL_qimm   ; inline operand = 1
  $8204  CF                         RETURN

; ============================================================
; sub $8205   (frame_off=-1, body @ $820A)   [PRG $38205]
; ============================================================
  $820A  A0 0B 00                   BYTE_LOADL_far         $000B
  $820D  5F                         LOADR_qimm   ; inline operand = 15
  $820E  DA                         AND
  $820F  A2 0B 00                   BYTE_STORE_far         $000B
  $8212  A0 0B 00                   BYTE_LOADL_far         $000B
  $8215  B3                         PUSHL
  $8216  49                         LOADL_qimm   ; inline operand = 9
  $8217  B4                         POPR
  $8218  C6                         UCMPLT
  $8219  D8 24 82                   JUMPF_abs              $8224
  $821C  A0 0B 00                   BYTE_LOADL_far         $000B
  $821F  5D                         LOADR_qimm   ; inline operand = 13
  $8220  C6                         UCMPLT
  $8221  D7 2A 82                   JUMPT_abs              $822A
 >$8224  A0 0B 00                   BYTE_LOADL_far         $000B
  $8227  D7 2E 82                   JUMPT_abs              $822E
 >$822A  40                         LOADL_qimm   ; inline operand = 0
  $822B  D6 2F 82                   JUMP_abs               $822F
 >$822E  41                         LOADL_qimm   ; inline operand = 1
 >$822F  A2 FF FF                   BYTE_STORE_far         $FFFF
  $8232  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8235  CF                         RETURN

; ============================================================
; sub $8236   (frame_off=-1, body @ $823B)   [PRG $38236]
; ============================================================
  $823B  A0 0B 00                   BYTE_LOADL_far         $000B
  $823E  B3                         PUSHL
  $823F  40                         LOADL_qimm   ; inline operand = 0
  $8240  B4                         POPR
  $8241  C6                         UCMPLT
  $8242  D8 54 82                   JUMPF_abs              $8254
  $8245  A0 0B 00                   BYTE_LOADL_far         $000B
  $8248  5A                         LOADR_qimm   ; inline operand = 10
  $8249  C6                         UCMPLT
  $824A  D8 54 82                   JUMPF_abs              $8254
  $824D  A0 0B 00                   BYTE_LOADL_far         $000B
  $8250  D0                         INC
  $8251  D6 8A 82                   JUMP_abs               $828A
 >$8254  A0 0B 00                   BYTE_LOADL_far         $000B
  $8257  B3                         PUSHL
  $8258  49                         LOADL_qimm   ; inline operand = 9
  $8259  B4                         POPR
  $825A  C6                         UCMPLT
  $825B  D8 6A 82                   JUMPF_abs              $826A
  $825E  A0 0B 00                   BYTE_LOADL_far         $000B
  $8261  5D                         LOADR_qimm   ; inline operand = 13
  $8262  C6                         UCMPLT
  $8263  D8 6A 82                   JUMPF_abs              $826A
  $8266  4A                         LOADL_qimm   ; inline operand = 10
  $8267  D6 8A 82                   JUMP_abs               $828A
 >$826A  A0 0B 00                   BYTE_LOADL_far         $000B
  $826D  D7 8D 82                   JUMPT_abs              $828D
  $8270  4B                         LOADL_qimm   ; inline operand = 11
  $8271  A2 0B 00                   BYTE_STORE_far         $000B
  $8274  A0 0D 00                   BYTE_LOADL_far         $000D
  $8277  B3                         PUSHL
  $8278  A0 0B 00                   BYTE_LOADL_far         $000B
  $827B  B4                         POPR
  $827C  BB                         ADD
  $827D  8B 15                      BYTE_LOADR_imm1        +21
  $827F  C7                         UCMPLE
  $8280  D8 89 82                   JUMPF_abs              $8289
  $8283  A0 0B 00                   BYTE_LOADL_far         $000B
  $8286  D6 8A 82                   JUMP_abs               $828A
 >$8289  41                         LOADL_qimm   ; inline operand = 1
 >$828A  A2 FF FF                   BYTE_STORE_far         $FFFF
 >$828D  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8290  CF                         RETURN

; ============================================================
; sub $8291   (frame_off=-1, body @ $8296)   [PRG $38291]
; ============================================================
  $8296  A0 0B 00                   BYTE_LOADL_far         $000B
  $8299  B3                         PUSHL
  $829A  40                         LOADL_qimm   ; inline operand = 0
  $829B  B4                         POPR
  $829C  C6                         UCMPLT
  $829D  D8 AF 82                   JUMPF_abs              $82AF
  $82A0  A0 0B 00                   BYTE_LOADL_far         $000B
  $82A3  5A                         LOADR_qimm   ; inline operand = 10
  $82A4  C6                         UCMPLT
  $82A5  D8 AF 82                   JUMPF_abs              $82AF
  $82A8  A0 0B 00                   BYTE_LOADL_far         $000B
  $82AB  D0                         INC
  $82AC  D6 C2 82                   JUMP_abs               $82C2
 >$82AF  A0 0B 00                   BYTE_LOADL_far         $000B
  $82B2  B3                         PUSHL
  $82B3  49                         LOADL_qimm   ; inline operand = 9
  $82B4  B4                         POPR
  $82B5  C6                         UCMPLT
  $82B6  D8 C5 82                   JUMPF_abs              $82C5
  $82B9  A0 0B 00                   BYTE_LOADL_far         $000B
  $82BC  5D                         LOADR_qimm   ; inline operand = 13
  $82BD  C6                         UCMPLT
  $82BE  D8 C5 82                   JUMPF_abs              $82C5
  $82C1  4A                         LOADL_qimm   ; inline operand = 10
 >$82C2  A2 FF FF                   BYTE_STORE_far         $FFFF
 >$82C5  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $82C8  CF                         RETURN

; ============================================================
; sub $82C9   (frame_off=-7, body @ $82CE)   [PRG $382C9]
; ============================================================
  $82CE  A0 0B 00                   BYTE_LOADL_far         $000B
  $82D1  D0                         INC
  $82D2  A2 F9 FF                   BYTE_STORE_far         $FFF9
 >$82D5  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $82D8  D1                         DEC
  $82D9  A2 F9 FF                   BYTE_STORE_far         $FFF9
  $82DC  40                         LOADL_qimm   ; inline operand = 0
  $82DD  D6 F0 82                   JUMP_abs               $82F0
 >$82E0  DE FC FF                   LEAL_far               $FFFC
  $82E3  B3                         PUSHL
  $82E4  A0 FB FF                   BYTE_LOADL_far         $FFFB
  $82E7  B4                         POPR
  $82E8  BB                         ADD
  $82E9  B3                         PUSHL
  $82EA  4B                         LOADL_qimm   ; inline operand = 11
  $82EB  D4                         BYTE_POPSTORE
  $82EC  A0 FB FF                   BYTE_LOADL_far         $FFFB
  $82EF  D0                         INC
 >$82F0  A2 FB FF                   BYTE_STORE_far         $FFFB
  $82F3  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $82F6  B3                         PUSHL
  $82F7  A0 FB FF                   BYTE_LOADL_far         $FFFB
  $82FA  B4                         POPR
  $82FB  C6                         UCMPLT
  $82FC  D7 E0 82                   JUMPT_abs              $82E0
  $82FF  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $8302  D6 15 83                   JUMP_abs               $8315
 >$8305  DE FC FF                   LEAL_far               $FFFC
  $8308  B3                         PUSHL
  $8309  A0 FB FF                   BYTE_LOADL_far         $FFFB
  $830C  B4                         POPR
  $830D  BB                         ADD
  $830E  B3                         PUSHL
  $830F  41                         LOADL_qimm   ; inline operand = 1
  $8310  D4                         BYTE_POPSTORE
  $8311  A0 FB FF                   BYTE_LOADL_far         $FFFB
  $8314  D0                         INC
 >$8315  A2 FB FF                   BYTE_STORE_far         $FFFB
  $8318  A0 0B 00                   BYTE_LOADL_far         $000B
  $831B  B3                         PUSHL
  $831C  A0 FB FF                   BYTE_LOADL_far         $FFFB
  $831F  B4                         POPR
  $8320  C6                         UCMPLT
  $8321  D7 05 83                   JUMPT_abs              $8305
  $8324  A0 0D 00                   BYTE_LOADL_far         $000D
  $8327  A2 FA FF                   BYTE_STORE_far         $FFFA
  $832A  40                         LOADL_qimm   ; inline operand = 0
  $832B  D6 44 83                   JUMP_abs               $8344
 >$832E  DE FC FF                   LEAL_far               $FFFC
  $8331  B3                         PUSHL
  $8332  A0 FB FF                   BYTE_LOADL_far         $FFFB
  $8335  B4                         POPR
  $8336  BB                         ADD
  $8337  D3                         BYTE_DEREF
  $8338  CD                         SWAP
  $8339  A0 FA FF                   BYTE_LOADL_far         $FFFA
  $833C  BB                         ADD
  $833D  A2 FA FF                   BYTE_STORE_far         $FFFA
  $8340  A0 FB FF                   BYTE_LOADL_far         $FFFB
  $8343  D0                         INC
 >$8344  A2 FB FF                   BYTE_STORE_far         $FFFB
  $8347  A0 0B 00                   BYTE_LOADL_far         $000B
  $834A  B3                         PUSHL
  $834B  A0 FB FF                   BYTE_LOADL_far         $FFFB
  $834E  B4                         POPR
  $834F  C6                         UCMPLT
  $8350  D7 2E 83                   JUMPT_abs              $832E
  $8353  A0 FA FF                   BYTE_LOADL_far         $FFFA
  $8356  8B 16                      BYTE_LOADR_imm1        +22
  $8358  C6                         UCMPLT
  $8359  D7 62 83                   JUMPT_abs              $8362
  $835C  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $835F  D7 D5 82                   JUMPT_abs              $82D5
 >$8362  A0 FA FF                   BYTE_LOADL_far         $FFFA
  $8365  CF                         RETURN

; ============================================================
; sub $8366   (frame_off=-2, body @ $836B)   [PRG $38366]
; ============================================================
  $836B  40                         LOADL_qimm   ; inline operand = 0
  $836C  A2 FF FF                   BYTE_STORE_far         $FFFF
  $836F  40                         LOADL_qimm   ; inline operand = 0
  $8370  D6 8A 83                   JUMP_abs               $838A
 >$8373  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $8376  1C                         LOADR_quick   ; inline operand = 12
  $8377  BB                         ADD
  $8378  D3                         BYTE_DEREF
  $8379  B3                         PUSHL
  $837A  E9 91 82 02                CALL_abs_imm1          $8291 {bytecode}, $02
  $837E  CD                         SWAP
  $837F  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8382  BB                         ADD
  $8383  A2 FF FF                   BYTE_STORE_far         $FFFF
  $8386  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $8389  D0                         INC
 >$838A  A2 FE FF                   BYTE_STORE_far         $FFFE
  $838D  A0 0D 00                   BYTE_LOADL_far         $000D
  $8390  B3                         PUSHL
  $8391  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $8394  B4                         POPR
  $8395  C6                         UCMPLT
  $8396  D7 73 83                   JUMPT_abs              $8373
  $8399  A0 0F 00                   BYTE_LOADL_far         $000F
  $839C  D8 AE 83                   JUMPF_abs              $83AE
  $839F  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $83A2  B3                         PUSHL
  $83A3  A0 0F 00                   BYTE_LOADL_far         $000F
  $83A6  B3                         PUSHL
  $83A7  E9 C9 82 04                CALL_abs_imm1          $82C9 {bytecode}, $04
  $83AB  A2 FF FF                   BYTE_STORE_far         $FFFF
 >$83AE  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $83B1  CF                         RETURN

; ============================================================
; sub $83B2   (frame_off=-5, body @ $83B7)   [PRG $383B2]
; ============================================================
  $83B7  68                         PUSH_qimm   ; inline operand = 8
  $83B8  6A                         PUSH_qimm   ; inline operand = 10
  $83B9  6A                         PUSH_qimm   ; inline operand = 10
  $83BA  61                         PUSH_qimm   ; inline operand = 1
  $83BB  E9 02 A5 08                CALL_abs_imm1          $A502 {native}, $08
 >$83BF  62                         PUSH_qimm   ; inline operand = 2
  $83C0  8E 84 8E                   PUSH_imm2              $8E84
  $83C3  62                         PUSH_qimm   ; inline operand = 2
  $83C4  6A                         PUSH_qimm   ; inline operand = 10
  $83C5  61                         PUSH_qimm   ; inline operand = 1
  $83C6  E9 8D A0 0A                CALL_abs_imm1          $A08D {native}, $0A
  $83CA  A2 FD FF                   BYTE_STORE_far         $FFFD
  $83CD  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $83D0  8C FF 00                   LOADR_imm2             $00FF
  $83D3  C0                         CMPEQ
  $83D4  D7 BF 83                   JUMPT_abs              $83BF
  $83D7  AC 44 A5                   CALL_abs               $A544 {native}
  $83DA  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $83DD  D9 02 00 00 00 EA 83 01 00 F2 83 EE ... SWITCH_noncontig       count=2   ; .table 2 (key,target) + default (noncontiguous); SWITCH 0=>$83EA 1=>$83F2 default=>$83EE
 >$83EA  40                         LOADL_qimm   ; inline operand = 0
 >$83EB  A2 FE FF                   BYTE_STORE_far         $FFFE
 >$83EE  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $83F1  CF                         RETURN
 >$83F2  4D                         LOADL_qimm   ; inline operand = 13
  $83F3  D6 EB 83                   JUMP_abs               $83EB

; ============================================================
; sub $83F6   (frame_off=-2, body @ $83FB)   [PRG $383F6]
; ============================================================
  $83FB  40                         LOADL_qimm   ; inline operand = 0
  $83FC  D6 30 84                   JUMP_abs               $8430
 >$83FF  40                         LOADL_qimm   ; inline operand = 0
  $8400  D6 21 84                   JUMP_abs               $8421
 >$8403  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $8406  B3                         PUSHL
  $8407  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $840A  5D                         LOADR_qimm   ; inline operand = 13
  $840B  B5                         MULT
  $840C  B4                         POPR
  $840D  BB                         ADD
  $840E  1C                         LOADR_quick   ; inline operand = 12
  $840F  BB                         ADD
  $8410  B3                         PUSHL
  $8411  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $8414  B3                         PUSHL
  $8415  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8418  54                         LOADR_qimm   ; inline operand = 4
  $8419  BD                         LSHIFT
  $841A  B4                         POPR
  $841B  DB                         OR
  $841C  D4                         BYTE_POPSTORE
  $841D  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $8420  D0                         INC
 >$8421  A2 FE FF                   BYTE_STORE_far         $FFFE
  $8424  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $8427  5D                         LOADR_qimm   ; inline operand = 13
  $8428  C6                         UCMPLT
  $8429  D7 03 84                   JUMPT_abs              $8403
  $842C  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $842F  D0                         INC
 >$8430  A2 FF FF                   BYTE_STORE_far         $FFFF
  $8433  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8436  54                         LOADR_qimm   ; inline operand = 4
  $8437  C6                         UCMPLT
  $8438  D7 FF 83                   JUMPT_abs              $83FF
  $843B  CF                         RETURN

; ============================================================
; sub $843C   (frame_off=+0, body @ $8441)   [PRG $3843C]
; ============================================================
  $8441  60                         PUSH_qimm   ; inline operand = 0
  $8442  61                         PUSH_qimm   ; inline operand = 1
  $8443  66                         PUSH_qimm   ; inline operand = 6
  $8444  8D 12                      BYTE_PUSH_imm1         +18
  $8446  63                         PUSH_qimm   ; inline operand = 3
  $8447  6A                         PUSH_qimm   ; inline operand = 10
  $8448  E9 3C A7 0C                CALL_abs_imm1          $A73C (native_draw_box) {native}, $0C
  $844C  64                         PUSH_qimm   ; inline operand = 4
  $844D  6B                         PUSH_qimm   ; inline operand = 11
  $844E  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8452  4B                         LOADL_qimm   ; inline operand = 11
  $8453  A8 8A 72                   STORE_abs              $728A
  $8456  3C                         PUSH_quick   ; inline operand = 12
  $8457  8E 92 8E                   PUSH_imm2              $8E92
  $845A  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $845E  40                         LOADL_qimm   ; inline operand = 0
  $845F  A8 8A 72                   STORE_abs              $728A
  $8462  CF                         RETURN

; ============================================================
; sub $8463   (frame_off=+0, body @ $8468)   [PRG $38463]
; ============================================================
  $8468  60                         PUSH_qimm   ; inline operand = 0
  $8469  60                         PUSH_qimm   ; inline operand = 0
  $846A  64                         PUSH_qimm   ; inline operand = 4
  $846B  8D 11                      BYTE_PUSH_imm1         +17
  $846D  69                         PUSH_qimm   ; inline operand = 9
  $846E  6A                         PUSH_qimm   ; inline operand = 10
  $846F  68                         PUSH_qimm   ; inline operand = 8
  $8470  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $8474  60                         PUSH_qimm   ; inline operand = 0
  $8475  60                         PUSH_qimm   ; inline operand = 0
  $8476  66                         PUSH_qimm   ; inline operand = 6
  $8477  8D 11                      BYTE_PUSH_imm1         +17
  $8479  8D 11                      BYTE_PUSH_imm1         +17
  $847B  6A                         PUSH_qimm   ; inline operand = 10
  $847C  68                         PUSH_qimm   ; inline operand = 8
  $847D  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $8481  CF                         RETURN

; ============================================================
; sub $8482   (frame_off=-122, body @ $8487)   [PRG $38482]
; ============================================================
  $8487  AC 00 81                   CALL_abs               $8100 {bytecode}
  $848A  A2 8A FF                   BYTE_STORE_far         $FF8A
  $848D  A0 8A FF                   BYTE_LOADL_far         $FF8A
  $8490  B3                         PUSHL
  $8491  E9 68 81 02                CALL_abs_imm1          $8168 (blackjack_hit) {bytecode}, $02
  $8495  DE CC FF                   LEAL_far               $FFCC
  $8498  B3                         PUSHL
  $8499  E9 F6 83 02                CALL_abs_imm1          $83F6 {bytecode}, $02
  $849D  40                         LOADL_qimm   ; inline operand = 0
  $849E  A2 B7 FF                   BYTE_STORE_far         $FFB7
  $84A1  41                         LOADL_qimm   ; inline operand = 1
  $84A2  A2 B6 FF                   BYTE_STORE_far         $FFB6
  $84A5  A4 6B 66                   LOADL_abs              $666B
  $84A8  85 8D                      STORE_near             $8D
 >$84AA  AC 63 84                   CALL_abs               $8463 {bytecode}
  $84AD  40                         LOADL_qimm   ; inline operand = 0
  $84AE  A2 B8 FF                   BYTE_STORE_far         $FFB8
  $84B1  40                         LOADL_qimm   ; inline operand = 0
  $84B2  A2 B1 FF                   BYTE_STORE_far         $FFB1
  $84B5  40                         LOADL_qimm   ; inline operand = 0
  $84B6  A2 B0 FF                   BYTE_STORE_far         $FFB0
  $84B9  8D 17                      BYTE_PUSH_imm1         +23
  $84BB  6B                         PUSH_qimm   ; inline operand = 11
  $84BC  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $84C0  87 8D                      PUSH_near              $8D
  $84C2  8E 9D 8E                   PUSH_imm2              $8E9D
  $84C5  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $84C9  81 8D                      LOADL_near             $8D
  $84CB  55                         LOADR_qimm   ; inline operand = 5
  $84CC  C6                         UCMPLT
  $84CD  D8 EB 84                   JUMPF_abs              $84EB
  $84D0  62                         PUSH_qimm   ; inline operand = 2
  $84D1  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $84D5  D2                         LSHIFT1
  $84D6  8C 90 8D                   LOADR_imm2             $8D90
  $84D9  BB                         ADD
  $84DA  B0                         DEREF
  $84DB  B3                         PUSHL
  $84DC  E9 3C 84 02                CALL_abs_imm1          $843C {bytecode}, $02
  $84E0  61                         PUSH_qimm   ; inline operand = 1
  $84E1  E9 9B CE 02                CALL_abs_imm1          $CE9B {native}, $02
  $84E5  81 8D                      LOADL_near             $8D
  $84E7  A8 6B 66                   STORE_abs              $666B
  $84EA  CF                         RETURN
 >$84EB  DE CC FF                   LEAL_far               $FFCC
  $84EE  B3                         PUSHL
  $84EF  E9 F1 8A 02                CALL_abs_imm1          $8AF1 {bytecode}, $02
  $84F3  40                         LOADL_qimm   ; inline operand = 0
  $84F4  85 88                      STORE_near             $88
 >$84F6  40                         LOADL_qimm   ; inline operand = 0
  $84F7  85 86                      STORE_near             $86
 >$84F9  DE C8 FF                   LEAL_far               $FFC8
  $84FC  B3                         PUSHL
  $84FD  81 86                      LOADL_near             $86
  $84FF  D2                         LSHIFT1
  $8500  83 88                      LOADR_near             $88
  $8502  BB                         ADD
  $8503  B4                         POPR
  $8504  BB                         ADD
  $8505  B3                         PUSHL
  $8506  DE CC FF                   LEAL_far               $FFCC
  $8509  B3                         PUSHL
  $850A  A0 B8 FF                   BYTE_LOADL_far         $FFB8
  $850D  D0                         INC
  $850E  A2 B8 FF                   BYTE_STORE_far         $FFB8
  $8511  D1                         DEC
  $8512  B4                         POPR
  $8513  BB                         ADD
  $8514  D3                         BYTE_DEREF
  $8515  D4                         BYTE_POPSTORE
  $8516  A0 B6 FF                   BYTE_LOADL_far         $FFB6
  $8519  83 86                      LOADR_near             $86
  $851B  C0                         CMPEQ
  $851C  D8 DE 85                   JUMPF_abs              $85DE
  $851F  DE C8 FF                   LEAL_far               $FFC8
  $8522  B3                         PUSHL
  $8523  81 86                      LOADL_near             $86
  $8525  D2                         LSHIFT1
  $8526  83 88                      LOADR_near             $88
  $8528  BB                         ADD
  $8529  B4                         POPR
  $852A  BB                         ADD
  $852B  D3                         BYTE_DEREF
  $852C  5F                         LOADR_qimm   ; inline operand = 15
  $852D  DA                         AND
  $852E  A2 AF FF                   BYTE_STORE_far         $FFAF
  $8531  DE 9E FF                   LEAL_far               $FF9E
  $8534  B3                         PUSHL
  $8535  81 88                      LOADL_near             $88
  $8537  B4                         POPR
  $8538  BB                         ADD
  $8539  B3                         PUSHL
  $853A  A0 AF FF                   BYTE_LOADL_far         $FFAF
  $853D  D4                         BYTE_POPSTORE
  $853E  81 88                      LOADL_near             $88
  $8540  D7 51 85                   JUMPT_abs              $8551
  $8543  AA 9B 8E                   PUSH_abs               $8E9B
  $8546  AA 99 8E                   PUSH_abs               $8E99
  $8549  A0 CA FF                   BYTE_LOADL_far         $FFCA
  $854C  B3                         PUSHL
  $854D  E9 C8 81 06                CALL_abs_imm1          $81C8 {bytecode}, $06
 >$8551  81 88                      LOADL_near             $88
  $8553  51                         LOADR_qimm   ; inline operand = 1
  $8554  C0                         CMPEQ
  $8555  D8 3C 86                   JUMPF_abs              $863C
  $8558  AA E7 8C                   PUSH_abs               $8CE7
  $855B  E9 3C 84 02                CALL_abs_imm1          $843C {bytecode}, $02
  $855F  81 8D                      LOADL_near             $8D
  $8561  D8 3C 86                   JUMPF_abs              $863C
 >$8564  66                         PUSH_qimm   ; inline operand = 6
  $8565  6B                         PUSH_qimm   ; inline operand = 11
  $8566  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $856A  81 8D                      LOADL_near             $8D
  $856C  8B 32                      BYTE_LOADR_imm1        +50
  $856E  C6                         UCMPLT
  $856F  D8 77 85                   JUMPF_abs              $8577
  $8572  81 8D                      LOADL_near             $8D
  $8574  D6 79 85                   JUMP_abs               $8579
 >$8577  89 32                      BYTE_LOADL_imm1        +50
 >$8579  B3                         PUSHL
  $857A  65                         PUSH_qimm   ; inline operand = 5
  $857B  8E AC 8E                   PUSH_imm2              $8EAC
  $857E  E9 12 CD 06                CALL_abs_imm1          $CD12 {native}, $06
  $8582  85 8B                      STORE_near             $8B
  $8584  81 8B                      LOADL_near             $8B
  $8586  8B FF                      BYTE_LOADR_imm1        -1
  $8588  C0                         CMPEQ
  $8589  D7 64 85                   JUMPT_abs              $8564
  $858C  81 8B                      LOADL_near             $8B
  $858E  5A                         LOADR_qimm   ; inline operand = 10
  $858F  C7                         UCMPLE
  $8590  D8 99 85                   JUMPF_abs              $8599
  $8593  AA 12 8D                   PUSH_abs               $8D12
  $8596  D6 AA 85                   JUMP_abs               $85AA
 >$8599  89 29                      BYTE_LOADL_imm1        +41
  $859B  83 8B                      LOADR_near             $8B
  $859D  C7                         UCMPLE
  $859E  D8 A7 85                   JUMPF_abs              $85A7
  $85A1  AA 16 8D                   PUSH_abs               $8D16
  $85A4  D6 AA 85                   JUMP_abs               $85AA
 >$85A7  AA 14 8D                   PUSH_abs               $8D14
 >$85AA  E9 3C 84 02                CALL_abs_imm1          $843C {bytecode}, $02
  $85AE  61                         PUSH_qimm   ; inline operand = 1
  $85AF  E9 9B CE 02                CALL_abs_imm1          $CE9B {native}, $02
  $85B3  81 8B                      LOADL_near             $8B
  $85B5  CD                         SWAP
  $85B6  81 8D                      LOADL_near             $8D
  $85B8  BC                         SUB
  $85B9  85 8D                      STORE_near             $8D
  $85BB  8D 15                      BYTE_PUSH_imm1         +21
  $85BD  6B                         PUSH_qimm   ; inline operand = 11
  $85BE  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $85C2  87 8B                      PUSH_near              $8B
  $85C4  8E AD 8E                   PUSH_imm2              $8EAD
  $85C7  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $85CB  8D 17                      BYTE_PUSH_imm1         +23
  $85CD  6B                         PUSH_qimm   ; inline operand = 11
  $85CE  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $85D2  87 8D                      PUSH_near              $8D
  $85D4  8E B5 8E                   PUSH_imm2              $8EB5
  $85D7  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $85DB  D6 3C 86                   JUMP_abs               $863C
 >$85DE  DE C8 FF                   LEAL_far               $FFC8
  $85E1  B3                         PUSHL
  $85E2  81 86                      LOADL_near             $86
  $85E4  D2                         LSHIFT1
  $85E5  83 88                      LOADR_near             $88
  $85E7  BB                         ADD
  $85E8  B4                         POPR
  $85E9  BB                         ADD
  $85EA  D3                         BYTE_DEREF
  $85EB  5F                         LOADR_qimm   ; inline operand = 15
  $85EC  DA                         AND
  $85ED  A2 AE FF                   BYTE_STORE_far         $FFAE
  $85F0  DE 8F FF                   LEAL_far               $FF8F
  $85F3  B3                         PUSHL
  $85F4  81 88                      LOADL_near             $88
  $85F6  B4                         POPR
  $85F7  BB                         ADD
  $85F8  B3                         PUSHL
  $85F9  A0 AE FF                   BYTE_LOADL_far         $FFAE
  $85FC  D4                         BYTE_POPSTORE
  $85FD  A0 B7 FF                   BYTE_LOADL_far         $FFB7
  $8600  83 86                      LOADR_near             $86
  $8602  C0                         CMPEQ
  $8603  D8 2D 86                   JUMPF_abs              $862D
  $8606  81 88                      LOADL_near             $88
  $8608  51                         LOADR_qimm   ; inline operand = 1
  $8609  C0                         CMPEQ
  $860A  D8 2D 86                   JUMPF_abs              $862D
  $860D  AA 97 8E                   PUSH_abs               $8E97
  $8610  81 88                      LOADL_near             $88
  $8612  D2                         LSHIFT1
  $8613  A6 95 8E                   LOADR_abs              $8E95
  $8616  BB                         ADD
  $8617  B3                         PUSHL
  $8618  DE C8 FF                   LEAL_far               $FFC8
  $861B  B3                         PUSHL
  $861C  81 86                      LOADL_near             $86
  $861E  D2                         LSHIFT1
  $861F  83 88                      LOADR_near             $88
  $8621  BB                         ADD
  $8622  B4                         POPR
  $8623  BB                         ADD
  $8624  D3                         BYTE_DEREF
  $8625  B3                         PUSHL
  $8626  E9 C8 81 06                CALL_abs_imm1          $81C8 {bytecode}, $06
  $862A  D6 3C 86                   JUMP_abs               $863C
 >$862D  AA 97 8E                   PUSH_abs               $8E97
  $8630  81 88                      LOADL_near             $88
  $8632  D2                         LSHIFT1
  $8633  A6 95 8E                   LOADR_abs              $8E95
  $8636  BB                         ADD
  $8637  B3                         PUSHL
  $8638  E9 39 8B 04                CALL_abs_imm1          $8B39 {bytecode}, $04
 >$863C  81 86                      LOADL_near             $86
  $863E  D0                         INC
  $863F  85 86                      STORE_near             $86
  $8641  81 86                      LOADL_near             $86
  $8643  52                         LOADR_qimm   ; inline operand = 2
  $8644  C6                         UCMPLT
  $8645  D7 F9 84                   JUMPT_abs              $84F9
  $8648  A0 B1 FF                   BYTE_LOADL_far         $FFB1
  $864B  B3                         PUSHL
  $864C  A0 AF FF                   BYTE_LOADL_far         $FFAF
  $864F  B3                         PUSHL
  $8650  E9 36 82 04                CALL_abs_imm1          $8236 {bytecode}, $04
  $8654  CD                         SWAP
  $8655  A0 B1 FF                   BYTE_LOADL_far         $FFB1
  $8658  BB                         ADD
  $8659  A2 B1 FF                   BYTE_STORE_far         $FFB1
  $865C  A0 B0 FF                   BYTE_LOADL_far         $FFB0
  $865F  B3                         PUSHL
  $8660  A0 AE FF                   BYTE_LOADL_far         $FFAE
  $8663  B3                         PUSHL
  $8664  E9 36 82 04                CALL_abs_imm1          $8236 {bytecode}, $04
  $8668  CD                         SWAP
  $8669  A0 B0 FF                   BYTE_LOADL_far         $FFB0
  $866C  BB                         ADD
  $866D  A2 B0 FF                   BYTE_STORE_far         $FFB0
  $8670  81 88                      LOADL_near             $88
  $8672  D0                         INC
  $8673  85 88                      STORE_near             $88
  $8675  81 88                      LOADL_near             $88
  $8677  52                         LOADR_qimm   ; inline operand = 2
  $8678  C6                         UCMPLT
  $8679  D7 F6 84                   JUMPT_abs              $84F6
  $867C  40                         LOADL_qimm   ; inline operand = 0
  $867D  A2 AD FF                   BYTE_STORE_far         $FFAD
  $8680  40                         LOADL_qimm   ; inline operand = 0
  $8681  85 88                      STORE_near             $88
 >$8683  DE C8 FF                   LEAL_far               $FFC8
  $8686  B3                         PUSHL
  $8687  81 88                      LOADL_near             $88
  $8689  B4                         POPR
  $868A  BB                         ADD
  $868B  D3                         BYTE_DEREF
  $868C  B3                         PUSHL
  $868D  E9 05 82 02                CALL_abs_imm1          $8205 {bytecode}, $02
  $8691  CD                         SWAP
  $8692  A0 AD FF                   BYTE_LOADL_far         $FFAD
  $8695  BB                         ADD
  $8696  A2 AD FF                   BYTE_STORE_far         $FFAD
  $8699  81 88                      LOADL_near             $88
  $869B  D0                         INC
  $869C  85 88                      STORE_near             $88
  $869E  81 88                      LOADL_near             $88
  $86A0  52                         LOADR_qimm   ; inline operand = 2
  $86A1  C6                         UCMPLT
  $86A2  D7 83 86                   JUMPT_abs              $8683
  $86A5  A0 AD FF                   BYTE_LOADL_far         $FFAD
  $86A8  D7 FD 86                   JUMPT_abs              $86FD
  $86AB  A0 B0 FF                   BYTE_LOADL_far         $FFB0
  $86AE  8B 15                      BYTE_LOADR_imm1        +21
  $86B0  C0                         CMPEQ
  $86B1  D8 FD 86                   JUMPF_abs              $86FD
  $86B4  AA 97 8E                   PUSH_abs               $8E97
  $86B7  AA 95 8E                   PUSH_abs               $8E95
  $86BA  A0 C8 FF                   BYTE_LOADL_far         $FFC8
  $86BD  B3                         PUSHL
  $86BE  E9 C8 81 06                CALL_abs_imm1          $81C8 {bytecode}, $06
  $86C2  AA 0E 8E                   PUSH_abs               $8E0E
  $86C5  E9 3C 84 02                CALL_abs_imm1          $843C {bytecode}, $02
  $86C9  61                         PUSH_qimm   ; inline operand = 1
  $86CA  E9 9B CE 02                CALL_abs_imm1          $CE9B {native}, $02
  $86CE  62                         PUSH_qimm   ; inline operand = 2
  $86CF  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $86D3  D2                         LSHIFT1
  $86D4  8C 1A 8C                   LOADR_imm2             $8C1A
  $86D7  BB                         ADD
  $86D8  B0                         DEREF
  $86D9  B3                         PUSHL
  $86DA  E9 3C 84 02                CALL_abs_imm1          $843C {bytecode}, $02
  $86DE  61                         PUSH_qimm   ; inline operand = 1
  $86DF  E9 9B CE 02                CALL_abs_imm1          $CE9B {native}, $02
  $86E3  81 8B                      LOADL_near             $8B
  $86E5  D2                         LSHIFT1
  $86E6  B3                         PUSHL
  $86E7  81 8D                      LOADL_near             $8D
  $86E9  B4                         POPR
  $86EA  C6                         UCMPLT
  $86EB  D8 F4 86                   JUMPF_abs              $86F4
  $86EE  40                         LOADL_qimm   ; inline operand = 0
 >$86EF  85 8D                      STORE_near             $8D
  $86F1  D6 0F 8A                   JUMP_abs               $8A0F
 >$86F4  81 8B                      LOADL_near             $8B
  $86F6  CD                         SWAP
  $86F7  81 8D                      LOADL_near             $8D
  $86F9  BC                         SUB
  $86FA  D6 EF 86                   JUMP_abs               $86EF
 >$86FD  AA 9B 8E                   PUSH_abs               $8E9B
  $8700  A4 99 8E                   LOADL_abs              $8E99
  $8703  72                         ADD_qimm   ; inline operand = 2
  $8704  B3                         PUSHL
  $8705  A0 CB FF                   BYTE_LOADL_far         $FFCB
  $8708  B3                         PUSHL
  $8709  E9 C8 81 06                CALL_abs_imm1          $81C8 {bytecode}, $06
  $870D  40                         LOADL_qimm   ; inline operand = 0
  $870E  A2 AD FF                   BYTE_STORE_far         $FFAD
  $8711  40                         LOADL_qimm   ; inline operand = 0
  $8712  85 88                      STORE_near             $88
 >$8714  DE CA FF                   LEAL_far               $FFCA
  $8717  B3                         PUSHL
  $8718  81 88                      LOADL_near             $88
  $871A  B4                         POPR
  $871B  BB                         ADD
  $871C  D3                         BYTE_DEREF
  $871D  B3                         PUSHL
  $871E  E9 05 82 02                CALL_abs_imm1          $8205 {bytecode}, $02
  $8722  CD                         SWAP
  $8723  A0 AD FF                   BYTE_LOADL_far         $FFAD
  $8726  BB                         ADD
  $8727  A2 AD FF                   BYTE_STORE_far         $FFAD
  $872A  81 88                      LOADL_near             $88
  $872C  D0                         INC
  $872D  85 88                      STORE_near             $88
  $872F  81 88                      LOADL_near             $88
  $8731  52                         LOADR_qimm   ; inline operand = 2
  $8732  C6                         UCMPLT
  $8733  D7 14 87                   JUMPT_abs              $8714
  $8736  A0 AD FF                   BYTE_LOADL_far         $FFAD
  $8739  D7 85 87                   JUMPT_abs              $8785
  $873C  A0 B1 FF                   BYTE_LOADL_far         $FFB1
  $873F  8B 15                      BYTE_LOADR_imm1        +21
  $8741  C0                         CMPEQ
  $8742  D8 85 87                   JUMPF_abs              $8785
  $8745  AA 97 8E                   PUSH_abs               $8E97
  $8748  AA 95 8E                   PUSH_abs               $8E95
  $874B  A0 C8 FF                   BYTE_LOADL_far         $FFC8
  $874E  B3                         PUSHL
  $874F  E9 C8 81 06                CALL_abs_imm1          $81C8 {bytecode}, $06
  $8753  AA 0C 8E                   PUSH_abs               $8E0C
  $8756  E9 3C 84 02                CALL_abs_imm1          $843C {bytecode}, $02
  $875A  61                         PUSH_qimm   ; inline operand = 1
  $875B  E9 9B CE 02                CALL_abs_imm1          $CE9B {native}, $02
  $875F  62                         PUSH_qimm   ; inline operand = 2
  $8760  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8764  D2                         LSHIFT1
  $8765  8C E9 8B                   LOADR_imm2             $8BE9
  $8768  BB                         ADD
  $8769  B0                         DEREF
  $876A  B3                         PUSHL
  $876B  E9 3C 84 02                CALL_abs_imm1          $843C {bytecode}, $02
  $876F  81 8B                      LOADL_near             $8B
  $8771  53                         LOADR_qimm   ; inline operand = 3
  $8772  B5                         MULT
  $8773  85 8B                      STORE_near             $8B
  $8775  8E 60 EA                   PUSH_imm2              $EA60
  $8778  81 8D                      LOADL_near             $8D
  $877A  83 8B                      LOADR_near             $8B
  $877C  BB                         ADD
  $877D  B3                         PUSHL
  $877E  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8782  D6 EF 86                   JUMP_abs               $86EF
 >$8785  42                         LOADL_qimm   ; inline operand = 2
  $8786  85 88                      STORE_near             $88
  $8788  40                         LOADL_qimm   ; inline operand = 0
  $8789  A2 B2 FF                   BYTE_STORE_far         $FFB2
 >$878C  AA E9 8C                   PUSH_abs               $8CE9
  $878F  E9 3C 84 02                CALL_abs_imm1          $843C {bytecode}, $02
  $8793  AC B2 83                   CALL_abs               $83B2 {bytecode}
  $8796  A2 AD FF                   BYTE_STORE_far         $FFAD
  $8799  A0 AD FF                   BYTE_LOADL_far         $FFAD
  $879C  D7 4F 88                   JUMPT_abs              $884F
  $879F  A0 B2 FF                   BYTE_LOADL_far         $FFB2
  $87A2  55                         LOADR_qimm   ; inline operand = 5
  $87A3  C6                         UCMPLT
  $87A4  D8 3C 88                   JUMPF_abs              $883C
  $87A7  DE CC FF                   LEAL_far               $FFCC
  $87AA  B3                         PUSHL
  $87AB  A0 B8 FF                   BYTE_LOADL_far         $FFB8
  $87AE  D0                         INC
  $87AF  A2 B8 FF                   BYTE_STORE_far         $FFB8
  $87B2  D1                         DEC
  $87B3  B4                         POPR
  $87B4  BB                         ADD
  $87B5  D3                         BYTE_DEREF
  $87B6  A2 AF FF                   BYTE_STORE_far         $FFAF
  $87B9  DE 9E FF                   LEAL_far               $FF9E
  $87BC  B3                         PUSHL
  $87BD  81 88                      LOADL_near             $88
  $87BF  B4                         POPR
  $87C0  BB                         ADD
  $87C1  B3                         PUSHL
  $87C2  A0 AF FF                   BYTE_LOADL_far         $FFAF
  $87C5  5F                         LOADR_qimm   ; inline operand = 15
  $87C6  DA                         AND
  $87C7  D4                         BYTE_POPSTORE
  $87C8  AA 9B 8E                   PUSH_abs               $8E9B
  $87CB  81 88                      LOADL_near             $88
  $87CD  D2                         LSHIFT1
  $87CE  A6 99 8E                   LOADR_abs              $8E99
  $87D1  BB                         ADD
  $87D2  B3                         PUSHL
  $87D3  A0 AF FF                   BYTE_LOADL_far         $FFAF
  $87D6  B3                         PUSHL
  $87D7  E9 C8 81 06                CALL_abs_imm1          $81C8 {bytecode}, $06
  $87DB  81 88                      LOADL_near             $88
  $87DD  D0                         INC
  $87DE  85 88                      STORE_near             $88
  $87E0  40                         LOADL_qimm   ; inline operand = 0
  $87E1  A2 B5 FF                   BYTE_STORE_far         $FFB5
  $87E4  40                         LOADL_qimm   ; inline operand = 0
  $87E5  D6 17 88                   JUMP_abs               $8817
 >$87E8  DE 9E FF                   LEAL_far               $FF9E
  $87EB  B3                         PUSHL
  $87EC  81 86                      LOADL_near             $86
  $87EE  B4                         POPR
  $87EF  BB                         ADD
  $87F0  D3                         BYTE_DEREF
  $87F1  B3                         PUSHL
  $87F2  E9 EE 81 02                CALL_abs_imm1          $81EE {bytecode}, $02
  $87F6  D8 14 88                   JUMPF_abs              $8814
  $87F9  DE B9 FF                   LEAL_far               $FFB9
  $87FC  B3                         PUSHL
  $87FD  A0 B5 FF                   BYTE_LOADL_far         $FFB5
  $8800  B4                         POPR
  $8801  BB                         ADD
  $8802  B3                         PUSHL
  $8803  DE 9E FF                   LEAL_far               $FF9E
  $8806  B3                         PUSHL
  $8807  81 86                      LOADL_near             $86
  $8809  B4                         POPR
  $880A  BB                         ADD
  $880B  D3                         BYTE_DEREF
  $880C  D4                         BYTE_POPSTORE
  $880D  A0 B5 FF                   BYTE_LOADL_far         $FFB5
  $8810  D0                         INC
  $8811  A2 B5 FF                   BYTE_STORE_far         $FFB5
 >$8814  81 86                      LOADL_near             $86
  $8816  D0                         INC
 >$8817  85 86                      STORE_near             $86
  $8819  81 86                      LOADL_near             $86
  $881B  83 88                      LOADR_near             $88
  $881D  C6                         UCMPLT
  $881E  D7 E8 87                   JUMPT_abs              $87E8
  $8821  A0 B5 FF                   BYTE_LOADL_far         $FFB5
  $8824  B3                         PUSHL
  $8825  81 88                      LOADL_near             $88
  $8827  B4                         POPR
  $8828  BC                         SUB
  $8829  B3                         PUSHL
  $882A  A0 B5 FF                   BYTE_LOADL_far         $FFB5
  $882D  B3                         PUSHL
  $882E  DE B9 FF                   LEAL_far               $FFB9
  $8831  B3                         PUSHL
  $8832  E9 66 83 06                CALL_abs_imm1          $8366 {bytecode}, $06
  $8836  A2 B1 FF                   BYTE_STORE_far         $FFB1
  $8839  D6 48 88                   JUMP_abs               $8848
 >$883C  AA 33 8E                   PUSH_abs               $8E33
  $883F  E9 3C 84 02                CALL_abs_imm1          $843C {bytecode}, $02
  $8843  61                         PUSH_qimm   ; inline operand = 1
  $8844  E9 9B CE 02                CALL_abs_imm1          $CE9B {native}, $02
 >$8848  A0 B2 FF                   BYTE_LOADL_far         $FFB2
  $884B  D0                         INC
  $884C  A2 B2 FF                   BYTE_STORE_far         $FFB2
 >$884F  A0 B1 FF                   BYTE_LOADL_far         $FFB1
  $8852  8B 15                      BYTE_LOADR_imm1        +21
  $8854  C8                         UCMPGT
  $8855  D7 6A 88                   JUMPT_abs              $886A
  $8858  A0 AD FF                   BYTE_LOADL_far         $FFAD
  $885B  5D                         LOADR_qimm   ; inline operand = 13
  $885C  C0                         CMPEQ
  $885D  D7 6A 88                   JUMPT_abs              $886A
  $8860  A0 B2 FF                   BYTE_LOADL_far         $FFB2
  $8863  B3                         PUSHL
  $8864  45                         LOADL_qimm   ; inline operand = 5
  $8865  B4                         POPR
  $8866  C6                         UCMPLT
  $8867  D8 8C 87                   JUMPF_abs              $878C
 >$886A  A0 B1 FF                   BYTE_LOADL_far         $FFB1
  $886D  8B 15                      BYTE_LOADR_imm1        +21
  $886F  C7                         UCMPLE
  $8870  D8 38 89                   JUMPF_abs              $8938
  $8873  A0 B0 FF                   BYTE_LOADL_far         $FFB0
  $8876  8B 10                      BYTE_LOADR_imm1        +16
  $8878  C6                         UCMPLT
  $8879  D8 38 89                   JUMPF_abs              $8938
  $887C  42                         LOADL_qimm   ; inline operand = 2
  $887D  85 88                      STORE_near             $88
  $887F  40                         LOADL_qimm   ; inline operand = 0
  $8880  A2 B2 FF                   BYTE_STORE_far         $FFB2
 >$8883  A0 B2 FF                   BYTE_LOADL_far         $FFB2
  $8886  55                         LOADR_qimm   ; inline operand = 5
  $8887  C6                         UCMPLT
  $8888  D8 1D 89                   JUMPF_abs              $891D
  $888B  DE CC FF                   LEAL_far               $FFCC
  $888E  B3                         PUSHL
  $888F  A0 B8 FF                   BYTE_LOADL_far         $FFB8
  $8892  D0                         INC
  $8893  A2 B8 FF                   BYTE_STORE_far         $FFB8
  $8896  D1                         DEC
  $8897  B4                         POPR
  $8898  BB                         ADD
  $8899  D3                         BYTE_DEREF
  $889A  A2 AE FF                   BYTE_STORE_far         $FFAE
  $889D  DE 8F FF                   LEAL_far               $FF8F
  $88A0  B3                         PUSHL
  $88A1  81 88                      LOADL_near             $88
  $88A3  B4                         POPR
  $88A4  BB                         ADD
  $88A5  B3                         PUSHL
  $88A6  A0 AE FF                   BYTE_LOADL_far         $FFAE
  $88A9  5F                         LOADR_qimm   ; inline operand = 15
  $88AA  DA                         AND
  $88AB  D4                         BYTE_POPSTORE
  $88AC  AA 97 8E                   PUSH_abs               $8E97
  $88AF  81 88                      LOADL_near             $88
  $88B1  D2                         LSHIFT1
  $88B2  A6 95 8E                   LOADR_abs              $8E95
  $88B5  BB                         ADD
  $88B6  B3                         PUSHL
  $88B7  A0 AE FF                   BYTE_LOADL_far         $FFAE
  $88BA  B3                         PUSHL
  $88BB  E9 C8 81 06                CALL_abs_imm1          $81C8 {bytecode}, $06
  $88BF  81 88                      LOADL_near             $88
  $88C1  D0                         INC
  $88C2  85 88                      STORE_near             $88
  $88C4  40                         LOADL_qimm   ; inline operand = 0
  $88C5  A2 B5 FF                   BYTE_STORE_far         $FFB5
  $88C8  40                         LOADL_qimm   ; inline operand = 0
  $88C9  D6 FB 88                   JUMP_abs               $88FB
 >$88CC  DE 8F FF                   LEAL_far               $FF8F
  $88CF  B3                         PUSHL
  $88D0  81 86                      LOADL_near             $86
  $88D2  B4                         POPR
  $88D3  BB                         ADD
  $88D4  D3                         BYTE_DEREF
  $88D5  B3                         PUSHL
  $88D6  E9 EE 81 02                CALL_abs_imm1          $81EE {bytecode}, $02
  $88DA  D8 F8 88                   JUMPF_abs              $88F8
  $88DD  DE B9 FF                   LEAL_far               $FFB9
  $88E0  B3                         PUSHL
  $88E1  A0 B5 FF                   BYTE_LOADL_far         $FFB5
  $88E4  B4                         POPR
  $88E5  BB                         ADD
  $88E6  B3                         PUSHL
  $88E7  DE 8F FF                   LEAL_far               $FF8F
  $88EA  B3                         PUSHL
  $88EB  81 86                      LOADL_near             $86
  $88ED  B4                         POPR
  $88EE  BB                         ADD
  $88EF  D3                         BYTE_DEREF
  $88F0  D4                         BYTE_POPSTORE
  $88F1  A0 B5 FF                   BYTE_LOADL_far         $FFB5
  $88F4  D0                         INC
  $88F5  A2 B5 FF                   BYTE_STORE_far         $FFB5
 >$88F8  81 86                      LOADL_near             $86
  $88FA  D0                         INC
 >$88FB  85 86                      STORE_near             $86
  $88FD  81 86                      LOADL_near             $86
  $88FF  83 88                      LOADR_near             $88
  $8901  C6                         UCMPLT
  $8902  D7 CC 88                   JUMPT_abs              $88CC
  $8905  A0 B5 FF                   BYTE_LOADL_far         $FFB5
  $8908  B3                         PUSHL
  $8909  81 88                      LOADL_near             $88
  $890B  B4                         POPR
  $890C  BC                         SUB
  $890D  B3                         PUSHL
  $890E  A0 B5 FF                   BYTE_LOADL_far         $FFB5
  $8911  B3                         PUSHL
  $8912  DE B9 FF                   LEAL_far               $FFB9
  $8915  B3                         PUSHL
  $8916  E9 66 83 06                CALL_abs_imm1          $8366 {bytecode}, $06
  $891A  A2 B0 FF                   BYTE_STORE_far         $FFB0
 >$891D  A0 B2 FF                   BYTE_LOADL_far         $FFB2
  $8920  D0                         INC
  $8921  A2 B2 FF                   BYTE_STORE_far         $FFB2
  $8924  A0 B0 FF                   BYTE_LOADL_far         $FFB0
  $8927  8B 10                      BYTE_LOADR_imm1        +16
  $8929  C6                         UCMPLT
  $892A  D8 5F 89                   JUMPF_abs              $895F
  $892D  A0 B2 FF                   BYTE_LOADL_far         $FFB2
  $8930  55                         LOADR_qimm   ; inline operand = 5
  $8931  C6                         UCMPLT
  $8932  D7 83 88                   JUMPT_abs              $8883
  $8935  D6 5F 89                   JUMP_abs               $895F
 >$8938  A0 B1 FF                   BYTE_LOADL_far         $FFB1
  $893B  8B 15                      BYTE_LOADR_imm1        +21
  $893D  C7                         UCMPLE
  $893E  D8 5F 89                   JUMPF_abs              $895F
  $8941  A0 B0 FF                   BYTE_LOADL_far         $FFB0
  $8944  8B 10                      BYTE_LOADR_imm1        +16
  $8946  C8                         UCMPGT
  $8947  D8 5F 89                   JUMPF_abs              $895F
  $894A  62                         PUSH_qimm   ; inline operand = 2
  $894B  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $894F  D2                         LSHIFT1
  $8950  8C B5 8B                   LOADR_imm2             $8BB5
  $8953  BB                         ADD
  $8954  B0                         DEREF
  $8955  B3                         PUSHL
  $8956  E9 3C 84 02                CALL_abs_imm1          $843C {bytecode}, $02
  $895A  61                         PUSH_qimm   ; inline operand = 1
  $895B  E9 9B CE 02                CALL_abs_imm1          $CE9B {native}, $02
 >$895F  AA 97 8E                   PUSH_abs               $8E97
  $8962  AA 95 8E                   PUSH_abs               $8E95
  $8965  A0 C8 FF                   BYTE_LOADL_far         $FFC8
  $8968  B3                         PUSHL
  $8969  E9 C8 81 06                CALL_abs_imm1          $81C8 {bytecode}, $06
  $896D  8D 12                      BYTE_PUSH_imm1         +18
  $896F  8D 19                      BYTE_PUSH_imm1         +25
  $8971  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8975  A0 B1 FF                   BYTE_LOADL_far         $FFB1
  $8978  B3                         PUSHL
  $8979  8E C4 8E                   PUSH_imm2              $8EC4
  $897C  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8980  6A                         PUSH_qimm   ; inline operand = 10
  $8981  8D 19                      BYTE_PUSH_imm1         +25
  $8983  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8987  A0 B0 FF                   BYTE_LOADL_far         $FFB0
  $898A  B3                         PUSHL
  $898B  8E C8 8E                   PUSH_imm2              $8EC8
  $898E  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8992  A0 B0 FF                   BYTE_LOADL_far         $FFB0
  $8995  8B 15                      BYTE_LOADR_imm1        +21
  $8997  C7                         UCMPLE
  $8998  D8 A7 89                   JUMPF_abs              $89A7
  $899B  A0 B0 FF                   BYTE_LOADL_far         $FFB0
  $899E  B3                         PUSHL
  $899F  A0 B1 FF                   BYTE_LOADL_far         $FFB1
  $89A2  B4                         POPR
  $89A3  C6                         UCMPLT
  $89A4  D7 B0 89                   JUMPT_abs              $89B0
 >$89A7  A0 B1 FF                   BYTE_LOADL_far         $FFB1
  $89AA  8B 15                      BYTE_LOADR_imm1        +21
  $89AC  C8                         UCMPGT
  $89AD  D8 DE 89                   JUMPF_abs              $89DE
 >$89B0  A0 B1 FF                   BYTE_LOADL_far         $FFB1
  $89B3  8B 15                      BYTE_LOADR_imm1        +21
  $89B5  C8                         UCMPGT
  $89B6  D8 C5 89                   JUMPF_abs              $89C5
  $89B9  62                         PUSH_qimm   ; inline operand = 2
  $89BA  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $89BE  D2                         LSHIFT1
  $89BF  8C BF 8C                   LOADR_imm2             $8CBF
  $89C2  D6 CE 89                   JUMP_abs               $89CE
 >$89C5  62                         PUSH_qimm   ; inline operand = 2
  $89C6  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $89CA  D2                         LSHIFT1
  $89CB  8C 88 8C                   LOADR_imm2             $8C88
 >$89CE  BB                         ADD
  $89CF  B0                         DEREF
  $89D0  B3                         PUSHL
  $89D1  D6 D7 89                   JUMP_abs               $89D7
 >$89D4  AA 31 8E                   PUSH_abs               $8E31
 >$89D7  E9 3C 84 02                CALL_abs_imm1          $843C {bytecode}, $02
  $89DB  D6 0A 8A                   JUMP_abs               $8A0A
 >$89DE  A0 B0 FF                   BYTE_LOADL_far         $FFB0
  $89E1  B3                         PUSHL
  $89E2  A0 B1 FF                   BYTE_LOADL_far         $FFB1
  $89E5  B4                         POPR
  $89E6  C0                         CMPEQ
  $89E7  D7 D4 89                   JUMPT_abs              $89D4
  $89EA  62                         PUSH_qimm   ; inline operand = 2
  $89EB  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $89EF  D2                         LSHIFT1
  $89F0  8C 49 8C                   LOADR_imm2             $8C49
  $89F3  BB                         ADD
  $89F4  B0                         DEREF
  $89F5  B3                         PUSHL
  $89F6  E9 3C 84 02                CALL_abs_imm1          $843C {bytecode}, $02
  $89FA  8E 60 EA                   PUSH_imm2              $EA60
  $89FD  81 8B                      LOADL_near             $8B
  $89FF  D2                         LSHIFT1
  $8A00  83 8D                      LOADR_near             $8D
  $8A02  BB                         ADD
  $8A03  B3                         PUSHL
  $8A04  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8A08  85 8D                      STORE_near             $8D
 >$8A0A  61                         PUSH_qimm   ; inline operand = 1
  $8A0B  E9 9B CE 02                CALL_abs_imm1          $CE9B {native}, $02
 >$8A0F  8D 32                      BYTE_PUSH_imm1         +50
  $8A11  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8A15  B3                         PUSHL
  $8A16  A5 67 70                   BYTE_LOADL_abs         $7067
  $8A19  5E                         LOADR_qimm   ; inline operand = 14
  $8A1A  B5                         MULT
  $8A1B  8C B2 67                   LOADR_imm2             $67B2
  $8A1E  BB                         ADD
  $8A1F  B0                         DEREF
  $8A20  52                         LOADR_qimm   ; inline operand = 2
  $8A21  B6                         SDIV
  $8A22  B4                         POPR
  $8A23  BB                         ADD
  $8A24  A6 6B 66                   LOADR_abs              $666B
  $8A27  BB                         ADD
  $8A28  83 8D                      LOADR_near             $8D
  $8A2A  C7                         UCMPLE
  $8A2B  D7 37 8A                   JUMPT_abs              $8A37
  $8A2E  81 8D                      LOADL_near             $8D
  $8A30  8C 60 EA                   LOADR_imm2             $EA60
  $8A33  C0                         CMPEQ
  $8A34  D8 59 8A                   JUMPF_abs              $8A59
 >$8A37  62                         PUSH_qimm   ; inline operand = 2
  $8A38  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8A3C  D2                         LSHIFT1
  $8A3D  8C D1 8D                   LOADR_imm2             $8DD1
  $8A40  BB                         ADD
  $8A41  B0                         DEREF
  $8A42  B3                         PUSHL
  $8A43  E9 3C 84 02                CALL_abs_imm1          $843C {bytecode}, $02
  $8A47  62                         PUSH_qimm   ; inline operand = 2
  $8A48  E9 9B CE 02                CALL_abs_imm1          $CE9B {native}, $02
  $8A4C  A5 86 6B                   BYTE_LOADL_abs         $6B86
  $8A4F  D0                         INC
  $8A50  A9 86 6B                   BYTE_STORE_abs         $6B86
 >$8A53  81 8D                      LOADL_near             $8D
  $8A55  A8 6B 66                   STORE_abs              $666B
  $8A58  CF                         RETURN
 >$8A59  66                         PUSH_qimm   ; inline operand = 6
  $8A5A  6A                         PUSH_qimm   ; inline operand = 10
  $8A5B  6A                         PUSH_qimm   ; inline operand = 10
  $8A5C  61                         PUSH_qimm   ; inline operand = 1
  $8A5D  E9 02 A5 08                CALL_abs_imm1          $A502 {native}, $08
  $8A61  8E E7 00                   PUSH_imm2              $00E7
  $8A64  8E DA A7                   PUSH_imm2              $A7DA
  $8A67  8E 9E A7                   PUSH_imm2              $A79E
  $8A6A  66                         PUSH_qimm   ; inline operand = 6
  $8A6B  6A                         PUSH_qimm   ; inline operand = 10
  $8A6C  6A                         PUSH_qimm   ; inline operand = 10
  $8A6D  61                         PUSH_qimm   ; inline operand = 1
  $8A6E  69                         PUSH_qimm   ; inline operand = 9
  $8A6F  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8A73  42                         LOADL_qimm   ; inline operand = 2
  $8A74  A8 8A 72                   STORE_abs              $728A
  $8A77  6B                         PUSH_qimm   ; inline operand = 11
  $8A78  62                         PUSH_qimm   ; inline operand = 2
  $8A79  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8A7D  61                         PUSH_qimm   ; inline operand = 1
  $8A7E  8E CC 8E                   PUSH_imm2              $8ECC
  $8A81  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8A85  AC 9F CD                   CALL_abs               $CD9F {native}
  $8A88  A2 AD FF                   BYTE_STORE_far         $FFAD
  $8A8B  40                         LOADL_qimm   ; inline operand = 0
  $8A8C  A8 8A 72                   STORE_abs              $728A
  $8A8F  AC 44 A5                   CALL_abs               $A544 {native}
  $8A92  A0 AD FF                   BYTE_LOADL_far         $FFAD
  $8A95  D7 AA 84                   JUMPT_abs              $84AA
  $8A98  62                         PUSH_qimm   ; inline operand = 2
  $8A99  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8A9D  D2                         LSHIFT1
  $8A9E  8C 56 8D                   LOADR_imm2             $8D56
  $8AA1  BB                         ADD
  $8AA2  B0                         DEREF
  $8AA3  B3                         PUSHL
  $8AA4  E9 3C 84 02                CALL_abs_imm1          $843C {bytecode}, $02
  $8AA8  61                         PUSH_qimm   ; inline operand = 1
  $8AA9  E9 9B CE 02                CALL_abs_imm1          $CE9B {native}, $02
  $8AAD  D6 53 8A                   JUMP_abs               $8A53

; ============================================================
; sub $8AB0   (frame_off=-16, body @ $8AB5)   [PRG $38AB0]
; ============================================================
  $8AB5  AC 37 CE                   CALL_abs               $CE37 {native}
  $8AB8  6F                         PUSH_qimm   ; inline operand = 15
  $8AB9  8D 10                      BYTE_PUSH_imm1         +16
  $8ABB  DE F0 FF                   LEAL_far               $FFF0
  $8ABE  B3                         PUSHL
  $8ABF  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $8AC3  8D 10                      BYTE_PUSH_imm1         +16
  $8AC5  60                         PUSH_qimm   ; inline operand = 0
  $8AC6  DE F0 FF                   LEAL_far               $FFF0
  $8AC9  B3                         PUSHL
  $8ACA  66                         PUSH_qimm   ; inline operand = 6
  $8ACB  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8ACF  AC 82 84                   CALL_abs               $8482 (blackjack_bet_screen) {bytecode}
  $8AD2  8A FF 00                   LOADL_imm2             $00FF
  $8AD5  A9 68 70                   BYTE_STORE_abs         $7068
  $8AD8  41                         LOADL_qimm   ; inline operand = 1
  $8AD9  A9 63 70                   BYTE_STORE_abs         $7063
  $8ADC  8D 14                      BYTE_PUSH_imm1         +20
  $8ADE  61                         PUSH_qimm   ; inline operand = 1
  $8ADF  6C                         PUSH_qimm   ; inline operand = 12
  $8AE0  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $8AE4  8E D4 86                   PUSH_imm2              $86D4
  $8AE7  8E DA 00                   PUSH_imm2              $00DA
  $8AEA  61                         PUSH_qimm   ; inline operand = 1
  $8AEB  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $8AEF  41                         LOADL_qimm   ; inline operand = 1
  $8AF0  CF                         RETURN

; ============================================================
; sub $8AF1   (frame_off=-5, body @ $8AF6)   [PRG $38AF1]
; ============================================================
  $8AF6  40                         LOADL_qimm   ; inline operand = 0
  $8AF7  85 FB                      STORE_near             $FB
 >$8AF9  8D 34                      BYTE_PUSH_imm1         +52
  $8AFB  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8AFF  A2 FE FF                   BYTE_STORE_far         $FFFE
  $8B02  8D 34                      BYTE_PUSH_imm1         +52
  $8B04  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8B08  A2 FD FF                   BYTE_STORE_far         $FFFD
  $8B0B  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $8B0E  1C                         LOADR_quick   ; inline operand = 12
  $8B0F  BB                         ADD
  $8B10  D3                         BYTE_DEREF
  $8B11  A2 FF FF                   BYTE_STORE_far         $FFFF
  $8B14  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $8B17  1C                         LOADR_quick   ; inline operand = 12
  $8B18  BB                         ADD
  $8B19  B3                         PUSHL
  $8B1A  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $8B1D  1C                         LOADR_quick   ; inline operand = 12
  $8B1E  BB                         ADD
  $8B1F  D3                         BYTE_DEREF
  $8B20  D4                         BYTE_POPSTORE
  $8B21  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $8B24  1C                         LOADR_quick   ; inline operand = 12
  $8B25  BB                         ADD
  $8B26  B3                         PUSHL
  $8B27  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8B2A  D4                         BYTE_POPSTORE
  $8B2B  81 FB                      LOADL_near             $FB
  $8B2D  D0                         INC
  $8B2E  85 FB                      STORE_near             $FB
  $8B30  81 FB                      LOADL_near             $FB
  $8B32  8B 68                      BYTE_LOADR_imm1        +104
  $8B34  C6                         UCMPLT
  $8B35  D7 F9 8A                   JUMPT_abs              $8AF9
  $8B38  CF                         RETURN

; ============================================================
; sub $8B39   (frame_off=+0, body @ $8B3E)   [PRG $38B39]
; ============================================================
  $8B3E  8E E2 00                   PUSH_imm2              $00E2
  $8B41  8E 78 B0                   PUSH_imm2              $B078
  $8B44  8E 72 B0                   PUSH_imm2              $B072
  $8B47  63                         PUSH_qimm   ; inline operand = 3
  $8B48  62                         PUSH_qimm   ; inline operand = 2
  $8B49  3D                         PUSH_quick   ; inline operand = 13
  $8B4A  3C                         PUSH_quick   ; inline operand = 12
  $8B4B  69                         PUSH_qimm   ; inline operand = 9
  $8B4C  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8B50  CF                         RETURN

; ============================================================
; sub $8B51   (frame_off=+0, body @ $8B56)   [PRG $38B51]
; ============================================================
  $8B56  60                         PUSH_qimm   ; inline operand = 0
  $8B57  60                         PUSH_qimm   ; inline operand = 0
  $8B58  64                         PUSH_qimm   ; inline operand = 4
  $8B59  62                         PUSH_qimm   ; inline operand = 2
  $8B5A  3D                         PUSH_quick   ; inline operand = 13
  $8B5B  3C                         PUSH_quick   ; inline operand = 12
  $8B5C  68                         PUSH_qimm   ; inline operand = 8
  $8B5D  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $8B61  CF                         RETURN

; ============================================================
; sub $8B62   (frame_off=-4, body @ $8B67)   [PRG $38B62]
; ============================================================
  $8B67  40                         LOADL_qimm   ; inline operand = 0
  $8B68  2B                         STORE_quick   ; inline operand = 11
 >$8B69  40                         LOADL_qimm   ; inline operand = 0
  $8B6A  2A                         STORE_quick   ; inline operand = 10
 >$8B6B  0B                         LOADL_quick   ; inline operand = 11
  $8B6C  5D                         LOADR_qimm   ; inline operand = 13
  $8B6D  B5                         MULT
  $8B6E  1C                         LOADR_quick   ; inline operand = 12
  $8B6F  BB                         ADD
  $8B70  1A                         LOADR_quick   ; inline operand = 10
  $8B71  BB                         ADD
  $8B72  B3                         PUSHL
  $8B73  0B                         LOADL_quick   ; inline operand = 11
  $8B74  B3                         PUSHL
  $8B75  0A                         LOADL_quick   ; inline operand = 10
  $8B76  54                         LOADR_qimm   ; inline operand = 4
  $8B77  BD                         LSHIFT
  $8B78  B4                         POPR
  $8B79  DB                         OR
  $8B7A  D4                         BYTE_POPSTORE
  $8B7B  0A                         LOADL_quick   ; inline operand = 10
  $8B7C  D0                         INC
  $8B7D  2A                         STORE_quick   ; inline operand = 10
  $8B7E  0A                         LOADL_quick   ; inline operand = 10
  $8B7F  5D                         LOADR_qimm   ; inline operand = 13
  $8B80  C6                         UCMPLT
  $8B81  D7 6B 8B                   JUMPT_abs              $8B6B
  $8B84  0B                         LOADL_quick   ; inline operand = 11
  $8B85  D0                         INC
  $8B86  2B                         STORE_quick   ; inline operand = 11
  $8B87  0B                         LOADL_quick   ; inline operand = 11
  $8B88  54                         LOADR_qimm   ; inline operand = 4
  $8B89  C6                         UCMPLT
  $8B8A  D7 69 8B                   JUMPT_abs              $8B69
  $8B8D  CF                         RETURN

