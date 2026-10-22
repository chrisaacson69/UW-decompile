VM bytecode disassembly
  ROM:          Uncharted Waters (USA).nes
  mode:         bulk dump of bank 17
  opcode spec:  vm-opcodes-v2.toml via nobunaga_vm.OPCODE_INFO (execution-validated lengths)
  labels:       0 CPU addresses named

  bank 17: found 39 bytecode-subroutine stubs

; ============================================================
; sub $8003   (frame_off=+0, body @ $8008)   [PRG $22003]
; ============================================================
  $8008  A5 7D 73                   BYTE_LOADL_abs         $737D (ui_shared_var_737d)
  $800B  51                         LOADR_qimm   ; inline operand = 1
  $800C  C0                         CMPEQ
  $800D  D8 14 80                   JUMPF_abs              $8014
  $8010  4B                         LOADL_qimm   ; inline operand = 11
  $8011  D6 15 80                   JUMP_abs               $8015
 >$8014  47                         LOADL_qimm   ; inline operand = 7
 >$8015  CF                         RETURN

; ============================================================
; sub $8016   (frame_off=-2, body @ $801B)   [PRG $22016]
; ============================================================
  $801B  8A 62 66                   LOADL_imm2             $6662
  $801E  2B                         STORE_quick   ; inline operand = 11
  $801F  0B                         LOADL_quick   ; inline operand = 11
  $8020  72                         ADD_qimm   ; inline operand = 2
  $8021  D3                         BYTE_DEREF
  $8022  57                         LOADR_qimm   ; inline operand = 7
  $8023  C6                         UCMPLT
  $8024  D8 2C 80                   JUMPF_abs              $802C
  $8027  89 14                      BYTE_LOADL_imm1        +20
  $8029  D6 2D 80                   JUMP_abs               $802D
 >$802C  42                         LOADL_qimm   ; inline operand = 2
 >$802D  CF                         RETURN

; ============================================================
; sub $802E   (frame_off=-10, body @ $8033)   [PRG $2202E]
; ============================================================
  $8033  0E                         LOADL_quick   ; inline operand = 14
  $8034  52                         LOADR_qimm   ; inline operand = 2
  $8035  B9                         SMOD
  $8036  B3                         PUSHL
  $8037  0E                         LOADL_quick   ; inline operand = 14
  $8038  52                         LOADR_qimm   ; inline operand = 2
  $8039  B6                         SDIV
  $803A  B4                         POPR
  $803B  BB                         ADD
  $803C  2B                         STORE_quick   ; inline operand = 11
  $803D  0B                         LOADL_quick   ; inline operand = 11
  $803E  D2                         LSHIFT1
  $803F  72                         ADD_qimm   ; inline operand = 2
  $8040  29                         STORE_quick   ; inline operand = 9
  $8041  39                         PUSH_quick   ; inline operand = 9
  $8042  8D 1A                      BYTE_PUSH_imm1         +26
  $8044  3D                         PUSH_quick   ; inline operand = 13
  $8045  3C                         PUSH_quick   ; inline operand = 12
  $8046  E9 02 A5 08                CALL_abs_imm1          $A502 {native}, $08
  $804A  39                         PUSH_quick   ; inline operand = 9
  $804B  8D 1A                      BYTE_PUSH_imm1         +26
  $804D  3D                         PUSH_quick   ; inline operand = 13
  $804E  3C                         PUSH_quick   ; inline operand = 12
  $804F  E9 34 B6 08                CALL_abs_imm1          $B634 {native}, $08
  $8053  27                         STORE_quick   ; inline operand = 7
  $8054  60                         PUSH_qimm   ; inline operand = 0
  $8055  60                         PUSH_qimm   ; inline operand = 0
  $8056  39                         PUSH_quick   ; inline operand = 9
  $8057  8D 1A                      BYTE_PUSH_imm1         +26
  $8059  3D                         PUSH_quick   ; inline operand = 13
  $805A  3C                         PUSH_quick   ; inline operand = 12
  $805B  E9 92 A6 0C                CALL_abs_imm1          $A692 {native}, $0C
  $805F  40                         LOADL_qimm   ; inline operand = 0
  $8060  D6 7C 80                   JUMP_abs               $807C
 >$8063  0A                         LOADL_quick   ; inline operand = 10
  $8064  D2                         LSHIFT1
  $8065  1D                         LOADR_quick   ; inline operand = 13
  $8066  BB                         ADD
  $8067  72                         ADD_qimm   ; inline operand = 2
  $8068  B3                         PUSHL
  $8069  0C                         LOADL_quick   ; inline operand = 12
  $806A  72                         ADD_qimm   ; inline operand = 2
  $806B  B3                         PUSHL
  $806C  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8070  0A                         LOADL_quick   ; inline operand = 10
  $8071  D2                         LSHIFT1
  $8072  1F                         LOADR_quick   ; inline operand = 15
  $8073  BB                         ADD
  $8074  B0                         DEREF
  $8075  B3                         PUSHL
  $8076  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $807A  0A                         LOADL_quick   ; inline operand = 10
  $807B  D0                         INC
 >$807C  2A                         STORE_quick   ; inline operand = 10
  $807D  0A                         LOADL_quick   ; inline operand = 10
  $807E  1B                         LOADR_quick   ; inline operand = 11
  $807F  C6                         UCMPLT
  $8080  D7 63 80                   JUMPT_abs              $8063
  $8083  D6 A2 80                   JUMP_abs               $80A2
 >$8086  0A                         LOADL_quick   ; inline operand = 10
  $8087  1B                         LOADR_quick   ; inline operand = 11
  $8088  BC                         SUB
  $8089  D2                         LSHIFT1
  $808A  1D                         LOADR_quick   ; inline operand = 13
  $808B  BB                         ADD
  $808C  72                         ADD_qimm   ; inline operand = 2
  $808D  B3                         PUSHL
  $808E  0C                         LOADL_quick   ; inline operand = 12
  $808F  7E                         ADD_qimm   ; inline operand = 14
  $8090  B3                         PUSHL
  $8091  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8095  0A                         LOADL_quick   ; inline operand = 10
  $8096  D2                         LSHIFT1
  $8097  1F                         LOADR_quick   ; inline operand = 15
  $8098  BB                         ADD
  $8099  B0                         DEREF
  $809A  B3                         PUSHL
  $809B  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $809F  0A                         LOADL_quick   ; inline operand = 10
  $80A0  D0                         INC
  $80A1  2A                         STORE_quick   ; inline operand = 10
 >$80A2  0A                         LOADL_quick   ; inline operand = 10
  $80A3  1E                         LOADR_quick   ; inline operand = 14
  $80A4  C6                         UCMPLT
  $80A5  D7 86 80                   JUMPT_abs              $8086
  $80A8  61                         PUSH_qimm   ; inline operand = 1
  $80A9  3B                         PUSH_quick   ; inline operand = 11
  $80AA  62                         PUSH_qimm   ; inline operand = 2
  $80AB  6C                         PUSH_qimm   ; inline operand = 12
  $80AC  0D                         LOADL_quick   ; inline operand = 13
  $80AD  72                         ADD_qimm   ; inline operand = 2
  $80AE  B3                         PUSHL
  $80AF  0C                         LOADL_quick   ; inline operand = 12
  $80B0  D0                         INC
  $80B1  B3                         PUSHL
  $80B2  3E                         PUSH_quick   ; inline operand = 14
  $80B3  8E 20 97                   PUSH_imm2              $9720
  $80B6  E9 24 C8 10                CALL_abs_imm1          $C824 {native}, $10
  $80BA  28                         STORE_quick   ; inline operand = 8
  $80BB  AC 44 A5                   CALL_abs               $A544 {native}
  $80BE  07                         LOADL_quick   ; inline operand = 7
  $80BF  D8 D2 80                   JUMPF_abs              $80D2
  $80C2  A5 6A 66                   BYTE_LOADL_abs         $666A
  $80C5  B3                         PUSHL
  $80C6  A5 65 66                   BYTE_LOADL_abs         $6665
  $80C9  B3                         PUSHL
  $80CA  A5 64 66                   BYTE_LOADL_abs         $6664
  $80CD  B3                         PUSHL
  $80CE  E9 41 AD 06                CALL_abs_imm1          $AD41 {native}, $06
 >$80D2  08                         LOADL_quick   ; inline operand = 8
  $80D3  8B FF                      BYTE_LOADR_imm1        -1
  $80D5  C0                         CMPEQ
  $80D6  D8 DF 80                   JUMPF_abs              $80DF
  $80D9  8A FF 00                   LOADL_imm2             $00FF
  $80DC  D6 E1 80                   JUMP_abs               $80E1
 >$80DF  08                         LOADL_quick   ; inline operand = 8
  $80E0  D1                         DEC
 >$80E1  CF                         RETURN

; ============================================================
; sub $80E2   (frame_off=-26, body @ $80E7)   [PRG $220E2]
; ============================================================
  $80E7  40                         LOADL_qimm   ; inline operand = 0
  $80E8  20                         STORE_quick   ; inline operand = 0
  $80E9  8A 9A 6A                   LOADL_imm2             $6A9A
  $80EC  D6 10 81                   JUMP_abs               $8110
 >$80EF  0B                         LOADL_quick   ; inline operand = 11
  $80F0  D3                         BYTE_DEREF
  $80F1  8C FF 00                   LOADR_imm2             $00FF
  $80F4  C1                         CMPNE
  $80F5  D8 17 81                   JUMPF_abs              $8117
  $80F8  DE EA FF                   LEAL_far               $FFEA
  $80FB  B3                         PUSHL
  $80FC  00                         LOADL_quick   ; inline operand = 0
  $80FD  D2                         LSHIFT1
  $80FE  B4                         POPR
  $80FF  BB                         ADD
  $8100  B3                         PUSHL
  $8101  0B                         LOADL_quick   ; inline operand = 11
  $8102  D3                         BYTE_DEREF
  $8103  57                         LOADR_qimm   ; inline operand = 7
  $8104  B5                         MULT
  $8105  8C 42 65                   LOADR_imm2             $6542
  $8108  BB                         ADD
  $8109  B0                         DEREF
  $810A  B1                         POPSTORE
  $810B  00                         LOADL_quick   ; inline operand = 0
  $810C  D0                         INC
  $810D  20                         STORE_quick   ; inline operand = 0
  $810E  0B                         LOADL_quick   ; inline operand = 11
  $810F  D0                         INC
 >$8110  2B                         STORE_quick   ; inline operand = 11
  $8111  00                         LOADL_quick   ; inline operand = 0
  $8112  5A                         LOADR_qimm   ; inline operand = 10
  $8113  C6                         UCMPLT
  $8114  D7 EF 80                   JUMPT_abs              $80EF
 >$8117  AC E8 B2                   CALL_abs               $B2E8 {native}
  $811A  00                         LOADL_quick   ; inline operand = 0
  $811B  D7 29 81                   JUMPT_abs              $8129
  $811E  8E 21 97                   PUSH_imm2              $9721
  $8121  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8125  8A FF 00                   LOADL_imm2             $00FF
  $8128  CF                         RETURN
 >$8129  61                         PUSH_qimm   ; inline operand = 1
  $812A  8E 3F 97                   PUSH_imm2              $973F
  $812D  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8131  DE EA FF                   LEAL_far               $FFEA
  $8134  B3                         PUSHL
  $8135  30                         PUSH_quick   ; inline operand = 0
  $8136  AC 03 80                   CALL_abs               $8003 {bytecode}
  $8139  B3                         PUSHL
  $813A  62                         PUSH_qimm   ; inline operand = 2
  $813B  E9 2E 80 08                CALL_abs_imm1          $802E {bytecode}, $08
  $813F  85 E6                      STORE_near             $E6
  $8141  81 E6                      LOADL_near             $E6
  $8143  8C FF 00                   LOADR_imm2             $00FF
  $8146  C0                         CMPEQ
  $8147  D8 4D 81                   JUMPF_abs              $814D
  $814A  81 E6                      LOADL_near             $E6
  $814C  CF                         RETURN
 >$814D  81 E6                      LOADL_near             $E6
  $814F  8C 9A 6A                   LOADR_imm2             $6A9A
  $8152  BB                         ADD
  $8153  D3                         BYTE_DEREF
  $8154  CF                         RETURN

; ============================================================
; sub $8155   (frame_off=-6, body @ $815A)   [PRG $22155]
; ============================================================
  $815A  0E                         LOADL_quick   ; inline operand = 14
  $815B  D2                         LSHIFT1
  $815C  72                         ADD_qimm   ; inline operand = 2
  $815D  2A                         STORE_quick   ; inline operand = 10
  $815E  3A                         PUSH_quick   ; inline operand = 10
  $815F  6A                         PUSH_qimm   ; inline operand = 10
  $8160  3D                         PUSH_quick   ; inline operand = 13
  $8161  3C                         PUSH_quick   ; inline operand = 12
  $8162  E9 02 A5 08                CALL_abs_imm1          $A502 {native}, $08
  $8166  60                         PUSH_qimm   ; inline operand = 0
  $8167  60                         PUSH_qimm   ; inline operand = 0
  $8168  3A                         PUSH_quick   ; inline operand = 10
  $8169  6A                         PUSH_qimm   ; inline operand = 10
  $816A  3D                         PUSH_quick   ; inline operand = 13
  $816B  3C                         PUSH_quick   ; inline operand = 12
  $816C  E9 92 A6 0C                CALL_abs_imm1          $A692 {native}, $0C
  $8170  40                         LOADL_qimm   ; inline operand = 0
  $8171  D6 8D 81                   JUMP_abs               $818D
 >$8174  0B                         LOADL_quick   ; inline operand = 11
  $8175  D2                         LSHIFT1
  $8176  1D                         LOADR_quick   ; inline operand = 13
  $8177  BB                         ADD
  $8178  72                         ADD_qimm   ; inline operand = 2
  $8179  B3                         PUSHL
  $817A  0C                         LOADL_quick   ; inline operand = 12
  $817B  72                         ADD_qimm   ; inline operand = 2
  $817C  B3                         PUSHL
  $817D  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8181  0B                         LOADL_quick   ; inline operand = 11
  $8182  D2                         LSHIFT1
  $8183  1F                         LOADR_quick   ; inline operand = 15
  $8184  BB                         ADD
  $8185  B0                         DEREF
  $8186  B3                         PUSHL
  $8187  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $818B  0B                         LOADL_quick   ; inline operand = 11
  $818C  D0                         INC
 >$818D  2B                         STORE_quick   ; inline operand = 11
  $818E  0B                         LOADL_quick   ; inline operand = 11
  $818F  1E                         LOADR_quick   ; inline operand = 14
  $8190  C6                         UCMPLT
  $8191  D7 74 81                   JUMPT_abs              $8174
  $8194  61                         PUSH_qimm   ; inline operand = 1
  $8195  3E                         PUSH_quick   ; inline operand = 14
  $8196  62                         PUSH_qimm   ; inline operand = 2
  $8197  60                         PUSH_qimm   ; inline operand = 0
  $8198  0D                         LOADL_quick   ; inline operand = 13
  $8199  72                         ADD_qimm   ; inline operand = 2
  $819A  B3                         PUSHL
  $819B  0C                         LOADL_quick   ; inline operand = 12
  $819C  D0                         INC
  $819D  B3                         PUSHL
  $819E  3E                         PUSH_quick   ; inline operand = 14
  $819F  8E 4B 97                   PUSH_imm2              $974B
  $81A2  E9 24 C8 10                CALL_abs_imm1          $C824 {native}, $10
  $81A6  29                         STORE_quick   ; inline operand = 9
  $81A7  AC 44 A5                   CALL_abs               $A544 {native}
  $81AA  09                         LOADL_quick   ; inline operand = 9
  $81AB  8B FF                      BYTE_LOADR_imm1        -1
  $81AD  C0                         CMPEQ
  $81AE  D8 B7 81                   JUMPF_abs              $81B7
  $81B1  8A FF 00                   LOADL_imm2             $00FF
  $81B4  D6 B9 81                   JUMP_abs               $81B9
 >$81B7  09                         LOADL_quick   ; inline operand = 9
  $81B8  D1                         DEC
 >$81B9  CF                         RETURN

; ============================================================
; sub $81BA   (frame_off=+0, body @ $81BF)   [PRG $221BA]
; ============================================================
  $81BF  A5 7D 73                   BYTE_LOADL_abs         $737D (ui_shared_var_737d)
  $81C2  51                         LOADR_qimm   ; inline operand = 1
  $81C3  C0                         CMPEQ
  $81C4  D8 CB 81                   JUMPF_abs              $81CB
  $81C7  43                         LOADL_qimm   ; inline operand = 3
  $81C8  D6 CC 81                   JUMP_abs               $81CC
 >$81CB  47                         LOADL_qimm   ; inline operand = 7
 >$81CC  CF                         RETURN

; ============================================================
; sub $81CD   (frame_off=-6, body @ $81D2)   [PRG $221CD]
; ============================================================
  $81D2  AC BA 81                   CALL_abs               $81BA {bytecode}
  $81D5  29                         STORE_quick   ; inline operand = 9
 >$81D6  61                         PUSH_qimm   ; inline operand = 1
  $81D7  62                         PUSH_qimm   ; inline operand = 2
  $81D8  8E 4C 97                   PUSH_imm2              $974C
  $81DB  60                         PUSH_qimm   ; inline operand = 0
  $81DC  6A                         PUSH_qimm   ; inline operand = 10
  $81DD  E9 EB A0 0A                CALL_abs_imm1          $A0EB {native}, $0A
  $81E1  2B                         STORE_quick   ; inline operand = 11
  $81E2  0B                         LOADL_quick   ; inline operand = 11
  $81E3  8C FF 00                   LOADR_imm2             $00FF
  $81E6  C1                         CMPNE
  $81E7  D8 33 82                   JUMPF_abs              $8233
  $81EA  0B                         LOADL_quick   ; inline operand = 11
  $81EB  51                         LOADR_qimm   ; inline operand = 1
  $81EC  C0                         CMPEQ
  $81ED  D8 1F 82                   JUMPF_abs              $821F
 >$81F0  AC E2 80                   CALL_abs               $80E2 (fleet_select_mate) {bytecode}
  $81F3  2A                         STORE_quick   ; inline operand = 10
  $81F4  0A                         LOADL_quick   ; inline operand = 10
  $81F5  8C FF 00                   LOADR_imm2             $00FF
  $81F8  C1                         CMPNE
  $81F9  D8 10 82                   JUMPF_abs              $8210
  $81FC  3A                         PUSH_quick   ; inline operand = 10
  $81FD  39                         PUSH_quick   ; inline operand = 9
  $81FE  61                         PUSH_qimm   ; inline operand = 1
  $81FF  8E 4A 84                   PUSH_imm2              $844A
  $8202  8E DE 00                   PUSH_imm2              $00DE
  $8205  61                         PUSH_qimm   ; inline operand = 1
  $8206  E9 3A DE 0C                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $0C
  $820A  AC 89 A5                   CALL_abs               $A589 {native}
  $820D  AC 98 B5                   CALL_abs               $B598 {native}
 >$8210  0A                         LOADL_quick   ; inline operand = 10
  $8211  8C FF 00                   LOADR_imm2             $00FF
  $8214  C1                         CMPNE
  $8215  D7 F0 81                   JUMPT_abs              $81F0
  $8218  40                         LOADL_qimm   ; inline operand = 0
  $8219  A9 80 73                   BYTE_STORE_abs         $7380
  $821C  D6 33 82                   JUMP_abs               $8233
 >$821F  3B                         PUSH_quick   ; inline operand = 11
  $8220  39                         PUSH_quick   ; inline operand = 9
  $8221  61                         PUSH_qimm   ; inline operand = 1
  $8222  8E 4A 84                   PUSH_imm2              $844A
  $8225  8E DE 00                   PUSH_imm2              $00DE
  $8228  61                         PUSH_qimm   ; inline operand = 1
  $8229  E9 3A DE 0C                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $0C
  $822D  AC 89 A5                   CALL_abs               $A589 {native}
  $8230  AC 98 B5                   CALL_abs               $B598 {native}
 >$8233  0B                         LOADL_quick   ; inline operand = 11
  $8234  8C FF 00                   LOADR_imm2             $00FF
  $8237  C1                         CMPNE
  $8238  D7 D6 81                   JUMPT_abs              $81D6
  $823B  40                         LOADL_qimm   ; inline operand = 0
  $823C  CF                         RETURN

; ============================================================
; sub $823D   (frame_off=-27, body @ $8242)   [PRG $2223D]
; ============================================================
  $8242  DE ED FF                   LEAL_far               $FFED
  $8245  B3                         PUSHL
  $8246  60                         PUSH_qimm   ; inline operand = 0
  $8247  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $824B  85 E5                      STORE_near             $E5
  $824D  DE F4 FF                   LEAL_far               $FFF4
  $8250  25                         STORE_quick   ; inline operand = 5
  $8251  DE ED FF                   LEAL_far               $FFED
  $8254  85 EB                      STORE_near             $EB
  $8256  83 E5                      LOADR_near             $E5
  $8258  BB                         ADD
  $8259  85 E9                      STORE_near             $E9
  $825B  D6 82 82                   JUMP_abs               $8282
 >$825E  81 EB                      LOADL_near             $EB
  $8260  D3                         BYTE_DEREF
  $8261  57                         LOADR_qimm   ; inline operand = 7
  $8262  B5                         MULT
  $8263  8C 90 6C                   LOADR_imm2             $6C90
  $8266  BB                         ADD
  $8267  2B                         STORE_quick   ; inline operand = 11
  $8268  87 EB                      PUSH_near              $EB
  $826A  0B                         LOADL_quick   ; inline operand = 11
  $826B  76                         ADD_qimm   ; inline operand = 6
  $826C  D3                         BYTE_DEREF
  $826D  5F                         LOADR_qimm   ; inline operand = 15
  $826E  DA                         AND
  $826F  D4                         BYTE_POPSTORE
  $8270  35                         PUSH_quick   ; inline operand = 5
  $8271  81 EB                      LOADL_near             $EB
  $8273  D3                         BYTE_DEREF
  $8274  B3                         PUSHL
  $8275  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8279  B1                         POPSTORE
  $827A  05                         LOADL_quick   ; inline operand = 5
  $827B  72                         ADD_qimm   ; inline operand = 2
  $827C  25                         STORE_quick   ; inline operand = 5
  $827D  81 EB                      LOADL_near             $EB
  $827F  D0                         INC
  $8280  85 EB                      STORE_near             $EB
 >$8282  81 EB                      LOADL_near             $EB
  $8284  83 E9                      LOADR_near             $E9
  $8286  C6                         UCMPLT
  $8287  D7 5E 82                   JUMPT_abs              $825E
  $828A  61                         PUSH_qimm   ; inline operand = 1
  $828B  8E 5E 97                   PUSH_imm2              $975E
  $828E  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8292  DE F4 FF                   LEAL_far               $FFF4
  $8295  B3                         PUSHL
  $8296  87 E5                      PUSH_near              $E5
  $8298  AC 03 80                   CALL_abs               $8003 {bytecode}
  $829B  B3                         PUSHL
  $829C  AC 16 80                   CALL_abs               $8016 {bytecode}
  $829F  B3                         PUSHL
  $82A0  E9 55 81 08                CALL_abs_imm1          $8155 {bytecode}, $08
  $82A4  85 E7                      STORE_near             $E7
  $82A6  81 E7                      LOADL_near             $E7
  $82A8  8C FF 00                   LOADR_imm2             $00FF
  $82AB  C1                         CMPNE
  $82AC  D8 BB 82                   JUMPF_abs              $82BB
  $82AF  DE ED FF                   LEAL_far               $FFED
  $82B2  B3                         PUSHL
  $82B3  81 E7                      LOADL_near             $E7
  $82B5  B4                         POPR
  $82B6  BB                         ADD
  $82B7  D3                         BYTE_DEREF
  $82B8  D6 BE 82                   JUMP_abs               $82BE
 >$82BB  8A FF 00                   LOADL_imm2             $00FF
 >$82BE  CF                         RETURN

; ============================================================
; sub $82BF   (frame_off=-6, body @ $82C4)   [PRG $222BF]
; ============================================================
  $82C4  AC BA 81                   CALL_abs               $81BA {bytecode}
  $82C7  2A                         STORE_quick   ; inline operand = 10
 >$82C8  AC E8 B2                   CALL_abs               $B2E8 {native}
  $82CB  AC 3D 82                   CALL_abs               $823D (fleet_select_ship) {bytecode}
  $82CE  29                         STORE_quick   ; inline operand = 9
  $82CF  8C FF 00                   LOADR_imm2             $00FF
  $82D2  C1                         CMPNE
  $82D3  D8 E7 82                   JUMPF_abs              $82E7
  $82D6  39                         PUSH_quick   ; inline operand = 9
  $82D7  3A                         PUSH_quick   ; inline operand = 10
  $82D8  61                         PUSH_qimm   ; inline operand = 1
  $82D9  8E B3 81                   PUSH_imm2              $81B3
  $82DC  8E DE 00                   PUSH_imm2              $00DE
  $82DF  61                         PUSH_qimm   ; inline operand = 1
  $82E0  E9 3A DE 0C                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $0C
  $82E4  AC 98 B5                   CALL_abs               $B598 {native}
 >$82E7  09                         LOADL_quick   ; inline operand = 9
  $82E8  8C FF 00                   LOADR_imm2             $00FF
  $82EB  C1                         CMPNE
  $82EC  D7 C8 82                   JUMPT_abs              $82C8
  $82EF  40                         LOADL_qimm   ; inline operand = 0
  $82F0  A9 80 73                   BYTE_STORE_abs         $7380
  $82F3  40                         LOADL_qimm   ; inline operand = 0
  $82F4  CF                         RETURN

; ============================================================
; sub $82F5   (frame_off=-12, body @ $82FA)   [PRG $222F5]
; ============================================================
  $82FA  0E                         LOADL_quick   ; inline operand = 14
  $82FB  57                         LOADR_qimm   ; inline operand = 7
  $82FC  B5                         MULT
  $82FD  8C 96 6C                   LOADR_imm2             $6C96
  $8300  BB                         ADD
  $8301  D3                         BYTE_DEREF
  $8302  5F                         LOADR_qimm   ; inline operand = 15
  $8303  DA                         AND
  $8304  8B 18                      BYTE_LOADR_imm1        +24
  $8306  B5                         MULT
  $8307  8C A4 6A                   LOADR_imm2             $6AA4
  $830A  BB                         ADD
  $830B  26                         STORE_quick   ; inline operand = 6
  $830C  40                         LOADL_qimm   ; inline operand = 0
  $830D  2B                         STORE_quick   ; inline operand = 11
  $830E  06                         LOADL_quick   ; inline operand = 6
  $830F  76                         ADD_qimm   ; inline operand = 6
  $8310  28                         STORE_quick   ; inline operand = 8
  $8311  7A                         ADD_qimm   ; inline operand = 10
  $8312  27                         STORE_quick   ; inline operand = 7
  $8313  D6 21 83                   JUMP_abs               $8321
 >$8316  08                         LOADL_quick   ; inline operand = 8
  $8317  B0                         DEREF
  $8318  D8 1E 83                   JUMPF_abs              $831E
  $831B  0B                         LOADL_quick   ; inline operand = 11
  $831C  D0                         INC
  $831D  2B                         STORE_quick   ; inline operand = 11
 >$831E  08                         LOADL_quick   ; inline operand = 8
  $831F  72                         ADD_qimm   ; inline operand = 2
  $8320  28                         STORE_quick   ; inline operand = 8
 >$8321  08                         LOADL_quick   ; inline operand = 8
  $8322  17                         LOADR_quick   ; inline operand = 7
  $8323  C6                         UCMPLT
  $8324  D7 16 83                   JUMPT_abs              $8316
  $8327  0B                         LOADL_quick   ; inline operand = 11
  $8328  D7 38 83                   JUMPT_abs              $8338
  $832B  AC 23 B2                   CALL_abs               $B223 {native}
  $832E  8E 6A 97                   PUSH_imm2              $976A
  $8331  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8335  D6 BD 83                   JUMP_abs               $83BD
 >$8338  0B                         LOADL_quick   ; inline operand = 11
  $8339  D2                         LSHIFT1
  $833A  72                         ADD_qimm   ; inline operand = 2
  $833B  2A                         STORE_quick   ; inline operand = 10
  $833C  3A                         PUSH_quick   ; inline operand = 10
  $833D  6F                         PUSH_qimm   ; inline operand = 15
  $833E  3D                         PUSH_quick   ; inline operand = 13
  $833F  3C                         PUSH_quick   ; inline operand = 12
  $8340  E9 02 A5 08                CALL_abs_imm1          $A502 {native}, $08
  $8344  60                         PUSH_qimm   ; inline operand = 0
  $8345  62                         PUSH_qimm   ; inline operand = 2
  $8346  3A                         PUSH_quick   ; inline operand = 10
  $8347  6F                         PUSH_qimm   ; inline operand = 15
  $8348  3D                         PUSH_quick   ; inline operand = 13
  $8349  3C                         PUSH_quick   ; inline operand = 12
  $834A  E9 92 A6 0C                CALL_abs_imm1          $A692 {native}, $0C
  $834E  0D                         LOADL_quick   ; inline operand = 13
  $834F  D0                         INC
  $8350  29                         STORE_quick   ; inline operand = 9
  $8351  40                         LOADL_qimm   ; inline operand = 0
  $8352  2B                         STORE_quick   ; inline operand = 11
  $8353  06                         LOADL_quick   ; inline operand = 6
  $8354  76                         ADD_qimm   ; inline operand = 6
  $8355  D6 9B 83                   JUMP_abs               $839B
 >$8358  08                         LOADL_quick   ; inline operand = 8
  $8359  B0                         DEREF
  $835A  D8 96 83                   JUMPF_abs              $8396
  $835D  09                         LOADL_quick   ; inline operand = 9
  $835E  D0                         INC
  $835F  B3                         PUSHL
  $8360  0C                         LOADL_quick   ; inline operand = 12
  $8361  D0                         INC
  $8362  B3                         PUSHL
  $8363  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8367  06                         LOADL_quick   ; inline operand = 6
  $8368  1B                         LOADR_quick   ; inline operand = 11
  $8369  BB                         ADD
  $836A  D0                         INC
  $836B  D3                         BYTE_DEREF
  $836C  D2                         LSHIFT1
  $836D  8C 49 BB                   LOADR_imm2             $BB49
  $8370  BB                         ADD
  $8371  B3                         PUSHL
  $8372  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8376  B3                         PUSHL
  $8377  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $837B  39                         PUSH_quick   ; inline operand = 9
  $837C  0C                         LOADL_quick   ; inline operand = 12
  $837D  7A                         ADD_qimm   ; inline operand = 10
  $837E  B3                         PUSHL
  $837F  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8383  0B                         LOADL_quick   ; inline operand = 11
  $8384  D2                         LSHIFT1
  $8385  16                         LOADR_quick   ; inline operand = 6
  $8386  BB                         ADD
  $8387  76                         ADD_qimm   ; inline operand = 6
  $8388  B0                         DEREF
  $8389  B3                         PUSHL
  $838A  8E 80 97                   PUSH_imm2              $9780
  $838D  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8391  42                         LOADL_qimm   ; inline operand = 2
  $8392  CD                         SWAP
  $8393  09                         LOADL_quick   ; inline operand = 9
  $8394  BB                         ADD
  $8395  29                         STORE_quick   ; inline operand = 9
 >$8396  0B                         LOADL_quick   ; inline operand = 11
  $8397  D0                         INC
  $8398  2B                         STORE_quick   ; inline operand = 11
  $8399  08                         LOADL_quick   ; inline operand = 8
  $839A  72                         ADD_qimm   ; inline operand = 2
 >$839B  28                         STORE_quick   ; inline operand = 8
  $839C  08                         LOADL_quick   ; inline operand = 8
  $839D  17                         LOADR_quick   ; inline operand = 7
  $839E  C6                         UCMPLT
  $839F  D7 58 83                   JUMPT_abs              $8358
  $83A2  AC 23 B2                   CALL_abs               $B223 {native}
  $83A5  60                         PUSH_qimm   ; inline operand = 0
  $83A6  8E 84 97                   PUSH_imm2              $9784
  $83A9  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $83AD  3E                         PUSH_quick   ; inline operand = 14
  $83AE  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $83B2  B3                         PUSHL
  $83B3  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $83B7  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $83BA  AC 44 A5                   CALL_abs               $A544 {native}
 >$83BD  CF                         RETURN

; ============================================================
; sub $83BE   (frame_off=-2, body @ $83C3)   [PRG $223BE]
; ============================================================
  $83C3  8A 62 66                   LOADL_imm2             $6662
  $83C6  2B                         STORE_quick   ; inline operand = 11
  $83C7  0B                         LOADL_quick   ; inline operand = 11
  $83C8  72                         ADD_qimm   ; inline operand = 2
  $83C9  D3                         BYTE_DEREF
  $83CA  57                         LOADR_qimm   ; inline operand = 7
  $83CB  C6                         UCMPLT
  $83CC  D8 D4 83                   JUMPF_abs              $83D4
  $83CF  89 10                      BYTE_LOADL_imm1        +16
  $83D1  D6 D5 83                   JUMP_abs               $83D5
 >$83D4  41                         LOADL_qimm   ; inline operand = 1
 >$83D5  CF                         RETURN

; ============================================================
; sub $83D6   (frame_off=-2, body @ $83DB)   [PRG $223D6]
; ============================================================
  $83DB  AC E8 B2                   CALL_abs               $B2E8 {native}
 >$83DE  AC 3D 82                   CALL_abs               $823D (fleet_select_ship) {bytecode}
  $83E1  2B                         STORE_quick   ; inline operand = 11
  $83E2  8C FF 00                   LOADR_imm2             $00FF
  $83E5  C1                         CMPNE
  $83E6  D8 F9 83                   JUMPF_abs              $83F9
  $83E9  3B                         PUSH_quick   ; inline operand = 11
  $83EA  AC 03 80                   CALL_abs               $8003 {bytecode}
  $83ED  B3                         PUSHL
  $83EE  AC BE 83                   CALL_abs               $83BE {bytecode}
  $83F1  B3                         PUSHL
  $83F2  E9 F5 82 06                CALL_abs_imm1          $82F5 (fleet_view_cargo) {bytecode}, $06
  $83F6  AC 23 B2                   CALL_abs               $B223 {native}
 >$83F9  0B                         LOADL_quick   ; inline operand = 11
  $83FA  8C FF 00                   LOADR_imm2             $00FF
  $83FD  C1                         CMPNE
  $83FE  D7 DE 83                   JUMPT_abs              $83DE
  $8401  40                         LOADL_qimm   ; inline operand = 0
  $8402  CF                         RETURN

; ============================================================
; sub $8403   (frame_off=-8, body @ $8408)   [PRG $22403]
; ============================================================
  $8408  8A 6D 66                   LOADL_imm2             $666D
  $840B  29                         STORE_quick   ; inline operand = 9
  $840C  40                         LOADL_qimm   ; inline operand = 0
  $840D  2B                         STORE_quick   ; inline operand = 11
  $840E  2A                         STORE_quick   ; inline operand = 10
  $840F  D6 32 84                   JUMP_abs               $8432
 >$8412  0B                         LOADL_quick   ; inline operand = 11
  $8413  5F                         LOADR_qimm   ; inline operand = 15
  $8414  DA                         AND
  $8415  B3                         PUSHL
  $8416  41                         LOADL_qimm   ; inline operand = 1
  $8417  B4                         POPR
  $8418  BD                         LSHIFT
  $8419  B3                         PUSHL
  $841A  0B                         LOADL_quick   ; inline operand = 11
  $841B  54                         LOADR_qimm   ; inline operand = 4
  $841C  BE                         URSHIFT
  $841D  D2                         LSHIFT1
  $841E  19                         LOADR_quick   ; inline operand = 9
  $841F  BB                         ADD
  $8420  B0                         DEREF
  $8421  B4                         POPR
  $8422  DA                         AND
  $8423  D8 2F 84                   JUMPF_abs              $842F
  $8426  3C                         PUSH_quick   ; inline operand = 12
  $8427  0B                         LOADL_quick   ; inline operand = 11
  $8428  D4                         BYTE_POPSTORE
  $8429  0C                         LOADL_quick   ; inline operand = 12
  $842A  D0                         INC
  $842B  2C                         STORE_quick   ; inline operand = 12
  $842C  0A                         LOADL_quick   ; inline operand = 10
  $842D  D0                         INC
  $842E  2A                         STORE_quick   ; inline operand = 10
 >$842F  0B                         LOADL_quick   ; inline operand = 11
  $8430  D0                         INC
  $8431  2B                         STORE_quick   ; inline operand = 11
 >$8432  0B                         LOADL_quick   ; inline operand = 11
  $8433  8B 20                      BYTE_LOADR_imm1        +32
  $8435  C6                         UCMPLT
  $8436  D7 12 84                   JUMPT_abs              $8412
  $8439  0A                         LOADL_quick   ; inline operand = 10
  $843A  CF                         RETURN

; ============================================================
; sub $843B   (frame_off=+0, body @ $8440)   [PRG $2243B]
; ============================================================
  $8440  A5 7D 73                   BYTE_LOADL_abs         $737D (ui_shared_var_737d)
  $8443  51                         LOADR_qimm   ; inline operand = 1
  $8444  C0                         CMPEQ
  $8445  D8 4C 84                   JUMPF_abs              $844C
  $8448  4B                         LOADL_qimm   ; inline operand = 11
  $8449  D6 4D 84                   JUMP_abs               $844D
 >$844C  41                         LOADL_qimm   ; inline operand = 1
 >$844D  CF                         RETURN

; ============================================================
; sub $844E   (frame_off=+0, body @ $8453)   [PRG $2244E]
; ============================================================
  $8453  A5 64 66                   BYTE_LOADL_abs         $6664
  $8456  57                         LOADR_qimm   ; inline operand = 7
  $8457  C6                         UCMPLT
  $8458  D8 5D 84                   JUMPF_abs              $845D
  $845B  4E                         LOADL_qimm   ; inline operand = 14
  $845C  CF                         RETURN
 >$845D  42                         LOADL_qimm   ; inline operand = 2
  $845E  CF                         RETURN

; ============================================================
; sub $845F   (frame_off=-52, body @ $8464)   [PRG $2245F]
; ============================================================
  $8464  AC E8 B2                   CALL_abs               $B2E8 {native}
  $8467  DE CC FF                   LEAL_far               $FFCC
  $846A  B3                         PUSHL
  $846B  E9 03 84 02                CALL_abs_imm1          $8403 {bytecode}, $02
  $846F  27                         STORE_quick   ; inline operand = 7
  $8470  D7 7C 84                   JUMPT_abs              $847C
  $8473  8E A1 97                   PUSH_imm2              $97A1
  $8476  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $847A  40                         LOADL_qimm   ; inline operand = 0
  $847B  CF                         RETURN
 >$847C  07                         LOADL_quick   ; inline operand = 7
  $847D  D1                         DEC
  $847E  53                         LOADR_qimm   ; inline operand = 3
  $847F  BE                         URSHIFT
  $8480  28                         STORE_quick   ; inline operand = 8
  $8481  61                         PUSH_qimm   ; inline operand = 1
  $8482  8E B9 97                   PUSH_imm2              $97B9
  $8485  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8489  08                         LOADL_quick   ; inline operand = 8
  $848A  D8 95 84                   JUMPF_abs              $8495
  $848D  61                         PUSH_qimm   ; inline operand = 1
  $848E  8E CF 97                   PUSH_imm2              $97CF
  $8491  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
 >$8495  61                         PUSH_qimm   ; inline operand = 1
  $8496  8E D7 97                   PUSH_imm2              $97D7
  $8499  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $849D  AC 4E 84                   CALL_abs               $844E {bytecode}
  $84A0  25                         STORE_quick   ; inline operand = 5
  $84A1  AC 3B 84                   CALL_abs               $843B {bytecode}
  $84A4  24                         STORE_quick   ; inline operand = 4
  $84A5  08                         LOADL_quick   ; inline operand = 8
  $84A6  D8 AE 84                   JUMPF_abs              $84AE
  $84A9  89 12                      BYTE_LOADL_imm1        +18
  $84AB  D6 B3 84                   JUMP_abs               $84B3
 >$84AE  07                         LOADL_quick   ; inline operand = 7
  $84AF  59                         LOADR_qimm   ; inline operand = 9
  $84B0  BA                         UMOD
  $84B1  D2                         LSHIFT1
  $84B2  72                         ADD_qimm   ; inline operand = 2
 >$84B3  26                         STORE_quick   ; inline operand = 6
  $84B4  36                         PUSH_quick   ; inline operand = 6
  $84B5  8D 10                      BYTE_PUSH_imm1         +16
  $84B7  34                         PUSH_quick   ; inline operand = 4
  $84B8  35                         PUSH_quick   ; inline operand = 5
  $84B9  E9 02 A5 08                CALL_abs_imm1          $A502 {native}, $08
  $84BD  36                         PUSH_quick   ; inline operand = 6
  $84BE  8D 10                      BYTE_PUSH_imm1         +16
  $84C0  34                         PUSH_quick   ; inline operand = 4
  $84C1  35                         PUSH_quick   ; inline operand = 5
  $84C2  E9 34 B6 08                CALL_abs_imm1          $B634 {native}, $08
  $84C6  23                         STORE_quick   ; inline operand = 3
  $84C7  60                         PUSH_qimm   ; inline operand = 0
  $84C8  62                         PUSH_qimm   ; inline operand = 2
  $84C9  36                         PUSH_quick   ; inline operand = 6
  $84CA  8D 10                      BYTE_PUSH_imm1         +16
  $84CC  34                         PUSH_quick   ; inline operand = 4
  $84CD  35                         PUSH_quick   ; inline operand = 5
  $84CE  E9 92 A6 0C                CALL_abs_imm1          $A692 {native}, $0C
  $84D2  05                         LOADL_quick   ; inline operand = 5
  $84D3  D0                         INC
  $84D4  25                         STORE_quick   ; inline operand = 5
  $84D5  04                         LOADL_quick   ; inline operand = 4
  $84D6  D0                         INC
  $84D7  24                         STORE_quick   ; inline operand = 4
  $84D8  42                         LOADL_qimm   ; inline operand = 2
  $84D9  CD                         SWAP
  $84DA  06                         LOADL_quick   ; inline operand = 6
  $84DB  BC                         SUB
  $84DC  26                         STORE_quick   ; inline operand = 6
  $84DD  40                         LOADL_qimm   ; inline operand = 0
  $84DE  29                         STORE_quick   ; inline operand = 9
  $84DF  40                         LOADL_qimm   ; inline operand = 0
  $84E0  22                         STORE_quick   ; inline operand = 2
 >$84E1  40                         LOADL_qimm   ; inline operand = 0
  $84E2  2B                         STORE_quick   ; inline operand = 11
 >$84E3  09                         LOADL_quick   ; inline operand = 9
  $84E4  53                         LOADR_qimm   ; inline operand = 3
  $84E5  BD                         LSHIFT
  $84E6  1B                         LOADR_quick   ; inline operand = 11
  $84E7  BB                         ADD
  $84E8  2A                         STORE_quick   ; inline operand = 10
  $84E9  0A                         LOADL_quick   ; inline operand = 10
  $84EA  17                         LOADR_quick   ; inline operand = 7
  $84EB  C6                         UCMPLT
  $84EC  D8 14 85                   JUMPF_abs              $8514
  $84EF  0B                         LOADL_quick   ; inline operand = 11
  $84F0  D2                         LSHIFT1
  $84F1  14                         LOADR_quick   ; inline operand = 4
  $84F2  BB                         ADD
  $84F3  B3                         PUSHL
  $84F4  35                         PUSH_quick   ; inline operand = 5
  $84F5  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $84F9  DE CC FF                   LEAL_far               $FFCC
  $84FC  B3                         PUSHL
  $84FD  0A                         LOADL_quick   ; inline operand = 10
  $84FE  B4                         POPR
  $84FF  BB                         ADD
  $8500  D3                         BYTE_DEREF
  $8501  B3                         PUSHL
  $8502  E9 50 D5 02                CALL_abs_imm1          $D550 {native}, $02
  $8506  B3                         PUSHL
  $8507  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $850B  0B                         LOADL_quick   ; inline operand = 11
  $850C  D0                         INC
  $850D  2B                         STORE_quick   ; inline operand = 11
  $850E  0B                         LOADL_quick   ; inline operand = 11
  $850F  58                         LOADR_qimm   ; inline operand = 8
  $8510  C6                         UCMPLT
  $8511  D7 E3 84                   JUMPT_abs              $84E3
 >$8514  60                         PUSH_qimm   ; inline operand = 0
  $8515  E9 A9 C4 02                CALL_abs_imm1          $C4A9 {native}, $02
  $8519  22                         STORE_quick   ; inline operand = 2
  $851A  08                         LOADL_quick   ; inline operand = 8
  $851B  D8 3D 85                   JUMPF_abs              $853D
  $851E  02                         LOADL_quick   ; inline operand = 2
  $851F  51                         LOADR_qimm   ; inline operand = 1
  $8520  C0                         CMPEQ
  $8521  D8 3D 85                   JUMPF_abs              $853D
  $8524  60                         PUSH_qimm   ; inline operand = 0
  $8525  60                         PUSH_qimm   ; inline operand = 0
  $8526  36                         PUSH_quick   ; inline operand = 6
  $8527  6E                         PUSH_qimm   ; inline operand = 14
  $8528  34                         PUSH_quick   ; inline operand = 4
  $8529  35                         PUSH_quick   ; inline operand = 5
  $852A  68                         PUSH_qimm   ; inline operand = 8
  $852B  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $852F  09                         LOADL_quick   ; inline operand = 9
  $8530  D0                         INC
  $8531  29                         STORE_quick   ; inline operand = 9
  $8532  09                         LOADL_quick   ; inline operand = 9
  $8533  18                         LOADR_quick   ; inline operand = 8
  $8534  C8                         UCMPGT
  $8535  D8 43 85                   JUMPF_abs              $8543
  $8538  40                         LOADL_qimm   ; inline operand = 0
  $8539  29                         STORE_quick   ; inline operand = 9
  $853A  D6 43 85                   JUMP_abs               $8543
 >$853D  02                         LOADL_quick   ; inline operand = 2
  $853E  52                         LOADR_qimm   ; inline operand = 2
  $853F  C0                         CMPEQ
  $8540  D8 14 85                   JUMPF_abs              $8514
 >$8543  02                         LOADL_quick   ; inline operand = 2
  $8544  52                         LOADR_qimm   ; inline operand = 2
  $8545  C1                         CMPNE
  $8546  D7 E1 84                   JUMPT_abs              $84E1
  $8549  AC 44 A5                   CALL_abs               $A544 {native}
  $854C  03                         LOADL_quick   ; inline operand = 3
  $854D  D8 60 85                   JUMPF_abs              $8560
  $8550  A5 6A 66                   BYTE_LOADL_abs         $666A
  $8553  B3                         PUSHL
  $8554  A5 65 66                   BYTE_LOADL_abs         $6665
  $8557  B3                         PUSHL
  $8558  A5 64 66                   BYTE_LOADL_abs         $6664
  $855B  B3                         PUSHL
  $855C  E9 41 AD 06                CALL_abs_imm1          $AD41 {native}, $06
 >$8560  40                         LOADL_qimm   ; inline operand = 0
  $8561  CF                         RETURN

; ============================================================
; sub $8562   (frame_off=-14, body @ $8567)   [PRG $22562]
; ============================================================
  $8567  8A 62 66                   LOADL_imm2             $6662
  $856A  2B                         STORE_quick   ; inline operand = 11
  $856B  0B                         LOADL_quick   ; inline operand = 11
  $856C  72                         ADD_qimm   ; inline operand = 2
  $856D  D3                         BYTE_DEREF
  $856E  51                         LOADR_qimm   ; inline operand = 1
  $856F  DA                         AND
  $8570  D8 77 85                   JUMPF_abs              $8577
  $8573  44                         LOADL_qimm   ; inline operand = 4
  $8574  D6 78 85                   JUMP_abs               $8578
 >$8577  40                         LOADL_qimm   ; inline operand = 0
 >$8578  B3                         PUSHL
  $8579  0B                         LOADL_quick   ; inline operand = 11
  $857A  72                         ADD_qimm   ; inline operand = 2
  $857B  D3                         BYTE_DEREF
  $857C  51                         LOADR_qimm   ; inline operand = 1
  $857D  BE                         URSHIFT
  $857E  B3                         PUSHL
  $857F  0B                         LOADL_quick   ; inline operand = 11
  $8580  D3                         BYTE_DEREF
  $8581  53                         LOADR_qimm   ; inline operand = 3
  $8582  BA                         UMOD
  $8583  57                         LOADR_qimm   ; inline operand = 7
  $8584  B5                         MULT
  $8585  B4                         POPR
  $8586  BB                         ADD
  $8587  75                         ADD_qimm   ; inline operand = 5
  $8588  53                         LOADR_qimm   ; inline operand = 3
  $8589  BD                         LSHIFT
  $858A  B4                         POPR
  $858B  BB                         ADD
  $858C  26                         STORE_quick   ; inline operand = 6
  $858D  0B                         LOADL_quick   ; inline operand = 11
  $858E  73                         ADD_qimm   ; inline operand = 3
  $858F  D3                         BYTE_DEREF
  $8590  51                         LOADR_qimm   ; inline operand = 1
  $8591  DA                         AND
  $8592  D8 99 85                   JUMPF_abs              $8599
  $8595  41                         LOADL_qimm   ; inline operand = 1
  $8596  D6 9A 85                   JUMP_abs               $859A
 >$8599  45                         LOADL_qimm   ; inline operand = 5
 >$859A  B3                         PUSHL
  $859B  0B                         LOADL_quick   ; inline operand = 11
  $859C  73                         ADD_qimm   ; inline operand = 3
  $859D  D3                         BYTE_DEREF
  $859E  51                         LOADR_qimm   ; inline operand = 1
  $859F  BE                         URSHIFT
  $85A0  B3                         PUSHL
  $85A1  0B                         LOADL_quick   ; inline operand = 11
  $85A2  D0                         INC
  $85A3  D3                         BYTE_DEREF
  $85A4  53                         LOADR_qimm   ; inline operand = 3
  $85A5  BA                         UMOD
  $85A6  57                         LOADR_qimm   ; inline operand = 7
  $85A7  B5                         MULT
  $85A8  B4                         POPR
  $85A9  BB                         ADD
  $85AA  74                         ADD_qimm   ; inline operand = 4
  $85AB  53                         LOADR_qimm   ; inline operand = 3
  $85AC  BD                         LSHIFT
  $85AD  B4                         POPR
  $85AE  BC                         SUB
  $85AF  25                         STORE_quick   ; inline operand = 5
  $85B0  05                         LOADL_quick   ; inline operand = 5
  $85B1  A2 F6 FF                   BYTE_STORE_far         $FFF6
  $85B4  8A F7 00                   LOADL_imm2             $00F7
  $85B7  A2 F7 FF                   BYTE_STORE_far         $FFF7
  $85BA  41                         LOADL_qimm   ; inline operand = 1
  $85BB  A2 F8 FF                   BYTE_STORE_far         $FFF8
  $85BE  06                         LOADL_quick   ; inline operand = 6
  $85BF  A2 F9 FF                   BYTE_STORE_far         $FFF9
  $85C2  05                         LOADL_quick   ; inline operand = 5
  $85C3  78                         ADD_qimm   ; inline operand = 8
  $85C4  A2 FA FF                   BYTE_STORE_far         $FFFA
  $85C7  8A F8 00                   LOADL_imm2             $00F8
  $85CA  A2 FB FF                   BYTE_STORE_far         $FFFB
  $85CD  40                         LOADL_qimm   ; inline operand = 0
  $85CE  A2 FC FF                   BYTE_STORE_far         $FFFC
  $85D1  06                         LOADL_quick   ; inline operand = 6
  $85D2  A2 FD FF                   BYTE_STORE_far         $FFFD
  $85D5  62                         PUSH_qimm   ; inline operand = 2
  $85D6  60                         PUSH_qimm   ; inline operand = 0
  $85D7  DE F6 FF                   LEAL_far               $FFF6
  $85DA  B3                         PUSHL
  $85DB  6D                         PUSH_qimm   ; inline operand = 13
  $85DC  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $85E0  CF                         RETURN

; ============================================================
; sub $85E1   (frame_off=-8, body @ $85E6)   [PRG $225E1]
; ============================================================
  $85E6  A5 5D 70                   BYTE_LOADL_abs         $705D
  $85E9  51                         LOADR_qimm   ; inline operand = 1
  $85EA  DA                         AND
  $85EB  D8 F2 85                   JUMPF_abs              $85F2
  $85EE  42                         LOADL_qimm   ; inline operand = 2
  $85EF  D6 F4 85                   JUMP_abs               $85F4
 >$85F2  89 FE                      BYTE_LOADL_imm1        -2
 >$85F4  B3                         PUSHL
  $85F5  A5 5D 70                   BYTE_LOADL_abs         $705D
  $85F8  51                         LOADR_qimm   ; inline operand = 1
  $85F9  BE                         URSHIFT
  $85FA  B3                         PUSHL
  $85FB  A5 5B 70                   BYTE_LOADL_abs         $705B
  $85FE  53                         LOADR_qimm   ; inline operand = 3
  $85FF  BA                         UMOD
  $8600  57                         LOADR_qimm   ; inline operand = 7
  $8601  B5                         MULT
  $8602  B4                         POPR
  $8603  BB                         ADD
  $8604  75                         ADD_qimm   ; inline operand = 5
  $8605  53                         LOADR_qimm   ; inline operand = 3
  $8606  BD                         LSHIFT
  $8607  B4                         POPR
  $8608  BB                         ADD
  $8609  29                         STORE_quick   ; inline operand = 9
  $860A  A5 5E 70                   BYTE_LOADL_abs         $705E
  $860D  51                         LOADR_qimm   ; inline operand = 1
  $860E  DA                         AND
  $860F  D8 16 86                   JUMPF_abs              $8616
  $8612  41                         LOADL_qimm   ; inline operand = 1
  $8613  D6 18 86                   JUMP_abs               $8618
 >$8616  89 FD                      BYTE_LOADL_imm1        -3
 >$8618  B3                         PUSHL
  $8619  A5 5E 70                   BYTE_LOADL_abs         $705E
  $861C  51                         LOADR_qimm   ; inline operand = 1
  $861D  BE                         URSHIFT
  $861E  B3                         PUSHL
  $861F  A5 5C 70                   BYTE_LOADL_abs         $705C
  $8622  53                         LOADR_qimm   ; inline operand = 3
  $8623  BA                         UMOD
  $8624  57                         LOADR_qimm   ; inline operand = 7
  $8625  B5                         MULT
  $8626  B4                         POPR
  $8627  BB                         ADD
  $8628  74                         ADD_qimm   ; inline operand = 4
  $8629  53                         LOADR_qimm   ; inline operand = 3
  $862A  BD                         LSHIFT
  $862B  B4                         POPR
  $862C  BB                         ADD
  $862D  28                         STORE_quick   ; inline operand = 8
  $862E  08                         LOADL_quick   ; inline operand = 8
  $862F  A2 FC FF                   BYTE_STORE_far         $FFFC
  $8632  8A F9 00                   LOADL_imm2             $00F9
  $8635  A2 FD FF                   BYTE_STORE_far         $FFFD
  $8638  42                         LOADL_qimm   ; inline operand = 2
  $8639  A2 FE FF                   BYTE_STORE_far         $FFFE
  $863C  09                         LOADL_quick   ; inline operand = 9
  $863D  A2 FF FF                   BYTE_STORE_far         $FFFF
  $8640  61                         PUSH_qimm   ; inline operand = 1
  $8641  60                         PUSH_qimm   ; inline operand = 0
  $8642  DE FC FF                   LEAL_far               $FFFC
  $8645  B3                         PUSHL
  $8646  6D                         PUSH_qimm   ; inline operand = 13
  $8647  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $864B  CF                         RETURN

; ============================================================
; sub $864C   (frame_off=+0, body @ $8651)   [PRG $2264C]
; ============================================================
  $8651  AC 0A 8B                   CALL_abs               $8B0A {native}
  $8654  AC 62 85                   CALL_abs               $8562 {bytecode}
  $8657  AC 7B C4                   CALL_abs               $C47B {native}
  $865A  8D 40                      BYTE_PUSH_imm1         +64
  $865C  60                         PUSH_qimm   ; inline operand = 0
  $865D  6C                         PUSH_qimm   ; inline operand = 12
  $865E  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $8662  AC 75 A6                   CALL_abs               $A675 {native}
  $8665  CF                         RETURN

; ============================================================
; sub $8666   (frame_off=-2, body @ $866B)   [PRG $22666]
; ============================================================
  $866B  A4 6D 66                   LOADL_abs              $666D
  $866E  54                         LOADR_qimm   ; inline operand = 4
  $866F  DA                         AND
  $8670  D7 7F 86                   JUMPT_abs              $867F
  $8673  AC E8 B2                   CALL_abs               $B2E8 {native}
  $8676  8E DE 97                   PUSH_imm2              $97DE
  $8679  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $867D  40                         LOADL_qimm   ; inline operand = 0
  $867E  CF                         RETURN
 >$867F  61                         PUSH_qimm   ; inline operand = 1
  $8680  E9 4C 86 02                CALL_abs_imm1          $864C {bytecode}, $02
  $8684  AC 98 B5                   CALL_abs               $B598 {native}
  $8687  A5 8C 6B                   BYTE_LOADL_abs         $6B8C
  $868A  55                         LOADR_qimm   ; inline operand = 5
  $868B  B8                         UDIV
  $868C  B3                         PUSHL
  $868D  E9 92 B1 02                CALL_abs_imm1          $B192 {native}, $02
  $8691  40                         LOADL_qimm   ; inline operand = 0
  $8692  CF                         RETURN

; ============================================================
; sub $8693   (frame_off=-10, body @ $8698)   [PRG $22693]
; ============================================================
  $8698  A5 5B 70                   BYTE_LOADL_abs         $705B
  $869B  53                         LOADR_qimm   ; inline operand = 3
  $869C  B8                         UDIV
  $869D  2B                         STORE_quick   ; inline operand = 11
  $869E  A5 5C 70                   BYTE_LOADL_abs         $705C
  $86A1  53                         LOADR_qimm   ; inline operand = 3
  $86A2  B8                         UDIV
  $86A3  2A                         STORE_quick   ; inline operand = 10
  $86A4  A5 63 72                   BYTE_LOADL_abs         $7263
  $86A7  1B                         LOADR_quick   ; inline operand = 11
  $86A8  C1                         CMPNE
  $86A9  D7 B8 86                   JUMPT_abs              $86B8
  $86AC  A5 64 72                   BYTE_LOADL_abs         $7264
  $86AF  1A                         LOADR_quick   ; inline operand = 10
  $86B0  C1                         CMPNE
  $86B1  D7 B8 86                   JUMPT_abs              $86B8
  $86B4  40                         LOADL_qimm   ; inline operand = 0
  $86B5  D6 B9 86                   JUMP_abs               $86B9
 >$86B8  41                         LOADL_qimm   ; inline operand = 1
 >$86B9  27                         STORE_quick   ; inline operand = 7
  $86BA  07                         LOADL_quick   ; inline operand = 7
  $86BB  D8 D4 86                   JUMPF_abs              $86D4
  $86BE  A5 63 72                   BYTE_LOADL_abs         $7263
  $86C1  29                         STORE_quick   ; inline operand = 9
  $86C2  A5 64 72                   BYTE_LOADL_abs         $7264
  $86C5  28                         STORE_quick   ; inline operand = 8
  $86C6  3A                         PUSH_quick   ; inline operand = 10
  $86C7  3B                         PUSH_quick   ; inline operand = 11
  $86C8  E9 46 AC 04                CALL_abs_imm1          $AC46 {native}, $04
  $86CC  0B                         LOADL_quick   ; inline operand = 11
  $86CD  A9 63 72                   BYTE_STORE_abs         $7263
  $86D0  0A                         LOADL_quick   ; inline operand = 10
  $86D1  A9 64 72                   BYTE_STORE_abs         $7264
 >$86D4  60                         PUSH_qimm   ; inline operand = 0
  $86D5  E9 0A 8B 02                CALL_abs_imm1          $8B0A {native}, $02
  $86D9  AC E1 85                   CALL_abs               $85E1 {bytecode}
  $86DC  AC 7B C4                   CALL_abs               $C47B {native}
  $86DF  8D 40                      BYTE_PUSH_imm1         +64
  $86E1  60                         PUSH_qimm   ; inline operand = 0
  $86E2  6C                         PUSH_qimm   ; inline operand = 12
  $86E3  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $86E7  AC 75 A6                   CALL_abs               $A675 {native}
  $86EA  07                         LOADL_quick   ; inline operand = 7
  $86EB  D8 FC 86                   JUMPF_abs              $86FC
  $86EE  38                         PUSH_quick   ; inline operand = 8
  $86EF  39                         PUSH_quick   ; inline operand = 9
  $86F0  E9 46 AC 04                CALL_abs_imm1          $AC46 {native}, $04
  $86F4  09                         LOADL_quick   ; inline operand = 9
  $86F5  A9 63 72                   BYTE_STORE_abs         $7263
  $86F8  08                         LOADL_quick   ; inline operand = 8
  $86F9  A9 64 72                   BYTE_STORE_abs         $7264
 >$86FC  CF                         RETURN

; ============================================================
; sub $86FD   (frame_off=+0, body @ $8702)   [PRG $226FD]
; ============================================================
  $8702  AC 93 86                   CALL_abs               $8693 {bytecode}
  $8705  AC 98 B5                   CALL_abs               $B598 {native}
  $8708  A5 8C 6B                   BYTE_LOADL_abs         $6B8C
  $870B  55                         LOADR_qimm   ; inline operand = 5
  $870C  B8                         UDIV
  $870D  B3                         PUSHL
  $870E  E9 92 B1 02                CALL_abs_imm1          $B192 {native}, $02
  $8712  40                         LOADL_qimm   ; inline operand = 0
  $8713  CF                         RETURN

; ============================================================
; sub $8714   (frame_off=-4, body @ $8719)   [PRG $22714]
; ============================================================
  $8719  41                         LOADL_qimm   ; inline operand = 1
  $871A  2A                         STORE_quick   ; inline operand = 10
 >$871B  A5 5F 70                   BYTE_LOADL_abs         $705F
  $871E  54                         LOADR_qimm   ; inline operand = 4
  $871F  DA                         AND
  $8720  D8 28 87                   JUMPF_abs              $8728
  $8723  63                         PUSH_qimm   ; inline operand = 3
  $8724  66                         PUSH_qimm   ; inline operand = 6
  $8725  D6 2A 87                   JUMP_abs               $872A
 >$8728  63                         PUSH_qimm   ; inline operand = 3
  $8729  65                         PUSH_qimm   ; inline operand = 5
 >$872A  8E F6 97                   PUSH_imm2              $97F6
  $872D  62                         PUSH_qimm   ; inline operand = 2
  $872E  67                         PUSH_qimm   ; inline operand = 7
  $872F  E9 EB A0 0A                CALL_abs_imm1          $A0EB {native}, $0A
  $8733  2B                         STORE_quick   ; inline operand = 11
  $8734  0B                         LOADL_quick   ; inline operand = 11
  $8735  8C FF 00                   LOADR_imm2             $00FF
  $8738  C0                         CMPEQ
  $8739  D8 41 87                   JUMPF_abs              $8741
  $873C  40                         LOADL_qimm   ; inline operand = 0
  $873D  2A                         STORE_quick   ; inline operand = 10
  $873E  D6 4C 87                   JUMP_abs               $874C
 >$8741  0B                         LOADL_quick   ; inline operand = 11
  $8742  D2                         LSHIFT1
  $8743  8C 02 98                   LOADR_imm2             $9802
  $8746  BB                         ADD
  $8747  B0                         DEREF
  $8748  DD                         CALLPTR
  $8749  D8 1B 87                   JUMPF_abs              $871B
 >$874C  0A                         LOADL_quick   ; inline operand = 10
  $874D  CF                         RETURN

; ============================================================
; sub $8DC3   (frame_off=-10, body @ $8DC8)   [PRG $22DC3]
; ============================================================
  $8DC8  40                         LOADL_qimm   ; inline operand = 0
  $8DC9  28                         STORE_quick   ; inline operand = 8
  $8DCA  AC 16 80                   CALL_abs               $8016 {bytecode}
  $8DCD  27                         STORE_quick   ; inline operand = 7
  $8DCE  68                         PUSH_qimm   ; inline operand = 8
  $8DCF  6A                         PUSH_qimm   ; inline operand = 10
  $8DD0  6B                         PUSH_qimm   ; inline operand = 11
  $8DD1  37                         PUSH_quick   ; inline operand = 7
  $8DD2  E9 02 A5 08                CALL_abs_imm1          $A502 {native}, $08
  $8DD6  8E E8 00                   PUSH_imm2              $00E8
  $8DD9  8E B2 AC                   PUSH_imm2              $ACB2
  $8DDC  8E 62 AC                   PUSH_imm2              $AC62
  $8DDF  68                         PUSH_qimm   ; inline operand = 8
  $8DE0  6A                         PUSH_qimm   ; inline operand = 10
  $8DE1  6B                         PUSH_qimm   ; inline operand = 11
  $8DE2  37                         PUSH_quick   ; inline operand = 7
  $8DE3  69                         PUSH_qimm   ; inline operand = 9
  $8DE4  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8DE8  07                         LOADL_quick   ; inline operand = 7
  $8DE9  D0                         INC
  $8DEA  27                         STORE_quick   ; inline operand = 7
  $8DEB  6B                         PUSH_qimm   ; inline operand = 11
  $8DEC  37                         PUSH_quick   ; inline operand = 7
  $8DED  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8DF1  60                         PUSH_qimm   ; inline operand = 0
  $8DF2  8E A0 99                   PUSH_imm2              $99A0
  $8DF5  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8DF9  A5 98 6A                   BYTE_LOADL_abs         $6A98
  $8DFC  2B                         STORE_quick   ; inline operand = 11
  $8DFD  A5 99 6A                   BYTE_LOADL_abs         $6A99
  $8E00  2A                         STORE_quick   ; inline operand = 10
  $8E01  61                         PUSH_qimm   ; inline operand = 1
  $8E02  6D                         PUSH_qimm   ; inline operand = 13
  $8E03  37                         PUSH_quick   ; inline operand = 7
  $8E04  E9 D0 A3 06                CALL_abs_imm1          $A3D0 {native}, $06
  $8E08  60                         PUSH_qimm   ; inline operand = 0
  $8E09  8D 10                      BYTE_PUSH_imm1         +16
  $8E0B  37                         PUSH_quick   ; inline operand = 7
  $8E0C  E9 D0 A3 06                CALL_abs_imm1          $A3D0 {native}, $06
  $8E10  6E                         PUSH_qimm   ; inline operand = 14
  $8E11  07                         LOADL_quick   ; inline operand = 7
  $8E12  72                         ADD_qimm   ; inline operand = 2
  $8E13  B3                         PUSHL
  $8E14  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8E18  3B                         PUSH_quick   ; inline operand = 11
  $8E19  8E AE 99                   PUSH_imm2              $99AE
  $8E1C  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $8E20  8D 11                      BYTE_PUSH_imm1         +17
  $8E22  07                         LOADL_quick   ; inline operand = 7
  $8E23  72                         ADD_qimm   ; inline operand = 2
  $8E24  B3                         PUSHL
  $8E25  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8E29  3A                         PUSH_quick   ; inline operand = 10
  $8E2A  8E B4 99                   PUSH_imm2              $99B4
  $8E2D  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $8E31  AC E8 B2                   CALL_abs               $B2E8 {native}
  $8E34  61                         PUSH_qimm   ; inline operand = 1
  $8E35  8E BA 99                   PUSH_imm2              $99BA
  $8E38  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8E3C  6D                         PUSH_qimm   ; inline operand = 13
  $8E3D  07                         LOADL_quick   ; inline operand = 7
  $8E3E  76                         ADD_qimm   ; inline operand = 6
  $8E3F  B3                         PUSHL
  $8E40  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8E44  61                         PUSH_qimm   ; inline operand = 1
  $8E45  8D 63                      BYTE_PUSH_imm1         +99
  $8E47  61                         PUSH_qimm   ; inline operand = 1
  $8E48  E9 CD C9 06                CALL_abs_imm1          $C9CD {native}, $06
  $8E4C  29                         STORE_quick   ; inline operand = 9
  $8E4D  09                         LOADL_quick   ; inline operand = 9
  $8E4E  8B FF                      BYTE_LOADR_imm1        -1
  $8E50  C0                         CMPEQ
  $8E51  D8 67 8E                   JUMPF_abs              $8E67
  $8E54  6D                         PUSH_qimm   ; inline operand = 13
  $8E55  07                         LOADL_quick   ; inline operand = 7
  $8E56  76                         ADD_qimm   ; inline operand = 6
  $8E57  B3                         PUSHL
  $8E58  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8E5C  3B                         PUSH_quick   ; inline operand = 11
  $8E5D  8E E1 99                   PUSH_imm2              $99E1
  $8E60  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8E64  D6 6D 8E                   JUMP_abs               $8E6D
 >$8E67  09                         LOADL_quick   ; inline operand = 9
  $8E68  A9 98 6A                   BYTE_STORE_abs         $6A98
  $8E6B  41                         LOADL_qimm   ; inline operand = 1
  $8E6C  28                         STORE_quick   ; inline operand = 8
 >$8E6D  8D 10                      BYTE_PUSH_imm1         +16
  $8E6F  07                         LOADL_quick   ; inline operand = 7
  $8E70  76                         ADD_qimm   ; inline operand = 6
  $8E71  B3                         PUSHL
  $8E72  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8E76  61                         PUSH_qimm   ; inline operand = 1
  $8E77  8D 63                      BYTE_PUSH_imm1         +99
  $8E79  61                         PUSH_qimm   ; inline operand = 1
  $8E7A  E9 CD C9 06                CALL_abs_imm1          $C9CD {native}, $06
  $8E7E  29                         STORE_quick   ; inline operand = 9
  $8E7F  09                         LOADL_quick   ; inline operand = 9
  $8E80  8B FF                      BYTE_LOADR_imm1        -1
  $8E82  C0                         CMPEQ
  $8E83  D8 99 8E                   JUMPF_abs              $8E99
  $8E86  6D                         PUSH_qimm   ; inline operand = 13
  $8E87  07                         LOADL_quick   ; inline operand = 7
  $8E88  76                         ADD_qimm   ; inline operand = 6
  $8E89  B3                         PUSHL
  $8E8A  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8E8E  3A                         PUSH_quick   ; inline operand = 10
  $8E8F  8E E5 99                   PUSH_imm2              $99E5
  $8E92  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8E96  D6 9F 8E                   JUMP_abs               $8E9F
 >$8E99  09                         LOADL_quick   ; inline operand = 9
  $8E9A  A9 99 6A                   BYTE_STORE_abs         $6A99
  $8E9D  41                         LOADL_qimm   ; inline operand = 1
  $8E9E  28                         STORE_quick   ; inline operand = 8
 >$8E9F  AC 44 A5                   CALL_abs               $A544 {native}
  $8EA2  08                         LOADL_quick   ; inline operand = 8
  $8EA3  CF                         RETURN

; ============================================================
; sub $8EA4   (frame_off=-29, body @ $8EA9)   [PRG $22EA4]
; ============================================================
  $8EA9  0C                         LOADL_quick   ; inline operand = 12
  $8EAA  5A                         LOADR_qimm   ; inline operand = 10
  $8EAB  B5                         MULT
  $8EAC  8C BF 6B                   LOADR_imm2             $6BBF
  $8EAF  BB                         ADD
  $8EB0  2B                         STORE_quick   ; inline operand = 11
  $8EB1  40                         LOADL_qimm   ; inline operand = 0
  $8EB2  85 F7                      STORE_near             $F7
  $8EB4  40                         LOADL_qimm   ; inline operand = 0
  $8EB5  A2 FB FF                   BYTE_STORE_far         $FFFB
  $8EB8  0B                         LOADL_quick   ; inline operand = 11
  $8EB9  75                         ADD_qimm   ; inline operand = 5
  $8EBA  2A                         STORE_quick   ; inline operand = 10
  $8EBB  D6 DA 8E                   JUMP_abs               $8EDA
 >$8EBE  A0 FB FF                   BYTE_LOADL_far         $FFFB
  $8EC1  B3                         PUSHL
  $8EC2  0B                         LOADL_quick   ; inline operand = 11
  $8EC3  D3                         BYTE_DEREF
  $8EC4  B4                         POPR
  $8EC5  C8                         UCMPGT
  $8EC6  D8 D2 8E                   JUMPF_abs              $8ED2
  $8EC9  0B                         LOADL_quick   ; inline operand = 11
  $8ECA  D3                         BYTE_DEREF
  $8ECB  A2 FB FF                   BYTE_STORE_far         $FFFB
  $8ECE  81 F7                      LOADL_near             $F7
  $8ED0  85 F9                      STORE_near             $F9
 >$8ED2  81 F7                      LOADL_near             $F7
  $8ED4  D0                         INC
  $8ED5  85 F7                      STORE_near             $F7
  $8ED7  0B                         LOADL_quick   ; inline operand = 11
  $8ED8  D0                         INC
  $8ED9  2B                         STORE_quick   ; inline operand = 11
 >$8EDA  0B                         LOADL_quick   ; inline operand = 11
  $8EDB  1A                         LOADR_quick   ; inline operand = 10
  $8EDC  C6                         UCMPLT
  $8EDD  D7 BE 8E                   JUMPT_abs              $8EBE
  $8EE0  A0 FB FF                   BYTE_LOADL_far         $FFFB
  $8EE3  85 F3                      STORE_near             $F3
  $8EE5  8A BF 6B                   LOADL_imm2             $6BBF
  $8EE8  2A                         STORE_quick   ; inline operand = 10
  $8EE9  0A                         LOADL_quick   ; inline operand = 10
  $8EEA  83 F9                      LOADR_near             $F9
  $8EEC  BB                         ADD
  $8EED  D3                         BYTE_DEREF
  $8EEE  85 F1                      STORE_near             $F1
  $8EF0  0D                         LOADL_quick   ; inline operand = 13
  $8EF1  85 EF                      STORE_near             $EF
  $8EF3  0C                         LOADL_quick   ; inline operand = 12
  $8EF4  57                         LOADR_qimm   ; inline operand = 7
  $8EF5  B5                         MULT
  $8EF6  8C 42 65                   LOADR_imm2             $6542
  $8EF9  BB                         ADD
  $8EFA  85 E5                      STORE_near             $E5
  $8EFC  8A 42 65                   LOADL_imm2             $6542
  $8EFF  85 E3                      STORE_near             $E3
  $8F01  81 E5                      LOADL_near             $E5
  $8F03  73                         ADD_qimm   ; inline operand = 3
  $8F04  D3                         BYTE_DEREF
  $8F05  B3                         PUSHL
  $8F06  81 E5                      LOADL_near             $E5
  $8F08  72                         ADD_qimm   ; inline operand = 2
  $8F09  D3                         BYTE_DEREF
  $8F0A  B4                         POPR
  $8F0B  BB                         ADD
  $8F0C  85 ED                      STORE_near             $ED
  $8F0E  81 E3                      LOADL_near             $E3
  $8F10  73                         ADD_qimm   ; inline operand = 3
  $8F11  D3                         BYTE_DEREF
  $8F12  B3                         PUSHL
  $8F13  81 E3                      LOADL_near             $E3
  $8F15  72                         ADD_qimm   ; inline operand = 2
  $8F16  D3                         BYTE_DEREF
  $8F17  B4                         POPR
  $8F18  BB                         ADD
  $8F19  85 EB                      STORE_near             $EB
  $8F1B  81 F3                      LOADL_near             $F3
  $8F1D  83 ED                      LOADR_near             $ED
  $8F1F  B5                         MULT
  $8F20  8B 64                      BYTE_LOADR_imm1        +100
  $8F22  B6                         SDIV
  $8F23  83 F3                      LOADR_near             $F3
  $8F25  BB                         ADD
  $8F26  85 E9                      STORE_near             $E9
  $8F28  81 F1                      LOADL_near             $F1
  $8F2A  83 EB                      LOADR_near             $EB
  $8F2C  B5                         MULT
  $8F2D  8B 64                      BYTE_LOADR_imm1        +100
  $8F2F  B6                         SDIV
  $8F30  83 E7                      LOADR_near             $E7
  $8F32  BB                         ADD
  $8F33  85 E7                      STORE_near             $E7
  $8F35  81 E9                      LOADL_near             $E9
  $8F37  83 E7                      LOADR_near             $E7
  $8F39  C4                         SCMPGT
  $8F3A  D8 46 8F                   JUMPF_abs              $8F46
  $8F3D  8D 64                      BYTE_PUSH_imm1         +100
  $8F3F  81 EF                      LOADL_near             $EF
  $8F41  83 ED                      LOADR_near             $ED
  $8F43  D6 4E 8F                   JUMP_abs               $8F4E
 >$8F46  8D 64                      BYTE_PUSH_imm1         +100
  $8F48  81 EF                      LOADL_near             $EF
  $8F4A  83 ED                      LOADR_near             $ED
  $8F4C  B6                         SDIV
  $8F4D  53                         LOADR_qimm   ; inline operand = 3
 >$8F4E  B6                         SDIV
  $8F4F  B3                         PUSHL
  $8F50  0C                         LOADL_quick   ; inline operand = 12
  $8F51  D1                         DEC
  $8F52  D2                         LSHIFT1
  $8F53  8C 6E 6A                   LOADR_imm2             $6A6E
  $8F56  BB                         ADD
  $8F57  D3                         BYTE_DEREF
  $8F58  B4                         POPR
  $8F59  BB                         ADD
  $8F5A  B3                         PUSHL
  $8F5B  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8F5F  85 F5                      STORE_near             $F5
  $8F61  0C                         LOADL_quick   ; inline operand = 12
  $8F62  D1                         DEC
  $8F63  D2                         LSHIFT1
  $8F64  8C 6E 6A                   LOADR_imm2             $6A6E
  $8F67  BB                         ADD
  $8F68  B3                         PUSHL
  $8F69  81 F5                      LOADL_near             $F5
  $8F6B  D4                         BYTE_POPSTORE
  $8F6C  60                         PUSH_qimm   ; inline operand = 0
  $8F6D  3C                         PUSH_quick   ; inline operand = 12
  $8F6E  E9 67 B2 04                CALL_abs_imm1          $B267 {native}, $04
  $8F72  8E E9 99                   PUSH_imm2              $99E9
  $8F75  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8F79  CF                         RETURN

; ============================================================
; sub $8F7A   (frame_off=-2, body @ $8F7F)   [PRG $22F7A]
; ============================================================
  $8F7F  8A 62 66                   LOADL_imm2             $6662
  $8F82  2B                         STORE_quick   ; inline operand = 11
  $8F83  0B                         LOADL_quick   ; inline operand = 11
  $8F84  72                         ADD_qimm   ; inline operand = 2
  $8F85  D3                         BYTE_DEREF
  $8F86  57                         LOADR_qimm   ; inline operand = 7
  $8F87  C6                         UCMPLT
  $8F88  D8 90 8F                   JUMPF_abs              $8F90
  $8F8B  89 10                      BYTE_LOADL_imm1        +16
  $8F8D  D6 91 8F                   JUMP_abs               $8F91
 >$8F90  42                         LOADL_qimm   ; inline operand = 2
 >$8F91  CF                         RETURN

; ============================================================
; sub $8F92   (frame_off=-12, body @ $8F97)   [PRG $22F92]
; ============================================================
  $8F97  40                         LOADL_qimm   ; inline operand = 0
  $8F98  27                         STORE_quick   ; inline operand = 7
  $8F99  0C                         LOADL_quick   ; inline operand = 12
  $8F9A  57                         LOADR_qimm   ; inline operand = 7
  $8F9B  B5                         MULT
  $8F9C  8C 42 65                   LOADR_imm2             $6542
  $8F9F  BB                         ADD
  $8FA0  26                         STORE_quick   ; inline operand = 6
  $8FA1  AC 7A 8F                   CALL_abs               $8F7A {bytecode}
  $8FA4  2B                         STORE_quick   ; inline operand = 11
  $8FA5  66                         PUSH_qimm   ; inline operand = 6
  $8FA6  6E                         PUSH_qimm   ; inline operand = 14
  $8FA7  6C                         PUSH_qimm   ; inline operand = 12
  $8FA8  3B                         PUSH_quick   ; inline operand = 11
  $8FA9  E9 02 A5 08                CALL_abs_imm1          $A502 {native}, $08
  $8FAD  8E E8 00                   PUSH_imm2              $00E8
  $8FB0  8E 56 AD                   PUSH_imm2              $AD56
  $8FB3  8E 02 AD                   PUSH_imm2              $AD02
  $8FB6  66                         PUSH_qimm   ; inline operand = 6
  $8FB7  6E                         PUSH_qimm   ; inline operand = 14
  $8FB8  6C                         PUSH_qimm   ; inline operand = 12
  $8FB9  3B                         PUSH_quick   ; inline operand = 11
  $8FBA  69                         PUSH_qimm   ; inline operand = 9
  $8FBB  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8FBF  0B                         LOADL_quick   ; inline operand = 11
  $8FC0  D0                         INC
  $8FC1  2B                         STORE_quick   ; inline operand = 11
  $8FC2  6E                         PUSH_qimm   ; inline operand = 14
  $8FC3  3B                         PUSH_quick   ; inline operand = 11
  $8FC4  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8FC8  06                         LOADL_quick   ; inline operand = 6
  $8FC9  B0                         DEREF
  $8FCA  B3                         PUSHL
  $8FCB  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8FCF  6F                         PUSH_qimm   ; inline operand = 15
  $8FD0  3B                         PUSH_quick   ; inline operand = 11
  $8FD1  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8FD5  0C                         LOADL_quick   ; inline operand = 12
  $8FD6  D1                         DEC
  $8FD7  D2                         LSHIFT1
  $8FD8  8C 6E 6A                   LOADR_imm2             $6A6E
  $8FDB  BB                         ADD
  $8FDC  D3                         BYTE_DEREF
  $8FDD  B3                         PUSHL
  $8FDE  8E FE 99                   PUSH_imm2              $99FE
  $8FE1  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8FE5  A4 6B 66                   LOADL_abs              $666B
  $8FE8  2A                         STORE_quick   ; inline operand = 10
  $8FE9  0A                         LOADL_quick   ; inline operand = 10
  $8FEA  8C E7 03                   LOADR_imm2             $03E7
  $8FED  C8                         UCMPGT
  $8FEE  D8 F7 8F                   JUMPF_abs              $8FF7
  $8FF1  8A E7 03                   LOADL_imm2             $03E7
  $8FF4  D6 F8 8F                   JUMP_abs               $8FF8
 >$8FF7  0A                         LOADL_quick   ; inline operand = 10
 >$8FF8  28                         STORE_quick   ; inline operand = 8
  $8FF9  AC 4B B2                   CALL_abs               $B24B {native}
  $8FFC  3A                         PUSH_quick   ; inline operand = 10
  $8FFD  8E 0A 9A                   PUSH_imm2              $9A0A
  $9000  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $9004  61                         PUSH_qimm   ; inline operand = 1
  $9005  38                         PUSH_quick   ; inline operand = 8
  $9006  61                         PUSH_qimm   ; inline operand = 1
  $9007  8E 13 9A                   PUSH_imm2              $9A13
  $900A  E9 F3 CC 08                CALL_abs_imm1          $CCF3 {native}, $08
  $900E  29                         STORE_quick   ; inline operand = 9
  $900F  09                         LOADL_quick   ; inline operand = 9
  $9010  8B FF                      BYTE_LOADR_imm1        -1
  $9012  C1                         CMPNE
  $9013  D8 3D 90                   JUMPF_abs              $903D
  $9016  09                         LOADL_quick   ; inline operand = 9
  $9017  CD                         SWAP
  $9018  A4 6B 66                   LOADL_abs              $666B
  $901B  BC                         SUB
  $901C  A8 6B 66                   STORE_abs              $666B
  $901F  39                         PUSH_quick   ; inline operand = 9
  $9020  3C                         PUSH_quick   ; inline operand = 12
  $9021  E9 A4 8E 04                CALL_abs_imm1          $8EA4 {bytecode}, $04
  $9025  6F                         PUSH_qimm   ; inline operand = 15
  $9026  3B                         PUSH_quick   ; inline operand = 11
  $9027  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $902B  0C                         LOADL_quick   ; inline operand = 12
  $902C  D1                         DEC
  $902D  D2                         LSHIFT1
  $902E  8C 6E 6A                   LOADR_imm2             $6A6E
  $9031  BB                         ADD
  $9032  D3                         BYTE_DEREF
  $9033  B3                         PUSHL
  $9034  8E 23 9A                   PUSH_imm2              $9A23
  $9037  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $903B  41                         LOADL_qimm   ; inline operand = 1
  $903C  27                         STORE_quick   ; inline operand = 7
 >$903D  AC 44 A5                   CALL_abs               $A544 {native}
  $9040  07                         LOADL_quick   ; inline operand = 7
  $9041  CF                         RETURN

; ============================================================
; sub $9042   (frame_off=-4, body @ $9047)   [PRG $23042]
; ============================================================
  $9047  A4 6B 66                   LOADL_abs              $666B
  $904A  D7 59 90                   JUMPT_abs              $9059
  $904D  AC E8 B2                   CALL_abs               $B2E8 {native}
  $9050  8E 37 9A                   PUSH_imm2              $9A37
  $9053  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $9057  40                         LOADL_qimm   ; inline operand = 0
  $9058  CF                         RETURN
 >$9059  AC E2 80                   CALL_abs               $80E2 (fleet_select_mate) {bytecode}
  $905C  2B                         STORE_quick   ; inline operand = 11
  $905D  40                         LOADL_qimm   ; inline operand = 0
  $905E  2A                         STORE_quick   ; inline operand = 10
  $905F  0B                         LOADL_quick   ; inline operand = 11
  $9060  8C FF 00                   LOADR_imm2             $00FF
  $9063  C1                         CMPNE
  $9064  D8 6D 90                   JUMPF_abs              $906D
  $9067  3B                         PUSH_quick   ; inline operand = 11
  $9068  E9 92 8F 02                CALL_abs_imm1          $8F92 (fleet_give_gold_loyalty) {bytecode}, $02
  $906C  2A                         STORE_quick   ; inline operand = 10
 >$906D  0A                         LOADL_quick   ; inline operand = 10
  $906E  CF                         RETURN

; ============================================================
; sub $906F   (frame_off=-20, body @ $9074)   [PRG $2306F]
; ============================================================
  $9074  81 13                      LOADL_near             $13
  $9076  D2                         LSHIFT1
  $9077  8C 55 9A                   LOADR_imm2             $9A55
  $907A  BB                         ADD
  $907B  B0                         DEREF
  $907C  25                         STORE_quick   ; inline operand = 5
  $907D  8A E1 00                   LOADL_imm2             $00E1
  $9080  A2 ED FF                   BYTE_STORE_far         $FFED
  $9083  40                         LOADL_qimm   ; inline operand = 0
  $9084  A2 EE FF                   BYTE_STORE_far         $FFEE
  $9087  41                         LOADL_qimm   ; inline operand = 1
  $9088  27                         STORE_quick   ; inline operand = 7
  $9089  40                         LOADL_qimm   ; inline operand = 0
  $908A  26                         STORE_quick   ; inline operand = 6
  $908B  40                         LOADL_qimm   ; inline operand = 0
  $908C  28                         STORE_quick   ; inline operand = 8
  $908D  81 13                      LOADL_near             $13
  $908F  D8 CA 90                   JUMPF_abs              $90CA
  $9092  0D                         LOADL_quick   ; inline operand = 13
  $9093  8F 10                      BYTE_ADD_imm1          +16
  $9095  B3                         PUSHL
  $9096  0C                         LOADL_quick   ; inline operand = 12
  $9097  D0                         INC
  $9098  B3                         PUSHL
  $9099  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $909D  60                         PUSH_qimm   ; inline operand = 0
  $909E  8E 65 9A                   PUSH_imm2              $9A65
  $90A1  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $90A5  0D                         LOADL_quick   ; inline operand = 13
  $90A6  8F 11                      BYTE_ADD_imm1          +17
  $90A8  B3                         PUSHL
  $90A9  0C                         LOADL_quick   ; inline operand = 12
  $90AA  D0                         INC
  $90AB  B3                         PUSHL
  $90AC  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $90B0  60                         PUSH_qimm   ; inline operand = 0
  $90B1  8E 6D 9A                   PUSH_imm2              $9A6D
  $90B4  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $90B8  0D                         LOADL_quick   ; inline operand = 13
  $90B9  8F 12                      BYTE_ADD_imm1          +18
  $90BB  B3                         PUSHL
  $90BC  0C                         LOADL_quick   ; inline operand = 12
  $90BD  D0                         INC
  $90BE  B3                         PUSHL
  $90BF  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $90C3  60                         PUSH_qimm   ; inline operand = 0
  $90C4  8E 75 9A                   PUSH_imm2              $9A75
  $90C7  D6 FF 90                   JUMP_abs               $90FF
 >$90CA  0D                         LOADL_quick   ; inline operand = 13
  $90CB  8F 10                      BYTE_ADD_imm1          +16
  $90CD  B3                         PUSHL
  $90CE  0C                         LOADL_quick   ; inline operand = 12
  $90CF  D0                         INC
  $90D0  B3                         PUSHL
  $90D1  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $90D5  60                         PUSH_qimm   ; inline operand = 0
  $90D6  8E 7D 9A                   PUSH_imm2              $9A7D
  $90D9  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $90DD  0D                         LOADL_quick   ; inline operand = 13
  $90DE  8F 11                      BYTE_ADD_imm1          +17
  $90E0  B3                         PUSHL
  $90E1  0C                         LOADL_quick   ; inline operand = 12
  $90E2  D0                         INC
  $90E3  B3                         PUSHL
  $90E4  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $90E8  60                         PUSH_qimm   ; inline operand = 0
  $90E9  8E 85 9A                   PUSH_imm2              $9A85
  $90EC  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $90F0  0D                         LOADL_quick   ; inline operand = 13
  $90F1  8F 12                      BYTE_ADD_imm1          +18
  $90F3  B3                         PUSHL
  $90F4  0C                         LOADL_quick   ; inline operand = 12
  $90F5  D0                         INC
  $90F6  B3                         PUSHL
  $90F7  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $90FB  60                         PUSH_qimm   ; inline operand = 0
  $90FC  8E 8D 9A                   PUSH_imm2              $9A8D
 >$90FF  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
 >$9103  07                         LOADL_quick   ; inline operand = 7
  $9104  5A                         LOADR_qimm   ; inline operand = 10
  $9105  B5                         MULT
  $9106  16                         LOADR_quick   ; inline operand = 6
  $9107  BB                         ADD
  $9108  2B                         STORE_quick   ; inline operand = 11
  $9109  07                         LOADL_quick   ; inline operand = 7
  $910A  D2                         LSHIFT1
  $910B  8C 59 9A                   LOADR_imm2             $9A59
  $910E  BB                         ADD
  $910F  B0                         DEREF
  $9110  1C                         LOADR_quick   ; inline operand = 12
  $9111  BB                         ADD
  $9112  2A                         STORE_quick   ; inline operand = 10
  $9113  07                         LOADL_quick   ; inline operand = 7
  $9114  52                         LOADR_qimm   ; inline operand = 2
  $9115  C0                         CMPEQ
  $9116  D8 1D 91                   JUMPF_abs              $911D
  $9119  41                         LOADL_qimm   ; inline operand = 1
  $911A  D6 1E 91                   JUMP_abs               $911E
 >$911D  42                         LOADL_qimm   ; inline operand = 2
 >$911E  24                         STORE_quick   ; inline operand = 4
  $911F  06                         LOADL_quick   ; inline operand = 6
  $9120  14                         LOADR_quick   ; inline operand = 4
  $9121  B5                         MULT
  $9122  B3                         PUSHL
  $9123  07                         LOADL_quick   ; inline operand = 7
  $9124  D2                         LSHIFT1
  $9125  8C 5F 9A                   LOADR_imm2             $9A5F
  $9128  BB                         ADD
  $9129  B0                         DEREF
  $912A  B4                         POPR
  $912B  BB                         ADD
  $912C  1D                         LOADR_quick   ; inline operand = 13
  $912D  BB                         ADD
  $912E  29                         STORE_quick   ; inline operand = 9
  $912F  09                         LOADL_quick   ; inline operand = 9
  $9130  53                         LOADR_qimm   ; inline operand = 3
  $9131  BD                         LSHIFT
  $9132  B3                         PUSHL
  $9133  A5 7D 73                   BYTE_LOADL_abs         $737D (ui_shared_var_737d)
  $9136  D2                         LSHIFT1
  $9137  8C 14 DF                   LOADR_imm2             $DF14
  $913A  BB                         ADD
  $913B  B0                         DEREF
  $913C  B4                         POPR
  $913D  BB                         ADD
  $913E  A2 EC FF                   BYTE_STORE_far         $FFEC
  $9141  0A                         LOADL_quick   ; inline operand = 10
  $9142  53                         LOADR_qimm   ; inline operand = 3
  $9143  BD                         LSHIFT
  $9144  A2 EF FF                   BYTE_STORE_far         $FFEF
  $9147  61                         PUSH_qimm   ; inline operand = 1
  $9148  35                         PUSH_quick   ; inline operand = 5
  $9149  DE EC FF                   LEAL_far               $FFEC
  $914C  B3                         PUSHL
  $914D  6D                         PUSH_qimm   ; inline operand = 13
  $914E  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $9152  6C                         PUSH_qimm   ; inline operand = 12
  $9153  38                         PUSH_quick   ; inline operand = 8
  $9154  E9 4D CE 04                CALL_abs_imm1          $CE4D {native}, $04
  $9158  60                         PUSH_qimm   ; inline operand = 0
  $9159  E9 A9 C4 02                CALL_abs_imm1          $C4A9 {native}, $02
  $915D  28                         STORE_quick   ; inline operand = 8
  $915E  D9 06 00 01 00 7B 91 02 00 9F 91 10 ... SWITCH_noncontig       count=6   ; .table 6 (key,target) + default (noncontiguous); SWITCH 1=>$917B 2=>$919F 16=>$91B1 32=>$91CA 64=>$91E6 128=>$91EA default=>$9103
 >$917B  43                         LOADL_qimm   ; inline operand = 3
  $917C  A2 EE FF                   BYTE_STORE_far         $FFEE
  $917F  61                         PUSH_qimm   ; inline operand = 1
  $9180  35                         PUSH_quick   ; inline operand = 5
  $9181  DE EC FF                   LEAL_far               $FFEC
  $9184  B3                         PUSHL
  $9185  6D                         PUSH_qimm   ; inline operand = 13
  $9186  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $918A  0B                         LOADL_quick   ; inline operand = 11
  $918B  D7 95 91                   JUMPT_abs              $9195
  $918E  62                         PUSH_qimm   ; inline operand = 2
  $918F  60                         PUSH_qimm   ; inline operand = 0
  $9190  6C                         PUSH_qimm   ; inline operand = 12
  $9191  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
 >$9195  60                         PUSH_qimm   ; inline operand = 0
  $9196  E9 A9 C4 02                CALL_abs_imm1          $C4A9 {native}, $02
  $919A  D7 95 91                   JUMPT_abs              $9195
  $919D  0B                         LOADL_quick   ; inline operand = 11
  $919E  CF                         RETURN
 >$919F  62                         PUSH_qimm   ; inline operand = 2
  $91A0  60                         PUSH_qimm   ; inline operand = 0
  $91A1  6C                         PUSH_qimm   ; inline operand = 12
  $91A2  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
 >$91A6  60                         PUSH_qimm   ; inline operand = 0
  $91A7  E9 A9 C4 02                CALL_abs_imm1          $C4A9 {native}, $02
  $91AB  D7 A6 91                   JUMPT_abs              $91A6
  $91AE  89 FF                      BYTE_LOADL_imm1        -1
  $91B0  CF                         RETURN
 >$91B1  06                         LOADL_quick   ; inline operand = 6
  $91B2  D1                         DEC
  $91B3  26                         STORE_quick   ; inline operand = 6
  $91B4  06                         LOADL_quick   ; inline operand = 6
  $91B5  50                         LOADR_qimm   ; inline operand = 0
  $91B6  C2                         SCMPLT
  $91B7  D8 03 91                   JUMPF_abs              $9103
  $91BA  40                         LOADL_qimm   ; inline operand = 0
  $91BB  26                         STORE_quick   ; inline operand = 6
  $91BC  07                         LOADL_quick   ; inline operand = 7
  $91BD  52                         LOADR_qimm   ; inline operand = 2
  $91BE  C0                         CMPEQ
  $91BF  D8 03 91                   JUMPF_abs              $9103
  $91C2  41                         LOADL_qimm   ; inline operand = 1
  $91C3  27                         STORE_quick   ; inline operand = 7
 >$91C4  0E                         LOADL_quick   ; inline operand = 14
 >$91C5  D1                         DEC
 >$91C6  26                         STORE_quick   ; inline operand = 6
  $91C7  D6 03 91                   JUMP_abs               $9103
 >$91CA  06                         LOADL_quick   ; inline operand = 6
  $91CB  D0                         INC
  $91CC  26                         STORE_quick   ; inline operand = 6
  $91CD  81 15                      LOADL_near             $15
  $91CF  D8 F0 91                   JUMPF_abs              $91F0
  $91D2  0F                         LOADL_quick   ; inline operand = 15
  $91D3  D8 F0 91                   JUMPF_abs              $91F0
  $91D6  07                         LOADL_quick   ; inline operand = 7
  $91D7  D8 F0 91                   JUMPF_abs              $91F0
  $91DA  06                         LOADL_quick   ; inline operand = 6
  $91DB  1E                         LOADR_quick   ; inline operand = 14
  $91DC  C9                         UCMPGE
  $91DD  D8 F0 91                   JUMPF_abs              $91F0
  $91E0  40                         LOADL_qimm   ; inline operand = 0
  $91E1  26                         STORE_quick   ; inline operand = 6
  $91E2  42                         LOADL_qimm   ; inline operand = 2
  $91E3  D6 EF 91                   JUMP_abs               $91EF
 >$91E6  40                         LOADL_qimm   ; inline operand = 0
  $91E7  D6 EF 91                   JUMP_abs               $91EF
 >$91EA  07                         LOADL_quick   ; inline operand = 7
  $91EB  D7 F0 91                   JUMPT_abs              $91F0
  $91EE  41                         LOADL_qimm   ; inline operand = 1
 >$91EF  27                         STORE_quick   ; inline operand = 7
 >$91F0  07                         LOADL_quick   ; inline operand = 7
  $91F1  D8 0D 92                   JUMPF_abs              $920D
  $91F4  07                         LOADL_quick   ; inline operand = 7
  $91F5  51                         LOADR_qimm   ; inline operand = 1
  $91F6  C0                         CMPEQ
  $91F7  D8 03 92                   JUMPF_abs              $9203
  $91FA  06                         LOADL_quick   ; inline operand = 6
  $91FB  1E                         LOADR_quick   ; inline operand = 14
  $91FC  C6                         UCMPLT
  $91FD  D7 03 91                   JUMPT_abs              $9103
  $9200  D6 C4 91                   JUMP_abs               $91C4
 >$9203  06                         LOADL_quick   ; inline operand = 6
  $9204  1F                         LOADR_quick   ; inline operand = 15
  $9205  C6                         UCMPLT
  $9206  D7 03 91                   JUMPT_abs              $9103
  $9209  0F                         LOADL_quick   ; inline operand = 15
  $920A  D6 C5 91                   JUMP_abs               $91C5
 >$920D  40                         LOADL_qimm   ; inline operand = 0
  $920E  D6 C6 91                   JUMP_abs               $91C6

; ============================================================
; sub $9211   (frame_off=-2, body @ $9216)   [PRG $23211]
; ============================================================
  $9216  60                         PUSH_qimm   ; inline operand = 0
  $9217  60                         PUSH_qimm   ; inline operand = 0
  $9218  69                         PUSH_qimm   ; inline operand = 9
  $9219  6B                         PUSH_qimm   ; inline operand = 11
  $921A  0D                         LOADL_quick   ; inline operand = 13
  $921B  D0                         INC
  $921C  B3                         PUSHL
  $921D  3C                         PUSH_quick   ; inline operand = 12
  $921E  68                         PUSH_qimm   ; inline operand = 8
  $921F  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $9223  0F                         LOADL_quick   ; inline operand = 15
  $9224  1E                         LOADR_quick   ; inline operand = 14
  $9225  BB                         ADD
  $9226  2B                         STORE_quick   ; inline operand = 11
  $9227  D6 4B 92                   JUMP_abs               $924B
 >$922A  0D                         LOADL_quick   ; inline operand = 13
  $922B  D0                         INC
  $922C  B3                         PUSHL
  $922D  3C                         PUSH_quick   ; inline operand = 12
  $922E  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $9232  0F                         LOADL_quick   ; inline operand = 15
  $9233  D3                         BYTE_DEREF
  $9234  57                         LOADR_qimm   ; inline operand = 7
  $9235  B5                         MULT
  $9236  8C 42 65                   LOADR_imm2             $6542
  $9239  BB                         ADD
  $923A  B0                         DEREF
  $923B  B3                         PUSHL
  $923C  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $9240  42                         LOADL_qimm   ; inline operand = 2
  $9241  83 13                      LOADR_near             $13
  $9243  BC                         SUB
  $9244  CD                         SWAP
  $9245  0D                         LOADL_quick   ; inline operand = 13
  $9246  BB                         ADD
  $9247  2D                         STORE_quick   ; inline operand = 13
  $9248  0F                         LOADL_quick   ; inline operand = 15
  $9249  D0                         INC
  $924A  2F                         STORE_quick   ; inline operand = 15
 >$924B  0F                         LOADL_quick   ; inline operand = 15
  $924C  1B                         LOADR_quick   ; inline operand = 11
  $924D  C6                         UCMPLT
  $924E  D7 2A 92                   JUMPT_abs              $922A
  $9251  CF                         RETURN

; ============================================================
; sub $9252   (frame_off=-2, body @ $9257)   [PRG $23252]
; ============================================================
  $9257  0F                         LOADL_quick   ; inline operand = 15
  $9258  1E                         LOADR_quick   ; inline operand = 14
  $9259  BB                         ADD
  $925A  2B                         STORE_quick   ; inline operand = 11
  $925B  D6 83 92                   JUMP_abs               $9283
 >$925E  0D                         LOADL_quick   ; inline operand = 13
  $925F  D0                         INC
  $9260  B3                         PUSHL
  $9261  3C                         PUSH_quick   ; inline operand = 12
  $9262  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $9266  0F                         LOADL_quick   ; inline operand = 15
  $9267  D3                         BYTE_DEREF
  $9268  57                         LOADR_qimm   ; inline operand = 7
  $9269  B5                         MULT
  $926A  8C 96 6C                   LOADR_imm2             $6C96
  $926D  BB                         ADD
  $926E  D3                         BYTE_DEREF
  $926F  5F                         LOADR_qimm   ; inline operand = 15
  $9270  DA                         AND
  $9271  B3                         PUSHL
  $9272  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $9276  B3                         PUSHL
  $9277  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $927B  42                         LOADL_qimm   ; inline operand = 2
  $927C  CD                         SWAP
  $927D  0D                         LOADL_quick   ; inline operand = 13
  $927E  BB                         ADD
  $927F  2D                         STORE_quick   ; inline operand = 13
  $9280  0F                         LOADL_quick   ; inline operand = 15
  $9281  D0                         INC
  $9282  2F                         STORE_quick   ; inline operand = 15
 >$9283  0F                         LOADL_quick   ; inline operand = 15
  $9284  1B                         LOADR_quick   ; inline operand = 11
  $9285  C6                         UCMPLT
  $9286  D7 5E 92                   JUMPT_abs              $925E
  $9289  CF                         RETURN

; ============================================================
; sub $928A   (frame_off=-14, body @ $928F)   [PRG $2328A]
; ============================================================
  $928F  43                         LOADL_qimm   ; inline operand = 3
  $9290  26                         STORE_quick   ; inline operand = 6
  $9291  AC 89 A5                   CALL_abs               $A589 {native}
  $9294  8E E9 00                   PUSH_imm2              $00E9
  $9297  8E AC A3                   PUSH_imm2              $A3AC
  $929A  8E 84 A1                   PUSH_imm2              $A184
  $929D  8D 18                      BYTE_PUSH_imm1         +24
  $929F  8D 17                      BYTE_PUSH_imm1         +23
  $92A1  36                         PUSH_quick   ; inline operand = 6
  $92A2  67                         PUSH_qimm   ; inline operand = 7
  $92A3  69                         PUSH_qimm   ; inline operand = 9
  $92A4  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $92A8  36                         PUSH_quick   ; inline operand = 6
  $92A9  69                         PUSH_qimm   ; inline operand = 9
  $92AA  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $92AE  60                         PUSH_qimm   ; inline operand = 0
  $92AF  8E 95 9A                   PUSH_imm2              $9A95
  $92B2  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $92B6  36                         PUSH_quick   ; inline operand = 6
  $92B7  8D 12                      BYTE_PUSH_imm1         +18
  $92B9  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $92BD  60                         PUSH_qimm   ; inline operand = 0
  $92BE  8E 9A 9A                   PUSH_imm2              $9A9A
  $92C1  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $92C5  60                         PUSH_qimm   ; inline operand = 0
  $92C6  8E F9 00                   PUSH_imm2              $00F9
  $92C9  61                         PUSH_qimm   ; inline operand = 1
  $92CA  8D 15                      BYTE_PUSH_imm1         +21
  $92CC  06                         LOADL_quick   ; inline operand = 6
  $92CD  7C                         ADD_qimm   ; inline operand = 12
  $92CE  B3                         PUSHL
  $92CF  68                         PUSH_qimm   ; inline operand = 8
  $92D0  68                         PUSH_qimm   ; inline operand = 8
  $92D1  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $92D5  06                         LOADL_quick   ; inline operand = 6
  $92D6  7C                         ADD_qimm   ; inline operand = 12
  $92D7  B3                         PUSHL
  $92D8  8D 12                      BYTE_PUSH_imm1         +18
  $92DA  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $92DE  60                         PUSH_qimm   ; inline operand = 0
  $92DF  8E A4 9A                   PUSH_imm2              $9AA4
  $92E2  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $92E6  06                         LOADL_quick   ; inline operand = 6
  $92E7  7D                         ADD_qimm   ; inline operand = 13
  $92E8  B3                         PUSHL
  $92E9  6B                         PUSH_qimm   ; inline operand = 11
  $92EA  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $92EE  61                         PUSH_qimm   ; inline operand = 1
  $92EF  8E AC 9A                   PUSH_imm2              $9AAC
  $92F2  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $92F6  06                         LOADL_quick   ; inline operand = 6
  $92F7  8F 14                      BYTE_ADD_imm1          +20
  $92F9  B3                         PUSHL
  $92FA  68                         PUSH_qimm   ; inline operand = 8
  $92FB  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $92FF  60                         PUSH_qimm   ; inline operand = 0
  $9300  8E B1 9A                   PUSH_imm2              $9AB1
  $9303  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $9307  06                         LOADL_quick   ; inline operand = 6
  $9308  8F 15                      BYTE_ADD_imm1          +21
  $930A  B3                         PUSHL
  $930B  68                         PUSH_qimm   ; inline operand = 8
  $930C  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $9310  60                         PUSH_qimm   ; inline operand = 0
  $9311  8E BB 9A                   PUSH_imm2              $9ABB
  $9314  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $9318  06                         LOADL_quick   ; inline operand = 6
  $9319  8F 16                      BYTE_ADD_imm1          +22
  $931B  B3                         PUSHL
  $931C  68                         PUSH_qimm   ; inline operand = 8
  $931D  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $9321  60                         PUSH_qimm   ; inline operand = 0
  $9322  8E C4 9A                   PUSH_imm2              $9AC4
  $9325  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $9329  3D                         PUSH_quick   ; inline operand = 13
  $932A  3C                         PUSH_quick   ; inline operand = 12
  $932B  06                         LOADL_quick   ; inline operand = 6
  $932C  D0                         INC
  $932D  B3                         PUSHL
  $932E  69                         PUSH_qimm   ; inline operand = 9
  $932F  E9 52 92 08                CALL_abs_imm1          $9252 {bytecode}, $08
  $9333  DE F6 FF                   LEAL_far               $FFF6
  $9336  B3                         PUSHL
  $9337  E9 5A D7 02                CALL_abs_imm1          $D75A {native}, $02
  $933B  25                         STORE_quick   ; inline operand = 5
  $933C  60                         PUSH_qimm   ; inline operand = 0
  $933D  DE F6 FF                   LEAL_far               $FFF6
  $9340  B3                         PUSHL
  $9341  35                         PUSH_quick   ; inline operand = 5
  $9342  06                         LOADL_quick   ; inline operand = 6
  $9343  D0                         INC
  $9344  B3                         PUSHL
  $9345  8D 12                      BYTE_PUSH_imm1         +18
  $9347  E9 11 92 0A                CALL_abs_imm1          $9211 {bytecode}, $0A
  $934B  DE F6 FF                   LEAL_far               $FFF6
  $934E  B3                         PUSHL
  $934F  E9 D6 D6 02                CALL_abs_imm1          $D6D6 {native}, $02
  $9353  25                         STORE_quick   ; inline operand = 5
  $9354  61                         PUSH_qimm   ; inline operand = 1
  $9355  DE F6 FF                   LEAL_far               $FFF6
  $9358  B3                         PUSHL
  $9359  35                         PUSH_quick   ; inline operand = 5
  $935A  06                         LOADL_quick   ; inline operand = 6
  $935B  7D                         ADD_qimm   ; inline operand = 13
  $935C  B3                         PUSHL
  $935D  8D 12                      BYTE_PUSH_imm1         +18
  $935F  E9 11 92 0A                CALL_abs_imm1          $9211 {bytecode}, $0A
  $9363  CF                         RETURN

; ============================================================
; sub $9364   (frame_off=-2, body @ $9369)   [PRG $23364]
; ============================================================
  $9369  0C                         LOADL_quick   ; inline operand = 12
  $936A  1E                         LOADR_quick   ; inline operand = 14
  $936B  BB                         ADD
  $936C  2B                         STORE_quick   ; inline operand = 11
  $936D  D6 82 93                   JUMP_abs               $9382
 >$9370  0D                         LOADL_quick   ; inline operand = 13
  $9371  D3                         BYTE_DEREF
  $9372  B3                         PUSHL
  $9373  0C                         LOADL_quick   ; inline operand = 12
  $9374  D3                         BYTE_DEREF
  $9375  B4                         POPR
  $9376  C1                         CMPNE
  $9377  D8 7C 93                   JUMPF_abs              $937C
  $937A  40                         LOADL_qimm   ; inline operand = 0
  $937B  CF                         RETURN
 >$937C  0D                         LOADL_quick   ; inline operand = 13
  $937D  D0                         INC
  $937E  2D                         STORE_quick   ; inline operand = 13
  $937F  0C                         LOADL_quick   ; inline operand = 12
  $9380  D0                         INC
  $9381  2C                         STORE_quick   ; inline operand = 12
 >$9382  0C                         LOADL_quick   ; inline operand = 12
  $9383  1B                         LOADR_quick   ; inline operand = 11
  $9384  C6                         UCMPLT
  $9385  D7 70 93                   JUMPT_abs              $9370
  $9388  41                         LOADL_qimm   ; inline operand = 1
  $9389  CF                         RETURN

; ============================================================
; sub $938A   (frame_off=-4, body @ $938F)   [PRG $2338A]
; ============================================================
  $938F  0F                         LOADL_quick   ; inline operand = 15
  $9390  57                         LOADR_qimm   ; inline operand = 7
  $9391  B5                         MULT
  $9392  8C 90 6C                   LOADR_imm2             $6C90
  $9395  BB                         ADD
  $9396  2B                         STORE_quick   ; inline operand = 11
  $9397  0B                         LOADL_quick   ; inline operand = 11
  $9398  76                         ADD_qimm   ; inline operand = 6
  $9399  D3                         BYTE_DEREF
  $939A  5F                         LOADR_qimm   ; inline operand = 15
  $939B  DA                         AND
  $939C  8B 18                      BYTE_LOADR_imm1        +24
  $939E  B5                         MULT
  $939F  8C A4 6A                   LOADR_imm2             $6AA4
  $93A2  BB                         ADD
  $93A3  2A                         STORE_quick   ; inline operand = 10
  $93A4  3A                         PUSH_quick   ; inline operand = 10
  $93A5  0C                         LOADL_quick   ; inline operand = 12
  $93A6  D4                         BYTE_POPSTORE
  $93A7  0E                         LOADL_quick   ; inline operand = 14
  $93A8  57                         LOADR_qimm   ; inline operand = 7
  $93A9  B5                         MULT
  $93AA  8C 90 6C                   LOADR_imm2             $6C90
  $93AD  BB                         ADD
  $93AE  2B                         STORE_quick   ; inline operand = 11
  $93AF  0B                         LOADL_quick   ; inline operand = 11
  $93B0  76                         ADD_qimm   ; inline operand = 6
  $93B1  D3                         BYTE_DEREF
  $93B2  5F                         LOADR_qimm   ; inline operand = 15
  $93B3  DA                         AND
  $93B4  8B 18                      BYTE_LOADR_imm1        +24
  $93B6  B5                         MULT
  $93B7  8C A4 6A                   LOADR_imm2             $6AA4
  $93BA  BB                         ADD
  $93BB  2A                         STORE_quick   ; inline operand = 10
  $93BC  3A                         PUSH_quick   ; inline operand = 10
  $93BD  0D                         LOADL_quick   ; inline operand = 13
  $93BE  D4                         BYTE_POPSTORE
  $93BF  CF                         RETURN

; ============================================================
; sub $93C0   (frame_off=-60, body @ $93C5)   [PRG $233C0]
; ============================================================
  $93C5  43                         LOADL_qimm   ; inline operand = 3
  $93C6  85 D6                      STORE_near             $D6
  $93C8  DE FB FF                   LEAL_far               $FFFB
  $93CB  B3                         PUSHL
  $93CC  E9 5A D7 02                CALL_abs_imm1          $D75A {native}, $02
  $93D0  85 E0                      STORE_near             $E0
  $93D2  DE EC FF                   LEAL_far               $FFEC
  $93D5  B3                         PUSHL
  $93D6  E9 D6 D6 02                CALL_abs_imm1          $D6D6 {native}, $02
  $93DA  85 DE                      STORE_near             $DE
  $93DC  81 E0                      LOADL_near             $E0
  $93DE  85 DC                      STORE_near             $DC
  $93E0  81 DE                      LOADL_near             $DE
  $93E2  85 DA                      STORE_near             $DA
  $93E4  65                         PUSH_qimm   ; inline operand = 5
  $93E5  DE F6 FF                   LEAL_far               $FFF6
  $93E8  B3                         PUSHL
  $93E9  DE FB FF                   LEAL_far               $FFFB
  $93EC  B3                         PUSHL
  $93ED  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $93F1  6A                         PUSH_qimm   ; inline operand = 10
  $93F2  DE E2 FF                   LEAL_far               $FFE2
  $93F5  B3                         PUSHL
  $93F6  DE EC FF                   LEAL_far               $FFEC
  $93F9  B3                         PUSHL
  $93FA  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $93FE  40                         LOADL_qimm   ; inline operand = 0
  $93FF  85 D4                      STORE_near             $D4
  $9401  40                         LOADL_qimm   ; inline operand = 0
  $9402  85 CA                      STORE_near             $CA
 >$9404  87 CA                      PUSH_near              $CA
  $9406  87 D4                      PUSH_near              $D4
  $9408  87 DA                      PUSH_near              $DA
  $940A  87 DC                      PUSH_near              $DC
  $940C  87 D6                      PUSH_near              $D6
  $940E  67                         PUSH_qimm   ; inline operand = 7
  $940F  E9 6F 90 0C                CALL_abs_imm1          $906F (fleet_replace_mate) {bytecode}, $0C
  $9413  85 C8                      STORE_near             $C8
  $9415  81 C8                      LOADL_near             $C8
  $9417  D9 02 00 00 00 24 94 FF FF 5A 94 CA ... SWITCH_noncontig       count=2   ; .table 2 (key,target) + default (noncontiguous); SWITCH 0=>$9424 65535=>$945A default=>$94CA
 >$9424  81 DC                      LOADL_near             $DC
  $9426  83 E0                      LOADR_near             $E0
  $9428  C0                         CMPEQ
  $9429  D8 58 94                   JUMPF_abs              $9458
  $942C  81 DA                      LOADL_near             $DA
  $942E  83 DE                      LOADR_near             $DE
  $9430  C0                         CMPEQ
  $9431  D8 58 94                   JUMPF_abs              $9458
  $9434  87 DC                      PUSH_near              $DC
  $9436  DE F6 FF                   LEAL_far               $FFF6
  $9439  B3                         PUSHL
  $943A  DE FB FF                   LEAL_far               $FFFB
  $943D  B3                         PUSHL
  $943E  E9 64 93 06                CALL_abs_imm1          $9364 {bytecode}, $06
  $9442  D8 58 94                   JUMPF_abs              $9458
  $9445  87 DA                      PUSH_near              $DA
  $9447  DE E2 FF                   LEAL_far               $FFE2
  $944A  B3                         PUSHL
  $944B  DE EC FF                   LEAL_far               $FFEC
  $944E  B3                         PUSHL
  $944F  E9 64 93 06                CALL_abs_imm1          $9364 {bytecode}, $06
  $9453  D8 58 94                   JUMPF_abs              $9458
  $9456  40                         LOADL_qimm   ; inline operand = 0
  $9457  CF                         RETURN
 >$9458  41                         LOADL_qimm   ; inline operand = 1
  $9459  CF                         RETURN
 >$945A  40                         LOADL_qimm   ; inline operand = 0
  $945B  D6 89 94                   JUMP_abs               $9489
 >$945E  0D                         LOADL_quick   ; inline operand = 13
  $945F  83 D8                      LOADR_near             $D8
  $9461  BB                         ADD
  $9462  D3                         BYTE_DEREF
  $9463  57                         LOADR_qimm   ; inline operand = 7
  $9464  B5                         MULT
  $9465  8C 90 6C                   LOADR_imm2             $6C90
  $9468  BB                         ADD
  $9469  85 C6                      STORE_near             $C6
  $946B  81 C6                      LOADL_near             $C6
  $946D  76                         ADD_qimm   ; inline operand = 6
  $946E  D3                         BYTE_DEREF
  $946F  5F                         LOADR_qimm   ; inline operand = 15
  $9470  DA                         AND
  $9471  8B 18                      BYTE_LOADR_imm1        +24
  $9473  B5                         MULT
  $9474  8C A4 6A                   LOADR_imm2             $6AA4
  $9477  BB                         ADD
  $9478  85 C4                      STORE_near             $C4
  $947A  87 C4                      PUSH_near              $C4
  $947C  DE FB FF                   LEAL_far               $FFFB
  $947F  B3                         PUSHL
  $9480  81 D8                      LOADL_near             $D8
  $9482  B4                         POPR
  $9483  BB                         ADD
  $9484  D3                         BYTE_DEREF
  $9485  D4                         BYTE_POPSTORE
  $9486  81 D8                      LOADL_near             $D8
  $9488  D0                         INC
 >$9489  85 D8                      STORE_near             $D8
  $948B  81 D8                      LOADL_near             $D8
  $948D  1C                         LOADR_quick   ; inline operand = 12
  $948E  C6                         UCMPLT
  $948F  D7 5E 94                   JUMPT_abs              $945E
  $9492  DE F6 FF                   LEAL_far               $FFF6
  $9495  B3                         PUSHL
  $9496  E9 5A D7 02                CALL_abs_imm1          $D75A {native}, $02
  $949A  85 DC                      STORE_near             $DC
  $949C  DE E2 FF                   LEAL_far               $FFE2
  $949F  B3                         PUSHL
  $94A0  E9 D6 D6 02                CALL_abs_imm1          $D6D6 {native}, $02
  $94A4  85 DA                      STORE_near             $DA
  $94A6  60                         PUSH_qimm   ; inline operand = 0
  $94A7  DE F6 FF                   LEAL_far               $FFF6
  $94AA  B3                         PUSHL
  $94AB  87 DC                      PUSH_near              $DC
  $94AD  81 D6                      LOADL_near             $D6
  $94AF  D0                         INC
  $94B0  B3                         PUSHL
  $94B1  8D 12                      BYTE_PUSH_imm1         +18
  $94B3  E9 11 92 0A                CALL_abs_imm1          $9211 {bytecode}, $0A
  $94B7  61                         PUSH_qimm   ; inline operand = 1
  $94B8  DE E2 FF                   LEAL_far               $FFE2
  $94BB  B3                         PUSHL
  $94BC  87 DA                      PUSH_near              $DA
  $94BE  81 D6                      LOADL_near             $D6
  $94C0  7D                         ADD_qimm   ; inline operand = 13
  $94C1  B3                         PUSHL
  $94C2  8D 12                      BYTE_PUSH_imm1         +18
  $94C4  E9 11 92 0A                CALL_abs_imm1          $9211 {bytecode}, $0A
  $94C8  40                         LOADL_qimm   ; inline operand = 0
  $94C9  CF                         RETURN
 >$94CA  81 D4                      LOADL_near             $D4
  $94CC  D7 F7 94                   JUMPT_abs              $94F7
  $94CF  DE F6 FF                   LEAL_far               $FFF6
  $94D2  B3                         PUSHL
  $94D3  81 C8                      LOADL_near             $C8
  $94D5  5A                         LOADR_qimm   ; inline operand = 10
  $94D6  BA                         UMOD
  $94D7  B4                         POPR
  $94D8  BB                         ADD
  $94D9  D3                         BYTE_DEREF
  $94DA  85 D2                      STORE_near             $D2
  $94DC  81 C8                      LOADL_near             $C8
  $94DE  5A                         LOADR_qimm   ; inline operand = 10
  $94DF  BA                         UMOD
  $94E0  1D                         LOADR_quick   ; inline operand = 13
  $94E1  BB                         ADD
  $94E2  D3                         BYTE_DEREF
  $94E3  85 CE                      STORE_near             $CE
  $94E5  81 D2                      LOADL_near             $D2
  $94E7  D8 ED 94                   JUMPF_abs              $94ED
  $94EA  41                         LOADL_qimm   ; inline operand = 1
  $94EB  85 CA                      STORE_near             $CA
 >$94ED  81 D4                      LOADL_near             $D4
  $94EF  D0                         INC
 >$94F0  85 D4                      STORE_near             $D4
 >$94F2  41                         LOADL_qimm   ; inline operand = 1
  $94F3  D7 04 94                   JUMPT_abs              $9404
  $94F6  CF                         RETURN
 >$94F7  81 C8                      LOADL_near             $C8
  $94F9  8B 14                      BYTE_LOADR_imm1        +20
  $94FB  C6                         UCMPLT
  $94FC  D8 16 95                   JUMPF_abs              $9516
  $94FF  DE F6 FF                   LEAL_far               $FFF6
  $9502  B3                         PUSHL
  $9503  81 C8                      LOADL_near             $C8
  $9505  5A                         LOADR_qimm   ; inline operand = 10
  $9506  BA                         UMOD
  $9507  B4                         POPR
  $9508  BB                         ADD
  $9509  D3                         BYTE_DEREF
  $950A  85 D0                      STORE_near             $D0
  $950C  81 C8                      LOADL_near             $C8
  $950E  5A                         LOADR_qimm   ; inline operand = 10
  $950F  BA                         UMOD
  $9510  1D                         LOADR_quick   ; inline operand = 13
  $9511  BB                         ADD
  $9512  D3                         BYTE_DEREF
  $9513  D6 25 95                   JUMP_abs               $9525
 >$9516  DE E2 FF                   LEAL_far               $FFE2
  $9519  B3                         PUSHL
  $951A  81 C8                      LOADL_near             $C8
  $951C  5A                         LOADR_qimm   ; inline operand = 10
  $951D  BA                         UMOD
  $951E  B4                         POPR
  $951F  BB                         ADD
  $9520  D3                         BYTE_DEREF
  $9521  85 D0                      STORE_near             $D0
  $9523  81 CE                      LOADL_near             $CE
 >$9525  85 CC                      STORE_near             $CC
  $9527  81 D2                      LOADL_near             $D2
  $9529  83 D0                      LOADR_near             $D0
  $952B  C1                         CMPNE
  $952C  D8 F2 94                   JUMPF_abs              $94F2
  $952F  62                         PUSH_qimm   ; inline operand = 2
  $9530  60                         PUSH_qimm   ; inline operand = 0
  $9531  6C                         PUSH_qimm   ; inline operand = 12
  $9532  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $9536  87 CC                      PUSH_near              $CC
  $9538  87 CE                      PUSH_near              $CE
  $953A  87 D0                      PUSH_near              $D0
  $953C  87 D2                      PUSH_near              $D2
  $953E  E9 8A 93 08                CALL_abs_imm1          $938A {bytecode}, $08
  $9542  DE F6 FF                   LEAL_far               $FFF6
  $9545  B3                         PUSHL
  $9546  E9 5A D7 02                CALL_abs_imm1          $D75A {native}, $02
  $954A  85 DC                      STORE_near             $DC
  $954C  DE E2 FF                   LEAL_far               $FFE2
  $954F  B3                         PUSHL
  $9550  E9 D6 D6 02                CALL_abs_imm1          $D6D6 {native}, $02
  $9554  85 DA                      STORE_near             $DA
  $9556  60                         PUSH_qimm   ; inline operand = 0
  $9557  DE F6 FF                   LEAL_far               $FFF6
  $955A  B3                         PUSHL
  $955B  87 DC                      PUSH_near              $DC
  $955D  81 D6                      LOADL_near             $D6
  $955F  D0                         INC
  $9560  B3                         PUSHL
  $9561  8D 12                      BYTE_PUSH_imm1         +18
  $9563  E9 11 92 0A                CALL_abs_imm1          $9211 {bytecode}, $0A
  $9567  61                         PUSH_qimm   ; inline operand = 1
  $9568  DE E2 FF                   LEAL_far               $FFE2
  $956B  B3                         PUSHL
  $956C  87 DA                      PUSH_near              $DA
  $956E  81 D6                      LOADL_near             $D6
  $9570  7D                         ADD_qimm   ; inline operand = 13
  $9571  B3                         PUSHL
  $9572  8D 12                      BYTE_PUSH_imm1         +18
  $9574  E9 11 92 0A                CALL_abs_imm1          $9211 {bytecode}, $0A
  $9578  40                         LOADL_qimm   ; inline operand = 0
  $9579  85 CA                      STORE_near             $CA
  $957B  40                         LOADL_qimm   ; inline operand = 0
  $957C  D6 F0 94                   JUMP_abs               $94F0

; ============================================================
; sub $957F   (frame_off=-11, body @ $9584)   [PRG $2357F]
; ============================================================
  $9584  AC E8 B2                   CALL_abs               $B2E8 {native}
  $9587  DE FB FF                   LEAL_far               $FFFB
  $958A  B3                         PUSHL
  $958B  60                         PUSH_qimm   ; inline operand = 0
  $958C  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $9590  85 F7                      STORE_near             $F7
  $9592  81 F7                      LOADL_near             $F7
  $9594  51                         LOADR_qimm   ; inline operand = 1
  $9595  C0                         CMPEQ
  $9596  D8 A2 95                   JUMPF_abs              $95A2
  $9599  8E CD 9A                   PUSH_imm2              $9ACD
  $959C  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $95A0  40                         LOADL_qimm   ; inline operand = 0
  $95A1  CF                         RETURN
 >$95A2  8E E5 9A                   PUSH_imm2              $9AE5
  $95A5  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $95A9  64                         PUSH_qimm   ; inline operand = 4
  $95AA  65                         PUSH_qimm   ; inline operand = 5
  $95AB  6C                         PUSH_qimm   ; inline operand = 12
  $95AC  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $95B0  60                         PUSH_qimm   ; inline operand = 0
  $95B1  60                         PUSH_qimm   ; inline operand = 0
  $95B2  8D 18                      BYTE_PUSH_imm1         +24
  $95B4  61                         PUSH_qimm   ; inline operand = 1
  $95B5  63                         PUSH_qimm   ; inline operand = 3
  $95B6  8D 1E                      BYTE_PUSH_imm1         +30
  $95B8  68                         PUSH_qimm   ; inline operand = 8
  $95B9  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $95BD  DE FB FF                   LEAL_far               $FFFB
  $95C0  B3                         PUSHL
  $95C1  87 F7                      PUSH_near              $F7
  $95C3  E9 8A 92 04                CALL_abs_imm1          $928A {bytecode}, $04
  $95C7  DE FB FF                   LEAL_far               $FFFB
  $95CA  B3                         PUSHL
  $95CB  87 F7                      PUSH_near              $F7
  $95CD  E9 C0 93 04                CALL_abs_imm1          $93C0 {bytecode}, $04
  $95D1  85 F5                      STORE_near             $F5
  $95D3  AC 98 B5                   CALL_abs               $B598 {native}
  $95D6  AC E8 B2                   CALL_abs               $B2E8 {native}
  $95D9  60                         PUSH_qimm   ; inline operand = 0
  $95DA  8E FE 9A                   PUSH_imm2              $9AFE
  $95DD  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $95E1  60                         PUSH_qimm   ; inline operand = 0
  $95E2  E9 15 D6 02                CALL_abs_imm1          $D615 {native}, $02
  $95E6  B3                         PUSHL
  $95E7  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $95EB  B3                         PUSHL
  $95EC  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $95F0  60                         PUSH_qimm   ; inline operand = 0
  $95F1  8E 15 9B                   PUSH_imm2              $9B15
  $95F4  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $95F8  AC E5 B5                   CALL_abs               $B5E5 {native}
  $95FB  81 F5                      LOADL_near             $F5
  $95FD  CF                         RETURN

; ============================================================
; sub $95FE   (frame_off=-10, body @ $9603)   [PRG $235FE]
; ============================================================
  $9603  8A A4 6A                   LOADL_imm2             $6AA4
  $9606  27                         STORE_quick   ; inline operand = 7
  $9607  40                         LOADL_qimm   ; inline operand = 0
  $9608  2B                         STORE_quick   ; inline operand = 11
  $9609  2A                         STORE_quick   ; inline operand = 10
  $960A  8A 90 6C                   LOADL_imm2             $6C90
  $960D  29                         STORE_quick   ; inline operand = 9
  $960E  8F 23                      BYTE_ADD_imm1          +35
  $9610  28                         STORE_quick   ; inline operand = 8
  $9611  D6 35 96                   JUMP_abs               $9635
 >$9614  09                         LOADL_quick   ; inline operand = 9
  $9615  76                         ADD_qimm   ; inline operand = 6
  $9616  D3                         BYTE_DEREF
  $9617  8B 40                      BYTE_LOADR_imm1        +64
  $9619  DA                         AND
  $961A  D8 2B 96                   JUMPF_abs              $962B
  $961D  07                         LOADL_quick   ; inline operand = 7
  $961E  D3                         BYTE_DEREF
  $961F  D8 2B 96                   JUMPF_abs              $962B
  $9622  3C                         PUSH_quick   ; inline operand = 12
  $9623  0B                         LOADL_quick   ; inline operand = 11
  $9624  D4                         BYTE_POPSTORE
  $9625  0C                         LOADL_quick   ; inline operand = 12
  $9626  D0                         INC
  $9627  2C                         STORE_quick   ; inline operand = 12
  $9628  0A                         LOADL_quick   ; inline operand = 10
  $9629  D0                         INC
  $962A  2A                         STORE_quick   ; inline operand = 10
 >$962B  0B                         LOADL_quick   ; inline operand = 11
  $962C  D0                         INC
  $962D  2B                         STORE_quick   ; inline operand = 11
  $962E  07                         LOADL_quick   ; inline operand = 7
  $962F  8F 18                      BYTE_ADD_imm1          +24
  $9631  27                         STORE_quick   ; inline operand = 7
  $9632  09                         LOADL_quick   ; inline operand = 9
  $9633  77                         ADD_qimm   ; inline operand = 7
  $9634  29                         STORE_quick   ; inline operand = 9
 >$9635  09                         LOADL_quick   ; inline operand = 9
  $9636  18                         LOADR_quick   ; inline operand = 8
  $9637  C6                         UCMPLT
  $9638  D7 14 96                   JUMPT_abs              $9614
  $963B  0A                         LOADL_quick   ; inline operand = 10
  $963C  CF                         RETURN

; ============================================================
; sub $963D   (frame_off=-34, body @ $9642)   [PRG $2363D]
; ============================================================
  $9642  AC E8 B2                   CALL_abs               $B2E8 {native}
  $9645  DE EA FF                   LEAL_far               $FFEA
  $9648  B3                         PUSHL
  $9649  E9 FE 95 02                CALL_abs_imm1          $95FE {bytecode}, $02
  $964D  85 E2                      STORE_near             $E2
  $964F  81 E2                      LOADL_near             $E2
  $9651  D7 5D 96                   JUMPT_abs              $965D
  $9654  8E 18 9B                   PUSH_imm2              $9B18
  $9657  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $965B  40                         LOADL_qimm   ; inline operand = 0
  $965C  CF                         RETURN
 >$965D  DE F6 FF                   LEAL_far               $FFF6
  $9660  26                         STORE_quick   ; inline operand = 6
  $9661  DE EA FF                   LEAL_far               $FFEA
  $9664  20                         STORE_quick   ; inline operand = 0
  $9665  83 E2                      LOADR_near             $E2
  $9667  BB                         ADD
  $9668  85 E6                      STORE_near             $E6
  $966A  D6 8E 96                   JUMP_abs               $968E
 >$966D  00                         LOADL_quick   ; inline operand = 0
  $966E  D3                         BYTE_DEREF
  $966F  57                         LOADR_qimm   ; inline operand = 7
  $9670  B5                         MULT
  $9671  8C 90 6C                   LOADR_imm2             $6C90
  $9674  BB                         ADD
  $9675  85 E4                      STORE_near             $E4
  $9677  30                         PUSH_quick   ; inline operand = 0
  $9678  81 E4                      LOADL_near             $E4
  $967A  76                         ADD_qimm   ; inline operand = 6
  $967B  D3                         BYTE_DEREF
  $967C  5F                         LOADR_qimm   ; inline operand = 15
  $967D  DA                         AND
  $967E  D4                         BYTE_POPSTORE
  $967F  36                         PUSH_quick   ; inline operand = 6
  $9680  00                         LOADL_quick   ; inline operand = 0
  $9681  D3                         BYTE_DEREF
  $9682  B3                         PUSHL
  $9683  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $9687  B1                         POPSTORE
  $9688  06                         LOADL_quick   ; inline operand = 6
  $9689  72                         ADD_qimm   ; inline operand = 2
  $968A  26                         STORE_quick   ; inline operand = 6
  $968B  00                         LOADL_quick   ; inline operand = 0
  $968C  D0                         INC
  $968D  20                         STORE_quick   ; inline operand = 0
 >$968E  00                         LOADL_quick   ; inline operand = 0
  $968F  83 E6                      LOADR_near             $E6
  $9691  C6                         UCMPLT
  $9692  D7 6D 96                   JUMPT_abs              $966D
  $9695  61                         PUSH_qimm   ; inline operand = 1
  $9696  8E 3D 9B                   PUSH_imm2              $9B3D
  $9699  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $969D  DE F6 FF                   LEAL_far               $FFF6
  $96A0  B3                         PUSHL
  $96A1  87 E2                      PUSH_near              $E2
  $96A3  AC 03 80                   CALL_abs               $8003 {bytecode}
  $96A6  B3                         PUSHL
  $96A7  AC 16 80                   CALL_abs               $8016 {bytecode}
  $96AA  B3                         PUSHL
  $96AB  E9 55 81 08                CALL_abs_imm1          $8155 {bytecode}, $08
  $96AF  85 E0                      STORE_near             $E0
  $96B1  40                         LOADL_qimm   ; inline operand = 0
  $96B2  85 DE                      STORE_near             $DE
  $96B4  81 E0                      LOADL_near             $E0
  $96B6  8C FF 00                   LOADR_imm2             $00FF
  $96B9  C1                         CMPNE
  $96BA  D8 F3 96                   JUMPF_abs              $96F3
  $96BD  AC 4B B2                   CALL_abs               $B24B {native}
  $96C0  DE F6 FF                   LEAL_far               $FFF6
  $96C3  B3                         PUSHL
  $96C4  81 E0                      LOADL_near             $E0
  $96C6  D2                         LSHIFT1
  $96C7  B4                         POPR
  $96C8  BB                         ADD
  $96C9  B0                         DEREF
  $96CA  B3                         PUSHL
  $96CB  8E 56 9B                   PUSH_imm2              $9B56
  $96CE  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $96D2  AC 9F CD                   CALL_abs               $CD9F {native}
  $96D5  85 DE                      STORE_near             $DE
  $96D7  81 DE                      LOADL_near             $DE
  $96D9  D8 F3 96                   JUMPF_abs              $96F3
  $96DC  8E BF 00                   PUSH_imm2              $00BF
  $96DF  DE EA FF                   LEAL_far               $FFEA
  $96E2  B3                         PUSHL
  $96E3  81 E0                      LOADL_near             $E0
  $96E5  B4                         POPR
  $96E6  BB                         ADD
  $96E7  D3                         BYTE_DEREF
  $96E8  57                         LOADR_qimm   ; inline operand = 7
  $96E9  B5                         MULT
  $96EA  8C 96 6C                   LOADR_imm2             $6C96
  $96ED  BB                         ADD
  $96EE  B4                         POPR
  $96EF  B3                         PUSHL
  $96F0  D3                         BYTE_DEREF
  $96F1  DA                         AND
  $96F2  D4                         BYTE_POPSTORE
 >$96F3  81 DE                      LOADL_near             $DE
  $96F5  CF                         RETURN

; ============================================================
; sub $96F6   (frame_off=-4, body @ $96FB)   [PRG $236F6]
; ============================================================
 >$96FB  64                         PUSH_qimm   ; inline operand = 4
  $96FC  64                         PUSH_qimm   ; inline operand = 4
  $96FD  8E 68 9B                   PUSH_imm2              $9B68
  $9700  61                         PUSH_qimm   ; inline operand = 1
  $9701  60                         PUSH_qimm   ; inline operand = 0
  $9702  E9 EB A0 0A                CALL_abs_imm1          $A0EB {native}, $0A
  $9706  2B                         STORE_quick   ; inline operand = 11
  $9707  0B                         LOADL_quick   ; inline operand = 11
  $9708  8C FF 00                   LOADR_imm2             $00FF
  $970B  C0                         CMPEQ
  $970C  D8 11 97                   JUMPF_abs              $9711
  $970F  40                         LOADL_qimm   ; inline operand = 0
  $9710  CF                         RETURN
 >$9711  0B                         LOADL_quick   ; inline operand = 11
  $9712  D2                         LSHIFT1
  $9713  8C 70 9B                   LOADR_imm2             $9B70
  $9716  BB                         ADD
  $9717  B0                         DEREF
  $9718  DD                         CALLPTR
  $9719  2A                         STORE_quick   ; inline operand = 10
  $971A  0A                         LOADL_quick   ; inline operand = 10
  $971B  D8 FB 96                   JUMPF_abs              $96FB
  $971E  41                         LOADL_qimm   ; inline operand = 1
  $971F  CF                         RETURN

