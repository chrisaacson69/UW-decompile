VM bytecode disassembly
  ROM:          Uncharted Waters (USA).nes
  mode:         bulk dump of bank 11
  opcode spec:  vm-opcodes-v2.toml via nobunaga_vm.OPCODE_INFO (execution-validated lengths)
  labels:       0 CPU addresses named

  bank 11: found 10 bytecode-subroutine stubs

; ============================================================
; sub $8003   (frame_off=+0, body @ $8008)   [PRG $16003]
; ============================================================
  $8008  60                         PUSH_qimm   ; inline operand = 0
  $8009  60                         PUSH_qimm   ; inline operand = 0
  $800A  60                         PUSH_qimm   ; inline operand = 0
  $800B  60                         PUSH_qimm   ; inline operand = 0
  $800C  8E 00 05                   PUSH_imm2              $0500
  $800F  6E                         PUSH_qimm   ; inline operand = 14
  $8010  E9 D4 EE 0C                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0C
  $8014  CF                         RETURN

; ============================================================
; sub $8015   (frame_off=-14, body @ $801A)   [PRG $16015]
; ============================================================
  $801A  0E                         LOADL_quick   ; inline operand = 14
  $801B  51                         LOADR_qimm   ; inline operand = 1
  $801C  C0                         CMPEQ
  $801D  D8 3C 80                   JUMPF_abs              $803C
  $8020  4A                         LOADL_qimm   ; inline operand = 10
  $8021  CD                         SWAP
  $8022  0F                         LOADL_quick   ; inline operand = 15
  $8023  BA                         UMOD
  $8024  2F                         STORE_quick   ; inline operand = 15
  $8025  8E E0 00                   PUSH_imm2              $00E0
  $8028  0F                         LOADL_quick   ; inline operand = 15
  $8029  D2                         LSHIFT1
  $802A  D2                         LSHIFT1
  $802B  8C 74 83                   LOADR_imm2             $8374
  $802E  BB                         ADD
  $802F  B0                         DEREF
  $8030  B3                         PUSHL
  $8031  0F                         LOADL_quick   ; inline operand = 15
  $8032  D2                         LSHIFT1
  $8033  D2                         LSHIFT1
  $8034  8C 72 83                   LOADR_imm2             $8372
  $8037  BB                         ADD
  $8038  B0                         DEREF
  $8039  D6 E1 80                   JUMP_abs               $80E1
 >$803C  0E                         LOADL_quick   ; inline operand = 14
  $803D  51                         LOADR_qimm   ; inline operand = 1
  $803E  C8                         UCMPGT
  $803F  D8 EB 80                   JUMPF_abs              $80EB
  $8042  0E                         LOADL_quick   ; inline operand = 14
  $8043  52                         LOADR_qimm   ; inline operand = 2
  $8044  C7                         UCMPLE
  $8045  D8 EB 80                   JUMPF_abs              $80EB
  $8048  8E FF 00                   PUSH_imm2              $00FF
  $804B  3E                         PUSH_quick   ; inline operand = 14
  $804C  DE F6 FF                   LEAL_far               $FFF6
  $804F  B3                         PUSHL
  $8050  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $8054  0E                         LOADL_quick   ; inline operand = 14
  $8055  D6 6A 80                   JUMP_abs               $806A
 >$8058  DE F6 FF                   LEAL_far               $FFF6
  $805B  B3                         PUSHL
  $805C  05                         LOADL_quick   ; inline operand = 5
  $805D  B4                         POPR
  $805E  BB                         ADD
  $805F  B3                         PUSHL
  $8060  0F                         LOADL_quick   ; inline operand = 15
  $8061  5A                         LOADR_qimm   ; inline operand = 10
  $8062  BA                         UMOD
  $8063  D4                         BYTE_POPSTORE
  $8064  4A                         LOADL_qimm   ; inline operand = 10
  $8065  CD                         SWAP
  $8066  0F                         LOADL_quick   ; inline operand = 15
  $8067  B8                         UDIV
  $8068  2F                         STORE_quick   ; inline operand = 15
  $8069  05                         LOADL_quick   ; inline operand = 5
 >$806A  D1                         DEC
  $806B  25                         STORE_quick   ; inline operand = 5
  $806C  0F                         LOADL_quick   ; inline operand = 15
  $806D  D8 77 80                   JUMPF_abs              $8077
  $8070  05                         LOADL_quick   ; inline operand = 5
  $8071  8B FF                      BYTE_LOADR_imm1        -1
  $8073  C4                         SCMPGT
  $8074  D7 58 80                   JUMPT_abs              $8058
 >$8077  DE FE FF                   LEAL_far               $FFFE
  $807A  29                         STORE_quick   ; inline operand = 9
  $807B  DE FC FF                   LEAL_far               $FFFC
  $807E  28                         STORE_quick   ; inline operand = 8
  $807F  60                         PUSH_qimm   ; inline operand = 0
  $8080  3E                         PUSH_quick   ; inline operand = 14
  $8081  39                         PUSH_quick   ; inline operand = 9
  $8082  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $8086  60                         PUSH_qimm   ; inline operand = 0
  $8087  3E                         PUSH_quick   ; inline operand = 14
  $8088  38                         PUSH_quick   ; inline operand = 8
  $8089  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $808D  40                         LOADL_qimm   ; inline operand = 0
  $808E  D6 D0 80                   JUMP_abs               $80D0
 >$8091  DE F6 FF                   LEAL_far               $FFF6
  $8094  B3                         PUSHL
  $8095  05                         LOADL_quick   ; inline operand = 5
  $8096  B4                         POPR
  $8097  BB                         ADD
  $8098  D3                         BYTE_DEREF
  $8099  26                         STORE_quick   ; inline operand = 6
  $809A  06                         LOADL_quick   ; inline operand = 6
  $809B  8C FF 00                   LOADR_imm2             $00FF
  $809E  C0                         CMPEQ
  $809F  D7 C8 80                   JUMPT_abs              $80C8
  $80A2  61                         PUSH_qimm   ; inline operand = 1
  $80A3  39                         PUSH_quick   ; inline operand = 9
  $80A4  06                         LOADL_quick   ; inline operand = 6
  $80A5  D2                         LSHIFT1
  $80A6  D2                         LSHIFT1
  $80A7  8C 72 83                   LOADR_imm2             $8372
  $80AA  BB                         ADD
  $80AB  B0                         DEREF
  $80AC  B3                         PUSHL
  $80AD  8E E0 00                   PUSH_imm2              $00E0
  $80B0  62                         PUSH_qimm   ; inline operand = 2
  $80B1  E9 EC DC 0A                CALL_abs_imm1          $DCEC (copy_from_bank) {native}, $0A
  $80B5  61                         PUSH_qimm   ; inline operand = 1
  $80B6  38                         PUSH_quick   ; inline operand = 8
  $80B7  06                         LOADL_quick   ; inline operand = 6
  $80B8  D2                         LSHIFT1
  $80B9  D2                         LSHIFT1
  $80BA  8C 74 83                   LOADR_imm2             $8374
  $80BD  BB                         ADD
  $80BE  B0                         DEREF
  $80BF  B3                         PUSHL
  $80C0  8E E0 00                   PUSH_imm2              $00E0
  $80C3  62                         PUSH_qimm   ; inline operand = 2
  $80C4  E9 EC DC 0A                CALL_abs_imm1          $DCEC (copy_from_bank) {native}, $0A
 >$80C8  09                         LOADL_quick   ; inline operand = 9
  $80C9  D0                         INC
  $80CA  29                         STORE_quick   ; inline operand = 9
  $80CB  08                         LOADL_quick   ; inline operand = 8
  $80CC  D0                         INC
  $80CD  28                         STORE_quick   ; inline operand = 8
  $80CE  05                         LOADL_quick   ; inline operand = 5
  $80CF  D0                         INC
 >$80D0  25                         STORE_quick   ; inline operand = 5
  $80D1  05                         LOADL_quick   ; inline operand = 5
  $80D2  1E                         LOADR_quick   ; inline operand = 14
  $80D3  C6                         UCMPLT
  $80D4  D7 91 80                   JUMPT_abs              $8091
  $80D7  8E E0 00                   PUSH_imm2              $00E0
  $80DA  DE FC FF                   LEAL_far               $FFFC
  $80DD  B3                         PUSHL
  $80DE  DE FE FF                   LEAL_far               $FFFE
 >$80E1  B3                         PUSHL
  $80E2  61                         PUSH_qimm   ; inline operand = 1
  $80E3  3E                         PUSH_quick   ; inline operand = 14
  $80E4  3D                         PUSH_quick   ; inline operand = 13
  $80E5  3C                         PUSH_quick   ; inline operand = 12
  $80E6  69                         PUSH_qimm   ; inline operand = 9
  $80E7  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
 >$80EB  CF                         RETURN

; ============================================================
; sub $80EC   (frame_off=-2, body @ $80F1)   [PRG $160EC]
; ============================================================
  $80F1  A4 D2 74                   LOADL_abs              $74D2
  $80F4  57                         LOADR_qimm   ; inline operand = 7
  $80F5  B5                         MULT
  $80F6  8C 90 6C                   LOADR_imm2             $6C90
  $80F9  BB                         ADD
  $80FA  2B                         STORE_quick   ; inline operand = 11
  $80FB  0B                         LOADL_quick   ; inline operand = 11
  $80FC  74                         ADD_qimm   ; inline operand = 4
  $80FD  B0                         DEREF
  $80FE  D8 06 81                   JUMPF_abs              $8106
  $8101  0B                         LOADL_quick   ; inline operand = 11
  $8102  D3                         BYTE_DEREF
  $8103  D7 0C 81                   JUMPT_abs              $810C
 >$8106  45                         LOADL_qimm   ; inline operand = 5
  $8107  A9 E0 74                   BYTE_STORE_abs         $74E0
  $810A  41                         LOADL_qimm   ; inline operand = 1
  $810B  CF                         RETURN
 >$810C  A4 D4 74                   LOADL_abs              $74D4
  $810F  57                         LOADR_qimm   ; inline operand = 7
  $8110  B5                         MULT
  $8111  8C 90 6C                   LOADR_imm2             $6C90
  $8114  BB                         ADD
  $8115  2B                         STORE_quick   ; inline operand = 11
  $8116  0B                         LOADL_quick   ; inline operand = 11
  $8117  74                         ADD_qimm   ; inline operand = 4
  $8118  B0                         DEREF
  $8119  D8 21 81                   JUMPF_abs              $8121
  $811C  0B                         LOADL_quick   ; inline operand = 11
  $811D  D3                         BYTE_DEREF
  $811E  D7 27 81                   JUMPT_abs              $8127
 >$8121  44                         LOADL_qimm   ; inline operand = 4
  $8122  A9 E0 74                   BYTE_STORE_abs         $74E0
  $8125  41                         LOADL_qimm   ; inline operand = 1
  $8126  CF                         RETURN
 >$8127  40                         LOADL_qimm   ; inline operand = 0
  $8128  CF                         RETURN

; ============================================================
; sub $8129   (frame_off=+0, body @ $812E)   [PRG $16129]
; ============================================================
  $812E  0C                         LOADL_quick   ; inline operand = 12
  $812F  8B 10                      BYTE_LOADR_imm1        +16
  $8131  C9                         UCMPGE
  $8132  D8 37 81                   JUMPF_abs              $8137
  $8135  40                         LOADL_qimm   ; inline operand = 0
  $8136  CF                         RETURN
 >$8137  0C                         LOADL_quick   ; inline operand = 12
  $8138  D1                         DEC
  $8139  55                         LOADR_qimm   ; inline operand = 5
  $813A  BA                         UMOD
  $813B  52                         LOADR_qimm   ; inline operand = 2
  $813C  C7                         UCMPLE
  $813D  D8 44 81                   JUMPF_abs              $8144
  $8140  42                         LOADL_qimm   ; inline operand = 2
  $8141  D6 45 81                   JUMP_abs               $8145
 >$8144  41                         LOADL_qimm   ; inline operand = 1
 >$8145  CF                         RETURN

; ============================================================
; sub $8146   (frame_off=-16, body @ $814B)   [PRG $16146]
; ============================================================
  $814B  A5 9E 74                   BYTE_LOADL_abs         $749E
  $814E  55                         LOADR_qimm   ; inline operand = 5
  $814F  B8                         UDIV
  $8150  B3                         PUSHL
  $8151  E9 29 81 02                CALL_abs_imm1          $8129 {bytecode}, $02
  $8155  25                         STORE_quick   ; inline operand = 5
  $8156  8A 9E 74                   LOADL_imm2             $749E
  $8159  2B                         STORE_quick   ; inline operand = 11
  $815A  A6 A8 74                   LOADR_abs              $74A8
  $815D  BB                         ADD
  $815E  2A                         STORE_quick   ; inline operand = 10
  $815F  D6 30 82                   JUMP_abs               $8230
 >$8162  AC EC 80                   CALL_abs               $80EC {bytecode}
  $8165  D8 6A 81                   JUMPF_abs              $816A
  $8168  40                         LOADL_qimm   ; inline operand = 0
  $8169  CF                         RETURN
 >$816A  0B                         LOADL_quick   ; inline operand = 11
  $816B  D3                         BYTE_DEREF
  $816C  57                         LOADR_qimm   ; inline operand = 7
  $816D  B5                         MULT
  $816E  8C 90 6C                   LOADR_imm2             $6C90
  $8171  BB                         ADD
  $8172  24                         STORE_quick   ; inline operand = 4
  $8173  04                         LOADL_quick   ; inline operand = 4
  $8174  74                         ADD_qimm   ; inline operand = 4
  $8175  B0                         DEREF
  $8176  D8 2D 82                   JUMPF_abs              $822D
  $8179  04                         LOADL_quick   ; inline operand = 4
  $817A  D3                         BYTE_DEREF
  $817B  D8 2D 82                   JUMPF_abs              $822D
  $817E  0B                         LOADL_quick   ; inline operand = 11
  $817F  D3                         BYTE_DEREF
  $8180  55                         LOADR_qimm   ; inline operand = 5
  $8181  BA                         UMOD
  $8182  75                         ADD_qimm   ; inline operand = 5
  $8183  26                         STORE_quick   ; inline operand = 6
  $8184  06                         LOADL_quick   ; inline operand = 6
  $8185  8C AC 74                   LOADR_imm2             $74AC
  $8188  BB                         ADD
  $8189  29                         STORE_quick   ; inline operand = 9
  $818A  09                         LOADL_quick   ; inline operand = 9
  $818B  D3                         BYTE_DEREF
  $818C  A8 C4 74                   STORE_abs              $74C4
  $818F  09                         LOADL_quick   ; inline operand = 9
  $8190  D3                         BYTE_DEREF
  $8191  5F                         LOADR_qimm   ; inline operand = 15
  $8192  BA                         UMOD
  $8193  A8 C0 74                   STORE_abs              $74C0
  $8196  09                         LOADL_quick   ; inline operand = 9
  $8197  D3                         BYTE_DEREF
  $8198  5F                         LOADR_qimm   ; inline operand = 15
  $8199  B8                         UDIV
  $819A  A8 C2 74                   STORE_abs              $74C2
  $819D  0B                         LOADL_quick   ; inline operand = 11
  $819E  D3                         BYTE_DEREF
  $819F  A6 D4 74                   LOADR_abs              $74D4
  $81A2  C0                         CMPEQ
  $81A3  D8 E6 81                   JUMPF_abs              $81E6
  $81A6  0B                         LOADL_quick   ; inline operand = 11
  $81A7  D3                         BYTE_DEREF
  $81A8  57                         LOADR_qimm   ; inline operand = 7
  $81A9  B5                         MULT
  $81AA  8C 94 6C                   LOADR_imm2             $6C94
  $81AD  BB                         ADD
  $81AE  B0                         DEREF
  $81AF  8B 14                      BYTE_LOADR_imm1        +20
  $81B1  C3                         SCMPLE
  $81B2  D7 C4 81                   JUMPT_abs              $81C4
  $81B5  0B                         LOADL_quick   ; inline operand = 11
  $81B6  D3                         BYTE_DEREF
  $81B7  57                         LOADR_qimm   ; inline operand = 7
  $81B8  B5                         MULT
  $81B9  8C 90 6C                   LOADR_imm2             $6C90
  $81BC  BB                         ADD
  $81BD  D3                         BYTE_DEREF
  $81BE  8B 14                      BYTE_LOADR_imm1        +20
  $81C0  C3                         SCMPLE
  $81C1  D8 E6 81                   JUMPF_abs              $81E6
 >$81C4  A4 C0 74                   LOADL_abs              $74C0
  $81C7  D8 E0 81                   JUMPF_abs              $81E0
  $81CA  A4 C2 74                   LOADL_abs              $74C2
  $81CD  D8 E0 81                   JUMPF_abs              $81E0
  $81D0  A4 C0 74                   LOADL_abs              $74C0
  $81D3  5E                         LOADR_qimm   ; inline operand = 14
  $81D4  C0                         CMPEQ
  $81D5  D7 E0 81                   JUMPT_abs              $81E0
  $81D8  A4 C2 74                   LOADL_abs              $74C2
  $81DB  58                         LOADR_qimm   ; inline operand = 8
  $81DC  C0                         CMPEQ
  $81DD  D8 E6 81                   JUMPF_abs              $81E6
 >$81E0  42                         LOADL_qimm   ; inline operand = 2
  $81E1  A9 E0 74                   BYTE_STORE_abs         $74E0
  $81E4  40                         LOADL_qimm   ; inline operand = 0
  $81E5  CF                         RETURN
 >$81E6  0B                         LOADL_quick   ; inline operand = 11
  $81E7  D3                         BYTE_DEREF
  $81E8  B3                         PUSHL
  $81E9  35                         PUSH_quick   ; inline operand = 5
  $81EA  8E 73 93                   PUSH_imm2              $9373
  $81ED  8E CD 00                   PUSH_imm2              $00CD
  $81F0  61                         PUSH_qimm   ; inline operand = 1
  $81F1  E9 3A DE 0A                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $0A
  $81F5  27                         STORE_quick   ; inline operand = 7
  $81F6  0B                         LOADL_quick   ; inline operand = 11
  $81F7  D3                         BYTE_DEREF
  $81F8  B3                         PUSHL
  $81F9  07                         LOADL_quick   ; inline operand = 7
  $81FA  5F                         LOADR_qimm   ; inline operand = 15
  $81FB  B8                         UDIV
  $81FC  B3                         PUSHL
  $81FD  07                         LOADL_quick   ; inline operand = 7
  $81FE  5F                         LOADR_qimm   ; inline operand = 15
  $81FF  BA                         UMOD
  $8200  B3                         PUSHL
  $8201  8E 91 87                   PUSH_imm2              $8791
  $8204  8E CD 00                   PUSH_imm2              $00CD
  $8207  61                         PUSH_qimm   ; inline operand = 1
  $8208  E9 3A DE 0C                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $0C
  $820C  0B                         LOADL_quick   ; inline operand = 11
  $820D  D3                         BYTE_DEREF
  $820E  B3                         PUSHL
  $820F  8E F0 9A                   PUSH_imm2              $9AF0
  $8212  8E CC 00                   PUSH_imm2              $00CC
  $8215  61                         PUSH_qimm   ; inline operand = 1
  $8216  E9 3A DE 08                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $08
  $821A  39                         PUSH_quick   ; inline operand = 9
  $821B  A4 C2 74                   LOADL_abs              $74C2
  $821E  5F                         LOADR_qimm   ; inline operand = 15
  $821F  B5                         MULT
  $8220  A6 C0 74                   LOADR_abs              $74C0
  $8223  BB                         ADD
  $8224  D4                         BYTE_POPSTORE
  $8225  AC EC 80                   CALL_abs               $80EC {bytecode}
  $8228  D8 2D 82                   JUMPF_abs              $822D
  $822B  40                         LOADL_qimm   ; inline operand = 0
  $822C  CF                         RETURN
 >$822D  0B                         LOADL_quick   ; inline operand = 11
  $822E  D0                         INC
  $822F  2B                         STORE_quick   ; inline operand = 11
 >$8230  0B                         LOADL_quick   ; inline operand = 11
  $8231  1A                         LOADR_quick   ; inline operand = 10
  $8232  C6                         UCMPLT
  $8233  D7 62 81                   JUMPT_abs              $8162
  $8236  41                         LOADL_qimm   ; inline operand = 1
  $8237  CF                         RETURN

; ============================================================
; sub $8238   (frame_off=-12, body @ $823D)   [PRG $16238]
; ============================================================
  $823D  41                         LOADL_qimm   ; inline operand = 1
  $823E  2B                         STORE_quick   ; inline operand = 11
  $823F  8A 9E 74                   LOADL_imm2             $749E
  $8242  2A                         STORE_quick   ; inline operand = 10
  $8243  A6 A8 74                   LOADR_abs              $74A8
  $8246  BB                         ADD
  $8247  29                         STORE_quick   ; inline operand = 9
  $8248  D6 AD 82                   JUMP_abs               $82AD
 >$824B  AC EC 80                   CALL_abs               $80EC {bytecode}
  $824E  D8 56 82                   JUMPF_abs              $8256
 >$8251  40                         LOADL_qimm   ; inline operand = 0
  $8252  2B                         STORE_quick   ; inline operand = 11
  $8253  D6 B3 82                   JUMP_abs               $82B3
 >$8256  0A                         LOADL_quick   ; inline operand = 10
  $8257  D3                         BYTE_DEREF
  $8258  57                         LOADR_qimm   ; inline operand = 7
  $8259  B5                         MULT
  $825A  8C 90 6C                   LOADR_imm2             $6C90
  $825D  BB                         ADD
  $825E  26                         STORE_quick   ; inline operand = 6
  $825F  06                         LOADL_quick   ; inline operand = 6
  $8260  74                         ADD_qimm   ; inline operand = 4
  $8261  B0                         DEREF
  $8262  D8 AA 82                   JUMPF_abs              $82AA
  $8265  06                         LOADL_quick   ; inline operand = 6
  $8266  D3                         BYTE_DEREF
  $8267  D8 AA 82                   JUMPF_abs              $82AA
  $826A  0A                         LOADL_quick   ; inline operand = 10
  $826B  D3                         BYTE_DEREF
  $826C  55                         LOADR_qimm   ; inline operand = 5
  $826D  BA                         UMOD
  $826E  27                         STORE_quick   ; inline operand = 7
  $826F  07                         LOADL_quick   ; inline operand = 7
  $8270  8C AC 74                   LOADR_imm2             $74AC
  $8273  BB                         ADD
  $8274  28                         STORE_quick   ; inline operand = 8
  $8275  08                         LOADL_quick   ; inline operand = 8
  $8276  D3                         BYTE_DEREF
  $8277  A8 C4 74                   STORE_abs              $74C4
  $827A  08                         LOADL_quick   ; inline operand = 8
  $827B  D3                         BYTE_DEREF
  $827C  5F                         LOADR_qimm   ; inline operand = 15
  $827D  BA                         UMOD
  $827E  A8 C0 74                   STORE_abs              $74C0
  $8281  08                         LOADL_quick   ; inline operand = 8
  $8282  D3                         BYTE_DEREF
  $8283  5F                         LOADR_qimm   ; inline operand = 15
  $8284  B8                         UDIV
  $8285  A8 C2 74                   STORE_abs              $74C2
  $8288  0A                         LOADL_quick   ; inline operand = 10
  $8289  D3                         BYTE_DEREF
  $828A  B3                         PUSHL
  $828B  8E 8B 95                   PUSH_imm2              $958B
  $828E  8E CC 00                   PUSH_imm2              $00CC
  $8291  61                         PUSH_qimm   ; inline operand = 1
  $8292  E9 3A DE 08                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $08
  $8296  D7 51 82                   JUMPT_abs              $8251
  $8299  38                         PUSH_quick   ; inline operand = 8
  $829A  A4 C2 74                   LOADL_abs              $74C2
  $829D  5F                         LOADR_qimm   ; inline operand = 15
  $829E  B5                         MULT
  $829F  A6 C0 74                   LOADR_abs              $74C0
  $82A2  BB                         ADD
  $82A3  D4                         BYTE_POPSTORE
  $82A4  AC EC 80                   CALL_abs               $80EC {bytecode}
  $82A7  D7 51 82                   JUMPT_abs              $8251
 >$82AA  0A                         LOADL_quick   ; inline operand = 10
  $82AB  D0                         INC
  $82AC  2A                         STORE_quick   ; inline operand = 10
 >$82AD  0A                         LOADL_quick   ; inline operand = 10
  $82AE  19                         LOADR_quick   ; inline operand = 9
  $82AF  C6                         UCMPLT
  $82B0  D7 4B 82                   JUMPT_abs              $824B
 >$82B3  AC 03 80                   CALL_abs               $8003 {bytecode}
  $82B6  0B                         LOADL_quick   ; inline operand = 11
  $82B7  CF                         RETURN

; ============================================================
; sub $82B8   (frame_off=+0, body @ $82BD)   [PRG $162B8]
; ============================================================
  $82BD  8E 9E 74                   PUSH_imm2              $749E
  $82C0  3C                         PUSH_quick   ; inline operand = 12
  $82C1  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $82C5  A8 A8 74                   STORE_abs              $74A8
  $82C8  8E A3 74                   PUSH_imm2              $74A3
  $82CB  3D                         PUSH_quick   ; inline operand = 13
  $82CC  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $82D0  A8 AA 74                   STORE_abs              $74AA
  $82D3  0C                         LOADL_quick   ; inline operand = 12
  $82D4  D8 DB 82                   JUMPF_abs              $82DB
  $82D7  AC 46 81                   CALL_abs               $8146 {bytecode}
  $82DA  CF                         RETURN
 >$82DB  AC 38 82                   CALL_abs               $8238 {bytecode}
  $82DE  CF                         RETURN

; ============================================================
; sub $82DF   (frame_off=-2, body @ $82E4)   [PRG $162DF]
; ============================================================
  $82E4  A5 8C 6B                   BYTE_LOADL_abs         $6B8C
  $82E7  D2                         LSHIFT1
  $82E8  B3                         PUSHL
  $82E9  89 23                      BYTE_LOADL_imm1        +35
  $82EB  B4                         POPR
  $82EC  BC                         SUB
  $82ED  D6 16 83                   JUMP_abs               $8316
 >$82F0  3B                         PUSH_quick   ; inline operand = 11
  $82F1  62                         PUSH_qimm   ; inline operand = 2
  $82F2  8D 16                      BYTE_PUSH_imm1         +22
  $82F4  6A                         PUSH_qimm   ; inline operand = 10
  $82F5  E9 15 80 08                CALL_abs_imm1          $8015 {bytecode}, $08
  $82F9  3D                         PUSH_quick   ; inline operand = 13
  $82FA  3C                         PUSH_quick   ; inline operand = 12
  $82FB  E9 B8 82 04                CALL_abs_imm1          $82B8 {bytecode}, $04
  $82FF  D7 03 83                   JUMPT_abs              $8303
  $8302  CF                         RETURN
 >$8303  3C                         PUSH_quick   ; inline operand = 12
  $8304  3D                         PUSH_quick   ; inline operand = 13
  $8305  E9 B8 82 04                CALL_abs_imm1          $82B8 {bytecode}, $04
  $8309  D7 0D 83                   JUMPT_abs              $830D
  $830C  CF                         RETURN
 >$830D  A5 8C 6B                   BYTE_LOADL_abs         $6B8C
  $8310  D0                         INC
  $8311  A9 8C 6B                   BYTE_STORE_abs         $6B8C
  $8314  0B                         LOADL_quick   ; inline operand = 11
  $8315  D1                         DEC
 >$8316  2B                         STORE_quick   ; inline operand = 11
  $8317  0B                         LOADL_quick   ; inline operand = 11
  $8318  D7 F0 82                   JUMPT_abs              $82F0
  $831B  41                         LOADL_qimm   ; inline operand = 1
  $831C  A9 E0 74                   BYTE_STORE_abs         $74E0
  $831F  CF                         RETURN

; ============================================================
; sub $8320   (frame_off=+0, body @ $8325)   [PRG $16320]
; ============================================================
  $8325  0C                         LOADL_quick   ; inline operand = 12
  $8326  D7 33 83                   JUMPT_abs              $8333
  $8329  6A                         PUSH_qimm   ; inline operand = 10
  $832A  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $832E  57                         LOADR_qimm   ; inline operand = 7
  $832F  C6                         UCMPLT
  $8330  D8 3B 83                   JUMPF_abs              $833B
 >$8333  A5 9D 72                   BYTE_LOADL_abs         $729D
  $8336  B3                         PUSHL
  $8337  3C                         PUSH_quick   ; inline operand = 12
  $8338  D6 40 83                   JUMP_abs               $8340
 >$833B  3C                         PUSH_quick   ; inline operand = 12
  $833C  A5 9D 72                   BYTE_LOADL_abs         $729D
  $833F  B3                         PUSHL
 >$8340  E9 DF 82 04                CALL_abs_imm1          $82DF {bytecode}, $04
  $8344  41                         LOADL_qimm   ; inline operand = 1
  $8345  CF                         RETURN

; ============================================================
; sub $8346   (frame_off=-2, body @ $834B)   [PRG $16346]
; ============================================================
  $834B  A5 68 72                   BYTE_LOADL_abs         $7268
  $834E  2B                         STORE_quick   ; inline operand = 11
  $834F  40                         LOADL_qimm   ; inline operand = 0
  $8350  A9 E0 74                   BYTE_STORE_abs         $74E0
  $8353  3B                         PUSH_quick   ; inline operand = 11
  $8354  8E 9D 89                   PUSH_imm2              $899D
  $8357  8E CE 00                   PUSH_imm2              $00CE
  $835A  61                         PUSH_qimm   ; inline operand = 1
  $835B  E9 3A DE 08                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $08
  $835F  3B                         PUSH_quick   ; inline operand = 11
  $8360  E9 20 83 02                CALL_abs_imm1          $8320 {bytecode}, $02
  $8364  3B                         PUSH_quick   ; inline operand = 11
  $8365  8E 83 95                   PUSH_imm2              $9583
  $8368  8E CE 00                   PUSH_imm2              $00CE
  $836B  61                         PUSH_qimm   ; inline operand = 1
  $836C  E9 3A DE 08                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $08
  $8370  CF                         RETURN

