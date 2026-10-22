VM bytecode disassembly
  ROM:          Uncharted Waters (USA).nes
  mode:         bulk dump of bank 24
  opcode spec:  vm-opcodes-v2.toml via nobunaga_vm.OPCODE_INFO (execution-validated lengths)
  labels:       0 CPU addresses named

  bank 24: found 31 bytecode-subroutine stubs

; ============================================================
; sub $8003   (frame_off=-6, body @ $8008)   [PRG $30003]
; ============================================================
  $8008  8A 0A B5                   LOADL_imm2             $B50A
  $800B  2B                         STORE_quick   ; inline operand = 11
  $800C  40                         LOADL_qimm   ; inline operand = 0
  $800D  2A                         STORE_quick   ; inline operand = 10
 >$800E  0B                         LOADL_quick   ; inline operand = 11
  $800F  73                         ADD_qimm   ; inline operand = 3
  $8010  B3                         PUSHL
  $8011  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8015  29                         STORE_quick   ; inline operand = 9
  $8016  09                         LOADL_quick   ; inline operand = 9
  $8017  1C                         LOADR_quick   ; inline operand = 12
  $8018  C0                         CMPEQ
  $8019  D8 1E 80                   JUMPF_abs              $801E
  $801C  0A                         LOADL_quick   ; inline operand = 10
  $801D  CF                         RETURN
 >$801E  0B                         LOADL_quick   ; inline operand = 11
  $801F  75                         ADD_qimm   ; inline operand = 5
  $8020  2B                         STORE_quick   ; inline operand = 11
  $8021  0A                         LOADL_quick   ; inline operand = 10
  $8022  D0                         INC
  $8023  2A                         STORE_quick   ; inline operand = 10
  $8024  0A                         LOADL_quick   ; inline operand = 10
  $8025  8B 32                      BYTE_LOADR_imm1        +50
  $8027  C6                         UCMPLT
  $8028  D7 0E 80                   JUMPT_abs              $800E
  $802B  40                         LOADL_qimm   ; inline operand = 0
  $802C  CF                         RETURN

; ============================================================
; sub $802D   (frame_off=+0, body @ $8032)   [PRG $3002D]
; ============================================================
  $8032  A5 5F 70                   BYTE_LOADL_abs         $705F
  $8035  58                         LOADR_qimm   ; inline operand = 8
  $8036  DA                         AND
  $8037  CF                         RETURN

; ============================================================
; sub $8038   (frame_off=+0, body @ $803D)   [PRG $30038]
; ============================================================
  $803D  A5 5F 70                   BYTE_LOADL_abs         $705F
  $8040  52                         LOADR_qimm   ; inline operand = 2
  $8041  DA                         AND
  $8042  CF                         RETURN

; ============================================================
; sub $8043   (frame_off=+0, body @ $8048)   [PRG $30043]
; ============================================================
  $8048  A5 5F 70                   BYTE_LOADL_abs         $705F
  $804B  51                         LOADR_qimm   ; inline operand = 1
  $804C  DA                         AND
  $804D  CF                         RETURN

; ============================================================
; sub $804E   (frame_off=+0, body @ $8053)   [PRG $3004E]
; ============================================================
  $8053  A5 67 70                   BYTE_LOADL_abs         $7067
  $8056  B3                         PUSHL
  $8057  A5 52 70                   BYTE_LOADL_abs         $7052
  $805A  B4                         POPR
  $805B  C0                         CMPEQ
  $805C  CF                         RETURN

; ============================================================
; sub $805D   (frame_off=-18, body @ $8062)   [PRG $3005D]
; ============================================================
  $8062  0C                         LOADL_quick   ; inline operand = 12
  $8063  55                         LOADR_qimm   ; inline operand = 5
  $8064  B5                         MULT
  $8065  8C 0A B5                   LOADR_imm2             $B50A
  $8068  BB                         ADD
  $8069  23                         STORE_quick   ; inline operand = 3
  $806A  03                         LOADL_quick   ; inline operand = 3
  $806B  72                         ADD_qimm   ; inline operand = 2
  $806C  B3                         PUSHL
  $806D  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8071  8B 32                      BYTE_LOADR_imm1        +50
  $8073  B5                         MULT
  $8074  25                         STORE_quick   ; inline operand = 5
  $8075  03                         LOADL_quick   ; inline operand = 3
  $8076  D0                         INC
  $8077  B3                         PUSHL
  $8078  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $807C  28                         STORE_quick   ; inline operand = 8
  $807D  0C                         LOADL_quick   ; inline operand = 12
  $807E  5E                         LOADR_qimm   ; inline operand = 14
  $807F  B5                         MULT
  $8080  8C B2 67                   LOADR_imm2             $67B2
  $8083  BB                         ADD
  $8084  B0                         DEREF
  $8085  26                         STORE_quick   ; inline operand = 6
  $8086  08                         LOADL_quick   ; inline operand = 8
  $8087  8C FF 00                   LOADR_imm2             $00FF
  $808A  C1                         CMPNE
  $808B  D8 A8 80                   JUMPF_abs              $80A8
  $808E  08                         LOADL_quick   ; inline operand = 8
  $808F  1D                         LOADR_quick   ; inline operand = 13
  $8090  C0                         CMPEQ
  $8091  D8 A8 80                   JUMPF_abs              $80A8
  $8094  05                         LOADL_quick   ; inline operand = 5
  $8095  16                         LOADR_quick   ; inline operand = 6
  $8096  C3                         SCMPLE
  $8097  D8 A8 80                   JUMPF_abs              $80A8
  $809A  A5 67 70                   BYTE_LOADL_abs         $7067
  $809D  B3                         PUSHL
  $809E  A5 52 70                   BYTE_LOADL_abs         $7052
  $80A1  B4                         POPR
  $80A2  C1                         CMPNE
  $80A3  D8 A8 80                   JUMPF_abs              $80A8
  $80A6  41                         LOADL_qimm   ; inline operand = 1
  $80A7  CF                         RETURN
 >$80A8  33                         PUSH_quick   ; inline operand = 3
  $80A9  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $80AD  8B 58                      BYTE_LOADR_imm1        +88
  $80AF  B5                         MULT
  $80B0  8C 64 B8                   LOADR_imm2             $B864
  $80B3  BB                         ADD
  $80B4  24                         STORE_quick   ; inline operand = 4
  $80B5  04                         LOADL_quick   ; inline operand = 4
  $80B6  2B                         STORE_quick   ; inline operand = 11
  $80B7  04                         LOADL_quick   ; inline operand = 4
  $80B8  79                         ADD_qimm   ; inline operand = 9
  $80B9  2A                         STORE_quick   ; inline operand = 10
  $80BA  40                         LOADL_qimm   ; inline operand = 0
  $80BB  29                         STORE_quick   ; inline operand = 9
 >$80BC  3B                         PUSH_quick   ; inline operand = 11
  $80BD  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $80C1  8B 32                      BYTE_LOADR_imm1        +50
  $80C3  B5                         MULT
  $80C4  25                         STORE_quick   ; inline operand = 5
  $80C5  05                         LOADL_quick   ; inline operand = 5
  $80C6  8C FF 00                   LOADR_imm2             $00FF
  $80C9  C0                         CMPEQ
  $80CA  D7 F0 80                   JUMPT_abs              $80F0
  $80CD  3A                         PUSH_quick   ; inline operand = 10
  $80CE  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $80D2  27                         STORE_quick   ; inline operand = 7
  $80D3  07                         LOADL_quick   ; inline operand = 7
  $80D4  1D                         LOADR_quick   ; inline operand = 13
  $80D5  C0                         CMPEQ
  $80D6  D8 E1 80                   JUMPF_abs              $80E1
  $80D9  05                         LOADL_quick   ; inline operand = 5
  $80DA  16                         LOADR_quick   ; inline operand = 6
  $80DB  C3                         SCMPLE
  $80DC  D8 E1 80                   JUMPF_abs              $80E1
  $80DF  41                         LOADL_qimm   ; inline operand = 1
  $80E0  CF                         RETURN
 >$80E1  0A                         LOADL_quick   ; inline operand = 10
  $80E2  D0                         INC
  $80E3  2A                         STORE_quick   ; inline operand = 10
  $80E4  0B                         LOADL_quick   ; inline operand = 11
  $80E5  D0                         INC
  $80E6  2B                         STORE_quick   ; inline operand = 11
  $80E7  09                         LOADL_quick   ; inline operand = 9
  $80E8  D0                         INC
  $80E9  29                         STORE_quick   ; inline operand = 9
  $80EA  09                         LOADL_quick   ; inline operand = 9
  $80EB  59                         LOADR_qimm   ; inline operand = 9
  $80EC  C6                         UCMPLT
  $80ED  D7 BC 80                   JUMPT_abs              $80BC
 >$80F0  40                         LOADL_qimm   ; inline operand = 0
  $80F1  CF                         RETURN

; ============================================================
; sub $80F2   (frame_off=-10, body @ $80F7)   [PRG $300F2]
; ============================================================
  $80F7  0D                         LOADL_quick   ; inline operand = 13
  $80F8  8B 12                      BYTE_LOADR_imm1        +18
  $80FA  B8                         UDIV
  $80FB  2B                         STORE_quick   ; inline operand = 11
  $80FC  0B                         LOADL_quick   ; inline operand = 11
  $80FD  D8 08 81                   JUMPF_abs              $8108
  $8100  0D                         LOADL_quick   ; inline operand = 13
  $8101  55                         LOADR_qimm   ; inline operand = 5
  $8102  B5                         MULT
  $8103  8F A6                      BYTE_ADD_imm1          -90
  $8105  D6 10 81                   JUMP_abs               $8110
 >$8108  0D                         LOADL_quick   ; inline operand = 13
  $8109  55                         LOADR_qimm   ; inline operand = 5
  $810A  B5                         MULT
  $810B  B3                         PUSHL
  $810C  89 5A                      BYTE_LOADL_imm1        +90
  $810E  B4                         POPR
  $810F  BC                         SUB
 >$8110  29                         STORE_quick   ; inline operand = 9
  $8111  0C                         LOADL_quick   ; inline operand = 12
  $8112  8F 26                      BYTE_ADD_imm1          +38
  $8114  8B 48                      BYTE_LOADR_imm1        +72
  $8116  BA                         UMOD
  $8117  27                         STORE_quick   ; inline operand = 7
  $8118  07                         LOADL_quick   ; inline operand = 7
  $8119  8B 24                      BYTE_LOADR_imm1        +36
  $811B  B8                         UDIV
  $811C  2A                         STORE_quick   ; inline operand = 10
  $811D  0A                         LOADL_quick   ; inline operand = 10
  $811E  D8 28 81                   JUMPF_abs              $8128
  $8121  89 48                      BYTE_LOADL_imm1        +72
  $8123  17                         LOADR_quick   ; inline operand = 7
  $8124  BC                         SUB
  $8125  D6 29 81                   JUMP_abs               $8129
 >$8128  07                         LOADL_quick   ; inline operand = 7
 >$8129  55                         LOADR_qimm   ; inline operand = 5
  $812A  B5                         MULT
  $812B  28                         STORE_quick   ; inline operand = 8
  $812C  38                         PUSH_quick   ; inline operand = 8
  $812D  0A                         LOADL_quick   ; inline operand = 10
  $812E  D2                         LSHIFT1
  $812F  8C B6 92                   LOADR_imm2             $92B6
  $8132  BB                         ADD
  $8133  B0                         DEREF
  $8134  B3                         PUSHL
  $8135  39                         PUSH_quick   ; inline operand = 9
  $8136  0B                         LOADL_quick   ; inline operand = 11
  $8137  D2                         LSHIFT1
  $8138  8C B2 92                   LOADR_imm2             $92B2
  $813B  BB                         ADD
  $813C  B0                         DEREF
  $813D  B3                         PUSHL
  $813E  8E C2 92                   PUSH_imm2              $92C2
  $8141  E9 19 C7 0A                CALL_abs_imm1          $C719 {native}, $0A
  $8145  CF                         RETURN

; ============================================================
; sub $8146   (frame_off=-2, body @ $814B)   [PRG $30146]
; ============================================================
  $814B  0C                         LOADL_quick   ; inline operand = 12
  $814C  8B 13                      BYTE_LOADR_imm1        +19
  $814E  B5                         MULT
  $814F  8C D8 AF                   LOADR_imm2             $AFD8
  $8152  BB                         ADD
  $8153  2B                         STORE_quick   ; inline operand = 11
  $8154  3B                         PUSH_quick   ; inline operand = 11
  $8155  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8159  60                         PUSH_qimm   ; inline operand = 0
  $815A  8E D0 92                   PUSH_imm2              $92D0
  $815D  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8161  0B                         LOADL_quick   ; inline operand = 11
  $8162  8F 10                      BYTE_ADD_imm1          +16
  $8164  B3                         PUSHL
  $8165  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8169  B3                         PUSHL
  $816A  0B                         LOADL_quick   ; inline operand = 11
  $816B  7F                         ADD_qimm   ; inline operand = 15
  $816C  B3                         PUSHL
  $816D  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8171  B3                         PUSHL
  $8172  E9 F2 80 04                CALL_abs_imm1          $80F2 {bytecode}, $04
  $8176  CF                         RETURN

; ============================================================
; sub $8177   (frame_off=+0, body @ $817C)   [PRG $30177]
; ============================================================
  $817C  60                         PUSH_qimm   ; inline operand = 0
  $817D  8E D6 92                   PUSH_imm2              $92D6
  $8180  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8184  3C                         PUSH_quick   ; inline operand = 12
  $8185  E9 46 81 02                CALL_abs_imm1          $8146 {bytecode}, $02
  $8189  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $818C  CF                         RETURN

; ============================================================
; sub $818D   (frame_off=-2, body @ $8192)   [PRG $3018D]
; ============================================================
  $8192  0C                         LOADL_quick   ; inline operand = 12
  $8193  D1                         DEC
  $8194  55                         LOADR_qimm   ; inline operand = 5
  $8195  B8                         UDIV
  $8196  2B                         STORE_quick   ; inline operand = 11
  $8197  0C                         LOADL_quick   ; inline operand = 12
  $8198  8F 14                      BYTE_ADD_imm1          +20
  $819A  57                         LOADR_qimm   ; inline operand = 7
  $819B  B5                         MULT
  $819C  8C 42 65                   LOADR_imm2             $6542
  $819F  BB                         ADD
  $81A0  B0                         DEREF
  $81A1  B3                         PUSHL
  $81A2  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $81A6  0B                         LOADL_quick   ; inline operand = 11
  $81A7  53                         LOADR_qimm   ; inline operand = 3
  $81A8  C0                         CMPEQ
  $81A9  D8 B3 81                   JUMPF_abs              $81B3
  $81AC  60                         PUSH_qimm   ; inline operand = 0
  $81AD  8E F6 92                   PUSH_imm2              $92F6
  $81B0  D6 B7 81                   JUMP_abs               $81B7
 >$81B3  60                         PUSH_qimm   ; inline operand = 0
  $81B4  8E FD 92                   PUSH_imm2              $92FD
 >$81B7  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $81BB  0B                         LOADL_quick   ; inline operand = 11
  $81BC  D2                         LSHIFT1
  $81BD  8C 24 BB                   LOADR_imm2             $BB24
  $81C0  BB                         ADD
  $81C1  B3                         PUSHL
  $81C2  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $81C6  B3                         PUSHL
  $81C7  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $81CB  CF                         RETURN

; ============================================================
; sub $81CC   (frame_off=+0, body @ $81D1)   [PRG $301CC]
; ============================================================
  $81D1  61                         PUSH_qimm   ; inline operand = 1
  $81D2  8E 05 93                   PUSH_imm2              $9305
  $81D5  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $81D9  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $81DC  CF                         RETURN

; ============================================================
; sub $81DD   (frame_off=-8, body @ $81E2)   [PRG $301DD]
; ============================================================
  $81E2  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $81E5  60                         PUSH_qimm   ; inline operand = 0
  $81E6  8E 32 93                   PUSH_imm2              $9332
  $81E9  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $81ED  3C                         PUSH_quick   ; inline operand = 12
  $81EE  E9 8D 81 02                CALL_abs_imm1          $818D {bytecode}, $02
  $81F2  60                         PUSH_qimm   ; inline operand = 0
  $81F3  8E 4C 93                   PUSH_imm2              $934C
  $81F6  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $81FA  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $81FD  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8200  60                         PUSH_qimm   ; inline operand = 0
  $8201  8E 4E 93                   PUSH_imm2              $934E
  $8204  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8208  0C                         LOADL_quick   ; inline operand = 12
  $8209  D1                         DEC
  $820A  8B 33                      BYTE_LOADR_imm1        +51
  $820C  B5                         MULT
  $820D  8C 04 60                   LOADR_imm2             $6004
  $8210  BB                         ADD
  $8211  2A                         STORE_quick   ; inline operand = 10
  $8212  64                         PUSH_qimm   ; inline operand = 4
  $8213  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8217  D8 62 82                   JUMPF_abs              $8262
  $821A  0A                         LOADL_quick   ; inline operand = 10
  $821B  75                         ADD_qimm   ; inline operand = 5
  $821C  D3                         BYTE_DEREF
  $821D  2B                         STORE_quick   ; inline operand = 11
  $821E  0A                         LOADL_quick   ; inline operand = 10
  $821F  74                         ADD_qimm   ; inline operand = 4
  $8220  D3                         BYTE_DEREF
  $8221  D8 4E 82                   JUMPF_abs              $824E
  $8224  A5 67 70                   BYTE_LOADL_abs         $7067
  $8227  1B                         LOADR_quick   ; inline operand = 11
  $8228  C0                         CMPEQ
  $8229  D8 3E 82                   JUMPF_abs              $823E
  $822C  60                         PUSH_qimm   ; inline operand = 0
  $822D  8E 50 93                   PUSH_imm2              $9350
  $8230  D6 37 82                   JUMP_abs               $8237
 >$8233  60                         PUSH_qimm   ; inline operand = 0
  $8234  8E 88 93                   PUSH_imm2              $9388
 >$8237  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $823B  D6 7D 82                   JUMP_abs               $827D
 >$823E  60                         PUSH_qimm   ; inline operand = 0
  $823F  8E 70 93                   PUSH_imm2              $9370
  $8242  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8246  3B                         PUSH_quick   ; inline operand = 11
  $8247  E9 46 81 02                CALL_abs_imm1          $8146 {bytecode}, $02
  $824B  D6 7D 82                   JUMP_abs               $827D
 >$824E  0B                         LOADL_quick   ; inline operand = 11
  $824F  D8 33 82                   JUMPF_abs              $8233
  $8252  60                         PUSH_qimm   ; inline operand = 0
  $8253  8E AB 93                   PUSH_imm2              $93AB
  $8256  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $825A  3B                         PUSH_quick   ; inline operand = 11
  $825B  E9 8D 81 02                CALL_abs_imm1          $818D {bytecode}, $02
  $825F  D6 7D 82                   JUMP_abs               $827D
 >$8262  0C                         LOADL_quick   ; inline operand = 12
  $8263  54                         LOADR_qimm   ; inline operand = 4
  $8264  BD                         LSHIFT
  $8265  8C 62 66                   LOADR_imm2             $6662
  $8268  BB                         ADD
  $8269  28                         STORE_quick   ; inline operand = 8
  $826A  60                         PUSH_qimm   ; inline operand = 0
  $826B  8E BF 93                   PUSH_imm2              $93BF
  $826E  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8272  08                         LOADL_quick   ; inline operand = 8
  $8273  D0                         INC
  $8274  D3                         BYTE_DEREF
  $8275  B3                         PUSHL
  $8276  08                         LOADL_quick   ; inline operand = 8
  $8277  D3                         BYTE_DEREF
  $8278  B3                         PUSHL
  $8279  E9 F2 80 04                CALL_abs_imm1          $80F2 {bytecode}, $04
 >$827D  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $8280  CF                         RETURN

; ============================================================
; sub $8281   (frame_off=-4, body @ $8286)   [PRG $30281]
; ============================================================
  $8286  3C                         PUSH_quick   ; inline operand = 12
  $8287  A5 67 70                   BYTE_LOADL_abs         $7067
  $828A  B3                         PUSHL
  $828B  E9 5D 80 04                CALL_abs_imm1          $805D {bytecode}, $04
  $828F  D8 AD 82                   JUMPF_abs              $82AD
  $8292  A5 52 70                   BYTE_LOADL_abs         $7052
  $8295  B3                         PUSHL
  $8296  A5 67 70                   BYTE_LOADL_abs         $7067
  $8299  B4                         POPR
  $829A  C1                         CMPNE
  $829B  D8 AD 82                   JUMPF_abs              $82AD
  $829E  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $82A1  61                         PUSH_qimm   ; inline operand = 1
  $82A2  8E 36 94                   PUSH_imm2              $9436
  $82A5  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $82A9  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $82AC  CF                         RETURN
 >$82AD  62                         PUSH_qimm   ; inline operand = 2
  $82AE  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $82B2  D7 EB 82                   JUMPT_abs              $82EB
  $82B5  40                         LOADL_qimm   ; inline operand = 0
  $82B6  2A                         STORE_quick   ; inline operand = 10
  $82B7  D6 C9 82                   JUMP_abs               $82C9
 >$82BA  0B                         LOADL_quick   ; inline operand = 11
  $82BB  8C ED 93                   LOADR_imm2             $93ED
  $82BE  BB                         ADD
  $82BF  D3                         BYTE_DEREF
  $82C0  1C                         LOADR_quick   ; inline operand = 12
  $82C1  C0                         CMPEQ
  $82C2  D8 C7 82                   JUMPF_abs              $82C7
  $82C5  0B                         LOADL_quick   ; inline operand = 11
  $82C6  2A                         STORE_quick   ; inline operand = 10
 >$82C7  0B                         LOADL_quick   ; inline operand = 11
  $82C8  D0                         INC
 >$82C9  2B                         STORE_quick   ; inline operand = 11
  $82CA  0B                         LOADL_quick   ; inline operand = 11
  $82CB  5C                         LOADR_qimm   ; inline operand = 12
  $82CC  C6                         UCMPLT
  $82CD  D7 BA 82                   JUMPT_abs              $82BA
  $82D0  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $82D3  0A                         LOADL_quick   ; inline operand = 10
  $82D4  8C E1 93                   LOADR_imm2             $93E1
  $82D7  BB                         ADD
  $82D8  D3                         BYTE_DEREF
  $82D9  D2                         LSHIFT1
  $82DA  8C D5 93                   LOADR_imm2             $93D5
  $82DD  BB                         ADD
  $82DE  B0                         DEREF
  $82DF  B3                         PUSHL
  $82E0  8E 55 94                   PUSH_imm2              $9455
  $82E3  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $82E7  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $82EA  CF                         RETURN
 >$82EB  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $82EE  61                         PUSH_qimm   ; inline operand = 1
  $82EF  8E 6E 94                   PUSH_imm2              $946E
  $82F2  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $82F6  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $82F9  CF                         RETURN

; ============================================================
; sub $82FA   (frame_off=+0, body @ $82FF)   [PRG $302FA]
; ============================================================
  $82FF  61                         PUSH_qimm   ; inline operand = 1
  $8300  8E 93 94                   PUSH_imm2              $9493
  $8303  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8307  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $830A  CF                         RETURN

; ============================================================
; sub $830B   (frame_off=-2, body @ $8310)   [PRG $3030B]
; ============================================================
  $8310  AC 43 80                   CALL_abs               $8043 {bytecode}
  $8313  D8 3F 83                   JUMPF_abs              $833F
  $8316  AC 2D 80                   CALL_abs               $802D {bytecode}
  $8319  D7 3F 83                   JUMPT_abs              $833F
  $831C  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $831F  A5 53 70                   BYTE_LOADL_abs         $7053
  $8322  D7 2B 83                   JUMPT_abs              $832B
  $8325  AC CC 81                   CALL_abs               $81CC (event_royal_summons) {bytecode}
  $8328  D6 3F 83                   JUMP_abs               $833F
 >$832B  AC 4E 80                   CALL_abs               $804E {bytecode}
  $832E  D8 37 83                   JUMPF_abs              $8337
  $8331  AC FA 82                   CALL_abs               $82FA (event_trader_hook) {bytecode}
  $8334  D6 3F 83                   JUMP_abs               $833F
 >$8337  A5 52 70                   BYTE_LOADL_abs         $7052
  $833A  B3                         PUSHL
  $833B  E9 77 81 02                CALL_abs_imm1          $8177 (event_hook_generic) {bytecode}, $02
 >$833F  AC 43 80                   CALL_abs               $8043 {bytecode}
  $8342  D8 86 83                   JUMPF_abs              $8386
  $8345  AC 2D 80                   CALL_abs               $802D {bytecode}
  $8348  D8 86 83                   JUMPF_abs              $8386
  $834B  A5 55 70                   BYTE_LOADL_abs         $7055
  $834E  B3                         PUSHL
  $834F  E9 A0 B9 02                CALL_abs_imm1          $B9A0 {native}, $02
  $8353  D7 86 83                   JUMPT_abs              $8386
  $8356  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8359  60                         PUSH_qimm   ; inline operand = 0
  $835A  8E C9 94                   PUSH_imm2              $94C9
  $835D  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8361  A5 55 70                   BYTE_LOADL_abs         $7055
  $8364  D2                         LSHIFT1
  $8365  8C 49 BB                   LOADR_imm2             $BB49
  $8368  BB                         ADD
  $8369  B3                         PUSHL
  $836A  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $836E  B3                         PUSHL
  $836F  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8373  60                         PUSH_qimm   ; inline operand = 0
  $8374  8E F0 94                   PUSH_imm2              $94F0
  $8377  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $837B  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $837E  A5 55 70                   BYTE_LOADL_abs         $7055
  $8381  B3                         PUSHL
  $8382  E9 81 82 02                CALL_abs_imm1          $8281 (event_trade_intel) {bytecode}, $02
 >$8386  AC 43 80                   CALL_abs               $8043 {bytecode}
  $8389  D8 E2 83                   JUMPF_abs              $83E2
  $838C  AC 2D 80                   CALL_abs               $802D {bytecode}
  $838F  D8 E2 83                   JUMPF_abs              $83E2
  $8392  A5 55 70                   BYTE_LOADL_abs         $7055
  $8395  B3                         PUSHL
  $8396  E9 A0 B9 02                CALL_abs_imm1          $B9A0 {native}, $02
  $839A  D8 E2 83                   JUMPF_abs              $83E2
  $839D  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $83A0  A5 53 70                   BYTE_LOADL_abs         $7053
  $83A3  D7 B4 83                   JUMPT_abs              $83B4
  $83A6  61                         PUSH_qimm   ; inline operand = 1
  $83A7  8E F2 94                   PUSH_imm2              $94F2
  $83AA  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $83AE  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $83B1  D6 E2 83                   JUMP_abs               $83E2
 >$83B4  AC 4E 80                   CALL_abs               $804E {bytecode}
  $83B7  D8 C0 83                   JUMPF_abs              $83C0
  $83BA  AC FA 82                   CALL_abs               $82FA (event_trader_hook) {bytecode}
  $83BD  D6 E2 83                   JUMP_abs               $83E2
 >$83C0  60                         PUSH_qimm   ; inline operand = 0
  $83C1  8E 22 95                   PUSH_imm2              $9522
  $83C4  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $83C8  A5 52 70                   BYTE_LOADL_abs         $7052
  $83CB  8B 13                      BYTE_LOADR_imm1        +19
  $83CD  B5                         MULT
  $83CE  8C D8 AF                   LOADR_imm2             $AFD8
  $83D1  BB                         ADD
  $83D2  B3                         PUSHL
  $83D3  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $83D7  60                         PUSH_qimm   ; inline operand = 0
  $83D8  8E 42 95                   PUSH_imm2              $9542
  $83DB  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $83DF  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
 >$83E2  CF                         RETURN

; ============================================================
; sub $83E3   (frame_off=+0, body @ $83E8)   [PRG $303E3]
; ============================================================
  $83E8  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $83EB  A5 53 70                   BYTE_LOADL_abs         $7053
  $83EE  D7 F7 83                   JUMPT_abs              $83F7
  $83F1  AC CC 81                   CALL_abs               $81CC (event_royal_summons) {bytecode}
  $83F4  D6 13 84                   JUMP_abs               $8413
 >$83F7  AC 4E 80                   CALL_abs               $804E {bytecode}
  $83FA  D8 0B 84                   JUMPF_abs              $840B
  $83FD  61                         PUSH_qimm   ; inline operand = 1
  $83FE  8E 4F 95                   PUSH_imm2              $954F
  $8401  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8405  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8408  D6 13 84                   JUMP_abs               $8413
 >$840B  A5 52 70                   BYTE_LOADL_abs         $7052
  $840E  B3                         PUSHL
  $840F  E9 77 81 02                CALL_abs_imm1          $8177 (event_hook_generic) {bytecode}, $02
 >$8413  CF                         RETURN

; ============================================================
; sub $8414   (frame_off=+0, body @ $8419)   [PRG $30414]
; ============================================================
  $8419  60                         PUSH_qimm   ; inline operand = 0
  $841A  8E 73 95                   PUSH_imm2              $9573
  $841D  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8421  A5 5A 70                   BYTE_LOADL_abs         $705A
  $8424  B3                         PUSHL
  $8425  E9 8D 81 02                CALL_abs_imm1          $818D {bytecode}, $02
  $8429  8D 1F                      BYTE_PUSH_imm1         +31
  $842B  E9 50 D5 02                CALL_abs_imm1          $D550 {native}, $02
  $842F  B3                         PUSHL
  $8430  8E 75 95                   PUSH_imm2              $9575
  $8433  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $8437  CF                         RETURN

; ============================================================
; sub $8438   (frame_off=-12, body @ $843D)   [PRG $30438]
; ============================================================
  $843D  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $8440  D3                         BYTE_DEREF
  $8441  59                         LOADR_qimm   ; inline operand = 9
  $8442  C0                         CMPEQ
  $8443  D8 65 84                   JUMPF_abs              $8465
  $8446  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8449  A5 5A 70                   BYTE_LOADL_abs         $705A
  $844C  D8 5A 84                   JUMPF_abs              $845A
  $844F  A5 5A 70                   BYTE_LOADL_abs         $705A
  $8452  B3                         PUSHL
  $8453  E9 DD 81 02                CALL_abs_imm1          $81DD (event_track_npc) {bytecode}, $02
  $8457  D6 75 87                   JUMP_abs               $8775
 >$845A  60                         PUSH_qimm   ; inline operand = 0
  $845B  8E 82 95                   PUSH_imm2              $9582
 >$845E  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8462  D6 72 87                   JUMP_abs               $8772
 >$8465  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $8468  D3                         BYTE_DEREF
  $8469  53                         LOADR_qimm   ; inline operand = 3
  $846A  C0                         CMPEQ
  $846B  D8 E9 84                   JUMPF_abs              $84E9
  $846E  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $8471  D0                         INC
  $8472  A8 50 70                   STORE_abs              $7050 (player_char_record)
  $8475  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $8478  D3                         BYTE_DEREF
  $8479  D8 99 84                   JUMPF_abs              $8499
  $847C  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $847F  D0                         INC
  $8480  D3                         BYTE_DEREF
  $8481  D2                         LSHIFT1
  $8482  8C 0C A0                   LOADR_imm2             $A00C
  $8485  BB                         ADD
  $8486  B3                         PUSHL
  $8487  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $848B  29                         STORE_quick   ; inline operand = 9
  $848C  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $848F  D0                         INC
  $8490  D3                         BYTE_DEREF
  $8491  B3                         PUSHL
  $8492  E9 03 80 02                CALL_abs_imm1          $8003 {bytecode}, $02
  $8496  D6 A8 84                   JUMP_abs               $84A8
 >$8499  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $849C  D0                         INC
  $849D  D3                         BYTE_DEREF
  $849E  57                         LOADR_qimm   ; inline operand = 7
  $849F  B5                         MULT
  $84A0  8C 42 65                   LOADR_imm2             $6542
  $84A3  BB                         ADD
  $84A4  B0                         DEREF
  $84A5  29                         STORE_quick   ; inline operand = 9
  $84A6  89 63                      BYTE_LOADL_imm1        +99
 >$84A8  2B                         STORE_quick   ; inline operand = 11
  $84A9  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $84AC  D3                         BYTE_DEREF
  $84AD  D8 B8 84                   JUMPF_abs              $84B8
  $84B0  A5 67 70                   BYTE_LOADL_abs         $7067
  $84B3  1B                         LOADR_quick   ; inline operand = 11
  $84B4  C1                         CMPNE
  $84B5  D8 E3 84                   JUMPF_abs              $84E3
 >$84B8  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $84BB  8D 1F                      BYTE_PUSH_imm1         +31
  $84BD  E9 50 D5 02                CALL_abs_imm1          $D550 {native}, $02
  $84C1  B3                         PUSHL
  $84C2  8E CC 95                   PUSH_imm2              $95CC
  $84C5  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $84C9  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $84CC  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $84CF  60                         PUSH_qimm   ; inline operand = 0
  $84D0  8E E9 95                   PUSH_imm2              $95E9
  $84D3  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $84D7  39                         PUSH_quick   ; inline operand = 9
  $84D8  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $84DC  60                         PUSH_qimm   ; inline operand = 0
  $84DD  8E EB 95                   PUSH_imm2              $95EB
  $84E0  D6 5E 84                   JUMP_abs               $845E
 >$84E3  AC 38 84                   CALL_abs               $8438 (event_map_clue) {bytecode}
  $84E6  D6 75 87                   JUMP_abs               $8775
 >$84E9  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $84EC  D3                         BYTE_DEREF
  $84ED  D8 0D 85                   JUMPF_abs              $850D
  $84F0  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $84F3  D0                         INC
  $84F4  D3                         BYTE_DEREF
  $84F5  B3                         PUSHL
  $84F6  E9 03 80 02                CALL_abs_imm1          $8003 {bytecode}, $02
  $84FA  2B                         STORE_quick   ; inline operand = 11
  $84FB  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $84FE  D0                         INC
  $84FF  D3                         BYTE_DEREF
  $8500  D2                         LSHIFT1
  $8501  8C 0C A0                   LOADR_imm2             $A00C
  $8504  BB                         ADD
  $8505  B3                         PUSHL
  $8506  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $850A  D6 26 85                   JUMP_abs               $8526
 >$850D  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $8510  D0                         INC
  $8511  D3                         BYTE_DEREF
  $8512  D1                         DEC
  $8513  D2                         LSHIFT1
  $8514  8C 6F 6A                   LOADR_imm2             $6A6F
  $8517  BB                         ADD
  $8518  D3                         BYTE_DEREF
  $8519  2B                         STORE_quick   ; inline operand = 11
  $851A  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $851D  D0                         INC
  $851E  D3                         BYTE_DEREF
  $851F  57                         LOADR_qimm   ; inline operand = 7
  $8520  B5                         MULT
  $8521  8C 42 65                   LOADR_imm2             $6542
  $8524  BB                         ADD
  $8525  B0                         DEREF
 >$8526  29                         STORE_quick   ; inline operand = 9
  $8527  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $852A  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $852D  D3                         BYTE_DEREF
  $852E  D8 DF 86                   JUMPF_abs              $86DF
  $8531  A5 67 70                   BYTE_LOADL_abs         $7067
  $8534  1B                         LOADR_quick   ; inline operand = 11
  $8535  C0                         CMPEQ
  $8536  D8 7F 86                   JUMPF_abs              $867F
  $8539  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $853C  D0                         INC
  $853D  D3                         BYTE_DEREF
  $853E  8C 2C 65                   LOADR_imm2             $652C
  $8541  BB                         ADD
  $8542  D3                         BYTE_DEREF
  $8543  8B 5A                      BYTE_LOADR_imm1        +90
  $8545  C8                         UCMPGT
  $8546  D8 B3 85                   JUMPF_abs              $85B3
  $8549  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $854C  72                         ADD_qimm   ; inline operand = 2
  $854D  D3                         BYTE_DEREF
  $854E  59                         LOADR_qimm   ; inline operand = 9
  $854F  C0                         CMPEQ
  $8550  D8 73 85                   JUMPF_abs              $8573
  $8553  A5 5A 70                   BYTE_LOADL_abs         $705A
  $8556  D8 5F 85                   JUMPF_abs              $855F
 >$8559  AC 14 84                   CALL_abs               $8414 {bytecode}
  $855C  D6 A7 85                   JUMP_abs               $85A7
 >$855F  60                         PUSH_qimm   ; inline operand = 0
  $8560  8E 0B 96                   PUSH_imm2              $960B
  $8563  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8567  44                         LOADL_qimm   ; inline operand = 4
  $8568  CD                         SWAP
  $8569  A5 5F 70                   BYTE_LOADL_abs         $705F
  $856C  DB                         OR
  $856D  A9 5F 70                   BYTE_STORE_abs         $705F
  $8570  D6 A7 85                   JUMP_abs               $85A7
 >$8573  60                         PUSH_qimm   ; inline operand = 0
  $8574  8E 54 96                   PUSH_imm2              $9654
  $8577  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $857B  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $857E  72                         ADD_qimm   ; inline operand = 2
  $857F  D3                         BYTE_DEREF
  $8580  D8 95 85                   JUMPF_abs              $8595
  $8583  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $8586  73                         ADD_qimm   ; inline operand = 3
  $8587  D3                         BYTE_DEREF
  $8588  D2                         LSHIFT1
  $8589  8C 0C A0                   LOADR_imm2             $A00C
  $858C  BB                         ADD
  $858D  B3                         PUSHL
  $858E  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8592  D6 A1 85                   JUMP_abs               $85A1
 >$8595  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $8598  73                         ADD_qimm   ; inline operand = 3
  $8599  D3                         BYTE_DEREF
  $859A  57                         LOADR_qimm   ; inline operand = 7
  $859B  B5                         MULT
  $859C  8C 42 65                   LOADR_imm2             $6542
  $859F  BB                         ADD
  $85A0  B0                         DEREF
 >$85A1  28                         STORE_quick   ; inline operand = 8
  $85A2  38                         PUSH_quick   ; inline operand = 8
  $85A3  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
 >$85A7  42                         LOADL_qimm   ; inline operand = 2
  $85A8  CD                         SWAP
  $85A9  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $85AC  BB                         ADD
  $85AD  A8 50 70                   STORE_abs              $7050 (player_char_record)
  $85B0  D6 72 87                   JUMP_abs               $8772
 >$85B3  61                         PUSH_qimm   ; inline operand = 1
  $85B4  8E 81 96                   PUSH_imm2              $9681
  $85B7  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $85BB  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $85BE  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $85C1  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $85C4  72                         ADD_qimm   ; inline operand = 2
  $85C5  D3                         BYTE_DEREF
  $85C6  59                         LOADR_qimm   ; inline operand = 9
  $85C7  C0                         CMPEQ
  $85C8  D8 40 86                   JUMPF_abs              $8640
  $85CB  A5 5A 70                   BYTE_LOADL_abs         $705A
  $85CE  D7 59 85                   JUMPT_abs              $8559
  $85D1  62                         PUSH_qimm   ; inline operand = 2
  $85D2  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $85D6  D8 32 86                   JUMPF_abs              $8632
  $85D9  A4 6B 66                   LOADL_abs              $666B
  $85DC  D8 32 86                   JUMPF_abs              $8632
  $85DF  65                         PUSH_qimm   ; inline operand = 5
  $85E0  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $85E4  D0                         INC
  $85E5  8B 64                      BYTE_LOADR_imm1        +100
  $85E7  B5                         MULT
  $85E8  B3                         PUSHL
  $85E9  AA 6B 66                   PUSH_abs               $666B
  $85EC  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $85F0  27                         STORE_quick   ; inline operand = 7
  $85F1  37                         PUSH_quick   ; inline operand = 7
  $85F2  8E A7 96                   PUSH_imm2              $96A7
  $85F5  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $85F9  AC 9F CD                   CALL_abs               $CD9F {native}
  $85FC  D8 28 86                   JUMPF_abs              $8628
  $85FF  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8602  07                         LOADL_quick   ; inline operand = 7
  $8603  CD                         SWAP
  $8604  A4 6B 66                   LOADL_abs              $666B
  $8607  BC                         SUB
  $8608  A8 6B 66                   STORE_abs              $666B
  $860B  61                         PUSH_qimm   ; inline operand = 1
  $860C  8E E0 96                   PUSH_imm2              $96E0
  $860F  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8613  44                         LOADL_qimm   ; inline operand = 4
  $8614  CD                         SWAP
  $8615  A5 5F 70                   BYTE_LOADL_abs         $705F
  $8618  DB                         OR
  $8619  A9 5F 70                   BYTE_STORE_abs         $705F
  $861C  42                         LOADL_qimm   ; inline operand = 2
  $861D  CD                         SWAP
  $861E  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $8621  BB                         ADD
  $8622  A8 50 70                   STORE_abs              $7050 (player_char_record)
  $8625  D6 3A 86                   JUMP_abs               $863A
 >$8628  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $862B  61                         PUSH_qimm   ; inline operand = 1
  $862C  8E FA 96                   PUSH_imm2              $96FA
  $862F  D6 36 86                   JUMP_abs               $8636
 >$8632  61                         PUSH_qimm   ; inline operand = 1
  $8633  8E 07 97                   PUSH_imm2              $9707
 >$8636  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
 >$863A  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $863D  D6 75 87                   JUMP_abs               $8775
 >$8640  60                         PUSH_qimm   ; inline operand = 0
  $8641  8E 32 97                   PUSH_imm2              $9732
  $8644  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8648  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $864B  72                         ADD_qimm   ; inline operand = 2
  $864C  D3                         BYTE_DEREF
  $864D  D8 62 86                   JUMPF_abs              $8662
  $8650  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $8653  73                         ADD_qimm   ; inline operand = 3
  $8654  D3                         BYTE_DEREF
  $8655  D2                         LSHIFT1
  $8656  8C 0C A0                   LOADR_imm2             $A00C
  $8659  BB                         ADD
  $865A  B3                         PUSHL
  $865B  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $865F  D6 6E 86                   JUMP_abs               $866E
 >$8662  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $8665  73                         ADD_qimm   ; inline operand = 3
  $8666  D3                         BYTE_DEREF
  $8667  57                         LOADR_qimm   ; inline operand = 7
  $8668  B5                         MULT
  $8669  8C 42 65                   LOADR_imm2             $6542
  $866C  BB                         ADD
  $866D  B0                         DEREF
 >$866E  28                         STORE_quick   ; inline operand = 8
  $866F  38                         PUSH_quick   ; inline operand = 8
  $8670  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8674  60                         PUSH_qimm   ; inline operand = 0
  $8675  8E 4F 97                   PUSH_imm2              $974F
  $8678  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $867C  D6 A7 85                   JUMP_abs               $85A7
 >$867F  60                         PUSH_qimm   ; inline operand = 0
  $8680  8E 5C 97                   PUSH_imm2              $975C
  $8683  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8687  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $868A  D0                         INC
  $868B  D3                         BYTE_DEREF
  $868C  D2                         LSHIFT1
  $868D  8C 0C A0                   LOADR_imm2             $A00C
  $8690  BB                         ADD
  $8691  B3                         PUSHL
  $8692  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8696  B3                         PUSHL
  $8697  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $869B  60                         PUSH_qimm   ; inline operand = 0
  $869C  8E 5E 97                   PUSH_imm2              $975E
  $869F  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $86A3  62                         PUSH_qimm   ; inline operand = 2
  $86A4  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $86A8  D8 C4 86                   JUMPF_abs              $86C4
  $86AB  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $86AE  D0                         INC
  $86AF  D3                         BYTE_DEREF
  $86B0  B3                         PUSHL
  $86B1  E9 03 80 02                CALL_abs_imm1          $8003 {bytecode}, $02
  $86B5  8B 13                      BYTE_LOADR_imm1        +19
  $86B7  B5                         MULT
  $86B8  8C D8 AF                   LOADR_imm2             $AFD8
  $86BB  BB                         ADD
  $86BC  B3                         PUSHL
 >$86BD  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $86C1  D6 72 87                   JUMP_abs               $8772
 >$86C4  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $86C7  D0                         INC
  $86C8  D3                         BYTE_DEREF
  $86C9  B3                         PUSHL
  $86CA  E9 03 80 02                CALL_abs_imm1          $8003 {bytecode}, $02
  $86CE  2A                         STORE_quick   ; inline operand = 10
  $86CF  0A                         LOADL_quick   ; inline operand = 10
  $86D0  8B 13                      BYTE_LOADR_imm1        +19
  $86D2  B5                         MULT
  $86D3  8C D8 AF                   LOADR_imm2             $AFD8
  $86D6  BB                         ADD
  $86D7  26                         STORE_quick   ; inline operand = 6
  $86D8  60                         PUSH_qimm   ; inline operand = 0
  $86D9  8E 6B 97                   PUSH_imm2              $976B
  $86DC  D6 59 87                   JUMP_abs               $8759
 >$86DF  60                         PUSH_qimm   ; inline operand = 0
  $86E0  8E 7E 97                   PUSH_imm2              $977E
  $86E3  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $86E7  A5 67 70                   BYTE_LOADL_abs         $7067
  $86EA  1B                         LOADR_quick   ; inline operand = 11
  $86EB  C0                         CMPEQ
  $86EC  D8 12 87                   JUMPF_abs              $8712
  $86EF  60                         PUSH_qimm   ; inline operand = 0
  $86F0  8E 90 97                   PUSH_imm2              $9790
  $86F3  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $86F7  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $86FA  D0                         INC
  $86FB  D3                         BYTE_DEREF
  $86FC  57                         LOADR_qimm   ; inline operand = 7
  $86FD  B5                         MULT
  $86FE  8C 42 65                   LOADR_imm2             $6542
  $8701  BB                         ADD
  $8702  B0                         DEREF
  $8703  B3                         PUSHL
  $8704  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8708  8E 92 97                   PUSH_imm2              $9792
  $870B  E9 19 C7 02                CALL_abs_imm1          $C719 {native}, $02
  $870F  D6 72 87                   JUMP_abs               $8772
 >$8712  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $8715  D0                         INC
  $8716  D3                         BYTE_DEREF
  $8717  57                         LOADR_qimm   ; inline operand = 7
  $8718  B5                         MULT
  $8719  8C 42 65                   LOADR_imm2             $6542
  $871C  BB                         ADD
  $871D  B0                         DEREF
  $871E  B3                         PUSHL
  $871F  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8723  60                         PUSH_qimm   ; inline operand = 0
  $8724  8E A7 97                   PUSH_imm2              $97A7
  $8727  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $872B  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $872E  D0                         INC
  $872F  D3                         BYTE_DEREF
  $8730  D1                         DEC
  $8731  D2                         LSHIFT1
  $8732  8C 6F 6A                   LOADR_imm2             $6A6F
  $8735  BB                         ADD
  $8736  D3                         BYTE_DEREF
  $8737  2A                         STORE_quick   ; inline operand = 10
  $8738  0A                         LOADL_quick   ; inline operand = 10
  $8739  8B 13                      BYTE_LOADR_imm1        +19
  $873B  B5                         MULT
  $873C  8C D8 AF                   LOADR_imm2             $AFD8
  $873F  BB                         ADD
  $8740  26                         STORE_quick   ; inline operand = 6
  $8741  62                         PUSH_qimm   ; inline operand = 2
  $8742  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8746  D8 55 87                   JUMPF_abs              $8755
  $8749  60                         PUSH_qimm   ; inline operand = 0
  $874A  8E B7 97                   PUSH_imm2              $97B7
  $874D  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8751  36                         PUSH_quick   ; inline operand = 6
  $8752  D6 BD 86                   JUMP_abs               $86BD
 >$8755  60                         PUSH_qimm   ; inline operand = 0
  $8756  8E C7 97                   PUSH_imm2              $97C7
 >$8759  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $875D  06                         LOADL_quick   ; inline operand = 6
  $875E  8F 10                      BYTE_ADD_imm1          +16
  $8760  B3                         PUSHL
  $8761  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8765  B3                         PUSHL
  $8766  06                         LOADL_quick   ; inline operand = 6
  $8767  7F                         ADD_qimm   ; inline operand = 15
  $8768  B3                         PUSHL
  $8769  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $876D  B3                         PUSHL
  $876E  E9 F2 80 04                CALL_abs_imm1          $80F2 {bytecode}, $04
 >$8772  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
 >$8775  CF                         RETURN

; ============================================================
; sub $8776   (frame_off=+0, body @ $877B)   [PRG $30776]
; ============================================================
  $877B  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $877E  A5 53 70                   BYTE_LOADL_abs         $7053
  $8781  D7 92 87                   JUMPT_abs              $8792
  $8784  61                         PUSH_qimm   ; inline operand = 1
  $8785  8E D9 97                   PUSH_imm2              $97D9
  $8788  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $878C  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $878F  D6 BD 87                   JUMP_abs               $87BD
 >$8792  AC 4E 80                   CALL_abs               $804E {bytecode}
  $8795  D8 A3 87                   JUMPF_abs              $87A3
  $8798  60                         PUSH_qimm   ; inline operand = 0
  $8799  8E F3 97                   PUSH_imm2              $97F3
  $879C  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $87A0  D6 BA 87                   JUMP_abs               $87BA
 >$87A3  60                         PUSH_qimm   ; inline operand = 0
  $87A4  8E 22 98                   PUSH_imm2              $9822
  $87A7  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $87AB  A5 52 70                   BYTE_LOADL_abs         $7052
  $87AE  8B 13                      BYTE_LOADR_imm1        +19
  $87B0  B5                         MULT
  $87B1  8C D8 AF                   LOADR_imm2             $AFD8
  $87B4  BB                         ADD
  $87B5  B3                         PUSHL
  $87B6  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
 >$87BA  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
 >$87BD  CF                         RETURN

; ============================================================
; sub $87BE   (frame_off=+0, body @ $87C3)   [PRG $307BE]
; ============================================================
  $87C3  AC 43 80                   CALL_abs               $8043 {bytecode}
  $87C6  D8 D2 87                   JUMPF_abs              $87D2
  $87C9  AC 2D 80                   CALL_abs               $802D {bytecode}
  $87CC  D7 D2 87                   JUMPT_abs              $87D2
  $87CF  AC E3 83                   CALL_abs               $83E3 (event_guild_hook) {bytecode}
 >$87D2  AC 43 80                   CALL_abs               $8043 {bytecode}
  $87D5  D8 EB 87                   JUMPF_abs              $87EB
  $87D8  AC 2D 80                   CALL_abs               $802D {bytecode}
  $87DB  D8 EB 87                   JUMPF_abs              $87EB
  $87DE  A4 6F 66                   LOADL_abs              $666F
  $87E1  8C 00 80                   LOADR_imm2             $8000
  $87E4  DA                         AND
  $87E5  D7 EB 87                   JUMPT_abs              $87EB
  $87E8  AC 38 84                   CALL_abs               $8438 (event_map_clue) {bytecode}
 >$87EB  AC 43 80                   CALL_abs               $8043 {bytecode}
  $87EE  D8 04 88                   JUMPF_abs              $8804
  $87F1  AC 2D 80                   CALL_abs               $802D {bytecode}
  $87F4  D8 04 88                   JUMPF_abs              $8804
  $87F7  A4 6F 66                   LOADL_abs              $666F
  $87FA  8C 00 80                   LOADR_imm2             $8000
  $87FD  DA                         AND
  $87FE  D8 04 88                   JUMPF_abs              $8804
  $8801  AC 76 87                   CALL_abs               $8776 (event_quest_urgency) {bytecode}
 >$8804  CF                         RETURN

; ============================================================
; sub $8805   (frame_off=+0, body @ $880A)   [PRG $30805]
; ============================================================
  $880A  AC 43 80                   CALL_abs               $8043 {bytecode}
  $880D  D8 42 88                   JUMPF_abs              $8842
  $8810  AC 2D 80                   CALL_abs               $802D {bytecode}
  $8813  D7 42 88                   JUMPT_abs              $8842
  $8816  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8819  A5 53 70                   BYTE_LOADL_abs         $7053
  $881C  D7 34 88                   JUMPT_abs              $8834
  $881F  61                         PUSH_qimm   ; inline operand = 1
  $8820  8E 48 98                   PUSH_imm2              $9848
  $8823  D6 2A 88                   JUMP_abs               $882A
 >$8826  61                         PUSH_qimm   ; inline operand = 1
  $8827  8E 69 98                   PUSH_imm2              $9869
 >$882A  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $882E  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8831  D6 42 88                   JUMP_abs               $8842
 >$8834  AC 4E 80                   CALL_abs               $804E {bytecode}
  $8837  D7 26 88                   JUMPT_abs              $8826
  $883A  A5 52 70                   BYTE_LOADL_abs         $7052
  $883D  B3                         PUSHL
  $883E  E9 77 81 02                CALL_abs_imm1          $8177 (event_hook_generic) {bytecode}, $02
 >$8842  AC 43 80                   CALL_abs               $8043 {bytecode}
  $8845  D8 5C 88                   JUMPF_abs              $885C
  $8848  AC 2D 80                   CALL_abs               $802D {bytecode}
  $884B  D8 5C 88                   JUMPF_abs              $885C
  $884E  AC 38 80                   CALL_abs               $8038 {bytecode}
  $8851  D7 5C 88                   JUMPT_abs              $885C
  $8854  A5 55 70                   BYTE_LOADL_abs         $7055
  $8857  B3                         PUSHL
  $8858  E9 DD 81 02                CALL_abs_imm1          $81DD (event_track_npc) {bytecode}, $02
 >$885C  AC 43 80                   CALL_abs               $8043 {bytecode}
  $885F  D8 82 88                   JUMPF_abs              $8882
  $8862  AC 2D 80                   CALL_abs               $802D {bytecode}
  $8865  D8 82 88                   JUMPF_abs              $8882
  $8868  AC 38 80                   CALL_abs               $8038 {bytecode}
  $886B  D8 82 88                   JUMPF_abs              $8882
  $886E  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8871  A5 53 70                   BYTE_LOADL_abs         $7053
  $8874  D7 8A 88                   JUMPT_abs              $888A
  $8877  61                         PUSH_qimm   ; inline operand = 1
  $8878  8E 8F 98                   PUSH_imm2              $988F
 >$887B  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $887F  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
 >$8882  CF                         RETURN
 >$8883  61                         PUSH_qimm   ; inline operand = 1
  $8884  8E B6 98                   PUSH_imm2              $98B6
  $8887  D6 7B 88                   JUMP_abs               $887B
 >$888A  AC 4E 80                   CALL_abs               $804E {bytecode}
  $888D  D7 83 88                   JUMPT_abs              $8883
  $8890  60                         PUSH_qimm   ; inline operand = 0
  $8891  8E DB 98                   PUSH_imm2              $98DB
  $8894  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8898  A5 52 70                   BYTE_LOADL_abs         $7052
  $889B  8B 13                      BYTE_LOADR_imm1        +19
  $889D  B5                         MULT
  $889E  8C D8 AF                   LOADR_imm2             $AFD8
  $88A1  BB                         ADD
  $88A2  B3                         PUSHL
  $88A3  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $88A7  60                         PUSH_qimm   ; inline operand = 0
  $88A8  8E EB 98                   PUSH_imm2              $98EB
  $88AB  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $88AF  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $88B2  CF                         RETURN

; ============================================================
; sub $88B3   (frame_off=+0, body @ $88B8)   [PRG $308B3]
; ============================================================
  $88B8  AC 43 80                   CALL_abs               $8043 {bytecode}
  $88BB  D8 D2 88                   JUMPF_abs              $88D2
  $88BE  AC 2D 80                   CALL_abs               $802D {bytecode}
  $88C1  D7 D2 88                   JUMPT_abs              $88D2
  $88C4  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $88C7  61                         PUSH_qimm   ; inline operand = 1
  $88C8  8E 09 99                   PUSH_imm2              $9909
  $88CB  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $88CF  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
 >$88D2  AC 43 80                   CALL_abs               $8043 {bytecode}
  $88D5  D8 2B 89                   JUMPF_abs              $892B
  $88D8  AC 2D 80                   CALL_abs               $802D {bytecode}
  $88DB  D8 2B 89                   JUMPF_abs              $892B
  $88DE  AC 38 80                   CALL_abs               $8038 {bytecode}
  $88E1  D7 2B 89                   JUMPT_abs              $892B
  $88E4  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $88E7  D3                         BYTE_DEREF
  $88E8  53                         LOADR_qimm   ; inline operand = 3
  $88E9  C0                         CMPEQ
  $88EA  D8 23 89                   JUMPF_abs              $8923
  $88ED  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $88F0  D0                         INC
  $88F1  A8 50 70                   STORE_abs              $7050 (player_char_record)
  $88F4  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $88F7  61                         PUSH_qimm   ; inline operand = 1
  $88F8  8E 41 99                   PUSH_imm2              $9941
  $88FB  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $88FF  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8902  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8905  60                         PUSH_qimm   ; inline operand = 0
  $8906  8E 68 99                   PUSH_imm2              $9968
  $8909  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $890D  A5 55 70                   BYTE_LOADL_abs         $7055
  $8910  B3                         PUSHL
  $8911  E9 8D 81 02                CALL_abs_imm1          $818D {bytecode}, $02
  $8915  60                         PUSH_qimm   ; inline operand = 0
  $8916  8E 6A 99                   PUSH_imm2              $996A
  $8919  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $891D  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $8920  D6 2B 89                   JUMP_abs               $892B
 >$8923  A5 55 70                   BYTE_LOADL_abs         $7055
  $8926  B3                         PUSHL
  $8927  E9 DD 81 02                CALL_abs_imm1          $81DD (event_track_npc) {bytecode}, $02
 >$892B  AC 43 80                   CALL_abs               $8043 {bytecode}
  $892E  D8 4B 89                   JUMPF_abs              $894B
  $8931  AC 2D 80                   CALL_abs               $802D {bytecode}
  $8934  D8 4B 89                   JUMPF_abs              $894B
  $8937  AC 38 80                   CALL_abs               $8038 {bytecode}
  $893A  D8 4B 89                   JUMPF_abs              $894B
  $893D  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8940  61                         PUSH_qimm   ; inline operand = 1
  $8941  8E 73 99                   PUSH_imm2              $9973
  $8944  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8948  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
 >$894B  CF                         RETURN

; ============================================================
; sub $894C   (frame_off=+0, body @ $8951)   [PRG $3094C]
; ============================================================
  $8951  AC 43 80                   CALL_abs               $8043 {bytecode}
  $8954  D8 63 89                   JUMPF_abs              $8963
  $8957  AC 2D 80                   CALL_abs               $802D {bytecode}
  $895A  D7 63 89                   JUMPT_abs              $8963
  $895D  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8960  AC CC 81                   CALL_abs               $81CC (event_royal_summons) {bytecode}
 >$8963  AC 43 80                   CALL_abs               $8043 {bytecode}
  $8966  D8 B7 89                   JUMPF_abs              $89B7
  $8969  AC 2D 80                   CALL_abs               $802D {bytecode}
  $896C  D8 B7 89                   JUMPF_abs              $89B7
  $896F  AC 38 80                   CALL_abs               $8038 {bytecode}
  $8972  D7 B7 89                   JUMPT_abs              $89B7
  $8975  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8978  A5 67 70                   BYTE_LOADL_abs         $7067
  $897B  B3                         PUSHL
  $897C  A5 55 70                   BYTE_LOADL_abs         $7055
  $897F  B4                         POPR
  $8980  C1                         CMPNE
  $8981  D8 AC 89                   JUMPF_abs              $89AC
  $8984  60                         PUSH_qimm   ; inline operand = 0
  $8985  8E AA 99                   PUSH_imm2              $99AA
  $8988  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $898C  A5 55 70                   BYTE_LOADL_abs         $7055
  $898F  D2                         LSHIFT1
  $8990  8C 24 BB                   LOADR_imm2             $BB24
  $8993  BB                         ADD
  $8994  B3                         PUSHL
  $8995  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8999  B3                         PUSHL
  $899A  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $899E  60                         PUSH_qimm   ; inline operand = 0
  $899F  8E D9 99                   PUSH_imm2              $99D9
  $89A2  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $89A6  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $89A9  D6 B7 89                   JUMP_abs               $89B7
 >$89AC  61                         PUSH_qimm   ; inline operand = 1
  $89AD  8E DB 99                   PUSH_imm2              $99DB
  $89B0  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $89B4  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
 >$89B7  AC 43 80                   CALL_abs               $8043 {bytecode}
  $89BA  D8 D7 89                   JUMPF_abs              $89D7
  $89BD  AC 2D 80                   CALL_abs               $802D {bytecode}
  $89C0  D8 D7 89                   JUMPF_abs              $89D7
  $89C3  AC 38 80                   CALL_abs               $8038 {bytecode}
  $89C6  D8 D7 89                   JUMPF_abs              $89D7
  $89C9  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $89CC  61                         PUSH_qimm   ; inline operand = 1
  $89CD  8E 11 9A                   PUSH_imm2              $9A11
  $89D0  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $89D4  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
 >$89D7  CF                         RETURN

; ============================================================
; sub $89D8   (frame_off=+0, body @ $89DD)   [PRG $309D8]
; ============================================================
  $89DD  A5 54 70                   BYTE_LOADL_abs         $7054
  $89E0  D5 00 00 05 00 F4 89 F1 89 F5 89 FB ... SWITCH_contig          limit=5   ; .table 5 word targets (contiguous); SWITCH 0=>$89F1 1=>$89F5 2=>$89FB 3=>$8A01 4=>$8A07 default=>$89F4
 >$89F1  AC 0B 83                   CALL_abs               $830B (event_quest_objective) {bytecode}
 >$89F4  CF                         RETURN
 >$89F5  AC 4C 89                   CALL_abs               $894C (event_fetch_gift) {bytecode}
  $89F8  D6 F4 89                   JUMP_abs               $89F4
 >$89FB  AC 05 88                   CALL_abs               $8805 (event_hook_multi) {bytecode}
  $89FE  D6 F4 89                   JUMP_abs               $89F4
 >$8A01  AC BE 87                   CALL_abs               $87BE {bytecode}
  $8A04  D6 F4 89                   JUMP_abs               $89F4
 >$8A07  AC B3 88                   CALL_abs               $88B3 (event_story_princess) {bytecode}
  $8A0A  D6 F4 89                   JUMP_abs               $89F4

; ============================================================
; sub $8A0D   (frame_off=+0, body @ $8A12)   [PRG $30A0D]
; ============================================================
  $8A12  62                         PUSH_qimm   ; inline operand = 2
  $8A13  3C                         PUSH_quick   ; inline operand = 12
  $8A14  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8A18  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8A1B  8E 31 9A                   PUSH_imm2              $9A31
  $8A1E  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8A22  CF                         RETURN

; ============================================================
; sub $8A23   (frame_off=-12, body @ $8A28)   [PRG $30A23]
; ============================================================
  $8A28  A5 67 70                   BYTE_LOADL_abs         $7067
  $8A2B  55                         LOADR_qimm   ; inline operand = 5
  $8A2C  B5                         MULT
  $8A2D  8C 0D B5                   LOADR_imm2             $B50D
  $8A30  BB                         ADD
  $8A31  B3                         PUSHL
  $8A32  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8A36  2B                         STORE_quick   ; inline operand = 11
  $8A37  0B                         LOADL_quick   ; inline operand = 11
  $8A38  8C FF 00                   LOADR_imm2             $00FF
  $8A3B  C0                         CMPEQ
  $8A3C  D8 50 8A                   JUMPF_abs              $8A50
  $8A3F  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8A42  61                         PUSH_qimm   ; inline operand = 1
  $8A43  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $8A47  8E 9F 9B                   PUSH_imm2              $9B9F
  $8A4A  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8A4E  40                         LOADL_qimm   ; inline operand = 0
  $8A4F  CF                         RETURN
 >$8A50  0B                         LOADL_quick   ; inline operand = 11
  $8A51  8C 2C 65                   LOADR_imm2             $652C
  $8A54  BB                         ADD
  $8A55  D3                         BYTE_DEREF
  $8A56  2A                         STORE_quick   ; inline operand = 10
  $8A57  61                         PUSH_qimm   ; inline operand = 1
  $8A58  67                         PUSH_qimm   ; inline operand = 7
  $8A59  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8A5D  61                         PUSH_qimm   ; inline operand = 1
  $8A5E  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $8A62  60                         PUSH_qimm   ; inline operand = 0
  $8A63  8E C9 9B                   PUSH_imm2              $9BC9
  $8A66  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8A6A  0B                         LOADL_quick   ; inline operand = 11
  $8A6B  D2                         LSHIFT1
  $8A6C  8C 0C A0                   LOADR_imm2             $A00C
  $8A6F  BB                         ADD
  $8A70  B3                         PUSHL
  $8A71  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8A75  B3                         PUSHL
  $8A76  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8A7A  60                         PUSH_qimm   ; inline operand = 0
  $8A7B  8E D4 9B                   PUSH_imm2              $9BD4
  $8A7E  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8A82  61                         PUSH_qimm   ; inline operand = 1
  $8A83  E9 9B CE 02                CALL_abs_imm1          $CE9B {native}, $02
  $8A87  A4 6B 66                   LOADL_abs              $666B
  $8A8A  5A                         LOADR_qimm   ; inline operand = 10
  $8A8B  C6                         UCMPLT
  $8A8C  D8 AD 8A                   JUMPF_abs              $8AAD
  $8A8F  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8A92  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8A95  8E F7 9B                   PUSH_imm2              $9BF7
  $8A98  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8A9C  0A                         LOADL_quick   ; inline operand = 10
  $8A9D  8B 64                      BYTE_LOADR_imm1        +100
  $8A9F  C6                         UCMPLT
  $8AA0  D8 A5 8A                   JUMPF_abs              $8AA5
  $8AA3  40                         LOADL_qimm   ; inline operand = 0
  $8AA4  CF                         RETURN
 >$8AA5  3B                         PUSH_quick   ; inline operand = 11
  $8AA6  E9 0D 8A 02                CALL_abs_imm1          $8A0D {bytecode}, $02
  $8AAA  D6 C8 8A                   JUMP_abs               $8AC8
 >$8AAD  0A                         LOADL_quick   ; inline operand = 10
  $8AAE  8B 64                      BYTE_LOADR_imm1        +100
  $8AB0  C9                         UCMPGE
  $8AB1  D8 BF 8A                   JUMPF_abs              $8ABF
  $8AB4  3A                         PUSH_quick   ; inline operand = 10
  $8AB5  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8AB9  8B 50                      BYTE_LOADR_imm1        +80
  $8ABB  C8                         UCMPGT
  $8ABC  D7 A5 8A                   JUMPT_abs              $8AA5
 >$8ABF  4A                         LOADL_qimm   ; inline operand = 10
  $8AC0  CD                         SWAP
  $8AC1  A4 6B 66                   LOADL_abs              $666B
  $8AC4  BC                         SUB
  $8AC5  A8 6B 66                   STORE_abs              $666B
 >$8AC8  0A                         LOADL_quick   ; inline operand = 10
  $8AC9  8B 2D                      BYTE_LOADR_imm1        +45
  $8ACB  B8                         UDIV
  $8ACC  29                         STORE_quick   ; inline operand = 9
  $8ACD  41                         LOADL_qimm   ; inline operand = 1
  $8ACE  28                         STORE_quick   ; inline operand = 8
  $8ACF  09                         LOADL_quick   ; inline operand = 9
  $8AD0  D8 E0 8A                   JUMPF_abs              $8AE0
  $8AD3  45                         LOADL_qimm   ; inline operand = 5
  $8AD4  19                         LOADR_quick   ; inline operand = 9
  $8AD5  BC                         SUB
  $8AD6  B3                         PUSHL
  $8AD7  41                         LOADL_qimm   ; inline operand = 1
  $8AD8  B4                         POPR
  $8AD9  BD                         LSHIFT
  $8ADA  B3                         PUSHL
  $8ADB  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8ADF  28                         STORE_quick   ; inline operand = 8
 >$8AE0  62                         PUSH_qimm   ; inline operand = 2
  $8AE1  3B                         PUSH_quick   ; inline operand = 11
  $8AE2  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8AE6  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8AE9  61                         PUSH_qimm   ; inline operand = 1
  $8AEA  09                         LOADL_quick   ; inline operand = 9
  $8AEB  D2                         LSHIFT1
  $8AEC  8C 6C 9A                   LOADR_imm2             $9A6C
  $8AEF  BB                         ADD
  $8AF0  B0                         DEREF
  $8AF1  B3                         PUSHL
  $8AF2  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8AF6  61                         PUSH_qimm   ; inline operand = 1
  $8AF7  E9 9B CE 02                CALL_abs_imm1          $CE9B {native}, $02
  $8AFB  0A                         LOADL_quick   ; inline operand = 10
  $8AFC  8C C8 00                   LOADR_imm2             $00C8
  $8AFF  C6                         UCMPLT
  $8B00  D8 1A 8B                   JUMPF_abs              $8B1A
  $8B03  0B                         LOADL_quick   ; inline operand = 11
  $8B04  8C 2C 65                   LOADR_imm2             $652C
  $8B07  BB                         ADD
  $8B08  B3                         PUSHL
  $8B09  8E C8 00                   PUSH_imm2              $00C8
  $8B0C  65                         PUSH_qimm   ; inline operand = 5
  $8B0D  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8B11  1A                         LOADR_quick   ; inline operand = 10
  $8B12  BB                         ADD
  $8B13  7A                         ADD_qimm   ; inline operand = 10
  $8B14  B3                         PUSHL
  $8B15  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8B19  D4                         BYTE_POPSTORE
 >$8B1A  A5 5F 70                   BYTE_LOADL_abs         $705F
  $8B1D  51                         LOADR_qimm   ; inline operand = 1
  $8B1E  DA                         AND
  $8B1F  D8 30 8B                   JUMPF_abs              $8B30
  $8B22  64                         PUSH_qimm   ; inline operand = 4
  $8B23  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8B27  D8 30 8B                   JUMPF_abs              $8B30
  $8B2A  AC D8 89                   CALL_abs               $89D8 {bytecode}
  $8B2D  D6 D1 8B                   JUMP_abs               $8BD1
 >$8B30  08                         LOADL_quick   ; inline operand = 8
  $8B31  D7 D1 8B                   JUMPT_abs              $8BD1
 >$8B34  8D 14                      BYTE_PUSH_imm1         +20
  $8B36  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8B3A  27                         STORE_quick   ; inline operand = 7
  $8B3B  07                         LOADL_quick   ; inline operand = 7
  $8B3C  D0                         INC
  $8B3D  54                         LOADR_qimm   ; inline operand = 4
  $8B3E  BD                         LSHIFT
  $8B3F  8C 71 66                   LOADR_imm2             $6671
  $8B42  BB                         ADD
  $8B43  D3                         BYTE_DEREF
  $8B44  58                         LOADR_qimm   ; inline operand = 8
  $8B45  DA                         AND
  $8B46  D7 34 8B                   JUMPT_abs              $8B34
  $8B49  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8B4C  60                         PUSH_qimm   ; inline operand = 0
  $8B4D  8E 0C 9C                   PUSH_imm2              $9C0C
  $8B50  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8B54  07                         LOADL_quick   ; inline operand = 7
  $8B55  8F 15                      BYTE_ADD_imm1          +21
  $8B57  57                         LOADR_qimm   ; inline operand = 7
  $8B58  B5                         MULT
  $8B59  8C 42 65                   LOADR_imm2             $6542
  $8B5C  BB                         ADD
  $8B5D  B0                         DEREF
  $8B5E  B3                         PUSHL
  $8B5F  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8B63  07                         LOADL_quick   ; inline operand = 7
  $8B64  55                         LOADR_qimm   ; inline operand = 5
  $8B65  BA                         UMOD
  $8B66  53                         LOADR_qimm   ; inline operand = 3
  $8B67  B8                         UDIV
  $8B68  B3                         PUSHL
  $8B69  07                         LOADL_quick   ; inline operand = 7
  $8B6A  55                         LOADR_qimm   ; inline operand = 5
  $8B6B  B8                         UDIV
  $8B6C  D2                         LSHIFT1
  $8B6D  B4                         POPR
  $8B6E  BB                         ADD
  $8B6F  D0                         INC
  $8B70  D2                         LSHIFT1
  $8B71  8C 5A 9A                   LOADR_imm2             $9A5A
  $8B74  BB                         ADD
  $8B75  B0                         DEREF
  $8B76  B3                         PUSHL
  $8B77  8E 15 9C                   PUSH_imm2              $9C15
  $8B7A  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $8B7E  07                         LOADL_quick   ; inline operand = 7
  $8B7F  8B 33                      BYTE_LOADR_imm1        +51
  $8B81  B5                         MULT
  $8B82  8C 04 60                   LOADR_imm2             $6004
  $8B85  BB                         ADD
  $8B86  26                         STORE_quick   ; inline operand = 6
  $8B87  06                         LOADL_quick   ; inline operand = 6
  $8B88  75                         ADD_qimm   ; inline operand = 5
  $8B89  D3                         BYTE_DEREF
  $8B8A  27                         STORE_quick   ; inline operand = 7
  $8B8B  06                         LOADL_quick   ; inline operand = 6
  $8B8C  74                         ADD_qimm   ; inline operand = 4
  $8B8D  D3                         BYTE_DEREF
  $8B8E  D7 B9 8B                   JUMPT_abs              $8BB9
  $8B91  07                         LOADL_quick   ; inline operand = 7
  $8B92  D8 A7 8B                   JUMPF_abs              $8BA7
  $8B95  07                         LOADL_quick   ; inline operand = 7
  $8B96  D1                         DEC
  $8B97  55                         LOADR_qimm   ; inline operand = 5
  $8B98  BA                         UMOD
  $8B99  53                         LOADR_qimm   ; inline operand = 3
  $8B9A  B8                         UDIV
  $8B9B  B3                         PUSHL
  $8B9C  07                         LOADL_quick   ; inline operand = 7
  $8B9D  D1                         DEC
  $8B9E  55                         LOADR_qimm   ; inline operand = 5
  $8B9F  B8                         UDIV
  $8BA0  D2                         LSHIFT1
  $8BA1  B4                         POPR
  $8BA2  BB                         ADD
  $8BA3  D0                         INC
  $8BA4  D6 A8 8B                   JUMP_abs               $8BA8
 >$8BA7  40                         LOADL_qimm   ; inline operand = 0
 >$8BA8  D2                         LSHIFT1
  $8BA9  8C 5A 9A                   LOADR_imm2             $9A5A
  $8BAC  BB                         ADD
  $8BAD  B0                         DEREF
  $8BAE  B3                         PUSHL
  $8BAF  8E 1C 9C                   PUSH_imm2              $9C1C
  $8BB2  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $8BB6  D6 CE 8B                   JUMP_abs               $8BCE
 >$8BB9  60                         PUSH_qimm   ; inline operand = 0
  $8BBA  8E 31 9C                   PUSH_imm2              $9C31
  $8BBD  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8BC1  07                         LOADL_quick   ; inline operand = 7
  $8BC2  8B 13                      BYTE_LOADR_imm1        +19
  $8BC4  B5                         MULT
  $8BC5  8C D8 AF                   LOADR_imm2             $AFD8
  $8BC8  BB                         ADD
  $8BC9  B3                         PUSHL
  $8BCA  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
 >$8BCE  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
 >$8BD1  41                         LOADL_qimm   ; inline operand = 1
  $8BD2  CF                         RETURN

; ============================================================
; sub $8BD3   (frame_off=+0, body @ $8BD8)   [PRG $30BD3]
; ============================================================
  $8BD8  A5 5F 70                   BYTE_LOADL_abs         $705F
  $8BDB  58                         LOADR_qimm   ; inline operand = 8
  $8BDC  DA                         AND
  $8BDD  D8 6B 8C                   JUMPF_abs              $8C6B
  $8BE0  A5 5F 70                   BYTE_LOADL_abs         $705F
  $8BE3  52                         LOADR_qimm   ; inline operand = 2
  $8BE4  DA                         AND
  $8BE5  D8 6B 8C                   JUMPF_abs              $8C6B
  $8BE8  A5 5F 70                   BYTE_LOADL_abs         $705F
  $8BEB  51                         LOADR_qimm   ; inline operand = 1
  $8BEC  DA                         AND
  $8BED  D8 6B 8C                   JUMPF_abs              $8C6B
  $8BF0  A5 67 70                   BYTE_LOADL_abs         $7067
  $8BF3  B3                         PUSHL
  $8BF4  A5 52 70                   BYTE_LOADL_abs         $7052
  $8BF7  B4                         POPR
  $8BF8  C0                         CMPEQ
  $8BF9  D8 6B 8C                   JUMPF_abs              $8C6B
  $8BFC  A5 53 70                   BYTE_LOADL_abs         $7053
  $8BFF  53                         LOADR_qimm   ; inline operand = 3
  $8C00  C0                         CMPEQ
  $8C01  D8 6B 8C                   JUMPF_abs              $8C6B
  $8C04  6D                         PUSH_qimm   ; inline operand = 13
  $8C05  E9 8C E0 02                CALL_abs_imm1          $E08C {native}, $02
  $8C09  61                         PUSH_qimm   ; inline operand = 1
  $8C0A  E9 C1 E0 02                CALL_abs_imm1          $E0C1 {native}, $02
  $8C0E  61                         PUSH_qimm   ; inline operand = 1
  $8C0F  67                         PUSH_qimm   ; inline operand = 7
  $8C10  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8C14  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8C17  61                         PUSH_qimm   ; inline operand = 1
  $8C18  8E 46 9C                   PUSH_imm2              $9C46
  $8C1B  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8C1F  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8C22  8E 10 27                   PUSH_imm2              $2710
  $8C25  A4 58 70                   LOADL_abs              $7058
  $8C28  51                         LOADR_qimm   ; inline operand = 1
  $8C29  BE                         URSHIFT
  $8C2A  A6 70 6F                   LOADR_abs              $6F70
  $8C2D  BB                         ADD
  $8C2E  B3                         PUSHL
  $8C2F  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8C33  A8 70 6F                   STORE_abs              $6F70
  $8C36  A4 72 6F                   LOADL_abs              $6F72
  $8C39  8C 50 C3                   LOADR_imm2             $C350
  $8C3C  C6                         UCMPLT
  $8C3D  D8 57 8C                   JUMPF_abs              $8C57
  $8C40  8E E8 03                   PUSH_imm2              $03E8
  $8C43  8A 50 C3                   LOADL_imm2             $C350
  $8C46  A6 72 6F                   LOADR_abs              $6F72
  $8C49  BC                         SUB
  $8C4A  B3                         PUSHL
  $8C4B  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8C4F  CD                         SWAP
  $8C50  A4 72 6F                   LOADL_abs              $6F72
  $8C53  BB                         ADD
  $8C54  A8 72 6F                   STORE_abs              $6F72
 >$8C57  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8C5A  61                         PUSH_qimm   ; inline operand = 1
  $8C5B  8E 7A 9C                   PUSH_imm2              $9C7A
  $8C5E  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8C62  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8C65  40                         LOADL_qimm   ; inline operand = 0
  $8C66  A9 5F 70                   BYTE_STORE_abs         $705F
  $8C69  41                         LOADL_qimm   ; inline operand = 1
  $8C6A  CF                         RETURN
 >$8C6B  A5 5F 70                   BYTE_LOADL_abs         $705F
  $8C6E  58                         LOADR_qimm   ; inline operand = 8
  $8C6F  DA                         AND
  $8C70  D8 37 8D                   JUMPF_abs              $8D37
  $8C73  A5 5F 70                   BYTE_LOADL_abs         $705F
  $8C76  51                         LOADR_qimm   ; inline operand = 1
  $8C77  DA                         AND
  $8C78  D8 37 8D                   JUMPF_abs              $8D37
  $8C7B  A5 67 70                   BYTE_LOADL_abs         $7067
  $8C7E  B3                         PUSHL
  $8C7F  A5 52 70                   BYTE_LOADL_abs         $7052
  $8C82  B4                         POPR
  $8C83  C0                         CMPEQ
  $8C84  D8 37 8D                   JUMPF_abs              $8D37
  $8C87  A5 53 70                   BYTE_LOADL_abs         $7053
  $8C8A  53                         LOADR_qimm   ; inline operand = 3
  $8C8B  C0                         CMPEQ
  $8C8C  D8 37 8D                   JUMPF_abs              $8D37
  $8C8F  6D                         PUSH_qimm   ; inline operand = 13
  $8C90  E9 8C E0 02                CALL_abs_imm1          $E08C {native}, $02
  $8C94  61                         PUSH_qimm   ; inline operand = 1
  $8C95  E9 C1 E0 02                CALL_abs_imm1          $E0C1 {native}, $02
  $8C99  61                         PUSH_qimm   ; inline operand = 1
  $8C9A  67                         PUSH_qimm   ; inline operand = 7
  $8C9B  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8C9F  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8CA2  61                         PUSH_qimm   ; inline operand = 1
  $8CA3  8E A1 9C                   PUSH_imm2              $9CA1
  $8CA6  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8CAA  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8CAD  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8CB0  61                         PUSH_qimm   ; inline operand = 1
  $8CB1  8E C0 9C                   PUSH_imm2              $9CC0
  $8CB4  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8CB8  AC 9F CD                   CALL_abs               $CD9F {native}
  $8CBB  D8 CF 8C                   JUMPF_abs              $8CCF
  $8CBE  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8CC1  61                         PUSH_qimm   ; inline operand = 1
  $8CC2  8E EB 9C                   PUSH_imm2              $9CEB
  $8CC5  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8CC9  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8CCC  D6 35 8D                   JUMP_abs               $8D35
 >$8CCF  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8CD2  61                         PUSH_qimm   ; inline operand = 1
  $8CD3  8E 0F 9D                   PUSH_imm2              $9D0F
  $8CD6  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8CDA  A4 58 70                   LOADL_abs              $7058
  $8CDD  51                         LOADR_qimm   ; inline operand = 1
  $8CDE  BE                         URSHIFT
  $8CDF  B3                         PUSHL
  $8CE0  A4 70 6F                   LOADL_abs              $6F70
  $8CE3  B4                         POPR
  $8CE4  C6                         UCMPLT
  $8CE5  D8 FD 8C                   JUMPF_abs              $8CFD
  $8CE8  40                         LOADL_qimm   ; inline operand = 0
  $8CE9  A8 70 6F                   STORE_abs              $6F70
  $8CEC  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8CEF  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8CF2  61                         PUSH_qimm   ; inline operand = 1
  $8CF3  8E 33 9D                   PUSH_imm2              $9D33
  $8CF6  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8CFA  D6 0A 8D                   JUMP_abs               $8D0A
 >$8CFD  A4 58 70                   LOADL_abs              $7058
  $8D00  51                         LOADR_qimm   ; inline operand = 1
  $8D01  BE                         URSHIFT
  $8D02  CD                         SWAP
  $8D03  A4 70 6F                   LOADL_abs              $6F70
  $8D06  BC                         SUB
  $8D07  A8 70 6F                   STORE_abs              $6F70
 >$8D0A  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8D0D  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8D10  8E 67 9D                   PUSH_imm2              $9D67
  $8D13  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8D17  6A                         PUSH_qimm   ; inline operand = 10
  $8D18  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8D1C  55                         LOADR_qimm   ; inline operand = 5
  $8D1D  B5                         MULT
  $8D1E  90 2C 01                   ADD_imm2               $012C
  $8D21  B3                         PUSHL
  $8D22  AA 72 6F                   PUSH_abs               $6F72
  $8D25  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8D29  CD                         SWAP
  $8D2A  A4 72 6F                   LOADL_abs              $6F72
  $8D2D  BC                         SUB
  $8D2E  A8 72 6F                   STORE_abs              $6F72
  $8D31  40                         LOADL_qimm   ; inline operand = 0
  $8D32  A9 5F 70                   BYTE_STORE_abs         $705F
 >$8D35  41                         LOADL_qimm   ; inline operand = 1
  $8D36  CF                         RETURN
 >$8D37  A5 5F 70                   BYTE_LOADL_abs         $705F
  $8D3A  58                         LOADR_qimm   ; inline operand = 8
  $8D3B  DA                         AND
  $8D3C  D7 2F 8E                   JUMPT_abs              $8E2F
  $8D3F  A5 5F 70                   BYTE_LOADL_abs         $705F
  $8D42  51                         LOADR_qimm   ; inline operand = 1
  $8D43  DA                         AND
  $8D44  D8 2F 8E                   JUMPF_abs              $8E2F
  $8D47  A5 67 70                   BYTE_LOADL_abs         $7067
  $8D4A  B3                         PUSHL
  $8D4B  A5 52 70                   BYTE_LOADL_abs         $7052
  $8D4E  B4                         POPR
  $8D4F  C0                         CMPEQ
  $8D50  D8 2F 8E                   JUMPF_abs              $8E2F
  $8D53  A5 53 70                   BYTE_LOADL_abs         $7053
  $8D56  53                         LOADR_qimm   ; inline operand = 3
  $8D57  C0                         CMPEQ
  $8D58  D8 2F 8E                   JUMPF_abs              $8E2F
  $8D5B  6D                         PUSH_qimm   ; inline operand = 13
  $8D5C  E9 8C E0 02                CALL_abs_imm1          $E08C {native}, $02
  $8D60  61                         PUSH_qimm   ; inline operand = 1
  $8D61  E9 C1 E0 02                CALL_abs_imm1          $E0C1 {native}, $02
  $8D65  65                         PUSH_qimm   ; inline operand = 5
  $8D66  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8D6A  55                         LOADR_qimm   ; inline operand = 5
  $8D6B  B5                         MULT
  $8D6C  8F 64                      BYTE_ADD_imm1          +100
  $8D6E  A8 58 70                   STORE_abs              $7058
  $8D71  61                         PUSH_qimm   ; inline operand = 1
  $8D72  67                         PUSH_qimm   ; inline operand = 7
  $8D73  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8D77  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8D7A  61                         PUSH_qimm   ; inline operand = 1
  $8D7B  8E 89 9D                   PUSH_imm2              $9D89
  $8D7E  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8D82  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8D85  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8D88  60                         PUSH_qimm   ; inline operand = 0
  $8D89  8E C2 9D                   PUSH_imm2              $9DC2
  $8D8C  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8D90  A5 55 70                   BYTE_LOADL_abs         $7055
  $8D93  8F 14                      BYTE_ADD_imm1          +20
  $8D95  57                         LOADR_qimm   ; inline operand = 7
  $8D96  B5                         MULT
  $8D97  8C 42 65                   LOADR_imm2             $6542
  $8D9A  BB                         ADD
  $8D9B  B0                         DEREF
  $8D9C  B3                         PUSHL
  $8D9D  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8DA1  A5 55 70                   BYTE_LOADL_abs         $7055
  $8DA4  D1                         DEC
  $8DA5  55                         LOADR_qimm   ; inline operand = 5
  $8DA6  B8                         UDIV
  $8DA7  53                         LOADR_qimm   ; inline operand = 3
  $8DA8  C0                         CMPEQ
  $8DA9  D8 B3 8D                   JUMPF_abs              $8DB3
  $8DAC  60                         PUSH_qimm   ; inline operand = 0
  $8DAD  8E CD 9D                   PUSH_imm2              $9DCD
  $8DB0  D6 B7 8D                   JUMP_abs               $8DB7
 >$8DB3  60                         PUSH_qimm   ; inline operand = 0
  $8DB4  8E D4 9D                   PUSH_imm2              $9DD4
 >$8DB7  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8DBB  A5 55 70                   BYTE_LOADL_abs         $7055
  $8DBE  D1                         DEC
  $8DBF  55                         LOADR_qimm   ; inline operand = 5
  $8DC0  B8                         UDIV
  $8DC1  D2                         LSHIFT1
  $8DC2  8C 24 BB                   LOADR_imm2             $BB24
  $8DC5  BB                         ADD
  $8DC6  B3                         PUSHL
  $8DC7  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8DCB  B3                         PUSHL
  $8DCC  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8DD0  60                         PUSH_qimm   ; inline operand = 0
  $8DD1  8E DC 9D                   PUSH_imm2              $9DDC
  $8DD4  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8DD8  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $8DDB  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8DDE  AA 58 70                   PUSH_abs               $7058
  $8DE1  8E F2 9D                   PUSH_imm2              $9DF2
  $8DE4  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8DE8  AC 9F CD                   CALL_abs               $CD9F {native}
  $8DEB  D8 1B 8E                   JUMPF_abs              $8E1B
  $8DEE  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8DF1  A4 58 70                   LOADL_abs              $7058
  $8DF4  51                         LOADR_qimm   ; inline operand = 1
  $8DF5  BE                         URSHIFT
  $8DF6  B3                         PUSHL
  $8DF7  8E 22 9E                   PUSH_imm2              $9E22
  $8DFA  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8DFE  8E 10 27                   PUSH_imm2              $2710
  $8E01  A4 58 70                   LOADL_abs              $7058
  $8E04  51                         LOADR_qimm   ; inline operand = 1
  $8E05  BE                         URSHIFT
  $8E06  A6 70 6F                   LOADR_abs              $6F70
  $8E09  BB                         ADD
  $8E0A  B3                         PUSHL
  $8E0B  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8E0F  A8 70 6F                   STORE_abs              $6F70
  $8E12  48                         LOADL_qimm   ; inline operand = 8
  $8E13  CD                         SWAP
  $8E14  A5 5F 70                   BYTE_LOADL_abs         $705F
  $8E17  DB                         OR
  $8E18  D6 27 8E                   JUMP_abs               $8E27
 >$8E1B  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8E1E  61                         PUSH_qimm   ; inline operand = 1
  $8E1F  8E 5E 9E                   PUSH_imm2              $9E5E
  $8E22  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8E26  40                         LOADL_qimm   ; inline operand = 0
 >$8E27  A9 5F 70                   BYTE_STORE_abs         $705F
  $8E2A  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8E2D  41                         LOADL_qimm   ; inline operand = 1
  $8E2E  CF                         RETURN
 >$8E2F  40                         LOADL_qimm   ; inline operand = 0
  $8E30  CF                         RETURN

; ============================================================
; sub $8E31   (frame_off=-18, body @ $8E36)   [PRG $30E31]
; ============================================================
  $8E36  A5 67 70                   BYTE_LOADL_abs         $7067
  $8E39  5E                         LOADR_qimm   ; inline operand = 14
  $8E3A  B5                         MULT
  $8E3B  8C B2 67                   LOADR_imm2             $67B2
  $8E3E  BB                         ADD
  $8E3F  23                         STORE_quick   ; inline operand = 3
  $8E40  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8E43  60                         PUSH_qimm   ; inline operand = 0
  $8E44  E9 89 DA 02                CALL_abs_imm1          $DA89 {native}, $02
  $8E48  B3                         PUSHL
  $8E49  60                         PUSH_qimm   ; inline operand = 0
  $8E4A  E9 9E D5 02                CALL_abs_imm1          $D59E {native}, $02
  $8E4E  B4                         POPR
  $8E4F  C0                         CMPEQ
  $8E50  D8 5F 8E                   JUMPF_abs              $8E5F
  $8E53  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8E56  8E 82 9E                   PUSH_imm2              $9E82
  $8E59  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8E5D  40                         LOADL_qimm   ; inline operand = 0
  $8E5E  CF                         RETURN
 >$8E5F  A4 6B 66                   LOADL_abs              $666B
  $8E62  8B 32                      BYTE_LOADR_imm1        +50
  $8E64  C6                         UCMPLT
  $8E65  D8 74 8E                   JUMPF_abs              $8E74
  $8E68  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8E6B  8E A0 9E                   PUSH_imm2              $9EA0
  $8E6E  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8E72  40                         LOADL_qimm   ; inline operand = 0
  $8E73  CF                         RETURN
 >$8E74  A4 6B 66                   LOADL_abs              $666B
  $8E77  25                         STORE_quick   ; inline operand = 5
  $8E78  8E E8 03                   PUSH_imm2              $03E8
  $8E7B  35                         PUSH_quick   ; inline operand = 5
  $8E7C  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8E80  27                         STORE_quick   ; inline operand = 7
  $8E81  61                         PUSH_qimm   ; inline operand = 1
  $8E82  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $8E86  37                         PUSH_quick   ; inline operand = 7
  $8E87  8D 32                      BYTE_PUSH_imm1         +50
  $8E89  8E BA 9E                   PUSH_imm2              $9EBA
  $8E8C  E9 12 CD 06                CALL_abs_imm1          $CD12 {native}, $06
  $8E90  2B                         STORE_quick   ; inline operand = 11
  $8E91  0B                         LOADL_quick   ; inline operand = 11
  $8E92  8B FF                      BYTE_LOADR_imm1        -1
  $8E94  C0                         CMPEQ
  $8E95  D8 9A 8E                   JUMPF_abs              $8E9A
  $8E98  40                         LOADL_qimm   ; inline operand = 0
  $8E99  CF                         RETURN
 >$8E9A  0B                         LOADL_quick   ; inline operand = 11
  $8E9B  CD                         SWAP
  $8E9C  A4 6B 66                   LOADL_abs              $666B
  $8E9F  BC                         SUB
  $8EA0  A8 6B 66                   STORE_abs              $666B
  $8EA3  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8EA6  60                         PUSH_qimm   ; inline operand = 0
  $8EA7  8E CA 9E                   PUSH_imm2              $9ECA
  $8EAA  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8EAE  AA 42 65                   PUSH_abs               $6542
  $8EB1  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8EB5  60                         PUSH_qimm   ; inline operand = 0
  $8EB6  8E F2 9E                   PUSH_imm2              $9EF2
  $8EB9  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8EBD  61                         PUSH_qimm   ; inline operand = 1
  $8EBE  E9 9B CE 02                CALL_abs_imm1          $CE9B {native}, $02
  $8EC2  03                         LOADL_quick   ; inline operand = 3
  $8EC3  B0                         DEREF
  $8EC4  B3                         PUSHL
  $8EC5  8A E8 03                   LOADL_imm2             $03E8
  $8EC8  B4                         POPR
  $8EC9  BC                         SUB
  $8ECA  8B 64                      BYTE_LOADR_imm1        +100
  $8ECC  B6                         SDIV
  $8ECD  B3                         PUSHL
  $8ECE  A5 74 6F                   BYTE_LOADL_abs         $6F74
  $8ED1  B3                         PUSHL
  $8ED2  4A                         LOADL_qimm   ; inline operand = 10
  $8ED3  B4                         POPR
  $8ED4  BC                         SUB
  $8ED5  B3                         PUSHL
  $8ED6  A5 67 70                   BYTE_LOADL_abs         $7067
  $8ED9  5E                         LOADR_qimm   ; inline operand = 14
  $8EDA  B5                         MULT
  $8EDB  8C BA 67                   LOADR_imm2             $67BA
  $8EDE  BB                         ADD
  $8EDF  D3                         BYTE_DEREF
  $8EE0  5A                         LOADR_qimm   ; inline operand = 10
  $8EE1  B6                         SDIV
  $8EE2  B3                         PUSHL
  $8EE3  89 14                      BYTE_LOADL_imm1        +20
  $8EE5  B4                         POPR
  $8EE6  BC                         SUB
  $8EE7  B4                         POPR
  $8EE8  BB                         ADD
  $8EE9  B4                         POPR
  $8EEA  BB                         ADD
  $8EEB  2A                         STORE_quick   ; inline operand = 10
  $8EEC  0B                         LOADL_quick   ; inline operand = 11
  $8EED  1A                         LOADR_quick   ; inline operand = 10
  $8EEE  B8                         UDIV
  $8EEF  B3                         PUSHL
  $8EF0  62                         PUSH_qimm   ; inline operand = 2
  $8EF1  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8EF5  B4                         POPR
  $8EF6  BB                         ADD
  $8EF7  D0                         INC
  $8EF8  29                         STORE_quick   ; inline operand = 9
  $8EF9  60                         PUSH_qimm   ; inline operand = 0
  $8EFA  E9 9E D5 02                CALL_abs_imm1          $D59E {native}, $02
  $8EFE  B3                         PUSHL
  $8EFF  60                         PUSH_qimm   ; inline operand = 0
  $8F00  E9 89 DA 02                CALL_abs_imm1          $DA89 {native}, $02
  $8F04  B4                         POPR
  $8F05  BC                         SUB
  $8F06  26                         STORE_quick   ; inline operand = 6
  $8F07  39                         PUSH_quick   ; inline operand = 9
  $8F08  36                         PUSH_quick   ; inline operand = 6
  $8F09  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8F0D  28                         STORE_quick   ; inline operand = 8
  $8F0E  AC 01 B8                   CALL_abs               $B801 (draw_box_frame) {native}
  $8F11  61                         PUSH_qimm   ; inline operand = 1
  $8F12  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $8F16  39                         PUSH_quick   ; inline operand = 9
  $8F17  8E F4 9E                   PUSH_imm2              $9EF4
  $8F1A  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $8F1E  09                         LOADL_quick   ; inline operand = 9
  $8F1F  16                         LOADR_quick   ; inline operand = 6
  $8F20  C4                         SCMPGT
  $8F21  D8 2C 8F                   JUMPF_abs              $8F2C
  $8F24  38                         PUSH_quick   ; inline operand = 8
  $8F25  8E 05 9F                   PUSH_imm2              $9F05
  $8F28  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
 >$8F2C  62                         PUSH_qimm   ; inline operand = 2
  $8F2D  E9 9B CE 02                CALL_abs_imm1          $CE9B {native}, $02
  $8F31  60                         PUSH_qimm   ; inline operand = 0
  $8F32  8D 12                      BYTE_PUSH_imm1         +18
  $8F34  8D 1C                      BYTE_PUSH_imm1         +28
  $8F36  62                         PUSH_qimm   ; inline operand = 2
  $8F37  62                         PUSH_qimm   ; inline operand = 2
  $8F38  E9 05 A4 0A                CALL_abs_imm1          $A405 {native}, $0A
  $8F3C  67                         PUSH_qimm   ; inline operand = 7
  $8F3D  69                         PUSH_qimm   ; inline operand = 9
  $8F3E  38                         PUSH_quick   ; inline operand = 8
  $8F3F  8E 71 89                   PUSH_imm2              $8971
  $8F42  8E C0 00                   PUSH_imm2              $00C0
  $8F45  61                         PUSH_qimm   ; inline operand = 1
  $8F46  E9 3A DE 0C                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $0C
  $8F4A  24                         STORE_quick   ; inline operand = 4
  $8F4B  8A F0 00                   LOADL_imm2             $00F0
  $8F4E  A9 63 70                   BYTE_STORE_abs         $7063
  $8F51  60                         PUSH_qimm   ; inline operand = 0
  $8F52  8D 12                      BYTE_PUSH_imm1         +18
  $8F54  8D 1C                      BYTE_PUSH_imm1         +28
  $8F56  62                         PUSH_qimm   ; inline operand = 2
  $8F57  62                         PUSH_qimm   ; inline operand = 2
  $8F58  E9 9B A4 0A                CALL_abs_imm1          $A49B {native}, $0A
  $8F5C  04                         LOADL_quick   ; inline operand = 4
  $8F5D  51                         LOADR_qimm   ; inline operand = 1
  $8F5E  C0                         CMPEQ
  $8F5F  D8 64 8F                   JUMPF_abs              $8F64
  $8F62  41                         LOADL_qimm   ; inline operand = 1
  $8F63  CF                         RETURN
 >$8F64  05                         LOADL_quick   ; inline operand = 5
  $8F65  A8 6B 66                   STORE_abs              $666B
  $8F68  04                         LOADL_quick   ; inline operand = 4
  $8F69  CF                         RETURN

; ============================================================
; sub $8F6A   (frame_off=-2, body @ $8F6F)   [PRG $30F6A]
; ============================================================
  $8F6F  8A F0 00                   LOADL_imm2             $00F0
  $8F72  A9 63 70                   BYTE_STORE_abs         $7063
  $8F75  60                         PUSH_qimm   ; inline operand = 0
  $8F76  8D 12                      BYTE_PUSH_imm1         +18
  $8F78  8D 1C                      BYTE_PUSH_imm1         +28
  $8F7A  62                         PUSH_qimm   ; inline operand = 2
  $8F7B  62                         PUSH_qimm   ; inline operand = 2
  $8F7C  E9 05 A4 0A                CALL_abs_imm1          $A405 {native}, $0A
  $8F80  67                         PUSH_qimm   ; inline operand = 7
  $8F81  69                         PUSH_qimm   ; inline operand = 9
  $8F82  8E FF 00                   PUSH_imm2              $00FF
  $8F85  8E 71 89                   PUSH_imm2              $8971
  $8F88  8E C0 00                   PUSH_imm2              $00C0
  $8F8B  61                         PUSH_qimm   ; inline operand = 1
  $8F8C  E9 3A DE 0C                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $0C
  $8F90  2B                         STORE_quick   ; inline operand = 11
  $8F91  60                         PUSH_qimm   ; inline operand = 0
  $8F92  8D 12                      BYTE_PUSH_imm1         +18
  $8F94  8D 1C                      BYTE_PUSH_imm1         +28
  $8F96  62                         PUSH_qimm   ; inline operand = 2
  $8F97  62                         PUSH_qimm   ; inline operand = 2
  $8F98  E9 9B A4 0A                CALL_abs_imm1          $A49B {native}, $0A
  $8F9C  0B                         LOADL_quick   ; inline operand = 11
  $8F9D  CF                         RETURN

; ============================================================
; sub $8F9E   (frame_off=-4, body @ $8FA3)   [PRG $30F9E]
; ============================================================
  $8FA3  40                         LOADL_qimm   ; inline operand = 0
  $8FA4  2A                         STORE_quick   ; inline operand = 10
 >$8FA5  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8FA8  61                         PUSH_qimm   ; inline operand = 1
  $8FA9  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $8FAD  61                         PUSH_qimm   ; inline operand = 1
  $8FAE  8E 37 9F                   PUSH_imm2              $9F37
  $8FB1  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8FB5  61                         PUSH_qimm   ; inline operand = 1
  $8FB6  62                         PUSH_qimm   ; inline operand = 2
  $8FB7  8E 20 9F                   PUSH_imm2              $9F20
  $8FBA  61                         PUSH_qimm   ; inline operand = 1
  $8FBB  69                         PUSH_qimm   ; inline operand = 9
  $8FBC  8D 17                      BYTE_PUSH_imm1         +23
  $8FBE  68                         PUSH_qimm   ; inline operand = 8
  $8FBF  E9 56 A1 0E                CALL_abs_imm1          $A156 {native}, $0E
  $8FC3  A2 FF FF                   BYTE_STORE_far         $FFFF
  $8FC6  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8FC9  8C FF 00                   LOADR_imm2             $00FF
  $8FCC  C1                         CMPNE
  $8FCD  D8 DB 8F                   JUMPF_abs              $8FDB
  $8FD0  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8FD3  D2                         LSHIFT1
  $8FD4  8C 24 9F                   LOADR_imm2             $9F24
  $8FD7  BB                         ADD
  $8FD8  B0                         DEREF
  $8FD9  DD                         CALLPTR
  $8FDA  2A                         STORE_quick   ; inline operand = 10
 >$8FDB  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8FDE  8C FF 00                   LOADR_imm2             $00FF
  $8FE1  C0                         CMPEQ
  $8FE2  D7 E9 8F                   JUMPT_abs              $8FE9
  $8FE5  0A                         LOADL_quick   ; inline operand = 10
  $8FE6  D8 A5 8F                   JUMPF_abs              $8FA5
 >$8FE9  0A                         LOADL_quick   ; inline operand = 10
  $8FEA  CF                         RETURN

; ============================================================
; sub $8FEB   (frame_off=-70, body @ $8FF0)   [PRG $30FEB]
; ============================================================
  $8FF0  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8FF3  61                         PUSH_qimm   ; inline operand = 1
  $8FF4  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $8FF8  DE F5 FF                   LEAL_far               $FFF5
  $8FFB  B3                         PUSHL
  $8FFC  E9 A6 D6 02                CALL_abs_imm1          $D6A6 {native}, $02
  $9000  5A                         LOADR_qimm   ; inline operand = 10
  $9001  C0                         CMPEQ
  $9002  D8 0E 90                   JUMPF_abs              $900E
  $9005  8E 42 9F                   PUSH_imm2              $9F42
  $9008  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $900C  40                         LOADL_qimm   ; inline operand = 0
  $900D  CF                         RETURN
 >$900E  40                         LOADL_qimm   ; inline operand = 0
  $900F  A2 DE FF                   BYTE_STORE_far         $FFDE
  $9012  DE E1 FF                   LEAL_far               $FFE1
  $9015  85 DF                      STORE_near             $DF
  $9017  40                         LOADL_qimm   ; inline operand = 0
  $9018  D6 62 90                   JUMP_abs               $9062
 >$901B  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $901E  D0                         INC
  $901F  57                         LOADR_qimm   ; inline operand = 7
  $9020  B5                         MULT
  $9021  8C 48 65                   LOADR_imm2             $6548
  $9024  BB                         ADD
  $9025  D3                         BYTE_DEREF
  $9026  A2 CB FF                   BYTE_STORE_far         $FFCB
  $9029  A5 67 70                   BYTE_LOADL_abs         $7067
  $902C  B3                         PUSHL
  $902D  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $9030  D2                         LSHIFT1
  $9031  8C 6F 6A                   LOADR_imm2             $6A6F
  $9034  BB                         ADD
  $9035  D3                         BYTE_DEREF
  $9036  B4                         POPR
  $9037  C0                         CMPEQ
  $9038  D8 5E 90                   JUMPF_abs              $905E
  $903B  A0 CB FF                   BYTE_LOADL_far         $FFCB
  $903E  52                         LOADR_qimm   ; inline operand = 2
  $903F  DA                         AND
  $9040  D7 5E 90                   JUMPT_abs              $905E
  $9043  A0 CB FF                   BYTE_LOADL_far         $FFCB
  $9046  51                         LOADR_qimm   ; inline operand = 1
  $9047  DA                         AND
  $9048  D8 5E 90                   JUMPF_abs              $905E
  $904B  87 DF                      PUSH_near              $DF
  $904D  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $9050  D0                         INC
  $9051  D4                         BYTE_POPSTORE
  $9052  81 DF                      LOADL_near             $DF
  $9054  D0                         INC
  $9055  85 DF                      STORE_near             $DF
  $9057  A0 DE FF                   BYTE_LOADL_far         $FFDE
  $905A  D0                         INC
  $905B  A2 DE FF                   BYTE_STORE_far         $FFDE
 >$905E  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $9061  D0                         INC
 >$9062  A2 FF FF                   BYTE_STORE_far         $FFFF
  $9065  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $9068  8B 14                      BYTE_LOADR_imm1        +20
  $906A  C6                         UCMPLT
  $906B  D7 1B 90                   JUMPT_abs              $901B
  $906E  A0 DE FF                   BYTE_LOADL_far         $FFDE
  $9071  D7 7D 90                   JUMPT_abs              $907D
  $9074  8E 5C 9F                   PUSH_imm2              $9F5C
  $9077  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $907B  40                         LOADL_qimm   ; inline operand = 0
  $907C  CF                         RETURN
 >$907D  A0 DE FF                   BYTE_LOADL_far         $FFDE
  $9080  56                         LOADR_qimm   ; inline operand = 6
  $9081  C6                         UCMPLT
  $9082  D8 8B 90                   JUMPF_abs              $908B
  $9085  A0 DE FF                   BYTE_LOADL_far         $FFDE
  $9088  D6 8C 90                   JUMP_abs               $908C
 >$908B  46                         LOADL_qimm   ; inline operand = 6
 >$908C  A2 DE FF                   BYTE_STORE_far         $FFDE
  $908F  60                         PUSH_qimm   ; inline operand = 0
  $9090  8D 12                      BYTE_PUSH_imm1         +18
  $9092  8D 1C                      BYTE_PUSH_imm1         +28
  $9094  62                         PUSH_qimm   ; inline operand = 2
  $9095  62                         PUSH_qimm   ; inline operand = 2
  $9096  E9 05 A4 0A                CALL_abs_imm1          $A405 {native}, $0A
  $909A  8E E8 00                   PUSH_imm2              $00E8
  $909D  8E 9E AB                   PUSH_imm2              $AB9E
  $90A0  8E DA AA                   PUSH_imm2              $AADA
  $90A3  6E                         PUSH_qimm   ; inline operand = 14
  $90A4  6E                         PUSH_qimm   ; inline operand = 14
  $90A5  66                         PUSH_qimm   ; inline operand = 6
  $90A6  6B                         PUSH_qimm   ; inline operand = 11
  $90A7  69                         PUSH_qimm   ; inline operand = 9
  $90A8  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $90AC  40                         LOADL_qimm   ; inline operand = 0
  $90AD  D6 E1 90                   JUMP_abs               $90E1
 >$90B0  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $90B3  D2                         LSHIFT1
  $90B4  78                         ADD_qimm   ; inline operand = 8
  $90B5  B3                         PUSHL
  $90B6  6D                         PUSH_qimm   ; inline operand = 13
  $90B7  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $90BB  DE D2 FF                   LEAL_far               $FFD2
  $90BE  B3                         PUSHL
  $90BF  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $90C2  D2                         LSHIFT1
  $90C3  B4                         POPR
  $90C4  BB                         ADD
  $90C5  B3                         PUSHL
  $90C6  DE E1 FF                   LEAL_far               $FFE1
  $90C9  B3                         PUSHL
  $90CA  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $90CD  B4                         POPR
  $90CE  BB                         ADD
  $90CF  D3                         BYTE_DEREF
  $90D0  57                         LOADR_qimm   ; inline operand = 7
  $90D1  B5                         MULT
  $90D2  8C 42 65                   LOADR_imm2             $6542
  $90D5  BB                         ADD
  $90D6  B0                         DEREF
  $90D7  B1                         POPSTORE
  $90D8  B3                         PUSHL
  $90D9  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $90DD  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $90E0  D0                         INC
 >$90E1  A2 FF FF                   BYTE_STORE_far         $FFFF
  $90E4  A0 DE FF                   BYTE_LOADL_far         $FFDE
  $90E7  B3                         PUSHL
  $90E8  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $90EB  B4                         POPR
  $90EC  C6                         UCMPLT
  $90ED  D7 B0 90                   JUMPT_abs              $90B0
  $90F0  8A F0 00                   LOADL_imm2             $00F0
  $90F3  A9 63 70                   BYTE_STORE_abs         $7063
  $90F6  8A 42 65                   LOADL_imm2             $6542
  $90F9  85 BE                      STORE_near             $BE
  $90FB  8A BF 6B                   LOADL_imm2             $6BBF
  $90FE  85 D0                      STORE_near             $D0
  $9100  89 FF                      BYTE_LOADL_imm1        -1
  $9102  A8 64 70                   STORE_abs              $7064
  $9105  61                         PUSH_qimm   ; inline operand = 1
  $9106  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $910A  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $910D  61                         PUSH_qimm   ; inline operand = 1
  $910E  8E 79 9F                   PUSH_imm2              $9F79
  $9111  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $9115  40                         LOADL_qimm   ; inline operand = 0
  $9116  85 C0                      STORE_near             $C0
  $9118  A0 DE FF                   BYTE_LOADL_far         $FFDE
  $911B  B3                         PUSHL
  $911C  62                         PUSH_qimm   ; inline operand = 2
  $911D  68                         PUSH_qimm   ; inline operand = 8
  $911E  6C                         PUSH_qimm   ; inline operand = 12
  $911F  E9 16 A2 08                CALL_abs_imm1          $A216 {native}, $08
  $9123  A2 CB FF                   BYTE_STORE_far         $FFCB
  $9126  A0 CB FF                   BYTE_LOADL_far         $FFCB
  $9129  8C FF 00                   LOADR_imm2             $00FF
  $912C  C1                         CMPNE
  $912D  D8 49 92                   JUMPF_abs              $9249
  $9130  60                         PUSH_qimm   ; inline operand = 0
  $9131  60                         PUSH_qimm   ; inline operand = 0
  $9132  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $9136  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $9139  8E 88 9F                   PUSH_imm2              $9F88
  $913C  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $9140  60                         PUSH_qimm   ; inline operand = 0
  $9141  DE E1 FF                   LEAL_far               $FFE1
  $9144  B3                         PUSHL
  $9145  A0 CB FF                   BYTE_LOADL_far         $FFCB
  $9148  B4                         POPR
  $9149  BB                         ADD
  $914A  D3                         BYTE_DEREF
  $914B  B3                         PUSHL
  $914C  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $9150  DE E1 FF                   LEAL_far               $FFE1
  $9153  B3                         PUSHL
  $9154  A0 CB FF                   BYTE_LOADL_far         $FFCB
  $9157  B4                         POPR
  $9158  BB                         ADD
  $9159  D3                         BYTE_DEREF
  $915A  D1                         DEC
  $915B  D2                         LSHIFT1
  $915C  8C 6E 6A                   LOADR_imm2             $6A6E
  $915F  BB                         ADD
  $9160  85 BA                      STORE_near             $BA
  $9162  81 BA                      LOADL_near             $BA
  $9164  D3                         BYTE_DEREF
  $9165  8B 28                      BYTE_LOADR_imm1        +40
  $9167  C6                         UCMPLT
  $9168  D8 3C 92                   JUMPF_abs              $923C
  $916B  DE E1 FF                   LEAL_far               $FFE1
  $916E  B3                         PUSHL
  $916F  A0 CB FF                   BYTE_LOADL_far         $FFCB
  $9172  B4                         POPR
  $9173  BB                         ADD
  $9174  D3                         BYTE_DEREF
  $9175  57                         LOADR_qimm   ; inline operand = 7
  $9176  B5                         MULT
  $9177  8C 42 65                   LOADR_imm2             $6542
  $917A  BB                         ADD
  $917B  85 BC                      STORE_near             $BC
  $917D  DE E1 FF                   LEAL_far               $FFE1
  $9180  B3                         PUSHL
  $9181  A0 CB FF                   BYTE_LOADL_far         $FFCB
  $9184  B4                         POPR
  $9185  BB                         ADD
  $9186  D3                         BYTE_DEREF
  $9187  5A                         LOADR_qimm   ; inline operand = 10
  $9188  B5                         MULT
  $9189  8C BF 6B                   LOADR_imm2             $6BBF
  $918C  BB                         ADD
  $918D  85 CE                      STORE_near             $CE
  $918F  81 BC                      LOADL_near             $BC
  $9191  73                         ADD_qimm   ; inline operand = 3
  $9192  D3                         BYTE_DEREF
  $9193  B3                         PUSHL
  $9194  81 BC                      LOADL_near             $BC
  $9196  72                         ADD_qimm   ; inline operand = 2
  $9197  D3                         BYTE_DEREF
  $9198  B4                         POPR
  $9199  BB                         ADD
  $919A  85 C8                      STORE_near             $C8
  $919C  81 BE                      LOADL_near             $BE
  $919E  73                         ADD_qimm   ; inline operand = 3
  $919F  D3                         BYTE_DEREF
  $91A0  B3                         PUSHL
  $91A1  81 BE                      LOADL_near             $BE
  $91A3  72                         ADD_qimm   ; inline operand = 2
  $91A4  D3                         BYTE_DEREF
  $91A5  B4                         POPR
  $91A6  BB                         ADD
  $91A7  85 C6                      STORE_near             $C6
  $91A9  40                         LOADL_qimm   ; inline operand = 0
  $91AA  A2 FF FF                   BYTE_STORE_far         $FFFF
  $91AD  A2 CA FF                   BYTE_STORE_far         $FFCA
  $91B0  A2 CD FF                   BYTE_STORE_far         $FFCD
  $91B3  D6 DD 91                   JUMP_abs               $91DD
 >$91B6  A0 CD FF                   BYTE_LOADL_far         $FFCD
  $91B9  B3                         PUSHL
  $91BA  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $91BD  83 CE                      LOADR_near             $CE
  $91BF  BB                         ADD
  $91C0  D3                         BYTE_DEREF
  $91C1  B4                         POPR
  $91C2  C8                         UCMPGT
  $91C3  D8 D6 91                   JUMPF_abs              $91D6
  $91C6  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $91C9  83 CE                      LOADR_near             $CE
  $91CB  BB                         ADD
  $91CC  D3                         BYTE_DEREF
  $91CD  A2 CD FF                   BYTE_STORE_far         $FFCD
  $91D0  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $91D3  A2 CA FF                   BYTE_STORE_far         $FFCA
 >$91D6  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $91D9  D0                         INC
  $91DA  A2 FF FF                   BYTE_STORE_far         $FFFF
 >$91DD  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $91E0  55                         LOADR_qimm   ; inline operand = 5
  $91E1  C6                         UCMPLT
  $91E2  D7 B6 91                   JUMPT_abs              $91B6
  $91E5  A0 CA FF                   BYTE_LOADL_far         $FFCA
  $91E8  83 D0                      LOADR_near             $D0
  $91EA  BB                         ADD
  $91EB  D3                         BYTE_DEREF
  $91EC  A2 CC FF                   BYTE_STORE_far         $FFCC
  $91EF  A0 CD FF                   BYTE_LOADL_far         $FFCD
  $91F2  83 C8                      LOADR_near             $C8
  $91F4  B5                         MULT
  $91F5  85 C4                      STORE_near             $C4
  $91F7  A0 CC FF                   BYTE_LOADL_far         $FFCC
  $91FA  83 C6                      LOADR_near             $C6
  $91FC  B5                         MULT
  $91FD  B3                         PUSHL
  $91FE  A5 74 6F                   BYTE_LOADL_abs         $6F74
  $9201  B3                         PUSHL
  $9202  A0 CC FF                   BYTE_LOADL_far         $FFCC
  $9205  B4                         POPR
  $9206  B5                         MULT
  $9207  83 C6                      LOADR_near             $C6
  $9209  B5                         MULT
  $920A  5A                         LOADR_qimm   ; inline operand = 10
  $920B  B8                         UDIV
  $920C  B4                         POPR
  $920D  BB                         ADD
  $920E  85 C2                      STORE_near             $C2
  $9210  8D 14                      BYTE_PUSH_imm1         +20
  $9212  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $9216  83 C2                      LOADR_near             $C2
  $9218  BB                         ADD
  $9219  B3                         PUSHL
  $921A  81 C4                      LOADL_near             $C4
  $921C  B4                         POPR
  $921D  C8                         UCMPGT
  $921E  D8 31 92                   JUMPF_abs              $9231
  $9221  61                         PUSH_qimm   ; inline operand = 1
  $9222  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $9226  8E A8 9F                   PUSH_imm2              $9FA8
  $9229  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $922D  40                         LOADL_qimm   ; inline operand = 0
  $922E  D6 47 92                   JUMP_abs               $9247
 >$9231  61                         PUSH_qimm   ; inline operand = 1
  $9232  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $9236  8E D0 9F                   PUSH_imm2              $9FD0
  $9239  D6 42 92                   JUMP_abs               $9242
 >$923C  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $923F  8E DA 9F                   PUSH_imm2              $9FDA
 >$9242  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $9246  41                         LOADL_qimm   ; inline operand = 1
 >$9247  85 C0                      STORE_near             $C0
 >$9249  81 C0                      LOADL_near             $C0
  $924B  D8 A5 92                   JUMPF_abs              $92A5
  $924E  81 BA                      LOADL_near             $BA
  $9250  D3                         BYTE_DEREF
  $9251  8B 14                      BYTE_LOADR_imm1        +20
  $9253  C6                         UCMPLT
  $9254  D8 66 92                   JUMPF_abs              $9266
  $9257  6A                         PUSH_qimm   ; inline operand = 10
  $9258  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $925C  8F 14                      BYTE_ADD_imm1          +20
  $925E  B3                         PUSHL
  $925F  81 BA                      LOADL_near             $BA
  $9261  B4                         POPR
  $9262  B3                         PUSHL
  $9263  D3                         BYTE_DEREF
  $9264  BB                         ADD
  $9265  D4                         BYTE_POPSTORE
 >$9266  8A 9A 6A                   LOADL_imm2             $6A9A
  $9269  85 DF                      STORE_near             $DF
  $926B  40                         LOADL_qimm   ; inline operand = 0
  $926C  D6 92 92                   JUMP_abs               $9292
 >$926F  81 DF                      LOADL_near             $DF
  $9271  D3                         BYTE_DEREF
  $9272  8C FF 00                   LOADR_imm2             $00FF
  $9275  C0                         CMPEQ
  $9276  D8 89 92                   JUMPF_abs              $9289
  $9279  87 DF                      PUSH_near              $DF
  $927B  DE E1 FF                   LEAL_far               $FFE1
  $927E  B3                         PUSHL
  $927F  A0 CB FF                   BYTE_LOADL_far         $FFCB
  $9282  B4                         POPR
  $9283  BB                         ADD
  $9284  D3                         BYTE_DEREF
  $9285  D4                         BYTE_POPSTORE
  $9286  D6 9D 92                   JUMP_abs               $929D
 >$9289  81 DF                      LOADL_near             $DF
  $928B  D0                         INC
  $928C  85 DF                      STORE_near             $DF
  $928E  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $9291  D0                         INC
 >$9292  A2 FF FF                   BYTE_STORE_far         $FFFF
  $9295  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $9298  5A                         LOADR_qimm   ; inline operand = 10
  $9299  C6                         UCMPLT
  $929A  D7 6F 92                   JUMPT_abs              $926F
 >$929D  81 BA                      LOADL_near             $BA
  $929F  D0                         INC
  $92A0  B3                         PUSHL
  $92A1  8A FF 00                   LOADL_imm2             $00FF
  $92A4  D4                         BYTE_POPSTORE
 >$92A5  60                         PUSH_qimm   ; inline operand = 0
  $92A6  8D 12                      BYTE_PUSH_imm1         +18
  $92A8  8D 1C                      BYTE_PUSH_imm1         +28
  $92AA  62                         PUSH_qimm   ; inline operand = 2
  $92AB  62                         PUSH_qimm   ; inline operand = 2
  $92AC  E9 9B A4 0A                CALL_abs_imm1          $A49B {native}, $0A
  $92B0  41                         LOADL_qimm   ; inline operand = 1
  $92B1  CF                         RETURN

