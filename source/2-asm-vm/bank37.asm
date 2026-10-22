VM bytecode disassembly
  ROM:          Uncharted Waters (USA).nes
  mode:         bulk dump of bank 37
  opcode spec:  vm-opcodes-v2.toml via nobunaga_vm.OPCODE_INFO (execution-validated lengths)
  labels:       0 CPU addresses named

  bank 37: found 6 bytecode-subroutine stubs

; ============================================================
; sub $8003   (frame_off=-7, body @ $8008)   [PRG $4A003]
; ============================================================
  $8008  8E EA 84                   PUSH_imm2              $84EA
  $800B  DE F9 FF                   LEAL_far               $FFF9
  $800E  B3                         PUSHL
  $800F  E9 A6 DE 04                CALL_abs_imm1          $DEA6 (str_copy) {native}, $04
 >$8013  0C                         LOADL_quick   ; inline operand = 12
  $8014  D3                         BYTE_DEREF
  $8015  A2 FF FF                   BYTE_STORE_far         $FFFF
  $8018  D8 AD 80                   JUMPF_abs              $80AD
  $801B  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $801E  D9 02 00 0A 00 2B 80 1B 00 39 80 66 ... SWITCH_noncontig       count=2   ; .table 2 (key,target) + default (noncontiguous); SWITCH 10=>$802B 27=>$8039 default=>$8066
 >$802B  61                         PUSH_qimm   ; inline operand = 1
  $802C  8E ED 84                   PUSH_imm2              $84ED
  $802F  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
 >$8033  0C                         LOADL_quick   ; inline operand = 12
  $8034  D0                         INC
  $8035  2C                         STORE_quick   ; inline operand = 12
  $8036  D6 13 80                   JUMP_abs               $8013
 >$8039  0C                         LOADL_quick   ; inline operand = 12
  $803A  D0                         INC
  $803B  2C                         STORE_quick   ; inline operand = 12
  $803C  0C                         LOADL_quick   ; inline operand = 12
  $803D  D3                         BYTE_DEREF
  $803E  A2 FE FF                   BYTE_STORE_far         $FFFE
  $8041  D9 03 00 4B 00 52 80 48 00 52 80 57 ... SWITCH_noncontig       count=3   ; .table 3 (key,target) + default (noncontiguous); SWITCH 75=>$8052 72=>$8052 87=>$805B default=>$8033
 >$8052  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $8055  A2 FA FF                   BYTE_STORE_far         $FFFA
  $8058  D6 33 80                   JUMP_abs               $8033
 >$805B  8D 78                      BYTE_PUSH_imm1         +120
 >$805D  8D 11                      BYTE_PUSH_imm1         +17
  $805F  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8063  D6 33 80                   JUMP_abs               $8033
 >$8066  0C                         LOADL_quick   ; inline operand = 12
  $8067  D0                         INC
  $8068  D3                         BYTE_DEREF
  $8069  A2 FE FF                   BYTE_STORE_far         $FFFE
  $806C  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $806F  8C DE 00                   LOADR_imm2             $00DE
  $8072  C0                         CMPEQ
  $8073  D7 80 80                   JUMPT_abs              $8080
  $8076  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $8079  8C DF 00                   LOADR_imm2             $00DF
  $807C  C0                         CMPEQ
  $807D  D8 96 80                   JUMPF_abs              $8096
 >$8080  0C                         LOADL_quick   ; inline operand = 12
  $8081  D0                         INC
  $8082  2C                         STORE_quick   ; inline operand = 12
  $8083  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8086  A2 FB FF                   BYTE_STORE_far         $FFFB
  $8089  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $808C  A2 FC FF                   BYTE_STORE_far         $FFFC
  $808F  40                         LOADL_qimm   ; inline operand = 0
  $8090  A2 FD FF                   BYTE_STORE_far         $FFFD
  $8093  D6 A0 80                   JUMP_abs               $80A0
 >$8096  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8099  A2 FB FF                   BYTE_STORE_far         $FFFB
  $809C  40                         LOADL_qimm   ; inline operand = 0
  $809D  A2 FC FF                   BYTE_STORE_far         $FFFC
 >$80A0  61                         PUSH_qimm   ; inline operand = 1
  $80A1  DE F9 FF                   LEAL_far               $FFF9
  $80A4  B3                         PUSHL
  $80A5  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $80A9  67                         PUSH_qimm   ; inline operand = 7
  $80AA  D6 5D 80                   JUMP_abs               $805D
 >$80AD  CF                         RETURN

; ============================================================
; sub $80AE   (frame_off=-20, body @ $80B3)   [PRG $4A0AE]
; ============================================================
  $80B3  0C                         LOADL_quick   ; inline operand = 12
  $80B4  D7 D7 80                   JUMPT_abs              $80D7
  $80B7  8D 10                      BYTE_PUSH_imm1         +16
  $80B9  DE F0 FF                   LEAL_far               $FFF0
  $80BC  B3                         PUSHL
  $80BD  8E CA 84                   PUSH_imm2              $84CA
  $80C0  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $80C4  8D 10                      BYTE_PUSH_imm1         +16
  $80C6  60                         PUSH_qimm   ; inline operand = 0
  $80C7  DE F0 FF                   LEAL_far               $FFF0
  $80CA  B3                         PUSHL
  $80CB  66                         PUSH_qimm   ; inline operand = 6
  $80CC  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $80D0  6F                         PUSH_qimm   ; inline operand = 15
  $80D1  8D 11                      BYTE_PUSH_imm1         +17
  $80D3  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
 >$80D7  40                         LOADL_qimm   ; inline operand = 0
  $80D8  23                         STORE_quick   ; inline operand = 3
 >$80D9  8D 10                      BYTE_PUSH_imm1         +16
  $80DB  DE F0 FF                   LEAL_far               $FFF0
  $80DE  B3                         PUSHL
  $80DF  3D                         PUSH_quick   ; inline operand = 13
  $80E0  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $80E4  40                         LOADL_qimm   ; inline operand = 0
  $80E5  22                         STORE_quick   ; inline operand = 2
 >$80E6  0C                         LOADL_quick   ; inline operand = 12
  $80E7  D2                         LSHIFT1
  $80E8  D2                         LSHIFT1
  $80E9  13                         LOADR_quick   ; inline operand = 3
  $80EA  BB                         ADD
  $80EB  8C EF 84                   LOADR_imm2             $84EF
  $80EE  BB                         ADD
  $80EF  D3                         BYTE_DEREF
  $80F0  B3                         PUSHL
  $80F1  DE F0 FF                   LEAL_far               $FFF0
  $80F4  B3                         PUSHL
  $80F5  02                         LOADL_quick   ; inline operand = 2
  $80F6  B4                         POPR
  $80F7  BB                         ADD
  $80F8  B4                         POPR
  $80F9  B3                         PUSHL
  $80FA  D3                         BYTE_DEREF
  $80FB  DA                         AND
  $80FC  D4                         BYTE_POPSTORE
  $80FD  02                         LOADL_quick   ; inline operand = 2
  $80FE  D0                         INC
  $80FF  22                         STORE_quick   ; inline operand = 2
  $8100  02                         LOADL_quick   ; inline operand = 2
  $8101  8B 10                      BYTE_LOADR_imm1        +16
  $8103  C2                         SCMPLT
  $8104  D7 E6 80                   JUMPT_abs              $80E6
  $8107  8D 10                      BYTE_PUSH_imm1         +16
  $8109  60                         PUSH_qimm   ; inline operand = 0
  $810A  DE F0 FF                   LEAL_far               $FFF0
  $810D  B3                         PUSHL
  $810E  66                         PUSH_qimm   ; inline operand = 6
  $810F  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8113  6F                         PUSH_qimm   ; inline operand = 15
  $8114  8D 11                      BYTE_PUSH_imm1         +17
  $8116  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $811A  03                         LOADL_quick   ; inline operand = 3
  $811B  D0                         INC
  $811C  23                         STORE_quick   ; inline operand = 3
  $811D  03                         LOADL_quick   ; inline operand = 3
  $811E  54                         LOADR_qimm   ; inline operand = 4
  $811F  C2                         SCMPLT
  $8120  D7 D9 80                   JUMPT_abs              $80D9
  $8123  0C                         LOADL_quick   ; inline operand = 12
  $8124  D8 47 81                   JUMPF_abs              $8147
  $8127  8D 10                      BYTE_PUSH_imm1         +16
  $8129  DE F0 FF                   LEAL_far               $FFF0
  $812C  B3                         PUSHL
  $812D  8E CA 84                   PUSH_imm2              $84CA
  $8130  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $8134  8D 10                      BYTE_PUSH_imm1         +16
  $8136  60                         PUSH_qimm   ; inline operand = 0
  $8137  DE F0 FF                   LEAL_far               $FFF0
  $813A  B3                         PUSHL
  $813B  66                         PUSH_qimm   ; inline operand = 6
  $813C  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8140  6F                         PUSH_qimm   ; inline operand = 15
  $8141  8D 11                      BYTE_PUSH_imm1         +17
  $8143  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
 >$8147  CF                         RETURN

; ============================================================
; sub $8148   (frame_off=+0, body @ $814D)   [PRG $4A148]
; ============================================================
  $814D  8D 64                      BYTE_PUSH_imm1         +100
  $814F  E9 8D CE 02                CALL_abs_imm1          $CE8D {native}, $02
  $8153  61                         PUSH_qimm   ; inline operand = 1
  $8154  8E F7 84                   PUSH_imm2              $84F7
  $8157  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $815B  8E E7 00                   PUSH_imm2              $00E7
  $815E  8E 32 B9                   PUSH_imm2              $B932
  $8161  8E 2A B8                   PUSH_imm2              $B82A
  $8164  6B                         PUSH_qimm   ; inline operand = 11
  $8165  8D 18                      BYTE_PUSH_imm1         +24
  $8167  6E                         PUSH_qimm   ; inline operand = 14
  $8168  64                         PUSH_qimm   ; inline operand = 4
  $8169  69                         PUSH_qimm   ; inline operand = 9
  $816A  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $816E  6F                         PUSH_qimm   ; inline operand = 15
  $816F  66                         PUSH_qimm   ; inline operand = 6
  $8170  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $8174  CF                         RETURN

; ============================================================
; sub $8175   (frame_off=+0, body @ $817A)   [PRG $4A175]
; ============================================================
  $817A  60                         PUSH_qimm   ; inline operand = 0
  $817B  8E FF 85                   PUSH_imm2              $85FF
  $817E  8E DE 00                   PUSH_imm2              $00DE
  $8181  61                         PUSH_qimm   ; inline operand = 1
  $8182  E9 3A DE 08                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $08
  $8186  60                         PUSH_qimm   ; inline operand = 0
  $8187  8E 02 85                   PUSH_imm2              $8502
  $818A  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $818E  AC 6D A3                   CALL_abs               $A36D {native}
  $8191  60                         PUSH_qimm   ; inline operand = 0
  $8192  8E 07 85                   PUSH_imm2              $8507
  $8195  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8199  AC 9D A3                   CALL_abs               $A39D {native}
  $819C  60                         PUSH_qimm   ; inline operand = 0
  $819D  8E 09 85                   PUSH_imm2              $8509
  $81A0  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $81A4  AC 40 A3                   CALL_abs               $A340 {native}
  $81A7  60                         PUSH_qimm   ; inline operand = 0
  $81A8  8E 0C 85                   PUSH_imm2              $850C
  $81AB  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $81AF  AA 42 65                   PUSH_abs               $6542
  $81B2  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $81B6  60                         PUSH_qimm   ; inline operand = 0
  $81B7  8E 18 85                   PUSH_imm2              $8518
  $81BA  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $81BE  AC 48 81                   CALL_abs               $8148 {bytecode}
  $81C1  CF                         RETURN

; ============================================================
; sub $81C2   (frame_off=-2, body @ $81C7)   [PRG $4A1C2]
; ============================================================
  $81C7  8D 78                      BYTE_PUSH_imm1         +120
  $81C9  8D 11                      BYTE_PUSH_imm1         +17
  $81CB  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $81CF  8E E2 00                   PUSH_imm2              $00E2
  $81D2  8E 3E A9                   PUSH_imm2              $A93E
  $81D5  8E A8 A8                   PUSH_imm2              $A8A8
  $81D8  6F                         PUSH_qimm   ; inline operand = 15
  $81D9  6A                         PUSH_qimm   ; inline operand = 10
  $81DA  66                         PUSH_qimm   ; inline operand = 6
  $81DB  6B                         PUSH_qimm   ; inline operand = 11
  $81DC  69                         PUSH_qimm   ; inline operand = 9
  $81DD  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $81E1  8E 9A 84                   PUSH_imm2              $849A
  $81E4  60                         PUSH_qimm   ; inline operand = 0
  $81E5  E9 AE 80 04                CALL_abs_imm1          $80AE {bytecode}, $04
  $81E9  8E B4 00                   PUSH_imm2              $00B4
  $81EC  8D 11                      BYTE_PUSH_imm1         +17
  $81EE  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $81F2  8E E2 00                   PUSH_imm2              $00E2
  $81F5  8E 6A AA                   PUSH_imm2              $AA6A
  $81F8  8E D4 A9                   PUSH_imm2              $A9D4
  $81FB  6F                         PUSH_qimm   ; inline operand = 15
  $81FC  6A                         PUSH_qimm   ; inline operand = 10
  $81FD  66                         PUSH_qimm   ; inline operand = 6
  $81FE  6B                         PUSH_qimm   ; inline operand = 11
  $81FF  69                         PUSH_qimm   ; inline operand = 9
  $8200  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8204  8E 96 00                   PUSH_imm2              $0096
  $8207  8D 11                      BYTE_PUSH_imm1         +17
  $8209  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $820D  8E E2 00                   PUSH_imm2              $00E2
  $8210  8E 96 AB                   PUSH_imm2              $AB96
  $8213  8E 00 AB                   PUSH_imm2              $AB00
  $8216  6F                         PUSH_qimm   ; inline operand = 15
  $8217  6A                         PUSH_qimm   ; inline operand = 10
  $8218  66                         PUSH_qimm   ; inline operand = 6
  $8219  6B                         PUSH_qimm   ; inline operand = 11
  $821A  69                         PUSH_qimm   ; inline operand = 9
  $821B  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $821F  8E 2C 01                   PUSH_imm2              $012C
  $8222  8D 11                      BYTE_PUSH_imm1         +17
  $8224  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8228  8E 9A 84                   PUSH_imm2              $849A
  $822B  61                         PUSH_qimm   ; inline operand = 1
  $822C  E9 AE 80 04                CALL_abs_imm1          $80AE {bytecode}, $04
  $8230  60                         PUSH_qimm   ; inline operand = 0
  $8231  60                         PUSH_qimm   ; inline operand = 0
  $8232  60                         PUSH_qimm   ; inline operand = 0
  $8233  67                         PUSH_qimm   ; inline operand = 7
  $8234  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $8238  8D 78                      BYTE_PUSH_imm1         +120
  $823A  8D 11                      BYTE_PUSH_imm1         +17
  $823C  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8240  8E E2 00                   PUSH_imm2              $00E2
  $8243  8E 5C A4                   PUSH_imm2              $A45C
  $8246  8E 1C A4                   PUSH_imm2              $A41C
  $8249  68                         PUSH_qimm   ; inline operand = 8
  $824A  68                         PUSH_qimm   ; inline operand = 8
  $824B  67                         PUSH_qimm   ; inline operand = 7
  $824C  68                         PUSH_qimm   ; inline operand = 8
  $824D  69                         PUSH_qimm   ; inline operand = 9
  $824E  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8252  8E AA 84                   PUSH_imm2              $84AA
  $8255  60                         PUSH_qimm   ; inline operand = 0
  $8256  E9 AE 80 04                CALL_abs_imm1          $80AE {bytecode}, $04
  $825A  8D 78                      BYTE_PUSH_imm1         +120
  $825C  8D 11                      BYTE_PUSH_imm1         +17
  $825E  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8262  42                         LOADL_qimm   ; inline operand = 2
  $8263  A9 8E 72                   BYTE_STORE_abs         $728E
  $8266  40                         LOADL_qimm   ; inline operand = 0
  $8267  2B                         STORE_quick   ; inline operand = 11
 >$8268  61                         PUSH_qimm   ; inline operand = 1
  $8269  8E D4 85                   PUSH_imm2              $85D4
  $826C  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8270  0B                         LOADL_quick   ; inline operand = 11
  $8271  D2                         LSHIFT1
  $8272  8C 35 85                   LOADR_imm2             $8535
  $8275  BB                         ADD
  $8276  B0                         DEREF
  $8277  B3                         PUSHL
  $8278  E9 03 80 02                CALL_abs_imm1          $8003 {bytecode}, $02
  $827C  60                         PUSH_qimm   ; inline operand = 0
  $827D  60                         PUSH_qimm   ; inline operand = 0
  $827E  66                         PUSH_qimm   ; inline operand = 6
  $827F  8D 14                      BYTE_PUSH_imm1         +20
  $8281  8D 11                      BYTE_PUSH_imm1         +17
  $8283  68                         PUSH_qimm   ; inline operand = 8
  $8284  68                         PUSH_qimm   ; inline operand = 8
  $8285  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $8289  0B                         LOADL_quick   ; inline operand = 11
  $828A  D0                         INC
  $828B  2B                         STORE_quick   ; inline operand = 11
  $828C  0B                         LOADL_quick   ; inline operand = 11
  $828D  54                         LOADR_qimm   ; inline operand = 4
  $828E  C2                         SCMPLT
  $828F  D7 68 82                   JUMPT_abs              $8268
  $8292  8D 78                      BYTE_PUSH_imm1         +120
  $8294  8D 11                      BYTE_PUSH_imm1         +17
  $8296  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $829A  8E E2 00                   PUSH_imm2              $00E2
  $829D  8E DC A4                   PUSH_imm2              $A4DC
  $82A0  8E 9C A4                   PUSH_imm2              $A49C
  $82A3  68                         PUSH_qimm   ; inline operand = 8
  $82A4  68                         PUSH_qimm   ; inline operand = 8
  $82A5  67                         PUSH_qimm   ; inline operand = 7
  $82A6  68                         PUSH_qimm   ; inline operand = 8
  $82A7  69                         PUSH_qimm   ; inline operand = 9
  $82A8  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $82AC  8D 32                      BYTE_PUSH_imm1         +50
  $82AE  8D 11                      BYTE_PUSH_imm1         +17
  $82B0  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $82B4  8E E2 00                   PUSH_imm2              $00E2
  $82B7  8E 5C A5                   PUSH_imm2              $A55C
  $82BA  8E 1C A5                   PUSH_imm2              $A51C
  $82BD  68                         PUSH_qimm   ; inline operand = 8
  $82BE  68                         PUSH_qimm   ; inline operand = 8
  $82BF  67                         PUSH_qimm   ; inline operand = 7
  $82C0  68                         PUSH_qimm   ; inline operand = 8
  $82C1  69                         PUSH_qimm   ; inline operand = 9
  $82C2  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $82C6  8D 32                      BYTE_PUSH_imm1         +50
  $82C8  8D 11                      BYTE_PUSH_imm1         +17
  $82CA  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $82CE  8E E2 00                   PUSH_imm2              $00E2
  $82D1  8E DC A5                   PUSH_imm2              $A5DC
  $82D4  8E 9C A5                   PUSH_imm2              $A59C
  $82D7  68                         PUSH_qimm   ; inline operand = 8
  $82D8  68                         PUSH_qimm   ; inline operand = 8
  $82D9  67                         PUSH_qimm   ; inline operand = 7
  $82DA  68                         PUSH_qimm   ; inline operand = 8
  $82DB  69                         PUSH_qimm   ; inline operand = 9
  $82DC  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $82E0  8E 2C 01                   PUSH_imm2              $012C
  $82E3  8D 11                      BYTE_PUSH_imm1         +17
  $82E5  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $82E9  8E AA 84                   PUSH_imm2              $84AA
  $82EC  61                         PUSH_qimm   ; inline operand = 1
  $82ED  E9 AE 80 04                CALL_abs_imm1          $80AE {bytecode}, $04
  $82F1  60                         PUSH_qimm   ; inline operand = 0
  $82F2  60                         PUSH_qimm   ; inline operand = 0
  $82F3  60                         PUSH_qimm   ; inline operand = 0
  $82F4  67                         PUSH_qimm   ; inline operand = 7
  $82F5  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $82F9  8E B4 00                   PUSH_imm2              $00B4
  $82FC  8D 11                      BYTE_PUSH_imm1         +17
  $82FE  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8302  8E E2 00                   PUSH_imm2              $00E2
  $8305  8E 74 AC                   PUSH_imm2              $AC74
  $8308  8E 2C AC                   PUSH_imm2              $AC2C
  $830B  66                         PUSH_qimm   ; inline operand = 6
  $830C  6C                         PUSH_qimm   ; inline operand = 12
  $830D  6E                         PUSH_qimm   ; inline operand = 14
  $830E  6E                         PUSH_qimm   ; inline operand = 14
  $830F  69                         PUSH_qimm   ; inline operand = 9
  $8310  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8314  8E 9A 84                   PUSH_imm2              $849A
  $8317  60                         PUSH_qimm   ; inline operand = 0
  $8318  E9 AE 80 04                CALL_abs_imm1          $80AE {bytecode}, $04
  $831C  61                         PUSH_qimm   ; inline operand = 1
  $831D  8D 16                      BYTE_PUSH_imm1         +22
  $831F  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8323  8E 58 02                   PUSH_imm2              $0258
  $8326  8D 11                      BYTE_PUSH_imm1         +17
  $8328  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $832C  8E 9A 84                   PUSH_imm2              $849A
  $832F  61                         PUSH_qimm   ; inline operand = 1
  $8330  E9 AE 80 04                CALL_abs_imm1          $80AE {bytecode}, $04
  $8334  60                         PUSH_qimm   ; inline operand = 0
  $8335  60                         PUSH_qimm   ; inline operand = 0
  $8336  60                         PUSH_qimm   ; inline operand = 0
  $8337  67                         PUSH_qimm   ; inline operand = 7
  $8338  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $833C  CF                         RETURN

; ============================================================
; sub $833D   (frame_off=-2, body @ $8342)   [PRG $4A33D]
; ============================================================
  $8342  44                         LOADL_qimm   ; inline operand = 4
  $8343  CD                         SWAP
  $8344  A5 87 6B                   BYTE_LOADL_abs         $6B87 (os_mode_flags)
  $8347  DB                         OR
  $8348  A9 87 6B                   BYTE_STORE_abs         $6B87 (os_mode_flags)
  $834B  48                         LOADL_qimm   ; inline operand = 8
  $834C  CD                         SWAP
  $834D  A5 87 6B                   BYTE_LOADL_abs         $6B87 (os_mode_flags)
  $8350  DB                         OR
  $8351  A9 87 6B                   BYTE_STORE_abs         $6B87 (os_mode_flags)
  $8354  AC D6 E0                   CALL_abs               $E0D6 {native}
  $8357  A5 67 72                   BYTE_LOADL_abs         $7267
  $835A  55                         LOADR_qimm   ; inline operand = 5
  $835B  C6                         UCMPLT
  $835C  D8 69 83                   JUMPF_abs              $8369
  $835F  6F                         PUSH_qimm   ; inline operand = 15
  $8360  E9 8C E0 02                CALL_abs_imm1          $E08C {native}, $02
  $8364  61                         PUSH_qimm   ; inline operand = 1
  $8365  E9 C1 E0 02                CALL_abs_imm1          $E0C1 {native}, $02
 >$8369  A5 67 72                   BYTE_LOADL_abs         $7267
  $836C  D5 FF FF 04 00 3A 84 7B 83 9F 83 CA ... SWITCH_contig          limit=4   ; .table 4 word targets (contiguous); SWITCH 1=>$837B 2=>$839F 3=>$83CA 4=>$8423 default=>$843A
 >$837B  AC 75 81                   CALL_abs               $8175 {bytecode}
  $837E  61                         PUSH_qimm   ; inline operand = 1
  $837F  8E DC 85                   PUSH_imm2              $85DC
  $8382  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8386  AC 48 81                   CALL_abs               $8148 {bytecode}
  $8389  61                         PUSH_qimm   ; inline operand = 1
  $838A  8E 24 86                   PUSH_imm2              $8624
  $838D  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8391  AC 48 81                   CALL_abs               $8148 {bytecode}
  $8394  61                         PUSH_qimm   ; inline operand = 1
  $8395  8E 6E 86                   PUSH_imm2              $866E
  $8398  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $839C  D6 23 84                   JUMP_abs               $8423
 >$839F  AC 75 81                   CALL_abs               $8175 {bytecode}
  $83A2  8D 14                      BYTE_PUSH_imm1         +20
  $83A4  E9 8D CE 02                CALL_abs_imm1          $CE8D {native}, $02
  $83A8  61                         PUSH_qimm   ; inline operand = 1
  $83A9  8E BB 86                   PUSH_imm2              $86BB
  $83AC  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $83B0  AC 48 81                   CALL_abs               $8148 {bytecode}
  $83B3  8D 14                      BYTE_PUSH_imm1         +20
  $83B5  E9 8D CE 02                CALL_abs_imm1          $CE8D {native}, $02
  $83B9  61                         PUSH_qimm   ; inline operand = 1
  $83BA  8E F2 86                   PUSH_imm2              $86F2
  $83BD  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $83C1  8D 14                      BYTE_PUSH_imm1         +20
  $83C3  E9 8D CE 02                CALL_abs_imm1          $CE8D {native}, $02
  $83C7  D6 23 84                   JUMP_abs               $8423
 >$83CA  60                         PUSH_qimm   ; inline operand = 0
  $83CB  8E FF 85                   PUSH_imm2              $85FF
  $83CE  8E DE 00                   PUSH_imm2              $00DE
  $83D1  61                         PUSH_qimm   ; inline operand = 1
  $83D2  E9 3A DE 08                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $08
  $83D6  A5 68 70                   BYTE_LOADL_abs         $7068
  $83D9  2B                         STORE_quick   ; inline operand = 11
  $83DA  40                         LOADL_qimm   ; inline operand = 0
  $83DB  A9 68 70                   BYTE_STORE_abs         $7068
  $83DE  60                         PUSH_qimm   ; inline operand = 0
  $83DF  8E 3F 87                   PUSH_imm2              $873F
  $83E2  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $83E6  AA 42 65                   PUSH_abs               $6542
  $83E9  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $83ED  60                         PUSH_qimm   ; inline operand = 0
  $83EE  8E 6C 87                   PUSH_imm2              $876C
  $83F1  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $83F5  AC 6D A3                   CALL_abs               $A36D {native}
  $83F8  60                         PUSH_qimm   ; inline operand = 0
  $83F9  8E 7E 87                   PUSH_imm2              $877E
  $83FC  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8400  AC 9D A3                   CALL_abs               $A39D {native}
  $8403  60                         PUSH_qimm   ; inline operand = 0
  $8404  8E 80 87                   PUSH_imm2              $8780
  $8407  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $840B  AC 40 A3                   CALL_abs               $A340 {native}
  $840E  8D 3C                      BYTE_PUSH_imm1         +60
  $8410  E9 8D CE 02                CALL_abs_imm1          $CE8D {native}, $02
  $8414  AC 48 81                   CALL_abs               $8148 {bytecode}
  $8417  61                         PUSH_qimm   ; inline operand = 1
  $8418  8E 83 87                   PUSH_imm2              $8783
  $841B  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $841F  0B                         LOADL_quick   ; inline operand = 11
  $8420  A9 68 70                   BYTE_STORE_abs         $7068
 >$8423  60                         PUSH_qimm   ; inline operand = 0
  $8424  E9 C1 E0 02                CALL_abs_imm1          $E0C1 {native}, $02
  $8428  8D 78                      BYTE_PUSH_imm1         +120
  $842A  E9 8D CE 02                CALL_abs_imm1          $CE8D {native}, $02
  $842E  8E F1 88                   PUSH_imm2              $88F1
  $8431  8E DE 00                   PUSH_imm2              $00DE
  $8434  61                         PUSH_qimm   ; inline operand = 1
  $8435  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $8439  CF                         RETURN
 >$843A  AC 37 CE                   CALL_abs               $CE37 {native}
  $843D  8D 40                      BYTE_PUSH_imm1         +64
  $843F  60                         PUSH_qimm   ; inline operand = 0
  $8440  6C                         PUSH_qimm   ; inline operand = 12
  $8441  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $8445  60                         PUSH_qimm   ; inline operand = 0
  $8446  60                         PUSH_qimm   ; inline operand = 0
  $8447  8D 12                      BYTE_PUSH_imm1         +18
  $8449  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $844D  8E E6 00                   PUSH_imm2              $00E6
  $8450  61                         PUSH_qimm   ; inline operand = 1
  $8451  62                         PUSH_qimm   ; inline operand = 2
  $8452  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $8456  AC C2 81                   CALL_abs               $81C2 {bytecode}
  $8459  8D 3C                      BYTE_PUSH_imm1         +60
  $845B  8D 11                      BYTE_PUSH_imm1         +17
  $845D  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $8461  8E E2 00                   PUSH_imm2              $00E2
  $8464  8E B0 A0                   PUSH_imm2              $A0B0
  $8467  8E 74 A0                   PUSH_imm2              $A074
  $846A  66                         PUSH_qimm   ; inline operand = 6
  $846B  6A                         PUSH_qimm   ; inline operand = 10
  $846C  67                         PUSH_qimm   ; inline operand = 7
  $846D  6B                         PUSH_qimm   ; inline operand = 11
  $846E  69                         PUSH_qimm   ; inline operand = 9
  $846F  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8473  8E E2 00                   PUSH_imm2              $00E2
  $8476  8E 72 A8                   PUSH_imm2              $A872
  $8479  8E 3C A8                   PUSH_imm2              $A83C
  $847C  63                         PUSH_qimm   ; inline operand = 3
  $847D  8D 12                      BYTE_PUSH_imm1         +18
  $847F  6F                         PUSH_qimm   ; inline operand = 15
  $8480  67                         PUSH_qimm   ; inline operand = 7
  $8481  69                         PUSH_qimm   ; inline operand = 9
  $8482  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8486  8E BA 84                   PUSH_imm2              $84BA
  $8489  60                         PUSH_qimm   ; inline operand = 0
  $848A  E9 AE 80 04                CALL_abs_imm1          $80AE {bytecode}, $04
 >$848E  8D 18                      BYTE_PUSH_imm1         +24
  $8490  E9 D4 EE 02                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $02
  $8494  D7 8E 84                   JUMPT_abs              $848E
 >$8497  D6 97 84                   JUMP_abs               $8497

