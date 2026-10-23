; ============================================================================
; Uncharted Waters - bank 13 NATIVE disassembly (window base $A000)
; 34 native subs: 7 $E299-stubbed (VM-frame entries) + 0 plain + 27 jumptable/CALL-recovered
; coverage: 5247B code+inline (64%) + 2685B $FF-pad + 260B data
; control-flow-followed, inline bridges ($E299/$E338) skipped; calls resolved vs mesen-labels.toml.
; ============================================================================
.base $A000

; ---- sub_13_0009  [stub]  <- (entry: bytecode/OS via $E299)
nat_13_0003: jsr $E299                    ; 13:A003  native-call prologue
            .db $00 $f8 $ff            ; inline: argcount $00, frame $fff8
  $A009: a9 05       lda #$05    ; PRG $1A009
  $A00B: 85 18       sta $18    ; PRG $1A00B
  $A00D: 86 19       stx $19    ; PRG $1A00D
  $A00F: a2 18       ldx #$18    ; PRG $1A00F
  $A011: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $1A011
  $A014: a0 0c       ldy #$0c    ; PRG $1A014
  $A016: b1 04       lda ($04),y    ; PRG $1A016
  $A018: 48          pha    ; PRG $1A018
  $A019: 88          dey    ; PRG $1A019
  $A01A: b1 04       lda ($04),y    ; PRG $1A01A
  $A01C: 48          pha    ; PRG $1A01C
  $A01D: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1A01D
  $A020: 32 d5 04    .db $32 $d5 $04  -> vm $D532 argc 4    ; PRG $1A020
  $A023: 18          clc    ; PRG $1A023
  $A024: a9 14       lda #$14    ; PRG $1A024
  $A026: 65 08       adc $08    ; PRG $1A026
  $A028: 85 18       sta $18    ; PRG $1A028
  $A02A: 8a          txa    ; PRG $1A02A
  $A02B: 65 09       adc $09    ; PRG $1A02B
  $A02D: 85 19       sta $19    ; PRG $1A02D
  $A02F: a5 19       lda $19    ; PRG $1A02F
  $A031: 48          pha    ; PRG $1A031
  $A032: a5 18       lda $18    ; PRG $1A032
  $A034: 48          pha    ; PRG $1A034
  $A035: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1A035
  $A038: 0c d3 04    .db $0c $d3 $04  -> vm $D30C argc 4    ; PRG $1A038
  $A03B: 86 09       stx $09    ; PRG $1A03B
  $A03D: a2 18       ldx #$18    ; PRG $1A03D
  $A03F: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $1A03F
  $A042: a0 08       ldy #$08    ; PRG $1A042
  $A044: a2 18       ldx #$18    ; PRG $1A044
  $A046: a9 14       lda #$14    ; PRG $1A046
  $A048: 20 15 e4    jsr $e415   ; alu_shr16_n    ; PRG $1A048
  $A04B: a9 07       lda #$07    ; PRG $1A04B
  $A04D: 25 14       and $14    ; PRG $1A04D
  $A04F: 85 18       sta $18    ; PRG $1A04F
  $A051: 8a          txa    ; PRG $1A051
  $A052: 85 19       sta $19    ; PRG $1A052
  $A054: 98          tya    ; PRG $1A054
  $A055: 25 18       and $18    ; PRG $1A055
  $A057: a0 f8       ldy #$f8    ; PRG $1A057
  $A059: 91 06       sta ($06),y    ; PRG $1A059
  $A05B: 8a          txa    ; PRG $1A05B
  $A05C: c8          iny    ; PRG $1A05C
  $A05D: 91 06       sta ($06),y    ; PRG $1A05D
  $A05F: a9 90       lda #$90    ; PRG $1A05F
  $A061: c8          iny    ; PRG $1A061
  $A062: 91 06       sta ($06),y    ; PRG $1A062
  $A064: a9 73       lda #$73    ; PRG $1A064
  $A066: c8          iny    ; PRG $1A066
  $A067: 91 06       sta ($06),y    ; PRG $1A067
  $A069: a9 17       lda #$17    ; PRG $1A069
  $A06B: a0 fe       ldy #$fe    ; PRG $1A06B
  $A06D: 91 06       sta ($06),y    ; PRG $1A06D
  $A06F: a9 74       lda #$74    ; PRG $1A06F
  $A071: c8          iny    ; PRG $1A071
  $A072: 91 06       sta ($06),y    ; PRG $1A072
  $A074: 18          clc    ; PRG $1A074
  $A075: a9 87       lda #$87    ; PRG $1A075
  $A077: 69 17       adc #$17    ; PRG $1A077
  $A079: a0 fc       ldy #$fc    ; PRG $1A079
  $A07B: 91 06       sta ($06),y    ; PRG $1A07B
  $A07D: 8a          txa    ; PRG $1A07D
  $A07E: 69 74       adc #$74    ; PRG $1A07E
  $A080: c8          iny    ; PRG $1A080
  $A081: 91 06       sta ($06),y    ; PRG $1A081
  $A083: 4c a4 80    jmp $80a4    ; PRG $1A083

; ---- sub_13_0086  [recovered]  <- (uncalled?)
  $A086: 18          clc    ; PRG $1A086
  $A087: a9 01       lda #$01    ; PRG $1A087
  $A089: a0 fa       ldy #$fa    ; PRG $1A089
  $A08B: 71 06       adc ($06),y    ; PRG $1A08B
  $A08D: 91 06       sta ($06),y    ; PRG $1A08D
  $A08F: 8a          txa    ; PRG $1A08F
  $A090: c8          iny    ; PRG $1A090
  $A091: 71 06       adc ($06),y    ; PRG $1A091
  $A093: 91 06       sta ($06),y    ; PRG $1A093
  $A095: 18          clc    ; PRG $1A095
  $A096: a9 01       lda #$01    ; PRG $1A096
  $A098: a0 fe       ldy #$fe    ; PRG $1A098
  $A09A: 71 06       adc ($06),y    ; PRG $1A09A
  $A09C: 91 06       sta ($06),y    ; PRG $1A09C
  $A09E: 8a          txa    ; PRG $1A09E
  $A09F: c8          iny    ; PRG $1A09F
  $A0A0: 71 06       adc ($06),y    ; PRG $1A0A0
  $A0A2: 91 06       sta ($06),y    ; PRG $1A0A2
  $A0A4: a0 fe       ldy #$fe    ; PRG $1A0A4
  $A0A6: b1 06       lda ($06),y    ; PRG $1A0A6
  $A0A8: a0 fc       ldy #$fc    ; PRG $1A0A8
  $A0AA: d1 06       cmp ($06),y    ; PRG $1A0AA
  $A0AC: a0 ff       ldy #$ff    ; PRG $1A0AC
  $A0AE: b1 06       lda ($06),y    ; PRG $1A0AE
  $A0B0: a0 fd       ldy #$fd    ; PRG $1A0B0
  $A0B2: f1 06       sbc ($06),y    ; PRG $1A0B2
  $A0B4: 90 03       bcc $a0b9    ; PRG $1A0B4
  $A0B6: 4c 53 81    jmp $8153    ; PRG $1A0B6
  $A0B9: c8          iny    ; PRG $1A0B9
  $A0BA: b1 06       lda ($06),y    ; PRG $1A0BA
  $A0BC: 85 18       sta $18    ; PRG $1A0BC
  $A0BE: c8          iny    ; PRG $1A0BE
  $A0BF: b1 06       lda ($06),y    ; PRG $1A0BF
  $A0C1: 85 19       sta $19    ; PRG $1A0C1
  $A0C3: a1 18       lda ($18,x)    ; PRG $1A0C3
  $A0C5: 85 14       sta $14    ; PRG $1A0C5
  $A0C7: 86 15       stx $15    ; PRG $1A0C7
  $A0C9: a5 14       lda $14    ; PRG $1A0C9
  $A0CB: c9 03       cmp #$03    ; PRG $1A0CB
  $A0CD: d0 04       bne $a0d3    ; PRG $1A0CD
  $A0CF: a5 15       lda $15    ; PRG $1A0CF
  $A0D1: c9 00       cmp #$00    ; PRG $1A0D1
  $A0D3: d0 03       bne $a0d8    ; PRG $1A0D3
  $A0D5: 4c f8 80    jmp $80f8    ; PRG $1A0D5
  $A0D8: a0 fe       ldy #$fe    ; PRG $1A0D8
  $A0DA: b1 06       lda ($06),y    ; PRG $1A0DA
  $A0DC: 85 18       sta $18    ; PRG $1A0DC
  $A0DE: c8          iny    ; PRG $1A0DE
  $A0DF: b1 06       lda ($06),y    ; PRG $1A0DF
  $A0E1: 85 19       sta $19    ; PRG $1A0E1
  $A0E3: a1 18       lda ($18,x)    ; PRG $1A0E3
  $A0E5: 85 14       sta $14    ; PRG $1A0E5
  $A0E7: 86 15       stx $15    ; PRG $1A0E7
  $A0E9: a5 14       lda $14    ; PRG $1A0E9
  $A0EB: c9 04       cmp #$04    ; PRG $1A0EB
  $A0ED: d0 04       bne $a0f3    ; PRG $1A0ED
  $A0EF: a5 15       lda $15    ; PRG $1A0EF
  $A0F1: c9 00       cmp #$00    ; PRG $1A0F1
  $A0F3: f0 03       beq $a0f8    ; PRG $1A0F3
  $A0F5: 4c 10 81    jmp $8110    ; PRG $1A0F5
  $A0F8: a0 fa       ldy #$fa    ; PRG $1A0F8
  $A0FA: b1 06       lda ($06),y    ; PRG $1A0FA
  $A0FC: 85 18       sta $18    ; PRG $1A0FC
  $A0FE: c8          iny    ; PRG $1A0FE
  $A0FF: b1 06       lda ($06),y    ; PRG $1A0FF
  $A101: 85 19       sta $19    ; PRG $1A101
  $A103: 18          clc    ; PRG $1A103
  $A104: a9 01       lda #$01    ; PRG $1A104
  $A106: 61 18       adc ($18,x)    ; PRG $1A106
  $A108: 81 18       sta ($18,x)    ; PRG $1A108
  $A10A: 8a          txa    ; PRG $1A10A
  $A10B: 69 00       adc #$00    ; PRG $1A10B
  $A10D: 4c 50 81    jmp $8150    ; PRG $1A10D

; ---- sub_13_0110  [recovered]  <- (uncalled?)
  $A110: a0 fe       ldy #$fe    ; PRG $1A110
  $A112: b1 06       lda ($06),y    ; PRG $1A112
  $A114: 85 18       sta $18    ; PRG $1A114
  $A116: c8          iny    ; PRG $1A116
  $A117: b1 06       lda ($06),y    ; PRG $1A117
  $A119: 85 19       sta $19    ; PRG $1A119
  $A11B: a1 18       lda ($18,x)    ; PRG $1A11B
  $A11D: 85 14       sta $14    ; PRG $1A11D
  $A11F: 86 15       stx $15    ; PRG $1A11F
  $A121: a5 14       lda $14    ; PRG $1A121
  $A123: c9 02       cmp #$02    ; PRG $1A123
  $A125: d0 04       bne $a12b    ; PRG $1A125
  $A127: a5 15       lda $15    ; PRG $1A127
  $A129: c9 00       cmp #$00    ; PRG $1A129
  $A12B: f0 03       beq $a130    ; PRG $1A12B
  $A12D: 4c 50 81    jmp $8150    ; PRG $1A12D
  $A130: a0 f8       ldy #$f8    ; PRG $1A130
  $A132: b1 06       lda ($06),y    ; PRG $1A132
  $A134: c8          iny    ; PRG $1A134
  $A135: 11 06       ora ($06),y    ; PRG $1A135
  $A137: d0 03       bne $a13c    ; PRG $1A137
  $A139: 4c 50 81    jmp $8150    ; PRG $1A139
  $A13C: c8          iny    ; PRG $1A13C
  $A13D: b1 06       lda ($06),y    ; PRG $1A13D
  $A13F: 85 18       sta $18    ; PRG $1A13F
  $A141: c8          iny    ; PRG $1A141
  $A142: b1 06       lda ($06),y    ; PRG $1A142
  $A144: 85 19       sta $19    ; PRG $1A144
  $A146: 18          clc    ; PRG $1A146
  $A147: a9 01       lda #$01    ; PRG $1A147
  $A149: 61 18       adc ($18,x)    ; PRG $1A149
  $A14B: 81 18       sta ($18,x)    ; PRG $1A14B
  $A14D: 8a          txa    ; PRG $1A14D
  $A14E: 69 00       adc #$00    ; PRG $1A14E
  $A150: 4c 86 80    jmp $8086    ; PRG $1A150

; ---- sub_13_015a  [stub]  <- (entry: bytecode/OS via $E299)
nat_13_0154: jsr $E299                    ; 13:A154  native-call prologue
            .db $00 $fe $ff            ; inline: argcount $00, frame $fffe
  $A15A: a9 06       lda #$06    ; PRG $1A15A
  $A15C: 85 18       sta $18    ; PRG $1A15C
  $A15E: 86 19       stx $19    ; PRG $1A15E
  $A160: a9 0f       lda #$0f    ; PRG $1A160
  $A162: 85 14       sta $14    ; PRG $1A162
  $A164: 86 15       stx $15    ; PRG $1A164
  $A166: a0 0d       ldy #$0d    ; PRG $1A166
  $A168: b1 04       lda ($04),y    ; PRG $1A168
  $A16A: 85 10       sta $10    ; PRG $1A16A
  $A16C: c8          iny    ; PRG $1A16C
  $A16D: b1 04       lda ($04),y    ; PRG $1A16D
  $A16F: 85 11       sta $11    ; PRG $1A16F
  $A171: a0 10       ldy #$10    ; PRG $1A171
  $A173: a2 14       ldx #$14    ; PRG $1A173
  $A175: a9 0c       lda #$0c    ; PRG $1A175
  $A177: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1A177
  $A17A: 18          clc    ; PRG $1A17A
  $A17B: a5 0c       lda $0c    ; PRG $1A17B
  $A17D: a0 0b       ldy #$0b    ; PRG $1A17D
  $A17F: 71 04       adc ($04),y    ; PRG $1A17F
  $A181: 85 14       sta $14    ; PRG $1A181
  $A183: a5 0d       lda $0d    ; PRG $1A183
  $A185: c8          iny    ; PRG $1A185
  $A186: 71 04       adc ($04),y    ; PRG $1A186
  $A188: 85 15       sta $15    ; PRG $1A188
  $A18A: 18          clc    ; PRG $1A18A
  $A18B: a5 14       lda $14    ; PRG $1A18B
  $A18D: 69 e1       adc #$e1    ; PRG $1A18D
  $A18F: 85 10       sta $10    ; PRG $1A18F
  $A191: a5 15       lda $15    ; PRG $1A191
  $A193: 69 74       adc #$74    ; PRG $1A193
  $A195: 85 11       sta $11    ; PRG $1A195
  $A197: a1 10       lda ($10,x)    ; PRG $1A197
  $A199: 85 14       sta $14    ; PRG $1A199
  $A19B: 86 15       stx $15    ; PRG $1A19B
  $A19D: 18          clc    ; PRG $1A19D
  $A19E: a5 14       lda $14    ; PRG $1A19E
  $A1A0: a0 0f       ldy #$0f    ; PRG $1A1A0
  $A1A2: 71 04       adc ($04),y    ; PRG $1A1A2
  $A1A4: 85 10       sta $10    ; PRG $1A1A4
  $A1A6: a5 15       lda $15    ; PRG $1A1A6
  $A1A8: c8          iny    ; PRG $1A1A8
  $A1A9: 71 04       adc ($04),y    ; PRG $1A1A9
  $A1AB: 85 11       sta $11    ; PRG $1A1AB
  $A1AD: 18          clc    ; PRG $1A1AD
  $A1AE: a9 05       lda #$05    ; PRG $1A1AE
  $A1B0: 65 10       adc $10    ; PRG $1A1B0
  $A1B2: 85 14       sta $14    ; PRG $1A1B2
  $A1B4: 8a          txa    ; PRG $1A1B4
  $A1B5: 65 11       adc $11    ; PRG $1A1B5
  $A1B7: 85 15       sta $15    ; PRG $1A1B7
  $A1B9: a0 14       ldy #$14    ; PRG $1A1B9
  $A1BB: a2 18       ldx #$18    ; PRG $1A1BB
  $A1BD: a9 10       lda #$10    ; PRG $1A1BD
  $A1BF: 20 eb e1    jsr $e1eb   ; alu_udiv16    ; PRG $1A1BF
  $A1C2: a5 10       lda $10    ; PRG $1A1C2
  $A1C4: a0 fe       ldy #$fe    ; PRG $1A1C4
  $A1C6: 91 06       sta ($06),y    ; PRG $1A1C6
  $A1C8: a5 11       lda $11    ; PRG $1A1C8
  $A1CA: c8          iny    ; PRG $1A1CA
  $A1CB: 91 06       sta ($06),y    ; PRG $1A1CB
  $A1CD: a9 01       lda #$01    ; PRG $1A1CD
  $A1CF: 85 18       sta $18    ; PRG $1A1CF
  $A1D1: 86 19       stx $19    ; PRG $1A1D1
  $A1D3: a9 02       lda #$02    ; PRG $1A1D3
  $A1D5: 85 14       sta $14    ; PRG $1A1D5
  $A1D7: 86 15       stx $15    ; PRG $1A1D7
  $A1D9: a0 0b       ldy #$0b    ; PRG $1A1D9
  $A1DB: b1 04       lda ($04),y    ; PRG $1A1DB
  $A1DD: 85 10       sta $10    ; PRG $1A1DD
  $A1DF: c8          iny    ; PRG $1A1DF
  $A1E0: b1 04       lda ($04),y    ; PRG $1A1E0
  $A1E2: 85 11       sta $11    ; PRG $1A1E2
  $A1E4: a0 10       ldy #$10    ; PRG $1A1E4
  $A1E6: a2 14       ldx #$14    ; PRG $1A1E6
  $A1E8: a9 0c       lda #$0c    ; PRG $1A1E8
  $A1EA: 20 fd e1    jsr $e1fd   ; div16_unsigned    ; PRG $1A1EA
  $A1ED: a5 0c       lda $0c    ; PRG $1A1ED
  $A1EF: 05 0d       ora $0d    ; PRG $1A1EF
  $A1F1: d0 03       bne $a1f6    ; PRG $1A1F1
  $A1F3: 4c ff 81    jmp $81ff    ; PRG $1A1F3
  $A1F6: a9 02       lda #$02    ; PRG $1A1F6
  $A1F8: 85 14       sta $14    ; PRG $1A1F8
  $A1FA: 86 15       stx $15    ; PRG $1A1FA
  $A1FC: 4c 05 82    jmp $8205   ; bj_is_face_card    ; PRG $1A1FC

; ---- sub_13_01ff  [recovered]  <- (uncalled?)
  $A1FF: a9 01       lda #$01    ; PRG $1A1FF
  $A201: 85 14       sta $14    ; PRG $1A201
  $A203: 86 15       stx $15    ; PRG $1A203
  $A205: a0 14       ldy #$14    ; PRG $1A205
  $A207: a2 18       ldx #$18    ; PRG $1A207
  $A209: a9 10       lda #$10    ; PRG $1A209
  $A20B: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $1A20B
  $A20E: a9 06       lda #$06    ; PRG $1A20E
  $A210: 85 18       sta $18    ; PRG $1A210
  $A212: 86 19       stx $19    ; PRG $1A212
  $A214: a0 fe       ldy #$fe    ; PRG $1A214
  $A216: b1 06       lda ($06),y    ; PRG $1A216
  $A218: 85 14       sta $14    ; PRG $1A218
  $A21A: c8          iny    ; PRG $1A21A
  $A21B: b1 06       lda ($06),y    ; PRG $1A21B
  $A21D: 85 15       sta $15    ; PRG $1A21D
  $A21F: a0 14       ldy #$14    ; PRG $1A21F
  $A221: a2 18       ldx #$18    ; PRG $1A221
  $A223: a9 0c       lda #$0c    ; PRG $1A223
  $A225: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1A225
  $A228: 18          clc    ; PRG $1A228
  $A229: a5 0c       lda $0c    ; PRG $1A229
  $A22B: 65 10       adc $10    ; PRG $1A22B
  $A22D: 85 18       sta $18    ; PRG $1A22D
  $A22F: a5 0d       lda $0d    ; PRG $1A22F
  $A231: 65 11       adc $11    ; PRG $1A231
  $A233: 85 19       sta $19    ; PRG $1A233
  $A235: 18          clc    ; PRG $1A235
  $A236: a5 18       lda $18    ; PRG $1A236
  $A238: 69 bc       adc #$bc    ; PRG $1A238
  $A23A: 85 14       sta $14    ; PRG $1A23A
  $A23C: a5 19       lda $19    ; PRG $1A23C
  $A23E: 69 94       adc #$94    ; PRG $1A23E
  $A240: 85 15       sta $15    ; PRG $1A240
  $A242: 18          clc    ; PRG $1A242
  $A243: a1 14       lda ($14,x)    ; PRG $1A243
  $A245: a0 0d       ldy #$0d    ; PRG $1A245
  $A247: 71 04       adc ($04),y    ; PRG $1A247
  $A249: 91 04       sta ($04),y    ; PRG $1A249
  $A24B: a0 01       ldy #$01    ; PRG $1A24B
  $A24D: b1 14       lda ($14),y    ; PRG $1A24D
  $A24F: a0 0e       ldy #$0e    ; PRG $1A24F
  $A251: 71 04       adc ($04),y    ; PRG $1A251
  $A253: 91 04       sta ($04),y    ; PRG $1A253
  $A255: a9 06       lda #$06    ; PRG $1A255
  $A257: 85 18       sta $18    ; PRG $1A257
  $A259: 86 19       stx $19    ; PRG $1A259
  $A25B: a0 fe       ldy #$fe    ; PRG $1A25B
  $A25D: b1 06       lda ($06),y    ; PRG $1A25D
  $A25F: 85 14       sta $14    ; PRG $1A25F
  $A261: c8          iny    ; PRG $1A261
  $A262: b1 06       lda ($06),y    ; PRG $1A262
  $A264: 85 15       sta $15    ; PRG $1A264
  $A266: a0 14       ldy #$14    ; PRG $1A266
  $A268: a2 18       ldx #$18    ; PRG $1A268
  $A26A: a9 10       lda #$10    ; PRG $1A26A
  $A26C: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1A26C
  $A26F: 18          clc    ; PRG $1A26F
  $A270: a5 10       lda $10    ; PRG $1A270
  $A272: 69 bc       adc #$bc    ; PRG $1A272
  $A274: 85 18       sta $18    ; PRG $1A274
  $A276: a5 11       lda $11    ; PRG $1A276
  $A278: 69 94       adc #$94    ; PRG $1A278
  $A27A: 85 19       sta $19    ; PRG $1A27A
  $A27C: 18          clc    ; PRG $1A27C
  $A27D: a1 18       lda ($18,x)    ; PRG $1A27D
  $A27F: a0 0b       ldy #$0b    ; PRG $1A27F
  $A281: 71 04       adc ($04),y    ; PRG $1A281
  $A283: 91 04       sta ($04),y    ; PRG $1A283
  $A285: a0 01       ldy #$01    ; PRG $1A285
  $A287: b1 18       lda ($18),y    ; PRG $1A287
  $A289: a0 0c       ldy #$0c    ; PRG $1A289
  $A28B: 71 04       adc ($04),y    ; PRG $1A28B
  $A28D: 91 04       sta ($04),y    ; PRG $1A28D
  $A28F: b1 04       lda ($04),y    ; PRG $1A28F
  $A291: 10 03       bpl $a296    ; PRG $1A291
  $A293: 4c c9 82    jmp $82c9   ; bj_hit_loop    ; PRG $1A293
  $A296: 88          dey    ; PRG $1A296
  $A297: b1 04       lda ($04),y    ; PRG $1A297
  $A299: c9 0f       cmp #$0f    ; PRG $1A299
  $A29B: c8          iny    ; PRG $1A29B
  $A29C: b1 04       lda ($04),y    ; PRG $1A29C
  $A29E: e9 00       sbc #$00    ; PRG $1A29E
  $A2A0: 70 04       bvs $a2a6    ; PRG $1A2A0
  $A2A2: 30 07       bmi $a2ab    ; PRG $1A2A2
  $A2A4: 10 02       bpl $a2a8    ; PRG $1A2A4
  $A2A6: 10 03       bpl $a2ab    ; PRG $1A2A6
  $A2A8: 4c c9 82    jmp $82c9   ; bj_hit_loop    ; PRG $1A2A8
  $A2AB: a0 0e       ldy #$0e    ; PRG $1A2AB
  $A2AD: b1 04       lda ($04),y    ; PRG $1A2AD
  $A2AF: 10 03       bpl $a2b4    ; PRG $1A2AF
  $A2B1: 4c c9 82    jmp $82c9   ; bj_hit_loop    ; PRG $1A2B1
  $A2B4: 88          dey    ; PRG $1A2B4
  $A2B5: b1 04       lda ($04),y    ; PRG $1A2B5
  $A2B7: c9 09       cmp #$09    ; PRG $1A2B7
  $A2B9: c8          iny    ; PRG $1A2B9
  $A2BA: b1 04       lda ($04),y    ; PRG $1A2BA
  $A2BC: e9 00       sbc #$00    ; PRG $1A2BC
  $A2BE: 70 04       bvs $a2c4    ; PRG $1A2BE
  $A2C0: 30 04       bmi $a2c6    ; PRG $1A2C0
  $A2C2: 10 05       bpl $a2c9    ; PRG $1A2C2
  $A2C4: 30 03       bmi $a2c9    ; PRG $1A2C4
  $A2C6: 4c d0 82    jmp $82d0    ; PRG $1A2C6
  $A2C9: a9 ff       lda #$ff    ; PRG $1A2C9
  $A2CB: 85 08       sta $08    ; PRG $1A2CB
  $A2CD: 86 09       stx $09    ; PRG $1A2CD
  $A2CF: 60          rts    ; PRG $1A2CF

; ---- sub_13_02d0  [recovered]  <- (uncalled?)
  $A2D0: a9 0f       lda #$0f    ; PRG $1A2D0
  $A2D2: 85 18       sta $18    ; PRG $1A2D2
  $A2D4: 86 19       stx $19    ; PRG $1A2D4
  $A2D6: a0 0d       ldy #$0d    ; PRG $1A2D6
  $A2D8: b1 04       lda ($04),y    ; PRG $1A2D8
  $A2DA: 85 14       sta $14    ; PRG $1A2DA
  $A2DC: c8          iny    ; PRG $1A2DC
  $A2DD: b1 04       lda ($04),y    ; PRG $1A2DD
  $A2DF: 85 15       sta $15    ; PRG $1A2DF
  $A2E1: a0 14       ldy #$14    ; PRG $1A2E1
  $A2E3: a2 18       ldx #$18    ; PRG $1A2E3
  $A2E5: a9 10       lda #$10    ; PRG $1A2E5
  $A2E7: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1A2E7
  $A2EA: 18          clc    ; PRG $1A2EA
  $A2EB: a5 10       lda $10    ; PRG $1A2EB
  $A2ED: a0 0b       ldy #$0b    ; PRG $1A2ED
  $A2EF: 71 04       adc ($04),y    ; PRG $1A2EF
  $A2F1: 85 18       sta $18    ; PRG $1A2F1
  $A2F3: a5 11       lda $11    ; PRG $1A2F3
  $A2F5: c8          iny    ; PRG $1A2F5
  $A2F6: 71 04       adc ($04),y    ; PRG $1A2F6
  $A2F8: 85 19       sta $19    ; PRG $1A2F8
  $A2FA: 18          clc    ; PRG $1A2FA
  $A2FB: a5 18       lda $18    ; PRG $1A2FB
  $A2FD: 69 e1       adc #$e1    ; PRG $1A2FD
  $A2FF: 85 14       sta $14    ; PRG $1A2FF
  $A301: a5 19       lda $19    ; PRG $1A301
  $A303: 69 74       adc #$74    ; PRG $1A303
  $A305: 85 15       sta $15    ; PRG $1A305
  $A307: a1 14       lda ($14,x)    ; PRG $1A307
  $A309: 85 18       sta $18    ; PRG $1A309
  $A30B: 86 19       stx $19    ; PRG $1A30B
  $A30D: a5 18       lda $18    ; PRG $1A30D
  $A30F: c9 80       cmp #$80    ; PRG $1A30F
  $A311: d0 04       bne $a317    ; PRG $1A311
  $A313: a5 19       lda $19    ; PRG $1A313
  $A315: c9 00       cmp #$00    ; PRG $1A315
  $A317: f0 03       beq $a31c    ; PRG $1A317
  $A319: 4c 59 83    jmp $8359    ; PRG $1A319
  $A31C: a9 0f       lda #$0f    ; PRG $1A31C
  $A31E: 85 18       sta $18    ; PRG $1A31E
  $A320: 86 19       stx $19    ; PRG $1A320
  $A322: a0 0d       ldy #$0d    ; PRG $1A322
  $A324: b1 04       lda ($04),y    ; PRG $1A324
  $A326: 85 14       sta $14    ; PRG $1A326
  $A328: c8          iny    ; PRG $1A328
  $A329: b1 04       lda ($04),y    ; PRG $1A329
  $A32B: 85 15       sta $15    ; PRG $1A32B
  $A32D: a0 14       ldy #$14    ; PRG $1A32D
  $A32F: a2 18       ldx #$18    ; PRG $1A32F
  $A331: a9 10       lda #$10    ; PRG $1A331
  $A333: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1A333
  $A336: 18          clc    ; PRG $1A336
  $A337: a5 10       lda $10    ; PRG $1A337
  $A339: a0 0b       ldy #$0b    ; PRG $1A339
  $A33B: 71 04       adc ($04),y    ; PRG $1A33B
  $A33D: 85 18       sta $18    ; PRG $1A33D
  $A33F: a5 11       lda $11    ; PRG $1A33F
  $A341: c8          iny    ; PRG $1A341
  $A342: 71 04       adc ($04),y    ; PRG $1A342
  $A344: 85 19       sta $19    ; PRG $1A344
  $A346: 18          clc    ; PRG $1A346
  $A347: a5 18       lda $18    ; PRG $1A347
  $A349: 69 e1       adc #$e1    ; PRG $1A349
  $A34B: 85 14       sta $14    ; PRG $1A34B
  $A34D: a5 19       lda $19    ; PRG $1A34D
  $A34F: 69 74       adc #$74    ; PRG $1A34F
  $A351: 85 15       sta $15    ; PRG $1A351
  $A353: a0 fe       ldy #$fe    ; PRG $1A353
  $A355: b1 06       lda ($06),y    ; PRG $1A355
  $A357: 81 14       sta ($14,x)    ; PRG $1A357
  $A359: a0 0b       ldy #$0b    ; PRG $1A359
  $A35B: b1 04       lda ($04),y    ; PRG $1A35B
  $A35D: 8d f2 75    sta $75f2    ; PRG $1A35D
  $A360: c8          iny    ; PRG $1A360
  $A361: b1 04       lda ($04),y    ; PRG $1A361
  $A363: 8d f3 75    sta $75f3    ; PRG $1A363
  $A366: c8          iny    ; PRG $1A366
  $A367: b1 04       lda ($04),y    ; PRG $1A367
  $A369: 8d f4 75    sta $75f4    ; PRG $1A369
  $A36C: c8          iny    ; PRG $1A36C
  $A36D: b1 04       lda ($04),y    ; PRG $1A36D
  $A36F: 8d f5 75    sta $75f5    ; PRG $1A36F
  $A372: a9 0f       lda #$0f    ; PRG $1A372
  $A374: 85 18       sta $18    ; PRG $1A374
  $A376: 86 19       stx $19    ; PRG $1A376
  $A378: ad f4 75    lda $75f4    ; PRG $1A378
  $A37B: 85 14       sta $14    ; PRG $1A37B
  $A37D: ad f5 75    lda $75f5    ; PRG $1A37D
  $A380: 85 15       sta $15    ; PRG $1A380
  $A382: a0 14       ldy #$14    ; PRG $1A382
  $A384: a2 18       ldx #$18    ; PRG $1A384
  $A386: a9 10       lda #$10    ; PRG $1A386
  $A388: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1A388
  $A38B: 18          clc    ; PRG $1A38B
  $A38C: a5 10       lda $10    ; PRG $1A38C
  $A38E: 6d f2 75    adc $75f2    ; PRG $1A38E
  $A391: 85 18       sta $18    ; PRG $1A391
  $A393: a5 11       lda $11    ; PRG $1A393
  $A395: 6d f3 75    adc $75f3    ; PRG $1A395
  $A398: 85 19       sta $19    ; PRG $1A398
  $A39A: 18          clc    ; PRG $1A39A
  $A39B: a5 18       lda $18    ; PRG $1A39B
  $A39D: 69 17       adc #$17    ; PRG $1A39D
  $A39F: 85 14       sta $14    ; PRG $1A39F
  $A3A1: a5 19       lda $19    ; PRG $1A3A1
  $A3A3: 69 74       adc #$74    ; PRG $1A3A3
  $A3A5: 85 15       sta $15    ; PRG $1A3A5
  $A3A7: a1 14       lda ($14,x)    ; PRG $1A3A7
  $A3A9: 85 08       sta $08    ; PRG $1A3A9
  $A3AB: 86 09       stx $09    ; PRG $1A3AB
  $A3AD: 60          rts    ; PRG $1A3AD

; ---- sub_13_03b4  [stub]  <- (entry: bytecode/OS via $E299)
nat_13_03ae: jsr $E299                    ; 13:A3AE  native-call prologue
            .db $00 $f2 $ff            ; inline: argcount $00, frame $fff2
  $A3B4: a0 0c       ldy #$0c    ; PRG $1A3B4
  $A3B6: b1 04       lda ($04),y    ; PRG $1A3B6
  $A3B8: 48          pha    ; PRG $1A3B8
  $A3B9: 88          dey    ; PRG $1A3B9
  $A3BA: b1 04       lda ($04),y    ; PRG $1A3BA
  $A3BC: 48          pha    ; PRG $1A3BC
  $A3BD: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1A3BD
  $A3C0: 03 80 04    .db $03 $80 $04  -> vm $8003 argc 4    ; PRG $1A3C0
  $A3C3: a9 a3       lda #$a3    ; PRG $1A3C3
  $A3C5: a0 fe       ldy #$fe    ; PRG $1A3C5
  $A3C7: 91 06       sta ($06),y    ; PRG $1A3C7
  $A3C9: a9 74       lda #$74    ; PRG $1A3C9
  $A3CB: c8          iny    ; PRG $1A3CB
  $A3CC: 91 06       sta ($06),y    ; PRG $1A3CC
  $A3CE: 18          clc    ; PRG $1A3CE
  $A3CF: a9 a3       lda #$a3    ; PRG $1A3CF
  $A3D1: 6d aa 74    adc $74aa    ; PRG $1A3D1
  $A3D4: a0 fc       ldy #$fc    ; PRG $1A3D4
  $A3D6: 91 06       sta ($06),y    ; PRG $1A3D6
  $A3D8: a9 74       lda #$74    ; PRG $1A3D8
  $A3DA: 6d ab 74    adc $74ab    ; PRG $1A3DA
  $A3DD: c8          iny    ; PRG $1A3DD
  $A3DE: 91 06       sta ($06),y    ; PRG $1A3DE
  $A3E0: 4c f2 83    jmp $83f2   ; cargo_entity_a    ; PRG $1A3E0

; ---- sub_13_03e3  [recovered]  <- (uncalled?)
  $A3E3: 18          clc    ; PRG $1A3E3
  $A3E4: a9 01       lda #$01    ; PRG $1A3E4
  $A3E6: a0 fe       ldy #$fe    ; PRG $1A3E6
  $A3E8: 71 06       adc ($06),y    ; PRG $1A3E8
  $A3EA: 91 06       sta ($06),y    ; PRG $1A3EA
  $A3EC: 8a          txa    ; PRG $1A3EC
  $A3ED: c8          iny    ; PRG $1A3ED
  $A3EE: 71 06       adc ($06),y    ; PRG $1A3EE
  $A3F0: 91 06       sta ($06),y    ; PRG $1A3F0
  $A3F2: a0 fe       ldy #$fe    ; PRG $1A3F2
  $A3F4: b1 06       lda ($06),y    ; PRG $1A3F4
  $A3F6: a0 fc       ldy #$fc    ; PRG $1A3F6
  $A3F8: d1 06       cmp ($06),y    ; PRG $1A3F8
  $A3FA: a0 ff       ldy #$ff    ; PRG $1A3FA
  $A3FC: b1 06       lda ($06),y    ; PRG $1A3FC
  $A3FE: a0 fd       ldy #$fd    ; PRG $1A3FE
  $A400: f1 06       sbc ($06),y    ; PRG $1A400
  $A402: 90 03       bcc $a407    ; PRG $1A402
  $A404: 4c 75 86    jmp $8675    ; PRG $1A404
  $A407: a9 07       lda #$07    ; PRG $1A407
  $A409: 85 18       sta $18    ; PRG $1A409
  $A40B: 86 19       stx $19    ; PRG $1A40B
  $A40D: c8          iny    ; PRG $1A40D
  $A40E: b1 06       lda ($06),y    ; PRG $1A40E
  $A410: 85 14       sta $14    ; PRG $1A410
  $A412: c8          iny    ; PRG $1A412
  $A413: b1 06       lda ($06),y    ; PRG $1A413
  $A415: 85 15       sta $15    ; PRG $1A415
  $A417: a1 14       lda ($14,x)    ; PRG $1A417
  $A419: 85 10       sta $10    ; PRG $1A419
  $A41B: 86 11       stx $11    ; PRG $1A41B
  $A41D: a0 10       ldy #$10    ; PRG $1A41D
  $A41F: a2 18       ldx #$18    ; PRG $1A41F
  $A421: a9 14       lda #$14    ; PRG $1A421
  $A423: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1A423
  $A426: 18          clc    ; PRG $1A426
  $A427: a5 14       lda $14    ; PRG $1A427
  $A429: 69 90       adc #$90    ; PRG $1A429
  $A42B: 85 18       sta $18    ; PRG $1A42B
  $A42D: a5 15       lda $15    ; PRG $1A42D
  $A42F: 69 6c       adc #$6c    ; PRG $1A42F
  $A431: 85 19       sta $19    ; PRG $1A431
  $A433: a1 18       lda ($18,x)    ; PRG $1A433
  $A435: d0 03       bne $a43a    ; PRG $1A435
  $A437: 4c 72 86    jmp $8672    ; PRG $1A437
  $A43A: a9 0f       lda #$0f    ; PRG $1A43A
  $A43C: 85 18       sta $18    ; PRG $1A43C
  $A43E: 86 19       stx $19    ; PRG $1A43E
  $A440: a0 fe       ldy #$fe    ; PRG $1A440
  $A442: b1 06       lda ($06),y    ; PRG $1A442
  $A444: 85 14       sta $14    ; PRG $1A444
  $A446: c8          iny    ; PRG $1A446
  $A447: b1 06       lda ($06),y    ; PRG $1A447
  $A449: 85 15       sta $15    ; PRG $1A449
  $A44B: a1 14       lda ($14,x)    ; PRG $1A44B
  $A44D: 85 10       sta $10    ; PRG $1A44D
  $A44F: 86 11       stx $11    ; PRG $1A44F
  $A451: 18          clc    ; PRG $1A451
  $A452: a5 10       lda $10    ; PRG $1A452
  $A454: 69 ac       adc #$ac    ; PRG $1A454
  $A456: 85 14       sta $14    ; PRG $1A456
  $A458: a5 11       lda $11    ; PRG $1A458
  $A45A: 69 74       adc #$74    ; PRG $1A45A
  $A45C: 85 15       sta $15    ; PRG $1A45C
  $A45E: a1 14       lda ($14,x)    ; PRG $1A45E
  $A460: 85 10       sta $10    ; PRG $1A460
  $A462: 86 11       stx $11    ; PRG $1A462
  $A464: a0 10       ldy #$10    ; PRG $1A464
  $A466: a2 18       ldx #$18    ; PRG $1A466
  $A468: a9 14       lda #$14    ; PRG $1A468
  $A46A: 20 eb e1    jsr $e1eb   ; alu_udiv16    ; PRG $1A46A
  $A46D: a5 14       lda $14    ; PRG $1A46D
  $A46F: a0 f8       ldy #$f8    ; PRG $1A46F
  $A471: 91 06       sta ($06),y    ; PRG $1A471
  $A473: a5 15       lda $15    ; PRG $1A473
  $A475: c8          iny    ; PRG $1A475
  $A476: 91 06       sta ($06),y    ; PRG $1A476
  $A478: a9 0f       lda #$0f    ; PRG $1A478
  $A47A: 85 18       sta $18    ; PRG $1A47A
  $A47C: 86 19       stx $19    ; PRG $1A47C
  $A47E: a0 fe       ldy #$fe    ; PRG $1A47E
  $A480: b1 06       lda ($06),y    ; PRG $1A480
  $A482: 85 14       sta $14    ; PRG $1A482
  $A484: c8          iny    ; PRG $1A484
  $A485: b1 06       lda ($06),y    ; PRG $1A485
  $A487: 85 15       sta $15    ; PRG $1A487
  $A489: a1 14       lda ($14,x)    ; PRG $1A489
  $A48B: 85 10       sta $10    ; PRG $1A48B
  $A48D: 86 11       stx $11    ; PRG $1A48D
  $A48F: 18          clc    ; PRG $1A48F
  $A490: a5 10       lda $10    ; PRG $1A490
  $A492: 69 ac       adc #$ac    ; PRG $1A492
  $A494: 85 14       sta $14    ; PRG $1A494
  $A496: a5 11       lda $11    ; PRG $1A496
  $A498: 69 74       adc #$74    ; PRG $1A498
  $A49A: 85 15       sta $15    ; PRG $1A49A
  $A49C: a1 14       lda ($14,x)    ; PRG $1A49C
  $A49E: 85 10       sta $10    ; PRG $1A49E
  $A4A0: 86 11       stx $11    ; PRG $1A4A0
  $A4A2: a0 10       ldy #$10    ; PRG $1A4A2
  $A4A4: a2 18       ldx #$18    ; PRG $1A4A4
  $A4A6: a9 14       lda #$14    ; PRG $1A4A6
  $A4A8: 20 d9 e1    jsr $e1d9   ; alu_div_push_remainder    ; PRG $1A4A8
  $A4AB: a5 14       lda $14    ; PRG $1A4AB
  $A4AD: a0 f6       ldy #$f6    ; PRG $1A4AD
  $A4AF: 91 06       sta ($06),y    ; PRG $1A4AF
  $A4B1: a5 15       lda $15    ; PRG $1A4B1
  $A4B3: c8          iny    ; PRG $1A4B3
  $A4B4: 91 06       sta ($06),y    ; PRG $1A4B4
  $A4B6: a9 0f       lda #$0f    ; PRG $1A4B6
  $A4B8: 85 18       sta $18    ; PRG $1A4B8
  $A4BA: 86 19       stx $19    ; PRG $1A4BA
  $A4BC: 88          dey    ; PRG $1A4BC
  $A4BD: b1 06       lda ($06),y    ; PRG $1A4BD
  $A4BF: 85 14       sta $14    ; PRG $1A4BF
  $A4C1: c8          iny    ; PRG $1A4C1
  $A4C2: b1 06       lda ($06),y    ; PRG $1A4C2
  $A4C4: 85 15       sta $15    ; PRG $1A4C4
  $A4C6: a0 14       ldy #$14    ; PRG $1A4C6
  $A4C8: a2 18       ldx #$18    ; PRG $1A4C8
  $A4CA: a9 10       lda #$10    ; PRG $1A4CA
  $A4CC: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1A4CC
  $A4CF: 18          clc    ; PRG $1A4CF
  $A4D0: a5 10       lda $10    ; PRG $1A4D0
  $A4D2: a0 f8       ldy #$f8    ; PRG $1A4D2
  $A4D4: 71 06       adc ($06),y    ; PRG $1A4D4
  $A4D6: 85 18       sta $18    ; PRG $1A4D6
  $A4D8: a5 11       lda $11    ; PRG $1A4D8
  $A4DA: c8          iny    ; PRG $1A4DA
  $A4DB: 71 06       adc ($06),y    ; PRG $1A4DB
  $A4DD: 85 19       sta $19    ; PRG $1A4DD
  $A4DF: 18          clc    ; PRG $1A4DF
  $A4E0: a5 18       lda $18    ; PRG $1A4E0
  $A4E2: 69 90       adc #$90    ; PRG $1A4E2
  $A4E4: 85 14       sta $14    ; PRG $1A4E4
  $A4E6: a5 19       lda $19    ; PRG $1A4E6
  $A4E8: 69 73       adc #$73    ; PRG $1A4E8
  $A4EA: 85 15       sta $15    ; PRG $1A4EA
  $A4EC: 18          clc    ; PRG $1A4EC
  $A4ED: a9 01       lda #$01    ; PRG $1A4ED
  $A4EF: 61 14       adc ($14,x)    ; PRG $1A4EF
  $A4F1: 81 14       sta ($14,x)    ; PRG $1A4F1
  $A4F3: 8a          txa    ; PRG $1A4F3
  $A4F4: 69 00       adc #$00    ; PRG $1A4F4
  $A4F6: ad 68 75    lda $7568    ; PRG $1A4F6
  $A4F9: 0d 69 75    ora $7569    ; PRG $1A4F9
  $A4FC: d0 03       bne $a501    ; PRG $1A4FC
  $A4FE: 4c 72 86    jmp $8672    ; PRG $1A4FE
  $A501: 8a          txa    ; PRG $1A501
  $A502: c8          iny    ; PRG $1A502
  $A503: 91 06       sta ($06),y    ; PRG $1A503
  $A505: c8          iny    ; PRG $1A505
  $A506: 91 06       sta ($06),y    ; PRG $1A506
  $A508: 4c 1a 85    jmp $851a    ; PRG $1A508

; ---- sub_13_050b  [recovered]  <- (uncalled?)
  $A50B: 18          clc    ; PRG $1A50B
  $A50C: a9 01       lda #$01    ; PRG $1A50C
  $A50E: a0 fa       ldy #$fa    ; PRG $1A50E
  $A510: 71 06       adc ($06),y    ; PRG $1A510
  $A512: 91 06       sta ($06),y    ; PRG $1A512
  $A514: 8a          txa    ; PRG $1A514
  $A515: c8          iny    ; PRG $1A515
  $A516: 71 06       adc ($06),y    ; PRG $1A516
  $A518: 91 06       sta ($06),y    ; PRG $1A518
  $A51A: a0 fa       ldy #$fa    ; PRG $1A51A
  $A51C: b1 06       lda ($06),y    ; PRG $1A51C
  $A51E: c9 06       cmp #$06    ; PRG $1A51E
  $A520: c8          iny    ; PRG $1A520
  $A521: b1 06       lda ($06),y    ; PRG $1A521
  $A523: e9 00       sbc #$00    ; PRG $1A523
  $A525: 90 03       bcc $a52a    ; PRG $1A525
  $A527: 4c 72 86    jmp $8672    ; PRG $1A527
  $A52A: a9 06       lda #$06    ; PRG $1A52A
  $A52C: 85 18       sta $18    ; PRG $1A52C
  $A52E: 86 19       stx $19    ; PRG $1A52E
  $A530: 88          dey    ; PRG $1A530
  $A531: b1 06       lda ($06),y    ; PRG $1A531
  $A533: 85 14       sta $14    ; PRG $1A533
  $A535: c8          iny    ; PRG $1A535
  $A536: b1 06       lda ($06),y    ; PRG $1A536
  $A538: 85 15       sta $15    ; PRG $1A538
  $A53A: a0 14       ldy #$14    ; PRG $1A53A
  $A53C: a2 18       ldx #$18    ; PRG $1A53C
  $A53E: a9 10       lda #$10    ; PRG $1A53E
  $A540: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1A540
  $A543: 18          clc    ; PRG $1A543
  $A544: a5 10       lda $10    ; PRG $1A544
  $A546: 69 bc       adc #$bc    ; PRG $1A546
  $A548: 85 18       sta $18    ; PRG $1A548
  $A54A: a5 11       lda $11    ; PRG $1A54A
  $A54C: 69 94       adc #$94    ; PRG $1A54C
  $A54E: 85 19       sta $19    ; PRG $1A54E
  $A550: 18          clc    ; PRG $1A550
  $A551: a1 18       lda ($18,x)    ; PRG $1A551
  $A553: a0 f8       ldy #$f8    ; PRG $1A553
  $A555: 71 06       adc ($06),y    ; PRG $1A555
  $A557: a0 f4       ldy #$f4    ; PRG $1A557
  $A559: 91 06       sta ($06),y    ; PRG $1A559
  $A55B: a0 01       ldy #$01    ; PRG $1A55B
  $A55D: b1 18       lda ($18),y    ; PRG $1A55D
  $A55F: a0 f9       ldy #$f9    ; PRG $1A55F
  $A561: 71 06       adc ($06),y    ; PRG $1A561
  $A563: a0 f5       ldy #$f5    ; PRG $1A563
  $A565: 91 06       sta ($06),y    ; PRG $1A565
  $A567: a9 01       lda #$01    ; PRG $1A567
  $A569: 85 18       sta $18    ; PRG $1A569
  $A56B: 86 19       stx $19    ; PRG $1A56B
  $A56D: a9 02       lda #$02    ; PRG $1A56D
  $A56F: 85 14       sta $14    ; PRG $1A56F
  $A571: 86 15       stx $15    ; PRG $1A571
  $A573: a0 f8       ldy #$f8    ; PRG $1A573
  $A575: b1 06       lda ($06),y    ; PRG $1A575
  $A577: 85 10       sta $10    ; PRG $1A577
  $A579: c8          iny    ; PRG $1A579
  $A57A: b1 06       lda ($06),y    ; PRG $1A57A
  $A57C: 85 11       sta $11    ; PRG $1A57C
  $A57E: a0 10       ldy #$10    ; PRG $1A57E
  $A580: a2 14       ldx #$14    ; PRG $1A580
  $A582: a9 0c       lda #$0c    ; PRG $1A582
  $A584: 20 fd e1    jsr $e1fd   ; div16_unsigned    ; PRG $1A584
  $A587: a5 0c       lda $0c    ; PRG $1A587
  $A589: 05 0d       ora $0d    ; PRG $1A589
  $A58B: d0 03       bne $a590    ; PRG $1A58B
  $A58D: 4c 99 85    jmp $8599   ; guild_clear_region    ; PRG $1A58D
  $A590: a9 02       lda #$02    ; PRG $1A590
  $A592: 85 14       sta $14    ; PRG $1A592
  $A594: 86 15       stx $15    ; PRG $1A594
  $A596: 4c 9f 85    jmp $859f    ; PRG $1A596

; ---- sub_13_0599  [recovered]  <- (uncalled?)
  $A599: a9 01       lda #$01    ; PRG $1A599
  $A59B: 85 14       sta $14    ; PRG $1A59B
  $A59D: 86 15       stx $15    ; PRG $1A59D
  $A59F: a0 14       ldy #$14    ; PRG $1A59F
  $A5A1: a2 18       ldx #$18    ; PRG $1A5A1
  $A5A3: a9 10       lda #$10    ; PRG $1A5A3
  $A5A5: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $1A5A5
  $A5A8: a9 06       lda #$06    ; PRG $1A5A8
  $A5AA: 85 18       sta $18    ; PRG $1A5AA
  $A5AC: 86 19       stx $19    ; PRG $1A5AC
  $A5AE: a0 fa       ldy #$fa    ; PRG $1A5AE
  $A5B0: b1 06       lda ($06),y    ; PRG $1A5B0
  $A5B2: 85 14       sta $14    ; PRG $1A5B2
  $A5B4: c8          iny    ; PRG $1A5B4
  $A5B5: b1 06       lda ($06),y    ; PRG $1A5B5
  $A5B7: 85 15       sta $15    ; PRG $1A5B7
  $A5B9: a0 14       ldy #$14    ; PRG $1A5B9
  $A5BB: a2 18       ldx #$18    ; PRG $1A5BB
  $A5BD: a9 0c       lda #$0c    ; PRG $1A5BD
  $A5BF: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1A5BF
  $A5C2: 18          clc    ; PRG $1A5C2
  $A5C3: a5 0c       lda $0c    ; PRG $1A5C3
  $A5C5: 65 10       adc $10    ; PRG $1A5C5
  $A5C7: 85 18       sta $18    ; PRG $1A5C7
  $A5C9: a5 0d       lda $0d    ; PRG $1A5C9
  $A5CB: 65 11       adc $11    ; PRG $1A5CB
  $A5CD: 85 19       sta $19    ; PRG $1A5CD
  $A5CF: 18          clc    ; PRG $1A5CF
  $A5D0: a5 18       lda $18    ; PRG $1A5D0
  $A5D2: 69 bc       adc #$bc    ; PRG $1A5D2
  $A5D4: 85 14       sta $14    ; PRG $1A5D4
  $A5D6: a5 19       lda $19    ; PRG $1A5D6
  $A5D8: 69 94       adc #$94    ; PRG $1A5D8
  $A5DA: 85 15       sta $15    ; PRG $1A5DA
  $A5DC: 18          clc    ; PRG $1A5DC
  $A5DD: a1 14       lda ($14,x)    ; PRG $1A5DD
  $A5DF: a0 f6       ldy #$f6    ; PRG $1A5DF
  $A5E1: 71 06       adc ($06),y    ; PRG $1A5E1
  $A5E3: a0 f2       ldy #$f2    ; PRG $1A5E3
  $A5E5: 91 06       sta ($06),y    ; PRG $1A5E5
  $A5E7: a0 01       ldy #$01    ; PRG $1A5E7
  $A5E9: b1 14       lda ($14),y    ; PRG $1A5E9
  $A5EB: a0 f7       ldy #$f7    ; PRG $1A5EB
  $A5ED: 71 06       adc ($06),y    ; PRG $1A5ED
  $A5EF: a0 f3       ldy #$f3    ; PRG $1A5EF
  $A5F1: 91 06       sta ($06),y    ; PRG $1A5F1
  $A5F3: a0 f5       ldy #$f5    ; PRG $1A5F3
  $A5F5: b1 06       lda ($06),y    ; PRG $1A5F5
  $A5F7: 10 03       bpl $a5fc    ; PRG $1A5F7
  $A5F9: 4c 6f 86    jmp $866f    ; PRG $1A5F9
  $A5FC: 88          dey    ; PRG $1A5FC
  $A5FD: b1 06       lda ($06),y    ; PRG $1A5FD
  $A5FF: c9 0f       cmp #$0f    ; PRG $1A5FF
  $A601: c8          iny    ; PRG $1A601
  $A602: b1 06       lda ($06),y    ; PRG $1A602
  $A604: e9 00       sbc #$00    ; PRG $1A604
  $A606: 70 04       bvs $a60c    ; PRG $1A606
  $A608: 30 07       bmi $a611    ; PRG $1A608
  $A60A: 10 02       bpl $a60e    ; PRG $1A60A
  $A60C: 10 03       bpl $a611    ; PRG $1A60C
  $A60E: 4c 6f 86    jmp $866f    ; PRG $1A60E
  $A611: a0 f3       ldy #$f3    ; PRG $1A611
  $A613: b1 06       lda ($06),y    ; PRG $1A613
  $A615: 10 03       bpl $a61a    ; PRG $1A615
  $A617: 4c 6f 86    jmp $866f    ; PRG $1A617
  $A61A: 88          dey    ; PRG $1A61A
  $A61B: b1 06       lda ($06),y    ; PRG $1A61B
  $A61D: c9 09       cmp #$09    ; PRG $1A61D
  $A61F: c8          iny    ; PRG $1A61F
  $A620: b1 06       lda ($06),y    ; PRG $1A620
  $A622: e9 00       sbc #$00    ; PRG $1A622
  $A624: 70 04       bvs $a62a    ; PRG $1A624
  $A626: 30 07       bmi $a62f    ; PRG $1A626
  $A628: 10 02       bpl $a62c    ; PRG $1A628
  $A62A: 10 03       bpl $a62f    ; PRG $1A62A
  $A62C: 4c 6f 86    jmp $866f    ; PRG $1A62C
  $A62F: a9 0f       lda #$0f    ; PRG $1A62F
  $A631: 85 18       sta $18    ; PRG $1A631
  $A633: 86 19       stx $19    ; PRG $1A633
  $A635: 88          dey    ; PRG $1A635
  $A636: b1 06       lda ($06),y    ; PRG $1A636
  $A638: 85 14       sta $14    ; PRG $1A638
  $A63A: c8          iny    ; PRG $1A63A
  $A63B: b1 06       lda ($06),y    ; PRG $1A63B
  $A63D: 85 15       sta $15    ; PRG $1A63D
  $A63F: a0 14       ldy #$14    ; PRG $1A63F
  $A641: a2 18       ldx #$18    ; PRG $1A641
  $A643: a9 10       lda #$10    ; PRG $1A643
  $A645: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1A645
  $A648: 18          clc    ; PRG $1A648
  $A649: a5 10       lda $10    ; PRG $1A649
  $A64B: a0 f4       ldy #$f4    ; PRG $1A64B
  $A64D: 71 06       adc ($06),y    ; PRG $1A64D
  $A64F: 85 18       sta $18    ; PRG $1A64F
  $A651: a5 11       lda $11    ; PRG $1A651
  $A653: c8          iny    ; PRG $1A653
  $A654: 71 06       adc ($06),y    ; PRG $1A654
  $A656: 85 19       sta $19    ; PRG $1A656
  $A658: 18          clc    ; PRG $1A658
  $A659: a5 18       lda $18    ; PRG $1A659
  $A65B: 69 90       adc #$90    ; PRG $1A65B
  $A65D: 85 14       sta $14    ; PRG $1A65D
  $A65F: a5 19       lda $19    ; PRG $1A65F
  $A661: 69 73       adc #$73    ; PRG $1A661
  $A663: 85 15       sta $15    ; PRG $1A663
  $A665: 18          clc    ; PRG $1A665
  $A666: a9 01       lda #$01    ; PRG $1A666
  $A668: 61 14       adc ($14,x)    ; PRG $1A668
  $A66A: 81 14       sta ($14,x)    ; PRG $1A66A
  $A66C: 8a          txa    ; PRG $1A66C
  $A66D: 69 00       adc #$00    ; PRG $1A66D
  $A66F: 4c 0b 85    jmp $850b    ; PRG $1A66F

; ---- sub_13_0672  [recovered]  <- (uncalled?)
  $A672: 4c e3 83    jmp $83e3   ; event_guild_hook    ; PRG $1A672

; ---- sub_13_0675  [recovered]  <- (uncalled?)
  $A675: a9 9e       lda #$9e    ; PRG $1A675
  $A677: a0 fe       ldy #$fe    ; PRG $1A677
  $A679: 91 06       sta ($06),y    ; PRG $1A679
  $A67B: a9 74       lda #$74    ; PRG $1A67B
  $A67D: c8          iny    ; PRG $1A67D
  $A67E: 91 06       sta ($06),y    ; PRG $1A67E
  $A680: 18          clc    ; PRG $1A680
  $A681: a9 9e       lda #$9e    ; PRG $1A681
  $A683: 6d a8 74    adc $74a8    ; PRG $1A683
  $A686: a0 fc       ldy #$fc    ; PRG $1A686
  $A688: 91 06       sta ($06),y    ; PRG $1A688
  $A68A: a9 74       lda #$74    ; PRG $1A68A
  $A68C: 6d a9 74    adc $74a9    ; PRG $1A68C
  $A68F: c8          iny    ; PRG $1A68F
  $A690: 91 06       sta ($06),y    ; PRG $1A690
  $A692: 4c a4 86    jmp $86a4    ; PRG $1A692

; ---- sub_13_0695  [recovered]  <- (uncalled?)
  $A695: 18          clc    ; PRG $1A695
  $A696: a9 01       lda #$01    ; PRG $1A696
  $A698: a0 fe       ldy #$fe    ; PRG $1A698
  $A69A: 71 06       adc ($06),y    ; PRG $1A69A
  $A69C: 91 06       sta ($06),y    ; PRG $1A69C
  $A69E: 8a          txa    ; PRG $1A69E
  $A69F: c8          iny    ; PRG $1A69F
  $A6A0: 71 06       adc ($06),y    ; PRG $1A6A0
  $A6A2: 91 06       sta ($06),y    ; PRG $1A6A2
  $A6A4: a0 fe       ldy #$fe    ; PRG $1A6A4
  $A6A6: b1 06       lda ($06),y    ; PRG $1A6A6
  $A6A8: a0 fc       ldy #$fc    ; PRG $1A6A8
  $A6AA: d1 06       cmp ($06),y    ; PRG $1A6AA
  $A6AC: a0 ff       ldy #$ff    ; PRG $1A6AC
  $A6AE: b1 06       lda ($06),y    ; PRG $1A6AE
  $A6B0: a0 fd       ldy #$fd    ; PRG $1A6B0
  $A6B2: f1 06       sbc ($06),y    ; PRG $1A6B2
  $A6B4: 90 03       bcc $a6b9    ; PRG $1A6B4
  $A6B6: 4c 90 87    jmp $8790   ; draw_captain_line    ; PRG $1A6B6
  $A6B9: a9 07       lda #$07    ; PRG $1A6B9
  $A6BB: 85 18       sta $18    ; PRG $1A6BB
  $A6BD: 86 19       stx $19    ; PRG $1A6BD
  $A6BF: c8          iny    ; PRG $1A6BF
  $A6C0: b1 06       lda ($06),y    ; PRG $1A6C0
  $A6C2: 85 14       sta $14    ; PRG $1A6C2
  $A6C4: c8          iny    ; PRG $1A6C4
  $A6C5: b1 06       lda ($06),y    ; PRG $1A6C5
  $A6C7: 85 15       sta $15    ; PRG $1A6C7
  $A6C9: a1 14       lda ($14,x)    ; PRG $1A6C9
  $A6CB: 85 10       sta $10    ; PRG $1A6CB
  $A6CD: 86 11       stx $11    ; PRG $1A6CD
  $A6CF: a0 10       ldy #$10    ; PRG $1A6CF
  $A6D1: a2 18       ldx #$18    ; PRG $1A6D1
  $A6D3: a9 14       lda #$14    ; PRG $1A6D3
  $A6D5: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1A6D5
  $A6D8: 18          clc    ; PRG $1A6D8
  $A6D9: a5 14       lda $14    ; PRG $1A6D9
  $A6DB: 69 90       adc #$90    ; PRG $1A6DB
  $A6DD: 85 18       sta $18    ; PRG $1A6DD
  $A6DF: a5 15       lda $15    ; PRG $1A6DF
  $A6E1: 69 6c       adc #$6c    ; PRG $1A6E1
  $A6E3: 85 19       sta $19    ; PRG $1A6E3
  $A6E5: a1 18       lda ($18,x)    ; PRG $1A6E5
  $A6E7: d0 03       bne $a6ec    ; PRG $1A6E7
  $A6E9: 4c 8d 87    jmp $878d    ; PRG $1A6E9
  $A6EC: a9 05       lda #$05    ; PRG $1A6EC
  $A6EE: 85 18       sta $18    ; PRG $1A6EE
  $A6F0: 86 19       stx $19    ; PRG $1A6F0
  $A6F2: a0 fe       ldy #$fe    ; PRG $1A6F2
  $A6F4: b1 06       lda ($06),y    ; PRG $1A6F4
  $A6F6: 85 14       sta $14    ; PRG $1A6F6
  $A6F8: c8          iny    ; PRG $1A6F8
  $A6F9: b1 06       lda ($06),y    ; PRG $1A6F9
  $A6FB: 85 15       sta $15    ; PRG $1A6FB
  $A6FD: a1 14       lda ($14,x)    ; PRG $1A6FD
  $A6FF: 85 10       sta $10    ; PRG $1A6FF
  $A701: 86 11       stx $11    ; PRG $1A701
  $A703: a0 10       ldy #$10    ; PRG $1A703
  $A705: a2 18       ldx #$18    ; PRG $1A705
  $A707: a9 14       lda #$14    ; PRG $1A707
  $A709: 20 eb e1    jsr $e1eb   ; alu_udiv16    ; PRG $1A709
  $A70C: 18          clc    ; PRG $1A70C
  $A70D: a5 14       lda $14    ; PRG $1A70D
  $A70F: 69 b1       adc #$b1    ; PRG $1A70F
  $A711: 85 18       sta $18    ; PRG $1A711
  $A713: a5 15       lda $15    ; PRG $1A713
  $A715: 69 74       adc #$74    ; PRG $1A715
  $A717: 85 19       sta $19    ; PRG $1A717
  $A719: a1 18       lda ($18,x)    ; PRG $1A719
  $A71B: 85 14       sta $14    ; PRG $1A71B
  $A71D: 86 15       stx $15    ; PRG $1A71D
  $A71F: a5 14       lda $14    ; PRG $1A71F
  $A721: a0 fa       ldy #$fa    ; PRG $1A721
  $A723: 91 06       sta ($06),y    ; PRG $1A723
  $A725: a5 15       lda $15    ; PRG $1A725
  $A727: c8          iny    ; PRG $1A727
  $A728: 91 06       sta ($06),y    ; PRG $1A728
  $A72A: a9 0f       lda #$0f    ; PRG $1A72A
  $A72C: 85 18       sta $18    ; PRG $1A72C
  $A72E: 86 19       stx $19    ; PRG $1A72E
  $A730: 88          dey    ; PRG $1A730
  $A731: b1 06       lda ($06),y    ; PRG $1A731
  $A733: 85 14       sta $14    ; PRG $1A733
  $A735: c8          iny    ; PRG $1A735
  $A736: b1 06       lda ($06),y    ; PRG $1A736
  $A738: 85 15       sta $15    ; PRG $1A738
  $A73A: a0 14       ldy #$14    ; PRG $1A73A
  $A73C: a2 18       ldx #$18    ; PRG $1A73C
  $A73E: a9 10       lda #$10    ; PRG $1A73E
  $A740: 20 eb e1    jsr $e1eb   ; alu_udiv16    ; PRG $1A740
  $A743: a9 0f       lda #$0f    ; PRG $1A743
  $A745: 85 18       sta $18    ; PRG $1A745
  $A747: 86 19       stx $19    ; PRG $1A747
  $A749: 85 14       sta $14    ; PRG $1A749
  $A74B: 86 15       stx $15    ; PRG $1A74B
  $A74D: a0 fa       ldy #$fa    ; PRG $1A74D
  $A74F: b1 06       lda ($06),y    ; PRG $1A74F
  $A751: 85 0c       sta $0c    ; PRG $1A751
  $A753: c8          iny    ; PRG $1A753
  $A754: b1 06       lda ($06),y    ; PRG $1A754
  $A756: 85 0d       sta $0d    ; PRG $1A756
  $A758: a0 0c       ldy #$0c    ; PRG $1A758
  $A75A: a2 14       ldx #$14    ; PRG $1A75A
  $A75C: a9 08       lda #$08    ; PRG $1A75C
  $A75E: 20 d9 e1    jsr $e1d9   ; alu_div_push_remainder    ; PRG $1A75E
  $A761: a0 08       ldy #$08    ; PRG $1A761
  $A763: a2 18       ldx #$18    ; PRG $1A763
  $A765: a9 14       lda #$14    ; PRG $1A765
  $A767: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1A767
  $A76A: 18          clc    ; PRG $1A76A
  $A76B: a5 14       lda $14    ; PRG $1A76B
  $A76D: 65 10       adc $10    ; PRG $1A76D
  $A76F: 85 18       sta $18    ; PRG $1A76F
  $A771: a5 15       lda $15    ; PRG $1A771
  $A773: 65 11       adc $11    ; PRG $1A773
  $A775: 85 19       sta $19    ; PRG $1A775
  $A777: 18          clc    ; PRG $1A777
  $A778: a5 18       lda $18    ; PRG $1A778
  $A77A: 69 90       adc #$90    ; PRG $1A77A
  $A77C: 85 14       sta $14    ; PRG $1A77C
  $A77E: a5 19       lda $19    ; PRG $1A77E
  $A780: 69 73       adc #$73    ; PRG $1A780
  $A782: 85 15       sta $15    ; PRG $1A782
  $A784: 18          clc    ; PRG $1A784
  $A785: 98          tya    ; PRG $1A785
  $A786: 61 14       adc ($14,x)    ; PRG $1A786
  $A788: 81 14       sta ($14,x)    ; PRG $1A788
  $A78A: 8a          txa    ; PRG $1A78A
  $A78B: 69 00       adc #$00    ; PRG $1A78B
  $A78D: 4c 95 86    jmp $8695    ; PRG $1A78D

; ---- sub_13_0797  [stub]  <- (entry: bytecode/OS via $E299)
nat_13_0791: jsr $E299                    ; 13:A791  native-call prologue
            .db $00 $ec $ff            ; inline: argcount $00, frame $ffec
  $A797: 48          pha    ; PRG $1A797
  $A798: a9 80       lda #$80    ; PRG $1A798
  $A79A: 48          pha    ; PRG $1A79A
  $A79B: 8a          txa    ; PRG $1A79B
  $A79C: 48          pha    ; PRG $1A79C
  $A79D: a9 87       lda #$87    ; PRG $1A79D
  $A79F: 48          pha    ; PRG $1A79F
  $A7A0: a9 73       lda #$73    ; PRG $1A7A0
  $A7A2: 48          pha    ; PRG $1A7A2
  $A7A3: a9 90       lda #$90    ; PRG $1A7A3
  $A7A5: 48          pha    ; PRG $1A7A5
  $A7A6: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1A7A6
  $A7A9: 3a f3 08    .db $3a $f3 $08  -> vm $F33A argc 8    ; PRG $1A7A9
  $A7AC: a0 10       ldy #$10    ; PRG $1A7AC
  $A7AE: b1 04       lda ($04),y    ; PRG $1A7AE
  $A7B0: 48          pha    ; PRG $1A7B0
  $A7B1: 88          dey    ; PRG $1A7B1
  $A7B2: b1 04       lda ($04),y    ; PRG $1A7B2
  $A7B4: 48          pha    ; PRG $1A7B4
  $A7B5: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1A7B5
  $A7B8: ae 83 04    .db $ae $83 $04  -> vm $83AE argc 4    ; PRG $1A7B8
  $A7BB: a9 0f       lda #$0f    ; PRG $1A7BB
  $A7BD: 85 18       sta $18    ; PRG $1A7BD
  $A7BF: 86 19       stx $19    ; PRG $1A7BF
  $A7C1: ad c2 74    lda $74c2    ; PRG $1A7C1
  $A7C4: 85 14       sta $14    ; PRG $1A7C4
  $A7C6: ad c3 74    lda $74c3    ; PRG $1A7C6
  $A7C9: 85 15       sta $15    ; PRG $1A7C9
  $A7CB: a0 14       ldy #$14    ; PRG $1A7CB
  $A7CD: a2 18       ldx #$18    ; PRG $1A7CD
  $A7CF: a9 10       lda #$10    ; PRG $1A7CF
  $A7D1: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1A7D1
  $A7D4: 18          clc    ; PRG $1A7D4
  $A7D5: a5 10       lda $10    ; PRG $1A7D5
  $A7D7: 6d c0 74    adc $74c0    ; PRG $1A7D7
  $A7DA: 85 18       sta $18    ; PRG $1A7DA
  $A7DC: a5 11       lda $11    ; PRG $1A7DC
  $A7DE: 6d c1 74    adc $74c1    ; PRG $1A7DE
  $A7E1: 85 19       sta $19    ; PRG $1A7E1
  $A7E3: 18          clc    ; PRG $1A7E3
  $A7E4: a5 18       lda $18    ; PRG $1A7E4
  $A7E6: 69 90       adc #$90    ; PRG $1A7E6
  $A7E8: 85 14       sta $14    ; PRG $1A7E8
  $A7EA: a5 19       lda $19    ; PRG $1A7EA
  $A7EC: 69 73       adc #$73    ; PRG $1A7EC
  $A7EE: 85 15       sta $15    ; PRG $1A7EE
  $A7F0: a9 80       lda #$80    ; PRG $1A7F0
  $A7F2: 81 14       sta ($14,x)    ; PRG $1A7F2
  $A7F4: a9 6a       lda #$6a    ; PRG $1A7F4
  $A7F6: a0 fc       ldy #$fc    ; PRG $1A7F6
  $A7F8: 91 06       sta ($06),y    ; PRG $1A7F8
  $A7FA: a9 75       lda #$75    ; PRG $1A7FA
  $A7FC: c8          iny    ; PRG $1A7FC
  $A7FD: 91 06       sta ($06),y    ; PRG $1A7FD
  $A7FF: a9 6b       lda #$6b    ; PRG $1A7FF
  $A801: a0 fa       ldy #$fa    ; PRG $1A801
  $A803: 91 06       sta ($06),y    ; PRG $1A803
  $A805: a9 75       lda #$75    ; PRG $1A805
  $A807: c8          iny    ; PRG $1A807
  $A808: 91 06       sta ($06),y    ; PRG $1A808
  $A80A: a9 0f       lda #$0f    ; PRG $1A80A
  $A80C: 85 18       sta $18    ; PRG $1A80C
  $A80E: 86 19       stx $19    ; PRG $1A80E
  $A810: a0 0d       ldy #$0d    ; PRG $1A810
  $A812: b1 04       lda ($04),y    ; PRG $1A812
  $A814: 85 14       sta $14    ; PRG $1A814
  $A816: c8          iny    ; PRG $1A816
  $A817: b1 04       lda ($04),y    ; PRG $1A817
  $A819: 85 15       sta $15    ; PRG $1A819
  $A81B: a0 14       ldy #$14    ; PRG $1A81B
  $A81D: a2 18       ldx #$18    ; PRG $1A81D
  $A81F: a9 10       lda #$10    ; PRG $1A81F
  $A821: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1A821
  $A824: 18          clc    ; PRG $1A824
  $A825: a5 10       lda $10    ; PRG $1A825
  $A827: a0 0b       ldy #$0b    ; PRG $1A827
  $A829: 71 04       adc ($04),y    ; PRG $1A829
  $A82B: 85 18       sta $18    ; PRG $1A82B
  $A82D: a5 11       lda $11    ; PRG $1A82D
  $A82F: c8          iny    ; PRG $1A82F
  $A830: 71 04       adc ($04),y    ; PRG $1A830
  $A832: 85 19       sta $19    ; PRG $1A832
  $A834: 18          clc    ; PRG $1A834
  $A835: a5 18       lda $18    ; PRG $1A835
  $A837: 69 90       adc #$90    ; PRG $1A837
  $A839: 85 14       sta $14    ; PRG $1A839
  $A83B: a5 19       lda $19    ; PRG $1A83B
  $A83D: 69 73       adc #$73    ; PRG $1A83D
  $A83F: 85 15       sta $15    ; PRG $1A83F
  $A841: 8a          txa    ; PRG $1A841
  $A842: 81 14       sta ($14,x)    ; PRG $1A842
  $A844: 48          pha    ; PRG $1A844
  $A845: a9 01       lda #$01    ; PRG $1A845
  $A847: 48          pha    ; PRG $1A847
  $A848: a0 0e       ldy #$0e    ; PRG $1A848
  $A84A: b1 04       lda ($04),y    ; PRG $1A84A
  $A84C: 48          pha    ; PRG $1A84C
  $A84D: 88          dey    ; PRG $1A84D
  $A84E: b1 04       lda ($04),y    ; PRG $1A84E
  $A850: 48          pha    ; PRG $1A850
  $A851: 88          dey    ; PRG $1A851
  $A852: b1 04       lda ($04),y    ; PRG $1A852
  $A854: 48          pha    ; PRG $1A854
  $A855: 88          dey    ; PRG $1A855
  $A856: b1 04       lda ($04),y    ; PRG $1A856
  $A858: 48          pha    ; PRG $1A858
  $A859: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1A859
  $A85C: 54 81 08    .db $54 $81 $08  -> vm $8154 argc 8    ; PRG $1A85C
  $A85F: a0 fc       ldy #$fc    ; PRG $1A85F
  $A861: b1 06       lda ($06),y    ; PRG $1A861
  $A863: 85 18       sta $18    ; PRG $1A863
  $A865: c8          iny    ; PRG $1A865
  $A866: b1 06       lda ($06),y    ; PRG $1A866
  $A868: 85 19       sta $19    ; PRG $1A868
  $A86A: a9 0f       lda #$0f    ; PRG $1A86A
  $A86C: 85 14       sta $14    ; PRG $1A86C
  $A86E: 86 15       stx $15    ; PRG $1A86E
  $A870: ad f4 75    lda $75f4    ; PRG $1A870
  $A873: 85 10       sta $10    ; PRG $1A873
  $A875: ad f5 75    lda $75f5    ; PRG $1A875
  $A878: 85 11       sta $11    ; PRG $1A878
  $A87A: a0 10       ldy #$10    ; PRG $1A87A
  $A87C: a2 14       ldx #$14    ; PRG $1A87C
  $A87E: a9 0c       lda #$0c    ; PRG $1A87E
  $A880: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1A880
  $A883: 18          clc    ; PRG $1A883
  $A884: a5 0c       lda $0c    ; PRG $1A884
  $A886: 6d f2 75    adc $75f2    ; PRG $1A886
  $A889: 85 14       sta $14    ; PRG $1A889
  $A88B: a5 0d       lda $0d    ; PRG $1A88B
  $A88D: 6d f3 75    adc $75f3    ; PRG $1A88D
  $A890: 85 15       sta $15    ; PRG $1A890
  $A892: a5 14       lda $14    ; PRG $1A892
  $A894: 81 18       sta ($18,x)    ; PRG $1A894
  $A896: a0 fc       ldy #$fc    ; PRG $1A896
  $A898: b1 06       lda ($06),y    ; PRG $1A898
  $A89A: 85 18       sta $18    ; PRG $1A89A
  $A89C: c8          iny    ; PRG $1A89C
  $A89D: b1 06       lda ($06),y    ; PRG $1A89D
  $A89F: 85 19       sta $19    ; PRG $1A89F
  $A8A1: a1 18       lda ($18,x)    ; PRG $1A8A1
  $A8A3: 85 14       sta $14    ; PRG $1A8A3
  $A8A5: 86 15       stx $15    ; PRG $1A8A5
  $A8A7: 18          clc    ; PRG $1A8A7
  $A8A8: a5 14       lda $14    ; PRG $1A8A8
  $A8AA: 69 90       adc #$90    ; PRG $1A8AA
  $A8AC: 85 18       sta $18    ; PRG $1A8AC
  $A8AE: a5 15       lda $15    ; PRG $1A8AE
  $A8B0: 69 73       adc #$73    ; PRG $1A8B0
  $A8B2: 85 19       sta $19    ; PRG $1A8B2
  $A8B4: a1 18       lda ($18,x)    ; PRG $1A8B4
  $A8B6: 85 14       sta $14    ; PRG $1A8B6
  $A8B8: 86 15       stx $15    ; PRG $1A8B8
  $A8BA: a9 80       lda #$80    ; PRG $1A8BA
  $A8BC: c5 14       cmp $14    ; PRG $1A8BC
  $A8BE: 8a          txa    ; PRG $1A8BE
  $A8BF: e5 15       sbc $15    ; PRG $1A8BF
  $A8C1: 90 03       bcc $a8c6    ; PRG $1A8C1
  $A8C3: 4c c7 88    jmp $88c7    ; PRG $1A8C3
  $A8C6: 60          rts    ; PRG $1A8C6

; ---- sub_13_08c7  [recovered]  <- (uncalled?)
  $A8C7: a0 fc       ldy #$fc    ; PRG $1A8C7
  $A8C9: b1 06       lda ($06),y    ; PRG $1A8C9
  $A8CB: 85 18       sta $18    ; PRG $1A8CB
  $A8CD: c8          iny    ; PRG $1A8CD
  $A8CE: b1 06       lda ($06),y    ; PRG $1A8CE
  $A8D0: 85 19       sta $19    ; PRG $1A8D0
  $A8D2: a1 18       lda ($18,x)    ; PRG $1A8D2
  $A8D4: 85 14       sta $14    ; PRG $1A8D4
  $A8D6: 86 15       stx $15    ; PRG $1A8D6
  $A8D8: 18          clc    ; PRG $1A8D8
  $A8D9: a5 14       lda $14    ; PRG $1A8D9
  $A8DB: 69 90       adc #$90    ; PRG $1A8DB
  $A8DD: 85 18       sta $18    ; PRG $1A8DD
  $A8DF: a5 15       lda $15    ; PRG $1A8DF
  $A8E1: 69 73       adc #$73    ; PRG $1A8E1
  $A8E3: 85 19       sta $19    ; PRG $1A8E3
  $A8E5: a9 01       lda #$01    ; PRG $1A8E5
  $A8E7: 81 18       sta ($18,x)    ; PRG $1A8E7
  $A8E9: a0 fc       ldy #$fc    ; PRG $1A8E9
  $A8EB: b1 06       lda ($06),y    ; PRG $1A8EB
  $A8ED: a0 fa       ldy #$fa    ; PRG $1A8ED
  $A8EF: d1 06       cmp ($06),y    ; PRG $1A8EF
  $A8F1: d0 08       bne $a8fb    ; PRG $1A8F1
  $A8F3: a0 fd       ldy #$fd    ; PRG $1A8F3
  $A8F5: b1 06       lda ($06),y    ; PRG $1A8F5
  $A8F7: a0 fb       ldy #$fb    ; PRG $1A8F7
  $A8F9: d1 06       cmp ($06),y    ; PRG $1A8F9
  $A8FB: d0 03       bne $a900    ; PRG $1A8FB
  $A8FD: 4c 83 8b    jmp $8b83    ; PRG $1A8FD
  $A900: a9 0f       lda #$0f    ; PRG $1A900
  $A902: 85 18       sta $18    ; PRG $1A902
  $A904: 86 19       stx $19    ; PRG $1A904
  $A906: a0 fc       ldy #$fc    ; PRG $1A906
  $A908: b1 06       lda ($06),y    ; PRG $1A908
  $A90A: 85 14       sta $14    ; PRG $1A90A
  $A90C: c8          iny    ; PRG $1A90C
  $A90D: b1 06       lda ($06),y    ; PRG $1A90D
  $A90F: 85 15       sta $15    ; PRG $1A90F
  $A911: a1 14       lda ($14,x)    ; PRG $1A911
  $A913: 85 10       sta $10    ; PRG $1A913
  $A915: 86 11       stx $11    ; PRG $1A915
  $A917: a0 10       ldy #$10    ; PRG $1A917
  $A919: a2 18       ldx #$18    ; PRG $1A919
  $A91B: a9 14       lda #$14    ; PRG $1A91B
  $A91D: 20 eb e1    jsr $e1eb   ; alu_udiv16    ; PRG $1A91D
  $A920: a5 14       lda $14    ; PRG $1A920
  $A922: a0 ee       ldy #$ee    ; PRG $1A922
  $A924: 91 06       sta ($06),y    ; PRG $1A924
  $A926: a5 15       lda $15    ; PRG $1A926
  $A928: c8          iny    ; PRG $1A928
  $A929: 91 06       sta ($06),y    ; PRG $1A929
  $A92B: a9 0f       lda #$0f    ; PRG $1A92B
  $A92D: 85 18       sta $18    ; PRG $1A92D
  $A92F: 86 19       stx $19    ; PRG $1A92F
  $A931: a0 fc       ldy #$fc    ; PRG $1A931
  $A933: b1 06       lda ($06),y    ; PRG $1A933
  $A935: 85 14       sta $14    ; PRG $1A935
  $A937: c8          iny    ; PRG $1A937
  $A938: b1 06       lda ($06),y    ; PRG $1A938
  $A93A: 85 15       sta $15    ; PRG $1A93A
  $A93C: a1 14       lda ($14,x)    ; PRG $1A93C
  $A93E: 85 10       sta $10    ; PRG $1A93E
  $A940: 86 11       stx $11    ; PRG $1A940
  $A942: a0 10       ldy #$10    ; PRG $1A942
  $A944: a2 18       ldx #$18    ; PRG $1A944
  $A946: a9 14       lda #$14    ; PRG $1A946
  $A948: 20 d9 e1    jsr $e1d9   ; alu_div_push_remainder    ; PRG $1A948
  $A94B: a5 14       lda $14    ; PRG $1A94B
  $A94D: a0 ec       ldy #$ec    ; PRG $1A94D
  $A94F: 91 06       sta ($06),y    ; PRG $1A94F
  $A951: a5 15       lda $15    ; PRG $1A951
  $A953: c8          iny    ; PRG $1A953
  $A954: 91 06       sta ($06),y    ; PRG $1A954
  $A956: a0 fc       ldy #$fc    ; PRG $1A956
  $A958: b1 06       lda ($06),y    ; PRG $1A958
  $A95A: 85 18       sta $18    ; PRG $1A95A
  $A95C: c8          iny    ; PRG $1A95C
  $A95D: b1 06       lda ($06),y    ; PRG $1A95D
  $A95F: 85 19       sta $19    ; PRG $1A95F
  $A961: a1 18       lda ($18,x)    ; PRG $1A961
  $A963: 85 14       sta $14    ; PRG $1A963
  $A965: 86 15       stx $15    ; PRG $1A965
  $A967: 18          clc    ; PRG $1A967
  $A968: a5 14       lda $14    ; PRG $1A968
  $A96A: 69 90       adc #$90    ; PRG $1A96A
  $A96C: 85 18       sta $18    ; PRG $1A96C
  $A96E: a5 15       lda $15    ; PRG $1A96E
  $A970: 69 73       adc #$73    ; PRG $1A970
  $A972: 85 19       sta $19    ; PRG $1A972
  $A974: a1 18       lda ($18,x)    ; PRG $1A974
  $A976: 85 14       sta $14    ; PRG $1A976
  $A978: 86 15       stx $15    ; PRG $1A978
  $A97A: a5 14       lda $14    ; PRG $1A97A
  $A97C: a0 f4       ldy #$f4    ; PRG $1A97C
  $A97E: 91 06       sta ($06),y    ; PRG $1A97E
  $A980: a5 15       lda $15    ; PRG $1A980
  $A982: c8          iny    ; PRG $1A982
  $A983: 91 06       sta ($06),y    ; PRG $1A983
  $A985: 8a          txa    ; PRG $1A985
  $A986: a0 f2       ldy #$f2    ; PRG $1A986
  $A988: 91 06       sta ($06),y    ; PRG $1A988
  $A98A: c8          iny    ; PRG $1A98A
  $A98B: 91 06       sta ($06),y    ; PRG $1A98B
  $A98D: 4c 9f 89    jmp $899f    ; PRG $1A98D

; ---- sub_13_0990  [recovered]  <- (uncalled?)
  $A990: 18          clc    ; PRG $1A990
  $A991: a9 01       lda #$01    ; PRG $1A991
  $A993: a0 f2       ldy #$f2    ; PRG $1A993
  $A995: 71 06       adc ($06),y    ; PRG $1A995
  $A997: 91 06       sta ($06),y    ; PRG $1A997
  $A999: 8a          txa    ; PRG $1A999
  $A99A: c8          iny    ; PRG $1A99A
  $A99B: 71 06       adc ($06),y    ; PRG $1A99B
  $A99D: 91 06       sta ($06),y    ; PRG $1A99D
  $A99F: a0 f2       ldy #$f2    ; PRG $1A99F
  $A9A1: b1 06       lda ($06),y    ; PRG $1A9A1
  $A9A3: c9 03       cmp #$03    ; PRG $1A9A3
  $A9A5: c8          iny    ; PRG $1A9A5
  $A9A6: b1 06       lda ($06),y    ; PRG $1A9A6
  $A9A8: e9 00       sbc #$00    ; PRG $1A9A8
  $A9AA: 90 03       bcc $a9af    ; PRG $1A9AA
  $A9AC: 4c 58 8b    jmp $8b58    ; PRG $1A9AC
  $A9AF: b1 06       lda ($06),y    ; PRG $1A9AF
  $A9B1: 48          pha    ; PRG $1A9B1
  $A9B2: 88          dey    ; PRG $1A9B2
  $A9B3: b1 06       lda ($06),y    ; PRG $1A9B3
  $A9B5: 48          pha    ; PRG $1A9B5
  $A9B6: a0 ed       ldy #$ed    ; PRG $1A9B6
  $A9B8: b1 06       lda ($06),y    ; PRG $1A9B8
  $A9BA: 48          pha    ; PRG $1A9BA
  $A9BB: 88          dey    ; PRG $1A9BB
  $A9BC: b1 06       lda ($06),y    ; PRG $1A9BC
  $A9BE: 48          pha    ; PRG $1A9BE
  $A9BF: a0 ef       ldy #$ef    ; PRG $1A9BF
  $A9C1: b1 06       lda ($06),y    ; PRG $1A9C1
  $A9C3: 48          pha    ; PRG $1A9C3
  $A9C4: 88          dey    ; PRG $1A9C4
  $A9C5: b1 06       lda ($06),y    ; PRG $1A9C5
  $A9C7: 48          pha    ; PRG $1A9C7
  $A9C8: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1A9C8
  $A9CB: 54 81 08    .db $54 $81 $08  -> vm $8154 argc 8    ; PRG $1A9CB
  $A9CE: a5 08       lda $08    ; PRG $1A9CE
  $A9D0: c9 ff       cmp #$ff    ; PRG $1A9D0
  $A9D2: d0 04       bne $a9d8    ; PRG $1A9D2
  $A9D4: a5 09       lda $09    ; PRG $1A9D4
  $A9D6: c9 00       cmp #$00    ; PRG $1A9D6
  $A9D8: d0 03       bne $a9dd    ; PRG $1A9D8
  $A9DA: 4c 55 8b    jmp $8b55    ; PRG $1A9DA
  $A9DD: a9 0f       lda #$0f    ; PRG $1A9DD
  $A9DF: 85 18       sta $18    ; PRG $1A9DF
  $A9E1: 86 19       stx $19    ; PRG $1A9E1
  $A9E3: ad f4 75    lda $75f4    ; PRG $1A9E3
  $A9E6: 85 14       sta $14    ; PRG $1A9E6
  $A9E8: ad f5 75    lda $75f5    ; PRG $1A9E8
  $A9EB: 85 15       sta $15    ; PRG $1A9EB
  $A9ED: a0 14       ldy #$14    ; PRG $1A9ED
  $A9EF: a2 18       ldx #$18    ; PRG $1A9EF
  $A9F1: a9 10       lda #$10    ; PRG $1A9F1
  $A9F3: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1A9F3
  $A9F6: 18          clc    ; PRG $1A9F6
  $A9F7: a5 10       lda $10    ; PRG $1A9F7
  $A9F9: 6d f2 75    adc $75f2    ; PRG $1A9F9
  $A9FC: a0 f0       ldy #$f0    ; PRG $1A9FC
  $A9FE: 91 06       sta ($06),y    ; PRG $1A9FE
  $AA00: a5 11       lda $11    ; PRG $1AA00
  $AA02: 6d f3 75    adc $75f3    ; PRG $1AA02
  $AA05: c8          iny    ; PRG $1AA05
  $AA06: 91 06       sta ($06),y    ; PRG $1AA06
  $AA08: 18          clc    ; PRG $1AA08
  $AA09: 88          dey    ; PRG $1AA09
  $AA0A: b1 06       lda ($06),y    ; PRG $1AA0A
  $AA0C: 69 90       adc #$90    ; PRG $1AA0C
  $AA0E: a0 fe       ldy #$fe    ; PRG $1AA0E
  $AA10: 91 06       sta ($06),y    ; PRG $1AA10
  $AA12: a0 f1       ldy #$f1    ; PRG $1AA12
  $AA14: b1 06       lda ($06),y    ; PRG $1AA14
  $AA16: 69 73       adc #$73    ; PRG $1AA16
  $AA18: a0 ff       ldy #$ff    ; PRG $1AA18
  $AA1A: 91 06       sta ($06),y    ; PRG $1AA1A
  $AA1C: 88          dey    ; PRG $1AA1C
  $AA1D: b1 06       lda ($06),y    ; PRG $1AA1D
  $AA1F: 85 18       sta $18    ; PRG $1AA1F
  $AA21: c8          iny    ; PRG $1AA21
  $AA22: b1 06       lda ($06),y    ; PRG $1AA22
  $AA24: 85 19       sta $19    ; PRG $1AA24
  $AA26: a1 18       lda ($18,x)    ; PRG $1AA26
  $AA28: 85 14       sta $14    ; PRG $1AA28
  $AA2A: 86 15       stx $15    ; PRG $1AA2A
  $AA2C: a5 14       lda $14    ; PRG $1AA2C
  $AA2E: c9 80       cmp #$80    ; PRG $1AA2E
  $AA30: d0 04       bne $aa36    ; PRG $1AA30
  $AA32: a5 15       lda $15    ; PRG $1AA32
  $AA34: c9 00       cmp #$00    ; PRG $1AA34
  $AA36: f0 03       beq $aa3b    ; PRG $1AA36
  $AA38: 4c 55 8b    jmp $8b55    ; PRG $1AA38
  $AA3B: a0 fe       ldy #$fe    ; PRG $1AA3B
  $AA3D: b1 06       lda ($06),y    ; PRG $1AA3D
  $AA3F: 85 18       sta $18    ; PRG $1AA3F
  $AA41: c8          iny    ; PRG $1AA41
  $AA42: b1 06       lda ($06),y    ; PRG $1AA42
  $AA44: 85 19       sta $19    ; PRG $1AA44
  $AA46: a0 f4       ldy #$f4    ; PRG $1AA46
  $AA48: b1 06       lda ($06),y    ; PRG $1AA48
  $AA4A: 85 14       sta $14    ; PRG $1AA4A
  $AA4C: 86 15       stx $15    ; PRG $1AA4C
  $AA4E: 18          clc    ; PRG $1AA4E
  $AA4F: a9 01       lda #$01    ; PRG $1AA4F
  $AA51: 65 14       adc $14    ; PRG $1AA51
  $AA53: 85 10       sta $10    ; PRG $1AA53
  $AA55: 8a          txa    ; PRG $1AA55
  $AA56: 65 15       adc $15    ; PRG $1AA56
  $AA58: 85 11       sta $11    ; PRG $1AA58
  $AA5A: a5 10       lda $10    ; PRG $1AA5A
  $AA5C: 81 18       sta ($18,x)    ; PRG $1AA5C
  $AA5E: a0 fa       ldy #$fa    ; PRG $1AA5E
  $AA60: b1 06       lda ($06),y    ; PRG $1AA60
  $AA62: a0 f6       ldy #$f6    ; PRG $1AA62
  $AA64: 91 06       sta ($06),y    ; PRG $1AA64
  $AA66: a0 fb       ldy #$fb    ; PRG $1AA66
  $AA68: b1 06       lda ($06),y    ; PRG $1AA68
  $AA6A: a0 f7       ldy #$f7    ; PRG $1AA6A
  $AA6C: 91 06       sta ($06),y    ; PRG $1AA6C
  $AA6E: 18          clc    ; PRG $1AA6E
  $AA6F: a9 ff       lda #$ff    ; PRG $1AA6F
  $AA71: a0 fa       ldy #$fa    ; PRG $1AA71
  $AA73: 71 06       adc ($06),y    ; PRG $1AA73
  $AA75: a0 f8       ldy #$f8    ; PRG $1AA75
  $AA77: 91 06       sta ($06),y    ; PRG $1AA77
  $AA79: a9 ff       lda #$ff    ; PRG $1AA79
  $AA7B: a0 fb       ldy #$fb    ; PRG $1AA7B
  $AA7D: 71 06       adc ($06),y    ; PRG $1AA7D
  $AA7F: a0 f9       ldy #$f9    ; PRG $1AA7F
  $AA81: 91 06       sta ($06),y    ; PRG $1AA81
  $AA83: a0 f8       ldy #$f8    ; PRG $1AA83
  $AA85: b1 06       lda ($06),y    ; PRG $1AA85
  $AA87: c9 6a       cmp #$6a    ; PRG $1AA87
  $AA89: c8          iny    ; PRG $1AA89
  $AA8A: b1 06       lda ($06),y    ; PRG $1AA8A
  $AA8C: e9 75       sbc #$75    ; PRG $1AA8C
  $AA8E: 90 03       bcc $aa93    ; PRG $1AA8E
  $AA90: 4c 9d 8a    jmp $8a9d    ; PRG $1AA90
  $AA93: a9 f0       lda #$f0    ; PRG $1AA93
  $AA95: 88          dey    ; PRG $1AA95
  $AA96: 91 06       sta ($06),y    ; PRG $1AA96
  $AA98: a9 75       lda #$75    ; PRG $1AA98
  $AA9A: c8          iny    ; PRG $1AA9A
  $AA9B: 91 06       sta ($06),y    ; PRG $1AA9B
  $AA9D: a0 f6       ldy #$f6    ; PRG $1AA9D
  $AA9F: b1 06       lda ($06),y    ; PRG $1AA9F
  $AAA1: 85 18       sta $18    ; PRG $1AAA1
  $AAA3: c8          iny    ; PRG $1AAA3
  $AAA4: b1 06       lda ($06),y    ; PRG $1AAA4
  $AAA6: 85 19       sta $19    ; PRG $1AAA6
  $AAA8: c8          iny    ; PRG $1AAA8
  $AAA9: b1 06       lda ($06),y    ; PRG $1AAA9
  $AAAB: 85 14       sta $14    ; PRG $1AAAB
  $AAAD: c8          iny    ; PRG $1AAAD
  $AAAE: b1 06       lda ($06),y    ; PRG $1AAAE
  $AAB0: 85 15       sta $15    ; PRG $1AAB0
  $AAB2: a1 14       lda ($14,x)    ; PRG $1AAB2
  $AAB4: 81 18       sta ($18,x)    ; PRG $1AAB4
  $AAB6: 88          dey    ; PRG $1AAB6
  $AAB7: b1 06       lda ($06),y    ; PRG $1AAB7
  $AAB9: 85 18       sta $18    ; PRG $1AAB9
  $AABB: c8          iny    ; PRG $1AABB
  $AABC: b1 06       lda ($06),y    ; PRG $1AABC
  $AABE: 85 19       sta $19    ; PRG $1AABE
  $AAC0: a1 18       lda ($18,x)    ; PRG $1AAC0
  $AAC2: 85 14       sta $14    ; PRG $1AAC2
  $AAC4: 86 15       stx $15    ; PRG $1AAC4
  $AAC6: 18          clc    ; PRG $1AAC6
  $AAC7: a5 14       lda $14    ; PRG $1AAC7
  $AAC9: 69 90       adc #$90    ; PRG $1AAC9
  $AACB: 85 18       sta $18    ; PRG $1AACB
  $AACD: a5 15       lda $15    ; PRG $1AACD
  $AACF: 69 73       adc #$73    ; PRG $1AACF
  $AAD1: 85 19       sta $19    ; PRG $1AAD1
  $AAD3: a1 18       lda ($18,x)    ; PRG $1AAD3
  $AAD5: 85 14       sta $14    ; PRG $1AAD5
  $AAD7: 86 15       stx $15    ; PRG $1AAD7
  $AAD9: a0 fe       ldy #$fe    ; PRG $1AAD9
  $AADB: b1 06       lda ($06),y    ; PRG $1AADB
  $AADD: 85 18       sta $18    ; PRG $1AADD
  $AADF: c8          iny    ; PRG $1AADF
  $AAE0: b1 06       lda ($06),y    ; PRG $1AAE0
  $AAE2: 85 19       sta $19    ; PRG $1AAE2
  $AAE4: a1 18       lda ($18,x)    ; PRG $1AAE4
  $AAE6: 85 10       sta $10    ; PRG $1AAE6
  $AAE8: 86 11       stx $11    ; PRG $1AAE8
  $AAEA: a5 10       lda $10    ; PRG $1AAEA
  $AAEC: c5 14       cmp $14    ; PRG $1AAEC
  $AAEE: a5 11       lda $11    ; PRG $1AAEE
  $AAF0: e5 15       sbc $15    ; PRG $1AAF0
  $AAF2: b0 03       bcs $aaf7    ; PRG $1AAF2
  $AAF4: 4c 0b 8b    jmp $8b0b    ; PRG $1AAF4
  $AAF7: a0 f6       ldy #$f6    ; PRG $1AAF7
  $AAF9: b1 06       lda ($06),y    ; PRG $1AAF9
  $AAFB: 85 18       sta $18    ; PRG $1AAFB
  $AAFD: c8          iny    ; PRG $1AAFD
  $AAFE: b1 06       lda ($06),y    ; PRG $1AAFE
  $AB00: 85 19       sta $19    ; PRG $1AB00
  $AB02: a0 f0       ldy #$f0    ; PRG $1AB02
  $AB04: b1 06       lda ($06),y    ; PRG $1AB04
  $AB06: 81 18       sta ($18,x)    ; PRG $1AB06
  $AB08: 4c 2d 8b    jmp $8b2d    ; PRG $1AB08

; ---- sub_13_0b0b  [recovered]  <- (uncalled?)
  $AB0B: a0 f8       ldy #$f8    ; PRG $1AB0B
  $AB0D: b1 06       lda ($06),y    ; PRG $1AB0D
  $AB0F: a0 f6       ldy #$f6    ; PRG $1AB0F
  $AB11: 91 06       sta ($06),y    ; PRG $1AB11
  $AB13: a0 f9       ldy #$f9    ; PRG $1AB13
  $AB15: b1 06       lda ($06),y    ; PRG $1AB15
  $AB17: a0 f7       ldy #$f7    ; PRG $1AB17
  $AB19: 91 06       sta ($06),y    ; PRG $1AB19
  $AB1B: 18          clc    ; PRG $1AB1B
  $AB1C: a9 ff       lda #$ff    ; PRG $1AB1C
  $AB1E: c8          iny    ; PRG $1AB1E
  $AB1F: 71 06       adc ($06),y    ; PRG $1AB1F
  $AB21: 91 06       sta ($06),y    ; PRG $1AB21
  $AB23: a9 ff       lda #$ff    ; PRG $1AB23
  $AB25: c8          iny    ; PRG $1AB25
  $AB26: 71 06       adc ($06),y    ; PRG $1AB26
  $AB28: 91 06       sta ($06),y    ; PRG $1AB28
  $AB2A: 4c 83 8a    jmp $8a83   ; search_water    ; PRG $1AB2A

; ---- sub_13_0b2d  [recovered]  <- (uncalled?)
  $AB2D: 18          clc    ; PRG $1AB2D
  $AB2E: a9 01       lda #$01    ; PRG $1AB2E
  $AB30: a0 fa       ldy #$fa    ; PRG $1AB30
  $AB32: 71 06       adc ($06),y    ; PRG $1AB32
  $AB34: 91 06       sta ($06),y    ; PRG $1AB34
  $AB36: 8a          txa    ; PRG $1AB36
  $AB37: c8          iny    ; PRG $1AB37
  $AB38: 71 06       adc ($06),y    ; PRG $1AB38
  $AB3A: 91 06       sta ($06),y    ; PRG $1AB3A
  $AB3C: 88          dey    ; PRG $1AB3C
  $AB3D: b1 06       lda ($06),y    ; PRG $1AB3D
  $AB3F: c9 f1       cmp #$f1    ; PRG $1AB3F
  $AB41: c8          iny    ; PRG $1AB41
  $AB42: b1 06       lda ($06),y    ; PRG $1AB42
  $AB44: e9 75       sbc #$75    ; PRG $1AB44
  $AB46: b0 03       bcs $ab4b    ; PRG $1AB46
  $AB48: 4c 55 8b    jmp $8b55    ; PRG $1AB48
  $AB4B: a9 6a       lda #$6a    ; PRG $1AB4B
  $AB4D: 88          dey    ; PRG $1AB4D
  $AB4E: 91 06       sta ($06),y    ; PRG $1AB4E
  $AB50: a9 75       lda #$75    ; PRG $1AB50
  $AB52: c8          iny    ; PRG $1AB52
  $AB53: 91 06       sta ($06),y    ; PRG $1AB53
  $AB55: 4c 90 89    jmp $8990    ; PRG $1AB55

; ---- sub_13_0b58  [recovered]  <- (uncalled?)
  $AB58: 18          clc    ; PRG $1AB58
  $AB59: a9 01       lda #$01    ; PRG $1AB59
  $AB5B: a0 fc       ldy #$fc    ; PRG $1AB5B
  $AB5D: 71 06       adc ($06),y    ; PRG $1AB5D
  $AB5F: 91 06       sta ($06),y    ; PRG $1AB5F
  $AB61: 8a          txa    ; PRG $1AB61
  $AB62: c8          iny    ; PRG $1AB62
  $AB63: 71 06       adc ($06),y    ; PRG $1AB63
  $AB65: 91 06       sta ($06),y    ; PRG $1AB65
  $AB67: 88          dey    ; PRG $1AB67
  $AB68: b1 06       lda ($06),y    ; PRG $1AB68
  $AB6A: c9 f1       cmp #$f1    ; PRG $1AB6A
  $AB6C: c8          iny    ; PRG $1AB6C
  $AB6D: b1 06       lda ($06),y    ; PRG $1AB6D
  $AB6F: e9 75       sbc #$75    ; PRG $1AB6F
  $AB71: b0 03       bcs $ab76    ; PRG $1AB71
  $AB73: 4c 80 8b    jmp $8b80    ; PRG $1AB73
  $AB76: a9 6a       lda #$6a    ; PRG $1AB76
  $AB78: 88          dey    ; PRG $1AB78
  $AB79: 91 06       sta ($06),y    ; PRG $1AB79
  $AB7B: a9 75       lda #$75    ; PRG $1AB7B
  $AB7D: c8          iny    ; PRG $1AB7D
  $AB7E: 91 06       sta ($06),y    ; PRG $1AB7E
  $AB80: 4c e9 88    jmp $88e9    ; PRG $1AB80

; ---- sub_13_0b8a  [stub]  <- (entry: bytecode/OS via $E299)
nat_13_0b84: jsr $E299                    ; 13:AB84  native-call prologue
            .db $00 $f8 $ff            ; inline: argcount $00, frame $fff8
  $AB8A: a9 02       lda #$02    ; PRG $1AB8A
  $AB8C: 85 18       sta $18    ; PRG $1AB8C
  $AB8E: 86 19       stx $19    ; PRG $1AB8E
  $AB90: a0 0b       ldy #$0b    ; PRG $1AB90
  $AB92: b1 04       lda ($04),y    ; PRG $1AB92
  $AB94: 85 14       sta $14    ; PRG $1AB94
  $AB96: c8          iny    ; PRG $1AB96
  $AB97: b1 04       lda ($04),y    ; PRG $1AB97
  $AB99: 85 15       sta $15    ; PRG $1AB99
  $AB9B: a0 14       ldy #$14    ; PRG $1AB9B
  $AB9D: a2 18       ldx #$18    ; PRG $1AB9D
  $AB9F: a9 10       lda #$10    ; PRG $1AB9F
  $ABA1: 20 fd e1    jsr $e1fd   ; div16_unsigned    ; PRG $1ABA1
  $ABA4: a5 10       lda $10    ; PRG $1ABA4
  $ABA6: 05 11       ora $11    ; PRG $1ABA6
  $ABA8: d0 03       bne $abad    ; PRG $1ABA8
  $ABAA: 4c ba 8b    jmp $8bba    ; PRG $1ABAA
  $ABAD: a9 02       lda #$02    ; PRG $1ABAD
  $ABAF: a0 fc       ldy #$fc    ; PRG $1ABAF
  $ABB1: 91 06       sta ($06),y    ; PRG $1ABB1
  $ABB3: 8a          txa    ; PRG $1ABB3
  $ABB4: c8          iny    ; PRG $1ABB4
  $ABB5: 91 06       sta ($06),y    ; PRG $1ABB5
  $ABB7: 4c c4 8b    jmp $8bc4    ; PRG $1ABB7

; ---- sub_13_0bba  [recovered]  <- (uncalled?)
  $ABBA: a9 01       lda #$01    ; PRG $1ABBA
  $ABBC: a0 fc       ldy #$fc    ; PRG $1ABBC
  $ABBE: 91 06       sta ($06),y    ; PRG $1ABBE
  $ABC0: 8a          txa    ; PRG $1ABC0
  $ABC1: c8          iny    ; PRG $1ABC1
  $ABC2: 91 06       sta ($06),y    ; PRG $1ABC2
  $ABC4: 8a          txa    ; PRG $1ABC4
  $ABC5: a0 fe       ldy #$fe    ; PRG $1ABC5
  $ABC7: 91 06       sta ($06),y    ; PRG $1ABC7
  $ABC9: c8          iny    ; PRG $1ABC9
  $ABCA: 91 06       sta ($06),y    ; PRG $1ABCA
  $ABCC: 4c de 8b    jmp $8bde    ; PRG $1ABCC

; ---- sub_13_0bcf  [recovered]  <- (uncalled?)
  $ABCF: 18          clc    ; PRG $1ABCF
  $ABD0: a9 01       lda #$01    ; PRG $1ABD0
  $ABD2: a0 fe       ldy #$fe    ; PRG $1ABD2
  $ABD4: 71 06       adc ($06),y    ; PRG $1ABD4
  $ABD6: 91 06       sta ($06),y    ; PRG $1ABD6
  $ABD8: 8a          txa    ; PRG $1ABD8
  $ABD9: c8          iny    ; PRG $1ABD9
  $ABDA: 71 06       adc ($06),y    ; PRG $1ABDA
  $ABDC: 91 06       sta ($06),y    ; PRG $1ABDC
  $ABDE: a0 fe       ldy #$fe    ; PRG $1ABDE
  $ABE0: b1 06       lda ($06),y    ; PRG $1ABE0
  $ABE2: c9 06       cmp #$06    ; PRG $1ABE2
  $ABE4: c8          iny    ; PRG $1ABE4
  $ABE5: b1 06       lda ($06),y    ; PRG $1ABE5
  $ABE7: e9 00       sbc #$00    ; PRG $1ABE7
  $ABE9: 90 03       bcc $abee    ; PRG $1ABE9
  $ABEB: 4c 1f 8d    jmp $8d1f    ; PRG $1ABEB
  $ABEE: a9 06       lda #$06    ; PRG $1ABEE
  $ABF0: 85 18       sta $18    ; PRG $1ABF0
  $ABF2: 86 19       stx $19    ; PRG $1ABF2
  $ABF4: 88          dey    ; PRG $1ABF4
  $ABF5: b1 06       lda ($06),y    ; PRG $1ABF5
  $ABF7: 85 14       sta $14    ; PRG $1ABF7
  $ABF9: c8          iny    ; PRG $1ABF9
  $ABFA: b1 06       lda ($06),y    ; PRG $1ABFA
  $ABFC: 85 15       sta $15    ; PRG $1ABFC
  $ABFE: a0 14       ldy #$14    ; PRG $1ABFE
  $AC00: a2 18       ldx #$18    ; PRG $1AC00
  $AC02: a9 10       lda #$10    ; PRG $1AC02
  $AC04: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1AC04
  $AC07: 18          clc    ; PRG $1AC07
  $AC08: a5 10       lda $10    ; PRG $1AC08
  $AC0A: 69 bc       adc #$bc    ; PRG $1AC0A
  $AC0C: 85 18       sta $18    ; PRG $1AC0C
  $AC0E: a5 11       lda $11    ; PRG $1AC0E
  $AC10: 69 94       adc #$94    ; PRG $1AC10
  $AC12: 85 19       sta $19    ; PRG $1AC12
  $AC14: 18          clc    ; PRG $1AC14
  $AC15: a1 18       lda ($18,x)    ; PRG $1AC15
  $AC17: a0 0b       ldy #$0b    ; PRG $1AC17
  $AC19: 71 04       adc ($04),y    ; PRG $1AC19
  $AC1B: a0 fa       ldy #$fa    ; PRG $1AC1B
  $AC1D: 91 06       sta ($06),y    ; PRG $1AC1D
  $AC1F: a0 01       ldy #$01    ; PRG $1AC1F
  $AC21: b1 18       lda ($18),y    ; PRG $1AC21
  $AC23: a0 0c       ldy #$0c    ; PRG $1AC23
  $AC25: 71 04       adc ($04),y    ; PRG $1AC25
  $AC27: a0 fb       ldy #$fb    ; PRG $1AC27
  $AC29: 91 06       sta ($06),y    ; PRG $1AC29
  $AC2B: a9 01       lda #$01    ; PRG $1AC2B
  $AC2D: 85 18       sta $18    ; PRG $1AC2D
  $AC2F: 86 19       stx $19    ; PRG $1AC2F
  $AC31: c8          iny    ; PRG $1AC31
  $AC32: b1 06       lda ($06),y    ; PRG $1AC32
  $AC34: 85 14       sta $14    ; PRG $1AC34
  $AC36: c8          iny    ; PRG $1AC36
  $AC37: b1 06       lda ($06),y    ; PRG $1AC37
  $AC39: 85 15       sta $15    ; PRG $1AC39
  $AC3B: a0 14       ldy #$14    ; PRG $1AC3B
  $AC3D: a2 18       ldx #$18    ; PRG $1AC3D
  $AC3F: a9 10       lda #$10    ; PRG $1AC3F
  $AC41: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $1AC41
  $AC44: a9 06       lda #$06    ; PRG $1AC44
  $AC46: 85 18       sta $18    ; PRG $1AC46
  $AC48: 86 19       stx $19    ; PRG $1AC48
  $AC4A: a0 fe       ldy #$fe    ; PRG $1AC4A
  $AC4C: b1 06       lda ($06),y    ; PRG $1AC4C
  $AC4E: 85 14       sta $14    ; PRG $1AC4E
  $AC50: c8          iny    ; PRG $1AC50
  $AC51: b1 06       lda ($06),y    ; PRG $1AC51
  $AC53: 85 15       sta $15    ; PRG $1AC53
  $AC55: a0 14       ldy #$14    ; PRG $1AC55
  $AC57: a2 18       ldx #$18    ; PRG $1AC57
  $AC59: a9 0c       lda #$0c    ; PRG $1AC59
  $AC5B: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1AC5B
  $AC5E: 18          clc    ; PRG $1AC5E
  $AC5F: a5 0c       lda $0c    ; PRG $1AC5F
  $AC61: 65 10       adc $10    ; PRG $1AC61
  $AC63: 85 18       sta $18    ; PRG $1AC63
  $AC65: a5 0d       lda $0d    ; PRG $1AC65
  $AC67: 65 11       adc $11    ; PRG $1AC67
  $AC69: 85 19       sta $19    ; PRG $1AC69
  $AC6B: 18          clc    ; PRG $1AC6B
  $AC6C: a5 18       lda $18    ; PRG $1AC6C
  $AC6E: 69 bc       adc #$bc    ; PRG $1AC6E
  $AC70: 85 14       sta $14    ; PRG $1AC70
  $AC72: a5 19       lda $19    ; PRG $1AC72
  $AC74: 69 94       adc #$94    ; PRG $1AC74
  $AC76: 85 15       sta $15    ; PRG $1AC76
  $AC78: 18          clc    ; PRG $1AC78
  $AC79: a1 14       lda ($14,x)    ; PRG $1AC79
  $AC7B: a0 0d       ldy #$0d    ; PRG $1AC7B
  $AC7D: 71 04       adc ($04),y    ; PRG $1AC7D
  $AC7F: a0 f8       ldy #$f8    ; PRG $1AC7F
  $AC81: 91 06       sta ($06),y    ; PRG $1AC81
  $AC83: a0 01       ldy #$01    ; PRG $1AC83
  $AC85: b1 14       lda ($14),y    ; PRG $1AC85
  $AC87: a0 0e       ldy #$0e    ; PRG $1AC87
  $AC89: 71 04       adc ($04),y    ; PRG $1AC89
  $AC8B: a0 f9       ldy #$f9    ; PRG $1AC8B
  $AC8D: 91 06       sta ($06),y    ; PRG $1AC8D
  $AC8F: a0 fb       ldy #$fb    ; PRG $1AC8F
  $AC91: b1 06       lda ($06),y    ; PRG $1AC91
  $AC93: 10 03       bpl $ac98    ; PRG $1AC93
  $AC95: 4c cb 8c    jmp $8ccb    ; PRG $1AC95
  $AC98: 88          dey    ; PRG $1AC98
  $AC99: b1 06       lda ($06),y    ; PRG $1AC99
  $AC9B: c9 0f       cmp #$0f    ; PRG $1AC9B
  $AC9D: c8          iny    ; PRG $1AC9D
  $AC9E: b1 06       lda ($06),y    ; PRG $1AC9E
  $ACA0: e9 00       sbc #$00    ; PRG $1ACA0
  $ACA2: 70 04       bvs $aca8    ; PRG $1ACA2
  $ACA4: 30 07       bmi $acad    ; PRG $1ACA4
  $ACA6: 10 02       bpl $acaa    ; PRG $1ACA6
  $ACA8: 10 03       bpl $acad    ; PRG $1ACA8
  $ACAA: 4c cb 8c    jmp $8ccb    ; PRG $1ACAA
  $ACAD: a0 f9       ldy #$f9    ; PRG $1ACAD
  $ACAF: b1 06       lda ($06),y    ; PRG $1ACAF
  $ACB1: 10 03       bpl $acb6    ; PRG $1ACB1
  $ACB3: 4c cb 8c    jmp $8ccb    ; PRG $1ACB3
  $ACB6: 88          dey    ; PRG $1ACB6
  $ACB7: b1 06       lda ($06),y    ; PRG $1ACB7
  $ACB9: c9 09       cmp #$09    ; PRG $1ACB9
  $ACBB: c8          iny    ; PRG $1ACBB
  $ACBC: b1 06       lda ($06),y    ; PRG $1ACBC
  $ACBE: e9 00       sbc #$00    ; PRG $1ACBE
  $ACC0: 70 04       bvs $acc6    ; PRG $1ACC0
  $ACC2: 30 04       bmi $acc8    ; PRG $1ACC2
  $ACC4: 10 05       bpl $accb    ; PRG $1ACC4
  $ACC6: 30 03       bmi $accb    ; PRG $1ACC6
  $ACC8: 4c df 8c    jmp $8cdf    ; PRG $1ACC8
  $ACCB: 8a          txa    ; PRG $1ACCB
  $ACCC: 48          pha    ; PRG $1ACCC
  $ACCD: a9 02       lda #$02    ; PRG $1ACCD
  $ACCF: 48          pha    ; PRG $1ACCF
  $ACD0: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1ACD0
  $ACD3: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $1ACD3
  $ACD6: a5 08       lda $08    ; PRG $1ACD6
  $ACD8: 05 09       ora $09    ; PRG $1ACD8
  $ACDA: f0 03       beq $acdf    ; PRG $1ACDA
  $ACDC: 4c 1c 8d    jmp $8d1c    ; PRG $1ACDC
  $ACDF: a9 0f       lda #$0f    ; PRG $1ACDF
  $ACE1: 85 18       sta $18    ; PRG $1ACE1
  $ACE3: 86 19       stx $19    ; PRG $1ACE3
  $ACE5: a0 0d       ldy #$0d    ; PRG $1ACE5
  $ACE7: b1 04       lda ($04),y    ; PRG $1ACE7
  $ACE9: 85 14       sta $14    ; PRG $1ACE9
  $ACEB: c8          iny    ; PRG $1ACEB
  $ACEC: b1 04       lda ($04),y    ; PRG $1ACEC
  $ACEE: 85 15       sta $15    ; PRG $1ACEE
  $ACF0: a0 14       ldy #$14    ; PRG $1ACF0
  $ACF2: a2 18       ldx #$18    ; PRG $1ACF2
  $ACF4: a9 10       lda #$10    ; PRG $1ACF4
  $ACF6: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1ACF6
  $ACF9: 18          clc    ; PRG $1ACF9
  $ACFA: a5 10       lda $10    ; PRG $1ACFA
  $ACFC: a0 0b       ldy #$0b    ; PRG $1ACFC
  $ACFE: 71 04       adc ($04),y    ; PRG $1ACFE
  $AD00: 85 18       sta $18    ; PRG $1AD00
  $AD02: a5 11       lda $11    ; PRG $1AD02
  $AD04: c8          iny    ; PRG $1AD04
  $AD05: 71 04       adc ($04),y    ; PRG $1AD05
  $AD07: 85 19       sta $19    ; PRG $1AD07
  $AD09: 18          clc    ; PRG $1AD09
  $AD0A: a5 18       lda $18    ; PRG $1AD0A
  $AD0C: 69 e1       adc #$e1    ; PRG $1AD0C
  $AD0E: 85 14       sta $14    ; PRG $1AD0E
  $AD10: a5 19       lda $19    ; PRG $1AD10
  $AD12: 69 74       adc #$74    ; PRG $1AD12
  $AD14: 85 15       sta $15    ; PRG $1AD14
  $AD16: a0 fe       ldy #$fe    ; PRG $1AD16
  $AD18: b1 06       lda ($06),y    ; PRG $1AD18
  $AD1A: 81 14       sta ($14,x)    ; PRG $1AD1A
  $AD1C: 4c cf 8b    jmp $8bcf    ; PRG $1AD1C

; ---- sub_13_0d26  [stub]  <- (entry: bytecode/OS via $E299)
nat_13_0d20: jsr $E299                    ; 13:AD20  native-call prologue
            .db $00 $ec $ff            ; inline: argcount $00, frame $ffec
  $AD26: 8a          txa    ; PRG $1AD26
  $AD27: 48          pha    ; PRG $1AD27
  $AD28: a9 80       lda #$80    ; PRG $1AD28
  $AD2A: 48          pha    ; PRG $1AD2A
  $AD2B: 8a          txa    ; PRG $1AD2B
  $AD2C: 48          pha    ; PRG $1AD2C
  $AD2D: a9 87       lda #$87    ; PRG $1AD2D
  $AD2F: 48          pha    ; PRG $1AD2F
  $AD30: a9 74       lda #$74    ; PRG $1AD30
  $AD32: 48          pha    ; PRG $1AD32
  $AD33: a9 e1       lda #$e1    ; PRG $1AD33
  $AD35: 48          pha    ; PRG $1AD35
  $AD36: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1AD36
  $AD39: 3a f3 08    .db $3a $f3 $08  -> vm $F33A argc 8    ; PRG $1AD39
  $AD3C: 48          pha    ; PRG $1AD3C
  $AD3D: a9 80       lda #$80    ; PRG $1AD3D
  $AD3F: 48          pha    ; PRG $1AD3F
  $AD40: 8a          txa    ; PRG $1AD40
  $AD41: 48          pha    ; PRG $1AD41
  $AD42: a9 87       lda #$87    ; PRG $1AD42
  $AD44: 48          pha    ; PRG $1AD44
  $AD45: a9 73       lda #$73    ; PRG $1AD45
  $AD47: 48          pha    ; PRG $1AD47
  $AD48: a9 90       lda #$90    ; PRG $1AD48
  $AD4A: 48          pha    ; PRG $1AD4A
  $AD4B: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1AD4B
  $AD4E: 3a f3 08    .db $3a $f3 $08  -> vm $F33A argc 8    ; PRG $1AD4E
  $AD51: 8e 68 75    stx $7568    ; PRG $1AD51
  $AD54: 8e 69 75    stx $7569    ; PRG $1AD54
  $AD57: a0 0e       ldy #$0e    ; PRG $1AD57
  $AD59: b1 04       lda ($04),y    ; PRG $1AD59
  $AD5B: 48          pha    ; PRG $1AD5B
  $AD5C: 88          dey    ; PRG $1AD5C
  $AD5D: b1 04       lda ($04),y    ; PRG $1AD5D
  $AD5F: 48          pha    ; PRG $1AD5F
  $AD60: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1AD60
  $AD63: ae 83 04    .db $ae $83 $04  -> vm $83AE argc 4    ; PRG $1AD63
  $AD66: 8c 68 75    sty $7568    ; PRG $1AD66
  $AD69: 8e 69 75    stx $7569    ; PRG $1AD69
  $AD6C: a9 07       lda #$07    ; PRG $1AD6C
  $AD6E: 85 18       sta $18    ; PRG $1AD6E
  $AD70: 86 19       stx $19    ; PRG $1AD70
  $AD72: a0 0d       ldy #$0d    ; PRG $1AD72
  $AD74: b1 04       lda ($04),y    ; PRG $1AD74
  $AD76: 85 14       sta $14    ; PRG $1AD76
  $AD78: c8          iny    ; PRG $1AD78
  $AD79: b1 04       lda ($04),y    ; PRG $1AD79
  $AD7B: 85 15       sta $15    ; PRG $1AD7B
  $AD7D: a0 14       ldy #$14    ; PRG $1AD7D
  $AD7F: a2 18       ldx #$18    ; PRG $1AD7F
  $AD81: a9 10       lda #$10    ; PRG $1AD81
  $AD83: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1AD83
  $AD86: 18          clc    ; PRG $1AD86
  $AD87: a5 10       lda $10    ; PRG $1AD87
  $AD89: 69 90       adc #$90    ; PRG $1AD89
  $AD8B: a0 fa       ldy #$fa    ; PRG $1AD8B
  $AD8D: 91 06       sta ($06),y    ; PRG $1AD8D
  $AD8F: a5 11       lda $11    ; PRG $1AD8F
  $AD91: 69 6c       adc #$6c    ; PRG $1AD91
  $AD93: c8          iny    ; PRG $1AD93
  $AD94: 91 06       sta ($06),y    ; PRG $1AD94
  $AD96: 88          dey    ; PRG $1AD96
  $AD97: b1 06       lda ($06),y    ; PRG $1AD97
  $AD99: 85 18       sta $18    ; PRG $1AD99
  $AD9B: c8          iny    ; PRG $1AD9B
  $AD9C: b1 06       lda ($06),y    ; PRG $1AD9C
  $AD9E: 85 19       sta $19    ; PRG $1AD9E
  $ADA0: a9 14       lda #$14    ; PRG $1ADA0
  $ADA2: a0 04       ldy #$04    ; PRG $1ADA2
  $ADA4: d1 18       cmp ($18),y    ; PRG $1ADA4
  $ADA6: 8a          txa    ; PRG $1ADA6
  $ADA7: c8          iny    ; PRG $1ADA7
  $ADA8: f1 18       sbc ($18),y    ; PRG $1ADA8
  $ADAA: 70 04       bvs $adb0    ; PRG $1ADAA
  $ADAC: 30 07       bmi $adb5    ; PRG $1ADAC
  $ADAE: 10 02       bpl $adb2    ; PRG $1ADAE
  $ADB0: 10 03       bpl $adb5    ; PRG $1ADB0
  $ADB2: 4c 4e 8e    jmp $8e4e    ; PRG $1ADB2
  $ADB5: a0 fa       ldy #$fa    ; PRG $1ADB5
  $ADB7: b1 06       lda ($06),y    ; PRG $1ADB7
  $ADB9: 85 18       sta $18    ; PRG $1ADB9
  $ADBB: c8          iny    ; PRG $1ADBB
  $ADBC: b1 06       lda ($06),y    ; PRG $1ADBC
  $ADBE: 85 19       sta $19    ; PRG $1ADBE
  $ADC0: a1 18       lda ($18,x)    ; PRG $1ADC0
  $ADC2: 85 14       sta $14    ; PRG $1ADC2
  $ADC4: 86 15       stx $15    ; PRG $1ADC4
  $ADC6: a9 14       lda #$14    ; PRG $1ADC6
  $ADC8: c5 14       cmp $14    ; PRG $1ADC8
  $ADCA: 8a          txa    ; PRG $1ADCA
  $ADCB: e5 15       sbc $15    ; PRG $1ADCB
  $ADCD: 70 04       bvs $add3    ; PRG $1ADCD
  $ADCF: 30 07       bmi $add8    ; PRG $1ADCF
  $ADD1: 10 02       bpl $add5    ; PRG $1ADD1
  $ADD3: 10 03       bpl $add8    ; PRG $1ADD3
  $ADD5: 4c 4e 8e    jmp $8e4e    ; PRG $1ADD5
  $ADD8: a9 07       lda #$07    ; PRG $1ADD8
  $ADDA: 85 18       sta $18    ; PRG $1ADDA
  $ADDC: 86 19       stx $19    ; PRG $1ADDC
  $ADDE: ad d4 74    lda $74d4    ; PRG $1ADDE
  $ADE1: 85 14       sta $14    ; PRG $1ADE1
  $ADE3: ad d5 74    lda $74d5    ; PRG $1ADE3
  $ADE6: 85 15       sta $15    ; PRG $1ADE6
  $ADE8: a0 14       ldy #$14    ; PRG $1ADE8
  $ADEA: a2 18       ldx #$18    ; PRG $1ADEA
  $ADEC: a9 10       lda #$10    ; PRG $1ADEC
  $ADEE: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1ADEE
  $ADF1: 18          clc    ; PRG $1ADF1
  $ADF2: a5 10       lda $10    ; PRG $1ADF2
  $ADF4: 69 94       adc #$94    ; PRG $1ADF4
  $ADF6: 85 18       sta $18    ; PRG $1ADF6
  $ADF8: a5 11       lda $11    ; PRG $1ADF8
  $ADFA: 69 6c       adc #$6c    ; PRG $1ADFA
  $ADFC: 85 19       sta $19    ; PRG $1ADFC
  $ADFE: a9 14       lda #$14    ; PRG $1ADFE
  $AE00: c1 18       cmp ($18,x)    ; PRG $1AE00
  $AE02: 8a          txa    ; PRG $1AE02
  $AE03: f1 18       sbc ($18),y    ; PRG $1AE03
  $AE05: 70 04       bvs $ae0b    ; PRG $1AE05
  $AE07: 30 07       bmi $ae10    ; PRG $1AE07
  $AE09: 10 02       bpl $ae0d    ; PRG $1AE09
  $AE0B: 10 03       bpl $ae10    ; PRG $1AE0B
  $AE0D: 4c 4e 8e    jmp $8e4e    ; PRG $1AE0D
  $AE10: a9 07       lda #$07    ; PRG $1AE10
  $AE12: 85 18       sta $18    ; PRG $1AE12
  $AE14: 86 19       stx $19    ; PRG $1AE14
  $AE16: ad d4 74    lda $74d4    ; PRG $1AE16
  $AE19: 85 14       sta $14    ; PRG $1AE19
  $AE1B: ad d5 74    lda $74d5    ; PRG $1AE1B
  $AE1E: 85 15       sta $15    ; PRG $1AE1E
  $AE20: a0 14       ldy #$14    ; PRG $1AE20
  $AE22: a2 18       ldx #$18    ; PRG $1AE22
  $AE24: a9 10       lda #$10    ; PRG $1AE24
  $AE26: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1AE26
  $AE29: 18          clc    ; PRG $1AE29
  $AE2A: a5 10       lda $10    ; PRG $1AE2A
  $AE2C: 69 90       adc #$90    ; PRG $1AE2C
  $AE2E: 85 18       sta $18    ; PRG $1AE2E
  $AE30: a5 11       lda $11    ; PRG $1AE30
  $AE32: 69 6c       adc #$6c    ; PRG $1AE32
  $AE34: 85 19       sta $19    ; PRG $1AE34
  $AE36: a1 18       lda ($18,x)    ; PRG $1AE36
  $AE38: 85 14       sta $14    ; PRG $1AE38
  $AE3A: 86 15       stx $15    ; PRG $1AE3A
  $AE3C: a9 14       lda #$14    ; PRG $1AE3C
  $AE3E: c5 14       cmp $14    ; PRG $1AE3E
  $AE40: 8a          txa    ; PRG $1AE40
  $AE41: e5 15       sbc $15    ; PRG $1AE41
  $AE43: 70 04       bvs $ae49    ; PRG $1AE43
  $AE45: 30 04       bmi $ae4b    ; PRG $1AE45
  $AE47: 10 05       bpl $ae4e    ; PRG $1AE47
  $AE49: 30 03       bmi $ae4e    ; PRG $1AE49
  $AE4B: 4c 81 8f    jmp $8f81    ; PRG $1AE4B
  $AE4E: a0 0d       ldy #$0d    ; PRG $1AE4E
  $AE50: b1 04       lda ($04),y    ; PRG $1AE50
  $AE52: cd d4 74    cmp $74d4    ; PRG $1AE52
  $AE55: d0 06       bne $ae5d    ; PRG $1AE55
  $AE57: c8          iny    ; PRG $1AE57
  $AE58: b1 04       lda ($04),y    ; PRG $1AE58
  $AE5A: cd d5 74    cmp $74d5    ; PRG $1AE5A
  $AE5D: d0 03       bne $ae62    ; PRG $1AE5D
  $AE5F: 4c ea 8e    jmp $8eea    ; PRG $1AE5F
  $AE62: a9 05       lda #$05    ; PRG $1AE62
  $AE64: 85 18       sta $18    ; PRG $1AE64
  $AE66: 86 19       stx $19    ; PRG $1AE66
  $AE68: ad d4 74    lda $74d4    ; PRG $1AE68
  $AE6B: 85 14       sta $14    ; PRG $1AE6B
  $AE6D: ad d5 74    lda $74d5    ; PRG $1AE6D
  $AE70: 85 15       sta $15    ; PRG $1AE70
  $AE72: a0 14       ldy #$14    ; PRG $1AE72
  $AE74: a2 18       ldx #$18    ; PRG $1AE74
  $AE76: a9 10       lda #$10    ; PRG $1AE76
  $AE78: 20 eb e1    jsr $e1eb   ; alu_udiv16    ; PRG $1AE78
  $AE7B: 18          clc    ; PRG $1AE7B
  $AE7C: a5 10       lda $10    ; PRG $1AE7C
  $AE7E: 69 b1       adc #$b1    ; PRG $1AE7E
  $AE80: 85 18       sta $18    ; PRG $1AE80
  $AE82: a5 11       lda $11    ; PRG $1AE82
  $AE84: 69 74       adc #$74    ; PRG $1AE84
  $AE86: 85 19       sta $19    ; PRG $1AE86
  $AE88: a1 18       lda ($18,x)    ; PRG $1AE88
  $AE8A: 85 14       sta $14    ; PRG $1AE8A
  $AE8C: 86 15       stx $15    ; PRG $1AE8C
  $AE8E: a5 14       lda $14    ; PRG $1AE8E
  $AE90: a0 f6       ldy #$f6    ; PRG $1AE90
  $AE92: 91 06       sta ($06),y    ; PRG $1AE92
  $AE94: a5 15       lda $15    ; PRG $1AE94
  $AE96: c8          iny    ; PRG $1AE96
  $AE97: 91 06       sta ($06),y    ; PRG $1AE97
  $AE99: a9 0f       lda #$0f    ; PRG $1AE99
  $AE9B: 85 18       sta $18    ; PRG $1AE9B
  $AE9D: 86 19       stx $19    ; PRG $1AE9D
  $AE9F: 88          dey    ; PRG $1AE9F
  $AEA0: b1 06       lda ($06),y    ; PRG $1AEA0
  $AEA2: 85 14       sta $14    ; PRG $1AEA2
  $AEA4: c8          iny    ; PRG $1AEA4
  $AEA5: b1 06       lda ($06),y    ; PRG $1AEA5
  $AEA7: 85 15       sta $15    ; PRG $1AEA7
  $AEA9: a0 14       ldy #$14    ; PRG $1AEA9
  $AEAB: a2 18       ldx #$18    ; PRG $1AEAB
  $AEAD: a9 10       lda #$10    ; PRG $1AEAD
  $AEAF: 20 b4 e1    jsr $e1b4   ; alu_abs16    ; PRG $1AEAF
  $AEB2: a5 11       lda $11    ; PRG $1AEB2
  $AEB4: 48          pha    ; PRG $1AEB4
  $AEB5: a5 10       lda $10    ; PRG $1AEB5
  $AEB7: 48          pha    ; PRG $1AEB7
  $AEB8: a9 0f       lda #$0f    ; PRG $1AEB8
  $AEBA: 85 18       sta $18    ; PRG $1AEBA
  $AEBC: 86 19       stx $19    ; PRG $1AEBC
  $AEBE: a0 f6       ldy #$f6    ; PRG $1AEBE
  $AEC0: b1 06       lda ($06),y    ; PRG $1AEC0
  $AEC2: 85 14       sta $14    ; PRG $1AEC2
  $AEC4: c8          iny    ; PRG $1AEC4
  $AEC5: b1 06       lda ($06),y    ; PRG $1AEC5
  $AEC7: 85 15       sta $15    ; PRG $1AEC7
  $AEC9: a0 14       ldy #$14    ; PRG $1AEC9
  $AECB: a2 18       ldx #$18    ; PRG $1AECB
  $AECD: a9 10       lda #$10    ; PRG $1AECD
  $AECF: 20 fd e1    jsr $e1fd   ; div16_unsigned    ; PRG $1AECF
  $AED2: a5 11       lda $11    ; PRG $1AED2
  $AED4: 48          pha    ; PRG $1AED4
  $AED5: a5 10       lda $10    ; PRG $1AED5
  $AED7: 48          pha    ; PRG $1AED7
  $AED8: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1AED8
  $AEDB: 84 8b 06    .db $84 $8b $06  -> vm $8B84 argc 6    ; PRG $1AEDB
  $AEDE: a0 f6       ldy #$f6    ; PRG $1AEDE
  $AEE0: b1 06       lda ($06),y    ; PRG $1AEE0
  $AEE2: 85 08       sta $08    ; PRG $1AEE2
  $AEE4: c8          iny    ; PRG $1AEE4
  $AEE5: b1 06       lda ($06),y    ; PRG $1AEE5
  $AEE7: 85 09       sta $09    ; PRG $1AEE7
  $AEE9: 60          rts    ; PRG $1AEE9

; ---- sub_13_0eea  [recovered]  <- (uncalled?)
  $AEEA: ad c0 74    lda $74c0    ; PRG $1AEEA
  $AEED: c9 07       cmp #$07    ; PRG $1AEED
  $AEEF: ad c1 74    lda $74c1    ; PRG $1AEEF
  $AEF2: e9 00       sbc #$00    ; PRG $1AEF2
  $AEF4: 70 04       bvs $aefa    ; PRG $1AEF4
  $AEF6: 30 07       bmi $aeff    ; PRG $1AEF6
  $AEF8: 10 02       bpl $aefc    ; PRG $1AEF8
  $AEFA: 10 03       bpl $aeff    ; PRG $1AEFA
  $AEFC: 4c 0a 8f    jmp $8f0a    ; PRG $1AEFC
  $AEFF: 8a          txa    ; PRG $1AEFF
  $AF00: a0 f2       ldy #$f2    ; PRG $1AF00
  $AF02: 91 06       sta ($06),y    ; PRG $1AF02
  $AF04: c8          iny    ; PRG $1AF04
  $AF05: 91 06       sta ($06),y    ; PRG $1AF05
  $AF07: 4c 14 8f    jmp $8f14   ; draw_tavern_box    ; PRG $1AF07

; ---- sub_13_0f0a  [recovered]  <- (uncalled?)
  $AF0A: a9 0e       lda #$0e    ; PRG $1AF0A
  $AF0C: a0 f2       ldy #$f2    ; PRG $1AF0C
  $AF0E: 91 06       sta ($06),y    ; PRG $1AF0E
  $AF10: 8a          txa    ; PRG $1AF10
  $AF11: c8          iny    ; PRG $1AF11
  $AF12: 91 06       sta ($06),y    ; PRG $1AF12
  $AF14: ad c2 74    lda $74c2    ; PRG $1AF14
  $AF17: c9 04       cmp #$04    ; PRG $1AF17
  $AF19: ad c3 74    lda $74c3    ; PRG $1AF19
  $AF1C: e9 00       sbc #$00    ; PRG $1AF1C
  $AF1E: 70 04       bvs $af24    ; PRG $1AF1E
  $AF20: 30 07       bmi $af29    ; PRG $1AF20
  $AF22: 10 02       bpl $af26    ; PRG $1AF22
  $AF24: 10 03       bpl $af29    ; PRG $1AF24
  $AF26: 4c 34 8f    jmp $8f34    ; PRG $1AF26
  $AF29: 8a          txa    ; PRG $1AF29
  $AF2A: a0 f0       ldy #$f0    ; PRG $1AF2A
  $AF2C: 91 06       sta ($06),y    ; PRG $1AF2C
  $AF2E: c8          iny    ; PRG $1AF2E
  $AF2F: 91 06       sta ($06),y    ; PRG $1AF2F
  $AF31: 4c 3e 8f    jmp $8f3e    ; PRG $1AF31

; ---- sub_13_0f34  [recovered]  <- (uncalled?)
  $AF34: a9 08       lda #$08    ; PRG $1AF34
  $AF36: a0 f0       ldy #$f0    ; PRG $1AF36
  $AF38: 91 06       sta ($06),y    ; PRG $1AF38
  $AF3A: 8a          txa    ; PRG $1AF3A
  $AF3B: c8          iny    ; PRG $1AF3B
  $AF3C: 91 06       sta ($06),y    ; PRG $1AF3C
  $AF3E: a0 f1       ldy #$f1    ; PRG $1AF3E
  $AF40: b1 06       lda ($06),y    ; PRG $1AF40
  $AF42: 48          pha    ; PRG $1AF42
  $AF43: 88          dey    ; PRG $1AF43
  $AF44: b1 06       lda ($06),y    ; PRG $1AF44
  $AF46: 48          pha    ; PRG $1AF46
  $AF47: a0 f3       ldy #$f3    ; PRG $1AF47
  $AF49: b1 06       lda ($06),y    ; PRG $1AF49
  $AF4B: 48          pha    ; PRG $1AF4B
  $AF4C: 88          dey    ; PRG $1AF4C
  $AF4D: b1 06       lda ($06),y    ; PRG $1AF4D
  $AF4F: 48          pha    ; PRG $1AF4F
  $AF50: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1AF50
  $AF53: 84 8b 06    .db $84 $8b $06  -> vm $8B84 argc 6    ; PRG $1AF53
  $AF56: a9 0f       lda #$0f    ; PRG $1AF56
  $AF58: 85 18       sta $18    ; PRG $1AF58
  $AF5A: 86 19       stx $19    ; PRG $1AF5A
  $AF5C: a0 f0       ldy #$f0    ; PRG $1AF5C
  $AF5E: b1 06       lda ($06),y    ; PRG $1AF5E
  $AF60: 85 14       sta $14    ; PRG $1AF60
  $AF62: c8          iny    ; PRG $1AF62
  $AF63: b1 06       lda ($06),y    ; PRG $1AF63
  $AF65: 85 15       sta $15    ; PRG $1AF65
  $AF67: a0 14       ldy #$14    ; PRG $1AF67
  $AF69: a2 18       ldx #$18    ; PRG $1AF69
  $AF6B: a9 10       lda #$10    ; PRG $1AF6B
  $AF6D: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1AF6D
  $AF70: 18          clc    ; PRG $1AF70
  $AF71: a5 10       lda $10    ; PRG $1AF71
  $AF73: a0 f2       ldy #$f2    ; PRG $1AF73
  $AF75: 71 06       adc ($06),y    ; PRG $1AF75
  $AF77: 85 08       sta $08    ; PRG $1AF77
  $AF79: a5 11       lda $11    ; PRG $1AF79
  $AF7B: c8          iny    ; PRG $1AF7B
  $AF7C: 71 06       adc ($06),y    ; PRG $1AF7C
  $AF7E: 85 09       sta $09    ; PRG $1AF7E
  $AF80: 60          rts    ; PRG $1AF80

; ---- sub_13_0f81  [recovered]  <- (uncalled?)
  $AF81: a9 0f       lda #$0f    ; PRG $1AF81
  $AF83: 85 18       sta $18    ; PRG $1AF83
  $AF85: 86 19       stx $19    ; PRG $1AF85
  $AF87: 18          clc    ; PRG $1AF87
  $AF88: a0 0b       ldy #$0b    ; PRG $1AF88
  $AF8A: b1 04       lda ($04),y    ; PRG $1AF8A
  $AF8C: 69 ac       adc #$ac    ; PRG $1AF8C
  $AF8E: 85 14       sta $14    ; PRG $1AF8E
  $AF90: c8          iny    ; PRG $1AF90
  $AF91: b1 04       lda ($04),y    ; PRG $1AF91
  $AF93: 69 74       adc #$74    ; PRG $1AF93
  $AF95: 85 15       sta $15    ; PRG $1AF95
  $AF97: a1 14       lda ($14,x)    ; PRG $1AF97
  $AF99: 85 10       sta $10    ; PRG $1AF99
  $AF9B: 86 11       stx $11    ; PRG $1AF9B
  $AF9D: a0 10       ldy #$10    ; PRG $1AF9D
  $AF9F: a2 18       ldx #$18    ; PRG $1AF9F
  $AFA1: a9 14       lda #$14    ; PRG $1AFA1
  $AFA3: 20 fd e1    jsr $e1fd   ; div16_unsigned    ; PRG $1AFA3
  $AFA6: a5 14       lda $14    ; PRG $1AFA6
  $AFA8: a0 f2       ldy #$f2    ; PRG $1AFA8
  $AFAA: 91 06       sta ($06),y    ; PRG $1AFAA
  $AFAC: a5 15       lda $15    ; PRG $1AFAC
  $AFAE: c8          iny    ; PRG $1AFAE
  $AFAF: 91 06       sta ($06),y    ; PRG $1AFAF
  $AFB1: a9 0f       lda #$0f    ; PRG $1AFB1
  $AFB3: 85 18       sta $18    ; PRG $1AFB3
  $AFB5: 86 19       stx $19    ; PRG $1AFB5
  $AFB7: 18          clc    ; PRG $1AFB7
  $AFB8: a0 0b       ldy #$0b    ; PRG $1AFB8
  $AFBA: b1 04       lda ($04),y    ; PRG $1AFBA
  $AFBC: 69 ac       adc #$ac    ; PRG $1AFBC
  $AFBE: 85 14       sta $14    ; PRG $1AFBE
  $AFC0: c8          iny    ; PRG $1AFC0
  $AFC1: b1 04       lda ($04),y    ; PRG $1AFC1
  $AFC3: 69 74       adc #$74    ; PRG $1AFC3
  $AFC5: 85 15       sta $15    ; PRG $1AFC5
  $AFC7: a1 14       lda ($14,x)    ; PRG $1AFC7
  $AFC9: 85 10       sta $10    ; PRG $1AFC9
  $AFCB: 86 11       stx $11    ; PRG $1AFCB
  $AFCD: a0 10       ldy #$10    ; PRG $1AFCD
  $AFCF: a2 18       ldx #$18    ; PRG $1AFCF
  $AFD1: a9 14       lda #$14    ; PRG $1AFD1
  $AFD3: 20 b4 e1    jsr $e1b4   ; alu_abs16    ; PRG $1AFD3
  $AFD6: a5 14       lda $14    ; PRG $1AFD6
  $AFD8: a0 f0       ldy #$f0    ; PRG $1AFD8
  $AFDA: 91 06       sta ($06),y    ; PRG $1AFDA
  $AFDC: a5 15       lda $15    ; PRG $1AFDC
  $AFDE: c8          iny    ; PRG $1AFDE
  $AFDF: 91 06       sta ($06),y    ; PRG $1AFDF
  $AFE1: a9 04       lda #$04    ; PRG $1AFE1
  $AFE3: 85 18       sta $18    ; PRG $1AFE3
  $AFE5: 86 19       stx $19    ; PRG $1AFE5
  $AFE7: a0 fa       ldy #$fa    ; PRG $1AFE7
  $AFE9: b1 06       lda ($06),y    ; PRG $1AFE9
  $AFEB: 85 14       sta $14    ; PRG $1AFEB
  $AFED: c8          iny    ; PRG $1AFED
  $AFEE: b1 06       lda ($06),y    ; PRG $1AFEE
  $AFF0: 85 15       sta $15    ; PRG $1AFF0
  $AFF2: a0 06       ldy #$06    ; PRG $1AFF2
  $AFF4: b1 14       lda ($14),y    ; PRG $1AFF4
  $AFF6: 85 10       sta $10    ; PRG $1AFF6
  $AFF8: 86 11       stx $11    ; PRG $1AFF8
  $AFFA: a0 10       ldy #$10    ; PRG $1AFFA
  $AFFC: a2 18       ldx #$18    ; PRG $1AFFC
  $AFFE: a9 14       lda #$14    ; PRG $1AFFE
  $B000: 20 15 e4    jsr $e415   ; alu_shr16_n    ; PRG $1B000
  $B003: a9 03       lda #$03    ; PRG $1B003
  $B005: 25 14       and $14    ; PRG $1B005
  $B007: a0 f8       ldy #$f8    ; PRG $1B007
  $B009: 91 06       sta ($06),y    ; PRG $1B009
  $B00B: 8a          txa    ; PRG $1B00B
  $B00C: c8          iny    ; PRG $1B00C
  $B00D: 91 06       sta ($06),y    ; PRG $1B00D
  $B00F: 48          pha    ; PRG $1B00F
  $B010: a9 0a       lda #$0a    ; PRG $1B010
  $B012: 48          pha    ; PRG $1B012
  $B013: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1B013
  $B016: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $1B016
  $B019: a5 08       lda $08    ; PRG $1B019
  $B01B: 05 09       ora $09    ; PRG $1B01B
  $B01D: d0 03       bne $b022    ; PRG $1B01D
  $B01F: 4c 3e 93    jmp $933e    ; PRG $1B01F
  $B022: a0 f8       ldy #$f8    ; PRG $1B022
  $B024: b1 06       lda ($06),y    ; PRG $1B024
  $B026: c8          iny    ; PRG $1B026
  $B027: 11 06       ora ($06),y    ; PRG $1B027
  $B029: d0 03       bne $b02e    ; PRG $1B029
  $B02B: 4c 3e 93    jmp $933e    ; PRG $1B02B
  $B02E: 88          dey    ; PRG $1B02E
  $B02F: b1 06       lda ($06),y    ; PRG $1B02F
  $B031: 29 01       and #$01    ; PRG $1B031
  $B033: d0 03       bne $b038    ; PRG $1B033
  $B035: 4c 43 90    jmp $9043    ; PRG $1B035
  $B038: a9 06       lda #$06    ; PRG $1B038
  $B03A: 91 06       sta ($06),y    ; PRG $1B03A
  $B03C: 8a          txa    ; PRG $1B03C
  $B03D: c8          iny    ; PRG $1B03D
  $B03E: 91 06       sta ($06),y    ; PRG $1B03E
  $B040: 4c 4d 90    jmp $904d    ; PRG $1B040

; ---- sub_13_1043  [recovered]  <- (uncalled?)
  $B043: a9 10       lda #$10    ; PRG $1B043
  $B045: a0 f8       ldy #$f8    ; PRG $1B045
  $B047: 91 06       sta ($06),y    ; PRG $1B047
  $B049: 8a          txa    ; PRG $1B049
  $B04A: c8          iny    ; PRG $1B04A
  $B04B: 91 06       sta ($06),y    ; PRG $1B04B
  $B04D: a9 03       lda #$03    ; PRG $1B04D
  $B04F: 85 18       sta $18    ; PRG $1B04F
  $B051: 86 19       stx $19    ; PRG $1B051
  $B053: 18          clc    ; PRG $1B053
  $B054: a0 0b       ldy #$0b    ; PRG $1B054
  $B056: b1 04       lda ($04),y    ; PRG $1B056
  $B058: 69 b6       adc #$b6    ; PRG $1B058
  $B05A: 85 14       sta $14    ; PRG $1B05A
  $B05C: c8          iny    ; PRG $1B05C
  $B05D: b1 04       lda ($04),y    ; PRG $1B05D
  $B05F: 69 74       adc #$74    ; PRG $1B05F
  $B061: 85 15       sta $15    ; PRG $1B061
  $B063: a1 14       lda ($14,x)    ; PRG $1B063
  $B065: 85 10       sta $10    ; PRG $1B065
  $B067: 86 11       stx $11    ; PRG $1B067
  $B069: a0 10       ldy #$10    ; PRG $1B069
  $B06B: a2 18       ldx #$18    ; PRG $1B06B
  $B06D: a9 14       lda #$14    ; PRG $1B06D
  $B06F: 20 eb e1    jsr $e1eb   ; alu_udiv16    ; PRG $1B06F
  $B072: a5 14       lda $14    ; PRG $1B072
  $B074: a0 f4       ldy #$f4    ; PRG $1B074
  $B076: 91 06       sta ($06),y    ; PRG $1B076
  $B078: a5 15       lda $15    ; PRG $1B078
  $B07A: c8          iny    ; PRG $1B07A
  $B07B: 91 06       sta ($06),y    ; PRG $1B07B
  $B07D: a9 04       lda #$04    ; PRG $1B07D
  $B07F: 85 18       sta $18    ; PRG $1B07F
  $B081: 86 19       stx $19    ; PRG $1B081
  $B083: 88          dey    ; PRG $1B083
  $B084: b1 06       lda ($06),y    ; PRG $1B084
  $B086: 85 14       sta $14    ; PRG $1B086
  $B088: c8          iny    ; PRG $1B088
  $B089: b1 06       lda ($06),y    ; PRG $1B089
  $B08B: 85 15       sta $15    ; PRG $1B08B
  $B08D: a0 14       ldy #$14    ; PRG $1B08D
  $B08F: a2 18       ldx #$18    ; PRG $1B08F
  $B091: a9 10       lda #$10    ; PRG $1B091
  $B093: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $1B093
  $B096: 18          clc    ; PRG $1B096
  $B097: a5 10       lda $10    ; PRG $1B097
  $B099: 69 94       adc #$94    ; PRG $1B099
  $B09B: a0 fe       ldy #$fe    ; PRG $1B09B
  $B09D: 91 06       sta ($06),y    ; PRG $1B09D
  $B09F: a5 11       lda $11    ; PRG $1B09F
  $B0A1: 69 95       adc #$95    ; PRG $1B0A1
  $B0A3: c8          iny    ; PRG $1B0A3
  $B0A4: 91 06       sta ($06),y    ; PRG $1B0A4
  $B0A6: 18          clc    ; PRG $1B0A6
  $B0A7: 88          dey    ; PRG $1B0A7
  $B0A8: b1 06       lda ($06),y    ; PRG $1B0A8
  $B0AA: a0 f8       ldy #$f8    ; PRG $1B0AA
  $B0AC: 71 06       adc ($06),y    ; PRG $1B0AC
  $B0AE: a0 fc       ldy #$fc    ; PRG $1B0AE
  $B0B0: 91 06       sta ($06),y    ; PRG $1B0B0
  $B0B2: a0 ff       ldy #$ff    ; PRG $1B0B2
  $B0B4: b1 06       lda ($06),y    ; PRG $1B0B4
  $B0B6: a0 f9       ldy #$f9    ; PRG $1B0B6
  $B0B8: 71 06       adc ($06),y    ; PRG $1B0B8
  $B0BA: a0 fd       ldy #$fd    ; PRG $1B0BA
  $B0BC: 91 06       sta ($06),y    ; PRG $1B0BC
  $B0BE: 4c d0 90    jmp $90d0    ; PRG $1B0BE

; ---- sub_13_10c1  [recovered]  <- (uncalled?)
  $B0C1: 18          clc    ; PRG $1B0C1
  $B0C2: a9 01       lda #$01    ; PRG $1B0C2
  $B0C4: a0 fe       ldy #$fe    ; PRG $1B0C4
  $B0C6: 71 06       adc ($06),y    ; PRG $1B0C6
  $B0C8: 91 06       sta ($06),y    ; PRG $1B0C8
  $B0CA: 8a          txa    ; PRG $1B0CA
  $B0CB: c8          iny    ; PRG $1B0CB
  $B0CC: 71 06       adc ($06),y    ; PRG $1B0CC
  $B0CE: 91 06       sta ($06),y    ; PRG $1B0CE
  $B0D0: a0 fe       ldy #$fe    ; PRG $1B0D0
  $B0D2: b1 06       lda ($06),y    ; PRG $1B0D2
  $B0D4: a0 fc       ldy #$fc    ; PRG $1B0D4
  $B0D6: d1 06       cmp ($06),y    ; PRG $1B0D6
  $B0D8: a0 ff       ldy #$ff    ; PRG $1B0D8
  $B0DA: b1 06       lda ($06),y    ; PRG $1B0DA
  $B0DC: a0 fd       ldy #$fd    ; PRG $1B0DC
  $B0DE: f1 06       sbc ($06),y    ; PRG $1B0DE
  $B0E0: 90 03       bcc $b0e5    ; PRG $1B0E0
  $B0E2: 4c 3e 93    jmp $933e    ; PRG $1B0E2
  $B0E5: a9 06       lda #$06    ; PRG $1B0E5
  $B0E7: 85 18       sta $18    ; PRG $1B0E7
  $B0E9: 86 19       stx $19    ; PRG $1B0E9
  $B0EB: c8          iny    ; PRG $1B0EB
  $B0EC: b1 06       lda ($06),y    ; PRG $1B0EC
  $B0EE: 85 14       sta $14    ; PRG $1B0EE
  $B0F0: c8          iny    ; PRG $1B0F0
  $B0F1: b1 06       lda ($06),y    ; PRG $1B0F1
  $B0F3: 85 15       sta $15    ; PRG $1B0F3
  $B0F5: a1 14       lda ($14,x)    ; PRG $1B0F5
  $B0F7: 85 10       sta $10    ; PRG $1B0F7
  $B0F9: 86 11       stx $11    ; PRG $1B0F9
  $B0FB: a0 10       ldy #$10    ; PRG $1B0FB
  $B0FD: a2 18       ldx #$18    ; PRG $1B0FD
  $B0FF: a9 14       lda #$14    ; PRG $1B0FF
  $B101: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1B101
  $B104: 18          clc    ; PRG $1B104
  $B105: a5 14       lda $14    ; PRG $1B105
  $B107: 69 e0       adc #$e0    ; PRG $1B107
  $B109: 85 18       sta $18    ; PRG $1B109
  $B10B: a5 15       lda $15    ; PRG $1B10B
  $B10D: 69 94       adc #$94    ; PRG $1B10D
  $B10F: 85 19       sta $19    ; PRG $1B10F
  $B111: 18          clc    ; PRG $1B111
  $B112: a1 18       lda ($18,x)    ; PRG $1B112
  $B114: a0 f2       ldy #$f2    ; PRG $1B114
  $B116: 71 06       adc ($06),y    ; PRG $1B116
  $B118: a0 ee       ldy #$ee    ; PRG $1B118
  $B11A: 91 06       sta ($06),y    ; PRG $1B11A
  $B11C: a0 01       ldy #$01    ; PRG $1B11C
  $B11E: b1 18       lda ($18),y    ; PRG $1B11E
  $B120: a0 f3       ldy #$f3    ; PRG $1B120
  $B122: 71 06       adc ($06),y    ; PRG $1B122
  $B124: a0 ef       ldy #$ef    ; PRG $1B124
  $B126: 91 06       sta ($06),y    ; PRG $1B126
  $B128: a9 01       lda #$01    ; PRG $1B128
  $B12A: 85 18       sta $18    ; PRG $1B12A
  $B12C: 86 19       stx $19    ; PRG $1B12C
  $B12E: a9 02       lda #$02    ; PRG $1B12E
  $B130: 85 14       sta $14    ; PRG $1B130
  $B132: 86 15       stx $15    ; PRG $1B132
  $B134: a0 f2       ldy #$f2    ; PRG $1B134
  $B136: b1 06       lda ($06),y    ; PRG $1B136
  $B138: 85 10       sta $10    ; PRG $1B138
  $B13A: c8          iny    ; PRG $1B13A
  $B13B: b1 06       lda ($06),y    ; PRG $1B13B
  $B13D: 85 11       sta $11    ; PRG $1B13D
  $B13F: a0 10       ldy #$10    ; PRG $1B13F
  $B141: a2 14       ldx #$14    ; PRG $1B141
  $B143: a9 0c       lda #$0c    ; PRG $1B143
  $B145: 20 fd e1    jsr $e1fd   ; div16_unsigned    ; PRG $1B145
  $B148: a5 0c       lda $0c    ; PRG $1B148
  $B14A: 05 0d       ora $0d    ; PRG $1B14A
  $B14C: d0 03       bne $b151    ; PRG $1B14C
  $B14E: 4c 5a 91    jmp $915a    ; PRG $1B14E
  $B151: a9 02       lda #$02    ; PRG $1B151
  $B153: 85 14       sta $14    ; PRG $1B153
  $B155: 86 15       stx $15    ; PRG $1B155
  $B157: 4c 60 91    jmp $9160    ; PRG $1B157

; ---- sub_13_115a  [recovered]  <- (uncalled?)
  $B15A: a9 01       lda #$01    ; PRG $1B15A
  $B15C: 85 14       sta $14    ; PRG $1B15C
  $B15E: 86 15       stx $15    ; PRG $1B15E
  $B160: a0 14       ldy #$14    ; PRG $1B160
  $B162: a2 18       ldx #$18    ; PRG $1B162
  $B164: a9 10       lda #$10    ; PRG $1B164
  $B166: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $1B166
  $B169: a9 06       lda #$06    ; PRG $1B169
  $B16B: 85 18       sta $18    ; PRG $1B16B
  $B16D: 86 19       stx $19    ; PRG $1B16D
  $B16F: a0 fe       ldy #$fe    ; PRG $1B16F
  $B171: b1 06       lda ($06),y    ; PRG $1B171
  $B173: 85 14       sta $14    ; PRG $1B173
  $B175: c8          iny    ; PRG $1B175
  $B176: b1 06       lda ($06),y    ; PRG $1B176
  $B178: 85 15       sta $15    ; PRG $1B178
  $B17A: a1 14       lda ($14,x)    ; PRG $1B17A
  $B17C: 85 0c       sta $0c    ; PRG $1B17C
  $B17E: 86 0d       stx $0d    ; PRG $1B17E
  $B180: a0 0c       ldy #$0c    ; PRG $1B180
  $B182: a2 18       ldx #$18    ; PRG $1B182
  $B184: a9 14       lda #$14    ; PRG $1B184
  $B186: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1B186
  $B189: 18          clc    ; PRG $1B189
  $B18A: a5 14       lda $14    ; PRG $1B18A
  $B18C: 65 10       adc $10    ; PRG $1B18C
  $B18E: 85 18       sta $18    ; PRG $1B18E
  $B190: a5 15       lda $15    ; PRG $1B190
  $B192: 65 11       adc $11    ; PRG $1B192
  $B194: 85 19       sta $19    ; PRG $1B194
  $B196: 18          clc    ; PRG $1B196
  $B197: a5 18       lda $18    ; PRG $1B197
  $B199: 69 e0       adc #$e0    ; PRG $1B199
  $B19B: 85 14       sta $14    ; PRG $1B19B
  $B19D: a5 19       lda $19    ; PRG $1B19D
  $B19F: 69 94       adc #$94    ; PRG $1B19F
  $B1A1: 85 15       sta $15    ; PRG $1B1A1
  $B1A3: 18          clc    ; PRG $1B1A3
  $B1A4: a1 14       lda ($14,x)    ; PRG $1B1A4
  $B1A6: a0 f0       ldy #$f0    ; PRG $1B1A6
  $B1A8: 71 06       adc ($06),y    ; PRG $1B1A8
  $B1AA: a0 ec       ldy #$ec    ; PRG $1B1AA
  $B1AC: 91 06       sta ($06),y    ; PRG $1B1AC
  $B1AE: a0 01       ldy #$01    ; PRG $1B1AE
  $B1B0: b1 14       lda ($14),y    ; PRG $1B1B0
  $B1B2: a0 f1       ldy #$f1    ; PRG $1B1B2
  $B1B4: 71 06       adc ($06),y    ; PRG $1B1B4
  $B1B6: a0 ed       ldy #$ed    ; PRG $1B1B6
  $B1B8: 91 06       sta ($06),y    ; PRG $1B1B8
  $B1BA: 8a          txa    ; PRG $1B1BA
  $B1BB: 48          pha    ; PRG $1B1BB
  $B1BC: a9 03       lda #$03    ; PRG $1B1BC
  $B1BE: 48          pha    ; PRG $1B1BE
  $B1BF: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1B1BF
  $B1C2: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $1B1C2
  $B1C5: a5 08       lda $08    ; PRG $1B1C5
  $B1C7: 05 09       ora $09    ; PRG $1B1C7
  $B1C9: f0 03       beq $b1ce    ; PRG $1B1C9
  $B1CB: 4c 3b 93    jmp $933b    ; PRG $1B1CB
  $B1CE: a0 ef       ldy #$ef    ; PRG $1B1CE
  $B1D0: b1 06       lda ($06),y    ; PRG $1B1D0
  $B1D2: 10 03       bpl $b1d7    ; PRG $1B1D2
  $B1D4: 4c 3b 93    jmp $933b    ; PRG $1B1D4
  $B1D7: 88          dey    ; PRG $1B1D7
  $B1D8: b1 06       lda ($06),y    ; PRG $1B1D8
  $B1DA: c9 0f       cmp #$0f    ; PRG $1B1DA
  $B1DC: c8          iny    ; PRG $1B1DC
  $B1DD: b1 06       lda ($06),y    ; PRG $1B1DD
  $B1DF: e9 00       sbc #$00    ; PRG $1B1DF
  $B1E1: 70 04       bvs $b1e7    ; PRG $1B1E1
  $B1E3: 30 07       bmi $b1ec    ; PRG $1B1E3
  $B1E5: 10 02       bpl $b1e9    ; PRG $1B1E5
  $B1E7: 10 03       bpl $b1ec    ; PRG $1B1E7
  $B1E9: 4c 3b 93    jmp $933b    ; PRG $1B1E9
  $B1EC: a0 ed       ldy #$ed    ; PRG $1B1EC
  $B1EE: b1 06       lda ($06),y    ; PRG $1B1EE
  $B1F0: 10 03       bpl $b1f5    ; PRG $1B1F0
  $B1F2: 4c 3b 93    jmp $933b    ; PRG $1B1F2
  $B1F5: 88          dey    ; PRG $1B1F5
  $B1F6: b1 06       lda ($06),y    ; PRG $1B1F6
  $B1F8: c9 09       cmp #$09    ; PRG $1B1F8
  $B1FA: c8          iny    ; PRG $1B1FA
  $B1FB: b1 06       lda ($06),y    ; PRG $1B1FB
  $B1FD: e9 00       sbc #$00    ; PRG $1B1FD
  $B1FF: 70 04       bvs $b205    ; PRG $1B1FF
  $B201: 30 07       bmi $b20a    ; PRG $1B201
  $B203: 10 02       bpl $b207    ; PRG $1B203
  $B205: 10 03       bpl $b20a    ; PRG $1B205
  $B207: 4c 3b 93    jmp $933b    ; PRG $1B207
  $B20A: a9 0f       lda #$0f    ; PRG $1B20A
  $B20C: 85 18       sta $18    ; PRG $1B20C
  $B20E: 86 19       stx $19    ; PRG $1B20E
  $B210: 88          dey    ; PRG $1B210
  $B211: b1 06       lda ($06),y    ; PRG $1B211
  $B213: 85 14       sta $14    ; PRG $1B213
  $B215: c8          iny    ; PRG $1B215
  $B216: b1 06       lda ($06),y    ; PRG $1B216
  $B218: 85 15       sta $15    ; PRG $1B218
  $B21A: a0 14       ldy #$14    ; PRG $1B21A
  $B21C: a2 18       ldx #$18    ; PRG $1B21C
  $B21E: a9 10       lda #$10    ; PRG $1B21E
  $B220: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1B220
  $B223: 18          clc    ; PRG $1B223
  $B224: a5 10       lda $10    ; PRG $1B224
  $B226: a0 ee       ldy #$ee    ; PRG $1B226
  $B228: 71 06       adc ($06),y    ; PRG $1B228
  $B22A: 85 18       sta $18    ; PRG $1B22A
  $B22C: a5 11       lda $11    ; PRG $1B22C
  $B22E: c8          iny    ; PRG $1B22E
  $B22F: 71 06       adc ($06),y    ; PRG $1B22F
  $B231: 85 19       sta $19    ; PRG $1B231
  $B233: 18          clc    ; PRG $1B233
  $B234: a5 18       lda $18    ; PRG $1B234
  $B236: 69 90       adc #$90    ; PRG $1B236
  $B238: 85 14       sta $14    ; PRG $1B238
  $B23A: a5 19       lda $19    ; PRG $1B23A
  $B23C: 69 73       adc #$73    ; PRG $1B23C
  $B23E: 85 15       sta $15    ; PRG $1B23E
  $B240: a1 14       lda ($14,x)    ; PRG $1B240
  $B242: 85 18       sta $18    ; PRG $1B242
  $B244: 86 19       stx $19    ; PRG $1B244
  $B246: a9 80       lda #$80    ; PRG $1B246
  $B248: c5 18       cmp $18    ; PRG $1B248
  $B24A: 8a          txa    ; PRG $1B24A
  $B24B: e5 19       sbc $19    ; PRG $1B24B
  $B24D: b0 03       bcs $b252    ; PRG $1B24D
  $B24F: 4c 3b 93    jmp $933b    ; PRG $1B24F
  $B252: a9 0f       lda #$0f    ; PRG $1B252
  $B254: 85 18       sta $18    ; PRG $1B254
  $B256: 86 19       stx $19    ; PRG $1B256
  $B258: a0 ec       ldy #$ec    ; PRG $1B258
  $B25A: b1 06       lda ($06),y    ; PRG $1B25A
  $B25C: 85 14       sta $14    ; PRG $1B25C
  $B25E: c8          iny    ; PRG $1B25E
  $B25F: b1 06       lda ($06),y    ; PRG $1B25F
  $B261: 85 15       sta $15    ; PRG $1B261
  $B263: a0 14       ldy #$14    ; PRG $1B263
  $B265: a2 18       ldx #$18    ; PRG $1B265
  $B267: a9 10       lda #$10    ; PRG $1B267
  $B269: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1B269
  $B26C: 18          clc    ; PRG $1B26C
  $B26D: a5 10       lda $10    ; PRG $1B26D
  $B26F: a0 ee       ldy #$ee    ; PRG $1B26F
  $B271: 71 06       adc ($06),y    ; PRG $1B271
  $B273: 85 18       sta $18    ; PRG $1B273
  $B275: a5 11       lda $11    ; PRG $1B275
  $B277: c8          iny    ; PRG $1B277
  $B278: 71 06       adc ($06),y    ; PRG $1B278
  $B27A: 85 19       sta $19    ; PRG $1B27A
  $B27C: 18          clc    ; PRG $1B27C
  $B27D: a5 18       lda $18    ; PRG $1B27D
  $B27F: 69 e1       adc #$e1    ; PRG $1B27F
  $B281: 85 14       sta $14    ; PRG $1B281
  $B283: a5 19       lda $19    ; PRG $1B283
  $B285: 69 74       adc #$74    ; PRG $1B285
  $B287: 85 15       sta $15    ; PRG $1B287
  $B289: a9 06       lda #$06    ; PRG $1B289
  $B28B: 85 18       sta $18    ; PRG $1B28B
  $B28D: 86 19       stx $19    ; PRG $1B28D
  $B28F: a2 14       ldx #$14    ; PRG $1B28F
  $B291: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $1B291
  $B294: a2 18       ldx #$18    ; PRG $1B294
  $B296: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $1B296
  $B299: 48          pha    ; PRG $1B299
  $B29A: a9 02       lda #$02    ; PRG $1B29A
  $B29C: 48          pha    ; PRG $1B29C
  $B29D: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1B29D
  $B2A0: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $1B2A0
  $B2A3: a9 03       lda #$03    ; PRG $1B2A3
  $B2A5: 85 18       sta $18    ; PRG $1B2A5
  $B2A7: 86 19       stx $19    ; PRG $1B2A7
  $B2A9: a2 08       ldx #$08    ; PRG $1B2A9
  $B2AB: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $1B2AB
  $B2AE: a2 18       ldx #$18    ; PRG $1B2AE
  $B2B0: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $1B2B0
  $B2B3: 48          pha    ; PRG $1B2B3
  $B2B4: a9 02       lda #$02    ; PRG $1B2B4
  $B2B6: 48          pha    ; PRG $1B2B6
  $B2B7: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1B2B7
  $B2BA: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $1B2BA
  $B2BD: a2 18       ldx #$18    ; PRG $1B2BD
  $B2BF: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $1B2BF
  $B2C2: a0 08       ldy #$08    ; PRG $1B2C2
  $B2C4: a2 18       ldx #$18    ; PRG $1B2C4
  $B2C6: a9 14       lda #$14    ; PRG $1B2C6
  $B2C8: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1B2C8
  $B2CB: a2 08       ldx #$08    ; PRG $1B2CB
  $B2CD: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $1B2CD
  $B2D0: 18          clc    ; PRG $1B2D0
  $B2D1: a5 14       lda $14    ; PRG $1B2D1
  $B2D3: 65 08       adc $08    ; PRG $1B2D3
  $B2D5: 85 18       sta $18    ; PRG $1B2D5
  $B2D7: a5 15       lda $15    ; PRG $1B2D7
  $B2D9: 65 09       adc $09    ; PRG $1B2D9
  $B2DB: 85 19       sta $19    ; PRG $1B2DB
  $B2DD: 18          clc    ; PRG $1B2DD
  $B2DE: a5 18       lda $18    ; PRG $1B2DE
  $B2E0: a0 f4       ldy #$f4    ; PRG $1B2E0
  $B2E2: 71 06       adc ($06),y    ; PRG $1B2E2
  $B2E4: 85 14       sta $14    ; PRG $1B2E4
  $B2E6: a5 19       lda $19    ; PRG $1B2E6
  $B2E8: c8          iny    ; PRG $1B2E8
  $B2E9: 71 06       adc ($06),y    ; PRG $1B2E9
  $B2EB: 85 15       sta $15    ; PRG $1B2EB
  $B2ED: 18          clc    ; PRG $1B2ED
  $B2EE: a9 01       lda #$01    ; PRG $1B2EE
  $B2F0: 65 14       adc $14    ; PRG $1B2F0
  $B2F2: 85 18       sta $18    ; PRG $1B2F2
  $B2F4: 8a          txa    ; PRG $1B2F4
  $B2F5: 65 15       adc $15    ; PRG $1B2F5
  $B2F7: 85 19       sta $19    ; PRG $1B2F7
  $B2F9: a2 14       ldx #$14    ; PRG $1B2F9
  $B2FB: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $1B2FB
  $B2FE: a0 18       ldy #$18    ; PRG $1B2FE
  $B300: a2 14       ldx #$14    ; PRG $1B300
  $B302: a9 10       lda #$10    ; PRG $1B302
  $B304: 20 eb e1    jsr $e1eb   ; alu_udiv16    ; PRG $1B304
  $B307: a2 14       ldx #$14    ; PRG $1B307
  $B309: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $1B309
  $B30C: a5 10       lda $10    ; PRG $1B30C
  $B30E: 81 14       sta ($14,x)    ; PRG $1B30E
  $B310: a9 0f       lda #$0f    ; PRG $1B310
  $B312: 85 18       sta $18    ; PRG $1B312
  $B314: 86 19       stx $19    ; PRG $1B314
  $B316: a0 ec       ldy #$ec    ; PRG $1B316
  $B318: b1 06       lda ($06),y    ; PRG $1B318
  $B31A: 85 14       sta $14    ; PRG $1B31A
  $B31C: c8          iny    ; PRG $1B31C
  $B31D: b1 06       lda ($06),y    ; PRG $1B31D
  $B31F: 85 15       sta $15    ; PRG $1B31F
  $B321: a0 14       ldy #$14    ; PRG $1B321
  $B323: a2 18       ldx #$18    ; PRG $1B323
  $B325: a9 10       lda #$10    ; PRG $1B325
  $B327: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1B327
  $B32A: 18          clc    ; PRG $1B32A
  $B32B: a5 10       lda $10    ; PRG $1B32B
  $B32D: a0 ee       ldy #$ee    ; PRG $1B32D
  $B32F: 71 06       adc ($06),y    ; PRG $1B32F
  $B331: 85 08       sta $08    ; PRG $1B331
  $B333: a5 11       lda $11    ; PRG $1B333
  $B335: c8          iny    ; PRG $1B335
  $B336: 71 06       adc ($06),y    ; PRG $1B336
  $B338: 85 09       sta $09    ; PRG $1B338
  $B33A: 60          rts    ; PRG $1B33A

; ---- sub_13_133b  [recovered]  <- (uncalled?)
  $B33B: 4c c1 90    jmp $90c1    ; PRG $1B33B

; ---- sub_13_1379  [stub]  <- (entry: bytecode/OS via $E299)
nat_13_1373: jsr $E299                    ; 13:B373  native-call prologue
            .db $00 $f4 $ff            ; inline: argcount $00, frame $fff4
  $B379: ad d2 74    lda $74d2    ; PRG $1B379
  $B37C: a0 f6       ldy #$f6    ; PRG $1B37C
  $B37E: 91 06       sta ($06),y    ; PRG $1B37E
  $B380: ad d3 74    lda $74d3    ; PRG $1B380
  $B383: c8          iny    ; PRG $1B383
  $B384: 91 06       sta ($06),y    ; PRG $1B384
  $B386: a0 0b       ldy #$0b    ; PRG $1B386
  $B388: b1 04       lda ($04),y    ; PRG $1B388
  $B38A: c9 02       cmp #$02    ; PRG $1B38A
  $B38C: d0 05       bne $b393    ; PRG $1B38C
  $B38E: c8          iny    ; PRG $1B38E
  $B38F: b1 04       lda ($04),y    ; PRG $1B38F
  $B391: c9 00       cmp #$00    ; PRG $1B391
  $B393: f0 03       beq $b398    ; PRG $1B393
  $B395: 4c a2 94    jmp $94a2    ; PRG $1B395
  $B398: a9 64       lda #$64    ; PRG $1B398
  $B39A: a0 f8       ldy #$f8    ; PRG $1B39A
  $B39C: 91 06       sta ($06),y    ; PRG $1B39C
  $B39E: 8a          txa    ; PRG $1B39E
  $B39F: c8          iny    ; PRG $1B39F
  $B3A0: 91 06       sta ($06),y    ; PRG $1B3A0
  $B3A2: a9 a3       lda #$a3    ; PRG $1B3A2
  $B3A4: a0 fc       ldy #$fc    ; PRG $1B3A4
  $B3A6: 91 06       sta ($06),y    ; PRG $1B3A6
  $B3A8: a9 74       lda #$74    ; PRG $1B3A8
  $B3AA: c8          iny    ; PRG $1B3AA
  $B3AB: 91 06       sta ($06),y    ; PRG $1B3AB
  $B3AD: 18          clc    ; PRG $1B3AD
  $B3AE: a9 a3       lda #$a3    ; PRG $1B3AE
  $B3B0: 6d aa 74    adc $74aa    ; PRG $1B3B0
  $B3B3: a0 fa       ldy #$fa    ; PRG $1B3B3
  $B3B5: 91 06       sta ($06),y    ; PRG $1B3B5
  $B3B7: a9 74       lda #$74    ; PRG $1B3B7
  $B3B9: 6d ab 74    adc $74ab    ; PRG $1B3B9
  $B3BC: c8          iny    ; PRG $1B3BC
  $B3BD: 91 06       sta ($06),y    ; PRG $1B3BD
  $B3BF: 4c d1 93    jmp $93d1    ; PRG $1B3BF

; ---- sub_13_13c2  [recovered]  <- (uncalled?)
  $B3C2: 18          clc    ; PRG $1B3C2
  $B3C3: a9 01       lda #$01    ; PRG $1B3C3
  $B3C5: a0 fc       ldy #$fc    ; PRG $1B3C5
  $B3C7: 71 06       adc ($06),y    ; PRG $1B3C7
  $B3C9: 91 06       sta ($06),y    ; PRG $1B3C9
  $B3CB: 8a          txa    ; PRG $1B3CB
  $B3CC: c8          iny    ; PRG $1B3CC
  $B3CD: 71 06       adc ($06),y    ; PRG $1B3CD
  $B3CF: 91 06       sta ($06),y    ; PRG $1B3CF
  $B3D1: a0 fc       ldy #$fc    ; PRG $1B3D1
  $B3D3: b1 06       lda ($06),y    ; PRG $1B3D3
  $B3D5: a0 fa       ldy #$fa    ; PRG $1B3D5
  $B3D7: d1 06       cmp ($06),y    ; PRG $1B3D7
  $B3D9: a0 fd       ldy #$fd    ; PRG $1B3D9
  $B3DB: b1 06       lda ($06),y    ; PRG $1B3DB
  $B3DD: a0 fb       ldy #$fb    ; PRG $1B3DD
  $B3DF: f1 06       sbc ($06),y    ; PRG $1B3DF
  $B3E1: 90 03       bcc $b3e6    ; PRG $1B3E1
  $B3E3: 4c a2 94    jmp $94a2    ; PRG $1B3E3
  $B3E6: a9 07       lda #$07    ; PRG $1B3E6
  $B3E8: 85 18       sta $18    ; PRG $1B3E8
  $B3EA: 86 19       stx $19    ; PRG $1B3EA
  $B3EC: c8          iny    ; PRG $1B3EC
  $B3ED: b1 06       lda ($06),y    ; PRG $1B3ED
  $B3EF: 85 14       sta $14    ; PRG $1B3EF
  $B3F1: c8          iny    ; PRG $1B3F1
  $B3F2: b1 06       lda ($06),y    ; PRG $1B3F2
  $B3F4: 85 15       sta $15    ; PRG $1B3F4
  $B3F6: a1 14       lda ($14,x)    ; PRG $1B3F6
  $B3F8: 85 10       sta $10    ; PRG $1B3F8
  $B3FA: 86 11       stx $11    ; PRG $1B3FA
  $B3FC: a0 10       ldy #$10    ; PRG $1B3FC
  $B3FE: a2 18       ldx #$18    ; PRG $1B3FE
  $B400: a9 14       lda #$14    ; PRG $1B400
  $B402: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1B402
  $B405: 18          clc    ; PRG $1B405
  $B406: a5 14       lda $14    ; PRG $1B406
  $B408: 69 90       adc #$90    ; PRG $1B408
  $B40A: a0 fe       ldy #$fe    ; PRG $1B40A
  $B40C: 91 06       sta ($06),y    ; PRG $1B40C
  $B40E: a5 15       lda $15    ; PRG $1B40E
  $B410: 69 6c       adc #$6c    ; PRG $1B410
  $B412: c8          iny    ; PRG $1B412
  $B413: 91 06       sta ($06),y    ; PRG $1B413
  $B415: 88          dey    ; PRG $1B415
  $B416: b1 06       lda ($06),y    ; PRG $1B416
  $B418: 85 18       sta $18    ; PRG $1B418
  $B41A: c8          iny    ; PRG $1B41A
  $B41B: b1 06       lda ($06),y    ; PRG $1B41B
  $B41D: 85 19       sta $19    ; PRG $1B41D
  $B41F: a1 18       lda ($18,x)    ; PRG $1B41F
  $B421: 85 14       sta $14    ; PRG $1B421
  $B423: 86 15       stx $15    ; PRG $1B423
  $B425: a5 14       lda $14    ; PRG $1B425
  $B427: a0 f4       ldy #$f4    ; PRG $1B427
  $B429: 91 06       sta ($06),y    ; PRG $1B429
  $B42B: a5 15       lda $15    ; PRG $1B42B
  $B42D: c8          iny    ; PRG $1B42D
  $B42E: 91 06       sta ($06),y    ; PRG $1B42E
  $B430: 88          dey    ; PRG $1B430
  $B431: b1 06       lda ($06),y    ; PRG $1B431
  $B433: a0 f8       ldy #$f8    ; PRG $1B433
  $B435: d1 06       cmp ($06),y    ; PRG $1B435
  $B437: a0 f5       ldy #$f5    ; PRG $1B437
  $B439: b1 06       lda ($06),y    ; PRG $1B439
  $B43B: a0 f9       ldy #$f9    ; PRG $1B43B
  $B43D: f1 06       sbc ($06),y    ; PRG $1B43D
  $B43F: 90 03       bcc $b444    ; PRG $1B43F
  $B441: 4c 9f 94    jmp $949f    ; PRG $1B441
  $B444: a0 fe       ldy #$fe    ; PRG $1B444
  $B446: b1 06       lda ($06),y    ; PRG $1B446
  $B448: 85 18       sta $18    ; PRG $1B448
  $B44A: c8          iny    ; PRG $1B44A
  $B44B: b1 06       lda ($06),y    ; PRG $1B44B
  $B44D: 85 19       sta $19    ; PRG $1B44D
  $B44F: a0 04       ldy #$04    ; PRG $1B44F
  $B451: b1 18       lda ($18),y    ; PRG $1B451
  $B453: c8          iny    ; PRG $1B453
  $B454: 11 18       ora ($18),y    ; PRG $1B454
  $B456: d0 03       bne $b45b    ; PRG $1B456
  $B458: 4c 9f 94    jmp $949f    ; PRG $1B458
  $B45B: a0 f4       ldy #$f4    ; PRG $1B45B
  $B45D: b1 06       lda ($06),y    ; PRG $1B45D
  $B45F: c8          iny    ; PRG $1B45F
  $B460: 11 06       ora ($06),y    ; PRG $1B460
  $B462: d0 03       bne $b467    ; PRG $1B462
  $B464: 4c 9f 94    jmp $949f    ; PRG $1B464
  $B467: a0 fe       ldy #$fe    ; PRG $1B467
  $B469: b1 06       lda ($06),y    ; PRG $1B469
  $B46B: 85 18       sta $18    ; PRG $1B46B
  $B46D: c8          iny    ; PRG $1B46D
  $B46E: b1 06       lda ($06),y    ; PRG $1B46E
  $B470: 85 19       sta $19    ; PRG $1B470
  $B472: a1 18       lda ($18,x)    ; PRG $1B472
  $B474: 85 14       sta $14    ; PRG $1B474
  $B476: 86 15       stx $15    ; PRG $1B476
  $B478: a5 14       lda $14    ; PRG $1B478
  $B47A: a0 f8       ldy #$f8    ; PRG $1B47A
  $B47C: 91 06       sta ($06),y    ; PRG $1B47C
  $B47E: a5 15       lda $15    ; PRG $1B47E
  $B480: c8          iny    ; PRG $1B480
  $B481: 91 06       sta ($06),y    ; PRG $1B481
  $B483: a0 fc       ldy #$fc    ; PRG $1B483
  $B485: b1 06       lda ($06),y    ; PRG $1B485
  $B487: 85 18       sta $18    ; PRG $1B487
  $B489: c8          iny    ; PRG $1B489
  $B48A: b1 06       lda ($06),y    ; PRG $1B48A
  $B48C: 85 19       sta $19    ; PRG $1B48C
  $B48E: a1 18       lda ($18,x)    ; PRG $1B48E
  $B490: 85 14       sta $14    ; PRG $1B490
  $B492: 86 15       stx $15    ; PRG $1B492
  $B494: a5 14       lda $14    ; PRG $1B494
  $B496: a0 f6       ldy #$f6    ; PRG $1B496
  $B498: 91 06       sta ($06),y    ; PRG $1B498
  $B49A: a5 15       lda $15    ; PRG $1B49A
  $B49C: c8          iny    ; PRG $1B49C
  $B49D: 91 06       sta ($06),y    ; PRG $1B49D
  $B49F: 4c c2 93    jmp $93c2    ; PRG $1B49F

; ---- sub_13_14a2  [recovered]  <- (uncalled?)
  $B4A2: a0 0e       ldy #$0e    ; PRG $1B4A2
  $B4A4: b1 04       lda ($04),y    ; PRG $1B4A4
  $B4A6: 48          pha    ; PRG $1B4A6
  $B4A7: 88          dey    ; PRG $1B4A7
  $B4A8: b1 04       lda ($04),y    ; PRG $1B4A8
  $B4AA: 48          pha    ; PRG $1B4AA
  $B4AB: a0 f7       ldy #$f7    ; PRG $1B4AB
  $B4AD: b1 06       lda ($06),y    ; PRG $1B4AD
  $B4AF: 48          pha    ; PRG $1B4AF
  $B4B0: 88          dey    ; PRG $1B4B0
  $B4B1: b1 06       lda ($06),y    ; PRG $1B4B1
  $B4B3: 48          pha    ; PRG $1B4B3
  $B4B4: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1B4B4
  $B4B7: 20 8d 06    .db $20 $8d $06  -> vm $8D20 argc 6    ; PRG $1B4B7
  $B4BA: 60          rts    ; PRG $1B4BA
