VM bytecode disassembly
  ROM:          Uncharted Waters (USA).nes
  mode:         bulk dump of bank 14
  opcode spec:  vm-opcodes-v2.toml via nobunaga_vm.OPCODE_INFO (execution-validated lengths)
  labels:       0 CPU addresses named

  bank 14: found 39 bytecode-subroutine stubs

; ============================================================
; sub $8003   (frame_off=-14, body @ $8008)   [PRG $1C003]
; ============================================================
  $8008  0E                         LOADL_quick   ; inline operand = 14
  $8009  51                         LOADR_qimm   ; inline operand = 1
  $800A  C0                         CMPEQ
  $800B  D8 2A 80                   JUMPF_abs              $802A
  $800E  4A                         LOADL_qimm   ; inline operand = 10
  $800F  CD                         SWAP
  $8010  0F                         LOADL_quick   ; inline operand = 15
  $8011  BA                         UMOD
  $8012  2F                         STORE_quick   ; inline operand = 15
  $8013  8E E0 00                   PUSH_imm2              $00E0
  $8016  0F                         LOADL_quick   ; inline operand = 15
  $8017  D2                         LSHIFT1
  $8018  D2                         LSHIFT1
  $8019  8C FA 95                   LOADR_imm2             $95FA
  $801C  BB                         ADD
  $801D  B0                         DEREF
  $801E  B3                         PUSHL
  $801F  0F                         LOADL_quick   ; inline operand = 15
  $8020  D2                         LSHIFT1
  $8021  D2                         LSHIFT1
  $8022  8C F8 95                   LOADR_imm2             $95F8
  $8025  BB                         ADD
  $8026  B0                         DEREF
  $8027  D6 CF 80                   JUMP_abs               $80CF
 >$802A  0E                         LOADL_quick   ; inline operand = 14
  $802B  51                         LOADR_qimm   ; inline operand = 1
  $802C  C8                         UCMPGT
  $802D  D8 D9 80                   JUMPF_abs              $80D9
  $8030  0E                         LOADL_quick   ; inline operand = 14
  $8031  52                         LOADR_qimm   ; inline operand = 2
  $8032  C7                         UCMPLE
  $8033  D8 D9 80                   JUMPF_abs              $80D9
  $8036  8E FF 00                   PUSH_imm2              $00FF
  $8039  3E                         PUSH_quick   ; inline operand = 14
  $803A  DE F6 FF                   LEAL_far               $FFF6
  $803D  B3                         PUSHL
  $803E  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $8042  0E                         LOADL_quick   ; inline operand = 14
  $8043  D6 58 80                   JUMP_abs               $8058
 >$8046  DE F6 FF                   LEAL_far               $FFF6
  $8049  B3                         PUSHL
  $804A  05                         LOADL_quick   ; inline operand = 5
  $804B  B4                         POPR
  $804C  BB                         ADD
  $804D  B3                         PUSHL
  $804E  0F                         LOADL_quick   ; inline operand = 15
  $804F  5A                         LOADR_qimm   ; inline operand = 10
  $8050  BA                         UMOD
  $8051  D4                         BYTE_POPSTORE
  $8052  4A                         LOADL_qimm   ; inline operand = 10
  $8053  CD                         SWAP
  $8054  0F                         LOADL_quick   ; inline operand = 15
  $8055  B8                         UDIV
  $8056  2F                         STORE_quick   ; inline operand = 15
  $8057  05                         LOADL_quick   ; inline operand = 5
 >$8058  D1                         DEC
  $8059  25                         STORE_quick   ; inline operand = 5
  $805A  0F                         LOADL_quick   ; inline operand = 15
  $805B  D8 65 80                   JUMPF_abs              $8065
  $805E  05                         LOADL_quick   ; inline operand = 5
  $805F  8B FF                      BYTE_LOADR_imm1        -1
  $8061  C4                         SCMPGT
  $8062  D7 46 80                   JUMPT_abs              $8046
 >$8065  DE FE FF                   LEAL_far               $FFFE
  $8068  29                         STORE_quick   ; inline operand = 9
  $8069  DE FC FF                   LEAL_far               $FFFC
  $806C  28                         STORE_quick   ; inline operand = 8
  $806D  60                         PUSH_qimm   ; inline operand = 0
  $806E  3E                         PUSH_quick   ; inline operand = 14
  $806F  39                         PUSH_quick   ; inline operand = 9
  $8070  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $8074  60                         PUSH_qimm   ; inline operand = 0
  $8075  3E                         PUSH_quick   ; inline operand = 14
  $8076  38                         PUSH_quick   ; inline operand = 8
  $8077  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $807B  40                         LOADL_qimm   ; inline operand = 0
  $807C  D6 BE 80                   JUMP_abs               $80BE
 >$807F  DE F6 FF                   LEAL_far               $FFF6
  $8082  B3                         PUSHL
  $8083  05                         LOADL_quick   ; inline operand = 5
  $8084  B4                         POPR
  $8085  BB                         ADD
  $8086  D3                         BYTE_DEREF
  $8087  26                         STORE_quick   ; inline operand = 6
  $8088  06                         LOADL_quick   ; inline operand = 6
  $8089  8C FF 00                   LOADR_imm2             $00FF
  $808C  C0                         CMPEQ
  $808D  D7 B6 80                   JUMPT_abs              $80B6
  $8090  61                         PUSH_qimm   ; inline operand = 1
  $8091  39                         PUSH_quick   ; inline operand = 9
  $8092  06                         LOADL_quick   ; inline operand = 6
  $8093  D2                         LSHIFT1
  $8094  D2                         LSHIFT1
  $8095  8C F8 95                   LOADR_imm2             $95F8
  $8098  BB                         ADD
  $8099  B0                         DEREF
  $809A  B3                         PUSHL
  $809B  8E E0 00                   PUSH_imm2              $00E0
  $809E  62                         PUSH_qimm   ; inline operand = 2
  $809F  E9 EC DC 0A                CALL_abs_imm1          $DCEC (copy_from_bank) {native}, $0A
  $80A3  61                         PUSH_qimm   ; inline operand = 1
  $80A4  38                         PUSH_quick   ; inline operand = 8
  $80A5  06                         LOADL_quick   ; inline operand = 6
  $80A6  D2                         LSHIFT1
  $80A7  D2                         LSHIFT1
  $80A8  8C FA 95                   LOADR_imm2             $95FA
  $80AB  BB                         ADD
  $80AC  B0                         DEREF
  $80AD  B3                         PUSHL
  $80AE  8E E0 00                   PUSH_imm2              $00E0
  $80B1  62                         PUSH_qimm   ; inline operand = 2
  $80B2  E9 EC DC 0A                CALL_abs_imm1          $DCEC (copy_from_bank) {native}, $0A
 >$80B6  09                         LOADL_quick   ; inline operand = 9
  $80B7  D0                         INC
  $80B8  29                         STORE_quick   ; inline operand = 9
  $80B9  08                         LOADL_quick   ; inline operand = 8
  $80BA  D0                         INC
  $80BB  28                         STORE_quick   ; inline operand = 8
  $80BC  05                         LOADL_quick   ; inline operand = 5
  $80BD  D0                         INC
 >$80BE  25                         STORE_quick   ; inline operand = 5
  $80BF  05                         LOADL_quick   ; inline operand = 5
  $80C0  1E                         LOADR_quick   ; inline operand = 14
  $80C1  C6                         UCMPLT
  $80C2  D7 7F 80                   JUMPT_abs              $807F
  $80C5  8E E0 00                   PUSH_imm2              $00E0
  $80C8  DE FC FF                   LEAL_far               $FFFC
  $80CB  B3                         PUSHL
  $80CC  DE FE FF                   LEAL_far               $FFFE
 >$80CF  B3                         PUSHL
  $80D0  61                         PUSH_qimm   ; inline operand = 1
  $80D1  3E                         PUSH_quick   ; inline operand = 14
  $80D2  3D                         PUSH_quick   ; inline operand = 13
  $80D3  3C                         PUSH_quick   ; inline operand = 12
  $80D4  69                         PUSH_qimm   ; inline operand = 9
  $80D5  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
 >$80D9  CF                         RETURN

; ============================================================
; sub $80DA   (frame_off=+0, body @ $80DF)   [PRG $1C0DA]
; ============================================================
  $80DF  0C                         LOADL_quick   ; inline operand = 12
  $80E0  8B 10                      BYTE_LOADR_imm1        +16
  $80E2  C9                         UCMPGE
  $80E3  D8 E8 80                   JUMPF_abs              $80E8
  $80E6  40                         LOADL_qimm   ; inline operand = 0
  $80E7  CF                         RETURN
 >$80E8  0C                         LOADL_quick   ; inline operand = 12
  $80E9  D1                         DEC
  $80EA  55                         LOADR_qimm   ; inline operand = 5
  $80EB  BA                         UMOD
  $80EC  52                         LOADR_qimm   ; inline operand = 2
  $80ED  C7                         UCMPLE
  $80EE  D8 F5 80                   JUMPF_abs              $80F5
  $80F1  42                         LOADL_qimm   ; inline operand = 2
  $80F2  D6 F6 80                   JUMP_abs               $80F6
 >$80F5  41                         LOADL_qimm   ; inline operand = 1
 >$80F6  CF                         RETURN

; ============================================================
; sub $80F7   (frame_off=-14, body @ $80FC)   [PRG $1C0F7]
; ============================================================
  $80FC  0C                         LOADL_quick   ; inline operand = 12
  $80FD  D8 04 81                   JUMPF_abs              $8104
  $8100  0D                         LOADL_quick   ; inline operand = 13
  $8101  D6 05 81                   JUMP_abs               $8105
 >$8104  0C                         LOADL_quick   ; inline operand = 12
 >$8105  25                         STORE_quick   ; inline operand = 5
  $8106  8E 9E 74                   PUSH_imm2              $749E
  $8109  35                         PUSH_quick   ; inline operand = 5
  $810A  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $810E  A8 A8 74                   STORE_abs              $74A8
  $8111  8A 9E 74                   LOADL_imm2             $749E
  $8114  2B                         STORE_quick   ; inline operand = 11
  $8115  A6 A8 74                   LOADR_abs              $74A8
  $8118  BB                         ADD
  $8119  2A                         STORE_quick   ; inline operand = 10
  $811A  D6 A6 81                   JUMP_abs               $81A6
 >$811D  0B                         LOADL_quick   ; inline operand = 11
  $811E  D3                         BYTE_DEREF
  $811F  8B 18                      BYTE_LOADR_imm1        +24
  $8121  B5                         MULT
  $8122  8C A4 6A                   LOADR_imm2             $6AA4
  $8125  BB                         ADD
  $8126  D3                         BYTE_DEREF
  $8127  26                         STORE_quick   ; inline operand = 6
  $8128  06                         LOADL_quick   ; inline operand = 6
  $8129  D8 A3 81                   JUMPF_abs              $81A3
  $812C  06                         LOADL_quick   ; inline operand = 6
  $812D  D1                         DEC
  $812E  D2                         LSHIFT1
  $812F  8C 6E 6A                   LOADR_imm2             $6A6E
  $8132  BB                         ADD
  $8133  D3                         BYTE_DEREF
  $8134  B3                         PUSHL
  $8135  06                         LOADL_quick   ; inline operand = 6
  $8136  5A                         LOADR_qimm   ; inline operand = 10
  $8137  B5                         MULT
  $8138  8C C2 6B                   LOADR_imm2             $6BC2
  $813B  BB                         ADD
  $813C  D3                         BYTE_DEREF
  $813D  B3                         PUSHL
  $813E  8A 82 00                   LOADL_imm2             $0082
  $8141  B4                         POPR
  $8142  BC                         SUB
  $8143  B3                         PUSHL
  $8144  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8148  B4                         POPR
  $8149  C8                         UCMPGT
  $814A  D8 A3 81                   JUMPF_abs              $81A3
  $814D  8E BF 00                   PUSH_imm2              $00BF
  $8150  0B                         LOADL_quick   ; inline operand = 11
  $8151  D3                         BYTE_DEREF
  $8152  57                         LOADR_qimm   ; inline operand = 7
  $8153  B5                         MULT
  $8154  8C 96 6C                   LOADR_imm2             $6C96
  $8157  BB                         ADD
  $8158  B4                         POPR
  $8159  B3                         PUSHL
  $815A  D3                         BYTE_DEREF
  $815B  DA                         AND
  $815C  D4                         BYTE_POPSTORE
  $815D  8A 9A 6A                   LOADL_imm2             $6A9A
  $8160  29                         STORE_quick   ; inline operand = 9
  $8161  28                         STORE_quick   ; inline operand = 8
  $8162  7A                         ADD_qimm   ; inline operand = 10
  $8163  27                         STORE_quick   ; inline operand = 7
  $8164  D6 78 81                   JUMP_abs               $8178
 >$8167  09                         LOADL_quick   ; inline operand = 9
  $8168  D3                         BYTE_DEREF
  $8169  16                         LOADR_quick   ; inline operand = 6
  $816A  C1                         CMPNE
  $816B  D8 75 81                   JUMPF_abs              $8175
  $816E  38                         PUSH_quick   ; inline operand = 8
  $816F  09                         LOADL_quick   ; inline operand = 9
  $8170  D3                         BYTE_DEREF
  $8171  D4                         BYTE_POPSTORE
  $8172  08                         LOADL_quick   ; inline operand = 8
  $8173  D0                         INC
  $8174  28                         STORE_quick   ; inline operand = 8
 >$8175  09                         LOADL_quick   ; inline operand = 9
  $8176  D0                         INC
  $8177  29                         STORE_quick   ; inline operand = 9
 >$8178  09                         LOADL_quick   ; inline operand = 9
  $8179  17                         LOADR_quick   ; inline operand = 7
  $817A  C6                         UCMPLT
  $817B  D8 87 81                   JUMPF_abs              $8187
  $817E  09                         LOADL_quick   ; inline operand = 9
  $817F  D3                         BYTE_DEREF
  $8180  8C FF 00                   LOADR_imm2             $00FF
  $8183  C1                         CMPNE
  $8184  D7 67 81                   JUMPT_abs              $8167
 >$8187  38                         PUSH_quick   ; inline operand = 8
  $8188  8A FF 00                   LOADL_imm2             $00FF
  $818B  D4                         BYTE_POPSTORE
  $818C  06                         LOADL_quick   ; inline operand = 6
  $818D  D1                         DEC
  $818E  D2                         LSHIFT1
  $818F  8C 6F 6A                   LOADR_imm2             $6A6F
  $8192  BB                         ADD
  $8193  B3                         PUSHL
  $8194  8D 19                      BYTE_PUSH_imm1         +25
  $8196  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $819A  74                         ADD_qimm   ; inline operand = 4
  $819B  D4                         BYTE_POPSTORE
  $819C  0E                         LOADL_quick   ; inline operand = 14
  $819D  D0                         INC
  $819E  2E                         STORE_quick   ; inline operand = 14
  $819F  D1                         DEC
  $81A0  B3                         PUSHL
  $81A1  06                         LOADL_quick   ; inline operand = 6
  $81A2  D4                         BYTE_POPSTORE
 >$81A3  0B                         LOADL_quick   ; inline operand = 11
  $81A4  D0                         INC
  $81A5  2B                         STORE_quick   ; inline operand = 11
 >$81A6  0B                         LOADL_quick   ; inline operand = 11
  $81A7  1A                         LOADR_quick   ; inline operand = 10
  $81A8  C6                         UCMPLT
  $81A9  D7 1D 81                   JUMPT_abs              $811D
  $81AC  CF                         RETURN

; ============================================================
; sub $81AD   (frame_off=-6, body @ $81B2)   [PRG $1C1AD]
; ============================================================
  $81B2  8A 17 74                   LOADL_imm2             $7417
  $81B5  2A                         STORE_quick   ; inline operand = 10
  $81B6  90 87 00                   ADD_imm2               $0087
  $81B9  29                         STORE_quick   ; inline operand = 9
  $81BA  D6 D3 81                   JUMP_abs               $81D3
 >$81BD  3A                         PUSH_quick   ; inline operand = 10
  $81BE  62                         PUSH_qimm   ; inline operand = 2
  $81BF  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $81C3  D4                         BYTE_POPSTORE
  $81C4  8D 1E                      BYTE_PUSH_imm1         +30
  $81C6  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $81CA  D7 D0 81                   JUMPT_abs              $81D0
  $81CD  3A                         PUSH_quick   ; inline operand = 10
  $81CE  43                         LOADL_qimm   ; inline operand = 3
  $81CF  D4                         BYTE_POPSTORE
 >$81D0  0A                         LOADL_quick   ; inline operand = 10
  $81D1  D0                         INC
  $81D2  2A                         STORE_quick   ; inline operand = 10
 >$81D3  0A                         LOADL_quick   ; inline operand = 10
  $81D4  19                         LOADR_quick   ; inline operand = 9
  $81D5  C6                         UCMPLT
  $81D6  D7 BD 81                   JUMPT_abs              $81BD
  $81D9  CF                         RETURN

; ============================================================
; sub $81DA   (frame_off=-10, body @ $81DF)   [PRG $1C1DA]
; ============================================================
  $81DF  40                         LOADL_qimm   ; inline operand = 0
  $81E0  28                         STORE_quick   ; inline operand = 8
 >$81E1  40                         LOADL_qimm   ; inline operand = 0
  $81E2  29                         STORE_quick   ; inline operand = 9
 >$81E3  08                         LOADL_quick   ; inline operand = 8
  $81E4  51                         LOADR_qimm   ; inline operand = 1
  $81E5  C0                         CMPEQ
  $81E6  D8 EF 81                   JUMPF_abs              $81EF
  $81E9  09                         LOADL_quick   ; inline operand = 9
  $81EA  51                         LOADR_qimm   ; inline operand = 1
  $81EB  C0                         CMPEQ
  $81EC  D7 38 82                   JUMPT_abs              $8238
 >$81EF  6A                         PUSH_qimm   ; inline operand = 10
  $81F0  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $81F4  D7 38 82                   JUMPT_abs              $8238
  $81F7  68                         PUSH_qimm   ; inline operand = 8
  $81F8  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $81FC  27                         STORE_quick   ; inline operand = 7
  $81FD  40                         LOADL_qimm   ; inline operand = 0
  $81FE  2A                         STORE_quick   ; inline operand = 10
 >$81FF  40                         LOADL_qimm   ; inline operand = 0
  $8200  2B                         STORE_quick   ; inline operand = 11
 >$8201  09                         LOADL_quick   ; inline operand = 9
  $8202  55                         LOADR_qimm   ; inline operand = 5
  $8203  B5                         MULT
  $8204  B3                         PUSHL
  $8205  08                         LOADL_quick   ; inline operand = 8
  $8206  53                         LOADR_qimm   ; inline operand = 3
  $8207  B5                         MULT
  $8208  1A                         LOADR_quick   ; inline operand = 10
  $8209  BB                         ADD
  $820A  5F                         LOADR_qimm   ; inline operand = 15
  $820B  B5                         MULT
  $820C  B4                         POPR
  $820D  BB                         ADD
  $820E  1B                         LOADR_quick   ; inline operand = 11
  $820F  BB                         ADD
  $8210  8C 17 74                   LOADR_imm2             $7417
  $8213  BB                         ADD
  $8214  B3                         PUSHL
  $8215  0A                         LOADL_quick   ; inline operand = 10
  $8216  55                         LOADR_qimm   ; inline operand = 5
  $8217  B5                         MULT
  $8218  B3                         PUSHL
  $8219  07                         LOADL_quick   ; inline operand = 7
  $821A  5F                         LOADR_qimm   ; inline operand = 15
  $821B  B5                         MULT
  $821C  B4                         POPR
  $821D  BB                         ADD
  $821E  1B                         LOADR_quick   ; inline operand = 11
  $821F  BB                         ADD
  $8220  8C 20 96                   LOADR_imm2             $9620
  $8223  BB                         ADD
  $8224  D3                         BYTE_DEREF
  $8225  D4                         BYTE_POPSTORE
  $8226  0B                         LOADL_quick   ; inline operand = 11
  $8227  D0                         INC
  $8228  2B                         STORE_quick   ; inline operand = 11
  $8229  0B                         LOADL_quick   ; inline operand = 11
  $822A  55                         LOADR_qimm   ; inline operand = 5
  $822B  C6                         UCMPLT
  $822C  D7 01 82                   JUMPT_abs              $8201
  $822F  0A                         LOADL_quick   ; inline operand = 10
  $8230  D0                         INC
  $8231  2A                         STORE_quick   ; inline operand = 10
  $8232  0A                         LOADL_quick   ; inline operand = 10
  $8233  53                         LOADR_qimm   ; inline operand = 3
  $8234  C6                         UCMPLT
  $8235  D7 FF 81                   JUMPT_abs              $81FF
 >$8238  09                         LOADL_quick   ; inline operand = 9
  $8239  D0                         INC
  $823A  29                         STORE_quick   ; inline operand = 9
  $823B  09                         LOADL_quick   ; inline operand = 9
  $823C  53                         LOADR_qimm   ; inline operand = 3
  $823D  C6                         UCMPLT
  $823E  D7 E3 81                   JUMPT_abs              $81E3
  $8241  08                         LOADL_quick   ; inline operand = 8
  $8242  D0                         INC
  $8243  28                         STORE_quick   ; inline operand = 8
  $8244  08                         LOADL_quick   ; inline operand = 8
  $8245  53                         LOADR_qimm   ; inline operand = 3
  $8246  C6                         UCMPLT
  $8247  D7 E1 81                   JUMPT_abs              $81E1
  $824A  CF                         RETURN

; ============================================================
; sub $824B   (frame_off=-6, body @ $8250)   [PRG $1C24B]
; ============================================================
  $8250  8A 90 73                   LOADL_imm2             $7390
  $8253  29                         STORE_quick   ; inline operand = 9
  $8254  8A 17 74                   LOADL_imm2             $7417
  $8257  2B                         STORE_quick   ; inline operand = 11
  $8258  90 87 00                   ADD_imm2               $0087
  $825B  2A                         STORE_quick   ; inline operand = 10
  $825C  D6 7B 82                   JUMP_abs               $827B
 >$825F  0B                         LOADL_quick   ; inline operand = 11
  $8260  D3                         BYTE_DEREF
  $8261  D5 FE FF 04 00 75 82 70 82 70 82 70 ... SWITCH_contig          limit=4   ; .table 4 word targets (contiguous); SWITCH 2=>$8270 3=>$8270 4=>$8270 5=>$8270 default=>$8275
 >$8270  39                         PUSH_quick   ; inline operand = 9
  $8271  8A FF 00                   LOADL_imm2             $00FF
  $8274  D4                         BYTE_POPSTORE
 >$8275  09                         LOADL_quick   ; inline operand = 9
  $8276  D0                         INC
  $8277  29                         STORE_quick   ; inline operand = 9
  $8278  0B                         LOADL_quick   ; inline operand = 11
  $8279  D0                         INC
  $827A  2B                         STORE_quick   ; inline operand = 11
 >$827B  0B                         LOADL_quick   ; inline operand = 11
  $827C  1A                         LOADR_quick   ; inline operand = 10
  $827D  C6                         UCMPLT
  $827E  D7 5F 82                   JUMPT_abs              $825F
  $8281  CF                         RETURN

; ============================================================
; sub $8282   (frame_off=-8, body @ $8287)   [PRG $1C282]
; ============================================================
  $8287  A5 8A 6B                   BYTE_LOADL_abs         $6B8A
  $828A  52                         LOADR_qimm   ; inline operand = 2
  $828B  C8                         UCMPGT
  $828C  D8 9F 82                   JUMPF_abs              $829F
  $828F  A5 8A 6B                   BYTE_LOADL_abs         $6B8A
  $8292  59                         LOADR_qimm   ; inline operand = 9
  $8293  C6                         UCMPLT
  $8294  D8 9F 82                   JUMPF_abs              $829F
  $8297  A5 83 70                   BYTE_LOADL_abs         $7083
  $829A  54                         LOADR_qimm   ; inline operand = 4
  $829B  BE                         URSHIFT
  $829C  D6 A2 82                   JUMP_abs               $82A2
 >$829F  A5 83 70                   BYTE_LOADL_abs         $7083
 >$82A2  5F                         LOADR_qimm   ; inline operand = 15
  $82A3  DA                         AND
  $82A4  D0                         INC
  $82A5  A8 DC 74                   STORE_abs              $74DC
  $82A8  A5 8A 6B                   BYTE_LOADL_abs         $6B8A
  $82AB  52                         LOADR_qimm   ; inline operand = 2
  $82AC  C8                         UCMPGT
  $82AD  D8 C0 82                   JUMPF_abs              $82C0
  $82B0  A5 8A 6B                   BYTE_LOADL_abs         $6B8A
  $82B3  59                         LOADR_qimm   ; inline operand = 9
  $82B4  C6                         UCMPLT
  $82B5  D8 C0 82                   JUMPF_abs              $82C0
  $82B8  A5 82 70                   BYTE_LOADL_abs         $7082
  $82BB  54                         LOADR_qimm   ; inline operand = 4
  $82BC  BE                         URSHIFT
  $82BD  D6 C3 82                   JUMP_abs               $82C3
 >$82C0  A5 82 70                   BYTE_LOADL_abs         $7082
 >$82C3  5F                         LOADR_qimm   ; inline operand = 15
  $82C4  DA                         AND
  $82C5  55                         LOADR_qimm   ; inline operand = 5
  $82C6  B5                         MULT
  $82C7  57                         LOADR_qimm   ; inline operand = 7
  $82C8  B8                         UDIV
  $82C9  28                         STORE_quick   ; inline operand = 8
  $82CA  08                         LOADL_quick   ; inline operand = 8
  $82CB  D6 F4 82                   JUMP_abs               $82F4
 >$82CE  09                         LOADL_quick   ; inline operand = 9
  $82CF  56                         LOADR_qimm   ; inline operand = 6
  $82D0  B9                         SMOD
  $82D1  8C D6 74                   LOADR_imm2             $74D6
  $82D4  BB                         ADD
  $82D5  B3                         PUSHL
  $82D6  09                         LOADL_quick   ; inline operand = 9
  $82D7  18                         LOADR_quick   ; inline operand = 8
  $82D8  BC                         SUB
  $82D9  53                         LOADR_qimm   ; inline operand = 3
  $82DA  C3                         SCMPLE
  $82DB  D8 E5 82                   JUMPF_abs              $82E5
  $82DE  09                         LOADL_quick   ; inline operand = 9
  $82DF  18                         LOADR_quick   ; inline operand = 8
  $82E0  BC                         SUB
  $82E1  D0                         INC
  $82E2  D6 F1 82                   JUMP_abs               $82F1
 >$82E5  08                         LOADL_quick   ; inline operand = 8
  $82E6  74                         ADD_qimm   ; inline operand = 4
  $82E7  19                         LOADR_quick   ; inline operand = 9
  $82E8  C0                         CMPEQ
  $82E9  D8 F0 82                   JUMPF_abs              $82F0
  $82EC  43                         LOADL_qimm   ; inline operand = 3
  $82ED  D6 F1 82                   JUMP_abs               $82F1
 >$82F0  42                         LOADL_qimm   ; inline operand = 2
 >$82F1  D4                         BYTE_POPSTORE
  $82F2  09                         LOADL_quick   ; inline operand = 9
  $82F3  D0                         INC
 >$82F4  29                         STORE_quick   ; inline operand = 9
  $82F5  08                         LOADL_quick   ; inline operand = 8
  $82F6  76                         ADD_qimm   ; inline operand = 6
  $82F7  B3                         PUSHL
  $82F8  09                         LOADL_quick   ; inline operand = 9
  $82F9  B4                         POPR
  $82FA  C2                         SCMPLT
  $82FB  D7 CE 82                   JUMPT_abs              $82CE
  $82FE  0C                         LOADL_quick   ; inline operand = 12
  $82FF  54                         LOADR_qimm   ; inline operand = 4
  $8300  BD                         LSHIFT
  $8301  8C 6A 66                   LOADR_imm2             $666A
  $8304  BB                         ADD
  $8305  D3                         BYTE_DEREF
  $8306  55                         LOADR_qimm   ; inline operand = 5
  $8307  B5                         MULT
  $8308  57                         LOADR_qimm   ; inline operand = 7
  $8309  B8                         UDIV
  $830A  56                         LOADR_qimm   ; inline operand = 6
  $830B  BA                         UMOD
  $830C  28                         STORE_quick   ; inline operand = 8
  $830D  8A 9E 74                   LOADL_imm2             $749E
  $8310  2B                         STORE_quick   ; inline operand = 11
  $8311  A6 A8 74                   LOADR_abs              $74A8
  $8314  BB                         ADD
  $8315  2A                         STORE_quick   ; inline operand = 10
  $8316  D6 36 83                   JUMP_abs               $8336
 >$8319  0B                         LOADL_quick   ; inline operand = 11
  $831A  D3                         BYTE_DEREF
  $831B  55                         LOADR_qimm   ; inline operand = 5
  $831C  BA                         UMOD
  $831D  B3                         PUSHL
  $831E  0B                         LOADL_quick   ; inline operand = 11
  $831F  D3                         BYTE_DEREF
  $8320  55                         LOADR_qimm   ; inline operand = 5
  $8321  C6                         UCMPLT
  $8322  D8 29 83                   JUMPF_abs              $8329
  $8325  40                         LOADL_qimm   ; inline operand = 0
  $8326  D6 2A 83                   JUMP_abs               $832A
 >$8329  45                         LOADL_qimm   ; inline operand = 5
 >$832A  B4                         POPR
  $832B  BB                         ADD
  $832C  8C B6 74                   LOADR_imm2             $74B6
  $832F  BB                         ADD
  $8330  B3                         PUSHL
  $8331  08                         LOADL_quick   ; inline operand = 8
  $8332  D4                         BYTE_POPSTORE
  $8333  0B                         LOADL_quick   ; inline operand = 11
  $8334  D0                         INC
  $8335  2B                         STORE_quick   ; inline operand = 11
 >$8336  0B                         LOADL_quick   ; inline operand = 11
  $8337  1A                         LOADR_quick   ; inline operand = 10
  $8338  C6                         UCMPLT
  $8339  D7 19 83                   JUMPT_abs              $8319
  $833C  CF                         RETURN

; ============================================================
; sub $833D   (frame_off=-12, body @ $8342)   [PRG $1C33D]
; ============================================================
  $8342  8A 9E 74                   LOADL_imm2             $749E
  $8345  2B                         STORE_quick   ; inline operand = 11
  $8346  A6 A8 74                   LOADR_abs              $74A8
  $8349  BB                         ADD
  $834A  2A                         STORE_quick   ; inline operand = 10
  $834B  D6 AE 83                   JUMP_abs               $83AE
 >$834E  65                         PUSH_qimm   ; inline operand = 5
  $834F  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8353  1C                         LOADR_quick   ; inline operand = 12
  $8354  BB                         ADD
  $8355  27                         STORE_quick   ; inline operand = 7
  $8356  63                         PUSH_qimm   ; inline operand = 3
  $8357  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $835B  1D                         LOADR_quick   ; inline operand = 13
  $835C  BB                         ADD
  $835D  26                         STORE_quick   ; inline operand = 6
  $835E  06                         LOADL_quick   ; inline operand = 6
  $835F  5F                         LOADR_qimm   ; inline operand = 15
  $8360  B5                         MULT
  $8361  17                         LOADR_quick   ; inline operand = 7
  $8362  BB                         ADD
  $8363  8C 90 73                   LOADR_imm2             $7390
  $8366  BB                         ADD
  $8367  29                         STORE_quick   ; inline operand = 9
  $8368  09                         LOADL_quick   ; inline operand = 9
  $8369  D3                         BYTE_DEREF
  $836A  51                         LOADR_qimm   ; inline operand = 1
  $836B  C0                         CMPEQ
  $836C  D7 AE 83                   JUMPT_abs              $83AE
  $836F  09                         LOADL_quick   ; inline operand = 9
  $8370  D3                         BYTE_DEREF
  $8371  8C FF 00                   LOADR_imm2             $00FF
  $8374  C0                         CMPEQ
  $8375  D8 88 83                   JUMPF_abs              $8388
  $8378  06                         LOADL_quick   ; inline operand = 6
  $8379  5F                         LOADR_qimm   ; inline operand = 15
  $837A  B5                         MULT
  $837B  17                         LOADR_quick   ; inline operand = 7
  $837C  BB                         ADD
  $837D  8C 17 74                   LOADR_imm2             $7417
  $8380  BB                         ADD
  $8381  B3                         PUSHL
  $8382  62                         PUSH_qimm   ; inline operand = 2
  $8383  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8387  D4                         BYTE_POPSTORE
 >$8388  39                         PUSH_quick   ; inline operand = 9
  $8389  41                         LOADL_qimm   ; inline operand = 1
  $838A  D4                         BYTE_POPSTORE
  $838B  0B                         LOADL_quick   ; inline operand = 11
  $838C  D3                         BYTE_DEREF
  $838D  55                         LOADR_qimm   ; inline operand = 5
  $838E  BA                         UMOD
  $838F  B3                         PUSHL
  $8390  0B                         LOADL_quick   ; inline operand = 11
  $8391  D3                         BYTE_DEREF
  $8392  55                         LOADR_qimm   ; inline operand = 5
  $8393  C6                         UCMPLT
  $8394  D8 9B 83                   JUMPF_abs              $839B
  $8397  40                         LOADL_qimm   ; inline operand = 0
  $8398  D6 9C 83                   JUMP_abs               $839C
 >$839B  45                         LOADL_qimm   ; inline operand = 5
 >$839C  B4                         POPR
  $839D  BB                         ADD
  $839E  28                         STORE_quick   ; inline operand = 8
  $839F  08                         LOADL_quick   ; inline operand = 8
  $83A0  8C AC 74                   LOADR_imm2             $74AC
  $83A3  BB                         ADD
  $83A4  B3                         PUSHL
  $83A5  06                         LOADL_quick   ; inline operand = 6
  $83A6  5F                         LOADR_qimm   ; inline operand = 15
  $83A7  B5                         MULT
  $83A8  17                         LOADR_quick   ; inline operand = 7
  $83A9  BB                         ADD
  $83AA  D4                         BYTE_POPSTORE
  $83AB  0B                         LOADL_quick   ; inline operand = 11
  $83AC  D0                         INC
  $83AD  2B                         STORE_quick   ; inline operand = 11
 >$83AE  0B                         LOADL_quick   ; inline operand = 11
  $83AF  1A                         LOADR_quick   ; inline operand = 10
  $83B0  C6                         UCMPLT
  $83B1  D7 4E 83                   JUMPT_abs              $834E
  $83B4  CF                         RETURN

; ============================================================
; sub $83B5   (frame_off=-8, body @ $83BA)   [PRG $1C3B5]
; ============================================================
  $83BA  60                         PUSH_qimm   ; inline operand = 0
  $83BB  8E 87 00                   PUSH_imm2              $0087
  $83BE  8E 90 73                   PUSH_imm2              $7390
  $83C1  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $83C5  3D                         PUSH_quick   ; inline operand = 13
  $83C6  E9 AD 81 02                CALL_abs_imm1          $81AD {bytecode}, $02
  $83CA  AC DA 81                   CALL_abs               $81DA {bytecode}
  $83CD  AC 4B 82                   CALL_abs               $824B {bytecode}
  $83D0  0C                         LOADL_quick   ; inline operand = 12
  $83D1  54                         LOADR_qimm   ; inline operand = 4
  $83D2  BD                         LSHIFT
  $83D3  8C 62 66                   LOADR_imm2             $6662
  $83D6  BB                         ADD
  $83D7  2B                         STORE_quick   ; inline operand = 11
  $83D8  0D                         LOADL_quick   ; inline operand = 13
  $83D9  54                         LOADR_qimm   ; inline operand = 4
  $83DA  BD                         LSHIFT
  $83DB  8C 62 66                   LOADR_imm2             $6662
  $83DE  BB                         ADD
  $83DF  2A                         STORE_quick   ; inline operand = 10
  $83E0  0A                         LOADL_quick   ; inline operand = 10
  $83E1  72                         ADD_qimm   ; inline operand = 2
  $83E2  D3                         BYTE_DEREF
  $83E3  B3                         PUSHL
  $83E4  0B                         LOADL_quick   ; inline operand = 11
  $83E5  72                         ADD_qimm   ; inline operand = 2
  $83E6  D3                         BYTE_DEREF
  $83E7  D0                         INC
  $83E8  B4                         POPR
  $83E9  BC                         SUB
  $83EA  29                         STORE_quick   ; inline operand = 9
  $83EB  0A                         LOADL_quick   ; inline operand = 10
  $83EC  73                         ADD_qimm   ; inline operand = 3
  $83ED  D3                         BYTE_DEREF
  $83EE  B3                         PUSHL
  $83EF  0B                         LOADL_quick   ; inline operand = 11
  $83F0  73                         ADD_qimm   ; inline operand = 3
  $83F1  D3                         BYTE_DEREF
  $83F2  D0                         INC
  $83F3  B4                         POPR
  $83F4  BC                         SUB
  $83F5  28                         STORE_quick   ; inline operand = 8
  $83F6  8E 9E 74                   PUSH_imm2              $749E
  $83F9  3C                         PUSH_quick   ; inline operand = 12
  $83FA  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $83FE  A8 A8 74                   STORE_abs              $74A8
  $8401  3C                         PUSH_quick   ; inline operand = 12
  $8402  E9 82 82 02                CALL_abs_imm1          $8282 {bytecode}, $02
  $8406  08                         LOADL_quick   ; inline operand = 8
  $8407  53                         LOADR_qimm   ; inline operand = 3
  $8408  B5                         MULT
  $8409  B3                         PUSHL
  $840A  09                         LOADL_quick   ; inline operand = 9
  $840B  55                         LOADR_qimm   ; inline operand = 5
  $840C  B5                         MULT
  $840D  B3                         PUSHL
  $840E  E9 3D 83 04                CALL_abs_imm1          $833D {bytecode}, $04
  $8412  8E 9E 74                   PUSH_imm2              $749E
  $8415  3D                         PUSH_quick   ; inline operand = 13
  $8416  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $841A  A8 A8 74                   STORE_abs              $74A8
  $841D  3D                         PUSH_quick   ; inline operand = 13
  $841E  E9 82 82 02                CALL_abs_imm1          $8282 {bytecode}, $02
  $8422  63                         PUSH_qimm   ; inline operand = 3
  $8423  65                         PUSH_qimm   ; inline operand = 5
  $8424  E9 3D 83 04                CALL_abs_imm1          $833D {bytecode}, $04
  $8428  CF                         RETURN

; ============================================================
; sub $8429   (frame_off=-18, body @ $842E)   [PRG $1C429]
; ============================================================
  $842E  8A A3 74                   LOADL_imm2             $74A3
  $8431  2B                         STORE_quick   ; inline operand = 11
  $8432  8A 9E 74                   LOADL_imm2             $749E
  $8435  2A                         STORE_quick   ; inline operand = 10
  $8436  A4 AA 74                   LOADL_abs              $74AA
  $8439  28                         STORE_quick   ; inline operand = 8
  $843A  A4 A8 74                   LOADL_abs              $74A8
  $843D  27                         STORE_quick   ; inline operand = 7
  $843E  A5 9E 74                   BYTE_LOADL_abs         $749E
  $8441  55                         LOADR_qimm   ; inline operand = 5
  $8442  C6                         UCMPLT
  $8443  D8 56 84                   JUMPF_abs              $8456
  $8446  8A 9E 74                   LOADL_imm2             $749E
  $8449  2B                         STORE_quick   ; inline operand = 11
  $844A  8A A3 74                   LOADL_imm2             $74A3
  $844D  2A                         STORE_quick   ; inline operand = 10
  $844E  A4 A8 74                   LOADL_abs              $74A8
  $8451  28                         STORE_quick   ; inline operand = 8
  $8452  A4 AA 74                   LOADL_abs              $74AA
  $8455  27                         STORE_quick   ; inline operand = 7
 >$8456  0B                         LOADL_quick   ; inline operand = 11
  $8457  18                         LOADR_quick   ; inline operand = 8
  $8458  BB                         ADD
  $8459  29                         STORE_quick   ; inline operand = 9
  $845A  D6 75 84                   JUMP_abs               $8475
 >$845D  0B                         LOADL_quick   ; inline operand = 11
  $845E  D3                         BYTE_DEREF
  $845F  8B 18                      BYTE_LOADR_imm1        +24
  $8461  B5                         MULT
  $8462  8C A4 6A                   LOADR_imm2             $6AA4
  $8465  BB                         ADD
  $8466  D3                         BYTE_DEREF
  $8467  D7 72 84                   JUMPT_abs              $8472
  $846A  0B                         LOADL_quick   ; inline operand = 11
  $846B  D3                         BYTE_DEREF
  $846C  A8 D2 74                   STORE_abs              $74D2
  $846F  D6 7B 84                   JUMP_abs               $847B
 >$8472  0B                         LOADL_quick   ; inline operand = 11
  $8473  D0                         INC
  $8474  2B                         STORE_quick   ; inline operand = 11
 >$8475  0B                         LOADL_quick   ; inline operand = 11
  $8476  19                         LOADR_quick   ; inline operand = 9
  $8477  C6                         UCMPLT
  $8478  D7 5D 84                   JUMPT_abs              $845D
 >$847B  40                         LOADL_qimm   ; inline operand = 0
  $847C  24                         STORE_quick   ; inline operand = 4
  $847D  26                         STORE_quick   ; inline operand = 6
  $847E  0A                         LOADL_quick   ; inline operand = 10
  $847F  17                         LOADR_quick   ; inline operand = 7
  $8480  BB                         ADD
  $8481  29                         STORE_quick   ; inline operand = 9
  $8482  D6 A5 84                   JUMP_abs               $84A5
 >$8485  0A                         LOADL_quick   ; inline operand = 10
  $8486  D3                         BYTE_DEREF
  $8487  57                         LOADR_qimm   ; inline operand = 7
  $8488  B5                         MULT
  $8489  8C 96 6C                   LOADR_imm2             $6C96
  $848C  BB                         ADD
  $848D  D3                         BYTE_DEREF
  $848E  5F                         LOADR_qimm   ; inline operand = 15
  $848F  DA                         AND
  $8490  D0                         INC
  $8491  25                         STORE_quick   ; inline operand = 5
  $8492  05                         LOADL_quick   ; inline operand = 5
  $8493  14                         LOADR_quick   ; inline operand = 4
  $8494  C8                         UCMPGT
  $8495  D8 9F 84                   JUMPF_abs              $849F
  $8498  05                         LOADL_quick   ; inline operand = 5
  $8499  24                         STORE_quick   ; inline operand = 4
  $849A  0A                         LOADL_quick   ; inline operand = 10
  $849B  D3                         BYTE_DEREF
  $849C  23                         STORE_quick   ; inline operand = 3
  $849D  06                         LOADL_quick   ; inline operand = 6
  $849E  28                         STORE_quick   ; inline operand = 8
 >$849F  06                         LOADL_quick   ; inline operand = 6
  $84A0  D0                         INC
  $84A1  26                         STORE_quick   ; inline operand = 6
  $84A2  0A                         LOADL_quick   ; inline operand = 10
  $84A3  D0                         INC
  $84A4  2A                         STORE_quick   ; inline operand = 10
 >$84A5  0A                         LOADL_quick   ; inline operand = 10
  $84A6  19                         LOADR_quick   ; inline operand = 9
  $84A7  C6                         UCMPLT
  $84A8  D7 85 84                   JUMPT_abs              $8485
  $84AB  03                         LOADL_quick   ; inline operand = 3
  $84AC  A8 D4 74                   STORE_abs              $74D4
  $84AF  CF                         RETURN

; ============================================================
; sub $84B0   (frame_off=-8, body @ $84B5)   [PRG $1C4B0]
; ============================================================
  $84B5  47                         LOADL_qimm   ; inline operand = 7
  $84B6  2A                         STORE_quick   ; inline operand = 10
  $84B7  43                         LOADL_qimm   ; inline operand = 3
  $84B8  29                         STORE_quick   ; inline operand = 9
  $84B9  41                         LOADL_qimm   ; inline operand = 1
  $84BA  28                         STORE_quick   ; inline operand = 8
  $84BB  8A 98 96                   LOADL_imm2             $9698
  $84BE  2B                         STORE_quick   ; inline operand = 11
  $84BF  0C                         LOADL_quick   ; inline operand = 12
  $84C0  D8 CE 84                   JUMPF_abs              $84CE
  $84C3  42                         LOADL_qimm   ; inline operand = 2
  $84C4  2A                         STORE_quick   ; inline operand = 10
  $84C5  89 12                      BYTE_LOADL_imm1        +18
  $84C7  29                         STORE_quick   ; inline operand = 9
  $84C8  42                         LOADL_qimm   ; inline operand = 2
  $84C9  28                         STORE_quick   ; inline operand = 8
  $84CA  8A 9F 96                   LOADL_imm2             $969F
  $84CD  2B                         STORE_quick   ; inline operand = 11
 >$84CE  60                         PUSH_qimm   ; inline operand = 0
  $84CF  38                         PUSH_quick   ; inline operand = 8
  $84D0  68                         PUSH_qimm   ; inline operand = 8
  $84D1  8D 17                      BYTE_PUSH_imm1         +23
  $84D3  39                         PUSH_quick   ; inline operand = 9
  $84D4  3A                         PUSH_quick   ; inline operand = 10
  $84D5  E9 3C A7 0C                CALL_abs_imm1          $A73C (native_draw_box) {native}, $0C
  $84D9  61                         PUSH_qimm   ; inline operand = 1
  $84DA  3B                         PUSH_quick   ; inline operand = 11
  $84DB  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $84DF  CF                         RETURN

; ============================================================
; sub $84E0   (frame_off=-6, body @ $84E5)   [PRG $1C4E0]
; ============================================================
  $84E5  48                         LOADL_qimm   ; inline operand = 8
  $84E6  2B                         STORE_quick   ; inline operand = 11
  $84E7  44                         LOADL_qimm   ; inline operand = 4
  $84E8  2A                         STORE_quick   ; inline operand = 10
  $84E9  0C                         LOADL_quick   ; inline operand = 12
  $84EA  D8 F2 84                   JUMPF_abs              $84F2
  $84ED  43                         LOADL_qimm   ; inline operand = 3
  $84EE  2B                         STORE_quick   ; inline operand = 11
  $84EF  89 13                      BYTE_LOADL_imm1        +19
  $84F1  2A                         STORE_quick   ; inline operand = 10
 >$84F2  3C                         PUSH_quick   ; inline operand = 12
  $84F3  E9 B0 84 02                CALL_abs_imm1          $84B0 {bytecode}, $02
  $84F7  3A                         PUSH_quick   ; inline operand = 10
  $84F8  3B                         PUSH_quick   ; inline operand = 11
  $84F9  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $84FD  61                         PUSH_qimm   ; inline operand = 1
  $84FE  3D                         PUSH_quick   ; inline operand = 13
  $84FF  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8503  CF                         RETURN

; ============================================================
; sub $8504   (frame_off=-2, body @ $8509)   [PRG $1C504]
; ============================================================
  $8509  0C                         LOADL_quick   ; inline operand = 12
  $850A  D8 11 85                   JUMPF_abs              $8511
  $850D  0C                         LOADL_quick   ; inline operand = 12
  $850E  D6 12 85                   JUMP_abs               $8512
 >$8511  0D                         LOADL_quick   ; inline operand = 13
 >$8512  2B                         STORE_quick   ; inline operand = 11
  $8513  A5 54 70                   BYTE_LOADL_abs         $7054
  $8516  53                         LOADR_qimm   ; inline operand = 3
  $8517  C0                         CMPEQ
  $8518  D8 21 85                   JUMPF_abs              $8521
  $851B  A5 5A 70                   BYTE_LOADL_abs         $705A
  $851E  1B                         LOADR_quick   ; inline operand = 11
  $851F  C0                         CMPEQ
  $8520  CF                         RETURN
 >$8521  A5 55 70                   BYTE_LOADL_abs         $7055
  $8524  1B                         LOADR_quick   ; inline operand = 11
  $8525  C0                         CMPEQ
  $8526  CF                         RETURN

; ============================================================
; sub $8527   (frame_off=-2, body @ $852C)   [PRG $1C527]
; ============================================================
  $852C  0C                         LOADL_quick   ; inline operand = 12
  $852D  D1                         DEC
  $852E  55                         LOADR_qimm   ; inline operand = 5
  $852F  B8                         UDIV
  $8530  2B                         STORE_quick   ; inline operand = 11
  $8531  0B                         LOADL_quick   ; inline operand = 11
  $8532  52                         LOADR_qimm   ; inline operand = 2
  $8533  C9                         UCMPGE
  $8534  D8 3E 85                   JUMPF_abs              $853E
  $8537  60                         PUSH_qimm   ; inline operand = 0
  $8538  8E 7E 99                   PUSH_imm2              $997E
  $853B  D6 42 85                   JUMP_abs               $8542
 >$853E  60                         PUSH_qimm   ; inline operand = 0
  $853F  8E 83 99                   PUSH_imm2              $9983
 >$8542  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8546  60                         PUSH_qimm   ; inline operand = 0
  $8547  0B                         LOADL_quick   ; inline operand = 11
  $8548  D2                         LSHIFT1
  $8549  8C 5B 99                   LOADR_imm2             $995B
  $854C  BB                         ADD
  $854D  B0                         DEREF
  $854E  B3                         PUSHL
  $854F  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8553  CF                         RETURN

; ============================================================
; sub $8554   (frame_off=-2, body @ $8559)   [PRG $1C554]
; ============================================================
  $8559  8D 10                      BYTE_PUSH_imm1         +16
  $855B  0C                         LOADL_quick   ; inline operand = 12
  $855C  D8 63 85                   JUMPF_abs              $8563
  $855F  0C                         LOADL_quick   ; inline operand = 12
  $8560  D6 64 85                   JUMP_abs               $8564
 >$8563  0D                         LOADL_quick   ; inline operand = 13
 >$8564  8F 14                      BYTE_ADD_imm1          +20
  $8566  B3                         PUSHL
  $8567  64                         PUSH_qimm   ; inline operand = 4
  $8568  62                         PUSH_qimm   ; inline operand = 2
  $8569  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $856D  A5 5F 70                   BYTE_LOADL_abs         $705F
  $8570  58                         LOADR_qimm   ; inline operand = 8
  $8571  DA                         AND
  $8572  D7 96 85                   JUMPT_abs              $8596
  $8575  A5 5F 70                   BYTE_LOADL_abs         $705F
  $8578  51                         LOADR_qimm   ; inline operand = 1
  $8579  DA                         AND
  $857A  D8 96 85                   JUMPF_abs              $8596
  $857D  A5 54 70                   BYTE_LOADL_abs         $7054
  $8580  51                         LOADR_qimm   ; inline operand = 1
  $8581  C8                         UCMPGT
  $8582  D8 96 85                   JUMPF_abs              $8596
  $8585  3D                         PUSH_quick   ; inline operand = 13
  $8586  3C                         PUSH_quick   ; inline operand = 12
  $8587  E9 04 85 04                CALL_abs_imm1          $8504 {bytecode}, $04
  $858B  D8 96 85                   JUMPF_abs              $8596
  $858E  40                         LOADL_qimm   ; inline operand = 0
  $858F  A9 5F 70                   BYTE_STORE_abs         $705F
  $8592  40                         LOADL_qimm   ; inline operand = 0
  $8593  A9 54 70                   BYTE_STORE_abs         $7054
 >$8596  A5 5F 70                   BYTE_LOADL_abs         $705F
  $8599  58                         LOADR_qimm   ; inline operand = 8
  $859A  DA                         AND
  $859B  D8 B9 85                   JUMPF_abs              $85B9
  $859E  A5 5F 70                   BYTE_LOADL_abs         $705F
  $85A1  52                         LOADR_qimm   ; inline operand = 2
  $85A2  DA                         AND
  $85A3  52                         LOADR_qimm   ; inline operand = 2
  $85A4  C0                         CMPEQ
  $85A5  D7 B9 85                   JUMPT_abs              $85B9
  $85A8  A5 54 70                   BYTE_LOADL_abs         $7054
  $85AB  51                         LOADR_qimm   ; inline operand = 1
  $85AC  C7                         UCMPLE
  $85AD  D7 B9 85                   JUMPT_abs              $85B9
  $85B0  3D                         PUSH_quick   ; inline operand = 13
  $85B1  3C                         PUSH_quick   ; inline operand = 12
  $85B2  E9 04 85 04                CALL_abs_imm1          $8504 {bytecode}, $04
  $85B6  D7 6E 86                   JUMPT_abs              $866E
 >$85B9  0C                         LOADL_quick   ; inline operand = 12
  $85BA  D8 19 86                   JUMPF_abs              $8619
  $85BD  8D 10                      BYTE_PUSH_imm1         +16
  $85BF  AC 91 D7                   CALL_abs               $D791 {native}
  $85C2  B3                         PUSHL
  $85C3  8D 13                      BYTE_PUSH_imm1         +19
  $85C5  8D 19                      BYTE_PUSH_imm1         +25
  $85C7  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $85CB  8E 89 99                   PUSH_imm2              $9989
  $85CE  61                         PUSH_qimm   ; inline operand = 1
  $85CF  E9 E0 84 04                CALL_abs_imm1          $84E0 {bytecode}, $04
  $85D3  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $85D6  8E AB 99                   PUSH_imm2              $99AB
  $85D9  60                         PUSH_qimm   ; inline operand = 0
  $85DA  E9 E0 84 04                CALL_abs_imm1          $84E0 {bytecode}, $04
  $85DE  60                         PUSH_qimm   ; inline operand = 0
  $85DF  8E AC 99                   PUSH_imm2              $99AC
  $85E2  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $85E6  0C                         LOADL_quick   ; inline operand = 12
  $85E7  8F 14                      BYTE_ADD_imm1          +20
  $85E9  57                         LOADR_qimm   ; inline operand = 7
  $85EA  B5                         MULT
  $85EB  8C 42 65                   LOADR_imm2             $6542
  $85EE  BB                         ADD
  $85EF  B0                         DEREF
  $85F0  B3                         PUSHL
  $85F1  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $85F5  AA A6 96                   PUSH_abs               $96A6
  $85F8  8E B2 99                   PUSH_imm2              $99B2
  $85FB  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $85FF  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $8602  8D 10                      BYTE_PUSH_imm1         +16
  $8604  60                         PUSH_qimm   ; inline operand = 0
  $8605  8D 13                      BYTE_PUSH_imm1         +19
  $8607  8D 19                      BYTE_PUSH_imm1         +25
  $8609  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $860D  AA A8 96                   PUSH_abs               $96A8
  $8610  61                         PUSH_qimm   ; inline operand = 1
 >$8611  E9 E0 84 04                CALL_abs_imm1          $84E0 {bytecode}, $04
 >$8615  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8618  CF                         RETURN
 >$8619  8D 10                      BYTE_PUSH_imm1         +16
  $861B  60                         PUSH_qimm   ; inline operand = 0
  $861C  8D 13                      BYTE_PUSH_imm1         +19
  $861E  8D 19                      BYTE_PUSH_imm1         +25
  $8620  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $8624  3D                         PUSH_quick   ; inline operand = 13
  $8625  E9 DA 80 02                CALL_abs_imm1          $80DA {bytecode}, $02
  $8629  D9 03 00 00 00 3A 86 01 00 4C 86 02 ... SWITCH_noncontig       count=3   ; .table 3 (key,target) + default (noncontiguous); SWITCH 0=>$863A 1=>$864C 2=>$865D default=>$8615
 >$863A  AA AA 96                   PUSH_abs               $96AA
  $863D  61                         PUSH_qimm   ; inline operand = 1
  $863E  E9 E0 84 04                CALL_abs_imm1          $84E0 {bytecode}, $04
  $8642  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8645  AA AC 96                   PUSH_abs               $96AC
 >$8648  60                         PUSH_qimm   ; inline operand = 0
  $8649  D6 11 86                   JUMP_abs               $8611
 >$864C  AA AE 96                   PUSH_abs               $96AE
  $864F  61                         PUSH_qimm   ; inline operand = 1
  $8650  E9 E0 84 04                CALL_abs_imm1          $84E0 {bytecode}, $04
  $8654  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8657  AA B0 96                   PUSH_abs               $96B0
  $865A  D6 48 86                   JUMP_abs               $8648
 >$865D  AA B2 96                   PUSH_abs               $96B2
  $8660  61                         PUSH_qimm   ; inline operand = 1
  $8661  E9 E0 84 04                CALL_abs_imm1          $84E0 {bytecode}, $04
  $8665  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8668  AA B4 96                   PUSH_abs               $96B4
  $866B  D6 48 86                   JUMP_abs               $8648
 >$866E  8D 10                      BYTE_PUSH_imm1         +16
  $8670  60                         PUSH_qimm   ; inline operand = 0
  $8671  8D 13                      BYTE_PUSH_imm1         +19
  $8673  8D 19                      BYTE_PUSH_imm1         +25
  $8675  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $8679  A5 54 70                   BYTE_LOADL_abs         $7054
  $867C  52                         LOADR_qimm   ; inline operand = 2
  $867D  C0                         CMPEQ
  $867E  D8 C3 86                   JUMPF_abs              $86C3
  $8681  8E B7 99                   PUSH_imm2              $99B7
  $8684  61                         PUSH_qimm   ; inline operand = 1
  $8685  E9 E0 84 04                CALL_abs_imm1          $84E0 {bytecode}, $04
  $8689  60                         PUSH_qimm   ; inline operand = 0
  $868A  8E B8 99                   PUSH_imm2              $99B8
  $868D  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8691  0C                         LOADL_quick   ; inline operand = 12
  $8692  D8 99 86                   JUMPF_abs              $8699
  $8695  0C                         LOADL_quick   ; inline operand = 12
  $8696  D6 9A 86                   JUMP_abs               $869A
 >$8699  0D                         LOADL_quick   ; inline operand = 13
 >$869A  8F 14                      BYTE_ADD_imm1          +20
  $869C  57                         LOADR_qimm   ; inline operand = 7
  $869D  B5                         MULT
  $869E  8C 42 65                   LOADR_imm2             $6542
  $86A1  BB                         ADD
  $86A2  B0                         DEREF
  $86A3  B3                         PUSHL
  $86A4  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $86A8  60                         PUSH_qimm   ; inline operand = 0
  $86A9  8E CB 99                   PUSH_imm2              $99CB
  $86AC  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $86B0  60                         PUSH_qimm   ; inline operand = 0
  $86B1  AA B6 96                   PUSH_abs               $96B6
  $86B4  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $86B8  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $86BB  AA B8 96                   PUSH_abs               $96B8
  $86BE  60                         PUSH_qimm   ; inline operand = 0
  $86BF  E9 E0 84 04                CALL_abs_imm1          $84E0 {bytecode}, $04
 >$86C3  A5 54 70                   BYTE_LOADL_abs         $7054
  $86C6  53                         LOADR_qimm   ; inline operand = 3
  $86C7  C0                         CMPEQ
  $86C8  D8 F2 86                   JUMPF_abs              $86F2
  $86CB  8E CE 99                   PUSH_imm2              $99CE
  $86CE  61                         PUSH_qimm   ; inline operand = 1
  $86CF  E9 E0 84 04                CALL_abs_imm1          $84E0 {bytecode}, $04
  $86D3  8D 1F                      BYTE_PUSH_imm1         +31
  $86D5  E9 50 D5 02                CALL_abs_imm1          $D550 {native}, $02
  $86D9  B3                         PUSHL
  $86DA  AA BC 96                   PUSH_abs               $96BC
  $86DD  AA BA 96                   PUSH_abs               $96BA
  $86E0  8E CF 99                   PUSH_imm2              $99CF
  $86E3  E9 19 C7 08                CALL_abs_imm1          $C719 {native}, $08
  $86E7  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $86EA  AA BE 96                   PUSH_abs               $96BE
  $86ED  60                         PUSH_qimm   ; inline operand = 0
  $86EE  E9 E0 84 04                CALL_abs_imm1          $84E0 {bytecode}, $04
 >$86F2  A5 54 70                   BYTE_LOADL_abs         $7054
  $86F5  54                         LOADR_qimm   ; inline operand = 4
  $86F6  C0                         CMPEQ
  $86F7  D8 45 87                   JUMPF_abs              $8745
  $86FA  AA C0 96                   PUSH_abs               $96C0
  $86FD  60                         PUSH_qimm   ; inline operand = 0
  $86FE  E9 E0 84 04                CALL_abs_imm1          $84E0 {bytecode}, $04
  $8702  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8705  AA C2 96                   PUSH_abs               $96C2
  $8708  61                         PUSH_qimm   ; inline operand = 1
  $8709  E9 E0 84 04                CALL_abs_imm1          $84E0 {bytecode}, $04
  $870D  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8710  8D 11                      BYTE_PUSH_imm1         +17
  $8712  6C                         PUSH_qimm   ; inline operand = 12
  $8713  64                         PUSH_qimm   ; inline operand = 4
  $8714  62                         PUSH_qimm   ; inline operand = 2
  $8715  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $8719  8E EA 99                   PUSH_imm2              $99EA
  $871C  60                         PUSH_qimm   ; inline operand = 0
  $871D  E9 E0 84 04                CALL_abs_imm1          $84E0 {bytecode}, $04
  $8721  60                         PUSH_qimm   ; inline operand = 0
  $8722  8E EB 99                   PUSH_imm2              $99EB
  $8725  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8729  AA 42 65                   PUSH_abs               $6542
  $872C  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8730  AA C4 96                   PUSH_abs               $96C4
  $8733  8E F1 99                   PUSH_imm2              $99F1
  $8736  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $873A  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $873D  AA C6 96                   PUSH_abs               $96C6
  $8740  61                         PUSH_qimm   ; inline operand = 1
  $8741  E9 E0 84 04                CALL_abs_imm1          $84E0 {bytecode}, $04
 >$8745  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8748  CF                         RETURN

; ============================================================
; sub $8749   (frame_off=+0, body @ $874E)   [PRG $1C749]
; ============================================================
  $874E  D6 75 87                   JUMP_abs               $8775
 >$8751  8D 10                      BYTE_PUSH_imm1         +16
  $8753  0C                         LOADL_quick   ; inline operand = 12
  $8754  D3                         BYTE_DEREF
  $8755  B3                         PUSHL
  $8756  8D 13                      BYTE_PUSH_imm1         +19
  $8758  8D 19                      BYTE_PUSH_imm1         +25
  $875A  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $875E  63                         PUSH_qimm   ; inline operand = 3
  $875F  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8763  D2                         LSHIFT1
  $8764  8C F7 99                   LOADR_imm2             $99F7
  $8767  BB                         ADD
  $8768  B0                         DEREF
  $8769  B3                         PUSHL
  $876A  61                         PUSH_qimm   ; inline operand = 1
  $876B  E9 E0 84 04                CALL_abs_imm1          $84E0 {bytecode}, $04
  $876F  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8772  0C                         LOADL_quick   ; inline operand = 12
  $8773  D0                         INC
  $8774  2C                         STORE_quick   ; inline operand = 12
 >$8775  0C                         LOADL_quick   ; inline operand = 12
  $8776  D3                         BYTE_DEREF
  $8777  8C FF 00                   LOADR_imm2             $00FF
  $877A  C1                         CMPNE
  $877B  D7 51 87                   JUMPT_abs              $8751
  $877E  CF                         RETURN

; ============================================================
; sub $877F   (frame_off=+0, body @ $8784)   [PRG $1C77F]
; ============================================================
  $8784  AC 37 CE                   CALL_abs               $CE37 {native}
  $8787  8E E0 00                   PUSH_imm2              $00E0
  $878A  8E BC A4                   PUSH_imm2              $A4BC
  $878D  8E FC A1                   PUSH_imm2              $A1FC
  $8790  8D 16                      BYTE_PUSH_imm1         +22
  $8792  8D 20                      BYTE_PUSH_imm1         +32
  $8794  60                         PUSH_qimm   ; inline operand = 0
  $8795  60                         PUSH_qimm   ; inline operand = 0
  $8796  69                         PUSH_qimm   ; inline operand = 9
  $8797  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $879B  8E E0 00                   PUSH_imm2              $00E0
  $879E  8E 9A A7                   PUSH_imm2              $A79A
  $87A1  8E 7C A7                   PUSH_imm2              $A77C
  $87A4  66                         PUSH_qimm   ; inline operand = 6
  $87A5  65                         PUSH_qimm   ; inline operand = 5
  $87A6  8D 16                      BYTE_PUSH_imm1         +22
  $87A8  62                         PUSH_qimm   ; inline operand = 2
  $87A9  69                         PUSH_qimm   ; inline operand = 9
  $87AA  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $87AE  8E E0 00                   PUSH_imm2              $00E0
  $87B1  8E D6 A7                   PUSH_imm2              $A7D6
  $87B4  8E B8 A7                   PUSH_imm2              $A7B8
  $87B7  66                         PUSH_qimm   ; inline operand = 6
  $87B8  65                         PUSH_qimm   ; inline operand = 5
  $87B9  8D 16                      BYTE_PUSH_imm1         +22
  $87BB  67                         PUSH_qimm   ; inline operand = 7
  $87BC  69                         PUSH_qimm   ; inline operand = 9
  $87BD  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $87C1  61                         PUSH_qimm   ; inline operand = 1
  $87C2  8E 61 9A                   PUSH_imm2              $9A61
  $87C5  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $87C9  CF                         RETURN

; ============================================================
; sub $87CA   (frame_off=-2, body @ $87CF)   [PRG $1C7CA]
; ============================================================
  $87CF  0F                         LOADL_quick   ; inline operand = 15
  $87D0  55                         LOADR_qimm   ; inline operand = 5
  $87D1  C6                         UCMPLT
  $87D2  D8 E3 87                   JUMPF_abs              $87E3
  $87D5  40                         LOADL_qimm   ; inline operand = 0
  $87D6  2B                         STORE_quick   ; inline operand = 11
  $87D7  0F                         LOADL_quick   ; inline operand = 15
  $87D8  A6 D2 74                   LOADR_abs              $74D2
  $87DB  C0                         CMPEQ
  $87DC  D8 EF 87                   JUMPF_abs              $87EF
  $87DF  41                         LOADL_qimm   ; inline operand = 1
  $87E0  D6 EE 87                   JUMP_abs               $87EE
 >$87E3  42                         LOADL_qimm   ; inline operand = 2
  $87E4  2B                         STORE_quick   ; inline operand = 11
  $87E5  0F                         LOADL_quick   ; inline operand = 15
  $87E6  A6 D4 74                   LOADR_abs              $74D4
  $87E9  C0                         CMPEQ
  $87EA  D8 EF 87                   JUMPF_abs              $87EF
  $87ED  43                         LOADL_qimm   ; inline operand = 3
 >$87EE  2B                         STORE_quick   ; inline operand = 11
 >$87EF  3E                         PUSH_quick   ; inline operand = 14
  $87F0  3B                         PUSH_quick   ; inline operand = 11
  $87F1  3D                         PUSH_quick   ; inline operand = 13
  $87F2  3C                         PUSH_quick   ; inline operand = 12
  $87F3  E9 96 DC 08                CALL_abs_imm1          $DC96 {native}, $08
  $87F7  CF                         RETURN

; ============================================================
; sub $87F8   (frame_off=-10, body @ $87FD)   [PRG $1C7F8]
; ============================================================
  $87FD  0D                         LOADL_quick   ; inline operand = 13
  $87FE  1C                         LOADR_quick   ; inline operand = 12
  $87FF  BB                         ADD
  $8800  2B                         STORE_quick   ; inline operand = 11
  $8801  D6 4D 88                   JUMP_abs               $884D
 >$8804  0D                         LOADL_quick   ; inline operand = 13
  $8805  D3                         BYTE_DEREF
  $8806  55                         LOADR_qimm   ; inline operand = 5
  $8807  BA                         UMOD
  $8808  B3                         PUSHL
  $8809  0D                         LOADL_quick   ; inline operand = 13
  $880A  D3                         BYTE_DEREF
  $880B  55                         LOADR_qimm   ; inline operand = 5
  $880C  C6                         UCMPLT
  $880D  D8 14 88                   JUMPF_abs              $8814
  $8810  40                         LOADL_qimm   ; inline operand = 0
  $8811  D6 15 88                   JUMP_abs               $8815
 >$8814  45                         LOADL_qimm   ; inline operand = 5
 >$8815  B4                         POPR
  $8816  BB                         ADD
  $8817  29                         STORE_quick   ; inline operand = 9
  $8818  09                         LOADL_quick   ; inline operand = 9
  $8819  8C AC 74                   LOADR_imm2             $74AC
  $881C  BB                         ADD
  $881D  D3                         BYTE_DEREF
  $881E  2A                         STORE_quick   ; inline operand = 10
  $881F  0A                         LOADL_quick   ; inline operand = 10
  $8820  5F                         LOADR_qimm   ; inline operand = 15
  $8821  BA                         UMOD
  $8822  28                         STORE_quick   ; inline operand = 8
  $8823  0A                         LOADL_quick   ; inline operand = 10
  $8824  5F                         LOADR_qimm   ; inline operand = 15
  $8825  B8                         UDIV
  $8826  27                         STORE_quick   ; inline operand = 7
  $8827  0D                         LOADL_quick   ; inline operand = 13
  $8828  D3                         BYTE_DEREF
  $8829  B3                         PUSHL
  $882A  09                         LOADL_quick   ; inline operand = 9
  $882B  8C B6 74                   LOADR_imm2             $74B6
  $882E  BB                         ADD
  $882F  D3                         BYTE_DEREF
  $8830  B3                         PUSHL
  $8831  07                         LOADL_quick   ; inline operand = 7
  $8832  D2                         LSHIFT1
  $8833  B3                         PUSHL
  $8834  08                         LOADL_quick   ; inline operand = 8
  $8835  52                         LOADR_qimm   ; inline operand = 2
  $8836  B9                         SMOD
  $8837  D8 3E 88                   JUMPF_abs              $883E
  $883A  43                         LOADL_qimm   ; inline operand = 3
  $883B  D6 3F 88                   JUMP_abs               $883F
 >$883E  42                         LOADL_qimm   ; inline operand = 2
 >$883F  B4                         POPR
  $8840  BB                         ADD
  $8841  B3                         PUSHL
  $8842  08                         LOADL_quick   ; inline operand = 8
  $8843  D2                         LSHIFT1
  $8844  D0                         INC
  $8845  B3                         PUSHL
  $8846  E9 CA 87 08                CALL_abs_imm1          $87CA {bytecode}, $08
  $884A  0D                         LOADL_quick   ; inline operand = 13
  $884B  D0                         INC
  $884C  2D                         STORE_quick   ; inline operand = 13
 >$884D  0D                         LOADL_quick   ; inline operand = 13
  $884E  1B                         LOADR_quick   ; inline operand = 11
  $884F  C6                         UCMPLT
  $8850  D7 04 88                   JUMPT_abs              $8804
  $8853  CF                         RETURN

; ============================================================
; sub $8854   (frame_off=-8, body @ $8859)   [PRG $1C854]
; ============================================================
  $8859  AC 7F 87                   CALL_abs               $877F {bytecode}
  $885C  40                         LOADL_qimm   ; inline operand = 0
  $885D  28                         STORE_quick   ; inline operand = 8
  $885E  29                         STORE_quick   ; inline operand = 9
  $885F  8A 17 74                   LOADL_imm2             $7417
  $8862  2B                         STORE_quick   ; inline operand = 11
  $8863  90 87 00                   ADD_imm2               $0087
  $8866  2A                         STORE_quick   ; inline operand = 10
  $8867  D6 97 88                   JUMP_abs               $8897
 >$886A  0B                         LOADL_quick   ; inline operand = 11
  $886B  D3                         BYTE_DEREF
  $886C  B3                         PUSHL
  $886D  08                         LOADL_quick   ; inline operand = 8
  $886E  D2                         LSHIFT1
  $886F  B3                         PUSHL
  $8870  09                         LOADL_quick   ; inline operand = 9
  $8871  52                         LOADR_qimm   ; inline operand = 2
  $8872  B9                         SMOD
  $8873  D8 7A 88                   JUMPF_abs              $887A
  $8876  43                         LOADL_qimm   ; inline operand = 3
  $8877  D6 7B 88                   JUMP_abs               $887B
 >$887A  42                         LOADL_qimm   ; inline operand = 2
 >$887B  B4                         POPR
  $887C  BB                         ADD
  $887D  B3                         PUSHL
  $887E  09                         LOADL_quick   ; inline operand = 9
  $887F  D2                         LSHIFT1
  $8880  D0                         INC
  $8881  B3                         PUSHL
  $8882  E9 C8 DC 06                CALL_abs_imm1          $DCC8 {native}, $06
  $8886  09                         LOADL_quick   ; inline operand = 9
  $8887  D0                         INC
  $8888  29                         STORE_quick   ; inline operand = 9
  $8889  09                         LOADL_quick   ; inline operand = 9
  $888A  5E                         LOADR_qimm   ; inline operand = 14
  $888B  C4                         SCMPGT
  $888C  D8 94 88                   JUMPF_abs              $8894
  $888F  40                         LOADL_qimm   ; inline operand = 0
  $8890  29                         STORE_quick   ; inline operand = 9
  $8891  08                         LOADL_quick   ; inline operand = 8
  $8892  D0                         INC
  $8893  28                         STORE_quick   ; inline operand = 8
 >$8894  0B                         LOADL_quick   ; inline operand = 11
  $8895  D0                         INC
  $8896  2B                         STORE_quick   ; inline operand = 11
 >$8897  0B                         LOADL_quick   ; inline operand = 11
  $8898  1A                         LOADR_quick   ; inline operand = 10
  $8899  C6                         UCMPLT
  $889A  D7 6A 88                   JUMPT_abs              $886A
  $889D  8E 9E 74                   PUSH_imm2              $749E
  $88A0  AA A8 74                   PUSH_abs               $74A8
  $88A3  E9 F8 87 04                CALL_abs_imm1          $87F8 {bytecode}, $04
  $88A7  8E A3 74                   PUSH_imm2              $74A3
  $88AA  AA AA 74                   PUSH_abs               $74AA
  $88AD  E9 F8 87 04                CALL_abs_imm1          $87F8 {bytecode}, $04
  $88B1  CF                         RETURN

; ============================================================
; sub $88B2   (frame_off=-2, body @ $88B7)   [PRG $1C8B2]
; ============================================================
  $88B7  A4 DC 74                   LOADL_abs              $74DC
  $88BA  D8 05 89                   JUMPF_abs              $8905
  $88BD  A5 8A 6B                   BYTE_LOADL_abs         $6B8A
  $88C0  52                         LOADR_qimm   ; inline operand = 2
  $88C1  C8                         UCMPGT
  $88C2  D8 D5 88                   JUMPF_abs              $88D5
  $88C5  A5 8A 6B                   BYTE_LOADL_abs         $6B8A
  $88C8  59                         LOADR_qimm   ; inline operand = 9
  $88C9  C6                         UCMPLT
  $88CA  D8 D5 88                   JUMPF_abs              $88D5
  $88CD  A5 82 70                   BYTE_LOADL_abs         $7082
  $88D0  54                         LOADR_qimm   ; inline operand = 4
  $88D1  BE                         URSHIFT
  $88D2  D6 D8 88                   JUMP_abs               $88D8
 >$88D5  A5 82 70                   BYTE_LOADL_abs         $7082
 >$88D8  5F                         LOADR_qimm   ; inline operand = 15
  $88D9  DA                         AND
  $88DA  2B                         STORE_quick   ; inline operand = 11
  $88DB  8E E0 00                   PUSH_imm2              $00E0
  $88DE  0B                         LOADL_quick   ; inline operand = 11
  $88DF  D2                         LSHIFT1
  $88E0  D2                         LSHIFT1
  $88E1  8C 6A 9A                   LOADR_imm2             $9A6A
  $88E4  BB                         ADD
  $88E5  B0                         DEREF
  $88E6  B3                         PUSHL
  $88E7  0B                         LOADL_quick   ; inline operand = 11
  $88E8  D2                         LSHIFT1
  $88E9  D2                         LSHIFT1
  $88EA  8C 68 9A                   LOADR_imm2             $9A68
  $88ED  BB                         ADD
  $88EE  B0                         DEREF
  $88EF  B3                         PUSHL
  $88F0  62                         PUSH_qimm   ; inline operand = 2
  $88F1  62                         PUSH_qimm   ; inline operand = 2
  $88F2  8D 18                      BYTE_PUSH_imm1         +24
  $88F4  63                         PUSH_qimm   ; inline operand = 3
  $88F5  69                         PUSH_qimm   ; inline operand = 9
  $88F6  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $88FA  AA DC 74                   PUSH_abs               $74DC
  $88FD  61                         PUSH_qimm   ; inline operand = 1
  $88FE  8D 16                      BYTE_PUSH_imm1         +22
  $8900  66                         PUSH_qimm   ; inline operand = 6
  $8901  E9 03 80 08                CALL_abs_imm1          $8003 {bytecode}, $08
 >$8905  CF                         RETURN

; ============================================================
; sub $8906   (frame_off=-2, body @ $890B)   [PRG $1C906]
; ============================================================
  $890B  0C                         LOADL_quick   ; inline operand = 12
  $890C  D8 11 89                   JUMPF_abs              $8911
  $890F  0C                         LOADL_quick   ; inline operand = 12
  $8910  2B                         STORE_quick   ; inline operand = 11
 >$8911  0D                         LOADL_quick   ; inline operand = 13
  $8912  D8 17 89                   JUMPF_abs              $8917
  $8915  0D                         LOADL_quick   ; inline operand = 13
  $8916  2B                         STORE_quick   ; inline operand = 11
 >$8917  6C                         PUSH_qimm   ; inline operand = 12
  $8918  62                         PUSH_qimm   ; inline operand = 2
  $8919  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $891D  60                         PUSH_qimm   ; inline operand = 0
  $891E  8E 88 9A                   PUSH_imm2              $9A88
  $8921  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8925  0B                         LOADL_quick   ; inline operand = 11
  $8926  8F 14                      BYTE_ADD_imm1          +20
  $8928  57                         LOADR_qimm   ; inline operand = 7
  $8929  B5                         MULT
  $892A  8C 42 65                   LOADR_imm2             $6542
  $892D  BB                         ADD
  $892E  B0                         DEREF
  $892F  B3                         PUSHL
  $8930  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8934  60                         PUSH_qimm   ; inline operand = 0
  $8935  8E 90 9A                   PUSH_imm2              $9A90
  $8938  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $893C  3B                         PUSH_quick   ; inline operand = 11
  $893D  E9 27 85 02                CALL_abs_imm1          $8527 {bytecode}, $02
  $8941  60                         PUSH_qimm   ; inline operand = 0
  $8942  8E 92 9A                   PUSH_imm2              $9A92
  $8945  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8949  6D                         PUSH_qimm   ; inline operand = 13
  $894A  6F                         PUSH_qimm   ; inline operand = 15
  $894B  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $894F  61                         PUSH_qimm   ; inline operand = 1
  $8950  8E 94 9A                   PUSH_imm2              $9A94
  $8953  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8957  8D 10                      BYTE_PUSH_imm1         +16
  $8959  68                         PUSH_qimm   ; inline operand = 8
  $895A  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $895E  60                         PUSH_qimm   ; inline operand = 0
  $895F  8E 98 9A                   PUSH_imm2              $9A98
  $8962  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8966  A5 74 6F                   BYTE_LOADL_abs         $6F74
  $8969  D2                         LSHIFT1
  $896A  8C 56 BC                   LOADR_imm2             $BC56
  $896D  BB                         ADD
  $896E  B3                         PUSHL
  $896F  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8973  B3                         PUSHL
  $8974  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8978  A5 74 6F                   BYTE_LOADL_abs         $6F74
  $897B  D8 85 89                   JUMPF_abs              $8985
  $897E  60                         PUSH_qimm   ; inline operand = 0
  $897F  8E 9A 9A                   PUSH_imm2              $9A9A
  $8982  D6 89 89                   JUMP_abs               $8989
 >$8985  60                         PUSH_qimm   ; inline operand = 0
  $8986  8E 9C 9A                   PUSH_imm2              $9A9C
 >$8989  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $898D  AA 42 65                   PUSH_abs               $6542
  $8990  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8994  60                         PUSH_qimm   ; inline operand = 0
  $8995  8E A5 9A                   PUSH_imm2              $9AA5
  $8998  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $899C  CF                         RETURN

; ============================================================
; sub $899D   (frame_off=-5, body @ $89A2)   [PRG $1C99D]
; ============================================================
  $89A2  8E FF 00                   PUSH_imm2              $00FF
  $89A5  65                         PUSH_qimm   ; inline operand = 5
  $89A6  DE FB FF                   LEAL_far               $FFFB
  $89A9  B3                         PUSHL
  $89AA  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $89AE  AC 37 CE                   CALL_abs               $CE37 {native}
  $89B1  6C                         PUSH_qimm   ; inline operand = 12
  $89B2  E9 8C E0 02                CALL_abs_imm1          $E08C {native}, $02
  $89B6  61                         PUSH_qimm   ; inline operand = 1
  $89B7  E9 C1 E0 02                CALL_abs_imm1          $E0C1 {native}, $02
  $89BB  DE FB FF                   LEAL_far               $FFFB
  $89BE  B3                         PUSHL
  $89BF  A5 9D 72                   BYTE_LOADL_abs         $729D
  $89C2  B3                         PUSHL
  $89C3  3C                         PUSH_quick   ; inline operand = 12
  $89C4  E9 F7 80 06                CALL_abs_imm1          $80F7 {bytecode}, $06
  $89C8  A5 9D 72                   BYTE_LOADL_abs         $729D
  $89CB  B3                         PUSHL
  $89CC  3C                         PUSH_quick   ; inline operand = 12
  $89CD  E9 B5 83 04                CALL_abs_imm1          $83B5 {bytecode}, $04
  $89D1  8E 9E 74                   PUSH_imm2              $749E
  $89D4  3C                         PUSH_quick   ; inline operand = 12
  $89D5  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $89D9  A8 A8 74                   STORE_abs              $74A8
  $89DC  8E A3 74                   PUSH_imm2              $74A3
  $89DF  A5 9D 72                   BYTE_LOADL_abs         $729D
  $89E2  B3                         PUSHL
  $89E3  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $89E7  A8 AA 74                   STORE_abs              $74AA
  $89EA  AC 29 84                   CALL_abs               $8429 {bytecode}
  $89ED  A5 9D 72                   BYTE_LOADL_abs         $729D
  $89F0  B3                         PUSHL
  $89F1  3C                         PUSH_quick   ; inline operand = 12
  $89F2  E9 06 89 04                CALL_abs_imm1          $8906 {bytecode}, $04
  $89F6  8D 10                      BYTE_PUSH_imm1         +16
  $89F8  60                         PUSH_qimm   ; inline operand = 0
  $89F9  8E 76 F3                   PUSH_imm2              $F376
  $89FC  66                         PUSH_qimm   ; inline operand = 6
  $89FD  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8A01  A5 9D 72                   BYTE_LOADL_abs         $729D
  $8A04  B3                         PUSHL
  $8A05  3C                         PUSH_quick   ; inline operand = 12
  $8A06  E9 54 85 04                CALL_abs_imm1          $8554 {bytecode}, $04
  $8A0A  DE FB FF                   LEAL_far               $FFFB
  $8A0D  B3                         PUSHL
  $8A0E  E9 49 87 02                CALL_abs_imm1          $8749 {bytecode}, $02
  $8A12  AC 75 A6                   CALL_abs               $A675 {native}
  $8A15  AC 89 A5                   CALL_abs               $A589 {native}
  $8A18  8E 9E 74                   PUSH_imm2              $749E
  $8A1B  3C                         PUSH_quick   ; inline operand = 12
  $8A1C  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $8A20  A8 A8 74                   STORE_abs              $74A8
  $8A23  8E A3 74                   PUSH_imm2              $74A3
  $8A26  A5 9D 72                   BYTE_LOADL_abs         $729D
  $8A29  B3                         PUSHL
  $8A2A  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $8A2E  A8 AA 74                   STORE_abs              $74AA
  $8A31  AC 54 88                   CALL_abs               $8854 {bytecode}
  $8A34  AC B2 88                   CALL_abs               $88B2 {bytecode}
  $8A37  A5 B6 74                   BYTE_LOADL_abs         $74B6
  $8A3A  A8 FA 75                   STORE_abs              $75FA
  $8A3D  8D 10                      BYTE_PUSH_imm1         +16
  $8A3F  60                         PUSH_qimm   ; inline operand = 0
  $8A40  8E A7 9A                   PUSH_imm2              $9AA7
  $8A43  66                         PUSH_qimm   ; inline operand = 6
  $8A44  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8A48  8D 10                      BYTE_PUSH_imm1         +16
  $8A4A  8D 10                      BYTE_PUSH_imm1         +16
  $8A4C  8E 76 F3                   PUSH_imm2              $F376
  $8A4F  66                         PUSH_qimm   ; inline operand = 6
  $8A50  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8A54  41                         LOADL_qimm   ; inline operand = 1
  $8A55  CF                         RETURN

; ============================================================
; sub $8A56   (frame_off=+0, body @ $8A5B)   [PRG $1CA56]
; ============================================================
  $8A5B  AC 75 A6                   CALL_abs               $A675 {native}
  $8A5E  AC 89 A5                   CALL_abs               $A589 {native}
  $8A61  AC 37 CE                   CALL_abs               $CE37 {native}
  $8A64  8D 10                      BYTE_PUSH_imm1         +16
  $8A66  60                         PUSH_qimm   ; inline operand = 0
  $8A67  8E 76 F3                   PUSH_imm2              $F376
  $8A6A  66                         PUSH_qimm   ; inline operand = 6
  $8A6B  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8A6F  8D 10                      BYTE_PUSH_imm1         +16
  $8A71  8D 10                      BYTE_PUSH_imm1         +16
  $8A73  8E 76 F3                   PUSH_imm2              $F376
  $8A76  66                         PUSH_qimm   ; inline operand = 6
  $8A77  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8A7B  CF                         RETURN

; ============================================================
; sub $8A7C   (frame_off=+0, body @ $8A81)   [PRG $1CA7C]
; ============================================================
  $8A81  8D 10                      BYTE_PUSH_imm1         +16
  $8A83  AC 91 D7                   CALL_abs               $D791 {native}
  $8A86  B3                         PUSHL
  $8A87  64                         PUSH_qimm   ; inline operand = 4
  $8A88  62                         PUSH_qimm   ; inline operand = 2
  $8A89  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $8A8D  AA FE 9A                   PUSH_abs               $9AFE
  $8A90  60                         PUSH_qimm   ; inline operand = 0
  $8A91  E9 E0 84 04                CALL_abs_imm1          $84E0 {bytecode}, $04
  $8A95  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8A98  8D 10                      BYTE_PUSH_imm1         +16
  $8A9A  0D                         LOADL_quick   ; inline operand = 13
  $8A9B  8F 14                      BYTE_ADD_imm1          +20
  $8A9D  B3                         PUSHL
  $8A9E  64                         PUSH_qimm   ; inline operand = 4
  $8A9F  62                         PUSH_qimm   ; inline operand = 2
  $8AA0  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $8AA4  AA 00 9B                   PUSH_abs               $9B00
  $8AA7  60                         PUSH_qimm   ; inline operand = 0
  $8AA8  E9 E0 84 04                CALL_abs_imm1          $84E0 {bytecode}, $04
  $8AAC  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8AAF  CF                         RETURN

; ============================================================
; sub $8AB0   (frame_off=-12, body @ $8AB5)   [PRG $1CAB0]
; ============================================================
  $8AB5  41                         LOADL_qimm   ; inline operand = 1
  $8AB6  26                         STORE_quick   ; inline operand = 6
  $8AB7  8A 42 65                   LOADL_imm2             $6542
  $8ABA  2A                         STORE_quick   ; inline operand = 10
  $8ABB  8D 10                      BYTE_PUSH_imm1         +16
  $8ABD  60                         PUSH_qimm   ; inline operand = 0
  $8ABE  8D 13                      BYTE_PUSH_imm1         +19
  $8AC0  8D 19                      BYTE_PUSH_imm1         +25
  $8AC2  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $8AC6  AA 02 9B                   PUSH_abs               $9B02
  $8AC9  61                         PUSH_qimm   ; inline operand = 1
  $8ACA  E9 E0 84 04                CALL_abs_imm1          $84E0 {bytecode}, $04
  $8ACE  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8AD1  8D 10                      BYTE_PUSH_imm1         +16
  $8AD3  AC 91 D7                   CALL_abs               $D791 {native}
  $8AD6  B3                         PUSHL
  $8AD7  64                         PUSH_qimm   ; inline operand = 4
  $8AD8  62                         PUSH_qimm   ; inline operand = 2
  $8AD9  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $8ADD  AA 04 9B                   PUSH_abs               $9B04
  $8AE0  60                         PUSH_qimm   ; inline operand = 0
  $8AE1  E9 E0 84 04                CALL_abs_imm1          $84E0 {bytecode}, $04
  $8AE5  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8AE8  8E 9E 74                   PUSH_imm2              $749E
  $8AEB  3C                         PUSH_quick   ; inline operand = 12
  $8AEC  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $8AF0  A8 A8 74                   STORE_abs              $74A8
  $8AF3  8A 9E 74                   LOADL_imm2             $749E
  $8AF6  28                         STORE_quick   ; inline operand = 8
  $8AF7  A6 A8 74                   LOADR_abs              $74A8
  $8AFA  BB                         ADD
  $8AFB  27                         STORE_quick   ; inline operand = 7
  $8AFC  D6 A5 8B                   JUMP_abs               $8BA5
 >$8AFF  08                         LOADL_quick   ; inline operand = 8
  $8B00  D3                         BYTE_DEREF
  $8B01  8B 18                      BYTE_LOADR_imm1        +24
  $8B03  B5                         MULT
  $8B04  8C A4 6A                   LOADR_imm2             $6AA4
  $8B07  BB                         ADD
  $8B08  2B                         STORE_quick   ; inline operand = 11
  $8B09  0B                         LOADL_quick   ; inline operand = 11
  $8B0A  D3                         BYTE_DEREF
  $8B0B  D8 A2 8B                   JUMPF_abs              $8BA2
  $8B0E  65                         PUSH_qimm   ; inline operand = 5
  $8B0F  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8B13  75                         ADD_qimm   ; inline operand = 5
  $8B14  B3                         PUSHL
  $8B15  0B                         LOADL_quick   ; inline operand = 11
  $8B16  8F 16                      BYTE_ADD_imm1          +22
  $8B18  D3                         BYTE_DEREF
  $8B19  B3                         PUSHL
  $8B1A  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8B1E  B3                         PUSHL
  $8B1F  0B                         LOADL_quick   ; inline operand = 11
  $8B20  8F 16                      BYTE_ADD_imm1          +22
  $8B22  B4                         POPR
  $8B23  B3                         PUSHL
  $8B24  D3                         BYTE_DEREF
  $8B25  BC                         SUB
  $8B26  D4                         BYTE_POPSTORE
  $8B27  0B                         LOADL_quick   ; inline operand = 11
  $8B28  D3                         BYTE_DEREF
  $8B29  57                         LOADR_qimm   ; inline operand = 7
  $8B2A  B5                         MULT
  $8B2B  8C 42 65                   LOADR_imm2             $6542
  $8B2E  BB                         ADD
  $8B2F  2A                         STORE_quick   ; inline operand = 10
  $8B30  0A                         LOADL_quick   ; inline operand = 10
  $8B31  73                         ADD_qimm   ; inline operand = 3
  $8B32  D3                         BYTE_DEREF
  $8B33  B3                         PUSHL
  $8B34  0A                         LOADL_quick   ; inline operand = 10
  $8B35  72                         ADD_qimm   ; inline operand = 2
  $8B36  D3                         BYTE_DEREF
  $8B37  B4                         POPR
  $8B38  BB                         ADD
  $8B39  8F 14                      BYTE_ADD_imm1          +20
  $8B3B  B3                         PUSHL
  $8B3C  8D 28                      BYTE_PUSH_imm1         +40
  $8B3E  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8B42  B4                         POPR
  $8B43  C8                         UCMPGT
  $8B44  D8 5E 8B                   JUMPF_abs              $8B5E
  $8B47  8E FE 00                   PUSH_imm2              $00FE
  $8B4A  0A                         LOADL_quick   ; inline operand = 10
  $8B4B  76                         ADD_qimm   ; inline operand = 6
  $8B4C  B4                         POPR
  $8B4D  B3                         PUSHL
  $8B4E  D3                         BYTE_DEREF
  $8B4F  DA                         AND
  $8B50  D4                         BYTE_POPSTORE
  $8B51  08                         LOADL_quick   ; inline operand = 8
  $8B52  D3                         BYTE_DEREF
  $8B53  57                         LOADR_qimm   ; inline operand = 7
  $8B54  B5                         MULT
  $8B55  8C 94 6C                   LOADR_imm2             $6C94
  $8B58  BB                         ADD
  $8B59  B3                         PUSHL
  $8B5A  40                         LOADL_qimm   ; inline operand = 0
  $8B5B  B1                         POPSTORE
  $8B5C  40                         LOADL_qimm   ; inline operand = 0
  $8B5D  26                         STORE_quick   ; inline operand = 6
 >$8B5E  0B                         LOADL_quick   ; inline operand = 11
  $8B5F  D3                         BYTE_DEREF
  $8B60  D1                         DEC
  $8B61  D2                         LSHIFT1
  $8B62  8C 6E 6A                   LOADR_imm2             $6A6E
  $8B65  BB                         ADD
  $8B66  29                         STORE_quick   ; inline operand = 9
  $8B67  09                         LOADL_quick   ; inline operand = 9
  $8B68  D3                         BYTE_DEREF
  $8B69  B3                         PUSHL
  $8B6A  8D 46                      BYTE_PUSH_imm1         +70
  $8B6C  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8B70  B4                         POPR
  $8B71  C8                         UCMPGT
  $8B72  D8 8D 8B                   JUMPF_abs              $8B8D
  $8B75  09                         LOADL_quick   ; inline operand = 9
  $8B76  D0                         INC
  $8B77  B3                         PUSHL
  $8B78  8D 14                      BYTE_PUSH_imm1         +20
  $8B7A  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8B7E  7E                         ADD_qimm   ; inline operand = 14
  $8B7F  D4                         BYTE_POPSTORE
  $8B80  08                         LOADL_quick   ; inline operand = 8
  $8B81  D3                         BYTE_DEREF
  $8B82  57                         LOADR_qimm   ; inline operand = 7
  $8B83  B5                         MULT
  $8B84  8C 94 6C                   LOADR_imm2             $6C94
  $8B87  BB                         ADD
  $8B88  B3                         PUSHL
  $8B89  40                         LOADL_qimm   ; inline operand = 0
  $8B8A  B1                         POPSTORE
  $8B8B  40                         LOADL_qimm   ; inline operand = 0
  $8B8C  26                         STORE_quick   ; inline operand = 6
 >$8B8D  65                         PUSH_qimm   ; inline operand = 5
  $8B8E  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8B92  75                         ADD_qimm   ; inline operand = 5
  $8B93  B3                         PUSHL
  $8B94  09                         LOADL_quick   ; inline operand = 9
  $8B95  D3                         BYTE_DEREF
  $8B96  B3                         PUSHL
  $8B97  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8B9B  B3                         PUSHL
  $8B9C  09                         LOADL_quick   ; inline operand = 9
  $8B9D  B4                         POPR
  $8B9E  B3                         PUSHL
  $8B9F  D3                         BYTE_DEREF
  $8BA0  BC                         SUB
  $8BA1  D4                         BYTE_POPSTORE
 >$8BA2  08                         LOADL_quick   ; inline operand = 8
  $8BA3  D0                         INC
  $8BA4  28                         STORE_quick   ; inline operand = 8
 >$8BA5  08                         LOADL_quick   ; inline operand = 8
  $8BA6  17                         LOADR_quick   ; inline operand = 7
  $8BA7  C6                         UCMPLT
  $8BA8  D7 FF 8A                   JUMPT_abs              $8AFF
  $8BAB  06                         LOADL_quick   ; inline operand = 6
  $8BAC  D8 B5 8B                   JUMPF_abs              $8BB5
  $8BAF  8E 25 9E                   PUSH_imm2              $9E25
  $8BB2  D6 B8 8B                   JUMP_abs               $8BB8
 >$8BB5  8E 3E 9E                   PUSH_imm2              $9E3E
 >$8BB8  60                         PUSH_qimm   ; inline operand = 0
  $8BB9  E9 E0 84 04                CALL_abs_imm1          $84E0 {bytecode}, $04
  $8BBD  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8BC0  AC 56 8A                   CALL_abs               $8A56 {bytecode}
  $8BC3  64                         PUSH_qimm   ; inline operand = 4
  $8BC4  8E FF 85                   PUSH_imm2              $85FF
  $8BC7  8E DE 00                   PUSH_imm2              $00DE
  $8BCA  61                         PUSH_qimm   ; inline operand = 1
  $8BCB  E9 3A DE 08                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $08
  $8BCF  60                         PUSH_qimm   ; inline operand = 0
  $8BD0  8E 7E 9E                   PUSH_imm2              $9E7E
  $8BD3  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8BD7  AA 42 65                   PUSH_abs               $6542
  $8BDA  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8BDE  60                         PUSH_qimm   ; inline operand = 0
  $8BDF  AA 12 9D                   PUSH_abs               $9D12
  $8BE2  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8BE6  8D 78                      BYTE_PUSH_imm1         +120
  $8BE8  E9 9B CE 02                CALL_abs_imm1          $CE9B {native}, $02
  $8BEC  AC 56 8A                   CALL_abs               $8A56 {bytecode}
  $8BEF  CF                         RETURN

; ============================================================
; sub $8BF0   (frame_off=-2, body @ $8BF5)   [PRG $1CBF0]
; ============================================================
  $8BF5  8D 10                      BYTE_PUSH_imm1         +16
  $8BF7  0D                         LOADL_quick   ; inline operand = 13
  $8BF8  8F 14                      BYTE_ADD_imm1          +20
  $8BFA  B3                         PUSHL
  $8BFB  64                         PUSH_qimm   ; inline operand = 4
  $8BFC  62                         PUSH_qimm   ; inline operand = 2
  $8BFD  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $8C01  3D                         PUSH_quick   ; inline operand = 13
  $8C02  E9 DA 80 02                CALL_abs_imm1          $80DA {bytecode}, $02
  $8C06  2B                         STORE_quick   ; inline operand = 11
  $8C07  0B                         LOADL_quick   ; inline operand = 11
  $8C08  D2                         LSHIFT1
  $8C09  8C B8 9A                   LOADR_imm2             $9AB8
  $8C0C  BB                         ADD
  $8C0D  B0                         DEREF
  $8C0E  B3                         PUSHL
  $8C0F  60                         PUSH_qimm   ; inline operand = 0
  $8C10  E9 E0 84 04                CALL_abs_imm1          $84E0 {bytecode}, $04
  $8C14  0B                         LOADL_quick   ; inline operand = 11
  $8C15  52                         LOADR_qimm   ; inline operand = 2
  $8C16  C0                         CMPEQ
  $8C17  D8 34 8C                   JUMPF_abs              $8C34
  $8C1A  0D                         LOADL_quick   ; inline operand = 13
  $8C1B  D1                         DEC
  $8C1C  55                         LOADR_qimm   ; inline operand = 5
  $8C1D  B8                         UDIV
  $8C1E  52                         LOADR_qimm   ; inline operand = 2
  $8C1F  C0                         CMPEQ
  $8C20  D8 29 8C                   JUMPF_abs              $8C29
  $8C23  8A 9D 9E                   LOADL_imm2             $9E9D
  $8C26  D6 2C 8C                   JUMP_abs               $8C2C
 >$8C29  8A A4 9E                   LOADL_imm2             $9EA4
 >$8C2C  B3                         PUSHL
  $8C2D  8E 80 9E                   PUSH_imm2              $9E80
  $8C30  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
 >$8C34  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8C37  63                         PUSH_qimm   ; inline operand = 3
  $8C38  8E FF 85                   PUSH_imm2              $85FF
  $8C3B  8E DE 00                   PUSH_imm2              $00DE
  $8C3E  61                         PUSH_qimm   ; inline operand = 1
  $8C3F  E9 3A DE 08                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $08
  $8C43  60                         PUSH_qimm   ; inline operand = 0
  $8C44  AA 0A 9D                   PUSH_abs               $9D0A
  $8C47  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8C4B  AA 42 65                   PUSH_abs               $6542
  $8C4E  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8C52  60                         PUSH_qimm   ; inline operand = 0
  $8C53  AA 0C 9D                   PUSH_abs               $9D0C
  $8C56  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8C5A  8D 78                      BYTE_PUSH_imm1         +120
  $8C5C  E9 9B CE 02                CALL_abs_imm1          $CE9B {native}, $02
  $8C60  AC 56 8A                   CALL_abs               $8A56 {bytecode}
  $8C63  CF                         RETURN

; ============================================================
; sub $8C64   (frame_off=+0, body @ $8C69)   [PRG $1CC64]
; ============================================================
  $8C69  A5 54 70                   BYTE_LOADL_abs         $7054
  $8C6C  53                         LOADR_qimm   ; inline operand = 3
  $8C6D  C0                         CMPEQ
  $8C6E  D8 77 8C                   JUMPF_abs              $8C77
  $8C71  A5 5A 70                   BYTE_LOADL_abs         $705A
  $8C74  1C                         LOADR_quick   ; inline operand = 12
  $8C75  C0                         CMPEQ
  $8C76  CF                         RETURN
 >$8C77  A5 55 70                   BYTE_LOADL_abs         $7055
  $8C7A  1C                         LOADR_quick   ; inline operand = 12
  $8C7B  C0                         CMPEQ
  $8C7C  CF                         RETURN

; ============================================================
; sub $8C7D   (frame_off=-6, body @ $8C82)   [PRG $1CC7D]
; ============================================================
  $8C82  8D 10                      BYTE_PUSH_imm1         +16
  $8C84  0D                         LOADL_quick   ; inline operand = 13
  $8C85  8F 14                      BYTE_ADD_imm1          +20
  $8C87  B3                         PUSHL
  $8C88  64                         PUSH_qimm   ; inline operand = 4
  $8C89  62                         PUSH_qimm   ; inline operand = 2
  $8C8A  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $8C8E  3D                         PUSH_quick   ; inline operand = 13
  $8C8F  E9 DA 80 02                CALL_abs_imm1          $80DA {bytecode}, $02
  $8C93  2A                         STORE_quick   ; inline operand = 10
  $8C94  0A                         LOADL_quick   ; inline operand = 10
  $8C95  D2                         LSHIFT1
  $8C96  8C F8 9A                   LOADR_imm2             $9AF8
  $8C99  BB                         ADD
  $8C9A  B0                         DEREF
  $8C9B  B3                         PUSHL
  $8C9C  60                         PUSH_qimm   ; inline operand = 0
  $8C9D  E9 E0 84 04                CALL_abs_imm1          $84E0 {bytecode}, $04
  $8CA1  0A                         LOADL_quick   ; inline operand = 10
  $8CA2  51                         LOADR_qimm   ; inline operand = 1
  $8CA3  C0                         CMPEQ
  $8CA4  D8 DD 8C                   JUMPF_abs              $8CDD
  $8CA7  60                         PUSH_qimm   ; inline operand = 0
  $8CA8  8E CC 9E                   PUSH_imm2              $9ECC
  $8CAB  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8CAF  0D                         LOADL_quick   ; inline operand = 13
  $8CB0  D1                         DEC
  $8CB1  55                         LOADR_qimm   ; inline operand = 5
  $8CB2  B8                         UDIV
  $8CB3  29                         STORE_quick   ; inline operand = 9
  $8CB4  09                         LOADL_quick   ; inline operand = 9
  $8CB5  53                         LOADR_qimm   ; inline operand = 3
  $8CB6  C6                         UCMPLT
  $8CB7  D8 D7 8C                   JUMPF_abs              $8CD7
  $8CBA  60                         PUSH_qimm   ; inline operand = 0
  $8CBB  8E E6 9E                   PUSH_imm2              $9EE6
  $8CBE  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8CC2  60                         PUSH_qimm   ; inline operand = 0
  $8CC3  09                         LOADL_quick   ; inline operand = 9
  $8CC4  D2                         LSHIFT1
  $8CC5  8C A9 9E                   LOADR_imm2             $9EA9
  $8CC8  BB                         ADD
  $8CC9  B0                         DEREF
  $8CCA  B3                         PUSHL
  $8CCB  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8CCF  60                         PUSH_qimm   ; inline operand = 0
  $8CD0  8E F2 9E                   PUSH_imm2              $9EF2
  $8CD3  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
 >$8CD7  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $8CDA  D6 E0 8C                   JUMP_abs               $8CE0
 >$8CDD  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
 >$8CE0  63                         PUSH_qimm   ; inline operand = 3
  $8CE1  8E FF 85                   PUSH_imm2              $85FF
  $8CE4  8E DE 00                   PUSH_imm2              $00DE
  $8CE7  61                         PUSH_qimm   ; inline operand = 1
  $8CE8  E9 3A DE 08                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $08
  $8CEC  60                         PUSH_qimm   ; inline operand = 0
  $8CED  AA 0E 9D                   PUSH_abs               $9D0E
  $8CF0  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8CF4  AA 42 65                   PUSH_abs               $6542
  $8CF7  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8CFB  60                         PUSH_qimm   ; inline operand = 0
  $8CFC  AA 10 9D                   PUSH_abs               $9D10
  $8CFF  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8D03  8D 78                      BYTE_PUSH_imm1         +120
  $8D05  E9 9B CE 02                CALL_abs_imm1          $CE9B {native}, $02
  $8D09  A5 5F 70                   BYTE_LOADL_abs         $705F
  $8D0C  5A                         LOADR_qimm   ; inline operand = 10
  $8D0D  DA                         AND
  $8D0E  58                         LOADR_qimm   ; inline operand = 8
  $8D0F  C0                         CMPEQ
  $8D10  D8 26 8E                   JUMPF_abs              $8E26
  $8D13  3D                         PUSH_quick   ; inline operand = 13
  $8D14  E9 64 8C 02                CALL_abs_imm1          $8C64 {bytecode}, $02
  $8D18  D8 26 8E                   JUMPF_abs              $8E26
  $8D1B  AC 56 8A                   CALL_abs               $8A56 {bytecode}
  $8D1E  8A 42 65                   LOADL_imm2             $6542
  $8D21  2B                         STORE_quick   ; inline operand = 11
  $8D22  8D 10                      BYTE_PUSH_imm1         +16
  $8D24  60                         PUSH_qimm   ; inline operand = 0
  $8D25  8D 13                      BYTE_PUSH_imm1         +19
  $8D27  8D 19                      BYTE_PUSH_imm1         +25
  $8D29  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $8D2D  A5 54 70                   BYTE_LOADL_abs         $7054
  $8D30  52                         LOADR_qimm   ; inline operand = 2
  $8D31  C0                         CMPEQ
  $8D32  D8 49 8D                   JUMPF_abs              $8D49
  $8D35  AA 06 9B                   PUSH_abs               $9B06
  $8D38  61                         PUSH_qimm   ; inline operand = 1
  $8D39  E9 E0 84 04                CALL_abs_imm1          $84E0 {bytecode}, $04
  $8D3D  42                         LOADL_qimm   ; inline operand = 2
  $8D3E  CD                         SWAP
  $8D3F  A5 5F 70                   BYTE_LOADL_abs         $705F
  $8D42  DB                         OR
  $8D43  A9 5F 70                   BYTE_STORE_abs         $705F
  $8D46  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
 >$8D49  A5 54 70                   BYTE_LOADL_abs         $7054
  $8D4C  53                         LOADR_qimm   ; inline operand = 3
  $8D4D  C0                         CMPEQ
  $8D4E  D8 65 8D                   JUMPF_abs              $8D65
  $8D51  8E F4 9E                   PUSH_imm2              $9EF4
  $8D54  61                         PUSH_qimm   ; inline operand = 1
  $8D55  E9 E0 84 04                CALL_abs_imm1          $84E0 {bytecode}, $04
  $8D59  42                         LOADL_qimm   ; inline operand = 2
  $8D5A  CD                         SWAP
  $8D5B  A5 5F 70                   BYTE_LOADL_abs         $705F
  $8D5E  DB                         OR
  $8D5F  A9 5F 70                   BYTE_STORE_abs         $705F
  $8D62  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
 >$8D65  A5 54 70                   BYTE_LOADL_abs         $7054
  $8D68  54                         LOADR_qimm   ; inline operand = 4
  $8D69  C0                         CMPEQ
  $8D6A  D8 34 8E                   JUMPF_abs              $8E34
  $8D6D  AA 08 9B                   PUSH_abs               $9B08
  $8D70  61                         PUSH_qimm   ; inline operand = 1
  $8D71  E9 E0 84 04                CALL_abs_imm1          $84E0 {bytecode}, $04
  $8D75  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8D78  8D 10                      BYTE_PUSH_imm1         +16
  $8D7A  AC 91 D7                   CALL_abs               $D791 {native}
  $8D7D  B3                         PUSHL
  $8D7E  64                         PUSH_qimm   ; inline operand = 4
  $8D7F  62                         PUSH_qimm   ; inline operand = 2
  $8D80  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $8D84  AA 0A 9B                   PUSH_abs               $9B0A
  $8D87  60                         PUSH_qimm   ; inline operand = 0
  $8D88  E9 E0 84 04                CALL_abs_imm1          $84E0 {bytecode}, $04
  $8D8C  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8D8F  AC 56 8A                   CALL_abs               $8A56 {bytecode}
  $8D92  61                         PUSH_qimm   ; inline operand = 1
  $8D93  8E FF 85                   PUSH_imm2              $85FF
  $8D96  8E DE 00                   PUSH_imm2              $00DE
  $8D99  61                         PUSH_qimm   ; inline operand = 1
  $8D9A  E9 3A DE 08                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $08
  $8D9E  60                         PUSH_qimm   ; inline operand = 0
  $8D9F  AA 16 9D                   PUSH_abs               $9D16
  $8DA2  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8DA6  AA 42 65                   PUSH_abs               $6542
  $8DA9  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8DAD  60                         PUSH_qimm   ; inline operand = 0
  $8DAE  AA 18 9D                   PUSH_abs               $9D18
  $8DB1  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8DB5  8D 78                      BYTE_PUSH_imm1         +120
  $8DB7  E9 9B CE 02                CALL_abs_imm1          $CE9B {native}, $02
  $8DBB  AC 56 8A                   CALL_abs               $8A56 {bytecode}
  $8DBE  8D 11                      BYTE_PUSH_imm1         +17
  $8DC0  6C                         PUSH_qimm   ; inline operand = 12
  $8DC1  64                         PUSH_qimm   ; inline operand = 4
  $8DC2  62                         PUSH_qimm   ; inline operand = 2
  $8DC3  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $8DC7  8E 14 9F                   PUSH_imm2              $9F14
  $8DCA  60                         PUSH_qimm   ; inline operand = 0
  $8DCB  E9 E0 84 04                CALL_abs_imm1          $84E0 {bytecode}, $04
  $8DCF  60                         PUSH_qimm   ; inline operand = 0
  $8DD0  8E 15 9F                   PUSH_imm2              $9F15
  $8DD3  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8DD7  AA 42 65                   PUSH_abs               $6542
  $8DDA  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8DDE  60                         PUSH_qimm   ; inline operand = 0
  $8DDF  AA 0C 9B                   PUSH_abs               $9B0C
  $8DE2  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8DE6  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $8DE9  8A 42 65                   LOADL_imm2             $6542
  $8DEC  2B                         STORE_quick   ; inline operand = 11
  $8DED  8D 10                      BYTE_PUSH_imm1         +16
  $8DEF  60                         PUSH_qimm   ; inline operand = 0
  $8DF0  8D 13                      BYTE_PUSH_imm1         +19
  $8DF2  8D 19                      BYTE_PUSH_imm1         +25
  $8DF4  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $8DF8  AA 0E 9B                   PUSH_abs               $9B0E
  $8DFB  61                         PUSH_qimm   ; inline operand = 1
  $8DFC  E9 E0 84 04                CALL_abs_imm1          $84E0 {bytecode}, $04
  $8E00  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8E03  8D 10                      BYTE_PUSH_imm1         +16
  $8E05  AC 91 D7                   CALL_abs               $D791 {native}
  $8E08  B3                         PUSHL
  $8E09  64                         PUSH_qimm   ; inline operand = 4
  $8E0A  62                         PUSH_qimm   ; inline operand = 2
  $8E0B  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $8E0F  AA 10 9B                   PUSH_abs               $9B10
  $8E12  60                         PUSH_qimm   ; inline operand = 0
  $8E13  E9 E0 84 04                CALL_abs_imm1          $84E0 {bytecode}, $04
  $8E17  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8E1A  42                         LOADL_qimm   ; inline operand = 2
  $8E1B  CD                         SWAP
  $8E1C  A5 5F 70                   BYTE_LOADL_abs         $705F
  $8E1F  DB                         OR
  $8E20  A9 5F 70                   BYTE_STORE_abs         $705F
  $8E23  D6 34 8E                   JUMP_abs               $8E34
 >$8E26  8D 7F                      BYTE_PUSH_imm1         +127
  $8E28  0D                         LOADL_quick   ; inline operand = 13
  $8E29  54                         LOADR_qimm   ; inline operand = 4
  $8E2A  BD                         LSHIFT
  $8E2B  8C 6F 66                   LOADR_imm2             $666F
  $8E2E  BB                         ADD
  $8E2F  B4                         POPR
  $8E30  B3                         PUSHL
  $8E31  B0                         DEREF
  $8E32  DA                         AND
  $8E33  B1                         POPSTORE
 >$8E34  8E FE 00                   PUSH_imm2              $00FE
  $8E37  0D                         LOADL_quick   ; inline operand = 13
  $8E38  8F 14                      BYTE_ADD_imm1          +20
  $8E3A  57                         LOADR_qimm   ; inline operand = 7
  $8E3B  B5                         MULT
  $8E3C  8C 48 65                   LOADR_imm2             $6548
  $8E3F  BB                         ADD
  $8E40  B4                         POPR
  $8E41  B3                         PUSHL
  $8E42  D3                         BYTE_DEREF
  $8E43  DA                         AND
  $8E44  D4                         BYTE_POPSTORE
  $8E45  68                         PUSH_qimm   ; inline operand = 8
  $8E46  0D                         LOADL_quick   ; inline operand = 13
  $8E47  54                         LOADR_qimm   ; inline operand = 4
  $8E48  BD                         LSHIFT
  $8E49  8C 71 66                   LOADR_imm2             $6671
  $8E4C  BB                         ADD
  $8E4D  B4                         POPR
  $8E4E  B3                         PUSHL
  $8E4F  D3                         BYTE_DEREF
  $8E50  DB                         OR
  $8E51  D4                         BYTE_POPSTORE
  $8E52  CF                         RETURN

; ============================================================
; sub $8E53   (frame_off=-2, body @ $8E58)   [PRG $1CE53]
; ============================================================
  $8E58  A5 68 70                   BYTE_LOADL_abs         $7068
  $8E5B  2B                         STORE_quick   ; inline operand = 11
  $8E5C  40                         LOADL_qimm   ; inline operand = 0
  $8E5D  A9 68 70                   BYTE_STORE_abs         $7068
  $8E60  60                         PUSH_qimm   ; inline operand = 0
  $8E61  8E 17 9F                   PUSH_imm2              $9F17
  $8E64  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8E68  AC 6D A3                   CALL_abs               $A36D {native}
  $8E6B  60                         PUSH_qimm   ; inline operand = 0
  $8E6C  8E 1C 9F                   PUSH_imm2              $9F1C
  $8E6F  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8E73  AC 9D A3                   CALL_abs               $A39D {native}
  $8E76  60                         PUSH_qimm   ; inline operand = 0
  $8E77  8E 1E 9F                   PUSH_imm2              $9F1E
  $8E7A  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8E7E  AC 40 A3                   CALL_abs               $A340 {native}
  $8E81  60                         PUSH_qimm   ; inline operand = 0
  $8E82  8E 21 9F                   PUSH_imm2              $9F21
  $8E85  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8E89  AA 42 65                   PUSH_abs               $6542
  $8E8C  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8E90  60                         PUSH_qimm   ; inline operand = 0
  $8E91  8E 2D 9F                   PUSH_imm2              $9F2D
  $8E94  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8E98  0B                         LOADL_quick   ; inline operand = 11
  $8E99  A9 68 70                   BYTE_STORE_abs         $7068
  $8E9C  CF                         RETURN

; ============================================================
; sub $8E9D   (frame_off=+0, body @ $8EA2)   [PRG $1CE9D]
; ============================================================
  $8EA2  65                         PUSH_qimm   ; inline operand = 5
  $8EA3  8E FF 85                   PUSH_imm2              $85FF
  $8EA6  8E DE 00                   PUSH_imm2              $00DE
  $8EA9  61                         PUSH_qimm   ; inline operand = 1
  $8EAA  E9 3A DE 08                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $08
  $8EAE  AC 53 8E                   CALL_abs               $8E53 {bytecode}
  $8EB1  60                         PUSH_qimm   ; inline operand = 0
  $8EB2  8E 30 9F                   PUSH_imm2              $9F30
  $8EB5  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8EB9  CF                         RETURN

; ============================================================
; sub $8EBA   (frame_off=-26, body @ $8EBF)   [PRG $1CEBA]
; ============================================================
  $8EBF  60                         PUSH_qimm   ; inline operand = 0
  $8EC0  8D 3A                      BYTE_PUSH_imm1         +58
  $8EC2  8E FC 75                   PUSH_imm2              $75FC
  $8EC5  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $8EC9  8E 9E 74                   PUSH_imm2              $749E
  $8ECC  3C                         PUSH_quick   ; inline operand = 12
  $8ECD  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $8ED1  A8 A8 74                   STORE_abs              $74A8
  $8ED4  8A 9E 74                   LOADL_imm2             $749E
  $8ED7  26                         STORE_quick   ; inline operand = 6
  $8ED8  A6 A8 74                   LOADR_abs              $74A8
  $8EDB  BB                         ADD
  $8EDC  25                         STORE_quick   ; inline operand = 5
  $8EDD  D6 E8 8F                   JUMP_abs               $8FE8
 >$8EE0  06                         LOADL_quick   ; inline operand = 6
  $8EE1  D3                         BYTE_DEREF
  $8EE2  57                         LOADR_qimm   ; inline operand = 7
  $8EE3  B5                         MULT
  $8EE4  8C 90 6C                   LOADR_imm2             $6C90
  $8EE7  BB                         ADD
  $8EE8  2B                         STORE_quick   ; inline operand = 11
  $8EE9  06                         LOADL_quick   ; inline operand = 6
  $8EEA  D3                         BYTE_DEREF
  $8EEB  8B 18                      BYTE_LOADR_imm1        +24
  $8EED  B5                         MULT
  $8EEE  8C A4 6A                   LOADR_imm2             $6AA4
  $8EF1  BB                         ADD
  $8EF2  D3                         BYTE_DEREF
  $8EF3  85 E6                      STORE_near             $E6
  $8EF5  81 E6                      LOADL_near             $E6
  $8EF7  D8 2D 8F                   JUMPF_abs              $8F2D
  $8EFA  8D 3C                      BYTE_PUSH_imm1         +60
  $8EFC  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8F00  B3                         PUSHL
  $8F01  81 E6                      LOADL_near             $E6
  $8F03  5A                         LOADR_qimm   ; inline operand = 10
  $8F04  B5                         MULT
  $8F05  8C C2 6B                   LOADR_imm2             $6BC2
  $8F08  BB                         ADD
  $8F09  D3                         BYTE_DEREF
  $8F0A  B4                         POPR
  $8F0B  C6                         UCMPLT
  $8F0C  D8 2D 8F                   JUMPF_abs              $8F2D
  $8F0F  81 E6                      LOADL_near             $E6
  $8F11  D1                         DEC
  $8F12  D2                         LSHIFT1
  $8F13  8C 6E 6A                   LOADR_imm2             $6A6E
  $8F16  BB                         ADD
  $8F17  28                         STORE_quick   ; inline operand = 8
  $8F18  65                         PUSH_qimm   ; inline operand = 5
  $8F19  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8F1D  78                         ADD_qimm   ; inline operand = 8
  $8F1E  B3                         PUSHL
  $8F1F  08                         LOADL_quick   ; inline operand = 8
  $8F20  D3                         BYTE_DEREF
  $8F21  B3                         PUSHL
  $8F22  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8F26  B3                         PUSHL
  $8F27  08                         LOADL_quick   ; inline operand = 8
  $8F28  B4                         POPR
  $8F29  B3                         PUSHL
  $8F2A  D3                         BYTE_DEREF
  $8F2B  BC                         SUB
  $8F2C  D4                         BYTE_POPSTORE
 >$8F2D  0B                         LOADL_quick   ; inline operand = 11
  $8F2E  74                         ADD_qimm   ; inline operand = 4
  $8F2F  B0                         DEREF
  $8F30  D8 38 8F                   JUMPF_abs              $8F38
  $8F33  0B                         LOADL_quick   ; inline operand = 11
  $8F34  D3                         BYTE_DEREF
  $8F35  D7 E5 8F                   JUMPT_abs              $8FE5
 >$8F38  06                         LOADL_quick   ; inline operand = 6
  $8F39  D3                         BYTE_DEREF
  $8F3A  8B 18                      BYTE_LOADR_imm1        +24
  $8F3C  B5                         MULT
  $8F3D  8C A4 6A                   LOADR_imm2             $6AA4
  $8F40  BB                         ADD
  $8F41  2A                         STORE_quick   ; inline operand = 10
  $8F42  0A                         LOADL_quick   ; inline operand = 10
  $8F43  8F 10                      BYTE_ADD_imm1          +16
  $8F45  B0                         DEREF
  $8F46  5A                         LOADR_qimm   ; inline operand = 10
  $8F47  B6                         SDIV
  $8F48  CD                         SWAP
  $8F49  A4 30 76                   LOADL_abs              $7630
  $8F4C  BB                         ADD
  $8F4D  A8 30 76                   STORE_abs              $7630
  $8F50  0A                         LOADL_quick   ; inline operand = 10
  $8F51  8F 12                      BYTE_ADD_imm1          +18
  $8F53  B0                         DEREF
  $8F54  5A                         LOADR_qimm   ; inline operand = 10
  $8F55  B6                         SDIV
  $8F56  CD                         SWAP
  $8F57  A4 32 76                   LOADL_abs              $7632
  $8F5A  BB                         ADD
  $8F5B  A8 32 76                   STORE_abs              $7632
  $8F5E  0A                         LOADL_quick   ; inline operand = 10
  $8F5F  8F 14                      BYTE_ADD_imm1          +20
  $8F61  B0                         DEREF
  $8F62  CD                         SWAP
  $8F63  A4 34 76                   LOADL_abs              $7634
  $8F66  BB                         ADD
  $8F67  A8 34 76                   STORE_abs              $7634
  $8F6A  0A                         LOADL_quick   ; inline operand = 10
  $8F6B  76                         ADD_qimm   ; inline operand = 6
  $8F6C  27                         STORE_quick   ; inline operand = 7
  $8F6D  0A                         LOADL_quick   ; inline operand = 10
  $8F6E  D0                         INC
  $8F6F  24                         STORE_quick   ; inline operand = 4
  $8F70  40                         LOADL_qimm   ; inline operand = 0
  $8F71  21                         STORE_quick   ; inline operand = 1
 >$8F72  01                         LOADL_quick   ; inline operand = 1
  $8F73  D2                         LSHIFT1
  $8F74  17                         LOADR_quick   ; inline operand = 7
  $8F75  BB                         ADD
  $8F76  B0                         DEREF
  $8F77  D8 8E 8F                   JUMPF_abs              $8F8E
  $8F7A  01                         LOADL_quick   ; inline operand = 1
  $8F7B  D2                         LSHIFT1
  $8F7C  17                         LOADR_quick   ; inline operand = 7
  $8F7D  BB                         ADD
  $8F7E  B0                         DEREF
  $8F7F  B3                         PUSHL
  $8F80  04                         LOADL_quick   ; inline operand = 4
  $8F81  11                         LOADR_quick   ; inline operand = 1
  $8F82  BB                         ADD
  $8F83  D3                         BYTE_DEREF
  $8F84  D2                         LSHIFT1
  $8F85  8C FC 75                   LOADR_imm2             $75FC
  $8F88  BB                         ADD
  $8F89  B4                         POPR
  $8F8A  B3                         PUSHL
  $8F8B  B0                         DEREF
  $8F8C  BB                         ADD
  $8F8D  B1                         POPSTORE
 >$8F8E  01                         LOADL_quick   ; inline operand = 1
  $8F8F  D0                         INC
  $8F90  21                         STORE_quick   ; inline operand = 1
  $8F91  01                         LOADL_quick   ; inline operand = 1
  $8F92  55                         LOADR_qimm   ; inline operand = 5
  $8F93  C6                         UCMPLT
  $8F94  D7 72 8F                   JUMPT_abs              $8F72
  $8F97  8A 9A 6A                   LOADL_imm2             $6A9A
  $8F9A  23                         STORE_quick   ; inline operand = 3
  $8F9B  22                         STORE_quick   ; inline operand = 2
  $8F9C  40                         LOADL_qimm   ; inline operand = 0
  $8F9D  D6 B6 8F                   JUMP_abs               $8FB6
 >$8FA0  0A                         LOADL_quick   ; inline operand = 10
  $8FA1  D3                         BYTE_DEREF
  $8FA2  B3                         PUSHL
  $8FA3  03                         LOADL_quick   ; inline operand = 3
  $8FA4  D3                         BYTE_DEREF
  $8FA5  B4                         POPR
  $8FA6  C1                         CMPNE
  $8FA7  D8 B1 8F                   JUMPF_abs              $8FB1
  $8FAA  32                         PUSH_quick   ; inline operand = 2
  $8FAB  03                         LOADL_quick   ; inline operand = 3
  $8FAC  D3                         BYTE_DEREF
  $8FAD  D4                         BYTE_POPSTORE
  $8FAE  02                         LOADL_quick   ; inline operand = 2
  $8FAF  D0                         INC
  $8FB0  22                         STORE_quick   ; inline operand = 2
 >$8FB1  03                         LOADL_quick   ; inline operand = 3
  $8FB2  D0                         INC
  $8FB3  23                         STORE_quick   ; inline operand = 3
  $8FB4  01                         LOADL_quick   ; inline operand = 1
  $8FB5  D0                         INC
 >$8FB6  21                         STORE_quick   ; inline operand = 1
  $8FB7  01                         LOADL_quick   ; inline operand = 1
  $8FB8  5A                         LOADR_qimm   ; inline operand = 10
  $8FB9  C6                         UCMPLT
  $8FBA  D8 C6 8F                   JUMPF_abs              $8FC6
  $8FBD  03                         LOADL_quick   ; inline operand = 3
  $8FBE  D3                         BYTE_DEREF
  $8FBF  8C FF 00                   LOADR_imm2             $00FF
  $8FC2  C1                         CMPNE
  $8FC3  D7 A0 8F                   JUMPT_abs              $8FA0
 >$8FC6  32                         PUSH_quick   ; inline operand = 2
  $8FC7  8A FF 00                   LOADL_imm2             $00FF
  $8FCA  D4                         BYTE_POPSTORE
  $8FCB  8E FE 00                   PUSH_imm2              $00FE
  $8FCE  0A                         LOADL_quick   ; inline operand = 10
  $8FCF  D3                         BYTE_DEREF
  $8FD0  57                         LOADR_qimm   ; inline operand = 7
  $8FD1  B5                         MULT
  $8FD2  8C 48 65                   LOADR_imm2             $6548
  $8FD5  BB                         ADD
  $8FD6  B4                         POPR
  $8FD7  B3                         PUSHL
  $8FD8  D3                         BYTE_DEREF
  $8FD9  DA                         AND
  $8FDA  D4                         BYTE_POPSTORE
  $8FDB  8E BF 00                   PUSH_imm2              $00BF
  $8FDE  0B                         LOADL_quick   ; inline operand = 11
  $8FDF  76                         ADD_qimm   ; inline operand = 6
  $8FE0  B4                         POPR
  $8FE1  B3                         PUSHL
  $8FE2  D3                         BYTE_DEREF
  $8FE3  DA                         AND
  $8FE4  D4                         BYTE_POPSTORE
 >$8FE5  06                         LOADL_quick   ; inline operand = 6
  $8FE6  D0                         INC
  $8FE7  26                         STORE_quick   ; inline operand = 6
 >$8FE8  06                         LOADL_quick   ; inline operand = 6
  $8FE9  15                         LOADR_quick   ; inline operand = 5
  $8FEA  C6                         UCMPLT
  $8FEB  D7 E0 8E                   JUMPT_abs              $8EE0
  $8FEE  8E A3 74                   PUSH_imm2              $74A3
  $8FF1  3D                         PUSH_quick   ; inline operand = 13
  $8FF2  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $8FF6  A8 AA 74                   STORE_abs              $74AA
  $8FF9  40                         LOADL_qimm   ; inline operand = 0
  $8FFA  20                         STORE_quick   ; inline operand = 0
  $8FFB  8A A3 74                   LOADL_imm2             $74A3
  $8FFE  26                         STORE_quick   ; inline operand = 6
  $8FFF  A6 AA 74                   LOADR_abs              $74AA
  $9002  BB                         ADD
  $9003  25                         STORE_quick   ; inline operand = 5
  $9004  D6 80 90                   JUMP_abs               $9080
 >$9007  06                         LOADL_quick   ; inline operand = 6
  $9008  D3                         BYTE_DEREF
  $9009  57                         LOADR_qimm   ; inline operand = 7
  $900A  B5                         MULT
  $900B  8C 90 6C                   LOADR_imm2             $6C90
  $900E  BB                         ADD
  $900F  2B                         STORE_quick   ; inline operand = 11
  $9010  0B                         LOADL_quick   ; inline operand = 11
  $9011  D3                         BYTE_DEREF
  $9012  D8 3C 90                   JUMPF_abs              $903C
  $9015  0B                         LOADL_quick   ; inline operand = 11
  $9016  74                         ADD_qimm   ; inline operand = 4
  $9017  B0                         DEREF
  $9018  D8 3C 90                   JUMPF_abs              $903C
  $901B  A5 E0 74                   BYTE_LOADL_abs         $74E0
  $901E  54                         LOADR_qimm   ; inline operand = 4
  $901F  C0                         CMPEQ
  $9020  D7 3C 90                   JUMPT_abs              $903C
  $9023  A5 E0 74                   BYTE_LOADL_abs         $74E0
  $9026  52                         LOADR_qimm   ; inline operand = 2
  $9027  C0                         CMPEQ
  $9028  D8 7D 90                   JUMPF_abs              $907D
  $902B  63                         PUSH_qimm   ; inline operand = 3
  $902C  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $9030  D7 7D 90                   JUMPT_abs              $907D
  $9033  06                         LOADL_quick   ; inline operand = 6
  $9034  D3                         BYTE_DEREF
  $9035  A6 D4 74                   LOADR_abs              $74D4
  $9038  C1                         CMPNE
  $9039  D8 7D 90                   JUMPF_abs              $907D
 >$903C  0B                         LOADL_quick   ; inline operand = 11
  $903D  D3                         BYTE_DEREF
  $903E  D8 4F 90                   JUMPF_abs              $904F
  $9041  0B                         LOADL_quick   ; inline operand = 11
  $9042  74                         ADD_qimm   ; inline operand = 4
  $9043  B0                         DEREF
  $9044  D8 4F 90                   JUMPF_abs              $904F
  $9047  A5 E0 74                   BYTE_LOADL_abs         $74E0
  $904A  54                         LOADR_qimm   ; inline operand = 4
  $904B  C0                         CMPEQ
  $904C  D8 73 90                   JUMPF_abs              $9073
 >$904F  06                         LOADL_quick   ; inline operand = 6
  $9050  D3                         BYTE_DEREF
  $9051  8F FB                      BYTE_ADD_imm1          -5
  $9053  53                         LOADR_qimm   ; inline operand = 3
  $9054  B5                         MULT
  $9055  8C 00 64                   LOADR_imm2             $6400
  $9058  BB                         ADD
  $9059  29                         STORE_quick   ; inline operand = 9
  $905A  09                         LOADL_quick   ; inline operand = 9
  $905B  D0                         INC
  $905C  B0                         DEREF
  $905D  D8 70 90                   JUMPF_abs              $9070
  $9060  09                         LOADL_quick   ; inline operand = 9
  $9061  D0                         INC
  $9062  B0                         DEREF
  $9063  B3                         PUSHL
  $9064  09                         LOADL_quick   ; inline operand = 9
  $9065  D3                         BYTE_DEREF
  $9066  D2                         LSHIFT1
  $9067  8C FC 75                   LOADR_imm2             $75FC
  $906A  BB                         ADD
  $906B  B4                         POPR
  $906C  B3                         PUSHL
  $906D  B0                         DEREF
  $906E  BB                         ADD
  $906F  B1                         POPSTORE
 >$9070  00                         LOADL_quick   ; inline operand = 0
  $9071  D0                         INC
  $9072  20                         STORE_quick   ; inline operand = 0
 >$9073  8E BF 00                   PUSH_imm2              $00BF
  $9076  0B                         LOADL_quick   ; inline operand = 11
  $9077  76                         ADD_qimm   ; inline operand = 6
  $9078  B4                         POPR
  $9079  B3                         PUSHL
  $907A  D3                         BYTE_DEREF
  $907B  DA                         AND
  $907C  D4                         BYTE_POPSTORE
 >$907D  06                         LOADL_quick   ; inline operand = 6
  $907E  D0                         INC
  $907F  26                         STORE_quick   ; inline operand = 6
 >$9080  06                         LOADL_quick   ; inline operand = 6
  $9081  15                         LOADR_quick   ; inline operand = 5
  $9082  C6                         UCMPLT
  $9083  D7 07 90                   JUMPT_abs              $9007
  $9086  8D 32                      BYTE_PUSH_imm1         +50
  $9088  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $908C  8F 1E                      BYTE_ADD_imm1          +30
  $908E  10                         LOADR_quick   ; inline operand = 0
  $908F  B5                         MULT
  $9090  CD                         SWAP
  $9091  A4 30 76                   LOADL_abs              $7630
  $9094  BB                         ADD
  $9095  A8 30 76                   STORE_abs              $7630
  $9098  8D 32                      BYTE_PUSH_imm1         +50
  $909A  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $909E  8F 1E                      BYTE_ADD_imm1          +30
  $90A0  10                         LOADR_quick   ; inline operand = 0
  $90A1  B5                         MULT
  $90A2  CD                         SWAP
  $90A3  A4 32 76                   LOADL_abs              $7632
  $90A6  BB                         ADD
  $90A7  A8 32 76                   STORE_abs              $7632
  $90AA  63                         PUSH_qimm   ; inline operand = 3
  $90AB  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $90AF  D0                         INC
  $90B0  10                         LOADR_quick   ; inline operand = 0
  $90B1  B5                         MULT
  $90B2  CD                         SWAP
  $90B3  A4 34 76                   LOADL_abs              $7634
  $90B6  BB                         ADD
  $90B7  A8 34 76                   STORE_abs              $7634
  $90BA  CF                         RETURN

; ============================================================
; sub $90BB   (frame_off=-6, body @ $90C0)   [PRG $1D0BB]
; ============================================================
  $90C0  40                         LOADL_qimm   ; inline operand = 0
  $90C1  2B                         STORE_quick   ; inline operand = 11
 >$90C2  0B                         LOADL_quick   ; inline operand = 11
  $90C3  2A                         STORE_quick   ; inline operand = 10
  $90C4  0C                         LOADL_quick   ; inline operand = 12
  $90C5  1B                         LOADR_quick   ; inline operand = 11
  $90C6  BB                         ADD
  $90C7  5F                         LOADR_qimm   ; inline operand = 15
  $90C8  C9                         UCMPGE
  $90C9  D8 E4 90                   JUMPF_abs              $90E4
  $90CC  0D                         LOADL_quick   ; inline operand = 13
  $90CD  B0                         DEREF
  $90CE  8C E0 2E                   LOADR_imm2             $2EE0
  $90D1  C9                         UCMPGE
  $90D2  D8 02 91                   JUMPF_abs              $9102
  $90D5  0B                         LOADL_quick   ; inline operand = 11
  $90D6  D0                         INC
  $90D7  2B                         STORE_quick   ; inline operand = 11
  $90D8  8E E0 2E                   PUSH_imm2              $2EE0
  $90DB  0D                         LOADL_quick   ; inline operand = 13
  $90DC  B4                         POPR
  $90DD  B3                         PUSHL
  $90DE  B0                         DEREF
  $90DF  BC                         SUB
  $90E0  B1                         POPSTORE
  $90E1  D6 02 91                   JUMP_abs               $9102
 >$90E4  0C                         LOADL_quick   ; inline operand = 12
  $90E5  1B                         LOADR_quick   ; inline operand = 11
  $90E6  BB                         ADD
  $90E7  B3                         PUSHL
  $90E8  0C                         LOADL_quick   ; inline operand = 12
  $90E9  1B                         LOADR_quick   ; inline operand = 11
  $90EA  BB                         ADD
  $90EB  B4                         POPR
  $90EC  B5                         MULT
  $90ED  8B 32                      BYTE_LOADR_imm1        +50
  $90EF  B5                         MULT
  $90F0  29                         STORE_quick   ; inline operand = 9
  $90F1  0D                         LOADL_quick   ; inline operand = 13
  $90F2  B0                         DEREF
  $90F3  19                         LOADR_quick   ; inline operand = 9
  $90F4  C8                         UCMPGT
  $90F5  D8 02 91                   JUMPF_abs              $9102
  $90F8  39                         PUSH_quick   ; inline operand = 9
  $90F9  0D                         LOADL_quick   ; inline operand = 13
  $90FA  B4                         POPR
  $90FB  B3                         PUSHL
  $90FC  B0                         DEREF
  $90FD  BC                         SUB
  $90FE  B1                         POPSTORE
  $90FF  0B                         LOADL_quick   ; inline operand = 11
  $9100  D0                         INC
  $9101  2B                         STORE_quick   ; inline operand = 11
 >$9102  0A                         LOADL_quick   ; inline operand = 10
  $9103  1B                         LOADR_quick   ; inline operand = 11
  $9104  C1                         CMPNE
  $9105  D7 C2 90                   JUMPT_abs              $90C2
  $9108  0C                         LOADL_quick   ; inline operand = 12
  $9109  1B                         LOADR_quick   ; inline operand = 11
  $910A  BB                         ADD
  $910B  8B 32                      BYTE_LOADR_imm1        +50
  $910D  C8                         UCMPGT
  $910E  D8 16 91                   JUMPF_abs              $9116
  $9111  89 32                      BYTE_LOADL_imm1        +50
  $9113  1C                         LOADR_quick   ; inline operand = 12
  $9114  BC                         SUB
  $9115  2B                         STORE_quick   ; inline operand = 11
 >$9116  0B                         LOADL_quick   ; inline operand = 11
  $9117  CF                         RETURN

; ============================================================
; sub $9118   (frame_off=-10, body @ $911D)   [PRG $1D118]
; ============================================================
  $911D  8A 6D 66                   LOADL_imm2             $666D
  $9120  27                         STORE_quick   ; inline operand = 7
  $9121  0C                         LOADL_quick   ; inline operand = 12
  $9122  54                         LOADR_qimm   ; inline operand = 4
  $9123  BD                         LSHIFT
  $9124  8C 6D 66                   LOADR_imm2             $666D
  $9127  BB                         ADD
  $9128  29                         STORE_quick   ; inline operand = 9
  $9129  40                         LOADL_qimm   ; inline operand = 0
  $912A  2B                         STORE_quick   ; inline operand = 11
  $912B  2A                         STORE_quick   ; inline operand = 10
  $912C  D6 63 91                   JUMP_abs               $9163
 >$912F  0B                         LOADL_quick   ; inline operand = 11
  $9130  5F                         LOADR_qimm   ; inline operand = 15
  $9131  DA                         AND
  $9132  B3                         PUSHL
  $9133  41                         LOADL_qimm   ; inline operand = 1
  $9134  B4                         POPR
  $9135  BD                         LSHIFT
  $9136  B3                         PUSHL
  $9137  0B                         LOADL_quick   ; inline operand = 11
  $9138  54                         LOADR_qimm   ; inline operand = 4
  $9139  BE                         URSHIFT
  $913A  D2                         LSHIFT1
  $913B  19                         LOADR_quick   ; inline operand = 9
  $913C  BB                         ADD
  $913D  B0                         DEREF
  $913E  B4                         POPR
  $913F  DA                         AND
  $9140  D8 60 91                   JUMPF_abs              $9160
  $9143  0B                         LOADL_quick   ; inline operand = 11
  $9144  5F                         LOADR_qimm   ; inline operand = 15
  $9145  DA                         AND
  $9146  B3                         PUSHL
  $9147  41                         LOADL_qimm   ; inline operand = 1
  $9148  B4                         POPR
  $9149  BD                         LSHIFT
  $914A  B3                         PUSHL
  $914B  0B                         LOADL_quick   ; inline operand = 11
  $914C  54                         LOADR_qimm   ; inline operand = 4
  $914D  BE                         URSHIFT
  $914E  D2                         LSHIFT1
  $914F  17                         LOADR_quick   ; inline operand = 7
  $9150  BB                         ADD
  $9151  B0                         DEREF
  $9152  B4                         POPR
  $9153  DA                         AND
  $9154  D7 60 91                   JUMPT_abs              $9160
  $9157  3D                         PUSH_quick   ; inline operand = 13
  $9158  0B                         LOADL_quick   ; inline operand = 11
  $9159  D4                         BYTE_POPSTORE
  $915A  0D                         LOADL_quick   ; inline operand = 13
  $915B  D0                         INC
  $915C  2D                         STORE_quick   ; inline operand = 13
  $915D  0A                         LOADL_quick   ; inline operand = 10
  $915E  D0                         INC
  $915F  2A                         STORE_quick   ; inline operand = 10
 >$9160  0B                         LOADL_quick   ; inline operand = 11
  $9161  D0                         INC
  $9162  2B                         STORE_quick   ; inline operand = 11
 >$9163  0B                         LOADL_quick   ; inline operand = 11
  $9164  8B 20                      BYTE_LOADR_imm1        +32
  $9166  C6                         UCMPLT
  $9167  D7 2F 91                   JUMPT_abs              $912F
  $916A  0A                         LOADL_quick   ; inline operand = 10
  $916B  CF                         RETURN

; ============================================================
; sub $916C   (frame_off=-2, body @ $9171)   [PRG $1D16C]
; ============================================================
 >$9171  60                         PUSH_qimm   ; inline operand = 0
  $9172  E9 A9 C4 02                CALL_abs_imm1          $C4A9 {native}, $02
  $9176  2B                         STORE_quick   ; inline operand = 11
  $9177  0B                         LOADL_quick   ; inline operand = 11
  $9178  51                         LOADR_qimm   ; inline operand = 1
  $9179  C0                         CMPEQ
  $917A  D8 8A 91                   JUMPF_abs              $918A
  $917D  60                         PUSH_qimm   ; inline operand = 0
  $917E  60                         PUSH_qimm   ; inline operand = 0
  $917F  6A                         PUSH_qimm   ; inline operand = 10
  $9180  6F                         PUSH_qimm   ; inline operand = 15
  $9181  6D                         PUSH_qimm   ; inline operand = 13
  $9182  6C                         PUSH_qimm   ; inline operand = 12
  $9183  68                         PUSH_qimm   ; inline operand = 8
  $9184  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $9188  41                         LOADL_qimm   ; inline operand = 1
  $9189  CF                         RETURN
 >$918A  0B                         LOADL_quick   ; inline operand = 11
  $918B  52                         LOADR_qimm   ; inline operand = 2
  $918C  C0                         CMPEQ
  $918D  D8 71 91                   JUMPF_abs              $9171
  $9190  AC 56 8A                   CALL_abs               $8A56 {bytecode}
  $9193  40                         LOADL_qimm   ; inline operand = 0
  $9194  CF                         RETURN

; ============================================================
; sub $9195   (frame_off=-18, body @ $919A)   [PRG $1D195]
; ============================================================
  $919A  8D 10                      BYTE_PUSH_imm1         +16
  $919C  AC 91 D7                   CALL_abs               $D791 {native}
  $919F  B3                         PUSHL
  $91A0  64                         PUSH_qimm   ; inline operand = 4
  $91A1  62                         PUSH_qimm   ; inline operand = 2
  $91A2  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $91A6  8E 59 9F                   PUSH_imm2              $9F59
  $91A9  60                         PUSH_qimm   ; inline operand = 0
  $91AA  E9 E0 84 04                CALL_abs_imm1          $84E0 {bytecode}, $04
  $91AE  8E E8 00                   PUSH_imm2              $00E8
  $91B1  8E 6A AF                   PUSH_imm2              $AF6A
  $91B4  8E AA AD                   PUSH_imm2              $ADAA
  $91B7  8D 10                      BYTE_PUSH_imm1         +16
  $91B9  8D 1C                      BYTE_PUSH_imm1         +28
  $91BB  6C                         PUSH_qimm   ; inline operand = 12
  $91BC  62                         PUSH_qimm   ; inline operand = 2
  $91BD  69                         PUSH_qimm   ; inline operand = 9
  $91BE  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $91C2  61                         PUSH_qimm   ; inline operand = 1
  $91C3  8E 6D 9F                   PUSH_imm2              $9F6D
  $91C6  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $91CA  43                         LOADL_qimm   ; inline operand = 3
  $91CB  29                         STORE_quick   ; inline operand = 9
  $91CC  4D                         LOADL_qimm   ; inline operand = 13
  $91CD  28                         STORE_quick   ; inline operand = 8
  $91CE  40                         LOADL_qimm   ; inline operand = 0
  $91CF  25                         STORE_quick   ; inline operand = 5
  $91D0  24                         STORE_quick   ; inline operand = 4
  $91D1  38                         PUSH_quick   ; inline operand = 8
  $91D2  09                         LOADL_quick   ; inline operand = 9
  $91D3  D0                         INC
  $91D4  B3                         PUSHL
  $91D5  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $91D9  0C                         LOADL_quick   ; inline operand = 12
  $91DA  D8 E7 91                   JUMPF_abs              $91E7
  $91DD  3C                         PUSH_quick   ; inline operand = 12
  $91DE  8E 74 9F                   PUSH_imm2              $9F74
  $91E1  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $91E5  41                         LOADL_qimm   ; inline operand = 1
  $91E6  24                         STORE_quick   ; inline operand = 4
 >$91E7  0D                         LOADL_quick   ; inline operand = 13
  $91E8  D8 AF 92                   JUMPF_abs              $92AF
  $91EB  04                         LOADL_quick   ; inline operand = 4
  $91EC  D2                         LSHIFT1
  $91ED  18                         LOADR_quick   ; inline operand = 8
  $91EE  BB                         ADD
  $91EF  B3                         PUSHL
  $91F0  09                         LOADL_quick   ; inline operand = 9
  $91F1  D0                         INC
  $91F2  B3                         PUSHL
  $91F3  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $91F7  61                         PUSH_qimm   ; inline operand = 1
  $91F8  8E 7D 9F                   PUSH_imm2              $9F7D
  $91FB  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $91FF  4B                         LOADL_qimm   ; inline operand = 11
  $9200  CD                         SWAP
  $9201  09                         LOADL_quick   ; inline operand = 9
  $9202  BB                         ADD
  $9203  29                         STORE_quick   ; inline operand = 9
  $9204  0D                         LOADL_quick   ; inline operand = 13
  $9205  57                         LOADR_qimm   ; inline operand = 7
  $9206  C8                         UCMPGT
  $9207  D7 18 92                   JUMPT_abs              $9218
  $920A  0C                         LOADL_quick   ; inline operand = 12
  $920B  D8 14 92                   JUMPF_abs              $9214
  $920E  0D                         LOADL_quick   ; inline operand = 13
  $920F  56                         LOADR_qimm   ; inline operand = 6
  $9210  C8                         UCMPGT
  $9211  D7 18 92                   JUMPT_abs              $9218
 >$9214  40                         LOADL_qimm   ; inline operand = 0
  $9215  D6 19 92                   JUMP_abs               $9219
 >$9218  41                         LOADL_qimm   ; inline operand = 1
 >$9219  23                         STORE_quick   ; inline operand = 3
  $921A  03                         LOADL_quick   ; inline operand = 3
  $921B  D8 2C 92                   JUMPF_abs              $922C
  $921E  66                         PUSH_qimm   ; inline operand = 6
  $921F  68                         PUSH_qimm   ; inline operand = 8
  $9220  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $9224  61                         PUSH_qimm   ; inline operand = 1
  $9225  8E 87 9F                   PUSH_imm2              $9F87
  $9228  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
 >$922C  0E                         LOADL_quick   ; inline operand = 14
  $922D  2B                         STORE_quick   ; inline operand = 11
  $922E  1D                         LOADR_quick   ; inline operand = 13
  $922F  BB                         ADD
  $9230  2A                         STORE_quick   ; inline operand = 10
  $9231  D6 77 92                   JUMP_abs               $9277
 >$9234  09                         LOADL_quick   ; inline operand = 9
  $9235  27                         STORE_quick   ; inline operand = 7
  $9236  04                         LOADL_quick   ; inline operand = 4
  $9237  D2                         LSHIFT1
  $9238  18                         LOADR_quick   ; inline operand = 8
  $9239  BB                         ADD
  $923A  26                         STORE_quick   ; inline operand = 6
  $923B  06                         LOADL_quick   ; inline operand = 6
  $923C  D0                         INC
  $923D  B3                         PUSHL
  $923E  37                         PUSH_quick   ; inline operand = 7
  $923F  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $9243  0B                         LOADL_quick   ; inline operand = 11
  $9244  D3                         BYTE_DEREF
  $9245  B3                         PUSHL
  $9246  E9 50 D5 02                CALL_abs_imm1          $D550 {native}, $02
  $924A  B3                         PUSHL
  $924B  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $924F  04                         LOADL_quick   ; inline operand = 4
  $9250  D0                         INC
  $9251  24                         STORE_quick   ; inline operand = 4
  $9252  04                         LOADL_quick   ; inline operand = 4
  $9253  56                         LOADR_qimm   ; inline operand = 6
  $9254  C8                         UCMPGT
  $9255  D8 74 92                   JUMPF_abs              $9274
  $9258  40                         LOADL_qimm   ; inline operand = 0
  $9259  24                         STORE_quick   ; inline operand = 4
  $925A  05                         LOADL_quick   ; inline operand = 5
  $925B  D0                         INC
  $925C  25                         STORE_quick   ; inline operand = 5
  $925D  05                         LOADL_quick   ; inline operand = 5
  $925E  51                         LOADR_qimm   ; inline operand = 1
  $925F  C8                         UCMPGT
  $9260  D8 74 92                   JUMPF_abs              $9274
  $9263  0C                         LOADL_quick   ; inline operand = 12
  $9264  D8 69 92                   JUMPF_abs              $9269
  $9267  41                         LOADL_qimm   ; inline operand = 1
  $9268  24                         STORE_quick   ; inline operand = 4
 >$9269  34                         PUSH_quick   ; inline operand = 4
  $926A  E9 6C 91 02                CALL_abs_imm1          $916C {bytecode}, $02
  $926E  D7 72 92                   JUMPT_abs              $9272
  $9271  CF                         RETURN
 >$9272  40                         LOADL_qimm   ; inline operand = 0
  $9273  25                         STORE_quick   ; inline operand = 5
 >$9274  0B                         LOADL_quick   ; inline operand = 11
  $9275  D0                         INC
  $9276  2B                         STORE_quick   ; inline operand = 11
 >$9277  0B                         LOADL_quick   ; inline operand = 11
  $9278  1A                         LOADR_quick   ; inline operand = 10
  $9279  C6                         UCMPLT
  $927A  D7 34 92                   JUMPT_abs              $9234
  $927D  03                         LOADL_quick   ; inline operand = 3
  $927E  D7 96 92                   JUMPT_abs              $9296
  $9281  64                         PUSH_qimm   ; inline operand = 4
  $9282  68                         PUSH_qimm   ; inline operand = 8
  $9283  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $9287  61                         PUSH_qimm   ; inline operand = 1
  $9288  8E 59 9F                   PUSH_imm2              $9F59
  $928B  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $928F  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $9292  AC 56 8A                   CALL_abs               $8A56 {bytecode}
  $9295  CF                         RETURN
 >$9296  40                         LOADL_qimm   ; inline operand = 0
  $9297  24                         STORE_quick   ; inline operand = 4
  $9298  25                         STORE_quick   ; inline operand = 5
  $9299  0C                         LOADL_quick   ; inline operand = 12
  $929A  D8 9F 92                   JUMPF_abs              $929F
  $929D  41                         LOADL_qimm   ; inline operand = 1
  $929E  24                         STORE_quick   ; inline operand = 4
 >$929F  34                         PUSH_quick   ; inline operand = 4
  $92A0  E9 6C 91 02                CALL_abs_imm1          $916C {bytecode}, $02
  $92A4  D7 A8 92                   JUMPT_abs              $92A8
  $92A7  CF                         RETURN
 >$92A8  41                         LOADL_qimm   ; inline operand = 1
  $92A9  D7 2C 92                   JUMPT_abs              $922C
  $92AC  D6 C3 92                   JUMP_abs               $92C3
 >$92AF  64                         PUSH_qimm   ; inline operand = 4
  $92B0  68                         PUSH_qimm   ; inline operand = 8
  $92B1  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $92B5  61                         PUSH_qimm   ; inline operand = 1
  $92B6  8E 59 9F                   PUSH_imm2              $9F59
  $92B9  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $92BD  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $92C0  AC 56 8A                   CALL_abs               $8A56 {bytecode}
 >$92C3  CF                         RETURN

; ============================================================
; sub $92C4   (frame_off=-56, body @ $92C9)   [PRG $1D2C4]
; ============================================================
  $92C9  AC 56 8A                   CALL_abs               $8A56 {bytecode}
  $92CC  3D                         PUSH_quick   ; inline operand = 13
  $92CD  3C                         PUSH_quick   ; inline operand = 12
  $92CE  E9 BA 8E 04                CALL_abs_imm1          $8EBA {bytecode}, $04
  $92D2  8E 9E 74                   PUSH_imm2              $749E
  $92D5  3C                         PUSH_quick   ; inline operand = 12
  $92D6  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $92DA  A8 A8 74                   STORE_abs              $74A8
  $92DD  8A 9E 74                   LOADL_imm2             $749E
  $92E0  29                         STORE_quick   ; inline operand = 9
  $92E1  A6 A8 74                   LOADR_abs              $74A8
  $92E4  BB                         ADD
  $92E5  28                         STORE_quick   ; inline operand = 8
  $92E6  D6 A6 93                   JUMP_abs               $93A6
 >$92E9  09                         LOADL_quick   ; inline operand = 9
  $92EA  D3                         BYTE_DEREF
  $92EB  8B 18                      BYTE_LOADR_imm1        +24
  $92ED  B5                         MULT
  $92EE  8C A4 6A                   LOADR_imm2             $6AA4
  $92F1  BB                         ADD
  $92F2  D3                         BYTE_DEREF
  $92F3  23                         STORE_quick   ; inline operand = 3
  $92F4  03                         LOADL_quick   ; inline operand = 3
  $92F5  57                         LOADR_qimm   ; inline operand = 7
  $92F6  B5                         MULT
  $92F7  8C 42 65                   LOADR_imm2             $6542
  $92FA  BB                         ADD
  $92FB  27                         STORE_quick   ; inline operand = 7
  $92FC  07                         LOADL_quick   ; inline operand = 7
  $92FD  72                         ADD_qimm   ; inline operand = 2
  $92FE  D3                         BYTE_DEREF
  $92FF  8B 32                      BYTE_LOADR_imm1        +50
  $9301  C6                         UCMPLT
  $9302  D8 99 93                   JUMPF_abs              $9399
  $9305  03                         LOADL_quick   ; inline operand = 3
  $9306  5A                         LOADR_qimm   ; inline operand = 10
  $9307  B5                         MULT
  $9308  8C BE 6B                   LOADR_imm2             $6BBE
  $930B  BB                         ADD
  $930C  26                         STORE_quick   ; inline operand = 6
  $930D  06                         LOADL_quick   ; inline operand = 6
  $930E  76                         ADD_qimm   ; inline operand = 6
  $930F  B3                         PUSHL
  $9310  07                         LOADL_quick   ; inline operand = 7
  $9311  72                         ADD_qimm   ; inline operand = 2
  $9312  D3                         BYTE_DEREF
  $9313  B3                         PUSHL
  $9314  E9 BB 90 04                CALL_abs_imm1          $90BB {bytecode}, $04
  $9318  25                         STORE_quick   ; inline operand = 5
  $9319  05                         LOADL_quick   ; inline operand = 5
  $931A  D8 A3 93                   JUMPF_abs              $93A3
  $931D  06                         LOADL_quick   ; inline operand = 6
  $931E  74                         ADD_qimm   ; inline operand = 4
  $931F  B3                         PUSHL
  $9320  8D 64                      BYTE_PUSH_imm1         +100
  $9322  06                         LOADL_quick   ; inline operand = 6
  $9323  74                         ADD_qimm   ; inline operand = 4
  $9324  D3                         BYTE_DEREF
  $9325  B3                         PUSHL
  $9326  05                         LOADL_quick   ; inline operand = 5
  $9327  D2                         LSHIFT1
  $9328  D2                         LSHIFT1
  $9329  B3                         PUSHL
  $932A  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $932E  B4                         POPR
  $932F  BB                         ADD
  $9330  B3                         PUSHL
  $9331  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $9335  D4                         BYTE_POPSTORE
  $9336  06                         LOADL_quick   ; inline operand = 6
  $9337  75                         ADD_qimm   ; inline operand = 5
  $9338  B3                         PUSHL
  $9339  8D 64                      BYTE_PUSH_imm1         +100
  $933B  06                         LOADL_quick   ; inline operand = 6
  $933C  75                         ADD_qimm   ; inline operand = 5
  $933D  D3                         BYTE_DEREF
  $933E  B3                         PUSHL
  $933F  05                         LOADL_quick   ; inline operand = 5
  $9340  D2                         LSHIFT1
  $9341  D2                         LSHIFT1
  $9342  B3                         PUSHL
  $9343  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $9347  B4                         POPR
  $9348  BB                         ADD
  $9349  B3                         PUSHL
  $934A  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $934E  D4                         BYTE_POPSTORE
  $934F  8D 10                      BYTE_PUSH_imm1         +16
  $9351  AC 91 D7                   CALL_abs               $D791 {native}
  $9354  B3                         PUSHL
  $9355  64                         PUSH_qimm   ; inline operand = 4
  $9356  62                         PUSH_qimm   ; inline operand = 2
  $9357  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $935B  8E 9E 9F                   PUSH_imm2              $9F9E
  $935E  60                         PUSH_qimm   ; inline operand = 0
  $935F  E9 E0 84 04                CALL_abs_imm1          $84E0 {bytecode}, $04
  $9363  60                         PUSH_qimm   ; inline operand = 0
  $9364  8E 9F 9F                   PUSH_imm2              $9F9F
  $9367  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $936B  03                         LOADL_quick   ; inline operand = 3
  $936C  D8 7D 93                   JUMPF_abs              $937D
  $936F  07                         LOADL_quick   ; inline operand = 7
  $9370  B0                         DEREF
  $9371  B3                         PUSHL
  $9372  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $9376  60                         PUSH_qimm   ; inline operand = 0
  $9377  8E A1 9F                   PUSH_imm2              $9FA1
  $937A  D6 81 93                   JUMP_abs               $9381
 >$937D  60                         PUSH_qimm   ; inline operand = 0
  $937E  8E A6 9F                   PUSH_imm2              $9FA6
 >$9381  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $9385  60                         PUSH_qimm   ; inline operand = 0
  $9386  8E B6 9F                   PUSH_imm2              $9FB6
  $9389  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $938D  05                         LOADL_quick   ; inline operand = 5
  $938E  B3                         PUSHL
  $938F  07                         LOADL_quick   ; inline operand = 7
  $9390  72                         ADD_qimm   ; inline operand = 2
  $9391  B4                         POPR
  $9392  B3                         PUSHL
  $9393  D3                         BYTE_DEREF
  $9394  BB                         ADD
  $9395  D4                         BYTE_POPSTORE
  $9396  D6 A3 93                   JUMP_abs               $93A3
 >$9399  03                         LOADL_quick   ; inline operand = 3
  $939A  5A                         LOADR_qimm   ; inline operand = 10
  $939B  B5                         MULT
  $939C  8C C4 6B                   LOADR_imm2             $6BC4
  $939F  BB                         ADD
  $93A0  B3                         PUSHL
  $93A1  40                         LOADL_qimm   ; inline operand = 0
  $93A2  B1                         POPSTORE
 >$93A3  09                         LOADL_quick   ; inline operand = 9
  $93A4  D0                         INC
  $93A5  29                         STORE_quick   ; inline operand = 9
 >$93A6  09                         LOADL_quick   ; inline operand = 9
  $93A7  18                         LOADR_quick   ; inline operand = 8
  $93A8  C6                         UCMPLT
  $93A9  D7 E9 92                   JUMPT_abs              $92E9
  $93AC  AC 56 8A                   CALL_abs               $8A56 {bytecode}
  $93AF  A5 E0 74                   BYTE_LOADL_abs         $74E0
  $93B2  52                         LOADR_qimm   ; inline operand = 2
  $93B3  C0                         CMPEQ
  $93B4  D7 BF 93                   JUMPT_abs              $93BF
  $93B7  A5 E0 74                   BYTE_LOADL_abs         $74E0
  $93BA  54                         LOADR_qimm   ; inline operand = 4
  $93BB  C0                         CMPEQ
  $93BC  D8 EB 94                   JUMPF_abs              $94EB
 >$93BF  63                         PUSH_qimm   ; inline operand = 3
  $93C0  8E FF 85                   PUSH_imm2              $85FF
  $93C3  8E DE 00                   PUSH_imm2              $00DE
  $93C6  61                         PUSH_qimm   ; inline operand = 1
  $93C7  E9 3A DE 08                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $08
  $93CB  AC 53 8E                   CALL_abs               $8E53 {bytecode}
  $93CE  60                         PUSH_qimm   ; inline operand = 0
  $93CF  8E D4 9F                   PUSH_imm2              $9FD4
  $93D2  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $93D6  8D 78                      BYTE_PUSH_imm1         +120
  $93D8  E9 9B CE 02                CALL_abs_imm1          $CE9B {native}, $02
  $93DC  0D                         LOADL_quick   ; inline operand = 13
  $93DD  D1                         DEC
  $93DE  55                         LOADR_qimm   ; inline operand = 5
  $93DF  B8                         UDIV
  $93E0  24                         STORE_quick   ; inline operand = 4
  $93E1  04                         LOADL_quick   ; inline operand = 4
  $93E2  D2                         LSHIFT1
  $93E3  D2                         LSHIFT1
  $93E4  8C BE 6F                   LOADR_imm2             $6FBE
  $93E7  BB                         ADD
  $93E8  B3                         PUSHL
  $93E9  8D 64                      BYTE_PUSH_imm1         +100
  $93EB  04                         LOADL_quick   ; inline operand = 4
  $93EC  D2                         LSHIFT1
  $93ED  D2                         LSHIFT1
  $93EE  8C BE 6F                   LOADR_imm2             $6FBE
  $93F1  BB                         ADD
  $93F2  D3                         BYTE_DEREF
  $93F3  B3                         PUSHL
  $93F4  65                         PUSH_qimm   ; inline operand = 5
  $93F5  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $93F9  B4                         POPR
  $93FA  BB                         ADD
  $93FB  7A                         ADD_qimm   ; inline operand = 10
  $93FC  B3                         PUSHL
  $93FD  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $9401  D4                         BYTE_POPSTORE
  $9402  04                         LOADL_quick   ; inline operand = 4
  $9403  D8 2A 94                   JUMPF_abs              $942A
  $9406  04                         LOADL_quick   ; inline operand = 4
  $9407  8C 9A 9F                   LOADR_imm2             $9F9A
  $940A  BB                         ADD
  $940B  D3                         BYTE_DEREF
  $940C  25                         STORE_quick   ; inline operand = 5
  $940D  6A                         PUSH_qimm   ; inline operand = 10
  $940E  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $9412  7A                         ADD_qimm   ; inline operand = 10
  $9413  B3                         PUSHL
  $9414  05                         LOADL_quick   ; inline operand = 5
  $9415  8C 8D 6B                   LOADR_imm2             $6B8D
  $9418  BB                         ADD
  $9419  D3                         BYTE_DEREF
  $941A  B3                         PUSHL
  $941B  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $941F  B3                         PUSHL
  $9420  05                         LOADL_quick   ; inline operand = 5
  $9421  8C 8D 6B                   LOADR_imm2             $6B8D
  $9424  BB                         ADD
  $9425  B4                         POPR
  $9426  B3                         PUSHL
  $9427  D3                         BYTE_DEREF
  $9428  BC                         SUB
  $9429  D4                         BYTE_POPSTORE
 >$942A  A5 E0 74                   BYTE_LOADL_abs         $74E0
  $942D  54                         LOADR_qimm   ; inline operand = 4
  $942E  C0                         CMPEQ
  $942F  D8 A5 94                   JUMPF_abs              $94A5
  $9432  0C                         LOADL_quick   ; inline operand = 12
  $9433  54                         LOADR_qimm   ; inline operand = 4
  $9434  BD                         LSHIFT
  $9435  8C 62 66                   LOADR_imm2             $6662
  $9438  BB                         ADD
  $9439  2B                         STORE_quick   ; inline operand = 11
  $943A  0D                         LOADL_quick   ; inline operand = 13
  $943B  54                         LOADR_qimm   ; inline operand = 4
  $943C  BD                         LSHIFT
  $943D  8C 62 66                   LOADR_imm2             $6662
  $9440  BB                         ADD
  $9441  2A                         STORE_quick   ; inline operand = 10
  $9442  0B                         LOADL_quick   ; inline operand = 11
  $9443  79                         ADD_qimm   ; inline operand = 9
  $9444  B0                         DEREF
  $9445  B3                         PUSHL
  $9446  8A 60 EA                   LOADL_imm2             $EA60
  $9449  B4                         POPR
  $944A  BC                         SUB
  $944B  B3                         PUSHL
  $944C  0A                         LOADL_quick   ; inline operand = 10
  $944D  79                         ADD_qimm   ; inline operand = 9
  $944E  B0                         DEREF
  $944F  B3                         PUSHL
  $9450  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $9454  85 C8                      STORE_near             $C8
  $9456  DE CE FF                   LEAL_far               $FFCE
  $9459  B3                         PUSHL
  $945A  3D                         PUSH_quick   ; inline operand = 13
  $945B  E9 18 91 04                CALL_abs_imm1          $9118 {bytecode}, $04
  $945F  25                         STORE_quick   ; inline operand = 5
  $9460  87 C8                      PUSH_near              $C8
  $9462  0B                         LOADL_quick   ; inline operand = 11
  $9463  79                         ADD_qimm   ; inline operand = 9
  $9464  B4                         POPR
  $9465  B3                         PUSHL
  $9466  B0                         DEREF
  $9467  BB                         ADD
  $9468  B1                         POPSTORE
  $9469  0A                         LOADL_quick   ; inline operand = 10
  $946A  7D                         ADD_qimm   ; inline operand = 13
  $946B  B0                         DEREF
  $946C  B3                         PUSHL
  $946D  0B                         LOADL_quick   ; inline operand = 11
  $946E  7D                         ADD_qimm   ; inline operand = 13
  $946F  B4                         POPR
  $9470  B3                         PUSHL
  $9471  B0                         DEREF
  $9472  DB                         OR
  $9473  B1                         POPSTORE
  $9474  0A                         LOADL_quick   ; inline operand = 10
  $9475  7B                         ADD_qimm   ; inline operand = 11
  $9476  B0                         DEREF
  $9477  B3                         PUSHL
  $9478  0B                         LOADL_quick   ; inline operand = 11
  $9479  7B                         ADD_qimm   ; inline operand = 11
  $947A  B4                         POPR
  $947B  B3                         PUSHL
  $947C  B0                         DEREF
  $947D  DB                         OR
  $947E  B1                         POPSTORE
  $947F  81 C8                      LOADL_near             $C8
  $9481  D7 88 94                   JUMPT_abs              $9488
  $9484  05                         LOADL_quick   ; inline operand = 5
  $9485  D8 96 94                   JUMPF_abs              $9496
 >$9488  AC 56 8A                   CALL_abs               $8A56 {bytecode}
  $948B  DE CE FF                   LEAL_far               $FFCE
  $948E  B3                         PUSHL
  $948F  35                         PUSH_quick   ; inline operand = 5
  $9490  87 C8                      PUSH_near              $C8
  $9492  E9 95 91 06                CALL_abs_imm1          $9195 {bytecode}, $06
 >$9496  0A                         LOADL_quick   ; inline operand = 10
  $9497  79                         ADD_qimm   ; inline operand = 9
  $9498  B3                         PUSHL
  $9499  40                         LOADL_qimm   ; inline operand = 0
  $949A  B1                         POPSTORE
  $949B  0A                         LOADL_quick   ; inline operand = 10
  $949C  7D                         ADD_qimm   ; inline operand = 13
  $949D  B3                         PUSHL
  $949E  40                         LOADL_qimm   ; inline operand = 0
  $949F  B1                         POPSTORE
  $94A0  0A                         LOADL_quick   ; inline operand = 10
  $94A1  7B                         ADD_qimm   ; inline operand = 11
  $94A2  B3                         PUSHL
  $94A3  40                         LOADL_qimm   ; inline operand = 0
  $94A4  B1                         POPSTORE
 >$94A5  8A FC 75                   LOADL_imm2             $75FC
  $94A8  85 CC                      STORE_near             $CC
  $94AA  8F 3A                      BYTE_ADD_imm1          +58
  $94AC  85 CA                      STORE_near             $CA
  $94AE  D6 E3 94                   JUMP_abs               $94E3
 >$94B1  81 CC                      LOADL_near             $CC
  $94B3  B0                         DEREF
  $94B4  D8 DE 94                   JUMPF_abs              $94DE
  $94B7  8E 9E 74                   PUSH_imm2              $749E
  $94BA  3C                         PUSH_quick   ; inline operand = 12
  $94BB  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $94BF  A8 A8 74                   STORE_abs              $74A8
  $94C2  AC 56 8A                   CALL_abs               $8A56 {bytecode}
  $94C5  61                         PUSH_qimm   ; inline operand = 1
  $94C6  8E F0 9F                   PUSH_imm2              $9FF0
  $94C9  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $94CD  8E FC 75                   PUSH_imm2              $75FC
  $94D0  8E 14 98                   PUSH_imm2              $9814
  $94D3  8E C0 00                   PUSH_imm2              $00C0
  $94D6  61                         PUSH_qimm   ; inline operand = 1
  $94D7  E9 3A DE 08                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $08
  $94DB  D6 EB 94                   JUMP_abs               $94EB
 >$94DE  81 CC                      LOADL_near             $CC
  $94E0  72                         ADD_qimm   ; inline operand = 2
  $94E1  85 CC                      STORE_near             $CC
 >$94E3  81 CC                      LOADL_near             $CC
  $94E5  83 CA                      LOADR_near             $CA
  $94E7  C6                         UCMPLT
  $94E8  D7 B1 94                   JUMPT_abs              $94B1
 >$94EB  CF                         RETURN

; ============================================================
; sub $94EC   (frame_off=-4, body @ $94F1)   [PRG $1D4EC]
; ============================================================
  $94F1  0C                         LOADL_quick   ; inline operand = 12
  $94F2  2B                         STORE_quick   ; inline operand = 11
  $94F3  0D                         LOADL_quick   ; inline operand = 13
  $94F4  2A                         STORE_quick   ; inline operand = 10
  $94F5  0C                         LOADL_quick   ; inline operand = 12
  $94F6  D8 FD 94                   JUMPF_abs              $94FD
  $94F9  0D                         LOADL_quick   ; inline operand = 13
  $94FA  2B                         STORE_quick   ; inline operand = 11
  $94FB  0C                         LOADL_quick   ; inline operand = 12
  $94FC  2A                         STORE_quick   ; inline operand = 10
 >$94FD  A5 E0 74                   BYTE_LOADL_abs         $74E0
  $9500  D5 FF FF 05 00 17 95 11 95 3E 95 47 ... SWITCH_contig          limit=5   ; .table 5 word targets (contiguous); SWITCH 1=>$9511 2=>$953E 3=>$9547 4=>$9550 5=>$9559 default=>$9517
 >$9511  3A                         PUSH_quick   ; inline operand = 10
  $9512  3B                         PUSH_quick   ; inline operand = 11
  $9513  E9 7C 8A 04                CALL_abs_imm1          $8A7C {bytecode}, $04
 >$9517  A5 E0 74                   BYTE_LOADL_abs         $74E0
  $951A  54                         LOADR_qimm   ; inline operand = 4
  $951B  C0                         CMPEQ
  $951C  D8 7B 95                   JUMPF_abs              $957B
  $951F  0A                         LOADL_quick   ; inline operand = 10
  $9520  D1                         DEC
  $9521  55                         LOADR_qimm   ; inline operand = 5
  $9522  B8                         UDIV
  $9523  D8 7B 95                   JUMPF_abs              $957B
  $9526  6A                         PUSH_qimm   ; inline operand = 10
  $9527  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $952B  5A                         LOADR_qimm   ; inline operand = 10
  $952C  B5                         MULT
  $952D  B3                         PUSHL
  $952E  3A                         PUSH_quick   ; inline operand = 10
  $952F  E9 DA 80 02                CALL_abs_imm1          $80DA {bytecode}, $02
  $9533  52                         LOADR_qimm   ; inline operand = 2
  $9534  C0                         CMPEQ
  $9535  D8 61 95                   JUMPF_abs              $9561
  $9538  8A C8 00                   LOADL_imm2             $00C8
  $953B  D6 64 95                   JUMP_abs               $9564
 >$953E  3A                         PUSH_quick   ; inline operand = 10
  $953F  3B                         PUSH_quick   ; inline operand = 11
  $9540  E9 F0 8B 04                CALL_abs_imm1          $8BF0 {bytecode}, $04
  $9544  D6 17 95                   JUMP_abs               $9517
 >$9547  3A                         PUSH_quick   ; inline operand = 10
  $9548  3B                         PUSH_quick   ; inline operand = 11
  $9549  E9 B0 8A 04                CALL_abs_imm1          $8AB0 {bytecode}, $04
  $954D  D6 17 95                   JUMP_abs               $9517
 >$9550  3A                         PUSH_quick   ; inline operand = 10
  $9551  3B                         PUSH_quick   ; inline operand = 11
  $9552  E9 7D 8C 04                CALL_abs_imm1          $8C7D {bytecode}, $04
  $9556  D6 17 95                   JUMP_abs               $9517
 >$9559  3A                         PUSH_quick   ; inline operand = 10
  $955A  3B                         PUSH_quick   ; inline operand = 11
  $955B  E9 9D 8E 04                CALL_abs_imm1          $8E9D {bytecode}, $04
  $955F  40                         LOADL_qimm   ; inline operand = 0
  $9560  CF                         RETURN
 >$9561  8A 58 02                   LOADL_imm2             $0258
 >$9564  B4                         POPR
  $9565  BB                         ADD
  $9566  B3                         PUSHL
  $9567  8A 50 C3                   LOADL_imm2             $C350
  $956A  A6 72 6F                   LOADR_abs              $6F72
  $956D  BC                         SUB
  $956E  B3                         PUSHL
  $956F  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $9573  CD                         SWAP
  $9574  A4 72 6F                   LOADL_abs              $6F72
  $9577  BB                         ADD
  $9578  A8 72 6F                   STORE_abs              $6F72
 >$957B  3A                         PUSH_quick   ; inline operand = 10
  $957C  3B                         PUSH_quick   ; inline operand = 11
  $957D  E9 C4 92 04                CALL_abs_imm1          $92C4 {bytecode}, $04
  $9581  41                         LOADL_qimm   ; inline operand = 1
  $9582  CF                         RETURN

; ============================================================
; sub $9583   (frame_off=+0, body @ $9588)   [PRG $1D583]
; ============================================================
  $9588  AC 56 8A                   CALL_abs               $8A56 {bytecode}
  $958B  A5 E0 74                   BYTE_LOADL_abs         $74E0
  $958E  51                         LOADR_qimm   ; inline operand = 1
  $958F  C8                         UCMPGT
  $9590  D8 B0 95                   JUMPF_abs              $95B0
  $9593  A5 E0 74                   BYTE_LOADL_abs         $74E0
  $9596  51                         LOADR_qimm   ; inline operand = 1
  $9597  DA                         AND
  $9598  D8 A5 95                   JUMPF_abs              $95A5
  $959B  8D 10                      BYTE_PUSH_imm1         +16
  $959D  E9 8C E0 02                CALL_abs_imm1          $E08C {native}, $02
  $95A1  60                         PUSH_qimm   ; inline operand = 0
  $95A2  D6 AC 95                   JUMP_abs               $95AC
 >$95A5  8D 11                      BYTE_PUSH_imm1         +17
  $95A7  E9 8C E0 02                CALL_abs_imm1          $E08C {native}, $02
  $95AB  61                         PUSH_qimm   ; inline operand = 1
 >$95AC  E9 C1 E0 02                CALL_abs_imm1          $E0C1 {native}, $02
 >$95B0  A5 9D 72                   BYTE_LOADL_abs         $729D
  $95B3  B3                         PUSHL
  $95B4  3C                         PUSH_quick   ; inline operand = 12
  $95B5  E9 EC 94 04                CALL_abs_imm1          $94EC {bytecode}, $04
  $95B9  D8 F2 95                   JUMPF_abs              $95F2
  $95BC  8A FF 00                   LOADL_imm2             $00FF
  $95BF  A9 68 70                   BYTE_STORE_abs         $7068
  $95C2  8A FF 00                   LOADL_imm2             $00FF
  $95C5  A9 65 72                   BYTE_STORE_abs         $7265
  $95C8  8A FF 00                   LOADL_imm2             $00FF
  $95CB  A9 66 72                   BYTE_STORE_abs         $7266
  $95CE  8A FF 00                   LOADL_imm2             $00FF
  $95D1  A9 62 72                   BYTE_STORE_abs         $7262
  $95D4  0C                         LOADL_quick   ; inline operand = 12
  $95D5  D8 DC 95                   JUMPF_abs              $95DC
  $95D8  0C                         LOADL_quick   ; inline operand = 12
  $95D9  D6 DF 95                   JUMP_abs               $95DF
 >$95DC  A5 9D 72                   BYTE_LOADL_abs         $729D
 >$95DF  B3                         PUSHL
  $95E0  E9 4B DB 02                CALL_abs_imm1          $DB4B {native}, $02
  $95E4  AC 56 8A                   CALL_abs               $8A56 {bytecode}
  $95E7  61                         PUSH_qimm   ; inline operand = 1
  $95E8  8E F7 9F                   PUSH_imm2              $9FF7
  $95EB  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $95EF  D6 F6 95                   JUMP_abs               $95F6
 >$95F2  44                         LOADL_qimm   ; inline operand = 4
  $95F3  A9 67 72                   BYTE_STORE_abs         $7267
 >$95F6  41                         LOADL_qimm   ; inline operand = 1
  $95F7  CF                         RETURN

