VM bytecode disassembly
  ROM:          Uncharted Waters (USA).nes
  mode:         bulk dump of bank 27
  opcode spec:  vm-opcodes-v2.toml via nobunaga_vm.OPCODE_INFO (execution-validated lengths)
  labels:       0 CPU addresses named

  bank 27: found 27 bytecode-subroutine stubs

; ============================================================
; sub $8003   (frame_off=-10, body @ $8008)   [PRG $36003]
; ============================================================
  $8008  40                         LOADL_qimm   ; inline operand = 0
  $8009  A2 FE FF                   BYTE_STORE_far         $FFFE
  $800C  40                         LOADL_qimm   ; inline operand = 0
  $800D  D6 54 80                   JUMP_abs               $8054
 >$8010  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $8013  D8 50 80                   JUMPF_abs              $8050
  $8016  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $8019  53                         LOADR_qimm   ; inline operand = 3
  $801A  C1                         CMPNE
  $801B  D8 50 80                   JUMPF_abs              $8050
  $801E  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $8021  52                         LOADR_qimm   ; inline operand = 2
  $8022  C1                         CMPNE
  $8023  D8 50 80                   JUMPF_abs              $8050
  $8026  A5 66 70                   BYTE_LOADL_abs         $7066
  $8029  B3                         PUSHL
  $802A  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $802D  B3                         PUSHL
  $802E  41                         LOADL_qimm   ; inline operand = 1
  $802F  B4                         POPR
  $8030  BD                         LSHIFT
  $8031  B4                         POPR
  $8032  DA                         AND
  $8033  D8 50 80                   JUMPF_abs              $8050
  $8036  DE F6 FF                   LEAL_far               $FFF6
  $8039  B3                         PUSHL
  $803A  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $803D  B4                         POPR
  $803E  BB                         ADD
  $803F  B3                         PUSHL
  $8040  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $8043  8C 7A 9A                   LOADR_imm2             $9A7A
  $8046  BB                         ADD
  $8047  D3                         BYTE_DEREF
  $8048  D4                         BYTE_POPSTORE
  $8049  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $804C  D0                         INC
  $804D  A2 FE FF                   BYTE_STORE_far         $FFFE
 >$8050  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $8053  D0                         INC
 >$8054  A2 FD FF                   BYTE_STORE_far         $FFFD
  $8057  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $805A  58                         LOADR_qimm   ; inline operand = 8
  $805B  C6                         UCMPLT
  $805C  D7 10 80                   JUMPT_abs              $8010
  $805F  40                         LOADL_qimm   ; inline operand = 0
  $8060  A2 FF FF                   BYTE_STORE_far         $FFFF
  $8063  40                         LOADL_qimm   ; inline operand = 0
  $8064  D6 A6 80                   JUMP_abs               $80A6
 >$8067  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $806A  B3                         PUSHL
  $806B  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $806F  A2 FC FF                   BYTE_STORE_far         $FFFC
  $8072  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8075  B3                         PUSHL
  $8076  A0 FC FF                   BYTE_LOADL_far         $FFFC
  $8079  B3                         PUSHL
  $807A  41                         LOADL_qimm   ; inline operand = 1
  $807B  B4                         POPR
  $807C  BD                         LSHIFT
  $807D  B4                         POPR
  $807E  DA                         AND
  $807F  D7 67 80                   JUMPT_abs              $8067
  $8082  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $8085  1C                         LOADR_quick   ; inline operand = 12
  $8086  BB                         ADD
  $8087  B3                         PUSHL
  $8088  DE F6 FF                   LEAL_far               $FFF6
  $808B  B3                         PUSHL
  $808C  A0 FC FF                   BYTE_LOADL_far         $FFFC
  $808F  B4                         POPR
  $8090  BB                         ADD
  $8091  D3                         BYTE_DEREF
  $8092  D4                         BYTE_POPSTORE
  $8093  A0 FC FF                   BYTE_LOADL_far         $FFFC
  $8096  B3                         PUSHL
  $8097  41                         LOADL_qimm   ; inline operand = 1
  $8098  B4                         POPR
  $8099  BD                         LSHIFT
  $809A  CD                         SWAP
  $809B  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $809E  DB                         OR
  $809F  A2 FF FF                   BYTE_STORE_far         $FFFF
  $80A2  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $80A5  D0                         INC
 >$80A6  A2 FD FF                   BYTE_STORE_far         $FFFD
  $80A9  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $80AC  53                         LOADR_qimm   ; inline operand = 3
  $80AD  C6                         UCMPLT
  $80AE  D7 67 80                   JUMPT_abs              $8067
  $80B1  0C                         LOADL_quick   ; inline operand = 12
  $80B2  73                         ADD_qimm   ; inline operand = 3
  $80B3  B3                         PUSHL
  $80B4  40                         LOADL_qimm   ; inline operand = 0
  $80B5  D4                         BYTE_POPSTORE
  $80B6  CF                         RETURN

; ============================================================
; sub $80B7   (frame_off=-1, body @ $80BC)   [PRG $360B7]
; ============================================================
  $80BC  A0 0B 00                   BYTE_LOADL_far         $000B
  $80BF  54                         LOADR_qimm   ; inline operand = 4
  $80C0  BE                         URSHIFT
  $80C1  5F                         LOADR_qimm   ; inline operand = 15
  $80C2  DA                         AND
  $80C3  A2 FF FF                   BYTE_STORE_far         $FFFF
  $80C6  A0 0B 00                   BYTE_LOADL_far         $000B
  $80C9  5F                         LOADR_qimm   ; inline operand = 15
  $80CA  DA                         AND
  $80CB  B3                         PUSHL
  $80CC  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $80CF  5C                         LOADR_qimm   ; inline operand = 12
  $80D0  C0                         CMPEQ
  $80D1  D8 D8 80                   JUMPF_abs              $80D8
  $80D4  40                         LOADL_qimm   ; inline operand = 0
  $80D5  D6 DC 80                   JUMP_abs               $80DC
 >$80D8  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $80DB  D0                         INC
 >$80DC  B3                         PUSHL
  $80DD  A0 0F 00                   BYTE_LOADL_far         $000F
  $80E0  B3                         PUSHL
  $80E1  A0 0D 00                   BYTE_LOADL_far         $000D
  $80E4  B3                         PUSHL
  $80E5  8E 6B 80                   PUSH_imm2              $806B
  $80E8  8E DC 00                   PUSH_imm2              $00DC
  $80EB  61                         PUSH_qimm   ; inline operand = 1
  $80EC  E9 3A DE 0E                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $0E
  $80F0  CF                         RETURN

; ============================================================
; sub $80F1   (frame_off=+0, body @ $80F6)   [PRG $360F1]
; ============================================================
  $80F6  0E                         LOADL_quick   ; inline operand = 14
  $80F7  51                         LOADR_qimm   ; inline operand = 1
  $80F8  C0                         CMPEQ
  $80F9  D8 0C 81                   JUMPF_abs              $810C
  $80FC  3D                         PUSH_quick   ; inline operand = 13
  $80FD  3C                         PUSH_quick   ; inline operand = 12
  $80FE  8E 39 8B                   PUSH_imm2              $8B39
  $8101  8E DC 00                   PUSH_imm2              $00DC
  $8104  61                         PUSH_qimm   ; inline operand = 1
  $8105  E9 3A DE 0A                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $0A
  $8109  D6 2F 81                   JUMP_abs               $812F
 >$810C  42                         LOADL_qimm   ; inline operand = 2
  $810D  CD                         SWAP
  $810E  0E                         LOADL_quick   ; inline operand = 14
  $810F  BC                         SUB
  $8110  2E                         STORE_quick   ; inline operand = 14
  $8111  8E E2 00                   PUSH_imm2              $00E2
  $8114  0E                         LOADL_quick   ; inline operand = 14
  $8115  D2                         LSHIFT1
  $8116  D2                         LSHIFT1
  $8117  8C 84 9A                   LOADR_imm2             $9A84
  $811A  BB                         ADD
  $811B  B0                         DEREF
  $811C  B3                         PUSHL
  $811D  0E                         LOADL_quick   ; inline operand = 14
  $811E  D2                         LSHIFT1
  $811F  D2                         LSHIFT1
  $8120  8C 82 9A                   LOADR_imm2             $9A82
  $8123  BB                         ADD
  $8124  B0                         DEREF
  $8125  B3                         PUSHL
  $8126  63                         PUSH_qimm   ; inline operand = 3
  $8127  63                         PUSH_qimm   ; inline operand = 3
  $8128  3D                         PUSH_quick   ; inline operand = 13
  $8129  3C                         PUSH_quick   ; inline operand = 12
  $812A  69                         PUSH_qimm   ; inline operand = 9
  $812B  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
 >$812F  CF                         RETURN

; ============================================================
; sub $8130   (frame_off=-10, body @ $8135)   [PRG $36130]
; ============================================================
  $8135  60                         PUSH_qimm   ; inline operand = 0
  $8136  64                         PUSH_qimm   ; inline operand = 4
  $8137  DE FA FF                   LEAL_far               $FFFA
  $813A  B3                         PUSHL
  $813B  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $813F  41                         LOADL_qimm   ; inline operand = 1
  $8140  28                         STORE_quick   ; inline operand = 8
 >$8141  DE FA FF                   LEAL_far               $FFFA
  $8144  B3                         PUSHL
  $8145  0C                         LOADL_quick   ; inline operand = 12
  $8146  18                         LOADR_quick   ; inline operand = 8
  $8147  BB                         ADD
  $8148  D3                         BYTE_DEREF
  $8149  5F                         LOADR_qimm   ; inline operand = 15
  $814A  DA                         AND
  $814B  B4                         POPR
  $814C  BB                         ADD
  $814D  B3                         PUSHL
  $814E  D3                         BYTE_DEREF
  $814F  D0                         INC
  $8150  D4                         BYTE_POPSTORE
  $8151  08                         LOADL_quick   ; inline operand = 8
  $8152  D0                         INC
  $8153  28                         STORE_quick   ; inline operand = 8
  $8154  08                         LOADL_quick   ; inline operand = 8
  $8155  55                         LOADR_qimm   ; inline operand = 5
  $8156  C6                         UCMPLT
  $8157  D7 41 81                   JUMPT_abs              $8141
  $815A  40                         LOADL_qimm   ; inline operand = 0
  $815B  A2 FF FF                   BYTE_STORE_far         $FFFF
  $815E  40                         LOADL_qimm   ; inline operand = 0
  $815F  D6 84 81                   JUMP_abs               $8184
 >$8162  DE FA FF                   LEAL_far               $FFFA
  $8165  B3                         PUSHL
  $8166  08                         LOADL_quick   ; inline operand = 8
  $8167  B4                         POPR
  $8168  BB                         ADD
  $8169  D3                         BYTE_DEREF
  $816A  B3                         PUSHL
  $816B  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $816E  B4                         POPR
  $816F  C6                         UCMPLT
  $8170  D8 82 81                   JUMPF_abs              $8182
  $8173  DE FA FF                   LEAL_far               $FFFA
  $8176  B3                         PUSHL
  $8177  08                         LOADL_quick   ; inline operand = 8
  $8178  B4                         POPR
  $8179  BB                         ADD
  $817A  D3                         BYTE_DEREF
  $817B  A2 FF FF                   BYTE_STORE_far         $FFFF
  $817E  08                         LOADL_quick   ; inline operand = 8
  $817F  A2 FE FF                   BYTE_STORE_far         $FFFE
 >$8182  08                         LOADL_quick   ; inline operand = 8
  $8183  D0                         INC
 >$8184  28                         STORE_quick   ; inline operand = 8
  $8185  08                         LOADL_quick   ; inline operand = 8
  $8186  54                         LOADR_qimm   ; inline operand = 4
  $8187  C6                         UCMPLT
  $8188  D7 62 81                   JUMPT_abs              $8162
  $818B  40                         LOADL_qimm   ; inline operand = 0
  $818C  28                         STORE_quick   ; inline operand = 8
  $818D  27                         STORE_quick   ; inline operand = 7
  $818E  D6 B7 81                   JUMP_abs               $81B7
 >$8191  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $8194  B3                         PUSHL
  $8195  0C                         LOADL_quick   ; inline operand = 12
  $8196  18                         LOADR_quick   ; inline operand = 8
  $8197  BB                         ADD
  $8198  D3                         BYTE_DEREF
  $8199  5F                         LOADR_qimm   ; inline operand = 15
  $819A  DA                         AND
  $819B  B4                         POPR
  $819C  C1                         CMPNE
  $819D  D8 B4 81                   JUMPF_abs              $81B4
  $81A0  0D                         LOADL_quick   ; inline operand = 13
  $81A1  17                         LOADR_quick   ; inline operand = 7
  $81A2  BB                         ADD
  $81A3  B3                         PUSHL
  $81A4  0C                         LOADL_quick   ; inline operand = 12
  $81A5  18                         LOADR_quick   ; inline operand = 8
  $81A6  BB                         ADD
  $81A7  D3                         BYTE_DEREF
  $81A8  D4                         BYTE_POPSTORE
  $81A9  0C                         LOADL_quick   ; inline operand = 12
  $81AA  18                         LOADR_quick   ; inline operand = 8
  $81AB  BB                         ADD
  $81AC  B3                         PUSHL
  $81AD  8A FF 00                   LOADL_imm2             $00FF
  $81B0  D4                         BYTE_POPSTORE
  $81B1  07                         LOADL_quick   ; inline operand = 7
  $81B2  D0                         INC
  $81B3  27                         STORE_quick   ; inline operand = 7
 >$81B4  08                         LOADL_quick   ; inline operand = 8
  $81B5  D0                         INC
  $81B6  28                         STORE_quick   ; inline operand = 8
 >$81B7  08                         LOADL_quick   ; inline operand = 8
  $81B8  55                         LOADR_qimm   ; inline operand = 5
  $81B9  C6                         UCMPLT
  $81BA  D7 91 81                   JUMPT_abs              $8191
  $81BD  07                         LOADL_quick   ; inline operand = 7
  $81BE  CF                         RETURN

; ============================================================
; sub $81BF   (frame_off=-5, body @ $81C4)   [PRG $361BF]
; ============================================================
  $81C4  40                         LOADL_qimm   ; inline operand = 0
  $81C5  85 FB                      STORE_near             $FB
  $81C7  0C                         LOADL_quick   ; inline operand = 12
  $81C8  D3                         BYTE_DEREF
  $81C9  54                         LOADR_qimm   ; inline operand = 4
  $81CA  BE                         URSHIFT
  $81CB  A2 FF FF                   BYTE_STORE_far         $FFFF
  $81CE  41                         LOADL_qimm   ; inline operand = 1
  $81CF  D6 1C 82                   JUMP_abs               $821C
 >$81D2  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $81D5  D0                         INC
  $81D6  B3                         PUSHL
  $81D7  0C                         LOADL_quick   ; inline operand = 12
  $81D8  83 FD                      LOADR_near             $FD
  $81DA  BB                         ADD
  $81DB  D3                         BYTE_DEREF
  $81DC  54                         LOADR_qimm   ; inline operand = 4
  $81DD  BE                         URSHIFT
  $81DE  B4                         POPR
  $81DF  C1                         CMPNE
  $81E0  D8 F4 81                   JUMPF_abs              $81F4
  $81E3  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $81E6  72                         ADD_qimm   ; inline operand = 2
  $81E7  B3                         PUSHL
  $81E8  0C                         LOADL_quick   ; inline operand = 12
  $81E9  83 FD                      LOADR_near             $FD
  $81EB  BB                         ADD
  $81EC  D3                         BYTE_DEREF
  $81ED  54                         LOADR_qimm   ; inline operand = 4
  $81EE  BE                         URSHIFT
  $81EF  B4                         POPR
  $81F0  C1                         CMPNE
  $81F1  D7 0F 82                   JUMPT_abs              $820F
 >$81F4  0D                         LOADL_quick   ; inline operand = 13
  $81F5  83 FB                      LOADR_near             $FB
  $81F7  BB                         ADD
  $81F8  B3                         PUSHL
  $81F9  0C                         LOADL_quick   ; inline operand = 12
  $81FA  83 FD                      LOADR_near             $FD
  $81FC  BB                         ADD
  $81FD  D1                         DEC
  $81FE  D3                         BYTE_DEREF
  $81FF  D4                         BYTE_POPSTORE
  $8200  0C                         LOADL_quick   ; inline operand = 12
  $8201  83 FD                      LOADR_near             $FD
  $8203  BB                         ADD
  $8204  D1                         DEC
  $8205  B3                         PUSHL
  $8206  8A FF 00                   LOADL_imm2             $00FF
  $8209  D4                         BYTE_POPSTORE
  $820A  81 FB                      LOADL_near             $FB
  $820C  D0                         INC
  $820D  85 FB                      STORE_near             $FB
 >$820F  0C                         LOADL_quick   ; inline operand = 12
  $8210  83 FD                      LOADR_near             $FD
  $8212  BB                         ADD
  $8213  D3                         BYTE_DEREF
  $8214  54                         LOADR_qimm   ; inline operand = 4
  $8215  BE                         URSHIFT
  $8216  A2 FF FF                   BYTE_STORE_far         $FFFF
  $8219  81 FD                      LOADL_near             $FD
  $821B  D0                         INC
 >$821C  85 FD                      STORE_near             $FD
  $821E  81 FD                      LOADL_near             $FD
  $8220  55                         LOADR_qimm   ; inline operand = 5
  $8221  C6                         UCMPLT
  $8222  D7 D2 81                   JUMPT_abs              $81D2
  $8225  81 FB                      LOADL_near             $FB
  $8227  CF                         RETURN

; ============================================================
; sub $8228   (frame_off=-26, body @ $822D)   [PRG $36228]
; ============================================================
  $822D  60                         PUSH_qimm   ; inline operand = 0
  $822E  6D                         PUSH_qimm   ; inline operand = 13
  $822F  DE F3 FF                   LEAL_far               $FFF3
  $8232  B3                         PUSHL
  $8233  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $8237  40                         LOADL_qimm   ; inline operand = 0
  $8238  20                         STORE_quick   ; inline operand = 0
 >$8239  DE F3 FF                   LEAL_far               $FFF3
  $823C  B3                         PUSHL
  $823D  0C                         LOADL_quick   ; inline operand = 12
  $823E  10                         LOADR_quick   ; inline operand = 0
  $823F  BB                         ADD
  $8240  D3                         BYTE_DEREF
  $8241  54                         LOADR_qimm   ; inline operand = 4
  $8242  BE                         URSHIFT
  $8243  5F                         LOADR_qimm   ; inline operand = 15
  $8244  DA                         AND
  $8245  B4                         POPR
  $8246  BB                         ADD
  $8247  B3                         PUSHL
  $8248  D3                         BYTE_DEREF
  $8249  D0                         INC
  $824A  D4                         BYTE_POPSTORE
  $824B  00                         LOADL_quick   ; inline operand = 0
  $824C  D0                         INC
  $824D  20                         STORE_quick   ; inline operand = 0
  $824E  00                         LOADL_quick   ; inline operand = 0
  $824F  55                         LOADR_qimm   ; inline operand = 5
  $8250  C6                         UCMPLT
  $8251  D7 39 82                   JUMPT_abs              $8239
  $8254  40                         LOADL_qimm   ; inline operand = 0
  $8255  20                         STORE_quick   ; inline operand = 0
  $8256  85 E6                      STORE_near             $E6
  $8258  D6 89 82                   JUMP_abs               $8289
 >$825B  DE F3 FF                   LEAL_far               $FFF3
  $825E  B3                         PUSHL
  $825F  0C                         LOADL_quick   ; inline operand = 12
  $8260  10                         LOADR_quick   ; inline operand = 0
  $8261  BB                         ADD
  $8262  D3                         BYTE_DEREF
  $8263  54                         LOADR_qimm   ; inline operand = 4
  $8264  BE                         URSHIFT
  $8265  5F                         LOADR_qimm   ; inline operand = 15
  $8266  DA                         AND
  $8267  B4                         POPR
  $8268  BB                         ADD
  $8269  D3                         BYTE_DEREF
  $826A  51                         LOADR_qimm   ; inline operand = 1
  $826B  C0                         CMPEQ
  $826C  D8 86 82                   JUMPF_abs              $8286
  $826F  0D                         LOADL_quick   ; inline operand = 13
  $8270  83 E6                      LOADR_near             $E6
  $8272  BB                         ADD
  $8273  B3                         PUSHL
  $8274  0C                         LOADL_quick   ; inline operand = 12
  $8275  10                         LOADR_quick   ; inline operand = 0
  $8276  BB                         ADD
  $8277  D3                         BYTE_DEREF
  $8278  D4                         BYTE_POPSTORE
  $8279  0C                         LOADL_quick   ; inline operand = 12
  $827A  10                         LOADR_quick   ; inline operand = 0
  $827B  BB                         ADD
  $827C  B3                         PUSHL
  $827D  8A FF 00                   LOADL_imm2             $00FF
  $8280  D4                         BYTE_POPSTORE
  $8281  81 E6                      LOADL_near             $E6
  $8283  D0                         INC
  $8284  85 E6                      STORE_near             $E6
 >$8286  00                         LOADL_quick   ; inline operand = 0
  $8287  D0                         INC
  $8288  20                         STORE_quick   ; inline operand = 0
 >$8289  00                         LOADL_quick   ; inline operand = 0
  $828A  55                         LOADR_qimm   ; inline operand = 5
  $828B  C6                         UCMPLT
  $828C  D7 5B 82                   JUMPT_abs              $825B
  $828F  81 E6                      LOADL_near             $E6
  $8291  CF                         RETURN

; ============================================================
; sub $8292   (frame_off=-1, body @ $8297)   [PRG $36292]
; ============================================================
  $8297  65                         PUSH_qimm   ; inline operand = 5
  $8298  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $829C  D8 A3 82                   JUMPF_abs              $82A3
  $829F  44                         LOADL_qimm   ; inline operand = 4
  $82A0  D6 A4 82                   JUMP_abs               $82A4
 >$82A3  45                         LOADL_qimm   ; inline operand = 5
 >$82A4  A2 FF FF                   BYTE_STORE_far         $FFFF
  $82A7  8E FF 00                   PUSH_imm2              $00FF
  $82AA  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $82AD  B3                         PUSHL
  $82AE  3C                         PUSH_quick   ; inline operand = 12
  $82AF  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $82B3  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $82B6  CF                         RETURN

; ============================================================
; sub $82B7   (frame_off=-13, body @ $82BC)   [PRG $362B7]
; ============================================================
  $82BC  DE F7 FF                   LEAL_far               $FFF7
  $82BF  B3                         PUSHL
  $82C0  3C                         PUSH_quick   ; inline operand = 12
  $82C1  E9 FE 96 04                CALL_abs_imm1          $96FE {bytecode}, $04
  $82C5  85 F3                      STORE_near             $F3
  $82C7  A0 F7 FF                   BYTE_LOADL_far         $FFF7
  $82CA  A2 F6 FF                   BYTE_STORE_far         $FFF6
  $82CD  81 F3                      LOADL_near             $F3
  $82CF  D8 D4 82                   JUMPF_abs              $82D4
  $82D2  40                         LOADL_qimm   ; inline operand = 0
  $82D3  CF                         RETURN
 >$82D4  A0 F6 FF                   BYTE_LOADL_far         $FFF6
  $82D7  8B 50                      BYTE_LOADR_imm1        +80
  $82D9  C0                         CMPEQ
  $82DA  D8 EC 82                   JUMPF_abs              $82EC
  $82DD  63                         PUSH_qimm   ; inline operand = 3
  $82DE  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $82E2  D7 EC 82                   JUMPT_abs              $82EC
  $82E5  3D                         PUSH_quick   ; inline operand = 13
  $82E6  3C                         PUSH_quick   ; inline operand = 12
  $82E7  E9 30 81 04                CALL_abs_imm1          $8130 {bytecode}, $04
  $82EB  CF                         RETURN
 >$82EC  A0 F6 FF                   BYTE_LOADL_far         $FFF6
  $82EF  8B 3C                      BYTE_LOADR_imm1        +60
  $82F1  C0                         CMPEQ
  $82F2  D8 04 83                   JUMPF_abs              $8304
  $82F5  64                         PUSH_qimm   ; inline operand = 4
  $82F6  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $82FA  D7 04 83                   JUMPT_abs              $8304
  $82FD  3D                         PUSH_quick   ; inline operand = 13
  $82FE  3C                         PUSH_quick   ; inline operand = 12
  $82FF  E9 30 81 04                CALL_abs_imm1          $8130 {bytecode}, $04
  $8303  CF                         RETURN
 >$8304  DE F7 FF                   LEAL_far               $FFF7
  $8307  B3                         PUSHL
  $8308  3C                         PUSH_quick   ; inline operand = 12
  $8309  E9 7B 97 04                CALL_abs_imm1          $977B {bytecode}, $04
  $830D  85 F3                      STORE_near             $F3
  $830F  A0 F7 FF                   BYTE_LOADL_far         $FFF7
  $8312  A2 F5 FF                   BYTE_STORE_far         $FFF5
  $8315  81 F3                      LOADL_near             $F3
  $8317  D8 1C 83                   JUMPF_abs              $831C
  $831A  40                         LOADL_qimm   ; inline operand = 0
  $831B  CF                         RETURN
 >$831C  A0 F7 FF                   BYTE_LOADL_far         $FFF7
  $831F  8B 50                      BYTE_LOADR_imm1        +80
  $8321  C0                         CMPEQ
  $8322  D8 34 83                   JUMPF_abs              $8334
  $8325  64                         PUSH_qimm   ; inline operand = 4
  $8326  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $832A  D7 34 83                   JUMPT_abs              $8334
  $832D  3D                         PUSH_quick   ; inline operand = 13
  $832E  3C                         PUSH_quick   ; inline operand = 12
  $832F  E9 BF 81 04                CALL_abs_imm1          $81BF {bytecode}, $04
  $8333  CF                         RETURN
 >$8334  A0 F7 FF                   BYTE_LOADL_far         $FFF7
  $8337  8B 3C                      BYTE_LOADR_imm1        +60
  $8339  C9                         UCMPGE
  $833A  D8 4C 83                   JUMPF_abs              $834C
  $833D  63                         PUSH_qimm   ; inline operand = 3
  $833E  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8342  D7 4C 83                   JUMPT_abs              $834C
  $8345  3D                         PUSH_quick   ; inline operand = 13
  $8346  3C                         PUSH_quick   ; inline operand = 12
  $8347  E9 BF 81 04                CALL_abs_imm1          $81BF {bytecode}, $04
  $834B  CF                         RETURN
 >$834C  DE F7 FF                   LEAL_far               $FFF7
  $834F  B3                         PUSHL
  $8350  3C                         PUSH_quick   ; inline operand = 12
  $8351  E9 0E 98 04                CALL_abs_imm1          $980E {bytecode}, $04
  $8355  A0 FB FF                   BYTE_LOADL_far         $FFFB
  $8358  D7 6F 83                   JUMPT_abs              $836F
  $835B  A0 FA FF                   BYTE_LOADL_far         $FFFA
  $835E  D8 67 83                   JUMPF_abs              $8367
  $8361  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $8364  D7 6F 83                   JUMPT_abs              $836F
 >$8367  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $836A  52                         LOADR_qimm   ; inline operand = 2
  $836B  C0                         CMPEQ
  $836C  D8 76 83                   JUMPF_abs              $8376
 >$836F  3D                         PUSH_quick   ; inline operand = 13
  $8370  3C                         PUSH_quick   ; inline operand = 12
  $8371  E9 28 82 04                CALL_abs_imm1          $8228 {bytecode}, $04
  $8375  CF                         RETURN
 >$8376  A0 FA FF                   BYTE_LOADL_far         $FFFA
  $8379  D7 82 83                   JUMPT_abs              $8382
  $837C  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $837F  D8 89 83                   JUMPF_abs              $8389
 >$8382  3D                         PUSH_quick   ; inline operand = 13
  $8383  3C                         PUSH_quick   ; inline operand = 12
  $8384  E9 28 82 04                CALL_abs_imm1          $8228 {bytecode}, $04
  $8388  CF                         RETURN
 >$8389  A0 F6 FF                   BYTE_LOADL_far         $FFF6
  $838C  8B 50                      BYTE_LOADR_imm1        +80
  $838E  C9                         UCMPGE
  $838F  D7 9B 83                   JUMPT_abs              $839B
  $8392  A0 F5 FF                   BYTE_LOADL_far         $FFF5
  $8395  8B 3C                      BYTE_LOADR_imm1        +60
  $8397  C9                         UCMPGE
  $8398  D8 BF 83                   JUMPF_abs              $83BF
 >$839B  62                         PUSH_qimm   ; inline operand = 2
  $839C  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $83A0  D8 BF 83                   JUMPF_abs              $83BF
  $83A3  A0 F5 FF                   BYTE_LOADL_far         $FFF5
  $83A6  8F 14                      BYTE_ADD_imm1          +20
  $83A8  B3                         PUSHL
  $83A9  A0 F6 FF                   BYTE_LOADL_far         $FFF6
  $83AC  B4                         POPR
  $83AD  C8                         UCMPGT
  $83AE  D8 B8 83                   JUMPF_abs              $83B8
  $83B1  3D                         PUSH_quick   ; inline operand = 13
  $83B2  3C                         PUSH_quick   ; inline operand = 12
  $83B3  E9 30 81 04                CALL_abs_imm1          $8130 {bytecode}, $04
  $83B7  CF                         RETURN
 >$83B8  3D                         PUSH_quick   ; inline operand = 13
  $83B9  3C                         PUSH_quick   ; inline operand = 12
  $83BA  E9 BF 81 04                CALL_abs_imm1          $81BF {bytecode}, $04
  $83BE  CF                         RETURN
 >$83BF  3D                         PUSH_quick   ; inline operand = 13
  $83C0  3C                         PUSH_quick   ; inline operand = 12
  $83C1  E9 92 82 04                CALL_abs_imm1          $8292 {bytecode}, $04
  $83C5  CF                         RETURN

; ============================================================
; sub $83C6   (frame_off=-3, body @ $83CB)   [PRG $363C6]
; ============================================================
  $83CB  89 10                      BYTE_LOADL_imm1        +16
  $83CD  A8 8A 72                   STORE_abs              $728A
  $83D0  60                         PUSH_qimm   ; inline operand = 0
  $83D1  68                         PUSH_qimm   ; inline operand = 8
  $83D2  8D 10                      BYTE_PUSH_imm1         +16
  $83D4  8D 11                      BYTE_PUSH_imm1         +17
  $83D6  6F                         PUSH_qimm   ; inline operand = 15
  $83D7  E9 05 A4 0A                CALL_abs_imm1          $A405 {native}, $0A
  $83DB  8E E7 00                   PUSH_imm2              $00E7
  $83DE  8E 35 A7                   PUSH_imm2              $A735
  $83E1  8E CC A6                   PUSH_imm2              $A6CC
  $83E4  67                         PUSH_qimm   ; inline operand = 7
  $83E5  6F                         PUSH_qimm   ; inline operand = 15
  $83E6  8D 11                      BYTE_PUSH_imm1         +17
  $83E8  6F                         PUSH_qimm   ; inline operand = 15
  $83E9  69                         PUSH_qimm   ; inline operand = 9
  $83EA  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $83EE  8D 12                      BYTE_PUSH_imm1         +18
  $83F0  8D 10                      BYTE_PUSH_imm1         +16
  $83F2  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $83F6  61                         PUSH_qimm   ; inline operand = 1
  $83F7  3D                         PUSH_quick   ; inline operand = 13
  $83F8  3C                         PUSH_quick   ; inline operand = 12
  $83F9  8E 92 9A                   PUSH_imm2              $9A92
  $83FC  E9 F3 CC 08                CALL_abs_imm1          $CCF3 {native}, $08
  $8400  85 FD                      STORE_near             $FD
  $8402  60                         PUSH_qimm   ; inline operand = 0
  $8403  68                         PUSH_qimm   ; inline operand = 8
  $8404  8D 10                      BYTE_PUSH_imm1         +16
  $8406  8D 11                      BYTE_PUSH_imm1         +17
  $8408  6F                         PUSH_qimm   ; inline operand = 15
  $8409  E9 9B A4 0A                CALL_abs_imm1          $A49B {native}, $0A
  $840D  40                         LOADL_qimm   ; inline operand = 0
  $840E  A8 8A 72                   STORE_abs              $728A
  $8411  81 FD                      LOADL_near             $FD
  $8413  CF                         RETURN

; ============================================================
; sub $8414   (frame_off=-1, body @ $8419)   [PRG $36414]
; ============================================================
  $8419  3D                         PUSH_quick   ; inline operand = 13
  $841A  3C                         PUSH_quick   ; inline operand = 12
  $841B  E9 B7 82 04                CALL_abs_imm1          $82B7 {bytecode}, $04
  $841F  A2 FF FF                   BYTE_STORE_far         $FFFF
  $8422  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8425  CF                         RETURN

; ============================================================
; sub $8426   (frame_off=+0, body @ $842B)   [PRG $36426]
; ============================================================
  $842B  8E E2 00                   PUSH_imm2              $00E2
  $842E  8E A2 B0                   PUSH_imm2              $B0A2
  $8431  8E 9E B0                   PUSH_imm2              $B09E
  $8434  62                         PUSH_qimm   ; inline operand = 2
  $8435  62                         PUSH_qimm   ; inline operand = 2
  $8436  89 17                      BYTE_LOADL_imm1        +23
  $8438  1D                         LOADR_quick   ; inline operand = 13
  $8439  BC                         SUB
  $843A  B3                         PUSHL
  $843B  0C                         LOADL_quick   ; inline operand = 12
  $843C  D2                         LSHIFT1
  $843D  79                         ADD_qimm   ; inline operand = 9
  $843E  B3                         PUSHL
  $843F  69                         PUSH_qimm   ; inline operand = 9
  $8440  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8444  CF                         RETURN

; ============================================================
; sub $8445   (frame_off=+0, body @ $844A)   [PRG $36445]
; ============================================================
  $844A  60                         PUSH_qimm   ; inline operand = 0
  $844B  60                         PUSH_qimm   ; inline operand = 0
  $844C  62                         PUSH_qimm   ; inline operand = 2
  $844D  62                         PUSH_qimm   ; inline operand = 2
  $844E  89 17                      BYTE_LOADL_imm1        +23
  $8450  1D                         LOADR_quick   ; inline operand = 13
  $8451  BC                         SUB
  $8452  B3                         PUSHL
  $8453  0C                         LOADL_quick   ; inline operand = 12
  $8454  D2                         LSHIFT1
  $8455  79                         ADD_qimm   ; inline operand = 9
  $8456  B3                         PUSHL
  $8457  68                         PUSH_qimm   ; inline operand = 8
  $8458  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $845C  CF                         RETURN

; ============================================================
; sub $845D   (frame_off=-12, body @ $8462)   [PRG $3645D]
; ============================================================
  $8462  40                         LOADL_qimm   ; inline operand = 0
  $8463  A9 9C 72                   BYTE_STORE_abs         $729C
  $8466  40                         LOADL_qimm   ; inline operand = 0
  $8467  27                         STORE_quick   ; inline operand = 7
  $8468  60                         PUSH_qimm   ; inline operand = 0
  $8469  65                         PUSH_qimm   ; inline operand = 5
  $846A  DE FA FF                   LEAL_far               $FFFA
  $846D  B3                         PUSHL
  $846E  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $8472  60                         PUSH_qimm   ; inline operand = 0
  $8473  60                         PUSH_qimm   ; inline operand = 0
  $8474  61                         PUSH_qimm   ; inline operand = 1
  $8475  68                         PUSH_qimm   ; inline operand = 8
  $8476  8D 18                      BYTE_PUSH_imm1         +24
  $8478  6A                         PUSH_qimm   ; inline operand = 10
  $8479  68                         PUSH_qimm   ; inline operand = 8
  $847A  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $847E  60                         PUSH_qimm   ; inline operand = 0
  $847F  E9 A9 C4 02                CALL_abs_imm1          $C4A9 {native}, $02
  $8483  A2 FF FF                   BYTE_STORE_far         $FFFF
  $8486  68                         PUSH_qimm   ; inline operand = 8
  $8487  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $848A  B3                         PUSHL
  $848B  E9 4D CE 04                CALL_abs_imm1          $CE4D {native}, $04
 >$848F  60                         PUSH_qimm   ; inline operand = 0
  $8490  37                         PUSH_quick   ; inline operand = 7
  $8491  E9 45 84 04                CALL_abs_imm1          $8445 {bytecode}, $04
  $8495  60                         PUSH_qimm   ; inline operand = 0
  $8496  37                         PUSH_quick   ; inline operand = 7
  $8497  E9 26 84 04                CALL_abs_imm1          $8426 {bytecode}, $04
  $849B  63                         PUSH_qimm   ; inline operand = 3
  $849C  E9 8D CE 02                CALL_abs_imm1          $CE8D {native}, $02
  $84A0  60                         PUSH_qimm   ; inline operand = 0
  $84A1  8D 10                      BYTE_PUSH_imm1         +16
  $84A3  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $84A7  51                         LOADR_qimm   ; inline operand = 1
  $84A8  C0                         CMPEQ
  $84A9  D7 8F 84                   JUMPT_abs              $848F
  $84AC  48                         LOADL_qimm   ; inline operand = 8
  $84AD  28                         STORE_quick   ; inline operand = 8
 >$84AE  60                         PUSH_qimm   ; inline operand = 0
  $84AF  E9 A9 C4 02                CALL_abs_imm1          $C4A9 {native}, $02
  $84B3  A2 FF FF                   BYTE_STORE_far         $FFFF
  $84B6  38                         PUSH_quick   ; inline operand = 8
  $84B7  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $84BA  B3                         PUSHL
  $84BB  E9 4D CE 04                CALL_abs_imm1          $CE4D {native}, $04
  $84BF  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $84C2  D9 04 00 10 00 D7 84 20 00 D7 84 40 ... SWITCH_noncontig       count=4   ; .table 4 (key,target) + default (noncontiguous); SWITCH 16=>$84D7 32=>$84D7 64=>$8592 128=>$8580 default=>$856C
 >$84D7  41                         LOADL_qimm   ; inline operand = 1
  $84D8  17                         LOADR_quick   ; inline operand = 7
  $84D9  BD                         LSHIFT
  $84DA  B3                         PUSHL
  $84DB  A5 9C 72                   BYTE_LOADL_abs         $729C
  $84DE  B4                         POPR
  $84DF  DA                         AND
  $84E0  D8 1F 85                   JUMPF_abs              $851F
  $84E3  60                         PUSH_qimm   ; inline operand = 0
  $84E4  37                         PUSH_quick   ; inline operand = 7
  $84E5  E9 45 84 04                CALL_abs_imm1          $8445 {bytecode}, $04
  $84E9  61                         PUSH_qimm   ; inline operand = 1
  $84EA  37                         PUSH_quick   ; inline operand = 7
  $84EB  E9 26 84 04                CALL_abs_imm1          $8426 {bytecode}, $04
  $84EF  62                         PUSH_qimm   ; inline operand = 2
  $84F0  E9 8D CE 02                CALL_abs_imm1          $CE8D {native}, $02
  $84F4  8D 14                      BYTE_PUSH_imm1         +20
  $84F6  07                         LOADL_quick   ; inline operand = 7
  $84F7  D2                         LSHIFT1
  $84F8  79                         ADD_qimm   ; inline operand = 9
  $84F9  B3                         PUSHL
  $84FA  0C                         LOADL_quick   ; inline operand = 12
  $84FB  17                         LOADR_quick   ; inline operand = 7
  $84FC  BB                         ADD
  $84FD  D3                         BYTE_DEREF
  $84FE  B3                         PUSHL
  $84FF  E9 B7 80 06                CALL_abs_imm1          $80B7 {bytecode}, $06
  $8503  41                         LOADL_qimm   ; inline operand = 1
  $8504  17                         LOADR_quick   ; inline operand = 7
  $8505  BD                         LSHIFT
  $8506  8C FF 00                   LOADR_imm2             $00FF
  $8509  DC                         XOR
  $850A  CD                         SWAP
  $850B  A5 9C 72                   BYTE_LOADL_abs         $729C
  $850E  DA                         AND
  $850F  A9 9C 72                   BYTE_STORE_abs         $729C
  $8512  DE FA FF                   LEAL_far               $FFFA
  $8515  B3                         PUSHL
  $8516  07                         LOADL_quick   ; inline operand = 7
  $8517  B4                         POPR
  $8518  BB                         ADD
  $8519  B3                         PUSHL
  $851A  40                         LOADL_qimm   ; inline operand = 0
  $851B  D4                         BYTE_POPSTORE
  $851C  D6 6A 85                   JUMP_abs               $856A
 >$851F  60                         PUSH_qimm   ; inline operand = 0
  $8520  37                         PUSH_quick   ; inline operand = 7
  $8521  E9 45 84 04                CALL_abs_imm1          $8445 {bytecode}, $04
  $8525  8D 13                      BYTE_PUSH_imm1         +19
  $8527  07                         LOADL_quick   ; inline operand = 7
  $8528  D2                         LSHIFT1
  $8529  79                         ADD_qimm   ; inline operand = 9
  $852A  B3                         PUSHL
  $852B  0C                         LOADL_quick   ; inline operand = 12
  $852C  17                         LOADR_quick   ; inline operand = 7
  $852D  BB                         ADD
  $852E  D3                         BYTE_DEREF
  $852F  B3                         PUSHL
  $8530  E9 B7 80 06                CALL_abs_imm1          $80B7 {bytecode}, $06
  $8534  41                         LOADL_qimm   ; inline operand = 1
  $8535  17                         LOADR_quick   ; inline operand = 7
  $8536  BD                         LSHIFT
  $8537  CD                         SWAP
  $8538  A5 9C 72                   BYTE_LOADL_abs         $729C
  $853B  DB                         OR
  $853C  A9 9C 72                   BYTE_STORE_abs         $729C
  $853F  DE FA FF                   LEAL_far               $FFFA
  $8542  B3                         PUSHL
  $8543  07                         LOADL_quick   ; inline operand = 7
  $8544  B4                         POPR
  $8545  BB                         ADD
  $8546  B3                         PUSHL
  $8547  41                         LOADL_qimm   ; inline operand = 1
  $8548  D4                         BYTE_POPSTORE
  $8549  DE FA FF                   LEAL_far               $FFFA
  $854C  B3                         PUSHL
  $854D  07                         LOADL_quick   ; inline operand = 7
  $854E  B4                         POPR
  $854F  BB                         ADD
  $8550  D3                         BYTE_DEREF
  $8551  B3                         PUSHL
  $8552  37                         PUSH_quick   ; inline operand = 7
  $8553  E9 26 84 04                CALL_abs_imm1          $8426 {bytecode}, $04
  $8557  62                         PUSH_qimm   ; inline operand = 2
  $8558  E9 8D CE 02                CALL_abs_imm1          $CE8D {native}, $02
  $855C  DE FA FF                   LEAL_far               $FFFA
  $855F  B3                         PUSHL
  $8560  07                         LOADL_quick   ; inline operand = 7
  $8561  B4                         POPR
  $8562  BB                         ADD
  $8563  D3                         BYTE_DEREF
  $8564  B3                         PUSHL
  $8565  37                         PUSH_quick   ; inline operand = 7
  $8566  E9 45 84 04                CALL_abs_imm1          $8445 {bytecode}, $04
 >$856A  48                         LOADL_qimm   ; inline operand = 8
  $856B  28                         STORE_quick   ; inline operand = 8
 >$856C  60                         PUSH_qimm   ; inline operand = 0
  $856D  37                         PUSH_quick   ; inline operand = 7
  $856E  E9 26 84 04                CALL_abs_imm1          $8426 {bytecode}, $04
  $8572  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8575  51                         LOADR_qimm   ; inline operand = 1
  $8576  C1                         CMPNE
  $8577  D7 AE 84                   JUMPT_abs              $84AE
  $857A  40                         LOADL_qimm   ; inline operand = 0
  $857B  26                         STORE_quick   ; inline operand = 6
  $857C  40                         LOADL_qimm   ; inline operand = 0
  $857D  D6 C7 85                   JUMP_abs               $85C7
 >$8580  07                         LOADL_quick   ; inline operand = 7
  $8581  54                         LOADR_qimm   ; inline operand = 4
  $8582  C6                         UCMPLT
  $8583  D8 6A 85                   JUMPF_abs              $856A
  $8586  60                         PUSH_qimm   ; inline operand = 0
  $8587  37                         PUSH_quick   ; inline operand = 7
  $8588  E9 45 84 04                CALL_abs_imm1          $8445 {bytecode}, $04
  $858C  07                         LOADL_quick   ; inline operand = 7
  $858D  D0                         INC
 >$858E  27                         STORE_quick   ; inline operand = 7
  $858F  D6 6A 85                   JUMP_abs               $856A
 >$8592  07                         LOADL_quick   ; inline operand = 7
  $8593  50                         LOADR_qimm   ; inline operand = 0
  $8594  C8                         UCMPGT
  $8595  D8 6A 85                   JUMPF_abs              $856A
  $8598  60                         PUSH_qimm   ; inline operand = 0
  $8599  37                         PUSH_quick   ; inline operand = 7
  $859A  E9 45 84 04                CALL_abs_imm1          $8445 {bytecode}, $04
  $859E  07                         LOADL_quick   ; inline operand = 7
  $859F  D1                         DEC
  $85A0  D6 8E 85                   JUMP_abs               $858E
 >$85A3  A5 9C 72                   BYTE_LOADL_abs         $729C
  $85A6  B3                         PUSHL
  $85A7  08                         LOADL_quick   ; inline operand = 8
  $85A8  B3                         PUSHL
  $85A9  41                         LOADL_qimm   ; inline operand = 1
  $85AA  B4                         POPR
  $85AB  BD                         LSHIFT
  $85AC  B4                         POPR
  $85AD  DA                         AND
  $85AE  D8 C5 85                   JUMPF_abs              $85C5
  $85B1  0D                         LOADL_quick   ; inline operand = 13
  $85B2  16                         LOADR_quick   ; inline operand = 6
  $85B3  BB                         ADD
  $85B4  B3                         PUSHL
  $85B5  0C                         LOADL_quick   ; inline operand = 12
  $85B6  18                         LOADR_quick   ; inline operand = 8
  $85B7  BB                         ADD
  $85B8  D3                         BYTE_DEREF
  $85B9  D4                         BYTE_POPSTORE
  $85BA  0C                         LOADL_quick   ; inline operand = 12
  $85BB  18                         LOADR_quick   ; inline operand = 8
  $85BC  BB                         ADD
  $85BD  B3                         PUSHL
  $85BE  8A FF 00                   LOADL_imm2             $00FF
  $85C1  D4                         BYTE_POPSTORE
  $85C2  06                         LOADL_quick   ; inline operand = 6
  $85C3  D0                         INC
  $85C4  26                         STORE_quick   ; inline operand = 6
 >$85C5  08                         LOADL_quick   ; inline operand = 8
  $85C6  D0                         INC
 >$85C7  28                         STORE_quick   ; inline operand = 8
  $85C8  08                         LOADL_quick   ; inline operand = 8
  $85C9  55                         LOADR_qimm   ; inline operand = 5
  $85CA  C6                         UCMPLT
  $85CB  D7 A3 85                   JUMPT_abs              $85A3
  $85CE  3C                         PUSH_quick   ; inline operand = 12
  $85CF  E9 A3 96 02                CALL_abs_imm1          $96A3 {bytecode}, $02
  $85D3  60                         PUSH_qimm   ; inline operand = 0
  $85D4  37                         PUSH_quick   ; inline operand = 7
  $85D5  E9 45 84 04                CALL_abs_imm1          $8445 {bytecode}, $04
  $85D9  06                         LOADL_quick   ; inline operand = 6
  $85DA  CF                         RETURN

; ============================================================
; sub $85DB   (frame_off=-12, body @ $85E0)   [PRG $365DB]
; ============================================================
  $85E0  8A 9C 9A                   LOADL_imm2             $9A9C
  $85E3  2B                         STORE_quick   ; inline operand = 11
  $85E4  43                         LOADL_qimm   ; inline operand = 3
  $85E5  A2 FD FF                   BYTE_STORE_far         $FFFD
  $85E8  0E                         LOADL_quick   ; inline operand = 14
  $85E9  B0                         DEREF
  $85EA  B3                         PUSHL
  $85EB  0D                         LOADL_quick   ; inline operand = 13
  $85EC  B0                         DEREF
  $85ED  B4                         POPR
  $85EE  BB                         ADD
  $85EF  B3                         PUSHL
  $85F0  0C                         LOADL_quick   ; inline operand = 12
  $85F1  B4                         POPR
  $85F2  C8                         UCMPGT
  $85F3  D8 F8 85                   JUMPF_abs              $85F8
  $85F6  40                         LOADL_qimm   ; inline operand = 0
  $85F7  CF                         RETURN
 >$85F8  A0 13 00                   BYTE_LOADL_far         $0013
  $85FB  D8 06 86                   JUMPF_abs              $8606
  $85FE  8A 9E 9A                   LOADL_imm2             $9A9E
  $8601  2B                         STORE_quick   ; inline operand = 11
  $8602  42                         LOADL_qimm   ; inline operand = 2
  $8603  A2 FD FF                   BYTE_STORE_far         $FFFD
 >$8606  40                         LOADL_qimm   ; inline operand = 0
  $8607  29                         STORE_quick   ; inline operand = 9
  $8608  28                         STORE_quick   ; inline operand = 8
  $8609  D6 21 86                   JUMP_abs               $8621
 >$860C  09                         LOADL_quick   ; inline operand = 9
  $860D  53                         LOADR_qimm   ; inline operand = 3
  $860E  C1                         CMPNE
  $860F  D8 1E 86                   JUMPF_abs              $861E
  $8612  09                         LOADL_quick   ; inline operand = 9
  $8613  D2                         LSHIFT1
  $8614  83 17                      LOADR_near             $17
  $8616  BB                         ADD
  $8617  B0                         DEREF
  $8618  D7 1E 86                   JUMPT_abs              $861E
  $861B  08                         LOADL_quick   ; inline operand = 8
  $861C  D0                         INC
  $861D  28                         STORE_quick   ; inline operand = 8
 >$861E  09                         LOADL_quick   ; inline operand = 9
  $861F  D0                         INC
  $8620  29                         STORE_quick   ; inline operand = 9
 >$8621  09                         LOADL_quick   ; inline operand = 9
  $8622  54                         LOADR_qimm   ; inline operand = 4
  $8623  C6                         UCMPLT
  $8624  D7 0C 86                   JUMPT_abs              $860C
 >$8627  40                         LOADL_qimm   ; inline operand = 0
  $8628  26                         STORE_quick   ; inline operand = 6
  $8629  08                         LOADL_quick   ; inline operand = 8
  $862A  53                         LOADR_qimm   ; inline operand = 3
  $862B  C1                         CMPNE
  $862C  D8 6D 86                   JUMPF_abs              $866D
  $862F  60                         PUSH_qimm   ; inline operand = 0
  $8630  68                         PUSH_qimm   ; inline operand = 8
  $8631  6A                         PUSH_qimm   ; inline operand = 10
  $8632  8D 11                      BYTE_PUSH_imm1         +17
  $8634  8D 15                      BYTE_PUSH_imm1         +21
  $8636  E9 05 A4 0A                CALL_abs_imm1          $A405 {native}, $0A
 >$863A  62                         PUSH_qimm   ; inline operand = 2
  $863B  3B                         PUSH_quick   ; inline operand = 11
  $863C  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $863F  B3                         PUSHL
  $8640  8D 11                      BYTE_PUSH_imm1         +17
  $8642  8D 15                      BYTE_PUSH_imm1         +21
  $8644  E9 8D A0 0A                CALL_abs_imm1          $A08D {native}, $0A
  $8648  A2 FC FF                   BYTE_STORE_far         $FFFC
  $864B  A0 FC FF                   BYTE_LOADL_far         $FFFC
  $864E  8C FF 00                   LOADR_imm2             $00FF
  $8651  C0                         CMPEQ
  $8652  D7 3A 86                   JUMPT_abs              $863A
  $8655  60                         PUSH_qimm   ; inline operand = 0
  $8656  68                         PUSH_qimm   ; inline operand = 8
  $8657  6A                         PUSH_qimm   ; inline operand = 10
  $8658  8D 11                      BYTE_PUSH_imm1         +17
  $865A  8D 15                      BYTE_PUSH_imm1         +21
  $865C  E9 9B A4 0A                CALL_abs_imm1          $A49B {native}, $0A
  $8660  A0 13 00                   BYTE_LOADL_far         $0013
  $8663  D8 71 86                   JUMPF_abs              $8671
  $8666  A0 FC FF                   BYTE_LOADL_far         $FFFC
  $8669  D0                         INC
  $866A  D6 6E 86                   JUMP_abs               $866E
 >$866D  41                         LOADL_qimm   ; inline operand = 1
 >$866E  A2 FC FF                   BYTE_STORE_far         $FFFC
 >$8671  A0 FC FF                   BYTE_LOADL_far         $FFFC
  $8674  D7 AD 86                   JUMPT_abs              $86AD
  $8677  87 15                      PUSH_near              $15
  $8679  0E                         LOADL_quick   ; inline operand = 14
  $867A  B0                         DEREF
  $867B  B3                         PUSHL
  $867C  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $8680  B3                         PUSHL
  $8681  3C                         PUSH_quick   ; inline operand = 12
  $8682  E9 C6 83 04                CALL_abs_imm1          $83C6 {bytecode}, $04
  $8686  27                         STORE_quick   ; inline operand = 7
  $8687  07                         LOADL_quick   ; inline operand = 7
  $8688  8B FF                      BYTE_LOADR_imm1        -1
  $868A  C1                         CMPNE
  $868B  D8 A8 86                   JUMPF_abs              $86A8
  $868E  0D                         LOADL_quick   ; inline operand = 13
  $868F  B0                         DEREF
  $8690  CD                         SWAP
  $8691  07                         LOADL_quick   ; inline operand = 7
 >$8692  BC                         SUB
  $8693  27                         STORE_quick   ; inline operand = 7
 >$8694  06                         LOADL_quick   ; inline operand = 6
  $8695  D7 27 86                   JUMPT_abs              $8627
  $8698  37                         PUSH_quick   ; inline operand = 7
  $8699  0D                         LOADL_quick   ; inline operand = 13
  $869A  B4                         POPR
  $869B  B3                         PUSHL
  $869C  B0                         DEREF
  $869D  BB                         ADD
  $869E  B1                         POPSTORE
  $869F  37                         PUSH_quick   ; inline operand = 7
  $86A0  0E                         LOADL_quick   ; inline operand = 14
  $86A1  B4                         POPR
  $86A2  B3                         PUSHL
  $86A3  B0                         DEREF
  $86A4  BC                         SUB
  $86A5  B1                         POPSTORE
  $86A6  41                         LOADL_qimm   ; inline operand = 1
  $86A7  CF                         RETURN
 >$86A8  41                         LOADL_qimm   ; inline operand = 1
  $86A9  26                         STORE_quick   ; inline operand = 6
  $86AA  D6 94 86                   JUMP_abs               $8694
 >$86AD  A0 FC FF                   BYTE_LOADL_far         $FFFC
  $86B0  51                         LOADR_qimm   ; inline operand = 1
  $86B1  C0                         CMPEQ
  $86B2  D8 BD 86                   JUMPF_abs              $86BD
  $86B5  0D                         LOADL_quick   ; inline operand = 13
  $86B6  B0                         DEREF
  $86B7  B3                         PUSHL
  $86B8  0C                         LOADL_quick   ; inline operand = 12
  $86B9  B4                         POPR
  $86BA  D6 92 86                   JUMP_abs               $8692
 >$86BD  A0 FC FF                   BYTE_LOADL_far         $FFFC
  $86C0  52                         LOADR_qimm   ; inline operand = 2
  $86C1  C0                         CMPEQ
  $86C2  D8 94 86                   JUMPF_abs              $8694
  $86C5  40                         LOADL_qimm   ; inline operand = 0
  $86C6  CF                         RETURN

; ============================================================
; sub $86C7   (frame_off=-29, body @ $86CC)   [PRG $366C7]
; ============================================================
  $86CC  40                         LOADL_qimm   ; inline operand = 0
  $86CD  85 F3                      STORE_near             $F3
  $86CF  85 F1                      STORE_near             $F1
  $86D1  D6 F1 86                   JUMP_abs               $86F1
 >$86D4  A0 15 00                   BYTE_LOADL_far         $0015
  $86D7  83 F3                      LOADR_near             $F3
  $86D9  C1                         CMPNE
  $86DA  D8 EC 86                   JUMPF_abs              $86EC
  $86DD  81 F3                      LOADL_near             $F3
  $86DF  D2                         LSHIFT1
  $86E0  83 1B                      LOADR_near             $1B
  $86E2  BB                         ADD
  $86E3  B0                         DEREF
  $86E4  D7 EC 86                   JUMPT_abs              $86EC
  $86E7  81 F1                      LOADL_near             $F1
  $86E9  D0                         INC
  $86EA  85 F1                      STORE_near             $F1
 >$86EC  81 F3                      LOADL_near             $F3
  $86EE  D0                         INC
  $86EF  85 F3                      STORE_near             $F3
 >$86F1  81 F3                      LOADL_near             $F3
  $86F3  54                         LOADR_qimm   ; inline operand = 4
  $86F4  C6                         UCMPLT
  $86F5  D7 D4 86                   JUMPT_abs              $86D4
  $86F8  81 F1                      LOADL_near             $F1
  $86FA  53                         LOADR_qimm   ; inline operand = 3
  $86FB  C1                         CMPNE
  $86FC  D8 6C 88                   JUMPF_abs              $886C
  $86FF  0E                         LOADL_quick   ; inline operand = 14
  $8700  B0                         DEREF
  $8701  B3                         PUSHL
  $8702  0D                         LOADL_quick   ; inline operand = 13
  $8703  B0                         DEREF
  $8704  B4                         POPR
  $8705  BB                         ADD
  $8706  1C                         LOADR_quick   ; inline operand = 12
  $8707  C6                         UCMPLT
  $8708  D8 0D 87                   JUMPF_abs              $870D
  $870B  40                         LOADL_qimm   ; inline operand = 0
  $870C  CF                         RETURN
 >$870D  40                         LOADL_qimm   ; inline operand = 0
  $870E  85 F3                      STORE_near             $F3
 >$8710  DE E7 FF                   LEAL_far               $FFE7
  $8713  B3                         PUSHL
  $8714  81 F3                      LOADL_near             $F3
  $8716  D2                         LSHIFT1
  $8717  B4                         POPR
  $8718  BB                         ADD
  $8719  B3                         PUSHL
  $871A  60                         PUSH_qimm   ; inline operand = 0
  $871B  DE F6 FF                   LEAL_far               $FFF6
  $871E  B3                         PUSHL
  $871F  81 F3                      LOADL_near             $F3
  $8721  55                         LOADR_qimm   ; inline operand = 5
  $8722  B5                         MULT
  $8723  1F                         LOADR_quick   ; inline operand = 15
  $8724  BB                         ADD
  $8725  B3                         PUSHL
  $8726  E9 E2 98 06                CALL_abs_imm1          $98E2 {bytecode}, $06
  $872A  B1                         POPSTORE
  $872B  81 F3                      LOADL_near             $F3
  $872D  D0                         INC
  $872E  85 F3                      STORE_near             $F3
  $8730  81 F3                      LOADL_near             $F3
  $8732  54                         LOADR_qimm   ; inline operand = 4
  $8733  C6                         UCMPLT
  $8734  D7 10 87                   JUMPT_abs              $8710
  $8737  40                         LOADL_qimm   ; inline operand = 0
  $8738  A2 F5 FF                   BYTE_STORE_far         $FFF5
  $873B  81 E7                      LOADL_near             $E7
  $873D  85 E5                      STORE_near             $E5
  $873F  41                         LOADL_qimm   ; inline operand = 1
  $8740  D6 69 87                   JUMP_abs               $8769
 >$8743  DE E7 FF                   LEAL_far               $FFE7
  $8746  B3                         PUSHL
  $8747  81 F3                      LOADL_near             $F3
  $8749  D2                         LSHIFT1
  $874A  B4                         POPR
  $874B  BB                         ADD
  $874C  B0                         DEREF
  $874D  B3                         PUSHL
  $874E  81 E5                      LOADL_near             $E5
  $8750  B4                         POPR
  $8751  C2                         SCMPLT
  $8752  D8 66 87                   JUMPF_abs              $8766
  $8755  DE E7 FF                   LEAL_far               $FFE7
  $8758  B3                         PUSHL
  $8759  81 F3                      LOADL_near             $F3
  $875B  D2                         LSHIFT1
  $875C  B4                         POPR
  $875D  BB                         ADD
  $875E  B0                         DEREF
  $875F  85 E5                      STORE_near             $E5
  $8761  81 F3                      LOADL_near             $F3
  $8763  A2 F5 FF                   BYTE_STORE_far         $FFF5
 >$8766  81 F3                      LOADL_near             $F3
  $8768  D0                         INC
 >$8769  85 F3                      STORE_near             $F3
  $876B  81 F3                      LOADL_near             $F3
  $876D  54                         LOADR_qimm   ; inline operand = 4
  $876E  C6                         UCMPLT
  $876F  D7 43 87                   JUMPT_abs              $8743
  $8772  60                         PUSH_qimm   ; inline operand = 0
  $8773  DE F6 FF                   LEAL_far               $FFF6
  $8776  B3                         PUSHL
  $8777  A0 15 00                   BYTE_LOADL_far         $0015
  $877A  55                         LOADR_qimm   ; inline operand = 5
  $877B  B5                         MULT
  $877C  1F                         LOADR_quick   ; inline operand = 15
  $877D  BB                         ADD
  $877E  B3                         PUSHL
  $877F  E9 E2 98 06                CALL_abs_imm1          $98E2 {bytecode}, $06
  $8783  85 EF                      STORE_near             $EF
  $8785  A0 F6 FF                   BYTE_LOADL_far         $FFF6
  $8788  A2 FF FF                   BYTE_STORE_far         $FFFF
  $878B  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $878E  8C FF 00                   LOADR_imm2             $00FF
  $8791  C0                         CMPEQ
  $8792  D7 9D 87                   JUMPT_abs              $879D
  $8795  A0 F5 FF                   BYTE_LOADL_far         $FFF5
  $8798  53                         LOADR_qimm   ; inline operand = 3
  $8799  C0                         CMPEQ
  $879A  D8 F0 87                   JUMPF_abs              $87F0
 >$879D  A0 F5 FF                   BYTE_LOADL_far         $FFF5
  $87A0  53                         LOADR_qimm   ; inline operand = 3
  $87A1  C1                         CMPNE
  $87A2  D8 AD 87                   JUMPF_abs              $87AD
  $87A5  63                         PUSH_qimm   ; inline operand = 3
  $87A6  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $87AA  D7 BD 87                   JUMPT_abs              $87BD
 >$87AD  A0 F5 FF                   BYTE_LOADL_far         $FFF5
  $87B0  53                         LOADR_qimm   ; inline operand = 3
  $87B1  C0                         CMPEQ
  $87B2  D8 06 88                   JUMPF_abs              $8806
  $87B5  62                         PUSH_qimm   ; inline operand = 2
  $87B6  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $87BA  D8 06 88                   JUMPF_abs              $8806
 >$87BD  0D                         LOADL_quick   ; inline operand = 13
  $87BE  B0                         DEREF
  $87BF  D2                         LSHIFT1
  $87C0  B3                         PUSHL
  $87C1  0D                         LOADL_quick   ; inline operand = 13
  $87C2  B0                         DEREF
  $87C3  B3                         PUSHL
  $87C4  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $87C8  B4                         POPR
  $87C9  BB                         ADD
  $87CA  1C                         LOADR_quick   ; inline operand = 12
  $87CB  C6                         UCMPLT
  $87CC  D8 D9 87                   JUMPF_abs              $87D9
  $87CF  63                         PUSH_qimm   ; inline operand = 3
  $87D0  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $87D4  D8 D9 87                   JUMPF_abs              $87D9
  $87D7  40                         LOADL_qimm   ; inline operand = 0
  $87D8  CF                         RETURN
 >$87D9  0D                         LOADL_quick   ; inline operand = 13
  $87DA  B0                         DEREF
  $87DB  1C                         LOADR_quick   ; inline operand = 12
  $87DC  C0                         CMPEQ
  $87DD  D8 EB 87                   JUMPF_abs              $87EB
  $87E0  87 17                      PUSH_near              $17
  $87E2  61                         PUSH_qimm   ; inline operand = 1
  $87E3  A0 15 00                   BYTE_LOADL_far         $0015
  $87E6  B3                         PUSHL
  $87E7  E9 3E 95 06                CALL_abs_imm1          $953E {bytecode}, $06
 >$87EB  0D                         LOADL_quick   ; inline operand = 13
  $87EC  B0                         DEREF
  $87ED  1C                         LOADR_quick   ; inline operand = 12
  $87EE  C0                         CMPEQ
  $87EF  CF                         RETURN
 >$87F0  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $87F3  D2                         LSHIFT1
  $87F4  8C B2 9A                   LOADR_imm2             $9AB2
  $87F7  BB                         ADD
  $87F8  B0                         DEREF
  $87F9  B3                         PUSHL
  $87FA  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $87FE  D7 06 88                   JUMPT_abs              $8806
  $8801  0D                         LOADL_quick   ; inline operand = 13
  $8802  B0                         DEREF
  $8803  1C                         LOADR_quick   ; inline operand = 12
  $8804  C0                         CMPEQ
  $8805  CF                         RETURN
 >$8806  A0 13 00                   BYTE_LOADL_far         $0013
  $8809  D7 5A 88                   JUMPT_abs              $885A
  $880C  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $880F  8C FF 00                   LOADR_imm2             $00FF
  $8812  C0                         CMPEQ
  $8813  D8 1E 88                   JUMPF_abs              $881E
  $8816  6F                         PUSH_qimm   ; inline operand = 15
  $8817  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $881B  D6 2A 88                   JUMP_abs               $882A
 >$881E  81 EF                      LOADL_near             $EF
  $8820  58                         LOADR_qimm   ; inline operand = 8
  $8821  B6                         SDIV
  $8822  B3                         PUSHL
  $8823  6F                         PUSH_qimm   ; inline operand = 15
  $8824  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8828  B4                         POPR
  $8829  BB                         ADD
 >$882A  85 E3                      STORE_near             $E3
  $882C  0C                         LOADL_quick   ; inline operand = 12
  $882D  53                         LOADR_qimm   ; inline operand = 3
  $882E  B5                         MULT
  $882F  B3                         PUSHL
  $8830  81 E3                      LOADL_near             $E3
  $8832  B4                         POPR
  $8833  C8                         UCMPGT
  $8834  D8 3D 88                   JUMPF_abs              $883D
  $8837  81 E3                      LOADL_near             $E3
  $8839  51                         LOADR_qimm   ; inline operand = 1
  $883A  BE                         URSHIFT
  $883B  85 E3                      STORE_near             $E3
 >$883D  A0 15 00                   BYTE_LOADL_far         $0015
  $8840  B3                         PUSHL
  $8841  A0 F5 FF                   BYTE_LOADL_far         $FFF5
  $8844  B4                         POPR
  $8845  C0                         CMPEQ
  $8846  D8 62 88                   JUMPF_abs              $8862
  $8849  63                         PUSH_qimm   ; inline operand = 3
  $884A  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $884E  D8 62 88                   JUMPF_abs              $8862
  $8851  87 19                      PUSH_near              $19
  $8853  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8857  D6 60 88                   JUMP_abs               $8860
 >$885A  0D                         LOADL_quick   ; inline operand = 13
  $885B  B0                         DEREF
  $885C  B3                         PUSHL
  $885D  0C                         LOADL_quick   ; inline operand = 12
  $885E  B4                         POPR
  $885F  BC                         SUB
 >$8860  85 E3                      STORE_near             $E3
 >$8862  0D                         LOADL_quick   ; inline operand = 13
  $8863  B0                         DEREF
  $8864  83 E3                      LOADR_near             $E3
  $8866  BB                         ADD
  $8867  1C                         LOADR_quick   ; inline operand = 12
  $8868  C6                         UCMPLT
  $8869  D8 74 88                   JUMPF_abs              $8874
 >$886C  0D                         LOADL_quick   ; inline operand = 13
  $886D  B0                         DEREF
  $886E  B3                         PUSHL
  $886F  0C                         LOADL_quick   ; inline operand = 12
  $8870  B4                         POPR
  $8871  BC                         SUB
  $8872  85 E3                      STORE_near             $E3
 >$8874  0D                         LOADL_quick   ; inline operand = 13
  $8875  B0                         DEREF
  $8876  83 E3                      LOADR_near             $E3
  $8878  BB                         ADD
  $8879  83 19                      LOADR_near             $19
  $887B  C8                         UCMPGT
  $887C  D8 88 88                   JUMPF_abs              $8888
  $887F  0D                         LOADL_quick   ; inline operand = 13
  $8880  B0                         DEREF
  $8881  B3                         PUSHL
  $8882  81 19                      LOADL_near             $19
  $8884  B4                         POPR
  $8885  BC                         SUB
  $8886  85 E3                      STORE_near             $E3
 >$8888  0D                         LOADL_quick   ; inline operand = 13
  $8889  B0                         DEREF
  $888A  83 E3                      LOADR_near             $E3
  $888C  BB                         ADD
  $888D  1C                         LOADR_quick   ; inline operand = 12
  $888E  C8                         UCMPGT
  $888F  D8 98 88                   JUMPF_abs              $8898
  $8892  87 17                      PUSH_near              $17
  $8894  60                         PUSH_qimm   ; inline operand = 0
  $8895  D6 9B 88                   JUMP_abs               $889B
 >$8898  87 17                      PUSH_near              $17
  $889A  61                         PUSH_qimm   ; inline operand = 1
 >$889B  A0 15 00                   BYTE_LOADL_far         $0015
  $889E  B3                         PUSHL
  $889F  E9 3E 95 06                CALL_abs_imm1          $953E {bytecode}, $06
  $88A3  87 E3                      PUSH_near              $E3
  $88A5  0D                         LOADL_quick   ; inline operand = 13
  $88A6  B4                         POPR
  $88A7  B3                         PUSHL
  $88A8  B0                         DEREF
  $88A9  BB                         ADD
  $88AA  B1                         POPSTORE
  $88AB  0E                         LOADL_quick   ; inline operand = 14
  $88AC  B0                         DEREF
  $88AD  83 E3                      LOADR_near             $E3
  $88AF  C6                         UCMPLT
  $88B0  D8 B8 88                   JUMPF_abs              $88B8
  $88B3  3E                         PUSH_quick   ; inline operand = 14
  $88B4  40                         LOADL_qimm   ; inline operand = 0
  $88B5  D6 BF 88                   JUMP_abs               $88BF
 >$88B8  87 E3                      PUSH_near              $E3
  $88BA  0E                         LOADL_quick   ; inline operand = 14
  $88BB  B4                         POPR
  $88BC  B3                         PUSHL
  $88BD  B0                         DEREF
  $88BE  BC                         SUB
 >$88BF  B1                         POPSTORE
  $88C0  41                         LOADL_qimm   ; inline operand = 1
  $88C1  CF                         RETURN

; ============================================================
; sub $88C2   (frame_off=-4, body @ $88C7)   [PRG $368C2]
; ============================================================
  $88C7  65                         PUSH_qimm   ; inline operand = 5
  $88C8  A0 0B 00                   BYTE_LOADL_far         $000B
  $88CB  D2                         LSHIFT1
  $88CC  8C C7 9A                   LOADR_imm2             $9AC7
  $88CF  BB                         ADD
  $88D0  D3                         BYTE_DEREF
  $88D1  B3                         PUSHL
  $88D2  A0 0B 00                   BYTE_LOADL_far         $000B
  $88D5  D2                         LSHIFT1
  $88D6  8C C6 9A                   LOADR_imm2             $9AC6
  $88D9  BB                         ADD
  $88DA  D3                         BYTE_DEREF
  $88DB  B3                         PUSHL
  $88DC  E9 F1 80 06                CALL_abs_imm1          $80F1 {bytecode}, $06
  $88E0  A0 0B 00                   BYTE_LOADL_far         $000B
  $88E3  D7 EA 88                   JUMPT_abs              $88EA
  $88E6  44                         LOADL_qimm   ; inline operand = 4
  $88E7  D6 EC 88                   JUMP_abs               $88EC
 >$88EA  89 F5                      BYTE_LOADL_imm1        -11
 >$88EC  2A                         STORE_quick   ; inline operand = 10
  $88ED  40                         LOADL_qimm   ; inline operand = 0
  $88EE  2B                         STORE_quick   ; inline operand = 11
 >$88EF  A0 0B 00                   BYTE_LOADL_far         $000B
  $88F2  D2                         LSHIFT1
  $88F3  8C C7 9A                   LOADR_imm2             $9AC7
  $88F6  BB                         ADD
  $88F7  D3                         BYTE_DEREF
  $88F8  B3                         PUSHL
  $88F9  0B                         LOADL_quick   ; inline operand = 11
  $88FA  D2                         LSHIFT1
  $88FB  B3                         PUSHL
  $88FC  A0 0B 00                   BYTE_LOADL_far         $000B
  $88FF  D2                         LSHIFT1
  $8900  8C C6 9A                   LOADR_imm2             $9AC6
  $8903  BB                         ADD
  $8904  D3                         BYTE_DEREF
  $8905  B4                         POPR
  $8906  BB                         ADD
  $8907  1A                         LOADR_quick   ; inline operand = 10
  $8908  BB                         ADD
  $8909  B3                         PUSHL
  $890A  8E 51 8B                   PUSH_imm2              $8B51
  $890D  8E DC 00                   PUSH_imm2              $00DC
  $8910  61                         PUSH_qimm   ; inline operand = 1
  $8911  E9 3A DE 0A                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $0A
  $8915  0B                         LOADL_quick   ; inline operand = 11
  $8916  D0                         INC
  $8917  2B                         STORE_quick   ; inline operand = 11
  $8918  0B                         LOADL_quick   ; inline operand = 11
  $8919  55                         LOADR_qimm   ; inline operand = 5
  $891A  C6                         UCMPLT
  $891B  D7 EF 88                   JUMPT_abs              $88EF
  $891E  CF                         RETURN

; ============================================================
; sub $891F   (frame_off=-153, body @ $8924)   [PRG $3691F]
; ============================================================
  $8924  DE 67 FF                   LEAL_far               $FF67
  $8927  B3                         PUSHL
  $8928  E9 03 80 02                CALL_abs_imm1          $8003 {bytecode}, $02
  $892C  40                         LOADL_qimm   ; inline operand = 0
  $892D  86 79 FF                   STORE_far              $FF79
 >$8930  DE 97 FF                   LEAL_far               $FF97
  $8933  B3                         PUSHL
  $8934  82 79 FF                   LOADL_far              $FF79
  $8937  D2                         LSHIFT1
  $8938  B4                         POPR
  $8939  BB                         ADD
  $893A  B3                         PUSHL
  $893B  40                         LOADL_qimm   ; inline operand = 0
  $893C  B1                         POPSTORE
  $893D  DE 85 FF                   LEAL_far               $FF85
  $8940  B3                         PUSHL
  $8941  82 79 FF                   LOADL_far              $FF79
  $8944  D2                         LSHIFT1
  $8945  B4                         POPR
  $8946  BB                         ADD
  $8947  B3                         PUSHL
  $8948  8E E8 03                   PUSH_imm2              $03E8
  $894B  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $894F  90 E8 03                   ADD_imm2               $03E8
  $8952  B1                         POPSTORE
  $8953  82 79 FF                   LOADL_far              $FF79
  $8956  D0                         INC
  $8957  86 79 FF                   STORE_far              $FF79
  $895A  82 79 FF                   LOADL_far              $FF79
  $895D  53                         LOADR_qimm   ; inline operand = 3
  $895E  C6                         UCMPLT
  $895F  D7 30 89                   JUMPT_abs              $8930
  $8962  A5 67 70                   BYTE_LOADL_abs         $7067
  $8965  5E                         LOADR_qimm   ; inline operand = 14
  $8966  B5                         MULT
  $8967  8C B2 67                   LOADR_imm2             $67B2
  $896A  BB                         ADD
  $896B  B0                         DEREF
  $896C  8B 64                      BYTE_LOADR_imm1        +100
  $896E  B6                         SDIV
  $896F  8B 64                      BYTE_LOADR_imm1        +100
  $8971  B5                         MULT
  $8972  54                         LOADR_qimm   ; inline operand = 4
  $8973  B6                         SDIV
  $8974  85 83                      STORE_near             $83
  $8976  40                         LOADL_qimm   ; inline operand = 0
  $8977  85 9D                      STORE_near             $9D
  $8979  A4 6B 66                   LOADL_abs              $666B
  $897C  85 8B                      STORE_near             $8B
  $897E  DE CC FF                   LEAL_far               $FFCC
  $8981  B3                         PUSHL
  $8982  8E 62 8B                   PUSH_imm2              $8B62
  $8985  8E DC 00                   PUSH_imm2              $00DC
  $8988  61                         PUSH_qimm   ; inline operand = 1
  $8989  E9 3A DE 08                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $08
  $898D  64                         PUSH_qimm   ; inline operand = 4
  $898E  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8992  A2 A7 FF                   BYTE_STORE_far         $FFA7
 >$8995  40                         LOADL_qimm   ; inline operand = 0
  $8996  A2 A8 FF                   BYTE_STORE_far         $FFA8
  $8999  A0 A7 FF                   BYTE_LOADL_far         $FFA7
  $899C  D0                         INC
  $899D  53                         LOADR_qimm   ; inline operand = 3
  $899E  DA                         AND
  $899F  A2 A5 FF                   BYTE_STORE_far         $FFA5
  $89A2  40                         LOADL_qimm   ; inline operand = 0
  $89A3  D6 43 8A                   JUMP_abs               $8A43
 >$89A6  DE 6D FF                   LEAL_far               $FF6D
  $89A9  B3                         PUSHL
  $89AA  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $89AD  D2                         LSHIFT1
  $89AE  B4                         POPR
  $89AF  BB                         ADD
  $89B0  B3                         PUSHL
  $89B1  41                         LOADL_qimm   ; inline operand = 1
  $89B2  B1                         POPSTORE
  $89B3  6F                         PUSH_qimm   ; inline operand = 15
  $89B4  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $89B8  8F 3C                      BYTE_ADD_imm1          +60
  $89BA  B3                         PUSHL
  $89BB  DE 85 FF                   LEAL_far               $FF85
  $89BE  B3                         PUSHL
  $89BF  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $89C2  D2                         LSHIFT1
  $89C3  B4                         POPR
  $89C4  BB                         ADD
  $89C5  B0                         DEREF
  $89C6  B4                         POPR
  $89C7  C6                         UCMPLT
  $89C8  D8 EE 89                   JUMPF_abs              $89EE
  $89CB  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $89CE  53                         LOADR_qimm   ; inline operand = 3
  $89CF  C0                         CMPEQ
  $89D0  D8 DB 89                   JUMPF_abs              $89DB
  $89D3  61                         PUSH_qimm   ; inline operand = 1
  $89D4  E9 75 96 02                CALL_abs_imm1          $9675 {bytecode}, $02
  $89D8  D6 E8 89                   JUMP_abs               $89E8
 >$89DB  DE 67 FF                   LEAL_far               $FF67
  $89DE  B3                         PUSHL
  $89DF  67                         PUSH_qimm   ; inline operand = 7
  $89E0  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $89E3  B3                         PUSHL
  $89E4  E9 3E 95 06                CALL_abs_imm1          $953E {bytecode}, $06
 >$89E8  81 8B                      LOADL_near             $8B
  $89EA  A8 6B 66                   STORE_abs              $666B
  $89ED  CF                         RETURN
 >$89EE  DE 8D FF                   LEAL_far               $FF8D
  $89F1  B3                         PUSHL
  $89F2  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $89F5  D2                         LSHIFT1
  $89F6  B4                         POPR
  $89F7  BB                         ADD
  $89F8  B3                         PUSHL
  $89F9  45                         LOADL_qimm   ; inline operand = 5
  $89FA  B1                         POPSTORE
  $89FB  65                         PUSH_qimm   ; inline operand = 5
  $89FC  DE 85 FF                   LEAL_far               $FF85
  $89FF  B3                         PUSHL
  $8A00  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8A03  D2                         LSHIFT1
  $8A04  B4                         POPR
  $8A05  BB                         ADD
  $8A06  B4                         POPR
  $8A07  B3                         PUSHL
  $8A08  B0                         DEREF
  $8A09  BC                         SUB
  $8A0A  B1                         POPSTORE
  $8A0B  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8A0E  D2                         LSHIFT1
  $8A0F  8C E1 9A                   LOADR_imm2             $9AE1
  $8A12  BB                         ADD
  $8A13  D3                         BYTE_DEREF
  $8A14  B3                         PUSHL
  $8A15  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8A18  D2                         LSHIFT1
  $8A19  8C E0 9A                   LOADR_imm2             $9AE0
  $8A1C  BB                         ADD
  $8A1D  D3                         BYTE_DEREF
  $8A1E  B3                         PUSHL
  $8A1F  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8A23  DE 8D FF                   LEAL_far               $FF8D
  $8A26  B3                         PUSHL
  $8A27  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8A2A  D2                         LSHIFT1
  $8A2B  B4                         POPR
  $8A2C  BB                         ADD
  $8A2D  B0                         DEREF
  $8A2E  B3                         PUSHL
  $8A2F  8E 52 9B                   PUSH_imm2              $9B52
  $8A32  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8A36  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8A39  D0                         INC
  $8A3A  53                         LOADR_qimm   ; inline operand = 3
  $8A3B  DA                         AND
  $8A3C  A2 A5 FF                   BYTE_STORE_far         $FFA5
  $8A3F  82 79 FF                   LOADL_far              $FF79
  $8A42  D0                         INC
 >$8A43  86 79 FF                   STORE_far              $FF79
  $8A46  82 79 FF                   LOADL_far              $FF79
  $8A49  54                         LOADR_qimm   ; inline operand = 4
  $8A4A  C6                         UCMPLT
  $8A4B  D7 A6 89                   JUMPT_abs              $89A6
  $8A4E  8D 1A                      BYTE_PUSH_imm1         +26
  $8A50  6A                         PUSH_qimm   ; inline operand = 10
  $8A51  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8A55  87 8B                      PUSH_near              $8B
  $8A57  8E 5A 9B                   PUSH_imm2              $9B5A
  $8A5A  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $8A5E  DE CC FF                   LEAL_far               $FFCC
  $8A61  B3                         PUSHL
  $8A62  8E F1 8A                   PUSH_imm2              $8AF1
  $8A65  8E DC 00                   PUSH_imm2              $00DC
  $8A68  61                         PUSH_qimm   ; inline operand = 1
  $8A69  E9 3A DE 08                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $08
  $8A6D  40                         LOADL_qimm   ; inline operand = 0
  $8A6E  86 79 FF                   STORE_far              $FF79
 >$8A71  A0 A7 FF                   BYTE_LOADL_far         $FFA7
  $8A74  D0                         INC
  $8A75  53                         LOADR_qimm   ; inline operand = 3
  $8A76  DA                         AND
  $8A77  A2 A5 FF                   BYTE_STORE_far         $FFA5
  $8A7A  40                         LOADL_qimm   ; inline operand = 0
  $8A7B  D6 1C 8B                   JUMP_abs               $8B1C
 >$8A7E  DE B8 FF                   LEAL_far               $FFB8
  $8A81  B3                         PUSHL
  $8A82  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8A85  55                         LOADR_qimm   ; inline operand = 5
  $8A86  B5                         MULT
  $8A87  84 79 FF                   LOADR_far              $FF79
  $8A8A  BB                         ADD
  $8A8B  B4                         POPR
  $8A8C  BB                         ADD
  $8A8D  B3                         PUSHL
  $8A8E  DE CC FF                   LEAL_far               $FFCC
  $8A91  B3                         PUSHL
  $8A92  A0 A8 FF                   BYTE_LOADL_far         $FFA8
  $8A95  D0                         INC
  $8A96  A2 A8 FF                   BYTE_STORE_far         $FFA8
  $8A99  D1                         DEC
  $8A9A  B4                         POPR
  $8A9B  BB                         ADD
  $8A9C  D3                         BYTE_DEREF
  $8A9D  D4                         BYTE_POPSTORE
  $8A9E  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8AA1  53                         LOADR_qimm   ; inline operand = 3
  $8AA2  C0                         CMPEQ
  $8AA3  D8 C7 8A                   JUMPF_abs              $8AC7
  $8AA6  A5 EF 9A                   BYTE_LOADL_abs         $9AEF
  $8AA9  B3                         PUSHL
  $8AAA  82 79 FF                   LOADL_far              $FF79
  $8AAD  D2                         LSHIFT1
  $8AAE  B3                         PUSHL
  $8AAF  A5 EE 9A                   BYTE_LOADL_abs         $9AEE
  $8AB2  B4                         POPR
  $8AB3  BB                         ADD
  $8AB4  B3                         PUSHL
  $8AB5  DE C7 FF                   LEAL_far               $FFC7
  $8AB8  B3                         PUSHL
  $8AB9  82 79 FF                   LOADL_far              $FF79
  $8ABC  B4                         POPR
  $8ABD  BB                         ADD
  $8ABE  D3                         BYTE_DEREF
  $8ABF  B3                         PUSHL
  $8AC0  E9 B7 80 06                CALL_abs_imm1          $80B7 {bytecode}, $06
  $8AC4  D6 0F 8B                   JUMP_abs               $8B0F
 >$8AC7  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8ACA  D2                         LSHIFT1
  $8ACB  8C E9 9A                   LOADR_imm2             $9AE9
  $8ACE  BB                         ADD
  $8ACF  D3                         BYTE_DEREF
  $8AD0  B3                         PUSHL
  $8AD1  82 79 FF                   LOADL_far              $FF79
  $8AD4  D2                         LSHIFT1
  $8AD5  B3                         PUSHL
  $8AD6  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8AD9  D2                         LSHIFT1
  $8ADA  8C E8 9A                   LOADR_imm2             $9AE8
  $8ADD  BB                         ADD
  $8ADE  D3                         BYTE_DEREF
  $8ADF  B4                         POPR
  $8AE0  BB                         ADD
  $8AE1  B3                         PUSHL
  $8AE2  8E 39 8B                   PUSH_imm2              $8B39
  $8AE5  8E DC 00                   PUSH_imm2              $00DC
  $8AE8  61                         PUSH_qimm   ; inline operand = 1
  $8AE9  E9 3A DE 0A                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $0A
  $8AED  82 79 FF                   LOADL_far              $FF79
  $8AF0  51                         LOADR_qimm   ; inline operand = 1
  $8AF1  C8                         UCMPGT
  $8AF2  D8 0F 8B                   JUMPF_abs              $8B0F
  $8AF5  4A                         LOADL_qimm   ; inline operand = 10
  $8AF6  84 79 FF                   LOADR_far              $FF79
  $8AF9  BC                         SUB
  $8AFA  B3                         PUSHL
  $8AFB  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8AFF  D7 0F 8B                   JUMPT_abs              $8B0F
  $8B02  DE 67 FF                   LEAL_far               $FF67
  $8B05  B3                         PUSHL
  $8B06  64                         PUSH_qimm   ; inline operand = 4
  $8B07  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8B0A  B3                         PUSHL
  $8B0B  E9 3E 95 06                CALL_abs_imm1          $953E {bytecode}, $06
 >$8B0F  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8B12  D0                         INC
  $8B13  53                         LOADR_qimm   ; inline operand = 3
  $8B14  DA                         AND
  $8B15  A2 A5 FF                   BYTE_STORE_far         $FFA5
  $8B18  82 77 FF                   LOADL_far              $FF77
  $8B1B  D0                         INC
 >$8B1C  86 77 FF                   STORE_far              $FF77
  $8B1F  82 77 FF                   LOADL_far              $FF77
  $8B22  54                         LOADR_qimm   ; inline operand = 4
  $8B23  C6                         UCMPLT
  $8B24  D7 7E 8A                   JUMPT_abs              $8A7E
  $8B27  82 79 FF                   LOADL_far              $FF79
  $8B2A  D0                         INC
  $8B2B  86 79 FF                   STORE_far              $FF79
  $8B2E  82 79 FF                   LOADL_far              $FF79
  $8B31  55                         LOADR_qimm   ; inline operand = 5
  $8B32  C6                         UCMPLT
  $8B33  D7 71 8A                   JUMPT_abs              $8A71
  $8B36  A0 A7 FF                   BYTE_LOADL_far         $FFA7
  $8B39  A2 A5 FF                   BYTE_STORE_far         $FFA5
  $8B3C  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8B3F  52                         LOADR_qimm   ; inline operand = 2
  $8B40  C0                         CMPEQ
  $8B41  D8 48 8B                   JUMPF_abs              $8B48
  $8B44  49                         LOADL_qimm   ; inline operand = 9
  $8B45  D6 49 8B                   JUMP_abs               $8B49
 >$8B48  4A                         LOADL_qimm   ; inline operand = 10
 >$8B49  86 75 FF                   STORE_far              $FF75
  $8B4C  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8B4F  D2                         LSHIFT1
  $8B50  8C E1 9A                   LOADR_imm2             $9AE1
  $8B53  BB                         ADD
  $8B54  D3                         BYTE_DEREF
  $8B55  B3                         PUSHL
  $8B56  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8B59  D2                         LSHIFT1
  $8B5A  8C E0 9A                   LOADR_imm2             $9AE0
  $8B5D  BB                         ADD
  $8B5E  D3                         BYTE_DEREF
  $8B5F  84 75 FF                   LOADR_far              $FF75
  $8B62  BB                         ADD
  $8B63  B3                         PUSHL
  $8B64  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8B68  61                         PUSH_qimm   ; inline operand = 1
  $8B69  8E 63 9B                   PUSH_imm2              $9B63
  $8B6C  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8B70  40                         LOADL_qimm   ; inline operand = 0
  $8B71  86 79 FF                   STORE_far              $FF79
 >$8B74  DE B8 FF                   LEAL_far               $FFB8
  $8B77  B3                         PUSHL
  $8B78  82 79 FF                   LOADL_far              $FF79
  $8B7B  55                         LOADR_qimm   ; inline operand = 5
  $8B7C  B5                         MULT
  $8B7D  B4                         POPR
  $8B7E  BB                         ADD
  $8B7F  B3                         PUSHL
  $8B80  E9 A3 96 02                CALL_abs_imm1          $96A3 {bytecode}, $02
  $8B84  82 79 FF                   LOADL_far              $FF79
  $8B87  D0                         INC
  $8B88  86 79 FF                   STORE_far              $FF79
  $8B8B  82 79 FF                   LOADL_far              $FF79
  $8B8E  54                         LOADR_qimm   ; inline operand = 4
  $8B8F  C6                         UCMPLT
  $8B90  D7 74 8B                   JUMPT_abs              $8B74
  $8B93  40                         LOADL_qimm   ; inline operand = 0
  $8B94  86 77 FF                   STORE_far              $FF77
 >$8B97  A5 EF 9A                   BYTE_LOADL_abs         $9AEF
  $8B9A  B3                         PUSHL
  $8B9B  82 77 FF                   LOADL_far              $FF77
  $8B9E  D2                         LSHIFT1
  $8B9F  B3                         PUSHL
  $8BA0  A5 EE 9A                   BYTE_LOADL_abs         $9AEE
  $8BA3  B4                         POPR
  $8BA4  BB                         ADD
  $8BA5  B3                         PUSHL
  $8BA6  DE C7 FF                   LEAL_far               $FFC7
  $8BA9  B3                         PUSHL
  $8BAA  82 77 FF                   LOADL_far              $FF77
  $8BAD  B4                         POPR
  $8BAE  BB                         ADD
  $8BAF  D3                         BYTE_DEREF
  $8BB0  B3                         PUSHL
  $8BB1  E9 B7 80 06                CALL_abs_imm1          $80B7 {bytecode}, $06
  $8BB5  82 77 FF                   LOADL_far              $FF77
  $8BB8  D0                         INC
  $8BB9  86 77 FF                   STORE_far              $FF77
  $8BBC  82 77 FF                   LOADL_far              $FF77
  $8BBF  55                         LOADR_qimm   ; inline operand = 5
  $8BC0  C6                         UCMPLT
  $8BC1  D7 97 8B                   JUMPT_abs              $8B97
  $8BC4  A0 A7 FF                   BYTE_LOADL_far         $FFA7
  $8BC7  D0                         INC
  $8BC8  53                         LOADR_qimm   ; inline operand = 3
  $8BC9  DA                         AND
  $8BCA  A2 A5 FF                   BYTE_STORE_far         $FFA5
  $8BCD  40                         LOADL_qimm   ; inline operand = 0
  $8BCE  D6 F8 8D                   JUMP_abs               $8DF8
 >$8BD1  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8BD4  53                         LOADR_qimm   ; inline operand = 3
  $8BD5  C0                         CMPEQ
  $8BD6  D8 93 8C                   JUMPF_abs              $8C93
  $8BD9  DE B3 FF                   LEAL_far               $FFB3
  $8BDC  B3                         PUSHL
  $8BDD  DE C7 FF                   LEAL_far               $FFC7
  $8BE0  B3                         PUSHL
  $8BE1  E9 5D 84 04                CALL_abs_imm1          $845D {bytecode}, $04
  $8BE5  A2 A4 FF                   BYTE_STORE_far         $FFA4
  $8BE8  A0 A4 FF                   BYTE_LOADL_far         $FFA4
  $8BEB  B3                         PUSHL
  $8BEC  45                         LOADL_qimm   ; inline operand = 5
  $8BED  B4                         POPR
  $8BEE  BC                         SUB
  $8BEF  D6 10 8C                   JUMP_abs               $8C10
 >$8BF2  DE C7 FF                   LEAL_far               $FFC7
  $8BF5  B3                         PUSHL
  $8BF6  82 77 FF                   LOADL_far              $FF77
  $8BF9  B4                         POPR
  $8BFA  BB                         ADD
  $8BFB  B3                         PUSHL
  $8BFC  DE CC FF                   LEAL_far               $FFCC
  $8BFF  B3                         PUSHL
  $8C00  A0 A8 FF                   BYTE_LOADL_far         $FFA8
  $8C03  D0                         INC
  $8C04  A2 A8 FF                   BYTE_STORE_far         $FFA8
  $8C07  D1                         DEC
  $8C08  B4                         POPR
  $8C09  BB                         ADD
  $8C0A  D3                         BYTE_DEREF
  $8C0B  D4                         BYTE_POPSTORE
  $8C0C  82 77 FF                   LOADL_far              $FF77
  $8C0F  D0                         INC
 >$8C10  86 77 FF                   STORE_far              $FF77
  $8C13  82 77 FF                   LOADL_far              $FF77
  $8C16  55                         LOADR_qimm   ; inline operand = 5
  $8C17  C6                         UCMPLT
  $8C18  D7 F2 8B                   JUMPT_abs              $8BF2
  $8C1B  40                         LOADL_qimm   ; inline operand = 0
  $8C1C  D6 36 8C                   JUMP_abs               $8C36
 >$8C1F  8D 13                      BYTE_PUSH_imm1         +19
  $8C21  82 77 FF                   LOADL_far              $FF77
  $8C24  D2                         LSHIFT1
  $8C25  79                         ADD_qimm   ; inline operand = 9
  $8C26  B3                         PUSHL
  $8C27  8E 51 8B                   PUSH_imm2              $8B51
  $8C2A  8E DC 00                   PUSH_imm2              $00DC
  $8C2D  61                         PUSH_qimm   ; inline operand = 1
  $8C2E  E9 3A DE 0A                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $0A
  $8C32  82 77 FF                   LOADL_far              $FF77
  $8C35  D0                         INC
 >$8C36  86 77 FF                   STORE_far              $FF77
  $8C39  A0 A4 FF                   BYTE_LOADL_far         $FFA4
  $8C3C  B3                         PUSHL
  $8C3D  82 77 FF                   LOADL_far              $FF77
  $8C40  B4                         POPR
  $8C41  C6                         UCMPLT
  $8C42  D7 1F 8C                   JUMPT_abs              $8C1F
  $8C45  A0 A4 FF                   BYTE_LOADL_far         $FFA4
  $8C48  D8 57 8C                   JUMPF_abs              $8C57
  $8C4B  A0 A4 FF                   BYTE_LOADL_far         $FFA4
  $8C4E  B3                         PUSHL
  $8C4F  8D 14                      BYTE_PUSH_imm1         +20
  $8C51  8D 14                      BYTE_PUSH_imm1         +20
  $8C53  E9 F1 80 06                CALL_abs_imm1          $80F1 {bytecode}, $06
 >$8C57  DE C7 FF                   LEAL_far               $FFC7
  $8C5A  B3                         PUSHL
  $8C5B  E9 A3 96 02                CALL_abs_imm1          $96A3 {bytecode}, $02
  $8C5F  40                         LOADL_qimm   ; inline operand = 0
  $8C60  86 77 FF                   STORE_far              $FF77
 >$8C63  A5 EF 9A                   BYTE_LOADL_abs         $9AEF
  $8C66  B3                         PUSHL
  $8C67  82 77 FF                   LOADL_far              $FF77
  $8C6A  D2                         LSHIFT1
  $8C6B  B3                         PUSHL
  $8C6C  A5 EE 9A                   BYTE_LOADL_abs         $9AEE
  $8C6F  B4                         POPR
  $8C70  BB                         ADD
  $8C71  B3                         PUSHL
  $8C72  DE C7 FF                   LEAL_far               $FFC7
  $8C75  B3                         PUSHL
  $8C76  82 77 FF                   LOADL_far              $FF77
  $8C79  B4                         POPR
  $8C7A  BB                         ADD
  $8C7B  D3                         BYTE_DEREF
  $8C7C  B3                         PUSHL
  $8C7D  E9 B7 80 06                CALL_abs_imm1          $80B7 {bytecode}, $06
  $8C81  82 77 FF                   LOADL_far              $FF77
  $8C84  D0                         INC
  $8C85  86 77 FF                   STORE_far              $FF77
  $8C88  82 77 FF                   LOADL_far              $FF77
  $8C8B  55                         LOADR_qimm   ; inline operand = 5
  $8C8C  C6                         UCMPLT
  $8C8D  D7 63 8C                   JUMPT_abs              $8C63
  $8C90  D6 EB 8D                   JUMP_abs               $8DEB
 >$8C93  DE B3 FF                   LEAL_far               $FFB3
  $8C96  B3                         PUSHL
  $8C97  DE B8 FF                   LEAL_far               $FFB8
  $8C9A  B3                         PUSHL
  $8C9B  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8C9E  55                         LOADR_qimm   ; inline operand = 5
  $8C9F  B5                         MULT
  $8CA0  B4                         POPR
  $8CA1  BB                         ADD
  $8CA2  B3                         PUSHL
  $8CA3  E9 14 84 04                CALL_abs_imm1          $8414 {bytecode}, $04
  $8CA7  A2 A4 FF                   BYTE_STORE_far         $FFA4
  $8CAA  40                         LOADL_qimm   ; inline operand = 0
  $8CAB  86 77 FF                   STORE_far              $FF77
  $8CAE  A2 A3 FF                   BYTE_STORE_far         $FFA3
  $8CB1  D6 38 8D                   JUMP_abs               $8D38
 >$8CB4  DE B8 FF                   LEAL_far               $FFB8
  $8CB7  B3                         PUSHL
  $8CB8  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8CBB  55                         LOADR_qimm   ; inline operand = 5
  $8CBC  B5                         MULT
  $8CBD  84 77 FF                   LOADR_far              $FF77
  $8CC0  BB                         ADD
  $8CC1  B4                         POPR
  $8CC2  BB                         ADD
  $8CC3  D3                         BYTE_DEREF
  $8CC4  A2 A9 FF                   BYTE_STORE_far         $FFA9
  $8CC7  A0 A9 FF                   BYTE_LOADL_far         $FFA9
  $8CCA  8C F0 00                   LOADR_imm2             $00F0
  $8CCD  DA                         AND
  $8CCE  8C C0 00                   LOADR_imm2             $00C0
  $8CD1  C8                         UCMPGT
  $8CD2  D7 DF 8C                   JUMPT_abs              $8CDF
  $8CD5  A0 A9 FF                   BYTE_LOADL_far         $FFA9
  $8CD8  5F                         LOADR_qimm   ; inline operand = 15
  $8CD9  DA                         AND
  $8CDA  53                         LOADR_qimm   ; inline operand = 3
  $8CDB  C8                         UCMPGT
  $8CDC  D8 31 8D                   JUMPF_abs              $8D31
 >$8CDF  63                         PUSH_qimm   ; inline operand = 3
  $8CE0  E9 8D CE 02                CALL_abs_imm1          $CE8D {native}, $02
  $8CE4  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8CE7  D2                         LSHIFT1
  $8CE8  8C E9 9A                   LOADR_imm2             $9AE9
  $8CEB  BB                         ADD
  $8CEC  D3                         BYTE_DEREF
  $8CED  B3                         PUSHL
  $8CEE  82 77 FF                   LOADL_far              $FF77
  $8CF1  D2                         LSHIFT1
  $8CF2  B3                         PUSHL
  $8CF3  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8CF6  D2                         LSHIFT1
  $8CF7  8C E8 9A                   LOADR_imm2             $9AE8
  $8CFA  BB                         ADD
  $8CFB  D3                         BYTE_DEREF
  $8CFC  B4                         POPR
  $8CFD  BB                         ADD
  $8CFE  B3                         PUSHL
  $8CFF  8E 51 8B                   PUSH_imm2              $8B51
  $8D02  8E DC 00                   PUSH_imm2              $00DC
  $8D05  61                         PUSH_qimm   ; inline operand = 1
  $8D06  E9 3A DE 0A                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $0A
  $8D0A  A0 A3 FF                   BYTE_LOADL_far         $FFA3
  $8D0D  D0                         INC
  $8D0E  A2 A3 FF                   BYTE_STORE_far         $FFA3
  $8D11  DE B8 FF                   LEAL_far               $FFB8
  $8D14  B3                         PUSHL
  $8D15  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8D18  55                         LOADR_qimm   ; inline operand = 5
  $8D19  B5                         MULT
  $8D1A  84 77 FF                   LOADR_far              $FF77
  $8D1D  BB                         ADD
  $8D1E  B4                         POPR
  $8D1F  BB                         ADD
  $8D20  B3                         PUSHL
  $8D21  DE CC FF                   LEAL_far               $FFCC
  $8D24  B3                         PUSHL
  $8D25  A0 A8 FF                   BYTE_LOADL_far         $FFA8
  $8D28  D0                         INC
  $8D29  A2 A8 FF                   BYTE_STORE_far         $FFA8
  $8D2C  D1                         DEC
  $8D2D  B4                         POPR
  $8D2E  BB                         ADD
  $8D2F  D3                         BYTE_DEREF
  $8D30  D4                         BYTE_POPSTORE
 >$8D31  82 77 FF                   LOADL_far              $FF77
  $8D34  D0                         INC
  $8D35  86 77 FF                   STORE_far              $FF77
 >$8D38  82 77 FF                   LOADL_far              $FF77
  $8D3B  55                         LOADR_qimm   ; inline operand = 5
  $8D3C  C6                         UCMPLT
  $8D3D  D7 B4 8C                   JUMPT_abs              $8CB4
  $8D40  A0 A4 FF                   BYTE_LOADL_far         $FFA4
  $8D43  D8 85 8D                   JUMPF_abs              $8D85
  $8D46  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8D49  D7 68 8D                   JUMPT_abs              $8D68
  $8D4C  A0 A4 FF                   BYTE_LOADL_far         $FFA4
  $8D4F  B3                         PUSHL
  $8D50  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8D53  D2                         LSHIFT1
  $8D54  8C E9 9A                   LOADR_imm2             $9AE9
  $8D57  BB                         ADD
  $8D58  D3                         BYTE_DEREF
  $8D59  B3                         PUSHL
  $8D5A  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8D5D  D2                         LSHIFT1
  $8D5E  8C E8 9A                   LOADR_imm2             $9AE8
  $8D61  BB                         ADD
  $8D62  D3                         BYTE_DEREF
  $8D63  8F FC                      BYTE_ADD_imm1          -4
  $8D65  D6 80 8D                   JUMP_abs               $8D80
 >$8D68  A0 A4 FF                   BYTE_LOADL_far         $FFA4
  $8D6B  B3                         PUSHL
  $8D6C  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8D6F  D2                         LSHIFT1
  $8D70  8C E9 9A                   LOADR_imm2             $9AE9
  $8D73  BB                         ADD
  $8D74  D3                         BYTE_DEREF
  $8D75  B3                         PUSHL
  $8D76  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8D79  D2                         LSHIFT1
  $8D7A  8C E8 9A                   LOADR_imm2             $9AE8
  $8D7D  BB                         ADD
  $8D7E  D3                         BYTE_DEREF
  $8D7F  7B                         ADD_qimm   ; inline operand = 11
 >$8D80  B3                         PUSHL
  $8D81  E9 F1 80 06                CALL_abs_imm1          $80F1 {bytecode}, $06
 >$8D85  DE B8 FF                   LEAL_far               $FFB8
  $8D88  B3                         PUSHL
  $8D89  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8D8C  55                         LOADR_qimm   ; inline operand = 5
  $8D8D  B5                         MULT
  $8D8E  B4                         POPR
  $8D8F  BB                         ADD
  $8D90  B3                         PUSHL
  $8D91  E9 A3 96 02                CALL_abs_imm1          $96A3 {bytecode}, $02
  $8D95  40                         LOADL_qimm   ; inline operand = 0
  $8D96  86 77 FF                   STORE_far              $FF77
 >$8D99  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8D9C  D2                         LSHIFT1
  $8D9D  8C E9 9A                   LOADR_imm2             $9AE9
  $8DA0  BB                         ADD
  $8DA1  D3                         BYTE_DEREF
  $8DA2  B3                         PUSHL
  $8DA3  82 77 FF                   LOADL_far              $FF77
  $8DA6  D2                         LSHIFT1
  $8DA7  B3                         PUSHL
  $8DA8  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8DAB  D2                         LSHIFT1
  $8DAC  8C E8 9A                   LOADR_imm2             $9AE8
  $8DAF  BB                         ADD
  $8DB0  D3                         BYTE_DEREF
  $8DB1  B4                         POPR
  $8DB2  BB                         ADD
  $8DB3  B3                         PUSHL
  $8DB4  8E 39 8B                   PUSH_imm2              $8B39
  $8DB7  8E DC 00                   PUSH_imm2              $00DC
  $8DBA  61                         PUSH_qimm   ; inline operand = 1
  $8DBB  E9 3A DE 0A                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $0A
  $8DBF  65                         PUSH_qimm   ; inline operand = 5
  $8DC0  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8DC4  D7 D7 8D                   JUMPT_abs              $8DD7
  $8DC7  DE 67 FF                   LEAL_far               $FF67
  $8DCA  B3                         PUSHL
  $8DCB  64                         PUSH_qimm   ; inline operand = 4
  $8DCC  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8DCF  B3                         PUSHL
  $8DD0  E9 3E 95 06                CALL_abs_imm1          $953E {bytecode}, $06
  $8DD4  D6 DC 8D                   JUMP_abs               $8DDC
 >$8DD7  63                         PUSH_qimm   ; inline operand = 3
  $8DD8  E9 8D CE 02                CALL_abs_imm1          $CE8D {native}, $02
 >$8DDC  82 77 FF                   LOADL_far              $FF77
  $8DDF  D0                         INC
  $8DE0  86 77 FF                   STORE_far              $FF77
  $8DE3  82 77 FF                   LOADL_far              $FF77
  $8DE6  55                         LOADR_qimm   ; inline operand = 5
  $8DE7  C6                         UCMPLT
  $8DE8  D7 99 8D                   JUMPT_abs              $8D99
 >$8DEB  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8DEE  D0                         INC
  $8DEF  53                         LOADR_qimm   ; inline operand = 3
  $8DF0  DA                         AND
  $8DF1  A2 A5 FF                   BYTE_STORE_far         $FFA5
  $8DF4  82 79 FF                   LOADL_far              $FF79
  $8DF7  D0                         INC
 >$8DF8  86 79 FF                   STORE_far              $FF79
  $8DFB  82 79 FF                   LOADL_far              $FF79
  $8DFE  54                         LOADR_qimm   ; inline operand = 4
  $8DFF  C6                         UCMPLT
  $8E00  D7 D1 8B                   JUMPT_abs              $8BD1
  $8E03  40                         LOADL_qimm   ; inline operand = 0
  $8E04  A2 A2 FF                   BYTE_STORE_far         $FFA2
  $8E07  81 8D                      LOADL_near             $8D
  $8E09  85 9F                      STORE_near             $9F
 >$8E0B  40                         LOADL_qimm   ; inline operand = 0
  $8E0C  86 6B FF                   STORE_far              $FF6B
  $8E0F  A0 A7 FF                   BYTE_LOADL_far         $FFA7
  $8E12  D0                         INC
  $8E13  53                         LOADR_qimm   ; inline operand = 3
  $8E14  DA                         AND
  $8E15  A2 A5 FF                   BYTE_STORE_far         $FFA5
  $8E18  40                         LOADL_qimm   ; inline operand = 0
  $8E19  86 79 FF                   STORE_far              $FF79
  $8E1C  D6 8B 8F                   JUMP_abs               $8F8B
 >$8E1F  DE 6D FF                   LEAL_far               $FF6D
  $8E22  B3                         PUSHL
  $8E23  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8E26  D2                         LSHIFT1
  $8E27  B4                         POPR
  $8E28  BB                         ADD
  $8E29  B0                         DEREF
  $8E2A  D8 7B 8F                   JUMPF_abs              $8F7B
  $8E2D  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8E30  53                         LOADR_qimm   ; inline operand = 3
  $8E31  C0                         CMPEQ
  $8E32  D8 86 8E                   JUMPF_abs              $8E86
  $8E35  DE 6D FF                   LEAL_far               $FF6D
  $8E38  B3                         PUSHL
  $8E39  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8E3C  D2                         LSHIFT1
  $8E3D  B4                         POPR
  $8E3E  BB                         ADD
  $8E3F  B3                         PUSHL
  $8E40  DE 6D FF                   LEAL_far               $FF6D
  $8E43  B3                         PUSHL
  $8E44  87 83                      PUSH_near              $83
  $8E46  A0 A2 FF                   BYTE_LOADL_far         $FFA2
  $8E49  B3                         PUSHL
  $8E4A  DE B8 FF                   LEAL_far               $FFB8
  $8E4D  B3                         PUSHL
  $8E4E  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8E51  55                         LOADR_qimm   ; inline operand = 5
  $8E52  B5                         MULT
  $8E53  B4                         POPR
  $8E54  BB                         ADD
  $8E55  B3                         PUSHL
  $8E56  DE 85 FF                   LEAL_far               $FF85
  $8E59  B3                         PUSHL
  $8E5A  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8E5D  D2                         LSHIFT1
  $8E5E  B4                         POPR
  $8E5F  BB                         ADD
  $8E60  B3                         PUSHL
  $8E61  DE 8D FF                   LEAL_far               $FF8D
  $8E64  B3                         PUSHL
  $8E65  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8E68  D2                         LSHIFT1
  $8E69  B4                         POPR
  $8E6A  BB                         ADD
  $8E6B  B3                         PUSHL
  $8E6C  87 9F                      PUSH_near              $9F
  $8E6E  E9 DB 85 0E                CALL_abs_imm1          $85DB {bytecode}, $0E
  $8E72  B1                         POPSTORE
  $8E73  8D 1A                      BYTE_PUSH_imm1         +26
  $8E75  6A                         PUSH_qimm   ; inline operand = 10
  $8E76  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8E7A  87 8B                      PUSH_near              $8B
  $8E7C  8E 67 9B                   PUSH_imm2              $9B67
  $8E7F  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $8E83  D6 C6 8E                   JUMP_abs               $8EC6
 >$8E86  DE 6D FF                   LEAL_far               $FF6D
  $8E89  B3                         PUSHL
  $8E8A  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8E8D  D2                         LSHIFT1
  $8E8E  B4                         POPR
  $8E8F  BB                         ADD
  $8E90  B3                         PUSHL
  $8E91  87 8B                      PUSH_near              $8B
  $8E93  DE 6D FF                   LEAL_far               $FF6D
  $8E96  B3                         PUSHL
  $8E97  87 83                      PUSH_near              $83
  $8E99  DE 67 FF                   LEAL_far               $FF67
  $8E9C  B3                         PUSHL
  $8E9D  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8EA0  B3                         PUSHL
  $8EA1  A0 A2 FF                   BYTE_LOADL_far         $FFA2
  $8EA4  B3                         PUSHL
  $8EA5  DE B8 FF                   LEAL_far               $FFB8
  $8EA8  B3                         PUSHL
  $8EA9  DE 85 FF                   LEAL_far               $FF85
  $8EAC  B3                         PUSHL
  $8EAD  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8EB0  D2                         LSHIFT1
  $8EB1  B4                         POPR
  $8EB2  BB                         ADD
  $8EB3  B3                         PUSHL
  $8EB4  DE 8D FF                   LEAL_far               $FF8D
  $8EB7  B3                         PUSHL
  $8EB8  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8EBB  D2                         LSHIFT1
  $8EBC  B4                         POPR
  $8EBD  BB                         ADD
  $8EBE  B3                         PUSHL
  $8EBF  87 9F                      PUSH_near              $9F
  $8EC1  E9 C7 86 14                CALL_abs_imm1          $86C7 {bytecode}, $14
  $8EC5  B1                         POPSTORE
 >$8EC6  DE 8D FF                   LEAL_far               $FF8D
  $8EC9  B3                         PUSHL
  $8ECA  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8ECD  D2                         LSHIFT1
  $8ECE  B4                         POPR
  $8ECF  BB                         ADD
  $8ED0  B0                         DEREF
  $8ED1  B3                         PUSHL
  $8ED2  81 9F                      LOADL_near             $9F
  $8ED4  B4                         POPR
  $8ED5  C2                         SCMPLT
  $8ED6  D8 E6 8E                   JUMPF_abs              $8EE6
  $8ED9  DE 8D FF                   LEAL_far               $FF8D
  $8EDC  B3                         PUSHL
  $8EDD  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8EE0  D2                         LSHIFT1
  $8EE1  B4                         POPR
  $8EE2  BB                         ADD
  $8EE3  B0                         DEREF
  $8EE4  85 9F                      STORE_near             $9F
 >$8EE6  DE 6D FF                   LEAL_far               $FF6D
  $8EE9  B3                         PUSHL
  $8EEA  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8EED  D2                         LSHIFT1
  $8EEE  B4                         POPR
  $8EEF  BB                         ADD
  $8EF0  B0                         DEREF
  $8EF1  D7 50 8F                   JUMPT_abs              $8F50
  $8EF4  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8EF7  53                         LOADR_qimm   ; inline operand = 3
  $8EF8  C0                         CMPEQ
  $8EF9  D8 3B 8F                   JUMPF_abs              $8F3B
  $8EFC  DE 85 FF                   LEAL_far               $FF85
  $8EFF  B3                         PUSHL
  $8F00  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8F03  D2                         LSHIFT1
  $8F04  B4                         POPR
  $8F05  BB                         ADD
  $8F06  B0                         DEREF
  $8F07  B3                         PUSHL
  $8F08  DE 8D FF                   LEAL_far               $FF8D
  $8F0B  B3                         PUSHL
  $8F0C  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8F0F  D2                         LSHIFT1
  $8F10  B4                         POPR
  $8F11  BB                         ADD
  $8F12  B0                         DEREF
  $8F13  B4                         POPR
  $8F14  BB                         ADD
  $8F15  B3                         PUSHL
  $8F16  81 9F                      LOADL_near             $9F
  $8F18  B4                         POPR
  $8F19  C7                         UCMPLE
  $8F1A  D8 48 8F                   JUMPF_abs              $8F48
  $8F1D  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8F20  53                         LOADR_qimm   ; inline operand = 3
  $8F21  C0                         CMPEQ
  $8F22  D8 48 8F                   JUMPF_abs              $8F48
  $8F25  8D 14                      BYTE_PUSH_imm1         +20
  $8F27  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8F2B  D7 48 8F                   JUMPT_abs              $8F48
  $8F2E  DE 67 FF                   LEAL_far               $FF67
  $8F31  B3                         PUSHL
  $8F32  65                         PUSH_qimm   ; inline operand = 5
  $8F33  63                         PUSH_qimm   ; inline operand = 3
  $8F34  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8F38  D6 43 8F                   JUMP_abs               $8F43
 >$8F3B  DE 67 FF                   LEAL_far               $FF67
  $8F3E  B3                         PUSHL
  $8F3F  62                         PUSH_qimm   ; inline operand = 2
  $8F40  A0 A5 FF                   BYTE_LOADL_far         $FFA5
 >$8F43  B3                         PUSHL
  $8F44  E9 3E 95 06                CALL_abs_imm1          $953E {bytecode}, $06
 >$8F48  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8F4B  B3                         PUSHL
  $8F4C  E9 C2 88 02                CALL_abs_imm1          $88C2 {bytecode}, $02
 >$8F50  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8F53  D2                         LSHIFT1
  $8F54  8C E1 9A                   LOADR_imm2             $9AE1
  $8F57  BB                         ADD
  $8F58  D3                         BYTE_DEREF
  $8F59  B3                         PUSHL
  $8F5A  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8F5D  D2                         LSHIFT1
  $8F5E  8C E0 9A                   LOADR_imm2             $9AE0
  $8F61  BB                         ADD
  $8F62  D3                         BYTE_DEREF
  $8F63  B3                         PUSHL
  $8F64  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8F68  DE 8D FF                   LEAL_far               $FF8D
  $8F6B  B3                         PUSHL
  $8F6C  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8F6F  D2                         LSHIFT1
  $8F70  B4                         POPR
  $8F71  BB                         ADD
  $8F72  B0                         DEREF
  $8F73  B3                         PUSHL
  $8F74  8E 70 9B                   PUSH_imm2              $9B70
  $8F77  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
 >$8F7B  82 79 FF                   LOADL_far              $FF79
  $8F7E  D0                         INC
  $8F7F  86 79 FF                   STORE_far              $FF79
  $8F82  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8F85  D0                         INC
  $8F86  53                         LOADR_qimm   ; inline operand = 3
  $8F87  DA                         AND
  $8F88  A2 A5 FF                   BYTE_STORE_far         $FFA5
 >$8F8B  82 79 FF                   LOADL_far              $FF79
  $8F8E  54                         LOADR_qimm   ; inline operand = 4
  $8F8F  C6                         UCMPLT
  $8F90  D7 1F 8E                   JUMPT_abs              $8E1F
  $8F93  41                         LOADL_qimm   ; inline operand = 1
  $8F94  A2 A2 FF                   BYTE_STORE_far         $FFA2
  $8F97  A0 A7 FF                   BYTE_LOADL_far         $FFA7
  $8F9A  D0                         INC
  $8F9B  53                         LOADR_qimm   ; inline operand = 3
  $8F9C  DA                         AND
  $8F9D  A2 A5 FF                   BYTE_STORE_far         $FFA5
  $8FA0  40                         LOADL_qimm   ; inline operand = 0
  $8FA1  86 79 FF                   STORE_far              $FF79
  $8FA4  A2 A3 FF                   BYTE_STORE_far         $FFA3
  $8FA7  D6 E7 8F                   JUMP_abs               $8FE7
 >$8FAA  DE 6D FF                   LEAL_far               $FF6D
  $8FAD  B3                         PUSHL
  $8FAE  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8FB1  D2                         LSHIFT1
  $8FB2  B4                         POPR
  $8FB3  BB                         ADD
  $8FB4  B0                         DEREF
  $8FB5  D8 D7 8F                   JUMPF_abs              $8FD7
  $8FB8  DE 8D FF                   LEAL_far               $FF8D
  $8FBB  B3                         PUSHL
  $8FBC  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8FBF  D2                         LSHIFT1
  $8FC0  B4                         POPR
  $8FC1  BB                         ADD
  $8FC2  B0                         DEREF
  $8FC3  83 9F                      LOADR_near             $9F
  $8FC5  C1                         CMPNE
  $8FC6  D8 D0 8F                   JUMPF_abs              $8FD0
  $8FC9  41                         LOADL_qimm   ; inline operand = 1
  $8FCA  86 6B FF                   STORE_far              $FF6B
  $8FCD  D6 EF 8F                   JUMP_abs               $8FEF
 >$8FD0  A0 A3 FF                   BYTE_LOADL_far         $FFA3
  $8FD3  D0                         INC
  $8FD4  A2 A3 FF                   BYTE_STORE_far         $FFA3
 >$8FD7  82 79 FF                   LOADL_far              $FF79
  $8FDA  D0                         INC
  $8FDB  86 79 FF                   STORE_far              $FF79
  $8FDE  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $8FE1  D0                         INC
  $8FE2  53                         LOADR_qimm   ; inline operand = 3
  $8FE3  DA                         AND
  $8FE4  A2 A5 FF                   BYTE_STORE_far         $FFA5
 >$8FE7  82 79 FF                   LOADL_far              $FF79
  $8FEA  54                         LOADR_qimm   ; inline operand = 4
  $8FEB  C6                         UCMPLT
  $8FEC  D7 AA 8F                   JUMPT_abs              $8FAA
 >$8FEF  A0 A3 FF                   BYTE_LOADL_far         $FFA3
  $8FF2  51                         LOADR_qimm   ; inline operand = 1
  $8FF3  C0                         CMPEQ
  $8FF4  D8 FB 8F                   JUMPF_abs              $8FFB
  $8FF7  40                         LOADL_qimm   ; inline operand = 0
  $8FF8  86 6B FF                   STORE_far              $FF6B
 >$8FFB  82 6B FF                   LOADL_far              $FF6B
  $8FFE  D7 0B 8E                   JUMPT_abs              $8E0B
  $9001  A0 A7 FF                   BYTE_LOADL_far         $FFA7
  $9004  D0                         INC
  $9005  53                         LOADR_qimm   ; inline operand = 3
  $9006  DA                         AND
  $9007  A2 A5 FF                   BYTE_STORE_far         $FFA5
  $900A  40                         LOADL_qimm   ; inline operand = 0
  $900B  86 79 FF                   STORE_far              $FF79
  $900E  D6 B1 90                   JUMP_abs               $90B1
 >$9011  DE 6D FF                   LEAL_far               $FF6D
  $9014  B3                         PUSHL
  $9015  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $9018  D2                         LSHIFT1
  $9019  B4                         POPR
  $901A  BB                         ADD
  $901B  B0                         DEREF
  $901C  D8 94 90                   JUMPF_abs              $9094
  $901F  40                         LOADL_qimm   ; inline operand = 0
  $9020  86 77 FF                   STORE_far              $FF77
 >$9023  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $9026  D2                         LSHIFT1
  $9027  8C E9 9A                   LOADR_imm2             $9AE9
  $902A  BB                         ADD
  $902B  D3                         BYTE_DEREF
  $902C  B3                         PUSHL
  $902D  82 77 FF                   LOADL_far              $FF77
  $9030  D2                         LSHIFT1
  $9031  B3                         PUSHL
  $9032  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $9035  D2                         LSHIFT1
  $9036  8C E8 9A                   LOADR_imm2             $9AE8
  $9039  BB                         ADD
  $903A  D3                         BYTE_DEREF
  $903B  B4                         POPR
  $903C  BB                         ADD
  $903D  B3                         PUSHL
  $903E  DE B8 FF                   LEAL_far               $FFB8
  $9041  B3                         PUSHL
  $9042  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $9045  55                         LOADR_qimm   ; inline operand = 5
  $9046  B5                         MULT
  $9047  84 77 FF                   LOADR_far              $FF77
  $904A  BB                         ADD
  $904B  B4                         POPR
  $904C  BB                         ADD
  $904D  D3                         BYTE_DEREF
  $904E  B3                         PUSHL
  $904F  E9 B7 80 06                CALL_abs_imm1          $80B7 {bytecode}, $06
  $9053  82 77 FF                   LOADL_far              $FF77
  $9056  D0                         INC
  $9057  86 77 FF                   STORE_far              $FF77
  $905A  82 77 FF                   LOADL_far              $FF77
  $905D  55                         LOADR_qimm   ; inline operand = 5
  $905E  C6                         UCMPLT
  $905F  D7 23 90                   JUMPT_abs              $9023
  $9062  DE 7B FF                   LEAL_far               $FF7B
  $9065  B3                         PUSHL
  $9066  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $9069  D2                         LSHIFT1
  $906A  B4                         POPR
  $906B  BB                         ADD
  $906C  B3                         PUSHL
  $906D  61                         PUSH_qimm   ; inline operand = 1
  $906E  DE AA FF                   LEAL_far               $FFAA
  $9071  B3                         PUSHL
  $9072  DE B8 FF                   LEAL_far               $FFB8
  $9075  B3                         PUSHL
  $9076  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $9079  55                         LOADR_qimm   ; inline operand = 5
  $907A  B5                         MULT
  $907B  B4                         POPR
  $907C  BB                         ADD
  $907D  B3                         PUSHL
  $907E  E9 E2 98 06                CALL_abs_imm1          $98E2 {bytecode}, $06
  $9082  B1                         POPSTORE
  $9083  A0 AA FF                   BYTE_LOADL_far         $FFAA
  $9086  8C FF 00                   LOADR_imm2             $00FF
  $9089  C0                         CMPEQ
  $908A  D8 A1 90                   JUMPF_abs              $90A1
  $908D  48                         LOADL_qimm   ; inline operand = 8
  $908E  A2 AA FF                   BYTE_STORE_far         $FFAA
  $9091  D6 A1 90                   JUMP_abs               $90A1
 >$9094  DE 7B FF                   LEAL_far               $FF7B
  $9097  B3                         PUSHL
  $9098  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $909B  D2                         LSHIFT1
  $909C  B4                         POPR
  $909D  BB                         ADD
  $909E  B3                         PUSHL
  $909F  40                         LOADL_qimm   ; inline operand = 0
  $90A0  B1                         POPSTORE
 >$90A1  82 79 FF                   LOADL_far              $FF79
  $90A4  D0                         INC
  $90A5  86 79 FF                   STORE_far              $FF79
  $90A8  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $90AB  D0                         INC
  $90AC  53                         LOADR_qimm   ; inline operand = 3
  $90AD  DA                         AND
  $90AE  A2 A5 FF                   BYTE_STORE_far         $FFA5
 >$90B1  82 79 FF                   LOADL_far              $FF79
  $90B4  54                         LOADR_qimm   ; inline operand = 4
  $90B5  C6                         UCMPLT
  $90B6  D7 11 90                   JUMPT_abs              $9011
  $90B9  A0 A7 FF                   BYTE_LOADL_far         $FFA7
  $90BC  A2 A1 FF                   BYTE_STORE_far         $FFA1
  $90BF  82 7B FF                   LOADL_far              $FF7B
  $90C2  85 9F                      STORE_near             $9F
  $90C4  40                         LOADL_qimm   ; inline operand = 0
  $90C5  86 77 FF                   STORE_far              $FF77
  $90C8  A2 A5 FF                   BYTE_STORE_far         $FFA5
  $90CB  D6 09 91                   JUMP_abs               $9109
 >$90CE  DE 7B FF                   LEAL_far               $FF7B
  $90D1  B3                         PUSHL
  $90D2  82 77 FF                   LOADL_far              $FF77
  $90D5  D2                         LSHIFT1
  $90D6  B4                         POPR
  $90D7  BB                         ADD
  $90D8  B0                         DEREF
  $90D9  B3                         PUSHL
  $90DA  81 9F                      LOADL_near             $9F
  $90DC  B4                         POPR
  $90DD  C6                         UCMPLT
  $90DE  D8 02 91                   JUMPF_abs              $9102
  $90E1  DE 6D FF                   LEAL_far               $FF6D
  $90E4  B3                         PUSHL
  $90E5  82 77 FF                   LOADL_far              $FF77
  $90E8  D2                         LSHIFT1
  $90E9  B4                         POPR
  $90EA  BB                         ADD
  $90EB  B0                         DEREF
  $90EC  D8 02 91                   JUMPF_abs              $9102
  $90EF  82 77 FF                   LOADL_far              $FF77
  $90F2  A2 A5 FF                   BYTE_STORE_far         $FFA5
  $90F5  DE 7B FF                   LEAL_far               $FF7B
  $90F8  B3                         PUSHL
  $90F9  82 77 FF                   LOADL_far              $FF77
  $90FC  D2                         LSHIFT1
  $90FD  B4                         POPR
  $90FE  BB                         ADD
  $90FF  B0                         DEREF
  $9100  85 9F                      STORE_near             $9F
 >$9102  82 77 FF                   LOADL_far              $FF77
  $9105  D0                         INC
  $9106  86 77 FF                   STORE_far              $FF77
 >$9109  82 77 FF                   LOADL_far              $FF77
  $910C  54                         LOADR_qimm   ; inline operand = 4
  $910D  C6                         UCMPLT
  $910E  D7 CE 90                   JUMPT_abs              $90CE
  $9111  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $9114  A2 A7 FF                   BYTE_STORE_far         $FFA7
  $9117  40                         LOADL_qimm   ; inline operand = 0
  $9118  86 79 FF                   STORE_far              $FF79
 >$911B  DE 6D FF                   LEAL_far               $FF6D
  $911E  B3                         PUSHL
  $911F  82 79 FF                   LOADL_far              $FF79
  $9122  D2                         LSHIFT1
  $9123  B4                         POPR
  $9124  BB                         ADD
  $9125  B0                         DEREF
  $9126  D8 AB 91                   JUMPF_abs              $91AB
  $9129  DE 7B FF                   LEAL_far               $FF7B
  $912C  B3                         PUSHL
  $912D  82 79 FF                   LOADL_far              $FF79
  $9130  D2                         LSHIFT1
  $9131  B4                         POPR
  $9132  BB                         ADD
  $9133  B3                         PUSHL
  $9134  61                         PUSH_qimm   ; inline operand = 1
  $9135  DE AA FF                   LEAL_far               $FFAA
  $9138  B3                         PUSHL
  $9139  DE B8 FF                   LEAL_far               $FFB8
  $913C  B3                         PUSHL
  $913D  82 79 FF                   LOADL_far              $FF79
  $9140  55                         LOADR_qimm   ; inline operand = 5
  $9141  B5                         MULT
  $9142  B4                         POPR
  $9143  BB                         ADD
  $9144  B3                         PUSHL
  $9145  E9 E2 98 06                CALL_abs_imm1          $98E2 {bytecode}, $06
  $9149  B1                         POPSTORE
  $914A  A0 AA FF                   BYTE_LOADL_far         $FFAA
  $914D  8C FF 00                   LOADR_imm2             $00FF
  $9150  C0                         CMPEQ
  $9151  D8 58 91                   JUMPF_abs              $9158
  $9154  48                         LOADL_qimm   ; inline operand = 8
  $9155  A2 AA FF                   BYTE_STORE_far         $FFAA
 >$9158  82 79 FF                   LOADL_far              $FF79
  $915B  D7 62 91                   JUMPT_abs              $9162
  $915E  44                         LOADL_qimm   ; inline operand = 4
  $915F  D6 63 91                   JUMP_abs               $9163
 >$9162  40                         LOADL_qimm   ; inline operand = 0
 >$9163  86 75 FF                   STORE_far              $FF75
  $9166  82 79 FF                   LOADL_far              $FF79
  $9169  D2                         LSHIFT1
  $916A  8C E9 9A                   LOADR_imm2             $9AE9
  $916D  BB                         ADD
  $916E  D3                         BYTE_DEREF
  $916F  8F FE                      BYTE_ADD_imm1          -2
  $9171  B3                         PUSHL
  $9172  82 79 FF                   LOADL_far              $FF79
  $9175  D2                         LSHIFT1
  $9176  8C E8 9A                   LOADR_imm2             $9AE8
  $9179  BB                         ADD
  $917A  D3                         BYTE_DEREF
  $917B  84 75 FF                   LOADR_far              $FF75
  $917E  BC                         SUB
  $917F  B3                         PUSHL
  $9180  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $9184  A0 AA FF                   BYTE_LOADL_far         $FFAA
  $9187  D7 9A 91                   JUMPT_abs              $919A
  $918A  A0 AB FF                   BYTE_LOADL_far         $FFAB
  $918D  52                         LOADR_qimm   ; inline operand = 2
  $918E  C0                         CMPEQ
  $918F  D8 9A 91                   JUMPF_abs              $919A
  $9192  61                         PUSH_qimm   ; inline operand = 1
  $9193  8E 78 9B                   PUSH_imm2              $9B78
  $9196  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
 >$919A  A0 AA FF                   BYTE_LOADL_far         $FFAA
  $919D  D2                         LSHIFT1
  $919E  8C CE 9A                   LOADR_imm2             $9ACE
  $91A1  BB                         ADD
  $91A2  B0                         DEREF
  $91A3  B3                         PUSHL
  $91A4  8E 7B 9B                   PUSH_imm2              $9B7B
  $91A7  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
 >$91AB  82 79 FF                   LOADL_far              $FF79
  $91AE  D0                         INC
  $91AF  86 79 FF                   STORE_far              $FF79
  $91B2  82 79 FF                   LOADL_far              $FF79
  $91B5  54                         LOADR_qimm   ; inline operand = 4
  $91B6  C6                         UCMPLT
  $91B7  D7 1B 91                   JUMPT_abs              $911B
  $91BA  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $91BD  53                         LOADR_qimm   ; inline operand = 3
  $91BE  C1                         CMPNE
  $91BF  D8 CF 91                   JUMPF_abs              $91CF
  $91C2  DE 67 FF                   LEAL_far               $FF67
  $91C5  B3                         PUSHL
  $91C6  63                         PUSH_qimm   ; inline operand = 3
  $91C7  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $91CA  B3                         PUSHL
  $91CB  E9 3E 95 06                CALL_abs_imm1          $953E {bytecode}, $06
 >$91CF  81 93                      LOADL_near             $93
  $91D1  B7 26                      LONG                   $26
  $91D3  B7 14                      LONG                   $14
  $91D5  81 91                      LOADL_near             $91
  $91D7  B7 26                      LONG                   $26
  $91D9  B7 14                      LONG                   $14
  $91DB  81 8F                      LOADL_near             $8F
  $91DD  B7 26                      LONG                   $26
  $91DF  B7 14                      LONG                   $14
  $91E1  81 8D                      LOADL_near             $8D
  $91E3  B7 26                      LONG                   $26
  $91E5  B7 14                      LONG                   $14
  $91E7  DE 85 FF                   LEAL_far               $FF85
  $91EA  B3                         PUSHL
  $91EB  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $91EE  D2                         LSHIFT1
  $91EF  B4                         POPR
  $91F0  BB                         ADD
  $91F1  B0                         DEREF
  $91F2  B7 26                      LONG                   $26
  $91F4  B7 15                      LONG                   $15
  $91F6  B7 03                      LONG                   $03
  $91F8  B7 15                      LONG                   $15
  $91FA  B7 03                      LONG                   $03
  $91FC  B7 15                      LONG                   $15
  $91FE  B7 03                      LONG                   $03
  $9200  B7 15                      LONG                   $15
  $9202  B7 03                      LONG                   $03
  $9204  B7 19 60 EA 00 00          LONG                   $19 $60 $EA $00 $00
  $920A  B7 0A                      LONG                   $0A
  $920C  D8 20 92                   JUMPF_abs              $9220
  $920F  DE 85 FF                   LEAL_far               $FF85
  $9212  B3                         PUSHL
  $9213  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $9216  D2                         LSHIFT1
  $9217  B4                         POPR
  $9218  BB                         ADD
  $9219  B3                         PUSHL
  $921A  8A 60 EA                   LOADL_imm2             $EA60
  $921D  D6 3A 92                   JUMP_abs               $923A
 >$9220  81 8D                      LOADL_near             $8D
  $9222  83 8F                      LOADR_near             $8F
  $9224  BB                         ADD
  $9225  83 91                      LOADR_near             $91
  $9227  BB                         ADD
  $9228  83 93                      LOADR_near             $93
  $922A  BB                         ADD
  $922B  B3                         PUSHL
  $922C  DE 85 FF                   LEAL_far               $FF85
  $922F  B3                         PUSHL
  $9230  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $9233  D2                         LSHIFT1
  $9234  B4                         POPR
  $9235  BB                         ADD
  $9236  B4                         POPR
  $9237  B3                         PUSHL
  $9238  B0                         DEREF
  $9239  BB                         ADD
 >$923A  B1                         POPSTORE
  $923B  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $923E  53                         LOADR_qimm   ; inline operand = 3
  $923F  C0                         CMPEQ
  $9240  D8 90 92                   JUMPF_abs              $9290
  $9243  8D 32                      BYTE_PUSH_imm1         +50
  $9245  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $9249  B3                         PUSHL
  $924A  A5 67 70                   BYTE_LOADL_abs         $7067
  $924D  5E                         LOADR_qimm   ; inline operand = 14
  $924E  B5                         MULT
  $924F  8C B2 67                   LOADR_imm2             $67B2
  $9252  BB                         ADD
  $9253  B0                         DEREF
  $9254  B4                         POPR
  $9255  BB                         ADD
  $9256  A6 6B 66                   LOADR_abs              $666B
  $9259  BB                         ADD
  $925A  B3                         PUSHL
  $925B  81 8B                      LOADL_near             $8B
  $925D  B4                         POPR
  $925E  C9                         UCMPGE
  $925F  D8 90 92                   JUMPF_abs              $9290
  $9262  DE 67 FF                   LEAL_far               $FF67
  $9265  B3                         PUSHL
  $9266  6B                         PUSH_qimm   ; inline operand = 11
 >$9267  63                         PUSH_qimm   ; inline operand = 3
  $9268  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $926C  D6 77 92                   JUMP_abs               $9277
 >$926F  DE 67 FF                   LEAL_far               $FF67
  $9272  B3                         PUSHL
  $9273  67                         PUSH_qimm   ; inline operand = 7
  $9274  A0 A5 FF                   BYTE_LOADL_far         $FFA5
 >$9277  B3                         PUSHL
  $9278  D6 27 93                   JUMP_abs               $9327
 >$927B  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $927E  53                         LOADR_qimm   ; inline operand = 3
  $927F  C1                         CMPNE
  $9280  D7 6F 92                   JUMPT_abs              $926F
  $9283  60                         PUSH_qimm   ; inline operand = 0
  $9284  E9 75 96 02                CALL_abs_imm1          $9675 {bytecode}, $02
  $9288  DE 67 FF                   LEAL_far               $FF67
  $928B  B3                         PUSHL
  $928C  68                         PUSH_qimm   ; inline operand = 8
  $928D  D6 67 92                   JUMP_abs               $9267
 >$9290  DE 85 FF                   LEAL_far               $FF85
  $9293  B3                         PUSHL
  $9294  A0 A5 FF                   BYTE_LOADL_far         $FFA5
  $9297  D2                         LSHIFT1
  $9298  B4                         POPR
  $9299  BB                         ADD
  $929A  B0                         DEREF
  $929B  8C 60 EA                   LOADR_imm2             $EA60
  $929E  C0                         CMPEQ
  $929F  D7 7B 92                   JUMPT_abs              $927B
  $92A2  DE 97 FF                   LEAL_far               $FF97
  $92A5  B3                         PUSHL
  $92A6  A0 A7 FF                   BYTE_LOADL_far         $FFA7
  $92A9  D2                         LSHIFT1
  $92AA  B4                         POPR
  $92AB  BB                         ADD
  $92AC  B3                         PUSHL
  $92AD  B0                         DEREF
  $92AE  D0                         INC
  $92AF  B1                         POPSTORE
  $92B0  8D 1A                      BYTE_PUSH_imm1         +26
  $92B2  6A                         PUSH_qimm   ; inline operand = 10
  $92B3  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $92B7  87 8B                      PUSH_near              $8B
  $92B9  8E 7E 9B                   PUSH_imm2              $9B7E
  $92BC  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $92C0  60                         PUSH_qimm   ; inline operand = 0
  $92C1  66                         PUSH_qimm   ; inline operand = 6
  $92C2  6A                         PUSH_qimm   ; inline operand = 10
  $92C3  8D 12                      BYTE_PUSH_imm1         +18
  $92C5  8D 15                      BYTE_PUSH_imm1         +21
  $92C7  E9 05 A4 0A                CALL_abs_imm1          $A405 {native}, $0A
  $92CB  8E E7 00                   PUSH_imm2              $00E7
  $92CE  8E DA A7                   PUSH_imm2              $A7DA
  $92D1  8E 9E A7                   PUSH_imm2              $A79E
  $92D4  66                         PUSH_qimm   ; inline operand = 6
  $92D5  6A                         PUSH_qimm   ; inline operand = 10
  $92D6  8D 12                      BYTE_PUSH_imm1         +18
  $92D8  8D 15                      BYTE_PUSH_imm1         +21
  $92DA  69                         PUSH_qimm   ; inline operand = 9
  $92DB  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $92DF  89 16                      BYTE_LOADL_imm1        +22
  $92E1  A8 8A 72                   STORE_abs              $728A
  $92E4  8D 13                      BYTE_PUSH_imm1         +19
  $92E6  8D 16                      BYTE_PUSH_imm1         +22
  $92E8  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $92EC  61                         PUSH_qimm   ; inline operand = 1
  $92ED  8E 87 9B                   PUSH_imm2              $9B87
  $92F0  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $92F4  AC 9F CD                   CALL_abs               $CD9F {native}
  $92F7  A2 A9 FF                   BYTE_STORE_far         $FFA9
  $92FA  40                         LOADL_qimm   ; inline operand = 0
  $92FB  A8 8A 72                   STORE_abs              $728A
  $92FE  60                         PUSH_qimm   ; inline operand = 0
  $92FF  66                         PUSH_qimm   ; inline operand = 6
  $9300  6A                         PUSH_qimm   ; inline operand = 10
  $9301  8D 12                      BYTE_PUSH_imm1         +18
  $9303  8D 15                      BYTE_PUSH_imm1         +21
  $9305  E9 9B A4 0A                CALL_abs_imm1          $A49B {native}, $0A
  $9309  A0 A9 FF                   BYTE_LOADL_far         $FFA9
  $930C  D7 39 93                   JUMPT_abs              $9339
  $930F  8D 64                      BYTE_PUSH_imm1         +100
  $9311  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $9315  A6 6B 66                   LOADR_abs              $666B
  $9318  BB                         ADD
  $9319  8F 64                      BYTE_ADD_imm1          +100
  $931B  83 8B                      LOADR_near             $8B
  $931D  C6                         UCMPLT
  $931E  D8 31 93                   JUMPF_abs              $9331
  $9321  DE 67 FF                   LEAL_far               $FF67
  $9324  B3                         PUSHL
  $9325  6A                         PUSH_qimm   ; inline operand = 10
 >$9326  63                         PUSH_qimm   ; inline operand = 3
 >$9327  E9 3E 95 06                CALL_abs_imm1          $953E {bytecode}, $06
  $932B  81 8B                      LOADL_near             $8B
  $932D  A8 6B 66                   STORE_abs              $666B
  $9330  CF                         RETURN
 >$9331  DE 67 FF                   LEAL_far               $FF67
  $9334  B3                         PUSHL
  $9335  66                         PUSH_qimm   ; inline operand = 6
  $9336  D6 26 93                   JUMP_abs               $9326
 >$9339  40                         LOADL_qimm   ; inline operand = 0
  $933A  86 79 FF                   STORE_far              $FF79
 >$933D  60                         PUSH_qimm   ; inline operand = 0
  $933E  60                         PUSH_qimm   ; inline operand = 0
  $933F  67                         PUSH_qimm   ; inline operand = 7
  $9340  6E                         PUSH_qimm   ; inline operand = 14
  $9341  82 79 FF                   LOADL_far              $FF79
  $9344  D2                         LSHIFT1
  $9345  8C E1 9A                   LOADR_imm2             $9AE1
  $9348  BB                         ADD
  $9349  D3                         BYTE_DEREF
  $934A  8F FB                      BYTE_ADD_imm1          -5
  $934C  B3                         PUSHL
  $934D  82 79 FF                   LOADL_far              $FF79
  $9350  D2                         LSHIFT1
  $9351  8C E0 9A                   LOADR_imm2             $9AE0
  $9354  BB                         ADD
  $9355  D3                         BYTE_DEREF
  $9356  D1                         DEC
  $9357  B3                         PUSHL
  $9358  68                         PUSH_qimm   ; inline operand = 8
  $9359  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $935D  82 79 FF                   LOADL_far              $FF79
  $9360  D0                         INC
  $9361  86 79 FF                   STORE_far              $FF79
  $9364  82 79 FF                   LOADL_far              $FF79
  $9367  54                         LOADR_qimm   ; inline operand = 4
  $9368  C6                         UCMPLT
  $9369  D7 3D 93                   JUMPT_abs              $933D
  $936C  D6 95 89                   JUMP_abs               $8995

; ============================================================
; sub $936F   (frame_off=-22, body @ $9374)   [PRG $3736F]
; ============================================================
  $9374  AC 37 CE                   CALL_abs               $CE37 {native}
  $9377  6F                         PUSH_qimm   ; inline operand = 15
  $9378  8D 10                      BYTE_PUSH_imm1         +16
  $937A  DE EA FF                   LEAL_far               $FFEA
  $937D  B3                         PUSHL
  $937E  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $9382  8D 10                      BYTE_PUSH_imm1         +16
  $9384  60                         PUSH_qimm   ; inline operand = 0
  $9385  DE EA FF                   LEAL_far               $FFEA
  $9388  B3                         PUSHL
  $9389  66                         PUSH_qimm   ; inline operand = 6
  $938A  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $938E  8E 03 80                   PUSH_imm2              $8003
  $9391  8E DC 00                   PUSH_imm2              $00DC
  $9394  61                         PUSH_qimm   ; inline operand = 1
  $9395  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $9399  A4 6B 66                   LOADL_abs              $666B
  $939C  2B                         STORE_quick   ; inline operand = 11
  $939D  8D 10                      BYTE_PUSH_imm1         +16
  $939F  60                         PUSH_qimm   ; inline operand = 0
  $93A0  8E 6A 9A                   PUSH_imm2              $9A6A
  $93A3  66                         PUSH_qimm   ; inline operand = 6
  $93A4  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $93A8  AC 1F 89                   CALL_abs               $891F (poker_bet_screen) {bytecode}
  $93AB  8A FF 00                   LOADL_imm2             $00FF
  $93AE  A9 68 70                   BYTE_STORE_abs         $7068
  $93B1  A4 6B 66                   LOADL_abs              $666B
  $93B4  2A                         STORE_quick   ; inline operand = 10
  $93B5  0B                         LOADL_quick   ; inline operand = 11
  $93B6  1A                         LOADR_quick   ; inline operand = 10
  $93B7  C6                         UCMPLT
  $93B8  D8 E0 93                   JUMPF_abs              $93E0
  $93BB  A5 67 70                   BYTE_LOADL_abs         $7067
  $93BE  5E                         LOADR_qimm   ; inline operand = 14
  $93BF  B5                         MULT
  $93C0  8C B2 67                   LOADR_imm2             $67B2
  $93C3  BB                         ADD
  $93C4  B0                         DEREF
  $93C5  53                         LOADR_qimm   ; inline operand = 3
  $93C6  B6                         SDIV
  $93C7  29                         STORE_quick   ; inline operand = 9
  $93C8  09                         LOADL_quick   ; inline operand = 9
  $93C9  54                         LOADR_qimm   ; inline operand = 4
  $93CA  B6                         SDIV
  $93CB  B3                         PUSHL
  $93CC  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $93D0  19                         LOADR_quick   ; inline operand = 9
  $93D1  BB                         ADD
  $93D2  B3                         PUSHL
  $93D3  0A                         LOADL_quick   ; inline operand = 10
  $93D4  1B                         LOADR_quick   ; inline operand = 11
  $93D5  BC                         SUB
  $93D6  B4                         POPR
  $93D7  B8                         UDIV
  $93D8  CD                         SWAP
  $93D9  A5 86 6B                   BYTE_LOADL_abs         $6B86
  $93DC  BB                         ADD
  $93DD  A9 86 6B                   BYTE_STORE_abs         $6B86
 >$93E0  41                         LOADL_qimm   ; inline operand = 1
  $93E1  A9 63 70                   BYTE_STORE_abs         $7063
  $93E4  8E D4 86                   PUSH_imm2              $86D4
  $93E7  8E DA 00                   PUSH_imm2              $00DA
  $93EA  61                         PUSH_qimm   ; inline operand = 1
  $93EB  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $93EF  41                         LOADL_qimm   ; inline operand = 1
  $93F0  CF                         RETURN

; ============================================================
; sub $93F1   (frame_off=-4, body @ $93F6)   [PRG $373F1]
; ============================================================
  $93F6  A0 0B 00                   BYTE_LOADL_far         $000B
  $93F9  D2                         LSHIFT1
  $93FA  8C 1B 9F                   LOADR_imm2             $9F1B
  $93FD  BB                         ADD
  $93FE  D3                         BYTE_DEREF
  $93FF  2A                         STORE_quick   ; inline operand = 10
  $9400  A0 0B 00                   BYTE_LOADL_far         $000B
  $9403  D2                         LSHIFT1
  $9404  8C 1C 9F                   LOADR_imm2             $9F1C
  $9407  BB                         ADD
  $9408  D3                         BYTE_DEREF
  $9409  2B                         STORE_quick   ; inline operand = 11
  $940A  68                         PUSH_qimm   ; inline operand = 8
  $940B  6F                         PUSH_qimm   ; inline operand = 15
  $940C  0B                         LOADL_quick   ; inline operand = 11
  $940D  D1                         DEC
  $940E  B3                         PUSHL
  $940F  3A                         PUSH_quick   ; inline operand = 10
  $9410  E9 02 A5 08                CALL_abs_imm1          $A502 {native}, $08
  $9414  A0 0B 00                   BYTE_LOADL_far         $000B
  $9417  52                         LOADR_qimm   ; inline operand = 2
  $9418  C0                         CMPEQ
  $9419  D8 4A 94                   JUMPF_abs              $944A
  $941C  60                         PUSH_qimm   ; inline operand = 0
  $941D  60                         PUSH_qimm   ; inline operand = 0
  $941E  61                         PUSH_qimm   ; inline operand = 1
  $941F  6D                         PUSH_qimm   ; inline operand = 13
  $9420  0B                         LOADL_quick   ; inline operand = 11
  $9421  D1                         DEC
  $9422  B3                         PUSHL
  $9423  0A                         LOADL_quick   ; inline operand = 10
  $9424  D0                         INC
  $9425  B3                         PUSHL
  $9426  68                         PUSH_qimm   ; inline operand = 8
  $9427  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $942B  61                         PUSH_qimm   ; inline operand = 1
  $942C  A0 0B 00                   BYTE_LOADL_far         $000B
  $942F  1E                         LOADR_quick   ; inline operand = 14
  $9430  BB                         ADD
  $9431  D3                         BYTE_DEREF
  $9432  B3                         PUSHL
  $9433  3B                         PUSH_quick   ; inline operand = 11
  $9434  0A                         LOADL_quick   ; inline operand = 10
  $9435  7A                         ADD_qimm   ; inline operand = 10
  $9436  B3                         PUSHL
  $9437  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $943B  60                         PUSH_qimm   ; inline operand = 0
  $943C  62                         PUSH_qimm   ; inline operand = 2
  $943D  66                         PUSH_qimm   ; inline operand = 6
  $943E  6A                         PUSH_qimm   ; inline operand = 10
  $943F  3B                         PUSH_quick   ; inline operand = 11
  $9440  3A                         PUSH_quick   ; inline operand = 10
  $9441  E9 3C A7 0C                CALL_abs_imm1          $A73C (native_draw_box) {native}, $0C
  $9445  0A                         LOADL_quick   ; inline operand = 10
  $9446  D0                         INC
  $9447  D6 73 94                   JUMP_abs               $9473
 >$944A  60                         PUSH_qimm   ; inline operand = 0
  $944B  60                         PUSH_qimm   ; inline operand = 0
  $944C  61                         PUSH_qimm   ; inline operand = 1
  $944D  6E                         PUSH_qimm   ; inline operand = 14
  $944E  0B                         LOADL_quick   ; inline operand = 11
  $944F  D1                         DEC
  $9450  B3                         PUSHL
  $9451  3A                         PUSH_quick   ; inline operand = 10
  $9452  68                         PUSH_qimm   ; inline operand = 8
  $9453  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $9457  61                         PUSH_qimm   ; inline operand = 1
  $9458  A0 0B 00                   BYTE_LOADL_far         $000B
  $945B  1E                         LOADR_quick   ; inline operand = 14
  $945C  BB                         ADD
  $945D  D3                         BYTE_DEREF
  $945E  B3                         PUSHL
  $945F  3B                         PUSH_quick   ; inline operand = 11
  $9460  3A                         PUSH_quick   ; inline operand = 10
  $9461  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $9465  60                         PUSH_qimm   ; inline operand = 0
  $9466  61                         PUSH_qimm   ; inline operand = 1
  $9467  66                         PUSH_qimm   ; inline operand = 6
  $9468  6A                         PUSH_qimm   ; inline operand = 10
  $9469  3B                         PUSH_quick   ; inline operand = 11
  $946A  0A                         LOADL_quick   ; inline operand = 10
  $946B  75                         ADD_qimm   ; inline operand = 5
  $946C  B3                         PUSHL
  $946D  E9 3C A7 0C                CALL_abs_imm1          $A73C (native_draw_box) {native}, $0C
  $9471  0A                         LOADL_quick   ; inline operand = 10
  $9472  76                         ADD_qimm   ; inline operand = 6
 >$9473  A8 8A 72                   STORE_abs              $728A
  $9476  0B                         LOADL_quick   ; inline operand = 11
  $9477  D0                         INC
  $9478  B3                         PUSHL
  $9479  AA 8A 72                   PUSH_abs               $728A
  $947C  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $9480  60                         PUSH_qimm   ; inline operand = 0
  $9481  3D                         PUSH_quick   ; inline operand = 13
  $9482  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $9486  40                         LOADL_qimm   ; inline operand = 0
  $9487  A8 8A 72                   STORE_abs              $728A
  $948A  CF                         RETURN

; ============================================================
; sub $948B   (frame_off=-6, body @ $9490)   [PRG $3748B]
; ============================================================
 >$9490  0D                         LOADL_quick   ; inline operand = 13
  $9491  D0                         INC
  $9492  2D                         STORE_quick   ; inline operand = 13
  $9493  D1                         DEC
  $9494  D3                         BYTE_DEREF
  $9495  B3                         PUSHL
  $9496  E9 0C DC 02                CALL_abs_imm1          $DC0C {native}, $02
  $949A  A2 FD FF                   BYTE_STORE_far         $FFFD
  $949D  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $94A0  D9 08 00 43 00 25 95 45 00 37 95 4B ... SWITCH_noncontig       count=8   ; .table 8 (key,target) + default (noncontiguous); SWITCH 67=>$9525 69=>$9537 75=>$94CE 77=>$9502 79=>$952E 83=>$94CE 84=>$94C5 87=>$951D default=>$9490
 >$94C5  A0 0B 00                   BYTE_LOADL_far         $000B
  $94C8  A2 FB FF                   BYTE_STORE_far         $FFFB
  $94CB  D6 90 94                   JUMP_abs               $9490
 >$94CE  0D                         LOADL_quick   ; inline operand = 13
  $94CF  D3                         BYTE_DEREF
  $94D0  8F E0                      BYTE_ADD_imm1          -32
  $94D2  A2 FC FF                   BYTE_STORE_far         $FFFC
  $94D5  0D                         LOADL_quick   ; inline operand = 13
  $94D6  D0                         INC
  $94D7  2D                         STORE_quick   ; inline operand = 13
 >$94D8  63                         PUSH_qimm   ; inline operand = 3
  $94D9  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $94DD  A2 FA FF                   BYTE_STORE_far         $FFFA
  $94E0  A0 FB FF                   BYTE_LOADL_far         $FFFB
  $94E3  B3                         PUSHL
  $94E4  A0 FA FF                   BYTE_LOADL_far         $FFFA
  $94E7  B4                         POPR
  $94E8  C0                         CMPEQ
  $94E9  D7 D8 94                   JUMPT_abs              $94D8
  $94EC  3E                         PUSH_quick   ; inline operand = 14
  $94ED  A0 FC FF                   BYTE_LOADL_far         $FFFC
  $94F0  D2                         LSHIFT1
  $94F1  8C 90 9B                   LOADR_imm2             $9B90
  $94F4  BB                         ADD
  $94F5  B0                         DEREF
  $94F6  B3                         PUSHL
  $94F7  A0 FA FF                   BYTE_LOADL_far         $FFFA
 >$94FA  B3                         PUSHL
  $94FB  E9 F1 93 06                CALL_abs_imm1          $93F1 {bytecode}, $06
  $94FF  D6 90 94                   JUMP_abs               $9490
 >$9502  0D                         LOADL_quick   ; inline operand = 13
  $9503  D3                         BYTE_DEREF
  $9504  8F E0                      BYTE_ADD_imm1          -32
  $9506  A2 FC FF                   BYTE_STORE_far         $FFFC
  $9509  0D                         LOADL_quick   ; inline operand = 13
  $950A  D0                         INC
  $950B  2D                         STORE_quick   ; inline operand = 13
  $950C  3E                         PUSH_quick   ; inline operand = 14
  $950D  A0 FC FF                   BYTE_LOADL_far         $FFFC
  $9510  D2                         LSHIFT1
  $9511  8C 90 9B                   LOADR_imm2             $9B90
  $9514  BB                         ADD
  $9515  B0                         DEREF
  $9516  B3                         PUSHL
  $9517  A0 0B 00                   BYTE_LOADL_far         $000B
  $951A  D6 FA 94                   JUMP_abs               $94FA
 >$951D  61                         PUSH_qimm   ; inline operand = 1
  $951E  E9 9B CE 02                CALL_abs_imm1          $CE9B {native}, $02
  $9522  D6 90 94                   JUMP_abs               $9490
 >$9525  AC 89 A5                   CALL_abs               $A589 {native}
  $9528  AC 44 A5                   CALL_abs               $A544 {native}
  $952B  D6 90 94                   JUMP_abs               $9490
 >$952E  AC 44 A5                   CALL_abs               $A544 {native}
  $9531  D7 2E 95                   JUMPT_abs              $952E
  $9534  D6 90 94                   JUMP_abs               $9490
 >$9537  AC 44 A5                   CALL_abs               $A544 {native}
  $953A  D7 37 95                   JUMPT_abs              $9537
  $953D  CF                         RETURN

; ============================================================
; sub $953E   (frame_off=-20, body @ $9543)   [PRG $3753E]
; ============================================================
  $9543  A0 0D 00                   BYTE_LOADL_far         $000D
  $9546  D5 00 00 0D 00 7C 95 67 95 8D 95 A2 ... SWITCH_contig          limit=13   ; .table 13 word targets (contiguous); SWITCH 0=>$9567 1=>$958D 2=>$95A2 3=>$95B7 4=>$95CC 5=>$95E1 6=>$95F9 7=>$9615 8=>$9624 9=>$963F 10=>$9645 11=>$964B 12=>$9660 default=>$957C
 >$9567  8E 5A 9F                   PUSH_imm2              $9F5A
  $956A  DE EC FF                   LEAL_far               $FFEC
  $956D  B3                         PUSHL
  $956E  E9 A6 DE 04                CALL_abs_imm1          $DEA6 (str_copy) {native}, $04
  $9572  64                         PUSH_qimm   ; inline operand = 4
  $9573  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $9577  8F 20                      BYTE_ADD_imm1          +32
 >$9579  A2 EE FF                   BYTE_STORE_far         $FFEE
 >$957C  3E                         PUSH_quick   ; inline operand = 14
  $957D  DE EC FF                   LEAL_far               $FFEC
  $9580  B3                         PUSHL
  $9581  A0 0B 00                   BYTE_LOADL_far         $000B
  $9584  B3                         PUSHL
  $9585  E9 8B 94 06                CALL_abs_imm1          $948B {bytecode}, $06
  $9589  AC 89 A5                   CALL_abs               $A589 {native}
  $958C  CF                         RETURN
 >$958D  8E 61 9F                   PUSH_imm2              $9F61
  $9590  DE EC FF                   LEAL_far               $FFEC
  $9593  B3                         PUSHL
  $9594  E9 A6 DE 04                CALL_abs_imm1          $DEA6 (str_copy) {native}, $04
  $9598  64                         PUSH_qimm   ; inline operand = 4
  $9599  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $959D  8F 24                      BYTE_ADD_imm1          +36
  $959F  D6 79 95                   JUMP_abs               $9579
 >$95A2  8E 68 9F                   PUSH_imm2              $9F68
  $95A5  DE EC FF                   LEAL_far               $FFEC
  $95A8  B3                         PUSHL
  $95A9  E9 A6 DE 04                CALL_abs_imm1          $DEA6 (str_copy) {native}, $04
  $95AD  66                         PUSH_qimm   ; inline operand = 6
  $95AE  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $95B2  8F 28                      BYTE_ADD_imm1          +40
  $95B4  D6 79 95                   JUMP_abs               $9579
 >$95B7  8E 6F 9F                   PUSH_imm2              $9F6F
  $95BA  DE EC FF                   LEAL_far               $FFEC
  $95BD  B3                         PUSHL
  $95BE  E9 A6 DE 04                CALL_abs_imm1          $DEA6 (str_copy) {native}, $04
  $95C2  64                         PUSH_qimm   ; inline operand = 4
  $95C3  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $95C7  8F 2E                      BYTE_ADD_imm1          +46
  $95C9  D6 79 95                   JUMP_abs               $9579
 >$95CC  8E 76 9F                   PUSH_imm2              $9F76
  $95CF  DE EC FF                   LEAL_far               $FFEC
  $95D2  B3                         PUSHL
  $95D3  E9 A6 DE 04                CALL_abs_imm1          $DEA6 (str_copy) {native}, $04
  $95D7  67                         PUSH_qimm   ; inline operand = 7
  $95D8  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $95DC  8F 32                      BYTE_ADD_imm1          +50
  $95DE  D6 79 95                   JUMP_abs               $9579
 >$95E1  8E 7D 9F                   PUSH_imm2              $9F7D
  $95E4  DE EC FF                   LEAL_far               $FFEC
  $95E7  B3                         PUSHL
  $95E8  E9 A6 DE 04                CALL_abs_imm1          $DEA6 (str_copy) {native}, $04
  $95EC  65                         PUSH_qimm   ; inline operand = 5
  $95ED  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $95F1  8C 21 9F                   LOADR_imm2             $9F21
  $95F4  BB                         ADD
  $95F5  D3                         BYTE_DEREF
  $95F6  D6 79 95                   JUMP_abs               $9579
 >$95F9  62                         PUSH_qimm   ; inline operand = 2
  $95FA  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $95FE  D8 0F 96                   JUMPF_abs              $960F
  $9601  8E 8C 9F                   PUSH_imm2              $9F8C
 >$9604  DE EC FF                   LEAL_far               $FFEC
  $9607  B3                         PUSHL
  $9608  E9 A6 DE 04                CALL_abs_imm1          $DEA6 (str_copy) {native}, $04
  $960C  D6 7C 95                   JUMP_abs               $957C
 >$960F  8E 92 9F                   PUSH_imm2              $9F92
  $9612  D6 04 96                   JUMP_abs               $9604
 >$9615  63                         PUSH_qimm   ; inline operand = 3
  $9616  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $961A  D2                         LSHIFT1
  $961B  8C 27 9F                   LOADR_imm2             $9F27
  $961E  BB                         ADD
  $961F  B0                         DEREF
  $9620  B3                         PUSHL
  $9621  D6 04 96                   JUMP_abs               $9604
 >$9624  8E 9C 9F                   PUSH_imm2              $9F9C
  $9627  DE EC FF                   LEAL_far               $FFEC
  $962A  B3                         PUSHL
  $962B  E9 A6 DE 04                CALL_abs_imm1          $DEA6 (str_copy) {native}, $04
  $962F  63                         PUSH_qimm   ; inline operand = 3
  $9630  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $9634  A6 2D 9F                   LOADR_abs              $9F2D
  $9637  BB                         ADD
  $9638  D3                         BYTE_DEREF
  $9639  A2 F2 FF                   BYTE_STORE_far         $FFF2
  $963C  D6 7C 95                   JUMP_abs               $957C
 >$963F  8E A7 9F                   PUSH_imm2              $9FA7
  $9642  D6 04 96                   JUMP_abs               $9604
 >$9645  8E AE 9F                   PUSH_imm2              $9FAE
  $9648  D6 04 96                   JUMP_abs               $9604
 >$964B  8E B3 9F                   PUSH_imm2              $9FB3
  $964E  DE EC FF                   LEAL_far               $FFEC
  $9651  B3                         PUSHL
  $9652  E9 A6 DE 04                CALL_abs_imm1          $DEA6 (str_copy) {native}, $04
  $9656  62                         PUSH_qimm   ; inline operand = 2
  $9657  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $965B  8F 4A                      BYTE_ADD_imm1          +74
  $965D  D6 79 95                   JUMP_abs               $9579
 >$9660  8E B9 9F                   PUSH_imm2              $9FB9
  $9663  DE EC FF                   LEAL_far               $FFEC
  $9666  B3                         PUSHL
  $9667  E9 A6 DE 04                CALL_abs_imm1          $DEA6 (str_copy) {native}, $04
  $966B  62                         PUSH_qimm   ; inline operand = 2
  $966C  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $9670  8F 4C                      BYTE_ADD_imm1          +76
  $9672  D6 79 95                   JUMP_abs               $9579

; ============================================================
; sub $9675   (frame_off=+0, body @ $967A)   [PRG $37675]
; ============================================================
  $967A  60                         PUSH_qimm   ; inline operand = 0
  $967B  AC 91 D7                   CALL_abs               $D791 {native}
  $967E  B3                         PUSHL
  $967F  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $9683  61                         PUSH_qimm   ; inline operand = 1
  $9684  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $9688  61                         PUSH_qimm   ; inline operand = 1
  $9689  A0 0B 00                   BYTE_LOADL_far         $000B
  $968C  D8 95 96                   JUMPF_abs              $9695
  $968F  8A BF 9F                   LOADL_imm2             $9FBF
  $9692  D6 98 96                   JUMP_abs               $9698
 >$9695  8A DA 9F                   LOADL_imm2             $9FDA
 >$9698  B3                         PUSHL
  $9699  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $969D  61                         PUSH_qimm   ; inline operand = 1
  $969E  E9 9B CE 02                CALL_abs_imm1          $CE9B {native}, $02
  $96A2  CF                         RETURN

; ============================================================
; sub $96A3   (frame_off=-8, body @ $96A8)   [PRG $376A3]
; ============================================================
  $96A8  40                         LOADL_qimm   ; inline operand = 0
  $96A9  2A                         STORE_quick   ; inline operand = 10
 >$96AA  0C                         LOADL_quick   ; inline operand = 12
  $96AB  1A                         LOADR_quick   ; inline operand = 10
  $96AC  BB                         ADD
  $96AD  D3                         BYTE_DEREF
  $96AE  A2 FE FF                   BYTE_STORE_far         $FFFE
  $96B1  0A                         LOADL_quick   ; inline operand = 10
  $96B2  29                         STORE_quick   ; inline operand = 9
  $96B3  28                         STORE_quick   ; inline operand = 8
  $96B4  D6 D0 96                   JUMP_abs               $96D0
 >$96B7  0C                         LOADL_quick   ; inline operand = 12
  $96B8  19                         LOADR_quick   ; inline operand = 9
  $96B9  BB                         ADD
  $96BA  D3                         BYTE_DEREF
  $96BB  B3                         PUSHL
  $96BC  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $96BF  B4                         POPR
  $96C0  C8                         UCMPGT
  $96C1  D8 CD 96                   JUMPF_abs              $96CD
  $96C4  09                         LOADL_quick   ; inline operand = 9
  $96C5  28                         STORE_quick   ; inline operand = 8
  $96C6  0C                         LOADL_quick   ; inline operand = 12
  $96C7  19                         LOADR_quick   ; inline operand = 9
  $96C8  BB                         ADD
  $96C9  D3                         BYTE_DEREF
  $96CA  A2 FE FF                   BYTE_STORE_far         $FFFE
 >$96CD  09                         LOADL_quick   ; inline operand = 9
  $96CE  D0                         INC
  $96CF  29                         STORE_quick   ; inline operand = 9
 >$96D0  09                         LOADL_quick   ; inline operand = 9
  $96D1  55                         LOADR_qimm   ; inline operand = 5
  $96D2  C6                         UCMPLT
  $96D3  D7 B7 96                   JUMPT_abs              $96B7
  $96D6  0A                         LOADL_quick   ; inline operand = 10
  $96D7  18                         LOADR_quick   ; inline operand = 8
  $96D8  C1                         CMPNE
  $96D9  D8 F4 96                   JUMPF_abs              $96F4
  $96DC  0C                         LOADL_quick   ; inline operand = 12
  $96DD  1A                         LOADR_quick   ; inline operand = 10
  $96DE  BB                         ADD
  $96DF  D3                         BYTE_DEREF
  $96E0  A2 FF FF                   BYTE_STORE_far         $FFFF
  $96E3  0C                         LOADL_quick   ; inline operand = 12
  $96E4  1A                         LOADR_quick   ; inline operand = 10
  $96E5  BB                         ADD
  $96E6  B3                         PUSHL
  $96E7  0C                         LOADL_quick   ; inline operand = 12
  $96E8  18                         LOADR_quick   ; inline operand = 8
  $96E9  BB                         ADD
  $96EA  D3                         BYTE_DEREF
  $96EB  D4                         BYTE_POPSTORE
  $96EC  0C                         LOADL_quick   ; inline operand = 12
  $96ED  18                         LOADR_quick   ; inline operand = 8
  $96EE  BB                         ADD
  $96EF  B3                         PUSHL
  $96F0  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $96F3  D4                         BYTE_POPSTORE
 >$96F4  0A                         LOADL_quick   ; inline operand = 10
  $96F5  D0                         INC
  $96F6  2A                         STORE_quick   ; inline operand = 10
  $96F7  0A                         LOADL_quick   ; inline operand = 10
  $96F8  55                         LOADR_qimm   ; inline operand = 5
  $96F9  C6                         UCMPLT
  $96FA  D7 AA 96                   JUMPT_abs              $96AA
  $96FD  CF                         RETURN

; ============================================================
; sub $96FE   (frame_off=-9, body @ $9703)   [PRG $376FE]
; ============================================================
  $9703  60                         PUSH_qimm   ; inline operand = 0
  $9704  64                         PUSH_qimm   ; inline operand = 4
  $9705  DE F9 FF                   LEAL_far               $FFF9
  $9708  B3                         PUSHL
  $9709  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $970D  40                         LOADL_qimm   ; inline operand = 0
  $970E  85 F7                      STORE_near             $F7
 >$9710  DE F9 FF                   LEAL_far               $FFF9
  $9713  B3                         PUSHL
  $9714  0C                         LOADL_quick   ; inline operand = 12
  $9715  83 F7                      LOADR_near             $F7
  $9717  BB                         ADD
  $9718  D3                         BYTE_DEREF
  $9719  5F                         LOADR_qimm   ; inline operand = 15
  $971A  DA                         AND
  $971B  B4                         POPR
  $971C  BB                         ADD
  $971D  B3                         PUSHL
  $971E  D3                         BYTE_DEREF
  $971F  D0                         INC
  $9720  D4                         BYTE_POPSTORE
  $9721  81 F7                      LOADL_near             $F7
  $9723  D0                         INC
  $9724  85 F7                      STORE_near             $F7
  $9726  81 F7                      LOADL_near             $F7
  $9728  55                         LOADR_qimm   ; inline operand = 5
  $9729  C6                         UCMPLT
  $972A  D7 10 97                   JUMPT_abs              $9710
  $972D  40                         LOADL_qimm   ; inline operand = 0
  $972E  A2 FD FF                   BYTE_STORE_far         $FFFD
  $9731  40                         LOADL_qimm   ; inline operand = 0
  $9732  2B                         STORE_quick   ; inline operand = 11
  $9733  40                         LOADL_qimm   ; inline operand = 0
  $9734  D6 68 97                   JUMP_abs               $9768
 >$9737  DE F9 FF                   LEAL_far               $FFF9
  $973A  B3                         PUSHL
  $973B  81 F7                      LOADL_near             $F7
  $973D  B4                         POPR
  $973E  BB                         ADD
  $973F  D3                         BYTE_DEREF
  $9740  B3                         PUSHL
  $9741  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $9744  B4                         POPR
  $9745  C6                         UCMPLT
  $9746  D8 55 97                   JUMPF_abs              $9755
  $9749  DE F9 FF                   LEAL_far               $FFF9
  $974C  B3                         PUSHL
  $974D  81 F7                      LOADL_near             $F7
  $974F  B4                         POPR
  $9750  BB                         ADD
  $9751  D3                         BYTE_DEREF
  $9752  A2 FD FF                   BYTE_STORE_far         $FFFD
 >$9755  DE F9 FF                   LEAL_far               $FFF9
  $9758  B3                         PUSHL
  $9759  81 F7                      LOADL_near             $F7
  $975B  B4                         POPR
  $975C  BB                         ADD
  $975D  D3                         BYTE_DEREF
  $975E  55                         LOADR_qimm   ; inline operand = 5
  $975F  C0                         CMPEQ
  $9760  D8 65 97                   JUMPF_abs              $9765
  $9763  41                         LOADL_qimm   ; inline operand = 1
  $9764  2B                         STORE_quick   ; inline operand = 11
 >$9765  81 F7                      LOADL_near             $F7
  $9767  D0                         INC
 >$9768  85 F7                      STORE_near             $F7
  $976A  81 F7                      LOADL_near             $F7
  $976C  54                         LOADR_qimm   ; inline operand = 4
  $976D  C6                         UCMPLT
  $976E  D7 37 97                   JUMPT_abs              $9737
  $9771  3D                         PUSH_quick   ; inline operand = 13
  $9772  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $9775  8B 14                      BYTE_LOADR_imm1        +20
  $9777  B5                         MULT
  $9778  D4                         BYTE_POPSTORE
  $9779  0B                         LOADL_quick   ; inline operand = 11
  $977A  CF                         RETURN

; ============================================================
; sub $977B   (frame_off=-10, body @ $9780)   [PRG $3777B]
; ============================================================
  $9780  40                         LOADL_qimm   ; inline operand = 0
  $9781  27                         STORE_quick   ; inline operand = 7
 >$9782  DE F8 FF                   LEAL_far               $FFF8
  $9785  B3                         PUSHL
  $9786  07                         LOADL_quick   ; inline operand = 7
  $9787  B4                         POPR
  $9788  BB                         ADD
  $9789  B3                         PUSHL
  $978A  0C                         LOADL_quick   ; inline operand = 12
  $978B  17                         LOADR_quick   ; inline operand = 7
  $978C  BB                         ADD
  $978D  D3                         BYTE_DEREF
  $978E  54                         LOADR_qimm   ; inline operand = 4
  $978F  BE                         URSHIFT
  $9790  5F                         LOADR_qimm   ; inline operand = 15
  $9791  DA                         AND
  $9792  D4                         BYTE_POPSTORE
  $9793  07                         LOADL_quick   ; inline operand = 7
  $9794  D0                         INC
  $9795  27                         STORE_quick   ; inline operand = 7
  $9796  07                         LOADL_quick   ; inline operand = 7
  $9797  55                         LOADR_qimm   ; inline operand = 5
  $9798  C6                         UCMPLT
  $9799  D7 82 97                   JUMPT_abs              $9782
  $979C  DE F8 FF                   LEAL_far               $FFF8
  $979F  B3                         PUSHL
  $97A0  E9 A3 96 02                CALL_abs_imm1          $96A3 {bytecode}, $02
  $97A4  3D                         PUSH_quick   ; inline operand = 13
  $97A5  89 14                      BYTE_LOADL_imm1        +20
  $97A7  D4                         BYTE_POPSTORE
  $97A8  A0 F8 FF                   BYTE_LOADL_far         $FFF8
  $97AB  A2 FD FF                   BYTE_STORE_far         $FFFD
  $97AE  41                         LOADL_qimm   ; inline operand = 1
  $97AF  D6 01 98                   JUMP_abs               $9801
 >$97B2  DE F8 FF                   LEAL_far               $FFF8
  $97B5  B3                         PUSHL
  $97B6  07                         LOADL_quick   ; inline operand = 7
  $97B7  B4                         POPR
  $97B8  BB                         ADD
  $97B9  D3                         BYTE_DEREF
  $97BA  B3                         PUSHL
  $97BB  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $97BE  D0                         INC
  $97BF  B4                         POPR
  $97C0  C0                         CMPEQ
  $97C1  D7 D6 97                   JUMPT_abs              $97D6
  $97C4  DE F8 FF                   LEAL_far               $FFF8
  $97C7  B3                         PUSHL
  $97C8  07                         LOADL_quick   ; inline operand = 7
  $97C9  B4                         POPR
  $97CA  BB                         ADD
  $97CB  D3                         BYTE_DEREF
  $97CC  B3                         PUSHL
  $97CD  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $97D0  72                         ADD_qimm   ; inline operand = 2
  $97D1  B4                         POPR
  $97D2  C0                         CMPEQ
  $97D3  D8 F4 97                   JUMPF_abs              $97F4
 >$97D6  DE F8 FF                   LEAL_far               $FFF8
  $97D9  B3                         PUSHL
  $97DA  07                         LOADL_quick   ; inline operand = 7
  $97DB  B4                         POPR
  $97DC  BB                         ADD
  $97DD  D3                         BYTE_DEREF
  $97DE  B3                         PUSHL
  $97DF  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $97E2  D0                         INC
  $97E3  B4                         POPR
  $97E4  C0                         CMPEQ
  $97E5  D8 ED 97                   JUMPF_abs              $97ED
  $97E8  8D 14                      BYTE_PUSH_imm1         +20
  $97EA  D6 EE 97                   JUMP_abs               $97EE
 >$97ED  65                         PUSH_qimm   ; inline operand = 5
 >$97EE  0D                         LOADL_quick   ; inline operand = 13
  $97EF  B4                         POPR
  $97F0  B3                         PUSHL
  $97F1  D3                         BYTE_DEREF
  $97F2  BB                         ADD
  $97F3  D4                         BYTE_POPSTORE
 >$97F4  DE F8 FF                   LEAL_far               $FFF8
  $97F7  B3                         PUSHL
  $97F8  07                         LOADL_quick   ; inline operand = 7
  $97F9  B4                         POPR
  $97FA  BB                         ADD
  $97FB  D3                         BYTE_DEREF
  $97FC  A2 FD FF                   BYTE_STORE_far         $FFFD
  $97FF  07                         LOADL_quick   ; inline operand = 7
  $9800  D0                         INC
 >$9801  27                         STORE_quick   ; inline operand = 7
  $9802  07                         LOADL_quick   ; inline operand = 7
  $9803  55                         LOADR_qimm   ; inline operand = 5
  $9804  C6                         UCMPLT
  $9805  D7 B2 97                   JUMPT_abs              $97B2
  $9808  0D                         LOADL_quick   ; inline operand = 13
  $9809  D3                         BYTE_DEREF
  $980A  8B 64                      BYTE_LOADR_imm1        +100
  $980C  C0                         CMPEQ
  $980D  CF                         RETURN

; ============================================================
; sub $980E   (frame_off=-21, body @ $9813)   [PRG $3780E]
; ============================================================
  $9813  60                         PUSH_qimm   ; inline operand = 0
  $9814  6D                         PUSH_qimm   ; inline operand = 13
  $9815  DE F3 FF                   LEAL_far               $FFF3
  $9818  B3                         PUSHL
  $9819  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $981D  40                         LOADL_qimm   ; inline operand = 0
  $981E  85 F1                      STORE_near             $F1
 >$9820  DE F3 FF                   LEAL_far               $FFF3
  $9823  B3                         PUSHL
  $9824  0C                         LOADL_quick   ; inline operand = 12
  $9825  83 F1                      LOADR_near             $F1
  $9827  BB                         ADD
  $9828  D3                         BYTE_DEREF
  $9829  54                         LOADR_qimm   ; inline operand = 4
  $982A  BE                         URSHIFT
  $982B  5F                         LOADR_qimm   ; inline operand = 15
  $982C  DA                         AND
  $982D  B4                         POPR
  $982E  BB                         ADD
  $982F  B3                         PUSHL
  $9830  D3                         BYTE_DEREF
  $9831  D0                         INC
  $9832  D4                         BYTE_POPSTORE
  $9833  81 F1                      LOADL_near             $F1
  $9835  D0                         INC
  $9836  85 F1                      STORE_near             $F1
  $9838  81 F1                      LOADL_near             $F1
  $983A  55                         LOADR_qimm   ; inline operand = 5
  $983B  C6                         UCMPLT
  $983C  D7 20 98                   JUMPT_abs              $9820
  $983F  60                         PUSH_qimm   ; inline operand = 0
  $9840  65                         PUSH_qimm   ; inline operand = 5
  $9841  3D                         PUSH_quick   ; inline operand = 13
  $9842  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $9846  40                         LOADL_qimm   ; inline operand = 0
  $9847  85 EB                      STORE_near             $EB
  $9849  40                         LOADL_qimm   ; inline operand = 0
  $984A  85 EF                      STORE_near             $EF
  $984C  41                         LOADL_qimm   ; inline operand = 1
  $984D  85 ED                      STORE_near             $ED
  $984F  40                         LOADL_qimm   ; inline operand = 0
  $9850  D6 D6 98                   JUMP_abs               $98D6
 >$9853  DE F3 FF                   LEAL_far               $FFF3
  $9856  B3                         PUSHL
  $9857  81 F1                      LOADL_near             $F1
  $9859  B4                         POPR
  $985A  BB                         ADD
  $985B  D3                         BYTE_DEREF
  $985C  1D                         LOADR_quick   ; inline operand = 13
  $985D  BB                         ADD
  $985E  B3                         PUSHL
  $985F  D3                         BYTE_DEREF
  $9860  D0                         INC
  $9861  D4                         BYTE_POPSTORE
  $9862  DE F3 FF                   LEAL_far               $FFF3
  $9865  B3                         PUSHL
  $9866  81 F1                      LOADL_near             $F1
  $9868  B4                         POPR
  $9869  BB                         ADD
  $986A  D3                         BYTE_DEREF
  $986B  51                         LOADR_qimm   ; inline operand = 1
  $986C  C0                         CMPEQ
  $986D  D8 8F 98                   JUMPF_abs              $988F
  $9870  81 F1                      LOADL_near             $F1
  $9872  83 ED                      LOADR_near             $ED
  $9874  B5                         MULT
  $9875  CD                         SWAP
  $9876  81 EB                      LOADL_near             $EB
  $9878  BB                         ADD
  $9879  85 EB                      STORE_near             $EB
  $987B  81 ED                      LOADL_near             $ED
  $987D  8C 33 05                   LOADR_imm2             $0533
  $9880  C0                         CMPEQ
  $9881  D8 88 98                   JUMPF_abs              $9888
  $9884  40                         LOADL_qimm   ; inline operand = 0
  $9885  D6 89 98                   JUMP_abs               $9889
 >$9888  4B                         LOADL_qimm   ; inline operand = 11
 >$9889  CD                         SWAP
  $988A  81 ED                      LOADL_near             $ED
  $988C  B5                         MULT
  $988D  85 ED                      STORE_near             $ED
 >$988F  DE F3 FF                   LEAL_far               $FFF3
  $9892  B3                         PUSHL
  $9893  81 F1                      LOADL_near             $F1
  $9895  B4                         POPR
  $9896  BB                         ADD
  $9897  D3                         BYTE_DEREF
  $9898  52                         LOADR_qimm   ; inline operand = 2
  $9899  C0                         CMPEQ
  $989A  D8 AB 98                   JUMPF_abs              $98AB
  $989D  0D                         LOADL_quick   ; inline operand = 13
  $989E  83 EF                      LOADR_near             $EF
  $98A0  BB                         ADD
  $98A1  75                         ADD_qimm   ; inline operand = 5
  $98A2  B3                         PUSHL
  $98A3  81 F1                      LOADL_near             $F1
  $98A5  D4                         BYTE_POPSTORE
  $98A6  81 EF                      LOADL_near             $EF
  $98A8  D0                         INC
  $98A9  85 EF                      STORE_near             $EF
 >$98AB  DE F3 FF                   LEAL_far               $FFF3
  $98AE  B3                         PUSHL
  $98AF  81 F1                      LOADL_near             $F1
  $98B1  B4                         POPR
  $98B2  BB                         ADD
  $98B3  D3                         BYTE_DEREF
  $98B4  53                         LOADR_qimm   ; inline operand = 3
  $98B5  C0                         CMPEQ
  $98B6  D8 BF 98                   JUMPF_abs              $98BF
  $98B9  0D                         LOADL_quick   ; inline operand = 13
  $98BA  77                         ADD_qimm   ; inline operand = 7
  $98BB  B3                         PUSHL
  $98BC  81 F1                      LOADL_near             $F1
  $98BE  D4                         BYTE_POPSTORE
 >$98BF  DE F3 FF                   LEAL_far               $FFF3
  $98C2  B3                         PUSHL
  $98C3  81 F1                      LOADL_near             $F1
  $98C5  B4                         POPR
  $98C6  BB                         ADD
  $98C7  D3                         BYTE_DEREF
  $98C8  54                         LOADR_qimm   ; inline operand = 4
  $98C9  C0                         CMPEQ
  $98CA  D8 D3 98                   JUMPF_abs              $98D3
  $98CD  0D                         LOADL_quick   ; inline operand = 13
  $98CE  78                         ADD_qimm   ; inline operand = 8
  $98CF  B3                         PUSHL
  $98D0  81 F1                      LOADL_near             $F1
  $98D2  D4                         BYTE_POPSTORE
 >$98D3  81 F1                      LOADL_near             $F1
  $98D5  D0                         INC
 >$98D6  85 F1                      STORE_near             $F1
  $98D8  81 F1                      LOADL_near             $F1
  $98DA  5D                         LOADR_qimm   ; inline operand = 13
  $98DB  C6                         UCMPLT
  $98DC  D7 53 98                   JUMPT_abs              $9853
  $98DF  81 EB                      LOADL_near             $EB
  $98E1  CF                         RETURN

; ============================================================
; sub $98E2   (frame_off=-14, body @ $98E7)   [PRG $378E2]
; ============================================================
  $98E7  40                         LOADL_qimm   ; inline operand = 0
  $98E8  29                         STORE_quick   ; inline operand = 9
  $98E9  3D                         PUSH_quick   ; inline operand = 13
  $98EA  3C                         PUSH_quick   ; inline operand = 12
  $98EB  E9 FE 96 04                CALL_abs_imm1          $96FE {bytecode}, $04
  $98EF  26                         STORE_quick   ; inline operand = 6
  $98F0  3D                         PUSH_quick   ; inline operand = 13
  $98F1  3C                         PUSH_quick   ; inline operand = 12
  $98F2  E9 7B 97 04                CALL_abs_imm1          $977B {bytecode}, $04
  $98F6  25                         STORE_quick   ; inline operand = 5
  $98F7  8A FF 00                   LOADL_imm2             $00FF
  $98FA  A2 FF FF                   BYTE_STORE_far         $FFFF
  $98FD  06                         LOADL_quick   ; inline operand = 6
  $98FE  D8 17 99                   JUMPF_abs              $9917
  $9901  05                         LOADL_quick   ; inline operand = 5
  $9902  D8 17 99                   JUMPF_abs              $9917
  $9905  0C                         LOADL_quick   ; inline operand = 12
  $9906  74                         ADD_qimm   ; inline operand = 4
  $9907  D3                         BYTE_DEREF
  $9908  54                         LOADR_qimm   ; inline operand = 4
  $9909  BE                         URSHIFT
  $990A  5C                         LOADR_qimm   ; inline operand = 12
  $990B  C0                         CMPEQ
  $990C  D8 13 99                   JUMPF_abs              $9913
  $990F  47                         LOADL_qimm   ; inline operand = 7
  $9910  D6 14 99                   JUMP_abs               $9914
 >$9913  46                         LOADL_qimm   ; inline operand = 6
 >$9914  A2 FF FF                   BYTE_STORE_far         $FFFF
 >$9917  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $991A  8C FF 00                   LOADR_imm2             $00FF
  $991D  C0                         CMPEQ
  $991E  D8 35 99                   JUMPF_abs              $9935
  $9921  06                         LOADL_quick   ; inline operand = 6
  $9922  D7 29 99                   JUMPT_abs              $9929
  $9925  05                         LOADL_quick   ; inline operand = 5
  $9926  D8 35 99                   JUMPF_abs              $9935
 >$9929  06                         LOADL_quick   ; inline operand = 6
  $992A  D8 31 99                   JUMPF_abs              $9931
  $992D  43                         LOADL_qimm   ; inline operand = 3
  $992E  D6 32 99                   JUMP_abs               $9932
 >$9931  42                         LOADL_qimm   ; inline operand = 2
 >$9932  A2 FF FF                   BYTE_STORE_far         $FFFF
 >$9935  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $9938  8C FF 00                   LOADR_imm2             $00FF
  $993B  C0                         CMPEQ
  $993C  D8 74 99                   JUMPF_abs              $9974
  $993F  3D                         PUSH_quick   ; inline operand = 13
  $9940  3C                         PUSH_quick   ; inline operand = 12
  $9941  E9 0E 98 04                CALL_abs_imm1          $980E {bytecode}, $04
  $9945  29                         STORE_quick   ; inline operand = 9
  $9946  0D                         LOADL_quick   ; inline operand = 13
  $9947  74                         ADD_qimm   ; inline operand = 4
  $9948  D3                         BYTE_DEREF
  $9949  D8 50 99                   JUMPF_abs              $9950
  $994C  45                         LOADL_qimm   ; inline operand = 5
  $994D  D6 71 99                   JUMP_abs               $9971
 >$9950  0D                         LOADL_quick   ; inline operand = 13
  $9951  73                         ADD_qimm   ; inline operand = 3
  $9952  D3                         BYTE_DEREF
  $9953  D8 60 99                   JUMPF_abs              $9960
  $9956  0D                         LOADL_quick   ; inline operand = 13
  $9957  72                         ADD_qimm   ; inline operand = 2
  $9958  D3                         BYTE_DEREF
  $9959  D8 60 99                   JUMPF_abs              $9960
  $995C  44                         LOADL_qimm   ; inline operand = 4
  $995D  D6 71 99                   JUMP_abs               $9971
 >$9960  0D                         LOADL_quick   ; inline operand = 13
  $9961  73                         ADD_qimm   ; inline operand = 3
  $9962  D3                         BYTE_DEREF
  $9963  D8 6A 99                   JUMPF_abs              $996A
  $9966  41                         LOADL_qimm   ; inline operand = 1
  $9967  D6 71 99                   JUMP_abs               $9971
 >$996A  0D                         LOADL_quick   ; inline operand = 13
  $996B  72                         ADD_qimm   ; inline operand = 2
  $996C  D3                         BYTE_DEREF
  $996D  D8 74 99                   JUMPF_abs              $9974
  $9970  40                         LOADL_qimm   ; inline operand = 0
 >$9971  A2 FF FF                   BYTE_STORE_far         $FFFF
 >$9974  40                         LOADL_qimm   ; inline operand = 0
  $9975  28                         STORE_quick   ; inline operand = 8
  $9976  27                         STORE_quick   ; inline operand = 7
  $9977  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $997A  D5 00 00 08 00 62 9A 91 99 FA 99 08 ... SWITCH_contig          limit=8   ; .table 8 word targets (contiguous); SWITCH 0=>$9991 1=>$99FA 2=>$9A08 3=>$9A13 4=>$9A2A 5=>$9A41 6=>$9A51 7=>$9A5C default=>$9A62
 >$9991  4D                         LOADL_qimm   ; inline operand = 13
  $9992  27                         STORE_quick   ; inline operand = 7
  $9993  46                         LOADL_qimm   ; inline operand = 6
  $9994  28                         STORE_quick   ; inline operand = 8
  $9995  0D                         LOADL_quick   ; inline operand = 13
  $9996  D0                         INC
  $9997  B3                         PUSHL
  $9998  0D                         LOADL_quick   ; inline operand = 13
  $9999  72                         ADD_qimm   ; inline operand = 2
  $999A  D3                         BYTE_DEREF
  $999B  D4                         BYTE_POPSTORE
  $999C  0D                         LOADL_quick   ; inline operand = 13
  $999D  72                         ADD_qimm   ; inline operand = 2
  $999E  B3                         PUSHL
  $999F  0D                         LOADL_quick   ; inline operand = 13
  $99A0  75                         ADD_qimm   ; inline operand = 5
  $99A1  D3                         BYTE_DEREF
  $99A2  D4                         BYTE_POPSTORE
  $99A3  CD                         SWAP
  $99A4  07                         LOADL_quick   ; inline operand = 7
  $99A5  BB                         ADD
  $99A6  27                         STORE_quick   ; inline operand = 7
  $99A7  0D                         LOADL_quick   ; inline operand = 13
  $99A8  D0                         INC
  $99A9  D3                         BYTE_DEREF
  $99AA  52                         LOADR_qimm   ; inline operand = 2
  $99AB  C0                         CMPEQ
  $99AC  D8 D6 99                   JUMPF_abs              $99D6
  $99AF  41                         LOADL_qimm   ; inline operand = 1
  $99B0  28                         STORE_quick   ; inline operand = 8
  $99B1  0D                         LOADL_quick   ; inline operand = 13
  $99B2  73                         ADD_qimm   ; inline operand = 3
  $99B3  B3                         PUSHL
  $99B4  0D                         LOADL_quick   ; inline operand = 13
  $99B5  76                         ADD_qimm   ; inline operand = 6
  $99B6  D3                         BYTE_DEREF
  $99B7  D4                         BYTE_POPSTORE
  $99B8  0D                         LOADL_quick   ; inline operand = 13
  $99B9  73                         ADD_qimm   ; inline operand = 3
  $99BA  D3                         BYTE_DEREF
  $99BB  5B                         LOADR_qimm   ; inline operand = 11
  $99BC  B5                         MULT
  $99BD  72                         ADD_qimm   ; inline operand = 2
  $99BE  CD                         SWAP
  $99BF  07                         LOADL_quick   ; inline operand = 7
  $99C0  BB                         ADD
  $99C1  27                         STORE_quick   ; inline operand = 7
  $99C2  0D                         LOADL_quick   ; inline operand = 13
  $99C3  72                         ADD_qimm   ; inline operand = 2
  $99C4  D3                         BYTE_DEREF
  $99C5  A2 FE FF                   BYTE_STORE_far         $FFFE
  $99C8  0D                         LOADL_quick   ; inline operand = 13
  $99C9  72                         ADD_qimm   ; inline operand = 2
  $99CA  B3                         PUSHL
  $99CB  0D                         LOADL_quick   ; inline operand = 13
  $99CC  73                         ADD_qimm   ; inline operand = 3
  $99CD  D3                         BYTE_DEREF
  $99CE  D4                         BYTE_POPSTORE
  $99CF  0D                         LOADL_quick   ; inline operand = 13
  $99D0  73                         ADD_qimm   ; inline operand = 3
  $99D1  B3                         PUSHL
  $99D2  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $99D5  D4                         BYTE_POPSTORE
 >$99D6  42                         LOADL_qimm   ; inline operand = 2
  $99D7  CD                         SWAP
  $99D8  07                         LOADL_quick   ; inline operand = 7
  $99D9  B5                         MULT
  $99DA  27                         STORE_quick   ; inline operand = 7
  $99DB  3D                         PUSH_quick   ; inline operand = 13
  $99DC  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $99DF  D4                         BYTE_POPSTORE
  $99E0  A0 0F 00                   BYTE_LOADL_far         $000F
  $99E3  D8 F8 99                   JUMPF_abs              $99F8
  $99E6  8A 91 00                   LOADL_imm2             $0091
  $99E9  CD                         SWAP
  $99EA  07                         LOADL_quick   ; inline operand = 7
  $99EB  B5                         MULT
  $99EC  27                         STORE_quick   ; inline operand = 7
  $99ED  08                         LOADL_quick   ; inline operand = 8
  $99EE  D8 F8 99                   JUMPF_abs              $99F8
  $99F1  09                         LOADL_quick   ; inline operand = 9
  $99F2  18                         LOADR_quick   ; inline operand = 8
  $99F3  B8                         UDIV
  $99F4  CD                         SWAP
  $99F5  07                         LOADL_quick   ; inline operand = 7
  $99F6  BB                         ADD
  $99F7  27                         STORE_quick   ; inline operand = 7
 >$99F8  07                         LOADL_quick   ; inline operand = 7
  $99F9  CF                         RETURN
 >$99FA  0D                         LOADL_quick   ; inline operand = 13
  $99FB  D0                         INC
  $99FC  B3                         PUSHL
  $99FD  0D                         LOADL_quick   ; inline operand = 13
  $99FE  77                         ADD_qimm   ; inline operand = 7
  $99FF  D3                         BYTE_DEREF
  $9A00  D4                         BYTE_POPSTORE
  $9A01  90 9F 00                   ADD_imm2               $009F
 >$9A04  27                         STORE_quick   ; inline operand = 7
  $9A05  D6 D6 99                   JUMP_abs               $99D6
 >$9A08  0C                         LOADL_quick   ; inline operand = 12
  $9A09  74                         ADD_qimm   ; inline operand = 4
  $9A0A  D3                         BYTE_DEREF
  $9A0B  54                         LOADR_qimm   ; inline operand = 4
  $9A0C  BE                         URSHIFT
  $9A0D  90 A9 00                   ADD_imm2               $00A9
  $9A10  D6 04 9A                   JUMP_abs               $9A04
 >$9A13  0D                         LOADL_quick   ; inline operand = 13
  $9A14  D0                         INC
  $9A15  B3                         PUSHL
  $9A16  0C                         LOADL_quick   ; inline operand = 12
  $9A17  D3                         BYTE_DEREF
  $9A18  5F                         LOADR_qimm   ; inline operand = 15
  $9A19  DA                         AND
  $9A1A  D4                         BYTE_POPSTORE
  $9A1B  0C                         LOADL_quick   ; inline operand = 12
  $9A1C  74                         ADD_qimm   ; inline operand = 4
  $9A1D  D3                         BYTE_DEREF
  $9A1E  54                         LOADR_qimm   ; inline operand = 4
  $9A1F  BE                         URSHIFT
  $9A20  90 B1 00                   ADD_imm2               $00B1
 >$9A23  27                         STORE_quick   ; inline operand = 7
  $9A24  89 38                      BYTE_LOADL_imm1        +56
  $9A26  28                         STORE_quick   ; inline operand = 8
  $9A27  D6 D6 99                   JUMP_abs               $99D6
 >$9A2A  0D                         LOADL_quick   ; inline operand = 13
  $9A2B  D0                         INC
  $9A2C  B3                         PUSHL
  $9A2D  0D                         LOADL_quick   ; inline operand = 13
  $9A2E  77                         ADD_qimm   ; inline operand = 7
  $9A2F  D3                         BYTE_DEREF
  $9A30  D4                         BYTE_POPSTORE
  $9A31  0D                         LOADL_quick   ; inline operand = 13
  $9A32  72                         ADD_qimm   ; inline operand = 2
  $9A33  B3                         PUSHL
  $9A34  0D                         LOADL_quick   ; inline operand = 13
  $9A35  75                         ADD_qimm   ; inline operand = 5
  $9A36  D3                         BYTE_DEREF
  $9A37  D4                         BYTE_POPSTORE
  $9A38  0D                         LOADL_quick   ; inline operand = 13
  $9A39  77                         ADD_qimm   ; inline operand = 7
  $9A3A  D3                         BYTE_DEREF
  $9A3B  90 BE 00                   ADD_imm2               $00BE
  $9A3E  D6 04 9A                   JUMP_abs               $9A04
 >$9A41  0D                         LOADL_quick   ; inline operand = 13
  $9A42  D0                         INC
  $9A43  B3                         PUSHL
  $9A44  0D                         LOADL_quick   ; inline operand = 13
  $9A45  78                         ADD_qimm   ; inline operand = 8
  $9A46  D3                         BYTE_DEREF
  $9A47  D4                         BYTE_POPSTORE
  $9A48  0D                         LOADL_quick   ; inline operand = 13
  $9A49  77                         ADD_qimm   ; inline operand = 7
  $9A4A  D3                         BYTE_DEREF
  $9A4B  90 CB 00                   ADD_imm2               $00CB
  $9A4E  D6 04 9A                   JUMP_abs               $9A04
 >$9A51  0C                         LOADL_quick   ; inline operand = 12
  $9A52  74                         ADD_qimm   ; inline operand = 4
  $9A53  D3                         BYTE_DEREF
  $9A54  54                         LOADR_qimm   ; inline operand = 4
  $9A55  BE                         URSHIFT
  $9A56  90 D5 00                   ADD_imm2               $00D5
  $9A59  D6 04 9A                   JUMP_abs               $9A04
 >$9A5C  8A E1 00                   LOADL_imm2             $00E1
  $9A5F  D6 04 9A                   JUMP_abs               $9A04
 >$9A62  0C                         LOADL_quick   ; inline operand = 12
  $9A63  74                         ADD_qimm   ; inline operand = 4
  $9A64  D3                         BYTE_DEREF
  $9A65  54                         LOADR_qimm   ; inline operand = 4
  $9A66  BE                         URSHIFT
  $9A67  D6 23 9A                   JUMP_abs               $9A23

