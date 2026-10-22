VM bytecode disassembly
  ROM:          Uncharted Waters (USA).nes
  mode:         bulk dump of bank 18
  opcode spec:  vm-opcodes-v2.toml via nobunaga_vm.OPCODE_INFO (execution-validated lengths)
  labels:       0 CPU addresses named

  bank 18: found 37 bytecode-subroutine stubs

; ============================================================
; sub $8003   (frame_off=+0, body @ $8008)   [PRG $24003]
; ============================================================
  $8008  A5 67 70                   BYTE_LOADL_abs         $7067
  $800B  D7 12 80                   JUMPT_abs              $8012
  $800E  66                         PUSH_qimm   ; inline operand = 6
  $800F  D6 28 80                   JUMP_abs               $8028
 >$8012  A0 0B 00                   BYTE_LOADL_far         $000B
  $8015  5B                         LOADR_qimm   ; inline operand = 11
  $8016  C8                         UCMPGT
  $8017  D8 27 80                   JUMPF_abs              $8027
  $801A  A0 0B 00                   BYTE_LOADL_far         $000B
  $801D  8B 1F                      BYTE_LOADR_imm1        +31
  $801F  C6                         UCMPLT
  $8020  D8 27 80                   JUMPF_abs              $8027
  $8023  68                         PUSH_qimm   ; inline operand = 8
  $8024  D6 28 80                   JUMP_abs               $8028
 >$8027  67                         PUSH_qimm   ; inline operand = 7
 >$8028  E9 8C E0 02                CALL_abs_imm1          $E08C {native}, $02
  $802C  61                         PUSH_qimm   ; inline operand = 1
  $802D  E9 C1 E0 02                CALL_abs_imm1          $E0C1 {native}, $02
  $8031  CF                         RETURN

; ============================================================
; sub $8032   (frame_off=-4, body @ $8037)   [PRG $24032]
; ============================================================
  $8037  A0 0B 00                   BYTE_LOADL_far         $000B
  $803A  8B 32                      BYTE_LOADR_imm1        +50
  $803C  C9                         UCMPGE
  $803D  D8 4B 80                   JUMPF_abs              $804B
  $8040  A0 0B 00                   BYTE_LOADL_far         $000B
  $8043  8C 00 93                   LOADR_imm2             $9300
  $8046  BB                         ADD
  $8047  D3                         BYTE_DEREF
  $8048  2B                         STORE_quick   ; inline operand = 11
  $8049  0B                         LOADL_quick   ; inline operand = 11
  $804A  CF                         RETURN
 >$804B  A0 0B 00                   BYTE_LOADL_far         $000B
  $804E  52                         LOADR_qimm   ; inline operand = 2
  $804F  C0                         CMPEQ
  $8050  D7 5B 80                   JUMPT_abs              $805B
  $8053  A0 0B 00                   BYTE_LOADL_far         $000B
  $8056  5C                         LOADR_qimm   ; inline operand = 12
  $8057  C0                         CMPEQ
  $8058  D8 5D 80                   JUMPF_abs              $805D
 >$805B  45                         LOADL_qimm   ; inline operand = 5
  $805C  CF                         RETURN
 >$805D  A0 0B 00                   BYTE_LOADL_far         $000B
  $8060  55                         LOADR_qimm   ; inline operand = 5
  $8061  B5                         MULT
  $8062  8C 0A B5                   LOADR_imm2             $B50A
  $8065  BB                         ADD
  $8066  2A                         STORE_quick   ; inline operand = 10
  $8067  3A                         PUSH_quick   ; inline operand = 10
  $8068  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $806C  2B                         STORE_quick   ; inline operand = 11
  $806D  0B                         LOADL_quick   ; inline operand = 11
  $806E  CF                         RETURN

; ============================================================
; sub $806F   (frame_off=-4, body @ $8074)   [PRG $2406F]
; ============================================================
  $8074  0C                         LOADL_quick   ; inline operand = 12
  $8075  53                         LOADR_qimm   ; inline operand = 3
  $8076  C6                         UCMPLT
  $8077  D8 7E 80                   JUMPF_abs              $807E
  $807A  40                         LOADL_qimm   ; inline operand = 0
  $807B  D6 81 80                   JUMP_abs               $8081
 >$807E  0C                         LOADL_quick   ; inline operand = 12
  $807F  8F FE                      BYTE_ADD_imm1          -2
 >$8081  2A                         STORE_quick   ; inline operand = 10
  $8082  AA 96 73                   PUSH_abs               $7396
  $8085  0A                         LOADL_quick   ; inline operand = 10
  $8086  D2                         LSHIFT1
  $8087  D2                         LSHIFT1
  $8088  B3                         PUSHL
  $8089  0D                         LOADL_quick   ; inline operand = 13
  $808A  54                         LOADR_qimm   ; inline operand = 4
  $808B  BD                         LSHIFT
  $808C  B4                         POPR
  $808D  BB                         ADD
  $808E  8C 48 93                   LOADR_imm2             $9348
  $8091  BB                         ADD
  $8092  B0                         DEREF
  $8093  B3                         PUSHL
  $8094  0A                         LOADL_quick   ; inline operand = 10
  $8095  D2                         LSHIFT1
  $8096  D2                         LSHIFT1
  $8097  B3                         PUSHL
  $8098  0D                         LOADL_quick   ; inline operand = 13
  $8099  54                         LOADR_qimm   ; inline operand = 4
  $809A  BD                         LSHIFT
  $809B  B4                         POPR
  $809C  BB                         ADD
  $809D  8C 46 93                   LOADR_imm2             $9346
  $80A0  BB                         ADD
  $80A1  B0                         DEREF
  $80A2  B3                         PUSHL
  $80A3  0A                         LOADL_quick   ; inline operand = 10
  $80A4  D2                         LSHIFT1
  $80A5  8C F3 93                   LOADR_imm2             $93F3
  $80A8  BB                         ADD
  $80A9  D3                         BYTE_DEREF
  $80AA  B3                         PUSHL
  $80AB  0A                         LOADL_quick   ; inline operand = 10
  $80AC  D2                         LSHIFT1
  $80AD  8C F2 93                   LOADR_imm2             $93F2
  $80B0  BB                         ADD
  $80B1  D3                         BYTE_DEREF
  $80B2  B3                         PUSHL
  $80B3  0C                         LOADL_quick   ; inline operand = 12
  $80B4  D2                         LSHIFT1
  $80B5  8C E7 93                   LOADR_imm2             $93E7
  $80B8  BB                         ADD
  $80B9  D3                         BYTE_DEREF
  $80BA  B3                         PUSHL
  $80BB  0C                         LOADL_quick   ; inline operand = 12
  $80BC  D2                         LSHIFT1
  $80BD  8C E6 93                   LOADR_imm2             $93E6
  $80C0  BB                         ADD
  $80C1  D3                         BYTE_DEREF
  $80C2  B3                         PUSHL
  $80C3  69                         PUSH_qimm   ; inline operand = 9
  $80C4  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $80C8  CF                         RETURN

; ============================================================
; sub $80C9   (frame_off=-7, body @ $80CE)   [PRG $240C9]
; ============================================================
  $80CE  8A E1 00                   LOADL_imm2             $00E1
  $80D1  A8 96 73                   STORE_abs              $7396
  $80D4  A0 0B 00                   BYTE_LOADL_far         $000B
  $80D7  B3                         PUSHL
  $80D8  E9 32 80 02                CALL_abs_imm1          $8032 {bytecode}, $02
  $80DC  85 FB                      STORE_near             $FB
  $80DE  81 FB                      LOADL_near             $FB
  $80E0  53                         LOADR_qimm   ; inline operand = 3
  $80E1  C0                         CMPEQ
  $80E2  D7 EC 80                   JUMPT_abs              $80EC
  $80E5  81 FB                      LOADL_near             $FB
  $80E7  55                         LOADR_qimm   ; inline operand = 5
  $80E8  C0                         CMPEQ
  $80E9  D8 F2 80                   JUMPF_abs              $80F2
 >$80EC  8A E0 00                   LOADL_imm2             $00E0
  $80EF  A8 96 73                   STORE_abs              $7396
 >$80F2  AA 96 73                   PUSH_abs               $7396
  $80F5  81 FB                      LOADL_near             $FB
  $80F7  D2                         LSHIFT1
  $80F8  D2                         LSHIFT1
  $80F9  8C C8 93                   LOADR_imm2             $93C8
  $80FC  BB                         ADD
  $80FD  B0                         DEREF
  $80FE  B3                         PUSHL
  $80FF  81 FB                      LOADL_near             $FB
  $8101  D2                         LSHIFT1
  $8102  D2                         LSHIFT1
  $8103  8C C6 93                   LOADR_imm2             $93C6
  $8106  BB                         ADD
  $8107  B0                         DEREF
  $8108  B3                         PUSHL
  $8109  6E                         PUSH_qimm   ; inline operand = 14
  $810A  8D 1C                      BYTE_PUSH_imm1         +28
  $810C  66                         PUSH_qimm   ; inline operand = 6
  $810D  62                         PUSH_qimm   ; inline operand = 2
  $810E  69                         PUSH_qimm   ; inline operand = 9
  $810F  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8113  A0 0B 00                   BYTE_LOADL_far         $000B
  $8116  8C 76 6F                   LOADR_imm2             $6F76
  $8119  BB                         ADD
  $811A  D3                         BYTE_DEREF
  $811B  A2 FF FF                   BYTE_STORE_far         $FFFF
  $811E  40                         LOADL_qimm   ; inline operand = 0
  $811F  A9 66 70                   BYTE_STORE_abs         $7066
  $8122  40                         LOADL_qimm   ; inline operand = 0
  $8123  D6 9D 81                   JUMP_abs               $819D
 >$8126  A0 0B 00                   BYTE_LOADL_far         $000B
  $8129  8B 32                      BYTE_LOADR_imm1        +50
  $812B  C6                         UCMPLT
  $812C  D8 CE 81                   JUMPF_abs              $81CE
  $812F  81 FD                      LOADL_near             $FD
  $8131  51                         LOADR_qimm   ; inline operand = 1
  $8132  C0                         CMPEQ
  $8133  D8 67 81                   JUMPF_abs              $8167
  $8136  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8139  54                         LOADR_qimm   ; inline operand = 4
  $813A  DA                         AND
  $813B  D7 67 81                   JUMPT_abs              $8167
  $813E  87 FB                      PUSH_near              $FB
  $8140  61                         PUSH_qimm   ; inline operand = 1
  $8141  E9 6F 80 04                CALL_abs_imm1          $806F {bytecode}, $04
  $8145  40                         LOADL_qimm   ; inline operand = 0
  $8146  85 F9                      STORE_near             $F9
 >$8148  60                         PUSH_qimm   ; inline operand = 0
  $8149  66                         PUSH_qimm   ; inline operand = 6
  $814A  81 F9                      LOADL_near             $F9
  $814C  8B 1C                      BYTE_LOADR_imm1        +28
  $814E  B5                         MULT
  $814F  8C 9E 73                   LOADR_imm2             $739E
  $8152  BB                         ADD
  $8153  B3                         PUSHL
  $8154  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $8158  81 F9                      LOADL_near             $F9
  $815A  D0                         INC
  $815B  85 F9                      STORE_near             $F9
  $815D  81 F9                      LOADL_near             $F9
  $815F  54                         LOADR_qimm   ; inline operand = 4
  $8160  C6                         UCMPLT
  $8161  D7 48 81                   JUMPT_abs              $8148
  $8164  D6 9A 81                   JUMP_abs               $819A
 >$8167  81 FD                      LOADL_near             $FD
  $8169  52                         LOADR_qimm   ; inline operand = 2
  $816A  C0                         CMPEQ
  $816B  D8 C4 81                   JUMPF_abs              $81C4
  $816E  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8171  8B 10                      BYTE_LOADR_imm1        +16
  $8173  DA                         AND
  $8174  D8 C4 81                   JUMPF_abs              $81C4
  $8177  87 FB                      PUSH_near              $FB
  $8179  65                         PUSH_qimm   ; inline operand = 5
  $817A  E9 6F 80 04                CALL_abs_imm1          $806F {bytecode}, $04
  $817E  61                         PUSH_qimm   ; inline operand = 1
  $817F  63                         PUSH_qimm   ; inline operand = 3
  $8180  8E 24 74                   PUSH_imm2              $7424
  $8183  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
 >$8187  81 FD                      LOADL_near             $FD
  $8189  58                         LOADR_qimm   ; inline operand = 8
  $818A  C6                         UCMPLT
  $818B  D8 9A 81                   JUMPF_abs              $819A
  $818E  41                         LOADL_qimm   ; inline operand = 1
  $818F  83 FD                      LOADR_near             $FD
  $8191  BD                         LSHIFT
  $8192  CD                         SWAP
  $8193  A5 66 70                   BYTE_LOADL_abs         $7066
  $8196  DB                         OR
  $8197  A9 66 70                   BYTE_STORE_abs         $7066
 >$819A  81 FD                      LOADL_near             $FD
  $819C  D0                         INC
 >$819D  85 FD                      STORE_near             $FD
  $819F  81 FD                      LOADL_near             $FD
  $81A1  59                         LOADR_qimm   ; inline operand = 9
  $81A2  C6                         UCMPLT
  $81A3  D7 26 81                   JUMPT_abs              $8126
  $81A6  8D 10                      BYTE_PUSH_imm1         +16
  $81A8  60                         PUSH_qimm   ; inline operand = 0
  $81A9  81 FB                      LOADL_near             $FB
  $81AB  54                         LOADR_qimm   ; inline operand = 4
  $81AC  BD                         LSHIFT
  $81AD  8C B2 92                   LOADR_imm2             $92B2
  $81B0  BB                         ADD
  $81B1  B3                         PUSHL
  $81B2  66                         PUSH_qimm   ; inline operand = 6
  $81B3  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $81B7  8D 10                      BYTE_PUSH_imm1         +16
  $81B9  8D 10                      BYTE_PUSH_imm1         +16
  $81BB  8E 76 F3                   PUSH_imm2              $F376
  $81BE  66                         PUSH_qimm   ; inline operand = 6
  $81BF  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $81C3  CF                         RETURN
 >$81C4  81 FD                      LOADL_near             $FD
  $81C6  52                         LOADR_qimm   ; inline operand = 2
  $81C7  C0                         CMPEQ
  $81C8  D8 87 81                   JUMPF_abs              $8187
  $81CB  D6 9A 81                   JUMP_abs               $819A
 >$81CE  81 FD                      LOADL_near             $FD
  $81D0  56                         LOADR_qimm   ; inline operand = 6
  $81D1  C6                         UCMPLT
  $81D2  D8 87 81                   JUMPF_abs              $8187
  $81D5  87 FB                      PUSH_near              $FB
  $81D7  87 FD                      PUSH_near              $FD
  $81D9  E9 6F 80 04                CALL_abs_imm1          $806F {bytecode}, $04
  $81DD  D6 9A 81                   JUMP_abs               $819A

; ============================================================
; sub $81E0   (frame_off=-4, body @ $81E5)   [PRG $241E0]
; ============================================================
  $81E5  0C                         LOADL_quick   ; inline operand = 12
  $81E6  2A                         STORE_quick   ; inline operand = 10
  $81E7  40                         LOADL_qimm   ; inline operand = 0
  $81E8  2B                         STORE_quick   ; inline operand = 11
  $81E9  D6 F2 81                   JUMP_abs               $81F2
 >$81EC  0B                         LOADL_quick   ; inline operand = 11
  $81ED  D0                         INC
  $81EE  2B                         STORE_quick   ; inline operand = 11
  $81EF  0A                         LOADL_quick   ; inline operand = 10
  $81F0  D0                         INC
  $81F1  2A                         STORE_quick   ; inline operand = 10
 >$81F2  3A                         PUSH_quick   ; inline operand = 10
  $81F3  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $81F7  D7 EC 81                   JUMPT_abs              $81EC
  $81FA  64                         PUSH_qimm   ; inline operand = 4
  $81FB  89 18                      BYTE_LOADL_imm1        +24
  $81FD  1B                         LOADR_quick   ; inline operand = 11
  $81FE  B8                         UDIV
  $81FF  B3                         PUSHL
  $8200  89 1E                      BYTE_LOADL_imm1        +30
  $8202  1B                         LOADR_quick   ; inline operand = 11
  $8203  BC                         SUB
  $8204  B4                         POPR
  $8205  BC                         SUB
  $8206  B3                         PUSHL
  $8207  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $820B  3C                         PUSH_quick   ; inline operand = 12
  $820C  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $8210  CF                         RETURN

; ============================================================
; sub $8211   (frame_off=-20, body @ $8216)   [PRG $24211]
; ============================================================
  $8216  A5 67 70                   BYTE_LOADL_abs         $7067
  $8219  8B 13                      BYTE_LOADR_imm1        +19
  $821B  B5                         MULT
  $821C  8C D8 AF                   LOADR_imm2             $AFD8
  $821F  BB                         ADD
  $8220  2A                         STORE_quick   ; inline operand = 10
  $8221  A5 68 70                   BYTE_LOADL_abs         $7068
  $8224  51                         LOADR_qimm   ; inline operand = 1
  $8225  C1                         CMPNE
  $8226  D8 31 82                   JUMPF_abs              $8231
  $8229  41                         LOADL_qimm   ; inline operand = 1
  $822A  A9 68 70                   BYTE_STORE_abs         $7068
  $822D  40                         LOADL_qimm   ; inline operand = 0
  $822E  A8 69 70                   STORE_abs              $7069
 >$8231  AC 75 A6                   CALL_abs               $A675 {native}
  $8234  AC 37 CE                   CALL_abs               $CE37 {native}
  $8237  A5 63 66                   BYTE_LOADL_abs         $6663
  $823A  B3                         PUSHL
  $823B  E9 03 80 02                CALL_abs_imm1          $8003 {bytecode}, $02
  $823F  8E E1 00                   PUSH_imm2              $00E1
  $8242  8E 4C A5                   PUSH_imm2              $A54C
  $8245  8E DC A4                   PUSH_imm2              $A4DC
  $8248  64                         PUSH_qimm   ; inline operand = 4
  $8249  8D 1C                      BYTE_PUSH_imm1         +28
  $824B  62                         PUSH_qimm   ; inline operand = 2
  $824C  62                         PUSH_qimm   ; inline operand = 2
  $824D  69                         PUSH_qimm   ; inline operand = 9
  $824E  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8252  3A                         PUSH_quick   ; inline operand = 10
  $8253  E9 E0 81 02                CALL_abs_imm1          $81E0 {bytecode}, $02
  $8257  AC 40 A3                   CALL_abs               $A340 {native}
  $825A  AC 6D A3                   CALL_abs               $A36D {native}
  $825D  AC 9D A3                   CALL_abs               $A39D {native}
  $8260  8E 83 86                   PUSH_imm2              $8683
  $8263  8E DE 00                   PUSH_imm2              $00DE
  $8266  61                         PUSH_qimm   ; inline operand = 1
  $8267  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $826B  A5 67 70                   BYTE_LOADL_abs         $7067
  $826E  B3                         PUSHL
  $826F  E9 C9 80 02                CALL_abs_imm1          $80C9 {bytecode}, $02
  $8273  60                         PUSH_qimm   ; inline operand = 0
  $8274  8D 12                      BYTE_PUSH_imm1         +18
  $8276  8D 1C                      BYTE_PUSH_imm1         +28
  $8278  62                         PUSH_qimm   ; inline operand = 2
  $8279  62                         PUSH_qimm   ; inline operand = 2
  $827A  E9 05 A4 0A                CALL_abs_imm1          $A405 {native}, $0A
  $827E  CF                         RETURN

; ============================================================
; sub $827F   (frame_off=-12, body @ $8284)   [PRG $2427F]
; ============================================================
  $8284  61                         PUSH_qimm   ; inline operand = 1
  $8285  6E                         PUSH_qimm   ; inline operand = 14
  $8286  8D 1C                      BYTE_PUSH_imm1         +28
  $8288  66                         PUSH_qimm   ; inline operand = 6
  $8289  62                         PUSH_qimm   ; inline operand = 2
  $828A  E9 05 A4 0A                CALL_abs_imm1          $A405 {native}, $0A
  $828E  A4 69 72                   LOADL_abs              $7269
  $8291  2A                         STORE_quick   ; inline operand = 10
  $8292  A4 69 72                   LOADL_abs              $7269
  $8295  90 88 01                   ADD_imm2               $0188
  $8298  2B                         STORE_quick   ; inline operand = 11
  $8299  61                         PUSH_qimm   ; inline operand = 1
  $829A  6E                         PUSH_qimm   ; inline operand = 14
  $829B  8D 1C                      BYTE_PUSH_imm1         +28
  $829D  66                         PUSH_qimm   ; inline operand = 6
  $829E  62                         PUSH_qimm   ; inline operand = 2
  $829F  E9 05 A4 0A                CALL_abs_imm1          $A405 {native}, $0A
  $82A3  61                         PUSH_qimm   ; inline operand = 1
  $82A4  0C                         LOADL_quick   ; inline operand = 12
  $82A5  D2                         LSHIFT1
  $82A6  8C 09 94                   LOADR_imm2             $9409
  $82A9  BB                         ADD
  $82AA  D3                         BYTE_DEREF
  $82AB  B3                         PUSHL
  $82AC  0C                         LOADL_quick   ; inline operand = 12
  $82AD  D2                         LSHIFT1
  $82AE  8C 08 94                   LOADR_imm2             $9408
  $82B1  BB                         ADD
  $82B2  D3                         BYTE_DEREF
  $82B3  B3                         PUSHL
  $82B4  0C                         LOADL_quick   ; inline operand = 12
  $82B5  D2                         LSHIFT1
  $82B6  8C FB 93                   LOADR_imm2             $93FB
  $82B9  BB                         ADD
  $82BA  D3                         BYTE_DEREF
  $82BB  B3                         PUSHL
  $82BC  0C                         LOADL_quick   ; inline operand = 12
  $82BD  D2                         LSHIFT1
  $82BE  8C FA 93                   LOADR_imm2             $93FA
  $82C1  BB                         ADD
  $82C2  D3                         BYTE_DEREF
  $82C3  B3                         PUSHL
  $82C4  E9 05 A4 0A                CALL_abs_imm1          $A405 {native}, $0A
  $82C8  0A                         LOADL_quick   ; inline operand = 10
  $82C9  90 78 FE                   ADD_imm2               $FE78
  $82CC  A8 69 72                   STORE_abs              $7269
  $82CF  61                         PUSH_qimm   ; inline operand = 1
  $82D0  60                         PUSH_qimm   ; inline operand = 0
  $82D1  63                         PUSH_qimm   ; inline operand = 3
  $82D2  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $82D6  0A                         LOADL_quick   ; inline operand = 10
  $82D7  29                         STORE_quick   ; inline operand = 9
  $82D8  40                         LOADL_qimm   ; inline operand = 0
  $82D9  D6 E9 82                   JUMP_abs               $82E9
 >$82DC  8D 3F                      BYTE_PUSH_imm1         +63
  $82DE  09                         LOADL_quick   ; inline operand = 9
  $82DF  D0                         INC
  $82E0  29                         STORE_quick   ; inline operand = 9
  $82E1  D1                         DEC
  $82E2  B4                         POPR
  $82E3  B3                         PUSHL
  $82E4  D3                         BYTE_DEREF
  $82E5  DA                         AND
  $82E6  D4                         BYTE_POPSTORE
  $82E7  07                         LOADL_quick   ; inline operand = 7
  $82E8  D0                         INC
 >$82E9  27                         STORE_quick   ; inline operand = 7
  $82EA  07                         LOADL_quick   ; inline operand = 7
  $82EB  8C 88 01                   LOADR_imm2             $0188
  $82EE  C6                         UCMPLT
  $82EF  D7 DC 82                   JUMPT_abs              $82DC
  $82F2  0C                         LOADL_quick   ; inline operand = 12
  $82F3  D2                         LSHIFT1
  $82F4  8C FA 93                   LOADR_imm2             $93FA
  $82F7  BB                         ADD
  $82F8  D3                         BYTE_DEREF
  $82F9  B3                         PUSHL
  $82FA  0C                         LOADL_quick   ; inline operand = 12
  $82FB  D2                         LSHIFT1
  $82FC  8C FB 93                   LOADR_imm2             $93FB
  $82FF  BB                         ADD
  $8300  D3                         BYTE_DEREF
  $8301  8F FA                      BYTE_ADD_imm1          -6
  $8303  8B 1C                      BYTE_LOADR_imm1        +28
  $8305  B5                         MULT
  $8306  B4                         POPR
  $8307  BB                         ADD
  $8308  8F FE                      BYTE_ADD_imm1          -2
  $830A  26                         STORE_quick   ; inline operand = 6
  $830B  0A                         LOADL_quick   ; inline operand = 10
  $830C  16                         LOADR_quick   ; inline operand = 6
  $830D  BB                         ADD
  $830E  29                         STORE_quick   ; inline operand = 9
  $830F  0B                         LOADL_quick   ; inline operand = 11
  $8310  28                         STORE_quick   ; inline operand = 8
  $8311  40                         LOADL_qimm   ; inline operand = 0
  $8312  D6 36 83                   JUMP_abs               $8336
 >$8315  0C                         LOADL_quick   ; inline operand = 12
  $8316  D2                         LSHIFT1
  $8317  8C 08 94                   LOADR_imm2             $9408
  $831A  BB                         ADD
  $831B  D3                         BYTE_DEREF
  $831C  B3                         PUSHL
  $831D  39                         PUSH_quick   ; inline operand = 9
  $831E  38                         PUSH_quick   ; inline operand = 8
  $831F  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $8323  89 1C                      BYTE_LOADL_imm1        +28
  $8325  CD                         SWAP
  $8326  09                         LOADL_quick   ; inline operand = 9
  $8327  BB                         ADD
  $8328  29                         STORE_quick   ; inline operand = 9
  $8329  0C                         LOADL_quick   ; inline operand = 12
  $832A  D2                         LSHIFT1
  $832B  8C 08 94                   LOADR_imm2             $9408
  $832E  BB                         ADD
  $832F  D3                         BYTE_DEREF
  $8330  CD                         SWAP
  $8331  08                         LOADL_quick   ; inline operand = 8
  $8332  BB                         ADD
  $8333  28                         STORE_quick   ; inline operand = 8
  $8334  07                         LOADL_quick   ; inline operand = 7
  $8335  D0                         INC
 >$8336  27                         STORE_quick   ; inline operand = 7
  $8337  0C                         LOADL_quick   ; inline operand = 12
  $8338  D2                         LSHIFT1
  $8339  8C 09 94                   LOADR_imm2             $9409
  $833C  BB                         ADD
  $833D  D3                         BYTE_DEREF
  $833E  B3                         PUSHL
  $833F  07                         LOADL_quick   ; inline operand = 7
  $8340  B4                         POPR
  $8341  C6                         UCMPLT
  $8342  D7 15 83                   JUMPT_abs              $8315
  $8345  8E FF 00                   PUSH_imm2              $00FF
  $8348  3A                         PUSH_quick   ; inline operand = 10
  $8349  60                         PUSH_qimm   ; inline operand = 0
  $834A  6E                         PUSH_qimm   ; inline operand = 14
  $834B  8D 1C                      BYTE_PUSH_imm1         +28
  $834D  66                         PUSH_qimm   ; inline operand = 6
  $834E  62                         PUSH_qimm   ; inline operand = 2
  $834F  69                         PUSH_qimm   ; inline operand = 9
  $8350  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8354  65                         PUSH_qimm   ; inline operand = 5
  $8355  60                         PUSH_qimm   ; inline operand = 0
  $8356  63                         PUSH_qimm   ; inline operand = 3
  $8357  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $835B  CF                         RETURN

; ============================================================
; sub $835C   (frame_off=-4, body @ $8361)   [PRG $2435C]
; ============================================================
  $8361  A4 69 72                   LOADL_abs              $7269
  $8364  2B                         STORE_quick   ; inline operand = 11
  $8365  61                         PUSH_qimm   ; inline operand = 1
  $8366  60                         PUSH_qimm   ; inline operand = 0
  $8367  63                         PUSH_qimm   ; inline operand = 3
  $8368  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $836C  8E FF 00                   PUSH_imm2              $00FF
  $836F  3B                         PUSH_quick   ; inline operand = 11
  $8370  60                         PUSH_qimm   ; inline operand = 0
  $8371  6E                         PUSH_qimm   ; inline operand = 14
  $8372  8D 1C                      BYTE_PUSH_imm1         +28
  $8374  66                         PUSH_qimm   ; inline operand = 6
  $8375  62                         PUSH_qimm   ; inline operand = 2
  $8376  69                         PUSH_qimm   ; inline operand = 9
  $8377  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $837B  65                         PUSH_qimm   ; inline operand = 5
  $837C  60                         PUSH_qimm   ; inline operand = 0
  $837D  63                         PUSH_qimm   ; inline operand = 3
  $837E  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $8382  CF                         RETURN

; ============================================================
; sub $8383   (frame_off=-2, body @ $8388)   [PRG $24383]
; ============================================================
  $8388  A4 69 72                   LOADL_abs              $7269
  $838B  90 10 FC                   ADD_imm2               $FC10
  $838E  2B                         STORE_quick   ; inline operand = 11
  $838F  61                         PUSH_qimm   ; inline operand = 1
  $8390  60                         PUSH_qimm   ; inline operand = 0
  $8391  63                         PUSH_qimm   ; inline operand = 3
  $8392  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $8396  8E FF 00                   PUSH_imm2              $00FF
  $8399  0B                         LOADL_quick   ; inline operand = 11
  $839A  90 F8 01                   ADD_imm2               $01F8
  $839D  B3                         PUSHL
  $839E  3B                         PUSH_quick   ; inline operand = 11
  $839F  8D 12                      BYTE_PUSH_imm1         +18
  $83A1  8D 1C                      BYTE_PUSH_imm1         +28
  $83A3  62                         PUSH_qimm   ; inline operand = 2
  $83A4  62                         PUSH_qimm   ; inline operand = 2
  $83A5  69                         PUSH_qimm   ; inline operand = 9
  $83A6  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $83AA  65                         PUSH_qimm   ; inline operand = 5
  $83AB  60                         PUSH_qimm   ; inline operand = 0
  $83AC  63                         PUSH_qimm   ; inline operand = 3
  $83AD  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $83B1  AC 40 A3                   CALL_abs               $A340 {native}
  $83B4  AC 6D A3                   CALL_abs               $A36D {native}
  $83B7  AC 9D A3                   CALL_abs               $A39D {native}
  $83BA  CF                         RETURN

; ============================================================
; sub $83BB   (frame_off=-6, body @ $83C0)   [PRG $243BB]
; ============================================================
  $83C0  40                         LOADL_qimm   ; inline operand = 0
  $83C1  2A                         STORE_quick   ; inline operand = 10
  $83C2  0C                         LOADL_quick   ; inline operand = 12
  $83C3  5E                         LOADR_qimm   ; inline operand = 14
  $83C4  C1                         CMPNE
  $83C5  D8 E3 83                   JUMPF_abs              $83E3
  $83C8  41                         LOADL_qimm   ; inline operand = 1
  $83C9  2A                         STORE_quick   ; inline operand = 10
  $83CA  0C                         LOADL_quick   ; inline operand = 12
  $83CB  8B 27                      BYTE_LOADR_imm1        +39
  $83CD  C0                         CMPEQ
  $83CE  D8 D5 83                   JUMPF_abs              $83D5
  $83D1  63                         PUSH_qimm   ; inline operand = 3
  $83D2  D6 DF 83                   JUMP_abs               $83DF
 >$83D5  A4 98 73                   LOADL_abs              $7398
  $83D8  D8 E3 83                   JUMPF_abs              $83E3
  $83DB  0C                         LOADL_quick   ; inline operand = 12
  $83DC  8F F1                      BYTE_ADD_imm1          -15
  $83DE  B3                         PUSHL
 >$83DF  E9 7F 82 02                CALL_abs_imm1          $827F {bytecode}, $02
 >$83E3  0C                         LOADL_quick   ; inline operand = 12
  $83E4  D9 09 00 0E 00 0D 84 0F 00 52 84 10 ... SWITCH_noncontig       count=9   ; .table 9 (key,target) + default (noncontiguous); SWITCH 14=>$840D 15=>$8452 16=>$845B 17=>$8464 18=>$846A 19=>$8473 20=>$8487 21=>$842C 39=>$8490 default=>$8419
 >$840D  8E CE 8A                   PUSH_imm2              $8ACE
  $8410  8E DE 00                   PUSH_imm2              $00DE
 >$8413  61                         PUSH_qimm   ; inline operand = 1
  $8414  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $8418  2B                         STORE_quick   ; inline operand = 11
 >$8419  A5 63 70                   BYTE_LOADL_abs         $7063
  $841C  8C F0 00                   LOADR_imm2             $00F0
  $841F  C0                         CMPEQ
  $8420  D8 A2 84                   JUMPF_abs              $84A2
  $8423  AC 83 83                   CALL_abs               $8383 {bytecode}
  $8426  41                         LOADL_qimm   ; inline operand = 1
  $8427  A9 63 70                   BYTE_STORE_abs         $7063
  $842A  0B                         LOADL_quick   ; inline operand = 11
  $842B  CF                         RETURN
 >$842C  8E 2B 87                   PUSH_imm2              $872B
  $842F  8E DD 00                   PUSH_imm2              $00DD
  $8432  61                         PUSH_qimm   ; inline operand = 1
  $8433  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $8437  2B                         STORE_quick   ; inline operand = 11
  $8438  0B                         LOADL_quick   ; inline operand = 11
  $8439  D8 19 84                   JUMPF_abs              $8419
  $843C  60                         PUSH_qimm   ; inline operand = 0
  $843D  8D 12                      BYTE_PUSH_imm1         +18
  $843F  8D 1C                      BYTE_PUSH_imm1         +28
  $8441  62                         PUSH_qimm   ; inline operand = 2
  $8442  62                         PUSH_qimm   ; inline operand = 2
  $8443  E9 9B A4 0A                CALL_abs_imm1          $A49B {native}, $0A
  $8447  AC 40 A3                   CALL_abs               $A340 {native}
  $844A  AC 6D A3                   CALL_abs               $A36D {native}
  $844D  AC 9D A3                   CALL_abs               $A39D {native}
  $8450  0B                         LOADL_quick   ; inline operand = 11
  $8451  CF                         RETURN
 >$8452  8E 32 92                   PUSH_imm2              $9232
 >$8455  8E D3 00                   PUSH_imm2              $00D3
  $8458  D6 13 84                   JUMP_abs               $8413
 >$845B  8E 6E 80                   PUSH_imm2              $806E
  $845E  8E D9 00                   PUSH_imm2              $00D9
  $8461  D6 13 84                   JUMP_abs               $8413
 >$8464  8E 1E 8A                   PUSH_imm2              $8A1E
  $8467  D6 55 84                   JUMP_abs               $8455
 >$846A  8E 7B 94                   PUSH_imm2              $947B
  $846D  8E D4 00                   PUSH_imm2              $00D4
  $8470  D6 13 84                   JUMP_abs               $8413
 >$8473  8E 58 80                   PUSH_imm2              $8058
  $8476  8E D7 00                   PUSH_imm2              $00D7
  $8479  61                         PUSH_qimm   ; inline operand = 1
  $847A  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $847E  2B                         STORE_quick   ; inline operand = 11
  $847F  A5 9C 72                   BYTE_LOADL_abs         $729C
  $8482  D8 19 84                   JUMPF_abs              $8419
  $8485  0B                         LOADL_quick   ; inline operand = 11
  $8486  CF                         RETURN
 >$8487  8E A7 82                   PUSH_imm2              $82A7
  $848A  8E D5 00                   PUSH_imm2              $00D5
  $848D  D6 13 84                   JUMP_abs               $8413
 >$8490  8E B1 80                   PUSH_imm2              $80B1
  $8493  8E D3 00                   PUSH_imm2              $00D3
  $8496  61                         PUSH_qimm   ; inline operand = 1
  $8497  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $849B  2B                         STORE_quick   ; inline operand = 11
  $849C  0B                         LOADL_quick   ; inline operand = 11
  $849D  D7 19 84                   JUMPT_abs              $8419
  $84A0  0B                         LOADL_quick   ; inline operand = 11
  $84A1  CF                         RETURN
 >$84A2  0A                         LOADL_quick   ; inline operand = 10
  $84A3  D8 A9 84                   JUMPF_abs              $84A9
  $84A6  AC 5C 83                   CALL_abs               $835C {bytecode}
 >$84A9  0B                         LOADL_quick   ; inline operand = 11
  $84AA  CF                         RETURN

; ============================================================
; sub $84AB   (frame_off=-22, body @ $84B0)   [PRG $244AB]
; ============================================================
  $84B0  0E                         LOADL_quick   ; inline operand = 14
  $84B1  52                         LOADR_qimm   ; inline operand = 2
  $84B2  C2                         SCMPLT
  $84B3  D8 C0 84                   JUMPF_abs              $84C0
  $84B6  0D                         LOADL_quick   ; inline operand = 13
  $84B7  D6 C1 84                   JUMP_abs               $84C1
 >$84BA  8A 26 94                   LOADL_imm2             $9426
  $84BD  D6 CB 84                   JUMP_abs               $84CB
 >$84C0  0C                         LOADL_quick   ; inline operand = 12
 >$84C1  53                         LOADR_qimm   ; inline operand = 3
  $84C2  BE                         URSHIFT
  $84C3  51                         LOADR_qimm   ; inline operand = 1
  $84C4  DA                         AND
  $84C5  D7 BA 84                   JUMPT_abs              $84BA
  $84C8  8A 16 94                   LOADL_imm2             $9416
 >$84CB  23                         STORE_quick   ; inline operand = 3
  $84CC  0E                         LOADL_quick   ; inline operand = 14
  $84CD  53                         LOADR_qimm   ; inline operand = 3
  $84CE  BD                         LSHIFT
  $84CF  2E                         STORE_quick   ; inline operand = 14
  $84D0  DE F0 FF                   LEAL_far               $FFF0
  $84D3  22                         STORE_quick   ; inline operand = 2
  $84D4  40                         LOADL_qimm   ; inline operand = 0
  $84D5  21                         STORE_quick   ; inline operand = 1
 >$84D6  32                         PUSH_quick   ; inline operand = 2
  $84D7  0D                         LOADL_quick   ; inline operand = 13
  $84D8  B3                         PUSHL
  $84D9  03                         LOADL_quick   ; inline operand = 3
  $84DA  D3                         BYTE_DEREF
  $84DB  B4                         POPR
  $84DC  BB                         ADD
  $84DD  D4                         BYTE_POPSTORE
  $84DE  02                         LOADL_quick   ; inline operand = 2
  $84DF  D0                         INC
  $84E0  22                         STORE_quick   ; inline operand = 2
  $84E1  03                         LOADL_quick   ; inline operand = 3
  $84E2  D0                         INC
  $84E3  23                         STORE_quick   ; inline operand = 3
  $84E4  32                         PUSH_quick   ; inline operand = 2
  $84E5  0E                         LOADL_quick   ; inline operand = 14
  $84E6  B3                         PUSHL
  $84E7  03                         LOADL_quick   ; inline operand = 3
  $84E8  D3                         BYTE_DEREF
  $84E9  B4                         POPR
  $84EA  BB                         ADD
  $84EB  D4                         BYTE_POPSTORE
  $84EC  02                         LOADL_quick   ; inline operand = 2
  $84ED  D0                         INC
  $84EE  22                         STORE_quick   ; inline operand = 2
  $84EF  03                         LOADL_quick   ; inline operand = 3
  $84F0  D0                         INC
  $84F1  23                         STORE_quick   ; inline operand = 3
  $84F2  32                         PUSH_quick   ; inline operand = 2
  $84F3  03                         LOADL_quick   ; inline operand = 3
  $84F4  D3                         BYTE_DEREF
  $84F5  D4                         BYTE_POPSTORE
  $84F6  02                         LOADL_quick   ; inline operand = 2
  $84F7  D0                         INC
  $84F8  22                         STORE_quick   ; inline operand = 2
  $84F9  03                         LOADL_quick   ; inline operand = 3
  $84FA  D0                         INC
  $84FB  23                         STORE_quick   ; inline operand = 3
  $84FC  32                         PUSH_quick   ; inline operand = 2
  $84FD  0C                         LOADL_quick   ; inline operand = 12
  $84FE  B3                         PUSHL
  $84FF  03                         LOADL_quick   ; inline operand = 3
  $8500  D3                         BYTE_DEREF
  $8501  B4                         POPR
  $8502  BB                         ADD
  $8503  D4                         BYTE_POPSTORE
  $8504  02                         LOADL_quick   ; inline operand = 2
  $8505  D0                         INC
  $8506  22                         STORE_quick   ; inline operand = 2
  $8507  03                         LOADL_quick   ; inline operand = 3
  $8508  D0                         INC
  $8509  23                         STORE_quick   ; inline operand = 3
  $850A  01                         LOADL_quick   ; inline operand = 1
  $850B  D0                         INC
  $850C  21                         STORE_quick   ; inline operand = 1
  $850D  01                         LOADL_quick   ; inline operand = 1
  $850E  54                         LOADR_qimm   ; inline operand = 4
  $850F  C6                         UCMPLT
  $8510  D7 D6 84                   JUMPT_abs              $84D6
  $8513  64                         PUSH_qimm   ; inline operand = 4
  $8514  8D 16                      BYTE_PUSH_imm1         +22
  $8516  DE F0 FF                   LEAL_far               $FFF0
  $8519  B3                         PUSHL
  $851A  6D                         PUSH_qimm   ; inline operand = 13
  $851B  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $851F  CF                         RETURN

; ============================================================
; sub $8520   (frame_off=+0, body @ $8525)   [PRG $24520]
; ============================================================
  $8525  64                         PUSH_qimm   ; inline operand = 4
  $8526  8D 16                      BYTE_PUSH_imm1         +22
  $8528  6C                         PUSH_qimm   ; inline operand = 12
  $8529  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $852D  CF                         RETURN

; ============================================================
; sub $852E   (frame_off=-2, body @ $8533)   [PRG $2452E]
; ============================================================
  $8533  0F                         LOADL_quick   ; inline operand = 15
  $8534  D9 04 00 10 00 49 85 20 00 64 85 40 ... SWITCH_noncontig       count=4   ; .table 4 (key,target) + default (noncontiguous); SWITCH 16=>$8549 32=>$8564 64=>$857E 128=>$8597 default=>$8560
 >$8549  0D                         LOADL_quick   ; inline operand = 13
  $854A  77                         ADD_qimm   ; inline operand = 7
  $854B  D6 57 85                   JUMP_abs               $8557
 >$854E  61                         PUSH_qimm   ; inline operand = 1
  $854F  3B                         PUSH_quick   ; inline operand = 11
  $8550  3C                         PUSH_quick   ; inline operand = 12
  $8551  E9 AB 84 06                CALL_abs_imm1          $84AB {bytecode}, $06
  $8555  0B                         LOADL_quick   ; inline operand = 11
  $8556  D1                         DEC
 >$8557  2B                         STORE_quick   ; inline operand = 11
  $8558  0B                         LOADL_quick   ; inline operand = 11
  $8559  1D                         LOADR_quick   ; inline operand = 13
  $855A  C9                         UCMPGE
  $855B  D7 4E 85                   JUMPT_abs              $854E
  $855E  41                         LOADL_qimm   ; inline operand = 1
 >$855F  2E                         STORE_quick   ; inline operand = 14
 >$8560  0E                         LOADL_quick   ; inline operand = 14
  $8561  53                         LOADR_qimm   ; inline operand = 3
  $8562  DA                         AND
  $8563  CF                         RETURN
 >$8564  0D                         LOADL_quick   ; inline operand = 13
  $8565  8F F9                      BYTE_ADD_imm1          -7
  $8567  D6 73 85                   JUMP_abs               $8573
 >$856A  60                         PUSH_qimm   ; inline operand = 0
  $856B  3B                         PUSH_quick   ; inline operand = 11
  $856C  3C                         PUSH_quick   ; inline operand = 12
  $856D  E9 AB 84 06                CALL_abs_imm1          $84AB {bytecode}, $06
  $8571  0B                         LOADL_quick   ; inline operand = 11
  $8572  D0                         INC
 >$8573  2B                         STORE_quick   ; inline operand = 11
  $8574  0B                         LOADL_quick   ; inline operand = 11
  $8575  1D                         LOADR_quick   ; inline operand = 13
  $8576  C7                         UCMPLE
  $8577  D7 6A 85                   JUMPT_abs              $856A
  $857A  40                         LOADL_qimm   ; inline operand = 0
  $857B  D6 5F 85                   JUMP_abs               $855F
 >$857E  0C                         LOADL_quick   ; inline operand = 12
  $857F  77                         ADD_qimm   ; inline operand = 7
  $8580  D6 8C 85                   JUMP_abs               $858C
 >$8583  63                         PUSH_qimm   ; inline operand = 3
  $8584  3D                         PUSH_quick   ; inline operand = 13
  $8585  3B                         PUSH_quick   ; inline operand = 11
  $8586  E9 AB 84 06                CALL_abs_imm1          $84AB {bytecode}, $06
  $858A  0B                         LOADL_quick   ; inline operand = 11
  $858B  D1                         DEC
 >$858C  2B                         STORE_quick   ; inline operand = 11
  $858D  0B                         LOADL_quick   ; inline operand = 11
  $858E  1C                         LOADR_quick   ; inline operand = 12
  $858F  C9                         UCMPGE
  $8590  D7 83 85                   JUMPT_abs              $8583
  $8593  43                         LOADL_qimm   ; inline operand = 3
  $8594  D6 5F 85                   JUMP_abs               $855F
 >$8597  0C                         LOADL_quick   ; inline operand = 12
  $8598  8F F9                      BYTE_ADD_imm1          -7
  $859A  D6 A6 85                   JUMP_abs               $85A6
 >$859D  62                         PUSH_qimm   ; inline operand = 2
  $859E  3D                         PUSH_quick   ; inline operand = 13
  $859F  3B                         PUSH_quick   ; inline operand = 11
  $85A0  E9 AB 84 06                CALL_abs_imm1          $84AB {bytecode}, $06
  $85A4  0B                         LOADL_quick   ; inline operand = 11
  $85A5  D0                         INC
 >$85A6  2B                         STORE_quick   ; inline operand = 11
  $85A7  0B                         LOADL_quick   ; inline operand = 11
  $85A8  1C                         LOADR_quick   ; inline operand = 12
  $85A9  C7                         UCMPLE
  $85AA  D7 9D 85                   JUMPT_abs              $859D
  $85AD  42                         LOADL_qimm   ; inline operand = 2
  $85AE  D6 5F 85                   JUMP_abs               $855F

; ============================================================
; sub $85B1   (frame_off=+0, body @ $85B6)   [PRG $245B1]
; ============================================================
  $85B6  0D                         LOADL_quick   ; inline operand = 13
  $85B7  54                         LOADR_qimm   ; inline operand = 4
  $85B8  C0                         CMPEQ
  $85B9  D8 CC 85                   JUMPF_abs              $85CC
  $85BC  0C                         LOADL_quick   ; inline operand = 12
  $85BD  55                         LOADR_qimm   ; inline operand = 5
  $85BE  C6                         UCMPLT
  $85BF  D8 C4 85                   JUMPF_abs              $85C4
  $85C2  41                         LOADL_qimm   ; inline operand = 1
  $85C3  CF                         RETURN
 >$85C4  0C                         LOADL_quick   ; inline operand = 12
  $85C5  5B                         LOADR_qimm   ; inline operand = 11
  $85C6  C6                         UCMPLT
  $85C7  D8 E6 85                   JUMPF_abs              $85E6
  $85CA  45                         LOADL_qimm   ; inline operand = 5
  $85CB  CF                         RETURN
 >$85CC  0C                         LOADL_quick   ; inline operand = 12
  $85CD  55                         LOADR_qimm   ; inline operand = 5
  $85CE  C6                         UCMPLT
  $85CF  D8 D4 85                   JUMPF_abs              $85D4
  $85D2  43                         LOADL_qimm   ; inline operand = 3
  $85D3  CF                         RETURN
 >$85D4  0C                         LOADL_quick   ; inline operand = 12
  $85D5  8B 12                      BYTE_LOADR_imm1        +18
  $85D7  C6                         UCMPLT
  $85D8  D8 DD 85                   JUMPF_abs              $85DD
  $85DB  44                         LOADL_qimm   ; inline operand = 4
  $85DC  CF                         RETURN
 >$85DD  0C                         LOADL_quick   ; inline operand = 12
  $85DE  8B 19                      BYTE_LOADR_imm1        +25
  $85E0  C6                         UCMPLT
  $85E1  D8 E6 85                   JUMPF_abs              $85E6
  $85E4  42                         LOADL_qimm   ; inline operand = 2
  $85E5  CF                         RETURN
 >$85E6  CF                         RETURN

; ============================================================
; sub $85E7   (frame_off=-22, body @ $85EC)   [PRG $245E7]
; ============================================================
  $85EC  81 13                      LOADL_near             $13
  $85EE  53                         LOADR_qimm   ; inline operand = 3
  $85EF  BD                         LSHIFT
  $85F0  85 13                      STORE_near             $13
  $85F2  D6 55 86                   JUMP_abs               $8655
 >$85F5  60                         PUSH_qimm   ; inline operand = 0
  $85F6  E9 A9 C4 02                CALL_abs_imm1          $C4A9 {native}, $02
  $85FA  1C                         LOADR_quick   ; inline operand = 12
  $85FB  C1                         CMPNE
  $85FC  D8 00 86                   JUMPF_abs              $8600
  $85FF  CF                         RETURN
 >$8600  81 15                      LOADL_near             $15
  $8602  55                         LOADR_qimm   ; inline operand = 5
  $8603  B8                         UDIV
  $8604  D8 0D 86                   JUMPF_abs              $860D
  $8607  8A 26 94                   LOADL_imm2             $9426
  $860A  D6 10 86                   JUMP_abs               $8610
 >$860D  8A 16 94                   LOADL_imm2             $9416
 >$8610  23                         STORE_quick   ; inline operand = 3
  $8611  DE F0 FF                   LEAL_far               $FFF0
  $8614  22                         STORE_quick   ; inline operand = 2
  $8615  40                         LOADL_qimm   ; inline operand = 0
  $8616  21                         STORE_quick   ; inline operand = 1
 >$8617  32                         PUSH_quick   ; inline operand = 2
  $8618  0F                         LOADL_quick   ; inline operand = 15
  $8619  B3                         PUSHL
  $861A  03                         LOADL_quick   ; inline operand = 3
  $861B  D3                         BYTE_DEREF
  $861C  B4                         POPR
  $861D  BB                         ADD
  $861E  D4                         BYTE_POPSTORE
  $861F  02                         LOADL_quick   ; inline operand = 2
  $8620  D0                         INC
  $8621  22                         STORE_quick   ; inline operand = 2
  $8622  03                         LOADL_quick   ; inline operand = 3
  $8623  D0                         INC
  $8624  23                         STORE_quick   ; inline operand = 3
  $8625  32                         PUSH_quick   ; inline operand = 2
  $8626  81 13                      LOADL_near             $13
  $8628  B3                         PUSHL
  $8629  03                         LOADL_quick   ; inline operand = 3
  $862A  D3                         BYTE_DEREF
  $862B  B4                         POPR
  $862C  BB                         ADD
  $862D  D4                         BYTE_POPSTORE
  $862E  02                         LOADL_quick   ; inline operand = 2
  $862F  D0                         INC
  $8630  22                         STORE_quick   ; inline operand = 2
  $8631  03                         LOADL_quick   ; inline operand = 3
  $8632  D0                         INC
  $8633  23                         STORE_quick   ; inline operand = 3
  $8634  32                         PUSH_quick   ; inline operand = 2
  $8635  03                         LOADL_quick   ; inline operand = 3
  $8636  D3                         BYTE_DEREF
  $8637  D4                         BYTE_POPSTORE
  $8638  02                         LOADL_quick   ; inline operand = 2
  $8639  D0                         INC
  $863A  22                         STORE_quick   ; inline operand = 2
  $863B  03                         LOADL_quick   ; inline operand = 3
  $863C  D0                         INC
  $863D  23                         STORE_quick   ; inline operand = 3
  $863E  32                         PUSH_quick   ; inline operand = 2
  $863F  0E                         LOADL_quick   ; inline operand = 14
  $8640  B3                         PUSHL
  $8641  03                         LOADL_quick   ; inline operand = 3
  $8642  D3                         BYTE_DEREF
  $8643  B4                         POPR
  $8644  BB                         ADD
  $8645  D4                         BYTE_POPSTORE
  $8646  02                         LOADL_quick   ; inline operand = 2
  $8647  D0                         INC
  $8648  22                         STORE_quick   ; inline operand = 2
  $8649  03                         LOADL_quick   ; inline operand = 3
  $864A  D0                         INC
  $864B  23                         STORE_quick   ; inline operand = 3
  $864C  01                         LOADL_quick   ; inline operand = 1
  $864D  D0                         INC
  $864E  21                         STORE_quick   ; inline operand = 1
  $864F  01                         LOADL_quick   ; inline operand = 1
  $8650  54                         LOADR_qimm   ; inline operand = 4
  $8651  C6                         UCMPLT
  $8652  D7 17 86                   JUMPT_abs              $8617
 >$8655  0D                         LOADL_quick   ; inline operand = 13
  $8656  D1                         DEC
  $8657  2D                         STORE_quick   ; inline operand = 13
  $8658  D0                         INC
  $8659  D7 F5 85                   JUMPT_abs              $85F5
  $865C  81 15                      LOADL_near             $15
  $865E  55                         LOADR_qimm   ; inline operand = 5
  $865F  BA                         UMOD
  $8660  D7 6F 86                   JUMPT_abs              $866F
  $8663  64                         PUSH_qimm   ; inline operand = 4
  $8664  8D 16                      BYTE_PUSH_imm1         +22
  $8666  DE F0 FF                   LEAL_far               $FFF0
  $8669  B3                         PUSHL
  $866A  6D                         PUSH_qimm   ; inline operand = 13
  $866B  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
 >$866F  CF                         RETURN

; ============================================================
; sub $8670   (frame_off=-12, body @ $8675)   [PRG $24670]
; ============================================================
  $8675  42                         LOADL_qimm   ; inline operand = 2
  $8676  2B                         STORE_quick   ; inline operand = 11
  $8677  46                         LOADL_qimm   ; inline operand = 6
  $8678  2A                         STORE_quick   ; inline operand = 10
  $8679  40                         LOADL_qimm   ; inline operand = 0
  $867A  28                         STORE_quick   ; inline operand = 8
  $867B  26                         STORE_quick   ; inline operand = 6
  $867C  A4 94 73                   LOADL_abs              $7394
 >$867F  29                         STORE_quick   ; inline operand = 9
 >$8680  60                         PUSH_qimm   ; inline operand = 0
  $8681  E9 A9 C4 02                CALL_abs_imm1          $C4A9 {native}, $02
  $8685  28                         STORE_quick   ; inline operand = 8
  $8686  36                         PUSH_quick   ; inline operand = 6
  $8687  39                         PUSH_quick   ; inline operand = 9
  $8688  A4 92 73                   LOADL_abs              $7392
  $868B  1A                         LOADR_quick   ; inline operand = 10
  $868C  BB                         ADD
  $868D  D1                         DEC
  $868E  53                         LOADR_qimm   ; inline operand = 3
  $868F  BD                         LSHIFT
  $8690  8F FE                      BYTE_ADD_imm1          -2
  $8692  B3                         PUSHL
  $8693  A4 90 73                   LOADL_abs              $7390
  $8696  1B                         LOADR_quick   ; inline operand = 11
  $8697  BB                         ADD
  $8698  53                         LOADR_qimm   ; inline operand = 3
  $8699  BD                         LSHIFT
  $869A  8F FC                      BYTE_ADD_imm1          -4
  $869C  B3                         PUSHL
  $869D  63                         PUSH_qimm   ; inline operand = 3
  $869E  38                         PUSH_quick   ; inline operand = 8
  $869F  E9 E7 85 0C                CALL_abs_imm1          $85E7 {bytecode}, $0C
  $86A3  06                         LOADL_quick   ; inline operand = 6
  $86A4  D0                         INC
  $86A5  26                         STORE_quick   ; inline operand = 6
  $86A6  06                         LOADL_quick   ; inline operand = 6
  $86A7  5A                         LOADR_qimm   ; inline operand = 10
  $86A8  C8                         UCMPGT
  $86A9  D8 AE 86                   JUMPF_abs              $86AE
  $86AC  40                         LOADL_qimm   ; inline operand = 0
  $86AD  26                         STORE_quick   ; inline operand = 6
 >$86AE  08                         LOADL_quick   ; inline operand = 8
  $86AF  D9 05 00 04 00 A8 87 10 00 C8 86 20 ... SWITCH_noncontig       count=5   ; .table 5 (key,target) + default (noncontiguous); SWITCH 4=>$87A8 16=>$86C8 32=>$8720 64=>$8785 128=>$8751 default=>$8680
 >$86C8  A4 92 73                   LOADL_abs              $7392
  $86CB  D1                         DEC
  $86CC  51                         LOADR_qimm   ; inline operand = 1
  $86CD  C6                         UCMPLT
  $86CE  D7 80 86                   JUMPT_abs              $8680
  $86D1  A4 92 73                   LOADL_abs              $7392
  $86D4  D1                         DEC
  $86D5  8B 1C                      BYTE_LOADR_imm1        +28
  $86D7  B5                         MULT
  $86D8  A6 90 73                   LOADR_abs              $7390
  $86DB  BB                         ADD
  $86DC  8C 9E 73                   LOADR_imm2             $739E
  $86DF  BB                         ADD
  $86E0  D3                         BYTE_DEREF
  $86E1  27                         STORE_quick   ; inline operand = 7
  $86E2  07                         LOADL_quick   ; inline operand = 7
  $86E3  D8 FB 86                   JUMPF_abs              $86FB
  $86E6  07                         LOADL_quick   ; inline operand = 7
  $86E7  51                         LOADR_qimm   ; inline operand = 1
  $86E8  C0                         CMPEQ
  $86E9  D8 80 86                   JUMPF_abs              $8680
  $86EC  40                         LOADL_qimm   ; inline operand = 0
  $86ED  A8 94 73                   STORE_abs              $7394
  $86F0  AA 92 73                   PUSH_abs               $7392
  $86F3  AA 90 73                   PUSH_abs               $7390
  $86F6  E9 B1 85 04                CALL_abs_imm1          $85B1 {bytecode}, $04
  $86FA  CF                         RETURN
 >$86FB  A4 92 73                   LOADL_abs              $7392
  $86FE  D1                         DEC
 >$86FF  A8 92 73                   STORE_abs              $7392
 >$8702  38                         PUSH_quick   ; inline operand = 8
  $8703  39                         PUSH_quick   ; inline operand = 9
  $8704  A4 92 73                   LOADL_abs              $7392
  $8707  1A                         LOADR_quick   ; inline operand = 10
  $8708  BB                         ADD
  $8709  D1                         DEC
  $870A  53                         LOADR_qimm   ; inline operand = 3
  $870B  BD                         LSHIFT
  $870C  8F FE                      BYTE_ADD_imm1          -2
  $870E  B3                         PUSHL
  $870F  A4 90 73                   LOADL_abs              $7390
  $8712  1B                         LOADR_quick   ; inline operand = 11
  $8713  BB                         ADD
  $8714  53                         LOADR_qimm   ; inline operand = 3
  $8715  BD                         LSHIFT
  $8716  8F FC                      BYTE_ADD_imm1          -4
  $8718  B3                         PUSHL
  $8719  E9 2E 85 08                CALL_abs_imm1          $852E {bytecode}, $08
  $871D  D6 7F 86                   JUMP_abs               $867F
 >$8720  A4 92 73                   LOADL_abs              $7392
  $8723  D0                         INC
  $8724  5D                         LOADR_qimm   ; inline operand = 13
  $8725  C8                         UCMPGT
  $8726  D7 80 86                   JUMPT_abs              $8680
  $8729  A4 92 73                   LOADL_abs              $7392
  $872C  D0                         INC
  $872D  8B 1C                      BYTE_LOADR_imm1        +28
  $872F  B5                         MULT
  $8730  A6 90 73                   LOADR_abs              $7390
  $8733  BB                         ADD
  $8734  8C 9E 73                   LOADR_imm2             $739E
  $8737  BB                         ADD
  $8738  D3                         BYTE_DEREF
  $8739  27                         STORE_quick   ; inline operand = 7
  $873A  07                         LOADL_quick   ; inline operand = 7
  $873B  D8 4A 87                   JUMPF_abs              $874A
  $873E  07                         LOADL_quick   ; inline operand = 7
  $873F  51                         LOADR_qimm   ; inline operand = 1
  $8740  C0                         CMPEQ
  $8741  D8 80 86                   JUMPF_abs              $8680
  $8744  41                         LOADL_qimm   ; inline operand = 1
  $8745  A8 94 73                   STORE_abs              $7394
  $8748  47                         LOADL_qimm   ; inline operand = 7
  $8749  CF                         RETURN
 >$874A  A4 92 73                   LOADL_abs              $7392
  $874D  D0                         INC
  $874E  D6 FF 86                   JUMP_abs               $86FF
 >$8751  A4 90 73                   LOADL_abs              $7390
  $8754  D0                         INC
  $8755  8B 1A                      BYTE_LOADR_imm1        +26
  $8757  C8                         UCMPGT
  $8758  D7 80 86                   JUMPT_abs              $8680
  $875B  A4 92 73                   LOADL_abs              $7392
  $875E  8B 1C                      BYTE_LOADR_imm1        +28
  $8760  B5                         MULT
  $8761  A6 90 73                   LOADR_abs              $7390
  $8764  BB                         ADD
  $8765  8C 9F 73                   LOADR_imm2             $739F
  $8768  BB                         ADD
  $8769  D3                         BYTE_DEREF
  $876A  27                         STORE_quick   ; inline operand = 7
  $876B  07                         LOADL_quick   ; inline operand = 7
  $876C  D8 7B 87                   JUMPF_abs              $877B
  $876F  07                         LOADL_quick   ; inline operand = 7
  $8770  51                         LOADR_qimm   ; inline operand = 1
  $8771  C0                         CMPEQ
  $8772  D8 80 86                   JUMPF_abs              $8680
  $8775  43                         LOADL_qimm   ; inline operand = 3
  $8776  A8 94 73                   STORE_abs              $7394
  $8779  46                         LOADL_qimm   ; inline operand = 6
  $877A  CF                         RETURN
 >$877B  A4 90 73                   LOADL_abs              $7390
  $877E  D0                         INC
 >$877F  A8 90 73                   STORE_abs              $7390
  $8782  D6 02 87                   JUMP_abs               $8702
 >$8785  A4 90 73                   LOADL_abs              $7390
  $8788  51                         LOADR_qimm   ; inline operand = 1
  $8789  C0                         CMPEQ
  $878A  D7 80 86                   JUMPT_abs              $8680
  $878D  A4 92 73                   LOADL_abs              $7392
  $8790  8B 1C                      BYTE_LOADR_imm1        +28
  $8792  B5                         MULT
  $8793  A6 90 73                   LOADR_abs              $7390
  $8796  BB                         ADD
  $8797  8C 9D 73                   LOADR_imm2             $739D
  $879A  BB                         ADD
  $879B  D3                         BYTE_DEREF
  $879C  27                         STORE_quick   ; inline operand = 7
  $879D  07                         LOADL_quick   ; inline operand = 7
  $879E  D7 80 86                   JUMPT_abs              $8680
  $87A1  A4 90 73                   LOADL_abs              $7390
  $87A4  D1                         DEC
  $87A5  D6 7F 87                   JUMP_abs               $877F
 >$87A8  41                         LOADL_qimm   ; inline operand = 1
  $87A9  CD                         SWAP
  $87AA  A5 66 70                   BYTE_LOADL_abs         $7066
  $87AD  DB                         OR
  $87AE  A9 66 70                   BYTE_STORE_abs         $7066
  $87B1  40                         LOADL_qimm   ; inline operand = 0
  $87B2  CF                         RETURN

; ============================================================
; sub $87B3   (frame_off=-5, body @ $87B8)   [PRG $247B3]
; ============================================================
  $87B8  A5 67 70                   BYTE_LOADL_abs         $7067
  $87BB  8C 76 6F                   LOADR_imm2             $6F76
  $87BE  BB                         ADD
  $87BF  D3                         BYTE_DEREF
  $87C0  A2 FF FF                   BYTE_STORE_far         $FFFF
  $87C3  40                         LOADL_qimm   ; inline operand = 0
  $87C4  A9 66 70                   BYTE_STORE_abs         $7066
  $87C7  40                         LOADL_qimm   ; inline operand = 0
  $87C8  D6 34 88                   JUMP_abs               $8834
 >$87CB  A5 67 70                   BYTE_LOADL_abs         $7067
  $87CE  8B 32                      BYTE_LOADR_imm1        +50
  $87D0  C6                         UCMPLT
  $87D1  D8 48 88                   JUMPF_abs              $8848
  $87D4  81 FD                      LOADL_near             $FD
  $87D6  51                         LOADR_qimm   ; inline operand = 1
  $87D7  C0                         CMPEQ
  $87D8  D8 05 88                   JUMPF_abs              $8805
  $87DB  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $87DE  54                         LOADR_qimm   ; inline operand = 4
  $87DF  DA                         AND
  $87E0  D7 05 88                   JUMPT_abs              $8805
  $87E3  40                         LOADL_qimm   ; inline operand = 0
  $87E4  85 FB                      STORE_near             $FB
 >$87E6  60                         PUSH_qimm   ; inline operand = 0
  $87E7  66                         PUSH_qimm   ; inline operand = 6
  $87E8  81 FB                      LOADL_near             $FB
  $87EA  8B 1C                      BYTE_LOADR_imm1        +28
  $87EC  B5                         MULT
  $87ED  8C 9E 73                   LOADR_imm2             $739E
  $87F0  BB                         ADD
  $87F1  B3                         PUSHL
  $87F2  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $87F6  81 FB                      LOADL_near             $FB
  $87F8  D0                         INC
  $87F9  85 FB                      STORE_near             $FB
  $87FB  81 FB                      LOADL_near             $FB
  $87FD  54                         LOADR_qimm   ; inline operand = 4
  $87FE  C6                         UCMPLT
  $87FF  D7 E6 87                   JUMPT_abs              $87E6
  $8802  D6 31 88                   JUMP_abs               $8831
 >$8805  81 FD                      LOADL_near             $FD
  $8807  52                         LOADR_qimm   ; inline operand = 2
  $8808  C0                         CMPEQ
  $8809  D8 3E 88                   JUMPF_abs              $883E
  $880C  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $880F  8B 10                      BYTE_LOADR_imm1        +16
  $8811  DA                         AND
  $8812  D8 3E 88                   JUMPF_abs              $883E
  $8815  61                         PUSH_qimm   ; inline operand = 1
  $8816  63                         PUSH_qimm   ; inline operand = 3
  $8817  8E 24 74                   PUSH_imm2              $7424
  $881A  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
 >$881E  81 FD                      LOADL_near             $FD
  $8820  58                         LOADR_qimm   ; inline operand = 8
  $8821  C6                         UCMPLT
  $8822  D8 31 88                   JUMPF_abs              $8831
  $8825  41                         LOADL_qimm   ; inline operand = 1
  $8826  83 FD                      LOADR_near             $FD
  $8828  BD                         LSHIFT
  $8829  CD                         SWAP
  $882A  A5 66 70                   BYTE_LOADL_abs         $7066
  $882D  DB                         OR
  $882E  A9 66 70                   BYTE_STORE_abs         $7066
 >$8831  81 FD                      LOADL_near             $FD
  $8833  D0                         INC
 >$8834  85 FD                      STORE_near             $FD
  $8836  81 FD                      LOADL_near             $FD
  $8838  59                         LOADR_qimm   ; inline operand = 9
  $8839  C6                         UCMPLT
  $883A  D7 CB 87                   JUMPT_abs              $87CB
  $883D  CF                         RETURN
 >$883E  81 FD                      LOADL_near             $FD
  $8840  52                         LOADR_qimm   ; inline operand = 2
  $8841  C0                         CMPEQ
 >$8842  D8 1E 88                   JUMPF_abs              $881E
  $8845  D6 31 88                   JUMP_abs               $8831
 >$8848  81 FD                      LOADL_near             $FD
  $884A  56                         LOADR_qimm   ; inline operand = 6
  $884B  C6                         UCMPLT
  $884C  D6 42 88                   JUMP_abs               $8842

; ============================================================
; sub $884F   (frame_off=-90, body @ $8854)   [PRG $2484F]
; ============================================================
  $8854  40                         LOADL_qimm   ; inline operand = 0
  $8855  85 AE                      STORE_near             $AE
 >$8857  81 AE                      LOADL_near             $AE
  $8859  8B 18                      BYTE_LOADR_imm1        +24
  $885B  B5                         MULT
  $885C  8C A4 6A                   LOADR_imm2             $6AA4
  $885F  BB                         ADD
  $8860  85 A6                      STORE_near             $A6
  $8862  81 A6                      LOADL_near             $A6
  $8864  D3                         BYTE_DEREF
  $8865  D8 74 88                   JUMPF_abs              $8874
  $8868  81 AE                      LOADL_near             $AE
  $886A  D0                         INC
  $886B  85 AE                      STORE_near             $AE
  $886D  81 AE                      LOADL_near             $AE
  $886F  55                         LOADR_qimm   ; inline operand = 5
  $8870  C6                         UCMPLT
  $8871  D7 57 88                   JUMPT_abs              $8857
 >$8874  87 AE                      PUSH_near              $AE
  $8876  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $887A  85 A8                      STORE_near             $A8
  $887C  81 A8                      LOADL_near             $A8
  $887E  8F 14                      BYTE_ADD_imm1          +20
  $8880  D3                         BYTE_DEREF
  $8881  55                         LOADR_qimm   ; inline operand = 5
  $8882  BE                         URSHIFT
  $8883  85 AE                      STORE_near             $AE
  $8885  8A 86 F3                   LOADL_imm2             $F386
  $8888  85 AA                      STORE_near             $AA
  $888A  81 AE                      LOADL_near             $AE
  $888C  52                         LOADR_qimm   ; inline operand = 2
  $888D  C8                         UCMPGT
  $888E  D8 96 88                   JUMPF_abs              $8896
  $8891  8A D6 F3                   LOADL_imm2             $F3D6
  $8894  85 AA                      STORE_near             $AA
 >$8896  45                         LOADL_qimm   ; inline operand = 5
  $8897  85 AC                      STORE_near             $AC
  $8899  8D 50                      BYTE_PUSH_imm1         +80
  $889B  DE B0 FF                   LEAL_far               $FFB0
  $889E  B3                         PUSHL
  $889F  87 AA                      PUSH_near              $AA
  $88A1  E9 E0 DD 06                CALL_abs_imm1          $DDE0 (memcpy_ptr) {native}, $06
  $88A5  40                         LOADL_qimm   ; inline operand = 0
  $88A6  85 AE                      STORE_near             $AE
 >$88A8  62                         PUSH_qimm   ; inline operand = 2
  $88A9  DE B0 FF                   LEAL_far               $FFB0
  $88AC  B3                         PUSHL
  $88AD  81 AE                      LOADL_near             $AE
  $88AF  D2                         LSHIFT1
  $88B0  D2                         LSHIFT1
  $88B1  B4                         POPR
  $88B2  BB                         ADD
  $88B3  B4                         POPR
  $88B4  B3                         PUSHL
  $88B5  D3                         BYTE_DEREF
  $88B6  BB                         ADD
  $88B7  D4                         BYTE_POPSTORE
  $88B8  81 AE                      LOADL_near             $AE
  $88BA  D0                         INC
  $88BB  85 AE                      STORE_near             $AE
  $88BD  81 AE                      LOADL_near             $AE
  $88BF  8B 14                      BYTE_LOADR_imm1        +20
  $88C1  C6                         UCMPLT
  $88C2  D7 A8 88                   JUMPT_abs              $88A8
  $88C5  8D 14                      BYTE_PUSH_imm1         +20
  $88C7  61                         PUSH_qimm   ; inline operand = 1
  $88C8  DE B0 FF                   LEAL_far               $FFB0
  $88CB  B3                         PUSHL
  $88CC  6D                         PUSH_qimm   ; inline operand = 13
  $88CD  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $88D1  D6 12 89                   JUMP_abs               $8912
 >$88D4  DE B3 FF                   LEAL_far               $FFB3
  $88D7  B3                         PUSHL
  $88D8  81 AE                      LOADL_near             $AE
  $88DA  D2                         LSHIFT1
  $88DB  D2                         LSHIFT1
  $88DC  B4                         POPR
  $88DD  BB                         ADD
  $88DE  B3                         PUSHL
  $88DF  D3                         BYTE_DEREF
  $88E0  D1                         DEC
  $88E1  D4                         BYTE_POPSTORE
 >$88E2  81 AE                      LOADL_near             $AE
  $88E4  D0                         INC
  $88E5  85 AE                      STORE_near             $AE
  $88E7  81 AE                      LOADL_near             $AE
  $88E9  8B 14                      BYTE_LOADR_imm1        +20
  $88EB  C6                         UCMPLT
  $88EC  D7 15 89                   JUMPT_abs              $8915
  $88EF  8D 14                      BYTE_PUSH_imm1         +20
  $88F1  61                         PUSH_qimm   ; inline operand = 1
  $88F2  DE B0 FF                   LEAL_far               $FFB0
  $88F5  B3                         PUSHL
  $88F6  6D                         PUSH_qimm   ; inline operand = 13
  $88F7  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $88FB  A0 B3 FF                   BYTE_LOADL_far         $FFB3
  $88FE  8B 48                      BYTE_LOADR_imm1        +72
  $8900  C6                         UCMPLT
  $8901  D8 45 89                   JUMPF_abs              $8945
  $8904  DE B3 FF                   LEAL_far               $FFB3
  $8907  B3                         PUSHL
  $8908  81 AE                      LOADL_near             $AE
  $890A  D2                         LSHIFT1
  $890B  D2                         LSHIFT1
  $890C  B4                         POPR
  $890D  BB                         ADD
  $890E  B3                         PUSHL
  $890F  D3                         BYTE_DEREF
  $8910  D1                         DEC
  $8911  D4                         BYTE_POPSTORE
 >$8912  40                         LOADL_qimm   ; inline operand = 0
  $8913  85 AE                      STORE_near             $AE
 >$8915  DE B3 FF                   LEAL_far               $FFB3
  $8918  B3                         PUSHL
  $8919  81 AE                      LOADL_near             $AE
  $891B  D2                         LSHIFT1
  $891C  D2                         LSHIFT1
  $891D  B4                         POPR
  $891E  BB                         ADD
  $891F  D3                         BYTE_DEREF
  $8920  5C                         LOADR_qimm   ; inline operand = 12
  $8921  C8                         UCMPGT
  $8922  D7 D4 88                   JUMPT_abs              $88D4
  $8925  DE B1 FF                   LEAL_far               $FFB1
  $8928  B3                         PUSHL
  $8929  81 AE                      LOADL_near             $AE
  $892B  D2                         LSHIFT1
  $892C  D2                         LSHIFT1
  $892D  B4                         POPR
  $892E  BB                         ADD
  $892F  B3                         PUSHL
  $8930  8A A0 00                   LOADL_imm2             $00A0
  $8933  D4                         BYTE_POPSTORE
  $8934  81 AE                      LOADL_near             $AE
  $8936  8B 13                      BYTE_LOADR_imm1        +19
  $8938  C0                         CMPEQ
  $8939  D8 E2 88                   JUMPF_abs              $88E2
  $893C  8D 14                      BYTE_PUSH_imm1         +20
  $893E  61                         PUSH_qimm   ; inline operand = 1
  $893F  6C                         PUSH_qimm   ; inline operand = 12
  $8940  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $8944  CF                         RETURN
 >$8945  87 AC                      PUSH_near              $AC
  $8947  8D 11                      BYTE_PUSH_imm1         +17
  $8949  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $894D  D6 12 89                   JUMP_abs               $8912

; ============================================================
; sub $8950   (frame_off=-2, body @ $8955)   [PRG $24950]
; ============================================================
  $8955  A5 67 70                   BYTE_LOADL_abs         $7067
  $8958  8B 13                      BYTE_LOADR_imm1        +19
  $895A  B5                         MULT
  $895B  8C D8 AF                   LOADR_imm2             $AFD8
  $895E  BB                         ADD
  $895F  2B                         STORE_quick   ; inline operand = 11
  $8960  60                         PUSH_qimm   ; inline operand = 0
  $8961  60                         PUSH_qimm   ; inline operand = 0
  $8962  68                         PUSH_qimm   ; inline operand = 8
  $8963  8D 1E                      BYTE_PUSH_imm1         +30
  $8965  8D 14                      BYTE_PUSH_imm1         +20
  $8967  61                         PUSH_qimm   ; inline operand = 1
  $8968  68                         PUSH_qimm   ; inline operand = 8
  $8969  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $896D  AC 89 A5                   CALL_abs               $A589 {native}
  $8970  8E E7 00                   PUSH_imm2              $00E7
  $8973  8E B6 B4                   PUSH_imm2              $B4B6
  $8976  8E 52 B4                   PUSH_imm2              $B452
  $8979  65                         PUSH_qimm   ; inline operand = 5
  $897A  8D 14                      BYTE_PUSH_imm1         +20
  $897C  8D 15                      BYTE_PUSH_imm1         +21
  $897E  66                         PUSH_qimm   ; inline operand = 6
  $897F  69                         PUSH_qimm   ; inline operand = 9
  $8980  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $8984  0C                         LOADL_quick   ; inline operand = 12
  $8985  D8 A8 89                   JUMPF_abs              $89A8
  $8988  8D 16                      BYTE_PUSH_imm1         +22
  $898A  68                         PUSH_qimm   ; inline operand = 8
  $898B  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $898F  60                         PUSH_qimm   ; inline operand = 0
  $8990  8E 36 94                   PUSH_imm2              $9436
  $8993  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8997  3B                         PUSH_quick   ; inline operand = 11
  $8998  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $899C  60                         PUSH_qimm   ; inline operand = 0
  $899D  8E 44 94                   PUSH_imm2              $9444
  $89A0  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $89A4  AC 4F 88                   CALL_abs               $884F {bytecode}
  $89A7  CF                         RETURN
 >$89A8  8D 16                      BYTE_PUSH_imm1         +22
  $89AA  68                         PUSH_qimm   ; inline operand = 8
  $89AB  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $89AF  61                         PUSH_qimm   ; inline operand = 1
  $89B0  8E 48 94                   PUSH_imm2              $9448
  $89B3  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $89B7  CF                         RETURN

; ============================================================
; sub $89B8   (frame_off=-10, body @ $89BD)   [PRG $249B8]
; ============================================================
  $89BD  A5 7E 73                   BYTE_LOADL_abs         $737E
  $89C0  D7 D6 89                   JUMPT_abs              $89D6
  $89C3  4E                         LOADL_qimm   ; inline operand = 14
  $89C4  A8 90 73                   STORE_abs              $7390
  $89C7  4B                         LOADL_qimm   ; inline operand = 11
  $89C8  A8 92 73                   STORE_abs              $7392
  $89CB  41                         LOADL_qimm   ; inline operand = 1
  $89CC  A8 94 73                   STORE_abs              $7394
  $89CF  41                         LOADL_qimm   ; inline operand = 1
  $89D0  A9 7E 73                   BYTE_STORE_abs         $737E
  $89D3  D6 E2 89                   JUMP_abs               $89E2
 >$89D6  43                         LOADL_qimm   ; inline operand = 3
  $89D7  A8 90 73                   STORE_abs              $7390
  $89DA  4A                         LOADL_qimm   ; inline operand = 10
  $89DB  A8 92 73                   STORE_abs              $7392
  $89DE  40                         LOADL_qimm   ; inline operand = 0
  $89DF  A8 94 73                   STORE_abs              $7394
 >$89E2  41                         LOADL_qimm   ; inline operand = 1
  $89E3  A8 98 73                   STORE_abs              $7398
  $89E6  41                         LOADL_qimm   ; inline operand = 1
  $89E7  27                         STORE_quick   ; inline operand = 7
  $89E8  8A 62 66                   LOADL_imm2             $6662
  $89EB  28                         STORE_quick   ; inline operand = 8
  $89EC  08                         LOADL_quick   ; inline operand = 8
  $89ED  73                         ADD_qimm   ; inline operand = 3
  $89EE  D3                         BYTE_DEREF
  $89EF  B3                         PUSHL
  $89F0  08                         LOADL_quick   ; inline operand = 8
  $89F1  72                         ADD_qimm   ; inline operand = 2
  $89F2  D3                         BYTE_DEREF
  $89F3  B3                         PUSHL
  $89F4  08                         LOADL_quick   ; inline operand = 8
  $89F5  D0                         INC
  $89F6  D3                         BYTE_DEREF
  $89F7  B3                         PUSHL
  $89F8  08                         LOADL_quick   ; inline operand = 8
  $89F9  D3                         BYTE_DEREF
  $89FA  B3                         PUSHL
  $89FB  E9 B0 D1 08                CALL_abs_imm1          $D1B0 (find_port_by_key) {native}, $08
  $89FF  A9 67 70                   BYTE_STORE_abs         $7067
  $8A02  8E 88 01                   PUSH_imm2              $0188
  $8A05  8E 9E 73                   PUSH_imm2              $739E
  $8A08  8E 56 B1                   PUSH_imm2              $B156
  $8A0B  8E E2 00                   PUSH_imm2              $00E2
  $8A0E  62                         PUSH_qimm   ; inline operand = 2
  $8A0F  E9 EC DC 0A                CALL_abs_imm1          $DCEC (copy_from_bank) {native}, $0A
  $8A13  A5 67 70                   BYTE_LOADL_abs         $7067
  $8A16  8B 32                      BYTE_LOADR_imm1        +50
  $8A18  C9                         UCMPGE
  $8A19  D8 5C 8A                   JUMPF_abs              $8A5C
  $8A1C  40                         LOADL_qimm   ; inline operand = 0
  $8A1D  2B                         STORE_quick   ; inline operand = 11
 >$8A1E  60                         PUSH_qimm   ; inline operand = 0
  $8A1F  8D 14                      BYTE_PUSH_imm1         +20
  $8A21  0B                         LOADL_quick   ; inline operand = 11
  $8A22  8B 1C                      BYTE_LOADR_imm1        +28
  $8A24  B5                         MULT
  $8A25  8C 9E 73                   LOADR_imm2             $739E
  $8A28  BB                         ADD
  $8A29  B3                         PUSHL
  $8A2A  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $8A2E  0B                         LOADL_quick   ; inline operand = 11
  $8A2F  D0                         INC
  $8A30  2B                         STORE_quick   ; inline operand = 11
  $8A31  0B                         LOADL_quick   ; inline operand = 11
  $8A32  55                         LOADR_qimm   ; inline operand = 5
  $8A33  C6                         UCMPLT
  $8A34  D7 1E 8A                   JUMPT_abs              $8A1E
  $8A37  60                         PUSH_qimm   ; inline operand = 0
  $8A38  8E C4 00                   PUSH_imm2              $00C4
  $8A3B  8E 2A 74                   PUSH_imm2              $742A
  $8A3E  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $8A42  4C                         LOADL_qimm   ; inline operand = 12
  $8A43  2B                         STORE_quick   ; inline operand = 11
 >$8A44  60                         PUSH_qimm   ; inline operand = 0
  $8A45  66                         PUSH_qimm   ; inline operand = 6
  $8A46  0B                         LOADL_quick   ; inline operand = 11
  $8A47  8B 1C                      BYTE_LOADR_imm1        +28
  $8A49  B5                         MULT
  $8A4A  8C B4 73                   LOADR_imm2             $73B4
  $8A4D  BB                         ADD
  $8A4E  B3                         PUSHL
  $8A4F  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $8A53  0B                         LOADL_quick   ; inline operand = 11
  $8A54  D0                         INC
  $8A55  2B                         STORE_quick   ; inline operand = 11
  $8A56  0B                         LOADL_quick   ; inline operand = 11
  $8A57  5E                         LOADR_qimm   ; inline operand = 14
  $8A58  C6                         UCMPLT
  $8A59  D7 44 8A                   JUMPT_abs              $8A44
 >$8A5C  61                         PUSH_qimm   ; inline operand = 1
  $8A5D  8E 34 95                   PUSH_imm2              $9534
  $8A60  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8A64  A5 63 70                   BYTE_LOADL_abs         $7063
  $8A67  D7 7A 8A                   JUMPT_abs              $8A7A
  $8A6A  8A 62 70                   LOADL_imm2             $7062
  $8A6D  A8 69 72                   STORE_abs              $7269
  $8A70  AC 11 82                   CALL_abs               $8211 {bytecode}
  $8A73  41                         LOADL_qimm   ; inline operand = 1
  $8A74  A9 63 70                   BYTE_STORE_abs         $7063
  $8A77  D6 AB 8A                   JUMP_abs               $8AAB
 >$8A7A  A5 63 70                   BYTE_LOADL_abs         $7063
  $8A7D  8C F0 00                   LOADR_imm2             $00F0
  $8A80  C0                         CMPEQ
  $8A81  D8 8E 8A                   JUMPF_abs              $8A8E
  $8A84  41                         LOADL_qimm   ; inline operand = 1
  $8A85  A9 63 70                   BYTE_STORE_abs         $7063
  $8A88  AC 83 83                   CALL_abs               $8383 {bytecode}
  $8A8B  D6 9A 8A                   JUMP_abs               $8A9A
 >$8A8E  AC B3 87                   CALL_abs               $87B3 {bytecode}
  $8A91  AC 40 A3                   CALL_abs               $A340 {native}
  $8A94  AC 6D A3                   CALL_abs               $A36D {native}
  $8A97  AC 9D A3                   CALL_abs               $A39D {native}
 >$8A9A  8A 62 70                   LOADL_imm2             $7062
  $8A9D  A8 69 72                   STORE_abs              $7269
  $8AA0  60                         PUSH_qimm   ; inline operand = 0
  $8AA1  8D 12                      BYTE_PUSH_imm1         +18
  $8AA3  8D 1C                      BYTE_PUSH_imm1         +28
  $8AA5  62                         PUSH_qimm   ; inline operand = 2
  $8AA6  62                         PUSH_qimm   ; inline operand = 2
  $8AA7  E9 05 A4 0A                CALL_abs_imm1          $A405 {native}, $0A
 >$8AAB  8A FF 00                   LOADL_imm2             $00FF
  $8AAE  A9 66 72                   BYTE_STORE_abs         $7266
  $8AB1  A9 65 72                   BYTE_STORE_abs         $7265
  $8AB4  A9 64 72                   BYTE_STORE_abs         $7264
  $8AB7  A9 63 72                   BYTE_STORE_abs         $7263
  $8ABA  40                         LOADL_qimm   ; inline operand = 0
  $8ABB  A9 9C 72                   BYTE_STORE_abs         $729C
  $8ABE  A5 67 70                   BYTE_LOADL_abs         $7067
  $8AC1  8B 32                      BYTE_LOADR_imm1        +50
  $8AC3  C6                         UCMPLT
  $8AC4  D8 DE 8A                   JUMPF_abs              $8ADE
  $8AC7  AC DD 91                   CALL_abs               $91DD {bytecode}
  $8ACA  D8 F2 8A                   JUMPF_abs              $8AF2
  $8ACD  8E 6E 87                   PUSH_imm2              $876E
  $8AD0  8E DD 00                   PUSH_imm2              $00DD
  $8AD3  61                         PUSH_qimm   ; inline operand = 1
  $8AD4  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $8AD8  61                         PUSH_qimm   ; inline operand = 1
  $8AD9  E9 50 89 02                CALL_abs_imm1          $8950 {bytecode}, $02
  $8ADD  CF                         RETURN
 >$8ADE  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8AE1  61                         PUSH_qimm   ; inline operand = 1
  $8AE2  65                         PUSH_qimm   ; inline operand = 5
  $8AE3  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8AE7  D2                         LSHIFT1
  $8AE8  8C 58 94                   LOADR_imm2             $9458
  $8AEB  BB                         ADD
  $8AEC  B0                         DEREF
  $8AED  B3                         PUSHL
  $8AEE  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
 >$8AF2  40                         LOADL_qimm   ; inline operand = 0
  $8AF3  29                         STORE_quick   ; inline operand = 9
 >$8AF4  AC 70 86                   CALL_abs               $8670 {bytecode}
  $8AF7  2A                         STORE_quick   ; inline operand = 10
  $8AF8  AC 20 85                   CALL_abs               $8520 {bytecode}
  $8AFB  0A                         LOADL_quick   ; inline operand = 10
  $8AFC  57                         LOADR_qimm   ; inline operand = 7
  $8AFD  C1                         CMPNE
  $8AFE  D8 09 8B                   JUMPF_abs              $8B09
  $8B01  8D 14                      BYTE_PUSH_imm1         +20
  $8B03  61                         PUSH_qimm   ; inline operand = 1
  $8B04  6C                         PUSH_qimm   ; inline operand = 12
  $8B05  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
 >$8B09  0A                         LOADL_quick   ; inline operand = 10
  $8B0A  58                         LOADR_qimm   ; inline operand = 8
  $8B0B  C0                         CMPEQ
  $8B0C  D7 1B 8B                   JUMPT_abs              $8B1B
  $8B0F  41                         LOADL_qimm   ; inline operand = 1
  $8B10  1A                         LOADR_quick   ; inline operand = 10
  $8B11  BD                         LSHIFT
  $8B12  B3                         PUSHL
  $8B13  A5 66 70                   BYTE_LOADL_abs         $7066
  $8B16  B4                         POPR
  $8B17  DA                         AND
  $8B18  D8 53 8B                   JUMPF_abs              $8B53
 >$8B1B  0A                         LOADL_quick   ; inline operand = 10
  $8B1C  54                         LOADR_qimm   ; inline operand = 4
  $8B1D  C0                         CMPEQ
  $8B1E  D8 40 8B                   JUMPF_abs              $8B40
  $8B21  8D 27                      BYTE_PUSH_imm1         +39
  $8B23  E9 BB 83 02                CALL_abs_imm1          $83BB {bytecode}, $02
  $8B27  29                         STORE_quick   ; inline operand = 9
  $8B28  09                         LOADL_quick   ; inline operand = 9
  $8B29  D7 38 8B                   JUMPT_abs              $8B38
  $8B2C  40                         LOADL_qimm   ; inline operand = 0
  $8B2D  A8 98 73                   STORE_abs              $7398
  $8B30  0A                         LOADL_quick   ; inline operand = 10
  $8B31  7E                         ADD_qimm   ; inline operand = 14
  $8B32  B3                         PUSHL
  $8B33  E9 BB 83 02                CALL_abs_imm1          $83BB {bytecode}, $02
  $8B37  29                         STORE_quick   ; inline operand = 9
 >$8B38  41                         LOADL_qimm   ; inline operand = 1
  $8B39  A8 98 73                   STORE_abs              $7398
  $8B3C  40                         LOADL_qimm   ; inline operand = 0
  $8B3D  D6 47 8B                   JUMP_abs               $8B47
 >$8B40  0A                         LOADL_quick   ; inline operand = 10
  $8B41  7E                         ADD_qimm   ; inline operand = 14
  $8B42  B3                         PUSHL
  $8B43  E9 BB 83 02                CALL_abs_imm1          $83BB {bytecode}, $02
 >$8B47  29                         STORE_quick   ; inline operand = 9
  $8B48  8E 83 86                   PUSH_imm2              $8683
  $8B4B  8E DE 00                   PUSH_imm2              $00DE
  $8B4E  61                         PUSH_qimm   ; inline operand = 1
  $8B4F  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
 >$8B53  A5 67 72                   BYTE_LOADL_abs         $7267
  $8B56  D8 5A 8B                   JUMPF_abs              $8B5A
  $8B59  CF                         RETURN
 >$8B5A  07                         LOADL_quick   ; inline operand = 7
  $8B5B  D8 6C 8B                   JUMPF_abs              $8B6C
  $8B5E  A5 9C 72                   BYTE_LOADL_abs         $729C
  $8B61  D7 6C 8B                   JUMPT_abs              $8B6C
  $8B64  08                         LOADL_quick   ; inline operand = 8
  $8B65  D0                         INC
  $8B66  D3                         BYTE_DEREF
  $8B67  B3                         PUSHL
  $8B68  E9 03 80 02                CALL_abs_imm1          $8003 {bytecode}, $02
 >$8B6C  09                         LOADL_quick   ; inline operand = 9
  $8B6D  D7 7B 8B                   JUMPT_abs              $8B7B
  $8B70  8E 9E 87                   PUSH_imm2              $879E
  $8B73  8E DD 00                   PUSH_imm2              $00DD
  $8B76  61                         PUSH_qimm   ; inline operand = 1
  $8B77  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
 >$8B7B  09                         LOADL_quick   ; inline operand = 9
  $8B7C  D8 F4 8A                   JUMPF_abs              $8AF4
  $8B7F  08                         LOADL_quick   ; inline operand = 8
  $8B80  7F                         ADD_qimm   ; inline operand = 15
  $8B81  D3                         BYTE_DEREF
  $8B82  52                         LOADR_qimm   ; inline operand = 2
  $8B83  DA                         AND
  $8B84  D8 91 8B                   JUMPF_abs              $8B91
  $8B87  A5 9C 72                   BYTE_LOADL_abs         $729C
  $8B8A  D7 91 8B                   JUMPT_abs              $8B91
  $8B8D  60                         PUSH_qimm   ; inline operand = 0
  $8B8E  D6 98 8B                   JUMP_abs               $8B98
 >$8B91  0A                         LOADL_quick   ; inline operand = 10
  $8B92  57                         LOADR_qimm   ; inline operand = 7
  $8B93  C0                         CMPEQ
  $8B94  D8 9C 8B                   JUMPF_abs              $8B9C
  $8B97  61                         PUSH_qimm   ; inline operand = 1
 >$8B98  E9 50 89 02                CALL_abs_imm1          $8950 {bytecode}, $02
 >$8B9C  40                         LOADL_qimm   ; inline operand = 0
  $8B9D  A9 8C 6B                   BYTE_STORE_abs         $6B8C
  $8BA0  CF                         RETURN

; ============================================================
; sub $8BA1   (frame_off=+0, body @ $8BA6)   [PRG $24BA1]
; ============================================================
  $8BA6  A0 0B 00                   BYTE_LOADL_far         $000B
  $8BA9  8C 76 6F                   LOADR_imm2             $6F76
  $8BAC  BB                         ADD
  $8BAD  D3                         BYTE_DEREF
  $8BAE  53                         LOADR_qimm   ; inline operand = 3
  $8BAF  DA                         AND
  $8BB0  CF                         RETURN

; ============================================================
; sub $8BB1   (frame_off=-1, body @ $8BB6)   [PRG $24BB1]
; ============================================================
  $8BB6  A0 0D 00                   BYTE_LOADL_far         $000D
  $8BB9  D2                         LSHIFT1
  $8BBA  D2                         LSHIFT1
  $8BBB  B3                         PUSHL
  $8BBC  A4 99 6B                   LOADL_abs              $6B99
  $8BBF  B4                         POPR
  $8BC0  BE                         URSHIFT
  $8BC1  A2 FF FF                   BYTE_STORE_far         $FFFF
  $8BC4  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8BC7  B3                         PUSHL
  $8BC8  A0 0B 00                   BYTE_LOADL_far         $000B
  $8BCB  B3                         PUSHL
  $8BCC  48                         LOADL_qimm   ; inline operand = 8
  $8BCD  B4                         POPR
  $8BCE  BE                         URSHIFT
  $8BCF  B4                         POPR
  $8BD0  DA                         AND
  $8BD1  D8 D8 8B                   JUMPF_abs              $8BD8
  $8BD4  40                         LOADL_qimm   ; inline operand = 0
  $8BD5  D6 D9 8B                   JUMP_abs               $8BD9
 >$8BD8  41                         LOADL_qimm   ; inline operand = 1
 >$8BD9  CF                         RETURN

; ============================================================
; sub $8BDA   (frame_off=+0, body @ $8BDF)   [PRG $24BDA]
; ============================================================
  $8BDF  A5 5F 70                   BYTE_LOADL_abs         $705F
  $8BE2  58                         LOADR_qimm   ; inline operand = 8
  $8BE3  DA                         AND
  $8BE4  D8 07 8C                   JUMPF_abs              $8C07
  $8BE7  A5 5F 70                   BYTE_LOADL_abs         $705F
  $8BEA  51                         LOADR_qimm   ; inline operand = 1
  $8BEB  DA                         AND
  $8BEC  D8 07 8C                   JUMPF_abs              $8C07
  $8BEF  A5 54 70                   BYTE_LOADL_abs         $7054
  $8BF2  51                         LOADR_qimm   ; inline operand = 1
  $8BF3  C0                         CMPEQ
  $8BF4  D8 07 8C                   JUMPF_abs              $8C07
  $8BF7  A5 67 70                   BYTE_LOADL_abs         $7067
  $8BFA  B3                         PUSHL
  $8BFB  A5 55 70                   BYTE_LOADL_abs         $7055
  $8BFE  B4                         POPR
  $8BFF  C0                         CMPEQ
  $8C00  D8 07 8C                   JUMPF_abs              $8C07
  $8C03  40                         LOADL_qimm   ; inline operand = 0
  $8C04  D6 08 8C                   JUMP_abs               $8C08
 >$8C07  41                         LOADL_qimm   ; inline operand = 1
 >$8C08  CF                         RETURN

; ============================================================
; sub $8C09   (frame_off=-1, body @ $8C0E)   [PRG $24C09]
; ============================================================
  $8C0E  A0 0D 00                   BYTE_LOADL_far         $000D
  $8C11  D2                         LSHIFT1
  $8C12  D2                         LSHIFT1
  $8C13  B3                         PUSHL
  $8C14  A4 9B 6B                   LOADL_abs              $6B9B
  $8C17  B4                         POPR
  $8C18  BE                         URSHIFT
  $8C19  A2 FF FF                   BYTE_STORE_far         $FFFF
  $8C1C  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8C1F  B3                         PUSHL
  $8C20  A0 0B 00                   BYTE_LOADL_far         $000B
  $8C23  B3                         PUSHL
  $8C24  48                         LOADL_qimm   ; inline operand = 8
  $8C25  B4                         POPR
  $8C26  BE                         URSHIFT
  $8C27  B4                         POPR
  $8C28  DA                         AND
  $8C29  CF                         RETURN

; ============================================================
; sub $8C2A   (frame_off=-7, body @ $8C2F)   [PRG $24C2A]
; ============================================================
  $8C2F  A0 0F 00                   BYTE_LOADL_far         $000F
  $8C32  5E                         LOADR_qimm   ; inline operand = 14
  $8C33  B5                         MULT
  $8C34  8C BA 67                   LOADR_imm2             $67BA
  $8C37  BB                         ADD
  $8C38  85 FB                      STORE_near             $FB
  $8C3A  8A 8D 6B                   LOADL_imm2             $6B8D
  $8C3D  2B                         STORE_quick   ; inline operand = 11
  $8C3E  A0 0D 00                   BYTE_LOADL_far         $000D
  $8C41  B3                         PUSHL
  $8C42  A0 0B 00                   BYTE_LOADL_far         $000B
  $8C45  D2                         LSHIFT1
  $8C46  D2                         LSHIFT1
  $8C47  B4                         POPR
  $8C48  BB                         ADD
  $8C49  8C D4 95                   LOADR_imm2             $95D4
  $8C4C  BB                         ADD
  $8C4D  D3                         BYTE_DEREF
  $8C4E  1B                         LOADR_quick   ; inline operand = 11
  $8C4F  BB                         ADD
  $8C50  D3                         BYTE_DEREF
  $8C51  A2 FD FF                   BYTE_STORE_far         $FFFD
  $8C54  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $8C57  B3                         PUSHL
  $8C58  A0 0D 00                   BYTE_LOADL_far         $000D
  $8C5B  D2                         LSHIFT1
  $8C5C  D2                         LSHIFT1
  $8C5D  8C BE 6F                   LOADR_imm2             $6FBE
  $8C60  BB                         ADD
  $8C61  D3                         BYTE_DEREF
  $8C62  B4                         POPR
  $8C63  C8                         UCMPGT
  $8C64  D8 90 8C                   JUMPF_abs              $8C90
  $8C67  A5 74 6F                   BYTE_LOADL_abs         $6F74
  $8C6A  D0                         INC
  $8C6B  B3                         PUSHL
  $8C6C  A0 0D 00                   BYTE_LOADL_far         $000D
  $8C6F  83 FB                      LOADR_near             $FB
  $8C71  BB                         ADD
  $8C72  D3                         BYTE_DEREF
  $8C73  B3                         PUSHL
  $8C74  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $8C77  B3                         PUSHL
  $8C78  A0 0D 00                   BYTE_LOADL_far         $000D
  $8C7B  D2                         LSHIFT1
  $8C7C  D2                         LSHIFT1
  $8C7D  8C BE 6F                   LOADR_imm2             $6FBE
  $8C80  BB                         ADD
  $8C81  D3                         BYTE_DEREF
  $8C82  B4                         POPR
  $8C83  BC                         SUB
  $8C84  B4                         POPR
  $8C85  B5                         MULT
  $8C86  8B 64                      BYTE_LOADR_imm1        +100
  $8C88  B6                         SDIV
  $8C89  B4                         POPR
  $8C8A  B5                         MULT
  $8C8B  5A                         LOADR_qimm   ; inline operand = 10
  $8C8C  B6                         SDIV
  $8C8D  D6 91 8C                   JUMP_abs               $8C91
 >$8C90  40                         LOADL_qimm   ; inline operand = 0
 >$8C91  85 F9                      STORE_near             $F9
  $8C93  81 F9                      LOADL_near             $F9
  $8C95  CF                         RETURN

; ============================================================
; sub $8C96   (frame_off=-7, body @ $8C9B)   [PRG $24C96]
; ============================================================
  $8C9B  A0 0F 00                   BYTE_LOADL_far         $000F
  $8C9E  5E                         LOADR_qimm   ; inline operand = 14
  $8C9F  B5                         MULT
  $8CA0  8C BA 67                   LOADR_imm2             $67BA
  $8CA3  BB                         ADD
  $8CA4  2A                         STORE_quick   ; inline operand = 10
  $8CA5  8A 8D 6B                   LOADL_imm2             $6B8D
  $8CA8  2B                         STORE_quick   ; inline operand = 11
  $8CA9  A0 0D 00                   BYTE_LOADL_far         $000D
  $8CAC  B3                         PUSHL
  $8CAD  A0 0B 00                   BYTE_LOADL_far         $000B
  $8CB0  D2                         LSHIFT1
  $8CB1  D2                         LSHIFT1
  $8CB2  B4                         POPR
  $8CB3  BB                         ADD
  $8CB4  8C E4 95                   LOADR_imm2             $95E4
  $8CB7  BB                         ADD
  $8CB8  D3                         BYTE_DEREF
  $8CB9  1B                         LOADR_quick   ; inline operand = 11
  $8CBA  BB                         ADD
  $8CBB  D3                         BYTE_DEREF
  $8CBC  A2 FB FF                   BYTE_STORE_far         $FFFB
  $8CBF  A0 FB FF                   BYTE_LOADL_far         $FFFB
  $8CC2  8B 32                      BYTE_LOADR_imm1        +50
  $8CC4  C6                         UCMPLT
  $8CC5  D8 E8 8C                   JUMPF_abs              $8CE8
  $8CC8  A0 0D 00                   BYTE_LOADL_far         $000D
  $8CCB  1A                         LOADR_quick   ; inline operand = 10
  $8CCC  BB                         ADD
  $8CCD  D3                         BYTE_DEREF
  $8CCE  B3                         PUSHL
  $8CCF  A0 0D 00                   BYTE_LOADL_far         $000D
  $8CD2  1A                         LOADR_quick   ; inline operand = 10
  $8CD3  BB                         ADD
  $8CD4  D3                         BYTE_DEREF
  $8CD5  B3                         PUSHL
  $8CD6  A0 FB FF                   BYTE_LOADL_far         $FFFB
  $8CD9  B3                         PUSHL
  $8CDA  89 64                      BYTE_LOADL_imm1        +100
  $8CDC  B4                         POPR
  $8CDD  BC                         SUB
  $8CDE  B4                         POPR
  $8CDF  B5                         MULT
  $8CE0  8B 64                      BYTE_LOADR_imm1        +100
  $8CE2  B6                         SDIV
  $8CE3  B4                         POPR
  $8CE4  B6                         SDIV
  $8CE5  D6 E9 8C                   JUMP_abs               $8CE9
 >$8CE8  40                         LOADL_qimm   ; inline operand = 0
 >$8CE9  85 F9                      STORE_near             $F9
  $8CEB  81 F9                      LOADL_near             $F9
  $8CED  CF                         RETURN

; ============================================================
; sub $8CEE   (frame_off=-6, body @ $8CF3)   [PRG $24CEE]
; ============================================================
  $8CF3  63                         PUSH_qimm   ; inline operand = 3
  $8CF4  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8CF8  73                         ADD_qimm   ; inline operand = 3
  $8CF9  8C F4 01                   LOADR_imm2             $01F4
  $8CFC  B5                         MULT
  $8CFD  2A                         STORE_quick   ; inline operand = 10
  $8CFE  A4 6B 66                   LOADL_abs              $666B
  $8D01  D7 17 8D                   JUMPT_abs              $8D17
  $8D04  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8D07  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8D0A  61                         PUSH_qimm   ; inline operand = 1
  $8D0B  AA 3C 95                   PUSH_abs               $953C
  $8D0E  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8D12  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8D15  40                         LOADL_qimm   ; inline operand = 0
  $8D16  CF                         RETURN
 >$8D17  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8D1A  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8D1D  AA 6B 66                   PUSH_abs               $666B
  $8D20  61                         PUSH_qimm   ; inline operand = 1
  $8D21  AA 3E 95                   PUSH_abs               $953E
  $8D24  E9 F3 CC 06                CALL_abs_imm1          $CCF3 {native}, $06
  $8D28  2B                         STORE_quick   ; inline operand = 11
  $8D29  0B                         LOADL_quick   ; inline operand = 11
  $8D2A  8B FF                      BYTE_LOADR_imm1        -1
  $8D2C  C0                         CMPEQ
  $8D2D  D8 32 8D                   JUMPF_abs              $8D32
  $8D30  40                         LOADL_qimm   ; inline operand = 0
  $8D31  CF                         RETURN
 >$8D32  61                         PUSH_qimm   ; inline operand = 1
  $8D33  AA 9C 73                   PUSH_abs               $739C
  $8D36  8D 15                      BYTE_PUSH_imm1         +21
  $8D38  62                         PUSH_qimm   ; inline operand = 2
  $8D39  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $8D3D  0B                         LOADL_quick   ; inline operand = 11
  $8D3E  1A                         LOADR_quick   ; inline operand = 10
  $8D3F  C8                         UCMPGT
  $8D40  D8 64 8D                   JUMPF_abs              $8D64
  $8D43  64                         PUSH_qimm   ; inline operand = 4
  $8D44  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8D48  D8 64 8D                   JUMPF_abs              $8D64
  $8D4B  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8D4E  61                         PUSH_qimm   ; inline operand = 1
  $8D4F  8E F4 95                   PUSH_imm2              $95F4
  $8D52  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8D56  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8D59  0B                         LOADL_quick   ; inline operand = 11
  $8D5A  CD                         SWAP
  $8D5B  A4 6B 66                   LOADL_abs              $666B
  $8D5E  BC                         SUB
  $8D5F  A8 6B 66                   STORE_abs              $666B
  $8D62  41                         LOADL_qimm   ; inline operand = 1
  $8D63  CF                         RETURN
 >$8D64  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8D67  61                         PUSH_qimm   ; inline operand = 1
  $8D68  8E 26 96                   PUSH_imm2              $9626
  $8D6B  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8D6F  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8D72  4A                         LOADL_qimm   ; inline operand = 10
  $8D73  CF                         RETURN

; ============================================================
; sub $8D74   (frame_off=-3, body @ $8D79)   [PRG $24D74]
; ============================================================
  $8D79  40                         LOADL_qimm   ; inline operand = 0
  $8D7A  85 FD                      STORE_near             $FD
 >$8D7C  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8D7F  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8D82  61                         PUSH_qimm   ; inline operand = 1
  $8D83  AA 42 95                   PUSH_abs               $9542
  $8D86  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8D8A  61                         PUSH_qimm   ; inline operand = 1
  $8D8B  62                         PUSH_qimm   ; inline operand = 2
  $8D8C  8E 62 96                   PUSH_imm2              $9662
  $8D8F  61                         PUSH_qimm   ; inline operand = 1
  $8D90  68                         PUSH_qimm   ; inline operand = 8
  $8D91  8D 19                      BYTE_PUSH_imm1         +25
  $8D93  68                         PUSH_qimm   ; inline operand = 8
  $8D94  E9 56 A1 0E                CALL_abs_imm1          $A156 {native}, $0E
  $8D98  A2 FF FF                   BYTE_STORE_far         $FFFF
  $8D9B  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8D9E  8C FF 00                   LOADR_imm2             $00FF
  $8DA1  C1                         CMPNE
  $8DA2  D8 7C 8D                   JUMPF_abs              $8D7C
  $8DA5  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8DA8  D7 C7 8D                   JUMPT_abs              $8DC7
  $8DAB  A0 0B 00                   BYTE_LOADL_far         $000B
  $8DAE  B3                         PUSHL
  $8DAF  E9 EE 8C 02                CALL_abs_imm1          $8CEE {bytecode}, $02
  $8DB3  85 FD                      STORE_near             $FD
  $8DB5  81 FD                      LOADL_near             $FD
  $8DB7  D8 7C 8D                   JUMPF_abs              $8D7C
  $8DBA  81 FD                      LOADL_near             $FD
  $8DBC  5A                         LOADR_qimm   ; inline operand = 10
  $8DBD  C0                         CMPEQ
  $8DBE  D8 C4 8D                   JUMPF_abs              $8DC4
  $8DC1  40                         LOADL_qimm   ; inline operand = 0
  $8DC2  85 FD                      STORE_near             $FD
 >$8DC4  81 FD                      LOADL_near             $FD
  $8DC6  CF                         RETURN
 >$8DC7  61                         PUSH_qimm   ; inline operand = 1
  $8DC8  AA 9C 73                   PUSH_abs               $739C
  $8DCB  8D 15                      BYTE_PUSH_imm1         +21
  $8DCD  62                         PUSH_qimm   ; inline operand = 2
  $8DCE  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $8DD2  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8DD5  0D                         LOADL_quick   ; inline operand = 13
  $8DD6  D8 E0 8D                   JUMPF_abs              $8DE0
  $8DD9  61                         PUSH_qimm   ; inline operand = 1
  $8DDA  8E 71 96                   PUSH_imm2              $9671
  $8DDD  D6 E4 8D                   JUMP_abs               $8DE4
 >$8DE0  61                         PUSH_qimm   ; inline operand = 1
  $8DE1  8E A7 96                   PUSH_imm2              $96A7
 >$8DE4  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8DE8  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8DEB  40                         LOADL_qimm   ; inline operand = 0
  $8DEC  CF                         RETURN

; ============================================================
; sub $8DED   (frame_off=+0, body @ $8DF2)   [PRG $24DED]
; ============================================================
  $8DF2  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8DF5  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8DF8  61                         PUSH_qimm   ; inline operand = 1
  $8DF9  AA 40 95                   PUSH_abs               $9540
  $8DFC  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8E00  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8E03  61                         PUSH_qimm   ; inline operand = 1
  $8E04  AA 9C 73                   PUSH_abs               $739C
  $8E07  8D 15                      BYTE_PUSH_imm1         +21
  $8E09  62                         PUSH_qimm   ; inline operand = 2
  $8E0A  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $8E0E  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8E11  61                         PUSH_qimm   ; inline operand = 1
  $8E12  8E C4 96                   PUSH_imm2              $96C4
  $8E15  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8E19  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8E1C  3D                         PUSH_quick   ; inline operand = 13
  $8E1D  A0 0B 00                   BYTE_LOADL_far         $000B
  $8E20  B3                         PUSHL
  $8E21  E9 74 8D 04                CALL_abs_imm1          $8D74 {bytecode}, $04
  $8E25  D8 4F 8E                   JUMPF_abs              $8E4F
  $8E28  60                         PUSH_qimm   ; inline operand = 0
  $8E29  60                         PUSH_qimm   ; inline operand = 0
  $8E2A  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8E2E  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8E31  61                         PUSH_qimm   ; inline operand = 1
  $8E32  8E 00 97                   PUSH_imm2              $9700
  $8E35  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8E39  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8E3C  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8E3F  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8E42  61                         PUSH_qimm   ; inline operand = 1
  $8E43  8E 2D 97                   PUSH_imm2              $972D
  $8E46  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8E4A  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8E4D  40                         LOADL_qimm   ; inline operand = 0
  $8E4E  CF                         RETURN
 >$8E4F  60                         PUSH_qimm   ; inline operand = 0
  $8E50  60                         PUSH_qimm   ; inline operand = 0
  $8E51  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8E55  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8E58  8E 50 97                   PUSH_imm2              $9750
  $8E5B  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $8E5F  41                         LOADL_qimm   ; inline operand = 1
  $8E60  CF                         RETURN

; ============================================================
; sub $8E61   (frame_off=-7, body @ $8E66)   [PRG $24E61]
; ============================================================
  $8E66  DE F9 FF                   LEAL_far               $FFF9
  $8E69  B3                         PUSHL
  $8E6A  60                         PUSH_qimm   ; inline operand = 0
  $8E6B  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $8E6F  A2 FF FF                   BYTE_STORE_far         $FFFF
  $8E72  40                         LOADL_qimm   ; inline operand = 0
  $8E73  D6 92 8E                   JUMP_abs               $8E92
 >$8E76  60                         PUSH_qimm   ; inline operand = 0
  $8E77  6A                         PUSH_qimm   ; inline operand = 10
  $8E78  DE F9 FF                   LEAL_far               $FFF9
  $8E7B  B3                         PUSHL
  $8E7C  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $8E7F  B4                         POPR
  $8E80  BB                         ADD
  $8E81  D3                         BYTE_DEREF
  $8E82  8B 18                      BYTE_LOADR_imm1        +24
  $8E84  B5                         MULT
  $8E85  8C AA 6A                   LOADR_imm2             $6AAA
  $8E88  BB                         ADD
  $8E89  B3                         PUSHL
  $8E8A  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $8E8E  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $8E91  D0                         INC
 >$8E92  A2 FE FF                   BYTE_STORE_far         $FFFE
  $8E95  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $8E98  B3                         PUSHL
  $8E99  A0 FE FF                   BYTE_LOADL_far         $FFFE
  $8E9C  B4                         POPR
  $8E9D  C6                         UCMPLT
  $8E9E  D7 76 8E                   JUMPT_abs              $8E76
  $8EA1  CF                         RETURN

; ============================================================
; sub $8EA2   (frame_off=+0, body @ $8EA7)   [PRG $24EA2]
; ============================================================
  $8EA7  60                         PUSH_qimm   ; inline operand = 0
  $8EA8  60                         PUSH_qimm   ; inline operand = 0
  $8EA9  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $8EAD  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8EB0  61                         PUSH_qimm   ; inline operand = 1
  $8EB1  8E 6E 97                   PUSH_imm2              $976E
  $8EB4  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8EB8  4A                         LOADL_qimm   ; inline operand = 10
  $8EB9  CD                         SWAP
  $8EBA  A4 6B 66                   LOADL_abs              $666B
  $8EBD  B8                         UDIV
  $8EBE  A8 6B 66                   STORE_abs              $666B
  $8EC1  AC 61 8E                   CALL_abs               $8E61 {bytecode}
  $8EC4  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8EC7  CF                         RETURN

; ============================================================
; sub $8EC8   (frame_off=-2, body @ $8ECD)   [PRG $24EC8]
; ============================================================
  $8ECD  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8ED0  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8ED3  8D 78                      BYTE_PUSH_imm1         +120
  $8ED5  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8ED9  B3                         PUSHL
  $8EDA  A5 C3 6B                   BYTE_LOADL_abs         $6BC3
  $8EDD  B3                         PUSHL
  $8EDE  A5 44 65                   BYTE_LOADL_abs         $6544
  $8EE1  D2                         LSHIFT1
  $8EE2  B4                         POPR
  $8EE3  BB                         ADD
  $8EE4  B4                         POPR
  $8EE5  C8                         UCMPGT
  $8EE6  D8 F7 8E                   JUMPF_abs              $8EF7
  $8EE9  61                         PUSH_qimm   ; inline operand = 1
  $8EEA  8E 90 97                   PUSH_imm2              $9790
  $8EED  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8EF1  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8EF4  D6 1E 8F                   JUMP_abs               $8F1E
 >$8EF7  61                         PUSH_qimm   ; inline operand = 1
  $8EF8  8E 9D 97                   PUSH_imm2              $979D
  $8EFB  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8EFF  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8F02  61                         PUSH_qimm   ; inline operand = 1
  $8F03  AA 9C 73                   PUSH_abs               $739C
  $8F06  8D 15                      BYTE_PUSH_imm1         +21
  $8F08  62                         PUSH_qimm   ; inline operand = 2
  $8F09  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $8F0D  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8F10  60                         PUSH_qimm   ; inline operand = 0
  $8F11  8E B7 97                   PUSH_imm2              $97B7
  $8F14  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8F18  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $8F1B  AC A2 8E                   CALL_abs               $8EA2 {bytecode}
 >$8F1E  41                         LOADL_qimm   ; inline operand = 1
  $8F1F  CF                         RETURN

; ============================================================
; sub $8F20   (frame_off=-6, body @ $8F25)   [PRG $24F20]
; ============================================================
  $8F25  A5 9B 73                   BYTE_LOADL_abs         $739B
  $8F28  5E                         LOADR_qimm   ; inline operand = 14
  $8F29  B5                         MULT
  $8F2A  8C BA 67                   LOADR_imm2             $67BA
  $8F2D  BB                         ADD
  $8F2E  29                         STORE_quick   ; inline operand = 9
  $8F2F  A5 9A 73                   BYTE_LOADL_abs         $739A
  $8F32  19                         LOADR_quick   ; inline operand = 9
  $8F33  BB                         ADD
  $8F34  D3                         BYTE_DEREF
  $8F35  B3                         PUSHL
  $8F36  A5 9A 73                   BYTE_LOADL_abs         $739A
  $8F39  D2                         LSHIFT1
  $8F3A  D2                         LSHIFT1
  $8F3B  8C BE 6F                   LOADR_imm2             $6FBE
  $8F3E  BB                         ADD
  $8F3F  D3                         BYTE_DEREF
  $8F40  B4                         POPR
  $8F41  B5                         MULT
  $8F42  55                         LOADR_qimm   ; inline operand = 5
  $8F43  B8                         UDIV
  $8F44  2A                         STORE_quick   ; inline operand = 10
  $8F45  3A                         PUSH_quick   ; inline operand = 10
  $8F46  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8F4A  1A                         LOADR_quick   ; inline operand = 10
  $8F4B  BB                         ADD
  $8F4C  8F 64                      BYTE_ADD_imm1          +100
  $8F4E  2A                         STORE_quick   ; inline operand = 10
  $8F4F  A4 6B 66                   LOADL_abs              $666B
  $8F52  D7 7D 8F                   JUMPT_abs              $8F7D
  $8F55  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8F58  61                         PUSH_qimm   ; inline operand = 1
  $8F59  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $8F5D  61                         PUSH_qimm   ; inline operand = 1
  $8F5E  8E EE 97                   PUSH_imm2              $97EE
  $8F61  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8F65  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8F68  61                         PUSH_qimm   ; inline operand = 1
  $8F69  AA 9C 73                   PUSH_abs               $739C
  $8F6C  8D 15                      BYTE_PUSH_imm1         +21
  $8F6E  62                         PUSH_qimm   ; inline operand = 2
  $8F6F  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $8F73  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8F76  61                         PUSH_qimm   ; inline operand = 1
  $8F77  8E 09 98                   PUSH_imm2              $9809
  $8F7A  D6 CB 8F                   JUMP_abs               $8FCB
 >$8F7D  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $8F80  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8F83  61                         PUSH_qimm   ; inline operand = 1
  $8F84  AA 6B 66                   PUSH_abs               $666B
  $8F87  61                         PUSH_qimm   ; inline operand = 1
  $8F88  8E 3E 98                   PUSH_imm2              $983E
  $8F8B  E9 F3 CC 08                CALL_abs_imm1          $CCF3 {native}, $08
  $8F8F  2B                         STORE_quick   ; inline operand = 11
  $8F90  0B                         LOADL_quick   ; inline operand = 11
  $8F91  8B FF                      BYTE_LOADR_imm1        -1
  $8F93  C0                         CMPEQ
  $8F94  D8 99 8F                   JUMPF_abs              $8F99
  $8F97  40                         LOADL_qimm   ; inline operand = 0
  $8F98  CF                         RETURN
 >$8F99  61                         PUSH_qimm   ; inline operand = 1
  $8F9A  AA 9C 73                   PUSH_abs               $739C
  $8F9D  8D 15                      BYTE_PUSH_imm1         +21
  $8F9F  62                         PUSH_qimm   ; inline operand = 2
  $8FA0  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $8FA4  0B                         LOADL_quick   ; inline operand = 11
  $8FA5  1A                         LOADR_quick   ; inline operand = 10
  $8FA6  C8                         UCMPGT
  $8FA7  D8 C4 8F                   JUMPF_abs              $8FC4
  $8FAA  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8FAD  61                         PUSH_qimm   ; inline operand = 1
  $8FAE  8E 57 98                   PUSH_imm2              $9857
  $8FB1  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8FB5  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8FB8  0B                         LOADL_quick   ; inline operand = 11
  $8FB9  CD                         SWAP
  $8FBA  A4 6B 66                   LOADL_abs              $666B
  $8FBD  BC                         SUB
  $8FBE  A8 6B 66                   STORE_abs              $666B
  $8FC1  D6 D5 8F                   JUMP_abs               $8FD5
 >$8FC4  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8FC7  61                         PUSH_qimm   ; inline operand = 1
  $8FC8  8E 6F 98                   PUSH_imm2              $986F
 >$8FCB  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8FCF  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8FD2  AC A2 8E                   CALL_abs               $8EA2 {bytecode}
 >$8FD5  41                         LOADL_qimm   ; inline operand = 1
  $8FD6  CF                         RETURN

; ============================================================
; sub $8FD7   (frame_off=+0, body @ $8FDC)   [PRG $24FD7]
; ============================================================
  $8FDC  63                         PUSH_qimm   ; inline operand = 3
  $8FDD  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $8FE1  D7 00 90                   JUMPT_abs              $9000
  $8FE4  61                         PUSH_qimm   ; inline operand = 1
  $8FE5  AA 9C 73                   PUSH_abs               $739C
  $8FE8  8D 15                      BYTE_PUSH_imm1         +21
  $8FEA  62                         PUSH_qimm   ; inline operand = 2
  $8FEB  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $8FEF  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $8FF2  61                         PUSH_qimm   ; inline operand = 1
  $8FF3  8E 98 98                   PUSH_imm2              $9898
  $8FF6  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $8FFA  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $8FFD  D6 1C 90                   JUMP_abs               $901C
 >$9000  61                         PUSH_qimm   ; inline operand = 1
  $9001  AA 9C 73                   PUSH_abs               $739C
  $9004  8D 15                      BYTE_PUSH_imm1         +21
  $9006  62                         PUSH_qimm   ; inline operand = 2
  $9007  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $900B  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $900E  61                         PUSH_qimm   ; inline operand = 1
  $900F  8E D2 98                   PUSH_imm2              $98D2
  $9012  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $9016  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $9019  AC A2 8E                   CALL_abs               $8EA2 {bytecode}
 >$901C  41                         LOADL_qimm   ; inline operand = 1
  $901D  CF                         RETURN

; ============================================================
; sub $901E   (frame_off=-3, body @ $9023)   [PRG $2501E]
; ============================================================
  $9023  6E                         PUSH_qimm   ; inline operand = 14
  $9024  E9 8C E0 02                CALL_abs_imm1          $E08C {native}, $02
  $9028  61                         PUSH_qimm   ; inline operand = 1
  $9029  E9 C1 E0 02                CALL_abs_imm1          $E0C1 {native}, $02
  $902D  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $9030  61                         PUSH_qimm   ; inline operand = 1
  $9031  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $9035  61                         PUSH_qimm   ; inline operand = 1
  $9036  8E 44 99                   PUSH_imm2              $9944
  $9039  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $903D  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $9040  61                         PUSH_qimm   ; inline operand = 1
  $9041  AA 9C 73                   PUSH_abs               $739C
  $9044  8D 15                      BYTE_PUSH_imm1         +21
  $9046  62                         PUSH_qimm   ; inline operand = 2
  $9047  E9 BB A5 08                CALL_abs_imm1          $A5BB {native}, $08
  $904B  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $904E  60                         PUSH_qimm   ; inline operand = 0
  $904F  8E 7C 99                   PUSH_imm2              $997C
  $9052  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $9056  AA 42 65                   PUSH_abs               $6542
  $9059  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $905D  A0 0B 00                   BYTE_LOADL_far         $000B
  $9060  D2                         LSHIFT1
  $9061  8C 07 99                   LOADR_imm2             $9907
  $9064  BB                         ADD
  $9065  B0                         DEREF
  $9066  B3                         PUSHL
  $9067  8E 7E 99                   PUSH_imm2              $997E
  $906A  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $906E  AC 7D A0                   CALL_abs               $A07D (win_close) {native}
  $9071  40                         LOADL_qimm   ; inline operand = 0
  $9072  85 FD                      STORE_near             $FD
 >$9074  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $9077  61                         PUSH_qimm   ; inline operand = 1
  $9078  E9 1B B8 02                CALL_abs_imm1          $B81B (win_render_syscall) {native}, $02
  $907C  61                         PUSH_qimm   ; inline operand = 1
  $907D  8E AA 99                   PUSH_imm2              $99AA
  $9080  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $9084  62                         PUSH_qimm   ; inline operand = 2
  $9085  63                         PUSH_qimm   ; inline operand = 3
  $9086  8E 0D 99                   PUSH_imm2              $990D
  $9089  62                         PUSH_qimm   ; inline operand = 2
  $908A  66                         PUSH_qimm   ; inline operand = 6
  $908B  8D 17                      BYTE_PUSH_imm1         +23
  $908D  68                         PUSH_qimm   ; inline operand = 8
  $908E  E9 56 A1 0E                CALL_abs_imm1          $A156 {native}, $0E
  $9092  A2 FF FF                   BYTE_STORE_far         $FFFF
  $9095  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $9098  8C FF 00                   LOADR_imm2             $00FF
  $909B  C1                         CMPNE
  $909C  D8 B0 90                   JUMPF_abs              $90B0
  $909F  A0 0B 00                   BYTE_LOADL_far         $000B
  $90A2  B3                         PUSHL
  $90A3  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $90A6  D2                         LSHIFT1
  $90A7  8C 13 99                   LOADR_imm2             $9913
  $90AA  BB                         ADD
  $90AB  B0                         DEREF
  $90AC  EA 02                      CALLPTR_imm1           $02
  $90AE  85 FD                      STORE_near             $FD
 >$90B0  81 FD                      LOADL_near             $FD
  $90B2  D8 74 90                   JUMPF_abs              $9074
  $90B5  60                         PUSH_qimm   ; inline operand = 0
  $90B6  60                         PUSH_qimm   ; inline operand = 0
  $90B7  E9 69 B8 04                CALL_abs_imm1          $B869 (draw_box_variant) {native}, $04
  $90BB  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $90BE  8E BC 99                   PUSH_imm2              $99BC
  $90C1  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $90C5  8D 10                      BYTE_PUSH_imm1         +16
  $90C7  E9 D6 E0 02                CALL_abs_imm1          $E0D6 {native}, $02
  $90CB  CF                         RETURN

; ============================================================
; sub $90CC   (frame_off=-8, body @ $90D1)   [PRG $250CC]
; ============================================================
  $90D1  60                         PUSH_qimm   ; inline operand = 0
  $90D2  60                         PUSH_qimm   ; inline operand = 0
  $90D3  68                         PUSH_qimm   ; inline operand = 8
  $90D4  8D 1E                      BYTE_PUSH_imm1         +30
  $90D6  8D 14                      BYTE_PUSH_imm1         +20
  $90D8  61                         PUSH_qimm   ; inline operand = 1
  $90D9  68                         PUSH_qimm   ; inline operand = 8
  $90DA  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $90DE  AC 89 B8                   CALL_abs               $B889 (draw_box_from_native) {native}
  $90E1  A4 6D 66                   LOADL_abs              $666D
  $90E4  57                         LOADR_qimm   ; inline operand = 7
  $90E5  DA                         AND
  $90E6  2B                         STORE_quick   ; inline operand = 11
  $90E7  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $90EA  A5 5F 70                   BYTE_LOADL_abs         $705F
  $90ED  51                         LOADR_qimm   ; inline operand = 1
  $90EE  DA                         AND
  $90EF  D8 0C 91                   JUMPF_abs              $910C
  $90F2  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $90F5  D3                         BYTE_DEREF
  $90F6  59                         LOADR_qimm   ; inline operand = 9
  $90F7  C1                         CMPNE
  $90F8  D8 0C 91                   JUMPF_abs              $910C
  $90FB  A4 50 70                   LOADL_abs              $7050 (player_char_record)
  $90FE  D3                         BYTE_DEREF
  $90FF  58                         LOADR_qimm   ; inline operand = 8
  $9100  C1                         CMPNE
  $9101  D8 0C 91                   JUMPF_abs              $910C
  $9104  63                         PUSH_qimm   ; inline operand = 3
  $9105  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $9109  D8 15 91                   JUMPF_abs              $9115
 >$910C  8D 14                      BYTE_PUSH_imm1         +20
  $910E  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $9112  D7 34 91                   JUMPT_abs              $9134
 >$9115  A5 67 70                   BYTE_LOADL_abs         $7067
  $9118  8B 32                      BYTE_LOADR_imm1        +50
  $911A  C6                         UCMPLT
  $911B  D8 34 91                   JUMPF_abs              $9134
  $911E  61                         PUSH_qimm   ; inline operand = 1
  $911F  62                         PUSH_qimm   ; inline operand = 2
  $9120  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $9124  D8 2D 91                   JUMPF_abs              $912D
  $9127  8A F7 99                   LOADL_imm2             $99F7
  $912A  D6 30 91                   JUMP_abs               $9130
 >$912D  8A 34 9A                   LOADL_imm2             $9A34
 >$9130  B3                         PUSHL
  $9131  D6 D8 91                   JUMP_abs               $91D8
 >$9134  A5 67 70                   BYTE_LOADL_abs         $7067
  $9137  D7 4F 91                   JUMPT_abs              $914F
  $913A  A5 40 65                   BYTE_LOADL_abs         $6540
  $913D  D7 4F 91                   JUMPT_abs              $914F
  $9140  6A                         PUSH_qimm   ; inline operand = 10
  $9141  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $9145  D7 4F 91                   JUMPT_abs              $914F
  $9148  60                         PUSH_qimm   ; inline operand = 0
  $9149  8E 64 9A                   PUSH_imm2              $9A64
  $914C  D6 D8 91                   JUMP_abs               $91D8
 >$914F  A5 67 70                   BYTE_LOADL_abs         $7067
  $9152  B3                         PUSHL
  $9153  E9 A1 8B 02                CALL_abs_imm1          $8BA1 {bytecode}, $02
  $9157  A2 FD FF                   BYTE_STORE_far         $FFFD
  $915A  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $915D  B3                         PUSHL
  $915E  60                         PUSH_qimm   ; inline operand = 0
  $915F  E9 B1 8B 04                CALL_abs_imm1          $8BB1 {bytecode}, $04
  $9163  B3                         PUSHL
  $9164  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $9167  51                         LOADR_qimm   ; inline operand = 1
  $9168  C8                         UCMPGT
  $9169  B4                         POPR
  $916A  DA                         AND
  $916B  D8 8B 91                   JUMPF_abs              $918B
  $916E  62                         PUSH_qimm   ; inline operand = 2
  $916F  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $9173  D8 8B 91                   JUMPF_abs              $918B
  $9176  61                         PUSH_qimm   ; inline operand = 1
  $9177  62                         PUSH_qimm   ; inline operand = 2
  $9178  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $917C  D8 85 91                   JUMPF_abs              $9185
  $917F  8A B7 9A                   LOADL_imm2             $9AB7
  $9182  D6 30 91                   JUMP_abs               $9130
 >$9185  8A E2 9A                   LOADL_imm2             $9AE2
  $9188  D6 30 91                   JUMP_abs               $9130
 >$918B  A5 45 65                   BYTE_LOADL_abs         $6545
  $918E  55                         LOADR_qimm   ; inline operand = 5
  $918F  C6                         UCMPLT
  $9190  D8 D4 91                   JUMPF_abs              $91D4
  $9193  6C                         PUSH_qimm   ; inline operand = 12
  $9194  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $9198  D7 D4 91                   JUMPT_abs              $91D4
  $919B  61                         PUSH_qimm   ; inline operand = 1
  $919C  8E 04 9B                   PUSH_imm2              $9B04
  $919F  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $91A3  AC 03 A0                   CALL_abs               $A003 (win_open) {bytecode}
  $91A6  AC 3F B8                   CALL_abs               $B83F (draw_window) {native}
  $91A9  63                         PUSH_qimm   ; inline operand = 3
  $91AA  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $91AE  D9 03 00 00 00 BF 91 01 00 C6 91 02 ... SWITCH_noncontig       count=3   ; .table 3 (key,target) + default (noncontiguous); SWITCH 0=>$91BF 1=>$91C6 2=>$91CD default=>$91DC
 >$91BF  61                         PUSH_qimm   ; inline operand = 1
  $91C0  8E 34 9B                   PUSH_imm2              $9B34
  $91C3  D6 D8 91                   JUMP_abs               $91D8
 >$91C6  61                         PUSH_qimm   ; inline operand = 1
  $91C7  8E 6D 9B                   PUSH_imm2              $9B6D
  $91CA  D6 D8 91                   JUMP_abs               $91D8
 >$91CD  61                         PUSH_qimm   ; inline operand = 1
  $91CE  8E A6 9B                   PUSH_imm2              $9BA6
  $91D1  D6 D8 91                   JUMP_abs               $91D8
 >$91D4  61                         PUSH_qimm   ; inline operand = 1
  $91D5  8E E2 9B                   PUSH_imm2              $9BE2
 >$91D8  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
 >$91DC  CF                         RETURN

; ============================================================
; sub $91DD   (frame_off=-10, body @ $91E2)   [PRG $251DD]
; ============================================================
  $91E2  8A 62 66                   LOADL_imm2             $6662
  $91E5  27                         STORE_quick   ; inline operand = 7
  $91E6  07                         LOADL_quick   ; inline operand = 7
  $91E7  73                         ADD_qimm   ; inline operand = 3
  $91E8  D3                         BYTE_DEREF
  $91E9  B3                         PUSHL
  $91EA  07                         LOADL_quick   ; inline operand = 7
  $91EB  72                         ADD_qimm   ; inline operand = 2
  $91EC  D3                         BYTE_DEREF
  $91ED  B3                         PUSHL
  $91EE  07                         LOADL_quick   ; inline operand = 7
  $91EF  D0                         INC
  $91F0  D3                         BYTE_DEREF
  $91F1  B3                         PUSHL
  $91F2  07                         LOADL_quick   ; inline operand = 7
  $91F3  D3                         BYTE_DEREF
  $91F4  B3                         PUSHL
  $91F5  E9 B0 D1 08                CALL_abs_imm1          $D1B0 (find_port_by_key) {native}, $08
  $91F9  A2 FA FF                   BYTE_STORE_far         $FFFA
  $91FC  A9 9B 73                   BYTE_STORE_abs         $739B
  $91FF  40                         LOADL_qimm   ; inline operand = 0
  $9200  28                         STORE_quick   ; inline operand = 8
  $9201  A0 FA FF                   BYTE_LOADL_far         $FFFA
  $9204  B3                         PUSHL
  $9205  E9 A1 8B 02                CALL_abs_imm1          $8BA1 {bytecode}, $02
  $9209  A2 FB FF                   BYTE_STORE_far         $FFFB
  $920C  A0 FB FF                   BYTE_LOADL_far         $FFFB
  $920F  52                         LOADR_qimm   ; inline operand = 2
  $9210  C0                         CMPEQ
  $9211  D8 1A 92                   JUMPF_abs              $921A
  $9214  8A 1C 14                   LOADL_imm2             $141C
  $9217  D6 25 92                   JUMP_abs               $9225
 >$921A  A0 FB FF                   BYTE_LOADL_far         $FFFB
  $921D  53                         LOADR_qimm   ; inline operand = 3
  $921E  C0                         CMPEQ
  $921F  D8 28 92                   JUMPF_abs              $9228
  $9222  8A 70 18                   LOADL_imm2             $1870
 >$9225  A8 9C 73                   STORE_abs              $739C
 >$9228  A0 FB FF                   BYTE_LOADL_far         $FFFB
  $922B  D1                         DEC
  $922C  A9 9A 73                   BYTE_STORE_abs         $739A
  $922F  A0 FB FF                   BYTE_LOADL_far         $FFFB
  $9232  51                         LOADR_qimm   ; inline operand = 1
  $9233  C8                         UCMPGT
  $9234  D8 A8 92                   JUMPF_abs              $92A8
  $9237  A0 FB FF                   BYTE_LOADL_far         $FFFB
  $923A  D1                         DEC
  $923B  B3                         PUSHL
  $923C  60                         PUSH_qimm   ; inline operand = 0
  $923D  E9 B1 8B 04                CALL_abs_imm1          $8BB1 {bytecode}, $04
  $9241  D8 A8 92                   JUMPF_abs              $92A8
  $9244  A0 FA FF                   BYTE_LOADL_far         $FFFA
  $9247  B3                         PUSHL
  $9248  A0 FB FF                   BYTE_LOADL_far         $FFFB
  $924B  D1                         DEC
  $924C  B3                         PUSHL
  $924D  60                         PUSH_qimm   ; inline operand = 0
  $924E  E9 2A 8C 06                CALL_abs_imm1          $8C2A {bytecode}, $06
  $9252  2B                         STORE_quick   ; inline operand = 11
  $9253  8E 2C 01                   PUSH_imm2              $012C
  $9256  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $925A  1B                         LOADR_quick   ; inline operand = 11
  $925B  C9                         UCMPGE
  $925C  D8 9D 92                   JUMPF_abs              $929D
  $925F  AC DA 8B                   CALL_abs               $8BDA {bytecode}
  $9262  D8 A8 92                   JUMPF_abs              $92A8
  $9265  A0 FB FF                   BYTE_LOADL_far         $FFFB
  $9268  D1                         DEC
  $9269  B3                         PUSHL
  $926A  60                         PUSH_qimm   ; inline operand = 0
  $926B  E9 09 8C 04                CALL_abs_imm1          $8C09 {bytecode}, $04
  $926F  D8 99 92                   JUMPF_abs              $9299
  $9272  A0 FA FF                   BYTE_LOADL_far         $FFFA
  $9275  B3                         PUSHL
  $9276  A0 FB FF                   BYTE_LOADL_far         $FFFB
  $9279  D1                         DEC
  $927A  B3                         PUSHL
  $927B  60                         PUSH_qimm   ; inline operand = 0
  $927C  E9 96 8C 06                CALL_abs_imm1          $8C96 {bytecode}, $06
  $9280  2A                         STORE_quick   ; inline operand = 10
  $9281  8D 64                      BYTE_PUSH_imm1         +100
  $9283  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $9287  1A                         LOADR_quick   ; inline operand = 10
  $9288  C6                         UCMPLT
  $9289  D8 A8 92                   JUMPF_abs              $92A8
  $928C  60                         PUSH_qimm   ; inline operand = 0
 >$928D  A0 FB FF                   BYTE_LOADL_far         $FFFB
  $9290  D1                         DEC
  $9291  B3                         PUSHL
  $9292  E9 ED 8D 04                CALL_abs_imm1          $8DED {bytecode}, $04
  $9296  D6 A7 92                   JUMP_abs               $92A7
 >$9299  61                         PUSH_qimm   ; inline operand = 1
  $929A  D6 8D 92                   JUMP_abs               $928D
 >$929D  A0 FB FF                   BYTE_LOADL_far         $FFFB
  $92A0  D1                         DEC
  $92A1  B3                         PUSHL
  $92A2  E9 1E 90 02                CALL_abs_imm1          $901E {bytecode}, $02
  $92A6  41                         LOADL_qimm   ; inline operand = 1
 >$92A7  28                         STORE_quick   ; inline operand = 8
 >$92A8  08                         LOADL_quick   ; inline operand = 8
  $92A9  D7 AF 92                   JUMPT_abs              $92AF
  $92AC  AC CC 90                   CALL_abs               $90CC {bytecode}
 >$92AF  08                         LOADL_quick   ; inline operand = 8
  $92B0  CF                         RETURN

