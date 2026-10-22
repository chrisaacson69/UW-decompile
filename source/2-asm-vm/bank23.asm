VM bytecode disassembly
  ROM:          Uncharted Waters (USA).nes
  mode:         bulk dump of bank 23
  opcode spec:  vm-opcodes-v2.toml via nobunaga_vm.OPCODE_INFO (execution-validated lengths)
  labels:       0 CPU addresses named

  bank 23: found 34 bytecode-subroutine stubs

; ============================================================
; sub $8003   (frame_off=+0, body @ $8008)   [PRG $2E003]
; ============================================================
  $8008  8E C3 88                   PUSH_imm2              $88C3
  $800B  8E DA 00                   PUSH_imm2              $00DA
  $800E  61                         PUSH_qimm   ; inline operand = 1
  $800F  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $8013  CF                         RETURN

; ============================================================
; sub $8014   (frame_off=+0, body @ $8019)   [PRG $2E014]
; ============================================================
  $8019  8E EB 8F                   PUSH_imm2              $8FEB
  $801C  8E D8 00                   PUSH_imm2              $00D8
  $801F  61                         PUSH_qimm   ; inline operand = 1
  $8020  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $8024  CF                         RETURN

; ============================================================
; sub $8025   (frame_off=+0, body @ $802A)   [PRG $2E025]
; ============================================================
  $802A  8E 9E 8F                   PUSH_imm2              $8F9E
  $802D  8E D8 00                   PUSH_imm2              $00D8
  $8030  61                         PUSH_qimm   ; inline operand = 1
  $8031  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $8035  CF                         RETURN

; ============================================================
; sub $8036   (frame_off=+0, body @ $803B)   [PRG $2E036]
; ============================================================
  $803B  8E 23 8A                   PUSH_imm2              $8A23
  $803E  8E D8 00                   PUSH_imm2              $00D8
  $8041  61                         PUSH_qimm   ; inline operand = 1
  $8042  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $8046  CF                         RETURN

; ============================================================
; sub $8047   (frame_off=+0, body @ $804C)   [PRG $2E047]
; ============================================================
  $804C  8E D3 8B                   PUSH_imm2              $8BD3
  $804F  8E D8 00                   PUSH_imm2              $00D8
  $8052  61                         PUSH_qimm   ; inline operand = 1
  $8053  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $8057  CF                         RETURN

; ============================================================
; sub $8058   (frame_off=-6, body @ $805D)   [PRG $2E058]
; ============================================================
  $805D  AC 47 80                   CALL_abs               $8047 {bytecode}
  $8060  D8 65 80                   JUMPF_abs              $8065
  $8063  40                         LOADL_qimm   ; inline operand = 0
  $8064  CF                         RETURN
 >$8065  69                         PUSH_qimm   ; inline operand = 9
  $8066  E9 8C E0 02                CALL_abs_imm1          $E08C {native}, $02
  $806A  61                         PUSH_qimm   ; inline operand = 1
  $806B  E9 C1 E0 02                CALL_abs_imm1          $E0C1 {native}, $02
  $806F  40                         LOADL_qimm   ; inline operand = 0
  $8070  29                         STORE_quick   ; inline operand = 9
  $8071  61                         PUSH_qimm   ; inline operand = 1
  $8072  67                         PUSH_qimm   ; inline operand = 7
  $8073  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8077  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $807A  8E 2F 92                   PUSH_imm2              $922F
  $807D  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8081  A5 67 70                   BYTE_LOADL_abs         $7067
  $8084  55                         LOADR_qimm   ; inline operand = 5
  $8085  B5                         MULT
  $8086  8C 0D B5                   LOADR_imm2             $B50D
  $8089  BB                         ADD
  $808A  B3                         PUSHL
  $808B  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $808F  A2 FC FF                   BYTE_STORE_far         $FFFC
  $8092  A0 FC FF                   BYTE_LOADL_far         $FFFC
  $8095  8C FF 00                   LOADR_imm2             $00FF
  $8098  C1                         CMPNE
  $8099  D8 C4 80                   JUMPF_abs              $80C4
  $809C  62                         PUSH_qimm   ; inline operand = 2
  $809D  A0 FC FF                   BYTE_LOADL_far         $FFFC
  $80A0  B3                         PUSHL
  $80A1  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $80A5  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $80A8  61                         PUSH_qimm   ; inline operand = 1
  $80A9  A0 FC FF                   BYTE_LOADL_far         $FFFC
  $80AC  8C 2C 65                   LOADR_imm2             $652C
  $80AF  BB                         ADD
  $80B0  D3                         BYTE_DEREF
  $80B1  8B 2D                      BYTE_LOADR_imm1        +45
  $80B3  B8                         UDIV
  $80B4  D2                         LSHIFT1
  $80B5  8C 98 91                   LOADR_imm2             $9198
  $80B8  BB                         ADD
  $80B9  B0                         DEREF
  $80BA  B3                         PUSHL
  $80BB  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $80BF  61                         PUSH_qimm   ; inline operand = 1
  $80C0  E9 9B CE 02                CALL_abs_imm1          $CE9B {native}, $02
 >$80C4  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $80C7  61                         PUSH_qimm   ; inline operand = 1
  $80C8  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $80CC  8E 4C 92                   PUSH_imm2              $924C
  $80CF  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $80D3  AC 01 B8                   CALL_abs               $B801 (draw_box_frame) {native}
  $80D6  63                         PUSH_qimm   ; inline operand = 3
  $80D7  66                         PUSH_qimm   ; inline operand = 6
  $80D8  8E 8C 91                   PUSH_imm2              $918C
  $80DB  62                         PUSH_qimm   ; inline operand = 2
  $80DC  6C                         PUSH_qimm   ; inline operand = 12
  $80DD  8D 15                      BYTE_PUSH_imm1         +21
  $80DF  68                         PUSH_qimm   ; inline operand = 8
  $80E0  E9 56 A1 0E                CALL_abs_imm1          $A156 {native}, $0E
  $80E4  A2 FD FF                   BYTE_STORE_far         $FFFD
  $80E7  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $80EA  8C FF 00                   LOADR_imm2             $00FF
  $80ED  C1                         CMPNE
  $80EE  D8 33 81                   JUMPF_abs              $8133
  $80F1  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $80F4  55                         LOADR_qimm   ; inline operand = 5
  $80F5  C0                         CMPEQ
  $80F6  D8 25 81                   JUMPF_abs              $8125
  $80F9  A4 8A 91                   LOADL_abs              $918A
  $80FC  DD                         CALLPTR
  $80FD  A2 FD FF                   BYTE_STORE_far         $FFFD
  $8100  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $8103  8C FF 00                   LOADR_imm2             $00FF
  $8106  C1                         CMPNE
  $8107  D8 1E 81                   JUMPF_abs              $811E
  $810A  8A FF 00                   LOADL_imm2             $00FF
  $810D  A9 62 72                   BYTE_STORE_abs         $7262
  $8110  41                         LOADL_qimm   ; inline operand = 1
  $8111  29                         STORE_quick   ; inline operand = 9
  $8112  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $8115  D0                         INC
  $8116  A9 9C 72                   BYTE_STORE_abs         $729C
  $8119  40                         LOADL_qimm   ; inline operand = 0
  $811A  2B                         STORE_quick   ; inline operand = 11
  $811B  D6 3D 81                   JUMP_abs               $813D
 >$811E  40                         LOADL_qimm   ; inline operand = 0
  $811F  A2 FD FF                   BYTE_STORE_far         $FFFD
  $8122  D6 33 81                   JUMP_abs               $8133
 >$8125  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $8128  D2                         LSHIFT1
  $8129  8C 80 91                   LOADR_imm2             $9180
  $812C  BB                         ADD
  $812D  B0                         DEREF
  $812E  DD                         CALLPTR
  $812F  CD                         SWAP
  $8130  09                         LOADL_quick   ; inline operand = 9
  $8131  DB                         OR
  $8132  29                         STORE_quick   ; inline operand = 9
 >$8133  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $8136  8C FF 00                   LOADR_imm2             $00FF
  $8139  C0                         CMPEQ
  $813A  D8 C4 80                   JUMPF_abs              $80C4
 >$813D  09                         LOADL_quick   ; inline operand = 9
  $813E  CF                         RETURN

; ============================================================
; sub $813F   (frame_off=-14, body @ $8144)   [PRG $2E13F]
; ============================================================
  $8144  40                         LOADL_qimm   ; inline operand = 0
  $8145  25                         STORE_quick   ; inline operand = 5
  $8146  40                         LOADL_qimm   ; inline operand = 0
  $8147  28                         STORE_quick   ; inline operand = 8
  $8148  29                         STORE_quick   ; inline operand = 9
  $8149  D6 C5 81                   JUMP_abs               $81C5
 >$814C  08                         LOADL_quick   ; inline operand = 8
  $814D  55                         LOADR_qimm   ; inline operand = 5
  $814E  B5                         MULT
  $814F  8C 0A B5                   LOADR_imm2             $B50A
  $8152  BB                         ADD
  $8153  2B                         STORE_quick   ; inline operand = 11
  $8154  08                         LOADL_quick   ; inline operand = 8
  $8155  5E                         LOADR_qimm   ; inline operand = 14
  $8156  B5                         MULT
  $8157  8C B2 67                   LOADR_imm2             $67B2
  $815A  BB                         ADD
  $815B  2A                         STORE_quick   ; inline operand = 10
  $815C  0A                         LOADL_quick   ; inline operand = 10
  $815D  7B                         ADD_qimm   ; inline operand = 11
  $815E  D3                         BYTE_DEREF
  $815F  8F 32                      BYTE_ADD_imm1          +50
  $8161  27                         STORE_quick   ; inline operand = 7
  $8162  0C                         LOADL_quick   ; inline operand = 12
  $8163  D2                         LSHIFT1
  $8164  B3                         PUSHL
  $8165  3B                         PUSH_quick   ; inline operand = 11
  $8166  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $816A  8B 58                      BYTE_LOADR_imm1        +88
  $816C  B5                         MULT
  $816D  B4                         POPR
  $816E  BB                         ADD
  $816F  8C 88 B8                   LOADR_imm2             $B888
  $8172  BB                         ADD
  $8173  B3                         PUSHL
  $8174  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8178  26                         STORE_quick   ; inline operand = 6
  $8179  07                         LOADL_quick   ; inline operand = 7
  $817A  B7 25                      LONG                   $25
  $817C  B7 14                      LONG                   $14
  $817E  06                         LOADL_quick   ; inline operand = 6
  $817F  B7 25                      LONG                   $25
  $8181  B7 15                      LONG                   $15
  $8183  B7 01                      LONG                   $01
  $8185  B7 19 64 00 00 00          LONG                   $19 $64 $00 $00 $00
  $818B  B7 02                      LONG                   $02
  $818D  B7 27                      LONG                   $27
  $818F  26                         STORE_quick   ; inline operand = 6
  $8190  0B                         LOADL_quick   ; inline operand = 11
  $8191  D0                         INC
  $8192  B3                         PUSHL
  $8193  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8197  1C                         LOADR_quick   ; inline operand = 12
  $8198  C0                         CMPEQ
  $8199  D8 B8 81                   JUMPF_abs              $81B8
  $819C  07                         LOADL_quick   ; inline operand = 7
  $819D  B7 25                      LONG                   $25
  $819F  B7 14                      LONG                   $14
  $81A1  0A                         LOADL_quick   ; inline operand = 10
  $81A2  7C                         ADD_qimm   ; inline operand = 12
  $81A3  B0                         DEREF
  $81A4  B7 25                      LONG                   $25
  $81A6  B7 15                      LONG                   $15
  $81A8  B7 01                      LONG                   $01
  $81AA  B7 19 64 00 00 00          LONG                   $19 $64 $00 $00 $00
  $81B0  B7 02                      LONG                   $02
  $81B2  B7 27                      LONG                   $27
  $81B4  52                         LOADR_qimm   ; inline operand = 2
  $81B5  B6                         SDIV
  $81B6  D0                         INC
  $81B7  26                         STORE_quick   ; inline operand = 6
 >$81B8  06                         LOADL_quick   ; inline operand = 6
  $81B9  15                         LOADR_quick   ; inline operand = 5
  $81BA  C4                         SCMPGT
  $81BB  D8 C2 81                   JUMPF_abs              $81C2
  $81BE  06                         LOADL_quick   ; inline operand = 6
  $81BF  25                         STORE_quick   ; inline operand = 5
  $81C0  08                         LOADL_quick   ; inline operand = 8
  $81C1  29                         STORE_quick   ; inline operand = 9
 >$81C2  08                         LOADL_quick   ; inline operand = 8
  $81C3  D0                         INC
  $81C4  28                         STORE_quick   ; inline operand = 8
 >$81C5  08                         LOADL_quick   ; inline operand = 8
  $81C6  8B 1B                      BYTE_LOADR_imm1        +27
  $81C8  C6                         UCMPLT
  $81C9  D7 4C 81                   JUMPT_abs              $814C
  $81CC  09                         LOADL_quick   ; inline operand = 9
  $81CD  CF                         RETURN

; ============================================================
; sub $81CE   (frame_off=-19, body @ $81D3)   [PRG $2E1CE]
; ============================================================
  $81D3  DE F7 FF                   LEAL_far               $FFF7
  $81D6  B3                         PUSHL
  $81D7  60                         PUSH_qimm   ; inline operand = 0
  $81D8  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $81DC  85 EF                      STORE_near             $EF
  $81DE  40                         LOADL_qimm   ; inline operand = 0
  $81DF  85 F5                      STORE_near             $F5
  $81E1  40                         LOADL_qimm   ; inline operand = 0
  $81E2  D6 29 82                   JUMP_abs               $8229
 >$81E5  DE F7 FF                   LEAL_far               $FFF7
  $81E8  B3                         PUSHL
  $81E9  81 F3                      LOADL_near             $F3
  $81EB  B4                         POPR
  $81EC  BB                         ADD
  $81ED  D3                         BYTE_DEREF
  $81EE  8B 18                      BYTE_LOADR_imm1        +24
  $81F0  B5                         MULT
  $81F1  8C A4 6A                   LOADR_imm2             $6AA4
  $81F4  BB                         ADD
  $81F5  2B                         STORE_quick   ; inline operand = 11
  $81F6  0B                         LOADL_quick   ; inline operand = 11
  $81F7  D0                         INC
  $81F8  2A                         STORE_quick   ; inline operand = 10
  $81F9  0B                         LOADL_quick   ; inline operand = 11
  $81FA  76                         ADD_qimm   ; inline operand = 6
  $81FB  85 ED                      STORE_near             $ED
  $81FD  40                         LOADL_qimm   ; inline operand = 0
  $81FE  85 F1                      STORE_near             $F1
 >$8200  81 F1                      LOADL_near             $F1
  $8202  D2                         LSHIFT1
  $8203  83 ED                      LOADR_near             $ED
  $8205  BB                         ADD
  $8206  B0                         DEREF
  $8207  D8 1A 82                   JUMPF_abs              $821A
  $820A  0C                         LOADL_quick   ; inline operand = 12
  $820B  83 F5                      LOADR_near             $F5
  $820D  BB                         ADD
  $820E  B3                         PUSHL
  $820F  0A                         LOADL_quick   ; inline operand = 10
  $8210  83 F1                      LOADR_near             $F1
  $8212  BB                         ADD
  $8213  D3                         BYTE_DEREF
  $8214  D4                         BYTE_POPSTORE
  $8215  81 F5                      LOADL_near             $F5
  $8217  D0                         INC
  $8218  85 F5                      STORE_near             $F5
 >$821A  81 F1                      LOADL_near             $F1
  $821C  D0                         INC
  $821D  85 F1                      STORE_near             $F1
  $821F  81 F1                      LOADL_near             $F1
  $8221  55                         LOADR_qimm   ; inline operand = 5
  $8222  C6                         UCMPLT
  $8223  D7 00 82                   JUMPT_abs              $8200
  $8226  81 F3                      LOADL_near             $F3
  $8228  D0                         INC
 >$8229  85 F3                      STORE_near             $F3
  $822B  81 F3                      LOADL_near             $F3
  $822D  83 EF                      LOADR_near             $EF
  $822F  C6                         UCMPLT
  $8230  D7 E5 81                   JUMPT_abs              $81E5
  $8233  81 F5                      LOADL_near             $F5
  $8235  CF                         RETURN

; ============================================================
; sub $8236   (frame_off=-2, body @ $823B)   [PRG $2E236]
; ============================================================
  $823B  3C                         PUSH_quick   ; inline operand = 12
  $823C  E9 D1 DA 02                CALL_abs_imm1          $DAD1 {native}, $02
  $8240  2B                         STORE_quick   ; inline operand = 11
  $8241  61                         PUSH_qimm   ; inline operand = 1
  $8242  3B                         PUSH_quick   ; inline operand = 11
  $8243  8D 15                      BYTE_PUSH_imm1         +21
  $8245  62                         PUSH_qimm   ; inline operand = 2
  $8246  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $824A  CF                         RETURN

; ============================================================
; sub $824B   (frame_off=-6, body @ $8250)   [PRG $2E24B]
; ============================================================
  $8250  8A 0A B5                   LOADL_imm2             $B50A
  $8253  2B                         STORE_quick   ; inline operand = 11
  $8254  40                         LOADL_qimm   ; inline operand = 0
  $8255  2A                         STORE_quick   ; inline operand = 10
 >$8256  0B                         LOADL_quick   ; inline operand = 11
  $8257  73                         ADD_qimm   ; inline operand = 3
  $8258  B3                         PUSHL
  $8259  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $825D  29                         STORE_quick   ; inline operand = 9
  $825E  09                         LOADL_quick   ; inline operand = 9
  $825F  1C                         LOADR_quick   ; inline operand = 12
  $8260  C0                         CMPEQ
  $8261  D8 66 82                   JUMPF_abs              $8266
  $8264  0A                         LOADL_quick   ; inline operand = 10
  $8265  CF                         RETURN
 >$8266  0B                         LOADL_quick   ; inline operand = 11
  $8267  75                         ADD_qimm   ; inline operand = 5
  $8268  2B                         STORE_quick   ; inline operand = 11
  $8269  0A                         LOADL_quick   ; inline operand = 10
  $826A  D0                         INC
  $826B  2A                         STORE_quick   ; inline operand = 10
  $826C  0A                         LOADL_quick   ; inline operand = 10
  $826D  8B 32                      BYTE_LOADR_imm1        +50
  $826F  C6                         UCMPLT
  $8270  D7 56 82                   JUMPT_abs              $8256
  $8273  40                         LOADL_qimm   ; inline operand = 0
  $8274  CF                         RETURN

; ============================================================
; sub $8275   (frame_off=+0, body @ $827A)   [PRG $2E275]
; ============================================================
  $827A  A5 5F 70                   BYTE_LOADL_abs         $705F
  $827D  58                         LOADR_qimm   ; inline operand = 8
  $827E  DA                         AND
  $827F  CF                         RETURN

; ============================================================
; sub $8280   (frame_off=+0, body @ $8285)   [PRG $2E280]
; ============================================================
  $8285  A5 5F 70                   BYTE_LOADL_abs         $705F
  $8288  52                         LOADR_qimm   ; inline operand = 2
  $8289  DA                         AND
  $828A  CF                         RETURN

; ============================================================
; sub $828B   (frame_off=+0, body @ $8290)   [PRG $2E28B]
; ============================================================
  $8290  A5 5F 70                   BYTE_LOADL_abs         $705F
  $8293  51                         LOADR_qimm   ; inline operand = 1
  $8294  DA                         AND
  $8295  CF                         RETURN

; ============================================================
; sub $8296   (frame_off=+0, body @ $829B)   [PRG $2E296]
; ============================================================
  $829B  A5 67 70                   BYTE_LOADL_abs         $7067
  $829E  B3                         PUSHL
  $829F  A5 52 70                   BYTE_LOADL_abs         $7052
  $82A2  B4                         POPR
  $82A3  C0                         CMPEQ
  $82A4  CF                         RETURN

; ============================================================
; sub $82A5   (frame_off=-18, body @ $82AA)   [PRG $2E2A5]
; ============================================================
  $82AA  0C                         LOADL_quick   ; inline operand = 12
  $82AB  55                         LOADR_qimm   ; inline operand = 5
  $82AC  B5                         MULT
  $82AD  8C 0A B5                   LOADR_imm2             $B50A
  $82B0  BB                         ADD
  $82B1  23                         STORE_quick   ; inline operand = 3
  $82B2  03                         LOADL_quick   ; inline operand = 3
  $82B3  72                         ADD_qimm   ; inline operand = 2
  $82B4  B3                         PUSHL
  $82B5  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $82B9  8B 32                      BYTE_LOADR_imm1        +50
  $82BB  B5                         MULT
  $82BC  25                         STORE_quick   ; inline operand = 5
  $82BD  03                         LOADL_quick   ; inline operand = 3
  $82BE  D0                         INC
  $82BF  B3                         PUSHL
  $82C0  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $82C4  28                         STORE_quick   ; inline operand = 8
  $82C5  0C                         LOADL_quick   ; inline operand = 12
  $82C6  5E                         LOADR_qimm   ; inline operand = 14
  $82C7  B5                         MULT
  $82C8  8C B2 67                   LOADR_imm2             $67B2
  $82CB  BB                         ADD
  $82CC  B0                         DEREF
  $82CD  26                         STORE_quick   ; inline operand = 6
  $82CE  08                         LOADL_quick   ; inline operand = 8
  $82CF  8C FF 00                   LOADR_imm2             $00FF
  $82D2  C1                         CMPNE
  $82D3  D8 F0 82                   JUMPF_abs              $82F0
  $82D6  08                         LOADL_quick   ; inline operand = 8
  $82D7  1D                         LOADR_quick   ; inline operand = 13
  $82D8  C0                         CMPEQ
  $82D9  D8 F0 82                   JUMPF_abs              $82F0
  $82DC  05                         LOADL_quick   ; inline operand = 5
  $82DD  16                         LOADR_quick   ; inline operand = 6
  $82DE  C3                         SCMPLE
  $82DF  D8 F0 82                   JUMPF_abs              $82F0
  $82E2  A5 67 70                   BYTE_LOADL_abs         $7067
  $82E5  B3                         PUSHL
  $82E6  A5 52 70                   BYTE_LOADL_abs         $7052
  $82E9  B4                         POPR
  $82EA  C1                         CMPNE
  $82EB  D8 F0 82                   JUMPF_abs              $82F0
  $82EE  41                         LOADL_qimm   ; inline operand = 1
  $82EF  CF                         RETURN
 >$82F0  33                         PUSH_quick   ; inline operand = 3
  $82F1  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $82F5  8B 58                      BYTE_LOADR_imm1        +88
  $82F7  B5                         MULT
  $82F8  8C 64 B8                   LOADR_imm2             $B864
  $82FB  BB                         ADD
  $82FC  24                         STORE_quick   ; inline operand = 4
  $82FD  04                         LOADL_quick   ; inline operand = 4
  $82FE  2B                         STORE_quick   ; inline operand = 11
  $82FF  04                         LOADL_quick   ; inline operand = 4
  $8300  79                         ADD_qimm   ; inline operand = 9
  $8301  2A                         STORE_quick   ; inline operand = 10
  $8302  40                         LOADL_qimm   ; inline operand = 0
  $8303  29                         STORE_quick   ; inline operand = 9
 >$8304  3B                         PUSH_quick   ; inline operand = 11
  $8305  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8309  8B 32                      BYTE_LOADR_imm1        +50
  $830B  B5                         MULT
  $830C  25                         STORE_quick   ; inline operand = 5
  $830D  05                         LOADL_quick   ; inline operand = 5
  $830E  8C FF 00                   LOADR_imm2             $00FF
  $8311  C0                         CMPEQ
  $8312  D7 38 83                   JUMPT_abs              $8338
  $8315  3A                         PUSH_quick   ; inline operand = 10
  $8316  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $831A  27                         STORE_quick   ; inline operand = 7
  $831B  07                         LOADL_quick   ; inline operand = 7
  $831C  1D                         LOADR_quick   ; inline operand = 13
  $831D  C0                         CMPEQ
  $831E  D8 29 83                   JUMPF_abs              $8329
  $8321  05                         LOADL_quick   ; inline operand = 5
  $8322  16                         LOADR_quick   ; inline operand = 6
  $8323  C3                         SCMPLE
  $8324  D8 29 83                   JUMPF_abs              $8329
  $8327  41                         LOADL_qimm   ; inline operand = 1
  $8328  CF                         RETURN
 >$8329  0A                         LOADL_quick   ; inline operand = 10
  $832A  D0                         INC
  $832B  2A                         STORE_quick   ; inline operand = 10
  $832C  0B                         LOADL_quick   ; inline operand = 11
  $832D  D0                         INC
  $832E  2B                         STORE_quick   ; inline operand = 11
  $832F  09                         LOADL_quick   ; inline operand = 9
  $8330  D0                         INC
  $8331  29                         STORE_quick   ; inline operand = 9
  $8332  09                         LOADL_quick   ; inline operand = 9
  $8333  59                         LOADR_qimm   ; inline operand = 9
  $8334  C6                         UCMPLT
  $8335  D7 04 83                   JUMPT_abs              $8304
 >$8338  40                         LOADL_qimm   ; inline operand = 0
  $8339  CF                         RETURN

; ============================================================
; sub $833A   (frame_off=+0, body @ $833F)   [PRG $2E33A]
; ============================================================
  $833F  62                         PUSH_qimm   ; inline operand = 2
  $8340  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8344  D8 5D 83                   JUMPF_abs              $835D
  $8347  60                         PUSH_qimm   ; inline operand = 0
  $8348  8E 68 92                   PUSH_imm2              $9268
  $834B  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $834F  AA 42 65                   PUSH_abs               $6542
  $8352  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8356  60                         PUSH_qimm   ; inline operand = 0
  $8357  8E 71 92                   PUSH_imm2              $9271
  $835A  D6 70 83                   JUMP_abs               $8370
 >$835D  60                         PUSH_qimm   ; inline operand = 0
  $835E  8E 80 92                   PUSH_imm2              $9280
  $8361  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8365  AA 42 65                   PUSH_abs               $6542
  $8368  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $836C  60                         PUSH_qimm   ; inline operand = 0
  $836D  8E 9C 92                   PUSH_imm2              $929C
 >$8370  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8374  CF                         RETURN

; ============================================================
; sub $8375   (frame_off=-10, body @ $837A)   [PRG $2E375]
; ============================================================
  $837A  0D                         LOADL_quick   ; inline operand = 13
  $837B  8B 12                      BYTE_LOADR_imm1        +18
  $837D  B8                         UDIV
  $837E  2B                         STORE_quick   ; inline operand = 11
  $837F  0B                         LOADL_quick   ; inline operand = 11
  $8380  D8 8B 83                   JUMPF_abs              $838B
  $8383  0D                         LOADL_quick   ; inline operand = 13
  $8384  55                         LOADR_qimm   ; inline operand = 5
  $8385  B5                         MULT
  $8386  8F A6                      BYTE_ADD_imm1          -90
  $8388  D6 93 83                   JUMP_abs               $8393
 >$838B  0D                         LOADL_quick   ; inline operand = 13
  $838C  55                         LOADR_qimm   ; inline operand = 5
  $838D  B5                         MULT
  $838E  B3                         PUSHL
  $838F  89 5A                      BYTE_LOADL_imm1        +90
  $8391  B4                         POPR
  $8392  BC                         SUB
 >$8393  29                         STORE_quick   ; inline operand = 9
  $8394  0C                         LOADL_quick   ; inline operand = 12
  $8395  8F 26                      BYTE_ADD_imm1          +38
  $8397  8B 48                      BYTE_LOADR_imm1        +72
  $8399  BA                         UMOD
  $839A  27                         STORE_quick   ; inline operand = 7
  $839B  07                         LOADL_quick   ; inline operand = 7
  $839C  8B 24                      BYTE_LOADR_imm1        +36
  $839E  B8                         UDIV
  $839F  2A                         STORE_quick   ; inline operand = 10
  $83A0  0A                         LOADL_quick   ; inline operand = 10
  $83A1  D8 AB 83                   JUMPF_abs              $83AB
  $83A4  89 48                      BYTE_LOADL_imm1        +72
  $83A6  17                         LOADR_quick   ; inline operand = 7
  $83A7  BC                         SUB
  $83A8  D6 AC 83                   JUMP_abs               $83AC
 >$83AB  07                         LOADL_quick   ; inline operand = 7
 >$83AC  55                         LOADR_qimm   ; inline operand = 5
  $83AD  B5                         MULT
  $83AE  28                         STORE_quick   ; inline operand = 8
  $83AF  38                         PUSH_quick   ; inline operand = 8
  $83B0  0A                         LOADL_quick   ; inline operand = 10
  $83B1  D2                         LSHIFT1
  $83B2  8C A3 92                   LOADR_imm2             $92A3
  $83B5  BB                         ADD
  $83B6  B0                         DEREF
  $83B7  B3                         PUSHL
  $83B8  39                         PUSH_quick   ; inline operand = 9
  $83B9  0B                         LOADL_quick   ; inline operand = 11
  $83BA  D2                         LSHIFT1
  $83BB  8C 9F 92                   LOADR_imm2             $929F
  $83BE  BB                         ADD
  $83BF  B0                         DEREF
  $83C0  B3                         PUSHL
  $83C1  8E AF 92                   PUSH_imm2              $92AF
  $83C4  E9 19 C7 0A                CALL_abs_imm1          $C719 {native}, $0A
  $83C8  CF                         RETURN

; ============================================================
; sub $83C9   (frame_off=-2, body @ $83CE)   [PRG $2E3C9]
; ============================================================
  $83CE  0C                         LOADL_quick   ; inline operand = 12
  $83CF  8B 13                      BYTE_LOADR_imm1        +19
  $83D1  B5                         MULT
  $83D2  8C D8 AF                   LOADR_imm2             $AFD8
  $83D5  BB                         ADD
  $83D6  2B                         STORE_quick   ; inline operand = 11
  $83D7  3B                         PUSH_quick   ; inline operand = 11
  $83D8  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $83DC  60                         PUSH_qimm   ; inline operand = 0
  $83DD  8E BD 92                   PUSH_imm2              $92BD
  $83E0  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $83E4  0B                         LOADL_quick   ; inline operand = 11
  $83E5  8F 10                      BYTE_ADD_imm1          +16
  $83E7  B3                         PUSHL
  $83E8  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $83EC  B3                         PUSHL
  $83ED  0B                         LOADL_quick   ; inline operand = 11
  $83EE  7F                         ADD_qimm   ; inline operand = 15
  $83EF  B3                         PUSHL
  $83F0  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $83F4  B3                         PUSHL
  $83F5  E9 75 83 04                CALL_abs_imm1          $8375 (tavern_recruit_stats) {bytecode}, $04
  $83F9  CF                         RETURN

; ============================================================
; sub $83FA   (frame_off=-2, body @ $83FF)   [PRG $2E3FA]
; ============================================================
  $83FF  0C                         LOADL_quick   ; inline operand = 12
  $8400  D1                         DEC
  $8401  55                         LOADR_qimm   ; inline operand = 5
  $8402  B8                         UDIV
  $8403  2B                         STORE_quick   ; inline operand = 11
  $8404  0C                         LOADL_quick   ; inline operand = 12
  $8405  8F 14                      BYTE_ADD_imm1          +20
  $8407  57                         LOADR_qimm   ; inline operand = 7
  $8408  B5                         MULT
  $8409  8C 42 65                   LOADR_imm2             $6542
  $840C  BB                         ADD
  $840D  B0                         DEREF
  $840E  B3                         PUSHL
  $840F  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8413  0B                         LOADL_quick   ; inline operand = 11
  $8414  53                         LOADR_qimm   ; inline operand = 3
  $8415  C0                         CMPEQ
  $8416  D8 20 84                   JUMPF_abs              $8420
  $8419  60                         PUSH_qimm   ; inline operand = 0
  $841A  8E C2 92                   PUSH_imm2              $92C2
  $841D  D6 24 84                   JUMP_abs               $8424
 >$8420  60                         PUSH_qimm   ; inline operand = 0
  $8421  8E C8 92                   PUSH_imm2              $92C8
 >$8424  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8428  0B                         LOADL_quick   ; inline operand = 11
  $8429  D2                         LSHIFT1
  $842A  8C 24 BB                   LOADR_imm2             $BB24
  $842D  BB                         ADD
  $842E  B3                         PUSHL
  $842F  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8433  B3                         PUSHL
  $8434  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8438  CF                         RETURN

; ============================================================
; sub $8439   (frame_off=-8, body @ $843E)   [PRG $2E439]
; ============================================================
  $843E  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8441  60                         PUSH_qimm   ; inline operand = 0
  $8442  8E CF 92                   PUSH_imm2              $92CF
  $8445  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8449  0C                         LOADL_quick   ; inline operand = 12
  $844A  8F 14                      BYTE_ADD_imm1          +20
  $844C  57                         LOADR_qimm   ; inline operand = 7
  $844D  B5                         MULT
  $844E  8C 42 65                   LOADR_imm2             $6542
  $8451  BB                         ADD
  $8452  B0                         DEREF
  $8453  B3                         PUSHL
  $8454  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8458  60                         PUSH_qimm   ; inline operand = 0
  $8459  8E D1 92                   PUSH_imm2              $92D1
  $845C  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8460  0C                         LOADL_quick   ; inline operand = 12
  $8461  D1                         DEC
  $8462  8B 33                      BYTE_LOADR_imm1        +51
  $8464  B5                         MULT
  $8465  8C 04 60                   LOADR_imm2             $6004
  $8468  BB                         ADD
  $8469  2A                         STORE_quick   ; inline operand = 10
  $846A  64                         PUSH_qimm   ; inline operand = 4
  $846B  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $846F  D8 DB 84                   JUMPF_abs              $84DB
  $8472  0A                         LOADL_quick   ; inline operand = 10
  $8473  75                         ADD_qimm   ; inline operand = 5
  $8474  D3                         BYTE_DEREF
  $8475  2B                         STORE_quick   ; inline operand = 11
  $8476  0A                         LOADL_quick   ; inline operand = 10
  $8477  74                         ADD_qimm   ; inline operand = 4
  $8478  D3                         BYTE_DEREF
  $8479  D8 C0 84                   JUMPF_abs              $84C0
  $847C  A5 67 70                   BYTE_LOADL_abs         $7067
  $847F  1B                         LOADR_quick   ; inline operand = 11
  $8480  C0                         CMPEQ
  $8481  D8 8F 84                   JUMPF_abs              $848F
  $8484  60                         PUSH_qimm   ; inline operand = 0
  $8485  8E DA 92                   PUSH_imm2              $92DA
 >$8488  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $848C  D6 F6 84                   JUMP_abs               $84F6
 >$848F  0B                         LOADL_quick   ; inline operand = 11
  $8490  8B 13                      BYTE_LOADR_imm1        +19
  $8492  B5                         MULT
  $8493  8C D8 AF                   LOADR_imm2             $AFD8
  $8496  BB                         ADD
  $8497  29                         STORE_quick   ; inline operand = 9
  $8498  60                         PUSH_qimm   ; inline operand = 0
  $8499  8E F6 92                   PUSH_imm2              $92F6
  $849C  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $84A0  39                         PUSH_quick   ; inline operand = 9
  $84A1  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $84A5  60                         PUSH_qimm   ; inline operand = 0
  $84A6  8E 0C 93                   PUSH_imm2              $930C
  $84A9  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $84AD  09                         LOADL_quick   ; inline operand = 9
  $84AE  8F 10                      BYTE_ADD_imm1          +16
  $84B0  B3                         PUSHL
  $84B1  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $84B5  B3                         PUSHL
  $84B6  09                         LOADL_quick   ; inline operand = 9
  $84B7  7F                         ADD_qimm   ; inline operand = 15
  $84B8  B3                         PUSHL
  $84B9  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $84BD  D6 F1 84                   JUMP_abs               $84F1
 >$84C0  0B                         LOADL_quick   ; inline operand = 11
  $84C1  D7 CB 84                   JUMPT_abs              $84CB
  $84C4  60                         PUSH_qimm   ; inline operand = 0
  $84C5  8E 11 93                   PUSH_imm2              $9311
  $84C8  D6 88 84                   JUMP_abs               $8488
 >$84CB  60                         PUSH_qimm   ; inline operand = 0
  $84CC  8E 2A 93                   PUSH_imm2              $932A
  $84CF  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $84D3  3B                         PUSH_quick   ; inline operand = 11
  $84D4  E9 FA 83 02                CALL_abs_imm1          $83FA {bytecode}, $02
  $84D8  D6 F6 84                   JUMP_abs               $84F6
 >$84DB  0C                         LOADL_quick   ; inline operand = 12
  $84DC  54                         LOADR_qimm   ; inline operand = 4
  $84DD  BD                         LSHIFT
  $84DE  8C 62 66                   LOADR_imm2             $6662
  $84E1  BB                         ADD
  $84E2  28                         STORE_quick   ; inline operand = 8
  $84E3  60                         PUSH_qimm   ; inline operand = 0
  $84E4  8E 36 93                   PUSH_imm2              $9336
  $84E7  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $84EB  08                         LOADL_quick   ; inline operand = 8
  $84EC  D0                         INC
  $84ED  D3                         BYTE_DEREF
  $84EE  B3                         PUSHL
  $84EF  08                         LOADL_quick   ; inline operand = 8
  $84F0  D3                         BYTE_DEREF
 >$84F1  B3                         PUSHL
  $84F2  E9 75 83 04                CALL_abs_imm1          $8375 (tavern_recruit_stats) {bytecode}, $04
 >$84F6  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $84F9  CF                         RETURN

; ============================================================
; sub $84FA   (frame_off=-6, body @ $84FF)   [PRG $2E4FA]
; ============================================================
  $84FF  3C                         PUSH_quick   ; inline operand = 12
  $8500  A5 67 70                   BYTE_LOADL_abs         $7067
  $8503  B3                         PUSHL
  $8504  E9 A5 82 04                CALL_abs_imm1          $82A5 {bytecode}, $04
  $8508  D8 26 85                   JUMPF_abs              $8526
  $850B  A5 52 70                   BYTE_LOADL_abs         $7052
  $850E  B3                         PUSHL
  $850F  A5 67 70                   BYTE_LOADL_abs         $7067
  $8512  B4                         POPR
  $8513  C1                         CMPNE
  $8514  D8 26 85                   JUMPF_abs              $8526
  $8517  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $851A  61                         PUSH_qimm   ; inline operand = 1
  $851B  8E 53 93                   PUSH_imm2              $9353
  $851E  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8522  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8525  CF                         RETURN
 >$8526  40                         LOADL_qimm   ; inline operand = 0
  $8527  2B                         STORE_quick   ; inline operand = 11
 >$8528  A5 67 70                   BYTE_LOADL_abs         $7067
  $852B  B3                         PUSHL
  $852C  8D 13                      BYTE_PUSH_imm1         +19
  $852E  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8532  B4                         POPR
  $8533  BB                         ADD
  $8534  2A                         STORE_quick   ; inline operand = 10
  $8535  69                         PUSH_qimm   ; inline operand = 9
  $8536  3A                         PUSH_quick   ; inline operand = 10
  $8537  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $853B  CD                         SWAP
  $853C  0A                         LOADL_quick   ; inline operand = 10
  $853D  BC                         SUB
  $853E  2A                         STORE_quick   ; inline operand = 10
  $853F  0A                         LOADL_quick   ; inline operand = 10
  $8540  8B 32                      BYTE_LOADR_imm1        +50
  $8542  C8                         UCMPGT
  $8543  D8 49 85                   JUMPF_abs              $8549
  $8546  89 32                      BYTE_LOADL_imm1        +50
  $8548  2A                         STORE_quick   ; inline operand = 10
 >$8549  A5 67 70                   BYTE_LOADL_abs         $7067
  $854C  1A                         LOADR_quick   ; inline operand = 10
  $854D  C0                         CMPEQ
  $854E  D7 28 85                   JUMPT_abs              $8528
  $8551  3C                         PUSH_quick   ; inline operand = 12
  $8552  3A                         PUSH_quick   ; inline operand = 10
  $8553  E9 A5 82 04                CALL_abs_imm1          $82A5 {bytecode}, $04
  $8557  D8 76 85                   JUMPF_abs              $8576
  $855A  A5 52 70                   BYTE_LOADL_abs         $7052
  $855D  1A                         LOADR_quick   ; inline operand = 10
  $855E  C1                         CMPNE
  $855F  D8 76 85                   JUMPF_abs              $8576
  $8562  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8565  60                         PUSH_qimm   ; inline operand = 0
  $8566  8E 7A 93                   PUSH_imm2              $937A
  $8569  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $856D  3A                         PUSH_quick   ; inline operand = 10
  $856E  E9 C9 83 02                CALL_abs_imm1          $83C9 {bytecode}, $02
  $8572  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $8575  CF                         RETURN
 >$8576  0B                         LOADL_quick   ; inline operand = 11
  $8577  D0                         INC
  $8578  2B                         STORE_quick   ; inline operand = 11
  $8579  0B                         LOADL_quick   ; inline operand = 11
  $857A  8B 14                      BYTE_LOADR_imm1        +20
  $857C  C6                         UCMPLT
  $857D  D7 28 85                   JUMPT_abs              $8528
  $8580  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8583  61                         PUSH_qimm   ; inline operand = 1
  $8584  8E A4 93                   PUSH_imm2              $93A4
  $8587  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $858B  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $858E  CF                         RETURN

; ============================================================
; sub $858F   (frame_off=-2, body @ $8594)   [PRG $2E58F]
; ============================================================
  $8594  AC 8B 82                   CALL_abs               $828B {bytecode}
  $8597  D8 D7 85                   JUMPF_abs              $85D7
  $859A  AC 75 82                   CALL_abs               $8275 {bytecode}
  $859D  D7 D7 85                   JUMPT_abs              $85D7
  $85A0  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $85A3  AC 3A 83                   CALL_abs               $833A (tavern_recruit_greet) {bytecode}
  $85A6  A5 53 70                   BYTE_LOADL_abs         $7053
  $85A9  D7 BE 85                   JUMPT_abs              $85BE
  $85AC  60                         PUSH_qimm   ; inline operand = 0
  $85AD  8E C4 93                   PUSH_imm2              $93C4
  $85B0  D6 B7 85                   JUMP_abs               $85B7
 >$85B3  60                         PUSH_qimm   ; inline operand = 0
  $85B4  8E EB 93                   PUSH_imm2              $93EB
 >$85B7  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $85BB  D6 D4 85                   JUMP_abs               $85D4
 >$85BE  AC 96 82                   CALL_abs               $8296 {bytecode}
  $85C1  D7 B3 85                   JUMPT_abs              $85B3
  $85C4  60                         PUSH_qimm   ; inline operand = 0
  $85C5  8E 12 94                   PUSH_imm2              $9412
  $85C8  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $85CC  A5 52 70                   BYTE_LOADL_abs         $7052
  $85CF  B3                         PUSHL
  $85D0  E9 C9 83 02                CALL_abs_imm1          $83C9 {bytecode}, $02
 >$85D4  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
 >$85D7  AC 8B 82                   CALL_abs               $828B {bytecode}
  $85DA  D8 1E 86                   JUMPF_abs              $861E
  $85DD  AC 75 82                   CALL_abs               $8275 {bytecode}
  $85E0  D8 1E 86                   JUMPF_abs              $861E
  $85E3  A5 55 70                   BYTE_LOADL_abs         $7055
  $85E6  B3                         PUSHL
  $85E7  E9 A0 B9 02                CALL_abs_imm1          $B9A0 {native}, $02
  $85EB  D7 1E 86                   JUMPT_abs              $861E
  $85EE  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $85F1  60                         PUSH_qimm   ; inline operand = 0
  $85F2  8E 2F 94                   PUSH_imm2              $942F
  $85F5  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $85F9  A5 55 70                   BYTE_LOADL_abs         $7055
  $85FC  D2                         LSHIFT1
  $85FD  8C 49 BB                   LOADR_imm2             $BB49
  $8600  BB                         ADD
  $8601  B3                         PUSHL
  $8602  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8606  B3                         PUSHL
  $8607  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $860B  60                         PUSH_qimm   ; inline operand = 0
  $860C  8E 56 94                   PUSH_imm2              $9456
  $860F  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8613  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $8616  A5 55 70                   BYTE_LOADL_abs         $7055
  $8619  B3                         PUSHL
  $861A  E9 FA 84 02                CALL_abs_imm1          $84FA (tavern_rumor_port_specialty) {bytecode}, $02
 >$861E  AC 8B 82                   CALL_abs               $828B {bytecode}
  $8621  D8 73 86                   JUMPF_abs              $8673
  $8624  AC 75 82                   CALL_abs               $8275 {bytecode}
  $8627  D8 73 86                   JUMPF_abs              $8673
  $862A  A5 55 70                   BYTE_LOADL_abs         $7055
  $862D  B3                         PUSHL
  $862E  E9 A0 B9 02                CALL_abs_imm1          $B9A0 {native}, $02
  $8632  D8 73 86                   JUMPF_abs              $8673
  $8635  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8638  AC 3A 83                   CALL_abs               $833A (tavern_recruit_greet) {bytecode}
  $863B  A5 53 70                   BYTE_LOADL_abs         $7053
  $863E  D7 53 86                   JUMPT_abs              $8653
  $8641  60                         PUSH_qimm   ; inline operand = 0
  $8642  8E 62 94                   PUSH_imm2              $9462
  $8645  D6 4C 86                   JUMP_abs               $864C
 >$8648  60                         PUSH_qimm   ; inline operand = 0
  $8649  8E 7E 94                   PUSH_imm2              $947E
 >$864C  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8650  D6 70 86                   JUMP_abs               $8670
 >$8653  AC 96 82                   CALL_abs               $8296 {bytecode}
  $8656  D7 48 86                   JUMPT_abs              $8648
  $8659  60                         PUSH_qimm   ; inline operand = 0
  $865A  8E A6 94                   PUSH_imm2              $94A6
  $865D  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8661  A5 52 70                   BYTE_LOADL_abs         $7052
  $8664  8B 13                      BYTE_LOADR_imm1        +19
  $8666  B5                         MULT
  $8667  8C D8 AF                   LOADR_imm2             $AFD8
  $866A  BB                         ADD
  $866B  B3                         PUSHL
  $866C  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
 >$8670  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
 >$8673  CF                         RETURN

; ============================================================
; sub $8674   (frame_off=+0, body @ $8679)   [PRG $2E674]
; ============================================================
  $8679  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $867C  60                         PUSH_qimm   ; inline operand = 0
  $867D  8E C0 94                   PUSH_imm2              $94C0
  $8680  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8684  8D 1F                      BYTE_PUSH_imm1         +31
  $8686  E9 50 D5 02                CALL_abs_imm1          $D550 {native}, $02
  $868A  B3                         PUSHL
  $868B  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $868F  60                         PUSH_qimm   ; inline operand = 0
  $8690  8E C6 94                   PUSH_imm2              $94C6
  $8693  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8697  A5 5A 70                   BYTE_LOADL_abs         $705A
  $869A  B3                         PUSHL
  $869B  E9 FA 83 02                CALL_abs_imm1          $83FA {bytecode}, $02
  $869F  60                         PUSH_qimm   ; inline operand = 0
  $86A0  8E D2 94                   PUSH_imm2              $94D2
  $86A3  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $86A7  CF                         RETURN

; ============================================================
; sub $86A8   (frame_off=-24, body @ $86AD)   [PRG $2E6A8]
; ============================================================
  $86AD  AC 8B 82                   CALL_abs               $828B {bytecode}
  $86B0  D8 F0 86                   JUMPF_abs              $86F0
  $86B3  AC 75 82                   CALL_abs               $8275 {bytecode}
  $86B6  D7 F0 86                   JUMPT_abs              $86F0
  $86B9  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $86BC  AC 3A 83                   CALL_abs               $833A (tavern_recruit_greet) {bytecode}
  $86BF  A5 53 70                   BYTE_LOADL_abs         $7053
  $86C2  D7 D7 86                   JUMPT_abs              $86D7
  $86C5  60                         PUSH_qimm   ; inline operand = 0
  $86C6  8E 45 95                   PUSH_imm2              $9545
  $86C9  D6 D0 86                   JUMP_abs               $86D0
 >$86CC  60                         PUSH_qimm   ; inline operand = 0
  $86CD  8E 6C 95                   PUSH_imm2              $956C
 >$86D0  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $86D4  D6 ED 86                   JUMP_abs               $86ED
 >$86D7  AC 96 82                   CALL_abs               $8296 {bytecode}
  $86DA  D7 CC 86                   JUMPT_abs              $86CC
  $86DD  60                         PUSH_qimm   ; inline operand = 0
  $86DE  8E 94 95                   PUSH_imm2              $9594
  $86E1  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $86E5  A5 52 70                   BYTE_LOADL_abs         $7052
  $86E8  B3                         PUSHL
  $86E9  E9 C9 83 02                CALL_abs_imm1          $83C9 {bytecode}, $02
 >$86ED  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
 >$86F0  AC 8B 82                   CALL_abs               $828B {bytecode}
  $86F3  D8 0A 8A                   JUMPF_abs              $8A0A
  $86F6  AC 75 82                   CALL_abs               $8275 {bytecode}
  $86F9  D8 0A 8A                   JUMPF_abs              $8A0A
  $86FC  A4 6F 66                   LOADL_abs              $666F
  $86FF  8C 00 80                   LOADR_imm2             $8000
  $8702  DA                         AND
  $8703  D7 0A 8A                   JUMPT_abs              $8A0A
  $8706  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $8709  D3                         BYTE_DEREF
  $870A  59                         LOADR_qimm   ; inline operand = 9
  $870B  C0                         CMPEQ
  $870C  D8 B1 87                   JUMPF_abs              $87B1
  $870F  A5 5A 70                   BYTE_LOADL_abs         $705A
  $8712  D8 20 87                   JUMPF_abs              $8720
  $8715  A5 5A 70                   BYTE_LOADL_abs         $705A
  $8718  B3                         PUSHL
  $8719  E9 39 84 02                CALL_abs_imm1          $8439 (tavern_rumor_rival_loc) {bytecode}, $02
  $871D  D6 0A 8A                   JUMP_abs               $8A0A
 >$8720  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8723  61                         PUSH_qimm   ; inline operand = 1
  $8724  8E B1 95                   PUSH_imm2              $95B1
  $8727  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $872B  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $872E  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8731  8A 62 66                   LOADL_imm2             $6662
  $8734  21                         STORE_quick   ; inline operand = 1
  $8735  01                         LOADL_quick   ; inline operand = 1
  $8736  D3                         BYTE_DEREF
  $8737  B3                         PUSHL
  $8738  A5 5B 70                   BYTE_LOADL_abs         $705B
  $873B  B4                         POPR
  $873C  C0                         CMPEQ
  $873D  D8 5A 87                   JUMPF_abs              $875A
  $8740  01                         LOADL_quick   ; inline operand = 1
  $8741  D0                         INC
  $8742  D3                         BYTE_DEREF
  $8743  B3                         PUSHL
  $8744  A5 5C 70                   BYTE_LOADL_abs         $705C
  $8747  B4                         POPR
  $8748  C0                         CMPEQ
  $8749  D8 5A 87                   JUMPF_abs              $875A
  $874C  61                         PUSH_qimm   ; inline operand = 1
  $874D  8E DA 95                   PUSH_imm2              $95DA
  $8750  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
 >$8754  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8757  D6 0A 8A                   JUMP_abs               $8A0A
 >$875A  01                         LOADL_quick   ; inline operand = 1
  $875B  D3                         BYTE_DEREF
  $875C  26                         STORE_quick   ; inline operand = 6
  $875D  01                         LOADL_quick   ; inline operand = 1
  $875E  D0                         INC
  $875F  D3                         BYTE_DEREF
  $8760  25                         STORE_quick   ; inline operand = 5
  $8761  A5 5B 70                   BYTE_LOADL_abs         $705B
  $8764  28                         STORE_quick   ; inline operand = 8
  $8765  A5 5C 70                   BYTE_LOADL_abs         $705C
  $8768  27                         STORE_quick   ; inline operand = 7
  $8769  89 1F                      BYTE_LOADL_imm1        +31
  $876B  16                         LOADR_quick   ; inline operand = 6
  $876C  BC                         SUB
  $876D  23                         STORE_quick   ; inline operand = 3
  $876E  03                         LOADL_quick   ; inline operand = 3
  $876F  CD                         SWAP
  $8770  06                         LOADL_quick   ; inline operand = 6
  $8771  BB                         ADD
  $8772  26                         STORE_quick   ; inline operand = 6
  $8773  08                         LOADL_quick   ; inline operand = 8
  $8774  13                         LOADR_quick   ; inline operand = 3
  $8775  BB                         ADD
  $8776  24                         STORE_quick   ; inline operand = 4
  $8777  04                         LOADL_quick   ; inline operand = 4
  $8778  50                         LOADR_qimm   ; inline operand = 0
  $8779  C2                         SCMPLT
  $877A  D8 83 87                   JUMPF_abs              $8783
  $877D  08                         LOADL_quick   ; inline operand = 8
  $877E  13                         LOADR_quick   ; inline operand = 3
  $877F  BB                         ADD
  $8780  8F 47                      BYTE_ADD_imm1          +71
  $8782  24                         STORE_quick   ; inline operand = 4
 >$8783  04                         LOADL_quick   ; inline operand = 4
  $8784  28                         STORE_quick   ; inline operand = 8
  $8785  07                         LOADL_quick   ; inline operand = 7
  $8786  15                         LOADR_quick   ; inline operand = 5
  $8787  BC                         SUB
  $8788  B3                         PUSHL
  $8789  E9 56 DC 02                CALL_abs_imm1          $DC56 {native}, $02
  $878D  B3                         PUSHL
  $878E  08                         LOADL_quick   ; inline operand = 8
  $878F  16                         LOADR_quick   ; inline operand = 6
  $8790  BC                         SUB
  $8791  B3                         PUSHL
  $8792  E9 56 DC 02                CALL_abs_imm1          $DC56 {native}, $02
  $8796  D0                         INC
  $8797  53                         LOADR_qimm   ; inline operand = 3
  $8798  B5                         MULT
  $8799  B4                         POPR
  $879A  BB                         ADD
  $879B  8C FF 94                   LOADR_imm2             $94FF
  $879E  BB                         ADD
  $879F  D3                         BYTE_DEREF
  $87A0  D2                         LSHIFT1
  $87A1  8C EE 94                   LOADR_imm2             $94EE
  $87A4  BB                         ADD
  $87A5  B0                         DEREF
  $87A6  B3                         PUSHL
  $87A7  8E FE 95                   PUSH_imm2              $95FE
  $87AA  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $87AE  D6 54 87                   JUMP_abs               $8754
 >$87B1  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $87B4  D3                         BYTE_DEREF
  $87B5  53                         LOADR_qimm   ; inline operand = 3
  $87B6  C0                         CMPEQ
  $87B7  D8 15 88                   JUMPF_abs              $8815
  $87BA  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $87BD  D0                         INC
  $87BE  A8 50 70                   STORE_abs              $7050 (player_char_record)
  $87C1  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $87C4  60                         PUSH_qimm   ; inline operand = 0
  $87C5  8E 1E 96                   PUSH_imm2              $961E
  $87C8  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $87CC  8D 1F                      BYTE_PUSH_imm1         +31
  $87CE  E9 50 D5 02                CALL_abs_imm1          $D550 {native}, $02
  $87D2  B3                         PUSHL
  $87D3  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $87D7  60                         PUSH_qimm   ; inline operand = 0
  $87D8  8E 37 96                   PUSH_imm2              $9637
  $87DB  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $87DF  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $87E2  D3                         BYTE_DEREF
  $87E3  D8 F8 87                   JUMPF_abs              $87F8
  $87E6  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $87E9  D0                         INC
  $87EA  D3                         BYTE_DEREF
  $87EB  D2                         LSHIFT1
  $87EC  8C 0C A0                   LOADR_imm2             $A00C
  $87EF  BB                         ADD
  $87F0  B3                         PUSHL
  $87F1  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $87F5  D6 04 88                   JUMP_abs               $8804
 >$87F8  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $87FB  D0                         INC
  $87FC  D3                         BYTE_DEREF
  $87FD  57                         LOADR_qimm   ; inline operand = 7
  $87FE  B5                         MULT
  $87FF  8C 42 65                   LOADR_imm2             $6542
  $8802  BB                         ADD
  $8803  B0                         DEREF
 >$8804  2B                         STORE_quick   ; inline operand = 11
  $8805  3B                         PUSH_quick   ; inline operand = 11
  $8806  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $880A  60                         PUSH_qimm   ; inline operand = 0
  $880B  8E 3A 96                   PUSH_imm2              $963A
 >$880E  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8812  D6 07 8A                   JUMP_abs               $8A07
 >$8815  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $8818  D3                         BYTE_DEREF
  $8819  D8 39 88                   JUMPF_abs              $8839
  $881C  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $881F  D0                         INC
  $8820  D3                         BYTE_DEREF
  $8821  B3                         PUSHL
  $8822  E9 4B 82 02                CALL_abs_imm1          $824B {bytecode}, $02
  $8826  29                         STORE_quick   ; inline operand = 9
  $8827  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $882A  D0                         INC
  $882B  D3                         BYTE_DEREF
  $882C  D2                         LSHIFT1
  $882D  8C 0C A0                   LOADR_imm2             $A00C
  $8830  BB                         ADD
  $8831  B3                         PUSHL
  $8832  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8836  D6 52 88                   JUMP_abs               $8852
 >$8839  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $883C  D0                         INC
  $883D  D3                         BYTE_DEREF
  $883E  D1                         DEC
  $883F  D2                         LSHIFT1
  $8840  8C 6F 6A                   LOADR_imm2             $6A6F
  $8843  BB                         ADD
  $8844  D3                         BYTE_DEREF
  $8845  29                         STORE_quick   ; inline operand = 9
  $8846  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $8849  D0                         INC
  $884A  D3                         BYTE_DEREF
  $884B  57                         LOADR_qimm   ; inline operand = 7
  $884C  B5                         MULT
  $884D  8C 42 65                   LOADR_imm2             $6542
  $8850  BB                         ADD
  $8851  B0                         DEREF
 >$8852  2B                         STORE_quick   ; inline operand = 11
  $8853  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8856  60                         PUSH_qimm   ; inline operand = 0
  $8857  8E 59 96                   PUSH_imm2              $9659
  $885A  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $885E  3B                         PUSH_quick   ; inline operand = 11
  $885F  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8863  60                         PUSH_qimm   ; inline operand = 0
  $8864  8E 73 96                   PUSH_imm2              $9673
  $8867  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $886B  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $886E  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8871  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $8874  D3                         BYTE_DEREF
  $8875  D8 8E 88                   JUMPF_abs              $888E
  $8878  A5 67 70                   BYTE_LOADL_abs         $7067
  $887B  19                         LOADR_quick   ; inline operand = 9
  $887C  C0                         CMPEQ
  $887D  D8 87 88                   JUMPF_abs              $8887
  $8880  60                         PUSH_qimm   ; inline operand = 0
  $8881  8E 79 96                   PUSH_imm2              $9679
  $8884  D6 0E 88                   JUMP_abs               $880E
 >$8887  60                         PUSH_qimm   ; inline operand = 0
  $8888  8E BE 96                   PUSH_imm2              $96BE
  $888B  D6 FE 89                   JUMP_abs               $89FE
 >$888E  A5 67 70                   BYTE_LOADL_abs         $7067
  $8891  19                         LOADR_quick   ; inline operand = 9
  $8892  C0                         CMPEQ
  $8893  D8 FA 89                   JUMPF_abs              $89FA
  $8896  8E EA 96                   PUSH_imm2              $96EA
  $8899  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $889D  60                         PUSH_qimm   ; inline operand = 0
  $889E  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $88A1  D0                         INC
  $88A2  D3                         BYTE_DEREF
  $88A3  B3                         PUSHL
  $88A4  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $88A8  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $88AB  D0                         INC
  $88AC  D3                         BYTE_DEREF
  $88AD  D1                         DEC
  $88AE  D2                         LSHIFT1
  $88AF  8C 6E 6A                   LOADR_imm2             $6A6E
  $88B2  BB                         ADD
  $88B3  D3                         BYTE_DEREF
  $88B4  D8 48 89                   JUMPF_abs              $8948
  $88B7  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $88BA  61                         PUSH_qimm   ; inline operand = 1
  $88BB  8E 12 97                   PUSH_imm2              $9712
  $88BE  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $88C2  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $88C5  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $88C8  72                         ADD_qimm   ; inline operand = 2
  $88C9  D3                         BYTE_DEREF
  $88CA  59                         LOADR_qimm   ; inline operand = 9
  $88CB  C0                         CMPEQ
  $88CC  D8 F2 88                   JUMPF_abs              $88F2
  $88CF  A5 5A 70                   BYTE_LOADL_abs         $705A
  $88D2  D8 DB 88                   JUMPF_abs              $88DB
 >$88D5  AC 74 86                   CALL_abs               $8674 {bytecode}
  $88D8  D6 29 89                   JUMP_abs               $8929
 >$88DB  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $88DE  60                         PUSH_qimm   ; inline operand = 0
  $88DF  8E 49 97                   PUSH_imm2              $9749
 >$88E2  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $88E6  44                         LOADL_qimm   ; inline operand = 4
  $88E7  CD                         SWAP
  $88E8  A5 5F 70                   BYTE_LOADL_abs         $705F
  $88EB  DB                         OR
  $88EC  A9 5F 70                   BYTE_STORE_abs         $705F
  $88EF  D6 29 89                   JUMP_abs               $8929
 >$88F2  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $88F5  60                         PUSH_qimm   ; inline operand = 0
  $88F6  8E 93 97                   PUSH_imm2              $9793
  $88F9  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $88FD  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $8900  72                         ADD_qimm   ; inline operand = 2
  $8901  D3                         BYTE_DEREF
  $8902  D8 17 89                   JUMPF_abs              $8917
  $8905  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $8908  73                         ADD_qimm   ; inline operand = 3
  $8909  D3                         BYTE_DEREF
  $890A  D2                         LSHIFT1
  $890B  8C 0C A0                   LOADR_imm2             $A00C
  $890E  BB                         ADD
  $890F  B3                         PUSHL
  $8910  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8914  D6 23 89                   JUMP_abs               $8923
 >$8917  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $891A  73                         ADD_qimm   ; inline operand = 3
  $891B  D3                         BYTE_DEREF
  $891C  57                         LOADR_qimm   ; inline operand = 7
  $891D  B5                         MULT
  $891E  8C 42 65                   LOADR_imm2             $6542
  $8921  BB                         ADD
  $8922  B0                         DEREF
 >$8923  2A                         STORE_quick   ; inline operand = 10
  $8924  3A                         PUSH_quick   ; inline operand = 10
  $8925  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
 >$8929  8E FD 00                   PUSH_imm2              $00FD
  $892C  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $892F  D0                         INC
  $8930  D3                         BYTE_DEREF
  $8931  57                         LOADR_qimm   ; inline operand = 7
  $8932  B5                         MULT
  $8933  8C 48 65                   LOADR_imm2             $6548
  $8936  BB                         ADD
  $8937  B4                         POPR
  $8938  B3                         PUSHL
  $8939  D3                         BYTE_DEREF
  $893A  DA                         AND
  $893B  D4                         BYTE_POPSTORE
  $893C  42                         LOADL_qimm   ; inline operand = 2
  $893D  CD                         SWAP
  $893E  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $8941  BB                         ADD
  $8942  A8 50 70                   STORE_abs              $7050 (player_char_record)
  $8945  D6 07 8A                   JUMP_abs               $8A07
 >$8948  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $894B  61                         PUSH_qimm   ; inline operand = 1
  $894C  8E C4 97                   PUSH_imm2              $97C4
  $894F  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8953  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8956  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $8959  72                         ADD_qimm   ; inline operand = 2
  $895A  D3                         BYTE_DEREF
  $895B  59                         LOADR_qimm   ; inline operand = 9
  $895C  C0                         CMPEQ
  $895D  D8 B8 89                   JUMPF_abs              $89B8
  $8960  A5 5A 70                   BYTE_LOADL_abs         $705A
  $8963  D7 D5 88                   JUMPT_abs              $88D5
  $8966  62                         PUSH_qimm   ; inline operand = 2
  $8967  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $896B  D8 AE 89                   JUMPF_abs              $89AE
  $896E  65                         PUSH_qimm   ; inline operand = 5
  $896F  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8973  D0                         INC
  $8974  8B 64                      BYTE_LOADR_imm1        +100
  $8976  B5                         MULT
  $8977  B3                         PUSHL
  $8978  AA 6B 66                   PUSH_abs               $666B
  $897B  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $897F  22                         STORE_quick   ; inline operand = 2
  $8980  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8983  32                         PUSH_quick   ; inline operand = 2
  $8984  8E F0 97                   PUSH_imm2              $97F0
  $8987  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $898B  AC 9F CD                   CALL_abs               $CD9F {native}
  $898E  D8 A4 89                   JUMPF_abs              $89A4
  $8991  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8994  02                         LOADL_quick   ; inline operand = 2
  $8995  CD                         SWAP
  $8996  A4 6B 66                   LOADL_abs              $666B
  $8999  BC                         SUB
  $899A  A8 6B 66                   STORE_abs              $666B
  $899D  60                         PUSH_qimm   ; inline operand = 0
  $899E  8E 22 98                   PUSH_imm2              $9822
  $89A1  D6 E2 88                   JUMP_abs               $88E2
 >$89A4  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $89A7  60                         PUSH_qimm   ; inline operand = 0
  $89A8  8E 47 98                   PUSH_imm2              $9847
  $89AB  D6 0E 88                   JUMP_abs               $880E
 >$89AE  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $89B1  60                         PUSH_qimm   ; inline operand = 0
  $89B2  8E 5F 98                   PUSH_imm2              $985F
  $89B5  D6 0E 88                   JUMP_abs               $880E
 >$89B8  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $89BB  60                         PUSH_qimm   ; inline operand = 0
  $89BC  8E AA 98                   PUSH_imm2              $98AA
  $89BF  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $89C3  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $89C6  72                         ADD_qimm   ; inline operand = 2
  $89C7  D3                         BYTE_DEREF
  $89C8  D8 DD 89                   JUMPF_abs              $89DD
  $89CB  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $89CE  73                         ADD_qimm   ; inline operand = 3
  $89CF  D3                         BYTE_DEREF
  $89D0  D2                         LSHIFT1
  $89D1  8C 0C A0                   LOADR_imm2             $A00C
  $89D4  BB                         ADD
  $89D5  B3                         PUSHL
  $89D6  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $89DA  D6 E9 89                   JUMP_abs               $89E9
 >$89DD  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $89E0  73                         ADD_qimm   ; inline operand = 3
  $89E1  D3                         BYTE_DEREF
  $89E2  57                         LOADR_qimm   ; inline operand = 7
  $89E3  B5                         MULT
  $89E4  8C 42 65                   LOADR_imm2             $6542
  $89E7  BB                         ADD
  $89E8  B0                         DEREF
 >$89E9  2A                         STORE_quick   ; inline operand = 10
  $89EA  3A                         PUSH_quick   ; inline operand = 10
  $89EB  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $89EF  60                         PUSH_qimm   ; inline operand = 0
  $89F0  8E C7 98                   PUSH_imm2              $98C7
  $89F3  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $89F7  D6 29 89                   JUMP_abs               $8929
 >$89FA  60                         PUSH_qimm   ; inline operand = 0
  $89FB  8E D4 98                   PUSH_imm2              $98D4
 >$89FE  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8A02  39                         PUSH_quick   ; inline operand = 9
  $8A03  E9 C9 83 02                CALL_abs_imm1          $83C9 {bytecode}, $02
 >$8A07  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
 >$8A0A  AC 8B 82                   CALL_abs               $828B {bytecode}
  $8A0D  D8 62 8A                   JUMPF_abs              $8A62
  $8A10  AC 75 82                   CALL_abs               $8275 {bytecode}
  $8A13  D8 62 8A                   JUMPF_abs              $8A62
  $8A16  A4 6F 66                   LOADL_abs              $666F
  $8A19  8C 00 80                   LOADR_imm2             $8000
  $8A1C  DA                         AND
  $8A1D  D8 62 8A                   JUMPF_abs              $8A62
  $8A20  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8A23  AC 3A 83                   CALL_abs               $833A (tavern_recruit_greet) {bytecode}
  $8A26  A5 53 70                   BYTE_LOADL_abs         $7053
  $8A29  D7 33 8A                   JUMPT_abs              $8A33
  $8A2C  60                         PUSH_qimm   ; inline operand = 0
  $8A2D  8E FB 98                   PUSH_imm2              $98FB
  $8A30  D6 5B 8A                   JUMP_abs               $8A5B
 >$8A33  AC 96 82                   CALL_abs               $8296 {bytecode}
  $8A36  D8 40 8A                   JUMPF_abs              $8A40
  $8A39  60                         PUSH_qimm   ; inline operand = 0
  $8A3A  8E 17 99                   PUSH_imm2              $9917
  $8A3D  D6 5B 8A                   JUMP_abs               $8A5B
 >$8A40  60                         PUSH_qimm   ; inline operand = 0
  $8A41  8E 39 99                   PUSH_imm2              $9939
  $8A44  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8A48  A5 52 70                   BYTE_LOADL_abs         $7052
  $8A4B  8B 13                      BYTE_LOADR_imm1        +19
  $8A4D  B5                         MULT
  $8A4E  8C D8 AF                   LOADR_imm2             $AFD8
  $8A51  BB                         ADD
  $8A52  B3                         PUSHL
  $8A53  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8A57  60                         PUSH_qimm   ; inline operand = 0
  $8A58  8E 4E 99                   PUSH_imm2              $994E
 >$8A5B  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8A5F  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
 >$8A62  CF                         RETURN

; ============================================================
; sub $8A63   (frame_off=+0, body @ $8A68)   [PRG $2EA63]
; ============================================================
  $8A68  AC 8B 82                   CALL_abs               $828B {bytecode}
  $8A6B  D8 AB 8A                   JUMPF_abs              $8AAB
  $8A6E  AC 75 82                   CALL_abs               $8275 {bytecode}
  $8A71  D7 AB 8A                   JUMPT_abs              $8AAB
  $8A74  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8A77  AC 3A 83                   CALL_abs               $833A (tavern_recruit_greet) {bytecode}
  $8A7A  A5 53 70                   BYTE_LOADL_abs         $7053
  $8A7D  D7 92 8A                   JUMPT_abs              $8A92
  $8A80  60                         PUSH_qimm   ; inline operand = 0
  $8A81  8E 61 99                   PUSH_imm2              $9961
  $8A84  D6 8B 8A                   JUMP_abs               $8A8B
 >$8A87  60                         PUSH_qimm   ; inline operand = 0
  $8A88  8E 7D 99                   PUSH_imm2              $997D
 >$8A8B  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8A8F  D6 A8 8A                   JUMP_abs               $8AA8
 >$8A92  AC 96 82                   CALL_abs               $8296 {bytecode}
  $8A95  D7 87 8A                   JUMPT_abs              $8A87
  $8A98  60                         PUSH_qimm   ; inline operand = 0
  $8A99  8E 9F 99                   PUSH_imm2              $999F
  $8A9C  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8AA0  A5 52 70                   BYTE_LOADL_abs         $7052
  $8AA3  B3                         PUSHL
  $8AA4  E9 C9 83 02                CALL_abs_imm1          $83C9 {bytecode}, $02
 >$8AA8  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
 >$8AAB  AC 8B 82                   CALL_abs               $828B {bytecode}
  $8AAE  D8 C5 8A                   JUMPF_abs              $8AC5
  $8AB1  AC 75 82                   CALL_abs               $8275 {bytecode}
  $8AB4  D8 C5 8A                   JUMPF_abs              $8AC5
  $8AB7  AC 80 82                   CALL_abs               $8280 {bytecode}
  $8ABA  D7 C5 8A                   JUMPT_abs              $8AC5
  $8ABD  A5 55 70                   BYTE_LOADL_abs         $7055
  $8AC0  B3                         PUSHL
  $8AC1  E9 39 84 02                CALL_abs_imm1          $8439 (tavern_rumor_rival_loc) {bytecode}, $02
 >$8AC5  AC 8B 82                   CALL_abs               $828B {bytecode}
  $8AC8  D8 19 8B                   JUMPF_abs              $8B19
  $8ACB  AC 75 82                   CALL_abs               $8275 {bytecode}
  $8ACE  D8 19 8B                   JUMPF_abs              $8B19
  $8AD1  AC 80 82                   CALL_abs               $8280 {bytecode}
  $8AD4  D8 19 8B                   JUMPF_abs              $8B19
  $8AD7  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8ADA  AC 3A 83                   CALL_abs               $833A (tavern_recruit_greet) {bytecode}
  $8ADD  A5 53 70                   BYTE_LOADL_abs         $7053
  $8AE0  D7 EA 8A                   JUMPT_abs              $8AEA
  $8AE3  60                         PUSH_qimm   ; inline operand = 0
  $8AE4  8E BC 99                   PUSH_imm2              $99BC
  $8AE7  D6 12 8B                   JUMP_abs               $8B12
 >$8AEA  AC 96 82                   CALL_abs               $8296 {bytecode}
  $8AED  D8 F7 8A                   JUMPF_abs              $8AF7
  $8AF0  60                         PUSH_qimm   ; inline operand = 0
  $8AF1  8E D6 99                   PUSH_imm2              $99D6
  $8AF4  D6 12 8B                   JUMP_abs               $8B12
 >$8AF7  60                         PUSH_qimm   ; inline operand = 0
  $8AF8  8E F8 99                   PUSH_imm2              $99F8
  $8AFB  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8AFF  A5 52 70                   BYTE_LOADL_abs         $7052
  $8B02  8B 13                      BYTE_LOADR_imm1        +19
  $8B04  B5                         MULT
  $8B05  8C D8 AF                   LOADR_imm2             $AFD8
  $8B08  BB                         ADD
  $8B09  B3                         PUSHL
  $8B0A  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8B0E  60                         PUSH_qimm   ; inline operand = 0
  $8B0F  8E 0B 9A                   PUSH_imm2              $9A0B
 >$8B12  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8B16  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
 >$8B19  CF                         RETURN

; ============================================================
; sub $8B1A   (frame_off=+0, body @ $8B1F)   [PRG $2EB1A]
; ============================================================
  $8B1F  AC 8B 82                   CALL_abs               $828B {bytecode}
  $8B22  D8 3C 8B                   JUMPF_abs              $8B3C
  $8B25  AC 75 82                   CALL_abs               $8275 {bytecode}
  $8B28  D7 3C 8B                   JUMPT_abs              $8B3C
  $8B2B  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8B2E  AC 3A 83                   CALL_abs               $833A (tavern_recruit_greet) {bytecode}
  $8B31  60                         PUSH_qimm   ; inline operand = 0
  $8B32  8E 21 9A                   PUSH_imm2              $9A21
  $8B35  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8B39  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
 >$8B3C  AC 8B 82                   CALL_abs               $828B {bytecode}
  $8B3F  D8 95 8B                   JUMPF_abs              $8B95
  $8B42  AC 75 82                   CALL_abs               $8275 {bytecode}
  $8B45  D8 95 8B                   JUMPF_abs              $8B95
  $8B48  AC 80 82                   CALL_abs               $8280 {bytecode}
  $8B4B  D7 95 8B                   JUMPT_abs              $8B95
  $8B4E  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $8B51  D3                         BYTE_DEREF
  $8B52  53                         LOADR_qimm   ; inline operand = 3
  $8B53  C0                         CMPEQ
  $8B54  D8 8D 8B                   JUMPF_abs              $8B8D
  $8B57  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $8B5A  D0                         INC
  $8B5B  A8 50 70                   STORE_abs              $7050 (player_char_record)
  $8B5E  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8B61  61                         PUSH_qimm   ; inline operand = 1
  $8B62  8E 49 9A                   PUSH_imm2              $9A49
  $8B65  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8B69  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8B6C  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8B6F  60                         PUSH_qimm   ; inline operand = 0
  $8B70  8E 83 9A                   PUSH_imm2              $9A83
  $8B73  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8B77  A5 55 70                   BYTE_LOADL_abs         $7055
  $8B7A  B3                         PUSHL
  $8B7B  E9 FA 83 02                CALL_abs_imm1          $83FA {bytecode}, $02
  $8B7F  60                         PUSH_qimm   ; inline operand = 0
  $8B80  8E 9D 9A                   PUSH_imm2              $9A9D
  $8B83  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8B87  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $8B8A  D6 95 8B                   JUMP_abs               $8B95
 >$8B8D  A5 55 70                   BYTE_LOADL_abs         $7055
  $8B90  B3                         PUSHL
  $8B91  E9 39 84 02                CALL_abs_imm1          $8439 (tavern_rumor_rival_loc) {bytecode}, $02
 >$8B95  AC 8B 82                   CALL_abs               $828B {bytecode}
  $8B98  D8 B8 8B                   JUMPF_abs              $8BB8
  $8B9B  AC 75 82                   CALL_abs               $8275 {bytecode}
  $8B9E  D8 B8 8B                   JUMPF_abs              $8BB8
  $8BA1  AC 80 82                   CALL_abs               $8280 {bytecode}
  $8BA4  D8 B8 8B                   JUMPF_abs              $8BB8
  $8BA7  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8BAA  AC 3A 83                   CALL_abs               $833A (tavern_recruit_greet) {bytecode}
  $8BAD  60                         PUSH_qimm   ; inline operand = 0
  $8BAE  8E AD 9A                   PUSH_imm2              $9AAD
  $8BB1  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8BB5  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
 >$8BB8  CF                         RETURN

; ============================================================
; sub $8BB9   (frame_off=+0, body @ $8BBE)   [PRG $2EBB9]
; ============================================================
  $8BBE  AC 8B 82                   CALL_abs               $828B {bytecode}
  $8BC1  D8 DB 8B                   JUMPF_abs              $8BDB
  $8BC4  AC 75 82                   CALL_abs               $8275 {bytecode}
  $8BC7  D7 DB 8B                   JUMPT_abs              $8BDB
  $8BCA  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8BCD  AC 3A 83                   CALL_abs               $833A (tavern_recruit_greet) {bytecode}
  $8BD0  60                         PUSH_qimm   ; inline operand = 0
  $8BD1  8E C9 9A                   PUSH_imm2              $9AC9
  $8BD4  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8BD8  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
 >$8BDB  AC 8B 82                   CALL_abs               $828B {bytecode}
  $8BDE  D8 32 8C                   JUMPF_abs              $8C32
  $8BE1  AC 75 82                   CALL_abs               $8275 {bytecode}
  $8BE4  D8 32 8C                   JUMPF_abs              $8C32
  $8BE7  AC 80 82                   CALL_abs               $8280 {bytecode}
  $8BEA  D7 32 8C                   JUMPT_abs              $8C32
  $8BED  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8BF0  A5 67 70                   BYTE_LOADL_abs         $7067
  $8BF3  B3                         PUSHL
  $8BF4  A5 55 70                   BYTE_LOADL_abs         $7055
  $8BF7  B4                         POPR
  $8BF8  C1                         CMPNE
  $8BF9  D8 24 8C                   JUMPF_abs              $8C24
  $8BFC  60                         PUSH_qimm   ; inline operand = 0
  $8BFD  8E F1 9A                   PUSH_imm2              $9AF1
  $8C00  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8C04  A5 55 70                   BYTE_LOADL_abs         $7055
  $8C07  D2                         LSHIFT1
  $8C08  8C 24 BB                   LOADR_imm2             $BB24
  $8C0B  BB                         ADD
  $8C0C  B3                         PUSHL
  $8C0D  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8C11  B3                         PUSHL
  $8C12  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8C16  60                         PUSH_qimm   ; inline operand = 0
  $8C17  8E 0D 9B                   PUSH_imm2              $9B0D
  $8C1A  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8C1E  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $8C21  D6 32 8C                   JUMP_abs               $8C32
 >$8C24  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8C27  61                         PUSH_qimm   ; inline operand = 1
  $8C28  8E 2B 9B                   PUSH_imm2              $9B2B
  $8C2B  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8C2F  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
 >$8C32  AC 8B 82                   CALL_abs               $828B {bytecode}
  $8C35  D8 55 8C                   JUMPF_abs              $8C55
  $8C38  AC 75 82                   CALL_abs               $8275 {bytecode}
  $8C3B  D8 55 8C                   JUMPF_abs              $8C55
  $8C3E  AC 80 82                   CALL_abs               $8280 {bytecode}
  $8C41  D8 55 8C                   JUMPF_abs              $8C55
  $8C44  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8C47  AC 3A 83                   CALL_abs               $833A (tavern_recruit_greet) {bytecode}
  $8C4A  60                         PUSH_qimm   ; inline operand = 0
  $8C4B  8E 53 9B                   PUSH_imm2              $9B53
  $8C4E  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8C52  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
 >$8C55  CF                         RETURN

; ============================================================
; sub $8C56   (frame_off=+0, body @ $8C5B)   [PRG $2EC56]
; ============================================================
  $8C5B  63                         PUSH_qimm   ; inline operand = 3
  $8C5C  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8C60  B3                         PUSHL
  $8C61  E9 36 82 02                CALL_abs_imm1          $8236 {bytecode}, $02
  $8C65  A5 54 70                   BYTE_LOADL_abs         $7054
  $8C68  D5 00 00 05 00 7C 8C 79 8C 7D 8C 83 ... SWITCH_contig          limit=5   ; .table 5 word targets (contiguous); SWITCH 0=>$8C79 1=>$8C7D 2=>$8C83 3=>$8C89 4=>$8C8F default=>$8C7C
 >$8C79  AC 8F 85                   CALL_abs               $858F (tavern_quest_hook) {bytecode}
 >$8C7C  CF                         RETURN
 >$8C7D  AC B9 8B                   CALL_abs               $8BB9 {bytecode}
  $8C80  D6 7C 8C                   JUMP_abs               $8C7C
 >$8C83  AC 63 8A                   CALL_abs               $8A63 (tavern_quest_hook_b) {bytecode}
  $8C86  D6 7C 8C                   JUMP_abs               $8C7C
 >$8C89  AC A8 86                   CALL_abs               $86A8 {bytecode}
  $8C8C  D6 7C 8C                   JUMP_abs               $8C7C
 >$8C8F  AC 1A 8B                   CALL_abs               $8B1A {bytecode}
  $8C92  D6 7C 8C                   JUMP_abs               $8C7C

; ============================================================
; sub $8C95   (frame_off=-39, body @ $8C9A)   [PRG $2EC95]
; ============================================================
  $8C9A  6A                         PUSH_qimm   ; inline operand = 10
  $8C9B  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8C9F  D7 14 8D                   JUMPT_abs              $8D14
  $8CA2  63                         PUSH_qimm   ; inline operand = 3
  $8CA3  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8CA7  B3                         PUSHL
  $8CA8  E9 36 82 02                CALL_abs_imm1          $8236 {bytecode}, $02
  $8CAC  DE E5 FF                   LEAL_far               $FFE5
  $8CAF  B3                         PUSHL
  $8CB0  E9 CE 81 02                CALL_abs_imm1          $81CE {bytecode}, $02
  $8CB4  85 DD                      STORE_near             $DD
  $8CB6  81 DD                      LOADL_near             $DD
  $8CB8  D8 CB 8C                   JUMPF_abs              $8CCB
  $8CBB  DE E5 FF                   LEAL_far               $FFE5
  $8CBE  B3                         PUSHL
  $8CBF  87 DD                      PUSH_near              $DD
  $8CC1  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8CC5  B4                         POPR
  $8CC6  BB                         ADD
  $8CC7  D3                         BYTE_DEREF
  $8CC8  D6 D1 8C                   JUMP_abs               $8CD1
 >$8CCB  8D 1A                      BYTE_PUSH_imm1         +26
  $8CCD  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
 >$8CD1  85 E3                      STORE_near             $E3
  $8CD3  87 E3                      PUSH_near              $E3
  $8CD5  E9 3F 81 02                CALL_abs_imm1          $813F {bytecode}, $02
  $8CD9  85 E1                      STORE_near             $E1
  $8CDB  81 E1                      LOADL_near             $E1
  $8CDD  8B 13                      BYTE_LOADR_imm1        +19
  $8CDF  B5                         MULT
  $8CE0  8C D8 AF                   LOADR_imm2             $AFD8
  $8CE3  BB                         ADD
  $8CE4  85 DB                      STORE_near             $DB
  $8CE6  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8CE9  60                         PUSH_qimm   ; inline operand = 0
  $8CEA  8E 7A 9B                   PUSH_imm2              $9B7A
  $8CED  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8CF1  87 E1                      PUSH_near              $E1
  $8CF3  E9 C9 83 02                CALL_abs_imm1          $83C9 {bytecode}, $02
  $8CF7  60                         PUSH_qimm   ; inline operand = 0
  $8CF8  8E 83 9B                   PUSH_imm2              $9B83
  $8CFB  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8CFF  81 E3                      LOADL_near             $E3
  $8D01  D2                         LSHIFT1
  $8D02  8C 49 BB                   LOADR_imm2             $BB49
  $8D05  BB                         ADD
  $8D06  B3                         PUSHL
  $8D07  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8D0B  B3                         PUSHL
  $8D0C  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8D10  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $8D13  CF                         RETURN
 >$8D14  66                         PUSH_qimm   ; inline operand = 6
  $8D15  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8D19  D8 1C 8E                   JUMPF_abs              $8E1C
  $8D1C  63                         PUSH_qimm   ; inline operand = 3
  $8D1D  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8D21  B3                         PUSHL
  $8D22  E9 36 82 02                CALL_abs_imm1          $8236 {bytecode}, $02
 >$8D26  A5 67 70                   BYTE_LOADL_abs         $7067
  $8D29  B3                         PUSHL
  $8D2A  65                         PUSH_qimm   ; inline operand = 5
  $8D2B  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8D2F  B4                         POPR
  $8D30  BB                         ADD
  $8D31  8F FE                      BYTE_ADD_imm1          -2
  $8D33  85 E1                      STORE_near             $E1
  $8D35  A5 67 70                   BYTE_LOADL_abs         $7067
  $8D38  83 E1                      LOADR_near             $E1
  $8D3A  C0                         CMPEQ
  $8D3B  D7 4D 8D                   JUMPT_abs              $8D4D
  $8D3E  81 E1                      LOADL_near             $E1
  $8D40  50                         LOADR_qimm   ; inline operand = 0
  $8D41  C9                         UCMPGE
  $8D42  D8 26 8D                   JUMPF_abs              $8D26
  $8D45  81 E1                      LOADL_near             $E1
  $8D47  8B 32                      BYTE_LOADR_imm1        +50
  $8D49  C6                         UCMPLT
  $8D4A  D8 26 8D                   JUMPF_abs              $8D26
 >$8D4D  81 E1                      LOADL_near             $E1
  $8D4F  8B 13                      BYTE_LOADR_imm1        +19
  $8D51  B5                         MULT
  $8D52  8C D8 AF                   LOADR_imm2             $AFD8
  $8D55  BB                         ADD
  $8D56  2B                         STORE_quick   ; inline operand = 11
  $8D57  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8D5A  81 E1                      LOADL_near             $E1
  $8D5C  55                         LOADR_qimm   ; inline operand = 5
  $8D5D  B5                         MULT
  $8D5E  8C 0A B5                   LOADR_imm2             $B50A
  $8D61  BB                         ADD
  $8D62  85 D9                      STORE_near             $D9
  $8D64  81 E1                      LOADL_near             $E1
  $8D66  8C 76 6F                   LOADR_imm2             $6F76
  $8D69  BB                         ADD
  $8D6A  D3                         BYTE_DEREF
  $8D6B  58                         LOADR_qimm   ; inline operand = 8
  $8D6C  DA                         AND
  $8D6D  D8 D8 8D                   JUMPF_abs              $8DD8
  $8D70  81 D9                      LOADL_near             $D9
  $8D72  D0                         INC
  $8D73  B3                         PUSHL
  $8D74  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8D78  85 DF                      STORE_near             $DF
  $8D7A  60                         PUSH_qimm   ; inline operand = 0
  $8D7B  8E A2 9B                   PUSH_imm2              $9BA2
  $8D7E  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8D82  3B                         PUSH_quick   ; inline operand = 11
  $8D83  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8D87  81 DF                      LOADL_near             $DF
  $8D89  8C FF 00                   LOADR_imm2             $00FF
  $8D8C  C0                         CMPEQ
  $8D8D  D8 9B 8D                   JUMPF_abs              $8D9B
  $8D90  60                         PUSH_qimm   ; inline operand = 0
  $8D91  8E B7 9B                   PUSH_imm2              $9BB7
 >$8D94  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8D98  D6 18 8E                   JUMP_abs               $8E18
 >$8D9B  81 E1                      LOADL_near             $E1
  $8D9D  5E                         LOADR_qimm   ; inline operand = 14
  $8D9E  B5                         MULT
  $8D9F  8C B2 67                   LOADR_imm2             $67B2
  $8DA2  BB                         ADD
  $8DA3  B0                         DEREF
  $8DA4  B3                         PUSHL
  $8DA5  81 D9                      LOADL_near             $D9
  $8DA7  72                         ADD_qimm   ; inline operand = 2
  $8DA8  B3                         PUSHL
  $8DA9  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8DAD  8B 32                      BYTE_LOADR_imm1        +50
  $8DAF  B5                         MULT
  $8DB0  B4                         POPR
  $8DB1  C3                         SCMPLE
  $8DB2  D8 D1 8D                   JUMPF_abs              $8DD1
  $8DB5  60                         PUSH_qimm   ; inline operand = 0
  $8DB6  8E DB 9B                   PUSH_imm2              $9BDB
  $8DB9  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8DBD  81 DF                      LOADL_near             $DF
  $8DBF  D2                         LSHIFT1
  $8DC0  8C 49 BB                   LOADR_imm2             $BB49
 >$8DC3  BB                         ADD
  $8DC4  B3                         PUSHL
  $8DC5  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8DC9  B3                         PUSHL
  $8DCA  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8DCE  D6 18 8E                   JUMP_abs               $8E18
 >$8DD1  60                         PUSH_qimm   ; inline operand = 0
  $8DD2  8E F4 9B                   PUSH_imm2              $9BF4
  $8DD5  D6 94 8D                   JUMP_abs               $8D94
 >$8DD8  81 E1                      LOADL_near             $E1
  $8DDA  8B 13                      BYTE_LOADR_imm1        +19
  $8DDC  B5                         MULT
  $8DDD  8C D8 AF                   LOADR_imm2             $AFD8
  $8DE0  BB                         ADD
  $8DE1  85 DB                      STORE_near             $DB
  $8DE3  60                         PUSH_qimm   ; inline operand = 0
  $8DE4  8E 23 9C                   PUSH_imm2              $9C23
  $8DE7  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8DEB  81 E1                      LOADL_near             $E1
  $8DED  8B 13                      BYTE_LOADR_imm1        +19
  $8DEF  B5                         MULT
  $8DF0  8C D8 AF                   LOADR_imm2             $AFD8
  $8DF3  BB                         ADD
  $8DF4  B3                         PUSHL
  $8DF5  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8DF9  60                         PUSH_qimm   ; inline operand = 0
  $8DFA  8E 3E 9C                   PUSH_imm2              $9C3E
  $8DFD  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8E01  81 DB                      LOADL_near             $DB
  $8E03  8F 10                      BYTE_ADD_imm1          +16
  $8E05  B3                         PUSHL
  $8E06  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8E0A  B3                         PUSHL
  $8E0B  81 DB                      LOADL_near             $DB
  $8E0D  7F                         ADD_qimm   ; inline operand = 15
  $8E0E  B3                         PUSHL
  $8E0F  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8E13  B3                         PUSHL
  $8E14  E9 75 83 04                CALL_abs_imm1          $8375 (tavern_recruit_stats) {bytecode}, $04
 >$8E18  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
 >$8E1B  CF                         RETURN
 >$8E1C  63                         PUSH_qimm   ; inline operand = 3
  $8E1D  E9 36 82 02                CALL_abs_imm1          $8236 {bytecode}, $02
  $8E21  A5 CB 6F                   BYTE_LOADL_abs         $6FCB
  $8E24  85 E3                      STORE_near             $E3
  $8E26  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8E29  81 E3                      LOADL_near             $E3
  $8E2B  D5 00 00 04 00 59 8E 3A 8E 3A 8E 3A ... SWITCH_contig          limit=4   ; .table 4 word targets (contiguous); SWITCH 0=>$8E3A 1=>$8E3A 2=>$8E3A 3=>$8E4B default=>$8E59
 >$8E3A  60                         PUSH_qimm   ; inline operand = 0
  $8E3B  8E 44 9C                   PUSH_imm2              $9C44
  $8E3E  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8E42  81 E3                      LOADL_near             $E3
  $8E44  D2                         LSHIFT1
  $8E45  8C 24 BB                   LOADR_imm2             $BB24
  $8E48  D6 C3 8D                   JUMP_abs               $8DC3
 >$8E4B  61                         PUSH_qimm   ; inline operand = 1
  $8E4C  8E 7B 9C                   PUSH_imm2              $9C7B
 >$8E4F  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8E53  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8E56  D6 1B 8E                   JUMP_abs               $8E1B
 >$8E59  61                         PUSH_qimm   ; inline operand = 1
  $8E5A  8E AA 9C                   PUSH_imm2              $9CAA
  $8E5D  D6 4F 8E                   JUMP_abs               $8E4F

; ============================================================
; sub $8E60   (frame_off=-4, body @ $8E65)   [PRG $2EE60]
; ============================================================
  $8E65  A4 6B 66                   LOADL_abs              $666B
  $8E68  8B 64                      BYTE_LOADR_imm1        +100
  $8E6A  C6                         UCMPLT
  $8E6B  D8 7D 8E                   JUMPF_abs              $8E7D
  $8E6E  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8E71  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8E74  8E D6 9C                   PUSH_imm2              $9CD6
  $8E77  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8E7B  40                         LOADL_qimm   ; inline operand = 0
  $8E7C  CF                         RETURN
 >$8E7D  60                         PUSH_qimm   ; inline operand = 0
  $8E7E  60                         PUSH_qimm   ; inline operand = 0
  $8E7F  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8E83  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8E86  8E F4 9C                   PUSH_imm2              $9CF4
  $8E89  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8E8D  A5 67 70                   BYTE_LOADL_abs         $7067
  $8E90  5E                         LOADR_qimm   ; inline operand = 14
  $8E91  B5                         MULT
  $8E92  8C B2 67                   LOADR_imm2             $67B2
  $8E95  BB                         ADD
  $8E96  B0                         DEREF
  $8E97  2A                         STORE_quick   ; inline operand = 10
  $8E98  0A                         LOADL_quick   ; inline operand = 10
  $8E99  8C 2C 01                   LOADR_imm2             $012C
  $8E9C  B6                         SDIV
  $8E9D  D0                         INC
  $8E9E  B3                         PUSHL
  $8E9F  A5 67 70                   BYTE_LOADL_abs         $7067
  $8EA2  5E                         LOADR_qimm   ; inline operand = 14
  $8EA3  B5                         MULT
  $8EA4  8C BD 67                   LOADR_imm2             $67BD
  $8EA7  BB                         ADD
  $8EA8  D3                         BYTE_DEREF
  $8EA9  8F 32                      BYTE_ADD_imm1          +50
  $8EAB  5A                         LOADR_qimm   ; inline operand = 10
  $8EAC  B6                         SDIV
  $8EAD  B4                         POPR
  $8EAE  B5                         MULT
  $8EAF  2B                         STORE_quick   ; inline operand = 11
  $8EB0  61                         PUSH_qimm   ; inline operand = 1
  $8EB1  67                         PUSH_qimm   ; inline operand = 7
  $8EB2  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8EB6  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8EB9  3B                         PUSH_quick   ; inline operand = 11
  $8EBA  8E 1F 9D                   PUSH_imm2              $9D1F
  $8EBD  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8EC1  61                         PUSH_qimm   ; inline operand = 1
  $8EC2  E9 9B CE 02                CALL_abs_imm1          $CE9B {native}, $02
  $8EC6  0B                         LOADL_quick   ; inline operand = 11
  $8EC7  CD                         SWAP
  $8EC8  A4 6B 66                   LOADL_abs              $666B
  $8ECB  BC                         SUB
  $8ECC  A8 6B 66                   STORE_abs              $666B
  $8ECF  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8ED2  0A                         LOADL_quick   ; inline operand = 10
  $8ED3  90 2C 01                   ADD_imm2               $012C
  $8ED6  B3                         PUSHL
  $8ED7  8E E8 03                   PUSH_imm2              $03E8
  $8EDA  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8EDE  B4                         POPR
  $8EDF  C8                         UCMPGT
  $8EE0  D8 EF 8E                   JUMPF_abs              $8EEF
  $8EE3  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8EE6  8E 59 9D                   PUSH_imm2              $9D59
  $8EE9  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8EED  41                         LOADL_qimm   ; inline operand = 1
  $8EEE  CF                         RETURN
 >$8EEF  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8EF2  8E 81 9D                   PUSH_imm2              $9D81
  $8EF5  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8EF9  A5 5F 70                   BYTE_LOADL_abs         $705F
  $8EFC  51                         LOADR_qimm   ; inline operand = 1
  $8EFD  DA                         AND
  $8EFE  D8 0F 8F                   JUMPF_abs              $8F0F
  $8F01  64                         PUSH_qimm   ; inline operand = 4
  $8F02  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8F06  D8 0F 8F                   JUMPF_abs              $8F0F
  $8F09  AC 56 8C                   CALL_abs               $8C56 {bytecode}
  $8F0C  D6 12 8F                   JUMP_abs               $8F12
 >$8F0F  AC 95 8C                   CALL_abs               $8C95 (tavern_rumor_trade) {bytecode}
 >$8F12  41                         LOADL_qimm   ; inline operand = 1
  $8F13  CF                         RETURN

; ============================================================
; sub $8F14   (frame_off=+0, body @ $8F19)   [PRG $2EF14]
; ============================================================
  $8F19  61                         PUSH_qimm   ; inline operand = 1
  $8F1A  68                         PUSH_qimm   ; inline operand = 8
  $8F1B  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8F1F  CF                         RETURN

; ============================================================
; sub $8F20   (frame_off=-1, body @ $8F25)   [PRG $2EF20]
; ============================================================
  $8F25  8E E7 00                   PUSH_imm2              $00E7
  $8F28  8E A2 B6                   PUSH_imm2              $B6A2
  $8F2B  8E 1A B5                   PUSH_imm2              $B51A
  $8F2E  6E                         PUSH_qimm   ; inline operand = 14
  $8F2F  8D 1C                      BYTE_PUSH_imm1         +28
  $8F31  66                         PUSH_qimm   ; inline operand = 6
  $8F32  62                         PUSH_qimm   ; inline operand = 2
  $8F33  69                         PUSH_qimm   ; inline operand = 9
  $8F34  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8F38  89 FF                      BYTE_LOADL_imm1        -1
  $8F3A  A8 64 70                   STORE_abs              $7064
  $8F3D  68                         PUSH_qimm   ; inline operand = 8
  $8F3E  66                         PUSH_qimm   ; inline operand = 6
  $8F3F  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8F43  60                         PUSH_qimm   ; inline operand = 0
  $8F44  8E B0 9D                   PUSH_imm2              $9DB0
  $8F47  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8F4B  60                         PUSH_qimm   ; inline operand = 0
  $8F4C  8E FA 00                   PUSH_imm2              $00FA
  $8F4F  69                         PUSH_qimm   ; inline operand = 9
  $8F50  61                         PUSH_qimm   ; inline operand = 1
  $8F51  6A                         PUSH_qimm   ; inline operand = 10
  $8F52  6F                         PUSH_qimm   ; inline operand = 15
  $8F53  68                         PUSH_qimm   ; inline operand = 8
  $8F54  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $8F58  40                         LOADL_qimm   ; inline operand = 0
  $8F59  D6 96 8F                   JUMP_abs               $8F96
 >$8F5C  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8F5F  55                         LOADR_qimm   ; inline operand = 5
  $8F60  BA                         UMOD
  $8F61  D2                         LSHIFT1
  $8F62  7A                         ADD_qimm   ; inline operand = 10
  $8F63  B3                         PUSHL
  $8F64  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8F67  55                         LOADR_qimm   ; inline operand = 5
  $8F68  B8                         UDIV
  $8F69  5D                         LOADR_qimm   ; inline operand = 13
  $8F6A  B5                         MULT
  $8F6B  74                         ADD_qimm   ; inline operand = 4
  $8F6C  B3                         PUSHL
  $8F6D  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8F71  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8F74  D2                         LSHIFT1
  $8F75  1E                         LOADR_quick   ; inline operand = 14
  $8F76  BB                         ADD
  $8F77  B3                         PUSHL
  $8F78  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8F7B  1D                         LOADR_quick   ; inline operand = 13
  $8F7C  BB                         ADD
  $8F7D  D3                         BYTE_DEREF
  $8F7E  57                         LOADR_qimm   ; inline operand = 7
  $8F7F  B5                         MULT
  $8F80  8C 42 65                   LOADR_imm2             $6542
  $8F83  BB                         ADD
  $8F84  B0                         DEREF
  $8F85  B1                         POPSTORE
  $8F86  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8F89  D2                         LSHIFT1
  $8F8A  1E                         LOADR_quick   ; inline operand = 14
  $8F8B  BB                         ADD
  $8F8C  B0                         DEREF
  $8F8D  B3                         PUSHL
  $8F8E  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8F92  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8F95  D0                         INC
 >$8F96  A2 FF FF                   BYTE_STORE_far         $FFFF
  $8F99  A0 0B 00                   BYTE_LOADL_far         $000B
  $8F9C  B3                         PUSHL
  $8F9D  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8FA0  B4                         POPR
  $8FA1  C6                         UCMPLT
  $8FA2  D7 5C 8F                   JUMPT_abs              $8F5C
  $8FA5  CF                         RETURN

; ============================================================
; sub $8FA6   (frame_off=-8, body @ $8FAB)   [PRG $2EFA6]
; ============================================================
  $8FAB  AC 14 8F                   CALL_abs               $8F14 {bytecode}
  $8FAE  61                         PUSH_qimm   ; inline operand = 1
  $8FAF  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $8FB3  60                         PUSH_qimm   ; inline operand = 0
  $8FB4  8E C4 9D                   PUSH_imm2              $9DC4
  $8FB7  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8FBB  3D                         PUSH_quick   ; inline operand = 13
  $8FBC  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8FC0  8D 19                      BYTE_PUSH_imm1         +25
  $8FC2  68                         PUSH_qimm   ; inline operand = 8
  $8FC3  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8FC7  AC 9F CD                   CALL_abs               $CD9F {native}
  $8FCA  2B                         STORE_quick   ; inline operand = 11
  $8FCB  0B                         LOADL_quick   ; inline operand = 11
  $8FCC  D8 6B 90                   JUMPF_abs              $906B
  $8FCF  8A 9A 6A                   LOADL_imm2             $6A9A
  $8FD2  2A                         STORE_quick   ; inline operand = 10
  $8FD3  40                         LOADL_qimm   ; inline operand = 0
  $8FD4  D6 F1 8F                   JUMP_abs               $8FF1
 >$8FD7  A0 0B 00                   BYTE_LOADL_far         $000B
  $8FDA  B3                         PUSHL
  $8FDB  0A                         LOADL_quick   ; inline operand = 10
  $8FDC  D3                         BYTE_DEREF
  $8FDD  B4                         POPR
  $8FDE  C0                         CMPEQ
  $8FDF  D8 EA 8F                   JUMPF_abs              $8FEA
  $8FE2  3A                         PUSH_quick   ; inline operand = 10
  $8FE3  8A FF 00                   LOADL_imm2             $00FF
  $8FE6  D4                         BYTE_POPSTORE
  $8FE7  D6 05 90                   JUMP_abs               $9005
 >$8FEA  0A                         LOADL_quick   ; inline operand = 10
  $8FEB  D0                         INC
  $8FEC  2A                         STORE_quick   ; inline operand = 10
  $8FED  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $8FF0  D0                         INC
 >$8FF1  A2 F9 FF                   BYTE_STORE_far         $FFF9
  $8FF4  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $8FF7  5A                         LOADR_qimm   ; inline operand = 10
  $8FF8  C6                         UCMPLT
  $8FF9  D8 05 90                   JUMPF_abs              $9005
  $8FFC  0A                         LOADL_quick   ; inline operand = 10
  $8FFD  D3                         BYTE_DEREF
  $8FFE  8C FF 00                   LOADR_imm2             $00FF
  $9001  C1                         CMPNE
  $9002  D7 D7 8F                   JUMPT_abs              $8FD7
 >$9005  8A 9A 6A                   LOADL_imm2             $6A9A
  $9008  2A                         STORE_quick   ; inline operand = 10
  $9009  29                         STORE_quick   ; inline operand = 9
  $900A  40                         LOADL_qimm   ; inline operand = 0
  $900B  A2 F9 FF                   BYTE_STORE_far         $FFF9
  $900E  A2 F8 FF                   BYTE_STORE_far         $FFF8
  $9011  D6 35 90                   JUMP_abs               $9035
 >$9014  0A                         LOADL_quick   ; inline operand = 10
  $9015  D3                         BYTE_DEREF
  $9016  8C FF 00                   LOADR_imm2             $00FF
  $9019  C1                         CMPNE
  $901A  D8 2B 90                   JUMPF_abs              $902B
  $901D  39                         PUSH_quick   ; inline operand = 9
  $901E  0A                         LOADL_quick   ; inline operand = 10
  $901F  D3                         BYTE_DEREF
  $9020  D4                         BYTE_POPSTORE
  $9021  09                         LOADL_quick   ; inline operand = 9
  $9022  D0                         INC
  $9023  29                         STORE_quick   ; inline operand = 9
  $9024  A0 F8 FF                   BYTE_LOADL_far         $FFF8
  $9027  D0                         INC
  $9028  A2 F8 FF                   BYTE_STORE_far         $FFF8
 >$902B  0A                         LOADL_quick   ; inline operand = 10
  $902C  D0                         INC
  $902D  2A                         STORE_quick   ; inline operand = 10
  $902E  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $9031  D0                         INC
  $9032  A2 F9 FF                   BYTE_STORE_far         $FFF9
 >$9035  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $9038  5A                         LOADR_qimm   ; inline operand = 10
  $9039  C6                         UCMPLT
  $903A  D7 14 90                   JUMPT_abs              $9014
  $903D  A0 F8 FF                   BYTE_LOADL_far         $FFF8
  $9040  A2 F9 FF                   BYTE_STORE_far         $FFF9
  $9043  D6 55 90                   JUMP_abs               $9055
 >$9046  39                         PUSH_quick   ; inline operand = 9
  $9047  8A FF 00                   LOADL_imm2             $00FF
  $904A  D4                         BYTE_POPSTORE
  $904B  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $904E  D0                         INC
  $904F  A2 F9 FF                   BYTE_STORE_far         $FFF9
  $9052  09                         LOADL_quick   ; inline operand = 9
  $9053  D0                         INC
  $9054  29                         STORE_quick   ; inline operand = 9
 >$9055  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $9058  5A                         LOADR_qimm   ; inline operand = 10
  $9059  C6                         UCMPLT
  $905A  D7 46 90                   JUMPT_abs              $9046
  $905D  A0 0B 00                   BYTE_LOADL_far         $000B
  $9060  D1                         DEC
  $9061  D2                         LSHIFT1
  $9062  8C 6F 6A                   LOADR_imm2             $6A6F
  $9065  BB                         ADD
  $9066  B3                         PUSHL
  $9067  A5 67 70                   BYTE_LOADL_abs         $7067
  $906A  D4                         BYTE_POPSTORE
 >$906B  0B                         LOADL_quick   ; inline operand = 11
  $906C  CF                         RETURN

; ============================================================
; sub $906D   (frame_off=-66, body @ $9072)   [PRG $2F06D]
; ============================================================
  $9072  DE F4 FF                   LEAL_far               $FFF4
  $9075  B3                         PUSHL
  $9076  E9 A6 D6 02                CALL_abs_imm1          $D6A6 {native}, $02
  $907A  A2 C1 FF                   BYTE_STORE_far         $FFC1
  $907D  DE EA FF                   LEAL_far               $FFEA
  $9080  B3                         PUSHL
  $9081  E9 18 D7 02                CALL_abs_imm1          $D718 {native}, $02
  $9085  A2 C0 FF                   BYTE_STORE_far         $FFC0
  $9088  A0 C1 FF                   BYTE_LOADL_far         $FFC1
  $908B  D7 9F 90                   JUMPT_abs              $909F
  $908E  AC 14 8F                   CALL_abs               $8F14 {bytecode}
  $9091  61                         PUSH_qimm   ; inline operand = 1
  $9092  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $9096  8E D7 9D                   PUSH_imm2              $9DD7
  $9099  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $909D  40                         LOADL_qimm   ; inline operand = 0
  $909E  CF                         RETURN
 >$909F  A0 C0 FF                   BYTE_LOADL_far         $FFC0
  $90A2  B3                         PUSHL
  $90A3  A0 C1 FF                   BYTE_LOADL_far         $FFC1
  $90A6  B4                         POPR
  $90A7  C0                         CMPEQ
  $90A8  D8 BC 90                   JUMPF_abs              $90BC
  $90AB  AC 14 8F                   CALL_abs               $8F14 {bytecode}
  $90AE  61                         PUSH_qimm   ; inline operand = 1
  $90AF  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $90B3  8E FC 9D                   PUSH_imm2              $9DFC
  $90B6  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $90BA  40                         LOADL_qimm   ; inline operand = 0
  $90BB  CF                         RETURN
 >$90BC  60                         PUSH_qimm   ; inline operand = 0
  $90BD  8D 12                      BYTE_PUSH_imm1         +18
  $90BF  8D 1C                      BYTE_PUSH_imm1         +28
  $90C1  62                         PUSH_qimm   ; inline operand = 2
  $90C2  62                         PUSH_qimm   ; inline operand = 2
  $90C3  E9 05 A4 0A                CALL_abs_imm1          $A405 {native}, $0A
  $90C7  DE C2 FF                   LEAL_far               $FFC2
  $90CA  B3                         PUSHL
  $90CB  DE F4 FF                   LEAL_far               $FFF4
  $90CE  B3                         PUSHL
  $90CF  A0 C1 FF                   BYTE_LOADL_far         $FFC1
  $90D2  B3                         PUSHL
  $90D3  E9 20 8F 06                CALL_abs_imm1          $8F20 (tavern_crew_roster) {bytecode}, $06
  $90D7  8A F0 00                   LOADL_imm2             $00F0
  $90DA  A9 63 70                   BYTE_STORE_abs         $7063
 >$90DD  40                         LOADL_qimm   ; inline operand = 0
  $90DE  85 BE                      STORE_near             $BE
  $90E0  AC 14 8F                   CALL_abs               $8F14 {bytecode}
  $90E3  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $90E6  61                         PUSH_qimm   ; inline operand = 1
  $90E7  8E 18 9E                   PUSH_imm2              $9E18
  $90EA  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $90EE  61                         PUSH_qimm   ; inline operand = 1
  $90EF  65                         PUSH_qimm   ; inline operand = 5
  $90F0  62                         PUSH_qimm   ; inline operand = 2
  $90F1  6D                         PUSH_qimm   ; inline operand = 13
  $90F2  6A                         PUSH_qimm   ; inline operand = 10
  $90F3  63                         PUSH_qimm   ; inline operand = 3
  $90F4  A0 C1 FF                   BYTE_LOADL_far         $FFC1
  $90F7  B3                         PUSHL
  $90F8  8E 31 9E                   PUSH_imm2              $9E31
  $90FB  E9 24 C8 10                CALL_abs_imm1          $C824 {native}, $10
  $90FF  2B                         STORE_quick   ; inline operand = 11
  $9100  0B                         LOADL_quick   ; inline operand = 11
  $9101  8B FF                      BYTE_LOADR_imm1        -1
  $9103  C1                         CMPNE
  $9104  D8 65 91                   JUMPF_abs              $9165
  $9107  0B                         LOADL_quick   ; inline operand = 11
  $9108  D1                         DEC
  $9109  2B                         STORE_quick   ; inline operand = 11
  $910A  60                         PUSH_qimm   ; inline operand = 0
  $910B  E9 15 D6 02                CALL_abs_imm1          $D615 {native}, $02
  $910F  B3                         PUSHL
  $9110  DE F4 FF                   LEAL_far               $FFF4
  $9113  B3                         PUSHL
  $9114  0B                         LOADL_quick   ; inline operand = 11
  $9115  B4                         POPR
  $9116  BB                         ADD
  $9117  D3                         BYTE_DEREF
  $9118  B3                         PUSHL
  $9119  E9 15 D6 02                CALL_abs_imm1          $D615 {native}, $02
  $911D  B4                         POPR
  $911E  C0                         CMPEQ
  $911F  D8 3E 91                   JUMPF_abs              $913E
  $9122  DE C2 FF                   LEAL_far               $FFC2
  $9125  B3                         PUSHL
  $9126  0B                         LOADL_quick   ; inline operand = 11
  $9127  D2                         LSHIFT1
  $9128  B4                         POPR
  $9129  BB                         ADD
  $912A  B0                         DEREF
  $912B  B3                         PUSHL
  $912C  DE F4 FF                   LEAL_far               $FFF4
  $912F  B3                         PUSHL
  $9130  0B                         LOADL_quick   ; inline operand = 11
  $9131  B4                         POPR
  $9132  BB                         ADD
  $9133  D3                         BYTE_DEREF
  $9134  B3                         PUSHL
  $9135  E9 A6 8F 04                CALL_abs_imm1          $8FA6 {bytecode}, $04
  $9139  85 BE                      STORE_near             $BE
  $913B  D6 65 91                   JUMP_abs               $9165
 >$913E  AC 14 8F                   CALL_abs               $8F14 {bytecode}
  $9141  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $9144  60                         PUSH_qimm   ; inline operand = 0
  $9145  8E 32 9E                   PUSH_imm2              $9E32
  $9148  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $914C  DE C2 FF                   LEAL_far               $FFC2
  $914F  B3                         PUSHL
  $9150  0B                         LOADL_quick   ; inline operand = 11
  $9151  D2                         LSHIFT1
  $9152  B4                         POPR
  $9153  BB                         ADD
  $9154  B0                         DEREF
  $9155  B3                         PUSHL
  $9156  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $915A  60                         PUSH_qimm   ; inline operand = 0
  $915B  8E 46 9E                   PUSH_imm2              $9E46
  $915E  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $9162  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
 >$9165  81 BE                      LOADL_near             $BE
  $9167  D7 71 91                   JUMPT_abs              $9171
  $916A  0B                         LOADL_quick   ; inline operand = 11
  $916B  8B FF                      BYTE_LOADR_imm1        -1
  $916D  C0                         CMPEQ
  $916E  D8 DD 90                   JUMPF_abs              $90DD
 >$9171  60                         PUSH_qimm   ; inline operand = 0
  $9172  8D 12                      BYTE_PUSH_imm1         +18
  $9174  8D 1C                      BYTE_PUSH_imm1         +28
  $9176  62                         PUSH_qimm   ; inline operand = 2
  $9177  62                         PUSH_qimm   ; inline operand = 2
  $9178  E9 9B A4 0A                CALL_abs_imm1          $A49B {native}, $0A
  $917C  81 BE                      LOADL_near             $BE
  $917E  CF                         RETURN

