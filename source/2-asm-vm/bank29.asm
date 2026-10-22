VM bytecode disassembly
  ROM:          Uncharted Waters (USA).nes
  mode:         bulk dump of bank 29
  opcode spec:  vm-opcodes-v2.toml via nobunaga_vm.OPCODE_INFO (execution-validated lengths)
  labels:       0 CPU addresses named

  bank 29: found 21 bytecode-subroutine stubs

; ============================================================
; sub $8003   (frame_off=+0, body @ $8008)   [PRG $3A003]
; ============================================================
  $8008  68                         PUSH_qimm   ; inline operand = 8
  $8009  68                         PUSH_qimm   ; inline operand = 8
  $800A  8E CE 88                   PUSH_imm2              $88CE
  $800D  66                         PUSH_qimm   ; inline operand = 6
  $800E  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8012  CF                         RETURN

; ============================================================
; sub $8013   (frame_off=+0, body @ $8018)   [PRG $3A013]
; ============================================================
  $8018  61                         PUSH_qimm   ; inline operand = 1
  $8019  69                         PUSH_qimm   ; inline operand = 9
  $801A  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $801E  CF                         RETURN

; ============================================================
; sub $801F   (frame_off=-41, body @ $8024)   [PRG $3A01F]
; ============================================================
  $8024  40                         LOADL_qimm   ; inline operand = 0
  $8025  85 EF                      STORE_near             $EF
  $8027  DE FB FF                   LEAL_far               $FFFB
  $802A  B3                         PUSHL
  $802B  60                         PUSH_qimm   ; inline operand = 0
  $802C  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $8030  85 ED                      STORE_near             $ED
  $8032  8E E7 00                   PUSH_imm2              $00E7
  $8035  8E B4 A5                   PUSH_imm2              $A5B4
  $8038  8E 9C A4                   PUSH_imm2              $A49C
  $803B  6E                         PUSH_qimm   ; inline operand = 14
  $803C  8D 14                      BYTE_PUSH_imm1         +20
  $803E  66                         PUSH_qimm   ; inline operand = 6
  $803F  66                         PUSH_qimm   ; inline operand = 6
  $8040  69                         PUSH_qimm   ; inline operand = 9
  $8041  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8045  68                         PUSH_qimm   ; inline operand = 8
  $8046  68                         PUSH_qimm   ; inline operand = 8
  $8047  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $804B  60                         PUSH_qimm   ; inline operand = 0
  $804C  8E DA 88                   PUSH_imm2              $88DA
  $804F  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8053  AC 03 80                   CALL_abs               $8003 {bytecode}
  $8056  61                         PUSH_qimm   ; inline operand = 1
  $8057  67                         PUSH_qimm   ; inline operand = 7
  $8058  6F                         PUSH_qimm   ; inline operand = 15
  $8059  E9 D0 A3 06                CALL_abs_imm1          $A3D0 {native}, $06
  $805D  60                         PUSH_qimm   ; inline operand = 0
  $805E  67                         PUSH_qimm   ; inline operand = 7
  $805F  8D 13                      BYTE_PUSH_imm1         +19
  $8061  E9 D0 A3 06                CALL_abs_imm1          $A3D0 {native}, $06
  $8065  68                         PUSH_qimm   ; inline operand = 8
  $8066  8D 16                      BYTE_PUSH_imm1         +22
  $8068  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $806C  60                         PUSH_qimm   ; inline operand = 0
  $806D  8E DF 88                   PUSH_imm2              $88DF
  $8070  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8074  40                         LOADL_qimm   ; inline operand = 0
  $8075  D6 9D 80                   JUMP_abs               $809D
 >$8078  DE F1 FF                   LEAL_far               $FFF1
  $807B  B3                         PUSHL
  $807C  81 EB                      LOADL_near             $EB
  $807E  D2                         LSHIFT1
  $807F  B4                         POPR
  $8080  BB                         ADD
  $8081  B3                         PUSHL
  $8082  DE FB FF                   LEAL_far               $FFFB
  $8085  B3                         PUSHL
  $8086  81 EB                      LOADL_near             $EB
  $8088  B4                         POPR
  $8089  BB                         ADD
  $808A  D3                         BYTE_DEREF
  $808B  57                         LOADR_qimm   ; inline operand = 7
  $808C  B5                         MULT
  $808D  8C 96 6C                   LOADR_imm2             $6C96
  $8090  BB                         ADD
  $8091  D3                         BYTE_DEREF
  $8092  5F                         LOADR_qimm   ; inline operand = 15
  $8093  DA                         AND
  $8094  B3                         PUSHL
  $8095  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8099  B1                         POPSTORE
  $809A  81 EB                      LOADL_near             $EB
  $809C  D0                         INC
 >$809D  85 EB                      STORE_near             $EB
  $809F  81 EB                      LOADL_near             $EB
  $80A1  83 ED                      LOADR_near             $ED
  $80A3  C6                         UCMPLT
  $80A4  D7 78 80                   JUMPT_abs              $8078
  $80A7  40                         LOADL_qimm   ; inline operand = 0
  $80A8  85 E1                      STORE_near             $E1
  $80AA  40                         LOADL_qimm   ; inline operand = 0
  $80AB  85 DF                      STORE_near             $DF
  $80AD  40                         LOADL_qimm   ; inline operand = 0
  $80AE  85 DD                      STORE_near             $DD
  $80B0  40                         LOADL_qimm   ; inline operand = 0
  $80B1  D6 6D 81                   JUMP_abs               $816D
 >$80B4  DE FB FF                   LEAL_far               $FFFB
  $80B7  B3                         PUSHL
  $80B8  81 EB                      LOADL_near             $EB
  $80BA  B4                         POPR
  $80BB  BB                         ADD
  $80BC  D3                         BYTE_DEREF
  $80BD  8B 18                      BYTE_LOADR_imm1        +24
  $80BF  B5                         MULT
  $80C0  8C A4 6A                   LOADR_imm2             $6AA4
  $80C3  BB                         ADD
  $80C4  85 D7                      STORE_near             $D7
  $80C6  81 EB                      LOADL_near             $EB
  $80C8  D2                         LSHIFT1
  $80C9  7A                         ADD_qimm   ; inline operand = 10
  $80CA  B3                         PUSHL
  $80CB  67                         PUSH_qimm   ; inline operand = 7
  $80CC  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $80D0  DE F1 FF                   LEAL_far               $FFF1
  $80D3  B3                         PUSHL
  $80D4  81 EB                      LOADL_near             $EB
  $80D6  D2                         LSHIFT1
  $80D7  B4                         POPR
  $80D8  BB                         ADD
  $80D9  B0                         DEREF
  $80DA  B3                         PUSHL
  $80DB  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $80DF  81 EB                      LOADL_near             $EB
  $80E1  D2                         LSHIFT1
  $80E2  79                         ADD_qimm   ; inline operand = 9
  $80E3  B3                         PUSHL
  $80E4  6E                         PUSH_qimm   ; inline operand = 14
  $80E5  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $80E9  81 D7                      LOADL_near             $D7
  $80EB  8F 12                      BYTE_ADD_imm1          +18
  $80ED  B0                         DEREF
  $80EE  85 E9                      STORE_near             $E9
  $80F0  81 E9                      LOADL_near             $E9
  $80F2  CD                         SWAP
  $80F3  81 DF                      LOADL_near             $DF
  $80F5  BB                         ADD
  $80F6  85 DF                      STORE_near             $DF
  $80F8  81 E9                      LOADL_near             $E9
  $80FA  5A                         LOADR_qimm   ; inline operand = 10
  $80FB  B6                         SDIV
  $80FC  B3                         PUSHL
  $80FD  8E D6 88                   PUSH_imm2              $88D6
  $8100  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8104  81 EB                      LOADL_near             $EB
  $8106  D2                         LSHIFT1
  $8107  79                         ADD_qimm   ; inline operand = 9
  $8108  B3                         PUSHL
  $8109  8D 12                      BYTE_PUSH_imm1         +18
  $810B  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $810F  81 D7                      LOADL_near             $D7
  $8111  8F 10                      BYTE_ADD_imm1          +16
  $8113  B0                         DEREF
  $8114  85 E7                      STORE_near             $E7
  $8116  81 E7                      LOADL_near             $E7
  $8118  CD                         SWAP
  $8119  81 DD                      LOADL_near             $DD
  $811B  BB                         ADD
  $811C  85 DD                      STORE_near             $DD
  $811E  81 E7                      LOADL_near             $E7
  $8120  5A                         LOADR_qimm   ; inline operand = 10
  $8121  B6                         SDIV
  $8122  B3                         PUSHL
  $8123  8E D6 88                   PUSH_imm2              $88D6
  $8126  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $812A  81 EB                      LOADL_near             $EB
  $812C  D2                         LSHIFT1
  $812D  79                         ADD_qimm   ; inline operand = 9
  $812E  B3                         PUSHL
  $812F  8D 16                      BYTE_PUSH_imm1         +22
  $8131  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8135  DE FB FF                   LEAL_far               $FFFB
  $8138  B3                         PUSHL
  $8139  81 EB                      LOADL_near             $EB
  $813B  B4                         POPR
  $813C  BB                         ADD
  $813D  D3                         BYTE_DEREF
  $813E  57                         LOADR_qimm   ; inline operand = 7
  $813F  B5                         MULT
  $8140  8C 94 6C                   LOADR_imm2             $6C94
  $8143  BB                         ADD
  $8144  B0                         DEREF
  $8145  85 E5                      STORE_near             $E5
  $8147  81 E5                      LOADL_near             $E5
  $8149  CD                         SWAP
  $814A  81 E1                      LOADL_near             $E1
  $814C  BB                         ADD
  $814D  85 E1                      STORE_near             $E1
  $814F  81 E5                      LOADL_near             $E5
  $8151  55                         LOADR_qimm   ; inline operand = 5
  $8152  C2                         SCMPLT
  $8153  D8 61 81                   JUMPF_abs              $8161
  $8156  41                         LOADL_qimm   ; inline operand = 1
  $8157  85 EF                      STORE_near             $EF
  $8159  87 E5                      PUSH_near              $E5
  $815B  8E E3 88                   PUSH_imm2              $88E3
  $815E  D6 66 81                   JUMP_abs               $8166
 >$8161  87 E5                      PUSH_near              $E5
  $8163  8E D6 88                   PUSH_imm2              $88D6
 >$8166  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $816A  81 EB                      LOADL_near             $EB
  $816C  D0                         INC
 >$816D  85 EB                      STORE_near             $EB
  $816F  81 EB                      LOADL_near             $EB
  $8171  83 ED                      LOADR_near             $ED
  $8173  C6                         UCMPLT
  $8174  D7 B4 80                   JUMPT_abs              $80B4
  $8177  81 E1                      LOADL_near             $E1
  $8179  52                         LOADR_qimm   ; inline operand = 2
  $817A  B6                         SDIV
  $817B  D0                         INC
  $817C  B3                         PUSHL
  $817D  81 DF                      LOADL_near             $DF
  $817F  B4                         POPR
  $8180  B6                         SDIV
  $8181  85 DB                      STORE_near             $DB
  $8183  81 E1                      LOADL_near             $E1
  $8185  52                         LOADR_qimm   ; inline operand = 2
  $8186  B6                         SDIV
  $8187  D0                         INC
  $8188  B3                         PUSHL
  $8189  81 DD                      LOADL_near             $DD
  $818B  B4                         POPR
  $818C  B6                         SDIV
  $818D  85 D9                      STORE_near             $D9
  $818F  87 D9                      PUSH_near              $D9
  $8191  87 DB                      PUSH_near              $DB
  $8193  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8197  85 E3                      STORE_near             $E3
  $8199  81 EF                      LOADL_near             $EF
  $819B  D8 A2 81                   JUMPF_abs              $81A2
  $819E  40                         LOADL_qimm   ; inline operand = 0
  $819F  D6 AB 81                   JUMP_abs               $81AB
 >$81A2  8E E8 03                   PUSH_imm2              $03E8
  $81A5  87 E3                      PUSH_near              $E3
  $81A7  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
 >$81AB  CF                         RETURN

; ============================================================
; sub $81AC   (frame_off=-2, body @ $81B1)   [PRG $3A1AC]
; ============================================================
  $81B1  60                         PUSH_qimm   ; inline operand = 0
  $81B2  8D 12                      BYTE_PUSH_imm1         +18
  $81B4  8D 1C                      BYTE_PUSH_imm1         +28
  $81B6  62                         PUSH_qimm   ; inline operand = 2
  $81B7  62                         PUSH_qimm   ; inline operand = 2
  $81B8  E9 05 A4 0A                CALL_abs_imm1          $A405 {native}, $0A
  $81BC  8D 14                      BYTE_PUSH_imm1         +20
  $81BE  61                         PUSH_qimm   ; inline operand = 1
  $81BF  6C                         PUSH_qimm   ; inline operand = 12
  $81C0  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $81C4  AC 1F 80                   CALL_abs               $801F {bytecode}
  $81C7  2B                         STORE_quick   ; inline operand = 11
  $81C8  8A F0 00                   LOADL_imm2             $00F0
  $81CB  A9 63 70                   BYTE_STORE_abs         $7063
  $81CE  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $81D1  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $81D4  0B                         LOADL_quick   ; inline operand = 11
  $81D5  D7 E3 81                   JUMPT_abs              $81E3
  $81D8  61                         PUSH_qimm   ; inline operand = 1
  $81D9  8E EE 88                   PUSH_imm2              $88EE
  $81DC  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $81E0  D6 11 82                   JUMP_abs               $8211
 >$81E3  0B                         LOADL_quick   ; inline operand = 11
  $81E4  5A                         LOADR_qimm   ; inline operand = 10
  $81E5  C2                         SCMPLT
  $81E6  D8 EF 81                   JUMPF_abs              $81EF
  $81E9  8E 27 89                   PUSH_imm2              $8927
  $81EC  D6 F2 81                   JUMP_abs               $81F2
 >$81EF  8E 48 89                   PUSH_imm2              $8948
 >$81F2  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $81F6  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $81F9  0B                         LOADL_quick   ; inline operand = 11
  $81FA  51                         LOADR_qimm   ; inline operand = 1
  $81FB  C0                         CMPEQ
  $81FC  D8 05 82                   JUMPF_abs              $8205
  $81FF  8A 8B 89                   LOADL_imm2             $898B
  $8202  D6 08 82                   JUMP_abs               $8208
 >$8205  8A 8C 89                   LOADL_imm2             $898C
 >$8208  B3                         PUSHL
  $8209  3B                         PUSH_quick   ; inline operand = 11
  $820A  8E 6B 89                   PUSH_imm2              $896B
  $820D  E9 99 C7 06                CALL_abs_imm1          $C799 {native}, $06
 >$8211  AC 9F CD                   CALL_abs               $CD9F {native}
  $8214  D8 3F 82                   JUMPF_abs              $823F
  $8217  8A F0 03                   LOADL_imm2             $03F0
  $821A  CD                         SWAP
  $821B  A4 69 72                   LOADL_abs              $7269
  $821E  BC                         SUB
  $821F  A8 69 72                   STORE_abs              $7269
  $8222  AC 13 80                   CALL_abs               $8013 {bytecode}
  $8225  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8228  8E 8E 89                   PUSH_imm2              $898E
  $822B  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $822F  AC 6E 87                   CALL_abs               $876E {bytecode}
  $8232  8E 03 80                   PUSH_imm2              $8003
  $8235  8E DE 00                   PUSH_imm2              $00DE
  $8238  61                         PUSH_qimm   ; inline operand = 1
  $8239  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $823D  41                         LOADL_qimm   ; inline operand = 1
  $823E  CF                         RETURN
 >$823F  8E 03 80                   PUSH_imm2              $8003
  $8242  8E DE 00                   PUSH_imm2              $00DE
  $8245  61                         PUSH_qimm   ; inline operand = 1
  $8246  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $824A  60                         PUSH_qimm   ; inline operand = 0
  $824B  8D 12                      BYTE_PUSH_imm1         +18
  $824D  8D 1C                      BYTE_PUSH_imm1         +28
  $824F  62                         PUSH_qimm   ; inline operand = 2
  $8250  62                         PUSH_qimm   ; inline operand = 2
  $8251  E9 9B A4 0A                CALL_abs_imm1          $A49B {native}, $0A
  $8255  8E 83 86                   PUSH_imm2              $8683
  $8258  8E DE 00                   PUSH_imm2              $00DE
  $825B  61                         PUSH_qimm   ; inline operand = 1
  $825C  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $8260  40                         LOADL_qimm   ; inline operand = 0
  $8261  CF                         RETURN

; ============================================================
; sub $8262   (frame_off=-24, body @ $8267)   [PRG $3A262]
; ============================================================
  $8267  AC 13 80                   CALL_abs               $8013 {bytecode}
  $826A  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $826D  8E 9F 89                   PUSH_imm2              $899F
  $8270  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8274  40                         LOADL_qimm   ; inline operand = 0
  $8275  21                         STORE_quick   ; inline operand = 1
  $8276  22                         STORE_quick   ; inline operand = 2
  $8277  40                         LOADL_qimm   ; inline operand = 0
  $8278  A2 FF FF                   BYTE_STORE_far         $FFFF
  $827B  A2 FD FF                   BYTE_STORE_far         $FFFD
  $827E  D6 CF 82                   JUMP_abs               $82CF
 >$8281  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8284  57                         LOADR_qimm   ; inline operand = 7
  $8285  B5                         MULT
  $8286  8C 90 6C                   LOADR_imm2             $6C90
  $8289  BB                         ADD
  $828A  20                         STORE_quick   ; inline operand = 0
  $828B  00                         LOADL_quick   ; inline operand = 0
  $828C  76                         ADD_qimm   ; inline operand = 6
  $828D  D3                         BYTE_DEREF
  $828E  8B 40                      BYTE_LOADR_imm1        +64
  $8290  DA                         AND
  $8291  D8 C8 82                   JUMPF_abs              $82C8
  $8294  DE F8 FF                   LEAL_far               $FFF8
  $8297  B3                         PUSHL
  $8298  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $829B  B4                         POPR
  $829C  BB                         ADD
  $829D  B3                         PUSHL
  $829E  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $82A1  D4                         BYTE_POPSTORE
  $82A2  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $82A5  D0                         INC
  $82A6  A2 FD FF                   BYTE_STORE_far         $FFFD
  $82A9  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $82AC  B3                         PUSHL
  $82AD  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $82B1  8F 12                      BYTE_ADD_imm1          +18
  $82B3  B3                         PUSHL
  $82B4  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $82B8  CD                         SWAP
  $82B9  02                         LOADL_quick   ; inline operand = 2
  $82BA  BB                         ADD
  $82BB  22                         STORE_quick   ; inline operand = 2
  $82BC  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $82BF  B3                         PUSHL
  $82C0  E9 EA D9 02                CALL_abs_imm1          $D9EA {native}, $02
  $82C4  CD                         SWAP
  $82C5  01                         LOADL_quick   ; inline operand = 1
  $82C6  BB                         ADD
  $82C7  21                         STORE_quick   ; inline operand = 1
 >$82C8  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $82CB  D0                         INC
  $82CC  A2 FF FF                   BYTE_STORE_far         $FFFF
 >$82CF  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $82D2  55                         LOADR_qimm   ; inline operand = 5
  $82D3  C6                         UCMPLT
  $82D4  D7 81 82                   JUMPT_abs              $8281
  $82D7  60                         PUSH_qimm   ; inline operand = 0
  $82D8  8D 12                      BYTE_PUSH_imm1         +18
  $82DA  8D 1C                      BYTE_PUSH_imm1         +28
  $82DC  62                         PUSH_qimm   ; inline operand = 2
  $82DD  62                         PUSH_qimm   ; inline operand = 2
  $82DE  E9 05 A4 0A                CALL_abs_imm1          $A405 {native}, $0A
  $82E2  8D 14                      BYTE_PUSH_imm1         +20
  $82E4  61                         PUSH_qimm   ; inline operand = 1
  $82E5  6C                         PUSH_qimm   ; inline operand = 12
  $82E6  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $82EA  AC 03 80                   CALL_abs               $8003 {bytecode}
  $82ED  66                         PUSH_qimm   ; inline operand = 6
  $82EE  61                         PUSH_qimm   ; inline operand = 1
  $82EF  DE F8 FF                   LEAL_far               $FFF8
  $82F2  B3                         PUSHL
  $82F3  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $82F6  B3                         PUSHL
  $82F7  8E FC 86                   PUSH_imm2              $86FC
  $82FA  8E C0 00                   PUSH_imm2              $00C0
  $82FD  61                         PUSH_qimm   ; inline operand = 1
  $82FE  E9 3A DE 0E                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $0E
  $8302  8E 03 80                   PUSH_imm2              $8003
  $8305  8E DE 00                   PUSH_imm2              $00DE
  $8308  61                         PUSH_qimm   ; inline operand = 1
  $8309  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $830D  AC CE B7                   CALL_abs               $B7CE {native}
  $8310  60                         PUSH_qimm   ; inline operand = 0
  $8311  8D 12                      BYTE_PUSH_imm1         +18
  $8313  8D 1C                      BYTE_PUSH_imm1         +28
  $8315  62                         PUSH_qimm   ; inline operand = 2
  $8316  62                         PUSH_qimm   ; inline operand = 2
  $8317  E9 9B A4 0A                CALL_abs_imm1          $A49B {native}, $0A
  $831B  40                         LOADL_qimm   ; inline operand = 0
  $831C  CF                         RETURN

; ============================================================
; sub $831D   (frame_off=-8, body @ $8322)   [PRG $3A31D]
; ============================================================
  $8322  A4 6B 66                   LOADL_abs              $666B
  $8325  83 13                      LOADR_near             $13
  $8327  B8                         UDIV
  $8328  2B                         STORE_quick   ; inline operand = 11
  $8329  3D                         PUSH_quick   ; inline operand = 13
  $832A  E9 EA D9 02                CALL_abs_imm1          $D9EA {native}, $02
  $832E  B3                         PUSHL
  $832F  3D                         PUSH_quick   ; inline operand = 13
  $8330  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8334  8F 12                      BYTE_ADD_imm1          +18
  $8336  B3                         PUSHL
  $8337  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $833B  B4                         POPR
  $833C  BC                         SUB
  $833D  2A                         STORE_quick   ; inline operand = 10
  $833E  0B                         LOADL_quick   ; inline operand = 11
  $833F  1A                         LOADR_quick   ; inline operand = 10
  $8340  C8                         UCMPGT
  $8341  D8 46 83                   JUMPF_abs              $8346
  $8344  0A                         LOADL_quick   ; inline operand = 10
  $8345  2B                         STORE_quick   ; inline operand = 11
 >$8346  0B                         LOADL_quick   ; inline operand = 11
  $8347  D7 59 83                   JUMPT_abs              $8359
  $834A  AC 13 80                   CALL_abs               $8013 {bytecode}
  $834D  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8350  8E CD 89                   PUSH_imm2              $89CD
  $8353  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8357  40                         LOADL_qimm   ; inline operand = 0
  $8358  CF                         RETURN
 >$8359  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $835C  3E                         PUSH_quick   ; inline operand = 14
  $835D  8E E6 89                   PUSH_imm2              $89E6
  $8360  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8364  61                         PUSH_qimm   ; inline operand = 1
  $8365  3B                         PUSH_quick   ; inline operand = 11
  $8366  60                         PUSH_qimm   ; inline operand = 0
  $8367  8E 06 8A                   PUSH_imm2              $8A06
  $836A  E9 F3 CC 08                CALL_abs_imm1          $CCF3 {native}, $08
  $836E  28                         STORE_quick   ; inline operand = 8
  $836F  08                         LOADL_quick   ; inline operand = 8
  $8370  8B FF                      BYTE_LOADR_imm1        -1
  $8372  C0                         CMPEQ
  $8373  D7 7A 83                   JUMPT_abs              $837A
  $8376  08                         LOADL_quick   ; inline operand = 8
  $8377  D7 7C 83                   JUMPT_abs              $837C
 >$837A  40                         LOADL_qimm   ; inline operand = 0
  $837B  CF                         RETURN
 >$837C  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $837F  81 13                      LOADL_near             $13
  $8381  18                         LOADR_quick   ; inline operand = 8
  $8382  B5                         MULT
  $8383  29                         STORE_quick   ; inline operand = 9
  $8384  39                         PUSH_quick   ; inline operand = 9
  $8385  8E 07 8A                   PUSH_imm2              $8A07
  $8388  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $838C  AC 9F CD                   CALL_abs               $CD9F {native}
  $838F  D7 94 83                   JUMPT_abs              $8394
  $8392  40                         LOADL_qimm   ; inline operand = 0
  $8393  CF                         RETURN
 >$8394  38                         PUSH_quick   ; inline operand = 8
  $8395  3D                         PUSH_quick   ; inline operand = 13
  $8396  81 17                      LOADL_near             $17
  $8398  EA 04                      CALLPTR_imm1           $04
  $839A  66                         PUSH_qimm   ; inline operand = 6
  $839B  61                         PUSH_qimm   ; inline operand = 1
  $839C  3C                         PUSH_quick   ; inline operand = 12
  $839D  3D                         PUSH_quick   ; inline operand = 13
  $839E  3F                         PUSH_quick   ; inline operand = 15
  $839F  8E F6 85                   PUSH_imm2              $85F6
  $83A2  8E C0 00                   PUSH_imm2              $00C0
  $83A5  61                         PUSH_qimm   ; inline operand = 1
  $83A6  E9 3A DE 10                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $10
  $83AA  09                         LOADL_quick   ; inline operand = 9
  $83AB  CD                         SWAP
  $83AC  A4 6B 66                   LOADL_abs              $666B
  $83AF  BC                         SUB
  $83B0  A8 6B 66                   STORE_abs              $666B
  $83B3  6D                         PUSH_qimm   ; inline operand = 13
  $83B4  8D 16                      BYTE_PUSH_imm1         +22
  $83B6  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $83BA  8E 36 8A                   PUSH_imm2              $8A36
  $83BD  E9 19 C7 02                CALL_abs_imm1          $C719 {native}, $02
  $83C1  6E                         PUSH_qimm   ; inline operand = 14
  $83C2  8D 19                      BYTE_PUSH_imm1         +25
  $83C4  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $83C8  AA 6B 66                   PUSH_abs               $666B
  $83CB  8E 3C 8A                   PUSH_imm2              $8A3C
  $83CE  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $83D2  41                         LOADL_qimm   ; inline operand = 1
  $83D3  CF                         RETURN

; ============================================================
; sub $83D4   (frame_off=-27, body @ $83D9)   [PRG $3A3D4]
; ============================================================
  $83D9  DE F7 FF                   LEAL_far               $FFF7
  $83DC  B3                         PUSHL
  $83DD  60                         PUSH_qimm   ; inline operand = 0
  $83DE  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $83E2  85 EB                      STORE_near             $EB
  $83E4  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $83E7  3F                         PUSH_quick   ; inline operand = 15
  $83E8  3D                         PUSH_quick   ; inline operand = 13
  $83E9  3E                         PUSH_quick   ; inline operand = 14
  $83EA  8E 40 8A                   PUSH_imm2              $8A40
  $83ED  E9 99 C7 08                CALL_abs_imm1          $C799 {native}, $08
  $83F1  61                         PUSH_qimm   ; inline operand = 1
  $83F2  E9 9B CE 02                CALL_abs_imm1          $CE9B {native}, $02
  $83F6  A4 6B 66                   LOADL_abs              $666B
  $83F9  1D                         LOADR_quick   ; inline operand = 13
  $83FA  C6                         UCMPLT
  $83FB  D8 0D 84                   JUMPF_abs              $840D
  $83FE  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8401  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8404  8E 5F 8A                   PUSH_imm2              $8A5F
  $8407  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $840B  40                         LOADL_qimm   ; inline operand = 0
  $840C  CF                         RETURN
 >$840D  40                         LOADL_qimm   ; inline operand = 0
  $840E  85 E5                      STORE_near             $E5
  $8410  8D 14                      BYTE_PUSH_imm1         +20
  $8412  61                         PUSH_qimm   ; inline operand = 1
  $8413  6C                         PUSH_qimm   ; inline operand = 12
  $8414  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $8418  60                         PUSH_qimm   ; inline operand = 0
  $8419  8D 12                      BYTE_PUSH_imm1         +18
  $841B  8D 1C                      BYTE_PUSH_imm1         +28
  $841D  62                         PUSH_qimm   ; inline operand = 2
  $841E  62                         PUSH_qimm   ; inline operand = 2
  $841F  E9 05 A4 0A                CALL_abs_imm1          $A405 {native}, $0A
  $8423  AC CE B7                   CALL_abs               $B7CE {native}
  $8426  AC 03 80                   CALL_abs               $8003 {bytecode}
  $8429  66                         PUSH_qimm   ; inline operand = 6
  $842A  61                         PUSH_qimm   ; inline operand = 1
  $842B  3C                         PUSH_quick   ; inline operand = 12
  $842C  8E 78 84                   PUSH_imm2              $8478
  $842F  8E C0 00                   PUSH_imm2              $00C0
  $8432  61                         PUSH_qimm   ; inline operand = 1
  $8433  E9 3A DE 0C                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $0C
  $8437  69                         PUSH_qimm   ; inline operand = 9
  $8438  8D 16                      BYTE_PUSH_imm1         +22
  $843A  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $843E  60                         PUSH_qimm   ; inline operand = 0
  $843F  8E 7B 8A                   PUSH_imm2              $8A7B
  $8442  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8446  6A                         PUSH_qimm   ; inline operand = 10
  $8447  8D 16                      BYTE_PUSH_imm1         +22
  $8449  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $844D  3D                         PUSH_quick   ; inline operand = 13
  $844E  8E 82 8A                   PUSH_imm2              $8A82
  $8451  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $8455  6B                         PUSH_qimm   ; inline operand = 11
  $8456  8D 16                      BYTE_PUSH_imm1         +22
  $8458  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $845C  3F                         PUSH_quick   ; inline operand = 15
  $845D  8E 89 8A                   PUSH_imm2              $8A89
  $8460  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $8464  6D                         PUSH_qimm   ; inline operand = 13
  $8465  8D 16                      BYTE_PUSH_imm1         +22
  $8467  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $846B  8E 8C 8A                   PUSH_imm2              $8A8C
  $846E  E9 19 C7 02                CALL_abs_imm1          $C719 {native}, $02
  $8472  6E                         PUSH_qimm   ; inline operand = 14
  $8473  8D 19                      BYTE_PUSH_imm1         +25
  $8475  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8479  AA 6B 66                   PUSH_abs               $666B
  $847C  8E 92 8A                   PUSH_imm2              $8A92
  $847F  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
 >$8483  AC 13 80                   CALL_abs               $8013 {bytecode}
  $8486  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8489  61                         PUSH_qimm   ; inline operand = 1
  $848A  8E 96 8A                   PUSH_imm2              $8A96
  $848D  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8491  87 EB                      PUSH_near              $EB
  $8493  62                         PUSH_qimm   ; inline operand = 2
  $8494  6A                         PUSH_qimm   ; inline operand = 10
  $8495  62                         PUSH_qimm   ; inline operand = 2
  $8496  E9 16 A2 08                CALL_abs_imm1          $A216 {native}, $08
  $849A  2A                         STORE_quick   ; inline operand = 10
  $849B  0A                         LOADL_quick   ; inline operand = 10
  $849C  8C FF 00                   LOADR_imm2             $00FF
  $849F  C1                         CMPNE
  $84A0  D8 BE 84                   JUMPF_abs              $84BE
  $84A3  87 17                      PUSH_near              $17
  $84A5  87 13                      PUSH_near              $13
  $84A7  3D                         PUSH_quick   ; inline operand = 13
  $84A8  3C                         PUSH_quick   ; inline operand = 12
  $84A9  3F                         PUSH_quick   ; inline operand = 15
  $84AA  DE F7 FF                   LEAL_far               $FFF7
  $84AD  B3                         PUSHL
  $84AE  0A                         LOADL_quick   ; inline operand = 10
  $84AF  B4                         POPR
  $84B0  BB                         ADD
  $84B1  D3                         BYTE_DEREF
  $84B2  B3                         PUSHL
  $84B3  3A                         PUSH_quick   ; inline operand = 10
  $84B4  E9 1D 83 0E                CALL_abs_imm1          $831D {bytecode}, $0E
  $84B8  CD                         SWAP
  $84B9  81 E5                      LOADL_near             $E5
  $84BB  DB                         OR
  $84BC  85 E5                      STORE_near             $E5
 >$84BE  0A                         LOADL_quick   ; inline operand = 10
  $84BF  8C FF 00                   LOADR_imm2             $00FF
  $84C2  C0                         CMPEQ
  $84C3  D7 CE 84                   JUMPT_abs              $84CE
  $84C6  A4 6B 66                   LOADL_abs              $666B
  $84C9  1D                         LOADR_quick   ; inline operand = 13
  $84CA  C6                         UCMPLT
  $84CB  D8 83 84                   JUMPF_abs              $8483
 >$84CE  A4 6B 66                   LOADL_abs              $666B
  $84D1  1D                         LOADR_quick   ; inline operand = 13
  $84D2  C6                         UCMPLT
  $84D3  D8 E3 84                   JUMPF_abs              $84E3
  $84D6  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $84D9  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $84DC  8E AA 8A                   PUSH_imm2              $8AAA
  $84DF  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
 >$84E3  8E 03 80                   PUSH_imm2              $8003
  $84E6  8E DE 00                   PUSH_imm2              $00DE
  $84E9  61                         PUSH_qimm   ; inline operand = 1
  $84EA  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $84EE  AC CE B7                   CALL_abs               $B7CE {native}
  $84F1  60                         PUSH_qimm   ; inline operand = 0
  $84F2  8D 12                      BYTE_PUSH_imm1         +18
  $84F4  8D 1C                      BYTE_PUSH_imm1         +28
  $84F6  62                         PUSH_qimm   ; inline operand = 2
  $84F7  62                         PUSH_qimm   ; inline operand = 2
  $84F8  E9 9B A4 0A                CALL_abs_imm1          $A49B {native}, $0A
  $84FC  81 E5                      LOADL_near             $E5
  $84FE  CF                         RETURN

; ============================================================
; sub $84FF   (frame_off=-4, body @ $8504)   [PRG $3A4FF]
; ============================================================
  $8504  40                         LOADL_qimm   ; inline operand = 0
  $8505  2A                         STORE_quick   ; inline operand = 10
  $8506  40                         LOADL_qimm   ; inline operand = 0
  $8507  D6 1E 85                   JUMP_abs               $851E
 >$850A  0D                         LOADL_quick   ; inline operand = 13
  $850B  1B                         LOADR_quick   ; inline operand = 11
  $850C  BB                         ADD
  $850D  D3                         BYTE_DEREF
  $850E  8B 18                      BYTE_LOADR_imm1        +24
  $8510  B5                         MULT
  $8511  8C B4 6A                   LOADR_imm2             $6AB4
  $8514  BB                         ADD
  $8515  B0                         DEREF
  $8516  5A                         LOADR_qimm   ; inline operand = 10
  $8517  B6                         SDIV
  $8518  CD                         SWAP
  $8519  0A                         LOADL_quick   ; inline operand = 10
  $851A  BB                         ADD
  $851B  2A                         STORE_quick   ; inline operand = 10
  $851C  0B                         LOADL_quick   ; inline operand = 11
  $851D  D0                         INC
 >$851E  2B                         STORE_quick   ; inline operand = 11
  $851F  0B                         LOADL_quick   ; inline operand = 11
  $8520  1C                         LOADR_quick   ; inline operand = 12
  $8521  C6                         UCMPLT
  $8522  D7 0A 85                   JUMPT_abs              $850A
  $8525  0A                         LOADL_quick   ; inline operand = 10
  $8526  CF                         RETURN

; ============================================================
; sub $8527   (frame_off=+0, body @ $852C)   [PRG $3A527]
; ============================================================
  $852C  0D                         LOADL_quick   ; inline operand = 13
  $852D  5A                         LOADR_qimm   ; inline operand = 10
  $852E  B5                         MULT
  $852F  B3                         PUSHL
  $8530  0C                         LOADL_quick   ; inline operand = 12
  $8531  8B 18                      BYTE_LOADR_imm1        +24
  $8533  B5                         MULT
  $8534  8C B4 6A                   LOADR_imm2             $6AB4
  $8537  BB                         ADD
  $8538  B4                         POPR
  $8539  B3                         PUSHL
  $853A  B0                         DEREF
  $853B  BB                         ADD
  $853C  B1                         POPSTORE
  $853D  CF                         RETURN

; ============================================================
; sub $853E   (frame_off=+0, body @ $8543)   [PRG $3A53E]
; ============================================================
  $8543  CF                         RETURN

; ============================================================
; sub $8544   (frame_off=-2, body @ $8549)   [PRG $3A544]
; ============================================================
  $8549  A5 67 70                   BYTE_LOADL_abs         $7067
  $854C  8B 31                      BYTE_LOADR_imm1        +49
  $854E  C8                         UCMPGT
  $854F  D8 57 85                   JUMPF_abs              $8557
  $8552  89 32                      BYTE_LOADL_imm1        +50
  $8554  D6 61 85                   JUMP_abs               $8561
 >$8557  A5 67 70                   BYTE_LOADL_abs         $7067
  $855A  5E                         LOADR_qimm   ; inline operand = 14
  $855B  B5                         MULT
  $855C  8C BD 67                   LOADR_imm2             $67BD
  $855F  BB                         ADD
  $8560  D3                         BYTE_DEREF
 >$8561  2B                         STORE_quick   ; inline operand = 11
  $8562  0B                         LOADL_quick   ; inline operand = 11
  $8563  8F 32                      BYTE_ADD_imm1          +50
  $8565  55                         LOADR_qimm   ; inline operand = 5
  $8566  B6                         SDIV
  $8567  2B                         STORE_quick   ; inline operand = 11
  $8568  8E 27 85                   PUSH_imm2              $8527
  $856B  8E FF 84                   PUSH_imm2              $84FF
  $856E  8E 3E 85                   PUSH_imm2              $853E
  $8571  8E C9 8A                   PUSH_imm2              $8AC9
  $8574  8E C4 8A                   PUSH_imm2              $8AC4
  $8577  3B                         PUSH_quick   ; inline operand = 11
  $8578  60                         PUSH_qimm   ; inline operand = 0
  $8579  E9 D4 83 0E                CALL_abs_imm1          $83D4 {bytecode}, $0E
  $857D  CF                         RETURN

; ============================================================
; sub $857E   (frame_off=+0, body @ $8583)   [PRG $3A57E]
; ============================================================
  $8583  CF                         RETURN

; ============================================================
; sub $8584   (frame_off=-3, body @ $8589)   [PRG $3A584]
; ============================================================
  $8589  40                         LOADL_qimm   ; inline operand = 0
  $858A  85 FD                      STORE_near             $FD
  $858C  40                         LOADL_qimm   ; inline operand = 0
  $858D  D6 A8 85                   JUMP_abs               $85A8
 >$8590  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8593  1D                         LOADR_quick   ; inline operand = 13
  $8594  BB                         ADD
  $8595  D3                         BYTE_DEREF
  $8596  8B 18                      BYTE_LOADR_imm1        +24
  $8598  B5                         MULT
  $8599  8C B8 6A                   LOADR_imm2             $6AB8
  $859C  BB                         ADD
  $859D  B0                         DEREF
  $859E  CD                         SWAP
  $859F  81 FD                      LOADL_near             $FD
  $85A1  BB                         ADD
  $85A2  85 FD                      STORE_near             $FD
  $85A4  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $85A7  D0                         INC
 >$85A8  A2 FF FF                   BYTE_STORE_far         $FFFF
  $85AB  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $85AE  1C                         LOADR_quick   ; inline operand = 12
  $85AF  C6                         UCMPLT
  $85B0  D7 90 85                   JUMPT_abs              $8590
  $85B3  81 FD                      LOADL_near             $FD
  $85B5  CF                         RETURN

; ============================================================
; sub $85B6   (frame_off=+0, body @ $85BB)   [PRG $3A5B6]
; ============================================================
  $85BB  3D                         PUSH_quick   ; inline operand = 13
  $85BC  0C                         LOADL_quick   ; inline operand = 12
  $85BD  8B 18                      BYTE_LOADR_imm1        +24
  $85BF  B5                         MULT
  $85C0  8C B8 6A                   LOADR_imm2             $6AB8
  $85C3  BB                         ADD
  $85C4  B4                         POPR
  $85C5  B3                         PUSHL
  $85C6  B0                         DEREF
  $85C7  BB                         ADD
  $85C8  B1                         POPSTORE
  $85C9  CF                         RETURN

; ============================================================
; sub $85CA   (frame_off=-2, body @ $85CF)   [PRG $3A5CA]
; ============================================================
  $85CF  A5 67 70                   BYTE_LOADL_abs         $7067
  $85D2  8B 31                      BYTE_LOADR_imm1        +49
  $85D4  C8                         UCMPGT
  $85D5  D8 DD 85                   JUMPF_abs              $85DD
  $85D8  89 32                      BYTE_LOADL_imm1        +50
  $85DA  D6 E7 85                   JUMP_abs               $85E7
 >$85DD  A5 67 70                   BYTE_LOADL_abs         $7067
  $85E0  5E                         LOADR_qimm   ; inline operand = 14
  $85E1  B5                         MULT
  $85E2  8C BD 67                   LOADR_imm2             $67BD
  $85E5  BB                         ADD
  $85E6  D3                         BYTE_DEREF
 >$85E7  2B                         STORE_quick   ; inline operand = 11
  $85E8  0B                         LOADL_quick   ; inline operand = 11
  $85E9  8F 32                      BYTE_ADD_imm1          +50
  $85EB  53                         LOADR_qimm   ; inline operand = 3
  $85EC  B6                         SDIV
  $85ED  2B                         STORE_quick   ; inline operand = 11
  $85EE  8E B6 85                   PUSH_imm2              $85B6
  $85F1  8E 84 85                   PUSH_imm2              $8584
  $85F4  8E 7E 85                   PUSH_imm2              $857E
  $85F7  8E D7 8A                   PUSH_imm2              $8AD7
  $85FA  8E D0 8A                   PUSH_imm2              $8AD0
  $85FD  3B                         PUSH_quick   ; inline operand = 11
  $85FE  62                         PUSH_qimm   ; inline operand = 2
  $85FF  E9 D4 83 0E                CALL_abs_imm1          $83D4 {bytecode}, $0E
  $8603  CF                         RETURN

; ============================================================
; sub $8604   (frame_off=-17, body @ $8609)   [PRG $3A604]
; ============================================================
  $8609  DE F7 FF                   LEAL_far               $FFF7
  $860C  B3                         PUSHL
  $860D  60                         PUSH_qimm   ; inline operand = 0
  $860E  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $8612  85 F5                      STORE_near             $F5
  $8614  40                         LOADL_qimm   ; inline operand = 0
  $8615  85 F1                      STORE_near             $F1
  $8617  85 F3                      STORE_near             $F3
  $8619  40                         LOADL_qimm   ; inline operand = 0
  $861A  D6 4C 86                   JUMP_abs               $864C
 >$861D  DE F7 FF                   LEAL_far               $FFF7
  $8620  B3                         PUSHL
  $8621  0B                         LOADL_quick   ; inline operand = 11
  $8622  B4                         POPR
  $8623  BB                         ADD
  $8624  D3                         BYTE_DEREF
  $8625  B3                         PUSHL
  $8626  E9 EA D9 02                CALL_abs_imm1          $D9EA {native}, $02
  $862A  CD                         SWAP
  $862B  81 F1                      LOADL_near             $F1
  $862D  BB                         ADD
  $862E  85 F1                      STORE_near             $F1
  $8630  DE F7 FF                   LEAL_far               $FFF7
  $8633  B3                         PUSHL
  $8634  0B                         LOADL_quick   ; inline operand = 11
  $8635  B4                         POPR
  $8636  BB                         ADD
  $8637  D3                         BYTE_DEREF
  $8638  B3                         PUSHL
  $8639  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $863D  8F 12                      BYTE_ADD_imm1          +18
  $863F  B3                         PUSHL
  $8640  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8644  CD                         SWAP
  $8645  81 F3                      LOADL_near             $F3
  $8647  BB                         ADD
  $8648  85 F3                      STORE_near             $F3
  $864A  0B                         LOADL_quick   ; inline operand = 11
  $864B  D0                         INC
 >$864C  2B                         STORE_quick   ; inline operand = 11
  $864D  0B                         LOADL_quick   ; inline operand = 11
  $864E  83 F5                      LOADR_near             $F5
  $8650  C6                         UCMPLT
  $8651  D7 1D 86                   JUMPT_abs              $861D
  $8654  81 F1                      LOADL_near             $F1
  $8656  83 F3                      LOADR_near             $F3
  $8658  C0                         CMPEQ
  $8659  D8 6B 86                   JUMPF_abs              $866B
  $865C  AC 13 80                   CALL_abs               $8013 {bytecode}
  $865F  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8662  8E FA 8A                   PUSH_imm2              $8AFA
  $8665  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8669  40                         LOADL_qimm   ; inline operand = 0
  $866A  CF                         RETURN
 >$866B  40                         LOADL_qimm   ; inline operand = 0
  $866C  85 EF                      STORE_near             $EF
 >$866E  AC 13 80                   CALL_abs               $8013 {bytecode}
  $8671  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8674  61                         PUSH_qimm   ; inline operand = 1
  $8675  8E 0E 8B                   PUSH_imm2              $8B0E
  $8678  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $867C  62                         PUSH_qimm   ; inline operand = 2
  $867D  63                         PUSH_qimm   ; inline operand = 3
  $867E  8E DC 8A                   PUSH_imm2              $8ADC
  $8681  62                         PUSH_qimm   ; inline operand = 2
  $8682  68                         PUSH_qimm   ; inline operand = 8
  $8683  8D 17                      BYTE_PUSH_imm1         +23
  $8685  68                         PUSH_qimm   ; inline operand = 8
  $8686  E9 56 A1 0E                CALL_abs_imm1          $A156 {native}, $0E
  $868A  2A                         STORE_quick   ; inline operand = 10
  $868B  0A                         LOADL_quick   ; inline operand = 10
  $868C  8C FF 00                   LOADR_imm2             $00FF
  $868F  C1                         CMPNE
  $8690  D8 B2 86                   JUMPF_abs              $86B2
  $8693  8A F0 00                   LOADL_imm2             $00F0
  $8696  A9 63 70                   BYTE_STORE_abs         $7063
  $8699  0A                         LOADL_quick   ; inline operand = 10
  $869A  D2                         LSHIFT1
  $869B  8C E2 8A                   LOADR_imm2             $8AE2
  $869E  BB                         ADD
  $869F  B0                         DEREF
  $86A0  DD                         CALLPTR
  $86A1  CD                         SWAP
  $86A2  81 EF                      LOADL_near             $EF
  $86A4  DB                         OR
  $86A5  85 EF                      STORE_near             $EF
  $86A7  8E 83 86                   PUSH_imm2              $8683
  $86AA  8E DE 00                   PUSH_imm2              $00DE
  $86AD  61                         PUSH_qimm   ; inline operand = 1
  $86AE  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
 >$86B2  0A                         LOADL_quick   ; inline operand = 10
  $86B3  8C FF 00                   LOADR_imm2             $00FF
  $86B6  C1                         CMPNE
  $86B7  D7 6E 86                   JUMPT_abs              $866E
  $86BA  40                         LOADL_qimm   ; inline operand = 0
  $86BB  CF                         RETURN

; ============================================================
; sub $86BC   (frame_off=-60, body @ $86C1)   [PRG $3A6BC]
; ============================================================
  $86C1  60                         PUSH_qimm   ; inline operand = 0
  $86C2  8D 12                      BYTE_PUSH_imm1         +18
  $86C4  8D 1C                      BYTE_PUSH_imm1         +28
  $86C6  62                         PUSH_qimm   ; inline operand = 2
  $86C7  62                         PUSH_qimm   ; inline operand = 2
  $86C8  E9 05 A4 0A                CALL_abs_imm1          $A405 {native}, $0A
  $86CC  40                         LOADL_qimm   ; inline operand = 0
  $86CD  85 C4                      STORE_near             $C4
 >$86CF  DE C6 FF                   LEAL_far               $FFC6
  $86D2  B3                         PUSHL
  $86D3  81 C4                      LOADL_near             $C4
  $86D5  D2                         LSHIFT1
  $86D6  B4                         POPR
  $86D7  BB                         ADD
  $86D8  B3                         PUSHL
  $86D9  40                         LOADL_qimm   ; inline operand = 0
  $86DA  B1                         POPSTORE
  $86DB  81 C4                      LOADL_near             $C4
  $86DD  D0                         INC
  $86DE  85 C4                      STORE_near             $C4
  $86E0  81 C4                      LOADL_near             $C4
  $86E2  8B 1D                      BYTE_LOADR_imm1        +29
  $86E4  C6                         UCMPLT
  $86E5  D7 CF 86                   JUMPT_abs              $86CF
  $86E8  8D 14                      BYTE_PUSH_imm1         +20
  $86EA  61                         PUSH_qimm   ; inline operand = 1
  $86EB  6C                         PUSH_qimm   ; inline operand = 12
  $86EC  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $86F0  DE C6 FF                   LEAL_far               $FFC6
  $86F3  B3                         PUSHL
  $86F4  8E 14 98                   PUSH_imm2              $9814
  $86F7  8E C0 00                   PUSH_imm2              $00C0
  $86FA  61                         PUSH_qimm   ; inline operand = 1
  $86FB  E9 3A DE 08                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $08
  $86FF  8E 03 80                   PUSH_imm2              $8003
  $8702  8E DE 00                   PUSH_imm2              $00DE
  $8705  61                         PUSH_qimm   ; inline operand = 1
  $8706  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $870A  8A F0 00                   LOADL_imm2             $00F0
  $870D  A9 63 70                   BYTE_STORE_abs         $7063
  $8710  AC EC B7                   CALL_abs               $B7EC {native}
  $8713  60                         PUSH_qimm   ; inline operand = 0
  $8714  8D 12                      BYTE_PUSH_imm1         +18
  $8716  8D 1C                      BYTE_PUSH_imm1         +28
  $8718  62                         PUSH_qimm   ; inline operand = 2
  $8719  62                         PUSH_qimm   ; inline operand = 2
  $871A  E9 9B A4 0A                CALL_abs_imm1          $A49B {native}, $0A
  $871E  8E 83 86                   PUSH_imm2              $8683
  $8721  8E DE 00                   PUSH_imm2              $00DE
  $8724  61                         PUSH_qimm   ; inline operand = 1
  $8725  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $8729  40                         LOADL_qimm   ; inline operand = 0
  $872A  CF                         RETURN

; ============================================================
; sub $872B   (frame_off=-4, body @ $8730)   [PRG $3A72B]
; ============================================================
  $8730  40                         LOADL_qimm   ; inline operand = 0
  $8731  2A                         STORE_quick   ; inline operand = 10
 >$8732  AC 13 80                   CALL_abs               $8013 {bytecode}
  $8735  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8738  61                         PUSH_qimm   ; inline operand = 1
  $8739  8E 4E 8B                   PUSH_imm2              $8B4E
  $873C  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8740  62                         PUSH_qimm   ; inline operand = 2
  $8741  63                         PUSH_qimm   ; inline operand = 3
  $8742  8E 24 8B                   PUSH_imm2              $8B24
  $8745  62                         PUSH_qimm   ; inline operand = 2
  $8746  67                         PUSH_qimm   ; inline operand = 7
  $8747  8D 17                      BYTE_PUSH_imm1         +23
  $8749  68                         PUSH_qimm   ; inline operand = 8
  $874A  E9 56 A1 0E                CALL_abs_imm1          $A156 {native}, $0E
  $874E  2B                         STORE_quick   ; inline operand = 11
  $874F  0B                         LOADL_quick   ; inline operand = 11
  $8750  8C FF 00                   LOADR_imm2             $00FF
  $8753  C1                         CMPNE
  $8754  D8 60 87                   JUMPF_abs              $8760
  $8757  0B                         LOADL_quick   ; inline operand = 11
  $8758  D2                         LSHIFT1
  $8759  8C 2C 8B                   LOADR_imm2             $8B2C
  $875C  BB                         ADD
  $875D  B0                         DEREF
  $875E  DD                         CALLPTR
  $875F  2A                         STORE_quick   ; inline operand = 10
 >$8760  0B                         LOADL_quick   ; inline operand = 11
  $8761  8C FF 00                   LOADR_imm2             $00FF
  $8764  C0                         CMPEQ
  $8765  D7 6C 87                   JUMPT_abs              $876C
  $8768  0A                         LOADL_quick   ; inline operand = 10
  $8769  D8 32 87                   JUMPF_abs              $8732
 >$876C  0A                         LOADL_quick   ; inline operand = 10
  $876D  CF                         RETURN

; ============================================================
; sub $876E   (frame_off=+0, body @ $8773)   [PRG $3A76E]
; ============================================================
  $8773  40                         LOADL_qimm   ; inline operand = 0
  $8774  A9 63 70                   BYTE_STORE_abs         $7063
  $8777  8A FD 00                   LOADL_imm2             $00FD
  $877A  CD                         SWAP
  $877B  A5 71 66                   BYTE_LOADL_abs         $6671
  $877E  DA                         AND
  $877F  A9 71 66                   BYTE_STORE_abs         $6671
  $8782  41                         LOADL_qimm   ; inline operand = 1
  $8783  CD                         SWAP
  $8784  A5 71 66                   BYTE_LOADL_abs         $6671
  $8787  DB                         OR
  $8788  A9 71 66                   BYTE_STORE_abs         $6671
  $878B  40                         LOADL_qimm   ; inline operand = 0
  $878C  A9 7E 73                   BYTE_STORE_abs         $737E
  $878F  CF                         RETURN

; ============================================================
; sub $8790   (frame_off=+0, body @ $8795)   [PRG $3A790]
; ============================================================
  $8795  3C                         PUSH_quick   ; inline operand = 12
  $8796  8E 66 8B                   PUSH_imm2              $8B66
  $8799  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $879D  CF                         RETURN

; ============================================================
; sub $879E   (frame_off=-8, body @ $87A3)   [PRG $3A79E]
; ============================================================
  $87A3  60                         PUSH_qimm   ; inline operand = 0
  $87A4  60                         PUSH_qimm   ; inline operand = 0
  $87A5  68                         PUSH_qimm   ; inline operand = 8
  $87A6  8D 1E                      BYTE_PUSH_imm1         +30
  $87A8  8D 14                      BYTE_PUSH_imm1         +20
  $87AA  61                         PUSH_qimm   ; inline operand = 1
  $87AB  68                         PUSH_qimm   ; inline operand = 8
  $87AC  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $87B0  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $87B3  61                         PUSH_qimm   ; inline operand = 1
  $87B4  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $87B8  8D 5A                      BYTE_PUSH_imm1         +90
  $87BA  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $87BE  D7 C9 87                   JUMPT_abs              $87C9
  $87C1  8E 72 8B                   PUSH_imm2              $8B72
  $87C4  E9 90 87 02                CALL_abs_imm1          $8790 {bytecode}, $02
  $87C8  CF                         RETURN
 >$87C9  A4 6D 66                   LOADL_abs              $666D
  $87CC  57                         LOADR_qimm   ; inline operand = 7
  $87CD  DA                         AND
  $87CE  2B                         STORE_quick   ; inline operand = 11
  $87CF  0B                         LOADL_quick   ; inline operand = 11
  $87D0  51                         LOADR_qimm   ; inline operand = 1
  $87D1  DA                         AND
  $87D2  D7 EE 87                   JUMPT_abs              $87EE
  $87D5  A5 45 65                   BYTE_LOADL_abs         $6545
  $87D8  55                         LOADR_qimm   ; inline operand = 5
  $87D9  C6                         UCMPLT
  $87DA  D8 EE 87                   JUMPF_abs              $87EE
  $87DD  8D 28                      BYTE_PUSH_imm1         +40
  $87DF  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $87E3  D7 EE 87                   JUMPT_abs              $87EE
  $87E6  8E A3 8B                   PUSH_imm2              $8BA3
  $87E9  E9 90 87 02                CALL_abs_imm1          $8790 {bytecode}, $02
  $87ED  CF                         RETURN
 >$87EE  0B                         LOADL_quick   ; inline operand = 11
  $87EF  52                         LOADR_qimm   ; inline operand = 2
  $87F0  DA                         AND
  $87F1  D7 0D 88                   JUMPT_abs              $880D
  $87F4  A5 45 65                   BYTE_LOADL_abs         $6545
  $87F7  56                         LOADR_qimm   ; inline operand = 6
  $87F8  C6                         UCMPLT
  $87F9  D8 0D 88                   JUMPF_abs              $880D
  $87FC  8D 32                      BYTE_PUSH_imm1         +50
  $87FE  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8802  D7 0D 88                   JUMPT_abs              $880D
  $8805  8E D3 8B                   PUSH_imm2              $8BD3
  $8808  E9 90 87 02                CALL_abs_imm1          $8790 {bytecode}, $02
  $880C  CF                         RETURN
 >$880D  0B                         LOADL_quick   ; inline operand = 11
  $880E  54                         LOADR_qimm   ; inline operand = 4
  $880F  DA                         AND
  $8810  D7 2C 88                   JUMPT_abs              $882C
  $8813  A5 45 65                   BYTE_LOADL_abs         $6545
  $8816  57                         LOADR_qimm   ; inline operand = 7
  $8817  C6                         UCMPLT
  $8818  D8 2C 88                   JUMPF_abs              $882C
  $881B  8D 32                      BYTE_PUSH_imm1         +50
  $881D  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8821  D7 2C 88                   JUMPT_abs              $882C
  $8824  8E 00 8C                   PUSH_imm2              $8C00
  $8827  E9 90 87 02                CALL_abs_imm1          $8790 {bytecode}, $02
  $882B  CF                         RETURN
 >$882C  8D 64                      BYTE_PUSH_imm1         +100
  $882E  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8832  8F 46                      BYTE_ADD_imm1          +70
  $8834  B3                         PUSHL
  $8835  A4 6B 66                   LOADL_abs              $666B
  $8838  B4                         POPR
  $8839  C6                         UCMPLT
  $883A  D8 4D 88                   JUMPF_abs              $884D
  $883D  63                         PUSH_qimm   ; inline operand = 3
  $883E  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8842  D7 4D 88                   JUMPT_abs              $884D
  $8845  8E 2B 8C                   PUSH_imm2              $8C2B
  $8848  E9 90 87 02                CALL_abs_imm1          $8790 {bytecode}, $02
  $884C  CF                         RETURN
 >$884D  A5 5F 70                   BYTE_LOADL_abs         $705F
  $8850  51                         LOADR_qimm   ; inline operand = 1
  $8851  DA                         AND
  $8852  D8 6F 88                   JUMPF_abs              $886F
  $8855  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $8858  D3                         BYTE_DEREF
  $8859  59                         LOADR_qimm   ; inline operand = 9
  $885A  C1                         CMPNE
  $885B  D8 6F 88                   JUMPF_abs              $886F
  $885E  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $8861  D3                         BYTE_DEREF
  $8862  58                         LOADR_qimm   ; inline operand = 8
  $8863  C1                         CMPNE
  $8864  D8 6F 88                   JUMPF_abs              $886F
  $8867  63                         PUSH_qimm   ; inline operand = 3
  $8868  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $886C  D8 78 88                   JUMPF_abs              $8878
 >$886F  8D 1E                      BYTE_PUSH_imm1         +30
  $8871  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8875  D7 A6 88                   JUMPT_abs              $88A6
 >$8878  A5 67 70                   BYTE_LOADL_abs         $7067
  $887B  8B 32                      BYTE_LOADR_imm1        +50
  $887D  C6                         UCMPLT
  $887E  D8 A6 88                   JUMPF_abs              $88A6
  $8881  62                         PUSH_qimm   ; inline operand = 2
  $8882  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8886  D8 8F 88                   JUMPF_abs              $888F
  $8889  8A 5D 8C                   LOADL_imm2             $8C5D
  $888C  D6 A0 88                   JUMP_abs               $88A0
 >$888F  62                         PUSH_qimm   ; inline operand = 2
  $8890  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8894  D8 9D 88                   JUMPF_abs              $889D
  $8897  8A 7A 8C                   LOADL_imm2             $8C7A
  $889A  D6 A0 88                   JUMP_abs               $88A0
 >$889D  8A A1 8C                   LOADL_imm2             $8CA1
 >$88A0  B3                         PUSHL
  $88A1  E9 90 87 02                CALL_abs_imm1          $8790 {bytecode}, $02
  $88A5  CF                         RETURN
 >$88A6  DE F8 FF                   LEAL_far               $FFF8
  $88A9  B3                         PUSHL
  $88AA  60                         PUSH_qimm   ; inline operand = 0
  $88AB  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $88AF  51                         LOADR_qimm   ; inline operand = 1
  $88B0  C0                         CMPEQ
  $88B1  D8 C4 88                   JUMPF_abs              $88C4
  $88B4  6F                         PUSH_qimm   ; inline operand = 15
  $88B5  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $88B9  D7 C4 88                   JUMPT_abs              $88C4
  $88BC  8E D1 8C                   PUSH_imm2              $8CD1
  $88BF  E9 90 87 02                CALL_abs_imm1          $8790 {bytecode}, $02
  $88C3  CF                         RETURN
 >$88C4  61                         PUSH_qimm   ; inline operand = 1
  $88C5  8E 07 8D                   PUSH_imm2              $8D07
  $88C8  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $88CC  CF                         RETURN

