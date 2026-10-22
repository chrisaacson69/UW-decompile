VM bytecode disassembly
  ROM:          Uncharted Waters (USA).nes
  mode:         bulk dump of bank 36
  opcode spec:  vm-opcodes-v2.toml via nobunaga_vm.OPCODE_INFO (execution-validated lengths)
  labels:       0 CPU addresses named

  bank 36: found 5 bytecode-subroutine stubs

; ============================================================
; sub $8003   (frame_off=-16, body @ $8008)   [PRG $48003]
; ============================================================
  $8008  A4 8C 73                   LOADL_abs              $738C
  $800B  8C 00 03                   LOADR_imm2             $0300
  $800E  DA                         AND
  $800F  58                         LOADR_qimm   ; inline operand = 8
  $8010  BE                         URSHIFT
  $8011  2B                         STORE_quick   ; inline operand = 11
  $8012  A4 8C 73                   LOADL_abs              $738C
  $8015  8C C0 00                   LOADR_imm2             $00C0
  $8018  DA                         AND
  $8019  56                         LOADR_qimm   ; inline operand = 6
  $801A  BE                         URSHIFT
  $801B  2A                         STORE_quick   ; inline operand = 10
  $801C  A4 8C 73                   LOADL_abs              $738C
  $801F  8B 30                      BYTE_LOADR_imm1        +48
  $8021  DA                         AND
  $8022  54                         LOADR_qimm   ; inline operand = 4
  $8023  BE                         URSHIFT
  $8024  29                         STORE_quick   ; inline operand = 9
  $8025  A4 8C 73                   LOADL_abs              $738C
  $8028  5C                         LOADR_qimm   ; inline operand = 12
  $8029  DA                         AND
  $802A  52                         LOADR_qimm   ; inline operand = 2
  $802B  BE                         URSHIFT
  $802C  28                         STORE_quick   ; inline operand = 8
  $802D  A4 8C 73                   LOADL_abs              $738C
  $8030  53                         LOADR_qimm   ; inline operand = 3
  $8031  DA                         AND
  $8032  27                         STORE_quick   ; inline operand = 7
  $8033  0D                         LOADL_quick   ; inline operand = 13
  $8034  8B 28                      BYTE_LOADR_imm1        +40
  $8036  B5                         MULT
  $8037  8C 5A 8C                   LOADR_imm2             $8C5A
  $803A  BB                         ADD
  $803B  24                         STORE_quick   ; inline operand = 4
  $803C  0D                         LOADL_quick   ; inline operand = 13
  $803D  8B 14                      BYTE_LOADR_imm1        +20
  $803F  B5                         MULT
  $8040  8C FA 8C                   LOADR_imm2             $8CFA
  $8043  BB                         ADD
  $8044  26                         STORE_quick   ; inline operand = 6
  $8045  06                         LOADL_quick   ; inline operand = 6
  $8046  8F 10                      BYTE_ADD_imm1          +16
  $8048  25                         STORE_quick   ; inline operand = 5
  $8049  05                         LOADL_quick   ; inline operand = 5
  $804A  72                         ADD_qimm   ; inline operand = 2
  $804B  B0                         DEREF
  $804C  B3                         PUSHL
  $804D  05                         LOADL_quick   ; inline operand = 5
  $804E  B0                         DEREF
  $804F  D2                         LSHIFT1
  $8050  D2                         LSHIFT1
  $8051  1C                         LOADR_quick   ; inline operand = 12
  $8052  BB                         ADD
  $8053  B3                         PUSHL
  $8054  07                         LOADL_quick   ; inline operand = 7
  $8055  D2                         LSHIFT1
  $8056  14                         LOADR_quick   ; inline operand = 4
  $8057  BB                         ADD
  $8058  8F 20                      BYTE_ADD_imm1          +32
  $805A  B0                         DEREF
  $805B  B3                         PUSHL
  $805C  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $8060  06                         LOADL_quick   ; inline operand = 6
  $8061  25                         STORE_quick   ; inline operand = 5
  $8062  05                         LOADL_quick   ; inline operand = 5
  $8063  72                         ADD_qimm   ; inline operand = 2
  $8064  B0                         DEREF
  $8065  B3                         PUSHL
  $8066  05                         LOADL_quick   ; inline operand = 5
  $8067  B0                         DEREF
  $8068  D2                         LSHIFT1
  $8069  D2                         LSHIFT1
  $806A  1C                         LOADR_quick   ; inline operand = 12
  $806B  BB                         ADD
  $806C  B3                         PUSHL
  $806D  0B                         LOADL_quick   ; inline operand = 11
  $806E  D2                         LSHIFT1
  $806F  14                         LOADR_quick   ; inline operand = 4
  $8070  BB                         ADD
  $8071  B0                         DEREF
  $8072  B3                         PUSHL
  $8073  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $8077  0D                         LOADL_quick   ; inline operand = 13
  $8078  D7 8C 80                   JUMPT_abs              $808C
  $807B  64                         PUSH_qimm   ; inline operand = 4
  $807C  0C                         LOADL_quick   ; inline operand = 12
  $807D  8F 4C                      BYTE_ADD_imm1          +76
  $807F  B3                         PUSHL
  $8080  0B                         LOADL_quick   ; inline operand = 11
  $8081  D2                         LSHIFT1
  $8082  14                         LOADR_quick   ; inline operand = 4
  $8083  BB                         ADD
  $8084  B0                         DEREF
  $8085  8F 4C                      BYTE_ADD_imm1          +76
  $8087  B3                         PUSHL
  $8088  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
 >$808C  06                         LOADL_quick   ; inline operand = 6
  $808D  74                         ADD_qimm   ; inline operand = 4
  $808E  25                         STORE_quick   ; inline operand = 5
  $808F  05                         LOADL_quick   ; inline operand = 5
  $8090  72                         ADD_qimm   ; inline operand = 2
  $8091  B0                         DEREF
  $8092  B3                         PUSHL
  $8093  05                         LOADL_quick   ; inline operand = 5
  $8094  B0                         DEREF
  $8095  D2                         LSHIFT1
  $8096  D2                         LSHIFT1
  $8097  1C                         LOADR_quick   ; inline operand = 12
  $8098  BB                         ADD
  $8099  B3                         PUSHL
  $809A  0A                         LOADL_quick   ; inline operand = 10
  $809B  D2                         LSHIFT1
  $809C  14                         LOADR_quick   ; inline operand = 4
  $809D  BB                         ADD
  $809E  78                         ADD_qimm   ; inline operand = 8
  $809F  B0                         DEREF
  $80A0  B3                         PUSHL
  $80A1  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $80A5  06                         LOADL_quick   ; inline operand = 6
  $80A6  78                         ADD_qimm   ; inline operand = 8
  $80A7  25                         STORE_quick   ; inline operand = 5
  $80A8  05                         LOADL_quick   ; inline operand = 5
  $80A9  72                         ADD_qimm   ; inline operand = 2
  $80AA  B0                         DEREF
  $80AB  B3                         PUSHL
  $80AC  05                         LOADL_quick   ; inline operand = 5
  $80AD  B0                         DEREF
  $80AE  D2                         LSHIFT1
  $80AF  D2                         LSHIFT1
  $80B0  1C                         LOADR_quick   ; inline operand = 12
  $80B1  BB                         ADD
  $80B2  B3                         PUSHL
  $80B3  09                         LOADL_quick   ; inline operand = 9
  $80B4  D2                         LSHIFT1
  $80B5  14                         LOADR_quick   ; inline operand = 4
  $80B6  BB                         ADD
  $80B7  8F 10                      BYTE_ADD_imm1          +16
  $80B9  B0                         DEREF
  $80BA  B3                         PUSHL
  $80BB  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $80BF  06                         LOADL_quick   ; inline operand = 6
  $80C0  7C                         ADD_qimm   ; inline operand = 12
  $80C1  25                         STORE_quick   ; inline operand = 5
  $80C2  05                         LOADL_quick   ; inline operand = 5
  $80C3  72                         ADD_qimm   ; inline operand = 2
  $80C4  B0                         DEREF
  $80C5  B3                         PUSHL
  $80C6  05                         LOADL_quick   ; inline operand = 5
  $80C7  B0                         DEREF
  $80C8  D2                         LSHIFT1
  $80C9  D2                         LSHIFT1
  $80CA  1C                         LOADR_quick   ; inline operand = 12
  $80CB  BB                         ADD
  $80CC  B3                         PUSHL
  $80CD  08                         LOADL_quick   ; inline operand = 8
  $80CE  D2                         LSHIFT1
  $80CF  14                         LOADR_quick   ; inline operand = 4
  $80D0  BB                         ADD
  $80D1  8F 18                      BYTE_ADD_imm1          +24
  $80D3  B0                         DEREF
  $80D4  B3                         PUSHL
  $80D5  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $80D9  CF                         RETURN

; ============================================================
; sub $80DA   (frame_off=-4, body @ $80DF)   [PRG $480DA]
; ============================================================
  $80DF  0C                         LOADL_quick   ; inline operand = 12
  $80E0  53                         LOADR_qimm   ; inline operand = 3
  $80E1  DA                         AND
  $80E2  56                         LOADR_qimm   ; inline operand = 6
  $80E3  BD                         LSHIFT
  $80E4  B3                         PUSHL
  $80E5  0C                         LOADL_quick   ; inline operand = 12
  $80E6  52                         LOADR_qimm   ; inline operand = 2
  $80E7  BE                         URSHIFT
  $80E8  58                         LOADR_qimm   ; inline operand = 8
  $80E9  BD                         LSHIFT
  $80EA  B4                         POPR
  $80EB  BB                         ADD
  $80EC  2B                         STORE_quick   ; inline operand = 11
  $80ED  D6 1A 81                   JUMP_abs               $811A
 >$80F0  0D                         LOADL_quick   ; inline operand = 13
  $80F1  D0                         INC
  $80F2  D3                         BYTE_DEREF
  $80F3  1B                         LOADR_quick   ; inline operand = 11
  $80F4  BB                         ADD
  $80F5  2A                         STORE_quick   ; inline operand = 10
  $80F6  3E                         PUSH_quick   ; inline operand = 14
  $80F7  0A                         LOADL_quick   ; inline operand = 10
  $80F8  8C FF 00                   LOADR_imm2             $00FF
  $80FB  DA                         AND
  $80FC  D4                         BYTE_POPSTORE
  $80FD  3F                         PUSH_quick   ; inline operand = 15
  $80FE  0A                         LOADL_quick   ; inline operand = 10
  $80FF  58                         LOADR_qimm   ; inline operand = 8
  $8100  BE                         URSHIFT
  $8101  B3                         PUSHL
  $8102  0D                         LOADL_quick   ; inline operand = 13
  $8103  72                         ADD_qimm   ; inline operand = 2
  $8104  D3                         BYTE_DEREF
  $8105  56                         LOADR_qimm   ; inline operand = 6
  $8106  BD                         LSHIFT
  $8107  B4                         POPR
  $8108  DB                         OR
  $8109  D4                         BYTE_POPSTORE
  $810A  0E                         LOADL_quick   ; inline operand = 14
  $810B  D0                         INC
  $810C  2E                         STORE_quick   ; inline operand = 14
  $810D  0F                         LOADL_quick   ; inline operand = 15
  $810E  D0                         INC
  $810F  2F                         STORE_quick   ; inline operand = 15
  $8110  44                         LOADL_qimm   ; inline operand = 4
  $8111  CD                         SWAP
  $8112  0D                         LOADL_quick   ; inline operand = 13
  $8113  BB                         ADD
  $8114  2D                         STORE_quick   ; inline operand = 13
  $8115  81 13                      LOADL_near             $13
  $8117  D1                         DEC
  $8118  85 13                      STORE_near             $13
 >$811A  81 13                      LOADL_near             $13
  $811C  D7 F0 80                   JUMPT_abs              $80F0
  $811F  CF                         RETURN

; ============================================================
; sub $8120   (frame_off=-62, body @ $8125)   [PRG $48120]
; ============================================================
  $8125  0D                         LOADL_quick   ; inline operand = 13
  $8126  8C 56 8C                   LOADR_imm2             $8C56
  $8129  BB                         ADD
  $812A  D3                         BYTE_DEREF
  $812B  85 C2                      STORE_near             $C2
  $812D  8D 1E                      BYTE_PUSH_imm1         +30
  $812F  DE C4 FF                   LEAL_far               $FFC4
  $8132  B3                         PUSHL
  $8133  DE E2 FF                   LEAL_far               $FFE2
  $8136  B3                         PUSHL
  $8137  3C                         PUSH_quick   ; inline operand = 12
  $8138  87 C2                      PUSH_near              $C2
  $813A  E9 DA 80 0A                CALL_abs_imm1          $80DA {bytecode}, $0A
  $813E  8E C1 00                   PUSH_imm2              $00C1
  $8141  DE C4 FF                   LEAL_far               $FFC4
  $8144  B3                         PUSHL
  $8145  DE E2 FF                   LEAL_far               $FFE2
  $8148  B3                         PUSHL
  $8149  66                         PUSH_qimm   ; inline operand = 6
  $814A  65                         PUSH_qimm   ; inline operand = 5
  $814B  A5 8B 73                   BYTE_LOADL_abs         $738B
  $814E  B3                         PUSHL
  $814F  A5 8A 73                   BYTE_LOADL_abs         $738A
  $8152  B3                         PUSHL
  $8153  69                         PUSH_qimm   ; inline operand = 9
  $8154  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8158  CF                         RETURN

; ============================================================
; sub $8159   (frame_off=-14, body @ $815E)   [PRG $48159]
; ============================================================
  $815E  68                         PUSH_qimm   ; inline operand = 8
  $815F  DE F8 FF                   LEAL_far               $FFF8
  $8162  B3                         PUSHL
  $8163  8E 82 73                   PUSH_imm2              $7382
  $8166  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $816A  0D                         LOADL_quick   ; inline operand = 13
  $816B  8C 56 8C                   LOADR_imm2             $8C56
  $816E  BB                         ADD
  $816F  D3                         BYTE_DEREF
  $8170  A2 F8 FF                   BYTE_STORE_far         $FFF8
  $8173  0D                         LOADL_quick   ; inline operand = 13
  $8174  8C 56 8C                   LOADR_imm2             $8C56
  $8177  BB                         ADD
  $8178  D3                         BYTE_DEREF
  $8179  D0                         INC
  $817A  A2 F9 FF                   BYTE_STORE_far         $FFF9
  $817D  A5 8A 73                   BYTE_LOADL_abs         $738A
  $8180  27                         STORE_quick   ; inline operand = 7
  $8181  A5 8B 73                   BYTE_LOADL_abs         $738B
  $8184  26                         STORE_quick   ; inline operand = 6
  $8185  60                         PUSH_qimm   ; inline operand = 0
  $8186  60                         PUSH_qimm   ; inline operand = 0
  $8187  66                         PUSH_qimm   ; inline operand = 6
  $8188  65                         PUSH_qimm   ; inline operand = 5
  $8189  36                         PUSH_quick   ; inline operand = 6
  $818A  37                         PUSH_quick   ; inline operand = 7
  $818B  68                         PUSH_qimm   ; inline operand = 8
  $818C  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $8190  48                         LOADL_qimm   ; inline operand = 8
  $8191  CD                         SWAP
  $8192  07                         LOADL_quick   ; inline operand = 7
  $8193  B5                         MULT
  $8194  27                         STORE_quick   ; inline operand = 7
  $8195  06                         LOADL_quick   ; inline operand = 6
  $8196  53                         LOADR_qimm   ; inline operand = 3
  $8197  BD                         LSHIFT
  $8198  B3                         PUSHL
  $8199  A5 7D 73                   BYTE_LOADL_abs         $737D (ui_shared_var_737d)
  $819C  D2                         LSHIFT1
  $819D  8C 14 DF                   LOADR_imm2             $DF14
  $81A0  BB                         ADD
  $81A1  B0                         DEREF
  $81A2  B4                         POPR
  $81A3  BB                         ADD
  $81A4  26                         STORE_quick   ; inline operand = 6
  $81A5  40                         LOADL_qimm   ; inline operand = 0
  $81A6  25                         STORE_quick   ; inline operand = 5
 >$81A7  06                         LOADL_quick   ; inline operand = 6
  $81A8  B3                         PUSHL
  $81A9  05                         LOADL_quick   ; inline operand = 5
  $81AA  D2                         LSHIFT1
  $81AB  D2                         LSHIFT1
  $81AC  1C                         LOADR_quick   ; inline operand = 12
  $81AD  BB                         ADD
  $81AE  B4                         POPR
  $81AF  B3                         PUSHL
  $81B0  D3                         BYTE_DEREF
  $81B1  BB                         ADD
  $81B2  D4                         BYTE_POPSTORE
  $81B3  07                         LOADL_quick   ; inline operand = 7
  $81B4  B3                         PUSHL
  $81B5  05                         LOADL_quick   ; inline operand = 5
  $81B6  D2                         LSHIFT1
  $81B7  D2                         LSHIFT1
  $81B8  1C                         LOADR_quick   ; inline operand = 12
  $81B9  BB                         ADD
  $81BA  73                         ADD_qimm   ; inline operand = 3
  $81BB  B4                         POPR
  $81BC  B3                         PUSHL
  $81BD  D3                         BYTE_DEREF
  $81BE  BB                         ADD
  $81BF  D4                         BYTE_POPSTORE
  $81C0  05                         LOADL_quick   ; inline operand = 5
  $81C1  D0                         INC
  $81C2  25                         STORE_quick   ; inline operand = 5
  $81C3  05                         LOADL_quick   ; inline operand = 5
  $81C4  8B 1E                      BYTE_LOADR_imm1        +30
  $81C6  C2                         SCMPLT
  $81C7  D7 A7 81                   JUMPT_abs              $81A7
  $81CA  DE F8 FF                   LEAL_far               $FFF8
  $81CD  B3                         PUSHL
  $81CE  65                         PUSH_qimm   ; inline operand = 5
  $81CF  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $81D3  8D 1E                      BYTE_PUSH_imm1         +30
  $81D5  A5 8E 73                   BYTE_LOADL_abs         $738E
  $81D8  B3                         PUSHL
  $81D9  6C                         PUSH_qimm   ; inline operand = 12
  $81DA  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $81DE  8D 1E                      BYTE_PUSH_imm1         +30
  $81E0  A5 8E 73                   BYTE_LOADL_abs         $738E
  $81E3  B3                         PUSHL
  $81E4  3C                         PUSH_quick   ; inline operand = 12
  $81E5  6D                         PUSH_qimm   ; inline operand = 13
  $81E6  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $81EA  CF                         RETURN

; ============================================================
; sub $81EB   (frame_off=-122, body @ $81F0)   [PRG $481EB]
; ============================================================
  $81F0  A4 8C 73                   LOADL_abs              $738C
  $81F3  8C 00 0C                   LOADR_imm2             $0C00
  $81F6  DA                         AND
  $81F7  5A                         LOADR_qimm   ; inline operand = 10
  $81F8  BE                         URSHIFT
  $81F9  85 86                      STORE_near             $86
  $81FB  87 86                      PUSH_near              $86
  $81FD  DE 88 FF                   LEAL_far               $FF88
  $8200  B3                         PUSHL
  $8201  E9 03 80 04                CALL_abs_imm1          $8003 {bytecode}, $04
  $8205  A5 8E 73                   BYTE_LOADL_abs         $738E
  $8208  8B 40                      BYTE_LOADR_imm1        +64
  $820A  C6                         UCMPLT
  $820B  D8 1B 82                   JUMPF_abs              $821B
  $820E  87 86                      PUSH_near              $86
  $8210  DE 88 FF                   LEAL_far               $FF88
  $8213  B3                         PUSHL
  $8214  E9 59 81 04                CALL_abs_imm1          $8159 {bytecode}, $04
  $8218  D6 25 82                   JUMP_abs               $8225
 >$821B  87 86                      PUSH_near              $86
  $821D  DE 88 FF                   LEAL_far               $FF88
  $8220  B3                         PUSHL
  $8221  E9 20 81 04                CALL_abs_imm1          $8120 {bytecode}, $04
 >$8225  CF                         RETURN

