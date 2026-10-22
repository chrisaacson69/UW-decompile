VM bytecode disassembly
  ROM:          Uncharted Waters (USA).nes
  mode:         bulk dump of bank 1
  opcode spec:  vm-opcodes-v2.toml via nobunaga_vm.OPCODE_INFO (execution-validated lengths)
  labels:       0 CPU addresses named

  bank 1: found 66 bytecode-subroutine stubs

; ============================================================
; sub $A003   (frame_off=+0, body @ $A008)   [PRG $02003]
; ============================================================
  $A008  D6 4B A0                   JUMP_abs               $A04B
 >$A00B  61                         PUSH_qimm   ; inline operand = 1
  $A00C  8D 10                      BYTE_PUSH_imm1         +16
  $A00E  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $A012  D7 55 A0                   JUMPT_abs              $A055
  $A015  60                         PUSH_qimm   ; inline operand = 0
  $A016  8E E0 00                   PUSH_imm2              $00E0
  $A019  61                         PUSH_qimm   ; inline operand = 1
  $A01A  61                         PUSH_qimm   ; inline operand = 1
  $A01B  A4 88 72                   LOADL_abs              $7288
  $A01E  D0                         INC
  $A01F  B3                         PUSHL
  $A020  A4 86 72                   LOADL_abs              $7286
  $A023  D0                         INC
  $A024  B3                         PUSHL
  $A025  68                         PUSH_qimm   ; inline operand = 8
  $A026  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $A02A  62                         PUSH_qimm   ; inline operand = 2
  $A02B  8D 11                      BYTE_PUSH_imm1         +17
  $A02D  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $A031  60                         PUSH_qimm   ; inline operand = 0
  $A032  60                         PUSH_qimm   ; inline operand = 0
  $A033  61                         PUSH_qimm   ; inline operand = 1
  $A034  61                         PUSH_qimm   ; inline operand = 1
  $A035  A4 88 72                   LOADL_abs              $7288
  $A038  D0                         INC
  $A039  B3                         PUSHL
  $A03A  A4 86 72                   LOADL_abs              $7286
  $A03D  D0                         INC
  $A03E  B3                         PUSHL
  $A03F  68                         PUSH_qimm   ; inline operand = 8
  $A040  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $A044  62                         PUSH_qimm   ; inline operand = 2
  $A045  8D 11                      BYTE_PUSH_imm1         +17
  $A047  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
 >$A04B  60                         PUSH_qimm   ; inline operand = 0
  $A04C  8D 10                      BYTE_PUSH_imm1         +16
  $A04E  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $A052  D8 0B A0                   JUMPF_abs              $A00B
 >$A055  60                         PUSH_qimm   ; inline operand = 0
  $A056  60                         PUSH_qimm   ; inline operand = 0
  $A057  61                         PUSH_qimm   ; inline operand = 1
  $A058  61                         PUSH_qimm   ; inline operand = 1
  $A059  A4 88 72                   LOADL_abs              $7288
  $A05C  D0                         INC
  $A05D  B3                         PUSHL
  $A05E  A4 86 72                   LOADL_abs              $7286
  $A061  D0                         INC
  $A062  B3                         PUSHL
  $A063  68                         PUSH_qimm   ; inline operand = 8
  $A064  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
 >$A068  60                         PUSH_qimm   ; inline operand = 0
  $A069  8D 10                      BYTE_PUSH_imm1         +16
  $A06B  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $A06F  D7 68 A0                   JUMPT_abs              $A068
  $A072  61                         PUSH_qimm   ; inline operand = 1
  $A073  8D 10                      BYTE_PUSH_imm1         +16
  $A075  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $A079  D7 68 A0                   JUMPT_abs              $A068
  $A07C  CF                         RETURN

; ============================================================
; sub $A07D   (frame_off=+0, body @ $A082)   [PRG $0207D]
; ============================================================
  $A082  A4 88 72                   LOADL_abs              $7288
  $A085  D1                         DEC
  $A086  A8 88 72                   STORE_abs              $7288
  $A089  AC 03 A0                   CALL_abs               $A003 {bytecode}
  $A08C  CF                         RETURN

; ============================================================
; sub $A08D   (frame_off=-4, body @ $A092)   [PRG $0208D]
; ============================================================
  $A092  60                         PUSH_qimm   ; inline operand = 0
  $A093  60                         PUSH_qimm   ; inline operand = 0
  $A094  0E                         LOADL_quick   ; inline operand = 14
  $A095  83 13                      LOADR_near             $13
  $A097  B5                         MULT
  $A098  72                         ADD_qimm   ; inline operand = 2
  $A099  B3                         PUSHL
  $A09A  6A                         PUSH_qimm   ; inline operand = 10
  $A09B  3D                         PUSH_quick   ; inline operand = 13
  $A09C  3C                         PUSH_quick   ; inline operand = 12
  $A09D  E9 92 A6 0C                CALL_abs_imm1          $A692 {native}, $0C
  $A0A1  40                         LOADL_qimm   ; inline operand = 0
  $A0A2  D6 C0 A0                   JUMP_abs               $A0C0
 >$A0A5  0B                         LOADL_quick   ; inline operand = 11
  $A0A6  83 13                      LOADR_near             $13
  $A0A8  B5                         MULT
  $A0A9  1D                         LOADR_quick   ; inline operand = 13
  $A0AA  BB                         ADD
  $A0AB  72                         ADD_qimm   ; inline operand = 2
  $A0AC  B3                         PUSHL
  $A0AD  0C                         LOADL_quick   ; inline operand = 12
  $A0AE  72                         ADD_qimm   ; inline operand = 2
  $A0AF  B3                         PUSHL
  $A0B0  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $A0B4  0B                         LOADL_quick   ; inline operand = 11
  $A0B5  D2                         LSHIFT1
  $A0B6  1F                         LOADR_quick   ; inline operand = 15
  $A0B7  BB                         ADD
  $A0B8  B0                         DEREF
  $A0B9  B3                         PUSHL
  $A0BA  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $A0BE  0B                         LOADL_quick   ; inline operand = 11
  $A0BF  D0                         INC
 >$A0C0  2B                         STORE_quick   ; inline operand = 11
  $A0C1  0B                         LOADL_quick   ; inline operand = 11
  $A0C2  1E                         LOADR_quick   ; inline operand = 14
  $A0C3  C6                         UCMPLT
  $A0C4  D7 A5 A0                   JUMPT_abs              $A0A5
  $A0C7  61                         PUSH_qimm   ; inline operand = 1
  $A0C8  3E                         PUSH_quick   ; inline operand = 14
  $A0C9  87 13                      PUSH_near              $13
  $A0CB  60                         PUSH_qimm   ; inline operand = 0
  $A0CC  0D                         LOADL_quick   ; inline operand = 13
  $A0CD  72                         ADD_qimm   ; inline operand = 2
  $A0CE  B3                         PUSHL
  $A0CF  0C                         LOADL_quick   ; inline operand = 12
  $A0D0  D0                         INC
  $A0D1  B3                         PUSHL
  $A0D2  3E                         PUSH_quick   ; inline operand = 14
  $A0D3  8E 8C BA                   PUSH_imm2              $BA8C
  $A0D6  E9 24 C8 10                CALL_abs_imm1          $C824 {native}, $10
  $A0DA  2A                         STORE_quick   ; inline operand = 10
  $A0DB  0A                         LOADL_quick   ; inline operand = 10
  $A0DC  8B FF                      BYTE_LOADR_imm1        -1
  $A0DE  C0                         CMPEQ
  $A0DF  D8 E8 A0                   JUMPF_abs              $A0E8
  $A0E2  8A FF 00                   LOADL_imm2             $00FF
  $A0E5  D6 EA A0                   JUMP_abs               $A0EA
 >$A0E8  0A                         LOADL_quick   ; inline operand = 10
  $A0E9  D1                         DEC
 >$A0EA  CF                         RETURN

; ============================================================
; sub $A0EB   (frame_off=-8, body @ $A0F0)   [PRG $020EB]
; ============================================================
  $A0F0  AC BD B4                   CALL_abs               $B4BD {bytecode}
  $A0F3  48                         LOADL_qimm   ; inline operand = 8
  $A0F4  2B                         STORE_quick   ; inline operand = 11
  $A0F5  A5 7D 73                   BYTE_LOADL_abs         $737D
  $A0F8  51                         LOADR_qimm   ; inline operand = 1
  $A0F9  C0                         CMPEQ
  $A0FA  D8 01 A1                   JUMPF_abs              $A101
  $A0FD  44                         LOADL_qimm   ; inline operand = 4
  $A0FE  D6 03 A1                   JUMP_abs               $A103
 >$A101  89 14                      BYTE_LOADL_imm1        +20
 >$A103  2A                         STORE_quick   ; inline operand = 10
  $A104  40                         LOADL_qimm   ; inline operand = 0
  $A105  D6 2D A1                   JUMP_abs               $A12D
 >$A108  09                         LOADL_quick   ; inline operand = 9
  $A109  83 13                      LOADR_near             $13
  $A10B  BA                         UMOD
  $A10C  1D                         LOADR_quick   ; inline operand = 13
  $A10D  B5                         MULT
  $A10E  1A                         LOADR_quick   ; inline operand = 10
  $A10F  BB                         ADD
  $A110  D0                         INC
  $A111  B3                         PUSHL
  $A112  09                         LOADL_quick   ; inline operand = 9
  $A113  83 13                      LOADR_near             $13
  $A115  B8                         UDIV
  $A116  1C                         LOADR_quick   ; inline operand = 12
  $A117  B5                         MULT
  $A118  1B                         LOADR_quick   ; inline operand = 11
  $A119  BB                         ADD
  $A11A  D0                         INC
  $A11B  B3                         PUSHL
  $A11C  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $A120  60                         PUSH_qimm   ; inline operand = 0
  $A121  09                         LOADL_quick   ; inline operand = 9
  $A122  D2                         LSHIFT1
  $A123  1E                         LOADR_quick   ; inline operand = 14
  $A124  BB                         ADD
  $A125  B0                         DEREF
  $A126  B3                         PUSHL
  $A127  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $A12B  09                         LOADL_quick   ; inline operand = 9
  $A12C  D0                         INC
 >$A12D  29                         STORE_quick   ; inline operand = 9
  $A12E  09                         LOADL_quick   ; inline operand = 9
  $A12F  1F                         LOADR_quick   ; inline operand = 15
  $A130  C6                         UCMPLT
  $A131  D7 08 A1                   JUMPT_abs              $A108
  $A134  61                         PUSH_qimm   ; inline operand = 1
  $A135  87 13                      PUSH_near              $13
  $A137  3D                         PUSH_quick   ; inline operand = 13
  $A138  3C                         PUSH_quick   ; inline operand = 12
  $A139  0A                         LOADL_quick   ; inline operand = 10
  $A13A  D0                         INC
  $A13B  B3                         PUSHL
  $A13C  3B                         PUSH_quick   ; inline operand = 11
  $A13D  3F                         PUSH_quick   ; inline operand = 15
  $A13E  8E 8D BA                   PUSH_imm2              $BA8D
  $A141  E9 24 C8 10                CALL_abs_imm1          $C824 {native}, $10
  $A145  28                         STORE_quick   ; inline operand = 8
  $A146  08                         LOADL_quick   ; inline operand = 8
  $A147  8B FF                      BYTE_LOADR_imm1        -1
  $A149  C0                         CMPEQ
  $A14A  D8 53 A1                   JUMPF_abs              $A153
  $A14D  8A FF 00                   LOADL_imm2             $00FF
  $A150  D6 55 A1                   JUMP_abs               $A155
 >$A153  08                         LOADL_quick   ; inline operand = 8
  $A154  D1                         DEC
 >$A155  CF                         RETURN

; ============================================================
; sub $A156   (frame_off=-6, body @ $A15B)   [PRG $02156]
; ============================================================
  $A15B  0C                         LOADL_quick   ; inline operand = 12
  $A15C  D0                         INC
  $A15D  2A                         STORE_quick   ; inline operand = 10
  $A15E  40                         LOADL_qimm   ; inline operand = 0
  $A15F  D6 86 A1                   JUMP_abs               $A186
 >$A162  0B                         LOADL_quick   ; inline operand = 11
  $A163  83 17                      LOADR_near             $17
  $A165  BA                         UMOD
  $A166  1F                         LOADR_quick   ; inline operand = 15
  $A167  B5                         MULT
  $A168  1D                         LOADR_quick   ; inline operand = 13
  $A169  BB                         ADD
  $A16A  B3                         PUSHL
  $A16B  0B                         LOADL_quick   ; inline operand = 11
  $A16C  83 17                      LOADR_near             $17
  $A16E  B8                         UDIV
  $A16F  1E                         LOADR_quick   ; inline operand = 14
  $A170  B5                         MULT
  $A171  1A                         LOADR_quick   ; inline operand = 10
  $A172  BB                         ADD
  $A173  B3                         PUSHL
  $A174  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $A178  61                         PUSH_qimm   ; inline operand = 1
  $A179  0B                         LOADL_quick   ; inline operand = 11
  $A17A  D2                         LSHIFT1
  $A17B  83 13                      LOADR_near             $13
  $A17D  BB                         ADD
  $A17E  B0                         DEREF
  $A17F  B3                         PUSHL
  $A180  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $A184  0B                         LOADL_quick   ; inline operand = 11
  $A185  D0                         INC
 >$A186  2B                         STORE_quick   ; inline operand = 11
  $A187  0B                         LOADL_quick   ; inline operand = 11
  $A188  83 15                      LOADR_near             $15
  $A18A  C6                         UCMPLT
  $A18B  D7 62 A1                   JUMPT_abs              $A162
  $A18E  61                         PUSH_qimm   ; inline operand = 1
  $A18F  87 17                      PUSH_near              $17
  $A191  3F                         PUSH_quick   ; inline operand = 15
  $A192  3E                         PUSH_quick   ; inline operand = 14
  $A193  0D                         LOADL_quick   ; inline operand = 13
  $A194  D0                         INC
  $A195  B3                         PUSHL
  $A196  3C                         PUSH_quick   ; inline operand = 12
  $A197  87 15                      PUSH_near              $15
  $A199  8E 8E BA                   PUSH_imm2              $BA8E
  $A19C  E9 24 C8 10                CALL_abs_imm1          $C824 {native}, $10
  $A1A0  29                         STORE_quick   ; inline operand = 9
  $A1A1  09                         LOADL_quick   ; inline operand = 9
  $A1A2  8B FF                      BYTE_LOADR_imm1        -1
  $A1A4  C0                         CMPEQ
  $A1A5  D8 AE A1                   JUMPF_abs              $A1AE
  $A1A8  8A FF 00                   LOADL_imm2             $00FF
  $A1AB  D6 B0 A1                   JUMP_abs               $A1B0
 >$A1AE  09                         LOADL_quick   ; inline operand = 9
  $A1AF  D1                         DEC
 >$A1B0  CF                         RETURN

; ============================================================
; sub $A1B1   (frame_off=-8, body @ $A1B6)   [PRG $021B1]
; ============================================================
  $A1B6  AC BD B4                   CALL_abs               $B4BD {bytecode}
  $A1B9  48                         LOADL_qimm   ; inline operand = 8
  $A1BA  2A                         STORE_quick   ; inline operand = 10
  $A1BB  A5 7D 73                   BYTE_LOADL_abs         $737D
  $A1BE  51                         LOADR_qimm   ; inline operand = 1
  $A1BF  C0                         CMPEQ
  $A1C0  D8 C7 A1                   JUMPF_abs              $A1C7
  $A1C3  44                         LOADL_qimm   ; inline operand = 4
  $A1C4  D6 C9 A1                   JUMP_abs               $A1C9
 >$A1C7  89 14                      BYTE_LOADL_imm1        +20
 >$A1C9  29                         STORE_quick   ; inline operand = 9
  $A1CA  40                         LOADL_qimm   ; inline operand = 0
  $A1CB  D6 F2 A1                   JUMP_abs               $A1F2
 >$A1CE  0B                         LOADL_quick   ; inline operand = 11
  $A1CF  83 13                      LOADR_near             $13
  $A1D1  BA                         UMOD
  $A1D2  1D                         LOADR_quick   ; inline operand = 13
  $A1D3  B5                         MULT
  $A1D4  19                         LOADR_quick   ; inline operand = 9
  $A1D5  BB                         ADD
  $A1D6  B3                         PUSHL
  $A1D7  0B                         LOADL_quick   ; inline operand = 11
  $A1D8  83 13                      LOADR_near             $13
  $A1DA  B8                         UDIV
  $A1DB  1C                         LOADR_quick   ; inline operand = 12
  $A1DC  B5                         MULT
  $A1DD  1A                         LOADR_quick   ; inline operand = 10
  $A1DE  BB                         ADD
  $A1DF  D0                         INC
  $A1E0  B3                         PUSHL
  $A1E1  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $A1E5  61                         PUSH_qimm   ; inline operand = 1
  $A1E6  0B                         LOADL_quick   ; inline operand = 11
  $A1E7  D2                         LSHIFT1
  $A1E8  1E                         LOADR_quick   ; inline operand = 14
  $A1E9  BB                         ADD
  $A1EA  B0                         DEREF
  $A1EB  B3                         PUSHL
  $A1EC  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $A1F0  0B                         LOADL_quick   ; inline operand = 11
  $A1F1  D0                         INC
 >$A1F2  2B                         STORE_quick   ; inline operand = 11
  $A1F3  0B                         LOADL_quick   ; inline operand = 11
  $A1F4  1F                         LOADR_quick   ; inline operand = 15
  $A1F5  C6                         UCMPLT
  $A1F6  D7 CE A1                   JUMPT_abs              $A1CE
  $A1F9  62                         PUSH_qimm   ; inline operand = 2
  $A1FA  87 13                      PUSH_near              $13
  $A1FC  3D                         PUSH_quick   ; inline operand = 13
  $A1FD  3C                         PUSH_quick   ; inline operand = 12
  $A1FE  09                         LOADL_quick   ; inline operand = 9
  $A1FF  D0                         INC
  $A200  B3                         PUSHL
  $A201  3A                         PUSH_quick   ; inline operand = 10
  $A202  3F                         PUSH_quick   ; inline operand = 15
  $A203  8E 8F BA                   PUSH_imm2              $BA8F
  $A206  E9 24 C8 10                CALL_abs_imm1          $C824 {native}, $10
  $A20A  28                         STORE_quick   ; inline operand = 8
  $A20B  08                         LOADL_quick   ; inline operand = 8
  $A20C  1F                         LOADR_quick   ; inline operand = 15
  $A20D  C7                         UCMPLE
  $A20E  D8 14 A2                   JUMPF_abs              $A214
  $A211  08                         LOADL_quick   ; inline operand = 8
  $A212  D1                         DEC
  $A213  28                         STORE_quick   ; inline operand = 8
 >$A214  08                         LOADL_quick   ; inline operand = 8
  $A215  CF                         RETURN

; ============================================================
; sub $A216   (frame_off=-1, body @ $A21B)   [PRG $02216]
; ============================================================
  $A21B  61                         PUSH_qimm   ; inline operand = 1
  $A21C  3F                         PUSH_quick   ; inline operand = 15
  $A21D  3E                         PUSH_quick   ; inline operand = 14
  $A21E  60                         PUSH_qimm   ; inline operand = 0
  $A21F  3D                         PUSH_quick   ; inline operand = 13
  $A220  3C                         PUSH_quick   ; inline operand = 12
  $A221  3F                         PUSH_quick   ; inline operand = 15
  $A222  8E 90 BA                   PUSH_imm2              $BA90
  $A225  E9 24 C8 10                CALL_abs_imm1          $C824 {native}, $10
  $A229  A2 FF FF                   BYTE_STORE_far         $FFFF
  $A22C  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $A22F  8C FF 00                   LOADR_imm2             $00FF
  $A232  C0                         CMPEQ
  $A233  D8 3A A2                   JUMPF_abs              $A23A
  $A236  8A FF 00                   LOADL_imm2             $00FF
  $A239  CF                         RETURN
 >$A23A  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $A23D  D1                         DEC
  $A23E  A2 FF FF                   BYTE_STORE_far         $FFFF
  $A241  CF                         RETURN

; ============================================================
; sub $A242   (frame_off=-8, body @ $A247)   [PRG $02242]
; ============================================================
  $A247  8A 62 66                   LOADL_imm2             $6662
  $A24A  28                         STORE_quick   ; inline operand = 8
  $A24B  08                         LOADL_quick   ; inline operand = 8
  $A24C  78                         ADD_qimm   ; inline operand = 8
  $A24D  D3                         BYTE_DEREF
  $A24E  57                         LOADR_qimm   ; inline operand = 7
  $A24F  DA                         AND
  $A250  D2                         LSHIFT1
  $A251  D2                         LSHIFT1
  $A252  90 80 00                   ADD_imm2               $0080
  $A255  2B                         STORE_quick   ; inline operand = 11
  $A256  08                         LOADL_quick   ; inline operand = 8
  $A257  72                         ADD_qimm   ; inline operand = 2
  $A258  D3                         BYTE_DEREF
  $A259  D2                         LSHIFT1
  $A25A  53                         LOADR_qimm   ; inline operand = 3
  $A25B  BD                         LSHIFT
  $A25C  8F 10                      BYTE_ADD_imm1          +16
  $A25E  2A                         STORE_quick   ; inline operand = 10
  $A25F  A5 7D 73                   BYTE_LOADL_abs         $737D
  $A262  D2                         LSHIFT1
  $A263  8C 14 DF                   LOADR_imm2             $DF14
  $A266  BB                         ADD
  $A267  B0                         DEREF
  $A268  B3                         PUSHL
  $A269  08                         LOADL_quick   ; inline operand = 8
  $A26A  73                         ADD_qimm   ; inline operand = 3
  $A26B  D3                         BYTE_DEREF
  $A26C  D2                         LSHIFT1
  $A26D  53                         LOADR_qimm   ; inline operand = 3
  $A26E  BD                         LSHIFT
  $A26F  B4                         POPR
  $A270  BB                         ADD
  $A271  78                         ADD_qimm   ; inline operand = 8
  $A272  29                         STORE_quick   ; inline operand = 9
  $A273  63                         PUSH_qimm   ; inline operand = 3
  $A274  0B                         LOADL_quick   ; inline operand = 11
  $A275  73                         ADD_qimm   ; inline operand = 3
  $A276  58                         LOADR_qimm   ; inline operand = 8
  $A277  BD                         LSHIFT
  $A278  1B                         LOADR_quick   ; inline operand = 11
  $A279  BB                         ADD
  $A27A  72                         ADD_qimm   ; inline operand = 2
  $A27B  B3                         PUSHL
  $A27C  0B                         LOADL_quick   ; inline operand = 11
  $A27D  D0                         INC
  $A27E  58                         LOADR_qimm   ; inline operand = 8
  $A27F  BD                         LSHIFT
  $A280  1B                         LOADR_quick   ; inline operand = 11
  $A281  BB                         ADD
  $A282  B3                         PUSHL
  $A283  09                         LOADL_quick   ; inline operand = 9
  $A284  58                         LOADR_qimm   ; inline operand = 8
  $A285  BD                         LSHIFT
  $A286  1A                         LOADR_quick   ; inline operand = 10
  $A287  BB                         ADD
  $A288  B3                         PUSHL
  $A289  8E 01 05                   PUSH_imm2              $0501
  $A28C  6E                         PUSH_qimm   ; inline operand = 14
  $A28D  E9 D4 EE 0C                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0C
  $A291  CF                         RETURN

; ============================================================
; sub $A292   (frame_off=-6, body @ $A297)   [PRG $02292]
; ============================================================
  $A297  8A 62 66                   LOADL_imm2             $6662
  $A29A  29                         STORE_quick   ; inline operand = 9
  $A29B  09                         LOADL_quick   ; inline operand = 9
  $A29C  78                         ADD_qimm   ; inline operand = 8
  $A29D  D3                         BYTE_DEREF
  $A29E  A2 FD FF                   BYTE_STORE_far         $FFFD
  $A2A1  A2 FC FF                   BYTE_STORE_far         $FFFC
  $A2A4  61                         PUSH_qimm   ; inline operand = 1
  $A2A5  8D 11                      BYTE_PUSH_imm1         +17
  $A2A7  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $A2AB  AC 42 A2                   CALL_abs               $A242 {bytecode}
  $A2AE  40                         LOADL_qimm   ; inline operand = 0
  $A2AF  2B                         STORE_quick   ; inline operand = 11
 >$A2B0  09                         LOADL_quick   ; inline operand = 9
  $A2B1  78                         ADD_qimm   ; inline operand = 8
  $A2B2  D3                         BYTE_DEREF
  $A2B3  B3                         PUSHL
  $A2B4  A0 FC FF                   BYTE_LOADL_far         $FFFC
  $A2B7  B4                         POPR
  $A2B8  C1                         CMPNE
  $A2B9  D8 C5 A2                   JUMPF_abs              $A2C5
  $A2BC  AC 42 A2                   CALL_abs               $A242 {bytecode}
  $A2BF  09                         LOADL_quick   ; inline operand = 9
  $A2C0  78                         ADD_qimm   ; inline operand = 8
  $A2C1  D3                         BYTE_DEREF
  $A2C2  A2 FC FF                   BYTE_STORE_far         $FFFC
 >$A2C5  6C                         PUSH_qimm   ; inline operand = 12
  $A2C6  3B                         PUSH_quick   ; inline operand = 11
  $A2C7  E9 4D CE 04                CALL_abs_imm1          $CE4D {native}, $04
  $A2CB  AC F6 C7                   CALL_abs               $C7F6 {native}
  $A2CE  2B                         STORE_quick   ; inline operand = 11
  $A2CF  0B                         LOADL_quick   ; inline operand = 11
  $A2D0  8B 40                      BYTE_LOADR_imm1        +64
  $A2D2  C0                         CMPEQ
  $A2D3  D8 03 A3                   JUMPF_abs              $A303
  $A2D6  09                         LOADL_quick   ; inline operand = 9
  $A2D7  78                         ADD_qimm   ; inline operand = 8
  $A2D8  D3                         BYTE_DEREF
  $A2D9  D7 FB A2                   JUMPT_abs              $A2FB
  $A2DC  09                         LOADL_quick   ; inline operand = 9
  $A2DD  78                         ADD_qimm   ; inline operand = 8
  $A2DE  B3                         PUSHL
  $A2DF  47                         LOADL_qimm   ; inline operand = 7
  $A2E0  D6 F7 A2                   JUMP_abs               $A2F7
 >$A2E3  09                         LOADL_quick   ; inline operand = 9
  $A2E4  78                         ADD_qimm   ; inline operand = 8
  $A2E5  D3                         BYTE_DEREF
  $A2E6  57                         LOADR_qimm   ; inline operand = 7
  $A2E7  C0                         CMPEQ
  $A2E8  D8 F2 A2                   JUMPF_abs              $A2F2
  $A2EB  09                         LOADL_quick   ; inline operand = 9
  $A2EC  78                         ADD_qimm   ; inline operand = 8
  $A2ED  B3                         PUSHL
  $A2EE  40                         LOADL_qimm   ; inline operand = 0
  $A2EF  D6 F7 A2                   JUMP_abs               $A2F7
 >$A2F2  09                         LOADL_quick   ; inline operand = 9
  $A2F3  78                         ADD_qimm   ; inline operand = 8
  $A2F4  B3                         PUSHL
  $A2F5  D3                         BYTE_DEREF
  $A2F6  D0                         INC
 >$A2F7  D4                         BYTE_POPSTORE
  $A2F8  D6 B0 A2                   JUMP_abs               $A2B0
 >$A2FB  09                         LOADL_quick   ; inline operand = 9
  $A2FC  78                         ADD_qimm   ; inline operand = 8
  $A2FD  B3                         PUSHL
  $A2FE  D3                         BYTE_DEREF
  $A2FF  D1                         DEC
  $A300  D6 F7 A2                   JUMP_abs               $A2F7
 >$A303  0B                         LOADL_quick   ; inline operand = 11
  $A304  8C 80 00                   LOADR_imm2             $0080
  $A307  C0                         CMPEQ
  $A308  D7 E3 A2                   JUMPT_abs              $A2E3
  $A30B  0B                         LOADL_quick   ; inline operand = 11
  $A30C  51                         LOADR_qimm   ; inline operand = 1
  $A30D  C0                         CMPEQ
  $A30E  D7 17 A3                   JUMPT_abs              $A317
  $A311  0B                         LOADL_quick   ; inline operand = 11
  $A312  52                         LOADR_qimm   ; inline operand = 2
  $A313  C0                         CMPEQ
  $A314  D8 B0 A2                   JUMPF_abs              $A2B0
 >$A317  0B                         LOADL_quick   ; inline operand = 11
  $A318  52                         LOADR_qimm   ; inline operand = 2
  $A319  C0                         CMPEQ
  $A31A  D8 24 A3                   JUMPF_abs              $A324
  $A31D  09                         LOADL_quick   ; inline operand = 9
  $A31E  78                         ADD_qimm   ; inline operand = 8
  $A31F  B3                         PUSHL
  $A320  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $A323  D4                         BYTE_POPSTORE
 >$A324  60                         PUSH_qimm   ; inline operand = 0
  $A325  60                         PUSH_qimm   ; inline operand = 0
  $A326  60                         PUSH_qimm   ; inline operand = 0
  $A327  60                         PUSH_qimm   ; inline operand = 0
  $A328  8E 00 05                   PUSH_imm2              $0500
  $A32B  6E                         PUSH_qimm   ; inline operand = 14
  $A32C  E9 D4 EE 0C                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0C
 >$A330  AC AA C7                   CALL_abs               $C7AA {native}
  $A333  D7 30 A3                   JUMPT_abs              $A330
  $A336  09                         LOADL_quick   ; inline operand = 9
  $A337  78                         ADD_qimm   ; inline operand = 8
  $A338  D3                         BYTE_DEREF
  $A339  B3                         PUSHL
  $A33A  A0 FD FF                   BYTE_LOADL_far         $FFFD
  $A33D  B4                         POPR
  $A33E  C1                         CMPNE
  $A33F  CF                         RETURN

; ============================================================
; sub $A340   (frame_off=+0, body @ $A345)   [PRG $02340]
; ============================================================
  $A345  A5 68 70                   BYTE_LOADL_abs         $7068
  $A348  8C FF 00                   LOADR_imm2             $00FF
  $A34B  C0                         CMPEQ
  $A34C  D8 50 A3                   JUMPF_abs              $A350
  $A34F  CF                         RETURN
 >$A350  A5 68 70                   BYTE_LOADL_abs         $7068
  $A353  51                         LOADR_qimm   ; inline operand = 1
  $A354  C0                         CMPEQ
  $A355  D8 5E A3                   JUMPF_abs              $A35E
  $A358  63                         PUSH_qimm   ; inline operand = 3
  $A359  6C                         PUSH_qimm   ; inline operand = 12
  $A35A  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
 >$A35E  A5 8B 6B                   BYTE_LOADL_abs         $6B8B
  $A361  90 DC 05                   ADD_imm2               $05DC
  $A364  B3                         PUSHL
  $A365  8E 92 BA                   PUSH_imm2              $BA92
  $A368  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $A36C  CF                         RETURN

; ============================================================
; sub $A36D   (frame_off=+0, body @ $A372)   [PRG $0236D]
; ============================================================
  $A372  A5 68 70                   BYTE_LOADL_abs         $7068
  $A375  8C FF 00                   LOADR_imm2             $00FF
  $A378  C0                         CMPEQ
  $A379  D8 7D A3                   JUMPF_abs              $A37D
  $A37C  CF                         RETURN
 >$A37D  A5 68 70                   BYTE_LOADL_abs         $7068
  $A380  51                         LOADR_qimm   ; inline operand = 1
  $A381  C0                         CMPEQ
  $A382  D8 8B A3                   JUMPF_abs              $A38B
  $A385  63                         PUSH_qimm   ; inline operand = 3
  $A386  64                         PUSH_qimm   ; inline operand = 4
  $A387  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
 >$A38B  A5 8A 6B                   BYTE_LOADL_abs         $6B8A
  $A38E  D2                         LSHIFT1
  $A38F  8C 96 BA                   LOADR_imm2             $BA96
  $A392  BB                         ADD
  $A393  B0                         DEREF
  $A394  B3                         PUSHL
  $A395  8E DE BA                   PUSH_imm2              $BADE
  $A398  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $A39C  CF                         RETURN

; ============================================================
; sub $A39D   (frame_off=-2, body @ $A3A2)   [PRG $0239D]
; ============================================================
  $A3A2  A5 68 70                   BYTE_LOADL_abs         $7068
  $A3A5  8C FF 00                   LOADR_imm2             $00FF
  $A3A8  C0                         CMPEQ
  $A3A9  D8 AD A3                   JUMPF_abs              $A3AD
  $A3AC  CF                         RETURN
 >$A3AD  A5 68 70                   BYTE_LOADL_abs         $7068
  $A3B0  51                         LOADR_qimm   ; inline operand = 1
  $A3B1  C0                         CMPEQ
  $A3B2  D8 C1 A3                   JUMPF_abs              $A3C1
  $A3B5  63                         PUSH_qimm   ; inline operand = 3
  $A3B6  68                         PUSH_qimm   ; inline operand = 8
  $A3B7  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $A3BB  8A E1 BA                   LOADL_imm2             $BAE1
  $A3BE  D6 C4 A3                   JUMP_abs               $A3C4
 >$A3C1  8A E6 BA                   LOADL_imm2             $BAE6
 >$A3C4  2B                         STORE_quick   ; inline operand = 11
  $A3C5  A5 89 6B                   BYTE_LOADL_abs         $6B89
  $A3C8  D0                         INC
  $A3C9  B3                         PUSHL
  $A3CA  3B                         PUSH_quick   ; inline operand = 11
  $A3CB  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $A3CF  CF                         RETURN

; ============================================================
; sub $A3D0   (frame_off=+0, body @ $A3D5)   [PRG $023D0]
; ============================================================
  $A3D5  8E E0 00                   PUSH_imm2              $00E0
  $A3D8  0E                         LOADL_quick   ; inline operand = 14
  $A3D9  D2                         LSHIFT1
  $A3DA  D2                         LSHIFT1
  $A3DB  8C EB BA                   LOADR_imm2             $BAEB
  $A3DE  BB                         ADD
  $A3DF  B0                         DEREF
  $A3E0  B3                         PUSHL
  $A3E1  0E                         LOADL_quick   ; inline operand = 14
  $A3E2  D2                         LSHIFT1
  $A3E3  D2                         LSHIFT1
  $A3E4  8C E9 BA                   LOADR_imm2             $BAE9
  $A3E7  BB                         ADD
  $A3E8  B0                         DEREF
  $A3E9  B3                         PUSHL
  $A3EA  62                         PUSH_qimm   ; inline operand = 2
  $A3EB  62                         PUSH_qimm   ; inline operand = 2
  $A3EC  3D                         PUSH_quick   ; inline operand = 13
  $A3ED  3C                         PUSH_quick   ; inline operand = 12
  $A3EE  69                         PUSH_qimm   ; inline operand = 9
  $A3EF  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $A3F3  CF                         RETURN

; ============================================================
; sub $A3F4   (frame_off=+0, body @ $A3F9)   [PRG $023F4]
; ============================================================
  $A3F9  61                         PUSH_qimm   ; inline operand = 1
  $A3FA  3C                         PUSH_quick   ; inline operand = 12
  $A3FB  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $A3FF  61                         PUSH_qimm   ; inline operand = 1
  $A400  E9 9B CE 02                CALL_abs_imm1          $CE9B {native}, $02
  $A404  CF                         RETURN

; ============================================================
; sub $A405   (frame_off=-4, body @ $A40A)   [PRG $02405]
; ============================================================
  $A40A  A4 69 72                   LOADL_abs              $7269
  $A40D  2B                         STORE_quick   ; inline operand = 11
  $A40E  81 13                      LOADL_near             $13
  $A410  D7 49 A4                   JUMPT_abs              $A449
  $A413  0E                         LOADL_quick   ; inline operand = 14
  $A414  1F                         LOADR_quick   ; inline operand = 15
  $A415  B5                         MULT
  $A416  D2                         LSHIFT1
  $A417  1B                         LOADR_quick   ; inline operand = 11
  $A418  BB                         ADD
  $A419  8C 00 80                   LOADR_imm2             $8000
  $A41C  C9                         UCMPGE
  $A41D  2A                         STORE_quick   ; inline operand = 10
  $A41E  D7 7D A4                   JUMPT_abs              $A47D
  $A421  61                         PUSH_qimm   ; inline operand = 1
  $A422  60                         PUSH_qimm   ; inline operand = 0
  $A423  63                         PUSH_qimm   ; inline operand = 3
  $A424  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $A428  8E FF 00                   PUSH_imm2              $00FF
  $A42B  0E                         LOADL_quick   ; inline operand = 14
  $A42C  1F                         LOADR_quick   ; inline operand = 15
  $A42D  B5                         MULT
  $A42E  1B                         LOADR_quick   ; inline operand = 11
  $A42F  BB                         ADD
  $A430  B3                         PUSHL
  $A431  3B                         PUSH_quick   ; inline operand = 11
  $A432  3F                         PUSH_quick   ; inline operand = 15
  $A433  3E                         PUSH_quick   ; inline operand = 14
  $A434  3D                         PUSH_quick   ; inline operand = 13
  $A435  3C                         PUSH_quick   ; inline operand = 12
  $A436  6A                         PUSH_qimm   ; inline operand = 10
  $A437  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $A43B  65                         PUSH_qimm   ; inline operand = 5
  $A43C  60                         PUSH_qimm   ; inline operand = 0
  $A43D  63                         PUSH_qimm   ; inline operand = 3
  $A43E  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $A442  0E                         LOADL_quick   ; inline operand = 14
  $A443  1F                         LOADR_quick   ; inline operand = 15
  $A444  B5                         MULT
  $A445  D2                         LSHIFT1
  $A446  D6 75 A4                   JUMP_abs               $A475
 >$A449  0E                         LOADL_quick   ; inline operand = 14
  $A44A  1F                         LOADR_quick   ; inline operand = 15
  $A44B  B5                         MULT
  $A44C  1B                         LOADR_quick   ; inline operand = 11
  $A44D  BB                         ADD
  $A44E  8C 00 80                   LOADR_imm2             $8000
  $A451  C9                         UCMPGE
  $A452  2A                         STORE_quick   ; inline operand = 10
  $A453  D7 7D A4                   JUMPT_abs              $A47D
  $A456  61                         PUSH_qimm   ; inline operand = 1
  $A457  60                         PUSH_qimm   ; inline operand = 0
  $A458  63                         PUSH_qimm   ; inline operand = 3
  $A459  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $A45D  8E FF 00                   PUSH_imm2              $00FF
  $A460  3B                         PUSH_quick   ; inline operand = 11
  $A461  60                         PUSH_qimm   ; inline operand = 0
  $A462  3F                         PUSH_quick   ; inline operand = 15
  $A463  3E                         PUSH_quick   ; inline operand = 14
  $A464  3D                         PUSH_quick   ; inline operand = 13
  $A465  3C                         PUSH_quick   ; inline operand = 12
  $A466  6A                         PUSH_qimm   ; inline operand = 10
  $A467  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $A46B  65                         PUSH_qimm   ; inline operand = 5
  $A46C  60                         PUSH_qimm   ; inline operand = 0
  $A46D  63                         PUSH_qimm   ; inline operand = 3
  $A46E  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $A472  0E                         LOADL_quick   ; inline operand = 14
  $A473  1F                         LOADR_quick   ; inline operand = 15
  $A474  B5                         MULT
 >$A475  CD                         SWAP
  $A476  A4 69 72                   LOADL_abs              $7269
  $A479  BB                         ADD
  $A47A  A8 69 72                   STORE_abs              $7269
 >$A47D  0A                         LOADL_quick   ; inline operand = 10
  $A47E  D8 9A A4                   JUMPF_abs              $A49A
  $A481  60                         PUSH_qimm   ; inline operand = 0
  $A482  60                         PUSH_qimm   ; inline operand = 0
  $A483  60                         PUSH_qimm   ; inline operand = 0
  $A484  67                         PUSH_qimm   ; inline operand = 7
  $A485  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $A489  6A                         PUSH_qimm   ; inline operand = 10
  $A48A  6A                         PUSH_qimm   ; inline operand = 10
  $A48B  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $A48F  60                         PUSH_qimm   ; inline operand = 0
  $A490  8E F5 BA                   PUSH_imm2              $BAF5
  $A493  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
 >$A497  D6 97 A4                   JUMP_abs               $A497
 >$A49A  CF                         RETURN

; ============================================================
; sub $A49B   (frame_off=-2, body @ $A4A0)   [PRG $0249B]
; ============================================================
  $A4A0  A4 69 72                   LOADL_abs              $7269
  $A4A3  2B                         STORE_quick   ; inline operand = 11
  $A4A4  81 13                      LOADL_near             $13
  $A4A6  D7 D3 A4                   JUMPT_abs              $A4D3
  $A4A9  0E                         LOADL_quick   ; inline operand = 14
  $A4AA  1F                         LOADR_quick   ; inline operand = 15
  $A4AB  B5                         MULT
  $A4AC  D2                         LSHIFT1
  $A4AD  CD                         SWAP
  $A4AE  A4 69 72                   LOADL_abs              $7269
  $A4B1  BC                         SUB
  $A4B2  A8 69 72                   STORE_abs              $7269
  $A4B5  61                         PUSH_qimm   ; inline operand = 1
  $A4B6  60                         PUSH_qimm   ; inline operand = 0
  $A4B7  63                         PUSH_qimm   ; inline operand = 3
  $A4B8  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $A4BC  8E FF 00                   PUSH_imm2              $00FF
  $A4BF  0E                         LOADL_quick   ; inline operand = 14
  $A4C0  1F                         LOADR_quick   ; inline operand = 15
  $A4C1  B5                         MULT
  $A4C2  B3                         PUSHL
  $A4C3  0B                         LOADL_quick   ; inline operand = 11
  $A4C4  B4                         POPR
  $A4C5  BC                         SUB
  $A4C6  B3                         PUSHL
  $A4C7  0E                         LOADL_quick   ; inline operand = 14
  $A4C8  1F                         LOADR_quick   ; inline operand = 15
  $A4C9  B5                         MULT
  $A4CA  D2                         LSHIFT1
  $A4CB  B3                         PUSHL
  $A4CC  0B                         LOADL_quick   ; inline operand = 11
  $A4CD  B4                         POPR
  $A4CE  BC                         SUB
  $A4CF  B3                         PUSHL
  $A4D0  D6 F1 A4                   JUMP_abs               $A4F1
 >$A4D3  0E                         LOADL_quick   ; inline operand = 14
  $A4D4  1F                         LOADR_quick   ; inline operand = 15
  $A4D5  B5                         MULT
  $A4D6  CD                         SWAP
  $A4D7  A4 69 72                   LOADL_abs              $7269
  $A4DA  BC                         SUB
  $A4DB  A8 69 72                   STORE_abs              $7269
  $A4DE  61                         PUSH_qimm   ; inline operand = 1
  $A4DF  60                         PUSH_qimm   ; inline operand = 0
  $A4E0  63                         PUSH_qimm   ; inline operand = 3
  $A4E1  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $A4E5  8E FF 00                   PUSH_imm2              $00FF
  $A4E8  0E                         LOADL_quick   ; inline operand = 14
  $A4E9  1F                         LOADR_quick   ; inline operand = 15
  $A4EA  B5                         MULT
  $A4EB  B3                         PUSHL
  $A4EC  0B                         LOADL_quick   ; inline operand = 11
  $A4ED  B4                         POPR
  $A4EE  BC                         SUB
  $A4EF  B3                         PUSHL
  $A4F0  60                         PUSH_qimm   ; inline operand = 0
 >$A4F1  3F                         PUSH_quick   ; inline operand = 15
  $A4F2  3E                         PUSH_quick   ; inline operand = 14
  $A4F3  3D                         PUSH_quick   ; inline operand = 13
  $A4F4  3C                         PUSH_quick   ; inline operand = 12
  $A4F5  69                         PUSH_qimm   ; inline operand = 9
  $A4F6  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $A4FA  65                         PUSH_qimm   ; inline operand = 5
  $A4FB  60                         PUSH_qimm   ; inline operand = 0
  $A4FC  63                         PUSH_qimm   ; inline operand = 3
  $A4FD  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $A501  CF                         RETURN

; ============================================================
; sub $A502   (frame_off=+0, body @ $A507)   [PRG $02502]
; ============================================================
  $A507  60                         PUSH_qimm   ; inline operand = 0
  $A508  3F                         PUSH_quick   ; inline operand = 15
  $A509  3E                         PUSH_quick   ; inline operand = 14
  $A50A  3D                         PUSH_quick   ; inline operand = 13
  $A50B  3C                         PUSH_quick   ; inline operand = 12
  $A50C  E9 05 A4 0A                CALL_abs_imm1          $A405 {bytecode}, $0A
  $A510  A4 6B 72                   LOADL_abs              $726B
  $A513  D0                         INC
  $A514  A8 6B 72                   STORE_abs              $726B
  $A517  A4 6B 72                   LOADL_abs              $726B
  $A51A  D2                         LSHIFT1
  $A51B  8C 6D 72                   LOADR_imm2             $726D
  $A51E  BB                         ADD
  $A51F  B3                         PUSHL
  $A520  0C                         LOADL_quick   ; inline operand = 12
  $A521  B1                         POPSTORE
  $A522  A4 6B 72                   LOADL_abs              $726B
  $A525  D2                         LSHIFT1
  $A526  8C 73 72                   LOADR_imm2             $7273
  $A529  BB                         ADD
  $A52A  B3                         PUSHL
  $A52B  0D                         LOADL_quick   ; inline operand = 13
  $A52C  B1                         POPSTORE
  $A52D  A4 6B 72                   LOADL_abs              $726B
  $A530  D2                         LSHIFT1
  $A531  8C 79 72                   LOADR_imm2             $7279
  $A534  BB                         ADD
  $A535  B3                         PUSHL
  $A536  0E                         LOADL_quick   ; inline operand = 14
  $A537  B1                         POPSTORE
  $A538  A4 6B 72                   LOADL_abs              $726B
  $A53B  D2                         LSHIFT1
  $A53C  8C 7F 72                   LOADR_imm2             $727F
  $A53F  BB                         ADD
  $A540  B3                         PUSHL
  $A541  0F                         LOADL_quick   ; inline operand = 15
  $A542  B1                         POPSTORE
  $A543  CF                         RETURN

; ============================================================
; sub $A544   (frame_off=+0, body @ $A549)   [PRG $02544]
; ============================================================
  $A549  A4 6B 72                   LOADL_abs              $726B
  $A54C  50                         LOADR_qimm   ; inline operand = 0
  $A54D  C5                         SCMPGE
  $A54E  D8 87 A5                   JUMPF_abs              $A587
  $A551  60                         PUSH_qimm   ; inline operand = 0
  $A552  A4 6B 72                   LOADL_abs              $726B
  $A555  D2                         LSHIFT1
  $A556  8C 7F 72                   LOADR_imm2             $727F
  $A559  BB                         ADD
  $A55A  B0                         DEREF
  $A55B  B3                         PUSHL
  $A55C  A4 6B 72                   LOADL_abs              $726B
  $A55F  D2                         LSHIFT1
  $A560  8C 79 72                   LOADR_imm2             $7279
  $A563  BB                         ADD
  $A564  B0                         DEREF
  $A565  B3                         PUSHL
  $A566  A4 6B 72                   LOADL_abs              $726B
  $A569  D2                         LSHIFT1
  $A56A  8C 73 72                   LOADR_imm2             $7273
  $A56D  BB                         ADD
  $A56E  B0                         DEREF
  $A56F  B3                         PUSHL
  $A570  A4 6B 72                   LOADL_abs              $726B
  $A573  D2                         LSHIFT1
  $A574  8C 6D 72                   LOADR_imm2             $726D
  $A577  BB                         ADD
  $A578  B0                         DEREF
  $A579  B3                         PUSHL
  $A57A  E9 9B A4 0A                CALL_abs_imm1          $A49B {bytecode}, $0A
  $A57E  A4 6B 72                   LOADL_abs              $726B
  $A581  D1                         DEC
  $A582  A8 6B 72                   STORE_abs              $726B
  $A585  41                         LOADL_qimm   ; inline operand = 1
  $A586  CF                         RETURN
 >$A587  40                         LOADL_qimm   ; inline operand = 0
  $A588  CF                         RETURN

; ============================================================
; sub $A589   (frame_off=+0, body @ $A58E)   [PRG $02589]
; ============================================================
  $A58E  A5 8E 73                   BYTE_LOADL_abs         $738E
  $A591  8B 40                      BYTE_LOADR_imm1        +64
  $A593  C6                         UCMPLT
  $A594  D8 A9 A5                   JUMPF_abs              $A5A9
  $A597  A5 8E 73                   BYTE_LOADL_abs         $738E
  $A59A  B3                         PUSHL
  $A59B  89 40                      BYTE_LOADL_imm1        +64
  $A59D  B4                         POPR
  $A59E  BC                         SUB
  $A59F  B3                         PUSHL
  $A5A0  A5 8E 73                   BYTE_LOADL_abs         $738E
  $A5A3  B3                         PUSHL
  $A5A4  6C                         PUSH_qimm   ; inline operand = 12
  $A5A5  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
 >$A5A9  8A FF 00                   LOADL_imm2             $00FF
  $A5AC  A9 8E 73                   BYTE_STORE_abs         $738E
  $A5AF  A9 8B 73                   BYTE_STORE_abs         $738B
  $A5B2  A9 8A 73                   BYTE_STORE_abs         $738A
  $A5B5  89 FF                      BYTE_LOADL_imm1        -1
  $A5B7  A8 8C 73                   STORE_abs              $738C
  $A5BA  CF                         RETURN

; ============================================================
; sub $A5BB   (frame_off=-138, body @ $A5C0)   [PRG $025BB]
; ============================================================
  $A5C0  0F                         LOADL_quick   ; inline operand = 15
  $A5C1  53                         LOADR_qimm   ; inline operand = 3
  $A5C2  C0                         CMPEQ
  $A5C3  D8 E6 A5                   JUMPF_abs              $A5E6
  $A5C6  0E                         LOADL_quick   ; inline operand = 14
  $A5C7  D8 DC A5                   JUMPF_abs              $A5DC
  $A5CA  0E                         LOADL_quick   ; inline operand = 14
  $A5CB  54                         LOADR_qimm   ; inline operand = 4
  $A5CC  C0                         CMPEQ
  $A5CD  D7 DC A5                   JUMPT_abs              $A5DC
  $A5D0  0E                         LOADL_quick   ; inline operand = 14
  $A5D1  55                         LOADR_qimm   ; inline operand = 5
  $A5D2  C0                         CMPEQ
  $A5D3  D7 DC A5                   JUMPT_abs              $A5DC
  $A5D6  0E                         LOADL_quick   ; inline operand = 14
  $A5D7  56                         LOADR_qimm   ; inline operand = 6
  $A5D8  C0                         CMPEQ
  $A5D9  D8 E5 A5                   JUMPF_abs              $A5E5
 >$A5DC  0E                         LOADL_quick   ; inline operand = 14
  $A5DD  86 7A FF                   STORE_far              $FF7A
  $A5E0  89 40                      BYTE_LOADL_imm1        +64
  $A5E2  D6 30 A6                   JUMP_abs               $A630
 >$A5E5  CF                         RETURN
 >$A5E6  0F                         LOADL_quick   ; inline operand = 15
  $A5E7  5F                         LOADR_qimm   ; inline operand = 15
  $A5E8  DA                         AND
  $A5E9  D9 03 00 00 00 FA A5 01 00 24 A6 02 ... SWITCH_noncontig       count=3   ; .table 3 (key,target) + default (noncontiguous); SWITCH 0=>$A5FA 1=>$A624 2=>$A628 default=>$A62D
 >$A5FA  0E                         LOADL_quick   ; inline operand = 14
  $A5FB  8C FF 00                   LOADR_imm2             $00FF
  $A5FE  C1                         CMPNE
  $A5FF  D8 20 A6                   JUMPF_abs              $A620
  $A602  0E                         LOADL_quick   ; inline operand = 14
  $A603  57                         LOADR_qimm   ; inline operand = 7
  $A604  B5                         MULT
  $A605  8C 42 65                   LOADR_imm2             $6542
  $A608  BB                         ADD
  $A609  86 76 FF                   STORE_far              $FF76
  $A60C  82 76 FF                   LOADL_far              $FF76
  $A60F  74                         ADD_qimm   ; inline operand = 4
  $A610  B0                         DEREF
 >$A611  86 7A FF                   STORE_far              $FF7A
  $A614  0F                         LOADL_quick   ; inline operand = 15
  $A615  8B 10                      BYTE_LOADR_imm1        +16
  $A617  DA                         AND
  $A618  D8 2E A6                   JUMPF_abs              $A62E
  $A61B  89 64                      BYTE_LOADL_imm1        +100
  $A61D  D6 30 A6                   JUMP_abs               $A630
 >$A620  48                         LOADL_qimm   ; inline operand = 8
  $A621  D6 11 A6                   JUMP_abs               $A611
 >$A624  0E                         LOADL_quick   ; inline operand = 14
  $A625  D6 11 A6                   JUMP_abs               $A611
 >$A628  0E                         LOADL_quick   ; inline operand = 14
  $A629  7D                         ADD_qimm   ; inline operand = 13
  $A62A  D6 11 A6                   JUMP_abs               $A611
 >$A62D  CF                         RETURN
 >$A62E  89 21                      BYTE_LOADL_imm1        +33
 >$A630  A9 8E 73                   BYTE_STORE_abs         $738E
  $A633  A4 8C 73                   LOADL_abs              $738C
  $A636  84 7A FF                   LOADR_far              $FF7A
  $A639  C1                         CMPNE
  $A63A  D7 4D A6                   JUMPT_abs              $A64D
  $A63D  A5 8A 73                   BYTE_LOADL_abs         $738A
  $A640  1C                         LOADR_quick   ; inline operand = 12
  $A641  C1                         CMPNE
  $A642  D7 4D A6                   JUMPT_abs              $A64D
  $A645  A5 8B 73                   BYTE_LOADL_abs         $738B
  $A648  1D                         LOADR_quick   ; inline operand = 13
  $A649  C1                         CMPNE
  $A64A  D8 74 A6                   JUMPF_abs              $A674
 >$A64D  0C                         LOADL_quick   ; inline operand = 12
  $A64E  A9 8A 73                   BYTE_STORE_abs         $738A
  $A651  0D                         LOADL_quick   ; inline operand = 13
  $A652  A9 8B 73                   BYTE_STORE_abs         $738B
  $A655  82 7A FF                   LOADL_far              $FF7A
  $A658  A8 8C 73                   STORE_abs              $738C
  $A65B  A4 8C 73                   LOADL_abs              $738C
  $A65E  8C FF 0F                   LOADR_imm2             $0FFF
  $A661  C8                         UCMPGT
  $A662  D8 6B A6                   JUMPF_abs              $A66B
  $A665  8E E4 00                   PUSH_imm2              $00E4
  $A668  D6 6E A6                   JUMP_abs               $A66E
 >$A66B  8E E3 00                   PUSH_imm2              $00E3
 >$A66E  61                         PUSH_qimm   ; inline operand = 1
  $A66F  62                         PUSH_qimm   ; inline operand = 2
  $A670  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
 >$A674  CF                         RETURN

; ============================================================
; sub $A675   (frame_off=-32, body @ $A67A)   [PRG $02675]
; ============================================================
  $A67A  6F                         PUSH_qimm   ; inline operand = 15
  $A67B  8D 20                      BYTE_PUSH_imm1         +32
  $A67D  DE E0 FF                   LEAL_far               $FFE0
  $A680  B3                         PUSHL
  $A681  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $A685  8D 20                      BYTE_PUSH_imm1         +32
  $A687  60                         PUSH_qimm   ; inline operand = 0
  $A688  DE E0 FF                   LEAL_far               $FFE0
  $A68B  B3                         PUSHL
  $A68C  66                         PUSH_qimm   ; inline operand = 6
  $A68D  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $A691  CF                         RETURN

; ============================================================
; sub $AB2C   (frame_off=+0, body @ $AB31)   [PRG $02B2C]
; ============================================================
  $AB31  61                         PUSH_qimm   ; inline operand = 1
  $AB32  60                         PUSH_qimm   ; inline operand = 0
  $AB33  63                         PUSH_qimm   ; inline operand = 3
  $AB34  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $AB38  8E FF 00                   PUSH_imm2              $00FF
  $AB3B  8E AA 73                   PUSH_imm2              $73AA
  $AB3E  8E 62 70                   PUSH_imm2              $7062
  $AB41  8D 1C                      BYTE_PUSH_imm1         +28
  $AB43  8D 1E                      BYTE_PUSH_imm1         +30
  $AB45  61                         PUSH_qimm   ; inline operand = 1
  $AB46  61                         PUSH_qimm   ; inline operand = 1
  $AB47  69                         PUSH_qimm   ; inline operand = 9
  $AB48  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $AB4C  65                         PUSH_qimm   ; inline operand = 5
  $AB4D  60                         PUSH_qimm   ; inline operand = 0
  $AB4E  63                         PUSH_qimm   ; inline operand = 3
  $AB4F  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $AB53  CF                         RETURN

; ============================================================
; sub $AB54   (frame_off=-4, body @ $AB59)   [PRG $02B54]
; ============================================================
  $AB59  0C                         LOADL_quick   ; inline operand = 12
  $AB5A  D2                         LSHIFT1
  $AB5B  B3                         PUSHL
  $AB5C  0D                         LOADL_quick   ; inline operand = 13
  $AB5D  D2                         LSHIFT1
  $AB5E  8B 1E                      BYTE_LOADR_imm1        +30
  $AB60  B5                         MULT
  $AB61  B4                         POPR
  $AB62  BB                         ADD
  $AB63  8C 63 70                   LOADR_imm2             $7063
  $AB66  BB                         ADD
  $AB67  2B                         STORE_quick   ; inline operand = 11
  $AB68  0B                         LOADL_quick   ; inline operand = 11
  $AB69  90 48 03                   ADD_imm2               $0348
  $AB6C  2A                         STORE_quick   ; inline operand = 10
  $AB6D  61                         PUSH_qimm   ; inline operand = 1
  $AB6E  60                         PUSH_qimm   ; inline operand = 0
  $AB6F  63                         PUSH_qimm   ; inline operand = 3
  $AB70  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $AB74  62                         PUSH_qimm   ; inline operand = 2
  $AB75  3B                         PUSH_quick   ; inline operand = 11
  $AB76  8E 92 AF                   PUSH_imm2              $AF92
  $AB79  8E E0 00                   PUSH_imm2              $00E0
  $AB7C  62                         PUSH_qimm   ; inline operand = 2
  $AB7D  E9 EC DC 0A                CALL_abs_imm1          $DCEC (copy_from_bank) {native}, $0A
  $AB81  62                         PUSH_qimm   ; inline operand = 2
  $AB82  0B                         LOADL_quick   ; inline operand = 11
  $AB83  8F 1E                      BYTE_ADD_imm1          +30
  $AB85  B3                         PUSHL
  $AB86  8E 94 AF                   PUSH_imm2              $AF94
  $AB89  8E E0 00                   PUSH_imm2              $00E0
  $AB8C  62                         PUSH_qimm   ; inline operand = 2
  $AB8D  E9 EC DC 0A                CALL_abs_imm1          $DCEC (copy_from_bank) {native}, $0A
  $AB91  62                         PUSH_qimm   ; inline operand = 2
  $AB92  3A                         PUSH_quick   ; inline operand = 10
  $AB93  8E 96 AF                   PUSH_imm2              $AF96
  $AB96  8E E0 00                   PUSH_imm2              $00E0
  $AB99  62                         PUSH_qimm   ; inline operand = 2
  $AB9A  E9 EC DC 0A                CALL_abs_imm1          $DCEC (copy_from_bank) {native}, $0A
  $AB9E  62                         PUSH_qimm   ; inline operand = 2
  $AB9F  0A                         LOADL_quick   ; inline operand = 10
  $ABA0  8F 1E                      BYTE_ADD_imm1          +30
  $ABA2  B3                         PUSHL
  $ABA3  8E 98 AF                   PUSH_imm2              $AF98
  $ABA6  8E E0 00                   PUSH_imm2              $00E0
  $ABA9  62                         PUSH_qimm   ; inline operand = 2
  $ABAA  E9 EC DC 0A                CALL_abs_imm1          $DCEC (copy_from_bank) {native}, $0A
  $ABAE  65                         PUSH_qimm   ; inline operand = 5
  $ABAF  60                         PUSH_qimm   ; inline operand = 0
  $ABB0  63                         PUSH_qimm   ; inline operand = 3
  $ABB1  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $ABB5  CF                         RETURN

; ============================================================
; sub $ABB6   (frame_off=-28, body @ $ABBB)   [PRG $02BB6]
; ============================================================
  $ABBB  0D                         LOADL_quick   ; inline operand = 13
  $ABBC  8B 18                      BYTE_LOADR_imm1        +24
  $ABBE  B5                         MULT
  $ABBF  1C                         LOADR_quick   ; inline operand = 12
  $ABC0  BB                         ADD
  $ABC1  55                         LOADR_qimm   ; inline operand = 5
  $ABC2  B5                         MULT
  $ABC3  74                         ADD_qimm   ; inline operand = 4
  $ABC4  B7 25                      LONG                   $25
  $ABC6  B7 0E                      LONG                   $0E
  $ABC8  FC                         UNK
  $ABC9  FF                         UNK
  $ABCA  62                         PUSH_qimm   ; inline operand = 2
  $ABCB  DE FA FF                   LEAL_far               $FFFA
  $ABCE  B3                         PUSHL
  $ABCF  DE FC FF                   LEAL_far               $FFFC
  $ABD2  B3                         PUSHL
  $ABD3  E9 8C D0 06                CALL_abs_imm1          $D08C (calc_from_record_fields) {native}, $06
  $ABD7  63                         PUSH_qimm   ; inline operand = 3
  $ABD8  8E 82 70                   PUSH_imm2              $7082
  $ABDB  DE FC FF                   LEAL_far               $FFFC
  $ABDE  B3                         PUSHL
  $ABDF  E9 8C D0 06                CALL_abs_imm1          $D08C (calc_from_record_fields) {native}, $06
  $ABE3  09                         LOADL_quick   ; inline operand = 9
  $ABE4  8B 12                      BYTE_LOADR_imm1        +18
  $ABE6  B5                         MULT
  $ABE7  A6 A5 70                   LOADR_abs              $70A5
  $ABEA  BB                         ADD
  $ABEB  B7 26                      LONG                   $26
  $ABED  B7 0E                      LONG                   $0E
  $ABEF  FC                         UNK
  $ABF0  FF                         UNK
  $ABF1  8D 12                      BYTE_PUSH_imm1         +18
  $ABF3  DE E8 FF                   LEAL_far               $FFE8
  $ABF6  B3                         PUSHL
  $ABF7  DE FC FF                   LEAL_far               $FFFC
  $ABFA  B3                         PUSHL
  $ABFB  E9 8C D0 06                CALL_abs_imm1          $D08C (calc_from_record_fields) {native}, $06
  $ABFF  DE E8 FF                   LEAL_far               $FFE8
  $AC02  85 E6                      STORE_near             $E6
  $AC04  8F 12                      BYTE_ADD_imm1          +18
  $AC06  85 E4                      STORE_near             $E4
  $AC08  D6 3D AC                   JUMP_abs               $AC3D
 >$AC0B  A4 A7 70                   LOADL_abs              $70A7
  $AC0E  B7 25                      LONG                   $25
  $AC10  B7 14                      LONG                   $14
  $AC12  81 E6                      LOADL_near             $E6
  $AC14  B0                         DEREF
  $AC15  B7 26                      LONG                   $26
  $AC17  B7 19 31 00 00 00          LONG                   $19 $31 $00 $00 $00
  $AC1D  B7 01                      LONG                   $01
  $AC1F  B7 15                      LONG                   $15
  $AC21  B7 03                      LONG                   $03
  $AC23  B7 0E                      LONG                   $0E
  $AC25  FC                         UNK
  $AC26  FF                         UNK
  $AC27  8D 31                      BYTE_PUSH_imm1         +49
  $AC29  3E                         PUSH_quick   ; inline operand = 14
  $AC2A  DE FC FF                   LEAL_far               $FFFC
  $AC2D  B3                         PUSHL
  $AC2E  E9 8C D0 06                CALL_abs_imm1          $D08C (calc_from_record_fields) {native}, $06
  $AC32  89 31                      BYTE_LOADL_imm1        +49
  $AC34  CD                         SWAP
  $AC35  0E                         LOADL_quick   ; inline operand = 14
  $AC36  BB                         ADD
  $AC37  2E                         STORE_quick   ; inline operand = 14
  $AC38  81 E6                      LOADL_near             $E6
  $AC3A  72                         ADD_qimm   ; inline operand = 2
  $AC3B  85 E6                      STORE_near             $E6
 >$AC3D  81 E6                      LOADL_near             $E6
  $AC3F  83 E4                      LOADR_near             $E4
  $AC41  C6                         UCMPLT
  $AC42  D7 0B AC                   JUMPT_abs              $AC0B
  $AC45  CF                         RETURN

; ============================================================
; sub $AC46   (frame_off=-4, body @ $AC4B)   [PRG $02C46]
; ============================================================
  $AC4B  B7 18 00 00 00 00          LONG                   $18 $00 $00 $00 $00
  $AC51  B7 0E                      LONG                   $0E
  $AC53  FC                         UNK
  $AC54  FF                         UNK
  $AC55  62                         PUSH_qimm   ; inline operand = 2
  $AC56  8E A5 70                   PUSH_imm2              $70A5
  $AC59  DE FC FF                   LEAL_far               $FFFC
  $AC5C  B3                         PUSHL
  $AC5D  E9 8C D0 06                CALL_abs_imm1          $D08C (calc_from_record_fields) {native}, $06
  $AC61  62                         PUSH_qimm   ; inline operand = 2
  $AC62  8E A7 70                   PUSH_imm2              $70A7
  $AC65  DE FC FF                   LEAL_far               $FFFC
  $AC68  B3                         PUSHL
  $AC69  E9 8C D0 06                CALL_abs_imm1          $D08C (calc_from_record_fields) {native}, $06
  $AC6D  8E A9 70                   PUSH_imm2              $70A9
  $AC70  3D                         PUSH_quick   ; inline operand = 13
  $AC71  3C                         PUSH_quick   ; inline operand = 12
  $AC72  E9 B6 AB 06                CALL_abs_imm1          $ABB6 {bytecode}, $06
  $AC76  A5 8A 6B                   BYTE_LOADL_abs         $6B8A
  $AC79  52                         LOADR_qimm   ; inline operand = 2
  $AC7A  C8                         UCMPGT
  $AC7B  D8 8E AC                   JUMPF_abs              $AC8E
  $AC7E  A5 8A 6B                   BYTE_LOADL_abs         $6B8A
  $AC81  59                         LOADR_qimm   ; inline operand = 9
  $AC82  C6                         UCMPLT
  $AC83  D8 8E AC                   JUMPF_abs              $AC8E
  $AC86  A5 82 70                   BYTE_LOADL_abs         $7082
  $AC89  54                         LOADR_qimm   ; inline operand = 4
  $AC8A  BE                         URSHIFT
  $AC8B  D6 91 AC                   JUMP_abs               $AC91
 >$AC8E  A5 82 70                   BYTE_LOADL_abs         $7082
 >$AC91  5F                         LOADR_qimm   ; inline operand = 15
  $AC92  DA                         AND
  $AC93  A9 80 70                   BYTE_STORE_abs         $7080
  $AC96  A5 8A 6B                   BYTE_LOADL_abs         $6B8A
  $AC99  52                         LOADR_qimm   ; inline operand = 2
  $AC9A  C8                         UCMPGT
  $AC9B  D8 AE AC                   JUMPF_abs              $ACAE
  $AC9E  A5 8A 6B                   BYTE_LOADL_abs         $6B8A
  $ACA1  59                         LOADR_qimm   ; inline operand = 9
  $ACA2  C6                         UCMPLT
  $ACA3  D8 AE AC                   JUMPF_abs              $ACAE
  $ACA6  A5 83 70                   BYTE_LOADL_abs         $7083
  $ACA9  54                         LOADR_qimm   ; inline operand = 4
  $ACAA  BE                         URSHIFT
  $ACAB  D6 B1 AC                   JUMP_abs               $ACB1
 >$ACAE  A5 83 70                   BYTE_LOADL_abs         $7083
 >$ACB1  5F                         LOADR_qimm   ; inline operand = 15
  $ACB2  DA                         AND
  $ACB3  A9 81 70                   BYTE_STORE_abs         $7081
  $ACB6  CF                         RETURN

; ============================================================
; sub $ACB7   (frame_off=+0, body @ $ACBC)   [PRG $02CB7]
; ============================================================
  $ACBC  3D                         PUSH_quick   ; inline operand = 13
  $ACBD  3C                         PUSH_quick   ; inline operand = 12
  $ACBE  E9 54 AB 04                CALL_abs_imm1          $AB54 {bytecode}, $04
  $ACC2  0C                         LOADL_quick   ; inline operand = 12
  $ACC3  D2                         LSHIFT1
  $ACC4  72                         ADD_qimm   ; inline operand = 2
  $ACC5  2C                         STORE_quick   ; inline operand = 12
  $ACC6  0D                         LOADL_quick   ; inline operand = 13
  $ACC7  D2                         LSHIFT1
  $ACC8  D0                         INC
  $ACC9  2D                         STORE_quick   ; inline operand = 13
  $ACCA  8E E0 00                   PUSH_imm2              $00E0
  $ACCD  8E 96 AF                   PUSH_imm2              $AF96
  $ACD0  8E 92 AF                   PUSH_imm2              $AF92
  $ACD3  62                         PUSH_qimm   ; inline operand = 2
  $ACD4  62                         PUSH_qimm   ; inline operand = 2
  $ACD5  3D                         PUSH_quick   ; inline operand = 13
  $ACD6  3C                         PUSH_quick   ; inline operand = 12
  $ACD7  69                         PUSH_qimm   ; inline operand = 9
  $ACD8  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $ACDC  CF                         RETURN

; ============================================================
; sub $ACDD   (frame_off=-12, body @ $ACE2)   [PRG $02CDD]
; ============================================================
  $ACE2  0D                         LOADL_quick   ; inline operand = 13
  $ACE3  51                         LOADR_qimm   ; inline operand = 1
  $ACE4  BE                         URSHIFT
  $ACE5  B3                         PUSHL
  $ACE6  0C                         LOADL_quick   ; inline operand = 12
  $ACE7  51                         LOADR_qimm   ; inline operand = 1
  $ACE8  BE                         URSHIFT
  $ACE9  B3                         PUSHL
  $ACEA  3E                         PUSH_quick   ; inline operand = 14
  $ACEB  E9 94 D3 06                CALL_abs_imm1          $D394 (read_record_70a9) {native}, $06
  $ACEF  2B                         STORE_quick   ; inline operand = 11
  $ACF0  0C                         LOADL_quick   ; inline operand = 12
  $ACF1  51                         LOADR_qimm   ; inline operand = 1
  $ACF2  DA                         AND
  $ACF3  B3                         PUSHL
  $ACF4  0D                         LOADL_quick   ; inline operand = 13
  $ACF5  51                         LOADR_qimm   ; inline operand = 1
  $ACF6  DA                         AND
  $ACF7  D2                         LSHIFT1
  $ACF8  B4                         POPR
  $ACF9  BB                         ADD
  $ACFA  2A                         STORE_quick   ; inline operand = 10
  $ACFB  0C                         LOADL_quick   ; inline operand = 12
  $ACFC  D2                         LSHIFT1
  $ACFD  72                         ADD_qimm   ; inline operand = 2
  $ACFE  2C                         STORE_quick   ; inline operand = 12
  $ACFF  0D                         LOADL_quick   ; inline operand = 13
  $AD00  D2                         LSHIFT1
  $AD01  D0                         INC
  $AD02  2D                         STORE_quick   ; inline operand = 13
  $AD03  0B                         LOADL_quick   ; inline operand = 11
  $AD04  D2                         LSHIFT1
  $AD05  D2                         LSHIFT1
  $AD06  1A                         LOADR_quick   ; inline operand = 10
  $AD07  BB                         ADD
  $AD08  8C B6 BD                   LOADR_imm2             $BDB6
  $AD0B  BB                         ADD
  $AD0C  D3                         BYTE_DEREF
  $AD0D  28                         STORE_quick   ; inline operand = 8
  $AD0E  08                         LOADL_quick   ; inline operand = 8
  $AD0F  D2                         LSHIFT1
  $AD10  D2                         LSHIFT1
  $AD11  B3                         PUSHL
  $AD12  A5 62 72                   BYTE_LOADL_abs         $7262
  $AD15  8B 48                      BYTE_LOADR_imm1        +72
  $AD17  B5                         MULT
  $AD18  B4                         POPR
  $AD19  BB                         ADD
  $AD1A  8C 96 BC                   LOADR_imm2             $BC96
  $AD1D  BB                         ADD
  $AD1E  B0                         DEREF
  $AD1F  27                         STORE_quick   ; inline operand = 7
  $AD20  08                         LOADL_quick   ; inline operand = 8
  $AD21  D2                         LSHIFT1
  $AD22  D2                         LSHIFT1
  $AD23  B3                         PUSHL
  $AD24  A5 62 72                   BYTE_LOADL_abs         $7262
  $AD27  8B 48                      BYTE_LOADR_imm1        +72
  $AD29  B5                         MULT
  $AD2A  B4                         POPR
  $AD2B  BB                         ADD
  $AD2C  8C 98 BC                   LOADR_imm2             $BC98
  $AD2F  BB                         ADD
  $AD30  B0                         DEREF
  $AD31  26                         STORE_quick   ; inline operand = 6
  $AD32  8E E0 00                   PUSH_imm2              $00E0
  $AD35  36                         PUSH_quick   ; inline operand = 6
  $AD36  37                         PUSH_quick   ; inline operand = 7
  $AD37  62                         PUSH_qimm   ; inline operand = 2
  $AD38  62                         PUSH_qimm   ; inline operand = 2
  $AD39  3D                         PUSH_quick   ; inline operand = 13
  $AD3A  3C                         PUSH_quick   ; inline operand = 12
  $AD3B  69                         PUSH_qimm   ; inline operand = 9
  $AD3C  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $AD40  CF                         RETURN

; ============================================================
; sub $AD41   (frame_off=-24, body @ $AD46)   [PRG $02D41]
; ============================================================
  $AD46  A5 71 66                   BYTE_LOADL_abs         $6671
  $AD49  52                         LOADR_qimm   ; inline operand = 2
  $AD4A  DA                         AND
  $AD4B  D8 4F AD                   JUMPF_abs              $AD4F
  $AD4E  CF                         RETURN
 >$AD4F  0C                         LOADL_quick   ; inline operand = 12
  $AD50  D2                         LSHIFT1
  $AD51  53                         LOADR_qimm   ; inline operand = 3
  $AD52  BD                         LSHIFT
  $AD53  2C                         STORE_quick   ; inline operand = 12
  $AD54  0D                         LOADL_quick   ; inline operand = 13
  $AD55  D2                         LSHIFT1
  $AD56  53                         LOADR_qimm   ; inline operand = 3
  $AD57  BD                         LSHIFT
  $AD58  2D                         STORE_quick   ; inline operand = 13
  $AD59  A5 7D 73                   BYTE_LOADL_abs         $737D
  $AD5C  54                         LOADR_qimm   ; inline operand = 4
  $AD5D  BD                         LSHIFT
  $AD5E  8C 02 BB                   LOADR_imm2             $BB02
  $AD61  BB                         ADD
  $AD62  23                         STORE_quick   ; inline operand = 3
  $AD63  DE F0 FF                   LEAL_far               $FFF0
  $AD66  22                         STORE_quick   ; inline operand = 2
  $AD67  A5 71 66                   BYTE_LOADL_abs         $6671
  $AD6A  8B 20                      BYTE_LOADR_imm1        +32
  $AD6C  DA                         AND
  $AD6D  D8 A4 AD                   JUMPF_abs              $ADA4
  $AD70  32                         PUSH_quick   ; inline operand = 2
  $AD71  0D                         LOADL_quick   ; inline operand = 13
  $AD72  B3                         PUSHL
  $AD73  03                         LOADL_quick   ; inline operand = 3
  $AD74  D3                         BYTE_DEREF
  $AD75  B4                         POPR
  $AD76  BB                         ADD
  $AD77  74                         ADD_qimm   ; inline operand = 4
  $AD78  D4                         BYTE_POPSTORE
  $AD79  02                         LOADL_quick   ; inline operand = 2
  $AD7A  D0                         INC
  $AD7B  22                         STORE_quick   ; inline operand = 2
  $AD7C  43                         LOADL_qimm   ; inline operand = 3
  $AD7D  CD                         SWAP
  $AD7E  03                         LOADL_quick   ; inline operand = 3
  $AD7F  BB                         ADD
  $AD80  23                         STORE_quick   ; inline operand = 3
  $AD81  32                         PUSH_quick   ; inline operand = 2
  $AD82  8A FA 00                   LOADL_imm2             $00FA
  $AD85  D4                         BYTE_POPSTORE
  $AD86  02                         LOADL_quick   ; inline operand = 2
  $AD87  D0                         INC
  $AD88  22                         STORE_quick   ; inline operand = 2
  $AD89  32                         PUSH_quick   ; inline operand = 2
  $AD8A  43                         LOADL_qimm   ; inline operand = 3
  $AD8B  D4                         BYTE_POPSTORE
  $AD8C  02                         LOADL_quick   ; inline operand = 2
  $AD8D  D0                         INC
  $AD8E  22                         STORE_quick   ; inline operand = 2
  $AD8F  32                         PUSH_quick   ; inline operand = 2
  $AD90  0C                         LOADL_quick   ; inline operand = 12
  $AD91  B3                         PUSHL
  $AD92  03                         LOADL_quick   ; inline operand = 3
  $AD93  D3                         BYTE_DEREF
  $AD94  B4                         POPR
  $AD95  BB                         ADD
  $AD96  74                         ADD_qimm   ; inline operand = 4
  $AD97  D4                         BYTE_POPSTORE
  $AD98  61                         PUSH_qimm   ; inline operand = 1
  $AD99  65                         PUSH_qimm   ; inline operand = 5
  $AD9A  DE F0 FF                   LEAL_far               $FFF0
  $AD9D  B3                         PUSHL
  $AD9E  6D                         PUSH_qimm   ; inline operand = 13
  $AD9F  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $ADA3  CF                         RETURN
 >$ADA4  A5 71 66                   BYTE_LOADL_abs         $6671
  $ADA7  51                         LOADR_qimm   ; inline operand = 1
  $ADA8  DA                         AND
  $ADA9  D7 AE AD                   JUMPT_abs              $ADAE
  $ADAC  48                         LOADL_qimm   ; inline operand = 8
  $ADAD  2E                         STORE_quick   ; inline operand = 14
 >$ADAE  A5 99 72                   BYTE_LOADL_abs         $7299
  $ADB1  51                         LOADR_qimm   ; inline operand = 1
  $ADB2  C0                         CMPEQ
  $ADB3  D8 BC AD                   JUMPF_abs              $ADBC
  $ADB6  68                         PUSH_qimm   ; inline operand = 8
  $ADB7  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $ADBB  2E                         STORE_quick   ; inline operand = 14
 >$ADBC  0E                         LOADL_quick   ; inline operand = 14
  $ADBD  D2                         LSHIFT1
  $ADBE  D2                         LSHIFT1
  $ADBF  2E                         STORE_quick   ; inline operand = 14
  $ADC0  40                         LOADL_qimm   ; inline operand = 0
  $ADC1  21                         STORE_quick   ; inline operand = 1
 >$ADC2  32                         PUSH_quick   ; inline operand = 2
  $ADC3  0D                         LOADL_quick   ; inline operand = 13
  $ADC4  B3                         PUSHL
  $ADC5  03                         LOADL_quick   ; inline operand = 3
  $ADC6  D3                         BYTE_DEREF
  $ADC7  B4                         POPR
  $ADC8  BB                         ADD
  $ADC9  D4                         BYTE_POPSTORE
  $ADCA  02                         LOADL_quick   ; inline operand = 2
  $ADCB  D0                         INC
  $ADCC  22                         STORE_quick   ; inline operand = 2
  $ADCD  03                         LOADL_quick   ; inline operand = 3
  $ADCE  D0                         INC
  $ADCF  23                         STORE_quick   ; inline operand = 3
  $ADD0  32                         PUSH_quick   ; inline operand = 2
  $ADD1  0E                         LOADL_quick   ; inline operand = 14
  $ADD2  B3                         PUSHL
  $ADD3  03                         LOADL_quick   ; inline operand = 3
  $ADD4  D3                         BYTE_DEREF
  $ADD5  B4                         POPR
  $ADD6  BB                         ADD
  $ADD7  D4                         BYTE_POPSTORE
  $ADD8  02                         LOADL_quick   ; inline operand = 2
  $ADD9  D0                         INC
  $ADDA  22                         STORE_quick   ; inline operand = 2
  $ADDB  03                         LOADL_quick   ; inline operand = 3
  $ADDC  D0                         INC
  $ADDD  23                         STORE_quick   ; inline operand = 3
  $ADDE  32                         PUSH_quick   ; inline operand = 2
  $ADDF  03                         LOADL_quick   ; inline operand = 3
  $ADE0  D3                         BYTE_DEREF
  $ADE1  D4                         BYTE_POPSTORE
  $ADE2  02                         LOADL_quick   ; inline operand = 2
  $ADE3  D0                         INC
  $ADE4  22                         STORE_quick   ; inline operand = 2
  $ADE5  03                         LOADL_quick   ; inline operand = 3
  $ADE6  D0                         INC
  $ADE7  23                         STORE_quick   ; inline operand = 3
  $ADE8  32                         PUSH_quick   ; inline operand = 2
  $ADE9  0C                         LOADL_quick   ; inline operand = 12
  $ADEA  B3                         PUSHL
  $ADEB  03                         LOADL_quick   ; inline operand = 3
  $ADEC  D3                         BYTE_DEREF
  $ADED  B4                         POPR
  $ADEE  BB                         ADD
  $ADEF  D4                         BYTE_POPSTORE
  $ADF0  02                         LOADL_quick   ; inline operand = 2
  $ADF1  D0                         INC
  $ADF2  22                         STORE_quick   ; inline operand = 2
  $ADF3  03                         LOADL_quick   ; inline operand = 3
  $ADF4  D0                         INC
  $ADF5  23                         STORE_quick   ; inline operand = 3
  $ADF6  01                         LOADL_quick   ; inline operand = 1
  $ADF7  D0                         INC
  $ADF8  21                         STORE_quick   ; inline operand = 1
  $ADF9  01                         LOADL_quick   ; inline operand = 1
  $ADFA  54                         LOADR_qimm   ; inline operand = 4
  $ADFB  C2                         SCMPLT
  $ADFC  D7 C2 AD                   JUMPT_abs              $ADC2
  $ADFF  64                         PUSH_qimm   ; inline operand = 4
  $AE00  65                         PUSH_qimm   ; inline operand = 5
  $AE01  DE F0 FF                   LEAL_far               $FFF0
  $AE04  B3                         PUSHL
  $AE05  6D                         PUSH_qimm   ; inline operand = 13
  $AE06  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $AE0A  CF                         RETURN

; ============================================================
; sub $AE0B   (frame_off=-4, body @ $AE10)   [PRG $02E0B]
; ============================================================
  $AE10  0E                         LOADL_quick   ; inline operand = 14
  $AE11  54                         LOADR_qimm   ; inline operand = 4
  $AE12  BD                         LSHIFT
  $AE13  8C 62 66                   LOADR_imm2             $6662
  $AE16  BB                         ADD
  $AE17  2B                         STORE_quick   ; inline operand = 11
  $AE18  68                         PUSH_qimm   ; inline operand = 8
  $AE19  0B                         LOADL_quick   ; inline operand = 11
  $AE1A  78                         ADD_qimm   ; inline operand = 8
  $AE1B  B4                         POPR
  $AE1C  B3                         PUSHL
  $AE1D  D3                         BYTE_DEREF
  $AE1E  BA                         UMOD
  $AE1F  D4                         BYTE_POPSTORE
  $AE20  2A                         STORE_quick   ; inline operand = 10
  $AE21  0E                         LOADL_quick   ; inline operand = 14
  $AE22  D7 2D AE                   JUMPT_abs              $AE2D
  $AE25  3A                         PUSH_quick   ; inline operand = 10
  $AE26  3D                         PUSH_quick   ; inline operand = 13
  $AE27  3C                         PUSH_quick   ; inline operand = 12
  $AE28  E9 41 AD 06                CALL_abs_imm1          $AD41 {bytecode}, $06
  $AE2C  CF                         RETURN
 >$AE2D  0C                         LOADL_quick   ; inline operand = 12
  $AE2E  D2                         LSHIFT1
  $AE2F  72                         ADD_qimm   ; inline operand = 2
  $AE30  2C                         STORE_quick   ; inline operand = 12
  $AE31  0D                         LOADL_quick   ; inline operand = 13
  $AE32  D2                         LSHIFT1
  $AE33  D0                         INC
  $AE34  2D                         STORE_quick   ; inline operand = 13
  $AE35  8E E0 00                   PUSH_imm2              $00E0
  $AE38  0A                         LOADL_quick   ; inline operand = 10
  $AE39  D2                         LSHIFT1
  $AE3A  D2                         LSHIFT1
  $AE3B  8C 34 BB                   LOADR_imm2             $BB34
  $AE3E  BB                         ADD
  $AE3F  B0                         DEREF
  $AE40  B3                         PUSHL
  $AE41  0A                         LOADL_quick   ; inline operand = 10
  $AE42  D2                         LSHIFT1
  $AE43  D2                         LSHIFT1
  $AE44  8C 32 BB                   LOADR_imm2             $BB32
  $AE47  BB                         ADD
  $AE48  B0                         DEREF
  $AE49  B3                         PUSHL
  $AE4A  62                         PUSH_qimm   ; inline operand = 2
  $AE4B  62                         PUSH_qimm   ; inline operand = 2
  $AE4C  3D                         PUSH_quick   ; inline operand = 13
  $AE4D  3C                         PUSH_quick   ; inline operand = 12
  $AE4E  69                         PUSH_qimm   ; inline operand = 9
  $AE4F  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $AE53  CF                         RETURN

; ============================================================
; sub $AE54   (frame_off=-16, body @ $AE59)   [PRG $02E54]
; ============================================================
  $AE59  DE F8 FF                   LEAL_far               $FFF8
  $AE5C  B3                         PUSHL
  $AE5D  0D                         LOADL_quick   ; inline operand = 13
  $AE5E  D3                         BYTE_DEREF
  $AE5F  B3                         PUSHL
  $AE60  0C                         LOADL_quick   ; inline operand = 12
  $AE61  D3                         BYTE_DEREF
  $AE62  B3                         PUSHL
  $AE63  E9 72 B6 06                CALL_abs_imm1          $B672 (nat_1_1672) {native}, $06
  $AE67  27                         STORE_quick   ; inline operand = 7
  $AE68  07                         LOADL_quick   ; inline operand = 7
  $AE69  D7 6E AE                   JUMPT_abs              $AE6E
  $AE6C  41                         LOADL_qimm   ; inline operand = 1
  $AE6D  CF                         RETURN
 >$AE6E  DE F8 FF                   LEAL_far               $FFF8
  $AE71  B3                         PUSHL
  $AE72  37                         PUSH_quick   ; inline operand = 7
  $AE73  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $AE77  B4                         POPR
  $AE78  BB                         ADD
  $AE79  D3                         BYTE_DEREF
  $AE7A  26                         STORE_quick   ; inline operand = 6
  $AE7B  3C                         PUSH_quick   ; inline operand = 12
  $AE7C  06                         LOADL_quick   ; inline operand = 6
  $AE7D  D2                         LSHIFT1
  $AE7E  D2                         LSHIFT1
  $AE7F  8C 85 70                   LOADR_imm2             $7085
  $AE82  BB                         ADD
  $AE83  B0                         DEREF
  $AE84  B3                         PUSHL
  $AE85  0C                         LOADL_quick   ; inline operand = 12
  $AE86  D3                         BYTE_DEREF
  $AE87  B4                         POPR
  $AE88  BB                         ADD
  $AE89  D4                         BYTE_POPSTORE
  $AE8A  3D                         PUSH_quick   ; inline operand = 13
  $AE8B  06                         LOADL_quick   ; inline operand = 6
  $AE8C  D2                         LSHIFT1
  $AE8D  D2                         LSHIFT1
  $AE8E  8C 87 70                   LOADR_imm2             $7087
  $AE91  BB                         ADD
  $AE92  B0                         DEREF
  $AE93  B3                         PUSHL
  $AE94  0D                         LOADL_quick   ; inline operand = 13
  $AE95  D3                         BYTE_DEREF
  $AE96  B4                         POPR
  $AE97  BB                         ADD
  $AE98  D4                         BYTE_POPSTORE
  $AE99  0E                         LOADL_quick   ; inline operand = 14
  $AE9A  54                         LOADR_qimm   ; inline operand = 4
  $AE9B  BD                         LSHIFT
  $AE9C  8C 6A 66                   LOADR_imm2             $666A
  $AE9F  BB                         ADD
  $AEA0  B3                         PUSHL
  $AEA1  06                         LOADL_quick   ; inline operand = 6
  $AEA2  D4                         BYTE_POPSTORE
  $AEA3  40                         LOADL_qimm   ; inline operand = 0
  $AEA4  CF                         RETURN

; ============================================================
; sub $AEA5   (frame_off=+0, body @ $AEAA)   [PRG $02EA5]
; ============================================================
 >$AEAA  62                         PUSH_qimm   ; inline operand = 2
  $AEAB  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $AEAF  D8 C4 AE                   JUMPF_abs              $AEC4
  $AEB2  3C                         PUSH_quick   ; inline operand = 12
  $AEB3  62                         PUSH_qimm   ; inline operand = 2
  $AEB4  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $AEB8  5D                         LOADR_qimm   ; inline operand = 13
  $AEB9  B5                         MULT
  $AEBA  D4                         BYTE_POPSTORE
  $AEBB  3D                         PUSH_quick   ; inline operand = 13
  $AEBC  6E                         PUSH_qimm   ; inline operand = 14
  $AEBD  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $AEC1  D6 D3 AE                   JUMP_abs               $AED3
 >$AEC4  3C                         PUSH_quick   ; inline operand = 12
  $AEC5  6E                         PUSH_qimm   ; inline operand = 14
  $AEC6  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $AECA  D4                         BYTE_POPSTORE
  $AECB  3D                         PUSH_quick   ; inline operand = 13
  $AECC  62                         PUSH_qimm   ; inline operand = 2
  $AECD  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $AED1  5D                         LOADR_qimm   ; inline operand = 13
  $AED2  B5                         MULT
 >$AED3  D4                         BYTE_POPSTORE
  $AED4  0D                         LOADL_quick   ; inline operand = 13
  $AED5  D3                         BYTE_DEREF
  $AED6  B3                         PUSHL
  $AED7  0C                         LOADL_quick   ; inline operand = 12
  $AED8  D3                         BYTE_DEREF
  $AED9  B3                         PUSHL
  $AEDA  A5 7B 73                   BYTE_LOADL_abs         $737B
  $AEDD  B3                         PUSHL
  $AEDE  A5 7A 73                   BYTE_LOADL_abs         $737A
  $AEE1  B3                         PUSHL
  $AEE2  E9 05 D4 08                CALL_abs_imm1          $D405 (calc_pos_relative) {native}, $08
  $AEE6  D8 AA AE                   JUMPF_abs              $AEAA
  $AEE9  CF                         RETURN

; ============================================================
; sub $AEEA   (frame_off=-4, body @ $AEEF)   [PRG $02EEA]
; ============================================================
  $AEEF  0C                         LOADL_quick   ; inline operand = 12
  $AEF0  54                         LOADR_qimm   ; inline operand = 4
  $AEF1  BD                         LSHIFT
  $AEF2  8C 62 66                   LOADR_imm2             $6662
  $AEF5  BB                         ADD
  $AEF6  2B                         STORE_quick   ; inline operand = 11
  $AEF7  0B                         LOADL_quick   ; inline operand = 11
  $AEF8  D3                         BYTE_DEREF
  $AEF9  A9 7A 73                   BYTE_STORE_abs         $737A
  $AEFC  0B                         LOADL_quick   ; inline operand = 11
  $AEFD  D0                         INC
  $AEFE  D3                         BYTE_DEREF
  $AEFF  A9 7B 73                   BYTE_STORE_abs         $737B
  $AF02  0B                         LOADL_quick   ; inline operand = 11
  $AF03  72                         ADD_qimm   ; inline operand = 2
  $AF04  D3                         BYTE_DEREF
  $AF05  8C FF 00                   LOADR_imm2             $00FF
  $AF08  C0                         CMPEQ
  $AF09  D7 31 AF                   JUMPT_abs              $AF31
  $AF0C  0B                         LOADL_quick   ; inline operand = 11
  $AF0D  73                         ADD_qimm   ; inline operand = 3
  $AF0E  D3                         BYTE_DEREF
  $AF0F  B3                         PUSHL
  $AF10  0B                         LOADL_quick   ; inline operand = 11
  $AF11  72                         ADD_qimm   ; inline operand = 2
  $AF12  D3                         BYTE_DEREF
  $AF13  B3                         PUSHL
  $AF14  A5 7B 73                   BYTE_LOADL_abs         $737B
  $AF17  B3                         PUSHL
  $AF18  A5 7A 73                   BYTE_LOADL_abs         $737A
  $AF1B  B3                         PUSHL
  $AF1C  E9 05 D4 08                CALL_abs_imm1          $D405 (calc_pos_relative) {native}, $08
  $AF20  D7 3B AF                   JUMPT_abs              $AF3B
  $AF23  3C                         PUSH_quick   ; inline operand = 12
  $AF24  0B                         LOADL_quick   ; inline operand = 11
  $AF25  73                         ADD_qimm   ; inline operand = 3
  $AF26  B3                         PUSHL
  $AF27  0B                         LOADL_quick   ; inline operand = 11
  $AF28  72                         ADD_qimm   ; inline operand = 2
  $AF29  B3                         PUSHL
  $AF2A  E9 54 AE 06                CALL_abs_imm1          $AE54 {bytecode}, $06
  $AF2E  D8 3B AF                   JUMPF_abs              $AF3B
 >$AF31  0B                         LOADL_quick   ; inline operand = 11
  $AF32  73                         ADD_qimm   ; inline operand = 3
  $AF33  B3                         PUSHL
  $AF34  0B                         LOADL_quick   ; inline operand = 11
  $AF35  72                         ADD_qimm   ; inline operand = 2
  $AF36  B3                         PUSHL
  $AF37  E9 A5 AE 04                CALL_abs_imm1          $AEA5 {bytecode}, $04
 >$AF3B  0B                         LOADL_quick   ; inline operand = 11
  $AF3C  74                         ADD_qimm   ; inline operand = 4
  $AF3D  B3                         PUSHL
  $AF3E  4C                         LOADL_qimm   ; inline operand = 12
  $AF3F  B1                         POPSTORE
  $AF40  0B                         LOADL_quick   ; inline operand = 11
  $AF41  76                         ADD_qimm   ; inline operand = 6
  $AF42  B3                         PUSHL
  $AF43  4C                         LOADL_qimm   ; inline operand = 12
  $AF44  B1                         POPSTORE
  $AF45  3C                         PUSH_quick   ; inline operand = 12
  $AF46  0B                         LOADL_quick   ; inline operand = 11
  $AF47  73                         ADD_qimm   ; inline operand = 3
  $AF48  D3                         BYTE_DEREF
  $AF49  B3                         PUSHL
  $AF4A  0B                         LOADL_quick   ; inline operand = 11
  $AF4B  72                         ADD_qimm   ; inline operand = 2
  $AF4C  D3                         BYTE_DEREF
  $AF4D  B3                         PUSHL
  $AF4E  E9 0B AE 06                CALL_abs_imm1          $AE0B {bytecode}, $06
  $AF52  3C                         PUSH_quick   ; inline operand = 12
  $AF53  0B                         LOADL_quick   ; inline operand = 11
  $AF54  73                         ADD_qimm   ; inline operand = 3
  $AF55  D3                         BYTE_DEREF
  $AF56  B3                         PUSHL
  $AF57  0B                         LOADL_quick   ; inline operand = 11
  $AF58  72                         ADD_qimm   ; inline operand = 2
  $AF59  D3                         BYTE_DEREF
  $AF5A  B3                         PUSHL
  $AF5B  E9 E4 A8 06                CALL_abs_imm1          $A8E4 {native}, $06
  $AF5F  CF                         RETURN

; ============================================================
; sub $AF60   (frame_off=+0, body @ $AF65)   [PRG $02F60]
; ============================================================
  $AF65  8E FF 00                   PUSH_imm2              $00FF
  $AF68  8D 15                      BYTE_PUSH_imm1         +21
  $AF6A  8E A0 72                   PUSH_imm2              $72A0
  $AF6D  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $AF71  8E FF 00                   PUSH_imm2              $00FF
  $AF74  8E C4 00                   PUSH_imm2              $00C4
  $AF77  8E B6 72                   PUSH_imm2              $72B6
  $AF7A  E9 3A F3 06                CALL_abs_imm1          $F33A (copy_from_bank_dc80) {native}, $06
  $AF7E  CF                         RETURN

; ============================================================
; sub $AF7F   (frame_off=-2, body @ $AF84)   [PRG $02F7F]
; ============================================================
  $AF84  8A 62 66                   LOADL_imm2             $6662
  $AF87  2B                         STORE_quick   ; inline operand = 11
  $AF88  A5 7D 73                   BYTE_LOADL_abs         $737D
  $AF8B  D8 A6 AF                   JUMPF_abs              $AFA6
  $AF8E  0B                         LOADL_quick   ; inline operand = 11
  $AF8F  73                         ADD_qimm   ; inline operand = 3
  $AF90  D3                         BYTE_DEREF
  $AF91  56                         LOADR_qimm   ; inline operand = 6
  $AF92  C6                         UCMPLT
  $AF93  D7 AE AF                   JUMPT_abs              $AFAE
  $AF96  0B                         LOADL_quick   ; inline operand = 11
  $AF97  73                         ADD_qimm   ; inline operand = 3
  $AF98  D3                         BYTE_DEREF
  $AF99  57                         LOADR_qimm   ; inline operand = 7
  $AF9A  C8                         UCMPGT
  $AF9B  D8 B2 AF                   JUMPF_abs              $AFB2
 >$AF9E  41                         LOADL_qimm   ; inline operand = 1
  $AF9F  D6 AF AF                   JUMP_abs               $AFAF
 >$AFA2  47                         LOADL_qimm   ; inline operand = 7
  $AFA3  D6 BD AF                   JUMP_abs               $AFBD
 >$AFA6  0B                         LOADL_quick   ; inline operand = 11
  $AFA7  73                         ADD_qimm   ; inline operand = 3
  $AFA8  D3                         BYTE_DEREF
  $AFA9  57                         LOADR_qimm   ; inline operand = 7
  $AFAA  C6                         UCMPLT
  $AFAB  D8 9E AF                   JUMPF_abs              $AF9E
 >$AFAE  42                         LOADL_qimm   ; inline operand = 2
 >$AFAF  A9 7D 73                   BYTE_STORE_abs         $737D
 >$AFB2  A5 7D 73                   BYTE_LOADL_abs         $737D
  $AFB5  51                         LOADR_qimm   ; inline operand = 1
  $AFB6  C0                         CMPEQ
  $AFB7  D7 A2 AF                   JUMPT_abs              $AFA2
  $AFBA  8A E7 00                   LOADL_imm2             $00E7
 >$AFBD  B3                         PUSHL
  $AFBE  60                         PUSH_qimm   ; inline operand = 0
  $AFBF  8D 12                      BYTE_PUSH_imm1         +18
  $AFC1  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $AFC5  61                         PUSH_qimm   ; inline operand = 1
  $AFC6  8D 11                      BYTE_PUSH_imm1         +17
  $AFC8  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $AFCC  CF                         RETURN

; ============================================================
; sub $AFCD   (frame_off=+0, body @ $AFD2)   [PRG $02FCD]
; ============================================================
  $AFD2  0C                         LOADL_quick   ; inline operand = 12
  $AFD3  8C 52 BB                   LOADR_imm2             $BB52
  $AFD6  BB                         ADD
  $AFD7  D3                         BYTE_DEREF
  $AFD8  CF                         RETURN

; ============================================================
; sub $AFD9   (frame_off=-45, body @ $AFDE)   [PRG $02FD9]
; ============================================================
  $AFDE  AC 60 AF                   CALL_abs               $AF60 {bytecode}
  $AFE1  0C                         LOADL_quick   ; inline operand = 12
  $AFE2  53                         LOADR_qimm   ; inline operand = 3
  $AFE3  BA                         UMOD
  $AFE4  85 E3                      STORE_near             $E3
  $AFE6  0D                         LOADL_quick   ; inline operand = 13
  $AFE7  53                         LOADR_qimm   ; inline operand = 3
  $AFE8  BA                         UMOD
  $AFE9  85 DF                      STORE_near             $DF
  $AFEB  0C                         LOADL_quick   ; inline operand = 12
  $AFEC  53                         LOADR_qimm   ; inline operand = 3
  $AFED  B8                         UDIV
  $AFEE  85 E1                      STORE_near             $E1
  $AFF0  0D                         LOADL_quick   ; inline operand = 13
  $AFF1  53                         LOADR_qimm   ; inline operand = 3
  $AFF2  B8                         UDIV
  $AFF3  85 DD                      STORE_near             $DD
  $AFF5  0D                         LOADL_quick   ; inline operand = 13
  $AFF6  56                         LOADR_qimm   ; inline operand = 6
  $AFF7  B8                         UDIV
  $AFF8  8C 55 BB                   LOADR_imm2             $BB55
  $AFFB  BB                         ADD
  $AFFC  D3                         BYTE_DEREF
  $AFFD  85 D9                      STORE_near             $D9
  $AFFF  A5 7C 73                   BYTE_LOADL_abs         $737C
  $B002  83 D9                      LOADR_near             $D9
  $B004  C1                         CMPNE
  $B005  D8 1D B0                   JUMPF_abs              $B01D
  $B008  87 D9                      PUSH_near              $D9
  $B00A  E9 CD AF 02                CALL_abs_imm1          $AFCD {bytecode}, $02
  $B00E  B3                         PUSHL
  $B00F  E9 8C E0 02                CALL_abs_imm1          $E08C {native}, $02
  $B013  61                         PUSH_qimm   ; inline operand = 1
  $B014  E9 C1 E0 02                CALL_abs_imm1          $E0C1 {native}, $02
  $B018  81 D9                      LOADL_near             $D9
  $B01A  A9 7C 73                   BYTE_STORE_abs         $737C
 >$B01D  81 DD                      LOADL_near             $DD
  $B01F  85 D7                      STORE_near             $D7
  $B021  81 D7                      LOADL_near             $D7
  $B023  56                         LOADR_qimm   ; inline operand = 6
  $B024  C2                         SCMPLT
  $B025  D8 2F B0                   JUMPF_abs              $B02F
  $B028  45                         LOADL_qimm   ; inline operand = 5
  $B029  83 D7                      LOADR_near             $D7
  $B02B  BC                         SUB
  $B02C  D6 33 B0                   JUMP_abs               $B033
 >$B02F  81 D7                      LOADL_near             $D7
  $B031  8F FA                      BYTE_ADD_imm1          -6
 >$B033  85 D7                      STORE_near             $D7
  $B035  81 D7                      LOADL_near             $D7
  $B037  54                         LOADR_qimm   ; inline operand = 4
  $B038  C2                         SCMPLT
  $B039  D8 43 B0                   JUMPF_abs              $B043
  $B03C  81 D7                      LOADL_near             $D7
  $B03E  52                         LOADR_qimm   ; inline operand = 2
  $B03F  B6                         SDIV
  $B040  D6 47 B0                   JUMP_abs               $B047
 >$B043  81 D7                      LOADL_near             $D7
  $B045  8F FE                      BYTE_ADD_imm1          -2
 >$B047  85 D7                      STORE_near             $D7
  $B049  A5 62 72                   BYTE_LOADL_abs         $7262
  $B04C  83 D7                      LOADR_near             $D7
  $B04E  C1                         CMPNE
  $B04F  D8 57 B0                   JUMPF_abs              $B057
  $B052  81 D7                      LOADL_near             $D7
  $B054  A9 62 72                   BYTE_STORE_abs         $7262
 >$B057  A5 63 72                   BYTE_LOADL_abs         $7263
  $B05A  83 E1                      LOADR_near             $E1
  $B05C  C1                         CMPNE
  $B05D  D7 69 B0                   JUMPT_abs              $B069
  $B060  A5 64 72                   BYTE_LOADL_abs         $7264
  $B063  83 DD                      LOADR_near             $DD
  $B065  C1                         CMPNE
  $B066  D8 7B B0                   JUMPF_abs              $B07B
 >$B069  87 DD                      PUSH_near              $DD
  $B06B  87 E1                      PUSH_near              $E1
  $B06D  E9 46 AC 04                CALL_abs_imm1          $AC46 {bytecode}, $04
  $B071  81 E1                      LOADL_near             $E1
  $B073  A9 63 72                   BYTE_STORE_abs         $7263
  $B076  81 DD                      LOADL_near             $DD
  $B078  A9 64 72                   BYTE_STORE_abs         $7264
 >$B07B  A5 65 72                   BYTE_LOADL_abs         $7265
  $B07E  83 E3                      LOADR_near             $E3
  $B080  C1                         CMPNE
  $B081  D7 91 B0                   JUMPT_abs              $B091
  $B084  A5 66 72                   BYTE_LOADL_abs         $7266
  $B087  83 DF                      LOADR_near             $DF
  $B089  C1                         CMPNE
  $B08A  D7 91 B0                   JUMPT_abs              $B091
  $B08D  40                         LOADL_qimm   ; inline operand = 0
  $B08E  D6 92 B0                   JUMP_abs               $B092
 >$B091  41                         LOADL_qimm   ; inline operand = 1
 >$B092  85 D3                      STORE_near             $D3
  $B094  81 D3                      LOADL_near             $D3
  $B096  D8 B2 B0                   JUMPF_abs              $B0B2
  $B099  64                         PUSH_qimm   ; inline operand = 4
  $B09A  65                         PUSH_qimm   ; inline operand = 5
  $B09B  6C                         PUSH_qimm   ; inline operand = 12
  $B09C  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $B0A0  87 DF                      PUSH_near              $DF
  $B0A2  87 E3                      PUSH_near              $E3
  $B0A4  E9 6B A9 04                CALL_abs_imm1          $A96B {native}, $04
  $B0A8  81 E3                      LOADL_near             $E3
  $B0AA  A9 65 72                   BYTE_STORE_abs         $7265
  $B0AD  81 DF                      LOADL_near             $DF
  $B0AF  A9 66 72                   BYTE_STORE_abs         $7266
 >$B0B2  DE EB FF                   LEAL_far               $FFEB
  $B0B5  B3                         PUSHL
  $B0B6  3D                         PUSH_quick   ; inline operand = 13
  $B0B7  3C                         PUSH_quick   ; inline operand = 12
  $B0B8  E9 30 D2 06                CALL_abs_imm1          $D230 (collect_ports_by_key) {native}, $06
  $B0BC  A9 7F 70                   BYTE_STORE_abs         $707F
  $B0BF  D8 4B B1                   JUMPF_abs              $B14B
  $B0C2  40                         LOADL_qimm   ; inline operand = 0
  $B0C3  85 DB                      STORE_near             $DB
  $B0C5  DE EB FF                   LEAL_far               $FFEB
  $B0C8  85 E9                      STORE_near             $E9
  $B0CA  B3                         PUSHL
  $B0CB  A5 7F 70                   BYTE_LOADL_abs         $707F
  $B0CE  B4                         POPR
  $B0CF  BB                         ADD
  $B0D0  85 E7                      STORE_near             $E7
  $B0D2  D6 3E B1                   JUMP_abs               $B13E
 >$B0D5  81 E9                      LOADL_near             $E9
  $B0D7  D3                         BYTE_DEREF
  $B0D8  8C 76 6F                   LOADR_imm2             $6F76
  $B0DB  BB                         ADD
  $B0DC  D3                         BYTE_DEREF
  $B0DD  58                         LOADR_qimm   ; inline operand = 8
  $B0DE  DA                         AND
  $B0DF  D8 29 B1                   JUMPF_abs              $B129
  $B0E2  81 E9                      LOADL_near             $E9
  $B0E4  D3                         BYTE_DEREF
  $B0E5  8B 13                      BYTE_LOADR_imm1        +19
  $B0E7  B5                         MULT
  $B0E8  8C D8 AF                   LOADR_imm2             $AFD8
  $B0EB  BB                         ADD
  $B0EC  85 D5                      STORE_near             $D5
  $B0EE  81 D3                      LOADL_near             $D3
  $B0F0  D8 0E B1                   JUMPF_abs              $B10E
  $B0F3  81 D5                      LOADL_near             $D5
  $B0F5  8F 12                      BYTE_ADD_imm1          +18
  $B0F7  B3                         PUSHL
  $B0F8  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $B0FC  B3                         PUSHL
  $B0FD  81 D5                      LOADL_near             $D5
  $B0FF  8F 11                      BYTE_ADD_imm1          +17
  $B101  B3                         PUSHL
  $B102  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $B106  B3                         PUSHL
  $B107  E9 54 AB 04                CALL_abs_imm1          $AB54 {bytecode}, $04
  $B10B  D6 39 B1                   JUMP_abs               $B139
 >$B10E  81 D5                      LOADL_near             $D5
  $B110  8F 12                      BYTE_ADD_imm1          +18
  $B112  B3                         PUSHL
  $B113  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $B117  B3                         PUSHL
  $B118  81 D5                      LOADL_near             $D5
  $B11A  8F 11                      BYTE_ADD_imm1          +17
  $B11C  B3                         PUSHL
  $B11D  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $B121  B3                         PUSHL
  $B122  E9 B7 AC 04                CALL_abs_imm1          $ACB7 {bytecode}, $04
  $B126  D6 39 B1                   JUMP_abs               $B139
 >$B129  81 DB                      LOADL_near             $DB
  $B12B  8C 6B 70                   LOADR_imm2             $706B
  $B12E  BB                         ADD
  $B12F  B3                         PUSHL
  $B130  81 E9                      LOADL_near             $E9
  $B132  D3                         BYTE_DEREF
  $B133  D4                         BYTE_POPSTORE
  $B134  81 DB                      LOADL_near             $DB
  $B136  D0                         INC
  $B137  85 DB                      STORE_near             $DB
 >$B139  81 E9                      LOADL_near             $E9
  $B13B  D0                         INC
  $B13C  85 E9                      STORE_near             $E9
 >$B13E  81 E9                      LOADL_near             $E9
  $B140  83 E7                      LOADR_near             $E7
  $B142  C6                         UCMPLT
  $B143  D7 D5 B0                   JUMPT_abs              $B0D5
  $B146  81 DB                      LOADL_near             $DB
  $B148  A9 7F 70                   BYTE_STORE_abs         $707F
 >$B14B  81 D3                      LOADL_near             $D3
  $B14D  D8 60 B1                   JUMPF_abs              $B160
  $B150  AC 7F AF                   CALL_abs               $AF7F {bytecode}
  $B153  A5 8C 6B                   BYTE_LOADL_abs         $6B8C
  $B156  55                         LOADR_qimm   ; inline operand = 5
  $B157  B8                         UDIV
  $B158  B3                         PUSHL
  $B159  E9 92 B1 02                CALL_abs_imm1          $B192 {bytecode}, $02
  $B15D  AC 2C AB                   CALL_abs               $AB2C {bytecode}
 >$B160  DE EB FF                   LEAL_far               $FFEB
  $B163  B3                         PUSHL
  $B164  3D                         PUSH_quick   ; inline operand = 13
  $B165  3C                         PUSH_quick   ; inline operand = 12
  $B166  E9 9B D2 06                CALL_abs_imm1          $D29B (scan_records_6662) {native}, $06
  $B16A  85 E5                      STORE_near             $E5
  $B16C  D8 91 B1                   JUMPF_abs              $B191
  $B16F  DE EB FF                   LEAL_far               $FFEB
  $B172  85 E9                      STORE_near             $E9
  $B174  83 E5                      LOADR_near             $E5
  $B176  BB                         ADD
  $B177  85 E7                      STORE_near             $E7
  $B179  D6 89 B1                   JUMP_abs               $B189
 >$B17C  81 E9                      LOADL_near             $E9
  $B17E  D3                         BYTE_DEREF
  $B17F  B3                         PUSHL
  $B180  E9 EA AE 02                CALL_abs_imm1          $AEEA {bytecode}, $02
  $B184  81 E9                      LOADL_near             $E9
  $B186  D0                         INC
  $B187  85 E9                      STORE_near             $E9
 >$B189  81 E9                      LOADL_near             $E9
  $B18B  83 E7                      LOADR_near             $E7
  $B18D  C6                         UCMPLT
  $B18E  D7 7C B1                   JUMPT_abs              $B17C
 >$B191  CF                         RETURN

; ============================================================
; sub $B192   (frame_off=-6, body @ $B197)   [PRG $03192]
; ============================================================
  $B197  0C                         LOADL_quick   ; inline operand = 12
  $B198  53                         LOADR_qimm   ; inline operand = 3
  $B199  BA                         UMOD
  $B19A  D7 A8 B1                   JUMPT_abs              $B1A8
  $B19D  A5 62 72                   BYTE_LOADL_abs         $7262
  $B1A0  54                         LOADR_qimm   ; inline operand = 4
  $B1A1  BD                         LSHIFT
  $B1A2  8C 5C BB                   LOADR_imm2             $BB5C
  $B1A5  D6 C1 B1                   JUMP_abs               $B1C1
 >$B1A8  0C                         LOADL_quick   ; inline operand = 12
  $B1A9  53                         LOADR_qimm   ; inline operand = 3
  $B1AA  B8                         UDIV
  $B1AB  D8 B9 B1                   JUMPF_abs              $B1B9
  $B1AE  A5 62 72                   BYTE_LOADL_abs         $7262
  $B1B1  54                         LOADR_qimm   ; inline operand = 4
  $B1B2  BD                         LSHIFT
  $B1B3  8C 9C BB                   LOADR_imm2             $BB9C
  $B1B6  D6 C1 B1                   JUMP_abs               $B1C1
 >$B1B9  A5 62 72                   BYTE_LOADL_abs         $7262
  $B1BC  54                         LOADR_qimm   ; inline operand = 4
  $B1BD  BD                         LSHIFT
  $B1BE  8C DC BB                   LOADR_imm2             $BBDC
 >$B1C1  BB                         ADD
  $B1C2  2B                         STORE_quick   ; inline operand = 11
  $B1C3  8D 10                      BYTE_PUSH_imm1         +16
  $B1C5  60                         PUSH_qimm   ; inline operand = 0
  $B1C6  3B                         PUSH_quick   ; inline operand = 11
  $B1C7  66                         PUSH_qimm   ; inline operand = 6
  $B1C8  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $B1CC  8D 10                      BYTE_PUSH_imm1         +16
  $B1CE  8D 10                      BYTE_PUSH_imm1         +16
  $B1D0  8E 76 F3                   PUSH_imm2              $F376
  $B1D3  66                         PUSH_qimm   ; inline operand = 6
  $B1D4  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $B1D8  CF                         RETURN

; ============================================================
; sub $B1D9   (frame_off=+0, body @ $B1DE)   [PRG $031D9]
; ============================================================
  $B1DE  60                         PUSH_qimm   ; inline operand = 0
  $B1DF  62                         PUSH_qimm   ; inline operand = 2
  $B1E0  68                         PUSH_qimm   ; inline operand = 8
  $B1E1  8D 12                      BYTE_PUSH_imm1         +18
  $B1E3  A5 7D 73                   BYTE_LOADL_abs         $737D
  $B1E6  51                         LOADR_qimm   ; inline operand = 1
  $B1E7  C0                         CMPEQ
  $B1E8  D8 EF B1                   JUMPF_abs              $B1EF
  $B1EB  43                         LOADL_qimm   ; inline operand = 3
  $B1EC  D6 F1 B1                   JUMP_abs               $B1F1
 >$B1EF  89 13                      BYTE_LOADL_imm1        +19
 >$B1F1  B3                         PUSHL
  $B1F2  67                         PUSH_qimm   ; inline operand = 7
  $B1F3  E9 3C A7 0C                CALL_abs_imm1          $A73C {native}, $0C
  $B1F7  CF                         RETURN

; ============================================================
; sub $B1F8   (frame_off=-2, body @ $B1FD)   [PRG $031F8]
; ============================================================
  $B1FD  0C                         LOADL_quick   ; inline operand = 12
  $B1FE  D1                         DEC
  $B1FF  2C                         STORE_quick   ; inline operand = 12
  $B200  A5 7D 73                   BYTE_LOADL_abs         $737D
  $B203  51                         LOADR_qimm   ; inline operand = 1
  $B204  C0                         CMPEQ
  $B205  D8 0C B2                   JUMPF_abs              $B20C
  $B208  43                         LOADL_qimm   ; inline operand = 3
  $B209  D6 0E B2                   JUMP_abs               $B20E
 >$B20C  89 13                      BYTE_LOADL_imm1        +19
 >$B20E  2B                         STORE_quick   ; inline operand = 11
  $B20F  0C                         LOADL_quick   ; inline operand = 12
  $B210  D2                         LSHIFT1
  $B211  1B                         LOADR_quick   ; inline operand = 11
  $B212  BB                         ADD
  $B213  D0                         INC
  $B214  B3                         PUSHL
  $B215  68                         PUSH_qimm   ; inline operand = 8
  $B216  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $B21A  61                         PUSH_qimm   ; inline operand = 1
  $B21B  8E 1C BC                   PUSH_imm2              $BC1C
  $B21E  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $B222  CF                         RETURN

; ============================================================
; sub $B223   (frame_off=-2, body @ $B228)   [PRG $03223]
; ============================================================
  $B228  AC D9 B1                   CALL_abs               $B1D9 {bytecode}
  $B22B  A5 7D 73                   BYTE_LOADL_abs         $737D
  $B22E  51                         LOADR_qimm   ; inline operand = 1
  $B22F  C0                         CMPEQ
  $B230  D8 37 B2                   JUMPF_abs              $B237
  $B233  43                         LOADL_qimm   ; inline operand = 3
  $B234  D6 39 B2                   JUMP_abs               $B239
 >$B237  89 13                      BYTE_LOADL_imm1        +19
 >$B239  2B                         STORE_quick   ; inline operand = 11
  $B23A  0B                         LOADL_quick   ; inline operand = 11
  $B23B  D0                         INC
  $B23C  B3                         PUSHL
  $B23D  68                         PUSH_qimm   ; inline operand = 8
  $B23E  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $B242  61                         PUSH_qimm   ; inline operand = 1
  $B243  8E 23 BC                   PUSH_imm2              $BC23
  $B246  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $B24A  CF                         RETURN

; ============================================================
; sub $B24B   (frame_off=+0, body @ $B250)   [PRG $0324B]
; ============================================================
  $B250  AC D9 B1                   CALL_abs               $B1D9 {bytecode}
  $B253  61                         PUSH_qimm   ; inline operand = 1
  $B254  E9 F8 B1 02                CALL_abs_imm1          $B1F8 {bytecode}, $02
  $B258  CF                         RETURN

; ============================================================
; sub $B259   (frame_off=+0, body @ $B25E)   [PRG $03259]
; ============================================================
  $B25E  AC D9 B1                   CALL_abs               $B1D9 {bytecode}
  $B261  62                         PUSH_qimm   ; inline operand = 2
  $B262  E9 F8 B1 02                CALL_abs_imm1          $B1F8 {bytecode}, $02
  $B266  CF                         RETURN

; ============================================================
; sub $B267   (frame_off=-4, body @ $B26C)   [PRG $03267]
; ============================================================
  $B26C  42                         LOADL_qimm   ; inline operand = 2
  $B26D  A9 80 73                   BYTE_STORE_abs         $7380
  $B270  A5 7D 73                   BYTE_LOADL_abs         $737D
  $B273  51                         LOADR_qimm   ; inline operand = 1
  $B274  C0                         CMPEQ
  $B275  D8 7C B2                   JUMPF_abs              $B27C
  $B278  43                         LOADL_qimm   ; inline operand = 3
  $B279  D6 7E B2                   JUMP_abs               $B27E
 >$B27C  89 13                      BYTE_LOADL_imm1        +19
 >$B27E  2A                         STORE_quick   ; inline operand = 10
  $B27F  8E E9 00                   PUSH_imm2              $00E9
  $B282  8E C4 A0                   PUSH_imm2              $A0C4
  $B285  8E 04 A0                   PUSH_imm2              $A004
  $B288  68                         PUSH_qimm   ; inline operand = 8
  $B289  8D 18                      BYTE_PUSH_imm1         +24
  $B28B  3A                         PUSH_quick   ; inline operand = 10
  $B28C  67                         PUSH_qimm   ; inline operand = 7
  $B28D  69                         PUSH_qimm   ; inline operand = 9
  $B28E  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $B292  3D                         PUSH_quick   ; inline operand = 13
  $B293  3C                         PUSH_quick   ; inline operand = 12
  $B294  0A                         LOADL_quick   ; inline operand = 10
  $B295  D0                         INC
  $B296  B3                         PUSHL
  $B297  8D 19                      BYTE_PUSH_imm1         +25
  $B299  E9 BB A5 08                CALL_abs_imm1          $A5BB {bytecode}, $08
  $B29D  AC D9 B1                   CALL_abs               $B1D9 {bytecode}
  $B2A0  0A                         LOADL_quick   ; inline operand = 10
  $B2A1  D0                         INC
  $B2A2  B3                         PUSHL
  $B2A3  68                         PUSH_qimm   ; inline operand = 8
  $B2A4  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $B2A8  61                         PUSH_qimm   ; inline operand = 1
  $B2A9  8E 27 BC                   PUSH_imm2              $BC27
  $B2AC  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $B2B0  CF                         RETURN

; ============================================================
; sub $B2B1   (frame_off=-4, body @ $B2B6)   [PRG $032B1]
; ============================================================
  $B2B6  42                         LOADL_qimm   ; inline operand = 2
  $B2B7  A9 80 73                   BYTE_STORE_abs         $7380
  $B2BA  A5 7D 73                   BYTE_LOADL_abs         $737D
  $B2BD  51                         LOADR_qimm   ; inline operand = 1
  $B2BE  C0                         CMPEQ
  $B2BF  D8 C6 B2                   JUMPF_abs              $B2C6
  $B2C2  43                         LOADL_qimm   ; inline operand = 3
  $B2C3  D6 C8 B2                   JUMP_abs               $B2C8
 >$B2C6  89 13                      BYTE_LOADL_imm1        +19
 >$B2C8  2A                         STORE_quick   ; inline operand = 10
  $B2C9  3D                         PUSH_quick   ; inline operand = 13
  $B2CA  3C                         PUSH_quick   ; inline operand = 12
  $B2CB  0A                         LOADL_quick   ; inline operand = 10
  $B2CC  D0                         INC
  $B2CD  B3                         PUSHL
  $B2CE  8D 19                      BYTE_PUSH_imm1         +25
  $B2D0  E9 BB A5 08                CALL_abs_imm1          $A5BB {bytecode}, $08
  $B2D4  AC D9 B1                   CALL_abs               $B1D9 {bytecode}
  $B2D7  0A                         LOADL_quick   ; inline operand = 10
  $B2D8  D0                         INC
  $B2D9  B3                         PUSHL
  $B2DA  68                         PUSH_qimm   ; inline operand = 8
  $B2DB  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $B2DF  61                         PUSH_qimm   ; inline operand = 1
  $B2E0  8E 2B BC                   PUSH_imm2              $BC2B
  $B2E3  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $B2E7  CF                         RETURN

; ============================================================
; sub $B2E8   (frame_off=+0, body @ $B2ED)   [PRG $032E8]
; ============================================================
  $B2ED  60                         PUSH_qimm   ; inline operand = 0
  $B2EE  AC 91 D7                   CALL_abs               $D791 {native}
  $B2F1  B3                         PUSHL
  $B2F2  E9 67 B2 04                CALL_abs_imm1          $B267 {bytecode}, $04
  $B2F6  CF                         RETURN

; ============================================================
; sub $B2F7   (frame_off=+0, body @ $B2FC)   [PRG $032F7]
; ============================================================
  $B2FC  8E E0 00                   PUSH_imm2              $00E0
  $B2FF  0E                         LOADL_quick   ; inline operand = 14
  $B300  D2                         LSHIFT1
  $B301  D2                         LSHIFT1
  $B302  8C 31 BC                   LOADR_imm2             $BC31
  $B305  BB                         ADD
  $B306  B0                         DEREF
  $B307  B3                         PUSHL
  $B308  0E                         LOADL_quick   ; inline operand = 14
  $B309  D2                         LSHIFT1
  $B30A  D2                         LSHIFT1
  $B30B  8C 2F BC                   LOADR_imm2             $BC2F
  $B30E  BB                         ADD
  $B30F  B0                         DEREF
  $B310  B3                         PUSHL
  $B311  62                         PUSH_qimm   ; inline operand = 2
  $B312  62                         PUSH_qimm   ; inline operand = 2
  $B313  3D                         PUSH_quick   ; inline operand = 13
  $B314  3C                         PUSH_quick   ; inline operand = 12
  $B315  69                         PUSH_qimm   ; inline operand = 9
  $B316  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $B31A  42                         LOADL_qimm   ; inline operand = 2
  $B31B  CD                         SWAP
  $B31C  0C                         LOADL_quick   ; inline operand = 12
  $B31D  BB                         ADD
  $B31E  2C                         STORE_quick   ; inline operand = 12
  $B31F  0D                         LOADL_quick   ; inline operand = 13
  $B320  D0                         INC
  $B321  2D                         STORE_quick   ; inline operand = 13
  $B322  0F                         LOADL_quick   ; inline operand = 15
  $B323  5A                         LOADR_qimm   ; inline operand = 10
  $B324  BA                         UMOD
  $B325  2F                         STORE_quick   ; inline operand = 15
  $B326  8E E0 00                   PUSH_imm2              $00E0
  $B329  0F                         LOADL_quick   ; inline operand = 15
  $B32A  D2                         LSHIFT1
  $B32B  D2                         LSHIFT1
  $B32C  8C 51 BC                   LOADR_imm2             $BC51
  $B32F  BB                         ADD
  $B330  B0                         DEREF
  $B331  B3                         PUSHL
  $B332  0F                         LOADL_quick   ; inline operand = 15
  $B333  D2                         LSHIFT1
  $B334  D2                         LSHIFT1
  $B335  8C 4F BC                   LOADR_imm2             $BC4F
  $B338  BB                         ADD
  $B339  B0                         DEREF
  $B33A  B3                         PUSHL
  $B33B  61                         PUSH_qimm   ; inline operand = 1
  $B33C  61                         PUSH_qimm   ; inline operand = 1
  $B33D  3D                         PUSH_quick   ; inline operand = 13
  $B33E  3C                         PUSH_quick   ; inline operand = 12
  $B33F  69                         PUSH_qimm   ; inline operand = 9
  $B340  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $B344  CF                         RETURN

; ============================================================
; sub $B345   (frame_off=-2, body @ $B34A)   [PRG $03345]
; ============================================================
  $B34A  A5 81 70                   BYTE_LOADL_abs         $7081
  $B34D  2B                         STORE_quick   ; inline operand = 11
  $B34E  8E E0 00                   PUSH_imm2              $00E0
  $B351  8E FE AE                   PUSH_imm2              $AEFE
  $B354  8E D6 AE                   PUSH_imm2              $AED6
  $B357  68                         PUSH_qimm   ; inline operand = 8
  $B358  65                         PUSH_qimm   ; inline operand = 5
  $B359  3D                         PUSH_quick   ; inline operand = 13
  $B35A  3C                         PUSH_quick   ; inline operand = 12
  $B35B  69                         PUSH_qimm   ; inline operand = 9
  $B35C  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $B360  0C                         LOADL_quick   ; inline operand = 12
  $B361  D0                         INC
  $B362  2C                         STORE_quick   ; inline operand = 12
  $B363  42                         LOADL_qimm   ; inline operand = 2
  $B364  CD                         SWAP
  $B365  0D                         LOADL_quick   ; inline operand = 13
  $B366  BB                         ADD
  $B367  2D                         STORE_quick   ; inline operand = 13
  $B368  0B                         LOADL_quick   ; inline operand = 11
  $B369  D8 77 B3                   JUMPF_abs              $B377
  $B36C  3B                         PUSH_quick   ; inline operand = 11
  $B36D  A5 80 70                   BYTE_LOADL_abs         $7080
  $B370  B3                         PUSHL
  $B371  3D                         PUSH_quick   ; inline operand = 13
  $B372  3C                         PUSH_quick   ; inline operand = 12
  $B373  E9 F7 B2 08                CALL_abs_imm1          $B2F7 {bytecode}, $08
 >$B377  A5 84 70                   BYTE_LOADL_abs         $7084
  $B37A  53                         LOADR_qimm   ; inline operand = 3
  $B37B  BE                         URSHIFT
  $B37C  53                         LOADR_qimm   ; inline operand = 3
  $B37D  DA                         AND
  $B37E  2B                         STORE_quick   ; inline operand = 11
  $B37F  43                         LOADL_qimm   ; inline operand = 3
  $B380  CD                         SWAP
  $B381  0D                         LOADL_quick   ; inline operand = 13
  $B382  BB                         ADD
  $B383  2D                         STORE_quick   ; inline operand = 13
  $B384  0B                         LOADL_quick   ; inline operand = 11
  $B385  D8 97 B3                   JUMPF_abs              $B397
  $B388  3B                         PUSH_quick   ; inline operand = 11
  $B389  A5 84 70                   BYTE_LOADL_abs         $7084
  $B38C  56                         LOADR_qimm   ; inline operand = 6
  $B38D  BE                         URSHIFT
  $B38E  57                         LOADR_qimm   ; inline operand = 7
  $B38F  DA                         AND
  $B390  B3                         PUSHL
  $B391  3D                         PUSH_quick   ; inline operand = 13
  $B392  3C                         PUSH_quick   ; inline operand = 12
  $B393  E9 F7 B2 08                CALL_abs_imm1          $B2F7 {bytecode}, $08
 >$B397  CF                         RETURN

; ============================================================
; sub $B398   (frame_off=-27, body @ $B39D)   [PRG $03398]
; ============================================================
  $B39D  8A 77 BC                   LOADL_imm2             $BC77
  $B3A0  2B                         STORE_quick   ; inline operand = 11
  $B3A1  DE F9 FF                   LEAL_far               $FFF9
  $B3A4  B3                         PUSHL
  $B3A5  60                         PUSH_qimm   ; inline operand = 0
  $B3A6  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $B3AA  85 F3                      STORE_near             $F3
  $B3AC  40                         LOADL_qimm   ; inline operand = 0
  $B3AD  85 ED                      STORE_near             $ED
  $B3AF  85 EF                      STORE_near             $EF
  $B3B1  85 F1                      STORE_near             $F1
  $B3B3  DE F9 FF                   LEAL_far               $FFF9
  $B3B6  85 F7                      STORE_near             $F7
  $B3B8  83 F3                      LOADR_near             $F3
  $B3BA  BB                         ADD
  $B3BB  85 F5                      STORE_near             $F5
  $B3BD  D6 FC B3                   JUMP_abs               $B3FC
 >$B3C0  81 F7                      LOADL_near             $F7
  $B3C2  D3                         BYTE_DEREF
  $B3C3  8B 18                      BYTE_LOADR_imm1        +24
  $B3C5  B5                         MULT
  $B3C6  8C A4 6A                   LOADR_imm2             $6AA4
  $B3C9  BB                         ADD
  $B3CA  85 E7                      STORE_near             $E7
  $B3CC  81 F7                      LOADL_near             $F7
  $B3CE  D3                         BYTE_DEREF
  $B3CF  57                         LOADR_qimm   ; inline operand = 7
  $B3D0  B5                         MULT
  $B3D1  8C 90 6C                   LOADR_imm2             $6C90
  $B3D4  BB                         ADD
  $B3D5  85 E5                      STORE_near             $E5
  $B3D7  81 E7                      LOADL_near             $E7
  $B3D9  8F 12                      BYTE_ADD_imm1          +18
  $B3DB  B0                         DEREF
  $B3DC  CD                         SWAP
  $B3DD  81 EF                      LOADL_near             $EF
  $B3DF  BB                         ADD
  $B3E0  85 EF                      STORE_near             $EF
  $B3E2  81 E7                      LOADL_near             $E7
  $B3E4  8F 10                      BYTE_ADD_imm1          +16
  $B3E6  B0                         DEREF
  $B3E7  CD                         SWAP
  $B3E8  81 ED                      LOADL_near             $ED
  $B3EA  BB                         ADD
  $B3EB  85 ED                      STORE_near             $ED
  $B3ED  81 E5                      LOADL_near             $E5
  $B3EF  74                         ADD_qimm   ; inline operand = 4
  $B3F0  B0                         DEREF
  $B3F1  CD                         SWAP
  $B3F2  81 F1                      LOADL_near             $F1
  $B3F4  BB                         ADD
  $B3F5  85 F1                      STORE_near             $F1
  $B3F7  81 F7                      LOADL_near             $F7
  $B3F9  D0                         INC
  $B3FA  85 F7                      STORE_near             $F7
 >$B3FC  81 F7                      LOADL_near             $F7
  $B3FE  83 F5                      LOADR_near             $F5
  $B400  C6                         UCMPLT
  $B401  D7 C0 B3                   JUMPT_abs              $B3C0
  $B404  A5 98 6A                   BYTE_LOADL_abs         $6A98
  $B407  B7 26                      LONG                   $26
  $B409  B7 14                      LONG                   $14
  $B40B  81 F1                      LOADL_near             $F1
  $B40D  B7 26                      LONG                   $26
  $B40F  B7 15                      LONG                   $15
  $B411  B7 01                      LONG                   $01
  $B413  B7 19 64 00 00 00          LONG                   $19 $64 $00 $00 $00
  $B419  B7 02                      LONG                   $02
  $B41B  B7 27                      LONG                   $27
  $B41D  85 EB                      STORE_near             $EB
  $B41F  A5 99 6A                   BYTE_LOADL_abs         $6A99
  $B422  B7 26                      LONG                   $26
  $B424  B7 14                      LONG                   $14
  $B426  81 F1                      LOADL_near             $F1
  $B428  B7 26                      LONG                   $26
  $B42A  B7 15                      LONG                   $15
  $B42C  B7 01                      LONG                   $01
  $B42E  B7 19 64 00 00 00          LONG                   $19 $64 $00 $00 $00
  $B434  B7 02                      LONG                   $02
  $B436  B7 27                      LONG                   $27
  $B438  85 E9                      STORE_near             $E9
  $B43A  81 EB                      LOADL_near             $EB
  $B43C  D0                         INC
  $B43D  B3                         PUSHL
  $B43E  81 EF                      LOADL_near             $EF
  $B440  B4                         POPR
  $B441  B8                         UDIV
  $B442  85 EB                      STORE_near             $EB
  $B444  81 E9                      LOADL_near             $E9
  $B446  D0                         INC
  $B447  B3                         PUSHL
  $B448  81 ED                      LOADL_near             $ED
  $B44A  B4                         POPR
  $B44B  B8                         UDIV
  $B44C  85 E9                      STORE_near             $E9
  $B44E  8E E8 03                   PUSH_imm2              $03E8
  $B451  87 EB                      PUSH_near              $EB
  $B453  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $B457  85 EB                      STORE_near             $EB
  $B459  8E E8 03                   PUSH_imm2              $03E8
  $B45C  87 E9                      PUSH_near              $E9
  $B45E  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $B462  85 E9                      STORE_near             $E9
  $B464  61                         PUSH_qimm   ; inline operand = 1
  $B465  3D                         PUSH_quick   ; inline operand = 13
  $B466  3C                         PUSH_quick   ; inline operand = 12
  $B467  E9 D0 A3 06                CALL_abs_imm1          $A3D0 {bytecode}, $06
  $B46B  3D                         PUSH_quick   ; inline operand = 13
  $B46C  0C                         LOADL_quick   ; inline operand = 12
  $B46D  72                         ADD_qimm   ; inline operand = 2
  $B46E  B3                         PUSHL
  $B46F  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $B473  87 EB                      PUSH_near              $EB
  $B475  8E 7C BC                   PUSH_imm2              $BC7C
  $B478  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $B47C  0D                         LOADL_quick   ; inline operand = 13
  $B47D  D0                         INC
  $B47E  B3                         PUSHL
  $B47F  0C                         LOADL_quick   ; inline operand = 12
  $B480  72                         ADD_qimm   ; inline operand = 2
  $B481  B3                         PUSHL
  $B482  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $B486  3B                         PUSH_quick   ; inline operand = 11
  $B487  8E 7F BC                   PUSH_imm2              $BC7F
  $B48A  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $B48E  60                         PUSH_qimm   ; inline operand = 0
  $B48F  0D                         LOADL_quick   ; inline operand = 13
  $B490  73                         ADD_qimm   ; inline operand = 3
  $B491  B3                         PUSHL
  $B492  3C                         PUSH_quick   ; inline operand = 12
  $B493  E9 D0 A3 06                CALL_abs_imm1          $A3D0 {bytecode}, $06
  $B497  0D                         LOADL_quick   ; inline operand = 13
  $B498  73                         ADD_qimm   ; inline operand = 3
  $B499  B3                         PUSHL
  $B49A  0C                         LOADL_quick   ; inline operand = 12
  $B49B  72                         ADD_qimm   ; inline operand = 2
  $B49C  B3                         PUSHL
  $B49D  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $B4A1  87 E9                      PUSH_near              $E9
  $B4A3  8E 82 BC                   PUSH_imm2              $BC82
  $B4A6  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $B4AA  0D                         LOADL_quick   ; inline operand = 13
  $B4AB  74                         ADD_qimm   ; inline operand = 4
  $B4AC  B3                         PUSHL
  $B4AD  0C                         LOADL_quick   ; inline operand = 12
  $B4AE  72                         ADD_qimm   ; inline operand = 2
  $B4AF  B3                         PUSHL
  $B4B0  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $B4B4  3B                         PUSH_quick   ; inline operand = 11
  $B4B5  8E 85 BC                   PUSH_imm2              $BC85
  $B4B8  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $B4BC  CF                         RETURN

; ============================================================
; sub $B4BD   (frame_off=-4, body @ $B4C2)   [PRG $034BD]
; ============================================================
  $B4C2  42                         LOADL_qimm   ; inline operand = 2
  $B4C3  2B                         STORE_quick   ; inline operand = 11
  $B4C4  A5 7D 73                   BYTE_LOADL_abs         $737D
  $B4C7  51                         LOADR_qimm   ; inline operand = 1
  $B4C8  C0                         CMPEQ
  $B4C9  D8 D0 B4                   JUMPF_abs              $B4D0
  $B4CC  43                         LOADL_qimm   ; inline operand = 3
  $B4CD  D6 D2 B4                   JUMP_abs               $B4D2
 >$B4D0  89 13                      BYTE_LOADL_imm1        +19
 >$B4D2  2A                         STORE_quick   ; inline operand = 10
  $B4D3  AC 89 A5                   CALL_abs               $A589 {bytecode}
  $B4D6  60                         PUSH_qimm   ; inline operand = 0
  $B4D7  8E 88 BC                   PUSH_imm2              $BC88
  $B4DA  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $B4DE  A5 80 73                   BYTE_LOADL_abs         $7380
  $B4E1  D7 EA B4                   JUMPT_abs              $B4EA
  $B4E4  3A                         PUSH_quick   ; inline operand = 10
  $B4E5  3B                         PUSH_quick   ; inline operand = 11
  $B4E6  E9 45 B3 04                CALL_abs_imm1          $B345 {bytecode}, $04
 >$B4EA  A5 80 73                   BYTE_LOADL_abs         $7380
  $B4ED  D8 F8 B4                   JUMPF_abs              $B4F8
  $B4F0  A5 80 73                   BYTE_LOADL_abs         $7380
  $B4F3  52                         LOADR_qimm   ; inline operand = 2
  $B4F4  C0                         CMPEQ
  $B4F5  D8 4F B5                   JUMPF_abs              $B54F
 >$B4F8  8E E9 00                   PUSH_imm2              $00E9
  $B4FB  8E C4 A0                   PUSH_imm2              $A0C4
  $B4FE  8E 04 A0                   PUSH_imm2              $A004
  $B501  68                         PUSH_qimm   ; inline operand = 8
  $B502  8D 18                      BYTE_PUSH_imm1         +24
  $B504  3A                         PUSH_quick   ; inline operand = 10
  $B505  0B                         LOADL_quick   ; inline operand = 11
  $B506  75                         ADD_qimm   ; inline operand = 5
  $B507  B3                         PUSHL
  $B508  69                         PUSH_qimm   ; inline operand = 9
  $B509  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $B50D  3A                         PUSH_quick   ; inline operand = 10
  $B50E  0B                         LOADL_quick   ; inline operand = 11
  $B50F  76                         ADD_qimm   ; inline operand = 6
  $B510  B3                         PUSHL
  $B511  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $B515  AC 6D A3                   CALL_abs               $A36D {bytecode}
  $B518  3A                         PUSH_quick   ; inline operand = 10
  $B519  0B                         LOADL_quick   ; inline operand = 11
  $B51A  7A                         ADD_qimm   ; inline operand = 10
  $B51B  B3                         PUSHL
  $B51C  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $B520  AC 9D A3                   CALL_abs               $A39D {bytecode}
  $B523  3A                         PUSH_quick   ; inline operand = 10
  $B524  0B                         LOADL_quick   ; inline operand = 11
  $B525  7D                         ADD_qimm   ; inline operand = 13
  $B526  B3                         PUSHL
  $B527  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $B52B  AC 40 A3                   CALL_abs               $A340 {bytecode}
  $B52E  3A                         PUSH_quick   ; inline operand = 10
  $B52F  0B                         LOADL_quick   ; inline operand = 11
  $B530  8F 15                      BYTE_ADD_imm1          +21
  $B532  B3                         PUSHL
  $B533  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $B537  AA 96 6A                   PUSH_abs               $6A96
  $B53A  8E 8F BC                   PUSH_imm2              $BC8F
  $B53D  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $B541  0A                         LOADL_quick   ; inline operand = 10
  $B542  72                         ADD_qimm   ; inline operand = 2
  $B543  B3                         PUSHL
  $B544  0B                         LOADL_quick   ; inline operand = 11
  $B545  8F 16                      BYTE_ADD_imm1          +22
  $B547  B3                         PUSHL
  $B548  E9 98 B3 04                CALL_abs_imm1          $B398 {bytecode}, $04
  $B54C  D6 5E B5                   JUMP_abs               $B55E
 >$B54F  60                         PUSH_qimm   ; inline operand = 0
  $B550  60                         PUSH_qimm   ; inline operand = 0
  $B551  66                         PUSH_qimm   ; inline operand = 6
  $B552  6F                         PUSH_qimm   ; inline operand = 15
  $B553  0A                         LOADL_quick   ; inline operand = 10
  $B554  D0                         INC
  $B555  B3                         PUSHL
  $B556  0B                         LOADL_quick   ; inline operand = 11
  $B557  76                         ADD_qimm   ; inline operand = 6
  $B558  B3                         PUSHL
  $B559  68                         PUSH_qimm   ; inline operand = 8
  $B55A  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
 >$B55E  41                         LOADL_qimm   ; inline operand = 1
  $B55F  A9 80 73                   BYTE_STORE_abs         $7380
  $B562  CF                         RETURN

; ============================================================
; sub $B563   (frame_off=+0, body @ $B568)   [PRG $03563]
; ============================================================
  $B568  40                         LOADL_qimm   ; inline operand = 0
  $B569  A9 80 73                   BYTE_STORE_abs         $7380
  $B56C  AC BD B4                   CALL_abs               $B4BD {bytecode}
  $B56F  CF                         RETURN

; ============================================================
; sub $B570   (frame_off=+0, body @ $B575)   [PRG $03570]
; ============================================================
  $B575  61                         PUSH_qimm   ; inline operand = 1
  $B576  60                         PUSH_qimm   ; inline operand = 0
  $B577  63                         PUSH_qimm   ; inline operand = 3
  $B578  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $B57C  8E FF 00                   PUSH_imm2              $00FF
  $B57F  8E AA 73                   PUSH_imm2              $73AA
  $B582  8E 62 70                   PUSH_imm2              $7062
  $B585  8D 1C                      BYTE_PUSH_imm1         +28
  $B587  8D 1E                      BYTE_PUSH_imm1         +30
  $B589  61                         PUSH_qimm   ; inline operand = 1
  $B58A  61                         PUSH_qimm   ; inline operand = 1
  $B58B  6A                         PUSH_qimm   ; inline operand = 10
  $B58C  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $B590  65                         PUSH_qimm   ; inline operand = 5
  $B591  60                         PUSH_qimm   ; inline operand = 0
  $B592  63                         PUSH_qimm   ; inline operand = 3
  $B593  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $B597  CF                         RETURN

; ============================================================
; sub $B598   (frame_off=+0, body @ $B59D)   [PRG $03598]
; ============================================================
  $B59D  A4 69 72                   LOADL_abs              $7269
  $B5A0  D3                         BYTE_DEREF
  $B5A1  8C 62 70                   LOADR_imm2             $7062
  $B5A4  C1                         CMPNE
  $B5A5  D8 E4 B5                   JUMPF_abs              $B5E4
  $B5A8  AC 7F AF                   CALL_abs               $AF7F {bytecode}
  $B5AB  61                         PUSH_qimm   ; inline operand = 1
  $B5AC  60                         PUSH_qimm   ; inline operand = 0
  $B5AD  63                         PUSH_qimm   ; inline operand = 3
  $B5AE  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $B5B2  8E FF 00                   PUSH_imm2              $00FF
  $B5B5  8E AA 73                   PUSH_imm2              $73AA
  $B5B8  8E 62 70                   PUSH_imm2              $7062
  $B5BB  8D 1C                      BYTE_PUSH_imm1         +28
  $B5BD  8D 1E                      BYTE_PUSH_imm1         +30
  $B5BF  61                         PUSH_qimm   ; inline operand = 1
  $B5C0  61                         PUSH_qimm   ; inline operand = 1
  $B5C1  69                         PUSH_qimm   ; inline operand = 9
  $B5C2  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $B5C6  65                         PUSH_qimm   ; inline operand = 5
  $B5C7  60                         PUSH_qimm   ; inline operand = 0
  $B5C8  63                         PUSH_qimm   ; inline operand = 3
  $B5C9  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $B5CD  AC 89 A5                   CALL_abs               $A589 {bytecode}
  $B5D0  A5 6A 66                   BYTE_LOADL_abs         $666A
  $B5D3  B3                         PUSHL
  $B5D4  A5 65 66                   BYTE_LOADL_abs         $6665
  $B5D7  B3                         PUSHL
  $B5D8  A5 64 66                   BYTE_LOADL_abs         $6664
  $B5DB  B3                         PUSHL
  $B5DC  E9 41 AD 06                CALL_abs_imm1          $AD41 {bytecode}, $06
  $B5E0  40                         LOADL_qimm   ; inline operand = 0
  $B5E1  A9 80 73                   BYTE_STORE_abs         $7380
 >$B5E4  CF                         RETURN

; ============================================================
; sub $B5E5   (frame_off=-4, body @ $B5EA)   [PRG $035E5]
; ============================================================
  $B5EA  A5 80 73                   BYTE_LOADL_abs         $7380
  $B5ED  D8 33 B6                   JUMPF_abs              $B633
  $B5F0  A5 7D 73                   BYTE_LOADL_abs         $737D
  $B5F3  51                         LOADR_qimm   ; inline operand = 1
  $B5F4  C0                         CMPEQ
  $B5F5  D8 FC B5                   JUMPF_abs              $B5FC
  $B5F8  43                         LOADL_qimm   ; inline operand = 3
  $B5F9  D6 FE B5                   JUMP_abs               $B5FE
 >$B5FC  89 13                      BYTE_LOADL_imm1        +19
 >$B5FE  2B                         STORE_quick   ; inline operand = 11
  $B5FF  0B                         LOADL_quick   ; inline operand = 11
  $B600  D1                         DEC
  $B601  8B 1E                      BYTE_LOADR_imm1        +30
  $B603  B5                         MULT
  $B604  2A                         STORE_quick   ; inline operand = 10
  $B605  61                         PUSH_qimm   ; inline operand = 1
  $B606  60                         PUSH_qimm   ; inline operand = 0
  $B607  63                         PUSH_qimm   ; inline operand = 3
  $B608  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $B60C  8E FF 00                   PUSH_imm2              $00FF
  $B60F  0A                         LOADL_quick   ; inline operand = 10
  $B610  8C AA 73                   LOADR_imm2             $73AA
  $B613  BB                         ADD
  $B614  B3                         PUSHL
  $B615  0A                         LOADL_quick   ; inline operand = 10
  $B616  8C 62 70                   LOADR_imm2             $7062
  $B619  BB                         ADD
  $B61A  B3                         PUSHL
  $B61B  68                         PUSH_qimm   ; inline operand = 8
  $B61C  8D 1E                      BYTE_PUSH_imm1         +30
  $B61E  3B                         PUSH_quick   ; inline operand = 11
  $B61F  61                         PUSH_qimm   ; inline operand = 1
  $B620  69                         PUSH_qimm   ; inline operand = 9
  $B621  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $B625  65                         PUSH_qimm   ; inline operand = 5
  $B626  60                         PUSH_qimm   ; inline operand = 0
  $B627  63                         PUSH_qimm   ; inline operand = 3
  $B628  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $B62C  AC 89 A5                   CALL_abs               $A589 {bytecode}
  $B62F  40                         LOADL_qimm   ; inline operand = 0
  $B630  A9 80 73                   BYTE_STORE_abs         $7380
 >$B633  CF                         RETURN

; ============================================================
; sub $B634   (frame_off=-10, body @ $B639)   [PRG $03634]
; ============================================================
  $B639  A5 64 66                   BYTE_LOADL_abs         $6664
  $B63C  D2                         LSHIFT1
  $B63D  72                         ADD_qimm   ; inline operand = 2
  $B63E  2B                         STORE_quick   ; inline operand = 11
  $B63F  A5 65 66                   BYTE_LOADL_abs         $6665
  $B642  D2                         LSHIFT1
  $B643  D0                         INC
  $B644  2A                         STORE_quick   ; inline operand = 10
  $B645  40                         LOADL_qimm   ; inline operand = 0
  $B646  27                         STORE_quick   ; inline operand = 7
  $B647  0C                         LOADL_quick   ; inline operand = 12
  $B648  1E                         LOADR_quick   ; inline operand = 14
  $B649  BB                         ADD
  $B64A  29                         STORE_quick   ; inline operand = 9
  $B64B  0D                         LOADL_quick   ; inline operand = 13
  $B64C  1F                         LOADR_quick   ; inline operand = 15
  $B64D  BB                         ADD
  $B64E  28                         STORE_quick   ; inline operand = 8
  $B64F  0B                         LOADL_quick   ; inline operand = 11
  $B650  1C                         LOADR_quick   ; inline operand = 12
  $B651  C9                         UCMPGE
  $B652  D8 70 B6                   JUMPF_abs              $B670
  $B655  0B                         LOADL_quick   ; inline operand = 11
  $B656  19                         LOADR_quick   ; inline operand = 9
  $B657  C6                         UCMPLT
  $B658  D8 70 B6                   JUMPF_abs              $B670
  $B65B  0A                         LOADL_quick   ; inline operand = 10
  $B65C  1D                         LOADR_quick   ; inline operand = 13
  $B65D  C9                         UCMPGE
  $B65E  D8 70 B6                   JUMPF_abs              $B670
  $B661  0A                         LOADL_quick   ; inline operand = 10
  $B662  18                         LOADR_quick   ; inline operand = 8
  $B663  C6                         UCMPLT
  $B664  D8 70 B6                   JUMPF_abs              $B670
  $B667  41                         LOADL_qimm   ; inline operand = 1
  $B668  27                         STORE_quick   ; inline operand = 7
  $B669  64                         PUSH_qimm   ; inline operand = 4
  $B66A  65                         PUSH_qimm   ; inline operand = 5
  $B66B  6C                         PUSH_qimm   ; inline operand = 12
  $B66C  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
 >$B670  07                         LOADL_quick   ; inline operand = 7
  $B671  CF                         RETURN

; ============================================================
; sub $B7CE   (frame_off=+0, body @ $B7D3)   [PRG $037CE]
; ============================================================
  $B7D3  60                         PUSH_qimm   ; inline operand = 0
  $B7D4  60                         PUSH_qimm   ; inline operand = 0
  $B7D5  6E                         PUSH_qimm   ; inline operand = 14
  $B7D6  8D 20                      BYTE_PUSH_imm1         +32
  $B7D8  66                         PUSH_qimm   ; inline operand = 6
  $B7D9  60                         PUSH_qimm   ; inline operand = 0
  $B7DA  68                         PUSH_qimm   ; inline operand = 8
  $B7DB  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $B7DF  60                         PUSH_qimm   ; inline operand = 0
  $B7E0  60                         PUSH_qimm   ; inline operand = 0
  $B7E1  68                         PUSH_qimm   ; inline operand = 8
  $B7E2  61                         PUSH_qimm   ; inline operand = 1
  $B7E3  8D 14                      BYTE_PUSH_imm1         +20
  $B7E5  61                         PUSH_qimm   ; inline operand = 1
  $B7E6  68                         PUSH_qimm   ; inline operand = 8
  $B7E7  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $B7EB  CF                         RETURN

; ============================================================
; sub $B7EC   (frame_off=+0, body @ $B7F1)   [PRG $037EC]
; ============================================================
  $B7F1  60                         PUSH_qimm   ; inline operand = 0
  $B7F2  60                         PUSH_qimm   ; inline operand = 0
  $B7F3  66                         PUSH_qimm   ; inline operand = 6
  $B7F4  8D 20                      BYTE_PUSH_imm1         +32
  $B7F6  60                         PUSH_qimm   ; inline operand = 0
  $B7F7  60                         PUSH_qimm   ; inline operand = 0
  $B7F8  68                         PUSH_qimm   ; inline operand = 8
  $B7F9  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $B7FD  AC CE B7                   CALL_abs               $B7CE {bytecode}
  $B800  CF                         RETURN

; ============================================================
; sub $B801   (frame_off=+0, body @ $B806)   [PRG $03801]
; ============================================================
  $B806  60                         PUSH_qimm   ; inline operand = 0
  $B807  61                         PUSH_qimm   ; inline operand = 1
  $B808  68                         PUSH_qimm   ; inline operand = 8
  $B809  8D 18                      BYTE_PUSH_imm1         +24
  $B80B  8D 14                      BYTE_PUSH_imm1         +20
  $B80D  67                         PUSH_qimm   ; inline operand = 7
  $B80E  E9 3C A7 0C                CALL_abs_imm1          $A73C {native}, $0C
  $B812  61                         PUSH_qimm   ; inline operand = 1
  $B813  8E 8A BE                   PUSH_imm2              $BE8A
  $B816  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $B81A  CF                         RETURN

; ============================================================
; sub $B81B   (frame_off=+0, body @ $B820)   [PRG $0381B]
; ============================================================
  $B820  60                         PUSH_qimm   ; inline operand = 0
  $B821  60                         PUSH_qimm   ; inline operand = 0
  $B822  68                         PUSH_qimm   ; inline operand = 8
  $B823  66                         PUSH_qimm   ; inline operand = 6
  $B824  8D 14                      BYTE_PUSH_imm1         +20
  $B826  61                         PUSH_qimm   ; inline operand = 1
  $B827  68                         PUSH_qimm   ; inline operand = 8
  $B828  E9 D4 EE 0E                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $0E
  $B82C  0C                         LOADL_quick   ; inline operand = 12
  $B82D  D2                         LSHIFT1
  $B82E  8F 13                      BYTE_ADD_imm1          +19
  $B830  B3                         PUSHL
  $B831  68                         PUSH_qimm   ; inline operand = 8
  $B832  E9 70 C7 04                CALL_abs_imm1          $C770 {native}, $04
  $B836  61                         PUSH_qimm   ; inline operand = 1
  $B837  8E 91 BE                   PUSH_imm2              $BE91
  $B83A  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $B83E  CF                         RETURN

; ============================================================
; sub $B83F   (frame_off=+0, body @ $B844)   [PRG $0383F]
; ============================================================
  $B844  AC 01 B8                   CALL_abs               $B801 {bytecode}
  $B847  61                         PUSH_qimm   ; inline operand = 1
  $B848  E9 1B B8 02                CALL_abs_imm1          $B81B {bytecode}, $02
  $B84C  CF                         RETURN

; ============================================================
; sub $B84D   (frame_off=+0, body @ $B852)   [PRG $0384D]
; ============================================================
  $B852  AC 01 B8                   CALL_abs               $B801 {bytecode}
  $B855  62                         PUSH_qimm   ; inline operand = 2
  $B856  E9 1B B8 02                CALL_abs_imm1          $B81B {bytecode}, $02
  $B85A  CF                         RETURN

; ============================================================
; sub $B85B   (frame_off=+0, body @ $B860)   [PRG $0385B]
; ============================================================
  $B860  AC 01 B8                   CALL_abs               $B801 {bytecode}
  $B863  63                         PUSH_qimm   ; inline operand = 3
  $B864  E9 1B B8 02                CALL_abs_imm1          $B81B {bytecode}, $02
  $B868  CF                         RETURN

; ============================================================
; sub $B869   (frame_off=+0, body @ $B86E)   [PRG $03869]
; ============================================================
  $B86E  60                         PUSH_qimm   ; inline operand = 0
  $B86F  61                         PUSH_qimm   ; inline operand = 1
  $B870  68                         PUSH_qimm   ; inline operand = 8
  $B871  8D 18                      BYTE_PUSH_imm1         +24
  $B873  8D 14                      BYTE_PUSH_imm1         +20
  $B875  67                         PUSH_qimm   ; inline operand = 7
  $B876  E9 3C A7 0C                CALL_abs_imm1          $A73C {native}, $0C
  $B87A  3D                         PUSH_quick   ; inline operand = 13
  $B87B  3C                         PUSH_quick   ; inline operand = 12
  $B87C  8D 15                      BYTE_PUSH_imm1         +21
  $B87E  62                         PUSH_qimm   ; inline operand = 2
  $B87F  E9 BB A5 08                CALL_abs_imm1          $A5BB {bytecode}, $08
  $B883  61                         PUSH_qimm   ; inline operand = 1
  $B884  E9 1B B8 02                CALL_abs_imm1          $B81B {bytecode}, $02
  $B888  CF                         RETURN

; ============================================================
; sub $B889   (frame_off=+0, body @ $B88E)   [PRG $03889]
; ============================================================
  $B88E  60                         PUSH_qimm   ; inline operand = 0
  $B88F  AC 91 D7                   CALL_abs               $D791 {native}
  $B892  B3                         PUSHL
  $B893  E9 69 B8 04                CALL_abs_imm1          $B869 {bytecode}, $04
  $B897  CF                         RETURN

; ============================================================
; sub $B898   (frame_off=-9, body @ $B89D)   [PRG $03898]
; ============================================================
  $B89D  40                         LOADL_qimm   ; inline operand = 0
  $B89E  85 F7                      STORE_near             $F7
  $B8A0  85 F9                      STORE_near             $F9
  $B8A2  81 F7                      LOADL_near             $F7
  $B8A4  7C                         ADD_qimm   ; inline operand = 12
  $B8A5  53                         LOADR_qimm   ; inline operand = 3
  $B8A6  BD                         LSHIFT
  $B8A7  D1                         DEC
  $B8A8  A2 FB FF                   BYTE_STORE_far         $FFFB
  $B8AB  8A E1 00                   LOADL_imm2             $00E1
  $B8AE  A2 FC FF                   BYTE_STORE_far         $FFFC
  $B8B1  40                         LOADL_qimm   ; inline operand = 0
  $B8B2  A2 FD FF                   BYTE_STORE_far         $FFFD
  $B8B5  81 F9                      LOADL_near             $F9
  $B8B7  72                         ADD_qimm   ; inline operand = 2
  $B8B8  53                         LOADR_qimm   ; inline operand = 3
  $B8B9  BD                         LSHIFT
  $B8BA  A2 FE FF                   BYTE_STORE_far         $FFFE
  $B8BD  61                         PUSH_qimm   ; inline operand = 1
  $B8BE  60                         PUSH_qimm   ; inline operand = 0
  $B8BF  DE FB FF                   LEAL_far               $FFFB
  $B8C2  B3                         PUSHL
  $B8C3  6D                         PUSH_qimm   ; inline operand = 13
  $B8C4  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
 >$B8C8  60                         PUSH_qimm   ; inline operand = 0
  $B8C9  E9 A9 C4 02                CALL_abs_imm1          $C4A9 {native}, $02
  $B8CD  A2 FF FF                   BYTE_STORE_far         $FFFF
  $B8D0  6C                         PUSH_qimm   ; inline operand = 12
  $B8D1  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $B8D4  B3                         PUSHL
  $B8D5  E9 4D CE 04                CALL_abs_imm1          $CE4D {native}, $04
  $B8D9  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $B8DC  D9 04 00 10 00 F1 B8 20 00 F1 B8 40 ... SWITCH_noncontig       count=4   ; .table 4 (key,target) + default (noncontiguous); SWITCH 16=>$B8F1 32=>$B8F1 64=>$B984 128=>$B955 default=>$B8F9
 >$B8F1  81 F7                      LOADL_near             $F7
  $B8F3  D8 46 B9                   JUMPF_abs              $B946
  $B8F6  40                         LOADL_qimm   ; inline operand = 0
 >$B8F7  85 F7                      STORE_near             $F7
 >$B8F9  81 F7                      LOADL_near             $F7
  $B8FB  57                         LOADR_qimm   ; inline operand = 7
  $B8FC  B5                         MULT
  $B8FD  7C                         ADD_qimm   ; inline operand = 12
  $B8FE  53                         LOADR_qimm   ; inline operand = 3
  $B8FF  BD                         LSHIFT
  $B900  D1                         DEC
  $B901  A2 FB FF                   BYTE_STORE_far         $FFFB
  $B904  8A E1 00                   LOADL_imm2             $00E1
  $B907  A2 FC FF                   BYTE_STORE_far         $FFFC
  $B90A  40                         LOADL_qimm   ; inline operand = 0
  $B90B  A2 FD FF                   BYTE_STORE_far         $FFFD
  $B90E  81 F9                      LOADL_near             $F9
  $B910  59                         LOADR_qimm   ; inline operand = 9
  $B911  B5                         MULT
  $B912  72                         ADD_qimm   ; inline operand = 2
  $B913  53                         LOADR_qimm   ; inline operand = 3
  $B914  BD                         LSHIFT
  $B915  A2 FE FF                   BYTE_STORE_far         $FFFE
  $B918  61                         PUSH_qimm   ; inline operand = 1
  $B919  60                         PUSH_qimm   ; inline operand = 0
  $B91A  DE FB FF                   LEAL_far               $FFFB
  $B91D  B3                         PUSHL
  $B91E  6D                         PUSH_qimm   ; inline operand = 13
  $B91F  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $B923  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $B926  51                         LOADR_qimm   ; inline operand = 1
  $B927  C0                         CMPEQ
  $B928  D7 33 B9                   JUMPT_abs              $B933
  $B92B  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $B92E  52                         LOADR_qimm   ; inline operand = 2
  $B92F  C0                         CMPEQ
  $B930  D8 C8 B8                   JUMPF_abs              $B8C8
 >$B933  61                         PUSH_qimm   ; inline operand = 1
  $B934  60                         PUSH_qimm   ; inline operand = 0
  $B935  6C                         PUSH_qimm   ; inline operand = 12
  $B936  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $B93A  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $B93D  52                         LOADR_qimm   ; inline operand = 2
  $B93E  C0                         CMPEQ
  $B93F  D8 98 B9                   JUMPF_abs              $B998
  $B942  8A FF 00                   LOADL_imm2             $00FF
  $B945  CF                         RETURN
 >$B946  81 F9                      LOADL_near             $F9
  $B948  73                         ADD_qimm   ; inline operand = 3
  $B949  1C                         LOADR_quick   ; inline operand = 12
  $B94A  C6                         UCMPLT
  $B94B  D8 F9 B8                   JUMPF_abs              $B8F9
  $B94E  41                         LOADL_qimm   ; inline operand = 1
  $B94F  D6 F7 B8                   JUMP_abs               $B8F7
  $B952  D6 F9 B8                   JUMP_abs               $B8F9
 >$B955  81 F9                      LOADL_near             $F9
  $B957  52                         LOADR_qimm   ; inline operand = 2
  $B958  C1                         CMPNE
  $B959  D8 6F B9                   JUMPF_abs              $B96F
  $B95C  81 F7                      LOADL_near             $F7
  $B95E  53                         LOADR_qimm   ; inline operand = 3
  $B95F  B5                         MULT
  $B960  83 F9                      LOADR_near             $F9
  $B962  BB                         ADD
  $B963  D0                         INC
  $B964  1C                         LOADR_quick   ; inline operand = 12
  $B965  C6                         UCMPLT
  $B966  D8 6F B9                   JUMPF_abs              $B96F
  $B969  81 F9                      LOADL_near             $F9
  $B96B  D0                         INC
  $B96C  D6 7F B9                   JUMP_abs               $B97F
 >$B96F  40                         LOADL_qimm   ; inline operand = 0
  $B970  D6 7F B9                   JUMP_abs               $B97F
 >$B973  81 F9                      LOADL_near             $F9
  $B975  D1                         DEC
  $B976  D6 7F B9                   JUMP_abs               $B97F
 >$B979  81 F7                      LOADL_near             $F7
  $B97B  D7 8F B9                   JUMPT_abs              $B98F
  $B97E  42                         LOADL_qimm   ; inline operand = 2
 >$B97F  85 F9                      STORE_near             $F9
  $B981  D6 F9 B8                   JUMP_abs               $B8F9
 >$B984  81 F9                      LOADL_near             $F9
  $B986  D7 73 B9                   JUMPT_abs              $B973
  $B989  0C                         LOADL_quick   ; inline operand = 12
  $B98A  53                         LOADR_qimm   ; inline operand = 3
  $B98B  C8                         UCMPGT
  $B98C  D7 79 B9                   JUMPT_abs              $B979
 >$B98F  0C                         LOADL_quick   ; inline operand = 12
  $B990  D1                         DEC
  $B991  53                         LOADR_qimm   ; inline operand = 3
  $B992  BA                         UMOD
  $B993  85 F9                      STORE_near             $F9
  $B995  D6 F9 B8                   JUMP_abs               $B8F9
 >$B998  81 F7                      LOADL_near             $F7
  $B99A  53                         LOADR_qimm   ; inline operand = 3
  $B99B  B5                         MULT
  $B99C  83 F9                      LOADR_near             $F9
  $B99E  BB                         ADD
  $B99F  CF                         RETURN

; ============================================================
; sub $B9A0   (frame_off=-21, body @ $B9A5)   [PRG $039A0]
; ============================================================
  $B9A5  DE FB FF                   LEAL_far               $FFFB
  $B9A8  B3                         PUSHL
  $B9A9  60                         PUSH_qimm   ; inline operand = 0
  $B9AA  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $B9AE  85 F1                      STORE_near             $F1
  $B9B0  40                         LOADL_qimm   ; inline operand = 0
  $B9B1  85 ED                      STORE_near             $ED
  $B9B3  DE FB FF                   LEAL_far               $FFFB
  $B9B6  85 F9                      STORE_near             $F9
  $B9B8  83 F1                      LOADR_near             $F1
  $B9BA  BB                         ADD
  $B9BB  85 F7                      STORE_near             $F7
  $B9BD  D6 06 BA                   JUMP_abs               $BA06
 >$B9C0  81 F9                      LOADL_near             $F9
  $B9C2  D3                         BYTE_DEREF
  $B9C3  8B 18                      BYTE_LOADR_imm1        +24
  $B9C5  B5                         MULT
  $B9C6  8C A4 6A                   LOADR_imm2             $6AA4
  $B9C9  BB                         ADD
  $B9CA  85 EB                      STORE_near             $EB
  $B9CC  81 EB                      LOADL_near             $EB
  $B9CE  D0                         INC
  $B9CF  85 F5                      STORE_near             $F5
  $B9D1  81 EB                      LOADL_near             $EB
  $B9D3  76                         ADD_qimm   ; inline operand = 6
  $B9D4  85 EF                      STORE_near             $EF
  $B9D6  81 F5                      LOADL_near             $F5
  $B9D8  75                         ADD_qimm   ; inline operand = 5
  $B9D9  85 F3                      STORE_near             $F3
  $B9DB  D6 F9 B9                   JUMP_abs               $B9F9
 >$B9DE  81 F5                      LOADL_near             $F5
  $B9E0  D3                         BYTE_DEREF
  $B9E1  1C                         LOADR_quick   ; inline operand = 12
  $B9E2  C0                         CMPEQ
  $B9E3  D8 EF B9                   JUMPF_abs              $B9EF
  $B9E6  81 EF                      LOADL_near             $EF
  $B9E8  B0                         DEREF
  $B9E9  CD                         SWAP
  $B9EA  81 ED                      LOADL_near             $ED
  $B9EC  BB                         ADD
  $B9ED  85 ED                      STORE_near             $ED
 >$B9EF  81 EF                      LOADL_near             $EF
  $B9F1  72                         ADD_qimm   ; inline operand = 2
  $B9F2  85 EF                      STORE_near             $EF
  $B9F4  81 F5                      LOADL_near             $F5
  $B9F6  D0                         INC
  $B9F7  85 F5                      STORE_near             $F5
 >$B9F9  81 F5                      LOADL_near             $F5
  $B9FB  83 F3                      LOADR_near             $F3
  $B9FD  C6                         UCMPLT
  $B9FE  D7 DE B9                   JUMPT_abs              $B9DE
  $BA01  81 F9                      LOADL_near             $F9
  $BA03  D0                         INC
  $BA04  85 F9                      STORE_near             $F9
 >$BA06  81 F9                      LOADL_near             $F9
  $BA08  83 F7                      LOADR_near             $F7
  $BA0A  C6                         UCMPLT
  $BA0B  D7 C0 B9                   JUMPT_abs              $B9C0
  $BA0E  81 ED                      LOADL_near             $ED
  $BA10  CF                         RETURN

; ============================================================
; sub $BA11   (frame_off=-10, body @ $BA16)   [PRG $03A11]
; ============================================================
  $BA16  A5 55 70                   BYTE_LOADL_abs         $7055
  $BA19  29                         STORE_quick   ; inline operand = 9
  $BA1A  A5 67 70                   BYTE_LOADL_abs         $7067
  $BA1D  55                         LOADR_qimm   ; inline operand = 5
  $BA1E  B5                         MULT
  $BA1F  8C 0A B5                   LOADR_imm2             $B50A
  $BA22  BB                         ADD
  $BA23  28                         STORE_quick   ; inline operand = 8
  $BA24  A5 67 70                   BYTE_LOADL_abs         $7067
  $BA27  5E                         LOADR_qimm   ; inline operand = 14
  $BA28  B5                         MULT
  $BA29  8C B2 67                   LOADR_imm2             $67B2
  $BA2C  BB                         ADD
  $BA2D  27                         STORE_quick   ; inline operand = 7
  $BA2E  07                         LOADL_quick   ; inline operand = 7
  $BA2F  7B                         ADD_qimm   ; inline operand = 11
  $BA30  D3                         BYTE_DEREF
  $BA31  8F 32                      BYTE_ADD_imm1          +50
  $BA33  2B                         STORE_quick   ; inline operand = 11
  $BA34  09                         LOADL_quick   ; inline operand = 9
  $BA35  D2                         LSHIFT1
  $BA36  B3                         PUSHL
  $BA37  38                         PUSH_quick   ; inline operand = 8
  $BA38  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $BA3C  8B 58                      BYTE_LOADR_imm1        +88
  $BA3E  B5                         MULT
  $BA3F  B4                         POPR
  $BA40  BB                         ADD
  $BA41  8C 88 B8                   LOADR_imm2             $B888
  $BA44  BB                         ADD
  $BA45  B3                         PUSHL
  $BA46  E9 26 D3 02                CALL_abs_imm1          $D326 (record_field_word) {native}, $02
  $BA4A  2A                         STORE_quick   ; inline operand = 10
  $BA4B  0B                         LOADL_quick   ; inline operand = 11
  $BA4C  B7 25                      LONG                   $25
  $BA4E  B7 14                      LONG                   $14
  $BA50  0A                         LOADL_quick   ; inline operand = 10
  $BA51  B7 25                      LONG                   $25
  $BA53  B7 15                      LONG                   $15
  $BA55  B7 01                      LONG                   $01
  $BA57  B7 19 64 00 00 00          LONG                   $19 $64 $00 $00 $00
  $BA5D  B7 02                      LONG                   $02
  $BA5F  B7 27                      LONG                   $27
  $BA61  2A                         STORE_quick   ; inline operand = 10
  $BA62  08                         LOADL_quick   ; inline operand = 8
  $BA63  D0                         INC
  $BA64  B3                         PUSHL
  $BA65  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $BA69  19                         LOADR_quick   ; inline operand = 9
  $BA6A  C0                         CMPEQ
  $BA6B  D8 8A BA                   JUMPF_abs              $BA8A
  $BA6E  0B                         LOADL_quick   ; inline operand = 11
  $BA6F  B7 25                      LONG                   $25
  $BA71  B7 14                      LONG                   $14
  $BA73  07                         LOADL_quick   ; inline operand = 7
  $BA74  7C                         ADD_qimm   ; inline operand = 12
  $BA75  B0                         DEREF
  $BA76  B7 25                      LONG                   $25
  $BA78  B7 15                      LONG                   $15
  $BA7A  B7 01                      LONG                   $01
  $BA7C  B7 19 64 00 00 00          LONG                   $19 $64 $00 $00 $00
  $BA82  B7 02                      LONG                   $02
  $BA84  B7 27                      LONG                   $27
  $BA86  52                         LOADR_qimm   ; inline operand = 2
  $BA87  B6                         SDIV
  $BA88  D0                         INC
  $BA89  2A                         STORE_quick   ; inline operand = 10
 >$BA8A  0A                         LOADL_quick   ; inline operand = 10
  $BA8B  CF                         RETURN

