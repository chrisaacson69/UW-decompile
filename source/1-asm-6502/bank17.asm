; ============================================================================
; Uncharted Waters - bank 17 NATIVE disassembly (window base $A000)
; 3 native subs: 3 $E299-stubbed (VM-frame entries) + 0 plain + 0 jumptable/CALL-recovered
; coverage: 192B code+inline (2%) + 1259B $FF-pad + 6741B data
; control-flow-followed, inline bridges ($E299/$E338) skipped; calls resolved vs mesen-labels.toml.
; ============================================================================
.base $A000

; ---- sub_17_0754  [stub]  <- (entry: bytecode/OS via $E299)
nat_17_074e: jsr $E299                    ; 17:A74E  native-call prologue
            .db $00 $fc $ff            ; inline: argcount $00, frame $fffc
  $A754: a9 02       lda #$02    ; PRG $22754
  $A756: 85 18       sta $18    ; PRG $22756
  $A758: 86 19       stx $19    ; PRG $22758
  $A75A: a0 0f       ldy #$0f    ; PRG $2275A
  $A75C: b1 04       lda ($04),y    ; PRG $2275C
  $A75E: 85 14       sta $14    ; PRG $2275E
  $A760: c8          iny    ; PRG $22760
  $A761: b1 04       lda ($04),y    ; PRG $22761
  $A763: 85 15       sta $15    ; PRG $22763
  $A765: a0 14       ldy #$14    ; PRG $22765
  $A767: a2 18       ldx #$18    ; PRG $22767
  $A769: a9 10       lda #$10    ; PRG $22769
  $A76B: 20 fd e1    jsr $e1fd   ; div16_unsigned    ; PRG $2276B
  $A76E: a5 10       lda $10    ; PRG $2276E
  $A770: 05 11       ora $11    ; PRG $22770
  $A772: d0 03       bne $a777    ; PRG $22772
  $A774: 4c 80 87    jmp $8780    ; PRG $22774
  $A777: a9 02       lda #$02    ; PRG $22777
  $A779: 85 18       sta $18    ; PRG $22779
  $A77B: 86 19       stx $19    ; PRG $2277B
  $A77D: 4c 88 87    jmp $8788   ; cargo_left    ; PRG $2277D

; ---- sub_17_08ef  [stub]  <- (entry: bytecode/OS via $E299)
nat_17_08e9: jsr $E299                    ; 17:A8E9  native-call prologue
            .db $00 $dd $ff            ; inline: argcount $00, frame $ffdd
  $A8EF: a9 02       lda #$02    ; PRG $228EF
  $A8F1: a0 fe       ldy #$fe    ; PRG $228F1
  $A8F3: 91 06       sta ($06),y    ; PRG $228F3
  $A8F5: 8a          txa    ; PRG $228F5
  $A8F6: c8          iny    ; PRG $228F6
  $A8F7: 91 06       sta ($06),y    ; PRG $228F7
  $A8F9: a0 fa       ldy #$fa    ; PRG $228F9
  $A8FB: 91 06       sta ($06),y    ; PRG $228FB
  $A8FD: c8          iny    ; PRG $228FD
  $A8FE: 91 06       sta ($06),y    ; PRG $228FE
  $A900: 4c 12 89    jmp $8912    ; PRG $22900

; ---- sub_17_0b10  [stub]  <- (entry: bytecode/OS via $E299)
nat_17_0b0a: jsr $E299                    ; 17:AB0A  native-call prologue
            .db $00 $f4 $ff            ; inline: argcount $00, frame $fff4
  $AB10: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $22B10
  $AB13: 75 a6 02    .db $75 $a6 $02  -> vm $A675 argc 2    ; PRG $22B13
  $AB16: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $22B16
  $AB19: 89 a5 02    .db $89 $a5 $02  -> vm $A589 argc 2    ; PRG $22B19
  $AB1C: 48          pha    ; PRG $22B1C
  $AB1D: 48          pha    ; PRG $22B1D
  $AB1E: 48          pha    ; PRG $22B1E
  $AB1F: 48          pha    ; PRG $22B1F
  $AB20: 48          pha    ; PRG $22B20
  $AB21: a9 12       lda #$12    ; PRG $22B21
  $AB23: 48          pha    ; PRG $22B23
  $AB24: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $22B24
  $AB27: d4 ee 08    .db $d4 $ee $08  -> vm $EED4 argc 8    ; PRG $22B27
  $AB2A: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $22B2A
  $AB2D: 37 ce 02    .db $37 $ce $02  -> vm $CE37 argc 2    ; PRG $22B2D
  $AB30: a9 02       lda #$02    ; PRG $22B30
  $AB32: 48          pha    ; PRG $22B32
  $AB33: a9 11       lda #$11    ; PRG $22B33
  $AB35: 48          pha    ; PRG $22B35
  $AB36: a9 73       lda #$73    ; PRG $22B36
  $AB38: 48          pha    ; PRG $22B38
  $AB39: a9 90       lda #$90    ; PRG $22B39
  $AB3B: 48          pha    ; PRG $22B3B
  $AB3C: a9 aa       lda #$aa    ; PRG $22B3C
  $AB3E: 48          pha    ; PRG $22B3E
  $AB3F: a9 6e       lda #$6e    ; PRG $22B3F
  $AB41: 48          pha    ; PRG $22B41
  $AB42: 8a          txa    ; PRG $22B42
  $AB43: 48          pha    ; PRG $22B43
  $AB44: a9 e0       lda #$e0    ; PRG $22B44
  $AB46: 48          pha    ; PRG $22B46
  $AB47: 8a          txa    ; PRG $22B47
  $AB48: 48          pha    ; PRG $22B48
  $AB49: a9 02       lda #$02    ; PRG $22B49
  $AB4B: 48          pha    ; PRG $22B4B
  $AB4C: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $22B4C
  $AB4F: ec dc 0c    .db $ec $dc $0c  -> vm $DCEC argc 12    ; PRG $22B4F
  $AB52: a9 02       lda #$02    ; PRG $22B52
  $AB54: 48          pha    ; PRG $22B54
  $AB55: a9 11       lda #$11    ; PRG $22B55
  $AB57: 48          pha    ; PRG $22B57
  $AB58: a9 75       lda #$75    ; PRG $22B58
  $AB5A: 48          pha    ; PRG $22B5A
  $AB5B: a9 a1       lda #$a1    ; PRG $22B5B
  $AB5D: 48          pha    ; PRG $22B5D
  $AB5E: a9 ac       lda #$ac    ; PRG $22B5E
  $AB60: 48          pha    ; PRG $22B60
  $AB61: a9 7f       lda #$7f    ; PRG $22B61
  $AB63: 48          pha    ; PRG $22B63
  $AB64: 8a          txa    ; PRG $22B64
  $AB65: 48          pha    ; PRG $22B65
  $AB66: a9 e0       lda #$e0    ; PRG $22B66
  $AB68: 48          pha    ; PRG $22B68
  $AB69: 8a          txa    ; PRG $22B69
  $AB6A: 48          pha    ; PRG $22B6A
  $AB6B: a9 02       lda #$02    ; PRG $22B6B
  $AB6D: 48          pha    ; PRG $22B6D
  $AB6E: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $22B6E
  $AB71: ec dc 0c    .db $ec $dc $0c  -> vm $DCEC argc 12    ; PRG $22B71
  $AB74: a0 f4       ldy #$f4    ; PRG $22B74
  $AB76: 91 06       sta ($06),y    ; PRG $22B76
  $AB78: c8          iny    ; PRG $22B78
  $AB79: 91 06       sta ($06),y    ; PRG $22B79
  $AB7B: 4c 8d 8b    jmp $8b8d    ; PRG $22B7B
