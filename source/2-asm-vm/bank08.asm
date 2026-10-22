VM bytecode disassembly
  ROM:          Uncharted Waters (USA).nes
  mode:         bulk dump of bank 8
  opcode spec:  vm-opcodes-v2.toml via nobunaga_vm.OPCODE_INFO (execution-validated lengths)
  labels:       0 CPU addresses named

  bank 8: found 11 bytecode-subroutine stubs

; ============================================================
; sub $98CB   (frame_off=-2, body @ $98D0)   [PRG $118CB]
; ============================================================
  $98D0  40                         LOADL_qimm   ; inline operand = 0
  $98D1  2B                         STORE_quick   ; inline operand = 11
 >$98D2  8D 10                      BYTE_PUSH_imm1         +16
  $98D4  60                         PUSH_qimm   ; inline operand = 0
  $98D5  0B                         LOADL_quick   ; inline operand = 11
  $98D6  54                         LOADR_qimm   ; inline operand = 4
  $98D7  BD                         LSHIFT
  $98D8  8C 6A 9D                   LOADR_imm2             $9D6A
  $98DB  BB                         ADD
  $98DC  B3                         PUSHL
  $98DD  66                         PUSH_qimm   ; inline operand = 6
  $98DE  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $98E2  65                         PUSH_qimm   ; inline operand = 5
  $98E3  8D 11                      BYTE_PUSH_imm1         +17
  $98E5  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $98E9  A5 8C 6B                   BYTE_LOADL_abs         $6B8C
  $98EC  55                         LOADR_qimm   ; inline operand = 5
  $98ED  B8                         UDIV
  $98EE  B3                         PUSHL
  $98EF  E9 92 B1 02                CALL_abs_imm1          $B192 {native}, $02
  $98F3  65                         PUSH_qimm   ; inline operand = 5
  $98F4  8D 11                      BYTE_PUSH_imm1         +17
  $98F6  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $98FA  0B                         LOADL_quick   ; inline operand = 11
  $98FB  D0                         INC
  $98FC  2B                         STORE_quick   ; inline operand = 11
  $98FD  0B                         LOADL_quick   ; inline operand = 11
  $98FE  54                         LOADR_qimm   ; inline operand = 4
  $98FF  C6                         UCMPLT
  $9900  D7 D2 98                   JUMPT_abs              $98D2
  $9903  CF                         RETURN

; ============================================================
; sub $9904   (frame_off=-2, body @ $9909)   [PRG $11904]
; ============================================================
  $9909  40                         LOADL_qimm   ; inline operand = 0
  $990A  2B                         STORE_quick   ; inline operand = 11
 >$990B  8D 15                      BYTE_PUSH_imm1         +21
  $990D  E9 6F E0 02                CALL_abs_imm1          $E06F {native}, $02
  $9911  8D 10                      BYTE_PUSH_imm1         +16
  $9913  60                         PUSH_qimm   ; inline operand = 0
  $9914  8E AA 9D                   PUSH_imm2              $9DAA
  $9917  66                         PUSH_qimm   ; inline operand = 6
  $9918  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $991C  63                         PUSH_qimm   ; inline operand = 3
  $991D  8D 11                      BYTE_PUSH_imm1         +17
  $991F  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $9923  A5 8C 6B                   BYTE_LOADL_abs         $6B8C
  $9926  55                         LOADR_qimm   ; inline operand = 5
  $9927  B8                         UDIV
  $9928  B3                         PUSHL
  $9929  E9 92 B1 02                CALL_abs_imm1          $B192 {native}, $02
  $992D  63                         PUSH_qimm   ; inline operand = 3
  $992E  8D 11                      BYTE_PUSH_imm1         +17
  $9930  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $9934  0B                         LOADL_quick   ; inline operand = 11
  $9935  D0                         INC
  $9936  2B                         STORE_quick   ; inline operand = 11
  $9937  0B                         LOADL_quick   ; inline operand = 11
  $9938  53                         LOADR_qimm   ; inline operand = 3
  $9939  C6                         UCMPLT
  $993A  D7 0B 99                   JUMPT_abs              $990B
  $993D  CF                         RETURN

; ============================================================
; sub $993E   (frame_off=-34, body @ $9943)   [PRG $1193E]
; ============================================================
  $9943  8A 62 66                   LOADL_imm2             $6662
  $9946  85 DE                      STORE_near             $DE
  $9948  81 DE                      LOADL_near             $DE
  $994A  72                         ADD_qimm   ; inline operand = 2
  $994B  D3                         BYTE_DEREF
  $994C  D2                         LSHIFT1
  $994D  53                         LOADR_qimm   ; inline operand = 3
  $994E  BD                         LSHIFT
  $994F  2B                         STORE_quick   ; inline operand = 11
  $9950  81 DE                      LOADL_near             $DE
  $9952  73                         ADD_qimm   ; inline operand = 3
  $9953  D3                         BYTE_DEREF
  $9954  D2                         LSHIFT1
  $9955  53                         LOADR_qimm   ; inline operand = 3
  $9956  BD                         LSHIFT
  $9957  2A                         STORE_quick   ; inline operand = 10
  $9958  81 DE                      LOADL_near             $DE
  $995A  78                         ADD_qimm   ; inline operand = 8
  $995B  D3                         BYTE_DEREF
  $995C  57                         LOADR_qimm   ; inline operand = 7
  $995D  DA                         AND
  $995E  29                         STORE_quick   ; inline operand = 9
  $995F  09                         LOADL_quick   ; inline operand = 9
  $9960  52                         LOADR_qimm   ; inline operand = 2
  $9961  B6                         SDIV
  $9962  28                         STORE_quick   ; inline operand = 8
  $9963  81 DE                      LOADL_near             $DE
  $9965  7F                         ADD_qimm   ; inline operand = 15
  $9966  D3                         BYTE_DEREF
  $9967  51                         LOADR_qimm   ; inline operand = 1
  $9968  DA                         AND
  $9969  D7 6E 99                   JUMPT_abs              $996E
  $996C  48                         LOADL_qimm   ; inline operand = 8
  $996D  29                         STORE_quick   ; inline operand = 9
 >$996E  09                         LOADL_quick   ; inline operand = 9
  $996F  D2                         LSHIFT1
  $9970  D2                         LSHIFT1
  $9971  29                         STORE_quick   ; inline operand = 9
  $9972  89 10                      BYTE_LOADL_imm1        +16
  $9974  85 E0                      STORE_near             $E0
 >$9976  A5 7D 73                   BYTE_LOADL_abs         $737D (ui_shared_var_737d)
  $9979  54                         LOADR_qimm   ; inline operand = 4
  $997A  BD                         LSHIFT
  $997B  8C 02 BB                   LOADR_imm2             $BB02
  $997E  BB                         ADD
  $997F  85 E6                      STORE_near             $E6
  $9981  DE E8 FF                   LEAL_far               $FFE8
  $9984  85 E4                      STORE_near             $E4
  $9986  40                         LOADL_qimm   ; inline operand = 0
  $9987  85 E2                      STORE_near             $E2
 >$9989  87 E4                      PUSH_near              $E4
  $998B  81 E0                      LOADL_near             $E0
  $998D  52                         LOADR_qimm   ; inline operand = 2
  $998E  B9                         SMOD
  $998F  D8 9C 99                   JUMPF_abs              $999C
  $9992  08                         LOADL_quick   ; inline operand = 8
  $9993  D2                         LSHIFT1
  $9994  8C C2 9D                   LOADR_imm2             $9DC2
  $9997  BB                         ADD
  $9998  B0                         DEREF
  $9999  D6 9D 99                   JUMP_abs               $999D
 >$999C  40                         LOADL_qimm   ; inline operand = 0
 >$999D  1A                         LOADR_quick   ; inline operand = 10
  $999E  BB                         ADD
  $999F  B3                         PUSHL
  $99A0  81 E6                      LOADL_near             $E6
  $99A2  D3                         BYTE_DEREF
  $99A3  B4                         POPR
  $99A4  BB                         ADD
  $99A5  D4                         BYTE_POPSTORE
  $99A6  81 E4                      LOADL_near             $E4
  $99A8  D0                         INC
  $99A9  85 E4                      STORE_near             $E4
  $99AB  81 E6                      LOADL_near             $E6
  $99AD  D0                         INC
  $99AE  85 E6                      STORE_near             $E6
  $99B0  87 E4                      PUSH_near              $E4
  $99B2  09                         LOADL_quick   ; inline operand = 9
  $99B3  B3                         PUSHL
  $99B4  81 E6                      LOADL_near             $E6
  $99B6  D3                         BYTE_DEREF
  $99B7  B4                         POPR
  $99B8  BB                         ADD
  $99B9  D4                         BYTE_POPSTORE
  $99BA  81 E4                      LOADL_near             $E4
  $99BC  D0                         INC
  $99BD  85 E4                      STORE_near             $E4
  $99BF  81 E6                      LOADL_near             $E6
  $99C1  D0                         INC
  $99C2  85 E6                      STORE_near             $E6
  $99C4  87 E4                      PUSH_near              $E4
  $99C6  81 E6                      LOADL_near             $E6
  $99C8  D3                         BYTE_DEREF
  $99C9  D4                         BYTE_POPSTORE
  $99CA  81 E4                      LOADL_near             $E4
  $99CC  D0                         INC
  $99CD  85 E4                      STORE_near             $E4
  $99CF  81 E6                      LOADL_near             $E6
  $99D1  D0                         INC
  $99D2  85 E6                      STORE_near             $E6
  $99D4  87 E4                      PUSH_near              $E4
  $99D6  81 E0                      LOADL_near             $E0
  $99D8  52                         LOADR_qimm   ; inline operand = 2
  $99D9  B9                         SMOD
  $99DA  D8 E7 99                   JUMPF_abs              $99E7
  $99DD  08                         LOADL_quick   ; inline operand = 8
  $99DE  D2                         LSHIFT1
  $99DF  8C BA 9D                   LOADR_imm2             $9DBA
  $99E2  BB                         ADD
  $99E3  B0                         DEREF
  $99E4  D6 E8 99                   JUMP_abs               $99E8
 >$99E7  40                         LOADL_qimm   ; inline operand = 0
 >$99E8  1B                         LOADR_quick   ; inline operand = 11
  $99E9  BB                         ADD
  $99EA  B3                         PUSHL
  $99EB  81 E6                      LOADL_near             $E6
  $99ED  D3                         BYTE_DEREF
  $99EE  B4                         POPR
  $99EF  BB                         ADD
  $99F0  D4                         BYTE_POPSTORE
  $99F1  81 E4                      LOADL_near             $E4
  $99F3  D0                         INC
  $99F4  85 E4                      STORE_near             $E4
  $99F6  81 E6                      LOADL_near             $E6
  $99F8  D0                         INC
  $99F9  85 E6                      STORE_near             $E6
  $99FB  81 E2                      LOADL_near             $E2
  $99FD  D0                         INC
  $99FE  85 E2                      STORE_near             $E2
  $9A00  81 E2                      LOADL_near             $E2
  $9A02  54                         LOADR_qimm   ; inline operand = 4
  $9A03  C2                         SCMPLT
  $9A04  D7 89 99                   JUMPT_abs              $9989
  $9A07  64                         PUSH_qimm   ; inline operand = 4
  $9A08  65                         PUSH_qimm   ; inline operand = 5
  $9A09  DE E8 FF                   LEAL_far               $FFE8
  $9A0C  B3                         PUSHL
  $9A0D  6D                         PUSH_qimm   ; inline operand = 13
  $9A0E  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $9A12  62                         PUSH_qimm   ; inline operand = 2
  $9A13  8D 11                      BYTE_PUSH_imm1         +17
  $9A15  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $9A19  81 E0                      LOADL_near             $E0
  $9A1B  D1                         DEC
  $9A1C  85 E0                      STORE_near             $E0
  $9A1E  81 E0                      LOADL_near             $E0
  $9A20  D7 76 99                   JUMPT_abs              $9976
  $9A23  A5 6A 66                   BYTE_LOADL_abs         $666A
  $9A26  B3                         PUSHL
  $9A27  A5 65 66                   BYTE_LOADL_abs         $6665
  $9A2A  B3                         PUSHL
  $9A2B  A5 64 66                   BYTE_LOADL_abs         $6664
  $9A2E  B3                         PUSHL
  $9A2F  E9 41 AD 06                CALL_abs_imm1          $AD41 {native}, $06
  $9A33  CF                         RETURN

; ============================================================
; sub $9A34   (frame_off=+0, body @ $9A39)   [PRG $11A34]
; ============================================================
  $9A39  8D 16                      BYTE_PUSH_imm1         +22
  $9A3B  E9 6F E0 02                CALL_abs_imm1          $E06F {native}, $02
  $9A3F  8D 10                      BYTE_PUSH_imm1         +16
  $9A41  60                         PUSH_qimm   ; inline operand = 0
  $9A42  8E CA 9D                   PUSH_imm2              $9DCA
  $9A45  66                         PUSH_qimm   ; inline operand = 6
  $9A46  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $9A4A  CF                         RETURN

; ============================================================
; sub $9A4B   (frame_off=+0, body @ $9A50)   [PRG $11A4B]
; ============================================================
  $9A50  A5 8C 6B                   BYTE_LOADL_abs         $6B8C
  $9A53  55                         LOADR_qimm   ; inline operand = 5
  $9A54  B8                         UDIV
  $9A55  B3                         PUSHL
  $9A56  E9 92 B1 02                CALL_abs_imm1          $B192 {native}, $02
  $9A5A  CF                         RETURN

; ============================================================
; sub $9A5B   (frame_off=+0, body @ $9A60)   [PRG $11A5B]
; ============================================================
  $9A60  0C                         LOADL_quick   ; inline operand = 12
  $9A61  57                         LOADR_qimm   ; inline operand = 7
  $9A62  B5                         MULT
  $9A63  8C 96 6C                   LOADR_imm2             $6C96
  $9A66  BB                         ADD
  $9A67  D3                         BYTE_DEREF
  $9A68  5F                         LOADR_qimm   ; inline operand = 15
  $9A69  DA                         AND
  $9A6A  B3                         PUSHL
  $9A6B  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $9A6F  CF                         RETURN

; ============================================================
; sub $9A70   (frame_off=+0, body @ $9A75)   [PRG $11A70]
; ============================================================
  $9A75  AC 70 B5                   CALL_abs               $B570 {native}
  $9A78  60                         PUSH_qimm   ; inline operand = 0
  $9A79  AC 91 D7                   CALL_abs               $D791 {native}
  $9A7C  B3                         PUSHL
  $9A7D  E9 B1 B2 04                CALL_abs_imm1          $B2B1 {native}, $04
  $9A81  61                         PUSH_qimm   ; inline operand = 1
  $9A82  8E DA 9D                   PUSH_imm2              $9DDA
  $9A85  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $9A89  AC E5 B5                   CALL_abs               $B5E5 {native}
  $9A8C  CF                         RETURN

; ============================================================
; sub $9A8D   (frame_off=+0, body @ $9A92)   [PRG $11A8D]
; ============================================================
  $9A92  60                         PUSH_qimm   ; inline operand = 0
  $9A93  AC 91 D7                   CALL_abs               $D791 {native}
  $9A96  B3                         PUSHL
  $9A97  E9 B1 B2 04                CALL_abs_imm1          $B2B1 {native}, $04
  $9A9B  60                         PUSH_qimm   ; inline operand = 0
  $9A9C  8E 00 9E                   PUSH_imm2              $9E00
  $9A9F  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $9AA3  3C                         PUSH_quick   ; inline operand = 12
  $9AA4  E9 5B 9A 02                CALL_abs_imm1          $9A5B {bytecode}, $02
  $9AA8  B3                         PUSHL
  $9AA9  E9 6B D5 02                CALL_abs_imm1          $D56B {native}, $02
  $9AAD  0D                         LOADL_quick   ; inline operand = 13
  $9AAE  D8 B7 9A                   JUMPF_abs              $9AB7
  $9AB1  8A 20 9E                   LOADL_imm2             $9E20
  $9AB4  D6 BA 9A                   JUMP_abs               $9ABA
 >$9AB7  8A 25 9E                   LOADL_imm2             $9E25
 >$9ABA  B3                         PUSHL
  $9ABB  8E 06 9E                   PUSH_imm2              $9E06
  $9ABE  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $9AC2  CF                         RETURN

; ============================================================
; sub $9AC3   (frame_off=-4, body @ $9AC8)   [PRG $11AC3]
; ============================================================
  $9AC8  A4 72 6F                   LOADL_abs              $6F72
  $9ACB  8C 50 C3                   LOADR_imm2             $C350
  $9ACE  C6                         UCMPLT
  $9ACF  D8 FF 9A                   JUMPF_abs              $9AFF
  $9AD2  A5 67 70                   BYTE_LOADL_abs         $7067
  $9AD5  5E                         LOADR_qimm   ; inline operand = 14
  $9AD6  B5                         MULT
  $9AD7  8C B2 67                   LOADR_imm2             $67B2
  $9ADA  BB                         ADD
  $9ADB  2B                         STORE_quick   ; inline operand = 11
  $9ADC  0B                         LOADL_quick   ; inline operand = 11
  $9ADD  B0                         DEREF
  $9ADE  B3                         PUSHL
  $9ADF  0B                         LOADL_quick   ; inline operand = 11
  $9AE0  74                         ADD_qimm   ; inline operand = 4
  $9AE1  B0                         DEREF
  $9AE2  B4                         POPR
  $9AE3  BB                         ADD
  $9AE4  51                         LOADR_qimm   ; inline operand = 1
  $9AE5  BE                         URSHIFT
  $9AE6  B3                         PUSHL
  $9AE7  8D 64                      BYTE_PUSH_imm1         +100
  $9AE9  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $9AED  B4                         POPR
  $9AEE  BB                         ADD
  $9AEF  A6 72 6F                   LOADR_abs              $6F72
  $9AF2  BB                         ADD
  $9AF3  2A                         STORE_quick   ; inline operand = 10
  $9AF4  8E 50 C3                   PUSH_imm2              $C350
  $9AF7  3A                         PUSH_quick   ; inline operand = 10
  $9AF8  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $9AFC  A8 72 6F                   STORE_abs              $6F72
 >$9AFF  CF                         RETURN

; ============================================================
; sub $9B00   (frame_off=-19, body @ $9B05)   [PRG $11B00]
; ============================================================
  $9B05  0C                         LOADL_quick   ; inline operand = 12
  $9B06  55                         LOADR_qimm   ; inline operand = 5
  $9B07  B5                         MULT
  $9B08  8C 0A B5                   LOADR_imm2             $B50A
  $9B0B  BB                         ADD
  $9B0C  85 F3                      STORE_near             $F3
  $9B0E  87 F3                      PUSH_near              $F3
  $9B10  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $9B14  85 F5                      STORE_near             $F5
  $9B16  0C                         LOADL_quick   ; inline operand = 12
  $9B17  8B 32                      BYTE_LOADR_imm1        +50
  $9B19  C6                         UCMPLT
  $9B1A  D8 8B 9B                   JUMPF_abs              $9B8B
  $9B1D  DE FB FF                   LEAL_far               $FFFB
  $9B20  B3                         PUSHL
  $9B21  60                         PUSH_qimm   ; inline operand = 0
  $9B22  E9 26 D0 04                CALL_abs_imm1          $D026 (scan_records_6c90_flag) {native}, $04
  $9B26  85 F9                      STORE_near             $F9
  $9B28  40                         LOADL_qimm   ; inline operand = 0
  $9B29  D6 81 9B                   JUMP_abs               $9B81
 >$9B2C  DE FB FF                   LEAL_far               $FFFB
  $9B2F  B3                         PUSHL
  $9B30  81 F7                      LOADL_near             $F7
  $9B32  B4                         POPR
  $9B33  BB                         ADD
  $9B34  D3                         BYTE_DEREF
  $9B35  8B 18                      BYTE_LOADR_imm1        +24
  $9B37  B5                         MULT
  $9B38  8C A4 6A                   LOADR_imm2             $6AA4
  $9B3B  BB                         ADD
  $9B3C  85 ED                      STORE_near             $ED
  $9B3E  81 ED                      LOADL_near             $ED
  $9B40  D3                         BYTE_DEREF
  $9B41  57                         LOADR_qimm   ; inline operand = 7
  $9B42  B5                         MULT
  $9B43  8C 42 65                   LOADR_imm2             $6542
  $9B46  BB                         ADD
  $9B47  85 EF                      STORE_near             $EF
  $9B49  81 ED                      LOADL_near             $ED
  $9B4B  D3                         BYTE_DEREF
  $9B4C  5A                         LOADR_qimm   ; inline operand = 10
  $9B4D  B5                         MULT
  $9B4E  8C BE 6B                   LOADR_imm2             $6BBE
  $9B51  BB                         ADD
  $9B52  85 F1                      STORE_near             $F1
  $9B54  81 EF                      LOADL_near             $EF
  $9B56  73                         ADD_qimm   ; inline operand = 3
  $9B57  D3                         BYTE_DEREF
  $9B58  8B 32                      BYTE_LOADR_imm1        +50
  $9B5A  C6                         UCMPLT
  $9B5B  D8 7E 9B                   JUMPF_abs              $9B7E
  $9B5E  81 F1                      LOADL_near             $F1
  $9B60  78                         ADD_qimm   ; inline operand = 8
  $9B61  B3                         PUSHL
  $9B62  81 F1                      LOADL_near             $F1
  $9B64  78                         ADD_qimm   ; inline operand = 8
  $9B65  B0                         DEREF
  $9B66  B3                         PUSHL
  $9B67  81 F5                      LOADL_near             $F5
  $9B69  D0                         INC
  $9B6A  B3                         PUSHL
  $9B6B  81 F5                      LOADL_near             $F5
  $9B6D  D0                         INC
  $9B6E  B4                         POPR
  $9B6F  B5                         MULT
  $9B70  8B 1E                      BYTE_LOADR_imm1        +30
  $9B72  B5                         MULT
  $9B73  B4                         POPR
  $9B74  BB                         ADD
  $9B75  B3                         PUSHL
  $9B76  8E 60 EA                   PUSH_imm2              $EA60
  $9B79  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $9B7D  B1                         POPSTORE
 >$9B7E  81 F7                      LOADL_near             $F7
  $9B80  D0                         INC
 >$9B81  85 F7                      STORE_near             $F7
  $9B83  81 F7                      LOADL_near             $F7
  $9B85  83 F9                      LOADR_near             $F9
  $9B87  C6                         UCMPLT
  $9B88  D7 2C 9B                   JUMPT_abs              $9B2C
 >$9B8B  A4 72 6F                   LOADL_abs              $6F72
  $9B8E  8C 50 C3                   LOADR_imm2             $C350
  $9B91  C6                         UCMPLT
  $9B92  D8 BF 9B                   JUMPF_abs              $9BBF
  $9B95  0C                         LOADL_quick   ; inline operand = 12
  $9B96  8B 32                      BYTE_LOADR_imm1        +50
  $9B98  C6                         UCMPLT
  $9B99  D8 AF 9B                   JUMPF_abs              $9BAF
  $9B9C  8E 50 C3                   PUSH_imm2              $C350
  $9B9F  81 F5                      LOADL_near             $F5
  $9BA1  51                         LOADR_qimm   ; inline operand = 1
  $9BA2  BE                         URSHIFT
  $9BA3  8B 64                      BYTE_LOADR_imm1        +100
  $9BA5  B5                         MULT
  $9BA6  A6 72 6F                   LOADR_abs              $6F72
  $9BA9  BB                         ADD
  $9BAA  8F 14                      BYTE_ADD_imm1          +20
  $9BAC  D6 B7 9B                   JUMP_abs               $9BB7
 >$9BAF  8E 50 C3                   PUSH_imm2              $C350
  $9BB2  A4 72 6F                   LOADL_abs              $6F72
  $9BB5  8F 64                      BYTE_ADD_imm1          +100
 >$9BB7  B3                         PUSHL
  $9BB8  E9 6C DD 04                CALL_abs_imm1          $DD6C (max_s16) {native}, $04
  $9BBC  A8 72 6F                   STORE_abs              $6F72
 >$9BBF  CF                         RETURN

; ============================================================
; sub $9BC0   (frame_off=+0, body @ $9BC5)   [PRG $11BC0]
; ============================================================
  $9BC5  AC 70 B5                   CALL_abs               $B570 {native}
  $9BC8  60                         PUSH_qimm   ; inline operand = 0
  $9BC9  AC 91 D7                   CALL_abs               $D791 {native}
  $9BCC  B3                         PUSHL
  $9BCD  E9 B1 B2 04                CALL_abs_imm1          $B2B1 {native}, $04
  $9BD1  A5 98 72                   BYTE_LOADL_abs         $7298 (ship_sail_state)
  $9BD4  D1                         DEC
  $9BD5  D2                         LSHIFT1
  $9BD6  8C 2B 9E                   LOADR_imm2             $9E2B
  $9BD9  BB                         ADD
  $9BDA  B0                         DEREF
  $9BDB  DD                         CALLPTR
  $9BDC  40                         LOADL_qimm   ; inline operand = 0
  $9BDD  A9 98 72                   BYTE_STORE_abs         $7298 (ship_sail_state)
  $9BE0  AC E5 B5                   CALL_abs               $B5E5 {native}
  $9BE3  CF                         RETURN

