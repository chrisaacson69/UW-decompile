VM bytecode disassembly
  ROM:          Uncharted Waters (USA).nes
  mode:         bulk dump of bank 0
  opcode spec:  vm-opcodes-v2.toml via nobunaga_vm.OPCODE_INFO (execution-validated lengths)
  labels:       0 CPU addresses named

  bank 0: found 39 bytecode-subroutine stubs

; ============================================================
; sub $8003   (frame_off=-10, body @ $8008)   [PRG $00003]
; ============================================================
  $8008  8A B1 00                   LOADL_imm2             $00B1
  $800B  2A                         STORE_quick   ; inline operand = 10
  $800C  40                         LOADL_qimm   ; inline operand = 0
  $800D  D6 7F 80                   JUMP_abs               $807F
 >$8010  0B                         LOADL_quick   ; inline operand = 11
  $8011  5A                         LOADR_qimm   ; inline operand = 10
  $8012  BA                         UMOD
  $8013  D2                         LSHIFT1
  $8014  75                         ADD_qimm   ; inline operand = 5
  $8015  29                         STORE_quick   ; inline operand = 9
  $8016  0B                         LOADL_quick   ; inline operand = 11
  $8017  5A                         LOADR_qimm   ; inline operand = 10
  $8018  B8                         UDIV
  $8019  D2                         LSHIFT1
  $801A  78                         ADD_qimm   ; inline operand = 8
  $801B  28                         STORE_quick   ; inline operand = 8
  $801C  0B                         LOADL_quick   ; inline operand = 11
  $801D  D5 DC FF 1D 00 61 80 5E 80 88 80 5E ... SWITCH_contig          limit=29   ; .table 29 word targets (contiguous); SWITCH 36=>$805E 37=>$8088 38=>$805E 39=>$808E 40=>$8094 41=>$8061 42=>$8061 43=>$8061 44=>$8061 45=>$8061 46=>$805E 47=>$809A 48=>$805E 49=>$80A0 50=>$80A6 51=>$8061 52=>$8061 53=>$8061 54=>$8061 55=>$8061 56=>$8061 57=>$8061 58=>$8061 59=>$80AC 60=>$8061 61=>$80B2 62=>$805E 63=>$805E 64=>$805E default=>$8061
 >$805E  89 40                      BYTE_LOADL_imm1        +64
 >$8060  2A                         STORE_quick   ; inline operand = 10
 >$8061  0A                         LOADL_quick   ; inline operand = 10
  $8062  8C FF 00                   LOADR_imm2             $00FF
  $8065  DA                         AND
  $8066  27                         STORE_quick   ; inline operand = 7
  $8067  0C                         LOADL_quick   ; inline operand = 12
  $8068  1B                         LOADR_quick   ; inline operand = 11
  $8069  BB                         ADD
  $806A  B3                         PUSHL
  $806B  07                         LOADL_quick   ; inline operand = 7
  $806C  D4                         BYTE_POPSTORE
  $806D  07                         LOADL_quick   ; inline operand = 7
  $806E  8B 40                      BYTE_LOADR_imm1        +64
  $8070  C0                         CMPEQ
  $8071  D8 7A 80                   JUMPF_abs              $807A
  $8074  0C                         LOADL_quick   ; inline operand = 12
  $8075  1B                         LOADR_quick   ; inline operand = 11
  $8076  BB                         ADD
  $8077  B3                         PUSHL
  $8078  40                         LOADL_qimm   ; inline operand = 0
  $8079  D4                         BYTE_POPSTORE
 >$807A  0A                         LOADL_quick   ; inline operand = 10
  $807B  D0                         INC
  $807C  2A                         STORE_quick   ; inline operand = 10
  $807D  0B                         LOADL_quick   ; inline operand = 11
  $807E  D0                         INC
 >$807F  2B                         STORE_quick   ; inline operand = 11
  $8080  0B                         LOADL_quick   ; inline operand = 11
  $8081  8B 40                      BYTE_LOADR_imm1        +64
  $8083  C7                         UCMPLE
  $8084  D7 10 80                   JUMPT_abs              $8010
  $8087  CF                         RETURN
 >$8088  8A D5 00                   LOADL_imm2             $00D5
  $808B  D6 60 80                   JUMP_abs               $8060
 >$808E  8A D6 00                   LOADL_imm2             $00D6
  $8091  D6 60 80                   JUMP_abs               $8060
 >$8094  8A D7 00                   LOADL_imm2             $00D7
  $8097  D6 60 80                   JUMP_abs               $8060
 >$809A  8A A6 00                   LOADL_imm2             $00A6
  $809D  D6 60 80                   JUMP_abs               $8060
 >$80A0  8A DD 00                   LOADL_imm2             $00DD
  $80A3  D6 60 80                   JUMP_abs               $8060
 >$80A6  8A A7 00                   LOADL_imm2             $00A7
  $80A9  D6 60 80                   JUMP_abs               $8060
 >$80AC  8A DE 00                   LOADL_imm2             $00DE
  $80AF  D6 60 80                   JUMP_abs               $8060
 >$80B2  89 2D                      BYTE_LOADL_imm1        +45
  $80B4  D6 60 80                   JUMP_abs               $8060

; ============================================================
; sub $80B7   (frame_off=-4, body @ $80BC)   [PRG $000B7]
; ============================================================
  $80BC  0C                         LOADL_quick   ; inline operand = 12
  $80BD  8F FA                      BYTE_ADD_imm1          -6
  $80BF  51                         LOADR_qimm   ; inline operand = 1
  $80C0  BE                         URSHIFT
  $80C1  B3                         PUSHL
  $80C2  0D                         LOADL_quick   ; inline operand = 13
  $80C3  8F F9                      BYTE_ADD_imm1          -7
  $80C5  51                         LOADR_qimm   ; inline operand = 1
  $80C6  BE                         URSHIFT
  $80C7  5A                         LOADR_qimm   ; inline operand = 10
  $80C8  B5                         MULT
  $80C9  B4                         POPR
  $80CA  BB                         ADD
  $80CB  D0                         INC
  $80CC  2B                         STORE_quick   ; inline operand = 11
  $80CD  0E                         LOADL_quick   ; inline operand = 14
  $80CE  D6 E1 80                   JUMP_abs               $80E1
 >$80D1  0A                         LOADL_quick   ; inline operand = 10
  $80D2  D2                         LSHIFT1
  $80D3  8C 0A 99                   LOADR_imm2             $990A
  $80D6  BB                         ADD
  $80D7  B0                         DEREF
  $80D8  1B                         LOADR_quick   ; inline operand = 11
  $80D9  C0                         CMPEQ
  $80DA  D8 DF 80                   JUMPF_abs              $80DF
  $80DD  41                         LOADL_qimm   ; inline operand = 1
  $80DE  CF                         RETURN
 >$80DF  0A                         LOADL_quick   ; inline operand = 10
  $80E0  D0                         INC
 >$80E1  2A                         STORE_quick   ; inline operand = 10
  $80E2  0A                         LOADL_quick   ; inline operand = 10
  $80E3  59                         LOADR_qimm   ; inline operand = 9
  $80E4  C7                         UCMPLE
  $80E5  D7 D1 80                   JUMPT_abs              $80D1
  $80E8  0B                         LOADL_quick   ; inline operand = 11
  $80E9  8B 42                      BYTE_LOADR_imm1        +66
  $80EB  C0                         CMPEQ
  $80EC  D8 F1 80                   JUMPF_abs              $80F1
  $80EF  42                         LOADL_qimm   ; inline operand = 2
  $80F0  CF                         RETURN
 >$80F1  0B                         LOADL_quick   ; inline operand = 11
  $80F2  8B 45                      BYTE_LOADR_imm1        +69
  $80F4  C0                         CMPEQ
  $80F5  D8 FA 80                   JUMPF_abs              $80FA
  $80F8  43                         LOADL_qimm   ; inline operand = 3
  $80F9  CF                         RETURN
 >$80FA  40                         LOADL_qimm   ; inline operand = 0
  $80FB  CF                         RETURN

; ============================================================
; sub $80FC   (frame_off=-4, body @ $8101)   [PRG $000FC]
; ============================================================
  $8101  41                         LOADL_qimm   ; inline operand = 1
  $8102  2A                         STORE_quick   ; inline operand = 10
  $8103  8D 17                      BYTE_PUSH_imm1         +23
  $8105  0D                         LOADL_quick   ; inline operand = 13
  $8106  51                         LOADR_qimm   ; inline operand = 1
  $8107  BE                         URSHIFT
  $8108  B3                         PUSHL
  $8109  89 10                      BYTE_LOADL_imm1        +16
  $810B  B4                         POPR
  $810C  BC                         SUB
  $810D  B3                         PUSHL
  $810E  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8112  40                         LOADL_qimm   ; inline operand = 0
  $8113  D6 36 81                   JUMP_abs               $8136
 >$8116  0C                         LOADL_quick   ; inline operand = 12
  $8117  1B                         LOADR_quick   ; inline operand = 11
  $8118  BB                         ADD
  $8119  D3                         BYTE_DEREF
  $811A  D7 1F 81                   JUMPT_abs              $811F
  $811D  40                         LOADL_qimm   ; inline operand = 0
  $811E  2A                         STORE_quick   ; inline operand = 10
 >$811F  0A                         LOADL_quick   ; inline operand = 10
  $8120  D8 2A 81                   JUMPF_abs              $812A
  $8123  0C                         LOADL_quick   ; inline operand = 12
  $8124  1B                         LOADR_quick   ; inline operand = 11
  $8125  BB                         ADD
  $8126  D3                         BYTE_DEREF
  $8127  D6 2C 81                   JUMP_abs               $812C
 >$812A  89 5F                      BYTE_LOADL_imm1        +95
 >$812C  B3                         PUSHL
  $812D  8E 1E 99                   PUSH_imm2              $991E
  $8130  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8134  0B                         LOADL_quick   ; inline operand = 11
  $8135  D0                         INC
 >$8136  2B                         STORE_quick   ; inline operand = 11
  $8137  0D                         LOADL_quick   ; inline operand = 13
  $8138  8F FE                      BYTE_ADD_imm1          -2
  $813A  B3                         PUSHL
  $813B  0B                         LOADL_quick   ; inline operand = 11
  $813C  B4                         POPR
  $813D  C7                         UCMPLE
  $813E  D7 16 81                   JUMPT_abs              $8116
  $8141  CF                         RETURN

; ============================================================
; sub $8142   (frame_off=+0, body @ $8147)   [PRG $00142]
; ============================================================
  $8147  0C                         LOADL_quick   ; inline operand = 12
  $8148  51                         LOADR_qimm   ; inline operand = 1
  $8149  C9                         UCMPGE
  $814A  D8 50 81                   JUMPF_abs              $8150
  $814D  0C                         LOADL_quick   ; inline operand = 12
  $814E  D1                         DEC
  $814F  2C                         STORE_quick   ; inline operand = 12
 >$8150  0D                         LOADL_quick   ; inline operand = 13
  $8151  1C                         LOADR_quick   ; inline operand = 12
  $8152  BB                         ADD
  $8153  B3                         PUSHL
  $8154  40                         LOADL_qimm   ; inline operand = 0
  $8155  D4                         BYTE_POPSTORE
  $8156  0C                         LOADL_quick   ; inline operand = 12
  $8157  CF                         RETURN

; ============================================================
; sub $8158   (frame_off=-2, body @ $815D)   [PRG $00158]
; ============================================================
  $815D  60                         PUSH_qimm   ; inline operand = 0
  $815E  60                         PUSH_qimm   ; inline operand = 0
  $815F  61                         PUSH_qimm   ; inline operand = 1
  $8160  8D 1A                      BYTE_PUSH_imm1         +26
  $8162  8D 1A                      BYTE_PUSH_imm1         +26
  $8164  63                         PUSH_qimm   ; inline operand = 3
  $8165  68                         PUSH_qimm   ; inline operand = 8
  $8166  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $816A  8D 19                      BYTE_PUSH_imm1         +25
  $816C  63                         PUSH_qimm   ; inline operand = 3
  $816D  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8171  61                         PUSH_qimm   ; inline operand = 1
  $8172  8E 21 99                   PUSH_imm2              $9921
  $8175  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8179  AC 9F CD                   CALL_abs               $CD9F {native}
  $817C  2B                         STORE_quick   ; inline operand = 11
  $817D  D8 82 81                   JUMPF_abs              $8182
  $8180  0B                         LOADL_quick   ; inline operand = 11
  $8181  CF                         RETURN
 >$8182  60                         PUSH_qimm   ; inline operand = 0
  $8183  60                         PUSH_qimm   ; inline operand = 0
  $8184  61                         PUSH_qimm   ; inline operand = 1
  $8185  8D 1A                      BYTE_PUSH_imm1         +26
  $8187  8D 1A                      BYTE_PUSH_imm1         +26
  $8189  63                         PUSH_qimm   ; inline operand = 3
  $818A  68                         PUSH_qimm   ; inline operand = 8
  $818B  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $818F  0B                         LOADL_quick   ; inline operand = 11
  $8190  CF                         RETURN

; ============================================================
; sub $8191   (frame_off=-10, body @ $8196)   [PRG $00191]
; ============================================================
  $8196  89 21                      BYTE_LOADL_imm1        +33
  $8198  2A                         STORE_quick   ; inline operand = 10
  $8199  40                         LOADL_qimm   ; inline operand = 0
  $819A  D6 D9 81                   JUMP_abs               $81D9
 >$819D  0B                         LOADL_quick   ; inline operand = 11
  $819E  5A                         LOADR_qimm   ; inline operand = 10
  $819F  BA                         UMOD
  $81A0  D2                         LSHIFT1
  $81A1  75                         ADD_qimm   ; inline operand = 5
  $81A2  29                         STORE_quick   ; inline operand = 9
  $81A3  0B                         LOADL_quick   ; inline operand = 11
  $81A4  5A                         LOADR_qimm   ; inline operand = 10
  $81A5  B8                         UDIV
  $81A6  D2                         LSHIFT1
  $81A7  78                         ADD_qimm   ; inline operand = 8
  $81A8  28                         STORE_quick   ; inline operand = 8
  $81A9  0B                         LOADL_quick   ; inline operand = 11
  $81AA  D9 05 00 1A 00 C3 81 34 00 E2 81 3E ... SWITCH_noncontig       count=5   ; .table 5 (key,target) + default (noncontiguous); SWITCH 26=>$81C3 52=>$81E2 62=>$81E7 63=>$81EB 64=>$81EF default=>$81C6
 >$81C3  89 41                      BYTE_LOADL_imm1        +65
 >$81C5  2A                         STORE_quick   ; inline operand = 10
 >$81C6  0A                         LOADL_quick   ; inline operand = 10
  $81C7  8C FF 00                   LOADR_imm2             $00FF
  $81CA  DA                         AND
  $81CB  27                         STORE_quick   ; inline operand = 7
  $81CC  0C                         LOADL_quick   ; inline operand = 12
  $81CD  1B                         LOADR_quick   ; inline operand = 11
  $81CE  BB                         ADD
  $81CF  B3                         PUSHL
  $81D0  07                         LOADL_quick   ; inline operand = 7
  $81D1  8F 20                      BYTE_ADD_imm1          +32
  $81D3  D4                         BYTE_POPSTORE
  $81D4  0A                         LOADL_quick   ; inline operand = 10
  $81D5  D0                         INC
  $81D6  2A                         STORE_quick   ; inline operand = 10
  $81D7  0B                         LOADL_quick   ; inline operand = 11
  $81D8  D0                         INC
 >$81D9  2B                         STORE_quick   ; inline operand = 11
  $81DA  0B                         LOADL_quick   ; inline operand = 11
  $81DB  8B 40                      BYTE_LOADR_imm1        +64
  $81DD  C7                         UCMPLE
  $81DE  D7 9D 81                   JUMPT_abs              $819D
  $81E1  CF                         RETURN
 >$81E2  89 10                      BYTE_LOADL_imm1        +16
  $81E4  D6 C5 81                   JUMP_abs               $81C5
 >$81E7  47                         LOADL_qimm   ; inline operand = 7
  $81E8  D6 C5 81                   JUMP_abs               $81C5
 >$81EB  4D                         LOADL_qimm   ; inline operand = 13
  $81EC  D6 C5 81                   JUMP_abs               $81C5
 >$81EF  40                         LOADL_qimm   ; inline operand = 0
  $81F0  D6 C5 81                   JUMP_abs               $81C5

; ============================================================
; sub $81F3   (frame_off=-28, body @ $81F8)   [PRG $001F3]
; ============================================================
  $81F8  46                         LOADL_qimm   ; inline operand = 6
  $81F9  2B                         STORE_quick   ; inline operand = 11
  $81FA  27                         STORE_quick   ; inline operand = 7
  $81FB  47                         LOADL_qimm   ; inline operand = 7
  $81FC  2A                         STORE_quick   ; inline operand = 10
  $81FD  26                         STORE_quick   ; inline operand = 6
  $81FE  42                         LOADL_qimm   ; inline operand = 2
  $81FF  28                         STORE_quick   ; inline operand = 8
  $8200  40                         LOADL_qimm   ; inline operand = 0
  $8201  23                         STORE_quick   ; inline operand = 3
  $8202  25                         STORE_quick   ; inline operand = 5
  $8203  41                         LOADL_qimm   ; inline operand = 1
  $8204  22                         STORE_quick   ; inline operand = 2
  $8205  40                         LOADL_qimm   ; inline operand = 0
  $8206  20                         STORE_quick   ; inline operand = 0
  $8207  3E                         PUSH_quick   ; inline operand = 14
  $8208  3C                         PUSH_quick   ; inline operand = 12
  $8209  E9 FC 80 04                CALL_abs_imm1          $80FC {bytecode}, $04
  $820D  D6 A1 83                   JUMP_abs               $83A1
 >$8210  05                         LOADL_quick   ; inline operand = 5
  $8211  51                         LOADR_qimm   ; inline operand = 1
  $8212  C1                         CMPNE
  $8213  D8 44 82                   JUMPF_abs              $8244
  $8216  06                         LOADL_quick   ; inline operand = 6
  $8217  53                         LOADR_qimm   ; inline operand = 3
  $8218  BD                         LSHIFT
  $8219  D1                         DEC
  $821A  A2 E4 FF                   BYTE_STORE_far         $FFE4
  $821D  8A E1 00                   LOADL_imm2             $00E1
  $8220  A2 E5 FF                   BYTE_STORE_far         $FFE5
  $8223  43                         LOADL_qimm   ; inline operand = 3
  $8224  A2 E6 FF                   BYTE_STORE_far         $FFE6
  $8227  07                         LOADL_quick   ; inline operand = 7
  $8228  53                         LOADR_qimm   ; inline operand = 3
  $8229  BD                         LSHIFT
  $822A  A2 E7 FF                   BYTE_STORE_far         $FFE7
  $822D  61                         PUSH_qimm   ; inline operand = 1
  $822E  60                         PUSH_qimm   ; inline operand = 0
  $822F  DE E4 FF                   LEAL_far               $FFE4
  $8232  B3                         PUSHL
  $8233  6D                         PUSH_qimm   ; inline operand = 13
  $8234  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8238  67                         PUSH_qimm   ; inline operand = 7
  $8239  39                         PUSH_quick   ; inline operand = 9
  $823A  E9 4D CE 04                CALL_abs_imm1          $CE4D {native}, $04
  $823E  60                         PUSH_qimm   ; inline operand = 0
  $823F  E9 A9 C4 02                CALL_abs_imm1          $C4A9 {native}, $02
  $8243  29                         STORE_quick   ; inline operand = 9
 >$8244  09                         LOADL_quick   ; inline operand = 9
  $8245  D9 07 00 01 00 E1 82 02 00 E6 82 08 ... SWITCH_noncontig       count=7   ; .table 7 (key,target) + default (noncontiguous); SWITCH 1=>$82E1 2=>$82E6 8=>$82F6 16=>$8266 32=>$82B1 64=>$82D1 128=>$82C1 default=>$82A9
 >$8266  08                         LOADL_quick   ; inline operand = 8
  $8267  CD                         SWAP
  $8268  06                         LOADL_quick   ; inline operand = 6
  $8269  BC                         SUB
  $826A  26                         STORE_quick   ; inline operand = 6
  $826B  06                         LOADL_quick   ; inline operand = 6
  $826C  1A                         LOADR_quick   ; inline operand = 10
  $826D  C6                         UCMPLT
  $826E  D8 74 82                   JUMPF_abs              $8274
  $8271  89 13                      BYTE_LOADL_imm1        +19
 >$8273  26                         STORE_quick   ; inline operand = 6
 >$8274  06                         LOADL_quick   ; inline operand = 6
  $8275  8B 13                      BYTE_LOADR_imm1        +19
  $8277  C0                         CMPEQ
  $8278  D8 A9 82                   JUMPF_abs              $82A9
  $827B  02                         LOADL_quick   ; inline operand = 2
  $827C  51                         LOADR_qimm   ; inline operand = 1
  $827D  C6                         UCMPLT
  $827E  D8 8E 82                   JUMPF_abs              $828E
  $8281  07                         LOADL_quick   ; inline operand = 7
  $8282  5A                         LOADR_qimm   ; inline operand = 10
  $8283  C9                         UCMPGE
  $8284  D8 98 82                   JUMPF_abs              $8298
  $8287  07                         LOADL_quick   ; inline operand = 7
  $8288  8B 12                      BYTE_LOADR_imm1        +18
  $828A  C7                         UCMPLE
  $828B  D6 92 82                   JUMP_abs               $8292
 >$828E  07                         LOADL_quick   ; inline operand = 7
  $828F  8B 12                      BYTE_LOADR_imm1        +18
  $8291  C0                         CMPEQ
 >$8292  D8 98 82                   JUMPF_abs              $8298
  $8295  89 10                      BYTE_LOADL_imm1        +16
  $8297  27                         STORE_quick   ; inline operand = 7
 >$8298  07                         LOADL_quick   ; inline operand = 7
  $8299  8B 13                      BYTE_LOADR_imm1        +19
  $829B  C9                         UCMPGE
  $829C  D8 A9 82                   JUMPF_abs              $82A9
  $829F  07                         LOADL_quick   ; inline operand = 7
  $82A0  8B 19                      BYTE_LOADR_imm1        +25
  $82A2  C6                         UCMPLT
  $82A3  D8 A9 82                   JUMPF_abs              $82A9
  $82A6  89 16                      BYTE_LOADL_imm1        +22
 >$82A8  27                         STORE_quick   ; inline operand = 7
 >$82A9  02                         LOADL_quick   ; inline operand = 2
  $82AA  D8 12 83                   JUMPF_abs              $8312
  $82AD  47                         LOADL_qimm   ; inline operand = 7
  $82AE  D6 13 83                   JUMP_abs               $8313
 >$82B1  08                         LOADL_quick   ; inline operand = 8
  $82B2  CD                         SWAP
  $82B3  06                         LOADL_quick   ; inline operand = 6
  $82B4  BB                         ADD
  $82B5  26                         STORE_quick   ; inline operand = 6
  $82B6  06                         LOADL_quick   ; inline operand = 6
  $82B7  8B 13                      BYTE_LOADR_imm1        +19
  $82B9  C8                         UCMPGT
  $82BA  D8 74 82                   JUMPF_abs              $8274
  $82BD  0A                         LOADL_quick   ; inline operand = 10
  $82BE  D6 73 82                   JUMP_abs               $8273
 >$82C1  08                         LOADL_quick   ; inline operand = 8
  $82C2  CD                         SWAP
  $82C3  07                         LOADL_quick   ; inline operand = 7
  $82C4  BB                         ADD
  $82C5  27                         STORE_quick   ; inline operand = 7
  $82C6  07                         LOADL_quick   ; inline operand = 7
  $82C7  8B 18                      BYTE_LOADR_imm1        +24
  $82C9  C8                         UCMPGT
  $82CA  D8 A9 82                   JUMPF_abs              $82A9
  $82CD  0B                         LOADL_quick   ; inline operand = 11
  $82CE  D6 A8 82                   JUMP_abs               $82A8
 >$82D1  08                         LOADL_quick   ; inline operand = 8
  $82D2  CD                         SWAP
  $82D3  07                         LOADL_quick   ; inline operand = 7
  $82D4  BC                         SUB
  $82D5  27                         STORE_quick   ; inline operand = 7
  $82D6  07                         LOADL_quick   ; inline operand = 7
  $82D7  1B                         LOADR_quick   ; inline operand = 11
  $82D8  C6                         UCMPLT
  $82D9  D8 A9 82                   JUMPF_abs              $82A9
  $82DC  89 18                      BYTE_LOADL_imm1        +24
  $82DE  D6 A8 82                   JUMP_abs               $82A8
 >$82E1  41                         LOADL_qimm   ; inline operand = 1
  $82E2  23                         STORE_quick   ; inline operand = 3
  $82E3  D6 A9 82                   JUMP_abs               $82A9
 >$82E6  3C                         PUSH_quick   ; inline operand = 12
  $82E7  30                         PUSH_quick   ; inline operand = 0
  $82E8  E9 42 81 04                CALL_abs_imm1          $8142 {bytecode}, $04
  $82EC  20                         STORE_quick   ; inline operand = 0
  $82ED  3E                         PUSH_quick   ; inline operand = 14
  $82EE  3C                         PUSH_quick   ; inline operand = 12
  $82EF  E9 FC 80 04                CALL_abs_imm1          $80FC {bytecode}, $04
  $82F3  D6 A9 82                   JUMP_abs               $82A9
 >$82F6  89 16                      BYTE_LOADL_imm1        +22
  $82F8  27                         STORE_quick   ; inline operand = 7
  $82F9  89 13                      BYTE_LOADL_imm1        +19
  $82FB  26                         STORE_quick   ; inline operand = 6
  $82FC  00                         LOADL_quick   ; inline operand = 0
  $82FD  D7 03 83                   JUMPT_abs              $8303
  $8300  3C                         PUSH_quick   ; inline operand = 12
  $8301  40                         LOADL_qimm   ; inline operand = 0
  $8302  D4                         BYTE_POPSTORE
 >$8303  60                         PUSH_qimm   ; inline operand = 0
  $8304  60                         PUSH_qimm   ; inline operand = 0
  $8305  62                         PUSH_qimm   ; inline operand = 2
  $8306  8D 1A                      BYTE_PUSH_imm1         +26
  $8308  8D 19                      BYTE_PUSH_imm1         +25
  $830A  63                         PUSH_qimm   ; inline operand = 3
  $830B  68                         PUSH_qimm   ; inline operand = 8
  $830C  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $8310  00                         LOADL_quick   ; inline operand = 0
  $8311  CF                         RETURN
 >$8312  40                         LOADL_qimm   ; inline operand = 0
 >$8313  21                         STORE_quick   ; inline operand = 1
  $8314  31                         PUSH_quick   ; inline operand = 1
  $8315  36                         PUSH_quick   ; inline operand = 6
  $8316  37                         PUSH_quick   ; inline operand = 7
  $8317  E9 B7 80 06                CALL_abs_imm1          $80B7 {bytecode}, $06
  $831B  25                         STORE_quick   ; inline operand = 5
  $831C  05                         LOADL_quick   ; inline operand = 5
  $831D  51                         LOADR_qimm   ; inline operand = 1
  $831E  C0                         CMPEQ
  $831F  D8 2E 83                   JUMPF_abs              $832E
  $8322  09                         LOADL_quick   ; inline operand = 9
  $8323  54                         LOADR_qimm   ; inline operand = 4
  $8324  C0                         CMPEQ
  $8325  D8 A1 83                   JUMPF_abs              $83A1
  $8328  46                         LOADL_qimm   ; inline operand = 6
  $8329  27                         STORE_quick   ; inline operand = 7
  $832A  47                         LOADL_qimm   ; inline operand = 7
  $832B  26                         STORE_quick   ; inline operand = 6
  $832C  40                         LOADL_qimm   ; inline operand = 0
  $832D  25                         STORE_quick   ; inline operand = 5
 >$832E  03                         LOADL_quick   ; inline operand = 3
  $832F  51                         LOADR_qimm   ; inline operand = 1
  $8330  C0                         CMPEQ
  $8331  D8 9F 83                   JUMPF_abs              $839F
  $8334  05                         LOADL_quick   ; inline operand = 5
  $8335  52                         LOADR_qimm   ; inline operand = 2
  $8336  C0                         CMPEQ
  $8337  D8 43 83                   JUMPF_abs              $8343
  $833A  3C                         PUSH_quick   ; inline operand = 12
  $833B  30                         PUSH_quick   ; inline operand = 0
  $833C  E9 42 81 04                CALL_abs_imm1          $8142 {bytecode}, $04
  $8340  D6 96 83                   JUMP_abs               $8396
 >$8343  05                         LOADL_quick   ; inline operand = 5
  $8344  53                         LOADR_qimm   ; inline operand = 3
  $8345  C0                         CMPEQ
  $8346  D8 5F 83                   JUMPF_abs              $835F
  $8349  00                         LOADL_quick   ; inline operand = 0
  $834A  D7 50 83                   JUMPT_abs              $8350
  $834D  3C                         PUSH_quick   ; inline operand = 12
  $834E  40                         LOADL_qimm   ; inline operand = 0
  $834F  D4                         BYTE_POPSTORE
 >$8350  60                         PUSH_qimm   ; inline operand = 0
  $8351  60                         PUSH_qimm   ; inline operand = 0
  $8352  62                         PUSH_qimm   ; inline operand = 2
  $8353  8D 1A                      BYTE_PUSH_imm1         +26
  $8355  8D 19                      BYTE_PUSH_imm1         +25
  $8357  63                         PUSH_qimm   ; inline operand = 3
  $8358  68                         PUSH_qimm   ; inline operand = 8
  $8359  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $835D  00                         LOADL_quick   ; inline operand = 0
  $835E  CF                         RETURN
 >$835F  07                         LOADL_quick   ; inline operand = 7
  $8360  1B                         LOADR_quick   ; inline operand = 11
  $8361  BC                         SUB
  $8362  51                         LOADR_qimm   ; inline operand = 1
  $8363  BE                         URSHIFT
  $8364  B3                         PUSHL
  $8365  06                         LOADL_quick   ; inline operand = 6
  $8366  1A                         LOADR_quick   ; inline operand = 10
  $8367  BC                         SUB
  $8368  51                         LOADR_qimm   ; inline operand = 1
  $8369  BE                         URSHIFT
  $836A  5A                         LOADR_qimm   ; inline operand = 10
  $836B  B5                         MULT
  $836C  B4                         POPR
  $836D  BB                         ADD
  $836E  D0                         INC
  $836F  24                         STORE_quick   ; inline operand = 4
  $8370  0E                         LOADL_quick   ; inline operand = 14
  $8371  8F FE                      BYTE_ADD_imm1          -2
  $8373  B3                         PUSHL
  $8374  00                         LOADL_quick   ; inline operand = 0
  $8375  B4                         POPR
  $8376  C9                         UCMPGE
  $8377  D8 7E 83                   JUMPF_abs              $837E
  $837A  0E                         LOADL_quick   ; inline operand = 14
  $837B  8F FE                      BYTE_ADD_imm1          -2
  $837D  20                         STORE_quick   ; inline operand = 0
 >$837E  0C                         LOADL_quick   ; inline operand = 12
  $837F  10                         LOADR_quick   ; inline operand = 0
  $8380  BB                         ADD
  $8381  B3                         PUSHL
  $8382  02                         LOADL_quick   ; inline operand = 2
  $8383  8B 41                      BYTE_LOADR_imm1        +65
  $8385  B5                         MULT
  $8386  1D                         LOADR_quick   ; inline operand = 13
  $8387  BB                         ADD
  $8388  14                         LOADR_quick   ; inline operand = 4
  $8389  BB                         ADD
  $838A  D1                         DEC
  $838B  D3                         BYTE_DEREF
  $838C  D4                         BYTE_POPSTORE
  $838D  0C                         LOADL_quick   ; inline operand = 12
  $838E  10                         LOADR_quick   ; inline operand = 0
  $838F  BB                         ADD
  $8390  D0                         INC
  $8391  B3                         PUSHL
  $8392  40                         LOADL_qimm   ; inline operand = 0
  $8393  D4                         BYTE_POPSTORE
  $8394  00                         LOADL_quick   ; inline operand = 0
  $8395  D0                         INC
 >$8396  20                         STORE_quick   ; inline operand = 0
  $8397  40                         LOADL_qimm   ; inline operand = 0
  $8398  23                         STORE_quick   ; inline operand = 3
  $8399  3E                         PUSH_quick   ; inline operand = 14
  $839A  3C                         PUSH_quick   ; inline operand = 12
  $839B  E9 FC 80 04                CALL_abs_imm1          $80FC {bytecode}, $04
 >$839F  40                         LOADL_qimm   ; inline operand = 0
  $83A0  25                         STORE_quick   ; inline operand = 5
 >$83A1  41                         LOADL_qimm   ; inline operand = 1
  $83A2  D7 10 82                   JUMPT_abs              $8210
  $83A5  CF                         RETURN

; ============================================================
; sub $83A6   (frame_off=-151, body @ $83AB)   [PRG $003A6]
; ============================================================
  $83AB  8D 5F                      BYTE_PUSH_imm1         +95
  $83AD  A0 0B 00                   BYTE_LOADL_far         $000B
  $83B0  B3                         PUSHL
  $83B1  3D                         PUSH_quick   ; inline operand = 13
  $83B2  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $83B6  3D                         PUSH_quick   ; inline operand = 13
  $83B7  40                         LOADL_qimm   ; inline operand = 0
  $83B8  D4                         BYTE_POPSTORE
  $83B9  60                         PUSH_qimm   ; inline operand = 0
  $83BA  60                         PUSH_qimm   ; inline operand = 0
  $83BB  6F                         PUSH_qimm   ; inline operand = 15
  $83BC  8D 16                      BYTE_PUSH_imm1         +22
  $83BE  66                         PUSH_qimm   ; inline operand = 6
  $83BF  65                         PUSH_qimm   ; inline operand = 5
  $83C0  68                         PUSH_qimm   ; inline operand = 8
  $83C1  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $83C5  8E E2 00                   PUSH_imm2              $00E2
  $83C8  60                         PUSH_qimm   ; inline operand = 0
  $83C9  8E ED B9                   PUSH_imm2              $B9ED
  $83CC  6D                         PUSH_qimm   ; inline operand = 13
  $83CD  8D 13                      BYTE_PUSH_imm1         +19
  $83CF  67                         PUSH_qimm   ; inline operand = 7
  $83D0  67                         PUSH_qimm   ; inline operand = 7
  $83D1  69                         PUSH_qimm   ; inline operand = 9
  $83D2  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $83D6  DE BF FF                   LEAL_far               $FFBF
  $83D9  B3                         PUSHL
  $83DA  E9 91 81 02                CALL_abs_imm1          $8191 {bytecode}, $02
  $83DE  A0 0B 00                   BYTE_LOADL_far         $000B
  $83E1  B3                         PUSHL
  $83E2  DE 7E FF                   LEAL_far               $FF7E
  $83E5  B3                         PUSHL
  $83E6  3D                         PUSH_quick   ; inline operand = 13
  $83E7  E9 F3 81 06                CALL_abs_imm1          $81F3 {bytecode}, $06
  $83EB  A2 7D FF                   BYTE_STORE_far         $FF7D
  $83EE  A0 7D FF                   BYTE_LOADL_far         $FF7D
  $83F1  CF                         RETURN

; ============================================================
; sub $83F2   (frame_off=-2, body @ $83F7)   [PRG $003F2]
; ============================================================
  $83F7  8A 62 66                   LOADL_imm2             $6662
  $83FA  2B                         STORE_quick   ; inline operand = 11
  $83FB  0B                         LOADL_quick   ; inline operand = 11
  $83FC  7F                         ADD_qimm   ; inline operand = 15
  $83FD  D3                         BYTE_DEREF
  $83FE  52                         LOADR_qimm   ; inline operand = 2
  $83FF  DA                         AND
  $8400  D8 09 84                   JUMPF_abs              $8409
  $8403  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8406  D6 0C 84                   JUMP_abs               $840C
 >$8409  AC 4B B2                   CALL_abs               $B24B {native}
 >$840C  CF                         RETURN

; ============================================================
; sub $840D   (frame_off=-2, body @ $8412)   [PRG $0040D]
; ============================================================
  $8412  8A 62 66                   LOADL_imm2             $6662
  $8415  2B                         STORE_quick   ; inline operand = 11
  $8416  0B                         LOADL_quick   ; inline operand = 11
  $8417  7F                         ADD_qimm   ; inline operand = 15
  $8418  D3                         BYTE_DEREF
  $8419  52                         LOADR_qimm   ; inline operand = 2
  $841A  DA                         AND
  $841B  D8 26 84                   JUMPF_abs              $8426
  $841E  3C                         PUSH_quick   ; inline operand = 12
  $841F  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $8423  D6 2B 84                   JUMP_abs               $842B
 >$8426  3C                         PUSH_quick   ; inline operand = 12
  $8427  E9 F8 B1 02                CALL_abs_imm1          $B1F8 {native}, $02
 >$842B  CF                         RETURN

; ============================================================
; sub $842C   (frame_off=-2, body @ $8431)   [PRG $0042C]
; ============================================================
  $8431  8A 62 66                   LOADL_imm2             $6662
  $8434  2B                         STORE_quick   ; inline operand = 11
  $8435  0B                         LOADL_quick   ; inline operand = 11
  $8436  7F                         ADD_qimm   ; inline operand = 15
  $8437  D3                         BYTE_DEREF
  $8438  52                         LOADR_qimm   ; inline operand = 2
  $8439  DA                         AND
  $843A  D8 43 84                   JUMPF_abs              $8443
  $843D  AC 01 B8                   CALL_abs               $B801 (draw_box_frame) {native}
  $8440  D6 46 84                   JUMP_abs               $8446
 >$8443  AC 4B B2                   CALL_abs               $B24B {native}
 >$8446  CF                         RETURN

; ============================================================
; sub $8447   (frame_off=+0, body @ $844C)   [PRG $00447]
; ============================================================
  $844C  0C                         LOADL_quick   ; inline operand = 12
  $844D  8B 18                      BYTE_LOADR_imm1        +24
  $844F  B5                         MULT
  $8450  8C B6 6A                   LOADR_imm2             $6AB6
  $8453  BB                         ADD
  $8454  B0                         DEREF
  $8455  5A                         LOADR_qimm   ; inline operand = 10
  $8456  B6                         SDIV
  $8457  CF                         RETURN

; ============================================================
; sub $8458   (frame_off=+0, body @ $845D)   [PRG $00458]
; ============================================================
  $845D  0C                         LOADL_quick   ; inline operand = 12
  $845E  8B 18                      BYTE_LOADR_imm1        +24
  $8460  B5                         MULT
  $8461  8C B8 6A                   LOADR_imm2             $6AB8
  $8464  BB                         ADD
  $8465  B0                         DEREF
  $8466  CF                         RETURN

; ============================================================
; sub $8467   (frame_off=+0, body @ $846C)   [PRG $00467]
; ============================================================
  $846C  0C                         LOADL_quick   ; inline operand = 12
  $846D  8B 18                      BYTE_LOADR_imm1        +24
  $846F  B5                         MULT
  $8470  8C B4 6A                   LOADR_imm2             $6AB4
  $8473  BB                         ADD
  $8474  B0                         DEREF
  $8475  5A                         LOADR_qimm   ; inline operand = 10
  $8476  B6                         SDIV
  $8477  CF                         RETURN

; ============================================================
; sub $8478   (frame_off=-32, body @ $847D)   [PRG $00478]
; ============================================================
  $847D  8A 62 66                   LOADL_imm2             $6662
  $8480  85 E0                      STORE_near             $E0
  $8482  81 E0                      LOADL_near             $E0
  $8484  7F                         ADD_qimm   ; inline operand = 15
  $8485  D3                         BYTE_DEREF
  $8486  52                         LOADR_qimm   ; inline operand = 2
  $8487  DA                         AND
  $8488  D8 8E 84                   JUMPF_abs              $848E
  $848B  AC CE B7                   CALL_abs               $B7CE {native}
 >$848E  61                         PUSH_qimm   ; inline operand = 1
  $848F  8E 32 99                   PUSH_imm2              $9932
  $8492  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8496  8E E8 00                   PUSH_imm2              $00E8
  $8499  8E 36 A9                   PUSH_imm2              $A936
  $849C  8E 92 A7                   PUSH_imm2              $A792
  $849F  6E                         PUSH_qimm   ; inline operand = 14
  $84A0  8D 1E                      BYTE_PUSH_imm1         +30
  $84A2  3E                         PUSH_quick   ; inline operand = 14
  $84A3  3D                         PUSH_quick   ; inline operand = 13
  $84A4  69                         PUSH_qimm   ; inline operand = 9
  $84A5  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $84A9  60                         PUSH_qimm   ; inline operand = 0
  $84AA  8E FA 00                   PUSH_imm2              $00FA
  $84AD  6C                         PUSH_qimm   ; inline operand = 12
  $84AE  61                         PUSH_qimm   ; inline operand = 1
  $84AF  0E                         LOADL_quick   ; inline operand = 14
  $84B0  D0                         INC
  $84B1  B3                         PUSHL
  $84B2  0D                         LOADL_quick   ; inline operand = 13
  $84B3  8F 14                      BYTE_ADD_imm1          +20
  $84B5  B3                         PUSHL
  $84B6  68                         PUSH_qimm   ; inline operand = 8
  $84B7  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $84BB  0E                         LOADL_quick   ; inline operand = 14
  $84BC  D0                         INC
  $84BD  B3                         PUSHL
  $84BE  0D                         LOADL_quick   ; inline operand = 13
  $84BF  D0                         INC
  $84C0  B3                         PUSHL
  $84C1  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $84C5  61                         PUSH_qimm   ; inline operand = 1
  $84C6  8E 39 99                   PUSH_imm2              $9939
  $84C9  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $84CD  0E                         LOADL_quick   ; inline operand = 14
  $84CE  D0                         INC
  $84CF  B3                         PUSHL
  $84D0  0D                         LOADL_quick   ; inline operand = 13
  $84D1  7E                         ADD_qimm   ; inline operand = 14
  $84D2  B3                         PUSHL
  $84D3  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $84D7  61                         PUSH_qimm   ; inline operand = 1
  $84D8  8E 3E 99                   PUSH_imm2              $993E
  $84DB  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $84DF  3C                         PUSH_quick   ; inline operand = 12
  $84E0  0E                         LOADL_quick   ; inline operand = 14
  $84E1  D0                         INC
  $84E2  B3                         PUSHL
  $84E3  0D                         LOADL_quick   ; inline operand = 13
  $84E4  7A                         ADD_qimm   ; inline operand = 10
  $84E5  B3                         PUSHL
  $84E6  E9 D0 A3 06                CALL_abs_imm1          $A3D0 {native}, $06
  $84EA  40                         LOADL_qimm   ; inline operand = 0
  $84EB  85 E4                      STORE_near             $E4
  $84ED  85 E6                      STORE_near             $E6
  $84EF  40                         LOADL_qimm   ; inline operand = 0
  $84F0  2B                         STORE_quick   ; inline operand = 11
  $84F1  2A                         STORE_quick   ; inline operand = 10
  $84F2  D6 B5 85                   JUMP_abs               $85B5
 >$84F5  0B                         LOADL_quick   ; inline operand = 11
  $84F6  57                         LOADR_qimm   ; inline operand = 7
  $84F7  B5                         MULT
  $84F8  8C 90 6C                   LOADR_imm2             $6C90
  $84FB  BB                         ADD
  $84FC  85 E2                      STORE_near             $E2
  $84FE  81 E2                      LOADL_near             $E2
  $8500  76                         ADD_qimm   ; inline operand = 6
  $8501  D3                         BYTE_DEREF
  $8502  8B 40                      BYTE_LOADR_imm1        +64
  $8504  DA                         AND
  $8505  D8 B2 85                   JUMPF_abs              $85B2
  $8508  DE F2 FF                   LEAL_far               $FFF2
  $850B  B3                         PUSHL
  $850C  0A                         LOADL_quick   ; inline operand = 10
  $850D  D2                         LSHIFT1
  $850E  B4                         POPR
  $850F  BB                         ADD
  $8510  B3                         PUSHL
  $8511  3B                         PUSH_quick   ; inline operand = 11
  $8512  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8516  8F 12                      BYTE_ADD_imm1          +18
  $8518  B3                         PUSHL
  $8519  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $851D  B1                         POPSTORE
  $851E  DE F2 FF                   LEAL_far               $FFF2
  $8521  B3                         PUSHL
  $8522  0A                         LOADL_quick   ; inline operand = 10
  $8523  D2                         LSHIFT1
  $8524  B4                         POPR
  $8525  BB                         ADD
  $8526  B0                         DEREF
  $8527  CD                         SWAP
  $8528  81 E6                      LOADL_near             $E6
  $852A  BB                         ADD
  $852B  85 E6                      STORE_near             $E6
  $852D  DE E8 FF                   LEAL_far               $FFE8
  $8530  B3                         PUSHL
  $8531  0A                         LOADL_quick   ; inline operand = 10
  $8532  D2                         LSHIFT1
  $8533  B4                         POPR
  $8534  BB                         ADD
  $8535  B3                         PUSHL
  $8536  3B                         PUSH_quick   ; inline operand = 11
  $8537  E9 EA D9 02                CALL_abs_imm1          $D9EA {native}, $02
  $853B  B1                         POPSTORE
  $853C  DE E8 FF                   LEAL_far               $FFE8
  $853F  B3                         PUSHL
  $8540  0A                         LOADL_quick   ; inline operand = 10
  $8541  D2                         LSHIFT1
  $8542  B4                         POPR
  $8543  BB                         ADD
  $8544  B0                         DEREF
  $8545  CD                         SWAP
  $8546  81 E4                      LOADL_near             $E4
  $8548  BB                         ADD
  $8549  85 E4                      STORE_near             $E4
  $854B  0A                         LOADL_quick   ; inline operand = 10
  $854C  D2                         LSHIFT1
  $854D  1E                         LOADR_quick   ; inline operand = 14
  $854E  BB                         ADD
  $854F  74                         ADD_qimm   ; inline operand = 4
  $8550  B3                         PUSHL
  $8551  0D                         LOADL_quick   ; inline operand = 13
  $8552  72                         ADD_qimm   ; inline operand = 2
  $8553  B3                         PUSHL
  $8554  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8558  81 E2                      LOADL_near             $E2
  $855A  76                         ADD_qimm   ; inline operand = 6
  $855B  D3                         BYTE_DEREF
  $855C  5F                         LOADR_qimm   ; inline operand = 15
  $855D  DA                         AND
  $855E  B3                         PUSHL
  $855F  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8563  B3                         PUSHL
  $8564  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8568  0A                         LOADL_quick   ; inline operand = 10
  $8569  D2                         LSHIFT1
  $856A  1E                         LOADR_quick   ; inline operand = 14
  $856B  BB                         ADD
  $856C  73                         ADD_qimm   ; inline operand = 3
  $856D  B3                         PUSHL
  $856E  0D                         LOADL_quick   ; inline operand = 13
  $856F  79                         ADD_qimm   ; inline operand = 9
  $8570  B3                         PUSHL
  $8571  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8575  3B                         PUSH_quick   ; inline operand = 11
  $8576  0C                         LOADL_quick   ; inline operand = 12
  $8577  D2                         LSHIFT1
  $8578  8C 2C 99                   LOADR_imm2             $992C
  $857B  BB                         ADD
  $857C  B0                         DEREF
  $857D  EA 02                      CALLPTR_imm1           $02
  $857F  B3                         PUSHL
  $8580  8E 43 99                   PUSH_imm2              $9943
  $8583  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8587  0A                         LOADL_quick   ; inline operand = 10
  $8588  D2                         LSHIFT1
  $8589  1E                         LOADR_quick   ; inline operand = 14
  $858A  BB                         ADD
  $858B  73                         ADD_qimm   ; inline operand = 3
  $858C  B3                         PUSHL
  $858D  0D                         LOADL_quick   ; inline operand = 13
  $858E  7D                         ADD_qimm   ; inline operand = 13
  $858F  B3                         PUSHL
  $8590  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8594  DE F2 FF                   LEAL_far               $FFF2
  $8597  B3                         PUSHL
  $8598  0A                         LOADL_quick   ; inline operand = 10
  $8599  D2                         LSHIFT1
  $859A  B4                         POPR
  $859B  BB                         ADD
  $859C  B0                         DEREF
  $859D  B3                         PUSHL
  $859E  DE E8 FF                   LEAL_far               $FFE8
  $85A1  B3                         PUSHL
  $85A2  0A                         LOADL_quick   ; inline operand = 10
  $85A3  D2                         LSHIFT1
  $85A4  B4                         POPR
  $85A5  BB                         ADD
  $85A6  B0                         DEREF
  $85A7  B3                         PUSHL
  $85A8  8E 47 99                   PUSH_imm2              $9947
  $85AB  E9 99 C7 06                CALL_abs_imm1          $C799 {native}, $06
  $85AF  0A                         LOADL_quick   ; inline operand = 10
  $85B0  D0                         INC
  $85B1  2A                         STORE_quick   ; inline operand = 10
 >$85B2  0B                         LOADL_quick   ; inline operand = 11
  $85B3  D0                         INC
  $85B4  2B                         STORE_quick   ; inline operand = 11
 >$85B5  0B                         LOADL_quick   ; inline operand = 11
  $85B6  55                         LOADR_qimm   ; inline operand = 5
  $85B7  C6                         UCMPLT
  $85B8  D7 F5 84                   JUMPT_abs              $84F5
  $85BB  0E                         LOADL_quick   ; inline operand = 14
  $85BC  79                         ADD_qimm   ; inline operand = 9
  $85BD  B3                         PUSHL
  $85BE  0D                         LOADL_quick   ; inline operand = 13
  $85BF  8F 15                      BYTE_ADD_imm1          +21
  $85C1  B3                         PUSHL
  $85C2  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $85C6  8E 4F 99                   PUSH_imm2              $994F
  $85C9  E9 99 C7 02                CALL_abs_imm1          $C799 {native}, $02
  $85CD  0E                         LOADL_quick   ; inline operand = 14
  $85CE  7B                         ADD_qimm   ; inline operand = 11
  $85CF  B3                         PUSHL
  $85D0  0D                         LOADL_quick   ; inline operand = 13
  $85D1  8F 17                      BYTE_ADD_imm1          +23
  $85D3  B3                         PUSHL
  $85D4  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $85D8  87 E4                      PUSH_near              $E4
  $85DA  8E 55 99                   PUSH_imm2              $9955
  $85DD  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $85E1  0E                         LOADL_quick   ; inline operand = 14
  $85E2  7C                         ADD_qimm   ; inline operand = 12
  $85E3  B3                         PUSHL
  $85E4  0D                         LOADL_quick   ; inline operand = 13
  $85E5  8F 18                      BYTE_ADD_imm1          +24
  $85E7  B3                         PUSHL
  $85E8  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $85EC  87 E6                      PUSH_near              $E6
  $85EE  8E 58 99                   PUSH_imm2              $9958
  $85F1  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $85F5  CF                         RETURN

; ============================================================
; sub $85F6   (frame_off=-18, body @ $85FB)   [PRG $005F6]
; ============================================================
  $85FB  40                         LOADL_qimm   ; inline operand = 0
  $85FC  24                         STORE_quick   ; inline operand = 4
  $85FD  40                         LOADL_qimm   ; inline operand = 0
  $85FE  2B                         STORE_quick   ; inline operand = 11
  $85FF  2A                         STORE_quick   ; inline operand = 10
  $8600  D6 36 86                   JUMP_abs               $8636
 >$8603  0B                         LOADL_quick   ; inline operand = 11
  $8604  57                         LOADR_qimm   ; inline operand = 7
  $8605  B5                         MULT
  $8606  8C 90 6C                   LOADR_imm2             $6C90
  $8609  BB                         ADD
  $860A  23                         STORE_quick   ; inline operand = 3
  $860B  03                         LOADL_quick   ; inline operand = 3
  $860C  76                         ADD_qimm   ; inline operand = 6
  $860D  D3                         BYTE_DEREF
  $860E  8B 40                      BYTE_LOADR_imm1        +64
  $8610  DA                         AND
  $8611  D8 33 86                   JUMPF_abs              $8633
  $8614  DE F2 FF                   LEAL_far               $FFF2
  $8617  B3                         PUSHL
  $8618  0A                         LOADL_quick   ; inline operand = 10
  $8619  D2                         LSHIFT1
  $861A  B4                         POPR
  $861B  BB                         ADD
  $861C  B3                         PUSHL
  $861D  3B                         PUSH_quick   ; inline operand = 11
  $861E  E9 EA D9 02                CALL_abs_imm1          $D9EA {native}, $02
  $8622  B1                         POPSTORE
  $8623  DE F2 FF                   LEAL_far               $FFF2
  $8626  B3                         PUSHL
  $8627  0A                         LOADL_quick   ; inline operand = 10
  $8628  D2                         LSHIFT1
  $8629  B4                         POPR
  $862A  BB                         ADD
  $862B  B0                         DEREF
  $862C  CD                         SWAP
  $862D  04                         LOADL_quick   ; inline operand = 4
  $862E  BB                         ADD
  $862F  24                         STORE_quick   ; inline operand = 4
  $8630  0A                         LOADL_quick   ; inline operand = 10
  $8631  D0                         INC
  $8632  2A                         STORE_quick   ; inline operand = 10
 >$8633  0B                         LOADL_quick   ; inline operand = 11
  $8634  D0                         INC
  $8635  2B                         STORE_quick   ; inline operand = 11
 >$8636  0B                         LOADL_quick   ; inline operand = 11
  $8637  55                         LOADR_qimm   ; inline operand = 5
  $8638  C6                         UCMPLT
  $8639  D7 03 86                   JUMPT_abs              $8603
  $863C  61                         PUSH_qimm   ; inline operand = 1
  $863D  8E 63 99                   PUSH_imm2              $9963
  $8640  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8644  0E                         LOADL_quick   ; inline operand = 14
  $8645  D2                         LSHIFT1
  $8646  83 13                      LOADR_near             $13
  $8648  BB                         ADD
  $8649  73                         ADD_qimm   ; inline operand = 3
  $864A  B3                         PUSHL
  $864B  0F                         LOADL_quick   ; inline operand = 15
  $864C  79                         ADD_qimm   ; inline operand = 9
  $864D  B3                         PUSHL
  $864E  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8652  3D                         PUSH_quick   ; inline operand = 13
  $8653  0C                         LOADL_quick   ; inline operand = 12
  $8654  D2                         LSHIFT1
  $8655  8C 5D 99                   LOADR_imm2             $995D
  $8658  BB                         ADD
  $8659  B0                         DEREF
  $865A  EA 02                      CALLPTR_imm1           $02
  $865C  B3                         PUSHL
  $865D  8E 6A 99                   PUSH_imm2              $996A
  $8660  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8664  0E                         LOADL_quick   ; inline operand = 14
  $8665  D2                         LSHIFT1
  $8666  83 13                      LOADR_near             $13
  $8668  BB                         ADD
  $8669  73                         ADD_qimm   ; inline operand = 3
  $866A  B3                         PUSHL
  $866B  0F                         LOADL_quick   ; inline operand = 15
  $866C  7D                         ADD_qimm   ; inline operand = 13
  $866D  B3                         PUSHL
  $866E  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8672  DE F2 FF                   LEAL_far               $FFF2
  $8675  B3                         PUSHL
  $8676  0E                         LOADL_quick   ; inline operand = 14
  $8677  D2                         LSHIFT1
  $8678  B4                         POPR
  $8679  BB                         ADD
  $867A  B0                         DEREF
  $867B  B3                         PUSHL
  $867C  8E 6E 99                   PUSH_imm2              $996E
  $867F  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8683  81 13                      LOADL_near             $13
  $8685  7B                         ADD_qimm   ; inline operand = 11
  $8686  B3                         PUSHL
  $8687  0F                         LOADL_quick   ; inline operand = 15
  $8688  8F 17                      BYTE_ADD_imm1          +23
  $868A  B3                         PUSHL
  $868B  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $868F  34                         PUSH_quick   ; inline operand = 4
  $8690  8E 72 99                   PUSH_imm2              $9972
  $8693  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $8697  CF                         RETURN

; ============================================================
; sub $8698   (frame_off=-6, body @ $869D)   [PRG $00698]
; ============================================================
  $869D  40                         LOADL_qimm   ; inline operand = 0
  $869E  29                         STORE_quick   ; inline operand = 9
  $869F  3C                         PUSH_quick   ; inline operand = 12
  $86A0  E9 EA D9 02                CALL_abs_imm1          $D9EA {native}, $02
  $86A4  B3                         PUSHL
  $86A5  3C                         PUSH_quick   ; inline operand = 12
  $86A6  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $86AA  8F 12                      BYTE_ADD_imm1          +18
  $86AC  B3                         PUSHL
  $86AD  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $86B1  B4                         POPR
  $86B2  BC                         SUB
  $86B3  2B                         STORE_quick   ; inline operand = 11
  $86B4  0B                         LOADL_quick   ; inline operand = 11
  $86B5  D7 C1 86                   JUMPT_abs              $86C1
  $86B8  8E 75 99                   PUSH_imm2              $9975
  $86BB  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $86BF  09                         LOADL_quick   ; inline operand = 9
  $86C0  CF                         RETURN
 >$86C1  61                         PUSH_qimm   ; inline operand = 1
  $86C2  3B                         PUSH_quick   ; inline operand = 11
  $86C3  60                         PUSH_qimm   ; inline operand = 0
  $86C4  8E 86 99                   PUSH_imm2              $9986
  $86C7  E9 F3 CC 08                CALL_abs_imm1          $CCF3 {native}, $08
  $86CB  2A                         STORE_quick   ; inline operand = 10
  $86CC  0A                         LOADL_quick   ; inline operand = 10
  $86CD  8B FF                      BYTE_LOADR_imm1        -1
  $86CF  C0                         CMPEQ
  $86D0  D7 D7 86                   JUMPT_abs              $86D7
  $86D3  0A                         LOADL_quick   ; inline operand = 10
  $86D4  D7 D9 86                   JUMPT_abs              $86D9
 >$86D7  40                         LOADL_qimm   ; inline operand = 0
  $86D8  CF                         RETURN
 >$86D9  0A                         LOADL_quick   ; inline operand = 10
  $86DA  8B FF                      BYTE_LOADR_imm1        -1
  $86DC  C1                         CMPNE
  $86DD  D8 FA 86                   JUMPF_abs              $86FA
  $86E0  0A                         LOADL_quick   ; inline operand = 10
  $86E1  5A                         LOADR_qimm   ; inline operand = 10
  $86E2  B5                         MULT
  $86E3  B3                         PUSHL
  $86E4  0C                         LOADL_quick   ; inline operand = 12
  $86E5  8B 18                      BYTE_LOADR_imm1        +24
  $86E7  B5                         MULT
  $86E8  8C B6 6A                   LOADR_imm2             $6AB6
  $86EB  BB                         ADD
  $86EC  B4                         POPR
  $86ED  B3                         PUSHL
  $86EE  B0                         DEREF
  $86EF  BB                         ADD
  $86F0  B1                         POPSTORE
  $86F1  3F                         PUSH_quick   ; inline operand = 15
  $86F2  3E                         PUSH_quick   ; inline operand = 14
  $86F3  3D                         PUSH_quick   ; inline operand = 13
  $86F4  3C                         PUSH_quick   ; inline operand = 12
  $86F5  61                         PUSH_qimm   ; inline operand = 1
  $86F6  E9 F6 85 0A                CALL_abs_imm1          $85F6 {bytecode}, $0A
 >$86FA  09                         LOADL_quick   ; inline operand = 9
  $86FB  CF                         RETURN

; ============================================================
; sub $86FC   (frame_off=-6, body @ $8701)   [PRG $006FC]
; ============================================================
  $8701  3F                         PUSH_quick   ; inline operand = 15
  $8702  3E                         PUSH_quick   ; inline operand = 14
  $8703  61                         PUSH_qimm   ; inline operand = 1
  $8704  E9 78 84 06                CALL_abs_imm1          $8478 {bytecode}, $06
  $8708  40                         LOADL_qimm   ; inline operand = 0
  $8709  2B                         STORE_quick   ; inline operand = 11
 >$870A  AC F2 83                   CALL_abs               $83F2 {bytecode}
  $870D  61                         PUSH_qimm   ; inline operand = 1
  $870E  8E 95 99                   PUSH_imm2              $9995
  $8711  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8715  3C                         PUSH_quick   ; inline operand = 12
  $8716  62                         PUSH_qimm   ; inline operand = 2
  $8717  0F                         LOADL_quick   ; inline operand = 15
  $8718  74                         ADD_qimm   ; inline operand = 4
  $8719  B3                         PUSHL
  $871A  0E                         LOADL_quick   ; inline operand = 14
  $871B  D0                         INC
  $871C  B3                         PUSHL
  $871D  E9 16 A2 08                CALL_abs_imm1          $A216 {native}, $08
  $8721  2A                         STORE_quick   ; inline operand = 10
  $8722  0A                         LOADL_quick   ; inline operand = 10
  $8723  8C FF 00                   LOADR_imm2             $00FF
  $8726  C1                         CMPNE
  $8727  D8 4C 87                   JUMPF_abs              $874C
  $872A  0D                         LOADL_quick   ; inline operand = 13
  $872B  1A                         LOADR_quick   ; inline operand = 10
  $872C  BB                         ADD
  $872D  D3                         BYTE_DEREF
  $872E  8B 18                      BYTE_LOADR_imm1        +24
  $8730  B5                         MULT
  $8731  8C B6 6A                   LOADR_imm2             $6AB6
  $8734  BB                         ADD
  $8735  B0                         DEREF
  $8736  29                         STORE_quick   ; inline operand = 9
  $8737  AC 2C 84                   CALL_abs               $842C {bytecode}
  $873A  61                         PUSH_qimm   ; inline operand = 1
  $873B  E9 0D 84 02                CALL_abs_imm1          $840D {bytecode}, $02
  $873F  3F                         PUSH_quick   ; inline operand = 15
  $8740  3E                         PUSH_quick   ; inline operand = 14
  $8741  3A                         PUSH_quick   ; inline operand = 10
  $8742  0D                         LOADL_quick   ; inline operand = 13
  $8743  1A                         LOADR_quick   ; inline operand = 10
  $8744  BB                         ADD
  $8745  D3                         BYTE_DEREF
  $8746  B3                         PUSHL
  $8747  E9 98 86 08                CALL_abs_imm1          $8698 {bytecode}, $08
  $874B  2B                         STORE_quick   ; inline operand = 11
 >$874C  0A                         LOADL_quick   ; inline operand = 10
  $874D  8C FF 00                   LOADR_imm2             $00FF
  $8750  C0                         CMPEQ
  $8751  D7 5A 87                   JUMPT_abs              $875A
  $8754  0B                         LOADL_quick   ; inline operand = 11
  $8755  51                         LOADR_qimm   ; inline operand = 1
  $8756  C0                         CMPEQ
  $8757  D8 0A 87                   JUMPF_abs              $870A
 >$875A  CF                         RETURN

; ============================================================
; sub $875B   (frame_off=+0, body @ $8760)   [PRG $0075B]
; ============================================================
  $8760  3C                         PUSH_quick   ; inline operand = 12
  $8761  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8765  7F                         ADD_qimm   ; inline operand = 15
  $8766  B3                         PUSHL
  $8767  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $876B  CF                         RETURN

; ============================================================
; sub $876C   (frame_off=+0, body @ $8771)   [PRG $0076C]
; ============================================================
  $8771  3C                         PUSH_quick   ; inline operand = 12
  $8772  E9 5B 87 02                CALL_abs_imm1          $875B {bytecode}, $02
  $8776  B3                         PUSHL
  $8777  0C                         LOADL_quick   ; inline operand = 12
  $8778  57                         LOADR_qimm   ; inline operand = 7
  $8779  B5                         MULT
  $877A  8C 94 6C                   LOADR_imm2             $6C94
  $877D  BB                         ADD
  $877E  B0                         DEREF
  $877F  B3                         PUSHL
  $8780  8E A9 99                   PUSH_imm2              $99A9
  $8783  E9 99 C7 06                CALL_abs_imm1          $C799 {native}, $06
  $8787  CF                         RETURN

; ============================================================
; sub $8788   (frame_off=-16, body @ $878D)   [PRG $00788]
; ============================================================
  $878D  3F                         PUSH_quick   ; inline operand = 15
  $878E  E9 5B 87 02                CALL_abs_imm1          $875B {bytecode}, $02
  $8792  B3                         PUSHL
  $8793  0C                         LOADL_quick   ; inline operand = 12
  $8794  B0                         DEREF
  $8795  B3                         PUSHL
  $8796  0F                         LOADL_quick   ; inline operand = 15
  $8797  57                         LOADR_qimm   ; inline operand = 7
  $8798  B5                         MULT
  $8799  8C 94 6C                   LOADR_imm2             $6C94
  $879C  BB                         ADD
  $879D  B0                         DEREF
  $879E  B4                         POPR
  $879F  BB                         ADD
  $87A0  B3                         PUSHL
  $87A1  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $87A5  2B                         STORE_quick   ; inline operand = 11
  $87A6  AC 2C 84                   CALL_abs               $842C {bytecode}
  $87A9  61                         PUSH_qimm   ; inline operand = 1
  $87AA  E9 0D 84 02                CALL_abs_imm1          $840D {bytecode}, $02
  $87AE  61                         PUSH_qimm   ; inline operand = 1
  $87AF  3B                         PUSH_quick   ; inline operand = 11
  $87B0  60                         PUSH_qimm   ; inline operand = 0
  $87B1  8E B1 99                   PUSH_imm2              $99B1
  $87B4  E9 F3 CC 08                CALL_abs_imm1          $CCF3 {native}, $08
  $87B8  2A                         STORE_quick   ; inline operand = 10
  $87B9  0A                         LOADL_quick   ; inline operand = 10
  $87BA  8B FF                      BYTE_LOADR_imm1        -1
  $87BC  C0                         CMPEQ
  $87BD  D8 C1 87                   JUMPF_abs              $87C1
  $87C0  CF                         RETURN
 >$87C1  0F                         LOADL_quick   ; inline operand = 15
  $87C2  57                         LOADR_qimm   ; inline operand = 7
  $87C3  B5                         MULT
  $87C4  8C 94 6C                   LOADR_imm2             $6C94
  $87C7  BB                         ADD
  $87C8  B0                         DEREF
  $87C9  29                         STORE_quick   ; inline operand = 9
  $87CA  0F                         LOADL_quick   ; inline operand = 15
  $87CB  8B 18                      BYTE_LOADR_imm1        +24
  $87CD  B5                         MULT
  $87CE  8C A4 6A                   LOADR_imm2             $6AA4
  $87D1  BB                         ADD
  $87D2  24                         STORE_quick   ; inline operand = 4
  $87D3  0A                         LOADL_quick   ; inline operand = 10
  $87D4  19                         LOADR_quick   ; inline operand = 9
  $87D5  C6                         UCMPLT
  $87D6  D8 3D 88                   JUMPF_abs              $883D
  $87D9  04                         LOADL_quick   ; inline operand = 4
  $87DA  8F 16                      BYTE_ADD_imm1          +22
  $87DC  D3                         BYTE_DEREF
  $87DD  B7 26                      LONG                   $26
  $87DF  B7 14                      LONG                   $14
  $87E1  0A                         LOADL_quick   ; inline operand = 10
  $87E2  B7 26                      LONG                   $26
  $87E4  B7 14                      LONG                   $14
  $87E6  09                         LOADL_quick   ; inline operand = 9
  $87E7  B7 25                      LONG                   $25
  $87E9  B7 15                      LONG                   $15
  $87EB  B7 04                      LONG                   $04
  $87ED  B7 15                      LONG                   $15
  $87EF  B7 01                      LONG                   $01
  $87F1  B7 0E                      LONG                   $0E
  $87F3  F6                         UNK
  $87F4  FF                         UNK
  $87F5  0C                         LOADL_quick   ; inline operand = 12
  $87F6  B0                         DEREF
  $87F7  B7 25                      LONG                   $25
  $87F9  B7 14                      LONG                   $14
  $87FB  0D                         LOADL_quick   ; inline operand = 13
  $87FC  B0                         DEREF
  $87FD  B7 26                      LONG                   $26
  $87FF  B7 15                      LONG                   $15
  $8801  B7 01                      LONG                   $01
  $8803  B7 0E                      LONG                   $0E
  $8805  F2                         UNK
  $8806  FF                         UNK
  $8807  3D                         PUSH_quick   ; inline operand = 13
  $8808  0C                         LOADL_quick   ; inline operand = 12
  $8809  B0                         DEREF
  $880A  B7 25                      LONG                   $25
  $880C  B7 14                      LONG                   $14
  $880E  0A                         LOADL_quick   ; inline operand = 10
  $880F  B7 26                      LONG                   $26
  $8811  B7 14                      LONG                   $14
  $8813  09                         LOADL_quick   ; inline operand = 9
  $8814  B7 25                      LONG                   $25
  $8816  B7 15                      LONG                   $15
  $8818  B7 04                      LONG                   $04
  $881A  B7 15                      LONG                   $15
  $881C  B7 03                      LONG                   $03
  $881E  B7 14                      LONG                   $14
  $8820  B7 0C                      LONG                   $0C
  $8822  F6                         UNK
  $8823  FF                         UNK
  $8824  B7 0D                      LONG                   $0D
  $8826  F2                         UNK
  $8827  FF                         UNK
  $8828  B7 03                      LONG                   $03
  $882A  B7 15                      LONG                   $15
  $882C  B7 02                      LONG                   $02
  $882E  B7 27                      LONG                   $27
  $8830  B1                         POPSTORE
  $8831  09                         LOADL_quick   ; inline operand = 9
  $8832  1A                         LOADR_quick   ; inline operand = 10
  $8833  BC                         SUB
  $8834  B3                         PUSHL
  $8835  0C                         LOADL_quick   ; inline operand = 12
  $8836  B4                         POPR
  $8837  B3                         PUSHL
  $8838  B0                         DEREF
  $8839  BB                         ADD
  $883A  D6 8D 88                   JUMP_abs               $888D
 >$883D  09                         LOADL_quick   ; inline operand = 9
  $883E  B7 25                      LONG                   $25
  $8840  B7 14                      LONG                   $14
  $8842  04                         LOADL_quick   ; inline operand = 4
  $8843  8F 16                      BYTE_ADD_imm1          +22
  $8845  D3                         BYTE_DEREF
  $8846  B7 26                      LONG                   $26
  $8848  B7 15                      LONG                   $15
  $884A  B7 01                      LONG                   $01
  $884C  B7 0E                      LONG                   $0E
  $884E  F6                         UNK
  $884F  FF                         UNK
  $8850  0D                         LOADL_quick   ; inline operand = 13
  $8851  B0                         DEREF
  $8852  B7 26                      LONG                   $26
  $8854  B7 14                      LONG                   $14
  $8856  09                         LOADL_quick   ; inline operand = 9
  $8857  B7 25                      LONG                   $25
  $8859  B7 14                      LONG                   $14
  $885B  0A                         LOADL_quick   ; inline operand = 10
  $885C  B7 26                      LONG                   $26
  $885E  B7 15                      LONG                   $15
  $8860  B7 04                      LONG                   $04
  $8862  B7 15                      LONG                   $15
  $8864  B7 01                      LONG                   $01
  $8866  B7 0E                      LONG                   $0E
  $8868  F2                         UNK
  $8869  FF                         UNK
  $886A  04                         LOADL_quick   ; inline operand = 4
  $886B  8F 16                      BYTE_ADD_imm1          +22
  $886D  B3                         PUSHL
  $886E  0A                         LOADL_quick   ; inline operand = 10
  $886F  B7 26                      LONG                   $26
  $8871  B7 14                      LONG                   $14
  $8873  B7 0C                      LONG                   $0C
  $8875  F2                         UNK
  $8876  FF                         UNK
  $8877  B7 0D                      LONG                   $0D
  $8879  F6                         UNK
  $887A  FF                         UNK
  $887B  B7 03                      LONG                   $03
  $887D  B7 15                      LONG                   $15
  $887F  B7 02                      LONG                   $02
  $8881  B7 27                      LONG                   $27
  $8883  D4                         BYTE_POPSTORE
  $8884  0A                         LOADL_quick   ; inline operand = 10
  $8885  19                         LOADR_quick   ; inline operand = 9
  $8886  BC                         SUB
  $8887  B3                         PUSHL
  $8888  0C                         LOADL_quick   ; inline operand = 12
  $8889  B4                         POPR
  $888A  B3                         PUSHL
  $888B  B0                         DEREF
  $888C  BC                         SUB
 >$888D  B1                         POPSTORE
  $888E  0F                         LOADL_quick   ; inline operand = 15
  $888F  57                         LOADR_qimm   ; inline operand = 7
  $8890  B5                         MULT
  $8891  8C 94 6C                   LOADR_imm2             $6C94
  $8894  BB                         ADD
  $8895  B3                         PUSHL
  $8896  0A                         LOADL_quick   ; inline operand = 10
  $8897  B1                         POPSTORE
  $8898  0E                         LOADL_quick   ; inline operand = 14
  $8899  D2                         LSHIFT1
  $889A  83 15                      LOADR_near             $15
  $889C  BB                         ADD
  $889D  B3                         PUSHL
  $889E  81 13                      LOADL_near             $13
  $88A0  78                         ADD_qimm   ; inline operand = 8
  $88A1  B3                         PUSHL
  $88A2  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $88A6  3F                         PUSH_quick   ; inline operand = 15
  $88A7  E9 6C 87 02                CALL_abs_imm1          $876C {bytecode}, $02
  $88AB  A5 71 66                   BYTE_LOADL_abs         $6671
  $88AE  52                         LOADR_qimm   ; inline operand = 2
  $88AF  DA                         AND
  $88B0  D8 B9 88                   JUMPF_abs              $88B9
  $88B3  81 15                      LOADL_near             $15
  $88B5  7A                         ADD_qimm   ; inline operand = 10
  $88B6  D6 BF 88                   JUMP_abs               $88BF
 >$88B9  81 17                      LOADL_near             $17
  $88BB  D2                         LSHIFT1
  $88BC  83 15                      LOADR_near             $15
  $88BE  BB                         ADD
 >$88BF  B3                         PUSHL
  $88C0  81 13                      LOADL_near             $13
  $88C2  75                         ADD_qimm   ; inline operand = 5
  $88C3  B3                         PUSHL
  $88C4  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $88C8  0C                         LOADL_quick   ; inline operand = 12
  $88C9  B0                         DEREF
  $88CA  B3                         PUSHL
  $88CB  8E BF 99                   PUSH_imm2              $99BF
  $88CE  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $88D2  CF                         RETURN

; ============================================================
; sub $88D3   (frame_off=-6, body @ $88D8)   [PRG $008D3]
; ============================================================
  $88D8  0C                         LOADL_quick   ; inline operand = 12
  $88D9  2A                         STORE_quick   ; inline operand = 10
  $88DA  8A 62 66                   LOADL_imm2             $6662
  $88DD  29                         STORE_quick   ; inline operand = 9
  $88DE  09                         LOADL_quick   ; inline operand = 9
  $88DF  7F                         ADD_qimm   ; inline operand = 15
  $88E0  D3                         BYTE_DEREF
  $88E1  52                         LOADR_qimm   ; inline operand = 2
  $88E2  DA                         AND
  $88E3  D8 E8 88                   JUMPF_abs              $88E8
  $88E6  45                         LOADL_qimm   ; inline operand = 5
  $88E7  2A                         STORE_quick   ; inline operand = 10
 >$88E8  0F                         LOADL_quick   ; inline operand = 15
  $88E9  8C FF 00                   LOADR_imm2             $00FF
  $88EC  C0                         CMPEQ
  $88ED  D8 F2 88                   JUMPF_abs              $88F2
  $88F0  40                         LOADL_qimm   ; inline operand = 0
  $88F1  2F                         STORE_quick   ; inline operand = 15
 >$88F2  60                         PUSH_qimm   ; inline operand = 0
  $88F3  60                         PUSH_qimm   ; inline operand = 0
  $88F4  0A                         LOADL_quick   ; inline operand = 10
  $88F5  D2                         LSHIFT1
  $88F6  74                         ADD_qimm   ; inline operand = 4
  $88F7  B3                         PUSHL
  $88F8  8D 12                      BYTE_PUSH_imm1         +18
  $88FA  81 15                      LOADL_near             $15
  $88FC  D1                         DEC
  $88FD  B3                         PUSHL
  $88FE  81 13                      LOADL_near             $13
  $8900  8F FE                      BYTE_ADD_imm1          -2
  $8902  B3                         PUSHL
  $8903  E9 92 A6 0C                CALL_abs_imm1          $A692 {native}, $0C
  $8907  40                         LOADL_qimm   ; inline operand = 0
  $8908  D6 53 89                   JUMP_abs               $8953
 >$890B  0B                         LOADL_quick   ; inline operand = 11
  $890C  D2                         LSHIFT1
  $890D  83 15                      LOADR_near             $15
  $890F  BB                         ADD
  $8910  B3                         PUSHL
  $8911  81 13                      LOADL_near             $13
  $8913  78                         ADD_qimm   ; inline operand = 8
  $8914  B3                         PUSHL
  $8915  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8919  0D                         LOADL_quick   ; inline operand = 13
  $891A  1B                         LOADR_quick   ; inline operand = 11
  $891B  BB                         ADD
  $891C  D3                         BYTE_DEREF
  $891D  B3                         PUSHL
  $891E  E9 6C 87 02                CALL_abs_imm1          $876C {bytecode}, $02
  $8922  0B                         LOADL_quick   ; inline operand = 11
  $8923  D2                         LSHIFT1
  $8924  1E                         LOADR_quick   ; inline operand = 14
  $8925  BB                         ADD
  $8926  B3                         PUSHL
  $8927  0D                         LOADL_quick   ; inline operand = 13
  $8928  1B                         LOADR_quick   ; inline operand = 11
  $8929  BB                         ADD
  $892A  D3                         BYTE_DEREF
  $892B  57                         LOADR_qimm   ; inline operand = 7
  $892C  B5                         MULT
  $892D  8C 96 6C                   LOADR_imm2             $6C96
  $8930  BB                         ADD
  $8931  D3                         BYTE_DEREF
  $8932  5F                         LOADR_qimm   ; inline operand = 15
  $8933  DA                         AND
  $8934  B3                         PUSHL
  $8935  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8939  B1                         POPSTORE
  $893A  0B                         LOADL_quick   ; inline operand = 11
  $893B  D2                         LSHIFT1
  $893C  83 15                      LOADR_near             $15
  $893E  BB                         ADD
  $893F  D0                         INC
  $8940  B3                         PUSHL
  $8941  87 13                      PUSH_near              $13
  $8943  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8947  0B                         LOADL_quick   ; inline operand = 11
  $8948  D2                         LSHIFT1
  $8949  1E                         LOADR_quick   ; inline operand = 14
  $894A  BB                         ADD
  $894B  B0                         DEREF
  $894C  B3                         PUSHL
  $894D  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8951  0B                         LOADL_quick   ; inline operand = 11
  $8952  D0                         INC
 >$8953  2B                         STORE_quick   ; inline operand = 11
  $8954  0B                         LOADL_quick   ; inline operand = 11
  $8955  1C                         LOADR_quick   ; inline operand = 12
  $8956  C6                         UCMPLT
  $8957  D7 0B 89                   JUMPT_abs              $890B
  $895A  0A                         LOADL_quick   ; inline operand = 10
  $895B  D2                         LSHIFT1
  $895C  83 15                      LOADR_near             $15
  $895E  BB                         ADD
  $895F  B3                         PUSHL
  $8960  81 13                      LOADL_near             $13
  $8962  75                         ADD_qimm   ; inline operand = 5
  $8963  B3                         PUSHL
  $8964  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8968  3F                         PUSH_quick   ; inline operand = 15
  $8969  8E C8 99                   PUSH_imm2              $99C8
  $896C  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8970  CF                         RETURN

; ============================================================
; sub $8971   (frame_off=-41, body @ $8976)   [PRG $00971]
; ============================================================
  $8976  DE FB FF                   LEAL_far               $FFFB
  $8979  B3                         PUSHL
  $897A  60                         PUSH_qimm   ; inline operand = 0
  $897B  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $897F  85 EB                      STORE_near             $EB
  $8981  3E                         PUSH_quick   ; inline operand = 14
  $8982  3D                         PUSH_quick   ; inline operand = 13
  $8983  3C                         PUSH_quick   ; inline operand = 12
  $8984  DE F1 FF                   LEAL_far               $FFF1
  $8987  B3                         PUSHL
  $8988  DE FB FF                   LEAL_far               $FFFB
  $898B  B3                         PUSHL
  $898C  87 EB                      PUSH_near              $EB
  $898E  E9 D3 88 0C                CALL_abs_imm1          $88D3 {bytecode}, $0C
  $8992  40                         LOADL_qimm   ; inline operand = 0
  $8993  D6 B4 89                   JUMP_abs               $89B4
 >$8996  DE DB FF                   LEAL_far               $FFDB
  $8999  B3                         PUSHL
  $899A  81 EF                      LOADL_near             $EF
  $899C  D2                         LSHIFT1
  $899D  B4                         POPR
  $899E  BB                         ADD
  $899F  B3                         PUSHL
  $89A0  DE FB FF                   LEAL_far               $FFFB
  $89A3  B3                         PUSHL
  $89A4  81 EF                      LOADL_near             $EF
  $89A6  B4                         POPR
  $89A7  BB                         ADD
  $89A8  D3                         BYTE_DEREF
  $89A9  57                         LOADR_qimm   ; inline operand = 7
  $89AA  B5                         MULT
  $89AB  8C 94 6C                   LOADR_imm2             $6C94
  $89AE  BB                         ADD
  $89AF  B0                         DEREF
  $89B0  B1                         POPSTORE
  $89B1  81 EF                      LOADL_near             $EF
  $89B3  D0                         INC
 >$89B4  85 EF                      STORE_near             $EF
  $89B6  81 EF                      LOADL_near             $EF
  $89B8  83 EB                      LOADR_near             $EB
  $89BA  C6                         UCMPLT
  $89BB  D7 96 89                   JUMPT_abs              $8996
  $89BE  41                         LOADL_qimm   ; inline operand = 1
  $89BF  85 D9                      STORE_near             $D9
  $89C1  0C                         LOADL_quick   ; inline operand = 12
  $89C2  8C FF 00                   LOADR_imm2             $00FF
  $89C5  C0                         CMPEQ
  $89C6  D8 CD 89                   JUMPF_abs              $89CD
  $89C9  40                         LOADL_qimm   ; inline operand = 0
  $89CA  D6 CE 89                   JUMP_abs               $89CE
 >$89CD  0C                         LOADL_quick   ; inline operand = 12
 >$89CE  85 E5                      STORE_near             $E5
  $89D0  89 5A                      BYTE_LOADL_imm1        +90
  $89D2  85 E7                      STORE_near             $E7
  $89D4  A5 71 66                   BYTE_LOADL_abs         $6671
  $89D7  52                         LOADR_qimm   ; inline operand = 2
  $89D8  DA                         AND
  $89D9  D7 DF 89                   JUMPT_abs              $89DF
  $89DC  AC E8 B2                   CALL_abs               $B2E8 {native}
 >$89DF  AC F2 83                   CALL_abs               $83F2 {bytecode}
  $89E2  61                         PUSH_qimm   ; inline operand = 1
  $89E3  8E E0 99                   PUSH_imm2              $99E0
  $89E6  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $89EA  87 EB                      PUSH_near              $EB
  $89EC  62                         PUSH_qimm   ; inline operand = 2
  $89ED  0E                         LOADL_quick   ; inline operand = 14
  $89EE  D0                         INC
  $89EF  B3                         PUSHL
  $89F0  0D                         LOADL_quick   ; inline operand = 13
  $89F1  D1                         DEC
  $89F2  B3                         PUSHL
  $89F3  E9 16 A2 08                CALL_abs_imm1          $A216 {native}, $08
  $89F7  85 ED                      STORE_near             $ED
  $89F9  81 ED                      LOADL_near             $ED
  $89FB  8C FF 00                   LOADR_imm2             $00FF
  $89FE  C1                         CMPNE
  $89FF  D8 21 8A                   JUMPF_abs              $8A21
  $8A02  87 EB                      PUSH_near              $EB
  $8A04  3E                         PUSH_quick   ; inline operand = 14
  $8A05  3D                         PUSH_quick   ; inline operand = 13
  $8A06  DE FB FF                   LEAL_far               $FFFB
  $8A09  B3                         PUSHL
  $8A0A  81 ED                      LOADL_near             $ED
  $8A0C  B4                         POPR
  $8A0D  BB                         ADD
  $8A0E  D3                         BYTE_DEREF
  $8A0F  B3                         PUSHL
  $8A10  87 ED                      PUSH_near              $ED
  $8A12  DE E7 FF                   LEAL_far               $FFE7
  $8A15  B3                         PUSHL
  $8A16  DE E5 FF                   LEAL_far               $FFE5
  $8A19  B3                         PUSHL
  $8A1A  E9 88 87 0E                CALL_abs_imm1          $8788 {bytecode}, $0E
  $8A1E  D6 9E 8A                   JUMP_abs               $8A9E
 >$8A21  AC 2C 84                   CALL_abs               $842C {bytecode}
  $8A24  81 E5                      LOADL_near             $E5
  $8A26  D8 83 8A                   JUMPF_abs              $8A83
  $8A29  62                         PUSH_qimm   ; inline operand = 2
  $8A2A  E9 0D 84 02                CALL_abs_imm1          $840D {bytecode}, $02
  $8A2E  61                         PUSH_qimm   ; inline operand = 1
  $8A2F  8E EC 99                   PUSH_imm2              $99EC
  $8A32  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8A36  A5 7D 73                   BYTE_LOADL_abs         $737D (ui_shared_var_737d)
  $8A39  D7 41 8A                   JUMPT_abs              $8A41
  $8A3C  89 15                      BYTE_LOADL_imm1        +21
  $8A3E  D6 4F 8A                   JUMP_abs               $8A4F
 >$8A41  A5 7D 73                   BYTE_LOADL_abs         $737D (ui_shared_var_737d)
  $8A44  51                         LOADR_qimm   ; inline operand = 1
  $8A45  C0                         CMPEQ
  $8A46  D8 4D 8A                   JUMPF_abs              $8A4D
  $8A49  44                         LOADL_qimm   ; inline operand = 4
  $8A4A  D6 4F 8A                   JUMP_abs               $8A4F
 >$8A4D  89 14                      BYTE_LOADL_imm1        +20
 >$8A4F  85 E9                      STORE_near             $E9
  $8A51  61                         PUSH_qimm   ; inline operand = 1
  $8A52  62                         PUSH_qimm   ; inline operand = 2
  $8A53  8E D1 99                   PUSH_imm2              $99D1
  $8A56  61                         PUSH_qimm   ; inline operand = 1
  $8A57  68                         PUSH_qimm   ; inline operand = 8
  $8A58  87 E9                      PUSH_near              $E9
  $8A5A  68                         PUSH_qimm   ; inline operand = 8
  $8A5B  E9 56 A1 0E                CALL_abs_imm1          $A156 {native}, $0E
  $8A5F  85 ED                      STORE_near             $ED
  $8A61  81 ED                      LOADL_near             $ED
  $8A63  D9 03 00 00 00 74 8A 01 00 77 8A FF ... SWITCH_noncontig       count=3   ; .table 3 (key,target) + default (noncontiguous); SWITCH 0=>$8A74 1=>$8A77 255=>$8A7F default=>$8A9E
 >$8A74  40                         LOADL_qimm   ; inline operand = 0
  $8A75  85 D9                      STORE_near             $D9
 >$8A77  8A FF 00                   LOADL_imm2             $00FF
 >$8A7A  85 ED                      STORE_near             $ED
  $8A7C  D6 9E 8A                   JUMP_abs               $8A9E
 >$8A7F  40                         LOADL_qimm   ; inline operand = 0
  $8A80  D6 7A 8A                   JUMP_abs               $8A7A
 >$8A83  61                         PUSH_qimm   ; inline operand = 1
  $8A84  E9 0D 84 02                CALL_abs_imm1          $840D {bytecode}, $02
  $8A88  61                         PUSH_qimm   ; inline operand = 1
  $8A89  8E 08 9A                   PUSH_imm2              $9A08
  $8A8C  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8A90  AC 9F CD                   CALL_abs               $CD9F {native}
  $8A93  D8 7F 8A                   JUMPF_abs              $8A7F
  $8A96  8A FF 00                   LOADL_imm2             $00FF
  $8A99  85 ED                      STORE_near             $ED
  $8A9B  41                         LOADL_qimm   ; inline operand = 1
  $8A9C  85 D9                      STORE_near             $D9
 >$8A9E  81 ED                      LOADL_near             $ED
  $8AA0  8C FF 00                   LOADR_imm2             $00FF
  $8AA3  C1                         CMPNE
  $8AA4  D7 DF 89                   JUMPT_abs              $89DF
  $8AA7  41                         LOADL_qimm   ; inline operand = 1
  $8AA8  85 D7                      STORE_near             $D7
  $8AAA  81 D9                      LOADL_near             $D9
  $8AAC  D7 DE 8A                   JUMPT_abs              $8ADE
  $8AAF  40                         LOADL_qimm   ; inline operand = 0
  $8AB0  D6 D1 8A                   JUMP_abs               $8AD1
 >$8AB3  DE FB FF                   LEAL_far               $FFFB
  $8AB6  B3                         PUSHL
  $8AB7  81 EF                      LOADL_near             $EF
  $8AB9  B4                         POPR
  $8ABA  BB                         ADD
  $8ABB  D3                         BYTE_DEREF
  $8ABC  57                         LOADR_qimm   ; inline operand = 7
  $8ABD  B5                         MULT
  $8ABE  8C 94 6C                   LOADR_imm2             $6C94
  $8AC1  BB                         ADD
  $8AC2  B3                         PUSHL
  $8AC3  DE DB FF                   LEAL_far               $FFDB
  $8AC6  B3                         PUSHL
  $8AC7  81 EF                      LOADL_near             $EF
  $8AC9  D2                         LSHIFT1
  $8ACA  B4                         POPR
  $8ACB  BB                         ADD
  $8ACC  B0                         DEREF
  $8ACD  B1                         POPSTORE
  $8ACE  81 EF                      LOADL_near             $EF
  $8AD0  D0                         INC
 >$8AD1  85 EF                      STORE_near             $EF
  $8AD3  81 EF                      LOADL_near             $EF
  $8AD5  83 EB                      LOADR_near             $EB
  $8AD7  C6                         UCMPLT
  $8AD8  D7 B3 8A                   JUMPT_abs              $8AB3
  $8ADB  40                         LOADL_qimm   ; inline operand = 0
  $8ADC  85 D7                      STORE_near             $D7
 >$8ADE  81 D7                      LOADL_near             $D7
  $8AE0  CF                         RETURN

; ============================================================
; sub $8AE1   (frame_off=-4, body @ $8AE6)   [PRG $00AE1]
; ============================================================
  $8AE6  40                         LOADL_qimm   ; inline operand = 0
  $8AE7  2B                         STORE_quick   ; inline operand = 11
  $8AE8  D6 FE 8A                   JUMP_abs               $8AFE
 >$8AEB  0A                         LOADL_quick   ; inline operand = 10
  $8AEC  D2                         LSHIFT1
  $8AED  1C                         LOADR_quick   ; inline operand = 12
  $8AEE  BB                         ADD
  $8AEF  B0                         DEREF
  $8AF0  D8 FC 8A                   JUMPF_abs              $8AFC
  $8AF3  0A                         LOADL_quick   ; inline operand = 10
  $8AF4  D2                         LSHIFT1
  $8AF5  1C                         LOADR_quick   ; inline operand = 12
  $8AF6  BB                         ADD
  $8AF7  B0                         DEREF
  $8AF8  CD                         SWAP
  $8AF9  0B                         LOADL_quick   ; inline operand = 11
  $8AFA  BB                         ADD
  $8AFB  2B                         STORE_quick   ; inline operand = 11
 >$8AFC  0A                         LOADL_quick   ; inline operand = 10
  $8AFD  D0                         INC
 >$8AFE  2A                         STORE_quick   ; inline operand = 10
  $8AFF  0A                         LOADL_quick   ; inline operand = 10
  $8B00  58                         LOADR_qimm   ; inline operand = 8
  $8B01  C2                         SCMPLT
  $8B02  D7 EB 8A                   JUMPT_abs              $8AEB
  $8B05  0C                         LOADL_quick   ; inline operand = 12
  $8B06  8F 10                      BYTE_ADD_imm1          +16
  $8B08  B0                         DEREF
  $8B09  1B                         LOADR_quick   ; inline operand = 11
  $8B0A  BC                         SUB
  $8B0B  CF                         RETURN

; ============================================================
; sub $8B0C   (frame_off=+0, body @ $8B11)   [PRG $00B0C]
; ============================================================
  $8B11  60                         PUSH_qimm   ; inline operand = 0
  $8B12  60                         PUSH_qimm   ; inline operand = 0
  $8B13  89 10                      BYTE_LOADL_imm1        +16
  $8B15  1D                         LOADR_quick   ; inline operand = 13
  $8B16  BC                         SUB
  $8B17  73                         ADD_qimm   ; inline operand = 3
  $8B18  B3                         PUSHL
  $8B19  0C                         LOADL_quick   ; inline operand = 12
  $8B1A  7D                         ADD_qimm   ; inline operand = 13
  $8B1B  B3                         PUSHL
  $8B1C  3D                         PUSH_quick   ; inline operand = 13
  $8B1D  0C                         LOADL_quick   ; inline operand = 12
  $8B1E  5E                         LOADR_qimm   ; inline operand = 14
  $8B1F  B5                         MULT
  $8B20  72                         ADD_qimm   ; inline operand = 2
  $8B21  B3                         PUSHL
  $8B22  68                         PUSH_qimm   ; inline operand = 8
  $8B23  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $8B27  CF                         RETURN

; ============================================================
; sub $8B28   (frame_off=-18, body @ $8B2D)   [PRG $00B28]
; ============================================================
  $8B2D  43                         LOADL_qimm   ; inline operand = 3
  $8B2E  24                         STORE_quick   ; inline operand = 4
  $8B2F  43                         LOADL_qimm   ; inline operand = 3
  $8B30  23                         STORE_quick   ; inline operand = 3
  $8B31  DE F2 FF                   LEAL_far               $FFF2
  $8B34  B3                         PUSHL
  $8B35  60                         PUSH_qimm   ; inline operand = 0
  $8B36  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $8B3A  D1                         DEC
  $8B3B  2A                         STORE_quick   ; inline operand = 10
  $8B3C  40                         LOADL_qimm   ; inline operand = 0
  $8B3D  D6 68 8B                   JUMP_abs               $8B68
 >$8B40  0B                         LOADL_quick   ; inline operand = 11
  $8B41  D2                         LSHIFT1
  $8B42  13                         LOADR_quick   ; inline operand = 3
  $8B43  BB                         ADD
  $8B44  D0                         INC
  $8B45  B3                         PUSHL
  $8B46  34                         PUSH_quick   ; inline operand = 4
  $8B47  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8B4B  DE F2 FF                   LEAL_far               $FFF2
  $8B4E  B3                         PUSHL
  $8B4F  0B                         LOADL_quick   ; inline operand = 11
  $8B50  B4                         POPR
  $8B51  BB                         ADD
  $8B52  D3                         BYTE_DEREF
  $8B53  57                         LOADR_qimm   ; inline operand = 7
  $8B54  B5                         MULT
  $8B55  8C 96 6C                   LOADR_imm2             $6C96
  $8B58  BB                         ADD
  $8B59  D3                         BYTE_DEREF
  $8B5A  5F                         LOADR_qimm   ; inline operand = 15
  $8B5B  DA                         AND
  $8B5C  B3                         PUSHL
  $8B5D  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8B61  B3                         PUSHL
  $8B62  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8B66  0B                         LOADL_quick   ; inline operand = 11
  $8B67  D0                         INC
 >$8B68  2B                         STORE_quick   ; inline operand = 11
  $8B69  0B                         LOADL_quick   ; inline operand = 11
  $8B6A  1A                         LOADR_quick   ; inline operand = 10
  $8B6B  C7                         UCMPLE
  $8B6C  D7 40 8B                   JUMPT_abs              $8B40
 >$8B6F  61                         PUSH_qimm   ; inline operand = 1
  $8B70  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $8B74  AC 01 B8                   CALL_abs               $B801 (draw_box_frame) {native}
  $8B77  61                         PUSH_qimm   ; inline operand = 1
  $8B78  8E 29 9A                   PUSH_imm2              $9A29
  $8B7B  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8B7F  0A                         LOADL_quick   ; inline operand = 10
  $8B80  D0                         INC
  $8B81  B3                         PUSHL
  $8B82  62                         PUSH_qimm   ; inline operand = 2
  $8B83  03                         LOADL_quick   ; inline operand = 3
  $8B84  D0                         INC
  $8B85  B3                         PUSHL
  $8B86  04                         LOADL_quick   ; inline operand = 4
  $8B87  D1                         DEC
  $8B88  B3                         PUSHL
  $8B89  E9 16 A2 08                CALL_abs_imm1          $A216 {native}, $08
  $8B8D  29                         STORE_quick   ; inline operand = 9
  $8B8E  09                         LOADL_quick   ; inline operand = 9
  $8B8F  8C FF 00                   LOADR_imm2             $00FF
  $8B92  C1                         CMPNE
  $8B93  D8 D9 8B                   JUMPF_abs              $8BD9
  $8B96  AC 01 B8                   CALL_abs               $B801 (draw_box_frame) {native}
  $8B99  61                         PUSH_qimm   ; inline operand = 1
  $8B9A  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $8B9E  60                         PUSH_qimm   ; inline operand = 0
  $8B9F  8E 39 9A                   PUSH_imm2              $9A39
  $8BA2  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8BA6  DE F2 FF                   LEAL_far               $FFF2
  $8BA9  B3                         PUSHL
  $8BAA  09                         LOADL_quick   ; inline operand = 9
  $8BAB  B4                         POPR
  $8BAC  BB                         ADD
  $8BAD  D3                         BYTE_DEREF
  $8BAE  57                         LOADR_qimm   ; inline operand = 7
  $8BAF  B5                         MULT
  $8BB0  8C 96 6C                   LOADR_imm2             $6C96
  $8BB3  BB                         ADD
  $8BB4  D3                         BYTE_DEREF
  $8BB5  5F                         LOADR_qimm   ; inline operand = 15
  $8BB6  DA                         AND
  $8BB7  B3                         PUSHL
  $8BB8  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8BBC  B3                         PUSHL
  $8BBD  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8BC1  8D 19                      BYTE_PUSH_imm1         +25
  $8BC3  68                         PUSH_qimm   ; inline operand = 8
  $8BC4  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8BC8  AC 9F CD                   CALL_abs               $CD9F {native}
  $8BCB  28                         STORE_quick   ; inline operand = 8
  $8BCC  08                         LOADL_quick   ; inline operand = 8
  $8BCD  D8 6F 8B                   JUMPF_abs              $8B6F
  $8BD0  DE F2 FF                   LEAL_far               $FFF2
  $8BD3  B3                         PUSHL
  $8BD4  09                         LOADL_quick   ; inline operand = 9
  $8BD5  B4                         POPR
  $8BD6  BB                         ADD
  $8BD7  D3                         BYTE_DEREF
  $8BD8  CF                         RETURN
 >$8BD9  8A FF 00                   LOADL_imm2             $00FF
  $8BDC  CF                         RETURN

; ============================================================
; sub $8BDD   (frame_off=-10, body @ $8BE2)   [PRG $00BDD]
; ============================================================
  $8BE2  0C                         LOADL_quick   ; inline operand = 12
  $8BE3  8B 18                      BYTE_LOADR_imm1        +24
  $8BE5  B5                         MULT
  $8BE6  8C A4 6A                   LOADR_imm2             $6AA4
  $8BE9  BB                         ADD
  $8BEA  27                         STORE_quick   ; inline operand = 7
  $8BEB  07                         LOADL_quick   ; inline operand = 7
  $8BEC  D0                         INC
  $8BED  29                         STORE_quick   ; inline operand = 9
  $8BEE  07                         LOADL_quick   ; inline operand = 7
  $8BEF  76                         ADD_qimm   ; inline operand = 6
  $8BF0  28                         STORE_quick   ; inline operand = 8
  $8BF1  43                         LOADL_qimm   ; inline operand = 3
  $8BF2  2B                         STORE_quick   ; inline operand = 11
  $8BF3  40                         LOADL_qimm   ; inline operand = 0
  $8BF4  D6 18 8C                   JUMP_abs               $8C18
 >$8BF7  0A                         LOADL_quick   ; inline operand = 10
  $8BF8  D2                         LSHIFT1
  $8BF9  18                         LOADR_quick   ; inline operand = 8
  $8BFA  BB                         ADD
  $8BFB  B0                         DEREF
  $8BFC  D8 16 8C                   JUMPF_abs              $8C16
  $8BFF  0D                         LOADL_quick   ; inline operand = 13
  $8C00  1B                         LOADR_quick   ; inline operand = 11
  $8C01  BB                         ADD
  $8C02  B3                         PUSHL
  $8C03  09                         LOADL_quick   ; inline operand = 9
  $8C04  1A                         LOADR_quick   ; inline operand = 10
  $8C05  BB                         ADD
  $8C06  D3                         BYTE_DEREF
  $8C07  D4                         BYTE_POPSTORE
  $8C08  0B                         LOADL_quick   ; inline operand = 11
  $8C09  D2                         LSHIFT1
  $8C0A  1F                         LOADR_quick   ; inline operand = 15
  $8C0B  BB                         ADD
  $8C0C  B3                         PUSHL
  $8C0D  0A                         LOADL_quick   ; inline operand = 10
  $8C0E  D2                         LSHIFT1
  $8C0F  18                         LOADR_quick   ; inline operand = 8
  $8C10  BB                         ADD
  $8C11  B0                         DEREF
  $8C12  B1                         POPSTORE
  $8C13  0B                         LOADL_quick   ; inline operand = 11
  $8C14  D0                         INC
  $8C15  2B                         STORE_quick   ; inline operand = 11
 >$8C16  0A                         LOADL_quick   ; inline operand = 10
  $8C17  D0                         INC
 >$8C18  2A                         STORE_quick   ; inline operand = 10
  $8C19  0A                         LOADL_quick   ; inline operand = 10
  $8C1A  55                         LOADR_qimm   ; inline operand = 5
  $8C1B  C6                         UCMPLT
  $8C1C  D7 F7 8B                   JUMPT_abs              $8BF7
  $8C1F  D6 34 8C                   JUMP_abs               $8C34
 >$8C22  0D                         LOADL_quick   ; inline operand = 13
  $8C23  1B                         LOADR_quick   ; inline operand = 11
  $8C24  BB                         ADD
  $8C25  B3                         PUSHL
  $8C26  8A FF 00                   LOADL_imm2             $00FF
  $8C29  D4                         BYTE_POPSTORE
  $8C2A  0B                         LOADL_quick   ; inline operand = 11
  $8C2B  D2                         LSHIFT1
  $8C2C  1F                         LOADR_quick   ; inline operand = 15
  $8C2D  BB                         ADD
  $8C2E  B3                         PUSHL
  $8C2F  40                         LOADL_qimm   ; inline operand = 0
  $8C30  B1                         POPSTORE
  $8C31  0B                         LOADL_quick   ; inline operand = 11
  $8C32  D0                         INC
  $8C33  2B                         STORE_quick   ; inline operand = 11
 >$8C34  0B                         LOADL_quick   ; inline operand = 11
  $8C35  58                         LOADR_qimm   ; inline operand = 8
  $8C36  C6                         UCMPLT
  $8C37  D7 22 8C                   JUMPT_abs              $8C22
  $8C3A  40                         LOADL_qimm   ; inline operand = 0
  $8C3B  2A                         STORE_quick   ; inline operand = 10
 >$8C3C  0D                         LOADL_quick   ; inline operand = 13
  $8C3D  1A                         LOADR_quick   ; inline operand = 10
  $8C3E  BB                         ADD
  $8C3F  B3                         PUSHL
  $8C40  0A                         LOADL_quick   ; inline operand = 10
  $8C41  8F 1A                      BYTE_ADD_imm1          +26
  $8C43  D4                         BYTE_POPSTORE
  $8C44  0A                         LOADL_quick   ; inline operand = 10
  $8C45  D0                         INC
  $8C46  2A                         STORE_quick   ; inline operand = 10
  $8C47  0A                         LOADL_quick   ; inline operand = 10
  $8C48  53                         LOADR_qimm   ; inline operand = 3
  $8C49  C6                         UCMPLT
  $8C4A  D7 3C 8C                   JUMPT_abs              $8C3C
  $8C4D  3F                         PUSH_quick   ; inline operand = 15
  $8C4E  07                         LOADL_quick   ; inline operand = 7
  $8C4F  8F 12                      BYTE_ADD_imm1          +18
  $8C51  B0                         DEREF
  $8C52  5A                         LOADR_qimm   ; inline operand = 10
  $8C53  B6                         SDIV
  $8C54  B1                         POPSTORE
  $8C55  0F                         LOADL_quick   ; inline operand = 15
  $8C56  72                         ADD_qimm   ; inline operand = 2
  $8C57  B3                         PUSHL
  $8C58  07                         LOADL_quick   ; inline operand = 7
  $8C59  8F 10                      BYTE_ADD_imm1          +16
  $8C5B  B0                         DEREF
  $8C5C  5A                         LOADR_qimm   ; inline operand = 10
  $8C5D  B6                         SDIV
  $8C5E  B1                         POPSTORE
  $8C5F  0F                         LOADL_quick   ; inline operand = 15
  $8C60  74                         ADD_qimm   ; inline operand = 4
  $8C61  B3                         PUSHL
  $8C62  07                         LOADL_quick   ; inline operand = 7
  $8C63  8F 14                      BYTE_ADD_imm1          +20
  $8C65  B0                         DEREF
  $8C66  B1                         POPSTORE
  $8C67  0F                         LOADL_quick   ; inline operand = 15
  $8C68  8F 10                      BYTE_ADD_imm1          +16
  $8C6A  B3                         PUSHL
  $8C6B  0C                         LOADL_quick   ; inline operand = 12
  $8C6C  57                         LOADR_qimm   ; inline operand = 7
  $8C6D  B5                         MULT
  $8C6E  8C 96 6C                   LOADR_imm2             $6C96
  $8C71  BB                         ADD
  $8C72  D3                         BYTE_DEREF
  $8C73  5F                         LOADR_qimm   ; inline operand = 15
  $8C74  DA                         AND
  $8C75  B3                         PUSHL
  $8C76  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8C7A  8F 12                      BYTE_ADD_imm1          +18
  $8C7C  B3                         PUSHL
  $8C7D  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8C81  B1                         POPSTORE
  $8C82  CF                         RETURN

; ============================================================
; sub $8C83   (frame_off=+0, body @ $8C88)   [PRG $00C83]
; ============================================================
  $8C88  63                         PUSH_qimm   ; inline operand = 3
  $8C89  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $8C8D  3C                         PUSH_quick   ; inline operand = 12
  $8C8E  E9 E1 8A 02                CALL_abs_imm1          $8AE1 {bytecode}, $02
  $8C92  B3                         PUSHL
  $8C93  8E 55 9A                   PUSH_imm2              $9A55
  $8C96  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8C9A  CF                         RETURN

; ============================================================
; sub $8C9B   (frame_off=-10, body @ $8CA0)   [PRG $00C9B]
; ============================================================
  $8CA0  40                         LOADL_qimm   ; inline operand = 0
  $8CA1  27                         STORE_quick   ; inline operand = 7
  $8CA2  40                         LOADL_qimm   ; inline operand = 0
  $8CA3  2B                         STORE_quick   ; inline operand = 11
  $8CA4  D6 08 8D                   JUMP_abs               $8D08
 >$8CA7  0D                         LOADL_quick   ; inline operand = 13
  $8CA8  1A                         LOADR_quick   ; inline operand = 10
  $8CA9  BB                         ADD
  $8CAA  D3                         BYTE_DEREF
  $8CAB  8C FF 00                   LOADR_imm2             $00FF
  $8CAE  C1                         CMPNE
  $8CAF  D8 06 8D                   JUMPF_abs              $8D06
  $8CB2  0A                         LOADL_quick   ; inline operand = 10
  $8CB3  53                         LOADR_qimm   ; inline operand = 3
  $8CB4  C6                         UCMPLT
  $8CB5  D8 D1 8C                   JUMPF_abs              $8CD1
  $8CB8  0B                         LOADL_quick   ; inline operand = 11
  $8CB9  D2                         LSHIFT1
  $8CBA  73                         ADD_qimm   ; inline operand = 3
  $8CBB  B3                         PUSHL
  $8CBC  63                         PUSH_qimm   ; inline operand = 3
  $8CBD  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8CC1  61                         PUSH_qimm   ; inline operand = 1
  $8CC2  0A                         LOADL_quick   ; inline operand = 10
  $8CC3  D2                         LSHIFT1
  $8CC4  8C 11 9A                   LOADR_imm2             $9A11
  $8CC7  BB                         ADD
  $8CC8  B0                         DEREF
  $8CC9  B3                         PUSHL
  $8CCA  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8CCE  D6 ED 8C                   JUMP_abs               $8CED
 >$8CD1  0B                         LOADL_quick   ; inline operand = 11
  $8CD2  D2                         LSHIFT1
  $8CD3  74                         ADD_qimm   ; inline operand = 4
  $8CD4  B3                         PUSHL
  $8CD5  63                         PUSH_qimm   ; inline operand = 3
  $8CD6  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8CDA  0D                         LOADL_quick   ; inline operand = 13
  $8CDB  1A                         LOADR_quick   ; inline operand = 10
  $8CDC  BB                         ADD
  $8CDD  D3                         BYTE_DEREF
  $8CDE  D2                         LSHIFT1
  $8CDF  8C 49 BB                   LOADR_imm2             $BB49
  $8CE2  BB                         ADD
  $8CE3  B3                         PUSHL
  $8CE4  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8CE8  B3                         PUSHL
  $8CE9  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
 >$8CED  0B                         LOADL_quick   ; inline operand = 11
  $8CEE  D2                         LSHIFT1
  $8CEF  73                         ADD_qimm   ; inline operand = 3
  $8CF0  B3                         PUSHL
  $8CF1  6C                         PUSH_qimm   ; inline operand = 12
  $8CF2  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8CF6  0A                         LOADL_quick   ; inline operand = 10
  $8CF7  D2                         LSHIFT1
  $8CF8  1F                         LOADR_quick   ; inline operand = 15
  $8CF9  BB                         ADD
  $8CFA  B0                         DEREF
  $8CFB  B3                         PUSHL
  $8CFC  8E 66 9A                   PUSH_imm2              $9A66
  $8CFF  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8D03  0B                         LOADL_quick   ; inline operand = 11
  $8D04  D0                         INC
  $8D05  2B                         STORE_quick   ; inline operand = 11
 >$8D06  0A                         LOADL_quick   ; inline operand = 10
  $8D07  D0                         INC
 >$8D08  2A                         STORE_quick   ; inline operand = 10
  $8D09  0A                         LOADL_quick   ; inline operand = 10
  $8D0A  58                         LOADR_qimm   ; inline operand = 8
  $8D0B  C6                         UCMPLT
  $8D0C  D7 A7 8C                   JUMPT_abs              $8CA7
  $8D0F  40                         LOADL_qimm   ; inline operand = 0
  $8D10  29                         STORE_quick   ; inline operand = 9
  $8D11  D6 5C 8D                   JUMP_abs               $8D5C
 >$8D14  0A                         LOADL_quick   ; inline operand = 10
  $8D15  D2                         LSHIFT1
  $8D16  1E                         LOADR_quick   ; inline operand = 14
  $8D17  BB                         ADD
  $8D18  B0                         DEREF
  $8D19  D8 5A 8D                   JUMPF_abs              $8D5A
  $8D1C  40                         LOADL_qimm   ; inline operand = 0
  $8D1D  28                         STORE_quick   ; inline operand = 8
 >$8D1E  0D                         LOADL_quick   ; inline operand = 13
  $8D1F  18                         LOADR_quick   ; inline operand = 8
  $8D20  BB                         ADD
  $8D21  D3                         BYTE_DEREF
  $8D22  1A                         LOADR_quick   ; inline operand = 10
  $8D23  C0                         CMPEQ
  $8D24  D8 2C 8D                   JUMPF_abs              $8D2C
  $8D27  41                         LOADL_qimm   ; inline operand = 1
  $8D28  27                         STORE_quick   ; inline operand = 7
  $8D29  D6 35 8D                   JUMP_abs               $8D35
 >$8D2C  08                         LOADL_quick   ; inline operand = 8
  $8D2D  D0                         INC
  $8D2E  28                         STORE_quick   ; inline operand = 8
  $8D2F  08                         LOADL_quick   ; inline operand = 8
  $8D30  58                         LOADR_qimm   ; inline operand = 8
  $8D31  C6                         UCMPLT
  $8D32  D7 1E 8D                   JUMPT_abs              $8D1E
 >$8D35  0B                         LOADL_quick   ; inline operand = 11
  $8D36  58                         LOADR_qimm   ; inline operand = 8
  $8D37  C6                         UCMPLT
  $8D38  D8 58 8D                   JUMPF_abs              $8D58
  $8D3B  07                         LOADL_quick   ; inline operand = 7
  $8D3C  D7 58 8D                   JUMPT_abs              $8D58
  $8D3F  0B                         LOADL_quick   ; inline operand = 11
  $8D40  D2                         LSHIFT1
  $8D41  73                         ADD_qimm   ; inline operand = 3
  $8D42  B3                         PUSHL
  $8D43  63                         PUSH_qimm   ; inline operand = 3
  $8D44  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8D48  61                         PUSH_qimm   ; inline operand = 1
  $8D49  8E 6A 9A                   PUSH_imm2              $9A6A
  $8D4C  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8D50  0B                         LOADL_quick   ; inline operand = 11
  $8D51  D0                         INC
  $8D52  2B                         STORE_quick   ; inline operand = 11
  $8D53  41                         LOADL_qimm   ; inline operand = 1
  $8D54  29                         STORE_quick   ; inline operand = 9
  $8D55  D6 64 8D                   JUMP_abs               $8D64
 >$8D58  40                         LOADL_qimm   ; inline operand = 0
  $8D59  27                         STORE_quick   ; inline operand = 7
 >$8D5A  0A                         LOADL_quick   ; inline operand = 10
  $8D5B  D0                         INC
 >$8D5C  2A                         STORE_quick   ; inline operand = 10
  $8D5D  0A                         LOADL_quick   ; inline operand = 10
  $8D5E  8B 1A                      BYTE_LOADR_imm1        +26
  $8D60  C6                         UCMPLT
  $8D61  D7 14 8D                   JUMPT_abs              $8D14
 >$8D64  0B                         LOADL_quick   ; inline operand = 11
  $8D65  D6 7B 8D                   JUMP_abs               $8D7B
 >$8D68  0A                         LOADL_quick   ; inline operand = 10
  $8D69  D2                         LSHIFT1
  $8D6A  73                         ADD_qimm   ; inline operand = 3
  $8D6B  B3                         PUSHL
  $8D6C  63                         PUSH_qimm   ; inline operand = 3
  $8D6D  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8D71  61                         PUSH_qimm   ; inline operand = 1
  $8D72  8E 78 9A                   PUSH_imm2              $9A78
  $8D75  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8D79  0A                         LOADL_quick   ; inline operand = 10
  $8D7A  D0                         INC
 >$8D7B  2A                         STORE_quick   ; inline operand = 10
  $8D7C  0A                         LOADL_quick   ; inline operand = 10
  $8D7D  58                         LOADR_qimm   ; inline operand = 8
  $8D7E  C6                         UCMPLT
  $8D7F  D7 68 8D                   JUMPT_abs              $8D68
  $8D82  3F                         PUSH_quick   ; inline operand = 15
  $8D83  E9 83 8C 02                CALL_abs_imm1          $8C83 {bytecode}, $02
  $8D87  0B                         LOADL_quick   ; inline operand = 11
  $8D88  D1                         DEC
  $8D89  19                         LOADR_quick   ; inline operand = 9
  $8D8A  BC                         SUB
  $8D8B  CF                         RETURN

; ============================================================
; sub $8D8C   (frame_off=-10, body @ $8D91)   [PRG $00D8C]
; ============================================================
  $8D91  0C                         LOADL_quick   ; inline operand = 12
  $8D92  8B 18                      BYTE_LOADR_imm1        +24
  $8D94  B5                         MULT
  $8D95  8C A4 6A                   LOADR_imm2             $6AA4
  $8D98  BB                         ADD
  $8D99  27                         STORE_quick   ; inline operand = 7
  $8D9A  07                         LOADL_quick   ; inline operand = 7
  $8D9B  D0                         INC
  $8D9C  2B                         STORE_quick   ; inline operand = 11
  $8D9D  07                         LOADL_quick   ; inline operand = 7
  $8D9E  76                         ADD_qimm   ; inline operand = 6
  $8D9F  28                         STORE_quick   ; inline operand = 8
  $8DA0  40                         LOADL_qimm   ; inline operand = 0
  $8DA1  29                         STORE_quick   ; inline operand = 9
 >$8DA2  0B                         LOADL_quick   ; inline operand = 11
  $8DA3  19                         LOADR_quick   ; inline operand = 9
  $8DA4  BB                         ADD
  $8DA5  B3                         PUSHL
  $8DA6  8A FF 00                   LOADL_imm2             $00FF
  $8DA9  D4                         BYTE_POPSTORE
  $8DAA  09                         LOADL_quick   ; inline operand = 9
  $8DAB  D2                         LSHIFT1
  $8DAC  18                         LOADR_quick   ; inline operand = 8
  $8DAD  BB                         ADD
  $8DAE  B3                         PUSHL
  $8DAF  40                         LOADL_qimm   ; inline operand = 0
  $8DB0  B1                         POPSTORE
  $8DB1  09                         LOADL_quick   ; inline operand = 9
  $8DB2  D0                         INC
  $8DB3  29                         STORE_quick   ; inline operand = 9
  $8DB4  09                         LOADL_quick   ; inline operand = 9
  $8DB5  55                         LOADR_qimm   ; inline operand = 5
  $8DB6  C6                         UCMPLT
  $8DB7  D7 A2 8D                   JUMPT_abs              $8DA2
  $8DBA  40                         LOADL_qimm   ; inline operand = 0
  $8DBB  2A                         STORE_quick   ; inline operand = 10
  $8DBC  43                         LOADL_qimm   ; inline operand = 3
  $8DBD  D6 E4 8D                   JUMP_abs               $8DE4
 >$8DC0  0D                         LOADL_quick   ; inline operand = 13
  $8DC1  19                         LOADR_quick   ; inline operand = 9
  $8DC2  BB                         ADD
  $8DC3  D3                         BYTE_DEREF
  $8DC4  8C FF 00                   LOADR_imm2             $00FF
  $8DC7  C1                         CMPNE
  $8DC8  D8 E2 8D                   JUMPF_abs              $8DE2
  $8DCB  0B                         LOADL_quick   ; inline operand = 11
  $8DCC  1A                         LOADR_quick   ; inline operand = 10
  $8DCD  BB                         ADD
  $8DCE  B3                         PUSHL
  $8DCF  0D                         LOADL_quick   ; inline operand = 13
  $8DD0  19                         LOADR_quick   ; inline operand = 9
  $8DD1  BB                         ADD
  $8DD2  D3                         BYTE_DEREF
  $8DD3  D4                         BYTE_POPSTORE
  $8DD4  0A                         LOADL_quick   ; inline operand = 10
  $8DD5  D2                         LSHIFT1
  $8DD6  18                         LOADR_quick   ; inline operand = 8
  $8DD7  BB                         ADD
  $8DD8  B3                         PUSHL
  $8DD9  09                         LOADL_quick   ; inline operand = 9
  $8DDA  D2                         LSHIFT1
  $8DDB  1F                         LOADR_quick   ; inline operand = 15
  $8DDC  BB                         ADD
  $8DDD  B0                         DEREF
  $8DDE  B1                         POPSTORE
  $8DDF  0A                         LOADL_quick   ; inline operand = 10
  $8DE0  D0                         INC
  $8DE1  2A                         STORE_quick   ; inline operand = 10
 >$8DE2  09                         LOADL_quick   ; inline operand = 9
  $8DE3  D0                         INC
 >$8DE4  29                         STORE_quick   ; inline operand = 9
  $8DE5  09                         LOADL_quick   ; inline operand = 9
  $8DE6  58                         LOADR_qimm   ; inline operand = 8
  $8DE7  C6                         UCMPLT
  $8DE8  D7 C0 8D                   JUMPT_abs              $8DC0
  $8DEB  07                         LOADL_quick   ; inline operand = 7
  $8DEC  8F 12                      BYTE_ADD_imm1          +18
  $8DEE  B3                         PUSHL
  $8DEF  0F                         LOADL_quick   ; inline operand = 15
  $8DF0  B0                         DEREF
  $8DF1  5A                         LOADR_qimm   ; inline operand = 10
  $8DF2  B5                         MULT
  $8DF3  B1                         POPSTORE
  $8DF4  07                         LOADL_quick   ; inline operand = 7
  $8DF5  8F 10                      BYTE_ADD_imm1          +16
  $8DF7  B3                         PUSHL
  $8DF8  0F                         LOADL_quick   ; inline operand = 15
  $8DF9  72                         ADD_qimm   ; inline operand = 2
  $8DFA  B0                         DEREF
  $8DFB  5A                         LOADR_qimm   ; inline operand = 10
  $8DFC  B5                         MULT
  $8DFD  B1                         POPSTORE
  $8DFE  07                         LOADL_quick   ; inline operand = 7
  $8DFF  8F 14                      BYTE_ADD_imm1          +20
  $8E01  B3                         PUSHL
  $8E02  0F                         LOADL_quick   ; inline operand = 15
  $8E03  74                         ADD_qimm   ; inline operand = 4
  $8E04  B0                         DEREF
  $8E05  B1                         POPSTORE
  $8E06  CF                         RETURN

; ============================================================
; sub $8E07   (frame_off=-6, body @ $8E0C)   [PRG $00E07]
; ============================================================
  $8E0C  40                         LOADL_qimm   ; inline operand = 0
  $8E0D  2B                         STORE_quick   ; inline operand = 11
  $8E0E  43                         LOADL_qimm   ; inline operand = 3
  $8E0F  29                         STORE_quick   ; inline operand = 9
  $8E10  D6 46 8E                   JUMP_abs               $8E46
 >$8E13  0B                         LOADL_quick   ; inline operand = 11
  $8E14  D2                         LSHIFT1
  $8E15  1E                         LOADR_quick   ; inline operand = 14
  $8E16  BB                         ADD
  $8E17  B0                         DEREF
  $8E18  D8 43 8E                   JUMPF_abs              $8E43
  $8E1B  40                         LOADL_qimm   ; inline operand = 0
  $8E1C  2A                         STORE_quick   ; inline operand = 10
 >$8E1D  0C                         LOADL_quick   ; inline operand = 12
  $8E1E  1A                         LOADR_quick   ; inline operand = 10
  $8E1F  BB                         ADD
  $8E20  D3                         BYTE_DEREF
  $8E21  8C FF 00                   LOADR_imm2             $00FF
  $8E24  C1                         CMPNE
  $8E25  D8 3A 8E                   JUMPF_abs              $8E3A
  $8E28  0C                         LOADL_quick   ; inline operand = 12
  $8E29  1A                         LOADR_quick   ; inline operand = 10
  $8E2A  BB                         ADD
  $8E2B  D3                         BYTE_DEREF
  $8E2C  1B                         LOADR_quick   ; inline operand = 11
  $8E2D  C0                         CMPEQ
  $8E2E  D8 3A 8E                   JUMPF_abs              $8E3A
  $8E31  0D                         LOADL_quick   ; inline operand = 13
  $8E32  19                         LOADR_quick   ; inline operand = 9
  $8E33  BB                         ADD
  $8E34  B3                         PUSHL
  $8E35  0B                         LOADL_quick   ; inline operand = 11
  $8E36  D4                         BYTE_POPSTORE
  $8E37  09                         LOADL_quick   ; inline operand = 9
  $8E38  D0                         INC
  $8E39  29                         STORE_quick   ; inline operand = 9
 >$8E3A  0A                         LOADL_quick   ; inline operand = 10
  $8E3B  D0                         INC
  $8E3C  2A                         STORE_quick   ; inline operand = 10
  $8E3D  0A                         LOADL_quick   ; inline operand = 10
  $8E3E  58                         LOADR_qimm   ; inline operand = 8
  $8E3F  C6                         UCMPLT
  $8E40  D7 1D 8E                   JUMPT_abs              $8E1D
 >$8E43  0B                         LOADL_quick   ; inline operand = 11
  $8E44  D0                         INC
  $8E45  2B                         STORE_quick   ; inline operand = 11
 >$8E46  0B                         LOADL_quick   ; inline operand = 11
  $8E47  8B 1A                      BYTE_LOADR_imm1        +26
  $8E49  C6                         UCMPLT
  $8E4A  D7 13 8E                   JUMPT_abs              $8E13
  $8E4D  09                         LOADL_quick   ; inline operand = 9
  $8E4E  D6 5B 8E                   JUMP_abs               $8E5B
 >$8E51  0D                         LOADL_quick   ; inline operand = 13
  $8E52  1B                         LOADR_quick   ; inline operand = 11
  $8E53  BB                         ADD
  $8E54  B3                         PUSHL
  $8E55  8A FF 00                   LOADL_imm2             $00FF
  $8E58  D4                         BYTE_POPSTORE
  $8E59  0B                         LOADL_quick   ; inline operand = 11
  $8E5A  D0                         INC
 >$8E5B  2B                         STORE_quick   ; inline operand = 11
  $8E5C  0B                         LOADL_quick   ; inline operand = 11
  $8E5D  8B 1D                      BYTE_LOADR_imm1        +29
  $8E5F  C6                         UCMPLT
  $8E60  D7 51 8E                   JUMPT_abs              $8E51
  $8E63  89 1A                      BYTE_LOADL_imm1        +26
  $8E65  2B                         STORE_quick   ; inline operand = 11
 >$8E66  0D                         LOADL_quick   ; inline operand = 13
  $8E67  1B                         LOADR_quick   ; inline operand = 11
  $8E68  BB                         ADD
  $8E69  8F E6                      BYTE_ADD_imm1          -26
  $8E6B  B3                         PUSHL
  $8E6C  0B                         LOADL_quick   ; inline operand = 11
  $8E6D  D4                         BYTE_POPSTORE
  $8E6E  0B                         LOADL_quick   ; inline operand = 11
  $8E6F  D0                         INC
  $8E70  2B                         STORE_quick   ; inline operand = 11
  $8E71  0B                         LOADL_quick   ; inline operand = 11
  $8E72  8B 1D                      BYTE_LOADR_imm1        +29
  $8E74  C6                         UCMPLT
  $8E75  D7 66 8E                   JUMPT_abs              $8E66
  $8E78  09                         LOADL_quick   ; inline operand = 9
  $8E79  D1                         DEC
  $8E7A  CF                         RETURN

; ============================================================
; sub $8E7B   (frame_off=-8, body @ $8E80)   [PRG $00E7B]
; ============================================================
  $8E80  40                         LOADL_qimm   ; inline operand = 0
  $8E81  2B                         STORE_quick   ; inline operand = 11
  $8E82  40                         LOADL_qimm   ; inline operand = 0
  $8E83  2A                         STORE_quick   ; inline operand = 10
  $8E84  40                         LOADL_qimm   ; inline operand = 0
  $8E85  28                         STORE_quick   ; inline operand = 8
  $8E86  D6 CA 8E                   JUMP_abs               $8ECA
 >$8E89  0A                         LOADL_quick   ; inline operand = 10
  $8E8A  D2                         LSHIFT1
  $8E8B  1E                         LOADR_quick   ; inline operand = 14
  $8E8C  BB                         ADD
  $8E8D  B0                         DEREF
  $8E8E  D8 C7 8E                   JUMPF_abs              $8EC7
  $8E91  40                         LOADL_qimm   ; inline operand = 0
  $8E92  29                         STORE_quick   ; inline operand = 9
 >$8E93  0C                         LOADL_quick   ; inline operand = 12
  $8E94  19                         LOADR_quick   ; inline operand = 9
  $8E95  BB                         ADD
  $8E96  D3                         BYTE_DEREF
  $8E97  8C FF 00                   LOADR_imm2             $00FF
  $8E9A  C1                         CMPNE
  $8E9B  D8 AC 8E                   JUMPF_abs              $8EAC
  $8E9E  0C                         LOADL_quick   ; inline operand = 12
  $8E9F  19                         LOADR_quick   ; inline operand = 9
  $8EA0  BB                         ADD
  $8EA1  D3                         BYTE_DEREF
  $8EA2  1A                         LOADR_quick   ; inline operand = 10
  $8EA3  C0                         CMPEQ
  $8EA4  D8 AC 8E                   JUMPF_abs              $8EAC
  $8EA7  41                         LOADL_qimm   ; inline operand = 1
  $8EA8  2B                         STORE_quick   ; inline operand = 11
  $8EA9  D6 B5 8E                   JUMP_abs               $8EB5
 >$8EAC  09                         LOADL_quick   ; inline operand = 9
  $8EAD  D0                         INC
  $8EAE  29                         STORE_quick   ; inline operand = 9
  $8EAF  09                         LOADL_quick   ; inline operand = 9
  $8EB0  58                         LOADR_qimm   ; inline operand = 8
  $8EB1  C6                         UCMPLT
  $8EB2  D7 93 8E                   JUMPT_abs              $8E93
 >$8EB5  0B                         LOADL_quick   ; inline operand = 11
  $8EB6  D7 C5 8E                   JUMPT_abs              $8EC5
  $8EB9  0D                         LOADL_quick   ; inline operand = 13
  $8EBA  18                         LOADR_quick   ; inline operand = 8
  $8EBB  BB                         ADD
  $8EBC  B3                         PUSHL
  $8EBD  0A                         LOADL_quick   ; inline operand = 10
  $8EBE  D4                         BYTE_POPSTORE
  $8EBF  08                         LOADL_quick   ; inline operand = 8
  $8EC0  D0                         INC
  $8EC1  28                         STORE_quick   ; inline operand = 8
  $8EC2  D6 C7 8E                   JUMP_abs               $8EC7
 >$8EC5  40                         LOADL_qimm   ; inline operand = 0
  $8EC6  2B                         STORE_quick   ; inline operand = 11
 >$8EC7  0A                         LOADL_quick   ; inline operand = 10
  $8EC8  D0                         INC
  $8EC9  2A                         STORE_quick   ; inline operand = 10
 >$8ECA  0A                         LOADL_quick   ; inline operand = 10
  $8ECB  8B 1A                      BYTE_LOADR_imm1        +26
  $8ECD  C6                         UCMPLT
  $8ECE  D7 89 8E                   JUMPT_abs              $8E89
  $8ED1  08                         LOADL_quick   ; inline operand = 8
  $8ED2  D6 DF 8E                   JUMP_abs               $8EDF
 >$8ED5  0D                         LOADL_quick   ; inline operand = 13
  $8ED6  1A                         LOADR_quick   ; inline operand = 10
  $8ED7  BB                         ADD
  $8ED8  B3                         PUSHL
  $8ED9  8A FF 00                   LOADL_imm2             $00FF
  $8EDC  D4                         BYTE_POPSTORE
  $8EDD  0A                         LOADL_quick   ; inline operand = 10
  $8EDE  D0                         INC
 >$8EDF  2A                         STORE_quick   ; inline operand = 10
  $8EE0  0A                         LOADL_quick   ; inline operand = 10
  $8EE1  8B 1D                      BYTE_LOADR_imm1        +29
  $8EE3  C6                         UCMPLT
  $8EE4  D7 D5 8E                   JUMPT_abs              $8ED5
  $8EE7  08                         LOADL_quick   ; inline operand = 8
  $8EE8  D7 EF 8E                   JUMPT_abs              $8EEF
  $8EEB  8A FF 00                   LOADL_imm2             $00FF
  $8EEE  CF                         RETURN
 >$8EEF  08                         LOADL_quick   ; inline operand = 8
  $8EF0  D1                         DEC
  $8EF1  CF                         RETURN

; ============================================================
; sub $8EF2   (frame_off=-4, body @ $8EF7)   [PRG $00EF2]
; ============================================================
  $8EF7  40                         LOADL_qimm   ; inline operand = 0
  $8EF8  2A                         STORE_quick   ; inline operand = 10
  $8EF9  40                         LOADL_qimm   ; inline operand = 0
  $8EFA  D6 59 8F                   JUMP_abs               $8F59
 >$8EFD  0A                         LOADL_quick   ; inline operand = 10
  $8EFE  53                         LOADR_qimm   ; inline operand = 3
  $8EFF  C6                         UCMPLT
  $8F00  D8 1D 8F                   JUMPF_abs              $8F1D
  $8F03  0A                         LOADL_quick   ; inline operand = 10
  $8F04  D2                         LSHIFT1
  $8F05  73                         ADD_qimm   ; inline operand = 3
  $8F06  B3                         PUSHL
  $8F07  8D 11                      BYTE_PUSH_imm1         +17
  $8F09  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8F0D  61                         PUSH_qimm   ; inline operand = 1
  $8F0E  0B                         LOADL_quick   ; inline operand = 11
  $8F0F  D2                         LSHIFT1
  $8F10  8C 11 9A                   LOADR_imm2             $9A11
  $8F13  BB                         ADD
  $8F14  B0                         DEREF
  $8F15  B3                         PUSHL
  $8F16  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8F1A  D6 3A 8F                   JUMP_abs               $8F3A
 >$8F1D  0A                         LOADL_quick   ; inline operand = 10
  $8F1E  D2                         LSHIFT1
  $8F1F  74                         ADD_qimm   ; inline operand = 4
  $8F20  B3                         PUSHL
  $8F21  8D 11                      BYTE_PUSH_imm1         +17
  $8F23  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8F27  0C                         LOADL_quick   ; inline operand = 12
  $8F28  1B                         LOADR_quick   ; inline operand = 11
  $8F29  BB                         ADD
  $8F2A  D3                         BYTE_DEREF
  $8F2B  D2                         LSHIFT1
  $8F2C  8C 49 BB                   LOADR_imm2             $BB49
  $8F2F  BB                         ADD
  $8F30  B3                         PUSHL
  $8F31  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8F35  B3                         PUSHL
  $8F36  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
 >$8F3A  0A                         LOADL_quick   ; inline operand = 10
  $8F3B  D2                         LSHIFT1
  $8F3C  73                         ADD_qimm   ; inline operand = 3
  $8F3D  B3                         PUSHL
  $8F3E  8D 1A                      BYTE_PUSH_imm1         +26
  $8F40  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8F44  0C                         LOADL_quick   ; inline operand = 12
  $8F45  1B                         LOADR_quick   ; inline operand = 11
  $8F46  BB                         ADD
  $8F47  D3                         BYTE_DEREF
  $8F48  D2                         LSHIFT1
  $8F49  1D                         LOADR_quick   ; inline operand = 13
  $8F4A  BB                         ADD
  $8F4B  B0                         DEREF
  $8F4C  B3                         PUSHL
  $8F4D  8E 7F 9A                   PUSH_imm2              $9A7F
  $8F50  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8F54  0A                         LOADL_quick   ; inline operand = 10
  $8F55  D0                         INC
  $8F56  2A                         STORE_quick   ; inline operand = 10
  $8F57  0B                         LOADL_quick   ; inline operand = 11
  $8F58  D0                         INC
 >$8F59  2B                         STORE_quick   ; inline operand = 11
  $8F5A  0C                         LOADL_quick   ; inline operand = 12
  $8F5B  1B                         LOADR_quick   ; inline operand = 11
  $8F5C  BB                         ADD
  $8F5D  D3                         BYTE_DEREF
  $8F5E  8C FF 00                   LOADR_imm2             $00FF
  $8F61  C1                         CMPNE
  $8F62  D8 6B 8F                   JUMPF_abs              $8F6B
  $8F65  0B                         LOADL_quick   ; inline operand = 11
  $8F66  58                         LOADR_qimm   ; inline operand = 8
  $8F67  C6                         UCMPLT
  $8F68  D7 FD 8E                   JUMPT_abs              $8EFD
 >$8F6B  CF                         RETURN

; ============================================================
; sub $8F6C   (frame_off=-6, body @ $8F71)   [PRG $00F6C]
; ============================================================
  $8F71  63                         PUSH_qimm   ; inline operand = 3
  $8F72  61                         PUSH_qimm   ; inline operand = 1
  $8F73  E9 0C 8B 04                CALL_abs_imm1          $8B0C {bytecode}, $04
  $8F77  40                         LOADL_qimm   ; inline operand = 0
  $8F78  29                         STORE_quick   ; inline operand = 9
  $8F79  0C                         LOADL_quick   ; inline operand = 12
  $8F7A  53                         LOADR_qimm   ; inline operand = 3
  $8F7B  BD                         LSHIFT
  $8F7C  D6 F8 8F                   JUMP_abs               $8FF8
 >$8F7F  0E                         LOADL_quick   ; inline operand = 14
  $8F80  1B                         LOADR_quick   ; inline operand = 11
  $8F81  BB                         ADD
  $8F82  D3                         BYTE_DEREF
  $8F83  8C FF 00                   LOADR_imm2             $00FF
  $8F86  C1                         CMPNE
  $8F87  D8 07 90                   JUMPF_abs              $9007
  $8F8A  40                         LOADL_qimm   ; inline operand = 0
  $8F8B  D6 A6 8F                   JUMP_abs               $8FA6
 >$8F8E  0E                         LOADL_quick   ; inline operand = 14
  $8F8F  1B                         LOADR_quick   ; inline operand = 11
  $8F90  BB                         ADD
  $8F91  D3                         BYTE_DEREF
  $8F92  B3                         PUSHL
  $8F93  0D                         LOADL_quick   ; inline operand = 13
  $8F94  1A                         LOADR_quick   ; inline operand = 10
  $8F95  BB                         ADD
  $8F96  D3                         BYTE_DEREF
  $8F97  B4                         POPR
  $8F98  C0                         CMPEQ
  $8F99  D8 A4 8F                   JUMPF_abs              $8FA4
  $8F9C  61                         PUSH_qimm   ; inline operand = 1
  $8F9D  8E 83 9A                   PUSH_imm2              $9A83
  $8FA0  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
 >$8FA4  0A                         LOADL_quick   ; inline operand = 10
  $8FA5  D0                         INC
 >$8FA6  2A                         STORE_quick   ; inline operand = 10
  $8FA7  0D                         LOADL_quick   ; inline operand = 13
  $8FA8  1A                         LOADR_quick   ; inline operand = 10
  $8FA9  BB                         ADD
  $8FAA  D3                         BYTE_DEREF
  $8FAB  D8 B4 8F                   JUMPF_abs              $8FB4
  $8FAE  0A                         LOADL_quick   ; inline operand = 10
  $8FAF  55                         LOADR_qimm   ; inline operand = 5
  $8FB0  C6                         UCMPLT
  $8FB1  D7 8E 8F                   JUMPT_abs              $8F8E
 >$8FB4  09                         LOADL_quick   ; inline operand = 9
  $8FB5  D2                         LSHIFT1
  $8FB6  74                         ADD_qimm   ; inline operand = 4
  $8FB7  B3                         PUSHL
  $8FB8  8D 11                      BYTE_PUSH_imm1         +17
  $8FBA  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8FBE  0E                         LOADL_quick   ; inline operand = 14
  $8FBF  1B                         LOADR_quick   ; inline operand = 11
  $8FC0  BB                         ADD
  $8FC1  D3                         BYTE_DEREF
  $8FC2  D2                         LSHIFT1
  $8FC3  8C 49 BB                   LOADR_imm2             $BB49
  $8FC6  BB                         ADD
  $8FC7  B3                         PUSHL
  $8FC8  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $8FCC  B3                         PUSHL
  $8FCD  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8FD1  09                         LOADL_quick   ; inline operand = 9
  $8FD2  D2                         LSHIFT1
  $8FD3  73                         ADD_qimm   ; inline operand = 3
  $8FD4  B3                         PUSHL
  $8FD5  8D 1A                      BYTE_PUSH_imm1         +26
  $8FD7  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8FDB  0E                         LOADL_quick   ; inline operand = 14
  $8FDC  1B                         LOADR_quick   ; inline operand = 11
  $8FDD  BB                         ADD
  $8FDE  D3                         BYTE_DEREF
  $8FDF  D2                         LSHIFT1
  $8FE0  1F                         LOADR_quick   ; inline operand = 15
  $8FE1  BB                         ADD
  $8FE2  B0                         DEREF
  $8FE3  B3                         PUSHL
  $8FE4  8E 87 9A                   PUSH_imm2              $9A87
  $8FE7  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8FEB  09                         LOADL_quick   ; inline operand = 9
  $8FEC  D0                         INC
  $8FED  29                         STORE_quick   ; inline operand = 9
  $8FEE  61                         PUSH_qimm   ; inline operand = 1
  $8FEF  8E 8B 9A                   PUSH_imm2              $9A8B
  $8FF2  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8FF6  0B                         LOADL_quick   ; inline operand = 11
  $8FF7  D0                         INC
 >$8FF8  2B                         STORE_quick   ; inline operand = 11
  $8FF9  09                         LOADL_quick   ; inline operand = 9
  $8FFA  58                         LOADR_qimm   ; inline operand = 8
  $8FFB  C6                         UCMPLT
  $8FFC  D8 06 90                   JUMPF_abs              $9006
  $8FFF  0B                         LOADL_quick   ; inline operand = 11
  $9000  8B 1D                      BYTE_LOADR_imm1        +29
  $9002  C6                         UCMPLT
  $9003  D7 7F 8F                   JUMPT_abs              $8F7F
 >$9006  CF                         RETURN
 >$9007  CF                         RETURN

; ============================================================
; sub $9008   (frame_off=-2, body @ $900D)   [PRG $01008]
; ============================================================
  $900D  40                         LOADL_qimm   ; inline operand = 0
  $900E  2B                         STORE_quick   ; inline operand = 11
 >$900F  0E                         LOADL_quick   ; inline operand = 14
  $9010  1C                         LOADR_quick   ; inline operand = 12
  $9011  BB                         ADD
  $9012  D3                         BYTE_DEREF
  $9013  B3                         PUSHL
  $9014  0D                         LOADL_quick   ; inline operand = 13
  $9015  1B                         LOADR_quick   ; inline operand = 11
  $9016  BB                         ADD
  $9017  D3                         BYTE_DEREF
  $9018  B4                         POPR
  $9019  C0                         CMPEQ
  $901A  D8 37 90                   JUMPF_abs              $9037
  $901D  0B                         LOADL_quick   ; inline operand = 11
  $901E  D2                         LSHIFT1
  $901F  73                         ADD_qimm   ; inline operand = 3
  $9020  B3                         PUSHL
  $9021  8D 1A                      BYTE_PUSH_imm1         +26
  $9023  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $9027  0E                         LOADL_quick   ; inline operand = 14
  $9028  1C                         LOADR_quick   ; inline operand = 12
  $9029  BB                         ADD
  $902A  D3                         BYTE_DEREF
  $902B  D2                         LSHIFT1
  $902C  1F                         LOADR_quick   ; inline operand = 15
  $902D  BB                         ADD
  $902E  B0                         DEREF
  $902F  B3                         PUSHL
  $9030  8E 8F 9A                   PUSH_imm2              $9A8F
  $9033  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
 >$9037  0B                         LOADL_quick   ; inline operand = 11
  $9038  D0                         INC
  $9039  2B                         STORE_quick   ; inline operand = 11
  $903A  0B                         LOADL_quick   ; inline operand = 11
  $903B  58                         LOADR_qimm   ; inline operand = 8
  $903C  C6                         UCMPLT
  $903D  D7 0F 90                   JUMPT_abs              $900F
  $9040  CF                         RETURN

; ============================================================
; sub $9041   (frame_off=-101, body @ $9046)   [PRG $01041]
; ============================================================
  $9046  42                         LOADL_qimm   ; inline operand = 2
  $9047  2B                         STORE_quick   ; inline operand = 11
  $9048  44                         LOADL_qimm   ; inline operand = 4
  $9049  2A                         STORE_quick   ; inline operand = 10
  $904A  48                         LOADL_qimm   ; inline operand = 8
  $904B  29                         STORE_quick   ; inline operand = 9
  $904C  40                         LOADL_qimm   ; inline operand = 0
  $904D  24                         STORE_quick   ; inline operand = 4
  $904E  85 9D                      STORE_near             $9D
  $9050  41                         LOADL_qimm   ; inline operand = 1
  $9051  26                         STORE_quick   ; inline operand = 6
  $9052  40                         LOADL_qimm   ; inline operand = 0
  $9053  20                         STORE_quick   ; inline operand = 0
  $9054  63                         PUSH_qimm   ; inline operand = 3
  $9055  61                         PUSH_qimm   ; inline operand = 1
  $9056  E9 0C 8B 04                CALL_abs_imm1          $8B0C {bytecode}, $04
  $905A  3F                         PUSH_quick   ; inline operand = 15
  $905B  DE C7 FF                   LEAL_far               $FFC7
  $905E  B3                         PUSHL
  $905F  3E                         PUSH_quick   ; inline operand = 14
  $9060  E9 07 8E 06                CALL_abs_imm1          $8E07 {bytecode}, $06
  $9064  22                         STORE_quick   ; inline operand = 2
  $9065  3F                         PUSH_quick   ; inline operand = 15
  $9066  DE AA FF                   LEAL_far               $FFAA
  $9069  B3                         PUSHL
  $906A  3E                         PUSH_quick   ; inline operand = 14
  $906B  E9 7B 8E 06                CALL_abs_imm1          $8E7B {bytecode}, $06
  $906F  21                         STORE_quick   ; inline operand = 1
  $9070  3F                         PUSH_quick   ; inline operand = 15
  $9071  DE C7 FF                   LEAL_far               $FFC7
  $9074  B3                         PUSHL
  $9075  E9 F2 8E 04                CALL_abs_imm1          $8EF2 {bytecode}, $04
  $9079  8A E1 00                   LOADL_imm2             $00E1
  $907C  A2 A2 FF                   BYTE_STORE_far         $FFA2
  $907F  40                         LOADL_qimm   ; inline operand = 0
  $9080  A2 A3 FF                   BYTE_STORE_far         $FFA3
 >$9083  60                         PUSH_qimm   ; inline operand = 0
  $9084  E9 A9 C4 02                CALL_abs_imm1          $C4A9 {native}, $02
  $9088  23                         STORE_quick   ; inline operand = 3
  $9089  03                         LOADL_quick   ; inline operand = 3
  $908A  52                         LOADR_qimm   ; inline operand = 2
  $908B  C1                         CMPNE
  $908C  D8 76 97                   JUMPF_abs              $9776
  $908F  87 13                      PUSH_near              $13
  $9091  E9 E1 8A 02                CALL_abs_imm1          $8AE1 {bytecode}, $02
  $9095  85 9F                      STORE_near             $9F
  $9097  48                         LOADL_qimm   ; inline operand = 8
  $9098  29                         STORE_quick   ; inline operand = 9
  $9099  81 9D                      LOADL_near             $9D
  $909B  D2                         LSHIFT1
  $909C  1A                         LOADR_quick   ; inline operand = 10
  $909D  BB                         ADD
  $909E  53                         LOADR_qimm   ; inline operand = 3
  $909F  BD                         LSHIFT
  $90A0  D1                         DEC
  $90A1  A2 A1 FF                   BYTE_STORE_far         $FFA1
  $90A4  0B                         LOADL_quick   ; inline operand = 11
  $90A5  53                         LOADR_qimm   ; inline operand = 3
  $90A6  BD                         LSHIFT
  $90A7  A2 A4 FF                   BYTE_STORE_far         $FFA4
  $90AA  61                         PUSH_qimm   ; inline operand = 1
  $90AB  60                         PUSH_qimm   ; inline operand = 0
  $90AC  DE A1 FF                   LEAL_far               $FFA1
  $90AF  B3                         PUSHL
  $90B0  6D                         PUSH_qimm   ; inline operand = 13
  $90B1  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $90B5  03                         LOADL_quick   ; inline operand = 3
  $90B6  D9 06 00 01 00 22 94 08 00 12 91 10 ... SWITCH_noncontig       count=6   ; .table 6 (key,target) + default (noncontiguous); SWITCH 1=>$9422 8=>$9112 16=>$90D3 32=>$90F3 64=>$9308 128=>$9124 default=>$9112
 >$90D3  81 9D                      LOADL_near             $9D
  $90D5  D1                         DEC
  $90D6  85 9D                      STORE_near             $9D
  $90D8  50                         LOADR_qimm   ; inline operand = 0
  $90D9  C2                         SCMPLT
  $90DA  D8 12 91                   JUMPF_abs              $9112
  $90DD  0C                         LOADL_quick   ; inline operand = 12
  $90DE  85 9D                      STORE_near             $9D
  $90E0  01                         LOADL_quick   ; inline operand = 1
  $90E1  8C FF 00                   LOADR_imm2             $00FF
  $90E4  C1                         CMPNE
  $90E5  D8 12 91                   JUMPF_abs              $9112
  $90E8  0C                         LOADL_quick   ; inline operand = 12
  $90E9  57                         LOADR_qimm   ; inline operand = 7
  $90EA  C6                         UCMPLT
  $90EB  D8 12 91                   JUMPF_abs              $9112
  $90EE  0C                         LOADL_quick   ; inline operand = 12
  $90EF  D0                         INC
  $90F0  D6 10 91                   JUMP_abs               $9110
 >$90F3  81 9D                      LOADL_near             $9D
  $90F5  57                         LOADR_qimm   ; inline operand = 7
  $90F6  C5                         SCMPGE
  $90F7  D7 0F 91                   JUMPT_abs              $910F
  $90FA  01                         LOADL_quick   ; inline operand = 1
  $90FB  8C FF 00                   LOADR_imm2             $00FF
  $90FE  C1                         CMPNE
  $90FF  D8 1B 91                   JUMPF_abs              $911B
  $9102  0C                         LOADL_quick   ; inline operand = 12
  $9103  D0                         INC
  $9104  B3                         PUSHL
  $9105  81 9D                      LOADL_near             $9D
  $9107  D0                         INC
  $9108  85 9D                      STORE_near             $9D
  $910A  B4                         POPR
 >$910B  C8                         UCMPGT
  $910C  D8 12 91                   JUMPF_abs              $9112
 >$910F  40                         LOADL_qimm   ; inline operand = 0
 >$9110  85 9D                      STORE_near             $9D
 >$9112  39                         PUSH_quick   ; inline operand = 9
  $9113  33                         PUSH_quick   ; inline operand = 3
  $9114  E9 4D CE 04                CALL_abs_imm1          $CE4D {native}, $04
  $9118  D6 83 90                   JUMP_abs               $9083
 >$911B  81 9D                      LOADL_near             $9D
  $911D  D0                         INC
  $911E  85 9D                      STORE_near             $9D
  $9120  1C                         LOADR_quick   ; inline operand = 12
  $9121  D6 0B 91                   JUMP_abs               $910B
 >$9124  81 9D                      LOADL_near             $9D
  $9126  1C                         LOADR_quick   ; inline operand = 12
  $9127  C8                         UCMPGT
  $9128  D7 12 91                   JUMPT_abs              $9112
 >$912B  81 9D                      LOADL_near             $9D
  $912D  D2                         LSHIFT1
  $912E  83 13                      LOADR_near             $13
  $9130  BB                         ADD
  $9131  B0                         DEREF
  $9132  50                         LOADR_qimm   ; inline operand = 0
  $9133  C4                         SCMPGT
  $9134  D8 32 92                   JUMPF_abs              $9232
  $9137  09                         LOADL_quick   ; inline operand = 9
  $9138  51                         LOADR_qimm   ; inline operand = 1
  $9139  C0                         CMPEQ
  $913A  D8 9A 91                   JUMPF_abs              $919A
  $913D  81 9D                      LOADL_near             $9D
  $913F  D2                         LSHIFT1
  $9140  83 13                      LOADR_near             $13
  $9142  BB                         ADD
  $9143  B0                         DEREF
  $9144  5A                         LOADR_qimm   ; inline operand = 10
  $9145  C4                         SCMPGT
  $9146  D8 6D 91                   JUMPF_abs              $916D
  $9149  6A                         PUSH_qimm   ; inline operand = 10
  $914A  0E                         LOADL_quick   ; inline operand = 14
  $914B  83 9D                      LOADR_near             $9D
  $914D  BB                         ADD
  $914E  D3                         BYTE_DEREF
  $914F  D2                         LSHIFT1
  $9150  1F                         LOADR_quick   ; inline operand = 15
  $9151  BB                         ADD
  $9152  B4                         POPR
  $9153  B3                         PUSHL
  $9154  B0                         DEREF
  $9155  BB                         ADD
  $9156  B1                         POPSTORE
  $9157  6A                         PUSH_qimm   ; inline operand = 10
  $9158  81 9D                      LOADL_near             $9D
  $915A  D2                         LSHIFT1
  $915B  83 13                      LOADR_near             $13
  $915D  BB                         ADD
  $915E  B4                         POPR
  $915F  B3                         PUSHL
  $9160  B0                         DEREF
  $9161  BC                         SUB
  $9162  B1                         POPSTORE
  $9163  4A                         LOADL_qimm   ; inline operand = 10
  $9164  CD                         SWAP
  $9165  81 9F                      LOADL_near             $9F
  $9167  BB                         ADD
  $9168  85 9F                      STORE_near             $9F
  $916A  D6 B5 91                   JUMP_abs               $91B5
 >$916D  81 9D                      LOADL_near             $9D
  $916F  D2                         LSHIFT1
  $9170  83 13                      LOADR_near             $13
  $9172  BB                         ADD
  $9173  B0                         DEREF
  $9174  B3                         PUSHL
  $9175  0E                         LOADL_quick   ; inline operand = 14
  $9176  83 9D                      LOADR_near             $9D
  $9178  BB                         ADD
  $9179  D3                         BYTE_DEREF
  $917A  D2                         LSHIFT1
  $917B  1F                         LOADR_quick   ; inline operand = 15
  $917C  BB                         ADD
  $917D  B4                         POPR
  $917E  B3                         PUSHL
  $917F  B0                         DEREF
  $9180  BB                         ADD
  $9181  B1                         POPSTORE
  $9182  81 9D                      LOADL_near             $9D
  $9184  D2                         LSHIFT1
  $9185  83 13                      LOADR_near             $13
  $9187  BB                         ADD
  $9188  B0                         DEREF
  $9189  CD                         SWAP
  $918A  81 9F                      LOADL_near             $9F
  $918C  BB                         ADD
  $918D  85 9F                      STORE_near             $9F
  $918F  81 9D                      LOADL_near             $9D
  $9191  D2                         LSHIFT1
  $9192  83 13                      LOADR_near             $13
  $9194  BB                         ADD
  $9195  B3                         PUSHL
  $9196  40                         LOADL_qimm   ; inline operand = 0
  $9197  D6 B4 91                   JUMP_abs               $91B4
 >$919A  81 9D                      LOADL_near             $9D
  $919C  D2                         LSHIFT1
  $919D  83 13                      LOADR_near             $13
  $919F  BB                         ADD
  $91A0  B3                         PUSHL
  $91A1  B0                         DEREF
  $91A2  D1                         DEC
  $91A3  B1                         POPSTORE
  $91A4  81 9F                      LOADL_near             $9F
  $91A6  D0                         INC
  $91A7  85 9F                      STORE_near             $9F
  $91A9  0E                         LOADL_quick   ; inline operand = 14
  $91AA  83 9D                      LOADR_near             $9D
  $91AC  BB                         ADD
  $91AD  D3                         BYTE_DEREF
  $91AE  D2                         LSHIFT1
  $91AF  1F                         LOADR_quick   ; inline operand = 15
  $91B0  BB                         ADD
  $91B1  B3                         PUSHL
  $91B2  B0                         DEREF
  $91B3  D0                         INC
 >$91B4  B1                         POPSTORE
 >$91B5  40                         LOADL_qimm   ; inline operand = 0
  $91B6  D6 D3 91                   JUMP_abs               $91D3
 >$91B9  DE C7 FF                   LEAL_far               $FFC7
  $91BC  B3                         PUSHL
  $91BD  08                         LOADL_quick   ; inline operand = 8
  $91BE  B4                         POPR
  $91BF  BB                         ADD
  $91C0  D3                         BYTE_DEREF
  $91C1  B3                         PUSHL
  $91C2  0E                         LOADL_quick   ; inline operand = 14
  $91C3  83 9D                      LOADR_near             $9D
  $91C5  BB                         ADD
  $91C6  D3                         BYTE_DEREF
  $91C7  B4                         POPR
  $91C8  C0                         CMPEQ
  $91C9  D8 D1 91                   JUMPF_abs              $91D1
  $91CC  40                         LOADL_qimm   ; inline operand = 0
  $91CD  26                         STORE_quick   ; inline operand = 6
  $91CE  D6 DD 91                   JUMP_abs               $91DD
 >$91D1  08                         LOADL_quick   ; inline operand = 8
  $91D2  D0                         INC
 >$91D3  28                         STORE_quick   ; inline operand = 8
  $91D4  02                         LOADL_quick   ; inline operand = 2
  $91D5  D0                         INC
  $91D6  B3                         PUSHL
  $91D7  08                         LOADL_quick   ; inline operand = 8
  $91D8  B4                         POPR
  $91D9  C6                         UCMPLT
  $91DA  D7 B9 91                   JUMPT_abs              $91B9
 >$91DD  06                         LOADL_quick   ; inline operand = 6
  $91DE  D8 30 92                   JUMPF_abs              $9230
  $91E1  02                         LOADL_quick   ; inline operand = 2
  $91E2  D0                         INC
  $91E3  D2                         LSHIFT1
  $91E4  74                         ADD_qimm   ; inline operand = 4
  $91E5  B3                         PUSHL
  $91E6  8D 11                      BYTE_PUSH_imm1         +17
  $91E8  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $91EC  0E                         LOADL_quick   ; inline operand = 14
  $91ED  83 9D                      LOADR_near             $9D
  $91EF  BB                         ADD
  $91F0  D3                         BYTE_DEREF
  $91F1  D2                         LSHIFT1
  $91F2  8C 49 BB                   LOADR_imm2             $BB49
  $91F5  BB                         ADD
  $91F6  B3                         PUSHL
  $91F7  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $91FB  B3                         PUSHL
  $91FC  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $9200  02                         LOADL_quick   ; inline operand = 2
  $9201  D0                         INC
  $9202  D2                         LSHIFT1
  $9203  73                         ADD_qimm   ; inline operand = 3
  $9204  B3                         PUSHL
  $9205  8D 1A                      BYTE_PUSH_imm1         +26
  $9207  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $920B  0E                         LOADL_quick   ; inline operand = 14
  $920C  83 9D                      LOADR_near             $9D
  $920E  BB                         ADD
  $920F  D3                         BYTE_DEREF
  $9210  D2                         LSHIFT1
  $9211  1F                         LOADR_quick   ; inline operand = 15
  $9212  BB                         ADD
  $9213  B0                         DEREF
  $9214  B3                         PUSHL
  $9215  8E 93 9A                   PUSH_imm2              $9A93
  $9218  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $921C  DE C8 FF                   LEAL_far               $FFC8
  $921F  B3                         PUSHL
  $9220  02                         LOADL_quick   ; inline operand = 2
  $9221  B4                         POPR
  $9222  BB                         ADD
  $9223  B3                         PUSHL
  $9224  0E                         LOADL_quick   ; inline operand = 14
  $9225  83 9D                      LOADR_near             $9D
  $9227  BB                         ADD
  $9228  D3                         BYTE_DEREF
  $9229  D4                         BYTE_POPSTORE
  $922A  02                         LOADL_quick   ; inline operand = 2
  $922B  D0                         INC
  $922C  22                         STORE_quick   ; inline operand = 2
  $922D  D6 32 92                   JUMP_abs               $9232
 >$9230  41                         LOADL_qimm   ; inline operand = 1
  $9231  26                         STORE_quick   ; inline operand = 6
 >$9232  3F                         PUSH_quick   ; inline operand = 15
  $9233  3E                         PUSH_quick   ; inline operand = 14
  $9234  DE C7 FF                   LEAL_far               $FFC7
  $9237  B3                         PUSHL
  $9238  87 9D                      PUSH_near              $9D
  $923A  E9 08 90 08                CALL_abs_imm1          $9008 {bytecode}, $08
  $923E  81 9D                      LOADL_near             $9D
  $9240  D2                         LSHIFT1
  $9241  1A                         LOADR_quick   ; inline operand = 10
  $9242  BB                         ADD
  $9243  D1                         DEC
  $9244  B3                         PUSHL
  $9245  6C                         PUSH_qimm   ; inline operand = 12
  $9246  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $924A  81 9D                      LOADL_near             $9D
  $924C  D2                         LSHIFT1
  $924D  83 13                      LOADR_near             $13
  $924F  BB                         ADD
  $9250  B0                         DEREF
  $9251  B3                         PUSHL
  $9252  8E 97 9A                   PUSH_imm2              $9A97
  $9255  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $9259  8D 19                      BYTE_PUSH_imm1         +25
  $925B  68                         PUSH_qimm   ; inline operand = 8
  $925C  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $9260  87 9F                      PUSH_near              $9F
  $9262  8E 9B 9A                   PUSH_imm2              $9A9B
  $9265  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $9269  41                         LOADL_qimm   ; inline operand = 1
  $926A  29                         STORE_quick   ; inline operand = 9
  $926B  81 9D                      LOADL_near             $9D
  $926D  52                         LOADR_qimm   ; inline operand = 2
  $926E  C4                         SCMPGT
  $926F  D8 F5 92                   JUMPF_abs              $92F5
  $9272  81 9D                      LOADL_near             $9D
  $9274  D2                         LSHIFT1
  $9275  83 13                      LOADR_near             $13
  $9277  BB                         ADD
  $9278  B0                         DEREF
  $9279  D7 F5 92                   JUMPT_abs              $92F5
  $927C  AC 01 B8                   CALL_abs               $B801 (draw_box_frame) {native}
  $927F  61                         PUSH_qimm   ; inline operand = 1
  $9280  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $9284  61                         PUSH_qimm   ; inline operand = 1
  $9285  8E 9F 9A                   PUSH_imm2              $9A9F
  $9288  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $928C  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $928F  AC 01 B8                   CALL_abs               $B801 (draw_box_frame) {native}
  $9292  0E                         LOADL_quick   ; inline operand = 14
  $9293  83 9D                      LOADR_near             $9D
  $9295  BB                         ADD
  $9296  B3                         PUSHL
  $9297  8A FF 00                   LOADL_imm2             $00FF
  $929A  D4                         BYTE_POPSTORE
  $929B  61                         PUSH_qimm   ; inline operand = 1
  $929C  60                         PUSH_qimm   ; inline operand = 0
  $929D  6C                         PUSH_qimm   ; inline operand = 12
  $929E  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $92A2  81 9D                      LOADL_near             $9D
  $92A4  1C                         LOADR_quick   ; inline operand = 12
  $92A5  C0                         CMPEQ
  $92A6  D8 AE 92                   JUMPF_abs              $92AE
  $92A9  81 9D                      LOADL_near             $9D
  $92AB  D1                         DEC
  $92AC  85 9D                      STORE_near             $9D
 >$92AE  3F                         PUSH_quick   ; inline operand = 15
  $92AF  DE C7 FF                   LEAL_far               $FFC7
  $92B2  B3                         PUSHL
  $92B3  3E                         PUSH_quick   ; inline operand = 14
  $92B4  E9 07 8E 06                CALL_abs_imm1          $8E07 {bytecode}, $06
  $92B8  22                         STORE_quick   ; inline operand = 2
  $92B9  3F                         PUSH_quick   ; inline operand = 15
  $92BA  DE AA FF                   LEAL_far               $FFAA
  $92BD  B3                         PUSHL
  $92BE  3E                         PUSH_quick   ; inline operand = 14
  $92BF  E9 7B 8E 06                CALL_abs_imm1          $8E7B {bytecode}, $06
  $92C3  21                         STORE_quick   ; inline operand = 1
  $92C4  69                         PUSH_qimm   ; inline operand = 9
  $92C5  61                         PUSH_qimm   ; inline operand = 1
  $92C6  E9 0C 8B 04                CALL_abs_imm1          $8B0C {bytecode}, $04
  $92CA  3F                         PUSH_quick   ; inline operand = 15
  $92CB  DE C7 FF                   LEAL_far               $FFC7
  $92CE  B3                         PUSHL
  $92CF  E9 F2 8E 04                CALL_abs_imm1          $8EF2 {bytecode}, $04
  $92D3  87 13                      PUSH_near              $13
  $92D5  3F                         PUSH_quick   ; inline operand = 15
  $92D6  3E                         PUSH_quick   ; inline operand = 14
  $92D7  3D                         PUSH_quick   ; inline operand = 13
  $92D8  E9 8C 8D 08                CALL_abs_imm1          $8D8C {bytecode}, $08
  $92DC  87 13                      PUSH_near              $13
  $92DE  3F                         PUSH_quick   ; inline operand = 15
  $92DF  3E                         PUSH_quick   ; inline operand = 14
  $92E0  3D                         PUSH_quick   ; inline operand = 13
  $92E1  E9 DD 8B 08                CALL_abs_imm1          $8BDD {bytecode}, $08
  $92E5  69                         PUSH_qimm   ; inline operand = 9
  $92E6  60                         PUSH_qimm   ; inline operand = 0
  $92E7  E9 0C 8B 04                CALL_abs_imm1          $8B0C {bytecode}, $04
  $92EB  87 13                      PUSH_near              $13
  $92ED  3F                         PUSH_quick   ; inline operand = 15
  $92EE  3E                         PUSH_quick   ; inline operand = 14
  $92EF  3D                         PUSH_quick   ; inline operand = 13
  $92F0  E9 9B 8C 08                CALL_abs_imm1          $8C9B {bytecode}, $08
  $92F4  2C                         STORE_quick   ; inline operand = 12
 >$92F5  60                         PUSH_qimm   ; inline operand = 0
  $92F6  8D 10                      BYTE_PUSH_imm1         +16
  $92F8  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $92FC  8C 80 00                   LOADR_imm2             $0080
  $92FF  DA                         AND
  $9300  D7 2B 91                   JUMPT_abs              $912B
 >$9303  48                         LOADL_qimm   ; inline operand = 8
  $9304  29                         STORE_quick   ; inline operand = 9
  $9305  D6 12 91                   JUMP_abs               $9112
 >$9308  81 9D                      LOADL_near             $9D
  $930A  1C                         LOADR_quick   ; inline operand = 12
  $930B  C8                         UCMPGT
  $930C  D7 12 91                   JUMPT_abs              $9112
 >$930F  0E                         LOADL_quick   ; inline operand = 14
  $9310  83 9D                      LOADR_near             $9D
  $9312  BB                         ADD
  $9313  D3                         BYTE_DEREF
  $9314  D2                         LSHIFT1
  $9315  1F                         LOADR_quick   ; inline operand = 15
  $9316  BB                         ADD
  $9317  B0                         DEREF
  $9318  D8 D9 93                   JUMPF_abs              $93D9
  $931B  81 9F                      LOADL_near             $9F
  $931D  D8 D9 93                   JUMPF_abs              $93D9
  $9320  09                         LOADL_quick   ; inline operand = 9
  $9321  51                         LOADR_qimm   ; inline operand = 1
  $9322  C0                         CMPEQ
  $9323  D8 BE 93                   JUMPF_abs              $93BE
  $9326  0E                         LOADL_quick   ; inline operand = 14
  $9327  83 9D                      LOADR_near             $9D
  $9329  BB                         ADD
  $932A  D3                         BYTE_DEREF
  $932B  D2                         LSHIFT1
  $932C  1F                         LOADR_quick   ; inline operand = 15
  $932D  BB                         ADD
  $932E  B0                         DEREF
  $932F  5A                         LOADR_qimm   ; inline operand = 10
  $9330  C4                         SCMPGT
  $9331  D8 5D 93                   JUMPF_abs              $935D
  $9334  81 9F                      LOADL_near             $9F
  $9336  5A                         LOADR_qimm   ; inline operand = 10
  $9337  C4                         SCMPGT
  $9338  D8 5D 93                   JUMPF_abs              $935D
  $933B  6A                         PUSH_qimm   ; inline operand = 10
  $933C  0E                         LOADL_quick   ; inline operand = 14
  $933D  83 9D                      LOADR_near             $9D
  $933F  BB                         ADD
  $9340  D3                         BYTE_DEREF
  $9341  D2                         LSHIFT1
  $9342  1F                         LOADR_quick   ; inline operand = 15
  $9343  BB                         ADD
  $9344  B4                         POPR
  $9345  B3                         PUSHL
  $9346  B0                         DEREF
  $9347  BC                         SUB
  $9348  B1                         POPSTORE
  $9349  6A                         PUSH_qimm   ; inline operand = 10
  $934A  81 9D                      LOADL_near             $9D
  $934C  D2                         LSHIFT1
  $934D  83 13                      LOADR_near             $13
  $934F  BB                         ADD
  $9350  B4                         POPR
  $9351  B3                         PUSHL
  $9352  B0                         DEREF
  $9353  BB                         ADD
  $9354  B1                         POPSTORE
  $9355  4A                         LOADL_qimm   ; inline operand = 10
  $9356  CD                         SWAP
  $9357  81 9F                      LOADL_near             $9F
  $9359  BC                         SUB
  $935A  D6 D7 93                   JUMP_abs               $93D7
 >$935D  0E                         LOADL_quick   ; inline operand = 14
  $935E  83 9D                      LOADR_near             $9D
  $9360  BB                         ADD
  $9361  D3                         BYTE_DEREF
  $9362  D2                         LSHIFT1
  $9363  1F                         LOADR_quick   ; inline operand = 15
  $9364  BB                         ADD
  $9365  B0                         DEREF
  $9366  83 9F                      LOADR_near             $9F
  $9368  C4                         SCMPGT
  $9369  D8 8C 93                   JUMPF_abs              $938C
  $936C  87 9F                      PUSH_near              $9F
  $936E  81 9D                      LOADL_near             $9D
  $9370  D2                         LSHIFT1
  $9371  83 13                      LOADR_near             $13
  $9373  BB                         ADD
  $9374  B4                         POPR
  $9375  B3                         PUSHL
  $9376  B0                         DEREF
  $9377  BB                         ADD
  $9378  B1                         POPSTORE
  $9379  87 9F                      PUSH_near              $9F
  $937B  0E                         LOADL_quick   ; inline operand = 14
  $937C  83 9D                      LOADR_near             $9D
  $937E  BB                         ADD
  $937F  D3                         BYTE_DEREF
  $9380  D2                         LSHIFT1
  $9381  1F                         LOADR_quick   ; inline operand = 15
  $9382  BB                         ADD
  $9383  B4                         POPR
  $9384  B3                         PUSHL
  $9385  B0                         DEREF
  $9386  BC                         SUB
  $9387  B1                         POPSTORE
  $9388  40                         LOADL_qimm   ; inline operand = 0
  $9389  D6 D7 93                   JUMP_abs               $93D7
 >$938C  0E                         LOADL_quick   ; inline operand = 14
  $938D  83 9D                      LOADR_near             $9D
  $938F  BB                         ADD
  $9390  D3                         BYTE_DEREF
  $9391  D2                         LSHIFT1
  $9392  1F                         LOADR_quick   ; inline operand = 15
  $9393  BB                         ADD
  $9394  B0                         DEREF
  $9395  B3                         PUSHL
  $9396  81 9D                      LOADL_near             $9D
  $9398  D2                         LSHIFT1
  $9399  83 13                      LOADR_near             $13
  $939B  BB                         ADD
  $939C  B4                         POPR
  $939D  B3                         PUSHL
  $939E  B0                         DEREF
  $939F  BB                         ADD
  $93A0  B1                         POPSTORE
  $93A1  0E                         LOADL_quick   ; inline operand = 14
  $93A2  83 9D                      LOADR_near             $9D
  $93A4  BB                         ADD
  $93A5  D3                         BYTE_DEREF
  $93A6  D2                         LSHIFT1
  $93A7  1F                         LOADR_quick   ; inline operand = 15
  $93A8  BB                         ADD
  $93A9  B0                         DEREF
  $93AA  CD                         SWAP
  $93AB  81 9F                      LOADL_near             $9F
  $93AD  BC                         SUB
  $93AE  85 9F                      STORE_near             $9F
  $93B0  0E                         LOADL_quick   ; inline operand = 14
  $93B1  83 9D                      LOADR_near             $9D
  $93B3  BB                         ADD
  $93B4  D3                         BYTE_DEREF
  $93B5  D2                         LSHIFT1
  $93B6  1F                         LOADR_quick   ; inline operand = 15
  $93B7  BB                         ADD
  $93B8  B3                         PUSHL
  $93B9  40                         LOADL_qimm   ; inline operand = 0
  $93BA  B1                         POPSTORE
  $93BB  D6 D9 93                   JUMP_abs               $93D9
 >$93BE  0E                         LOADL_quick   ; inline operand = 14
  $93BF  83 9D                      LOADR_near             $9D
  $93C1  BB                         ADD
  $93C2  D3                         BYTE_DEREF
  $93C3  D2                         LSHIFT1
  $93C4  1F                         LOADR_quick   ; inline operand = 15
  $93C5  BB                         ADD
  $93C6  B3                         PUSHL
  $93C7  B0                         DEREF
  $93C8  D1                         DEC
  $93C9  B1                         POPSTORE
  $93CA  81 9D                      LOADL_near             $9D
  $93CC  D2                         LSHIFT1
  $93CD  83 13                      LOADR_near             $13
  $93CF  BB                         ADD
  $93D0  B3                         PUSHL
  $93D1  B0                         DEREF
  $93D2  D0                         INC
  $93D3  B1                         POPSTORE
  $93D4  81 9F                      LOADL_near             $9F
  $93D6  D1                         DEC
 >$93D7  85 9F                      STORE_near             $9F
 >$93D9  3F                         PUSH_quick   ; inline operand = 15
  $93DA  3E                         PUSH_quick   ; inline operand = 14
  $93DB  DE C7 FF                   LEAL_far               $FFC7
  $93DE  B3                         PUSHL
  $93DF  87 9D                      PUSH_near              $9D
  $93E1  E9 08 90 08                CALL_abs_imm1          $9008 {bytecode}, $08
  $93E5  81 9D                      LOADL_near             $9D
  $93E7  D2                         LSHIFT1
  $93E8  1A                         LOADR_quick   ; inline operand = 10
  $93E9  BB                         ADD
  $93EA  D1                         DEC
  $93EB  B3                         PUSHL
  $93EC  6C                         PUSH_qimm   ; inline operand = 12
  $93ED  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $93F1  81 9D                      LOADL_near             $9D
  $93F3  D2                         LSHIFT1
  $93F4  83 13                      LOADR_near             $13
  $93F6  BB                         ADD
  $93F7  B0                         DEREF
  $93F8  B3                         PUSHL
  $93F9  8E B5 9A                   PUSH_imm2              $9AB5
  $93FC  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $9400  8D 19                      BYTE_PUSH_imm1         +25
  $9402  68                         PUSH_qimm   ; inline operand = 8
  $9403  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $9407  87 9F                      PUSH_near              $9F
  $9409  8E B9 9A                   PUSH_imm2              $9AB9
  $940C  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $9410  41                         LOADL_qimm   ; inline operand = 1
  $9411  29                         STORE_quick   ; inline operand = 9
  $9412  60                         PUSH_qimm   ; inline operand = 0
  $9413  8D 10                      BYTE_PUSH_imm1         +16
  $9415  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $9419  8B 40                      BYTE_LOADR_imm1        +64
  $941B  DA                         AND
  $941C  D7 0F 93                   JUMPT_abs              $930F
  $941F  D6 03 93                   JUMP_abs               $9303
 >$9422  81 9D                      LOADL_near             $9D
  $9424  1C                         LOADR_quick   ; inline operand = 12
  $9425  C8                         UCMPGT
  $9426  D8 52 97                   JUMPF_abs              $9752
  $9429  01                         LOADL_quick   ; inline operand = 1
  $942A  8C FF 00                   LOADR_imm2             $00FF
  $942D  C1                         CMPNE
  $942E  D8 52 97                   JUMPF_abs              $9752
  $9431  87 13                      PUSH_near              $13
  $9433  E9 E1 8A 02                CALL_abs_imm1          $8AE1 {bytecode}, $02
  $9437  D7 54 94                   JUMPT_abs              $9454
  $943A  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $943D  61                         PUSH_qimm   ; inline operand = 1
  $943E  8E BD 9A                   PUSH_imm2              $9ABD
  $9441  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $9445  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $9448  AC 5B B8                   CALL_abs               $B85B {native}
 >$944B  87 13                      PUSH_near              $13
  $944D  E9 83 8C 02                CALL_abs_imm1          $8C83 {bytecode}, $02
  $9451  D6 12 91                   JUMP_abs               $9112
 >$9454  40                         LOADL_qimm   ; inline operand = 0
  $9455  28                         STORE_quick   ; inline operand = 8
 >$9456  DE A5 FF                   LEAL_far               $FFA5
  $9459  B3                         PUSHL
  $945A  08                         LOADL_quick   ; inline operand = 8
  $945B  B4                         POPR
  $945C  BB                         ADD
  $945D  B3                         PUSHL
  $945E  8A FF 00                   LOADL_imm2             $00FF
  $9461  D4                         BYTE_POPSTORE
  $9462  08                         LOADL_quick   ; inline operand = 8
  $9463  D0                         INC
  $9464  28                         STORE_quick   ; inline operand = 8
  $9465  08                         LOADL_quick   ; inline operand = 8
  $9466  55                         LOADR_qimm   ; inline operand = 5
  $9467  C6                         UCMPLT
  $9468  D7 56 94                   JUMPT_abs              $9456
  $946B  40                         LOADL_qimm   ; inline operand = 0
  $946C  25                         STORE_quick   ; inline operand = 5
  $946D  01                         LOADL_quick   ; inline operand = 1
  $946E  85 E4                      STORE_near             $E4
  $9470  AC 01 B8                   CALL_abs               $B801 (draw_box_frame) {native}
  $9473  61                         PUSH_qimm   ; inline operand = 1
  $9474  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $9478  8E D2 9A                   PUSH_imm2              $9AD2
  $947B  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $947F  AC 5B B8                   CALL_abs               $B85B {native}
  $9482  87 13                      PUSH_near              $13
  $9484  E9 83 8C 02                CALL_abs_imm1          $8C83 {bytecode}, $02
  $9488  40                         LOADL_qimm   ; inline operand = 0
  $9489  20                         STORE_quick   ; inline operand = 0
  $948A  40                         LOADL_qimm   ; inline operand = 0
  $948B  85 9B                      STORE_near             $9B
  $948D  3F                         PUSH_quick   ; inline operand = 15
  $948E  DE AA FF                   LEAL_far               $FFAA
  $9491  B3                         PUSHL
  $9492  DE A5 FF                   LEAL_far               $FFA5
  $9495  B3                         PUSHL
  $9496  30                         PUSH_quick   ; inline operand = 0
  $9497  E9 6C 8F 08                CALL_abs_imm1          $8F6C {bytecode}, $08
  $949B  01                         LOADL_quick   ; inline operand = 1
  $949C  53                         LOADR_qimm   ; inline operand = 3
  $949D  BE                         URSHIFT
  $949E  85 E6                      STORE_near             $E6
  $94A0  D6 16 97                   JUMP_abs               $9716
 >$94A3  39                         PUSH_quick   ; inline operand = 9
  $94A4  33                         PUSH_quick   ; inline operand = 3
  $94A5  E9 4D CE 04                CALL_abs_imm1          $CE4D {native}, $04
  $94A9  48                         LOADL_qimm   ; inline operand = 8
  $94AA  29                         STORE_quick   ; inline operand = 9
  $94AB  00                         LOADL_quick   ; inline operand = 0
  $94AC  53                         LOADR_qimm   ; inline operand = 3
  $94AD  BD                         LSHIFT
  $94AE  B3                         PUSHL
  $94AF  81 9B                      LOADL_near             $9B
  $94B1  B4                         POPR
  $94B2  BC                         SUB
  $94B3  D2                         LSHIFT1
  $94B4  1A                         LOADR_quick   ; inline operand = 10
  $94B5  BB                         ADD
  $94B6  53                         LOADR_qimm   ; inline operand = 3
  $94B7  BD                         LSHIFT
  $94B8  D1                         DEC
  $94B9  A2 A1 FF                   BYTE_STORE_far         $FFA1
  $94BC  8A 80 00                   LOADL_imm2             $0080
  $94BF  A2 A4 FF                   BYTE_STORE_far         $FFA4
  $94C2  61                         PUSH_qimm   ; inline operand = 1
  $94C3  60                         PUSH_qimm   ; inline operand = 0
  $94C4  DE A1 FF                   LEAL_far               $FFA1
  $94C7  B3                         PUSHL
  $94C8  6D                         PUSH_qimm   ; inline operand = 13
  $94C9  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $94CD  03                         LOADL_quick   ; inline operand = 3
  $94CE  D9 05 00 01 00 6F 95 10 00 E7 94 20 ... SWITCH_noncontig       count=5   ; .table 5 (key,target) + default (noncontiguous); SWITCH 1=>$956F 16=>$94E7 32=>$9508 64=>$9526 128=>$9545 default=>$9716
 >$94E7  81 9B                      LOADL_near             $9B
  $94E9  D1                         DEC
  $94EA  85 9B                      STORE_near             $9B
  $94EC  81 9B                      LOADL_near             $9B
  $94EE  D0                         INC
  $94EF  58                         LOADR_qimm   ; inline operand = 8
  $94F0  B9                         SMOD
  $94F1  D7 16 97                   JUMPT_abs              $9716
  $94F4  00                         LOADL_quick   ; inline operand = 0
  $94F5  53                         LOADR_qimm   ; inline operand = 3
  $94F6  BD                         LSHIFT
  $94F7  77                         ADD_qimm   ; inline operand = 7
  $94F8  B3                         PUSHL
  $94F9  01                         LOADL_quick   ; inline operand = 1
  $94FA  B4                         POPR
  $94FB  C8                         UCMPGT
  $94FC  D8 6B 95                   JUMPF_abs              $956B
  $94FF  00                         LOADL_quick   ; inline operand = 0
  $9500  53                         LOADR_qimm   ; inline operand = 3
  $9501  BD                         LSHIFT
  $9502  77                         ADD_qimm   ; inline operand = 7
 >$9503  85 9B                      STORE_near             $9B
  $9505  D6 16 97                   JUMP_abs               $9716
 >$9508  81 9B                      LOADL_near             $9B
  $950A  D0                         INC
  $950B  85 9B                      STORE_near             $9B
  $950D  00                         LOADL_quick   ; inline operand = 0
  $950E  53                         LOADR_qimm   ; inline operand = 3
  $950F  BD                         LSHIFT
  $9510  77                         ADD_qimm   ; inline operand = 7
  $9511  B3                         PUSHL
  $9512  81 9B                      LOADL_near             $9B
  $9514  B4                         POPR
  $9515  C8                         UCMPGT
  $9516  D7 20 95                   JUMPT_abs              $9520
  $9519  81 9B                      LOADL_near             $9B
  $951B  11                         LOADR_quick   ; inline operand = 1
  $951C  C8                         UCMPGT
  $951D  D8 16 97                   JUMPF_abs              $9716
 >$9520  00                         LOADL_quick   ; inline operand = 0
  $9521  53                         LOADR_qimm   ; inline operand = 3
  $9522  BD                         LSHIFT
  $9523  D6 03 95                   JUMP_abs               $9503
 >$9526  00                         LOADL_quick   ; inline operand = 0
  $9527  50                         LOADR_qimm   ; inline operand = 0
  $9528  C8                         UCMPGT
  $9529  D8 16 97                   JUMPF_abs              $9716
  $952C  00                         LOADL_quick   ; inline operand = 0
  $952D  D1                         DEC
  $952E  20                         STORE_quick   ; inline operand = 0
  $952F  3F                         PUSH_quick   ; inline operand = 15
  $9530  DE AA FF                   LEAL_far               $FFAA
  $9533  B3                         PUSHL
  $9534  DE A5 FF                   LEAL_far               $FFA5
  $9537  B3                         PUSHL
  $9538  30                         PUSH_quick   ; inline operand = 0
  $9539  E9 6C 8F 08                CALL_abs_imm1          $8F6C {bytecode}, $08
  $953D  48                         LOADL_qimm   ; inline operand = 8
  $953E  CD                         SWAP
  $953F  81 9B                      LOADL_near             $9B
  $9541  BC                         SUB
  $9542  D6 03 95                   JUMP_abs               $9503
 >$9545  81 E6                      LOADL_near             $E6
  $9547  10                         LOADR_quick   ; inline operand = 0
  $9548  C8                         UCMPGT
  $9549  D8 16 97                   JUMPF_abs              $9716
  $954C  00                         LOADL_quick   ; inline operand = 0
  $954D  D0                         INC
  $954E  20                         STORE_quick   ; inline operand = 0
  $954F  3F                         PUSH_quick   ; inline operand = 15
  $9550  DE AA FF                   LEAL_far               $FFAA
  $9553  B3                         PUSHL
  $9554  DE A5 FF                   LEAL_far               $FFA5
  $9557  B3                         PUSHL
  $9558  30                         PUSH_quick   ; inline operand = 0
  $9559  E9 6C 8F 08                CALL_abs_imm1          $8F6C {bytecode}, $08
  $955D  48                         LOADL_qimm   ; inline operand = 8
  $955E  CD                         SWAP
  $955F  81 9B                      LOADL_near             $9B
  $9561  BB                         ADD
  $9562  85 9B                      STORE_near             $9B
  $9564  81 9B                      LOADL_near             $9B
  $9566  11                         LOADR_quick   ; inline operand = 1
  $9567  C8                         UCMPGT
  $9568  D8 16 97                   JUMPF_abs              $9716
 >$956B  01                         LOADL_quick   ; inline operand = 1
  $956C  D6 03 95                   JUMP_abs               $9503
 >$956F  40                         LOADL_qimm   ; inline operand = 0
  $9570  D6 91 95                   JUMP_abs               $9591
 >$9573  DE AA FF                   LEAL_far               $FFAA
  $9576  B3                         PUSHL
  $9577  81 9B                      LOADL_near             $9B
  $9579  B4                         POPR
  $957A  BB                         ADD
  $957B  D3                         BYTE_DEREF
  $957C  B3                         PUSHL
  $957D  DE A5 FF                   LEAL_far               $FFA5
  $9580  B3                         PUSHL
  $9581  08                         LOADL_quick   ; inline operand = 8
  $9582  B4                         POPR
  $9583  BB                         ADD
  $9584  D3                         BYTE_DEREF
  $9585  B4                         POPR
  $9586  C0                         CMPEQ
  $9587  D8 8F 95                   JUMPF_abs              $958F
  $958A  41                         LOADL_qimm   ; inline operand = 1
  $958B  24                         STORE_quick   ; inline operand = 4
  $958C  D6 98 95                   JUMP_abs               $9598
 >$958F  08                         LOADL_quick   ; inline operand = 8
  $9590  D0                         INC
 >$9591  28                         STORE_quick   ; inline operand = 8
  $9592  08                         LOADL_quick   ; inline operand = 8
  $9593  15                         LOADR_quick   ; inline operand = 5
  $9594  C7                         UCMPLE
  $9595  D7 73 95                   JUMPT_abs              $9573
 >$9598  81 9F                      LOADL_near             $9F
  $959A  D7 B9 95                   JUMPT_abs              $95B9
  $959D  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $95A0  61                         PUSH_qimm   ; inline operand = 1
  $95A1  8E E2 9A                   PUSH_imm2              $9AE2
  $95A4  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $95A8  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $95AB  41                         LOADL_qimm   ; inline operand = 1
  $95AC  24                         STORE_quick   ; inline operand = 4
  $95AD  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $95B0  AC 5B B8                   CALL_abs               $B85B {native}
  $95B3  87 13                      PUSH_near              $13
  $95B5  E9 83 8C 02                CALL_abs_imm1          $8C83 {bytecode}, $02
 >$95B9  0C                         LOADL_quick   ; inline operand = 12
  $95BA  57                         LOADR_qimm   ; inline operand = 7
  $95BB  C6                         UCMPLT
  $95BC  D8 F4 96                   JUMPF_abs              $96F4
  $95BF  04                         LOADL_quick   ; inline operand = 4
  $95C0  D7 F4 96                   JUMPT_abs              $96F4
  $95C3  81 9F                      LOADL_near             $9F
  $95C5  D8 F4 96                   JUMPF_abs              $96F4
  $95C8  DE A5 FF                   LEAL_far               $FFA5
  $95CB  B3                         PUSHL
  $95CC  05                         LOADL_quick   ; inline operand = 5
  $95CD  B4                         POPR
  $95CE  BB                         ADD
  $95CF  B3                         PUSHL
  $95D0  DE AA FF                   LEAL_far               $FFAA
  $95D3  B3                         PUSHL
  $95D4  81 9B                      LOADL_near             $9B
  $95D6  B4                         POPR
  $95D7  BB                         ADD
  $95D8  D3                         BYTE_DEREF
  $95D9  D4                         BYTE_POPSTORE
  $95DA  05                         LOADL_quick   ; inline operand = 5
  $95DB  D0                         INC
  $95DC  25                         STORE_quick   ; inline operand = 5
  $95DD  61                         PUSH_qimm   ; inline operand = 1
  $95DE  8E F7 9A                   PUSH_imm2              $9AF7
  $95E1  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $95E5  00                         LOADL_quick   ; inline operand = 0
  $95E6  53                         LOADR_qimm   ; inline operand = 3
  $95E7  BD                         LSHIFT
  $95E8  B3                         PUSHL
  $95E9  81 9B                      LOADL_near             $9B
  $95EB  B4                         POPR
  $95EC  BC                         SUB
  $95ED  D2                         LSHIFT1
  $95EE  74                         ADD_qimm   ; inline operand = 4
  $95EF  B3                         PUSHL
  $95F0  8D 11                      BYTE_PUSH_imm1         +17
  $95F2  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $95F6  DE AA FF                   LEAL_far               $FFAA
  $95F9  B3                         PUSHL
  $95FA  81 9B                      LOADL_near             $9B
  $95FC  B4                         POPR
  $95FD  BB                         ADD
  $95FE  D3                         BYTE_DEREF
  $95FF  D2                         LSHIFT1
  $9600  8C 49 BB                   LOADR_imm2             $BB49
  $9603  BB                         ADD
  $9604  B3                         PUSHL
  $9605  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $9609  B3                         PUSHL
  $960A  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $960E  00                         LOADL_quick   ; inline operand = 0
  $960F  53                         LOADR_qimm   ; inline operand = 3
  $9610  BD                         LSHIFT
  $9611  B3                         PUSHL
  $9612  81 9B                      LOADL_near             $9B
  $9614  B4                         POPR
  $9615  BC                         SUB
  $9616  D2                         LSHIFT1
  $9617  73                         ADD_qimm   ; inline operand = 3
  $9618  B3                         PUSHL
  $9619  8D 1A                      BYTE_PUSH_imm1         +26
  $961B  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $961F  DE AA FF                   LEAL_far               $FFAA
  $9622  B3                         PUSHL
  $9623  81 9B                      LOADL_near             $9B
  $9625  B4                         POPR
  $9626  BB                         ADD
  $9627  D3                         BYTE_DEREF
  $9628  D2                         LSHIFT1
  $9629  1F                         LOADR_quick   ; inline operand = 15
  $962A  BB                         ADD
  $962B  B3                         PUSHL
  $962C  B0                         DEREF
  $962D  D1                         DEC
  $962E  B1                         POPSTORE
  $962F  B3                         PUSHL
  $9630  8E FB 9A                   PUSH_imm2              $9AFB
  $9633  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $9637  61                         PUSH_qimm   ; inline operand = 1
  $9638  8E FF 9A                   PUSH_imm2              $9AFF
  $963B  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $963F  0C                         LOADL_quick   ; inline operand = 12
  $9640  D0                         INC
  $9641  2C                         STORE_quick   ; inline operand = 12
  $9642  0E                         LOADL_quick   ; inline operand = 14
  $9643  1C                         LOADR_quick   ; inline operand = 12
  $9644  BB                         ADD
  $9645  B3                         PUSHL
  $9646  DE AA FF                   LEAL_far               $FFAA
  $9649  B3                         PUSHL
  $964A  81 9B                      LOADL_near             $9B
  $964C  B4                         POPR
  $964D  BB                         ADD
  $964E  D3                         BYTE_DEREF
  $964F  D4                         BYTE_POPSTORE
  $9650  DE C7 FF                   LEAL_far               $FFC7
  $9653  B3                         PUSHL
  $9654  02                         LOADL_quick   ; inline operand = 2
  $9655  B4                         POPR
  $9656  BB                         ADD
  $9657  B3                         PUSHL
  $9658  DE AA FF                   LEAL_far               $FFAA
  $965B  B3                         PUSHL
  $965C  81 9B                      LOADL_near             $9B
  $965E  B4                         POPR
  $965F  BB                         ADD
  $9660  D3                         BYTE_DEREF
  $9661  D4                         BYTE_POPSTORE
  $9662  0C                         LOADL_quick   ; inline operand = 12
  $9663  D2                         LSHIFT1
  $9664  74                         ADD_qimm   ; inline operand = 4
  $9665  B3                         PUSHL
  $9666  63                         PUSH_qimm   ; inline operand = 3
  $9667  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $966B  60                         PUSH_qimm   ; inline operand = 0
  $966C  60                         PUSH_qimm   ; inline operand = 0
  $966D  61                         PUSH_qimm   ; inline operand = 1
  $966E  69                         PUSH_qimm   ; inline operand = 9
  $966F  0C                         LOADL_quick   ; inline operand = 12
  $9670  D2                         LSHIFT1
  $9671  74                         ADD_qimm   ; inline operand = 4
  $9672  B3                         PUSHL
  $9673  63                         PUSH_qimm   ; inline operand = 3
  $9674  68                         PUSH_qimm   ; inline operand = 8
  $9675  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $9679  0E                         LOADL_quick   ; inline operand = 14
  $967A  1C                         LOADR_quick   ; inline operand = 12
  $967B  BB                         ADD
  $967C  D3                         BYTE_DEREF
  $967D  D2                         LSHIFT1
  $967E  8C 49 BB                   LOADR_imm2             $BB49
  $9681  BB                         ADD
  $9682  B3                         PUSHL
  $9683  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $9687  B3                         PUSHL
  $9688  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $968C  0C                         LOADL_quick   ; inline operand = 12
  $968D  D2                         LSHIFT1
  $968E  73                         ADD_qimm   ; inline operand = 3
  $968F  B3                         PUSHL
  $9690  6C                         PUSH_qimm   ; inline operand = 12
  $9691  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $9695  0C                         LOADL_quick   ; inline operand = 12
  $9696  D2                         LSHIFT1
  $9697  83 13                      LOADR_near             $13
  $9699  BB                         ADD
  $969A  B3                         PUSHL
  $969B  B0                         DEREF
  $969C  D0                         INC
  $969D  B1                         POPSTORE
  $969E  B3                         PUSHL
  $969F  8E 03 9B                   PUSH_imm2              $9B03
  $96A2  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $96A6  0C                         LOADL_quick   ; inline operand = 12
  $96A7  57                         LOADR_qimm   ; inline operand = 7
  $96A8  C6                         UCMPLT
  $96A9  D8 CA 96                   JUMPF_abs              $96CA
  $96AC  81 E4                      LOADL_near             $E4
  $96AE  50                         LOADR_qimm   ; inline operand = 0
  $96AF  C8                         UCMPGT
  $96B0  D8 CA 96                   JUMPF_abs              $96CA
  $96B3  0C                         LOADL_quick   ; inline operand = 12
  $96B4  D0                         INC
  $96B5  D2                         LSHIFT1
  $96B6  73                         ADD_qimm   ; inline operand = 3
  $96B7  B3                         PUSHL
  $96B8  63                         PUSH_qimm   ; inline operand = 3
  $96B9  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $96BD  61                         PUSH_qimm   ; inline operand = 1
  $96BE  8E 07 9B                   PUSH_imm2              $9B07
  $96C1  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $96C5  81 E4                      LOADL_near             $E4
  $96C7  D1                         DEC
  $96C8  85 E4                      STORE_near             $E4
 >$96CA  87 13                      PUSH_near              $13
  $96CC  3F                         PUSH_quick   ; inline operand = 15
  $96CD  3E                         PUSH_quick   ; inline operand = 14
  $96CE  3D                         PUSH_quick   ; inline operand = 13
  $96CF  E9 8C 8D 08                CALL_abs_imm1          $8D8C {bytecode}, $08
  $96D3  87 13                      PUSH_near              $13
  $96D5  3F                         PUSH_quick   ; inline operand = 15
  $96D6  3E                         PUSH_quick   ; inline operand = 14
  $96D7  3D                         PUSH_quick   ; inline operand = 13
  $96D8  E9 DD 8B 08                CALL_abs_imm1          $8BDD {bytecode}, $08
  $96DC  81 9F                      LOADL_near             $9F
  $96DE  D1                         DEC
  $96DF  85 9F                      STORE_near             $9F
  $96E1  8D 19                      BYTE_PUSH_imm1         +25
  $96E3  68                         PUSH_qimm   ; inline operand = 8
  $96E4  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $96E8  87 9F                      PUSH_near              $9F
  $96EA  8E 15 9B                   PUSH_imm2              $9B15
  $96ED  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $96F1  D6 14 97                   JUMP_abs               $9714
 >$96F4  04                         LOADL_quick   ; inline operand = 4
  $96F5  D7 14 97                   JUMPT_abs              $9714
  $96F8  AC 01 B8                   CALL_abs               $B801 (draw_box_frame) {native}
  $96FB  61                         PUSH_qimm   ; inline operand = 1
  $96FC  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $9700  61                         PUSH_qimm   ; inline operand = 1
  $9701  8E 19 9B                   PUSH_imm2              $9B19
  $9704  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $9708  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $970B  AC 5B B8                   CALL_abs               $B85B {native}
  $970E  87 13                      PUSH_near              $13
  $9710  E9 83 8C 02                CALL_abs_imm1          $8C83 {bytecode}, $02
 >$9714  40                         LOADL_qimm   ; inline operand = 0
  $9715  24                         STORE_quick   ; inline operand = 4
 >$9716  60                         PUSH_qimm   ; inline operand = 0
  $9717  E9 A9 C4 02                CALL_abs_imm1          $C4A9 {native}, $02
  $971B  23                         STORE_quick   ; inline operand = 3
  $971C  03                         LOADL_quick   ; inline operand = 3
  $971D  52                         LOADR_qimm   ; inline operand = 2
  $971E  C1                         CMPNE
  $971F  D7 A3 94                   JUMPT_abs              $94A3
  $9722  40                         LOADL_qimm   ; inline operand = 0
  $9723  23                         STORE_quick   ; inline operand = 3
  $9724  39                         PUSH_quick   ; inline operand = 9
  $9725  33                         PUSH_quick   ; inline operand = 3
  $9726  E9 4D CE 04                CALL_abs_imm1          $CE4D {native}, $04
  $972A  3F                         PUSH_quick   ; inline operand = 15
  $972B  DE C7 FF                   LEAL_far               $FFC7
  $972E  B3                         PUSHL
  $972F  3E                         PUSH_quick   ; inline operand = 14
  $9730  E9 07 8E 06                CALL_abs_imm1          $8E07 {bytecode}, $06
  $9734  22                         STORE_quick   ; inline operand = 2
  $9735  3F                         PUSH_quick   ; inline operand = 15
  $9736  DE AA FF                   LEAL_far               $FFAA
  $9739  B3                         PUSHL
  $973A  3E                         PUSH_quick   ; inline operand = 14
  $973B  E9 7B 8E 06                CALL_abs_imm1          $8E7B {bytecode}, $06
  $973F  21                         STORE_quick   ; inline operand = 1
  $9740  63                         PUSH_qimm   ; inline operand = 3
  $9741  61                         PUSH_qimm   ; inline operand = 1
  $9742  E9 0C 8B 04                CALL_abs_imm1          $8B0C {bytecode}, $04
  $9746  3F                         PUSH_quick   ; inline operand = 15
  $9747  DE C7 FF                   LEAL_far               $FFC7
  $974A  B3                         PUSHL
  $974B  E9 F2 8E 04                CALL_abs_imm1          $8EF2 {bytecode}, $04
  $974F  D6 12 91                   JUMP_abs               $9112
 >$9752  01                         LOADL_quick   ; inline operand = 1
  $9753  8C FF 00                   LOADR_imm2             $00FF
  $9756  C0                         CMPEQ
  $9757  D8 12 91                   JUMPF_abs              $9112
  $975A  81 9D                      LOADL_near             $9D
  $975C  1C                         LOADR_quick   ; inline operand = 12
  $975D  C8                         UCMPGT
  $975E  D8 12 91                   JUMPF_abs              $9112
  $9761  AC 01 B8                   CALL_abs               $B801 (draw_box_frame) {native}
  $9764  61                         PUSH_qimm   ; inline operand = 1
  $9765  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $9769  8E 29 9B                   PUSH_imm2              $9B29
  $976C  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $9770  AC 01 B8                   CALL_abs               $B801 (draw_box_frame) {native}
  $9773  D6 4B 94                   JUMP_abs               $944B
 >$9776  CF                         RETURN

; ============================================================
; sub $9777   (frame_off=-34, body @ $977C)   [PRG $01777]
; ============================================================
  $977C  8E FF 00                   PUSH_imm2              $00FF
  $977F  68                         PUSH_qimm   ; inline operand = 8
  $9780  DE F8 FF                   LEAL_far               $FFF8
  $9783  B3                         PUSHL
  $9784  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $9788  60                         PUSH_qimm   ; inline operand = 0
  $9789  8D 12                      BYTE_PUSH_imm1         +18
  $978B  DE DE FF                   LEAL_far               $FFDE
  $978E  B3                         PUSHL
  $978F  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $9793  DE DE FF                   LEAL_far               $FFDE
  $9796  B3                         PUSHL
  $9797  3D                         PUSH_quick   ; inline operand = 13
  $9798  DE F8 FF                   LEAL_far               $FFF8
  $979B  B3                         PUSHL
  $979C  3C                         PUSH_quick   ; inline operand = 12
  $979D  E9 DD 8B 08                CALL_abs_imm1          $8BDD {bytecode}, $08
  $97A1  63                         PUSH_qimm   ; inline operand = 3
  $97A2  60                         PUSH_qimm   ; inline operand = 0
  $97A3  E9 0C 8B 04                CALL_abs_imm1          $8B0C {bytecode}, $04
  $97A7  DE DE FF                   LEAL_far               $FFDE
  $97AA  B3                         PUSHL
  $97AB  3D                         PUSH_quick   ; inline operand = 13
  $97AC  DE F8 FF                   LEAL_far               $FFF8
  $97AF  B3                         PUSHL
  $97B0  3C                         PUSH_quick   ; inline operand = 12
  $97B1  E9 9B 8C 08                CALL_abs_imm1          $8C9B {bytecode}, $08
  $97B5  24                         STORE_quick   ; inline operand = 4
  $97B6  DE DE FF                   LEAL_far               $FFDE
  $97B9  B3                         PUSHL
  $97BA  3D                         PUSH_quick   ; inline operand = 13
  $97BB  DE F8 FF                   LEAL_far               $FFF8
  $97BE  B3                         PUSHL
  $97BF  3C                         PUSH_quick   ; inline operand = 12
  $97C0  34                         PUSH_quick   ; inline operand = 4
  $97C1  E9 41 90 0A                CALL_abs_imm1          $9041 {bytecode}, $0A
  $97C5  DE DE FF                   LEAL_far               $FFDE
  $97C8  B3                         PUSHL
  $97C9  3D                         PUSH_quick   ; inline operand = 13
  $97CA  DE F8 FF                   LEAL_far               $FFF8
  $97CD  B3                         PUSHL
  $97CE  3C                         PUSH_quick   ; inline operand = 12
  $97CF  E9 8C 8D 08                CALL_abs_imm1          $8D8C {bytecode}, $08
  $97D3  CF                         RETURN

; ============================================================
; sub $97D4   (frame_off=-2, body @ $97D9)   [PRG $017D4]
; ============================================================
  $97D9  61                         PUSH_qimm   ; inline operand = 1
  $97DA  63                         PUSH_qimm   ; inline operand = 3
  $97DB  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $97DF  61                         PUSH_qimm   ; inline operand = 1
  $97E0  8E 46 9B                   PUSH_imm2              $9B46
  $97E3  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $97E7  40                         LOADL_qimm   ; inline operand = 0
  $97E8  2B                         STORE_quick   ; inline operand = 11
 >$97E9  61                         PUSH_qimm   ; inline operand = 1
  $97EA  0B                         LOADL_quick   ; inline operand = 11
  $97EB  5E                         LOADR_qimm   ; inline operand = 14
  $97EC  B5                         MULT
  $97ED  7C                         ADD_qimm   ; inline operand = 12
  $97EE  B3                         PUSHL
  $97EF  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $97F3  61                         PUSH_qimm   ; inline operand = 1
  $97F4  8E 4C 9B                   PUSH_imm2              $9B4C
  $97F7  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $97FB  0B                         LOADL_quick   ; inline operand = 11
  $97FC  D0                         INC
  $97FD  2B                         STORE_quick   ; inline operand = 11
  $97FE  0B                         LOADL_quick   ; inline operand = 11
  $97FF  52                         LOADR_qimm   ; inline operand = 2
  $9800  C6                         UCMPLT
  $9801  D7 E9 97                   JUMPT_abs              $97E9
  $9804  61                         PUSH_qimm   ; inline operand = 1
  $9805  8D 11                      BYTE_PUSH_imm1         +17
  $9807  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $980B  61                         PUSH_qimm   ; inline operand = 1
  $980C  8E 50 9B                   PUSH_imm2              $9B50
  $980F  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $9813  CF                         RETURN

; ============================================================
; sub $9814   (frame_off=-8, body @ $9819)   [PRG $01814]
; ============================================================
  $9819  AC 75 A6                   CALL_abs               $A675 {native}
  $981C  AC 89 A5                   CALL_abs               $A589 {native}
  $981F  AC 37 CE                   CALL_abs               $CE37 {native}
  $9822  40                         LOADL_qimm   ; inline operand = 0
  $9823  29                         STORE_quick   ; inline operand = 9
  $9824  8A 62 66                   LOADL_imm2             $6662
  $9827  28                         STORE_quick   ; inline operand = 8
  $9828  40                         LOADL_qimm   ; inline operand = 0
  $9829  A9 7D 73                   BYTE_STORE_abs         $737D (ui_shared_var_737d)
  $982C  60                         PUSH_qimm   ; inline operand = 0
  $982D  60                         PUSH_qimm   ; inline operand = 0
  $982E  8D 12                      BYTE_PUSH_imm1         +18
  $9830  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $9834  8E E7 00                   PUSH_imm2              $00E7
  $9837  8E 56 BC                   PUSH_imm2              $BC56
  $983A  8E 3A BA                   PUSH_imm2              $BA3A
  $983D  8D 12                      BYTE_PUSH_imm1         +18
  $983F  8D 1E                      BYTE_PUSH_imm1         +30
  $9841  62                         PUSH_qimm   ; inline operand = 2
  $9842  61                         PUSH_qimm   ; inline operand = 1
  $9843  69                         PUSH_qimm   ; inline operand = 9
  $9844  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $9848  08                         LOADL_quick   ; inline operand = 8
  $9849  7F                         ADD_qimm   ; inline operand = 15
  $984A  D3                         BYTE_DEREF
  $984B  52                         LOADR_qimm   ; inline operand = 2
  $984C  DA                         AND
  $984D  D7 59 98                   JUMPT_abs              $9859
  $9850  08                         LOADL_quick   ; inline operand = 8
  $9851  7F                         ADD_qimm   ; inline operand = 15
  $9852  D3                         BYTE_DEREF
  $9853  8B 20                      BYTE_LOADR_imm1        +32
  $9855  DA                         AND
  $9856  D8 61 98                   JUMPF_abs              $9861
 >$9859  60                         PUSH_qimm   ; inline operand = 0
  $985A  8D 3A                      BYTE_PUSH_imm1         +58
  $985C  3C                         PUSH_quick   ; inline operand = 12
  $985D  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
 >$9861  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $9864  60                         PUSH_qimm   ; inline operand = 0
  $9865  8E FA 00                   PUSH_imm2              $00FA
  $9868  8D 10                      BYTE_PUSH_imm1         +16
  $986A  61                         PUSH_qimm   ; inline operand = 1
  $986B  63                         PUSH_qimm   ; inline operand = 3
  $986C  6F                         PUSH_qimm   ; inline operand = 15
  $986D  68                         PUSH_qimm   ; inline operand = 8
  $986E  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $9872  8D 10                      BYTE_PUSH_imm1         +16
  $9874  60                         PUSH_qimm   ; inline operand = 0
  $9875  8E 58 9B                   PUSH_imm2              $9B58
  $9878  66                         PUSH_qimm   ; inline operand = 6
  $9879  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $987D  8D 10                      BYTE_PUSH_imm1         +16
  $987F  8D 10                      BYTE_PUSH_imm1         +16
  $9881  8E 76 F3                   PUSH_imm2              $F376
  $9884  66                         PUSH_qimm   ; inline operand = 6
  $9885  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
 >$9889  60                         PUSH_qimm   ; inline operand = 0
  $988A  8E F9 00                   PUSH_imm2              $00F9
  $988D  61                         PUSH_qimm   ; inline operand = 1
  $988E  8D 1A                      BYTE_PUSH_imm1         +26
  $9890  62                         PUSH_qimm   ; inline operand = 2
  $9891  63                         PUSH_qimm   ; inline operand = 3
  $9892  68                         PUSH_qimm   ; inline operand = 8
  $9893  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $9897  63                         PUSH_qimm   ; inline operand = 3
  $9898  60                         PUSH_qimm   ; inline operand = 0
  $9899  E9 0C 8B 04                CALL_abs_imm1          $8B0C {bytecode}, $04
  $989D  AC 28 8B                   CALL_abs               $8B28 {bytecode}
  $98A0  2B                         STORE_quick   ; inline operand = 11
  $98A1  0B                         LOADL_quick   ; inline operand = 11
  $98A2  8C FF 00                   LOADR_imm2             $00FF
  $98A5  C0                         CMPEQ
  $98A6  D8 EA 98                   JUMPF_abs              $98EA
  $98A9  40                         LOADL_qimm   ; inline operand = 0
  $98AA  2A                         STORE_quick   ; inline operand = 10
 >$98AB  0A                         LOADL_quick   ; inline operand = 10
  $98AC  D2                         LSHIFT1
  $98AD  1C                         LOADR_quick   ; inline operand = 12
  $98AE  BB                         ADD
  $98AF  B0                         DEREF
  $98B0  D8 B8 98                   JUMPF_abs              $98B8
  $98B3  41                         LOADL_qimm   ; inline operand = 1
  $98B4  29                         STORE_quick   ; inline operand = 9
  $98B5  D6 C2 98                   JUMP_abs               $98C2
 >$98B8  0A                         LOADL_quick   ; inline operand = 10
  $98B9  D0                         INC
  $98BA  2A                         STORE_quick   ; inline operand = 10
  $98BB  0A                         LOADL_quick   ; inline operand = 10
  $98BC  8B 1A                      BYTE_LOADR_imm1        +26
  $98BE  C6                         UCMPLT
  $98BF  D7 AB 98                   JUMPT_abs              $98AB
 >$98C2  AC 01 B8                   CALL_abs               $B801 (draw_box_frame) {native}
  $98C5  61                         PUSH_qimm   ; inline operand = 1
  $98C6  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $98CA  09                         LOADL_quick   ; inline operand = 9
  $98CB  D8 D5 98                   JUMPF_abs              $98D5
  $98CE  61                         PUSH_qimm   ; inline operand = 1
  $98CF  8E 68 9B                   PUSH_imm2              $9B68
  $98D2  D6 D9 98                   JUMP_abs               $98D9
 >$98D5  61                         PUSH_qimm   ; inline operand = 1
  $98D6  8E 86 9B                   PUSH_imm2              $9B86
 >$98D9  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $98DD  AC 9F CD                   CALL_abs               $CD9F {native}
  $98E0  D7 E5 98                   JUMPT_abs              $98E5
  $98E3  40                         LOADL_qimm   ; inline operand = 0
  $98E4  2B                         STORE_quick   ; inline operand = 11
 >$98E5  40                         LOADL_qimm   ; inline operand = 0
  $98E6  29                         STORE_quick   ; inline operand = 9
  $98E7  D6 00 99                   JUMP_abs               $9900
 >$98EA  AC D4 97                   CALL_abs               $97D4 {bytecode}
  $98ED  3C                         PUSH_quick   ; inline operand = 12
  $98EE  3B                         PUSH_quick   ; inline operand = 11
  $98EF  E9 77 97 04                CALL_abs_imm1          $9777 {bytecode}, $04
  $98F3  61                         PUSH_qimm   ; inline operand = 1
  $98F4  60                         PUSH_qimm   ; inline operand = 0
  $98F5  6C                         PUSH_qimm   ; inline operand = 12
  $98F6  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $98FA  63                         PUSH_qimm   ; inline operand = 3
  $98FB  61                         PUSH_qimm   ; inline operand = 1
  $98FC  E9 0C 8B 04                CALL_abs_imm1          $8B0C {bytecode}, $04
 >$9900  0B                         LOADL_quick   ; inline operand = 11
  $9901  8C FF 00                   LOADR_imm2             $00FF
  $9904  C1                         CMPNE
  $9905  D7 89 98                   JUMPT_abs              $9889
  $9908  CF                         RETURN

