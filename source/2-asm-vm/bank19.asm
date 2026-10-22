VM bytecode disassembly
  ROM:          Uncharted Waters (USA).nes
  mode:         bulk dump of bank 19
  opcode spec:  vm-opcodes-v2.toml via nobunaga_vm.OPCODE_INFO (execution-validated lengths)
  labels:       0 CPU addresses named

  bank 19: found 29 bytecode-subroutine stubs

; ============================================================
; sub $8003   (frame_off=-23, body @ $8008)   [PRG $26003]
; ============================================================
  $8008  DE F9 FF                   LEAL_far               $FFF9
  $800B  B3                         PUSHL
  $800C  60                         PUSH_qimm   ; inline operand = 0
  $800D  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $8011  85 EF                      STORE_near             $EF
  $8013  DE F9 FF                   LEAL_far               $FFF9
  $8016  85 F7                      STORE_near             $F7
  $8018  83 EF                      LOADR_near             $EF
  $801A  BB                         ADD
  $801B  85 F5                      STORE_near             $F5
  $801D  D6 7C 80                   JUMP_abs               $807C
 >$8020  81 F7                      LOADL_near             $F7
  $8022  D3                         BYTE_DEREF
  $8023  85 ED                      STORE_near             $ED
  $8025  81 ED                      LOADL_near             $ED
  $8027  8B 18                      BYTE_LOADR_imm1        +24
  $8029  B5                         MULT
  $802A  8C A4 6A                   LOADR_imm2             $6AA4
  $802D  BB                         ADD
  $802E  85 E9                      STORE_near             $E9
  $8030  81 E9                      LOADL_near             $E9
  $8032  D0                         INC
  $8033  85 F3                      STORE_near             $F3
  $8035  81 E9                      LOADL_near             $E9
  $8037  76                         ADD_qimm   ; inline operand = 6
  $8038  85 EB                      STORE_near             $EB
  $803A  81 F3                      LOADL_near             $F3
  $803C  75                         ADD_qimm   ; inline operand = 5
  $803D  85 F1                      STORE_near             $F1
  $803F  D6 6F 80                   JUMP_abs               $806F
 >$8042  81 F3                      LOADL_near             $F3
  $8044  D3                         BYTE_DEREF
  $8045  1C                         LOADR_quick   ; inline operand = 12
  $8046  C0                         CMPEQ
  $8047  D8 65 80                   JUMPF_abs              $8065
  $804A  0D                         LOADL_quick   ; inline operand = 13
  $804B  D8 65 80                   JUMPF_abs              $8065
  $804E  3D                         PUSH_quick   ; inline operand = 13
  $804F  81 EB                      LOADL_near             $EB
  $8051  B0                         DEREF
  $8052  B3                         PUSHL
  $8053  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8057  2B                         STORE_quick   ; inline operand = 11
  $8058  3B                         PUSH_quick   ; inline operand = 11
  $8059  81 EB                      LOADL_near             $EB
  $805B  B4                         POPR
  $805C  B3                         PUSHL
  $805D  B0                         DEREF
  $805E  BC                         SUB
  $805F  B1                         POPSTORE
  $8060  0B                         LOADL_quick   ; inline operand = 11
  $8061  CD                         SWAP
  $8062  0D                         LOADL_quick   ; inline operand = 13
  $8063  BC                         SUB
  $8064  2D                         STORE_quick   ; inline operand = 13
 >$8065  81 EB                      LOADL_near             $EB
  $8067  72                         ADD_qimm   ; inline operand = 2
  $8068  85 EB                      STORE_near             $EB
  $806A  81 F3                      LOADL_near             $F3
  $806C  D0                         INC
  $806D  85 F3                      STORE_near             $F3
 >$806F  81 F3                      LOADL_near             $F3
  $8071  83 F1                      LOADR_near             $F1
  $8073  C6                         UCMPLT
  $8074  D7 42 80                   JUMPT_abs              $8042
  $8077  81 F7                      LOADL_near             $F7
  $8079  D0                         INC
  $807A  85 F7                      STORE_near             $F7
 >$807C  81 F7                      LOADL_near             $F7
  $807E  83 F5                      LOADR_near             $F5
  $8080  C6                         UCMPLT
  $8081  D7 20 80                   JUMPT_abs              $8020
  $8084  CF                         RETURN

; ============================================================
; sub $8085   (frame_off=+0, body @ $808A)   [PRG $26085]
; ============================================================
  $808A  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $808D  61                         PUSH_qimm   ; inline operand = 1
  $808E  8E D6 94                   PUSH_imm2              $94D6
  $8091  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8095  40                         LOADL_qimm   ; inline operand = 0
  $8096  A9 5F 70                   BYTE_STORE_abs         $705F
  $8099  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $809C  CF                         RETURN

; ============================================================
; sub $809D   (frame_off=+0, body @ $80A2)   [PRG $2609D]
; ============================================================
  $80A2  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $80A5  60                         PUSH_qimm   ; inline operand = 0
  $80A6  8E F5 94                   PUSH_imm2              $94F5
  $80A9  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $80AD  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $80B0  CF                         RETURN

; ============================================================
; sub $80B1   (frame_off=-8, body @ $80B6)   [PRG $260B1]
; ============================================================
  $80B6  A5 5F 70                   BYTE_LOADL_abs         $705F
  $80B9  58                         LOADR_qimm   ; inline operand = 8
  $80BA  DA                         AND
  $80BB  D8 06 82                   JUMPF_abs              $8206
  $80BE  A5 5F 70                   BYTE_LOADL_abs         $705F
  $80C1  51                         LOADR_qimm   ; inline operand = 1
  $80C2  DA                         AND
  $80C3  D8 06 82                   JUMPF_abs              $8206
  $80C6  A5 67 70                   BYTE_LOADL_abs         $7067
  $80C9  B3                         PUSHL
  $80CA  A5 52 70                   BYTE_LOADL_abs         $7052
  $80CD  B4                         POPR
  $80CE  C0                         CMPEQ
  $80CF  D8 06 82                   JUMPF_abs              $8206
  $80D2  A5 53 70                   BYTE_LOADL_abs         $7053
  $80D5  51                         LOADR_qimm   ; inline operand = 1
  $80D6  C0                         CMPEQ
  $80D7  D8 06 82                   JUMPF_abs              $8206
  $80DA  A5 55 70                   BYTE_LOADL_abs         $7055
  $80DD  B3                         PUSHL
  $80DE  E9 A0 B9 02                CALL_abs_imm1          $B9A0 {native}, $02
  $80E2  D8 06 82                   JUMPF_abs              $8206
  $80E5  6D                         PUSH_qimm   ; inline operand = 13
  $80E6  E9 8C E0 02                CALL_abs_imm1          $E08C {native}, $02
  $80EA  61                         PUSH_qimm   ; inline operand = 1
  $80EB  E9 C1 E0 02                CALL_abs_imm1          $E0C1 {native}, $02
  $80EF  61                         PUSH_qimm   ; inline operand = 1
  $80F0  66                         PUSH_qimm   ; inline operand = 6
  $80F1  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $80F5  61                         PUSH_qimm   ; inline operand = 1
  $80F6  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $80FA  61                         PUSH_qimm   ; inline operand = 1
  $80FB  8E 3D 95                   PUSH_imm2              $953D
  $80FE  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8102  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8105  A5 55 70                   BYTE_LOADL_abs         $7055
  $8108  B3                         PUSHL
  $8109  E9 A0 B9 02                CALL_abs_imm1          $B9A0 {native}, $02
  $810D  A6 56 70                   LOADR_abs              $7056
  $8110  C6                         UCMPLT
  $8111  D8 44 81                   JUMPF_abs              $8144
  $8114  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8117  61                         PUSH_qimm   ; inline operand = 1
  $8118  8E 74 95                   PUSH_imm2              $9574
  $811B  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $811F  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8122  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8125  61                         PUSH_qimm   ; inline operand = 1
  $8126  8E 90 95                   PUSH_imm2              $9590
  $8129  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $812D  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8130  A5 55 70                   BYTE_LOADL_abs         $7055
  $8133  B3                         PUSHL
  $8134  E9 A0 B9 02                CALL_abs_imm1          $B9A0 {native}, $02
  $8138  B3                         PUSHL
  $8139  A5 55 70                   BYTE_LOADL_abs         $7055
  $813C  B3                         PUSHL
  $813D  E9 03 80 04                CALL_abs_imm1          $8003 {bytecode}, $04
  $8141  D6 00 82                   JUMP_abs               $8200
 >$8144  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8147  AA 56 70                   PUSH_abs               $7056
  $814A  A5 55 70                   BYTE_LOADL_abs         $7055
  $814D  B3                         PUSHL
  $814E  E9 03 80 04                CALL_abs_imm1          $8003 {bytecode}, $04
  $8152  61                         PUSH_qimm   ; inline operand = 1
  $8153  8E C3 95                   PUSH_imm2              $95C3
  $8156  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $815A  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $815D  A4 58 70                   LOADL_abs              $7058
  $8160  B7 26                      LONG                   $26
  $8162  B7 14                      LONG                   $14
  $8164  A4 6B 66                   LOADL_abs              $666B
  $8167  B7 26                      LONG                   $26
  $8169  B7 15                      LONG                   $15
  $816B  B7 03                      LONG                   $03
  $816D  B7 0E                      LONG                   $0E
  $816F  F8                         UNK
  $8170  FF                         UNK
  $8171  B7 0C                      LONG                   $0C
  $8173  F8                         UNK
  $8174  FF                         UNK
  $8175  B7 19 48 EE 00 00          LONG                   $19 $48 $EE $00 $00
  $817B  B7 0A                      LONG                   $0A
  $817D  D8 B1 81                   JUMPF_abs              $81B1
  $8180  8E 10 27                   PUSH_imm2              $2710
  $8183  B7 0C                      LONG                   $0C
  $8185  F8                         UNK
  $8186  FF                         UNK
  $8187  B7 19 A0 15 FF FF          LONG                   $19 $A0 $15 $FF $FF
  $818D  B7 03                      LONG                   $03
  $818F  B7 19 E8 03 00 00          LONG                   $19 $E8 $03 $00 $00
  $8195  B7 02                      LONG                   $02
  $8197  B7 27                      LONG                   $27
  $8199  A6 70 6F                   LOADR_abs              $6F70
  $819C  BB                         ADD
  $819D  B3                         PUSHL
  $819E  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $81A2  A8 70 6F                   STORE_abs              $6F70
  $81A5  8A 60 EA                   LOADL_imm2             $EA60
  $81A8  A8 6B 66                   STORE_abs              $666B
  $81AB  AC 9D 80                   CALL_abs               $809D {bytecode}
  $81AE  D6 C8 81                   JUMP_abs               $81C8
 >$81B1  AA 58 70                   PUSH_abs               $7058
  $81B4  8A 60 EA                   LOADL_imm2             $EA60
  $81B7  A6 6B 66                   LOADR_abs              $666B
  $81BA  BC                         SUB
  $81BB  B3                         PUSHL
  $81BC  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $81C0  CD                         SWAP
  $81C1  A4 6B 66                   LOADL_abs              $666B
  $81C4  BB                         ADD
  $81C5  A8 6B 66                   STORE_abs              $666B
 >$81C8  A4 72 6F                   LOADL_abs              $6F72
  $81CB  8C 50 C3                   LOADR_imm2             $C350
  $81CE  C6                         UCMPLT
  $81CF  D8 F2 81                   JUMPF_abs              $81F2
  $81D2  A5 74 6F                   BYTE_LOADL_abs         $6F74
  $81D5  51                         LOADR_qimm   ; inline operand = 1
  $81D6  BE                         URSHIFT
  $81D7  8B 64                      BYTE_LOADR_imm1        +100
  $81D9  B5                         MULT
  $81DA  90 96 00                   ADD_imm2               $0096
  $81DD  B3                         PUSHL
  $81DE  8A 50 C3                   LOADL_imm2             $C350
  $81E1  A6 72 6F                   LOADR_abs              $6F72
  $81E4  BC                         SUB
  $81E5  B3                         PUSHL
  $81E6  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $81EA  CD                         SWAP
  $81EB  A4 72 6F                   LOADL_abs              $6F72
  $81EE  BB                         ADD
  $81EF  A8 72 6F                   STORE_abs              $6F72
 >$81F2  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $81F5  61                         PUSH_qimm   ; inline operand = 1
  $81F6  8E ED 95                   PUSH_imm2              $95ED
  $81F9  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $81FD  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
 >$8200  40                         LOADL_qimm   ; inline operand = 0
  $8201  A9 5F 70                   BYTE_STORE_abs         $705F
  $8204  41                         LOADL_qimm   ; inline operand = 1
  $8205  CF                         RETURN
 >$8206  A5 5F 70                   BYTE_LOADL_abs         $705F
  $8209  58                         LOADR_qimm   ; inline operand = 8
  $820A  DA                         AND
  $820B  D8 C3 82                   JUMPF_abs              $82C3
  $820E  A5 5F 70                   BYTE_LOADL_abs         $705F
  $8211  51                         LOADR_qimm   ; inline operand = 1
  $8212  DA                         AND
  $8213  D8 C3 82                   JUMPF_abs              $82C3
  $8216  A5 67 70                   BYTE_LOADL_abs         $7067
  $8219  B3                         PUSHL
  $821A  A5 52 70                   BYTE_LOADL_abs         $7052
  $821D  B4                         POPR
  $821E  C0                         CMPEQ
  $821F  D8 C3 82                   JUMPF_abs              $82C3
  $8222  A5 53 70                   BYTE_LOADL_abs         $7053
  $8225  51                         LOADR_qimm   ; inline operand = 1
  $8226  C0                         CMPEQ
  $8227  D8 C3 82                   JUMPF_abs              $82C3
  $822A  6D                         PUSH_qimm   ; inline operand = 13
  $822B  E9 8C E0 02                CALL_abs_imm1          $E08C {native}, $02
  $822F  61                         PUSH_qimm   ; inline operand = 1
  $8230  E9 C1 E0 02                CALL_abs_imm1          $E0C1 {native}, $02
  $8234  61                         PUSH_qimm   ; inline operand = 1
  $8235  66                         PUSH_qimm   ; inline operand = 6
  $8236  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $823A  61                         PUSH_qimm   ; inline operand = 1
  $823B  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $823F  61                         PUSH_qimm   ; inline operand = 1
  $8240  8E 1F 96                   PUSH_imm2              $961F
  $8243  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8247  AC 9F CD                   CALL_abs               $CD9F {native}
  $824A  D8 5E 82                   JUMPF_abs              $825E
  $824D  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8250  61                         PUSH_qimm   ; inline operand = 1
  $8251  8E 51 96                   PUSH_imm2              $9651
  $8254  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8258  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $825B  D6 C1 82                   JUMP_abs               $82C1
 >$825E  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8261  61                         PUSH_qimm   ; inline operand = 1
  $8262  8E 70 96                   PUSH_imm2              $9670
  $8265  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8269  A4 6B 66                   LOADL_abs              $666B
  $826C  A6 58 70                   LOADR_abs              $7058
  $826F  C6                         UCMPLT
  $8270  D8 88 82                   JUMPF_abs              $8288
  $8273  40                         LOADL_qimm   ; inline operand = 0
  $8274  A8 6B 66                   STORE_abs              $666B
  $8277  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $827A  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $827D  61                         PUSH_qimm   ; inline operand = 1
  $827E  8E 98 96                   PUSH_imm2              $9698
  $8281  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8285  D6 93 82                   JUMP_abs               $8293
 >$8288  A4 58 70                   LOADL_abs              $7058
  $828B  CD                         SWAP
  $828C  A4 6B 66                   LOADL_abs              $666B
  $828F  BC                         SUB
  $8290  A8 6B 66                   STORE_abs              $666B
 >$8293  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8296  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8299  61                         PUSH_qimm   ; inline operand = 1
  $829A  8E C5 96                   PUSH_imm2              $96C5
  $829D  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $82A1  6A                         PUSH_qimm   ; inline operand = 10
  $82A2  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $82A6  55                         LOADR_qimm   ; inline operand = 5
  $82A7  B5                         MULT
  $82A8  8F 32                      BYTE_ADD_imm1          +50
  $82AA  B3                         PUSHL
  $82AB  AA 72 6F                   PUSH_abs               $6F72
  $82AE  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $82B2  CD                         SWAP
  $82B3  A4 72 6F                   LOADL_abs              $6F72
  $82B6  BC                         SUB
  $82B7  A8 72 6F                   STORE_abs              $6F72
  $82BA  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $82BD  40                         LOADL_qimm   ; inline operand = 0
  $82BE  A9 5F 70                   BYTE_STORE_abs         $705F
 >$82C1  41                         LOADL_qimm   ; inline operand = 1
  $82C2  CF                         RETURN
 >$82C3  A5 5F 70                   BYTE_LOADL_abs         $705F
  $82C6  58                         LOADR_qimm   ; inline operand = 8
  $82C7  DA                         AND
  $82C8  D7 87 85                   JUMPT_abs              $8587
  $82CB  A5 5F 70                   BYTE_LOADL_abs         $705F
  $82CE  51                         LOADR_qimm   ; inline operand = 1
  $82CF  DA                         AND
  $82D0  D8 87 85                   JUMPF_abs              $8587
  $82D3  A5 67 70                   BYTE_LOADL_abs         $7067
  $82D6  B3                         PUSHL
  $82D7  A5 52 70                   BYTE_LOADL_abs         $7052
  $82DA  B4                         POPR
  $82DB  C0                         CMPEQ
  $82DC  D8 87 85                   JUMPF_abs              $8587
  $82DF  A5 53 70                   BYTE_LOADL_abs         $7053
  $82E2  51                         LOADR_qimm   ; inline operand = 1
  $82E3  C0                         CMPEQ
  $82E4  D8 87 85                   JUMPF_abs              $8587
  $82E7  6D                         PUSH_qimm   ; inline operand = 13
  $82E8  E9 8C E0 02                CALL_abs_imm1          $E08C {native}, $02
  $82EC  61                         PUSH_qimm   ; inline operand = 1
  $82ED  E9 C1 E0 02                CALL_abs_imm1          $E0C1 {native}, $02
  $82F1  AC 11 BA                   CALL_abs               $BA11 {native}
  $82F4  2A                         STORE_quick   ; inline operand = 10
  $82F5  61                         PUSH_qimm   ; inline operand = 1
  $82F6  66                         PUSH_qimm   ; inline operand = 6
  $82F7  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $82FB  61                         PUSH_qimm   ; inline operand = 1
  $82FC  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $8300  61                         PUSH_qimm   ; inline operand = 1
  $8301  8E E7 96                   PUSH_imm2              $96E7
  $8304  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8308  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $830B  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $830E  60                         PUSH_qimm   ; inline operand = 0
  $830F  8E 19 97                   PUSH_imm2              $9719
  $8312  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8316  A5 55 70                   BYTE_LOADL_abs         $7055
  $8319  D2                         LSHIFT1
  $831A  8C 49 BB                   LOADR_imm2             $BB49
  $831D  BB                         ADD
  $831E  B3                         PUSHL
  $831F  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8323  B3                         PUSHL
  $8324  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8328  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $832B  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $832E  A5 74 6F                   BYTE_LOADL_abs         $6F74
  $8331  D0                         INC
  $8332  8C D0 07                   LOADR_imm2             $07D0
  $8335  B5                         MULT
  $8336  1A                         LOADR_quick   ; inline operand = 10
  $8337  B8                         UDIV
  $8338  B3                         PUSHL
  $8339  65                         PUSH_qimm   ; inline operand = 5
  $833A  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $833E  B3                         PUSHL
  $833F  60                         PUSH_qimm   ; inline operand = 0
  $8340  E9 15 D6 02                CALL_abs_imm1          $D615 {native}, $02
  $8344  57                         LOADR_qimm   ; inline operand = 7
  $8345  B5                         MULT
  $8346  8C 96 6C                   LOADR_imm2             $6C96
  $8349  BB                         ADD
  $834A  D3                         BYTE_DEREF
  $834B  5F                         LOADR_qimm   ; inline operand = 15
  $834C  DA                         AND
  $834D  B3                         PUSHL
  $834E  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8352  8F 12                      BYTE_ADD_imm1          +18
  $8354  B3                         PUSHL
  $8355  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8359  52                         LOADR_qimm   ; inline operand = 2
  $835A  B6                         SDIV
  $835B  B4                         POPR
  $835C  BB                         ADD
  $835D  B3                         PUSHL
  $835E  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8362  2B                         STORE_quick   ; inline operand = 11
  $8363  0B                         LOADL_quick   ; inline operand = 11
  $8364  A8 56 70                   STORE_abs              $7056
  $8367  0B                         LOADL_quick   ; inline operand = 11
  $8368  1A                         LOADR_quick   ; inline operand = 10
  $8369  B5                         MULT
  $836A  A8 58 70                   STORE_abs              $7058
  $836D  A5 55 70                   BYTE_LOADL_abs         $7055
  $8370  B3                         PUSHL
  $8371  E9 A0 B9 02                CALL_abs_imm1          $B9A0 {native}, $02
  $8375  D8 CD 84                   JUMPF_abs              $84CD
  $8378  A5 55 70                   BYTE_LOADL_abs         $7055
  $837B  B3                         PUSHL
  $837C  E9 A0 B9 02                CALL_abs_imm1          $B9A0 {native}, $02
  $8380  B3                         PUSHL
  $8381  8E 45 97                   PUSH_imm2              $9745
  $8384  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8388  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $838B  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $838E  3B                         PUSH_quick   ; inline operand = 11
  $838F  8E 66 97                   PUSH_imm2              $9766
  $8392  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8396  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8399  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $839C  61                         PUSH_qimm   ; inline operand = 1
  $839D  8E 93 97                   PUSH_imm2              $9793
  $83A0  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $83A4  0A                         LOADL_quick   ; inline operand = 10
  $83A5  B7 26                      LONG                   $26
  $83A7  B7 14                      LONG                   $14
  $83A9  A5 55 70                   BYTE_LOADL_abs         $7055
  $83AC  B3                         PUSHL
  $83AD  E9 A0 B9 02                CALL_abs_imm1          $B9A0 {native}, $02
  $83B1  B7 26                      LONG                   $26
  $83B3  B7 15                      LONG                   $15
  $83B5  B7 01                      LONG                   $01
  $83B7  B7 0E                      LONG                   $0E
  $83B9  F8                         UNK
  $83BA  FF                         UNK
  $83BB  B7 0C                      LONG                   $0C
  $83BD  F8                         UNK
  $83BE  FF                         UNK
  $83BF  B7 19 30 75 00 00          LONG                   $19 $30 $75 $00 $00
  $83C5  B7 0A                      LONG                   $0A
  $83C7  D8 E2 83                   JUMPF_abs              $83E2
  $83CA  B7 0C                      LONG                   $0C
  $83CC  F8                         UNK
  $83CD  FF                         UNK
  $83CE  B7 19 E8 03 00 00          LONG                   $19 $E8 $03 $00 $00
  $83D4  B7 02                      LONG                   $02
  $83D6  B7 14                      LONG                   $14
  $83D8  8E AE 97                   PUSH_imm2              $97AE
  $83DB  E9 99 C7 06                CALL_abs_imm1          $C799 {native}, $06
  $83DF  D6 F4 83                   JUMP_abs               $83F4
 >$83E2  A5 55 70                   BYTE_LOADL_abs         $7055
  $83E5  B3                         PUSHL
  $83E6  E9 A0 B9 02                CALL_abs_imm1          $B9A0 {native}, $02
  $83EA  1A                         LOADR_quick   ; inline operand = 10
  $83EB  B5                         MULT
  $83EC  B3                         PUSHL
  $83ED  8E B4 97                   PUSH_imm2              $97B4
  $83F0  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
 >$83F4  61                         PUSH_qimm   ; inline operand = 1
  $83F5  8E B7 97                   PUSH_imm2              $97B7
  $83F8  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $83FC  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $83FF  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8402  A4 58 70                   LOADL_abs              $7058
  $8405  D2                         LSHIFT1
  $8406  B3                         PUSHL
  $8407  3B                         PUSH_quick   ; inline operand = 11
  $8408  8E D6 97                   PUSH_imm2              $97D6
  $840B  E9 99 C7 06                CALL_abs_imm1          $C799 {native}, $06
  $840F  AC 9F CD                   CALL_abs               $CD9F {native}
  $8412  D8 82 85                   JUMPF_abs              $8582
  $8415  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8418  AA 58 70                   PUSH_abs               $7058
  $841B  8E 00 98                   PUSH_imm2              $9800
  $841E  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8422  A4 58 70                   LOADL_abs              $7058
  $8425  B7 26                      LONG                   $26
  $8427  B7 14                      LONG                   $14
  $8429  A4 6B 66                   LOADL_abs              $666B
  $842C  B7 26                      LONG                   $26
  $842E  B7 15                      LONG                   $15
  $8430  B7 03                      LONG                   $03
  $8432  B7 1A                      LONG                   $1A
  $8434  B7 0C                      LONG                   $0C
  $8436  F8                         UNK
  $8437  FF                         UNK
  $8438  B7 03                      LONG                   $03
  $843A  B7 0E                      LONG                   $0E
  $843C  F8                         UNK
  $843D  FF                         UNK
  $843E  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8441  B7 0C                      LONG                   $0C
  $8443  F8                         UNK
  $8444  FF                         UNK
  $8445  B7 19 48 EE 00 00          LONG                   $19 $48 $EE $00 $00
  $844B  B7 0A                      LONG                   $0A
  $844D  D8 82 84                   JUMPF_abs              $8482
  $8450  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8453  61                         PUSH_qimm   ; inline operand = 1
  $8454  8E 21 98                   PUSH_imm2              $9821
  $8457  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $845B  8E 10 27                   PUSH_imm2              $2710
  $845E  B7 0C                      LONG                   $0C
  $8460  F8                         UNK
  $8461  FF                         UNK
  $8462  B7 19 A0 15 FF FF          LONG                   $19 $A0 $15 $FF $FF
  $8468  B7 03                      LONG                   $03
  $846A  B7 27                      LONG                   $27
  $846C  8C E8 03                   LOADR_imm2             $03E8
  $846F  B8                         UDIV
  $8470  A6 70 6F                   LOADR_abs              $6F70
  $8473  BB                         ADD
  $8474  B3                         PUSHL
  $8475  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8479  A8 70 6F                   STORE_abs              $6F70
  $847C  8A 60 EA                   LOADL_imm2             $EA60
  $847F  D6 AD 84                   JUMP_abs               $84AD
 >$8482  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8485  61                         PUSH_qimm   ; inline operand = 1
  $8486  8E 57 98                   PUSH_imm2              $9857
  $8489  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $848D  A5 55 70                   BYTE_LOADL_abs         $7055
  $8490  B3                         PUSHL
  $8491  E9 A0 B9 02                CALL_abs_imm1          $B9A0 {native}, $02
  $8495  1A                         LOADR_quick   ; inline operand = 10
  $8496  B5                         MULT
  $8497  A6 58 70                   LOADR_abs              $7058
  $849A  BB                         ADD
  $849B  B3                         PUSHL
  $849C  8A 60 EA                   LOADL_imm2             $EA60
  $849F  A6 6B 66                   LOADR_abs              $666B
  $84A2  BC                         SUB
  $84A3  B3                         PUSHL
  $84A4  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $84A8  CD                         SWAP
  $84A9  A4 6B 66                   LOADL_abs              $666B
  $84AC  BB                         ADD
 >$84AD  A8 6B 66                   STORE_abs              $666B
  $84B0  A5 55 70                   BYTE_LOADL_abs         $7055
  $84B3  B3                         PUSHL
  $84B4  E9 A0 B9 02                CALL_abs_imm1          $B9A0 {native}, $02
  $84B8  B3                         PUSHL
  $84B9  A5 55 70                   BYTE_LOADL_abs         $7055
  $84BC  B3                         PUSHL
  $84BD  E9 03 80 04                CALL_abs_imm1          $8003 {bytecode}, $04
  $84C1  48                         LOADL_qimm   ; inline operand = 8
  $84C2  CD                         SWAP
  $84C3  A5 5F 70                   BYTE_LOADL_abs         $705F
  $84C6  DB                         OR
  $84C7  A9 5F 70                   BYTE_STORE_abs         $705F
  $84CA  D6 7C 85                   JUMP_abs               $857C
 >$84CD  3B                         PUSH_quick   ; inline operand = 11
  $84CE  8E 80 98                   PUSH_imm2              $9880
  $84D1  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $84D5  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $84D8  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $84DB  A4 58 70                   LOADL_abs              $7058
  $84DE  D2                         LSHIFT1
  $84DF  B3                         PUSHL
  $84E0  8E A4 98                   PUSH_imm2              $98A4
  $84E3  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $84E7  AC 9F CD                   CALL_abs               $CD9F {native}
  $84EA  D8 82 85                   JUMPF_abs              $8582
  $84ED  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $84F0  AA 58 70                   PUSH_abs               $7058
  $84F3  8E BE 98                   PUSH_imm2              $98BE
  $84F6  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $84FA  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $84FD  A4 58 70                   LOADL_abs              $7058
  $8500  B7 26                      LONG                   $26
  $8502  B7 14                      LONG                   $14
  $8504  A4 6B 66                   LOADL_abs              $666B
  $8507  B7 26                      LONG                   $26
  $8509  B7 15                      LONG                   $15
  $850B  B7 03                      LONG                   $03
  $850D  B7 0E                      LONG                   $0E
  $850F  F8                         UNK
  $8510  FF                         UNK
  $8511  B7 0C                      LONG                   $0C
  $8513  F8                         UNK
  $8514  FF                         UNK
  $8515  B7 19 48 EE 00 00          LONG                   $19 $48 $EE $00 $00
  $851B  B7 0A                      LONG                   $0A
  $851D  D8 51 85                   JUMPF_abs              $8551
  $8520  8E 10 27                   PUSH_imm2              $2710
  $8523  B7 0C                      LONG                   $0C
  $8525  F8                         UNK
  $8526  FF                         UNK
  $8527  B7 19 A0 15 FF FF          LONG                   $19 $A0 $15 $FF $FF
  $852D  B7 03                      LONG                   $03
  $852F  B7 19 E8 03 00 00          LONG                   $19 $E8 $03 $00 $00
  $8535  B7 02                      LONG                   $02
  $8537  B7 27                      LONG                   $27
  $8539  A6 70 6F                   LOADR_abs              $6F70
  $853C  BB                         ADD
  $853D  B3                         PUSHL
  $853E  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8542  A8 70 6F                   STORE_abs              $6F70
  $8545  8A 60 EA                   LOADL_imm2             $EA60
  $8548  A8 6B 66                   STORE_abs              $666B
  $854B  AC 9D 80                   CALL_abs               $809D {bytecode}
  $854E  D6 68 85                   JUMP_abs               $8568
 >$8551  AA 58 70                   PUSH_abs               $7058
  $8554  8A 60 EA                   LOADL_imm2             $EA60
  $8557  A6 6B 66                   LOADR_abs              $666B
  $855A  BC                         SUB
  $855B  B3                         PUSHL
  $855C  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8560  CD                         SWAP
  $8561  A4 6B 66                   LOADL_abs              $666B
  $8564  BB                         ADD
  $8565  A8 6B 66                   STORE_abs              $666B
 >$8568  48                         LOADL_qimm   ; inline operand = 8
  $8569  CD                         SWAP
  $856A  A5 5F 70                   BYTE_LOADL_abs         $705F
  $856D  DB                         OR
  $856E  A9 5F 70                   BYTE_STORE_abs         $705F
  $8571  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8574  61                         PUSH_qimm   ; inline operand = 1
  $8575  8E E7 98                   PUSH_imm2              $98E7
  $8578  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
 >$857C  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $857F  D6 85 85                   JUMP_abs               $8585
 >$8582  AC 85 80                   CALL_abs               $8085 {bytecode}
 >$8585  41                         LOADL_qimm   ; inline operand = 1
  $8586  CF                         RETURN
 >$8587  40                         LOADL_qimm   ; inline operand = 0
  $8588  CF                         RETURN

; ============================================================
; sub $8589   (frame_off=+0, body @ $858E)   [PRG $26589]
; ============================================================
  $858E  67                         PUSH_qimm   ; inline operand = 7
  $858F  69                         PUSH_qimm   ; inline operand = 9
  $8590  8E 6F F3                   PUSH_imm2              $F36F
  $8593  66                         PUSH_qimm   ; inline operand = 6
  $8594  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8598  CF                         RETURN

; ============================================================
; sub $8599   (frame_off=+0, body @ $859E)   [PRG $26599]
; ============================================================
  $859E  60                         PUSH_qimm   ; inline operand = 0
  $859F  60                         PUSH_qimm   ; inline operand = 0
  $85A0  8D 16                      BYTE_PUSH_imm1         +22
  $85A2  8D 1E                      BYTE_PUSH_imm1         +30
  $85A4  66                         PUSH_qimm   ; inline operand = 6
  $85A5  61                         PUSH_qimm   ; inline operand = 1
  $85A6  68                         PUSH_qimm   ; inline operand = 8
  $85A7  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $85AB  CF                         RETURN

; ============================================================
; sub $85AC   (frame_off=-6, body @ $85B1)   [PRG $265AC]
; ============================================================
  $85B1  8A F0 00                   LOADL_imm2             $00F0
  $85B4  A9 63 70                   BYTE_STORE_abs         $7063
  $85B7  A5 67 70                   BYTE_LOADL_abs         $7067
  $85BA  5E                         LOADR_qimm   ; inline operand = 14
  $85BB  B5                         MULT
  $85BC  8C BA 67                   LOADR_imm2             $67BA
  $85BF  BB                         ADD
  $85C0  2A                         STORE_quick   ; inline operand = 10
  $85C1  A5 67 70                   BYTE_LOADL_abs         $7067
  $85C4  5E                         LOADR_qimm   ; inline operand = 14
  $85C5  B5                         MULT
  $85C6  8C B2 67                   LOADR_imm2             $67B2
  $85C9  BB                         ADD
  $85CA  29                         STORE_quick   ; inline operand = 9
  $85CB  89 FF                      BYTE_LOADL_imm1        -1
  $85CD  A8 64 70                   STORE_abs              $7064
  $85D0  60                         PUSH_qimm   ; inline operand = 0
  $85D1  8D 12                      BYTE_PUSH_imm1         +18
  $85D3  8D 1C                      BYTE_PUSH_imm1         +28
  $85D5  62                         PUSH_qimm   ; inline operand = 2
  $85D6  62                         PUSH_qimm   ; inline operand = 2
  $85D7  E9 05 A4 0A                CALL_abs_imm1          $A405 {native}, $0A
  $85DB  AC CE B7                   CALL_abs               $B7CE {native}
  $85DE  8E E7 00                   PUSH_imm2              $00E7
  $85E1  8E F8 A2                   PUSH_imm2              $A2F8
  $85E4  8E 54 A1                   PUSH_imm2              $A154
  $85E7  6E                         PUSH_qimm   ; inline operand = 14
  $85E8  8D 1E                      BYTE_PUSH_imm1         +30
  $85EA  66                         PUSH_qimm   ; inline operand = 6
  $85EB  61                         PUSH_qimm   ; inline operand = 1
  $85EC  69                         PUSH_qimm   ; inline operand = 9
  $85ED  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $85F1  60                         PUSH_qimm   ; inline operand = 0
  $85F2  8E F9 00                   PUSH_imm2              $00F9
  $85F5  61                         PUSH_qimm   ; inline operand = 1
  $85F6  8D 1C                      BYTE_PUSH_imm1         +28
  $85F8  6D                         PUSH_qimm   ; inline operand = 13
  $85F9  62                         PUSH_qimm   ; inline operand = 2
  $85FA  68                         PUSH_qimm   ; inline operand = 8
  $85FB  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $85FF  67                         PUSH_qimm   ; inline operand = 7
  $8600  62                         PUSH_qimm   ; inline operand = 2
  $8601  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8605  09                         LOADL_quick   ; inline operand = 9
  $8606  B0                         DEREF
  $8607  B3                         PUSHL
  $8608  8E 5C 99                   PUSH_imm2              $995C
  $860B  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $860F  68                         PUSH_qimm   ; inline operand = 8
  $8610  62                         PUSH_qimm   ; inline operand = 2
  $8611  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8615  09                         LOADL_quick   ; inline operand = 9
  $8616  72                         ADD_qimm   ; inline operand = 2
  $8617  B0                         DEREF
  $8618  B3                         PUSHL
  $8619  8E 6F 99                   PUSH_imm2              $996F
  $861C  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $8620  6A                         PUSH_qimm   ; inline operand = 10
  $8621  62                         PUSH_qimm   ; inline operand = 2
  $8622  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8626  09                         LOADL_quick   ; inline operand = 9
  $8627  74                         ADD_qimm   ; inline operand = 4
  $8628  B0                         DEREF
  $8629  B3                         PUSHL
  $862A  8E 87 99                   PUSH_imm2              $9987
  $862D  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $8631  6B                         PUSH_qimm   ; inline operand = 11
  $8632  62                         PUSH_qimm   ; inline operand = 2
  $8633  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8637  09                         LOADL_quick   ; inline operand = 9
  $8638  76                         ADD_qimm   ; inline operand = 6
  $8639  B0                         DEREF
  $863A  B3                         PUSHL
  $863B  8E 9C 99                   PUSH_imm2              $999C
  $863E  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $8642  6E                         PUSH_qimm   ; inline operand = 14
  $8643  62                         PUSH_qimm   ; inline operand = 2
  $8644  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8648  8E B6 99                   PUSH_imm2              $99B6
  $864B  E9 19 C7 02                CALL_abs_imm1          $C719 {native}, $02
  $864F  40                         LOADL_qimm   ; inline operand = 0
  $8650  D6 AA 86                   JUMP_abs               $86AA
 >$8653  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8656  7F                         ADD_qimm   ; inline operand = 15
  $8657  B3                         PUSHL
  $8658  62                         PUSH_qimm   ; inline operand = 2
  $8659  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $865D  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8660  51                         LOADR_qimm   ; inline operand = 1
  $8661  C0                         CMPEQ
  $8662  D8 6C 86                   JUMPF_abs              $866C
  $8665  60                         PUSH_qimm   ; inline operand = 0
  $8666  8E BF 99                   PUSH_imm2              $99BF
  $8669  D6 78 86                   JUMP_abs               $8678
 >$866C  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $866F  52                         LOADR_qimm   ; inline operand = 2
  $8670  C0                         CMPEQ
  $8671  D8 7C 86                   JUMPF_abs              $867C
  $8674  60                         PUSH_qimm   ; inline operand = 0
  $8675  8E C3 99                   PUSH_imm2              $99C3
 >$8678  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
 >$867C  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $867F  D2                         LSHIFT1
  $8680  8C 24 BB                   LOADR_imm2             $BB24
  $8683  BB                         ADD
  $8684  B3                         PUSHL
  $8685  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8689  B3                         PUSHL
  $868A  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $868E  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8691  7F                         ADD_qimm   ; inline operand = 15
  $8692  B3                         PUSHL
  $8693  6B                         PUSH_qimm   ; inline operand = 11
  $8694  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8698  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $869B  1A                         LOADR_quick   ; inline operand = 10
  $869C  BB                         ADD
  $869D  D3                         BYTE_DEREF
  $869E  B3                         PUSHL
  $869F  8E C6 99                   PUSH_imm2              $99C6
  $86A2  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $86A6  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $86A9  D0                         INC
 >$86AA  A2 FF FF                   BYTE_STORE_far         $FFFF
  $86AD  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $86B0  53                         LOADR_qimm   ; inline operand = 3
  $86B1  C6                         UCMPLT
  $86B2  D7 53 86                   JUMPT_abs              $8653
  $86B5  A5 67 70                   BYTE_LOADL_abs         $7067
  $86B8  8C 76 6F                   LOADR_imm2             $6F76
  $86BB  BB                         ADD
  $86BC  D3                         BYTE_DEREF
  $86BD  53                         LOADR_qimm   ; inline operand = 3
  $86BE  DA                         AND
  $86BF  A2 FE FF                   BYTE_STORE_far         $FFFE
  $86C2  8D 11                      BYTE_PUSH_imm1         +17
  $86C4  8D 13                      BYTE_PUSH_imm1         +19
  $86C6  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $86CA  09                         LOADL_quick   ; inline operand = 9
  $86CB  7B                         ADD_qimm   ; inline operand = 11
  $86CC  D3                         BYTE_DEREF
  $86CD  8F 32                      BYTE_ADD_imm1          +50
  $86CF  B3                         PUSHL
  $86D0  8E CA 99                   PUSH_imm2              $99CA
  $86D3  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $86D7  6E                         PUSH_qimm   ; inline operand = 14
  $86D8  89 13                      BYTE_LOADL_imm1        +19
  $86DA  A8 8A 72                   STORE_abs              $728A
  $86DD  B3                         PUSHL
  $86DE  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $86E2  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $86E5  D2                         LSHIFT1
  $86E6  8C 10 99                   LOADR_imm2             $9910
  $86E9  BB                         ADD
  $86EA  B0                         DEREF
  $86EB  B3                         PUSHL
  $86EC  8E D7 99                   PUSH_imm2              $99D7
  $86EF  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $86F3  AC 7B C4                   CALL_abs               $C47B {native}
  $86F6  AC CE B7                   CALL_abs               $B7CE {native}
  $86F9  60                         PUSH_qimm   ; inline operand = 0
  $86FA  8D 12                      BYTE_PUSH_imm1         +18
  $86FC  8D 1C                      BYTE_PUSH_imm1         +28
  $86FE  62                         PUSH_qimm   ; inline operand = 2
  $86FF  62                         PUSH_qimm   ; inline operand = 2
  $8700  E9 9B A4 0A                CALL_abs_imm1          $A49B {native}, $0A
  $8704  40                         LOADL_qimm   ; inline operand = 0
  $8705  CF                         RETURN

; ============================================================
; sub $8706   (frame_off=-6, body @ $870B)   [PRG $26706]
; ============================================================
  $870B  0E                         LOADL_quick   ; inline operand = 14
  $870C  52                         LOADR_qimm   ; inline operand = 2
  $870D  B9                         SMOD
  $870E  B3                         PUSHL
  $870F  0E                         LOADL_quick   ; inline operand = 14
  $8710  52                         LOADR_qimm   ; inline operand = 2
  $8711  B6                         SDIV
  $8712  B4                         POPR
  $8713  BB                         ADD
  $8714  2B                         STORE_quick   ; inline operand = 11
  $8715  60                         PUSH_qimm   ; inline operand = 0
  $8716  60                         PUSH_qimm   ; inline operand = 0
  $8717  0B                         LOADL_quick   ; inline operand = 11
  $8718  D2                         LSHIFT1
  $8719  72                         ADD_qimm   ; inline operand = 2
  $871A  B3                         PUSHL
  $871B  8D 1A                      BYTE_PUSH_imm1         +26
  $871D  3D                         PUSH_quick   ; inline operand = 13
  $871E  3C                         PUSH_quick   ; inline operand = 12
  $871F  E9 92 A6 0C                CALL_abs_imm1          $A692 {native}, $0C
  $8723  40                         LOADL_qimm   ; inline operand = 0
  $8724  D6 40 87                   JUMP_abs               $8740
 >$8727  0A                         LOADL_quick   ; inline operand = 10
  $8728  D2                         LSHIFT1
  $8729  1D                         LOADR_quick   ; inline operand = 13
  $872A  BB                         ADD
  $872B  72                         ADD_qimm   ; inline operand = 2
  $872C  B3                         PUSHL
  $872D  0C                         LOADL_quick   ; inline operand = 12
  $872E  72                         ADD_qimm   ; inline operand = 2
  $872F  B3                         PUSHL
  $8730  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8734  0A                         LOADL_quick   ; inline operand = 10
  $8735  D2                         LSHIFT1
  $8736  1F                         LOADR_quick   ; inline operand = 15
  $8737  BB                         ADD
  $8738  B0                         DEREF
  $8739  B3                         PUSHL
  $873A  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $873E  0A                         LOADL_quick   ; inline operand = 10
  $873F  D0                         INC
 >$8740  2A                         STORE_quick   ; inline operand = 10
  $8741  0A                         LOADL_quick   ; inline operand = 10
  $8742  1B                         LOADR_quick   ; inline operand = 11
  $8743  C6                         UCMPLT
  $8744  D7 27 87                   JUMPT_abs              $8727
  $8747  D6 66 87                   JUMP_abs               $8766
 >$874A  0A                         LOADL_quick   ; inline operand = 10
  $874B  1B                         LOADR_quick   ; inline operand = 11
  $874C  BC                         SUB
  $874D  D2                         LSHIFT1
  $874E  1D                         LOADR_quick   ; inline operand = 13
  $874F  BB                         ADD
  $8750  72                         ADD_qimm   ; inline operand = 2
  $8751  B3                         PUSHL
  $8752  0C                         LOADL_quick   ; inline operand = 12
  $8753  7E                         ADD_qimm   ; inline operand = 14
  $8754  B3                         PUSHL
  $8755  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8759  0A                         LOADL_quick   ; inline operand = 10
  $875A  D2                         LSHIFT1
  $875B  1F                         LOADR_quick   ; inline operand = 15
  $875C  BB                         ADD
  $875D  B0                         DEREF
  $875E  B3                         PUSHL
  $875F  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8763  0A                         LOADL_quick   ; inline operand = 10
  $8764  D0                         INC
  $8765  2A                         STORE_quick   ; inline operand = 10
 >$8766  0A                         LOADL_quick   ; inline operand = 10
  $8767  1E                         LOADR_quick   ; inline operand = 14
  $8768  C6                         UCMPLT
  $8769  D7 4A 87                   JUMPT_abs              $874A
  $876C  61                         PUSH_qimm   ; inline operand = 1
  $876D  3B                         PUSH_quick   ; inline operand = 11
  $876E  62                         PUSH_qimm   ; inline operand = 2
  $876F  6C                         PUSH_qimm   ; inline operand = 12
  $8770  0D                         LOADL_quick   ; inline operand = 13
  $8771  72                         ADD_qimm   ; inline operand = 2
  $8772  B3                         PUSHL
  $8773  0C                         LOADL_quick   ; inline operand = 12
  $8774  D0                         INC
  $8775  B3                         PUSHL
  $8776  3E                         PUSH_quick   ; inline operand = 14
  $8777  8E DA 99                   PUSH_imm2              $99DA
  $877A  E9 24 C8 10                CALL_abs_imm1          $C824 {native}, $10
  $877E  29                         STORE_quick   ; inline operand = 9
  $877F  09                         LOADL_quick   ; inline operand = 9
  $8780  8B FF                      BYTE_LOADR_imm1        -1
  $8782  C0                         CMPEQ
  $8783  D8 8C 87                   JUMPF_abs              $878C
  $8786  8A FF 00                   LOADL_imm2             $00FF
  $8789  D6 8E 87                   JUMP_abs               $878E
 >$878C  09                         LOADL_quick   ; inline operand = 9
  $878D  D1                         DEC
 >$878E  CF                         RETURN

; ============================================================
; sub $878F   (frame_off=-26, body @ $8794)   [PRG $2678F]
; ============================================================
  $8794  40                         LOADL_qimm   ; inline operand = 0
  $8795  20                         STORE_quick   ; inline operand = 0
  $8796  8A 9A 6A                   LOADL_imm2             $6A9A
  $8799  D6 BD 87                   JUMP_abs               $87BD
 >$879C  0B                         LOADL_quick   ; inline operand = 11
  $879D  D3                         BYTE_DEREF
  $879E  8C FF 00                   LOADR_imm2             $00FF
  $87A1  C1                         CMPNE
  $87A2  D8 C4 87                   JUMPF_abs              $87C4
  $87A5  DE EA FF                   LEAL_far               $FFEA
  $87A8  B3                         PUSHL
  $87A9  00                         LOADL_quick   ; inline operand = 0
  $87AA  D2                         LSHIFT1
  $87AB  B4                         POPR
  $87AC  BB                         ADD
  $87AD  B3                         PUSHL
  $87AE  0B                         LOADL_quick   ; inline operand = 11
  $87AF  D3                         BYTE_DEREF
  $87B0  57                         LOADR_qimm   ; inline operand = 7
  $87B1  B5                         MULT
  $87B2  8C 42 65                   LOADR_imm2             $6542
  $87B5  BB                         ADD
  $87B6  B0                         DEREF
  $87B7  B1                         POPSTORE
  $87B8  00                         LOADL_quick   ; inline operand = 0
  $87B9  D0                         INC
  $87BA  20                         STORE_quick   ; inline operand = 0
  $87BB  0B                         LOADL_quick   ; inline operand = 11
  $87BC  D0                         INC
 >$87BD  2B                         STORE_quick   ; inline operand = 11
  $87BE  00                         LOADL_quick   ; inline operand = 0
  $87BF  5A                         LOADR_qimm   ; inline operand = 10
  $87C0  C6                         UCMPLT
  $87C1  D7 9C 87                   JUMPT_abs              $879C
 >$87C4  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $87C7  00                         LOADL_quick   ; inline operand = 0
  $87C8  D7 D4 87                   JUMPT_abs              $87D4
  $87CB  8E DB 99                   PUSH_imm2              $99DB
  $87CE  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $87D2  40                         LOADL_qimm   ; inline operand = 0
  $87D3  CF                         RETURN
 >$87D4  60                         PUSH_qimm   ; inline operand = 0
  $87D5  8D 12                      BYTE_PUSH_imm1         +18
  $87D7  8D 1C                      BYTE_PUSH_imm1         +28
  $87D9  62                         PUSH_qimm   ; inline operand = 2
  $87DA  62                         PUSH_qimm   ; inline operand = 2
  $87DB  E9 05 A4 0A                CALL_abs_imm1          $A405 {native}, $0A
  $87DF  61                         PUSH_qimm   ; inline operand = 1
  $87E0  8E F9 99                   PUSH_imm2              $99F9
  $87E3  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $87E7  DE EA FF                   LEAL_far               $FFEA
  $87EA  B3                         PUSHL
  $87EB  30                         PUSH_quick   ; inline operand = 0
  $87EC  66                         PUSH_qimm   ; inline operand = 6
  $87ED  62                         PUSH_qimm   ; inline operand = 2
  $87EE  E9 06 87 08                CALL_abs_imm1          $8706 {bytecode}, $08
  $87F2  85 E6                      STORE_near             $E6
  $87F4  81 E6                      LOADL_near             $E6
  $87F6  8C FF 00                   LOADR_imm2             $00FF
  $87F9  C0                         CMPEQ
  $87FA  D8 00 88                   JUMPF_abs              $8800
  $87FD  81 E6                      LOADL_near             $E6
  $87FF  CF                         RETURN
 >$8800  81 E6                      LOADL_near             $E6
  $8802  8C 9A 6A                   LOADR_imm2             $6A9A
  $8805  BB                         ADD
  $8806  D3                         BYTE_DEREF
  $8807  CF                         RETURN

; ============================================================
; sub $8808   (frame_off=-4, body @ $880D)   [PRG $26808]
; ============================================================
  $880D  8A F0 00                   LOADL_imm2             $00F0
  $8810  A9 63 70                   BYTE_STORE_abs         $7063
 >$8813  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8816  61                         PUSH_qimm   ; inline operand = 1
  $8817  8E 18 9A                   PUSH_imm2              $9A18
  $881A  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $881E  61                         PUSH_qimm   ; inline operand = 1
  $881F  62                         PUSH_qimm   ; inline operand = 2
  $8820  8E 05 9A                   PUSH_imm2              $9A05
  $8823  60                         PUSH_qimm   ; inline operand = 0
  $8824  6A                         PUSH_qimm   ; inline operand = 10
  $8825  8D 17                      BYTE_PUSH_imm1         +23
  $8827  68                         PUSH_qimm   ; inline operand = 8
  $8828  E9 56 A1 0E                CALL_abs_imm1          $A156 {native}, $0E
  $882C  2B                         STORE_quick   ; inline operand = 11
  $882D  0B                         LOADL_quick   ; inline operand = 11
  $882E  8C FF 00                   LOADR_imm2             $00FF
  $8831  C1                         CMPNE
  $8832  D8 DB 88                   JUMPF_abs              $88DB
  $8835  0B                         LOADL_quick   ; inline operand = 11
  $8836  51                         LOADR_qimm   ; inline operand = 1
  $8837  C0                         CMPEQ
  $8838  D8 93 88                   JUMPF_abs              $8893
 >$883B  AC 8F 87                   CALL_abs               $878F {bytecode}
  $883E  2A                         STORE_quick   ; inline operand = 10
  $883F  0A                         LOADL_quick   ; inline operand = 10
  $8840  D8 DB 88                   JUMPF_abs              $88DB
  $8843  0A                         LOADL_quick   ; inline operand = 10
  $8844  8C FF 00                   LOADR_imm2             $00FF
  $8847  C1                         CMPNE
  $8848  D8 7D 88                   JUMPF_abs              $887D
  $884B  AC CE B7                   CALL_abs               $B7CE {native}
  $884E  60                         PUSH_qimm   ; inline operand = 0
  $884F  60                         PUSH_qimm   ; inline operand = 0
  $8850  68                         PUSH_qimm   ; inline operand = 8
  $8851  8D 1E                      BYTE_PUSH_imm1         +30
  $8853  8D 14                      BYTE_PUSH_imm1         +20
  $8855  61                         PUSH_qimm   ; inline operand = 1
  $8856  68                         PUSH_qimm   ; inline operand = 8
  $8857  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $885B  AC 89 85                   CALL_abs               $8589 {bytecode}
  $885E  3A                         PUSH_quick   ; inline operand = 10
  $885F  66                         PUSH_qimm   ; inline operand = 6
  $8860  61                         PUSH_qimm   ; inline operand = 1
  $8861  8E 4A 84                   PUSH_imm2              $844A
  $8864  8E DE 00                   PUSH_imm2              $00DE
  $8867  61                         PUSH_qimm   ; inline operand = 1
  $8868  E9 3A DE 0C                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $0C
  $886C  AC 99 85                   CALL_abs               $8599 {bytecode}
  $886F  AC 89 A5                   CALL_abs               $A589 {bytecode}
  $8872  8E 03 80                   PUSH_imm2              $8003
  $8875  8E DE 00                   PUSH_imm2              $00DE
  $8878  61                         PUSH_qimm   ; inline operand = 1
  $8879  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
 >$887D  60                         PUSH_qimm   ; inline operand = 0
  $887E  8D 12                      BYTE_PUSH_imm1         +18
  $8880  8D 1C                      BYTE_PUSH_imm1         +28
  $8882  62                         PUSH_qimm   ; inline operand = 2
  $8883  62                         PUSH_qimm   ; inline operand = 2
  $8884  E9 9B A4 0A                CALL_abs_imm1          $A49B {native}, $0A
  $8888  0A                         LOADL_quick   ; inline operand = 10
  $8889  8C FF 00                   LOADR_imm2             $00FF
  $888C  C1                         CMPNE
  $888D  D7 3B 88                   JUMPT_abs              $883B
  $8890  D6 DB 88                   JUMP_abs               $88DB
 >$8893  60                         PUSH_qimm   ; inline operand = 0
  $8894  8D 12                      BYTE_PUSH_imm1         +18
  $8896  8D 1C                      BYTE_PUSH_imm1         +28
  $8898  62                         PUSH_qimm   ; inline operand = 2
  $8899  62                         PUSH_qimm   ; inline operand = 2
  $889A  E9 05 A4 0A                CALL_abs_imm1          $A405 {native}, $0A
  $889E  AC CE B7                   CALL_abs               $B7CE {native}
  $88A1  60                         PUSH_qimm   ; inline operand = 0
  $88A2  60                         PUSH_qimm   ; inline operand = 0
  $88A3  68                         PUSH_qimm   ; inline operand = 8
  $88A4  8D 1E                      BYTE_PUSH_imm1         +30
  $88A6  8D 14                      BYTE_PUSH_imm1         +20
  $88A8  61                         PUSH_qimm   ; inline operand = 1
  $88A9  68                         PUSH_qimm   ; inline operand = 8
  $88AA  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $88AE  AC 89 85                   CALL_abs               $8589 {bytecode}
  $88B1  3B                         PUSH_quick   ; inline operand = 11
  $88B2  66                         PUSH_qimm   ; inline operand = 6
  $88B3  61                         PUSH_qimm   ; inline operand = 1
  $88B4  8E 4A 84                   PUSH_imm2              $844A
  $88B7  8E DE 00                   PUSH_imm2              $00DE
  $88BA  61                         PUSH_qimm   ; inline operand = 1
  $88BB  E9 3A DE 0C                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $0C
  $88BF  AC 99 85                   CALL_abs               $8599 {bytecode}
  $88C2  AC 89 A5                   CALL_abs               $A589 {bytecode}
  $88C5  8E 03 80                   PUSH_imm2              $8003
  $88C8  8E DE 00                   PUSH_imm2              $00DE
  $88CB  61                         PUSH_qimm   ; inline operand = 1
  $88CC  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $88D0  60                         PUSH_qimm   ; inline operand = 0
  $88D1  8D 12                      BYTE_PUSH_imm1         +18
  $88D3  8D 1C                      BYTE_PUSH_imm1         +28
  $88D5  62                         PUSH_qimm   ; inline operand = 2
  $88D6  62                         PUSH_qimm   ; inline operand = 2
  $88D7  E9 9B A4 0A                CALL_abs_imm1          $A49B {native}, $0A
 >$88DB  0B                         LOADL_quick   ; inline operand = 11
  $88DC  8C FF 00                   LOADR_imm2             $00FF
  $88DF  C1                         CMPNE
  $88E0  D7 13 88                   JUMPT_abs              $8813
  $88E3  40                         LOADL_qimm   ; inline operand = 0
  $88E4  CF                         RETURN

; ============================================================
; sub $88E5   (frame_off=-27, body @ $88EA)   [PRG $268E5]
; ============================================================
  $88EA  DE EF FF                   LEAL_far               $FFEF
  $88ED  B3                         PUSHL
  $88EE  60                         PUSH_qimm   ; inline operand = 0
  $88EF  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $88F3  85 E5                      STORE_near             $E5
  $88F5  DE F4 FF                   LEAL_far               $FFF4
  $88F8  85 E9                      STORE_near             $E9
  $88FA  DE EF FF                   LEAL_far               $FFEF
  $88FD  85 ED                      STORE_near             $ED
  $88FF  83 E5                      LOADR_near             $E5
  $8901  BB                         ADD
  $8902  85 EB                      STORE_near             $EB
  $8904  D6 2E 89                   JUMP_abs               $892E
 >$8907  81 ED                      LOADL_near             $ED
  $8909  D3                         BYTE_DEREF
  $890A  57                         LOADR_qimm   ; inline operand = 7
  $890B  B5                         MULT
  $890C  8C 90 6C                   LOADR_imm2             $6C90
  $890F  BB                         ADD
  $8910  2B                         STORE_quick   ; inline operand = 11
  $8911  87 ED                      PUSH_near              $ED
  $8913  0B                         LOADL_quick   ; inline operand = 11
  $8914  76                         ADD_qimm   ; inline operand = 6
  $8915  D3                         BYTE_DEREF
  $8916  5F                         LOADR_qimm   ; inline operand = 15
  $8917  DA                         AND
  $8918  D4                         BYTE_POPSTORE
  $8919  87 E9                      PUSH_near              $E9
  $891B  81 ED                      LOADL_near             $ED
  $891D  D3                         BYTE_DEREF
  $891E  B3                         PUSHL
  $891F  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8923  B1                         POPSTORE
  $8924  81 E9                      LOADL_near             $E9
  $8926  72                         ADD_qimm   ; inline operand = 2
  $8927  85 E9                      STORE_near             $E9
  $8929  81 ED                      LOADL_near             $ED
  $892B  D0                         INC
  $892C  85 ED                      STORE_near             $ED
 >$892E  81 ED                      LOADL_near             $ED
  $8930  83 EB                      LOADR_near             $EB
  $8932  C6                         UCMPLT
  $8933  D7 07 89                   JUMPT_abs              $8907
  $8936  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8939  61                         PUSH_qimm   ; inline operand = 1
  $893A  8E 23 9A                   PUSH_imm2              $9A23
  $893D  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8941  62                         PUSH_qimm   ; inline operand = 2
  $8942  DE F4 FF                   LEAL_far               $FFF4
  $8945  B3                         PUSHL
  $8946  87 E5                      PUSH_near              $E5
  $8948  66                         PUSH_qimm   ; inline operand = 6
  $8949  62                         PUSH_qimm   ; inline operand = 2
  $894A  E9 8D A0 0A                CALL_abs_imm1          $A08D {native}, $0A
  $894E  85 E7                      STORE_near             $E7
  $8950  81 E7                      LOADL_near             $E7
  $8952  8C FF 00                   LOADR_imm2             $00FF
  $8955  C1                         CMPNE
  $8956  D8 65 89                   JUMPF_abs              $8965
  $8959  DE EF FF                   LEAL_far               $FFEF
  $895C  B3                         PUSHL
  $895D  81 E7                      LOADL_near             $E7
  $895F  B4                         POPR
  $8960  BB                         ADD
  $8961  D3                         BYTE_DEREF
  $8962  D6 68 89                   JUMP_abs               $8968
 >$8965  8A FF 00                   LOADL_imm2             $00FF
 >$8968  CF                         RETURN

; ============================================================
; sub $8969   (frame_off=-2, body @ $896E)   [PRG $26969]
; ============================================================
  $896E  8A F0 00                   LOADL_imm2             $00F0
  $8971  A9 63 70                   BYTE_STORE_abs         $7063
 >$8974  60                         PUSH_qimm   ; inline operand = 0
  $8975  8D 12                      BYTE_PUSH_imm1         +18
  $8977  8D 1C                      BYTE_PUSH_imm1         +28
  $8979  62                         PUSH_qimm   ; inline operand = 2
  $897A  62                         PUSH_qimm   ; inline operand = 2
  $897B  E9 05 A4 0A                CALL_abs_imm1          $A405 {native}, $0A
  $897F  AC E5 88                   CALL_abs               $88E5 {bytecode}
  $8982  2B                         STORE_quick   ; inline operand = 11
  $8983  8C FF 00                   LOADR_imm2             $00FF
  $8986  C1                         CMPNE
  $8987  D8 B1 89                   JUMPF_abs              $89B1
  $898A  AC CE B7                   CALL_abs               $B7CE {native}
  $898D  60                         PUSH_qimm   ; inline operand = 0
  $898E  60                         PUSH_qimm   ; inline operand = 0
  $898F  68                         PUSH_qimm   ; inline operand = 8
  $8990  8D 1E                      BYTE_PUSH_imm1         +30
  $8992  8D 14                      BYTE_PUSH_imm1         +20
  $8994  61                         PUSH_qimm   ; inline operand = 1
  $8995  68                         PUSH_qimm   ; inline operand = 8
  $8996  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $899A  AC 89 85                   CALL_abs               $8589 {bytecode}
  $899D  3B                         PUSH_quick   ; inline operand = 11
  $899E  66                         PUSH_qimm   ; inline operand = 6
  $899F  61                         PUSH_qimm   ; inline operand = 1
  $89A0  8E B3 81                   PUSH_imm2              $81B3
  $89A3  8E DE 00                   PUSH_imm2              $00DE
  $89A6  61                         PUSH_qimm   ; inline operand = 1
  $89A7  E9 3A DE 0C                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $0C
  $89AB  AC 99 85                   CALL_abs               $8599 {bytecode}
  $89AE  AC 89 A5                   CALL_abs               $A589 {bytecode}
 >$89B1  8E 03 80                   PUSH_imm2              $8003
  $89B4  8E DE 00                   PUSH_imm2              $00DE
  $89B7  61                         PUSH_qimm   ; inline operand = 1
  $89B8  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $89BC  60                         PUSH_qimm   ; inline operand = 0
  $89BD  8D 12                      BYTE_PUSH_imm1         +18
  $89BF  8D 1C                      BYTE_PUSH_imm1         +28
  $89C1  62                         PUSH_qimm   ; inline operand = 2
  $89C2  62                         PUSH_qimm   ; inline operand = 2
  $89C3  E9 9B A4 0A                CALL_abs_imm1          $A49B {native}, $0A
  $89C7  0B                         LOADL_quick   ; inline operand = 11
  $89C8  8C FF 00                   LOADR_imm2             $00FF
  $89CB  C1                         CMPNE
  $89CC  D7 74 89                   JUMPT_abs              $8974
  $89CF  40                         LOADL_qimm   ; inline operand = 0
  $89D0  CF                         RETURN

; ============================================================
; sub $89D1   (frame_off=-2, body @ $89D6)   [PRG $269D1]
; ============================================================
  $89D6  61                         PUSH_qimm   ; inline operand = 1
  $89D7  6B                         PUSH_qimm   ; inline operand = 11
  $89D8  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $89DC  61                         PUSH_qimm   ; inline operand = 1
  $89DD  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $89E1  61                         PUSH_qimm   ; inline operand = 1
  $89E2  8E 40 9A                   PUSH_imm2              $9A40
  $89E5  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $89E9  61                         PUSH_qimm   ; inline operand = 1
  $89EA  62                         PUSH_qimm   ; inline operand = 2
  $89EB  8E 2F 9A                   PUSH_imm2              $9A2F
  $89EE  61                         PUSH_qimm   ; inline operand = 1
  $89EF  66                         PUSH_qimm   ; inline operand = 6
  $89F0  8D 19                      BYTE_PUSH_imm1         +25
  $89F2  68                         PUSH_qimm   ; inline operand = 8
  $89F3  E9 56 A1 0E                CALL_abs_imm1          $A156 {native}, $0E
  $89F7  2B                         STORE_quick   ; inline operand = 11
  $89F8  0B                         LOADL_quick   ; inline operand = 11
  $89F9  8C FF 00                   LOADR_imm2             $00FF
  $89FC  C0                         CMPEQ
  $89FD  D8 04 8A                   JUMPF_abs              $8A04
  $8A00  8A FF 00                   LOADL_imm2             $00FF
  $8A03  CF                         RETURN
 >$8A04  0B                         LOADL_quick   ; inline operand = 11
  $8A05  D7 1C 8A                   JUMPT_abs              $8A1C
  $8A08  61                         PUSH_qimm   ; inline operand = 1
  $8A09  6B                         PUSH_qimm   ; inline operand = 11
  $8A0A  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8A0E  61                         PUSH_qimm   ; inline operand = 1
  $8A0F  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $8A13  8E 5D 9A                   PUSH_imm2              $9A5D
  $8A16  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8A1A  40                         LOADL_qimm   ; inline operand = 0
  $8A1B  CF                         RETURN
 >$8A1C  41                         LOADL_qimm   ; inline operand = 1
  $8A1D  CF                         RETURN

; ============================================================
; sub $8A1E   (frame_off=-4, body @ $8A23)   [PRG $26A1E]
; ============================================================
  $8A23  AC D1 89                   CALL_abs               $89D1 {bytecode}
  $8A26  2A                         STORE_quick   ; inline operand = 10
  $8A27  0A                         LOADL_quick   ; inline operand = 10
  $8A28  8C FF 00                   LOADR_imm2             $00FF
  $8A2B  C0                         CMPEQ
  $8A2C  D8 31 8A                   JUMPF_abs              $8A31
  $8A2F  40                         LOADL_qimm   ; inline operand = 0
  $8A30  CF                         RETURN
 >$8A31  0A                         LOADL_quick   ; inline operand = 10
  $8A32  D8 49 8A                   JUMPF_abs              $8A49
  $8A35  61                         PUSH_qimm   ; inline operand = 1
  $8A36  6B                         PUSH_qimm   ; inline operand = 11
  $8A37  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8A3B  61                         PUSH_qimm   ; inline operand = 1
  $8A3C  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $8A40  8E 94 9A                   PUSH_imm2              $9A94
  $8A43  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8A47  41                         LOADL_qimm   ; inline operand = 1
  $8A48  CF                         RETURN
 >$8A49  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8A4C  61                         PUSH_qimm   ; inline operand = 1
  $8A4D  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $8A51  61                         PUSH_qimm   ; inline operand = 1
  $8A52  8E C2 9A                   PUSH_imm2              $9AC2
  $8A55  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8A59  61                         PUSH_qimm   ; inline operand = 1
  $8A5A  63                         PUSH_qimm   ; inline operand = 3
  $8A5B  8E 77 9A                   PUSH_imm2              $9A77
  $8A5E  61                         PUSH_qimm   ; inline operand = 1
  $8A5F  67                         PUSH_qimm   ; inline operand = 7
  $8A60  8D 17                      BYTE_PUSH_imm1         +23
  $8A62  68                         PUSH_qimm   ; inline operand = 8
  $8A63  E9 56 A1 0E                CALL_abs_imm1          $A156 {native}, $0E
  $8A67  2B                         STORE_quick   ; inline operand = 11
  $8A68  0B                         LOADL_quick   ; inline operand = 11
  $8A69  8C FF 00                   LOADR_imm2             $00FF
  $8A6C  C1                         CMPNE
  $8A6D  D8 79 8A                   JUMPF_abs              $8A79
  $8A70  0B                         LOADL_quick   ; inline operand = 11
  $8A71  D2                         LSHIFT1
  $8A72  8C 7D 9A                   LOADR_imm2             $9A7D
  $8A75  BB                         ADD
  $8A76  B0                         DEREF
  $8A77  DD                         CALLPTR
  $8A78  2A                         STORE_quick   ; inline operand = 10
 >$8A79  0B                         LOADL_quick   ; inline operand = 11
  $8A7A  8C FF 00                   LOADR_imm2             $00FF
  $8A7D  C0                         CMPEQ
  $8A7E  D7 85 8A                   JUMPT_abs              $8A85
  $8A81  0A                         LOADL_quick   ; inline operand = 10
  $8A82  D8 49 8A                   JUMPF_abs              $8A49
 >$8A85  0A                         LOADL_quick   ; inline operand = 10
  $8A86  CF                         RETURN

; ============================================================
; sub $8A87   (frame_off=+0, body @ $8A8C)   [PRG $26A87]
; ============================================================
  $8A8C  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8A8F  8E CE 9A                   PUSH_imm2              $9ACE
  $8A92  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8A96  CF                         RETURN

; ============================================================
; sub $8A97   (frame_off=-18, body @ $8A9C)   [PRG $26A97]
; ============================================================
  $8A9C  0C                         LOADL_quick   ; inline operand = 12
  $8A9D  D2                         LSHIFT1
  $8A9E  D2                         LSHIFT1
  $8A9F  8C BE 6F                   LOADR_imm2             $6FBE
  $8AA2  BB                         ADD
  $8AA3  D3                         BYTE_DEREF
  $8AA4  28                         STORE_quick   ; inline operand = 8
  $8AA5  0C                         LOADL_quick   ; inline operand = 12
  $8AA6  D2                         LSHIFT1
  $8AA7  D2                         LSHIFT1
  $8AA8  8C BC 6F                   LOADR_imm2             $6FBC
  $8AAB  BB                         ADD
  $8AAC  B0                         DEREF
  $8AAD  24                         STORE_quick   ; inline operand = 4
  $8AAE  0C                         LOADL_quick   ; inline operand = 12
  $8AAF  D2                         LSHIFT1
  $8AB0  D2                         LSHIFT1
  $8AB1  8C BF 6F                   LOADR_imm2             $6FBF
  $8AB4  BB                         ADD
  $8AB5  D3                         BYTE_DEREF
  $8AB6  25                         STORE_quick   ; inline operand = 5
  $8AB7  8A 8D 6B                   LOADL_imm2             $6B8D
  $8ABA  23                         STORE_quick   ; inline operand = 3
  $8ABB  89 FF                      BYTE_LOADL_imm1        -1
  $8ABD  A8 64 70                   STORE_abs              $7064
  $8AC0  8E E8 00                   PUSH_imm2              $00E8
  $8AC3  8E 38 A1                   PUSH_imm2              $A138
  $8AC6  8E 04 A0                   PUSH_imm2              $A004
  $8AC9  6E                         PUSH_qimm   ; inline operand = 14
  $8ACA  8D 16                      BYTE_PUSH_imm1         +22
  $8ACC  66                         PUSH_qimm   ; inline operand = 6
  $8ACD  65                         PUSH_qimm   ; inline operand = 5
  $8ACE  69                         PUSH_qimm   ; inline operand = 9
  $8ACF  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8AD3  67                         PUSH_qimm   ; inline operand = 7
  $8AD4  6D                         PUSH_qimm   ; inline operand = 13
  $8AD5  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8AD9  0C                         LOADL_quick   ; inline operand = 12
  $8ADA  D2                         LSHIFT1
  $8ADB  8C 24 BB                   LOADR_imm2             $BB24
  $8ADE  BB                         ADD
  $8ADF  B3                         PUSHL
  $8AE0  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8AE4  B3                         PUSHL
  $8AE5  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8AE9  69                         PUSH_qimm   ; inline operand = 9
  $8AEA  66                         PUSH_qimm   ; inline operand = 6
  $8AEB  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8AEF  34                         PUSH_quick   ; inline operand = 4
  $8AF0  8E E3 9A                   PUSH_imm2              $9AE3
  $8AF3  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $8AF7  6B                         PUSH_qimm   ; inline operand = 11
  $8AF8  66                         PUSH_qimm   ; inline operand = 6
  $8AF9  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8AFD  38                         PUSH_quick   ; inline operand = 8
  $8AFE  8E EF 9A                   PUSH_imm2              $9AEF
  $8B01  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $8B05  6D                         PUSH_qimm   ; inline operand = 13
  $8B06  66                         PUSH_qimm   ; inline operand = 6
  $8B07  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8B0B  60                         PUSH_qimm   ; inline operand = 0
  $8B0C  8E FD 9A                   PUSH_imm2              $9AFD
  $8B0F  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8B13  40                         LOADL_qimm   ; inline operand = 0
  $8B14  29                         STORE_quick   ; inline operand = 9
  $8B15  40                         LOADL_qimm   ; inline operand = 0
  $8B16  2B                         STORE_quick   ; inline operand = 11
  $8B17  40                         LOADL_qimm   ; inline operand = 0
  $8B18  2A                         STORE_quick   ; inline operand = 10
  $8B19  D6 CA 8B                   JUMP_abs               $8BCA
 >$8B1C  0B                         LOADL_quick   ; inline operand = 11
  $8B1D  1C                         LOADR_quick   ; inline operand = 12
  $8B1E  C1                         CMPNE
  $8B1F  D8 C7 8B                   JUMPF_abs              $8BC7
  $8B22  0A                         LOADL_quick   ; inline operand = 10
  $8B23  7E                         ADD_qimm   ; inline operand = 14
  $8B24  B3                         PUSHL
  $8B25  68                         PUSH_qimm   ; inline operand = 8
  $8B26  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8B2A  0B                         LOADL_quick   ; inline operand = 11
  $8B2B  D2                         LSHIFT1
  $8B2C  8C 24 BB                   LOADR_imm2             $BB24
  $8B2F  BB                         ADD
  $8B30  B3                         PUSHL
  $8B31  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8B35  B3                         PUSHL
  $8B36  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8B3A  0A                         LOADL_quick   ; inline operand = 10
  $8B3B  7E                         ADD_qimm   ; inline operand = 14
  $8B3C  B3                         PUSHL
  $8B3D  8D 11                      BYTE_PUSH_imm1         +17
  $8B3F  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8B43  0C                         LOADL_quick   ; inline operand = 12
  $8B44  53                         LOADR_qimm   ; inline operand = 3
  $8B45  B5                         MULT
  $8B46  1B                         LOADR_quick   ; inline operand = 11
  $8B47  BB                         ADD
  $8B48  8C DA 9A                   LOADR_imm2             $9ADA
  $8B4B  BB                         ADD
  $8B4C  D3                         BYTE_DEREF
  $8B4D  13                         LOADR_quick   ; inline operand = 3
  $8B4E  BB                         ADD
  $8B4F  D3                         BYTE_DEREF
  $8B50  B3                         PUSHL
  $8B51  8E 0B 9B                   PUSH_imm2              $9B0B
  $8B54  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $8B58  0A                         LOADL_quick   ; inline operand = 10
  $8B59  D0                         INC
  $8B5A  2A                         STORE_quick   ; inline operand = 10
  $8B5B  0C                         LOADL_quick   ; inline operand = 12
  $8B5C  D2                         LSHIFT1
  $8B5D  D2                         LSHIFT1
  $8B5E  B3                         PUSHL
  $8B5F  A4 99 6B                   LOADL_abs              $6B99
  $8B62  B4                         POPR
  $8B63  BE                         URSHIFT
  $8B64  27                         STORE_quick   ; inline operand = 7
  $8B65  48                         LOADL_qimm   ; inline operand = 8
  $8B66  1B                         LOADR_quick   ; inline operand = 11
  $8B67  BE                         URSHIFT
  $8B68  17                         LOADR_quick   ; inline operand = 7
  $8B69  DA                         AND
  $8B6A  D8 91 8B                   JUMPF_abs              $8B91
  $8B6D  09                         LOADL_quick   ; inline operand = 9
  $8B6E  8F 11                      BYTE_ADD_imm1          +17
  $8B70  B3                         PUSHL
  $8B71  66                         PUSH_qimm   ; inline operand = 6
  $8B72  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8B76  60                         PUSH_qimm   ; inline operand = 0
  $8B77  8E 0F 9B                   PUSH_imm2              $9B0F
  $8B7A  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8B7E  0B                         LOADL_quick   ; inline operand = 11
  $8B7F  D2                         LSHIFT1
  $8B80  8C 24 BB                   LOADR_imm2             $BB24
  $8B83  BB                         ADD
  $8B84  B3                         PUSHL
  $8B85  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8B89  B3                         PUSHL
  $8B8A  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8B8E  09                         LOADL_quick   ; inline operand = 9
  $8B8F  D0                         INC
  $8B90  29                         STORE_quick   ; inline operand = 9
 >$8B91  0C                         LOADL_quick   ; inline operand = 12
  $8B92  D2                         LSHIFT1
  $8B93  D2                         LSHIFT1
  $8B94  B3                         PUSHL
  $8B95  A4 9B 6B                   LOADL_abs              $6B9B
  $8B98  B4                         POPR
  $8B99  BE                         URSHIFT
  $8B9A  26                         STORE_quick   ; inline operand = 6
  $8B9B  48                         LOADL_qimm   ; inline operand = 8
  $8B9C  1B                         LOADR_quick   ; inline operand = 11
  $8B9D  BE                         URSHIFT
  $8B9E  16                         LOADR_quick   ; inline operand = 6
  $8B9F  DA                         AND
  $8BA0  D8 C7 8B                   JUMPF_abs              $8BC7
  $8BA3  09                         LOADL_quick   ; inline operand = 9
  $8BA4  8F 11                      BYTE_ADD_imm1          +17
  $8BA6  B3                         PUSHL
  $8BA7  66                         PUSH_qimm   ; inline operand = 6
  $8BA8  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8BAC  0B                         LOADL_quick   ; inline operand = 11
  $8BAD  D2                         LSHIFT1
  $8BAE  8C 24 BB                   LOADR_imm2             $BB24
  $8BB1  BB                         ADD
  $8BB2  B3                         PUSHL
  $8BB3  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8BB7  B3                         PUSHL
  $8BB8  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8BBC  60                         PUSH_qimm   ; inline operand = 0
  $8BBD  8E 18 9B                   PUSH_imm2              $9B18
  $8BC0  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8BC4  09                         LOADL_quick   ; inline operand = 9
  $8BC5  D0                         INC
  $8BC6  29                         STORE_quick   ; inline operand = 9
 >$8BC7  0B                         LOADL_quick   ; inline operand = 11
  $8BC8  D0                         INC
  $8BC9  2B                         STORE_quick   ; inline operand = 11
 >$8BCA  0B                         LOADL_quick   ; inline operand = 11
  $8BCB  53                         LOADR_qimm   ; inline operand = 3
  $8BCC  C6                         UCMPLT
  $8BCD  D7 1C 8B                   JUMPT_abs              $8B1C
  $8BD0  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8BD3  40                         LOADL_qimm   ; inline operand = 0
  $8BD4  15                         LOADR_quick   ; inline operand = 5
  $8BD5  C7                         UCMPLE
  $8BD6  D8 12 8C                   JUMPF_abs              $8C12
  $8BD9  05                         LOADL_quick   ; inline operand = 5
  $8BDA  52                         LOADR_qimm   ; inline operand = 2
  $8BDB  C7                         UCMPLE
  $8BDC  D8 12 8C                   JUMPF_abs              $8C12
  $8BDF  60                         PUSH_qimm   ; inline operand = 0
  $8BE0  8E 24 9B                   PUSH_imm2              $9B24
  $8BE3  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8BE7  0C                         LOADL_quick   ; inline operand = 12
  $8BE8  D2                         LSHIFT1
  $8BE9  8C 24 BB                   LOADR_imm2             $BB24
  $8BEC  BB                         ADD
  $8BED  B3                         PUSHL
  $8BEE  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8BF2  B3                         PUSHL
  $8BF3  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8BF7  60                         PUSH_qimm   ; inline operand = 0
  $8BF8  8E 3F 9B                   PUSH_imm2              $9B3F
  $8BFB  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8BFF  05                         LOADL_quick   ; inline operand = 5
  $8C00  D2                         LSHIFT1
  $8C01  8C 24 BB                   LOADR_imm2             $BB24
  $8C04  BB                         ADD
  $8C05  B3                         PUSHL
  $8C06  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8C0A  B3                         PUSHL
  $8C0B  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8C0F  D6 3F 8C                   JUMP_abs               $8C3F
 >$8C12  05                         LOADL_quick   ; inline operand = 5
  $8C13  54                         LOADR_qimm   ; inline operand = 4
  $8C14  C0                         CMPEQ
  $8C15  D8 37 8C                   JUMPF_abs              $8C37
  $8C18  60                         PUSH_qimm   ; inline operand = 0
  $8C19  8E 46 9B                   PUSH_imm2              $9B46
  $8C1C  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8C20  0C                         LOADL_quick   ; inline operand = 12
  $8C21  D2                         LSHIFT1
  $8C22  8C 24 BB                   LOADR_imm2             $BB24
  $8C25  BB                         ADD
  $8C26  B3                         PUSHL
  $8C27  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8C2B  B3                         PUSHL
  $8C2C  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8C30  60                         PUSH_qimm   ; inline operand = 0
  $8C31  8E 48 9B                   PUSH_imm2              $9B48
  $8C34  D6 3B 8C                   JUMP_abs               $8C3B
 >$8C37  60                         PUSH_qimm   ; inline operand = 0
  $8C38  8E 67 9B                   PUSH_imm2              $9B67
 >$8C3B  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
 >$8C3F  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $8C42  CF                         RETURN

; ============================================================
; sub $8C43   (frame_off=-4, body @ $8C48)   [PRG $26C43]
; ============================================================
  $8C48  A5 67 70                   BYTE_LOADL_abs         $7067
  $8C4B  5E                         LOADR_qimm   ; inline operand = 14
  $8C4C  B5                         MULT
  $8C4D  8C BA 67                   LOADR_imm2             $67BA
  $8C50  BB                         ADD
  $8C51  2B                         STORE_quick   ; inline operand = 11
  $8C52  0B                         LOADL_quick   ; inline operand = 11
  $8C53  1C                         LOADR_quick   ; inline operand = 12
  $8C54  BB                         ADD
  $8C55  D3                         BYTE_DEREF
  $8C56  B3                         PUSHL
  $8C57  89 64                      BYTE_LOADL_imm1        +100
  $8C59  B4                         POPR
  $8C5A  BC                         SUB
  $8C5B  8B 14                      BYTE_LOADR_imm1        +20
  $8C5D  B8                         UDIV
  $8C5E  5A                         LOADR_qimm   ; inline operand = 10
  $8C5F  B5                         MULT
  $8C60  8F 32                      BYTE_ADD_imm1          +50
  $8C62  2A                         STORE_quick   ; inline operand = 10
  $8C63  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8C66  60                         PUSH_qimm   ; inline operand = 0
  $8C67  8E 86 9B                   PUSH_imm2              $9B86
  $8C6A  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8C6E  0C                         LOADL_quick   ; inline operand = 12
  $8C6F  D2                         LSHIFT1
  $8C70  8C 24 BB                   LOADR_imm2             $BB24
  $8C73  BB                         ADD
  $8C74  B3                         PUSHL
  $8C75  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8C79  B3                         PUSHL
  $8C7A  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8C7E  60                         PUSH_qimm   ; inline operand = 0
  $8C7F  8E 98 9B                   PUSH_imm2              $9B98
  $8C82  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8C86  8D 19                      BYTE_PUSH_imm1         +25
  $8C88  68                         PUSH_qimm   ; inline operand = 8
  $8C89  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8C8D  3A                         PUSH_quick   ; inline operand = 10
  $8C8E  8E A3 9B                   PUSH_imm2              $9BA3
  $8C91  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8C95  AC 9F CD                   CALL_abs               $CD9F {native}
  $8C98  D8 DB 8C                   JUMPF_abs              $8CDB
  $8C9B  A4 6B 66                   LOADL_abs              $666B
  $8C9E  1A                         LOADR_quick   ; inline operand = 10
  $8C9F  C6                         UCMPLT
  $8CA0  D8 B4 8C                   JUMPF_abs              $8CB4
  $8CA3  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8CA6  61                         PUSH_qimm   ; inline operand = 1
  $8CA7  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $8CAB  8E AF 9B                   PUSH_imm2              $9BAF
  $8CAE  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8CB2  40                         LOADL_qimm   ; inline operand = 0
  $8CB3  CF                         RETURN
 >$8CB4  0A                         LOADL_quick   ; inline operand = 10
  $8CB5  CD                         SWAP
  $8CB6  A4 6B 66                   LOADL_abs              $666B
  $8CB9  BC                         SUB
  $8CBA  A8 6B 66                   STORE_abs              $666B
  $8CBD  60                         PUSH_qimm   ; inline operand = 0
  $8CBE  8D 11                      BYTE_PUSH_imm1         +17
  $8CC0  8D 1C                      BYTE_PUSH_imm1         +28
  $8CC2  63                         PUSH_qimm   ; inline operand = 3
  $8CC3  62                         PUSH_qimm   ; inline operand = 2
  $8CC4  E9 05 A4 0A                CALL_abs_imm1          $A405 {native}, $0A
  $8CC8  3C                         PUSH_quick   ; inline operand = 12
  $8CC9  E9 97 8A 02                CALL_abs_imm1          $8A97 {bytecode}, $02
  $8CCD  60                         PUSH_qimm   ; inline operand = 0
  $8CCE  8D 11                      BYTE_PUSH_imm1         +17
  $8CD0  8D 1C                      BYTE_PUSH_imm1         +28
  $8CD2  63                         PUSH_qimm   ; inline operand = 3
  $8CD3  62                         PUSH_qimm   ; inline operand = 2
  $8CD4  E9 9B A4 0A                CALL_abs_imm1          $A49B {native}, $0A
  $8CD8  D6 DE 8C                   JUMP_abs               $8CDE
 >$8CDB  AC 87 8A                   CALL_abs               $8A87 {bytecode}
 >$8CDE  40                         LOADL_qimm   ; inline operand = 0
  $8CDF  CF                         RETURN

; ============================================================
; sub $8CE0   (frame_off=-4, body @ $8CE5)   [PRG $26CE0]
; ============================================================
  $8CE5  40                         LOADL_qimm   ; inline operand = 0
  $8CE6  2A                         STORE_quick   ; inline operand = 10
 >$8CE7  61                         PUSH_qimm   ; inline operand = 1
  $8CE8  64                         PUSH_qimm   ; inline operand = 4
  $8CE9  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8CED  61                         PUSH_qimm   ; inline operand = 1
  $8CEE  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $8CF2  61                         PUSH_qimm   ; inline operand = 1
  $8CF3  8E E0 9B                   PUSH_imm2              $9BE0
  $8CF6  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8CFA  62                         PUSH_qimm   ; inline operand = 2
  $8CFB  63                         PUSH_qimm   ; inline operand = 3
  $8CFC  8E C4 9B                   PUSH_imm2              $9BC4
  $8CFF  62                         PUSH_qimm   ; inline operand = 2
  $8D00  6A                         PUSH_qimm   ; inline operand = 10
  $8D01  8D 17                      BYTE_PUSH_imm1         +23
  $8D03  68                         PUSH_qimm   ; inline operand = 8
  $8D04  E9 56 A1 0E                CALL_abs_imm1          $A156 {native}, $0E
  $8D08  2B                         STORE_quick   ; inline operand = 11
  $8D09  0B                         LOADL_quick   ; inline operand = 11
  $8D0A  8C FF 00                   LOADR_imm2             $00FF
  $8D0D  C1                         CMPNE
  $8D0E  D8 1D 8D                   JUMPF_abs              $8D1D
  $8D11  8A F0 00                   LOADL_imm2             $00F0
  $8D14  A9 63 70                   BYTE_STORE_abs         $7063
  $8D17  3B                         PUSH_quick   ; inline operand = 11
  $8D18  E9 43 8C 02                CALL_abs_imm1          $8C43 {bytecode}, $02
  $8D1C  2A                         STORE_quick   ; inline operand = 10
 >$8D1D  0B                         LOADL_quick   ; inline operand = 11
  $8D1E  8C FF 00                   LOADR_imm2             $00FF
  $8D21  C0                         CMPEQ
  $8D22  D7 29 8D                   JUMPT_abs              $8D29
  $8D25  0A                         LOADL_quick   ; inline operand = 10
  $8D26  D8 E7 8C                   JUMPF_abs              $8CE7
 >$8D29  0A                         LOADL_quick   ; inline operand = 10
  $8D2A  CF                         RETURN

; ============================================================
; sub $8D2B   (frame_off=-6, body @ $8D30)   [PRG $26D2B]
; ============================================================
  $8D30  AC CE B7                   CALL_abs               $B7CE {native}
  $8D33  89 FF                      BYTE_LOADL_imm1        -1
  $8D35  A8 64 70                   STORE_abs              $7064
  $8D38  8E E8 00                   PUSH_imm2              $00E8
  $8D3B  8E BC A3                   PUSH_imm2              $A3BC
  $8D3E  8E 6C A2                   PUSH_imm2              $A26C
  $8D41  6E                         PUSH_qimm   ; inline operand = 14
  $8D42  8D 18                      BYTE_PUSH_imm1         +24
  $8D44  66                         PUSH_qimm   ; inline operand = 6
  $8D45  64                         PUSH_qimm   ; inline operand = 4
  $8D46  69                         PUSH_qimm   ; inline operand = 9
  $8D47  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8D4B  40                         LOADL_qimm   ; inline operand = 0
  $8D4C  2A                         STORE_quick   ; inline operand = 10
  $8D4D  0C                         LOADL_quick   ; inline operand = 12
  $8D4E  74                         ADD_qimm   ; inline operand = 4
  $8D4F  2B                         STORE_quick   ; inline operand = 11
  $8D50  D6 8B 8D                   JUMP_abs               $8D8B
 >$8D53  3C                         PUSH_quick   ; inline operand = 12
  $8D54  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8D58  B3                         PUSHL
  $8D59  E9 50 D5 02                CALL_abs_imm1          $D550 {native}, $02
  $8D5D  29                         STORE_quick   ; inline operand = 9
  $8D5E  0A                         LOADL_quick   ; inline operand = 10
  $8D5F  D2                         LSHIFT1
  $8D60  78                         ADD_qimm   ; inline operand = 8
  $8D61  B3                         PUSHL
  $8D62  66                         PUSH_qimm   ; inline operand = 6
  $8D63  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8D67  39                         PUSH_quick   ; inline operand = 9
  $8D68  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8D6C  0A                         LOADL_quick   ; inline operand = 10
  $8D6D  D2                         LSHIFT1
  $8D6E  78                         ADD_qimm   ; inline operand = 8
  $8D6F  B3                         PUSHL
  $8D70  8D 16                      BYTE_PUSH_imm1         +22
  $8D72  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8D76  09                         LOADL_quick   ; inline operand = 9
  $8D77  7F                         ADD_qimm   ; inline operand = 15
  $8D78  B3                         PUSHL
  $8D79  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8D7D  B3                         PUSHL
  $8D7E  8E F6 9B                   PUSH_imm2              $9BF6
  $8D81  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $8D85  0A                         LOADL_quick   ; inline operand = 10
  $8D86  D0                         INC
  $8D87  2A                         STORE_quick   ; inline operand = 10
  $8D88  0C                         LOADL_quick   ; inline operand = 12
  $8D89  D0                         INC
  $8D8A  2C                         STORE_quick   ; inline operand = 12
 >$8D8B  0C                         LOADL_quick   ; inline operand = 12
  $8D8C  1B                         LOADR_quick   ; inline operand = 11
  $8D8D  C6                         UCMPLT
  $8D8E  D7 53 8D                   JUMPT_abs              $8D53
  $8D91  8D 10                      BYTE_PUSH_imm1         +16
  $8D93  8D 10                      BYTE_PUSH_imm1         +16
  $8D95  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8D99  AA 6B 66                   PUSH_abs               $666B
  $8D9C  8E FA 9B                   PUSH_imm2              $9BFA
  $8D9F  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8DA3  0A                         LOADL_quick   ; inline operand = 10
  $8DA4  CF                         RETURN

; ============================================================
; sub $8DA5   (frame_off=-2, body @ $8DAA)   [PRG $26DA5]
; ============================================================
  $8DAA  8A 6D 66                   LOADL_imm2             $666D
  $8DAD  2B                         STORE_quick   ; inline operand = 11
  $8DAE  0E                         LOADL_quick   ; inline operand = 14
  $8DAF  5F                         LOADR_qimm   ; inline operand = 15
  $8DB0  DA                         AND
  $8DB1  B3                         PUSHL
  $8DB2  41                         LOADL_qimm   ; inline operand = 1
  $8DB3  B4                         POPR
  $8DB4  BD                         LSHIFT
  $8DB5  B3                         PUSHL
  $8DB6  0E                         LOADL_quick   ; inline operand = 14
  $8DB7  54                         LOADR_qimm   ; inline operand = 4
  $8DB8  BE                         URSHIFT
  $8DB9  D2                         LSHIFT1
  $8DBA  1B                         LOADR_quick   ; inline operand = 11
  $8DBB  BB                         ADD
  $8DBC  B0                         DEREF
  $8DBD  B4                         POPR
  $8DBE  DA                         AND
  $8DBF  D8 D3 8D                   JUMPF_abs              $8DD3
  $8DC2  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8DC5  61                         PUSH_qimm   ; inline operand = 1
  $8DC6  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $8DCA  8E 04 9C                   PUSH_imm2              $9C04
  $8DCD  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8DD1  40                         LOADL_qimm   ; inline operand = 0
  $8DD2  CF                         RETURN
 >$8DD3  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8DD6  60                         PUSH_qimm   ; inline operand = 0
  $8DD7  8E 19 9C                   PUSH_imm2              $9C19
  $8DDA  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8DDE  3C                         PUSH_quick   ; inline operand = 12
  $8DDF  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8DE3  8D 17                      BYTE_PUSH_imm1         +23
  $8DE5  68                         PUSH_qimm   ; inline operand = 8
  $8DE6  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8DEA  3D                         PUSH_quick   ; inline operand = 13
  $8DEB  8E 20 9C                   PUSH_imm2              $9C20
  $8DEE  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8DF2  AC 9F CD                   CALL_abs               $CD9F {native}
  $8DF5  D8 42 8E                   JUMPF_abs              $8E42
  $8DF8  A4 6B 66                   LOADL_abs              $666B
  $8DFB  1D                         LOADR_quick   ; inline operand = 13
  $8DFC  C6                         UCMPLT
  $8DFD  D8 12 8E                   JUMPF_abs              $8E12
  $8E00  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8E03  61                         PUSH_qimm   ; inline operand = 1
  $8E04  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $8E08  8E 3E 9C                   PUSH_imm2              $9C3E
  $8E0B  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8E0F  D6 45 8E                   JUMP_abs               $8E45
 >$8E12  0D                         LOADL_quick   ; inline operand = 13
  $8E13  CD                         SWAP
  $8E14  A4 6B 66                   LOADL_abs              $666B
  $8E17  BC                         SUB
  $8E18  A8 6B 66                   STORE_abs              $666B
  $8E1B  0E                         LOADL_quick   ; inline operand = 14
  $8E1C  5F                         LOADR_qimm   ; inline operand = 15
  $8E1D  DA                         AND
  $8E1E  B3                         PUSHL
  $8E1F  41                         LOADL_qimm   ; inline operand = 1
  $8E20  B4                         POPR
  $8E21  BD                         LSHIFT
  $8E22  B3                         PUSHL
  $8E23  0E                         LOADL_quick   ; inline operand = 14
  $8E24  54                         LOADR_qimm   ; inline operand = 4
  $8E25  BE                         URSHIFT
  $8E26  D2                         LSHIFT1
  $8E27  1B                         LOADR_quick   ; inline operand = 11
  $8E28  BB                         ADD
  $8E29  B4                         POPR
  $8E2A  B3                         PUSHL
  $8E2B  B0                         DEREF
  $8E2C  DB                         OR
  $8E2D  B1                         POPSTORE
  $8E2E  8D 10                      BYTE_PUSH_imm1         +16
  $8E30  8D 16                      BYTE_PUSH_imm1         +22
  $8E32  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8E36  AA 6B 66                   PUSH_abs               $666B
  $8E39  8E 53 9C                   PUSH_imm2              $9C53
  $8E3C  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8E40  41                         LOADL_qimm   ; inline operand = 1
  $8E41  CF                         RETURN
 >$8E42  AC 87 8A                   CALL_abs               $8A87 {bytecode}
 >$8E45  40                         LOADL_qimm   ; inline operand = 0
  $8E46  CF                         RETURN

; ============================================================
; sub $8E47   (frame_off=-18, body @ $8E4C)   [PRG $26E47]
; ============================================================
  $8E4C  60                         PUSH_qimm   ; inline operand = 0
  $8E4D  8D 11                      BYTE_PUSH_imm1         +17
  $8E4F  8D 1C                      BYTE_PUSH_imm1         +28
  $8E51  63                         PUSH_qimm   ; inline operand = 3
  $8E52  62                         PUSH_qimm   ; inline operand = 2
  $8E53  E9 05 A4 0A                CALL_abs_imm1          $A405 {native}, $0A
  $8E57  A5 67 70                   BYTE_LOADL_abs         $7067
  $8E5A  D2                         LSHIFT1
  $8E5B  D2                         LSHIFT1
  $8E5C  8C E9 A0                   LOADR_imm2             $A0E9
  $8E5F  BB                         ADD
  $8E60  2B                         STORE_quick   ; inline operand = 11
  $8E61  3B                         PUSH_quick   ; inline operand = 11
  $8E62  E9 2B 8D 02                CALL_abs_imm1          $8D2B {bytecode}, $02
  $8E66  25                         STORE_quick   ; inline operand = 5
  $8E67  40                         LOADL_qimm   ; inline operand = 0
  $8E68  D6 84 8E                   JUMP_abs               $8E84
 >$8E6B  DE F6 FF                   LEAL_far               $FFF6
  $8E6E  B3                         PUSHL
  $8E6F  06                         LOADL_quick   ; inline operand = 6
  $8E70  D2                         LSHIFT1
  $8E71  B4                         POPR
  $8E72  BB                         ADD
  $8E73  B3                         PUSHL
  $8E74  0B                         LOADL_quick   ; inline operand = 11
  $8E75  16                         LOADR_quick   ; inline operand = 6
  $8E76  BB                         ADD
  $8E77  B3                         PUSHL
  $8E78  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8E7C  B3                         PUSHL
  $8E7D  E9 50 D5 02                CALL_abs_imm1          $D550 {native}, $02
  $8E81  B1                         POPSTORE
  $8E82  06                         LOADL_quick   ; inline operand = 6
  $8E83  D0                         INC
 >$8E84  26                         STORE_quick   ; inline operand = 6
  $8E85  06                         LOADL_quick   ; inline operand = 6
  $8E86  15                         LOADR_quick   ; inline operand = 5
  $8E87  C6                         UCMPLT
  $8E88  D7 6B 8E                   JUMPT_abs              $8E6B
  $8E8B  40                         LOADL_qimm   ; inline operand = 0
  $8E8C  23                         STORE_quick   ; inline operand = 3
  $8E8D  8A F0 00                   LOADL_imm2             $00F0
  $8E90  A9 63 70                   BYTE_STORE_abs         $7063
 >$8E93  61                         PUSH_qimm   ; inline operand = 1
  $8E94  64                         PUSH_qimm   ; inline operand = 4
  $8E95  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8E99  61                         PUSH_qimm   ; inline operand = 1
  $8E9A  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $8E9E  61                         PUSH_qimm   ; inline operand = 1
  $8E9F  8E 57 9C                   PUSH_imm2              $9C57
  $8EA2  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8EA6  35                         PUSH_quick   ; inline operand = 5
  $8EA7  62                         PUSH_qimm   ; inline operand = 2
  $8EA8  68                         PUSH_qimm   ; inline operand = 8
  $8EA9  65                         PUSH_qimm   ; inline operand = 5
  $8EAA  E9 16 A2 08                CALL_abs_imm1          $A216 {native}, $08
  $8EAE  24                         STORE_quick   ; inline operand = 4
  $8EAF  04                         LOADL_quick   ; inline operand = 4
  $8EB0  8C FF 00                   LOADR_imm2             $00FF
  $8EB3  C1                         CMPNE
  $8EB4  D8 DC 8E                   JUMPF_abs              $8EDC
  $8EB7  0B                         LOADL_quick   ; inline operand = 11
  $8EB8  14                         LOADR_quick   ; inline operand = 4
  $8EB9  BB                         ADD
  $8EBA  B3                         PUSHL
  $8EBB  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8EBF  26                         STORE_quick   ; inline operand = 6
  $8EC0  36                         PUSH_quick   ; inline operand = 6
  $8EC1  36                         PUSH_quick   ; inline operand = 6
  $8EC2  E9 50 D5 02                CALL_abs_imm1          $D550 {native}, $02
  $8EC6  7F                         ADD_qimm   ; inline operand = 15
  $8EC7  B3                         PUSHL
  $8EC8  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8ECC  B3                         PUSHL
  $8ECD  DE F6 FF                   LEAL_far               $FFF6
  $8ED0  B3                         PUSHL
  $8ED1  04                         LOADL_quick   ; inline operand = 4
  $8ED2  D2                         LSHIFT1
  $8ED3  B4                         POPR
  $8ED4  BB                         ADD
  $8ED5  B0                         DEREF
  $8ED6  B3                         PUSHL
  $8ED7  E9 A5 8D 06                CALL_abs_imm1          $8DA5 {bytecode}, $06
  $8EDB  23                         STORE_quick   ; inline operand = 3
 >$8EDC  04                         LOADL_quick   ; inline operand = 4
  $8EDD  8C FF 00                   LOADR_imm2             $00FF
  $8EE0  C0                         CMPEQ
  $8EE1  D8 93 8E                   JUMPF_abs              $8E93
  $8EE4  60                         PUSH_qimm   ; inline operand = 0
  $8EE5  8D 11                      BYTE_PUSH_imm1         +17
  $8EE7  8D 1C                      BYTE_PUSH_imm1         +28
  $8EE9  63                         PUSH_qimm   ; inline operand = 3
  $8EEA  62                         PUSH_qimm   ; inline operand = 2
  $8EEB  E9 9B A4 0A                CALL_abs_imm1          $A49B {native}, $0A
  $8EEF  03                         LOADL_quick   ; inline operand = 3
  $8EF0  CF                         RETURN

; ============================================================
; sub $8EF1   (frame_off=-8, body @ $8EF6)   [PRG $26EF1]
; ============================================================
  $8EF6  40                         LOADL_qimm   ; inline operand = 0
  $8EF7  29                         STORE_quick   ; inline operand = 9
  $8EF8  8A 6D 66                   LOADL_imm2             $666D
  $8EFB  2B                         STORE_quick   ; inline operand = 11
  $8EFC  40                         LOADL_qimm   ; inline operand = 0
  $8EFD  D6 1F 8F                   JUMP_abs               $8F1F
 >$8F00  0A                         LOADL_quick   ; inline operand = 10
  $8F01  5F                         LOADR_qimm   ; inline operand = 15
  $8F02  DA                         AND
  $8F03  B3                         PUSHL
  $8F04  41                         LOADL_qimm   ; inline operand = 1
  $8F05  B4                         POPR
  $8F06  BD                         LSHIFT
  $8F07  B3                         PUSHL
  $8F08  0A                         LOADL_quick   ; inline operand = 10
  $8F09  54                         LOADR_qimm   ; inline operand = 4
  $8F0A  BE                         URSHIFT
  $8F0B  D2                         LSHIFT1
  $8F0C  1B                         LOADR_quick   ; inline operand = 11
  $8F0D  BB                         ADD
  $8F0E  B0                         DEREF
  $8F0F  B4                         POPR
  $8F10  DA                         AND
  $8F11  D8 1D 8F                   JUMPF_abs              $8F1D
  $8F14  0C                         LOADL_quick   ; inline operand = 12
  $8F15  19                         LOADR_quick   ; inline operand = 9
  $8F16  BB                         ADD
  $8F17  B3                         PUSHL
  $8F18  0A                         LOADL_quick   ; inline operand = 10
  $8F19  D4                         BYTE_POPSTORE
  $8F1A  09                         LOADL_quick   ; inline operand = 9
  $8F1B  D0                         INC
  $8F1C  29                         STORE_quick   ; inline operand = 9
 >$8F1D  0A                         LOADL_quick   ; inline operand = 10
  $8F1E  D0                         INC
 >$8F1F  2A                         STORE_quick   ; inline operand = 10
  $8F20  0A                         LOADL_quick   ; inline operand = 10
  $8F21  5F                         LOADR_qimm   ; inline operand = 15
  $8F22  C6                         UCMPLT
  $8F23  D7 00 8F                   JUMPT_abs              $8F00
  $8F26  09                         LOADL_quick   ; inline operand = 9
  $8F27  CF                         RETURN

; ============================================================
; sub $8F28   (frame_off=-8, body @ $8F2D)   [PRG $26F28]
; ============================================================
  $8F2D  40                         LOADL_qimm   ; inline operand = 0
  $8F2E  29                         STORE_quick   ; inline operand = 9
  $8F2F  8A 6D 66                   LOADL_imm2             $666D
  $8F32  2B                         STORE_quick   ; inline operand = 11
  $8F33  4F                         LOADL_qimm   ; inline operand = 15
  $8F34  D6 56 8F                   JUMP_abs               $8F56
 >$8F37  0A                         LOADL_quick   ; inline operand = 10
  $8F38  5F                         LOADR_qimm   ; inline operand = 15
  $8F39  DA                         AND
  $8F3A  B3                         PUSHL
  $8F3B  41                         LOADL_qimm   ; inline operand = 1
  $8F3C  B4                         POPR
  $8F3D  BD                         LSHIFT
  $8F3E  B3                         PUSHL
  $8F3F  0A                         LOADL_quick   ; inline operand = 10
  $8F40  54                         LOADR_qimm   ; inline operand = 4
  $8F41  BE                         URSHIFT
  $8F42  D2                         LSHIFT1
  $8F43  1B                         LOADR_quick   ; inline operand = 11
  $8F44  BB                         ADD
  $8F45  B0                         DEREF
  $8F46  B4                         POPR
  $8F47  DA                         AND
  $8F48  D8 54 8F                   JUMPF_abs              $8F54
  $8F4B  0C                         LOADL_quick   ; inline operand = 12
  $8F4C  19                         LOADR_quick   ; inline operand = 9
  $8F4D  BB                         ADD
  $8F4E  B3                         PUSHL
  $8F4F  0A                         LOADL_quick   ; inline operand = 10
  $8F50  D4                         BYTE_POPSTORE
  $8F51  09                         LOADL_quick   ; inline operand = 9
  $8F52  D0                         INC
  $8F53  29                         STORE_quick   ; inline operand = 9
 >$8F54  0A                         LOADL_quick   ; inline operand = 10
  $8F55  D0                         INC
 >$8F56  2A                         STORE_quick   ; inline operand = 10
  $8F57  0A                         LOADL_quick   ; inline operand = 10
  $8F58  8B 1F                      BYTE_LOADR_imm1        +31
  $8F5A  C6                         UCMPLT
  $8F5B  D7 37 8F                   JUMPT_abs              $8F37
  $8F5E  09                         LOADL_quick   ; inline operand = 9
  $8F5F  CF                         RETURN

; ============================================================
; sub $8F60   (frame_off=-2, body @ $8F65)   [PRG $26F60]
; ============================================================
  $8F65  AC EC B7                   CALL_abs               $B7EC {native}
  $8F68  8E E8 00                   PUSH_imm2              $00E8
  $8F6B  8E 4F A6                   PUSH_imm2              $A64F
  $8F6E  8E 0C A5                   PUSH_imm2              $A50C
  $8F71  8D 13                      BYTE_PUSH_imm1         +19
  $8F73  8D 11                      BYTE_PUSH_imm1         +17
  $8F75  61                         PUSH_qimm   ; inline operand = 1
  $8F76  68                         PUSH_qimm   ; inline operand = 8
  $8F77  69                         PUSH_qimm   ; inline operand = 9
  $8F78  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8F7C  89 FF                      BYTE_LOADL_imm1        -1
  $8F7E  A8 64 70                   STORE_abs              $7064
  $8F81  40                         LOADL_qimm   ; inline operand = 0
  $8F82  D6 9D 8F                   JUMP_abs               $8F9D
 >$8F85  0B                         LOADL_quick   ; inline operand = 11
  $8F86  73                         ADD_qimm   ; inline operand = 3
  $8F87  B3                         PUSHL
  $8F88  6A                         PUSH_qimm   ; inline operand = 10
  $8F89  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8F8D  0D                         LOADL_quick   ; inline operand = 13
  $8F8E  1B                         LOADR_quick   ; inline operand = 11
  $8F8F  BB                         ADD
  $8F90  D3                         BYTE_DEREF
  $8F91  B3                         PUSHL
  $8F92  E9 50 D5 02                CALL_abs_imm1          $D550 {native}, $02
  $8F96  B3                         PUSHL
  $8F97  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8F9B  0B                         LOADL_quick   ; inline operand = 11
  $8F9C  D0                         INC
 >$8F9D  2B                         STORE_quick   ; inline operand = 11
  $8F9E  0B                         LOADL_quick   ; inline operand = 11
  $8F9F  1C                         LOADR_quick   ; inline operand = 12
  $8FA0  C6                         UCMPLT
  $8FA1  D7 85 8F                   JUMPT_abs              $8F85
  $8FA4  CF                         RETURN

; ============================================================
; sub $8FA5   (frame_off=-8, body @ $8FAA)   [PRG $26FA5]
; ============================================================
  $8FAA  8A E1 00                   LOADL_imm2             $00E1
  $8FAD  A2 F9 FF                   BYTE_STORE_far         $FFF9
  $8FB0  40                         LOADL_qimm   ; inline operand = 0
  $8FB1  A2 FA FF                   BYTE_STORE_far         $FFFA
  $8FB4  40                         LOADL_qimm   ; inline operand = 0
  $8FB5  2A                         STORE_quick   ; inline operand = 10
 >$8FB6  0A                         LOADL_quick   ; inline operand = 10
  $8FB7  73                         ADD_qimm   ; inline operand = 3
  $8FB8  53                         LOADR_qimm   ; inline operand = 3
  $8FB9  BD                         LSHIFT
  $8FBA  D1                         DEC
  $8FBB  A2 F8 FF                   BYTE_STORE_far         $FFF8
  $8FBE  89 48                      BYTE_LOADL_imm1        +72
  $8FC0  A2 FB FF                   BYTE_STORE_far         $FFFB
  $8FC3  61                         PUSH_qimm   ; inline operand = 1
  $8FC4  60                         PUSH_qimm   ; inline operand = 0
  $8FC5  DE F8 FF                   LEAL_far               $FFF8
  $8FC8  B3                         PUSHL
  $8FC9  6D                         PUSH_qimm   ; inline operand = 13
  $8FCA  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8FCE  60                         PUSH_qimm   ; inline operand = 0
  $8FCF  E9 A9 C4 02                CALL_abs_imm1          $C4A9 {native}, $02
  $8FD3  2B                         STORE_quick   ; inline operand = 11
  $8FD4  6A                         PUSH_qimm   ; inline operand = 10
  $8FD5  3B                         PUSH_quick   ; inline operand = 11
  $8FD6  E9 4D CE 04                CALL_abs_imm1          $CE4D {native}, $04
  $8FDA  0B                         LOADL_quick   ; inline operand = 11
  $8FDB  D9 02 00 10 00 E8 8F 20 00 0C 90 EF ... SWITCH_noncontig       count=2   ; .table 2 (key,target) + default (noncontiguous); SWITCH 16=>$8FE8 32=>$900C default=>$8FEF
 >$8FE8  0A                         LOADL_quick   ; inline operand = 10
  $8FE9  D8 EF 8F                   JUMPF_abs              $8FEF
  $8FEC  0A                         LOADL_quick   ; inline operand = 10
  $8FED  D1                         DEC
 >$8FEE  2A                         STORE_quick   ; inline operand = 10
 >$8FEF  0B                         LOADL_quick   ; inline operand = 11
  $8FF0  51                         LOADR_qimm   ; inline operand = 1
  $8FF1  C0                         CMPEQ
  $8FF2  D7 FB 8F                   JUMPT_abs              $8FFB
  $8FF5  0B                         LOADL_quick   ; inline operand = 11
  $8FF6  52                         LOADR_qimm   ; inline operand = 2
  $8FF7  C0                         CMPEQ
  $8FF8  D8 B6 8F                   JUMPF_abs              $8FB6
 >$8FFB  61                         PUSH_qimm   ; inline operand = 1
  $8FFC  60                         PUSH_qimm   ; inline operand = 0
  $8FFD  6C                         PUSH_qimm   ; inline operand = 12
  $8FFE  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $9002  0B                         LOADL_quick   ; inline operand = 11
  $9003  52                         LOADR_qimm   ; inline operand = 2
  $9004  C0                         CMPEQ
  $9005  D8 1E 90                   JUMPF_abs              $901E
  $9008  8A FF 00                   LOADL_imm2             $00FF
  $900B  CF                         RETURN
 >$900C  0C                         LOADL_quick   ; inline operand = 12
  $900D  D1                         DEC
  $900E  B3                         PUSHL
  $900F  0A                         LOADL_quick   ; inline operand = 10
  $9010  B4                         POPR
  $9011  C6                         UCMPLT
  $9012  D8 1A 90                   JUMPF_abs              $901A
  $9015  0A                         LOADL_quick   ; inline operand = 10
  $9016  D0                         INC
  $9017  D6 EE 8F                   JUMP_abs               $8FEE
 >$901A  40                         LOADL_qimm   ; inline operand = 0
  $901B  D6 EE 8F                   JUMP_abs               $8FEE
 >$901E  0A                         LOADL_quick   ; inline operand = 10
  $901F  CF                         RETURN

; ============================================================
; sub $9020   (frame_off=-10, body @ $9025)   [PRG $27020]
; ============================================================
  $9025  8A 62 66                   LOADL_imm2             $6662
  $9028  27                         STORE_quick   ; inline operand = 7
  $9029  07                         LOADL_quick   ; inline operand = 7
  $902A  7B                         ADD_qimm   ; inline operand = 11
  $902B  29                         STORE_quick   ; inline operand = 9
  $902C  40                         LOADL_qimm   ; inline operand = 0
  $902D  2B                         STORE_quick   ; inline operand = 11
  $902E  3C                         PUSH_quick   ; inline operand = 12
  $902F  E9 50 D5 02                CALL_abs_imm1          $D550 {native}, $02
  $9033  2A                         STORE_quick   ; inline operand = 10
  $9034  61                         PUSH_qimm   ; inline operand = 1
  $9035  64                         PUSH_qimm   ; inline operand = 4
  $9036  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $903A  61                         PUSH_qimm   ; inline operand = 1
  $903B  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $903F  A5 67 70                   BYTE_LOADL_abs         $7067
  $9042  5E                         LOADR_qimm   ; inline operand = 14
  $9043  B5                         MULT
  $9044  8C B2 67                   LOADR_imm2             $67B2
  $9047  BB                         ADD
  $9048  B0                         DEREF
  $9049  B3                         PUSHL
  $904A  0C                         LOADL_quick   ; inline operand = 12
  $904B  D2                         LSHIFT1
  $904C  8C 25 B8                   LOADR_imm2             $B825
  $904F  BB                         ADD
  $9050  B3                         PUSHL
  $9051  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $9055  8C 96 00                   LOADR_imm2             $0096
  $9058  B5                         MULT
  $9059  B4                         POPR
  $905A  C4                         SCMPGT
  $905B  D8 68 90                   JUMPF_abs              $9068
  $905E  8E 6B 9C                   PUSH_imm2              $9C6B
  $9061  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $9065  D6 AF 90                   JUMP_abs               $90AF
 >$9068  0A                         LOADL_quick   ; inline operand = 10
  $9069  7F                         ADD_qimm   ; inline operand = 15
  $906A  B3                         PUSHL
  $906B  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $906F  52                         LOADR_qimm   ; inline operand = 2
  $9070  B6                         SDIV
  $9071  28                         STORE_quick   ; inline operand = 8
  $9072  38                         PUSH_quick   ; inline operand = 8
  $9073  8E 96 9C                   PUSH_imm2              $9C96
  $9076  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $907A  AC 9F CD                   CALL_abs               $CD9F {native}
  $907D  D8 AF 90                   JUMPF_abs              $90AF
  $9080  38                         PUSH_quick   ; inline operand = 8
  $9081  07                         LOADL_quick   ; inline operand = 7
  $9082  79                         ADD_qimm   ; inline operand = 9
  $9083  B0                         DEREF
  $9084  B3                         PUSHL
  $9085  8A 60 EA                   LOADL_imm2             $EA60
  $9088  B4                         POPR
  $9089  BC                         SUB
  $908A  B3                         PUSHL
  $908B  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $908F  B3                         PUSHL
  $9090  07                         LOADL_quick   ; inline operand = 7
  $9091  79                         ADD_qimm   ; inline operand = 9
  $9092  B4                         POPR
  $9093  B3                         PUSHL
  $9094  B0                         DEREF
  $9095  BB                         ADD
  $9096  B1                         POPSTORE
  $9097  0C                         LOADL_quick   ; inline operand = 12
  $9098  5F                         LOADR_qimm   ; inline operand = 15
  $9099  DA                         AND
  $909A  B3                         PUSHL
  $909B  41                         LOADL_qimm   ; inline operand = 1
  $909C  B4                         POPR
  $909D  BD                         LSHIFT
  $909E  8B FF                      BYTE_LOADR_imm1        -1
  $90A0  DC                         XOR
  $90A1  B3                         PUSHL
  $90A2  0C                         LOADL_quick   ; inline operand = 12
  $90A3  54                         LOADR_qimm   ; inline operand = 4
  $90A4  BE                         URSHIFT
  $90A5  D2                         LSHIFT1
  $90A6  19                         LOADR_quick   ; inline operand = 9
  $90A7  BB                         ADD
  $90A8  B4                         POPR
  $90A9  B3                         PUSHL
  $90AA  B0                         DEREF
  $90AB  DA                         AND
  $90AC  B1                         POPSTORE
  $90AD  41                         LOADL_qimm   ; inline operand = 1
  $90AE  2B                         STORE_quick   ; inline operand = 11
 >$90AF  0B                         LOADL_quick   ; inline operand = 11
  $90B0  CF                         RETURN

; ============================================================
; sub $90B1   (frame_off=-44, body @ $90B6)   [PRG $270B1]
; ============================================================
  $90B6  40                         LOADL_qimm   ; inline operand = 0
  $90B7  85 D4                      STORE_near             $D4
  $90B9  85 D6                      STORE_near             $D6
  $90BB  85 DA                      STORE_near             $DA
 >$90BD  0C                         LOADL_quick   ; inline operand = 12
  $90BE  D8 CC 90                   JUMPF_abs              $90CC
  $90C1  DE E0 FF                   LEAL_far               $FFE0
  $90C4  B3                         PUSHL
  $90C5  E9 28 8F 02                CALL_abs_imm1          $8F28 {bytecode}, $02
  $90C9  D6 D4 90                   JUMP_abs               $90D4
 >$90CC  DE E0 FF                   LEAL_far               $FFE0
  $90CF  B3                         PUSHL
  $90D0  E9 F1 8E 02                CALL_abs_imm1          $8EF1 {bytecode}, $02
 >$90D4  85 DC                      STORE_near             $DC
  $90D6  81 DC                      LOADL_near             $DC
  $90D8  D7 00 91                   JUMPT_abs              $9100
  $90DB  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $90DE  61                         PUSH_qimm   ; inline operand = 1
  $90DF  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $90E3  8E C1 9C                   PUSH_imm2              $9CC1
  $90E6  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $90EA  81 D6                      LOADL_near             $D6
  $90EC  D8 FD 90                   JUMPF_abs              $90FD
  $90EF  AC EC B7                   CALL_abs               $B7EC {native}
  $90F2  60                         PUSH_qimm   ; inline operand = 0
  $90F3  8D 12                      BYTE_PUSH_imm1         +18
  $90F5  8D 1C                      BYTE_PUSH_imm1         +28
  $90F7  62                         PUSH_qimm   ; inline operand = 2
  $90F8  62                         PUSH_qimm   ; inline operand = 2
  $90F9  E9 9B A4 0A                CALL_abs_imm1          $A49B {native}, $0A
 >$90FD  81 DA                      LOADL_near             $DA
  $90FF  CF                         RETURN
 >$9100  81 D6                      LOADL_near             $D6
  $9102  D7 13 91                   JUMPT_abs              $9113
  $9105  60                         PUSH_qimm   ; inline operand = 0
  $9106  8D 12                      BYTE_PUSH_imm1         +18
  $9108  8D 1C                      BYTE_PUSH_imm1         +28
  $910A  62                         PUSH_qimm   ; inline operand = 2
  $910B  62                         PUSH_qimm   ; inline operand = 2
  $910C  E9 05 A4 0A                CALL_abs_imm1          $A405 {native}, $0A
  $9110  41                         LOADL_qimm   ; inline operand = 1
  $9111  85 D6                      STORE_near             $D6
 >$9113  81 D4                      LOADL_near             $D4
  $9115  D7 22 91                   JUMPT_abs              $9122
  $9118  DE E0 FF                   LEAL_far               $FFE0
  $911B  B3                         PUSHL
  $911C  87 DC                      PUSH_near              $DC
  $911E  E9 60 8F 04                CALL_abs_imm1          $8F60 {bytecode}, $04
 >$9122  61                         PUSH_qimm   ; inline operand = 1
  $9123  64                         PUSH_qimm   ; inline operand = 4
  $9124  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $9128  61                         PUSH_qimm   ; inline operand = 1
  $9129  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $912D  61                         PUSH_qimm   ; inline operand = 1
  $912E  8E D7 9C                   PUSH_imm2              $9CD7
  $9131  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $9135  87 DC                      PUSH_near              $DC
  $9137  E9 A5 8F 02                CALL_abs_imm1          $8FA5 {bytecode}, $02
  $913B  85 DE                      STORE_near             $DE
  $913D  81 DE                      LOADL_near             $DE
  $913F  8C FF 00                   LOADR_imm2             $00FF
  $9142  C1                         CMPNE
  $9143  D8 C0 91                   JUMPF_abs              $91C0
  $9146  DE E0 FF                   LEAL_far               $FFE0
  $9149  B3                         PUSHL
  $914A  81 DE                      LOADL_near             $DE
  $914C  B4                         POPR
  $914D  BB                         ADD
  $914E  D3                         BYTE_DEREF
  $914F  B3                         PUSHL
  $9150  E9 20 90 02                CALL_abs_imm1          $9020 {bytecode}, $02
  $9154  85 D8                      STORE_near             $D8
  $9156  81 D8                      LOADL_near             $D8
  $9158  D8 64 91                   JUMPF_abs              $9164
  $915B  81 DC                      LOADL_near             $DC
  $915D  D1                         DEC
  $915E  85 DC                      STORE_near             $DC
  $9160  40                         LOADL_qimm   ; inline operand = 0
  $9161  D6 69 91                   JUMP_abs               $9169
 >$9164  81 D8                      LOADL_near             $D8
  $9166  85 DA                      STORE_near             $DA
  $9168  41                         LOADL_qimm   ; inline operand = 1
 >$9169  85 D4                      STORE_near             $D4
  $916B  61                         PUSH_qimm   ; inline operand = 1
  $916C  64                         PUSH_qimm   ; inline operand = 4
  $916D  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $9171  81 DC                      LOADL_near             $DC
  $9173  D7 90 91                   JUMPT_abs              $9190
  $9176  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $9179  61                         PUSH_qimm   ; inline operand = 1
  $917A  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $917E  8E ED 9C                   PUSH_imm2              $9CED
  $9181  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $9185  81 D8                      LOADL_near             $D8
  $9187  CD                         SWAP
  $9188  81 DA                      LOADL_near             $DA
  $918A  DB                         OR
  $918B  85 DA                      STORE_near             $DA
  $918D  D6 C9 91                   JUMP_abs               $91C9
 >$9190  81 D8                      LOADL_near             $D8
  $9192  D8 B8 91                   JUMPF_abs              $91B8
  $9195  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $9198  0C                         LOADL_quick   ; inline operand = 12
  $9199  D8 A2 91                   JUMPF_abs              $91A2
  $919C  8A 27 9D                   LOADL_imm2             $9D27
  $919F  D6 A5 91                   JUMP_abs               $91A5
 >$91A2  8A 30 9D                   LOADL_imm2             $9D30
 >$91A5  B3                         PUSHL
  $91A6  8E 0D 9D                   PUSH_imm2              $9D0D
  $91A9  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $91AD  AC 9F CD                   CALL_abs               $CD9F {native}
  $91B0  D7 B8 91                   JUMPT_abs              $91B8
  $91B3  8A FF 00                   LOADL_imm2             $00FF
  $91B6  85 DE                      STORE_near             $DE
 >$91B8  81 D8                      LOADL_near             $D8
  $91BA  CD                         SWAP
  $91BB  81 DA                      LOADL_near             $DA
  $91BD  DB                         OR
  $91BE  85 DA                      STORE_near             $DA
 >$91C0  81 DE                      LOADL_near             $DE
  $91C2  8C FF 00                   LOADR_imm2             $00FF
  $91C5  C1                         CMPNE
  $91C6  D7 BD 90                   JUMPT_abs              $90BD
 >$91C9  AC EC B7                   CALL_abs               $B7EC {native}
  $91CC  60                         PUSH_qimm   ; inline operand = 0
  $91CD  8D 12                      BYTE_PUSH_imm1         +18
  $91CF  8D 1C                      BYTE_PUSH_imm1         +28
  $91D1  62                         PUSH_qimm   ; inline operand = 2
  $91D2  62                         PUSH_qimm   ; inline operand = 2
  $91D3  E9 9B A4 0A                CALL_abs_imm1          $A49B {native}, $0A
  $91D7  81 DA                      LOADL_near             $DA
  $91D9  CF                         RETURN

; ============================================================
; sub $91DA   (frame_off=-3, body @ $91DF)   [PRG $271DA]
; ============================================================
  $91DF  40                         LOADL_qimm   ; inline operand = 0
  $91E0  85 FD                      STORE_near             $FD
 >$91E2  61                         PUSH_qimm   ; inline operand = 1
  $91E3  64                         PUSH_qimm   ; inline operand = 4
  $91E4  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $91E8  61                         PUSH_qimm   ; inline operand = 1
  $91E9  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $91ED  61                         PUSH_qimm   ; inline operand = 1
  $91EE  8E 49 9D                   PUSH_imm2              $9D49
  $91F1  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $91F5  61                         PUSH_qimm   ; inline operand = 1
  $91F6  62                         PUSH_qimm   ; inline operand = 2
  $91F7  8E 36 9D                   PUSH_imm2              $9D36
  $91FA  61                         PUSH_qimm   ; inline operand = 1
  $91FB  67                         PUSH_qimm   ; inline operand = 7
  $91FC  8D 17                      BYTE_PUSH_imm1         +23
  $91FE  68                         PUSH_qimm   ; inline operand = 8
  $91FF  E9 56 A1 0E                CALL_abs_imm1          $A156 {native}, $0E
  $9203  A2 FF FF                   BYTE_STORE_far         $FFFF
  $9206  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $9209  8C FF 00                   LOADR_imm2             $00FF
  $920C  C1                         CMPNE
  $920D  D8 20 92                   JUMPF_abs              $9220
  $9210  8A F0 00                   LOADL_imm2             $00F0
  $9213  A9 63 70                   BYTE_STORE_abs         $7063
  $9216  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $9219  B3                         PUSHL
  $921A  E9 B1 90 02                CALL_abs_imm1          $90B1 {bytecode}, $02
  $921E  85 FD                      STORE_near             $FD
 >$9220  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $9223  8C FF 00                   LOADR_imm2             $00FF
  $9226  C0                         CMPEQ
  $9227  D7 2F 92                   JUMPT_abs              $922F
  $922A  81 FD                      LOADL_near             $FD
  $922C  D8 E2 91                   JUMPF_abs              $91E2
 >$922F  81 FD                      LOADL_near             $FD
  $9231  CF                         RETURN

; ============================================================
; sub $9232   (frame_off=-8, body @ $9237)   [PRG $27232]
; ============================================================
  $9237  8A 6D 66                   LOADL_imm2             $666D
  $923A  28                         STORE_quick   ; inline operand = 8
  $923B  A5 5F 70                   BYTE_LOADL_abs         $705F
  $923E  58                         LOADR_qimm   ; inline operand = 8
  $923F  DA                         AND
  $9240  D8 FD 92                   JUMPF_abs              $92FD
  $9243  A5 5F 70                   BYTE_LOADL_abs         $705F
  $9246  51                         LOADR_qimm   ; inline operand = 1
  $9247  DA                         AND
  $9248  D8 FD 92                   JUMPF_abs              $92FD
  $924B  A5 67 70                   BYTE_LOADL_abs         $7067
  $924E  B3                         PUSHL
  $924F  A5 52 70                   BYTE_LOADL_abs         $7052
  $9252  B4                         POPR
  $9253  C0                         CMPEQ
  $9254  D8 FD 92                   JUMPF_abs              $92FD
  $9257  A5 53 70                   BYTE_LOADL_abs         $7053
  $925A  52                         LOADR_qimm   ; inline operand = 2
  $925B  C0                         CMPEQ
  $925C  D8 FD 92                   JUMPF_abs              $92FD
  $925F  08                         LOADL_quick   ; inline operand = 8
  $9260  72                         ADD_qimm   ; inline operand = 2
  $9261  B0                         DEREF
  $9262  8C 00 80                   LOADR_imm2             $8000
  $9265  DA                         AND
  $9266  D8 FD 92                   JUMPF_abs              $92FD
  $9269  6D                         PUSH_qimm   ; inline operand = 13
  $926A  E9 8C E0 02                CALL_abs_imm1          $E08C {native}, $02
  $926E  61                         PUSH_qimm   ; inline operand = 1
  $926F  E9 C1 E0 02                CALL_abs_imm1          $E0C1 {native}, $02
  $9273  61                         PUSH_qimm   ; inline operand = 1
  $9274  64                         PUSH_qimm   ; inline operand = 4
  $9275  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $9279  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $927C  60                         PUSH_qimm   ; inline operand = 0
  $927D  8E 81 9D                   PUSH_imm2              $9D81
  $9280  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $9284  A5 55 70                   BYTE_LOADL_abs         $7055
  $9287  B3                         PUSHL
  $9288  E9 50 D5 02                CALL_abs_imm1          $D550 {native}, $02
  $928C  B3                         PUSHL
  $928D  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $9291  60                         PUSH_qimm   ; inline operand = 0
  $9292  8E 98 9D                   PUSH_imm2              $9D98
  $9295  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $9299  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $929C  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $929F  61                         PUSH_qimm   ; inline operand = 1
  $92A0  8E A6 9D                   PUSH_imm2              $9DA6
  $92A3  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $92A7  A4 72 6F                   LOADL_abs              $6F72
  $92AA  8C 50 C3                   LOADR_imm2             $C350
  $92AD  C6                         UCMPLT
  $92AE  D8 C8 92                   JUMPF_abs              $92C8
  $92B1  8E D0 07                   PUSH_imm2              $07D0
  $92B4  8A 50 C3                   LOADL_imm2             $C350
  $92B7  A6 72 6F                   LOADR_abs              $6F72
  $92BA  BC                         SUB
  $92BB  B3                         PUSHL
  $92BC  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $92C0  CD                         SWAP
  $92C1  A4 72 6F                   LOADL_abs              $6F72
  $92C4  BB                         ADD
  $92C5  A8 72 6F                   STORE_abs              $6F72
 >$92C8  8E 10 27                   PUSH_imm2              $2710
  $92CB  A4 70 6F                   LOADL_abs              $6F70
  $92CE  A6 58 70                   LOADR_abs              $7058
  $92D1  BB                         ADD
  $92D2  B3                         PUSHL
  $92D3  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $92D7  A8 70 6F                   STORE_abs              $6F70
  $92DA  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $92DD  A5 55 70                   BYTE_LOADL_abs         $7055
  $92E0  5F                         LOADR_qimm   ; inline operand = 15
  $92E1  DA                         AND
  $92E2  B3                         PUSHL
  $92E3  41                         LOADL_qimm   ; inline operand = 1
  $92E4  B4                         POPR
  $92E5  BD                         LSHIFT
  $92E6  8B FF                      BYTE_LOADR_imm1        -1
  $92E8  DC                         XOR
  $92E9  B3                         PUSHL
  $92EA  A5 55 70                   BYTE_LOADL_abs         $7055
  $92ED  54                         LOADR_qimm   ; inline operand = 4
  $92EE  BE                         URSHIFT
  $92EF  D2                         LSHIFT1
  $92F0  18                         LOADR_quick   ; inline operand = 8
  $92F1  BB                         ADD
  $92F2  B4                         POPR
  $92F3  B3                         PUSHL
  $92F4  B0                         DEREF
  $92F5  DA                         AND
  $92F6  B1                         POPSTORE
  $92F7  40                         LOADL_qimm   ; inline operand = 0
  $92F8  A9 5F 70                   BYTE_STORE_abs         $705F
  $92FB  40                         LOADL_qimm   ; inline operand = 0
  $92FC  CF                         RETURN
 >$92FD  A5 5F 70                   BYTE_LOADL_abs         $705F
  $9300  58                         LOADR_qimm   ; inline operand = 8
  $9301  DA                         AND
  $9302  D8 BB 93                   JUMPF_abs              $93BB
  $9305  A5 5F 70                   BYTE_LOADL_abs         $705F
  $9308  51                         LOADR_qimm   ; inline operand = 1
  $9309  DA                         AND
  $930A  D8 BB 93                   JUMPF_abs              $93BB
  $930D  A5 67 70                   BYTE_LOADL_abs         $7067
  $9310  B3                         PUSHL
  $9311  A5 52 70                   BYTE_LOADL_abs         $7052
  $9314  B4                         POPR
  $9315  C0                         CMPEQ
  $9316  D8 BB 93                   JUMPF_abs              $93BB
  $9319  A5 53 70                   BYTE_LOADL_abs         $7053
  $931C  52                         LOADR_qimm   ; inline operand = 2
  $931D  C0                         CMPEQ
  $931E  D8 BB 93                   JUMPF_abs              $93BB
  $9321  6D                         PUSH_qimm   ; inline operand = 13
  $9322  E9 8C E0 02                CALL_abs_imm1          $E08C {native}, $02
  $9326  61                         PUSH_qimm   ; inline operand = 1
  $9327  E9 C1 E0 02                CALL_abs_imm1          $E0C1 {native}, $02
  $932B  61                         PUSH_qimm   ; inline operand = 1
  $932C  64                         PUSH_qimm   ; inline operand = 4
  $932D  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $9331  61                         PUSH_qimm   ; inline operand = 1
  $9332  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $9336  61                         PUSH_qimm   ; inline operand = 1
  $9337  8E DE 9D                   PUSH_imm2              $9DDE
  $933A  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $933E  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $9341  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $9344  61                         PUSH_qimm   ; inline operand = 1
  $9345  8E 00 9E                   PUSH_imm2              $9E00
  $9348  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $934C  AC 9F CD                   CALL_abs               $CD9F {native}
  $934F  D8 63 93                   JUMPF_abs              $9363
  $9352  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $9355  61                         PUSH_qimm   ; inline operand = 1
  $9356  8E 23 9E                   PUSH_imm2              $9E23
  $9359  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $935D  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $9360  D6 B9 93                   JUMP_abs               $93B9
 >$9363  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $9366  61                         PUSH_qimm   ; inline operand = 1
  $9367  8E 44 9E                   PUSH_imm2              $9E44
  $936A  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $936E  A4 70 6F                   LOADL_abs              $6F70
  $9371  A6 58 70                   LOADR_abs              $7058
  $9374  C6                         UCMPLT
  $9375  D8 8D 93                   JUMPF_abs              $938D
  $9378  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $937B  40                         LOADL_qimm   ; inline operand = 0
  $937C  A8 70 6F                   STORE_abs              $6F70
  $937F  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $9382  61                         PUSH_qimm   ; inline operand = 1
  $9383  8E 64 9E                   PUSH_imm2              $9E64
  $9386  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $938A  D6 98 93                   JUMP_abs               $9398
 >$938D  A4 58 70                   LOADL_abs              $7058
  $9390  CD                         SWAP
  $9391  A4 70 6F                   LOADL_abs              $6F70
  $9394  BC                         SUB
  $9395  A8 70 6F                   STORE_abs              $6F70
 >$9398  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $939B  40                         LOADL_qimm   ; inline operand = 0
  $939C  A9 5F 70                   BYTE_STORE_abs         $705F
  $939F  6A                         PUSH_qimm   ; inline operand = 10
  $93A0  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $93A4  55                         LOADR_qimm   ; inline operand = 5
  $93A5  B5                         MULT
  $93A6  90 C8 00                   ADD_imm2               $00C8
  $93A9  B3                         PUSHL
  $93AA  AA 72 6F                   PUSH_abs               $6F72
  $93AD  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $93B1  CD                         SWAP
  $93B2  A4 72 6F                   LOADL_abs              $6F72
  $93B5  BC                         SUB
  $93B6  A8 72 6F                   STORE_abs              $6F72
 >$93B9  40                         LOADL_qimm   ; inline operand = 0
  $93BA  CF                         RETURN
 >$93BB  A5 5F 70                   BYTE_LOADL_abs         $705F
  $93BE  58                         LOADR_qimm   ; inline operand = 8
  $93BF  DA                         AND
  $93C0  D7 94 94                   JUMPT_abs              $9494
  $93C3  A5 5F 70                   BYTE_LOADL_abs         $705F
  $93C6  51                         LOADR_qimm   ; inline operand = 1
  $93C7  DA                         AND
  $93C8  D8 94 94                   JUMPF_abs              $9494
  $93CB  A5 67 70                   BYTE_LOADL_abs         $7067
  $93CE  B3                         PUSHL
  $93CF  A5 52 70                   BYTE_LOADL_abs         $7052
  $93D2  B4                         POPR
  $93D3  C0                         CMPEQ
  $93D4  D8 94 94                   JUMPF_abs              $9494
  $93D7  A5 53 70                   BYTE_LOADL_abs         $7053
  $93DA  52                         LOADR_qimm   ; inline operand = 2
  $93DB  C0                         CMPEQ
  $93DC  D8 94 94                   JUMPF_abs              $9494
  $93DF  6D                         PUSH_qimm   ; inline operand = 13
  $93E0  E9 8C E0 02                CALL_abs_imm1          $E08C {native}, $02
  $93E4  61                         PUSH_qimm   ; inline operand = 1
  $93E5  E9 C1 E0 02                CALL_abs_imm1          $E0C1 {native}, $02
  $93E9  61                         PUSH_qimm   ; inline operand = 1
  $93EA  64                         PUSH_qimm   ; inline operand = 4
  $93EB  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $93EF  61                         PUSH_qimm   ; inline operand = 1
  $93F0  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $93F4  61                         PUSH_qimm   ; inline operand = 1
  $93F5  8E 8C 9E                   PUSH_imm2              $9E8C
  $93F8  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $93FC  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $93FF  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $9402  60                         PUSH_qimm   ; inline operand = 0
  $9403  8E BD 9E                   PUSH_imm2              $9EBD
  $9406  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $940A  A5 55 70                   BYTE_LOADL_abs         $7055
  $940D  B3                         PUSHL
  $940E  E9 50 D5 02                CALL_abs_imm1          $D550 {native}, $02
  $9412  B3                         PUSHL
  $9413  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $9417  60                         PUSH_qimm   ; inline operand = 0
  $9418  8E D7 9E                   PUSH_imm2              $9ED7
  $941B  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $941F  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $9422  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $9425  61                         PUSH_qimm   ; inline operand = 1
  $9426  8E E8 9E                   PUSH_imm2              $9EE8
  $9429  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $942D  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $9430  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $9433  A5 74 6F                   BYTE_LOADL_abs         $6F74
  $9436  B3                         PUSHL
  $9437  62                         PUSH_qimm   ; inline operand = 2
  $9438  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $943C  B4                         POPR
  $943D  BB                         ADD
  $943E  D0                         INC
  $943F  8B 28                      BYTE_LOADR_imm1        +40
  $9441  B5                         MULT
  $9442  29                         STORE_quick   ; inline operand = 9
  $9443  39                         PUSH_quick   ; inline operand = 9
  $9444  8E 12 9F                   PUSH_imm2              $9F12
  $9447  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $944B  AC 9F CD                   CALL_abs               $CD9F {native}
  $944E  D8 80 94                   JUMPF_abs              $9480
  $9451  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $9454  09                         LOADL_quick   ; inline operand = 9
  $9455  51                         LOADR_qimm   ; inline operand = 1
  $9456  BE                         URSHIFT
  $9457  B3                         PUSHL
  $9458  8E 30 9F                   PUSH_imm2              $9F30
  $945B  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $945F  8E 10 27                   PUSH_imm2              $2710
  $9462  09                         LOADL_quick   ; inline operand = 9
  $9463  51                         LOADR_qimm   ; inline operand = 1
  $9464  BE                         URSHIFT
  $9465  A6 70 6F                   LOADR_abs              $6F70
  $9468  BB                         ADD
  $9469  B3                         PUSHL
  $946A  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $946E  A8 70 6F                   STORE_abs              $6F70
  $9471  09                         LOADL_quick   ; inline operand = 9
  $9472  51                         LOADR_qimm   ; inline operand = 1
  $9473  BE                         URSHIFT
  $9474  A8 58 70                   STORE_abs              $7058
  $9477  48                         LOADL_qimm   ; inline operand = 8
  $9478  CD                         SWAP
  $9479  A5 5F 70                   BYTE_LOADL_abs         $705F
  $947C  DB                         OR
  $947D  D6 8C 94                   JUMP_abs               $948C
 >$9480  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $9483  61                         PUSH_qimm   ; inline operand = 1
  $9484  8E 67 9F                   PUSH_imm2              $9F67
  $9487  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $948B  40                         LOADL_qimm   ; inline operand = 0
 >$948C  A9 5F 70                   BYTE_STORE_abs         $705F
  $948F  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $9492  40                         LOADL_qimm   ; inline operand = 0
  $9493  CF                         RETURN
 >$9494  40                         LOADL_qimm   ; inline operand = 0
  $9495  2A                         STORE_quick   ; inline operand = 10
 >$9496  61                         PUSH_qimm   ; inline operand = 1
  $9497  64                         PUSH_qimm   ; inline operand = 4
  $9498  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $949C  61                         PUSH_qimm   ; inline operand = 1
  $949D  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $94A1  61                         PUSH_qimm   ; inline operand = 1
  $94A2  8E 79 9F                   PUSH_imm2              $9F79
  $94A5  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $94A9  62                         PUSH_qimm   ; inline operand = 2
  $94AA  63                         PUSH_qimm   ; inline operand = 3
  $94AB  8E 54 9D                   PUSH_imm2              $9D54
  $94AE  62                         PUSH_qimm   ; inline operand = 2
  $94AF  6A                         PUSH_qimm   ; inline operand = 10
  $94B0  8D 17                      BYTE_PUSH_imm1         +23
  $94B2  68                         PUSH_qimm   ; inline operand = 8
  $94B3  E9 56 A1 0E                CALL_abs_imm1          $A156 {native}, $0E
  $94B7  2B                         STORE_quick   ; inline operand = 11
  $94B8  0B                         LOADL_quick   ; inline operand = 11
  $94B9  8C FF 00                   LOADR_imm2             $00FF
  $94BC  C1                         CMPNE
  $94BD  D8 C9 94                   JUMPF_abs              $94C9
  $94C0  0B                         LOADL_quick   ; inline operand = 11
  $94C1  D2                         LSHIFT1
  $94C2  8C 5A 9D                   LOADR_imm2             $9D5A
  $94C5  BB                         ADD
  $94C6  B0                         DEREF
  $94C7  DD                         CALLPTR
  $94C8  2A                         STORE_quick   ; inline operand = 10
 >$94C9  0B                         LOADL_quick   ; inline operand = 11
  $94CA  8C FF 00                   LOADR_imm2             $00FF
  $94CD  C0                         CMPEQ
  $94CE  D8 96 94                   JUMPF_abs              $9496
  $94D1  AC 87 8A                   CALL_abs               $8A87 {bytecode}
  $94D4  40                         LOADL_qimm   ; inline operand = 0
  $94D5  CF                         RETURN

