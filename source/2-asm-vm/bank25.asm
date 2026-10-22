VM bytecode disassembly
  ROM:          Uncharted Waters (USA).nes
  mode:         bulk dump of bank 25
  opcode spec:  vm-opcodes-v2.toml via nobunaga_vm.OPCODE_INFO (execution-validated lengths)
  labels:       0 CPU addresses named

  bank 25: found 24 bytecode-subroutine stubs

; ============================================================
; sub $A003   (frame_off=+0, body @ $A008)   [PRG $32003]
; ============================================================
  $A008  8E D0 80                   PUSH_imm2              $80D0
  $A00B  8E DA 00                   PUSH_imm2              $00DA
  $A00E  61                         PUSH_qimm   ; inline operand = 1
  $A00F  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $A013  CF                         RETURN

; ============================================================
; sub $A014   (frame_off=+0, body @ $A019)   [PRG $32014]
; ============================================================
  $A019  8E 03 80                   PUSH_imm2              $8003
  $A01C  8E DA 00                   PUSH_imm2              $00DA
  $A01F  61                         PUSH_qimm   ; inline operand = 1
  $A020  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $A024  CF                         RETURN

; ============================================================
; sub $A025   (frame_off=+0, body @ $A02A)   [PRG $32025]
; ============================================================
  $A02A  8E 7A 81                   PUSH_imm2              $817A
  $A02D  8E DA 00                   PUSH_imm2              $00DA
  $A030  61                         PUSH_qimm   ; inline operand = 1
  $A031  E9 3A DE 06                CALL_abs_imm1          $DE3A (call_in_bank_dcd1) {native}, $06
  $A035  CF                         RETURN

; ============================================================
; sub $A036   (frame_off=-1, body @ $A03B)   [PRG $32036]
; ============================================================
  $A03B  AC 3F B8                   CALL_abs               $B83F {native}
  $A03E  61                         PUSH_qimm   ; inline operand = 1
  $A03F  8E 7B 90                   PUSH_imm2              $907B
  $A042  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $A046  61                         PUSH_qimm   ; inline operand = 1
  $A047  62                         PUSH_qimm   ; inline operand = 2
  $A048  8E 68 90                   PUSH_imm2              $9068
  $A04B  61                         PUSH_qimm   ; inline operand = 1
  $A04C  67                         PUSH_qimm   ; inline operand = 7
  $A04D  8D 17                      BYTE_PUSH_imm1         +23
  $A04F  68                         PUSH_qimm   ; inline operand = 8
  $A050  E9 56 A1 0E                CALL_abs_imm1          $A156 {native}, $0E
  $A054  A2 FF FF                   BYTE_STORE_far         $FFFF
  $A057  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $A05A  8C FF 00                   LOADR_imm2             $00FF
  $A05D  C1                         CMPNE
  $A05E  D8 6C 80                   JUMPF_abs              $806C
  $A061  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $A064  D2                         LSHIFT1
  $A065  8C 6C 90                   LOADR_imm2             $906C
  $A068  BB                         ADD
  $A069  B0                         DEREF
  $A06A  DD                         CALLPTR
  $A06B  CF                         RETURN

; ============================================================
; sub $A06E   (frame_off=-4, body @ $A073)   [PRG $3206E]
; ============================================================
  $A073  40                         LOADL_qimm   ; inline operand = 0
  $A074  2A                         STORE_quick   ; inline operand = 10
  $A075  61                         PUSH_qimm   ; inline operand = 1
  $A076  6A                         PUSH_qimm   ; inline operand = 10
  $A077  E9 69 B8 04                CALL_abs_imm1          $B869 {native}, $04
  $A07B  A5 67 70                   BYTE_LOADL_abs         $7067
  $A07E  D7 D2 80                   JUMPT_abs              $80D2
  $A081  A5 5F 70                   BYTE_LOADL_abs         $705F
  $A084  51                         LOADR_qimm   ; inline operand = 1
  $A085  DA                         AND
  $A086  D8 BE 80                   JUMPF_abs              $80BE
  $A089  A5 67 70                   BYTE_LOADL_abs         $7067
  $A08C  B3                         PUSHL
  $A08D  A5 52 70                   BYTE_LOADL_abs         $7052
  $A090  B4                         POPR
  $A091  C0                         CMPEQ
  $A092  D8 BE 80                   JUMPF_abs              $80BE
  $A095  A5 53 70                   BYTE_LOADL_abs         $7053
  $A098  D7 BE 80                   JUMPT_abs              $80BE
  $A09B  61                         PUSH_qimm   ; inline operand = 1
  $A09C  E9 1B B8 02                CALL_abs_imm1          $B81B {native}, $02
  $A0A0  60                         PUSH_qimm   ; inline operand = 0
  $A0A1  8E D1 90                   PUSH_imm2              $90D1
  $A0A4  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $A0A8  AA 42 65                   PUSH_abs               $6542
  $A0AB  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $A0AF  60                         PUSH_qimm   ; inline operand = 0
  $A0B0  8E E3 90                   PUSH_imm2              $90E3
  $A0B3  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $A0B7  AC 7D A0                   CALL_abs               $A07D {native}
  $A0BA  44                         LOADL_qimm   ; inline operand = 4
  $A0BB  D6 03 81                   JUMP_abs               $8103

; ============================================================
; sub $A176   (frame_off=+0, body @ $A17B)   [PRG $32176]
; ============================================================
  $A17B  A5 5F 70                   BYTE_LOADL_abs         $705F
  $A17E  51                         LOADR_qimm   ; inline operand = 1
  $A17F  DA                         AND
  $A180  D8 95 81                   JUMPF_abs              $8195
  $A183  A5 67 70                   BYTE_LOADL_abs         $7067
  $A186  B3                         PUSHL
  $A187  A5 52 70                   BYTE_LOADL_abs         $7052
  $A18A  B4                         POPR
  $A18B  C0                         CMPEQ
  $A18C  D8 95 81                   JUMPF_abs              $8195
  $A18F  A5 53 70                   BYTE_LOADL_abs         $7053
  $A192  D8 99 81                   JUMPF_abs              $8199
  $A195  40                         LOADL_qimm   ; inline operand = 0
  $A196  D6 9A 81                   JUMP_abs               $819A

; ============================================================
; sub $A19B   (frame_off=+0, body @ $A1A0)   [PRG $3219B]
; ============================================================
  $A1A0  A5 5F 70                   BYTE_LOADL_abs         $705F
  $A1A3  58                         LOADR_qimm   ; inline operand = 8
  $A1A4  DA                         AND
  $A1A5  D7 B6 81                   JUMPT_abs              $81B6
  $A1A8  A5 5F 70                   BYTE_LOADL_abs         $705F
  $A1AB  52                         LOADR_qimm   ; inline operand = 2
  $A1AC  DA                         AND
  $A1AD  D7 B6 81                   JUMPT_abs              $81B6
  $A1B0  AC 76 81                   CALL_abs               $8176 {bytecode}
  $A1B3  D7 BA 81                   JUMPT_abs              $81BA
  $A1B6  40                         LOADL_qimm   ; inline operand = 0
  $A1B7  D6 BB 81                   JUMP_abs               $81BB

; ============================================================
; sub $A1BC   (frame_off=+0, body @ $A1C1)   [PRG $321BC]
; ============================================================
  $A1C1  A5 5F 70                   BYTE_LOADL_abs         $705F
  $A1C4  58                         LOADR_qimm   ; inline operand = 8
  $A1C5  DA                         AND
  $A1C6  D8 D7 81                   JUMPF_abs              $81D7
  $A1C9  A5 5F 70                   BYTE_LOADL_abs         $705F
  $A1CC  52                         LOADR_qimm   ; inline operand = 2
  $A1CD  DA                         AND
  $A1CE  D7 D7 81                   JUMPT_abs              $81D7
  $A1D1  AC 76 81                   CALL_abs               $8176 {bytecode}
  $A1D4  D7 DB 81                   JUMPT_abs              $81DB
  $A1D7  40                         LOADL_qimm   ; inline operand = 0
  $A1D8  D6 DC 81                   JUMP_abs               $81DC

; ============================================================
; sub $A1DD   (frame_off=+0, body @ $A1E2)   [PRG $321DD]
; ============================================================
  $A1E2  A5 5F 70                   BYTE_LOADL_abs         $705F
  $A1E5  58                         LOADR_qimm   ; inline operand = 8
  $A1E6  DA                         AND
  $A1E7  D8 F8 81                   JUMPF_abs              $81F8
  $A1EA  A5 5F 70                   BYTE_LOADL_abs         $705F
  $A1ED  52                         LOADR_qimm   ; inline operand = 2
  $A1EE  DA                         AND
  $A1EF  D8 F8 81                   JUMPF_abs              $81F8
  $A1F2  AC 76 81                   CALL_abs               $8176 {bytecode}
  $A1F5  D7 FC 81                   JUMPT_abs              $81FC
  $A1F8  40                         LOADL_qimm   ; inline operand = 0
  $A1F9  D6 FD 81                   JUMP_abs               $81FD

; ============================================================
; sub $A1FE   (frame_off=+0, body @ $A203)   [PRG $321FE]
; ============================================================
  $A203  61                         PUSH_qimm   ; inline operand = 1
  $A204  61                         PUSH_qimm   ; inline operand = 1
  $A205  E9 69 B8 04                CALL_abs_imm1          $B869 {native}, $04
  $A209  CF                         RETURN

; ============================================================
; sub $A20A   (frame_off=-2, body @ $A20F)   [PRG $3220A]
; ============================================================
  $A20F  A4 72 6F                   LOADL_abs              $6F72
  $A212  2B                         STORE_quick   ; inline operand = 11
  $A213  AC DD 81                   CALL_abs               $81DD {bytecode}
  $A216  D8 21 82                   JUMPF_abs              $8221
  $A219  8A FF 00                   LOADL_imm2             $00FF
  $A21C  A9 67 72                   BYTE_STORE_abs         $7267
  $A21F  41                         LOADL_qimm   ; inline operand = 1
  $A220  CF                         RETURN

; ============================================================
; sub $A278   (frame_off=-4, body @ $A27D)   [PRG $32278]
; ============================================================
  $A27D  A4 72 6F                   LOADL_abs              $6F72
  $A280  2A                         STORE_quick   ; inline operand = 10
  $A281  8A 6D 66                   LOADL_imm2             $666D
  $A284  2B                         STORE_quick   ; inline operand = 11
  $A285  A5 5F 70                   BYTE_LOADL_abs         $705F
  $A288  58                         LOADR_qimm   ; inline operand = 8
  $A289  DA                         AND
  $A28A  D8 4F 83                   JUMPF_abs              $834F
  $A28D  A5 5F 70                   BYTE_LOADL_abs         $705F
  $A290  51                         LOADR_qimm   ; inline operand = 1
  $A291  DA                         AND
  $A292  D8 4F 83                   JUMPF_abs              $834F
  $A295  A5 67 70                   BYTE_LOADL_abs         $7067
  $A298  B3                         PUSHL
  $A299  A5 52 70                   BYTE_LOADL_abs         $7052
  $A29C  B4                         POPR
  $A29D  C0                         CMPEQ
  $A29E  D8 4F 83                   JUMPF_abs              $834F
  $A2A1  A5 53 70                   BYTE_LOADL_abs         $7053
  $A2A4  D7 4F 83                   JUMPT_abs              $834F
  $A2A7  0B                         LOADL_quick   ; inline operand = 11
  $A2A8  72                         ADD_qimm   ; inline operand = 2
  $A2A9  B0                         DEREF
  $A2AA  8C 00 80                   LOADR_imm2             $8000
  $A2AD  DA                         AND
  $A2AE  D8 4F 83                   JUMPF_abs              $834F
  $A2B1  AC FE 81                   CALL_abs               $81FE {bytecode}
  $A2B4  61                         PUSH_qimm   ; inline operand = 1
  $A2B5  E9 1B B8 02                CALL_abs_imm1          $B81B {native}, $02
  $A2B9  60                         PUSH_qimm   ; inline operand = 0
  $A2BA  8E 63 92                   PUSH_imm2              $9263
  $A2BD  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $A2C1  A5 55 70                   BYTE_LOADL_abs         $7055
  $A2C4  B3                         PUSHL
  $A2C5  E9 50 D5 02                CALL_abs_imm1          $D550 {native}, $02
  $A2C9  B3                         PUSHL
  $A2CA  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $A2CE  60                         PUSH_qimm   ; inline operand = 0
  $A2CF  8E 78 92                   PUSH_imm2              $9278
  $A2D2  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $A2D6  AC 7D A0                   CALL_abs               $A07D {native}
  $A2D9  A5 74 6F                   BYTE_LOADL_abs         $6F74
  $A2DC  59                         LOADR_qimm   ; inline operand = 9
  $A2DD  C6                         UCMPLT
  $A2DE  D8 F8 82                   JUMPF_abs              $82F8
  $A2E1  AC 3F B8                   CALL_abs               $B83F {native}
  $A2E4  61                         PUSH_qimm   ; inline operand = 1
  $A2E5  8E 90 92                   PUSH_imm2              $9290
  $A2E8  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $A2EC  41                         LOADL_qimm   ; inline operand = 1
  $A2ED  CD                         SWAP
  $A2EE  A5 74 6F                   BYTE_LOADL_abs         $6F74
  $A2F1  BB                         ADD
  $A2F2  A9 74 6F                   BYTE_STORE_abs         $6F74
  $A2F5  AC 03 A0                   CALL_abs               $A003 {bytecode}
  $A2F8  A5 74 6F                   BYTE_LOADL_abs         $6F74
  $A2FB  B3                         PUSHL
  $A2FC  63                         PUSH_qimm   ; inline operand = 3
  $A2FD  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $A301  73                         ADD_qimm   ; inline operand = 3
  $A302  B4                         POPR
  $A303  B5                         MULT
  $A304  8C E8 03                   LOADR_imm2             $03E8
  $A307  B5                         MULT
  $A308  A8 58 70                   STORE_abs              $7058
  $A30B  AC 3F B8                   CALL_abs               $B83F {native}
  $A30E  61                         PUSH_qimm   ; inline operand = 1
  $A30F  8E B1 92                   PUSH_imm2              $92B1
  $A312  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $A316  AC 03 A0                   CALL_abs               $A003 {bytecode}
  $A319  8E 10 27                   PUSH_imm2              $2710
  $A31C  A4 58 70                   LOADL_abs              $7058
  $A31F  8C E8 03                   LOADR_imm2             $03E8
  $A322  B8                         UDIV
  $A323  A6 70 6F                   LOADR_abs              $6F70
  $A326  BB                         ADD
  $A327  B3                         PUSHL
  $A328  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $A32C  A8 70 6F                   STORE_abs              $6F70
  $A32F  A5 55 70                   BYTE_LOADL_abs         $7055
  $A332  5F                         LOADR_qimm   ; inline operand = 15
  $A333  DA                         AND
  $A334  B3                         PUSHL
  $A335  41                         LOADL_qimm   ; inline operand = 1
  $A336  B4                         POPR
  $A337  BD                         LSHIFT
  $A338  8B FF                      BYTE_LOADR_imm1        -1
  $A33A  DC                         XOR
  $A33B  B3                         PUSHL
  $A33C  A5 55 70                   BYTE_LOADL_abs         $7055
  $A33F  54                         LOADR_qimm   ; inline operand = 4
  $A340  BE                         URSHIFT
  $A341  D2                         LSHIFT1
  $A342  1B                         LOADR_quick   ; inline operand = 11
  $A343  BB                         ADD
  $A344  B4                         POPR
  $A345  B3                         PUSHL
  $A346  B0                         DEREF
  $A347  DA                         AND
  $A348  B1                         POPSTORE
  $A349  40                         LOADL_qimm   ; inline operand = 0
  $A34A  A9 5F 70                   BYTE_STORE_abs         $705F
  $A34D  41                         LOADL_qimm   ; inline operand = 1
  $A34E  CF                         RETURN

; ============================================================
; sub $A484   (frame_off=-1, body @ $A489)   [PRG $32484]
; ============================================================
  $A489  A0 0B 00                   BYTE_LOADL_far         $000B
  $A48C  8F 14                      BYTE_ADD_imm1          +20
  $A48E  57                         LOADR_qimm   ; inline operand = 7
  $A48F  B5                         MULT
  $A490  8C 42 65                   LOADR_imm2             $6542
  $A493  BB                         ADD
  $A494  B0                         DEREF
  $A495  B3                         PUSHL
  $A496  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $A49A  A0 0B 00                   BYTE_LOADL_far         $000B
  $A49D  D1                         DEC
  $A49E  55                         LOADR_qimm   ; inline operand = 5
  $A49F  B8                         UDIV
  $A4A0  A2 FF FF                   BYTE_STORE_far         $FFFF
  $A4A3  A0 FF FF                   BYTE_LOADL_far         $FFFF
  $A4A6  53                         LOADR_qimm   ; inline operand = 3
  $A4A7  C0                         CMPEQ
  $A4A8  D8 B2 84                   JUMPF_abs              $84B2
  $A4AB  60                         PUSH_qimm   ; inline operand = 0
  $A4AC  8E 32 94                   PUSH_imm2              $9432
  $A4AF  D6 B6 84                   JUMP_abs               $84B6

; ============================================================
; sub $A4CD   (frame_off=-2, body @ $A4D2)   [PRG $324CD]
; ============================================================
  $A4D2  A4 72 6F                   LOADL_abs              $6F72
  $A4D5  2B                         STORE_quick   ; inline operand = 11
  $A4D6  AC DD 81                   CALL_abs               $81DD {bytecode}
  $A4D9  D8 49 85                   JUMPF_abs              $8549
  $A4DC  AC FE 81                   CALL_abs               $81FE {bytecode}
  $A4DF  AC 3F B8                   CALL_abs               $B83F {native}
  $A4E2  61                         PUSH_qimm   ; inline operand = 1
  $A4E3  8E 3F 94                   PUSH_imm2              $943F
  $A4E6  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $A4EA  A5 74 6F                   BYTE_LOADL_abs         $6F74
  $A4ED  59                         LOADR_qimm   ; inline operand = 9
  $A4EE  C6                         UCMPLT
  $A4EF  D8 09 85                   JUMPF_abs              $8509
  $A4F2  AC 03 A0                   CALL_abs               $A003 {bytecode}
  $A4F5  AC 3F B8                   CALL_abs               $B83F {native}
  $A4F8  61                         PUSH_qimm   ; inline operand = 1
  $A4F9  8E 67 94                   PUSH_imm2              $9467
  $A4FC  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $A500  41                         LOADL_qimm   ; inline operand = 1
  $A501  CD                         SWAP
  $A502  A5 74 6F                   BYTE_LOADL_abs         $6F74
  $A505  BB                         ADD
  $A506  A9 74 6F                   BYTE_STORE_abs         $6F74
  $A509  A5 74 6F                   BYTE_LOADL_abs         $6F74
  $A50C  B3                         PUSHL
  $A50D  63                         PUSH_qimm   ; inline operand = 3
  $A50E  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $A512  73                         ADD_qimm   ; inline operand = 3
  $A513  B4                         POPR
  $A514  B5                         MULT
  $A515  8C E8 03                   LOADR_imm2             $03E8
  $A518  B5                         MULT
  $A519  A8 58 70                   STORE_abs              $7058
  $A51C  AC 03 A0                   CALL_abs               $A003 {bytecode}
  $A51F  AC 3F B8                   CALL_abs               $B83F {native}
  $A522  61                         PUSH_qimm   ; inline operand = 1
  $A523  8E 87 94                   PUSH_imm2              $9487
  $A526  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $A52A  8E 10 27                   PUSH_imm2              $2710
  $A52D  A4 58 70                   LOADL_abs              $7058
  $A530  8C E8 03                   LOADR_imm2             $03E8
  $A533  B8                         UDIV
  $A534  A6 70 6F                   LOADR_abs              $6F70
  $A537  BB                         ADD
  $A538  B3                         PUSHL
  $A539  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $A53D  A8 70 6F                   STORE_abs              $6F70
  $A540  40                         LOADL_qimm   ; inline operand = 0
  $A541  A9 5F 70                   BYTE_STORE_abs         $705F
  $A544  AC 03 A0                   CALL_abs               $A003 {bytecode}
  $A547  41                         LOADL_qimm   ; inline operand = 1
  $A548  CF                         RETURN

; ============================================================
; sub $A626   (frame_off=+0, body @ $A62B)   [PRG $32626]
; ============================================================
  $A62B  61                         PUSH_qimm   ; inline operand = 1
  $A62C  A5 67 70                   BYTE_LOADL_abs         $7067
  $A62F  D0                         INC
  $A630  B3                         PUSHL
  $A631  E9 69 B8 04                CALL_abs_imm1          $B869 {native}, $04
  $A635  61                         PUSH_qimm   ; inline operand = 1
  $A636  E9 1B B8 02                CALL_abs_imm1          $B81B {native}, $02
  $A63A  60                         PUSH_qimm   ; inline operand = 0
  $A63B  8E F1 95                   PUSH_imm2              $95F1
  $A63E  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $A642  AA 42 65                   PUSH_abs               $6542
  $A645  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $A649  60                         PUSH_qimm   ; inline operand = 0
  $A64A  8E 08 96                   PUSH_imm2              $9608
  $A64D  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $A651  AC 7D A0                   CALL_abs               $A07D {native}
  $A654  60                         PUSH_qimm   ; inline operand = 0
  $A655  60                         PUSH_qimm   ; inline operand = 0
  $A656  E9 69 B8 04                CALL_abs_imm1          $B869 {native}, $04
  $A65A  61                         PUSH_qimm   ; inline operand = 1
  $A65B  E9 1B B8 02                CALL_abs_imm1          $B81B {native}, $02
  $A65F  61                         PUSH_qimm   ; inline operand = 1
  $A660  8E 21 96                   PUSH_imm2              $9621
  $A663  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $A667  AC 03 A0                   CALL_abs               $A003 {bytecode}
  $A66A  AC 3F B8                   CALL_abs               $B83F {native}
  $A66D  61                         PUSH_qimm   ; inline operand = 1
  $A66E  8E 5A 96                   PUSH_imm2              $965A
  $A671  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $A675  AC 03 A0                   CALL_abs               $A003 {bytecode}
  $A678  61                         PUSH_qimm   ; inline operand = 1
  $A679  A5 67 70                   BYTE_LOADL_abs         $7067
  $A67C  D0                         INC
  $A67D  B3                         PUSHL
  $A67E  E9 69 B8 04                CALL_abs_imm1          $B869 {native}, $04
  $A682  AC 3F B8                   CALL_abs               $B83F {native}
  $A685  60                         PUSH_qimm   ; inline operand = 0
  $A686  8E 89 96                   PUSH_imm2              $9689
  $A689  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $A68D  AC 7D A0                   CALL_abs               $A07D {native}
  $A690  42                         LOADL_qimm   ; inline operand = 2
  $A691  CD                         SWAP
  $A692  A5 5F 70                   BYTE_LOADL_abs         $705F
  $A695  DB                         OR
  $A696  A9 5F 70                   BYTE_STORE_abs         $705F
  $A699  CF                         RETURN

; ============================================================
; sub $A69A   (frame_off=-2, body @ $A69F)   [PRG $3269A]
; ============================================================
  $A69F  A4 72 6F                   LOADL_abs              $6F72
  $A6A2  2B                         STORE_quick   ; inline operand = 11
  $A6A3  AC DD 81                   CALL_abs               $81DD {bytecode}
  $A6A6  D8 16 87                   JUMPF_abs              $8716
  $A6A9  AC FE 81                   CALL_abs               $81FE {bytecode}
  $A6AC  AC 3F B8                   CALL_abs               $B83F {native}
  $A6AF  61                         PUSH_qimm   ; inline operand = 1
  $A6B0  8E CB 96                   PUSH_imm2              $96CB
  $A6B3  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $A6B7  A5 74 6F                   BYTE_LOADL_abs         $6F74
  $A6BA  59                         LOADR_qimm   ; inline operand = 9
  $A6BB  C6                         UCMPLT
  $A6BC  D8 D6 86                   JUMPF_abs              $86D6
  $A6BF  AC 03 A0                   CALL_abs               $A003 {bytecode}
  $A6C2  AC 3F B8                   CALL_abs               $B83F {native}
  $A6C5  61                         PUSH_qimm   ; inline operand = 1
  $A6C6  8E F7 96                   PUSH_imm2              $96F7
  $A6C9  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $A6CD  41                         LOADL_qimm   ; inline operand = 1
  $A6CE  CD                         SWAP
  $A6CF  A5 74 6F                   BYTE_LOADL_abs         $6F74
  $A6D2  BB                         ADD
  $A6D3  A9 74 6F                   BYTE_STORE_abs         $6F74
  $A6D6  A5 74 6F                   BYTE_LOADL_abs         $6F74
  $A6D9  B3                         PUSHL
  $A6DA  63                         PUSH_qimm   ; inline operand = 3
  $A6DB  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $A6DF  73                         ADD_qimm   ; inline operand = 3
  $A6E0  B4                         POPR
  $A6E1  B5                         MULT
  $A6E2  8C E8 03                   LOADR_imm2             $03E8
  $A6E5  B5                         MULT
  $A6E6  A8 58 70                   STORE_abs              $7058
  $A6E9  AC 03 A0                   CALL_abs               $A003 {bytecode}
  $A6EC  AC 3F B8                   CALL_abs               $B83F {native}
  $A6EF  61                         PUSH_qimm   ; inline operand = 1
  $A6F0  8E 16 97                   PUSH_imm2              $9716
  $A6F3  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $A6F7  8E 10 27                   PUSH_imm2              $2710
  $A6FA  A4 58 70                   LOADL_abs              $7058
  $A6FD  8C E8 03                   LOADR_imm2             $03E8
  $A700  B8                         UDIV
  $A701  A6 70 6F                   LOADR_abs              $6F70
  $A704  BB                         ADD
  $A705  B3                         PUSHL
  $A706  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $A70A  A8 70 6F                   STORE_abs              $6F70
  $A70D  40                         LOADL_qimm   ; inline operand = 0
  $A70E  A9 5F 70                   BYTE_STORE_abs         $705F
  $A711  AC 03 A0                   CALL_abs               $A003 {bytecode}
  $A714  41                         LOADL_qimm   ; inline operand = 1
  $A715  CF                         RETURN

; ============================================================
; sub $A814   (frame_off=-15, body @ $A819)   [PRG $32814]
; ============================================================
  $A819  DE F8 FF                   LEAL_far               $FFF8
  $A81C  B3                         PUSHL
  $A81D  60                         PUSH_qimm   ; inline operand = 0
  $A81E  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $A822  A2 FD FF                   BYTE_STORE_far         $FFFD
  $A825  40                         LOADL_qimm   ; inline operand = 0
  $A826  D6 9A 88                   JUMP_abs               $889A

; ============================================================
; sub $A8AA   (frame_off=-10, body @ $A8AF)   [PRG $328AA]
; ============================================================
  $A8AF  A4 72 6F                   LOADL_abs              $6F72
  $A8B2  29                         STORE_quick   ; inline operand = 9
  $A8B3  AC BC 81                   CALL_abs               $81BC {bytecode}
  $A8B6  D8 82 89                   JUMPF_abs              $8982
  $A8B9  A5 55 70                   BYTE_LOADL_abs         $7055
  $A8BC  B3                         PUSHL
  $A8BD  E9 A0 B9 02                CALL_abs_imm1          $B9A0 {native}, $02
  $A8C1  D8 82 89                   JUMPF_abs              $8982
  $A8C4  61                         PUSH_qimm   ; inline operand = 1
  $A8C5  61                         PUSH_qimm   ; inline operand = 1
  $A8C6  E9 69 B8 04                CALL_abs_imm1          $B869 {native}, $04
  $A8CA  AC 3F B8                   CALL_abs               $B83F {native}
  $A8CD  61                         PUSH_qimm   ; inline operand = 1
  $A8CE  8E 94 98                   PUSH_imm2              $9894
  $A8D1  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $A8D5  AC 03 A0                   CALL_abs               $A003 {bytecode}
  $A8D8  AC 3F B8                   CALL_abs               $B83F {native}
  $A8DB  A5 55 70                   BYTE_LOADL_abs         $7055
  $A8DE  B3                         PUSHL
  $A8DF  E9 A0 B9 02                CALL_abs_imm1          $B9A0 {native}, $02
  $A8E3  A6 56 70                   LOADR_abs              $7056
  $A8E6  C6                         UCMPLT
  $A8E7  D8 31 89                   JUMPF_abs              $8931
  $A8EA  61                         PUSH_qimm   ; inline operand = 1
  $A8EB  8E BB 98                   PUSH_imm2              $98BB
  $A8EE  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $A8F2  AC 9F CD                   CALL_abs               $CD9F {native}
  $A8F5  D8 07 89                   JUMPF_abs              $8907
  $A8F8  AC 3F B8                   CALL_abs               $B83F {native}
  $A8FB  61                         PUSH_qimm   ; inline operand = 1
  $A8FC  8E F1 98                   PUSH_imm2              $98F1
  $A8FF  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $A903  AC 03 A0                   CALL_abs               $A003 {bytecode}
  $A906  CF                         RETURN

; ============================================================
; sub $ABBB   (frame_off=+0, body @ $ABC0)   [PRG $32BBB]
; ============================================================
  $ABC0  8E E7 00                   PUSH_imm2              $00E7
  $ABC3  8E A2 B6                   PUSH_imm2              $B6A2
  $ABC6  8E 1A B5                   PUSH_imm2              $B51A
  $ABC9  6E                         PUSH_qimm   ; inline operand = 14
  $ABCA  8D 1C                      BYTE_PUSH_imm1         +28
  $ABCC  66                         PUSH_qimm   ; inline operand = 6
  $ABCD  62                         PUSH_qimm   ; inline operand = 2
  $ABCE  69                         PUSH_qimm   ; inline operand = 9
  $ABCF  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $ABD3  67                         PUSH_qimm   ; inline operand = 7
  $ABD4  8D 16                      BYTE_PUSH_imm1         +22
  $ABD6  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $ABDA  60                         PUSH_qimm   ; inline operand = 0
  $ABDB  8E 15 9C                   PUSH_imm2              $9C15
  $ABDE  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $ABE2  68                         PUSH_qimm   ; inline operand = 8
  $ABE3  64                         PUSH_qimm   ; inline operand = 4
  $ABE4  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $ABE8  60                         PUSH_qimm   ; inline operand = 0
  $ABE9  8E 1D 9C                   PUSH_imm2              $9C1D
  $ABEC  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $ABF0  CF                         RETURN

; ============================================================
; sub $ABF1   (frame_off=-61, body @ $ABF6)   [PRG $32BF1]
; ============================================================
  $ABF6  40                         LOADL_qimm   ; inline operand = 0
  $ABF7  85 C9                      STORE_near             $C9
  $ABF9  40                         LOADL_qimm   ; inline operand = 0
  $ABFA  85 C7                      STORE_near             $C7
  $ABFC  D6 28 8C                   JUMP_abs               $8C28

; ============================================================
; sub $ACF1   (frame_off=-3, body @ $ACF6)   [PRG $32CF1]
; ============================================================
  $ACF6  A5 74 6F                   BYTE_LOADL_abs         $6F74
  $ACF9  A2 FF FF                   BYTE_STORE_far         $FFFF
  $ACFC  41                         LOADL_qimm   ; inline operand = 1
  $ACFD  85 FD                      STORE_near             $FD
  $ACFF  A5 5F 70                   BYTE_LOADL_abs         $705F
  $AD02  58                         LOADR_qimm   ; inline operand = 8
  $AD03  DA                         AND
  $AD04  D8 28 8D                   JUMPF_abs              $8D28
  $AD07  A5 54 70                   BYTE_LOADL_abs         $7054
  $AD0A  51                         LOADR_qimm   ; inline operand = 1
  $AD0B  C0                         CMPEQ
  $AD0C  D8 28 8D                   JUMPF_abs              $8D28
  $AD0F  A5 67 70                   BYTE_LOADL_abs         $7067
  $AD12  B3                         PUSHL
  $AD13  A5 55 70                   BYTE_LOADL_abs         $7055
  $AD16  B4                         POPR
  $AD17  C0                         CMPEQ
  $AD18  D8 28 8D                   JUMPF_abs              $8D28
  $AD1B  A5 5F 70                   BYTE_LOADL_abs         $705F
  $AD1E  52                         LOADR_qimm   ; inline operand = 2
  $AD1F  DA                         AND
  $AD20  D7 28 8D                   JUMPT_abs              $8D28
  $AD23  AC 26 86                   CALL_abs               $8626 {bytecode}
  $AD26  40                         LOADL_qimm   ; inline operand = 0
  $AD27  CF                         RETURN

; ============================================================
; sub $AE19   (frame_off=-8, body @ $AE1E)   [PRG $32E19]
; ============================================================
  $AE1E  A4 6B 66                   LOADL_abs              $666B
  $AE21  2B                         STORE_quick   ; inline operand = 11
  $AE22  8A 10 27                   LOADL_imm2             $2710
  $AE25  A6 70 6F                   LOADR_abs              $6F70
  $AE28  C3                         SCMPLE
  $AE29  D8 38 8E                   JUMPF_abs              $8E38
  $AE2C  AC 3F B8                   CALL_abs               $B83F {native}
  $AE2F  8E 32 9D                   PUSH_imm2              $9D32
  $AE32  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $AE36  40                         LOADL_qimm   ; inline operand = 0
  $AE37  CF                         RETURN

; ============================================================
; sub $AEF0   (frame_off=-8, body @ $AEF5)   [PRG $32EF0]
; ============================================================
  $AEF5  A4 6B 66                   LOADL_abs              $666B
  $AEF8  2B                         STORE_quick   ; inline operand = 11
  $AEF9  0B                         LOADL_quick   ; inline operand = 11
  $AEFA  B7 26                      LONG                   $26
  $AEFC  B7 19 78 E6 00 00          LONG                   $19 $78 $E6 $00 $00
  $AF02  B7 2B                      LONG                   $2B
  $AF04  D8 18 8F                   JUMPF_abs              $8F18
  $AF07  AC 89 B8                   CALL_abs               $B889 {native}
  $AF0A  61                         PUSH_qimm   ; inline operand = 1
  $AF0B  E9 1B B8 02                CALL_abs_imm1          $B81B {native}, $02
  $AF0F  8E F1 9D                   PUSH_imm2              $9DF1
  $AF12  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $AF16  40                         LOADL_qimm   ; inline operand = 0
  $AF17  CF                         RETURN

; ============================================================
; sub $AFD9   (frame_off=-6, body @ $AFDE)   [PRG $32FD9]
; ============================================================
  $AFDE  A4 70 6F                   LOADL_abs              $6F70
  $AFE1  2B                         STORE_quick   ; inline operand = 11
  $AFE2  61                         PUSH_qimm   ; inline operand = 1
  $AFE3  6A                         PUSH_qimm   ; inline operand = 10
  $AFE4  E9 69 B8 04                CALL_abs_imm1          $B869 {native}, $04
  $AFE8  40                         LOADL_qimm   ; inline operand = 0
  $AFE9  29                         STORE_quick   ; inline operand = 9
  $AFEA  40                         LOADL_qimm   ; inline operand = 0
  $AFEB  A2 FD FF                   BYTE_STORE_far         $FFFD
  $AFEE  0B                         LOADL_quick   ; inline operand = 11
  $AFEF  D7 02 90                   JUMPT_abs              $9002
  $AFF2  61                         PUSH_qimm   ; inline operand = 1
  $AFF3  E9 1B B8 02                CALL_abs_imm1          $B81B {native}, $02
  $AFF7  8E D9 9E                   PUSH_imm2              $9ED9
  $AFFA  E9 F4 A3 02                CALL_abs_imm1          $A3F4 {native}, $02
  $AFFE  41                         LOADL_qimm   ; inline operand = 1
  $AFFF  D6 15 90                   JUMP_abs               $9015

