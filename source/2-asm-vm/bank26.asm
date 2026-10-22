VM bytecode disassembly
  ROM:          Uncharted Waters (USA).nes
  mode:         bulk dump of bank 26
  opcode spec:  vm-opcodes-v2.toml via nobunaga_vm.OPCODE_INFO (execution-validated lengths)
  labels:       0 CPU addresses named

  bank 26: found 13 bytecode-subroutine stubs

; ============================================================
; sub $8003   (frame_off=-15, body @ $8008)   [PRG $34003]
; ============================================================
  $8008  A4 CE 6F                   LOADL_abs              $6FCE
  $800B  2B                         STORE_quick   ; inline operand = 11
  $800C  60                         PUSH_qimm   ; inline operand = 0
  $800D  E9 9E D5 02                CALL_abs_imm1          $D59E {native}, $02
  $8011  29                         STORE_quick   ; inline operand = 9
  $8012  60                         PUSH_qimm   ; inline operand = 0
  $8013  E9 89 DA 02                CALL_abs_imm1          $DA89 {native}, $02
  $8017  28                         STORE_quick   ; inline operand = 8
  $8018  09                         LOADL_quick   ; inline operand = 9
  $8019  18                         LOADR_quick   ; inline operand = 8
  $801A  C0                         CMPEQ
  $801B  D8 2F 80                   JUMPF_abs              $802F
  $801E  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8021  61                         PUSH_qimm   ; inline operand = 1
  $8022  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $8026  8E 14 89                   PUSH_imm2              $8914
  $8029  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $802D  40                         LOADL_qimm   ; inline operand = 0
  $802E  CF                         RETURN
 >$802F  61                         PUSH_qimm   ; inline operand = 1
  $8030  6A                         PUSH_qimm   ; inline operand = 10
  $8031  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8035  61                         PUSH_qimm   ; inline operand = 1
  $8036  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $803A  0B                         LOADL_quick   ; inline operand = 11
  $803B  5A                         LOADR_qimm   ; inline operand = 10
  $803C  C3                         SCMPLE
  $803D  D8 49 80                   JUMPF_abs              $8049
  $8040  8E 30 89                   PUSH_imm2              $8930
  $8043  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8047  40                         LOADL_qimm   ; inline operand = 0
  $8048  CF                         RETURN
 >$8049  08                         LOADL_quick   ; inline operand = 8
  $804A  19                         LOADR_quick   ; inline operand = 9
  $804B  BC                         SUB
  $804C  27                         STORE_quick   ; inline operand = 7
  $804D  3B                         PUSH_quick   ; inline operand = 11
  $804E  37                         PUSH_quick   ; inline operand = 7
  $804F  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8053  2A                         STORE_quick   ; inline operand = 10
  $8054  3A                         PUSH_quick   ; inline operand = 10
  $8055  8E 63 89                   PUSH_imm2              $8963
  $8058  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $805C  3A                         PUSH_quick   ; inline operand = 10
  $805D  61                         PUSH_qimm   ; inline operand = 1
  $805E  8E 8E 89                   PUSH_imm2              $898E
  $8061  E9 12 CD 06                CALL_abs_imm1          $CD12 {native}, $06
  $8065  26                         STORE_quick   ; inline operand = 6
  $8066  06                         LOADL_quick   ; inline operand = 6
  $8067  8B FF                      BYTE_LOADR_imm1        -1
  $8069  C0                         CMPEQ
  $806A  D8 6F 80                   JUMPF_abs              $806F
  $806D  40                         LOADL_qimm   ; inline operand = 0
  $806E  CF                         RETURN
 >$806F  06                         LOADL_quick   ; inline operand = 6
  $8070  CD                         SWAP
  $8071  A4 CE 6F                   LOADL_abs              $6FCE
  $8074  BC                         SUB
  $8075  A8 CE 6F                   STORE_abs              $6FCE
  $8078  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $807B  8E 97 89                   PUSH_imm2              $8997
  $807E  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8082  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8085  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8088  8E BA 89                   PUSH_imm2              $89BA
  $808B  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $808F  60                         PUSH_qimm   ; inline operand = 0
  $8090  8D 12                      BYTE_PUSH_imm1         +18
  $8092  8D 1C                      BYTE_PUSH_imm1         +28
  $8094  62                         PUSH_qimm   ; inline operand = 2
  $8095  62                         PUSH_qimm   ; inline operand = 2
  $8096  E9 05 A4 0A                CALL_abs_imm1          $A405 {native}, $0A
  $809A  67                         PUSH_qimm   ; inline operand = 7
  $809B  69                         PUSH_qimm   ; inline operand = 9
  $809C  36                         PUSH_quick   ; inline operand = 6
  $809D  8E 71 89                   PUSH_imm2              $8971
  $80A0  8E C0 00                   PUSH_imm2              $00C0
  $80A3  61                         PUSH_qimm   ; inline operand = 1
  $80A4  E9 3A DE 0C                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $0C
  $80A8  85 F1                      STORE_near             $F1
  $80AA  60                         PUSH_qimm   ; inline operand = 0
  $80AB  8D 12                      BYTE_PUSH_imm1         +18
  $80AD  8D 1C                      BYTE_PUSH_imm1         +28
  $80AF  62                         PUSH_qimm   ; inline operand = 2
  $80B0  62                         PUSH_qimm   ; inline operand = 2
  $80B1  E9 9B A4 0A                CALL_abs_imm1          $A49B {native}, $0A
  $80B5  8A F0 00                   LOADL_imm2             $00F0
  $80B8  A9 63 70                   BYTE_STORE_abs         $7063
  $80BB  81 F1                      LOADL_near             $F1
  $80BD  51                         LOADR_qimm   ; inline operand = 1
  $80BE  C0                         CMPEQ
  $80BF  D8 C4 80                   JUMPF_abs              $80C4
  $80C2  40                         LOADL_qimm   ; inline operand = 0
  $80C3  CF                         RETURN
 >$80C4  06                         LOADL_quick   ; inline operand = 6
  $80C5  CD                         SWAP
  $80C6  A4 CE 6F                   LOADL_abs              $6FCE
  $80C9  BB                         ADD
  $80CA  A8 CE 6F                   STORE_abs              $6FCE
  $80CD  81 F1                      LOADL_near             $F1
  $80CF  CF                         RETURN

; ============================================================
; sub $80D0   (frame_off=-8, body @ $80D5)   [PRG $340D0]
; ============================================================
  $80D5  A4 CC 6F                   LOADL_abs              $6FCC
  $80D8  2B                         STORE_quick   ; inline operand = 11
  $80D9  A4 6B 66                   LOADL_abs              $666B
  $80DC  29                         STORE_quick   ; inline operand = 9
  $80DD  09                         LOADL_quick   ; inline operand = 9
  $80DE  8C 78 E6                   LOADR_imm2             $E678
  $80E1  C8                         UCMPGT
  $80E2  D8 F4 80                   JUMPF_abs              $80F4
  $80E5  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $80E8  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $80EB  8E DA 89                   PUSH_imm2              $89DA
  $80EE  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $80F2  40                         LOADL_qimm   ; inline operand = 0
  $80F3  CF                         RETURN
 >$80F4  61                         PUSH_qimm   ; inline operand = 1
  $80F5  6A                         PUSH_qimm   ; inline operand = 10
  $80F6  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $80FA  61                         PUSH_qimm   ; inline operand = 1
  $80FB  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $80FF  0B                         LOADL_quick   ; inline operand = 11
  $8100  8B 64                      BYTE_LOADR_imm1        +100
  $8102  C3                         SCMPLE
  $8103  D8 0F 81                   JUMPF_abs              $810F
  $8106  8E F7 89                   PUSH_imm2              $89F7
  $8109  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $810D  40                         LOADL_qimm   ; inline operand = 0
  $810E  CF                         RETURN
 >$810F  0B                         LOADL_quick   ; inline operand = 11
  $8110  8C 70 17                   LOADR_imm2             $1770
  $8113  C5                         SCMPGE
  $8114  D8 1F 81                   JUMPF_abs              $811F
  $8117  8A 60 EA                   LOADL_imm2             $EA60
  $811A  19                         LOADR_quick   ; inline operand = 9
  $811B  BC                         SUB
  $811C  D6 2D 81                   JUMP_abs               $812D
 >$811F  0B                         LOADL_quick   ; inline operand = 11
  $8120  5A                         LOADR_qimm   ; inline operand = 10
  $8121  B5                         MULT
  $8122  B3                         PUSHL
  $8123  8A 60 EA                   LOADL_imm2             $EA60
  $8126  19                         LOADR_quick   ; inline operand = 9
  $8127  BC                         SUB
  $8128  B3                         PUSHL
  $8129  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
 >$812D  2A                         STORE_quick   ; inline operand = 10
  $812E  0A                         LOADL_quick   ; inline operand = 10
  $812F  8C E8 03                   LOADR_imm2             $03E8
  $8132  B8                         UDIV
  $8133  8C E8 03                   LOADR_imm2             $03E8
  $8136  B5                         MULT
  $8137  2A                         STORE_quick   ; inline operand = 10
  $8138  3A                         PUSH_quick   ; inline operand = 10
  $8139  8E 29 8A                   PUSH_imm2              $8A29
  $813C  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8140  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8143  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8146  3A                         PUSH_quick   ; inline operand = 10
  $8147  61                         PUSH_qimm   ; inline operand = 1
  $8148  8E 57 8A                   PUSH_imm2              $8A57
  $814B  E9 12 CD 06                CALL_abs_imm1          $CD12 {native}, $06
  $814F  28                         STORE_quick   ; inline operand = 8
  $8150  08                         LOADL_quick   ; inline operand = 8
  $8151  8B FF                      BYTE_LOADR_imm1        -1
  $8153  C0                         CMPEQ
  $8154  D8 59 81                   JUMPF_abs              $8159
  $8157  40                         LOADL_qimm   ; inline operand = 0
  $8158  CF                         RETURN
 >$8159  08                         LOADL_quick   ; inline operand = 8
  $815A  CD                         SWAP
  $815B  A4 6B 66                   LOADL_abs              $666B
  $815E  BB                         ADD
  $815F  A8 6B 66                   STORE_abs              $666B
  $8162  08                         LOADL_quick   ; inline operand = 8
  $8163  5A                         LOADR_qimm   ; inline operand = 10
  $8164  B8                         UDIV
  $8165  D0                         INC
  $8166  CD                         SWAP
  $8167  A4 CC 6F                   LOADL_abs              $6FCC
  $816A  BC                         SUB
  $816B  A8 CC 6F                   STORE_abs              $6FCC
  $816E  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8171  8E 6B 8A                   PUSH_imm2              $8A6B
  $8174  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8178  40                         LOADL_qimm   ; inline operand = 0
  $8179  CF                         RETURN

; ============================================================
; sub $817A   (frame_off=-11, body @ $817F)   [PRG $3417A]
; ============================================================
  $817F  A5 40 65                   BYTE_LOADL_abs         $6540
  $8182  A2 FA FF                   BYTE_STORE_far         $FFFA
  $8185  A5 5F 70                   BYTE_LOADL_abs         $705F
  $8188  51                         LOADR_qimm   ; inline operand = 1
  $8189  DA                         AND
  $818A  D8 BF 81                   JUMPF_abs              $81BF
  $818D  A5 67 70                   BYTE_LOADL_abs         $7067
  $8190  B3                         PUSHL
  $8191  A5 52 70                   BYTE_LOADL_abs         $7052
  $8194  B4                         POPR
  $8195  C0                         CMPEQ
  $8196  D8 BF 81                   JUMPF_abs              $81BF
  $8199  A5 53 70                   BYTE_LOADL_abs         $7053
  $819C  D7 BF 81                   JUMPT_abs              $81BF
  $819F  A5 54 70                   BYTE_LOADL_abs         $7054
  $81A2  54                         LOADR_qimm   ; inline operand = 4
  $81A3  C0                         CMPEQ
  $81A4  D8 BF 81                   JUMPF_abs              $81BF
  $81A7  61                         PUSH_qimm   ; inline operand = 1
  $81A8  6A                         PUSH_qimm   ; inline operand = 10
  $81A9  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $81AD  61                         PUSH_qimm   ; inline operand = 1
  $81AE  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $81B2  61                         PUSH_qimm   ; inline operand = 1
  $81B3  8E 73 8C                   PUSH_imm2              $8C73
  $81B6  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $81BA  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $81BD  41                         LOADL_qimm   ; inline operand = 1
  $81BE  CF                         RETURN
 >$81BF  8D 64                      BYTE_PUSH_imm1         +100
  $81C1  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $81C5  B3                         PUSHL
  $81C6  A0 FA FF                   BYTE_LOADL_far         $FFFA
  $81C9  B4                         POPR
  $81CA  C6                         UCMPLT
  $81CB  D8 04 82                   JUMPF_abs              $8204
  $81CE  A5 74 6F                   BYTE_LOADL_abs         $6F74
  $81D1  B3                         PUSHL
  $81D2  63                         PUSH_qimm   ; inline operand = 3
  $81D3  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $81D7  B4                         POPR
  $81D8  BB                         ADD
  $81D9  53                         LOADR_qimm   ; inline operand = 3
  $81DA  C6                         UCMPLT
  $81DB  D8 04 82                   JUMPF_abs              $8204
  $81DE  61                         PUSH_qimm   ; inline operand = 1
  $81DF  6A                         PUSH_qimm   ; inline operand = 10
  $81E0  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $81E4  61                         PUSH_qimm   ; inline operand = 1
  $81E5  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $81E9  8E A2 8C                   PUSH_imm2              $8CA2
  $81EC  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $81F0  60                         PUSH_qimm   ; inline operand = 0
  $81F1  60                         PUSH_qimm   ; inline operand = 0
  $81F2  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $81F6  61                         PUSH_qimm   ; inline operand = 1
  $81F7  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $81FB  8E E4 8C                   PUSH_imm2              $8CE4
  $81FE  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8202  41                         LOADL_qimm   ; inline operand = 1
  $8203  CF                         RETURN
 >$8204  8D 10                      BYTE_PUSH_imm1         +16
  $8206  E9 D6 E0 02                CALL_abs_imm1          $E0D6 {native}, $02
  $820A  6B                         PUSH_qimm   ; inline operand = 11
  $820B  E9 8C E0 02                CALL_abs_imm1          $E08C {native}, $02
  $820F  61                         PUSH_qimm   ; inline operand = 1
  $8210  6C                         PUSH_qimm   ; inline operand = 12
  $8211  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8215  61                         PUSH_qimm   ; inline operand = 1
  $8216  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $821A  60                         PUSH_qimm   ; inline operand = 0
  $821B  8E 0C 8D                   PUSH_imm2              $8D0C
  $821E  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8222  AA 42 65                   PUSH_abs               $6542
  $8225  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8229  60                         PUSH_qimm   ; inline operand = 0
  $822A  8E 12 8D                   PUSH_imm2              $8D12
  $822D  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8231  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $8234  60                         PUSH_qimm   ; inline operand = 0
  $8235  60                         PUSH_qimm   ; inline operand = 0
  $8236  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $823A  61                         PUSH_qimm   ; inline operand = 1
  $823B  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $823F  61                         PUSH_qimm   ; inline operand = 1
  $8240  8E 30 8D                   PUSH_imm2              $8D30
  $8243  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8247  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $824A  A0 FA FF                   BYTE_LOADL_far         $FFFA
  $824D  8B 2D                      BYTE_LOADR_imm1        +45
  $824F  B8                         UDIV
  $8250  A2 FF FF                   BYTE_STORE_far         $FFFF
  $8253  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8256  D8 6C 82                   JUMPF_abs              $826C
  $8259  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $825C  B3                         PUSHL
  $825D  45                         LOADL_qimm   ; inline operand = 5
  $825E  B4                         POPR
  $825F  BC                         SUB
  $8260  B3                         PUSHL
  $8261  41                         LOADL_qimm   ; inline operand = 1
  $8262  B4                         POPR
  $8263  BD                         LSHIFT
  $8264  B3                         PUSHL
  $8265  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8269  D6 6D 82                   JUMP_abs               $826D
 >$826C  41                         LOADL_qimm   ; inline operand = 1
 >$826D  A2 FE FF                   BYTE_STORE_far         $FFFE
  $8270  A0 FA FF                   BYTE_LOADL_far         $FFFA
  $8273  8B 64                      BYTE_LOADR_imm1        +100
  $8275  C6                         UCMPLT
  $8276  D8 8C 82                   JUMPF_abs              $828C
  $8279  A0 FA FF                   BYTE_LOADL_far         $FFFA
  $827C  B3                         PUSHL
  $827D  89 64                      BYTE_LOADL_imm1        +100
  $827F  B4                         POPR
  $8280  BC                         SUB
  $8281  5A                         LOADR_qimm   ; inline operand = 10
  $8282  B8                         UDIV
  $8283  D0                         INC
  $8284  B3                         PUSHL
  $8285  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8289  D6 8D 82                   JUMP_abs               $828D
 >$828C  40                         LOADL_qimm   ; inline operand = 0
 >$828D  A2 F9 FF                   BYTE_STORE_far         $FFF9
  $8290  61                         PUSH_qimm   ; inline operand = 1
  $8291  6C                         PUSH_qimm   ; inline operand = 12
  $8292  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8296  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8299  61                         PUSH_qimm   ; inline operand = 1
  $829A  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $829D  D2                         LSHIFT1
  $829E  8C 90 8A                   LOADR_imm2             $8A90
  $82A1  BB                         ADD
  $82A2  B0                         DEREF
  $82A3  B3                         PUSHL
  $82A4  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $82A8  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $82AB  60                         PUSH_qimm   ; inline operand = 0
  $82AC  60                         PUSH_qimm   ; inline operand = 0
  $82AD  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $82B1  61                         PUSH_qimm   ; inline operand = 1
  $82B2  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $82B6  61                         PUSH_qimm   ; inline operand = 1
  $82B7  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $82BA  D2                         LSHIFT1
  $82BB  8C 4F 8B                   LOADR_imm2             $8B4F
  $82BE  BB                         ADD
  $82BF  B0                         DEREF
  $82C0  B3                         PUSHL
  $82C1  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $82C5  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $82C8  A4 6B 66                   LOADL_abs              $666B
  $82CB  8C 90 01                   LOADR_imm2             $0190
  $82CE  C6                         UCMPLT
  $82CF  D8 D6 82                   JUMPF_abs              $82D6
  $82D2  42                         LOADL_qimm   ; inline operand = 2
  $82D3  D6 D7 82                   JUMP_abs               $82D7
 >$82D6  43                         LOADL_qimm   ; inline operand = 3
 >$82D7  A2 FD FF                   BYTE_STORE_far         $FFFD
  $82DA  AC 01 B8                   CALL_abs               $B801 (draw_box_frame) {native}
 >$82DD  63                         PUSH_qimm   ; inline operand = 3
  $82DE  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $82E1  B3                         PUSHL
  $82E2  8E 53 8C                   PUSH_imm2              $8C53
  $82E5  62                         PUSH_qimm   ; inline operand = 2
  $82E6  60                         PUSH_qimm   ; inline operand = 0
  $82E7  8D 15                      BYTE_PUSH_imm1         +21
  $82E9  68                         PUSH_qimm   ; inline operand = 8
  $82EA  E9 56 A1 0E                CALL_abs_imm1          $A156 {native}, $0E
  $82EE  A2 FC FF                   BYTE_STORE_far         $FFFC
  $82F1  A0 FC FF                   BYTE_LOADL_far         $FFFC
  $82F4  8C FF 00                   LOADR_imm2             $00FF
  $82F7  C0                         CMPEQ
  $82F8  D7 DD 82                   JUMPT_abs              $82DD
  $82FB  A0 FC FF                   BYTE_LOADL_far         $FFFC
  $82FE  D7 56 83                   JUMPT_abs              $8356
  $8301  61                         PUSH_qimm   ; inline operand = 1
  $8302  6C                         PUSH_qimm   ; inline operand = 12
  $8303  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8307  61                         PUSH_qimm   ; inline operand = 1
  $8308  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $830C  61                         PUSH_qimm   ; inline operand = 1
  $830D  8E 54 8D                   PUSH_imm2              $8D54
  $8310  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8314  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8317  A5 C1 6B                   BYTE_LOADL_abs         $6BC1
  $831A  D6 4A 83                   JUMP_abs               $834A
 >$831D  60                         PUSH_qimm   ; inline operand = 0
  $831E  60                         PUSH_qimm   ; inline operand = 0
  $831F  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8323  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8326  61                         PUSH_qimm   ; inline operand = 1
  $8327  8E 75 8D                   PUSH_imm2              $8D75
  $832A  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $832E  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8331  61                         PUSH_qimm   ; inline operand = 1
  $8332  6C                         PUSH_qimm   ; inline operand = 12
  $8333  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8337  61                         PUSH_qimm   ; inline operand = 1
  $8338  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $833C  61                         PUSH_qimm   ; inline operand = 1
  $833D  8E 97 8D                   PUSH_imm2              $8D97
  $8340  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8344  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8347  A5 C0 6B                   BYTE_LOADL_abs         $6BC0
 >$834A  5F                         LOADR_qimm   ; inline operand = 15
  $834B  B5                         MULT
  $834C  8B 64                      BYTE_LOADR_imm1        +100
  $834E  B8                         UDIV
  $834F  75                         ADD_qimm   ; inline operand = 5
  $8350  A2 FB FF                   BYTE_STORE_far         $FFFB
  $8353  D6 5E 84                   JUMP_abs               $845E
 >$8356  A0 FC FF                   BYTE_LOADL_far         $FFFC
  $8359  51                         LOADR_qimm   ; inline operand = 1
  $835A  C0                         CMPEQ
  $835B  D7 1D 83                   JUMPT_abs              $831D
  $835E  8A 6D 66                   LOADL_imm2             $666D
  $8361  85 F5                      STORE_near             $F5
  $8363  40                         LOADL_qimm   ; inline operand = 0
  $8364  A2 F8 FF                   BYTE_STORE_far         $FFF8
  $8367  4F                         LOADL_qimm   ; inline operand = 15
  $8368  D6 8E 83                   JUMP_abs               $838E
 >$836B  A0 F7 FF                   BYTE_LOADL_far         $FFF7
  $836E  5F                         LOADR_qimm   ; inline operand = 15
  $836F  DA                         AND
  $8370  B3                         PUSHL
  $8371  41                         LOADL_qimm   ; inline operand = 1
  $8372  B4                         POPR
  $8373  BD                         LSHIFT
  $8374  B3                         PUSHL
  $8375  A0 F7 FF                   BYTE_LOADL_far         $FFF7
  $8378  54                         LOADR_qimm   ; inline operand = 4
  $8379  BE                         URSHIFT
  $837A  D2                         LSHIFT1
  $837B  83 F5                      LOADR_near             $F5
  $837D  BB                         ADD
  $837E  B0                         DEREF
  $837F  B4                         POPR
  $8380  DA                         AND
  $8381  D8 8A 83                   JUMPF_abs              $838A
  $8384  A0 F7 FF                   BYTE_LOADL_far         $FFF7
  $8387  A2 F8 FF                   BYTE_STORE_far         $FFF8
 >$838A  A0 F7 FF                   BYTE_LOADL_far         $FFF7
  $838D  D0                         INC
 >$838E  A2 F7 FF                   BYTE_STORE_far         $FFF7
  $8391  A0 F7 FF                   BYTE_LOADL_far         $FFF7
  $8394  8B 1E                      BYTE_LOADR_imm1        +30
  $8396  C7                         UCMPLE
  $8397  D7 6B 83                   JUMPT_abs              $836B
  $839A  A0 F8 FF                   BYTE_LOADL_far         $FFF8
  $839D  D8 0D 84                   JUMPF_abs              $840D
  $83A0  60                         PUSH_qimm   ; inline operand = 0
  $83A1  60                         PUSH_qimm   ; inline operand = 0
  $83A2  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $83A6  61                         PUSH_qimm   ; inline operand = 1
  $83A7  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $83AB  60                         PUSH_qimm   ; inline operand = 0
  $83AC  8E AF 8D                   PUSH_imm2              $8DAF
  $83AF  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $83B3  A0 F8 FF                   BYTE_LOADL_far         $FFF8
  $83B6  B3                         PUSHL
  $83B7  E9 50 D5 02                CALL_abs_imm1          $D550 {native}, $02
  $83BB  B3                         PUSHL
  $83BC  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $83C0  60                         PUSH_qimm   ; inline operand = 0
  $83C1  8E CC 8D                   PUSH_imm2              $8DCC
  $83C4  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $83C8  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $83CB  61                         PUSH_qimm   ; inline operand = 1
  $83CC  6C                         PUSH_qimm   ; inline operand = 12
  $83CD  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $83D1  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $83D4  61                         PUSH_qimm   ; inline operand = 1
  $83D5  8E DC 8D                   PUSH_imm2              $8DDC
  $83D8  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $83DC  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $83DF  D2                         LSHIFT1
  $83E0  8C 25 B8                   LOADR_imm2             $B825
  $83E3  BB                         ADD
  $83E4  B3                         PUSHL
  $83E5  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $83E9  8B 28                      BYTE_LOADR_imm1        +40
  $83EB  B5                         MULT
  $83EC  A2 FB FF                   BYTE_STORE_far         $FFFB
  $83EF  A0 F8 FF                   BYTE_LOADL_far         $FFF8
  $83F2  5F                         LOADR_qimm   ; inline operand = 15
  $83F3  DA                         AND
  $83F4  B3                         PUSHL
  $83F5  41                         LOADL_qimm   ; inline operand = 1
  $83F6  B4                         POPR
  $83F7  BD                         LSHIFT
  $83F8  8B FF                      BYTE_LOADR_imm1        -1
  $83FA  DC                         XOR
  $83FB  B3                         PUSHL
  $83FC  A0 F8 FF                   BYTE_LOADL_far         $FFF8
  $83FF  54                         LOADR_qimm   ; inline operand = 4
  $8400  BE                         URSHIFT
  $8401  D2                         LSHIFT1
  $8402  83 F5                      LOADR_near             $F5
  $8404  BB                         ADD
  $8405  B4                         POPR
  $8406  B3                         PUSHL
  $8407  B0                         DEREF
  $8408  DA                         AND
  $8409  B1                         POPSTORE
  $840A  D6 5B 84                   JUMP_abs               $845B
 >$840D  60                         PUSH_qimm   ; inline operand = 0
  $840E  60                         PUSH_qimm   ; inline operand = 0
  $840F  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8413  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8416  61                         PUSH_qimm   ; inline operand = 1
  $8417  8E FA 8D                   PUSH_imm2              $8DFA
  $841A  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $841E  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8421  8A 2C 01                   LOADL_imm2             $012C
  $8424  CD                         SWAP
  $8425  A4 6B 66                   LOADL_abs              $666B
  $8428  BC                         SUB
  $8429  A8 6B 66                   STORE_abs              $666B
  $842C  61                         PUSH_qimm   ; inline operand = 1
  $842D  6C                         PUSH_qimm   ; inline operand = 12
  $842E  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8432  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $8435  D7 4A 84                   JUMPT_abs              $844A
  $8438  61                         PUSH_qimm   ; inline operand = 1
  $8439  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $843D  61                         PUSH_qimm   ; inline operand = 1
  $843E  8E 1A 8E                   PUSH_imm2              $8E1A
  $8441  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8445  89 14                      BYTE_LOADL_imm1        +20
  $8447  D6 58 84                   JUMP_abs               $8458
 >$844A  61                         PUSH_qimm   ; inline operand = 1
  $844B  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $844F  61                         PUSH_qimm   ; inline operand = 1
  $8450  8E 29 8E                   PUSH_imm2              $8E29
  $8453  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8457  40                         LOADL_qimm   ; inline operand = 0
 >$8458  A2 FB FF                   BYTE_STORE_far         $FFFB
 >$845B  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
 >$845E  A0 FA FF                   BYTE_LOADL_far         $FFFA
  $8461  8C C8 00                   LOADR_imm2             $00C8
  $8464  C6                         UCMPLT
  $8465  D8 84 84                   JUMPF_abs              $8484
  $8468  8E C8 00                   PUSH_imm2              $00C8
  $846B  A0 FB FF                   BYTE_LOADL_far         $FFFB
  $846E  B3                         PUSHL
  $846F  A0 FA FF                   BYTE_LOADL_far         $FFFA
  $8472  B3                         PUSHL
  $8473  65                         PUSH_qimm   ; inline operand = 5
  $8474  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8478  B4                         POPR
  $8479  BB                         ADD
  $847A  B4                         POPR
  $847B  BB                         ADD
  $847C  B3                         PUSHL
  $847D  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8481  A9 40 65                   BYTE_STORE_abs         $6540
 >$8484  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $8487  D7 B3 84                   JUMPT_abs              $84B3
  $848A  A4 CC 6F                   LOADL_abs              $6FCC
  $848D  8C 88 13                   LOADR_imm2             $1388
  $8490  C2                         SCMPLT
  $8491  D8 9F 84                   JUMPF_abs              $849F
  $8494  8A E8 03                   LOADL_imm2             $03E8
  $8497  CD                         SWAP
  $8498  A4 CC 6F                   LOADL_abs              $6FCC
  $849B  BB                         ADD
  $849C  A8 CC 6F                   STORE_abs              $6FCC
 >$849F  61                         PUSH_qimm   ; inline operand = 1
  $84A0  6C                         PUSH_qimm   ; inline operand = 12
  $84A1  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $84A5  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $84A8  60                         PUSH_qimm   ; inline operand = 0
  $84A9  8E 54 8E                   PUSH_imm2              $8E54
  $84AC  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $84B0  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
 >$84B3  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $84B6  61                         PUSH_qimm   ; inline operand = 1
  $84B7  8E 95 8E                   PUSH_imm2              $8E95
  $84BA  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $84BE  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $84C1  8D 10                      BYTE_PUSH_imm1         +16
  $84C3  E9 D6 E0 02                CALL_abs_imm1          $E0D6 {native}, $02
  $84C7  41                         LOADL_qimm   ; inline operand = 1
  $84C8  CF                         RETURN

; ============================================================
; sub $84C9   (frame_off=+0, body @ $84CE)   [PRG $344C9]
; ============================================================
  $84CE  A5 67 70                   BYTE_LOADL_abs         $7067
  $84D1  D7 D8 84                   JUMPT_abs              $84D8
  $84D4  66                         PUSH_qimm   ; inline operand = 6
  $84D5  D6 EE 84                   JUMP_abs               $84EE
 >$84D8  A0 0B 00                   BYTE_LOADL_far         $000B
  $84DB  5B                         LOADR_qimm   ; inline operand = 11
  $84DC  C8                         UCMPGT
  $84DD  D8 ED 84                   JUMPF_abs              $84ED
  $84E0  A0 0B 00                   BYTE_LOADL_far         $000B
  $84E3  8B 1F                      BYTE_LOADR_imm1        +31
  $84E5  C6                         UCMPLT
  $84E6  D8 ED 84                   JUMPF_abs              $84ED
  $84E9  68                         PUSH_qimm   ; inline operand = 8
  $84EA  D6 EE 84                   JUMP_abs               $84EE
 >$84ED  67                         PUSH_qimm   ; inline operand = 7
 >$84EE  E9 8C E0 02                CALL_abs_imm1          $E08C {native}, $02
  $84F2  61                         PUSH_qimm   ; inline operand = 1
  $84F3  E9 C1 E0 02                CALL_abs_imm1          $E0C1 {native}, $02
  $84F7  CF                         RETURN

; ============================================================
; sub $84F8   (frame_off=-2, body @ $84FD)   [PRG $344F8]
; ============================================================
  $84FD  A5 67 70                   BYTE_LOADL_abs         $7067
  $8500  8B 13                      BYTE_LOADR_imm1        +19
  $8502  B5                         MULT
  $8503  8C D8 AF                   LOADR_imm2             $AFD8
  $8506  BB                         ADD
  $8507  2B                         STORE_quick   ; inline operand = 11
  $8508  60                         PUSH_qimm   ; inline operand = 0
  $8509  60                         PUSH_qimm   ; inline operand = 0
  $850A  68                         PUSH_qimm   ; inline operand = 8
  $850B  8D 1E                      BYTE_PUSH_imm1         +30
  $850D  8D 14                      BYTE_PUSH_imm1         +20
  $850F  61                         PUSH_qimm   ; inline operand = 1
  $8510  68                         PUSH_qimm   ; inline operand = 8
  $8511  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $8515  AC 89 A5                   CALL_abs               $A589 {native}
  $8518  8E E7 00                   PUSH_imm2              $00E7
  $851B  8E B6 B4                   PUSH_imm2              $B4B6
  $851E  8E 52 B4                   PUSH_imm2              $B452
  $8521  65                         PUSH_qimm   ; inline operand = 5
  $8522  8D 14                      BYTE_PUSH_imm1         +20
  $8524  8D 15                      BYTE_PUSH_imm1         +21
  $8526  66                         PUSH_qimm   ; inline operand = 6
  $8527  69                         PUSH_qimm   ; inline operand = 9
  $8528  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $852C  8D 16                      BYTE_PUSH_imm1         +22
  $852E  68                         PUSH_qimm   ; inline operand = 8
  $852F  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8533  61                         PUSH_qimm   ; inline operand = 1
  $8534  8E 26 8F                   PUSH_imm2              $8F26
  $8537  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $853B  CF                         RETURN

; ============================================================
; sub $853C   (frame_off=-4, body @ $8541)   [PRG $3453C]
; ============================================================
  $8541  A0 0B 00                   BYTE_LOADL_far         $000B
  $8544  8B 32                      BYTE_LOADR_imm1        +50
  $8546  C9                         UCMPGE
  $8547  D8 55 85                   JUMPF_abs              $8555
  $854A  A0 0B 00                   BYTE_LOADL_far         $000B
  $854D  8C 04 8F                   LOADR_imm2             $8F04
  $8550  BB                         ADD
  $8551  D3                         BYTE_DEREF
  $8552  2B                         STORE_quick   ; inline operand = 11
  $8553  0B                         LOADL_quick   ; inline operand = 11
  $8554  CF                         RETURN
 >$8555  A0 0B 00                   BYTE_LOADL_far         $000B
  $8558  52                         LOADR_qimm   ; inline operand = 2
  $8559  C0                         CMPEQ
  $855A  D7 65 85                   JUMPT_abs              $8565
  $855D  A0 0B 00                   BYTE_LOADL_far         $000B
  $8560  5C                         LOADR_qimm   ; inline operand = 12
  $8561  C0                         CMPEQ
  $8562  D8 67 85                   JUMPF_abs              $8567
 >$8565  45                         LOADL_qimm   ; inline operand = 5
  $8566  CF                         RETURN
 >$8567  A0 0B 00                   BYTE_LOADL_far         $000B
  $856A  55                         LOADR_qimm   ; inline operand = 5
  $856B  B5                         MULT
  $856C  8C 0A B5                   LOADR_imm2             $B50A
  $856F  BB                         ADD
  $8570  2A                         STORE_quick   ; inline operand = 10
  $8571  3A                         PUSH_quick   ; inline operand = 10
  $8572  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8576  2B                         STORE_quick   ; inline operand = 11
  $8577  0B                         LOADL_quick   ; inline operand = 11
  $8578  CF                         RETURN

; ============================================================
; sub $8579   (frame_off=-4, body @ $857E)   [PRG $34579]
; ============================================================
  $857E  0C                         LOADL_quick   ; inline operand = 12
  $857F  53                         LOADR_qimm   ; inline operand = 3
  $8580  C6                         UCMPLT
  $8581  D8 88 85                   JUMPF_abs              $8588
  $8584  40                         LOADL_qimm   ; inline operand = 0
  $8585  D6 8B 85                   JUMP_abs               $858B
 >$8588  0C                         LOADL_quick   ; inline operand = 12
  $8589  8F FE                      BYTE_ADD_imm1          -2
 >$858B  2A                         STORE_quick   ; inline operand = 10
  $858C  3E                         PUSH_quick   ; inline operand = 14
  $858D  0A                         LOADL_quick   ; inline operand = 10
  $858E  D2                         LSHIFT1
  $858F  D2                         LSHIFT1
  $8590  B3                         PUSHL
  $8591  0D                         LOADL_quick   ; inline operand = 13
  $8592  54                         LOADR_qimm   ; inline operand = 4
  $8593  BD                         LSHIFT
  $8594  B4                         POPR
  $8595  BB                         ADD
  $8596  8C 4C 8F                   LOADR_imm2             $8F4C
  $8599  BB                         ADD
  $859A  B0                         DEREF
  $859B  B3                         PUSHL
  $859C  0A                         LOADL_quick   ; inline operand = 10
  $859D  D2                         LSHIFT1
  $859E  D2                         LSHIFT1
  $859F  B3                         PUSHL
  $85A0  0D                         LOADL_quick   ; inline operand = 13
  $85A1  54                         LOADR_qimm   ; inline operand = 4
  $85A2  BD                         LSHIFT
  $85A3  B4                         POPR
  $85A4  BB                         ADD
  $85A5  8C 4A 8F                   LOADR_imm2             $8F4A
  $85A8  BB                         ADD
  $85A9  B0                         DEREF
  $85AA  B3                         PUSHL
  $85AB  0A                         LOADL_quick   ; inline operand = 10
  $85AC  D2                         LSHIFT1
  $85AD  8C F7 8F                   LOADR_imm2             $8FF7
  $85B0  BB                         ADD
  $85B1  D3                         BYTE_DEREF
  $85B2  B3                         PUSHL
  $85B3  0A                         LOADL_quick   ; inline operand = 10
  $85B4  D2                         LSHIFT1
  $85B5  8C F6 8F                   LOADR_imm2             $8FF6
  $85B8  BB                         ADD
  $85B9  D3                         BYTE_DEREF
  $85BA  B3                         PUSHL
  $85BB  0C                         LOADL_quick   ; inline operand = 12
  $85BC  D2                         LSHIFT1
  $85BD  8C EB 8F                   LOADR_imm2             $8FEB
  $85C0  BB                         ADD
  $85C1  D3                         BYTE_DEREF
  $85C2  B3                         PUSHL
  $85C3  0C                         LOADL_quick   ; inline operand = 12
  $85C4  D2                         LSHIFT1
  $85C5  8C EA 8F                   LOADR_imm2             $8FEA
  $85C8  BB                         ADD
  $85C9  D3                         BYTE_DEREF
  $85CA  B3                         PUSHL
  $85CB  69                         PUSH_qimm   ; inline operand = 9
  $85CC  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $85D0  CF                         RETURN

; ============================================================
; sub $85D1   (frame_off=-9, body @ $85D6)   [PRG $345D1]
; ============================================================
  $85D6  8A E1 00                   LOADL_imm2             $00E1
  $85D9  85 F7                      STORE_near             $F7
  $85DB  A0 0B 00                   BYTE_LOADL_far         $000B
  $85DE  B3                         PUSHL
  $85DF  E9 3C 85 02                CALL_abs_imm1          $853C {bytecode}, $02
  $85E3  85 FB                      STORE_near             $FB
  $85E5  81 FB                      LOADL_near             $FB
  $85E7  53                         LOADR_qimm   ; inline operand = 3
  $85E8  C0                         CMPEQ
  $85E9  D7 F3 85                   JUMPT_abs              $85F3
  $85EC  81 FB                      LOADL_near             $FB
  $85EE  55                         LOADR_qimm   ; inline operand = 5
  $85EF  C0                         CMPEQ
  $85F0  D8 F8 85                   JUMPF_abs              $85F8
 >$85F3  8A E0 00                   LOADL_imm2             $00E0
  $85F6  85 F7                      STORE_near             $F7
 >$85F8  87 F7                      PUSH_near              $F7
  $85FA  81 FB                      LOADL_near             $FB
  $85FC  D2                         LSHIFT1
  $85FD  D2                         LSHIFT1
  $85FE  8C CC 8F                   LOADR_imm2             $8FCC
  $8601  BB                         ADD
  $8602  B0                         DEREF
  $8603  B3                         PUSHL
  $8604  81 FB                      LOADL_near             $FB
  $8606  D2                         LSHIFT1
  $8607  D2                         LSHIFT1
  $8608  8C CA 8F                   LOADR_imm2             $8FCA
  $860B  BB                         ADD
  $860C  B0                         DEREF
  $860D  B3                         PUSHL
  $860E  6E                         PUSH_qimm   ; inline operand = 14
  $860F  8D 1C                      BYTE_PUSH_imm1         +28
  $8611  66                         PUSH_qimm   ; inline operand = 6
  $8612  62                         PUSH_qimm   ; inline operand = 2
  $8613  69                         PUSH_qimm   ; inline operand = 9
  $8614  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8618  A0 0B 00                   BYTE_LOADL_far         $000B
  $861B  8C 76 6F                   LOADR_imm2             $6F76
  $861E  BB                         ADD
  $861F  D3                         BYTE_DEREF
  $8620  A2 FF FF                   BYTE_STORE_far         $FFFF
  $8623  40                         LOADL_qimm   ; inline operand = 0
  $8624  85 FD                      STORE_near             $FD
 >$8626  A0 0B 00                   BYTE_LOADL_far         $000B
  $8629  8B 32                      BYTE_LOADR_imm1        +50
  $862B  C6                         UCMPLT
  $862C  D8 93 86                   JUMPF_abs              $8693
  $862F  81 FD                      LOADL_near             $FD
  $8631  51                         LOADR_qimm   ; inline operand = 1
  $8632  C0                         CMPEQ
  $8633  D8 71 86                   JUMPF_abs              $8671
  $8636  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8639  54                         LOADR_qimm   ; inline operand = 4
  $863A  DA                         AND
  $863B  D7 71 86                   JUMPT_abs              $8671
  $863E  87 F7                      PUSH_near              $F7
  $8640  87 FB                      PUSH_near              $FB
  $8642  61                         PUSH_qimm   ; inline operand = 1
 >$8643  E9 79 85 06                CALL_abs_imm1          $8579 {bytecode}, $06
 >$8647  81 FD                      LOADL_near             $FD
  $8649  D0                         INC
  $864A  85 FD                      STORE_near             $FD
  $864C  81 FD                      LOADL_near             $FD
  $864E  59                         LOADR_qimm   ; inline operand = 9
  $864F  C6                         UCMPLT
  $8650  D7 26 86                   JUMPT_abs              $8626
  $8653  8D 10                      BYTE_PUSH_imm1         +16
  $8655  60                         PUSH_qimm   ; inline operand = 0
  $8656  81 FB                      LOADL_near             $FB
  $8658  54                         LOADR_qimm   ; inline operand = 4
  $8659  BD                         LSHIFT
  $865A  8C A6 8E                   LOADR_imm2             $8EA6
  $865D  BB                         ADD
  $865E  B3                         PUSHL
  $865F  66                         PUSH_qimm   ; inline operand = 6
  $8660  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8664  8D 10                      BYTE_PUSH_imm1         +16
  $8666  8D 10                      BYTE_PUSH_imm1         +16
  $8668  8E 76 F3                   PUSH_imm2              $F376
  $866B  66                         PUSH_qimm   ; inline operand = 6
  $866C  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8670  CF                         RETURN
 >$8671  81 FD                      LOADL_near             $FD
  $8673  52                         LOADR_qimm   ; inline operand = 2
  $8674  C0                         CMPEQ
  $8675  D8 89 86                   JUMPF_abs              $8689
  $8678  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $867B  8B 10                      BYTE_LOADR_imm1        +16
  $867D  DA                         AND
  $867E  D8 89 86                   JUMPF_abs              $8689
  $8681  87 F7                      PUSH_near              $F7
  $8683  87 FB                      PUSH_near              $FB
  $8685  65                         PUSH_qimm   ; inline operand = 5
  $8686  D6 43 86                   JUMP_abs               $8643
 >$8689  81 FD                      LOADL_near             $FD
  $868B  52                         LOADR_qimm   ; inline operand = 2
  $868C  C0                         CMPEQ
  $868D  D8 47 86                   JUMPF_abs              $8647
  $8690  D6 47 86                   JUMP_abs               $8647
 >$8693  81 FD                      LOADL_near             $FD
  $8695  56                         LOADR_qimm   ; inline operand = 6
  $8696  C6                         UCMPLT
  $8697  D8 47 86                   JUMPF_abs              $8647
  $869A  87 F7                      PUSH_near              $F7
  $869C  87 FB                      PUSH_near              $FB
  $869E  87 FD                      PUSH_near              $FD
  $86A0  D6 43 86                   JUMP_abs               $8643

; ============================================================
; sub $86A3   (frame_off=-4, body @ $86A8)   [PRG $346A3]
; ============================================================
  $86A8  0C                         LOADL_quick   ; inline operand = 12
  $86A9  2A                         STORE_quick   ; inline operand = 10
  $86AA  40                         LOADL_qimm   ; inline operand = 0
  $86AB  2B                         STORE_quick   ; inline operand = 11
  $86AC  D6 B5 86                   JUMP_abs               $86B5
 >$86AF  0B                         LOADL_quick   ; inline operand = 11
  $86B0  D0                         INC
  $86B1  2B                         STORE_quick   ; inline operand = 11
  $86B2  0A                         LOADL_quick   ; inline operand = 10
  $86B3  D0                         INC
  $86B4  2A                         STORE_quick   ; inline operand = 10
 >$86B5  3A                         PUSH_quick   ; inline operand = 10
  $86B6  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $86BA  D7 AF 86                   JUMPT_abs              $86AF
  $86BD  64                         PUSH_qimm   ; inline operand = 4
  $86BE  89 18                      BYTE_LOADL_imm1        +24
  $86C0  1B                         LOADR_quick   ; inline operand = 11
  $86C1  B8                         UDIV
  $86C2  B3                         PUSHL
  $86C3  89 1E                      BYTE_LOADL_imm1        +30
  $86C5  1B                         LOADR_quick   ; inline operand = 11
  $86C6  BC                         SUB
  $86C7  B4                         POPR
  $86C8  BC                         SUB
  $86C9  B3                         PUSHL
  $86CA  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $86CE  3C                         PUSH_quick   ; inline operand = 12
  $86CF  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $86D3  CF                         RETURN

; ============================================================
; sub $86D4   (frame_off=-20, body @ $86D9)   [PRG $346D4]
; ============================================================
  $86D9  8E FE 8F                   PUSH_imm2              $8FFE
  $86DC  65                         PUSH_qimm   ; inline operand = 5
  $86DD  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $86E1  A5 67 70                   BYTE_LOADL_abs         $7067
  $86E4  8B 13                      BYTE_LOADR_imm1        +19
  $86E6  B5                         MULT
  $86E7  8C D8 AF                   LOADR_imm2             $AFD8
  $86EA  BB                         ADD
  $86EB  2A                         STORE_quick   ; inline operand = 10
  $86EC  A5 68 70                   BYTE_LOADL_abs         $7068
  $86EF  51                         LOADR_qimm   ; inline operand = 1
  $86F0  C1                         CMPNE
  $86F1  D8 FC 86                   JUMPF_abs              $86FC
  $86F4  41                         LOADL_qimm   ; inline operand = 1
  $86F5  A9 68 70                   BYTE_STORE_abs         $7068
  $86F8  40                         LOADL_qimm   ; inline operand = 0
  $86F9  A8 69 70                   STORE_abs              $7069
 >$86FC  AC 75 A6                   CALL_abs               $A675 {native}
  $86FF  AC 37 CE                   CALL_abs               $CE37 {native}
  $8702  A5 63 66                   BYTE_LOADL_abs         $6663
  $8705  B3                         PUSHL
  $8706  E9 C9 84 02                CALL_abs_imm1          $84C9 {bytecode}, $02
  $870A  8E E1 00                   PUSH_imm2              $00E1
  $870D  8E 4C A5                   PUSH_imm2              $A54C
  $8710  8E DC A4                   PUSH_imm2              $A4DC
  $8713  64                         PUSH_qimm   ; inline operand = 4
  $8714  8D 1C                      BYTE_PUSH_imm1         +28
  $8716  62                         PUSH_qimm   ; inline operand = 2
  $8717  62                         PUSH_qimm   ; inline operand = 2
  $8718  69                         PUSH_qimm   ; inline operand = 9
  $8719  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $871D  3A                         PUSH_quick   ; inline operand = 10
  $871E  E9 A3 86 02                CALL_abs_imm1          $86A3 {bytecode}, $02
  $8722  AC 40 A3                   CALL_abs               $A340 {native}
  $8725  AC 6D A3                   CALL_abs               $A36D {native}
  $8728  AC 9D A3                   CALL_abs               $A39D {native}
  $872B  8E 83 86                   PUSH_imm2              $8683
  $872E  8E DE 00                   PUSH_imm2              $00DE
  $8731  61                         PUSH_qimm   ; inline operand = 1
  $8732  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $8736  A5 67 70                   BYTE_LOADL_abs         $7067
  $8739  B3                         PUSHL
  $873A  E9 D1 85 02                CALL_abs_imm1          $85D1 {bytecode}, $02
  $873E  AC F8 84                   CALL_abs               $84F8 {bytecode}
  $8741  CF                         RETURN

; ============================================================
; sub $8742   (frame_off=-2, body @ $8747)   [PRG $34742]
; ============================================================
  $8747  60                         PUSH_qimm   ; inline operand = 0
  $8748  60                         PUSH_qimm   ; inline operand = 0
  $8749  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $874D  61                         PUSH_qimm   ; inline operand = 1
  $874E  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $8752  8E 0C 90                   PUSH_imm2              $900C
  $8755  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8759  A5 67 70                   BYTE_LOADL_abs         $7067
  $875C  5E                         LOADR_qimm   ; inline operand = 14
  $875D  B5                         MULT
  $875E  8C BD 67                   LOADR_imm2             $67BD
  $8761  BB                         ADD
  $8762  D3                         BYTE_DEREF
  $8763  8B 14                      BYTE_LOADR_imm1        +20
  $8765  C6                         UCMPLT
  $8766  D8 71 87                   JUMPF_abs              $8771
  $8769  63                         PUSH_qimm   ; inline operand = 3
  $876A  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $876E  D7 B6 87                   JUMPT_abs              $87B6
 >$8771  A5 67 70                   BYTE_LOADL_abs         $7067
  $8774  5E                         LOADR_qimm   ; inline operand = 14
  $8775  B5                         MULT
  $8776  8C B2 67                   LOADR_imm2             $67B2
  $8779  BB                         ADD
  $877A  B0                         DEREF
  $877B  52                         LOADR_qimm   ; inline operand = 2
  $877C  B6                         SDIV
  $877D  8B 64                      BYTE_LOADR_imm1        +100
  $877F  C2                         SCMPLT
  $8780  D7 B6 87                   JUMPT_abs              $87B6
  $8783  A4 6B 66                   LOADL_abs              $666B
  $8786  B7 26                      LONG                   $26
  $8788  B7 19 78 E6 00 00          LONG                   $19 $78 $E6 $00 $00
  $878E  B7 2C                      LONG                   $2C
  $8790  D7 B6 87                   JUMPT_abs              $87B6
  $8793  8D 14                      BYTE_PUSH_imm1         +20
  $8795  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8799  B3                         PUSHL
  $879A  89 64                      BYTE_LOADL_imm1        +100
  $879C  B4                         POPR
  $879D  BC                         SUB
  $879E  B3                         PUSHL
  $879F  A4 6B 66                   LOADL_abs              $666B
  $87A2  B4                         POPR
  $87A3  C6                         UCMPLT
  $87A4  D7 B6 87                   JUMPT_abs              $87B6
  $87A7  63                         PUSH_qimm   ; inline operand = 3
  $87A8  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $87AC  74                         ADD_qimm   ; inline operand = 4
  $87AD  B3                         PUSHL
  $87AE  A5 86 6B                   BYTE_LOADL_abs         $6B86
  $87B1  B4                         POPR
  $87B2  C8                         UCMPGT
  $87B3  D8 DA 87                   JUMPF_abs              $87DA
 >$87B6  A5 86 6B                   BYTE_LOADL_abs         $6B86
  $87B9  54                         LOADR_qimm   ; inline operand = 4
  $87BA  C8                         UCMPGT
  $87BB  D8 C8 87                   JUMPF_abs              $87C8
  $87BE  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $87C1  61                         PUSH_qimm   ; inline operand = 1
  $87C2  8E 2D 90                   PUSH_imm2              $902D
  $87C5  D6 CF 87                   JUMP_abs               $87CF
 >$87C8  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $87CB  61                         PUSH_qimm   ; inline operand = 1
  $87CC  8E 59 90                   PUSH_imm2              $9059
 >$87CF  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $87D3  61                         PUSH_qimm   ; inline operand = 1
  $87D4  E9 9B CE 02                CALL_abs_imm1          $CE9B {native}, $02
  $87D8  41                         LOADL_qimm   ; inline operand = 1
  $87D9  CF                         RETURN
 >$87DA  40                         LOADL_qimm   ; inline operand = 0
  $87DB  A2 FF FF                   BYTE_STORE_far         $FFFF
  $87DE  40                         LOADL_qimm   ; inline operand = 0
  $87DF  D6 FE 87                   JUMP_abs               $87FE
 >$87E2  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $87E5  8C 06 90                   LOADR_imm2             $9006
  $87E8  BB                         ADD
  $87E9  D3                         BYTE_DEREF
  $87EA  B3                         PUSHL
  $87EB  A5 66 70                   BYTE_LOADL_abs         $7066
  $87EE  B4                         POPR
  $87EF  DA                         AND
  $87F0  D8 FA 87                   JUMPF_abs              $87FA
  $87F3  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $87F6  D0                         INC
  $87F7  A2 FF FF                   BYTE_STORE_far         $FFFF
 >$87FA  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $87FD  D0                         INC
 >$87FE  A2 FE FF                   BYTE_STORE_far         $FFFE
  $8801  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $8804  56                         LOADR_qimm   ; inline operand = 6
  $8805  C6                         UCMPLT
  $8806  D7 E2 87                   JUMPT_abs              $87E2
  $8809  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $880C  53                         LOADR_qimm   ; inline operand = 3
  $880D  C6                         UCMPLT
  $880E  D7 1A 88                   JUMPT_abs              $881A
  $8811  8D 1E                      BYTE_PUSH_imm1         +30
  $8813  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8817  D7 41 88                   JUMPT_abs              $8841
 >$881A  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $881D  53                         LOADR_qimm   ; inline operand = 3
  $881E  C6                         UCMPLT
  $881F  D8 28 88                   JUMPF_abs              $8828
  $8822  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8825  D6 2E 88                   JUMP_abs               $882E
 >$8828  62                         PUSH_qimm   ; inline operand = 2
  $8829  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $882D  D0                         INC
 >$882E  A2 FF FF                   BYTE_STORE_far         $FFFF
  $8831  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8834  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8837  B3                         PUSHL
  $8838  8E 93 90                   PUSH_imm2              $9093
  $883B  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $883F  41                         LOADL_qimm   ; inline operand = 1
  $8840  CF                         RETURN
 >$8841  40                         LOADL_qimm   ; inline operand = 0
  $8842  CF                         RETURN

; ============================================================
; sub $8843   (frame_off=+0, body @ $8848)   [PRG $34843]
; ============================================================
  $8848  60                         PUSH_qimm   ; inline operand = 0
  $8849  60                         PUSH_qimm   ; inline operand = 0
  $884A  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $884E  61                         PUSH_qimm   ; inline operand = 1
  $884F  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $8853  8E BB 90                   PUSH_imm2              $90BB
  $8856  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $885A  A5 67 70                   BYTE_LOADL_abs         $7067
  $885D  5E                         LOADR_qimm   ; inline operand = 14
  $885E  B5                         MULT
  $885F  8C BD 67                   LOADR_imm2             $67BD
  $8862  BB                         ADD
  $8863  D3                         BYTE_DEREF
  $8864  8B 14                      BYTE_LOADR_imm1        +20
  $8866  C6                         UCMPLT
  $8867  D8 72 88                   JUMPF_abs              $8872
  $886A  62                         PUSH_qimm   ; inline operand = 2
  $886B  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $886F  D7 9D 88                   JUMPT_abs              $889D
 >$8872  6A                         PUSH_qimm   ; inline operand = 10
  $8873  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8877  B3                         PUSHL
  $8878  89 3C                      BYTE_LOADL_imm1        +60
  $887A  B4                         POPR
  $887B  BC                         SUB
  $887C  B3                         PUSHL
  $887D  A4 6B 66                   LOADL_abs              $666B
  $8880  B4                         POPR
  $8881  C6                         UCMPLT
  $8882  D7 9D 88                   JUMPT_abs              $889D
  $8885  A4 6B 66                   LOADL_abs              $666B
  $8888  B7 26                      LONG                   $26
  $888A  B7 19 78 E6 00 00          LONG                   $19 $78 $E6 $00 $00
  $8890  B7 2C                      LONG                   $2C
  $8892  D7 9D 88                   JUMPT_abs              $889D
  $8895  A5 86 6B                   BYTE_LOADL_abs         $6B86
  $8898  57                         LOADR_qimm   ; inline operand = 7
  $8899  C8                         UCMPGT
  $889A  D8 C1 88                   JUMPF_abs              $88C1
 >$889D  A5 86 6B                   BYTE_LOADL_abs         $6B86
  $88A0  55                         LOADR_qimm   ; inline operand = 5
  $88A1  C8                         UCMPGT
  $88A2  D8 AF 88                   JUMPF_abs              $88AF
  $88A5  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $88A8  61                         PUSH_qimm   ; inline operand = 1
  $88A9  8E ED 90                   PUSH_imm2              $90ED
  $88AC  D6 B6 88                   JUMP_abs               $88B6
 >$88AF  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $88B2  61                         PUSH_qimm   ; inline operand = 1
  $88B3  8E 18 91                   PUSH_imm2              $9118
 >$88B6  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $88BA  61                         PUSH_qimm   ; inline operand = 1
  $88BB  E9 9B CE 02                CALL_abs_imm1          $CE9B {native}, $02
  $88BF  41                         LOADL_qimm   ; inline operand = 1
  $88C0  CF                         RETURN
 >$88C1  40                         LOADL_qimm   ; inline operand = 0
  $88C2  CF                         RETURN

; ============================================================
; sub $88C3   (frame_off=-2, body @ $88C8)   [PRG $348C3]
; ============================================================
  $88C8  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $88CB  61                         PUSH_qimm   ; inline operand = 1
  $88CC  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $88D0  61                         PUSH_qimm   ; inline operand = 1
  $88D1  8E 61 91                   PUSH_imm2              $9161
  $88D4  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $88D8  61                         PUSH_qimm   ; inline operand = 1
  $88D9  62                         PUSH_qimm   ; inline operand = 2
  $88DA  8E 48 91                   PUSH_imm2              $9148
  $88DD  61                         PUSH_qimm   ; inline operand = 1
  $88DE  68                         PUSH_qimm   ; inline operand = 8
  $88DF  8D 17                      BYTE_PUSH_imm1         +23
  $88E1  68                         PUSH_qimm   ; inline operand = 8
  $88E2  E9 56 A1 0E                CALL_abs_imm1          $A156 {native}, $0E
  $88E6  A2 FE FF                   BYTE_STORE_far         $FFFE
  $88E9  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $88EC  8C FF 00                   LOADR_imm2             $00FF
  $88EF  C1                         CMPNE
  $88F0  D8 0F 89                   JUMPF_abs              $890F
  $88F3  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $88F6  D2                         LSHIFT1
  $88F7  8C 4C 91                   LOADR_imm2             $914C
  $88FA  BB                         ADD
  $88FB  B0                         DEREF
  $88FC  DD                         CALLPTR
  $88FD  D8 09 89                   JUMPF_abs              $8909
  $8900  8A FF 00                   LOADL_imm2             $00FF
  $8903  A2 FE FF                   BYTE_STORE_far         $FFFE
  $8906  D6 0F 89                   JUMP_abs               $890F
 >$8909  8A F0 00                   LOADL_imm2             $00F0
  $890C  A9 63 70                   BYTE_STORE_abs         $7063
 >$890F  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $8912  CF                         RETURN

