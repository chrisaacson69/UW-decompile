VM bytecode disassembly
  ROM:          Uncharted Waters (USA).nes
  mode:         bulk dump of bank 9
  opcode spec:  vm-opcodes-v2.toml via nobunaga_vm.OPCODE_INFO (execution-validated lengths)
  labels:       0 CPU addresses named

  bank 9: found 2 bytecode-subroutine stubs

; ============================================================
; sub $8003   (frame_off=-2, body @ $8008)   [PRG $12003]
; ============================================================
  $8008  A5 68 72                   BYTE_LOADL_abs         $7268
  $800B  2B                         STORE_quick   ; inline operand = 11
  $800C  3B                         PUSH_quick   ; inline operand = 11
  $800D  E9 12 80 02                CALL_abs_imm1          $8012 {bytecode}, $02
  $8011  CF                         RETURN

; ============================================================
; sub $8012   (frame_off=-6, body @ $8017)   [PRG $12012]
; ============================================================
  $8017  0C                         LOADL_quick   ; inline operand = 12
  $8018  54                         LOADR_qimm   ; inline operand = 4
  $8019  BD                         LSHIFT
  $801A  8C 62 66                   LOADR_imm2             $6662
  $801D  BB                         ADD
  $801E  2A                         STORE_quick   ; inline operand = 10
  $801F  0C                         LOADL_quick   ; inline operand = 12
  $8020  D1                         DEC
  $8021  8B 33                      BYTE_LOADR_imm1        +51
  $8023  B5                         MULT
  $8024  8C 04 60                   LOADR_imm2             $6004
  $8027  BB                         ADD
  $8028  29                         STORE_quick   ; inline operand = 9
  $8029  09                         LOADL_quick   ; inline operand = 9
  $802A  74                         ADD_qimm   ; inline operand = 4
  $802B  D3                         BYTE_DEREF
  $802C  D8 5C 80                   JUMPF_abs              $805C
  $802F  0A                         LOADL_quick   ; inline operand = 10
  $8030  73                         ADD_qimm   ; inline operand = 3
  $8031  D3                         BYTE_DEREF
  $8032  B3                         PUSHL
  $8033  0A                         LOADL_quick   ; inline operand = 10
  $8034  72                         ADD_qimm   ; inline operand = 2
  $8035  D3                         BYTE_DEREF
  $8036  B3                         PUSHL
  $8037  0A                         LOADL_quick   ; inline operand = 10
  $8038  D0                         INC
  $8039  D3                         BYTE_DEREF
  $803A  B3                         PUSHL
  $803B  0A                         LOADL_quick   ; inline operand = 10
  $803C  D3                         BYTE_DEREF
  $803D  B3                         PUSHL
  $803E  E9 B0 D1 08                CALL_abs_imm1          $D1B0 (find_port_by_key) {native}, $08
  $8042  2B                         STORE_quick   ; inline operand = 11
  $8043  09                         LOADL_quick   ; inline operand = 9
  $8044  75                         ADD_qimm   ; inline operand = 5
  $8045  D3                         BYTE_DEREF
  $8046  1B                         LOADR_quick   ; inline operand = 11
  $8047  C0                         CMPEQ
  $8048  D8 5C 80                   JUMPF_abs              $805C
  $804B  3B                         PUSH_quick   ; inline operand = 11
  $804C  3C                         PUSH_quick   ; inline operand = 12
  $804D  09                         LOADL_quick   ; inline operand = 9
  $804E  74                         ADD_qimm   ; inline operand = 4
  $804F  D3                         BYTE_DEREF
  $8050  D1                         DEC
  $8051  D2                         LSHIFT1
  $8052  8C 60 9E                   LOADR_imm2             $9E60
  $8055  BB                         ADD
  $8056  B0                         DEREF
  $8057  EA 04                      CALLPTR_imm1           $04
  $8059  D6 61 80                   JUMP_abs               $8061
 >$805C  3C                         PUSH_quick   ; inline operand = 12
  $805D  E9 62 80 02                CALL_abs_imm1          $8062 (nat_9_0062) {native}, $02
 >$8061  CF                         RETURN

