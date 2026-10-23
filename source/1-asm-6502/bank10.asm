; ============================================================================
; Uncharted Waters - bank 10 NATIVE disassembly (window base $A000)
; 49 native subs: 12 $E299-stubbed (VM-frame entries) + 0 plain + 37 jumptable/CALL-recovered
; coverage: 4503B code+inline (54%) + 3678B $FF-pad + 11B data
; control-flow-followed, inline bridges ($E299/$E338) skipped; calls resolved vs mesen-labels.toml.
; ============================================================================
.base $A000

; ---- sub_10_0009  [stub]  <- (entry: bytecode/OS via $E299)
nat_10_0003: jsr $E299                    ; 10:A003  native-call prologue
            .db $00 $ea $ff            ; inline: argcount $00, frame $ffea
  $A009: a9 33       lda #$33    ; PRG $14009
  $A00B: 85 18       sta $18    ; PRG $1400B
  $A00D: 86 19       stx $19    ; PRG $1400D
  $A00F: 18          clc    ; PRG $1400F
  $A010: a9 ff       lda #$ff    ; PRG $14010
  $A012: a0 0b       ldy #$0b    ; PRG $14012
  $A014: 71 04       adc ($04),y    ; PRG $14014
  $A016: 85 14       sta $14    ; PRG $14016
  $A018: a9 ff       lda #$ff    ; PRG $14018
  $A01A: c8          iny    ; PRG $1401A
  $A01B: 71 04       adc ($04),y    ; PRG $1401B
  $A01D: 85 15       sta $15    ; PRG $1401D
  $A01F: a0 14       ldy #$14    ; PRG $1401F
  $A021: a2 18       ldx #$18    ; PRG $14021
  $A023: a9 10       lda #$10    ; PRG $14023
  $A025: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $14025
  $A028: 18          clc    ; PRG $14028
  $A029: a5 10       lda $10    ; PRG $14029
  $A02B: 69 04       adc #$04    ; PRG $1402B
  $A02D: a0 ec       ldy #$ec    ; PRG $1402D
  $A02F: 91 06       sta ($06),y    ; PRG $1402F
  $A031: a5 11       lda $11    ; PRG $14031
  $A033: 69 60       adc #$60    ; PRG $14033
  $A035: c8          iny    ; PRG $14035
  $A036: 91 06       sta ($06),y    ; PRG $14036
  $A038: 88          dey    ; PRG $14038
  $A039: b1 06       lda ($06),y    ; PRG $14039
  $A03B: 85 18       sta $18    ; PRG $1403B
  $A03D: c8          iny    ; PRG $1403D
  $A03E: b1 06       lda ($06),y    ; PRG $1403E
  $A040: 85 19       sta $19    ; PRG $14040
  $A042: a9 01       lda #$01    ; PRG $14042
  $A044: a0 04       ldy #$04    ; PRG $14044
  $A046: 91 18       sta ($18),y    ; PRG $14046
  $A048: a9 05       lda #$05    ; PRG $14048
  $A04A: 85 18       sta $18    ; PRG $1404A
  $A04C: 86 19       stx $19    ; PRG $1404C
  $A04E: 18          clc    ; PRG $1404E
  $A04F: a9 ff       lda #$ff    ; PRG $1404F
  $A051: a0 0b       ldy #$0b    ; PRG $14051
  $A053: 71 04       adc ($04),y    ; PRG $14053
  $A055: 85 14       sta $14    ; PRG $14055
  $A057: a9 ff       lda #$ff    ; PRG $14057
  $A059: c8          iny    ; PRG $14059
  $A05A: 71 04       adc ($04),y    ; PRG $1405A
  $A05C: 85 15       sta $15    ; PRG $1405C
  $A05E: a0 14       ldy #$14    ; PRG $1405E
  $A060: a2 18       ldx #$18    ; PRG $14060
  $A062: a9 10       lda #$10    ; PRG $14062
  $A064: 20 d9 e1    jsr $e1d9   ; alu_div_push_remainder    ; PRG $14064
  $A067: a5 10       lda $10    ; PRG $14067
  $A069: a0 f2       ldy #$f2    ; PRG $14069
  $A06B: 91 06       sta ($06),y    ; PRG $1406B
  $A06D: a5 11       lda $11    ; PRG $1406D
  $A06F: c8          iny    ; PRG $1406F
  $A070: 91 06       sta ($06),y    ; PRG $14070
  $A072: a9 03       lda #$03    ; PRG $14072
  $A074: a0 f6       ldy #$f6    ; PRG $14074
  $A076: 91 06       sta ($06),y    ; PRG $14076
  $A078: 8a          txa    ; PRG $14078
  $A079: c8          iny    ; PRG $14079
  $A07A: 91 06       sta ($06),y    ; PRG $1407A
  $A07C: 18          clc    ; PRG $1407C
  $A07D: 88          dey    ; PRG $1407D
  $A07E: b1 06       lda ($06),y    ; PRG $1407E
  $A080: 69 76       adc #$76    ; PRG $14080
  $A082: a0 fc       ldy #$fc    ; PRG $14082
  $A084: 91 06       sta ($06),y    ; PRG $14084
  $A086: a0 f7       ldy #$f7    ; PRG $14086
  $A088: b1 06       lda ($06),y    ; PRG $14088
  $A08A: 69 6f       adc #$6f    ; PRG $1408A
  $A08C: a0 fd       ldy #$fd    ; PRG $1408C
  $A08E: 91 06       sta ($06),y    ; PRG $1408E
  $A090: a9 a8       lda #$a8    ; PRG $14090
  $A092: a0 fa       ldy #$fa    ; PRG $14092
  $A094: 91 06       sta ($06),y    ; PRG $14094
  $A096: a9 6f       lda #$6f    ; PRG $14096
  $A098: c8          iny    ; PRG $14098
  $A099: 91 06       sta ($06),y    ; PRG $14099
  $A09B: a9 0e       lda #$0e    ; PRG $1409B
  $A09D: 85 18       sta $18    ; PRG $1409D
  $A09F: 86 19       stx $19    ; PRG $1409F
  $A0A1: a0 f6       ldy #$f6    ; PRG $140A1
  $A0A3: b1 06       lda ($06),y    ; PRG $140A3
  $A0A5: 85 14       sta $14    ; PRG $140A5
  $A0A7: c8          iny    ; PRG $140A7
  $A0A8: b1 06       lda ($06),y    ; PRG $140A8
  $A0AA: 85 15       sta $15    ; PRG $140AA
  $A0AC: a0 14       ldy #$14    ; PRG $140AC
  $A0AE: a2 18       ldx #$18    ; PRG $140AE
  $A0B0: a9 10       lda #$10    ; PRG $140B0
  $A0B2: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $140B2
  $A0B5: 18          clc    ; PRG $140B5
  $A0B6: a5 10       lda $10    ; PRG $140B6
  $A0B8: 69 b2       adc #$b2    ; PRG $140B8
  $A0BA: a0 ea       ldy #$ea    ; PRG $140BA
  $A0BC: 91 06       sta ($06),y    ; PRG $140BC
  $A0BE: a5 11       lda $11    ; PRG $140BE
  $A0C0: 69 67       adc #$67    ; PRG $140C0
  $A0C2: c8          iny    ; PRG $140C2
  $A0C3: 91 06       sta ($06),y    ; PRG $140C3
  $A0C5: a9 65       lda #$65    ; PRG $140C5
  $A0C7: a0 f0       ldy #$f0    ; PRG $140C7
  $A0C9: 91 06       sta ($06),y    ; PRG $140C9
  $A0CB: 8a          txa    ; PRG $140CB
  $A0CC: c8          iny    ; PRG $140CC
  $A0CD: 91 06       sta ($06),y    ; PRG $140CD
  $A0CF: a0 f4       ldy #$f4    ; PRG $140CF
  $A0D1: 91 06       sta ($06),y    ; PRG $140D1
  $A0D3: c8          iny    ; PRG $140D3
  $A0D4: 91 06       sta ($06),y    ; PRG $140D4
  $A0D6: 4c 06 81    jmp $8106    ; PRG $140D6

; ---- sub_10_00d9  [recovered]  <- (uncalled?)
  $A0D9: 18          clc    ; PRG $140D9
  $A0DA: a9 01       lda #$01    ; PRG $140DA
  $A0DC: a0 f6       ldy #$f6    ; PRG $140DC
  $A0DE: 71 06       adc ($06),y    ; PRG $140DE
  $A0E0: 91 06       sta ($06),y    ; PRG $140E0
  $A0E2: 8a          txa    ; PRG $140E2
  $A0E3: c8          iny    ; PRG $140E3
  $A0E4: 71 06       adc ($06),y    ; PRG $140E4
  $A0E6: 91 06       sta ($06),y    ; PRG $140E6
  $A0E8: 18          clc    ; PRG $140E8
  $A0E9: a9 0e       lda #$0e    ; PRG $140E9
  $A0EB: a0 ea       ldy #$ea    ; PRG $140EB
  $A0ED: 71 06       adc ($06),y    ; PRG $140ED
  $A0EF: 91 06       sta ($06),y    ; PRG $140EF
  $A0F1: 8a          txa    ; PRG $140F1
  $A0F2: c8          iny    ; PRG $140F2
  $A0F3: 71 06       adc ($06),y    ; PRG $140F3
  $A0F5: 91 06       sta ($06),y    ; PRG $140F5
  $A0F7: 18          clc    ; PRG $140F7
  $A0F8: a9 01       lda #$01    ; PRG $140F8
  $A0FA: a0 fc       ldy #$fc    ; PRG $140FA
  $A0FC: 71 06       adc ($06),y    ; PRG $140FC
  $A0FE: 91 06       sta ($06),y    ; PRG $140FE
  $A100: 8a          txa    ; PRG $14100
  $A101: c8          iny    ; PRG $14101
  $A102: 71 06       adc ($06),y    ; PRG $14102
  $A104: 91 06       sta ($06),y    ; PRG $14104
  $A106: a0 fc       ldy #$fc    ; PRG $14106
  $A108: b1 06       lda ($06),y    ; PRG $14108
  $A10A: a0 fa       ldy #$fa    ; PRG $1410A
  $A10C: d1 06       cmp ($06),y    ; PRG $1410C
  $A10E: a0 fd       ldy #$fd    ; PRG $1410E
  $A110: b1 06       lda ($06),y    ; PRG $14110
  $A112: a0 fb       ldy #$fb    ; PRG $14112
  $A114: f1 06       sbc ($06),y    ; PRG $14114
  $A116: 90 03       bcc $a11b    ; PRG $14116
  $A118: 4c df 81    jmp $81df    ; PRG $14118
  $A11B: c8          iny    ; PRG $1411B
  $A11C: b1 06       lda ($06),y    ; PRG $1411C
  $A11E: 85 18       sta $18    ; PRG $1411E
  $A120: c8          iny    ; PRG $14120
  $A121: b1 06       lda ($06),y    ; PRG $14121
  $A123: 85 19       sta $19    ; PRG $14123
  $A125: a1 18       lda ($18,x)    ; PRG $14125
  $A127: 85 14       sta $14    ; PRG $14127
  $A129: 86 15       stx $15    ; PRG $14129
  $A12B: a9 03       lda #$03    ; PRG $1412B
  $A12D: 25 14       and $14    ; PRG $1412D
  $A12F: a0 f8       ldy #$f8    ; PRG $1412F
  $A131: 91 06       sta ($06),y    ; PRG $14131
  $A133: 8a          txa    ; PRG $14133
  $A134: c8          iny    ; PRG $14134
  $A135: 91 06       sta ($06),y    ; PRG $14135
  $A137: 18          clc    ; PRG $14137
  $A138: a9 08       lda #$08    ; PRG $14138
  $A13A: a0 ea       ldy #$ea    ; PRG $1413A
  $A13C: 71 06       adc ($06),y    ; PRG $1413C
  $A13E: a0 fe       ldy #$fe    ; PRG $1413E
  $A140: 91 06       sta ($06),y    ; PRG $14140
  $A142: 8a          txa    ; PRG $14142
  $A143: a0 eb       ldy #$eb    ; PRG $14143
  $A145: 71 06       adc ($06),y    ; PRG $14145
  $A147: a0 ff       ldy #$ff    ; PRG $14147
  $A149: 91 06       sta ($06),y    ; PRG $14149
  $A14B: 18          clc    ; PRG $1414B
  $A14C: a9 01       lda #$01    ; PRG $1414C
  $A14E: a0 f2       ldy #$f2    ; PRG $1414E
  $A150: 71 06       adc ($06),y    ; PRG $14150
  $A152: 85 18       sta $18    ; PRG $14152
  $A154: 8a          txa    ; PRG $14154
  $A155: c8          iny    ; PRG $14155
  $A156: 71 06       adc ($06),y    ; PRG $14156
  $A158: 85 19       sta $19    ; PRG $14158
  $A15A: a5 18       lda $18    ; PRG $1415A
  $A15C: a0 f8       ldy #$f8    ; PRG $1415C
  $A15E: d1 06       cmp ($06),y    ; PRG $1415E
  $A160: d0 05       bne $a167    ; PRG $14160
  $A162: a5 19       lda $19    ; PRG $14162
  $A164: c8          iny    ; PRG $14164
  $A165: d1 06       cmp ($06),y    ; PRG $14165
  $A167: f0 03       beq $a16c    ; PRG $14167
  $A169: 4c dc 81    jmp $81dc    ; PRG $14169
  $A16C: 18          clc    ; PRG $1416C
  $A16D: a9 01       lda #$01    ; PRG $1416D
  $A16F: a0 f4       ldy #$f4    ; PRG $1416F
  $A171: 71 06       adc ($06),y    ; PRG $14171
  $A173: 91 06       sta ($06),y    ; PRG $14173
  $A175: 8a          txa    ; PRG $14175
  $A176: c8          iny    ; PRG $14176
  $A177: 71 06       adc ($06),y    ; PRG $14177
  $A179: 91 06       sta ($06),y    ; PRG $14179
  $A17B: 18          clc    ; PRG $1417B
  $A17C: a0 fe       ldy #$fe    ; PRG $1417C
  $A17E: b1 06       lda ($06),y    ; PRG $1417E
  $A180: a0 f2       ldy #$f2    ; PRG $14180
  $A182: 71 06       adc ($06),y    ; PRG $14182
  $A184: 85 18       sta $18    ; PRG $14184
  $A186: a0 ff       ldy #$ff    ; PRG $14186
  $A188: b1 06       lda ($06),y    ; PRG $14188
  $A18A: a0 f3       ldy #$f3    ; PRG $1418A
  $A18C: 71 06       adc ($06),y    ; PRG $1418C
  $A18E: 85 19       sta $19    ; PRG $1418E
  $A190: a1 18       lda ($18,x)    ; PRG $14190
  $A192: 85 14       sta $14    ; PRG $14192
  $A194: 86 15       stx $15    ; PRG $14194
  $A196: a5 14       lda $14    ; PRG $14196
  $A198: a0 f0       ldy #$f0    ; PRG $14198
  $A19A: d1 06       cmp ($06),y    ; PRG $1419A
  $A19C: a5 15       lda $15    ; PRG $1419C
  $A19E: c8          iny    ; PRG $1419E
  $A19F: f1 06       sbc ($06),y    ; PRG $1419F
  $A1A1: 90 03       bcc $a1a6    ; PRG $141A1
  $A1A3: 4c dc 81    jmp $81dc    ; PRG $141A3
  $A1A6: 18          clc    ; PRG $141A6
  $A1A7: a0 fe       ldy #$fe    ; PRG $141A7
  $A1A9: b1 06       lda ($06),y    ; PRG $141A9
  $A1AB: a0 f2       ldy #$f2    ; PRG $141AB
  $A1AD: 71 06       adc ($06),y    ; PRG $141AD
  $A1AF: 85 18       sta $18    ; PRG $141AF
  $A1B1: a0 ff       ldy #$ff    ; PRG $141B1
  $A1B3: b1 06       lda ($06),y    ; PRG $141B3
  $A1B5: a0 f3       ldy #$f3    ; PRG $141B5
  $A1B7: 71 06       adc ($06),y    ; PRG $141B7
  $A1B9: 85 19       sta $19    ; PRG $141B9
  $A1BB: a1 18       lda ($18,x)    ; PRG $141BB
  $A1BD: 85 14       sta $14    ; PRG $141BD
  $A1BF: 86 15       stx $15    ; PRG $141BF
  $A1C1: a5 14       lda $14    ; PRG $141C1
  $A1C3: a0 f0       ldy #$f0    ; PRG $141C3
  $A1C5: 91 06       sta ($06),y    ; PRG $141C5
  $A1C7: a5 15       lda $15    ; PRG $141C7
  $A1C9: c8          iny    ; PRG $141C9
  $A1CA: 91 06       sta ($06),y    ; PRG $141CA
  $A1CC: a0 f6       ldy #$f6    ; PRG $141CC
  $A1CE: b1 06       lda ($06),y    ; PRG $141CE
  $A1D0: a0 ee       ldy #$ee    ; PRG $141D0
  $A1D2: 91 06       sta ($06),y    ; PRG $141D2
  $A1D4: a0 f7       ldy #$f7    ; PRG $141D4
  $A1D6: b1 06       lda ($06),y    ; PRG $141D6
  $A1D8: a0 ef       ldy #$ef    ; PRG $141D8
  $A1DA: 91 06       sta ($06),y    ; PRG $141DA
  $A1DC: 4c d9 80    jmp $80d9    ; PRG $141DC

; ---- sub_10_01df  [recovered]  <- (uncalled?)
  $A1DF: a0 f4       ldy #$f4    ; PRG $141DF
  $A1E1: b1 06       lda ($06),y    ; PRG $141E1
  $A1E3: c8          iny    ; PRG $141E3
  $A1E4: 11 06       ora ($06),y    ; PRG $141E4
  $A1E6: d0 03       bne $a1eb    ; PRG $141E6
  $A1E8: 4c 00 82    jmp $8200    ; PRG $141E8
  $A1EB: a0 ec       ldy #$ec    ; PRG $141EB
  $A1ED: b1 06       lda ($06),y    ; PRG $141ED
  $A1EF: 85 18       sta $18    ; PRG $141EF
  $A1F1: c8          iny    ; PRG $141F1
  $A1F2: b1 06       lda ($06),y    ; PRG $141F2
  $A1F4: 85 19       sta $19    ; PRG $141F4
  $A1F6: c8          iny    ; PRG $141F6
  $A1F7: b1 06       lda ($06),y    ; PRG $141F7
  $A1F9: a0 05       ldy #$05    ; PRG $141F9
  $A1FB: 91 18       sta ($18),y    ; PRG $141FB
  $A1FD: 4c 33 82    jmp $8233    ; PRG $141FD

; ---- sub_10_0200  [recovered]  <- (uncalled?)
  $A200: a0 ec       ldy #$ec    ; PRG $14200
  $A202: b1 06       lda ($06),y    ; PRG $14202
  $A204: 85 18       sta $18    ; PRG $14204
  $A206: c8          iny    ; PRG $14206
  $A207: b1 06       lda ($06),y    ; PRG $14207
  $A209: 85 19       sta $19    ; PRG $14209
  $A20B: a2 18       ldx #$18    ; PRG $1420B
  $A20D: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $1420D
  $A210: 48          pha    ; PRG $14210
  $A211: a9 0f       lda #$0f    ; PRG $14211
  $A213: 48          pha    ; PRG $14213
  $A214: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $14214
  $A217: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $14217
  $A21A: 86 09       stx $09    ; PRG $1421A
  $A21C: 18          clc    ; PRG $1421C
  $A21D: a9 03       lda #$03    ; PRG $1421D
  $A21F: 65 08       adc $08    ; PRG $1421F
  $A221: 85 18       sta $18    ; PRG $14221
  $A223: 8a          txa    ; PRG $14223
  $A224: 65 09       adc $09    ; PRG $14224
  $A226: 85 19       sta $19    ; PRG $14226
  $A228: a2 14       ldx #$14    ; PRG $14228
  $A22A: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $1422A
  $A22D: a5 18       lda $18    ; PRG $1422D
  $A22F: a0 05       ldy #$05    ; PRG $1422F
  $A231: 91 14       sta ($14),y    ; PRG $14231
  $A233: 60          rts    ; PRG $14233

; ---- sub_10_023a  [stub]  <- (entry: bytecode/OS via $E299)
nat_10_0234: jsr $E299                    ; 10:A234  native-call prologue
            .db $00 $f6 $ff            ; inline: argcount $00, frame $fff6
  $A23A: a9 33       lda #$33    ; PRG $1423A
  $A23C: 85 18       sta $18    ; PRG $1423C
  $A23E: 86 19       stx $19    ; PRG $1423E
  $A240: 18          clc    ; PRG $14240
  $A241: a9 ff       lda #$ff    ; PRG $14241
  $A243: a0 0b       ldy #$0b    ; PRG $14243
  $A245: 71 04       adc ($04),y    ; PRG $14245
  $A247: 85 14       sta $14    ; PRG $14247
  $A249: a9 ff       lda #$ff    ; PRG $14249
  $A24B: c8          iny    ; PRG $1424B
  $A24C: 71 04       adc ($04),y    ; PRG $1424C
  $A24E: 85 15       sta $15    ; PRG $1424E
  $A250: a0 14       ldy #$14    ; PRG $14250
  $A252: a2 18       ldx #$18    ; PRG $14252
  $A254: a9 10       lda #$10    ; PRG $14254
  $A256: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $14256
  $A259: 18          clc    ; PRG $14259
  $A25A: a5 10       lda $10    ; PRG $1425A
  $A25C: 69 04       adc #$04    ; PRG $1425C
  $A25E: a0 f6       ldy #$f6    ; PRG $1425E
  $A260: 91 06       sta ($06),y    ; PRG $14260
  $A262: a5 11       lda $11    ; PRG $14262
  $A264: 69 60       adc #$60    ; PRG $14264
  $A266: c8          iny    ; PRG $14266
  $A267: 91 06       sta ($06),y    ; PRG $14267
  $A269: a9 0e       lda #$0e    ; PRG $14269
  $A26B: 85 18       sta $18    ; PRG $1426B
  $A26D: 86 19       stx $19    ; PRG $1426D
  $A26F: a9 03       lda #$03    ; PRG $1426F
  $A271: a0 ff       ldy #$ff    ; PRG $14271
  $A273: 91 06       sta ($06),y    ; PRG $14273
  $A275: 85 14       sta $14    ; PRG $14275
  $A277: 86 15       stx $15    ; PRG $14277
  $A279: a0 14       ldy #$14    ; PRG $14279
  $A27B: a2 18       ldx #$18    ; PRG $1427B
  $A27D: a9 10       lda #$10    ; PRG $1427D
  $A27F: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1427F
  $A282: 18          clc    ; PRG $14282
  $A283: a5 10       lda $10    ; PRG $14283
  $A285: 69 b2       adc #$b2    ; PRG $14285
  $A287: a0 fa       ldy #$fa    ; PRG $14287
  $A289: 91 06       sta ($06),y    ; PRG $14289
  $A28B: a5 11       lda $11    ; PRG $1428B
  $A28D: 69 67       adc #$67    ; PRG $1428D
  $A28F: c8          iny    ; PRG $1428F
  $A290: 91 06       sta ($06),y    ; PRG $14290
  $A292: a9 6e       lda #$6e    ; PRG $14292
  $A294: a0 f8       ldy #$f8    ; PRG $14294
  $A296: 91 06       sta ($06),y    ; PRG $14296
  $A298: a9 6a       lda #$6a    ; PRG $14298
  $A29A: c8          iny    ; PRG $1429A
  $A29B: 91 06       sta ($06),y    ; PRG $1429B
  $A29D: 8a          txa    ; PRG $1429D
  $A29E: a0 fe       ldy #$fe    ; PRG $1429E
  $A2A0: 91 06       sta ($06),y    ; PRG $142A0
  $A2A2: 85 18       sta $18    ; PRG $142A2
  $A2A4: 86 19       stx $19    ; PRG $142A4
  $A2A6: a5 18       lda $18    ; PRG $142A6
  $A2A8: a0 fc       ldy #$fc    ; PRG $142A8
  $A2AA: 91 06       sta ($06),y    ; PRG $142AA
  $A2AC: a5 19       lda $19    ; PRG $142AC
  $A2AE: c8          iny    ; PRG $142AE
  $A2AF: 91 06       sta ($06),y    ; PRG $142AF
  $A2B1: 4c cf 82    jmp $82cf    ; PRG $142B1

; ---- sub_10_02b4  [recovered]  <- (uncalled?)
  $A2B4: 18          clc    ; PRG $142B4
  $A2B5: a9 01       lda #$01    ; PRG $142B5
  $A2B7: a0 ff       ldy #$ff    ; PRG $142B7
  $A2B9: 71 06       adc ($06),y    ; PRG $142B9
  $A2BB: 91 06       sta ($06),y    ; PRG $142BB
  $A2BD: 8a          txa    ; PRG $142BD
  $A2BE: 69 00       adc #$00    ; PRG $142BE
  $A2C0: 18          clc    ; PRG $142C0
  $A2C1: a9 0e       lda #$0e    ; PRG $142C1
  $A2C3: a0 fa       ldy #$fa    ; PRG $142C3
  $A2C5: 71 06       adc ($06),y    ; PRG $142C5
  $A2C7: 91 06       sta ($06),y    ; PRG $142C7
  $A2C9: 8a          txa    ; PRG $142C9
  $A2CA: c8          iny    ; PRG $142CA
  $A2CB: 71 06       adc ($06),y    ; PRG $142CB
  $A2CD: 91 06       sta ($06),y    ; PRG $142CD
  $A2CF: a0 fa       ldy #$fa    ; PRG $142CF
  $A2D1: b1 06       lda ($06),y    ; PRG $142D1
  $A2D3: a0 f8       ldy #$f8    ; PRG $142D3
  $A2D5: d1 06       cmp ($06),y    ; PRG $142D5
  $A2D7: a0 fb       ldy #$fb    ; PRG $142D7
  $A2D9: b1 06       lda ($06),y    ; PRG $142D9
  $A2DB: a0 f9       ldy #$f9    ; PRG $142DB
  $A2DD: f1 06       sbc ($06),y    ; PRG $142DD
  $A2DF: 90 03       bcc $a2e4    ; PRG $142DF
  $A2E1: 4c 27 83    jmp $8327   ; ending_text_main    ; PRG $142E1
  $A2E4: c8          iny    ; PRG $142E4
  $A2E5: b1 06       lda ($06),y    ; PRG $142E5
  $A2E7: 85 18       sta $18    ; PRG $142E7
  $A2E9: c8          iny    ; PRG $142E9
  $A2EA: b1 06       lda ($06),y    ; PRG $142EA
  $A2EC: 85 19       sta $19    ; PRG $142EC
  $A2EE: c8          iny    ; PRG $142EE
  $A2EF: b1 06       lda ($06),y    ; PRG $142EF
  $A2F1: c1 18       cmp ($18,x)    ; PRG $142F1
  $A2F3: c8          iny    ; PRG $142F3
  $A2F4: b1 06       lda ($06),y    ; PRG $142F4
  $A2F6: a0 01       ldy #$01    ; PRG $142F6
  $A2F8: f1 18       sbc ($18),y    ; PRG $142F8
  $A2FA: 70 04       bvs $a300    ; PRG $142FA
  $A2FC: 30 07       bmi $a305    ; PRG $142FC
  $A2FE: 10 02       bpl $a302    ; PRG $142FE
  $A300: 10 03       bpl $a305    ; PRG $14300
  $A302: 4c 24 83    jmp $8324    ; PRG $14302
  $A305: a0 fa       ldy #$fa    ; PRG $14305
  $A307: b1 06       lda ($06),y    ; PRG $14307
  $A309: 85 18       sta $18    ; PRG $14309
  $A30B: c8          iny    ; PRG $1430B
  $A30C: b1 06       lda ($06),y    ; PRG $1430C
  $A30E: 85 19       sta $19    ; PRG $1430E
  $A310: a1 18       lda ($18,x)    ; PRG $14310
  $A312: c8          iny    ; PRG $14312
  $A313: 91 06       sta ($06),y    ; PRG $14313
  $A315: a0 01       ldy #$01    ; PRG $14315
  $A317: b1 18       lda ($18),y    ; PRG $14317
  $A319: a0 fd       ldy #$fd    ; PRG $14319
  $A31B: 91 06       sta ($06),y    ; PRG $1431B
  $A31D: a0 ff       ldy #$ff    ; PRG $1431D
  $A31F: b1 06       lda ($06),y    ; PRG $1431F
  $A321: 88          dey    ; PRG $14321
  $A322: 91 06       sta ($06),y    ; PRG $14322
  $A324: 4c b4 82    jmp $82b4    ; PRG $14324

; ---- sub_10_0327  [recovered]  <- (uncalled?)
  $A327: a9 02       lda #$02    ; PRG $14327
  $A329: 48          pha    ; PRG $14329
  $A32A: a9 bc       lda #$bc    ; PRG $1432A
  $A32C: 48          pha    ; PRG $1432C
  $A32D: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1432D
  $A330: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $14330
  $A333: a5 08       lda $08    ; PRG $14333
  $A335: a0 fc       ldy #$fc    ; PRG $14335
  $A337: d1 06       cmp ($06),y    ; PRG $14337
  $A339: a5 09       lda $09    ; PRG $14339
  $A33B: c8          iny    ; PRG $1433B
  $A33C: f1 06       sbc ($06),y    ; PRG $1433C
  $A33E: 70 04       bvs $a344    ; PRG $1433E
  $A340: 30 07       bmi $a349    ; PRG $14340
  $A342: 10 02       bpl $a346    ; PRG $14342
  $A344: 10 03       bpl $a349    ; PRG $14344
  $A346: 4c 70 83    jmp $8370    ; PRG $14346
  $A349: a0 f6       ldy #$f6    ; PRG $14349
  $A34B: b1 06       lda ($06),y    ; PRG $1434B
  $A34D: 85 18       sta $18    ; PRG $1434D
  $A34F: c8          iny    ; PRG $1434F
  $A350: b1 06       lda ($06),y    ; PRG $14350
  $A352: 85 19       sta $19    ; PRG $14352
  $A354: a9 03       lda #$03    ; PRG $14354
  $A356: a0 04       ldy #$04    ; PRG $14356
  $A358: 91 18       sta ($18),y    ; PRG $14358
  $A35A: a0 f6       ldy #$f6    ; PRG $1435A
  $A35C: b1 06       lda ($06),y    ; PRG $1435C
  $A35E: 85 18       sta $18    ; PRG $1435E
  $A360: c8          iny    ; PRG $14360
  $A361: b1 06       lda ($06),y    ; PRG $14361
  $A363: 85 19       sta $19    ; PRG $14363
  $A365: a0 fe       ldy #$fe    ; PRG $14365
  $A367: b1 06       lda ($06),y    ; PRG $14367
  $A369: a0 05       ldy #$05    ; PRG $14369
  $A36B: 91 18       sta ($18),y    ; PRG $1436B
  $A36D: 4c 7f 83    jmp $837f    ; PRG $1436D

; ---- sub_10_0370  [recovered]  <- (uncalled?)
  $A370: a0 0c       ldy #$0c    ; PRG $14370
  $A372: b1 04       lda ($04),y    ; PRG $14372
  $A374: 48          pha    ; PRG $14374
  $A375: 88          dey    ; PRG $14375
  $A376: b1 04       lda ($04),y    ; PRG $14376
  $A378: 48          pha    ; PRG $14378
  $A379: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $14379
  $A37C: 03 80 04    .db $03 $80 $04  -> vm $8003 argc 4    ; PRG $1437C
  $A37F: 60          rts    ; PRG $1437F

; ---- sub_10_0386  [stub]  <- (entry: bytecode/OS via $E299)
nat_10_0380: jsr $E299                    ; 10:A380  native-call prologue
            .db $00 $fa $ff            ; inline: argcount $00, frame $fffa
  $A386: 18          clc    ; PRG $14386
  $A387: a9 ff       lda #$ff    ; PRG $14387
  $A389: a0 0b       ldy #$0b    ; PRG $14389
  $A38B: 71 04       adc ($04),y    ; PRG $1438B
  $A38D: a0 fe       ldy #$fe    ; PRG $1438D
  $A38F: 91 06       sta ($06),y    ; PRG $1438F
  $A391: a9 ff       lda #$ff    ; PRG $14391
  $A393: a0 0c       ldy #$0c    ; PRG $14393
  $A395: 71 04       adc ($04),y    ; PRG $14395
  $A397: a0 ff       ldy #$ff    ; PRG $14397
  $A399: 91 06       sta ($06),y    ; PRG $14399
  $A39B: a9 33       lda #$33    ; PRG $1439B
  $A39D: 85 18       sta $18    ; PRG $1439D
  $A39F: 86 19       stx $19    ; PRG $1439F
  $A3A1: 88          dey    ; PRG $143A1
  $A3A2: b1 06       lda ($06),y    ; PRG $143A2
  $A3A4: 85 14       sta $14    ; PRG $143A4
  $A3A6: c8          iny    ; PRG $143A6
  $A3A7: b1 06       lda ($06),y    ; PRG $143A7
  $A3A9: 85 15       sta $15    ; PRG $143A9
  $A3AB: a0 14       ldy #$14    ; PRG $143AB
  $A3AD: a2 18       ldx #$18    ; PRG $143AD
  $A3AF: a9 10       lda #$10    ; PRG $143AF
  $A3B1: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $143B1
  $A3B4: 18          clc    ; PRG $143B4
  $A3B5: a5 10       lda $10    ; PRG $143B5
  $A3B7: 69 04       adc #$04    ; PRG $143B7
  $A3B9: a0 fa       ldy #$fa    ; PRG $143B9
  $A3BB: 91 06       sta ($06),y    ; PRG $143BB
  $A3BD: a5 11       lda $11    ; PRG $143BD
  $A3BF: 69 60       adc #$60    ; PRG $143BF
  $A3C1: c8          iny    ; PRG $143C1
  $A3C2: 91 06       sta ($06),y    ; PRG $143C2
  $A3C4: a9 05       lda #$05    ; PRG $143C4
  $A3C6: 85 18       sta $18    ; PRG $143C6
  $A3C8: 86 19       stx $19    ; PRG $143C8
  $A3CA: a0 fe       ldy #$fe    ; PRG $143CA
  $A3CC: b1 06       lda ($06),y    ; PRG $143CC
  $A3CE: 85 14       sta $14    ; PRG $143CE
  $A3D0: c8          iny    ; PRG $143D0
  $A3D1: b1 06       lda ($06),y    ; PRG $143D1
  $A3D3: 85 15       sta $15    ; PRG $143D3
  $A3D5: a0 14       ldy #$14    ; PRG $143D5
  $A3D7: a2 18       ldx #$18    ; PRG $143D7
  $A3D9: a9 10       lda #$10    ; PRG $143D9
  $A3DB: 20 d9 e1    jsr $e1d9   ; alu_div_push_remainder    ; PRG $143DB
  $A3DE: a5 10       lda $10    ; PRG $143DE
  $A3E0: a0 fe       ldy #$fe    ; PRG $143E0
  $A3E2: 91 06       sta ($06),y    ; PRG $143E2
  $A3E4: a5 11       lda $11    ; PRG $143E4
  $A3E6: c8          iny    ; PRG $143E6
  $A3E7: 91 06       sta ($06),y    ; PRG $143E7
  $A3E9: a9 02       lda #$02    ; PRG $143E9
  $A3EB: 85 18       sta $18    ; PRG $143EB
  $A3ED: 86 19       stx $19    ; PRG $143ED
  $A3EF: 88          dey    ; PRG $143EF
  $A3F0: b1 06       lda ($06),y    ; PRG $143F0
  $A3F2: 85 14       sta $14    ; PRG $143F2
  $A3F4: c8          iny    ; PRG $143F4
  $A3F5: b1 06       lda ($06),y    ; PRG $143F5
  $A3F7: 85 15       sta $15    ; PRG $143F7
  $A3F9: a0 14       ldy #$14    ; PRG $143F9
  $A3FB: a2 18       ldx #$18    ; PRG $143FB
  $A3FD: a9 10       lda #$10    ; PRG $143FD
  $A3FF: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $143FF
  $A402: 18          clc    ; PRG $14402
  $A403: a5 10       lda $10    ; PRG $14403
  $A405: 69 bf       adc #$bf    ; PRG $14405
  $A407: 85 18       sta $18    ; PRG $14407
  $A409: a5 11       lda $11    ; PRG $14409
  $A40B: 69 6f       adc #$6f    ; PRG $1440B
  $A40D: 85 19       sta $19    ; PRG $1440D
  $A40F: a1 18       lda ($18,x)    ; PRG $1440F
  $A411: 85 14       sta $14    ; PRG $14411
  $A413: 86 15       stx $15    ; PRG $14413
  $A415: a5 14       lda $14    ; PRG $14415
  $A417: a0 fc       ldy #$fc    ; PRG $14417
  $A419: 91 06       sta ($06),y    ; PRG $14419
  $A41B: a5 15       lda $15    ; PRG $1441B
  $A41D: c8          iny    ; PRG $1441D
  $A41E: 91 06       sta ($06),y    ; PRG $1441E
  $A420: 88          dey    ; PRG $14420
  $A421: b1 06       lda ($06),y    ; PRG $14421
  $A423: 85 08       sta $08    ; PRG $14423
  $A425: c8          iny    ; PRG $14425
  $A426: b1 06       lda ($06),y    ; PRG $14426
  $A428: 85 09       sta $09    ; PRG $14428
  $A42A: 4c d8 84    jmp $84d8    ; PRG $1442A

; ---- sub_10_042d  [recovered]  <- (uncalled?)
  $A42D: a0 fa       ldy #$fa    ; PRG $1442D
  $A42F: b1 06       lda ($06),y    ; PRG $1442F
  $A431: 85 18       sta $18    ; PRG $14431
  $A433: c8          iny    ; PRG $14433
  $A434: b1 06       lda ($06),y    ; PRG $14434
  $A436: 85 19       sta $19    ; PRG $14436
  $A438: 8a          txa    ; PRG $14438
  $A439: a0 04       ldy #$04    ; PRG $14439
  $A43B: 91 18       sta ($18),y    ; PRG $1443B
  $A43D: a0 fa       ldy #$fa    ; PRG $1443D
  $A43F: b1 06       lda ($06),y    ; PRG $1443F
  $A441: 85 18       sta $18    ; PRG $14441
  $A443: c8          iny    ; PRG $14443
  $A444: b1 06       lda ($06),y    ; PRG $14444
  $A446: 85 19       sta $19    ; PRG $14446
  $A448: a9 05       lda #$05    ; PRG $14448
  $A44A: 85 14       sta $14    ; PRG $1444A
  $A44C: 86 15       stx $15    ; PRG $1444C
  $A44E: c8          iny    ; PRG $1444E
  $A44F: b1 06       lda ($06),y    ; PRG $1444F
  $A451: 85 10       sta $10    ; PRG $14451
  $A453: c8          iny    ; PRG $14453
  $A454: b1 06       lda ($06),y    ; PRG $14454
  $A456: 85 11       sta $11    ; PRG $14456
  $A458: a0 10       ldy #$10    ; PRG $14458
  $A45A: a2 14       ldx #$14    ; PRG $1445A
  $A45C: a9 0c       lda #$0c    ; PRG $1445C
  $A45E: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1445E
  $A461: a2 18       ldx #$18    ; PRG $14461
  $A463: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $14463
  $A466: a2 0c       ldx #$0c    ; PRG $14466
  $A468: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $14468
  $A46B: 48          pha    ; PRG $1446B
  $A46C: a9 03       lda #$03    ; PRG $1446C
  $A46E: 48          pha    ; PRG $1446E
  $A46F: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1446F
  $A472: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $14472
  $A475: a2 0c       ldx #$0c    ; PRG $14475
  $A477: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $14477
  $A47A: 18          clc    ; PRG $1447A
  $A47B: a5 08       lda $08    ; PRG $1447B
  $A47D: 65 0c       adc $0c    ; PRG $1447D
  $A47F: 85 18       sta $18    ; PRG $1447F
  $A481: a5 09       lda $09    ; PRG $14481
  $A483: 65 0d       adc $0d    ; PRG $14483
  $A485: 85 19       sta $19    ; PRG $14485
  $A487: 18          clc    ; PRG $14487
  $A488: 98          tya    ; PRG $14488
  $A489: 65 18       adc $18    ; PRG $14489
  $A48B: 85 14       sta $14    ; PRG $1448B
  $A48D: 8a          txa    ; PRG $1448D
  $A48E: 65 19       adc $19    ; PRG $1448E
  $A490: 85 15       sta $15    ; PRG $14490
  $A492: a2 18       ldx #$18    ; PRG $14492
  $A494: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $14494
  $A497: a5 14       lda $14    ; PRG $14497
  $A499: a0 05       ldy #$05    ; PRG $14499
  $A49B: 91 18       sta ($18),y    ; PRG $1449B
  $A49D: 4c ed 84    jmp $84ed    ; PRG $1449D

; ---- sub_10_04a0  [recovered]  <- (uncalled?)
  $A4A0: 4c ed 84    jmp $84ed    ; PRG $144A0

; ---- sub_10_04a3  [recovered]  <- (uncalled?)
  $A4A3: a0 fa       ldy #$fa    ; PRG $144A3
  $A4A5: b1 06       lda ($06),y    ; PRG $144A5
  $A4A7: 85 18       sta $18    ; PRG $144A7
  $A4A9: c8          iny    ; PRG $144A9
  $A4AA: b1 06       lda ($06),y    ; PRG $144AA
  $A4AC: 85 19       sta $19    ; PRG $144AC
  $A4AE: 8a          txa    ; PRG $144AE
  $A4AF: a0 04       ldy #$04    ; PRG $144AF
  $A4B1: 91 18       sta ($18),y    ; PRG $144B1
  $A4B3: a0 fa       ldy #$fa    ; PRG $144B3
  $A4B5: b1 06       lda ($06),y    ; PRG $144B5
  $A4B7: 85 18       sta $18    ; PRG $144B7
  $A4B9: c8          iny    ; PRG $144B9
  $A4BA: b1 06       lda ($06),y    ; PRG $144BA
  $A4BC: 85 19       sta $19    ; PRG $144BC
  $A4BE: 8a          txa    ; PRG $144BE
  $A4BF: a0 05       ldy #$05    ; PRG $144BF
  $A4C1: 91 18       sta ($18),y    ; PRG $144C1
  $A4C3: 4c ed 84    jmp $84ed    ; PRG $144C3

; ---- sub_10_04c6  [recovered]  <- (uncalled?)
  $A4C6: a0 0c       ldy #$0c    ; PRG $144C6
  $A4C8: b1 04       lda ($04),y    ; PRG $144C8
  $A4CA: 48          pha    ; PRG $144CA
  $A4CB: 88          dey    ; PRG $144CB
  $A4CC: b1 04       lda ($04),y    ; PRG $144CC
  $A4CE: 48          pha    ; PRG $144CE
  $A4CF: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $144CF
  $A4D2: 34 82 04    .db $34 $82 $04  -> vm $8234 argc 4    ; PRG $144D2
  $A4D5: 4c ed 84    jmp $84ed    ; PRG $144D5

; ---- sub_10_04d8  [recovered]  <- (uncalled?)
  $A4D8: 20 45 e4    jsr $e445   ; inline_add_word    ; PRG $144D8
  $A4DB: 00          brk    ; PRG $144DB
  $A4DC: 00          brk    ; PRG $144DC
  $A4DD: 06 00       asl $00    ; PRG $144DD
  $A4DF: ed 84 2d    sbc $2d84    ; PRG $144DF
  $A4E2: 84 2d       sty $2d    ; PRG $144E2
  $A4E4: 84 2d       sty $2d    ; PRG $144E4
  $A4E6: 84 a0       sty $a0    ; PRG $144E6
  $A4E8: 84 a3       sty $a3    ; PRG $144E8
  $A4EA: 84 c6       sty $c6    ; PRG $144EA
  $A4EC: 84 60       sty $60    ; PRG $144EC
  $A4EE: 20 99 e2    jsr $e299   ; native_call_trampoline    ; PRG $144EE
  $A4F1: 00 f8 ff    .db $00 $f8 $ff  (argcount,frame)    ; PRG $144F1
  $A4F4: a9 05       lda #$05    ; PRG $144F4
  $A4F6: 85 18       sta $18    ; PRG $144F6
  $A4F8: 86 19       stx $19    ; PRG $144F8
  $A4FA: a0 0b       ldy #$0b    ; PRG $144FA
  $A4FC: b1 04       lda ($04),y    ; PRG $144FC
  $A4FE: 85 14       sta $14    ; PRG $144FE
  $A500: c8          iny    ; PRG $14500
  $A501: b1 04       lda ($04),y    ; PRG $14501
  $A503: 85 15       sta $15    ; PRG $14503
  $A505: a0 14       ldy #$14    ; PRG $14505
  $A507: a2 18       ldx #$18    ; PRG $14507
  $A509: a9 10       lda #$10    ; PRG $14509
  $A50B: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1450B
  $A50E: 18          clc    ; PRG $1450E
  $A50F: 98          tya    ; PRG $1450F
  $A510: 65 10       adc $10    ; PRG $14510
  $A512: a0 fc       ldy #$fc    ; PRG $14512
  $A514: 91 06       sta ($06),y    ; PRG $14514
  $A516: 8a          txa    ; PRG $14516
  $A517: 65 11       adc $11    ; PRG $14517
  $A519: c8          iny    ; PRG $14519
  $A51A: 91 06       sta ($06),y    ; PRG $1451A
  $A51C: a9 04       lda #$04    ; PRG $1451C
  $A51E: 85 18       sta $18    ; PRG $1451E
  $A520: 86 19       stx $19    ; PRG $14520
  $A522: 18          clc    ; PRG $14522
  $A523: a9 03       lda #$03    ; PRG $14523
  $A525: 88          dey    ; PRG $14525
  $A526: 71 06       adc ($06),y    ; PRG $14526
  $A528: 85 14       sta $14    ; PRG $14528
  $A52A: 8a          txa    ; PRG $1452A
  $A52B: c8          iny    ; PRG $1452B
  $A52C: 71 06       adc ($06),y    ; PRG $1452C
  $A52E: 85 15       sta $15    ; PRG $1452E
  $A530: a0 14       ldy #$14    ; PRG $14530
  $A532: a2 18       ldx #$18    ; PRG $14532
  $A534: a9 10       lda #$10    ; PRG $14534
  $A536: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $14536
  $A539: 18          clc    ; PRG $14539
  $A53A: a5 10       lda $10    ; PRG $1453A
  $A53C: 69 62       adc #$62    ; PRG $1453C
  $A53E: a0 fa       ldy #$fa    ; PRG $1453E
  $A540: 91 06       sta ($06),y    ; PRG $14540
  $A542: a5 11       lda $11    ; PRG $14542
  $A544: 69 66       adc #$66    ; PRG $14544
  $A546: c8          iny    ; PRG $14546
  $A547: 91 06       sta ($06),y    ; PRG $14547
  $A549: a9 04       lda #$04    ; PRG $14549
  $A54B: 85 18       sta $18    ; PRG $1454B
  $A54D: 86 19       stx $19    ; PRG $1454D
  $A54F: 18          clc    ; PRG $1454F
  $A550: a9 05       lda #$05    ; PRG $14550
  $A552: c8          iny    ; PRG $14552
  $A553: 71 06       adc ($06),y    ; PRG $14553
  $A555: 85 14       sta $14    ; PRG $14555
  $A557: 8a          txa    ; PRG $14557
  $A558: c8          iny    ; PRG $14558
  $A559: 71 06       adc ($06),y    ; PRG $14559
  $A55B: 85 15       sta $15    ; PRG $1455B
  $A55D: a0 14       ldy #$14    ; PRG $1455D
  $A55F: a2 18       ldx #$18    ; PRG $1455F
  $A561: a9 10       lda #$10    ; PRG $14561
  $A563: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $14563
  $A566: 18          clc    ; PRG $14566
  $A567: a5 10       lda $10    ; PRG $14567
  $A569: 69 62       adc #$62    ; PRG $14569
  $A56B: a0 f8       ldy #$f8    ; PRG $1456B
  $A56D: 91 06       sta ($06),y    ; PRG $1456D
  $A56F: a5 11       lda $11    ; PRG $1456F
  $A571: 69 66       adc #$66    ; PRG $14571
  $A573: c8          iny    ; PRG $14573
  $A574: 91 06       sta ($06),y    ; PRG $14574
  $A576: 8a          txa    ; PRG $14576
  $A577: a0 fe       ldy #$fe    ; PRG $14577
  $A579: 91 06       sta ($06),y    ; PRG $14579
  $A57B: c8          iny    ; PRG $1457B
  $A57C: 91 06       sta ($06),y    ; PRG $1457C
  $A57E: 4c 9f 85    jmp $859f    ; PRG $1457E

; ---- sub_10_04f4  [stub]  <- (entry: bytecode/OS via $E299)
nat_10_04ee: jsr $E299                    ; 10:A4EE  native-call prologue
            .db $00 $f8 $ff            ; inline: argcount $00, frame $fff8
  $A4F4: a9 05       lda #$05    ; PRG $144F4
  $A4F6: 85 18       sta $18    ; PRG $144F6
  $A4F8: 86 19       stx $19    ; PRG $144F8
  $A4FA: a0 0b       ldy #$0b    ; PRG $144FA
  $A4FC: b1 04       lda ($04),y    ; PRG $144FC
  $A4FE: 85 14       sta $14    ; PRG $144FE
  $A500: c8          iny    ; PRG $14500
  $A501: b1 04       lda ($04),y    ; PRG $14501
  $A503: 85 15       sta $15    ; PRG $14503
  $A505: a0 14       ldy #$14    ; PRG $14505
  $A507: a2 18       ldx #$18    ; PRG $14507
  $A509: a9 10       lda #$10    ; PRG $14509
  $A50B: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1450B
  $A50E: 18          clc    ; PRG $1450E
  $A50F: 98          tya    ; PRG $1450F
  $A510: 65 10       adc $10    ; PRG $14510
  $A512: a0 fc       ldy #$fc    ; PRG $14512
  $A514: 91 06       sta ($06),y    ; PRG $14514
  $A516: 8a          txa    ; PRG $14516
  $A517: 65 11       adc $11    ; PRG $14517
  $A519: c8          iny    ; PRG $14519
  $A51A: 91 06       sta ($06),y    ; PRG $1451A
  $A51C: a9 04       lda #$04    ; PRG $1451C
  $A51E: 85 18       sta $18    ; PRG $1451E
  $A520: 86 19       stx $19    ; PRG $14520
  $A522: 18          clc    ; PRG $14522
  $A523: a9 03       lda #$03    ; PRG $14523
  $A525: 88          dey    ; PRG $14525
  $A526: 71 06       adc ($06),y    ; PRG $14526
  $A528: 85 14       sta $14    ; PRG $14528
  $A52A: 8a          txa    ; PRG $1452A
  $A52B: c8          iny    ; PRG $1452B
  $A52C: 71 06       adc ($06),y    ; PRG $1452C
  $A52E: 85 15       sta $15    ; PRG $1452E
  $A530: a0 14       ldy #$14    ; PRG $14530
  $A532: a2 18       ldx #$18    ; PRG $14532
  $A534: a9 10       lda #$10    ; PRG $14534
  $A536: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $14536
  $A539: 18          clc    ; PRG $14539
  $A53A: a5 10       lda $10    ; PRG $1453A
  $A53C: 69 62       adc #$62    ; PRG $1453C
  $A53E: a0 fa       ldy #$fa    ; PRG $1453E
  $A540: 91 06       sta ($06),y    ; PRG $14540
  $A542: a5 11       lda $11    ; PRG $14542
  $A544: 69 66       adc #$66    ; PRG $14544
  $A546: c8          iny    ; PRG $14546
  $A547: 91 06       sta ($06),y    ; PRG $14547
  $A549: a9 04       lda #$04    ; PRG $14549
  $A54B: 85 18       sta $18    ; PRG $1454B
  $A54D: 86 19       stx $19    ; PRG $1454D
  $A54F: 18          clc    ; PRG $1454F
  $A550: a9 05       lda #$05    ; PRG $14550
  $A552: c8          iny    ; PRG $14552
  $A553: 71 06       adc ($06),y    ; PRG $14553
  $A555: 85 14       sta $14    ; PRG $14555
  $A557: 8a          txa    ; PRG $14557
  $A558: c8          iny    ; PRG $14558
  $A559: 71 06       adc ($06),y    ; PRG $14559
  $A55B: 85 15       sta $15    ; PRG $1455B
  $A55D: a0 14       ldy #$14    ; PRG $1455D
  $A55F: a2 18       ldx #$18    ; PRG $1455F
  $A561: a9 10       lda #$10    ; PRG $14561
  $A563: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $14563
  $A566: 18          clc    ; PRG $14566
  $A567: a5 10       lda $10    ; PRG $14567
  $A569: 69 62       adc #$62    ; PRG $14569
  $A56B: a0 f8       ldy #$f8    ; PRG $1456B
  $A56D: 91 06       sta ($06),y    ; PRG $1456D
  $A56F: a5 11       lda $11    ; PRG $1456F
  $A571: 69 66       adc #$66    ; PRG $14571
  $A573: c8          iny    ; PRG $14573
  $A574: 91 06       sta ($06),y    ; PRG $14574
  $A576: 8a          txa    ; PRG $14576
  $A577: a0 fe       ldy #$fe    ; PRG $14577
  $A579: 91 06       sta ($06),y    ; PRG $14579
  $A57B: c8          iny    ; PRG $1457B
  $A57C: 91 06       sta ($06),y    ; PRG $1457C
  $A57E: 4c 9f 85    jmp $859f    ; PRG $1457E

; ---- sub_10_0581  [recovered]  <- (uncalled?)
  $A581: 18          clc    ; PRG $14581
  $A582: a9 01       lda #$01    ; PRG $14582
  $A584: a0 fc       ldy #$fc    ; PRG $14584
  $A586: 71 06       adc ($06),y    ; PRG $14586
  $A588: 91 06       sta ($06),y    ; PRG $14588
  $A58A: 8a          txa    ; PRG $1458A
  $A58B: c8          iny    ; PRG $1458B
  $A58C: 71 06       adc ($06),y    ; PRG $1458C
  $A58E: 91 06       sta ($06),y    ; PRG $1458E
  $A590: 18          clc    ; PRG $14590
  $A591: a9 10       lda #$10    ; PRG $14591
  $A593: a0 fa       ldy #$fa    ; PRG $14593
  $A595: 71 06       adc ($06),y    ; PRG $14595
  $A597: 91 06       sta ($06),y    ; PRG $14597
  $A599: 8a          txa    ; PRG $14599
  $A59A: c8          iny    ; PRG $1459A
  $A59B: 71 06       adc ($06),y    ; PRG $1459B
  $A59D: 91 06       sta ($06),y    ; PRG $1459D
  $A59F: a0 fa       ldy #$fa    ; PRG $1459F
  $A5A1: b1 06       lda ($06),y    ; PRG $145A1
  $A5A3: a0 f8       ldy #$f8    ; PRG $145A3
  $A5A5: d1 06       cmp ($06),y    ; PRG $145A5
  $A5A7: a0 fb       ldy #$fb    ; PRG $145A7
  $A5A9: b1 06       lda ($06),y    ; PRG $145A9
  $A5AB: a0 f9       ldy #$f9    ; PRG $145AB
  $A5AD: f1 06       sbc ($06),y    ; PRG $145AD
  $A5AF: 90 03       bcc $a5b4    ; PRG $145AF
  $A5B1: 4c 01 86    jmp $8601    ; PRG $145B1
  $A5B4: c8          iny    ; PRG $145B4
  $A5B5: b1 06       lda ($06),y    ; PRG $145B5
  $A5B7: 85 18       sta $18    ; PRG $145B7
  $A5B9: c8          iny    ; PRG $145B9
  $A5BA: b1 06       lda ($06),y    ; PRG $145BA
  $A5BC: 85 19       sta $19    ; PRG $145BC
  $A5BE: a0 0f       ldy #$0f    ; PRG $145BE
  $A5C0: b1 18       lda ($18),y    ; PRG $145C0
  $A5C2: 85 14       sta $14    ; PRG $145C2
  $A5C4: 86 15       stx $15    ; PRG $145C4
  $A5C6: a5 14       lda $14    ; PRG $145C6
  $A5C8: 29 08       and #$08    ; PRG $145C8
  $A5CA: f0 03       beq $a5cf    ; PRG $145CA
  $A5CC: 4c fe 85    jmp $85fe    ; PRG $145CC
  $A5CF: a0 0d       ldy #$0d    ; PRG $145CF
  $A5D1: b1 04       lda ($04),y    ; PRG $145D1
  $A5D3: 85 18       sta $18    ; PRG $145D3
  $A5D5: c8          iny    ; PRG $145D5
  $A5D6: b1 04       lda ($04),y    ; PRG $145D6
  $A5D8: 85 19       sta $19    ; PRG $145D8
  $A5DA: a0 fc       ldy #$fc    ; PRG $145DA
  $A5DC: b1 06       lda ($06),y    ; PRG $145DC
  $A5DE: 81 18       sta ($18,x)    ; PRG $145DE
  $A5E0: 18          clc    ; PRG $145E0
  $A5E1: a9 01       lda #$01    ; PRG $145E1
  $A5E3: a0 0d       ldy #$0d    ; PRG $145E3
  $A5E5: 71 04       adc ($04),y    ; PRG $145E5
  $A5E7: 91 04       sta ($04),y    ; PRG $145E7
  $A5E9: 8a          txa    ; PRG $145E9
  $A5EA: c8          iny    ; PRG $145EA
  $A5EB: 71 04       adc ($04),y    ; PRG $145EB
  $A5ED: 91 04       sta ($04),y    ; PRG $145ED
  $A5EF: 18          clc    ; PRG $145EF
  $A5F0: a9 01       lda #$01    ; PRG $145F0
  $A5F2: a0 fe       ldy #$fe    ; PRG $145F2
  $A5F4: 71 06       adc ($06),y    ; PRG $145F4
  $A5F6: 91 06       sta ($06),y    ; PRG $145F6
  $A5F8: 8a          txa    ; PRG $145F8
  $A5F9: c8          iny    ; PRG $145F9
  $A5FA: 71 06       adc ($06),y    ; PRG $145FA
  $A5FC: 91 06       sta ($06),y    ; PRG $145FC
  $A5FE: 4c 81 85    jmp $8581    ; PRG $145FE

; ---- sub_10_0601  [recovered]  <- (uncalled?)
  $A601: a0 fe       ldy #$fe    ; PRG $14601
  $A603: b1 06       lda ($06),y    ; PRG $14603
  $A605: 85 08       sta $08    ; PRG $14605
  $A607: c8          iny    ; PRG $14607
  $A608: b1 06       lda ($06),y    ; PRG $14608
  $A60A: 85 09       sta $09    ; PRG $1460A
  $A60C: 60          rts    ; PRG $1460C

; ---- sub_10_0613  [stub]  <- (entry: bytecode/OS via $E299)
nat_10_060d: jsr $E299                    ; 10:A60D  native-call prologue
            .db $00 $f8 $ff            ; inline: argcount $00, frame $fff8
  $A613: a9 05       lda #$05    ; PRG $14613
  $A615: 85 18       sta $18    ; PRG $14615
  $A617: 86 19       stx $19    ; PRG $14617
  $A619: a0 0b       ldy #$0b    ; PRG $14619
  $A61B: b1 04       lda ($04),y    ; PRG $1461B
  $A61D: 85 14       sta $14    ; PRG $1461D
  $A61F: c8          iny    ; PRG $1461F
  $A620: b1 04       lda ($04),y    ; PRG $14620
  $A622: 85 15       sta $15    ; PRG $14622
  $A624: a0 14       ldy #$14    ; PRG $14624
  $A626: a2 18       ldx #$18    ; PRG $14626
  $A628: a9 10       lda #$10    ; PRG $14628
  $A62A: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1462A
  $A62D: 18          clc    ; PRG $1462D
  $A62E: 98          tya    ; PRG $1462E
  $A62F: 65 10       adc $10    ; PRG $1462F
  $A631: a0 fc       ldy #$fc    ; PRG $14631
  $A633: 91 06       sta ($06),y    ; PRG $14633
  $A635: 8a          txa    ; PRG $14635
  $A636: 65 11       adc $11    ; PRG $14636
  $A638: c8          iny    ; PRG $14638
  $A639: 91 06       sta ($06),y    ; PRG $14639
  $A63B: a9 04       lda #$04    ; PRG $1463B
  $A63D: 85 18       sta $18    ; PRG $1463D
  $A63F: 86 19       stx $19    ; PRG $1463F
  $A641: 88          dey    ; PRG $14641
  $A642: b1 06       lda ($06),y    ; PRG $14642
  $A644: 85 14       sta $14    ; PRG $14644
  $A646: c8          iny    ; PRG $14646
  $A647: b1 06       lda ($06),y    ; PRG $14647
  $A649: 85 15       sta $15    ; PRG $14649
  $A64B: a0 14       ldy #$14    ; PRG $1464B
  $A64D: a2 18       ldx #$18    ; PRG $1464D
  $A64F: a9 10       lda #$10    ; PRG $1464F
  $A651: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $14651
  $A654: 18          clc    ; PRG $14654
  $A655: a5 10       lda $10    ; PRG $14655
  $A657: 69 62       adc #$62    ; PRG $14657
  $A659: a0 fa       ldy #$fa    ; PRG $14659
  $A65B: 91 06       sta ($06),y    ; PRG $1465B
  $A65D: a5 11       lda $11    ; PRG $1465D
  $A65F: 69 66       adc #$66    ; PRG $1465F
  $A661: c8          iny    ; PRG $14661
  $A662: 91 06       sta ($06),y    ; PRG $14662
  $A664: 18          clc    ; PRG $14664
  $A665: a9 30       lda #$30    ; PRG $14665
  $A667: 88          dey    ; PRG $14667
  $A668: 71 06       adc ($06),y    ; PRG $14668
  $A66A: a0 f8       ldy #$f8    ; PRG $1466A
  $A66C: 91 06       sta ($06),y    ; PRG $1466C
  $A66E: 8a          txa    ; PRG $1466E
  $A66F: a0 fb       ldy #$fb    ; PRG $1466F
  $A671: 71 06       adc ($06),y    ; PRG $14671
  $A673: a0 f9       ldy #$f9    ; PRG $14673
  $A675: 91 06       sta ($06),y    ; PRG $14675
  $A677: 8a          txa    ; PRG $14677
  $A678: a0 fe       ldy #$fe    ; PRG $14678
  $A67A: 91 06       sta ($06),y    ; PRG $1467A
  $A67C: c8          iny    ; PRG $1467C
  $A67D: 91 06       sta ($06),y    ; PRG $1467D
  $A67F: 4c a0 86    jmp $86a0    ; PRG $1467F

; ---- sub_10_0682  [recovered]  <- (uncalled?)
  $A682: 18          clc    ; PRG $14682
  $A683: a9 01       lda #$01    ; PRG $14683
  $A685: a0 fc       ldy #$fc    ; PRG $14685
  $A687: 71 06       adc ($06),y    ; PRG $14687
  $A689: 91 06       sta ($06),y    ; PRG $14689
  $A68B: 8a          txa    ; PRG $1468B
  $A68C: c8          iny    ; PRG $1468C
  $A68D: 71 06       adc ($06),y    ; PRG $1468D
  $A68F: 91 06       sta ($06),y    ; PRG $1468F
  $A691: 18          clc    ; PRG $14691
  $A692: a9 10       lda #$10    ; PRG $14692
  $A694: a0 fa       ldy #$fa    ; PRG $14694
  $A696: 71 06       adc ($06),y    ; PRG $14696
  $A698: 91 06       sta ($06),y    ; PRG $14698
  $A69A: 8a          txa    ; PRG $1469A
  $A69B: c8          iny    ; PRG $1469B
  $A69C: 71 06       adc ($06),y    ; PRG $1469C
  $A69E: 91 06       sta ($06),y    ; PRG $1469E
  $A6A0: a0 fa       ldy #$fa    ; PRG $146A0
  $A6A2: b1 06       lda ($06),y    ; PRG $146A2
  $A6A4: a0 f8       ldy #$f8    ; PRG $146A4
  $A6A6: d1 06       cmp ($06),y    ; PRG $146A6
  $A6A8: a0 fb       ldy #$fb    ; PRG $146A8
  $A6AA: b1 06       lda ($06),y    ; PRG $146AA
  $A6AC: a0 f9       ldy #$f9    ; PRG $146AC
  $A6AE: f1 06       sbc ($06),y    ; PRG $146AE
  $A6B0: 90 03       bcc $a6b5    ; PRG $146B0
  $A6B2: 4c 02 87    jmp $8702   ; char_create_loop    ; PRG $146B2
  $A6B5: c8          iny    ; PRG $146B5
  $A6B6: b1 06       lda ($06),y    ; PRG $146B6
  $A6B8: 85 18       sta $18    ; PRG $146B8
  $A6BA: c8          iny    ; PRG $146BA
  $A6BB: b1 06       lda ($06),y    ; PRG $146BB
  $A6BD: 85 19       sta $19    ; PRG $146BD
  $A6BF: a0 0f       ldy #$0f    ; PRG $146BF
  $A6C1: b1 18       lda ($18),y    ; PRG $146C1
  $A6C3: 85 14       sta $14    ; PRG $146C3
  $A6C5: 86 15       stx $15    ; PRG $146C5
  $A6C7: a5 14       lda $14    ; PRG $146C7
  $A6C9: 29 08       and #$08    ; PRG $146C9
  $A6CB: f0 03       beq $a6d0    ; PRG $146CB
  $A6CD: 4c ff 86    jmp $86ff    ; PRG $146CD
  $A6D0: a0 0d       ldy #$0d    ; PRG $146D0
  $A6D2: b1 04       lda ($04),y    ; PRG $146D2
  $A6D4: 85 18       sta $18    ; PRG $146D4
  $A6D6: c8          iny    ; PRG $146D6
  $A6D7: b1 04       lda ($04),y    ; PRG $146D7
  $A6D9: 85 19       sta $19    ; PRG $146D9
  $A6DB: a0 fc       ldy #$fc    ; PRG $146DB
  $A6DD: b1 06       lda ($06),y    ; PRG $146DD
  $A6DF: 81 18       sta ($18,x)    ; PRG $146DF
  $A6E1: 18          clc    ; PRG $146E1
  $A6E2: a9 01       lda #$01    ; PRG $146E2
  $A6E4: a0 0d       ldy #$0d    ; PRG $146E4
  $A6E6: 71 04       adc ($04),y    ; PRG $146E6
  $A6E8: 91 04       sta ($04),y    ; PRG $146E8
  $A6EA: 8a          txa    ; PRG $146EA
  $A6EB: c8          iny    ; PRG $146EB
  $A6EC: 71 04       adc ($04),y    ; PRG $146EC
  $A6EE: 91 04       sta ($04),y    ; PRG $146EE
  $A6F0: 18          clc    ; PRG $146F0
  $A6F1: a9 01       lda #$01    ; PRG $146F1
  $A6F3: a0 fe       ldy #$fe    ; PRG $146F3
  $A6F5: 71 06       adc ($06),y    ; PRG $146F5
  $A6F7: 91 06       sta ($06),y    ; PRG $146F7
  $A6F9: 8a          txa    ; PRG $146F9
  $A6FA: c8          iny    ; PRG $146FA
  $A6FB: 71 06       adc ($06),y    ; PRG $146FB
  $A6FD: 91 06       sta ($06),y    ; PRG $146FD
  $A6FF: 4c 82 86    jmp $8682    ; PRG $146FF

; ---- sub_10_0702  [recovered]  <- (uncalled?)
  $A702: a0 fe       ldy #$fe    ; PRG $14702
  $A704: b1 06       lda ($06),y    ; PRG $14704
  $A706: 85 08       sta $08    ; PRG $14706
  $A708: c8          iny    ; PRG $14708
  $A709: b1 06       lda ($06),y    ; PRG $14709
  $A70B: 85 09       sta $09    ; PRG $1470B
  $A70D: 60          rts    ; PRG $1470D

; ---- sub_10_0714  [stub]  <- (entry: bytecode/OS via $E299)
nat_10_070e: jsr $E299                    ; 10:A70E  native-call prologue
            .db $00 $f5 $ff            ; inline: argcount $00, frame $fff5
  $A714: a9 33       lda #$33    ; PRG $14714
  $A716: 85 18       sta $18    ; PRG $14716
  $A718: 86 19       stx $19    ; PRG $14718
  $A71A: 18          clc    ; PRG $1471A
  $A71B: a9 ff       lda #$ff    ; PRG $1471B
  $A71D: a0 0b       ldy #$0b    ; PRG $1471D
  $A71F: 71 04       adc ($04),y    ; PRG $1471F
  $A721: 85 14       sta $14    ; PRG $14721
  $A723: a9 ff       lda #$ff    ; PRG $14723
  $A725: c8          iny    ; PRG $14725
  $A726: 71 04       adc ($04),y    ; PRG $14726
  $A728: 85 15       sta $15    ; PRG $14728
  $A72A: a0 14       ldy #$14    ; PRG $1472A
  $A72C: a2 18       ldx #$18    ; PRG $1472C
  $A72E: a9 10       lda #$10    ; PRG $1472E
  $A730: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $14730
  $A733: 18          clc    ; PRG $14733
  $A734: a5 10       lda $10    ; PRG $14734
  $A736: 69 04       adc #$04    ; PRG $14736
  $A738: a0 f5       ldy #$f5    ; PRG $14738
  $A73A: 91 06       sta ($06),y    ; PRG $1473A
  $A73C: a5 11       lda $11    ; PRG $1473C
  $A73E: 69 60       adc #$60    ; PRG $1473E
  $A740: c8          iny    ; PRG $14740
  $A741: 91 06       sta ($06),y    ; PRG $14741
  $A743: a9 05       lda #$05    ; PRG $14743
  $A745: 85 18       sta $18    ; PRG $14745
  $A747: 86 19       stx $19    ; PRG $14747
  $A749: 18          clc    ; PRG $14749
  $A74A: a9 ff       lda #$ff    ; PRG $1474A
  $A74C: a0 0b       ldy #$0b    ; PRG $1474C
  $A74E: 71 04       adc ($04),y    ; PRG $1474E
  $A750: 85 14       sta $14    ; PRG $14750
  $A752: a9 ff       lda #$ff    ; PRG $14752
  $A754: c8          iny    ; PRG $14754
  $A755: 71 04       adc ($04),y    ; PRG $14755
  $A757: 85 15       sta $15    ; PRG $14757
  $A759: a0 14       ldy #$14    ; PRG $14759
  $A75B: a2 18       ldx #$18    ; PRG $1475B
  $A75D: a9 10       lda #$10    ; PRG $1475D
  $A75F: 20 d9 e1    jsr $e1d9   ; alu_div_push_remainder    ; PRG $1475F
  $A762: a5 10       lda $10    ; PRG $14762
  $A764: a0 f9       ldy #$f9    ; PRG $14764
  $A766: 91 06       sta ($06),y    ; PRG $14766
  $A768: a5 11       lda $11    ; PRG $14768
  $A76A: c8          iny    ; PRG $1476A
  $A76B: 91 06       sta ($06),y    ; PRG $1476B
  $A76D: a9 02       lda #$02    ; PRG $1476D
  $A76F: 85 18       sta $18    ; PRG $1476F
  $A771: 86 19       stx $19    ; PRG $14771
  $A773: a0 0d       ldy #$0d    ; PRG $14773
  $A775: b1 04       lda ($04),y    ; PRG $14775
  $A777: 85 14       sta $14    ; PRG $14777
  $A779: c8          iny    ; PRG $14779
  $A77A: b1 04       lda ($04),y    ; PRG $1477A
  $A77C: 85 15       sta $15    ; PRG $1477C
  $A77E: a0 14       ldy #$14    ; PRG $1477E
  $A780: a2 18       ldx #$18    ; PRG $14780
  $A782: a9 10       lda #$10    ; PRG $14782
  $A784: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $14784
  $A787: 18          clc    ; PRG $14787
  $A788: a5 10       lda $10    ; PRG $14788
  $A78A: 69 bc       adc #$bc    ; PRG $1478A
  $A78C: 85 18       sta $18    ; PRG $1478C
  $A78E: a5 11       lda $11    ; PRG $1478E
  $A790: 69 6f       adc #$6f    ; PRG $14790
  $A792: 85 19       sta $19    ; PRG $14792
  $A794: a9 02       lda #$02    ; PRG $14794
  $A796: 85 14       sta $14    ; PRG $14796
  $A798: 86 15       stx $15    ; PRG $14798
  $A79A: a0 f9       ldy #$f9    ; PRG $1479A
  $A79C: b1 06       lda ($06),y    ; PRG $1479C
  $A79E: 85 10       sta $10    ; PRG $1479E
  $A7A0: c8          iny    ; PRG $147A0
  $A7A1: b1 06       lda ($06),y    ; PRG $147A1
  $A7A3: 85 11       sta $11    ; PRG $147A3
  $A7A5: a0 10       ldy #$10    ; PRG $147A5
  $A7A7: a2 14       ldx #$14    ; PRG $147A7
  $A7A9: a9 0c       lda #$0c    ; PRG $147A9
  $A7AB: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $147AB
  $A7AE: 18          clc    ; PRG $147AE
  $A7AF: a5 0c       lda $0c    ; PRG $147AF
  $A7B1: 69 bc       adc #$bc    ; PRG $147B1
  $A7B3: 85 14       sta $14    ; PRG $147B3
  $A7B5: a5 0d       lda $0d    ; PRG $147B5
  $A7B7: 69 6f       adc #$6f    ; PRG $147B7
  $A7B9: 85 15       sta $15    ; PRG $147B9
  $A7BB: a1 14       lda ($14,x)    ; PRG $147BB
  $A7BD: c1 18       cmp ($18,x)    ; PRG $147BD
  $A7BF: b1 14       lda ($14),y    ; PRG $147BF
  $A7C1: f1 18       sbc ($18),y    ; PRG $147C1
  $A7C3: 90 03       bcc $a7c8    ; PRG $147C3
  $A7C5: 4c 71 88    jmp $8871    ; PRG $147C5
  $A7C8: 18          clc    ; PRG $147C8
  $A7C9: a9 fb       lda #$fb    ; PRG $147C9
  $A7CB: 65 06       adc $06    ; PRG $147CB
  $A7CD: 85 18       sta $18    ; PRG $147CD
  $A7CF: 8a          txa    ; PRG $147CF
  $A7D0: 65 07       adc $07    ; PRG $147D0
  $A7D2: 85 19       sta $19    ; PRG $147D2
  $A7D4: a5 19       lda $19    ; PRG $147D4
  $A7D6: 48          pha    ; PRG $147D6
  $A7D7: a5 18       lda $18    ; PRG $147D7
  $A7D9: 48          pha    ; PRG $147D9
  $A7DA: a0 0e       ldy #$0e    ; PRG $147DA
  $A7DC: b1 04       lda ($04),y    ; PRG $147DC
  $A7DE: 48          pha    ; PRG $147DE
  $A7DF: 88          dey    ; PRG $147DF
  $A7E0: b1 04       lda ($04),y    ; PRG $147E0
  $A7E2: 48          pha    ; PRG $147E2
  $A7E3: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $147E3
  $A7E6: 0d 86 06    .db $0d $86 $06  -> vm $860D argc 6    ; PRG $147E6
  $A7E9: a5 08       lda $08    ; PRG $147E9
  $A7EB: a0 f7       ldy #$f7    ; PRG $147EB
  $A7ED: 91 06       sta ($06),y    ; PRG $147ED
  $A7EF: a5 09       lda $09    ; PRG $147EF
  $A7F1: c8          iny    ; PRG $147F1
  $A7F2: 91 06       sta ($06),y    ; PRG $147F2
  $A7F4: 88          dey    ; PRG $147F4
  $A7F5: b1 06       lda ($06),y    ; PRG $147F5
  $A7F7: c8          iny    ; PRG $147F7
  $A7F8: 11 06       ora ($06),y    ; PRG $147F8
  $A7FA: d0 03       bne $a7ff    ; PRG $147FA
  $A7FC: 4c 5f 88    jmp $885f    ; PRG $147FC
  $A7FF: a0 f5       ldy #$f5    ; PRG $147FF
  $A801: b1 06       lda ($06),y    ; PRG $14801
  $A803: 85 18       sta $18    ; PRG $14803
  $A805: c8          iny    ; PRG $14805
  $A806: b1 06       lda ($06),y    ; PRG $14806
  $A808: 85 19       sta $19    ; PRG $14808
  $A80A: 8a          txa    ; PRG $1480A
  $A80B: a0 04       ldy #$04    ; PRG $1480B
  $A80D: 91 18       sta ($18),y    ; PRG $1480D
  $A80F: a0 f5       ldy #$f5    ; PRG $1480F
  $A811: b1 06       lda ($06),y    ; PRG $14811
  $A813: 85 18       sta $18    ; PRG $14813
  $A815: c8          iny    ; PRG $14815
  $A816: b1 06       lda ($06),y    ; PRG $14816
  $A818: 85 19       sta $19    ; PRG $14818
  $A81A: 18          clc    ; PRG $1481A
  $A81B: a9 fb       lda #$fb    ; PRG $1481B
  $A81D: 65 06       adc $06    ; PRG $1481D
  $A81F: 85 14       sta $14    ; PRG $1481F
  $A821: 8a          txa    ; PRG $14821
  $A822: 65 07       adc $07    ; PRG $14822
  $A824: 85 15       sta $15    ; PRG $14824
  $A826: a2 18       ldx #$18    ; PRG $14826
  $A828: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $14828
  $A82B: a2 14       ldx #$14    ; PRG $1482B
  $A82D: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $1482D
  $A830: a0 f8       ldy #$f8    ; PRG $14830
  $A832: b1 06       lda ($06),y    ; PRG $14832
  $A834: 48          pha    ; PRG $14834
  $A835: 88          dey    ; PRG $14835
  $A836: b1 06       lda ($06),y    ; PRG $14836
  $A838: 48          pha    ; PRG $14838
  $A839: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $14839
  $A83C: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $1483C
  $A83F: a2 14       ldx #$14    ; PRG $1483F
  $A841: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $14841
  $A844: 18          clc    ; PRG $14844
  $A845: a5 08       lda $08    ; PRG $14845
  $A847: 65 14       adc $14    ; PRG $14847
  $A849: 85 18       sta $18    ; PRG $14849
  $A84B: a5 09       lda $09    ; PRG $1484B
  $A84D: 65 15       adc $15    ; PRG $1484D
  $A84F: 85 19       sta $19    ; PRG $1484F
  $A851: a2 14       ldx #$14    ; PRG $14851
  $A853: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $14853
  $A856: a1 18       lda ($18,x)    ; PRG $14856
  $A858: a0 05       ldy #$05    ; PRG $14858
  $A85A: 91 14       sta ($14),y    ; PRG $1485A
  $A85C: 4c 6e 88    jmp $886e    ; PRG $1485C

; ---- sub_10_085f  [recovered]  <- (uncalled?)
  $A85F: a0 0c       ldy #$0c    ; PRG $1485F
  $A861: b1 04       lda ($04),y    ; PRG $14861
  $A863: 48          pha    ; PRG $14863
  $A864: 88          dey    ; PRG $14864
  $A865: b1 04       lda ($04),y    ; PRG $14865
  $A867: 48          pha    ; PRG $14867
  $A868: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $14868
  $A86B: 03 80 04    .db $03 $80 $04  -> vm $8003 argc 4    ; PRG $1486B
  $A86E: 4c 17 89    jmp $8917    ; PRG $1486E

; ---- sub_10_0871  [recovered]  <- (uncalled?)
  $A871: 18          clc    ; PRG $14871
  $A872: a9 fb       lda #$fb    ; PRG $14872
  $A874: 65 06       adc $06    ; PRG $14874
  $A876: 85 18       sta $18    ; PRG $14876
  $A878: 8a          txa    ; PRG $14878
  $A879: 65 07       adc $07    ; PRG $14879
  $A87B: 85 19       sta $19    ; PRG $1487B
  $A87D: a5 19       lda $19    ; PRG $1487D
  $A87F: 48          pha    ; PRG $1487F
  $A880: a5 18       lda $18    ; PRG $14880
  $A882: 48          pha    ; PRG $14882
  $A883: a0 0e       ldy #$0e    ; PRG $14883
  $A885: b1 04       lda ($04),y    ; PRG $14885
  $A887: 48          pha    ; PRG $14887
  $A888: 88          dey    ; PRG $14888
  $A889: b1 04       lda ($04),y    ; PRG $14889
  $A88B: 48          pha    ; PRG $1488B
  $A88C: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1488C
  $A88F: ee 84 06    .db $ee $84 $06  -> vm $84EE argc 6    ; PRG $1488F
  $A892: a5 08       lda $08    ; PRG $14892
  $A894: a0 f7       ldy #$f7    ; PRG $14894
  $A896: 91 06       sta ($06),y    ; PRG $14896
  $A898: a5 09       lda $09    ; PRG $14898
  $A89A: c8          iny    ; PRG $1489A
  $A89B: 91 06       sta ($06),y    ; PRG $1489B
  $A89D: 88          dey    ; PRG $1489D
  $A89E: b1 06       lda ($06),y    ; PRG $1489E
  $A8A0: c8          iny    ; PRG $148A0
  $A8A1: 11 06       ora ($06),y    ; PRG $148A1
  $A8A3: d0 03       bne $a8a8    ; PRG $148A3
  $A8A5: 4c 08 89    jmp $8908    ; PRG $148A5
  $A8A8: a0 f5       ldy #$f5    ; PRG $148A8
  $A8AA: b1 06       lda ($06),y    ; PRG $148AA
  $A8AC: 85 18       sta $18    ; PRG $148AC
  $A8AE: c8          iny    ; PRG $148AE
  $A8AF: b1 06       lda ($06),y    ; PRG $148AF
  $A8B1: 85 19       sta $19    ; PRG $148B1
  $A8B3: 8a          txa    ; PRG $148B3
  $A8B4: a0 04       ldy #$04    ; PRG $148B4
  $A8B6: 91 18       sta ($18),y    ; PRG $148B6
  $A8B8: a0 f5       ldy #$f5    ; PRG $148B8
  $A8BA: b1 06       lda ($06),y    ; PRG $148BA
  $A8BC: 85 18       sta $18    ; PRG $148BC
  $A8BE: c8          iny    ; PRG $148BE
  $A8BF: b1 06       lda ($06),y    ; PRG $148BF
  $A8C1: 85 19       sta $19    ; PRG $148C1
  $A8C3: 18          clc    ; PRG $148C3
  $A8C4: a9 fb       lda #$fb    ; PRG $148C4
  $A8C6: 65 06       adc $06    ; PRG $148C6
  $A8C8: 85 14       sta $14    ; PRG $148C8
  $A8CA: 8a          txa    ; PRG $148CA
  $A8CB: 65 07       adc $07    ; PRG $148CB
  $A8CD: 85 15       sta $15    ; PRG $148CD
  $A8CF: a2 18       ldx #$18    ; PRG $148CF
  $A8D1: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $148D1
  $A8D4: a2 14       ldx #$14    ; PRG $148D4
  $A8D6: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $148D6
  $A8D9: a0 f8       ldy #$f8    ; PRG $148D9
  $A8DB: b1 06       lda ($06),y    ; PRG $148DB
  $A8DD: 48          pha    ; PRG $148DD
  $A8DE: 88          dey    ; PRG $148DE
  $A8DF: b1 06       lda ($06),y    ; PRG $148DF
  $A8E1: 48          pha    ; PRG $148E1
  $A8E2: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $148E2
  $A8E5: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $148E5
  $A8E8: a2 14       ldx #$14    ; PRG $148E8
  $A8EA: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $148EA
  $A8ED: 18          clc    ; PRG $148ED
  $A8EE: a5 08       lda $08    ; PRG $148EE
  $A8F0: 65 14       adc $14    ; PRG $148F0
  $A8F2: 85 18       sta $18    ; PRG $148F2
  $A8F4: a5 09       lda $09    ; PRG $148F4
  $A8F6: 65 15       adc $15    ; PRG $148F6
  $A8F8: 85 19       sta $19    ; PRG $148F8
  $A8FA: a2 14       ldx #$14    ; PRG $148FA
  $A8FC: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $148FC
  $A8FF: a1 18       lda ($18,x)    ; PRG $148FF
  $A901: a0 05       ldy #$05    ; PRG $14901
  $A903: 91 14       sta ($14),y    ; PRG $14903
  $A905: 4c 17 89    jmp $8917    ; PRG $14905

; ---- sub_10_0908  [recovered]  <- (uncalled?)
  $A908: a0 0c       ldy #$0c    ; PRG $14908
  $A90A: b1 04       lda ($04),y    ; PRG $1490A
  $A90C: 48          pha    ; PRG $1490C
  $A90D: 88          dey    ; PRG $1490D
  $A90E: b1 04       lda ($04),y    ; PRG $1490E
  $A910: 48          pha    ; PRG $14910
  $A911: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $14911
  $A914: 03 80 04    .db $03 $80 $04  -> vm $8003 argc 4    ; PRG $14914
  $A917: 60          rts    ; PRG $14917

; ---- sub_10_091e  [stub]  <- (entry: bytecode/OS via $E299)
nat_10_0918: jsr $E299                    ; 10:A918  native-call prologue
            .db $00 $f8 $ff            ; inline: argcount $00, frame $fff8
  $A91E: a9 04       lda #$04    ; PRG $1491E
  $A920: 85 18       sta $18    ; PRG $14920
  $A922: 86 19       stx $19    ; PRG $14922
  $A924: a9 10       lda #$10    ; PRG $14924
  $A926: a0 fc       ldy #$fc    ; PRG $14926
  $A928: 91 06       sta ($06),y    ; PRG $14928
  $A92A: 85 14       sta $14    ; PRG $1492A
  $A92C: 8a          txa    ; PRG $1492C
  $A92D: c8          iny    ; PRG $1492D
  $A92E: 91 06       sta ($06),y    ; PRG $1492E
  $A930: 85 15       sta $15    ; PRG $14930
  $A932: a0 14       ldy #$14    ; PRG $14932
  $A934: a2 18       ldx #$18    ; PRG $14934
  $A936: a9 10       lda #$10    ; PRG $14936
  $A938: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $14938
  $A93B: 18          clc    ; PRG $1493B
  $A93C: a5 10       lda $10    ; PRG $1493C
  $A93E: 69 62       adc #$62    ; PRG $1493E
  $A940: a0 fa       ldy #$fa    ; PRG $14940
  $A942: 91 06       sta ($06),y    ; PRG $14942
  $A944: a5 11       lda $11    ; PRG $14944
  $A946: 69 66       adc #$66    ; PRG $14946
  $A948: c8          iny    ; PRG $14948
  $A949: 91 06       sta ($06),y    ; PRG $14949
  $A94B: a9 b2       lda #$b2    ; PRG $1494B
  $A94D: a0 f8       ldy #$f8    ; PRG $1494D
  $A94F: 91 06       sta ($06),y    ; PRG $1494F
  $A951: a9 67       lda #$67    ; PRG $14951
  $A953: c8          iny    ; PRG $14953
  $A954: 91 06       sta ($06),y    ; PRG $14954
  $A956: 8a          txa    ; PRG $14956
  $A957: a0 fe       ldy #$fe    ; PRG $14957
  $A959: 91 06       sta ($06),y    ; PRG $14959
  $A95B: c8          iny    ; PRG $1495B
  $A95C: 91 06       sta ($06),y    ; PRG $1495C
  $A95E: 4c 7f 89    jmp $897f    ; PRG $1495E

; ---- sub_10_0961  [recovered]  <- (uncalled?)
  $A961: 18          clc    ; PRG $14961
  $A962: a9 01       lda #$01    ; PRG $14962
  $A964: a0 fc       ldy #$fc    ; PRG $14964
  $A966: 71 06       adc ($06),y    ; PRG $14966
  $A968: 91 06       sta ($06),y    ; PRG $14968
  $A96A: 8a          txa    ; PRG $1496A
  $A96B: c8          iny    ; PRG $1496B
  $A96C: 71 06       adc ($06),y    ; PRG $1496C
  $A96E: 91 06       sta ($06),y    ; PRG $1496E
  $A970: 18          clc    ; PRG $14970
  $A971: a9 10       lda #$10    ; PRG $14971
  $A973: a0 fa       ldy #$fa    ; PRG $14973
  $A975: 71 06       adc ($06),y    ; PRG $14975
  $A977: 91 06       sta ($06),y    ; PRG $14977
  $A979: 8a          txa    ; PRG $14979
  $A97A: c8          iny    ; PRG $1497A
  $A97B: 71 06       adc ($06),y    ; PRG $1497B
  $A97D: 91 06       sta ($06),y    ; PRG $1497D
  $A97F: a0 fa       ldy #$fa    ; PRG $1497F
  $A981: b1 06       lda ($06),y    ; PRG $14981
  $A983: a0 f8       ldy #$f8    ; PRG $14983
  $A985: d1 06       cmp ($06),y    ; PRG $14985
  $A987: a0 fb       ldy #$fb    ; PRG $14987
  $A989: b1 06       lda ($06),y    ; PRG $14989
  $A98B: a0 f9       ldy #$f9    ; PRG $1498B
  $A98D: f1 06       sbc ($06),y    ; PRG $1498D
  $A98F: 90 03       bcc $a994    ; PRG $1498F
  $A991: 4c e1 89    jmp $89e1    ; PRG $14991
  $A994: c8          iny    ; PRG $14994
  $A995: b1 06       lda ($06),y    ; PRG $14995
  $A997: 85 18       sta $18    ; PRG $14997
  $A999: c8          iny    ; PRG $14999
  $A99A: b1 06       lda ($06),y    ; PRG $1499A
  $A99C: 85 19       sta $19    ; PRG $1499C
  $A99E: a0 0f       ldy #$0f    ; PRG $1499E
  $A9A0: b1 18       lda ($18),y    ; PRG $149A0
  $A9A2: 85 14       sta $14    ; PRG $149A2
  $A9A4: 86 15       stx $15    ; PRG $149A4
  $A9A6: a5 14       lda $14    ; PRG $149A6
  $A9A8: 29 08       and #$08    ; PRG $149A8
  $A9AA: f0 03       beq $a9af    ; PRG $149AA
  $A9AC: 4c de 89    jmp $89de    ; PRG $149AC
  $A9AF: a0 0b       ldy #$0b    ; PRG $149AF
  $A9B1: b1 04       lda ($04),y    ; PRG $149B1
  $A9B3: 85 18       sta $18    ; PRG $149B3
  $A9B5: c8          iny    ; PRG $149B5
  $A9B6: b1 04       lda ($04),y    ; PRG $149B6
  $A9B8: 85 19       sta $19    ; PRG $149B8
  $A9BA: a0 fc       ldy #$fc    ; PRG $149BA
  $A9BC: b1 06       lda ($06),y    ; PRG $149BC
  $A9BE: 81 18       sta ($18,x)    ; PRG $149BE
  $A9C0: 18          clc    ; PRG $149C0
  $A9C1: a9 01       lda #$01    ; PRG $149C1
  $A9C3: a0 0b       ldy #$0b    ; PRG $149C3
  $A9C5: 71 04       adc ($04),y    ; PRG $149C5
  $A9C7: 91 04       sta ($04),y    ; PRG $149C7
  $A9C9: 8a          txa    ; PRG $149C9
  $A9CA: c8          iny    ; PRG $149CA
  $A9CB: 71 04       adc ($04),y    ; PRG $149CB
  $A9CD: 91 04       sta ($04),y    ; PRG $149CD
  $A9CF: 18          clc    ; PRG $149CF
  $A9D0: a9 01       lda #$01    ; PRG $149D0
  $A9D2: a0 fe       ldy #$fe    ; PRG $149D2
  $A9D4: 71 06       adc ($06),y    ; PRG $149D4
  $A9D6: 91 06       sta ($06),y    ; PRG $149D6
  $A9D8: 8a          txa    ; PRG $149D8
  $A9D9: c8          iny    ; PRG $149D9
  $A9DA: 71 06       adc ($06),y    ; PRG $149DA
  $A9DC: 91 06       sta ($06),y    ; PRG $149DC
  $A9DE: 4c 61 89    jmp $8961    ; PRG $149DE

; ---- sub_10_09e1  [recovered]  <- (uncalled?)
  $A9E1: a0 fe       ldy #$fe    ; PRG $149E1
  $A9E3: b1 06       lda ($06),y    ; PRG $149E3
  $A9E5: 85 08       sta $08    ; PRG $149E5
  $A9E7: c8          iny    ; PRG $149E7
  $A9E8: b1 06       lda ($06),y    ; PRG $149E8
  $A9EA: 85 09       sta $09    ; PRG $149EA
  $A9EC: 60          rts    ; PRG $149EC

; ---- sub_10_09f3  [stub]  <- (entry: bytecode/OS via $E299)
nat_10_09ed: jsr $E299                    ; 10:A9ED  native-call prologue
            .db $00 $f7 $ff            ; inline: argcount $00, frame $fff7
  $A9F3: a9 33       lda #$33    ; PRG $149F3
  $A9F5: 85 18       sta $18    ; PRG $149F5
  $A9F7: 86 19       stx $19    ; PRG $149F7
  $A9F9: 18          clc    ; PRG $149F9
  $A9FA: a9 ff       lda #$ff    ; PRG $149FA
  $A9FC: a0 0b       ldy #$0b    ; PRG $149FC
  $A9FE: 71 04       adc ($04),y    ; PRG $149FE
  $AA00: 85 14       sta $14    ; PRG $14A00
  $AA02: a9 ff       lda #$ff    ; PRG $14A02
  $AA04: c8          iny    ; PRG $14A04
  $AA05: 71 04       adc ($04),y    ; PRG $14A05
  $AA07: 85 15       sta $15    ; PRG $14A07
  $AA09: a0 14       ldy #$14    ; PRG $14A09
  $AA0B: a2 18       ldx #$18    ; PRG $14A0B
  $AA0D: a9 10       lda #$10    ; PRG $14A0D
  $AA0F: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $14A0F
  $AA12: 18          clc    ; PRG $14A12
  $AA13: a5 10       lda $10    ; PRG $14A13
  $AA15: 69 04       adc #$04    ; PRG $14A15
  $AA17: a0 f7       ldy #$f7    ; PRG $14A17
  $AA19: 91 06       sta ($06),y    ; PRG $14A19
  $AA1B: a5 11       lda $11    ; PRG $14A1B
  $AA1D: 69 60       adc #$60    ; PRG $14A1D
  $AA1F: c8          iny    ; PRG $14A1F
  $AA20: 91 06       sta ($06),y    ; PRG $14A20
  $AA22: 18          clc    ; PRG $14A22
  $AA23: a9 fb       lda #$fb    ; PRG $14A23
  $AA25: 65 06       adc $06    ; PRG $14A25
  $AA27: 85 18       sta $18    ; PRG $14A27
  $AA29: 8a          txa    ; PRG $14A29
  $AA2A: 65 07       adc $07    ; PRG $14A2A
  $AA2C: 85 19       sta $19    ; PRG $14A2C
  $AA2E: a5 19       lda $19    ; PRG $14A2E
  $AA30: 48          pha    ; PRG $14A30
  $AA31: a5 18       lda $18    ; PRG $14A31
  $AA33: 48          pha    ; PRG $14A33
  $AA34: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $14A34
  $AA37: 18 89 04    .db $18 $89 $04  -> vm $8918 argc 4    ; PRG $14A37
  $AA3A: a5 08       lda $08    ; PRG $14A3A
  $AA3C: a0 f9       ldy #$f9    ; PRG $14A3C
  $AA3E: 91 06       sta ($06),y    ; PRG $14A3E
  $AA40: a5 09       lda $09    ; PRG $14A40
  $AA42: c8          iny    ; PRG $14A42
  $AA43: 91 06       sta ($06),y    ; PRG $14A43
  $AA45: 88          dey    ; PRG $14A45
  $AA46: b1 06       lda ($06),y    ; PRG $14A46
  $AA48: c8          iny    ; PRG $14A48
  $AA49: 11 06       ora ($06),y    ; PRG $14A49
  $AA4B: d0 03       bne $aa50    ; PRG $14A4B
  $AA4D: 4c b0 8a    jmp $8ab0   ; duel_ab0    ; PRG $14A4D
  $AA50: a0 f7       ldy #$f7    ; PRG $14A50
  $AA52: b1 06       lda ($06),y    ; PRG $14A52
  $AA54: 85 18       sta $18    ; PRG $14A54
  $AA56: c8          iny    ; PRG $14A56
  $AA57: b1 06       lda ($06),y    ; PRG $14A57
  $AA59: 85 19       sta $19    ; PRG $14A59
  $AA5B: 8a          txa    ; PRG $14A5B
  $AA5C: a0 04       ldy #$04    ; PRG $14A5C
  $AA5E: 91 18       sta ($18),y    ; PRG $14A5E
  $AA60: a0 f7       ldy #$f7    ; PRG $14A60
  $AA62: b1 06       lda ($06),y    ; PRG $14A62
  $AA64: 85 18       sta $18    ; PRG $14A64
  $AA66: c8          iny    ; PRG $14A66
  $AA67: b1 06       lda ($06),y    ; PRG $14A67
  $AA69: 85 19       sta $19    ; PRG $14A69
  $AA6B: 18          clc    ; PRG $14A6B
  $AA6C: a9 fb       lda #$fb    ; PRG $14A6C
  $AA6E: 65 06       adc $06    ; PRG $14A6E
  $AA70: 85 14       sta $14    ; PRG $14A70
  $AA72: 8a          txa    ; PRG $14A72
  $AA73: 65 07       adc $07    ; PRG $14A73
  $AA75: 85 15       sta $15    ; PRG $14A75
  $AA77: a2 18       ldx #$18    ; PRG $14A77
  $AA79: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $14A79
  $AA7C: a2 14       ldx #$14    ; PRG $14A7C
  $AA7E: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $14A7E
  $AA81: a0 fa       ldy #$fa    ; PRG $14A81
  $AA83: b1 06       lda ($06),y    ; PRG $14A83
  $AA85: 48          pha    ; PRG $14A85
  $AA86: 88          dey    ; PRG $14A86
  $AA87: b1 06       lda ($06),y    ; PRG $14A87
  $AA89: 48          pha    ; PRG $14A89
  $AA8A: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $14A8A
  $AA8D: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $14A8D
  $AA90: a2 14       ldx #$14    ; PRG $14A90
  $AA92: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $14A92
  $AA95: 18          clc    ; PRG $14A95
  $AA96: a5 08       lda $08    ; PRG $14A96
  $AA98: 65 14       adc $14    ; PRG $14A98
  $AA9A: 85 18       sta $18    ; PRG $14A9A
  $AA9C: a5 09       lda $09    ; PRG $14A9C
  $AA9E: 65 15       adc $15    ; PRG $14A9E
  $AAA0: 85 19       sta $19    ; PRG $14AA0
  $AAA2: a2 14       ldx #$14    ; PRG $14AA2
  $AAA4: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $14AA4
  $AAA7: a1 18       lda ($18,x)    ; PRG $14AA7
  $AAA9: a0 05       ldy #$05    ; PRG $14AA9
  $AAAB: 91 14       sta ($14),y    ; PRG $14AAB
  $AAAD: 4c bf 8a    jmp $8abf    ; PRG $14AAD

; ---- sub_10_0ab0  [recovered]  <- (uncalled?)
  $AAB0: a0 0c       ldy #$0c    ; PRG $14AB0
  $AAB2: b1 04       lda ($04),y    ; PRG $14AB2
  $AAB4: 48          pha    ; PRG $14AB4
  $AAB5: 88          dey    ; PRG $14AB5
  $AAB6: b1 04       lda ($04),y    ; PRG $14AB6
  $AAB8: 48          pha    ; PRG $14AB8
  $AAB9: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $14AB9
  $AABC: 03 80 04    .db $03 $80 $04  -> vm $8003 argc 4    ; PRG $14ABC
  $AABF: 60          rts    ; PRG $14ABF

; ---- sub_10_0ac6  [stub]  <- (entry: bytecode/OS via $E299)
nat_10_0ac0: jsr $E299                    ; 10:AAC0  native-call prologue
            .db $00 $fa $ff            ; inline: argcount $00, frame $fffa
  $AAC6: 18          clc    ; PRG $14AC6
  $AAC7: a9 ff       lda #$ff    ; PRG $14AC7
  $AAC9: a0 0b       ldy #$0b    ; PRG $14AC9
  $AACB: 71 04       adc ($04),y    ; PRG $14ACB
  $AACD: a0 fe       ldy #$fe    ; PRG $14ACD
  $AACF: 91 06       sta ($06),y    ; PRG $14ACF
  $AAD1: a9 ff       lda #$ff    ; PRG $14AD1
  $AAD3: a0 0c       ldy #$0c    ; PRG $14AD3
  $AAD5: 71 04       adc ($04),y    ; PRG $14AD5
  $AAD7: a0 ff       ldy #$ff    ; PRG $14AD7
  $AAD9: 91 06       sta ($06),y    ; PRG $14AD9
  $AADB: a9 33       lda #$33    ; PRG $14ADB
  $AADD: 85 18       sta $18    ; PRG $14ADD
  $AADF: 86 19       stx $19    ; PRG $14ADF
  $AAE1: 88          dey    ; PRG $14AE1
  $AAE2: b1 06       lda ($06),y    ; PRG $14AE2
  $AAE4: 85 14       sta $14    ; PRG $14AE4
  $AAE6: c8          iny    ; PRG $14AE6
  $AAE7: b1 06       lda ($06),y    ; PRG $14AE7
  $AAE9: 85 15       sta $15    ; PRG $14AE9
  $AAEB: a0 14       ldy #$14    ; PRG $14AEB
  $AAED: a2 18       ldx #$18    ; PRG $14AED
  $AAEF: a9 10       lda #$10    ; PRG $14AEF
  $AAF1: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $14AF1
  $AAF4: 18          clc    ; PRG $14AF4
  $AAF5: a5 10       lda $10    ; PRG $14AF5
  $AAF7: 69 04       adc #$04    ; PRG $14AF7
  $AAF9: a0 fa       ldy #$fa    ; PRG $14AF9
  $AAFB: 91 06       sta ($06),y    ; PRG $14AFB
  $AAFD: a5 11       lda $11    ; PRG $14AFD
  $AAFF: 69 60       adc #$60    ; PRG $14AFF
  $AB01: c8          iny    ; PRG $14B01
  $AB02: 91 06       sta ($06),y    ; PRG $14B02
  $AB04: a9 05       lda #$05    ; PRG $14B04
  $AB06: 85 18       sta $18    ; PRG $14B06
  $AB08: 86 19       stx $19    ; PRG $14B08
  $AB0A: a0 fe       ldy #$fe    ; PRG $14B0A
  $AB0C: b1 06       lda ($06),y    ; PRG $14B0C
  $AB0E: 85 14       sta $14    ; PRG $14B0E
  $AB10: c8          iny    ; PRG $14B10
  $AB11: b1 06       lda ($06),y    ; PRG $14B11
  $AB13: 85 15       sta $15    ; PRG $14B13
  $AB15: a0 14       ldy #$14    ; PRG $14B15
  $AB17: a2 18       ldx #$18    ; PRG $14B17
  $AB19: a9 10       lda #$10    ; PRG $14B19
  $AB1B: 20 d9 e1    jsr $e1d9   ; alu_div_push_remainder    ; PRG $14B1B
  $AB1E: a5 10       lda $10    ; PRG $14B1E
  $AB20: a0 fe       ldy #$fe    ; PRG $14B20
  $AB22: 91 06       sta ($06),y    ; PRG $14B22
  $AB24: a5 11       lda $11    ; PRG $14B24
  $AB26: c8          iny    ; PRG $14B26
  $AB27: 91 06       sta ($06),y    ; PRG $14B27
  $AB29: a9 02       lda #$02    ; PRG $14B29
  $AB2B: 85 18       sta $18    ; PRG $14B2B
  $AB2D: 86 19       stx $19    ; PRG $14B2D
  $AB2F: 88          dey    ; PRG $14B2F
  $AB30: b1 06       lda ($06),y    ; PRG $14B30
  $AB32: 85 14       sta $14    ; PRG $14B32
  $AB34: c8          iny    ; PRG $14B34
  $AB35: b1 06       lda ($06),y    ; PRG $14B35
  $AB37: 85 15       sta $15    ; PRG $14B37
  $AB39: a0 14       ldy #$14    ; PRG $14B39
  $AB3B: a2 18       ldx #$18    ; PRG $14B3B
  $AB3D: a9 10       lda #$10    ; PRG $14B3D
  $AB3F: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $14B3F
  $AB42: 18          clc    ; PRG $14B42
  $AB43: a5 10       lda $10    ; PRG $14B43
  $AB45: 69 bf       adc #$bf    ; PRG $14B45
  $AB47: 85 18       sta $18    ; PRG $14B47
  $AB49: a5 11       lda $11    ; PRG $14B49
  $AB4B: 69 6f       adc #$6f    ; PRG $14B4B
  $AB4D: 85 19       sta $19    ; PRG $14B4D
  $AB4F: a1 18       lda ($18,x)    ; PRG $14B4F
  $AB51: 85 14       sta $14    ; PRG $14B51
  $AB53: 86 15       stx $15    ; PRG $14B53
  $AB55: a5 14       lda $14    ; PRG $14B55
  $AB57: a0 fc       ldy #$fc    ; PRG $14B57
  $AB59: 91 06       sta ($06),y    ; PRG $14B59
  $AB5B: a5 15       lda $15    ; PRG $14B5B
  $AB5D: c8          iny    ; PRG $14B5D
  $AB5E: 91 06       sta ($06),y    ; PRG $14B5E
  $AB60: 88          dey    ; PRG $14B60
  $AB61: b1 06       lda ($06),y    ; PRG $14B61
  $AB63: 85 08       sta $08    ; PRG $14B63
  $AB65: c8          iny    ; PRG $14B65
  $AB66: b1 06       lda ($06),y    ; PRG $14B66
  $AB68: 85 09       sta $09    ; PRG $14B68
  $AB6A: 4c f5 8b    jmp $8bf5    ; PRG $14B6A

; ---- sub_10_0b6d  [recovered]  <- (uncalled?)
  $AB6D: a0 fd       ldy #$fd    ; PRG $14B6D
  $AB6F: b1 06       lda ($06),y    ; PRG $14B6F
  $AB71: 48          pha    ; PRG $14B71
  $AB72: 88          dey    ; PRG $14B72
  $AB73: b1 06       lda ($06),y    ; PRG $14B73
  $AB75: 48          pha    ; PRG $14B75
  $AB76: a0 0c       ldy #$0c    ; PRG $14B76
  $AB78: b1 04       lda ($04),y    ; PRG $14B78
  $AB7A: 48          pha    ; PRG $14B7A
  $AB7B: 88          dey    ; PRG $14B7B
  $AB7C: b1 04       lda ($04),y    ; PRG $14B7C
  $AB7E: 48          pha    ; PRG $14B7E
  $AB7F: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $14B7F
  $AB82: 0e 87 06    .db $0e $87 $06  -> vm $870E argc 6    ; PRG $14B82
  $AB85: 4c 0a 8c    jmp $8c0a    ; PRG $14B85

; ---- sub_10_0b88  [recovered]  <- (uncalled?)
  $AB88: a0 0c       ldy #$0c    ; PRG $14B88
  $AB8A: b1 04       lda ($04),y    ; PRG $14B8A
  $AB8C: 48          pha    ; PRG $14B8C
  $AB8D: 88          dey    ; PRG $14B8D
  $AB8E: b1 04       lda ($04),y    ; PRG $14B8E
  $AB90: 48          pha    ; PRG $14B90
  $AB91: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $14B91
  $AB94: ed 89 04    .db $ed $89 $04  -> vm $89ED argc 4    ; PRG $14B94
  $AB97: 4c 0a 8c    jmp $8c0a    ; PRG $14B97

; ---- sub_10_0b9a  [recovered]  <- (uncalled?)
  $AB9A: 8a          txa    ; PRG $14B9A
  $AB9B: 48          pha    ; PRG $14B9B
  $AB9C: a9 03       lda #$03    ; PRG $14B9C
  $AB9E: 48          pha    ; PRG $14B9E
  $AB9F: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $14B9F
  $ABA2: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $14BA2
  $ABA5: a5 08       lda $08    ; PRG $14BA5
  $ABA7: 05 09       ora $09    ; PRG $14BA7
  $ABA9: f0 03       beq $abae    ; PRG $14BA9
  $ABAB: 4c d1 8b    jmp $8bd1    ; PRG $14BAB
  $ABAE: a0 fa       ldy #$fa    ; PRG $14BAE
  $ABB0: b1 06       lda ($06),y    ; PRG $14BB0
  $ABB2: 85 18       sta $18    ; PRG $14BB2
  $ABB4: c8          iny    ; PRG $14BB4
  $ABB5: b1 06       lda ($06),y    ; PRG $14BB5
  $ABB7: 85 19       sta $19    ; PRG $14BB7
  $ABB9: 8a          txa    ; PRG $14BB9
  $ABBA: a0 04       ldy #$04    ; PRG $14BBA
  $ABBC: 91 18       sta ($18),y    ; PRG $14BBC
  $ABBE: a0 fa       ldy #$fa    ; PRG $14BBE
  $ABC0: b1 06       lda ($06),y    ; PRG $14BC0
  $ABC2: 85 18       sta $18    ; PRG $14BC2
  $ABC4: c8          iny    ; PRG $14BC4
  $ABC5: b1 06       lda ($06),y    ; PRG $14BC5
  $ABC7: 85 19       sta $19    ; PRG $14BC7
  $ABC9: 8a          txa    ; PRG $14BC9
  $ABCA: a0 05       ldy #$05    ; PRG $14BCA
  $ABCC: 91 18       sta ($18),y    ; PRG $14BCC
  $ABCE: 4c e0 8b    jmp $8be0    ; PRG $14BCE

; ---- sub_10_0bd1  [recovered]  <- (uncalled?)
  $ABD1: a0 0c       ldy #$0c    ; PRG $14BD1
  $ABD3: b1 04       lda ($04),y    ; PRG $14BD3
  $ABD5: 48          pha    ; PRG $14BD5
  $ABD6: 88          dey    ; PRG $14BD6
  $ABD7: b1 04       lda ($04),y    ; PRG $14BD7
  $ABD9: 48          pha    ; PRG $14BD9
  $ABDA: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $14BDA
  $ABDD: 03 80 04    .db $03 $80 $04  -> vm $8003 argc 4    ; PRG $14BDD
  $ABE0: 4c 0a 8c    jmp $8c0a    ; PRG $14BE0

; ---- sub_10_0be3  [recovered]  <- (uncalled?)
  $ABE3: a0 0c       ldy #$0c    ; PRG $14BE3
  $ABE5: b1 04       lda ($04),y    ; PRG $14BE5
  $ABE7: 48          pha    ; PRG $14BE7
  $ABE8: 88          dey    ; PRG $14BE8
  $ABE9: b1 04       lda ($04),y    ; PRG $14BE9
  $ABEB: 48          pha    ; PRG $14BEB
  $ABEC: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $14BEC
  $ABEF: 03 80 04    .db $03 $80 $04  -> vm $8003 argc 4    ; PRG $14BEF
  $ABF2: 4c 0a 8c    jmp $8c0a    ; PRG $14BF2

; ---- sub_10_0bf5  [recovered]  <- (uncalled?)
  $ABF5: 20 45 e4    jsr $e445   ; inline_add_word    ; PRG $14BF5
  $ABF8: 00          brk    ; PRG $14BF8
  $ABF9: 00          brk    ; PRG $14BF9
  $ABFA: 06 00       asl $00    ; PRG $14BFA
  $ABFC: 0a          asl a    ; PRG $14BFC
  $ABFD: 8c 6d 8b    sty $8b6d   ; entry_anim_5    ; PRG $14BFD
  $AC00: 6d 8b 6d    adc $6d8b    ; PRG $14C00
  $AC11: a9 33       lda #$33    ; PRG $14C11
  $AC13: 85 18       sta $18    ; PRG $14C13
  $AC15: 86 19       stx $19    ; PRG $14C15
  $AC17: 18          clc    ; PRG $14C17
  $AC18: a9 ff       lda #$ff    ; PRG $14C18
  $AC1A: a0 0b       ldy #$0b    ; PRG $14C1A
  $AC1C: 71 04       adc ($04),y    ; PRG $14C1C
  $AC1E: 85 14       sta $14    ; PRG $14C1E
  $AC20: a9 ff       lda #$ff    ; PRG $14C20
  $AC22: c8          iny    ; PRG $14C22
  $AC23: 71 04       adc ($04),y    ; PRG $14C23
  $AC25: 85 15       sta $15    ; PRG $14C25
  $AC27: a0 14       ldy #$14    ; PRG $14C27
  $AC29: a2 18       ldx #$18    ; PRG $14C29
  $AC2B: a9 10       lda #$10    ; PRG $14C2B
  $AC2D: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $14C2D
  $AC30: 18          clc    ; PRG $14C30
  $AC31: a5 10       lda $10    ; PRG $14C31
  $AC33: 69 04       adc #$04    ; PRG $14C33
  $AC35: a0 ea       ldy #$ea    ; PRG $14C35
  $AC37: 91 06       sta ($06),y    ; PRG $14C37
  $AC39: a5 11       lda $11    ; PRG $14C39
  $AC3B: 69 60       adc #$60    ; PRG $14C3B
  $AC3D: c8          iny    ; PRG $14C3D
  $AC3E: 91 06       sta ($06),y    ; PRG $14C3E
  $AC40: 8a          txa    ; PRG $14C40
  $AC41: a0 f0       ldy #$f0    ; PRG $14C41
  $AC43: 91 06       sta ($06),y    ; PRG $14C43
  $AC45: c8          iny    ; PRG $14C45
  $AC46: 91 06       sta ($06),y    ; PRG $14C46
  $AC48: c8          iny    ; PRG $14C48
  $AC49: 91 06       sta ($06),y    ; PRG $14C49
  $AC4B: c8          iny    ; PRG $14C4B
  $AC4C: 91 06       sta ($06),y    ; PRG $14C4C
  $AC4E: a0 f6       ldy #$f6    ; PRG $14C4E
  $AC50: 91 06       sta ($06),y    ; PRG $14C50
  $AC52: c8          iny    ; PRG $14C52
  $AC53: 91 06       sta ($06),y    ; PRG $14C53
  $AC55: a9 64       lda #$64    ; PRG $14C55
  $AC57: a0 f4       ldy #$f4    ; PRG $14C57
  $AC59: 91 06       sta ($06),y    ; PRG $14C59
  $AC5B: 8a          txa    ; PRG $14C5B
  $AC5C: c8          iny    ; PRG $14C5C
  $AC5D: 91 06       sta ($06),y    ; PRG $14C5D
  $AC5F: a9 05       lda #$05    ; PRG $14C5F
  $AC61: 85 18       sta $18    ; PRG $14C61
  $AC63: 86 19       stx $19    ; PRG $14C63
  $AC65: 18          clc    ; PRG $14C65
  $AC66: a9 ff       lda #$ff    ; PRG $14C66
  $AC68: a0 0b       ldy #$0b    ; PRG $14C68
  $AC6A: 71 04       adc ($04),y    ; PRG $14C6A
  $AC6C: 85 14       sta $14    ; PRG $14C6C
  $AC6E: a9 ff       lda #$ff    ; PRG $14C6E
  $AC70: c8          iny    ; PRG $14C70
  $AC71: 71 04       adc ($04),y    ; PRG $14C71
  $AC73: 85 15       sta $15    ; PRG $14C73
  $AC75: a0 14       ldy #$14    ; PRG $14C75
  $AC77: a2 18       ldx #$18    ; PRG $14C77
  $AC79: a9 10       lda #$10    ; PRG $14C79
  $AC7B: 20 d9 e1    jsr $e1d9   ; alu_div_push_remainder    ; PRG $14C7B
  $AC7E: a5 10       lda $10    ; PRG $14C7E
  $AC80: a0 ee       ldy #$ee    ; PRG $14C80
  $AC82: 91 06       sta ($06),y    ; PRG $14C82
  $AC84: a5 11       lda $11    ; PRG $14C84
  $AC86: c8          iny    ; PRG $14C86
  $AC87: 91 06       sta ($06),y    ; PRG $14C87
  $AC89: a9 03       lda #$03    ; PRG $14C89
  $AC8B: a0 f8       ldy #$f8    ; PRG $14C8B
  $AC8D: 91 06       sta ($06),y    ; PRG $14C8D
  $AC8F: 8a          txa    ; PRG $14C8F
  $AC90: c8          iny    ; PRG $14C90
  $AC91: 91 06       sta ($06),y    ; PRG $14C91
  $AC93: 18          clc    ; PRG $14C93
  $AC94: 88          dey    ; PRG $14C94
  $AC95: b1 06       lda ($06),y    ; PRG $14C95
  $AC97: 69 76       adc #$76    ; PRG $14C97
  $AC99: a0 fc       ldy #$fc    ; PRG $14C99
  $AC9B: 91 06       sta ($06),y    ; PRG $14C9B
  $AC9D: a0 f9       ldy #$f9    ; PRG $14C9D
  $AC9F: b1 06       lda ($06),y    ; PRG $14C9F
  $ACA1: 69 6f       adc #$6f    ; PRG $14CA1
  $ACA3: a0 fd       ldy #$fd    ; PRG $14CA3
  $ACA5: 91 06       sta ($06),y    ; PRG $14CA5
  $ACA7: a9 a8       lda #$a8    ; PRG $14CA7
  $ACA9: a0 fa       ldy #$fa    ; PRG $14CA9
  $ACAB: 91 06       sta ($06),y    ; PRG $14CAB
  $ACAD: a9 6f       lda #$6f    ; PRG $14CAD
  $ACAF: c8          iny    ; PRG $14CAF
  $ACB0: 91 06       sta ($06),y    ; PRG $14CB0
  $ACB2: a9 0e       lda #$0e    ; PRG $14CB2
  $ACB4: 85 18       sta $18    ; PRG $14CB4
  $ACB6: 86 19       stx $19    ; PRG $14CB6
  $ACB8: a0 f8       ldy #$f8    ; PRG $14CB8
  $ACBA: b1 06       lda ($06),y    ; PRG $14CBA
  $ACBC: 85 14       sta $14    ; PRG $14CBC
  $ACBE: c8          iny    ; PRG $14CBE
  $ACBF: b1 06       lda ($06),y    ; PRG $14CBF
  $ACC1: 85 15       sta $15    ; PRG $14CC1
  $ACC3: a0 14       ldy #$14    ; PRG $14CC3
  $ACC5: a2 18       ldx #$18    ; PRG $14CC5
  $ACC7: a9 10       lda #$10    ; PRG $14CC7
  $ACC9: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $14CC9
  $ACCC: 18          clc    ; PRG $14CCC
  $ACCD: a5 10       lda $10    ; PRG $14CCD
  $ACCF: 69 b2       adc #$b2    ; PRG $14CCF
  $ACD1: a0 e8       ldy #$e8    ; PRG $14CD1
  $ACD3: 91 06       sta ($06),y    ; PRG $14CD3
  $ACD5: a5 11       lda $11    ; PRG $14CD5
  $ACD7: 69 67       adc #$67    ; PRG $14CD7
  $ACD9: c8          iny    ; PRG $14CD9
  $ACDA: 91 06       sta ($06),y    ; PRG $14CDA
  $ACDC: 4c 0c 8d    jmp $8d0c    ; PRG $14CDC

; ---- sub_10_0c11  [stub]  <- (entry: bytecode/OS via $E299)
nat_10_0c0b: jsr $E299                    ; 10:AC0B  native-call prologue
            .db $00 $e8 $ff            ; inline: argcount $00, frame $ffe8
  $AC11: a9 33       lda #$33    ; PRG $14C11
  $AC13: 85 18       sta $18    ; PRG $14C13
  $AC15: 86 19       stx $19    ; PRG $14C15
  $AC17: 18          clc    ; PRG $14C17
  $AC18: a9 ff       lda #$ff    ; PRG $14C18
  $AC1A: a0 0b       ldy #$0b    ; PRG $14C1A
  $AC1C: 71 04       adc ($04),y    ; PRG $14C1C
  $AC1E: 85 14       sta $14    ; PRG $14C1E
  $AC20: a9 ff       lda #$ff    ; PRG $14C20
  $AC22: c8          iny    ; PRG $14C22
  $AC23: 71 04       adc ($04),y    ; PRG $14C23
  $AC25: 85 15       sta $15    ; PRG $14C25
  $AC27: a0 14       ldy #$14    ; PRG $14C27
  $AC29: a2 18       ldx #$18    ; PRG $14C29
  $AC2B: a9 10       lda #$10    ; PRG $14C2B
  $AC2D: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $14C2D
  $AC30: 18          clc    ; PRG $14C30
  $AC31: a5 10       lda $10    ; PRG $14C31
  $AC33: 69 04       adc #$04    ; PRG $14C33
  $AC35: a0 ea       ldy #$ea    ; PRG $14C35
  $AC37: 91 06       sta ($06),y    ; PRG $14C37
  $AC39: a5 11       lda $11    ; PRG $14C39
  $AC3B: 69 60       adc #$60    ; PRG $14C3B
  $AC3D: c8          iny    ; PRG $14C3D
  $AC3E: 91 06       sta ($06),y    ; PRG $14C3E
  $AC40: 8a          txa    ; PRG $14C40
  $AC41: a0 f0       ldy #$f0    ; PRG $14C41
  $AC43: 91 06       sta ($06),y    ; PRG $14C43
  $AC45: c8          iny    ; PRG $14C45
  $AC46: 91 06       sta ($06),y    ; PRG $14C46
  $AC48: c8          iny    ; PRG $14C48
  $AC49: 91 06       sta ($06),y    ; PRG $14C49
  $AC4B: c8          iny    ; PRG $14C4B
  $AC4C: 91 06       sta ($06),y    ; PRG $14C4C
  $AC4E: a0 f6       ldy #$f6    ; PRG $14C4E
  $AC50: 91 06       sta ($06),y    ; PRG $14C50
  $AC52: c8          iny    ; PRG $14C52
  $AC53: 91 06       sta ($06),y    ; PRG $14C53
  $AC55: a9 64       lda #$64    ; PRG $14C55
  $AC57: a0 f4       ldy #$f4    ; PRG $14C57
  $AC59: 91 06       sta ($06),y    ; PRG $14C59
  $AC5B: 8a          txa    ; PRG $14C5B
  $AC5C: c8          iny    ; PRG $14C5C
  $AC5D: 91 06       sta ($06),y    ; PRG $14C5D
  $AC5F: a9 05       lda #$05    ; PRG $14C5F
  $AC61: 85 18       sta $18    ; PRG $14C61
  $AC63: 86 19       stx $19    ; PRG $14C63
  $AC65: 18          clc    ; PRG $14C65
  $AC66: a9 ff       lda #$ff    ; PRG $14C66
  $AC68: a0 0b       ldy #$0b    ; PRG $14C68
  $AC6A: 71 04       adc ($04),y    ; PRG $14C6A
  $AC6C: 85 14       sta $14    ; PRG $14C6C
  $AC6E: a9 ff       lda #$ff    ; PRG $14C6E
  $AC70: c8          iny    ; PRG $14C70
  $AC71: 71 04       adc ($04),y    ; PRG $14C71
  $AC73: 85 15       sta $15    ; PRG $14C73
  $AC75: a0 14       ldy #$14    ; PRG $14C75
  $AC77: a2 18       ldx #$18    ; PRG $14C77
  $AC79: a9 10       lda #$10    ; PRG $14C79
  $AC7B: 20 d9 e1    jsr $e1d9   ; alu_div_push_remainder    ; PRG $14C7B
  $AC7E: a5 10       lda $10    ; PRG $14C7E
  $AC80: a0 ee       ldy #$ee    ; PRG $14C80
  $AC82: 91 06       sta ($06),y    ; PRG $14C82
  $AC84: a5 11       lda $11    ; PRG $14C84
  $AC86: c8          iny    ; PRG $14C86
  $AC87: 91 06       sta ($06),y    ; PRG $14C87
  $AC89: a9 03       lda #$03    ; PRG $14C89
  $AC8B: a0 f8       ldy #$f8    ; PRG $14C8B
  $AC8D: 91 06       sta ($06),y    ; PRG $14C8D
  $AC8F: 8a          txa    ; PRG $14C8F
  $AC90: c8          iny    ; PRG $14C90
  $AC91: 91 06       sta ($06),y    ; PRG $14C91
  $AC93: 18          clc    ; PRG $14C93
  $AC94: 88          dey    ; PRG $14C94
  $AC95: b1 06       lda ($06),y    ; PRG $14C95
  $AC97: 69 76       adc #$76    ; PRG $14C97
  $AC99: a0 fc       ldy #$fc    ; PRG $14C99
  $AC9B: 91 06       sta ($06),y    ; PRG $14C9B
  $AC9D: a0 f9       ldy #$f9    ; PRG $14C9D
  $AC9F: b1 06       lda ($06),y    ; PRG $14C9F
  $ACA1: 69 6f       adc #$6f    ; PRG $14CA1
  $ACA3: a0 fd       ldy #$fd    ; PRG $14CA3
  $ACA5: 91 06       sta ($06),y    ; PRG $14CA5
  $ACA7: a9 a8       lda #$a8    ; PRG $14CA7
  $ACA9: a0 fa       ldy #$fa    ; PRG $14CA9
  $ACAB: 91 06       sta ($06),y    ; PRG $14CAB
  $ACAD: a9 6f       lda #$6f    ; PRG $14CAD
  $ACAF: c8          iny    ; PRG $14CAF
  $ACB0: 91 06       sta ($06),y    ; PRG $14CB0
  $ACB2: a9 0e       lda #$0e    ; PRG $14CB2
  $ACB4: 85 18       sta $18    ; PRG $14CB4
  $ACB6: 86 19       stx $19    ; PRG $14CB6
  $ACB8: a0 f8       ldy #$f8    ; PRG $14CB8
  $ACBA: b1 06       lda ($06),y    ; PRG $14CBA
  $ACBC: 85 14       sta $14    ; PRG $14CBC
  $ACBE: c8          iny    ; PRG $14CBE
  $ACBF: b1 06       lda ($06),y    ; PRG $14CBF
  $ACC1: 85 15       sta $15    ; PRG $14CC1
  $ACC3: a0 14       ldy #$14    ; PRG $14CC3
  $ACC5: a2 18       ldx #$18    ; PRG $14CC5
  $ACC7: a9 10       lda #$10    ; PRG $14CC7
  $ACC9: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $14CC9
  $ACCC: 18          clc    ; PRG $14CCC
  $ACCD: a5 10       lda $10    ; PRG $14CCD
  $ACCF: 69 b2       adc #$b2    ; PRG $14CCF
  $ACD1: a0 e8       ldy #$e8    ; PRG $14CD1
  $ACD3: 91 06       sta ($06),y    ; PRG $14CD3
  $ACD5: a5 11       lda $11    ; PRG $14CD5
  $ACD7: 69 67       adc #$67    ; PRG $14CD7
  $ACD9: c8          iny    ; PRG $14CD9
  $ACDA: 91 06       sta ($06),y    ; PRG $14CDA
  $ACDC: 4c 0c 8d    jmp $8d0c    ; PRG $14CDC

; ---- sub_10_0cdf  [recovered]  <- (uncalled?)
  $ACDF: 18          clc    ; PRG $14CDF
  $ACE0: a9 01       lda #$01    ; PRG $14CE0
  $ACE2: a0 f8       ldy #$f8    ; PRG $14CE2
  $ACE4: 71 06       adc ($06),y    ; PRG $14CE4
  $ACE6: 91 06       sta ($06),y    ; PRG $14CE6
  $ACE8: 8a          txa    ; PRG $14CE8
  $ACE9: c8          iny    ; PRG $14CE9
  $ACEA: 71 06       adc ($06),y    ; PRG $14CEA
  $ACEC: 91 06       sta ($06),y    ; PRG $14CEC
  $ACEE: 18          clc    ; PRG $14CEE
  $ACEF: a9 0e       lda #$0e    ; PRG $14CEF
  $ACF1: a0 e8       ldy #$e8    ; PRG $14CF1
  $ACF3: 71 06       adc ($06),y    ; PRG $14CF3
  $ACF5: 91 06       sta ($06),y    ; PRG $14CF5
  $ACF7: 8a          txa    ; PRG $14CF7
  $ACF8: c8          iny    ; PRG $14CF8
  $ACF9: 71 06       adc ($06),y    ; PRG $14CF9
  $ACFB: 91 06       sta ($06),y    ; PRG $14CFB
  $ACFD: 18          clc    ; PRG $14CFD
  $ACFE: a9 01       lda #$01    ; PRG $14CFE
  $AD00: a0 fc       ldy #$fc    ; PRG $14D00
  $AD02: 71 06       adc ($06),y    ; PRG $14D02
  $AD04: 91 06       sta ($06),y    ; PRG $14D04
  $AD06: 8a          txa    ; PRG $14D06
  $AD07: c8          iny    ; PRG $14D07
  $AD08: 71 06       adc ($06),y    ; PRG $14D08
  $AD0A: 91 06       sta ($06),y    ; PRG $14D0A
  $AD0C: a0 fc       ldy #$fc    ; PRG $14D0C
  $AD0E: b1 06       lda ($06),y    ; PRG $14D0E
  $AD10: a0 fa       ldy #$fa    ; PRG $14D10
  $AD12: d1 06       cmp ($06),y    ; PRG $14D12
  $AD14: a0 fd       ldy #$fd    ; PRG $14D14
  $AD16: b1 06       lda ($06),y    ; PRG $14D16
  $AD18: a0 fb       ldy #$fb    ; PRG $14D18
  $AD1A: f1 06       sbc ($06),y    ; PRG $14D1A
  $AD1C: 90 03       bcc $ad21    ; PRG $14D1C
  $AD1E: 4c 43 8e    jmp $8e43    ; PRG $14D1E
  $AD21: c8          iny    ; PRG $14D21
  $AD22: b1 06       lda ($06),y    ; PRG $14D22
  $AD24: 85 18       sta $18    ; PRG $14D24
  $AD26: c8          iny    ; PRG $14D26
  $AD27: b1 06       lda ($06),y    ; PRG $14D27
  $AD29: 85 19       sta $19    ; PRG $14D29
  $AD2B: a1 18       lda ($18,x)    ; PRG $14D2B
  $AD2D: 85 14       sta $14    ; PRG $14D2D
  $AD2F: 86 15       stx $15    ; PRG $14D2F
  $AD31: a9 03       lda #$03    ; PRG $14D31
  $AD33: 25 14       and $14    ; PRG $14D33
  $AD35: a0 ec       ldy #$ec    ; PRG $14D35
  $AD37: 91 06       sta ($06),y    ; PRG $14D37
  $AD39: 8a          txa    ; PRG $14D39
  $AD3A: c8          iny    ; PRG $14D3A
  $AD3B: 91 06       sta ($06),y    ; PRG $14D3B
  $AD3D: 18          clc    ; PRG $14D3D
  $AD3E: a9 08       lda #$08    ; PRG $14D3E
  $AD40: a0 e8       ldy #$e8    ; PRG $14D40
  $AD42: 71 06       adc ($06),y    ; PRG $14D42
  $AD44: a0 fe       ldy #$fe    ; PRG $14D44
  $AD46: 91 06       sta ($06),y    ; PRG $14D46
  $AD48: 8a          txa    ; PRG $14D48
  $AD49: a0 e9       ldy #$e9    ; PRG $14D49
  $AD4B: 71 06       adc ($06),y    ; PRG $14D4B
  $AD4D: a0 ff       ldy #$ff    ; PRG $14D4D
  $AD4F: 91 06       sta ($06),y    ; PRG $14D4F
  $AD51: a0 ec       ldy #$ec    ; PRG $14D51
  $AD53: b1 06       lda ($06),y    ; PRG $14D53
  $AD55: c8          iny    ; PRG $14D55
  $AD56: 11 06       ora ($06),y    ; PRG $14D56
  $AD58: f0 03       beq $ad5d    ; PRG $14D58
  $AD5A: 4c c0 8d    jmp $8dc0    ; PRG $14D5A
  $AD5D: 18          clc    ; PRG $14D5D
  $AD5E: a0 fe       ldy #$fe    ; PRG $14D5E
  $AD60: b1 06       lda ($06),y    ; PRG $14D60
  $AD62: a0 ee       ldy #$ee    ; PRG $14D62
  $AD64: 71 06       adc ($06),y    ; PRG $14D64
  $AD66: 85 18       sta $18    ; PRG $14D66
  $AD68: a0 ff       ldy #$ff    ; PRG $14D68
  $AD6A: b1 06       lda ($06),y    ; PRG $14D6A
  $AD6C: a0 ef       ldy #$ef    ; PRG $14D6C
  $AD6E: 71 06       adc ($06),y    ; PRG $14D6E
  $AD70: 85 19       sta $19    ; PRG $14D70
  $AD72: a1 18       lda ($18,x)    ; PRG $14D72
  $AD74: 85 14       sta $14    ; PRG $14D74
  $AD76: 86 15       stx $15    ; PRG $14D76
  $AD78: a0 f6       ldy #$f6    ; PRG $14D78
  $AD7A: b1 06       lda ($06),y    ; PRG $14D7A
  $AD7C: c5 14       cmp $14    ; PRG $14D7C
  $AD7E: c8          iny    ; PRG $14D7E
  $AD7F: b1 06       lda ($06),y    ; PRG $14D7F
  $AD81: e5 15       sbc $15    ; PRG $14D81
  $AD83: 90 03       bcc $ad88    ; PRG $14D83
  $AD85: 4c bd 8d    jmp $8dbd    ; PRG $14D85
  $AD88: 18          clc    ; PRG $14D88
  $AD89: a0 fe       ldy #$fe    ; PRG $14D89
  $AD8B: b1 06       lda ($06),y    ; PRG $14D8B
  $AD8D: a0 ee       ldy #$ee    ; PRG $14D8D
  $AD8F: 71 06       adc ($06),y    ; PRG $14D8F
  $AD91: 85 18       sta $18    ; PRG $14D91
  $AD93: a0 ff       ldy #$ff    ; PRG $14D93
  $AD95: b1 06       lda ($06),y    ; PRG $14D95
  $AD97: a0 ef       ldy #$ef    ; PRG $14D97
  $AD99: 71 06       adc ($06),y    ; PRG $14D99
  $AD9B: 85 19       sta $19    ; PRG $14D9B
  $AD9D: a1 18       lda ($18,x)    ; PRG $14D9D
  $AD9F: 85 14       sta $14    ; PRG $14D9F
  $ADA1: 86 15       stx $15    ; PRG $14DA1
  $ADA3: a5 14       lda $14    ; PRG $14DA3
  $ADA5: a0 f6       ldy #$f6    ; PRG $14DA5
  $ADA7: 91 06       sta ($06),y    ; PRG $14DA7
  $ADA9: a5 15       lda $15    ; PRG $14DA9
  $ADAB: c8          iny    ; PRG $14DAB
  $ADAC: 91 06       sta ($06),y    ; PRG $14DAC
  $ADAE: c8          iny    ; PRG $14DAE
  $ADAF: b1 06       lda ($06),y    ; PRG $14DAF
  $ADB1: a0 f2       ldy #$f2    ; PRG $14DB1
  $ADB3: 91 06       sta ($06),y    ; PRG $14DB3
  $ADB5: a0 f9       ldy #$f9    ; PRG $14DB5
  $ADB7: b1 06       lda ($06),y    ; PRG $14DB7
  $ADB9: a0 f3       ldy #$f3    ; PRG $14DB9
  $ADBB: 91 06       sta ($06),y    ; PRG $14DBB
  $ADBD: 4c 40 8e    jmp $8e40    ; PRG $14DBD

; ---- sub_10_0dc0  [recovered]  <- (uncalled?)
  $ADC0: 18          clc    ; PRG $14DC0
  $ADC1: a9 01       lda #$01    ; PRG $14DC1
  $ADC3: a0 ee       ldy #$ee    ; PRG $14DC3
  $ADC5: 71 06       adc ($06),y    ; PRG $14DC5
  $ADC7: a0 ec       ldy #$ec    ; PRG $14DC7
  $ADC9: 91 06       sta ($06),y    ; PRG $14DC9
  $ADCB: 8a          txa    ; PRG $14DCB
  $ADCC: a0 ef       ldy #$ef    ; PRG $14DCC
  $ADCE: 71 06       adc ($06),y    ; PRG $14DCE
  $ADD0: a0 ed       ldy #$ed    ; PRG $14DD0
  $ADD2: 91 06       sta ($06),y    ; PRG $14DD2
  $ADD4: 88          dey    ; PRG $14DD4
  $ADD5: b1 06       lda ($06),y    ; PRG $14DD5
  $ADD7: c8          iny    ; PRG $14DD7
  $ADD8: 11 06       ora ($06),y    ; PRG $14DD8
  $ADDA: d0 03       bne $addf    ; PRG $14DDA
  $ADDC: 4c 40 8e    jmp $8e40    ; PRG $14DDC
  $ADDF: 18          clc    ; PRG $14DDF
  $ADE0: a0 fe       ldy #$fe    ; PRG $14DE0
  $ADE2: b1 06       lda ($06),y    ; PRG $14DE2
  $ADE4: a0 ee       ldy #$ee    ; PRG $14DE4
  $ADE6: 71 06       adc ($06),y    ; PRG $14DE6
  $ADE8: 85 18       sta $18    ; PRG $14DE8
  $ADEA: a0 ff       ldy #$ff    ; PRG $14DEA
  $ADEC: b1 06       lda ($06),y    ; PRG $14DEC
  $ADEE: a0 ef       ldy #$ef    ; PRG $14DEE
  $ADF0: 71 06       adc ($06),y    ; PRG $14DF0
  $ADF2: 85 19       sta $19    ; PRG $14DF2
  $ADF4: a1 18       lda ($18,x)    ; PRG $14DF4
  $ADF6: 85 14       sta $14    ; PRG $14DF6
  $ADF8: 86 15       stx $15    ; PRG $14DF8
  $ADFA: a5 14       lda $14    ; PRG $14DFA
  $ADFC: a0 f4       ldy #$f4    ; PRG $14DFC
  $ADFE: d1 06       cmp ($06),y    ; PRG $14DFE
  $AE00: a5 15       lda $15    ; PRG $14E00
  $AE02: c8          iny    ; PRG $14E02
  $AE03: f1 06       sbc ($06),y    ; PRG $14E03
  $AE05: 90 03       bcc $ae0a    ; PRG $14E05
  $AE07: 4c 40 8e    jmp $8e40    ; PRG $14E07
  $AE0A: 18          clc    ; PRG $14E0A
  $AE0B: a0 fe       ldy #$fe    ; PRG $14E0B
  $AE0D: b1 06       lda ($06),y    ; PRG $14E0D
  $AE0F: a0 ee       ldy #$ee    ; PRG $14E0F
  $AE11: 71 06       adc ($06),y    ; PRG $14E11
  $AE13: 85 18       sta $18    ; PRG $14E13
  $AE15: a0 ff       ldy #$ff    ; PRG $14E15
  $AE17: b1 06       lda ($06),y    ; PRG $14E17
  $AE19: a0 ef       ldy #$ef    ; PRG $14E19
  $AE1B: 71 06       adc ($06),y    ; PRG $14E1B
  $AE1D: 85 19       sta $19    ; PRG $14E1D
  $AE1F: a1 18       lda ($18,x)    ; PRG $14E1F
  $AE21: 85 14       sta $14    ; PRG $14E21
  $AE23: 86 15       stx $15    ; PRG $14E23
  $AE25: a5 14       lda $14    ; PRG $14E25
  $AE27: a0 f4       ldy #$f4    ; PRG $14E27
  $AE29: 91 06       sta ($06),y    ; PRG $14E29
  $AE2B: a5 15       lda $15    ; PRG $14E2B
  $AE2D: c8          iny    ; PRG $14E2D
  $AE2E: 91 06       sta ($06),y    ; PRG $14E2E
  $AE30: a0 f8       ldy #$f8    ; PRG $14E30
  $AE32: b1 06       lda ($06),y    ; PRG $14E32
  $AE34: a0 f0       ldy #$f0    ; PRG $14E34
  $AE36: 91 06       sta ($06),y    ; PRG $14E36
  $AE38: a0 f9       ldy #$f9    ; PRG $14E38
  $AE3A: b1 06       lda ($06),y    ; PRG $14E3A
  $AE3C: a0 f1       ldy #$f1    ; PRG $14E3C
  $AE3E: 91 06       sta ($06),y    ; PRG $14E3E
  $AE40: 4c df 8c    jmp $8cdf    ; PRG $14E40

; ---- sub_10_0e43  [recovered]  <- (uncalled?)
  $AE43: a0 f2       ldy #$f2    ; PRG $14E43
  $AE45: b1 06       lda ($06),y    ; PRG $14E45
  $AE47: c8          iny    ; PRG $14E47
  $AE48: 11 06       ora ($06),y    ; PRG $14E48
  $AE4A: d0 03       bne $ae4f    ; PRG $14E4A
  $AE4C: 4c 65 8e    jmp $8e65    ; PRG $14E4C
  $AE4F: a0 ea       ldy #$ea    ; PRG $14E4F
  $AE51: b1 06       lda ($06),y    ; PRG $14E51
  $AE53: 85 18       sta $18    ; PRG $14E53
  $AE55: c8          iny    ; PRG $14E55
  $AE56: b1 06       lda ($06),y    ; PRG $14E56
  $AE58: 85 19       sta $19    ; PRG $14E58
  $AE5A: a0 f2       ldy #$f2    ; PRG $14E5A
  $AE5C: b1 06       lda ($06),y    ; PRG $14E5C
  $AE5E: a0 05       ldy #$05    ; PRG $14E5E
  $AE60: 91 18       sta ($18),y    ; PRG $14E60
  $AE62: 4c ca 8e    jmp $8eca    ; PRG $14E62

; ---- sub_10_0e65  [recovered]  <- (uncalled?)
  $AE65: a0 f0       ldy #$f0    ; PRG $14E65
  $AE67: b1 06       lda ($06),y    ; PRG $14E67
  $AE69: c8          iny    ; PRG $14E69
  $AE6A: 11 06       ora ($06),y    ; PRG $14E6A
  $AE6C: d0 03       bne $ae71    ; PRG $14E6C
  $AE6E: 4c 97 8e    jmp $8e97    ; PRG $14E6E
  $AE71: a0 f4       ldy #$f4    ; PRG $14E71
  $AE73: b1 06       lda ($06),y    ; PRG $14E73
  $AE75: c9 5a       cmp #$5a    ; PRG $14E75
  $AE77: c8          iny    ; PRG $14E77
  $AE78: b1 06       lda ($06),y    ; PRG $14E78
  $AE7A: e9 00       sbc #$00    ; PRG $14E7A
  $AE7C: 90 03       bcc $ae81    ; PRG $14E7C
  $AE7E: 4c 97 8e    jmp $8e97    ; PRG $14E7E
  $AE81: a0 ea       ldy #$ea    ; PRG $14E81
  $AE83: b1 06       lda ($06),y    ; PRG $14E83
  $AE85: 85 18       sta $18    ; PRG $14E85
  $AE87: c8          iny    ; PRG $14E87
  $AE88: b1 06       lda ($06),y    ; PRG $14E88
  $AE8A: 85 19       sta $19    ; PRG $14E8A
  $AE8C: a0 f0       ldy #$f0    ; PRG $14E8C
  $AE8E: b1 06       lda ($06),y    ; PRG $14E8E
  $AE90: a0 05       ldy #$05    ; PRG $14E90
  $AE92: 91 18       sta ($18),y    ; PRG $14E92
  $AE94: 4c ca 8e    jmp $8eca    ; PRG $14E94

; ---- sub_10_0e97  [recovered]  <- (uncalled?)
  $AE97: a0 ea       ldy #$ea    ; PRG $14E97
  $AE99: b1 06       lda ($06),y    ; PRG $14E99
  $AE9B: 85 18       sta $18    ; PRG $14E9B
  $AE9D: c8          iny    ; PRG $14E9D
  $AE9E: b1 06       lda ($06),y    ; PRG $14E9E
  $AEA0: 85 19       sta $19    ; PRG $14EA0
  $AEA2: a2 18       ldx #$18    ; PRG $14EA2
  $AEA4: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $14EA4
  $AEA7: 48          pha    ; PRG $14EA7
  $AEA8: a9 2f       lda #$2f    ; PRG $14EA8
  $AEAA: 48          pha    ; PRG $14EAA
  $AEAB: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $14EAB
  $AEAE: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $14EAE
  $AEB1: 86 09       stx $09    ; PRG $14EB1
  $AEB3: 18          clc    ; PRG $14EB3
  $AEB4: a9 03       lda #$03    ; PRG $14EB4
  $AEB6: 65 08       adc $08    ; PRG $14EB6
  $AEB8: 85 18       sta $18    ; PRG $14EB8
  $AEBA: 8a          txa    ; PRG $14EBA
  $AEBB: 65 09       adc $09    ; PRG $14EBB
  $AEBD: 85 19       sta $19    ; PRG $14EBD
  $AEBF: a2 14       ldx #$14    ; PRG $14EBF
  $AEC1: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $14EC1
  $AEC4: a5 18       lda $18    ; PRG $14EC4
  $AEC6: a0 05       ldy #$05    ; PRG $14EC6
  $AEC8: 91 14       sta ($14),y    ; PRG $14EC8
  $AECA: 60          rts    ; PRG $14ECA

; ---- sub_10_0ed1  [stub]  <- (entry: bytecode/OS via $E299)
nat_10_0ecb: jsr $E299                    ; 10:AECB  native-call prologue
            .db $00 $ec $ff            ; inline: argcount $00, frame $ffec
  $AED1: a9 33       lda #$33    ; PRG $14ED1
  $AED3: 85 18       sta $18    ; PRG $14ED3
  $AED5: 86 19       stx $19    ; PRG $14ED5
  $AED7: 18          clc    ; PRG $14ED7
  $AED8: a9 ff       lda #$ff    ; PRG $14ED8
  $AEDA: a0 0b       ldy #$0b    ; PRG $14EDA
  $AEDC: 71 04       adc ($04),y    ; PRG $14EDC
  $AEDE: 85 14       sta $14    ; PRG $14EDE
  $AEE0: a9 ff       lda #$ff    ; PRG $14EE0
  $AEE2: c8          iny    ; PRG $14EE2
  $AEE3: 71 04       adc ($04),y    ; PRG $14EE3
  $AEE5: 85 15       sta $15    ; PRG $14EE5
  $AEE7: a0 14       ldy #$14    ; PRG $14EE7
  $AEE9: a2 18       ldx #$18    ; PRG $14EE9
  $AEEB: a9 10       lda #$10    ; PRG $14EEB
  $AEED: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $14EED
  $AEF0: 18          clc    ; PRG $14EF0
  $AEF1: a5 10       lda $10    ; PRG $14EF1
  $AEF3: 69 04       adc #$04    ; PRG $14EF3
  $AEF5: a0 ee       ldy #$ee    ; PRG $14EF5
  $AEF7: 91 06       sta ($06),y    ; PRG $14EF7
  $AEF9: a5 11       lda $11    ; PRG $14EF9
  $AEFB: 69 60       adc #$60    ; PRG $14EFB
  $AEFD: c8          iny    ; PRG $14EFD
  $AEFE: 91 06       sta ($06),y    ; PRG $14EFE
  $AF00: 88          dey    ; PRG $14F00
  $AF01: b1 06       lda ($06),y    ; PRG $14F01
  $AF03: 85 18       sta $18    ; PRG $14F03
  $AF05: c8          iny    ; PRG $14F05
  $AF06: b1 06       lda ($06),y    ; PRG $14F06
  $AF08: 85 19       sta $19    ; PRG $14F08
  $AF0A: a9 02       lda #$02    ; PRG $14F0A
  $AF0C: a0 04       ldy #$04    ; PRG $14F0C
  $AF0E: 91 18       sta ($18),y    ; PRG $14F0E
  $AF10: a9 05       lda #$05    ; PRG $14F10
  $AF12: 85 18       sta $18    ; PRG $14F12
  $AF14: 86 19       stx $19    ; PRG $14F14
  $AF16: 18          clc    ; PRG $14F16
  $AF17: a9 ff       lda #$ff    ; PRG $14F17
  $AF19: a0 0b       ldy #$0b    ; PRG $14F19
  $AF1B: 71 04       adc ($04),y    ; PRG $14F1B
  $AF1D: 85 14       sta $14    ; PRG $14F1D
  $AF1F: a9 ff       lda #$ff    ; PRG $14F1F
  $AF21: c8          iny    ; PRG $14F21
  $AF22: 71 04       adc ($04),y    ; PRG $14F22
  $AF24: 85 15       sta $15    ; PRG $14F24
  $AF26: a0 14       ldy #$14    ; PRG $14F26
  $AF28: a2 18       ldx #$18    ; PRG $14F28
  $AF2A: a9 10       lda #$10    ; PRG $14F2A
  $AF2C: 20 d9 e1    jsr $e1d9   ; alu_div_push_remainder    ; PRG $14F2C
  $AF2F: a5 10       lda $10    ; PRG $14F2F
  $AF31: a0 f2       ldy #$f2    ; PRG $14F31
  $AF33: 91 06       sta ($06),y    ; PRG $14F33
  $AF35: a5 11       lda $11    ; PRG $14F35
  $AF37: c8          iny    ; PRG $14F37
  $AF38: 91 06       sta ($06),y    ; PRG $14F38
  $AF3A: a9 02       lda #$02    ; PRG $14F3A
  $AF3C: 85 18       sta $18    ; PRG $14F3C
  $AF3E: 86 19       stx $19    ; PRG $14F3E
  $AF40: 88          dey    ; PRG $14F40
  $AF41: b1 06       lda ($06),y    ; PRG $14F41
  $AF43: 85 14       sta $14    ; PRG $14F43
  $AF45: c8          iny    ; PRG $14F45
  $AF46: b1 06       lda ($06),y    ; PRG $14F46
  $AF48: 85 15       sta $15    ; PRG $14F48
  $AF4A: a0 14       ldy #$14    ; PRG $14F4A
  $AF4C: a2 18       ldx #$18    ; PRG $14F4C
  $AF4E: a9 10       lda #$10    ; PRG $14F4E
  $AF50: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $14F50
  $AF53: 18          clc    ; PRG $14F53
  $AF54: a5 10       lda $10    ; PRG $14F54
  $AF56: 69 bf       adc #$bf    ; PRG $14F56
  $AF58: 85 18       sta $18    ; PRG $14F58
  $AF5A: a5 11       lda $11    ; PRG $14F5A
  $AF5C: 69 6f       adc #$6f    ; PRG $14F5C
  $AF5E: 85 19       sta $19    ; PRG $14F5E
  $AF60: a1 18       lda ($18,x)    ; PRG $14F60
  $AF62: 85 14       sta $14    ; PRG $14F62
  $AF64: 86 15       stx $15    ; PRG $14F64
  $AF66: a5 14       lda $14    ; PRG $14F66
  $AF68: a0 f0       ldy #$f0    ; PRG $14F68
  $AF6A: 91 06       sta ($06),y    ; PRG $14F6A
  $AF6C: a5 15       lda $15    ; PRG $14F6C
  $AF6E: c8          iny    ; PRG $14F6E
  $AF6F: 91 06       sta ($06),y    ; PRG $14F6F
  $AF71: 88          dey    ; PRG $14F71
  $AF72: b1 06       lda ($06),y    ; PRG $14F72
  $AF74: c9 03       cmp #$03    ; PRG $14F74
  $AF76: c8          iny    ; PRG $14F76
  $AF77: b1 06       lda ($06),y    ; PRG $14F77
  $AF79: e9 00       sbc #$00    ; PRG $14F79
  $AF7B: 90 03       bcc $af80    ; PRG $14F7B
  $AF7D: 4c f4 90    jmp $90f4    ; PRG $14F7D
  $AF80: a9 03       lda #$03    ; PRG $14F80
  $AF82: a0 f4       ldy #$f4    ; PRG $14F82
  $AF84: 91 06       sta ($06),y    ; PRG $14F84
  $AF86: 8a          txa    ; PRG $14F86
  $AF87: c8          iny    ; PRG $14F87
  $AF88: 91 06       sta ($06),y    ; PRG $14F88
  $AF8A: 18          clc    ; PRG $14F8A
  $AF8B: 88          dey    ; PRG $14F8B
  $AF8C: b1 06       lda ($06),y    ; PRG $14F8C
  $AF8E: 69 76       adc #$76    ; PRG $14F8E
  $AF90: a0 fc       ldy #$fc    ; PRG $14F90
  $AF92: 91 06       sta ($06),y    ; PRG $14F92
  $AF94: a0 f5       ldy #$f5    ; PRG $14F94
  $AF96: b1 06       lda ($06),y    ; PRG $14F96
  $AF98: 69 6f       adc #$6f    ; PRG $14F98
  $AF9A: a0 fd       ldy #$fd    ; PRG $14F9A
  $AF9C: 91 06       sta ($06),y    ; PRG $14F9C
  $AF9E: a9 a8       lda #$a8    ; PRG $14F9E
  $AFA0: a0 fa       ldy #$fa    ; PRG $14FA0
  $AFA2: 91 06       sta ($06),y    ; PRG $14FA2
  $AFA4: a9 6f       lda #$6f    ; PRG $14FA4
  $AFA6: c8          iny    ; PRG $14FA6
  $AFA7: 91 06       sta ($06),y    ; PRG $14FA7
  $AFA9: a9 0e       lda #$0e    ; PRG $14FA9
  $AFAB: 85 18       sta $18    ; PRG $14FAB
  $AFAD: 86 19       stx $19    ; PRG $14FAD
  $AFAF: a0 f4       ldy #$f4    ; PRG $14FAF
  $AFB1: b1 06       lda ($06),y    ; PRG $14FB1
  $AFB3: 85 14       sta $14    ; PRG $14FB3
  $AFB5: c8          iny    ; PRG $14FB5
  $AFB6: b1 06       lda ($06),y    ; PRG $14FB6
  $AFB8: 85 15       sta $15    ; PRG $14FB8
  $AFBA: a0 14       ldy #$14    ; PRG $14FBA
  $AFBC: a2 18       ldx #$18    ; PRG $14FBC
  $AFBE: a9 10       lda #$10    ; PRG $14FBE
  $AFC0: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $14FC0
  $AFC3: 18          clc    ; PRG $14FC3
  $AFC4: a5 10       lda $10    ; PRG $14FC4
  $AFC6: 69 b2       adc #$b2    ; PRG $14FC6
  $AFC8: a0 ec       ldy #$ec    ; PRG $14FC8
  $AFCA: 91 06       sta ($06),y    ; PRG $14FCA
  $AFCC: a5 11       lda $11    ; PRG $14FCC
  $AFCE: 69 67       adc #$67    ; PRG $14FCE
  $AFD0: c8          iny    ; PRG $14FD0
  $AFD1: 91 06       sta ($06),y    ; PRG $14FD1
  $AFD3: a9 c8       lda #$c8    ; PRG $14FD3
  $AFD5: a0 f8       ldy #$f8    ; PRG $14FD5
  $AFD7: 91 06       sta ($06),y    ; PRG $14FD7
  $AFD9: 8a          txa    ; PRG $14FD9
  $AFDA: c8          iny    ; PRG $14FDA
  $AFDB: 91 06       sta ($06),y    ; PRG $14FDB
  $AFDD: 4c 0d 90    jmp $900d    ; PRG $14FDD

; ---- sub_10_0fe0  [recovered]  <- (uncalled?)
  $AFE0: 18          clc    ; PRG $14FE0
  $AFE1: a9 01       lda #$01    ; PRG $14FE1
  $AFE3: a0 f4       ldy #$f4    ; PRG $14FE3
  $AFE5: 71 06       adc ($06),y    ; PRG $14FE5
  $AFE7: 91 06       sta ($06),y    ; PRG $14FE7
  $AFE9: 8a          txa    ; PRG $14FE9
  $AFEA: c8          iny    ; PRG $14FEA
  $AFEB: 71 06       adc ($06),y    ; PRG $14FEB
  $AFED: 91 06       sta ($06),y    ; PRG $14FED
  $AFEF: 18          clc    ; PRG $14FEF
  $AFF0: a9 0e       lda #$0e    ; PRG $14FF0
  $AFF2: a0 ec       ldy #$ec    ; PRG $14FF2
  $AFF4: 71 06       adc ($06),y    ; PRG $14FF4
  $AFF6: 91 06       sta ($06),y    ; PRG $14FF6
  $AFF8: 8a          txa    ; PRG $14FF8
  $AFF9: c8          iny    ; PRG $14FF9
  $AFFA: 71 06       adc ($06),y    ; PRG $14FFA
  $AFFC: 91 06       sta ($06),y    ; PRG $14FFC
  $AFFE: 18          clc    ; PRG $14FFE
  $AFFF: a9 01       lda #$01    ; PRG $14FFF
  $B001: a0 fc       ldy #$fc    ; PRG $15001
  $B003: 71 06       adc ($06),y    ; PRG $15003
  $B005: 91 06       sta ($06),y    ; PRG $15005
  $B007: 8a          txa    ; PRG $15007
  $B008: c8          iny    ; PRG $15008
  $B009: 71 06       adc ($06),y    ; PRG $15009
  $B00B: 91 06       sta ($06),y    ; PRG $1500B
  $B00D: a0 fc       ldy #$fc    ; PRG $1500D
  $B00F: b1 06       lda ($06),y    ; PRG $1500F
  $B011: a0 fa       ldy #$fa    ; PRG $15011
  $B013: d1 06       cmp ($06),y    ; PRG $15013
  $B015: a0 fd       ldy #$fd    ; PRG $15015
  $B017: b1 06       lda ($06),y    ; PRG $15017
  $B019: a0 fb       ldy #$fb    ; PRG $15019
  $B01B: f1 06       sbc ($06),y    ; PRG $1501B
  $B01D: 90 03       bcc $b022    ; PRG $1501D
  $B01F: 4c d0 90    jmp $90d0    ; PRG $1501F
  $B022: 18          clc    ; PRG $15022
  $B023: a9 01       lda #$01    ; PRG $15023
  $B025: a0 f0       ldy #$f0    ; PRG $15025
  $B027: 71 06       adc ($06),y    ; PRG $15027
  $B029: 85 18       sta $18    ; PRG $15029
  $B02B: 8a          txa    ; PRG $1502B
  $B02C: c8          iny    ; PRG $1502C
  $B02D: 71 06       adc ($06),y    ; PRG $1502D
  $B02F: 85 19       sta $19    ; PRG $1502F
  $B031: a0 fc       ldy #$fc    ; PRG $15031
  $B033: b1 06       lda ($06),y    ; PRG $15033
  $B035: 85 14       sta $14    ; PRG $15035
  $B037: c8          iny    ; PRG $15037
  $B038: b1 06       lda ($06),y    ; PRG $15038
  $B03A: 85 15       sta $15    ; PRG $1503A
  $B03C: a1 14       lda ($14,x)    ; PRG $1503C
  $B03E: 85 10       sta $10    ; PRG $1503E
  $B040: 86 11       stx $11    ; PRG $15040
  $B042: a9 03       lda #$03    ; PRG $15042
  $B044: 25 10       and $10    ; PRG $15044
  $B046: 85 14       sta $14    ; PRG $15046
  $B048: 8a          txa    ; PRG $15048
  $B049: 85 15       sta $15    ; PRG $15049
  $B04B: a5 14       lda $14    ; PRG $1504B
  $B04D: c5 18       cmp $18    ; PRG $1504D
  $B04F: d0 04       bne $b055    ; PRG $1504F
  $B051: a5 15       lda $15    ; PRG $15051
  $B053: c5 19       cmp $19    ; PRG $15053
  $B055: f0 03       beq $b05a    ; PRG $15055
  $B057: 4c cd 90    jmp $90cd    ; PRG $15057
  $B05A: 18          clc    ; PRG $1505A
  $B05B: a9 08       lda #$08    ; PRG $1505B
  $B05D: a0 ec       ldy #$ec    ; PRG $1505D
  $B05F: 71 06       adc ($06),y    ; PRG $1505F
  $B061: a0 fe       ldy #$fe    ; PRG $15061
  $B063: 91 06       sta ($06),y    ; PRG $15063
  $B065: 8a          txa    ; PRG $15065
  $B066: a0 ed       ldy #$ed    ; PRG $15066
  $B068: 71 06       adc ($06),y    ; PRG $15068
  $B06A: a0 ff       ldy #$ff    ; PRG $1506A
  $B06C: 91 06       sta ($06),y    ; PRG $1506C
  $B06E: 18          clc    ; PRG $1506E
  $B06F: 88          dey    ; PRG $1506F
  $B070: b1 06       lda ($06),y    ; PRG $15070
  $B072: a0 f0       ldy #$f0    ; PRG $15072
  $B074: 71 06       adc ($06),y    ; PRG $15074
  $B076: 85 18       sta $18    ; PRG $15076
  $B078: a0 ff       ldy #$ff    ; PRG $15078
  $B07A: b1 06       lda ($06),y    ; PRG $1507A
  $B07C: a0 f1       ldy #$f1    ; PRG $1507C
  $B07E: 71 06       adc ($06),y    ; PRG $1507E
  $B080: 85 19       sta $19    ; PRG $15080
  $B082: a1 18       lda ($18,x)    ; PRG $15082
  $B084: 85 14       sta $14    ; PRG $15084
  $B086: 86 15       stx $15    ; PRG $15086
  $B088: a5 14       lda $14    ; PRG $15088
  $B08A: a0 f8       ldy #$f8    ; PRG $1508A
  $B08C: d1 06       cmp ($06),y    ; PRG $1508C
  $B08E: a5 15       lda $15    ; PRG $1508E
  $B090: c8          iny    ; PRG $15090
  $B091: f1 06       sbc ($06),y    ; PRG $15091
  $B093: 90 03       bcc $b098    ; PRG $15093
  $B095: 4c cd 90    jmp $90cd    ; PRG $15095
  $B098: a0 f4       ldy #$f4    ; PRG $15098
  $B09A: b1 06       lda ($06),y    ; PRG $1509A
  $B09C: a0 f6       ldy #$f6    ; PRG $1509C
  $B09E: 91 06       sta ($06),y    ; PRG $1509E
  $B0A0: 88          dey    ; PRG $150A0
  $B0A1: b1 06       lda ($06),y    ; PRG $150A1
  $B0A3: a0 f7       ldy #$f7    ; PRG $150A3
  $B0A5: 91 06       sta ($06),y    ; PRG $150A5
  $B0A7: 18          clc    ; PRG $150A7
  $B0A8: a0 fe       ldy #$fe    ; PRG $150A8
  $B0AA: b1 06       lda ($06),y    ; PRG $150AA
  $B0AC: a0 f0       ldy #$f0    ; PRG $150AC
  $B0AE: 71 06       adc ($06),y    ; PRG $150AE
  $B0B0: 85 18       sta $18    ; PRG $150B0
  $B0B2: a0 ff       ldy #$ff    ; PRG $150B2
  $B0B4: b1 06       lda ($06),y    ; PRG $150B4
  $B0B6: a0 f1       ldy #$f1    ; PRG $150B6
  $B0B8: 71 06       adc ($06),y    ; PRG $150B8
  $B0BA: 85 19       sta $19    ; PRG $150BA
  $B0BC: a1 18       lda ($18,x)    ; PRG $150BC
  $B0BE: 85 14       sta $14    ; PRG $150BE
  $B0C0: 86 15       stx $15    ; PRG $150C0
  $B0C2: a5 14       lda $14    ; PRG $150C2
  $B0C4: a0 f8       ldy #$f8    ; PRG $150C4
  $B0C6: 91 06       sta ($06),y    ; PRG $150C6
  $B0C8: a5 15       lda $15    ; PRG $150C8
  $B0CA: c8          iny    ; PRG $150CA
  $B0CB: 91 06       sta ($06),y    ; PRG $150CB
  $B0CD: 4c e0 8f    jmp $8fe0    ; PRG $150CD

; ---- sub_10_10d0  [recovered]  <- (uncalled?)
  $B0D0: a0 f8       ldy #$f8    ; PRG $150D0
  $B0D2: b1 06       lda ($06),y    ; PRG $150D2
  $B0D4: c9 65       cmp #$65    ; PRG $150D4
  $B0D6: c8          iny    ; PRG $150D6
  $B0D7: b1 06       lda ($06),y    ; PRG $150D7
  $B0D9: e9 00       sbc #$00    ; PRG $150D9
  $B0DB: 90 03       bcc $b0e0    ; PRG $150DB
  $B0DD: 4c f4 90    jmp $90f4    ; PRG $150DD
  $B0E0: a0 ee       ldy #$ee    ; PRG $150E0
  $B0E2: b1 06       lda ($06),y    ; PRG $150E2
  $B0E4: 85 18       sta $18    ; PRG $150E4
  $B0E6: c8          iny    ; PRG $150E6
  $B0E7: b1 06       lda ($06),y    ; PRG $150E7
  $B0E9: 85 19       sta $19    ; PRG $150E9
  $B0EB: a0 f6       ldy #$f6    ; PRG $150EB
  $B0ED: b1 06       lda ($06),y    ; PRG $150ED
  $B0EF: a0 05       ldy #$05    ; PRG $150EF
  $B0F1: 91 18       sta ($18),y    ; PRG $150F1
  $B0F3: 60          rts    ; PRG $150F3

; ---- sub_10_10f4  [recovered]  <- (uncalled?)
  $B0F4: a0 0c       ldy #$0c    ; PRG $150F4
  $B0F6: b1 04       lda ($04),y    ; PRG $150F6
  $B0F8: 48          pha    ; PRG $150F8
  $B0F9: 88          dey    ; PRG $150F9
  $B0FA: b1 04       lda ($04),y    ; PRG $150FA
  $B0FC: 48          pha    ; PRG $150FC
  $B0FD: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $150FD
  $B100: 0b 8c 04    .db $0b $8c $04  -> vm $8C0B argc 4    ; PRG $15100
  $B103: 60          rts    ; PRG $15103

; ---- sub_10_110a  [stub]  <- (entry: bytecode/OS via $E299)
nat_10_1104: jsr $E299                    ; 10:B104  native-call prologue
            .db $00 $fe $ff            ; inline: argcount $00, frame $fffe
  $B10A: 18          clc    ; PRG $1510A
  $B10B: a9 ff       lda #$ff    ; PRG $1510B
  $B10D: a0 0b       ldy #$0b    ; PRG $1510D
  $B10F: 71 04       adc ($04),y    ; PRG $1510F
  $B111: a0 fe       ldy #$fe    ; PRG $15111
  $B113: 91 06       sta ($06),y    ; PRG $15113
  $B115: a9 ff       lda #$ff    ; PRG $15115
  $B117: a0 0c       ldy #$0c    ; PRG $15117
  $B119: 71 04       adc ($04),y    ; PRG $15119
  $B11B: a0 ff       ldy #$ff    ; PRG $1511B
  $B11D: 91 06       sta ($06),y    ; PRG $1511D
  $B11F: a9 05       lda #$05    ; PRG $1511F
  $B121: 85 18       sta $18    ; PRG $15121
  $B123: 86 19       stx $19    ; PRG $15123
  $B125: 88          dey    ; PRG $15125
  $B126: b1 06       lda ($06),y    ; PRG $15126
  $B128: 85 14       sta $14    ; PRG $15128
  $B12A: c8          iny    ; PRG $1512A
  $B12B: b1 06       lda ($06),y    ; PRG $1512B
  $B12D: 85 15       sta $15    ; PRG $1512D
  $B12F: a0 14       ldy #$14    ; PRG $1512F
  $B131: a2 18       ldx #$18    ; PRG $15131
  $B133: a9 10       lda #$10    ; PRG $15133
  $B135: 20 d9 e1    jsr $e1d9   ; alu_div_push_remainder    ; PRG $15135
  $B138: a5 10       lda $10    ; PRG $15138
  $B13A: c9 03       cmp #$03    ; PRG $1513A
  $B13C: d0 04       bne $b142    ; PRG $1513C
  $B13E: a5 11       lda $11    ; PRG $1513E
  $B140: c9 00       cmp #$00    ; PRG $15140
  $B142: f0 03       beq $b147    ; PRG $15142
  $B144: 4c 59 91    jmp $9159    ; PRG $15144
  $B147: a0 0c       ldy #$0c    ; PRG $15147
  $B149: b1 04       lda ($04),y    ; PRG $15149
  $B14B: 48          pha    ; PRG $1514B
  $B14C: 88          dey    ; PRG $1514C
  $B14D: b1 04       lda ($04),y    ; PRG $1514D
  $B14F: 48          pha    ; PRG $1514F
  $B150: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $15150
  $B153: 80 83 04    .db $80 $83 $04  -> vm $8380 argc 4    ; PRG $15153
  $B156: 4c a1 91    jmp $91a1   ; helm_hail_suspicious    ; PRG $15156

; ---- sub_10_1159  [recovered]  <- (uncalled?)
  $B159: a9 05       lda #$05    ; PRG $15159
  $B15B: 85 18       sta $18    ; PRG $1515B
  $B15D: 86 19       stx $19    ; PRG $1515D
  $B15F: a0 fe       ldy #$fe    ; PRG $1515F
  $B161: b1 06       lda ($06),y    ; PRG $15161
  $B163: 85 14       sta $14    ; PRG $15163
  $B165: c8          iny    ; PRG $15165
  $B166: b1 06       lda ($06),y    ; PRG $15166
  $B168: 85 15       sta $15    ; PRG $15168
  $B16A: a0 14       ldy #$14    ; PRG $1516A
  $B16C: a2 18       ldx #$18    ; PRG $1516C
  $B16E: a9 10       lda #$10    ; PRG $1516E
  $B170: 20 eb e1    jsr $e1eb   ; alu_udiv16    ; PRG $15170
  $B173: a5 10       lda $10    ; PRG $15173
  $B175: c9 03       cmp #$03    ; PRG $15175
  $B177: a5 11       lda $11    ; PRG $15177
  $B179: e9 00       sbc #$00    ; PRG $15179
  $B17B: 90 03       bcc $b180    ; PRG $1517B
  $B17D: 4c 92 91    jmp $9192    ; PRG $1517D
  $B180: a0 0c       ldy #$0c    ; PRG $15180
  $B182: b1 04       lda ($04),y    ; PRG $15182
  $B184: 48          pha    ; PRG $15184
  $B185: 88          dey    ; PRG $15185
  $B186: b1 04       lda ($04),y    ; PRG $15186
  $B188: 48          pha    ; PRG $15188
  $B189: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $15189
  $B18C: cb 8e 04    .db $cb $8e $04  -> vm $8ECB argc 4    ; PRG $1518C
  $B18F: 4c a1 91    jmp $91a1   ; helm_hail_suspicious    ; PRG $1518F

; ---- sub_10_1192  [recovered]  <- (uncalled?)
  $B192: a0 0c       ldy #$0c    ; PRG $15192
  $B194: b1 04       lda ($04),y    ; PRG $15194
  $B196: 48          pha    ; PRG $15196
  $B197: 88          dey    ; PRG $15197
  $B198: b1 04       lda ($04),y    ; PRG $15198
  $B19A: 48          pha    ; PRG $1519A
  $B19B: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1519B
  $B19E: c0 8a 04    .db $c0 $8a $04  -> vm $8AC0 argc 4    ; PRG $1519E
  $B1A1: 60          rts    ; PRG $151A1
