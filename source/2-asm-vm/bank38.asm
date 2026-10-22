VM bytecode disassembly
  ROM:          Uncharted Waters (USA).nes
  mode:         bulk dump of bank 38
  opcode spec:  vm-opcodes-v2.toml via nobunaga_vm.OPCODE_INFO (execution-validated lengths)
  labels:       0 CPU addresses named

  bank 38: found 19 bytecode-subroutine stubs

; ============================================================
; sub $8003   (frame_off=-20, body @ $8008)   [PRG $4C003]
; ============================================================
  $8008  0C                         LOADL_quick   ; inline operand = 12
  $8009  D7 2C 80                   JUMPT_abs              $802C
  $800C  8D 10                      BYTE_PUSH_imm1         +16
  $800E  DE F0 FF                   LEAL_far               $FFF0
  $8011  B3                         PUSHL
  $8012  8E 84 87                   PUSH_imm2              $8784
  $8015  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $8019  8D 10                      BYTE_PUSH_imm1         +16
  $801B  60                         PUSH_qimm   ; inline operand = 0
  $801C  DE F0 FF                   LEAL_far               $FFF0
  $801F  B3                         PUSHL
  $8020  66                         PUSH_qimm   ; inline operand = 6
  $8021  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8025  6F                         PUSH_qimm   ; inline operand = 15
  $8026  8D 11                      BYTE_PUSH_imm1         +17
  $8028  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
 >$802C  40                         LOADL_qimm   ; inline operand = 0
  $802D  23                         STORE_quick   ; inline operand = 3
 >$802E  8D 10                      BYTE_PUSH_imm1         +16
  $8030  DE F0 FF                   LEAL_far               $FFF0
  $8033  B3                         PUSHL
  $8034  3D                         PUSH_quick   ; inline operand = 13
  $8035  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $8039  40                         LOADL_qimm   ; inline operand = 0
  $803A  22                         STORE_quick   ; inline operand = 2
 >$803B  0C                         LOADL_quick   ; inline operand = 12
  $803C  D2                         LSHIFT1
  $803D  D2                         LSHIFT1
  $803E  13                         LOADR_quick   ; inline operand = 3
  $803F  BB                         ADD
  $8040  8C AB 92                   LOADR_imm2             $92AB
  $8043  BB                         ADD
  $8044  D3                         BYTE_DEREF
  $8045  B3                         PUSHL
  $8046  DE F0 FF                   LEAL_far               $FFF0
  $8049  B3                         PUSHL
  $804A  02                         LOADL_quick   ; inline operand = 2
  $804B  B4                         POPR
  $804C  BB                         ADD
  $804D  B4                         POPR
  $804E  B3                         PUSHL
  $804F  D3                         BYTE_DEREF
  $8050  DA                         AND
  $8051  D4                         BYTE_POPSTORE
  $8052  02                         LOADL_quick   ; inline operand = 2
  $8053  D0                         INC
  $8054  22                         STORE_quick   ; inline operand = 2
  $8055  02                         LOADL_quick   ; inline operand = 2
  $8056  8B 10                      BYTE_LOADR_imm1        +16
  $8058  C2                         SCMPLT
  $8059  D7 3B 80                   JUMPT_abs              $803B
  $805C  8D 10                      BYTE_PUSH_imm1         +16
  $805E  60                         PUSH_qimm   ; inline operand = 0
  $805F  DE F0 FF                   LEAL_far               $FFF0
  $8062  B3                         PUSHL
  $8063  66                         PUSH_qimm   ; inline operand = 6
  $8064  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8068  6F                         PUSH_qimm   ; inline operand = 15
  $8069  8D 11                      BYTE_PUSH_imm1         +17
  $806B  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $806F  03                         LOADL_quick   ; inline operand = 3
  $8070  D0                         INC
  $8071  23                         STORE_quick   ; inline operand = 3
  $8072  03                         LOADL_quick   ; inline operand = 3
  $8073  54                         LOADR_qimm   ; inline operand = 4
  $8074  C2                         SCMPLT
  $8075  D7 2E 80                   JUMPT_abs              $802E
  $8078  0C                         LOADL_quick   ; inline operand = 12
  $8079  D8 9C 80                   JUMPF_abs              $809C
  $807C  8D 10                      BYTE_PUSH_imm1         +16
  $807E  DE F0 FF                   LEAL_far               $FFF0
  $8081  B3                         PUSHL
  $8082  8E 84 87                   PUSH_imm2              $8784
  $8085  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $8089  8D 10                      BYTE_PUSH_imm1         +16
  $808B  60                         PUSH_qimm   ; inline operand = 0
  $808C  DE F0 FF                   LEAL_far               $FFF0
  $808F  B3                         PUSHL
  $8090  66                         PUSH_qimm   ; inline operand = 6
  $8091  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8095  6F                         PUSH_qimm   ; inline operand = 15
  $8096  8D 11                      BYTE_PUSH_imm1         +17
  $8098  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
 >$809C  CF                         RETURN

; ============================================================
; sub $809D   (frame_off=-36, body @ $80A2)   [PRG $4C09D]
; ============================================================
  $80A2  0C                         LOADL_quick   ; inline operand = 12
  $80A3  D7 C6 80                   JUMPT_abs              $80C6
  $80A6  8D 20                      BYTE_PUSH_imm1         +32
  $80A8  DE E0 FF                   LEAL_far               $FFE0
  $80AB  B3                         PUSHL
  $80AC  8E 84 87                   PUSH_imm2              $8784
  $80AF  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $80B3  8D 20                      BYTE_PUSH_imm1         +32
  $80B5  60                         PUSH_qimm   ; inline operand = 0
  $80B6  DE E0 FF                   LEAL_far               $FFE0
  $80B9  B3                         PUSHL
  $80BA  66                         PUSH_qimm   ; inline operand = 6
  $80BB  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $80BF  6F                         PUSH_qimm   ; inline operand = 15
  $80C0  8D 11                      BYTE_PUSH_imm1         +17
  $80C2  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
 >$80C6  40                         LOADL_qimm   ; inline operand = 0
  $80C7  85 DE                      STORE_near             $DE
 >$80C9  8D 20                      BYTE_PUSH_imm1         +32
  $80CB  DE E0 FF                   LEAL_far               $FFE0
  $80CE  B3                         PUSHL
  $80CF  3D                         PUSH_quick   ; inline operand = 13
  $80D0  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $80D4  40                         LOADL_qimm   ; inline operand = 0
  $80D5  85 DC                      STORE_near             $DC
 >$80D7  0C                         LOADL_quick   ; inline operand = 12
  $80D8  D2                         LSHIFT1
  $80D9  D2                         LSHIFT1
  $80DA  83 DE                      LOADR_near             $DE
  $80DC  BB                         ADD
  $80DD  8C B3 92                   LOADR_imm2             $92B3
  $80E0  BB                         ADD
  $80E1  D3                         BYTE_DEREF
  $80E2  B3                         PUSHL
  $80E3  DE E0 FF                   LEAL_far               $FFE0
  $80E6  B3                         PUSHL
  $80E7  81 DC                      LOADL_near             $DC
  $80E9  B4                         POPR
  $80EA  BB                         ADD
  $80EB  B4                         POPR
  $80EC  B3                         PUSHL
  $80ED  D3                         BYTE_DEREF
  $80EE  DA                         AND
  $80EF  D4                         BYTE_POPSTORE
  $80F0  81 DC                      LOADL_near             $DC
  $80F2  D0                         INC
  $80F3  85 DC                      STORE_near             $DC
  $80F5  81 DC                      LOADL_near             $DC
  $80F7  8B 10                      BYTE_LOADR_imm1        +16
  $80F9  C2                         SCMPLT
  $80FA  D7 D7 80                   JUMPT_abs              $80D7
  $80FD  8D 20                      BYTE_PUSH_imm1         +32
  $80FF  60                         PUSH_qimm   ; inline operand = 0
  $8100  DE E0 FF                   LEAL_far               $FFE0
  $8103  B3                         PUSHL
  $8104  66                         PUSH_qimm   ; inline operand = 6
  $8105  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8109  6F                         PUSH_qimm   ; inline operand = 15
  $810A  8D 11                      BYTE_PUSH_imm1         +17
  $810C  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8110  81 DE                      LOADL_near             $DE
  $8112  D0                         INC
  $8113  85 DE                      STORE_near             $DE
  $8115  81 DE                      LOADL_near             $DE
  $8117  54                         LOADR_qimm   ; inline operand = 4
  $8118  C2                         SCMPLT
  $8119  D7 C9 80                   JUMPT_abs              $80C9
  $811C  0C                         LOADL_quick   ; inline operand = 12
  $811D  D8 40 81                   JUMPF_abs              $8140
  $8120  8D 20                      BYTE_PUSH_imm1         +32
  $8122  DE E0 FF                   LEAL_far               $FFE0
  $8125  B3                         PUSHL
  $8126  8E 84 87                   PUSH_imm2              $8784
  $8129  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $812D  8D 20                      BYTE_PUSH_imm1         +32
  $812F  60                         PUSH_qimm   ; inline operand = 0
  $8130  DE E0 FF                   LEAL_far               $FFE0
  $8133  B3                         PUSHL
  $8134  66                         PUSH_qimm   ; inline operand = 6
  $8135  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8139  6F                         PUSH_qimm   ; inline operand = 15
  $813A  8D 11                      BYTE_PUSH_imm1         +17
  $813C  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
 >$8140  CF                         RETURN

; ============================================================
; sub $8141   (frame_off=-11, body @ $8146)   [PRG $4C141]
; ============================================================
  $8146  0C                         LOADL_quick   ; inline operand = 12
  $8147  2B                         STORE_quick   ; inline operand = 11
 >$8148  0B                         LOADL_quick   ; inline operand = 11
  $8149  D0                         INC
  $814A  2B                         STORE_quick   ; inline operand = 11
  $814B  D1                         DEC
  $814C  D3                         BYTE_DEREF
  $814D  B3                         PUSHL
  $814E  E9 0C DC 02                CALL_abs_imm1          $DC0C {native}, $02
  $8152  D9 07 00 45 00 CB 82 47 00 81 81 4B ... SWITCH_noncontig       count=7   ; .table 7 (key,target) + default (noncontiguous); SWITCH 69=>$82CB 71=>$8181 75=>$8283 77=>$8220 79=>$8173 80=>$81C4 87=>$82B5 default=>$82CB
 >$8173  8D 12                      BYTE_PUSH_imm1         +18
  $8175  6F                         PUSH_qimm   ; inline operand = 15
  $8176  8E A0 73                   PUSH_imm2              $73A0
  $8179  6D                         PUSH_qimm   ; inline operand = 13
  $817A  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $817E  D6 48 81                   JUMP_abs               $8148
 >$8181  0B                         LOADL_quick   ; inline operand = 11
  $8182  D0                         INC
  $8183  2B                         STORE_quick   ; inline operand = 11
  $8184  D1                         DEC
  $8185  D3                         BYTE_DEREF
  $8186  D2                         LSHIFT1
  $8187  8C 83 92                   LOADR_imm2             $9283
  $818A  BB                         ADD
  $818B  B0                         DEREF
  $818C  2A                         STORE_quick   ; inline operand = 10
  $818D  0B                         LOADL_quick   ; inline operand = 11
  $818E  D0                         INC
  $818F  2B                         STORE_quick   ; inline operand = 11
  $8190  D1                         DEC
  $8191  D3                         BYTE_DEREF
  $8192  A2 FB FF                   BYTE_STORE_far         $FFFB
  $8195  0B                         LOADL_quick   ; inline operand = 11
  $8196  D0                         INC
  $8197  2B                         STORE_quick   ; inline operand = 11
  $8198  D1                         DEC
  $8199  D3                         BYTE_DEREF
  $819A  A2 FA FF                   BYTE_STORE_far         $FFFA
  $819D  0B                         LOADL_quick   ; inline operand = 11
  $819E  D0                         INC
  $819F  2B                         STORE_quick   ; inline operand = 11
  $81A0  D1                         DEC
  $81A1  D3                         BYTE_DEREF
  $81A2  A2 F9 FF                   BYTE_STORE_far         $FFF9
  $81A5  A0 F9 FF                   BYTE_LOADL_far         $FFF9
  $81A8  B3                         PUSHL
  $81A9  A0 FA FF                   BYTE_LOADL_far         $FFFA
  $81AC  D2                         LSHIFT1
  $81AD  D2                         LSHIFT1
  $81AE  B3                         PUSHL
  $81AF  A0 FB FF                   BYTE_LOADL_far         $FFFB
  $81B2  8B 18                      BYTE_LOADR_imm1        +24
  $81B4  B5                         MULT
  $81B5  B4                         POPR
  $81B6  BB                         ADD
  $81B7  8C A0 73                   LOADR_imm2             $73A0
  $81BA  BB                         ADD
  $81BB  B3                         PUSHL
  $81BC  3A                         PUSH_quick   ; inline operand = 10
  $81BD  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $81C1  D6 48 81                   JUMP_abs               $8148
 >$81C4  0B                         LOADL_quick   ; inline operand = 11
  $81C5  D0                         INC
  $81C6  2B                         STORE_quick   ; inline operand = 11
  $81C7  D1                         DEC
  $81C8  D3                         BYTE_DEREF
  $81C9  A2 FB FF                   BYTE_STORE_far         $FFFB
  $81CC  0B                         LOADL_quick   ; inline operand = 11
  $81CD  D0                         INC
  $81CE  2B                         STORE_quick   ; inline operand = 11
  $81CF  D1                         DEC
  $81D0  D3                         BYTE_DEREF
  $81D1  A2 F8 FF                   BYTE_STORE_far         $FFF8
  $81D4  0B                         LOADL_quick   ; inline operand = 11
  $81D5  D0                         INC
  $81D6  2B                         STORE_quick   ; inline operand = 11
  $81D7  D1                         DEC
  $81D8  D3                         BYTE_DEREF
  $81D9  A2 F7 FF                   BYTE_STORE_far         $FFF7
  $81DC  40                         LOADL_qimm   ; inline operand = 0
  $81DD  85 F5                      STORE_near             $F5
 >$81DF  A3 F8 FF                   BYTE_PUSH_far          $FFF8
  $81E2  81 F5                      LOADL_near             $F5
  $81E4  D2                         LSHIFT1
  $81E5  D2                         LSHIFT1
  $81E6  B3                         PUSHL
  $81E7  A0 FB FF                   BYTE_LOADL_far         $FFFB
  $81EA  8B 18                      BYTE_LOADR_imm1        +24
  $81EC  B5                         MULT
  $81ED  B4                         POPR
  $81EE  BB                         ADD
  $81EF  8C A3 73                   LOADR_imm2             $73A3
  $81F2  BB                         ADD
  $81F3  B4                         POPR
  $81F4  B3                         PUSHL
  $81F5  D3                         BYTE_DEREF
  $81F6  BB                         ADD
  $81F7  D4                         BYTE_POPSTORE
  $81F8  A3 F7 FF                   BYTE_PUSH_far          $FFF7
  $81FB  81 F5                      LOADL_near             $F5
  $81FD  D2                         LSHIFT1
  $81FE  D2                         LSHIFT1
  $81FF  B3                         PUSHL
  $8200  A0 FB FF                   BYTE_LOADL_far         $FFFB
  $8203  8B 18                      BYTE_LOADR_imm1        +24
  $8205  B5                         MULT
  $8206  B4                         POPR
  $8207  BB                         ADD
  $8208  8C A0 73                   LOADR_imm2             $73A0
  $820B  BB                         ADD
  $820C  B4                         POPR
  $820D  B3                         PUSHL
  $820E  D3                         BYTE_DEREF
  $820F  BB                         ADD
  $8210  D4                         BYTE_POPSTORE
  $8211  81 F5                      LOADL_near             $F5
  $8213  D0                         INC
  $8214  85 F5                      STORE_near             $F5
  $8216  81 F5                      LOADL_near             $F5
  $8218  56                         LOADR_qimm   ; inline operand = 6
  $8219  C2                         SCMPLT
  $821A  D7 DF 81                   JUMPT_abs              $81DF
  $821D  D6 48 81                   JUMP_abs               $8148
 >$8220  0B                         LOADL_quick   ; inline operand = 11
  $8221  D0                         INC
  $8222  2B                         STORE_quick   ; inline operand = 11
  $8223  D1                         DEC
  $8224  D3                         BYTE_DEREF
  $8225  D7 4A 82                   JUMPT_abs              $824A
  $8228  60                         PUSH_qimm   ; inline operand = 0
  $8229  60                         PUSH_qimm   ; inline operand = 0
  $822A  68                         PUSH_qimm   ; inline operand = 8
  $822B  8D 14                      BYTE_PUSH_imm1         +20
  $822D  8D 14                      BYTE_PUSH_imm1         +20
  $822F  63                         PUSH_qimm   ; inline operand = 3
  $8230  68                         PUSH_qimm   ; inline operand = 8
  $8231  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $8235  60                         PUSH_qimm   ; inline operand = 0
  $8236  61                         PUSH_qimm   ; inline operand = 1
  $8237  68                         PUSH_qimm   ; inline operand = 8
  $8238  8D 14                      BYTE_PUSH_imm1         +20
  $823A  6C                         PUSH_qimm   ; inline operand = 12
  $823B  69                         PUSH_qimm   ; inline operand = 9
  $823C  E9 3C A7 0C                CALL_abs_imm1          $A73C {native}, $0C
  $8240  6D                         PUSH_qimm   ; inline operand = 13
  $8241  6A                         PUSH_qimm   ; inline operand = 10
  $8242  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8246  4A                         LOADL_qimm   ; inline operand = 10
  $8247  D6 6A 82                   JUMP_abs               $826A
 >$824A  60                         PUSH_qimm   ; inline operand = 0
  $824B  60                         PUSH_qimm   ; inline operand = 0
  $824C  68                         PUSH_qimm   ; inline operand = 8
  $824D  8D 14                      BYTE_PUSH_imm1         +20
  $824F  6C                         PUSH_qimm   ; inline operand = 12
  $8250  69                         PUSH_qimm   ; inline operand = 9
  $8251  68                         PUSH_qimm   ; inline operand = 8
  $8252  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $8256  60                         PUSH_qimm   ; inline operand = 0
  $8257  62                         PUSH_qimm   ; inline operand = 2
  $8258  68                         PUSH_qimm   ; inline operand = 8
  $8259  8D 14                      BYTE_PUSH_imm1         +20
  $825B  8D 14                      BYTE_PUSH_imm1         +20
  $825D  63                         PUSH_qimm   ; inline operand = 3
  $825E  E9 3C A7 0C                CALL_abs_imm1          $A73C {native}, $0C
  $8262  8D 15                      BYTE_PUSH_imm1         +21
  $8264  64                         PUSH_qimm   ; inline operand = 4
  $8265  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $8269  44                         LOADL_qimm   ; inline operand = 4
 >$826A  A8 8A 72                   STORE_abs              $728A
  $826D  8E 90 73                   PUSH_imm2              $7390
  $8270  0B                         LOADL_quick   ; inline operand = 11
  $8271  D0                         INC
  $8272  2B                         STORE_quick   ; inline operand = 11
  $8273  D1                         DEC
  $8274  D3                         BYTE_DEREF
  $8275  D2                         LSHIFT1
  $8276  8C A4 87                   LOADR_imm2             $87A4
  $8279  BB                         ADD
  $827A  B0                         DEREF
  $827B  B3                         PUSHL
  $827C  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $8280  D6 48 81                   JUMP_abs               $8148
 >$8283  0B                         LOADL_quick   ; inline operand = 11
  $8284  D0                         INC
  $8285  2B                         STORE_quick   ; inline operand = 11
  $8286  D1                         DEC
  $8287  D3                         BYTE_DEREF
  $8288  A2 FB FF                   BYTE_STORE_far         $FFFB
  $828B  0B                         LOADL_quick   ; inline operand = 11
  $828C  D0                         INC
  $828D  2B                         STORE_quick   ; inline operand = 11
  $828E  D1                         DEC
  $828F  D3                         BYTE_DEREF
  $8290  A2 F8 FF                   BYTE_STORE_far         $FFF8
  $8293  0B                         LOADL_quick   ; inline operand = 11
  $8294  D0                         INC
  $8295  2B                         STORE_quick   ; inline operand = 11
  $8296  D1                         DEC
  $8297  D3                         BYTE_DEREF
  $8298  A2 F7 FF                   BYTE_STORE_far         $FFF7
  $829B  8D 11                      BYTE_PUSH_imm1         +17
  $829D  A0 FB FF                   BYTE_LOADL_far         $FFFB
  $82A0  8C BB 92                   LOADR_imm2             $92BB
  $82A3  BB                         ADD
  $82A4  D3                         BYTE_DEREF
  $82A5  B3                         PUSHL
  $82A6  A0 F7 FF                   BYTE_LOADL_far         $FFF7
  $82A9  B3                         PUSHL
  $82AA  A0 F8 FF                   BYTE_LOADL_far         $FFF8
  $82AD  B3                         PUSHL
  $82AE  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $82B2  D6 48 81                   JUMP_abs               $8148
 >$82B5  0B                         LOADL_quick   ; inline operand = 11
  $82B6  D0                         INC
  $82B7  2B                         STORE_quick   ; inline operand = 11
  $82B8  D1                         DEC
  $82B9  D3                         BYTE_DEREF
  $82BA  A2 FB FF                   BYTE_STORE_far         $FFFB
  $82BD  A0 FB FF                   BYTE_LOADL_far         $FFFB
  $82C0  D2                         LSHIFT1
  $82C1  B3                         PUSHL
  $82C2  8D 11                      BYTE_PUSH_imm1         +17
  $82C4  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $82C8  D6 48 81                   JUMP_abs               $8148
 >$82CB  CF                         RETURN

; ============================================================
; sub $82CC   (frame_off=+0, body @ $82D1)   [PRG $4C2CC]
; ============================================================
  $82D1  8E BE 92                   PUSH_imm2              $92BE
  $82D4  E9 41 81 02                CALL_abs_imm1          $8141 {bytecode}, $02
  $82D8  CF                         RETURN

; ============================================================
; sub $82D9   (frame_off=+0, body @ $82DE)   [PRG $4C2D9]
; ============================================================
  $82DE  8E F5 93                   PUSH_imm2              $93F5
  $82E1  E9 41 81 02                CALL_abs_imm1          $8141 {bytecode}, $02
  $82E5  CF                         RETURN

; ============================================================
; sub $82E6   (frame_off=+0, body @ $82EB)   [PRG $4C2E6]
; ============================================================
  $82EB  8E F1 94                   PUSH_imm2              $94F1
  $82EE  E9 41 81 02                CALL_abs_imm1          $8141 {bytecode}, $02
  $82F2  CF                         RETURN

; ============================================================
; sub $82F3   (frame_off=+0, body @ $82F8)   [PRG $4C2F3]
; ============================================================
  $82F8  8E 88 95                   PUSH_imm2              $9588
  $82FB  E9 41 81 02                CALL_abs_imm1          $8141 {bytecode}, $02
  $82FF  CF                         RETURN

; ============================================================
; sub $8300   (frame_off=+0, body @ $8305)   [PRG $4C300]
; ============================================================
  $8305  8E EB 96                   PUSH_imm2              $96EB
  $8308  E9 41 81 02                CALL_abs_imm1          $8141 {bytecode}, $02
  $830C  CF                         RETURN

; ============================================================
; sub $830D   (frame_off=+0, body @ $8312)   [PRG $4C30D]
; ============================================================
  $8312  8E 0C 97                   PUSH_imm2              $970C
  $8315  E9 41 81 02                CALL_abs_imm1          $8141 {bytecode}, $02
  $8319  CF                         RETURN

; ============================================================
; sub $831A   (frame_off=+0, body @ $831F)   [PRG $4C31A]
; ============================================================
  $831F  8E EA 97                   PUSH_imm2              $97EA
  $8322  E9 41 81 02                CALL_abs_imm1          $8141 {bytecode}, $02
  $8326  CF                         RETURN

; ============================================================
; sub $8327   (frame_off=+0, body @ $832C)   [PRG $4C327]
; ============================================================
  $832C  8E DD 98                   PUSH_imm2              $98DD
  $832F  E9 41 81 02                CALL_abs_imm1          $8141 {bytecode}, $02
  $8333  CF                         RETURN

; ============================================================
; sub $8334   (frame_off=+0, body @ $8339)   [PRG $4C334]
; ============================================================
  $8339  8E B1 9A                   PUSH_imm2              $9AB1
  $833C  E9 41 81 02                CALL_abs_imm1          $8141 {bytecode}, $02
  $8340  CF                         RETURN

; ============================================================
; sub $8341   (frame_off=-2, body @ $8346)   [PRG $4C341]
; ============================================================
  $8346  8D 12                      BYTE_PUSH_imm1         +18
  $8348  8D 15                      BYTE_PUSH_imm1         +21
  $834A  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $834E  61                         PUSH_qimm   ; inline operand = 1
  $834F  8D 16                      BYTE_PUSH_imm1         +22
  $8351  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8355  8D 20                      BYTE_PUSH_imm1         +32
  $8357  60                         PUSH_qimm   ; inline operand = 0
  $8358  8E 44 87                   PUSH_imm2              $8744
  $835B  66                         PUSH_qimm   ; inline operand = 6
  $835C  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8360  8E E2 00                   PUSH_imm2              $00E2
  $8363  8E 4A AD                   PUSH_imm2              $AD4A
  $8366  8E BE AC                   PUSH_imm2              $ACBE
  $8369  67                         PUSH_qimm   ; inline operand = 7
  $836A  8D 14                      BYTE_PUSH_imm1         +20
  $836C  64                         PUSH_qimm   ; inline operand = 4
  $836D  66                         PUSH_qimm   ; inline operand = 6
  $836E  69                         PUSH_qimm   ; inline operand = 9
  $836F  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8373  67                         PUSH_qimm   ; inline operand = 7
  $8374  61                         PUSH_qimm   ; inline operand = 1
  $8375  8E 67 92                   PUSH_imm2              $9267
  $8378  6D                         PUSH_qimm   ; inline operand = 13
  $8379  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $837D  67                         PUSH_qimm   ; inline operand = 7
  $837E  68                         PUSH_qimm   ; inline operand = 8
  $837F  8E 4B 92                   PUSH_imm2              $924B
  $8382  6D                         PUSH_qimm   ; inline operand = 13
  $8383  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8387  8E 3C 87                   PUSH_imm2              $873C
  $838A  65                         PUSH_qimm   ; inline operand = 5
  $838B  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $838F  AC CC 82                   CALL_abs               $82CC {bytecode}
  $8392  60                         PUSH_qimm   ; inline operand = 0
  $8393  62                         PUSH_qimm   ; inline operand = 2
  $8394  62                         PUSH_qimm   ; inline operand = 2
  $8395  67                         PUSH_qimm   ; inline operand = 7
  $8396  8D 18                      BYTE_PUSH_imm1         +24
  $8398  65                         PUSH_qimm   ; inline operand = 5
  $8399  64                         PUSH_qimm   ; inline operand = 4
  $839A  8E B5 9C                   PUSH_imm2              $9CB5
  $839D  E9 24 C8 10                CALL_abs_imm1          $C824 {native}, $10
  $83A1  2B                         STORE_quick   ; inline operand = 11
  $83A2  D5 FF FF 04 00 B4 83 B1 83 D7 83 DD ... SWITCH_contig          limit=4   ; .table 4 word targets (contiguous); SWITCH 1=>$83B1 2=>$83D7 3=>$83DD 4=>$83E3 default=>$83B4
 >$83B1  AC D9 82                   CALL_abs               $82D9 {bytecode}
 >$83B4  0B                         LOADL_quick   ; inline operand = 11
  $83B5  53                         LOADR_qimm   ; inline operand = 3
  $83B6  C6                         UCMPLT
  $83B7  D8 FA 83                   JUMPF_abs              $83FA
  $83BA  AC E6 82                   CALL_abs               $82E6 {bytecode}
  $83BD  60                         PUSH_qimm   ; inline operand = 0
  $83BE  61                         PUSH_qimm   ; inline operand = 1
  $83BF  60                         PUSH_qimm   ; inline operand = 0
  $83C0  68                         PUSH_qimm   ; inline operand = 8
  $83C1  8D 1A                      BYTE_PUSH_imm1         +26
  $83C3  65                         PUSH_qimm   ; inline operand = 5
  $83C4  62                         PUSH_qimm   ; inline operand = 2
  $83C5  8E B6 9C                   PUSH_imm2              $9CB6
 >$83C8  E9 24 C8 10                CALL_abs_imm1          $C824 {native}, $10
  $83CC  51                         LOADR_qimm   ; inline operand = 1
  $83CD  C0                         CMPEQ
  $83CE  D8 E9 83                   JUMPF_abs              $83E9
  $83D1  AC F3 82                   CALL_abs               $82F3 {bytecode}
  $83D4  D6 FD 83                   JUMP_abs               $83FD
 >$83D7  AC 0D 83                   CALL_abs               $830D {bytecode}
  $83DA  D6 B4 83                   JUMP_abs               $83B4
 >$83DD  AC 1A 83                   CALL_abs               $831A {bytecode}
  $83E0  D6 B4 83                   JUMP_abs               $83B4
 >$83E3  AC 34 83                   CALL_abs               $8334 {bytecode}
  $83E6  D6 B4 83                   JUMP_abs               $83B4
 >$83E9  AC 00 83                   CALL_abs               $8300 {bytecode}
  $83EC  60                         PUSH_qimm   ; inline operand = 0
  $83ED  61                         PUSH_qimm   ; inline operand = 1
  $83EE  60                         PUSH_qimm   ; inline operand = 0
  $83EF  68                         PUSH_qimm   ; inline operand = 8
  $83F0  8D 1A                      BYTE_PUSH_imm1         +26
  $83F2  65                         PUSH_qimm   ; inline operand = 5
  $83F3  62                         PUSH_qimm   ; inline operand = 2
  $83F4  8E B7 9C                   PUSH_imm2              $9CB7
  $83F7  D6 C8 83                   JUMP_abs               $83C8
 >$83FA  AC 27 83                   CALL_abs               $8327 {bytecode}
 >$83FD  8E B4 00                   PUSH_imm2              $00B4
  $8400  8D 11                      BYTE_PUSH_imm1         +17
  $8402  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8406  CF                         RETURN

; ============================================================
; sub $8407   (frame_off=-12, body @ $840C)   [PRG $4C407]
; ============================================================
  $840C  68                         PUSH_qimm   ; inline operand = 8
  $840D  60                         PUSH_qimm   ; inline operand = 0
  $840E  8E 84 87                   PUSH_imm2              $8784
  $8411  66                         PUSH_qimm   ; inline operand = 6
  $8412  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8416  8E E2 00                   PUSH_imm2              $00E2
  $8419  8E 3A AE                   PUSH_imm2              $AE3A
  $841C  8E D6 AD                   PUSH_imm2              $ADD6
  $841F  6A                         PUSH_qimm   ; inline operand = 10
  $8420  6A                         PUSH_qimm   ; inline operand = 10
  $8421  64                         PUSH_qimm   ; inline operand = 4
  $8422  6B                         PUSH_qimm   ; inline operand = 11
  $8423  69                         PUSH_qimm   ; inline operand = 9
  $8424  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8428  8D 3C                      BYTE_PUSH_imm1         +60
  $842A  8D 11                      BYTE_PUSH_imm1         +17
  $842C  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8430  40                         LOADL_qimm   ; inline operand = 0
  $8431  27                         STORE_quick   ; inline operand = 7
 >$8432  68                         PUSH_qimm   ; inline operand = 8
  $8433  DE F8 FF                   LEAL_far               $FFF8
  $8436  B3                         PUSHL
  $8437  8E 44 87                   PUSH_imm2              $8744
  $843A  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $843E  40                         LOADL_qimm   ; inline operand = 0
  $843F  D6 57 84                   JUMP_abs               $8457
 >$8442  07                         LOADL_quick   ; inline operand = 7
  $8443  8C B8 9C                   LOADR_imm2             $9CB8
  $8446  BB                         ADD
  $8447  D3                         BYTE_DEREF
  $8448  B3                         PUSHL
  $8449  DE F8 FF                   LEAL_far               $FFF8
  $844C  B3                         PUSHL
  $844D  06                         LOADL_quick   ; inline operand = 6
  $844E  B4                         POPR
  $844F  BB                         ADD
  $8450  B4                         POPR
  $8451  B3                         PUSHL
  $8452  D3                         BYTE_DEREF
  $8453  DA                         AND
  $8454  D4                         BYTE_POPSTORE
  $8455  06                         LOADL_quick   ; inline operand = 6
  $8456  D0                         INC
 >$8457  26                         STORE_quick   ; inline operand = 6
  $8458  06                         LOADL_quick   ; inline operand = 6
  $8459  58                         LOADR_qimm   ; inline operand = 8
  $845A  C6                         UCMPLT
  $845B  D7 42 84                   JUMPT_abs              $8442
  $845E  68                         PUSH_qimm   ; inline operand = 8
  $845F  60                         PUSH_qimm   ; inline operand = 0
  $8460  DE F8 FF                   LEAL_far               $FFF8
  $8463  B3                         PUSHL
  $8464  66                         PUSH_qimm   ; inline operand = 6
  $8465  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8469  6F                         PUSH_qimm   ; inline operand = 15
  $846A  8D 11                      BYTE_PUSH_imm1         +17
  $846C  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8470  07                         LOADL_quick   ; inline operand = 7
  $8471  D0                         INC
  $8472  27                         STORE_quick   ; inline operand = 7
  $8473  07                         LOADL_quick   ; inline operand = 7
  $8474  54                         LOADR_qimm   ; inline operand = 4
  $8475  C2                         SCMPLT
  $8476  D7 32 84                   JUMPT_abs              $8432
  $8479  CF                         RETURN

; ============================================================
; sub $847A   (frame_off=-6, body @ $847F)   [PRG $4C47A]
; ============================================================
  $847F  40                         LOADL_qimm   ; inline operand = 0
  $8480  2B                         STORE_quick   ; inline operand = 11
 >$8481  0B                         LOADL_quick   ; inline operand = 11
  $8482  51                         LOADR_qimm   ; inline operand = 1
  $8483  C4                         SCMPGT
  $8484  D8 9A 84                   JUMPF_abs              $849A
  $8487  0B                         LOADL_quick   ; inline operand = 11
  $8488  55                         LOADR_qimm   ; inline operand = 5
  $8489  C2                         SCMPLT
  $848A  D8 9A 84                   JUMPF_abs              $849A
  $848D  62                         PUSH_qimm   ; inline operand = 2
  $848E  0B                         LOADL_quick   ; inline operand = 11
  $848F  8F FE                      BYTE_ADD_imm1          -2
  $8491  D2                         LSHIFT1
  $8492  8F 1B                      BYTE_ADD_imm1          +27
  $8494  B3                         PUSHL
  $8495  6C                         PUSH_qimm   ; inline operand = 12
  $8496  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
 >$849A  0B                         LOADL_quick   ; inline operand = 11
  $849B  50                         LOADR_qimm   ; inline operand = 0
  $849C  C4                         SCMPGT
  $849D  D8 B3 84                   JUMPF_abs              $84B3
  $84A0  8E 91 00                   PUSH_imm2              $0091
  $84A3  A5 BE 9C                   BYTE_LOADL_abs         $9CBE
  $84A6  B3                         PUSHL
  $84A7  61                         PUSH_qimm   ; inline operand = 1
  $84A8  8D 14                      BYTE_PUSH_imm1         +20
  $84AA  0B                         LOADL_quick   ; inline operand = 11
  $84AB  73                         ADD_qimm   ; inline operand = 3
  $84AC  B3                         PUSHL
  $84AD  66                         PUSH_qimm   ; inline operand = 6
  $84AE  68                         PUSH_qimm   ; inline operand = 8
  $84AF  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
 >$84B3  40                         LOADL_qimm   ; inline operand = 0
  $84B4  2A                         STORE_quick   ; inline operand = 10
 >$84B5  8E 91 00                   PUSH_imm2              $0091
  $84B8  0A                         LOADL_quick   ; inline operand = 10
  $84B9  8C BC 9C                   LOADR_imm2             $9CBC
  $84BC  BB                         ADD
  $84BD  D3                         BYTE_DEREF
  $84BE  B3                         PUSHL
  $84BF  61                         PUSH_qimm   ; inline operand = 1
  $84C0  8D 14                      BYTE_PUSH_imm1         +20
  $84C2  0B                         LOADL_quick   ; inline operand = 11
  $84C3  74                         ADD_qimm   ; inline operand = 4
  $84C4  B3                         PUSHL
  $84C5  66                         PUSH_qimm   ; inline operand = 6
  $84C6  68                         PUSH_qimm   ; inline operand = 8
  $84C7  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $84CB  6A                         PUSH_qimm   ; inline operand = 10
  $84CC  8D 11                      BYTE_PUSH_imm1         +17
  $84CE  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $84D2  0A                         LOADL_quick   ; inline operand = 10
  $84D3  D0                         INC
  $84D4  2A                         STORE_quick   ; inline operand = 10
  $84D5  0A                         LOADL_quick   ; inline operand = 10
  $84D6  52                         LOADR_qimm   ; inline operand = 2
  $84D7  C2                         SCMPLT
  $84D8  D7 B5 84                   JUMPT_abs              $84B5
  $84DB  0B                         LOADL_quick   ; inline operand = 11
  $84DC  D0                         INC
  $84DD  2B                         STORE_quick   ; inline operand = 11
  $84DE  0B                         LOADL_quick   ; inline operand = 11
  $84DF  56                         LOADR_qimm   ; inline operand = 6
  $84E0  C2                         SCMPLT
  $84E1  D7 81 84                   JUMPT_abs              $8481
  $84E4  8E 2C 01                   PUSH_imm2              $012C
  $84E7  8D 11                      BYTE_PUSH_imm1         +17
  $84E9  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $84ED  60                         PUSH_qimm   ; inline operand = 0
  $84EE  60                         PUSH_qimm   ; inline operand = 0
  $84EF  8D 10                      BYTE_PUSH_imm1         +16
  $84F1  8D 1C                      BYTE_PUSH_imm1         +28
  $84F3  6C                         PUSH_qimm   ; inline operand = 12
  $84F4  62                         PUSH_qimm   ; inline operand = 2
  $84F5  68                         PUSH_qimm   ; inline operand = 8
  $84F6  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $84FA  6C                         PUSH_qimm   ; inline operand = 12
  $84FB  6F                         PUSH_qimm   ; inline operand = 15
  $84FC  6C                         PUSH_qimm   ; inline operand = 12
  $84FD  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $8501  8E E2 00                   PUSH_imm2              $00E2
  $8504  8E 2E AF                   PUSH_imm2              $AF2E
  $8507  8E 9E AE                   PUSH_imm2              $AE9E
  $850A  6C                         PUSH_qimm   ; inline operand = 12
  $850B  6C                         PUSH_qimm   ; inline operand = 12
  $850C  63                         PUSH_qimm   ; inline operand = 3
  $850D  6A                         PUSH_qimm   ; inline operand = 10
  $850E  69                         PUSH_qimm   ; inline operand = 9
  $850F  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8513  AC 07 84                   CALL_abs               $8407 {bytecode}
  $8516  8E 58 02                   PUSH_imm2              $0258
  $8519  8D 11                      BYTE_PUSH_imm1         +17
  $851B  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $851F  8E 44 87                   PUSH_imm2              $8744
  $8522  61                         PUSH_qimm   ; inline operand = 1
  $8523  E9 9D 80 04                CALL_abs_imm1          $809D {bytecode}, $04
  $8527  8D 40                      BYTE_PUSH_imm1         +64
  $8529  60                         PUSH_qimm   ; inline operand = 0
  $852A  6C                         PUSH_qimm   ; inline operand = 12
  $852B  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $852F  60                         PUSH_qimm   ; inline operand = 0
  $8530  60                         PUSH_qimm   ; inline operand = 0
  $8531  60                         PUSH_qimm   ; inline operand = 0
  $8532  67                         PUSH_qimm   ; inline operand = 7
  $8533  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8537  CF                         RETURN

; ============================================================
; sub $8538   (frame_off=-90, body @ $853D)   [PRG $4C538]
; ============================================================
  $853D  40                         LOADL_qimm   ; inline operand = 0
  $853E  85 AE                      STORE_near             $AE
 >$8540  81 AE                      LOADL_near             $AE
  $8542  8B 18                      BYTE_LOADR_imm1        +24
  $8544  B5                         MULT
  $8545  8C A4 6A                   LOADR_imm2             $6AA4
  $8548  BB                         ADD
  $8549  85 A6                      STORE_near             $A6
  $854B  81 A6                      LOADL_near             $A6
  $854D  D3                         BYTE_DEREF
  $854E  D8 5D 85                   JUMPF_abs              $855D
  $8551  81 AE                      LOADL_near             $AE
  $8553  D0                         INC
  $8554  85 AE                      STORE_near             $AE
  $8556  81 AE                      LOADL_near             $AE
  $8558  55                         LOADR_qimm   ; inline operand = 5
  $8559  C6                         UCMPLT
  $855A  D7 40 85                   JUMPT_abs              $8540
 >$855D  87 AE                      PUSH_near              $AE
  $855F  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $8563  85 A8                      STORE_near             $A8
  $8565  81 A8                      LOADL_near             $A8
  $8567  8F 14                      BYTE_ADD_imm1          +20
  $8569  D3                         BYTE_DEREF
  $856A  55                         LOADR_qimm   ; inline operand = 5
  $856B  BE                         URSHIFT
  $856C  85 AE                      STORE_near             $AE
  $856E  8A 86 F3                   LOADL_imm2             $F386
  $8571  85 AA                      STORE_near             $AA
  $8573  81 AE                      LOADL_near             $AE
  $8575  52                         LOADR_qimm   ; inline operand = 2
  $8576  C8                         UCMPGT
  $8577  D8 7F 85                   JUMPF_abs              $857F
  $857A  8A D6 F3                   LOADL_imm2             $F3D6
  $857D  85 AA                      STORE_near             $AA
 >$857F  45                         LOADL_qimm   ; inline operand = 5
  $8580  85 AC                      STORE_near             $AC
  $8582  8D 50                      BYTE_PUSH_imm1         +80
  $8584  DE B0 FF                   LEAL_far               $FFB0
  $8587  B3                         PUSHL
  $8588  87 AA                      PUSH_near              $AA
  $858A  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $858E  40                         LOADL_qimm   ; inline operand = 0
  $858F  85 AE                      STORE_near             $AE
 >$8591  62                         PUSH_qimm   ; inline operand = 2
  $8592  DE B0 FF                   LEAL_far               $FFB0
  $8595  B3                         PUSHL
  $8596  81 AE                      LOADL_near             $AE
  $8598  D2                         LSHIFT1
  $8599  D2                         LSHIFT1
  $859A  B4                         POPR
  $859B  BB                         ADD
  $859C  B4                         POPR
  $859D  B3                         PUSHL
  $859E  D3                         BYTE_DEREF
  $859F  BB                         ADD
  $85A0  D4                         BYTE_POPSTORE
  $85A1  81 AE                      LOADL_near             $AE
  $85A3  D0                         INC
  $85A4  85 AE                      STORE_near             $AE
  $85A6  81 AE                      LOADL_near             $AE
  $85A8  8B 14                      BYTE_LOADR_imm1        +20
  $85AA  C6                         UCMPLT
  $85AB  D7 91 85                   JUMPT_abs              $8591
  $85AE  8D 14                      BYTE_PUSH_imm1         +20
  $85B0  61                         PUSH_qimm   ; inline operand = 1
  $85B1  DE B0 FF                   LEAL_far               $FFB0
  $85B4  B3                         PUSHL
  $85B5  6D                         PUSH_qimm   ; inline operand = 13
  $85B6  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $85BA  D6 ED 85                   JUMP_abs               $85ED
 >$85BD  DE B3 FF                   LEAL_far               $FFB3
  $85C0  B3                         PUSHL
  $85C1  81 AE                      LOADL_near             $AE
  $85C3  D2                         LSHIFT1
  $85C4  D2                         LSHIFT1
  $85C5  B4                         POPR
  $85C6  BB                         ADD
  $85C7  B3                         PUSHL
  $85C8  D3                         BYTE_DEREF
  $85C9  D1                         DEC
  $85CA  D4                         BYTE_POPSTORE
 >$85CB  81 AE                      LOADL_near             $AE
  $85CD  D0                         INC
  $85CE  85 AE                      STORE_near             $AE
  $85D0  81 AE                      LOADL_near             $AE
  $85D2  8B 14                      BYTE_LOADR_imm1        +20
  $85D4  C6                         UCMPLT
  $85D5  D7 F0 85                   JUMPT_abs              $85F0
  $85D8  8D 14                      BYTE_PUSH_imm1         +20
  $85DA  61                         PUSH_qimm   ; inline operand = 1
  $85DB  DE B0 FF                   LEAL_far               $FFB0
  $85DE  B3                         PUSHL
  $85DF  6D                         PUSH_qimm   ; inline operand = 13
  $85E0  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $85E4  A0 B3 FF                   BYTE_LOADL_far         $FFB3
  $85E7  8B 48                      BYTE_LOADR_imm1        +72
  $85E9  C6                         UCMPLT
  $85EA  D8 20 86                   JUMPF_abs              $8620
 >$85ED  40                         LOADL_qimm   ; inline operand = 0
  $85EE  85 AE                      STORE_near             $AE
 >$85F0  DE B3 FF                   LEAL_far               $FFB3
  $85F3  B3                         PUSHL
  $85F4  81 AE                      LOADL_near             $AE
  $85F6  D2                         LSHIFT1
  $85F7  D2                         LSHIFT1
  $85F8  B4                         POPR
  $85F9  BB                         ADD
  $85FA  D3                         BYTE_DEREF
  $85FB  5C                         LOADR_qimm   ; inline operand = 12
  $85FC  C8                         UCMPGT
  $85FD  D7 BD 85                   JUMPT_abs              $85BD
  $8600  DE B1 FF                   LEAL_far               $FFB1
  $8603  B3                         PUSHL
  $8604  81 AE                      LOADL_near             $AE
  $8606  D2                         LSHIFT1
  $8607  D2                         LSHIFT1
  $8608  B4                         POPR
  $8609  BB                         ADD
  $860A  B3                         PUSHL
  $860B  8A A0 00                   LOADL_imm2             $00A0
  $860E  D4                         BYTE_POPSTORE
  $860F  81 AE                      LOADL_near             $AE
  $8611  8B 13                      BYTE_LOADR_imm1        +19
  $8613  C0                         CMPEQ
  $8614  D8 CB 85                   JUMPF_abs              $85CB
  $8617  8D 14                      BYTE_PUSH_imm1         +20
  $8619  61                         PUSH_qimm   ; inline operand = 1
  $861A  6C                         PUSH_qimm   ; inline operand = 12
  $861B  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $861F  CF                         RETURN
 >$8620  87 AC                      PUSH_near              $AC
  $8622  8D 11                      BYTE_PUSH_imm1         +17
  $8624  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8628  D6 ED 85                   JUMP_abs               $85ED

; ============================================================
; sub $862B   (frame_off=+0, body @ $8630)   [PRG $4C62B]
; ============================================================
  $8630  8D 10                      BYTE_PUSH_imm1         +16
  $8632  60                         PUSH_qimm   ; inline operand = 0
  $8633  8E 84 87                   PUSH_imm2              $8784
  $8636  66                         PUSH_qimm   ; inline operand = 6
  $8637  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $863B  8E E1 00                   PUSH_imm2              $00E1
  $863E  8E 4C A5                   PUSH_imm2              $A54C
  $8641  8E DC A4                   PUSH_imm2              $A4DC
  $8644  64                         PUSH_qimm   ; inline operand = 4
  $8645  8D 1C                      BYTE_PUSH_imm1         +28
  $8647  62                         PUSH_qimm   ; inline operand = 2
  $8648  62                         PUSH_qimm   ; inline operand = 2
  $8649  69                         PUSH_qimm   ; inline operand = 9
  $864A  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $864E  AC 40 A3                   CALL_abs               $A340 {native}
  $8651  AC 6D A3                   CALL_abs               $A36D {native}
  $8654  AC 9D A3                   CALL_abs               $A39D {native}
  $8657  63                         PUSH_qimm   ; inline operand = 3
  $8658  8D 15                      BYTE_PUSH_imm1         +21
  $865A  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $865E  61                         PUSH_qimm   ; inline operand = 1
  $865F  8E CF 9C                   PUSH_imm2              $9CCF
  $8662  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8666  8E E1 00                   PUSH_imm2              $00E1
  $8669  8E CC AB                   PUSH_imm2              $ABCC
  $866C  8E 44 AA                   PUSH_imm2              $AA44
  $866F  6E                         PUSH_qimm   ; inline operand = 14
  $8670  8D 1C                      BYTE_PUSH_imm1         +28
  $8672  66                         PUSH_qimm   ; inline operand = 6
  $8673  62                         PUSH_qimm   ; inline operand = 2
  $8674  69                         PUSH_qimm   ; inline operand = 9
  $8675  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8679  8E E1 00                   PUSH_imm2              $00E1
  $867C  8E E8 A0                   PUSH_imm2              $A0E8
  $867F  8E C0 A0                   PUSH_imm2              $A0C0
  $8682  65                         PUSH_qimm   ; inline operand = 5
  $8683  68                         PUSH_qimm   ; inline operand = 8
  $8684  66                         PUSH_qimm   ; inline operand = 6
  $8685  8D 16                      BYTE_PUSH_imm1         +22
  $8687  69                         PUSH_qimm   ; inline operand = 9
  $8688  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $868C  CF                         RETURN

; ============================================================
; sub $868D   (frame_off=+0, body @ $8692)   [PRG $4C68D]
; ============================================================
  $8692  8D 13                      BYTE_PUSH_imm1         +19
  $8694  8D 15                      BYTE_PUSH_imm1         +21
  $8696  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $869A  61                         PUSH_qimm   ; inline operand = 1
  $869B  8D 16                      BYTE_PUSH_imm1         +22
  $869D  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $86A1  8E D6 9C                   PUSH_imm2              $9CD6
  $86A4  65                         PUSH_qimm   ; inline operand = 5
  $86A5  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $86A9  AC 2B 86                   CALL_abs               $862B {bytecode}
  $86AC  60                         PUSH_qimm   ; inline operand = 0
  $86AD  60                         PUSH_qimm   ; inline operand = 0
  $86AE  68                         PUSH_qimm   ; inline operand = 8
  $86AF  8D 1C                      BYTE_PUSH_imm1         +28
  $86B1  8D 14                      BYTE_PUSH_imm1         +20
  $86B3  62                         PUSH_qimm   ; inline operand = 2
  $86B4  E9 3C A7 0C                CALL_abs_imm1          $A73C {native}, $0C
  $86B8  8D 10                      BYTE_PUSH_imm1         +16
  $86BA  8D 10                      BYTE_PUSH_imm1         +16
  $86BC  8E 44 87                   PUSH_imm2              $8744
  $86BF  66                         PUSH_qimm   ; inline operand = 6
  $86C0  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $86C4  8E BF 9C                   PUSH_imm2              $9CBF
  $86C7  60                         PUSH_qimm   ; inline operand = 0
  $86C8  E9 03 80 04                CALL_abs_imm1          $8003 {bytecode}, $04
  $86CC  8E 83 86                   PUSH_imm2              $8683
  $86CF  8E DE 00                   PUSH_imm2              $00DE
  $86D2  61                         PUSH_qimm   ; inline operand = 1
  $86D3  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $86D7  8E 90 73                   PUSH_imm2              $7390
  $86DA  AA DE 9C                   PUSH_abs               $9CDE
  $86DD  E9 99 C7 04                CALL_abs_imm1          $C799 {native}, $04
  $86E1  8E 68 01                   PUSH_imm2              $0168
  $86E4  8D 11                      BYTE_PUSH_imm1         +17
  $86E6  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $86EA  60                         PUSH_qimm   ; inline operand = 0
  $86EB  60                         PUSH_qimm   ; inline operand = 0
  $86EC  68                         PUSH_qimm   ; inline operand = 8
  $86ED  8D 1C                      BYTE_PUSH_imm1         +28
  $86EF  8D 14                      BYTE_PUSH_imm1         +20
  $86F1  62                         PUSH_qimm   ; inline operand = 2
  $86F2  E9 3C A7 0C                CALL_abs_imm1          $A73C {native}, $0C
  $86F6  61                         PUSH_qimm   ; inline operand = 1
  $86F7  AA E0 9C                   PUSH_abs               $9CE0
  $86FA  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $86FE  8E 68 01                   PUSH_imm2              $0168
  $8701  8D 11                      BYTE_PUSH_imm1         +17
  $8703  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8707  AC 38 85                   CALL_abs               $8538 {bytecode}
  $870A  8E BF 9C                   PUSH_imm2              $9CBF
  $870D  61                         PUSH_qimm   ; inline operand = 1
  $870E  E9 03 80 04                CALL_abs_imm1          $8003 {bytecode}, $04
  $8712  60                         PUSH_qimm   ; inline operand = 0
  $8713  60                         PUSH_qimm   ; inline operand = 0
  $8714  60                         PUSH_qimm   ; inline operand = 0
  $8715  67                         PUSH_qimm   ; inline operand = 7
  $8716  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $871A  8E 3C 87                   PUSH_imm2              $873C
  $871D  65                         PUSH_qimm   ; inline operand = 5
  $871E  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8722  CF                         RETURN

; ============================================================
; sub $8723   (frame_off=+0, body @ $8728)   [PRG $4C723]
; ============================================================
  $8728  AA 42 65                   PUSH_abs               $6542
  $872B  8E 90 73                   PUSH_imm2              $7390
  $872E  E9 A6 DE 04                CALL_abs_imm1          $DEA6 (str_copy) {native}, $04
  $8732  AC 41 83                   CALL_abs               $8341 {bytecode}
  $8735  AC 7A 84                   CALL_abs               $847A {bytecode}
  $8738  AC 8D 86                   CALL_abs               $868D {bytecode}
  $873B  CF                         RETURN

