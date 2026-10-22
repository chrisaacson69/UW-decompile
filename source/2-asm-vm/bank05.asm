VM bytecode disassembly
  ROM:          Uncharted Waters (USA).nes
  mode:         bulk dump of bank 5
  opcode spec:  vm-opcodes-v2.toml via nobunaga_vm.OPCODE_INFO (execution-validated lengths)
  labels:       0 CPU addresses named

  bank 5: found 16 bytecode-subroutine stubs

; ============================================================
; sub $8003   (frame_off=-2, body @ $8008)   [PRG $0A003]
; ============================================================
  $8008  0C                         LOADL_quick   ; inline operand = 12
  $8009  D2                         LSHIFT1
  $800A  D2                         LSHIFT1
  $800B  8C BC 6F                   LOADR_imm2             $6FBC
  $800E  BB                         ADD
  $800F  2B                         STORE_quick   ; inline operand = 11
  $8010  63                         PUSH_qimm   ; inline operand = 3
  $8011  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8015  72                         ADD_qimm   ; inline operand = 2
  $8016  B3                         PUSHL
  $8017  0B                         LOADL_quick   ; inline operand = 11
  $8018  72                         ADD_qimm   ; inline operand = 2
  $8019  D3                         BYTE_DEREF
  $801A  B3                         PUSHL
  $801B  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $801F  B3                         PUSHL
  $8020  0B                         LOADL_quick   ; inline operand = 11
  $8021  72                         ADD_qimm   ; inline operand = 2
  $8022  B4                         POPR
  $8023  B3                         PUSHL
  $8024  D3                         BYTE_DEREF
  $8025  BC                         SUB
  $8026  D4                         BYTE_POPSTORE
  $8027  CF                         RETURN

; ============================================================
; sub $8028   (frame_off=-10, body @ $802D)   [PRG $0A028]
; ============================================================
  $802D  0C                         LOADL_quick   ; inline operand = 12
  $802E  54                         LOADR_qimm   ; inline operand = 4
  $802F  BD                         LSHIFT
  $8030  8C 62 66                   LOADR_imm2             $6662
  $8033  BB                         ADD
  $8034  29                         STORE_quick   ; inline operand = 9
  $8035  09                         LOADL_quick   ; inline operand = 9
  $8036  7F                         ADD_qimm   ; inline operand = 15
  $8037  D3                         BYTE_DEREF
  $8038  58                         LOADR_qimm   ; inline operand = 8
  $8039  DA                         AND
  $803A  D7 3E 80                   JUMPT_abs              $803E
  $803D  CF                         RETURN
 >$803E  8E F7 00                   PUSH_imm2              $00F7
  $8041  09                         LOADL_quick   ; inline operand = 9
  $8042  7F                         ADD_qimm   ; inline operand = 15
  $8043  B4                         POPR
  $8044  B3                         PUSHL
  $8045  D3                         BYTE_DEREF
  $8046  DA                         AND
  $8047  D4                         BYTE_POPSTORE
  $8048  0C                         LOADL_quick   ; inline operand = 12
  $8049  8F 14                      BYTE_ADD_imm1          +20
  $804B  57                         LOADR_qimm   ; inline operand = 7
  $804C  B5                         MULT
  $804D  8C 42 65                   LOADR_imm2             $6542
  $8050  BB                         ADD
  $8051  2B                         STORE_quick   ; inline operand = 11
  $8052  8A 42 65                   LOADL_imm2             $6542
  $8055  2A                         STORE_quick   ; inline operand = 10
  $8056  3B                         PUSH_quick   ; inline operand = 11
  $8057  0C                         LOADL_quick   ; inline operand = 12
  $8058  D1                         DEC
  $8059  55                         LOADR_qimm   ; inline operand = 5
  $805A  B8                         UDIV
  $805B  B3                         PUSHL
  $805C  E9 75 8C 04                CALL_abs_imm1          $8C75 (nat_5_0c75) {native}, $04
  $8060  0B                         LOADL_quick   ; inline operand = 11
  $8061  72                         ADD_qimm   ; inline operand = 2
  $8062  B3                         PUSHL
  $8063  8D 32                      BYTE_PUSH_imm1         +50
  $8065  0A                         LOADL_quick   ; inline operand = 10
  $8066  72                         ADD_qimm   ; inline operand = 2
  $8067  D3                         BYTE_DEREF
  $8068  B3                         PUSHL
  $8069  65                         PUSH_qimm   ; inline operand = 5
  $806A  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $806E  B4                         POPR
  $806F  BB                         ADD
  $8070  B3                         PUSHL
  $8071  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8075  D4                         BYTE_POPSTORE
  $8076  0B                         LOADL_quick   ; inline operand = 11
  $8077  73                         ADD_qimm   ; inline operand = 3
  $8078  B3                         PUSHL
  $8079  8D 32                      BYTE_PUSH_imm1         +50
  $807B  0A                         LOADL_quick   ; inline operand = 10
  $807C  73                         ADD_qimm   ; inline operand = 3
  $807D  D3                         BYTE_DEREF
  $807E  B3                         PUSHL
  $807F  65                         PUSH_qimm   ; inline operand = 5
  $8080  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8084  B4                         POPR
  $8085  BB                         ADD
  $8086  B3                         PUSHL
  $8087  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $808B  D4                         BYTE_POPSTORE
  $808C  0C                         LOADL_quick   ; inline operand = 12
  $808D  8C D4 A0                   LOADR_imm2             $A0D4
  $8090  BB                         ADD
  $8091  B3                         PUSHL
  $8092  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8096  8B 13                      BYTE_LOADR_imm1        +19
  $8098  B5                         MULT
  $8099  8C D8 AF                   LOADR_imm2             $AFD8
  $809C  BB                         ADD
  $809D  28                         STORE_quick   ; inline operand = 8
  $809E  39                         PUSH_quick   ; inline operand = 9
  $809F  08                         LOADL_quick   ; inline operand = 8
  $80A0  7F                         ADD_qimm   ; inline operand = 15
  $80A1  B3                         PUSHL
  $80A2  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $80A6  D4                         BYTE_POPSTORE
  $80A7  09                         LOADL_quick   ; inline operand = 9
  $80A8  D0                         INC
  $80A9  B3                         PUSHL
  $80AA  08                         LOADL_quick   ; inline operand = 8
  $80AB  8F 10                      BYTE_ADD_imm1          +16
  $80AD  B3                         PUSHL
  $80AE  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $80B2  D4                         BYTE_POPSTORE
  $80B3  09                         LOADL_quick   ; inline operand = 9
  $80B4  72                         ADD_qimm   ; inline operand = 2
  $80B5  B3                         PUSHL
  $80B6  08                         LOADL_quick   ; inline operand = 8
  $80B7  8F 11                      BYTE_ADD_imm1          +17
  $80B9  B3                         PUSHL
  $80BA  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $80BE  D4                         BYTE_POPSTORE
  $80BF  09                         LOADL_quick   ; inline operand = 9
  $80C0  73                         ADD_qimm   ; inline operand = 3
  $80C1  B3                         PUSHL
  $80C2  08                         LOADL_quick   ; inline operand = 8
  $80C3  8F 12                      BYTE_ADD_imm1          +18
  $80C5  B3                         PUSHL
  $80C6  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $80CA  D4                         BYTE_POPSTORE
  $80CB  0B                         LOADL_quick   ; inline operand = 11
  $80CC  74                         ADD_qimm   ; inline operand = 4
  $80CD  B3                         PUSHL
  $80CE  0C                         LOADL_quick   ; inline operand = 12
  $80CF  D1                         DEC
  $80D0  55                         LOADR_qimm   ; inline operand = 5
  $80D1  B8                         UDIV
  $80D2  B3                         PUSHL
  $80D3  E9 D1 DA 02                CALL_abs_imm1          $DAD1 {native}, $02
  $80D7  B1                         POPSTORE
  $80D8  0C                         LOADL_quick   ; inline operand = 12
  $80D9  D1                         DEC
  $80DA  8B 33                      BYTE_LOADR_imm1        +51
  $80DC  B5                         MULT
  $80DD  8C 08 60                   LOADR_imm2             $6008
  $80E0  BB                         ADD
  $80E1  B3                         PUSHL
  $80E2  44                         LOADL_qimm   ; inline operand = 4
  $80E3  D4                         BYTE_POPSTORE
  $80E4  09                         LOADL_quick   ; inline operand = 9
  $80E5  7B                         ADD_qimm   ; inline operand = 11
  $80E6  B3                         PUSHL
  $80E7  40                         LOADL_qimm   ; inline operand = 0
  $80E8  B1                         POPSTORE
  $80E9  8E 00 80                   PUSH_imm2              $8000
  $80EC  09                         LOADL_quick   ; inline operand = 9
  $80ED  7D                         ADD_qimm   ; inline operand = 13
  $80EE  B4                         POPR
  $80EF  B3                         PUSHL
  $80F0  B0                         DEREF
  $80F1  DA                         AND
  $80F2  B1                         POPSTORE
  $80F3  0C                         LOADL_quick   ; inline operand = 12
  $80F4  D1                         DEC
  $80F5  8B 33                      BYTE_LOADR_imm1        +51
  $80F7  B5                         MULT
  $80F8  8C 04 60                   LOADR_imm2             $6004
  $80FB  BB                         ADD
  $80FC  27                         STORE_quick   ; inline operand = 7
  $80FD  07                         LOADL_quick   ; inline operand = 7
  $80FE  75                         ADD_qimm   ; inline operand = 5
  $80FF  B3                         PUSHL
  $8100  0C                         LOADL_quick   ; inline operand = 12
  $8101  8C D4 A0                   LOADR_imm2             $A0D4
  $8104  BB                         ADD
  $8105  B3                         PUSHL
  $8106  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $810A  D4                         BYTE_POPSTORE
  $810B  07                         LOADL_quick   ; inline operand = 7
  $810C  74                         ADD_qimm   ; inline operand = 4
  $810D  B3                         PUSHL
  $810E  44                         LOADL_qimm   ; inline operand = 4
  $810F  D4                         BYTE_POPSTORE
  $8110  07                         LOADL_quick   ; inline operand = 7
  $8111  77                         ADD_qimm   ; inline operand = 7
  $8112  B3                         PUSHL
  $8113  40                         LOADL_qimm   ; inline operand = 0
  $8114  B1                         POPSTORE
  $8115  CF                         RETURN

; ============================================================
; sub $8116   (frame_off=-20, body @ $811B)   [PRG $0A116]
; ============================================================
  $811B  0C                         LOADL_quick   ; inline operand = 12
  $811C  8B 23                      BYTE_LOADR_imm1        +35
  $811E  B5                         MULT
  $811F  8C 90 6C                   LOADR_imm2             $6C90
  $8122  BB                         ADD
  $8123  2A                         STORE_quick   ; inline operand = 10
  $8124  8F 23                      BYTE_ADD_imm1          +35
  $8126  29                         STORE_quick   ; inline operand = 9
  $8127  D6 36 81                   JUMP_abs               $8136
 >$812A  0A                         LOADL_quick   ; inline operand = 10
  $812B  76                         ADD_qimm   ; inline operand = 6
  $812C  D3                         BYTE_DEREF
  $812D  8B 40                      BYTE_LOADR_imm1        +64
  $812F  DA                         AND
  $8130  D8 3C 81                   JUMPF_abs              $813C
  $8133  0A                         LOADL_quick   ; inline operand = 10
  $8134  77                         ADD_qimm   ; inline operand = 7
  $8135  2A                         STORE_quick   ; inline operand = 10
 >$8136  0A                         LOADL_quick   ; inline operand = 10
  $8137  19                         LOADR_quick   ; inline operand = 9
  $8138  C6                         UCMPLT
  $8139  D7 2A 81                   JUMPT_abs              $812A
 >$813C  0C                         LOADL_quick   ; inline operand = 12
  $813D  D1                         DEC
  $813E  55                         LOADR_qimm   ; inline operand = 5
  $813F  B8                         UDIV
  $8140  D2                         LSHIFT1
  $8141  8C 05 A0                   LOADR_imm2             $A005
  $8144  BB                         ADD
  $8145  B3                         PUSHL
  $8146  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $814A  5E                         LOADR_qimm   ; inline operand = 14
  $814B  B5                         MULT
  $814C  8C B2 67                   LOADR_imm2             $67B2
  $814F  BB                         ADD
  $8150  27                         STORE_quick   ; inline operand = 7
  $8151  63                         PUSH_qimm   ; inline operand = 3
  $8152  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8156  77                         ADD_qimm   ; inline operand = 7
  $8157  2B                         STORE_quick   ; inline operand = 11
  $8158  0A                         LOADL_quick   ; inline operand = 10
  $8159  76                         ADD_qimm   ; inline operand = 6
  $815A  B3                         PUSHL
  $815B  40                         LOADL_qimm   ; inline operand = 0
  $815C  D4                         BYTE_POPSTORE
  $815D  0A                         LOADL_quick   ; inline operand = 10
  $815E  76                         ADD_qimm   ; inline operand = 6
  $815F  B3                         PUSHL
  $8160  0B                         LOADL_quick   ; inline operand = 11
  $8161  8B 50                      BYTE_LOADR_imm1        +80
  $8163  DB                         OR
  $8164  D4                         BYTE_POPSTORE
  $8165  3B                         PUSH_quick   ; inline operand = 11
  $8166  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $816A  28                         STORE_quick   ; inline operand = 8
  $816B  3B                         PUSH_quick   ; inline operand = 11
  $816C  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8170  8F 14                      BYTE_ADD_imm1          +20
  $8172  B3                         PUSHL
  $8173  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8177  55                         LOADR_qimm   ; inline operand = 5
  $8178  BE                         URSHIFT
  $8179  57                         LOADR_qimm   ; inline operand = 7
  $817A  DA                         AND
  $817B  26                         STORE_quick   ; inline operand = 6
  $817C  3B                         PUSH_quick   ; inline operand = 11
  $817D  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8181  8F 14                      BYTE_ADD_imm1          +20
  $8183  B3                         PUSHL
  $8184  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8188  53                         LOADR_qimm   ; inline operand = 3
  $8189  DA                         AND
  $818A  25                         STORE_quick   ; inline operand = 5
  $818B  3B                         PUSH_quick   ; inline operand = 11
  $818C  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8190  8F 14                      BYTE_ADD_imm1          +20
  $8192  B3                         PUSHL
  $8193  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8197  52                         LOADR_qimm   ; inline operand = 2
  $8198  BE                         URSHIFT
  $8199  53                         LOADR_qimm   ; inline operand = 3
  $819A  DA                         AND
  $819B  24                         STORE_quick   ; inline operand = 4
  $819C  3B                         PUSH_quick   ; inline operand = 11
  $819D  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $81A1  8F 14                      BYTE_ADD_imm1          +20
  $81A3  B3                         PUSHL
  $81A4  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $81A8  54                         LOADR_qimm   ; inline operand = 4
  $81A9  BE                         URSHIFT
  $81AA  51                         LOADR_qimm   ; inline operand = 1
  $81AB  DA                         AND
  $81AC  23                         STORE_quick   ; inline operand = 3
  $81AD  3A                         PUSH_quick   ; inline operand = 10
  $81AE  05                         LOADL_quick   ; inline operand = 5
  $81AF  5A                         LOADR_qimm   ; inline operand = 10
  $81B0  B5                         MULT
  $81B1  B3                         PUSHL
  $81B2  06                         LOADL_quick   ; inline operand = 6
  $81B3  5A                         LOADR_qimm   ; inline operand = 10
  $81B4  B5                         MULT
  $81B5  B4                         POPR
  $81B6  BB                         ADD
  $81B7  8F 14                      BYTE_ADD_imm1          +20
  $81B9  D4                         BYTE_POPSTORE
  $81BA  0A                         LOADL_quick   ; inline operand = 10
  $81BB  D0                         INC
  $81BC  B3                         PUSHL
  $81BD  44                         LOADL_qimm   ; inline operand = 4
  $81BE  13                         LOADR_quick   ; inline operand = 3
  $81BF  BC                         SUB
  $81C0  B3                         PUSHL
  $81C1  4A                         LOADL_qimm   ; inline operand = 10
  $81C2  14                         LOADR_quick   ; inline operand = 4
  $81C3  BC                         SUB
  $81C4  B3                         PUSHL
  $81C5  89 14                      BYTE_LOADL_imm1        +20
  $81C7  16                         LOADR_quick   ; inline operand = 6
  $81C8  BC                         SUB
  $81C9  8B 64                      BYTE_LOADR_imm1        +100
  $81CB  B5                         MULT
  $81CC  8B 14                      BYTE_LOADR_imm1        +20
  $81CE  B6                         SDIV
  $81CF  B4                         POPR
  $81D0  B5                         MULT
  $81D1  5A                         LOADR_qimm   ; inline operand = 10
  $81D2  B6                         SDIV
  $81D3  B4                         POPR
  $81D4  B5                         MULT
  $81D5  54                         LOADR_qimm   ; inline operand = 4
  $81D6  B6                         SDIV
  $81D7  D4                         BYTE_POPSTORE
  $81D8  0A                         LOADL_quick   ; inline operand = 10
  $81D9  72                         ADD_qimm   ; inline operand = 2
  $81DA  B3                         PUSHL
  $81DB  03                         LOADL_quick   ; inline operand = 3
  $81DC  73                         ADD_qimm   ; inline operand = 3
  $81DD  B3                         PUSHL
  $81DE  4A                         LOADL_qimm   ; inline operand = 10
  $81DF  16                         LOADR_quick   ; inline operand = 6
  $81E0  BC                         SUB
  $81E1  B3                         PUSHL
  $81E2  04                         LOADL_quick   ; inline operand = 4
  $81E3  5A                         LOADR_qimm   ; inline operand = 10
  $81E4  B5                         MULT
  $81E5  8F 64                      BYTE_ADD_imm1          +100
  $81E7  B4                         POPR
  $81E8  B5                         MULT
  $81E9  5A                         LOADR_qimm   ; inline operand = 10
  $81EA  B6                         SDIV
  $81EB  B4                         POPR
  $81EC  B5                         MULT
  $81ED  54                         LOADR_qimm   ; inline operand = 4
  $81EE  B6                         SDIV
  $81EF  D4                         BYTE_POPSTORE
  $81F0  0A                         LOADL_quick   ; inline operand = 10
  $81F1  72                         ADD_qimm   ; inline operand = 2
  $81F2  B3                         PUSHL
  $81F3  8D 64                      BYTE_PUSH_imm1         +100
  $81F5  0A                         LOADL_quick   ; inline operand = 10
  $81F6  72                         ADD_qimm   ; inline operand = 2
  $81F7  D3                         BYTE_DEREF
  $81F8  B3                         PUSHL
  $81F9  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $81FD  D4                         BYTE_POPSTORE
  $81FE  0A                         LOADL_quick   ; inline operand = 10
  $81FF  73                         ADD_qimm   ; inline operand = 3
  $8200  B3                         PUSHL
  $8201  08                         LOADL_quick   ; inline operand = 8
  $8202  8F 11                      BYTE_ADD_imm1          +17
  $8204  B3                         PUSHL
  $8205  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8209  D4                         BYTE_POPSTORE
  $820A  08                         LOADL_quick   ; inline operand = 8
  $820B  7F                         ADD_qimm   ; inline operand = 15
  $820C  B3                         PUSHL
  $820D  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8211  22                         STORE_quick   ; inline operand = 2
  $8212  0A                         LOADL_quick   ; inline operand = 10
  $8213  74                         ADD_qimm   ; inline operand = 4
  $8214  B3                         PUSHL
  $8215  02                         LOADL_quick   ; inline operand = 2
  $8216  52                         LOADR_qimm   ; inline operand = 2
  $8217  B6                         SDIV
  $8218  B3                         PUSHL
  $8219  07                         LOADL_quick   ; inline operand = 7
  $821A  B0                         DEREF
  $821B  8C FA 00                   LOADR_imm2             $00FA
  $821E  B6                         SDIV
  $821F  B3                         PUSHL
  $8220  02                         LOADL_quick   ; inline operand = 2
  $8221  58                         LOADR_qimm   ; inline operand = 8
  $8222  B6                         SDIV
  $8223  B4                         POPR
  $8224  B5                         MULT
  $8225  B4                         POPR
  $8226  BB                         ADD
  $8227  B1                         POPSTORE
  $8228  CF                         RETURN

; ============================================================
; sub $8229   (frame_off=-18, body @ $822E)   [PRG $0A229]
; ============================================================
  $822E  0C                         LOADL_quick   ; inline operand = 12
  $822F  D2                         LSHIFT1
  $8230  D2                         LSHIFT1
  $8231  8C BC 6F                   LOADR_imm2             $6FBC
  $8234  BB                         ADD
  $8235  23                         STORE_quick   ; inline operand = 3
  $8236  03                         LOADL_quick   ; inline operand = 3
  $8237  B0                         DEREF
  $8238  8B 64                      BYTE_LOADR_imm1        +100
  $823A  B8                         UDIV
  $823B  D0                         INC
  $823C  2A                         STORE_quick   ; inline operand = 10
  $823D  0A                         LOADL_quick   ; inline operand = 10
  $823E  D7 42 82                   JUMPT_abs              $8242
  $8241  CF                         RETURN
 >$8242  0C                         LOADL_quick   ; inline operand = 12
  $8243  55                         LOADR_qimm   ; inline operand = 5
  $8244  B5                         MULT
  $8245  D0                         INC
  $8246  2C                         STORE_quick   ; inline operand = 12
  $8247  40                         LOADL_qimm   ; inline operand = 0
  $8248  29                         STORE_quick   ; inline operand = 9
  $8249  40                         LOADL_qimm   ; inline operand = 0
  $824A  D6 70 82                   JUMP_abs               $8270
 >$824D  DE F7 FF                   LEAL_far               $FFF7
  $8250  B3                         PUSHL
  $8251  0B                         LOADL_quick   ; inline operand = 11
  $8252  B4                         POPR
  $8253  BB                         ADD
  $8254  B3                         PUSHL
  $8255  DE F2 FF                   LEAL_far               $FFF2
  $8258  B3                         PUSHL
  $8259  0C                         LOADL_quick   ; inline operand = 12
  $825A  1B                         LOADR_quick   ; inline operand = 11
  $825B  BB                         ADD
  $825C  B3                         PUSHL
  $825D  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $8261  D4                         BYTE_POPSTORE
  $8262  DE F7 FF                   LEAL_far               $FFF7
  $8265  B3                         PUSHL
  $8266  0B                         LOADL_quick   ; inline operand = 11
  $8267  B4                         POPR
  $8268  BB                         ADD
  $8269  D3                         BYTE_DEREF
  $826A  CD                         SWAP
  $826B  09                         LOADL_quick   ; inline operand = 9
  $826C  BB                         ADD
  $826D  29                         STORE_quick   ; inline operand = 9
  $826E  0B                         LOADL_quick   ; inline operand = 11
  $826F  D0                         INC
 >$8270  2B                         STORE_quick   ; inline operand = 11
  $8271  0B                         LOADL_quick   ; inline operand = 11
  $8272  53                         LOADR_qimm   ; inline operand = 3
  $8273  C6                         UCMPLT
  $8274  D7 4D 82                   JUMPT_abs              $824D
  $8277  09                         LOADL_quick   ; inline operand = 9
  $8278  5F                         LOADR_qimm   ; inline operand = 15
  $8279  C0                         CMPEQ
  $827A  D8 7E 82                   JUMPF_abs              $827E
  $827D  CF                         RETURN
 >$827E  DE F7 FF                   LEAL_far               $FFF7
  $8281  24                         STORE_quick   ; inline operand = 4
  $8282  40                         LOADL_qimm   ; inline operand = 0
  $8283  D6 BF 82                   JUMP_abs               $82BF
 >$8286  04                         LOADL_quick   ; inline operand = 4
  $8287  D3                         BYTE_DEREF
  $8288  55                         LOADR_qimm   ; inline operand = 5
  $8289  C6                         UCMPLT
  $828A  D8 BA 82                   JUMPF_abs              $82BA
  $828D  04                         LOADL_quick   ; inline operand = 4
  $828E  D3                         BYTE_DEREF
  $828F  D7 9A 82                   JUMPT_abs              $829A
  $8292  0C                         LOADL_quick   ; inline operand = 12
  $8293  1B                         LOADR_quick   ; inline operand = 11
  $8294  BB                         ADD
  $8295  B3                         PUSHL
  $8296  E9 28 80 02                CALL_abs_imm1          $8028 {bytecode}, $02
 >$829A  0C                         LOADL_quick   ; inline operand = 12
  $829B  1B                         LOADR_quick   ; inline operand = 11
  $829C  BB                         ADD
  $829D  B3                         PUSHL
  $829E  E9 16 81 02                CALL_abs_imm1          $8116 {bytecode}, $02
  $82A2  34                         PUSH_quick   ; inline operand = 4
  $82A3  DE F2 FF                   LEAL_far               $FFF2
  $82A6  B3                         PUSHL
  $82A7  0C                         LOADL_quick   ; inline operand = 12
  $82A8  1B                         LOADR_quick   ; inline operand = 11
  $82A9  BB                         ADD
  $82AA  B3                         PUSHL
  $82AB  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $82AF  D4                         BYTE_POPSTORE
  $82B0  09                         LOADL_quick   ; inline operand = 9
  $82B1  D0                         INC
  $82B2  29                         STORE_quick   ; inline operand = 9
  $82B3  0A                         LOADL_quick   ; inline operand = 10
  $82B4  D1                         DEC
  $82B5  2A                         STORE_quick   ; inline operand = 10
  $82B6  0A                         LOADL_quick   ; inline operand = 10
  $82B7  D8 C6 82                   JUMPF_abs              $82C6
 >$82BA  04                         LOADL_quick   ; inline operand = 4
  $82BB  D0                         INC
  $82BC  24                         STORE_quick   ; inline operand = 4
  $82BD  0B                         LOADL_quick   ; inline operand = 11
  $82BE  D0                         INC
 >$82BF  2B                         STORE_quick   ; inline operand = 11
  $82C0  0B                         LOADL_quick   ; inline operand = 11
  $82C1  53                         LOADR_qimm   ; inline operand = 3
  $82C2  C6                         UCMPLT
  $82C3  D7 86 82                   JUMPT_abs              $8286
 >$82C6  09                         LOADL_quick   ; inline operand = 9
  $82C7  5F                         LOADR_qimm   ; inline operand = 15
  $82C8  C6                         UCMPLT
  $82C9  D8 D0 82                   JUMPF_abs              $82D0
  $82CC  0A                         LOADL_quick   ; inline operand = 10
  $82CD  D7 7E 82                   JUMPT_abs              $827E
 >$82D0  CF                         RETURN

; ============================================================
; sub $82D1   (frame_off=-12, body @ $82D6)   [PRG $0A2D1]
; ============================================================
  $82D6  0C                         LOADL_quick   ; inline operand = 12
  $82D7  8B 23                      BYTE_LOADR_imm1        +35
  $82D9  B5                         MULT
  $82DA  8C 90 6C                   LOADR_imm2             $6C90
  $82DD  BB                         ADD
  $82DE  2A                         STORE_quick   ; inline operand = 10
  $82DF  8F 23                      BYTE_ADD_imm1          +35
  $82E1  29                         STORE_quick   ; inline operand = 9
  $82E2  D6 F1 82                   JUMP_abs               $82F1
 >$82E5  0A                         LOADL_quick   ; inline operand = 10
  $82E6  76                         ADD_qimm   ; inline operand = 6
  $82E7  D3                         BYTE_DEREF
  $82E8  8B 40                      BYTE_LOADR_imm1        +64
  $82EA  DA                         AND
  $82EB  D8 F7 82                   JUMPF_abs              $82F7
  $82EE  0A                         LOADL_quick   ; inline operand = 10
  $82EF  77                         ADD_qimm   ; inline operand = 7
  $82F0  2A                         STORE_quick   ; inline operand = 10
 >$82F1  0A                         LOADL_quick   ; inline operand = 10
  $82F2  19                         LOADR_quick   ; inline operand = 9
  $82F3  C6                         UCMPLT
  $82F4  D7 E5 82                   JUMPT_abs              $82E5
 >$82F7  0C                         LOADL_quick   ; inline operand = 12
  $82F8  D1                         DEC
  $82F9  55                         LOADR_qimm   ; inline operand = 5
  $82FA  B8                         UDIV
  $82FB  D2                         LSHIFT1
  $82FC  8C 05 A0                   LOADR_imm2             $A005
  $82FF  BB                         ADD
  $8300  B3                         PUSHL
  $8301  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8305  5E                         LOADR_qimm   ; inline operand = 14
  $8306  B5                         MULT
  $8307  8C B2 67                   LOADR_imm2             $67B2
  $830A  BB                         ADD
  $830B  27                         STORE_quick   ; inline operand = 7
  $830C  62                         PUSH_qimm   ; inline operand = 2
  $830D  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8311  79                         ADD_qimm   ; inline operand = 9
  $8312  2B                         STORE_quick   ; inline operand = 11
  $8313  0A                         LOADL_quick   ; inline operand = 10
  $8314  76                         ADD_qimm   ; inline operand = 6
  $8315  B3                         PUSHL
  $8316  40                         LOADL_qimm   ; inline operand = 0
  $8317  D4                         BYTE_POPSTORE
  $8318  0A                         LOADL_quick   ; inline operand = 10
  $8319  76                         ADD_qimm   ; inline operand = 6
  $831A  B3                         PUSHL
  $831B  0B                         LOADL_quick   ; inline operand = 11
  $831C  8B 40                      BYTE_LOADR_imm1        +64
  $831E  DB                         OR
  $831F  D4                         BYTE_POPSTORE
  $8320  62                         PUSH_qimm   ; inline operand = 2
  $8321  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8325  72                         ADD_qimm   ; inline operand = 2
  $8326  54                         LOADR_qimm   ; inline operand = 4
  $8327  BD                         LSHIFT
  $8328  B3                         PUSHL
  $8329  0A                         LOADL_quick   ; inline operand = 10
  $832A  76                         ADD_qimm   ; inline operand = 6
  $832B  B4                         POPR
  $832C  B3                         PUSHL
  $832D  D3                         BYTE_DEREF
  $832E  DB                         OR
  $832F  D4                         BYTE_POPSTORE
  $8330  3B                         PUSH_quick   ; inline operand = 11
  $8331  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8335  28                         STORE_quick   ; inline operand = 8
  $8336  3A                         PUSH_quick   ; inline operand = 10
  $8337  3B                         PUSH_quick   ; inline operand = 11
  $8338  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $833C  8F 14                      BYTE_ADD_imm1          +20
  $833E  B3                         PUSHL
  $833F  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8343  53                         LOADR_qimm   ; inline operand = 3
  $8344  DA                         AND
  $8345  5A                         LOADR_qimm   ; inline operand = 10
  $8346  B5                         MULT
  $8347  B3                         PUSHL
  $8348  3B                         PUSH_quick   ; inline operand = 11
  $8349  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $834D  8F 14                      BYTE_ADD_imm1          +20
  $834F  B3                         PUSHL
  $8350  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8354  55                         LOADR_qimm   ; inline operand = 5
  $8355  BE                         URSHIFT
  $8356  57                         LOADR_qimm   ; inline operand = 7
  $8357  DA                         AND
  $8358  5A                         LOADR_qimm   ; inline operand = 10
  $8359  B5                         MULT
  $835A  B4                         POPR
  $835B  BB                         ADD
  $835C  8F 14                      BYTE_ADD_imm1          +20
  $835E  D4                         BYTE_POPSTORE
  $835F  0A                         LOADL_quick   ; inline operand = 10
  $8360  D0                         INC
  $8361  B3                         PUSHL
  $8362  3B                         PUSH_quick   ; inline operand = 11
  $8363  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8367  8F 14                      BYTE_ADD_imm1          +20
  $8369  B3                         PUSHL
  $836A  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $836E  54                         LOADR_qimm   ; inline operand = 4
  $836F  BE                         URSHIFT
  $8370  51                         LOADR_qimm   ; inline operand = 1
  $8371  DA                         AND
  $8372  B3                         PUSHL
  $8373  44                         LOADL_qimm   ; inline operand = 4
  $8374  B4                         POPR
  $8375  BC                         SUB
  $8376  B3                         PUSHL
  $8377  3B                         PUSH_quick   ; inline operand = 11
  $8378  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $837C  8F 14                      BYTE_ADD_imm1          +20
  $837E  B3                         PUSHL
  $837F  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8383  52                         LOADR_qimm   ; inline operand = 2
  $8384  BE                         URSHIFT
  $8385  53                         LOADR_qimm   ; inline operand = 3
  $8386  DA                         AND
  $8387  B3                         PUSHL
  $8388  4A                         LOADL_qimm   ; inline operand = 10
  $8389  B4                         POPR
  $838A  BC                         SUB
  $838B  B3                         PUSHL
  $838C  3B                         PUSH_quick   ; inline operand = 11
  $838D  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8391  8F 14                      BYTE_ADD_imm1          +20
  $8393  B3                         PUSHL
  $8394  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8398  55                         LOADR_qimm   ; inline operand = 5
  $8399  BE                         URSHIFT
  $839A  57                         LOADR_qimm   ; inline operand = 7
  $839B  DA                         AND
  $839C  B3                         PUSHL
  $839D  89 14                      BYTE_LOADL_imm1        +20
  $839F  B4                         POPR
  $83A0  BC                         SUB
  $83A1  8B 64                      BYTE_LOADR_imm1        +100
  $83A3  B5                         MULT
  $83A4  8B 14                      BYTE_LOADR_imm1        +20
  $83A6  B6                         SDIV
  $83A7  B4                         POPR
  $83A8  B5                         MULT
  $83A9  5A                         LOADR_qimm   ; inline operand = 10
  $83AA  B6                         SDIV
  $83AB  B4                         POPR
  $83AC  B5                         MULT
  $83AD  54                         LOADR_qimm   ; inline operand = 4
  $83AE  B6                         SDIV
  $83AF  D4                         BYTE_POPSTORE
  $83B0  0A                         LOADL_quick   ; inline operand = 10
  $83B1  72                         ADD_qimm   ; inline operand = 2
  $83B2  B3                         PUSHL
  $83B3  3B                         PUSH_quick   ; inline operand = 11
  $83B4  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $83B8  8F 14                      BYTE_ADD_imm1          +20
  $83BA  B3                         PUSHL
  $83BB  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $83BF  54                         LOADR_qimm   ; inline operand = 4
  $83C0  BE                         URSHIFT
  $83C1  51                         LOADR_qimm   ; inline operand = 1
  $83C2  DA                         AND
  $83C3  73                         ADD_qimm   ; inline operand = 3
  $83C4  B3                         PUSHL
  $83C5  3B                         PUSH_quick   ; inline operand = 11
  $83C6  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $83CA  8F 14                      BYTE_ADD_imm1          +20
  $83CC  B3                         PUSHL
  $83CD  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $83D1  55                         LOADR_qimm   ; inline operand = 5
  $83D2  BE                         URSHIFT
  $83D3  57                         LOADR_qimm   ; inline operand = 7
  $83D4  DA                         AND
  $83D5  B3                         PUSHL
  $83D6  4A                         LOADL_qimm   ; inline operand = 10
  $83D7  B4                         POPR
  $83D8  BC                         SUB
  $83D9  B3                         PUSHL
  $83DA  3B                         PUSH_quick   ; inline operand = 11
  $83DB  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $83DF  8F 14                      BYTE_ADD_imm1          +20
  $83E1  B3                         PUSHL
  $83E2  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $83E6  52                         LOADR_qimm   ; inline operand = 2
  $83E7  BE                         URSHIFT
  $83E8  53                         LOADR_qimm   ; inline operand = 3
  $83E9  DA                         AND
  $83EA  5A                         LOADR_qimm   ; inline operand = 10
  $83EB  B5                         MULT
  $83EC  8F 64                      BYTE_ADD_imm1          +100
  $83EE  B4                         POPR
  $83EF  B5                         MULT
  $83F0  5A                         LOADR_qimm   ; inline operand = 10
  $83F1  B6                         SDIV
  $83F2  B4                         POPR
  $83F3  B5                         MULT
  $83F4  54                         LOADR_qimm   ; inline operand = 4
  $83F5  B6                         SDIV
  $83F6  D4                         BYTE_POPSTORE
  $83F7  0A                         LOADL_quick   ; inline operand = 10
  $83F8  72                         ADD_qimm   ; inline operand = 2
  $83F9  B3                         PUSHL
  $83FA  8D 64                      BYTE_PUSH_imm1         +100
  $83FC  0A                         LOADL_quick   ; inline operand = 10
  $83FD  72                         ADD_qimm   ; inline operand = 2
  $83FE  D3                         BYTE_DEREF
  $83FF  B3                         PUSHL
  $8400  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8404  D4                         BYTE_POPSTORE
  $8405  0A                         LOADL_quick   ; inline operand = 10
  $8406  73                         ADD_qimm   ; inline operand = 3
  $8407  B3                         PUSHL
  $8408  08                         LOADL_quick   ; inline operand = 8
  $8409  8F 11                      BYTE_ADD_imm1          +17
  $840B  B3                         PUSHL
  $840C  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8410  D4                         BYTE_POPSTORE
  $8411  08                         LOADL_quick   ; inline operand = 8
  $8412  7F                         ADD_qimm   ; inline operand = 15
  $8413  B3                         PUSHL
  $8414  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8418  26                         STORE_quick   ; inline operand = 6
  $8419  0A                         LOADL_quick   ; inline operand = 10
  $841A  74                         ADD_qimm   ; inline operand = 4
  $841B  B3                         PUSHL
  $841C  06                         LOADL_quick   ; inline operand = 6
  $841D  52                         LOADR_qimm   ; inline operand = 2
  $841E  B6                         SDIV
  $841F  B3                         PUSHL
  $8420  07                         LOADL_quick   ; inline operand = 7
  $8421  B0                         DEREF
  $8422  8C FA 00                   LOADR_imm2             $00FA
  $8425  B6                         SDIV
  $8426  B3                         PUSHL
  $8427  06                         LOADL_quick   ; inline operand = 6
  $8428  58                         LOADR_qimm   ; inline operand = 8
  $8429  B6                         SDIV
  $842A  B4                         POPR
  $842B  B5                         MULT
  $842C  B4                         POPR
  $842D  BB                         ADD
  $842E  B1                         POPSTORE
  $842F  CF                         RETURN

; ============================================================
; sub $8430   (frame_off=-16, body @ $8435)   [PRG $0A430]
; ============================================================
  $8435  0C                         LOADL_quick   ; inline operand = 12
  $8436  D2                         LSHIFT1
  $8437  D2                         LSHIFT1
  $8438  8C BC 6F                   LOADR_imm2             $6FBC
  $843B  BB                         ADD
  $843C  24                         STORE_quick   ; inline operand = 4
  $843D  04                         LOADL_quick   ; inline operand = 4
  $843E  B0                         DEREF
  $843F  8C 96 00                   LOADR_imm2             $0096
  $8442  B8                         UDIV
  $8443  D0                         INC
  $8444  2B                         STORE_quick   ; inline operand = 11
  $8445  0C                         LOADL_quick   ; inline operand = 12
  $8446  55                         LOADR_qimm   ; inline operand = 5
  $8447  B5                         MULT
  $8448  74                         ADD_qimm   ; inline operand = 4
  $8449  2C                         STORE_quick   ; inline operand = 12
  $844A  0B                         LOADL_quick   ; inline operand = 11
  $844B  D7 4F 84                   JUMPT_abs              $844F
  $844E  CF                         RETURN
 >$844F  40                         LOADL_qimm   ; inline operand = 0
  $8450  2A                         STORE_quick   ; inline operand = 10
  $8451  40                         LOADL_qimm   ; inline operand = 0
  $8452  D6 78 84                   JUMP_abs               $8478
 >$8455  DE F7 FF                   LEAL_far               $FFF7
  $8458  B3                         PUSHL
  $8459  09                         LOADL_quick   ; inline operand = 9
  $845A  B4                         POPR
  $845B  BB                         ADD
  $845C  B3                         PUSHL
  $845D  DE F2 FF                   LEAL_far               $FFF2
  $8460  B3                         PUSHL
  $8461  0C                         LOADL_quick   ; inline operand = 12
  $8462  19                         LOADR_quick   ; inline operand = 9
  $8463  BB                         ADD
  $8464  B3                         PUSHL
  $8465  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $8469  D4                         BYTE_POPSTORE
  $846A  DE F7 FF                   LEAL_far               $FFF7
  $846D  B3                         PUSHL
  $846E  09                         LOADL_quick   ; inline operand = 9
  $846F  B4                         POPR
  $8470  BB                         ADD
  $8471  D3                         BYTE_DEREF
  $8472  CD                         SWAP
  $8473  0A                         LOADL_quick   ; inline operand = 10
  $8474  BB                         ADD
  $8475  2A                         STORE_quick   ; inline operand = 10
  $8476  09                         LOADL_quick   ; inline operand = 9
  $8477  D0                         INC
 >$8478  29                         STORE_quick   ; inline operand = 9
  $8479  09                         LOADL_quick   ; inline operand = 9
  $847A  52                         LOADR_qimm   ; inline operand = 2
  $847B  C6                         UCMPLT
  $847C  D7 55 84                   JUMPT_abs              $8455
  $847F  0A                         LOADL_quick   ; inline operand = 10
  $8480  5A                         LOADR_qimm   ; inline operand = 10
  $8481  C0                         CMPEQ
  $8482  D8 86 84                   JUMPF_abs              $8486
  $8485  CF                         RETURN
 >$8486  40                         LOADL_qimm   ; inline operand = 0
  $8487  29                         STORE_quick   ; inline operand = 9
 >$8488  DE F7 FF                   LEAL_far               $FFF7
  $848B  B3                         PUSHL
  $848C  09                         LOADL_quick   ; inline operand = 9
  $848D  B4                         POPR
  $848E  BB                         ADD
  $848F  D3                         BYTE_DEREF
  $8490  55                         LOADR_qimm   ; inline operand = 5
  $8491  C6                         UCMPLT
  $8492  D8 CF 84                   JUMPF_abs              $84CF
  $8495  DE F7 FF                   LEAL_far               $FFF7
  $8498  B3                         PUSHL
  $8499  09                         LOADL_quick   ; inline operand = 9
  $849A  B4                         POPR
  $849B  BB                         ADD
  $849C  D3                         BYTE_DEREF
  $849D  D7 A8 84                   JUMPT_abs              $84A8
  $84A0  0C                         LOADL_quick   ; inline operand = 12
  $84A1  19                         LOADR_quick   ; inline operand = 9
  $84A2  BB                         ADD
  $84A3  B3                         PUSHL
  $84A4  E9 28 80 02                CALL_abs_imm1          $8028 {bytecode}, $02
 >$84A8  0C                         LOADL_quick   ; inline operand = 12
  $84A9  19                         LOADR_quick   ; inline operand = 9
  $84AA  BB                         ADD
  $84AB  B3                         PUSHL
  $84AC  E9 D1 82 02                CALL_abs_imm1          $82D1 {bytecode}, $02
  $84B0  DE F7 FF                   LEAL_far               $FFF7
  $84B3  B3                         PUSHL
  $84B4  09                         LOADL_quick   ; inline operand = 9
  $84B5  B4                         POPR
  $84B6  BB                         ADD
  $84B7  B3                         PUSHL
  $84B8  DE F2 FF                   LEAL_far               $FFF2
  $84BB  B3                         PUSHL
  $84BC  0C                         LOADL_quick   ; inline operand = 12
  $84BD  19                         LOADR_quick   ; inline operand = 9
  $84BE  BB                         ADD
  $84BF  B3                         PUSHL
  $84C0  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $84C4  D4                         BYTE_POPSTORE
  $84C5  0A                         LOADL_quick   ; inline operand = 10
  $84C6  D0                         INC
  $84C7  2A                         STORE_quick   ; inline operand = 10
  $84C8  0B                         LOADL_quick   ; inline operand = 11
  $84C9  D1                         DEC
  $84CA  2B                         STORE_quick   ; inline operand = 11
  $84CB  0B                         LOADL_quick   ; inline operand = 11
  $84CC  D8 D8 84                   JUMPF_abs              $84D8
 >$84CF  09                         LOADL_quick   ; inline operand = 9
  $84D0  D0                         INC
  $84D1  29                         STORE_quick   ; inline operand = 9
  $84D2  09                         LOADL_quick   ; inline operand = 9
  $84D3  52                         LOADR_qimm   ; inline operand = 2
  $84D4  C6                         UCMPLT
  $84D5  D7 88 84                   JUMPT_abs              $8488
 >$84D8  0A                         LOADL_quick   ; inline operand = 10
  $84D9  5A                         LOADR_qimm   ; inline operand = 10
  $84DA  C6                         UCMPLT
  $84DB  D8 E2 84                   JUMPF_abs              $84E2
  $84DE  0B                         LOADL_quick   ; inline operand = 11
  $84DF  D7 86 84                   JUMPT_abs              $8486
 >$84E2  CF                         RETURN

; ============================================================
; sub $84E3   (frame_off=-8, body @ $84E8)   [PRG $0A4E3]
; ============================================================
  $84E8  0C                         LOADL_quick   ; inline operand = 12
  $84E9  8B 23                      BYTE_LOADR_imm1        +35
  $84EB  B5                         MULT
  $84EC  8C 90 6C                   LOADR_imm2             $6C90
  $84EF  BB                         ADD
  $84F0  2A                         STORE_quick   ; inline operand = 10
  $84F1  8F 23                      BYTE_ADD_imm1          +35
  $84F3  29                         STORE_quick   ; inline operand = 9
  $84F4  D6 03 85                   JUMP_abs               $8503
 >$84F7  0A                         LOADL_quick   ; inline operand = 10
  $84F8  76                         ADD_qimm   ; inline operand = 6
  $84F9  D3                         BYTE_DEREF
  $84FA  8B 40                      BYTE_LOADR_imm1        +64
  $84FC  DA                         AND
  $84FD  D8 09 85                   JUMPF_abs              $8509
  $8500  0A                         LOADL_quick   ; inline operand = 10
  $8501  77                         ADD_qimm   ; inline operand = 7
  $8502  2A                         STORE_quick   ; inline operand = 10
 >$8503  0A                         LOADL_quick   ; inline operand = 10
  $8504  19                         LOADR_quick   ; inline operand = 9
  $8505  C6                         UCMPLT
  $8506  D7 F7 84                   JUMPT_abs              $84F7
 >$8509  63                         PUSH_qimm   ; inline operand = 3
  $850A  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $850E  78                         ADD_qimm   ; inline operand = 8
  $850F  2B                         STORE_quick   ; inline operand = 11
  $8510  0A                         LOADL_quick   ; inline operand = 10
  $8511  76                         ADD_qimm   ; inline operand = 6
  $8512  B3                         PUSHL
  $8513  40                         LOADL_qimm   ; inline operand = 0
  $8514  D4                         BYTE_POPSTORE
  $8515  0A                         LOADL_quick   ; inline operand = 10
  $8516  76                         ADD_qimm   ; inline operand = 6
  $8517  B3                         PUSHL
  $8518  0B                         LOADL_quick   ; inline operand = 11
  $8519  8B 40                      BYTE_LOADR_imm1        +64
  $851B  DB                         OR
  $851C  D4                         BYTE_POPSTORE
  $851D  62                         PUSH_qimm   ; inline operand = 2
  $851E  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8522  72                         ADD_qimm   ; inline operand = 2
  $8523  54                         LOADR_qimm   ; inline operand = 4
  $8524  BD                         LSHIFT
  $8525  B3                         PUSHL
  $8526  0A                         LOADL_quick   ; inline operand = 10
  $8527  76                         ADD_qimm   ; inline operand = 6
  $8528  B4                         POPR
  $8529  B3                         PUSHL
  $852A  D3                         BYTE_DEREF
  $852B  DB                         OR
  $852C  D4                         BYTE_POPSTORE
  $852D  3B                         PUSH_quick   ; inline operand = 11
  $852E  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8532  28                         STORE_quick   ; inline operand = 8
  $8533  3A                         PUSH_quick   ; inline operand = 10
  $8534  3B                         PUSH_quick   ; inline operand = 11
  $8535  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8539  8F 14                      BYTE_ADD_imm1          +20
  $853B  B3                         PUSHL
  $853C  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8540  53                         LOADR_qimm   ; inline operand = 3
  $8541  DA                         AND
  $8542  5A                         LOADR_qimm   ; inline operand = 10
  $8543  B5                         MULT
  $8544  B3                         PUSHL
  $8545  3B                         PUSH_quick   ; inline operand = 11
  $8546  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $854A  8F 14                      BYTE_ADD_imm1          +20
  $854C  B3                         PUSHL
  $854D  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8551  55                         LOADR_qimm   ; inline operand = 5
  $8552  BE                         URSHIFT
  $8553  57                         LOADR_qimm   ; inline operand = 7
  $8554  DA                         AND
  $8555  5A                         LOADR_qimm   ; inline operand = 10
  $8556  B5                         MULT
  $8557  B4                         POPR
  $8558  BB                         ADD
  $8559  8F 14                      BYTE_ADD_imm1          +20
  $855B  D4                         BYTE_POPSTORE
  $855C  0A                         LOADL_quick   ; inline operand = 10
  $855D  D0                         INC
  $855E  B3                         PUSHL
  $855F  3B                         PUSH_quick   ; inline operand = 11
  $8560  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8564  8F 14                      BYTE_ADD_imm1          +20
  $8566  B3                         PUSHL
  $8567  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $856B  54                         LOADR_qimm   ; inline operand = 4
  $856C  BE                         URSHIFT
  $856D  51                         LOADR_qimm   ; inline operand = 1
  $856E  DA                         AND
  $856F  B3                         PUSHL
  $8570  44                         LOADL_qimm   ; inline operand = 4
  $8571  B4                         POPR
  $8572  BC                         SUB
  $8573  B3                         PUSHL
  $8574  3B                         PUSH_quick   ; inline operand = 11
  $8575  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8579  8F 14                      BYTE_ADD_imm1          +20
  $857B  B3                         PUSHL
  $857C  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8580  52                         LOADR_qimm   ; inline operand = 2
  $8581  BE                         URSHIFT
  $8582  53                         LOADR_qimm   ; inline operand = 3
  $8583  DA                         AND
  $8584  B3                         PUSHL
  $8585  4A                         LOADL_qimm   ; inline operand = 10
  $8586  B4                         POPR
  $8587  BC                         SUB
  $8588  B3                         PUSHL
  $8589  3B                         PUSH_quick   ; inline operand = 11
  $858A  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $858E  8F 14                      BYTE_ADD_imm1          +20
  $8590  B3                         PUSHL
  $8591  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8595  55                         LOADR_qimm   ; inline operand = 5
  $8596  BE                         URSHIFT
  $8597  57                         LOADR_qimm   ; inline operand = 7
  $8598  DA                         AND
  $8599  B3                         PUSHL
  $859A  89 14                      BYTE_LOADL_imm1        +20
  $859C  B4                         POPR
  $859D  BC                         SUB
  $859E  8B 64                      BYTE_LOADR_imm1        +100
  $85A0  B5                         MULT
  $85A1  8B 14                      BYTE_LOADR_imm1        +20
  $85A3  B6                         SDIV
  $85A4  B4                         POPR
  $85A5  B5                         MULT
  $85A6  5A                         LOADR_qimm   ; inline operand = 10
  $85A7  B6                         SDIV
  $85A8  B4                         POPR
  $85A9  B5                         MULT
  $85AA  54                         LOADR_qimm   ; inline operand = 4
  $85AB  B6                         SDIV
  $85AC  D4                         BYTE_POPSTORE
  $85AD  0A                         LOADL_quick   ; inline operand = 10
  $85AE  72                         ADD_qimm   ; inline operand = 2
  $85AF  B3                         PUSHL
  $85B0  3B                         PUSH_quick   ; inline operand = 11
  $85B1  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $85B5  8F 14                      BYTE_ADD_imm1          +20
  $85B7  B3                         PUSHL
  $85B8  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $85BC  54                         LOADR_qimm   ; inline operand = 4
  $85BD  BE                         URSHIFT
  $85BE  51                         LOADR_qimm   ; inline operand = 1
  $85BF  DA                         AND
  $85C0  73                         ADD_qimm   ; inline operand = 3
  $85C1  B3                         PUSHL
  $85C2  3B                         PUSH_quick   ; inline operand = 11
  $85C3  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $85C7  8F 14                      BYTE_ADD_imm1          +20
  $85C9  B3                         PUSHL
  $85CA  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $85CE  55                         LOADR_qimm   ; inline operand = 5
  $85CF  BE                         URSHIFT
  $85D0  57                         LOADR_qimm   ; inline operand = 7
  $85D1  DA                         AND
  $85D2  B3                         PUSHL
  $85D3  4A                         LOADL_qimm   ; inline operand = 10
  $85D4  B4                         POPR
  $85D5  BC                         SUB
  $85D6  B3                         PUSHL
  $85D7  3B                         PUSH_quick   ; inline operand = 11
  $85D8  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $85DC  8F 14                      BYTE_ADD_imm1          +20
  $85DE  B3                         PUSHL
  $85DF  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $85E3  52                         LOADR_qimm   ; inline operand = 2
  $85E4  BE                         URSHIFT
  $85E5  53                         LOADR_qimm   ; inline operand = 3
  $85E6  DA                         AND
  $85E7  5A                         LOADR_qimm   ; inline operand = 10
  $85E8  B5                         MULT
  $85E9  8F 64                      BYTE_ADD_imm1          +100
  $85EB  B4                         POPR
  $85EC  B5                         MULT
  $85ED  5A                         LOADR_qimm   ; inline operand = 10
  $85EE  B6                         SDIV
  $85EF  B4                         POPR
  $85F0  B5                         MULT
  $85F1  54                         LOADR_qimm   ; inline operand = 4
  $85F2  B6                         SDIV
  $85F3  D4                         BYTE_POPSTORE
  $85F4  0A                         LOADL_quick   ; inline operand = 10
  $85F5  72                         ADD_qimm   ; inline operand = 2
  $85F6  B3                         PUSHL
  $85F7  8D 64                      BYTE_PUSH_imm1         +100
  $85F9  0A                         LOADL_quick   ; inline operand = 10
  $85FA  72                         ADD_qimm   ; inline operand = 2
  $85FB  D3                         BYTE_DEREF
  $85FC  B3                         PUSHL
  $85FD  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8601  D4                         BYTE_POPSTORE
  $8602  0A                         LOADL_quick   ; inline operand = 10
  $8603  73                         ADD_qimm   ; inline operand = 3
  $8604  B3                         PUSHL
  $8605  08                         LOADL_quick   ; inline operand = 8
  $8606  8F 11                      BYTE_ADD_imm1          +17
  $8608  B3                         PUSHL
  $8609  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $860D  D4                         BYTE_POPSTORE
  $860E  0A                         LOADL_quick   ; inline operand = 10
  $860F  74                         ADD_qimm   ; inline operand = 4
  $8610  B3                         PUSHL
  $8611  08                         LOADL_quick   ; inline operand = 8
  $8612  7F                         ADD_qimm   ; inline operand = 15
  $8613  B3                         PUSHL
  $8614  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8618  B1                         POPSTORE
  $8619  CF                         RETURN

; ============================================================
; sub $861A   (frame_off=-20, body @ $861F)   [PRG $0A61A]
; ============================================================
  $861F  43                         LOADL_qimm   ; inline operand = 3
  $8620  2A                         STORE_quick   ; inline operand = 10
  $8621  0A                         LOADL_quick   ; inline operand = 10
  $8622  D2                         LSHIFT1
  $8623  D2                         LSHIFT1
  $8624  8C BC 6F                   LOADR_imm2             $6FBC
  $8627  BB                         ADD
  $8628  22                         STORE_quick   ; inline operand = 2
  $8629  45                         LOADL_qimm   ; inline operand = 5
  $862A  29                         STORE_quick   ; inline operand = 9
  $862B  0A                         LOADL_quick   ; inline operand = 10
  $862C  55                         LOADR_qimm   ; inline operand = 5
  $862D  B5                         MULT
  $862E  D0                         INC
  $862F  2A                         STORE_quick   ; inline operand = 10
  $8630  40                         LOADL_qimm   ; inline operand = 0
  $8631  28                         STORE_quick   ; inline operand = 8
  $8632  40                         LOADL_qimm   ; inline operand = 0
  $8633  D6 59 86                   JUMP_abs               $8659
 >$8636  DE EE FF                   LEAL_far               $FFEE
  $8639  B3                         PUSHL
  $863A  0B                         LOADL_quick   ; inline operand = 11
  $863B  B4                         POPR
  $863C  BB                         ADD
  $863D  B3                         PUSHL
  $863E  DE F3 FF                   LEAL_far               $FFF3
  $8641  B3                         PUSHL
  $8642  0A                         LOADL_quick   ; inline operand = 10
  $8643  1B                         LOADR_quick   ; inline operand = 11
  $8644  BB                         ADD
  $8645  B3                         PUSHL
  $8646  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $864A  D4                         BYTE_POPSTORE
  $864B  DE EE FF                   LEAL_far               $FFEE
  $864E  B3                         PUSHL
  $864F  0B                         LOADL_quick   ; inline operand = 11
  $8650  B4                         POPR
  $8651  BB                         ADD
  $8652  D3                         BYTE_DEREF
  $8653  CD                         SWAP
  $8654  08                         LOADL_quick   ; inline operand = 8
  $8655  BB                         ADD
  $8656  28                         STORE_quick   ; inline operand = 8
  $8657  0B                         LOADL_quick   ; inline operand = 11
  $8658  D0                         INC
 >$8659  2B                         STORE_quick   ; inline operand = 11
  $865A  0B                         LOADL_quick   ; inline operand = 11
  $865B  55                         LOADR_qimm   ; inline operand = 5
  $865C  C6                         UCMPLT
  $865D  D7 36 86                   JUMPT_abs              $8636
  $8660  08                         LOADL_quick   ; inline operand = 8
  $8661  8B 19                      BYTE_LOADR_imm1        +25
  $8663  C0                         CMPEQ
  $8664  D8 68 86                   JUMPF_abs              $8668
  $8667  CF                         RETURN
 >$8668  40                         LOADL_qimm   ; inline operand = 0
  $8669  2B                         STORE_quick   ; inline operand = 11
 >$866A  DE EE FF                   LEAL_far               $FFEE
  $866D  B3                         PUSHL
  $866E  0B                         LOADL_quick   ; inline operand = 11
  $866F  B4                         POPR
  $8670  BB                         ADD
  $8671  D3                         BYTE_DEREF
  $8672  55                         LOADR_qimm   ; inline operand = 5
  $8673  C6                         UCMPLT
  $8674  D8 B1 86                   JUMPF_abs              $86B1
  $8677  DE EE FF                   LEAL_far               $FFEE
  $867A  B3                         PUSHL
  $867B  0B                         LOADL_quick   ; inline operand = 11
  $867C  B4                         POPR
  $867D  BB                         ADD
  $867E  D3                         BYTE_DEREF
  $867F  D7 8A 86                   JUMPT_abs              $868A
  $8682  0A                         LOADL_quick   ; inline operand = 10
  $8683  1B                         LOADR_quick   ; inline operand = 11
  $8684  BB                         ADD
  $8685  B3                         PUSHL
  $8686  E9 28 80 02                CALL_abs_imm1          $8028 {bytecode}, $02
 >$868A  0A                         LOADL_quick   ; inline operand = 10
  $868B  1B                         LOADR_quick   ; inline operand = 11
  $868C  BB                         ADD
  $868D  B3                         PUSHL
  $868E  E9 E3 84 02                CALL_abs_imm1          $84E3 {bytecode}, $02
  $8692  DE EE FF                   LEAL_far               $FFEE
  $8695  B3                         PUSHL
  $8696  0B                         LOADL_quick   ; inline operand = 11
  $8697  B4                         POPR
  $8698  BB                         ADD
  $8699  B3                         PUSHL
  $869A  DE F3 FF                   LEAL_far               $FFF3
  $869D  B3                         PUSHL
  $869E  0A                         LOADL_quick   ; inline operand = 10
  $869F  1B                         LOADR_quick   ; inline operand = 11
  $86A0  BB                         ADD
  $86A1  B3                         PUSHL
  $86A2  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $86A6  D4                         BYTE_POPSTORE
  $86A7  08                         LOADL_quick   ; inline operand = 8
  $86A8  D0                         INC
  $86A9  28                         STORE_quick   ; inline operand = 8
  $86AA  09                         LOADL_quick   ; inline operand = 9
  $86AB  D1                         DEC
  $86AC  29                         STORE_quick   ; inline operand = 9
  $86AD  09                         LOADL_quick   ; inline operand = 9
  $86AE  D8 BA 86                   JUMPF_abs              $86BA
 >$86B1  0B                         LOADL_quick   ; inline operand = 11
  $86B2  D0                         INC
  $86B3  2B                         STORE_quick   ; inline operand = 11
  $86B4  0B                         LOADL_quick   ; inline operand = 11
  $86B5  55                         LOADR_qimm   ; inline operand = 5
  $86B6  C6                         UCMPLT
  $86B7  D7 6A 86                   JUMPT_abs              $866A
 >$86BA  08                         LOADL_quick   ; inline operand = 8
  $86BB  8B 19                      BYTE_LOADR_imm1        +25
  $86BD  C6                         UCMPLT
  $86BE  D8 C5 86                   JUMPF_abs              $86C5
  $86C1  09                         LOADL_quick   ; inline operand = 9
  $86C2  D7 68 86                   JUMPT_abs              $8668
 >$86C5  CF                         RETURN

; ============================================================
; sub $86C6   (frame_off=-19, body @ $86CB)   [PRG $0A6C6]
; ============================================================
  $86CB  0C                         LOADL_quick   ; inline operand = 12
  $86CC  D2                         LSHIFT1
  $86CD  D2                         LSHIFT1
  $86CE  8C BC 6F                   LOADR_imm2             $6FBC
  $86D1  BB                         ADD
  $86D2  85 EF                      STORE_near             $EF
  $86D4  8D 64                      BYTE_PUSH_imm1         +100
  $86D6  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $86DA  B3                         PUSHL
  $86DB  81 EF                      LOADL_near             $EF
  $86DD  72                         ADD_qimm   ; inline operand = 2
  $86DE  D3                         BYTE_DEREF
  $86DF  B4                         POPR
  $86E0  C8                         UCMPGT
  $86E1  D8 EB 86                   JUMPF_abs              $86EB
  $86E4  81 EF                      LOADL_near             $EF
  $86E6  73                         ADD_qimm   ; inline operand = 3
  $86E7  B3                         PUSHL
  $86E8  44                         LOADL_qimm   ; inline operand = 4
 >$86E9  D4                         BYTE_POPSTORE
 >$86EA  CF                         RETURN
 >$86EB  48                         LOADL_qimm   ; inline operand = 8
  $86EC  1C                         LOADR_quick   ; inline operand = 12
  $86ED  BE                         URSHIFT
  $86EE  B3                         PUSHL
  $86EF  0C                         LOADL_quick   ; inline operand = 12
  $86F0  D2                         LSHIFT1
  $86F1  D2                         LSHIFT1
  $86F2  B3                         PUSHL
  $86F3  A4 99 6B                   LOADL_abs              $6B99
  $86F6  B4                         POPR
  $86F7  BE                         URSHIFT
  $86F8  B4                         POPR
  $86F9  DB                         OR
  $86FA  51                         LOADR_qimm   ; inline operand = 1
  $86FB  BE                         URSHIFT
  $86FC  5F                         LOADR_qimm   ; inline operand = 15
  $86FD  DA                         AND
  $86FE  85 F9                      STORE_near             $F9
  $8700  40                         LOADL_qimm   ; inline operand = 0
  $8701  85 F5                      STORE_near             $F5
  $8703  85 F7                      STORE_near             $F7
  $8705  D6 2D 87                   JUMP_abs               $872D
 >$8708  DE FD FF                   LEAL_far               $FFFD
  $870B  B3                         PUSHL
  $870C  42                         LOADL_qimm   ; inline operand = 2
  $870D  83 F5                      LOADR_near             $F5
  $870F  BC                         SUB
  $8710  B4                         POPR
  $8711  BB                         ADD
  $8712  B3                         PUSHL
  $8713  81 F9                      LOADL_near             $F9
  $8715  51                         LOADR_qimm   ; inline operand = 1
  $8716  DA                         AND
  $8717  D4                         BYTE_POPSTORE
  $8718  81 F9                      LOADL_near             $F9
  $871A  51                         LOADR_qimm   ; inline operand = 1
  $871B  DA                         AND
  $871C  CD                         SWAP
  $871D  81 F7                      LOADL_near             $F7
  $871F  BB                         ADD
  $8720  85 F7                      STORE_near             $F7
  $8722  81 F9                      LOADL_near             $F9
  $8724  51                         LOADR_qimm   ; inline operand = 1
  $8725  BE                         URSHIFT
  $8726  85 F9                      STORE_near             $F9
  $8728  81 F5                      LOADL_near             $F5
  $872A  D0                         INC
  $872B  85 F5                      STORE_near             $F5
 >$872D  81 F5                      LOADL_near             $F5
  $872F  53                         LOADR_qimm   ; inline operand = 3
  $8730  C6                         UCMPLT
  $8731  D7 08 87                   JUMPT_abs              $8708
  $8734  8A 8D 6B                   LOADL_imm2             $6B8D
  $8737  85 FB                      STORE_near             $FB
  $8739  81 F7                      LOADL_near             $F7
  $873B  D9 02 00 03 00 48 87 02 00 50 87 9E ... SWITCH_noncontig       count=2   ; .table 2 (key,target) + default (noncontiguous); SWITCH 3=>$8748 2=>$8750 default=>$879E
 >$8748  81 EF                      LOADL_near             $EF
  $874A  73                         ADD_qimm   ; inline operand = 3
  $874B  B3                         PUSHL
  $874C  43                         LOADL_qimm   ; inline operand = 3
  $874D  D6 E9 86                   JUMP_abs               $86E9
 >$8750  41                         LOADL_qimm   ; inline operand = 1
  $8751  85 ED                      STORE_near             $ED
  $8753  40                         LOADL_qimm   ; inline operand = 0
  $8754  D6 88 87                   JUMP_abs               $8788
 >$8757  DE FD FF                   LEAL_far               $FFFD
  $875A  B3                         PUSHL
  $875B  81 F5                      LOADL_near             $F5
  $875D  B4                         POPR
  $875E  BB                         ADD
  $875F  D3                         BYTE_DEREF
  $8760  D7 85 87                   JUMPT_abs              $8785
  $8763  0C                         LOADL_quick   ; inline operand = 12
  $8764  D2                         LSHIFT1
  $8765  D2                         LSHIFT1
  $8766  83 F5                      LOADR_near             $F5
  $8768  BB                         ADD
  $8769  8C 2E 9A                   LOADR_imm2             $9A2E
  $876C  BB                         ADD
  $876D  D3                         BYTE_DEREF
  $876E  83 FB                      LOADR_near             $FB
  $8770  BB                         ADD
  $8771  D3                         BYTE_DEREF
  $8772  8B 33                      BYTE_LOADR_imm1        +51
  $8774  C6                         UCMPLT
  $8775  D8 85 87                   JUMPF_abs              $8785
  $8778  81 EF                      LOADL_near             $EF
  $877A  73                         ADD_qimm   ; inline operand = 3
  $877B  B3                         PUSHL
  $877C  81 F5                      LOADL_near             $F5
  $877E  D4                         BYTE_POPSTORE
  $877F  40                         LOADL_qimm   ; inline operand = 0
  $8780  85 ED                      STORE_near             $ED
  $8782  D6 91 87                   JUMP_abs               $8791
 >$8785  81 F5                      LOADL_near             $F5
  $8787  D0                         INC
 >$8788  85 F5                      STORE_near             $F5
  $878A  81 F5                      LOADL_near             $F5
  $878C  53                         LOADR_qimm   ; inline operand = 3
  $878D  C6                         UCMPLT
  $878E  D7 57 87                   JUMPT_abs              $8757
 >$8791  81 ED                      LOADL_near             $ED
  $8793  D8 EA 86                   JUMPF_abs              $86EA
 >$8796  81 EF                      LOADL_near             $EF
  $8798  73                         ADD_qimm   ; inline operand = 3
  $8799  B3                         PUSHL
 >$879A  45                         LOADL_qimm   ; inline operand = 5
  $879B  D6 E9 86                   JUMP_abs               $86E9
 >$879E  8A C8 00                   LOADL_imm2             $00C8
  $87A1  85 F3                      STORE_near             $F3
  $87A3  40                         LOADL_qimm   ; inline operand = 0
  $87A4  85 F5                      STORE_near             $F5
  $87A6  85 F1                      STORE_near             $F1
  $87A8  D6 E3 87                   JUMP_abs               $87E3
 >$87AB  81 F5                      LOADL_near             $F5
  $87AD  1C                         LOADR_quick   ; inline operand = 12
  $87AE  C1                         CMPNE
  $87AF  D8 DE 87                   JUMPF_abs              $87DE
  $87B2  0C                         LOADL_quick   ; inline operand = 12
  $87B3  D2                         LSHIFT1
  $87B4  D2                         LSHIFT1
  $87B5  83 F5                      LOADR_near             $F5
  $87B7  BB                         ADD
  $87B8  8C 2E 9A                   LOADR_imm2             $9A2E
  $87BB  BB                         ADD
  $87BC  D3                         BYTE_DEREF
  $87BD  83 FB                      LOADR_near             $FB
  $87BF  BB                         ADD
  $87C0  D3                         BYTE_DEREF
  $87C1  B3                         PUSHL
  $87C2  81 F3                      LOADL_near             $F3
  $87C4  B4                         POPR
  $87C5  C8                         UCMPGT
  $87C6  D8 DE 87                   JUMPF_abs              $87DE
  $87C9  0C                         LOADL_quick   ; inline operand = 12
  $87CA  D2                         LSHIFT1
  $87CB  D2                         LSHIFT1
  $87CC  83 F5                      LOADR_near             $F5
  $87CE  BB                         ADD
  $87CF  8C 2E 9A                   LOADR_imm2             $9A2E
  $87D2  BB                         ADD
  $87D3  D3                         BYTE_DEREF
  $87D4  83 FB                      LOADR_near             $FB
  $87D6  BB                         ADD
  $87D7  D3                         BYTE_DEREF
  $87D8  85 F3                      STORE_near             $F3
  $87DA  81 F5                      LOADL_near             $F5
  $87DC  85 F1                      STORE_near             $F1
 >$87DE  81 F5                      LOADL_near             $F5
  $87E0  D0                         INC
  $87E1  85 F5                      STORE_near             $F5
 >$87E3  81 F5                      LOADL_near             $F5
  $87E5  54                         LOADR_qimm   ; inline operand = 4
  $87E6  C6                         UCMPLT
  $87E7  D7 AB 87                   JUMPT_abs              $87AB
  $87EA  0C                         LOADL_quick   ; inline operand = 12
  $87EB  D2                         LSHIFT1
  $87EC  8C 04 A0                   LOADR_imm2             $A004
  $87EF  BB                         ADD
  $87F0  B3                         PUSHL
  $87F1  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $87F5  B3                         PUSHL
  $87F6  44                         LOADL_qimm   ; inline operand = 4
  $87F7  B4                         POPR
  $87F8  BC                         SUB
  $87F9  D2                         LSHIFT1
  $87FA  D2                         LSHIFT1
  $87FB  8F 1E                      BYTE_ADD_imm1          +30
  $87FD  B3                         PUSHL
  $87FE  81 F3                      LOADL_near             $F3
  $8800  B4                         POPR
  $8801  C6                         UCMPLT
  $8802  D8 0E 88                   JUMPF_abs              $880E
  $8805  81 EF                      LOADL_near             $EF
  $8807  73                         ADD_qimm   ; inline operand = 3
  $8808  B3                         PUSHL
  $8809  81 F1                      LOADL_near             $F1
  $880B  D6 E9 86                   JUMP_abs               $86E9
 >$880E  0C                         LOADL_quick   ; inline operand = 12
  $880F  53                         LOADR_qimm   ; inline operand = 3
  $8810  C1                         CMPNE
  $8811  D7 96 87                   JUMPT_abs              $8796
  $8814  64                         PUSH_qimm   ; inline operand = 4
  $8815  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8819  85 F5                      STORE_near             $F5
  $881B  81 EF                      LOADL_near             $EF
  $881D  73                         ADD_qimm   ; inline operand = 3
  $881E  B3                         PUSHL
  $881F  81 F5                      LOADL_near             $F5
  $8821  53                         LOADR_qimm   ; inline operand = 3
  $8822  C0                         CMPEQ
  $8823  D7 9A 87                   JUMPT_abs              $879A
  $8826  81 F5                      LOADL_near             $F5
  $8828  D6 E9 86                   JUMP_abs               $86E9

; ============================================================
; sub $882B   (frame_off=+0, body @ $8830)   [PRG $0A82B]
; ============================================================
  $8830  0C                         LOADL_quick   ; inline operand = 12
  $8831  53                         LOADR_qimm   ; inline operand = 3
  $8832  C0                         CMPEQ
  $8833  D8 3C 88                   JUMPF_abs              $883C
  $8836  AC 1A 86                   CALL_abs               $861A {bytecode}
  $8839  D6 46 88                   JUMP_abs               $8846
 >$883C  3C                         PUSH_quick   ; inline operand = 12
  $883D  E9 29 82 02                CALL_abs_imm1          $8229 {bytecode}, $02
  $8841  3C                         PUSH_quick   ; inline operand = 12
  $8842  E9 30 84 02                CALL_abs_imm1          $8430 {bytecode}, $02
 >$8846  3C                         PUSH_quick   ; inline operand = 12
  $8847  E9 C6 86 02                CALL_abs_imm1          $86C6 {bytecode}, $02
  $884B  CF                         RETURN

; ============================================================
; sub $884C   (frame_off=+0, body @ $8851)   [PRG $0A84C]
; ============================================================
  $8851  A5 74 6F                   BYTE_LOADL_abs         $6F74
  $8854  B3                         PUSHL
  $8855  A4 BC 6F                   LOADL_abs              $6FBC
  $8858  8B 32                      BYTE_LOADR_imm1        +50
  $885A  B8                         UDIV
  $885B  B3                         PUSHL
  $885C  6F                         PUSH_qimm   ; inline operand = 15
  $885D  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8861  B4                         POPR
  $8862  BB                         ADD
  $8863  B4                         POPR
  $8864  B5                         MULT
  $8865  CD                         SWAP
  $8866  A4 CC 6F                   LOADL_abs              $6FCC
  $8869  BB                         ADD
  $886A  A8 CC 6F                   STORE_abs              $6FCC
  $886D  8E 10 27                   PUSH_imm2              $2710
  $8870  AA CC 6F                   PUSH_abs               $6FCC
  $8873  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8877  A8 CC 6F                   STORE_abs              $6FCC
  $887A  A5 74 6F                   BYTE_LOADL_abs         $6F74
  $887D  B3                         PUSHL
  $887E  65                         PUSH_qimm   ; inline operand = 5
  $887F  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8883  B3                         PUSHL
  $8884  8E 05 A0                   PUSH_imm2              $A005
  $8887  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $888B  5E                         LOADR_qimm   ; inline operand = 14
  $888C  B5                         MULT
  $888D  8C B4 67                   LOADR_imm2             $67B4
  $8890  BB                         ADD
  $8891  B0                         DEREF
  $8892  8B 32                      BYTE_LOADR_imm1        +50
  $8894  B8                         UDIV
  $8895  B4                         POPR
  $8896  BB                         ADD
  $8897  B4                         POPR
  $8898  B5                         MULT
  $8899  CD                         SWAP
  $889A  A4 CE 6F                   LOADL_abs              $6FCE
  $889D  BB                         ADD
  $889E  A8 CE 6F                   STORE_abs              $6FCE
  $88A1  8E E8 03                   PUSH_imm2              $03E8
  $88A4  AA CE 6F                   PUSH_abs               $6FCE
  $88A7  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $88AB  A8 CE 6F                   STORE_abs              $6FCE
  $88AE  62                         PUSH_qimm   ; inline operand = 2
  $88AF  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $88B3  B3                         PUSHL
  $88B4  A5 74 6F                   BYTE_LOADL_abs         $6F74
  $88B7  B3                         PUSHL
  $88B8  49                         LOADL_qimm   ; inline operand = 9
  $88B9  B4                         POPR
  $88BA  BC                         SUB
  $88BB  B4                         POPR
  $88BC  BB                         ADD
  $88BD  B3                         PUSHL
  $88BE  A5 40 65                   BYTE_LOADL_abs         $6540
  $88C1  B3                         PUSHL
  $88C2  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $88C6  CD                         SWAP
  $88C7  A5 40 65                   BYTE_LOADL_abs         $6540
  $88CA  BC                         SUB
  $88CB  A9 40 65                   BYTE_STORE_abs         $6540
  $88CE  CF                         RETURN

; ============================================================
; sub $88CF   (frame_off=-2, body @ $88D4)   [PRG $0A8CF]
; ============================================================
  $88D4  0C                         LOADL_quick   ; inline operand = 12
  $88D5  D2                         LSHIFT1
  $88D6  8C 05 A0                   LOADR_imm2             $A005
  $88D9  BB                         ADD
  $88DA  B3                         PUSHL
  $88DB  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $88DF  5E                         LOADR_qimm   ; inline operand = 14
  $88E0  B5                         MULT
  $88E1  8C B2 67                   LOADR_imm2             $67B2
  $88E4  BB                         ADD
  $88E5  2B                         STORE_quick   ; inline operand = 11
  $88E6  0B                         LOADL_quick   ; inline operand = 11
  $88E7  B0                         DEREF
  $88E8  B3                         PUSHL
  $88E9  0B                         LOADL_quick   ; inline operand = 11
  $88EA  74                         ADD_qimm   ; inline operand = 4
  $88EB  B0                         DEREF
  $88EC  B3                         PUSHL
  $88ED  0C                         LOADL_quick   ; inline operand = 12
  $88EE  D2                         LSHIFT1
  $88EF  D2                         LSHIFT1
  $88F0  8C BC 6F                   LOADR_imm2             $6FBC
  $88F3  BB                         ADD
  $88F4  B0                         DEREF
  $88F5  8B 32                      BYTE_LOADR_imm1        +50
  $88F7  B8                         UDIV
  $88F8  B4                         POPR
  $88F9  BB                         ADD
  $88FA  B4                         POPR
  $88FB  BB                         ADD
  $88FC  CF                         RETURN

; ============================================================
; sub $88FD   (frame_off=-14, body @ $8902)   [PRG $0A8FD]
; ============================================================
  $8902  8A 8D 6B                   LOADL_imm2             $6B8D
  $8905  2B                         STORE_quick   ; inline operand = 11
  $8906  8A 93 6B                   LOADL_imm2             $6B93
  $8909  29                         STORE_quick   ; inline operand = 9
  $890A  0C                         LOADL_quick   ; inline operand = 12
  $890B  D2                         LSHIFT1
  $890C  D2                         LSHIFT1
  $890D  1D                         LOADR_quick   ; inline operand = 13
  $890E  BB                         ADD
  $890F  8C 2E 9A                   LOADR_imm2             $9A2E
  $8912  BB                         ADD
  $8913  D3                         BYTE_DEREF
  $8914  1B                         LOADR_quick   ; inline operand = 11
  $8915  BB                         ADD
  $8916  D3                         BYTE_DEREF
  $8917  8B 28                      BYTE_LOADR_imm1        +40
  $8919  C6                         UCMPLT
  $891A  D8 26 8B                   JUMPF_abs              $8B26
  $891D  48                         LOADL_qimm   ; inline operand = 8
  $891E  1D                         LOADR_quick   ; inline operand = 13
  $891F  BE                         URSHIFT
  $8920  B3                         PUSHL
  $8921  0C                         LOADL_quick   ; inline operand = 12
  $8922  D2                         LSHIFT1
  $8923  D2                         LSHIFT1
  $8924  B3                         PUSHL
  $8925  A4 99 6B                   LOADL_abs              $6B99
  $8928  B4                         POPR
  $8929  BE                         URSHIFT
  $892A  B4                         POPR
  $892B  DA                         AND
  $892C  D8 68 89                   JUMPF_abs              $8968
  $892F  0C                         LOADL_quick   ; inline operand = 12
  $8930  D2                         LSHIFT1
  $8931  D2                         LSHIFT1
  $8932  B3                         PUSHL
  $8933  48                         LOADL_qimm   ; inline operand = 8
  $8934  1D                         LOADR_quick   ; inline operand = 13
  $8935  BE                         URSHIFT
  $8936  B4                         POPR
  $8937  BD                         LSHIFT
  $8938  8B FF                      BYTE_LOADR_imm1        -1
  $893A  DC                         XOR
  $893B  CD                         SWAP
  $893C  A4 99 6B                   LOADL_abs              $6B99
  $893F  DA                         AND
  $8940  A8 99 6B                   STORE_abs              $6B99
  $8943  0D                         LOADL_quick   ; inline operand = 13
  $8944  D2                         LSHIFT1
  $8945  D2                         LSHIFT1
  $8946  B3                         PUSHL
  $8947  48                         LOADL_qimm   ; inline operand = 8
  $8948  1C                         LOADR_quick   ; inline operand = 12
  $8949  BE                         URSHIFT
  $894A  B4                         POPR
  $894B  BD                         LSHIFT
  $894C  8B FF                      BYTE_LOADR_imm1        -1
  $894E  DC                         XOR
  $894F  CD                         SWAP
  $8950  A4 99 6B                   LOADL_abs              $6B99
  $8953  DA                         AND
  $8954  A8 99 6B                   STORE_abs              $6B99
  $8957  0C                         LOADL_quick   ; inline operand = 12
  $8958  53                         LOADR_qimm   ; inline operand = 3
  $8959  B5                         MULT
  $895A  1D                         LOADR_quick   ; inline operand = 13
  $895B  BB                         ADD
  $895C  8C 3E 9A                   LOADR_imm2             $9A3E
  $895F  BB                         ADD
  $8960  D3                         BYTE_DEREF
  $8961  19                         LOADR_quick   ; inline operand = 9
  $8962  BB                         ADD
  $8963  B3                         PUSHL
  $8964  46                         LOADL_qimm   ; inline operand = 6
  $8965  D6 1B 8C                   JUMP_abs               $8C1B
 >$8968  3C                         PUSH_quick   ; inline operand = 12
  $8969  E9 CF 88 02                CALL_abs_imm1          $88CF {bytecode}, $02
  $896D  26                         STORE_quick   ; inline operand = 6
  $896E  3D                         PUSH_quick   ; inline operand = 13
  $896F  E9 CF 88 02                CALL_abs_imm1          $88CF {bytecode}, $02
  $8973  25                         STORE_quick   ; inline operand = 5
  $8974  06                         LOADL_quick   ; inline operand = 6
  $8975  15                         LOADR_quick   ; inline operand = 5
  $8976  C4                         SCMPGT
  $8977  D8 DB 8A                   JUMPF_abs              $8ADB
  $897A  48                         LOADL_qimm   ; inline operand = 8
  $897B  1D                         LOADR_quick   ; inline operand = 13
  $897C  BE                         URSHIFT
  $897D  B3                         PUSHL
  $897E  0C                         LOADL_quick   ; inline operand = 12
  $897F  D2                         LSHIFT1
  $8980  D2                         LSHIFT1
  $8981  B3                         PUSHL
  $8982  A4 9B 6B                   LOADL_abs              $6B9B
  $8985  B4                         POPR
  $8986  BE                         URSHIFT
  $8987  B4                         POPR
  $8988  DA                         AND
  $8989  D8 54 8A                   JUMPF_abs              $8A54
  $898C  0C                         LOADL_quick   ; inline operand = 12
  $898D  53                         LOADR_qimm   ; inline operand = 3
  $898E  B5                         MULT
  $898F  1D                         LOADR_quick   ; inline operand = 13
  $8990  BB                         ADD
  $8991  8C 3E 9A                   LOADR_imm2             $9A3E
  $8994  BB                         ADD
  $8995  D3                         BYTE_DEREF
  $8996  19                         LOADR_quick   ; inline operand = 9
  $8997  BB                         ADD
  $8998  B3                         PUSHL
  $8999  40                         LOADL_qimm   ; inline operand = 0
  $899A  D4                         BYTE_POPSTORE
  $899B  3D                         PUSH_quick   ; inline operand = 13
  $899C  E9 BA 8D 02                CALL_abs_imm1          $8DBA (nat_5_0dba) {native}, $02
  $89A0  28                         STORE_quick   ; inline operand = 8
  $89A1  05                         LOADL_quick   ; inline operand = 5
  $89A2  53                         LOADR_qimm   ; inline operand = 3
  $89A3  B5                         MULT
  $89A4  52                         LOADR_qimm   ; inline operand = 2
  $89A5  B6                         SDIV
  $89A6  B3                         PUSHL
  $89A7  06                         LOADL_quick   ; inline operand = 6
  $89A8  B4                         POPR
  $89A9  C4                         SCMPGT
  $89AA  D8 1C 8C                   JUMPF_abs              $8C1C
  $89AD  8D 64                      BYTE_PUSH_imm1         +100
  $89AF  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $89B3  B3                         PUSHL
  $89B4  0C                         LOADL_quick   ; inline operand = 12
  $89B5  D2                         LSHIFT1
  $89B6  D2                         LSHIFT1
  $89B7  1D                         LOADR_quick   ; inline operand = 13
  $89B8  BB                         ADD
  $89B9  8C 2E 9A                   LOADR_imm2             $9A2E
  $89BC  BB                         ADD
  $89BD  D3                         BYTE_DEREF
  $89BE  1B                         LOADR_quick   ; inline operand = 11
  $89BF  BB                         ADD
  $89C0  D3                         BYTE_DEREF
  $89C1  B3                         PUSHL
  $89C2  0C                         LOADL_quick   ; inline operand = 12
  $89C3  D2                         LSHIFT1
  $89C4  8C 04 A0                   LOADR_imm2             $A004
  $89C7  BB                         ADD
  $89C8  B3                         PUSHL
  $89C9  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $89CD  5A                         LOADR_qimm   ; inline operand = 10
  $89CE  B5                         MULT
  $89CF  B4                         POPR
  $89D0  BB                         ADD
  $89D1  B4                         POPR
  $89D2  C6                         UCMPLT
  $89D3  D8 1C 8C                   JUMPF_abs              $8C1C
  $89D6  08                         LOADL_quick   ; inline operand = 8
  $89D7  D8 1C 8C                   JUMPF_abs              $8C1C
  $89DA  08                         LOADL_quick   ; inline operand = 8
  $89DB  5E                         LOADR_qimm   ; inline operand = 14
  $89DC  B5                         MULT
  $89DD  8C BA 67                   LOADR_imm2             $67BA
  $89E0  BB                         ADD
  $89E1  2A                         STORE_quick   ; inline operand = 10
  $89E2  40                         LOADL_qimm   ; inline operand = 0
  $89E3  27                         STORE_quick   ; inline operand = 7
 >$89E4  0A                         LOADL_quick   ; inline operand = 10
  $89E5  17                         LOADR_quick   ; inline operand = 7
  $89E6  BB                         ADD
  $89E7  B3                         PUSHL
  $89E8  07                         LOADL_quick   ; inline operand = 7
  $89E9  1C                         LOADR_quick   ; inline operand = 12
  $89EA  C0                         CMPEQ
  $89EB  D8 F3 89                   JUMPF_abs              $89F3
  $89EE  89 50                      BYTE_LOADL_imm1        +80
  $89F0  D6 F4 89                   JUMP_abs               $89F4
 >$89F3  40                         LOADL_qimm   ; inline operand = 0
 >$89F4  D4                         BYTE_POPSTORE
  $89F5  07                         LOADL_quick   ; inline operand = 7
  $89F6  D0                         INC
  $89F7  27                         STORE_quick   ; inline operand = 7
  $89F8  07                         LOADL_quick   ; inline operand = 7
  $89F9  53                         LOADR_qimm   ; inline operand = 3
  $89FA  C6                         UCMPLT
  $89FB  D7 E4 89                   JUMPT_abs              $89E4
  $89FE  8E FC 00                   PUSH_imm2              $00FC
  $8A01  08                         LOADL_quick   ; inline operand = 8
  $8A02  8C 76 6F                   LOADR_imm2             $6F76
  $8A05  BB                         ADD
  $8A06  B4                         POPR
  $8A07  B3                         PUSHL
  $8A08  D3                         BYTE_DEREF
  $8A09  DA                         AND
  $8A0A  D4                         BYTE_POPSTORE
  $8A0B  0C                         LOADL_quick   ; inline operand = 12
  $8A0C  D0                         INC
  $8A0D  B3                         PUSHL
  $8A0E  08                         LOADL_quick   ; inline operand = 8
  $8A0F  8C 76 6F                   LOADR_imm2             $6F76
  $8A12  BB                         ADD
  $8A13  B4                         POPR
  $8A14  B3                         PUSHL
  $8A15  D3                         BYTE_DEREF
  $8A16  DB                         OR
  $8A17  D4                         BYTE_POPSTORE
  $8A18  0C                         LOADL_quick   ; inline operand = 12
  $8A19  D2                         LSHIFT1
  $8A1A  D2                         LSHIFT1
  $8A1B  1D                         LOADR_quick   ; inline operand = 13
  $8A1C  BB                         ADD
  $8A1D  8C 2E 9A                   LOADR_imm2             $9A2E
  $8A20  BB                         ADD
  $8A21  D3                         BYTE_DEREF
  $8A22  1B                         LOADR_quick   ; inline operand = 11
  $8A23  BB                         ADD
  $8A24  B3                         PUSHL
  $8A25  8D 64                      BYTE_PUSH_imm1         +100
  $8A27  0C                         LOADL_quick   ; inline operand = 12
  $8A28  D2                         LSHIFT1
  $8A29  D2                         LSHIFT1
  $8A2A  1D                         LOADR_quick   ; inline operand = 13
  $8A2B  BB                         ADD
  $8A2C  8C 2E 9A                   LOADR_imm2             $9A2E
  $8A2F  BB                         ADD
  $8A30  D3                         BYTE_DEREF
  $8A31  1B                         LOADR_quick   ; inline operand = 11
  $8A32  BB                         ADD
  $8A33  D3                         BYTE_DEREF
  $8A34  B3                         PUSHL
  $8A35  65                         PUSH_qimm   ; inline operand = 5
  $8A36  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8A3A  B4                         POPR
  $8A3B  BB                         ADD
  $8A3C  73                         ADD_qimm   ; inline operand = 3
  $8A3D  B3                         PUSHL
  $8A3E  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8A42  D4                         BYTE_POPSTORE
  $8A43  0C                         LOADL_quick   ; inline operand = 12
  $8A44  53                         LOADR_qimm   ; inline operand = 3
  $8A45  B5                         MULT
  $8A46  1D                         LOADR_quick   ; inline operand = 13
  $8A47  BB                         ADD
  $8A48  8C 3E 9A                   LOADR_imm2             $9A3E
  $8A4B  BB                         ADD
  $8A4C  D3                         BYTE_DEREF
  $8A4D  19                         LOADR_quick   ; inline operand = 9
  $8A4E  BB                         ADD
  $8A4F  B3                         PUSHL
  $8A50  44                         LOADL_qimm   ; inline operand = 4
  $8A51  D6 1B 8C                   JUMP_abs               $8C1B
 >$8A54  8D 64                      BYTE_PUSH_imm1         +100
  $8A56  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8A5A  B3                         PUSHL
  $8A5B  0C                         LOADL_quick   ; inline operand = 12
  $8A5C  D2                         LSHIFT1
  $8A5D  D2                         LSHIFT1
  $8A5E  1D                         LOADR_quick   ; inline operand = 13
  $8A5F  BB                         ADD
  $8A60  8C 2E 9A                   LOADR_imm2             $9A2E
  $8A63  BB                         ADD
  $8A64  D3                         BYTE_DEREF
  $8A65  1B                         LOADR_quick   ; inline operand = 11
  $8A66  BB                         ADD
  $8A67  D3                         BYTE_DEREF
  $8A68  B3                         PUSHL
  $8A69  0C                         LOADL_quick   ; inline operand = 12
  $8A6A  D2                         LSHIFT1
  $8A6B  8C 04 A0                   LOADR_imm2             $A004
  $8A6E  BB                         ADD
  $8A6F  B3                         PUSHL
  $8A70  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8A74  55                         LOADR_qimm   ; inline operand = 5
  $8A75  B5                         MULT
  $8A76  B4                         POPR
  $8A77  BB                         ADD
  $8A78  B4                         POPR
  $8A79  C6                         UCMPLT
  $8A7A  D8 CA 8A                   JUMPF_abs              $8ACA
  $8A7D  0C                         LOADL_quick   ; inline operand = 12
  $8A7E  D2                         LSHIFT1
  $8A7F  D2                         LSHIFT1
  $8A80  B3                         PUSHL
  $8A81  48                         LOADL_qimm   ; inline operand = 8
  $8A82  1D                         LOADR_quick   ; inline operand = 13
  $8A83  BE                         URSHIFT
  $8A84  B4                         POPR
  $8A85  BD                         LSHIFT
  $8A86  CD                         SWAP
  $8A87  A4 9B 6B                   LOADL_abs              $6B9B
  $8A8A  DB                         OR
  $8A8B  A8 9B 6B                   STORE_abs              $6B9B
  $8A8E  63                         PUSH_qimm   ; inline operand = 3
  $8A8F  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8A93  72                         ADD_qimm   ; inline operand = 2
  $8A94  B3                         PUSHL
  $8A95  0C                         LOADL_quick   ; inline operand = 12
  $8A96  D2                         LSHIFT1
  $8A97  D2                         LSHIFT1
  $8A98  1D                         LOADR_quick   ; inline operand = 13
  $8A99  BB                         ADD
  $8A9A  8C 2E 9A                   LOADR_imm2             $9A2E
  $8A9D  BB                         ADD
  $8A9E  D3                         BYTE_DEREF
  $8A9F  1B                         LOADR_quick   ; inline operand = 11
  $8AA0  BB                         ADD
  $8AA1  D3                         BYTE_DEREF
  $8AA2  B3                         PUSHL
  $8AA3  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8AA7  B3                         PUSHL
  $8AA8  0C                         LOADL_quick   ; inline operand = 12
  $8AA9  D2                         LSHIFT1
  $8AAA  D2                         LSHIFT1
  $8AAB  1D                         LOADR_quick   ; inline operand = 13
  $8AAC  BB                         ADD
  $8AAD  8C 2E 9A                   LOADR_imm2             $9A2E
  $8AB0  BB                         ADD
  $8AB1  D3                         BYTE_DEREF
  $8AB2  1B                         LOADR_quick   ; inline operand = 11
  $8AB3  BB                         ADD
  $8AB4  B4                         POPR
  $8AB5  B3                         PUSHL
  $8AB6  D3                         BYTE_DEREF
  $8AB7  BC                         SUB
  $8AB8  D4                         BYTE_POPSTORE
  $8AB9  0C                         LOADL_quick   ; inline operand = 12
  $8ABA  53                         LOADR_qimm   ; inline operand = 3
  $8ABB  B5                         MULT
  $8ABC  1D                         LOADR_quick   ; inline operand = 13
  $8ABD  BB                         ADD
  $8ABE  8C 3E 9A                   LOADR_imm2             $9A3E
  $8AC1  BB                         ADD
  $8AC2  D3                         BYTE_DEREF
  $8AC3  19                         LOADR_quick   ; inline operand = 9
  $8AC4  BB                         ADD
  $8AC5  B3                         PUSHL
  $8AC6  42                         LOADL_qimm   ; inline operand = 2
  $8AC7  D6 1B 8C                   JUMP_abs               $8C1B
 >$8ACA  0C                         LOADL_quick   ; inline operand = 12
  $8ACB  53                         LOADR_qimm   ; inline operand = 3
  $8ACC  B5                         MULT
  $8ACD  1D                         LOADR_quick   ; inline operand = 13
  $8ACE  BB                         ADD
  $8ACF  8C 3E 9A                   LOADR_imm2             $9A3E
  $8AD2  BB                         ADD
  $8AD3  D3                         BYTE_DEREF
  $8AD4  19                         LOADR_quick   ; inline operand = 9
  $8AD5  BB                         ADD
  $8AD6  B3                         PUSHL
  $8AD7  40                         LOADL_qimm   ; inline operand = 0
  $8AD8  D6 1B 8C                   JUMP_abs               $8C1B
 >$8ADB  0C                         LOADL_quick   ; inline operand = 12
  $8ADC  53                         LOADR_qimm   ; inline operand = 3
  $8ADD  B5                         MULT
  $8ADE  1D                         LOADR_quick   ; inline operand = 13
  $8ADF  BB                         ADD
  $8AE0  8C 3E 9A                   LOADR_imm2             $9A3E
  $8AE3  BB                         ADD
  $8AE4  D3                         BYTE_DEREF
  $8AE5  19                         LOADR_quick   ; inline operand = 9
  $8AE6  BB                         ADD
  $8AE7  B3                         PUSHL
  $8AE8  41                         LOADL_qimm   ; inline operand = 1
  $8AE9  D4                         BYTE_POPSTORE
  $8AEA  06                         LOADL_quick   ; inline operand = 6
  $8AEB  D2                         LSHIFT1
  $8AEC  15                         LOADR_quick   ; inline operand = 5
  $8AED  C4                         SCMPGT
  $8AEE  D8 F9 8A                   JUMPF_abs              $8AF9
  $8AF1  63                         PUSH_qimm   ; inline operand = 3
  $8AF2  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8AF6  D7 CA 8A                   JUMPT_abs              $8ACA
 >$8AF9  0C                         LOADL_quick   ; inline operand = 12
  $8AFA  D2                         LSHIFT1
  $8AFB  D2                         LSHIFT1
  $8AFC  1D                         LOADR_quick   ; inline operand = 13
  $8AFD  BB                         ADD
  $8AFE  8C 2E 9A                   LOADR_imm2             $9A2E
  $8B01  BB                         ADD
  $8B02  D3                         BYTE_DEREF
  $8B03  1B                         LOADR_quick   ; inline operand = 11
  $8B04  BB                         ADD
  $8B05  B3                         PUSHL
  $8B06  8D 64                      BYTE_PUSH_imm1         +100
  $8B08  0C                         LOADL_quick   ; inline operand = 12
  $8B09  D2                         LSHIFT1
  $8B0A  D2                         LSHIFT1
  $8B0B  1D                         LOADR_quick   ; inline operand = 13
  $8B0C  BB                         ADD
  $8B0D  8C 2E 9A                   LOADR_imm2             $9A2E
  $8B10  BB                         ADD
  $8B11  D3                         BYTE_DEREF
  $8B12  1B                         LOADR_quick   ; inline operand = 11
  $8B13  BB                         ADD
  $8B14  D3                         BYTE_DEREF
  $8B15  B3                         PUSHL
  $8B16  63                         PUSH_qimm   ; inline operand = 3
  $8B17  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8B1B  B4                         POPR
  $8B1C  BB                         ADD
  $8B1D  D0                         INC
  $8B1E  B3                         PUSHL
  $8B1F  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8B23  D6 1B 8C                   JUMP_abs               $8C1B
 >$8B26  48                         LOADL_qimm   ; inline operand = 8
  $8B27  1D                         LOADR_quick   ; inline operand = 13
  $8B28  BE                         URSHIFT
  $8B29  B3                         PUSHL
  $8B2A  0C                         LOADL_quick   ; inline operand = 12
  $8B2B  D2                         LSHIFT1
  $8B2C  D2                         LSHIFT1
  $8B2D  B3                         PUSHL
  $8B2E  A4 9B 6B                   LOADL_abs              $6B9B
  $8B31  B4                         POPR
  $8B32  BE                         URSHIFT
  $8B33  B4                         POPR
  $8B34  DA                         AND
  $8B35  D8 5D 8B                   JUMPF_abs              $8B5D
  $8B38  0C                         LOADL_quick   ; inline operand = 12
  $8B39  D2                         LSHIFT1
  $8B3A  D2                         LSHIFT1
  $8B3B  B3                         PUSHL
  $8B3C  48                         LOADL_qimm   ; inline operand = 8
  $8B3D  1D                         LOADR_quick   ; inline operand = 13
  $8B3E  BE                         URSHIFT
  $8B3F  B4                         POPR
  $8B40  BD                         LSHIFT
  $8B41  8B FF                      BYTE_LOADR_imm1        -1
  $8B43  DC                         XOR
  $8B44  CD                         SWAP
  $8B45  A4 9B 6B                   LOADL_abs              $6B9B
  $8B48  DA                         AND
  $8B49  A8 9B 6B                   STORE_abs              $6B9B
  $8B4C  0C                         LOADL_quick   ; inline operand = 12
  $8B4D  53                         LOADR_qimm   ; inline operand = 3
  $8B4E  B5                         MULT
  $8B4F  1D                         LOADR_quick   ; inline operand = 13
  $8B50  BB                         ADD
  $8B51  8C 3E 9A                   LOADR_imm2             $9A3E
  $8B54  BB                         ADD
  $8B55  D3                         BYTE_DEREF
  $8B56  19                         LOADR_quick   ; inline operand = 9
  $8B57  BB                         ADD
  $8B58  B3                         PUSHL
  $8B59  43                         LOADL_qimm   ; inline operand = 3
  $8B5A  D6 1B 8C                   JUMP_abs               $8C1B
 >$8B5D  0C                         LOADL_quick   ; inline operand = 12
  $8B5E  D2                         LSHIFT1
  $8B5F  D2                         LSHIFT1
  $8B60  1D                         LOADR_quick   ; inline operand = 13
  $8B61  BB                         ADD
  $8B62  8C 2E 9A                   LOADR_imm2             $9A2E
  $8B65  BB                         ADD
  $8B66  D3                         BYTE_DEREF
  $8B67  1B                         LOADR_quick   ; inline operand = 11
  $8B68  BB                         ADD
  $8B69  D3                         BYTE_DEREF
  $8B6A  8B 3C                      BYTE_LOADR_imm1        +60
  $8B6C  C6                         UCMPLT
  $8B6D  D8 C2 8B                   JUMPF_abs              $8BC2
  $8B70  0C                         LOADL_quick   ; inline operand = 12
  $8B71  D2                         LSHIFT1
  $8B72  8C 04 A0                   LOADR_imm2             $A004
  $8B75  BB                         ADD
  $8B76  B3                         PUSHL
  $8B77  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8B7B  B3                         PUSHL
  $8B7C  67                         PUSH_qimm   ; inline operand = 7
  $8B7D  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8B81  B4                         POPR
  $8B82  C6                         UCMPLT
  $8B83  D7 CA 8A                   JUMPT_abs              $8ACA
  $8B86  0C                         LOADL_quick   ; inline operand = 12
  $8B87  D2                         LSHIFT1
  $8B88  D2                         LSHIFT1
  $8B89  1D                         LOADR_quick   ; inline operand = 13
  $8B8A  BB                         ADD
  $8B8B  8C 2E 9A                   LOADR_imm2             $9A2E
  $8B8E  BB                         ADD
  $8B8F  D3                         BYTE_DEREF
  $8B90  1B                         LOADR_quick   ; inline operand = 11
  $8B91  BB                         ADD
  $8B92  B3                         PUSHL
  $8B93  8D 64                      BYTE_PUSH_imm1         +100
  $8B95  0C                         LOADL_quick   ; inline operand = 12
  $8B96  D2                         LSHIFT1
  $8B97  D2                         LSHIFT1
  $8B98  1D                         LOADR_quick   ; inline operand = 13
  $8B99  BB                         ADD
  $8B9A  8C 2E 9A                   LOADR_imm2             $9A2E
  $8B9D  BB                         ADD
  $8B9E  D3                         BYTE_DEREF
  $8B9F  1B                         LOADR_quick   ; inline operand = 11
  $8BA0  BB                         ADD
  $8BA1  D3                         BYTE_DEREF
  $8BA2  B3                         PUSHL
  $8BA3  63                         PUSH_qimm   ; inline operand = 3
  $8BA4  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8BA8  B4                         POPR
  $8BA9  BB                         ADD
  $8BAA  D0                         INC
  $8BAB  B3                         PUSHL
  $8BAC  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8BB0  D4                         BYTE_POPSTORE
  $8BB1  0C                         LOADL_quick   ; inline operand = 12
  $8BB2  53                         LOADR_qimm   ; inline operand = 3
  $8BB3  B5                         MULT
  $8BB4  1D                         LOADR_quick   ; inline operand = 13
  $8BB5  BB                         ADD
  $8BB6  8C 3E 9A                   LOADR_imm2             $9A3E
  $8BB9  BB                         ADD
  $8BBA  D3                         BYTE_DEREF
  $8BBB  19                         LOADR_quick   ; inline operand = 9
  $8BBC  BB                         ADD
  $8BBD  B3                         PUSHL
  $8BBE  41                         LOADL_qimm   ; inline operand = 1
  $8BBF  D6 1B 8C                   JUMP_abs               $8C1B
 >$8BC2  0C                         LOADL_quick   ; inline operand = 12
  $8BC3  53                         LOADR_qimm   ; inline operand = 3
  $8BC4  B5                         MULT
  $8BC5  1D                         LOADR_quick   ; inline operand = 13
  $8BC6  BB                         ADD
  $8BC7  8C 3E 9A                   LOADR_imm2             $9A3E
  $8BCA  BB                         ADD
  $8BCB  D3                         BYTE_DEREF
  $8BCC  19                         LOADR_quick   ; inline operand = 9
  $8BCD  BB                         ADD
  $8BCE  B3                         PUSHL
  $8BCF  40                         LOADL_qimm   ; inline operand = 0
  $8BD0  D4                         BYTE_POPSTORE
  $8BD1  48                         LOADL_qimm   ; inline operand = 8
  $8BD2  1D                         LOADR_quick   ; inline operand = 13
  $8BD3  BE                         URSHIFT
  $8BD4  B3                         PUSHL
  $8BD5  0C                         LOADL_quick   ; inline operand = 12
  $8BD6  D2                         LSHIFT1
  $8BD7  D2                         LSHIFT1
  $8BD8  B3                         PUSHL
  $8BD9  A4 99 6B                   LOADL_abs              $6B99
  $8BDC  B4                         POPR
  $8BDD  BE                         URSHIFT
  $8BDE  B4                         POPR
  $8BDF  DA                         AND
  $8BE0  D7 1C 8C                   JUMPT_abs              $8C1C
  $8BE3  64                         PUSH_qimm   ; inline operand = 4
  $8BE4  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8BE8  D7 1C 8C                   JUMPT_abs              $8C1C
  $8BEB  0C                         LOADL_quick   ; inline operand = 12
  $8BEC  D2                         LSHIFT1
  $8BED  D2                         LSHIFT1
  $8BEE  B3                         PUSHL
  $8BEF  48                         LOADL_qimm   ; inline operand = 8
  $8BF0  1D                         LOADR_quick   ; inline operand = 13
  $8BF1  BE                         URSHIFT
  $8BF2  B4                         POPR
  $8BF3  BD                         LSHIFT
  $8BF4  CD                         SWAP
  $8BF5  A4 99 6B                   LOADL_abs              $6B99
  $8BF8  DB                         OR
  $8BF9  A8 99 6B                   STORE_abs              $6B99
  $8BFC  0D                         LOADL_quick   ; inline operand = 13
  $8BFD  D2                         LSHIFT1
  $8BFE  D2                         LSHIFT1
  $8BFF  B3                         PUSHL
  $8C00  48                         LOADL_qimm   ; inline operand = 8
  $8C01  1C                         LOADR_quick   ; inline operand = 12
  $8C02  BE                         URSHIFT
  $8C03  B4                         POPR
  $8C04  BD                         LSHIFT
  $8C05  CD                         SWAP
  $8C06  A4 99 6B                   LOADL_abs              $6B99
  $8C09  DB                         OR
  $8C0A  A8 99 6B                   STORE_abs              $6B99
  $8C0D  0C                         LOADL_quick   ; inline operand = 12
  $8C0E  53                         LOADR_qimm   ; inline operand = 3
  $8C0F  B5                         MULT
  $8C10  1D                         LOADR_quick   ; inline operand = 13
  $8C11  BB                         ADD
  $8C12  8C 3E 9A                   LOADR_imm2             $9A3E
  $8C15  BB                         ADD
  $8C16  D3                         BYTE_DEREF
  $8C17  19                         LOADR_quick   ; inline operand = 9
  $8C18  BB                         ADD
  $8C19  B3                         PUSHL
  $8C1A  45                         LOADL_qimm   ; inline operand = 5
 >$8C1B  D4                         BYTE_POPSTORE
 >$8C1C  CF                         RETURN

; ============================================================
; sub $8C1D   (frame_off=-2, body @ $8C22)   [PRG $0AC1D]
; ============================================================
  $8C22  40                         LOADL_qimm   ; inline operand = 0
  $8C23  2B                         STORE_quick   ; inline operand = 11
 >$8C24  0C                         LOADL_quick   ; inline operand = 12
  $8C25  1B                         LOADR_quick   ; inline operand = 11
  $8C26  C1                         CMPNE
  $8C27  D8 30 8C                   JUMPF_abs              $8C30
  $8C2A  3B                         PUSH_quick   ; inline operand = 11
  $8C2B  3C                         PUSH_quick   ; inline operand = 12
  $8C2C  E9 FD 88 04                CALL_abs_imm1          $88FD {bytecode}, $04
 >$8C30  0B                         LOADL_quick   ; inline operand = 11
  $8C31  D0                         INC
  $8C32  2B                         STORE_quick   ; inline operand = 11
  $8C33  0B                         LOADL_quick   ; inline operand = 11
  $8C34  53                         LOADR_qimm   ; inline operand = 3
  $8C35  C6                         UCMPLT
  $8C36  D7 24 8C                   JUMPT_abs              $8C24
  $8C39  CF                         RETURN

; ============================================================
; sub $8C3A   (frame_off=-2, body @ $8C3F)   [PRG $0AC3A]
; ============================================================
  $8C3F  40                         LOADL_qimm   ; inline operand = 0
  $8C40  2B                         STORE_quick   ; inline operand = 11
 >$8C41  3B                         PUSH_quick   ; inline operand = 11
  $8C42  E9 03 80 02                CALL_abs_imm1          $8003 {bytecode}, $02
  $8C46  0B                         LOADL_quick   ; inline operand = 11
  $8C47  53                         LOADR_qimm   ; inline operand = 3
  $8C48  C1                         CMPNE
  $8C49  D8 51 8C                   JUMPF_abs              $8C51
  $8C4C  3B                         PUSH_quick   ; inline operand = 11
  $8C4D  E9 1D 8C 02                CALL_abs_imm1          $8C1D {bytecode}, $02
 >$8C51  3B                         PUSH_quick   ; inline operand = 11
  $8C52  E9 2B 88 02                CALL_abs_imm1          $882B {bytecode}, $02
  $8C56  0B                         LOADL_quick   ; inline operand = 11
  $8C57  D0                         INC
  $8C58  2B                         STORE_quick   ; inline operand = 11
  $8C59  0B                         LOADL_quick   ; inline operand = 11
  $8C5A  54                         LOADR_qimm   ; inline operand = 4
  $8C5B  C6                         UCMPLT
  $8C5C  D7 41 8C                   JUMPT_abs              $8C41
  $8C5F  AC 4C 88                   CALL_abs               $884C {bytecode}
  $8C62  CF                         RETURN

; ============================================================
; sub $8C63   (frame_off=+0, body @ $8C68)   [PRG $0AC63]
; ============================================================
  $8C68  AC 86 91                   CALL_abs               $9186 (nat_5_1186) {native}
  $8C6B  AC 3A 8C                   CALL_abs               $8C3A {bytecode}
  $8C6E  AC 90 98                   CALL_abs               $9890 (nat_5_1890) {native}
  $8C71  AC 8E 99                   CALL_abs               $998E (nat_5_198e) {native}
  $8C74  CF                         RETURN

