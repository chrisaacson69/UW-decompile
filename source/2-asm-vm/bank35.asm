VM bytecode disassembly
  ROM:          Uncharted Waters (USA).nes
  mode:         bulk dump of bank 35
  opcode spec:  vm-opcodes-v2.toml via nobunaga_vm.OPCODE_INFO (execution-validated lengths)
  labels:       0 CPU addresses named

  bank 35: found 5 bytecode-subroutine stubs

; ============================================================
; sub $8003   (frame_off=-4, body @ $8008)   [PRG $46003]
; ============================================================
  $8008  0C                         LOADL_quick   ; inline operand = 12
  $8009  53                         LOADR_qimm   ; inline operand = 3
  $800A  DA                         AND
  $800B  56                         LOADR_qimm   ; inline operand = 6
  $800C  BD                         LSHIFT
  $800D  B3                         PUSHL
  $800E  0C                         LOADL_quick   ; inline operand = 12
  $800F  52                         LOADR_qimm   ; inline operand = 2
  $8010  BE                         URSHIFT
  $8011  58                         LOADR_qimm   ; inline operand = 8
  $8012  BD                         LSHIFT
  $8013  B4                         POPR
  $8014  BB                         ADD
  $8015  2B                         STORE_quick   ; inline operand = 11
  $8016  D6 43 80                   JUMP_abs               $8043
 >$8019  0D                         LOADL_quick   ; inline operand = 13
  $801A  D0                         INC
  $801B  D3                         BYTE_DEREF
  $801C  1B                         LOADR_quick   ; inline operand = 11
  $801D  BB                         ADD
  $801E  2A                         STORE_quick   ; inline operand = 10
  $801F  3E                         PUSH_quick   ; inline operand = 14
  $8020  0A                         LOADL_quick   ; inline operand = 10
  $8021  8C FF 00                   LOADR_imm2             $00FF
  $8024  DA                         AND
  $8025  D4                         BYTE_POPSTORE
  $8026  3F                         PUSH_quick   ; inline operand = 15
  $8027  0A                         LOADL_quick   ; inline operand = 10
  $8028  58                         LOADR_qimm   ; inline operand = 8
  $8029  BE                         URSHIFT
  $802A  B3                         PUSHL
  $802B  0D                         LOADL_quick   ; inline operand = 13
  $802C  72                         ADD_qimm   ; inline operand = 2
  $802D  D3                         BYTE_DEREF
  $802E  56                         LOADR_qimm   ; inline operand = 6
  $802F  BD                         LSHIFT
  $8030  B4                         POPR
  $8031  DB                         OR
  $8032  D4                         BYTE_POPSTORE
  $8033  0E                         LOADL_quick   ; inline operand = 14
  $8034  D0                         INC
  $8035  2E                         STORE_quick   ; inline operand = 14
  $8036  0F                         LOADL_quick   ; inline operand = 15
  $8037  D0                         INC
  $8038  2F                         STORE_quick   ; inline operand = 15
  $8039  44                         LOADL_qimm   ; inline operand = 4
  $803A  CD                         SWAP
  $803B  0D                         LOADL_quick   ; inline operand = 13
  $803C  BB                         ADD
  $803D  2D                         STORE_quick   ; inline operand = 13
  $803E  81 13                      LOADL_near             $13
  $8040  D1                         DEC
  $8041  85 13                      STORE_near             $13
 >$8043  81 13                      LOADL_near             $13
  $8045  D7 19 80                   JUMPT_abs              $8019
  $8048  CF                         RETURN

; ============================================================
; sub $8049   (frame_off=-62, body @ $804E)   [PRG $46049]
; ============================================================
  $804E  A4 8C 73                   LOADL_abs              $738C
  $8051  D2                         LSHIFT1
  $8052  8C 94 99                   LOADR_imm2             $9994
  $8055  BB                         ADD
  $8056  B0                         DEREF
  $8057  D3                         BYTE_DEREF
  $8058  85 C2                      STORE_near             $C2
  $805A  8D 1E                      BYTE_PUSH_imm1         +30
  $805C  DE C4 FF                   LEAL_far               $FFC4
  $805F  B3                         PUSHL
  $8060  DE E2 FF                   LEAL_far               $FFE2
  $8063  B3                         PUSHL
  $8064  A4 8C 73                   LOADL_abs              $738C
  $8067  D2                         LSHIFT1
  $8068  8C F4 99                   LOADR_imm2             $99F4
  $806B  BB                         ADD
  $806C  B0                         DEREF
  $806D  B3                         PUSHL
  $806E  87 C2                      PUSH_near              $C2
  $8070  E9 03 80 0A                CALL_abs_imm1          $8003 {bytecode}, $0A
  $8074  8E C1 00                   PUSH_imm2              $00C1
  $8077  DE C4 FF                   LEAL_far               $FFC4
  $807A  B3                         PUSHL
  $807B  DE E2 FF                   LEAL_far               $FFE2
  $807E  B3                         PUSHL
  $807F  66                         PUSH_qimm   ; inline operand = 6
  $8080  65                         PUSH_qimm   ; inline operand = 5
  $8081  A5 8B 73                   BYTE_LOADL_abs         $738B
  $8084  B3                         PUSHL
  $8085  A5 8A 73                   BYTE_LOADL_abs         $738A
  $8088  B3                         PUSHL
  $8089  69                         PUSH_qimm   ; inline operand = 9
  $808A  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $808E  CF                         RETURN

; ============================================================
; sub $808F   (frame_off=-134, body @ $8094)   [PRG $4608F]
; ============================================================
  $8094  A5 8A 73                   BYTE_LOADL_abs         $738A
  $8097  86 7E FF                   STORE_far              $FF7E
  $809A  A5 8B 73                   BYTE_LOADL_abs         $738B
  $809D  86 7C FF                   STORE_far              $FF7C
  $80A0  68                         PUSH_qimm   ; inline operand = 8
  $80A1  DE 80 FF                   LEAL_far               $FF80
  $80A4  B3                         PUSHL
  $80A5  8E 82 73                   PUSH_imm2              $7382
  $80A8  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $80AC  A4 8C 73                   LOADL_abs              $738C
  $80AF  D2                         LSHIFT1
  $80B0  8C 94 99                   LOADR_imm2             $9994
  $80B3  BB                         ADD
  $80B4  B0                         DEREF
  $80B5  D3                         BYTE_DEREF
  $80B6  A2 80 FF                   BYTE_STORE_far         $FF80
  $80B9  A4 8C 73                   LOADL_abs              $738C
  $80BC  D2                         LSHIFT1
  $80BD  8C 94 99                   LOADR_imm2             $9994
  $80C0  BB                         ADD
  $80C1  B0                         DEREF
  $80C2  D0                         INC
  $80C3  D3                         BYTE_DEREF
  $80C4  A2 81 FF                   BYTE_STORE_far         $FF81
  $80C7  8D 78                      BYTE_PUSH_imm1         +120
  $80C9  DE 88 FF                   LEAL_far               $FF88
  $80CC  B3                         PUSHL
  $80CD  A4 8C 73                   LOADL_abs              $738C
  $80D0  D2                         LSHIFT1
  $80D1  8C F4 99                   LOADR_imm2             $99F4
  $80D4  BB                         ADD
  $80D5  B0                         DEREF
  $80D6  B3                         PUSHL
  $80D7  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $80DB  60                         PUSH_qimm   ; inline operand = 0
  $80DC  60                         PUSH_qimm   ; inline operand = 0
  $80DD  66                         PUSH_qimm   ; inline operand = 6
  $80DE  65                         PUSH_qimm   ; inline operand = 5
  $80DF  88 7C FF                   PUSH_far               $FF7C
  $80E2  88 7E FF                   PUSH_far               $FF7E
  $80E5  68                         PUSH_qimm   ; inline operand = 8
  $80E6  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $80EA  48                         LOADL_qimm   ; inline operand = 8
  $80EB  CD                         SWAP
  $80EC  82 7E FF                   LOADL_far              $FF7E
  $80EF  B5                         MULT
  $80F0  86 7E FF                   STORE_far              $FF7E
  $80F3  82 7C FF                   LOADL_far              $FF7C
  $80F6  53                         LOADR_qimm   ; inline operand = 3
  $80F7  BD                         LSHIFT
  $80F8  B3                         PUSHL
  $80F9  A5 7D 73                   BYTE_LOADL_abs         $737D (ui_shared_var_737d)
  $80FC  D2                         LSHIFT1
  $80FD  8C 14 DF                   LOADR_imm2             $DF14
  $8100  BB                         ADD
  $8101  B0                         DEREF
  $8102  B4                         POPR
  $8103  BB                         ADD
  $8104  86 7C FF                   STORE_far              $FF7C
  $8107  40                         LOADL_qimm   ; inline operand = 0
  $8108  86 7A FF                   STORE_far              $FF7A
 >$810B  82 7C FF                   LOADL_far              $FF7C
  $810E  B3                         PUSHL
  $810F  DE 88 FF                   LEAL_far               $FF88
  $8112  B3                         PUSHL
  $8113  82 7A FF                   LOADL_far              $FF7A
  $8116  D2                         LSHIFT1
  $8117  D2                         LSHIFT1
  $8118  B4                         POPR
  $8119  BB                         ADD
  $811A  B4                         POPR
  $811B  B3                         PUSHL
  $811C  D3                         BYTE_DEREF
  $811D  BB                         ADD
  $811E  D4                         BYTE_POPSTORE
  $811F  82 7E FF                   LOADL_far              $FF7E
  $8122  B3                         PUSHL
  $8123  DE 8B FF                   LEAL_far               $FF8B
  $8126  B3                         PUSHL
  $8127  82 7A FF                   LOADL_far              $FF7A
  $812A  D2                         LSHIFT1
  $812B  D2                         LSHIFT1
  $812C  B4                         POPR
  $812D  BB                         ADD
  $812E  B4                         POPR
  $812F  B3                         PUSHL
  $8130  D3                         BYTE_DEREF
  $8131  BB                         ADD
  $8132  D4                         BYTE_POPSTORE
  $8133  82 7A FF                   LOADL_far              $FF7A
  $8136  D0                         INC
  $8137  86 7A FF                   STORE_far              $FF7A
  $813A  82 7A FF                   LOADL_far              $FF7A
  $813D  8B 1E                      BYTE_LOADR_imm1        +30
  $813F  C2                         SCMPLT
  $8140  D7 0B 81                   JUMPT_abs              $810B
  $8143  DE 80 FF                   LEAL_far               $FF80
  $8146  B3                         PUSHL
  $8147  65                         PUSH_qimm   ; inline operand = 5
  $8148  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $814C  8D 1E                      BYTE_PUSH_imm1         +30
  $814E  A5 8E 73                   BYTE_LOADL_abs         $738E
  $8151  B3                         PUSHL
  $8152  6C                         PUSH_qimm   ; inline operand = 12
  $8153  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $8157  8D 1E                      BYTE_PUSH_imm1         +30
  $8159  A5 8E 73                   BYTE_LOADL_abs         $738E
  $815C  B3                         PUSHL
  $815D  DE 88 FF                   LEAL_far               $FF88
  $8160  B3                         PUSHL
  $8161  6D                         PUSH_qimm   ; inline operand = 13
  $8162  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8166  CF                         RETURN

; ============================================================
; sub $8167   (frame_off=-142, body @ $816C)   [PRG $46167]
; ============================================================
  $816C  A5 8A 73                   BYTE_LOADL_abs         $738A
  $816F  86 7E FF                   STORE_far              $FF7E
  $8172  A5 8B 73                   BYTE_LOADL_abs         $738B
  $8175  86 7C FF                   STORE_far              $FF7C
  $8178  68                         PUSH_qimm   ; inline operand = 8
  $8179  DE 80 FF                   LEAL_far               $FF80
  $817C  B3                         PUSHL
  $817D  8E 82 73                   PUSH_imm2              $7382
  $8180  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $8184  A4 94 99                   LOADL_abs              $9994
  $8187  D3                         BYTE_DEREF
  $8188  86 76 FF                   STORE_far              $FF76
  $818B  82 76 FF                   LOADL_far              $FF76
  $818E  A2 80 FF                   BYTE_STORE_far         $FF80
  $8191  82 76 FF                   LOADL_far              $FF76
  $8194  D0                         INC
  $8195  A2 81 FF                   BYTE_STORE_far         $FF81
  $8198  82 76 FF                   LOADL_far              $FF76
  $819B  72                         ADD_qimm   ; inline operand = 2
  $819C  A2 82 FF                   BYTE_STORE_far         $FF82
  $819F  8D 78                      BYTE_PUSH_imm1         +120
  $81A1  DE 88 FF                   LEAL_far               $FF88
  $81A4  B3                         PUSHL
  $81A5  A4 8C 73                   LOADL_abs              $738C
  $81A8  D2                         LSHIFT1
  $81A9  8C F4 99                   LOADR_imm2             $99F4
  $81AC  BB                         ADD
  $81AD  B0                         DEREF
  $81AE  B3                         PUSHL
  $81AF  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $81B3  60                         PUSH_qimm   ; inline operand = 0
  $81B4  60                         PUSH_qimm   ; inline operand = 0
  $81B5  66                         PUSH_qimm   ; inline operand = 6
  $81B6  65                         PUSH_qimm   ; inline operand = 5
  $81B7  88 7C FF                   PUSH_far               $FF7C
  $81BA  88 7E FF                   PUSH_far               $FF7E
  $81BD  68                         PUSH_qimm   ; inline operand = 8
  $81BE  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $81C2  48                         LOADL_qimm   ; inline operand = 8
  $81C3  CD                         SWAP
  $81C4  82 7E FF                   LOADL_far              $FF7E
  $81C7  B5                         MULT
  $81C8  86 7E FF                   STORE_far              $FF7E
  $81CB  82 7C FF                   LOADL_far              $FF7C
  $81CE  53                         LOADR_qimm   ; inline operand = 3
  $81CF  BD                         LSHIFT
  $81D0  B3                         PUSHL
  $81D1  A5 7D 73                   BYTE_LOADL_abs         $737D (ui_shared_var_737d)
  $81D4  D2                         LSHIFT1
  $81D5  8C 14 DF                   LOADR_imm2             $DF14
  $81D8  BB                         ADD
  $81D9  B0                         DEREF
  $81DA  B4                         POPR
  $81DB  BB                         ADD
  $81DC  86 7C FF                   STORE_far              $FF7C
  $81DF  A4 8C 73                   LOADL_abs              $738C
  $81E2  D2                         LSHIFT1
  $81E3  8C 94 99                   LOADR_imm2             $9994
  $81E6  BB                         ADD
  $81E7  B0                         DEREF
  $81E8  D3                         BYTE_DEREF
  $81E9  86 74 FF                   STORE_far              $FF74
  $81EC  40                         LOADL_qimm   ; inline operand = 0
  $81ED  86 72 FF                   STORE_far              $FF72
  $81F0  82 76 FF                   LOADL_far              $FF76
  $81F3  84 74 FF                   LOADR_far              $FF74
  $81F6  C1                         CMPNE
  $81F7  D8 06 82                   JUMPF_abs              $8206
  $81FA  82 74 FF                   LOADL_far              $FF74
  $81FD  84 76 FF                   LOADR_far              $FF76
  $8200  BC                         SUB
  $8201  56                         LOADR_qimm   ; inline operand = 6
  $8202  BD                         LSHIFT
  $8203  86 72 FF                   STORE_far              $FF72
 >$8206  40                         LOADL_qimm   ; inline operand = 0
  $8207  86 7A FF                   STORE_far              $FF7A
 >$820A  82 7C FF                   LOADL_far              $FF7C
  $820D  B3                         PUSHL
  $820E  DE 88 FF                   LEAL_far               $FF88
  $8211  B3                         PUSHL
  $8212  82 7A FF                   LOADL_far              $FF7A
  $8215  D2                         LSHIFT1
  $8216  D2                         LSHIFT1
  $8217  B4                         POPR
  $8218  BB                         ADD
  $8219  B4                         POPR
  $821A  B3                         PUSHL
  $821B  D3                         BYTE_DEREF
  $821C  BB                         ADD
  $821D  D4                         BYTE_POPSTORE
  $821E  82 7E FF                   LOADL_far              $FF7E
  $8221  B3                         PUSHL
  $8222  DE 8B FF                   LEAL_far               $FF8B
  $8225  B3                         PUSHL
  $8226  82 7A FF                   LOADL_far              $FF7A
  $8229  D2                         LSHIFT1
  $822A  D2                         LSHIFT1
  $822B  B4                         POPR
  $822C  BB                         ADD
  $822D  B4                         POPR
  $822E  B3                         PUSHL
  $822F  D3                         BYTE_DEREF
  $8230  BB                         ADD
  $8231  D4                         BYTE_POPSTORE
  $8232  82 72 FF                   LOADL_far              $FF72
  $8235  D8 4C 82                   JUMPF_abs              $824C
  $8238  82 72 FF                   LOADL_far              $FF72
  $823B  B3                         PUSHL
  $823C  DE 89 FF                   LEAL_far               $FF89
  $823F  B3                         PUSHL
  $8240  82 7A FF                   LOADL_far              $FF7A
  $8243  D2                         LSHIFT1
  $8244  D2                         LSHIFT1
  $8245  B4                         POPR
  $8246  BB                         ADD
  $8247  B4                         POPR
  $8248  B3                         PUSHL
  $8249  D3                         BYTE_DEREF
  $824A  BB                         ADD
  $824B  D4                         BYTE_POPSTORE
 >$824C  82 7A FF                   LOADL_far              $FF7A
  $824F  D0                         INC
  $8250  86 7A FF                   STORE_far              $FF7A
  $8253  82 7A FF                   LOADL_far              $FF7A
  $8256  8B 1E                      BYTE_LOADR_imm1        +30
  $8258  C2                         SCMPLT
  $8259  D7 0A 82                   JUMPT_abs              $820A
  $825C  A4 8C 73                   LOADL_abs              $738C
  $825F  D7 66 82                   JUMPT_abs              $8266
  $8262  44                         LOADL_qimm   ; inline operand = 4
  $8263  D6 68 82                   JUMP_abs               $8268
 >$8266  89 22                      BYTE_LOADL_imm1        +34
 >$8268  86 78 FF                   STORE_far              $FF78
  $826B  DE 80 FF                   LEAL_far               $FF80
  $826E  B3                         PUSHL
  $826F  65                         PUSH_qimm   ; inline operand = 5
  $8270  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8274  8D 1E                      BYTE_PUSH_imm1         +30
  $8276  88 78 FF                   PUSH_far               $FF78
  $8279  6C                         PUSH_qimm   ; inline operand = 12
  $827A  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $827E  8D 1E                      BYTE_PUSH_imm1         +30
  $8280  88 78 FF                   PUSH_far               $FF78
  $8283  DE 88 FF                   LEAL_far               $FF88
  $8286  B3                         PUSHL
  $8287  6D                         PUSH_qimm   ; inline operand = 13
  $8288  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $828C  CF                         RETURN

; ============================================================
; sub $828D   (frame_off=+0, body @ $8292)   [PRG $4628D]
; ============================================================
  $8292  A5 8E 73                   BYTE_LOADL_abs         $738E
  $8295  8B 40                      BYTE_LOADR_imm1        +64
  $8297  C6                         UCMPLT
  $8298  D8 A1 82                   JUMPF_abs              $82A1
  $829B  AC 8F 80                   CALL_abs               $808F {bytecode}
  $829E  D6 B3 82                   JUMP_abs               $82B3
 >$82A1  A5 8E 73                   BYTE_LOADL_abs         $738E
  $82A4  8B 40                      BYTE_LOADR_imm1        +64
  $82A6  C0                         CMPEQ
  $82A7  D8 B0 82                   JUMPF_abs              $82B0
  $82AA  AC 67 81                   CALL_abs               $8167 {bytecode}
  $82AD  D6 B3 82                   JUMP_abs               $82B3
 >$82B0  AC 49 80                   CALL_abs               $8049 {bytecode}
 >$82B3  CF                         RETURN

