VM bytecode disassembly
  ROM:          Uncharted Waters (USA).nes
  mode:         bulk dump of bank 22
  opcode spec:  vm-opcodes-v2.toml via nobunaga_vm.OPCODE_INFO (execution-validated lengths)
  labels:       0 CPU addresses named

  bank 22: found 36 bytecode-subroutine stubs

; ============================================================
; sub $8003   (frame_off=-25, body @ $8008)   [PRG $2C003]
; ============================================================
  $8008  DE E9 FF                   LEAL_far               $FFE9
  $800B  B3                         PUSHL
  $800C  60                         PUSH_qimm   ; inline operand = 0
  $800D  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $8011  55                         LOADR_qimm   ; inline operand = 5
  $8012  C0                         CMPEQ
  $8013  D8 25 80                   JUMPF_abs              $8025
  $8016  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8019  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $801C  8E 83 90                   PUSH_imm2              $9083
  $801F  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8023  40                         LOADL_qimm   ; inline operand = 0
  $8024  CF                         RETURN
 >$8025  DE E9 FF                   LEAL_far               $FFE9
  $8028  B3                         PUSHL
  $8029  E9 D6 D6 02                CALL_abs_imm1          $D6D6 {native}, $02
  $802D  D7 3F 80                   JUMPT_abs              $803F
  $8030  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8033  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8036  8E 99 90                   PUSH_imm2              $9099
  $8039  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $803D  40                         LOADL_qimm   ; inline operand = 0
  $803E  CF                         RETURN
 >$803F  A5 67 70                   BYTE_LOADL_abs         $7067
  $8042  5E                         LOADR_qimm   ; inline operand = 14
  $8043  B5                         MULT
  $8044  8C B6 67                   LOADR_imm2             $67B6
  $8047  BB                         ADD
  $8048  B0                         DEREF
  $8049  8B 64                      BYTE_LOADR_imm1        +100
  $804B  C2                         SCMPLT
  $804C  D8 61 80                   JUMPF_abs              $8061
  $804F  61                         PUSH_qimm   ; inline operand = 1
  $8050  65                         PUSH_qimm   ; inline operand = 5
  $8051  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8055  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8058  8E B5 90                   PUSH_imm2              $90B5
  $805B  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $805F  40                         LOADL_qimm   ; inline operand = 0
  $8060  CF                         RETURN
 >$8061  40                         LOADL_qimm   ; inline operand = 0
  $8062  2B                         STORE_quick   ; inline operand = 11
 >$8063  61                         PUSH_qimm   ; inline operand = 1
  $8064  65                         PUSH_qimm   ; inline operand = 5
  $8065  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8069  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $806C  61                         PUSH_qimm   ; inline operand = 1
  $806D  8E DD 90                   PUSH_imm2              $90DD
  $8070  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8074  62                         PUSH_qimm   ; inline operand = 2
  $8075  62                         PUSH_qimm   ; inline operand = 2
  $8076  8E 5E 90                   PUSH_imm2              $905E
  $8079  62                         PUSH_qimm   ; inline operand = 2
  $807A  60                         PUSH_qimm   ; inline operand = 0
  $807B  8D 17                      BYTE_PUSH_imm1         +23
  $807D  68                         PUSH_qimm   ; inline operand = 8
  $807E  E9 56 A1 0E                CALL_abs_imm1          $A156 {native}, $0E
  $8082  A2 FD FF                   BYTE_STORE_far         $FFFD
  $8085  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $8088  8C FF 00                   LOADR_imm2             $00FF
  $808B  C1                         CMPNE
  $808C  D8 CE 80                   JUMPF_abs              $80CE
  $808F  60                         PUSH_qimm   ; inline operand = 0
  $8090  8D 12                      BYTE_PUSH_imm1         +18
  $8092  8D 1C                      BYTE_PUSH_imm1         +28
  $8094  62                         PUSH_qimm   ; inline operand = 2
  $8095  62                         PUSH_qimm   ; inline operand = 2
  $8096  E9 05 A4 0A                CALL_abs_imm1          $A405 {native}, $0A
  $809A  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $809D  D2                         LSHIFT1
  $809E  8C 62 90                   LOADR_imm2             $9062
  $80A1  BB                         ADD
  $80A2  B0                         DEREF
  $80A3  DD                         CALLPTR
  $80A4  2B                         STORE_quick   ; inline operand = 11
  $80A5  8A F0 00                   LOADL_imm2             $00F0
  $80A8  A9 63 70                   BYTE_STORE_abs         $7063
  $80AB  0B                         LOADL_quick   ; inline operand = 11
  $80AC  D8 B8 80                   JUMPF_abs              $80B8
  $80AF  0B                         LOADL_quick   ; inline operand = 11
  $80B0  51                         LOADR_qimm   ; inline operand = 1
  $80B1  C1                         CMPNE
  $80B2  D8 B8 80                   JUMPF_abs              $80B8
  $80B5  AC 37 CE                   CALL_abs               $CE37 {native}
 >$80B8  8E 03 80                   PUSH_imm2              $8003 (shipyard_entry)
  $80BB  8E DE 00                   PUSH_imm2              $00DE
  $80BE  61                         PUSH_qimm   ; inline operand = 1
  $80BF  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $80C3  60                         PUSH_qimm   ; inline operand = 0
  $80C4  8D 12                      BYTE_PUSH_imm1         +18
  $80C6  8D 1C                      BYTE_PUSH_imm1         +28
  $80C8  62                         PUSH_qimm   ; inline operand = 2
  $80C9  62                         PUSH_qimm   ; inline operand = 2
  $80CA  E9 9B A4 0A                CALL_abs_imm1          $A49B {native}, $0A
 >$80CE  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $80D1  8C FF 00                   LOADR_imm2             $00FF
  $80D4  C0                         CMPEQ
  $80D5  D7 DC 80                   JUMPT_abs              $80DC
  $80D8  0B                         LOADL_quick   ; inline operand = 11
  $80D9  D8 63 80                   JUMPF_abs              $8063
 >$80DC  0B                         LOADL_quick   ; inline operand = 11
  $80DD  D8 2C 81                   JUMPF_abs              $812C
  $80E0  0B                         LOADL_quick   ; inline operand = 11
  $80E1  51                         LOADR_qimm   ; inline operand = 1
  $80E2  C1                         CMPNE
  $80E3  D8 2C 81                   JUMPF_abs              $812C
  $80E6  45                         LOADL_qimm   ; inline operand = 5
  $80E7  CD                         SWAP
  $80E8  0B                         LOADL_quick   ; inline operand = 11
  $80E9  BC                         SUB
  $80EA  2B                         STORE_quick   ; inline operand = 11
  $80EB  0B                         LOADL_quick   ; inline operand = 11
  $80EC  57                         LOADR_qimm   ; inline operand = 7
  $80ED  B5                         MULT
  $80EE  8C 90 6C                   LOADR_imm2             $6C90
  $80F1  BB                         ADD
  $80F2  85 E7                      STORE_near             $E7
  $80F4  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $80F7  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $80FA  60                         PUSH_qimm   ; inline operand = 0
  $80FB  8E F1 90                   PUSH_imm2              $90F1
  $80FE  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8102  81 E7                      LOADL_near             $E7
  $8104  76                         ADD_qimm   ; inline operand = 6
  $8105  D3                         BYTE_DEREF
  $8106  5F                         LOADR_qimm   ; inline operand = 15
  $8107  DA                         AND
  $8108  B3                         PUSHL
  $8109  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $810D  B3                         PUSHL
  $810E  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8112  60                         PUSH_qimm   ; inline operand = 0
  $8113  8E 0D 91                   PUSH_imm2              $910D
  $8116  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $811A  0B                         LOADL_quick   ; inline operand = 11
  $811B  8B 18                      BYTE_LOADR_imm1        +24
  $811D  B5                         MULT
  $811E  8C A4 6A                   LOADR_imm2             $6AA4
  $8121  BB                         ADD
  $8122  B3                         PUSHL
  $8123  AC 91 D7                   CALL_abs               $D791 {native}
  $8126  D4                         BYTE_POPSTORE
  $8127  41                         LOADL_qimm   ; inline operand = 1
  $8128  2B                         STORE_quick   ; inline operand = 11
  $8129  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
 >$812C  0B                         LOADL_quick   ; inline operand = 11
  $812D  CF                         RETURN

; ============================================================
; sub $812E   (frame_off=+0, body @ $8133)   [PRG $2C12E]
; ============================================================
  $8133  68                         PUSH_qimm   ; inline operand = 8
  $8134  68                         PUSH_qimm   ; inline operand = 8
  $8135  8E 16 91                   PUSH_imm2              $9116
  $8138  66                         PUSH_qimm   ; inline operand = 6
  $8139  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $813D  CF                         RETURN

; ============================================================
; sub $813E   (frame_off=-6, body @ $8143)   [PRG $2C13E]
; ============================================================
  $8143  AC 2E 81                   CALL_abs               $812E {bytecode}
  $8146  0C                         LOADL_quick   ; inline operand = 12
  $8147  53                         LOADR_qimm   ; inline operand = 3
  $8148  BA                         UMOD
  $8149  59                         LOADR_qimm   ; inline operand = 9
  $814A  B5                         MULT
  $814B  73                         ADD_qimm   ; inline operand = 3
  $814C  2B                         STORE_quick   ; inline operand = 11
  $814D  0C                         LOADL_quick   ; inline operand = 12
  $814E  53                         LOADR_qimm   ; inline operand = 3
  $814F  B8                         UDIV
  $8150  57                         LOADR_qimm   ; inline operand = 7
  $8151  B5                         MULT
  $8152  D0                         INC
  $8153  2A                         STORE_quick   ; inline operand = 10
  $8154  0C                         LOADL_quick   ; inline operand = 12
  $8155  75                         ADD_qimm   ; inline operand = 5
  $8156  B3                         PUSHL
  $8157  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $815B  29                         STORE_quick   ; inline operand = 9
  $815C  0C                         LOADL_quick   ; inline operand = 12
  $815D  75                         ADD_qimm   ; inline operand = 5
  $815E  B3                         PUSHL
  $815F  0A                         LOADL_quick   ; inline operand = 10
  $8160  76                         ADD_qimm   ; inline operand = 6
  $8161  B3                         PUSHL
  $8162  3B                         PUSH_quick   ; inline operand = 11
  $8163  8E 39 81                   PUSH_imm2              $8139
  $8166  8E DE 00                   PUSH_imm2              $00DE
  $8169  61                         PUSH_qimm   ; inline operand = 1
  $816A  E9 3A DE 0C                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $0C
  $816E  0A                         LOADL_quick   ; inline operand = 10
  $816F  7B                         ADD_qimm   ; inline operand = 11
  $8170  B3                         PUSHL
  $8171  3B                         PUSH_quick   ; inline operand = 11
  $8172  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8176  39                         PUSH_quick   ; inline operand = 9
  $8177  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $817B  CF                         RETURN

; ============================================================
; sub $817C   (frame_off=-2, body @ $8181)   [PRG $2C17C]
; ============================================================
  $8181  89 FF                      BYTE_LOADL_imm1        -1
  $8183  A8 64 70                   STORE_abs              $7064
  $8186  AC CE B7                   CALL_abs               $B7CE {native}
  $8189  40                         LOADL_qimm   ; inline operand = 0
  $818A  D6 94 81                   JUMP_abs               $8194
 >$818D  3B                         PUSH_quick   ; inline operand = 11
  $818E  E9 3E 81 02                CALL_abs_imm1          $813E {bytecode}, $02
  $8192  0B                         LOADL_quick   ; inline operand = 11
  $8193  D0                         INC
 >$8194  2B                         STORE_quick   ; inline operand = 11
  $8195  0C                         LOADL_quick   ; inline operand = 12
  $8196  D0                         INC
  $8197  B3                         PUSHL
  $8198  0B                         LOADL_quick   ; inline operand = 11
  $8199  B4                         POPR
  $819A  C6                         UCMPLT
  $819B  D7 8D 81                   JUMPT_abs              $818D
  $819E  CF                         RETURN

; ============================================================
; sub $819F   (frame_off=-4, body @ $81A4)   [PRG $2C19F]
; ============================================================
  $81A4  3C                         PUSH_quick   ; inline operand = 12
  $81A5  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $81A9  8F 14                      BYTE_ADD_imm1          +20
  $81AB  B3                         PUSHL
  $81AC  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $81B0  55                         LOADR_qimm   ; inline operand = 5
  $81B1  BE                         URSHIFT
  $81B2  57                         LOADR_qimm   ; inline operand = 7
  $81B3  DA                         AND
  $81B4  5A                         LOADR_qimm   ; inline operand = 10
  $81B5  B5                         MULT
  $81B6  2B                         STORE_quick   ; inline operand = 11
  $81B7  3C                         PUSH_quick   ; inline operand = 12
  $81B8  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $81BC  8F 14                      BYTE_ADD_imm1          +20
  $81BE  B3                         PUSHL
  $81BF  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $81C3  53                         LOADR_qimm   ; inline operand = 3
  $81C4  DA                         AND
  $81C5  5A                         LOADR_qimm   ; inline operand = 10
  $81C6  B5                         MULT
  $81C7  2A                         STORE_quick   ; inline operand = 10
  $81C8  0B                         LOADL_quick   ; inline operand = 11
  $81C9  1A                         LOADR_quick   ; inline operand = 10
  $81CA  BB                         ADD
  $81CB  8F 14                      BYTE_ADD_imm1          +20
  $81CD  CF                         RETURN

; ============================================================
; sub $81CE   (frame_off=+0, body @ $81D3)   [PRG $2C1CE]
; ============================================================
  $81D3  A0 0B 00                   BYTE_LOADL_far         $000B
  $81D6  B3                         PUSHL
  $81D7  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $81DB  8F 14                      BYTE_ADD_imm1          +20
  $81DD  B3                         PUSHL
  $81DE  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $81E2  54                         LOADR_qimm   ; inline operand = 4
  $81E3  BE                         URSHIFT
  $81E4  51                         LOADR_qimm   ; inline operand = 1
  $81E5  DA                         AND
  $81E6  B3                         PUSHL
  $81E7  44                         LOADL_qimm   ; inline operand = 4
  $81E8  B4                         POPR
  $81E9  BC                         SUB
  $81EA  B3                         PUSHL
  $81EB  A0 0B 00                   BYTE_LOADL_far         $000B
  $81EE  B3                         PUSHL
  $81EF  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $81F3  8F 14                      BYTE_ADD_imm1          +20
  $81F5  B3                         PUSHL
  $81F6  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $81FA  52                         LOADR_qimm   ; inline operand = 2
  $81FB  BE                         URSHIFT
  $81FC  53                         LOADR_qimm   ; inline operand = 3
  $81FD  DA                         AND
  $81FE  B3                         PUSHL
  $81FF  4A                         LOADL_qimm   ; inline operand = 10
  $8200  B4                         POPR
  $8201  BC                         SUB
  $8202  B3                         PUSHL
  $8203  A0 0B 00                   BYTE_LOADL_far         $000B
  $8206  B3                         PUSHL
  $8207  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $820B  8F 14                      BYTE_ADD_imm1          +20
  $820D  B3                         PUSHL
  $820E  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8212  55                         LOADR_qimm   ; inline operand = 5
  $8213  BE                         URSHIFT
  $8214  57                         LOADR_qimm   ; inline operand = 7
  $8215  DA                         AND
  $8216  B3                         PUSHL
  $8217  89 14                      BYTE_LOADL_imm1        +20
  $8219  B4                         POPR
  $821A  BC                         SUB
  $821B  8B 64                      BYTE_LOADR_imm1        +100
  $821D  B5                         MULT
  $821E  8B 14                      BYTE_LOADR_imm1        +20
  $8220  B6                         SDIV
  $8221  B4                         POPR
  $8222  B5                         MULT
  $8223  5A                         LOADR_qimm   ; inline operand = 10
  $8224  B6                         SDIV
  $8225  B4                         POPR
  $8226  B5                         MULT
  $8227  54                         LOADR_qimm   ; inline operand = 4
  $8228  B6                         SDIV
  $8229  CF                         RETURN

; ============================================================
; sub $822A   (frame_off=-2, body @ $822F)   [PRG $2C22A]
; ============================================================
  $822F  A0 0B 00                   BYTE_LOADL_far         $000B
  $8232  B3                         PUSHL
  $8233  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8237  8F 14                      BYTE_ADD_imm1          +20
  $8239  B3                         PUSHL
  $823A  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $823E  54                         LOADR_qimm   ; inline operand = 4
  $823F  BE                         URSHIFT
  $8240  51                         LOADR_qimm   ; inline operand = 1
  $8241  DA                         AND
  $8242  73                         ADD_qimm   ; inline operand = 3
  $8243  B3                         PUSHL
  $8244  A0 0B 00                   BYTE_LOADL_far         $000B
  $8247  B3                         PUSHL
  $8248  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $824C  8F 14                      BYTE_ADD_imm1          +20
  $824E  B3                         PUSHL
  $824F  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8253  55                         LOADR_qimm   ; inline operand = 5
  $8254  BE                         URSHIFT
  $8255  57                         LOADR_qimm   ; inline operand = 7
  $8256  DA                         AND
  $8257  B3                         PUSHL
  $8258  4A                         LOADL_qimm   ; inline operand = 10
  $8259  B4                         POPR
  $825A  BC                         SUB
  $825B  B3                         PUSHL
  $825C  A0 0B 00                   BYTE_LOADL_far         $000B
  $825F  B3                         PUSHL
  $8260  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8264  8F 14                      BYTE_ADD_imm1          +20
  $8266  B3                         PUSHL
  $8267  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $826B  52                         LOADR_qimm   ; inline operand = 2
  $826C  BE                         URSHIFT
  $826D  53                         LOADR_qimm   ; inline operand = 3
  $826E  DA                         AND
  $826F  5A                         LOADR_qimm   ; inline operand = 10
  $8270  B5                         MULT
  $8271  8F 64                      BYTE_ADD_imm1          +100
  $8273  B4                         POPR
  $8274  B5                         MULT
  $8275  5A                         LOADR_qimm   ; inline operand = 10
  $8276  B6                         SDIV
  $8277  B4                         POPR
  $8278  B5                         MULT
  $8279  52                         LOADR_qimm   ; inline operand = 2
  $827A  BE                         URSHIFT
  $827B  2B                         STORE_quick   ; inline operand = 11
  $827C  0B                         LOADL_quick   ; inline operand = 11
  $827D  8B 64                      BYTE_LOADR_imm1        +100
  $827F  C4                         SCMPGT
  $8280  D8 88 82                   JUMPF_abs              $8288
  $8283  89 64                      BYTE_LOADL_imm1        +100
  $8285  D6 89 82                   JUMP_abs               $8289
 >$8288  0B                         LOADL_quick   ; inline operand = 11
 >$8289  CF                         RETURN

; ============================================================
; sub $828A   (frame_off=-3, body @ $828F)   [PRG $2C28A]
; ============================================================
  $828F  A0 0B 00                   BYTE_LOADL_far         $000B
  $8292  B3                         PUSHL
  $8293  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8297  8F 14                      BYTE_ADD_imm1          +20
  $8299  B3                         PUSHL
  $829A  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $829E  55                         LOADR_qimm   ; inline operand = 5
  $829F  BE                         URSHIFT
  $82A0  57                         LOADR_qimm   ; inline operand = 7
  $82A1  DA                         AND
  $82A2  A2 FD FF                   BYTE_STORE_far         $FFFD
  $82A5  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $82A8  55                         LOADR_qimm   ; inline operand = 5
  $82A9  B8                         UDIV
  $82AA  8B 32                      BYTE_LOADR_imm1        +50
  $82AC  B5                         MULT
  $82AD  B3                         PUSHL
  $82AE  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $82B1  B3                         PUSHL
  $82B2  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $82B5  51                         LOADR_qimm   ; inline operand = 1
  $82B6  DA                         AND
  $82B7  B4                         POPR
  $82B8  B5                         MULT
  $82B9  8B 32                      BYTE_LOADR_imm1        +50
  $82BB  B5                         MULT
  $82BC  B3                         PUSHL
  $82BD  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $82C0  72                         ADD_qimm   ; inline operand = 2
  $82C1  52                         LOADR_qimm   ; inline operand = 2
  $82C2  B6                         SDIV
  $82C3  8C 2C 01                   LOADR_imm2             $012C
  $82C6  B5                         MULT
  $82C7  B4                         POPR
  $82C8  BB                         ADD
  $82C9  B4                         POPR
  $82CA  BB                         ADD
  $82CB  90 38 FF                   ADD_imm2               $FF38
  $82CE  2B                         STORE_quick   ; inline operand = 11
  $82CF  0B                         LOADL_quick   ; inline operand = 11
  $82D0  CF                         RETURN

; ============================================================
; sub $82D1   (frame_off=+0, body @ $82D6)   [PRG $2C2D1]
; ============================================================
  $82D6  A0 0B 00                   BYTE_LOADL_far         $000B
  $82D9  B3                         PUSHL
  $82DA  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $82DE  8F 12                      BYTE_ADD_imm1          +18
  $82E0  B3                         PUSHL
  $82E1  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $82E5  CF                         RETURN

; ============================================================
; sub $82E6   (frame_off=+0, body @ $82EB)   [PRG $2C2E6]
; ============================================================
  $82EB  A0 0B 00                   BYTE_LOADL_far         $000B
  $82EE  B3                         PUSHL
  $82EF  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $82F3  7F                         ADD_qimm   ; inline operand = 15
  $82F4  B3                         PUSHL
  $82F5  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $82F9  CF                         RETURN

; ============================================================
; sub $82FA   (frame_off=+0, body @ $82FF)   [PRG $2C2FA]
; ============================================================
  $82FF  A0 0B 00                   BYTE_LOADL_far         $000B
  $8302  B3                         PUSHL
  $8303  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8307  8F 11                      BYTE_ADD_imm1          +17
  $8309  B3                         PUSHL
  $830A  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $830E  CF                         RETURN

; ============================================================
; sub $830F   (frame_off=+0, body @ $8314)   [PRG $2C30F]
; ============================================================
  $8314  AC CE B7                   CALL_abs               $B7CE {native}
  $8317  8E E8 00                   PUSH_imm2              $00E8
  $831A  8E 36 A9                   PUSH_imm2              $A936
  $831D  8E 92 A7                   PUSH_imm2              $A792
  $8320  6E                         PUSH_qimm   ; inline operand = 14
  $8321  8D 1E                      BYTE_PUSH_imm1         +30
  $8323  66                         PUSH_qimm   ; inline operand = 6
  $8324  61                         PUSH_qimm   ; inline operand = 1
  $8325  69                         PUSH_qimm   ; inline operand = 9
  $8326  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $832A  A0 0B 00                   BYTE_LOADL_far         $000B
  $832D  B3                         PUSHL
  $832E  67                         PUSH_qimm   ; inline operand = 7
  $832F  63                         PUSH_qimm   ; inline operand = 3
  $8330  8E 39 81                   PUSH_imm2              $8139
  $8333  8E DE 00                   PUSH_imm2              $00DE
  $8336  61                         PUSH_qimm   ; inline operand = 1
  $8337  E9 3A DE 0C                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $0C
  $833B  68                         PUSH_qimm   ; inline operand = 8
  $833C  6B                         PUSH_qimm   ; inline operand = 11
  $833D  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8341  A0 0B 00                   BYTE_LOADL_far         $000B
  $8344  8F FB                      BYTE_ADD_imm1          -5
  $8346  D2                         LSHIFT1
  $8347  8C 1E 91                   LOADR_imm2             $911E
  $834A  BB                         ADD
  $834B  B0                         DEREF
  $834C  B3                         PUSHL
  $834D  8E 56 91                   PUSH_imm2              $9156
  $8350  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $8354  6E                         PUSH_qimm   ; inline operand = 14
  $8355  63                         PUSH_qimm   ; inline operand = 3
  $8356  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $835A  A0 0B 00                   BYTE_LOADL_far         $000B
  $835D  B3                         PUSHL
  $835E  E9 E6 82 02                CALL_abs_imm1          $82E6 {bytecode}, $02
  $8362  B3                         PUSHL
  $8363  8E 59 91                   PUSH_imm2              $9159
  $8366  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $836A  8D 10                      BYTE_PUSH_imm1         +16
  $836C  6E                         PUSH_qimm   ; inline operand = 14
  $836D  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8371  A0 0B 00                   BYTE_LOADL_far         $000B
  $8374  B3                         PUSHL
  $8375  E9 8A 82 02                CALL_abs_imm1          $828A {bytecode}, $02
  $8379  B3                         PUSHL
  $837A  8E 63 91                   PUSH_imm2              $9163
  $837D  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $8381  6C                         PUSH_qimm   ; inline operand = 12
  $8382  63                         PUSH_qimm   ; inline operand = 3
  $8383  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8387  A0 0B 00                   BYTE_LOADL_far         $000B
  $838A  B3                         PUSHL
  $838B  E9 D1 82 02                CALL_abs_imm1          $82D1 {bytecode}, $02
  $838F  B3                         PUSHL
  $8390  8E 72 91                   PUSH_imm2              $9172
  $8393  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $8397  6C                         PUSH_qimm   ; inline operand = 12
  $8398  6E                         PUSH_qimm   ; inline operand = 14
  $8399  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $839D  A0 0B 00                   BYTE_LOADL_far         $000B
  $83A0  B3                         PUSHL
  $83A1  E9 2A 82 02                CALL_abs_imm1          $822A {bytecode}, $02
  $83A5  B3                         PUSHL
  $83A6  8E 7C 91                   PUSH_imm2              $917C
  $83A9  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $83AD  6E                         PUSH_qimm   ; inline operand = 14
  $83AE  6E                         PUSH_qimm   ; inline operand = 14
  $83AF  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $83B3  A0 0B 00                   BYTE_LOADL_far         $000B
  $83B6  B3                         PUSHL
  $83B7  E9 CE 81 02                CALL_abs_imm1          $81CE {bytecode}, $02
  $83BB  B3                         PUSHL
  $83BC  8E 8C 91                   PUSH_imm2              $918C
  $83BF  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $83C3  6A                         PUSH_qimm   ; inline operand = 10
  $83C4  6E                         PUSH_qimm   ; inline operand = 14
  $83C5  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $83C9  A0 0B 00                   BYTE_LOADL_far         $000B
  $83CC  B3                         PUSHL
  $83CD  E9 9F 81 02                CALL_abs_imm1          $819F {bytecode}, $02
  $83D1  B3                         PUSHL
  $83D2  8E 9C 91                   PUSH_imm2              $919C
  $83D5  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $83D9  8D 10                      BYTE_PUSH_imm1         +16
  $83DB  63                         PUSH_qimm   ; inline operand = 3
  $83DC  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $83E0  A0 0B 00                   BYTE_LOADL_far         $000B
  $83E3  B3                         PUSHL
  $83E4  E9 FA 82 02                CALL_abs_imm1          $82FA {bytecode}, $02
  $83E8  B3                         PUSHL
  $83E9  8E AC 91                   PUSH_imm2              $91AC
  $83EC  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $83F0  8D 12                      BYTE_PUSH_imm1         +18
  $83F2  8D 13                      BYTE_PUSH_imm1         +19
  $83F4  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $83F8  60                         PUSH_qimm   ; inline operand = 0
  $83F9  8E B6 91                   PUSH_imm2              $91B6
  $83FC  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8400  AA 6B 66                   PUSH_abs               $666B
  $8403  8E BC 91                   PUSH_imm2              $91BC
  $8406  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $840A  CF                         RETURN

; ============================================================
; sub $840B   (frame_off=-21, body @ $8410)   [PRG $2C40B]
; ============================================================
  $8410  40                         LOADL_qimm   ; inline operand = 0
  $8411  2B                         STORE_quick   ; inline operand = 11
 >$8412  0B                         LOADL_quick   ; inline operand = 11
  $8413  57                         LOADR_qimm   ; inline operand = 7
  $8414  B5                         MULT
  $8415  8C 90 6C                   LOADR_imm2             $6C90
  $8418  BB                         ADD
  $8419  85 EF                      STORE_near             $EF
  $841B  81 EF                      LOADL_near             $EF
  $841D  76                         ADD_qimm   ; inline operand = 6
  $841E  D3                         BYTE_DEREF
  $841F  8B 40                      BYTE_LOADR_imm1        +64
  $8421  DA                         AND
  $8422  D8 2E 84                   JUMPF_abs              $842E
  $8425  0B                         LOADL_quick   ; inline operand = 11
  $8426  D0                         INC
  $8427  2B                         STORE_quick   ; inline operand = 11
  $8428  0B                         LOADL_quick   ; inline operand = 11
  $8429  55                         LOADR_qimm   ; inline operand = 5
  $842A  C6                         UCMPLT
  $842B  D7 12 84                   JUMPT_abs              $8412
 >$842E  0B                         LOADL_quick   ; inline operand = 11
  $842F  A2 FD FF                   BYTE_STORE_far         $FFFD
  $8432  65                         PUSH_qimm   ; inline operand = 5
  $8433  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8437  75                         ADD_qimm   ; inline operand = 5
  $8438  A2 F1 FF                   BYTE_STORE_far         $FFF1
  $843B  87 EF                      PUSH_near              $EF
  $843D  A0 F1 FF                   BYTE_LOADL_far         $FFF1
  $8440  B3                         PUSHL
  $8441  A0 0D 00                   BYTE_LOADL_far         $000D
  $8444  B3                         PUSHL
  $8445  E9 9F 81 02                CALL_abs_imm1          $819F {bytecode}, $02
  $8449  B4                         POPR
  $844A  BC                         SUB
  $844B  D4                         BYTE_POPSTORE
  $844C  81 EF                      LOADL_near             $EF
  $844E  D0                         INC
  $844F  B3                         PUSHL
  $8450  A0 F1 FF                   BYTE_LOADL_far         $FFF1
  $8453  B3                         PUSHL
  $8454  A0 0D 00                   BYTE_LOADL_far         $000D
  $8457  B3                         PUSHL
  $8458  E9 CE 81 02                CALL_abs_imm1          $81CE {bytecode}, $02
  $845C  B4                         POPR
  $845D  BC                         SUB
  $845E  D4                         BYTE_POPSTORE
  $845F  81 EF                      LOADL_near             $EF
  $8461  72                         ADD_qimm   ; inline operand = 2
  $8462  B3                         PUSHL
  $8463  A0 F1 FF                   BYTE_LOADL_far         $FFF1
  $8466  B3                         PUSHL
  $8467  A0 0D 00                   BYTE_LOADL_far         $000D
  $846A  B3                         PUSHL
  $846B  E9 2A 82 02                CALL_abs_imm1          $822A {bytecode}, $02
  $846F  B4                         POPR
  $8470  BC                         SUB
  $8471  D4                         BYTE_POPSTORE
  $8472  81 EF                      LOADL_near             $EF
  $8474  73                         ADD_qimm   ; inline operand = 3
  $8475  B3                         PUSHL
  $8476  40                         LOADL_qimm   ; inline operand = 0
  $8477  D4                         BYTE_POPSTORE
  $8478  81 EF                      LOADL_near             $EF
  $847A  74                         ADD_qimm   ; inline operand = 4
  $847B  B3                         PUSHL
  $847C  40                         LOADL_qimm   ; inline operand = 0
  $847D  B1                         POPSTORE
  $847E  DE F7 FF                   LEAL_far               $FFF7
  $8481  B3                         PUSHL
  $8482  60                         PUSH_qimm   ; inline operand = 0
  $8483  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $8487  A2 FC FF                   BYTE_STORE_far         $FFFC
  $848A  40                         LOADL_qimm   ; inline operand = 0
  $848B  2B                         STORE_quick   ; inline operand = 11
 >$848C  DE F2 FF                   LEAL_far               $FFF2
  $848F  B3                         PUSHL
  $8490  0B                         LOADL_quick   ; inline operand = 11
  $8491  B4                         POPR
  $8492  BB                         ADD
  $8493  B3                         PUSHL
  $8494  0B                         LOADL_quick   ; inline operand = 11
  $8495  D4                         BYTE_POPSTORE
  $8496  0B                         LOADL_quick   ; inline operand = 11
  $8497  D0                         INC
  $8498  2B                         STORE_quick   ; inline operand = 11
  $8499  0B                         LOADL_quick   ; inline operand = 11
  $849A  55                         LOADR_qimm   ; inline operand = 5
  $849B  C6                         UCMPLT
  $849C  D7 8C 84                   JUMPT_abs              $848C
  $849F  40                         LOADL_qimm   ; inline operand = 0
  $84A0  D6 C1 84                   JUMP_abs               $84C1
 >$84A3  DE F2 FF                   LEAL_far               $FFF2
  $84A6  B3                         PUSHL
  $84A7  DE F7 FF                   LEAL_far               $FFF7
  $84AA  B3                         PUSHL
  $84AB  0B                         LOADL_quick   ; inline operand = 11
  $84AC  B4                         POPR
  $84AD  BB                         ADD
  $84AE  D3                         BYTE_DEREF
  $84AF  57                         LOADR_qimm   ; inline operand = 7
  $84B0  B5                         MULT
  $84B1  8C 96 6C                   LOADR_imm2             $6C96
  $84B4  BB                         ADD
  $84B5  D3                         BYTE_DEREF
  $84B6  5F                         LOADR_qimm   ; inline operand = 15
  $84B7  DA                         AND
  $84B8  B4                         POPR
  $84B9  BB                         ADD
  $84BA  B3                         PUSHL
  $84BB  8A FF 00                   LOADL_imm2             $00FF
  $84BE  D4                         BYTE_POPSTORE
  $84BF  0B                         LOADL_quick   ; inline operand = 11
  $84C0  D0                         INC
 >$84C1  2B                         STORE_quick   ; inline operand = 11
  $84C2  A0 FC FF                   BYTE_LOADL_far         $FFFC
  $84C5  B3                         PUSHL
  $84C6  0B                         LOADL_quick   ; inline operand = 11
  $84C7  B4                         POPR
  $84C8  C6                         UCMPLT
  $84C9  D7 A3 84                   JUMPT_abs              $84A3
  $84CC  40                         LOADL_qimm   ; inline operand = 0
  $84CD  2B                         STORE_quick   ; inline operand = 11
 >$84CE  DE F2 FF                   LEAL_far               $FFF2
  $84D1  B3                         PUSHL
  $84D2  0B                         LOADL_quick   ; inline operand = 11
  $84D3  B4                         POPR
  $84D4  BB                         ADD
  $84D5  D3                         BYTE_DEREF
  $84D6  8C FF 00                   LOADR_imm2             $00FF
  $84D9  C1                         CMPNE
  $84DA  D8 EB 84                   JUMPF_abs              $84EB
  $84DD  DE F2 FF                   LEAL_far               $FFF2
  $84E0  B3                         PUSHL
  $84E1  0B                         LOADL_quick   ; inline operand = 11
  $84E2  B4                         POPR
  $84E3  BB                         ADD
  $84E4  D3                         BYTE_DEREF
  $84E5  A2 FC FF                   BYTE_STORE_far         $FFFC
  $84E8  D6 F4 84                   JUMP_abs               $84F4
 >$84EB  0B                         LOADL_quick   ; inline operand = 11
  $84EC  D0                         INC
  $84ED  2B                         STORE_quick   ; inline operand = 11
  $84EE  0B                         LOADL_quick   ; inline operand = 11
  $84EF  55                         LOADR_qimm   ; inline operand = 5
  $84F0  C6                         UCMPLT
  $84F1  D7 CE 84                   JUMPT_abs              $84CE
 >$84F4  81 EF                      LOADL_near             $EF
  $84F6  76                         ADD_qimm   ; inline operand = 6
  $84F7  B3                         PUSHL
  $84F8  40                         LOADL_qimm   ; inline operand = 0
  $84F9  D4                         BYTE_POPSTORE
  $84FA  8D 40                      BYTE_PUSH_imm1         +64
  $84FC  81 EF                      LOADL_near             $EF
  $84FE  76                         ADD_qimm   ; inline operand = 6
  $84FF  B4                         POPR
  $8500  B3                         PUSHL
  $8501  D3                         BYTE_DEREF
  $8502  DB                         OR
  $8503  D4                         BYTE_POPSTORE
  $8504  8E F0 00                   PUSH_imm2              $00F0
  $8507  81 EF                      LOADL_near             $EF
  $8509  76                         ADD_qimm   ; inline operand = 6
  $850A  B4                         POPR
  $850B  B3                         PUSHL
  $850C  D3                         BYTE_DEREF
  $850D  DA                         AND
  $850E  D4                         BYTE_POPSTORE
  $850F  A3 FC FF                   BYTE_PUSH_far          $FFFC
  $8512  81 EF                      LOADL_near             $EF
  $8514  76                         ADD_qimm   ; inline operand = 6
  $8515  B4                         POPR
  $8516  B3                         PUSHL
  $8517  D3                         BYTE_DEREF
  $8518  DB                         OR
  $8519  D4                         BYTE_POPSTORE
  $851A  A0 FC FF                   BYTE_LOADL_far         $FFFC
  $851D  B3                         PUSHL
  $851E  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8522  85 ED                      STORE_near             $ED
  $8524  A0 0D 00                   BYTE_LOADL_far         $000D
  $8527  B3                         PUSHL
  $8528  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $852C  85 EB                      STORE_near             $EB
  $852E  81 ED                      LOADL_near             $ED
  $8530  7F                         ADD_qimm   ; inline operand = 15
  $8531  B3                         PUSHL
  $8532  81 EB                      LOADL_near             $EB
  $8534  7F                         ADD_qimm   ; inline operand = 15
  $8535  B3                         PUSHL
  $8536  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $853A  B1                         POPSTORE
  $853B  81 ED                      LOADL_near             $ED
  $853D  8F 11                      BYTE_ADD_imm1          +17
  $853F  B3                         PUSHL
  $8540  81 EB                      LOADL_near             $EB
  $8542  8F 11                      BYTE_ADD_imm1          +17
  $8544  B3                         PUSHL
  $8545  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8549  D4                         BYTE_POPSTORE
  $854A  81 ED                      LOADL_near             $ED
  $854C  8F 12                      BYTE_ADD_imm1          +18
  $854E  B3                         PUSHL
  $854F  81 EB                      LOADL_near             $EB
  $8551  8F 12                      BYTE_ADD_imm1          +18
  $8553  B3                         PUSHL
  $8554  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8558  B1                         POPSTORE
  $8559  81 ED                      LOADL_near             $ED
  $855B  8F 14                      BYTE_ADD_imm1          +20
  $855D  B3                         PUSHL
  $855E  81 EB                      LOADL_near             $EB
  $8560  8F 14                      BYTE_ADD_imm1          +20
  $8562  B3                         PUSHL
  $8563  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8567  D4                         BYTE_POPSTORE
  $8568  60                         PUSH_qimm   ; inline operand = 0
  $8569  8D 18                      BYTE_PUSH_imm1         +24
  $856B  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $856E  8B 18                      BYTE_LOADR_imm1        +24
  $8570  B5                         MULT
  $8571  8C A4 6A                   LOADR_imm2             $6AA4
  $8574  BB                         ADD
  $8575  B3                         PUSHL
  $8576  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $857A  0C                         LOADL_quick   ; inline operand = 12
  $857B  CD                         SWAP
  $857C  A4 6B 66                   LOADL_abs              $666B
  $857F  BC                         SUB
  $8580  A8 6B 66                   STORE_abs              $666B
  $8583  61                         PUSH_qimm   ; inline operand = 1
  $8584  65                         PUSH_qimm   ; inline operand = 5
  $8585  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8589  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $858C  8E D0 91                   PUSH_imm2              $91D0
  $858F  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8593  AC 37 CE                   CALL_abs               $CE37 {native}
  $8596  8D 10                      BYTE_PUSH_imm1         +16
  $8598  60                         PUSH_qimm   ; inline operand = 0
  $8599  8E C0 91                   PUSH_imm2              $91C0
  $859C  66                         PUSH_qimm   ; inline operand = 6
  $859D  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $85A1  8E E2 00                   PUSH_imm2              $00E2
  $85A4  8E EA B5                   PUSH_imm2              $B5EA
  $85A7  8E DE B2                   PUSH_imm2              $B2DE
  $85AA  8D 1A                      BYTE_PUSH_imm1         +26
  $85AC  8D 1E                      BYTE_PUSH_imm1         +30
  $85AE  62                         PUSH_qimm   ; inline operand = 2
  $85AF  61                         PUSH_qimm   ; inline operand = 1
  $85B0  69                         PUSH_qimm   ; inline operand = 9
  $85B1  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
 >$85B5  8E E7 00                   PUSH_imm2              $00E7
  $85B8  8E AC A0                   PUSH_imm2              $A0AC
  $85BB  8E 04 A0                   PUSH_imm2              $A004
  $85BE  66                         PUSH_qimm   ; inline operand = 6
  $85BF  8D 1C                      BYTE_PUSH_imm1         +28
  $85C1  8D 16                      BYTE_PUSH_imm1         +22
  $85C3  62                         PUSH_qimm   ; inline operand = 2
  $85C4  69                         PUSH_qimm   ; inline operand = 9
  $85C5  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
 >$85C9  87 ED                      PUSH_near              $ED
  $85CB  67                         PUSH_qimm   ; inline operand = 7
  $85CC  8E A6 83                   PUSH_imm2              $83A6
  $85CF  8E C0 00                   PUSH_imm2              $00C0
  $85D2  61                         PUSH_qimm   ; inline operand = 1
  $85D3  E9 3A DE 0A                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $0A
  $85D7  D8 C9 85                   JUMPF_abs              $85C9
  $85DA  8D 19                      BYTE_PUSH_imm1         +25
  $85DC  65                         PUSH_qimm   ; inline operand = 5
  $85DD  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $85E1  61                         PUSH_qimm   ; inline operand = 1
  $85E2  8E F6 91                   PUSH_imm2              $91F6
  $85E5  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $85E9  AC 9F CD                   CALL_abs               $CD9F {native}
  $85EC  D8 B5 85                   JUMPF_abs              $85B5
  $85EF  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $85F2  75                         ADD_qimm   ; inline operand = 5
  $85F3  CF                         RETURN

; ============================================================
; sub $85F4   (frame_off=-17, body @ $85F9)   [PRG $2C5F4]
; ============================================================
  $85F9  40                         LOADL_qimm   ; inline operand = 0
  $85FA  A2 FF FF                   BYTE_STORE_far         $FFFF
  $85FD  61                         PUSH_qimm   ; inline operand = 1
  $85FE  65                         PUSH_qimm   ; inline operand = 5
  $85FF  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8603  AC 01 B8                   CALL_abs               $B801 (draw_box_frame) {native}
  $8606  61                         PUSH_qimm   ; inline operand = 1
  $8607  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $860B  60                         PUSH_qimm   ; inline operand = 0
  $860C  8E 8A 93                   PUSH_imm2              $938A
  $860F  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8613  A0 0B 00                   BYTE_LOADL_far         $000B
  $8616  75                         ADD_qimm   ; inline operand = 5
  $8617  B3                         PUSHL
  $8618  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $861C  B3                         PUSHL
  $861D  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8621  A0 0B 00                   BYTE_LOADL_far         $000B
  $8624  D2                         LSHIFT1
  $8625  8C 06 92                   LOADR_imm2             $9206
  $8628  BB                         ADD
  $8629  B0                         DEREF
  $862A  B3                         PUSHL
  $862B  8E 8E 93                   PUSH_imm2              $938E
  $862E  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $8632  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $8635  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8638  61                         PUSH_qimm   ; inline operand = 1
  $8639  8E 97 93                   PUSH_imm2              $9397
  $863C  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8640  AC 9F CD                   CALL_abs               $CD9F {native}
  $8643  D8 02 87                   JUMPF_abs              $8702
  $8646  A0 0B 00                   BYTE_LOADL_far         $000B
  $8649  75                         ADD_qimm   ; inline operand = 5
  $864A  B3                         PUSHL
  $864B  E9 0F 83 02                CALL_abs_imm1          $830F (shipyard_draw_ship_stats) {bytecode}, $02
  $864F  3D                         PUSH_quick   ; inline operand = 13
  $8650  41                         LOADL_qimm   ; inline operand = 1
  $8651  B1                         POPSTORE
  $8652  AC 01 B8                   CALL_abs               $B801 (draw_box_frame) {native}
  $8655  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8658  A0 0B 00                   BYTE_LOADL_far         $000B
  $865B  75                         ADD_qimm   ; inline operand = 5
  $865C  B3                         PUSHL
  $865D  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8661  8F 14                      BYTE_ADD_imm1          +20
  $8663  B3                         PUSHL
  $8664  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8668  55                         LOADR_qimm   ; inline operand = 5
  $8669  BE                         URSHIFT
  $866A  57                         LOADR_qimm   ; inline operand = 7
  $866B  DA                         AND
  $866C  85 F7                      STORE_near             $F7
  $866E  81 F7                      LOADL_near             $F7
  $8670  57                         LOADR_qimm   ; inline operand = 7
  $8671  B5                         MULT
  $8672  52                         LOADR_qimm   ; inline operand = 2
  $8673  B6                         SDIV
  $8674  D0                         INC
  $8675  B3                         PUSHL
  $8676  A0 0B 00                   BYTE_LOADL_far         $000B
  $8679  75                         ADD_qimm   ; inline operand = 5
  $867A  B3                         PUSHL
  $867B  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $867F  8F 14                      BYTE_ADD_imm1          +20
  $8681  B3                         PUSHL
  $8682  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8686  53                         LOADR_qimm   ; inline operand = 3
  $8687  DA                         AND
  $8688  72                         ADD_qimm   ; inline operand = 2
  $8689  B4                         POPR
  $868A  B5                         MULT
  $868B  52                         LOADR_qimm   ; inline operand = 2
  $868C  B6                         SDIV
  $868D  8C BC 02                   LOADR_imm2             $02BC
  $8690  B5                         MULT
  $8691  85 FD                      STORE_near             $FD
  $8693  81 F7                      LOADL_near             $F7
  $8695  52                         LOADR_qimm   ; inline operand = 2
  $8696  B6                         SDIV
  $8697  56                         LOADR_qimm   ; inline operand = 6
  $8698  B5                         MULT
  $8699  D0                         INC
  $869A  B3                         PUSHL
  $869B  A0 0B 00                   BYTE_LOADL_far         $000B
  $869E  75                         ADD_qimm   ; inline operand = 5
  $869F  B3                         PUSHL
  $86A0  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $86A4  8F 14                      BYTE_ADD_imm1          +20
  $86A6  B3                         PUSHL
  $86A7  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $86AB  52                         LOADR_qimm   ; inline operand = 2
  $86AC  BE                         URSHIFT
  $86AD  53                         LOADR_qimm   ; inline operand = 3
  $86AE  DA                         AND
  $86AF  D0                         INC
  $86B0  B4                         POPR
  $86B1  B5                         MULT
  $86B2  8C 2C 01                   LOADR_imm2             $012C
  $86B5  B5                         MULT
  $86B6  85 FB                      STORE_near             $FB
  $86B8  81 FD                      LOADL_near             $FD
  $86BA  83 FB                      LOADR_near             $FB
  $86BC  BB                         ADD
  $86BD  8B 64                      BYTE_LOADR_imm1        +100
  $86BF  B6                         SDIV
  $86C0  B3                         PUSHL
  $86C1  A5 67 70                   BYTE_LOADL_abs         $7067
  $86C4  5E                         LOADR_qimm   ; inline operand = 14
  $86C5  B5                         MULT
  $86C6  8C BD 67                   LOADR_imm2             $67BD
  $86C9  BB                         ADD
  $86CA  D3                         BYTE_DEREF
  $86CB  8F 28                      BYTE_ADD_imm1          +40
  $86CD  B4                         POPR
  $86CE  B5                         MULT
  $86CF  85 F9                      STORE_near             $F9
  $86D1  87 F9                      PUSH_near              $F9
  $86D3  8E AC 93                   PUSH_imm2              $93AC
  $86D6  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $86DA  A4 6B 66                   LOADL_abs              $666B
  $86DD  85 F1                      STORE_near             $F1
  $86DF  AC 9F CD                   CALL_abs               $CD9F {native}
  $86E2  D8 1E 87                   JUMPF_abs              $871E
  $86E5  81 F1                      LOADL_near             $F1
  $86E7  83 F9                      LOADR_near             $F9
  $86E9  C6                         UCMPLT
  $86EA  D8 0E 87                   JUMPF_abs              $870E
  $86ED  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $86F0  61                         PUSH_qimm   ; inline operand = 1
  $86F1  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $86F5  8E DE 93                   PUSH_imm2              $93DE
  $86F8  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $86FC  61                         PUSH_qimm   ; inline operand = 1
  $86FD  65                         PUSH_qimm   ; inline operand = 5
  $86FE  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
 >$8702  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8705  8E 22 94                   PUSH_imm2              $9422
  $8708  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $870C  40                         LOADL_qimm   ; inline operand = 0
  $870D  CF                         RETURN
 >$870E  A0 0B 00                   BYTE_LOADL_far         $000B
  $8711  75                         ADD_qimm   ; inline operand = 5
  $8712  B3                         PUSHL
  $8713  87 F9                      PUSH_near              $F9
  $8715  E9 0B 84 04                CALL_abs_imm1          $840B (shipyard_buy_confirm_name) {bytecode}, $04
  $8719  85 EF                      STORE_near             $EF
  $871B  81 EF                      LOADL_near             $EF
  $871D  CF                         RETURN
 >$871E  A5 74 6F                   BYTE_LOADL_abs         $6F74
  $8721  D0                         INC
  $8722  B3                         PUSHL
  $8723  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8727  D7 02 87                   JUMPT_abs              $8702
  $872A  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $872D  87 F1                      PUSH_near              $F1
  $872F  87 F9                      PUSH_near              $F9
  $8731  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8735  85 F3                      STORE_near             $F3
  $8737  61                         PUSH_qimm   ; inline operand = 1
  $8738  87 F3                      PUSH_near              $F3
  $873A  61                         PUSH_qimm   ; inline operand = 1
  $873B  8E F1 93                   PUSH_imm2              $93F1
  $873E  E9 F3 CC 08                CALL_abs_imm1          $CCF3 {native}, $08
  $8742  85 F5                      STORE_near             $F5
  $8744  81 F5                      LOADL_near             $F5
  $8746  8C 0A 0E                   LOADR_imm2             $0E0A
  $8749  C0                         CMPEQ
  $874A  D8 54 87                   JUMPF_abs              $8754
  $874D  41                         LOADL_qimm   ; inline operand = 1
  $874E  A2 FF FF                   BYTE_STORE_far         $FFFF
  $8751  40                         LOADL_qimm   ; inline operand = 0
  $8752  85 F9                      STORE_near             $F9
 >$8754  81 F5                      LOADL_near             $F5
  $8756  8B FF                      BYTE_LOADR_imm1        -1
  $8758  C1                         CMPNE
  $8759  D8 02 87                   JUMPF_abs              $8702
  $875C  81 F9                      LOADL_near             $F9
  $875E  5A                         LOADR_qimm   ; inline operand = 10
  $875F  B6                         SDIV
  $8760  B3                         PUSHL
  $8761  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8765  B3                         PUSHL
  $8766  81 F9                      LOADL_near             $F9
  $8768  52                         LOADR_qimm   ; inline operand = 2
  $8769  B6                         SDIV
  $876A  B3                         PUSHL
  $876B  81 F9                      LOADL_near             $F9
  $876D  8B 14                      BYTE_LOADR_imm1        +20
  $876F  B6                         SDIV
  $8770  B3                         PUSHL
  $8771  A5 74 6F                   BYTE_LOADL_abs         $6F74
  $8774  B3                         PUSHL
  $8775  4A                         LOADL_qimm   ; inline operand = 10
  $8776  B4                         POPR
  $8777  BC                         SUB
  $8778  B4                         POPR
  $8779  B5                         MULT
  $877A  B4                         POPR
  $877B  BB                         ADD
  $877C  B4                         POPR
  $877D  BC                         SUB
  $877E  85 F9                      STORE_near             $F9
  $8780  81 F5                      LOADL_near             $F5
  $8782  83 F9                      LOADR_near             $F9
  $8784  C6                         UCMPLT
  $8785  D8 94 87                   JUMPF_abs              $8794
  $8788  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $878B  8E 0D 94                   PUSH_imm2              $940D
  $878E  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8792  41                         LOADL_qimm   ; inline operand = 1
  $8793  CF                         RETURN
 >$8794  A0 0B 00                   BYTE_LOADL_far         $000B
  $8797  75                         ADD_qimm   ; inline operand = 5
  $8798  B3                         PUSHL
  $8799  87 F5                      PUSH_near              $F5
  $879B  E9 0B 84 04                CALL_abs_imm1          $840B (shipyard_buy_confirm_name) {bytecode}, $04
  $879F  85 EF                      STORE_near             $EF
  $87A1  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $87A4  D8 AD 87                   JUMPF_abs              $87AD
  $87A7  8A 60 EA                   LOADL_imm2             $EA60
  $87AA  A8 6B 66                   STORE_abs              $666B
 >$87AD  81 EF                      LOADL_near             $EF
  $87AF  CF                         RETURN

; ============================================================
; sub $87B0   (frame_off=-6, body @ $87B5)   [PRG $2C7B0]
; ============================================================
  $87B5  61                         PUSH_qimm   ; inline operand = 1
  $87B6  65                         PUSH_qimm   ; inline operand = 5
  $87B7  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $87BB  A5 67 70                   BYTE_LOADL_abs         $7067
  $87BE  5E                         LOADR_qimm   ; inline operand = 14
  $87BF  B5                         MULT
  $87C0  8C B6 67                   LOADR_imm2             $67B6
  $87C3  BB                         ADD
  $87C4  B0                         DEREF
  $87C5  8F 9C                      BYTE_ADD_imm1          -100
  $87C7  8C A0 00                   LOADR_imm2             $00A0
  $87CA  B6                         SDIV
  $87CB  A2 FE FF                   BYTE_STORE_far         $FFFE
  $87CE  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $87D1  55                         LOADR_qimm   ; inline operand = 5
  $87D2  C6                         UCMPLT
  $87D3  D8 F2 87                   JUMPF_abs              $87F2
  $87D6  8D 14                      BYTE_PUSH_imm1         +20
  $87D8  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $87DC  D7 F2 87                   JUMPT_abs              $87F2
  $87DF  61                         PUSH_qimm   ; inline operand = 1
  $87E0  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $87E4  8E 3F 94                   PUSH_imm2              $943F
  $87E7  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $87EB  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $87EE  D0                         INC
  $87EF  A2 FE FF                   BYTE_STORE_far         $FFFE
 >$87F2  41                         LOADL_qimm   ; inline operand = 1
  $87F3  29                         STORE_quick   ; inline operand = 9
  $87F4  40                         LOADL_qimm   ; inline operand = 0
  $87F5  2A                         STORE_quick   ; inline operand = 10
 >$87F6  09                         LOADL_quick   ; inline operand = 9
  $87F7  D8 04 88                   JUMPF_abs              $8804
  $87FA  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $87FD  B3                         PUSHL
  $87FE  E9 7C 81 02                CALL_abs_imm1          $817C {bytecode}, $02
  $8802  40                         LOADL_qimm   ; inline operand = 0
  $8803  29                         STORE_quick   ; inline operand = 9
 >$8804  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8807  61                         PUSH_qimm   ; inline operand = 1
  $8808  8E 6E 94                   PUSH_imm2              $946E
  $880B  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $880F  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $8812  D0                         INC
  $8813  B3                         PUSHL
  $8814  E9 98 B8 02                CALL_abs_imm1          $B898 {native}, $02
  $8818  A2 FF FF                   BYTE_STORE_far         $FFFF
  $881B  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $881E  8C FF 00                   LOADR_imm2             $00FF
  $8821  C1                         CMPNE
  $8822  D8 35 88                   JUMPF_abs              $8835
  $8825  DE FA FF                   LEAL_far               $FFFA
  $8828  B3                         PUSHL
  $8829  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $882C  B3                         PUSHL
  $882D  E9 F4 85 04                CALL_abs_imm1          $85F4 (shipyard_buy_used_dialog) {bytecode}, $04
  $8831  2A                         STORE_quick   ; inline operand = 10
  $8832  D6 44 88                   JUMP_abs               $8844
 >$8835  63                         PUSH_qimm   ; inline operand = 3
  $8836  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $883A  8E 86 94                   PUSH_imm2              $9486
  $883D  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8841  AC CE B7                   CALL_abs               $B7CE {native}
 >$8844  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8847  8C FF 00                   LOADR_imm2             $00FF
  $884A  C0                         CMPEQ
  $884B  D7 52 88                   JUMPT_abs              $8852
  $884E  0A                         LOADL_quick   ; inline operand = 10
  $884F  D8 F6 87                   JUMPF_abs              $87F6
 >$8852  0A                         LOADL_quick   ; inline operand = 10
  $8853  CF                         RETURN

; ============================================================
; sub $8854   (frame_off=-2, body @ $8859)   [PRG $2C854]
; ============================================================
  $8859  AC B0 87                   CALL_abs               $87B0 (shipyard_buy_used_select) {bytecode}
  $885C  2B                         STORE_quick   ; inline operand = 11
  $885D  0B                         LOADL_quick   ; inline operand = 11
  $885E  51                         LOADR_qimm   ; inline operand = 1
  $885F  C0                         CMPEQ
  $8860  D8 66 88                   JUMPF_abs              $8866
  $8863  AC EC B7                   CALL_abs               $B7EC {native}
 >$8866  0B                         LOADL_quick   ; inline operand = 11
  $8867  CF                         RETURN

; ============================================================
; sub $8868   (frame_off=+0, body @ $886D)   [PRG $2C868]
; ============================================================
  $886D  60                         PUSH_qimm   ; inline operand = 0
  $886E  8E FF 00                   PUSH_imm2              $00FF
  $8871  3E                         PUSH_quick   ; inline operand = 14
  $8872  3D                         PUSH_quick   ; inline operand = 13
  $8873  3C                         PUSH_quick   ; inline operand = 12
  $8874  8E 68 80                   PUSH_imm2              $8068
  $8877  8E DE 00                   PUSH_imm2              $00DE
  $887A  61                         PUSH_qimm   ; inline operand = 1
  $887B  E9 3A DE 10                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $10
  $887F  CF                         RETURN

; ============================================================
; sub $8880   (frame_off=+0, body @ $8885)   [PRG $2C880]
; ============================================================
  $8885  68                         PUSH_qimm   ; inline operand = 8
  $8886  68                         PUSH_qimm   ; inline operand = 8
  $8887  8E 98 94                   PUSH_imm2              $9498
  $888A  66                         PUSH_qimm   ; inline operand = 6
  $888B  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $888F  CF                         RETURN

; ============================================================
; sub $8890   (frame_off=-6, body @ $8895)   [PRG $2C890]
; ============================================================
  $8895  89 FF                      BYTE_LOADL_imm1        -1
  $8897  A8 64 70                   STORE_abs              $7064
  $889A  AC 80 88                   CALL_abs               $8880 {bytecode}
  $889D  40                         LOADL_qimm   ; inline operand = 0
  $889E  D6 D2 88                   JUMP_abs               $88D2
 >$88A1  0B                         LOADL_quick   ; inline operand = 11
  $88A2  53                         LOADR_qimm   ; inline operand = 3
  $88A3  BA                         UMOD
  $88A4  59                         LOADR_qimm   ; inline operand = 9
  $88A5  B5                         MULT
  $88A6  73                         ADD_qimm   ; inline operand = 3
  $88A7  2A                         STORE_quick   ; inline operand = 10
  $88A8  0B                         LOADL_quick   ; inline operand = 11
  $88A9  53                         LOADR_qimm   ; inline operand = 3
  $88AA  B8                         UDIV
  $88AB  57                         LOADR_qimm   ; inline operand = 7
  $88AC  B5                         MULT
  $88AD  29                         STORE_quick   ; inline operand = 9
  $88AE  3B                         PUSH_quick   ; inline operand = 11
  $88AF  09                         LOADL_quick   ; inline operand = 9
  $88B0  77                         ADD_qimm   ; inline operand = 7
  $88B1  B3                         PUSHL
  $88B2  3A                         PUSH_quick   ; inline operand = 10
  $88B3  E9 68 88 06                CALL_abs_imm1          $8868 {bytecode}, $06
  $88B7  09                         LOADL_quick   ; inline operand = 9
  $88B8  7B                         ADD_qimm   ; inline operand = 11
  $88B9  B3                         PUSHL
  $88BA  3A                         PUSH_quick   ; inline operand = 10
  $88BB  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $88BF  0A                         LOADL_quick   ; inline operand = 10
  $88C0  A8 8A 72                   STORE_abs              $728A
  $88C3  60                         PUSH_qimm   ; inline operand = 0
  $88C4  0B                         LOADL_quick   ; inline operand = 11
  $88C5  D2                         LSHIFT1
  $88C6  8C A0 94                   LOADR_imm2             $94A0
  $88C9  BB                         ADD
  $88CA  B0                         DEREF
  $88CB  B3                         PUSHL
  $88CC  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $88D0  0B                         LOADL_quick   ; inline operand = 11
  $88D1  D0                         INC
 >$88D2  2B                         STORE_quick   ; inline operand = 11
  $88D3  0B                         LOADL_quick   ; inline operand = 11
  $88D4  1C                         LOADR_quick   ; inline operand = 12
  $88D5  C7                         UCMPLE
  $88D6  D7 A1 88                   JUMPT_abs              $88A1
  $88D9  CF                         RETURN

; ============================================================
; sub $88DA   (frame_off=+0, body @ $88DF)   [PRG $2C8DA]
; ============================================================
  $88DF  0C                         LOADL_quick   ; inline operand = 12
  $88E0  B0                         DEREF
  $88E1  5A                         LOADR_qimm   ; inline operand = 10
  $88E2  B5                         MULT
  $88E3  B3                         PUSHL
  $88E4  0C                         LOADL_quick   ; inline operand = 12
  $88E5  76                         ADD_qimm   ; inline operand = 6
  $88E6  B0                         DEREF
  $88E7  5A                         LOADR_qimm   ; inline operand = 10
  $88E8  B5                         MULT
  $88E9  B4                         POPR
  $88EA  BB                         ADD
  $88EB  8F 14                      BYTE_ADD_imm1          +20
  $88ED  CF                         RETURN

; ============================================================
; sub $88EE   (frame_off=+0, body @ $88F3)   [PRG $2C8EE]
; ============================================================
  $88F3  6A                         PUSH_qimm   ; inline operand = 10
  $88F4  6E                         PUSH_qimm   ; inline operand = 14
  $88F5  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $88F9  3C                         PUSH_quick   ; inline operand = 12
  $88FA  E9 DA 88 02                CALL_abs_imm1          $88DA {bytecode}, $02
  $88FE  B3                         PUSHL
  $88FF  8E E7 94                   PUSH_imm2              $94E7
  $8902  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $8906  CF                         RETURN

; ============================================================
; sub $8907   (frame_off=+0, body @ $890C)   [PRG $2C907]
; ============================================================
  $890C  0C                         LOADL_quick   ; inline operand = 12
  $890D  74                         ADD_qimm   ; inline operand = 4
  $890E  B0                         DEREF
  $890F  B3                         PUSHL
  $8910  44                         LOADL_qimm   ; inline operand = 4
  $8911  B4                         POPR
  $8912  BC                         SUB
  $8913  B3                         PUSHL
  $8914  0C                         LOADL_quick   ; inline operand = 12
  $8915  72                         ADD_qimm   ; inline operand = 2
  $8916  B0                         DEREF
  $8917  B3                         PUSHL
  $8918  4A                         LOADL_qimm   ; inline operand = 10
  $8919  B4                         POPR
  $891A  BC                         SUB
  $891B  B3                         PUSHL
  $891C  0C                         LOADL_quick   ; inline operand = 12
  $891D  76                         ADD_qimm   ; inline operand = 6
  $891E  B0                         DEREF
  $891F  B3                         PUSHL
  $8920  89 14                      BYTE_LOADL_imm1        +20
  $8922  B4                         POPR
  $8923  BC                         SUB
  $8924  8B 64                      BYTE_LOADR_imm1        +100
  $8926  B5                         MULT
  $8927  8B 14                      BYTE_LOADR_imm1        +20
  $8929  B8                         UDIV
  $892A  B4                         POPR
  $892B  B5                         MULT
  $892C  5A                         LOADR_qimm   ; inline operand = 10
  $892D  B8                         UDIV
  $892E  B4                         POPR
  $892F  B5                         MULT
  $8930  52                         LOADR_qimm   ; inline operand = 2
  $8931  BE                         URSHIFT
  $8932  CF                         RETURN

; ============================================================
; sub $8933   (frame_off=+0, body @ $8938)   [PRG $2C933]
; ============================================================
  $8938  6E                         PUSH_qimm   ; inline operand = 14
  $8939  6E                         PUSH_qimm   ; inline operand = 14
  $893A  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $893E  3C                         PUSH_quick   ; inline operand = 12
  $893F  E9 07 89 02                CALL_abs_imm1          $8907 {bytecode}, $02
  $8943  B3                         PUSHL
  $8944  8E F7 94                   PUSH_imm2              $94F7
  $8947  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $894B  CF                         RETURN

; ============================================================
; sub $894C   (frame_off=-2, body @ $8951)   [PRG $2C94C]
; ============================================================
  $8951  0C                         LOADL_quick   ; inline operand = 12
  $8952  74                         ADD_qimm   ; inline operand = 4
  $8953  B0                         DEREF
  $8954  73                         ADD_qimm   ; inline operand = 3
  $8955  B3                         PUSHL
  $8956  0C                         LOADL_quick   ; inline operand = 12
  $8957  76                         ADD_qimm   ; inline operand = 6
  $8958  B0                         DEREF
  $8959  B3                         PUSHL
  $895A  4A                         LOADL_qimm   ; inline operand = 10
  $895B  B4                         POPR
  $895C  BC                         SUB
  $895D  B3                         PUSHL
  $895E  0C                         LOADL_quick   ; inline operand = 12
  $895F  72                         ADD_qimm   ; inline operand = 2
  $8960  B0                         DEREF
  $8961  5A                         LOADR_qimm   ; inline operand = 10
  $8962  B5                         MULT
  $8963  8F 64                      BYTE_ADD_imm1          +100
  $8965  B4                         POPR
  $8966  B5                         MULT
  $8967  5A                         LOADR_qimm   ; inline operand = 10
  $8968  B8                         UDIV
  $8969  B4                         POPR
  $896A  B5                         MULT
  $896B  52                         LOADR_qimm   ; inline operand = 2
  $896C  BE                         URSHIFT
  $896D  2B                         STORE_quick   ; inline operand = 11
  $896E  0B                         LOADL_quick   ; inline operand = 11
  $896F  8B 64                      BYTE_LOADR_imm1        +100
  $8971  C4                         SCMPGT
  $8972  D8 78 89                   JUMPF_abs              $8978
  $8975  89 64                      BYTE_LOADL_imm1        +100
  $8977  2B                         STORE_quick   ; inline operand = 11
 >$8978  0B                         LOADL_quick   ; inline operand = 11
  $8979  CF                         RETURN

; ============================================================
; sub $897A   (frame_off=+0, body @ $897F)   [PRG $2C97A]
; ============================================================
  $897F  6C                         PUSH_qimm   ; inline operand = 12
  $8980  6E                         PUSH_qimm   ; inline operand = 14
  $8981  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8985  3C                         PUSH_quick   ; inline operand = 12
  $8986  E9 4C 89 02                CALL_abs_imm1          $894C {bytecode}, $02
  $898A  B3                         PUSHL
  $898B  8E 07 95                   PUSH_imm2              $9507
  $898E  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $8992  CF                         RETURN

; ============================================================
; sub $8993   (frame_off=-2, body @ $8998)   [PRG $2C993]
; ============================================================
  $8998  0C                         LOADL_quick   ; inline operand = 12
  $8999  55                         LOADR_qimm   ; inline operand = 5
  $899A  B8                         UDIV
  $899B  8B 32                      BYTE_LOADR_imm1        +50
  $899D  B5                         MULT
  $899E  B3                         PUSHL
  $899F  0C                         LOADL_quick   ; inline operand = 12
  $89A0  51                         LOADR_qimm   ; inline operand = 1
  $89A1  DA                         AND
  $89A2  1C                         LOADR_quick   ; inline operand = 12
  $89A3  B5                         MULT
  $89A4  8B 32                      BYTE_LOADR_imm1        +50
  $89A6  B5                         MULT
  $89A7  B3                         PUSHL
  $89A8  0C                         LOADL_quick   ; inline operand = 12
  $89A9  72                         ADD_qimm   ; inline operand = 2
  $89AA  52                         LOADR_qimm   ; inline operand = 2
  $89AB  B6                         SDIV
  $89AC  8C 2C 01                   LOADR_imm2             $012C
  $89AF  B5                         MULT
  $89B0  B4                         POPR
  $89B1  BB                         ADD
  $89B2  B4                         POPR
  $89B3  BB                         ADD
  $89B4  90 38 FF                   ADD_imm2               $FF38
  $89B7  2B                         STORE_quick   ; inline operand = 11
  $89B8  0B                         LOADL_quick   ; inline operand = 11
  $89B9  CF                         RETURN

; ============================================================
; sub $89BA   (frame_off=+0, body @ $89BF)   [PRG $2C9BA]
; ============================================================
  $89BF  8D 10                      BYTE_PUSH_imm1         +16
  $89C1  6E                         PUSH_qimm   ; inline operand = 14
  $89C2  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $89C6  3C                         PUSH_quick   ; inline operand = 12
  $89C7  E9 93 89 02                CALL_abs_imm1          $8993 {bytecode}, $02
  $89CB  B3                         PUSHL
  $89CC  8E 17 95                   PUSH_imm2              $9517
  $89CF  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $89D3  CF                         RETURN

; ============================================================
; sub $89D4   (frame_off=+0, body @ $89D9)   [PRG $2C9D4]
; ============================================================
  $89D9  6C                         PUSH_qimm   ; inline operand = 12
  $89DA  63                         PUSH_qimm   ; inline operand = 3
  $89DB  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $89DF  3C                         PUSH_quick   ; inline operand = 12
  $89E0  8E 26 95                   PUSH_imm2              $9526
  $89E3  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $89E7  CF                         RETURN

; ============================================================
; sub $89E8   (frame_off=+0, body @ $89ED)   [PRG $2C9E8]
; ============================================================
  $89ED  6E                         PUSH_qimm   ; inline operand = 14
  $89EE  63                         PUSH_qimm   ; inline operand = 3
  $89EF  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $89F3  3C                         PUSH_quick   ; inline operand = 12
  $89F4  8E 30 95                   PUSH_imm2              $9530
  $89F7  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $89FB  CF                         RETURN

; ============================================================
; sub $89FC   (frame_off=+0, body @ $8A01)   [PRG $2C9FC]
; ============================================================
  $8A01  8D 10                      BYTE_PUSH_imm1         +16
  $8A03  63                         PUSH_qimm   ; inline operand = 3
  $8A04  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8A08  3C                         PUSH_quick   ; inline operand = 12
  $8A09  8E 3A 95                   PUSH_imm2              $953A
  $8A0C  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $8A10  CF                         RETURN

; ============================================================
; sub $8A11   (frame_off=-2, body @ $8A16)   [PRG $2CA11]
; ============================================================
  $8A16  61                         PUSH_qimm   ; inline operand = 1
  $8A17  65                         PUSH_qimm   ; inline operand = 5
  $8A18  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8A1C  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8A1F  61                         PUSH_qimm   ; inline operand = 1
  $8A20  8E 44 95                   PUSH_imm2              $9544
  $8A23  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8A27  AC 9F CD                   CALL_abs               $CD9F {native}
  $8A2A  2B                         STORE_quick   ; inline operand = 11
  $8A2B  0B                         LOADL_quick   ; inline operand = 11
  $8A2C  CF                         RETURN

; ============================================================
; sub $8A2D   (frame_off=-18, body @ $8A32)   [PRG $2CA2D]
; ============================================================
  $8A32  40                         LOADL_qimm   ; inline operand = 0
  $8A33  2B                         STORE_quick   ; inline operand = 11
 >$8A34  0B                         LOADL_quick   ; inline operand = 11
  $8A35  57                         LOADR_qimm   ; inline operand = 7
  $8A36  B5                         MULT
  $8A37  8C 90 6C                   LOADR_imm2             $6C90
  $8A3A  BB                         ADD
  $8A3B  24                         STORE_quick   ; inline operand = 4
  $8A3C  04                         LOADL_quick   ; inline operand = 4
  $8A3D  76                         ADD_qimm   ; inline operand = 6
  $8A3E  D3                         BYTE_DEREF
  $8A3F  8B 40                      BYTE_LOADR_imm1        +64
  $8A41  DA                         AND
  $8A42  D8 4E 8A                   JUMPF_abs              $8A4E
  $8A45  0B                         LOADL_quick   ; inline operand = 11
  $8A46  D0                         INC
  $8A47  2B                         STORE_quick   ; inline operand = 11
  $8A48  0B                         LOADL_quick   ; inline operand = 11
  $8A49  55                         LOADR_qimm   ; inline operand = 5
  $8A4A  C6                         UCMPLT
  $8A4B  D7 34 8A                   JUMPT_abs              $8A34
 >$8A4E  0B                         LOADL_quick   ; inline operand = 11
  $8A4F  A2 FD FF                   BYTE_STORE_far         $FFFD
  $8A52  34                         PUSH_quick   ; inline operand = 4
  $8A53  3C                         PUSH_quick   ; inline operand = 12
  $8A54  E9 DA 88 02                CALL_abs_imm1          $88DA {bytecode}, $02
  $8A58  D4                         BYTE_POPSTORE
  $8A59  04                         LOADL_quick   ; inline operand = 4
  $8A5A  D0                         INC
  $8A5B  B3                         PUSHL
  $8A5C  3C                         PUSH_quick   ; inline operand = 12
  $8A5D  E9 07 89 02                CALL_abs_imm1          $8907 {bytecode}, $02
  $8A61  D4                         BYTE_POPSTORE
  $8A62  04                         LOADL_quick   ; inline operand = 4
  $8A63  72                         ADD_qimm   ; inline operand = 2
  $8A64  B3                         PUSHL
  $8A65  3C                         PUSH_quick   ; inline operand = 12
  $8A66  E9 4C 89 02                CALL_abs_imm1          $894C {bytecode}, $02
  $8A6A  D4                         BYTE_POPSTORE
  $8A6B  04                         LOADL_quick   ; inline operand = 4
  $8A6C  73                         ADD_qimm   ; inline operand = 3
  $8A6D  B3                         PUSHL
  $8A6E  40                         LOADL_qimm   ; inline operand = 0
  $8A6F  D4                         BYTE_POPSTORE
  $8A70  04                         LOADL_quick   ; inline operand = 4
  $8A71  74                         ADD_qimm   ; inline operand = 4
  $8A72  B3                         PUSHL
  $8A73  40                         LOADL_qimm   ; inline operand = 0
  $8A74  B1                         POPSTORE
  $8A75  DE F7 FF                   LEAL_far               $FFF7
  $8A78  B3                         PUSHL
  $8A79  60                         PUSH_qimm   ; inline operand = 0
  $8A7A  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $8A7E  A2 FC FF                   BYTE_STORE_far         $FFFC
  $8A81  40                         LOADL_qimm   ; inline operand = 0
  $8A82  2B                         STORE_quick   ; inline operand = 11
 >$8A83  DE F2 FF                   LEAL_far               $FFF2
  $8A86  B3                         PUSHL
  $8A87  0B                         LOADL_quick   ; inline operand = 11
  $8A88  B4                         POPR
  $8A89  BB                         ADD
  $8A8A  B3                         PUSHL
  $8A8B  0B                         LOADL_quick   ; inline operand = 11
  $8A8C  D4                         BYTE_POPSTORE
  $8A8D  0B                         LOADL_quick   ; inline operand = 11
  $8A8E  D0                         INC
  $8A8F  2B                         STORE_quick   ; inline operand = 11
  $8A90  0B                         LOADL_quick   ; inline operand = 11
  $8A91  55                         LOADR_qimm   ; inline operand = 5
  $8A92  C6                         UCMPLT
  $8A93  D7 83 8A                   JUMPT_abs              $8A83
  $8A96  40                         LOADL_qimm   ; inline operand = 0
  $8A97  D6 B8 8A                   JUMP_abs               $8AB8
 >$8A9A  DE F2 FF                   LEAL_far               $FFF2
  $8A9D  B3                         PUSHL
  $8A9E  DE F7 FF                   LEAL_far               $FFF7
  $8AA1  B3                         PUSHL
  $8AA2  0B                         LOADL_quick   ; inline operand = 11
  $8AA3  B4                         POPR
  $8AA4  BB                         ADD
  $8AA5  D3                         BYTE_DEREF
  $8AA6  57                         LOADR_qimm   ; inline operand = 7
  $8AA7  B5                         MULT
  $8AA8  8C 96 6C                   LOADR_imm2             $6C96
  $8AAB  BB                         ADD
  $8AAC  D3                         BYTE_DEREF
  $8AAD  5F                         LOADR_qimm   ; inline operand = 15
  $8AAE  DA                         AND
  $8AAF  B4                         POPR
  $8AB0  BB                         ADD
  $8AB1  B3                         PUSHL
  $8AB2  8A FF 00                   LOADL_imm2             $00FF
  $8AB5  D4                         BYTE_POPSTORE
  $8AB6  0B                         LOADL_quick   ; inline operand = 11
  $8AB7  D0                         INC
 >$8AB8  2B                         STORE_quick   ; inline operand = 11
  $8AB9  A0 FC FF                   BYTE_LOADL_far         $FFFC
  $8ABC  B3                         PUSHL
  $8ABD  0B                         LOADL_quick   ; inline operand = 11
  $8ABE  B4                         POPR
  $8ABF  C6                         UCMPLT
  $8AC0  D7 9A 8A                   JUMPT_abs              $8A9A
  $8AC3  40                         LOADL_qimm   ; inline operand = 0
  $8AC4  2B                         STORE_quick   ; inline operand = 11
 >$8AC5  DE F2 FF                   LEAL_far               $FFF2
  $8AC8  B3                         PUSHL
  $8AC9  0B                         LOADL_quick   ; inline operand = 11
  $8ACA  B4                         POPR
  $8ACB  BB                         ADD
  $8ACC  D3                         BYTE_DEREF
  $8ACD  8C FF 00                   LOADR_imm2             $00FF
  $8AD0  C1                         CMPNE
  $8AD1  D8 E2 8A                   JUMPF_abs              $8AE2
  $8AD4  DE F2 FF                   LEAL_far               $FFF2
  $8AD7  B3                         PUSHL
  $8AD8  0B                         LOADL_quick   ; inline operand = 11
  $8AD9  B4                         POPR
  $8ADA  BB                         ADD
  $8ADB  D3                         BYTE_DEREF
  $8ADC  A2 FC FF                   BYTE_STORE_far         $FFFC
  $8ADF  D6 EB 8A                   JUMP_abs               $8AEB
 >$8AE2  0B                         LOADL_quick   ; inline operand = 11
  $8AE3  D0                         INC
  $8AE4  2B                         STORE_quick   ; inline operand = 11
  $8AE5  0B                         LOADL_quick   ; inline operand = 11
  $8AE6  55                         LOADR_qimm   ; inline operand = 5
  $8AE7  C6                         UCMPLT
  $8AE8  D7 C5 8A                   JUMPT_abs              $8AC5
 >$8AEB  04                         LOADL_quick   ; inline operand = 4
  $8AEC  76                         ADD_qimm   ; inline operand = 6
  $8AED  B3                         PUSHL
  $8AEE  40                         LOADL_qimm   ; inline operand = 0
  $8AEF  D4                         BYTE_POPSTORE
  $8AF0  8D 40                      BYTE_PUSH_imm1         +64
  $8AF2  04                         LOADL_quick   ; inline operand = 4
  $8AF3  76                         ADD_qimm   ; inline operand = 6
  $8AF4  B4                         POPR
  $8AF5  B3                         PUSHL
  $8AF6  D3                         BYTE_DEREF
  $8AF7  DB                         OR
  $8AF8  D4                         BYTE_POPSTORE
  $8AF9  8E F0 00                   PUSH_imm2              $00F0
  $8AFC  04                         LOADL_quick   ; inline operand = 4
  $8AFD  76                         ADD_qimm   ; inline operand = 6
  $8AFE  B4                         POPR
  $8AFF  B3                         PUSHL
  $8B00  D3                         BYTE_DEREF
  $8B01  DA                         AND
  $8B02  D4                         BYTE_POPSTORE
  $8B03  A3 FC FF                   BYTE_PUSH_far          $FFFC
  $8B06  04                         LOADL_quick   ; inline operand = 4
  $8B07  76                         ADD_qimm   ; inline operand = 6
  $8B08  B4                         POPR
  $8B09  B3                         PUSHL
  $8B0A  D3                         BYTE_DEREF
  $8B0B  DB                         OR
  $8B0C  D4                         BYTE_POPSTORE
  $8B0D  A0 FC FF                   BYTE_LOADL_far         $FFFC
  $8B10  B3                         PUSHL
  $8B11  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8B15  23                         STORE_quick   ; inline operand = 3
  $8B16  03                         LOADL_quick   ; inline operand = 3
  $8B17  7F                         ADD_qimm   ; inline operand = 15
  $8B18  B3                         PUSHL
  $8B19  0C                         LOADL_quick   ; inline operand = 12
  $8B1A  7A                         ADD_qimm   ; inline operand = 10
  $8B1B  B0                         DEREF
  $8B1C  B1                         POPSTORE
  $8B1D  03                         LOADL_quick   ; inline operand = 3
  $8B1E  8F 11                      BYTE_ADD_imm1          +17
  $8B20  B3                         PUSHL
  $8B21  0C                         LOADL_quick   ; inline operand = 12
  $8B22  7C                         ADD_qimm   ; inline operand = 12
  $8B23  B0                         DEREF
  $8B24  D4                         BYTE_POPSTORE
  $8B25  03                         LOADL_quick   ; inline operand = 3
  $8B26  8F 12                      BYTE_ADD_imm1          +18
  $8B28  B3                         PUSHL
  $8B29  0C                         LOADL_quick   ; inline operand = 12
  $8B2A  78                         ADD_qimm   ; inline operand = 8
  $8B2B  B0                         DEREF
  $8B2C  B1                         POPSTORE
  $8B2D  03                         LOADL_quick   ; inline operand = 3
  $8B2E  8F 14                      BYTE_ADD_imm1          +20
  $8B30  B3                         PUSHL
  $8B31  0C                         LOADL_quick   ; inline operand = 12
  $8B32  B0                         DEREF
  $8B33  B3                         PUSHL
  $8B34  0C                         LOADL_quick   ; inline operand = 12
  $8B35  76                         ADD_qimm   ; inline operand = 6
  $8B36  B0                         DEREF
  $8B37  55                         LOADR_qimm   ; inline operand = 5
  $8B38  BD                         LSHIFT
  $8B39  B3                         PUSHL
  $8B3A  0C                         LOADL_quick   ; inline operand = 12
  $8B3B  74                         ADD_qimm   ; inline operand = 4
  $8B3C  B0                         DEREF
  $8B3D  54                         LOADR_qimm   ; inline operand = 4
  $8B3E  BD                         LSHIFT
  $8B3F  B3                         PUSHL
  $8B40  0C                         LOADL_quick   ; inline operand = 12
  $8B41  72                         ADD_qimm   ; inline operand = 2
  $8B42  B0                         DEREF
  $8B43  D2                         LSHIFT1
  $8B44  D2                         LSHIFT1
  $8B45  B4                         POPR
  $8B46  DB                         OR
  $8B47  B4                         POPR
  $8B48  DB                         OR
  $8B49  B4                         POPR
  $8B4A  DB                         OR
  $8B4B  D4                         BYTE_POPSTORE
  $8B4C  60                         PUSH_qimm   ; inline operand = 0
  $8B4D  8D 18                      BYTE_PUSH_imm1         +24
  $8B4F  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $8B52  8B 18                      BYTE_LOADR_imm1        +24
  $8B54  B5                         MULT
  $8B55  8C A4 6A                   LOADR_imm2             $6AA4
  $8B58  BB                         ADD
  $8B59  B3                         PUSHL
  $8B5A  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $8B5E  61                         PUSH_qimm   ; inline operand = 1
  $8B5F  65                         PUSH_qimm   ; inline operand = 5
  $8B60  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8B64  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8B67  8E 5F 95                   PUSH_imm2              $955F
  $8B6A  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8B6E  AC 37 CE                   CALL_abs               $CE37 {native}
  $8B71  8D 10                      BYTE_PUSH_imm1         +16
  $8B73  60                         PUSH_qimm   ; inline operand = 0
  $8B74  8E 4F 95                   PUSH_imm2              $954F
  $8B77  66                         PUSH_qimm   ; inline operand = 6
  $8B78  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8B7C  8E E2 00                   PUSH_imm2              $00E2
  $8B7F  8E EA B5                   PUSH_imm2              $B5EA
  $8B82  8E DE B2                   PUSH_imm2              $B2DE
  $8B85  8D 1A                      BYTE_PUSH_imm1         +26
  $8B87  8D 1E                      BYTE_PUSH_imm1         +30
  $8B89  62                         PUSH_qimm   ; inline operand = 2
  $8B8A  61                         PUSH_qimm   ; inline operand = 1
  $8B8B  69                         PUSH_qimm   ; inline operand = 9
  $8B8C  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
 >$8B90  8E E7 00                   PUSH_imm2              $00E7
  $8B93  8E AC A0                   PUSH_imm2              $A0AC
  $8B96  8E 04 A0                   PUSH_imm2              $A004
  $8B99  66                         PUSH_qimm   ; inline operand = 6
  $8B9A  8D 1C                      BYTE_PUSH_imm1         +28
  $8B9C  8D 16                      BYTE_PUSH_imm1         +22
  $8B9E  62                         PUSH_qimm   ; inline operand = 2
  $8B9F  69                         PUSH_qimm   ; inline operand = 9
  $8BA0  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
 >$8BA4  33                         PUSH_quick   ; inline operand = 3
  $8BA5  67                         PUSH_qimm   ; inline operand = 7
  $8BA6  8E A6 83                   PUSH_imm2              $83A6
  $8BA9  8E C0 00                   PUSH_imm2              $00C0
  $8BAC  61                         PUSH_qimm   ; inline operand = 1
  $8BAD  E9 3A DE 0A                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $0A
  $8BB1  D8 A4 8B                   JUMPF_abs              $8BA4
  $8BB4  8D 19                      BYTE_PUSH_imm1         +25
  $8BB6  68                         PUSH_qimm   ; inline operand = 8
  $8BB7  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8BBB  61                         PUSH_qimm   ; inline operand = 1
  $8BBC  8E 8D 95                   PUSH_imm2              $958D
  $8BBF  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8BC3  AC 9F CD                   CALL_abs               $CD9F {native}
  $8BC6  D8 90 8B                   JUMPF_abs              $8B90
  $8BC9  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $8BCC  75                         ADD_qimm   ; inline operand = 5
  $8BCD  CF                         RETURN

; ============================================================
; sub $8BCE   (frame_off=-8, body @ $8BD3)   [PRG $2CBCE]
; ============================================================
 >$8BD3  AC 01 B8                   CALL_abs               $B801 (draw_box_frame) {native}
  $8BD6  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8BD9  0C                         LOADL_quick   ; inline operand = 12
  $8BDA  76                         ADD_qimm   ; inline operand = 6
  $8BDB  B0                         DEREF
  $8BDC  55                         LOADR_qimm   ; inline operand = 5
  $8BDD  B8                         UDIV
  $8BDE  8B 28                      BYTE_LOADR_imm1        +40
  $8BE0  B5                         MULT
  $8BE1  B3                         PUSHL
  $8BE2  0C                         LOADL_quick   ; inline operand = 12
  $8BE3  76                         ADD_qimm   ; inline operand = 6
  $8BE4  B0                         DEREF
  $8BE5  51                         LOADR_qimm   ; inline operand = 1
  $8BE6  BE                         URSHIFT
  $8BE7  D0                         INC
  $8BE8  8B 14                      BYTE_LOADR_imm1        +20
  $8BEA  B5                         MULT
  $8BEB  B4                         POPR
  $8BEC  BB                         ADD
  $8BED  2A                         STORE_quick   ; inline operand = 10
  $8BEE  3A                         PUSH_quick   ; inline operand = 10
  $8BEF  60                         PUSH_qimm   ; inline operand = 0
  $8BF0  8E 98 95                   PUSH_imm2              $9598
  $8BF3  E9 12 CD 06                CALL_abs_imm1          $CD12 {native}, $06
  $8BF7  2B                         STORE_quick   ; inline operand = 11
  $8BF8  0B                         LOADL_quick   ; inline operand = 11
  $8BF9  8B FF                      BYTE_LOADR_imm1        -1
  $8BFB  C0                         CMPEQ
  $8BFC  D8 01 8C                   JUMPF_abs              $8C01
  $8BFF  40                         LOADL_qimm   ; inline operand = 0
  $8C00  CF                         RETURN
 >$8C01  0C                         LOADL_quick   ; inline operand = 12
  $8C02  7C                         ADD_qimm   ; inline operand = 12
  $8C03  B3                         PUSHL
  $8C04  0B                         LOADL_quick   ; inline operand = 11
  $8C05  B1                         POPSTORE
  $8C06  8A F4 01                   LOADL_imm2             $01F4
  $8C09  29                         STORE_quick   ; inline operand = 9
  $8C0A  0C                         LOADL_quick   ; inline operand = 12
  $8C0B  76                         ADD_qimm   ; inline operand = 6
  $8C0C  B0                         DEREF
  $8C0D  B3                         PUSHL
  $8C0E  E9 93 89 02                CALL_abs_imm1          $8993 {bytecode}, $02
  $8C12  1B                         LOADR_quick   ; inline operand = 11
  $8C13  BC                         SUB
  $8C14  B3                         PUSHL
  $8C15  09                         LOADL_quick   ; inline operand = 9
  $8C16  B4                         POPR
  $8C17  C8                         UCMPGT
  $8C18  D8 26 8C                   JUMPF_abs              $8C26
  $8C1B  0C                         LOADL_quick   ; inline operand = 12
  $8C1C  76                         ADD_qimm   ; inline operand = 6
  $8C1D  B0                         DEREF
  $8C1E  B3                         PUSHL
  $8C1F  E9 93 89 02                CALL_abs_imm1          $8993 {bytecode}, $02
  $8C23  1B                         LOADR_quick   ; inline operand = 11
  $8C24  BC                         SUB
  $8C25  29                         STORE_quick   ; inline operand = 9
 >$8C26  AC 01 B8                   CALL_abs               $B801 (draw_box_frame) {native}
  $8C29  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8C2C  39                         PUSH_quick   ; inline operand = 9
  $8C2D  8D 14                      BYTE_PUSH_imm1         +20
  $8C2F  8E C9 95                   PUSH_imm2              $95C9
  $8C32  E9 12 CD 06                CALL_abs_imm1          $CD12 {native}, $06
  $8C36  2B                         STORE_quick   ; inline operand = 11
  $8C37  0B                         LOADL_quick   ; inline operand = 11
  $8C38  8B FF                      BYTE_LOADR_imm1        -1
  $8C3A  C0                         CMPEQ
  $8C3B  D8 40 8C                   JUMPF_abs              $8C40
  $8C3E  40                         LOADL_qimm   ; inline operand = 0
  $8C3F  CF                         RETURN
 >$8C40  0C                         LOADL_quick   ; inline operand = 12
  $8C41  7A                         ADD_qimm   ; inline operand = 10
  $8C42  B3                         PUSHL
  $8C43  0B                         LOADL_quick   ; inline operand = 11
  $8C44  B1                         POPSTORE
  $8C45  0C                         LOADL_quick   ; inline operand = 12
  $8C46  78                         ADD_qimm   ; inline operand = 8
  $8C47  B3                         PUSHL
  $8C48  0C                         LOADL_quick   ; inline operand = 12
  $8C49  7C                         ADD_qimm   ; inline operand = 12
  $8C4A  B0                         DEREF
  $8C4B  B3                         PUSHL
  $8C4C  0C                         LOADL_quick   ; inline operand = 12
  $8C4D  7A                         ADD_qimm   ; inline operand = 10
  $8C4E  B0                         DEREF
  $8C4F  B4                         POPR
  $8C50  BB                         ADD
  $8C51  B3                         PUSHL
  $8C52  0C                         LOADL_quick   ; inline operand = 12
  $8C53  76                         ADD_qimm   ; inline operand = 6
  $8C54  B0                         DEREF
  $8C55  B3                         PUSHL
  $8C56  E9 93 89 02                CALL_abs_imm1          $8993 {bytecode}, $02
  $8C5A  B4                         POPR
  $8C5B  BC                         SUB
  $8C5C  B1                         POPSTORE
  $8C5D  0C                         LOADL_quick   ; inline operand = 12
  $8C5E  78                         ADD_qimm   ; inline operand = 8
  $8C5F  B0                         DEREF
  $8C60  B3                         PUSHL
  $8C61  E9 D4 89 02                CALL_abs_imm1          $89D4 (draw_stat_cargo) {bytecode}, $02
  $8C65  0C                         LOADL_quick   ; inline operand = 12
  $8C66  7A                         ADD_qimm   ; inline operand = 10
  $8C67  B0                         DEREF
  $8C68  B3                         PUSHL
  $8C69  E9 E8 89 02                CALL_abs_imm1          $89E8 (draw_stat_crew) {bytecode}, $02
  $8C6D  0C                         LOADL_quick   ; inline operand = 12
  $8C6E  7C                         ADD_qimm   ; inline operand = 12
  $8C6F  B0                         DEREF
  $8C70  B3                         PUSHL
  $8C71  E9 FC 89 02                CALL_abs_imm1          $89FC (draw_stat_arms) {bytecode}, $02
  $8C75  AC 11 8A                   CALL_abs               $8A11 {bytecode}
  $8C78  D8 D3 8B                   JUMPF_abs              $8BD3
  $8C7B  3C                         PUSH_quick   ; inline operand = 12
  $8C7C  E9 2D 8A 02                CALL_abs_imm1          $8A2D (shipyard_build_confirm_name) {bytecode}, $02
  $8C80  28                         STORE_quick   ; inline operand = 8
  $8C81  08                         LOADL_quick   ; inline operand = 8
  $8C82  CF                         RETURN

; ============================================================
; sub $8C83   (frame_off=-17, body @ $8C88)   [PRG $2CC83]
; ============================================================
  $8C88  0E                         LOADL_quick   ; inline operand = 14
  $8C89  76                         ADD_qimm   ; inline operand = 6
  $8C8A  B3                         PUSHL
  $8C8B  A0 0B 00                   BYTE_LOADL_far         $000B
  $8C8E  B1                         POPSTORE
  $8C8F  AC 01 B8                   CALL_abs               $B801 (draw_box_frame) {native}
  $8C92  AC CE B7                   CALL_abs               $B7CE {native}
  $8C95  A0 0B 00                   BYTE_LOADL_far         $000B
  $8C98  B3                         PUSHL
  $8C99  66                         PUSH_qimm   ; inline operand = 6
  $8C9A  63                         PUSH_qimm   ; inline operand = 3
  $8C9B  E9 68 88 06                CALL_abs_imm1          $8868 {bytecode}, $06
  $8C9F  0E                         LOADL_quick   ; inline operand = 14
  $8CA0  76                         ADD_qimm   ; inline operand = 6
  $8CA1  B0                         DEREF
  $8CA2  B3                         PUSHL
  $8CA3  E9 BA 89 02                CALL_abs_imm1          $89BA (draw_stat_capacity) {bytecode}, $02
  $8CA7  8D 12                      BYTE_PUSH_imm1         +18
  $8CA9  8D 13                      BYTE_PUSH_imm1         +19
  $8CAB  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8CAF  AA 6B 66                   PUSH_abs               $666B
  $8CB2  8E 25 96                   PUSH_imm2              $9625
  $8CB5  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
 >$8CB9  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8CBC  61                         PUSH_qimm   ; inline operand = 1
  $8CBD  8E 2E 96                   PUSH_imm2              $962E
  $8CC0  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8CC4  62                         PUSH_qimm   ; inline operand = 2
  $8CC5  64                         PUSH_qimm   ; inline operand = 4
  $8CC6  8E E5 95                   PUSH_imm2              $95E5
  $8CC9  62                         PUSH_qimm   ; inline operand = 2
  $8CCA  67                         PUSH_qimm   ; inline operand = 7
  $8CCB  8D 17                      BYTE_PUSH_imm1         +23
  $8CCD  68                         PUSH_qimm   ; inline operand = 8
  $8CCE  E9 56 A1 0E                CALL_abs_imm1          $A156 {native}, $0E
  $8CD2  A2 FF FF                   BYTE_STORE_far         $FFFF
  $8CD5  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8CD8  8C FF 00                   LOADR_imm2             $00FF
  $8CDB  C0                         CMPEQ
  $8CDC  D8 E1 8C                   JUMPF_abs              $8CE1
  $8CDF  40                         LOADL_qimm   ; inline operand = 0
  $8CE0  CF                         RETURN
 >$8CE1  3E                         PUSH_quick   ; inline operand = 14
  $8CE2  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8CE5  B1                         POPSTORE
  $8CE6  3E                         PUSH_quick   ; inline operand = 14
  $8CE7  E9 EE 88 02                CALL_abs_imm1          $88EE (draw_stat_durability) {bytecode}, $02
  $8CEB  0E                         LOADL_quick   ; inline operand = 14
  $8CEC  B0                         DEREF
  $8CED  72                         ADD_qimm   ; inline operand = 2
  $8CEE  B3                         PUSHL
  $8CEF  A0 0D 00                   BYTE_LOADL_far         $000D
  $8CF2  8F 32                      BYTE_ADD_imm1          +50
  $8CF4  B3                         PUSHL
  $8CF5  0E                         LOADL_quick   ; inline operand = 14
  $8CF6  76                         ADD_qimm   ; inline operand = 6
  $8CF7  B0                         DEREF
  $8CF8  57                         LOADR_qimm   ; inline operand = 7
  $8CF9  B5                         MULT
  $8CFA  51                         LOADR_qimm   ; inline operand = 1
  $8CFB  BE                         URSHIFT
  $8CFC  D0                         INC
  $8CFD  B4                         POPR
  $8CFE  B5                         MULT
  $8CFF  B4                         POPR
  $8D00  B5                         MULT
  $8D01  51                         LOADR_qimm   ; inline operand = 1
  $8D02  BE                         URSHIFT
  $8D03  57                         LOADR_qimm   ; inline operand = 7
  $8D04  B5                         MULT
  $8D05  B7 26                      LONG                   $26
  $8D07  B7 0E                      LONG                   $0E
  $8D09  EF                         UNK
  $8D0A  FF                         UNK
  $8D0B  8D 12                      BYTE_PUSH_imm1         +18
  $8D0D  62                         PUSH_qimm   ; inline operand = 2
  $8D0E  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8D12  B7 0C                      LONG                   $0C
  $8D14  EF                         UNK
  $8D15  FF                         UNK
  $8D16  B7 27                      LONG                   $27
  $8D18  B3                         PUSHL
  $8D19  8E 41 96                   PUSH_imm2              $9641
  $8D1C  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8D20  AC 11 8A                   CALL_abs               $8A11 {bytecode}
  $8D23  D8 B9 8C                   JUMPF_abs              $8CB9
 >$8D26  0E                         LOADL_quick   ; inline operand = 14
  $8D27  76                         ADD_qimm   ; inline operand = 6
  $8D28  B0                         DEREF
  $8D29  52                         LOADR_qimm   ; inline operand = 2
  $8D2A  C0                         CMPEQ
  $8D2B  D7 36 8D                   JUMPT_abs              $8D36
  $8D2E  0E                         LOADL_quick   ; inline operand = 14
  $8D2F  76                         ADD_qimm   ; inline operand = 6
  $8D30  B0                         DEREF
  $8D31  53                         LOADR_qimm   ; inline operand = 3
  $8D32  C0                         CMPEQ
  $8D33  D8 3A 8D                   JUMPF_abs              $8D3A
 >$8D36  43                         LOADL_qimm   ; inline operand = 3
  $8D37  D6 3B 8D                   JUMP_abs               $8D3B
 >$8D3A  42                         LOADL_qimm   ; inline operand = 2
 >$8D3B  85 F9                      STORE_near             $F9
  $8D3D  0E                         LOADL_quick   ; inline operand = 14
  $8D3E  76                         ADD_qimm   ; inline operand = 6
  $8D3F  B0                         DEREF
  $8D40  54                         LOADR_qimm   ; inline operand = 4
  $8D41  C6                         UCMPLT
  $8D42  D8 4B 8D                   JUMPF_abs              $8D4B
  $8D45  8A ED 95                   LOADL_imm2             $95ED
  $8D48  D6 4E 8D                   JUMP_abs               $8D4E
 >$8D4B  8A EF 95                   LOADL_imm2             $95EF
 >$8D4E  85 FD                      STORE_near             $FD
  $8D50  AC 01 B8                   CALL_abs               $B801 (draw_box_frame) {native}
  $8D53  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8D56  61                         PUSH_qimm   ; inline operand = 1
  $8D57  8E 4B 96                   PUSH_imm2              $964B
  $8D5A  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8D5E  61                         PUSH_qimm   ; inline operand = 1
  $8D5F  87 F9                      PUSH_near              $F9
  $8D61  87 FD                      PUSH_near              $FD
  $8D63  61                         PUSH_qimm   ; inline operand = 1
  $8D64  64                         PUSH_qimm   ; inline operand = 4
  $8D65  8D 17                      BYTE_PUSH_imm1         +23
  $8D67  68                         PUSH_qimm   ; inline operand = 8
  $8D68  E9 56 A1 0E                CALL_abs_imm1          $A156 {native}, $0E
  $8D6C  A2 FF FF                   BYTE_STORE_far         $FFFF
  $8D6F  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8D72  8C FF 00                   LOADR_imm2             $00FF
  $8D75  C0                         CMPEQ
  $8D76  D8 7B 8D                   JUMPF_abs              $8D7B
  $8D79  40                         LOADL_qimm   ; inline operand = 0
  $8D7A  CF                         RETURN
 >$8D7B  0E                         LOADL_quick   ; inline operand = 14
  $8D7C  76                         ADD_qimm   ; inline operand = 6
  $8D7D  B0                         DEREF
  $8D7E  53                         LOADR_qimm   ; inline operand = 3
  $8D7F  C8                         UCMPGT
  $8D80  D8 8A 8D                   JUMPF_abs              $8D8A
  $8D83  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8D86  D0                         INC
  $8D87  A2 FF FF                   BYTE_STORE_far         $FFFF
 >$8D8A  0E                         LOADL_quick   ; inline operand = 14
  $8D8B  72                         ADD_qimm   ; inline operand = 2
  $8D8C  B3                         PUSHL
  $8D8D  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8D90  B1                         POPSTORE
  $8D91  AC 01 B8                   CALL_abs               $B801 (draw_box_frame) {native}
  $8D94  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8D97  61                         PUSH_qimm   ; inline operand = 1
  $8D98  8E 5B 96                   PUSH_imm2              $965B
  $8D9B  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8D9F  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8DA2  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8DA5  61                         PUSH_qimm   ; inline operand = 1
  $8DA6  8E 97 96                   PUSH_imm2              $9697
  $8DA9  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8DAD  61                         PUSH_qimm   ; inline operand = 1
  $8DAE  62                         PUSH_qimm   ; inline operand = 2
  $8DAF  8E F3 95                   PUSH_imm2              $95F3
  $8DB2  61                         PUSH_qimm   ; inline operand = 1
  $8DB3  69                         PUSH_qimm   ; inline operand = 9
  $8DB4  8D 19                      BYTE_PUSH_imm1         +25
  $8DB6  68                         PUSH_qimm   ; inline operand = 8
  $8DB7  E9 56 A1 0E                CALL_abs_imm1          $A156 {native}, $0E
  $8DBB  A2 FF FF                   BYTE_STORE_far         $FFFF
  $8DBE  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8DC1  8C FF 00                   LOADR_imm2             $00FF
  $8DC4  C0                         CMPEQ
  $8DC5  D8 CA 8D                   JUMPF_abs              $8DCA
  $8DC8  40                         LOADL_qimm   ; inline operand = 0
  $8DC9  CF                         RETURN
 >$8DCA  0E                         LOADL_quick   ; inline operand = 14
  $8DCB  74                         ADD_qimm   ; inline operand = 4
  $8DCC  B3                         PUSHL
  $8DCD  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8DD0  B1                         POPSTORE
  $8DD1  3E                         PUSH_quick   ; inline operand = 14
  $8DD2  E9 33 89 02                CALL_abs_imm1          $8933 (draw_stat_handling) {bytecode}, $02
  $8DD6  3E                         PUSH_quick   ; inline operand = 14
  $8DD7  E9 7A 89 02                CALL_abs_imm1          $897A (draw_stat_power) {bytecode}, $02
  $8DDB  0E                         LOADL_quick   ; inline operand = 14
  $8DDC  72                         ADD_qimm   ; inline operand = 2
  $8DDD  B0                         DEREF
  $8DDE  B3                         PUSHL
  $8DDF  0E                         LOADL_quick   ; inline operand = 14
  $8DE0  74                         ADD_qimm   ; inline operand = 4
  $8DE1  B0                         DEREF
  $8DE2  B3                         PUSHL
  $8DE3  0E                         LOADL_quick   ; inline operand = 14
  $8DE4  76                         ADD_qimm   ; inline operand = 6
  $8DE5  B0                         DEREF
  $8DE6  B3                         PUSHL
  $8DE7  66                         PUSH_qimm   ; inline operand = 6
  $8DE8  63                         PUSH_qimm   ; inline operand = 3
  $8DE9  8E 68 80                   PUSH_imm2              $8068
  $8DEC  8E DE 00                   PUSH_imm2              $00DE
  $8DEF  61                         PUSH_qimm   ; inline operand = 1
  $8DF0  E9 3A DE 10                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $10
  $8DF4  0E                         LOADL_quick   ; inline operand = 14
  $8DF5  72                         ADD_qimm   ; inline operand = 2
  $8DF6  B0                         DEREF
  $8DF7  D0                         INC
  $8DF8  B3                         PUSHL
  $8DF9  A0 0D 00                   BYTE_LOADL_far         $000D
  $8DFC  8F 32                      BYTE_ADD_imm1          +50
  $8DFE  B3                         PUSHL
  $8DFF  0E                         LOADL_quick   ; inline operand = 14
  $8E00  76                         ADD_qimm   ; inline operand = 6
  $8E01  B0                         DEREF
  $8E02  51                         LOADR_qimm   ; inline operand = 1
  $8E03  BE                         URSHIFT
  $8E04  56                         LOADR_qimm   ; inline operand = 6
  $8E05  B5                         MULT
  $8E06  D0                         INC
  $8E07  B4                         POPR
  $8E08  B5                         MULT
  $8E09  B4                         POPR
  $8E0A  B5                         MULT
  $8E0B  53                         LOADR_qimm   ; inline operand = 3
  $8E0C  B5                         MULT
  $8E0D  B3                         PUSHL
  $8E0E  0E                         LOADL_quick   ; inline operand = 14
  $8E0F  B0                         DEREF
  $8E10  72                         ADD_qimm   ; inline operand = 2
  $8E11  B3                         PUSHL
  $8E12  A0 0D 00                   BYTE_LOADL_far         $000D
  $8E15  8F 32                      BYTE_ADD_imm1          +50
  $8E17  B3                         PUSHL
  $8E18  0E                         LOADL_quick   ; inline operand = 14
  $8E19  76                         ADD_qimm   ; inline operand = 6
  $8E1A  B0                         DEREF
  $8E1B  57                         LOADR_qimm   ; inline operand = 7
  $8E1C  B5                         MULT
  $8E1D  51                         LOADR_qimm   ; inline operand = 1
  $8E1E  BE                         URSHIFT
  $8E1F  D0                         INC
  $8E20  B4                         POPR
  $8E21  B5                         MULT
  $8E22  B4                         POPR
  $8E23  B5                         MULT
  $8E24  51                         LOADR_qimm   ; inline operand = 1
  $8E25  BE                         URSHIFT
  $8E26  57                         LOADR_qimm   ; inline operand = 7
  $8E27  B5                         MULT
  $8E28  B4                         POPR
  $8E29  BB                         ADD
  $8E2A  B7 26                      LONG                   $26
  $8E2C  B7 0E                      LONG                   $0E
  $8E2E  EF                         UNK
  $8E2F  FF                         UNK
  $8E30  B7 0C                      LONG                   $0C
  $8E32  EF                         UNK
  $8E33  FF                         UNK
  $8E34  B7 19 60 EA 00 00          LONG                   $19 $60 $EA $00 $00
  $8E3A  B7 0A                      LONG                   $0A
  $8E3C  D8 49 8E                   JUMPF_abs              $8E49
  $8E3F  B7 18 60 EA 00 00          LONG                   $18 $60 $EA $00 $00
  $8E45  B7 0E                      LONG                   $0E
  $8E47  EF                         UNK
  $8E48  FF                         UNK
 >$8E49  8D 12                      BYTE_PUSH_imm1         +18
  $8E4B  62                         PUSH_qimm   ; inline operand = 2
  $8E4C  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8E50  B7 0C                      LONG                   $0C
  $8E52  EF                         UNK
  $8E53  FF                         UNK
  $8E54  B7 27                      LONG                   $27
  $8E56  B3                         PUSHL
  $8E57  8E B7 96                   PUSH_imm2              $96B7
  $8E5A  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8E5E  AC 11 8A                   CALL_abs               $8A11 {bytecode}
  $8E61  D8 26 8D                   JUMPF_abs              $8D26
  $8E64  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8E67  B7 0C                      LONG                   $0C
  $8E69  EF                         UNK
  $8E6A  FF                         UNK
  $8E6B  B7 27                      LONG                   $27
  $8E6D  B3                         PUSHL
  $8E6E  8E C1 96                   PUSH_imm2              $96C1
  $8E71  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8E75  A4 6B 66                   LOADL_abs              $666B
  $8E78  85 F7                      STORE_near             $F7
  $8E7A  AC 9F CD                   CALL_abs               $CD9F {native}
  $8E7D  D8 B6 8E                   JUMPF_abs              $8EB6
  $8E80  B7 0C                      LONG                   $0C
  $8E82  EF                         UNK
  $8E83  FF                         UNK
  $8E84  B7 27                      LONG                   $27
  $8E86  83 F7                      LOADR_near             $F7
  $8E88  C8                         UCMPGT
  $8E89  D8 9B 8E                   JUMPF_abs              $8E9B
  $8E8C  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8E8F  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8E92  8E EE 96                   PUSH_imm2              $96EE
  $8E95  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
 >$8E99  40                         LOADL_qimm   ; inline operand = 0
  $8E9A  CF                         RETURN
 >$8E9B  3E                         PUSH_quick   ; inline operand = 14
  $8E9C  E9 CE 8B 02                CALL_abs_imm1          $8BCE (shipyard_build_arms_crew) {bytecode}, $02
  $8EA0  85 F3                      STORE_near             $F3
  $8EA2  D8 99 8E                   JUMPF_abs              $8E99
  $8EA5  B7 0C                      LONG                   $0C
  $8EA7  EF                         UNK
  $8EA8  FF                         UNK
  $8EA9  B7 27                      LONG                   $27
  $8EAB  CD                         SWAP
  $8EAC  A4 6B 66                   LOADL_abs              $666B
  $8EAF  BC                         SUB
  $8EB0  A8 6B 66                   STORE_abs              $666B
  $8EB3  81 F3                      LOADL_near             $F3
  $8EB5  CF                         RETURN
 >$8EB6  A5 74 6F                   BYTE_LOADL_abs         $6F74
  $8EB9  D0                         INC
  $8EBA  B3                         PUSHL
  $8EBB  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8EBF  D7 60 8F                   JUMPT_abs              $8F60
  $8EC2  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8EC5  87 F7                      PUSH_near              $F7
  $8EC7  B7 0C                      LONG                   $0C
  $8EC9  EF                         UNK
  $8ECA  FF                         UNK
  $8ECB  B7 27                      LONG                   $27
  $8ECD  B3                         PUSHL
  $8ECE  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8ED2  85 F5                      STORE_near             $F5
  $8ED4  61                         PUSH_qimm   ; inline operand = 1
  $8ED5  87 F5                      PUSH_near              $F5
  $8ED7  61                         PUSH_qimm   ; inline operand = 1
  $8ED8  8E 01 97                   PUSH_imm2              $9701
  $8EDB  E9 F3 CC 08                CALL_abs_imm1          $CCF3 {native}, $08
  $8EDF  85 FB                      STORE_near             $FB
  $8EE1  81 FB                      LOADL_near             $FB
  $8EE3  8B FF                      BYTE_LOADR_imm1        -1
  $8EE5  C1                         CMPNE
  $8EE6  D8 60 8F                   JUMPF_abs              $8F60
  $8EE9  B7 0C                      LONG                   $0C
  $8EEB  EF                         UNK
  $8EEC  FF                         UNK
  $8EED  B7 27                      LONG                   $27
  $8EEF  5A                         LOADR_qimm   ; inline operand = 10
  $8EF0  B8                         UDIV
  $8EF1  B3                         PUSHL
  $8EF2  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8EF6  B7 26                      LONG                   $26
  $8EF8  B7 14                      LONG                   $14
  $8EFA  B7 0C                      LONG                   $0C
  $8EFC  EF                         UNK
  $8EFD  FF                         UNK
  $8EFE  B7 19 02 00 00 00          LONG                   $19 $02 $00 $00 $00
  $8F04  B7 02                      LONG                   $02
  $8F06  B7 14                      LONG                   $14
  $8F08  B7 0C                      LONG                   $0C
  $8F0A  EF                         UNK
  $8F0B  FF                         UNK
  $8F0C  B7 19 14 00 00 00          LONG                   $19 $14 $00 $00 $00
  $8F12  B7 02                      LONG                   $02
  $8F14  B7 14                      LONG                   $14
  $8F16  A5 74 6F                   BYTE_LOADL_abs         $6F74
  $8F19  B3                         PUSHL
  $8F1A  4A                         LOADL_qimm   ; inline operand = 10
  $8F1B  B4                         POPR
  $8F1C  BC                         SUB
  $8F1D  B7 26                      LONG                   $26
  $8F1F  B7 15                      LONG                   $15
  $8F21  B7 01                      LONG                   $01
  $8F23  B7 15                      LONG                   $15
  $8F25  B7 03                      LONG                   $03
  $8F27  B7 15                      LONG                   $15
  $8F29  B7 04                      LONG                   $04
  $8F2B  B7 0E                      LONG                   $0E
  $8F2D  EF                         UNK
  $8F2E  FF                         UNK
  $8F2F  B7 0C                      LONG                   $0C
  $8F31  EF                         UNK
  $8F32  FF                         UNK
  $8F33  B7 27                      LONG                   $27
  $8F35  B3                         PUSHL
  $8F36  81 FB                      LOADL_near             $FB
  $8F38  B4                         POPR
  $8F39  C6                         UCMPLT
  $8F3A  D8 49 8F                   JUMPF_abs              $8F49
  $8F3D  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8F40  8E 16 97                   PUSH_imm2              $9716
  $8F43  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8F47  41                         LOADL_qimm   ; inline operand = 1
  $8F48  CF                         RETURN
 >$8F49  3E                         PUSH_quick   ; inline operand = 14
  $8F4A  E9 CE 8B 02                CALL_abs_imm1          $8BCE (shipyard_build_arms_crew) {bytecode}, $02
  $8F4E  85 F3                      STORE_near             $F3
  $8F50  D8 60 8F                   JUMPF_abs              $8F60
  $8F53  81 FB                      LOADL_near             $FB
  $8F55  CD                         SWAP
  $8F56  A4 6B 66                   LOADL_abs              $666B
  $8F59  BC                         SUB
  $8F5A  A8 6B 66                   STORE_abs              $666B
  $8F5D  81 F3                      LOADL_near             $F3
  $8F5F  CF                         RETURN
 >$8F60  40                         LOADL_qimm   ; inline operand = 0
  $8F61  CF                         RETURN

; ============================================================
; sub $8F62   (frame_off=-2, body @ $8F67)   [PRG $2CF62]
; ============================================================
  $8F67  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8F6A  A0 0B 00                   BYTE_LOADL_far         $000B
  $8F6D  D2                         LSHIFT1
  $8F6E  8C 45 97                   LOADR_imm2             $9745
  $8F71  BB                         ADD
  $8F72  B0                         DEREF
  $8F73  B3                         PUSHL
  $8F74  8E 10 99                   PUSH_imm2              $9910
  $8F77  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $8F7B  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $8F7E  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8F81  61                         PUSH_qimm   ; inline operand = 1
  $8F82  8E 14 99                   PUSH_imm2              $9914
  $8F85  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8F89  AC 9F CD                   CALL_abs               $CD9F {native}
  $8F8C  D8 A5 8F                   JUMPF_abs              $8FA5
  $8F8F  3F                         PUSH_quick   ; inline operand = 15
  $8F90  41                         LOADL_qimm   ; inline operand = 1
  $8F91  B1                         POPSTORE
  $8F92  3E                         PUSH_quick   ; inline operand = 14
  $8F93  A0 0D 00                   BYTE_LOADL_far         $000D
  $8F96  B3                         PUSHL
  $8F97  A0 0B 00                   BYTE_LOADL_far         $000B
  $8F9A  B3                         PUSHL
  $8F9B  E9 83 8C 06                CALL_abs_imm1          $8C83 (shipyard_build_hull_masts) {bytecode}, $06
  $8F9F  2B                         STORE_quick   ; inline operand = 11
  $8FA0  D8 A5 8F                   JUMPF_abs              $8FA5
  $8FA3  0B                         LOADL_quick   ; inline operand = 11
  $8FA4  CF                         RETURN
 >$8FA5  61                         PUSH_qimm   ; inline operand = 1
  $8FA6  65                         PUSH_qimm   ; inline operand = 5
  $8FA7  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8FAB  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8FAE  8E 2D 99                   PUSH_imm2              $992D
  $8FB1  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8FB5  40                         LOADL_qimm   ; inline operand = 0
  $8FB6  CF                         RETURN

; ============================================================
; sub $8FB7   (frame_off=-20, body @ $8FBC)   [PRG $2CFB7]
; ============================================================
  $8FBC  61                         PUSH_qimm   ; inline operand = 1
  $8FBD  65                         PUSH_qimm   ; inline operand = 5
  $8FBE  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8FC2  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8FC5  8E 49 99                   PUSH_imm2              $9949
  $8FC8  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8FCC  A5 67 70                   BYTE_LOADL_abs         $7067
  $8FCF  5E                         LOADR_qimm   ; inline operand = 14
  $8FD0  B5                         MULT
  $8FD1  8C B6 67                   LOADR_imm2             $67B6
  $8FD4  BB                         ADD
  $8FD5  B0                         DEREF
  $8FD6  8F 9C                      BYTE_ADD_imm1          -100
  $8FD8  8C B4 00                   LOADR_imm2             $00B4
  $8FDB  B6                         SDIV
  $8FDC  A2 FF FF                   BYTE_STORE_far         $FFFF
  $8FDF  41                         LOADL_qimm   ; inline operand = 1
  $8FE0  22                         STORE_quick   ; inline operand = 2
  $8FE1  40                         LOADL_qimm   ; inline operand = 0
  $8FE2  23                         STORE_quick   ; inline operand = 3
 >$8FE3  60                         PUSH_qimm   ; inline operand = 0
  $8FE4  68                         PUSH_qimm   ; inline operand = 8
  $8FE5  DE F0 FF                   LEAL_far               $FFF0
  $8FE8  B3                         PUSHL
  $8FE9  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $8FED  02                         LOADL_quick   ; inline operand = 2
  $8FEE  D8 FE 8F                   JUMPF_abs              $8FFE
  $8FF1  AC CE B7                   CALL_abs               $B7CE {native}
  $8FF4  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8FF7  B3                         PUSHL
  $8FF8  E9 90 88 02                CALL_abs_imm1          $8890 {bytecode}, $02
  $8FFC  40                         LOADL_qimm   ; inline operand = 0
  $8FFD  22                         STORE_quick   ; inline operand = 2
 >$8FFE  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $9001  61                         PUSH_qimm   ; inline operand = 1
  $9002  8E 74 99                   PUSH_imm2              $9974
  $9005  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $9009  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $900C  D0                         INC
  $900D  B3                         PUSHL
  $900E  E9 98 B8 02                CALL_abs_imm1          $B898 {native}, $02
  $9012  A2 FE FF                   BYTE_STORE_far         $FFFE
  $9015  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $9018  8C FF 00                   LOADR_imm2             $00FF
  $901B  C1                         CMPNE
  $901C  D8 3E 90                   JUMPF_abs              $903E
  $901F  DE EC FF                   LEAL_far               $FFEC
  $9022  B3                         PUSHL
  $9023  DE F0 FF                   LEAL_far               $FFF0
  $9026  B3                         PUSHL
  $9027  A5 67 70                   BYTE_LOADL_abs         $7067
  $902A  5E                         LOADR_qimm   ; inline operand = 14
  $902B  B5                         MULT
  $902C  8C BD 67                   LOADR_imm2             $67BD
  $902F  BB                         ADD
  $9030  D3                         BYTE_DEREF
  $9031  B3                         PUSHL
  $9032  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $9035  B3                         PUSHL
  $9036  E9 62 8F 08                CALL_abs_imm1          $8F62 (shipyard_build_confirm) {bytecode}, $08
  $903A  23                         STORE_quick   ; inline operand = 3
  $903B  D6 4D 90                   JUMP_abs               $904D
 >$903E  62                         PUSH_qimm   ; inline operand = 2
  $903F  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $9043  8E 84 99                   PUSH_imm2              $9984
  $9046  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $904A  AC CE B7                   CALL_abs               $B7CE {native}
 >$904D  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $9050  8C FF 00                   LOADR_imm2             $00FF
  $9053  C0                         CMPEQ
  $9054  D7 5B 90                   JUMPT_abs              $905B
  $9057  03                         LOADL_quick   ; inline operand = 3
  $9058  D8 E3 8F                   JUMPF_abs              $8FE3
 >$905B  03                         LOADL_quick   ; inline operand = 3
  $905C  CF                         RETURN

