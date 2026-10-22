VM bytecode disassembly
  ROM:          Uncharted Waters (USA).nes
  mode:         bulk dump of bank 12
  opcode spec:  vm-opcodes-v2.toml via nobunaga_vm.OPCODE_INFO (execution-validated lengths)
  labels:       0 CPU addresses named

  bank 12: found 66 bytecode-subroutine stubs

; ============================================================
; sub $8003   (frame_off=+0, body @ $8008)   [PRG $18003]
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
; sub $8015   (frame_off=-8, body @ $801A)   [PRG $18015]
; ============================================================
  $801A  A4 C4 74                   LOADL_abs              $74C4
  $801D  5F                         LOADR_qimm   ; inline operand = 15
  $801E  B9                         SMOD
  $801F  29                         STORE_quick   ; inline operand = 9
  $8020  A4 C4 74                   LOADL_abs              $74C4
  $8023  5F                         LOADR_qimm   ; inline operand = 15
  $8024  B6                         SDIV
  $8025  28                         STORE_quick   ; inline operand = 8
  $8026  09                         LOADL_quick   ; inline operand = 9
  $8027  D2                         LSHIFT1
  $8028  D0                         INC
  $8029  53                         LOADR_qimm   ; inline operand = 3
  $802A  BD                         LSHIFT
  $802B  2B                         STORE_quick   ; inline operand = 11
  $802C  08                         LOADL_quick   ; inline operand = 8
  $802D  D2                         LSHIFT1
  $802E  B3                         PUSHL
  $802F  09                         LOADL_quick   ; inline operand = 9
  $8030  51                         LOADR_qimm   ; inline operand = 1
  $8031  DA                         AND
  $8032  D8 39 80                   JUMPF_abs              $8039
  $8035  43                         LOADL_qimm   ; inline operand = 3
  $8036  D6 3A 80                   JUMP_abs               $803A
 >$8039  42                         LOADL_qimm   ; inline operand = 2
 >$803A  B4                         POPR
  $803B  BB                         ADD
  $803C  53                         LOADR_qimm   ; inline operand = 3
  $803D  BD                         LSHIFT
  $803E  D1                         DEC
  $803F  2A                         STORE_quick   ; inline operand = 10
  $8040  60                         PUSH_qimm   ; inline operand = 0
  $8041  8E E0 E0                   PUSH_imm2              $E0E0
  $8044  8E E0 E0                   PUSH_imm2              $E0E0
  $8047  0A                         LOADL_quick   ; inline operand = 10
  $8048  58                         LOADR_qimm   ; inline operand = 8
  $8049  BD                         LSHIFT
  $804A  1B                         LOADR_quick   ; inline operand = 11
  $804B  BB                         ADD
  $804C  B3                         PUSHL
  $804D  8E 01 05                   PUSH_imm2              $0501
  $8050  6E                         PUSH_qimm   ; inline operand = 14
  $8051  E9 D4 EE 0C                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0C
  $8055  8D 17                      BYTE_PUSH_imm1         +23
  $8057  E9 6F E0 02                CALL_abs_imm1          $E06F {native}, $02
  $805B  A4 C0 74                   LOADL_abs              $74C0
  $805E  D2                         LSHIFT1
  $805F  D0                         INC
  $8060  53                         LOADR_qimm   ; inline operand = 3
  $8061  BD                         LSHIFT
  $8062  2B                         STORE_quick   ; inline operand = 11
  $8063  A4 C2 74                   LOADL_abs              $74C2
  $8066  D2                         LSHIFT1
  $8067  B3                         PUSHL
  $8068  A4 C0 74                   LOADL_abs              $74C0
  $806B  52                         LOADR_qimm   ; inline operand = 2
  $806C  B9                         SMOD
  $806D  D8 74 80                   JUMPF_abs              $8074
  $8070  43                         LOADL_qimm   ; inline operand = 3
  $8071  D6 75 80                   JUMP_abs               $8075
 >$8074  42                         LOADL_qimm   ; inline operand = 2
 >$8075  B4                         POPR
  $8076  BB                         ADD
  $8077  53                         LOADR_qimm   ; inline operand = 3
  $8078  BD                         LSHIFT
  $8079  D1                         DEC
  $807A  2A                         STORE_quick   ; inline operand = 10
  $807B  6C                         PUSH_qimm   ; inline operand = 12
  $807C  8D 11                      BYTE_PUSH_imm1         +17
  $807E  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8082  AC 03 80                   CALL_abs               $8003 {bytecode}
  $8085  3C                         PUSH_quick   ; inline operand = 12
  $8086  E9 2F 85 02                CALL_abs_imm1          $852F {bytecode}, $02
  $808A  63                         PUSH_qimm   ; inline operand = 3
  $808B  8E E0 E0                   PUSH_imm2              $E0E0
  $808E  8E E0 E0                   PUSH_imm2              $E0E0
  $8091  0A                         LOADL_quick   ; inline operand = 10
  $8092  58                         LOADR_qimm   ; inline operand = 8
  $8093  BD                         LSHIFT
  $8094  1B                         LOADR_quick   ; inline operand = 11
  $8095  BB                         ADD
  $8096  B3                         PUSHL
  $8097  8E 01 05                   PUSH_imm2              $0501
  $809A  6E                         PUSH_qimm   ; inline operand = 14
  $809B  E9 D4 EE 0C                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0C
  $809F  8D 18                      BYTE_PUSH_imm1         +24
  $80A1  8D 11                      BYTE_PUSH_imm1         +17
  $80A3  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $80A7  AC 03 80                   CALL_abs               $8003 {bytecode}
  $80AA  CF                         RETURN

; ============================================================
; sub $80AB   (frame_off=-32, body @ $80B0)   [PRG $180AB]
; ============================================================
  $80B0  AC 03 80                   CALL_abs               $8003 {bytecode}
  $80B3  A4 C4 74                   LOADL_abs              $74C4
  $80B6  5F                         LOADR_qimm   ; inline operand = 15
  $80B7  B9                         SMOD
  $80B8  29                         STORE_quick   ; inline operand = 9
  $80B9  A4 C4 74                   LOADL_abs              $74C4
  $80BC  5F                         LOADR_qimm   ; inline operand = 15
  $80BD  B6                         SDIV
  $80BE  28                         STORE_quick   ; inline operand = 8
  $80BF  09                         LOADL_quick   ; inline operand = 9
  $80C0  D2                         LSHIFT1
  $80C1  D0                         INC
  $80C2  53                         LOADR_qimm   ; inline operand = 3
  $80C3  BD                         LSHIFT
  $80C4  27                         STORE_quick   ; inline operand = 7
  $80C5  08                         LOADL_quick   ; inline operand = 8
  $80C6  D2                         LSHIFT1
  $80C7  B3                         PUSHL
  $80C8  09                         LOADL_quick   ; inline operand = 9
  $80C9  51                         LOADR_qimm   ; inline operand = 1
  $80CA  DA                         AND
  $80CB  D8 D2 80                   JUMPF_abs              $80D2
  $80CE  43                         LOADL_qimm   ; inline operand = 3
  $80CF  D6 D3 80                   JUMP_abs               $80D3
 >$80D2  42                         LOADL_qimm   ; inline operand = 2
 >$80D3  B4                         POPR
  $80D4  BB                         ADD
  $80D5  53                         LOADR_qimm   ; inline operand = 3
  $80D6  BD                         LSHIFT
  $80D7  D1                         DEC
  $80D8  25                         STORE_quick   ; inline operand = 5
  $80D9  A4 C0 74                   LOADL_abs              $74C0
  $80DC  D2                         LSHIFT1
  $80DD  D0                         INC
  $80DE  53                         LOADR_qimm   ; inline operand = 3
  $80DF  BD                         LSHIFT
  $80E0  26                         STORE_quick   ; inline operand = 6
  $80E1  A4 C2 74                   LOADL_abs              $74C2
  $80E4  D2                         LSHIFT1
  $80E5  B3                         PUSHL
  $80E6  A4 C0 74                   LOADL_abs              $74C0
  $80E9  52                         LOADR_qimm   ; inline operand = 2
  $80EA  B9                         SMOD
  $80EB  D8 F2 80                   JUMPF_abs              $80F2
  $80EE  43                         LOADL_qimm   ; inline operand = 3
  $80EF  D6 F3 80                   JUMP_abs               $80F3
 >$80F2  42                         LOADL_qimm   ; inline operand = 2
 >$80F3  B4                         POPR
  $80F4  BB                         ADD
  $80F5  53                         LOADR_qimm   ; inline operand = 3
  $80F6  BD                         LSHIFT
  $80F7  D1                         DEC
  $80F8  24                         STORE_quick   ; inline operand = 4
  $80F9  8D 18                      BYTE_PUSH_imm1         +24
  $80FB  E9 6F E0 02                CALL_abs_imm1          $E06F {native}, $02
  $80FF  40                         LOADL_qimm   ; inline operand = 0
  $8100  2B                         STORE_quick   ; inline operand = 11
 >$8101  8D 10                      BYTE_PUSH_imm1         +16
  $8103  DE E0 FF                   LEAL_far               $FFE0
  $8106  B3                         PUSHL
  $8107  8E E0 9D                   PUSH_imm2              $9DE0
  $810A  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $810E  40                         LOADL_qimm   ; inline operand = 0
  $810F  2A                         STORE_quick   ; inline operand = 10
 >$8110  05                         LOADL_quick   ; inline operand = 5
  $8111  B3                         PUSHL
  $8112  DE E0 FF                   LEAL_far               $FFE0
  $8115  B3                         PUSHL
  $8116  0A                         LOADL_quick   ; inline operand = 10
  $8117  D2                         LSHIFT1
  $8118  D2                         LSHIFT1
  $8119  B4                         POPR
  $811A  BB                         ADD
  $811B  B4                         POPR
  $811C  B3                         PUSHL
  $811D  D3                         BYTE_DEREF
  $811E  BB                         ADD
  $811F  D4                         BYTE_POPSTORE
  $8120  07                         LOADL_quick   ; inline operand = 7
  $8121  B3                         PUSHL
  $8122  DE E3 FF                   LEAL_far               $FFE3
  $8125  B3                         PUSHL
  $8126  0A                         LOADL_quick   ; inline operand = 10
  $8127  D2                         LSHIFT1
  $8128  D2                         LSHIFT1
  $8129  B4                         POPR
  $812A  BB                         ADD
  $812B  B4                         POPR
  $812C  B3                         PUSHL
  $812D  D3                         BYTE_DEREF
  $812E  BB                         ADD
  $812F  D4                         BYTE_POPSTORE
  $8130  0A                         LOADL_quick   ; inline operand = 10
  $8131  D0                         INC
  $8132  2A                         STORE_quick   ; inline operand = 10
  $8133  0A                         LOADL_quick   ; inline operand = 10
  $8134  54                         LOADR_qimm   ; inline operand = 4
  $8135  C6                         UCMPLT
  $8136  D7 10 81                   JUMPT_abs              $8110
  $8139  64                         PUSH_qimm   ; inline operand = 4
  $813A  65                         PUSH_qimm   ; inline operand = 5
  $813B  DE E0 FF                   LEAL_far               $FFE0
  $813E  B3                         PUSHL
  $813F  6D                         PUSH_qimm   ; inline operand = 13
  $8140  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8144  8D 10                      BYTE_PUSH_imm1         +16
  $8146  DE E0 FF                   LEAL_far               $FFE0
  $8149  B3                         PUSHL
  $814A  8E E0 9D                   PUSH_imm2              $9DE0
  $814D  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $8151  66                         PUSH_qimm   ; inline operand = 6
  $8152  8D 11                      BYTE_PUSH_imm1         +17
  $8154  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8158  40                         LOADL_qimm   ; inline operand = 0
  $8159  2A                         STORE_quick   ; inline operand = 10
 >$815A  04                         LOADL_quick   ; inline operand = 4
  $815B  B3                         PUSHL
  $815C  DE E0 FF                   LEAL_far               $FFE0
  $815F  B3                         PUSHL
  $8160  0A                         LOADL_quick   ; inline operand = 10
  $8161  D2                         LSHIFT1
  $8162  D2                         LSHIFT1
  $8163  B4                         POPR
  $8164  BB                         ADD
  $8165  B4                         POPR
  $8166  B3                         PUSHL
  $8167  D3                         BYTE_DEREF
  $8168  BB                         ADD
  $8169  D4                         BYTE_POPSTORE
  $816A  06                         LOADL_quick   ; inline operand = 6
  $816B  B3                         PUSHL
  $816C  DE E3 FF                   LEAL_far               $FFE3
  $816F  B3                         PUSHL
  $8170  0A                         LOADL_quick   ; inline operand = 10
  $8171  D2                         LSHIFT1
  $8172  D2                         LSHIFT1
  $8173  B4                         POPR
  $8174  BB                         ADD
  $8175  B4                         POPR
  $8176  B3                         PUSHL
  $8177  D3                         BYTE_DEREF
  $8178  BB                         ADD
  $8179  D4                         BYTE_POPSTORE
  $817A  0A                         LOADL_quick   ; inline operand = 10
  $817B  D0                         INC
  $817C  2A                         STORE_quick   ; inline operand = 10
  $817D  0A                         LOADL_quick   ; inline operand = 10
  $817E  54                         LOADR_qimm   ; inline operand = 4
  $817F  C6                         UCMPLT
  $8180  D7 5A 81                   JUMPT_abs              $815A
  $8183  64                         PUSH_qimm   ; inline operand = 4
  $8184  65                         PUSH_qimm   ; inline operand = 5
  $8185  DE E0 FF                   LEAL_far               $FFE0
  $8188  B3                         PUSHL
  $8189  6D                         PUSH_qimm   ; inline operand = 13
  $818A  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $818E  66                         PUSH_qimm   ; inline operand = 6
  $818F  8D 11                      BYTE_PUSH_imm1         +17
  $8191  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8195  0B                         LOADL_quick   ; inline operand = 11
  $8196  D0                         INC
  $8197  2B                         STORE_quick   ; inline operand = 11
  $8198  0B                         LOADL_quick   ; inline operand = 11
  $8199  54                         LOADR_qimm   ; inline operand = 4
  $819A  C6                         UCMPLT
  $819B  D7 01 81                   JUMPT_abs              $8101
  $819E  64                         PUSH_qimm   ; inline operand = 4
  $819F  65                         PUSH_qimm   ; inline operand = 5
  $81A0  6C                         PUSH_qimm   ; inline operand = 12
  $81A1  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $81A5  CF                         RETURN

; ============================================================
; sub $81A6   (frame_off=-4, body @ $81AB)   [PRG $181A6]
; ============================================================
  $81AB  A4 C0 74                   LOADL_abs              $74C0
  $81AE  D2                         LSHIFT1
  $81AF  D0                         INC
  $81B0  53                         LOADR_qimm   ; inline operand = 3
  $81B1  BD                         LSHIFT
  $81B2  2B                         STORE_quick   ; inline operand = 11
  $81B3  A4 C2 74                   LOADL_abs              $74C2
  $81B6  D2                         LSHIFT1
  $81B7  B3                         PUSHL
  $81B8  A4 C0 74                   LOADL_abs              $74C0
  $81BB  52                         LOADR_qimm   ; inline operand = 2
  $81BC  B9                         SMOD
  $81BD  D8 C4 81                   JUMPF_abs              $81C4
  $81C0  43                         LOADL_qimm   ; inline operand = 3
  $81C1  D6 C5 81                   JUMP_abs               $81C5
 >$81C4  42                         LOADL_qimm   ; inline operand = 2
 >$81C5  B4                         POPR
  $81C6  BB                         ADD
  $81C7  53                         LOADR_qimm   ; inline operand = 3
  $81C8  BD                         LSHIFT
  $81C9  D1                         DEC
  $81CA  2A                         STORE_quick   ; inline operand = 10
  $81CB  60                         PUSH_qimm   ; inline operand = 0
  $81CC  8E E0 E0                   PUSH_imm2              $E0E0
  $81CF  8E E0 E0                   PUSH_imm2              $E0E0
  $81D2  0A                         LOADL_quick   ; inline operand = 10
  $81D3  58                         LOADR_qimm   ; inline operand = 8
  $81D4  BD                         LSHIFT
  $81D5  1B                         LOADR_quick   ; inline operand = 11
  $81D6  BB                         ADD
  $81D7  B3                         PUSHL
  $81D8  8E 01 05                   PUSH_imm2              $0501
  $81DB  6E                         PUSH_qimm   ; inline operand = 14
  $81DC  E9 D4 EE 0C                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0C
  $81E0  CF                         RETURN

; ============================================================
; sub $81E1   (frame_off=-2, body @ $81E6)   [PRG $181E1]
; ============================================================
  $81E6  0F                         LOADL_quick   ; inline operand = 15
  $81E7  55                         LOADR_qimm   ; inline operand = 5
  $81E8  C6                         UCMPLT
  $81E9  D8 F4 81                   JUMPF_abs              $81F4
  $81EC  0F                         LOADL_quick   ; inline operand = 15
  $81ED  A6 D2 74                   LOADR_abs              $74D2
  $81F0  C0                         CMPEQ
  $81F1  D6 FF 81                   JUMP_abs               $81FF
 >$81F4  42                         LOADL_qimm   ; inline operand = 2
  $81F5  2B                         STORE_quick   ; inline operand = 11
  $81F6  0F                         LOADL_quick   ; inline operand = 15
  $81F7  A6 D4 74                   LOADR_abs              $74D4
  $81FA  C0                         CMPEQ
  $81FB  D8 00 82                   JUMPF_abs              $8200
  $81FE  43                         LOADL_qimm   ; inline operand = 3
 >$81FF  2B                         STORE_quick   ; inline operand = 11
 >$8200  3E                         PUSH_quick   ; inline operand = 14
  $8201  3B                         PUSH_quick   ; inline operand = 11
  $8202  3D                         PUSH_quick   ; inline operand = 13
  $8203  3C                         PUSH_quick   ; inline operand = 12
  $8204  E9 96 DC 08                CALL_abs_imm1          $DC96 {native}, $08
  $8208  CF                         RETURN

; ============================================================
; sub $8209   (frame_off=-10, body @ $820E)   [PRG $18209]
; ============================================================
  $820E  0E                         LOADL_quick   ; inline operand = 14
  $820F  8C C0 03                   LOADR_imm2             $03C0
  $8212  C0                         CMPEQ
  $8213  27                         STORE_quick   ; inline operand = 7
  $8214  A4 C0 74                   LOADL_abs              $74C0
  $8217  D2                         LSHIFT1
  $8218  D0                         INC
  $8219  2B                         STORE_quick   ; inline operand = 11
  $821A  A4 C2 74                   LOADL_abs              $74C2
  $821D  D2                         LSHIFT1
  $821E  B3                         PUSHL
  $821F  A4 C0 74                   LOADL_abs              $74C0
  $8222  52                         LOADR_qimm   ; inline operand = 2
  $8223  B9                         SMOD
  $8224  D8 2B 82                   JUMPF_abs              $822B
  $8227  43                         LOADL_qimm   ; inline operand = 3
  $8228  D6 2C 82                   JUMP_abs               $822C
 >$822B  42                         LOADL_qimm   ; inline operand = 2
 >$822C  B4                         POPR
  $822D  BB                         ADD
  $822E  2A                         STORE_quick   ; inline operand = 10
  $822F  A4 C2 74                   LOADL_abs              $74C2
  $8232  5F                         LOADR_qimm   ; inline operand = 15
  $8233  B5                         MULT
  $8234  A6 C0 74                   LOADR_abs              $74C0
  $8237  BB                         ADD
  $8238  8C 17 74                   LOADR_imm2             $7417
  $823B  BB                         ADD
  $823C  D3                         BYTE_DEREF
  $823D  B3                         PUSHL
  $823E  3A                         PUSH_quick   ; inline operand = 10
  $823F  3B                         PUSH_quick   ; inline operand = 11
  $8240  E9 C8 DC 06                CALL_abs_imm1          $DCC8 {native}, $06
  $8244  3C                         PUSH_quick   ; inline operand = 12
  $8245  3D                         PUSH_quick   ; inline operand = 13
  $8246  3A                         PUSH_quick   ; inline operand = 10
  $8247  3B                         PUSH_quick   ; inline operand = 11
  $8248  E9 E1 81 08                CALL_abs_imm1          $81E1 {bytecode}, $08
  $824C  0D                         LOADL_quick   ; inline operand = 13
  $824D  56                         LOADR_qimm   ; inline operand = 6
  $824E  B5                         MULT
  $824F  B3                         PUSHL
  $8250  A4 C0 74                   LOADL_abs              $74C0
  $8253  52                         LOADR_qimm   ; inline operand = 2
  $8254  B9                         SMOD
  $8255  D8 5C 82                   JUMPF_abs              $825C
  $8258  42                         LOADL_qimm   ; inline operand = 2
  $8259  D6 5D 82                   JUMP_abs               $825D
 >$825C  41                         LOADL_qimm   ; inline operand = 1
 >$825D  D2                         LSHIFT1
  $825E  B4                         POPR
  $825F  BB                         ADD
  $8260  8C DE 9C                   LOADR_imm2             $9CDE
  $8263  BB                         ADD
  $8264  B0                         DEREF
  $8265  A6 C2 74                   LOADR_abs              $74C2
  $8268  BB                         ADD
  $8269  28                         STORE_quick   ; inline operand = 8
  $826A  0D                         LOADL_quick   ; inline operand = 13
  $826B  56                         LOADR_qimm   ; inline operand = 6
  $826C  B5                         MULT
  $826D  8C DE 9C                   LOADR_imm2             $9CDE
  $8270  BB                         ADD
  $8271  B0                         DEREF
  $8272  A6 C0 74                   LOADR_abs              $74C0
  $8275  BB                         ADD
  $8276  29                         STORE_quick   ; inline operand = 9
  $8277  09                         LOADL_quick   ; inline operand = 9
  $8278  50                         LOADR_qimm   ; inline operand = 0
  $8279  C5                         SCMPGE
  $827A  D8 A0 82                   JUMPF_abs              $82A0
  $827D  09                         LOADL_quick   ; inline operand = 9
  $827E  5F                         LOADR_qimm   ; inline operand = 15
  $827F  C2                         SCMPLT
  $8280  D8 A0 82                   JUMPF_abs              $82A0
  $8283  08                         LOADL_quick   ; inline operand = 8
  $8284  50                         LOADR_qimm   ; inline operand = 0
  $8285  C5                         SCMPGE
  $8286  D8 A0 82                   JUMPF_abs              $82A0
  $8289  08                         LOADL_quick   ; inline operand = 8
  $828A  59                         LOADR_qimm   ; inline operand = 9
  $828B  C2                         SCMPLT
  $828C  D8 A0 82                   JUMPF_abs              $82A0
  $828F  08                         LOADL_quick   ; inline operand = 8
  $8290  5F                         LOADR_qimm   ; inline operand = 15
  $8291  B5                         MULT
  $8292  19                         LOADR_quick   ; inline operand = 9
  $8293  BB                         ADD
  $8294  8C 90 73                   LOADR_imm2             $7390
  $8297  BB                         ADD
  $8298  D3                         BYTE_DEREF
  $8299  8C 80 00                   LOADR_imm2             $0080
  $829C  C8                         UCMPGT
  $829D  D8 A2 82                   JUMPF_abs              $82A2
 >$82A0  40                         LOADL_qimm   ; inline operand = 0
  $82A1  CF                         RETURN
 >$82A2  A4 C2 74                   LOADL_abs              $74C2
  $82A5  5F                         LOADR_qimm   ; inline operand = 15
  $82A6  B5                         MULT
  $82A7  A6 C0 74                   LOADR_abs              $74C0
  $82AA  BB                         ADD
  $82AB  8C 17 74                   LOADR_imm2             $7417
  $82AE  BB                         ADD
  $82AF  D3                         BYTE_DEREF
  $82B0  B3                         PUSHL
  $82B1  3A                         PUSH_quick   ; inline operand = 10
  $82B2  3B                         PUSH_quick   ; inline operand = 11
  $82B3  E9 C8 DC 06                CALL_abs_imm1          $DCC8 {native}, $06
  $82B7  3C                         PUSH_quick   ; inline operand = 12
  $82B8  3D                         PUSH_quick   ; inline operand = 13
  $82B9  08                         LOADL_quick   ; inline operand = 8
  $82BA  D2                         LSHIFT1
  $82BB  B3                         PUSHL
  $82BC  09                         LOADL_quick   ; inline operand = 9
  $82BD  52                         LOADR_qimm   ; inline operand = 2
  $82BE  B9                         SMOD
  $82BF  D8 C6 82                   JUMPF_abs              $82C6
  $82C2  43                         LOADL_qimm   ; inline operand = 3
  $82C3  D6 C7 82                   JUMP_abs               $82C7
 >$82C6  42                         LOADL_qimm   ; inline operand = 2
 >$82C7  B4                         POPR
  $82C8  BB                         ADD
  $82C9  B3                         PUSHL
  $82CA  09                         LOADL_quick   ; inline operand = 9
  $82CB  D2                         LSHIFT1
  $82CC  D0                         INC
  $82CD  B3                         PUSHL
  $82CE  E9 E1 81 08                CALL_abs_imm1          $81E1 {bytecode}, $08
  $82D2  08                         LOADL_quick   ; inline operand = 8
  $82D3  A8 C2 74                   STORE_abs              $74C2
  $82D6  09                         LOADL_quick   ; inline operand = 9
  $82D7  A8 C0 74                   STORE_abs              $74C0
  $82DA  08                         LOADL_quick   ; inline operand = 8
  $82DB  5F                         LOADR_qimm   ; inline operand = 15
  $82DC  B5                         MULT
  $82DD  19                         LOADR_quick   ; inline operand = 9
  $82DE  BB                         ADD
  $82DF  A8 C4 74                   STORE_abs              $74C4
  $82E2  41                         LOADL_qimm   ; inline operand = 1
  $82E3  CF                         RETURN

; ============================================================
; sub $82E4   (frame_off=-14, body @ $82E9)   [PRG $182E4]
; ============================================================
  $82E9  0F                         LOADL_quick   ; inline operand = 15
  $82EA  52                         LOADR_qimm   ; inline operand = 2
  $82EB  C6                         UCMPLT
  $82EC  D8 23 83                   JUMPF_abs              $8323
  $82EF  0E                         LOADL_quick   ; inline operand = 14
  $82F0  8B 64                      BYTE_LOADR_imm1        +100
  $82F2  C0                         CMPEQ
  $82F3  D8 15 83                   JUMPF_abs              $8315
  $82F6  8E E0 00                   PUSH_imm2              $00E0
  $82F9  0F                         LOADL_quick   ; inline operand = 15
  $82FA  D2                         LSHIFT1
  $82FB  D2                         LSHIFT1
  $82FC  8C E2 9E                   LOADR_imm2             $9EE2
  $82FF  BB                         ADD
  $8300  B0                         DEREF
  $8301  B3                         PUSHL
  $8302  0F                         LOADL_quick   ; inline operand = 15
  $8303  D2                         LSHIFT1
  $8304  D2                         LSHIFT1
  $8305  8C E0 9E                   LOADR_imm2             $9EE0
  $8308  BB                         ADD
  $8309  B0                         DEREF
  $830A  B3                         PUSHL
  $830B  61                         PUSH_qimm   ; inline operand = 1
  $830C  62                         PUSH_qimm   ; inline operand = 2
  $830D  3D                         PUSH_quick   ; inline operand = 13
  $830E  3C                         PUSH_quick   ; inline operand = 12
  $830F  69                         PUSH_qimm   ; inline operand = 9
  $8310  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8314  CF                         RETURN
 >$8315  60                         PUSH_qimm   ; inline operand = 0
  $8316  62                         PUSH_qimm   ; inline operand = 2
  $8317  DE FE FF                   LEAL_far               $FFFE
  $831A  B3                         PUSHL
  $831B  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $831F  60                         PUSH_qimm   ; inline operand = 0
  $8320  D6 4D 83                   JUMP_abs               $834D
 >$8323  0E                         LOADL_quick   ; inline operand = 14
  $8324  8B 63                      BYTE_LOADR_imm1        +99
  $8326  C8                         UCMPGT
  $8327  D8 34 83                   JUMPF_abs              $8334
  $832A  4A                         LOADL_qimm   ; inline operand = 10
  $832B  CD                         SWAP
  $832C  0E                         LOADL_quick   ; inline operand = 14
  $832D  B8                         UDIV
  $832E  2E                         STORE_quick   ; inline operand = 14
  $832F  42                         LOADL_qimm   ; inline operand = 2
  $8330  CD                         SWAP
  $8331  0F                         LOADL_quick   ; inline operand = 15
  $8332  BB                         ADD
  $8333  2F                         STORE_quick   ; inline operand = 15
 >$8334  8D 7D                      BYTE_PUSH_imm1         +125
  $8336  62                         PUSH_qimm   ; inline operand = 2
  $8337  DE FE FF                   LEAL_far               $FFFE
  $833A  B3                         PUSHL
  $833B  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $833F  0F                         LOADL_quick   ; inline operand = 15
  $8340  51                         LOADR_qimm   ; inline operand = 1
  $8341  DA                         AND
  $8342  D8 4B 83                   JUMPF_abs              $834B
  $8345  8A 8D 00                   LOADL_imm2             $008D
  $8348  D6 4C 83                   JUMP_abs               $834C
 >$834B  4D                         LOADL_qimm   ; inline operand = 13
 >$834C  B3                         PUSHL
 >$834D  62                         PUSH_qimm   ; inline operand = 2
  $834E  DE FC FF                   LEAL_far               $FFFC
  $8351  B3                         PUSHL
  $8352  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $8356  8E FF 00                   PUSH_imm2              $00FF
  $8359  62                         PUSH_qimm   ; inline operand = 2
  $835A  DE FA FF                   LEAL_far               $FFFA
  $835D  B3                         PUSHL
  $835E  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $8362  42                         LOADL_qimm   ; inline operand = 2
  $8363  D6 79 83                   JUMP_abs               $8379
 >$8366  DE F9 FF                   LEAL_far               $FFF9
  $8369  B3                         PUSHL
  $836A  05                         LOADL_quick   ; inline operand = 5
  $836B  B4                         POPR
  $836C  BB                         ADD
  $836D  B3                         PUSHL
  $836E  0E                         LOADL_quick   ; inline operand = 14
  $836F  5A                         LOADR_qimm   ; inline operand = 10
  $8370  BA                         UMOD
  $8371  D4                         BYTE_POPSTORE
  $8372  4A                         LOADL_qimm   ; inline operand = 10
  $8373  CD                         SWAP
  $8374  0E                         LOADL_quick   ; inline operand = 14
  $8375  B8                         UDIV
  $8376  2E                         STORE_quick   ; inline operand = 14
  $8377  05                         LOADL_quick   ; inline operand = 5
  $8378  D1                         DEC
 >$8379  25                         STORE_quick   ; inline operand = 5
  $837A  0E                         LOADL_quick   ; inline operand = 14
  $837B  D8 84 83                   JUMPF_abs              $8384
  $837E  05                         LOADL_quick   ; inline operand = 5
  $837F  50                         LOADR_qimm   ; inline operand = 0
  $8380  C4                         SCMPGT
  $8381  D7 66 83                   JUMPT_abs              $8366
 >$8384  DE FE FF                   LEAL_far               $FFFE
  $8387  28                         STORE_quick   ; inline operand = 8
  $8388  DE FC FF                   LEAL_far               $FFFC
  $838B  27                         STORE_quick   ; inline operand = 7
  $838C  40                         LOADL_qimm   ; inline operand = 0
  $838D  25                         STORE_quick   ; inline operand = 5
 >$838E  DE FA FF                   LEAL_far               $FFFA
  $8391  B3                         PUSHL
  $8392  05                         LOADL_quick   ; inline operand = 5
  $8393  B4                         POPR
  $8394  BB                         ADD
  $8395  D3                         BYTE_DEREF
  $8396  26                         STORE_quick   ; inline operand = 6
  $8397  06                         LOADL_quick   ; inline operand = 6
  $8398  8C FF 00                   LOADR_imm2             $00FF
  $839B  C0                         CMPEQ
  $839C  D7 D3 83                   JUMPT_abs              $83D3
  $839F  61                         PUSH_qimm   ; inline operand = 1
  $83A0  38                         PUSH_quick   ; inline operand = 8
  $83A1  06                         LOADL_quick   ; inline operand = 6
  $83A2  D2                         LSHIFT1
  $83A3  D2                         LSHIFT1
  $83A4  B3                         PUSHL
  $83A5  0F                         LOADL_quick   ; inline operand = 15
  $83A6  8B 28                      BYTE_LOADR_imm1        +40
  $83A8  B5                         MULT
  $83A9  B4                         POPR
  $83AA  BB                         ADD
  $83AB  8C F0 9D                   LOADR_imm2             $9DF0
  $83AE  BB                         ADD
  $83AF  B0                         DEREF
  $83B0  B3                         PUSHL
  $83B1  8E E0 00                   PUSH_imm2              $00E0
  $83B4  62                         PUSH_qimm   ; inline operand = 2
  $83B5  E9 EC DC 0A                CALL_abs_imm1          $DCEC (copy_from_bank) {native}, $0A
  $83B9  61                         PUSH_qimm   ; inline operand = 1
  $83BA  37                         PUSH_quick   ; inline operand = 7
  $83BB  06                         LOADL_quick   ; inline operand = 6
  $83BC  D2                         LSHIFT1
  $83BD  D2                         LSHIFT1
  $83BE  B3                         PUSHL
  $83BF  0F                         LOADL_quick   ; inline operand = 15
  $83C0  8B 28                      BYTE_LOADR_imm1        +40
  $83C2  B5                         MULT
  $83C3  B4                         POPR
  $83C4  BB                         ADD
  $83C5  8C F2 9D                   LOADR_imm2             $9DF2
  $83C8  BB                         ADD
  $83C9  B0                         DEREF
  $83CA  B3                         PUSHL
  $83CB  8E E0 00                   PUSH_imm2              $00E0
  $83CE  62                         PUSH_qimm   ; inline operand = 2
  $83CF  E9 EC DC 0A                CALL_abs_imm1          $DCEC (copy_from_bank) {native}, $0A
 >$83D3  08                         LOADL_quick   ; inline operand = 8
  $83D4  D0                         INC
  $83D5  28                         STORE_quick   ; inline operand = 8
  $83D6  07                         LOADL_quick   ; inline operand = 7
  $83D7  D0                         INC
  $83D8  27                         STORE_quick   ; inline operand = 7
  $83D9  05                         LOADL_quick   ; inline operand = 5
  $83DA  D0                         INC
  $83DB  25                         STORE_quick   ; inline operand = 5
  $83DC  05                         LOADL_quick   ; inline operand = 5
  $83DD  52                         LOADR_qimm   ; inline operand = 2
  $83DE  C2                         SCMPLT
  $83DF  D7 8E 83                   JUMPT_abs              $838E
  $83E2  8E E0 00                   PUSH_imm2              $00E0
  $83E5  DE FC FF                   LEAL_far               $FFFC
  $83E8  B3                         PUSHL
  $83E9  DE FE FF                   LEAL_far               $FFFE
  $83EC  B3                         PUSHL
  $83ED  61                         PUSH_qimm   ; inline operand = 1
  $83EE  62                         PUSH_qimm   ; inline operand = 2
  $83EF  3D                         PUSH_quick   ; inline operand = 13
  $83F0  3C                         PUSH_quick   ; inline operand = 12
  $83F1  69                         PUSH_qimm   ; inline operand = 9
  $83F2  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $83F6  CF                         RETURN

; ============================================================
; sub $83F7   (frame_off=+0, body @ $83FC)   [PRG $183F7]
; ============================================================
  $83FC  0C                         LOADL_quick   ; inline operand = 12
  $83FD  55                         LOADR_qimm   ; inline operand = 5
  $83FE  B9                         SMOD
  $83FF  B3                         PUSHL
  $8400  0C                         LOADL_quick   ; inline operand = 12
  $8401  55                         LOADR_qimm   ; inline operand = 5
  $8402  C2                         SCMPLT
  $8403  D8 0A 84                   JUMPF_abs              $840A
  $8406  40                         LOADL_qimm   ; inline operand = 0
  $8407  D6 0B 84                   JUMP_abs               $840B
 >$840A  45                         LOADL_qimm   ; inline operand = 5
 >$840B  B4                         POPR
  $840C  BB                         ADD
  $840D  CF                         RETURN

; ============================================================
; sub $840E   (frame_off=-14, body @ $8413)   [PRG $1840E]
; ============================================================
  $8413  0C                         LOADL_quick   ; inline operand = 12
  $8414  57                         LOADR_qimm   ; inline operand = 7
  $8415  B5                         MULT
  $8416  8C 90 6C                   LOADR_imm2             $6C90
  $8419  BB                         ADD
  $841A  2B                         STORE_quick   ; inline operand = 11
  $841B  0B                         LOADL_quick   ; inline operand = 11
  $841C  74                         ADD_qimm   ; inline operand = 4
  $841D  B0                         DEREF
  $841E  D8 26 84                   JUMPF_abs              $8426
  $8421  0B                         LOADL_quick   ; inline operand = 11
  $8422  D3                         BYTE_DEREF
  $8423  D7 27 84                   JUMPT_abs              $8427
 >$8426  CF                         RETURN
 >$8427  3C                         PUSH_quick   ; inline operand = 12
  $8428  E9 F7 83 02                CALL_abs_imm1          $83F7 {bytecode}, $02
  $842C  25                         STORE_quick   ; inline operand = 5
  $842D  0D                         LOADL_quick   ; inline operand = 13
  $842E  D8 3F 84                   JUMPF_abs              $843F
  $8431  A4 C4 74                   LOADL_abs              $74C4
  $8434  5F                         LOADR_qimm   ; inline operand = 15
  $8435  B9                         SMOD
  $8436  2A                         STORE_quick   ; inline operand = 10
  $8437  A4 C4 74                   LOADL_abs              $74C4
  $843A  5F                         LOADR_qimm   ; inline operand = 15
  $843B  B6                         SDIV
  $843C  D6 4D 84                   JUMP_abs               $844D
 >$843F  05                         LOADL_quick   ; inline operand = 5
  $8440  8C AC 74                   LOADR_imm2             $74AC
  $8443  BB                         ADD
  $8444  D3                         BYTE_DEREF
  $8445  26                         STORE_quick   ; inline operand = 6
  $8446  06                         LOADL_quick   ; inline operand = 6
  $8447  5F                         LOADR_qimm   ; inline operand = 15
  $8448  BA                         UMOD
  $8449  2A                         STORE_quick   ; inline operand = 10
  $844A  06                         LOADL_quick   ; inline operand = 6
  $844B  5F                         LOADR_qimm   ; inline operand = 15
  $844C  B8                         UDIV
 >$844D  29                         STORE_quick   ; inline operand = 9
  $844E  0A                         LOADL_quick   ; inline operand = 10
  $844F  D2                         LSHIFT1
  $8450  D0                         INC
  $8451  28                         STORE_quick   ; inline operand = 8
  $8452  09                         LOADL_quick   ; inline operand = 9
  $8453  D2                         LSHIFT1
  $8454  B3                         PUSHL
  $8455  0A                         LOADL_quick   ; inline operand = 10
  $8456  51                         LOADR_qimm   ; inline operand = 1
  $8457  DA                         AND
  $8458  D8 5F 84                   JUMPF_abs              $845F
  $845B  43                         LOADL_qimm   ; inline operand = 3
  $845C  D6 60 84                   JUMP_abs               $8460
 >$845F  42                         LOADL_qimm   ; inline operand = 2
 >$8460  B4                         POPR
  $8461  BB                         ADD
  $8462  27                         STORE_quick   ; inline operand = 7
  $8463  0C                         LOADL_quick   ; inline operand = 12
  $8464  55                         LOADR_qimm   ; inline operand = 5
  $8465  C6                         UCMPLT
  $8466  D8 6D 84                   JUMPF_abs              $846D
  $8469  40                         LOADL_qimm   ; inline operand = 0
  $846A  D6 6E 84                   JUMP_abs               $846E
 >$846D  41                         LOADL_qimm   ; inline operand = 1
 >$846E  B3                         PUSHL
  $846F  0B                         LOADL_quick   ; inline operand = 11
  $8470  D3                         BYTE_DEREF
  $8471  B3                         PUSHL
  $8472  37                         PUSH_quick   ; inline operand = 7
  $8473  38                         PUSH_quick   ; inline operand = 8
  $8474  E9 E4 82 08                CALL_abs_imm1          $82E4 {bytecode}, $08
  $8478  0C                         LOADL_quick   ; inline operand = 12
  $8479  55                         LOADR_qimm   ; inline operand = 5
  $847A  C6                         UCMPLT
  $847B  D8 82 84                   JUMPF_abs              $8482
  $847E  42                         LOADL_qimm   ; inline operand = 2
  $847F  D6 83 84                   JUMP_abs               $8483
 >$8482  43                         LOADL_qimm   ; inline operand = 3
 >$8483  B3                         PUSHL
  $8484  0B                         LOADL_quick   ; inline operand = 11
  $8485  74                         ADD_qimm   ; inline operand = 4
  $8486  B0                         DEREF
  $8487  B3                         PUSHL
  $8488  07                         LOADL_quick   ; inline operand = 7
  $8489  D0                         INC
  $848A  B3                         PUSHL
  $848B  38                         PUSH_quick   ; inline operand = 8
  $848C  E9 E4 82 08                CALL_abs_imm1          $82E4 {bytecode}, $08
  $8490  CF                         RETURN

; ============================================================
; sub $8491   (frame_off=-2, body @ $8496)   [PRG $18491]
; ============================================================
  $8496  0E                         LOADL_quick   ; inline operand = 14
  $8497  55                         LOADR_qimm   ; inline operand = 5
  $8498  C6                         UCMPLT
  $8499  D8 A0 84                   JUMPF_abs              $84A0
  $849C  40                         LOADL_qimm   ; inline operand = 0
  $849D  D6 A1 84                   JUMP_abs               $84A1
 >$84A0  41                         LOADL_qimm   ; inline operand = 1
 >$84A1  2B                         STORE_quick   ; inline operand = 11
  $84A2  8E E1 00                   PUSH_imm2              $00E1
  $84A5  0B                         LOADL_quick   ; inline operand = 11
  $84A6  D2                         LSHIFT1
  $84A7  D2                         LSHIFT1
  $84A8  8C EA 9E                   LOADR_imm2             $9EEA
  $84AB  BB                         ADD
  $84AC  B0                         DEREF
  $84AD  B3                         PUSHL
  $84AE  0B                         LOADL_quick   ; inline operand = 11
  $84AF  D2                         LSHIFT1
  $84B0  D2                         LSHIFT1
  $84B1  8C E8 9E                   LOADR_imm2             $9EE8
  $84B4  BB                         ADD
  $84B5  B0                         DEREF
  $84B6  B3                         PUSHL
  $84B7  62                         PUSH_qimm   ; inline operand = 2
  $84B8  62                         PUSH_qimm   ; inline operand = 2
  $84B9  3D                         PUSH_quick   ; inline operand = 13
  $84BA  3C                         PUSH_quick   ; inline operand = 12
  $84BB  69                         PUSH_qimm   ; inline operand = 9
  $84BC  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $84C0  CF                         RETURN

; ============================================================
; sub $84C1   (frame_off=-14, body @ $84C6)   [PRG $184C1]
; ============================================================
  $84C6  0C                         LOADL_quick   ; inline operand = 12
  $84C7  57                         LOADR_qimm   ; inline operand = 7
  $84C8  B5                         MULT
  $84C9  8C 90 6C                   LOADR_imm2             $6C90
  $84CC  BB                         ADD
  $84CD  25                         STORE_quick   ; inline operand = 5
  $84CE  05                         LOADL_quick   ; inline operand = 5
  $84CF  D3                         BYTE_DEREF
  $84D0  D7 D4 84                   JUMPT_abs              $84D4
  $84D3  CF                         RETURN
 >$84D4  3C                         PUSH_quick   ; inline operand = 12
  $84D5  E9 F7 83 02                CALL_abs_imm1          $83F7 {bytecode}, $02
  $84D9  26                         STORE_quick   ; inline operand = 6
  $84DA  0D                         LOADL_quick   ; inline operand = 13
  $84DB  D8 EC 84                   JUMPF_abs              $84EC
  $84DE  A4 C4 74                   LOADL_abs              $74C4
  $84E1  5F                         LOADR_qimm   ; inline operand = 15
  $84E2  B9                         SMOD
  $84E3  2B                         STORE_quick   ; inline operand = 11
  $84E4  A4 C4 74                   LOADL_abs              $74C4
  $84E7  5F                         LOADR_qimm   ; inline operand = 15
  $84E8  B6                         SDIV
  $84E9  D6 FA 84                   JUMP_abs               $84FA
 >$84EC  06                         LOADL_quick   ; inline operand = 6
  $84ED  8C AC 74                   LOADR_imm2             $74AC
  $84F0  BB                         ADD
  $84F1  D3                         BYTE_DEREF
  $84F2  27                         STORE_quick   ; inline operand = 7
  $84F3  07                         LOADL_quick   ; inline operand = 7
  $84F4  5F                         LOADR_qimm   ; inline operand = 15
  $84F5  BA                         UMOD
  $84F6  2B                         STORE_quick   ; inline operand = 11
  $84F7  07                         LOADL_quick   ; inline operand = 7
  $84F8  5F                         LOADR_qimm   ; inline operand = 15
  $84F9  B8                         UDIV
 >$84FA  2A                         STORE_quick   ; inline operand = 10
  $84FB  0B                         LOADL_quick   ; inline operand = 11
  $84FC  D2                         LSHIFT1
  $84FD  D0                         INC
  $84FE  29                         STORE_quick   ; inline operand = 9
  $84FF  0A                         LOADL_quick   ; inline operand = 10
  $8500  D2                         LSHIFT1
  $8501  B3                         PUSHL
  $8502  0B                         LOADL_quick   ; inline operand = 11
  $8503  52                         LOADR_qimm   ; inline operand = 2
  $8504  B9                         SMOD
  $8505  D8 0C 85                   JUMPF_abs              $850C
  $8508  43                         LOADL_qimm   ; inline operand = 3
  $8509  D6 0D 85                   JUMP_abs               $850D
 >$850C  42                         LOADL_qimm   ; inline operand = 2
 >$850D  B4                         POPR
  $850E  BB                         ADD
  $850F  28                         STORE_quick   ; inline operand = 8
  $8510  05                         LOADL_quick   ; inline operand = 5
  $8511  74                         ADD_qimm   ; inline operand = 4
  $8512  B0                         DEREF
  $8513  D7 20 85                   JUMPT_abs              $8520
  $8516  3C                         PUSH_quick   ; inline operand = 12
  $8517  38                         PUSH_quick   ; inline operand = 8
  $8518  39                         PUSH_quick   ; inline operand = 9
  $8519  E9 91 84 06                CALL_abs_imm1          $8491 {bytecode}, $06
  $851D  D6 2E 85                   JUMP_abs               $852E
 >$8520  3C                         PUSH_quick   ; inline operand = 12
  $8521  06                         LOADL_quick   ; inline operand = 6
  $8522  8C B6 74                   LOADR_imm2             $74B6
  $8525  BB                         ADD
  $8526  D3                         BYTE_DEREF
  $8527  B3                         PUSHL
  $8528  38                         PUSH_quick   ; inline operand = 8
  $8529  39                         PUSH_quick   ; inline operand = 9
  $852A  E9 E1 81 08                CALL_abs_imm1          $81E1 {bytecode}, $08
 >$852E  CF                         RETURN

; ============================================================
; sub $852F   (frame_off=+0, body @ $8534)   [PRG $1852F]
; ============================================================
  $8534  60                         PUSH_qimm   ; inline operand = 0
  $8535  3C                         PUSH_quick   ; inline operand = 12
  $8536  E9 0E 84 04                CALL_abs_imm1          $840E {bytecode}, $04
  $853A  8D 18                      BYTE_PUSH_imm1         +24
  $853C  8D 11                      BYTE_PUSH_imm1         +17
  $853E  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8542  60                         PUSH_qimm   ; inline operand = 0
  $8543  3C                         PUSH_quick   ; inline operand = 12
  $8544  E9 C1 84 04                CALL_abs_imm1          $84C1 {bytecode}, $04
  $8548  CF                         RETURN

; ============================================================
; sub $8549   (frame_off=+0, body @ $854E)   [PRG $18549]
; ============================================================
  $854E  61                         PUSH_qimm   ; inline operand = 1
  $854F  3C                         PUSH_quick   ; inline operand = 12
  $8550  E9 0E 84 04                CALL_abs_imm1          $840E {bytecode}, $04
  $8554  3D                         PUSH_quick   ; inline operand = 13
  $8555  E9 2F 85 02                CALL_abs_imm1          $852F {bytecode}, $02
  $8559  61                         PUSH_qimm   ; inline operand = 1
  $855A  3C                         PUSH_quick   ; inline operand = 12
  $855B  E9 C1 84 04                CALL_abs_imm1          $84C1 {bytecode}, $04
  $855F  CF                         RETURN

; ============================================================
; sub $8560   (frame_off=-8, body @ $8565)   [PRG $18560]
; ============================================================
  $8565  0C                         LOADL_quick   ; inline operand = 12
  $8566  55                         LOADR_qimm   ; inline operand = 5
  $8567  C6                         UCMPLT
  $8568  D8 6F 85                   JUMPF_abs              $856F
  $856B  0C                         LOADL_quick   ; inline operand = 12
  $856C  D6 70 85                   JUMP_abs               $8570
 >$856F  0D                         LOADL_quick   ; inline operand = 13
 >$8570  29                         STORE_quick   ; inline operand = 9
  $8571  09                         LOADL_quick   ; inline operand = 9
  $8572  8B 18                      BYTE_LOADR_imm1        +24
  $8574  B5                         MULT
  $8575  8C A4 6A                   LOADR_imm2             $6AA4
  $8578  BB                         ADD
  $8579  2A                         STORE_quick   ; inline operand = 10
  $857A  0A                         LOADL_quick   ; inline operand = 10
  $857B  D3                         BYTE_DEREF
  $857C  5A                         LOADR_qimm   ; inline operand = 10
  $857D  B5                         MULT
  $857E  8C BE 6B                   LOADR_imm2             $6BBE
  $8581  BB                         ADD
  $8582  2B                         STORE_quick   ; inline operand = 11
  $8583  0B                         LOADL_quick   ; inline operand = 11
  $8584  D0                         INC
  $8585  D3                         BYTE_DEREF
  $8586  A9 C6 74                   BYTE_STORE_abs         $74C6
  $8589  0B                         LOADL_quick   ; inline operand = 11
  $858A  72                         ADD_qimm   ; inline operand = 2
  $858B  D3                         BYTE_DEREF
  $858C  A9 C8 74                   BYTE_STORE_abs         $74C8
  $858F  0B                         LOADL_quick   ; inline operand = 11
  $8590  74                         ADD_qimm   ; inline operand = 4
  $8591  D3                         BYTE_DEREF
  $8592  A9 CA 74                   BYTE_STORE_abs         $74CA
  $8595  0B                         LOADL_quick   ; inline operand = 11
  $8596  75                         ADD_qimm   ; inline operand = 5
  $8597  D3                         BYTE_DEREF
  $8598  A9 CC 74                   BYTE_STORE_abs         $74CC
  $859B  0A                         LOADL_quick   ; inline operand = 10
  $859C  8F 16                      BYTE_ADD_imm1          +22
  $859E  D3                         BYTE_DEREF
  $859F  A9 CE 74                   BYTE_STORE_abs         $74CE
  $85A2  0A                         LOADL_quick   ; inline operand = 10
  $85A3  D3                         BYTE_DEREF
  $85A4  57                         LOADR_qimm   ; inline operand = 7
  $85A5  B5                         MULT
  $85A6  8C 44 65                   LOADR_imm2             $6544
  $85A9  BB                         ADD
  $85AA  D3                         BYTE_DEREF
  $85AB  A9 D0 74                   BYTE_STORE_abs         $74D0
  $85AE  0C                         LOADL_quick   ; inline operand = 12
  $85AF  55                         LOADR_qimm   ; inline operand = 5
  $85B0  C6                         UCMPLT
  $85B1  D8 B8 85                   JUMPF_abs              $85B8
  $85B4  0D                         LOADL_quick   ; inline operand = 13
  $85B5  D6 B9 85                   JUMP_abs               $85B9
 >$85B8  0C                         LOADL_quick   ; inline operand = 12
 >$85B9  29                         STORE_quick   ; inline operand = 9
  $85BA  09                         LOADL_quick   ; inline operand = 9
  $85BB  A6 D4 74                   LOADR_abs              $74D4
  $85BE  C0                         CMPEQ
  $85BF  D8 C7 85                   JUMPF_abs              $85C7
  $85C2  89 4B                      BYTE_LOADL_imm1        +75
  $85C4  D6 C9 85                   JUMP_abs               $85C9
 >$85C7  89 41                      BYTE_LOADL_imm1        +65
 >$85C9  28                         STORE_quick   ; inline operand = 8
  $85CA  08                         LOADL_quick   ; inline operand = 8
  $85CB  A9 CD 74                   BYTE_STORE_abs         $74CD
  $85CE  A9 CB 74                   BYTE_STORE_abs         $74CB
  $85D1  A9 C9 74                   BYTE_STORE_abs         $74C9
  $85D4  A9 C7 74                   BYTE_STORE_abs         $74C7
  $85D7  89 50                      BYTE_LOADL_imm1        +80
  $85D9  A9 CF 74                   BYTE_STORE_abs         $74CF
  $85DC  09                         LOADL_quick   ; inline operand = 9
  $85DD  55                         LOADR_qimm   ; inline operand = 5
  $85DE  B8                         UDIV
  $85DF  8F 15                      BYTE_ADD_imm1          +21
  $85E1  57                         LOADR_qimm   ; inline operand = 7
  $85E2  B5                         MULT
  $85E3  8C 44 65                   LOADR_imm2             $6544
  $85E6  BB                         ADD
  $85E7  D3                         BYTE_DEREF
  $85E8  A9 D1 74                   BYTE_STORE_abs         $74D1
  $85EB  CF                         RETURN

; ============================================================
; sub $85EC   (frame_off=-6, body @ $85F1)   [PRG $185EC]
; ============================================================
  $85F1  41                         LOADL_qimm   ; inline operand = 1
  $85F2  29                         STORE_quick   ; inline operand = 9
  $85F3  0C                         LOADL_quick   ; inline operand = 12
  $85F4  55                         LOADR_qimm   ; inline operand = 5
  $85F5  C6                         UCMPLT
  $85F6  D8 FB 85                   JUMPF_abs              $85FB
  $85F9  40                         LOADL_qimm   ; inline operand = 0
  $85FA  29                         STORE_quick   ; inline operand = 9
 >$85FB  63                         PUSH_qimm   ; inline operand = 3
  $85FC  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8600  B3                         PUSHL
  $8601  09                         LOADL_quick   ; inline operand = 9
  $8602  8C D0 74                   LOADR_imm2             $74D0
  $8605  BB                         ADD
  $8606  D3                         BYTE_DEREF
  $8607  55                         LOADR_qimm   ; inline operand = 5
  $8608  B6                         SDIV
  $8609  D0                         INC
  $860A  B3                         PUSHL
  $860B  09                         LOADL_quick   ; inline operand = 9
  $860C  8C CA 74                   LOADR_imm2             $74CA
  $860F  BB                         ADD
  $8610  D3                         BYTE_DEREF
  $8611  B3                         PUSHL
  $8612  09                         LOADL_quick   ; inline operand = 9
  $8613  8C C8 74                   LOADR_imm2             $74C8
  $8616  BB                         ADD
  $8617  D3                         BYTE_DEREF
  $8618  B3                         PUSHL
  $8619  09                         LOADL_quick   ; inline operand = 9
  $861A  8C CC 74                   LOADR_imm2             $74CC
  $861D  BB                         ADD
  $861E  D3                         BYTE_DEREF
  $861F  D2                         LSHIFT1
  $8620  B4                         POPR
  $8621  BB                         ADD
  $8622  B4                         POPR
  $8623  BB                         ADD
  $8624  B4                         POPR
  $8625  B5                         MULT
  $8626  8B 28                      BYTE_LOADR_imm1        +40
  $8628  B6                         SDIV
  $8629  B4                         POPR
  $862A  BB                         ADD
  $862B  2B                         STORE_quick   ; inline operand = 11
  $862C  09                         LOADL_quick   ; inline operand = 9
  $862D  D7 46 86                   JUMPT_abs              $8646
  $8630  0C                         LOADL_quick   ; inline operand = 12
  $8631  8B 18                      BYTE_LOADR_imm1        +24
  $8633  B5                         MULT
  $8634  8C A4 6A                   LOADR_imm2             $6AA4
  $8637  BB                         ADD
  $8638  D3                         BYTE_DEREF
  $8639  D7 4E 86                   JUMPT_abs              $864E
  $863C  62                         PUSH_qimm   ; inline operand = 2
  $863D  E9 52 D6 02                CALL_abs_imm1          $D652 {native}, $02
  $8641  1B                         LOADR_quick   ; inline operand = 11
  $8642  B5                         MULT
  $8643  D6 48 86                   JUMP_abs               $8648
 >$8646  0B                         LOADL_quick   ; inline operand = 11
  $8647  D2                         LSHIFT1
 >$8648  58                         LOADR_qimm   ; inline operand = 8
  $8649  B6                         SDIV
  $864A  CD                         SWAP
  $864B  0B                         LOADL_quick   ; inline operand = 11
  $864C  BB                         ADD
  $864D  2B                         STORE_quick   ; inline operand = 11
 >$864E  09                         LOADL_quick   ; inline operand = 9
  $864F  8C CE 74                   LOADR_imm2             $74CE
  $8652  BB                         ADD
  $8653  D3                         BYTE_DEREF
  $8654  B3                         PUSHL
  $8655  0C                         LOADL_quick   ; inline operand = 12
  $8656  57                         LOADR_qimm   ; inline operand = 7
  $8657  B5                         MULT
  $8658  8C 94 6C                   LOADR_imm2             $6C94
  $865B  BB                         ADD
  $865C  B0                         DEREF
  $865D  B4                         POPR
  $865E  B5                         MULT
  $865F  8C 96 00                   LOADR_imm2             $0096
  $8662  B6                         SDIV
  $8663  2A                         STORE_quick   ; inline operand = 10
  $8664  0B                         LOADL_quick   ; inline operand = 11
  $8665  B7 25                      LONG                   $25
  $8667  B7 14                      LONG                   $14
  $8669  0A                         LOADL_quick   ; inline operand = 10
  $866A  B7 25                      LONG                   $25
  $866C  B7 15                      LONG                   $15
  $866E  B7 01                      LONG                   $01
  $8670  B7 19 64 00 00 00          LONG                   $19 $64 $00 $00 $00
  $8676  B7 02                      LONG                   $02
  $8678  B7 19 01 00 00 00          LONG                   $19 $01 $00 $00 $00
  $867E  B7 03                      LONG                   $03
  $8680  B7 27                      LONG                   $27
  $8682  CF                         RETURN

; ============================================================
; sub $8683   (frame_off=-6, body @ $8688)   [PRG $18683]
; ============================================================
  $8688  0D                         LOADL_quick   ; inline operand = 13
  $8689  57                         LOADR_qimm   ; inline operand = 7
  $868A  B5                         MULT
  $868B  8C 90 6C                   LOADR_imm2             $6C90
  $868E  BB                         ADD
  $868F  2B                         STORE_quick   ; inline operand = 11
  $8690  3C                         PUSH_quick   ; inline operand = 12
  $8691  E9 EC 85 02                CALL_abs_imm1          $85EC {bytecode}, $02
  $8695  B3                         PUSHL
  $8696  0B                         LOADL_quick   ; inline operand = 11
  $8697  74                         ADD_qimm   ; inline operand = 4
  $8698  B0                         DEREF
  $8699  B3                         PUSHL
  $869A  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $869E  B3                         PUSHL
  $869F  0B                         LOADL_quick   ; inline operand = 11
  $86A0  74                         ADD_qimm   ; inline operand = 4
  $86A1  B4                         POPR
  $86A2  B3                         PUSHL
  $86A3  B0                         DEREF
  $86A4  BC                         SUB
  $86A5  B1                         POPSTORE
  $86A6  0C                         LOADL_quick   ; inline operand = 12
  $86A7  55                         LOADR_qimm   ; inline operand = 5
  $86A8  C6                         UCMPLT
  $86A9  D8 E5 86                   JUMPF_abs              $86E5
  $86AC  0B                         LOADL_quick   ; inline operand = 11
  $86AD  74                         ADD_qimm   ; inline operand = 4
  $86AE  B0                         DEREF
  $86AF  D7 E5 86                   JUMPT_abs              $86E5
  $86B2  0C                         LOADL_quick   ; inline operand = 12
  $86B3  8B 18                      BYTE_LOADR_imm1        +24
  $86B5  B5                         MULT
  $86B6  8C A4 6A                   LOADR_imm2             $6AA4
  $86B9  BB                         ADD
  $86BA  D3                         BYTE_DEREF
  $86BB  29                         STORE_quick   ; inline operand = 9
  $86BC  09                         LOADL_quick   ; inline operand = 9
  $86BD  57                         LOADR_qimm   ; inline operand = 7
  $86BE  B5                         MULT
  $86BF  8C 44 65                   LOADR_imm2             $6544
  $86C2  BB                         ADD
  $86C3  D3                         BYTE_DEREF
  $86C4  8B 32                      BYTE_LOADR_imm1        +50
  $86C6  C1                         CMPNE
  $86C7  D8 E5 86                   JUMPF_abs              $86E5
  $86CA  0B                         LOADL_quick   ; inline operand = 11
  $86CB  76                         ADD_qimm   ; inline operand = 6
  $86CC  D3                         BYTE_DEREF
  $86CD  5F                         LOADR_qimm   ; inline operand = 15
  $86CE  DA                         AND
  $86CF  8F FC                      BYTE_ADD_imm1          -4
  $86D1  2A                         STORE_quick   ; inline operand = 10
  $86D2  0A                         LOADL_quick   ; inline operand = 10
  $86D3  1A                         LOADR_quick   ; inline operand = 10
  $86D4  B5                         MULT
  $86D5  8B 64                      BYTE_LOADR_imm1        +100
  $86D7  B5                         MULT
  $86D8  B3                         PUSHL
  $86D9  09                         LOADL_quick   ; inline operand = 9
  $86DA  5A                         LOADR_qimm   ; inline operand = 10
  $86DB  B5                         MULT
  $86DC  8C C4 6B                   LOADR_imm2             $6BC4
  $86DF  BB                         ADD
  $86E0  B4                         POPR
  $86E1  B3                         PUSHL
  $86E2  B0                         DEREF
  $86E3  BB                         ADD
  $86E4  B1                         POPSTORE
 >$86E5  CF                         RETURN

; ============================================================
; sub $86E6   (frame_off=+0, body @ $86EB)   [PRG $186E6]
; ============================================================
  $86EB  3D                         PUSH_quick   ; inline operand = 13
  $86EC  3C                         PUSH_quick   ; inline operand = 12
  $86ED  E9 60 85 04                CALL_abs_imm1          $8560 {bytecode}, $04
  $86F1  3D                         PUSH_quick   ; inline operand = 13
  $86F2  3C                         PUSH_quick   ; inline operand = 12
  $86F3  E9 83 86 04                CALL_abs_imm1          $8683 {bytecode}, $04
  $86F7  3C                         PUSH_quick   ; inline operand = 12
  $86F8  3D                         PUSH_quick   ; inline operand = 13
  $86F9  E9 83 86 04                CALL_abs_imm1          $8683 {bytecode}, $04
  $86FD  3D                         PUSH_quick   ; inline operand = 13
  $86FE  3C                         PUSH_quick   ; inline operand = 12
  $86FF  E9 49 85 04                CALL_abs_imm1          $8549 {bytecode}, $04
  $8703  CF                         RETURN

; ============================================================
; sub $8704   (frame_off=-16, body @ $8709)   [PRG $18704]
; ============================================================
  $8709  3D                         PUSH_quick   ; inline operand = 13
  $870A  3C                         PUSH_quick   ; inline operand = 12
  $870B  E9 60 85 04                CALL_abs_imm1          $8560 {bytecode}, $04
  $870F  0C                         LOADL_quick   ; inline operand = 12
  $8710  55                         LOADR_qimm   ; inline operand = 5
  $8711  C6                         UCMPLT
  $8712  D8 19 87                   JUMPF_abs              $8719
  $8715  40                         LOADL_qimm   ; inline operand = 0
  $8716  D6 1A 87                   JUMP_abs               $871A
 >$8719  41                         LOADL_qimm   ; inline operand = 1
 >$871A  25                         STORE_quick   ; inline operand = 5
  $871B  0C                         LOADL_quick   ; inline operand = 12
  $871C  57                         LOADR_qimm   ; inline operand = 7
  $871D  B5                         MULT
  $871E  8C 90 6C                   LOADR_imm2             $6C90
  $8721  BB                         ADD
  $8722  24                         STORE_quick   ; inline operand = 4
  $8723  05                         LOADL_quick   ; inline operand = 5
  $8724  8C C6 74                   LOADR_imm2             $74C6
  $8727  BB                         ADD
  $8728  D3                         BYTE_DEREF
  $8729  B3                         PUSHL
  $872A  05                         LOADL_quick   ; inline operand = 5
  $872B  8C CA 74                   LOADR_imm2             $74CA
  $872E  BB                         ADD
  $872F  D3                         BYTE_DEREF
  $8730  D2                         LSHIFT1
  $8731  B4                         POPR
  $8732  BB                         ADD
  $8733  2B                         STORE_quick   ; inline operand = 11
  $8734  0B                         LOADL_quick   ; inline operand = 11
  $8735  5F                         LOADR_qimm   ; inline operand = 15
  $8736  B6                         SDIV
  $8737  B3                         PUSHL
  $8738  65                         PUSH_qimm   ; inline operand = 5
  $8739  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $873D  B3                         PUSHL
  $873E  05                         LOADL_quick   ; inline operand = 5
  $873F  8C D0 74                   LOADR_imm2             $74D0
  $8742  BB                         ADD
  $8743  D3                         BYTE_DEREF
  $8744  55                         LOADR_qimm   ; inline operand = 5
  $8745  B6                         SDIV
  $8746  D0                         INC
  $8747  1B                         LOADR_quick   ; inline operand = 11
  $8748  B5                         MULT
  $8749  8B 28                      BYTE_LOADR_imm1        +40
  $874B  B6                         SDIV
  $874C  B4                         POPR
  $874D  BB                         ADD
  $874E  B4                         POPR
  $874F  BB                         ADD
  $8750  2A                         STORE_quick   ; inline operand = 10
  $8751  0C                         LOADL_quick   ; inline operand = 12
  $8752  8B 18                      BYTE_LOADR_imm1        +24
  $8754  B5                         MULT
  $8755  8C A4 6A                   LOADR_imm2             $6AA4
  $8758  BB                         ADD
  $8759  D3                         BYTE_DEREF
  $875A  29                         STORE_quick   ; inline operand = 9
  $875B  05                         LOADL_quick   ; inline operand = 5
  $875C  D7 76 87                   JUMPT_abs              $8776
  $875F  09                         LOADL_quick   ; inline operand = 9
  $8760  D7 76 87                   JUMPT_abs              $8776
  $8763  8D 64                      BYTE_PUSH_imm1         +100
  $8765  63                         PUSH_qimm   ; inline operand = 3
  $8766  E9 52 D6 02                CALL_abs_imm1          $D652 {native}, $02
  $876A  1A                         LOADR_quick   ; inline operand = 10
  $876B  B5                         MULT
  $876C  53                         LOADR_qimm   ; inline operand = 3
  $876D  BE                         URSHIFT
  $876E  1A                         LOADR_quick   ; inline operand = 10
  $876F  BB                         ADD
  $8770  B3                         PUSHL
  $8771  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8775  2A                         STORE_quick   ; inline operand = 10
 >$8776  05                         LOADL_quick   ; inline operand = 5
  $8777  D8 88 87                   JUMPF_abs              $8788
  $877A  8D 64                      BYTE_PUSH_imm1         +100
  $877C  0A                         LOADL_quick   ; inline operand = 10
  $877D  D2                         LSHIFT1
  $877E  53                         LOADR_qimm   ; inline operand = 3
  $877F  BE                         URSHIFT
  $8780  1A                         LOADR_quick   ; inline operand = 10
  $8781  BB                         ADD
  $8782  B3                         PUSHL
  $8783  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8787  2A                         STORE_quick   ; inline operand = 10
 >$8788  63                         PUSH_qimm   ; inline operand = 3
  $8789  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $878D  B3                         PUSHL
  $878E  05                         LOADL_quick   ; inline operand = 5
  $878F  8C CE 74                   LOADR_imm2             $74CE
  $8792  BB                         ADD
  $8793  D3                         BYTE_DEREF
  $8794  B3                         PUSHL
  $8795  04                         LOADL_quick   ; inline operand = 4
  $8796  74                         ADD_qimm   ; inline operand = 4
  $8797  B0                         DEREF
  $8798  B3                         PUSHL
  $8799  04                         LOADL_quick   ; inline operand = 4
  $879A  73                         ADD_qimm   ; inline operand = 3
  $879B  D3                         BYTE_DEREF
  $879C  B3                         PUSHL
  $879D  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $87A1  51                         LOADR_qimm   ; inline operand = 1
  $87A2  BE                         URSHIFT
  $87A3  B4                         POPR
  $87A4  B5                         MULT
  $87A5  8B 64                      BYTE_LOADR_imm1        +100
  $87A7  B8                         UDIV
  $87A8  1A                         LOADR_quick   ; inline operand = 10
  $87A9  B5                         MULT
  $87AA  8B 64                      BYTE_LOADR_imm1        +100
  $87AC  B6                         SDIV
  $87AD  B4                         POPR
  $87AE  BB                         ADD
  $87AF  28                         STORE_quick   ; inline operand = 8
  $87B0  04                         LOADL_quick   ; inline operand = 4
  $87B1  76                         ADD_qimm   ; inline operand = 6
  $87B2  D3                         BYTE_DEREF
  $87B3  54                         LOADR_qimm   ; inline operand = 4
  $87B4  BE                         URSHIFT
  $87B5  53                         LOADR_qimm   ; inline operand = 3
  $87B6  DA                         AND
  $87B7  53                         LOADR_qimm   ; inline operand = 3
  $87B8  C0                         CMPEQ
  $87B9  D8 C1 87                   JUMPF_abs              $87C1
  $87BC  42                         LOADL_qimm   ; inline operand = 2
  $87BD  CD                         SWAP
  $87BE  08                         LOADL_quick   ; inline operand = 8
  $87BF  B5                         MULT
  $87C0  28                         STORE_quick   ; inline operand = 8
 >$87C1  05                         LOADL_quick   ; inline operand = 5
  $87C2  D8 E0 87                   JUMPF_abs              $87E0
  $87C5  0D                         LOADL_quick   ; inline operand = 13
  $87C6  8B 18                      BYTE_LOADR_imm1        +24
  $87C8  B5                         MULT
  $87C9  8C A4 6A                   LOADR_imm2             $6AA4
  $87CC  BB                         ADD
  $87CD  D3                         BYTE_DEREF
  $87CE  D7 E0 87                   JUMPT_abs              $87E0
  $87D1  08                         LOADL_quick   ; inline operand = 8
  $87D2  5A                         LOADR_qimm   ; inline operand = 10
  $87D3  B6                         SDIV
  $87D4  B3                         PUSHL
  $87D5  61                         PUSH_qimm   ; inline operand = 1
  $87D6  E9 52 D6 02                CALL_abs_imm1          $D652 {native}, $02
  $87DA  B4                         POPR
  $87DB  B5                         MULT
  $87DC  CD                         SWAP
  $87DD  08                         LOADL_quick   ; inline operand = 8
  $87DE  BC                         SUB
  $87DF  28                         STORE_quick   ; inline operand = 8
 >$87E0  05                         LOADL_quick   ; inline operand = 5
  $87E1  D7 EC 87                   JUMPT_abs              $87EC
  $87E4  08                         LOADL_quick   ; inline operand = 8
  $87E5  5A                         LOADR_qimm   ; inline operand = 10
  $87E6  B6                         SDIV
  $87E7  D2                         LSHIFT1
  $87E8  CD                         SWAP
  $87E9  08                         LOADL_quick   ; inline operand = 8
  $87EA  BC                         SUB
  $87EB  28                         STORE_quick   ; inline operand = 8
 >$87EC  08                         LOADL_quick   ; inline operand = 8
  $87ED  52                         LOADR_qimm   ; inline operand = 2
  $87EE  B6                         SDIV
  $87EF  26                         STORE_quick   ; inline operand = 6
  $87F0  0D                         LOADL_quick   ; inline operand = 13
  $87F1  57                         LOADR_qimm   ; inline operand = 7
  $87F2  B5                         MULT
  $87F3  8C 90 6C                   LOADR_imm2             $6C90
  $87F6  BB                         ADD
  $87F7  24                         STORE_quick   ; inline operand = 4
  $87F8  38                         PUSH_quick   ; inline operand = 8
  $87F9  04                         LOADL_quick   ; inline operand = 4
  $87FA  D3                         BYTE_DEREF
  $87FB  B3                         PUSHL
  $87FC  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8800  B3                         PUSHL
  $8801  04                         LOADL_quick   ; inline operand = 4
  $8802  B4                         POPR
  $8803  B3                         PUSHL
  $8804  D3                         BYTE_DEREF
  $8805  BC                         SUB
  $8806  D4                         BYTE_POPSTORE
  $8807  63                         PUSH_qimm   ; inline operand = 3
  $8808  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $880C  16                         LOADR_quick   ; inline operand = 6
  $880D  BB                         ADD
  $880E  B3                         PUSHL
  $880F  04                         LOADL_quick   ; inline operand = 4
  $8810  74                         ADD_qimm   ; inline operand = 4
  $8811  B0                         DEREF
  $8812  B3                         PUSHL
  $8813  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8817  B3                         PUSHL
  $8818  04                         LOADL_quick   ; inline operand = 4
  $8819  74                         ADD_qimm   ; inline operand = 4
  $881A  B4                         POPR
  $881B  B3                         PUSHL
  $881C  B0                         DEREF
  $881D  BC                         SUB
  $881E  B1                         POPSTORE
  $881F  63                         PUSH_qimm   ; inline operand = 3
  $8820  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8824  16                         LOADR_quick   ; inline operand = 6
  $8825  BB                         ADD
  $8826  B3                         PUSHL
  $8827  04                         LOADL_quick   ; inline operand = 4
  $8828  72                         ADD_qimm   ; inline operand = 2
  $8829  D3                         BYTE_DEREF
  $882A  B3                         PUSHL
  $882B  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $882F  B3                         PUSHL
  $8830  04                         LOADL_quick   ; inline operand = 4
  $8831  72                         ADD_qimm   ; inline operand = 2
  $8832  B4                         POPR
  $8833  B3                         PUSHL
  $8834  D3                         BYTE_DEREF
  $8835  BC                         SUB
  $8836  D4                         BYTE_POPSTORE
  $8837  63                         PUSH_qimm   ; inline operand = 3
  $8838  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $883C  16                         LOADR_quick   ; inline operand = 6
  $883D  BB                         ADD
  $883E  B3                         PUSHL
  $883F  04                         LOADL_quick   ; inline operand = 4
  $8840  D0                         INC
  $8841  D3                         BYTE_DEREF
  $8842  B3                         PUSHL
  $8843  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8847  B3                         PUSHL
  $8848  04                         LOADL_quick   ; inline operand = 4
  $8849  D0                         INC
  $884A  B4                         POPR
  $884B  B3                         PUSHL
  $884C  D3                         BYTE_DEREF
  $884D  BC                         SUB
  $884E  D4                         BYTE_POPSTORE
  $884F  3D                         PUSH_quick   ; inline operand = 13
  $8850  E9 2F 85 02                CALL_abs_imm1          $852F {bytecode}, $02
  $8854  04                         LOADL_quick   ; inline operand = 4
  $8855  D3                         BYTE_DEREF
  $8856  D7 A4 88                   JUMPT_abs              $88A4
  $8859  A4 C2 74                   LOADL_abs              $74C2
  $885C  5F                         LOADR_qimm   ; inline operand = 15
  $885D  B5                         MULT
  $885E  A6 C0 74                   LOADR_abs              $74C0
  $8861  BB                         ADD
  $8862  8C 17 74                   LOADR_imm2             $7417
  $8865  BB                         ADD
  $8866  D3                         BYTE_DEREF
  $8867  B3                         PUSHL
  $8868  A4 C2 74                   LOADL_abs              $74C2
  $886B  D2                         LSHIFT1
  $886C  B3                         PUSHL
  $886D  A4 C0 74                   LOADL_abs              $74C0
  $8870  52                         LOADR_qimm   ; inline operand = 2
  $8871  B9                         SMOD
  $8872  D8 79 88                   JUMPF_abs              $8879
  $8875  43                         LOADL_qimm   ; inline operand = 3
  $8876  D6 7A 88                   JUMP_abs               $887A
 >$8879  42                         LOADL_qimm   ; inline operand = 2
 >$887A  B4                         POPR
  $887B  BB                         ADD
  $887C  B3                         PUSHL
  $887D  A4 C0 74                   LOADL_abs              $74C0
  $8880  D2                         LSHIFT1
  $8881  D0                         INC
  $8882  B3                         PUSHL
  $8883  E9 C8 DC 06                CALL_abs_imm1          $DCC8 {native}, $06
  $8887  0D                         LOADL_quick   ; inline operand = 13
  $8888  55                         LOADR_qimm   ; inline operand = 5
  $8889  C6                         UCMPLT
  $888A  D8 A4 88                   JUMPF_abs              $88A4
  $888D  8E FE 00                   PUSH_imm2              $00FE
  $8890  0D                         LOADL_quick   ; inline operand = 13
  $8891  8B 18                      BYTE_LOADR_imm1        +24
  $8893  B5                         MULT
  $8894  8C A4 6A                   LOADR_imm2             $6AA4
  $8897  BB                         ADD
  $8898  D3                         BYTE_DEREF
  $8899  57                         LOADR_qimm   ; inline operand = 7
  $889A  B5                         MULT
  $889B  8C 48 65                   LOADR_imm2             $6548
  $889E  BB                         ADD
  $889F  B4                         POPR
  $88A0  B3                         PUSHL
  $88A1  D3                         BYTE_DEREF
  $88A2  DA                         AND
  $88A3  D4                         BYTE_POPSTORE
 >$88A4  04                         LOADL_quick   ; inline operand = 4
  $88A5  D3                         BYTE_DEREF
  $88A6  D8 AF 88                   JUMPF_abs              $88AF
  $88A9  04                         LOADL_quick   ; inline operand = 4
  $88AA  74                         ADD_qimm   ; inline operand = 4
  $88AB  B0                         DEREF
  $88AC  D7 DC 88                   JUMPT_abs              $88DC
 >$88AF  05                         LOADL_quick   ; inline operand = 5
  $88B0  D7 DC 88                   JUMPT_abs              $88DC
  $88B3  09                         LOADL_quick   ; inline operand = 9
  $88B4  57                         LOADR_qimm   ; inline operand = 7
  $88B5  B5                         MULT
  $88B6  8C 44 65                   LOADR_imm2             $6544
  $88B9  BB                         ADD
  $88BA  D3                         BYTE_DEREF
  $88BB  8B 32                      BYTE_LOADR_imm1        +50
  $88BD  C1                         CMPNE
  $88BE  D8 DC 88                   JUMPF_abs              $88DC
  $88C1  04                         LOADL_quick   ; inline operand = 4
  $88C2  76                         ADD_qimm   ; inline operand = 6
  $88C3  D3                         BYTE_DEREF
  $88C4  5F                         LOADR_qimm   ; inline operand = 15
  $88C5  DA                         AND
  $88C6  8F FC                      BYTE_ADD_imm1          -4
  $88C8  27                         STORE_quick   ; inline operand = 7
  $88C9  07                         LOADL_quick   ; inline operand = 7
  $88CA  17                         LOADR_quick   ; inline operand = 7
  $88CB  B5                         MULT
  $88CC  8B 64                      BYTE_LOADR_imm1        +100
  $88CE  B5                         MULT
  $88CF  B3                         PUSHL
  $88D0  09                         LOADL_quick   ; inline operand = 9
  $88D1  5A                         LOADR_qimm   ; inline operand = 10
  $88D2  B5                         MULT
  $88D3  8C C4 6B                   LOADR_imm2             $6BC4
  $88D6  BB                         ADD
  $88D7  B4                         POPR
  $88D8  B3                         PUSHL
  $88D9  B0                         DEREF
  $88DA  BB                         ADD
  $88DB  B1                         POPSTORE
 >$88DC  CF                         RETURN

; ============================================================
; sub $88DD   (frame_off=+0, body @ $88E2)   [PRG $188DD]
; ============================================================
  $88E2  0C                         LOADL_quick   ; inline operand = 12
  $88E3  8B 18                      BYTE_LOADR_imm1        +24
  $88E5  B5                         MULT
  $88E6  8C A4 6A                   LOADR_imm2             $6AA4
  $88E9  BB                         ADD
  $88EA  D3                         BYTE_DEREF
  $88EB  57                         LOADR_qimm   ; inline operand = 7
  $88EC  B5                         MULT
  $88ED  8C 44 65                   LOADR_imm2             $6544
  $88F0  BB                         ADD
  $88F1  D3                         BYTE_DEREF
  $88F2  55                         LOADR_qimm   ; inline operand = 5
  $88F3  B8                         UDIV
  $88F4  B3                         PUSHL
  $88F5  0C                         LOADL_quick   ; inline operand = 12
  $88F6  57                         LOADR_qimm   ; inline operand = 7
  $88F7  B5                         MULT
  $88F8  8C 92 6C                   LOADR_imm2             $6C92
  $88FB  BB                         ADD
  $88FC  D3                         BYTE_DEREF
  $88FD  A6 DC 74                   LOADR_abs              $74DC
  $8900  B5                         MULT
  $8901  8B 32                      BYTE_LOADR_imm1        +50
  $8903  B8                         UDIV
  $8904  B4                         POPR
  $8905  BB                         ADD
  $8906  76                         ADD_qimm   ; inline operand = 6
  $8907  B3                         PUSHL
  $8908  8D 14                      BYTE_PUSH_imm1         +20
  $890A  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $890E  CF                         RETURN

; ============================================================
; sub $890F   (frame_off=-6, body @ $8914)   [PRG $1890F]
; ============================================================
  $8914  8A FA 00                   LOADL_imm2             $00FA
  $8917  29                         STORE_quick   ; inline operand = 9
  $8918  0D                         LOADL_quick   ; inline operand = 13
  $8919  53                         LOADR_qimm   ; inline operand = 3
  $891A  BD                         LSHIFT
  $891B  73                         ADD_qimm   ; inline operand = 3
  $891C  A2 FC FF                   BYTE_STORE_far         $FFFC
  $891F  09                         LOADL_quick   ; inline operand = 9
  $8920  A2 FD FF                   BYTE_STORE_far         $FFFD
  $8923  43                         LOADL_qimm   ; inline operand = 3
  $8924  A2 FE FF                   BYTE_STORE_far         $FFFE
  $8927  0C                         LOADL_quick   ; inline operand = 12
  $8928  53                         LOADR_qimm   ; inline operand = 3
  $8929  BD                         LSHIFT
  $892A  74                         ADD_qimm   ; inline operand = 4
  $892B  A2 FF FF                   BYTE_STORE_far         $FFFF
  $892E  61                         PUSH_qimm   ; inline operand = 1
  $892F  AA F8 75                   PUSH_abs               $75F8
  $8932  DE FC FF                   LEAL_far               $FFFC
  $8935  B3                         PUSHL
  $8936  6D                         PUSH_qimm   ; inline operand = 13
  $8937  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $893B  A4 F8 75                   LOADL_abs              $75F8
  $893E  D0                         INC
  $893F  A8 F8 75                   STORE_abs              $75F8
  $8942  CF                         RETURN

; ============================================================
; sub $8943   (frame_off=+0, body @ $8948)   [PRG $18943]
; ============================================================
  $8948  4D                         LOADL_qimm   ; inline operand = 13
  $8949  A8 F8 75                   STORE_abs              $75F8
  $894C  89 3F                      BYTE_LOADL_imm1        +63
  $894E  A6 F8 75                   LOADR_abs              $75F8
  $8951  BC                         SUB
  $8952  B3                         PUSHL
  $8953  AA F8 75                   PUSH_abs               $75F8
  $8956  6C                         PUSH_qimm   ; inline operand = 12
  $8957  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $895B  CF                         RETURN

; ============================================================
; sub $895C   (frame_off=+0, body @ $8961)   [PRG $1895C]
; ============================================================
 >$8961  60                         PUSH_qimm   ; inline operand = 0
  $8962  8D 10                      BYTE_PUSH_imm1         +16
  $8964  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8968  54                         LOADR_qimm   ; inline operand = 4
  $8969  C1                         CMPNE
  $896A  D7 61 89                   JUMPT_abs              $8961
 >$896D  60                         PUSH_qimm   ; inline operand = 0
  $896E  8D 10                      BYTE_PUSH_imm1         +16
  $8970  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8974  D7 6D 89                   JUMPT_abs              $896D
  $8977  CF                         RETURN

; ============================================================
; sub $8978   (frame_off=-4, body @ $897D)   [PRG $18978]
; ============================================================
  $897D  8A 9E 74                   LOADL_imm2             $749E
  $8980  2B                         STORE_quick   ; inline operand = 11
  $8981  A6 A8 74                   LOADR_abs              $74A8
  $8984  BB                         ADD
  $8985  2A                         STORE_quick   ; inline operand = 10
  $8986  D6 98 89                   JUMP_abs               $8998
 >$8989  0B                         LOADL_quick   ; inline operand = 11
  $898A  D3                         BYTE_DEREF
  $898B  1C                         LOADR_quick   ; inline operand = 12
  $898C  C0                         CMPEQ
  $898D  B3                         PUSHL
  $898E  0B                         LOADL_quick   ; inline operand = 11
  $898F  D3                         BYTE_DEREF
  $8990  B3                         PUSHL
  $8991  E9 0E 84 04                CALL_abs_imm1          $840E {bytecode}, $04
  $8995  0B                         LOADL_quick   ; inline operand = 11
  $8996  D0                         INC
  $8997  2B                         STORE_quick   ; inline operand = 11
 >$8998  0B                         LOADL_quick   ; inline operand = 11
  $8999  1A                         LOADR_quick   ; inline operand = 10
  $899A  C6                         UCMPLT
  $899B  D7 89 89                   JUMPT_abs              $8989
  $899E  8A A3 74                   LOADL_imm2             $74A3
  $89A1  2B                         STORE_quick   ; inline operand = 11
  $89A2  A6 AA 74                   LOADR_abs              $74AA
  $89A5  BB                         ADD
  $89A6  2A                         STORE_quick   ; inline operand = 10
  $89A7  D6 B9 89                   JUMP_abs               $89B9
 >$89AA  0B                         LOADL_quick   ; inline operand = 11
  $89AB  D3                         BYTE_DEREF
  $89AC  1C                         LOADR_quick   ; inline operand = 12
  $89AD  C0                         CMPEQ
  $89AE  B3                         PUSHL
  $89AF  0B                         LOADL_quick   ; inline operand = 11
  $89B0  D3                         BYTE_DEREF
  $89B1  B3                         PUSHL
  $89B2  E9 0E 84 04                CALL_abs_imm1          $840E {bytecode}, $04
  $89B6  0B                         LOADL_quick   ; inline operand = 11
  $89B7  D0                         INC
  $89B8  2B                         STORE_quick   ; inline operand = 11
 >$89B9  0B                         LOADL_quick   ; inline operand = 11
  $89BA  1A                         LOADR_quick   ; inline operand = 10
  $89BB  C6                         UCMPLT
  $89BC  D7 AA 89                   JUMPT_abs              $89AA
  $89BF  AC 5C 89                   CALL_abs               $895C {bytecode}
  $89C2  8A A3 74                   LOADL_imm2             $74A3
  $89C5  2B                         STORE_quick   ; inline operand = 11
  $89C6  A6 AA 74                   LOADR_abs              $74AA
  $89C9  BB                         ADD
  $89CA  2A                         STORE_quick   ; inline operand = 10
  $89CB  D6 DD 89                   JUMP_abs               $89DD
 >$89CE  0B                         LOADL_quick   ; inline operand = 11
  $89CF  D3                         BYTE_DEREF
  $89D0  1C                         LOADR_quick   ; inline operand = 12
  $89D1  C0                         CMPEQ
  $89D2  B3                         PUSHL
  $89D3  0B                         LOADL_quick   ; inline operand = 11
  $89D4  D3                         BYTE_DEREF
  $89D5  B3                         PUSHL
  $89D6  E9 C1 84 04                CALL_abs_imm1          $84C1 {bytecode}, $04
  $89DA  0B                         LOADL_quick   ; inline operand = 11
  $89DB  D0                         INC
  $89DC  2B                         STORE_quick   ; inline operand = 11
 >$89DD  0B                         LOADL_quick   ; inline operand = 11
  $89DE  1A                         LOADR_quick   ; inline operand = 10
  $89DF  C6                         UCMPLT
  $89E0  D7 CE 89                   JUMPT_abs              $89CE
  $89E3  8A 9E 74                   LOADL_imm2             $749E
  $89E6  2B                         STORE_quick   ; inline operand = 11
  $89E7  A6 A8 74                   LOADR_abs              $74A8
  $89EA  BB                         ADD
  $89EB  2A                         STORE_quick   ; inline operand = 10
  $89EC  D6 FE 89                   JUMP_abs               $89FE
 >$89EF  0B                         LOADL_quick   ; inline operand = 11
  $89F0  D3                         BYTE_DEREF
  $89F1  1C                         LOADR_quick   ; inline operand = 12
  $89F2  C0                         CMPEQ
  $89F3  B3                         PUSHL
  $89F4  0B                         LOADL_quick   ; inline operand = 11
  $89F5  D3                         BYTE_DEREF
  $89F6  B3                         PUSHL
  $89F7  E9 C1 84 04                CALL_abs_imm1          $84C1 {bytecode}, $04
  $89FB  0B                         LOADL_quick   ; inline operand = 11
  $89FC  D0                         INC
  $89FD  2B                         STORE_quick   ; inline operand = 11
 >$89FE  0B                         LOADL_quick   ; inline operand = 11
  $89FF  1A                         LOADR_quick   ; inline operand = 10
  $8A00  C6                         UCMPLT
  $8A01  D7 EF 89                   JUMPT_abs              $89EF
  $8A04  CF                         RETURN

; ============================================================
; sub $8A05   (frame_off=-20, body @ $8A0A)   [PRG $18A05]
; ============================================================
  $8A0A  8A E8 00                   LOADL_imm2             $00E8
  $8A0D  2B                         STORE_quick   ; inline operand = 11
  $8A0E  48                         LOADL_qimm   ; inline operand = 8
  $8A0F  CD                         SWAP
  $8A10  0C                         LOADL_quick   ; inline operand = 12
  $8A11  B5                         MULT
  $8A12  2C                         STORE_quick   ; inline operand = 12
  $8A13  0D                         LOADL_quick   ; inline operand = 13
  $8A14  53                         LOADR_qimm   ; inline operand = 3
  $8A15  BD                         LSHIFT
  $8A16  D1                         DEC
  $8A17  2D                         STORE_quick   ; inline operand = 13
  $8A18  0D                         LOADL_quick   ; inline operand = 13
  $8A19  A2 F0 FF                   BYTE_STORE_far         $FFF0
  $8A1C  A2 EC FF                   BYTE_STORE_far         $FFEC
  $8A1F  0D                         LOADL_quick   ; inline operand = 13
  $8A20  78                         ADD_qimm   ; inline operand = 8
  $8A21  A2 F8 FF                   BYTE_STORE_far         $FFF8
  $8A24  A2 F4 FF                   BYTE_STORE_far         $FFF4
  $8A27  0C                         LOADL_quick   ; inline operand = 12
  $8A28  A2 F7 FF                   BYTE_STORE_far         $FFF7
  $8A2B  A2 EF FF                   BYTE_STORE_far         $FFEF
  $8A2E  0C                         LOADL_quick   ; inline operand = 12
  $8A2F  78                         ADD_qimm   ; inline operand = 8
  $8A30  A2 FB FF                   BYTE_STORE_far         $FFFB
  $8A33  A2 F3 FF                   BYTE_STORE_far         $FFF3
  $8A36  40                         LOADL_qimm   ; inline operand = 0
  $8A37  A2 FA FF                   BYTE_STORE_far         $FFFA
  $8A3A  A2 F6 FF                   BYTE_STORE_far         $FFF6
  $8A3D  A2 F2 FF                   BYTE_STORE_far         $FFF2
  $8A40  A2 EE FF                   BYTE_STORE_far         $FFEE
  $8A43  40                         LOADL_qimm   ; inline operand = 0
  $8A44  2A                         STORE_quick   ; inline operand = 10
 >$8A45  DE ED FF                   LEAL_far               $FFED
  $8A48  B3                         PUSHL
  $8A49  0A                         LOADL_quick   ; inline operand = 10
  $8A4A  D2                         LSHIFT1
  $8A4B  D2                         LSHIFT1
  $8A4C  B4                         POPR
  $8A4D  BB                         ADD
  $8A4E  B3                         PUSHL
  $8A4F  0B                         LOADL_quick   ; inline operand = 11
  $8A50  D4                         BYTE_POPSTORE
  $8A51  0A                         LOADL_quick   ; inline operand = 10
  $8A52  D0                         INC
  $8A53  2A                         STORE_quick   ; inline operand = 10
  $8A54  0B                         LOADL_quick   ; inline operand = 11
  $8A55  D0                         INC
  $8A56  2B                         STORE_quick   ; inline operand = 11
  $8A57  0A                         LOADL_quick   ; inline operand = 10
  $8A58  54                         LOADR_qimm   ; inline operand = 4
  $8A59  C6                         UCMPLT
  $8A5A  D7 45 8A                   JUMPT_abs              $8A45
  $8A5D  64                         PUSH_qimm   ; inline operand = 4
  $8A5E  61                         PUSH_qimm   ; inline operand = 1
  $8A5F  DE EC FF                   LEAL_far               $FFEC
  $8A62  B3                         PUSHL
  $8A63  6D                         PUSH_qimm   ; inline operand = 13
  $8A64  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8A68  CF                         RETURN

; ============================================================
; sub $8A69   (frame_off=-2, body @ $8A6E)   [PRG $18A69]
; ============================================================
  $8A6E  40                         LOADL_qimm   ; inline operand = 0
  $8A6F  2B                         STORE_quick   ; inline operand = 11
 >$8A70  A4 C2 74                   LOADL_abs              $74C2
  $8A73  D2                         LSHIFT1
  $8A74  B3                         PUSHL
  $8A75  A4 C0 74                   LOADL_abs              $74C0
  $8A78  52                         LOADR_qimm   ; inline operand = 2
  $8A79  B9                         SMOD
  $8A7A  D8 81 8A                   JUMPF_abs              $8A81
  $8A7D  43                         LOADL_qimm   ; inline operand = 3
  $8A7E  D6 82 8A                   JUMP_abs               $8A82
 >$8A81  42                         LOADL_qimm   ; inline operand = 2
 >$8A82  B4                         POPR
  $8A83  BB                         ADD
  $8A84  B3                         PUSHL
  $8A85  A4 C0 74                   LOADL_abs              $74C0
  $8A88  D2                         LSHIFT1
  $8A89  D0                         INC
  $8A8A  B3                         PUSHL
  $8A8B  E9 05 8A 04                CALL_abs_imm1          $8A05 {bytecode}, $04
  $8A8F  6C                         PUSH_qimm   ; inline operand = 12
  $8A90  3B                         PUSH_quick   ; inline operand = 11
  $8A91  E9 4D CE 04                CALL_abs_imm1          $CE4D {native}, $04
  $8A95  AC F6 C7                   CALL_abs               $C7F6 {native}
  $8A98  2B                         STORE_quick   ; inline operand = 11
  $8A99  D9 07 00 01 00 CD 8A 02 00 C2 8A 04 ... SWITCH_noncontig       count=7   ; .table 7 (key,target) + default (noncontiguous); SWITCH 1=>$8ACD 2=>$8AC2 4=>$8ABA 16=>$8ADE 32=>$8AEE 64=>$8AFD 128=>$8B0D default=>$8A70
 >$8ABA  3C                         PUSH_quick   ; inline operand = 12
  $8ABB  E9 78 89 02                CALL_abs_imm1          $8978 {bytecode}, $02
  $8ABF  D6 70 8A                   JUMP_abs               $8A70
 >$8AC2  64                         PUSH_qimm   ; inline operand = 4
  $8AC3  61                         PUSH_qimm   ; inline operand = 1
  $8AC4  6C                         PUSH_qimm   ; inline operand = 12
  $8AC5  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $8AC9  8A F0 00                   LOADL_imm2             $00F0
  $8ACC  CF                         RETURN
 >$8ACD  64                         PUSH_qimm   ; inline operand = 4
  $8ACE  61                         PUSH_qimm   ; inline operand = 1
  $8ACF  6C                         PUSH_qimm   ; inline operand = 12
  $8AD0  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $8AD4  A4 C2 74                   LOADL_abs              $74C2
  $8AD7  5F                         LOADR_qimm   ; inline operand = 15
  $8AD8  B5                         MULT
  $8AD9  A6 C0 74                   LOADR_abs              $74C0
  $8ADC  BB                         ADD
  $8ADD  CF                         RETURN
 >$8ADE  A4 C2 74                   LOADL_abs              $74C2
  $8AE1  D8 70 8A                   JUMPF_abs              $8A70
  $8AE4  A4 C2 74                   LOADL_abs              $74C2
  $8AE7  D1                         DEC
 >$8AE8  A8 C2 74                   STORE_abs              $74C2
  $8AEB  D6 70 8A                   JUMP_abs               $8A70
 >$8AEE  A4 C2 74                   LOADL_abs              $74C2
  $8AF1  58                         LOADR_qimm   ; inline operand = 8
  $8AF2  C2                         SCMPLT
  $8AF3  D8 70 8A                   JUMPF_abs              $8A70
  $8AF6  A4 C2 74                   LOADL_abs              $74C2
  $8AF9  D0                         INC
  $8AFA  D6 E8 8A                   JUMP_abs               $8AE8
 >$8AFD  A4 C0 74                   LOADL_abs              $74C0
  $8B00  D8 70 8A                   JUMPF_abs              $8A70
  $8B03  A4 C0 74                   LOADL_abs              $74C0
  $8B06  D1                         DEC
 >$8B07  A8 C0 74                   STORE_abs              $74C0
  $8B0A  D6 70 8A                   JUMP_abs               $8A70
 >$8B0D  A4 C0 74                   LOADL_abs              $74C0
  $8B10  5E                         LOADR_qimm   ; inline operand = 14
  $8B11  C2                         SCMPLT
  $8B12  D8 70 8A                   JUMPF_abs              $8A70
  $8B15  A4 C0 74                   LOADL_abs              $74C0
  $8B18  D0                         INC
  $8B19  D6 07 8B                   JUMP_abs               $8B07

; ============================================================
; sub $8B20   (frame_off=+0, body @ $8B25)   [PRG $18B20]
; ============================================================
  $8B25  0C                         LOADL_quick   ; inline operand = 12
  $8B26  50                         LOADR_qimm   ; inline operand = 0
  $8B27  C5                         SCMPGE
  $8B28  D8 67 8B                   JUMPF_abs              $8B67
  $8B2B  0C                         LOADL_quick   ; inline operand = 12
  $8B2C  5F                         LOADR_qimm   ; inline operand = 15
  $8B2D  C2                         SCMPLT
  $8B2E  D8 67 8B                   JUMPF_abs              $8B67
  $8B31  0D                         LOADL_quick   ; inline operand = 13
  $8B32  50                         LOADR_qimm   ; inline operand = 0
  $8B33  C5                         SCMPGE
  $8B34  D8 67 8B                   JUMPF_abs              $8B67
  $8B37  0D                         LOADL_quick   ; inline operand = 13
  $8B38  59                         LOADR_qimm   ; inline operand = 9
  $8B39  C2                         SCMPLT
  $8B3A  D8 67 8B                   JUMPF_abs              $8B67
  $8B3D  0D                         LOADL_quick   ; inline operand = 13
  $8B3E  D2                         LSHIFT1
  $8B3F  B3                         PUSHL
  $8B40  0C                         LOADL_quick   ; inline operand = 12
  $8B41  52                         LOADR_qimm   ; inline operand = 2
  $8B42  B9                         SMOD
  $8B43  D8 4A 8B                   JUMPF_abs              $8B4A
  $8B46  43                         LOADL_qimm   ; inline operand = 3
  $8B47  D6 4B 8B                   JUMP_abs               $8B4B
 >$8B4A  42                         LOADL_qimm   ; inline operand = 2
 >$8B4B  B4                         POPR
  $8B4C  BB                         ADD
  $8B4D  B3                         PUSHL
  $8B4E  0C                         LOADL_quick   ; inline operand = 12
  $8B4F  D2                         LSHIFT1
  $8B50  D0                         INC
  $8B51  B3                         PUSHL
  $8B52  E9 0F 89 04                CALL_abs_imm1          $890F {bytecode}, $04
  $8B56  8E FF 00                   PUSH_imm2              $00FF
  $8B59  0D                         LOADL_quick   ; inline operand = 13
  $8B5A  5F                         LOADR_qimm   ; inline operand = 15
  $8B5B  B5                         MULT
  $8B5C  1C                         LOADR_quick   ; inline operand = 12
  $8B5D  BB                         ADD
  $8B5E  8C 90 73                   LOADR_imm2             $7390
  $8B61  BB                         ADD
  $8B62  B4                         POPR
  $8B63  B3                         PUSHL
  $8B64  D3                         BYTE_DEREF
  $8B65  DC                         XOR
  $8B66  D4                         BYTE_POPSTORE
 >$8B67  CF                         RETURN

; ============================================================
; sub $8B68   (frame_off=-8, body @ $8B6D)   [PRG $18B68]
; ============================================================
  $8B6D  A4 C2 74                   LOADL_abs              $74C2
  $8B70  5F                         LOADR_qimm   ; inline operand = 15
  $8B71  B5                         MULT
  $8B72  A6 C0 74                   LOADR_abs              $74C0
  $8B75  BB                         ADD
  $8B76  28                         STORE_quick   ; inline operand = 8
  $8B77  8A A3 74                   LOADL_imm2             $74A3
  $8B7A  2A                         STORE_quick   ; inline operand = 10
  $8B7B  A6 AA 74                   LOADR_abs              $74AA
  $8B7E  BB                         ADD
  $8B7F  29                         STORE_quick   ; inline operand = 9
  $8B80  D6 AB 8B                   JUMP_abs               $8BAB
 >$8B83  0A                         LOADL_quick   ; inline operand = 10
  $8B84  D3                         BYTE_DEREF
  $8B85  57                         LOADR_qimm   ; inline operand = 7
  $8B86  B5                         MULT
  $8B87  8C 90 6C                   LOADR_imm2             $6C90
  $8B8A  BB                         ADD
  $8B8B  2B                         STORE_quick   ; inline operand = 11
  $8B8C  0A                         LOADL_quick   ; inline operand = 10
  $8B8D  D3                         BYTE_DEREF
  $8B8E  55                         LOADR_qimm   ; inline operand = 5
  $8B8F  BA                         UMOD
  $8B90  8C B1 74                   LOADR_imm2             $74B1
  $8B93  BB                         ADD
  $8B94  D3                         BYTE_DEREF
  $8B95  18                         LOADR_quick   ; inline operand = 8
  $8B96  C0                         CMPEQ
  $8B97  D8 A8 8B                   JUMPF_abs              $8BA8
  $8B9A  0B                         LOADL_quick   ; inline operand = 11
  $8B9B  74                         ADD_qimm   ; inline operand = 4
  $8B9C  B0                         DEREF
  $8B9D  D8 A8 8B                   JUMPF_abs              $8BA8
  $8BA0  0B                         LOADL_quick   ; inline operand = 11
  $8BA1  D3                         BYTE_DEREF
  $8BA2  D8 A8 8B                   JUMPF_abs              $8BA8
  $8BA5  0A                         LOADL_quick   ; inline operand = 10
  $8BA6  D3                         BYTE_DEREF
  $8BA7  CF                         RETURN
 >$8BA8  0A                         LOADL_quick   ; inline operand = 10
  $8BA9  D0                         INC
  $8BAA  2A                         STORE_quick   ; inline operand = 10
 >$8BAB  0A                         LOADL_quick   ; inline operand = 10
  $8BAC  19                         LOADR_quick   ; inline operand = 9
  $8BAD  C6                         UCMPLT
  $8BAE  D7 83 8B                   JUMPT_abs              $8B83
  $8BB1  A5 A3 74                   BYTE_LOADL_abs         $74A3
  $8BB4  CF                         RETURN

; ============================================================
; sub $8BB5   (frame_off=-4, body @ $8BBA)   [PRG $18BB5]
; ============================================================
  $8BBA  41                         LOADL_qimm   ; inline operand = 1
  $8BBB  2A                         STORE_quick   ; inline operand = 10
  $8BBC  0C                         LOADL_quick   ; inline operand = 12
  $8BBD  52                         LOADR_qimm   ; inline operand = 2
  $8BBE  B9                         SMOD
  $8BBF  D8 C4 8B                   JUMPF_abs              $8BC4
  $8BC2  42                         LOADL_qimm   ; inline operand = 2
  $8BC3  2A                         STORE_quick   ; inline operand = 10
 >$8BC4  4D                         LOADL_qimm   ; inline operand = 13
  $8BC5  A8 F8 75                   STORE_abs              $75F8
  $8BC8  40                         LOADL_qimm   ; inline operand = 0
  $8BC9  2B                         STORE_quick   ; inline operand = 11
 >$8BCA  0A                         LOADL_quick   ; inline operand = 10
  $8BCB  D2                         LSHIFT1
  $8BCC  B3                         PUSHL
  $8BCD  0B                         LOADL_quick   ; inline operand = 11
  $8BCE  56                         LOADR_qimm   ; inline operand = 6
  $8BCF  B5                         MULT
  $8BD0  B4                         POPR
  $8BD1  BB                         ADD
  $8BD2  8C DE 9C                   LOADR_imm2             $9CDE
  $8BD5  BB                         ADD
  $8BD6  B0                         DEREF
  $8BD7  1D                         LOADR_quick   ; inline operand = 13
  $8BD8  BB                         ADD
  $8BD9  B3                         PUSHL
  $8BDA  0B                         LOADL_quick   ; inline operand = 11
  $8BDB  56                         LOADR_qimm   ; inline operand = 6
  $8BDC  B5                         MULT
  $8BDD  8C DE 9C                   LOADR_imm2             $9CDE
  $8BE0  BB                         ADD
  $8BE1  B0                         DEREF
  $8BE2  1C                         LOADR_quick   ; inline operand = 12
  $8BE3  BB                         ADD
  $8BE4  B3                         PUSHL
  $8BE5  E9 20 8B 04                CALL_abs_imm1          $8B20 {bytecode}, $04
  $8BE9  0B                         LOADL_quick   ; inline operand = 11
  $8BEA  D0                         INC
  $8BEB  2B                         STORE_quick   ; inline operand = 11
  $8BEC  0B                         LOADL_quick   ; inline operand = 11
  $8BED  56                         LOADR_qimm   ; inline operand = 6
  $8BEE  C6                         UCMPLT
  $8BEF  D7 CA 8B                   JUMPT_abs              $8BCA
  $8BF2  CF                         RETURN

; ============================================================
; sub $8BF3   (frame_off=-10, body @ $8BF8)   [PRG $18BF3]
; ============================================================
  $8BF8  A4 C0 74                   LOADL_abs              $74C0
  $8BFB  28                         STORE_quick   ; inline operand = 8
  $8BFC  A4 C2 74                   LOADL_abs              $74C2
  $8BFF  27                         STORE_quick   ; inline operand = 7
  $8C00  37                         PUSH_quick   ; inline operand = 7
  $8C01  38                         PUSH_quick   ; inline operand = 8
  $8C02  E9 B5 8B 04                CALL_abs_imm1          $8BB5 {bytecode}, $04
 >$8C06  AC 69 95                   CALL_abs               $9569 {bytecode}
  $8C09  61                         PUSH_qimm   ; inline operand = 1
  $8C0A  8E F0 9E                   PUSH_imm2              $9EF0
  $8C0D  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8C11  3C                         PUSH_quick   ; inline operand = 12
  $8C12  E9 69 8A 02                CALL_abs_imm1          $8A69 {bytecode}, $02
  $8C16  2B                         STORE_quick   ; inline operand = 11
  $8C17  0B                         LOADL_quick   ; inline operand = 11
  $8C18  8C F0 00                   LOADR_imm2             $00F0
  $8C1B  C1                         CMPNE
  $8C1C  D8 28 8C                   JUMPF_abs              $8C28
  $8C1F  0B                         LOADL_quick   ; inline operand = 11
  $8C20  8C 90 73                   LOADR_imm2             $7390
  $8C23  BB                         ADD
  $8C24  D3                         BYTE_DEREF
  $8C25  D7 06 8C                   JUMPT_abs              $8C06
 >$8C28  37                         PUSH_quick   ; inline operand = 7
  $8C29  38                         PUSH_quick   ; inline operand = 8
  $8C2A  E9 B5 8B 04                CALL_abs_imm1          $8BB5 {bytecode}, $04
  $8C2E  AC 43 89                   CALL_abs               $8943 {bytecode}
  $8C31  0B                         LOADL_quick   ; inline operand = 11
  $8C32  8C F0 00                   LOADR_imm2             $00F0
  $8C35  C0                         CMPEQ
  $8C36  D8 43 8C                   JUMPF_abs              $8C43
  $8C39  08                         LOADL_quick   ; inline operand = 8
  $8C3A  A8 C0 74                   STORE_abs              $74C0
  $8C3D  07                         LOADL_quick   ; inline operand = 7
  $8C3E  A8 C2 74                   STORE_abs              $74C2
  $8C41  40                         LOADL_qimm   ; inline operand = 0
  $8C42  CF                         RETURN
 >$8C43  0C                         LOADL_quick   ; inline operand = 12
  $8C44  8B 18                      BYTE_LOADR_imm1        +24
  $8C46  B5                         MULT
  $8C47  8C A4 6A                   LOADR_imm2             $6AA4
  $8C4A  BB                         ADD
  $8C4B  D3                         BYTE_DEREF
  $8C4C  2A                         STORE_quick   ; inline operand = 10
  $8C4D  0A                         LOADL_quick   ; inline operand = 10
  $8C4E  57                         LOADR_qimm   ; inline operand = 7
  $8C4F  B5                         MULT
  $8C50  8C 44 65                   LOADR_imm2             $6544
  $8C53  BB                         ADD
  $8C54  D3                         BYTE_DEREF
  $8C55  8B 32                      BYTE_LOADR_imm1        +50
  $8C57  C1                         CMPNE
  $8C58  D8 68 8C                   JUMPF_abs              $8C68
  $8C5B  62                         PUSH_qimm   ; inline operand = 2
  $8C5C  0A                         LOADL_quick   ; inline operand = 10
  $8C5D  5A                         LOADR_qimm   ; inline operand = 10
  $8C5E  B5                         MULT
  $8C5F  8C C4 6B                   LOADR_imm2             $6BC4
  $8C62  BB                         ADD
  $8C63  B4                         POPR
  $8C64  B3                         PUSHL
  $8C65  B0                         DEREF
  $8C66  BB                         ADD
  $8C67  B1                         POPSTORE
 >$8C68  AC 68 8B                   CALL_abs               $8B68 {bytecode}
  $8C6B  29                         STORE_quick   ; inline operand = 9
  $8C6C  39                         PUSH_quick   ; inline operand = 9
  $8C6D  3C                         PUSH_quick   ; inline operand = 12
  $8C6E  E9 49 85 04                CALL_abs_imm1          $8549 {bytecode}, $04
  $8C72  AC AB 80                   CALL_abs               $80AB {bytecode}
  $8C75  39                         PUSH_quick   ; inline operand = 9
  $8C76  3C                         PUSH_quick   ; inline operand = 12
  $8C77  E9 E6 86 04                CALL_abs_imm1          $86E6 {bytecode}, $04
  $8C7B  08                         LOADL_quick   ; inline operand = 8
  $8C7C  A8 C0 74                   STORE_abs              $74C0
  $8C7F  07                         LOADL_quick   ; inline operand = 7
  $8C80  A8 C2 74                   STORE_abs              $74C2
  $8C83  41                         LOADL_qimm   ; inline operand = 1
  $8C84  CF                         RETURN

; ============================================================
; sub $8C85   (frame_off=-10, body @ $8C8A)   [PRG $18C85]
; ============================================================
  $8C8A  0C                         LOADL_quick   ; inline operand = 12
  $8C8B  55                         LOADR_qimm   ; inline operand = 5
  $8C8C  BA                         UMOD
  $8C8D  B3                         PUSHL
  $8C8E  0C                         LOADL_quick   ; inline operand = 12
  $8C8F  55                         LOADR_qimm   ; inline operand = 5
  $8C90  C6                         UCMPLT
  $8C91  D8 98 8C                   JUMPF_abs              $8C98
  $8C94  40                         LOADL_qimm   ; inline operand = 0
  $8C95  D6 99 8C                   JUMP_abs               $8C99
 >$8C98  45                         LOADL_qimm   ; inline operand = 5
 >$8C99  B4                         POPR
  $8C9A  BB                         ADD
  $8C9B  8C B6 74                   LOADR_imm2             $74B6
  $8C9E  BB                         ADD
  $8C9F  D3                         BYTE_DEREF
  $8CA0  53                         LOADR_qimm   ; inline operand = 3
  $8CA1  BA                         UMOD
  $8CA2  28                         STORE_quick   ; inline operand = 8
  $8CA3  0C                         LOADL_quick   ; inline operand = 12
  $8CA4  57                         LOADR_qimm   ; inline operand = 7
  $8CA5  B5                         MULT
  $8CA6  8C 96 6C                   LOADR_imm2             $6C96
  $8CA9  BB                         ADD
  $8CAA  D3                         BYTE_DEREF
  $8CAB  54                         LOADR_qimm   ; inline operand = 4
  $8CAC  BE                         URSHIFT
  $8CAD  53                         LOADR_qimm   ; inline operand = 3
  $8CAE  DA                         AND
  $8CAF  51                         LOADR_qimm   ; inline operand = 1
  $8CB0  DA                         AND
  $8CB1  D8 B8 8C                   JUMPF_abs              $8CB8
  $8CB4  46                         LOADL_qimm   ; inline operand = 6
  $8CB5  D6 B9 8C                   JUMP_abs               $8CB9
 >$8CB8  4E                         LOADL_qimm   ; inline operand = 14
 >$8CB9  27                         STORE_quick   ; inline operand = 7
  $8CBA  4D                         LOADL_qimm   ; inline operand = 13
  $8CBB  A8 F8 75                   STORE_abs              $75F8
  $8CBE  41                         LOADL_qimm   ; inline operand = 1
  $8CBF  29                         STORE_quick   ; inline operand = 9
  $8CC0  0D                         LOADL_quick   ; inline operand = 13
  $8CC1  52                         LOADR_qimm   ; inline operand = 2
  $8CC2  B9                         SMOD
  $8CC3  D8 C8 8C                   JUMPF_abs              $8CC8
  $8CC6  42                         LOADL_qimm   ; inline operand = 2
  $8CC7  29                         STORE_quick   ; inline operand = 9
 >$8CC8  08                         LOADL_quick   ; inline operand = 8
  $8CC9  5E                         LOADR_qimm   ; inline operand = 14
  $8CCA  B5                         MULT
  $8CCB  8C B6 9D                   LOADR_imm2             $9DB6
  $8CCE  BB                         ADD
  $8CCF  2B                         STORE_quick   ; inline operand = 11
  $8CD0  17                         LOADR_quick   ; inline operand = 7
  $8CD1  BB                         ADD
  $8CD2  2A                         STORE_quick   ; inline operand = 10
  $8CD3  D6 FA 8C                   JUMP_abs               $8CFA
 >$8CD6  09                         LOADL_quick   ; inline operand = 9
  $8CD7  D2                         LSHIFT1
  $8CD8  B3                         PUSHL
  $8CD9  0B                         LOADL_quick   ; inline operand = 11
  $8CDA  D3                         BYTE_DEREF
  $8CDB  56                         LOADR_qimm   ; inline operand = 6
  $8CDC  B5                         MULT
  $8CDD  B4                         POPR
  $8CDE  BB                         ADD
  $8CDF  8C 02 9D                   LOADR_imm2             $9D02
  $8CE2  BB                         ADD
  $8CE3  B0                         DEREF
  $8CE4  1E                         LOADR_quick   ; inline operand = 14
  $8CE5  BB                         ADD
  $8CE6  B3                         PUSHL
  $8CE7  0B                         LOADL_quick   ; inline operand = 11
  $8CE8  D3                         BYTE_DEREF
  $8CE9  56                         LOADR_qimm   ; inline operand = 6
  $8CEA  B5                         MULT
  $8CEB  8C 02 9D                   LOADR_imm2             $9D02
  $8CEE  BB                         ADD
  $8CEF  B0                         DEREF
  $8CF0  1D                         LOADR_quick   ; inline operand = 13
  $8CF1  BB                         ADD
  $8CF2  B3                         PUSHL
  $8CF3  E9 20 8B 04                CALL_abs_imm1          $8B20 {bytecode}, $04
  $8CF7  0B                         LOADL_quick   ; inline operand = 11
  $8CF8  D0                         INC
  $8CF9  2B                         STORE_quick   ; inline operand = 11
 >$8CFA  0B                         LOADL_quick   ; inline operand = 11
  $8CFB  1A                         LOADR_quick   ; inline operand = 10
  $8CFC  C6                         UCMPLT
  $8CFD  D7 D6 8C                   JUMPT_abs              $8CD6
  $8D00  CF                         RETURN

; ============================================================
; sub $8D01   (frame_off=-10, body @ $8D06)   [PRG $18D01]
; ============================================================
  $8D06  A4 C0 74                   LOADL_abs              $74C0
  $8D09  28                         STORE_quick   ; inline operand = 8
  $8D0A  A4 C2 74                   LOADL_abs              $74C2
  $8D0D  27                         STORE_quick   ; inline operand = 7
  $8D0E  37                         PUSH_quick   ; inline operand = 7
  $8D0F  38                         PUSH_quick   ; inline operand = 8
  $8D10  3C                         PUSH_quick   ; inline operand = 12
  $8D11  E9 85 8C 06                CALL_abs_imm1          $8C85 {bytecode}, $06
 >$8D15  AC 69 95                   CALL_abs               $9569 {bytecode}
  $8D18  61                         PUSH_qimm   ; inline operand = 1
  $8D19  8E 02 9F                   PUSH_imm2              $9F02
  $8D1C  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8D20  3C                         PUSH_quick   ; inline operand = 12
  $8D21  E9 69 8A 02                CALL_abs_imm1          $8A69 {bytecode}, $02
  $8D25  2B                         STORE_quick   ; inline operand = 11
  $8D26  0B                         LOADL_quick   ; inline operand = 11
  $8D27  8C F0 00                   LOADR_imm2             $00F0
  $8D2A  C1                         CMPNE
  $8D2B  D8 37 8D                   JUMPF_abs              $8D37
  $8D2E  0B                         LOADL_quick   ; inline operand = 11
  $8D2F  8C 90 73                   LOADR_imm2             $7390
  $8D32  BB                         ADD
  $8D33  D3                         BYTE_DEREF
  $8D34  D7 15 8D                   JUMPT_abs              $8D15
 >$8D37  37                         PUSH_quick   ; inline operand = 7
  $8D38  38                         PUSH_quick   ; inline operand = 8
  $8D39  3C                         PUSH_quick   ; inline operand = 12
  $8D3A  E9 85 8C 06                CALL_abs_imm1          $8C85 {bytecode}, $06
  $8D3E  AC 43 89                   CALL_abs               $8943 {bytecode}
  $8D41  0B                         LOADL_quick   ; inline operand = 11
  $8D42  8C F0 00                   LOADR_imm2             $00F0
  $8D45  C0                         CMPEQ
  $8D46  D8 53 8D                   JUMPF_abs              $8D53
  $8D49  08                         LOADL_quick   ; inline operand = 8
  $8D4A  A8 C0 74                   STORE_abs              $74C0
  $8D4D  07                         LOADL_quick   ; inline operand = 7
  $8D4E  A8 C2 74                   STORE_abs              $74C2
  $8D51  40                         LOADL_qimm   ; inline operand = 0
  $8D52  CF                         RETURN
 >$8D53  0C                         LOADL_quick   ; inline operand = 12
  $8D54  8B 18                      BYTE_LOADR_imm1        +24
  $8D56  B5                         MULT
  $8D57  8C A4 6A                   LOADR_imm2             $6AA4
  $8D5A  BB                         ADD
  $8D5B  D3                         BYTE_DEREF
  $8D5C  2A                         STORE_quick   ; inline operand = 10
  $8D5D  0A                         LOADL_quick   ; inline operand = 10
  $8D5E  57                         LOADR_qimm   ; inline operand = 7
  $8D5F  B5                         MULT
  $8D60  8C 44 65                   LOADR_imm2             $6544
  $8D63  BB                         ADD
  $8D64  D3                         BYTE_DEREF
  $8D65  8B 32                      BYTE_LOADR_imm1        +50
  $8D67  C1                         CMPNE
  $8D68  D8 78 8D                   JUMPF_abs              $8D78
  $8D6B  62                         PUSH_qimm   ; inline operand = 2
  $8D6C  0A                         LOADL_quick   ; inline operand = 10
  $8D6D  5A                         LOADR_qimm   ; inline operand = 10
  $8D6E  B5                         MULT
  $8D6F  8C C4 6B                   LOADR_imm2             $6BC4
  $8D72  BB                         ADD
  $8D73  B4                         POPR
  $8D74  B3                         PUSHL
  $8D75  B0                         DEREF
  $8D76  BB                         ADD
  $8D77  B1                         POPSTORE
 >$8D78  AC 68 8B                   CALL_abs               $8B68 {bytecode}
  $8D7B  29                         STORE_quick   ; inline operand = 9
  $8D7C  39                         PUSH_quick   ; inline operand = 9
  $8D7D  E9 15 80 02                CALL_abs_imm1          $8015 {bytecode}, $02
  $8D81  39                         PUSH_quick   ; inline operand = 9
  $8D82  3C                         PUSH_quick   ; inline operand = 12
  $8D83  E9 04 87 04                CALL_abs_imm1          $8704 {bytecode}, $04
  $8D87  08                         LOADL_quick   ; inline operand = 8
  $8D88  A8 C0 74                   STORE_abs              $74C0
  $8D8B  07                         LOADL_quick   ; inline operand = 7
  $8D8C  A8 C2 74                   STORE_abs              $74C2
  $8D8F  41                         LOADL_qimm   ; inline operand = 1
  $8D90  CF                         RETURN

; ============================================================
; sub $8D91   (frame_off=+0, body @ $8D96)   [PRG $18D91]
; ============================================================
  $8D96  AC A7 9C                   CALL_abs               $9CA7 {bytecode}
  $8D99  D8 A2 8D                   JUMPF_abs              $8DA2
  $8D9C  3C                         PUSH_quick   ; inline operand = 12
  $8D9D  E9 F3 8B 02                CALL_abs_imm1          $8BF3 (combat_board) {bytecode}, $02
  $8DA1  CF                         RETURN
 >$8DA2  3C                         PUSH_quick   ; inline operand = 12
  $8DA3  E9 2D 9C 02                CALL_abs_imm1          $9C2D {bytecode}, $02
  $8DA7  D8 B0 8D                   JUMPF_abs              $8DB0
  $8DAA  3C                         PUSH_quick   ; inline operand = 12
  $8DAB  E9 01 8D 02                CALL_abs_imm1          $8D01 (combat_fire) {bytecode}, $02
  $8DAF  CF                         RETURN
 >$8DB0  40                         LOADL_qimm   ; inline operand = 0
  $8DB1  CF                         RETURN

; ============================================================
; sub $8DB2   (frame_off=-20, body @ $8DB7)   [PRG $18DB2]
; ============================================================
  $8DB7  48                         LOADL_qimm   ; inline operand = 8
  $8DB8  CD                         SWAP
  $8DB9  0C                         LOADL_quick   ; inline operand = 12
  $8DBA  B5                         MULT
  $8DBB  2C                         STORE_quick   ; inline operand = 12
  $8DBC  0D                         LOADL_quick   ; inline operand = 13
  $8DBD  53                         LOADR_qimm   ; inline operand = 3
  $8DBE  BD                         LSHIFT
  $8DBF  D1                         DEC
  $8DC0  2D                         STORE_quick   ; inline operand = 13
  $8DC1  0D                         LOADL_quick   ; inline operand = 13
  $8DC2  A2 F0 FF                   BYTE_STORE_far         $FFF0
  $8DC5  A2 EC FF                   BYTE_STORE_far         $FFEC
  $8DC8  0D                         LOADL_quick   ; inline operand = 13
  $8DC9  78                         ADD_qimm   ; inline operand = 8
  $8DCA  A2 F8 FF                   BYTE_STORE_far         $FFF8
  $8DCD  A2 F4 FF                   BYTE_STORE_far         $FFF4
  $8DD0  0C                         LOADL_quick   ; inline operand = 12
  $8DD1  A2 F7 FF                   BYTE_STORE_far         $FFF7
  $8DD4  A2 EF FF                   BYTE_STORE_far         $FFEF
  $8DD7  0C                         LOADL_quick   ; inline operand = 12
  $8DD8  78                         ADD_qimm   ; inline operand = 8
  $8DD9  A2 FB FF                   BYTE_STORE_far         $FFFB
  $8DDC  A2 F3 FF                   BYTE_STORE_far         $FFF3
  $8DDF  40                         LOADL_qimm   ; inline operand = 0
  $8DE0  A2 FA FF                   BYTE_STORE_far         $FFFA
  $8DE3  A2 F6 FF                   BYTE_STORE_far         $FFF6
  $8DE6  A2 F2 FF                   BYTE_STORE_far         $FFF2
  $8DE9  A2 EE FF                   BYTE_STORE_far         $FFEE
  $8DEC  0E                         LOADL_quick   ; inline operand = 14
  $8DED  8C 16 9F                   LOADR_imm2             $9F16
  $8DF0  BB                         ADD
  $8DF1  D3                         BYTE_DEREF
  $8DF2  2B                         STORE_quick   ; inline operand = 11
  $8DF3  40                         LOADL_qimm   ; inline operand = 0
  $8DF4  2A                         STORE_quick   ; inline operand = 10
 >$8DF5  DE ED FF                   LEAL_far               $FFED
  $8DF8  B3                         PUSHL
  $8DF9  0A                         LOADL_quick   ; inline operand = 10
  $8DFA  D2                         LSHIFT1
  $8DFB  D2                         LSHIFT1
  $8DFC  B4                         POPR
  $8DFD  BB                         ADD
  $8DFE  B3                         PUSHL
  $8DFF  0B                         LOADL_quick   ; inline operand = 11
  $8E00  D4                         BYTE_POPSTORE
  $8E01  0A                         LOADL_quick   ; inline operand = 10
  $8E02  D0                         INC
  $8E03  2A                         STORE_quick   ; inline operand = 10
  $8E04  0B                         LOADL_quick   ; inline operand = 11
  $8E05  D0                         INC
  $8E06  2B                         STORE_quick   ; inline operand = 11
  $8E07  0A                         LOADL_quick   ; inline operand = 10
  $8E08  54                         LOADR_qimm   ; inline operand = 4
  $8E09  C6                         UCMPLT
  $8E0A  D7 F5 8D                   JUMPT_abs              $8DF5
  $8E0D  64                         PUSH_qimm   ; inline operand = 4
  $8E0E  61                         PUSH_qimm   ; inline operand = 1
  $8E0F  DE EC FF                   LEAL_far               $FFEC
  $8E12  B3                         PUSHL
  $8E13  6D                         PUSH_qimm   ; inline operand = 13
  $8E14  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8E18  CF                         RETURN

; ============================================================
; sub $8E19   (frame_off=-8, body @ $8E1E)   [PRG $18E19]
; ============================================================
  $8E1E  0C                         LOADL_quick   ; inline operand = 12
  $8E1F  A8 FA 75                   STORE_abs              $75FA
  $8E22  A4 C0 74                   LOADL_abs              $74C0
  $8E25  D2                         LSHIFT1
  $8E26  D0                         INC
  $8E27  2B                         STORE_quick   ; inline operand = 11
  $8E28  A4 C2 74                   LOADL_abs              $74C2
  $8E2B  D2                         LSHIFT1
  $8E2C  B3                         PUSHL
  $8E2D  A4 C0 74                   LOADL_abs              $74C0
  $8E30  52                         LOADR_qimm   ; inline operand = 2
  $8E31  B9                         SMOD
  $8E32  D8 39 8E                   JUMPF_abs              $8E39
  $8E35  43                         LOADL_qimm   ; inline operand = 3
  $8E36  D6 3A 8E                   JUMP_abs               $8E3A
 >$8E39  42                         LOADL_qimm   ; inline operand = 2
 >$8E3A  B4                         POPR
  $8E3B  BB                         ADD
  $8E3C  2A                         STORE_quick   ; inline operand = 10
  $8E3D  40                         LOADL_qimm   ; inline operand = 0
  $8E3E  28                         STORE_quick   ; inline operand = 8
 >$8E3F  AA FA 75                   PUSH_abs               $75FA
  $8E42  3A                         PUSH_quick   ; inline operand = 10
  $8E43  3B                         PUSH_quick   ; inline operand = 11
  $8E44  E9 B2 8D 06                CALL_abs_imm1          $8DB2 {bytecode}, $06
  $8E48  6C                         PUSH_qimm   ; inline operand = 12
  $8E49  38                         PUSH_quick   ; inline operand = 8
  $8E4A  E9 4D CE 04                CALL_abs_imm1          $CE4D {native}, $04
  $8E4E  AC F6 C7                   CALL_abs               $C7F6 {native}
  $8E51  28                         STORE_quick   ; inline operand = 8
  $8E52  D9 07 00 01 00 B3 8E 02 00 A8 8E 04 ... SWITCH_noncontig       count=7   ; .table 7 (key,target) + default (noncontiguous); SWITCH 1=>$8EB3 2=>$8EA8 4=>$8E73 16=>$8E8A 32=>$8EA4 64=>$8E91 128=>$8E7B default=>$8E3F
 >$8E73  3D                         PUSH_quick   ; inline operand = 13
  $8E74  E9 78 89 02                CALL_abs_imm1          $8978 {bytecode}, $02
  $8E78  D6 3F 8E                   JUMP_abs               $8E3F
 >$8E7B  A4 FA 75                   LOADL_abs              $75FA
  $8E7E  D0                         INC
  $8E7F  A8 FA 75                   STORE_abs              $75FA
  $8E82  A4 FA 75                   LOADL_abs              $75FA
  $8E85  55                         LOADR_qimm   ; inline operand = 5
  $8E86  C4                         SCMPGT
  $8E87  D8 3F 8E                   JUMPF_abs              $8E3F
 >$8E8A  40                         LOADL_qimm   ; inline operand = 0
 >$8E8B  A8 FA 75                   STORE_abs              $75FA
  $8E8E  D6 3F 8E                   JUMP_abs               $8E3F
 >$8E91  A4 FA 75                   LOADL_abs              $75FA
  $8E94  D1                         DEC
  $8E95  A8 FA 75                   STORE_abs              $75FA
  $8E98  A4 FA 75                   LOADL_abs              $75FA
  $8E9B  50                         LOADR_qimm   ; inline operand = 0
  $8E9C  C2                         SCMPLT
  $8E9D  D8 3F 8E                   JUMPF_abs              $8E3F
  $8EA0  45                         LOADL_qimm   ; inline operand = 5
  $8EA1  D6 8B 8E                   JUMP_abs               $8E8B
 >$8EA4  43                         LOADL_qimm   ; inline operand = 3
  $8EA5  D6 8B 8E                   JUMP_abs               $8E8B
 >$8EA8  64                         PUSH_qimm   ; inline operand = 4
  $8EA9  61                         PUSH_qimm   ; inline operand = 1
  $8EAA  6C                         PUSH_qimm   ; inline operand = 12
  $8EAB  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $8EAF  8A FF 00                   LOADL_imm2             $00FF
  $8EB2  CF                         RETURN
 >$8EB3  45                         LOADL_qimm   ; inline operand = 5
  $8EB4  29                         STORE_quick   ; inline operand = 9
 >$8EB5  0C                         LOADL_quick   ; inline operand = 12
  $8EB6  19                         LOADR_quick   ; inline operand = 9
  $8EB7  BB                         ADD
  $8EB8  56                         LOADR_qimm   ; inline operand = 6
  $8EB9  BA                         UMOD
  $8EBA  A6 FA 75                   LOADR_abs              $75FA
  $8EBD  C0                         CMPEQ
  $8EBE  D8 CC 8E                   JUMPF_abs              $8ECC
  $8EC1  64                         PUSH_qimm   ; inline operand = 4
  $8EC2  61                         PUSH_qimm   ; inline operand = 1
  $8EC3  6C                         PUSH_qimm   ; inline operand = 12
  $8EC4  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $8EC8  09                         LOADL_quick   ; inline operand = 9
  $8EC9  8F FB                      BYTE_ADD_imm1          -5
  $8ECB  CF                         RETURN
 >$8ECC  09                         LOADL_quick   ; inline operand = 9
  $8ECD  D0                         INC
  $8ECE  29                         STORE_quick   ; inline operand = 9
  $8ECF  09                         LOADL_quick   ; inline operand = 9
  $8ED0  58                         LOADR_qimm   ; inline operand = 8
  $8ED1  C6                         UCMPLT
  $8ED2  D7 B5 8E                   JUMPT_abs              $8EB5
  $8ED5  D6 3F 8E                   JUMP_abs               $8E3F

; ============================================================
; sub $8ED8   (frame_off=-20, body @ $8EDD)   [PRG $18ED8]
; ============================================================
  $8EDD  4D                         LOADL_qimm   ; inline operand = 13
  $8EDE  A8 F8 75                   STORE_abs              $75F8
  $8EE1  41                         LOADL_qimm   ; inline operand = 1
  $8EE2  28                         STORE_quick   ; inline operand = 8
  $8EE3  A4 C0 74                   LOADL_abs              $74C0
  $8EE6  52                         LOADR_qimm   ; inline operand = 2
  $8EE7  B9                         SMOD
  $8EE8  D8 ED 8E                   JUMPF_abs              $8EED
  $8EEB  42                         LOADL_qimm   ; inline operand = 2
  $8EEC  28                         STORE_quick   ; inline operand = 8
 >$8EED  0C                         LOADL_quick   ; inline operand = 12
  $8EEE  57                         LOADR_qimm   ; inline operand = 7
  $8EEF  B5                         MULT
  $8EF0  8C 90 6C                   LOADR_imm2             $6C90
  $8EF3  BB                         ADD
  $8EF4  22                         STORE_quick   ; inline operand = 2
  $8EF5  02                         LOADL_quick   ; inline operand = 2
  $8EF6  D0                         INC
  $8EF7  D3                         BYTE_DEREF
  $8EF8  B3                         PUSHL
  $8EF9  89 64                      BYTE_LOADL_imm1        +100
  $8EFB  B4                         POPR
  $8EFC  BC                         SUB
  $8EFD  8B 19                      BYTE_LOADR_imm1        +25
  $8EFF  B8                         UDIV
  $8F00  D0                         INC
  $8F01  26                         STORE_quick   ; inline operand = 6
  $8F02  02                         LOADL_quick   ; inline operand = 2
  $8F03  72                         ADD_qimm   ; inline operand = 2
  $8F04  D3                         BYTE_DEREF
  $8F05  B3                         PUSHL
  $8F06  89 64                      BYTE_LOADL_imm1        +100
  $8F08  B4                         POPR
  $8F09  BC                         SUB
  $8F0A  25                         STORE_quick   ; inline operand = 5
  $8F0B  40                         LOADL_qimm   ; inline operand = 0
  $8F0C  2A                         STORE_quick   ; inline operand = 10
  $8F0D  40                         LOADL_qimm   ; inline operand = 0
  $8F0E  2B                         STORE_quick   ; inline operand = 11
  $8F0F  D6 A6 8F                   JUMP_abs               $8FA6
 >$8F12  0A                         LOADL_quick   ; inline operand = 10
  $8F13  51                         LOADR_qimm   ; inline operand = 1
  $8F14  C1                         CMPNE
  $8F15  D8 1C 8F                   JUMPF_abs              $8F1C
  $8F18  06                         LOADL_quick   ; inline operand = 6
  $8F19  D6 1D 8F                   JUMP_abs               $8F1D
 >$8F1C  40                         LOADL_qimm   ; inline operand = 0
 >$8F1D  29                         STORE_quick   ; inline operand = 9
  $8F1E  0C                         LOADL_quick   ; inline operand = 12
  $8F1F  8C B6 74                   LOADR_imm2             $74B6
  $8F22  BB                         ADD
  $8F23  D3                         BYTE_DEREF
  $8F24  1A                         LOADR_quick   ; inline operand = 10
  $8F25  BB                         ADD
  $8F26  75                         ADD_qimm   ; inline operand = 5
  $8F27  56                         LOADR_qimm   ; inline operand = 6
  $8F28  BA                         UMOD
  $8F29  27                         STORE_quick   ; inline operand = 7
  $8F2A  07                         LOADL_quick   ; inline operand = 7
  $8F2B  8C D6 74                   LOADR_imm2             $74D6
  $8F2E  BB                         ADD
  $8F2F  D3                         BYTE_DEREF
  $8F30  15                         LOADR_quick   ; inline operand = 5
  $8F31  B5                         MULT
  $8F32  8B 3C                      BYTE_LOADR_imm1        +60
  $8F34  B8                         UDIV
  $8F35  D0                         INC
  $8F36  CD                         SWAP
  $8F37  09                         LOADL_quick   ; inline operand = 9
  $8F38  BB                         ADD
  $8F39  29                         STORE_quick   ; inline operand = 9
  $8F3A  0D                         LOADL_quick   ; inline operand = 13
  $8F3B  19                         LOADR_quick   ; inline operand = 9
  $8F3C  C9                         UCMPGE
  $8F3D  D8 A3 8F                   JUMPF_abs              $8FA3
  $8F40  07                         LOADL_quick   ; inline operand = 7
  $8F41  56                         LOADR_qimm   ; inline operand = 6
  $8F42  B5                         MULT
  $8F43  8C DE 9C                   LOADR_imm2             $9CDE
  $8F46  BB                         ADD
  $8F47  B0                         DEREF
  $8F48  A6 C0 74                   LOADR_abs              $74C0
  $8F4B  BB                         ADD
  $8F4C  24                         STORE_quick   ; inline operand = 4
  $8F4D  08                         LOADL_quick   ; inline operand = 8
  $8F4E  D2                         LSHIFT1
  $8F4F  B3                         PUSHL
  $8F50  07                         LOADL_quick   ; inline operand = 7
  $8F51  56                         LOADR_qimm   ; inline operand = 6
  $8F52  B5                         MULT
  $8F53  B4                         POPR
  $8F54  BB                         ADD
  $8F55  8C DE 9C                   LOADR_imm2             $9CDE
  $8F58  BB                         ADD
  $8F59  B0                         DEREF
  $8F5A  A6 C2 74                   LOADR_abs              $74C2
  $8F5D  BB                         ADD
  $8F5E  23                         STORE_quick   ; inline operand = 3
  $8F5F  04                         LOADL_quick   ; inline operand = 4
  $8F60  50                         LOADR_qimm   ; inline operand = 0
  $8F61  C5                         SCMPGE
  $8F62  D8 A3 8F                   JUMPF_abs              $8FA3
  $8F65  04                         LOADL_quick   ; inline operand = 4
  $8F66  5F                         LOADR_qimm   ; inline operand = 15
  $8F67  C2                         SCMPLT
  $8F68  D8 A3 8F                   JUMPF_abs              $8FA3
  $8F6B  03                         LOADL_quick   ; inline operand = 3
  $8F6C  50                         LOADR_qimm   ; inline operand = 0
  $8F6D  C5                         SCMPGE
  $8F6E  D8 A3 8F                   JUMPF_abs              $8FA3
  $8F71  03                         LOADL_quick   ; inline operand = 3
  $8F72  59                         LOADR_qimm   ; inline operand = 9
  $8F73  C2                         SCMPLT
  $8F74  D8 A3 8F                   JUMPF_abs              $8FA3
  $8F77  03                         LOADL_quick   ; inline operand = 3
  $8F78  5F                         LOADR_qimm   ; inline operand = 15
  $8F79  B5                         MULT
  $8F7A  14                         LOADR_quick   ; inline operand = 4
  $8F7B  BB                         ADD
  $8F7C  8C 90 73                   LOADR_imm2             $7390
  $8F7F  BB                         ADD
  $8F80  D3                         BYTE_DEREF
  $8F81  8C 80 00                   LOADR_imm2             $0080
  $8F84  C7                         UCMPLE
  $8F85  D8 A3 8F                   JUMPF_abs              $8FA3
  $8F88  03                         LOADL_quick   ; inline operand = 3
  $8F89  D2                         LSHIFT1
  $8F8A  B3                         PUSHL
  $8F8B  04                         LOADL_quick   ; inline operand = 4
  $8F8C  52                         LOADR_qimm   ; inline operand = 2
  $8F8D  B9                         SMOD
  $8F8E  D8 95 8F                   JUMPF_abs              $8F95
  $8F91  43                         LOADL_qimm   ; inline operand = 3
  $8F92  D6 96 8F                   JUMP_abs               $8F96
 >$8F95  42                         LOADL_qimm   ; inline operand = 2
 >$8F96  B4                         POPR
  $8F97  BB                         ADD
  $8F98  B3                         PUSHL
  $8F99  04                         LOADL_quick   ; inline operand = 4
  $8F9A  D2                         LSHIFT1
  $8F9B  D0                         INC
  $8F9C  B3                         PUSHL
  $8F9D  E9 0F 89 04                CALL_abs_imm1          $890F {bytecode}, $04
  $8FA1  41                         LOADL_qimm   ; inline operand = 1
  $8FA2  2B                         STORE_quick   ; inline operand = 11
 >$8FA3  0A                         LOADL_quick   ; inline operand = 10
  $8FA4  D0                         INC
  $8FA5  2A                         STORE_quick   ; inline operand = 10
 >$8FA6  0A                         LOADL_quick   ; inline operand = 10
  $8FA7  53                         LOADR_qimm   ; inline operand = 3
  $8FA8  C6                         UCMPLT
  $8FA9  D7 12 8F                   JUMPT_abs              $8F12
  $8FAC  0B                         LOADL_quick   ; inline operand = 11
  $8FAD  CF                         RETURN

; ============================================================
; sub $8FAE   (frame_off=-14, body @ $8FB3)   [PRG $18FAE]
; ============================================================
  $8FB3  3C                         PUSH_quick   ; inline operand = 12
  $8FB4  E9 DD 88 02                CALL_abs_imm1          $88DD {bytecode}, $02
  $8FB8  A8 DE 74                   STORE_abs              $74DE
  $8FBB  0C                         LOADL_quick   ; inline operand = 12
  $8FBC  57                         LOADR_qimm   ; inline operand = 7
  $8FBD  B5                         MULT
  $8FBE  8C 90 6C                   LOADR_imm2             $6C90
  $8FC1  BB                         ADD
  $8FC2  25                         STORE_quick   ; inline operand = 5
  $8FC3  05                         LOADL_quick   ; inline operand = 5
  $8FC4  D0                         INC
  $8FC5  D3                         BYTE_DEREF
  $8FC6  B3                         PUSHL
  $8FC7  89 64                      BYTE_LOADL_imm1        +100
  $8FC9  B4                         POPR
  $8FCA  BC                         SUB
  $8FCB  8B 19                      BYTE_LOADR_imm1        +25
  $8FCD  B8                         UDIV
  $8FCE  D0                         INC
  $8FCF  27                         STORE_quick   ; inline operand = 7
  $8FD0  05                         LOADL_quick   ; inline operand = 5
  $8FD1  72                         ADD_qimm   ; inline operand = 2
  $8FD2  D3                         BYTE_DEREF
  $8FD3  B3                         PUSHL
  $8FD4  89 64                      BYTE_LOADL_imm1        +100
  $8FD6  B4                         POPR
  $8FD7  BC                         SUB
  $8FD8  26                         STORE_quick   ; inline operand = 6
  $8FD9  AC 03 80                   CALL_abs               $8003 {bytecode}
  $8FDC  AC 69 95                   CALL_abs               $9569 {bytecode}
  $8FDF  40                         LOADL_qimm   ; inline operand = 0
  $8FE0  2B                         STORE_quick   ; inline operand = 11
 >$8FE1  A4 DE 74                   LOADL_abs              $74DE
  $8FE4  D7 EE 8F                   JUMPT_abs              $8FEE
  $8FE7  D6 86 90                   JUMP_abs               $9086
 >$8FEA  41                         LOADL_qimm   ; inline operand = 1
  $8FEB  D6 92 90                   JUMP_abs               $9092
 >$8FEE  8D 16                      BYTE_PUSH_imm1         +22
  $8FF0  6D                         PUSH_qimm   ; inline operand = 13
  $8FF1  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8FF5  AA DE 74                   PUSH_abs               $74DE
  $8FF8  8E 1C 9F                   PUSH_imm2              $9F1C
  $8FFB  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8FFF  AA DE 74                   PUSH_abs               $74DE
  $9002  3C                         PUSH_quick   ; inline operand = 12
  $9003  E9 D8 8E 04                CALL_abs_imm1          $8ED8 {bytecode}, $04
  $9007  D7 0E 90                   JUMPT_abs              $900E
  $900A  0B                         LOADL_quick   ; inline operand = 11
  $900B  D7 86 90                   JUMPT_abs              $9086
 >$900E  3C                         PUSH_quick   ; inline operand = 12
  $900F  0C                         LOADL_quick   ; inline operand = 12
  $9010  8C B6 74                   LOADR_imm2             $74B6
  $9013  BB                         ADD
  $9014  D3                         BYTE_DEREF
  $9015  B3                         PUSHL
  $9016  E9 19 8E 04                CALL_abs_imm1          $8E19 {bytecode}, $04
  $901A  2A                         STORE_quick   ; inline operand = 10
  $901B  AC 43 89                   CALL_abs               $8943 {bytecode}
  $901E  AA DE 74                   PUSH_abs               $74DE
  $9021  3C                         PUSH_quick   ; inline operand = 12
  $9022  E9 D8 8E 04                CALL_abs_imm1          $8ED8 {bytecode}, $04
  $9026  AC 43 89                   CALL_abs               $8943 {bytecode}
  $9029  0A                         LOADL_quick   ; inline operand = 10
  $902A  8C FF 00                   LOADR_imm2             $00FF
  $902D  C0                         CMPEQ
  $902E  D7 86 90                   JUMPT_abs              $9086
  $9031  41                         LOADL_qimm   ; inline operand = 1
  $9032  2B                         STORE_quick   ; inline operand = 11
  $9033  0A                         LOADL_quick   ; inline operand = 10
  $9034  51                         LOADR_qimm   ; inline operand = 1
  $9035  C1                         CMPNE
  $9036  D8 3D 90                   JUMPF_abs              $903D
  $9039  07                         LOADL_quick   ; inline operand = 7
  $903A  D6 3E 90                   JUMP_abs               $903E
 >$903D  40                         LOADL_qimm   ; inline operand = 0
 >$903E  28                         STORE_quick   ; inline operand = 8
  $903F  0C                         LOADL_quick   ; inline operand = 12
  $9040  8C B6 74                   LOADR_imm2             $74B6
  $9043  BB                         ADD
  $9044  D3                         BYTE_DEREF
  $9045  1A                         LOADR_quick   ; inline operand = 10
  $9046  BB                         ADD
  $9047  75                         ADD_qimm   ; inline operand = 5
  $9048  56                         LOADR_qimm   ; inline operand = 6
  $9049  BA                         UMOD
  $904A  29                         STORE_quick   ; inline operand = 9
  $904B  09                         LOADL_quick   ; inline operand = 9
  $904C  8C D6 74                   LOADR_imm2             $74D6
  $904F  BB                         ADD
  $9050  D3                         BYTE_DEREF
  $9051  16                         LOADR_quick   ; inline operand = 6
  $9052  B5                         MULT
  $9053  8B 3C                      BYTE_LOADR_imm1        +60
  $9055  B8                         UDIV
  $9056  D0                         INC
  $9057  CD                         SWAP
  $9058  08                         LOADL_quick   ; inline operand = 8
  $9059  BB                         ADD
  $905A  28                         STORE_quick   ; inline operand = 8
  $905B  08                         LOADL_quick   ; inline operand = 8
  $905C  A6 DE 74                   LOADR_abs              $74DE
  $905F  C7                         UCMPLE
  $9060  D8 E1 8F                   JUMPF_abs              $8FE1
  $9063  08                         LOADL_quick   ; inline operand = 8
  $9064  CD                         SWAP
  $9065  A4 DE 74                   LOADL_abs              $74DE
  $9068  BC                         SUB
  $9069  A8 DE 74                   STORE_abs              $74DE
  $906C  0C                         LOADL_quick   ; inline operand = 12
  $906D  8C B6 74                   LOADR_imm2             $74B6
  $9070  BB                         ADD
  $9071  B3                         PUSHL
  $9072  09                         LOADL_quick   ; inline operand = 9
  $9073  D4                         BYTE_POPSTORE
  $9074  8E C0 03                   PUSH_imm2              $03C0
  $9077  39                         PUSH_quick   ; inline operand = 9
  $9078  3C                         PUSH_quick   ; inline operand = 12
  $9079  E9 09 82 06                CALL_abs_imm1          $8209 {bytecode}, $06
  $907D  D8 86 90                   JUMPF_abs              $9086
  $9080  AC A7 9C                   CALL_abs               $9CA7 {bytecode}
  $9083  D8 E1 8F                   JUMPF_abs              $8FE1
 >$9086  AC A6 81                   CALL_abs               $81A6 {bytecode}
  $9089  3C                         PUSH_quick   ; inline operand = 12
  $908A  E9 91 8D 02                CALL_abs_imm1          $8D91 {bytecode}, $02
  $908E  D7 EA 8F                   JUMPT_abs              $8FEA
  $9091  0B                         LOADL_quick   ; inline operand = 11
 >$9092  CF                         RETURN

; ============================================================
; sub $9093   (frame_off=+0, body @ $9098)   [PRG $19093]
; ============================================================
  $9098  41                         LOADL_qimm   ; inline operand = 1
  $9099  CF                         RETURN

; ============================================================
; sub $909A   (frame_off=-20, body @ $909F)   [PRG $1909A]
; ============================================================
  $909F  8A E8 00                   LOADL_imm2             $00E8
  $90A2  2B                         STORE_quick   ; inline operand = 11
  $90A3  48                         LOADL_qimm   ; inline operand = 8
  $90A4  CD                         SWAP
  $90A5  0C                         LOADL_quick   ; inline operand = 12
  $90A6  B5                         MULT
  $90A7  2C                         STORE_quick   ; inline operand = 12
  $90A8  0D                         LOADL_quick   ; inline operand = 13
  $90A9  53                         LOADR_qimm   ; inline operand = 3
  $90AA  BD                         LSHIFT
  $90AB  D1                         DEC
  $90AC  2D                         STORE_quick   ; inline operand = 13
  $90AD  60                         PUSH_qimm   ; inline operand = 0
  $90AE  8E EA EB                   PUSH_imm2              $EBEA
  $90B1  8E E8 E9                   PUSH_imm2              $E9E8
  $90B4  0D                         LOADL_quick   ; inline operand = 13
  $90B5  58                         LOADR_qimm   ; inline operand = 8
  $90B6  BD                         LSHIFT
  $90B7  1C                         LOADR_quick   ; inline operand = 12
  $90B8  BB                         ADD
  $90B9  B3                         PUSHL
  $90BA  8E 01 01                   PUSH_imm2              $0101
  $90BD  6E                         PUSH_qimm   ; inline operand = 14
  $90BE  E9 D4 EE 0C                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0C
  $90C2  CF                         RETURN

; ============================================================
; sub $90C3   (frame_off=+0, body @ $90C8)   [PRG $190C3]
; ============================================================
  $90C8  60                         PUSH_qimm   ; inline operand = 0
  $90C9  60                         PUSH_qimm   ; inline operand = 0
  $90CA  60                         PUSH_qimm   ; inline operand = 0
  $90CB  60                         PUSH_qimm   ; inline operand = 0
  $90CC  8E 00 01                   PUSH_imm2              $0100
  $90CF  6E                         PUSH_qimm   ; inline operand = 14
  $90D0  E9 D4 EE 0C                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0C
  $90D4  CF                         RETURN

; ============================================================
; sub $90D5   (frame_off=+0, body @ $90DA)   [PRG $190D5]
; ============================================================
  $90DA  D6 11 91                   JUMP_abs               $9111
 >$90DD  61                         PUSH_qimm   ; inline operand = 1
  $90DE  8D 10                      BYTE_PUSH_imm1         +16
  $90E0  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $90E4  D7 1B 91                   JUMPT_abs              $911B
  $90E7  60                         PUSH_qimm   ; inline operand = 0
  $90E8  8E E4 00                   PUSH_imm2              $00E4
  $90EB  61                         PUSH_qimm   ; inline operand = 1
  $90EC  61                         PUSH_qimm   ; inline operand = 1
  $90ED  8D 1B                      BYTE_PUSH_imm1         +27
  $90EF  8D 15                      BYTE_PUSH_imm1         +21
  $90F1  68                         PUSH_qimm   ; inline operand = 8
  $90F2  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $90F6  63                         PUSH_qimm   ; inline operand = 3
  $90F7  8D 11                      BYTE_PUSH_imm1         +17
  $90F9  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $90FD  60                         PUSH_qimm   ; inline operand = 0
  $90FE  60                         PUSH_qimm   ; inline operand = 0
  $90FF  61                         PUSH_qimm   ; inline operand = 1
  $9100  61                         PUSH_qimm   ; inline operand = 1
  $9101  8D 1B                      BYTE_PUSH_imm1         +27
  $9103  8D 15                      BYTE_PUSH_imm1         +21
  $9105  68                         PUSH_qimm   ; inline operand = 8
  $9106  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $910A  63                         PUSH_qimm   ; inline operand = 3
  $910B  8D 11                      BYTE_PUSH_imm1         +17
  $910D  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
 >$9111  60                         PUSH_qimm   ; inline operand = 0
  $9112  8D 10                      BYTE_PUSH_imm1         +16
  $9114  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $9118  D8 DD 90                   JUMPF_abs              $90DD
 >$911B  60                         PUSH_qimm   ; inline operand = 0
  $911C  60                         PUSH_qimm   ; inline operand = 0
  $911D  61                         PUSH_qimm   ; inline operand = 1
  $911E  61                         PUSH_qimm   ; inline operand = 1
  $911F  8D 1B                      BYTE_PUSH_imm1         +27
  $9121  8D 15                      BYTE_PUSH_imm1         +21
  $9123  68                         PUSH_qimm   ; inline operand = 8
  $9124  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
 >$9128  60                         PUSH_qimm   ; inline operand = 0
  $9129  8D 10                      BYTE_PUSH_imm1         +16
  $912B  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $912F  D7 28 91                   JUMPT_abs              $9128
  $9132  61                         PUSH_qimm   ; inline operand = 1
  $9133  8D 10                      BYTE_PUSH_imm1         +16
  $9135  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $9139  D7 28 91                   JUMPT_abs              $9128
  $913C  CF                         RETURN

; ============================================================
; sub $913D   (frame_off=-8, body @ $9142)   [PRG $1913D]
; ============================================================
  $9142  A4 C2 74                   LOADL_abs              $74C2
  $9145  D2                         LSHIFT1
  $9146  B3                         PUSHL
  $9147  A4 C0 74                   LOADL_abs              $74C0
  $914A  52                         LOADR_qimm   ; inline operand = 2
  $914B  B9                         SMOD
  $914C  D8 53 91                   JUMPF_abs              $9153
  $914F  43                         LOADL_qimm   ; inline operand = 3
  $9150  D6 54 91                   JUMP_abs               $9154
 >$9153  42                         LOADL_qimm   ; inline operand = 2
 >$9154  B4                         POPR
  $9155  BB                         ADD
  $9156  B3                         PUSHL
  $9157  A4 C0 74                   LOADL_abs              $74C0
  $915A  D2                         LSHIFT1
  $915B  D0                         INC
  $915C  B3                         PUSHL
  $915D  E9 9A 90 04                CALL_abs_imm1          $909A {bytecode}, $04
  $9161  0C                         LOADL_quick   ; inline operand = 12
  $9162  A6 A8 74                   LOADR_abs              $74A8
  $9165  C9                         UCMPGE
  $9166  D8 74 91                   JUMPF_abs              $9174
  $9169  0C                         LOADL_quick   ; inline operand = 12
  $916A  A6 A8 74                   LOADR_abs              $74A8
  $916D  BC                         SUB
  $916E  8C A3 74                   LOADR_imm2             $74A3
  $9171  D6 78 91                   JUMP_abs               $9178
 >$9174  0C                         LOADL_quick   ; inline operand = 12
  $9175  8C 9E 74                   LOADR_imm2             $749E
 >$9178  BB                         ADD
  $9179  D3                         BYTE_DEREF
  $917A  29                         STORE_quick   ; inline operand = 9
  $917B  09                         LOADL_quick   ; inline operand = 9
  $917C  57                         LOADR_qimm   ; inline operand = 7
  $917D  B5                         MULT
  $917E  8C 90 6C                   LOADR_imm2             $6C90
  $9181  BB                         ADD
  $9182  2B                         STORE_quick   ; inline operand = 11
  $9183  0B                         LOADL_quick   ; inline operand = 11
  $9184  74                         ADD_qimm   ; inline operand = 4
  $9185  B0                         DEREF
  $9186  D8 8E 91                   JUMPF_abs              $918E
  $9189  0B                         LOADL_quick   ; inline operand = 11
  $918A  D3                         BYTE_DEREF
  $918B  D7 92 91                   JUMPT_abs              $9192
 >$918E  AC C3 90                   CALL_abs               $90C3 {bytecode}
  $9191  CF                         RETURN
 >$9192  AC 69 95                   CALL_abs               $9569 {bytecode}
  $9195  0B                         LOADL_quick   ; inline operand = 11
  $9196  76                         ADD_qimm   ; inline operand = 6
  $9197  D3                         BYTE_DEREF
  $9198  5F                         LOADR_qimm   ; inline operand = 15
  $9199  DA                         AND
  $919A  B3                         PUSHL
  $919B  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $919F  B3                         PUSHL
  $91A0  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $91A4  A4 D2 74                   LOADL_abs              $74D2
  $91A7  19                         LOADR_quick   ; inline operand = 9
  $91A8  C0                         CMPEQ
  $91A9  D7 B4 91                   JUMPT_abs              $91B4
  $91AC  A4 D4 74                   LOADL_abs              $74D4
  $91AF  19                         LOADR_quick   ; inline operand = 9
  $91B0  C0                         CMPEQ
  $91B1  D8 BC 91                   JUMPF_abs              $91BC
 >$91B4  60                         PUSH_qimm   ; inline operand = 0
  $91B5  8E 29 9F                   PUSH_imm2              $9F29
  $91B8  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
 >$91BC  0B                         LOADL_quick   ; inline operand = 11
  $91BD  74                         ADD_qimm   ; inline operand = 4
  $91BE  B0                         DEREF
  $91BF  B3                         PUSHL
  $91C0  8E 35 9F                   PUSH_imm2              $9F35
  $91C3  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $91C7  60                         PUSH_qimm   ; inline operand = 0
  $91C8  8E 3F 9F                   PUSH_imm2              $9F3F
  $91CB  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $91CF  0B                         LOADL_quick   ; inline operand = 11
  $91D0  76                         ADD_qimm   ; inline operand = 6
  $91D1  D3                         BYTE_DEREF
  $91D2  54                         LOADR_qimm   ; inline operand = 4
  $91D3  BE                         URSHIFT
  $91D4  53                         LOADR_qimm   ; inline operand = 3
  $91D5  DA                         AND
  $91D6  28                         STORE_quick   ; inline operand = 8
  $91D7  08                         LOADL_quick   ; inline operand = 8
  $91D8  D2                         LSHIFT1
  $91D9  8C 33 BC                   LOADR_imm2             $BC33
  $91DC  BB                         ADD
  $91DD  B3                         PUSHL
  $91DE  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $91E2  B3                         PUSHL
  $91E3  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $91E7  08                         LOADL_quick   ; inline operand = 8
  $91E8  D8 F6 91                   JUMPF_abs              $91F6
  $91EB  0B                         LOADL_quick   ; inline operand = 11
  $91EC  73                         ADD_qimm   ; inline operand = 3
  $91ED  D3                         BYTE_DEREF
  $91EE  B3                         PUSHL
  $91EF  8E 47 9F                   PUSH_imm2              $9F47
  $91F2  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
 >$91F6  AC D5 90                   CALL_abs               $90D5 {bytecode}
  $91F9  AC 69 95                   CALL_abs               $9569 {bytecode}
  $91FC  39                         PUSH_quick   ; inline operand = 9
  $91FD  E9 DD 88 02                CALL_abs_imm1          $88DD {bytecode}, $02
  $9201  B3                         PUSHL
  $9202  8E 50 9F                   PUSH_imm2              $9F50
  $9205  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $9209  0B                         LOADL_quick   ; inline operand = 11
  $920A  D3                         BYTE_DEREF
  $920B  B3                         PUSHL
  $920C  8E 5E 9F                   PUSH_imm2              $9F5E
  $920F  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $9213  0B                         LOADL_quick   ; inline operand = 11
  $9214  D0                         INC
  $9215  D3                         BYTE_DEREF
  $9216  B3                         PUSHL
  $9217  89 64                      BYTE_LOADL_imm1        +100
  $9219  B4                         POPR
  $921A  BC                         SUB
  $921B  8B 19                      BYTE_LOADR_imm1        +25
  $921D  B8                         UDIV
  $921E  D0                         INC
  $921F  B3                         PUSHL
  $9220  8E 6E 9F                   PUSH_imm2              $9F6E
  $9223  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $9227  AC D5 90                   CALL_abs               $90D5 {bytecode}
  $922A  09                         LOADL_quick   ; inline operand = 9
  $922B  55                         LOADR_qimm   ; inline operand = 5
  $922C  C6                         UCMPLT
  $922D  D7 38 92                   JUMPT_abs              $9238
  $9230  09                         LOADL_quick   ; inline operand = 9
  $9231  A6 D4 74                   LOADR_abs              $74D4
  $9234  C0                         CMPEQ
  $9235  D8 9C 92                   JUMPF_abs              $929C
 >$9238  AC 69 95                   CALL_abs               $9569 {bytecode}
  $923B  09                         LOADL_quick   ; inline operand = 9
  $923C  55                         LOADR_qimm   ; inline operand = 5
  $923D  C6                         UCMPLT
  $923E  D8 4D 92                   JUMPF_abs              $924D
  $9241  09                         LOADL_quick   ; inline operand = 9
  $9242  8B 18                      BYTE_LOADR_imm1        +24
  $9244  B5                         MULT
  $9245  8C A4 6A                   LOADR_imm2             $6AA4
  $9248  BB                         ADD
  $9249  D3                         BYTE_DEREF
  $924A  D6 52 92                   JUMP_abs               $9252
 >$924D  09                         LOADL_quick   ; inline operand = 9
  $924E  55                         LOADR_qimm   ; inline operand = 5
  $924F  B8                         UDIV
  $9250  8F 14                      BYTE_ADD_imm1          +20
 >$9252  29                         STORE_quick   ; inline operand = 9
  $9253  09                         LOADL_quick   ; inline operand = 9
  $9254  57                         LOADR_qimm   ; inline operand = 7
  $9255  B5                         MULT
  $9256  8C 42 65                   LOADR_imm2             $6542
  $9259  BB                         ADD
  $925A  2A                         STORE_quick   ; inline operand = 10
  $925B  60                         PUSH_qimm   ; inline operand = 0
  $925C  39                         PUSH_quick   ; inline operand = 9
  $925D  8D 16                      BYTE_PUSH_imm1         +22
  $925F  6D                         PUSH_qimm   ; inline operand = 13
  $9260  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $9264  8D 17                      BYTE_PUSH_imm1         +23
  $9266  8D 13                      BYTE_PUSH_imm1         +19
  $9268  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $926C  0A                         LOADL_quick   ; inline operand = 10
  $926D  B0                         DEREF
  $926E  B3                         PUSHL
  $926F  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $9273  8D 19                      BYTE_PUSH_imm1         +25
  $9275  8D 13                      BYTE_PUSH_imm1         +19
  $9277  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $927B  60                         PUSH_qimm   ; inline operand = 0
  $927C  8E 81 9F                   PUSH_imm2              $9F81
  $927F  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $9283  8D 1A                      BYTE_PUSH_imm1         +26
  $9285  8D 13                      BYTE_PUSH_imm1         +19
  $9287  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $928B  0A                         LOADL_quick   ; inline operand = 10
  $928C  72                         ADD_qimm   ; inline operand = 2
  $928D  D3                         BYTE_DEREF
  $928E  B3                         PUSHL
  $928F  8E 88 9F                   PUSH_imm2              $9F88
  $9292  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $9296  AC D5 90                   CALL_abs               $90D5 {bytecode}
  $9299  AC 89 A5                   CALL_abs               $A589 {native}
 >$929C  AC 69 95                   CALL_abs               $9569 {bytecode}
  $929F  AC C3 90                   CALL_abs               $90C3 {bytecode}
  $92A2  CF                         RETURN

; ============================================================
; sub $92A3   (frame_off=-10, body @ $92A8)   [PRG $192A3]
; ============================================================
  $92A8  A4 C0 74                   LOADL_abs              $74C0
  $92AB  28                         STORE_quick   ; inline operand = 8
  $92AC  A4 C2 74                   LOADL_abs              $74C2
  $92AF  27                         STORE_quick   ; inline operand = 7
 >$92B0  AC 69 95                   CALL_abs               $9569 {bytecode}
  $92B3  AC 03 80                   CALL_abs               $8003 {bytecode}
  $92B6  61                         PUSH_qimm   ; inline operand = 1
  $92B7  8E 92 9F                   PUSH_imm2              $9F92
  $92BA  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $92BE  3C                         PUSH_quick   ; inline operand = 12
  $92BF  E9 69 8A 02                CALL_abs_imm1          $8A69 {bytecode}, $02
  $92C3  2A                         STORE_quick   ; inline operand = 10
  $92C4  A4 A8 74                   LOADL_abs              $74A8
  $92C7  A6 AA 74                   LOADR_abs              $74AA
  $92CA  BB                         ADD
  $92CB  29                         STORE_quick   ; inline operand = 9
  $92CC  40                         LOADL_qimm   ; inline operand = 0
  $92CD  D6 01 93                   JUMP_abs               $9301
 >$92D0  0B                         LOADL_quick   ; inline operand = 11
  $92D1  A6 A8 74                   LOADR_abs              $74A8
  $92D4  C6                         UCMPLT
  $92D5  D8 E4 92                   JUMPF_abs              $92E4
  $92D8  0B                         LOADL_quick   ; inline operand = 11
  $92D9  8C 9E 74                   LOADR_imm2             $749E
  $92DC  BB                         ADD
  $92DD  D3                         BYTE_DEREF
  $92DE  8C AC 74                   LOADR_imm2             $74AC
  $92E1  D6 F3 92                   JUMP_abs               $92F3
 >$92E4  0B                         LOADL_quick   ; inline operand = 11
  $92E5  A6 A8 74                   LOADR_abs              $74A8
  $92E8  BC                         SUB
  $92E9  8C A3 74                   LOADR_imm2             $74A3
  $92EC  BB                         ADD
  $92ED  D3                         BYTE_DEREF
  $92EE  55                         LOADR_qimm   ; inline operand = 5
  $92EF  BA                         UMOD
  $92F0  8C B1 74                   LOADR_imm2             $74B1
 >$92F3  BB                         ADD
  $92F4  D3                         BYTE_DEREF
  $92F5  1A                         LOADR_quick   ; inline operand = 10
  $92F6  C0                         CMPEQ
  $92F7  D8 FF 92                   JUMPF_abs              $92FF
  $92FA  3B                         PUSH_quick   ; inline operand = 11
  $92FB  E9 3D 91 02                CALL_abs_imm1          $913D (combat_draw_ship_stats) {bytecode}, $02
 >$92FF  0B                         LOADL_quick   ; inline operand = 11
  $9300  D0                         INC
 >$9301  2B                         STORE_quick   ; inline operand = 11
  $9302  0B                         LOADL_quick   ; inline operand = 11
  $9303  19                         LOADR_quick   ; inline operand = 9
  $9304  C6                         UCMPLT
  $9305  D7 D0 92                   JUMPT_abs              $92D0
  $9308  0A                         LOADL_quick   ; inline operand = 10
  $9309  8C F0 00                   LOADR_imm2             $00F0
  $930C  C1                         CMPNE
  $930D  D7 B0 92                   JUMPT_abs              $92B0
  $9310  08                         LOADL_quick   ; inline operand = 8
  $9311  A8 C0 74                   STORE_abs              $74C0
  $9314  07                         LOADL_quick   ; inline operand = 7
  $9315  A8 C2 74                   STORE_abs              $74C2
  $9318  40                         LOADL_qimm   ; inline operand = 0
  $9319  CF                         RETURN

; ============================================================
; sub $931A   (frame_off=+0, body @ $931F)   [PRG $1931A]
; ============================================================
  $931F  43                         LOADL_qimm   ; inline operand = 3
  $9320  A9 E0 74                   BYTE_STORE_abs         $74E0
  $9323  41                         LOADL_qimm   ; inline operand = 1
  $9324  A8 F6 75                   STORE_abs              $75F6
  $9327  41                         LOADL_qimm   ; inline operand = 1
  $9328  CF                         RETURN

; ============================================================
; sub $9329   (frame_off=-12, body @ $932E)   [PRG $19329]
; ============================================================
  $932E  AC 69 95                   CALL_abs               $9569 {bytecode}
  $9331  40                         LOADL_qimm   ; inline operand = 0
  $9332  2A                         STORE_quick   ; inline operand = 10
  $9333  40                         LOADL_qimm   ; inline operand = 0
  $9334  28                         STORE_quick   ; inline operand = 8
  $9335  D6 C9 93                   JUMP_abs               $93C9
 >$9338  40                         LOADL_qimm   ; inline operand = 0
  $9339  2B                         STORE_quick   ; inline operand = 11
  $933A  09                         LOADL_quick   ; inline operand = 9
  $933B  53                         LOADR_qimm   ; inline operand = 3
  $933C  C6                         UCMPLT
  $933D  D8 42 93                   JUMPF_abs              $9342
  $9340  41                         LOADL_qimm   ; inline operand = 1
  $9341  2B                         STORE_quick   ; inline operand = 11
 >$9342  09                         LOADL_quick   ; inline operand = 9
  $9343  54                         LOADR_qimm   ; inline operand = 4
  $9344  C0                         CMPEQ
  $9345  D8 56 93                   JUMPF_abs              $9356
  $9348  3C                         PUSH_quick   ; inline operand = 12
  $9349  E9 2D 9C 02                CALL_abs_imm1          $9C2D {bytecode}, $02
  $934D  D8 56 93                   JUMPF_abs              $9356
  $9350  0A                         LOADL_quick   ; inline operand = 10
  $9351  D7 56 93                   JUMPT_abs              $9356
  $9354  41                         LOADL_qimm   ; inline operand = 1
  $9355  2B                         STORE_quick   ; inline operand = 11
 >$9356  09                         LOADL_quick   ; inline operand = 9
  $9357  53                         LOADR_qimm   ; inline operand = 3
  $9358  C0                         CMPEQ
  $9359  D8 66 93                   JUMPF_abs              $9366
  $935C  AC A7 9C                   CALL_abs               $9CA7 {bytecode}
  $935F  D8 66 93                   JUMPF_abs              $9366
  $9362  41                         LOADL_qimm   ; inline operand = 1
  $9363  2A                         STORE_quick   ; inline operand = 10
  $9364  41                         LOADL_qimm   ; inline operand = 1
  $9365  2B                         STORE_quick   ; inline operand = 11
 >$9366  09                         LOADL_quick   ; inline operand = 9
  $9367  55                         LOADR_qimm   ; inline operand = 5
  $9368  C0                         CMPEQ
  $9369  D8 96 93                   JUMPF_abs              $9396
  $936C  0C                         LOADL_quick   ; inline operand = 12
  $936D  8B 18                      BYTE_LOADR_imm1        +24
  $936F  B5                         MULT
  $9370  8C A4 6A                   LOADR_imm2             $6AA4
  $9373  BB                         ADD
  $9374  D3                         BYTE_DEREF
  $9375  D7 96 93                   JUMPT_abs              $9396
  $9378  A4 C0 74                   LOADL_abs              $74C0
  $937B  D8 94 93                   JUMPF_abs              $9394
  $937E  A4 C2 74                   LOADL_abs              $74C2
  $9381  D8 94 93                   JUMPF_abs              $9394
  $9384  A4 C0 74                   LOADL_abs              $74C0
  $9387  5E                         LOADR_qimm   ; inline operand = 14
  $9388  C0                         CMPEQ
  $9389  D7 94 93                   JUMPT_abs              $9394
  $938C  A4 C2 74                   LOADL_abs              $74C2
  $938F  58                         LOADR_qimm   ; inline operand = 8
  $9390  C0                         CMPEQ
  $9391  D8 96 93                   JUMPF_abs              $9396
 >$9394  41                         LOADL_qimm   ; inline operand = 1
  $9395  2B                         STORE_quick   ; inline operand = 11
 >$9396  0B                         LOADL_quick   ; inline operand = 11
  $9397  D8 C7 93                   JUMPF_abs              $93C7
  $939A  08                         LOADL_quick   ; inline operand = 8
  $939B  D2                         LSHIFT1
  $939C  8F 12                      BYTE_ADD_imm1          +18
  $939E  27                         STORE_quick   ; inline operand = 7
  $939F  8E E0 00                   PUSH_imm2              $00E0
  $93A2  09                         LOADL_quick   ; inline operand = 9
  $93A3  D2                         LSHIFT1
  $93A4  D2                         LSHIFT1
  $93A5  8C A7 9F                   LOADR_imm2             $9FA7
  $93A8  BB                         ADD
  $93A9  B0                         DEREF
  $93AA  B3                         PUSHL
  $93AB  09                         LOADL_quick   ; inline operand = 9
  $93AC  D2                         LSHIFT1
  $93AD  D2                         LSHIFT1
  $93AE  8C A5 9F                   LOADR_imm2             $9FA5
  $93B1  BB                         ADD
  $93B2  B0                         DEREF
  $93B3  B3                         PUSHL
  $93B4  64                         PUSH_qimm   ; inline operand = 4
  $93B5  62                         PUSH_qimm   ; inline operand = 2
  $93B6  8D 17                      BYTE_PUSH_imm1         +23
  $93B8  37                         PUSH_quick   ; inline operand = 7
  $93B9  69                         PUSH_qimm   ; inline operand = 9
  $93BA  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $93BE  08                         LOADL_quick   ; inline operand = 8
  $93BF  D0                         INC
  $93C0  28                         STORE_quick   ; inline operand = 8
  $93C1  D1                         DEC
  $93C2  1D                         LOADR_quick   ; inline operand = 13
  $93C3  BB                         ADD
  $93C4  B3                         PUSHL
  $93C5  09                         LOADL_quick   ; inline operand = 9
  $93C6  D4                         BYTE_POPSTORE
 >$93C7  09                         LOADL_quick   ; inline operand = 9
  $93C8  D0                         INC
 >$93C9  29                         STORE_quick   ; inline operand = 9
  $93CA  09                         LOADL_quick   ; inline operand = 9
  $93CB  56                         LOADR_qimm   ; inline operand = 6
  $93CC  C6                         UCMPLT
  $93CD  D7 38 93                   JUMPT_abs              $9338
  $93D0  08                         LOADL_quick   ; inline operand = 8
  $93D1  CF                         RETURN

; ============================================================
; sub $93D2   (frame_off=-24, body @ $93D7)   [PRG $193D2]
; ============================================================
  $93D7  8D 10                      BYTE_PUSH_imm1         +16
  $93D9  DE F0 FF                   LEAL_far               $FFF0
  $93DC  B3                         PUSHL
  $93DD  8E BD 9F                   PUSH_imm2              $9FBD
  $93E0  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $93E4  40                         LOADL_qimm   ; inline operand = 0
  $93E5  23                         STORE_quick   ; inline operand = 3
  $93E6  21                         STORE_quick   ; inline operand = 1
 >$93E7  40                         LOADL_qimm   ; inline operand = 0
  $93E8  22                         STORE_quick   ; inline operand = 2
 >$93E9  DE F3 FF                   LEAL_far               $FFF3
  $93EC  B3                         PUSHL
  $93ED  02                         LOADL_quick   ; inline operand = 2
  $93EE  D2                         LSHIFT1
  $93EF  D2                         LSHIFT1
  $93F0  B4                         POPR
  $93F1  BB                         ADD
  $93F2  B3                         PUSHL
  $93F3  03                         LOADL_quick   ; inline operand = 3
  $93F4  D2                         LSHIFT1
  $93F5  53                         LOADR_qimm   ; inline operand = 3
  $93F6  BD                         LSHIFT
  $93F7  B3                         PUSHL
  $93F8  02                         LOADL_quick   ; inline operand = 2
  $93F9  D2                         LSHIFT1
  $93FA  D2                         LSHIFT1
  $93FB  8C C0 9F                   LOADR_imm2             $9FC0
  $93FE  BB                         ADD
  $93FF  D3                         BYTE_DEREF
  $9400  B4                         POPR
  $9401  BB                         ADD
  $9402  D4                         BYTE_POPSTORE
  $9403  02                         LOADL_quick   ; inline operand = 2
  $9404  D0                         INC
  $9405  22                         STORE_quick   ; inline operand = 2
  $9406  02                         LOADL_quick   ; inline operand = 2
  $9407  54                         LOADR_qimm   ; inline operand = 4
  $9408  C2                         SCMPLT
  $9409  D7 E9 93                   JUMPT_abs              $93E9
  $940C  64                         PUSH_qimm   ; inline operand = 4
  $940D  60                         PUSH_qimm   ; inline operand = 0
  $940E  DE F0 FF                   LEAL_far               $FFF0
  $9411  B3                         PUSHL
  $9412  6D                         PUSH_qimm   ; inline operand = 13
  $9413  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $9417  03                         LOADL_quick   ; inline operand = 3
  $9418  20                         STORE_quick   ; inline operand = 0
  $9419  6C                         PUSH_qimm   ; inline operand = 12
  $941A  31                         PUSH_quick   ; inline operand = 1
  $941B  E9 4D CE 04                CALL_abs_imm1          $CE4D {native}, $04
  $941F  60                         PUSH_qimm   ; inline operand = 0
  $9420  E9 A9 C4 02                CALL_abs_imm1          $C4A9 {native}, $02
  $9424  21                         STORE_quick   ; inline operand = 1
  $9425  D9 05 00 01 00 3E 94 02 00 4F 94 04 ... SWITCH_noncontig       count=5   ; .table 5 (key,target) + default (noncontiguous); SWITCH 1=>$943E 2=>$944F 4=>$9461 64=>$9473 128=>$9482 default=>$93E7
 >$943E  64                         PUSH_qimm   ; inline operand = 4
  $943F  60                         PUSH_qimm   ; inline operand = 0
  $9440  6C                         PUSH_qimm   ; inline operand = 12
  $9441  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
 >$9445  60                         PUSH_qimm   ; inline operand = 0
  $9446  E9 A9 C4 02                CALL_abs_imm1          $C4A9 {native}, $02
  $944A  D7 45 94                   JUMPT_abs              $9445
  $944D  00                         LOADL_quick   ; inline operand = 0
  $944E  CF                         RETURN
 >$944F  64                         PUSH_qimm   ; inline operand = 4
  $9450  60                         PUSH_qimm   ; inline operand = 0
  $9451  6C                         PUSH_qimm   ; inline operand = 12
  $9452  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
 >$9456  60                         PUSH_qimm   ; inline operand = 0
  $9457  E9 A9 C4 02                CALL_abs_imm1          $C4A9 {native}, $02
  $945B  D7 56 94                   JUMPT_abs              $9456
  $945E  89 FF                      BYTE_LOADL_imm1        -1
  $9460  CF                         RETURN
 >$9461  64                         PUSH_qimm   ; inline operand = 4
  $9462  60                         PUSH_qimm   ; inline operand = 0
  $9463  6C                         PUSH_qimm   ; inline operand = 12
  $9464  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
 >$9468  60                         PUSH_qimm   ; inline operand = 0
  $9469  E9 A9 C4 02                CALL_abs_imm1          $C4A9 {native}, $02
  $946D  D7 68 94                   JUMPT_abs              $9468
  $9470  89 FE                      BYTE_LOADL_imm1        -2
  $9472  CF                         RETURN
 >$9473  03                         LOADL_quick   ; inline operand = 3
  $9474  D1                         DEC
  $9475  23                         STORE_quick   ; inline operand = 3
  $9476  03                         LOADL_quick   ; inline operand = 3
  $9477  50                         LOADR_qimm   ; inline operand = 0
  $9478  C2                         SCMPLT
  $9479  D8 E7 93                   JUMPF_abs              $93E7
  $947C  0C                         LOADL_quick   ; inline operand = 12
  $947D  D1                         DEC
 >$947E  23                         STORE_quick   ; inline operand = 3
  $947F  D6 E7 93                   JUMP_abs               $93E7
 >$9482  03                         LOADL_quick   ; inline operand = 3
  $9483  D0                         INC
  $9484  23                         STORE_quick   ; inline operand = 3
  $9485  03                         LOADL_quick   ; inline operand = 3
  $9486  1C                         LOADR_quick   ; inline operand = 12
  $9487  C9                         UCMPGE
  $9488  D8 E7 93                   JUMPF_abs              $93E7
  $948B  40                         LOADL_qimm   ; inline operand = 0
  $948C  D6 7E 94                   JUMP_abs               $947E

; ============================================================
; sub $948F   (frame_off=-2, body @ $9494)   [PRG $1948F]
; ============================================================
  $9494  D6 9C 94                   JUMP_abs               $949C
 >$9497  3D                         PUSH_quick   ; inline operand = 13
  $9498  E9 78 89 02                CALL_abs_imm1          $8978 {bytecode}, $02
 >$949C  3C                         PUSH_quick   ; inline operand = 12
  $949D  E9 D2 93 02                CALL_abs_imm1          $93D2 {bytecode}, $02
  $94A1  2B                         STORE_quick   ; inline operand = 11
  $94A2  0B                         LOADL_quick   ; inline operand = 11
  $94A3  8B FE                      BYTE_LOADR_imm1        -2
  $94A5  C0                         CMPEQ
  $94A6  D7 97 94                   JUMPT_abs              $9497
  $94A9  0B                         LOADL_quick   ; inline operand = 11
  $94AA  8B FF                      BYTE_LOADR_imm1        -1
  $94AC  C0                         CMPEQ
  $94AD  D8 B6 94                   JUMPF_abs              $94B6
  $94B0  8A FF 00                   LOADL_imm2             $00FF
  $94B3  D6 B7 94                   JUMP_abs               $94B7
 >$94B6  0B                         LOADL_quick   ; inline operand = 11
 >$94B7  CF                         RETURN

; ============================================================
; sub $94B8   (frame_off=-8, body @ $94BD)   [PRG $194B8]
; ============================================================
  $94BD  3C                         PUSH_quick   ; inline operand = 12
  $94BE  E9 5F 9B 02                CALL_abs_imm1          $9B5F {bytecode}, $02
  $94C2  8A A3 74                   LOADL_imm2             $74A3
  $94C5  2B                         STORE_quick   ; inline operand = 11
  $94C6  A6 AA 74                   LOADR_abs              $74AA
  $94C9  BB                         ADD
  $94CA  2A                         STORE_quick   ; inline operand = 10
  $94CB  D6 09 95                   JUMP_abs               $9509
 >$94CE  0B                         LOADL_quick   ; inline operand = 11
  $94CF  D3                         BYTE_DEREF
  $94D0  57                         LOADR_qimm   ; inline operand = 7
  $94D1  B5                         MULT
  $94D2  8C 90 6C                   LOADR_imm2             $6C90
  $94D5  BB                         ADD
  $94D6  29                         STORE_quick   ; inline operand = 9
  $94D7  09                         LOADL_quick   ; inline operand = 9
  $94D8  D3                         BYTE_DEREF
  $94D9  D8 06 95                   JUMPF_abs              $9506
  $94DC  0B                         LOADL_quick   ; inline operand = 11
  $94DD  D3                         BYTE_DEREF
  $94DE  55                         LOADR_qimm   ; inline operand = 5
  $94DF  BA                         UMOD
  $94E0  8C B1 74                   LOADR_imm2             $74B1
  $94E3  BB                         ADD
  $94E4  D3                         BYTE_DEREF
  $94E5  28                         STORE_quick   ; inline operand = 8
  $94E6  08                         LOADL_quick   ; inline operand = 8
  $94E7  5F                         LOADR_qimm   ; inline operand = 15
  $94E8  BA                         UMOD
  $94E9  B3                         PUSHL
  $94EA  08                         LOADL_quick   ; inline operand = 8
  $94EB  5F                         LOADR_qimm   ; inline operand = 15
  $94EC  B8                         UDIV
  $94ED  5F                         LOADR_qimm   ; inline operand = 15
  $94EE  B5                         MULT
  $94EF  B4                         POPR
  $94F0  BB                         ADD
  $94F1  8C 90 73                   LOADR_imm2             $7390
  $94F4  BB                         ADD
  $94F5  B3                         PUSHL
  $94F6  09                         LOADL_quick   ; inline operand = 9
  $94F7  74                         ADD_qimm   ; inline operand = 4
  $94F8  B0                         DEREF
  $94F9  D8 02 95                   JUMPF_abs              $9502
  $94FC  8A FF 00                   LOADL_imm2             $00FF
  $94FF  D6 05 95                   JUMP_abs               $9505
 >$9502  8A 88 00                   LOADL_imm2             $0088
 >$9505  D4                         BYTE_POPSTORE
 >$9506  0B                         LOADL_quick   ; inline operand = 11
  $9507  D0                         INC
  $9508  2B                         STORE_quick   ; inline operand = 11
 >$9509  0B                         LOADL_quick   ; inline operand = 11
  $950A  1A                         LOADR_quick   ; inline operand = 10
  $950B  C6                         UCMPLT
  $950C  D7 CE 94                   JUMPT_abs              $94CE
  $950F  8A 9E 74                   LOADL_imm2             $749E
  $9512  2B                         STORE_quick   ; inline operand = 11
  $9513  A6 A8 74                   LOADR_abs              $74A8
  $9516  BB                         ADD
  $9517  2A                         STORE_quick   ; inline operand = 10
  $9518  D6 45 95                   JUMP_abs               $9545
 >$951B  0B                         LOADL_quick   ; inline operand = 11
  $951C  D3                         BYTE_DEREF
  $951D  57                         LOADR_qimm   ; inline operand = 7
  $951E  B5                         MULT
  $951F  8C 90 6C                   LOADR_imm2             $6C90
  $9522  BB                         ADD
  $9523  D3                         BYTE_DEREF
  $9524  D8 42 95                   JUMPF_abs              $9542
  $9527  0B                         LOADL_quick   ; inline operand = 11
  $9528  D3                         BYTE_DEREF
  $9529  8C AC 74                   LOADR_imm2             $74AC
  $952C  BB                         ADD
  $952D  D3                         BYTE_DEREF
  $952E  28                         STORE_quick   ; inline operand = 8
  $952F  08                         LOADL_quick   ; inline operand = 8
  $9530  5F                         LOADR_qimm   ; inline operand = 15
  $9531  BA                         UMOD
  $9532  B3                         PUSHL
  $9533  08                         LOADL_quick   ; inline operand = 8
  $9534  5F                         LOADR_qimm   ; inline operand = 15
  $9535  B8                         UDIV
  $9536  5F                         LOADR_qimm   ; inline operand = 15
  $9537  B5                         MULT
  $9538  B4                         POPR
  $9539  BB                         ADD
  $953A  8C 90 73                   LOADR_imm2             $7390
  $953D  BB                         ADD
  $953E  B3                         PUSHL
  $953F  D3                         BYTE_DEREF
  $9540  D0                         INC
  $9541  D4                         BYTE_POPSTORE
 >$9542  0B                         LOADL_quick   ; inline operand = 11
  $9543  D0                         INC
  $9544  2B                         STORE_quick   ; inline operand = 11
 >$9545  0B                         LOADL_quick   ; inline operand = 11
  $9546  1A                         LOADR_quick   ; inline operand = 10
  $9547  C6                         UCMPLT
  $9548  D7 1B 95                   JUMPT_abs              $951B
  $954B  0C                         LOADL_quick   ; inline operand = 12
  $954C  8C AC 74                   LOADR_imm2             $74AC
  $954F  BB                         ADD
  $9550  D3                         BYTE_DEREF
  $9551  5F                         LOADR_qimm   ; inline operand = 15
  $9552  BA                         UMOD
  $9553  B3                         PUSHL
  $9554  0C                         LOADL_quick   ; inline operand = 12
  $9555  8C AC 74                   LOADR_imm2             $74AC
  $9558  BB                         ADD
  $9559  D3                         BYTE_DEREF
  $955A  5F                         LOADR_qimm   ; inline operand = 15
  $955B  B8                         UDIV
  $955C  5F                         LOADR_qimm   ; inline operand = 15
  $955D  B5                         MULT
  $955E  B4                         POPR
  $955F  BB                         ADD
  $9560  8C 90 73                   LOADR_imm2             $7390
  $9563  BB                         ADD
  $9564  B3                         PUSHL
  $9565  D3                         BYTE_DEREF
  $9566  D1                         DEC
  $9567  D4                         BYTE_POPSTORE
  $9568  CF                         RETURN

; ============================================================
; sub $9569   (frame_off=+0, body @ $956E)   [PRG $19569]
; ============================================================
  $956E  60                         PUSH_qimm   ; inline operand = 0
  $956F  60                         PUSH_qimm   ; inline operand = 0
  $9570  67                         PUSH_qimm   ; inline operand = 7
  $9571  8D 12                      BYTE_PUSH_imm1         +18
  $9573  8D 16                      BYTE_PUSH_imm1         +22
  $9575  6D                         PUSH_qimm   ; inline operand = 13
  $9576  68                         PUSH_qimm   ; inline operand = 8
  $9577  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $957B  61                         PUSH_qimm   ; inline operand = 1
  $957C  8E CD 9F                   PUSH_imm2              $9FCD
  $957F  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $9583  8D 16                      BYTE_PUSH_imm1         +22
  $9585  6D                         PUSH_qimm   ; inline operand = 13
  $9586  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $958A  CF                         RETURN

; ============================================================
; sub $958B   (frame_off=-10, body @ $9590)   [PRG $1958B]
; ============================================================
  $9590  40                         LOADL_qimm   ; inline operand = 0
  $9591  A8 F6 75                   STORE_abs              $75F6
 >$9594  AC A6 81                   CALL_abs               $81A6 {bytecode}
  $9597  8E 80 00                   PUSH_imm2              $0080
  $959A  8E 87 00                   PUSH_imm2              $0087
  $959D  8E 90 73                   PUSH_imm2              $7390
  $95A0  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $95A4  3C                         PUSH_quick   ; inline operand = 12
  $95A5  E9 B8 94 02                CALL_abs_imm1          $94B8 {bytecode}, $02
  $95A9  3C                         PUSH_quick   ; inline operand = 12
  $95AA  DE FA FF                   LEAL_far               $FFFA
  $95AD  B3                         PUSHL
  $95AE  3C                         PUSH_quick   ; inline operand = 12
  $95AF  E9 29 93 04                CALL_abs_imm1          $9329 {bytecode}, $04
  $95B3  B3                         PUSHL
  $95B4  E9 8F 94 04                CALL_abs_imm1          $948F {bytecode}, $04
  $95B8  27                         STORE_quick   ; inline operand = 7
  $95B9  07                         LOADL_quick   ; inline operand = 7
  $95BA  8C FF 00                   LOADR_imm2             $00FF
  $95BD  C0                         CMPEQ
  $95BE  D7 D5 95                   JUMPT_abs              $95D5
  $95C1  3C                         PUSH_quick   ; inline operand = 12
  $95C2  DE FA FF                   LEAL_far               $FFFA
  $95C5  B3                         PUSHL
  $95C6  07                         LOADL_quick   ; inline operand = 7
  $95C7  B4                         POPR
  $95C8  BB                         ADD
  $95C9  D3                         BYTE_DEREF
  $95CA  D2                         LSHIFT1
  $95CB  8C D4 9F                   LOADR_imm2             $9FD4
  $95CE  BB                         ADD
  $95CF  B0                         DEREF
  $95D0  EA 02                      CALLPTR_imm1           $02
  $95D2  D8 94 95                   JUMPF_abs              $9594
 >$95D5  AC 69 95                   CALL_abs               $9569 {bytecode}
  $95D8  A4 F6 75                   LOADL_abs              $75F6
  $95DB  CF                         RETURN

; ============================================================
; sub $95DC   (frame_off=+0, body @ $95E1)   [PRG $195DC]
; ============================================================
  $95E1  A4 C0 74                   LOADL_abs              $74C0
  $95E4  52                         LOADR_qimm   ; inline operand = 2
  $95E5  B9                         SMOD
  $95E6  D8 ED 95                   JUMPF_abs              $95ED
  $95E9  42                         LOADL_qimm   ; inline operand = 2
  $95EA  D6 EE 95                   JUMP_abs               $95EE
 >$95ED  41                         LOADL_qimm   ; inline operand = 1
 >$95EE  CF                         RETURN

; ============================================================
; sub $95EF   (frame_off=-8, body @ $95F4)   [PRG $195EF]
; ============================================================
  $95F4  A4 C0 74                   LOADL_abs              $74C0
  $95F7  CD                         SWAP
  $95F8  0C                         LOADL_quick   ; inline operand = 12
  $95F9  BB                         ADD
  $95FA  2C                         STORE_quick   ; inline operand = 12
  $95FB  A4 C2 74                   LOADL_abs              $74C2
  $95FE  CD                         SWAP
  $95FF  0D                         LOADL_quick   ; inline operand = 13
  $9600  BB                         ADD
  $9601  2D                         STORE_quick   ; inline operand = 13
  $9602  0C                         LOADL_quick   ; inline operand = 12
  $9603  50                         LOADR_qimm   ; inline operand = 0
  $9604  C5                         SCMPGE
  $9605  D8 58 96                   JUMPF_abs              $9658
  $9608  0C                         LOADL_quick   ; inline operand = 12
  $9609  5F                         LOADR_qimm   ; inline operand = 15
  $960A  C2                         SCMPLT
  $960B  D8 58 96                   JUMPF_abs              $9658
  $960E  0D                         LOADL_quick   ; inline operand = 13
  $960F  50                         LOADR_qimm   ; inline operand = 0
  $9610  C5                         SCMPGE
  $9611  D8 58 96                   JUMPF_abs              $9658
  $9614  0D                         LOADL_quick   ; inline operand = 13
  $9615  59                         LOADR_qimm   ; inline operand = 9
  $9616  C2                         SCMPLT
  $9617  D8 58 96                   JUMPF_abs              $9658
  $961A  0D                         LOADL_quick   ; inline operand = 13
  $961B  5F                         LOADR_qimm   ; inline operand = 15
  $961C  B5                         MULT
  $961D  1C                         LOADR_quick   ; inline operand = 12
  $961E  BB                         ADD
  $961F  28                         STORE_quick   ; inline operand = 8
  $9620  8A A3 74                   LOADL_imm2             $74A3
  $9623  2A                         STORE_quick   ; inline operand = 10
  $9624  A6 AA 74                   LOADR_abs              $74AA
  $9627  BB                         ADD
  $9628  29                         STORE_quick   ; inline operand = 9
  $9629  D6 52 96                   JUMP_abs               $9652
 >$962C  0A                         LOADL_quick   ; inline operand = 10
  $962D  D3                         BYTE_DEREF
  $962E  57                         LOADR_qimm   ; inline operand = 7
  $962F  B5                         MULT
  $9630  8C 90 6C                   LOADR_imm2             $6C90
  $9633  BB                         ADD
  $9634  2B                         STORE_quick   ; inline operand = 11
  $9635  0B                         LOADL_quick   ; inline operand = 11
  $9636  74                         ADD_qimm   ; inline operand = 4
  $9637  B0                         DEREF
  $9638  D8 4F 96                   JUMPF_abs              $964F
  $963B  0B                         LOADL_quick   ; inline operand = 11
  $963C  D3                         BYTE_DEREF
  $963D  D8 4F 96                   JUMPF_abs              $964F
  $9640  0A                         LOADL_quick   ; inline operand = 10
  $9641  D3                         BYTE_DEREF
  $9642  8C AC 74                   LOADR_imm2             $74AC
  $9645  BB                         ADD
  $9646  D3                         BYTE_DEREF
  $9647  18                         LOADR_quick   ; inline operand = 8
  $9648  C0                         CMPEQ
  $9649  D8 4F 96                   JUMPF_abs              $964F
  $964C  0A                         LOADL_quick   ; inline operand = 10
  $964D  D3                         BYTE_DEREF
  $964E  CF                         RETURN
 >$964F  0A                         LOADL_quick   ; inline operand = 10
  $9650  D0                         INC
  $9651  2A                         STORE_quick   ; inline operand = 10
 >$9652  0A                         LOADL_quick   ; inline operand = 10
  $9653  19                         LOADR_quick   ; inline operand = 9
  $9654  C6                         UCMPLT
  $9655  D7 2C 96                   JUMPT_abs              $962C
 >$9658  8A FF 00                   LOADL_imm2             $00FF
  $965B  CF                         RETURN

; ============================================================
; sub $965C   (frame_off=-6, body @ $9661)   [PRG $1965C]
; ============================================================
  $9661  0D                         LOADL_quick   ; inline operand = 13
  $9662  2B                         STORE_quick   ; inline operand = 11
  $9663  1C                         LOADR_quick   ; inline operand = 12
  $9664  BB                         ADD
  $9665  2A                         STORE_quick   ; inline operand = 10
  $9666  D6 8C 96                   JUMP_abs               $968C
 >$9669  0B                         LOADL_quick   ; inline operand = 11
  $966A  D3                         BYTE_DEREF
  $966B  8C AC 74                   LOADR_imm2             $74AC
  $966E  BB                         ADD
  $966F  D3                         BYTE_DEREF
  $9670  29                         STORE_quick   ; inline operand = 9
  $9671  09                         LOADL_quick   ; inline operand = 9
  $9672  5F                         LOADR_qimm   ; inline operand = 15
  $9673  BA                         UMOD
  $9674  A8 C0 74                   STORE_abs              $74C0
  $9677  09                         LOADL_quick   ; inline operand = 9
  $9678  5F                         LOADR_qimm   ; inline operand = 15
  $9679  B8                         UDIV
  $967A  A8 C2 74                   STORE_abs              $74C2
  $967D  0B                         LOADL_quick   ; inline operand = 11
  $967E  D3                         BYTE_DEREF
  $967F  A6 D2 74                   LOADR_abs              $74D2
  $9682  C0                         CMPEQ
  $9683  D8 89 96                   JUMPF_abs              $9689
  $9686  0B                         LOADL_quick   ; inline operand = 11
  $9687  D3                         BYTE_DEREF
  $9688  CF                         RETURN
 >$9689  0B                         LOADL_quick   ; inline operand = 11
  $968A  D0                         INC
  $968B  2B                         STORE_quick   ; inline operand = 11
 >$968C  0B                         LOADL_quick   ; inline operand = 11
  $968D  1A                         LOADR_quick   ; inline operand = 10
  $968E  C6                         UCMPLT
  $968F  D7 69 96                   JUMPT_abs              $9669
  $9692  0B                         LOADL_quick   ; inline operand = 11
  $9693  D1                         DEC
  $9694  D3                         BYTE_DEREF
  $9695  CF                         RETURN

; ============================================================
; sub $9696   (frame_off=-13, body @ $969B)   [PRG $19696]
; ============================================================
  $969B  AC DC 95                   CALL_abs               $95DC {bytecode}
  $969E  85 F7                      STORE_near             $F7
  $96A0  40                         LOADL_qimm   ; inline operand = 0
  $96A1  85 F5                      STORE_near             $F5
  $96A3  40                         LOADL_qimm   ; inline operand = 0
  $96A4  D6 E3 96                   JUMP_abs               $96E3
 >$96A7  81 F7                      LOADL_near             $F7
  $96A9  D2                         LSHIFT1
  $96AA  B3                         PUSHL
  $96AB  81 F9                      LOADL_near             $F9
  $96AD  56                         LOADR_qimm   ; inline operand = 6
  $96AE  B5                         MULT
  $96AF  B4                         POPR
  $96B0  BB                         ADD
  $96B1  8C DE 9C                   LOADR_imm2             $9CDE
  $96B4  BB                         ADD
  $96B5  B0                         DEREF
  $96B6  B3                         PUSHL
  $96B7  81 F9                      LOADL_near             $F9
  $96B9  56                         LOADR_qimm   ; inline operand = 6
  $96BA  B5                         MULT
  $96BB  8C DE 9C                   LOADR_imm2             $9CDE
  $96BE  BB                         ADD
  $96BF  B0                         DEREF
  $96C0  B3                         PUSHL
  $96C1  E9 EF 95 04                CALL_abs_imm1          $95EF {bytecode}, $04
  $96C5  85 F3                      STORE_near             $F3
  $96C7  81 F3                      LOADL_near             $F3
  $96C9  8C FF 00                   LOADR_imm2             $00FF
  $96CC  C1                         CMPNE
  $96CD  D8 E0 96                   JUMPF_abs              $96E0
  $96D0  DE FB FF                   LEAL_far               $FFFB
  $96D3  B3                         PUSHL
  $96D4  81 F5                      LOADL_near             $F5
  $96D6  D0                         INC
  $96D7  85 F5                      STORE_near             $F5
  $96D9  D1                         DEC
  $96DA  B4                         POPR
  $96DB  BB                         ADD
  $96DC  B3                         PUSHL
  $96DD  81 F3                      LOADL_near             $F3
  $96DF  D4                         BYTE_POPSTORE
 >$96E0  81 F9                      LOADL_near             $F9
  $96E2  D0                         INC
 >$96E3  85 F9                      STORE_near             $F9
  $96E5  81 F9                      LOADL_near             $F9
  $96E7  56                         LOADR_qimm   ; inline operand = 6
  $96E8  C6                         UCMPLT
  $96E9  D7 A7 96                   JUMPT_abs              $96A7
  $96EC  DE FB FF                   LEAL_far               $FFFB
  $96EF  B3                         PUSHL
  $96F0  87 F5                      PUSH_near              $F5
  $96F2  E9 5C 96 04                CALL_abs_imm1          $965C {bytecode}, $04
  $96F6  CF                         RETURN

; ============================================================
; sub $96F7   (frame_off=-19, body @ $96FC)   [PRG $196F7]
; ============================================================
  $96FC  AC DC 95                   CALL_abs               $95DC {bytecode}
  $96FF  85 F3                      STORE_near             $F3
  $9701  0C                         LOADL_quick   ; inline operand = 12
  $9702  55                         LOADR_qimm   ; inline operand = 5
  $9703  BA                         UMOD
  $9704  8C BB 74                   LOADR_imm2             $74BB
  $9707  BB                         ADD
  $9708  D3                         BYTE_DEREF
  $9709  53                         LOADR_qimm   ; inline operand = 3
  $970A  BA                         UMOD
  $970B  85 F1                      STORE_near             $F1
  $970D  0C                         LOADL_quick   ; inline operand = 12
  $970E  57                         LOADR_qimm   ; inline operand = 7
  $970F  B5                         MULT
  $9710  8C 96 6C                   LOADR_imm2             $6C96
  $9713  BB                         ADD
  $9714  D3                         BYTE_DEREF
  $9715  54                         LOADR_qimm   ; inline operand = 4
  $9716  BE                         URSHIFT
  $9717  53                         LOADR_qimm   ; inline operand = 3
  $9718  DA                         AND
  $9719  51                         LOADR_qimm   ; inline operand = 1
  $971A  DA                         AND
  $971B  D8 22 97                   JUMPF_abs              $9722
  $971E  46                         LOADL_qimm   ; inline operand = 6
  $971F  D6 23 97                   JUMP_abs               $9723
 >$9722  4E                         LOADL_qimm   ; inline operand = 14
 >$9723  85 ED                      STORE_near             $ED
  $9725  40                         LOADL_qimm   ; inline operand = 0
  $9726  85 EF                      STORE_near             $EF
  $9728  81 F1                      LOADL_near             $F1
  $972A  5E                         LOADR_qimm   ; inline operand = 14
  $972B  B5                         MULT
  $972C  8C B6 9D                   LOADR_imm2             $9DB6
  $972F  BB                         ADD
  $9730  2B                         STORE_quick   ; inline operand = 11
  $9731  83 ED                      LOADR_near             $ED
  $9733  BB                         ADD
  $9734  2A                         STORE_quick   ; inline operand = 10
  $9735  D6 74 97                   JUMP_abs               $9774
 >$9738  81 F3                      LOADL_near             $F3
  $973A  D2                         LSHIFT1
  $973B  B3                         PUSHL
  $973C  0B                         LOADL_quick   ; inline operand = 11
  $973D  D3                         BYTE_DEREF
  $973E  56                         LOADR_qimm   ; inline operand = 6
  $973F  B5                         MULT
  $9740  B4                         POPR
  $9741  BB                         ADD
  $9742  8C 02 9D                   LOADR_imm2             $9D02
  $9745  BB                         ADD
  $9746  B0                         DEREF
  $9747  B3                         PUSHL
  $9748  0B                         LOADL_quick   ; inline operand = 11
  $9749  D3                         BYTE_DEREF
  $974A  56                         LOADR_qimm   ; inline operand = 6
  $974B  B5                         MULT
  $974C  8C 02 9D                   LOADR_imm2             $9D02
  $974F  BB                         ADD
  $9750  B0                         DEREF
  $9751  B3                         PUSHL
  $9752  E9 EF 95 04                CALL_abs_imm1          $95EF {bytecode}, $04
  $9756  85 F5                      STORE_near             $F5
  $9758  81 F5                      LOADL_near             $F5
  $975A  8C FF 00                   LOADR_imm2             $00FF
  $975D  C1                         CMPNE
  $975E  D8 71 97                   JUMPF_abs              $9771
  $9761  DE F7 FF                   LEAL_far               $FFF7
  $9764  B3                         PUSHL
  $9765  81 EF                      LOADL_near             $EF
  $9767  D0                         INC
  $9768  85 EF                      STORE_near             $EF
  $976A  D1                         DEC
  $976B  B4                         POPR
  $976C  BB                         ADD
  $976D  B3                         PUSHL
  $976E  81 F5                      LOADL_near             $F5
  $9770  D4                         BYTE_POPSTORE
 >$9771  0B                         LOADL_quick   ; inline operand = 11
  $9772  D0                         INC
  $9773  2B                         STORE_quick   ; inline operand = 11
 >$9774  0B                         LOADL_quick   ; inline operand = 11
  $9775  1A                         LOADR_quick   ; inline operand = 10
  $9776  C6                         UCMPLT
  $9777  D7 38 97                   JUMPT_abs              $9738
  $977A  DE F7 FF                   LEAL_far               $FFF7
  $977D  B3                         PUSHL
  $977E  87 EF                      PUSH_near              $EF
  $9780  E9 5C 96 04                CALL_abs_imm1          $965C {bytecode}, $04
  $9784  CF                         RETURN

; ============================================================
; sub $9785   (frame_off=-6, body @ $978A)   [PRG $19785]
; ============================================================
  $978A  A4 C0 74                   LOADL_abs              $74C0
  $978D  2B                         STORE_quick   ; inline operand = 11
  $978E  A4 C2 74                   LOADL_abs              $74C2
  $9791  2A                         STORE_quick   ; inline operand = 10
  $9792  AC 96 96                   CALL_abs               $9696 {bytecode}
  $9795  29                         STORE_quick   ; inline operand = 9
  $9796  39                         PUSH_quick   ; inline operand = 9
  $9797  3C                         PUSH_quick   ; inline operand = 12
  $9798  E9 49 85 04                CALL_abs_imm1          $8549 {bytecode}, $04
  $979C  AC AB 80                   CALL_abs               $80AB {bytecode}
  $979F  39                         PUSH_quick   ; inline operand = 9
  $97A0  3C                         PUSH_quick   ; inline operand = 12
  $97A1  E9 E6 86 04                CALL_abs_imm1          $86E6 {bytecode}, $04
  $97A5  0B                         LOADL_quick   ; inline operand = 11
  $97A6  A8 C0 74                   STORE_abs              $74C0
  $97A9  0A                         LOADL_quick   ; inline operand = 10
  $97AA  A8 C2 74                   STORE_abs              $74C2
  $97AD  CF                         RETURN

; ============================================================
; sub $97AE   (frame_off=-6, body @ $97B3)   [PRG $197AE]
; ============================================================
  $97B3  A4 C0 74                   LOADL_abs              $74C0
  $97B6  2B                         STORE_quick   ; inline operand = 11
  $97B7  A4 C2 74                   LOADL_abs              $74C2
  $97BA  2A                         STORE_quick   ; inline operand = 10
  $97BB  3C                         PUSH_quick   ; inline operand = 12
  $97BC  E9 F7 96 02                CALL_abs_imm1          $96F7 {bytecode}, $02
  $97C0  29                         STORE_quick   ; inline operand = 9
  $97C1  39                         PUSH_quick   ; inline operand = 9
  $97C2  E9 15 80 02                CALL_abs_imm1          $8015 {bytecode}, $02
  $97C6  39                         PUSH_quick   ; inline operand = 9
  $97C7  3C                         PUSH_quick   ; inline operand = 12
  $97C8  E9 04 87 04                CALL_abs_imm1          $8704 {bytecode}, $04
  $97CC  0B                         LOADL_quick   ; inline operand = 11
  $97CD  A8 C0 74                   STORE_abs              $74C0
  $97D0  0A                         LOADL_quick   ; inline operand = 10
  $97D1  A8 C2 74                   STORE_abs              $74C2
  $97D4  CF                         RETURN

; ============================================================
; sub $97D5   (frame_off=+0, body @ $97DA)   [PRG $197D5]
; ============================================================
  $97DA  AC A7 9C                   CALL_abs               $9CA7 {bytecode}
  $97DD  D8 02 98                   JUMPF_abs              $9802
  $97E0  0C                         LOADL_quick   ; inline operand = 12
  $97E1  57                         LOADR_qimm   ; inline operand = 7
  $97E2  B5                         MULT
  $97E3  8C 94 6C                   LOADR_imm2             $6C94
  $97E6  BB                         ADD
  $97E7  B0                         DEREF
  $97E8  8B 14                      BYTE_LOADR_imm1        +20
  $97EA  C3                         SCMPLE
  $97EB  D7 01 98                   JUMPT_abs              $9801
  $97EE  0C                         LOADL_quick   ; inline operand = 12
  $97EF  57                         LOADR_qimm   ; inline operand = 7
  $97F0  B5                         MULT
  $97F1  8C 90 6C                   LOADR_imm2             $6C90
  $97F4  BB                         ADD
  $97F5  D3                         BYTE_DEREF
  $97F6  8B 14                      BYTE_LOADR_imm1        +20
  $97F8  C3                         SCMPLE
  $97F9  D7 01 98                   JUMPT_abs              $9801
  $97FC  3C                         PUSH_quick   ; inline operand = 12
  $97FD  E9 85 97 02                CALL_abs_imm1          $9785 {bytecode}, $02
 >$9801  CF                         RETURN
 >$9802  3C                         PUSH_quick   ; inline operand = 12
  $9803  E9 2D 9C 02                CALL_abs_imm1          $9C2D {bytecode}, $02
  $9807  D8 0F 98                   JUMPF_abs              $980F
  $980A  3C                         PUSH_quick   ; inline operand = 12
  $980B  E9 AE 97 02                CALL_abs_imm1          $97AE {bytecode}, $02
 >$980F  CF                         RETURN

; ============================================================
; sub $9810   (frame_off=-14, body @ $9815)   [PRG $19810]
; ============================================================
  $9815  8A A3 74                   LOADL_imm2             $74A3
  $9818  2B                         STORE_quick   ; inline operand = 11
  $9819  A6 AA 74                   LOADR_abs              $74AA
  $981C  BB                         ADD
  $981D  2A                         STORE_quick   ; inline operand = 10
  $981E  D6 BA 98                   JUMP_abs               $98BA
 >$9821  0B                         LOADL_quick   ; inline operand = 11
  $9822  D3                         BYTE_DEREF
  $9823  8C AC 74                   LOADR_imm2             $74AC
  $9826  BB                         ADD
  $9827  D3                         BYTE_DEREF
  $9828  5F                         LOADR_qimm   ; inline operand = 15
  $9829  BA                         UMOD
  $982A  28                         STORE_quick   ; inline operand = 8
  $982B  0B                         LOADL_quick   ; inline operand = 11
  $982C  D3                         BYTE_DEREF
  $982D  8C AC 74                   LOADR_imm2             $74AC
  $9830  BB                         ADD
  $9831  D3                         BYTE_DEREF
  $9832  5F                         LOADR_qimm   ; inline operand = 15
  $9833  B8                         UDIV
  $9834  27                         STORE_quick   ; inline operand = 7
  $9835  0B                         LOADL_quick   ; inline operand = 11
  $9836  D3                         BYTE_DEREF
  $9837  57                         LOADR_qimm   ; inline operand = 7
  $9838  B5                         MULT
  $9839  8C 90 6C                   LOADR_imm2             $6C90
  $983C  BB                         ADD
  $983D  D3                         BYTE_DEREF
  $983E  D8 B7 98                   JUMPF_abs              $98B7
  $9841  07                         LOADL_quick   ; inline operand = 7
  $9842  5F                         LOADR_qimm   ; inline operand = 15
  $9843  B5                         MULT
  $9844  18                         LOADR_quick   ; inline operand = 8
  $9845  BB                         ADD
  $9846  8C 90 73                   LOADR_imm2             $7390
  $9849  BB                         ADD
  $984A  B3                         PUSHL
  $984B  8A 85 00                   LOADL_imm2             $0085
  $984E  D4                         BYTE_POPSTORE
  $984F  A4 68 75                   LOADL_abs              $7568
  $9852  D8 B7 98                   JUMPF_abs              $98B7
  $9855  40                         LOADL_qimm   ; inline operand = 0
  $9856  29                         STORE_quick   ; inline operand = 9
 >$9857  09                         LOADL_quick   ; inline operand = 9
  $9858  56                         LOADR_qimm   ; inline operand = 6
  $9859  B5                         MULT
  $985A  8C DE 9C                   LOADR_imm2             $9CDE
  $985D  BB                         ADD
  $985E  B0                         DEREF
  $985F  18                         LOADR_quick   ; inline operand = 8
  $9860  BB                         ADD
  $9861  26                         STORE_quick   ; inline operand = 6
  $9862  09                         LOADL_quick   ; inline operand = 9
  $9863  56                         LOADR_qimm   ; inline operand = 6
  $9864  B5                         MULT
  $9865  B3                         PUSHL
  $9866  08                         LOADL_quick   ; inline operand = 8
  $9867  52                         LOADR_qimm   ; inline operand = 2
  $9868  B9                         SMOD
  $9869  D8 70 98                   JUMPF_abs              $9870
  $986C  42                         LOADL_qimm   ; inline operand = 2
  $986D  D6 71 98                   JUMP_abs               $9871
 >$9870  41                         LOADL_qimm   ; inline operand = 1
 >$9871  D2                         LSHIFT1
  $9872  B4                         POPR
  $9873  BB                         ADD
  $9874  8C DE 9C                   LOADR_imm2             $9CDE
  $9877  BB                         ADD
  $9878  B0                         DEREF
  $9879  17                         LOADR_quick   ; inline operand = 7
  $987A  BB                         ADD
  $987B  25                         STORE_quick   ; inline operand = 5
  $987C  06                         LOADL_quick   ; inline operand = 6
  $987D  50                         LOADR_qimm   ; inline operand = 0
  $987E  C5                         SCMPGE
  $987F  D8 AE 98                   JUMPF_abs              $98AE
  $9882  06                         LOADL_quick   ; inline operand = 6
  $9883  5F                         LOADR_qimm   ; inline operand = 15
  $9884  C2                         SCMPLT
  $9885  D8 AE 98                   JUMPF_abs              $98AE
  $9888  05                         LOADL_quick   ; inline operand = 5
  $9889  50                         LOADR_qimm   ; inline operand = 0
  $988A  C5                         SCMPGE
  $988B  D8 AE 98                   JUMPF_abs              $98AE
  $988E  05                         LOADL_quick   ; inline operand = 5
  $988F  59                         LOADR_qimm   ; inline operand = 9
  $9890  C2                         SCMPLT
  $9891  D8 AE 98                   JUMPF_abs              $98AE
  $9894  05                         LOADL_quick   ; inline operand = 5
  $9895  5F                         LOADR_qimm   ; inline operand = 15
  $9896  B5                         MULT
  $9897  16                         LOADR_quick   ; inline operand = 6
  $9898  BB                         ADD
  $9899  8C 90 73                   LOADR_imm2             $7390
  $989C  BB                         ADD
  $989D  D3                         BYTE_DEREF
  $989E  D8 AE 98                   JUMPF_abs              $98AE
  $98A1  05                         LOADL_quick   ; inline operand = 5
  $98A2  5F                         LOADR_qimm   ; inline operand = 15
  $98A3  B5                         MULT
  $98A4  16                         LOADR_quick   ; inline operand = 6
  $98A5  BB                         ADD
  $98A6  8C 90 73                   LOADR_imm2             $7390
  $98A9  BB                         ADD
  $98AA  B3                         PUSHL
  $98AB  D3                         BYTE_DEREF
  $98AC  D1                         DEC
  $98AD  D4                         BYTE_POPSTORE
 >$98AE  09                         LOADL_quick   ; inline operand = 9
  $98AF  D0                         INC
  $98B0  29                         STORE_quick   ; inline operand = 9
  $98B1  09                         LOADL_quick   ; inline operand = 9
  $98B2  56                         LOADR_qimm   ; inline operand = 6
  $98B3  C6                         UCMPLT
  $98B4  D7 57 98                   JUMPT_abs              $9857
 >$98B7  0B                         LOADL_quick   ; inline operand = 11
  $98B8  D0                         INC
  $98B9  2B                         STORE_quick   ; inline operand = 11
 >$98BA  0B                         LOADL_quick   ; inline operand = 11
  $98BB  1A                         LOADR_quick   ; inline operand = 10
  $98BC  C6                         UCMPLT
  $98BD  D7 21 98                   JUMPT_abs              $9821
  $98C0  8A 9E 74                   LOADL_imm2             $749E
  $98C3  2B                         STORE_quick   ; inline operand = 11
  $98C4  A6 A8 74                   LOADR_abs              $74A8
  $98C7  BB                         ADD
  $98C8  2A                         STORE_quick   ; inline operand = 10
  $98C9  D6 F9 98                   JUMP_abs               $98F9
 >$98CC  0B                         LOADL_quick   ; inline operand = 11
  $98CD  D3                         BYTE_DEREF
  $98CE  57                         LOADR_qimm   ; inline operand = 7
  $98CF  B5                         MULT
  $98D0  8C 90 6C                   LOADR_imm2             $6C90
  $98D3  BB                         ADD
  $98D4  D3                         BYTE_DEREF
  $98D5  D8 F6 98                   JUMPF_abs              $98F6
  $98D8  0B                         LOADL_quick   ; inline operand = 11
  $98D9  D3                         BYTE_DEREF
  $98DA  55                         LOADR_qimm   ; inline operand = 5
  $98DB  BA                         UMOD
  $98DC  8C B1 74                   LOADR_imm2             $74B1
  $98DF  BB                         ADD
  $98E0  D3                         BYTE_DEREF
  $98E1  29                         STORE_quick   ; inline operand = 9
  $98E2  09                         LOADL_quick   ; inline operand = 9
  $98E3  5F                         LOADR_qimm   ; inline operand = 15
  $98E4  BA                         UMOD
  $98E5  B3                         PUSHL
  $98E6  09                         LOADL_quick   ; inline operand = 9
  $98E7  5F                         LOADR_qimm   ; inline operand = 15
  $98E8  B8                         UDIV
  $98E9  5F                         LOADR_qimm   ; inline operand = 15
  $98EA  B5                         MULT
  $98EB  B4                         POPR
  $98EC  BB                         ADD
  $98ED  8C 90 73                   LOADR_imm2             $7390
  $98F0  BB                         ADD
  $98F1  B3                         PUSHL
  $98F2  8A 85 00                   LOADL_imm2             $0085
  $98F5  D4                         BYTE_POPSTORE
 >$98F6  0B                         LOADL_quick   ; inline operand = 11
  $98F7  D0                         INC
  $98F8  2B                         STORE_quick   ; inline operand = 11
 >$98F9  0B                         LOADL_quick   ; inline operand = 11
  $98FA  1A                         LOADR_quick   ; inline operand = 10
  $98FB  C6                         UCMPLT
  $98FC  D7 CC 98                   JUMPT_abs              $98CC
  $98FF  CF                         RETURN

; ============================================================
; sub $9900   (frame_off=-8, body @ $9905)   [PRG $19900]
; ============================================================
  $9905  40                         LOADL_qimm   ; inline operand = 0
  $9906  2B                         STORE_quick   ; inline operand = 11
 >$9907  0B                         LOADL_quick   ; inline operand = 11
  $9908  56                         LOADR_qimm   ; inline operand = 6
  $9909  B5                         MULT
  $990A  8C DE 9C                   LOADR_imm2             $9CDE
  $990D  BB                         ADD
  $990E  B0                         DEREF
  $990F  A6 C0 74                   LOADR_abs              $74C0
  $9912  BB                         ADD
  $9913  29                         STORE_quick   ; inline operand = 9
  $9914  0B                         LOADL_quick   ; inline operand = 11
  $9915  56                         LOADR_qimm   ; inline operand = 6
  $9916  B5                         MULT
  $9917  B3                         PUSHL
  $9918  AC DC 95                   CALL_abs               $95DC {bytecode}
  $991B  D2                         LSHIFT1
  $991C  B4                         POPR
  $991D  BB                         ADD
  $991E  8C DE 9C                   LOADR_imm2             $9CDE
  $9921  BB                         ADD
  $9922  B0                         DEREF
  $9923  A6 C2 74                   LOADR_abs              $74C2
  $9926  BB                         ADD
  $9927  28                         STORE_quick   ; inline operand = 8
  $9928  08                         LOADL_quick   ; inline operand = 8
  $9929  5F                         LOADR_qimm   ; inline operand = 15
  $992A  B5                         MULT
  $992B  19                         LOADR_quick   ; inline operand = 9
  $992C  BB                         ADD
  $992D  2A                         STORE_quick   ; inline operand = 10
  $992E  09                         LOADL_quick   ; inline operand = 9
  $992F  50                         LOADR_qimm   ; inline operand = 0
  $9930  C5                         SCMPGE
  $9931  D8 57 99                   JUMPF_abs              $9957
  $9934  09                         LOADL_quick   ; inline operand = 9
  $9935  5F                         LOADR_qimm   ; inline operand = 15
  $9936  C2                         SCMPLT
  $9937  D8 57 99                   JUMPF_abs              $9957
  $993A  08                         LOADL_quick   ; inline operand = 8
  $993B  50                         LOADR_qimm   ; inline operand = 0
  $993C  C5                         SCMPGE
  $993D  D8 57 99                   JUMPF_abs              $9957
  $9940  08                         LOADL_quick   ; inline operand = 8
  $9941  59                         LOADR_qimm   ; inline operand = 9
  $9942  C2                         SCMPLT
  $9943  D8 57 99                   JUMPF_abs              $9957
  $9946  A4 D2 74                   LOADL_abs              $74D2
  $9949  55                         LOADR_qimm   ; inline operand = 5
  $994A  BA                         UMOD
  $994B  8C AC 74                   LOADR_imm2             $74AC
  $994E  BB                         ADD
  $994F  D3                         BYTE_DEREF
  $9950  1A                         LOADR_quick   ; inline operand = 10
  $9951  C0                         CMPEQ
  $9952  D8 57 99                   JUMPF_abs              $9957
  $9955  41                         LOADL_qimm   ; inline operand = 1
  $9956  CF                         RETURN
 >$9957  0B                         LOADL_quick   ; inline operand = 11
  $9958  D0                         INC
  $9959  2B                         STORE_quick   ; inline operand = 11
  $995A  0B                         LOADL_quick   ; inline operand = 11
  $995B  56                         LOADR_qimm   ; inline operand = 6
  $995C  C6                         UCMPLT
  $995D  D7 07 99                   JUMPT_abs              $9907
  $9960  40                         LOADL_qimm   ; inline operand = 0
  $9961  CF                         RETURN

; ============================================================
; sub $9962   (frame_off=-14, body @ $9967)   [PRG $19962]
; ============================================================
  $9967  0C                         LOADL_quick   ; inline operand = 12
  $9968  57                         LOADR_qimm   ; inline operand = 7
  $9969  B5                         MULT
  $996A  8C 96 6C                   LOADR_imm2             $6C96
  $996D  BB                         ADD
  $996E  D3                         BYTE_DEREF
  $996F  54                         LOADR_qimm   ; inline operand = 4
  $9970  BE                         URSHIFT
  $9971  53                         LOADR_qimm   ; inline operand = 3
  $9972  DA                         AND
  $9973  25                         STORE_quick   ; inline operand = 5
  $9974  05                         LOADL_quick   ; inline operand = 5
  $9975  D8 F8 99                   JUMPF_abs              $99F8
  $9978  0C                         LOADL_quick   ; inline operand = 12
  $9979  55                         LOADR_qimm   ; inline operand = 5
  $997A  BA                         UMOD
  $997B  8C BB 74                   LOADR_imm2             $74BB
  $997E  BB                         ADD
  $997F  D3                         BYTE_DEREF
  $9980  53                         LOADR_qimm   ; inline operand = 3
  $9981  BA                         UMOD
  $9982  27                         STORE_quick   ; inline operand = 7
  $9983  05                         LOADL_quick   ; inline operand = 5
  $9984  51                         LOADR_qimm   ; inline operand = 1
  $9985  DA                         AND
  $9986  D8 8D 99                   JUMPF_abs              $998D
  $9989  46                         LOADL_qimm   ; inline operand = 6
  $998A  D6 8E 99                   JUMP_abs               $998E
 >$998D  4E                         LOADL_qimm   ; inline operand = 14
 >$998E  25                         STORE_quick   ; inline operand = 5
  $998F  07                         LOADL_quick   ; inline operand = 7
  $9990  5E                         LOADR_qimm   ; inline operand = 14
  $9991  B5                         MULT
  $9992  8C B6 9D                   LOADR_imm2             $9DB6
  $9995  BB                         ADD
  $9996  2B                         STORE_quick   ; inline operand = 11
  $9997  15                         LOADR_quick   ; inline operand = 5
  $9998  BB                         ADD
  $9999  2A                         STORE_quick   ; inline operand = 10
  $999A  D6 F2 99                   JUMP_abs               $99F2
 >$999D  0B                         LOADL_quick   ; inline operand = 11
  $999E  D3                         BYTE_DEREF
  $999F  56                         LOADR_qimm   ; inline operand = 6
  $99A0  B5                         MULT
  $99A1  8C 02 9D                   LOADR_imm2             $9D02
  $99A4  BB                         ADD
  $99A5  B0                         DEREF
  $99A6  A6 C0 74                   LOADR_abs              $74C0
  $99A9  BB                         ADD
  $99AA  29                         STORE_quick   ; inline operand = 9
  $99AB  0B                         LOADL_quick   ; inline operand = 11
  $99AC  D3                         BYTE_DEREF
  $99AD  56                         LOADR_qimm   ; inline operand = 6
  $99AE  B5                         MULT
  $99AF  B3                         PUSHL
  $99B0  AC DC 95                   CALL_abs               $95DC {bytecode}
  $99B3  D2                         LSHIFT1
  $99B4  B4                         POPR
  $99B5  BB                         ADD
  $99B6  8C 02 9D                   LOADR_imm2             $9D02
  $99B9  BB                         ADD
  $99BA  B0                         DEREF
  $99BB  A6 C2 74                   LOADR_abs              $74C2
  $99BE  BB                         ADD
  $99BF  28                         STORE_quick   ; inline operand = 8
  $99C0  08                         LOADL_quick   ; inline operand = 8
  $99C1  5F                         LOADR_qimm   ; inline operand = 15
  $99C2  B5                         MULT
  $99C3  19                         LOADR_quick   ; inline operand = 9
  $99C4  BB                         ADD
  $99C5  26                         STORE_quick   ; inline operand = 6
  $99C6  09                         LOADL_quick   ; inline operand = 9
  $99C7  50                         LOADR_qimm   ; inline operand = 0
  $99C8  C5                         SCMPGE
  $99C9  D8 EF 99                   JUMPF_abs              $99EF
  $99CC  09                         LOADL_quick   ; inline operand = 9
  $99CD  5F                         LOADR_qimm   ; inline operand = 15
  $99CE  C2                         SCMPLT
  $99CF  D8 EF 99                   JUMPF_abs              $99EF
  $99D2  08                         LOADL_quick   ; inline operand = 8
  $99D3  50                         LOADR_qimm   ; inline operand = 0
  $99D4  C5                         SCMPGE
  $99D5  D8 EF 99                   JUMPF_abs              $99EF
  $99D8  08                         LOADL_quick   ; inline operand = 8
  $99D9  59                         LOADR_qimm   ; inline operand = 9
  $99DA  C2                         SCMPLT
  $99DB  D8 EF 99                   JUMPF_abs              $99EF
  $99DE  A4 D2 74                   LOADL_abs              $74D2
  $99E1  55                         LOADR_qimm   ; inline operand = 5
  $99E2  BA                         UMOD
  $99E3  8C AC 74                   LOADR_imm2             $74AC
  $99E6  BB                         ADD
  $99E7  D3                         BYTE_DEREF
  $99E8  16                         LOADR_quick   ; inline operand = 6
  $99E9  C0                         CMPEQ
  $99EA  D8 EF 99                   JUMPF_abs              $99EF
  $99ED  41                         LOADL_qimm   ; inline operand = 1
  $99EE  CF                         RETURN
 >$99EF  0B                         LOADL_quick   ; inline operand = 11
  $99F0  D0                         INC
  $99F1  2B                         STORE_quick   ; inline operand = 11
 >$99F2  0B                         LOADL_quick   ; inline operand = 11
  $99F3  1A                         LOADR_quick   ; inline operand = 10
  $99F4  C6                         UCMPLT
  $99F5  D7 9D 99                   JUMPT_abs              $999D
 >$99F8  40                         LOADL_qimm   ; inline operand = 0
  $99F9  CF                         RETURN

; ============================================================
; sub $99FA   (frame_off=-18, body @ $99FF)   [PRG $199FA]
; ============================================================
  $99FF  0C                         LOADL_quick   ; inline operand = 12
  $9A00  55                         LOADR_qimm   ; inline operand = 5
  $9A01  BA                         UMOD
  $9A02  8C BB 74                   LOADR_imm2             $74BB
  $9A05  BB                         ADD
  $9A06  2B                         STORE_quick   ; inline operand = 11
  $9A07  8A 80 00                   LOADL_imm2             $0080
  $9A0A  27                         STORE_quick   ; inline operand = 7
  $9A0B  45                         LOADL_qimm   ; inline operand = 5
  $9A0C  2A                         STORE_quick   ; inline operand = 10
  $9A0D  28                         STORE_quick   ; inline operand = 8
  $9A0E  D6 89 9A                   JUMP_abs               $9A89
 >$9A11  0B                         LOADL_quick   ; inline operand = 11
  $9A12  D3                         BYTE_DEREF
  $9A13  1A                         LOADR_quick   ; inline operand = 10
  $9A14  BB                         ADD
  $9A15  56                         LOADR_qimm   ; inline operand = 6
  $9A16  BA                         UMOD
  $9A17  29                         STORE_quick   ; inline operand = 9
  $9A18  09                         LOADL_quick   ; inline operand = 9
  $9A19  56                         LOADR_qimm   ; inline operand = 6
  $9A1A  B5                         MULT
  $9A1B  8C DE 9C                   LOADR_imm2             $9CDE
  $9A1E  BB                         ADD
  $9A1F  B0                         DEREF
  $9A20  A6 C0 74                   LOADR_abs              $74C0
  $9A23  BB                         ADD
  $9A24  25                         STORE_quick   ; inline operand = 5
  $9A25  09                         LOADL_quick   ; inline operand = 9
  $9A26  56                         LOADR_qimm   ; inline operand = 6
  $9A27  B5                         MULT
  $9A28  B3                         PUSHL
  $9A29  AC DC 95                   CALL_abs               $95DC {bytecode}
  $9A2C  D2                         LSHIFT1
  $9A2D  B4                         POPR
  $9A2E  BB                         ADD
  $9A2F  8C DE 9C                   LOADR_imm2             $9CDE
  $9A32  BB                         ADD
  $9A33  B0                         DEREF
  $9A34  A6 C2 74                   LOADR_abs              $74C2
  $9A37  BB                         ADD
  $9A38  24                         STORE_quick   ; inline operand = 4
  $9A39  05                         LOADL_quick   ; inline operand = 5
  $9A3A  50                         LOADR_qimm   ; inline operand = 0
  $9A3B  C5                         SCMPGE
  $9A3C  D8 86 9A                   JUMPF_abs              $9A86
  $9A3F  05                         LOADL_quick   ; inline operand = 5
  $9A40  5F                         LOADR_qimm   ; inline operand = 15
  $9A41  C2                         SCMPLT
  $9A42  D8 86 9A                   JUMPF_abs              $9A86
  $9A45  04                         LOADL_quick   ; inline operand = 4
  $9A46  50                         LOADR_qimm   ; inline operand = 0
  $9A47  C5                         SCMPGE
  $9A48  D8 86 9A                   JUMPF_abs              $9A86
  $9A4B  04                         LOADL_quick   ; inline operand = 4
  $9A4C  59                         LOADR_qimm   ; inline operand = 9
  $9A4D  C2                         SCMPLT
  $9A4E  D8 86 9A                   JUMPF_abs              $9A86
  $9A51  04                         LOADL_quick   ; inline operand = 4
  $9A52  5F                         LOADR_qimm   ; inline operand = 15
  $9A53  B5                         MULT
  $9A54  15                         LOADR_quick   ; inline operand = 5
  $9A55  BB                         ADD
  $9A56  8C 90 73                   LOADR_imm2             $7390
  $9A59  BB                         ADD
  $9A5A  D3                         BYTE_DEREF
  $9A5B  B3                         PUSHL
  $9A5C  07                         LOADL_quick   ; inline operand = 7
  $9A5D  B4                         POPR
  $9A5E  C9                         UCMPGE
  $9A5F  D8 86 9A                   JUMPF_abs              $9A86
  $9A62  04                         LOADL_quick   ; inline operand = 4
  $9A63  5F                         LOADR_qimm   ; inline operand = 15
  $9A64  B5                         MULT
  $9A65  15                         LOADR_quick   ; inline operand = 5
  $9A66  BB                         ADD
  $9A67  8C 90 73                   LOADR_imm2             $7390
  $9A6A  BB                         ADD
  $9A6B  D3                         BYTE_DEREF
  $9A6C  17                         LOADR_quick   ; inline operand = 7
  $9A6D  C0                         CMPEQ
  $9A6E  D8 79 9A                   JUMPF_abs              $9A79
  $9A71  62                         PUSH_qimm   ; inline operand = 2
  $9A72  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $9A76  D7 86 9A                   JUMPT_abs              $9A86
 >$9A79  0A                         LOADL_quick   ; inline operand = 10
  $9A7A  28                         STORE_quick   ; inline operand = 8
  $9A7B  04                         LOADL_quick   ; inline operand = 4
  $9A7C  5F                         LOADR_qimm   ; inline operand = 15
  $9A7D  B5                         MULT
  $9A7E  15                         LOADR_quick   ; inline operand = 5
  $9A7F  BB                         ADD
  $9A80  8C 90 73                   LOADR_imm2             $7390
  $9A83  BB                         ADD
  $9A84  D3                         BYTE_DEREF
  $9A85  27                         STORE_quick   ; inline operand = 7
 >$9A86  0A                         LOADL_quick   ; inline operand = 10
  $9A87  D0                         INC
  $9A88  2A                         STORE_quick   ; inline operand = 10
 >$9A89  0A                         LOADL_quick   ; inline operand = 10
  $9A8A  58                         LOADR_qimm   ; inline operand = 8
  $9A8B  C6                         UCMPLT
  $9A8C  D7 11 9A                   JUMPT_abs              $9A11
  $9A8F  0C                         LOADL_quick   ; inline operand = 12
  $9A90  57                         LOADR_qimm   ; inline operand = 7
  $9A91  B5                         MULT
  $9A92  8C 90 6C                   LOADR_imm2             $6C90
  $9A95  BB                         ADD
  $9A96  23                         STORE_quick   ; inline operand = 3
  $9A97  08                         LOADL_quick   ; inline operand = 8
  $9A98  8F FB                      BYTE_ADD_imm1          -5
  $9A9A  51                         LOADR_qimm   ; inline operand = 1
  $9A9B  C1                         CMPNE
  $9A9C  D8 AE 9A                   JUMPF_abs              $9AAE
  $9A9F  03                         LOADL_quick   ; inline operand = 3
  $9AA0  D0                         INC
  $9AA1  D3                         BYTE_DEREF
  $9AA2  B3                         PUSHL
  $9AA3  89 64                      BYTE_LOADL_imm1        +100
  $9AA5  B4                         POPR
  $9AA6  BC                         SUB
  $9AA7  8B 19                      BYTE_LOADR_imm1        +25
  $9AA9  B8                         UDIV
  $9AAA  D0                         INC
  $9AAB  D6 AF 9A                   JUMP_abs               $9AAF
 >$9AAE  40                         LOADL_qimm   ; inline operand = 0
 >$9AAF  26                         STORE_quick   ; inline operand = 6
  $9AB0  0B                         LOADL_quick   ; inline operand = 11
  $9AB1  D3                         BYTE_DEREF
  $9AB2  18                         LOADR_quick   ; inline operand = 8
  $9AB3  BB                         ADD
  $9AB4  56                         LOADR_qimm   ; inline operand = 6
  $9AB5  BA                         UMOD
  $9AB6  29                         STORE_quick   ; inline operand = 9
  $9AB7  09                         LOADL_quick   ; inline operand = 9
  $9AB8  8C D6 74                   LOADR_imm2             $74D6
  $9ABB  BB                         ADD
  $9ABC  D3                         BYTE_DEREF
  $9ABD  B3                         PUSHL
  $9ABE  03                         LOADL_quick   ; inline operand = 3
  $9ABF  72                         ADD_qimm   ; inline operand = 2
  $9AC0  D3                         BYTE_DEREF
  $9AC1  B3                         PUSHL
  $9AC2  89 64                      BYTE_LOADL_imm1        +100
  $9AC4  B4                         POPR
  $9AC5  BC                         SUB
  $9AC6  B4                         POPR
  $9AC7  B5                         MULT
  $9AC8  8B 3C                      BYTE_LOADR_imm1        +60
  $9ACA  B8                         UDIV
  $9ACB  D0                         INC
  $9ACC  CD                         SWAP
  $9ACD  06                         LOADL_quick   ; inline operand = 6
  $9ACE  BB                         ADD
  $9ACF  26                         STORE_quick   ; inline operand = 6
  $9AD0  06                         LOADL_quick   ; inline operand = 6
  $9AD1  A6 DE 74                   LOADR_abs              $74DE
  $9AD4  C7                         UCMPLE
  $9AD5  D8 EE 9A                   JUMPF_abs              $9AEE
  $9AD8  06                         LOADL_quick   ; inline operand = 6
  $9AD9  CD                         SWAP
  $9ADA  A4 DE 74                   LOADL_abs              $74DE
  $9ADD  BC                         SUB
  $9ADE  A8 DE 74                   STORE_abs              $74DE
  $9AE1  3B                         PUSH_quick   ; inline operand = 11
  $9AE2  09                         LOADL_quick   ; inline operand = 9
  $9AE3  D4                         BYTE_POPSTORE
  $9AE4  8E 40 08                   PUSH_imm2              $0840
  $9AE7  39                         PUSH_quick   ; inline operand = 9
  $9AE8  3C                         PUSH_quick   ; inline operand = 12
  $9AE9  E9 09 82 06                CALL_abs_imm1          $8209 {bytecode}, $06
  $9AED  CF                         RETURN
 >$9AEE  40                         LOADL_qimm   ; inline operand = 0
  $9AEF  CF                         RETURN

; ============================================================
; sub $9AF0   (frame_off=-2, body @ $9AF5)   [PRG $19AF0]
; ============================================================
  $9AF5  AC 10 98                   CALL_abs               $9810 {bytecode}
  $9AF8  0C                         LOADL_quick   ; inline operand = 12
  $9AF9  55                         LOADR_qimm   ; inline operand = 5
  $9AFA  B8                         UDIV
  $9AFB  8F 15                      BYTE_ADD_imm1          +21
  $9AFD  57                         LOADR_qimm   ; inline operand = 7
  $9AFE  B5                         MULT
  $9AFF  8C 44 65                   LOADR_imm2             $6544
  $9B02  BB                         ADD
  $9B03  D3                         BYTE_DEREF
  $9B04  55                         LOADR_qimm   ; inline operand = 5
  $9B05  B8                         UDIV
  $9B06  B3                         PUSHL
  $9B07  0C                         LOADL_quick   ; inline operand = 12
  $9B08  57                         LOADR_qimm   ; inline operand = 7
  $9B09  B5                         MULT
  $9B0A  8C 92 6C                   LOADR_imm2             $6C92
  $9B0D  BB                         ADD
  $9B0E  D3                         BYTE_DEREF
  $9B0F  A6 DC 74                   LOADR_abs              $74DC
  $9B12  B5                         MULT
  $9B13  8B 32                      BYTE_LOADR_imm1        +50
  $9B15  B8                         UDIV
  $9B16  B4                         POPR
  $9B17  BB                         ADD
  $9B18  76                         ADD_qimm   ; inline operand = 6
  $9B19  B3                         PUSHL
  $9B1A  8D 14                      BYTE_PUSH_imm1         +20
  $9B1C  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $9B20  A8 DE 74                   STORE_abs              $74DE
 >$9B23  A4 DE 74                   LOADL_abs              $74DE
  $9B26  D7 2F 9B                   JUMPT_abs              $9B2F
 >$9B29  3C                         PUSH_quick   ; inline operand = 12
  $9B2A  E9 D5 97 02                CALL_abs_imm1          $97D5 {bytecode}, $02
  $9B2E  CF                         RETURN
 >$9B2F  A4 C2 74                   LOADL_abs              $74C2
  $9B32  5F                         LOADR_qimm   ; inline operand = 15
  $9B33  B5                         MULT
  $9B34  A6 C0 74                   LOADR_abs              $74C0
  $9B37  BB                         ADD
  $9B38  8C 90 73                   LOADR_imm2             $7390
  $9B3B  BB                         ADD
  $9B3C  D3                         BYTE_DEREF
  $9B3D  D8 29 9B                   JUMPF_abs              $9B29
  $9B40  3C                         PUSH_quick   ; inline operand = 12
  $9B41  E9 62 99 02                CALL_abs_imm1          $9962 {bytecode}, $02
  $9B45  D7 29 9B                   JUMPT_abs              $9B29
  $9B48  AC 00 99                   CALL_abs               $9900 {bytecode}
  $9B4B  D7 29 9B                   JUMPT_abs              $9B29
  $9B4E  3C                         PUSH_quick   ; inline operand = 12
  $9B4F  E9 FA 99 02                CALL_abs_imm1          $99FA {bytecode}, $02
  $9B53  D8 29 9B                   JUMPF_abs              $9B29
  $9B56  AC A7 9C                   CALL_abs               $9CA7 {bytecode}
  $9B59  D8 23 9B                   JUMPF_abs              $9B23
  $9B5C  D6 29 9B                   JUMP_abs               $9B29

; ============================================================
; sub $9B5F   (frame_off=-8, body @ $9B64)   [PRG $19B5F]
; ============================================================
  $9B64  3C                         PUSH_quick   ; inline operand = 12
  $9B65  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $9B69  8F 14                      BYTE_ADD_imm1          +20
  $9B6B  B3                         PUSHL
  $9B6C  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $9B70  55                         LOADR_qimm   ; inline operand = 5
  $9B71  BE                         URSHIFT
  $9B72  57                         LOADR_qimm   ; inline operand = 7
  $9B73  DA                         AND
  $9B74  51                         LOADR_qimm   ; inline operand = 1
  $9B75  DA                         AND
  $9B76  28                         STORE_quick   ; inline operand = 8
  $9B77  8A 90 73                   LOADL_imm2             $7390
  $9B7A  29                         STORE_quick   ; inline operand = 9
  $9B7B  8A 17 74                   LOADL_imm2             $7417
  $9B7E  2B                         STORE_quick   ; inline operand = 11
  $9B7F  90 87 00                   ADD_imm2               $0087
  $9B82  2A                         STORE_quick   ; inline operand = 10
  $9B83  D6 AA 9B                   JUMP_abs               $9BAA
 >$9B86  0B                         LOADL_quick   ; inline operand = 11
  $9B87  D3                         BYTE_DEREF
  $9B88  53                         LOADR_qimm   ; inline operand = 3
  $9B89  C0                         CMPEQ
  $9B8A  D7 9F 9B                   JUMPT_abs              $9B9F
  $9B8D  0B                         LOADL_quick   ; inline operand = 11
  $9B8E  D3                         BYTE_DEREF
  $9B8F  54                         LOADR_qimm   ; inline operand = 4
  $9B90  C0                         CMPEQ
  $9B91  D7 9F 9B                   JUMPT_abs              $9B9F
  $9B94  0B                         LOADL_quick   ; inline operand = 11
  $9B95  D3                         BYTE_DEREF
  $9B96  52                         LOADR_qimm   ; inline operand = 2
  $9B97  C0                         CMPEQ
  $9B98  D8 A4 9B                   JUMPF_abs              $9BA4
  $9B9B  08                         LOADL_quick   ; inline operand = 8
  $9B9C  D8 A4 9B                   JUMPF_abs              $9BA4
 >$9B9F  09                         LOADL_quick   ; inline operand = 9
  $9BA0  B3                         PUSHL
  $9BA1  D3                         BYTE_DEREF
  $9BA2  D0                         INC
  $9BA3  D4                         BYTE_POPSTORE
 >$9BA4  09                         LOADL_quick   ; inline operand = 9
  $9BA5  D0                         INC
  $9BA6  29                         STORE_quick   ; inline operand = 9
  $9BA7  0B                         LOADL_quick   ; inline operand = 11
  $9BA8  D0                         INC
  $9BA9  2B                         STORE_quick   ; inline operand = 11
 >$9BAA  0B                         LOADL_quick   ; inline operand = 11
  $9BAB  1A                         LOADR_quick   ; inline operand = 10
  $9BAC  C6                         UCMPLT
  $9BAD  D7 86 9B                   JUMPT_abs              $9B86
  $9BB0  CF                         RETURN

; ============================================================
; sub $9BB1   (frame_off=-10, body @ $9BB6)   [PRG $19BB1]
; ============================================================
  $9BB6  A4 C0 74                   LOADL_abs              $74C0
  $9BB9  CD                         SWAP
  $9BBA  0C                         LOADL_quick   ; inline operand = 12
  $9BBB  BB                         ADD
  $9BBC  2C                         STORE_quick   ; inline operand = 12
  $9BBD  A4 C2 74                   LOADL_abs              $74C2
  $9BC0  CD                         SWAP
  $9BC1  0D                         LOADL_quick   ; inline operand = 13
  $9BC2  BB                         ADD
  $9BC3  2D                         STORE_quick   ; inline operand = 13
  $9BC4  0C                         LOADL_quick   ; inline operand = 12
  $9BC5  50                         LOADR_qimm   ; inline operand = 0
  $9BC6  C5                         SCMPGE
  $9BC7  D8 DC 9B                   JUMPF_abs              $9BDC
  $9BCA  0C                         LOADL_quick   ; inline operand = 12
  $9BCB  5F                         LOADR_qimm   ; inline operand = 15
  $9BCC  C2                         SCMPLT
  $9BCD  D8 DC 9B                   JUMPF_abs              $9BDC
  $9BD0  0D                         LOADL_quick   ; inline operand = 13
  $9BD1  50                         LOADR_qimm   ; inline operand = 0
  $9BD2  C5                         SCMPGE
  $9BD3  D8 DC 9B                   JUMPF_abs              $9BDC
  $9BD6  0D                         LOADL_quick   ; inline operand = 13
  $9BD7  59                         LOADR_qimm   ; inline operand = 9
  $9BD8  C2                         SCMPLT
  $9BD9  D7 DE 9B                   JUMPT_abs              $9BDE
 >$9BDC  40                         LOADL_qimm   ; inline operand = 0
  $9BDD  CF                         RETURN
 >$9BDE  45                         LOADL_qimm   ; inline operand = 5
  $9BDF  27                         STORE_quick   ; inline operand = 7
  $9BE0  A5 A3 74                   BYTE_LOADL_abs         $74A3
  $9BE3  55                         LOADR_qimm   ; inline operand = 5
  $9BE4  C6                         UCMPLT
  $9BE5  D8 EA 9B                   JUMPF_abs              $9BEA
  $9BE8  40                         LOADL_qimm   ; inline operand = 0
  $9BE9  27                         STORE_quick   ; inline operand = 7
 >$9BEA  0D                         LOADL_quick   ; inline operand = 13
  $9BEB  5F                         LOADR_qimm   ; inline operand = 15
  $9BEC  B5                         MULT
  $9BED  1C                         LOADR_quick   ; inline operand = 12
  $9BEE  BB                         ADD
  $9BEF  28                         STORE_quick   ; inline operand = 8
  $9BF0  8A A3 74                   LOADL_imm2             $74A3
  $9BF3  2A                         STORE_quick   ; inline operand = 10
  $9BF4  A6 AA 74                   LOADR_abs              $74AA
  $9BF7  BB                         ADD
  $9BF8  29                         STORE_quick   ; inline operand = 9
  $9BF9  D6 25 9C                   JUMP_abs               $9C25
 >$9BFC  0A                         LOADL_quick   ; inline operand = 10
  $9BFD  D3                         BYTE_DEREF
  $9BFE  57                         LOADR_qimm   ; inline operand = 7
  $9BFF  B5                         MULT
  $9C00  8C 90 6C                   LOADR_imm2             $6C90
  $9C03  BB                         ADD
  $9C04  2B                         STORE_quick   ; inline operand = 11
  $9C05  0B                         LOADL_quick   ; inline operand = 11
  $9C06  74                         ADD_qimm   ; inline operand = 4
  $9C07  B0                         DEREF
  $9C08  D8 22 9C                   JUMPF_abs              $9C22
  $9C0B  0B                         LOADL_quick   ; inline operand = 11
  $9C0C  D3                         BYTE_DEREF
  $9C0D  D8 22 9C                   JUMPF_abs              $9C22
  $9C10  0A                         LOADL_quick   ; inline operand = 10
  $9C11  D3                         BYTE_DEREF
  $9C12  55                         LOADR_qimm   ; inline operand = 5
  $9C13  BA                         UMOD
  $9C14  17                         LOADR_quick   ; inline operand = 7
  $9C15  BB                         ADD
  $9C16  8C AC 74                   LOADR_imm2             $74AC
  $9C19  BB                         ADD
  $9C1A  D3                         BYTE_DEREF
  $9C1B  18                         LOADR_quick   ; inline operand = 8
  $9C1C  C0                         CMPEQ
  $9C1D  D8 22 9C                   JUMPF_abs              $9C22
  $9C20  41                         LOADL_qimm   ; inline operand = 1
  $9C21  CF                         RETURN
 >$9C22  0A                         LOADL_quick   ; inline operand = 10
  $9C23  D0                         INC
  $9C24  2A                         STORE_quick   ; inline operand = 10
 >$9C25  0A                         LOADL_quick   ; inline operand = 10
  $9C26  19                         LOADR_quick   ; inline operand = 9
  $9C27  C6                         UCMPLT
  $9C28  D7 FC 9B                   JUMPT_abs              $9BFC
  $9C2B  40                         LOADL_qimm   ; inline operand = 0
  $9C2C  CF                         RETURN

; ============================================================
; sub $9C2D   (frame_off=-10, body @ $9C32)   [PRG $19C2D]
; ============================================================
  $9C32  0C                         LOADL_quick   ; inline operand = 12
  $9C33  57                         LOADR_qimm   ; inline operand = 7
  $9C34  B5                         MULT
  $9C35  8C 96 6C                   LOADR_imm2             $6C96
  $9C38  BB                         ADD
  $9C39  D3                         BYTE_DEREF
  $9C3A  54                         LOADR_qimm   ; inline operand = 4
  $9C3B  BE                         URSHIFT
  $9C3C  53                         LOADR_qimm   ; inline operand = 3
  $9C3D  DA                         AND
  $9C3E  27                         STORE_quick   ; inline operand = 7
  $9C3F  07                         LOADL_quick   ; inline operand = 7
  $9C40  D8 A5 9C                   JUMPF_abs              $9CA5
  $9C43  0C                         LOADL_quick   ; inline operand = 12
  $9C44  55                         LOADR_qimm   ; inline operand = 5
  $9C45  BA                         UMOD
  $9C46  B3                         PUSHL
  $9C47  0C                         LOADL_quick   ; inline operand = 12
  $9C48  55                         LOADR_qimm   ; inline operand = 5
  $9C49  C6                         UCMPLT
  $9C4A  D8 51 9C                   JUMPF_abs              $9C51
  $9C4D  40                         LOADL_qimm   ; inline operand = 0
  $9C4E  D6 52 9C                   JUMP_abs               $9C52
 >$9C51  45                         LOADL_qimm   ; inline operand = 5
 >$9C52  B4                         POPR
  $9C53  BB                         ADD
  $9C54  8C B6 74                   LOADR_imm2             $74B6
  $9C57  BB                         ADD
  $9C58  D3                         BYTE_DEREF
  $9C59  53                         LOADR_qimm   ; inline operand = 3
  $9C5A  BA                         UMOD
  $9C5B  29                         STORE_quick   ; inline operand = 9
  $9C5C  AC DC 95                   CALL_abs               $95DC {bytecode}
  $9C5F  28                         STORE_quick   ; inline operand = 8
  $9C60  07                         LOADL_quick   ; inline operand = 7
  $9C61  51                         LOADR_qimm   ; inline operand = 1
  $9C62  DA                         AND
  $9C63  D8 6A 9C                   JUMPF_abs              $9C6A
  $9C66  46                         LOADL_qimm   ; inline operand = 6
  $9C67  D6 6B 9C                   JUMP_abs               $9C6B
 >$9C6A  4E                         LOADL_qimm   ; inline operand = 14
 >$9C6B  27                         STORE_quick   ; inline operand = 7
  $9C6C  09                         LOADL_quick   ; inline operand = 9
  $9C6D  5E                         LOADR_qimm   ; inline operand = 14
  $9C6E  B5                         MULT
  $9C6F  8C B6 9D                   LOADR_imm2             $9DB6
  $9C72  BB                         ADD
  $9C73  2B                         STORE_quick   ; inline operand = 11
  $9C74  17                         LOADR_quick   ; inline operand = 7
  $9C75  BB                         ADD
  $9C76  2A                         STORE_quick   ; inline operand = 10
  $9C77  D6 9F 9C                   JUMP_abs               $9C9F
 >$9C7A  08                         LOADL_quick   ; inline operand = 8
  $9C7B  D2                         LSHIFT1
  $9C7C  B3                         PUSHL
  $9C7D  0B                         LOADL_quick   ; inline operand = 11
  $9C7E  D3                         BYTE_DEREF
  $9C7F  56                         LOADR_qimm   ; inline operand = 6
  $9C80  B5                         MULT
  $9C81  B4                         POPR
  $9C82  BB                         ADD
  $9C83  8C 02 9D                   LOADR_imm2             $9D02
  $9C86  BB                         ADD
  $9C87  B0                         DEREF
  $9C88  B3                         PUSHL
  $9C89  0B                         LOADL_quick   ; inline operand = 11
  $9C8A  D3                         BYTE_DEREF
  $9C8B  56                         LOADR_qimm   ; inline operand = 6
  $9C8C  B5                         MULT
  $9C8D  8C 02 9D                   LOADR_imm2             $9D02
  $9C90  BB                         ADD
  $9C91  B0                         DEREF
  $9C92  B3                         PUSHL
  $9C93  E9 B1 9B 04                CALL_abs_imm1          $9BB1 {bytecode}, $04
  $9C97  D8 9C 9C                   JUMPF_abs              $9C9C
  $9C9A  41                         LOADL_qimm   ; inline operand = 1
  $9C9B  CF                         RETURN
 >$9C9C  0B                         LOADL_quick   ; inline operand = 11
  $9C9D  D0                         INC
  $9C9E  2B                         STORE_quick   ; inline operand = 11
 >$9C9F  0B                         LOADL_quick   ; inline operand = 11
  $9CA0  1A                         LOADR_quick   ; inline operand = 10
  $9CA1  C6                         UCMPLT
  $9CA2  D7 7A 9C                   JUMPT_abs              $9C7A
 >$9CA5  40                         LOADL_qimm   ; inline operand = 0
  $9CA6  CF                         RETURN

; ============================================================
; sub $9CA7   (frame_off=-4, body @ $9CAC)   [PRG $19CA7]
; ============================================================
  $9CAC  AC DC 95                   CALL_abs               $95DC {bytecode}
  $9CAF  2A                         STORE_quick   ; inline operand = 10
  $9CB0  40                         LOADL_qimm   ; inline operand = 0
  $9CB1  2B                         STORE_quick   ; inline operand = 11
 >$9CB2  0A                         LOADL_quick   ; inline operand = 10
  $9CB3  D2                         LSHIFT1
  $9CB4  B3                         PUSHL
  $9CB5  0B                         LOADL_quick   ; inline operand = 11
  $9CB6  56                         LOADR_qimm   ; inline operand = 6
  $9CB7  B5                         MULT
  $9CB8  B4                         POPR
  $9CB9  BB                         ADD
  $9CBA  8C DE 9C                   LOADR_imm2             $9CDE
  $9CBD  BB                         ADD
  $9CBE  B0                         DEREF
  $9CBF  B3                         PUSHL
  $9CC0  0B                         LOADL_quick   ; inline operand = 11
  $9CC1  56                         LOADR_qimm   ; inline operand = 6
  $9CC2  B5                         MULT
  $9CC3  8C DE 9C                   LOADR_imm2             $9CDE
  $9CC6  BB                         ADD
  $9CC7  B0                         DEREF
  $9CC8  B3                         PUSHL
  $9CC9  E9 B1 9B 04                CALL_abs_imm1          $9BB1 {bytecode}, $04
  $9CCD  D8 D2 9C                   JUMPF_abs              $9CD2
  $9CD0  41                         LOADL_qimm   ; inline operand = 1
  $9CD1  CF                         RETURN
 >$9CD2  0B                         LOADL_quick   ; inline operand = 11
  $9CD3  D0                         INC
  $9CD4  2B                         STORE_quick   ; inline operand = 11
  $9CD5  0B                         LOADL_quick   ; inline operand = 11
  $9CD6  56                         LOADR_qimm   ; inline operand = 6
  $9CD7  C6                         UCMPLT
  $9CD8  D7 B2 9C                   JUMPT_abs              $9CB2
  $9CDB  40                         LOADL_qimm   ; inline operand = 0
  $9CDC  CF                         RETURN

