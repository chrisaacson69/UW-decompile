VM bytecode disassembly
  ROM:          Uncharted Waters (USA).nes
  mode:         bulk dump of bank 15
  opcode spec:  vm-opcodes-v2.toml via nobunaga_vm.OPCODE_INFO (execution-validated lengths)
  labels:       0 CPU addresses named

  bank 15: found 37 bytecode-subroutine stubs

; ============================================================
; sub $8003   (frame_off=+0, body @ $8008)   [PRG $1E003]
; ============================================================
  $8008  A5 7D 73                   BYTE_LOADL_abs         $737D (ui_shared_var_737d)
  $800B  51                         LOADR_qimm   ; inline operand = 1
  $800C  C0                         CMPEQ
  $800D  D8 14 80                   JUMPF_abs              $8014
  $8010  4B                         LOADL_qimm   ; inline operand = 11
  $8011  D6 15 80                   JUMP_abs               $8015
 >$8014  45                         LOADL_qimm   ; inline operand = 5
 >$8015  CF                         RETURN

; ============================================================
; sub $8016   (frame_off=-13, body @ $801B)   [PRG $1E016]
; ============================================================
  $801B  DE FB FF                   LEAL_far               $FFFB
  $801E  B3                         PUSHL
  $801F  60                         PUSH_qimm   ; inline operand = 0
  $8020  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $8024  85 F3                      STORE_near             $F3
  $8026  81 F3                      LOADL_near             $F3
  $8028  52                         LOADR_qimm   ; inline operand = 2
  $8029  C6                         UCMPLT
  $802A  D8 39 80                   JUMPF_abs              $8039
  $802D  AC E8 B2                   CALL_abs               $B2E8 {native}
  $8030  8E 98 8D                   PUSH_imm2              $8D98
  $8033  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8037  40                         LOADL_qimm   ; inline operand = 0
  $8038  CF                         RETURN
 >$8039  AC 03 80                   CALL_abs               $8003 {bytecode}
  $803C  85 F5                      STORE_near             $F5
  $803E  6E                         PUSH_qimm   ; inline operand = 14
  $803F  8D 12                      BYTE_PUSH_imm1         +18
  $8041  87 F5                      PUSH_near              $F5
  $8043  67                         PUSH_qimm   ; inline operand = 7
  $8044  E9 02 A5 08                CALL_abs_imm1          $A502 {native}, $08
  $8048  6E                         PUSH_qimm   ; inline operand = 14
  $8049  8D 12                      BYTE_PUSH_imm1         +18
  $804B  87 F5                      PUSH_near              $F5
  $804D  67                         PUSH_qimm   ; inline operand = 7
  $804E  E9 34 B6 08                CALL_abs_imm1          $B634 {native}, $08
  $8052  85 F7                      STORE_near             $F7
  $8054  81 F5                      LOADL_near             $F5
  $8056  D0                         INC
  $8057  B3                         PUSHL
  $8058  69                         PUSH_qimm   ; inline operand = 9
  $8059  60                         PUSH_qimm   ; inline operand = 0
  $805A  8E 71 89                   PUSH_imm2              $8971
  $805D  8E C0 00                   PUSH_imm2              $00C0
  $8060  61                         PUSH_qimm   ; inline operand = 1
  $8061  E9 3A DE 0C                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $0C
  $8065  85 F9                      STORE_near             $F9
  $8067  AC 44 A5                   CALL_abs               $A544 {native}
  $806A  81 F7                      LOADL_near             $F7
  $806C  D8 7F 80                   JUMPF_abs              $807F
  $806F  A5 6A 66                   BYTE_LOADL_abs         $666A
  $8072  B3                         PUSHL
  $8073  A5 65 66                   BYTE_LOADL_abs         $6665
  $8076  B3                         PUSHL
  $8077  A5 64 66                   BYTE_LOADL_abs         $6664
  $807A  B3                         PUSHL
  $807B  E9 41 AD 06                CALL_abs_imm1          $AD41 {native}, $06
 >$807F  81 F9                      LOADL_near             $F9
  $8081  CF                         RETURN

; ============================================================
; sub $8082   (frame_off=-60, body @ $8087)   [PRG $1E082]
; ============================================================
  $8087  60                         PUSH_qimm   ; inline operand = 0
  $8088  8D 1D                      BYTE_PUSH_imm1         +29
  $808A  DE C6 FF                   LEAL_far               $FFC6
  $808D  B3                         PUSHL
  $808E  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $8092  DE C6 FF                   LEAL_far               $FFC6
  $8095  B3                         PUSHL
  $8096  8E 14 98                   PUSH_imm2              $9814
  $8099  8E C0 00                   PUSH_imm2              $00C0
  $809C  61                         PUSH_qimm   ; inline operand = 1
  $809D  E9 3A DE 08                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $08
  $80A1  AC 75 A6                   CALL_abs               $A675 {native}
  $80A4  AC 98 B5                   CALL_abs               $B598 {native}
  $80A7  A5 8C 6B                   BYTE_LOADL_abs         $6B8C
  $80AA  55                         LOADR_qimm   ; inline operand = 5
  $80AB  B8                         UDIV
  $80AC  B3                         PUSHL
  $80AD  E9 92 B1 02                CALL_abs_imm1          $B192 {native}, $02
  $80B1  41                         LOADL_qimm   ; inline operand = 1
  $80B2  CF                         RETURN

; ============================================================
; sub $80B3   (frame_off=-4, body @ $80B8)   [PRG $1E0B3]
; ============================================================
  $80B8  40                         LOADL_qimm   ; inline operand = 0
  $80B9  2A                         STORE_quick   ; inline operand = 10
 >$80BA  61                         PUSH_qimm   ; inline operand = 1
  $80BB  62                         PUSH_qimm   ; inline operand = 2
  $80BC  8E AF 8D                   PUSH_imm2              $8DAF
  $80BF  62                         PUSH_qimm   ; inline operand = 2
  $80C0  66                         PUSH_qimm   ; inline operand = 6
  $80C1  E9 EB A0 0A                CALL_abs_imm1          $A0EB {native}, $0A
  $80C5  2B                         STORE_quick   ; inline operand = 11
  $80C6  0B                         LOADL_quick   ; inline operand = 11
  $80C7  8C FF 00                   LOADR_imm2             $00FF
  $80CA  C1                         CMPNE
  $80CB  D8 D7 80                   JUMPF_abs              $80D7
  $80CE  0B                         LOADL_quick   ; inline operand = 11
  $80CF  D2                         LSHIFT1
  $80D0  8C B3 8D                   LOADR_imm2             $8DB3
  $80D3  BB                         ADD
  $80D4  B0                         DEREF
  $80D5  DD                         CALLPTR
  $80D6  2A                         STORE_quick   ; inline operand = 10
 >$80D7  0A                         LOADL_quick   ; inline operand = 10
  $80D8  51                         LOADR_qimm   ; inline operand = 1
  $80D9  C0                         CMPEQ
  $80DA  D7 E5 80                   JUMPT_abs              $80E5
  $80DD  0B                         LOADL_quick   ; inline operand = 11
  $80DE  8C FF 00                   LOADR_imm2             $00FF
  $80E1  C0                         CMPEQ
  $80E2  D8 BA 80                   JUMPF_abs              $80BA
 >$80E5  0A                         LOADL_quick   ; inline operand = 10
  $80E6  CF                         RETURN

; ============================================================
; sub $80E7   (frame_off=-13, body @ $80EC)   [PRG $1E0E7]
; ============================================================
  $80EC  40                         LOADL_qimm   ; inline operand = 0
  $80ED  85 F5                      STORE_near             $F5
  $80EF  DE FB FF                   LEAL_far               $FFFB
  $80F2  B3                         PUSHL
  $80F3  60                         PUSH_qimm   ; inline operand = 0
  $80F4  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $80F8  85 F9                      STORE_near             $F9
  $80FA  40                         LOADL_qimm   ; inline operand = 0
  $80FB  D6 19 81                   JUMP_abs               $8119
 >$80FE  DE FB FF                   LEAL_far               $FFFB
  $8101  B3                         PUSHL
  $8102  81 F7                      LOADL_near             $F7
  $8104  B4                         POPR
  $8105  BB                         ADD
  $8106  D3                         BYTE_DEREF
  $8107  57                         LOADR_qimm   ; inline operand = 7
  $8108  B5                         MULT
  $8109  8C 94 6C                   LOADR_imm2             $6C94
  $810C  BB                         ADD
  $810D  B0                         DEREF
  $810E  55                         LOADR_qimm   ; inline operand = 5
  $810F  C2                         SCMPLT
  $8110  D8 16 81                   JUMPF_abs              $8116
  $8113  41                         LOADL_qimm   ; inline operand = 1
  $8114  85 F5                      STORE_near             $F5
 >$8116  81 F7                      LOADL_near             $F7
  $8118  D0                         INC
 >$8119  85 F7                      STORE_near             $F7
  $811B  81 F7                      LOADL_near             $F7
  $811D  83 F9                      LOADR_near             $F9
  $811F  C6                         UCMPLT
  $8120  D7 FE 80                   JUMPT_abs              $80FE
  $8123  81 F5                      LOADL_near             $F5
  $8125  CF                         RETURN

; ============================================================
; sub $8126   (frame_off=-2, body @ $812B)   [PRG $1E126]
; ============================================================
  $812B  AC E8 B2                   CALL_abs               $B2E8 {native}
  $812E  8A 62 66                   LOADL_imm2             $6662
  $8131  2B                         STORE_quick   ; inline operand = 11
  $8132  AC E7 80                   CALL_abs               $80E7 {bytecode}
  $8135  D8 40 81                   JUMPF_abs              $8140
  $8138  61                         PUSH_qimm   ; inline operand = 1
  $8139  8E C2 8D                   PUSH_imm2              $8DC2
  $813C  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
 >$8140  61                         PUSH_qimm   ; inline operand = 1
  $8141  8E DD 8D                   PUSH_imm2              $8DDD
  $8144  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8148  AC 9F CD                   CALL_abs               $CD9F {native}
  $814B  D8 6F 81                   JUMPF_abs              $816F
  $814E  60                         PUSH_qimm   ; inline operand = 0
  $814F  60                         PUSH_qimm   ; inline operand = 0
  $8150  E9 67 B2 04                CALL_abs_imm1          $B267 {native}, $04
  $8154  8E E2 8D                   PUSH_imm2              $8DE2
  $8157  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $815B  8E CF 00                   PUSH_imm2              $00CF
  $815E  0B                         LOADL_quick   ; inline operand = 11
  $815F  7F                         ADD_qimm   ; inline operand = 15
  $8160  B4                         POPR
  $8161  B3                         PUSHL
  $8162  D3                         BYTE_DEREF
  $8163  DA                         AND
  $8164  D4                         BYTE_POPSTORE
  $8165  61                         PUSH_qimm   ; inline operand = 1
  $8166  0B                         LOADL_quick   ; inline operand = 11
  $8167  7F                         ADD_qimm   ; inline operand = 15
  $8168  B4                         POPR
  $8169  B3                         PUSHL
  $816A  D3                         BYTE_DEREF
  $816B  DB                         OR
  $816C  D4                         BYTE_POPSTORE
  $816D  41                         LOADL_qimm   ; inline operand = 1
  $816E  CF                         RETURN
 >$816F  40                         LOADL_qimm   ; inline operand = 0
  $8170  CF                         RETURN

; ============================================================
; sub $8171   (frame_off=-2, body @ $8176)   [PRG $1E171]
; ============================================================
  $8176  AC E8 B2                   CALL_abs               $B2E8 {native}
  $8179  8A 62 66                   LOADL_imm2             $6662
  $817C  2B                         STORE_quick   ; inline operand = 11
  $817D  61                         PUSH_qimm   ; inline operand = 1
  $817E  8E F5 8D                   PUSH_imm2              $8DF5
  $8181  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8185  AC 9F CD                   CALL_abs               $CD9F {native}
  $8188  D8 96 81                   JUMPF_abs              $8196
  $818B  8D 40                      BYTE_PUSH_imm1         +64
  $818D  0B                         LOADL_quick   ; inline operand = 11
  $818E  7F                         ADD_qimm   ; inline operand = 15
  $818F  B4                         POPR
  $8190  B3                         PUSHL
  $8191  D3                         BYTE_DEREF
  $8192  DB                         OR
  $8193  D4                         BYTE_POPSTORE
  $8194  41                         LOADL_qimm   ; inline operand = 1
  $8195  CF                         RETURN
 >$8196  40                         LOADL_qimm   ; inline operand = 0
  $8197  CF                         RETURN

; ============================================================
; sub $8198   (frame_off=-4, body @ $819D)   [PRG $1E198]
; ============================================================
  $819D  AC 70 B5                   CALL_abs               $B570 {native}
  $81A0  AC 63 B5                   CALL_abs               $B563 {native}
 >$81A3  63                         PUSH_qimm   ; inline operand = 3
  $81A4  65                         PUSH_qimm   ; inline operand = 5
  $81A5  8E 19 8E                   PUSH_imm2              $8E19
  $81A8  62                         PUSH_qimm   ; inline operand = 2
  $81A9  66                         PUSH_qimm   ; inline operand = 6
  $81AA  E9 EB A0 0A                CALL_abs_imm1          $A0EB {native}, $0A
  $81AE  2B                         STORE_quick   ; inline operand = 11
  $81AF  0B                         LOADL_quick   ; inline operand = 11
  $81B0  8C FF 00                   LOADR_imm2             $00FF
  $81B3  C0                         CMPEQ
  $81B4  D7 C2 81                   JUMPT_abs              $81C2
  $81B7  0B                         LOADL_quick   ; inline operand = 11
  $81B8  D2                         LSHIFT1
  $81B9  8C 23 8E                   LOADR_imm2             $8E23
  $81BC  BB                         ADD
  $81BD  B0                         DEREF
  $81BE  DD                         CALLPTR
  $81BF  D8 A3 81                   JUMPF_abs              $81A3
 >$81C2  AC E5 B5                   CALL_abs               $B5E5 {native}
  $81C5  A5 71 66                   BYTE_LOADL_abs         $6671
  $81C8  8B 20                      BYTE_LOADR_imm1        +32
  $81CA  DA                         AND
  $81CB  D7 01 82                   JUMPT_abs              $8201
  $81CE  A5 65 66                   BYTE_LOADL_abs         $6665
  $81D1  57                         LOADR_qimm   ; inline operand = 7
  $81D2  C6                         UCMPLT
  $81D3  D8 DA 81                   JUMPF_abs              $81DA
  $81D6  42                         LOADL_qimm   ; inline operand = 2
  $81D7  D6 DB 81                   JUMP_abs               $81DB
 >$81DA  41                         LOADL_qimm   ; inline operand = 1
 >$81DB  A9 7D 73                   BYTE_STORE_abs         $737D (ui_shared_var_737d)
  $81DE  A5 7D 73                   BYTE_LOADL_abs         $737D (ui_shared_var_737d)
  $81E1  51                         LOADR_qimm   ; inline operand = 1
  $81E2  C0                         CMPEQ
  $81E3  D8 EA 81                   JUMPF_abs              $81EA
  $81E6  47                         LOADL_qimm   ; inline operand = 7
  $81E7  D6 ED 81                   JUMP_abs               $81ED
 >$81EA  8A E7 00                   LOADL_imm2             $00E7
 >$81ED  B3                         PUSHL
  $81EE  60                         PUSH_qimm   ; inline operand = 0
  $81EF  8D 12                      BYTE_PUSH_imm1         +18
  $81F1  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $81F5  61                         PUSH_qimm   ; inline operand = 1
  $81F6  8D 11                      BYTE_PUSH_imm1         +17
  $81F8  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $81FC  60                         PUSH_qimm   ; inline operand = 0
  $81FD  E9 EA AE 02                CALL_abs_imm1          $AEEA {native}, $02
 >$8201  CF                         RETURN

; ============================================================
; sub $8202   (frame_off=-2, body @ $8207)   [PRG $1E202]
; ============================================================
  $8207  40                         LOADL_qimm   ; inline operand = 0
  $8208  2B                         STORE_quick   ; inline operand = 11
  $8209  3C                         PUSH_quick   ; inline operand = 12
  $820A  E9 7B D8 02                CALL_abs_imm1          $D87B {native}, $02
  $820E  B3                         PUSHL
  $820F  0C                         LOADL_quick   ; inline operand = 12
  $8210  57                         LOADR_qimm   ; inline operand = 7
  $8211  B5                         MULT
  $8212  8C 90 6C                   LOADR_imm2             $6C90
  $8215  BB                         ADD
  $8216  D3                         BYTE_DEREF
  $8217  B4                         POPR
  $8218  C2                         SCMPLT
  $8219  D8 1E 82                   JUMPF_abs              $821E
  $821C  41                         LOADL_qimm   ; inline operand = 1
  $821D  2B                         STORE_quick   ; inline operand = 11
 >$821E  3C                         PUSH_quick   ; inline operand = 12
  $821F  E9 BE D8 02                CALL_abs_imm1          $D8BE {native}, $02
  $8223  B3                         PUSHL
  $8224  0C                         LOADL_quick   ; inline operand = 12
  $8225  57                         LOADR_qimm   ; inline operand = 7
  $8226  B5                         MULT
  $8227  8C 91 6C                   LOADR_imm2             $6C91
  $822A  BB                         ADD
  $822B  D3                         BYTE_DEREF
  $822C  B4                         POPR
  $822D  C2                         SCMPLT
  $822E  D8 33 82                   JUMPF_abs              $8233
  $8231  41                         LOADL_qimm   ; inline operand = 1
  $8232  2B                         STORE_quick   ; inline operand = 11
 >$8233  3C                         PUSH_quick   ; inline operand = 12
  $8234  E9 2F D9 02                CALL_abs_imm1          $D92F {native}, $02
  $8238  B3                         PUSHL
  $8239  0C                         LOADL_quick   ; inline operand = 12
  $823A  57                         LOADR_qimm   ; inline operand = 7
  $823B  B5                         MULT
  $823C  8C 92 6C                   LOADR_imm2             $6C92
  $823F  BB                         ADD
  $8240  D3                         BYTE_DEREF
  $8241  B4                         POPR
  $8242  C2                         SCMPLT
  $8243  D8 48 82                   JUMPF_abs              $8248
  $8246  41                         LOADL_qimm   ; inline operand = 1
  $8247  2B                         STORE_quick   ; inline operand = 11
 >$8248  0B                         LOADL_quick   ; inline operand = 11
  $8249  CF                         RETURN

; ============================================================
; sub $824A   (frame_off=+0, body @ $824F)   [PRG $1E24A]
; ============================================================
  $824F  0D                         LOADL_quick   ; inline operand = 13
  $8250  55                         LOADR_qimm   ; inline operand = 5
  $8251  B5                         MULT
  $8252  B3                         PUSHL
  $8253  0C                         LOADL_quick   ; inline operand = 12
  $8254  57                         LOADR_qimm   ; inline operand = 7
  $8255  B5                         MULT
  $8256  8C 90 6C                   LOADR_imm2             $6C90
  $8259  BB                         ADD
  $825A  B4                         POPR
  $825B  B3                         PUSHL
  $825C  D3                         BYTE_DEREF
  $825D  BB                         ADD
  $825E  D4                         BYTE_POPSTORE
  $825F  3C                         PUSH_quick   ; inline operand = 12
  $8260  E9 7B D8 02                CALL_abs_imm1          $D87B {native}, $02
  $8264  B3                         PUSHL
  $8265  0C                         LOADL_quick   ; inline operand = 12
  $8266  57                         LOADR_qimm   ; inline operand = 7
  $8267  B5                         MULT
  $8268  8C 90 6C                   LOADR_imm2             $6C90
  $826B  BB                         ADD
  $826C  D3                         BYTE_DEREF
  $826D  B4                         POPR
  $826E  C8                         UCMPGT
  $826F  D8 80 82                   JUMPF_abs              $8280
  $8272  0C                         LOADL_quick   ; inline operand = 12
  $8273  57                         LOADR_qimm   ; inline operand = 7
  $8274  B5                         MULT
  $8275  8C 90 6C                   LOADR_imm2             $6C90
  $8278  BB                         ADD
  $8279  B3                         PUSHL
  $827A  3C                         PUSH_quick   ; inline operand = 12
  $827B  E9 7B D8 02                CALL_abs_imm1          $D87B {native}, $02
  $827F  D4                         BYTE_POPSTORE
 >$8280  CF                         RETURN

; ============================================================
; sub $8281   (frame_off=+0, body @ $8286)   [PRG $1E281]
; ============================================================
  $8286  0D                         LOADL_quick   ; inline operand = 13
  $8287  55                         LOADR_qimm   ; inline operand = 5
  $8288  B5                         MULT
  $8289  B3                         PUSHL
  $828A  0C                         LOADL_quick   ; inline operand = 12
  $828B  57                         LOADR_qimm   ; inline operand = 7
  $828C  B5                         MULT
  $828D  8C 91 6C                   LOADR_imm2             $6C91
  $8290  BB                         ADD
  $8291  B4                         POPR
  $8292  B3                         PUSHL
  $8293  D3                         BYTE_DEREF
  $8294  BB                         ADD
  $8295  D4                         BYTE_POPSTORE
  $8296  3C                         PUSH_quick   ; inline operand = 12
  $8297  E9 BE D8 02                CALL_abs_imm1          $D8BE {native}, $02
  $829B  B3                         PUSHL
  $829C  0C                         LOADL_quick   ; inline operand = 12
  $829D  57                         LOADR_qimm   ; inline operand = 7
  $829E  B5                         MULT
  $829F  8C 91 6C                   LOADR_imm2             $6C91
  $82A2  BB                         ADD
  $82A3  D3                         BYTE_DEREF
  $82A4  B4                         POPR
  $82A5  C8                         UCMPGT
  $82A6  D8 B7 82                   JUMPF_abs              $82B7
  $82A9  0C                         LOADL_quick   ; inline operand = 12
  $82AA  57                         LOADR_qimm   ; inline operand = 7
  $82AB  B5                         MULT
  $82AC  8C 91 6C                   LOADR_imm2             $6C91
  $82AF  BB                         ADD
  $82B0  B3                         PUSHL
  $82B1  3C                         PUSH_quick   ; inline operand = 12
  $82B2  E9 BE D8 02                CALL_abs_imm1          $D8BE {native}, $02
  $82B6  D4                         BYTE_POPSTORE
 >$82B7  CF                         RETURN

; ============================================================
; sub $82B8   (frame_off=+0, body @ $82BD)   [PRG $1E2B8]
; ============================================================
  $82BD  0D                         LOADL_quick   ; inline operand = 13
  $82BE  55                         LOADR_qimm   ; inline operand = 5
  $82BF  B5                         MULT
  $82C0  B3                         PUSHL
  $82C1  0C                         LOADL_quick   ; inline operand = 12
  $82C2  57                         LOADR_qimm   ; inline operand = 7
  $82C3  B5                         MULT
  $82C4  8C 92 6C                   LOADR_imm2             $6C92
  $82C7  BB                         ADD
  $82C8  B4                         POPR
  $82C9  B3                         PUSHL
  $82CA  D3                         BYTE_DEREF
  $82CB  BB                         ADD
  $82CC  D4                         BYTE_POPSTORE
  $82CD  3C                         PUSH_quick   ; inline operand = 12
  $82CE  E9 2F D9 02                CALL_abs_imm1          $D92F {native}, $02
  $82D2  B3                         PUSHL
  $82D3  0C                         LOADL_quick   ; inline operand = 12
  $82D4  57                         LOADR_qimm   ; inline operand = 7
  $82D5  B5                         MULT
  $82D6  8C 92 6C                   LOADR_imm2             $6C92
  $82D9  BB                         ADD
  $82DA  D3                         BYTE_DEREF
  $82DB  B4                         POPR
  $82DC  C8                         UCMPGT
  $82DD  D8 EE 82                   JUMPF_abs              $82EE
  $82E0  0C                         LOADL_quick   ; inline operand = 12
  $82E1  57                         LOADR_qimm   ; inline operand = 7
  $82E2  B5                         MULT
  $82E3  8C 92 6C                   LOADR_imm2             $6C92
  $82E6  BB                         ADD
  $82E7  B3                         PUSHL
  $82E8  3C                         PUSH_quick   ; inline operand = 12
  $82E9  E9 2F D9 02                CALL_abs_imm1          $D92F {native}, $02
  $82ED  D4                         BYTE_POPSTORE
 >$82EE  CF                         RETURN

; ============================================================
; sub $82EF   (frame_off=-4, body @ $82F4)   [PRG $1E2EF]
; ============================================================
  $82F4  40                         LOADL_qimm   ; inline operand = 0
  $82F5  D6 2B 83                   JUMP_abs               $832B
 >$82F8  0D                         LOADL_quick   ; inline operand = 13
  $82F9  1B                         LOADR_quick   ; inline operand = 11
  $82FA  BB                         ADD
  $82FB  D3                         BYTE_DEREF
  $82FC  8B 18                      BYTE_LOADR_imm1        +24
  $82FE  B5                         MULT
  $82FF  8C A4 6A                   LOADR_imm2             $6AA4
  $8302  BB                         ADD
  $8303  2A                         STORE_quick   ; inline operand = 10
  $8304  0A                         LOADL_quick   ; inline operand = 10
  $8305  8F 14                      BYTE_ADD_imm1          +20
  $8307  B0                         DEREF
  $8308  1E                         LOADR_quick   ; inline operand = 14
  $8309  C2                         SCMPLT
  $830A  D8 1E 83                   JUMPF_abs              $831E
  $830D  0A                         LOADL_quick   ; inline operand = 10
  $830E  8F 14                      BYTE_ADD_imm1          +20
  $8310  B0                         DEREF
  $8311  CD                         SWAP
  $8312  0E                         LOADL_quick   ; inline operand = 14
  $8313  BC                         SUB
  $8314  2E                         STORE_quick   ; inline operand = 14
  $8315  0A                         LOADL_quick   ; inline operand = 10
  $8316  8F 14                      BYTE_ADD_imm1          +20
  $8318  B3                         PUSHL
  $8319  40                         LOADL_qimm   ; inline operand = 0
  $831A  B1                         POPSTORE
  $831B  D6 29 83                   JUMP_abs               $8329
 >$831E  3E                         PUSH_quick   ; inline operand = 14
  $831F  0A                         LOADL_quick   ; inline operand = 10
  $8320  8F 14                      BYTE_ADD_imm1          +20
  $8322  B4                         POPR
  $8323  B3                         PUSHL
  $8324  B0                         DEREF
  $8325  BC                         SUB
  $8326  B1                         POPSTORE
  $8327  40                         LOADL_qimm   ; inline operand = 0
  $8328  2E                         STORE_quick   ; inline operand = 14
 >$8329  0B                         LOADL_quick   ; inline operand = 11
  $832A  D0                         INC
 >$832B  2B                         STORE_quick   ; inline operand = 11
  $832C  0B                         LOADL_quick   ; inline operand = 11
  $832D  1C                         LOADR_quick   ; inline operand = 12
  $832E  C6                         UCMPLT
  $832F  D8 36 83                   JUMPF_abs              $8336
  $8332  0E                         LOADL_quick   ; inline operand = 14
  $8333  D7 F8 82                   JUMPT_abs              $82F8
 >$8336  CF                         RETURN

; ============================================================
; sub $8337   (frame_off=+0, body @ $833C)   [PRG $1E337]
; ============================================================
  $833C  0C                         LOADL_quick   ; inline operand = 12
  $833D  57                         LOADR_qimm   ; inline operand = 7
  $833E  B5                         MULT
  $833F  8C 90 6C                   LOADR_imm2             $6C90
  $8342  BB                         ADD
  $8343  D3                         BYTE_DEREF
  $8344  CF                         RETURN

; ============================================================
; sub $8345   (frame_off=+0, body @ $834A)   [PRG $1E345]
; ============================================================
  $834A  0C                         LOADL_quick   ; inline operand = 12
  $834B  57                         LOADR_qimm   ; inline operand = 7
  $834C  B5                         MULT
  $834D  8C 91 6C                   LOADR_imm2             $6C91
  $8350  BB                         ADD
  $8351  D3                         BYTE_DEREF
  $8352  CF                         RETURN

; ============================================================
; sub $8353   (frame_off=+0, body @ $8358)   [PRG $1E353]
; ============================================================
  $8358  0C                         LOADL_quick   ; inline operand = 12
  $8359  57                         LOADR_qimm   ; inline operand = 7
  $835A  B5                         MULT
  $835B  8C 92 6C                   LOADR_imm2             $6C92
  $835E  BB                         ADD
  $835F  D3                         BYTE_DEREF
  $8360  CF                         RETURN

; ============================================================
; sub $8361   (frame_off=+0, body @ $8366)   [PRG $1E361]
; ============================================================
  $8366  3C                         PUSH_quick   ; inline operand = 12
  $8367  E9 7B D8 02                CALL_abs_imm1          $D87B {native}, $02
  $836B  CF                         RETURN

; ============================================================
; sub $836C   (frame_off=+0, body @ $8371)   [PRG $1E36C]
; ============================================================
  $8371  3C                         PUSH_quick   ; inline operand = 12
  $8372  E9 BE D8 02                CALL_abs_imm1          $D8BE {native}, $02
  $8376  CF                         RETURN

; ============================================================
; sub $8377   (frame_off=+0, body @ $837C)   [PRG $1E377]
; ============================================================
  $837C  3C                         PUSH_quick   ; inline operand = 12
  $837D  E9 2F D9 02                CALL_abs_imm1          $D92F {native}, $02
  $8381  CF                         RETURN

; ============================================================
; sub $8382   (frame_off=-16, body @ $8387)   [PRG $1E382]
; ============================================================
  $8387  8A E1 00                   LOADL_imm2             $00E1
  $838A  A2 F1 FF                   BYTE_STORE_far         $FFF1
  $838D  43                         LOADL_qimm   ; inline operand = 3
  $838E  A2 F2 FF                   BYTE_STORE_far         $FFF2
  $8391  0F                         LOADL_quick   ; inline operand = 15
  $8392  D8 99 83                   JUMPF_abs              $8399
  $8395  0F                         LOADL_quick   ; inline operand = 15
  $8396  D6 9A 83                   JUMP_abs               $839A
 >$8399  41                         LOADL_qimm   ; inline operand = 1
 >$839A  B3                         PUSHL
  $839B  A4 90 73                   LOADL_abs              $7390
  $839E  1D                         LOADR_quick   ; inline operand = 13
  $839F  BC                         SUB
  $83A0  B4                         POPR
  $83A1  B6                         SDIV
  $83A2  D0                         INC
  $83A3  28                         STORE_quick   ; inline operand = 8
  $83A4  40                         LOADL_qimm   ; inline operand = 0
  $83A5  27                         STORE_quick   ; inline operand = 7
  $83A6  0C                         LOADL_quick   ; inline operand = 12
  $83A7  83 15                      LOADR_near             $15
  $83A9  B6                         SDIV
  $83AA  26                         STORE_quick   ; inline operand = 6
  $83AB  62                         PUSH_qimm   ; inline operand = 2
  $83AC  60                         PUSH_qimm   ; inline operand = 0
  $83AD  6C                         PUSH_qimm   ; inline operand = 12
  $83AE  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
 >$83B2  A4 92 73                   LOADL_abs              $7392
  $83B5  53                         LOADR_qimm   ; inline operand = 3
  $83B6  BD                         LSHIFT
  $83B7  B3                         PUSHL
  $83B8  A5 7D 73                   BYTE_LOADL_abs         $737D (ui_shared_var_737d)
  $83BB  D2                         LSHIFT1
  $83BC  8C 14 DF                   LOADR_imm2             $DF14
  $83BF  BB                         ADD
  $83C0  B0                         DEREF
  $83C1  B4                         POPR
  $83C2  BB                         ADD
  $83C3  A2 F0 FF                   BYTE_STORE_far         $FFF0
  $83C6  A4 90 73                   LOADL_abs              $7390
  $83C9  53                         LOADR_qimm   ; inline operand = 3
  $83CA  BD                         LSHIFT
  $83CB  A2 F3 FF                   BYTE_STORE_far         $FFF3
  $83CE  61                         PUSH_qimm   ; inline operand = 1
  $83CF  60                         PUSH_qimm   ; inline operand = 0
  $83D0  DE F0 FF                   LEAL_far               $FFF0
  $83D3  B3                         PUSHL
  $83D4  6D                         PUSH_qimm   ; inline operand = 13
  $83D5  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $83D9  81 13                      LOADL_near             $13
  $83DB  D8 E3 83                   JUMPF_abs              $83E3
  $83DE  81 13                      LOADL_near             $13
  $83E0  D6 E4 83                   JUMP_abs               $83E4
 >$83E3  41                         LOADL_qimm   ; inline operand = 1
 >$83E4  B3                         PUSHL
  $83E5  A4 92 73                   LOADL_abs              $7392
  $83E8  1E                         LOADR_quick   ; inline operand = 14
  $83E9  BC                         SUB
  $83EA  B4                         POPR
  $83EB  B6                         SDIV
  $83EC  B3                         PUSHL
  $83ED  0F                         LOADL_quick   ; inline operand = 15
  $83EE  D8 F5 83                   JUMPF_abs              $83F5
  $83F1  0F                         LOADL_quick   ; inline operand = 15
  $83F2  D6 F6 83                   JUMP_abs               $83F6
 >$83F5  41                         LOADL_qimm   ; inline operand = 1
 >$83F6  B3                         PUSHL
  $83F7  A4 90 73                   LOADL_abs              $7390
  $83FA  1D                         LOADR_quick   ; inline operand = 13
  $83FB  BC                         SUB
  $83FC  B4                         POPR
  $83FD  B6                         SDIV
  $83FE  83 15                      LOADR_near             $15
  $8400  B5                         MULT
  $8401  B4                         POPR
  $8402  BB                         ADD
  $8403  2B                         STORE_quick   ; inline operand = 11
  $8404  6C                         PUSH_qimm   ; inline operand = 12
  $8405  37                         PUSH_quick   ; inline operand = 7
  $8406  E9 4D CE 04                CALL_abs_imm1          $CE4D {native}, $04
  $840A  60                         PUSH_qimm   ; inline operand = 0
  $840B  E9 A9 C4 02                CALL_abs_imm1          $C4A9 {native}, $02
  $840F  27                         STORE_quick   ; inline operand = 7
  $8410  D9 06 00 01 00 2D 84 02 00 42 84 10 ... SWITCH_noncontig       count=6   ; .table 6 (key,target) + default (noncontiguous); SWITCH 1=>$842D 2=>$8442 16=>$8454 32=>$8474 64=>$84A2 128=>$84CD default=>$83B2
 >$842D  61                         PUSH_qimm   ; inline operand = 1
  $842E  61                         PUSH_qimm   ; inline operand = 1
  $842F  DE F0 FF                   LEAL_far               $FFF0
  $8432  B3                         PUSHL
  $8433  6D                         PUSH_qimm   ; inline operand = 13
  $8434  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
 >$8438  60                         PUSH_qimm   ; inline operand = 0
  $8439  E9 A9 C4 02                CALL_abs_imm1          $C4A9 {native}, $02
  $843D  D7 38 84                   JUMPT_abs              $8438
  $8440  0B                         LOADL_quick   ; inline operand = 11
  $8441  CF                         RETURN
 >$8442  62                         PUSH_qimm   ; inline operand = 2
  $8443  60                         PUSH_qimm   ; inline operand = 0
  $8444  6C                         PUSH_qimm   ; inline operand = 12
  $8445  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
 >$8449  60                         PUSH_qimm   ; inline operand = 0
  $844A  E9 A9 C4 02                CALL_abs_imm1          $C4A9 {native}, $02
  $844E  D7 49 84                   JUMPT_abs              $8449
  $8451  89 FF                      BYTE_LOADL_imm1        -1
  $8453  CF                         RETURN
 >$8454  A4 92 73                   LOADL_abs              $7392
  $8457  1E                         LOADR_quick   ; inline operand = 14
  $8458  C4                         SCMPGT
  $8459  D8 69 84                   JUMPF_abs              $8469
  $845C  81 13                      LOADL_near             $13
  $845E  CD                         SWAP
  $845F  A4 92 73                   LOADL_abs              $7392
  $8462  BC                         SUB
 >$8463  A8 92 73                   STORE_abs              $7392
  $8466  D6 B2 83                   JUMP_abs               $83B2
 >$8469  81 15                      LOADL_near             $15
  $846B  D1                         DEC
  $846C  83 13                      LOADR_near             $13
  $846E  B5                         MULT
  $846F  1E                         LOADR_quick   ; inline operand = 14
 >$8470  BB                         ADD
  $8471  D6 63 84                   JUMP_abs               $8463
 >$8474  81 13                      LOADL_near             $13
  $8476  D8 7E 84                   JUMPF_abs              $847E
  $8479  81 13                      LOADL_near             $13
  $847B  D6 7F 84                   JUMP_abs               $847F
 >$847E  41                         LOADL_qimm   ; inline operand = 1
 >$847F  B3                         PUSHL
  $8480  A4 92 73                   LOADL_abs              $7392
  $8483  1E                         LOADR_quick   ; inline operand = 14
  $8484  BC                         SUB
  $8485  B4                         POPR
  $8486  B6                         SDIV
  $8487  D0                         INC
  $8488  83 15                      LOADR_near             $15
  $848A  C2                         SCMPLT
  $848B  D8 9E 84                   JUMPF_abs              $849E
  $848E  0B                         LOADL_quick   ; inline operand = 11
  $848F  D0                         INC
  $8490  1C                         LOADR_quick   ; inline operand = 12
  $8491  C7                         UCMPLE
  $8492  D8 9E 84                   JUMPF_abs              $849E
  $8495  81 13                      LOADL_near             $13
  $8497  CD                         SWAP
  $8498  A4 92 73                   LOADL_abs              $7392
  $849B  D6 70 84                   JUMP_abs               $8470
 >$849E  0E                         LOADL_quick   ; inline operand = 14
  $849F  D6 63 84                   JUMP_abs               $8463
 >$84A2  08                         LOADL_quick   ; inline operand = 8
  $84A3  51                         LOADR_qimm   ; inline operand = 1
  $84A4  C4                         SCMPGT
  $84A5  D8 B7 84                   JUMPF_abs              $84B7
  $84A8  08                         LOADL_quick   ; inline operand = 8
  $84A9  D1                         DEC
  $84AA  28                         STORE_quick   ; inline operand = 8
  $84AB  0F                         LOADL_quick   ; inline operand = 15
  $84AC  CD                         SWAP
  $84AD  A4 90 73                   LOADL_abs              $7390
  $84B0  BC                         SUB
 >$84B1  A8 90 73                   STORE_abs              $7390
  $84B4  D6 B2 83                   JUMP_abs               $83B2
 >$84B7  06                         LOADL_quick   ; inline operand = 6
  $84B8  28                         STORE_quick   ; inline operand = 8
  $84B9  08                         LOADL_quick   ; inline operand = 8
  $84BA  D1                         DEC
  $84BB  1F                         LOADR_quick   ; inline operand = 15
  $84BC  B5                         MULT
  $84BD  1D                         LOADR_quick   ; inline operand = 13
  $84BE  D6 C9 84                   JUMP_abs               $84C9
 >$84C1  08                         LOADL_quick   ; inline operand = 8
  $84C2  D0                         INC
  $84C3  28                         STORE_quick   ; inline operand = 8
  $84C4  0F                         LOADL_quick   ; inline operand = 15
  $84C5  CD                         SWAP
  $84C6  A4 90 73                   LOADL_abs              $7390
 >$84C9  BB                         ADD
  $84CA  D6 B1 84                   JUMP_abs               $84B1
 >$84CD  08                         LOADL_quick   ; inline operand = 8
  $84CE  16                         LOADR_quick   ; inline operand = 6
  $84CF  C2                         SCMPLT
  $84D0  D7 C1 84                   JUMPT_abs              $84C1
  $84D3  0D                         LOADL_quick   ; inline operand = 13
  $84D4  A8 90 73                   STORE_abs              $7390
  $84D7  41                         LOADL_qimm   ; inline operand = 1
  $84D8  28                         STORE_quick   ; inline operand = 8
  $84D9  D6 B2 83                   JUMP_abs               $83B2

; ============================================================
; sub $84DD   (frame_off=+0, body @ $84E2)   [PRG $1E4DD]
; ============================================================
  $84E2  62                         PUSH_qimm   ; inline operand = 2
  $84E3  60                         PUSH_qimm   ; inline operand = 0
  $84E4  6C                         PUSH_qimm   ; inline operand = 12
  $84E5  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $84E9  AC 4B B2                   CALL_abs               $B24B {native}
  $84EC  61                         PUSH_qimm   ; inline operand = 1
  $84ED  8E 4C 8E                   PUSH_imm2              $8E4C
  $84F0  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $84F4  AC 9F CD                   CALL_abs               $CD9F {native}
  $84F7  CF                         RETURN

; ============================================================
; sub $84F8   (frame_off=-4, body @ $84FD)   [PRG $1E4F8]
; ============================================================
  $84FD  0D                         LOADL_quick   ; inline operand = 13
  $84FE  57                         LOADR_qimm   ; inline operand = 7
  $84FF  B5                         MULT
  $8500  8C 90 6C                   LOADR_imm2             $6C90
  $8503  BB                         ADD
  $8504  D3                         BYTE_DEREF
  $8505  2B                         STORE_quick   ; inline operand = 11
  $8506  3D                         PUSH_quick   ; inline operand = 13
  $8507  E9 7B D8 02                CALL_abs_imm1          $D87B {native}, $02
  $850B  2A                         STORE_quick   ; inline operand = 10
  $850C  3C                         PUSH_quick   ; inline operand = 12
  $850D  69                         PUSH_qimm   ; inline operand = 9
  $850E  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8512  0B                         LOADL_quick   ; inline operand = 11
  $8513  1A                         LOADR_quick   ; inline operand = 10
  $8514  C6                         UCMPLT
  $8515  D8 24 85                   JUMPF_abs              $8524
  $8518  3A                         PUSH_quick   ; inline operand = 10
  $8519  3B                         PUSH_quick   ; inline operand = 11
  $851A  8E 57 8E                   PUSH_imm2              $8E57
  $851D  E9 99 C7 06                CALL_abs_imm1          $C799 {native}, $06
  $8521  D6 2C 85                   JUMP_abs               $852C
 >$8524  61                         PUSH_qimm   ; inline operand = 1
  $8525  8E 5F 8E                   PUSH_imm2              $8E5F
  $8528  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
 >$852C  CF                         RETURN

; ============================================================
; sub $852D   (frame_off=-4, body @ $8532)   [PRG $1E52D]
; ============================================================
  $8532  0D                         LOADL_quick   ; inline operand = 13
  $8533  57                         LOADR_qimm   ; inline operand = 7
  $8534  B5                         MULT
  $8535  8C 91 6C                   LOADR_imm2             $6C91
  $8538  BB                         ADD
  $8539  D3                         BYTE_DEREF
  $853A  2B                         STORE_quick   ; inline operand = 11
  $853B  3D                         PUSH_quick   ; inline operand = 13
  $853C  E9 BE D8 02                CALL_abs_imm1          $D8BE {native}, $02
  $8540  2A                         STORE_quick   ; inline operand = 10
  $8541  3C                         PUSH_quick   ; inline operand = 12
  $8542  8D 10                      BYTE_PUSH_imm1         +16
  $8544  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8548  0B                         LOADL_quick   ; inline operand = 11
  $8549  1A                         LOADR_quick   ; inline operand = 10
  $854A  C6                         UCMPLT
  $854B  D8 5A 85                   JUMPF_abs              $855A
  $854E  3A                         PUSH_quick   ; inline operand = 10
  $854F  3B                         PUSH_quick   ; inline operand = 11
  $8550  8E 67 8E                   PUSH_imm2              $8E67
  $8553  E9 99 C7 06                CALL_abs_imm1          $C799 {native}, $06
  $8557  D6 62 85                   JUMP_abs               $8562
 >$855A  61                         PUSH_qimm   ; inline operand = 1
  $855B  8E 6F 8E                   PUSH_imm2              $8E6F
  $855E  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
 >$8562  CF                         RETURN

; ============================================================
; sub $8563   (frame_off=-4, body @ $8568)   [PRG $1E563]
; ============================================================
  $8568  0D                         LOADL_quick   ; inline operand = 13
  $8569  57                         LOADR_qimm   ; inline operand = 7
  $856A  B5                         MULT
  $856B  8C 92 6C                   LOADR_imm2             $6C92
  $856E  BB                         ADD
  $856F  D3                         BYTE_DEREF
  $8570  2B                         STORE_quick   ; inline operand = 11
  $8571  3D                         PUSH_quick   ; inline operand = 13
  $8572  E9 2F D9 02                CALL_abs_imm1          $D92F {native}, $02
  $8576  2A                         STORE_quick   ; inline operand = 10
  $8577  3C                         PUSH_quick   ; inline operand = 12
  $8578  8D 17                      BYTE_PUSH_imm1         +23
  $857A  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $857E  0B                         LOADL_quick   ; inline operand = 11
  $857F  1A                         LOADR_quick   ; inline operand = 10
  $8580  C6                         UCMPLT
  $8581  D8 90 85                   JUMPF_abs              $8590
  $8584  3A                         PUSH_quick   ; inline operand = 10
  $8585  3B                         PUSH_quick   ; inline operand = 11
  $8586  8E 77 8E                   PUSH_imm2              $8E77
  $8589  E9 99 C7 06                CALL_abs_imm1          $C799 {native}, $06
  $858D  D6 98 85                   JUMP_abs               $8598
 >$8590  61                         PUSH_qimm   ; inline operand = 1
  $8591  8E 7F 8E                   PUSH_imm2              $8E7F
  $8594  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
 >$8598  CF                         RETURN

; ============================================================
; sub $8599   (frame_off=+0, body @ $859E)   [PRG $1E599]
; ============================================================
  $859E  61                         PUSH_qimm   ; inline operand = 1
  $859F  8E 87 8E                   PUSH_imm2              $8E87
  $85A2  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $85A6  3D                         PUSH_quick   ; inline operand = 13
  $85A7  3C                         PUSH_quick   ; inline operand = 12
  $85A8  E9 F8 84 04                CALL_abs_imm1          $84F8 {bytecode}, $04
  $85AC  3D                         PUSH_quick   ; inline operand = 13
  $85AD  3C                         PUSH_quick   ; inline operand = 12
  $85AE  E9 2D 85 04                CALL_abs_imm1          $852D {bytecode}, $04
  $85B2  3D                         PUSH_quick   ; inline operand = 13
  $85B3  3C                         PUSH_quick   ; inline operand = 12
  $85B4  E9 63 85 04                CALL_abs_imm1          $8563 {bytecode}, $04
  $85B8  CF                         RETURN

; ============================================================
; sub $85B9   (frame_off=+0, body @ $85BE)   [PRG $1E5B9]
; ============================================================
  $85BE  0C                         LOADL_quick   ; inline operand = 12
  $85BF  7D                         ADD_qimm   ; inline operand = 13
  $85C0  B3                         PUSHL
  $85C1  8D 14                      BYTE_PUSH_imm1         +20
  $85C3  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $85C7  3D                         PUSH_quick   ; inline operand = 13
  $85C8  8E 8E 8E                   PUSH_imm2              $8E8E
  $85CB  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $85CF  CF                         RETURN

; ============================================================
; sub $85D0   (frame_off=+0, body @ $85D5)   [PRG $1E5D0]
; ============================================================
  $85D5  60                         PUSH_qimm   ; inline operand = 0
  $85D6  8E 92 8E                   PUSH_imm2              $8E92
  $85D9  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $85DD  8D 10                      BYTE_PUSH_imm1         +16
  $85DF  8D 1E                      BYTE_PUSH_imm1         +30
  $85E1  3C                         PUSH_quick   ; inline operand = 12
  $85E2  61                         PUSH_qimm   ; inline operand = 1
  $85E3  E9 02 A5 08                CALL_abs_imm1          $A502 {native}, $08
  $85E7  8E E8 00                   PUSH_imm2              $00E8
  $85EA  8E 3A B8                   PUSH_imm2              $B83A
  $85ED  8E 5A B6                   PUSH_imm2              $B65A
  $85F0  8D 10                      BYTE_PUSH_imm1         +16
  $85F2  8D 1E                      BYTE_PUSH_imm1         +30
  $85F4  3C                         PUSH_quick   ; inline operand = 12
  $85F5  61                         PUSH_qimm   ; inline operand = 1
  $85F6  69                         PUSH_qimm   ; inline operand = 9
  $85F7  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $85FB  3C                         PUSH_quick   ; inline operand = 12
  $85FC  63                         PUSH_qimm   ; inline operand = 3
  $85FD  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8601  60                         PUSH_qimm   ; inline operand = 0
  $8602  8E 99 8E                   PUSH_imm2              $8E99
  $8605  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8609  3C                         PUSH_quick   ; inline operand = 12
  $860A  6A                         PUSH_qimm   ; inline operand = 10
  $860B  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $860F  60                         PUSH_qimm   ; inline operand = 0
  $8610  8E 9E 8E                   PUSH_imm2              $8E9E
  $8613  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8617  3C                         PUSH_quick   ; inline operand = 12
  $8618  8D 11                      BYTE_PUSH_imm1         +17
  $861A  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $861E  60                         PUSH_qimm   ; inline operand = 0
  $861F  8E A3 8E                   PUSH_imm2              $8EA3
  $8622  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8626  3C                         PUSH_quick   ; inline operand = 12
  $8627  8D 17                      BYTE_PUSH_imm1         +23
  $8629  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $862D  60                         PUSH_qimm   ; inline operand = 0
  $862E  8E A8 8E                   PUSH_imm2              $8EA8
  $8631  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8635  62                         PUSH_qimm   ; inline operand = 2
  $8636  0C                         LOADL_quick   ; inline operand = 12
  $8637  7D                         ADD_qimm   ; inline operand = 13
  $8638  B3                         PUSHL
  $8639  8D 12                      BYTE_PUSH_imm1         +18
  $863B  E9 D0 A3 06                CALL_abs_imm1          $A3D0 {native}, $06
  $863F  3D                         PUSH_quick   ; inline operand = 13
  $8640  3C                         PUSH_quick   ; inline operand = 12
  $8641  E9 B9 85 04                CALL_abs_imm1          $85B9 {bytecode}, $04
  $8645  0C                         LOADL_quick   ; inline operand = 12
  $8646  7D                         ADD_qimm   ; inline operand = 13
  $8647  B3                         PUSHL
  $8648  8D 18                      BYTE_PUSH_imm1         +24
  $864A  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $864E  61                         PUSH_qimm   ; inline operand = 1
  $864F  8E AF 8E                   PUSH_imm2              $8EAF
  $8652  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8656  CF                         RETURN

; ============================================================
; sub $8657   (frame_off=-16, body @ $865C)   [PRG $1E657]
; ============================================================
  $865C  49                         LOADL_qimm   ; inline operand = 9
  $865D  A8 90 73                   STORE_abs              $7390
  $8660  0C                         LOADL_quick   ; inline operand = 12
  $8661  72                         ADD_qimm   ; inline operand = 2
  $8662  A8 92 73                   STORE_abs              $7392
  $8665  0E                         LOADL_quick   ; inline operand = 14
  $8666  53                         LOADR_qimm   ; inline operand = 3
  $8667  B5                         MULT
  $8668  25                         STORE_quick   ; inline operand = 5
 >$8669  07                         LOADL_quick   ; inline operand = 7
  $866A  8B FF                      BYTE_LOADR_imm1        -1
  $866C  C1                         CMPNE
  $866D  D7 74 86                   JUMPT_abs              $8674
  $8670  AC DD 84                   CALL_abs               $84DD {bytecode}
  $8673  CF                         RETURN
 >$8674  41                         LOADL_qimm   ; inline operand = 1
  $8675  24                         STORE_quick   ; inline operand = 4
  $8676  40                         LOADL_qimm   ; inline operand = 0
  $8677  D6 8D 86                   JUMP_abs               $868D
 >$867A  0D                         LOADL_quick   ; inline operand = 13
  $867B  1B                         LOADR_quick   ; inline operand = 11
  $867C  BB                         ADD
  $867D  D3                         BYTE_DEREF
  $867E  B3                         PUSHL
  $867F  E9 02 82 02                CALL_abs_imm1          $8202 {bytecode}, $02
  $8683  D8 8B 86                   JUMPF_abs              $868B
  $8686  40                         LOADL_qimm   ; inline operand = 0
  $8687  24                         STORE_quick   ; inline operand = 4
  $8688  D6 94 86                   JUMP_abs               $8694
 >$868B  0B                         LOADL_quick   ; inline operand = 11
  $868C  D0                         INC
 >$868D  2B                         STORE_quick   ; inline operand = 11
  $868E  0B                         LOADL_quick   ; inline operand = 11
  $868F  1E                         LOADR_quick   ; inline operand = 14
  $8690  C6                         UCMPLT
  $8691  D7 7A 86                   JUMPT_abs              $867A
 >$8694  04                         LOADL_quick   ; inline operand = 4
  $8695  D8 9C 86                   JUMPF_abs              $869C
  $8698  AC DD 84                   CALL_abs               $84DD {bytecode}
  $869B  CF                         RETURN
 >$869C  AC 4B B2                   CALL_abs               $B24B {native}
  $869F  61                         PUSH_qimm   ; inline operand = 1
  $86A0  8E C8 8E                   PUSH_imm2              $8EC8
  $86A3  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $86A7  3E                         PUSH_quick   ; inline operand = 14
  $86A8  62                         PUSH_qimm   ; inline operand = 2
  $86A9  67                         PUSH_qimm   ; inline operand = 7
  $86AA  0C                         LOADL_quick   ; inline operand = 12
  $86AB  72                         ADD_qimm   ; inline operand = 2
  $86AC  B3                         PUSHL
  $86AD  69                         PUSH_qimm   ; inline operand = 9
  $86AE  35                         PUSH_quick   ; inline operand = 5
  $86AF  E9 82 83 0C                CALL_abs_imm1          $8382 {bytecode}, $0C
  $86B3  27                         STORE_quick   ; inline operand = 7
  $86B4  07                         LOADL_quick   ; inline operand = 7
  $86B5  15                         LOADR_quick   ; inline operand = 5
  $86B6  C6                         UCMPLT
  $86B7  D8 69 86                   JUMPF_abs              $8669
  $86BA  07                         LOADL_quick   ; inline operand = 7
  $86BB  1E                         LOADR_quick   ; inline operand = 14
  $86BC  BA                         UMOD
  $86BD  1D                         LOADR_quick   ; inline operand = 13
  $86BE  BB                         ADD
  $86BF  D3                         BYTE_DEREF
  $86C0  2A                         STORE_quick   ; inline operand = 10
  $86C1  07                         LOADL_quick   ; inline operand = 7
  $86C2  1E                         LOADR_quick   ; inline operand = 14
  $86C3  B8                         UDIV
  $86C4  29                         STORE_quick   ; inline operand = 9
  $86C5  3A                         PUSH_quick   ; inline operand = 10
  $86C6  E9 02 82 02                CALL_abs_imm1          $8202 {bytecode}, $02
  $86CA  D7 DA 86                   JUMPT_abs              $86DA
  $86CD  AC 4B B2                   CALL_abs               $B24B {native}
  $86D0  8E DF 8E                   PUSH_imm2              $8EDF
  $86D3  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $86D7  D6 69 86                   JUMP_abs               $8669
 >$86DA  3A                         PUSH_quick   ; inline operand = 10
  $86DB  09                         LOADL_quick   ; inline operand = 9
  $86DC  D2                         LSHIFT1
  $86DD  8C BC 8E                   LOADR_imm2             $8EBC
  $86E0  BB                         ADD
  $86E1  B0                         DEREF
  $86E2  EA 02                      CALLPTR_imm1           $02
  $86E4  B3                         PUSHL
  $86E5  3A                         PUSH_quick   ; inline operand = 10
  $86E6  09                         LOADL_quick   ; inline operand = 9
  $86E7  D2                         LSHIFT1
  $86E8  8C C2 8E                   LOADR_imm2             $8EC2
  $86EB  BB                         ADD
  $86EC  B0                         DEREF
  $86ED  EA 02                      CALLPTR_imm1           $02
  $86EF  B4                         POPR
  $86F0  C4                         SCMPGT
  $86F1  D8 69 86                   JUMPF_abs              $8669
  $86F4  3A                         PUSH_quick   ; inline operand = 10
  $86F5  09                         LOADL_quick   ; inline operand = 9
  $86F6  D2                         LSHIFT1
  $86F7  8C BC 8E                   LOADR_imm2             $8EBC
  $86FA  BB                         ADD
  $86FB  B0                         DEREF
  $86FC  EA 02                      CALLPTR_imm1           $02
  $86FE  B3                         PUSHL
  $86FF  3A                         PUSH_quick   ; inline operand = 10
  $8700  09                         LOADL_quick   ; inline operand = 9
  $8701  D2                         LSHIFT1
  $8702  8C C2 8E                   LOADR_imm2             $8EC2
  $8705  BB                         ADD
  $8706  B0                         DEREF
  $8707  EA 02                      CALLPTR_imm1           $02
  $8709  B4                         POPR
  $870A  BC                         SUB
  $870B  55                         LOADR_qimm   ; inline operand = 5
  $870C  B6                         SDIV
  $870D  26                         STORE_quick   ; inline operand = 6
  $870E  3A                         PUSH_quick   ; inline operand = 10
  $870F  09                         LOADL_quick   ; inline operand = 9
  $8710  D2                         LSHIFT1
  $8711  8C BC 8E                   LOADR_imm2             $8EBC
  $8714  BB                         ADD
  $8715  B0                         DEREF
  $8716  EA 02                      CALLPTR_imm1           $02
  $8718  B3                         PUSHL
  $8719  3A                         PUSH_quick   ; inline operand = 10
  $871A  09                         LOADL_quick   ; inline operand = 9
  $871B  D2                         LSHIFT1
  $871C  8C C2 8E                   LOADR_imm2             $8EC2
  $871F  BB                         ADD
  $8720  B0                         DEREF
  $8721  EA 02                      CALLPTR_imm1           $02
  $8723  B4                         POPR
  $8724  BC                         SUB
  $8725  55                         LOADR_qimm   ; inline operand = 5
  $8726  B9                         SMOD
  $8727  D8 2E 87                   JUMPF_abs              $872E
  $872A  41                         LOADL_qimm   ; inline operand = 1
  $872B  D6 2F 87                   JUMP_abs               $872F
 >$872E  40                         LOADL_qimm   ; inline operand = 0
 >$872F  CD                         SWAP
  $8730  06                         LOADL_quick   ; inline operand = 6
  $8731  BB                         ADD
  $8732  26                         STORE_quick   ; inline operand = 6
  $8733  0F                         LOADL_quick   ; inline operand = 15
  $8734  B0                         DEREF
  $8735  B3                         PUSHL
  $8736  06                         LOADL_quick   ; inline operand = 6
  $8737  B4                         POPR
  $8738  C4                         SCMPGT
  $8739  D8 3F 87                   JUMPF_abs              $873F
  $873C  0F                         LOADL_quick   ; inline operand = 15
  $873D  B0                         DEREF
  $873E  26                         STORE_quick   ; inline operand = 6
 >$873F  AC 4B B2                   CALL_abs               $B24B {native}
  $8742  36                         PUSH_quick   ; inline operand = 6
  $8743  60                         PUSH_qimm   ; inline operand = 0
  $8744  8E FE 8E                   PUSH_imm2              $8EFE
  $8747  E9 F3 CC 06                CALL_abs_imm1          $CCF3 {native}, $06
  $874B  28                         STORE_quick   ; inline operand = 8
  $874C  08                         LOADL_quick   ; inline operand = 8
  $874D  8B FF                      BYTE_LOADR_imm1        -1
  $874F  C1                         CMPNE
  $8750  D8 69 86                   JUMPF_abs              $8669
  $8753  38                         PUSH_quick   ; inline operand = 8
  $8754  3A                         PUSH_quick   ; inline operand = 10
  $8755  09                         LOADL_quick   ; inline operand = 9
  $8756  D2                         LSHIFT1
  $8757  8C B6 8E                   LOADR_imm2             $8EB6
  $875A  BB                         ADD
  $875B  B0                         DEREF
  $875C  EA 04                      CALLPTR_imm1           $04
  $875E  38                         PUSH_quick   ; inline operand = 8
  $875F  3D                         PUSH_quick   ; inline operand = 13
  $8760  3E                         PUSH_quick   ; inline operand = 14
  $8761  E9 EF 82 06                CALL_abs_imm1          $82EF {bytecode}, $06
  $8765  38                         PUSH_quick   ; inline operand = 8
  $8766  0F                         LOADL_quick   ; inline operand = 15
  $8767  B4                         POPR
  $8768  B3                         PUSHL
  $8769  B0                         DEREF
  $876A  BC                         SUB
  $876B  B1                         POPSTORE
  $876C  0F                         LOADL_quick   ; inline operand = 15
  $876D  B0                         DEREF
  $876E  B3                         PUSHL
  $876F  3C                         PUSH_quick   ; inline operand = 12
  $8770  E9 B9 85 04                CALL_abs_imm1          $85B9 {bytecode}, $04
  $8774  3A                         PUSH_quick   ; inline operand = 10
  $8775  A4 92 73                   LOADL_abs              $7392
  $8778  D1                         DEC
  $8779  B3                         PUSHL
  $877A  E9 99 85 04                CALL_abs_imm1          $8599 {bytecode}, $04
  $877E  0F                         LOADL_quick   ; inline operand = 15
  $877F  B0                         DEREF
  $8780  D7 69 86                   JUMPT_abs              $8669
  $8783  AC 4B B2                   CALL_abs               $B24B {native}
  $8786  8E 13 8F                   PUSH_imm2              $8F13
  $8789  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $878D  AC DD 84                   CALL_abs               $84DD {bytecode}
  $8790  CF                         RETURN

; ============================================================
; sub $8791   (frame_off=-8, body @ $8796)   [PRG $1E791]
; ============================================================
  $8796  40                         LOADL_qimm   ; inline operand = 0
  $8797  D6 F7 87                   JUMP_abs               $87F7
 >$879A  0C                         LOADL_quick   ; inline operand = 12
  $879B  1B                         LOADR_quick   ; inline operand = 11
  $879C  BB                         ADD
  $879D  D3                         BYTE_DEREF
  $879E  2A                         STORE_quick   ; inline operand = 10
  $879F  0A                         LOADL_quick   ; inline operand = 10
  $87A0  57                         LOADR_qimm   ; inline operand = 7
  $87A1  B5                         MULT
  $87A2  8C 90 6C                   LOADR_imm2             $6C90
  $87A5  BB                         ADD
  $87A6  29                         STORE_quick   ; inline operand = 9
  $87A7  0B                         LOADL_quick   ; inline operand = 11
  $87A8  53                         LOADR_qimm   ; inline operand = 3
  $87A9  B5                         MULT
  $87AA  1D                         LOADR_quick   ; inline operand = 13
  $87AB  BB                         ADD
  $87AC  D3                         BYTE_DEREF
  $87AD  B3                         PUSHL
  $87AE  09                         LOADL_quick   ; inline operand = 9
  $87AF  D3                         BYTE_DEREF
  $87B0  B4                         POPR
  $87B1  C1                         CMPNE
  $87B2  D8 B7 87                   JUMPF_abs              $87B7
  $87B5  41                         LOADL_qimm   ; inline operand = 1
  $87B6  CF                         RETURN
 >$87B7  0B                         LOADL_quick   ; inline operand = 11
  $87B8  53                         LOADR_qimm   ; inline operand = 3
  $87B9  B5                         MULT
  $87BA  1D                         LOADR_quick   ; inline operand = 13
  $87BB  BB                         ADD
  $87BC  D0                         INC
  $87BD  D3                         BYTE_DEREF
  $87BE  B3                         PUSHL
  $87BF  09                         LOADL_quick   ; inline operand = 9
  $87C0  D0                         INC
  $87C1  D3                         BYTE_DEREF
  $87C2  B4                         POPR
  $87C3  C1                         CMPNE
  $87C4  D8 C9 87                   JUMPF_abs              $87C9
  $87C7  41                         LOADL_qimm   ; inline operand = 1
  $87C8  CF                         RETURN
 >$87C9  0B                         LOADL_quick   ; inline operand = 11
  $87CA  53                         LOADR_qimm   ; inline operand = 3
  $87CB  B5                         MULT
  $87CC  1D                         LOADR_quick   ; inline operand = 13
  $87CD  BB                         ADD
  $87CE  72                         ADD_qimm   ; inline operand = 2
  $87CF  D3                         BYTE_DEREF
  $87D0  B3                         PUSHL
  $87D1  09                         LOADL_quick   ; inline operand = 9
  $87D2  72                         ADD_qimm   ; inline operand = 2
  $87D3  D3                         BYTE_DEREF
  $87D4  B4                         POPR
  $87D5  C1                         CMPNE
  $87D6  D8 DB 87                   JUMPF_abs              $87DB
  $87D9  41                         LOADL_qimm   ; inline operand = 1
  $87DA  CF                         RETURN
 >$87DB  0A                         LOADL_quick   ; inline operand = 10
  $87DC  8B 18                      BYTE_LOADR_imm1        +24
  $87DE  B5                         MULT
  $87DF  8C A4 6A                   LOADR_imm2             $6AA4
  $87E2  BB                         ADD
  $87E3  28                         STORE_quick   ; inline operand = 8
  $87E4  08                         LOADL_quick   ; inline operand = 8
  $87E5  8F 14                      BYTE_ADD_imm1          +20
  $87E7  B0                         DEREF
  $87E8  B3                         PUSHL
  $87E9  0B                         LOADL_quick   ; inline operand = 11
  $87EA  D2                         LSHIFT1
  $87EB  1E                         LOADR_quick   ; inline operand = 14
  $87EC  BB                         ADD
  $87ED  B0                         DEREF
  $87EE  B4                         POPR
  $87EF  C1                         CMPNE
  $87F0  D8 F5 87                   JUMPF_abs              $87F5
  $87F3  41                         LOADL_qimm   ; inline operand = 1
  $87F4  CF                         RETURN
 >$87F5  0B                         LOADL_quick   ; inline operand = 11
  $87F6  D0                         INC
 >$87F7  2B                         STORE_quick   ; inline operand = 11
  $87F8  0B                         LOADL_quick   ; inline operand = 11
  $87F9  1F                         LOADR_quick   ; inline operand = 15
  $87FA  C6                         UCMPLT
  $87FB  D7 9A 87                   JUMPT_abs              $879A
  $87FE  40                         LOADL_qimm   ; inline operand = 0
  $87FF  CF                         RETURN

; ============================================================
; sub $8800   (frame_off=+0, body @ $8805)   [PRG $1E800]
; ============================================================
  $8805  A5 7D 73                   BYTE_LOADL_abs         $737D (ui_shared_var_737d)
  $8808  51                         LOADR_qimm   ; inline operand = 1
  $8809  C0                         CMPEQ
  $880A  D8 11 88                   JUMPF_abs              $8811
  $880D  4B                         LOADL_qimm   ; inline operand = 11
  $880E  D6 12 88                   JUMP_abs               $8812
 >$8811  43                         LOADL_qimm   ; inline operand = 3
 >$8812  CF                         RETURN

; ============================================================
; sub $8813   (frame_off=-56, body @ $8818)   [PRG $1E813]
; ============================================================
  $8818  AC 00 88                   CALL_abs               $8800 {bytecode}
  $881B  29                         STORE_quick   ; inline operand = 9
  $881C  64                         PUSH_qimm   ; inline operand = 4
  $881D  65                         PUSH_qimm   ; inline operand = 5
  $881E  6C                         PUSH_qimm   ; inline operand = 12
  $881F  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $8823  3C                         PUSH_quick   ; inline operand = 12
  $8824  39                         PUSH_quick   ; inline operand = 9
  $8825  E9 D0 85 04                CALL_abs_imm1          $85D0 (repair_draw_parts) {bytecode}, $04
  $8829  40                         LOADL_qimm   ; inline operand = 0
  $882A  2B                         STORE_quick   ; inline operand = 11
  $882B  2A                         STORE_quick   ; inline operand = 10
  $882C  D6 D4 88                   JUMP_abs               $88D4
 >$882F  0B                         LOADL_quick   ; inline operand = 11
  $8830  57                         LOADR_qimm   ; inline operand = 7
  $8831  B5                         MULT
  $8832  8C 90 6C                   LOADR_imm2             $6C90
  $8835  BB                         ADD
  $8836  85 CC                      STORE_near             $CC
  $8838  81 CC                      LOADL_near             $CC
  $883A  76                         ADD_qimm   ; inline operand = 6
  $883B  D3                         BYTE_DEREF
  $883C  8B 40                      BYTE_LOADR_imm1        +64
  $883E  DA                         AND
  $883F  D8 D1 88                   JUMPF_abs              $88D1
  $8842  DE E9 FF                   LEAL_far               $FFE9
  $8845  B3                         PUSHL
  $8846  0A                         LOADL_quick   ; inline operand = 10
  $8847  B4                         POPR
  $8848  BB                         ADD
  $8849  B3                         PUSHL
  $884A  0B                         LOADL_quick   ; inline operand = 11
  $884B  D4                         BYTE_POPSTORE
  $884C  DE DA FF                   LEAL_far               $FFDA
  $884F  B3                         PUSHL
  $8850  0A                         LOADL_quick   ; inline operand = 10
  $8851  53                         LOADR_qimm   ; inline operand = 3
  $8852  B5                         MULT
  $8853  B4                         POPR
  $8854  BB                         ADD
  $8855  B3                         PUSHL
  $8856  81 CC                      LOADL_near             $CC
  $8858  D3                         BYTE_DEREF
  $8859  D4                         BYTE_POPSTORE
  $885A  DE DB FF                   LEAL_far               $FFDB
  $885D  B3                         PUSHL
  $885E  0A                         LOADL_quick   ; inline operand = 10
  $885F  53                         LOADR_qimm   ; inline operand = 3
  $8860  B5                         MULT
  $8861  B4                         POPR
  $8862  BB                         ADD
  $8863  B3                         PUSHL
  $8864  81 CC                      LOADL_near             $CC
  $8866  D0                         INC
  $8867  D3                         BYTE_DEREF
  $8868  D4                         BYTE_POPSTORE
  $8869  DE DC FF                   LEAL_far               $FFDC
  $886C  B3                         PUSHL
  $886D  0A                         LOADL_quick   ; inline operand = 10
  $886E  53                         LOADR_qimm   ; inline operand = 3
  $886F  B5                         MULT
  $8870  B4                         POPR
  $8871  BB                         ADD
  $8872  B3                         PUSHL
  $8873  81 CC                      LOADL_near             $CC
  $8875  72                         ADD_qimm   ; inline operand = 2
  $8876  D3                         BYTE_DEREF
  $8877  D4                         BYTE_POPSTORE
  $8878  0B                         LOADL_quick   ; inline operand = 11
  $8879  8B 18                      BYTE_LOADR_imm1        +24
  $887B  B5                         MULT
  $887C  8C A4 6A                   LOADR_imm2             $6AA4
  $887F  BB                         ADD
  $8880  85 CA                      STORE_near             $CA
  $8882  DE D0 FF                   LEAL_far               $FFD0
  $8885  B3                         PUSHL
  $8886  0A                         LOADL_quick   ; inline operand = 10
  $8887  D2                         LSHIFT1
  $8888  B4                         POPR
  $8889  BB                         ADD
  $888A  B3                         PUSHL
  $888B  81 CA                      LOADL_near             $CA
  $888D  8F 14                      BYTE_ADD_imm1          +20
  $888F  B0                         DEREF
  $8890  B1                         POPSTORE
  $8891  81 CC                      LOADL_near             $CC
  $8893  76                         ADD_qimm   ; inline operand = 6
  $8894  D3                         BYTE_DEREF
  $8895  5F                         LOADR_qimm   ; inline operand = 15
  $8896  DA                         AND
  $8897  B3                         PUSHL
  $8898  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $889C  85 C8                      STORE_near             $C8
  $889E  DE EE FF                   LEAL_far               $FFEE
  $88A1  B3                         PUSHL
  $88A2  0A                         LOADL_quick   ; inline operand = 10
  $88A3  D2                         LSHIFT1
  $88A4  B4                         POPR
  $88A5  BB                         ADD
  $88A6  B3                         PUSHL
  $88A7  81 C8                      LOADL_near             $C8
  $88A9  B1                         POPSTORE
  $88AA  0A                         LOADL_quick   ; inline operand = 10
  $88AB  D2                         LSHIFT1
  $88AC  19                         LOADR_quick   ; inline operand = 9
  $88AD  BB                         ADD
  $88AE  72                         ADD_qimm   ; inline operand = 2
  $88AF  B3                         PUSHL
  $88B0  62                         PUSH_qimm   ; inline operand = 2
  $88B1  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $88B5  DE EE FF                   LEAL_far               $FFEE
  $88B8  B3                         PUSHL
  $88B9  0A                         LOADL_quick   ; inline operand = 10
  $88BA  D2                         LSHIFT1
  $88BB  B4                         POPR
  $88BC  BB                         ADD
  $88BD  B0                         DEREF
  $88BE  B3                         PUSHL
  $88BF  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $88C3  3B                         PUSH_quick   ; inline operand = 11
  $88C4  0A                         LOADL_quick   ; inline operand = 10
  $88C5  D2                         LSHIFT1
  $88C6  19                         LOADR_quick   ; inline operand = 9
  $88C7  BB                         ADD
  $88C8  D0                         INC
  $88C9  B3                         PUSHL
  $88CA  E9 99 85 04                CALL_abs_imm1          $8599 {bytecode}, $04
  $88CE  0A                         LOADL_quick   ; inline operand = 10
  $88CF  D0                         INC
  $88D0  2A                         STORE_quick   ; inline operand = 10
 >$88D1  0B                         LOADL_quick   ; inline operand = 11
  $88D2  D0                         INC
  $88D3  2B                         STORE_quick   ; inline operand = 11
 >$88D4  0B                         LOADL_quick   ; inline operand = 11
  $88D5  55                         LOADR_qimm   ; inline operand = 5
  $88D6  C6                         UCMPLT
  $88D7  D7 2F 88                   JUMPT_abs              $882F
  $88DA  DE 0B 00                   LEAL_far               $000B
  $88DD  B3                         PUSHL
  $88DE  3A                         PUSH_quick   ; inline operand = 10
  $88DF  DE E9 FF                   LEAL_far               $FFE9
  $88E2  B3                         PUSHL
  $88E3  39                         PUSH_quick   ; inline operand = 9
  $88E4  E9 57 86 08                CALL_abs_imm1          $8657 (repair_choose) {bytecode}, $08
  $88E8  85 CE                      STORE_near             $CE
  $88EA  81 CE                      LOADL_near             $CE
  $88EC  D8 02 89                   JUMPF_abs              $8902
  $88EF  3A                         PUSH_quick   ; inline operand = 10
  $88F0  DE D0 FF                   LEAL_far               $FFD0
  $88F3  B3                         PUSHL
  $88F4  DE DA FF                   LEAL_far               $FFDA
  $88F7  B3                         PUSHL
  $88F8  DE E9 FF                   LEAL_far               $FFE9
  $88FB  B3                         PUSHL
  $88FC  E9 91 87 08                CALL_abs_imm1          $8791 {bytecode}, $08
  $8900  85 CE                      STORE_near             $CE
 >$8902  81 CE                      LOADL_near             $CE
  $8904  D7 7E 89                   JUMPT_abs              $897E
  $8907  40                         LOADL_qimm   ; inline operand = 0
  $8908  D6 6E 89                   JUMP_abs               $896E
 >$890B  DE E9 FF                   LEAL_far               $FFE9
  $890E  B3                         PUSHL
  $890F  0B                         LOADL_quick   ; inline operand = 11
  $8910  B4                         POPR
  $8911  BB                         ADD
  $8912  D3                         BYTE_DEREF
  $8913  28                         STORE_quick   ; inline operand = 8
  $8914  08                         LOADL_quick   ; inline operand = 8
  $8915  57                         LOADR_qimm   ; inline operand = 7
  $8916  B5                         MULT
  $8917  8C 90 6C                   LOADR_imm2             $6C90
  $891A  BB                         ADD
  $891B  85 CC                      STORE_near             $CC
  $891D  87 CC                      PUSH_near              $CC
  $891F  DE DA FF                   LEAL_far               $FFDA
  $8922  B3                         PUSHL
  $8923  0B                         LOADL_quick   ; inline operand = 11
  $8924  53                         LOADR_qimm   ; inline operand = 3
  $8925  B5                         MULT
  $8926  B4                         POPR
  $8927  BB                         ADD
  $8928  D3                         BYTE_DEREF
  $8929  D4                         BYTE_POPSTORE
  $892A  81 CC                      LOADL_near             $CC
  $892C  D0                         INC
  $892D  B3                         PUSHL
  $892E  DE DB FF                   LEAL_far               $FFDB
  $8931  B3                         PUSHL
  $8932  0B                         LOADL_quick   ; inline operand = 11
  $8933  53                         LOADR_qimm   ; inline operand = 3
  $8934  B5                         MULT
  $8935  B4                         POPR
  $8936  BB                         ADD
  $8937  D3                         BYTE_DEREF
  $8938  D4                         BYTE_POPSTORE
  $8939  81 CC                      LOADL_near             $CC
  $893B  72                         ADD_qimm   ; inline operand = 2
  $893C  B3                         PUSHL
  $893D  DE DC FF                   LEAL_far               $FFDC
  $8940  B3                         PUSHL
  $8941  0B                         LOADL_quick   ; inline operand = 11
  $8942  53                         LOADR_qimm   ; inline operand = 3
  $8943  B5                         MULT
  $8944  B4                         POPR
  $8945  BB                         ADD
  $8946  D3                         BYTE_DEREF
  $8947  D4                         BYTE_POPSTORE
  $8948  08                         LOADL_quick   ; inline operand = 8
  $8949  8B 18                      BYTE_LOADR_imm1        +24
  $894B  B5                         MULT
  $894C  8C A4 6A                   LOADR_imm2             $6AA4
  $894F  BB                         ADD
  $8950  85 CA                      STORE_near             $CA
  $8952  81 CA                      LOADL_near             $CA
  $8954  8F 14                      BYTE_ADD_imm1          +20
  $8956  B3                         PUSHL
  $8957  DE D0 FF                   LEAL_far               $FFD0
  $895A  B3                         PUSHL
  $895B  0B                         LOADL_quick   ; inline operand = 11
  $895C  D2                         LSHIFT1
  $895D  B4                         POPR
  $895E  BB                         ADD
  $895F  B0                         DEREF
  $8960  B1                         POPSTORE
  $8961  38                         PUSH_quick   ; inline operand = 8
  $8962  0B                         LOADL_quick   ; inline operand = 11
  $8963  D2                         LSHIFT1
  $8964  19                         LOADR_quick   ; inline operand = 9
  $8965  BB                         ADD
  $8966  D0                         INC
  $8967  B3                         PUSHL
  $8968  E9 99 85 04                CALL_abs_imm1          $8599 {bytecode}, $04
  $896C  0B                         LOADL_quick   ; inline operand = 11
  $896D  D0                         INC
 >$896E  2B                         STORE_quick   ; inline operand = 11
  $896F  0B                         LOADL_quick   ; inline operand = 11
  $8970  1A                         LOADR_quick   ; inline operand = 10
  $8971  C6                         UCMPLT
  $8972  D7 0B 89                   JUMPT_abs              $890B
  $8975  AC 4B B2                   CALL_abs               $B24B {native}
  $8978  8E 27 8F                   PUSH_imm2              $8F27
  $897B  D6 84 89                   JUMP_abs               $8984
 >$897E  AC 4B B2                   CALL_abs               $B24B {native}
  $8981  8E 3D 8F                   PUSH_imm2              $8F3D
 >$8984  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8988  AC 44 A5                   CALL_abs               $A544 {native}
  $898B  A5 6A 66                   BYTE_LOADL_abs         $666A
  $898E  B3                         PUSHL
  $898F  A5 65 66                   BYTE_LOADL_abs         $6665
  $8992  B3                         PUSHL
  $8993  A5 64 66                   BYTE_LOADL_abs         $6664
  $8996  B3                         PUSHL
  $8997  E9 41 AD 06                CALL_abs_imm1          $AD41 {native}, $06
  $899B  81 CE                      LOADL_near             $CE
  $899D  CF                         RETURN

; ============================================================
; sub $899E   (frame_off=-6, body @ $89A3)   [PRG $1E99E]
; ============================================================
  $89A3  41                         LOADL_qimm   ; inline operand = 1
  $89A4  2B                         STORE_quick   ; inline operand = 11
  $89A5  40                         LOADL_qimm   ; inline operand = 0
  $89A6  29                         STORE_quick   ; inline operand = 9
  $89A7  40                         LOADL_qimm   ; inline operand = 0
  $89A8  D6 D2 89                   JUMP_abs               $89D2
 >$89AB  0A                         LOADL_quick   ; inline operand = 10
  $89AC  57                         LOADR_qimm   ; inline operand = 7
  $89AD  B5                         MULT
  $89AE  8C 96 6C                   LOADR_imm2             $6C96
  $89B1  BB                         ADD
  $89B2  D3                         BYTE_DEREF
  $89B3  8B 40                      BYTE_LOADR_imm1        +64
  $89B5  DA                         AND
  $89B6  D8 D0 89                   JUMPF_abs              $89D0
  $89B9  0A                         LOADL_quick   ; inline operand = 10
  $89BA  8B 18                      BYTE_LOADR_imm1        +24
  $89BC  B5                         MULT
  $89BD  8C B8 6A                   LOADR_imm2             $6AB8
  $89C0  BB                         ADD
  $89C1  B0                         DEREF
  $89C2  CD                         SWAP
  $89C3  09                         LOADL_quick   ; inline operand = 9
  $89C4  BB                         ADD
  $89C5  29                         STORE_quick   ; inline operand = 9
  $89C6  3A                         PUSH_quick   ; inline operand = 10
  $89C7  E9 02 82 02                CALL_abs_imm1          $8202 {bytecode}, $02
  $89CB  D8 D0 89                   JUMPF_abs              $89D0
  $89CE  40                         LOADL_qimm   ; inline operand = 0
  $89CF  2B                         STORE_quick   ; inline operand = 11
 >$89D0  0A                         LOADL_quick   ; inline operand = 10
  $89D1  D0                         INC
 >$89D2  2A                         STORE_quick   ; inline operand = 10
  $89D3  0A                         LOADL_quick   ; inline operand = 10
  $89D4  55                         LOADR_qimm   ; inline operand = 5
  $89D5  C6                         UCMPLT
  $89D6  D7 AB 89                   JUMPT_abs              $89AB
  $89D9  AC E8 B2                   CALL_abs               $B2E8 {native}
  $89DC  0B                         LOADL_quick   ; inline operand = 11
  $89DD  D8 E9 89                   JUMPF_abs              $89E9
  $89E0  8E 52 8F                   PUSH_imm2              $8F52
  $89E3  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $89E7  40                         LOADL_qimm   ; inline operand = 0
  $89E8  CF                         RETURN
 >$89E9  09                         LOADL_quick   ; inline operand = 9
  $89EA  D7 F6 89                   JUMPT_abs              $89F6
  $89ED  8E 6A 8F                   PUSH_imm2              $8F6A
  $89F0  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $89F4  40                         LOADL_qimm   ; inline operand = 0
  $89F5  CF                         RETURN
 >$89F6  39                         PUSH_quick   ; inline operand = 9
  $89F7  E9 13 88 02                CALL_abs_imm1          $8813 (repair_finish) {bytecode}, $02
  $89FB  2B                         STORE_quick   ; inline operand = 11
  $89FC  0B                         LOADL_quick   ; inline operand = 11
  $89FD  CF                         RETURN

; ============================================================
; sub $89FE   (frame_off=-8, body @ $8A03)   [PRG $1E9FE]
; ============================================================
  $8A03  A5 84 70                   BYTE_LOADL_abs         $7084
  $8A06  57                         LOADR_qimm   ; inline operand = 7
  $8A07  DA                         AND
  $8A08  2A                         STORE_quick   ; inline operand = 10
  $8A09  AC 4B B2                   CALL_abs               $B24B {native}
  $8A0C  A5 45 65                   BYTE_LOADL_abs         $6545
  $8A0F  55                         LOADR_qimm   ; inline operand = 5
  $8A10  B8                         UDIV
  $8A11  1A                         LOADR_quick   ; inline operand = 10
  $8A12  C6                         UCMPLT
  $8A13  D7 1C 8A                   JUMPT_abs              $8A1C
  $8A16  0A                         LOADL_quick   ; inline operand = 10
  $8A17  55                         LOADR_qimm   ; inline operand = 5
  $8A18  C9                         UCMPGE
  $8A19  D8 24 8A                   JUMPF_abs              $8A24
 >$8A1C  8E 88 8F                   PUSH_imm2              $8F88
  $8A1F  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8A23  CF                         RETURN
 >$8A24  8E A4 8F                   PUSH_imm2              $8FA4
  $8A27  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8A2B  40                         LOADL_qimm   ; inline operand = 0
  $8A2C  2B                         STORE_quick   ; inline operand = 11
  $8A2D  40                         LOADL_qimm   ; inline operand = 0
  $8A2E  D6 45 8A                   JUMP_abs               $8A45
 >$8A31  0D                         LOADL_quick   ; inline operand = 13
  $8A32  19                         LOADR_quick   ; inline operand = 9
  $8A33  BB                         ADD
  $8A34  D3                         BYTE_DEREF
  $8A35  8B 18                      BYTE_LOADR_imm1        +24
  $8A37  B5                         MULT
  $8A38  8C B6 6A                   LOADR_imm2             $6AB6
  $8A3B  BB                         ADD
  $8A3C  B0                         DEREF
  $8A3D  5A                         LOADR_qimm   ; inline operand = 10
  $8A3E  B6                         SDIV
  $8A3F  CD                         SWAP
  $8A40  0B                         LOADL_quick   ; inline operand = 11
  $8A41  BB                         ADD
  $8A42  2B                         STORE_quick   ; inline operand = 11
  $8A43  09                         LOADL_quick   ; inline operand = 9
  $8A44  D0                         INC
 >$8A45  29                         STORE_quick   ; inline operand = 9
  $8A46  09                         LOADL_quick   ; inline operand = 9
  $8A47  1C                         LOADR_quick   ; inline operand = 12
  $8A48  C6                         UCMPLT
  $8A49  D7 31 8A                   JUMPT_abs              $8A31
  $8A4C  64                         PUSH_qimm   ; inline operand = 4
  $8A4D  65                         PUSH_qimm   ; inline operand = 5
  $8A4E  6C                         PUSH_qimm   ; inline operand = 12
  $8A4F  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $8A53  AC 03 80                   CALL_abs               $8003 {bytecode}
  $8A56  28                         STORE_quick   ; inline operand = 8
  $8A57  6E                         PUSH_qimm   ; inline operand = 14
  $8A58  8D 1E                      BYTE_PUSH_imm1         +30
  $8A5A  38                         PUSH_quick   ; inline operand = 8
  $8A5B  61                         PUSH_qimm   ; inline operand = 1
  $8A5C  E9 02 A5 08                CALL_abs_imm1          $A502 {native}, $08
  $8A60  38                         PUSH_quick   ; inline operand = 8
  $8A61  61                         PUSH_qimm   ; inline operand = 1
  $8A62  3D                         PUSH_quick   ; inline operand = 13
  $8A63  3C                         PUSH_quick   ; inline operand = 12
  $8A64  8E FC 86                   PUSH_imm2              $86FC
  $8A67  8E C0 00                   PUSH_imm2              $00C0
  $8A6A  61                         PUSH_qimm   ; inline operand = 1
  $8A6B  E9 3A DE 0E                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $0E
  $8A6F  AC 44 A5                   CALL_abs               $A544 {native}
  $8A72  A5 6A 66                   BYTE_LOADL_abs         $666A
  $8A75  B3                         PUSHL
  $8A76  A5 65 66                   BYTE_LOADL_abs         $6665
  $8A79  B3                         PUSHL
  $8A7A  A5 64 66                   BYTE_LOADL_abs         $6664
  $8A7D  B3                         PUSHL
  $8A7E  E9 41 AD 06                CALL_abs_imm1          $AD41 {native}, $06
  $8A82  CF                         RETURN

; ============================================================
; sub $8A83   (frame_off=-17, body @ $8A88)   [PRG $1EA83]
; ============================================================
  $8A88  40                         LOADL_qimm   ; inline operand = 0
  $8A89  85 F1                      STORE_near             $F1
  $8A8B  85 F3                      STORE_near             $F3
  $8A8D  40                         LOADL_qimm   ; inline operand = 0
  $8A8E  2B                         STORE_quick   ; inline operand = 11
  $8A8F  29                         STORE_quick   ; inline operand = 9
  $8A90  D6 D3 8A                   JUMP_abs               $8AD3
 >$8A93  0B                         LOADL_quick   ; inline operand = 11
  $8A94  57                         LOADR_qimm   ; inline operand = 7
  $8A95  B5                         MULT
  $8A96  8C 90 6C                   LOADR_imm2             $6C90
  $8A99  BB                         ADD
  $8A9A  85 EF                      STORE_near             $EF
  $8A9C  81 EF                      LOADL_near             $EF
  $8A9E  76                         ADD_qimm   ; inline operand = 6
  $8A9F  D3                         BYTE_DEREF
  $8AA0  8B 40                      BYTE_LOADR_imm1        +64
  $8AA2  DA                         AND
  $8AA3  D8 D0 8A                   JUMPF_abs              $8AD0
  $8AA6  DE F5 FF                   LEAL_far               $FFF5
  $8AA9  B3                         PUSHL
  $8AAA  09                         LOADL_quick   ; inline operand = 9
  $8AAB  B4                         POPR
  $8AAC  BB                         ADD
  $8AAD  B3                         PUSHL
  $8AAE  0B                         LOADL_quick   ; inline operand = 11
  $8AAF  D4                         BYTE_POPSTORE
  $8AB0  09                         LOADL_quick   ; inline operand = 9
  $8AB1  D0                         INC
  $8AB2  29                         STORE_quick   ; inline operand = 9
  $8AB3  3B                         PUSH_quick   ; inline operand = 11
  $8AB4  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8AB8  8F 12                      BYTE_ADD_imm1          +18
  $8ABA  B3                         PUSHL
  $8ABB  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8ABF  CD                         SWAP
  $8AC0  81 F3                      LOADL_near             $F3
  $8AC2  BB                         ADD
  $8AC3  85 F3                      STORE_near             $F3
  $8AC5  3B                         PUSH_quick   ; inline operand = 11
  $8AC6  E9 EA D9 02                CALL_abs_imm1          $D9EA {native}, $02
  $8ACA  CD                         SWAP
  $8ACB  81 F1                      LOADL_near             $F1
  $8ACD  BB                         ADD
  $8ACE  85 F1                      STORE_near             $F1
 >$8AD0  0B                         LOADL_quick   ; inline operand = 11
  $8AD1  D0                         INC
  $8AD2  2B                         STORE_quick   ; inline operand = 11
 >$8AD3  0B                         LOADL_quick   ; inline operand = 11
  $8AD4  55                         LOADR_qimm   ; inline operand = 5
  $8AD5  C6                         UCMPLT
  $8AD6  D7 93 8A                   JUMPT_abs              $8A93
  $8AD9  AC E8 B2                   CALL_abs               $B2E8 {native}
  $8ADC  81 F1                      LOADL_near             $F1
  $8ADE  83 F3                      LOADR_near             $F3
  $8AE0  C0                         CMPEQ
  $8AE1  D8 ED 8A                   JUMPF_abs              $8AED
  $8AE4  8E BD 8F                   PUSH_imm2              $8FBD
  $8AE7  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8AEB  40                         LOADL_qimm   ; inline operand = 0
  $8AEC  CF                         RETURN
 >$8AED  AC 91 D7                   CALL_abs               $D791 {native}
  $8AF0  2B                         STORE_quick   ; inline operand = 11
  $8AF1  0B                         LOADL_quick   ; inline operand = 11
  $8AF2  8C FF 00                   LOADR_imm2             $00FF
  $8AF5  C0                         CMPEQ
  $8AF6  D7 0D 8B                   JUMPT_abs              $8B0D
  $8AF9  0B                         LOADL_quick   ; inline operand = 11
  $8AFA  5A                         LOADR_qimm   ; inline operand = 10
  $8AFB  B5                         MULT
  $8AFC  8C C1 6B                   LOADR_imm2             $6BC1
  $8AFF  BB                         ADD
  $8B00  D3                         BYTE_DEREF
  $8B01  B3                         PUSHL
  $8B02  8D 64                      BYTE_PUSH_imm1         +100
  $8B04  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8B08  B4                         POPR
  $8B09  C9                         UCMPGE
  $8B0A  D8 14 8B                   JUMPF_abs              $8B14
 >$8B0D  61                         PUSH_qimm   ; inline operand = 1
  $8B0E  8E E9 8F                   PUSH_imm2              $8FE9
  $8B11  D6 38 8B                   JUMP_abs               $8B38
 >$8B14  A5 84 70                   BYTE_LOADL_abs         $7084
  $8B17  57                         LOADR_qimm   ; inline operand = 7
  $8B18  DA                         AND
  $8B19  2A                         STORE_quick   ; inline operand = 10
  $8B1A  0A                         LOADL_quick   ; inline operand = 10
  $8B1B  52                         LOADR_qimm   ; inline operand = 2
  $8B1C  C6                         UCMPLT
  $8B1D  D8 27 8B                   JUMPF_abs              $8B27
  $8B20  61                         PUSH_qimm   ; inline operand = 1
  $8B21  8E F9 8F                   PUSH_imm2              $8FF9
  $8B24  D6 38 8B                   JUMP_abs               $8B38
 >$8B27  0A                         LOADL_quick   ; inline operand = 10
  $8B28  55                         LOADR_qimm   ; inline operand = 5
  $8B29  C6                         UCMPLT
  $8B2A  D8 34 8B                   JUMPF_abs              $8B34
  $8B2D  61                         PUSH_qimm   ; inline operand = 1
  $8B2E  8E 18 90                   PUSH_imm2              $9018
  $8B31  D6 38 8B                   JUMP_abs               $8B38
 >$8B34  61                         PUSH_qimm   ; inline operand = 1
  $8B35  8E 2F 90                   PUSH_imm2              $902F
 >$8B38  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8B3C  61                         PUSH_qimm   ; inline operand = 1
  $8B3D  8E 4D 90                   PUSH_imm2              $904D
  $8B40  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8B44  AC 9F CD                   CALL_abs               $CD9F {native}
  $8B47  D8 55 8B                   JUMPF_abs              $8B55
  $8B4A  DE F5 FF                   LEAL_far               $FFF5
  $8B4D  B3                         PUSHL
  $8B4E  39                         PUSH_quick   ; inline operand = 9
  $8B4F  E9 FE 89 04                CALL_abs_imm1          $89FE {bytecode}, $04
  $8B53  41                         LOADL_qimm   ; inline operand = 1
  $8B54  CF                         RETURN
 >$8B55  40                         LOADL_qimm   ; inline operand = 0
  $8B56  CF                         RETURN

; ============================================================
; sub $8B57   (frame_off=-10, body @ $8B5C)   [PRG $1EB57]
; ============================================================
  $8B5C  0D                         LOADL_quick   ; inline operand = 13
  $8B5D  8B 12                      BYTE_LOADR_imm1        +18
  $8B5F  B8                         UDIV
  $8B60  2B                         STORE_quick   ; inline operand = 11
  $8B61  0B                         LOADL_quick   ; inline operand = 11
  $8B62  D8 6D 8B                   JUMPF_abs              $8B6D
  $8B65  0D                         LOADL_quick   ; inline operand = 13
  $8B66  55                         LOADR_qimm   ; inline operand = 5
  $8B67  B5                         MULT
  $8B68  8F A6                      BYTE_ADD_imm1          -90
  $8B6A  D6 75 8B                   JUMP_abs               $8B75
 >$8B6D  0D                         LOADL_quick   ; inline operand = 13
  $8B6E  55                         LOADR_qimm   ; inline operand = 5
  $8B6F  B5                         MULT
  $8B70  B3                         PUSHL
  $8B71  89 5A                      BYTE_LOADL_imm1        +90
  $8B73  B4                         POPR
  $8B74  BC                         SUB
 >$8B75  29                         STORE_quick   ; inline operand = 9
  $8B76  0C                         LOADL_quick   ; inline operand = 12
  $8B77  8F 26                      BYTE_ADD_imm1          +38
  $8B79  8B 48                      BYTE_LOADR_imm1        +72
  $8B7B  BA                         UMOD
  $8B7C  27                         STORE_quick   ; inline operand = 7
  $8B7D  07                         LOADL_quick   ; inline operand = 7
  $8B7E  8B 24                      BYTE_LOADR_imm1        +36
  $8B80  B8                         UDIV
  $8B81  2A                         STORE_quick   ; inline operand = 10
  $8B82  0A                         LOADL_quick   ; inline operand = 10
  $8B83  D8 8D 8B                   JUMPF_abs              $8B8D
  $8B86  89 48                      BYTE_LOADL_imm1        +72
  $8B88  17                         LOADR_quick   ; inline operand = 7
  $8B89  BC                         SUB
  $8B8A  D6 8E 8B                   JUMP_abs               $8B8E
 >$8B8D  07                         LOADL_quick   ; inline operand = 7
 >$8B8E  55                         LOADR_qimm   ; inline operand = 5
  $8B8F  B5                         MULT
  $8B90  28                         STORE_quick   ; inline operand = 8
  $8B91  AC 4B B2                   CALL_abs               $B24B {native}
  $8B94  38                         PUSH_quick   ; inline operand = 8
  $8B95  0A                         LOADL_quick   ; inline operand = 10
  $8B96  D2                         LSHIFT1
  $8B97  8C 59 90                   LOADR_imm2             $9059
  $8B9A  BB                         ADD
  $8B9B  B0                         DEREF
  $8B9C  B3                         PUSHL
  $8B9D  39                         PUSH_quick   ; inline operand = 9
  $8B9E  0B                         LOADL_quick   ; inline operand = 11
  $8B9F  D2                         LSHIFT1
  $8BA0  8C 55 90                   LOADR_imm2             $9055
  $8BA3  BB                         ADD
  $8BA4  B0                         DEREF
  $8BA5  B3                         PUSHL
  $8BA6  8E 65 90                   PUSH_imm2              $9065
  $8BA9  E9 99 C7 0A                CALL_abs_imm1          $C799 {native}, $0A
  $8BAD  41                         LOADL_qimm   ; inline operand = 1
  $8BAE  CF                         RETURN

; ============================================================
; sub $8BAF   (frame_off=-42, body @ $8BB4)   [PRG $1EBAF]
; ============================================================
  $8BB4  8A 62 66                   LOADL_imm2             $6662
  $8BB7  85 DA                      STORE_near             $DA
  $8BB9  A5 5F 70                   BYTE_LOADL_abs         $705F
  $8BBC  54                         LOADR_qimm   ; inline operand = 4
  $8BBD  DA                         AND
  $8BBE  D8 57 8D                   JUMPF_abs              $8D57
  $8BC1  A5 65 72                   BYTE_LOADL_abs         $7265
  $8BC4  B3                         PUSHL
  $8BC5  A5 63 72                   BYTE_LOADL_abs         $7263
  $8BC8  53                         LOADR_qimm   ; inline operand = 3
  $8BC9  B5                         MULT
  $8BCA  B4                         POPR
  $8BCB  BB                         ADD
  $8BCC  29                         STORE_quick   ; inline operand = 9
  $8BCD  A5 66 72                   BYTE_LOADL_abs         $7266
  $8BD0  B3                         PUSHL
  $8BD1  A5 64 72                   BYTE_LOADL_abs         $7264
  $8BD4  53                         LOADR_qimm   ; inline operand = 3
  $8BD5  B5                         MULT
  $8BD6  B4                         POPR
  $8BD7  BB                         ADD
  $8BD8  28                         STORE_quick   ; inline operand = 8
  $8BD9  A5 5B 70                   BYTE_LOADL_abs         $705B
  $8BDC  2B                         STORE_quick   ; inline operand = 11
  $8BDD  A5 5C 70                   BYTE_LOADL_abs         $705C
  $8BE0  2A                         STORE_quick   ; inline operand = 10
  $8BE1  0B                         LOADL_quick   ; inline operand = 11
  $8BE2  19                         LOADR_quick   ; inline operand = 9
  $8BE3  C0                         CMPEQ
  $8BE4  D8 A5 8C                   JUMPF_abs              $8CA5
  $8BE7  0A                         LOADL_quick   ; inline operand = 10
  $8BE8  18                         LOADR_quick   ; inline operand = 8
  $8BE9  C0                         CMPEQ
  $8BEA  D8 A5 8C                   JUMPF_abs              $8CA5
  $8BED  A5 5D 70                   BYTE_LOADL_abs         $705D
  $8BF0  B3                         PUSHL
  $8BF1  81 DA                      LOADL_near             $DA
  $8BF3  72                         ADD_qimm   ; inline operand = 2
  $8BF4  D3                         BYTE_DEREF
  $8BF5  B4                         POPR
  $8BF6  C0                         CMPEQ
  $8BF7  D8 86 8C                   JUMPF_abs              $8C86
  $8BFA  A5 5E 70                   BYTE_LOADL_abs         $705E
  $8BFD  B3                         PUSHL
  $8BFE  81 DA                      LOADL_near             $DA
  $8C00  73                         ADD_qimm   ; inline operand = 3
  $8C01  D3                         BYTE_DEREF
  $8C02  B4                         POPR
  $8C03  C0                         CMPEQ
  $8C04  D8 86 8C                   JUMPF_abs              $8C86
  $8C07  62                         PUSH_qimm   ; inline operand = 2
  $8C08  8E FF 85                   PUSH_imm2              $85FF
  $8C0B  8E DE 00                   PUSH_imm2              $00DE
  $8C0E  61                         PUSH_qimm   ; inline operand = 1
  $8C0F  E9 3A DE 08                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $08
  $8C13  8D 19                      BYTE_PUSH_imm1         +25
  $8C15  E9 6F E0 02                CALL_abs_imm1          $E06F {native}, $02
  $8C19  60                         PUSH_qimm   ; inline operand = 0
  $8C1A  8E BD 90                   PUSH_imm2              $90BD
  $8C1D  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8C21  AA 42 65                   PUSH_abs               $6542
  $8C24  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8C28  60                         PUSH_qimm   ; inline operand = 0
  $8C29  8E C8 90                   PUSH_imm2              $90C8
  $8C2C  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8C30  A5 55 70                   BYTE_LOADL_abs         $7055
  $8C33  B3                         PUSHL
  $8C34  E9 50 D5 02                CALL_abs_imm1          $D550 {native}, $02
  $8C38  B3                         PUSHL
  $8C39  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8C3D  60                         PUSH_qimm   ; inline operand = 0
  $8C3E  8E D6 90                   PUSH_imm2              $90D6
  $8C41  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8C45  AC 7B C4                   CALL_abs               $C47B {native}
  $8C48  AC 75 A6                   CALL_abs               $A675 {native}
  $8C4B  AC 98 B5                   CALL_abs               $B598 {native}
  $8C4E  A5 8C 6B                   BYTE_LOADL_abs         $6B8C
  $8C51  55                         LOADR_qimm   ; inline operand = 5
  $8C52  B8                         UDIV
  $8C53  B3                         PUSHL
  $8C54  E9 92 B1 02                CALL_abs_imm1          $B192 {native}, $02
  $8C58  A5 55 70                   BYTE_LOADL_abs         $7055
  $8C5B  5F                         LOADR_qimm   ; inline operand = 15
  $8C5C  DA                         AND
  $8C5D  B3                         PUSHL
  $8C5E  41                         LOADL_qimm   ; inline operand = 1
  $8C5F  B4                         POPR
  $8C60  BD                         LSHIFT
  $8C61  B3                         PUSHL
  $8C62  A5 55 70                   BYTE_LOADL_abs         $7055
  $8C65  54                         LOADR_qimm   ; inline operand = 4
  $8C66  BE                         URSHIFT
  $8C67  D2                         LSHIFT1
  $8C68  8C 6D 66                   LOADR_imm2             $666D
  $8C6B  BB                         ADD
  $8C6C  B4                         POPR
  $8C6D  B3                         PUSHL
  $8C6E  B0                         DEREF
  $8C6F  DB                         OR
  $8C70  B1                         POPSTORE
  $8C71  42                         LOADL_qimm   ; inline operand = 2
  $8C72  CD                         SWAP
  $8C73  A5 5F 70                   BYTE_LOADL_abs         $705F
  $8C76  DB                         OR
  $8C77  A9 5F 70                   BYTE_STORE_abs         $705F
  $8C7A  44                         LOADL_qimm   ; inline operand = 4
  $8C7B  CD                         SWAP
  $8C7C  A5 5F 70                   BYTE_LOADL_abs         $705F
  $8C7F  DC                         XOR
  $8C80  A9 5F 70                   BYTE_STORE_abs         $705F
  $8C83  D6 61 8D                   JUMP_abs               $8D61
 >$8C86  AC E8 B2                   CALL_abs               $B2E8 {native}
  $8C89  61                         PUSH_qimm   ; inline operand = 1
  $8C8A  8E D8 90                   PUSH_imm2              $90D8
  $8C8D  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8C91  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8C94  AC 23 B2                   CALL_abs               $B223 {native}
  $8C97  60                         PUSH_qimm   ; inline operand = 0
  $8C98  8E 00 91                   PUSH_imm2              $9100
  $8C9B  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8C9F  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $8CA2  D6 61 8D                   JUMP_abs               $8D61
 >$8CA5  DE E2 FF                   LEAL_far               $FFE2
  $8CA8  B3                         PUSHL
  $8CA9  E9 A6 D6 02                CALL_abs_imm1          $D6A6 {native}, $02
  $8CAD  27                         STORE_quick   ; inline operand = 7
  $8CAE  07                         LOADL_quick   ; inline operand = 7
  $8CAF  D8 C1 8C                   JUMPF_abs              $8CC1
  $8CB2  DE E2 FF                   LEAL_far               $FFE2
  $8CB5  B3                         PUSHL
  $8CB6  37                         PUSH_quick   ; inline operand = 7
  $8CB7  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8CBB  B4                         POPR
  $8CBC  BB                         ADD
  $8CBD  D3                         BYTE_DEREF
  $8CBE  D6 C4 8C                   JUMP_abs               $8CC4
 >$8CC1  8A FF 00                   LOADL_imm2             $00FF
 >$8CC4  85 E0                      STORE_near             $E0
  $8CC6  60                         PUSH_qimm   ; inline operand = 0
  $8CC7  87 E0                      PUSH_near              $E0
  $8CC9  E9 67 B2 04                CALL_abs_imm1          $B267 {native}, $04
  $8CCD  61                         PUSH_qimm   ; inline operand = 1
  $8CCE  8E 35 91                   PUSH_imm2              $9135
  $8CD1  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8CD5  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8CD8  81 E0                      LOADL_near             $E0
  $8CDA  8C FF 00                   LOADR_imm2             $00FF
  $8CDD  C1                         CMPNE
  $8CDE  D8 01 8D                   JUMPF_abs              $8D01
  $8CE1  81 E0                      LOADL_near             $E0
  $8CE3  5A                         LOADR_qimm   ; inline operand = 10
  $8CE4  B5                         MULT
  $8CE5  8C C1 6B                   LOADR_imm2             $6BC1
  $8CE8  BB                         ADD
  $8CE9  D3                         BYTE_DEREF
  $8CEA  B3                         PUSHL
  $8CEB  8D 1E                      BYTE_PUSH_imm1         +30
  $8CED  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8CF1  8F 46                      BYTE_ADD_imm1          +70
  $8CF3  B4                         POPR
  $8CF4  C7                         UCMPLE
  $8CF5  D8 01 8D                   JUMPF_abs              $8D01
  $8CF8  3A                         PUSH_quick   ; inline operand = 10
  $8CF9  3B                         PUSH_quick   ; inline operand = 11
  $8CFA  E9 57 8B 04                CALL_abs_imm1          $8B57 (search_treasure) {bytecode}, $04
  $8CFE  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
 >$8D01  89 1F                      BYTE_LOADL_imm1        +31
  $8D03  19                         LOADR_quick   ; inline operand = 9
  $8D04  BC                         SUB
  $8D05  85 D6                      STORE_near             $D6
  $8D07  81 D6                      LOADL_near             $D6
  $8D09  CD                         SWAP
  $8D0A  09                         LOADL_quick   ; inline operand = 9
  $8D0B  BB                         ADD
  $8D0C  29                         STORE_quick   ; inline operand = 9
  $8D0D  0B                         LOADL_quick   ; inline operand = 11
  $8D0E  83 D6                      LOADR_near             $D6
  $8D10  BB                         ADD
  $8D11  85 D8                      STORE_near             $D8
  $8D13  81 D8                      LOADL_near             $D8
  $8D15  50                         LOADR_qimm   ; inline operand = 0
  $8D16  C2                         SCMPLT
  $8D17  D8 22 8D                   JUMPF_abs              $8D22
  $8D1A  0B                         LOADL_quick   ; inline operand = 11
  $8D1B  83 D6                      LOADR_near             $D6
  $8D1D  BB                         ADD
  $8D1E  8F 47                      BYTE_ADD_imm1          +71
  $8D20  85 D8                      STORE_near             $D8
 >$8D22  81 D8                      LOADL_near             $D8
  $8D24  2B                         STORE_quick   ; inline operand = 11
  $8D25  AC 4B B2                   CALL_abs               $B24B {native}
  $8D28  0A                         LOADL_quick   ; inline operand = 10
  $8D29  18                         LOADR_quick   ; inline operand = 8
  $8D2A  BC                         SUB
  $8D2B  B3                         PUSHL
  $8D2C  E9 56 DC 02                CALL_abs_imm1          $DC56 {native}, $02
  $8D30  B3                         PUSHL
  $8D31  0B                         LOADL_quick   ; inline operand = 11
  $8D32  19                         LOADR_quick   ; inline operand = 9
  $8D33  BC                         SUB
  $8D34  B3                         PUSHL
  $8D35  E9 56 DC 02                CALL_abs_imm1          $DC56 {native}, $02
  $8D39  D0                         INC
  $8D3A  53                         LOADR_qimm   ; inline operand = 3
  $8D3B  B5                         MULT
  $8D3C  B4                         POPR
  $8D3D  BB                         ADD
  $8D3E  8C A1 90                   LOADR_imm2             $90A1
  $8D41  BB                         ADD
  $8D42  D3                         BYTE_DEREF
  $8D43  D2                         LSHIFT1
  $8D44  8C 90 90                   LOADR_imm2             $9090
  $8D47  BB                         ADD
  $8D48  B0                         DEREF
  $8D49  B3                         PUSHL
  $8D4A  8E 5C 91                   PUSH_imm2              $915C
  $8D4D  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8D51  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8D54  D6 61 8D                   JUMP_abs               $8D61
 >$8D57  AC E8 B2                   CALL_abs               $B2E8 {native}
  $8D5A  8E 75 91                   PUSH_imm2              $9175
  $8D5D  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
 >$8D61  40                         LOADL_qimm   ; inline operand = 0
  $8D62  CF                         RETURN

; ============================================================
; sub $8D63   (frame_off=-4, body @ $8D68)   [PRG $1ED63]
; ============================================================
  $8D68  40                         LOADL_qimm   ; inline operand = 0
  $8D69  2A                         STORE_quick   ; inline operand = 10
 >$8D6A  62                         PUSH_qimm   ; inline operand = 2
  $8D6B  62                         PUSH_qimm   ; inline operand = 2
  $8D6C  8E 91 91                   PUSH_imm2              $9191
  $8D6F  62                         PUSH_qimm   ; inline operand = 2
  $8D70  60                         PUSH_qimm   ; inline operand = 0
  $8D71  E9 EB A0 0A                CALL_abs_imm1          $A0EB {native}, $0A
  $8D75  2B                         STORE_quick   ; inline operand = 11
  $8D76  0B                         LOADL_quick   ; inline operand = 11
  $8D77  8C FF 00                   LOADR_imm2             $00FF
  $8D7A  C1                         CMPNE
  $8D7B  D8 87 8D                   JUMPF_abs              $8D87
  $8D7E  0B                         LOADL_quick   ; inline operand = 11
  $8D7F  D2                         LSHIFT1
  $8D80  8C 95 91                   LOADR_imm2             $9195
  $8D83  BB                         ADD
  $8D84  B0                         DEREF
  $8D85  DD                         CALLPTR
  $8D86  2A                         STORE_quick   ; inline operand = 10
 >$8D87  0A                         LOADL_quick   ; inline operand = 10
  $8D88  51                         LOADR_qimm   ; inline operand = 1
  $8D89  C0                         CMPEQ
  $8D8A  D7 95 8D                   JUMPT_abs              $8D95
  $8D8D  0B                         LOADL_quick   ; inline operand = 11
  $8D8E  8C FF 00                   LOADR_imm2             $00FF
  $8D91  C0                         CMPEQ
  $8D92  D8 6A 8D                   JUMPF_abs              $8D6A
 >$8D95  0A                         LOADL_quick   ; inline operand = 10
  $8D96  CF                         RETURN

