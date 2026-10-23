; ============================================================================
; Uncharted Waters - bank 7 NATIVE disassembly (window base $A000)
; 35 native subs: 7 $E299-stubbed (VM-frame entries) + 0 plain + 28 jumptable/CALL-recovered
; coverage: 6623B code+inline (80%) + 53B $FF-pad + 1516B data
; control-flow-followed, inline bridges ($E299/$E338) skipped; calls resolved vs mesen-labels.toml.
; ============================================================================
.base $A000

; ---- sub_7_0009  [stub]  <- (entry: bytecode/OS via $E299)
nat_7_0003: jsr $E299                    ; 7:A003  native-call prologue
            .db $00 $f6 $ff            ; inline: argcount $00, frame $fff6
  $A009: a0 0d       ldy #$0d    ; PRG $0E009
  $A00B: b1 04       lda ($04),y    ; PRG $0E00B
  $A00D: 85 18       sta $18    ; PRG $0E00D
  $A00F: c8          iny    ; PRG $0E00F
  $A010: b1 04       lda ($04),y    ; PRG $0E010
  $A012: 85 19       sta $19    ; PRG $0E012
  $A014: a1 18       lda ($18,x)    ; PRG $0E014
  $A016: 85 14       sta $14    ; PRG $0E016
  $A018: 86 15       stx $15    ; PRG $0E018
  $A01A: a5 14       lda $14    ; PRG $0E01A
  $A01C: a0 fc       ldy #$fc    ; PRG $0E01C
  $A01E: 91 06       sta ($06),y    ; PRG $0E01E
  $A020: a5 15       lda $15    ; PRG $0E020
  $A022: c8          iny    ; PRG $0E022
  $A023: 91 06       sta ($06),y    ; PRG $0E023
  $A025: a0 0d       ldy #$0d    ; PRG $0E025
  $A027: b1 04       lda ($04),y    ; PRG $0E027
  $A029: 85 18       sta $18    ; PRG $0E029
  $A02B: c8          iny    ; PRG $0E02B
  $A02C: b1 04       lda ($04),y    ; PRG $0E02C
  $A02E: 85 19       sta $19    ; PRG $0E02E
  $A030: a0 01       ldy #$01    ; PRG $0E030
  $A032: b1 18       lda ($18),y    ; PRG $0E032
  $A034: 85 14       sta $14    ; PRG $0E034
  $A036: 86 15       stx $15    ; PRG $0E036
  $A038: a5 14       lda $14    ; PRG $0E038
  $A03A: a0 fa       ldy #$fa    ; PRG $0E03A
  $A03C: 91 06       sta ($06),y    ; PRG $0E03C
  $A03E: a5 15       lda $15    ; PRG $0E03E
  $A040: c8          iny    ; PRG $0E040
  $A041: 91 06       sta ($06),y    ; PRG $0E041
  $A043: a0 0b       ldy #$0b    ; PRG $0E043
  $A045: b1 04       lda ($04),y    ; PRG $0E045
  $A047: 85 18       sta $18    ; PRG $0E047
  $A049: c8          iny    ; PRG $0E049
  $A04A: b1 04       lda ($04),y    ; PRG $0E04A
  $A04C: 85 19       sta $19    ; PRG $0E04C
  $A04E: a0 07       ldy #$07    ; PRG $0E04E
  $A050: b1 18       lda ($18),y    ; PRG $0E050
  $A052: a0 fe       ldy #$fe    ; PRG $0E052
  $A054: 91 06       sta ($06),y    ; PRG $0E054
  $A056: a0 08       ldy #$08    ; PRG $0E056
  $A058: b1 18       lda ($18),y    ; PRG $0E058
  $A05A: a0 ff       ldy #$ff    ; PRG $0E05A
  $A05C: 91 06       sta ($06),y    ; PRG $0E05C
  $A05E: 88          dey    ; PRG $0E05E
  $A05F: b1 06       lda ($06),y    ; PRG $0E05F
  $A061: 85 18       sta $18    ; PRG $0E061
  $A063: c8          iny    ; PRG $0E063
  $A064: b1 06       lda ($06),y    ; PRG $0E064
  $A066: 85 19       sta $19    ; PRG $0E066
  $A068: a1 18       lda ($18,x)    ; PRG $0E068
  $A06A: 85 14       sta $14    ; PRG $0E06A
  $A06C: 86 15       stx $15    ; PRG $0E06C
  $A06E: a5 14       lda $14    ; PRG $0E06E
  $A070: a0 f8       ldy #$f8    ; PRG $0E070
  $A072: 91 06       sta ($06),y    ; PRG $0E072
  $A074: a5 15       lda $15    ; PRG $0E074
  $A076: c8          iny    ; PRG $0E076
  $A077: 91 06       sta ($06),y    ; PRG $0E077
  $A079: 18          clc    ; PRG $0E079
  $A07A: a9 01       lda #$01    ; PRG $0E07A
  $A07C: a0 fe       ldy #$fe    ; PRG $0E07C
  $A07E: 71 06       adc ($06),y    ; PRG $0E07E
  $A080: 91 06       sta ($06),y    ; PRG $0E080
  $A082: 8a          txa    ; PRG $0E082
  $A083: c8          iny    ; PRG $0E083
  $A084: 71 06       adc ($06),y    ; PRG $0E084
  $A086: 91 06       sta ($06),y    ; PRG $0E086
  $A088: 88          dey    ; PRG $0E088
  $A089: b1 06       lda ($06),y    ; PRG $0E089
  $A08B: 85 18       sta $18    ; PRG $0E08B
  $A08D: c8          iny    ; PRG $0E08D
  $A08E: b1 06       lda ($06),y    ; PRG $0E08E
  $A090: 85 19       sta $19    ; PRG $0E090
  $A092: a1 18       lda ($18,x)    ; PRG $0E092
  $A094: 85 14       sta $14    ; PRG $0E094
  $A096: 86 15       stx $15    ; PRG $0E096
  $A098: a5 14       lda $14    ; PRG $0E098
  $A09A: a0 f6       ldy #$f6    ; PRG $0E09A
  $A09C: 91 06       sta ($06),y    ; PRG $0E09C
  $A09E: a5 15       lda $15    ; PRG $0E09E
  $A0A0: c8          iny    ; PRG $0E0A0
  $A0A1: 91 06       sta ($06),y    ; PRG $0E0A1
  $A0A3: a0 fc       ldy #$fc    ; PRG $0E0A3
  $A0A5: b1 06       lda ($06),y    ; PRG $0E0A5
  $A0A7: c8          iny    ; PRG $0E0A7
  $A0A8: 11 06       ora ($06),y    ; PRG $0E0A8
  $A0AA: f0 03       beq $a0af    ; PRG $0E0AA
  $A0AC: 4c cd 80    jmp $80cd    ; PRG $0E0AC
  $A0AF: a0 f8       ldy #$f8    ; PRG $0E0AF
  $A0B1: b1 06       lda ($06),y    ; PRG $0E0B1
  $A0B3: c9 47       cmp #$47    ; PRG $0E0B3
  $A0B5: d0 05       bne $a0bc    ; PRG $0E0B5
  $A0B7: c8          iny    ; PRG $0E0B7
  $A0B8: b1 06       lda ($06),y    ; PRG $0E0B8
  $A0BA: c9 00       cmp #$00    ; PRG $0E0BA
  $A0BC: f0 03       beq $a0c1    ; PRG $0E0BC
  $A0BE: 4c cd 80    jmp $80cd    ; PRG $0E0BE
  $A0C1: a9 ff       lda #$ff    ; PRG $0E0C1
  $A0C3: a0 f8       ldy #$f8    ; PRG $0E0C3
  $A0C5: 91 06       sta ($06),y    ; PRG $0E0C5
  $A0C7: c8          iny    ; PRG $0E0C7
  $A0C8: 91 06       sta ($06),y    ; PRG $0E0C8
  $A0CA: 4c f5 80    jmp $80f5   ; bj_delay    ; PRG $0E0CA

; ---- sub_7_00cd  [recovered]  <- (uncalled?)
  $A0CD: a0 f8       ldy #$f8    ; PRG $0E0CD
  $A0CF: b1 06       lda ($06),y    ; PRG $0E0CF
  $A0D1: c8          iny    ; PRG $0E0D1
  $A0D2: 11 06       ora ($06),y    ; PRG $0E0D2
  $A0D4: f0 03       beq $a0d9    ; PRG $0E0D4
  $A0D6: 4c f5 80    jmp $80f5   ; bj_delay    ; PRG $0E0D6
  $A0D9: a0 fc       ldy #$fc    ; PRG $0E0D9
  $A0DB: b1 06       lda ($06),y    ; PRG $0E0DB
  $A0DD: c9 47       cmp #$47    ; PRG $0E0DD
  $A0DF: d0 05       bne $a0e6    ; PRG $0E0DF
  $A0E1: c8          iny    ; PRG $0E0E1
  $A0E2: b1 06       lda ($06),y    ; PRG $0E0E2
  $A0E4: c9 00       cmp #$00    ; PRG $0E0E4
  $A0E6: f0 03       beq $a0eb    ; PRG $0E0E6
  $A0E8: 4c f5 80    jmp $80f5   ; bj_delay    ; PRG $0E0E8
  $A0EB: a9 48       lda #$48    ; PRG $0E0EB
  $A0ED: a0 f8       ldy #$f8    ; PRG $0E0ED
  $A0EF: 91 06       sta ($06),y    ; PRG $0E0EF
  $A0F1: 8a          txa    ; PRG $0E0F1
  $A0F2: c8          iny    ; PRG $0E0F2
  $A0F3: 91 06       sta ($06),y    ; PRG $0E0F3
  $A0F5: 38          sec    ; PRG $0E0F5
  $A0F6: a0 f8       ldy #$f8    ; PRG $0E0F6
  $A0F8: b1 06       lda ($06),y    ; PRG $0E0F8
  $A0FA: a0 fc       ldy #$fc    ; PRG $0E0FA
  $A0FC: f1 06       sbc ($06),y    ; PRG $0E0FC
  $A0FE: 85 18       sta $18    ; PRG $0E0FE
  $A100: a0 f9       ldy #$f9    ; PRG $0E100
  $A102: b1 06       lda ($06),y    ; PRG $0E102
  $A104: a0 fd       ldy #$fd    ; PRG $0E104
  $A106: f1 06       sbc ($06),y    ; PRG $0E106
  $A108: 85 19       sta $19    ; PRG $0E108
  $A10A: a5 19       lda $19    ; PRG $0E10A
  $A10C: 48          pha    ; PRG $0E10C
  $A10D: a5 18       lda $18    ; PRG $0E10D
  $A10F: 48          pha    ; PRG $0E10F
  $A110: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0E110
  $A113: 56 dc 04    .db $56 $dc $04  -> vm $DC56 argc 4    ; PRG $0E113
  $A116: 18          clc    ; PRG $0E116
  $A117: 98          tya    ; PRG $0E117
  $A118: 65 08       adc $08    ; PRG $0E118
  $A11A: a0 fc       ldy #$fc    ; PRG $0E11A
  $A11C: 91 06       sta ($06),y    ; PRG $0E11C
  $A11E: 8a          txa    ; PRG $0E11E
  $A11F: 65 09       adc $09    ; PRG $0E11F
  $A121: c8          iny    ; PRG $0E121
  $A122: 91 06       sta ($06),y    ; PRG $0E122
  $A124: 38          sec    ; PRG $0E124
  $A125: a0 f6       ldy #$f6    ; PRG $0E125
  $A127: b1 06       lda ($06),y    ; PRG $0E127
  $A129: a0 fa       ldy #$fa    ; PRG $0E129
  $A12B: f1 06       sbc ($06),y    ; PRG $0E12B
  $A12D: 85 18       sta $18    ; PRG $0E12D
  $A12F: a0 f7       ldy #$f7    ; PRG $0E12F
  $A131: b1 06       lda ($06),y    ; PRG $0E131
  $A133: a0 fb       ldy #$fb    ; PRG $0E133
  $A135: f1 06       sbc ($06),y    ; PRG $0E135
  $A137: 85 19       sta $19    ; PRG $0E137
  $A139: a5 19       lda $19    ; PRG $0E139
  $A13B: 48          pha    ; PRG $0E13B
  $A13C: a5 18       lda $18    ; PRG $0E13C
  $A13E: 48          pha    ; PRG $0E13E
  $A13F: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0E13F
  $A142: 56 dc 04    .db $56 $dc $04  -> vm $DC56 argc 4    ; PRG $0E142
  $A145: 18          clc    ; PRG $0E145
  $A146: 98          tya    ; PRG $0E146
  $A147: 65 08       adc $08    ; PRG $0E147
  $A149: a0 fa       ldy #$fa    ; PRG $0E149
  $A14B: 91 06       sta ($06),y    ; PRG $0E14B
  $A14D: 8a          txa    ; PRG $0E14D
  $A14E: 65 09       adc $09    ; PRG $0E14E
  $A150: c8          iny    ; PRG $0E150
  $A151: 91 06       sta ($06),y    ; PRG $0E151
  $A153: a0 0d       ldy #$0d    ; PRG $0E153
  $A155: b1 04       lda ($04),y    ; PRG $0E155
  $A157: 85 18       sta $18    ; PRG $0E157
  $A159: c8          iny    ; PRG $0E159
  $A15A: b1 04       lda ($04),y    ; PRG $0E15A
  $A15C: 85 19       sta $19    ; PRG $0E15C
  $A15E: a9 03       lda #$03    ; PRG $0E15E
  $A160: 85 14       sta $14    ; PRG $0E160
  $A162: 86 15       stx $15    ; PRG $0E162
  $A164: a0 fc       ldy #$fc    ; PRG $0E164
  $A166: b1 06       lda ($06),y    ; PRG $0E166
  $A168: 85 10       sta $10    ; PRG $0E168
  $A16A: c8          iny    ; PRG $0E16A
  $A16B: b1 06       lda ($06),y    ; PRG $0E16B
  $A16D: 85 11       sta $11    ; PRG $0E16D
  $A16F: a0 10       ldy #$10    ; PRG $0E16F
  $A171: a2 14       ldx #$14    ; PRG $0E171
  $A173: a9 0c       lda #$0c    ; PRG $0E173
  $A175: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0E175
  $A178: 18          clc    ; PRG $0E178
  $A179: a5 0c       lda $0c    ; PRG $0E179
  $A17B: a0 fa       ldy #$fa    ; PRG $0E17B
  $A17D: 71 06       adc ($06),y    ; PRG $0E17D
  $A17F: 85 14       sta $14    ; PRG $0E17F
  $A181: a5 0d       lda $0d    ; PRG $0E181
  $A183: c8          iny    ; PRG $0E183
  $A184: 71 06       adc ($06),y    ; PRG $0E184
  $A186: 85 15       sta $15    ; PRG $0E186
  $A188: 18          clc    ; PRG $0E188
  $A189: a5 14       lda $14    ; PRG $0E189
  $A18B: 69 c2       adc #$c2    ; PRG $0E18B
  $A18D: 85 10       sta $10    ; PRG $0E18D
  $A18F: a5 15       lda $15    ; PRG $0E18F
  $A191: 69 9f       adc #$9f    ; PRG $0E191
  $A193: 85 11       sta $11    ; PRG $0E193
  $A195: a1 10       lda ($10,x)    ; PRG $0E195
  $A197: a0 08       ldy #$08    ; PRG $0E197
  $A199: 91 18       sta ($18),y    ; PRG $0E199
  $A19B: 60          rts    ; PRG $0E19B

; ---- sub_7_01a2  [stub]  <- (entry: bytecode/OS via $E299)
nat_7_019c: jsr $E299                    ; 7:A19C  native-call prologue
            .db $00 $f8 $ff            ; inline: argcount $00, frame $fff8
  $A1A2: a9 05       lda #$05    ; PRG $0E1A2
  $A1A4: 85 18       sta $18    ; PRG $0E1A4
  $A1A6: 86 19       stx $19    ; PRG $0E1A6
  $A1A8: a0 0b       ldy #$0b    ; PRG $0E1A8
  $A1AA: b1 04       lda ($04),y    ; PRG $0E1AA
  $A1AC: 85 14       sta $14    ; PRG $0E1AC
  $A1AE: c8          iny    ; PRG $0E1AE
  $A1AF: b1 04       lda ($04),y    ; PRG $0E1AF
  $A1B1: 85 15       sta $15    ; PRG $0E1B1
  $A1B3: a0 14       ldy #$14    ; PRG $0E1B3
  $A1B5: a2 18       ldx #$18    ; PRG $0E1B5
  $A1B7: a9 10       lda #$10    ; PRG $0E1B7
  $A1B9: 20 d9 e1    jsr $e1d9   ; alu_div_push_remainder    ; PRG $0E1B9
  $A1BC: a5 10       lda $10    ; PRG $0E1BC
  $A1BE: a0 f8       ldy #$f8    ; PRG $0E1BE
  $A1C0: 91 06       sta ($06),y    ; PRG $0E1C0
  $A1C2: a5 11       lda $11    ; PRG $0E1C2
  $A1C4: c8          iny    ; PRG $0E1C4
  $A1C5: 91 06       sta ($06),y    ; PRG $0E1C5
  $A1C7: 88          dey    ; PRG $0E1C7
  $A1C8: b1 06       lda ($06),y    ; PRG $0E1C8
  $A1CA: c8          iny    ; PRG $0E1CA
  $A1CB: 11 06       ora ($06),y    ; PRG $0E1CB
  $A1CD: d0 03       bne $a1d2    ; PRG $0E1CD
  $A1CF: 4c 1b 82    jmp $821b    ; PRG $0E1CF
  $A1D2: a9 f0       lda #$f0    ; PRG $0E1D2
  $A1D4: a0 fc       ldy #$fc    ; PRG $0E1D4
  $A1D6: 91 06       sta ($06),y    ; PRG $0E1D6
  $A1D8: 8a          txa    ; PRG $0E1D8
  $A1D9: c8          iny    ; PRG $0E1D9
  $A1DA: 91 06       sta ($06),y    ; PRG $0E1DA
  $A1DC: a9 07       lda #$07    ; PRG $0E1DC
  $A1DE: 85 18       sta $18    ; PRG $0E1DE
  $A1E0: 86 19       stx $19    ; PRG $0E1E0
  $A1E2: 18          clc    ; PRG $0E1E2
  $A1E3: a9 14       lda #$14    ; PRG $0E1E3
  $A1E5: a0 f8       ldy #$f8    ; PRG $0E1E5
  $A1E7: 71 06       adc ($06),y    ; PRG $0E1E7
  $A1E9: 85 14       sta $14    ; PRG $0E1E9
  $A1EB: 8a          txa    ; PRG $0E1EB
  $A1EC: c8          iny    ; PRG $0E1EC
  $A1ED: 71 06       adc ($06),y    ; PRG $0E1ED
  $A1EF: 85 15       sta $15    ; PRG $0E1EF
  $A1F1: a0 14       ldy #$14    ; PRG $0E1F1
  $A1F3: a2 18       ldx #$18    ; PRG $0E1F3
  $A1F5: a9 10       lda #$10    ; PRG $0E1F5
  $A1F7: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0E1F7
  $A1FA: 18          clc    ; PRG $0E1FA
  $A1FB: a5 10       lda $10    ; PRG $0E1FB
  $A1FD: 69 45       adc #$45    ; PRG $0E1FD
  $A1FF: 85 18       sta $18    ; PRG $0E1FF
  $A201: a5 11       lda $11    ; PRG $0E201
  $A203: 69 65       adc #$65    ; PRG $0E203
  $A205: 85 19       sta $19    ; PRG $0E205
  $A207: a1 18       lda ($18,x)    ; PRG $0E207
  $A209: 85 14       sta $14    ; PRG $0E209
  $A20B: 86 15       stx $15    ; PRG $0E20B
  $A20D: a5 14       lda $14    ; PRG $0E20D
  $A20F: a0 fa       ldy #$fa    ; PRG $0E20F
  $A211: 91 06       sta ($06),y    ; PRG $0E211
  $A213: a5 15       lda $15    ; PRG $0E213
  $A215: c8          iny    ; PRG $0E215
  $A216: 91 06       sta ($06),y    ; PRG $0E216
  $A218: 4c 18 83    jmp $8318   ; nat_3_0318    ; PRG $0E218

; ---- sub_7_021b  [recovered]  <- (uncalled?)
  $A21B: a9 18       lda #$18    ; PRG $0E21B
  $A21D: 85 18       sta $18    ; PRG $0E21D
  $A21F: 86 19       stx $19    ; PRG $0E21F
  $A221: a0 0b       ldy #$0b    ; PRG $0E221
  $A223: b1 04       lda ($04),y    ; PRG $0E223
  $A225: 85 14       sta $14    ; PRG $0E225
  $A227: c8          iny    ; PRG $0E227
  $A228: b1 04       lda ($04),y    ; PRG $0E228
  $A22A: 85 15       sta $15    ; PRG $0E22A
  $A22C: a0 14       ldy #$14    ; PRG $0E22C
  $A22E: a2 18       ldx #$18    ; PRG $0E22E
  $A230: a9 10       lda #$10    ; PRG $0E230
  $A232: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0E232
  $A235: 18          clc    ; PRG $0E235
  $A236: a5 10       lda $10    ; PRG $0E236
  $A238: 69 a4       adc #$a4    ; PRG $0E238
  $A23A: 85 18       sta $18    ; PRG $0E23A
  $A23C: a5 11       lda $11    ; PRG $0E23C
  $A23E: 69 6a       adc #$6a    ; PRG $0E23E
  $A240: 85 19       sta $19    ; PRG $0E240
  $A242: a1 18       lda ($18,x)    ; PRG $0E242
  $A244: 85 14       sta $14    ; PRG $0E244
  $A246: 86 15       stx $15    ; PRG $0E246
  $A248: a5 14       lda $14    ; PRG $0E248
  $A24A: a0 f8       ldy #$f8    ; PRG $0E24A
  $A24C: 91 06       sta ($06),y    ; PRG $0E24C
  $A24E: a5 15       lda $15    ; PRG $0E24E
  $A250: c8          iny    ; PRG $0E250
  $A251: 91 06       sta ($06),y    ; PRG $0E251
  $A253: a9 0a       lda #$0a    ; PRG $0E253
  $A255: 85 18       sta $18    ; PRG $0E255
  $A257: 86 19       stx $19    ; PRG $0E257
  $A259: 88          dey    ; PRG $0E259
  $A25A: b1 06       lda ($06),y    ; PRG $0E25A
  $A25C: 85 14       sta $14    ; PRG $0E25C
  $A25E: c8          iny    ; PRG $0E25E
  $A25F: b1 06       lda ($06),y    ; PRG $0E25F
  $A261: 85 15       sta $15    ; PRG $0E261
  $A263: a0 14       ldy #$14    ; PRG $0E263
  $A265: a2 18       ldx #$18    ; PRG $0E265
  $A267: a9 10       lda #$10    ; PRG $0E267
  $A269: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0E269
  $A26C: 18          clc    ; PRG $0E26C
  $A26D: a5 10       lda $10    ; PRG $0E26D
  $A26F: 69 be       adc #$be    ; PRG $0E26F
  $A271: a0 fe       ldy #$fe    ; PRG $0E271
  $A273: 91 06       sta ($06),y    ; PRG $0E273
  $A275: a5 11       lda $11    ; PRG $0E275
  $A277: 69 6b       adc #$6b    ; PRG $0E277
  $A279: c8          iny    ; PRG $0E279
  $A27A: 91 06       sta ($06),y    ; PRG $0E27A
  $A27C: 88          dey    ; PRG $0E27C
  $A27D: b1 06       lda ($06),y    ; PRG $0E27D
  $A27F: 85 18       sta $18    ; PRG $0E27F
  $A281: c8          iny    ; PRG $0E281
  $A282: b1 06       lda ($06),y    ; PRG $0E282
  $A284: 85 19       sta $19    ; PRG $0E284
  $A286: a0 03       ldy #$03    ; PRG $0E286
  $A288: b1 18       lda ($18),y    ; PRG $0E288
  $A28A: 85 14       sta $14    ; PRG $0E28A
  $A28C: 86 15       stx $15    ; PRG $0E28C
  $A28E: a9 01       lda #$01    ; PRG $0E28E
  $A290: 85 18       sta $18    ; PRG $0E290
  $A292: 86 19       stx $19    ; PRG $0E292
  $A294: a0 fe       ldy #$fe    ; PRG $0E294
  $A296: b1 06       lda ($06),y    ; PRG $0E296
  $A298: 85 10       sta $10    ; PRG $0E298
  $A29A: c8          iny    ; PRG $0E29A
  $A29B: b1 06       lda ($06),y    ; PRG $0E29B
  $A29D: 85 11       sta $11    ; PRG $0E29D
  $A29F: a0 02       ldy #$02    ; PRG $0E29F
  $A2A1: b1 10       lda ($10),y    ; PRG $0E2A1
  $A2A3: 85 0c       sta $0c    ; PRG $0E2A3
  $A2A5: 86 0d       stx $0d    ; PRG $0E2A5
  $A2A7: a0 0c       ldy #$0c    ; PRG $0E2A7
  $A2A9: a2 18       ldx #$18    ; PRG $0E2A9
  $A2AB: a9 10       lda #$10    ; PRG $0E2AB
  $A2AD: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0E2AD
  $A2B0: a0 fe       ldy #$fe    ; PRG $0E2B0
  $A2B2: b1 06       lda ($06),y    ; PRG $0E2B2
  $A2B4: 85 18       sta $18    ; PRG $0E2B4
  $A2B6: c8          iny    ; PRG $0E2B6
  $A2B7: b1 06       lda ($06),y    ; PRG $0E2B7
  $A2B9: 85 19       sta $19    ; PRG $0E2B9
  $A2BB: a0 01       ldy #$01    ; PRG $0E2BB
  $A2BD: b1 18       lda ($18),y    ; PRG $0E2BD
  $A2BF: 85 0c       sta $0c    ; PRG $0E2BF
  $A2C1: 86 0d       stx $0d    ; PRG $0E2C1
  $A2C3: 18          clc    ; PRG $0E2C3
  $A2C4: a5 0c       lda $0c    ; PRG $0E2C4
  $A2C6: 65 10       adc $10    ; PRG $0E2C6
  $A2C8: 85 18       sta $18    ; PRG $0E2C8
  $A2CA: a5 0d       lda $0d    ; PRG $0E2CA
  $A2CC: 65 11       adc $11    ; PRG $0E2CC
  $A2CE: 85 19       sta $19    ; PRG $0E2CE
  $A2D0: 18          clc    ; PRG $0E2D0
  $A2D1: a5 18       lda $18    ; PRG $0E2D1
  $A2D3: 65 14       adc $14    ; PRG $0E2D3
  $A2D5: a0 fc       ldy #$fc    ; PRG $0E2D5
  $A2D7: 91 06       sta ($06),y    ; PRG $0E2D7
  $A2D9: a5 19       lda $19    ; PRG $0E2D9
  $A2DB: 65 15       adc $15    ; PRG $0E2DB
  $A2DD: c8          iny    ; PRG $0E2DD
  $A2DE: 91 06       sta ($06),y    ; PRG $0E2DE
  $A2E0: a9 07       lda #$07    ; PRG $0E2E0
  $A2E2: 85 18       sta $18    ; PRG $0E2E2
  $A2E4: 86 19       stx $19    ; PRG $0E2E4
  $A2E6: a0 f8       ldy #$f8    ; PRG $0E2E6
  $A2E8: b1 06       lda ($06),y    ; PRG $0E2E8
  $A2EA: 85 14       sta $14    ; PRG $0E2EA
  $A2EC: c8          iny    ; PRG $0E2EC
  $A2ED: b1 06       lda ($06),y    ; PRG $0E2ED
  $A2EF: 85 15       sta $15    ; PRG $0E2EF
  $A2F1: a0 14       ldy #$14    ; PRG $0E2F1
  $A2F3: a2 18       ldx #$18    ; PRG $0E2F3
  $A2F5: a9 10       lda #$10    ; PRG $0E2F5
  $A2F7: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0E2F7
  $A2FA: 18          clc    ; PRG $0E2FA
  $A2FB: a5 10       lda $10    ; PRG $0E2FB
  $A2FD: 69 45       adc #$45    ; PRG $0E2FD
  $A2FF: 85 18       sta $18    ; PRG $0E2FF
  $A301: a5 11       lda $11    ; PRG $0E301
  $A303: 69 65       adc #$65    ; PRG $0E303
  $A305: 85 19       sta $19    ; PRG $0E305
  $A307: a1 18       lda ($18,x)    ; PRG $0E307
  $A309: 85 14       sta $14    ; PRG $0E309
  $A30B: 86 15       stx $15    ; PRG $0E30B
  $A30D: a5 14       lda $14    ; PRG $0E30D
  $A30F: a0 fa       ldy #$fa    ; PRG $0E30F
  $A311: 91 06       sta ($06),y    ; PRG $0E311
  $A313: a5 15       lda $15    ; PRG $0E313
  $A315: c8          iny    ; PRG $0E315
  $A316: 91 06       sta ($06),y    ; PRG $0E316
  $A318: a9 08       lda #$08    ; PRG $0E318
  $A31A: 85 18       sta $18    ; PRG $0E31A
  $A31C: 86 19       stx $19    ; PRG $0E31C
  $A31E: 85 14       sta $14    ; PRG $0E31E
  $A320: 86 15       stx $15    ; PRG $0E320
  $A322: a0 fa       ldy #$fa    ; PRG $0E322
  $A324: b1 06       lda ($06),y    ; PRG $0E324
  $A326: 85 10       sta $10    ; PRG $0E326
  $A328: c8          iny    ; PRG $0E328
  $A329: b1 06       lda ($06),y    ; PRG $0E329
  $A32B: 85 11       sta $11    ; PRG $0E32B
  $A32D: c8          iny    ; PRG $0E32D
  $A32E: b1 06       lda ($06),y    ; PRG $0E32E
  $A330: 85 0c       sta $0c    ; PRG $0E330
  $A332: c8          iny    ; PRG $0E332
  $A333: b1 06       lda ($06),y    ; PRG $0E333
  $A335: 85 0d       sta $0d    ; PRG $0E335
  $A337: a0 0c       ldy #$0c    ; PRG $0E337
  $A339: a2 10       ldx #$10    ; PRG $0E339
  $A33B: a9 08       lda #$08    ; PRG $0E33B
  $A33D: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0E33D
  $A340: a0 08       ldy #$08    ; PRG $0E340
  $A342: a2 14       ldx #$14    ; PRG $0E342
  $A344: a9 10       lda #$10    ; PRG $0E344
  $A346: 20 b4 e1    jsr $e1b4   ; alu_abs16    ; PRG $0E346
  $A349: 18          clc    ; PRG $0E349
  $A34A: a5 10       lda $10    ; PRG $0E34A
  $A34C: a0 fc       ldy #$fc    ; PRG $0E34C
  $A34E: 71 06       adc ($06),y    ; PRG $0E34E
  $A350: 85 14       sta $14    ; PRG $0E350
  $A352: a5 11       lda $11    ; PRG $0E352
  $A354: c8          iny    ; PRG $0E354
  $A355: 71 06       adc ($06),y    ; PRG $0E355
  $A357: 85 15       sta $15    ; PRG $0E357
  $A359: a0 14       ldy #$14    ; PRG $0E359
  $A35B: a2 18       ldx #$18    ; PRG $0E35B
  $A35D: a9 08       lda #$08    ; PRG $0E35D
  $A35F: 20 b4 e1    jsr $e1b4   ; alu_abs16    ; PRG $0E35F
  $A362: 60          rts    ; PRG $0E362

; ---- sub_7_0369  [stub]  <- (entry: bytecode/OS via $E299)
nat_7_0363: jsr $E299                    ; 7:A363  native-call prologue
            .db $00 $f4 $ff            ; inline: argcount $00, frame $fff4
  $A369: a9 05       lda #$05    ; PRG $0E369
  $A36B: 85 18       sta $18    ; PRG $0E36B
  $A36D: 86 19       stx $19    ; PRG $0E36D
  $A36F: a0 0b       ldy #$0b    ; PRG $0E36F
  $A371: b1 04       lda ($04),y    ; PRG $0E371
  $A373: 85 14       sta $14    ; PRG $0E373
  $A375: c8          iny    ; PRG $0E375
  $A376: b1 04       lda ($04),y    ; PRG $0E376
  $A378: 85 15       sta $15    ; PRG $0E378
  $A37A: a0 14       ldy #$14    ; PRG $0E37A
  $A37C: a2 18       ldx #$18    ; PRG $0E37C
  $A37E: a9 10       lda #$10    ; PRG $0E37E
  $A380: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0E380
  $A383: a5 10       lda $10    ; PRG $0E383
  $A385: a0 0b       ldy #$0b    ; PRG $0E385
  $A387: 91 04       sta ($04),y    ; PRG $0E387
  $A389: a5 11       lda $11    ; PRG $0E389
  $A38B: c8          iny    ; PRG $0E38B
  $A38C: 91 04       sta ($04),y    ; PRG $0E38C
  $A38E: a9 07       lda #$07    ; PRG $0E38E
  $A390: 85 18       sta $18    ; PRG $0E390
  $A392: 86 19       stx $19    ; PRG $0E392
  $A394: 88          dey    ; PRG $0E394
  $A395: b1 04       lda ($04),y    ; PRG $0E395
  $A397: 85 14       sta $14    ; PRG $0E397
  $A399: c8          iny    ; PRG $0E399
  $A39A: b1 04       lda ($04),y    ; PRG $0E39A
  $A39C: 85 15       sta $15    ; PRG $0E39C
  $A39E: a0 14       ldy #$14    ; PRG $0E39E
  $A3A0: a2 18       ldx #$18    ; PRG $0E3A0
  $A3A2: a9 10       lda #$10    ; PRG $0E3A2
  $A3A4: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0E3A4
  $A3A7: 18          clc    ; PRG $0E3A7
  $A3A8: a5 10       lda $10    ; PRG $0E3A8
  $A3AA: 69 90       adc #$90    ; PRG $0E3AA
  $A3AC: a0 f6       ldy #$f6    ; PRG $0E3AC
  $A3AE: 91 06       sta ($06),y    ; PRG $0E3AE
  $A3B0: a5 11       lda $11    ; PRG $0E3B0
  $A3B2: 69 6c       adc #$6c    ; PRG $0E3B2
  $A3B4: c8          iny    ; PRG $0E3B4
  $A3B5: 91 06       sta ($06),y    ; PRG $0E3B5
  $A3B7: 18          clc    ; PRG $0E3B7
  $A3B8: a9 23       lda #$23    ; PRG $0E3B8
  $A3BA: 88          dey    ; PRG $0E3BA
  $A3BB: 71 06       adc ($06),y    ; PRG $0E3BB
  $A3BD: a0 f4       ldy #$f4    ; PRG $0E3BD
  $A3BF: 91 06       sta ($06),y    ; PRG $0E3BF
  $A3C1: 8a          txa    ; PRG $0E3C1
  $A3C2: a0 f7       ldy #$f7    ; PRG $0E3C2
  $A3C4: 71 06       adc ($06),y    ; PRG $0E3C4
  $A3C6: a0 f5       ldy #$f5    ; PRG $0E3C6
  $A3C8: 91 06       sta ($06),y    ; PRG $0E3C8
  $A3CA: a9 c8       lda #$c8    ; PRG $0E3CA
  $A3CC: a0 fe       ldy #$fe    ; PRG $0E3CC
  $A3CE: 91 06       sta ($06),y    ; PRG $0E3CE
  $A3D0: 8a          txa    ; PRG $0E3D0
  $A3D1: c8          iny    ; PRG $0E3D1
  $A3D2: 91 06       sta ($06),y    ; PRG $0E3D2
  $A3D4: a0 fc       ldy #$fc    ; PRG $0E3D4
  $A3D6: 91 06       sta ($06),y    ; PRG $0E3D6
  $A3D8: c8          iny    ; PRG $0E3D8
  $A3D9: 91 06       sta ($06),y    ; PRG $0E3D9
  $A3DB: 4c fc 83    jmp $83fc    ; PRG $0E3DB

; ---- sub_7_03de  [recovered]  <- (uncalled?)
  $A3DE: 18          clc    ; PRG $0E3DE
  $A3DF: a9 01       lda #$01    ; PRG $0E3DF
  $A3E1: a0 0b       ldy #$0b    ; PRG $0E3E1
  $A3E3: 71 04       adc ($04),y    ; PRG $0E3E3
  $A3E5: 91 04       sta ($04),y    ; PRG $0E3E5
  $A3E7: 8a          txa    ; PRG $0E3E7
  $A3E8: c8          iny    ; PRG $0E3E8
  $A3E9: 71 04       adc ($04),y    ; PRG $0E3E9
  $A3EB: 91 04       sta ($04),y    ; PRG $0E3EB
  $A3ED: 18          clc    ; PRG $0E3ED
  $A3EE: a9 07       lda #$07    ; PRG $0E3EE
  $A3F0: a0 f6       ldy #$f6    ; PRG $0E3F0
  $A3F2: 71 06       adc ($06),y    ; PRG $0E3F2
  $A3F4: 91 06       sta ($06),y    ; PRG $0E3F4
  $A3F6: 8a          txa    ; PRG $0E3F6
  $A3F7: c8          iny    ; PRG $0E3F7
  $A3F8: 71 06       adc ($06),y    ; PRG $0E3F8
  $A3FA: 91 06       sta ($06),y    ; PRG $0E3FA
  $A3FC: a0 f6       ldy #$f6    ; PRG $0E3FC
  $A3FE: b1 06       lda ($06),y    ; PRG $0E3FE
  $A400: a0 f4       ldy #$f4    ; PRG $0E400
  $A402: d1 06       cmp ($06),y    ; PRG $0E402
  $A404: a0 f7       ldy #$f7    ; PRG $0E404
  $A406: b1 06       lda ($06),y    ; PRG $0E406
  $A408: a0 f5       ldy #$f5    ; PRG $0E408
  $A40A: f1 06       sbc ($06),y    ; PRG $0E40A
  $A40C: 90 03       bcc $a411    ; PRG $0E40C
  $A40E: 4c 0a 85    jmp $850a    ; PRG $0E40E
  $A411: c8          iny    ; PRG $0E411
  $A412: b1 06       lda ($06),y    ; PRG $0E412
  $A414: 85 18       sta $18    ; PRG $0E414
  $A416: c8          iny    ; PRG $0E416
  $A417: b1 06       lda ($06),y    ; PRG $0E417
  $A419: 85 19       sta $19    ; PRG $0E419
  $A41B: a0 06       ldy #$06    ; PRG $0E41B
  $A41D: b1 18       lda ($18),y    ; PRG $0E41D
  $A41F: 85 14       sta $14    ; PRG $0E41F
  $A421: 86 15       stx $15    ; PRG $0E421
  $A423: a5 14       lda $14    ; PRG $0E423
  $A425: 29 40       and #$40    ; PRG $0E425
  $A427: d0 03       bne $a42c    ; PRG $0E427
  $A429: 4c 07 85    jmp $8507    ; PRG $0E429
  $A42C: 18          clc    ; PRG $0E42C
  $A42D: a9 01       lda #$01    ; PRG $0E42D
  $A42F: a0 fc       ldy #$fc    ; PRG $0E42F
  $A431: 71 06       adc ($06),y    ; PRG $0E431
  $A433: 91 06       sta ($06),y    ; PRG $0E433
  $A435: 8a          txa    ; PRG $0E435
  $A436: c8          iny    ; PRG $0E436
  $A437: 71 06       adc ($06),y    ; PRG $0E437
  $A439: 91 06       sta ($06),y    ; PRG $0E439
  $A43B: 8a          txa    ; PRG $0E43B
  $A43C: 48          pha    ; PRG $0E43C
  $A43D: a9 64       lda #$64    ; PRG $0E43D
  $A43F: 48          pha    ; PRG $0E43F
  $A440: a9 02       lda #$02    ; PRG $0E440
  $A442: 85 18       sta $18    ; PRG $0E442
  $A444: 86 19       stx $19    ; PRG $0E444
  $A446: a0 f6       ldy #$f6    ; PRG $0E446
  $A448: b1 06       lda ($06),y    ; PRG $0E448
  $A44A: 85 14       sta $14    ; PRG $0E44A
  $A44C: c8          iny    ; PRG $0E44C
  $A44D: b1 06       lda ($06),y    ; PRG $0E44D
  $A44F: 85 15       sta $15    ; PRG $0E44F
  $A451: a0 02       ldy #$02    ; PRG $0E451
  $A453: b1 14       lda ($14),y    ; PRG $0E453
  $A455: 85 10       sta $10    ; PRG $0E455
  $A457: 86 11       stx $11    ; PRG $0E457
  $A459: a0 10       ldy #$10    ; PRG $0E459
  $A45B: a2 18       ldx #$18    ; PRG $0E45B
  $A45D: a9 14       lda #$14    ; PRG $0E45D
  $A45F: 20 b4 e1    jsr $e1b4   ; alu_abs16    ; PRG $0E45F
  $A462: a9 64       lda #$64    ; PRG $0E462
  $A464: 85 18       sta $18    ; PRG $0E464
  $A466: 86 19       stx $19    ; PRG $0E466
  $A468: a2 14       ldx #$14    ; PRG $0E468
  $A46A: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $0E46A
  $A46D: a2 18       ldx #$18    ; PRG $0E46D
  $A46F: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $0E46F
  $A472: a0 0c       ldy #$0c    ; PRG $0E472
  $A474: b1 04       lda ($04),y    ; PRG $0E474
  $A476: 48          pha    ; PRG $0E476
  $A477: 88          dey    ; PRG $0E477
  $A478: b1 04       lda ($04),y    ; PRG $0E478
  $A47A: 48          pha    ; PRG $0E47A
  $A47B: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0E47B
  $A47E: 9c 81 04    .db $9c $81 $04  -> vm $819C argc 4    ; PRG $0E47E
  $A481: a9 02       lda #$02    ; PRG $0E481
  $A483: 85 18       sta $18    ; PRG $0E483
  $A485: 86 19       stx $19    ; PRG $0E485
  $A487: a0 f6       ldy #$f6    ; PRG $0E487
  $A489: b1 06       lda ($06),y    ; PRG $0E489
  $A48B: 85 14       sta $14    ; PRG $0E48B
  $A48D: c8          iny    ; PRG $0E48D
  $A48E: b1 06       lda ($06),y    ; PRG $0E48E
  $A490: 85 15       sta $15    ; PRG $0E490
  $A492: a0 02       ldy #$02    ; PRG $0E492
  $A494: b1 14       lda ($14),y    ; PRG $0E494
  $A496: 85 10       sta $10    ; PRG $0E496
  $A498: 86 11       stx $11    ; PRG $0E498
  $A49A: a0 10       ldy #$10    ; PRG $0E49A
  $A49C: a2 18       ldx #$18    ; PRG $0E49C
  $A49E: a9 14       lda #$14    ; PRG $0E49E
  $A4A0: 20 b4 e1    jsr $e1b4   ; alu_abs16    ; PRG $0E4A0
  $A4A3: a0 14       ldy #$14    ; PRG $0E4A3
  $A4A5: a2 08       ldx #$08    ; PRG $0E4A5
  $A4A7: a9 18       lda #$18    ; PRG $0E4A7
  $A4A9: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0E4A9
  $A4AC: a2 14       ldx #$14    ; PRG $0E4AC
  $A4AE: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $0E4AE
  $A4B1: a0 18       ldy #$18    ; PRG $0E4B1
  $A4B3: a2 14       ldx #$14    ; PRG $0E4B3
  $A4B5: a9 10       lda #$10    ; PRG $0E4B5
  $A4B7: 20 b4 e1    jsr $e1b4   ; alu_abs16    ; PRG $0E4B7
  $A4BA: a2 14       ldx #$14    ; PRG $0E4BA
  $A4BC: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $0E4BC
  $A4BF: 18          clc    ; PRG $0E4BF
  $A4C0: a5 10       lda $10    ; PRG $0E4C0
  $A4C2: 65 14       adc $14    ; PRG $0E4C2
  $A4C4: 85 18       sta $18    ; PRG $0E4C4
  $A4C6: a5 11       lda $11    ; PRG $0E4C6
  $A4C8: 65 15       adc $15    ; PRG $0E4C8
  $A4CA: 85 19       sta $19    ; PRG $0E4CA
  $A4CC: a5 19       lda $19    ; PRG $0E4CC
  $A4CE: 48          pha    ; PRG $0E4CE
  $A4CF: a5 18       lda $18    ; PRG $0E4CF
  $A4D1: 48          pha    ; PRG $0E4D1
  $A4D2: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0E4D2
  $A4D5: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $0E4D5
  $A4D8: a5 08       lda $08    ; PRG $0E4D8
  $A4DA: a0 f8       ldy #$f8    ; PRG $0E4DA
  $A4DC: 91 06       sta ($06),y    ; PRG $0E4DC
  $A4DE: a5 09       lda $09    ; PRG $0E4DE
  $A4E0: c8          iny    ; PRG $0E4E0
  $A4E1: 91 06       sta ($06),y    ; PRG $0E4E1
  $A4E3: 88          dey    ; PRG $0E4E3
  $A4E4: b1 06       lda ($06),y    ; PRG $0E4E4
  $A4E6: a0 fe       ldy #$fe    ; PRG $0E4E6
  $A4E8: d1 06       cmp ($06),y    ; PRG $0E4E8
  $A4EA: a0 f9       ldy #$f9    ; PRG $0E4EA
  $A4EC: b1 06       lda ($06),y    ; PRG $0E4EC
  $A4EE: a0 ff       ldy #$ff    ; PRG $0E4EE
  $A4F0: f1 06       sbc ($06),y    ; PRG $0E4F0
  $A4F2: 90 03       bcc $a4f7    ; PRG $0E4F2
  $A4F4: 4c 07 85    jmp $8507    ; PRG $0E4F4
  $A4F7: a0 f8       ldy #$f8    ; PRG $0E4F7
  $A4F9: b1 06       lda ($06),y    ; PRG $0E4F9
  $A4FB: a0 fe       ldy #$fe    ; PRG $0E4FB
  $A4FD: 91 06       sta ($06),y    ; PRG $0E4FD
  $A4FF: a0 f9       ldy #$f9    ; PRG $0E4FF
  $A501: b1 06       lda ($06),y    ; PRG $0E501
  $A503: a0 ff       ldy #$ff    ; PRG $0E503
  $A505: 91 06       sta ($06),y    ; PRG $0E505
  $A507: 4c de 83    jmp $83de    ; PRG $0E507

; ---- sub_7_050a  [recovered]  <- (uncalled?)
  $A50A: a0 fc       ldy #$fc    ; PRG $0E50A
  $A50C: b1 06       lda ($06),y    ; PRG $0E50C
  $A50E: c8          iny    ; PRG $0E50E
  $A50F: 11 06       ora ($06),y    ; PRG $0E50F
  $A511: f0 03       beq $a516    ; PRG $0E511
  $A513: 4c 1b 85    jmp $851b    ; PRG $0E513
  $A516: 86 08       stx $08    ; PRG $0E516
  $A518: 86 09       stx $09    ; PRG $0E518
  $A51A: 60          rts    ; PRG $0E51A

; ---- sub_7_051b  [recovered]  <- (uncalled?)
  $A51B: a0 fe       ldy #$fe    ; PRG $0E51B
  $A51D: b1 06       lda ($06),y    ; PRG $0E51D
  $A51F: 85 08       sta $08    ; PRG $0E51F
  $A521: c8          iny    ; PRG $0E521
  $A522: b1 06       lda ($06),y    ; PRG $0E522
  $A524: 85 09       sta $09    ; PRG $0E524
  $A526: 60          rts    ; PRG $0E526

; ---- sub_7_052d  [stub]  <- (entry: bytecode/OS via $E299)
nat_7_0527: jsr $E299                    ; 7:A527  native-call prologue
            .db $00 $e8 $ff            ; inline: argcount $00, frame $ffe8
  $A52D: a9 04       lda #$04    ; PRG $0E52D
  $A52F: 85 18       sta $18    ; PRG $0E52F
  $A531: 86 19       stx $19    ; PRG $0E531
  $A533: a0 0b       ldy #$0b    ; PRG $0E533
  $A535: b1 04       lda ($04),y    ; PRG $0E535
  $A537: 85 14       sta $14    ; PRG $0E537
  $A539: c8          iny    ; PRG $0E539
  $A53A: b1 04       lda ($04),y    ; PRG $0E53A
  $A53C: 85 15       sta $15    ; PRG $0E53C
  $A53E: a0 14       ldy #$14    ; PRG $0E53E
  $A540: a2 18       ldx #$18    ; PRG $0E540
  $A542: a9 10       lda #$10    ; PRG $0E542
  $A544: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0E544
  $A547: 18          clc    ; PRG $0E547
  $A548: a5 10       lda $10    ; PRG $0E548
  $A54A: 69 62       adc #$62    ; PRG $0E54A
  $A54C: a0 ec       ldy #$ec    ; PRG $0E54C
  $A54E: 91 06       sta ($06),y    ; PRG $0E54E
  $A550: a5 11       lda $11    ; PRG $0E550
  $A552: 69 66       adc #$66    ; PRG $0E552
  $A554: c8          iny    ; PRG $0E554
  $A555: 91 06       sta ($06),y    ; PRG $0E555
  $A557: 88          dey    ; PRG $0E557
  $A558: b1 06       lda ($06),y    ; PRG $0E558
  $A55A: 85 18       sta $18    ; PRG $0E55A
  $A55C: c8          iny    ; PRG $0E55C
  $A55D: b1 06       lda ($06),y    ; PRG $0E55D
  $A55F: 85 19       sta $19    ; PRG $0E55F
  $A561: a1 18       lda ($18,x)    ; PRG $0E561
  $A563: 85 14       sta $14    ; PRG $0E563
  $A565: 86 15       stx $15    ; PRG $0E565
  $A567: a5 14       lda $14    ; PRG $0E567
  $A569: a0 fc       ldy #$fc    ; PRG $0E569
  $A56B: 91 06       sta ($06),y    ; PRG $0E56B
  $A56D: a5 15       lda $15    ; PRG $0E56D
  $A56F: c8          iny    ; PRG $0E56F
  $A570: 91 06       sta ($06),y    ; PRG $0E570
  $A572: a0 ec       ldy #$ec    ; PRG $0E572
  $A574: b1 06       lda ($06),y    ; PRG $0E574
  $A576: 85 18       sta $18    ; PRG $0E576
  $A578: c8          iny    ; PRG $0E578
  $A579: b1 06       lda ($06),y    ; PRG $0E579
  $A57B: 85 19       sta $19    ; PRG $0E57B
  $A57D: a0 01       ldy #$01    ; PRG $0E57D
  $A57F: b1 18       lda ($18),y    ; PRG $0E57F
  $A581: 85 14       sta $14    ; PRG $0E581
  $A583: 86 15       stx $15    ; PRG $0E583
  $A585: a5 14       lda $14    ; PRG $0E585
  $A587: a0 fa       ldy #$fa    ; PRG $0E587
  $A589: 91 06       sta ($06),y    ; PRG $0E589
  $A58B: a5 15       lda $15    ; PRG $0E58B
  $A58D: c8          iny    ; PRG $0E58D
  $A58E: 91 06       sta ($06),y    ; PRG $0E58E
  $A590: a9 33       lda #$33    ; PRG $0E590
  $A592: 85 18       sta $18    ; PRG $0E592
  $A594: 86 19       stx $19    ; PRG $0E594
  $A596: 18          clc    ; PRG $0E596
  $A597: a9 ff       lda #$ff    ; PRG $0E597
  $A599: a0 0b       ldy #$0b    ; PRG $0E599
  $A59B: 71 04       adc ($04),y    ; PRG $0E59B
  $A59D: 85 14       sta $14    ; PRG $0E59D
  $A59F: a9 ff       lda #$ff    ; PRG $0E59F
  $A5A1: c8          iny    ; PRG $0E5A1
  $A5A2: 71 04       adc ($04),y    ; PRG $0E5A2
  $A5A4: 85 15       sta $15    ; PRG $0E5A4
  $A5A6: a0 14       ldy #$14    ; PRG $0E5A6
  $A5A8: a2 18       ldx #$18    ; PRG $0E5A8
  $A5AA: a9 10       lda #$10    ; PRG $0E5AA
  $A5AC: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0E5AC
  $A5AF: 18          clc    ; PRG $0E5AF
  $A5B0: a5 10       lda $10    ; PRG $0E5B0
  $A5B2: 69 04       adc #$04    ; PRG $0E5B2
  $A5B4: a0 e8       ldy #$e8    ; PRG $0E5B4
  $A5B6: 91 06       sta ($06),y    ; PRG $0E5B6
  $A5B8: a5 11       lda $11    ; PRG $0E5B8
  $A5BA: 69 60       adc #$60    ; PRG $0E5BA
  $A5BC: c8          iny    ; PRG $0E5BC
  $A5BD: 91 06       sta ($06),y    ; PRG $0E5BD
  $A5BF: 88          dey    ; PRG $0E5BF
  $A5C0: b1 06       lda ($06),y    ; PRG $0E5C0
  $A5C2: 85 18       sta $18    ; PRG $0E5C2
  $A5C4: c8          iny    ; PRG $0E5C4
  $A5C5: b1 06       lda ($06),y    ; PRG $0E5C5
  $A5C7: 85 19       sta $19    ; PRG $0E5C7
  $A5C9: a0 04       ldy #$04    ; PRG $0E5C9
  $A5CB: b1 18       lda ($18),y    ; PRG $0E5CB
  $A5CD: f0 03       beq $a5d2    ; PRG $0E5CD
  $A5CF: 4c 3b 87    jmp $873b    ; PRG $0E5CF
  $A5D2: 84 18       sty $18    ; PRG $0E5D2
  $A5D4: 86 19       stx $19    ; PRG $0E5D4
  $A5D6: a0 e8       ldy #$e8    ; PRG $0E5D6
  $A5D8: b1 06       lda ($06),y    ; PRG $0E5D8
  $A5DA: 85 14       sta $14    ; PRG $0E5DA
  $A5DC: c8          iny    ; PRG $0E5DC
  $A5DD: b1 06       lda ($06),y    ; PRG $0E5DD
  $A5DF: 85 15       sta $15    ; PRG $0E5DF
  $A5E1: a0 05       ldy #$05    ; PRG $0E5E1
  $A5E3: b1 14       lda ($14),y    ; PRG $0E5E3
  $A5E5: 85 10       sta $10    ; PRG $0E5E5
  $A5E7: 86 11       stx $11    ; PRG $0E5E7
  $A5E9: a0 10       ldy #$10    ; PRG $0E5E9
  $A5EB: a2 18       ldx #$18    ; PRG $0E5EB
  $A5ED: a9 14       lda #$14    ; PRG $0E5ED
  $A5EF: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0E5EF
  $A5F2: 18          clc    ; PRG $0E5F2
  $A5F3: a5 14       lda $14    ; PRG $0E5F3
  $A5F5: 69 62       adc #$62    ; PRG $0E5F5
  $A5F7: a0 ea       ldy #$ea    ; PRG $0E5F7
  $A5F9: 91 06       sta ($06),y    ; PRG $0E5F9
  $A5FB: a5 15       lda $15    ; PRG $0E5FB
  $A5FD: 69 66       adc #$66    ; PRG $0E5FD
  $A5FF: c8          iny    ; PRG $0E5FF
  $A600: 91 06       sta ($06),y    ; PRG $0E600
  $A602: 88          dey    ; PRG $0E602
  $A603: b1 06       lda ($06),y    ; PRG $0E603
  $A605: 85 18       sta $18    ; PRG $0E605
  $A607: c8          iny    ; PRG $0E607
  $A608: b1 06       lda ($06),y    ; PRG $0E608
  $A60A: 85 19       sta $19    ; PRG $0E60A
  $A60C: a1 18       lda ($18,x)    ; PRG $0E60C
  $A60E: 85 14       sta $14    ; PRG $0E60E
  $A610: 86 15       stx $15    ; PRG $0E610
  $A612: a0 e8       ldy #$e8    ; PRG $0E612
  $A614: b1 06       lda ($06),y    ; PRG $0E614
  $A616: 85 18       sta $18    ; PRG $0E616
  $A618: c8          iny    ; PRG $0E618
  $A619: b1 06       lda ($06),y    ; PRG $0E619
  $A61B: 85 19       sta $19    ; PRG $0E61B
  $A61D: a1 18       lda ($18,x)    ; PRG $0E61D
  $A61F: 85 10       sta $10    ; PRG $0E61F
  $A621: 86 11       stx $11    ; PRG $0E621
  $A623: a5 10       lda $10    ; PRG $0E623
  $A625: c5 14       cmp $14    ; PRG $0E625
  $A627: d0 04       bne $a62d    ; PRG $0E627
  $A629: a5 11       lda $11    ; PRG $0E629
  $A62B: c5 15       cmp $15    ; PRG $0E62B
  $A62D: f0 03       beq $a632    ; PRG $0E62D
  $A62F: 4c d1 86    jmp $86d1    ; PRG $0E62F
  $A632: a0 ea       ldy #$ea    ; PRG $0E632
  $A634: b1 06       lda ($06),y    ; PRG $0E634
  $A636: 85 18       sta $18    ; PRG $0E636
  $A638: c8          iny    ; PRG $0E638
  $A639: b1 06       lda ($06),y    ; PRG $0E639
  $A63B: 85 19       sta $19    ; PRG $0E63B
  $A63D: a0 01       ldy #$01    ; PRG $0E63D
  $A63F: b1 18       lda ($18),y    ; PRG $0E63F
  $A641: 85 14       sta $14    ; PRG $0E641
  $A643: 86 15       stx $15    ; PRG $0E643
  $A645: a0 e8       ldy #$e8    ; PRG $0E645
  $A647: b1 06       lda ($06),y    ; PRG $0E647
  $A649: 85 18       sta $18    ; PRG $0E649
  $A64B: c8          iny    ; PRG $0E64B
  $A64C: b1 06       lda ($06),y    ; PRG $0E64C
  $A64E: 85 19       sta $19    ; PRG $0E64E
  $A650: a0 01       ldy #$01    ; PRG $0E650
  $A652: b1 18       lda ($18),y    ; PRG $0E652
  $A654: 85 10       sta $10    ; PRG $0E654
  $A656: 86 11       stx $11    ; PRG $0E656
  $A658: a5 10       lda $10    ; PRG $0E658
  $A65A: c5 14       cmp $14    ; PRG $0E65A
  $A65C: d0 04       bne $a662    ; PRG $0E65C
  $A65E: a5 11       lda $11    ; PRG $0E65E
  $A660: c5 15       cmp $15    ; PRG $0E660
  $A662: f0 03       beq $a667    ; PRG $0E662
  $A664: 4c d1 86    jmp $86d1    ; PRG $0E664
  $A667: a0 ea       ldy #$ea    ; PRG $0E667
  $A669: b1 06       lda ($06),y    ; PRG $0E669
  $A66B: 85 18       sta $18    ; PRG $0E66B
  $A66D: c8          iny    ; PRG $0E66D
  $A66E: b1 06       lda ($06),y    ; PRG $0E66E
  $A670: 85 19       sta $19    ; PRG $0E670
  $A672: a0 02       ldy #$02    ; PRG $0E672
  $A674: b1 18       lda ($18),y    ; PRG $0E674
  $A676: 85 14       sta $14    ; PRG $0E676
  $A678: 86 15       stx $15    ; PRG $0E678
  $A67A: a0 e8       ldy #$e8    ; PRG $0E67A
  $A67C: b1 06       lda ($06),y    ; PRG $0E67C
  $A67E: 85 18       sta $18    ; PRG $0E67E
  $A680: c8          iny    ; PRG $0E680
  $A681: b1 06       lda ($06),y    ; PRG $0E681
  $A683: 85 19       sta $19    ; PRG $0E683
  $A685: a0 02       ldy #$02    ; PRG $0E685
  $A687: b1 18       lda ($18),y    ; PRG $0E687
  $A689: 85 10       sta $10    ; PRG $0E689
  $A68B: 86 11       stx $11    ; PRG $0E68B
  $A68D: a5 10       lda $10    ; PRG $0E68D
  $A68F: c5 14       cmp $14    ; PRG $0E68F
  $A691: d0 04       bne $a697    ; PRG $0E691
  $A693: a5 11       lda $11    ; PRG $0E693
  $A695: c5 15       cmp $15    ; PRG $0E695
  $A697: f0 03       beq $a69c    ; PRG $0E697
  $A699: 4c d1 86    jmp $86d1    ; PRG $0E699
  $A69C: a0 ea       ldy #$ea    ; PRG $0E69C
  $A69E: b1 06       lda ($06),y    ; PRG $0E69E
  $A6A0: 85 18       sta $18    ; PRG $0E6A0
  $A6A2: c8          iny    ; PRG $0E6A2
  $A6A3: b1 06       lda ($06),y    ; PRG $0E6A3
  $A6A5: 85 19       sta $19    ; PRG $0E6A5
  $A6A7: a0 03       ldy #$03    ; PRG $0E6A7
  $A6A9: b1 18       lda ($18),y    ; PRG $0E6A9
  $A6AB: 85 14       sta $14    ; PRG $0E6AB
  $A6AD: 86 15       stx $15    ; PRG $0E6AD
  $A6AF: a0 e8       ldy #$e8    ; PRG $0E6AF
  $A6B1: b1 06       lda ($06),y    ; PRG $0E6B1
  $A6B3: 85 18       sta $18    ; PRG $0E6B3
  $A6B5: c8          iny    ; PRG $0E6B5
  $A6B6: b1 06       lda ($06),y    ; PRG $0E6B6
  $A6B8: 85 19       sta $19    ; PRG $0E6B8
  $A6BA: a0 03       ldy #$03    ; PRG $0E6BA
  $A6BC: b1 18       lda ($18),y    ; PRG $0E6BC
  $A6BE: 85 10       sta $10    ; PRG $0E6BE
  $A6C0: 86 11       stx $11    ; PRG $0E6C0
  $A6C2: a5 10       lda $10    ; PRG $0E6C2
  $A6C4: c5 14       cmp $14    ; PRG $0E6C4
  $A6C6: d0 04       bne $a6cc    ; PRG $0E6C6
  $A6C8: a5 11       lda $11    ; PRG $0E6C8
  $A6CA: c5 15       cmp $15    ; PRG $0E6CA
  $A6CC: d0 03       bne $a6d1    ; PRG $0E6CC
  $A6CE: 4c 3b 87    jmp $873b    ; PRG $0E6CE
  $A6D1: a0 e8       ldy #$e8    ; PRG $0E6D1
  $A6D3: b1 06       lda ($06),y    ; PRG $0E6D3
  $A6D5: 85 18       sta $18    ; PRG $0E6D5
  $A6D7: c8          iny    ; PRG $0E6D7
  $A6D8: b1 06       lda ($06),y    ; PRG $0E6D8
  $A6DA: 85 19       sta $19    ; PRG $0E6DA
  $A6DC: c8          iny    ; PRG $0E6DC
  $A6DD: b1 06       lda ($06),y    ; PRG $0E6DD
  $A6DF: 85 14       sta $14    ; PRG $0E6DF
  $A6E1: c8          iny    ; PRG $0E6E1
  $A6E2: b1 06       lda ($06),y    ; PRG $0E6E2
  $A6E4: 85 15       sta $15    ; PRG $0E6E4
  $A6E6: a1 14       lda ($14,x)    ; PRG $0E6E6
  $A6E8: 81 18       sta ($18,x)    ; PRG $0E6E8
  $A6EA: a0 e8       ldy #$e8    ; PRG $0E6EA
  $A6EC: b1 06       lda ($06),y    ; PRG $0E6EC
  $A6EE: 85 18       sta $18    ; PRG $0E6EE
  $A6F0: c8          iny    ; PRG $0E6F0
  $A6F1: b1 06       lda ($06),y    ; PRG $0E6F1
  $A6F3: 85 19       sta $19    ; PRG $0E6F3
  $A6F5: c8          iny    ; PRG $0E6F5
  $A6F6: b1 06       lda ($06),y    ; PRG $0E6F6
  $A6F8: 85 14       sta $14    ; PRG $0E6F8
  $A6FA: c8          iny    ; PRG $0E6FA
  $A6FB: b1 06       lda ($06),y    ; PRG $0E6FB
  $A6FD: 85 15       sta $15    ; PRG $0E6FD
  $A6FF: a0 01       ldy #$01    ; PRG $0E6FF
  $A701: b1 14       lda ($14),y    ; PRG $0E701
  $A703: 91 18       sta ($18),y    ; PRG $0E703
  $A705: a0 e8       ldy #$e8    ; PRG $0E705
  $A707: b1 06       lda ($06),y    ; PRG $0E707
  $A709: 85 18       sta $18    ; PRG $0E709
  $A70B: c8          iny    ; PRG $0E70B
  $A70C: b1 06       lda ($06),y    ; PRG $0E70C
  $A70E: 85 19       sta $19    ; PRG $0E70E
  $A710: c8          iny    ; PRG $0E710
  $A711: b1 06       lda ($06),y    ; PRG $0E711
  $A713: 85 14       sta $14    ; PRG $0E713
  $A715: c8          iny    ; PRG $0E715
  $A716: b1 06       lda ($06),y    ; PRG $0E716
  $A718: 85 15       sta $15    ; PRG $0E718
  $A71A: a0 02       ldy #$02    ; PRG $0E71A
  $A71C: b1 14       lda ($14),y    ; PRG $0E71C
  $A71E: 91 18       sta ($18),y    ; PRG $0E71E
  $A720: a0 e8       ldy #$e8    ; PRG $0E720
  $A722: b1 06       lda ($06),y    ; PRG $0E722
  $A724: 85 18       sta $18    ; PRG $0E724
  $A726: c8          iny    ; PRG $0E726
  $A727: b1 06       lda ($06),y    ; PRG $0E727
  $A729: 85 19       sta $19    ; PRG $0E729
  $A72B: c8          iny    ; PRG $0E72B
  $A72C: b1 06       lda ($06),y    ; PRG $0E72C
  $A72E: 85 14       sta $14    ; PRG $0E72E
  $A730: c8          iny    ; PRG $0E730
  $A731: b1 06       lda ($06),y    ; PRG $0E731
  $A733: 85 15       sta $15    ; PRG $0E733
  $A735: a0 03       ldy #$03    ; PRG $0E735
  $A737: b1 14       lda ($14),y    ; PRG $0E737
  $A739: 91 18       sta ($18),y    ; PRG $0E739
  $A73B: 8a          txa    ; PRG $0E73B
  $A73C: 48          pha    ; PRG $0E73C
  $A73D: a9 fe       lda #$fe    ; PRG $0E73D
  $A73F: 48          pha    ; PRG $0E73F
  $A740: a9 01       lda #$01    ; PRG $0E740
  $A742: 48          pha    ; PRG $0E742
  $A743: 8a          txa    ; PRG $0E743
  $A744: 48          pha    ; PRG $0E744
  $A745: a9 73       lda #$73    ; PRG $0E745
  $A747: 48          pha    ; PRG $0E747
  $A748: a9 90       lda #$90    ; PRG $0E748
  $A74A: 48          pha    ; PRG $0E74A
  $A74B: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0E74B
  $A74E: 3a f3 08    .db $3a $f3 $08  -> vm $F33A argc 8    ; PRG $0E74E
  $A751: a0 f4       ldy #$f4    ; PRG $0E751
  $A753: 91 06       sta ($06),y    ; PRG $0E753
  $A755: c8          iny    ; PRG $0E755
  $A756: 91 06       sta ($06),y    ; PRG $0E756
  $A758: 4c 6a 87    jmp $876a    ; PRG $0E758

; ---- sub_7_075b  [recovered]  <- (uncalled?)
  $A75B: 18          clc    ; PRG $0E75B
  $A75C: a9 01       lda #$01    ; PRG $0E75C
  $A75E: a0 f4       ldy #$f4    ; PRG $0E75E
  $A760: 71 06       adc ($06),y    ; PRG $0E760
  $A762: 91 06       sta ($06),y    ; PRG $0E762
  $A764: 8a          txa    ; PRG $0E764
  $A765: c8          iny    ; PRG $0E765
  $A766: 71 06       adc ($06),y    ; PRG $0E766
  $A768: 91 06       sta ($06),y    ; PRG $0E768
  $A76A: a0 f4       ldy #$f4    ; PRG $0E76A
  $A76C: b1 06       lda ($06),y    ; PRG $0E76C
  $A76E: c9 0e       cmp #$0e    ; PRG $0E76E
  $A770: c8          iny    ; PRG $0E770
  $A771: b1 06       lda ($06),y    ; PRG $0E771
  $A773: e9 00       sbc #$00    ; PRG $0E773
  $A775: 90 03       bcc $a77a    ; PRG $0E775
  $A777: 4c 1f 88    jmp $881f    ; PRG $0E777
  $A77A: 8a          txa    ; PRG $0E77A
  $A77B: a0 f2       ldy #$f2    ; PRG $0E77B
  $A77D: 91 06       sta ($06),y    ; PRG $0E77D
  $A77F: c8          iny    ; PRG $0E77F
  $A780: 91 06       sta ($06),y    ; PRG $0E780
  $A782: 4c 94 87    jmp $8794    ; PRG $0E782

; ---- sub_7_0785  [recovered]  <- (uncalled?)
  $A785: 18          clc    ; PRG $0E785
  $A786: a9 01       lda #$01    ; PRG $0E786
  $A788: a0 f2       ldy #$f2    ; PRG $0E788
  $A78A: 71 06       adc ($06),y    ; PRG $0E78A
  $A78C: 91 06       sta ($06),y    ; PRG $0E78C
  $A78E: 8a          txa    ; PRG $0E78E
  $A78F: c8          iny    ; PRG $0E78F
  $A790: 71 06       adc ($06),y    ; PRG $0E790
  $A792: 91 06       sta ($06),y    ; PRG $0E792
  $A794: a0 f2       ldy #$f2    ; PRG $0E794
  $A796: b1 06       lda ($06),y    ; PRG $0E796
  $A798: c9 0e       cmp #$0e    ; PRG $0E798
  $A79A: c8          iny    ; PRG $0E79A
  $A79B: b1 06       lda ($06),y    ; PRG $0E79B
  $A79D: e9 00       sbc #$00    ; PRG $0E79D
  $A79F: 90 03       bcc $a7a4    ; PRG $0E79F
  $A7A1: 4c 1c 88    jmp $881c    ; PRG $0E7A1
  $A7A4: b1 06       lda ($06),y    ; PRG $0E7A4
  $A7A6: 48          pha    ; PRG $0E7A6
  $A7A7: 88          dey    ; PRG $0E7A7
  $A7A8: b1 06       lda ($06),y    ; PRG $0E7A8
  $A7AA: 48          pha    ; PRG $0E7AA
  $A7AB: a0 f5       ldy #$f5    ; PRG $0E7AB
  $A7AD: b1 06       lda ($06),y    ; PRG $0E7AD
  $A7AF: 48          pha    ; PRG $0E7AF
  $A7B0: 88          dey    ; PRG $0E7B0
  $A7B1: b1 06       lda ($06),y    ; PRG $0E7B1
  $A7B3: 48          pha    ; PRG $0E7B3
  $A7B4: a0 fb       ldy #$fb    ; PRG $0E7B4
  $A7B6: b1 06       lda ($06),y    ; PRG $0E7B6
  $A7B8: 48          pha    ; PRG $0E7B8
  $A7B9: 88          dey    ; PRG $0E7B9
  $A7BA: b1 06       lda ($06),y    ; PRG $0E7BA
  $A7BC: 48          pha    ; PRG $0E7BC
  $A7BD: a0 fd       ldy #$fd    ; PRG $0E7BD
  $A7BF: b1 06       lda ($06),y    ; PRG $0E7BF
  $A7C1: 48          pha    ; PRG $0E7C1
  $A7C2: 88          dey    ; PRG $0E7C2
  $A7C3: b1 06       lda ($06),y    ; PRG $0E7C3
  $A7C5: 48          pha    ; PRG $0E7C5
  $A7C6: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0E7C6
  $A7C9: 05 d4 0a    .db $05 $d4 $0a  -> vm $D405 argc 10    ; PRG $0E7C9
  $A7CC: a5 08       lda $08    ; PRG $0E7CC
  $A7CE: 05 09       ora $09    ; PRG $0E7CE
  $A7D0: f0 03       beq $a7d5    ; PRG $0E7D0
  $A7D2: 4c 19 88    jmp $8819    ; PRG $0E7D2
  $A7D5: a9 04       lda #$04    ; PRG $0E7D5
  $A7D7: 85 18       sta $18    ; PRG $0E7D7
  $A7D9: 86 19       stx $19    ; PRG $0E7D9
  $A7DB: 18          clc    ; PRG $0E7DB
  $A7DC: 98          tya    ; PRG $0E7DC
  $A7DD: a0 f2       ldy #$f2    ; PRG $0E7DD
  $A7DF: 71 06       adc ($06),y    ; PRG $0E7DF
  $A7E1: 85 14       sta $14    ; PRG $0E7E1
  $A7E3: 8a          txa    ; PRG $0E7E3
  $A7E4: c8          iny    ; PRG $0E7E4
  $A7E5: 71 06       adc ($06),y    ; PRG $0E7E5
  $A7E7: 85 15       sta $15    ; PRG $0E7E7
  $A7E9: a0 14       ldy #$14    ; PRG $0E7E9
  $A7EB: a2 18       ldx #$18    ; PRG $0E7EB
  $A7ED: a9 10       lda #$10    ; PRG $0E7ED
  $A7EF: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0E7EF
  $A7F2: 18          clc    ; PRG $0E7F2
  $A7F3: a5 10       lda $10    ; PRG $0E7F3
  $A7F5: a0 f4       ldy #$f4    ; PRG $0E7F5
  $A7F7: 71 06       adc ($06),y    ; PRG $0E7F7
  $A7F9: 85 18       sta $18    ; PRG $0E7F9
  $A7FB: a5 11       lda $11    ; PRG $0E7FB
  $A7FD: c8          iny    ; PRG $0E7FD
  $A7FE: 71 06       adc ($06),y    ; PRG $0E7FE
  $A800: 85 19       sta $19    ; PRG $0E800
  $A802: 18          clc    ; PRG $0E802
  $A803: a5 18       lda $18    ; PRG $0E803
  $A805: 69 91       adc #$91    ; PRG $0E805
  $A807: 85 14       sta $14    ; PRG $0E807
  $A809: a5 19       lda $19    ; PRG $0E809
  $A80B: 69 73       adc #$73    ; PRG $0E80B
  $A80D: 85 15       sta $15    ; PRG $0E80D
  $A80F: 18          clc    ; PRG $0E80F
  $A810: a9 01       lda #$01    ; PRG $0E810
  $A812: 61 14       adc ($14,x)    ; PRG $0E812
  $A814: 81 14       sta ($14,x)    ; PRG $0E814
  $A816: 8a          txa    ; PRG $0E816
  $A817: 69 00       adc #$00    ; PRG $0E817
  $A819: 4c 85 87    jmp $8785    ; PRG $0E819

; ---- sub_7_081c  [recovered]  <- (uncalled?)
  $A81C: 4c 5b 87    jmp $875b   ; get_ship_word15_0    ; PRG $0E81C

; ---- sub_7_081f  [recovered]  <- (uncalled?)
  $A81F: a0 e8       ldy #$e8    ; PRG $0E81F
  $A821: b1 06       lda ($06),y    ; PRG $0E821
  $A823: 85 18       sta $18    ; PRG $0E823
  $A825: c8          iny    ; PRG $0E825
  $A826: b1 06       lda ($06),y    ; PRG $0E826
  $A828: 85 19       sta $19    ; PRG $0E828
  $A82A: a1 18       lda ($18,x)    ; PRG $0E82A
  $A82C: 85 14       sta $14    ; PRG $0E82C
  $A82E: 86 15       stx $15    ; PRG $0E82E
  $A830: a5 14       lda $14    ; PRG $0E830
  $A832: a0 fc       ldy #$fc    ; PRG $0E832
  $A834: d1 06       cmp ($06),y    ; PRG $0E834
  $A836: d0 05       bne $a83d    ; PRG $0E836
  $A838: a5 15       lda $15    ; PRG $0E838
  $A83A: c8          iny    ; PRG $0E83A
  $A83B: d1 06       cmp ($06),y    ; PRG $0E83B
  $A83D: f0 03       beq $a842    ; PRG $0E83D
  $A83F: 4c ae 88    jmp $88ae    ; PRG $0E83F
  $A842: a0 e8       ldy #$e8    ; PRG $0E842
  $A844: b1 06       lda ($06),y    ; PRG $0E844
  $A846: 85 18       sta $18    ; PRG $0E846
  $A848: c8          iny    ; PRG $0E848
  $A849: b1 06       lda ($06),y    ; PRG $0E849
  $A84B: 85 19       sta $19    ; PRG $0E84B
  $A84D: a0 01       ldy #$01    ; PRG $0E84D
  $A84F: b1 18       lda ($18),y    ; PRG $0E84F
  $A851: 85 14       sta $14    ; PRG $0E851
  $A853: 86 15       stx $15    ; PRG $0E853
  $A855: a5 14       lda $14    ; PRG $0E855
  $A857: a0 fa       ldy #$fa    ; PRG $0E857
  $A859: d1 06       cmp ($06),y    ; PRG $0E859
  $A85B: d0 05       bne $a862    ; PRG $0E85B
  $A85D: a5 15       lda $15    ; PRG $0E85D
  $A85F: c8          iny    ; PRG $0E85F
  $A860: d1 06       cmp ($06),y    ; PRG $0E860
  $A862: f0 03       beq $a867    ; PRG $0E862
  $A864: 4c ae 88    jmp $88ae    ; PRG $0E864
  $A867: a0 e8       ldy #$e8    ; PRG $0E867
  $A869: b1 06       lda ($06),y    ; PRG $0E869
  $A86B: 85 18       sta $18    ; PRG $0E86B
  $A86D: c8          iny    ; PRG $0E86D
  $A86E: b1 06       lda ($06),y    ; PRG $0E86E
  $A870: 85 19       sta $19    ; PRG $0E870
  $A872: a0 02       ldy #$02    ; PRG $0E872
  $A874: b1 18       lda ($18),y    ; PRG $0E874
  $A876: 85 14       sta $14    ; PRG $0E876
  $A878: 86 15       stx $15    ; PRG $0E878
  $A87A: 18          clc    ; PRG $0E87A
  $A87B: a9 01       lda #$01    ; PRG $0E87B
  $A87D: 65 14       adc $14    ; PRG $0E87D
  $A87F: a0 f4       ldy #$f4    ; PRG $0E87F
  $A881: 91 06       sta ($06),y    ; PRG $0E881
  $A883: 8a          txa    ; PRG $0E883
  $A884: 65 15       adc $15    ; PRG $0E884
  $A886: c8          iny    ; PRG $0E886
  $A887: 91 06       sta ($06),y    ; PRG $0E887
  $A889: a0 e8       ldy #$e8    ; PRG $0E889
  $A88B: b1 06       lda ($06),y    ; PRG $0E88B
  $A88D: 85 18       sta $18    ; PRG $0E88D
  $A88F: c8          iny    ; PRG $0E88F
  $A890: b1 06       lda ($06),y    ; PRG $0E890
  $A892: 85 19       sta $19    ; PRG $0E892
  $A894: a0 03       ldy #$03    ; PRG $0E894
  $A896: b1 18       lda ($18),y    ; PRG $0E896
  $A898: 85 14       sta $14    ; PRG $0E898
  $A89A: 86 15       stx $15    ; PRG $0E89A
  $A89C: 18          clc    ; PRG $0E89C
  $A89D: a9 01       lda #$01    ; PRG $0E89D
  $A89F: 65 14       adc $14    ; PRG $0E89F
  $A8A1: a0 f2       ldy #$f2    ; PRG $0E8A1
  $A8A3: 91 06       sta ($06),y    ; PRG $0E8A3
  $A8A5: 8a          txa    ; PRG $0E8A5
  $A8A6: 65 15       adc $15    ; PRG $0E8A6
  $A8A8: c8          iny    ; PRG $0E8A8
  $A8A9: 91 06       sta ($06),y    ; PRG $0E8A9
  $A8AB: 4c 47 8a    jmp $8a47    ; PRG $0E8AB

; ---- sub_7_08ae  [recovered]  <- (uncalled?)
  $A8AE: a0 e8       ldy #$e8    ; PRG $0E8AE
  $A8B0: b1 06       lda ($06),y    ; PRG $0E8B0
  $A8B2: 85 18       sta $18    ; PRG $0E8B2
  $A8B4: c8          iny    ; PRG $0E8B4
  $A8B5: b1 06       lda ($06),y    ; PRG $0E8B5
  $A8B7: 85 19       sta $19    ; PRG $0E8B7
  $A8B9: a0 07       ldy #$07    ; PRG $0E8B9
  $A8BB: b1 18       lda ($18),y    ; PRG $0E8BB
  $A8BD: a0 fe       ldy #$fe    ; PRG $0E8BD
  $A8BF: 91 06       sta ($06),y    ; PRG $0E8BF
  $A8C1: a0 08       ldy #$08    ; PRG $0E8C1
  $A8C3: b1 18       lda ($18),y    ; PRG $0E8C3
  $A8C5: a0 ff       ldy #$ff    ; PRG $0E8C5
  $A8C7: 91 06       sta ($06),y    ; PRG $0E8C7
  $A8C9: 88          dey    ; PRG $0E8C9
  $A8CA: b1 06       lda ($06),y    ; PRG $0E8CA
  $A8CC: 85 18       sta $18    ; PRG $0E8CC
  $A8CE: c8          iny    ; PRG $0E8CE
  $A8CF: b1 06       lda ($06),y    ; PRG $0E8CF
  $A8D1: 85 19       sta $19    ; PRG $0E8D1
  $A8D3: a1 18       lda ($18,x)    ; PRG $0E8D3
  $A8D5: 85 14       sta $14    ; PRG $0E8D5
  $A8D7: 86 15       stx $15    ; PRG $0E8D7
  $A8D9: a5 14       lda $14    ; PRG $0E8D9
  $A8DB: c9 ff       cmp #$ff    ; PRG $0E8DB
  $A8DD: d0 04       bne $a8e3    ; PRG $0E8DD
  $A8DF: a5 15       lda $15    ; PRG $0E8DF
  $A8E1: c9 00       cmp #$00    ; PRG $0E8E1
  $A8E3: d0 03       bne $a8e8    ; PRG $0E8E3
  $A8E5: 4c 37 89    jmp $8937    ; PRG $0E8E5
  $A8E8: a0 fe       ldy #$fe    ; PRG $0E8E8
  $A8EA: b1 06       lda ($06),y    ; PRG $0E8EA
  $A8EC: c8          iny    ; PRG $0E8EC
  $A8ED: 11 06       ora ($06),y    ; PRG $0E8ED
  $A8EF: d0 03       bne $a8f4    ; PRG $0E8EF
  $A8F1: 4c 37 89    jmp $8937    ; PRG $0E8F1
  $A8F4: 18          clc    ; PRG $0E8F4
  $A8F5: 88          dey    ; PRG $0E8F5
  $A8F6: b1 06       lda ($06),y    ; PRG $0E8F6
  $A8F8: 85 18       sta $18    ; PRG $0E8F8
  $A8FA: 69 01       adc #$01    ; PRG $0E8FA
  $A8FC: 91 06       sta ($06),y    ; PRG $0E8FC
  $A8FE: c8          iny    ; PRG $0E8FE
  $A8FF: b1 06       lda ($06),y    ; PRG $0E8FF
  $A901: 85 19       sta $19    ; PRG $0E901
  $A903: 69 00       adc #$00    ; PRG $0E903
  $A905: 91 06       sta ($06),y    ; PRG $0E905
  $A907: a1 18       lda ($18,x)    ; PRG $0E907
  $A909: 85 14       sta $14    ; PRG $0E909
  $A90B: 86 15       stx $15    ; PRG $0E90B
  $A90D: a5 14       lda $14    ; PRG $0E90D
  $A90F: a0 f8       ldy #$f8    ; PRG $0E90F
  $A911: 91 06       sta ($06),y    ; PRG $0E911
  $A913: a5 15       lda $15    ; PRG $0E913
  $A915: c8          iny    ; PRG $0E915
  $A916: 91 06       sta ($06),y    ; PRG $0E916
  $A918: a0 fe       ldy #$fe    ; PRG $0E918
  $A91A: b1 06       lda ($06),y    ; PRG $0E91A
  $A91C: 85 18       sta $18    ; PRG $0E91C
  $A91E: c8          iny    ; PRG $0E91E
  $A91F: b1 06       lda ($06),y    ; PRG $0E91F
  $A921: 85 19       sta $19    ; PRG $0E921
  $A923: a1 18       lda ($18,x)    ; PRG $0E923
  $A925: 85 14       sta $14    ; PRG $0E925
  $A927: 86 15       stx $15    ; PRG $0E927
  $A929: a5 14       lda $14    ; PRG $0E929
  $A92B: a0 f6       ldy #$f6    ; PRG $0E92B
  $A92D: 91 06       sta ($06),y    ; PRG $0E92D
  $A92F: a5 15       lda $15    ; PRG $0E92F
  $A931: c8          iny    ; PRG $0E931
  $A932: 91 06       sta ($06),y    ; PRG $0E932
  $A934: 4c 71 89    jmp $8971   ; cargo_pick_ship    ; PRG $0E934

; ---- sub_7_0937  [recovered]  <- (uncalled?)
  $A937: a0 e8       ldy #$e8    ; PRG $0E937
  $A939: b1 06       lda ($06),y    ; PRG $0E939
  $A93B: 85 18       sta $18    ; PRG $0E93B
  $A93D: c8          iny    ; PRG $0E93D
  $A93E: b1 06       lda ($06),y    ; PRG $0E93E
  $A940: 85 19       sta $19    ; PRG $0E940
  $A942: a1 18       lda ($18,x)    ; PRG $0E942
  $A944: 85 14       sta $14    ; PRG $0E944
  $A946: 86 15       stx $15    ; PRG $0E946
  $A948: a5 14       lda $14    ; PRG $0E948
  $A94A: a0 f8       ldy #$f8    ; PRG $0E94A
  $A94C: 91 06       sta ($06),y    ; PRG $0E94C
  $A94E: a5 15       lda $15    ; PRG $0E94E
  $A950: c8          iny    ; PRG $0E950
  $A951: 91 06       sta ($06),y    ; PRG $0E951
  $A953: a0 e8       ldy #$e8    ; PRG $0E953
  $A955: b1 06       lda ($06),y    ; PRG $0E955
  $A957: 85 18       sta $18    ; PRG $0E957
  $A959: c8          iny    ; PRG $0E959
  $A95A: b1 06       lda ($06),y    ; PRG $0E95A
  $A95C: 85 19       sta $19    ; PRG $0E95C
  $A95E: a0 01       ldy #$01    ; PRG $0E95E
  $A960: b1 18       lda ($18),y    ; PRG $0E960
  $A962: 85 14       sta $14    ; PRG $0E962
  $A964: 86 15       stx $15    ; PRG $0E964
  $A966: a5 14       lda $14    ; PRG $0E966
  $A968: a0 f6       ldy #$f6    ; PRG $0E968
  $A96A: 91 06       sta ($06),y    ; PRG $0E96A
  $A96C: a5 15       lda $15    ; PRG $0E96C
  $A96E: c8          iny    ; PRG $0E96E
  $A96F: 91 06       sta ($06),y    ; PRG $0E96F
  $A971: 38          sec    ; PRG $0E971
  $A972: a0 f8       ldy #$f8    ; PRG $0E972
  $A974: b1 06       lda ($06),y    ; PRG $0E974
  $A976: a0 fc       ldy #$fc    ; PRG $0E976
  $A978: f1 06       sbc ($06),y    ; PRG $0E978
  $A97A: a0 f0       ldy #$f0    ; PRG $0E97A
  $A97C: 91 06       sta ($06),y    ; PRG $0E97C
  $A97E: a0 f9       ldy #$f9    ; PRG $0E97E
  $A980: b1 06       lda ($06),y    ; PRG $0E980
  $A982: a0 fd       ldy #$fd    ; PRG $0E982
  $A984: f1 06       sbc ($06),y    ; PRG $0E984
  $A986: a0 f1       ldy #$f1    ; PRG $0E986
  $A988: 91 06       sta ($06),y    ; PRG $0E988
  $A98A: 38          sec    ; PRG $0E98A
  $A98B: a0 f6       ldy #$f6    ; PRG $0E98B
  $A98D: b1 06       lda ($06),y    ; PRG $0E98D
  $A98F: a0 fa       ldy #$fa    ; PRG $0E98F
  $A991: f1 06       sbc ($06),y    ; PRG $0E991
  $A993: a0 ee       ldy #$ee    ; PRG $0E993
  $A995: 91 06       sta ($06),y    ; PRG $0E995
  $A997: a0 f7       ldy #$f7    ; PRG $0E997
  $A999: b1 06       lda ($06),y    ; PRG $0E999
  $A99B: a0 fb       ldy #$fb    ; PRG $0E99B
  $A99D: f1 06       sbc ($06),y    ; PRG $0E99D
  $A99F: a0 ef       ldy #$ef    ; PRG $0E99F
  $A9A1: 91 06       sta ($06),y    ; PRG $0E9A1
  $A9A3: a0 f1       ldy #$f1    ; PRG $0E9A3
  $A9A5: b1 06       lda ($06),y    ; PRG $0E9A5
  $A9A7: 30 03       bmi $a9ac    ; PRG $0E9A7
  $A9A9: 4c b7 89    jmp $89b7    ; PRG $0E9A9
  $A9AC: 8a          txa    ; PRG $0E9AC
  $A9AD: a0 f4       ldy #$f4    ; PRG $0E9AD
  $A9AF: 91 06       sta ($06),y    ; PRG $0E9AF
  $A9B1: c8          iny    ; PRG $0E9B1
  $A9B2: 91 06       sta ($06),y    ; PRG $0E9B2
  $A9B4: 4c f5 89    jmp $89f5    ; PRG $0E9B4

; ---- sub_7_09b7  [recovered]  <- (uncalled?)
  $A9B7: 8a          txa    ; PRG $0E9B7
  $A9B8: a0 f0       ldy #$f0    ; PRG $0E9B8
  $A9BA: d1 06       cmp ($06),y    ; PRG $0E9BA
  $A9BC: c8          iny    ; PRG $0E9BC
  $A9BD: f1 06       sbc ($06),y    ; PRG $0E9BD
  $A9BF: 70 04       bvs $a9c5    ; PRG $0E9BF
  $A9C1: 30 07       bmi $a9ca    ; PRG $0E9C1
  $A9C3: 10 02       bpl $a9c7    ; PRG $0E9C3
  $A9C5: 10 03       bpl $a9ca    ; PRG $0E9C5
  $A9C7: 4c d3 89    jmp $89d3    ; PRG $0E9C7
  $A9CA: a9 0f       lda #$0f    ; PRG $0E9CA
  $A9CC: 85 18       sta $18    ; PRG $0E9CC
  $A9CE: 86 19       stx $19    ; PRG $0E9CE
  $A9D0: 4c ea 89    jmp $89ea    ; PRG $0E9D0

; ---- sub_7_09d3  [recovered]  <- (uncalled?)
  $A9D3: 8a          txa    ; PRG $0E9D3
  $A9D4: 48          pha    ; PRG $0E9D4
  $A9D5: a9 0c       lda #$0c    ; PRG $0E9D5
  $A9D7: 48          pha    ; PRG $0E9D7
  $A9D8: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0E9D8
  $A9DB: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $0E9DB
  $A9DE: 18          clc    ; PRG $0E9DE
  $A9DF: a9 02       lda #$02    ; PRG $0E9DF
  $A9E1: 65 08       adc $08    ; PRG $0E9E1
  $A9E3: 85 18       sta $18    ; PRG $0E9E3
  $A9E5: 8a          txa    ; PRG $0E9E5
  $A9E6: 65 09       adc $09    ; PRG $0E9E6
  $A9E8: 85 19       sta $19    ; PRG $0E9E8
  $A9EA: a5 18       lda $18    ; PRG $0E9EA
  $A9EC: a0 f4       ldy #$f4    ; PRG $0E9EC
  $A9EE: 91 06       sta ($06),y    ; PRG $0E9EE
  $A9F0: a5 19       lda $19    ; PRG $0E9F0
  $A9F2: c8          iny    ; PRG $0E9F2
  $A9F3: 91 06       sta ($06),y    ; PRG $0E9F3
  $A9F5: a0 ef       ldy #$ef    ; PRG $0E9F5
  $A9F7: b1 06       lda ($06),y    ; PRG $0E9F7
  $A9F9: 30 03       bmi $a9fe    ; PRG $0E9F9
  $A9FB: 4c 09 8a    jmp $8a09    ; PRG $0E9FB
  $A9FE: 8a          txa    ; PRG $0E9FE
  $A9FF: a0 f2       ldy #$f2    ; PRG $0E9FF
  $AA01: 91 06       sta ($06),y    ; PRG $0EA01
  $AA03: c8          iny    ; PRG $0EA03
  $AA04: 91 06       sta ($06),y    ; PRG $0EA04
  $AA06: 4c 47 8a    jmp $8a47    ; PRG $0EA06

; ---- sub_7_0ab0  [stub]  <- (entry: bytecode/OS via $E299)
nat_7_0aaa: jsr $E299                    ; 7:AAAA  native-call prologue
            .db $00 $f0 $ff            ; inline: argcount $00, frame $fff0
  $AAB0: a0 0c       ldy #$0c    ; PRG $0EAB0
  $AAB2: b1 04       lda ($04),y    ; PRG $0EAB2
  $AAB4: 48          pha    ; PRG $0EAB4
  $AAB5: 88          dey    ; PRG $0EAB5
  $AAB6: b1 04       lda ($04),y    ; PRG $0EAB6
  $AAB8: 48          pha    ; PRG $0EAB8
  $AAB9: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0EAB9
  $AABC: 27 85 04    .db $27 $85 $04  -> vm $8527 argc 4    ; PRG $0EABC
  $AABF: a9 04       lda #$04    ; PRG $0EABF
  $AAC1: 85 18       sta $18    ; PRG $0EAC1
  $AAC3: 86 19       stx $19    ; PRG $0EAC3
  $AAC5: a0 0b       ldy #$0b    ; PRG $0EAC5
  $AAC7: b1 04       lda ($04),y    ; PRG $0EAC7
  $AAC9: 85 14       sta $14    ; PRG $0EAC9
  $AACB: c8          iny    ; PRG $0EACB
  $AACC: b1 04       lda ($04),y    ; PRG $0EACC
  $AACE: 85 15       sta $15    ; PRG $0EACE
  $AAD0: a0 14       ldy #$14    ; PRG $0EAD0
  $AAD2: a2 18       ldx #$18    ; PRG $0EAD2
  $AAD4: a9 10       lda #$10    ; PRG $0EAD4
  $AAD6: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0EAD6
  $AAD9: 18          clc    ; PRG $0EAD9
  $AADA: a5 10       lda $10    ; PRG $0EADA
  $AADC: 69 62       adc #$62    ; PRG $0EADC
  $AADE: a0 f0       ldy #$f0    ; PRG $0EADE
  $AAE0: 91 06       sta ($06),y    ; PRG $0EAE0
  $AAE2: a5 11       lda $11    ; PRG $0EAE2
  $AAE4: 69 66       adc #$66    ; PRG $0EAE4
  $AAE6: c8          iny    ; PRG $0EAE6
  $AAE7: 91 06       sta ($06),y    ; PRG $0EAE7
  $AAE9: 88          dey    ; PRG $0EAE9
  $AAEA: b1 06       lda ($06),y    ; PRG $0EAEA
  $AAEC: 85 18       sta $18    ; PRG $0EAEC
  $AAEE: c8          iny    ; PRG $0EAEE
  $AAEF: b1 06       lda ($06),y    ; PRG $0EAEF
  $AAF1: 85 19       sta $19    ; PRG $0EAF1
  $AAF3: a0 02       ldy #$02    ; PRG $0EAF3
  $AAF5: b1 18       lda ($18),y    ; PRG $0EAF5
  $AAF7: 85 14       sta $14    ; PRG $0EAF7
  $AAF9: 86 15       stx $15    ; PRG $0EAF9
  $AAFB: 18          clc    ; PRG $0EAFB
  $AAFC: a9 01       lda #$01    ; PRG $0EAFC
  $AAFE: 65 14       adc $14    ; PRG $0EAFE
  $AB00: 8d f0 7f    sta $7ff0    ; PRG $0EB00
  $AB03: 8a          txa    ; PRG $0EB03
  $AB04: 65 15       adc $15    ; PRG $0EB04
  $AB06: 8d f1 7f    sta $7ff1    ; PRG $0EB06
  $AB09: ad f0 7f    lda $7ff0    ; PRG $0EB09
  $AB0C: a0 f8       ldy #$f8    ; PRG $0EB0C
  $AB0E: 91 06       sta ($06),y    ; PRG $0EB0E
  $AB10: ad f1 7f    lda $7ff1    ; PRG $0EB10
  $AB13: c8          iny    ; PRG $0EB13
  $AB14: 91 06       sta ($06),y    ; PRG $0EB14
  $AB16: a0 f0       ldy #$f0    ; PRG $0EB16
  $AB18: b1 06       lda ($06),y    ; PRG $0EB18
  $AB1A: 85 18       sta $18    ; PRG $0EB1A
  $AB1C: c8          iny    ; PRG $0EB1C
  $AB1D: b1 06       lda ($06),y    ; PRG $0EB1D
  $AB1F: 85 19       sta $19    ; PRG $0EB1F
  $AB21: a0 03       ldy #$03    ; PRG $0EB21
  $AB23: b1 18       lda ($18),y    ; PRG $0EB23
  $AB25: 85 14       sta $14    ; PRG $0EB25
  $AB27: 86 15       stx $15    ; PRG $0EB27
  $AB29: 18          clc    ; PRG $0EB29
  $AB2A: a9 01       lda #$01    ; PRG $0EB2A
  $AB2C: 65 14       adc $14    ; PRG $0EB2C
  $AB2E: 8d f2 7f    sta $7ff2    ; PRG $0EB2E
  $AB31: 8a          txa    ; PRG $0EB31
  $AB32: 65 15       adc $15    ; PRG $0EB32
  $AB34: 8d f3 7f    sta $7ff3    ; PRG $0EB34
  $AB37: ad f2 7f    lda $7ff2    ; PRG $0EB37
  $AB3A: a0 f6       ldy #$f6    ; PRG $0EB3A
  $AB3C: 91 06       sta ($06),y    ; PRG $0EB3C
  $AB3E: ad f3 7f    lda $7ff3    ; PRG $0EB3E
  $AB41: c8          iny    ; PRG $0EB41
  $AB42: 91 06       sta ($06),y    ; PRG $0EB42
  $AB44: a9 ff       lda #$ff    ; PRG $0EB44
  $AB46: a0 f2       ldy #$f2    ; PRG $0EB46
  $AB48: 91 06       sta ($06),y    ; PRG $0EB48
  $AB4A: 8a          txa    ; PRG $0EB4A
  $AB4B: c8          iny    ; PRG $0EB4B
  $AB4C: 91 06       sta ($06),y    ; PRG $0EB4C
  $AB4E: c8          iny    ; PRG $0EB4E
  $AB4F: 91 06       sta ($06),y    ; PRG $0EB4F
  $AB51: c8          iny    ; PRG $0EB51
  $AB52: 91 06       sta ($06),y    ; PRG $0EB52
  $AB54: 4c 66 8b    jmp $8b66    ; PRG $0EB54

; ---- sub_7_0b57  [recovered]  <- (uncalled?)
  $AB57: 18          clc    ; PRG $0EB57
  $AB58: a9 01       lda #$01    ; PRG $0EB58
  $AB5A: a0 f4       ldy #$f4    ; PRG $0EB5A
  $AB5C: 71 06       adc ($06),y    ; PRG $0EB5C
  $AB5E: 91 06       sta ($06),y    ; PRG $0EB5E
  $AB60: 8a          txa    ; PRG $0EB60
  $AB61: c8          iny    ; PRG $0EB61
  $AB62: 71 06       adc ($06),y    ; PRG $0EB62
  $AB64: 91 06       sta ($06),y    ; PRG $0EB64
  $AB66: a0 f4       ldy #$f4    ; PRG $0EB66
  $AB68: b1 06       lda ($06),y    ; PRG $0EB68
  $AB6A: c9 08       cmp #$08    ; PRG $0EB6A
  $AB6C: c8          iny    ; PRG $0EB6C
  $AB6D: b1 06       lda ($06),y    ; PRG $0EB6D
  $AB6F: e9 00       sbc #$00    ; PRG $0EB6F
  $AB71: 90 03       bcc $ab76    ; PRG $0EB71
  $AB73: 4c 47 8c    jmp $8c47    ; PRG $0EB73
  $AB76: b1 06       lda ($06),y    ; PRG $0EB76
  $AB78: 48          pha    ; PRG $0EB78
  $AB79: 88          dey    ; PRG $0EB79
  $AB7A: b1 06       lda ($06),y    ; PRG $0EB7A
  $AB7C: 48          pha    ; PRG $0EB7C
  $AB7D: 18          clc    ; PRG $0EB7D
  $AB7E: a9 fa       lda #$fa    ; PRG $0EB7E
  $AB80: 65 06       adc $06    ; PRG $0EB80
  $AB82: 85 18       sta $18    ; PRG $0EB82
  $AB84: 8a          txa    ; PRG $0EB84
  $AB85: 65 07       adc $07    ; PRG $0EB85
  $AB87: 85 19       sta $19    ; PRG $0EB87
  $AB89: a5 19       lda $19    ; PRG $0EB89
  $AB8B: 48          pha    ; PRG $0EB8B
  $AB8C: a5 18       lda $18    ; PRG $0EB8C
  $AB8E: 48          pha    ; PRG $0EB8E
  $AB8F: 18          clc    ; PRG $0EB8F
  $AB90: a9 fc       lda #$fc    ; PRG $0EB90
  $AB92: 65 06       adc $06    ; PRG $0EB92
  $AB94: 85 18       sta $18    ; PRG $0EB94
  $AB96: 8a          txa    ; PRG $0EB96
  $AB97: 65 07       adc $07    ; PRG $0EB97
  $AB99: 85 19       sta $19    ; PRG $0EB99
  $AB9B: a5 19       lda $19    ; PRG $0EB9B
  $AB9D: 48          pha    ; PRG $0EB9D
  $AB9E: a5 18       lda $18    ; PRG $0EB9E
  $ABA0: 48          pha    ; PRG $0EBA0
  $ABA1: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0EBA1
  $ABA4: 0f 9c 08    .db $0f $9c $08  -> vm $9C0F argc 8    ; PRG $0EBA4
  $ABA7: a5 08       lda $08    ; PRG $0EBA7
  $ABA9: 05 09       ora $09    ; PRG $0EBA9
  $ABAB: d0 03       bne $abb0    ; PRG $0EBAB
  $ABAD: 4c 44 8c    jmp $8c44    ; PRG $0EBAD
  $ABB0: a9 04       lda #$04    ; PRG $0EBB0
  $ABB2: 85 18       sta $18    ; PRG $0EBB2
  $ABB4: 86 19       stx $19    ; PRG $0EBB4
  $ABB6: a0 fa       ldy #$fa    ; PRG $0EBB6
  $ABB8: b1 06       lda ($06),y    ; PRG $0EBB8
  $ABBA: 85 14       sta $14    ; PRG $0EBBA
  $ABBC: c8          iny    ; PRG $0EBBC
  $ABBD: b1 06       lda ($06),y    ; PRG $0EBBD
  $ABBF: 85 15       sta $15    ; PRG $0EBBF
  $ABC1: a0 14       ldy #$14    ; PRG $0EBC1
  $ABC3: a2 18       ldx #$18    ; PRG $0EBC3
  $ABC5: a9 10       lda #$10    ; PRG $0EBC5
  $ABC7: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0EBC7
  $ABCA: 18          clc    ; PRG $0EBCA
  $ABCB: a5 10       lda $10    ; PRG $0EBCB
  $ABCD: a0 fc       ldy #$fc    ; PRG $0EBCD
  $ABCF: 71 06       adc ($06),y    ; PRG $0EBCF
  $ABD1: 85 18       sta $18    ; PRG $0EBD1
  $ABD3: a5 11       lda $11    ; PRG $0EBD3
  $ABD5: c8          iny    ; PRG $0EBD5
  $ABD6: 71 06       adc ($06),y    ; PRG $0EBD6
  $ABD8: 85 19       sta $19    ; PRG $0EBD8
  $ABDA: 18          clc    ; PRG $0EBDA
  $ABDB: a5 18       lda $18    ; PRG $0EBDB
  $ABDD: 69 90       adc #$90    ; PRG $0EBDD
  $ABDF: c8          iny    ; PRG $0EBDF
  $ABE0: 91 06       sta ($06),y    ; PRG $0EBE0
  $ABE2: a5 19       lda $19    ; PRG $0EBE2
  $ABE4: 69 73       adc #$73    ; PRG $0EBE4
  $ABE6: c8          iny    ; PRG $0EBE6
  $ABE7: 91 06       sta ($06),y    ; PRG $0EBE7
  $ABE9: 88          dey    ; PRG $0EBE9
  $ABEA: b1 06       lda ($06),y    ; PRG $0EBEA
  $ABEC: 85 18       sta $18    ; PRG $0EBEC
  $ABEE: c8          iny    ; PRG $0EBEE
  $ABEF: b1 06       lda ($06),y    ; PRG $0EBEF
  $ABF1: 85 19       sta $19    ; PRG $0EBF1
  $ABF3: a1 18       lda ($18,x)    ; PRG $0EBF3
  $ABF5: 85 14       sta $14    ; PRG $0EBF5
  $ABF7: 86 15       stx $15    ; PRG $0EBF7
  $ABF9: a5 14       lda $14    ; PRG $0EBF9
  $ABFB: a0 f2       ldy #$f2    ; PRG $0EBFB
  $ABFD: d1 06       cmp ($06),y    ; PRG $0EBFD
  $ABFF: a5 15       lda $15    ; PRG $0EBFF
  $AC01: c8          iny    ; PRG $0EC01
  $AC02: f1 06       sbc ($06),y    ; PRG $0EC02
  $AC04: 90 03       bcc $ac09    ; PRG $0EC04
  $AC06: 4c 44 8c    jmp $8c44    ; PRG $0EC06
  $AC09: a0 fe       ldy #$fe    ; PRG $0EC09
  $AC0B: b1 06       lda ($06),y    ; PRG $0EC0B
  $AC0D: 85 18       sta $18    ; PRG $0EC0D
  $AC0F: c8          iny    ; PRG $0EC0F
  $AC10: b1 06       lda ($06),y    ; PRG $0EC10
  $AC12: 85 19       sta $19    ; PRG $0EC12
  $AC14: a1 18       lda ($18,x)    ; PRG $0EC14
  $AC16: 85 14       sta $14    ; PRG $0EC16
  $AC18: 86 15       stx $15    ; PRG $0EC18
  $AC1A: a5 14       lda $14    ; PRG $0EC1A
  $AC1C: a0 f2       ldy #$f2    ; PRG $0EC1C
  $AC1E: 91 06       sta ($06),y    ; PRG $0EC1E
  $AC20: a5 15       lda $15    ; PRG $0EC20
  $AC22: c8          iny    ; PRG $0EC22
  $AC23: 91 06       sta ($06),y    ; PRG $0EC23
  $AC25: a0 fc       ldy #$fc    ; PRG $0EC25
  $AC27: b1 06       lda ($06),y    ; PRG $0EC27
  $AC29: a0 f8       ldy #$f8    ; PRG $0EC29
  $AC2B: 91 06       sta ($06),y    ; PRG $0EC2B
  $AC2D: a0 fd       ldy #$fd    ; PRG $0EC2D
  $AC2F: b1 06       lda ($06),y    ; PRG $0EC2F
  $AC31: a0 f9       ldy #$f9    ; PRG $0EC31
  $AC33: 91 06       sta ($06),y    ; PRG $0EC33
  $AC35: c8          iny    ; PRG $0EC35
  $AC36: b1 06       lda ($06),y    ; PRG $0EC36
  $AC38: a0 f6       ldy #$f6    ; PRG $0EC38
  $AC3A: 91 06       sta ($06),y    ; PRG $0EC3A
  $AC3C: a0 fb       ldy #$fb    ; PRG $0EC3C
  $AC3E: b1 06       lda ($06),y    ; PRG $0EC3E
  $AC40: a0 f7       ldy #$f7    ; PRG $0EC40
  $AC42: 91 06       sta ($06),y    ; PRG $0EC42
  $AC44: 4c 57 8b    jmp $8b57   ; search_treasure    ; PRG $0EC44

; ---- sub_7_0c47  [recovered]  <- (uncalled?)
  $AC47: 38          sec    ; PRG $0EC47
  $AC48: a0 f8       ldy #$f8    ; PRG $0EC48
  $AC4A: b1 06       lda ($06),y    ; PRG $0EC4A
  $AC4C: ed f0 7f    sbc $7ff0    ; PRG $0EC4C
  $AC4F: 85 18       sta $18    ; PRG $0EC4F
  $AC51: c8          iny    ; PRG $0EC51
  $AC52: b1 06       lda ($06),y    ; PRG $0EC52
  $AC54: ed f1 7f    sbc $7ff1    ; PRG $0EC54
  $AC57: 85 19       sta $19    ; PRG $0EC57
  $AC59: a5 19       lda $19    ; PRG $0EC59
  $AC5B: 48          pha    ; PRG $0EC5B
  $AC5C: a5 18       lda $18    ; PRG $0EC5C
  $AC5E: 48          pha    ; PRG $0EC5E
  $AC5F: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0EC5F
  $AC62: 56 dc 04    .db $56 $dc $04  -> vm $DC56 argc 4    ; PRG $0EC62
  $AC65: a5 08       lda $08    ; PRG $0EC65
  $AC67: 8d f0 7f    sta $7ff0    ; PRG $0EC67
  $AC6A: a5 09       lda $09    ; PRG $0EC6A
  $AC6C: 8d f1 7f    sta $7ff1    ; PRG $0EC6C
  $AC6F: 38          sec    ; PRG $0EC6F
  $AC70: a0 f6       ldy #$f6    ; PRG $0EC70
  $AC72: b1 06       lda ($06),y    ; PRG $0EC72
  $AC74: ed f2 7f    sbc $7ff2    ; PRG $0EC74
  $AC77: 85 18       sta $18    ; PRG $0EC77
  $AC79: c8          iny    ; PRG $0EC79
  $AC7A: b1 06       lda ($06),y    ; PRG $0EC7A
  $AC7C: ed f3 7f    sbc $7ff3    ; PRG $0EC7C
  $AC7F: 85 19       sta $19    ; PRG $0EC7F
  $AC81: a5 19       lda $19    ; PRG $0EC81
  $AC83: 48          pha    ; PRG $0EC83
  $AC84: a5 18       lda $18    ; PRG $0EC84
  $AC86: 48          pha    ; PRG $0EC86
  $AC87: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0EC87
  $AC8A: 56 dc 04    .db $56 $dc $04  -> vm $DC56 argc 4    ; PRG $0EC8A
  $AC8D: a5 08       lda $08    ; PRG $0EC8D
  $AC8F: 8d f2 7f    sta $7ff2    ; PRG $0EC8F
  $AC92: a5 09       lda $09    ; PRG $0EC92
  $AC94: 8d f3 7f    sta $7ff3    ; PRG $0EC94
  $AC97: a0 f0       ldy #$f0    ; PRG $0EC97
  $AC99: b1 06       lda ($06),y    ; PRG $0EC99
  $AC9B: 85 18       sta $18    ; PRG $0EC9B
  $AC9D: c8          iny    ; PRG $0EC9D
  $AC9E: b1 06       lda ($06),y    ; PRG $0EC9E
  $ACA0: 85 19       sta $19    ; PRG $0ECA0
  $ACA2: a9 03       lda #$03    ; PRG $0ECA2
  $ACA4: 85 14       sta $14    ; PRG $0ECA4
  $ACA6: 86 15       stx $15    ; PRG $0ECA6
  $ACA8: 18          clc    ; PRG $0ECA8
  $ACA9: a9 01       lda #$01    ; PRG $0ECA9
  $ACAB: 6d f0 7f    adc $7ff0    ; PRG $0ECAB
  $ACAE: 85 10       sta $10    ; PRG $0ECAE
  $ACB0: 8a          txa    ; PRG $0ECB0
  $ACB1: 6d f1 7f    adc $7ff1    ; PRG $0ECB1
  $ACB4: 85 11       sta $11    ; PRG $0ECB4
  $ACB6: a0 10       ldy #$10    ; PRG $0ECB6
  $ACB8: a2 14       ldx #$14    ; PRG $0ECB8
  $ACBA: a9 0c       lda #$0c    ; PRG $0ECBA
  $ACBC: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0ECBC
  $ACBF: 18          clc    ; PRG $0ECBF
  $ACC0: a5 0c       lda $0c    ; PRG $0ECC0
  $ACC2: 6d f2 7f    adc $7ff2    ; PRG $0ECC2
  $ACC5: 85 14       sta $14    ; PRG $0ECC5
  $ACC7: a5 0d       lda $0d    ; PRG $0ECC7
  $ACC9: 6d f3 7f    adc $7ff3    ; PRG $0ECC9
  $ACCC: 85 15       sta $15    ; PRG $0ECCC
  $ACCE: 18          clc    ; PRG $0ECCE
  $ACCF: a5 14       lda $14    ; PRG $0ECCF
  $ACD1: 69 c3       adc #$c3    ; PRG $0ECD1
  $ACD3: 85 10       sta $10    ; PRG $0ECD3
  $ACD5: a5 15       lda $15    ; PRG $0ECD5
  $ACD7: 69 9f       adc #$9f    ; PRG $0ECD7
  $ACD9: 85 11       sta $11    ; PRG $0ECD9
  $ACDB: a1 10       lda ($10,x)    ; PRG $0ECDB
  $ACDD: a0 08       ldy #$08    ; PRG $0ECDD
  $ACDF: 91 18       sta ($18),y    ; PRG $0ECDF
  $ACE1: 60          rts    ; PRG $0ECE1

; ---- sub_7_0ce8  [stub]  <- (entry: bytecode/OS via $E299)
nat_7_0ce2: jsr $E299                    ; 7:ACE2  native-call prologue
            .db $00 $fc $ff            ; inline: argcount $00, frame $fffc
  $ACE8: a0 14       ldy #$14    ; PRG $0ECE8
  $ACEA: b1 04       lda ($04),y    ; PRG $0ECEA
  $ACEC: 48          pha    ; PRG $0ECEC
  $ACED: 88          dey    ; PRG $0ECED
  $ACEE: b1 04       lda ($04),y    ; PRG $0ECEE
  $ACF0: 48          pha    ; PRG $0ECF0
  $ACF1: a0 0e       ldy #$0e    ; PRG $0ECF1
  $ACF3: b1 04       lda ($04),y    ; PRG $0ECF3
  $ACF5: 48          pha    ; PRG $0ECF5
  $ACF6: 88          dey    ; PRG $0ECF6
  $ACF7: b1 04       lda ($04),y    ; PRG $0ECF7
  $ACF9: 48          pha    ; PRG $0ECF9
  $ACFA: 88          dey    ; PRG $0ECFA
  $ACFB: b1 04       lda ($04),y    ; PRG $0ECFB
  $ACFD: 48          pha    ; PRG $0ECFD
  $ACFE: 88          dey    ; PRG $0ECFE
  $ACFF: b1 04       lda ($04),y    ; PRG $0ECFF
  $AD01: 48          pha    ; PRG $0ED01
  $AD02: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0ED02
  $AD05: 18 a9 08    .db $18 $a9 $08  -> vm $A918 argc 8    ; PRG $0ED05
  $AD08: a0 13       ldy #$13    ; PRG $0ED08
  $AD0A: b1 04       lda ($04),y    ; PRG $0ED0A
  $AD0C: c8          iny    ; PRG $0ED0C
  $AD0D: 11 04       ora ($04),y    ; PRG $0ED0D
  $AD0F: d0 03       bne $ad14    ; PRG $0ED0F
  $AD11: 4c d0 8e    jmp $8ed0    ; PRG $0ED11
  $AD14: a9 0e       lda #$0e    ; PRG $0ED14
  $AD16: 85 18       sta $18    ; PRG $0ED16
  $AD18: 86 19       stx $19    ; PRG $0ED18
  $AD1A: a0 0b       ldy #$0b    ; PRG $0ED1A
  $AD1C: b1 04       lda ($04),y    ; PRG $0ED1C
  $AD1E: 85 14       sta $14    ; PRG $0ED1E
  $AD20: c8          iny    ; PRG $0ED20
  $AD21: b1 04       lda ($04),y    ; PRG $0ED21
  $AD23: 85 15       sta $15    ; PRG $0ED23
  $AD25: a0 14       ldy #$14    ; PRG $0ED25
  $AD27: a2 18       ldx #$18    ; PRG $0ED27
  $AD29: a9 10       lda #$10    ; PRG $0ED29
  $AD2B: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0ED2B
  $AD2E: 18          clc    ; PRG $0ED2E
  $AD2F: a5 10       lda $10    ; PRG $0ED2F
  $AD31: a0 0d       ldy #$0d    ; PRG $0ED31
  $AD33: 71 04       adc ($04),y    ; PRG $0ED33
  $AD35: 85 18       sta $18    ; PRG $0ED35
  $AD37: a5 11       lda $11    ; PRG $0ED37
  $AD39: c8          iny    ; PRG $0ED39
  $AD3A: 71 04       adc ($04),y    ; PRG $0ED3A
  $AD3C: 85 19       sta $19    ; PRG $0ED3C
  $AD3E: 18          clc    ; PRG $0ED3E
  $AD3F: a5 18       lda $18    ; PRG $0ED3F
  $AD41: 69 b6       adc #$b6    ; PRG $0ED41
  $AD43: 85 14       sta $14    ; PRG $0ED43
  $AD45: a5 19       lda $19    ; PRG $0ED45
  $AD47: 69 72       adc #$72    ; PRG $0ED47
  $AD49: 85 15       sta $15    ; PRG $0ED49
  $AD4B: a1 14       lda ($14,x)    ; PRG $0ED4B
  $AD4D: 85 18       sta $18    ; PRG $0ED4D
  $AD4F: 86 19       stx $19    ; PRG $0ED4F
  $AD51: a5 18       lda $18    ; PRG $0ED51
  $AD53: a0 fe       ldy #$fe    ; PRG $0ED53
  $AD55: 91 06       sta ($06),y    ; PRG $0ED55
  $AD57: a5 19       lda $19    ; PRG $0ED57
  $AD59: c8          iny    ; PRG $0ED59
  $AD5A: 91 06       sta ($06),y    ; PRG $0ED5A
  $AD5C: 88          dey    ; PRG $0ED5C
  $AD5D: b1 06       lda ($06),y    ; PRG $0ED5D
  $AD5F: c9 ff       cmp #$ff    ; PRG $0ED5F
  $AD61: d0 05       bne $ad68    ; PRG $0ED61
  $AD63: c8          iny    ; PRG $0ED63
  $AD64: b1 06       lda ($06),y    ; PRG $0ED64
  $AD66: c9 00       cmp #$00    ; PRG $0ED66
  $AD68: f0 03       beq $ad6d    ; PRG $0ED68
  $AD6A: 4c e7 8d    jmp $8de7    ; PRG $0ED6A
  $AD6D: a0 15       ldy #$15    ; PRG $0ED6D
  $AD6F: b1 04       lda ($04),y    ; PRG $0ED6F
  $AD71: c8          iny    ; PRG $0ED71
  $AD72: 11 04       ora ($04),y    ; PRG $0ED72
  $AD74: d0 03       bne $ad79    ; PRG $0ED74
  $AD76: 4c e4 8d    jmp $8de4    ; PRG $0ED76
  $AD79: a9 03       lda #$03    ; PRG $0ED79
  $AD7B: 85 18       sta $18    ; PRG $0ED7B
  $AD7D: 86 19       stx $19    ; PRG $0ED7D
  $AD7F: a0 0f       ldy #$0f    ; PRG $0ED7F
  $AD81: b1 04       lda ($04),y    ; PRG $0ED81
  $AD83: 85 14       sta $14    ; PRG $0ED83
  $AD85: c8          iny    ; PRG $0ED85
  $AD86: b1 04       lda ($04),y    ; PRG $0ED86
  $AD88: 85 15       sta $15    ; PRG $0ED88
  $AD8A: a0 14       ldy #$14    ; PRG $0ED8A
  $AD8C: a2 18       ldx #$18    ; PRG $0ED8C
  $AD8E: a9 10       lda #$10    ; PRG $0ED8E
  $AD90: 20 eb e1    jsr $e1eb   ; alu_udiv16    ; PRG $0ED90
  $AD93: a9 03       lda #$03    ; PRG $0ED93
  $AD95: 85 18       sta $18    ; PRG $0ED95
  $AD97: 86 19       stx $19    ; PRG $0ED97
  $AD99: 85 14       sta $14    ; PRG $0ED99
  $AD9B: 86 15       stx $15    ; PRG $0ED9B
  $AD9D: a0 11       ldy #$11    ; PRG $0ED9D
  $AD9F: b1 04       lda ($04),y    ; PRG $0ED9F
  $ADA1: 85 0c       sta $0c    ; PRG $0EDA1
  $ADA3: c8          iny    ; PRG $0EDA3
  $ADA4: b1 04       lda ($04),y    ; PRG $0EDA4
  $ADA6: 85 0d       sta $0d    ; PRG $0EDA6
  $ADA8: a0 0c       ldy #$0c    ; PRG $0EDA8
  $ADAA: a2 14       ldx #$14    ; PRG $0EDAA
  $ADAC: a9 08       lda #$08    ; PRG $0EDAC
  $ADAE: 20 eb e1    jsr $e1eb   ; alu_udiv16    ; PRG $0EDAE
  $ADB1: a0 08       ldy #$08    ; PRG $0EDB1
  $ADB3: a2 18       ldx #$18    ; PRG $0EDB3
  $ADB5: a9 14       lda #$14    ; PRG $0EDB5
  $ADB7: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0EDB7
  $ADBA: 18          clc    ; PRG $0EDBA
  $ADBB: a5 14       lda $14    ; PRG $0EDBB
  $ADBD: 65 10       adc $10    ; PRG $0EDBD
  $ADBF: 85 18       sta $18    ; PRG $0EDBF
  $ADC1: a5 15       lda $15    ; PRG $0EDC1
  $ADC3: 65 11       adc $11    ; PRG $0EDC3
  $ADC5: 85 19       sta $19    ; PRG $0EDC5
  $ADC7: a5 19       lda $19    ; PRG $0EDC7
  $ADC9: 48          pha    ; PRG $0EDC9
  $ADCA: a5 18       lda $18    ; PRG $0EDCA
  $ADCC: 48          pha    ; PRG $0EDCC
  $ADCD: a0 0e       ldy #$0e    ; PRG $0EDCD
  $ADCF: b1 04       lda ($04),y    ; PRG $0EDCF
  $ADD1: 48          pha    ; PRG $0EDD1
  $ADD2: 88          dey    ; PRG $0EDD2
  $ADD3: b1 04       lda ($04),y    ; PRG $0EDD3
  $ADD5: 48          pha    ; PRG $0EDD5
  $ADD6: 88          dey    ; PRG $0EDD6
  $ADD7: b1 04       lda ($04),y    ; PRG $0EDD7
  $ADD9: 48          pha    ; PRG $0EDD9
  $ADDA: 88          dey    ; PRG $0EDDA
  $ADDB: b1 04       lda ($04),y    ; PRG $0EDDB
  $ADDD: 48          pha    ; PRG $0EDDD
  $ADDE: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0EDDE
  $ADE1: dd ac 08    .db $dd $ac $08  -> vm $ACDD argc 8    ; PRG $0EDE1
  $ADE4: 4c d0 8e    jmp $8ed0    ; PRG $0EDE4

; ---- sub_7_0de7  [recovered]  <- (uncalled?)
  $ADE7: a9 01       lda #$01    ; PRG $0EDE7
  $ADE9: a0 fc       ldy #$fc    ; PRG $0EDE9
  $ADEB: 91 06       sta ($06),y    ; PRG $0EDEB
  $ADED: 8a          txa    ; PRG $0EDED
  $ADEE: c8          iny    ; PRG $0EDEE
  $ADEF: 91 06       sta ($06),y    ; PRG $0EDEF
  $ADF1: a0 fe       ldy #$fe    ; PRG $0EDF1
  $ADF3: b1 06       lda ($06),y    ; PRG $0EDF3
  $ADF5: c8          iny    ; PRG $0EDF5
  $ADF6: 11 06       ora ($06),y    ; PRG $0EDF6
  $ADF8: f0 03       beq $adfd    ; PRG $0EDF8
  $ADFA: 4c 0f 8e    jmp $8e0f    ; PRG $0EDFA
  $ADFD: 18          clc    ; PRG $0EDFD
  $ADFE: 98          tya    ; PRG $0EDFE
  $ADFF: a0 fc       ldy #$fc    ; PRG $0EDFF
  $AE01: 71 06       adc ($06),y    ; PRG $0EE01
  $AE03: 91 06       sta ($06),y    ; PRG $0EE03
  $AE05: a9 ff       lda #$ff    ; PRG $0EE05
  $AE07: c8          iny    ; PRG $0EE07
  $AE08: 71 06       adc ($06),y    ; PRG $0EE08
  $AE0A: 91 06       sta ($06),y    ; PRG $0EE0A
  $AE0C: 4c 36 8e    jmp $8e36    ; PRG $0EE0C

; ---- sub_7_0e0f  [recovered]  <- (uncalled?)
  $AE0F: a0 fe       ldy #$fe    ; PRG $0EE0F
  $AE11: b1 06       lda ($06),y    ; PRG $0EE11
  $AE13: c9 ff       cmp #$ff    ; PRG $0EE13
  $AE15: d0 05       bne $ae1c    ; PRG $0EE15
  $AE17: c8          iny    ; PRG $0EE17
  $AE18: b1 06       lda ($06),y    ; PRG $0EE18
  $AE1A: c9 00       cmp #$00    ; PRG $0EE1A
  $AE1C: d0 03       bne $ae21    ; PRG $0EE1C
  $AE1E: 4c 33 8e    jmp $8e33    ; PRG $0EE1E
  $AE21: 18          clc    ; PRG $0EE21
  $AE22: a9 01       lda #$01    ; PRG $0EE22
  $AE24: a0 fc       ldy #$fc    ; PRG $0EE24
  $AE26: 71 06       adc ($06),y    ; PRG $0EE26
  $AE28: 91 06       sta ($06),y    ; PRG $0EE28
  $AE2A: 8a          txa    ; PRG $0EE2A
  $AE2B: c8          iny    ; PRG $0EE2B
  $AE2C: 71 06       adc ($06),y    ; PRG $0EE2C
  $AE2E: 91 06       sta ($06),y    ; PRG $0EE2E
  $AE30: 4c 36 8e    jmp $8e36    ; PRG $0EE30

; ---- sub_7_0e33  [recovered]  <- (uncalled?)
  $AE33: 4c 59 8e    jmp $8e59    ; PRG $0EE33

; ---- sub_7_0e36  [recovered]  <- (uncalled?)
  $AE36: 18          clc    ; PRG $0EE36
  $AE37: a0 fe       ldy #$fe    ; PRG $0EE37
  $AE39: b1 06       lda ($06),y    ; PRG $0EE39
  $AE3B: 69 a0       adc #$a0    ; PRG $0EE3B
  $AE3D: 85 18       sta $18    ; PRG $0EE3D
  $AE3F: c8          iny    ; PRG $0EE3F
  $AE40: b1 06       lda ($06),y    ; PRG $0EE40
  $AE42: 69 72       adc #$72    ; PRG $0EE42
  $AE44: 85 19       sta $19    ; PRG $0EE44
  $AE46: a1 18       lda ($18,x)    ; PRG $0EE46
  $AE48: 85 14       sta $14    ; PRG $0EE48
  $AE4A: 86 15       stx $15    ; PRG $0EE4A
  $AE4C: a5 14       lda $14    ; PRG $0EE4C
  $AE4E: 88          dey    ; PRG $0EE4E
  $AE4F: 91 06       sta ($06),y    ; PRG $0EE4F
  $AE51: a5 15       lda $15    ; PRG $0EE51
  $AE53: c8          iny    ; PRG $0EE53
  $AE54: 91 06       sta ($06),y    ; PRG $0EE54
  $AE56: 4c f1 8d    jmp $8df1    ; PRG $0EE56

; ---- sub_7_0e59  [recovered]  <- (uncalled?)
  $AE59: a0 fc       ldy #$fc    ; PRG $0EE59
  $AE5B: b1 06       lda ($06),y    ; PRG $0EE5B
  $AE5D: c8          iny    ; PRG $0EE5D
  $AE5E: 11 06       ora ($06),y    ; PRG $0EE5E
  $AE60: f0 03       beq $ae65    ; PRG $0EE60
  $AE62: 4c d0 8e    jmp $8ed0    ; PRG $0EE62
  $AE65: a9 03       lda #$03    ; PRG $0EE65
  $AE67: 85 18       sta $18    ; PRG $0EE67
  $AE69: 86 19       stx $19    ; PRG $0EE69
  $AE6B: a0 0f       ldy #$0f    ; PRG $0EE6B
  $AE6D: b1 04       lda ($04),y    ; PRG $0EE6D
  $AE6F: 85 14       sta $14    ; PRG $0EE6F
  $AE71: c8          iny    ; PRG $0EE71
  $AE72: b1 04       lda ($04),y    ; PRG $0EE72
  $AE74: 85 15       sta $15    ; PRG $0EE74
  $AE76: a0 14       ldy #$14    ; PRG $0EE76
  $AE78: a2 18       ldx #$18    ; PRG $0EE78
  $AE7A: a9 10       lda #$10    ; PRG $0EE7A
  $AE7C: 20 eb e1    jsr $e1eb   ; alu_udiv16    ; PRG $0EE7C
  $AE7F: a9 03       lda #$03    ; PRG $0EE7F
  $AE81: 85 18       sta $18    ; PRG $0EE81
  $AE83: 86 19       stx $19    ; PRG $0EE83
  $AE85: 85 14       sta $14    ; PRG $0EE85
  $AE87: 86 15       stx $15    ; PRG $0EE87
  $AE89: a0 11       ldy #$11    ; PRG $0EE89
  $AE8B: b1 04       lda ($04),y    ; PRG $0EE8B
  $AE8D: 85 0c       sta $0c    ; PRG $0EE8D
  $AE8F: c8          iny    ; PRG $0EE8F
  $AE90: b1 04       lda ($04),y    ; PRG $0EE90
  $AE92: 85 0d       sta $0d    ; PRG $0EE92
  $AE94: a0 0c       ldy #$0c    ; PRG $0EE94
  $AE96: a2 14       ldx #$14    ; PRG $0EE96
  $AE98: a9 08       lda #$08    ; PRG $0EE98
  $AE9A: 20 eb e1    jsr $e1eb   ; alu_udiv16    ; PRG $0EE9A
  $AE9D: a0 08       ldy #$08    ; PRG $0EE9D
  $AE9F: a2 18       ldx #$18    ; PRG $0EE9F
  $AEA1: a9 14       lda #$14    ; PRG $0EEA1
  $AEA3: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0EEA3
  $AEA6: 18          clc    ; PRG $0EEA6
  $AEA7: a5 14       lda $14    ; PRG $0EEA7
  $AEA9: 65 10       adc $10    ; PRG $0EEA9
  $AEAB: 85 18       sta $18    ; PRG $0EEAB
  $AEAD: a5 15       lda $15    ; PRG $0EEAD
  $AEAF: 65 11       adc $11    ; PRG $0EEAF
  $AEB1: 85 19       sta $19    ; PRG $0EEB1
  $AEB3: a5 19       lda $19    ; PRG $0EEB3
  $AEB5: 48          pha    ; PRG $0EEB5
  $AEB6: a5 18       lda $18    ; PRG $0EEB6
  $AEB8: 48          pha    ; PRG $0EEB8
  $AEB9: a0 0e       ldy #$0e    ; PRG $0EEB9
  $AEBB: b1 04       lda ($04),y    ; PRG $0EEBB
  $AEBD: 48          pha    ; PRG $0EEBD
  $AEBE: 88          dey    ; PRG $0EEBE
  $AEBF: b1 04       lda ($04),y    ; PRG $0EEBF
  $AEC1: 48          pha    ; PRG $0EEC1
  $AEC2: 88          dey    ; PRG $0EEC2
  $AEC3: b1 04       lda ($04),y    ; PRG $0EEC3
  $AEC5: 48          pha    ; PRG $0EEC5
  $AEC6: 88          dey    ; PRG $0EEC6
  $AEC7: b1 04       lda ($04),y    ; PRG $0EEC7
  $AEC9: 48          pha    ; PRG $0EEC9
  $AECA: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0EECA
  $AECD: dd ac 08    .db $dd $ac $08  -> vm $ACDD argc 8    ; PRG $0EECD
  $AED0: 60          rts    ; PRG $0EED0

; ---- sub_7_0ed7  [stub]  <- (entry: bytecode/OS via $E299)
nat_7_0ed1: jsr $E299                    ; 7:AED1  native-call prologue
            .db $00 $da $ff            ; inline: argcount $00, frame $ffda
  $AED7: a9 04       lda #$04    ; PRG $0EED7
  $AED9: 85 18       sta $18    ; PRG $0EED9
  $AEDB: 86 19       stx $19    ; PRG $0EEDB
  $AEDD: a0 0b       ldy #$0b    ; PRG $0EEDD
  $AEDF: b1 04       lda ($04),y    ; PRG $0EEDF
  $AEE1: 85 14       sta $14    ; PRG $0EEE1
  $AEE3: c8          iny    ; PRG $0EEE3
  $AEE4: b1 04       lda ($04),y    ; PRG $0EEE4
  $AEE6: 85 15       sta $15    ; PRG $0EEE6
  $AEE8: a0 14       ldy #$14    ; PRG $0EEE8
  $AEEA: a2 18       ldx #$18    ; PRG $0EEEA
  $AEEC: a9 10       lda #$10    ; PRG $0EEEC
  $AEEE: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0EEEE
  $AEF1: 18          clc    ; PRG $0EEF1
  $AEF2: a5 10       lda $10    ; PRG $0EEF2
  $AEF4: 69 62       adc #$62    ; PRG $0EEF4
  $AEF6: a0 fc       ldy #$fc    ; PRG $0EEF6
  $AEF8: 91 06       sta ($06),y    ; PRG $0EEF8
  $AEFA: a5 11       lda $11    ; PRG $0EEFA
  $AEFC: 69 66       adc #$66    ; PRG $0EEFC
  $AEFE: c8          iny    ; PRG $0EEFE
  $AEFF: 91 06       sta ($06),y    ; PRG $0EEFF
  $AF01: a0 0d       ldy #$0d    ; PRG $0EF01
  $AF03: b1 04       lda ($04),y    ; PRG $0EF03
  $AF05: c8          iny    ; PRG $0EF05
  $AF06: 11 04       ora ($04),y    ; PRG $0EF06
  $AF08: d0 03       bne $af0d    ; PRG $0EF08
  $AF0A: 4c af 8f    jmp $8faf    ; PRG $0EF0A
  $AF0D: ad 99 72    lda $7299    ; PRG $0EF0D
  $AF10: d0 03       bne $af15    ; PRG $0EF10
  $AF12: 4c 2b 8f    jmp $8f2b    ; PRG $0EF12
  $AF15: a9 96       lda #$96    ; PRG $0EF15
  $AF17: 48          pha    ; PRG $0EF17
  $AF18: a9 52       lda #$52    ; PRG $0EF18
  $AF1A: 48          pha    ; PRG $0EF1A
  $AF1B: 8a          txa    ; PRG $0EF1B
  $AF1C: 48          pha    ; PRG $0EF1C
  $AF1D: a9 c8       lda #$c8    ; PRG $0EF1D
  $AF1F: 48          pha    ; PRG $0EF1F
  $AF20: 8a          txa    ; PRG $0EF20
  $AF21: 48          pha    ; PRG $0EF21
  $AF22: a9 01       lda #$01    ; PRG $0EF22
  $AF24: 48          pha    ; PRG $0EF24
  $AF25: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0EF25
  $AF28: 3a de 08    .db $3a $de $08  -> vm $DE3A argc 8    ; PRG $0EF28
  $AF2B: ad 98 72    lda $7298   ; ship_sail_state    ; PRG $0EF2B
  $AF2E: d0 03       bne $af33    ; PRG $0EF2E
  $AF30: 4c 49 8f    jmp $8f49    ; PRG $0EF30
  $AF33: a9 9b       lda #$9b    ; PRG $0EF33
  $AF35: 48          pha    ; PRG $0EF35
  $AF36: a9 c0       lda #$c0    ; PRG $0EF36
  $AF38: 48          pha    ; PRG $0EF38
  $AF39: 8a          txa    ; PRG $0EF39
  $AF3A: 48          pha    ; PRG $0EF3A
  $AF3B: a9 c8       lda #$c8    ; PRG $0EF3B
  $AF3D: 48          pha    ; PRG $0EF3D
  $AF3E: 8a          txa    ; PRG $0EF3E
  $AF3F: 48          pha    ; PRG $0EF3F
  $AF40: a9 01       lda #$01    ; PRG $0EF40
  $AF42: 48          pha    ; PRG $0EF42
  $AF43: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0EF43
  $AF46: 3a de 08    .db $3a $de $08  -> vm $DE3A argc 8    ; PRG $0EF46
  $AF49: ad 8c 6b    lda $6b8c    ; PRG $0EF49
  $AF4C: f0 03       beq $af51    ; PRG $0EF4C
  $AF4E: 4c ac 8f    jmp $8fac    ; PRG $0EF4E
  $AF51: a9 8b       lda #$8b    ; PRG $0EF51
  $AF53: 48          pha    ; PRG $0EF53
  $AF54: a9 82       lda #$82    ; PRG $0EF54
  $AF56: 48          pha    ; PRG $0EF56
  $AF57: 8a          txa    ; PRG $0EF57
  $AF58: 48          pha    ; PRG $0EF58
  $AF59: a9 c8       lda #$c8    ; PRG $0EF59
  $AF5B: 48          pha    ; PRG $0EF5B
  $AF5C: 8a          txa    ; PRG $0EF5C
  $AF5D: 48          pha    ; PRG $0EF5D
  $AF5E: a9 01       lda #$01    ; PRG $0EF5E
  $AF60: 48          pha    ; PRG $0EF60
  $AF61: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0EF61
  $AF64: 3a de 08    .db $3a $de $08  -> vm $DE3A argc 8    ; PRG $0EF64
  $AF67: a0 fc       ldy #$fc    ; PRG $0EF67
  $AF69: b1 06       lda ($06),y    ; PRG $0EF69
  $AF6B: 85 18       sta $18    ; PRG $0EF6B
  $AF6D: c8          iny    ; PRG $0EF6D
  $AF6E: b1 06       lda ($06),y    ; PRG $0EF6E
  $AF70: 85 19       sta $19    ; PRG $0EF70
  $AF72: a0 0f       ldy #$0f    ; PRG $0EF72
  $AF74: b1 18       lda ($18),y    ; PRG $0EF74
  $AF76: 85 14       sta $14    ; PRG $0EF76
  $AF78: 86 15       stx $15    ; PRG $0EF78
  $AF7A: a5 14       lda $14    ; PRG $0EF7A
  $AF7C: 29 01       and #$01    ; PRG $0EF7C
  $AF7E: d0 03       bne $af83    ; PRG $0EF7E
  $AF80: 4c ac 8f    jmp $8fac    ; PRG $0EF80
  $AF83: 8a          txa    ; PRG $0EF83
  $AF84: 48          pha    ; PRG $0EF84
  $AF85: a9 96       lda #$96    ; PRG $0EF85
  $AF87: 48          pha    ; PRG $0EF87
  $AF88: 18          clc    ; PRG $0EF88
  $AF89: a9 01       lda #$01    ; PRG $0EF89
  $AF8B: 6d 96 6a    adc $6a96    ; PRG $0EF8B
  $AF8E: 85 18       sta $18    ; PRG $0EF8E
  $AF90: 8a          txa    ; PRG $0EF90
  $AF91: 6d 97 6a    adc $6a97    ; PRG $0EF91
  $AF94: 85 19       sta $19    ; PRG $0EF94
  $AF96: a5 19       lda $19    ; PRG $0EF96
  $AF98: 48          pha    ; PRG $0EF98
  $AF99: a5 18       lda $18    ; PRG $0EF99
  $AF9B: 48          pha    ; PRG $0EF9B
  $AF9C: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0EF9C
  $AF9F: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $0EF9F
  $AFA2: a5 08       lda $08    ; PRG $0EFA2
  $AFA4: 8d 96 6a    sta $6a96    ; PRG $0EFA4
  $AFA7: a5 09       lda $09    ; PRG $0EFA7
  $AFA9: 8d 97 6a    sta $6a97    ; PRG $0EFA9
  $AFAC: 4c de 8f    jmp $8fde    ; PRG $0EFAC

; ---- sub_7_0faf  [recovered]  <- (uncalled?)
  $AFAF: a9 33       lda #$33    ; PRG $0EFAF
  $AFB1: 85 18       sta $18    ; PRG $0EFB1
  $AFB3: 86 19       stx $19    ; PRG $0EFB3
  $AFB5: 18          clc    ; PRG $0EFB5
  $AFB6: a9 ff       lda #$ff    ; PRG $0EFB6
  $AFB8: a0 0b       ldy #$0b    ; PRG $0EFB8
  $AFBA: 71 04       adc ($04),y    ; PRG $0EFBA
  $AFBC: 85 14       sta $14    ; PRG $0EFBC
  $AFBE: a9 ff       lda #$ff    ; PRG $0EFBE
  $AFC0: c8          iny    ; PRG $0EFC0
  $AFC1: 71 04       adc ($04),y    ; PRG $0EFC1
  $AFC3: 85 15       sta $15    ; PRG $0EFC3
  $AFC5: a0 14       ldy #$14    ; PRG $0EFC5
  $AFC7: a2 18       ldx #$18    ; PRG $0EFC7
  $AFC9: a9 10       lda #$10    ; PRG $0EFC9
  $AFCB: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0EFCB
  $AFCE: 18          clc    ; PRG $0EFCE
  $AFCF: a5 10       lda $10    ; PRG $0EFCF
  $AFD1: 69 04       adc #$04    ; PRG $0EFD1
  $AFD3: a0 fe       ldy #$fe    ; PRG $0EFD3
  $AFD5: 91 06       sta ($06),y    ; PRG $0EFD5
  $AFD7: a5 11       lda $11    ; PRG $0EFD7
  $AFD9: 69 60       adc #$60    ; PRG $0EFD9
  $AFDB: c8          iny    ; PRG $0EFDB
  $AFDC: 91 06       sta ($06),y    ; PRG $0EFDC
  $AFDE: ad 99 72    lda $7299    ; PRG $0EFDE
  $AFE1: 85 18       sta $18    ; PRG $0EFE1
  $AFE3: 86 19       stx $19    ; PRG $0EFE3
  $AFE5: a5 18       lda $18    ; PRG $0EFE5
  $AFE7: c9 01       cmp #$01    ; PRG $0EFE7
  $AFE9: d0 04       bne $afef    ; PRG $0EFE9
  $AFEB: a5 19       lda $19    ; PRG $0EFEB
  $AFED: c9 00       cmp #$00    ; PRG $0EFED
  $AFEF: f0 03       beq $aff4    ; PRG $0EFEF
  $AFF1: 4c 76 90    jmp $9076    ; PRG $0EFF1
  $AFF4: a0 0b       ldy #$0b    ; PRG $0EFF4
  $AFF6: b1 04       lda ($04),y    ; PRG $0EFF6
  $AFF8: c8          iny    ; PRG $0EFF8
  $AFF9: 11 04       ora ($04),y    ; PRG $0EFF9
  $AFFB: f0 03       beq $b000    ; PRG $0EFFB
  $AFFD: 4c 76 90    jmp $9076    ; PRG $0EFFD
  $B000: a9 05       lda #$05    ; PRG $0F000
  $B002: 85 18       sta $18    ; PRG $0F002
  $B004: 86 19       stx $19    ; PRG $0F004
  $B006: ad 8c 6b    lda $6b8c    ; PRG $0F006
  $B009: 85 14       sta $14    ; PRG $0F009
  $B00B: 86 15       stx $15    ; PRG $0F00B
  $B00D: a0 14       ldy #$14    ; PRG $0F00D
  $B00F: a2 18       ldx #$18    ; PRG $0F00F
  $B011: a9 10       lda #$10    ; PRG $0F011
  $B013: 20 eb e1    jsr $e1eb   ; alu_udiv16    ; PRG $0F013
  $B016: a5 10       lda $10    ; PRG $0F016
  $B018: 29 01       and #$01    ; PRG $0F018
  $B01A: d0 03       bne $b01f    ; PRG $0F01A
  $B01C: 4c 37 90    jmp $9037    ; PRG $0F01C
  $B01F: a9 9a       lda #$9a    ; PRG $0F01F
  $B021: 48          pha    ; PRG $0F021
  $B022: a9 34       lda #$34    ; PRG $0F022
  $B024: 48          pha    ; PRG $0F024
  $B025: 8a          txa    ; PRG $0F025
  $B026: 48          pha    ; PRG $0F026
  $B027: a9 c8       lda #$c8    ; PRG $0F027
  $B029: 48          pha    ; PRG $0F029
  $B02A: 8a          txa    ; PRG $0F02A
  $B02B: 48          pha    ; PRG $0F02B
  $B02C: 98          tya    ; PRG $0F02C
  $B02D: 48          pha    ; PRG $0F02D
  $B02E: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0F02E
  $B031: 3a de 08    .db $3a $de $08  -> vm $DE3A argc 8    ; PRG $0F031
  $B034: 4c 76 90    jmp $9076    ; PRG $0F034

; ---- sub_7_1037  [recovered]  <- (uncalled?)
  $B037: 8a          txa    ; PRG $0F037
  $B038: 48          pha    ; PRG $0F038
  $B039: a9 05       lda #$05    ; PRG $0F039
  $B03B: 48          pha    ; PRG $0F03B
  $B03C: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0F03C
  $B03F: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $0F03F
  $B042: a5 08       lda $08    ; PRG $0F042
  $B044: 05 09       ora $09    ; PRG $0F044
  $B046: f0 03       beq $b04b    ; PRG $0F046
  $B048: 4c 60 90    jmp $9060    ; PRG $0F048
  $B04B: a9 99       lda #$99    ; PRG $0F04B
  $B04D: 48          pha    ; PRG $0F04D
  $B04E: a9 04       lda #$04    ; PRG $0F04E
  $B050: 48          pha    ; PRG $0F050
  $B051: 8a          txa    ; PRG $0F051
  $B052: 48          pha    ; PRG $0F052
  $B053: a9 c8       lda #$c8    ; PRG $0F053
  $B055: 48          pha    ; PRG $0F055
  $B056: 8a          txa    ; PRG $0F056
  $B057: 48          pha    ; PRG $0F057
  $B058: 98          tya    ; PRG $0F058
  $B059: 48          pha    ; PRG $0F059
  $B05A: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0F05A
  $B05D: 3a de 08    .db $3a $de $08  -> vm $DE3A argc 8    ; PRG $0F05D
  $B060: a9 9a       lda #$9a    ; PRG $0F060
  $B062: 48          pha    ; PRG $0F062
  $B063: a9 4b       lda #$4b    ; PRG $0F063
  $B065: 48          pha    ; PRG $0F065
  $B066: 8a          txa    ; PRG $0F066
  $B067: 48          pha    ; PRG $0F067
  $B068: a9 c8       lda #$c8    ; PRG $0F068
  $B06A: 48          pha    ; PRG $0F06A
  $B06B: 8a          txa    ; PRG $0F06B
  $B06C: 48          pha    ; PRG $0F06C
  $B06D: a9 01       lda #$01    ; PRG $0F06D
  $B06F: 48          pha    ; PRG $0F06F
  $B070: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0F070
  $B073: 3a de 08    .db $3a $de $08  -> vm $DE3A argc 8    ; PRG $0F073
  $B076: a0 fc       ldy #$fc    ; PRG $0F076
  $B078: b1 06       lda ($06),y    ; PRG $0F078
  $B07A: a0 e2       ldy #$e2    ; PRG $0F07A
  $B07C: 91 06       sta ($06),y    ; PRG $0F07C
  $B07E: a0 fd       ldy #$fd    ; PRG $0F07E
  $B080: b1 06       lda ($06),y    ; PRG $0F080
  $B082: a0 e3       ldy #$e3    ; PRG $0F082
  $B084: 91 06       sta ($06),y    ; PRG $0F084
  $B086: 18          clc    ; PRG $0F086
  $B087: a9 01       lda #$01    ; PRG $0F087
  $B089: a0 fc       ldy #$fc    ; PRG $0F089
  $B08B: 71 06       adc ($06),y    ; PRG $0F08B
  $B08D: a0 e0       ldy #$e0    ; PRG $0F08D
  $B08F: 91 06       sta ($06),y    ; PRG $0F08F
  $B091: 8a          txa    ; PRG $0F091
  $B092: a0 fd       ldy #$fd    ; PRG $0F092
  $B094: 71 06       adc ($06),y    ; PRG $0F094
  $B096: a0 e1       ldy #$e1    ; PRG $0F096
  $B098: 91 06       sta ($06),y    ; PRG $0F098
  $B09A: 18          clc    ; PRG $0F09A
  $B09B: a9 02       lda #$02    ; PRG $0F09B
  $B09D: a0 fc       ldy #$fc    ; PRG $0F09D
  $B09F: 71 06       adc ($06),y    ; PRG $0F09F
  $B0A1: a0 e6       ldy #$e6    ; PRG $0F0A1
  $B0A3: 91 06       sta ($06),y    ; PRG $0F0A3
  $B0A5: 8a          txa    ; PRG $0F0A5
  $B0A6: a0 fd       ldy #$fd    ; PRG $0F0A6
  $B0A8: 71 06       adc ($06),y    ; PRG $0F0A8
  $B0AA: a0 e7       ldy #$e7    ; PRG $0F0AA
  $B0AC: 91 06       sta ($06),y    ; PRG $0F0AC
  $B0AE: 18          clc    ; PRG $0F0AE
  $B0AF: a9 03       lda #$03    ; PRG $0F0AF
  $B0B1: a0 fc       ldy #$fc    ; PRG $0F0B1
  $B0B3: 71 06       adc ($06),y    ; PRG $0F0B3
  $B0B5: a0 e4       ldy #$e4    ; PRG $0F0B5
  $B0B7: 91 06       sta ($06),y    ; PRG $0F0B7
  $B0B9: 8a          txa    ; PRG $0F0B9
  $B0BA: a0 fd       ldy #$fd    ; PRG $0F0BA
  $B0BC: 71 06       adc ($06),y    ; PRG $0F0BC
  $B0BE: a0 e5       ldy #$e5    ; PRG $0F0BE
  $B0C0: 91 06       sta ($06),y    ; PRG $0F0C0
  $B0C2: 18          clc    ; PRG $0F0C2
  $B0C3: a9 04       lda #$04    ; PRG $0F0C3
  $B0C5: a0 fc       ldy #$fc    ; PRG $0F0C5
  $B0C7: 71 06       adc ($06),y    ; PRG $0F0C7
  $B0C9: a0 dc       ldy #$dc    ; PRG $0F0C9
  $B0CB: 91 06       sta ($06),y    ; PRG $0F0CB
  $B0CD: 8a          txa    ; PRG $0F0CD
  $B0CE: a0 fd       ldy #$fd    ; PRG $0F0CE
  $B0D0: 71 06       adc ($06),y    ; PRG $0F0D0
  $B0D2: a0 dd       ldy #$dd    ; PRG $0F0D2
  $B0D4: 91 06       sta ($06),y    ; PRG $0F0D4
  $B0D6: 18          clc    ; PRG $0F0D6
  $B0D7: a9 06       lda #$06    ; PRG $0F0D7
  $B0D9: a0 fc       ldy #$fc    ; PRG $0F0D9
  $B0DB: 71 06       adc ($06),y    ; PRG $0F0DB
  $B0DD: a0 da       ldy #$da    ; PRG $0F0DD
  $B0DF: 91 06       sta ($06),y    ; PRG $0F0DF
  $B0E1: 8a          txa    ; PRG $0F0E1
  $B0E2: a0 fd       ldy #$fd    ; PRG $0F0E2
  $B0E4: 71 06       adc ($06),y    ; PRG $0F0E4
  $B0E6: a0 db       ldy #$db    ; PRG $0F0E6
  $B0E8: 91 06       sta ($06),y    ; PRG $0F0E8
  $B0EA: a0 e2       ldy #$e2    ; PRG $0F0EA
  $B0EC: b1 06       lda ($06),y    ; PRG $0F0EC
  $B0EE: 85 18       sta $18    ; PRG $0F0EE
  $B0F0: c8          iny    ; PRG $0F0F0
  $B0F1: b1 06       lda ($06),y    ; PRG $0F0F1
  $B0F3: 85 19       sta $19    ; PRG $0F0F3
  $B0F5: a1 18       lda ($18,x)    ; PRG $0F0F5
  $B0F7: 85 14       sta $14    ; PRG $0F0F7
  $B0F9: 86 15       stx $15    ; PRG $0F0F9
  $B0FB: a5 14       lda $14    ; PRG $0F0FB
  $B0FD: a0 ee       ldy #$ee    ; PRG $0F0FD
  $B0FF: 91 06       sta ($06),y    ; PRG $0F0FF
  $B101: a5 15       lda $15    ; PRG $0F101
  $B103: c8          iny    ; PRG $0F103
  $B104: 91 06       sta ($06),y    ; PRG $0F104
  $B106: a0 e0       ldy #$e0    ; PRG $0F106
  $B108: b1 06       lda ($06),y    ; PRG $0F108
  $B10A: 85 18       sta $18    ; PRG $0F10A
  $B10C: c8          iny    ; PRG $0F10C
  $B10D: b1 06       lda ($06),y    ; PRG $0F10D
  $B10F: 85 19       sta $19    ; PRG $0F10F
  $B111: a1 18       lda ($18,x)    ; PRG $0F111
  $B113: 85 14       sta $14    ; PRG $0F113
  $B115: 86 15       stx $15    ; PRG $0F115
  $B117: a5 14       lda $14    ; PRG $0F117
  $B119: a0 ec       ldy #$ec    ; PRG $0F119
  $B11B: 91 06       sta ($06),y    ; PRG $0F11B
  $B11D: a5 15       lda $15    ; PRG $0F11D
  $B11F: c8          iny    ; PRG $0F11F
  $B120: 91 06       sta ($06),y    ; PRG $0F120
  $B122: a0 e6       ldy #$e6    ; PRG $0F122
  $B124: b1 06       lda ($06),y    ; PRG $0F124
  $B126: 85 18       sta $18    ; PRG $0F126
  $B128: c8          iny    ; PRG $0F128
  $B129: b1 06       lda ($06),y    ; PRG $0F129
  $B12B: 85 19       sta $19    ; PRG $0F12B
  $B12D: a1 18       lda ($18,x)    ; PRG $0F12D
  $B12F: 85 14       sta $14    ; PRG $0F12F
  $B131: 86 15       stx $15    ; PRG $0F131
  $B133: a5 14       lda $14    ; PRG $0F133
  $B135: a0 f2       ldy #$f2    ; PRG $0F135
  $B137: 91 06       sta ($06),y    ; PRG $0F137
  $B139: a5 15       lda $15    ; PRG $0F139
  $B13B: c8          iny    ; PRG $0F13B
  $B13C: 91 06       sta ($06),y    ; PRG $0F13C
  $B13E: a0 e4       ldy #$e4    ; PRG $0F13E
  $B140: b1 06       lda ($06),y    ; PRG $0F140
  $B142: 85 18       sta $18    ; PRG $0F142
  $B144: c8          iny    ; PRG $0F144
  $B145: b1 06       lda ($06),y    ; PRG $0F145
  $B147: 85 19       sta $19    ; PRG $0F147
  $B149: a1 18       lda ($18,x)    ; PRG $0F149
  $B14B: 85 14       sta $14    ; PRG $0F14B
  $B14D: 86 15       stx $15    ; PRG $0F14D
  $B14F: a5 14       lda $14    ; PRG $0F14F
  $B151: a0 f0       ldy #$f0    ; PRG $0F151
  $B153: 91 06       sta ($06),y    ; PRG $0F153
  $B155: a5 15       lda $15    ; PRG $0F155
  $B157: c8          iny    ; PRG $0F157
  $B158: 91 06       sta ($06),y    ; PRG $0F158
  $B15A: a0 dc       ldy #$dc    ; PRG $0F15A
  $B15C: b1 06       lda ($06),y    ; PRG $0F15C
  $B15E: 85 18       sta $18    ; PRG $0F15E
  $B160: c8          iny    ; PRG $0F160
  $B161: b1 06       lda ($06),y    ; PRG $0F161
  $B163: 85 19       sta $19    ; PRG $0F163
  $B165: a1 18       lda ($18,x)    ; PRG $0F165
  $B167: a0 ea       ldy #$ea    ; PRG $0F167
  $B169: 91 06       sta ($06),y    ; PRG $0F169
  $B16B: a0 01       ldy #$01    ; PRG $0F16B
  $B16D: b1 18       lda ($18),y    ; PRG $0F16D
  $B16F: a0 eb       ldy #$eb    ; PRG $0F16F
  $B171: 91 06       sta ($06),y    ; PRG $0F171
  $B173: a0 da       ldy #$da    ; PRG $0F173
  $B175: b1 06       lda ($06),y    ; PRG $0F175
  $B177: 85 18       sta $18    ; PRG $0F177
  $B179: c8          iny    ; PRG $0F179
  $B17A: b1 06       lda ($06),y    ; PRG $0F17A
  $B17C: 85 19       sta $19    ; PRG $0F17C
  $B17E: a1 18       lda ($18,x)    ; PRG $0F17E
  $B180: a0 e8       ldy #$e8    ; PRG $0F180
  $B182: 91 06       sta ($06),y    ; PRG $0F182
  $B184: a0 01       ldy #$01    ; PRG $0F184
  $B186: b1 18       lda ($18),y    ; PRG $0F186
  $B188: a0 e9       ldy #$e9    ; PRG $0F188
  $B18A: 91 06       sta ($06),y    ; PRG $0F18A
  $B18C: a0 0d       ldy #$0d    ; PRG $0F18C
  $B18E: b1 04       lda ($04),y    ; PRG $0F18E
  $B190: c8          iny    ; PRG $0F190
  $B191: 11 04       ora ($04),y    ; PRG $0F191
  $B193: d0 03       bne $b198    ; PRG $0F193
  $B195: 4c ab 91    jmp $91ab    ; PRG $0F195
  $B198: ad 99 72    lda $7299    ; PRG $0F198
  $B19B: d0 03       bne $b1a0    ; PRG $0F19B
  $B19D: 4c ab 91    jmp $91ab    ; PRG $0F19D
  $B1A0: 8a          txa    ; PRG $0F1A0
  $B1A1: a0 f8       ldy #$f8    ; PRG $0F1A1
  $B1A3: 91 06       sta ($06),y    ; PRG $0F1A3
  $B1A5: c8          iny    ; PRG $0F1A5
  $B1A6: 91 06       sta ($06),y    ; PRG $0F1A6
  $B1A8: 4c 40 92    jmp $9240    ; PRG $0F1A8

; ---- sub_7_11ab  [recovered]  <- (uncalled?)
  $B1AB: a9 04       lda #$04    ; PRG $0F1AB
  $B1AD: 85 18       sta $18    ; PRG $0F1AD
  $B1AF: 86 19       stx $19    ; PRG $0F1AF
  $B1B1: a0 0b       ldy #$0b    ; PRG $0F1B1
  $B1B3: b1 04       lda ($04),y    ; PRG $0F1B3
  $B1B5: 85 14       sta $14    ; PRG $0F1B5
  $B1B7: c8          iny    ; PRG $0F1B7
  $B1B8: b1 04       lda ($04),y    ; PRG $0F1B8
  $B1BA: 85 15       sta $15    ; PRG $0F1BA
  $B1BC: a0 14       ldy #$14    ; PRG $0F1BC
  $B1BE: a2 18       ldx #$18    ; PRG $0F1BE
  $B1C0: a9 10       lda #$10    ; PRG $0F1C0
  $B1C2: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0F1C2
  $B1C5: 18          clc    ; PRG $0F1C5
  $B1C6: a5 10       lda $10    ; PRG $0F1C6
  $B1C8: 69 71       adc #$71    ; PRG $0F1C8
  $B1CA: 85 18       sta $18    ; PRG $0F1CA
  $B1CC: a5 11       lda $11    ; PRG $0F1CC
  $B1CE: 69 66       adc #$66    ; PRG $0F1CE
  $B1D0: 85 19       sta $19    ; PRG $0F1D0
  $B1D2: a1 18       lda ($18,x)    ; PRG $0F1D2
  $B1D4: 85 14       sta $14    ; PRG $0F1D4
  $B1D6: 86 15       stx $15    ; PRG $0F1D6
  $B1D8: 98          tya    ; PRG $0F1D8
  $B1D9: 25 14       and $14    ; PRG $0F1D9
  $B1DB: 85 18       sta $18    ; PRG $0F1DB
  $B1DD: 8a          txa    ; PRG $0F1DD
  $B1DE: 85 19       sta $19    ; PRG $0F1DE
  $B1E0: a9 1a       lda #$1a    ; PRG $0F1E0
  $B1E2: 85 14       sta $14    ; PRG $0F1E2
  $B1E4: 86 15       stx $15    ; PRG $0F1E4
  $B1E6: ad 81 70    lda $7081    ; PRG $0F1E6
  $B1E9: 85 10       sta $10    ; PRG $0F1E9
  $B1EB: 86 11       stx $11    ; PRG $0F1EB
  $B1ED: a2 18       ldx #$18    ; PRG $0F1ED
  $B1EF: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $0F1EF
  $B1F2: a2 14       ldx #$14    ; PRG $0F1F2
  $B1F4: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $0F1F4
  $B1F7: a2 10       ldx #$10    ; PRG $0F1F7
  $B1F9: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $0F1F9
  $B1FC: a0 0c       ldy #$0c    ; PRG $0F1FC
  $B1FE: b1 04       lda ($04),y    ; PRG $0F1FE
  $B200: 48          pha    ; PRG $0F200
  $B201: 88          dey    ; PRG $0F201
  $B202: b1 04       lda ($04),y    ; PRG $0F202
  $B204: 48          pha    ; PRG $0F204
  $B205: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0F205
  $B208: 63 83 04    .db $63 $83 $04  -> vm $8363 argc 4    ; PRG $0F208
  $B20B: a2 10       ldx #$10    ; PRG $0F20B
  $B20D: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $0F20D
  $B210: a0 08       ldy #$08    ; PRG $0F210
  $B212: a2 10       ldx #$10    ; PRG $0F212
  $B214: a9 18       lda #$18    ; PRG $0F214
  $B216: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0F216
  $B219: a2 14       ldx #$14    ; PRG $0F219
  $B21B: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $0F21B
  $B21E: a0 18       ldy #$18    ; PRG $0F21E
  $B220: a2 14       ldx #$14    ; PRG $0F220
  $B222: a9 10       lda #$10    ; PRG $0F222
  $B224: 20 b4 e1    jsr $e1b4   ; alu_abs16    ; PRG $0F224
  $B227: a2 18       ldx #$18    ; PRG $0F227
  $B229: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $0F229
  $B22C: a0 10       ldy #$10    ; PRG $0F22C
  $B22E: a2 18       ldx #$18    ; PRG $0F22E
  $B230: a9 14       lda #$14    ; PRG $0F230
  $B232: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0F232
  $B235: a5 14       lda $14    ; PRG $0F235
  $B237: a0 f8       ldy #$f8    ; PRG $0F237
  $B239: 91 06       sta ($06),y    ; PRG $0F239
  $B23B: a5 15       lda $15    ; PRG $0F23B
  $B23D: c8          iny    ; PRG $0F23D
  $B23E: 91 06       sta ($06),y    ; PRG $0F23E
  $B240: a0 0c       ldy #$0c    ; PRG $0F240
  $B242: b1 04       lda ($04),y    ; PRG $0F242
  $B244: 48          pha    ; PRG $0F244
  $B245: 88          dey    ; PRG $0F245
  $B246: b1 04       lda ($04),y    ; PRG $0F246
  $B248: 48          pha    ; PRG $0F248
  $B249: a9 87       lda #$87    ; PRG $0F249
  $B24B: 48          pha    ; PRG $0F24B
  $B24C: a9 de       lda #$de    ; PRG $0F24C
  $B24E: 48          pha    ; PRG $0F24E
  $B24F: 8a          txa    ; PRG $0F24F
  $B250: 48          pha    ; PRG $0F250
  $B251: a9 de       lda #$de    ; PRG $0F251
  $B253: 48          pha    ; PRG $0F253
  $B254: 8a          txa    ; PRG $0F254
  $B255: 48          pha    ; PRG $0F255
  $B256: a9 01       lda #$01    ; PRG $0F256
  $B258: 48          pha    ; PRG $0F258
  $B259: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0F259
  $B25C: 3a de 0a    .db $3a $de $0a  -> vm $DE3A argc 10    ; PRG $0F25C
  $B25F: a5 08       lda $08    ; PRG $0F25F
  $B261: a0 f6       ldy #$f6    ; PRG $0F261
  $B263: 91 06       sta ($06),y    ; PRG $0F263
  $B265: a5 09       lda $09    ; PRG $0F265
  $B267: c8          iny    ; PRG $0F267
  $B268: 91 06       sta ($06),y    ; PRG $0F268
  $B26A: a9 04       lda #$04    ; PRG $0F26A
  $B26C: 85 18       sta $18    ; PRG $0F26C
  $B26E: 86 19       stx $19    ; PRG $0F26E
  $B270: a0 0b       ldy #$0b    ; PRG $0F270
  $B272: b1 04       lda ($04),y    ; PRG $0F272
  $B274: 85 14       sta $14    ; PRG $0F274
  $B276: c8          iny    ; PRG $0F276
  $B277: b1 04       lda ($04),y    ; PRG $0F277
  $B279: 85 15       sta $15    ; PRG $0F279
  $B27B: a0 14       ldy #$14    ; PRG $0F27B
  $B27D: a2 18       ldx #$18    ; PRG $0F27D
  $B27F: a9 10       lda #$10    ; PRG $0F27F
  $B281: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0F281
  $B284: 18          clc    ; PRG $0F284
  $B285: a5 10       lda $10    ; PRG $0F285
  $B287: 69 71       adc #$71    ; PRG $0F287
  $B289: 85 18       sta $18    ; PRG $0F289
  $B28B: a5 11       lda $11    ; PRG $0F28B
  $B28D: 69 66       adc #$66    ; PRG $0F28D
  $B28F: 85 19       sta $19    ; PRG $0F28F
  $B291: a1 18       lda ($18,x)    ; PRG $0F291
  $B293: 85 14       sta $14    ; PRG $0F293
  $B295: 86 15       stx $15    ; PRG $0F295
  $B297: 98          tya    ; PRG $0F297
  $B298: 25 14       and $14    ; PRG $0F298
  $B29A: 85 18       sta $18    ; PRG $0F29A
  $B29C: 8a          txa    ; PRG $0F29C
  $B29D: 85 19       sta $19    ; PRG $0F29D
  $B29F: a9 03       lda #$03    ; PRG $0F29F
  $B2A1: 85 14       sta $14    ; PRG $0F2A1
  $B2A3: 86 15       stx $15    ; PRG $0F2A3
  $B2A5: ad 84 70    lda $7084    ; PRG $0F2A5
  $B2A8: 85 10       sta $10    ; PRG $0F2A8
  $B2AA: 86 11       stx $11    ; PRG $0F2AA
  $B2AC: a0 10       ldy #$10    ; PRG $0F2AC
  $B2AE: a2 14       ldx #$14    ; PRG $0F2AE
  $B2B0: a9 0c       lda #$0c    ; PRG $0F2B0
  $B2B2: 20 15 e4    jsr $e415   ; alu_shr16_n    ; PRG $0F2B2
  $B2B5: a9 03       lda #$03    ; PRG $0F2B5
  $B2B7: 25 0c       and $0c    ; PRG $0F2B7
  $B2B9: 85 14       sta $14    ; PRG $0F2B9
  $B2BB: 8a          txa    ; PRG $0F2BB
  $B2BC: 85 15       sta $15    ; PRG $0F2BC
  $B2BE: a0 14       ldy #$14    ; PRG $0F2BE
  $B2C0: a2 18       ldx #$18    ; PRG $0F2C0
  $B2C2: a9 10       lda #$10    ; PRG $0F2C2
  $B2C4: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0F2C4
  $B2C7: a5 10       lda $10    ; PRG $0F2C7
  $B2C9: a0 f4       ldy #$f4    ; PRG $0F2C9
  $B2CB: 91 06       sta ($06),y    ; PRG $0F2CB
  $B2CD: a5 11       lda $11    ; PRG $0F2CD
  $B2CF: c8          iny    ; PRG $0F2CF
  $B2D0: 91 06       sta ($06),y    ; PRG $0F2D0
  $B2D2: a0 fc       ldy #$fc    ; PRG $0F2D2
  $B2D4: b1 06       lda ($06),y    ; PRG $0F2D4
  $B2D6: 85 18       sta $18    ; PRG $0F2D6
  $B2D8: c8          iny    ; PRG $0F2D8
  $B2D9: b1 06       lda ($06),y    ; PRG $0F2D9
  $B2DB: 85 19       sta $19    ; PRG $0F2DB
  $B2DD: a0 08       ldy #$08    ; PRG $0F2DD
  $B2DF: b1 18       lda ($18),y    ; PRG $0F2DF
  $B2E1: 85 14       sta $14    ; PRG $0F2E1
  $B2E3: 86 15       stx $15    ; PRG $0F2E3
  $B2E5: a9 07       lda #$07    ; PRG $0F2E5
  $B2E7: c5 14       cmp $14    ; PRG $0F2E7
  $B2E9: 8a          txa    ; PRG $0F2E9
  $B2EA: e5 15       sbc $15    ; PRG $0F2EA
  $B2EC: 90 03       bcc $b2f1    ; PRG $0F2EC
  $B2EE: 4c 00 93    jmp $9300    ; PRG $0F2EE
  $B2F1: a0 0c       ldy #$0c    ; PRG $0F2F1
  $B2F3: b1 04       lda ($04),y    ; PRG $0F2F3
  $B2F5: 48          pha    ; PRG $0F2F5
  $B2F6: 88          dey    ; PRG $0F2F6
  $B2F7: b1 04       lda ($04),y    ; PRG $0F2F7
  $B2F9: 48          pha    ; PRG $0F2F9
  $B2FA: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0F2FA
  $B2FD: aa 8a 04    .db $aa $8a $04  -> vm $8AAA argc 4    ; PRG $0F2FD
  $B300: a0 db       ldy #$db    ; PRG $0F300
  $B302: b1 06       lda ($06),y    ; PRG $0F302
  $B304: 48          pha    ; PRG $0F304
  $B305: 88          dey    ; PRG $0F305
  $B306: b1 06       lda ($06),y    ; PRG $0F306
  $B308: 48          pha    ; PRG $0F308
  $B309: a0 dd       ldy #$dd    ; PRG $0F309
  $B30B: b1 06       lda ($06),y    ; PRG $0F30B
  $B30D: 48          pha    ; PRG $0F30D
  $B30E: 88          dey    ; PRG $0F30E
  $B30F: b1 06       lda ($06),y    ; PRG $0F30F
  $B311: 48          pha    ; PRG $0F311
  $B312: a0 f9       ldy #$f9    ; PRG $0F312
  $B314: b1 06       lda ($06),y    ; PRG $0F314
  $B316: 48          pha    ; PRG $0F316
  $B317: 88          dey    ; PRG $0F317
  $B318: b1 06       lda ($06),y    ; PRG $0F318
  $B31A: 48          pha    ; PRG $0F31A
  $B31B: a0 fc       ldy #$fc    ; PRG $0F31B
  $B31D: b1 06       lda ($06),y    ; PRG $0F31D
  $B31F: 85 18       sta $18    ; PRG $0F31F
  $B321: c8          iny    ; PRG $0F321
  $B322: b1 06       lda ($06),y    ; PRG $0F322
  $B324: 85 19       sta $19    ; PRG $0F324
  $B326: a0 08       ldy #$08    ; PRG $0F326
  $B328: b1 18       lda ($18),y    ; PRG $0F328
  $B32A: 85 14       sta $14    ; PRG $0F32A
  $B32C: 86 15       stx $15    ; PRG $0F32C
  $B32E: a5 15       lda $15    ; PRG $0F32E
  $B330: 48          pha    ; PRG $0F330
  $B331: a5 14       lda $14    ; PRG $0F331
  $B333: 48          pha    ; PRG $0F333
  $B334: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0F334
  $B337: 9d 9c 0a    .db $9d $9c $0a  -> vm $9C9D argc 10    ; PRG $0F337
  $B33A: a0 db       ldy #$db    ; PRG $0F33A
  $B33C: b1 06       lda ($06),y    ; PRG $0F33C
  $B33E: 48          pha    ; PRG $0F33E
  $B33F: 88          dey    ; PRG $0F33F
  $B340: b1 06       lda ($06),y    ; PRG $0F340
  $B342: 48          pha    ; PRG $0F342
  $B343: a0 dd       ldy #$dd    ; PRG $0F343
  $B345: b1 06       lda ($06),y    ; PRG $0F345
  $B347: 48          pha    ; PRG $0F347
  $B348: 88          dey    ; PRG $0F348
  $B349: b1 06       lda ($06),y    ; PRG $0F349
  $B34B: 48          pha    ; PRG $0F34B
  $B34C: a0 f7       ldy #$f7    ; PRG $0F34C
  $B34E: b1 06       lda ($06),y    ; PRG $0F34E
  $B350: 48          pha    ; PRG $0F350
  $B351: 88          dey    ; PRG $0F351
  $B352: b1 06       lda ($06),y    ; PRG $0F352
  $B354: 48          pha    ; PRG $0F354
  $B355: ad 80 70    lda $7080    ; PRG $0F355
  $B358: 85 18       sta $18    ; PRG $0F358
  $B35A: 86 19       stx $19    ; PRG $0F35A
  $B35C: a5 19       lda $19    ; PRG $0F35C
  $B35E: 48          pha    ; PRG $0F35E
  $B35F: a5 18       lda $18    ; PRG $0F35F
  $B361: 48          pha    ; PRG $0F361
  $B362: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0F362
  $B365: 9d 9c 0a    .db $9d $9c $0a  -> vm $9C9D argc 10    ; PRG $0F365
  $B368: a0 db       ldy #$db    ; PRG $0F368
  $B36A: b1 06       lda ($06),y    ; PRG $0F36A
  $B36C: 48          pha    ; PRG $0F36C
  $B36D: 88          dey    ; PRG $0F36D
  $B36E: b1 06       lda ($06),y    ; PRG $0F36E
  $B370: 48          pha    ; PRG $0F370
  $B371: a0 dd       ldy #$dd    ; PRG $0F371
  $B373: b1 06       lda ($06),y    ; PRG $0F373
  $B375: 48          pha    ; PRG $0F375
  $B376: 88          dey    ; PRG $0F376
  $B377: b1 06       lda ($06),y    ; PRG $0F377
  $B379: 48          pha    ; PRG $0F379
  $B37A: a0 f5       ldy #$f5    ; PRG $0F37A
  $B37C: b1 06       lda ($06),y    ; PRG $0F37C
  $B37E: 48          pha    ; PRG $0F37E
  $B37F: 88          dey    ; PRG $0F37F
  $B380: b1 06       lda ($06),y    ; PRG $0F380
  $B382: 48          pha    ; PRG $0F382
  $B383: a9 06       lda #$06    ; PRG $0F383
  $B385: 85 18       sta $18    ; PRG $0F385
  $B387: 86 19       stx $19    ; PRG $0F387
  $B389: ad 84 70    lda $7084    ; PRG $0F389
  $B38C: 85 14       sta $14    ; PRG $0F38C
  $B38E: 86 15       stx $15    ; PRG $0F38E
  $B390: a0 14       ldy #$14    ; PRG $0F390
  $B392: a2 18       ldx #$18    ; PRG $0F392
  $B394: a9 10       lda #$10    ; PRG $0F394
  $B396: 20 15 e4    jsr $e415   ; alu_shr16_n    ; PRG $0F396
  $B399: a9 07       lda #$07    ; PRG $0F399
  $B39B: 25 10       and $10    ; PRG $0F39B
  $B39D: 85 18       sta $18    ; PRG $0F39D
  $B39F: 8a          txa    ; PRG $0F39F
  $B3A0: 85 19       sta $19    ; PRG $0F3A0
  $B3A2: a5 19       lda $19    ; PRG $0F3A2
  $B3A4: 48          pha    ; PRG $0F3A4
  $B3A5: a5 18       lda $18    ; PRG $0F3A5
  $B3A7: 48          pha    ; PRG $0F3A7
  $B3A8: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0F3A8
  $B3AB: 9d 9c 0a    .db $9d $9c $0a  -> vm $9C9D argc 10    ; PRG $0F3AB
  $B3AE: a0 fd       ldy #$fd    ; PRG $0F3AE
  $B3B0: b1 06       lda ($06),y    ; PRG $0F3B0
  $B3B2: 48          pha    ; PRG $0F3B2
  $B3B3: 88          dey    ; PRG $0F3B3
  $B3B4: b1 06       lda ($06),y    ; PRG $0F3B4
  $B3B6: 48          pha    ; PRG $0F3B6
  $B3B7: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0F3B7
  $B3BA: 24 9d 04    .db $24 $9d $04  -> vm $9D24 argc 4    ; PRG $0F3BA
  $B3BD: a5 08       lda $08    ; PRG $0F3BD
  $B3BF: 05 09       ora $09    ; PRG $0F3BF
  $B3C1: d0 03       bne $b3c6    ; PRG $0F3C1
  $B3C3: 4c 0e 9c    jmp $9c0e    ; PRG $0F3C3
  $B3C6: a0 e4       ldy #$e4    ; PRG $0F3C6
  $B3C8: b1 06       lda ($06),y    ; PRG $0F3C8
  $B3CA: 85 18       sta $18    ; PRG $0F3CA
  $B3CC: c8          iny    ; PRG $0F3CC
  $B3CD: b1 06       lda ($06),y    ; PRG $0F3CD
  $B3CF: 85 19       sta $19    ; PRG $0F3CF
  $B3D1: a1 18       lda ($18,x)    ; PRG $0F3D1
  $B3D3: 85 14       sta $14    ; PRG $0F3D3
  $B3D5: 86 15       stx $15    ; PRG $0F3D5
  $B3D7: a5 15       lda $15    ; PRG $0F3D7
  $B3D9: 48          pha    ; PRG $0F3D9
  $B3DA: a5 14       lda $14    ; PRG $0F3DA
  $B3DC: 48          pha    ; PRG $0F3DC
  $B3DD: c8          iny    ; PRG $0F3DD
  $B3DE: b1 06       lda ($06),y    ; PRG $0F3DE
  $B3E0: 85 18       sta $18    ; PRG $0F3E0
  $B3E2: c8          iny    ; PRG $0F3E2
  $B3E3: b1 06       lda ($06),y    ; PRG $0F3E3
  $B3E5: 85 19       sta $19    ; PRG $0F3E5
  $B3E7: a1 18       lda ($18,x)    ; PRG $0F3E7
  $B3E9: 85 14       sta $14    ; PRG $0F3E9
  $B3EB: 86 15       stx $15    ; PRG $0F3EB
  $B3ED: a5 15       lda $15    ; PRG $0F3ED
  $B3EF: 48          pha    ; PRG $0F3EF
  $B3F0: a5 14       lda $14    ; PRG $0F3F0
  $B3F2: 48          pha    ; PRG $0F3F2
  $B3F3: a0 e0       ldy #$e0    ; PRG $0F3F3
  $B3F5: b1 06       lda ($06),y    ; PRG $0F3F5
  $B3F7: 85 18       sta $18    ; PRG $0F3F7
  $B3F9: c8          iny    ; PRG $0F3F9
  $B3FA: b1 06       lda ($06),y    ; PRG $0F3FA
  $B3FC: 85 19       sta $19    ; PRG $0F3FC
  $B3FE: a1 18       lda ($18,x)    ; PRG $0F3FE
  $B400: 85 14       sta $14    ; PRG $0F400
  $B402: 86 15       stx $15    ; PRG $0F402
  $B404: a5 15       lda $15    ; PRG $0F404
  $B406: 48          pha    ; PRG $0F406
  $B407: a5 14       lda $14    ; PRG $0F407
  $B409: 48          pha    ; PRG $0F409
  $B40A: c8          iny    ; PRG $0F40A
  $B40B: b1 06       lda ($06),y    ; PRG $0F40B
  $B40D: 85 18       sta $18    ; PRG $0F40D
  $B40F: c8          iny    ; PRG $0F40F
  $B410: b1 06       lda ($06),y    ; PRG $0F410
  $B412: 85 19       sta $19    ; PRG $0F412
  $B414: a1 18       lda ($18,x)    ; PRG $0F414
  $B416: 85 14       sta $14    ; PRG $0F416
  $B418: 86 15       stx $15    ; PRG $0F418
  $B41A: a5 15       lda $15    ; PRG $0F41A
  $B41C: 48          pha    ; PRG $0F41C
  $B41D: a5 14       lda $14    ; PRG $0F41D
  $B41F: 48          pha    ; PRG $0F41F
  $B420: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0F420
  $B423: 05 d4 0a    .db $05 $d4 $0a  -> vm $D405 argc 10    ; PRG $0F423
  $B426: a5 08       lda $08    ; PRG $0F426
  $B428: 05 09       ora $09    ; PRG $0F428
  $B42A: f0 03       beq $b42f    ; PRG $0F42A
  $B42C: 4c 66 96    jmp $9666    ; PRG $0F42C
  $B42F: a0 0d       ldy #$0d    ; PRG $0F42F
  $B431: b1 04       lda ($04),y    ; PRG $0F431
  $B433: c8          iny    ; PRG $0F433
  $B434: 11 04       ora ($04),y    ; PRG $0F434
  $B436: f0 03       beq $b43b    ; PRG $0F436
  $B438: 4c 1f 96    jmp $961f    ; PRG $0F438
  $B43B: a0 fe       ldy #$fe    ; PRG $0F43B
  $B43D: b1 06       lda ($06),y    ; PRG $0F43D
  $B43F: 85 18       sta $18    ; PRG $0F43F
  $B441: c8          iny    ; PRG $0F441
  $B442: b1 06       lda ($06),y    ; PRG $0F442
  $B444: 85 19       sta $19    ; PRG $0F444
  $B446: a1 18       lda ($18,x)    ; PRG $0F446
  $B448: 85 14       sta $14    ; PRG $0F448
  $B44A: 86 15       stx $15    ; PRG $0F44A
  $B44C: ad 65 72    lda $7265    ; PRG $0F44C
  $B44F: 85 18       sta $18    ; PRG $0F44F
  $B451: 86 19       stx $19    ; PRG $0F451
  $B453: a9 03       lda #$03    ; PRG $0F453
  $B455: 85 10       sta $10    ; PRG $0F455
  $B457: 86 11       stx $11    ; PRG $0F457
  $B459: ad 63 72    lda $7263    ; PRG $0F459
  $B45C: 85 0c       sta $0c    ; PRG $0F45C
  $B45E: 86 0d       stx $0d    ; PRG $0F45E
  $B460: a0 0c       ldy #$0c    ; PRG $0F460
  $B462: a2 10       ldx #$10    ; PRG $0F462
  $B464: a9 08       lda #$08    ; PRG $0F464
  $B466: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0F466
  $B469: 18          clc    ; PRG $0F469
  $B46A: a5 08       lda $08    ; PRG $0F46A
  $B46C: 65 18       adc $18    ; PRG $0F46C
  $B46E: 85 10       sta $10    ; PRG $0F46E
  $B470: a5 09       lda $09    ; PRG $0F470
  $B472: 65 19       adc $19    ; PRG $0F472
  $B474: 85 11       sta $11    ; PRG $0F474
  $B476: a5 10       lda $10    ; PRG $0F476
  $B478: c5 14       cmp $14    ; PRG $0F478
  $B47A: d0 04       bne $b480    ; PRG $0F47A
  $B47C: a5 11       lda $11    ; PRG $0F47C
  $B47E: c5 15       cmp $15    ; PRG $0F47E
  $B480: f0 03       beq $b485    ; PRG $0F480
  $B482: 4c cb 95    jmp $95cb    ; PRG $0F482
  $B485: a0 fe       ldy #$fe    ; PRG $0F485
  $B487: b1 06       lda ($06),y    ; PRG $0F487
  $B489: 85 18       sta $18    ; PRG $0F489
  $B48B: c8          iny    ; PRG $0F48B
  $B48C: b1 06       lda ($06),y    ; PRG $0F48C
  $B48E: 85 19       sta $19    ; PRG $0F48E
  $B490: a0 01       ldy #$01    ; PRG $0F490
  $B492: b1 18       lda ($18),y    ; PRG $0F492
  $B494: 85 14       sta $14    ; PRG $0F494
  $B496: 86 15       stx $15    ; PRG $0F496
  $B498: ad 66 72    lda $7266    ; PRG $0F498
  $B49B: 85 18       sta $18    ; PRG $0F49B
  $B49D: 86 19       stx $19    ; PRG $0F49D
  $B49F: a9 03       lda #$03    ; PRG $0F49F
  $B4A1: 85 10       sta $10    ; PRG $0F4A1
  $B4A3: 86 11       stx $11    ; PRG $0F4A3
  $B4A5: ad 64 72    lda $7264    ; PRG $0F4A5
  $B4A8: 85 0c       sta $0c    ; PRG $0F4A8
  $B4AA: 86 0d       stx $0d    ; PRG $0F4AA
  $B4AC: a0 0c       ldy #$0c    ; PRG $0F4AC
  $B4AE: a2 10       ldx #$10    ; PRG $0F4AE
  $B4B0: a9 08       lda #$08    ; PRG $0F4B0
  $B4B2: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0F4B2
  $B4B5: 18          clc    ; PRG $0F4B5
  $B4B6: a5 08       lda $08    ; PRG $0F4B6
  $B4B8: 65 18       adc $18    ; PRG $0F4B8
  $B4BA: 85 10       sta $10    ; PRG $0F4BA
  $B4BC: a5 09       lda $09    ; PRG $0F4BC
  $B4BE: 65 19       adc $19    ; PRG $0F4BE
  $B4C0: 85 11       sta $11    ; PRG $0F4C0
  $B4C2: a5 10       lda $10    ; PRG $0F4C2
  $B4C4: c5 14       cmp $14    ; PRG $0F4C4
  $B4C6: d0 04       bne $b4cc    ; PRG $0F4C6
  $B4C8: a5 11       lda $11    ; PRG $0F4C8
  $B4CA: c5 15       cmp $15    ; PRG $0F4CA
  $B4CC: f0 03       beq $b4d1    ; PRG $0F4CC
  $B4CE: 4c cb 95    jmp $95cb    ; PRG $0F4CE
  $B4D1: a0 fe       ldy #$fe    ; PRG $0F4D1
  $B4D3: b1 06       lda ($06),y    ; PRG $0F4D3
  $B4D5: 85 18       sta $18    ; PRG $0F4D5
  $B4D7: c8          iny    ; PRG $0F4D7
  $B4D8: b1 06       lda ($06),y    ; PRG $0F4D8
  $B4DA: 85 19       sta $19    ; PRG $0F4DA
  $B4DC: a0 02       ldy #$02    ; PRG $0F4DC
  $B4DE: b1 18       lda ($18),y    ; PRG $0F4DE
  $B4E0: 85 14       sta $14    ; PRG $0F4E0
  $B4E2: 86 15       stx $15    ; PRG $0F4E2
  $B4E4: a0 e6       ldy #$e6    ; PRG $0F4E4
  $B4E6: b1 06       lda ($06),y    ; PRG $0F4E6
  $B4E8: 85 18       sta $18    ; PRG $0F4E8
  $B4EA: c8          iny    ; PRG $0F4EA
  $B4EB: b1 06       lda ($06),y    ; PRG $0F4EB
  $B4ED: 85 19       sta $19    ; PRG $0F4ED
  $B4EF: a1 18       lda ($18,x)    ; PRG $0F4EF
  $B4F1: 85 10       sta $10    ; PRG $0F4F1
  $B4F3: 86 11       stx $11    ; PRG $0F4F3
  $B4F5: a5 10       lda $10    ; PRG $0F4F5
  $B4F7: c5 14       cmp $14    ; PRG $0F4F7
  $B4F9: d0 04       bne $b4ff    ; PRG $0F4F9
  $B4FB: a5 11       lda $11    ; PRG $0F4FB
  $B4FD: c5 15       cmp $15    ; PRG $0F4FD
  $B4FF: f0 03       beq $b504    ; PRG $0F4FF
  $B501: 4c cb 95    jmp $95cb    ; PRG $0F501
  $B504: a0 fe       ldy #$fe    ; PRG $0F504
  $B506: b1 06       lda ($06),y    ; PRG $0F506
  $B508: 85 18       sta $18    ; PRG $0F508
  $B50A: c8          iny    ; PRG $0F50A
  $B50B: b1 06       lda ($06),y    ; PRG $0F50B
  $B50D: 85 19       sta $19    ; PRG $0F50D
  $B50F: a0 03       ldy #$03    ; PRG $0F50F
  $B511: b1 18       lda ($18),y    ; PRG $0F511
  $B513: 85 14       sta $14    ; PRG $0F513
  $B515: 86 15       stx $15    ; PRG $0F515
  $B517: a0 e4       ldy #$e4    ; PRG $0F517
  $B519: b1 06       lda ($06),y    ; PRG $0F519
  $B51B: 85 18       sta $18    ; PRG $0F51B
  $B51D: c8          iny    ; PRG $0F51D
  $B51E: b1 06       lda ($06),y    ; PRG $0F51E
  $B520: 85 19       sta $19    ; PRG $0F520
  $B522: a1 18       lda ($18,x)    ; PRG $0F522
  $B524: 85 10       sta $10    ; PRG $0F524
  $B526: 86 11       stx $11    ; PRG $0F526
  $B528: a5 10       lda $10    ; PRG $0F528
  $B52A: c5 14       cmp $14    ; PRG $0F52A
  $B52C: d0 04       bne $b532    ; PRG $0F52C
  $B52E: a5 11       lda $11    ; PRG $0F52E
  $B530: c5 15       cmp $15    ; PRG $0F530
  $B532: f0 03       beq $b537    ; PRG $0F532
  $B534: 4c cb 95    jmp $95cb    ; PRG $0F534
  $B537: a0 fe       ldy #$fe    ; PRG $0F537
  $B539: b1 06       lda ($06),y    ; PRG $0F539
  $B53B: 85 18       sta $18    ; PRG $0F53B
  $B53D: c8          iny    ; PRG $0F53D
  $B53E: b1 06       lda ($06),y    ; PRG $0F53E
  $B540: 85 19       sta $19    ; PRG $0F540
  $B542: a0 04       ldy #$04    ; PRG $0F542
  $B544: b1 18       lda ($18),y    ; PRG $0F544
  $B546: d0 03       bne $b54b    ; PRG $0F546
  $B548: 4c c8 95    jmp $95c8    ; PRG $0F548
  $B54B: a0 fc       ldy #$fc    ; PRG $0F54B
  $B54D: b1 06       lda ($06),y    ; PRG $0F54D
  $B54F: 85 18       sta $18    ; PRG $0F54F
  $B551: c8          iny    ; PRG $0F551
  $B552: b1 06       lda ($06),y    ; PRG $0F552
  $B554: 85 19       sta $19    ; PRG $0F554
  $B556: a9 12       lda #$12    ; PRG $0F556
  $B558: a0 0f       ldy #$0f    ; PRG $0F558
  $B55A: 11 18       ora ($18),y    ; PRG $0F55A
  $B55C: 91 18       sta ($18),y    ; PRG $0F55C
  $B55E: a0 fe       ldy #$fe    ; PRG $0F55E
  $B560: b1 06       lda ($06),y    ; PRG $0F560
  $B562: 85 18       sta $18    ; PRG $0F562
  $B564: c8          iny    ; PRG $0F564
  $B565: b1 06       lda ($06),y    ; PRG $0F565
  $B567: 85 19       sta $19    ; PRG $0F567
  $B569: a2 18       ldx #$18    ; PRG $0F569
  $B56B: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $0F56B
  $B56E: 48          pha    ; PRG $0F56E
  $B56F: a9 06       lda #$06    ; PRG $0F56F
  $B571: 48          pha    ; PRG $0F571
  $B572: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0F572
  $B575: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $0F575
  $B578: 18          clc    ; PRG $0F578
  $B579: a9 05       lda #$05    ; PRG $0F579
  $B57B: 65 08       adc $08    ; PRG $0F57B
  $B57D: 85 18       sta $18    ; PRG $0F57D
  $B57F: 8a          txa    ; PRG $0F57F
  $B580: 65 09       adc $09    ; PRG $0F580
  $B582: 85 19       sta $19    ; PRG $0F582
  $B584: a2 14       ldx #$14    ; PRG $0F584
  $B586: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $0F586
  $B589: a5 18       lda $18    ; PRG $0F589
  $B58B: a0 06       ldy #$06    ; PRG $0F58B
  $B58D: 91 14       sta ($14),y    ; PRG $0F58D
  $B58F: 8a          txa    ; PRG $0F58F
  $B590: 48          pha    ; PRG $0F590
  $B591: a9 01       lda #$01    ; PRG $0F591
  $B593: 48          pha    ; PRG $0F593
  $B594: a0 0c       ldy #$0c    ; PRG $0F594
  $B596: b1 04       lda ($04),y    ; PRG $0F596
  $B598: 48          pha    ; PRG $0F598
  $B599: 88          dey    ; PRG $0F599
  $B59A: b1 04       lda ($04),y    ; PRG $0F59A
  $B59C: 48          pha    ; PRG $0F59C
  $B59D: a0 ed       ldy #$ed    ; PRG $0F59D
  $B59F: b1 06       lda ($06),y    ; PRG $0F59F
  $B5A1: 48          pha    ; PRG $0F5A1
  $B5A2: 88          dey    ; PRG $0F5A2
  $B5A3: b1 06       lda ($06),y    ; PRG $0F5A3
  $B5A5: 48          pha    ; PRG $0F5A5
  $B5A6: a0 ef       ldy #$ef    ; PRG $0F5A6
  $B5A8: b1 06       lda ($06),y    ; PRG $0F5A8
  $B5AA: 48          pha    ; PRG $0F5AA
  $B5AB: 88          dey    ; PRG $0F5AB
  $B5AC: b1 06       lda ($06),y    ; PRG $0F5AC
  $B5AE: 48          pha    ; PRG $0F5AE
  $B5AF: a0 f1       ldy #$f1    ; PRG $0F5AF
  $B5B1: b1 06       lda ($06),y    ; PRG $0F5B1
  $B5B3: 48          pha    ; PRG $0F5B3
  $B5B4: 88          dey    ; PRG $0F5B4
  $B5B5: b1 06       lda ($06),y    ; PRG $0F5B5
  $B5B7: 48          pha    ; PRG $0F5B7
  $B5B8: a0 f3       ldy #$f3    ; PRG $0F5B8
  $B5BA: b1 06       lda ($06),y    ; PRG $0F5BA
  $B5BC: 48          pha    ; PRG $0F5BC
  $B5BD: 88          dey    ; PRG $0F5BD
  $B5BE: b1 06       lda ($06),y    ; PRG $0F5BE
  $B5C0: 48          pha    ; PRG $0F5C0
  $B5C1: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0F5C1
  $B5C4: e2 8c 0e    .db $e2 $8c $0e  -> vm $8CE2 argc 14    ; PRG $0F5C4
  $B5C7: 60          rts    ; PRG $0F5C7

; ---- sub_7_15c8  [recovered]  <- (uncalled?)
  $B5C8: 4c 1f 96    jmp $961f    ; PRG $0F5C8

; ---- sub_7_15cb  [recovered]  <- (uncalled?)
  $B5CB: a0 e2       ldy #$e2    ; PRG $0F5CB
  $B5CD: b1 06       lda ($06),y    ; PRG $0F5CD
  $B5CF: 85 18       sta $18    ; PRG $0F5CF
  $B5D1: c8          iny    ; PRG $0F5D1
  $B5D2: b1 06       lda ($06),y    ; PRG $0F5D2
  $B5D4: 85 19       sta $19    ; PRG $0F5D4
  $B5D6: a0 ee       ldy #$ee    ; PRG $0F5D6
  $B5D8: b1 06       lda ($06),y    ; PRG $0F5D8
  $B5DA: 81 18       sta ($18,x)    ; PRG $0F5DA
  $B5DC: a0 e0       ldy #$e0    ; PRG $0F5DC
  $B5DE: b1 06       lda ($06),y    ; PRG $0F5DE
  $B5E0: 85 18       sta $18    ; PRG $0F5E0
  $B5E2: c8          iny    ; PRG $0F5E2
  $B5E3: b1 06       lda ($06),y    ; PRG $0F5E3
  $B5E5: 85 19       sta $19    ; PRG $0F5E5
  $B5E7: a0 ec       ldy #$ec    ; PRG $0F5E7
  $B5E9: b1 06       lda ($06),y    ; PRG $0F5E9
  $B5EB: 81 18       sta ($18,x)    ; PRG $0F5EB
  $B5ED: a0 e6       ldy #$e6    ; PRG $0F5ED
  $B5EF: b1 06       lda ($06),y    ; PRG $0F5EF
  $B5F1: 85 18       sta $18    ; PRG $0F5F1
  $B5F3: c8          iny    ; PRG $0F5F3
  $B5F4: b1 06       lda ($06),y    ; PRG $0F5F4
  $B5F6: 85 19       sta $19    ; PRG $0F5F6
  $B5F8: a0 f2       ldy #$f2    ; PRG $0F5F8
  $B5FA: b1 06       lda ($06),y    ; PRG $0F5FA
  $B5FC: 81 18       sta ($18,x)    ; PRG $0F5FC
  $B5FE: a0 e4       ldy #$e4    ; PRG $0F5FE
  $B600: b1 06       lda ($06),y    ; PRG $0F600
  $B602: 85 18       sta $18    ; PRG $0F602
  $B604: c8          iny    ; PRG $0F604
  $B605: b1 06       lda ($06),y    ; PRG $0F605
  $B607: 85 19       sta $19    ; PRG $0F607
  $B609: a0 f0       ldy #$f0    ; PRG $0F609
  $B60B: b1 06       lda ($06),y    ; PRG $0F60B
  $B60D: 81 18       sta ($18,x)    ; PRG $0F60D
  $B60F: a0 0c       ldy #$0c    ; PRG $0F60F
  $B611: b1 04       lda ($04),y    ; PRG $0F611
  $B613: 48          pha    ; PRG $0F613
  $B614: 88          dey    ; PRG $0F614
  $B615: b1 04       lda ($04),y    ; PRG $0F615
  $B617: 48          pha    ; PRG $0F617
  $B618: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0F618
  $B61B: aa 8a 04    .db $aa $8a $04  -> vm $8AAA argc 4    ; PRG $0F61B
  $B61E: 60          rts    ; PRG $0F61E

; ---- sub_7_161f  [recovered]  <- (uncalled?)
  $B61F: a0 e2       ldy #$e2    ; PRG $0F61F
  $B621: b1 06       lda ($06),y    ; PRG $0F621
  $B623: 85 18       sta $18    ; PRG $0F623
  $B625: c8          iny    ; PRG $0F625
  $B626: b1 06       lda ($06),y    ; PRG $0F626
  $B628: 85 19       sta $19    ; PRG $0F628
  $B62A: a0 ee       ldy #$ee    ; PRG $0F62A
  $B62C: b1 06       lda ($06),y    ; PRG $0F62C
  $B62E: 81 18       sta ($18,x)    ; PRG $0F62E
  $B630: a0 e0       ldy #$e0    ; PRG $0F630
  $B632: b1 06       lda ($06),y    ; PRG $0F632
  $B634: 85 18       sta $18    ; PRG $0F634
  $B636: c8          iny    ; PRG $0F636
  $B637: b1 06       lda ($06),y    ; PRG $0F637
  $B639: 85 19       sta $19    ; PRG $0F639
  $B63B: a0 ec       ldy #$ec    ; PRG $0F63B
  $B63D: b1 06       lda ($06),y    ; PRG $0F63D
  $B63F: 81 18       sta ($18,x)    ; PRG $0F63F
  $B641: a0 e6       ldy #$e6    ; PRG $0F641
  $B643: b1 06       lda ($06),y    ; PRG $0F643
  $B645: 85 18       sta $18    ; PRG $0F645
  $B647: c8          iny    ; PRG $0F647
  $B648: b1 06       lda ($06),y    ; PRG $0F648
  $B64A: 85 19       sta $19    ; PRG $0F64A
  $B64C: a0 f2       ldy #$f2    ; PRG $0F64C
  $B64E: b1 06       lda ($06),y    ; PRG $0F64E
  $B650: 81 18       sta ($18,x)    ; PRG $0F650
  $B652: a0 e4       ldy #$e4    ; PRG $0F652
  $B654: b1 06       lda ($06),y    ; PRG $0F654
  $B656: 85 18       sta $18    ; PRG $0F656
  $B658: c8          iny    ; PRG $0F658
  $B659: b1 06       lda ($06),y    ; PRG $0F659
  $B65B: 85 19       sta $19    ; PRG $0F65B
  $B65D: a0 f0       ldy #$f0    ; PRG $0F65D
  $B65F: b1 06       lda ($06),y    ; PRG $0F65F
  $B661: 81 18       sta ($18,x)    ; PRG $0F661
  $B663: 4c 0e 9c    jmp $9c0e    ; PRG $0F663

; ---- sub_7_1666  [recovered]  <- (uncalled?)
  $B666: a0 e2       ldy #$e2    ; PRG $0F666
  $B668: b1 06       lda ($06),y    ; PRG $0F668
  $B66A: 85 18       sta $18    ; PRG $0F66A
  $B66C: c8          iny    ; PRG $0F66C
  $B66D: b1 06       lda ($06),y    ; PRG $0F66D
  $B66F: 85 19       sta $19    ; PRG $0F66F
  $B671: a1 18       lda ($18,x)    ; PRG $0F671
  $B673: 85 14       sta $14    ; PRG $0F673
  $B675: 86 15       stx $15    ; PRG $0F675
  $B677: a5 14       lda $14    ; PRG $0F677
  $B679: a0 ee       ldy #$ee    ; PRG $0F679
  $B67B: d1 06       cmp ($06),y    ; PRG $0F67B
  $B67D: d0 05       bne $b684    ; PRG $0F67D
  $B67F: a5 15       lda $15    ; PRG $0F67F
  $B681: c8          iny    ; PRG $0F681
  $B682: d1 06       cmp ($06),y    ; PRG $0F682
  $B684: f0 03       beq $b689    ; PRG $0F684
  $B686: 4c ac 96    jmp $96ac    ; PRG $0F686
  $B689: a0 e0       ldy #$e0    ; PRG $0F689
  $B68B: b1 06       lda ($06),y    ; PRG $0F68B
  $B68D: 85 18       sta $18    ; PRG $0F68D
  $B68F: c8          iny    ; PRG $0F68F
  $B690: b1 06       lda ($06),y    ; PRG $0F690
  $B692: 85 19       sta $19    ; PRG $0F692
  $B694: a1 18       lda ($18,x)    ; PRG $0F694
  $B696: 85 14       sta $14    ; PRG $0F696
  $B698: 86 15       stx $15    ; PRG $0F698
  $B69A: a5 14       lda $14    ; PRG $0F69A
  $B69C: a0 ec       ldy #$ec    ; PRG $0F69C
  $B69E: d1 06       cmp ($06),y    ; PRG $0F69E
  $B6A0: d0 05       bne $b6a7    ; PRG $0F6A0
  $B6A2: a5 15       lda $15    ; PRG $0F6A2
  $B6A4: c8          iny    ; PRG $0F6A4
  $B6A5: d1 06       cmp ($06),y    ; PRG $0F6A5
  $B6A7: d0 03       bne $b6ac    ; PRG $0F6A7
  $B6A9: 4c 43 98    jmp $9843    ; PRG $0F6A9
  $B6AC: a0 0d       ldy #$0d    ; PRG $0F6AC
  $B6AE: b1 04       lda ($04),y    ; PRG $0F6AE
  $B6B0: c8          iny    ; PRG $0F6B0
  $B6B1: 11 04       ora ($04),y    ; PRG $0F6B1
  $B6B3: d0 03       bne $b6b8    ; PRG $0F6B3
  $B6B5: 4c ee 96    jmp $96ee    ; PRG $0F6B5
  $B6B8: a0 e0       ldy #$e0    ; PRG $0F6B8
  $B6BA: b1 06       lda ($06),y    ; PRG $0F6BA
  $B6BC: 85 18       sta $18    ; PRG $0F6BC
  $B6BE: c8          iny    ; PRG $0F6BE
  $B6BF: b1 06       lda ($06),y    ; PRG $0F6BF
  $B6C1: 85 19       sta $19    ; PRG $0F6C1
  $B6C3: a1 18       lda ($18,x)    ; PRG $0F6C3
  $B6C5: 85 14       sta $14    ; PRG $0F6C5
  $B6C7: 86 15       stx $15    ; PRG $0F6C7
  $B6C9: a5 15       lda $15    ; PRG $0F6C9
  $B6CB: 48          pha    ; PRG $0F6CB
  $B6CC: a5 14       lda $14    ; PRG $0F6CC
  $B6CE: 48          pha    ; PRG $0F6CE
  $B6CF: c8          iny    ; PRG $0F6CF
  $B6D0: b1 06       lda ($06),y    ; PRG $0F6D0
  $B6D2: 85 18       sta $18    ; PRG $0F6D2
  $B6D4: c8          iny    ; PRG $0F6D4
  $B6D5: b1 06       lda ($06),y    ; PRG $0F6D5
  $B6D7: 85 19       sta $19    ; PRG $0F6D7
  $B6D9: a1 18       lda ($18,x)    ; PRG $0F6D9
  $B6DB: 85 14       sta $14    ; PRG $0F6DB
  $B6DD: 86 15       stx $15    ; PRG $0F6DD
  $B6DF: a5 15       lda $15    ; PRG $0F6DF
  $B6E1: 48          pha    ; PRG $0F6E1
  $B6E2: a5 14       lda $14    ; PRG $0F6E2
  $B6E4: 48          pha    ; PRG $0F6E4
  $B6E5: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0F6E5
  $B6E8: d9 af 06    .db $d9 $af $06  -> vm $AFD9 argc 6    ; PRG $0F6E8
  $B6EB: 4c 43 98    jmp $9843    ; PRG $0F6EB

; ---- sub_7_16ee  [recovered]  <- (uncalled?)
  $B6EE: a0 f1       ldy #$f1    ; PRG $0F6EE
  $B6F0: b1 06       lda ($06),y    ; PRG $0F6F0
  $B6F2: 48          pha    ; PRG $0F6F2
  $B6F3: 88          dey    ; PRG $0F6F3
  $B6F4: b1 06       lda ($06),y    ; PRG $0F6F4
  $B6F6: 48          pha    ; PRG $0F6F6
  $B6F7: a0 f3       ldy #$f3    ; PRG $0F6F7
  $B6F9: b1 06       lda ($06),y    ; PRG $0F6F9
  $B6FB: 48          pha    ; PRG $0F6FB
  $B6FC: 88          dey    ; PRG $0F6FC
  $B6FD: b1 06       lda ($06),y    ; PRG $0F6FD
  $B6FF: 48          pha    ; PRG $0F6FF
  $B700: a0 ed       ldy #$ed    ; PRG $0F700
  $B702: b1 06       lda ($06),y    ; PRG $0F702
  $B704: 48          pha    ; PRG $0F704
  $B705: 88          dey    ; PRG $0F705
  $B706: b1 06       lda ($06),y    ; PRG $0F706
  $B708: 48          pha    ; PRG $0F708
  $B709: a0 ef       ldy #$ef    ; PRG $0F709
  $B70B: b1 06       lda ($06),y    ; PRG $0F70B
  $B70D: 48          pha    ; PRG $0F70D
  $B70E: 88          dey    ; PRG $0F70E
  $B70F: b1 06       lda ($06),y    ; PRG $0F70F
  $B711: 48          pha    ; PRG $0F711
  $B712: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0F712
  $B715: 05 d4 0a    .db $05 $d4 $0a  -> vm $D405 argc 10    ; PRG $0F715
  $B718: a5 09       lda $09    ; PRG $0F718
  $B71A: 48          pha    ; PRG $0F71A
  $B71B: a5 08       lda $08    ; PRG $0F71B
  $B71D: 48          pha    ; PRG $0F71D
  $B71E: a0 0c       ldy #$0c    ; PRG $0F71E
  $B720: b1 04       lda ($04),y    ; PRG $0F720
  $B722: 48          pha    ; PRG $0F722
  $B723: 88          dey    ; PRG $0F723
  $B724: b1 04       lda ($04),y    ; PRG $0F724
  $B726: 48          pha    ; PRG $0F726
  $B727: a0 ed       ldy #$ed    ; PRG $0F727
  $B729: b1 06       lda ($06),y    ; PRG $0F729
  $B72B: 48          pha    ; PRG $0F72B
  $B72C: 88          dey    ; PRG $0F72C
  $B72D: b1 06       lda ($06),y    ; PRG $0F72D
  $B72F: 48          pha    ; PRG $0F72F
  $B730: a0 ef       ldy #$ef    ; PRG $0F730
  $B732: b1 06       lda ($06),y    ; PRG $0F732
  $B734: 48          pha    ; PRG $0F734
  $B735: 88          dey    ; PRG $0F735
  $B736: b1 06       lda ($06),y    ; PRG $0F736
  $B738: 48          pha    ; PRG $0F738
  $B739: a0 f1       ldy #$f1    ; PRG $0F739
  $B73B: b1 06       lda ($06),y    ; PRG $0F73B
  $B73D: 48          pha    ; PRG $0F73D
  $B73E: 88          dey    ; PRG $0F73E
  $B73F: b1 06       lda ($06),y    ; PRG $0F73F
  $B741: 48          pha    ; PRG $0F741
  $B742: a0 f3       ldy #$f3    ; PRG $0F742
  $B744: b1 06       lda ($06),y    ; PRG $0F744
  $B746: 48          pha    ; PRG $0F746
  $B747: 88          dey    ; PRG $0F747
  $B748: b1 06       lda ($06),y    ; PRG $0F748
  $B74A: 48          pha    ; PRG $0F74A
  $B74B: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0F74B
  $B74E: e2 8c 0e    .db $e2 $8c $0e  -> vm $8CE2 argc 14    ; PRG $0F74E
  $B751: a0 fe       ldy #$fe    ; PRG $0F751
  $B753: b1 06       lda ($06),y    ; PRG $0F753
  $B755: 85 18       sta $18    ; PRG $0F755
  $B757: c8          iny    ; PRG $0F757
  $B758: b1 06       lda ($06),y    ; PRG $0F758
  $B75A: 85 19       sta $19    ; PRG $0F75A
  $B75C: a0 07       ldy #$07    ; PRG $0F75C
  $B75E: b1 18       lda ($18),y    ; PRG $0F75E
  $B760: 85 14       sta $14    ; PRG $0F760
  $B762: c8          iny    ; PRG $0F762
  $B763: b1 18       lda ($18),y    ; PRG $0F763
  $B765: 85 15       sta $15    ; PRG $0F765
  $B767: a1 14       lda ($14,x)    ; PRG $0F767
  $B769: 85 18       sta $18    ; PRG $0F769
  $B76B: 86 19       stx $19    ; PRG $0F76B
  $B76D: a5 18       lda $18    ; PRG $0F76D
  $B76F: c9 ff       cmp #$ff    ; PRG $0F76F
  $B771: d0 04       bne $b777    ; PRG $0F771
  $B773: a5 19       lda $19    ; PRG $0F773
  $B775: c9 00       cmp #$00    ; PRG $0F775
  $B777: d0 03       bne $b77c    ; PRG $0F777
  $B779: 4c 2b 98    jmp $982b    ; PRG $0F779
  $B77C: a0 fe       ldy #$fe    ; PRG $0F77C
  $B77E: b1 06       lda ($06),y    ; PRG $0F77E
  $B780: 85 18       sta $18    ; PRG $0F780
  $B782: c8          iny    ; PRG $0F782
  $B783: b1 06       lda ($06),y    ; PRG $0F783
  $B785: 85 19       sta $19    ; PRG $0F785
  $B787: a0 07       ldy #$07    ; PRG $0F787
  $B789: b1 18       lda ($18),y    ; PRG $0F789
  $B78B: c8          iny    ; PRG $0F78B
  $B78C: 11 18       ora ($18),y    ; PRG $0F78C
  $B78E: d0 03       bne $b793    ; PRG $0F78E
  $B790: 4c 2b 98    jmp $982b    ; PRG $0F790
  $B793: a0 fe       ldy #$fe    ; PRG $0F793
  $B795: b1 06       lda ($06),y    ; PRG $0F795
  $B797: 85 18       sta $18    ; PRG $0F797
  $B799: c8          iny    ; PRG $0F799
  $B79A: b1 06       lda ($06),y    ; PRG $0F79A
  $B79C: 85 19       sta $19    ; PRG $0F79C
  $B79E: a0 07       ldy #$07    ; PRG $0F79E
  $B7A0: b1 18       lda ($18),y    ; PRG $0F7A0
  $B7A2: a0 de       ldy #$de    ; PRG $0F7A2
  $B7A4: 91 06       sta ($06),y    ; PRG $0F7A4
  $B7A6: a0 08       ldy #$08    ; PRG $0F7A6
  $B7A8: b1 18       lda ($18),y    ; PRG $0F7A8
  $B7AA: a0 df       ldy #$df    ; PRG $0F7AA
  $B7AC: 91 06       sta ($06),y    ; PRG $0F7AC
  $B7AE: 88          dey    ; PRG $0F7AE
  $B7AF: b1 06       lda ($06),y    ; PRG $0F7AF
  $B7B1: 85 18       sta $18    ; PRG $0F7B1
  $B7B3: c8          iny    ; PRG $0F7B3
  $B7B4: b1 06       lda ($06),y    ; PRG $0F7B4
  $B7B6: 85 19       sta $19    ; PRG $0F7B6
  $B7B8: a1 18       lda ($18,x)    ; PRG $0F7B8
  $B7BA: 85 14       sta $14    ; PRG $0F7BA
  $B7BC: 86 15       stx $15    ; PRG $0F7BC
  $B7BE: a0 e2       ldy #$e2    ; PRG $0F7BE
  $B7C0: b1 06       lda ($06),y    ; PRG $0F7C0
  $B7C2: 85 18       sta $18    ; PRG $0F7C2
  $B7C4: c8          iny    ; PRG $0F7C4
  $B7C5: b1 06       lda ($06),y    ; PRG $0F7C5
  $B7C7: 85 19       sta $19    ; PRG $0F7C7
  $B7C9: a1 18       lda ($18,x)    ; PRG $0F7C9
  $B7CB: 85 10       sta $10    ; PRG $0F7CB
  $B7CD: 86 11       stx $11    ; PRG $0F7CD
  $B7CF: a5 10       lda $10    ; PRG $0F7CF
  $B7D1: c5 14       cmp $14    ; PRG $0F7D1
  $B7D3: d0 04       bne $b7d9    ; PRG $0F7D3
  $B7D5: a5 11       lda $11    ; PRG $0F7D5
  $B7D7: c5 15       cmp $15    ; PRG $0F7D7
  $B7D9: f0 03       beq $b7de    ; PRG $0F7D9
  $B7DB: 4c 2b 98    jmp $982b    ; PRG $0F7DB
  $B7DE: a0 de       ldy #$de    ; PRG $0F7DE
  $B7E0: b1 06       lda ($06),y    ; PRG $0F7E0
  $B7E2: 85 18       sta $18    ; PRG $0F7E2
  $B7E4: c8          iny    ; PRG $0F7E4
  $B7E5: b1 06       lda ($06),y    ; PRG $0F7E5
  $B7E7: 85 19       sta $19    ; PRG $0F7E7
  $B7E9: a0 01       ldy #$01    ; PRG $0F7E9
  $B7EB: b1 18       lda ($18),y    ; PRG $0F7EB
  $B7ED: 85 14       sta $14    ; PRG $0F7ED
  $B7EF: 86 15       stx $15    ; PRG $0F7EF
  $B7F1: a0 e0       ldy #$e0    ; PRG $0F7F1
  $B7F3: b1 06       lda ($06),y    ; PRG $0F7F3
  $B7F5: 85 18       sta $18    ; PRG $0F7F5
  $B7F7: c8          iny    ; PRG $0F7F7
  $B7F8: b1 06       lda ($06),y    ; PRG $0F7F8
  $B7FA: 85 19       sta $19    ; PRG $0F7FA
  $B7FC: a1 18       lda ($18,x)    ; PRG $0F7FC
  $B7FE: 85 10       sta $10    ; PRG $0F7FE
  $B800: 86 11       stx $11    ; PRG $0F800
  $B802: a5 10       lda $10    ; PRG $0F802
  $B804: c5 14       cmp $14    ; PRG $0F804
  $B806: d0 04       bne $b80c    ; PRG $0F806
  $B808: a5 11       lda $11    ; PRG $0F808
  $B80A: c5 15       cmp $15    ; PRG $0F80A
  $B80C: f0 03       beq $b811    ; PRG $0F80C
  $B80E: 4c 2b 98    jmp $982b    ; PRG $0F80E
  $B811: a0 fe       ldy #$fe    ; PRG $0F811
  $B813: b1 06       lda ($06),y    ; PRG $0F813
  $B815: 85 18       sta $18    ; PRG $0F815
  $B817: c8          iny    ; PRG $0F817
  $B818: b1 06       lda ($06),y    ; PRG $0F818
  $B81A: 85 19       sta $19    ; PRG $0F81A
  $B81C: 18          clc    ; PRG $0F81C
  $B81D: a9 02       lda #$02    ; PRG $0F81D
  $B81F: a0 07       ldy #$07    ; PRG $0F81F
  $B821: 71 18       adc ($18),y    ; PRG $0F821
  $B823: 91 18       sta ($18),y    ; PRG $0F823
  $B825: 8a          txa    ; PRG $0F825
  $B826: c8          iny    ; PRG $0F826
  $B827: 71 18       adc ($18),y    ; PRG $0F827
  $B829: 91 18       sta ($18),y    ; PRG $0F829
  $B82B: a0 fd       ldy #$fd    ; PRG $0F82B
  $B82D: b1 06       lda ($06),y    ; PRG $0F82D
  $B82F: 48          pha    ; PRG $0F82F
  $B830: 88          dey    ; PRG $0F830
  $B831: b1 06       lda ($06),y    ; PRG $0F831
  $B833: 48          pha    ; PRG $0F833
  $B834: a0 ff       ldy #$ff    ; PRG $0F834
  $B836: b1 06       lda ($06),y    ; PRG $0F836
  $B838: 48          pha    ; PRG $0F838
  $B839: 88          dey    ; PRG $0F839
  $B83A: b1 06       lda ($06),y    ; PRG $0F83A
  $B83C: 48          pha    ; PRG $0F83C
  $B83D: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0F83D
  $B840: 03 80 06    .db $03 $80 $06  -> vm $8003 argc 6    ; PRG $0F840
  $B843: a0 e6       ldy #$e6    ; PRG $0F843
  $B845: b1 06       lda ($06),y    ; PRG $0F845
  $B847: 85 18       sta $18    ; PRG $0F847
  $B849: c8          iny    ; PRG $0F849
  $B84A: b1 06       lda ($06),y    ; PRG $0F84A
  $B84C: 85 19       sta $19    ; PRG $0F84C
  $B84E: a1 18       lda ($18,x)    ; PRG $0F84E
  $B850: 85 14       sta $14    ; PRG $0F850
  $B852: 86 15       stx $15    ; PRG $0F852
  $B854: a5 14       lda $14    ; PRG $0F854
  $B856: a0 f2       ldy #$f2    ; PRG $0F856
  $B858: d1 06       cmp ($06),y    ; PRG $0F858
  $B85A: d0 05       bne $b861    ; PRG $0F85A
  $B85C: a5 15       lda $15    ; PRG $0F85C
  $B85E: c8          iny    ; PRG $0F85E
  $B85F: d1 06       cmp ($06),y    ; PRG $0F85F
  $B861: f0 03       beq $b866    ; PRG $0F861
  $B863: 4c 89 98    jmp $9889    ; PRG $0F863
  $B866: a0 e4       ldy #$e4    ; PRG $0F866
  $B868: b1 06       lda ($06),y    ; PRG $0F868
  $B86A: 85 18       sta $18    ; PRG $0F86A
  $B86C: c8          iny    ; PRG $0F86C
  $B86D: b1 06       lda ($06),y    ; PRG $0F86D
  $B86F: 85 19       sta $19    ; PRG $0F86F
  $B871: a1 18       lda ($18,x)    ; PRG $0F871
  $B873: 85 14       sta $14    ; PRG $0F873
  $B875: 86 15       stx $15    ; PRG $0F875
  $B877: a5 14       lda $14    ; PRG $0F877
  $B879: a0 f0       ldy #$f0    ; PRG $0F879
  $B87B: d1 06       cmp ($06),y    ; PRG $0F87B
  $B87D: d0 05       bne $b884    ; PRG $0F87D
  $B87F: a5 15       lda $15    ; PRG $0F87F
  $B881: c8          iny    ; PRG $0F881
  $B882: d1 06       cmp ($06),y    ; PRG $0F882
  $B884: d0 03       bne $b889    ; PRG $0F884
  $B886: 4c 0e 9c    jmp $9c0e    ; PRG $0F886
  $B889: a0 e2       ldy #$e2    ; PRG $0F889
  $B88B: b1 06       lda ($06),y    ; PRG $0F88B
  $B88D: 85 18       sta $18    ; PRG $0F88D
  $B88F: c8          iny    ; PRG $0F88F
  $B890: b1 06       lda ($06),y    ; PRG $0F890
  $B892: 85 19       sta $19    ; PRG $0F892
  $B894: a1 18       lda ($18,x)    ; PRG $0F894
  $B896: 85 14       sta $14    ; PRG $0F896
  $B898: 86 15       stx $15    ; PRG $0F898
  $B89A: a5 14       lda $14    ; PRG $0F89A
  $B89C: a0 ee       ldy #$ee    ; PRG $0F89C
  $B89E: d1 06       cmp ($06),y    ; PRG $0F89E
  $B8A0: d0 05       bne $b8a7    ; PRG $0F8A0
  $B8A2: a5 15       lda $15    ; PRG $0F8A2
  $B8A4: c8          iny    ; PRG $0F8A4
  $B8A5: d1 06       cmp ($06),y    ; PRG $0F8A5
  $B8A7: f0 03       beq $b8ac    ; PRG $0F8A7
  $B8A9: 4c 0e 9c    jmp $9c0e    ; PRG $0F8A9
  $B8AC: a0 e0       ldy #$e0    ; PRG $0F8AC
  $B8AE: b1 06       lda ($06),y    ; PRG $0F8AE
  $B8B0: 85 18       sta $18    ; PRG $0F8B0
  $B8B2: c8          iny    ; PRG $0F8B2
  $B8B3: b1 06       lda ($06),y    ; PRG $0F8B3
  $B8B5: 85 19       sta $19    ; PRG $0F8B5
  $B8B7: a1 18       lda ($18,x)    ; PRG $0F8B7
  $B8B9: 85 14       sta $14    ; PRG $0F8B9
  $B8BB: 86 15       stx $15    ; PRG $0F8BB
  $B8BD: a5 14       lda $14    ; PRG $0F8BD
  $B8BF: a0 ec       ldy #$ec    ; PRG $0F8BF
  $B8C1: d1 06       cmp ($06),y    ; PRG $0F8C1
  $B8C3: d0 05       bne $b8ca    ; PRG $0F8C3
  $B8C5: a5 15       lda $15    ; PRG $0F8C5
  $B8C7: c8          iny    ; PRG $0F8C7
  $B8C8: d1 06       cmp ($06),y    ; PRG $0F8C8
  $B8CA: f0 03       beq $b8cf    ; PRG $0F8CA
  $B8CC: 4c 0e 9c    jmp $9c0e    ; PRG $0F8CC
  $B8CF: a0 f1       ldy #$f1    ; PRG $0F8CF
  $B8D1: b1 06       lda ($06),y    ; PRG $0F8D1
  $B8D3: 48          pha    ; PRG $0F8D3
  $B8D4: 88          dey    ; PRG $0F8D4
  $B8D5: b1 06       lda ($06),y    ; PRG $0F8D5
  $B8D7: 48          pha    ; PRG $0F8D7
  $B8D8: a0 f3       ldy #$f3    ; PRG $0F8D8
  $B8DA: b1 06       lda ($06),y    ; PRG $0F8DA
  $B8DC: 48          pha    ; PRG $0F8DC
  $B8DD: 88          dey    ; PRG $0F8DD
  $B8DE: b1 06       lda ($06),y    ; PRG $0F8DE
  $B8E0: 48          pha    ; PRG $0F8E0
  $B8E1: a0 ed       ldy #$ed    ; PRG $0F8E1
  $B8E3: b1 06       lda ($06),y    ; PRG $0F8E3
  $B8E5: 48          pha    ; PRG $0F8E5
  $B8E6: 88          dey    ; PRG $0F8E6
  $B8E7: b1 06       lda ($06),y    ; PRG $0F8E7
  $B8E9: 48          pha    ; PRG $0F8E9
  $B8EA: a0 ef       ldy #$ef    ; PRG $0F8EA
  $B8EC: b1 06       lda ($06),y    ; PRG $0F8EC
  $B8EE: 48          pha    ; PRG $0F8EE
  $B8EF: 88          dey    ; PRG $0F8EF
  $B8F0: b1 06       lda ($06),y    ; PRG $0F8F0
  $B8F2: 48          pha    ; PRG $0F8F2
  $B8F3: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0F8F3
  $B8F6: 05 d4 0a    .db $05 $d4 $0a  -> vm $D405 argc 10    ; PRG $0F8F6
  $B8F9: a5 09       lda $09    ; PRG $0F8F9
  $B8FB: 48          pha    ; PRG $0F8FB
  $B8FC: a5 08       lda $08    ; PRG $0F8FC
  $B8FE: 48          pha    ; PRG $0F8FE
  $B8FF: a0 0c       ldy #$0c    ; PRG $0F8FF
  $B901: b1 04       lda ($04),y    ; PRG $0F901
  $B903: 48          pha    ; PRG $0F903
  $B904: 88          dey    ; PRG $0F904
  $B905: b1 04       lda ($04),y    ; PRG $0F905
  $B907: 48          pha    ; PRG $0F907
  $B908: a0 ed       ldy #$ed    ; PRG $0F908
  $B90A: b1 06       lda ($06),y    ; PRG $0F90A
  $B90C: 48          pha    ; PRG $0F90C
  $B90D: 88          dey    ; PRG $0F90D
  $B90E: b1 06       lda ($06),y    ; PRG $0F90E
  $B910: 48          pha    ; PRG $0F910
  $B911: a0 ef       ldy #$ef    ; PRG $0F911
  $B913: b1 06       lda ($06),y    ; PRG $0F913
  $B915: 48          pha    ; PRG $0F915
  $B916: 88          dey    ; PRG $0F916
  $B917: b1 06       lda ($06),y    ; PRG $0F917
  $B919: 48          pha    ; PRG $0F919
  $B91A: a0 f1       ldy #$f1    ; PRG $0F91A
  $B91C: b1 06       lda ($06),y    ; PRG $0F91C
  $B91E: 48          pha    ; PRG $0F91E
  $B91F: 88          dey    ; PRG $0F91F
  $B920: b1 06       lda ($06),y    ; PRG $0F920
  $B922: 48          pha    ; PRG $0F922
  $B923: a0 f3       ldy #$f3    ; PRG $0F923
  $B925: b1 06       lda ($06),y    ; PRG $0F925
  $B927: 48          pha    ; PRG $0F927
  $B928: 88          dey    ; PRG $0F928
  $B929: b1 06       lda ($06),y    ; PRG $0F929
  $B92B: 48          pha    ; PRG $0F92B
  $B92C: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0F92C
  $B92F: e2 8c 0e    .db $e2 $8c $0e  -> vm $8CE2 argc 14    ; PRG $0F92F
  $B932: a0 0d       ldy #$0d    ; PRG $0F932
  $B934: b1 04       lda ($04),y    ; PRG $0F934
  $B936: c8          iny    ; PRG $0F936
  $B937: 11 04       ora ($04),y    ; PRG $0F937
  $B939: d0 03       bne $b93e    ; PRG $0F939
  $B93B: 4c 11 9a    jmp $9a11    ; PRG $0F93B
  $B93E: a0 e4       ldy #$e4    ; PRG $0F93E
  $B940: b1 06       lda ($06),y    ; PRG $0F940
  $B942: 85 18       sta $18    ; PRG $0F942
  $B944: c8          iny    ; PRG $0F944
  $B945: b1 06       lda ($06),y    ; PRG $0F945
  $B947: 85 19       sta $19    ; PRG $0F947
  $B949: a1 18       lda ($18,x)    ; PRG $0F949
  $B94B: 85 14       sta $14    ; PRG $0F94B
  $B94D: 86 15       stx $15    ; PRG $0F94D
  $B94F: a5 14       lda $14    ; PRG $0F94F
  $B951: a0 f0       ldy #$f0    ; PRG $0F951
  $B953: d1 06       cmp ($06),y    ; PRG $0F953
  $B955: d0 05       bne $b95c    ; PRG $0F955
  $B957: a5 15       lda $15    ; PRG $0F957
  $B959: c8          iny    ; PRG $0F959
  $B95A: d1 06       cmp ($06),y    ; PRG $0F95A
  $B95C: d0 03       bne $b961    ; PRG $0F95C
  $B95E: 4c 11 9a    jmp $9a11    ; PRG $0F95E
  $B961: a0 f0       ldy #$f0    ; PRG $0F961
  $B963: b1 06       lda ($06),y    ; PRG $0F963
  $B965: c9 07       cmp #$07    ; PRG $0F965
  $B967: d0 05       bne $b96e    ; PRG $0F967
  $B969: c8          iny    ; PRG $0F969
  $B96A: b1 06       lda ($06),y    ; PRG $0F96A
  $B96C: c9 00       cmp #$00    ; PRG $0F96C
  $B96E: f0 03       beq $b973    ; PRG $0F96E
  $B970: 4c b9 99    jmp $99b9    ; PRG $0F970
  $B973: a0 e4       ldy #$e4    ; PRG $0F973
  $B975: b1 06       lda ($06),y    ; PRG $0F975
  $B977: 85 18       sta $18    ; PRG $0F977
  $B979: c8          iny    ; PRG $0F979
  $B97A: b1 06       lda ($06),y    ; PRG $0F97A
  $B97C: 85 19       sta $19    ; PRG $0F97C
  $B97E: a1 18       lda ($18,x)    ; PRG $0F97E
  $B980: 85 14       sta $14    ; PRG $0F980
  $B982: 86 15       stx $15    ; PRG $0F982
  $B984: a0 f0       ldy #$f0    ; PRG $0F984
  $B986: b1 06       lda ($06),y    ; PRG $0F986
  $B988: c5 14       cmp $14    ; PRG $0F988
  $B98A: c8          iny    ; PRG $0F98A
  $B98B: b1 06       lda ($06),y    ; PRG $0F98B
  $B98D: e5 15       sbc $15    ; PRG $0F98D
  $B98F: 90 03       bcc $b994    ; PRG $0F98F
  $B991: 4c b9 99    jmp $99b9    ; PRG $0F991
  $B994: a9 01       lda #$01    ; PRG $0F994
  $B996: 8d 7d 73    sta $737d   ; ui_shared_var_737d    ; PRG $0F996
  $B999: 8a          txa    ; PRG $0F999
  $B99A: 48          pha    ; PRG $0F99A
  $B99B: a9 07       lda #$07    ; PRG $0F99B
  $B99D: 48          pha    ; PRG $0F99D
  $B99E: 8a          txa    ; PRG $0F99E
  $B99F: 48          pha    ; PRG $0F99F
  $B9A0: 48          pha    ; PRG $0F9A0
  $B9A1: 48          pha    ; PRG $0F9A1
  $B9A2: a9 12       lda #$12    ; PRG $0F9A2
  $B9A4: 48          pha    ; PRG $0F9A4
  $B9A5: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0F9A5
  $B9A8: d4 ee 08    .db $d4 $ee $08  -> vm $EED4 argc 8    ; PRG $0F9A8
  $B9AB: 48          pha    ; PRG $0F9AB
  $B9AC: 98          tya    ; PRG $0F9AC
  $B9AD: 48          pha    ; PRG $0F9AD
  $B9AE: 8a          txa    ; PRG $0F9AE
  $B9AF: 48          pha    ; PRG $0F9AF
  $B9B0: a9 11       lda #$11    ; PRG $0F9B0
  $B9B2: 48          pha    ; PRG $0F9B2
  $B9B3: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0F9B3
  $B9B6: d4 ee 06    .db $d4 $ee $06  -> vm $EED4 argc 6    ; PRG $0F9B6
  $B9B9: a0 f0       ldy #$f0    ; PRG $0F9B9
  $B9BB: b1 06       lda ($06),y    ; PRG $0F9BB
  $B9BD: c9 06       cmp #$06    ; PRG $0F9BD
  $B9BF: d0 05       bne $b9c6    ; PRG $0F9BF
  $B9C1: c8          iny    ; PRG $0F9C1
  $B9C2: b1 06       lda ($06),y    ; PRG $0F9C2
  $B9C4: c9 00       cmp #$00    ; PRG $0F9C4
  $B9C6: f0 03       beq $b9cb    ; PRG $0F9C6
  $B9C8: 4c 11 9a    jmp $9a11    ; PRG $0F9C8
  $B9CB: a0 e4       ldy #$e4    ; PRG $0F9CB
  $B9CD: b1 06       lda ($06),y    ; PRG $0F9CD
  $B9CF: 85 18       sta $18    ; PRG $0F9CF
  $B9D1: c8          iny    ; PRG $0F9D1
  $B9D2: b1 06       lda ($06),y    ; PRG $0F9D2
  $B9D4: 85 19       sta $19    ; PRG $0F9D4
  $B9D6: a1 18       lda ($18,x)    ; PRG $0F9D6
  $B9D8: 85 14       sta $14    ; PRG $0F9D8
  $B9DA: 86 15       stx $15    ; PRG $0F9DA
  $B9DC: a5 14       lda $14    ; PRG $0F9DC
  $B9DE: a0 f0       ldy #$f0    ; PRG $0F9DE
  $B9E0: d1 06       cmp ($06),y    ; PRG $0F9E0
  $B9E2: a5 15       lda $15    ; PRG $0F9E2
  $B9E4: c8          iny    ; PRG $0F9E4
  $B9E5: f1 06       sbc ($06),y    ; PRG $0F9E5
  $B9E7: 90 03       bcc $b9ec    ; PRG $0F9E7
  $B9E9: 4c 11 9a    jmp $9a11    ; PRG $0F9E9
  $B9EC: a9 02       lda #$02    ; PRG $0F9EC
  $B9EE: 8d 7d 73    sta $737d   ; ui_shared_var_737d    ; PRG $0F9EE
  $B9F1: 8a          txa    ; PRG $0F9F1
  $B9F2: 48          pha    ; PRG $0F9F2
  $B9F3: a9 e7       lda #$e7    ; PRG $0F9F3
  $B9F5: 48          pha    ; PRG $0F9F5
  $B9F6: 8a          txa    ; PRG $0F9F6
  $B9F7: 48          pha    ; PRG $0F9F7
  $B9F8: 48          pha    ; PRG $0F9F8
  $B9F9: 48          pha    ; PRG $0F9F9
  $B9FA: a9 12       lda #$12    ; PRG $0F9FA
  $B9FC: 48          pha    ; PRG $0F9FC
  $B9FD: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0F9FD
  $BA00: d4 ee 08    .db $d4 $ee $08  -> vm $EED4 argc 8    ; PRG $0FA00
  $BA03: 48          pha    ; PRG $0FA03
  $BA04: 98          tya    ; PRG $0FA04
  $BA05: 48          pha    ; PRG $0FA05
  $BA06: 8a          txa    ; PRG $0FA06
  $BA07: 48          pha    ; PRG $0FA07
  $BA08: a9 11       lda #$11    ; PRG $0FA08
  $BA0A: 48          pha    ; PRG $0FA0A
  $BA0B: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0FA0B
  $BA0E: d4 ee 06    .db $d4 $ee $06  -> vm $EED4 argc 6    ; PRG $0FA0E
  $BA11: a0 0c       ldy #$0c    ; PRG $0FA11
  $BA13: b1 04       lda ($04),y    ; PRG $0FA13
  $BA15: 48          pha    ; PRG $0FA15
  $BA16: 88          dey    ; PRG $0FA16
  $BA17: b1 04       lda ($04),y    ; PRG $0FA17
  $BA19: 48          pha    ; PRG $0FA19
  $BA1A: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0FA1A
  $BA1D: ea ae 04    .db $ea $ae $04  -> vm $AEEA argc 4    ; PRG $0FA1D
  $BA20: a0 0d       ldy #$0d    ; PRG $0FA20
  $BA22: b1 04       lda ($04),y    ; PRG $0FA22
  $BA24: c8          iny    ; PRG $0FA24
  $BA25: 11 04       ora ($04),y    ; PRG $0FA25
  $BA27: d0 03       bne $ba2c    ; PRG $0FA27
  $BA29: 4c 83 9a    jmp $9a83    ; PRG $0FA29
  $BA2C: ad 7f 70    lda $707f    ; PRG $0FA2C
  $BA2F: d0 03       bne $ba34    ; PRG $0FA2F
  $BA31: 4c 80 9a    jmp $9a80    ; PRG $0FA31
  $BA34: a0 fd       ldy #$fd    ; PRG $0FA34
  $BA36: b1 06       lda ($06),y    ; PRG $0FA36
  $BA38: 48          pha    ; PRG $0FA38
  $BA39: 88          dey    ; PRG $0FA39
  $BA3A: b1 06       lda ($06),y    ; PRG $0FA3A
  $BA3C: 48          pha    ; PRG $0FA3C
  $BA3D: a0 e4       ldy #$e4    ; PRG $0FA3D
  $BA3F: b1 06       lda ($06),y    ; PRG $0FA3F
  $BA41: 85 18       sta $18    ; PRG $0FA41
  $BA43: c8          iny    ; PRG $0FA43
  $BA44: b1 06       lda ($06),y    ; PRG $0FA44
  $BA46: 85 19       sta $19    ; PRG $0FA46
  $BA48: a1 18       lda ($18,x)    ; PRG $0FA48
  $BA4A: 85 14       sta $14    ; PRG $0FA4A
  $BA4C: 86 15       stx $15    ; PRG $0FA4C
  $BA4E: a5 15       lda $15    ; PRG $0FA4E
  $BA50: 48          pha    ; PRG $0FA50
  $BA51: a5 14       lda $14    ; PRG $0FA51
  $BA53: 48          pha    ; PRG $0FA53
  $BA54: c8          iny    ; PRG $0FA54
  $BA55: b1 06       lda ($06),y    ; PRG $0FA55
  $BA57: 85 18       sta $18    ; PRG $0FA57
  $BA59: c8          iny    ; PRG $0FA59
  $BA5A: b1 06       lda ($06),y    ; PRG $0FA5A
  $BA5C: 85 19       sta $19    ; PRG $0FA5C
  $BA5E: a1 18       lda ($18,x)    ; PRG $0FA5E
  $BA60: 85 14       sta $14    ; PRG $0FA60
  $BA62: 86 15       stx $15    ; PRG $0FA62
  $BA64: a5 15       lda $15    ; PRG $0FA64
  $BA66: 48          pha    ; PRG $0FA66
  $BA67: a5 14       lda $14    ; PRG $0FA67
  $BA69: 48          pha    ; PRG $0FA69
  $BA6A: a9 84       lda #$84    ; PRG $0FA6A
  $BA6C: 48          pha    ; PRG $0FA6C
  $BA6D: a9 79       lda #$79    ; PRG $0FA6D
  $BA6F: 48          pha    ; PRG $0FA6F
  $BA70: 8a          txa    ; PRG $0FA70
  $BA71: 48          pha    ; PRG $0FA71
  $BA72: a9 c8       lda #$c8    ; PRG $0FA72
  $BA74: 48          pha    ; PRG $0FA74
  $BA75: 8a          txa    ; PRG $0FA75
  $BA76: 48          pha    ; PRG $0FA76
  $BA77: a9 01       lda #$01    ; PRG $0FA77
  $BA79: 48          pha    ; PRG $0FA79
  $BA7A: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0FA7A
  $BA7D: 3a de 0e    .db $3a $de $0e  -> vm $DE3A argc 14    ; PRG $0FA7D
  $BA80: 4c 0e 9c    jmp $9c0e    ; PRG $0FA80
