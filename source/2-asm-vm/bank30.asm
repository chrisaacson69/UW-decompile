VM bytecode disassembly
  ROM:          Uncharted Waters (USA).nes
  mode:         bulk dump of bank 30
  opcode spec:  vm-opcodes-v2.toml via nobunaga_vm.OPCODE_INFO (execution-validated lengths)
  labels:       0 CPU addresses named

  bank 30: found 23 bytecode-subroutine stubs

; ============================================================
; sub $8003   (frame_off=-4, body @ $8008)   [PRG $3C003]
; ============================================================
  $8008  A5 67 70                   BYTE_LOADL_abs         $7067
  $800B  8B 32                      BYTE_LOADR_imm1        +50
  $800D  C9                         UCMPGE
  $800E  D8 2B 80                   JUMPF_abs              $802B
  $8011  A5 67 70                   BYTE_LOADL_abs         $7067
  $8014  8C EA 8B                   LOADR_imm2             $8BEA
  $8017  BB                         ADD
  $8018  D3                         BYTE_DEREF
  $8019  2B                         STORE_quick   ; inline operand = 11
  $801A  8D 10                      BYTE_PUSH_imm1         +16
  $801C  60                         PUSH_qimm   ; inline operand = 0
  $801D  0B                         LOADL_quick   ; inline operand = 11
  $801E  54                         LOADR_qimm   ; inline operand = 4
  $801F  BD                         LSHIFT
  $8020  8C 9C 8B                   LOADR_imm2             $8B9C
  $8023  BB                         ADD
  $8024  B3                         PUSHL
  $8025  66                         PUSH_qimm   ; inline operand = 6
  $8026  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $802A  CF                         RETURN
 >$802B  A5 67 70                   BYTE_LOADL_abs         $7067
  $802E  52                         LOADR_qimm   ; inline operand = 2
  $802F  C0                         CMPEQ
  $8030  D7 3B 80                   JUMPT_abs              $803B
  $8033  A5 67 70                   BYTE_LOADL_abs         $7067
  $8036  5C                         LOADR_qimm   ; inline operand = 12
  $8037  C0                         CMPEQ
  $8038  D8 47 80                   JUMPF_abs              $8047
 >$803B  8D 10                      BYTE_PUSH_imm1         +16
  $803D  60                         PUSH_qimm   ; inline operand = 0
  $803E  8E EC 8B                   PUSH_imm2              $8BEC
  $8041  66                         PUSH_qimm   ; inline operand = 6
  $8042  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8046  CF                         RETURN
 >$8047  A5 67 70                   BYTE_LOADL_abs         $7067
  $804A  55                         LOADR_qimm   ; inline operand = 5
  $804B  B5                         MULT
  $804C  8C 0A B5                   LOADR_imm2             $B50A
  $804F  BB                         ADD
  $8050  2A                         STORE_quick   ; inline operand = 10
  $8051  3A                         PUSH_quick   ; inline operand = 10
  $8052  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8056  2B                         STORE_quick   ; inline operand = 11
  $8057  8D 10                      BYTE_PUSH_imm1         +16
  $8059  60                         PUSH_qimm   ; inline operand = 0
  $805A  0B                         LOADL_quick   ; inline operand = 11
  $805B  54                         LOADR_qimm   ; inline operand = 4
  $805C  BD                         LSHIFT
  $805D  8C 9C 8B                   LOADR_imm2             $8B9C
  $8060  BB                         ADD
  $8061  B3                         PUSHL
  $8062  66                         PUSH_qimm   ; inline operand = 6
  $8063  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8067  CF                         RETURN

; ============================================================
; sub $8068   (frame_off=-2, body @ $806D)   [PRG $3C068]
; ============================================================
  $806D  8E E0 00                   PUSH_imm2              $00E0
  $8070  0E                         LOADL_quick   ; inline operand = 14
  $8071  D2                         LSHIFT1
  $8072  D2                         LSHIFT1
  $8073  8C B2 8C                   LOADR_imm2             $8CB2
  $8076  BB                         ADD
  $8077  B0                         DEREF
  $8078  B3                         PUSHL
  $8079  0E                         LOADL_quick   ; inline operand = 14
  $807A  D2                         LSHIFT1
  $807B  D2                         LSHIFT1
  $807C  8C B0 8C                   LOADR_imm2             $8CB0
  $807F  BB                         ADD
  $8080  B0                         DEREF
  $8081  B3                         PUSHL
  $8082  64                         PUSH_qimm   ; inline operand = 4
  $8083  67                         PUSH_qimm   ; inline operand = 7
  $8084  3D                         PUSH_quick   ; inline operand = 13
  $8085  3C                         PUSH_quick   ; inline operand = 12
  $8086  69                         PUSH_qimm   ; inline operand = 9
  $8087  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $808B  0E                         LOADL_quick   ; inline operand = 14
  $808C  51                         LOADR_qimm   ; inline operand = 1
  $808D  BE                         URSHIFT
  $808E  2B                         STORE_quick   ; inline operand = 11
  $808F  0F                         LOADL_quick   ; inline operand = 15
  $8090  8C FF 00                   LOADR_imm2             $00FF
  $8093  C0                         CMPEQ
  $8094  D8 B8 80                   JUMPF_abs              $80B8
  $8097  8E E0 00                   PUSH_imm2              $00E0
  $809A  0B                         LOADL_quick   ; inline operand = 11
  $809B  D2                         LSHIFT1
  $809C  D2                         LSHIFT1
  $809D  8C CA 8C                   LOADR_imm2             $8CCA
  $80A0  BB                         ADD
  $80A1  B0                         DEREF
  $80A2  B3                         PUSHL
  $80A3  0B                         LOADL_quick   ; inline operand = 11
  $80A4  D2                         LSHIFT1
  $80A5  D2                         LSHIFT1
  $80A6  8C C8 8C                   LOADR_imm2             $8CC8
  $80A9  BB                         ADD
  $80AA  B0                         DEREF
  $80AB  B3                         PUSHL
  $80AC  63                         PUSH_qimm   ; inline operand = 3
  $80AD  65                         PUSH_qimm   ; inline operand = 5
  $80AE  3D                         PUSH_quick   ; inline operand = 13
  $80AF  0C                         LOADL_quick   ; inline operand = 12
  $80B0  72                         ADD_qimm   ; inline operand = 2
  $80B1  B3                         PUSHL
  $80B2  69                         PUSH_qimm   ; inline operand = 9
  $80B3  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $80B7  CF                         RETURN
 >$80B8  0B                         LOADL_quick   ; inline operand = 11
  $80B9  51                         LOADR_qimm   ; inline operand = 1
  $80BA  C0                         CMPEQ
  $80BB  D8 E1 80                   JUMPF_abs              $80E1
  $80BE  8E E0 00                   PUSH_imm2              $00E0
  $80C1  81 13                      LOADL_near             $13
  $80C3  D2                         LSHIFT1
  $80C4  D2                         LSHIFT1
  $80C5  B3                         PUSHL
  $80C6  0F                         LOADL_quick   ; inline operand = 15
  $80C7  5C                         LOADR_qimm   ; inline operand = 12
  $80C8  B5                         MULT
  $80C9  B4                         POPR
  $80CA  BB                         ADD
  $80CB  8C E6 8C                   LOADR_imm2             $8CE6
  $80CE  BB                         ADD
  $80CF  B0                         DEREF
  $80D0  B3                         PUSHL
  $80D1  81 13                      LOADL_near             $13
  $80D3  D2                         LSHIFT1
  $80D4  D2                         LSHIFT1
  $80D5  B3                         PUSHL
  $80D6  0F                         LOADL_quick   ; inline operand = 15
  $80D7  5C                         LOADR_qimm   ; inline operand = 12
  $80D8  B5                         MULT
  $80D9  B4                         POPR
  $80DA  BB                         ADD
  $80DB  8C E4 8C                   LOADR_imm2             $8CE4
  $80DE  D6 2A 81                   JUMP_abs               $812A
 >$80E1  0B                         LOADL_quick   ; inline operand = 11
  $80E2  D7 08 81                   JUMPT_abs              $8108
  $80E5  8E E0 00                   PUSH_imm2              $00E0
  $80E8  81 13                      LOADL_near             $13
  $80EA  D2                         LSHIFT1
  $80EB  D2                         LSHIFT1
  $80EC  B3                         PUSHL
  $80ED  0F                         LOADL_quick   ; inline operand = 15
  $80EE  53                         LOADR_qimm   ; inline operand = 3
  $80EF  BD                         LSHIFT
  $80F0  B4                         POPR
  $80F1  BB                         ADD
  $80F2  8C D6 8C                   LOADR_imm2             $8CD6
  $80F5  BB                         ADD
  $80F6  B0                         DEREF
  $80F7  B3                         PUSHL
  $80F8  81 13                      LOADL_near             $13
  $80FA  D2                         LSHIFT1
  $80FB  D2                         LSHIFT1
  $80FC  B3                         PUSHL
  $80FD  0F                         LOADL_quick   ; inline operand = 15
  $80FE  53                         LOADR_qimm   ; inline operand = 3
  $80FF  BD                         LSHIFT
  $8100  B4                         POPR
  $8101  BB                         ADD
  $8102  8C D4 8C                   LOADR_imm2             $8CD4
  $8105  D6 2A 81                   JUMP_abs               $812A
 >$8108  8E E0 00                   PUSH_imm2              $00E0
  $810B  0F                         LOADL_quick   ; inline operand = 15
  $810C  53                         LOADR_qimm   ; inline operand = 3
  $810D  BD                         LSHIFT
  $810E  B3                         PUSHL
  $810F  81 13                      LOADL_near             $13
  $8111  D1                         DEC
  $8112  D2                         LSHIFT1
  $8113  D2                         LSHIFT1
  $8114  B4                         POPR
  $8115  BB                         ADD
  $8116  8C FE 8C                   LOADR_imm2             $8CFE
  $8119  BB                         ADD
  $811A  B0                         DEREF
  $811B  B3                         PUSHL
  $811C  0F                         LOADL_quick   ; inline operand = 15
  $811D  53                         LOADR_qimm   ; inline operand = 3
  $811E  BD                         LSHIFT
  $811F  B3                         PUSHL
  $8120  81 13                      LOADL_near             $13
  $8122  D1                         DEC
  $8123  D2                         LSHIFT1
  $8124  D2                         LSHIFT1
  $8125  B4                         POPR
  $8126  BB                         ADD
  $8127  8C FC 8C                   LOADR_imm2             $8CFC
 >$812A  BB                         ADD
  $812B  B0                         DEREF
  $812C  B3                         PUSHL
  $812D  63                         PUSH_qimm   ; inline operand = 3
  $812E  65                         PUSH_qimm   ; inline operand = 5
  $812F  3D                         PUSH_quick   ; inline operand = 13
  $8130  0C                         LOADL_quick   ; inline operand = 12
  $8131  72                         ADD_qimm   ; inline operand = 2
  $8132  B3                         PUSHL
  $8133  69                         PUSH_qimm   ; inline operand = 9
  $8134  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8138  CF                         RETURN

; ============================================================
; sub $8139   (frame_off=+0, body @ $813E)   [PRG $3C139]
; ============================================================
  $813E  3E                         PUSH_quick   ; inline operand = 14
  $813F  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8143  8F 14                      BYTE_ADD_imm1          +20
  $8145  B3                         PUSHL
  $8146  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $814A  52                         LOADR_qimm   ; inline operand = 2
  $814B  BE                         URSHIFT
  $814C  53                         LOADR_qimm   ; inline operand = 3
  $814D  DA                         AND
  $814E  B3                         PUSHL
  $814F  3E                         PUSH_quick   ; inline operand = 14
  $8150  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8154  8F 14                      BYTE_ADD_imm1          +20
  $8156  B3                         PUSHL
  $8157  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $815B  54                         LOADR_qimm   ; inline operand = 4
  $815C  BE                         URSHIFT
  $815D  51                         LOADR_qimm   ; inline operand = 1
  $815E  DA                         AND
  $815F  B3                         PUSHL
  $8160  3E                         PUSH_quick   ; inline operand = 14
  $8161  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8165  8F 14                      BYTE_ADD_imm1          +20
  $8167  B3                         PUSHL
  $8168  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $816C  55                         LOADR_qimm   ; inline operand = 5
  $816D  BE                         URSHIFT
  $816E  57                         LOADR_qimm   ; inline operand = 7
  $816F  DA                         AND
  $8170  B3                         PUSHL
  $8171  3D                         PUSH_quick   ; inline operand = 13
  $8172  3C                         PUSH_quick   ; inline operand = 12
  $8173  E9 68 80 0A                CALL_abs_imm1          $8068 {bytecode}, $0A
  $8177  CF                         RETURN

; ============================================================
; sub $8178   (frame_off=+0, body @ $817D)   [PRG $3C178]
; ============================================================
  $817D  0C                         LOADL_quick   ; inline operand = 12
  $817E  8B 18                      BYTE_LOADR_imm1        +24
  $8180  B5                         MULT
  $8181  8C BA 6A                   LOADR_imm2             $6ABA
  $8184  BB                         ADD
  $8185  D3                         BYTE_DEREF
  $8186  CF                         RETURN

; ============================================================
; sub $8187   (frame_off=+0, body @ $818C)   [PRG $3C187]
; ============================================================
  $818C  0E                         LOADL_quick   ; inline operand = 14
  $818D  D7 91 81                   JUMPT_abs              $8191
  $8190  CF                         RETURN
 >$8191  0E                         LOADL_quick   ; inline operand = 14
  $8192  D1                         DEC
  $8193  2E                         STORE_quick   ; inline operand = 14
  $8194  8E E1 00                   PUSH_imm2              $00E1
  $8197  0E                         LOADL_quick   ; inline operand = 14
  $8198  D2                         LSHIFT1
  $8199  D2                         LSHIFT1
  $819A  8C 0E 8D                   LOADR_imm2             $8D0E
  $819D  BB                         ADD
  $819E  B0                         DEREF
  $819F  B3                         PUSHL
  $81A0  0E                         LOADL_quick   ; inline operand = 14
  $81A1  D2                         LSHIFT1
  $81A2  D2                         LSHIFT1
  $81A3  8C 0C 8D                   LOADR_imm2             $8D0C
  $81A6  BB                         ADD
  $81A7  B0                         DEREF
  $81A8  B3                         PUSHL
  $81A9  63                         PUSH_qimm   ; inline operand = 3
  $81AA  63                         PUSH_qimm   ; inline operand = 3
  $81AB  3D                         PUSH_quick   ; inline operand = 13
  $81AC  3C                         PUSH_quick   ; inline operand = 12
  $81AD  69                         PUSH_qimm   ; inline operand = 9
  $81AE  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $81B2  CF                         RETURN

; ============================================================
; sub $81B3   (frame_off=-6, body @ $81B8)   [PRG $3C1B3]
; ============================================================
  $81B8  0E                         LOADL_quick   ; inline operand = 14
  $81B9  8B 18                      BYTE_LOADR_imm1        +24
  $81BB  B5                         MULT
  $81BC  8C A4 6A                   LOADR_imm2             $6AA4
  $81BF  BB                         ADD
  $81C0  29                         STORE_quick   ; inline operand = 9
  $81C1  0E                         LOADL_quick   ; inline operand = 14
  $81C2  57                         LOADR_qimm   ; inline operand = 7
  $81C3  B5                         MULT
  $81C4  8C 90 6C                   LOADR_imm2             $6C90
  $81C7  BB                         ADD
  $81C8  2A                         STORE_quick   ; inline operand = 10
  $81C9  0A                         LOADL_quick   ; inline operand = 10
  $81CA  76                         ADD_qimm   ; inline operand = 6
  $81CB  D3                         BYTE_DEREF
  $81CC  5F                         LOADR_qimm   ; inline operand = 15
  $81CD  DA                         AND
  $81CE  B3                         PUSHL
  $81CF  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $81D3  2B                         STORE_quick   ; inline operand = 11
  $81D4  AC 89 A5                   CALL_abs               $A589 {native}
  $81D7  8D 40                      BYTE_PUSH_imm1         +64
  $81D9  60                         PUSH_qimm   ; inline operand = 0
  $81DA  6C                         PUSH_qimm   ; inline operand = 12
  $81DB  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $81DF  8E E8 00                   PUSH_imm2              $00E8
  $81E2  8E 02 B4                   PUSH_imm2              $B402
  $81E5  8E AA B1                   PUSH_imm2              $B1AA
  $81E8  8D 14                      BYTE_PUSH_imm1         +20
  $81EA  8D 1E                      BYTE_PUSH_imm1         +30
  $81EC  3D                         PUSH_quick   ; inline operand = 13
  $81ED  3C                         PUSH_quick   ; inline operand = 12
  $81EE  69                         PUSH_qimm   ; inline operand = 9
  $81EF  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $81F3  0A                         LOADL_quick   ; inline operand = 10
  $81F4  76                         ADD_qimm   ; inline operand = 6
  $81F5  D3                         BYTE_DEREF
  $81F6  5F                         LOADR_qimm   ; inline operand = 15
  $81F7  DA                         AND
  $81F8  B3                         PUSHL
  $81F9  0D                         LOADL_quick   ; inline operand = 13
  $81FA  D0                         INC
  $81FB  B3                         PUSHL
  $81FC  0C                         LOADL_quick   ; inline operand = 12
  $81FD  72                         ADD_qimm   ; inline operand = 2
  $81FE  B3                         PUSHL
  $81FF  E9 39 81 06                CALL_abs_imm1          $8139 {bytecode}, $06
  $8203  0E                         LOADL_quick   ; inline operand = 14
  $8204  8B 18                      BYTE_LOADR_imm1        +24
  $8206  B5                         MULT
  $8207  8C BB 6A                   LOADR_imm2             $6ABB
  $820A  BB                         ADD
  $820B  D3                         BYTE_DEREF
  $820C  B3                         PUSHL
  $820D  0D                         LOADL_quick   ; inline operand = 13
  $820E  72                         ADD_qimm   ; inline operand = 2
  $820F  B3                         PUSHL
  $8210  0C                         LOADL_quick   ; inline operand = 12
  $8211  7A                         ADD_qimm   ; inline operand = 10
  $8212  B3                         PUSHL
  $8213  E9 87 81 06                CALL_abs_imm1          $8187 {bytecode}, $06
  $8217  0D                         LOADL_quick   ; inline operand = 13
  $8218  72                         ADD_qimm   ; inline operand = 2
  $8219  B3                         PUSHL
  $821A  0C                         LOADL_quick   ; inline operand = 12
  $821B  7E                         ADD_qimm   ; inline operand = 14
  $821C  B3                         PUSHL
  $821D  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8221  60                         PUSH_qimm   ; inline operand = 0
  $8222  8E 28 8D                   PUSH_imm2              $8D28
  $8225  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8229  3B                         PUSH_quick   ; inline operand = 11
  $822A  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $822E  0D                         LOADL_quick   ; inline operand = 13
  $822F  74                         ADD_qimm   ; inline operand = 4
  $8230  B3                         PUSHL
  $8231  0C                         LOADL_quick   ; inline operand = 12
  $8232  7E                         ADD_qimm   ; inline operand = 14
  $8233  B3                         PUSHL
  $8234  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8238  3E                         PUSH_quick   ; inline operand = 14
  $8239  E9 78 81 02                CALL_abs_imm1          $8178 {bytecode}, $02
  $823D  B3                         PUSHL
  $823E  8E 2F 8D                   PUSH_imm2              $8D2F
  $8241  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $8245  0D                         LOADL_quick   ; inline operand = 13
  $8246  76                         ADD_qimm   ; inline operand = 6
  $8247  B3                         PUSHL
  $8248  0C                         LOADL_quick   ; inline operand = 12
  $8249  72                         ADD_qimm   ; inline operand = 2
  $824A  B3                         PUSHL
  $824B  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $824F  60                         PUSH_qimm   ; inline operand = 0
  $8250  8E 3E 8D                   PUSH_imm2              $8D3E
  $8253  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8257  0E                         LOADL_quick   ; inline operand = 14
  $8258  8B 18                      BYTE_LOADR_imm1        +24
  $825A  B5                         MULT
  $825B  8C A4 6A                   LOADR_imm2             $6AA4
  $825E  BB                         ADD
  $825F  D3                         BYTE_DEREF
  $8260  57                         LOADR_qimm   ; inline operand = 7
  $8261  B5                         MULT
  $8262  8C 42 65                   LOADR_imm2             $6542
  $8265  BB                         ADD
  $8266  B0                         DEREF
  $8267  B3                         PUSHL
  $8268  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $826C  0D                         LOADL_quick   ; inline operand = 13
  $826D  78                         ADD_qimm   ; inline operand = 8
  $826E  B3                         PUSHL
  $826F  0C                         LOADL_quick   ; inline operand = 12
  $8270  72                         ADD_qimm   ; inline operand = 2
  $8271  B3                         PUSHL
  $8272  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8276  3E                         PUSH_quick   ; inline operand = 14
  $8277  E9 7B D8 02                CALL_abs_imm1          $D87B {native}, $02
  $827B  B3                         PUSHL
  $827C  0E                         LOADL_quick   ; inline operand = 14
  $827D  57                         LOADR_qimm   ; inline operand = 7
  $827E  B5                         MULT
  $827F  8C 90 6C                   LOADR_imm2             $6C90
  $8282  BB                         ADD
  $8283  D3                         BYTE_DEREF
  $8284  B3                         PUSHL
  $8285  8E 4A 8D                   PUSH_imm2              $8D4A
  $8288  E9 19 C7 06                CALL_abs_imm1          $C719 {native}, $06
  $828C  0D                         LOADL_quick   ; inline operand = 13
  $828D  79                         ADD_qimm   ; inline operand = 9
  $828E  B3                         PUSHL
  $828F  0C                         LOADL_quick   ; inline operand = 12
  $8290  72                         ADD_qimm   ; inline operand = 2
  $8291  B3                         PUSHL
  $8292  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8296  3E                         PUSH_quick   ; inline operand = 14
  $8297  E9 2F D9 02                CALL_abs_imm1          $D92F {native}, $02
  $829B  B3                         PUSHL
  $829C  0E                         LOADL_quick   ; inline operand = 14
  $829D  57                         LOADR_qimm   ; inline operand = 7
  $829E  B5                         MULT
  $829F  8C 92 6C                   LOADR_imm2             $6C92
  $82A2  BB                         ADD
  $82A3  D3                         BYTE_DEREF
  $82A4  B3                         PUSHL
  $82A5  8E 65 8D                   PUSH_imm2              $8D65
  $82A8  E9 19 C7 06                CALL_abs_imm1          $C719 {native}, $06
  $82AC  0D                         LOADL_quick   ; inline operand = 13
  $82AD  7A                         ADD_qimm   ; inline operand = 10
  $82AE  B3                         PUSHL
  $82AF  0C                         LOADL_quick   ; inline operand = 12
  $82B0  72                         ADD_qimm   ; inline operand = 2
  $82B1  B3                         PUSHL
  $82B2  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $82B6  3E                         PUSH_quick   ; inline operand = 14
  $82B7  E9 BE D8 02                CALL_abs_imm1          $D8BE {native}, $02
  $82BB  B3                         PUSHL
  $82BC  0E                         LOADL_quick   ; inline operand = 14
  $82BD  57                         LOADR_qimm   ; inline operand = 7
  $82BE  B5                         MULT
  $82BF  8C 91 6C                   LOADR_imm2             $6C91
  $82C2  BB                         ADD
  $82C3  D3                         BYTE_DEREF
  $82C4  B3                         PUSHL
  $82C5  8E 80 8D                   PUSH_imm2              $8D80
  $82C8  E9 19 C7 06                CALL_abs_imm1          $C719 {native}, $06
  $82CC  0D                         LOADL_quick   ; inline operand = 13
  $82CD  7B                         ADD_qimm   ; inline operand = 11
  $82CE  B3                         PUSHL
  $82CF  0C                         LOADL_quick   ; inline operand = 12
  $82D0  72                         ADD_qimm   ; inline operand = 2
  $82D1  B3                         PUSHL
  $82D2  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $82D6  0E                         LOADL_quick   ; inline operand = 14
  $82D7  57                         LOADR_qimm   ; inline operand = 7
  $82D8  B5                         MULT
  $82D9  8C 96 6C                   LOADR_imm2             $6C96
  $82DC  BB                         ADD
  $82DD  D3                         BYTE_DEREF
  $82DE  5F                         LOADR_qimm   ; inline operand = 15
  $82DF  DA                         AND
  $82E0  B3                         PUSHL
  $82E1  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $82E5  8F 12                      BYTE_ADD_imm1          +18
  $82E7  B3                         PUSHL
  $82E8  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $82EC  B3                         PUSHL
  $82ED  3E                         PUSH_quick   ; inline operand = 14
  $82EE  E9 2A DA 02                CALL_abs_imm1          $DA2A {native}, $02
  $82F2  B3                         PUSHL
  $82F3  8E 9B 8D                   PUSH_imm2              $8D9B
  $82F6  E9 19 C7 06                CALL_abs_imm1          $C719 {native}, $06
  $82FA  0D                         LOADL_quick   ; inline operand = 13
  $82FB  7C                         ADD_qimm   ; inline operand = 12
  $82FC  B3                         PUSHL
  $82FD  0C                         LOADL_quick   ; inline operand = 12
  $82FE  72                         ADD_qimm   ; inline operand = 2
  $82FF  B3                         PUSHL
  $8300  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8304  0E                         LOADL_quick   ; inline operand = 14
  $8305  57                         LOADR_qimm   ; inline operand = 7
  $8306  B5                         MULT
  $8307  8C 96 6C                   LOADR_imm2             $6C96
  $830A  BB                         ADD
  $830B  D3                         BYTE_DEREF
  $830C  5F                         LOADR_qimm   ; inline operand = 15
  $830D  DA                         AND
  $830E  B3                         PUSHL
  $830F  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8313  7F                         ADD_qimm   ; inline operand = 15
  $8314  B0                         DEREF
  $8315  B3                         PUSHL
  $8316  0E                         LOADL_quick   ; inline operand = 14
  $8317  57                         LOADR_qimm   ; inline operand = 7
  $8318  B5                         MULT
  $8319  8C 94 6C                   LOADR_imm2             $6C94
  $831C  BB                         ADD
  $831D  B0                         DEREF
  $831E  B3                         PUSHL
  $831F  8E B6 8D                   PUSH_imm2              $8DB6
  $8322  E9 19 C7 06                CALL_abs_imm1          $C719 {native}, $06
  $8326  0D                         LOADL_quick   ; inline operand = 13
  $8327  7D                         ADD_qimm   ; inline operand = 13
  $8328  B3                         PUSHL
  $8329  0C                         LOADL_quick   ; inline operand = 12
  $832A  72                         ADD_qimm   ; inline operand = 2
  $832B  B3                         PUSHL
  $832C  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8330  60                         PUSH_qimm   ; inline operand = 0
  $8331  8E D1 8D                   PUSH_imm2              $8DD1
  $8334  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8338  0A                         LOADL_quick   ; inline operand = 10
  $8339  76                         ADD_qimm   ; inline operand = 6
  $833A  D3                         BYTE_DEREF
  $833B  54                         LOADR_qimm   ; inline operand = 4
  $833C  BE                         URSHIFT
  $833D  53                         LOADR_qimm   ; inline operand = 3
  $833E  DA                         AND
  $833F  D2                         LSHIFT1
  $8340  8C 33 BC                   LOADR_imm2             $BC33
  $8343  BB                         ADD
  $8344  B3                         PUSHL
  $8345  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8349  B3                         PUSHL
  $834A  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $834E  60                         PUSH_qimm   ; inline operand = 0
  $834F  8E D8 8D                   PUSH_imm2              $8DD8
  $8352  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8356  0D                         LOADL_quick   ; inline operand = 13
  $8357  7D                         ADD_qimm   ; inline operand = 13
  $8358  B3                         PUSHL
  $8359  0C                         LOADL_quick   ; inline operand = 12
  $835A  8F 15                      BYTE_ADD_imm1          +21
  $835C  B3                         PUSHL
  $835D  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8361  0B                         LOADL_quick   ; inline operand = 11
  $8362  8F 11                      BYTE_ADD_imm1          +17
  $8364  B3                         PUSHL
  $8365  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $8369  B3                         PUSHL
  $836A  0A                         LOADL_quick   ; inline operand = 10
  $836B  73                         ADD_qimm   ; inline operand = 3
  $836C  D3                         BYTE_DEREF
  $836D  B3                         PUSHL
  $836E  8E DB 8D                   PUSH_imm2              $8DDB
  $8371  E9 19 C7 06                CALL_abs_imm1          $C719 {native}, $06
  $8375  0D                         LOADL_quick   ; inline operand = 13
  $8376  7F                         ADD_qimm   ; inline operand = 15
  $8377  B3                         PUSHL
  $8378  0C                         LOADL_quick   ; inline operand = 12
  $8379  72                         ADD_qimm   ; inline operand = 2
  $837A  B3                         PUSHL
  $837B  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $837F  3E                         PUSH_quick   ; inline operand = 14
  $8380  E9 A8 D9 02                CALL_abs_imm1          $D9A8 {native}, $02
  $8384  B3                         PUSHL
  $8385  3E                         PUSH_quick   ; inline operand = 14
  $8386  E9 6A DA 02                CALL_abs_imm1          $DA6A {native}, $02
  $838A  B3                         PUSHL
  $838B  8E E3 8D                   PUSH_imm2              $8DE3
  $838E  E9 19 C7 06                CALL_abs_imm1          $C719 {native}, $06
  $8392  0D                         LOADL_quick   ; inline operand = 13
  $8393  8F 12                      BYTE_ADD_imm1          +18
  $8395  B3                         PUSHL
  $8396  0C                         LOADL_quick   ; inline operand = 12
  $8397  7D                         ADD_qimm   ; inline operand = 13
  $8398  B3                         PUSHL
  $8399  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $839D  09                         LOADL_quick   ; inline operand = 9
  $839E  8F 14                      BYTE_ADD_imm1          +20
  $83A0  B0                         DEREF
  $83A1  B3                         PUSHL
  $83A2  09                         LOADL_quick   ; inline operand = 9
  $83A3  8F 12                      BYTE_ADD_imm1          +18
  $83A5  B0                         DEREF
  $83A6  5A                         LOADR_qimm   ; inline operand = 10
  $83A7  B6                         SDIV
  $83A8  B3                         PUSHL
  $83A9  09                         LOADL_quick   ; inline operand = 9
  $83AA  8F 10                      BYTE_ADD_imm1          +16
  $83AC  B0                         DEREF
  $83AD  5A                         LOADR_qimm   ; inline operand = 10
  $83AE  B6                         SDIV
  $83AF  B3                         PUSHL
  $83B0  8E FC 8D                   PUSH_imm2              $8DFC
  $83B3  E9 19 C7 08                CALL_abs_imm1          $C719 {native}, $08
  $83B7  60                         PUSH_qimm   ; inline operand = 0
  $83B8  0D                         LOADL_quick   ; inline operand = 13
  $83B9  8F 11                      BYTE_ADD_imm1          +17
  $83BB  B3                         PUSHL
  $83BC  0C                         LOADL_quick   ; inline operand = 12
  $83BD  7B                         ADD_qimm   ; inline operand = 11
  $83BE  B3                         PUSHL
  $83BF  E9 D0 A3 06                CALL_abs_imm1          $A3D0 {native}, $06
  $83C3  61                         PUSH_qimm   ; inline operand = 1
  $83C4  0D                         LOADL_quick   ; inline operand = 13
  $83C5  8F 11                      BYTE_ADD_imm1          +17
  $83C7  B3                         PUSHL
  $83C8  0C                         LOADL_quick   ; inline operand = 12
  $83C9  8F 11                      BYTE_ADD_imm1          +17
  $83CB  B3                         PUSHL
  $83CC  E9 D0 A3 06                CALL_abs_imm1          $A3D0 {native}, $06
  $83D0  62                         PUSH_qimm   ; inline operand = 2
  $83D1  0D                         LOADL_quick   ; inline operand = 13
  $83D2  8F 11                      BYTE_ADD_imm1          +17
  $83D4  B3                         PUSHL
  $83D5  0C                         LOADL_quick   ; inline operand = 12
  $83D6  8F 17                      BYTE_ADD_imm1          +23
  $83D8  B3                         PUSHL
  $83D9  E9 D0 A3 06                CALL_abs_imm1          $A3D0 {native}, $06
  $83DD  AC 7B C4                   CALL_abs               $C47B {native}
  $83E0  CF                         RETURN

; ============================================================
; sub $83E1   (frame_off=-2, body @ $83E6)   [PRG $3C3E1]
; ============================================================
  $83E6  0E                         LOADL_quick   ; inline operand = 14
  $83E7  D7 EB 83                   JUMPT_abs              $83EB
  $83EA  CF                         RETURN
 >$83EB  40                         LOADL_qimm   ; inline operand = 0
  $83EC  D6 06 84                   JUMP_abs               $8406
 >$83EF  8E E1 00                   PUSH_imm2              $00E1
  $83F2  8E 20 B9                   PUSH_imm2              $B920
  $83F5  8E 1E B9                   PUSH_imm2              $B91E
  $83F8  62                         PUSH_qimm   ; inline operand = 2
  $83F9  61                         PUSH_qimm   ; inline operand = 1
  $83FA  3D                         PUSH_quick   ; inline operand = 13
  $83FB  3C                         PUSH_quick   ; inline operand = 12
  $83FC  69                         PUSH_qimm   ; inline operand = 9
  $83FD  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8401  0C                         LOADL_quick   ; inline operand = 12
  $8402  D0                         INC
  $8403  2C                         STORE_quick   ; inline operand = 12
  $8404  0B                         LOADL_quick   ; inline operand = 11
  $8405  D0                         INC
 >$8406  2B                         STORE_quick   ; inline operand = 11
  $8407  0B                         LOADL_quick   ; inline operand = 11
  $8408  1E                         LOADR_quick   ; inline operand = 14
  $8409  C6                         UCMPLT
  $840A  D7 EF 83                   JUMPT_abs              $83EF
  $840D  CF                         RETURN

; ============================================================
; sub $840E   (frame_off=-10, body @ $8413)   [PRG $3C40E]
; ============================================================
  $8413  0C                         LOADL_quick   ; inline operand = 12
  $8414  D7 19 84                   JUMPT_abs              $8419
  $8417  40                         LOADL_qimm   ; inline operand = 0
  $8418  CF                         RETURN
 >$8419  8A 90 6C                   LOADL_imm2             $6C90
  $841C  2B                         STORE_quick   ; inline operand = 11
  $841D  8F 23                      BYTE_ADD_imm1          +35
  $841F  2A                         STORE_quick   ; inline operand = 10
  $8420  8A A4 6A                   LOADL_imm2             $6AA4
  $8423  29                         STORE_quick   ; inline operand = 9
  $8424  40                         LOADL_qimm   ; inline operand = 0
  $8425  28                         STORE_quick   ; inline operand = 8
  $8426  D6 42 84                   JUMP_abs               $8442
 >$8429  0B                         LOADL_quick   ; inline operand = 11
  $842A  76                         ADD_qimm   ; inline operand = 6
  $842B  D3                         BYTE_DEREF
  $842C  8B 40                      BYTE_LOADR_imm1        +64
  $842E  DA                         AND
  $842F  D8 3B 84                   JUMPF_abs              $843B
  $8432  09                         LOADL_quick   ; inline operand = 9
  $8433  D3                         BYTE_DEREF
  $8434  1C                         LOADR_quick   ; inline operand = 12
  $8435  C0                         CMPEQ
  $8436  D8 3B 84                   JUMPF_abs              $843B
  $8439  41                         LOADL_qimm   ; inline operand = 1
  $843A  CF                         RETURN
 >$843B  09                         LOADL_quick   ; inline operand = 9
  $843C  8F 18                      BYTE_ADD_imm1          +24
  $843E  29                         STORE_quick   ; inline operand = 9
  $843F  0B                         LOADL_quick   ; inline operand = 11
  $8440  77                         ADD_qimm   ; inline operand = 7
  $8441  2B                         STORE_quick   ; inline operand = 11
 >$8442  0B                         LOADL_quick   ; inline operand = 11
  $8443  1A                         LOADR_quick   ; inline operand = 10
  $8444  C6                         UCMPLT
  $8445  D7 29 84                   JUMPT_abs              $8429
  $8448  42                         LOADL_qimm   ; inline operand = 2
  $8449  CF                         RETURN

; ============================================================
; sub $844A   (frame_off=-6, body @ $844F)   [PRG $3C44A]
; ============================================================
  $844F  0E                         LOADL_quick   ; inline operand = 14
  $8450  57                         LOADR_qimm   ; inline operand = 7
  $8451  B5                         MULT
  $8452  8C 42 65                   LOADR_imm2             $6542
  $8455  BB                         ADD
  $8456  2B                         STORE_quick   ; inline operand = 11
  $8457  0E                         LOADL_quick   ; inline operand = 14
  $8458  5A                         LOADR_qimm   ; inline operand = 10
  $8459  B5                         MULT
  $845A  8C BE 6B                   LOADR_imm2             $6BBE
  $845D  BB                         ADD
  $845E  2A                         STORE_quick   ; inline operand = 10
  $845F  AC 89 A5                   CALL_abs               $A589 {native}
  $8462  8D 40                      BYTE_PUSH_imm1         +64
  $8464  60                         PUSH_qimm   ; inline operand = 0
  $8465  6C                         PUSH_qimm   ; inline operand = 12
  $8466  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $846A  8E E8 00                   PUSH_imm2              $00E8
  $846D  8E 02 B4                   PUSH_imm2              $B402
  $8470  8E AA B1                   PUSH_imm2              $B1AA
  $8473  8D 14                      BYTE_PUSH_imm1         +20
  $8475  8D 1E                      BYTE_PUSH_imm1         +30
  $8477  3D                         PUSH_quick   ; inline operand = 13
  $8478  3C                         PUSH_quick   ; inline operand = 12
  $8479  69                         PUSH_qimm   ; inline operand = 9
  $847A  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $847E  60                         PUSH_qimm   ; inline operand = 0
  $847F  8E F9 00                   PUSH_imm2              $00F9
  $8482  61                         PUSH_qimm   ; inline operand = 1
  $8483  8D 1C                      BYTE_PUSH_imm1         +28
  $8485  0D                         LOADL_quick   ; inline operand = 13
  $8486  79                         ADD_qimm   ; inline operand = 9
  $8487  B3                         PUSHL
  $8488  0C                         LOADL_quick   ; inline operand = 12
  $8489  D0                         INC
  $848A  B3                         PUSHL
  $848B  68                         PUSH_qimm   ; inline operand = 8
  $848C  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $8490  60                         PUSH_qimm   ; inline operand = 0
  $8491  8E F9 00                   PUSH_imm2              $00F9
  $8494  61                         PUSH_qimm   ; inline operand = 1
  $8495  8D 1C                      BYTE_PUSH_imm1         +28
  $8497  0D                         LOADL_quick   ; inline operand = 13
  $8498  7E                         ADD_qimm   ; inline operand = 14
  $8499  B3                         PUSHL
  $849A  0C                         LOADL_quick   ; inline operand = 12
  $849B  D0                         INC
  $849C  B3                         PUSHL
  $849D  68                         PUSH_qimm   ; inline operand = 8
  $849E  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $84A2  60                         PUSH_qimm   ; inline operand = 0
  $84A3  3E                         PUSH_quick   ; inline operand = 14
  $84A4  0D                         LOADL_quick   ; inline operand = 13
  $84A5  D0                         INC
  $84A6  B3                         PUSHL
  $84A7  0C                         LOADL_quick   ; inline operand = 12
  $84A8  72                         ADD_qimm   ; inline operand = 2
  $84A9  B3                         PUSHL
  $84AA  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $84AE  0D                         LOADL_quick   ; inline operand = 13
  $84AF  74                         ADD_qimm   ; inline operand = 4
  $84B0  B3                         PUSHL
  $84B1  0C                         LOADL_quick   ; inline operand = 12
  $84B2  78                         ADD_qimm   ; inline operand = 8
  $84B3  B3                         PUSHL
  $84B4  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $84B8  0E                         LOADL_quick   ; inline operand = 14
  $84B9  D7 EA 84                   JUMPT_abs              $84EA
  $84BC  A5 74 6F                   BYTE_LOADL_abs         $6F74
  $84BF  29                         STORE_quick   ; inline operand = 9
  $84C0  09                         LOADL_quick   ; inline operand = 9
  $84C1  D8 07 85                   JUMPF_abs              $8507
  $84C4  39                         PUSH_quick   ; inline operand = 9
  $84C5  0D                         LOADL_quick   ; inline operand = 13
  $84C6  D0                         INC
  $84C7  B3                         PUSHL
  $84C8  0C                         LOADL_quick   ; inline operand = 12
  $84C9  78                         ADD_qimm   ; inline operand = 8
  $84CA  B3                         PUSHL
  $84CB  E9 E1 83 06                CALL_abs_imm1          $83E1 {bytecode}, $06
  $84CF  09                         LOADL_quick   ; inline operand = 9
  $84D0  D2                         LSHIFT1
  $84D1  8C 56 BC                   LOADR_imm2             $BC56
  $84D4  BB                         ADD
  $84D5  B3                         PUSHL
  $84D6  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $84DA  B3                         PUSHL
  $84DB  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $84DF  60                         PUSH_qimm   ; inline operand = 0
  $84E0  8E 2B 8E                   PUSH_imm2              $8E2B
  $84E3  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $84E7  D6 07 85                   JUMP_abs               $8507
 >$84EA  3E                         PUSH_quick   ; inline operand = 14
  $84EB  E9 0E 84 02                CALL_abs_imm1          $840E {bytecode}, $02
  $84EF  D2                         LSHIFT1
  $84F0  8C 0C 8E                   LOADR_imm2             $8E0C
  $84F3  BB                         ADD
  $84F4  B0                         DEREF
  $84F5  B3                         PUSHL
  $84F6  8E 2D 8E                   PUSH_imm2              $8E2D
  $84F9  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $84FD  0D                         LOADL_quick   ; inline operand = 13
  $84FE  72                         ADD_qimm   ; inline operand = 2
  $84FF  B3                         PUSHL
  $8500  0C                         LOADL_quick   ; inline operand = 12
  $8501  78                         ADD_qimm   ; inline operand = 8
  $8502  B3                         PUSHL
  $8503  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
 >$8507  0B                         LOADL_quick   ; inline operand = 11
  $8508  B0                         DEREF
  $8509  B3                         PUSHL
  $850A  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $850E  0D                         LOADL_quick   ; inline operand = 13
  $850F  76                         ADD_qimm   ; inline operand = 6
  $8510  B3                         PUSHL
  $8511  0C                         LOADL_quick   ; inline operand = 12
  $8512  78                         ADD_qimm   ; inline operand = 8
  $8513  B3                         PUSHL
  $8514  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8518  60                         PUSH_qimm   ; inline operand = 0
  $8519  8E 30 8E                   PUSH_imm2              $8E30
  $851C  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8520  3E                         PUSH_quick   ; inline operand = 14
  $8521  E9 15 D6 02                CALL_abs_imm1          $D615 {native}, $02
  $8525  B3                         PUSHL
  $8526  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $852A  B3                         PUSHL
  $852B  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $852F  0D                         LOADL_quick   ; inline operand = 13
  $8530  76                         ADD_qimm   ; inline operand = 6
  $8531  B3                         PUSHL
  $8532  0C                         LOADL_quick   ; inline operand = 12
  $8533  8F 16                      BYTE_ADD_imm1          +22
  $8535  B3                         PUSHL
  $8536  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $853A  0A                         LOADL_quick   ; inline operand = 10
  $853B  D3                         BYTE_DEREF
  $853C  B3                         PUSHL
  $853D  8E 37 8E                   PUSH_imm2              $8E37
  $8540  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $8544  0E                         LOADL_quick   ; inline operand = 14
  $8545  D7 62 85                   JUMPT_abs              $8562
  $8548  0D                         LOADL_quick   ; inline operand = 13
  $8549  78                         ADD_qimm   ; inline operand = 8
  $854A  B3                         PUSHL
  $854B  0C                         LOADL_quick   ; inline operand = 12
  $854C  D0                         INC
  $854D  B3                         PUSHL
  $854E  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8552  AA 6B 66                   PUSH_abs               $666B
  $8555  AA 72 6F                   PUSH_abs               $6F72
  $8558  8E 40 8E                   PUSH_imm2              $8E40
  $855B  E9 19 C7 06                CALL_abs_imm1          $C719 {native}, $06
  $855F  D6 7C 85                   JUMP_abs               $857C
 >$8562  0D                         LOADL_quick   ; inline operand = 13
  $8563  78                         ADD_qimm   ; inline operand = 8
  $8564  B3                         PUSHL
  $8565  0C                         LOADL_quick   ; inline operand = 12
  $8566  78                         ADD_qimm   ; inline operand = 8
  $8567  B3                         PUSHL
  $8568  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $856C  0E                         LOADL_quick   ; inline operand = 14
  $856D  D1                         DEC
  $856E  D2                         LSHIFT1
  $856F  8C 6E 6A                   LOADR_imm2             $6A6E
  $8572  BB                         ADD
  $8573  D3                         BYTE_DEREF
  $8574  B3                         PUSHL
  $8575  8E 58 8E                   PUSH_imm2              $8E58
  $8578  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
 >$857C  0D                         LOADL_quick   ; inline operand = 13
  $857D  7B                         ADD_qimm   ; inline operand = 11
  $857E  B3                         PUSHL
  $857F  0C                         LOADL_quick   ; inline operand = 12
  $8580  D0                         INC
  $8581  B3                         PUSHL
  $8582  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8586  0B                         LOADL_quick   ; inline operand = 11
  $8587  72                         ADD_qimm   ; inline operand = 2
  $8588  D3                         BYTE_DEREF
  $8589  B3                         PUSHL
  $858A  0A                         LOADL_quick   ; inline operand = 10
  $858B  76                         ADD_qimm   ; inline operand = 6
  $858C  B0                         DEREF
  $858D  B3                         PUSHL
  $858E  8E 65 8E                   PUSH_imm2              $8E65
  $8591  E9 19 C7 06                CALL_abs_imm1          $C719 {native}, $06
  $8595  0D                         LOADL_quick   ; inline operand = 13
  $8596  7D                         ADD_qimm   ; inline operand = 13
  $8597  B3                         PUSHL
  $8598  0C                         LOADL_quick   ; inline operand = 12
  $8599  D0                         INC
  $859A  B3                         PUSHL
  $859B  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $859F  0B                         LOADL_quick   ; inline operand = 11
  $85A0  73                         ADD_qimm   ; inline operand = 3
  $85A1  D3                         BYTE_DEREF
  $85A2  B3                         PUSHL
  $85A3  0A                         LOADL_quick   ; inline operand = 10
  $85A4  78                         ADD_qimm   ; inline operand = 8
  $85A5  B0                         DEREF
  $85A6  B3                         PUSHL
  $85A7  8E 80 8E                   PUSH_imm2              $8E80
  $85AA  E9 19 C7 06                CALL_abs_imm1          $C719 {native}, $06
  $85AE  0D                         LOADL_quick   ; inline operand = 13
  $85AF  8F 10                      BYTE_ADD_imm1          +16
  $85B1  B3                         PUSHL
  $85B2  0C                         LOADL_quick   ; inline operand = 12
  $85B3  D0                         INC
  $85B4  B3                         PUSHL
  $85B5  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $85B9  0A                         LOADL_quick   ; inline operand = 10
  $85BA  72                         ADD_qimm   ; inline operand = 2
  $85BB  D3                         BYTE_DEREF
  $85BC  B3                         PUSHL
  $85BD  0A                         LOADL_quick   ; inline operand = 10
  $85BE  D0                         INC
  $85BF  D3                         BYTE_DEREF
  $85C0  B3                         PUSHL
  $85C1  8E 9B 8E                   PUSH_imm2              $8E9B
  $85C4  E9 19 C7 06                CALL_abs_imm1          $C719 {native}, $06
  $85C8  0D                         LOADL_quick   ; inline operand = 13
  $85C9  8F 11                      BYTE_ADD_imm1          +17
  $85CB  B3                         PUSHL
  $85CC  0C                         LOADL_quick   ; inline operand = 12
  $85CD  D0                         INC
  $85CE  B3                         PUSHL
  $85CF  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $85D3  0A                         LOADL_quick   ; inline operand = 10
  $85D4  74                         ADD_qimm   ; inline operand = 4
  $85D5  D3                         BYTE_DEREF
  $85D6  B3                         PUSHL
  $85D7  0A                         LOADL_quick   ; inline operand = 10
  $85D8  75                         ADD_qimm   ; inline operand = 5
  $85D9  D3                         BYTE_DEREF
  $85DA  B3                         PUSHL
  $85DB  8E B8 8E                   PUSH_imm2              $8EB8
  $85DE  E9 19 C7 06                CALL_abs_imm1          $C719 {native}, $06
  $85E2  0D                         LOADL_quick   ; inline operand = 13
  $85E3  8F 12                      BYTE_ADD_imm1          +18
  $85E5  B3                         PUSHL
  $85E6  0C                         LOADL_quick   ; inline operand = 12
  $85E7  D0                         INC
  $85E8  B3                         PUSHL
  $85E9  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $85ED  0A                         LOADL_quick   ; inline operand = 10
  $85EE  73                         ADD_qimm   ; inline operand = 3
  $85EF  D3                         BYTE_DEREF
  $85F0  B3                         PUSHL
  $85F1  8E D5 8E                   PUSH_imm2              $8ED5
  $85F4  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $85F8  AC 7B C4                   CALL_abs               $C47B {native}
  $85FB  AC 89 A5                   CALL_abs               $A589 {native}
  $85FE  CF                         RETURN

; ============================================================
; sub $85FF   (frame_off=+0, body @ $8604)   [PRG $3C5FF]
; ============================================================
  $8604  AC 75 A6                   CALL_abs               $A675 {native}
  $8607  40                         LOADL_qimm   ; inline operand = 0
  $8608  A9 7D 73                   BYTE_STORE_abs         $737D (ui_shared_var_737d)
  $860B  60                         PUSH_qimm   ; inline operand = 0
  $860C  60                         PUSH_qimm   ; inline operand = 0
  $860D  8D 12                      BYTE_PUSH_imm1         +18
  $860F  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $8613  AC 37 CE                   CALL_abs               $CE37 {native}
  $8616  8E E1 00                   PUSH_imm2              $00E1
  $8619  0C                         LOADL_quick   ; inline operand = 12
  $861A  D2                         LSHIFT1
  $861B  D2                         LSHIFT1
  $861C  8C E8 8E                   LOADR_imm2             $8EE8
  $861F  BB                         ADD
  $8620  B0                         DEREF
  $8621  B3                         PUSHL
  $8622  0C                         LOADL_quick   ; inline operand = 12
  $8623  D2                         LSHIFT1
  $8624  D2                         LSHIFT1
  $8625  8C E6 8E                   LOADR_imm2             $8EE6
  $8628  BB                         ADD
  $8629  B0                         DEREF
  $862A  B3                         PUSHL
  $862B  0C                         LOADL_quick   ; inline operand = 12
  $862C  D2                         LSHIFT1
  $862D  8C 5F 8F                   LOADR_imm2             $8F5F
  $8630  BB                         ADD
  $8631  D3                         BYTE_DEREF
  $8632  B3                         PUSHL
  $8633  0C                         LOADL_quick   ; inline operand = 12
  $8634  D2                         LSHIFT1
  $8635  8C 5E 8F                   LOADR_imm2             $8F5E
  $8638  BB                         ADD
  $8639  D3                         BYTE_DEREF
  $863A  B3                         PUSHL
  $863B  0C                         LOADL_quick   ; inline operand = 12
  $863C  D2                         LSHIFT1
  $863D  8C 6B 8F                   LOADR_imm2             $8F6B
  $8640  BB                         ADD
  $8641  D3                         BYTE_DEREF
  $8642  D1                         DEC
  $8643  B3                         PUSHL
  $8644  0C                         LOADL_quick   ; inline operand = 12
  $8645  D2                         LSHIFT1
  $8646  8C 6A 8F                   LOADR_imm2             $8F6A
  $8649  BB                         ADD
  $864A  D3                         BYTE_DEREF
  $864B  B3                         PUSHL
  $864C  69                         PUSH_qimm   ; inline operand = 9
  $864D  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8651  8E E7 00                   PUSH_imm2              $00E7
  $8654  8E 32 B9                   PUSH_imm2              $B932
  $8657  8E 2A B8                   PUSH_imm2              $B82A
  $865A  6B                         PUSH_qimm   ; inline operand = 11
  $865B  8D 18                      BYTE_PUSH_imm1         +24
  $865D  6E                         PUSH_qimm   ; inline operand = 14
  $865E  64                         PUSH_qimm   ; inline operand = 4
  $865F  69                         PUSH_qimm   ; inline operand = 9
  $8660  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8664  61                         PUSH_qimm   ; inline operand = 1
  $8665  8E 76 8F                   PUSH_imm2              $8F76
  $8668  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $866C  6F                         PUSH_qimm   ; inline operand = 15
  $866D  66                         PUSH_qimm   ; inline operand = 6
  $866E  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8672  8D 10                      BYTE_PUSH_imm1         +16
  $8674  60                         PUSH_qimm   ; inline operand = 0
  $8675  0C                         LOADL_quick   ; inline operand = 12
  $8676  54                         LOADR_qimm   ; inline operand = 4
  $8677  BD                         LSHIFT
  $8678  8C FE 8E                   LOADR_imm2             $8EFE
  $867B  BB                         ADD
  $867C  B3                         PUSHL
  $867D  66                         PUSH_qimm   ; inline operand = 6
  $867E  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8682  CF                         RETURN

; ============================================================
; sub $8683   (frame_off=-8, body @ $8688)   [PRG $3C683]
; ============================================================
  $8688  40                         LOADL_qimm   ; inline operand = 0
  $8689  28                         STORE_quick   ; inline operand = 8
 >$868A  08                         LOADL_quick   ; inline operand = 8
  $868B  8B 18                      BYTE_LOADR_imm1        +24
  $868D  B5                         MULT
  $868E  8C A4 6A                   LOADR_imm2             $6AA4
  $8691  BB                         ADD
  $8692  29                         STORE_quick   ; inline operand = 9
  $8693  09                         LOADL_quick   ; inline operand = 9
  $8694  D3                         BYTE_DEREF
  $8695  D8 A1 86                   JUMPF_abs              $86A1
  $8698  08                         LOADL_quick   ; inline operand = 8
  $8699  D0                         INC
  $869A  28                         STORE_quick   ; inline operand = 8
  $869B  08                         LOADL_quick   ; inline operand = 8
  $869C  55                         LOADR_qimm   ; inline operand = 5
  $869D  C6                         UCMPLT
  $869E  D7 8A 86                   JUMPT_abs              $868A
 >$86A1  38                         PUSH_quick   ; inline operand = 8
  $86A2  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $86A6  2A                         STORE_quick   ; inline operand = 10
  $86A7  0A                         LOADL_quick   ; inline operand = 10
  $86A8  8F 14                      BYTE_ADD_imm1          +20
  $86AA  D3                         BYTE_DEREF
  $86AB  55                         LOADR_qimm   ; inline operand = 5
  $86AC  BE                         URSHIFT
  $86AD  28                         STORE_quick   ; inline operand = 8
  $86AE  8A 86 F3                   LOADL_imm2             $F386
  $86B1  2B                         STORE_quick   ; inline operand = 11
  $86B2  08                         LOADL_quick   ; inline operand = 8
  $86B3  52                         LOADR_qimm   ; inline operand = 2
  $86B4  C8                         UCMPGT
  $86B5  D8 BC 86                   JUMPF_abs              $86BC
  $86B8  8A D6 F3                   LOADL_imm2             $F3D6
  $86BB  2B                         STORE_quick   ; inline operand = 11
 >$86BC  8D 14                      BYTE_PUSH_imm1         +20
  $86BE  61                         PUSH_qimm   ; inline operand = 1
  $86BF  3B                         PUSH_quick   ; inline operand = 11
  $86C0  6D                         PUSH_qimm   ; inline operand = 13
  $86C1  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $86C5  CF                         RETURN

; ============================================================
; sub $86C6   (frame_off=-8, body @ $86CB)   [PRG $3C6C6]
; ============================================================
  $86CB  0C                         LOADL_quick   ; inline operand = 12
  $86CC  55                         LOADR_qimm   ; inline operand = 5
  $86CD  B8                         UDIV
  $86CE  28                         STORE_quick   ; inline operand = 8
  $86CF  D8 DC 86                   JUMPF_abs              $86DC
  $86D2  8A F0 00                   LOADL_imm2             $00F0
  $86D5  2A                         STORE_quick   ; inline operand = 10
  $86D6  08                         LOADL_quick   ; inline operand = 8
  $86D7  8F 14                      BYTE_ADD_imm1          +20
  $86D9  D6 00 87                   JUMP_abs               $8700
 >$86DC  0C                         LOADL_quick   ; inline operand = 12
  $86DD  8B 18                      BYTE_LOADR_imm1        +24
  $86DF  B5                         MULT
  $86E0  8C A4 6A                   LOADR_imm2             $6AA4
  $86E3  BB                         ADD
  $86E4  D3                         BYTE_DEREF
  $86E5  28                         STORE_quick   ; inline operand = 8
  $86E6  08                         LOADL_quick   ; inline operand = 8
  $86E7  5A                         LOADR_qimm   ; inline operand = 10
  $86E8  B5                         MULT
  $86E9  8C BE 6B                   LOADR_imm2             $6BBE
  $86EC  BB                         ADD
  $86ED  2B                         STORE_quick   ; inline operand = 11
  $86EE  0B                         LOADL_quick   ; inline operand = 11
  $86EF  73                         ADD_qimm   ; inline operand = 3
  $86F0  D3                         BYTE_DEREF
  $86F1  B3                         PUSHL
  $86F2  0B                         LOADL_quick   ; inline operand = 11
  $86F3  D0                         INC
  $86F4  D3                         BYTE_DEREF
  $86F5  B3                         PUSHL
  $86F6  0B                         LOADL_quick   ; inline operand = 11
  $86F7  72                         ADD_qimm   ; inline operand = 2
  $86F8  D3                         BYTE_DEREF
  $86F9  D2                         LSHIFT1
  $86FA  B4                         POPR
  $86FB  BB                         ADD
  $86FC  B4                         POPR
  $86FD  BB                         ADD
  $86FE  2A                         STORE_quick   ; inline operand = 10
  $86FF  08                         LOADL_quick   ; inline operand = 8
 >$8700  57                         LOADR_qimm   ; inline operand = 7
  $8701  B5                         MULT
  $8702  8C 45 65                   LOADR_imm2             $6545
  $8705  BB                         ADD
  $8706  D3                         BYTE_DEREF
  $8707  29                         STORE_quick   ; inline operand = 9
  $8708  0A                         LOADL_quick   ; inline operand = 10
  $8709  19                         LOADR_quick   ; inline operand = 9
  $870A  B5                         MULT
  $870B  58                         LOADR_qimm   ; inline operand = 8
  $870C  B6                         SDIV
  $870D  1A                         LOADR_quick   ; inline operand = 10
  $870E  BB                         ADD
  $870F  58                         LOADR_qimm   ; inline operand = 8
  $8710  B6                         SDIV
  $8711  CF                         RETURN

; ============================================================
; sub $8712   (frame_off=-10, body @ $8717)   [PRG $3C712]
; ============================================================
  $8717  45                         LOADL_qimm   ; inline operand = 5
  $8718  CD                         SWAP
  $8719  0C                         LOADL_quick   ; inline operand = 12
  $871A  B5                         MULT
  $871B  2C                         STORE_quick   ; inline operand = 12
  $871C  0C                         LOADL_quick   ; inline operand = 12
  $871D  57                         LOADR_qimm   ; inline operand = 7
  $871E  B5                         MULT
  $871F  8C 90 6C                   LOADR_imm2             $6C90
  $8722  BB                         ADD
  $8723  28                         STORE_quick   ; inline operand = 8
  $8724  8F 23                      BYTE_ADD_imm1          +35
  $8726  27                         STORE_quick   ; inline operand = 7
  $8727  8A C8 00                   LOADL_imm2             $00C8
  $872A  2B                         STORE_quick   ; inline operand = 11
  $872B  40                         LOADL_qimm   ; inline operand = 0
  $872C  2A                         STORE_quick   ; inline operand = 10
  $872D  D6 6A 87                   JUMP_abs               $876A
 >$8730  08                         LOADL_quick   ; inline operand = 8
  $8731  76                         ADD_qimm   ; inline operand = 6
  $8732  D3                         BYTE_DEREF
  $8733  8B 40                      BYTE_LOADR_imm1        +64
  $8735  DA                         AND
  $8736  D8 64 87                   JUMPF_abs              $8764
  $8739  0A                         LOADL_quick   ; inline operand = 10
  $873A  D0                         INC
  $873B  2A                         STORE_quick   ; inline operand = 10
  $873C  8D 64                      BYTE_PUSH_imm1         +100
  $873E  08                         LOADL_quick   ; inline operand = 8
  $873F  D0                         INC
  $8740  D3                         BYTE_DEREF
  $8741  52                         LOADR_qimm   ; inline operand = 2
  $8742  B6                         SDIV
  $8743  B3                         PUSHL
  $8744  3C                         PUSH_quick   ; inline operand = 12
  $8745  E9 C6 86 02                CALL_abs_imm1          $86C6 {bytecode}, $02
  $8749  B3                         PUSHL
  $874A  08                         LOADL_quick   ; inline operand = 8
  $874B  D0                         INC
  $874C  D3                         BYTE_DEREF
  $874D  52                         LOADR_qimm   ; inline operand = 2
  $874E  B6                         SDIV
  $874F  B4                         POPR
  $8750  B5                         MULT
  $8751  8B 64                      BYTE_LOADR_imm1        +100
  $8753  B6                         SDIV
  $8754  B4                         POPR
  $8755  BB                         ADD
  $8756  B3                         PUSHL
  $8757  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $875B  29                         STORE_quick   ; inline operand = 9
  $875C  0B                         LOADL_quick   ; inline operand = 11
  $875D  19                         LOADR_quick   ; inline operand = 9
  $875E  C8                         UCMPGT
  $875F  D8 64 87                   JUMPF_abs              $8764
  $8762  09                         LOADL_quick   ; inline operand = 9
  $8763  2B                         STORE_quick   ; inline operand = 11
 >$8764  0C                         LOADL_quick   ; inline operand = 12
  $8765  D0                         INC
  $8766  2C                         STORE_quick   ; inline operand = 12
  $8767  08                         LOADL_quick   ; inline operand = 8
  $8768  77                         ADD_qimm   ; inline operand = 7
  $8769  28                         STORE_quick   ; inline operand = 8
 >$876A  08                         LOADL_quick   ; inline operand = 8
  $876B  17                         LOADR_quick   ; inline operand = 7
  $876C  C6                         UCMPLT
  $876D  D7 30 87                   JUMPT_abs              $8730
  $8770  0A                         LOADL_quick   ; inline operand = 10
  $8771  D7 76 87                   JUMPT_abs              $8776
  $8774  40                         LOADL_qimm   ; inline operand = 0
  $8775  CF                         RETURN
 >$8776  0B                         LOADL_quick   ; inline operand = 11
  $8777  CF                         RETURN

; ============================================================
; sub $8778   (frame_off=-12, body @ $877D)   [PRG $3C778]
; ============================================================
  $877D  45                         LOADL_qimm   ; inline operand = 5
  $877E  CD                         SWAP
  $877F  0C                         LOADL_quick   ; inline operand = 12
  $8780  B5                         MULT
  $8781  2C                         STORE_quick   ; inline operand = 12
  $8782  0C                         LOADL_quick   ; inline operand = 12
  $8783  57                         LOADR_qimm   ; inline operand = 7
  $8784  B5                         MULT
  $8785  8C 90 6C                   LOADR_imm2             $6C90
  $8788  BB                         ADD
  $8789  27                         STORE_quick   ; inline operand = 7
  $878A  8F 23                      BYTE_ADD_imm1          +35
  $878C  26                         STORE_quick   ; inline operand = 6
  $878D  8A C8 00                   LOADL_imm2             $00C8
  $8790  2B                         STORE_quick   ; inline operand = 11
  $8791  40                         LOADL_qimm   ; inline operand = 0
  $8792  2A                         STORE_quick   ; inline operand = 10
  $8793  D6 D0 87                   JUMP_abs               $87D0
 >$8796  07                         LOADL_quick   ; inline operand = 7
  $8797  76                         ADD_qimm   ; inline operand = 6
  $8798  D3                         BYTE_DEREF
  $8799  8B 40                      BYTE_LOADR_imm1        +64
  $879B  DA                         AND
  $879C  D8 CA 87                   JUMPF_abs              $87CA
  $879F  0A                         LOADL_quick   ; inline operand = 10
  $87A0  D0                         INC
  $87A1  2A                         STORE_quick   ; inline operand = 10
  $87A2  8D 64                      BYTE_PUSH_imm1         +100
  $87A4  07                         LOADL_quick   ; inline operand = 7
  $87A5  72                         ADD_qimm   ; inline operand = 2
  $87A6  D3                         BYTE_DEREF
  $87A7  52                         LOADR_qimm   ; inline operand = 2
  $87A8  B6                         SDIV
  $87A9  B3                         PUSHL
  $87AA  3C                         PUSH_quick   ; inline operand = 12
  $87AB  E9 C6 86 02                CALL_abs_imm1          $86C6 {bytecode}, $02
  $87AF  B3                         PUSHL
  $87B0  07                         LOADL_quick   ; inline operand = 7
  $87B1  72                         ADD_qimm   ; inline operand = 2
  $87B2  D3                         BYTE_DEREF
  $87B3  52                         LOADR_qimm   ; inline operand = 2
  $87B4  B6                         SDIV
  $87B5  B4                         POPR
  $87B6  B5                         MULT
  $87B7  8B 64                      BYTE_LOADR_imm1        +100
  $87B9  B6                         SDIV
  $87BA  B4                         POPR
  $87BB  BB                         ADD
  $87BC  B3                         PUSHL
  $87BD  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $87C1  28                         STORE_quick   ; inline operand = 8
  $87C2  0B                         LOADL_quick   ; inline operand = 11
  $87C3  18                         LOADR_quick   ; inline operand = 8
  $87C4  C8                         UCMPGT
  $87C5  D8 CA 87                   JUMPF_abs              $87CA
  $87C8  08                         LOADL_quick   ; inline operand = 8
  $87C9  2B                         STORE_quick   ; inline operand = 11
 >$87CA  0C                         LOADL_quick   ; inline operand = 12
  $87CB  D0                         INC
  $87CC  2C                         STORE_quick   ; inline operand = 12
  $87CD  07                         LOADL_quick   ; inline operand = 7
  $87CE  77                         ADD_qimm   ; inline operand = 7
  $87CF  27                         STORE_quick   ; inline operand = 7
 >$87D0  07                         LOADL_quick   ; inline operand = 7
  $87D1  16                         LOADR_quick   ; inline operand = 6
  $87D2  C6                         UCMPLT
  $87D3  D7 96 87                   JUMPT_abs              $8796
  $87D6  0A                         LOADL_quick   ; inline operand = 10
  $87D7  D7 DC 87                   JUMPT_abs              $87DC
  $87DA  40                         LOADL_qimm   ; inline operand = 0
  $87DB  CF                         RETURN
 >$87DC  0B                         LOADL_quick   ; inline operand = 11
  $87DD  CF                         RETURN

; ============================================================
; sub $87DE   (frame_off=-2, body @ $87E3)   [PRG $3C7DE]
; ============================================================
  $87E3  0C                         LOADL_quick   ; inline operand = 12
  $87E4  54                         LOADR_qimm   ; inline operand = 4
  $87E5  BD                         LSHIFT
  $87E6  8C 62 66                   LOADR_imm2             $6662
  $87E9  BB                         ADD
  $87EA  2B                         STORE_quick   ; inline operand = 11
  $87EB  0B                         LOADL_quick   ; inline operand = 11
  $87EC  7F                         ADD_qimm   ; inline operand = 15
  $87ED  D3                         BYTE_DEREF
  $87EE  51                         LOADR_qimm   ; inline operand = 1
  $87EF  DA                         AND
  $87F0  B3                         PUSHL
  $87F1  A5 81 70                   BYTE_LOADL_abs         $7081
  $87F4  B3                         PUSHL
  $87F5  3C                         PUSH_quick   ; inline operand = 12
  $87F6  E9 12 87 02                CALL_abs_imm1          $8712 {bytecode}, $02
  $87FA  B3                         PUSHL
  $87FB  0B                         LOADL_quick   ; inline operand = 11
  $87FC  78                         ADD_qimm   ; inline operand = 8
  $87FD  D3                         BYTE_DEREF
  $87FE  B3                         PUSHL
  $87FF  A5 80 70                   BYTE_LOADL_abs         $7080
  $8802  B3                         PUSHL
  $8803  E9 03 D0 04                CALL_abs_imm1          $D003 (calc_axis_diff_fold) {native}, $04
  $8807  D0                         INC
  $8808  51                         LOADR_qimm   ; inline operand = 1
  $8809  BE                         URSHIFT
  $880A  D2                         LSHIFT1
  $880B  B4                         POPR
  $880C  B5                         MULT
  $880D  B4                         POPR
  $880E  B5                         MULT
  $880F  B3                         PUSHL
  $8810  A5 81 70                   BYTE_LOADL_abs         $7081
  $8813  8C 90 01                   LOADR_imm2             $0190
  $8816  B5                         MULT
  $8817  B4                         POPR
  $8818  BC                         SUB
  $8819  8C C2 01                   LOADR_imm2             $01C2
  $881C  B6                         SDIV
  $881D  B4                         POPR
  $881E  B5                         MULT
  $881F  CF                         RETURN

; ============================================================
; sub $8820   (frame_off=-8, body @ $8825)   [PRG $3C820]
; ============================================================
  $8825  0C                         LOADL_quick   ; inline operand = 12
  $8826  54                         LOADR_qimm   ; inline operand = 4
  $8827  BD                         LSHIFT
  $8828  8C 62 66                   LOADR_imm2             $6662
  $882B  BB                         ADD
  $882C  2B                         STORE_quick   ; inline operand = 11
  $882D  0B                         LOADL_quick   ; inline operand = 11
  $882E  78                         ADD_qimm   ; inline operand = 8
  $882F  D3                         BYTE_DEREF
  $8830  B3                         PUSHL
  $8831  A5 80 70                   BYTE_LOADL_abs         $7080
  $8834  B3                         PUSHL
  $8835  E9 03 D0 04                CALL_abs_imm1          $D003 (calc_axis_diff_fold) {native}, $04
  $8839  29                         STORE_quick   ; inline operand = 9
  $883A  0C                         LOADL_quick   ; inline operand = 12
  $883B  54                         LOADR_qimm   ; inline operand = 4
  $883C  BD                         LSHIFT
  $883D  8C 71 66                   LOADR_imm2             $6671
  $8840  BB                         ADD
  $8841  D3                         BYTE_DEREF
  $8842  51                         LOADR_qimm   ; inline operand = 1
  $8843  DA                         AND
  $8844  B3                         PUSHL
  $8845  A5 81 70                   BYTE_LOADL_abs         $7081
  $8848  B3                         PUSHL
  $8849  3C                         PUSH_quick   ; inline operand = 12
  $884A  E9 78 87 02                CALL_abs_imm1          $8778 {bytecode}, $02
  $884E  B4                         POPR
  $884F  B5                         MULT
  $8850  8B 1A                      BYTE_LOADR_imm1        +26
  $8852  B6                         SDIV
  $8853  B4                         POPR
  $8854  B5                         MULT
  $8855  2A                         STORE_quick   ; inline operand = 10
  $8856  09                         LOADL_quick   ; inline operand = 9
  $8857  52                         LOADR_qimm   ; inline operand = 2
  $8858  C4                         SCMPGT
  $8859  D8 64 88                   JUMPF_abs              $8864
  $885C  43                         LOADL_qimm   ; inline operand = 3
  $885D  19                         LOADR_quick   ; inline operand = 9
  $885E  BC                         SUB
  $885F  51                         LOADR_qimm   ; inline operand = 1
  $8860  DC                         XOR
  $8861  D6 65 88                   JUMP_abs               $8865
 >$8864  09                         LOADL_quick   ; inline operand = 9
 >$8865  D0                         INC
  $8866  28                         STORE_quick   ; inline operand = 8
  $8867  09                         LOADL_quick   ; inline operand = 9
  $8868  8F FE                      BYTE_ADD_imm1          -2
  $886A  CB                         MINUS
  $886B  B3                         PUSHL
  $886C  E9 56 DC 02                CALL_abs_imm1          $DC56 {native}, $02
  $8870  B3                         PUSHL
  $8871  3C                         PUSH_quick   ; inline operand = 12
  $8872  E9 DE 87 02                CALL_abs_imm1          $87DE {bytecode}, $02
  $8876  18                         LOADR_quick   ; inline operand = 8
  $8877  B6                         SDIV
  $8878  B4                         POPR
  $8879  B5                         MULT
  $887A  CD                         SWAP
  $887B  0A                         LOADL_quick   ; inline operand = 10
  $887C  BB                         ADD
  $887D  2A                         STORE_quick   ; inline operand = 10
  $887E  0B                         LOADL_quick   ; inline operand = 11
  $887F  78                         ADD_qimm   ; inline operand = 8
  $8880  D3                         BYTE_DEREF
  $8881  B3                         PUSHL
  $8882  A5 84 70                   BYTE_LOADL_abs         $7084
  $8885  56                         LOADR_qimm   ; inline operand = 6
  $8886  BE                         URSHIFT
  $8887  57                         LOADR_qimm   ; inline operand = 7
  $8888  DA                         AND
  $8889  B3                         PUSHL
  $888A  E9 03 D0 04                CALL_abs_imm1          $D003 (calc_axis_diff_fold) {native}, $04
  $888E  29                         STORE_quick   ; inline operand = 9
  $888F  09                         LOADL_quick   ; inline operand = 9
  $8890  52                         LOADR_qimm   ; inline operand = 2
  $8891  C4                         SCMPGT
  $8892  D8 9D 88                   JUMPF_abs              $889D
  $8895  43                         LOADL_qimm   ; inline operand = 3
  $8896  19                         LOADR_quick   ; inline operand = 9
  $8897  BC                         SUB
  $8898  51                         LOADR_qimm   ; inline operand = 1
  $8899  DC                         XOR
  $889A  D6 9E 88                   JUMP_abs               $889E
 >$889D  09                         LOADL_quick   ; inline operand = 9
 >$889E  D0                         INC
  $889F  28                         STORE_quick   ; inline operand = 8
  $88A0  09                         LOADL_quick   ; inline operand = 9
  $88A1  8F FE                      BYTE_ADD_imm1          -2
  $88A3  CB                         MINUS
  $88A4  B3                         PUSHL
  $88A5  E9 56 DC 02                CALL_abs_imm1          $DC56 {native}, $02
  $88A9  B3                         PUSHL
  $88AA  0C                         LOADL_quick   ; inline operand = 12
  $88AB  54                         LOADR_qimm   ; inline operand = 4
  $88AC  BD                         LSHIFT
  $88AD  8C 71 66                   LOADR_imm2             $6671
  $88B0  BB                         ADD
  $88B1  D3                         BYTE_DEREF
  $88B2  51                         LOADR_qimm   ; inline operand = 1
  $88B3  DA                         AND
  $88B4  B3                         PUSHL
  $88B5  A5 84 70                   BYTE_LOADL_abs         $7084
  $88B8  53                         LOADR_qimm   ; inline operand = 3
  $88B9  BE                         URSHIFT
  $88BA  53                         LOADR_qimm   ; inline operand = 3
  $88BB  DA                         AND
  $88BC  B4                         POPR
  $88BD  B5                         MULT
  $88BE  18                         LOADR_quick   ; inline operand = 8
  $88BF  B6                         SDIV
  $88C0  B4                         POPR
  $88C1  B5                         MULT
  $88C2  CD                         SWAP
  $88C3  0A                         LOADL_quick   ; inline operand = 10
  $88C4  BB                         ADD
  $88C5  2A                         STORE_quick   ; inline operand = 10
  $88C6  0A                         LOADL_quick   ; inline operand = 10
  $88C7  50                         LOADR_qimm   ; inline operand = 0
  $88C8  C2                         SCMPLT
  $88C9  D8 D0 88                   JUMPF_abs              $88D0
  $88CC  40                         LOADL_qimm   ; inline operand = 0
  $88CD  D6 D1 88                   JUMP_abs               $88D1
 >$88D0  0A                         LOADL_quick   ; inline operand = 10
 >$88D1  2A                         STORE_quick   ; inline operand = 10
  $88D2  0A                         LOADL_quick   ; inline operand = 10
  $88D3  CF                         RETURN

; ============================================================
; sub $88D4   (frame_off=+0, body @ $88D9)   [PRG $3C8D4]
; ============================================================
  $88D9  0C                         LOADL_quick   ; inline operand = 12
  $88DA  90 DC 05                   ADD_imm2               $05DC
  $88DD  B3                         PUSHL
  $88DE  0E                         LOADL_quick   ; inline operand = 14
  $88DF  D0                         INC
  $88E0  B3                         PUSHL
  $88E1  0D                         LOADL_quick   ; inline operand = 13
  $88E2  D2                         LSHIFT1
  $88E3  8C 92 8F                   LOADR_imm2             $8F92
  $88E6  BB                         ADD
  $88E7  B0                         DEREF
  $88E8  B3                         PUSHL
  $88E9  8E DA 8F                   PUSH_imm2              $8FDA
  $88EC  E9 99 C7 08                CALL_abs_imm1          $C799 {native}, $08
  $88F0  CF                         RETURN

; ============================================================
; sub $88F1   (frame_off=+0, body @ $88F6)   [PRG $3C8F1]
; ============================================================
  $88F6  60                         PUSH_qimm   ; inline operand = 0
  $88F7  E9 C1 E0 02                CALL_abs_imm1          $E0C1 {native}, $02
 >$88FB  AC EA E0                   CALL_abs               $E0EA {native}
  $88FE  D7 FB 88                   JUMPT_abs              $88FB
  $8901  AC 75 A6                   CALL_abs               $A675 {native}
  $8904  AC 37 CE                   CALL_abs               $CE37 {native}
  $8907  8D 3C                      BYTE_PUSH_imm1         +60
  $8909  8D 11                      BYTE_PUSH_imm1         +17
  $890B  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $890F  8E E2 00                   PUSH_imm2              $00E2
  $8912  8E B0 A0                   PUSH_imm2              $A0B0
  $8915  8E 74 A0                   PUSH_imm2              $A074
  $8918  66                         PUSH_qimm   ; inline operand = 6
  $8919  6A                         PUSH_qimm   ; inline operand = 10
  $891A  67                         PUSH_qimm   ; inline operand = 7
  $891B  6B                         PUSH_qimm   ; inline operand = 11
  $891C  69                         PUSH_qimm   ; inline operand = 9
  $891D  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8921  8E E2 00                   PUSH_imm2              $00E2
  $8924  8E 72 A8                   PUSH_imm2              $A872
  $8927  8E 3C A8                   PUSH_imm2              $A83C
  $892A  63                         PUSH_qimm   ; inline operand = 3
  $892B  8D 12                      BYTE_PUSH_imm1         +18
  $892D  6F                         PUSH_qimm   ; inline operand = 15
  $892E  67                         PUSH_qimm   ; inline operand = 7
  $892F  69                         PUSH_qimm   ; inline operand = 9
  $8930  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8934  8D 10                      BYTE_PUSH_imm1         +16
  $8936  60                         PUSH_qimm   ; inline operand = 0
  $8937  8E 82 8F                   PUSH_imm2              $8F82
  $893A  66                         PUSH_qimm   ; inline operand = 6
  $893B  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
 >$893F  D6 3F 89                   JUMP_abs               $893F

; ============================================================
; sub $8942   (frame_off=-8, body @ $8947)   [PRG $3C942]
; ============================================================
  $8947  61                         PUSH_qimm   ; inline operand = 1
  $8948  60                         PUSH_qimm   ; inline operand = 0
  $8949  63                         PUSH_qimm   ; inline operand = 3
  $894A  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $894E  A5 60 70                   BYTE_LOADL_abs         $7060
  $8951  8B 4B                      BYTE_LOADR_imm1        +75
  $8953  C0                         CMPEQ
  $8954  D8 7C 89                   JUMPF_abs              $897C
  $8957  A5 8B 6B                   BYTE_LOADL_abs         $6B8B
  $895A  2B                         STORE_quick   ; inline operand = 11
  $895B  A5 8A 6B                   BYTE_LOADL_abs         $6B8A
  $895E  2A                         STORE_quick   ; inline operand = 10
  $895F  A5 89 6B                   BYTE_LOADL_abs         $6B89
  $8962  29                         STORE_quick   ; inline operand = 9
  $8963  65                         PUSH_qimm   ; inline operand = 5
  $8964  60                         PUSH_qimm   ; inline operand = 0
  $8965  63                         PUSH_qimm   ; inline operand = 3
  $8966  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $896A  61                         PUSH_qimm   ; inline operand = 1
  $896B  8E E6 8F                   PUSH_imm2              $8FE6
  $896E  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8972  39                         PUSH_quick   ; inline operand = 9
  $8973  3A                         PUSH_quick   ; inline operand = 10
  $8974  3B                         PUSH_quick   ; inline operand = 11
  $8975  E9 D4 88 06                CALL_abs_imm1          $88D4 {bytecode}, $06
  $8979  D6 83 89                   JUMP_abs               $8983
 >$897C  65                         PUSH_qimm   ; inline operand = 5
  $897D  60                         PUSH_qimm   ; inline operand = 0
  $897E  63                         PUSH_qimm   ; inline operand = 3
  $897F  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
 >$8983  61                         PUSH_qimm   ; inline operand = 1
  $8984  8E F8 8F                   PUSH_imm2              $8FF8
  $8987  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $898B  AC 9F CD                   CALL_abs               $CD9F {native}
  $898E  D8 C0 89                   JUMPF_abs              $89C0
  $8991  89 4B                      BYTE_LOADL_imm1        +75
  $8993  A9 60 70                   BYTE_STORE_abs         $7060
  $8996  8E 61 10                   PUSH_imm2              $1061
  $8999  8E 00 80                   PUSH_imm2              $8000
  $899C  8E 00 60                   PUSH_imm2              $6000
  $899F  61                         PUSH_qimm   ; inline operand = 1
  $89A0  61                         PUSH_qimm   ; inline operand = 1
  $89A1  E9 EC DC 0A                CALL_abs_imm1          $DCEC (copy_from_bank) {native}, $0A
  $89A5  40                         LOADL_qimm   ; inline operand = 0
  $89A6  A9 60 70                   BYTE_STORE_abs         $7060
  $89A9  A5 68 70                   BYTE_LOADL_abs         $7068
  $89AC  D7 B5 89                   JUMPT_abs              $89B5
  $89AF  AC 4B B2                   CALL_abs               $B24B {native}
  $89B2  D6 B8 89                   JUMP_abs               $89B8
 >$89B5  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
 >$89B8  61                         PUSH_qimm   ; inline operand = 1
  $89B9  8E 02 90                   PUSH_imm2              $9002
  $89BC  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
 >$89C0  A5 68 70                   BYTE_LOADL_abs         $7068
  $89C3  D7 CC 89                   JUMPT_abs              $89CC
  $89C6  AC 4B B2                   CALL_abs               $B24B {native}
  $89C9  D6 CF 89                   JUMP_abs               $89CF
 >$89CC  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
 >$89CF  61                         PUSH_qimm   ; inline operand = 1
  $89D0  8E 12 90                   PUSH_imm2              $9012
  $89D3  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $89D7  AC 9F CD                   CALL_abs               $CD9F {native}
  $89DA  D8 F1 89                   JUMPF_abs              $89F1
  $89DD  61                         PUSH_qimm   ; inline operand = 1
  $89DE  8E 1C 90                   PUSH_imm2              $901C
  $89E1  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $89E5  AC 9F CD                   CALL_abs               $CD9F {native}
  $89E8  D8 F1 89                   JUMPF_abs              $89F1
  $89EB  AC D6 E0                   CALL_abs               $E0D6 {native}
  $89EE  AC F1 88                   CALL_abs               $88F1 {bytecode}
 >$89F1  40                         LOADL_qimm   ; inline operand = 0
  $89F2  CF                         RETURN

; ============================================================
; sub $89F3   (frame_off=-2, body @ $89F8)   [PRG $3C9F3]
; ============================================================
  $89F8  A5 88 6B                   BYTE_LOADL_abs         $6B88
  $89FB  B3                         PUSHL
  $89FC  8E 2A 90                   PUSH_imm2              $902A
  $89FF  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8A03  61                         PUSH_qimm   ; inline operand = 1
  $8A04  6A                         PUSH_qimm   ; inline operand = 10
  $8A05  61                         PUSH_qimm   ; inline operand = 1
  $8A06  8E 49 90                   PUSH_imm2              $9049
  $8A09  E9 F3 CC 08                CALL_abs_imm1          $CCF3 {native}, $08
  $8A0D  2B                         STORE_quick   ; inline operand = 11
  $8A0E  0B                         LOADL_quick   ; inline operand = 11
  $8A0F  8B FF                      BYTE_LOADR_imm1        -1
  $8A11  C1                         CMPNE
  $8A12  D8 19 8A                   JUMPF_abs              $8A19
  $8A15  0B                         LOADL_quick   ; inline operand = 11
  $8A16  A9 88 6B                   BYTE_STORE_abs         $6B88
 >$8A19  40                         LOADL_qimm   ; inline operand = 0
  $8A1A  CF                         RETURN

; ============================================================
; sub $8A1B   (frame_off=-2, body @ $8A20)   [PRG $3CA1B]
; ============================================================
  $8A20  A5 68 70                   BYTE_LOADL_abs         $7068
  $8A23  D7 32 8A                   JUMPT_abs              $8A32
  $8A26  A5 7C 73                   BYTE_LOADL_abs         $737C
  $8A29  B3                         PUSHL
  $8A2A  E9 CD AF 02                CALL_abs_imm1          $AFCD {native}, $02
  $8A2E  B3                         PUSHL
  $8A2F  D6 52 8A                   JUMP_abs               $8A52
 >$8A32  A5 63 66                   BYTE_LOADL_abs         $6663
  $8A35  2B                         STORE_quick   ; inline operand = 11
  $8A36  A5 67 70                   BYTE_LOADL_abs         $7067
  $8A39  D7 40 8A                   JUMPT_abs              $8A40
  $8A3C  66                         PUSH_qimm   ; inline operand = 6
  $8A3D  D6 52 8A                   JUMP_abs               $8A52
 >$8A40  0B                         LOADL_quick   ; inline operand = 11
  $8A41  5B                         LOADR_qimm   ; inline operand = 11
  $8A42  C8                         UCMPGT
  $8A43  D8 51 8A                   JUMPF_abs              $8A51
  $8A46  0B                         LOADL_quick   ; inline operand = 11
  $8A47  8B 1F                      BYTE_LOADR_imm1        +31
  $8A49  C6                         UCMPLT
  $8A4A  D8 51 8A                   JUMPF_abs              $8A51
  $8A4D  68                         PUSH_qimm   ; inline operand = 8
  $8A4E  D6 52 8A                   JUMP_abs               $8A52
 >$8A51  67                         PUSH_qimm   ; inline operand = 7
 >$8A52  E9 8C E0 02                CALL_abs_imm1          $E08C {native}, $02
  $8A56  61                         PUSH_qimm   ; inline operand = 1
  $8A57  E9 C1 E0 02                CALL_abs_imm1          $E0C1 {native}, $02
  $8A5B  CF                         RETURN

; ============================================================
; sub $8A5C   (frame_off=-4, body @ $8A61)   [PRG $3CA5C]
; ============================================================
  $8A61  A5 87 6B                   BYTE_LOADL_abs         $6B87 (os_mode_flags)
  $8A64  54                         LOADR_qimm   ; inline operand = 4
  $8A65  DA                         AND
  $8A66  2B                         STORE_quick   ; inline operand = 11
  $8A67  0B                         LOADL_quick   ; inline operand = 11
  $8A68  D8 71 8A                   JUMPF_abs              $8A71
  $8A6B  8A 5D 90                   LOADL_imm2             $905D
  $8A6E  D6 74 8A                   JUMP_abs               $8A74
 >$8A71  8A 60 90                   LOADL_imm2             $9060
 >$8A74  B3                         PUSHL
  $8A75  8E 4A 90                   PUSH_imm2              $904A
  $8A78  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8A7C  61                         PUSH_qimm   ; inline operand = 1
  $8A7D  0B                         LOADL_quick   ; inline operand = 11
  $8A7E  D8 87 8A                   JUMPF_abs              $8A87
  $8A81  8A 64 90                   LOADL_imm2             $9064
  $8A84  D6 8A 8A                   JUMP_abs               $8A8A
 >$8A87  8A 68 90                   LOADL_imm2             $9068
 >$8A8A  B3                         PUSHL
  $8A8B  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8A8F  AC 9F CD                   CALL_abs               $CD9F {native}
  $8A92  2A                         STORE_quick   ; inline operand = 10
  $8A93  0A                         LOADL_quick   ; inline operand = 10
  $8A94  D8 CC 8A                   JUMPF_abs              $8ACC
  $8A97  0B                         LOADL_quick   ; inline operand = 11
  $8A98  D7 B3 8A                   JUMPT_abs              $8AB3
  $8A9B  44                         LOADL_qimm   ; inline operand = 4
  $8A9C  CD                         SWAP
  $8A9D  A5 87 6B                   BYTE_LOADL_abs         $6B87 (os_mode_flags)
  $8AA0  DB                         OR
  $8AA1  A9 87 6B                   BYTE_STORE_abs         $6B87 (os_mode_flags)
  $8AA4  48                         LOADL_qimm   ; inline operand = 8
  $8AA5  CD                         SWAP
  $8AA6  A5 87 6B                   BYTE_LOADL_abs         $6B87 (os_mode_flags)
  $8AA9  DB                         OR
  $8AAA  A9 87 6B                   BYTE_STORE_abs         $6B87 (os_mode_flags)
  $8AAD  AC 1B 8A                   CALL_abs               $8A1B {bytecode}
  $8AB0  D6 CC 8A                   JUMP_abs               $8ACC
 >$8AB3  AC D6 E0                   CALL_abs               $E0D6 {native}
  $8AB6  8A FB 00                   LOADL_imm2             $00FB
  $8AB9  CD                         SWAP
  $8ABA  A5 87 6B                   BYTE_LOADL_abs         $6B87 (os_mode_flags)
  $8ABD  DA                         AND
  $8ABE  A9 87 6B                   BYTE_STORE_abs         $6B87 (os_mode_flags)
  $8AC1  8A F7 00                   LOADL_imm2             $00F7
  $8AC4  CD                         SWAP
  $8AC5  A5 87 6B                   BYTE_LOADL_abs         $6B87 (os_mode_flags)
  $8AC8  DA                         AND
  $8AC9  A9 87 6B                   BYTE_STORE_abs         $6B87 (os_mode_flags)
 >$8ACC  40                         LOADL_qimm   ; inline operand = 0
  $8ACD  CF                         RETURN

; ============================================================
; sub $8ACE   (frame_off=-12, body @ $8AD3)   [PRG $3CACE]
; ============================================================
  $8AD3  4B                         LOADL_qimm   ; inline operand = 11
  $8AD4  27                         STORE_quick   ; inline operand = 7
  $8AD5  A5 68 70                   BYTE_LOADL_abs         $7068
  $8AD8  D7 EC 8A                   JUMPT_abs              $8AEC
  $8ADB  A5 64 66                   BYTE_LOADL_abs         $6664
  $8ADE  57                         LOADR_qimm   ; inline operand = 7
  $8ADF  C6                         UCMPLT
  $8AE0  D8 E8 8A                   JUMPF_abs              $8AE8
  $8AE3  89 16                      BYTE_LOADL_imm1        +22
  $8AE5  D6 EE 8A                   JUMP_abs               $8AEE
 >$8AE8  42                         LOADL_qimm   ; inline operand = 2
  $8AE9  D6 EE 8A                   JUMP_abs               $8AEE
 >$8AEC  89 12                      BYTE_LOADL_imm1        +18
 >$8AEE  28                         STORE_quick   ; inline operand = 8
  $8AEF  68                         PUSH_qimm   ; inline operand = 8
  $8AF0  68                         PUSH_qimm   ; inline operand = 8
  $8AF1  37                         PUSH_quick   ; inline operand = 7
  $8AF2  38                         PUSH_quick   ; inline operand = 8
  $8AF3  E9 02 A5 08                CALL_abs_imm1          $A502 {native}, $08
  $8AF7  8E E8 00                   PUSH_imm2              $00E8
  $8AFA  8E 6A B1                   PUSH_imm2              $B16A
  $8AFD  8E 2A B1                   PUSH_imm2              $B12A
  $8B00  68                         PUSH_qimm   ; inline operand = 8
  $8B01  68                         PUSH_qimm   ; inline operand = 8
  $8B02  37                         PUSH_quick   ; inline operand = 7
  $8B03  38                         PUSH_quick   ; inline operand = 8
  $8B04  69                         PUSH_qimm   ; inline operand = 9
  $8B05  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8B09  08                         LOADL_quick   ; inline operand = 8
  $8B0A  72                         ADD_qimm   ; inline operand = 2
  $8B0B  2A                         STORE_quick   ; inline operand = 10
  $8B0C  07                         LOADL_quick   ; inline operand = 7
  $8B0D  D0                         INC
  $8B0E  29                         STORE_quick   ; inline operand = 9
  $8B0F  40                         LOADL_qimm   ; inline operand = 0
  $8B10  2B                         STORE_quick   ; inline operand = 11
 >$8B11  39                         PUSH_quick   ; inline operand = 9
  $8B12  3A                         PUSH_quick   ; inline operand = 10
  $8B13  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8B17  61                         PUSH_qimm   ; inline operand = 1
  $8B18  0B                         LOADL_quick   ; inline operand = 11
  $8B19  D2                         LSHIFT1
  $8B1A  8C 6B 90                   LOADR_imm2             $906B
  $8B1D  BB                         ADD
  $8B1E  B0                         DEREF
  $8B1F  B3                         PUSHL
  $8B20  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8B24  42                         LOADL_qimm   ; inline operand = 2
  $8B25  CD                         SWAP
  $8B26  09                         LOADL_quick   ; inline operand = 9
  $8B27  BB                         ADD
  $8B28  29                         STORE_quick   ; inline operand = 9
  $8B29  0B                         LOADL_quick   ; inline operand = 11
  $8B2A  D0                         INC
  $8B2B  2B                         STORE_quick   ; inline operand = 11
  $8B2C  0B                         LOADL_quick   ; inline operand = 11
  $8B2D  53                         LOADR_qimm   ; inline operand = 3
  $8B2E  C6                         UCMPLT
  $8B2F  D7 11 8B                   JUMPT_abs              $8B11
  $8B32  40                         LOADL_qimm   ; inline operand = 0
  $8B33  26                         STORE_quick   ; inline operand = 6
  $8B34  A5 68 70                   BYTE_LOADL_abs         $7068
  $8B37  D7 40 8B                   JUMPT_abs              $8B40
  $8B3A  AC E8 B2                   CALL_abs               $B2E8 {native}
  $8B3D  D6 43 8B                   JUMP_abs               $8B43
 >$8B40  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
 >$8B43  61                         PUSH_qimm   ; inline operand = 1
  $8B44  8E 88 90                   PUSH_imm2              $9088
  $8B47  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8B4B  61                         PUSH_qimm   ; inline operand = 1
  $8B4C  63                         PUSH_qimm   ; inline operand = 3
  $8B4D  62                         PUSH_qimm   ; inline operand = 2
  $8B4E  60                         PUSH_qimm   ; inline operand = 0
  $8B4F  07                         LOADL_quick   ; inline operand = 7
  $8B50  72                         ADD_qimm   ; inline operand = 2
  $8B51  B3                         PUSHL
  $8B52  08                         LOADL_quick   ; inline operand = 8
  $8B53  D0                         INC
  $8B54  B3                         PUSHL
  $8B55  63                         PUSH_qimm   ; inline operand = 3
  $8B56  8E 9E 90                   PUSH_imm2              $909E
  $8B59  E9 24 C8 10                CALL_abs_imm1          $C824 {native}, $10
  $8B5D  2B                         STORE_quick   ; inline operand = 11
  $8B5E  0B                         LOADL_quick   ; inline operand = 11
  $8B5F  8B FF                      BYTE_LOADR_imm1        -1
  $8B61  C0                         CMPEQ
  $8B62  D8 6A 8B                   JUMPF_abs              $8B6A
  $8B65  41                         LOADL_qimm   ; inline operand = 1
  $8B66  26                         STORE_quick   ; inline operand = 6
  $8B67  D6 92 8B                   JUMP_abs               $8B92
 >$8B6A  A5 68 70                   BYTE_LOADL_abs         $7068
  $8B6D  D7 76 8B                   JUMPT_abs              $8B76
  $8B70  AC 4B B2                   CALL_abs               $B24B {native}
  $8B73  D6 79 8B                   JUMP_abs               $8B79
 >$8B76  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
 >$8B79  0B                         LOADL_quick   ; inline operand = 11
  $8B7A  D1                         DEC
  $8B7B  D2                         LSHIFT1
  $8B7C  8C 71 90                   LOADR_imm2             $9071
  $8B7F  BB                         ADD
  $8B80  B0                         DEREF
  $8B81  DD                         CALLPTR
  $8B82  26                         STORE_quick   ; inline operand = 6
  $8B83  A5 68 70                   BYTE_LOADL_abs         $7068
  $8B86  D7 8F 8B                   JUMPT_abs              $8B8F
  $8B89  AC 4B B2                   CALL_abs               $B24B {native}
  $8B8C  D6 92 8B                   JUMP_abs               $8B92
 >$8B8F  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
 >$8B92  06                         LOADL_quick   ; inline operand = 6
  $8B93  D8 43 8B                   JUMPF_abs              $8B43
  $8B96  AC 44 A5                   CALL_abs               $A544 {native}
  $8B99  40                         LOADL_qimm   ; inline operand = 0
  $8B9A  CF                         RETURN

