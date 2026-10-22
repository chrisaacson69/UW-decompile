VM bytecode disassembly
  ROM:          Uncharted Waters (USA).nes
  mode:         FIXED bank (real base $C000; via $A000 slot +translate) -- 62
  opcode spec:  vm-opcodes-v2.toml via nobunaga_vm.OPCODE_INFO (execution-validated lengths)
  labels:       0 CPU addresses named

  bank 62: found 62 bytecode-subroutine stubs

; ============================================================
; sub $C47B   (frame_off=+0, body @ $C480)   [PRG $7C47B]
; ============================================================
  $C480  60                         PUSH_qimm   ; inline operand = 0
  $C481  8D 10                      BYTE_PUSH_imm1         +16
  $C483  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $C487  D7 80 C4                   JUMPT_abs              $C480
  $C48A  61                         PUSH_qimm   ; inline operand = 1
  $C48B  8D 10                      BYTE_PUSH_imm1         +16
  $C48D  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $C491  D7 80 C4                   JUMPT_abs              $C480
  $C494  60                         PUSH_qimm   ; inline operand = 0
  $C495  8D 10                      BYTE_PUSH_imm1         +16
  $C497  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $C49B  D7 A8 C4                   JUMPT_abs              $C4A8
  $C49E  61                         PUSH_qimm   ; inline operand = 1
  $C49F  8D 10                      BYTE_PUSH_imm1         +16
  $C4A1  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $C4A5  D8 94 C4                   JUMPF_abs              $C494
  $C4A8  CF                         RETURN

; ============================================================
; sub $C4A9   (frame_off=-4, body @ $C4AE)   [PRG $7C4A9]
; ============================================================
  $C4AE  AC AD CE                   CALL_abs               $CEAD (mul_wide) {native}
  $C4B1  2A                         STORE_quick   ; inline operand = 10
  $C4B2  0A                         LOADL_quick   ; inline operand = 10
  $C4B3  D0                         INC
  $C4B4  2A                         STORE_quick   ; inline operand = 10
  $C4B5  3A                         PUSH_quick   ; inline operand = 10
  $C4B6  E9 C0 CF 02                CALL_abs_imm1          $CFC0 {native}, $02
  $C4BA  0C                         LOADL_quick   ; inline operand = 12
  $C4BB  D8 C6 C4                   JUMPF_abs              $C4C6
  $C4BE  0C                         LOADL_quick   ; inline operand = 12
  $C4BF  D1                         DEC
  $C4C0  52                         LOADR_qimm   ; inline operand = 2
  $C4C1  B9                         SMOD
  $C4C2  B3                         PUSHL
  $C4C3  D6 D3 C4                   JUMP_abs               $C4D3

; ============================================================
; sub $C4DC   (frame_off=-4, body @ $C4E1)   [PRG $7C4DC]
; ============================================================
  $C4E1  40                         LOADL_qimm   ; inline operand = 0
  $C4E2  2B                         STORE_quick   ; inline operand = 11
  $C4E3  D6 F1 C4                   JUMP_abs               $C4F1

; ============================================================
; sub $C4FE   (frame_off=-2, body @ $C503)   [PRG $7C4FE]
; ============================================================
  $C503  B7 0C                      LONG                   $0C
  $C505  0D                         LOADL_quick   ; inline operand = 13
  $C506  00                         LOADL_quick   ; inline operand = 0
  $C507  B7 19 0A 00 00 00          LONG                   $19 $0A $00 $00 $00
  $C50D  B7 08                      LONG                   $08
  $C50F  D8 2A C5                   JUMPF_abs              $C52A
  $C512  0C                         LOADL_quick   ; inline operand = 12
  $C513  B3                         PUSHL
  $C514  B0                         DEREF
  $C515  D0                         INC
  $C516  B1                         POPSTORE
  $C517  D1                         DEC
  $C518  B3                         PUSHL
  $C519  B7 0C                      LONG                   $0C
  $C51B  0D                         LOADL_quick   ; inline operand = 13
  $C51C  00                         LOADL_quick   ; inline operand = 0
  $C51D  B7 19 30 00 00 00          LONG                   $19 $30 $00 $00 $00
  $C523  B7 03                      LONG                   $03
  $C525  B7 27                      LONG                   $27
  $C527  D4                         BYTE_POPSTORE
  $C528  41                         LOADL_qimm   ; inline operand = 1
  $C529  CF                         RETURN

; ============================================================
; sub $C554   (frame_off=-179, body @ $C559)   [PRG $7C554]
; ============================================================
  $C559  DE 4D FF                   LEAL_far               $FF4D
  $C55C  85 E3                      STORE_near             $E3
  $C55E  0C                         LOADL_quick   ; inline operand = 12
  $C55F  85 FD                      STORE_near             $FD
  $C561  D6 6F C5                   JUMP_abs               $C56F

; ============================================================
; sub $C70B   (frame_off=+0, body @ $C710)   [PRG $7C70B]
; ============================================================
  $C710  0C                         LOADL_quick   ; inline operand = 12
  $C711  A8 86 72                   STORE_abs              $7286 (window_stack_lo)
  $C714  0D                         LOADL_quick   ; inline operand = 13
  $C715  A8 88 72                   STORE_abs              $7288 (window_stack_depth)
  $C718  CF                         RETURN

; ============================================================
; sub $C719   (frame_off=-2, body @ $C71E)   [PRG $7C719]
; ============================================================
  $C71E  DE 0D 00                   LEAL_far               $000D
  $C721  2B                         STORE_quick   ; inline operand = 11
  $C722  60                         PUSH_qimm   ; inline operand = 0
  $C723  3B                         PUSH_quick   ; inline operand = 11
  $C724  3C                         PUSH_quick   ; inline operand = 12
  $C725  E9 54 C5 06                CALL_abs_imm1          $C554 {native}, $06
  $C729  CF                         RETURN

; ============================================================
; sub $C72A   (frame_off=+0, body @ $C72F)   [PRG $7C72A]
; ============================================================
  $C72F  A4 86 72                   LOADL_abs              $7286 (window_stack_lo)
  $C732  50                         LOADR_qimm   ; inline operand = 0
  $C733  C2                         SCMPLT
  $C734  D8 3B C7                   JUMPF_abs              $C73B
  $C737  40                         LOADL_qimm   ; inline operand = 0
  $C738  D6 4C C7                   JUMP_abs               $C74C

; ============================================================
; sub $C770   (frame_off=+0, body @ $C775)   [PRG $7C770]
; ============================================================
  $C775  3D                         PUSH_quick   ; inline operand = 13
  $C776  3C                         PUSH_quick   ; inline operand = 12
  $C777  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $C77B  AC 2A C7                   CALL_abs               $C72A {native}
  $C77E  CF                         RETURN

; ============================================================
; sub $C77F   (frame_off=+0, body @ $C784)   [PRG $7C77F]
; ============================================================
  $C784  0C                         LOADL_quick   ; inline operand = 12
  $C785  A8 86 72                   STORE_abs              $7286 (window_stack_lo)
  $C788  AC 2A C7                   CALL_abs               $C72A {native}
  $C78B  CF                         RETURN

; ============================================================
; sub $C78C   (frame_off=+0, body @ $C791)   [PRG $7C78C]
; ============================================================
  $C791  0C                         LOADL_quick   ; inline operand = 12
  $C792  A8 88 72                   STORE_abs              $7288 (window_stack_depth)
  $C795  AC 2A C7                   CALL_abs               $C72A {native}
  $C798  CF                         RETURN

; ============================================================
; sub $C799   (frame_off=-2, body @ $C79E)   [PRG $7C799]
; ============================================================
  $C79E  DE 0D 00                   LEAL_far               $000D
  $C7A1  2B                         STORE_quick   ; inline operand = 11
  $C7A2  61                         PUSH_qimm   ; inline operand = 1
  $C7A3  3B                         PUSH_quick   ; inline operand = 11
  $C7A4  3C                         PUSH_quick   ; inline operand = 12
  $C7A5  E9 54 C5 06                CALL_abs_imm1          $C554 {native}, $06
  $C7A9  CF                         RETURN

; ============================================================
; sub $C7AA   (frame_off=+0, body @ $C7AF)   [PRG $7C7AA]
; ============================================================
  $C7AF  60                         PUSH_qimm   ; inline operand = 0
  $C7B0  8D 10                      BYTE_PUSH_imm1         +16
  $C7B2  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $C7B6  D8 BD C7                   JUMPF_abs              $C7BD
  $C7B9  41                         LOADL_qimm   ; inline operand = 1
  $C7BA  D6 C8 C7                   JUMP_abs               $C7C8

; ============================================================
; sub $C7C9   (frame_off=+0, body @ $C7CE)   [PRG $7C7C9]
; ============================================================
  $C7CE  60                         PUSH_qimm   ; inline operand = 0
  $C7CF  E9 A9 C4 02                CALL_abs_imm1          $C4A9 {native}, $02
  $C7D3  CF                         RETURN

; ============================================================
; sub $C7D4   (frame_off=+0, body @ $C7D9)   [PRG $7C7D4]
; ============================================================
  $C7D9  D6 EE C7                   JUMP_abs               $C7EE

; ============================================================
; sub $C7F6   (frame_off=+0, body @ $C7FB)   [PRG $7C7F6]
; ============================================================
  $C7FB  A4 90 72                   LOADL_abs              $7290
  $C7FE  D8 05 C8                   JUMPF_abs              $C805
  $C801  A4 90 72                   LOADL_abs              $7290
  $C804  DD                         CALLPTR
  $C805  8D 14                      BYTE_PUSH_imm1         +20
  $C807  E9 D4 C7 02                CALL_abs_imm1          $C7D4 {native}, $02
  $C80B  A4 90 72                   LOADL_abs              $7290
  $C80E  D8 15 C8                   JUMPF_abs              $C815
  $C811  A4 90 72                   LOADL_abs              $7290
  $C814  DD                         CALLPTR
  $C815  8D 14                      BYTE_PUSH_imm1         +20
  $C817  E9 D4 C7 02                CALL_abs_imm1          $C7D4 {native}, $02
  $C81B  D8 FB C7                   JUMPF_abs              $C7FB
  $C81E  60                         PUSH_qimm   ; inline operand = 0
  $C81F  E9 A9 C4 02                CALL_abs_imm1          $C4A9 {native}, $02
  $C823  CF                         RETURN

; ============================================================
; sub $C824   (frame_off=-18, body @ $C829)   [PRG $7C824]
; ============================================================
  $C829  8A E1 00                   LOADL_imm2             $00E1
  $C82C  A2 EF FF                   BYTE_STORE_far         $FFEF
  $C82F  40                         LOADL_qimm   ; inline operand = 0
  $C830  A2 F0 FF                   BYTE_STORE_far         $FFF0
  $C833  0E                         LOADL_quick   ; inline operand = 14
  $C834  2A                         STORE_quick   ; inline operand = 10
  $C835  0F                         LOADL_quick   ; inline operand = 15
  $C836  29                         STORE_quick   ; inline operand = 9
  $C837  41                         LOADL_qimm   ; inline operand = 1
  $C838  28                         STORE_quick   ; inline operand = 8
  $C839  40                         LOADL_qimm   ; inline operand = 0
  $C83A  27                         STORE_quick   ; inline operand = 7
  $C83B  0D                         LOADL_quick   ; inline operand = 13
  $C83C  83 17                      LOADR_near             $17
  $C83E  B6                         SDIV
  $C83F  26                         STORE_quick   ; inline operand = 6
  $C840  06                         LOADL_quick   ; inline operand = 6
  $C841  83 17                      LOADR_near             $17
  $C843  B5                         MULT
  $C844  B3                         PUSHL
  $C845  0D                         LOADL_quick   ; inline operand = 13
  $C846  B4                         POPR
  $C847  BC                         SUB
  $C848  25                         STORE_quick   ; inline operand = 5
  $C849  61                         PUSH_qimm   ; inline operand = 1
  $C84A  3C                         PUSH_quick   ; inline operand = 12
  $C84B  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $C84F  09                         LOADL_quick   ; inline operand = 9
  $C850  53                         LOADR_qimm   ; inline operand = 3
  $C851  BD                         LSHIFT
  $C852  B3                         PUSHL
  $C853  A5 7D 73                   BYTE_LOADL_abs         $737D (ui_shared_var_737d)
  $C856  D2                         LSHIFT1
  $C857  8C 14 DF                   LOADR_imm2             $DF14
  $C85A  BB                         ADD
  $C85B  B0                         DEREF
  $C85C  B4                         POPR
  $C85D  BB                         ADD
  $C85E  A2 EE FF                   BYTE_STORE_far         $FFEE
  $C861  0A                         LOADL_quick   ; inline operand = 10
  $C862  53                         LOADR_qimm   ; inline operand = 3
  $C863  BD                         LSHIFT
  $C864  A2 F1 FF                   BYTE_STORE_far         $FFF1
  $C867  61                         PUSH_qimm   ; inline operand = 1
  $C868  60                         PUSH_qimm   ; inline operand = 0
  $C869  DE EE FF                   LEAL_far               $FFEE
  $C86C  B3                         PUSHL
  $C86D  6D                         PUSH_qimm   ; inline operand = 13
  $C86E  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $C872  81 15                      LOADL_near             $15
  $C874  D8 7C C8                   JUMPF_abs              $C87C
  $C877  81 15                      LOADL_near             $15
  $C879  D6 7D C8                   JUMP_abs               $C87D

; ============================================================
; sub $C9CD   (frame_off=-54, body @ $C9D2)   [PRG $7C9CD]
; ============================================================
  $C9D2  0D                         LOADL_quick   ; inline operand = 13
  $C9D3  B7 26                      LONG                   $26
  $C9D5  B7 0E                      LONG                   $0E
  $C9D7  EA FF                      CALLPTR_imm1           $FF
  $C9D9  41                         LOADL_qimm   ; inline operand = 1
  $C9DA  D6 E0 C9                   JUMP_abs               $C9E0

; ============================================================
; sub $CCF3   (frame_off=+0, body @ $CCF8)   [PRG $7CCF3]
; ============================================================
  $CCF8  61                         PUSH_qimm   ; inline operand = 1
  $CCF9  3C                         PUSH_quick   ; inline operand = 12
  $CCFA  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $CCFE  3E                         PUSH_quick   ; inline operand = 14
  $CCFF  3D                         PUSH_quick   ; inline operand = 13
  $CD00  8E 1A DF                   PUSH_imm2              $DF1A
  $CD03  E9 99 C7 06                CALL_abs_imm1          $C799 {native}, $06
  $CD07  A0 11 00                   BYTE_LOADL_far         $0011
  $CD0A  B3                         PUSHL
  $CD0B  3E                         PUSH_quick   ; inline operand = 14
  $CD0C  3D                         PUSH_quick   ; inline operand = 13
  $CD0D  E9 CD C9 06                CALL_abs_imm1          $C9CD {native}, $06
  $CD11  CF                         RETURN

; ============================================================
; sub $CD12   (frame_off=+0, body @ $CD17)   [PRG $7CD12]
; ============================================================
  $CD17  61                         PUSH_qimm   ; inline operand = 1
  $CD18  3E                         PUSH_quick   ; inline operand = 14
  $CD19  3D                         PUSH_quick   ; inline operand = 13
  $CD1A  3C                         PUSH_quick   ; inline operand = 12
  $CD1B  E9 F3 CC 08                CALL_abs_imm1          $CCF3 {native}, $08
  $CD1F  CF                         RETURN

; ============================================================
; sub $CD20   (frame_off=+0, body @ $CD25)   [PRG $7CD20]
; ============================================================
  $CD25  61                         PUSH_qimm   ; inline operand = 1
  $CD26  3D                         PUSH_quick   ; inline operand = 13
  $CD27  61                         PUSH_qimm   ; inline operand = 1
  $CD28  3C                         PUSH_quick   ; inline operand = 12
  $CD29  E9 F3 CC 08                CALL_abs_imm1          $CCF3 {native}, $08
  $CD2D  CF                         RETURN

; ============================================================
; sub $CD2E   (frame_off=-4, body @ $CD33)   [PRG $7CD2E]
; ============================================================
  $CD33  A5 7D 73                   BYTE_LOADL_abs         $737D (ui_shared_var_737d)
  $CD36  D2                         LSHIFT1
  $CD37  8C 14 DF                   LOADR_imm2             $DF14
  $CD3A  BB                         ADD
  $CD3B  B0                         DEREF
  $CD3C  1C                         LOADR_quick   ; inline operand = 12
  $CD3D  BB                         ADD
  $CD3E  A2 FC FF                   BYTE_STORE_far         $FFFC
  $CD41  8A E0 00                   LOADL_imm2             $00E0
  $CD44  A2 FD FF                   BYTE_STORE_far         $FFFD
  $CD47  40                         LOADL_qimm   ; inline operand = 0
  $CD48  A2 FE FF                   BYTE_STORE_far         $FFFE
  $CD4B  A4 86 72                   LOADL_abs              $7286 (window_stack_lo)
  $CD4E  53                         LOADR_qimm   ; inline operand = 3
  $CD4F  BD                         LSHIFT
  $CD50  A2 FF FF                   BYTE_STORE_far         $FFFF
  $CD53  61                         PUSH_qimm   ; inline operand = 1
  $CD54  60                         PUSH_qimm   ; inline operand = 0
  $CD55  DE FC FF                   LEAL_far               $FFFC
  $CD58  B3                         PUSHL
  $CD59  6D                         PUSH_qimm   ; inline operand = 13
  $CD5A  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $CD5E  CF                         RETURN

; ============================================================
; sub $CD5F   (frame_off=+0, body @ $CD64)   [PRG $7CD5F]
; ============================================================
  $CD64  A4 88 72                   LOADL_abs              $7288 (window_stack_depth)
  $CD67  53                         LOADR_qimm   ; inline operand = 3
  $CD68  BD                         LSHIFT
  $CD69  78                         ADD_qimm   ; inline operand = 8
  $CD6A  B3                         PUSHL
  $CD6B  E9 2E CD 02                CALL_abs_imm1          $CD2E {native}, $02
  $CD6F  A4 90 72                   LOADL_abs              $7290
  $CD72  D8 79 CD                   JUMPF_abs              $CD79
  $CD75  A4 90 72                   LOADL_abs              $7290
  $CD78  DD                         CALLPTR
  $CD79  8D 14                      BYTE_PUSH_imm1         +20
  $CD7B  E9 D4 C7 02                CALL_abs_imm1          $C7D4 {native}, $02
  $CD7F  61                         PUSH_qimm   ; inline operand = 1
  $CD80  60                         PUSH_qimm   ; inline operand = 0
  $CD81  6C                         PUSH_qimm   ; inline operand = 12
  $CD82  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $CD86  A4 90 72                   LOADL_abs              $7290
  $CD89  D8 90 CD                   JUMPF_abs              $CD90
  $CD8C  A4 90 72                   LOADL_abs              $7290
  $CD8F  DD                         CALLPTR
  $CD90  8D 14                      BYTE_PUSH_imm1         +20
  $CD92  E9 D4 C7 02                CALL_abs_imm1          $C7D4 {native}, $02
  $CD96  D8 64 CD                   JUMPF_abs              $CD64
  $CD99  60                         PUSH_qimm   ; inline operand = 0
  $CD9A  E9 A9 C4 02                CALL_abs_imm1          $C4A9 {native}, $02
  $CD9E  CF                         RETURN

; ============================================================
; sub $CD9F   (frame_off=-2, body @ $CDA4)   [PRG $7CD9F]
; ============================================================
  $CDA4  61                         PUSH_qimm   ; inline operand = 1
  $CDA5  8E 23 DF                   PUSH_imm2              $DF23
  $CDA8  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $CDAC  60                         PUSH_qimm   ; inline operand = 0
  $CDAD  E9 A9 C4 02                CALL_abs_imm1          $C4A9 {native}, $02
  $CDB1  D7 AC CD                   JUMPT_abs              $CDAC
  $CDB4  AC 5F CD                   CALL_abs               $CD5F {native}
  $CDB7  2B                         STORE_quick   ; inline operand = 11
  $CDB8  0B                         LOADL_quick   ; inline operand = 11
  $CDB9  51                         LOADR_qimm   ; inline operand = 1
  $CDBA  C0                         CMPEQ
  $CDBB  D7 C5 CD                   JUMPT_abs              $CDC5
  $CDBE  0B                         LOADL_quick   ; inline operand = 11
  $CDBF  8B 40                      BYTE_LOADR_imm1        +64
  $CDC1  C0                         CMPEQ
  $CDC2  D8 D7 CD                   JUMPF_abs              $CDD7
  $CDC5  61                         PUSH_qimm   ; inline operand = 1
  $CDC6  8E 2A DF                   PUSH_imm2              $DF2A
  $CDC9  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $CDCD  60                         PUSH_qimm   ; inline operand = 0
  $CDCE  E9 A9 C4 02                CALL_abs_imm1          $C4A9 {native}, $02
  $CDD2  D7 CD CD                   JUMPT_abs              $CDCD
  $CDD5  41                         LOADL_qimm   ; inline operand = 1
  $CDD6  CF                         RETURN

; ============================================================
; sub $CDF7   (frame_off=+0, body @ $CDFC)   [PRG $7CDF7]
; ============================================================
  $CDFC  8D 20                      BYTE_PUSH_imm1         +32
  $CDFE  60                         PUSH_qimm   ; inline operand = 0
  $CDFF  8E 66 F3                   PUSH_imm2              $F366
  $CE02  66                         PUSH_qimm   ; inline operand = 6
  $CE03  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $CE07  8D 18                      BYTE_PUSH_imm1         +24
  $CE09  67                         PUSH_qimm   ; inline operand = 7
  $CE0A  E9 0B C7 04                CALL_abs_imm1          $C70B {native}, $04
  $CE0E  AA 00 60                   PUSH_abs               $6000
  $CE11  8E 2E DF                   PUSH_imm2              $DF2E
  $CE14  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $CE18  61                         PUSH_qimm   ; inline operand = 1
  $CE19  64                         PUSH_qimm   ; inline operand = 4
  $CE1A  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $CE1E  B3                         PUSHL
  $CE1F  8E 3D DF                   PUSH_imm2              $DF3D
  $CE22  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $CE26  62                         PUSH_qimm   ; inline operand = 2
  $CE27  64                         PUSH_qimm   ; inline operand = 4
  $CE28  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $CE2C  B3                         PUSHL
  $CE2D  8E 45 DF                   PUSH_imm2              $DF45
  $CE30  E9 19 C7 04                CALL_abs_imm1          $C719 {native}, $04
  $CE34  D6 34 CE                   JUMP_abs               $CE34

; ============================================================
; sub $CE37   (frame_off=+0, body @ $CE3C)   [PRG $7CE37]
; ============================================================
  $CE3C  8D 40                      BYTE_PUSH_imm1         +64
  $CE3E  60                         PUSH_qimm   ; inline operand = 0
  $CE3F  6C                         PUSH_qimm   ; inline operand = 12
  $CE40  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $CE44  60                         PUSH_qimm   ; inline operand = 0
  $CE45  60                         PUSH_qimm   ; inline operand = 0
  $CE46  60                         PUSH_qimm   ; inline operand = 0
  $CE47  67                         PUSH_qimm   ; inline operand = 7
  $CE48  E9 D4 EE 08                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $08
  $CE4C  CF                         RETURN

; ============================================================
; sub $CE4D   (frame_off=+0, body @ $CE52)   [PRG $7CE4D]
; ============================================================
  $CE52  D6 66 CE                   JUMP_abs               $CE66

; ============================================================
; sub $CE6E   (frame_off=+0, body @ $CE73)   [PRG $7CE6E]
; ============================================================
  $CE73  D6 85 CE                   JUMP_abs               $CE85

; ============================================================
; sub $CE8D   (frame_off=+0, body @ $CE92)   [PRG $7CE8D]
; ============================================================
  $CE92  0C                         LOADL_quick   ; inline operand = 12
  $CE93  56                         LOADR_qimm   ; inline operand = 6
  $CE94  B5                         MULT
  $CE95  B3                         PUSHL
  $CE96  E9 6E CE 02                CALL_abs_imm1          $CE6E {native}, $02
  $CE9A  CF                         RETURN

; ============================================================
; sub $CE9B   (frame_off=+0, body @ $CEA0)   [PRG $7CE9B]
; ============================================================
  $CEA0  A5 88 6B                   BYTE_LOADL_abs         $6B88
  $CEA3  1C                         LOADR_quick   ; inline operand = 12
  $CEA4  B5                         MULT
  $CEA5  53                         LOADR_qimm   ; inline operand = 3
  $CEA6  B5                         MULT
  $CEA7  B3                         PUSHL
  $CEA8  E9 8D CE 02                CALL_abs_imm1          $CE8D {native}, $02
  $CEAC  CF                         RETURN

; ============================================================
; sub $D4A5   (frame_off=+0, body @ $D4AA)   [PRG $7D4A5]
; ============================================================
  $D4AA  0C                         LOADL_quick   ; inline operand = 12
  $D4AB  D9 07 00 01 00 DC D4 04 00 E2 D4 0C ... SWITCH_noncontig       count=7   ; .table 7 (key,target) + default (noncontiguous); SWITCH 1=>$D4DC 4=>$D4E2 12=>$D4E8 33=>$D4EE 34=>$D4F4 35=>$D4D6 38=>$D4CC default=>$D4D5

; ============================================================
; sub $D4FA   (frame_off=+0, body @ $D4FF)   [PRG $7D4FA]
; ============================================================
  $D4FF  0D                         LOADL_quick   ; inline operand = 13
  $D500  A9 68 72                   BYTE_STORE_abs         $7268
  $D503  0C                         LOADL_quick   ; inline operand = 12
  $D504  D9 04 00 02 00 19 D5 03 00 23 D5 24 ... SWITCH_noncontig       count=4   ; .table 4 (key,target) + default (noncontiguous); SWITCH 2=>$D519 3=>$D523 36=>$D529 37=>$D522 default=>$D522

; ============================================================
; sub $D532   (frame_off=+0, body @ $D537)   [PRG $7D532]
; ============================================================
  $D537  0C                         LOADL_quick   ; inline operand = 12
  $D538  55                         LOADR_qimm   ; inline operand = 5
  $D539  C6                         UCMPLT
  $D53A  D8 47 D5                   JUMPF_abs              $D547
  $D53D  0C                         LOADL_quick   ; inline operand = 12
  $D53E  8B 15                      BYTE_LOADR_imm1        +21
  $D540  B5                         MULT
  $D541  8C 1C 6B                   LOADR_imm2             $6B1C
  $D544  D6 4E D5                   JUMP_abs               $D54E

; ============================================================
; sub $D550   (frame_off=+0, body @ $D555)   [PRG $7D550]
; ============================================================
  $D555  0C                         LOADL_quick   ; inline operand = 12
  $D556  8B 1F                      BYTE_LOADR_imm1        +31
  $D558  C1                         CMPNE
  $D559  D8 67 D5                   JUMPF_abs              $D567
  $D55C  0C                         LOADL_quick   ; inline operand = 12
  $D55D  8B 11                      BYTE_LOADR_imm1        +17
  $D55F  B5                         MULT
  $D560  8C 04 B6                   LOADR_imm2             $D604
  $D563  BB                         ADD
  $D564  D6 6A D5                   JUMP_abs               $D56A

; ============================================================
; sub $D56B   (frame_off=-2, body @ $D570)   [PRG $7D56B]
; ============================================================
  $D570  0C                         LOADL_quick   ; inline operand = 12
  $D571  8C FF 9F                   LOADR_imm2             $9FFF
  $D574  C8                         UCMPGT
  $D575  D8 88 D5                   JUMPF_abs              $D588
  $D578  62                         PUSH_qimm   ; inline operand = 2
  $D579  64                         PUSH_qimm   ; inline operand = 4
  $D57A  E9 D4 EE 04                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $04
  $D57E  2B                         STORE_quick   ; inline operand = 11
  $D57F  8E FA 00                   PUSH_imm2              $00FA
  $D582  62                         PUSH_qimm   ; inline operand = 2
  $D583  63                         PUSH_qimm   ; inline operand = 3
  $D584  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $D588  60                         PUSH_qimm   ; inline operand = 0
  $D589  3C                         PUSH_quick   ; inline operand = 12
  $D58A  E9 03 C0 04                CALL_abs_imm1          $C003 {bytecode}, $04
  $D58E  0C                         LOADL_quick   ; inline operand = 12
  $D58F  8C FF 9F                   LOADR_imm2             $9FFF
  $D592  C8                         UCMPGT
  $D593  D8 9D D5                   JUMPF_abs              $D59D
  $D596  3B                         PUSH_quick   ; inline operand = 11
  $D597  62                         PUSH_qimm   ; inline operand = 2
  $D598  63                         PUSH_qimm   ; inline operand = 3
  $D599  E9 D4 EE 06                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $06
  $D59D  CF                         RETURN

; ============================================================
; sub $D59E   (frame_off=-6, body @ $D5A3)   [PRG $7D59E]
; ============================================================
  $D5A3  45                         LOADL_qimm   ; inline operand = 5
  $D5A4  CD                         SWAP
  $D5A5  0C                         LOADL_quick   ; inline operand = 12
  $D5A6  B5                         MULT
  $D5A7  2C                         STORE_quick   ; inline operand = 12
  $D5A8  0C                         LOADL_quick   ; inline operand = 12
  $D5A9  57                         LOADR_qimm   ; inline operand = 7
  $D5AA  B5                         MULT
  $D5AB  8C 90 6C                   LOADR_imm2             $6C90
  $D5AE  BB                         ADD
  $D5AF  2A                         STORE_quick   ; inline operand = 10
  $D5B0  8F 23                      BYTE_ADD_imm1          +35
  $D5B2  29                         STORE_quick   ; inline operand = 9
  $D5B3  40                         LOADL_qimm   ; inline operand = 0
  $D5B4  2B                         STORE_quick   ; inline operand = 11
  $D5B5  D6 CB D5                   JUMP_abs               $D5CB

; ============================================================
; sub $D5D3   (frame_off=-10, body @ $D5D8)   [PRG $7D5D3]
; ============================================================
  $D5D8  0C                         LOADL_quick   ; inline operand = 12
  $D5D9  D8 DF D5                   JUMPF_abs              $D5DF
  $D5DC  89 32                      BYTE_LOADL_imm1        +50
  $D5DE  CF                         RETURN

; ============================================================
; sub $D615   (frame_off=-8, body @ $D61A)   [PRG $7D615]
; ============================================================
  $D61A  8A 90 6C                   LOADL_imm2             $6C90
  $D61D  2B                         STORE_quick   ; inline operand = 11
  $D61E  8F 23                      BYTE_ADD_imm1          +35
  $D620  2A                         STORE_quick   ; inline operand = 10
  $D621  8A A4 6A                   LOADL_imm2             $6AA4
  $D624  29                         STORE_quick   ; inline operand = 9
  $D625  40                         LOADL_qimm   ; inline operand = 0
  $D626  28                         STORE_quick   ; inline operand = 8
  $D627  D6 46 D6                   JUMP_abs               $D646

; ============================================================
; sub $D652   (frame_off=-14, body @ $D657)   [PRG $7D652]
; ============================================================
  $D657  8A 24 B8                   LOADL_imm2             $D824
  $D65A  26                         STORE_quick   ; inline operand = 6
  $D65B  8F 40                      BYTE_ADD_imm1          +64
  $D65D  25                         STORE_quick   ; inline operand = 5
  $D65E  8A 6D 66                   LOADL_imm2             $666D
  $D661  2B                         STORE_quick   ; inline operand = 11
  $D662  40                         LOADL_qimm   ; inline operand = 0
  $D663  29                         STORE_quick   ; inline operand = 9
  $D664  40                         LOADL_qimm   ; inline operand = 0
  $D665  2A                         STORE_quick   ; inline operand = 10
  $D666  D6 9E D6                   JUMP_abs               $D69E

; ============================================================
; sub $D6A6   (frame_off=-6, body @ $D6AB)   [PRG $7D6A6]
; ============================================================
  $D6AB  8A 9A 6A                   LOADL_imm2             $6A9A
  $D6AE  2B                         STORE_quick   ; inline operand = 11
  $D6AF  40                         LOADL_qimm   ; inline operand = 0
  $D6B0  29                         STORE_quick   ; inline operand = 9
  $D6B1  2A                         STORE_quick   ; inline operand = 10
  $D6B2  D6 C5 D6                   JUMP_abs               $D6C5

; ============================================================
; sub $D6D6   (frame_off=-10, body @ $D6DB)   [PRG $7D6D6]
; ============================================================
  $D6DB  3C                         PUSH_quick   ; inline operand = 12
  $D6DC  E9 A6 D6 02                CALL_abs_imm1          $D6A6 {native}, $02
  $D6E0  28                         STORE_quick   ; inline operand = 8
  $D6E1  08                         LOADL_quick   ; inline operand = 8
  $D6E2  D7 E7 D6                   JUMPT_abs              $D6E7
  $D6E5  40                         LOADL_qimm   ; inline operand = 0
  $D6E6  CF                         RETURN

; ============================================================
; sub $D718   (frame_off=-10, body @ $D71D)   [PRG $7D718]
; ============================================================
  $D71D  3C                         PUSH_quick   ; inline operand = 12
  $D71E  E9 A6 D6 02                CALL_abs_imm1          $D6A6 {native}, $02
  $D722  27                         STORE_quick   ; inline operand = 7
  $D723  07                         LOADL_quick   ; inline operand = 7
  $D724  D7 29 D7                   JUMPT_abs              $D729
  $D727  40                         LOADL_qimm   ; inline operand = 0
  $D728  CF                         RETURN

; ============================================================
; sub $D75A   (frame_off=-8, body @ $D75F)   [PRG $7D75A]
; ============================================================
  $D75F  8A 90 6C                   LOADL_imm2             $6C90
  $D762  2B                         STORE_quick   ; inline operand = 11
  $D763  8F 23                      BYTE_ADD_imm1          +35
  $D765  2A                         STORE_quick   ; inline operand = 10
  $D766  8A A4 6A                   LOADL_imm2             $6AA4
  $D769  29                         STORE_quick   ; inline operand = 9
  $D76A  40                         LOADL_qimm   ; inline operand = 0
  $D76B  28                         STORE_quick   ; inline operand = 8
  $D76C  D6 89 D7                   JUMP_abs               $D789

; ============================================================
; sub $D791   (frame_off=-22, body @ $D796)   [PRG $7D791]
; ============================================================
  $D796  DE F6 FF                   LEAL_far               $FFF6
  $D799  B3                         PUSHL
  $D79A  E9 D6 D6 02                CALL_abs_imm1          $D6D6 {native}, $02
  $D79E  22                         STORE_quick   ; inline operand = 2
  $D79F  02                         LOADL_quick   ; inline operand = 2
  $D7A0  D7 A7 D7                   JUMPT_abs              $D7A7
  $D7A3  8A FF 00                   LOADL_imm2             $00FF
  $D7A6  CF                         RETURN

; ============================================================
; sub $D7D8   (frame_off=-6, body @ $D7DD)   [PRG $7D7D8]
; ============================================================
  $D7DD  0C                         LOADL_quick   ; inline operand = 12
  $D7DE  5E                         LOADR_qimm   ; inline operand = 14
  $D7DF  B5                         MULT
  $D7E0  8C BA 67                   LOADR_imm2             $67BA
  $D7E3  BB                         ADD
  $D7E4  2B                         STORE_quick   ; inline operand = 11
  $D7E5  0B                         LOADL_quick   ; inline operand = 11
  $D7E6  1D                         LOADR_quick   ; inline operand = 13
  $D7E7  BB                         ADD
  $D7E8  D3                         BYTE_DEREF
  $D7E9  1E                         LOADR_quick   ; inline operand = 14
  $D7EA  BB                         ADD
  $D7EB  8B 64                      BYTE_LOADR_imm1        +100
  $D7ED  C4                         SCMPGT
  $D7EE  D8 FB D7                   JUMPF_abs              $D7FB
  $D7F1  0B                         LOADL_quick   ; inline operand = 11
  $D7F2  1D                         LOADR_quick   ; inline operand = 13
  $D7F3  BB                         ADD
  $D7F4  D3                         BYTE_DEREF
  $D7F5  B3                         PUSHL
  $D7F6  89 64                      BYTE_LOADL_imm1        +100
  $D7F8  B4                         POPR
  $D7F9  BC                         SUB
  $D7FA  2E                         STORE_quick   ; inline operand = 14
  $D7FB  0E                         LOADL_quick   ; inline operand = 14
  $D7FC  B3                         PUSHL
  $D7FD  0B                         LOADL_quick   ; inline operand = 11
  $D7FE  1D                         LOADR_quick   ; inline operand = 13
  $D7FF  BB                         ADD
  $D800  B4                         POPR
  $D801  B3                         PUSHL
  $D802  D3                         BYTE_DEREF
  $D803  BB                         ADD
  $D804  D4                         BYTE_POPSTORE
  $D805  0B                         LOADL_quick   ; inline operand = 11
  $D806  72                         ADD_qimm   ; inline operand = 2
  $D807  D3                         BYTE_DEREF
  $D808  B3                         PUSHL
  $D809  0B                         LOADL_quick   ; inline operand = 11
  $D80A  D0                         INC
  $D80B  D3                         BYTE_DEREF
  $D80C  B3                         PUSHL
  $D80D  0B                         LOADL_quick   ; inline operand = 11
  $D80E  D3                         BYTE_DEREF
  $D80F  B4                         POPR
  $D810  BB                         ADD
  $D811  B4                         POPR
  $D812  BB                         ADD
  $D813  29                         STORE_quick   ; inline operand = 9
  $D814  09                         LOADL_quick   ; inline operand = 9
  $D815  8B 64                      BYTE_LOADR_imm1        +100
  $D817  C4                         SCMPGT
  $D818  D8 49 D8                   JUMPF_abs              $D849
  $D81B  09                         LOADL_quick   ; inline operand = 9
  $D81C  8F 9C                      BYTE_ADD_imm1          -100
  $D81E  2E                         STORE_quick   ; inline operand = 14
  $D81F  40                         LOADL_qimm   ; inline operand = 0
  $D820  2A                         STORE_quick   ; inline operand = 10
  $D821  0A                         LOADL_quick   ; inline operand = 10
  $D822  1D                         LOADR_quick   ; inline operand = 13
  $D823  C1                         CMPNE
  $D824  D8 3C D8                   JUMPF_abs              $D83C
  $D827  0B                         LOADL_quick   ; inline operand = 11
  $D828  1A                         LOADR_quick   ; inline operand = 10
  $D829  BB                         ADD
  $D82A  D3                         BYTE_DEREF
  $D82B  D8 3C D8                   JUMPF_abs              $D83C
  $D82E  0E                         LOADL_quick   ; inline operand = 14
  $D82F  D8 3C D8                   JUMPF_abs              $D83C
  $D832  0B                         LOADL_quick   ; inline operand = 11
  $D833  1A                         LOADR_quick   ; inline operand = 10
  $D834  BB                         ADD
  $D835  B3                         PUSHL
  $D836  D3                         BYTE_DEREF
  $D837  D1                         DEC
  $D838  D4                         BYTE_POPSTORE
  $D839  0E                         LOADL_quick   ; inline operand = 14
  $D83A  D1                         DEC
  $D83B  2E                         STORE_quick   ; inline operand = 14
  $D83C  0A                         LOADL_quick   ; inline operand = 10
  $D83D  D0                         INC
  $D83E  2A                         STORE_quick   ; inline operand = 10
  $D83F  0A                         LOADL_quick   ; inline operand = 10
  $D840  53                         LOADR_qimm   ; inline operand = 3
  $D841  C6                         UCMPLT
  $D842  D7 21 D8                   JUMPT_abs              $D821
  $D845  0E                         LOADL_quick   ; inline operand = 14
  $D846  D7 1F D8                   JUMPT_abs              $D81F
  $D849  8E FC 00                   PUSH_imm2              $00FC
  $D84C  0C                         LOADL_quick   ; inline operand = 12
  $D84D  8C 76 6F                   LOADR_imm2             $6F76
  $D850  BB                         ADD
  $D851  B4                         POPR
  $D852  B3                         PUSHL
  $D853  D3                         BYTE_DEREF
  $D854  DA                         AND
  $D855  D4                         BYTE_POPSTORE
  $D856  40                         LOADL_qimm   ; inline operand = 0
  $D857  2A                         STORE_quick   ; inline operand = 10
  $D858  0B                         LOADL_quick   ; inline operand = 11
  $D859  1A                         LOADR_quick   ; inline operand = 10
  $D85A  BB                         ADD
  $D85B  D3                         BYTE_DEREF
  $D85C  B3                         PUSHL
  $D85D  89 4F                      BYTE_LOADL_imm1        +79
  $D85F  B4                         POPR
  $D860  C6                         UCMPLT
  $D861  D8 71 D8                   JUMPF_abs              $D871
  $D864  0A                         LOADL_quick   ; inline operand = 10
  $D865  D0                         INC
  $D866  B3                         PUSHL
  $D867  0C                         LOADL_quick   ; inline operand = 12
  $D868  8C 76 6F                   LOADR_imm2             $6F76
  $D86B  BB                         ADD
  $D86C  B4                         POPR
  $D86D  B3                         PUSHL
  $D86E  D3                         BYTE_DEREF
  $D86F  DB                         OR
  $D870  D4                         BYTE_POPSTORE
  $D871  0A                         LOADL_quick   ; inline operand = 10
  $D872  D0                         INC
  $D873  2A                         STORE_quick   ; inline operand = 10
  $D874  0A                         LOADL_quick   ; inline operand = 10
  $D875  53                         LOADR_qimm   ; inline operand = 3
  $D876  C6                         UCMPLT
  $D877  D7 58 D8                   JUMPT_abs              $D858
  $D87A  CF                         RETURN

; ============================================================
; sub $D87B   (frame_off=-4, body @ $D880)   [PRG $7D87B]
; ============================================================
  $D880  0C                         LOADL_quick   ; inline operand = 12
  $D881  57                         LOADR_qimm   ; inline operand = 7
  $D882  B5                         MULT
  $D883  8C 96 6C                   LOADR_imm2             $6C96
  $D886  BB                         ADD
  $D887  D3                         BYTE_DEREF
  $D888  5F                         LOADR_qimm   ; inline operand = 15
  $D889  DA                         AND
  $D88A  B3                         PUSHL
  $D88B  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $D88F  8F 14                      BYTE_ADD_imm1          +20
  $D891  B3                         PUSHL
  $D892  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $D896  55                         LOADR_qimm   ; inline operand = 5
  $D897  BE                         URSHIFT
  $D898  57                         LOADR_qimm   ; inline operand = 7
  $D899  DA                         AND
  $D89A  5A                         LOADR_qimm   ; inline operand = 10
  $D89B  B5                         MULT
  $D89C  2B                         STORE_quick   ; inline operand = 11
  $D89D  0C                         LOADL_quick   ; inline operand = 12
  $D89E  57                         LOADR_qimm   ; inline operand = 7
  $D89F  B5                         MULT
  $D8A0  8C 96 6C                   LOADR_imm2             $6C96
  $D8A3  BB                         ADD
  $D8A4  D3                         BYTE_DEREF
  $D8A5  5F                         LOADR_qimm   ; inline operand = 15
  $D8A6  DA                         AND
  $D8A7  B3                         PUSHL
  $D8A8  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $D8AC  8F 14                      BYTE_ADD_imm1          +20
  $D8AE  B3                         PUSHL
  $D8AF  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $D8B3  53                         LOADR_qimm   ; inline operand = 3
  $D8B4  DA                         AND
  $D8B5  5A                         LOADR_qimm   ; inline operand = 10
  $D8B6  B5                         MULT
  $D8B7  2A                         STORE_quick   ; inline operand = 10
  $D8B8  0B                         LOADL_quick   ; inline operand = 11
  $D8B9  1A                         LOADR_quick   ; inline operand = 10
  $D8BA  BB                         ADD
  $D8BB  8F 14                      BYTE_ADD_imm1          +20
  $D8BD  CF                         RETURN

; ============================================================
; sub $D8BE   (frame_off=-6, body @ $D8C3)   [PRG $7D8BE]
; ============================================================
  $D8C3  0C                         LOADL_quick   ; inline operand = 12
  $D8C4  57                         LOADR_qimm   ; inline operand = 7
  $D8C5  B5                         MULT
  $D8C6  8C 96 6C                   LOADR_imm2             $6C96
  $D8C9  BB                         ADD
  $D8CA  D3                         BYTE_DEREF
  $D8CB  5F                         LOADR_qimm   ; inline operand = 15
  $D8CC  DA                         AND
  $D8CD  B3                         PUSHL
  $D8CE  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $D8D2  8F 14                      BYTE_ADD_imm1          +20
  $D8D4  B3                         PUSHL
  $D8D5  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $D8D9  55                         LOADR_qimm   ; inline operand = 5
  $D8DA  BE                         URSHIFT
  $D8DB  57                         LOADR_qimm   ; inline operand = 7
  $D8DC  DA                         AND
  $D8DD  2B                         STORE_quick   ; inline operand = 11
  $D8DE  0C                         LOADL_quick   ; inline operand = 12
  $D8DF  57                         LOADR_qimm   ; inline operand = 7
  $D8E0  B5                         MULT
  $D8E1  8C 96 6C                   LOADR_imm2             $6C96
  $D8E4  BB                         ADD
  $D8E5  D3                         BYTE_DEREF
  $D8E6  5F                         LOADR_qimm   ; inline operand = 15
  $D8E7  DA                         AND
  $D8E8  B3                         PUSHL
  $D8E9  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $D8ED  8F 14                      BYTE_ADD_imm1          +20
  $D8EF  B3                         PUSHL
  $D8F0  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $D8F4  52                         LOADR_qimm   ; inline operand = 2
  $D8F5  BE                         URSHIFT
  $D8F6  53                         LOADR_qimm   ; inline operand = 3
  $D8F7  DA                         AND
  $D8F8  2A                         STORE_quick   ; inline operand = 10
  $D8F9  0C                         LOADL_quick   ; inline operand = 12
  $D8FA  57                         LOADR_qimm   ; inline operand = 7
  $D8FB  B5                         MULT
  $D8FC  8C 96 6C                   LOADR_imm2             $6C96
  $D8FF  BB                         ADD
  $D900  D3                         BYTE_DEREF
  $D901  5F                         LOADR_qimm   ; inline operand = 15
  $D902  DA                         AND
  $D903  B3                         PUSHL
  $D904  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $D908  8F 14                      BYTE_ADD_imm1          +20
  $D90A  B3                         PUSHL
  $D90B  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $D90F  54                         LOADR_qimm   ; inline operand = 4
  $D910  BE                         URSHIFT
  $D911  51                         LOADR_qimm   ; inline operand = 1
  $D912  DA                         AND
  $D913  29                         STORE_quick   ; inline operand = 9
  $D914  44                         LOADL_qimm   ; inline operand = 4
  $D915  19                         LOADR_quick   ; inline operand = 9
  $D916  BC                         SUB
  $D917  B3                         PUSHL
  $D918  4A                         LOADL_qimm   ; inline operand = 10
  $D919  1A                         LOADR_quick   ; inline operand = 10
  $D91A  BC                         SUB
  $D91B  B3                         PUSHL
  $D91C  89 14                      BYTE_LOADL_imm1        +20
  $D91E  1B                         LOADR_quick   ; inline operand = 11
  $D91F  BC                         SUB
  $D920  8B 64                      BYTE_LOADR_imm1        +100
  $D922  B5                         MULT
  $D923  8B 14                      BYTE_LOADR_imm1        +20
  $D925  B6                         SDIV
  $D926  B4                         POPR
  $D927  B5                         MULT
  $D928  5A                         LOADR_qimm   ; inline operand = 10
  $D929  B6                         SDIV
  $D92A  B4                         POPR
  $D92B  B5                         MULT
  $D92C  54                         LOADR_qimm   ; inline operand = 4
  $D92D  B6                         SDIV
  $D92E  CF                         RETURN

; ============================================================
; sub $D92F   (frame_off=-8, body @ $D934)   [PRG $7D92F]
; ============================================================
  $D934  0C                         LOADL_quick   ; inline operand = 12
  $D935  57                         LOADR_qimm   ; inline operand = 7
  $D936  B5                         MULT
  $D937  8C 96 6C                   LOADR_imm2             $6C96
  $D93A  BB                         ADD
  $D93B  D3                         BYTE_DEREF
  $D93C  5F                         LOADR_qimm   ; inline operand = 15
  $D93D  DA                         AND
  $D93E  B3                         PUSHL
  $D93F  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $D943  8F 14                      BYTE_ADD_imm1          +20
  $D945  B3                         PUSHL
  $D946  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $D94A  55                         LOADR_qimm   ; inline operand = 5
  $D94B  BE                         URSHIFT
  $D94C  57                         LOADR_qimm   ; inline operand = 7
  $D94D  DA                         AND
  $D94E  2A                         STORE_quick   ; inline operand = 10
  $D94F  0C                         LOADL_quick   ; inline operand = 12
  $D950  57                         LOADR_qimm   ; inline operand = 7
  $D951  B5                         MULT
  $D952  8C 96 6C                   LOADR_imm2             $6C96
  $D955  BB                         ADD
  $D956  D3                         BYTE_DEREF
  $D957  5F                         LOADR_qimm   ; inline operand = 15
  $D958  DA                         AND
  $D959  B3                         PUSHL
  $D95A  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $D95E  8F 14                      BYTE_ADD_imm1          +20
  $D960  B3                         PUSHL
  $D961  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $D965  52                         LOADR_qimm   ; inline operand = 2
  $D966  BE                         URSHIFT
  $D967  53                         LOADR_qimm   ; inline operand = 3
  $D968  DA                         AND
  $D969  29                         STORE_quick   ; inline operand = 9
  $D96A  0C                         LOADL_quick   ; inline operand = 12
  $D96B  57                         LOADR_qimm   ; inline operand = 7
  $D96C  B5                         MULT
  $D96D  8C 96 6C                   LOADR_imm2             $6C96
  $D970  BB                         ADD
  $D971  D3                         BYTE_DEREF
  $D972  5F                         LOADR_qimm   ; inline operand = 15
  $D973  DA                         AND
  $D974  B3                         PUSHL
  $D975  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $D979  8F 14                      BYTE_ADD_imm1          +20
  $D97B  B3                         PUSHL
  $D97C  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $D980  54                         LOADR_qimm   ; inline operand = 4
  $D981  BE                         URSHIFT
  $D982  51                         LOADR_qimm   ; inline operand = 1
  $D983  DA                         AND
  $D984  28                         STORE_quick   ; inline operand = 8
  $D985  08                         LOADL_quick   ; inline operand = 8
  $D986  73                         ADD_qimm   ; inline operand = 3
  $D987  B3                         PUSHL
  $D988  4A                         LOADL_qimm   ; inline operand = 10
  $D989  1A                         LOADR_quick   ; inline operand = 10
  $D98A  BC                         SUB
  $D98B  B3                         PUSHL
  $D98C  09                         LOADL_quick   ; inline operand = 9
  $D98D  5A                         LOADR_qimm   ; inline operand = 10
  $D98E  B5                         MULT
  $D98F  8F 64                      BYTE_ADD_imm1          +100
  $D991  B4                         POPR
  $D992  B5                         MULT
  $D993  5A                         LOADR_qimm   ; inline operand = 10
  $D994  B6                         SDIV
  $D995  B4                         POPR
  $D996  B5                         MULT
  $D997  54                         LOADR_qimm   ; inline operand = 4
  $D998  B6                         SDIV
  $D999  2B                         STORE_quick   ; inline operand = 11
  $D99A  0B                         LOADL_quick   ; inline operand = 11
  $D99B  8B 64                      BYTE_LOADR_imm1        +100
  $D99D  C4                         SCMPGT
  $D99E  D8 A6 D9                   JUMPF_abs              $D9A6
  $D9A1  89 64                      BYTE_LOADL_imm1        +100
  $D9A3  D6 A7 D9                   JUMP_abs               $D9A7

; ============================================================
; sub $D9A8   (frame_off=-4, body @ $D9AD)   [PRG $7D9A8]
; ============================================================
  $D9AD  0C                         LOADL_quick   ; inline operand = 12
  $D9AE  57                         LOADR_qimm   ; inline operand = 7
  $D9AF  B5                         MULT
  $D9B0  8C 96 6C                   LOADR_imm2             $6C96
  $D9B3  BB                         ADD
  $D9B4  D3                         BYTE_DEREF
  $D9B5  5F                         LOADR_qimm   ; inline operand = 15
  $D9B6  DA                         AND
  $D9B7  B3                         PUSHL
  $D9B8  E9 32 D5 02                CALL_abs_imm1          $D532 {native}, $02
  $D9BC  8F 14                      BYTE_ADD_imm1          +20
  $D9BE  B3                         PUSHL
  $D9BF  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $D9C3  55                         LOADR_qimm   ; inline operand = 5
  $D9C4  BE                         URSHIFT
  $D9C5  57                         LOADR_qimm   ; inline operand = 7
  $D9C6  DA                         AND
  $D9C7  2A                         STORE_quick   ; inline operand = 10
  $D9C8  0A                         LOADL_quick   ; inline operand = 10
  $D9C9  55                         LOADR_qimm   ; inline operand = 5
  $D9CA  B6                         SDIV
  $D9CB  8B 32                      BYTE_LOADR_imm1        +50
  $D9CD  B5                         MULT
  $D9CE  B3                         PUSHL
  $D9CF  0A                         LOADL_quick   ; inline operand = 10
  $D9D0  72                         ADD_qimm   ; inline operand = 2
  $D9D1  52                         LOADR_qimm   ; inline operand = 2
  $D9D2  B6                         SDIV
  $D9D3  8C 2C 01                   LOADR_imm2             $012C
  $D9D6  B5                         MULT
  $D9D7  B3                         PUSHL
  $D9D8  0A                         LOADL_quick   ; inline operand = 10
  $D9D9  52                         LOADR_qimm   ; inline operand = 2
  $D9DA  B9                         SMOD
  $D9DB  1A                         LOADR_quick   ; inline operand = 10
  $D9DC  B5                         MULT
  $D9DD  8B 32                      BYTE_LOADR_imm1        +50
  $D9DF  B5                         MULT
  $D9E0  B4                         POPR
  $D9E1  BB                         ADD
  $D9E2  B4                         POPR
  $D9E3  BB                         ADD
  $D9E4  90 38 FF                   ADD_imm2               $FF38
  $D9E7  2B                         STORE_quick   ; inline operand = 11
  $D9E8  0B                         LOADL_quick   ; inline operand = 11
  $D9E9  CF                         RETURN

; ============================================================
; sub $D9EA   (frame_off=-8, body @ $D9EF)   [PRG $7D9EA]
; ============================================================
  $D9EF  0C                         LOADL_quick   ; inline operand = 12
  $D9F0  8B 18                      BYTE_LOADR_imm1        +24
  $D9F2  B5                         MULT
  $D9F3  8C A4 6A                   LOADR_imm2             $6AA4
  $D9F6  BB                         ADD
  $D9F7  28                         STORE_quick   ; inline operand = 8
  $D9F8  08                         LOADL_quick   ; inline operand = 8
  $D9F9  76                         ADD_qimm   ; inline operand = 6
  $D9FA  2A                         STORE_quick   ; inline operand = 10
  $D9FB  7A                         ADD_qimm   ; inline operand = 10
  $D9FC  29                         STORE_quick   ; inline operand = 9
  $D9FD  40                         LOADL_qimm   ; inline operand = 0
  $D9FE  2B                         STORE_quick   ; inline operand = 11
  $D9FF  D6 0B DA                   JUMP_abs               $DA0B

; ============================================================
; sub $DA2A   (frame_off=-8, body @ $DA2F)   [PRG $7DA2A]
; ============================================================
  $DA2F  0C                         LOADL_quick   ; inline operand = 12
  $DA30  8B 18                      BYTE_LOADR_imm1        +24
  $DA32  B5                         MULT
  $DA33  8C A4 6A                   LOADR_imm2             $6AA4
  $DA36  BB                         ADD
  $DA37  28                         STORE_quick   ; inline operand = 8
  $DA38  08                         LOADL_quick   ; inline operand = 8
  $DA39  76                         ADD_qimm   ; inline operand = 6
  $DA3A  2B                         STORE_quick   ; inline operand = 11
  $DA3B  7A                         ADD_qimm   ; inline operand = 10
  $DA3C  2A                         STORE_quick   ; inline operand = 10
  $DA3D  40                         LOADL_qimm   ; inline operand = 0
  $DA3E  29                         STORE_quick   ; inline operand = 9
  $DA3F  D6 4B DA                   JUMP_abs               $DA4B

; ============================================================
; sub $DA6A   (frame_off=-2, body @ $DA6F)   [PRG $7DA6A]
; ============================================================
  $DA6F  0C                         LOADL_quick   ; inline operand = 12
  $DA70  57                         LOADR_qimm   ; inline operand = 7
  $DA71  B5                         MULT
  $DA72  8C 90 6C                   LOADR_imm2             $6C90
  $DA75  BB                         ADD
  $DA76  2B                         STORE_quick   ; inline operand = 11
  $DA77  0B                         LOADL_quick   ; inline operand = 11
  $DA78  74                         ADD_qimm   ; inline operand = 4
  $DA79  B0                         DEREF
  $DA7A  B3                         PUSHL
  $DA7B  0B                         LOADL_quick   ; inline operand = 11
  $DA7C  73                         ADD_qimm   ; inline operand = 3
  $DA7D  D3                         BYTE_DEREF
  $DA7E  B3                         PUSHL
  $DA7F  3C                         PUSH_quick   ; inline operand = 12
  $DA80  E9 2A DA 02                CALL_abs_imm1          $DA2A {native}, $02
  $DA84  B4                         POPR
  $DA85  BB                         ADD
  $DA86  B4                         POPR
  $DA87  BB                         ADD
  $DA88  CF                         RETURN

; ============================================================
; sub $DA89   (frame_off=-6, body @ $DA8E)   [PRG $7DA89]
; ============================================================
  $DA8E  45                         LOADL_qimm   ; inline operand = 5
  $DA8F  CD                         SWAP
  $DA90  A0 0B 00                   BYTE_LOADL_far         $000B
  $DA93  B5                         MULT
  $DA94  A2 0B 00                   BYTE_STORE_far         $000B
  $DA97  40                         LOADL_qimm   ; inline operand = 0
  $DA98  2B                         STORE_quick   ; inline operand = 11
  $DA99  40                         LOADL_qimm   ; inline operand = 0
  $DA9A  D6 C8 DA                   JUMP_abs               $DAC8

; ============================================================
; sub $DAD1   (frame_off=-12, body @ $DAD6)   [PRG $7DAD1]
; ============================================================
  $DAD6  40                         LOADL_qimm   ; inline operand = 0
  $DAD7  2B                         STORE_quick   ; inline operand = 11
  $DAD8  8A 00 10                   LOADL_imm2             $1000
  $DADB  28                         STORE_quick   ; inline operand = 8
  $DADC  0C                         LOADL_quick   ; inline operand = 12
  $DADD  5A                         LOADR_qimm   ; inline operand = 10
  $DADE  BD                         LSHIFT
  $DADF  CD                         SWAP
  $DAE0  08                         LOADL_quick   ; inline operand = 8
  $DAE1  BB                         ADD
  $DAE2  28                         STORE_quick   ; inline operand = 8
  $DAE3  64                         PUSH_qimm   ; inline operand = 4
  $DAE4  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $DAE8  26                         STORE_quick   ; inline operand = 6
  $DAE9  06                         LOADL_quick   ; inline operand = 6
  $DAEA  58                         LOADR_qimm   ; inline operand = 8
  $DAEB  BD                         LSHIFT
  $DAEC  CD                         SWAP
  $DAED  08                         LOADL_quick   ; inline operand = 8
  $DAEE  BB                         ADD
  $DAEF  28                         STORE_quick   ; inline operand = 8
  $DAF0  64                         PUSH_qimm   ; inline operand = 4
  $DAF1  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $DAF5  26                         STORE_quick   ; inline operand = 6
  $DAF6  06                         LOADL_quick   ; inline operand = 6
  $DAF7  56                         LOADR_qimm   ; inline operand = 6
  $DAF8  BD                         LSHIFT
  $DAF9  CD                         SWAP
  $DAFA  08                         LOADL_quick   ; inline operand = 8
  $DAFB  BB                         ADD
  $DAFC  28                         STORE_quick   ; inline operand = 8
  $DAFD  64                         PUSH_qimm   ; inline operand = 4
  $DAFE  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $DB02  26                         STORE_quick   ; inline operand = 6
  $DB03  06                         LOADL_quick   ; inline operand = 6
  $DB04  54                         LOADR_qimm   ; inline operand = 4
  $DB05  BD                         LSHIFT
  $DB06  CD                         SWAP
  $DB07  08                         LOADL_quick   ; inline operand = 8
  $DB08  BB                         ADD
  $DB09  28                         STORE_quick   ; inline operand = 8
  $DB0A  64                         PUSH_qimm   ; inline operand = 4
  $DB0B  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $DB0F  26                         STORE_quick   ; inline operand = 6
  $DB10  06                         LOADL_quick   ; inline operand = 6
  $DB11  D2                         LSHIFT1
  $DB12  D2                         LSHIFT1
  $DB13  CD                         SWAP
  $DB14  08                         LOADL_quick   ; inline operand = 8
  $DB15  BB                         ADD
  $DB16  28                         STORE_quick   ; inline operand = 8
  $DB17  64                         PUSH_qimm   ; inline operand = 4
  $DB18  E9 E1 CF 02                CALL_abs_imm1          $CFE1 (load_operand16_14) {native}, $02
  $DB1C  26                         STORE_quick   ; inline operand = 6
  $DB1D  06                         LOADL_quick   ; inline operand = 6
  $DB1E  CD                         SWAP
  $DB1F  08                         LOADL_quick   ; inline operand = 8
  $DB20  BB                         ADD
  $DB21  28                         STORE_quick   ; inline operand = 8
  $DB22  8A 49 65                   LOADL_imm2             $6549
  $DB25  2A                         STORE_quick   ; inline operand = 10
  $DB26  90 1F 01                   ADD_imm2               $011F
  $DB29  29                         STORE_quick   ; inline operand = 9
  $DB2A  D6 3F DB                   JUMP_abs               $DB3F

; ============================================================
; sub $DB4B   (frame_off=-4, body @ $DB50)   [PRG $7DB4B]
; ============================================================
  $DB50  0C                         LOADL_quick   ; inline operand = 12
  $DB51  D1                         DEC
  $DB52  8B 33                      BYTE_LOADR_imm1        +51
  $DB54  B5                         MULT
  $DB55  8C 04 60                   LOADR_imm2             $6004
  $DB58  BB                         ADD
  $DB59  2B                         STORE_quick   ; inline operand = 11
  $DB5A  0B                         LOADL_quick   ; inline operand = 11
  $DB5B  75                         ADD_qimm   ; inline operand = 5
  $DB5C  B3                         PUSHL
  $DB5D  0C                         LOADL_quick   ; inline operand = 12
  $DB5E  8C D4 A0                   LOADR_imm2             $C0D4
  $DB61  BB                         ADD
  $DB62  B3                         PUSHL
  $DB63  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $DB67  D4                         BYTE_POPSTORE
  $DB68  0B                         LOADL_quick   ; inline operand = 11
  $DB69  74                         ADD_qimm   ; inline operand = 4
  $DB6A  B3                         PUSHL
  $DB6B  44                         LOADL_qimm   ; inline operand = 4
  $DB6C  D4                         BYTE_POPSTORE
  $DB6D  0B                         LOADL_quick   ; inline operand = 11
  $DB6E  77                         ADD_qimm   ; inline operand = 7
  $DB6F  B3                         PUSHL
  $DB70  0B                         LOADL_quick   ; inline operand = 11
  $DB71  79                         ADD_qimm   ; inline operand = 9
  $DB72  B1                         POPSTORE
  $DB73  0B                         LOADL_quick   ; inline operand = 11
  $DB74  77                         ADD_qimm   ; inline operand = 7
  $DB75  B0                         DEREF
  $DB76  B3                         PUSHL
  $DB77  40                         LOADL_qimm   ; inline operand = 0
  $DB78  D4                         BYTE_POPSTORE
  $DB79  0B                         LOADL_quick   ; inline operand = 11
  $DB7A  75                         ADD_qimm   ; inline operand = 5
  $DB7B  D3                         BYTE_DEREF
  $DB7C  8B 13                      BYTE_LOADR_imm1        +19
  $DB7E  B5                         MULT
  $DB7F  8C D8 AF                   LOADR_imm2             $CFD8
  $DB82  BB                         ADD
  $DB83  2A                         STORE_quick   ; inline operand = 10
  $DB84  3B                         PUSH_quick   ; inline operand = 11
  $DB85  0A                         LOADL_quick   ; inline operand = 10
  $DB86  7F                         ADD_qimm   ; inline operand = 15
  $DB87  B3                         PUSHL
  $DB88  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $DB8C  D4                         BYTE_POPSTORE
  $DB8D  0B                         LOADL_quick   ; inline operand = 11
  $DB8E  D0                         INC
  $DB8F  B3                         PUSHL
  $DB90  0A                         LOADL_quick   ; inline operand = 10
  $DB91  8F 10                      BYTE_ADD_imm1          +16
  $DB93  B3                         PUSHL
  $DB94  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $DB98  D4                         BYTE_POPSTORE
  $DB99  0B                         LOADL_quick   ; inline operand = 11
  $DB9A  72                         ADD_qimm   ; inline operand = 2
  $DB9B  B3                         PUSHL
  $DB9C  0A                         LOADL_quick   ; inline operand = 10
  $DB9D  8F 11                      BYTE_ADD_imm1          +17
  $DB9F  B3                         PUSHL
  $DBA0  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $DBA4  D4                         BYTE_POPSTORE
  $DBA5  0B                         LOADL_quick   ; inline operand = 11
  $DBA6  73                         ADD_qimm   ; inline operand = 3
  $DBA7  B3                         PUSHL
  $DBA8  0A                         LOADL_quick   ; inline operand = 10
  $DBA9  8F 12                      BYTE_ADD_imm1          +18
  $DBAB  B3                         PUSHL
  $DBAC  E9 0C D3 02                CALL_abs_imm1          $D30C (record_field_byte) {native}, $02
  $DBB0  D4                         BYTE_POPSTORE
  $DBB1  CF                         RETURN

; ============================================================
; sub $DBB2   (frame_off=-6, body @ $DBB7)   [PRG $7DBB2]
; ============================================================
  $DBB7  0C                         LOADL_quick   ; inline operand = 12
  $DBB8  2B                         STORE_quick   ; inline operand = 11
  $DBB9  0B                         LOADL_quick   ; inline operand = 11
  $DBBA  D3                         BYTE_DEREF
  $DBBB  8B 20                      BYTE_LOADR_imm1        +32
  $DBBD  C0                         CMPEQ
  $DBBE  D7 E1 DB                   JUMPT_abs              $DBE1
  $DBC1  0B                         LOADL_quick   ; inline operand = 11
  $DBC2  D3                         BYTE_DEREF
  $DBC3  59                         LOADR_qimm   ; inline operand = 9
  $DBC4  C0                         CMPEQ
  $DBC5  D7 E1 DB                   JUMPT_abs              $DBE1
  $DBC8  B7 18 00 00 00 00          LONG                   $18 $00 $00 $00 $00
  $DBCE  B7 0E                      LONG                   $0E
  $DBD0  FA                         UNK
  $DBD1  FF                         UNK
  $DBD2  0B                         LOADL_quick   ; inline operand = 11
  $DBD3  D3                         BYTE_DEREF
  $DBD4  B3                         PUSHL
  $DBD5  89 30                      BYTE_LOADL_imm1        +48
  $DBD7  B4                         POPR
  $DBD8  C3                         SCMPLE
  $DBD9  D7 E6 DB                   JUMPT_abs              $DBE6
  $DBDC  B7 0C                      LONG                   $0C
  $DBDE  FA                         UNK
  $DBDF  FF                         UNK
  $DBE0  CF                         RETURN

; ============================================================
; sub $DC0C   (frame_off=+0, body @ $DC11)   [PRG $7DC0C]
; ============================================================
  $DC11  A0 0B 00                   BYTE_LOADL_far         $000B
  $DC14  B3                         PUSHL
  $DC15  89 61                      BYTE_LOADL_imm1        +97
  $DC17  B4                         POPR
  $DC18  C3                         SCMPLE
  $DC19  D8 2D DC                   JUMPF_abs              $DC2D
  $DC1C  A0 0B 00                   BYTE_LOADL_far         $000B
  $DC1F  8B 7A                      BYTE_LOADR_imm1        +122
  $DC21  C3                         SCMPLE
  $DC22  D8 2D DC                   JUMPF_abs              $DC2D
  $DC25  A0 0B 00                   BYTE_LOADL_far         $000B
  $DC28  8F E0                      BYTE_ADD_imm1          -32
  $DC2A  D6 30 DC                   JUMP_abs               $DC30

; ============================================================
; sub $DC31   (frame_off=+0, body @ $DC36)   [PRG $7DC31]
; ============================================================
  $DC36  A0 0B 00                   BYTE_LOADL_far         $000B
  $DC39  B3                         PUSHL
  $DC3A  89 41                      BYTE_LOADL_imm1        +65
  $DC3C  B4                         POPR
  $DC3D  C3                         SCMPLE
  $DC3E  D8 52 DC                   JUMPF_abs              $DC52
  $DC41  A0 0B 00                   BYTE_LOADL_far         $000B
  $DC44  8B 5A                      BYTE_LOADR_imm1        +90
  $DC46  C3                         SCMPLE
  $DC47  D8 52 DC                   JUMPF_abs              $DC52
  $DC4A  A0 0B 00                   BYTE_LOADL_far         $000B
  $DC4D  8F 20                      BYTE_ADD_imm1          +32
  $DC4F  D6 55 DC                   JUMP_abs               $DC55

; ============================================================
; sub $DC56   (frame_off=+0, body @ $DC5B)   [PRG $7DC56]
; ============================================================
  $DC5B  0C                         LOADL_quick   ; inline operand = 12
  $DC5C  50                         LOADR_qimm   ; inline operand = 0
  $DC5D  C2                         SCMPLT
  $DC5E  D8 66 DC                   JUMPF_abs              $DC66
  $DC61  89 FF                      BYTE_LOADL_imm1        -1
  $DC63  D6 71 DC                   JUMP_abs               $DC71

; ============================================================
; sub $DC72   (frame_off=+0, body @ $DC77)   [PRG $7DC72]
; ============================================================
  $DC77  AC 6C DD                   CALL_abs               $DD6C (max_s16) {native}
  $DC7A  AC 8C DD                   CALL_abs               $DD8C {native}
  $DC7D  AC E0 DD                   CALL_abs               $DDE0 (memcpy_ptr) {native}
  $DC80  AC B5 DD                   CALL_abs               $DDB5 {native}
  $DC83  AC EC DC                   CALL_abs               $DCEC (copy_from_bank) {native}
  $DC86  AC 3A DE                   CALL_abs               $DE3A (call_in_bank_dcd1) {native}
  $DC89  AC 8B DE                   CALL_abs               $DE8B {native}
  $DC8C  AC BF DE                   CALL_abs               $DEBF {native}
  $DC8F  AC A6 DE                   CALL_abs               $DEA6 (str_copy) {native}
  $DC92  AC F3 DE                   CALL_abs               $DEF3 {native}
  $DC95  CF                         RETURN

; ============================================================
; sub $DC96   (frame_off=+0, body @ $DC9B)   [PRG $7DC96]
; ============================================================
  $DC9B  8E E0 00                   PUSH_imm2              $00E0
  $DC9E  0F                         LOADL_quick   ; inline operand = 15
  $DC9F  D2                         LSHIFT1
  $DCA0  D2                         LSHIFT1
  $DCA1  B3                         PUSHL
  $DCA2  0E                         LOADL_quick   ; inline operand = 14
  $DCA3  8B 18                      BYTE_LOADR_imm1        +24
  $DCA5  B5                         MULT
  $DCA6  B4                         POPR
  $DCA7  BB                         ADD
  $DCA8  8C 4E DF                   LOADR_imm2             $DF4E
  $DCAB  BB                         ADD
  $DCAC  B0                         DEREF
  $DCAD  B3                         PUSHL
  $DCAE  0F                         LOADL_quick   ; inline operand = 15
  $DCAF  D2                         LSHIFT1
  $DCB0  D2                         LSHIFT1
  $DCB1  B3                         PUSHL
  $DCB2  0E                         LOADL_quick   ; inline operand = 14
  $DCB3  8B 18                      BYTE_LOADR_imm1        +24
  $DCB5  B5                         MULT
  $DCB6  B4                         POPR
  $DCB7  BB                         ADD
  $DCB8  8C 4C DF                   LOADR_imm2             $DF4C
  $DCBB  BB                         ADD
  $DCBC  B0                         DEREF
  $DCBD  B3                         PUSHL
  $DCBE  62                         PUSH_qimm   ; inline operand = 2
  $DCBF  62                         PUSH_qimm   ; inline operand = 2
  $DCC0  3D                         PUSH_quick   ; inline operand = 13
  $DCC1  3C                         PUSH_quick   ; inline operand = 12
  $DCC2  69                         PUSH_qimm   ; inline operand = 9
  $DCC3  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $DCC7  CF                         RETURN

; ============================================================
; sub $DCC8   (frame_off=+0, body @ $DCCD)   [PRG $7DCC8]
; ============================================================
  $DCCD  8E E0 00                   PUSH_imm2              $00E0
  $DCD0  0E                         LOADL_quick   ; inline operand = 14
  $DCD1  D2                         LSHIFT1
  $DCD2  D2                         LSHIFT1
  $DCD3  8C AE DF                   LOADR_imm2             $DFAE
  $DCD6  BB                         ADD
  $DCD7  B0                         DEREF
  $DCD8  B3                         PUSHL
  $DCD9  0E                         LOADL_quick   ; inline operand = 14
  $DCDA  D2                         LSHIFT1
  $DCDB  D2                         LSHIFT1
  $DCDC  8C AC DF                   LOADR_imm2             $DFAC
  $DCDF  BB                         ADD
  $DCE0  B0                         DEREF
  $DCE1  B3                         PUSHL
  $DCE2  62                         PUSH_qimm   ; inline operand = 2
  $DCE3  62                         PUSH_qimm   ; inline operand = 2
  $DCE4  3D                         PUSH_quick   ; inline operand = 13
  $DCE5  3C                         PUSH_quick   ; inline operand = 12
  $DCE6  69                         PUSH_qimm   ; inline operand = 9
  $DCE7  E9 D4 EE 10                CALL_abs_imm1          $EED4 (syscall_entry_struct) {native}, $10
  $DCEB  CF                         RETURN

