; ============================================================================
; Uncharted Waters - bank 9 NATIVE disassembly (window base $8000)
; 7 native subs: 7 $E299-stubbed (VM-frame entries) + 0 plain + 0 jumptable/CALL-recovered
; coverage: 7678B code+inline (93%) + 382B $FF-pad + 132B data
; control-flow-followed, inline bridges ($E299/$E338) skipped; calls resolved vs mesen-labels.toml.
; ============================================================================
.base $8000

; ---- sub_9_0068  [stub]  <- (entry: bytecode/OS via $E299)
nat_9_0062: jsr $E299                    ; 9:8062  native-call prologue
            .db $00 $f8 $ff            ; inline: argcount $00, frame $fff8
  $8068: a9 33       lda #$33    ; PRG $12068
  $806A: 85 18       sta $18    ; PRG $1206A
  $806C: 86 19       stx $19    ; PRG $1206C
  $806E: 18          clc    ; PRG $1206E
  $806F: a9 ff       lda #$ff    ; PRG $1206F
  $8071: a0 0b       ldy #$0b    ; PRG $12071
  $8073: 71 04       adc ($04),y    ; PRG $12073
  $8075: 85 14       sta $14    ; PRG $12075
  $8077: a9 ff       lda #$ff    ; PRG $12077
  $8079: c8          iny    ; PRG $12079
  $807A: 71 04       adc ($04),y    ; PRG $1207A
  $807C: 85 15       sta $15    ; PRG $1207C
  $807E: a0 14       ldy #$14    ; PRG $1207E
  $8080: a2 18       ldx #$18    ; PRG $12080
  $8082: a9 10       lda #$10    ; PRG $12082
  $8084: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $12084
  $8087: 18          clc    ; PRG $12087
  $8088: a5 10       lda $10    ; PRG $12088
  $808A: 69 04       adc #$04    ; PRG $1208A
  $808C: a0 f8       ldy #$f8    ; PRG $1208C
  $808E: 91 06       sta ($06),y    ; PRG $1208E
  $8090: a5 11       lda $11    ; PRG $12090
  $8092: 69 60       adc #$60    ; PRG $12092
  $8094: c8          iny    ; PRG $12094
  $8095: 91 06       sta ($06),y    ; PRG $12095
  $8097: 88          dey    ; PRG $12097
  $8098: b1 06       lda ($06),y    ; PRG $12098
  $809A: 85 18       sta $18    ; PRG $1209A
  $809C: c8          iny    ; PRG $1209C
  $809D: b1 06       lda ($06),y    ; PRG $1209D
  $809F: 85 19       sta $19    ; PRG $1209F
  $80A1: 8a          txa    ; PRG $120A1
  $80A2: a0 07       ldy #$07    ; PRG $120A2
  $80A4: 91 18       sta ($18),y    ; PRG $120A4
  $80A6: c8          iny    ; PRG $120A6
  $80A7: 91 18       sta ($18),y    ; PRG $120A7
  $80A9: a9 04       lda #$04    ; PRG $120A9
  $80AB: 85 18       sta $18    ; PRG $120AB
  $80AD: 86 19       stx $19    ; PRG $120AD
  $80AF: a0 0b       ldy #$0b    ; PRG $120AF
  $80B1: b1 04       lda ($04),y    ; PRG $120B1
  $80B3: 85 14       sta $14    ; PRG $120B3
  $80B5: c8          iny    ; PRG $120B5
  $80B6: b1 04       lda ($04),y    ; PRG $120B6
  $80B8: 85 15       sta $15    ; PRG $120B8
  $80BA: a0 14       ldy #$14    ; PRG $120BA
  $80BC: a2 18       ldx #$18    ; PRG $120BC
  $80BE: a9 10       lda #$10    ; PRG $120BE
  $80C0: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $120C0
  $80C3: 18          clc    ; PRG $120C3
  $80C4: a5 10       lda $10    ; PRG $120C4
  $80C6: 69 62       adc #$62    ; PRG $120C6
  $80C8: a0 fe       ldy #$fe    ; PRG $120C8
  $80CA: 91 06       sta ($06),y    ; PRG $120CA
  $80CC: a5 11       lda $11    ; PRG $120CC
  $80CE: 69 66       adc #$66    ; PRG $120CE
  $80D0: c8          iny    ; PRG $120D0
  $80D1: 91 06       sta ($06),y    ; PRG $120D1
  $80D3: 8a          txa    ; PRG $120D3
  $80D4: 48          pha    ; PRG $120D4
  $80D5: a9 10       lda #$10    ; PRG $120D5
  $80D7: 48          pha    ; PRG $120D7
  $80D8: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $120D8
  $80DB: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $120DB
  $80DE: 18          clc    ; PRG $120DE
  $80DF: a9 0f       lda #$0f    ; PRG $120DF
  $80E1: 65 08       adc $08    ; PRG $120E1
  $80E3: a0 fc       ldy #$fc    ; PRG $120E3
  $80E5: 91 06       sta ($06),y    ; PRG $120E5
  $80E7: 8a          txa    ; PRG $120E7
  $80E8: 65 09       adc $09    ; PRG $120E8
  $80EA: c8          iny    ; PRG $120EA
  $80EB: 91 06       sta ($06),y    ; PRG $120EB
  $80ED: a9 01       lda #$01    ; PRG $120ED
  $80EF: 85 18       sta $18    ; PRG $120EF
  $80F1: 86 19       stx $19    ; PRG $120F1
  $80F3: 88          dey    ; PRG $120F3
  $80F4: b1 06       lda ($06),y    ; PRG $120F4
  $80F6: 85 14       sta $14    ; PRG $120F6
  $80F8: c8          iny    ; PRG $120F8
  $80F9: b1 06       lda ($06),y    ; PRG $120F9
  $80FB: 85 15       sta $15    ; PRG $120FB
  $80FD: a0 14       ldy #$14    ; PRG $120FD
  $80FF: a2 18       ldx #$18    ; PRG $120FF
  $8101: a9 10       lda #$10    ; PRG $12101
  $8103: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $12103
  $8106: 18          clc    ; PRG $12106
  $8107: a5 10       lda $10    ; PRG $12107
  $8109: 69 25       adc #$25    ; PRG $12109
  $810B: 85 18       sta $18    ; PRG $1210B
  $810D: a5 11       lda $11    ; PRG $1210D
  $810F: 69 b8       adc #$b8    ; PRG $1210F
  $8111: 85 19       sta $19    ; PRG $12111
  $8113: a5 19       lda $19    ; PRG $12113
  $8115: 48          pha    ; PRG $12115
  $8116: a5 18       lda $18    ; PRG $12116
  $8118: 48          pha    ; PRG $12118
  $8119: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $12119
  $811C: 0c d3 04    .db $0c $d3 $04  -> vm $D30C argc 4    ; PRG $1211C
  $811F: 86 09       stx $09    ; PRG $1211F
  $8121: a5 08       lda $08    ; PRG $12121
  $8123: a0 fa       ldy #$fa    ; PRG $12123
  $8125: 91 06       sta ($06),y    ; PRG $12125
  $8127: a5 09       lda $09    ; PRG $12127
  $8129: c8          iny    ; PRG $12129
  $812A: 91 06       sta ($06),y    ; PRG $1212A
  $812C: a0 fe       ldy #$fe    ; PRG $1212C
  $812E: b1 06       lda ($06),y    ; PRG $1212E
  $8130: 85 18       sta $18    ; PRG $12130
  $8132: c8          iny    ; PRG $12132
  $8133: b1 06       lda ($06),y    ; PRG $12133
  $8135: 85 19       sta $19    ; PRG $12135
  $8137: a9 fd       lda #$fd    ; PRG $12137
  $8139: a0 0f       ldy #$0f    ; PRG $12139
  $813B: 31 18       and ($18),y    ; PRG $1213B
  $813D: 91 18       sta ($18),y    ; PRG $1213D
  $813F: 8a          txa    ; PRG $1213F
  $8140: 48          pha    ; PRG $12140
  $8141: a9 06       lda #$06    ; PRG $12141
  $8143: 48          pha    ; PRG $12143
  $8144: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $12144
  $8147: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $12147
  $814A: a0 fa       ldy #$fa    ; PRG $1214A
  $814C: b1 06       lda ($06),y    ; PRG $1214C
  $814E: c5 08       cmp $08    ; PRG $1214E
  $8150: c8          iny    ; PRG $12150
  $8151: b1 06       lda ($06),y    ; PRG $12151
  $8153: e5 09       sbc $09    ; PRG $12153
  $8155: 90 03       bcc $815a    ; PRG $12155
  $8157: 4c e6 81    jmp $81e6    ; PRG $12157
  $815A: a0 fe       ldy #$fe    ; PRG $1215A
  $815C: b1 06       lda ($06),y    ; PRG $1215C
  $815E: 85 18       sta $18    ; PRG $1215E
  $8160: c8          iny    ; PRG $12160
  $8161: b1 06       lda ($06),y    ; PRG $12161
  $8163: 85 19       sta $19    ; PRG $12163
  $8165: 8a          txa    ; PRG $12165
  $8166: a0 0b       ldy #$0b    ; PRG $12166
  $8168: 91 18       sta ($18),y    ; PRG $12168
  $816A: c8          iny    ; PRG $1216A
  $816B: 91 18       sta ($18),y    ; PRG $1216B
  $816D: a0 fe       ldy #$fe    ; PRG $1216D
  $816F: b1 06       lda ($06),y    ; PRG $1216F
  $8171: 85 18       sta $18    ; PRG $12171
  $8173: c8          iny    ; PRG $12173
  $8174: b1 06       lda ($06),y    ; PRG $12174
  $8176: 85 19       sta $19    ; PRG $12176
  $8178: 8a          txa    ; PRG $12178
  $8179: a0 0d       ldy #$0d    ; PRG $12179
  $817B: 91 18       sta ($18),y    ; PRG $1217B
  $817D: a9 80       lda #$80    ; PRG $1217D
  $817F: c8          iny    ; PRG $1217F
  $8180: 31 18       and ($18),y    ; PRG $12180
  $8182: 91 18       sta ($18),y    ; PRG $12182
  $8184: a9 01       lda #$01    ; PRG $12184
  $8186: 85 18       sta $18    ; PRG $12186
  $8188: 86 19       stx $19    ; PRG $12188
  $818A: a9 04       lda #$04    ; PRG $1218A
  $818C: 85 14       sta $14    ; PRG $1218C
  $818E: 86 15       stx $15    ; PRG $1218E
  $8190: a0 fc       ldy #$fc    ; PRG $12190
  $8192: b1 06       lda ($06),y    ; PRG $12192
  $8194: 85 10       sta $10    ; PRG $12194
  $8196: c8          iny    ; PRG $12196
  $8197: b1 06       lda ($06),y    ; PRG $12197
  $8199: 85 11       sta $11    ; PRG $12199
  $819B: a0 10       ldy #$10    ; PRG $1219B
  $819D: a2 14       ldx #$14    ; PRG $1219D
  $819F: a9 0c       lda #$0c    ; PRG $1219F
  $81A1: 20 15 e4    jsr $e415   ; alu_shr16_n    ; PRG $121A1
  $81A4: a0 0c       ldy #$0c    ; PRG $121A4
  $81A6: a2 18       ldx #$18    ; PRG $121A6
  $81A8: a9 14       lda #$14    ; PRG $121A8
  $81AA: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $121AA
  $81AD: 18          clc    ; PRG $121AD
  $81AE: a5 14       lda $14    ; PRG $121AE
  $81B0: a0 fe       ldy #$fe    ; PRG $121B0
  $81B2: 71 06       adc ($06),y    ; PRG $121B2
  $81B4: 85 18       sta $18    ; PRG $121B4
  $81B6: a5 15       lda $15    ; PRG $121B6
  $81B8: c8          iny    ; PRG $121B8
  $81B9: 71 06       adc ($06),y    ; PRG $121B9
  $81BB: 85 19       sta $19    ; PRG $121BB
  $81BD: a9 0f       lda #$0f    ; PRG $121BD
  $81BF: a0 fc       ldy #$fc    ; PRG $121BF
  $81C1: 31 06       and ($06),y    ; PRG $121C1
  $81C3: 85 14       sta $14    ; PRG $121C3
  $81C5: 8a          txa    ; PRG $121C5
  $81C6: 85 15       sta $15    ; PRG $121C6
  $81C8: a9 01       lda #$01    ; PRG $121C8
  $81CA: 85 10       sta $10    ; PRG $121CA
  $81CC: 86 11       stx $11    ; PRG $121CC
  $81CE: a0 10       ldy #$10    ; PRG $121CE
  $81D0: a2 14       ldx #$14    ; PRG $121D0
  $81D2: a9 0c       lda #$0c    ; PRG $121D2
  $81D4: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $121D4
  $81D7: a0 0b       ldy #$0b    ; PRG $121D7
  $81D9: b1 18       lda ($18),y    ; PRG $121D9
  $81DB: 05 0c       ora $0c    ; PRG $121DB
  $81DD: 91 18       sta ($18),y    ; PRG $121DD
  $81DF: c8          iny    ; PRG $121DF
  $81E0: b1 18       lda ($18),y    ; PRG $121E0
  $81E2: 05 0d       ora $0d    ; PRG $121E2
  $81E4: 91 18       sta ($18),y    ; PRG $121E4
  $81E6: 60          rts    ; PRG $121E6

; ---- sub_9_01ed  [stub]  <- (entry: bytecode/OS via $E299)
nat_9_01e7: jsr $E299                    ; 9:81E7  native-call prologue
            .db $00 $d5 $ff            ; inline: argcount $00, frame $ffd5
  $81ED: a9 04       lda #$04    ; PRG $121ED
  $81EF: 85 18       sta $18    ; PRG $121EF
  $81F1: 86 19       stx $19    ; PRG $121F1
  $81F3: a0 0b       ldy #$0b    ; PRG $121F3
  $81F5: b1 04       lda ($04),y    ; PRG $121F5
  $81F7: 85 14       sta $14    ; PRG $121F7
  $81F9: c8          iny    ; PRG $121F9
  $81FA: b1 04       lda ($04),y    ; PRG $121FA
  $81FC: 85 15       sta $15    ; PRG $121FC
  $81FE: a0 14       ldy #$14    ; PRG $121FE
  $8200: a2 18       ldx #$18    ; PRG $12200
  $8202: a9 10       lda #$10    ; PRG $12202
  $8204: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $12204
  $8207: 18          clc    ; PRG $12207
  $8208: a5 10       lda $10    ; PRG $12208
  $820A: 69 62       adc #$62    ; PRG $1220A
  $820C: a0 f4       ldy #$f4    ; PRG $1220C
  $820E: 91 06       sta ($06),y    ; PRG $1220E
  $8210: a5 11       lda $11    ; PRG $12210
  $8212: 69 66       adc #$66    ; PRG $12212
  $8214: c8          iny    ; PRG $12214
  $8215: 91 06       sta ($06),y    ; PRG $12215
  $8217: a0 0d       ldy #$0d    ; PRG $12217
  $8219: b1 04       lda ($04),y    ; PRG $12219
  $821B: c9 32       cmp #$32    ; PRG $1221B
  $821D: c8          iny    ; PRG $1221D
  $821E: b1 04       lda ($04),y    ; PRG $1221E
  $8220: e9 00       sbc #$00    ; PRG $12220
  $8222: 90 03       bcc $8227    ; PRG $12222
  $8224: 4c 36 8a    jmp $8a36    ; PRG $12224
  $8227: 84 18       sty $18    ; PRG $12227
  $8229: 86 19       stx $19    ; PRG $12229
  $822B: 88          dey    ; PRG $1222B
  $822C: b1 04       lda ($04),y    ; PRG $1222C
  $822E: 85 14       sta $14    ; PRG $1222E
  $8230: c8          iny    ; PRG $12230
  $8231: b1 04       lda ($04),y    ; PRG $12231
  $8233: 85 15       sta $15    ; PRG $12233
  $8235: a0 14       ldy #$14    ; PRG $12235
  $8237: a2 18       ldx #$18    ; PRG $12237
  $8239: a9 10       lda #$10    ; PRG $12239
  $823B: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1223B
  $823E: 18          clc    ; PRG $1223E
  $823F: a5 10       lda $10    ; PRG $1223F
  $8241: 69 b2       adc #$b2    ; PRG $12241
  $8243: a0 f2       ldy #$f2    ; PRG $12243
  $8245: 91 06       sta ($06),y    ; PRG $12245
  $8247: a5 11       lda $11    ; PRG $12247
  $8249: 69 67       adc #$67    ; PRG $12249
  $824B: c8          iny    ; PRG $1224B
  $824C: 91 06       sta ($06),y    ; PRG $1224C
  $824E: a9 05       lda #$05    ; PRG $1224E
  $8250: 85 18       sta $18    ; PRG $12250
  $8252: 86 19       stx $19    ; PRG $12252
  $8254: a0 0d       ldy #$0d    ; PRG $12254
  $8256: b1 04       lda ($04),y    ; PRG $12256
  $8258: 85 14       sta $14    ; PRG $12258
  $825A: c8          iny    ; PRG $1225A
  $825B: b1 04       lda ($04),y    ; PRG $1225B
  $825D: 85 15       sta $15    ; PRG $1225D
  $825F: a0 14       ldy #$14    ; PRG $1225F
  $8261: a2 18       ldx #$18    ; PRG $12261
  $8263: a9 10       lda #$10    ; PRG $12263
  $8265: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $12265
  $8268: 18          clc    ; PRG $12268
  $8269: a5 10       lda $10    ; PRG $12269
  $826B: 69 0b       adc #$0b    ; PRG $1226B
  $826D: 85 18       sta $18    ; PRG $1226D
  $826F: a5 11       lda $11    ; PRG $1226F
  $8271: 69 b5       adc #$b5    ; PRG $12271
  $8273: 85 19       sta $19    ; PRG $12273
  $8275: a5 19       lda $19    ; PRG $12275
  $8277: 48          pha    ; PRG $12277
  $8278: a5 18       lda $18    ; PRG $12278
  $827A: 48          pha    ; PRG $1227A
  $827B: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1227B
  $827E: 0c d3 04    .db $0c $d3 $04  -> vm $D30C argc 4    ; PRG $1227E
  $8281: 86 09       stx $09    ; PRG $12281
  $8283: a5 08       lda $08    ; PRG $12283
  $8285: a0 d9       ldy #$d9    ; PRG $12285
  $8287: 91 06       sta ($06),y    ; PRG $12287
  $8289: a5 09       lda $09    ; PRG $12289
  $828B: c8          iny    ; PRG $1228B
  $828C: 91 06       sta ($06),y    ; PRG $1228C
  $828E: 88          dey    ; PRG $1228E
  $828F: b1 06       lda ($06),y    ; PRG $1228F
  $8291: c9 ff       cmp #$ff    ; PRG $12291
  $8293: d0 05       bne $829a    ; PRG $12293
  $8295: c8          iny    ; PRG $12295
  $8296: b1 06       lda ($06),y    ; PRG $12296
  $8298: c9 00       cmp #$00    ; PRG $12298
  $829A: d0 03       bne $829f    ; PRG $1229A
  $829C: 4c 07 87    jmp $8707    ; PRG $1229C
  $829F: 18          clc    ; PRG $1229F
  $82A0: a9 e7       lda #$e7    ; PRG $122A0
  $82A2: 65 06       adc $06    ; PRG $122A2
  $82A4: 85 18       sta $18    ; PRG $122A4
  $82A6: 8a          txa    ; PRG $122A6
  $82A7: 65 07       adc $07    ; PRG $122A7
  $82A9: 85 19       sta $19    ; PRG $122A9
  $82AB: a5 19       lda $19    ; PRG $122AB
  $82AD: 48          pha    ; PRG $122AD
  $82AE: a5 18       lda $18    ; PRG $122AE
  $82B0: 48          pha    ; PRG $122B0
  $82B1: a0 0c       ldy #$0c    ; PRG $122B1
  $82B3: b1 04       lda ($04),y    ; PRG $122B3
  $82B5: 48          pha    ; PRG $122B5
  $82B6: 88          dey    ; PRG $122B6
  $82B7: b1 04       lda ($04),y    ; PRG $122B7
  $82B9: 48          pha    ; PRG $122B9
  $82BA: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $122BA
  $82BD: 26 d0 06    .db $26 $d0 $06  -> vm $D026 argc 6    ; PRG $122BD
  $82C0: a5 08       lda $08    ; PRG $122C0
  $82C2: a0 df       ldy #$df    ; PRG $122C2
  $82C4: 91 06       sta ($06),y    ; PRG $122C4
  $82C6: a5 09       lda $09    ; PRG $122C6
  $82C8: c8          iny    ; PRG $122C8
  $82C9: 91 06       sta ($06),y    ; PRG $122C9
  $82CB: 8a          txa    ; PRG $122CB
  $82CC: a0 fc       ldy #$fc    ; PRG $122CC
  $82CE: 91 06       sta ($06),y    ; PRG $122CE
  $82D0: c8          iny    ; PRG $122D0
  $82D1: 91 06       sta ($06),y    ; PRG $122D1
  $82D3: 18          clc    ; PRG $122D3
  $82D4: a9 e7       lda #$e7    ; PRG $122D4
  $82D6: 65 06       adc $06    ; PRG $122D6
  $82D8: 85 18       sta $18    ; PRG $122D8
  $82DA: 8a          txa    ; PRG $122DA
  $82DB: 65 07       adc $07    ; PRG $122DB
  $82DD: 85 19       sta $19    ; PRG $122DD
  $82DF: a5 18       lda $18    ; PRG $122DF
  $82E1: a0 e3       ldy #$e3    ; PRG $122E1
  $82E3: 91 06       sta ($06),y    ; PRG $122E3
  $82E5: a5 19       lda $19    ; PRG $122E5
  $82E7: c8          iny    ; PRG $122E7
  $82E8: 91 06       sta ($06),y    ; PRG $122E8
  $82EA: 18          clc    ; PRG $122EA
  $82EB: a5 18       lda $18    ; PRG $122EB
  $82ED: a0 df       ldy #$df    ; PRG $122ED
  $82EF: 71 06       adc ($06),y    ; PRG $122EF
  $82F1: a0 e1       ldy #$e1    ; PRG $122F1
  $82F3: 91 06       sta ($06),y    ; PRG $122F3
  $82F5: a5 19       lda $19    ; PRG $122F5
  $82F7: 88          dey    ; PRG $122F7
  $82F8: 71 06       adc ($06),y    ; PRG $122F8
  $82FA: a0 e2       ldy #$e2    ; PRG $122FA
  $82FC: 91 06       sta ($06),y    ; PRG $122FC
  $82FE: 4c 10 83    jmp $8310    ; PRG $122FE
  $8301: 18          clc    ; PRG $12301
  $8302: a9 01       lda #$01    ; PRG $12302
  $8304: a0 e3       ldy #$e3    ; PRG $12304
  $8306: 71 06       adc ($06),y    ; PRG $12306
  $8308: 91 06       sta ($06),y    ; PRG $12308
  $830A: 8a          txa    ; PRG $1230A
  $830B: c8          iny    ; PRG $1230B
  $830C: 71 06       adc ($06),y    ; PRG $1230C
  $830E: 91 06       sta ($06),y    ; PRG $1230E
  $8310: a0 e3       ldy #$e3    ; PRG $12310
  $8312: b1 06       lda ($06),y    ; PRG $12312
  $8314: a0 e1       ldy #$e1    ; PRG $12314
  $8316: d1 06       cmp ($06),y    ; PRG $12316
  $8318: a0 e4       ldy #$e4    ; PRG $12318
  $831A: b1 06       lda ($06),y    ; PRG $1231A
  $831C: a0 e2       ldy #$e2    ; PRG $1231C
  $831E: f1 06       sbc ($06),y    ; PRG $1231E
  $8320: 90 03       bcc $8325    ; PRG $12320
  $8322: 4c b3 83    jmp $83b3    ; PRG $12322
  $8325: a9 07       lda #$07    ; PRG $12325
  $8327: 85 18       sta $18    ; PRG $12327
  $8329: 86 19       stx $19    ; PRG $12329
  $832B: c8          iny    ; PRG $1232B
  $832C: b1 06       lda ($06),y    ; PRG $1232C
  $832E: 85 14       sta $14    ; PRG $1232E
  $8330: c8          iny    ; PRG $12330
  $8331: b1 06       lda ($06),y    ; PRG $12331
  $8333: 85 15       sta $15    ; PRG $12333
  $8335: a1 14       lda ($14,x)    ; PRG $12335
  $8337: 85 10       sta $10    ; PRG $12337
  $8339: 86 11       stx $11    ; PRG $12339
  $833B: a0 10       ldy #$10    ; PRG $1233B
  $833D: a2 18       ldx #$18    ; PRG $1233D
  $833F: a9 14       lda #$14    ; PRG $1233F
  $8341: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $12341
  $8344: 18          clc    ; PRG $12344
  $8345: a5 14       lda $14    ; PRG $12345
  $8347: 69 90       adc #$90    ; PRG $12347
  $8349: a0 f0       ldy #$f0    ; PRG $12349
  $834B: 91 06       sta ($06),y    ; PRG $1234B
  $834D: a5 15       lda $15    ; PRG $1234D
  $834F: 69 6c       adc #$6c    ; PRG $1234F
  $8351: c8          iny    ; PRG $12351
  $8352: 91 06       sta ($06),y    ; PRG $12352
  $8354: 88          dey    ; PRG $12354
  $8355: b1 06       lda ($06),y    ; PRG $12355
  $8357: 85 18       sta $18    ; PRG $12357
  $8359: c8          iny    ; PRG $12359
  $835A: b1 06       lda ($06),y    ; PRG $1235A
  $835C: 85 19       sta $19    ; PRG $1235C
  $835E: a0 06       ldy #$06    ; PRG $1235E
  $8360: b1 18       lda ($18),y    ; PRG $12360
  $8362: 85 14       sta $14    ; PRG $12362
  $8364: 86 15       stx $15    ; PRG $12364
  $8366: a9 0f       lda #$0f    ; PRG $12366
  $8368: 25 14       and $14    ; PRG $12368
  $836A: 85 18       sta $18    ; PRG $1236A
  $836C: 8a          txa    ; PRG $1236C
  $836D: 85 19       sta $19    ; PRG $1236D
  $836F: a5 19       lda $19    ; PRG $1236F
  $8371: 48          pha    ; PRG $12371
  $8372: a5 18       lda $18    ; PRG $12372
  $8374: 48          pha    ; PRG $12374
  $8375: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $12375
  $8378: 32 d5 04    .db $32 $d5 $04  -> vm $D532 argc 4    ; PRG $12378
  $837B: a5 08       lda $08    ; PRG $1237B
  $837D: a0 ee       ldy #$ee    ; PRG $1237D
  $837F: 91 06       sta ($06),y    ; PRG $1237F
  $8381: a5 09       lda $09    ; PRG $12381
  $8383: c8          iny    ; PRG $12383
  $8384: 91 06       sta ($06),y    ; PRG $12384
  $8386: 18          clc    ; PRG $12386
  $8387: a9 12       lda #$12    ; PRG $12387
  $8389: 88          dey    ; PRG $12389
  $838A: 71 06       adc ($06),y    ; PRG $1238A
  $838C: 85 18       sta $18    ; PRG $1238C
  $838E: 8a          txa    ; PRG $1238E
  $838F: c8          iny    ; PRG $1238F
  $8390: 71 06       adc ($06),y    ; PRG $12390
  $8392: 85 19       sta $19    ; PRG $12392
  $8394: a5 19       lda $19    ; PRG $12394
  $8396: 48          pha    ; PRG $12396
  $8397: a5 18       lda $18    ; PRG $12397
  $8399: 48          pha    ; PRG $12399
  $839A: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1239A
  $839D: 26 d3 04    .db $26 $d3 $04  -> vm $D326 argc 4    ; PRG $1239D
  $83A0: 18          clc    ; PRG $123A0
  $83A1: a0 fc       ldy #$fc    ; PRG $123A1
  $83A3: b1 06       lda ($06),y    ; PRG $123A3
  $83A5: 65 08       adc $08    ; PRG $123A5
  $83A7: 91 06       sta ($06),y    ; PRG $123A7
  $83A9: c8          iny    ; PRG $123A9
  $83AA: b1 06       lda ($06),y    ; PRG $123AA
  $83AC: 65 09       adc $09    ; PRG $123AC
  $83AE: 91 06       sta ($06),y    ; PRG $123AE
  $83B0: 4c 01 83    jmp $8301    ; PRG $123B0
  $83B3: a9 64       lda #$64    ; PRG $123B3
  $83B5: 85 18       sta $18    ; PRG $123B5
  $83B7: 86 19       stx $19    ; PRG $123B7
  $83B9: 86 1a       stx $1a    ; PRG $123B9
  $83BB: 86 1b       stx $1b    ; PRG $123BB
  $83BD: a0 f2       ldy #$f2    ; PRG $123BD
  $83BF: b1 06       lda ($06),y    ; PRG $123BF
  $83C1: 85 14       sta $14    ; PRG $123C1
  $83C3: c8          iny    ; PRG $123C3
  $83C4: b1 06       lda ($06),y    ; PRG $123C4
  $83C6: 85 15       sta $15    ; PRG $123C6
  $83C8: a0 0b       ldy #$0b    ; PRG $123C8
  $83CA: b1 14       lda ($14),y    ; PRG $123CA
  $83CC: 85 10       sta $10    ; PRG $123CC
  $83CE: 86 11       stx $11    ; PRG $123CE
  $83D0: 18          clc    ; PRG $123D0
  $83D1: a9 32       lda #$32    ; PRG $123D1
  $83D3: 65 10       adc $10    ; PRG $123D3
  $83D5: 85 14       sta $14    ; PRG $123D5
  $83D7: 8a          txa    ; PRG $123D7
  $83D8: 65 11       adc $11    ; PRG $123D8
  $83DA: 85 15       sta $15    ; PRG $123DA
  $83DC: 86 16       stx $16    ; PRG $123DC
  $83DE: 86 17       stx $17    ; PRG $123DE
  $83E0: a0 f2       ldy #$f2    ; PRG $123E0
  $83E2: b1 06       lda ($06),y    ; PRG $123E2
  $83E4: 85 10       sta $10    ; PRG $123E4
  $83E6: c8          iny    ; PRG $123E6
  $83E7: b1 06       lda ($06),y    ; PRG $123E7
  $83E9: 85 11       sta $11    ; PRG $123E9
  $83EB: a0 0c       ldy #$0c    ; PRG $123EB
  $83ED: b1 10       lda ($10),y    ; PRG $123ED
  $83EF: 85 0c       sta $0c    ; PRG $123EF
  $83F1: c8          iny    ; PRG $123F1
  $83F2: b1 10       lda ($10),y    ; PRG $123F2
  $83F4: 85 0d       sta $0d    ; PRG $123F4
  $83F6: a0 00       ldy #$00    ; PRG $123F6
  $83F8: a5 0d       lda $0d    ; PRG $123F8
  $83FA: 10 01       bpl $83fd    ; PRG $123FA
  $83FC: 88          dey    ; PRG $123FC
  $83FD: 84 0e       sty $0e    ; PRG $123FD
  $83FF: 84 0f       sty $0f    ; PRG $123FF
  $8401: a0 0c       ldy #$0c    ; PRG $12401
  $8403: a2 14       ldx #$14    ; PRG $12403
  $8405: a9 10       lda #$10    ; PRG $12405
  $8407: 20 81 ef    jsr $ef81   ; native_ef81    ; PRG $12407
  $840A: a0 10       ldy #$10    ; PRG $1240A
  $840C: a2 18       ldx #$18    ; PRG $1240C
  $840E: a9 14       lda #$14    ; PRG $1240E
  $8410: 20 b0 ef    jsr $efb0   ; sdiv32    ; PRG $12410
  $8413: a5 14       lda $14    ; PRG $12413
  $8415: a0 fa       ldy #$fa    ; PRG $12415
  $8417: 91 06       sta ($06),y    ; PRG $12417
  $8419: a5 15       lda $15    ; PRG $12419
  $841B: c8          iny    ; PRG $1241B
  $841C: 91 06       sta ($06),y    ; PRG $1241C
  $841E: 88          dey    ; PRG $1241E
  $841F: b1 06       lda ($06),y    ; PRG $1241F
  $8421: 85 18       sta $18    ; PRG $12421
  $8423: c8          iny    ; PRG $12423
  $8424: b1 06       lda ($06),y    ; PRG $12424
  $8426: 85 19       sta $19    ; PRG $12426
  $8428: a9 03       lda #$03    ; PRG $12428
  $842A: 85 14       sta $14    ; PRG $1242A
  $842C: 86 15       stx $15    ; PRG $1242C
  $842E: a0 f4       ldy #$f4    ; PRG $1242E
  $8430: b1 06       lda ($06),y    ; PRG $12430
  $8432: 85 10       sta $10    ; PRG $12432
  $8434: c8          iny    ; PRG $12434
  $8435: b1 06       lda ($06),y    ; PRG $12435
  $8437: 85 11       sta $11    ; PRG $12437
  $8439: 18          clc    ; PRG $12439
  $843A: a9 01       lda #$01    ; PRG $1243A
  $843C: a0 09       ldy #$09    ; PRG $1243C
  $843E: 71 10       adc ($10),y    ; PRG $1243E
  $8440: 85 0c       sta $0c    ; PRG $12440
  $8442: 8a          txa    ; PRG $12442
  $8443: c8          iny    ; PRG $12443
  $8444: 71 10       adc ($10),y    ; PRG $12444
  $8446: 85 0d       sta $0d    ; PRG $12446
  $8448: a0 0c       ldy #$0c    ; PRG $12448
  $844A: a2 14       ldx #$14    ; PRG $1244A
  $844C: a9 10       lda #$10    ; PRG $1244C
  $844E: 20 d9 e1    jsr $e1d9   ; alu_div_push_remainder    ; PRG $1244E
  $8451: a0 10       ldy #$10    ; PRG $12451
  $8453: a2 18       ldx #$18    ; PRG $12453
  $8455: a9 14       lda #$14    ; PRG $12455
  $8457: 20 d9 e1    jsr $e1d9   ; alu_div_push_remainder    ; PRG $12457
  $845A: a5 14       lda $14    ; PRG $1245A
  $845C: a0 f8       ldy #$f8    ; PRG $1245C
  $845E: 91 06       sta ($06),y    ; PRG $1245E
  $8460: a5 15       lda $15    ; PRG $12460
  $8462: c8          iny    ; PRG $12462
  $8463: 91 06       sta ($06),y    ; PRG $12463
  $8465: a0 fd       ldy #$fd    ; PRG $12465
  $8467: b1 06       lda ($06),y    ; PRG $12467
  $8469: 48          pha    ; PRG $12469
  $846A: 88          dey    ; PRG $1246A
  $846B: b1 06       lda ($06),y    ; PRG $1246B
  $846D: 48          pha    ; PRG $1246D
  $846E: a0 f9       ldy #$f9    ; PRG $1246E
  $8470: b1 06       lda ($06),y    ; PRG $12470
  $8472: 48          pha    ; PRG $12472
  $8473: 88          dey    ; PRG $12473
  $8474: b1 06       lda ($06),y    ; PRG $12474
  $8476: 48          pha    ; PRG $12476
  $8477: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $12477
  $847A: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $1247A
  $847D: a5 08       lda $08    ; PRG $1247D
  $847F: a0 f8       ldy #$f8    ; PRG $1247F
  $8481: 91 06       sta ($06),y    ; PRG $12481
  $8483: a5 09       lda $09    ; PRG $12483
  $8485: c8          iny    ; PRG $12485
  $8486: 91 06       sta ($06),y    ; PRG $12486
  $8488: a0 f4       ldy #$f4    ; PRG $12488
  $848A: b1 06       lda ($06),y    ; PRG $1248A
  $848C: 85 18       sta $18    ; PRG $1248C
  $848E: c8          iny    ; PRG $1248E
  $848F: b1 06       lda ($06),y    ; PRG $1248F
  $8491: 85 19       sta $19    ; PRG $12491
  $8493: a0 fa       ldy #$fa    ; PRG $12493
  $8495: b1 06       lda ($06),y    ; PRG $12495
  $8497: 85 14       sta $14    ; PRG $12497
  $8499: c8          iny    ; PRG $12499
  $849A: b1 06       lda ($06),y    ; PRG $1249A
  $849C: 85 15       sta $15    ; PRG $1249C
  $849E: a0 f8       ldy #$f8    ; PRG $1249E
  $84A0: b1 06       lda ($06),y    ; PRG $124A0
  $84A2: 85 10       sta $10    ; PRG $124A2
  $84A4: c8          iny    ; PRG $124A4
  $84A5: b1 06       lda ($06),y    ; PRG $124A5
  $84A7: 85 11       sta $11    ; PRG $124A7
  $84A9: a0 10       ldy #$10    ; PRG $124A9
  $84AB: a2 14       ldx #$14    ; PRG $124AB
  $84AD: a9 0c       lda #$0c    ; PRG $124AD
  $84AF: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $124AF
  $84B2: 38          sec    ; PRG $124B2
  $84B3: a0 09       ldy #$09    ; PRG $124B3
  $84B5: b1 18       lda ($18),y    ; PRG $124B5
  $84B7: e5 0c       sbc $0c    ; PRG $124B7
  $84B9: 91 18       sta ($18),y    ; PRG $124B9
  $84BB: c8          iny    ; PRG $124BB
  $84BC: b1 18       lda ($18),y    ; PRG $124BC
  $84BE: e5 0d       sbc $0d    ; PRG $124BE
  $84C0: 91 18       sta ($18),y    ; PRG $124C0
  $84C2: a0 f2       ldy #$f2    ; PRG $124C2
  $84C4: b1 06       lda ($06),y    ; PRG $124C4
  $84C6: 85 18       sta $18    ; PRG $124C6
  $84C8: c8          iny    ; PRG $124C8
  $84C9: b1 06       lda ($06),y    ; PRG $124C9
  $84CB: 85 19       sta $19    ; PRG $124CB
  $84CD: a2 18       ldx #$18    ; PRG $124CD
  $84CF: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $124CF
  $84D2: 48          pha    ; PRG $124D2
  $84D3: a9 64       lda #$64    ; PRG $124D3
  $84D5: 48          pha    ; PRG $124D5
  $84D6: 8a          txa    ; PRG $124D6
  $84D7: 48          pha    ; PRG $124D7
  $84D8: a9 03       lda #$03    ; PRG $124D8
  $84DA: 48          pha    ; PRG $124DA
  $84DB: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $124DB
  $84DE: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $124DE
  $84E1: a0 f2       ldy #$f2    ; PRG $124E1
  $84E3: b1 06       lda ($06),y    ; PRG $124E3
  $84E5: 85 18       sta $18    ; PRG $124E5
  $84E7: c8          iny    ; PRG $124E7
  $84E8: b1 06       lda ($06),y    ; PRG $124E8
  $84EA: 85 19       sta $19    ; PRG $124EA
  $84EC: a0 0b       ldy #$0b    ; PRG $124EC
  $84EE: b1 18       lda ($18),y    ; PRG $124EE
  $84F0: 85 14       sta $14    ; PRG $124F0
  $84F2: 86 15       stx $15    ; PRG $124F2
  $84F4: 18          clc    ; PRG $124F4
  $84F5: a5 14       lda $14    ; PRG $124F5
  $84F7: 65 08       adc $08    ; PRG $124F7
  $84F9: 85 18       sta $18    ; PRG $124F9
  $84FB: a5 15       lda $15    ; PRG $124FB
  $84FD: 65 09       adc $09    ; PRG $124FD
  $84FF: 85 19       sta $19    ; PRG $124FF
  $8501: 18          clc    ; PRG $12501
  $8502: a9 04       lda #$04    ; PRG $12502
  $8504: 65 18       adc $18    ; PRG $12504
  $8506: 85 14       sta $14    ; PRG $12506
  $8508: 8a          txa    ; PRG $12508
  $8509: 65 19       adc $19    ; PRG $12509
  $850B: 85 15       sta $15    ; PRG $1250B
  $850D: a5 15       lda $15    ; PRG $1250D
  $850F: 48          pha    ; PRG $1250F
  $8510: a5 14       lda $14    ; PRG $12510
  $8512: 48          pha    ; PRG $12512
  $8513: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $12513
  $8516: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $12516
  $8519: a2 18       ldx #$18    ; PRG $12519
  $851B: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $1251B
  $851E: a5 08       lda $08    ; PRG $1251E
  $8520: a0 0b       ldy #$0b    ; PRG $12520
  $8522: 91 18       sta ($18),y    ; PRG $12522
  $8524: a0 f2       ldy #$f2    ; PRG $12524
  $8526: b1 06       lda ($06),y    ; PRG $12526
  $8528: 85 18       sta $18    ; PRG $12528
  $852A: c8          iny    ; PRG $1252A
  $852B: b1 06       lda ($06),y    ; PRG $1252B
  $852D: 85 19       sta $19    ; PRG $1252D
  $852F: a2 18       ldx #$18    ; PRG $1252F
  $8531: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $12531
  $8534: a9 02       lda #$02    ; PRG $12534
  $8536: 48          pha    ; PRG $12536
  $8537: a9 58       lda #$58    ; PRG $12537
  $8539: 48          pha    ; PRG $12539
  $853A: a0 f2       ldy #$f2    ; PRG $1253A
  $853C: b1 06       lda ($06),y    ; PRG $1253C
  $853E: 85 18       sta $18    ; PRG $1253E
  $8540: c8          iny    ; PRG $12540
  $8541: b1 06       lda ($06),y    ; PRG $12541
  $8543: 85 19       sta $19    ; PRG $12543
  $8545: 18          clc    ; PRG $12545
  $8546: a9 03       lda #$03    ; PRG $12546
  $8548: a0 0c       ldy #$0c    ; PRG $12548
  $854A: 71 18       adc ($18),y    ; PRG $1254A
  $854C: 85 14       sta $14    ; PRG $1254C
  $854E: 8a          txa    ; PRG $1254E
  $854F: c8          iny    ; PRG $1254F
  $8550: 71 18       adc ($18),y    ; PRG $12550
  $8552: 85 15       sta $15    ; PRG $12552
  $8554: a5 15       lda $15    ; PRG $12554
  $8556: 48          pha    ; PRG $12556
  $8557: a5 14       lda $14    ; PRG $12557
  $8559: 48          pha    ; PRG $12559
  $855A: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1255A
  $855D: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $1255D
  $8560: a2 18       ldx #$18    ; PRG $12560
  $8562: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $12562
  $8565: a5 08       lda $08    ; PRG $12565
  $8567: a0 0c       ldy #$0c    ; PRG $12567
  $8569: 91 18       sta ($18),y    ; PRG $12569
  $856B: a5 09       lda $09    ; PRG $1256B
  $856D: c8          iny    ; PRG $1256D
  $856E: 91 18       sta ($18),y    ; PRG $1256E
  $8570: a9 05       lda #$05    ; PRG $12570
  $8572: 85 18       sta $18    ; PRG $12572
  $8574: 86 19       stx $19    ; PRG $12574
  $8576: 18          clc    ; PRG $12576
  $8577: a9 ff       lda #$ff    ; PRG $12577
  $8579: a0 0b       ldy #$0b    ; PRG $12579
  $857B: 71 04       adc ($04),y    ; PRG $1257B
  $857D: 85 14       sta $14    ; PRG $1257D
  $857F: a9 ff       lda #$ff    ; PRG $1257F
  $8581: c8          iny    ; PRG $12581
  $8582: 71 04       adc ($04),y    ; PRG $12582
  $8584: 85 15       sta $15    ; PRG $12584
  $8586: a0 14       ldy #$14    ; PRG $12586
  $8588: a2 18       ldx #$18    ; PRG $12588
  $858A: a9 10       lda #$10    ; PRG $1258A
  $858C: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1258C
  $858F: a5 10       lda $10    ; PRG $1258F
  $8591: a0 d7       ldy #$d7    ; PRG $12591
  $8593: 91 06       sta ($06),y    ; PRG $12593
  $8595: a5 11       lda $11    ; PRG $12595
  $8597: c8          iny    ; PRG $12597
  $8598: 91 06       sta ($06),y    ; PRG $12598
  $859A: 8a          txa    ; PRG $1259A
  $859B: a0 fc       ldy #$fc    ; PRG $1259B
  $859D: 91 06       sta ($06),y    ; PRG $1259D
  $859F: c8          iny    ; PRG $1259F
  $85A0: 91 06       sta ($06),y    ; PRG $125A0
  $85A2: 18          clc    ; PRG $125A2
  $85A3: a9 e7       lda #$e7    ; PRG $125A3
  $85A5: 65 06       adc $06    ; PRG $125A5
  $85A7: 85 18       sta $18    ; PRG $125A7
  $85A9: 8a          txa    ; PRG $125A9
  $85AA: 65 07       adc $07    ; PRG $125AA
  $85AC: 85 19       sta $19    ; PRG $125AC
  $85AE: a5 18       lda $18    ; PRG $125AE
  $85B0: a0 e3       ldy #$e3    ; PRG $125B0
  $85B2: 91 06       sta ($06),y    ; PRG $125B2
  $85B4: a5 19       lda $19    ; PRG $125B4
  $85B6: c8          iny    ; PRG $125B6
  $85B7: 91 06       sta ($06),y    ; PRG $125B7
  $85B9: 4c da 85    jmp $85da    ; PRG $125B9
  $85BC: 18          clc    ; PRG $125BC
  $85BD: a9 01       lda #$01    ; PRG $125BD
  $85BF: a0 d7       ldy #$d7    ; PRG $125BF
  $85C1: 71 06       adc ($06),y    ; PRG $125C1
  $85C3: 91 06       sta ($06),y    ; PRG $125C3
  $85C5: 8a          txa    ; PRG $125C5
  $85C6: c8          iny    ; PRG $125C6
  $85C7: 71 06       adc ($06),y    ; PRG $125C7
  $85C9: 91 06       sta ($06),y    ; PRG $125C9
  $85CB: 18          clc    ; PRG $125CB
  $85CC: a9 01       lda #$01    ; PRG $125CC
  $85CE: a0 e3       ldy #$e3    ; PRG $125CE
  $85D0: 71 06       adc ($06),y    ; PRG $125D0
  $85D2: 91 06       sta ($06),y    ; PRG $125D2
  $85D4: 8a          txa    ; PRG $125D4
  $85D5: c8          iny    ; PRG $125D5
  $85D6: 71 06       adc ($06),y    ; PRG $125D6
  $85D8: 91 06       sta ($06),y    ; PRG $125D8
  $85DA: a0 e3       ldy #$e3    ; PRG $125DA
  $85DC: b1 06       lda ($06),y    ; PRG $125DC
  $85DE: a0 e1       ldy #$e1    ; PRG $125DE
  $85E0: d1 06       cmp ($06),y    ; PRG $125E0
  $85E2: a0 e4       ldy #$e4    ; PRG $125E2
  $85E4: b1 06       lda ($06),y    ; PRG $125E4
  $85E6: a0 e2       ldy #$e2    ; PRG $125E6
  $85E8: f1 06       sbc ($06),y    ; PRG $125E8
  $85EA: 90 03       bcc $85ef    ; PRG $125EA
  $85EC: 4c 07 87    jmp $8707    ; PRG $125EC
  $85EF: a9 07       lda #$07    ; PRG $125EF
  $85F1: 85 18       sta $18    ; PRG $125F1
  $85F3: 86 19       stx $19    ; PRG $125F3
  $85F5: c8          iny    ; PRG $125F5
  $85F6: b1 06       lda ($06),y    ; PRG $125F6
  $85F8: 85 14       sta $14    ; PRG $125F8
  $85FA: c8          iny    ; PRG $125FA
  $85FB: b1 06       lda ($06),y    ; PRG $125FB
  $85FD: 85 15       sta $15    ; PRG $125FD
  $85FF: a1 14       lda ($14,x)    ; PRG $125FF
  $8601: 85 10       sta $10    ; PRG $12601
  $8603: 86 11       stx $11    ; PRG $12603
  $8605: a0 10       ldy #$10    ; PRG $12605
  $8607: a2 18       ldx #$18    ; PRG $12607
  $8609: a9 14       lda #$14    ; PRG $12609
  $860B: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1260B
  $860E: 18          clc    ; PRG $1260E
  $860F: a5 14       lda $14    ; PRG $1260F
  $8611: 69 90       adc #$90    ; PRG $12611
  $8613: a0 f0       ldy #$f0    ; PRG $12613
  $8615: 91 06       sta ($06),y    ; PRG $12615
  $8617: a5 15       lda $15    ; PRG $12617
  $8619: 69 6c       adc #$6c    ; PRG $12619
  $861B: c8          iny    ; PRG $1261B
  $861C: 91 06       sta ($06),y    ; PRG $1261C
  $861E: 88          dey    ; PRG $1261E
  $861F: b1 06       lda ($06),y    ; PRG $1261F
  $8621: 85 18       sta $18    ; PRG $12621
  $8623: c8          iny    ; PRG $12623
  $8624: b1 06       lda ($06),y    ; PRG $12624
  $8626: 85 19       sta $19    ; PRG $12626
  $8628: a0 06       ldy #$06    ; PRG $12628
  $862A: b1 18       lda ($18),y    ; PRG $1262A
  $862C: 85 14       sta $14    ; PRG $1262C
  $862E: 86 15       stx $15    ; PRG $1262E
  $8630: a9 0f       lda #$0f    ; PRG $12630
  $8632: 25 14       and $14    ; PRG $12632
  $8634: 85 18       sta $18    ; PRG $12634
  $8636: 8a          txa    ; PRG $12636
  $8637: 85 19       sta $19    ; PRG $12637
  $8639: a5 19       lda $19    ; PRG $12639
  $863B: 48          pha    ; PRG $1263B
  $863C: a5 18       lda $18    ; PRG $1263C
  $863E: 48          pha    ; PRG $1263E
  $863F: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1263F
  $8642: 32 d5 04    .db $32 $d5 $04  -> vm $D532 argc 4    ; PRG $12642
  $8645: a5 08       lda $08    ; PRG $12645
  $8647: a0 ee       ldy #$ee    ; PRG $12647
  $8649: 91 06       sta ($06),y    ; PRG $12649
  $864B: a5 09       lda $09    ; PRG $1264B
  $864D: c8          iny    ; PRG $1264D
  $864E: 91 06       sta ($06),y    ; PRG $1264E
  $8650: a9 03       lda #$03    ; PRG $12650
  $8652: 85 18       sta $18    ; PRG $12652
  $8654: 86 19       stx $19    ; PRG $12654
  $8656: a0 d7       ldy #$d7    ; PRG $12656
  $8658: b1 06       lda ($06),y    ; PRG $12658
  $865A: 85 14       sta $14    ; PRG $1265A
  $865C: c8          iny    ; PRG $1265C
  $865D: b1 06       lda ($06),y    ; PRG $1265D
  $865F: 85 15       sta $15    ; PRG $1265F
  $8661: a0 14       ldy #$14    ; PRG $12661
  $8663: a2 18       ldx #$18    ; PRG $12663
  $8665: a9 10       lda #$10    ; PRG $12665
  $8667: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $12667
  $866A: 18          clc    ; PRG $1266A
  $866B: a5 10       lda $10    ; PRG $1266B
  $866D: 69 00       adc #$00    ; PRG $1266D
  $866F: a0 ec       ldy #$ec    ; PRG $1266F
  $8671: 91 06       sta ($06),y    ; PRG $12671
  $8673: a5 11       lda $11    ; PRG $12673
  $8675: 69 64       adc #$64    ; PRG $12675
  $8677: c8          iny    ; PRG $12677
  $8678: 91 06       sta ($06),y    ; PRG $12678
  $867A: 18          clc    ; PRG $1267A
  $867B: a9 12       lda #$12    ; PRG $1267B
  $867D: c8          iny    ; PRG $1267D
  $867E: 71 06       adc ($06),y    ; PRG $1267E
  $8680: 85 18       sta $18    ; PRG $12680
  $8682: 8a          txa    ; PRG $12682
  $8683: c8          iny    ; PRG $12683
  $8684: 71 06       adc ($06),y    ; PRG $12684
  $8686: 85 19       sta $19    ; PRG $12686
  $8688: a5 19       lda $19    ; PRG $12688
  $868A: 48          pha    ; PRG $1268A
  $868B: a5 18       lda $18    ; PRG $1268B
  $868D: 48          pha    ; PRG $1268D
  $868E: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1268E
  $8691: 26 d3 04    .db $26 $d3 $04  -> vm $D326 argc 4    ; PRG $12691
  $8694: a5 09       lda $09    ; PRG $12694
  $8696: 48          pha    ; PRG $12696
  $8697: a5 08       lda $08    ; PRG $12697
  $8699: 48          pha    ; PRG $12699
  $869A: a0 f9       ldy #$f9    ; PRG $1269A
  $869C: b1 06       lda ($06),y    ; PRG $1269C
  $869E: 48          pha    ; PRG $1269E
  $869F: 88          dey    ; PRG $1269F
  $86A0: b1 06       lda ($06),y    ; PRG $126A0
  $86A2: 48          pha    ; PRG $126A2
  $86A3: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $126A3
  $86A6: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $126A6
  $86A9: a5 08       lda $08    ; PRG $126A9
  $86AB: a0 f6       ldy #$f6    ; PRG $126AB
  $86AD: 91 06       sta ($06),y    ; PRG $126AD
  $86AF: a5 09       lda $09    ; PRG $126AF
  $86B1: c8          iny    ; PRG $126B1
  $86B2: 91 06       sta ($06),y    ; PRG $126B2
  $86B4: a0 ec       ldy #$ec    ; PRG $126B4
  $86B6: b1 06       lda ($06),y    ; PRG $126B6
  $86B8: 85 18       sta $18    ; PRG $126B8
  $86BA: c8          iny    ; PRG $126BA
  $86BB: b1 06       lda ($06),y    ; PRG $126BB
  $86BD: 85 19       sta $19    ; PRG $126BD
  $86BF: a0 f6       ldy #$f6    ; PRG $126BF
  $86C1: b1 06       lda ($06),y    ; PRG $126C1
  $86C3: a0 01       ldy #$01    ; PRG $126C3
  $86C5: 91 18       sta ($18),y    ; PRG $126C5
  $86C7: a0 f7       ldy #$f7    ; PRG $126C7
  $86C9: b1 06       lda ($06),y    ; PRG $126C9
  $86CB: a0 02       ldy #$02    ; PRG $126CB
  $86CD: 91 18       sta ($18),y    ; PRG $126CD
  $86CF: 38          sec    ; PRG $126CF
  $86D0: a0 f8       ldy #$f8    ; PRG $126D0
  $86D2: b1 06       lda ($06),y    ; PRG $126D2
  $86D4: a0 f6       ldy #$f6    ; PRG $126D4
  $86D6: f1 06       sbc ($06),y    ; PRG $126D6
  $86D8: a0 f8       ldy #$f8    ; PRG $126D8
  $86DA: 91 06       sta ($06),y    ; PRG $126DA
  $86DC: c8          iny    ; PRG $126DC
  $86DD: b1 06       lda ($06),y    ; PRG $126DD
  $86DF: a0 f7       ldy #$f7    ; PRG $126DF
  $86E1: f1 06       sbc ($06),y    ; PRG $126E1
  $86E3: a0 f9       ldy #$f9    ; PRG $126E3
  $86E5: 91 06       sta ($06),y    ; PRG $126E5
  $86E7: a0 ec       ldy #$ec    ; PRG $126E7
  $86E9: b1 06       lda ($06),y    ; PRG $126E9
  $86EB: 85 18       sta $18    ; PRG $126EB
  $86ED: c8          iny    ; PRG $126ED
  $86EE: b1 06       lda ($06),y    ; PRG $126EE
  $86F0: 85 19       sta $19    ; PRG $126F0
  $86F2: a0 d9       ldy #$d9    ; PRG $126F2
  $86F4: b1 06       lda ($06),y    ; PRG $126F4
  $86F6: 81 18       sta ($18,x)    ; PRG $126F6
  $86F8: a0 f8       ldy #$f8    ; PRG $126F8
  $86FA: b1 06       lda ($06),y    ; PRG $126FA
  $86FC: c8          iny    ; PRG $126FC
  $86FD: 11 06       ora ($06),y    ; PRG $126FD
  $86FF: d0 03       bne $8704    ; PRG $126FF
  $8701: 4c 07 87    jmp $8707    ; PRG $12701
  $8704: 4c bc 85    jmp $85bc    ; PRG $12704
  $8707: a0 f4       ldy #$f4    ; PRG $12707
  $8709: b1 06       lda ($06),y    ; PRG $12709
  $870B: 85 18       sta $18    ; PRG $1270B
  $870D: c8          iny    ; PRG $1270D
  $870E: b1 06       lda ($06),y    ; PRG $1270E
  $8710: 85 19       sta $19    ; PRG $12710
  $8712: a9 01       lda #$01    ; PRG $12712
  $8714: 85 14       sta $14    ; PRG $12714
  $8716: 86 15       stx $15    ; PRG $12716
  $8718: 88          dey    ; PRG $12718
  $8719: b1 06       lda ($06),y    ; PRG $12719
  $871B: 85 10       sta $10    ; PRG $1271B
  $871D: c8          iny    ; PRG $1271D
  $871E: b1 06       lda ($06),y    ; PRG $1271E
  $8720: 85 11       sta $11    ; PRG $12720
  $8722: a0 09       ldy #$09    ; PRG $12722
  $8724: b1 10       lda ($10),y    ; PRG $12724
  $8726: 85 0c       sta $0c    ; PRG $12726
  $8728: c8          iny    ; PRG $12728
  $8729: b1 10       lda ($10),y    ; PRG $12729
  $872B: 85 0d       sta $0d    ; PRG $1272B
  $872D: a0 0c       ldy #$0c    ; PRG $1272D
  $872F: a2 14       ldx #$14    ; PRG $1272F
  $8731: a9 10       lda #$10    ; PRG $12731
  $8733: 20 15 e4    jsr $e415   ; alu_shr16_n    ; PRG $12733
  $8736: 38          sec    ; PRG $12736
  $8737: a0 09       ldy #$09    ; PRG $12737
  $8739: b1 18       lda ($18),y    ; PRG $12739
  $873B: e5 10       sbc $10    ; PRG $1273B
  $873D: 91 18       sta ($18),y    ; PRG $1273D
  $873F: c8          iny    ; PRG $1273F
  $8740: b1 18       lda ($18),y    ; PRG $12740
  $8742: e5 11       sbc $11    ; PRG $12742
  $8744: 91 18       sta ($18),y    ; PRG $12744
  $8746: a0 f2       ldy #$f2    ; PRG $12746
  $8748: b1 06       lda ($06),y    ; PRG $12748
  $874A: 85 18       sta $18    ; PRG $1274A
  $874C: c8          iny    ; PRG $1274C
  $874D: b1 06       lda ($06),y    ; PRG $1274D
  $874F: 85 19       sta $19    ; PRG $1274F
  $8751: 88          dey    ; PRG $12751
  $8752: b1 06       lda ($06),y    ; PRG $12752
  $8754: 85 14       sta $14    ; PRG $12754
  $8756: c8          iny    ; PRG $12756
  $8757: b1 06       lda ($06),y    ; PRG $12757
  $8759: 85 15       sta $15    ; PRG $12759
  $875B: a0 06       ldy #$06    ; PRG $1275B
  $875D: b1 18       lda ($18),y    ; PRG $1275D
  $875F: a0 02       ldy #$02    ; PRG $1275F
  $8761: d1 14       cmp ($14),y    ; PRG $12761
  $8763: a0 07       ldy #$07    ; PRG $12763
  $8765: b1 18       lda ($18),y    ; PRG $12765
  $8767: a0 03       ldy #$03    ; PRG $12767
  $8769: f1 14       sbc ($14),y    ; PRG $12769
  $876B: b0 03       bcs $8770    ; PRG $1276B
  $876D: 4c dc 87    jmp $87dc    ; PRG $1276D
  $8770: a0 f4       ldy #$f4    ; PRG $12770
  $8772: b1 06       lda ($06),y    ; PRG $12772
  $8774: 85 18       sta $18    ; PRG $12774
  $8776: c8          iny    ; PRG $12776
  $8777: b1 06       lda ($06),y    ; PRG $12777
  $8779: 85 19       sta $19    ; PRG $12779
  $877B: a0 0a       ldy #$0a    ; PRG $1277B
  $877D: b1 18       lda ($18),y    ; PRG $1277D
  $877F: 48          pha    ; PRG $1277F
  $8780: 88          dey    ; PRG $12780
  $8781: b1 18       lda ($18),y    ; PRG $12781
  $8783: 48          pha    ; PRG $12783
  $8784: a0 f2       ldy #$f2    ; PRG $12784
  $8786: b1 06       lda ($06),y    ; PRG $12786
  $8788: 85 18       sta $18    ; PRG $12788
  $878A: c8          iny    ; PRG $1278A
  $878B: b1 06       lda ($06),y    ; PRG $1278B
  $878D: 85 19       sta $19    ; PRG $1278D
  $878F: 38          sec    ; PRG $1278F
  $8790: a9 60       lda #$60    ; PRG $12790
  $8792: a0 02       ldy #$02    ; PRG $12792
  $8794: f1 18       sbc ($18),y    ; PRG $12794
  $8796: 85 14       sta $14    ; PRG $12796
  $8798: a9 ea       lda #$ea    ; PRG $12798
  $879A: c8          iny    ; PRG $1279A
  $879B: f1 18       sbc ($18),y    ; PRG $1279B
  $879D: 85 15       sta $15    ; PRG $1279D
  $879F: a5 15       lda $15    ; PRG $1279F
  $87A1: 48          pha    ; PRG $127A1
  $87A2: a5 14       lda $14    ; PRG $127A2
  $87A4: 48          pha    ; PRG $127A4
  $87A5: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $127A5
  $87A8: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $127A8
  $87AB: a5 08       lda $08    ; PRG $127AB
  $87AD: a0 fe       ldy #$fe    ; PRG $127AD
  $87AF: 91 06       sta ($06),y    ; PRG $127AF
  $87B1: a5 09       lda $09    ; PRG $127B1
  $87B3: c8          iny    ; PRG $127B3
  $87B4: 91 06       sta ($06),y    ; PRG $127B4
  $87B6: a0 f2       ldy #$f2    ; PRG $127B6
  $87B8: b1 06       lda ($06),y    ; PRG $127B8
  $87BA: 85 18       sta $18    ; PRG $127BA
  $87BC: c8          iny    ; PRG $127BC
  $87BD: b1 06       lda ($06),y    ; PRG $127BD
  $87BF: 85 19       sta $19    ; PRG $127BF
  $87C1: 18          clc    ; PRG $127C1
  $87C2: a0 02       ldy #$02    ; PRG $127C2
  $87C4: b1 18       lda ($18),y    ; PRG $127C4
  $87C6: a0 fe       ldy #$fe    ; PRG $127C6
  $87C8: 71 06       adc ($06),y    ; PRG $127C8
  $87CA: a0 02       ldy #$02    ; PRG $127CA
  $87CC: 91 18       sta ($18),y    ; PRG $127CC
  $87CE: c8          iny    ; PRG $127CE
  $87CF: b1 18       lda ($18),y    ; PRG $127CF
  $87D1: a0 ff       ldy #$ff    ; PRG $127D1
  $87D3: 71 06       adc ($06),y    ; PRG $127D3
  $87D5: a0 03       ldy #$03    ; PRG $127D5
  $87D7: 91 18       sta ($18),y    ; PRG $127D7
  $87D9: 4c 45 88    jmp $8845    ; PRG $127D9
  $87DC: a0 f4       ldy #$f4    ; PRG $127DC
  $87DE: b1 06       lda ($06),y    ; PRG $127DE
  $87E0: 85 18       sta $18    ; PRG $127E0
  $87E2: c8          iny    ; PRG $127E2
  $87E3: b1 06       lda ($06),y    ; PRG $127E3
  $87E5: 85 19       sta $19    ; PRG $127E5
  $87E7: a0 0a       ldy #$0a    ; PRG $127E7
  $87E9: b1 18       lda ($18),y    ; PRG $127E9
  $87EB: 48          pha    ; PRG $127EB
  $87EC: 88          dey    ; PRG $127EC
  $87ED: b1 18       lda ($18),y    ; PRG $127ED
  $87EF: 48          pha    ; PRG $127EF
  $87F0: a0 f2       ldy #$f2    ; PRG $127F0
  $87F2: b1 06       lda ($06),y    ; PRG $127F2
  $87F4: 85 18       sta $18    ; PRG $127F4
  $87F6: c8          iny    ; PRG $127F6
  $87F7: b1 06       lda ($06),y    ; PRG $127F7
  $87F9: 85 19       sta $19    ; PRG $127F9
  $87FB: 38          sec    ; PRG $127FB
  $87FC: a9 60       lda #$60    ; PRG $127FC
  $87FE: a0 06       ldy #$06    ; PRG $127FE
  $8800: f1 18       sbc ($18),y    ; PRG $12800
  $8802: 85 14       sta $14    ; PRG $12802
  $8804: a9 ea       lda #$ea    ; PRG $12804
  $8806: c8          iny    ; PRG $12806
  $8807: f1 18       sbc ($18),y    ; PRG $12807
  $8809: 85 15       sta $15    ; PRG $12809
  $880B: a5 15       lda $15    ; PRG $1280B
  $880D: 48          pha    ; PRG $1280D
  $880E: a5 14       lda $14    ; PRG $1280E
  $8810: 48          pha    ; PRG $12810
  $8811: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $12811
  $8814: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $12814
  $8817: a5 08       lda $08    ; PRG $12817
  $8819: a0 fe       ldy #$fe    ; PRG $12819
  $881B: 91 06       sta ($06),y    ; PRG $1281B
  $881D: a5 09       lda $09    ; PRG $1281D
  $881F: c8          iny    ; PRG $1281F
  $8820: 91 06       sta ($06),y    ; PRG $12820
  $8822: a0 f2       ldy #$f2    ; PRG $12822
  $8824: b1 06       lda ($06),y    ; PRG $12824
  $8826: 85 18       sta $18    ; PRG $12826
  $8828: c8          iny    ; PRG $12828
  $8829: b1 06       lda ($06),y    ; PRG $12829
  $882B: 85 19       sta $19    ; PRG $1282B
  $882D: 18          clc    ; PRG $1282D
  $882E: a0 06       ldy #$06    ; PRG $1282E
  $8830: b1 18       lda ($18),y    ; PRG $12830
  $8832: a0 fe       ldy #$fe    ; PRG $12832
  $8834: 71 06       adc ($06),y    ; PRG $12834
  $8836: a0 06       ldy #$06    ; PRG $12836
  $8838: 91 18       sta ($18),y    ; PRG $12838
  $883A: c8          iny    ; PRG $1283A
  $883B: b1 18       lda ($18),y    ; PRG $1283B
  $883D: a0 ff       ldy #$ff    ; PRG $1283D
  $883F: 71 06       adc ($06),y    ; PRG $1283F
  $8841: a0 07       ldy #$07    ; PRG $12841
  $8843: 91 18       sta ($18),y    ; PRG $12843
  $8845: a9 05       lda #$05    ; PRG $12845
  $8847: 85 18       sta $18    ; PRG $12847
  $8849: 86 19       stx $19    ; PRG $12849
  $884B: 18          clc    ; PRG $1284B
  $884C: a9 ff       lda #$ff    ; PRG $1284C
  $884E: a0 0b       ldy #$0b    ; PRG $1284E
  $8850: 71 04       adc ($04),y    ; PRG $12850
  $8852: 85 14       sta $14    ; PRG $12852
  $8854: a9 ff       lda #$ff    ; PRG $12854
  $8856: c8          iny    ; PRG $12856
  $8857: 71 04       adc ($04),y    ; PRG $12857
  $8859: 85 15       sta $15    ; PRG $12859
  $885B: a0 14       ldy #$14    ; PRG $1285B
  $885D: a2 18       ldx #$18    ; PRG $1285D
  $885F: a9 10       lda #$10    ; PRG $1285F
  $8861: 20 d9 e1    jsr $e1d9   ; alu_div_push_remainder    ; PRG $12861
  $8864: a5 10       lda $10    ; PRG $12864
  $8866: a0 d7       ldy #$d7    ; PRG $12866
  $8868: 91 06       sta ($06),y    ; PRG $12868
  $886A: a5 11       lda $11    ; PRG $1286A
  $886C: c8          iny    ; PRG $1286C
  $886D: 91 06       sta ($06),y    ; PRG $1286D
  $886F: a9 2c       lda #$2c    ; PRG $1286F
  $8871: 85 18       sta $18    ; PRG $12871
  $8873: a9 01       lda #$01    ; PRG $12873
  $8875: 85 19       sta $19    ; PRG $12875
  $8877: a0 f4       ldy #$f4    ; PRG $12877
  $8879: b1 06       lda ($06),y    ; PRG $12879
  $887B: 85 14       sta $14    ; PRG $1287B
  $887D: c8          iny    ; PRG $1287D
  $887E: b1 06       lda ($06),y    ; PRG $1287E
  $8880: 85 15       sta $15    ; PRG $12880
  $8882: a0 09       ldy #$09    ; PRG $12882
  $8884: b1 14       lda ($14),y    ; PRG $12884
  $8886: 85 10       sta $10    ; PRG $12886
  $8888: c8          iny    ; PRG $12888
  $8889: b1 14       lda ($14),y    ; PRG $12889
  $888B: 85 11       sta $11    ; PRG $1288B
  $888D: a0 10       ldy #$10    ; PRG $1288D
  $888F: a2 18       ldx #$18    ; PRG $1288F
  $8891: a9 14       lda #$14    ; PRG $12891
  $8893: 20 d9 e1    jsr $e1d9   ; alu_div_push_remainder    ; PRG $12893
  $8896: a2 14       ldx #$14    ; PRG $12896
  $8898: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $12898
  $889B: 48          pha    ; PRG $1289B
  $889C: a9 03       lda #$03    ; PRG $1289C
  $889E: 48          pha    ; PRG $1289E
  $889F: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1289F
  $88A2: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $128A2
  $88A5: a2 14       ldx #$14    ; PRG $128A5
  $88A7: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $128A7
  $88AA: 18          clc    ; PRG $128AA
  $88AB: a5 08       lda $08    ; PRG $128AB
  $88AD: 65 14       adc $14    ; PRG $128AD
  $88AF: 85 18       sta $18    ; PRG $128AF
  $88B1: a5 09       lda $09    ; PRG $128B1
  $88B3: 65 15       adc $15    ; PRG $128B3
  $88B5: 85 19       sta $19    ; PRG $128B5
  $88B7: a5 19       lda $19    ; PRG $128B7
  $88B9: 48          pha    ; PRG $128B9
  $88BA: a5 18       lda $18    ; PRG $128BA
  $88BC: 48          pha    ; PRG $128BC
  $88BD: a0 d8       ldy #$d8    ; PRG $128BD
  $88BF: b1 06       lda ($06),y    ; PRG $128BF
  $88C1: 48          pha    ; PRG $128C1
  $88C2: 88          dey    ; PRG $128C2
  $88C3: b1 06       lda ($06),y    ; PRG $128C3
  $88C5: 48          pha    ; PRG $128C5
  $88C6: a0 0e       ldy #$0e    ; PRG $128C6
  $88C8: b1 04       lda ($04),y    ; PRG $128C8
  $88CA: 48          pha    ; PRG $128CA
  $88CB: 88          dey    ; PRG $128CB
  $88CC: b1 04       lda ($04),y    ; PRG $128CC
  $88CE: 48          pha    ; PRG $128CE
  $88CF: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $128CF
  $88D2: d8 d7 08    .db $d8 $d7 $08  -> vm $D7D8 argc 8    ; PRG $128D2
  $88D5: 18          clc    ; PRG $128D5
  $88D6: a0 0d       ldy #$0d    ; PRG $128D6
  $88D8: b1 04       lda ($04),y    ; PRG $128D8
  $88DA: 69 76       adc #$76    ; PRG $128DA
  $88DC: 85 18       sta $18    ; PRG $128DC
  $88DE: c8          iny    ; PRG $128DE
  $88DF: b1 04       lda ($04),y    ; PRG $128DF
  $88E1: 69 6f       adc #$6f    ; PRG $128E1
  $88E3: 85 19       sta $19    ; PRG $128E3
  $88E5: a1 18       lda ($18,x)    ; PRG $128E5
  $88E7: 85 14       sta $14    ; PRG $128E7
  $88E9: 86 15       stx $15    ; PRG $128E9
  $88EB: a9 03       lda #$03    ; PRG $128EB
  $88ED: 25 14       and $14    ; PRG $128ED
  $88EF: a0 db       ldy #$db    ; PRG $128EF
  $88F1: 91 06       sta ($06),y    ; PRG $128F1
  $88F3: 8a          txa    ; PRG $128F3
  $88F4: c8          iny    ; PRG $128F4
  $88F5: 91 06       sta ($06),y    ; PRG $128F5
  $88F7: 88          dey    ; PRG $128F7
  $88F8: b1 06       lda ($06),y    ; PRG $128F8
  $88FA: c8          iny    ; PRG $128FA
  $88FB: 11 06       ora ($06),y    ; PRG $128FB
  $88FD: d0 03       bne $8902    ; PRG $128FD
  $88FF: 4c 36 8a    jmp $8a36    ; PRG $128FF
  $8902: 18          clc    ; PRG $12902
  $8903: a9 ff       lda #$ff    ; PRG $12903
  $8905: 88          dey    ; PRG $12905
  $8906: 71 06       adc ($06),y    ; PRG $12906
  $8908: a0 d5       ldy #$d5    ; PRG $12908
  $890A: 91 06       sta ($06),y    ; PRG $1290A
  $890C: a9 ff       lda #$ff    ; PRG $1290C
  $890E: a0 dc       ldy #$dc    ; PRG $1290E
  $8910: 71 06       adc ($06),y    ; PRG $12910
  $8912: a0 d6       ldy #$d6    ; PRG $12912
  $8914: 91 06       sta ($06),y    ; PRG $12914
  $8916: c8          iny    ; PRG $12916
  $8917: b1 06       lda ($06),y    ; PRG $12917
  $8919: a0 d5       ldy #$d5    ; PRG $12919
  $891B: d1 06       cmp ($06),y    ; PRG $1291B
  $891D: d0 08       bne $8927    ; PRG $1291D
  $891F: a0 d8       ldy #$d8    ; PRG $1291F
  $8921: b1 06       lda ($06),y    ; PRG $12921
  $8923: a0 d6       ldy #$d6    ; PRG $12923
  $8925: d1 06       cmp ($06),y    ; PRG $12925
  $8927: d0 03       bne $892c    ; PRG $12927
  $8929: 4c 36 8a    jmp $8a36    ; PRG $12929
  $892C: a9 8d       lda #$8d    ; PRG $1292C
  $892E: a0 e5       ldy #$e5    ; PRG $1292E
  $8930: 91 06       sta ($06),y    ; PRG $12930
  $8932: a9 6b       lda #$6b    ; PRG $12932
  $8934: c8          iny    ; PRG $12934
  $8935: 91 06       sta ($06),y    ; PRG $12935
  $8937: a9 01       lda #$01    ; PRG $12937
  $8939: 85 18       sta $18    ; PRG $12939
  $893B: 86 19       stx $19    ; PRG $1293B
  $893D: a0 d5       ldy #$d5    ; PRG $1293D
  $893F: b1 06       lda ($06),y    ; PRG $1293F
  $8941: 85 14       sta $14    ; PRG $12941
  $8943: c8          iny    ; PRG $12943
  $8944: b1 06       lda ($06),y    ; PRG $12944
  $8946: 85 15       sta $15    ; PRG $12946
  $8948: a0 14       ldy #$14    ; PRG $12948
  $894A: a2 18       ldx #$18    ; PRG $1294A
  $894C: a9 10       lda #$10    ; PRG $1294C
  $894E: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $1294E
  $8951: a9 03       lda #$03    ; PRG $12951
  $8953: 85 18       sta $18    ; PRG $12953
  $8955: 86 19       stx $19    ; PRG $12955
  $8957: a0 d7       ldy #$d7    ; PRG $12957
  $8959: b1 06       lda ($06),y    ; PRG $12959
  $895B: 85 14       sta $14    ; PRG $1295B
  $895D: c8          iny    ; PRG $1295D
  $895E: b1 06       lda ($06),y    ; PRG $1295E
  $8960: 85 15       sta $15    ; PRG $12960
  $8962: a0 14       ldy #$14    ; PRG $12962
  $8964: a2 18       ldx #$18    ; PRG $12964
  $8966: a9 0c       lda #$0c    ; PRG $12966
  $8968: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $12968
  $896B: 18          clc    ; PRG $1296B
  $896C: a5 0c       lda $0c    ; PRG $1296C
  $896E: 65 10       adc $10    ; PRG $1296E
  $8970: 85 18       sta $18    ; PRG $12970
  $8972: a5 0d       lda $0d    ; PRG $12972
  $8974: 65 11       adc $11    ; PRG $12974
  $8976: 85 19       sta $19    ; PRG $12976
  $8978: 18          clc    ; PRG $12978
  $8979: a5 18       lda $18    ; PRG $12979
  $897B: 69 68       adc #$68    ; PRG $1297B
  $897D: 85 14       sta $14    ; PRG $1297D
  $897F: a5 19       lda $19    ; PRG $1297F
  $8981: 69 9e       adc #$9e    ; PRG $12981
  $8983: 85 15       sta $15    ; PRG $12983
  $8985: 18          clc    ; PRG $12985
  $8986: a1 14       lda ($14,x)    ; PRG $12986
  $8988: a0 e5       ldy #$e5    ; PRG $12988
  $898A: 71 06       adc ($06),y    ; PRG $1298A
  $898C: 85 18       sta $18    ; PRG $1298C
  $898E: a0 01       ldy #$01    ; PRG $1298E
  $8990: b1 14       lda ($14),y    ; PRG $12990
  $8992: a0 e6       ldy #$e6    ; PRG $12992
  $8994: 71 06       adc ($06),y    ; PRG $12994
  $8996: 85 19       sta $19    ; PRG $12996
  $8998: a2 18       ldx #$18    ; PRG $12998
  $899A: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $1299A
  $899D: 48          pha    ; PRG $1299D
  $899E: a9 03       lda #$03    ; PRG $1299E
  $89A0: 48          pha    ; PRG $129A0
  $89A1: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $129A1
  $89A4: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $129A4
  $89A7: 18          clc    ; PRG $129A7
  $89A8: a9 04       lda #$04    ; PRG $129A8
  $89AA: 65 08       adc $08    ; PRG $129AA
  $89AC: 85 18       sta $18    ; PRG $129AC
  $89AE: 8a          txa    ; PRG $129AE
  $89AF: 65 09       adc $09    ; PRG $129AF
  $89B1: 85 19       sta $19    ; PRG $129B1
  $89B3: a5 19       lda $19    ; PRG $129B3
  $89B5: 48          pha    ; PRG $129B5
  $89B6: a5 18       lda $18    ; PRG $129B6
  $89B8: 48          pha    ; PRG $129B8
  $89B9: 84 18       sty $18    ; PRG $129B9
  $89BB: 86 19       stx $19    ; PRG $129BB
  $89BD: a0 d5       ldy #$d5    ; PRG $129BD
  $89BF: b1 06       lda ($06),y    ; PRG $129BF
  $89C1: 85 14       sta $14    ; PRG $129C1
  $89C3: c8          iny    ; PRG $129C3
  $89C4: b1 06       lda ($06),y    ; PRG $129C4
  $89C6: 85 15       sta $15    ; PRG $129C6
  $89C8: a0 14       ldy #$14    ; PRG $129C8
  $89CA: a2 18       ldx #$18    ; PRG $129CA
  $89CC: a9 10       lda #$10    ; PRG $129CC
  $89CE: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $129CE
  $89D1: a9 03       lda #$03    ; PRG $129D1
  $89D3: 85 18       sta $18    ; PRG $129D3
  $89D5: 86 19       stx $19    ; PRG $129D5
  $89D7: a0 d7       ldy #$d7    ; PRG $129D7
  $89D9: b1 06       lda ($06),y    ; PRG $129D9
  $89DB: 85 14       sta $14    ; PRG $129DB
  $89DD: c8          iny    ; PRG $129DD
  $89DE: b1 06       lda ($06),y    ; PRG $129DE
  $89E0: 85 15       sta $15    ; PRG $129E0
  $89E2: a0 14       ldy #$14    ; PRG $129E2
  $89E4: a2 18       ldx #$18    ; PRG $129E4
  $89E6: a9 0c       lda #$0c    ; PRG $129E6
  $89E8: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $129E8
  $89EB: 18          clc    ; PRG $129EB
  $89EC: a5 0c       lda $0c    ; PRG $129EC
  $89EE: 65 10       adc $10    ; PRG $129EE
  $89F0: 85 18       sta $18    ; PRG $129F0
  $89F2: a5 0d       lda $0d    ; PRG $129F2
  $89F4: 65 11       adc $11    ; PRG $129F4
  $89F6: 85 19       sta $19    ; PRG $129F6
  $89F8: 18          clc    ; PRG $129F8
  $89F9: a5 18       lda $18    ; PRG $129F9
  $89FB: 69 68       adc #$68    ; PRG $129FB
  $89FD: 85 14       sta $14    ; PRG $129FD
  $89FF: a5 19       lda $19    ; PRG $129FF
  $8A01: 69 9e       adc #$9e    ; PRG $12A01
  $8A03: 85 15       sta $15    ; PRG $12A03
  $8A05: 18          clc    ; PRG $12A05
  $8A06: a1 14       lda ($14,x)    ; PRG $12A06
  $8A08: a0 e5       ldy #$e5    ; PRG $12A08
  $8A0A: 71 06       adc ($06),y    ; PRG $12A0A
  $8A0C: 85 18       sta $18    ; PRG $12A0C
  $8A0E: a0 01       ldy #$01    ; PRG $12A0E
  $8A10: b1 14       lda ($14),y    ; PRG $12A10
  $8A12: a0 e6       ldy #$e6    ; PRG $12A12
  $8A14: 71 06       adc ($06),y    ; PRG $12A14
  $8A16: 85 19       sta $19    ; PRG $12A16
  $8A18: a1 18       lda ($18,x)    ; PRG $12A18
  $8A1A: 85 14       sta $14    ; PRG $12A1A
  $8A1C: 86 15       stx $15    ; PRG $12A1C
  $8A1E: a5 15       lda $15    ; PRG $12A1E
  $8A20: 48          pha    ; PRG $12A20
  $8A21: a5 14       lda $14    ; PRG $12A21
  $8A23: 48          pha    ; PRG $12A23
  $8A24: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $12A24
  $8A27: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $12A27
  $8A2A: a2 18       ldx #$18    ; PRG $12A2A
  $8A2C: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $12A2C
  $8A2F: 38          sec    ; PRG $12A2F
  $8A30: a1 18       lda ($18,x)    ; PRG $12A30
  $8A32: e5 08       sbc $08    ; PRG $12A32
  $8A34: 81 18       sta ($18,x)    ; PRG $12A34
  $8A36: a0 0c       ldy #$0c    ; PRG $12A36
  $8A38: b1 04       lda ($04),y    ; PRG $12A38
  $8A3A: 48          pha    ; PRG $12A3A
  $8A3B: 88          dey    ; PRG $12A3B
  $8A3C: b1 04       lda ($04),y    ; PRG $12A3C
  $8A3E: 48          pha    ; PRG $12A3E
  $8A3F: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $12A3F
  $8A42: 4b db 04    .db $4b $db $04  -> vm $DB4B argc 4    ; PRG $12A42
  $8A45: 60          rts    ; PRG $12A45

; ---- sub_9_0a4c  [stub]  <- (entry: bytecode/OS via $E299)
nat_9_0a46: jsr $E299                    ; 9:8A46  native-call prologue
            .db $00 $d5 $ff            ; inline: argcount $00, frame $ffd5
  $8A4C: a9 04       lda #$04    ; PRG $12A4C
  $8A4E: 85 18       sta $18    ; PRG $12A4E
  $8A50: 86 19       stx $19    ; PRG $12A50
  $8A52: a0 0b       ldy #$0b    ; PRG $12A52
  $8A54: b1 04       lda ($04),y    ; PRG $12A54
  $8A56: 85 14       sta $14    ; PRG $12A56
  $8A58: c8          iny    ; PRG $12A58
  $8A59: b1 04       lda ($04),y    ; PRG $12A59
  $8A5B: 85 15       sta $15    ; PRG $12A5B
  $8A5D: a0 14       ldy #$14    ; PRG $12A5D
  $8A5F: a2 18       ldx #$18    ; PRG $12A5F
  $8A61: a9 10       lda #$10    ; PRG $12A61
  $8A63: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $12A63
  $8A66: 18          clc    ; PRG $12A66
  $8A67: a5 10       lda $10    ; PRG $12A67
  $8A69: 69 62       adc #$62    ; PRG $12A69
  $8A6B: a0 f4       ldy #$f4    ; PRG $12A6B
  $8A6D: 91 06       sta ($06),y    ; PRG $12A6D
  $8A6F: a5 11       lda $11    ; PRG $12A6F
  $8A71: 69 66       adc #$66    ; PRG $12A71
  $8A73: c8          iny    ; PRG $12A73
  $8A74: 91 06       sta ($06),y    ; PRG $12A74
  $8A76: a0 0d       ldy #$0d    ; PRG $12A76
  $8A78: b1 04       lda ($04),y    ; PRG $12A78
  $8A7A: c9 32       cmp #$32    ; PRG $12A7A
  $8A7C: c8          iny    ; PRG $12A7C
  $8A7D: b1 04       lda ($04),y    ; PRG $12A7D
  $8A7F: e9 00       sbc #$00    ; PRG $12A7F
  $8A81: 90 03       bcc $8a86    ; PRG $12A81
  $8A83: 4c fb 8e    jmp $8efb    ; PRG $12A83
  $8A86: 84 18       sty $18    ; PRG $12A86
  $8A88: 86 19       stx $19    ; PRG $12A88
  $8A8A: 88          dey    ; PRG $12A8A
  $8A8B: b1 04       lda ($04),y    ; PRG $12A8B
  $8A8D: 85 14       sta $14    ; PRG $12A8D
  $8A8F: c8          iny    ; PRG $12A8F
  $8A90: b1 04       lda ($04),y    ; PRG $12A90
  $8A92: 85 15       sta $15    ; PRG $12A92
  $8A94: a0 14       ldy #$14    ; PRG $12A94
  $8A96: a2 18       ldx #$18    ; PRG $12A96
  $8A98: a9 10       lda #$10    ; PRG $12A98
  $8A9A: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $12A9A
  $8A9D: 18          clc    ; PRG $12A9D
  $8A9E: a5 10       lda $10    ; PRG $12A9E
  $8AA0: 69 b2       adc #$b2    ; PRG $12AA0
  $8AA2: a0 f2       ldy #$f2    ; PRG $12AA2
  $8AA4: 91 06       sta ($06),y    ; PRG $12AA4
  $8AA6: a5 11       lda $11    ; PRG $12AA6
  $8AA8: 69 67       adc #$67    ; PRG $12AA8
  $8AAA: c8          iny    ; PRG $12AAA
  $8AAB: 91 06       sta ($06),y    ; PRG $12AAB
  $8AAD: a9 05       lda #$05    ; PRG $12AAD
  $8AAF: 85 18       sta $18    ; PRG $12AAF
  $8AB1: 86 19       stx $19    ; PRG $12AB1
  $8AB3: a0 0d       ldy #$0d    ; PRG $12AB3
  $8AB5: b1 04       lda ($04),y    ; PRG $12AB5
  $8AB7: 85 14       sta $14    ; PRG $12AB7
  $8AB9: c8          iny    ; PRG $12AB9
  $8ABA: b1 04       lda ($04),y    ; PRG $12ABA
  $8ABC: 85 15       sta $15    ; PRG $12ABC
  $8ABE: a0 14       ldy #$14    ; PRG $12ABE
  $8AC0: a2 18       ldx #$18    ; PRG $12AC0
  $8AC2: a9 10       lda #$10    ; PRG $12AC2
  $8AC4: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $12AC4
  $8AC7: 18          clc    ; PRG $12AC7
  $8AC8: a5 10       lda $10    ; PRG $12AC8
  $8ACA: 69 0a       adc #$0a    ; PRG $12ACA
  $8ACC: a0 ea       ldy #$ea    ; PRG $12ACC
  $8ACE: 91 06       sta ($06),y    ; PRG $12ACE
  $8AD0: a5 11       lda $11    ; PRG $12AD0
  $8AD2: 69 b5       adc #$b5    ; PRG $12AD2
  $8AD4: c8          iny    ; PRG $12AD4
  $8AD5: 91 06       sta ($06),y    ; PRG $12AD5
  $8AD7: 18          clc    ; PRG $12AD7
  $8AD8: a9 01       lda #$01    ; PRG $12AD8
  $8ADA: 88          dey    ; PRG $12ADA
  $8ADB: 71 06       adc ($06),y    ; PRG $12ADB
  $8ADD: 85 18       sta $18    ; PRG $12ADD
  $8ADF: 8a          txa    ; PRG $12ADF
  $8AE0: c8          iny    ; PRG $12AE0
  $8AE1: 71 06       adc ($06),y    ; PRG $12AE1
  $8AE3: 85 19       sta $19    ; PRG $12AE3
  $8AE5: a5 19       lda $19    ; PRG $12AE5
  $8AE7: 48          pha    ; PRG $12AE7
  $8AE8: a5 18       lda $18    ; PRG $12AE8
  $8AEA: 48          pha    ; PRG $12AEA
  $8AEB: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $12AEB
  $8AEE: 0c d3 04    .db $0c $d3 $04  -> vm $D30C argc 4    ; PRG $12AEE
  $8AF1: 86 09       stx $09    ; PRG $12AF1
  $8AF3: a5 08       lda $08    ; PRG $12AF3
  $8AF5: a0 d7       ldy #$d7    ; PRG $12AF5
  $8AF7: 91 06       sta ($06),y    ; PRG $12AF7
  $8AF9: a5 09       lda $09    ; PRG $12AF9
  $8AFB: c8          iny    ; PRG $12AFB
  $8AFC: 91 06       sta ($06),y    ; PRG $12AFC
  $8AFE: a5 08       lda $08    ; PRG $12AFE
  $8B00: c9 ff       cmp #$ff    ; PRG $12B00
  $8B02: d0 04       bne $8b08    ; PRG $12B02
  $8B04: a5 09       lda $09    ; PRG $12B04
  $8B06: c9 00       cmp #$00    ; PRG $12B06
  $8B08: d0 03       bne $8b0d    ; PRG $12B08
  $8B0A: 4c 04 8e    jmp $8e04    ; PRG $12B0A
  $8B0D: 18          clc    ; PRG $12B0D
  $8B0E: a9 e5       lda #$e5    ; PRG $12B0E
  $8B10: 65 06       adc $06    ; PRG $12B10
  $8B12: 85 18       sta $18    ; PRG $12B12
  $8B14: 8a          txa    ; PRG $12B14
  $8B15: 65 07       adc $07    ; PRG $12B15
  $8B17: 85 19       sta $19    ; PRG $12B17
  $8B19: a5 19       lda $19    ; PRG $12B19
  $8B1B: 48          pha    ; PRG $12B1B
  $8B1C: a5 18       lda $18    ; PRG $12B1C
  $8B1E: 48          pha    ; PRG $12B1E
  $8B1F: a0 0c       ldy #$0c    ; PRG $12B1F
  $8B21: b1 04       lda ($04),y    ; PRG $12B21
  $8B23: 48          pha    ; PRG $12B23
  $8B24: 88          dey    ; PRG $12B24
  $8B25: b1 04       lda ($04),y    ; PRG $12B25
  $8B27: 48          pha    ; PRG $12B27
  $8B28: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $12B28
  $8B2B: 26 d0 06    .db $26 $d0 $06  -> vm $D026 argc 6    ; PRG $12B2B
  $8B2E: a5 08       lda $08    ; PRG $12B2E
  $8B30: a0 dd       ldy #$dd    ; PRG $12B30
  $8B32: 91 06       sta ($06),y    ; PRG $12B32
  $8B34: a5 09       lda $09    ; PRG $12B34
  $8B36: c8          iny    ; PRG $12B36
  $8B37: 91 06       sta ($06),y    ; PRG $12B37
  $8B39: 8a          txa    ; PRG $12B39
  $8B3A: a0 fc       ldy #$fc    ; PRG $12B3A
  $8B3C: 91 06       sta ($06),y    ; PRG $12B3C
  $8B3E: c8          iny    ; PRG $12B3E
  $8B3F: 91 06       sta ($06),y    ; PRG $12B3F
  $8B41: 18          clc    ; PRG $12B41
  $8B42: a9 e5       lda #$e5    ; PRG $12B42
  $8B44: 65 06       adc $06    ; PRG $12B44
  $8B46: 85 18       sta $18    ; PRG $12B46
  $8B48: 8a          txa    ; PRG $12B48
  $8B49: 65 07       adc $07    ; PRG $12B49
  $8B4B: 85 19       sta $19    ; PRG $12B4B
  $8B4D: a5 18       lda $18    ; PRG $12B4D
  $8B4F: a0 e1       ldy #$e1    ; PRG $12B4F
  $8B51: 91 06       sta ($06),y    ; PRG $12B51
  $8B53: a5 19       lda $19    ; PRG $12B53
  $8B55: c8          iny    ; PRG $12B55
  $8B56: 91 06       sta ($06),y    ; PRG $12B56
  $8B58: 18          clc    ; PRG $12B58
  $8B59: a5 18       lda $18    ; PRG $12B59
  $8B5B: a0 dd       ldy #$dd    ; PRG $12B5B
  $8B5D: 71 06       adc ($06),y    ; PRG $12B5D
  $8B5F: a0 df       ldy #$df    ; PRG $12B5F
  $8B61: 91 06       sta ($06),y    ; PRG $12B61
  $8B63: a5 19       lda $19    ; PRG $12B63
  $8B65: 88          dey    ; PRG $12B65
  $8B66: 71 06       adc ($06),y    ; PRG $12B66
  $8B68: a0 e0       ldy #$e0    ; PRG $12B68
  $8B6A: 91 06       sta ($06),y    ; PRG $12B6A
  $8B6C: 4c 7e 8b    jmp $8b7e    ; PRG $12B6C
  $8B6F: 18          clc    ; PRG $12B6F
  $8B70: a9 01       lda #$01    ; PRG $12B70
  $8B72: a0 e1       ldy #$e1    ; PRG $12B72
  $8B74: 71 06       adc ($06),y    ; PRG $12B74
  $8B76: 91 06       sta ($06),y    ; PRG $12B76
  $8B78: 8a          txa    ; PRG $12B78
  $8B79: c8          iny    ; PRG $12B79
  $8B7A: 71 06       adc ($06),y    ; PRG $12B7A
  $8B7C: 91 06       sta ($06),y    ; PRG $12B7C
  $8B7E: a0 e1       ldy #$e1    ; PRG $12B7E
  $8B80: b1 06       lda ($06),y    ; PRG $12B80
  $8B82: a0 df       ldy #$df    ; PRG $12B82
  $8B84: d1 06       cmp ($06),y    ; PRG $12B84
  $8B86: a0 e2       ldy #$e2    ; PRG $12B86
  $8B88: b1 06       lda ($06),y    ; PRG $12B88
  $8B8A: a0 e0       ldy #$e0    ; PRG $12B8A
  $8B8C: f1 06       sbc ($06),y    ; PRG $12B8C
  $8B8E: 90 03       bcc $8b93    ; PRG $12B8E
  $8B90: 4c 05 8c    jmp $8c05    ; PRG $12B90
  $8B93: a9 07       lda #$07    ; PRG $12B93
  $8B95: 85 18       sta $18    ; PRG $12B95
  $8B97: 86 19       stx $19    ; PRG $12B97
  $8B99: c8          iny    ; PRG $12B99
  $8B9A: b1 06       lda ($06),y    ; PRG $12B9A
  $8B9C: 85 14       sta $14    ; PRG $12B9C
  $8B9E: c8          iny    ; PRG $12B9E
  $8B9F: b1 06       lda ($06),y    ; PRG $12B9F
  $8BA1: 85 15       sta $15    ; PRG $12BA1
  $8BA3: a1 14       lda ($14,x)    ; PRG $12BA3
  $8BA5: 85 10       sta $10    ; PRG $12BA5
  $8BA7: 86 11       stx $11    ; PRG $12BA7
  $8BA9: a0 10       ldy #$10    ; PRG $12BA9
  $8BAB: a2 18       ldx #$18    ; PRG $12BAB
  $8BAD: a9 14       lda #$14    ; PRG $12BAD
  $8BAF: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $12BAF
  $8BB2: 18          clc    ; PRG $12BB2
  $8BB3: a5 14       lda $14    ; PRG $12BB3
  $8BB5: 69 96       adc #$96    ; PRG $12BB5
  $8BB7: 85 18       sta $18    ; PRG $12BB7
  $8BB9: a5 15       lda $15    ; PRG $12BB9
  $8BBB: 69 6c       adc #$6c    ; PRG $12BBB
  $8BBD: 85 19       sta $19    ; PRG $12BBD
  $8BBF: a1 18       lda ($18,x)    ; PRG $12BBF
  $8BC1: 85 14       sta $14    ; PRG $12BC1
  $8BC3: 86 15       stx $15    ; PRG $12BC3
  $8BC5: a9 0f       lda #$0f    ; PRG $12BC5
  $8BC7: 25 14       and $14    ; PRG $12BC7
  $8BC9: 85 18       sta $18    ; PRG $12BC9
  $8BCB: 8a          txa    ; PRG $12BCB
  $8BCC: 85 19       sta $19    ; PRG $12BCC
  $8BCE: a5 19       lda $19    ; PRG $12BCE
  $8BD0: 48          pha    ; PRG $12BD0
  $8BD1: a5 18       lda $18    ; PRG $12BD1
  $8BD3: 48          pha    ; PRG $12BD3
  $8BD4: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $12BD4
  $8BD7: 32 d5 04    .db $32 $d5 $04  -> vm $D532 argc 4    ; PRG $12BD7
  $8BDA: 18          clc    ; PRG $12BDA
  $8BDB: a9 12       lda #$12    ; PRG $12BDB
  $8BDD: 65 08       adc $08    ; PRG $12BDD
  $8BDF: 85 18       sta $18    ; PRG $12BDF
  $8BE1: 8a          txa    ; PRG $12BE1
  $8BE2: 65 09       adc $09    ; PRG $12BE2
  $8BE4: 85 19       sta $19    ; PRG $12BE4
  $8BE6: a5 19       lda $19    ; PRG $12BE6
  $8BE8: 48          pha    ; PRG $12BE8
  $8BE9: a5 18       lda $18    ; PRG $12BE9
  $8BEB: 48          pha    ; PRG $12BEB
  $8BEC: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $12BEC
  $8BEF: 26 d3 04    .db $26 $d3 $04  -> vm $D326 argc 4    ; PRG $12BEF
  $8BF2: 18          clc    ; PRG $12BF2
  $8BF3: a0 fc       ldy #$fc    ; PRG $12BF3
  $8BF5: b1 06       lda ($06),y    ; PRG $12BF5
  $8BF7: 65 08       adc $08    ; PRG $12BF7
  $8BF9: 91 06       sta ($06),y    ; PRG $12BF9
  $8BFB: c8          iny    ; PRG $12BFB
  $8BFC: b1 06       lda ($06),y    ; PRG $12BFC
  $8BFE: 65 09       adc $09    ; PRG $12BFE
  $8C00: 91 06       sta ($06),y    ; PRG $12C00
  $8C02: 4c 6f 8b    jmp $8b6f    ; PRG $12C02
  $8C05: 18          clc    ; PRG $12C05
  $8C06: a9 02       lda #$02    ; PRG $12C06
  $8C08: a0 ea       ldy #$ea    ; PRG $12C08
  $8C0A: 71 06       adc ($06),y    ; PRG $12C0A
  $8C0C: 85 18       sta $18    ; PRG $12C0C
  $8C0E: 8a          txa    ; PRG $12C0E
  $8C0F: c8          iny    ; PRG $12C0F
  $8C10: 71 06       adc ($06),y    ; PRG $12C10
  $8C12: 85 19       sta $19    ; PRG $12C12
  $8C14: a5 19       lda $19    ; PRG $12C14
  $8C16: 48          pha    ; PRG $12C16
  $8C17: a5 18       lda $18    ; PRG $12C17
  $8C19: 48          pha    ; PRG $12C19
  $8C1A: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $12C1A
  $8C1D: 0c d3 04    .db $0c $d3 $04  -> vm $D30C argc 4    ; PRG $12C1D
  $8C20: 86 09       stx $09    ; PRG $12C20
  $8C22: 18          clc    ; PRG $12C22
  $8C23: 98          tya    ; PRG $12C23
  $8C24: 65 08       adc $08    ; PRG $12C24
  $8C26: 85 18       sta $18    ; PRG $12C26
  $8C28: 8a          txa    ; PRG $12C28
  $8C29: 65 09       adc $09    ; PRG $12C29
  $8C2B: 85 19       sta $19    ; PRG $12C2B
  $8C2D: a0 f2       ldy #$f2    ; PRG $12C2D
  $8C2F: b1 06       lda ($06),y    ; PRG $12C2F
  $8C31: 85 14       sta $14    ; PRG $12C31
  $8C33: c8          iny    ; PRG $12C33
  $8C34: b1 06       lda ($06),y    ; PRG $12C34
  $8C36: 85 15       sta $15    ; PRG $12C36
  $8C38: a1 14       lda ($14,x)    ; PRG $12C38
  $8C3A: 85 10       sta $10    ; PRG $12C3A
  $8C3C: a0 01       ldy #$01    ; PRG $12C3C
  $8C3E: b1 14       lda ($14),y    ; PRG $12C3E
  $8C40: 85 11       sta $11    ; PRG $12C40
  $8C42: a0 10       ldy #$10    ; PRG $12C42
  $8C44: a2 18       ldx #$18    ; PRG $12C44
  $8C46: a9 14       lda #$14    ; PRG $12C46
  $8C48: 20 d9 e1    jsr $e1d9   ; alu_div_push_remainder    ; PRG $12C48
  $8C4B: a5 14       lda $14    ; PRG $12C4B
  $8C4D: a0 f8       ldy #$f8    ; PRG $12C4D
  $8C4F: 91 06       sta ($06),y    ; PRG $12C4F
  $8C51: a5 15       lda $15    ; PRG $12C51
  $8C53: c8          iny    ; PRG $12C53
  $8C54: 91 06       sta ($06),y    ; PRG $12C54
  $8C56: a0 fd       ldy #$fd    ; PRG $12C56
  $8C58: b1 06       lda ($06),y    ; PRG $12C58
  $8C5A: 48          pha    ; PRG $12C5A
  $8C5B: 88          dey    ; PRG $12C5B
  $8C5C: b1 06       lda ($06),y    ; PRG $12C5C
  $8C5E: 48          pha    ; PRG $12C5E
  $8C5F: a0 f9       ldy #$f9    ; PRG $12C5F
  $8C61: b1 06       lda ($06),y    ; PRG $12C61
  $8C63: 48          pha    ; PRG $12C63
  $8C64: 88          dey    ; PRG $12C64
  $8C65: b1 06       lda ($06),y    ; PRG $12C65
  $8C67: 48          pha    ; PRG $12C67
  $8C68: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $12C68
  $8C6B: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $12C6B
  $8C6E: a5 08       lda $08    ; PRG $12C6E
  $8C70: a0 f8       ldy #$f8    ; PRG $12C70
  $8C72: 91 06       sta ($06),y    ; PRG $12C72
  $8C74: a5 09       lda $09    ; PRG $12C74
  $8C76: c8          iny    ; PRG $12C76
  $8C77: 91 06       sta ($06),y    ; PRG $12C77
  $8C79: a9 05       lda #$05    ; PRG $12C79
  $8C7B: 85 18       sta $18    ; PRG $12C7B
  $8C7D: 86 19       stx $19    ; PRG $12C7D
  $8C7F: 18          clc    ; PRG $12C7F
  $8C80: a9 ff       lda #$ff    ; PRG $12C80
  $8C82: a0 0b       ldy #$0b    ; PRG $12C82
  $8C84: 71 04       adc ($04),y    ; PRG $12C84
  $8C86: 85 14       sta $14    ; PRG $12C86
  $8C88: a9 ff       lda #$ff    ; PRG $12C88
  $8C8A: c8          iny    ; PRG $12C8A
  $8C8B: 71 04       adc ($04),y    ; PRG $12C8B
  $8C8D: 85 15       sta $15    ; PRG $12C8D
  $8C8F: a0 14       ldy #$14    ; PRG $12C8F
  $8C91: a2 18       ldx #$18    ; PRG $12C91
  $8C93: a9 10       lda #$10    ; PRG $12C93
  $8C95: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $12C95
  $8C98: 18          clc    ; PRG $12C98
  $8C99: 98          tya    ; PRG $12C99
  $8C9A: 65 10       adc $10    ; PRG $12C9A
  $8C9C: a0 d5       ldy #$d5    ; PRG $12C9C
  $8C9E: 91 06       sta ($06),y    ; PRG $12C9E
  $8CA0: 8a          txa    ; PRG $12CA0
  $8CA1: 65 11       adc $11    ; PRG $12CA1
  $8CA3: c8          iny    ; PRG $12CA3
  $8CA4: 91 06       sta ($06),y    ; PRG $12CA4
  $8CA6: 8a          txa    ; PRG $12CA6
  $8CA7: a0 fc       ldy #$fc    ; PRG $12CA7
  $8CA9: 91 06       sta ($06),y    ; PRG $12CA9
  $8CAB: c8          iny    ; PRG $12CAB
  $8CAC: 91 06       sta ($06),y    ; PRG $12CAC
  $8CAE: 18          clc    ; PRG $12CAE
  $8CAF: a9 e5       lda #$e5    ; PRG $12CAF
  $8CB1: 65 06       adc $06    ; PRG $12CB1
  $8CB3: 85 18       sta $18    ; PRG $12CB3
  $8CB5: 8a          txa    ; PRG $12CB5
  $8CB6: 65 07       adc $07    ; PRG $12CB6
  $8CB8: 85 19       sta $19    ; PRG $12CB8
  $8CBA: a5 18       lda $18    ; PRG $12CBA
  $8CBC: a0 e1       ldy #$e1    ; PRG $12CBC
  $8CBE: 91 06       sta ($06),y    ; PRG $12CBE
  $8CC0: a5 19       lda $19    ; PRG $12CC0
  $8CC2: c8          iny    ; PRG $12CC2
  $8CC3: 91 06       sta ($06),y    ; PRG $12CC3
  $8CC5: 4c e6 8c    jmp $8ce6    ; PRG $12CC5
  $8CC8: 18          clc    ; PRG $12CC8
  $8CC9: a9 01       lda #$01    ; PRG $12CC9
  $8CCB: a0 d5       ldy #$d5    ; PRG $12CCB
  $8CCD: 71 06       adc ($06),y    ; PRG $12CCD
  $8CCF: 91 06       sta ($06),y    ; PRG $12CCF
  $8CD1: 8a          txa    ; PRG $12CD1
  $8CD2: c8          iny    ; PRG $12CD2
  $8CD3: 71 06       adc ($06),y    ; PRG $12CD3
  $8CD5: 91 06       sta ($06),y    ; PRG $12CD5
  $8CD7: 18          clc    ; PRG $12CD7
  $8CD8: a9 01       lda #$01    ; PRG $12CD8
  $8CDA: a0 e1       ldy #$e1    ; PRG $12CDA
  $8CDC: 71 06       adc ($06),y    ; PRG $12CDC
  $8CDE: 91 06       sta ($06),y    ; PRG $12CDE
  $8CE0: 8a          txa    ; PRG $12CE0
  $8CE1: c8          iny    ; PRG $12CE1
  $8CE2: 71 06       adc ($06),y    ; PRG $12CE2
  $8CE4: 91 06       sta ($06),y    ; PRG $12CE4
  $8CE6: a0 e1       ldy #$e1    ; PRG $12CE6
  $8CE8: b1 06       lda ($06),y    ; PRG $12CE8
  $8CEA: a0 df       ldy #$df    ; PRG $12CEA
  $8CEC: d1 06       cmp ($06),y    ; PRG $12CEC
  $8CEE: a0 e2       ldy #$e2    ; PRG $12CEE
  $8CF0: b1 06       lda ($06),y    ; PRG $12CF0
  $8CF2: a0 e0       ldy #$e0    ; PRG $12CF2
  $8CF4: f1 06       sbc ($06),y    ; PRG $12CF4
  $8CF6: 90 03       bcc $8cfb    ; PRG $12CF6
  $8CF8: 4c 04 8e    jmp $8e04    ; PRG $12CF8
  $8CFB: a9 07       lda #$07    ; PRG $12CFB
  $8CFD: 85 18       sta $18    ; PRG $12CFD
  $8CFF: 86 19       stx $19    ; PRG $12CFF
  $8D01: c8          iny    ; PRG $12D01
  $8D02: b1 06       lda ($06),y    ; PRG $12D02
  $8D04: 85 14       sta $14    ; PRG $12D04
  $8D06: c8          iny    ; PRG $12D06
  $8D07: b1 06       lda ($06),y    ; PRG $12D07
  $8D09: 85 15       sta $15    ; PRG $12D09
  $8D0B: a1 14       lda ($14,x)    ; PRG $12D0B
  $8D0D: 85 10       sta $10    ; PRG $12D0D
  $8D0F: 86 11       stx $11    ; PRG $12D0F
  $8D11: a0 10       ldy #$10    ; PRG $12D11
  $8D13: a2 18       ldx #$18    ; PRG $12D13
  $8D15: a9 14       lda #$14    ; PRG $12D15
  $8D17: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $12D17
  $8D1A: 18          clc    ; PRG $12D1A
  $8D1B: a5 14       lda $14    ; PRG $12D1B
  $8D1D: 69 96       adc #$96    ; PRG $12D1D
  $8D1F: 85 18       sta $18    ; PRG $12D1F
  $8D21: a5 15       lda $15    ; PRG $12D21
  $8D23: 69 6c       adc #$6c    ; PRG $12D23
  $8D25: 85 19       sta $19    ; PRG $12D25
  $8D27: a1 18       lda ($18,x)    ; PRG $12D27
  $8D29: 85 14       sta $14    ; PRG $12D29
  $8D2B: 86 15       stx $15    ; PRG $12D2B
  $8D2D: a9 0f       lda #$0f    ; PRG $12D2D
  $8D2F: 25 14       and $14    ; PRG $12D2F
  $8D31: 85 18       sta $18    ; PRG $12D31
  $8D33: 8a          txa    ; PRG $12D33
  $8D34: 85 19       sta $19    ; PRG $12D34
  $8D36: a5 19       lda $19    ; PRG $12D36
  $8D38: 48          pha    ; PRG $12D38
  $8D39: a5 18       lda $18    ; PRG $12D39
  $8D3B: 48          pha    ; PRG $12D3B
  $8D3C: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $12D3C
  $8D3F: 32 d5 04    .db $32 $d5 $04  -> vm $D532 argc 4    ; PRG $12D3F
  $8D42: a5 08       lda $08    ; PRG $12D42
  $8D44: a0 ee       ldy #$ee    ; PRG $12D44
  $8D46: 91 06       sta ($06),y    ; PRG $12D46
  $8D48: a5 09       lda $09    ; PRG $12D48
  $8D4A: c8          iny    ; PRG $12D4A
  $8D4B: 91 06       sta ($06),y    ; PRG $12D4B
  $8D4D: a9 03       lda #$03    ; PRG $12D4D
  $8D4F: 85 18       sta $18    ; PRG $12D4F
  $8D51: 86 19       stx $19    ; PRG $12D51
  $8D53: a0 d5       ldy #$d5    ; PRG $12D53
  $8D55: b1 06       lda ($06),y    ; PRG $12D55
  $8D57: 85 14       sta $14    ; PRG $12D57
  $8D59: c8          iny    ; PRG $12D59
  $8D5A: b1 06       lda ($06),y    ; PRG $12D5A
  $8D5C: 85 15       sta $15    ; PRG $12D5C
  $8D5E: a0 14       ldy #$14    ; PRG $12D5E
  $8D60: a2 18       ldx #$18    ; PRG $12D60
  $8D62: a9 10       lda #$10    ; PRG $12D62
  $8D64: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $12D64
  $8D67: 18          clc    ; PRG $12D67
  $8D68: a5 10       lda $10    ; PRG $12D68
  $8D6A: 69 00       adc #$00    ; PRG $12D6A
  $8D6C: a0 ec       ldy #$ec    ; PRG $12D6C
  $8D6E: 91 06       sta ($06),y    ; PRG $12D6E
  $8D70: a5 11       lda $11    ; PRG $12D70
  $8D72: 69 64       adc #$64    ; PRG $12D72
  $8D74: c8          iny    ; PRG $12D74
  $8D75: 91 06       sta ($06),y    ; PRG $12D75
  $8D77: 18          clc    ; PRG $12D77
  $8D78: a9 12       lda #$12    ; PRG $12D78
  $8D7A: c8          iny    ; PRG $12D7A
  $8D7B: 71 06       adc ($06),y    ; PRG $12D7B
  $8D7D: 85 18       sta $18    ; PRG $12D7D
  $8D7F: 8a          txa    ; PRG $12D7F
  $8D80: c8          iny    ; PRG $12D80
  $8D81: 71 06       adc ($06),y    ; PRG $12D81
  $8D83: 85 19       sta $19    ; PRG $12D83
  $8D85: a5 19       lda $19    ; PRG $12D85
  $8D87: 48          pha    ; PRG $12D87
  $8D88: a5 18       lda $18    ; PRG $12D88
  $8D8A: 48          pha    ; PRG $12D8A
  $8D8B: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $12D8B
  $8D8E: 26 d3 04    .db $26 $d3 $04  -> vm $D326 argc 4    ; PRG $12D8E
  $8D91: a5 09       lda $09    ; PRG $12D91
  $8D93: 48          pha    ; PRG $12D93
  $8D94: a5 08       lda $08    ; PRG $12D94
  $8D96: 48          pha    ; PRG $12D96
  $8D97: a0 f9       ldy #$f9    ; PRG $12D97
  $8D99: b1 06       lda ($06),y    ; PRG $12D99
  $8D9B: 48          pha    ; PRG $12D9B
  $8D9C: 88          dey    ; PRG $12D9C
  $8D9D: b1 06       lda ($06),y    ; PRG $12D9D
  $8D9F: 48          pha    ; PRG $12D9F
  $8DA0: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $12DA0
  $8DA3: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $12DA3
  $8DA6: a5 08       lda $08    ; PRG $12DA6
  $8DA8: a0 f6       ldy #$f6    ; PRG $12DA8
  $8DAA: 91 06       sta ($06),y    ; PRG $12DAA
  $8DAC: a5 09       lda $09    ; PRG $12DAC
  $8DAE: c8          iny    ; PRG $12DAE
  $8DAF: 91 06       sta ($06),y    ; PRG $12DAF
  $8DB1: a0 ec       ldy #$ec    ; PRG $12DB1
  $8DB3: b1 06       lda ($06),y    ; PRG $12DB3
  $8DB5: 85 18       sta $18    ; PRG $12DB5
  $8DB7: c8          iny    ; PRG $12DB7
  $8DB8: b1 06       lda ($06),y    ; PRG $12DB8
  $8DBA: 85 19       sta $19    ; PRG $12DBA
  $8DBC: a0 f6       ldy #$f6    ; PRG $12DBC
  $8DBE: b1 06       lda ($06),y    ; PRG $12DBE
  $8DC0: a0 01       ldy #$01    ; PRG $12DC0
  $8DC2: 91 18       sta ($18),y    ; PRG $12DC2
  $8DC4: a0 f7       ldy #$f7    ; PRG $12DC4
  $8DC6: b1 06       lda ($06),y    ; PRG $12DC6
  $8DC8: a0 02       ldy #$02    ; PRG $12DC8
  $8DCA: 91 18       sta ($18),y    ; PRG $12DCA
  $8DCC: 38          sec    ; PRG $12DCC
  $8DCD: a0 f8       ldy #$f8    ; PRG $12DCD
  $8DCF: b1 06       lda ($06),y    ; PRG $12DCF
  $8DD1: a0 f6       ldy #$f6    ; PRG $12DD1
  $8DD3: f1 06       sbc ($06),y    ; PRG $12DD3
  $8DD5: a0 f8       ldy #$f8    ; PRG $12DD5
  $8DD7: 91 06       sta ($06),y    ; PRG $12DD7
  $8DD9: c8          iny    ; PRG $12DD9
  $8DDA: b1 06       lda ($06),y    ; PRG $12DDA
  $8DDC: a0 f7       ldy #$f7    ; PRG $12DDC
  $8DDE: f1 06       sbc ($06),y    ; PRG $12DDE
  $8DE0: a0 f9       ldy #$f9    ; PRG $12DE0
  $8DE2: 91 06       sta ($06),y    ; PRG $12DE2
  $8DE4: a0 ec       ldy #$ec    ; PRG $12DE4
  $8DE6: b1 06       lda ($06),y    ; PRG $12DE6
  $8DE8: 85 18       sta $18    ; PRG $12DE8
  $8DEA: c8          iny    ; PRG $12DEA
  $8DEB: b1 06       lda ($06),y    ; PRG $12DEB
  $8DED: 85 19       sta $19    ; PRG $12DED
  $8DEF: a0 d7       ldy #$d7    ; PRG $12DEF
  $8DF1: b1 06       lda ($06),y    ; PRG $12DF1
  $8DF3: 81 18       sta ($18,x)    ; PRG $12DF3
  $8DF5: a0 f8       ldy #$f8    ; PRG $12DF5
  $8DF7: b1 06       lda ($06),y    ; PRG $12DF7
  $8DF9: c8          iny    ; PRG $12DF9
  $8DFA: 11 06       ora ($06),y    ; PRG $12DFA
  $8DFC: d0 03       bne $8e01    ; PRG $12DFC
  $8DFE: 4c 04 8e    jmp $8e04    ; PRG $12DFE
  $8E01: 4c c8 8c    jmp $8cc8    ; PRG $12E01
  $8E04: a0 f4       ldy #$f4    ; PRG $12E04
  $8E06: b1 06       lda ($06),y    ; PRG $12E06
  $8E08: 85 18       sta $18    ; PRG $12E08
  $8E0A: c8          iny    ; PRG $12E0A
  $8E0B: b1 06       lda ($06),y    ; PRG $12E0B
  $8E0D: 85 19       sta $19    ; PRG $12E0D
  $8E0F: a2 18       ldx #$18    ; PRG $12E0F
  $8E11: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $12E11
  $8E14: a9 27       lda #$27    ; PRG $12E14
  $8E16: 48          pha    ; PRG $12E16
  $8E17: a9 10       lda #$10    ; PRG $12E17
  $8E19: 48          pha    ; PRG $12E19
  $8E1A: a0 f4       ldy #$f4    ; PRG $12E1A
  $8E1C: b1 06       lda ($06),y    ; PRG $12E1C
  $8E1E: 85 18       sta $18    ; PRG $12E1E
  $8E20: c8          iny    ; PRG $12E20
  $8E21: b1 06       lda ($06),y    ; PRG $12E21
  $8E23: 85 19       sta $19    ; PRG $12E23
  $8E25: a9 05       lda #$05    ; PRG $12E25
  $8E27: 85 14       sta $14    ; PRG $12E27
  $8E29: 86 15       stx $15    ; PRG $12E29
  $8E2B: a0 f2       ldy #$f2    ; PRG $12E2B
  $8E2D: b1 06       lda ($06),y    ; PRG $12E2D
  $8E2F: 85 10       sta $10    ; PRG $12E2F
  $8E31: c8          iny    ; PRG $12E31
  $8E32: b1 06       lda ($06),y    ; PRG $12E32
  $8E34: 85 11       sta $11    ; PRG $12E34
  $8E36: a1 10       lda ($10,x)    ; PRG $12E36
  $8E38: 85 0c       sta $0c    ; PRG $12E38
  $8E3A: a0 01       ldy #$01    ; PRG $12E3A
  $8E3C: b1 10       lda ($10),y    ; PRG $12E3C
  $8E3E: 85 0d       sta $0d    ; PRG $12E3E
  $8E40: a0 0c       ldy #$0c    ; PRG $12E40
  $8E42: a2 14       ldx #$14    ; PRG $12E42
  $8E44: a9 10       lda #$10    ; PRG $12E44
  $8E46: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $12E46
  $8E49: 18          clc    ; PRG $12E49
  $8E4A: a5 10       lda $10    ; PRG $12E4A
  $8E4C: a0 09       ldy #$09    ; PRG $12E4C
  $8E4E: 71 18       adc ($18),y    ; PRG $12E4E
  $8E50: 85 14       sta $14    ; PRG $12E50
  $8E52: a5 11       lda $11    ; PRG $12E52
  $8E54: c8          iny    ; PRG $12E54
  $8E55: 71 18       adc ($18),y    ; PRG $12E55
  $8E57: 85 15       sta $15    ; PRG $12E57
  $8E59: a5 15       lda $15    ; PRG $12E59
  $8E5B: 48          pha    ; PRG $12E5B
  $8E5C: a5 14       lda $14    ; PRG $12E5C
  $8E5E: 48          pha    ; PRG $12E5E
  $8E5F: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $12E5F
  $8E62: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $12E62
  $8E65: a2 18       ldx #$18    ; PRG $12E65
  $8E67: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $12E67
  $8E6A: a5 08       lda $08    ; PRG $12E6A
  $8E6C: a0 09       ldy #$09    ; PRG $12E6C
  $8E6E: 91 18       sta ($18),y    ; PRG $12E6E
  $8E70: a5 09       lda $09    ; PRG $12E70
  $8E72: c8          iny    ; PRG $12E72
  $8E73: 91 18       sta ($18),y    ; PRG $12E73
  $8E75: a0 f2       ldy #$f2    ; PRG $12E75
  $8E77: b1 06       lda ($06),y    ; PRG $12E77
  $8E79: 85 18       sta $18    ; PRG $12E79
  $8E7B: c8          iny    ; PRG $12E7B
  $8E7C: b1 06       lda ($06),y    ; PRG $12E7C
  $8E7E: 85 19       sta $19    ; PRG $12E7E
  $8E80: a2 18       ldx #$18    ; PRG $12E80
  $8E82: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $12E82
  $8E85: a9 0a       lda #$0a    ; PRG $12E85
  $8E87: 85 18       sta $18    ; PRG $12E87
  $8E89: 86 19       stx $19    ; PRG $12E89
  $8E8B: a0 f2       ldy #$f2    ; PRG $12E8B
  $8E8D: b1 06       lda ($06),y    ; PRG $12E8D
  $8E8F: 85 14       sta $14    ; PRG $12E8F
  $8E91: c8          iny    ; PRG $12E91
  $8E92: b1 06       lda ($06),y    ; PRG $12E92
  $8E94: 85 15       sta $15    ; PRG $12E94
  $8E96: a1 14       lda ($14,x)    ; PRG $12E96
  $8E98: 85 10       sta $10    ; PRG $12E98
  $8E9A: a0 01       ldy #$01    ; PRG $12E9A
  $8E9C: b1 14       lda ($14),y    ; PRG $12E9C
  $8E9E: 85 11       sta $11    ; PRG $12E9E
  $8EA0: a0 10       ldy #$10    ; PRG $12EA0
  $8EA2: a2 18       ldx #$18    ; PRG $12EA2
  $8EA4: a9 14       lda #$14    ; PRG $12EA4
  $8EA6: 20 b4 e1    jsr $e1b4   ; alu_abs16    ; PRG $12EA6
  $8EA9: a2 14       ldx #$14    ; PRG $12EA9
  $8EAB: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $12EAB
  $8EAE: 48          pha    ; PRG $12EAE
  $8EAF: a9 0a       lda #$0a    ; PRG $12EAF
  $8EB1: 48          pha    ; PRG $12EB1
  $8EB2: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $12EB2
  $8EB5: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $12EB5
  $8EB8: a2 14       ldx #$14    ; PRG $12EB8
  $8EBA: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $12EBA
  $8EBD: 18          clc    ; PRG $12EBD
  $8EBE: a5 08       lda $08    ; PRG $12EBE
  $8EC0: 65 14       adc $14    ; PRG $12EC0
  $8EC2: 85 18       sta $18    ; PRG $12EC2
  $8EC4: a5 09       lda $09    ; PRG $12EC4
  $8EC6: 65 15       adc $15    ; PRG $12EC6
  $8EC8: 85 19       sta $19    ; PRG $12EC8
  $8ECA: a5 19       lda $19    ; PRG $12ECA
  $8ECC: 48          pha    ; PRG $12ECC
  $8ECD: a5 18       lda $18    ; PRG $12ECD
  $8ECF: 48          pha    ; PRG $12ECF
  $8ED0: a0 f2       ldy #$f2    ; PRG $12ED0
  $8ED2: b1 06       lda ($06),y    ; PRG $12ED2
  $8ED4: 85 18       sta $18    ; PRG $12ED4
  $8ED6: c8          iny    ; PRG $12ED6
  $8ED7: b1 06       lda ($06),y    ; PRG $12ED7
  $8ED9: 85 19       sta $19    ; PRG $12ED9
  $8EDB: a0 01       ldy #$01    ; PRG $12EDB
  $8EDD: b1 18       lda ($18),y    ; PRG $12EDD
  $8EDF: 48          pha    ; PRG $12EDF
  $8EE0: a1 18       lda ($18,x)    ; PRG $12EE0
  $8EE2: 48          pha    ; PRG $12EE2
  $8EE3: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $12EE3
  $8EE6: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $12EE6
  $8EE9: a2 18       ldx #$18    ; PRG $12EE9
  $8EEB: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $12EEB
  $8EEE: 38          sec    ; PRG $12EEE
  $8EEF: a1 18       lda ($18,x)    ; PRG $12EEF
  $8EF1: e5 08       sbc $08    ; PRG $12EF1
  $8EF3: 81 18       sta ($18,x)    ; PRG $12EF3
  $8EF5: b1 18       lda ($18),y    ; PRG $12EF5
  $8EF7: e5 09       sbc $09    ; PRG $12EF7
  $8EF9: 91 18       sta ($18),y    ; PRG $12EF9
  $8EFB: a0 0c       ldy #$0c    ; PRG $12EFB
  $8EFD: b1 04       lda ($04),y    ; PRG $12EFD
  $8EFF: 48          pha    ; PRG $12EFF
  $8F00: 88          dey    ; PRG $12F00
  $8F01: b1 04       lda ($04),y    ; PRG $12F01
  $8F03: 48          pha    ; PRG $12F03
  $8F04: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $12F04
  $8F07: 4b db 04    .db $4b $db $04  -> vm $DB4B argc 4    ; PRG $12F07
  $8F0A: 60          rts    ; PRG $12F0A

; ---- sub_9_0f11  [stub]  <- (entry: bytecode/OS via $E299)
nat_9_0f0b: jsr $E299                    ; 9:8F0B  native-call prologue
            .db $00 $ef $ff            ; inline: argcount $00, frame $ffef
  $8F11: a9 04       lda #$04    ; PRG $12F11
  $8F13: 85 18       sta $18    ; PRG $12F13
  $8F15: 86 19       stx $19    ; PRG $12F15
  $8F17: a0 0b       ldy #$0b    ; PRG $12F17
  $8F19: b1 04       lda ($04),y    ; PRG $12F19
  $8F1B: 85 14       sta $14    ; PRG $12F1B
  $8F1D: c8          iny    ; PRG $12F1D
  $8F1E: b1 04       lda ($04),y    ; PRG $12F1E
  $8F20: 85 15       sta $15    ; PRG $12F20
  $8F22: a0 14       ldy #$14    ; PRG $12F22
  $8F24: a2 18       ldx #$18    ; PRG $12F24
  $8F26: a9 10       lda #$10    ; PRG $12F26
  $8F28: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $12F28
  $8F2B: 18          clc    ; PRG $12F2B
  $8F2C: a5 10       lda $10    ; PRG $12F2C
  $8F2E: 69 62       adc #$62    ; PRG $12F2E
  $8F30: a0 fd       ldy #$fd    ; PRG $12F30
  $8F32: 91 06       sta ($06),y    ; PRG $12F32
  $8F34: a5 11       lda $11    ; PRG $12F34
  $8F36: 69 66       adc #$66    ; PRG $12F36
  $8F38: c8          iny    ; PRG $12F38
  $8F39: 91 06       sta ($06),y    ; PRG $12F39
  $8F3B: a9 07       lda #$07    ; PRG $12F3B
  $8F3D: 85 18       sta $18    ; PRG $12F3D
  $8F3F: 86 19       stx $19    ; PRG $12F3F
  $8F41: a0 0d       ldy #$0d    ; PRG $12F41
  $8F43: b1 04       lda ($04),y    ; PRG $12F43
  $8F45: 85 14       sta $14    ; PRG $12F45
  $8F47: c8          iny    ; PRG $12F47
  $8F48: b1 04       lda ($04),y    ; PRG $12F48
  $8F4A: 85 15       sta $15    ; PRG $12F4A
  $8F4C: a0 14       ldy #$14    ; PRG $12F4C
  $8F4E: a2 18       ldx #$18    ; PRG $12F4E
  $8F50: a9 10       lda #$10    ; PRG $12F50
  $8F52: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $12F52
  $8F55: 18          clc    ; PRG $12F55
  $8F56: a5 10       lda $10    ; PRG $12F56
  $8F58: 69 90       adc #$90    ; PRG $12F58
  $8F5A: a0 f9       ldy #$f9    ; PRG $12F5A
  $8F5C: 91 06       sta ($06),y    ; PRG $12F5C
  $8F5E: a5 11       lda $11    ; PRG $12F5E
  $8F60: 69 6c       adc #$6c    ; PRG $12F60
  $8F62: c8          iny    ; PRG $12F62
  $8F63: 91 06       sta ($06),y    ; PRG $12F63
  $8F65: 88          dey    ; PRG $12F65
  $8F66: b1 06       lda ($06),y    ; PRG $12F66
  $8F68: 85 18       sta $18    ; PRG $12F68
  $8F6A: c8          iny    ; PRG $12F6A
  $8F6B: b1 06       lda ($06),y    ; PRG $12F6B
  $8F6D: 85 19       sta $19    ; PRG $12F6D
  $8F6F: a0 06       ldy #$06    ; PRG $12F6F
  $8F71: b1 18       lda ($18),y    ; PRG $12F71
  $8F73: 85 14       sta $14    ; PRG $12F73
  $8F75: 86 15       stx $15    ; PRG $12F75
  $8F77: a9 0f       lda #$0f    ; PRG $12F77
  $8F79: 25 14       and $14    ; PRG $12F79
  $8F7B: 85 18       sta $18    ; PRG $12F7B
  $8F7D: 8a          txa    ; PRG $12F7D
  $8F7E: 85 19       sta $19    ; PRG $12F7E
  $8F80: a5 18       lda $18    ; PRG $12F80
  $8F82: a0 ff       ldy #$ff    ; PRG $12F82
  $8F84: 91 06       sta ($06),y    ; PRG $12F84
  $8F86: b1 06       lda ($06),y    ; PRG $12F86
  $8F88: 85 18       sta $18    ; PRG $12F88
  $8F8A: 86 19       stx $19    ; PRG $12F8A
  $8F8C: a5 19       lda $19    ; PRG $12F8C
  $8F8E: 48          pha    ; PRG $12F8E
  $8F8F: a5 18       lda $18    ; PRG $12F8F
  $8F91: 48          pha    ; PRG $12F91
  $8F92: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $12F92
  $8F95: 32 d5 04    .db $32 $d5 $04  -> vm $D532 argc 4    ; PRG $12F95
  $8F98: a5 08       lda $08    ; PRG $12F98
  $8F9A: a0 fb       ldy #$fb    ; PRG $12F9A
  $8F9C: 91 06       sta ($06),y    ; PRG $12F9C
  $8F9E: a5 09       lda $09    ; PRG $12F9E
  $8FA0: c8          iny    ; PRG $12FA0
  $8FA1: 91 06       sta ($06),y    ; PRG $12FA1
  $8FA3: a9 05       lda #$05    ; PRG $12FA3
  $8FA5: 85 18       sta $18    ; PRG $12FA5
  $8FA7: 86 19       stx $19    ; PRG $12FA7
  $8FA9: a2 18       ldx #$18    ; PRG $12FA9
  $8FAB: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $12FAB
  $8FAE: a0 ff       ldy #$ff    ; PRG $12FAE
  $8FB0: b1 06       lda ($06),y    ; PRG $12FB0
  $8FB2: 85 18       sta $18    ; PRG $12FB2
  $8FB4: 86 19       stx $19    ; PRG $12FB4
  $8FB6: a5 19       lda $19    ; PRG $12FB6
  $8FB8: 48          pha    ; PRG $12FB8
  $8FB9: a5 18       lda $18    ; PRG $12FB9
  $8FBB: 48          pha    ; PRG $12FBB
  $8FBC: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $12FBC
  $8FBF: 32 d5 04    .db $32 $d5 $04  -> vm $D532 argc 4    ; PRG $12FBF
  $8FC2: 18          clc    ; PRG $12FC2
  $8FC3: a9 14       lda #$14    ; PRG $12FC3
  $8FC5: 65 08       adc $08    ; PRG $12FC5
  $8FC7: 85 18       sta $18    ; PRG $12FC7
  $8FC9: 8a          txa    ; PRG $12FC9
  $8FCA: 65 09       adc $09    ; PRG $12FCA
  $8FCC: 85 19       sta $19    ; PRG $12FCC
  $8FCE: a5 19       lda $19    ; PRG $12FCE
  $8FD0: 48          pha    ; PRG $12FD0
  $8FD1: a5 18       lda $18    ; PRG $12FD1
  $8FD3: 48          pha    ; PRG $12FD3
  $8FD4: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $12FD4
  $8FD7: 0c d3 04    .db $0c $d3 $04  -> vm $D30C argc 4    ; PRG $12FD7
  $8FDA: 86 09       stx $09    ; PRG $12FDA
  $8FDC: a2 18       ldx #$18    ; PRG $12FDC
  $8FDE: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $12FDE
  $8FE1: a0 08       ldy #$08    ; PRG $12FE1
  $8FE3: a2 18       ldx #$18    ; PRG $12FE3
  $8FE5: a9 14       lda #$14    ; PRG $12FE5
  $8FE7: 20 15 e4    jsr $e415   ; alu_shr16_n    ; PRG $12FE7
  $8FEA: a9 07       lda #$07    ; PRG $12FEA
  $8FEC: 25 14       and $14    ; PRG $12FEC
  $8FEE: a0 f7       ldy #$f7    ; PRG $12FEE
  $8FF0: 91 06       sta ($06),y    ; PRG $12FF0
  $8FF2: 8a          txa    ; PRG $12FF2
  $8FF3: c8          iny    ; PRG $12FF3
  $8FF4: 91 06       sta ($06),y    ; PRG $12FF4
  $8FF6: a0 ff       ldy #$ff    ; PRG $12FF6
  $8FF8: b1 06       lda ($06),y    ; PRG $12FF8
  $8FFA: 85 18       sta $18    ; PRG $12FFA
  $8FFC: 86 19       stx $19    ; PRG $12FFC
  $8FFE: a5 19       lda $19    ; PRG $12FFE
  $9000: 48          pha    ; PRG $13000
  $9001: a5 18       lda $18    ; PRG $13001
  $9003: 48          pha    ; PRG $13003
  $9004: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $13004
  $9007: 32 d5 04    .db $32 $d5 $04  -> vm $D532 argc 4    ; PRG $13007
  $900A: 18          clc    ; PRG $1300A
  $900B: a9 14       lda #$14    ; PRG $1300B
  $900D: 65 08       adc $08    ; PRG $1300D
  $900F: 85 18       sta $18    ; PRG $1300F
  $9011: 8a          txa    ; PRG $13011
  $9012: 65 09       adc $09    ; PRG $13012
  $9014: 85 19       sta $19    ; PRG $13014
  $9016: a5 19       lda $19    ; PRG $13016
  $9018: 48          pha    ; PRG $13018
  $9019: a5 18       lda $18    ; PRG $13019
  $901B: 48          pha    ; PRG $1301B
  $901C: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1301C
  $901F: 0c d3 04    .db $0c $d3 $04  -> vm $D30C argc 4    ; PRG $1301F
  $9022: 86 09       stx $09    ; PRG $13022
  $9024: a9 03       lda #$03    ; PRG $13024
  $9026: 25 08       and $08    ; PRG $13026
  $9028: a0 f5       ldy #$f5    ; PRG $13028
  $902A: 91 06       sta ($06),y    ; PRG $1302A
  $902C: 8a          txa    ; PRG $1302C
  $902D: c8          iny    ; PRG $1302D
  $902E: 91 06       sta ($06),y    ; PRG $1302E
  $9030: a9 02       lda #$02    ; PRG $13030
  $9032: 85 18       sta $18    ; PRG $13032
  $9034: 86 19       stx $19    ; PRG $13034
  $9036: a2 18       ldx #$18    ; PRG $13036
  $9038: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $13038
  $903B: a0 ff       ldy #$ff    ; PRG $1303B
  $903D: b1 06       lda ($06),y    ; PRG $1303D
  $903F: 85 18       sta $18    ; PRG $1303F
  $9041: 86 19       stx $19    ; PRG $13041
  $9043: a5 19       lda $19    ; PRG $13043
  $9045: 48          pha    ; PRG $13045
  $9046: a5 18       lda $18    ; PRG $13046
  $9048: 48          pha    ; PRG $13048
  $9049: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $13049
  $904C: 32 d5 04    .db $32 $d5 $04  -> vm $D532 argc 4    ; PRG $1304C
  $904F: 18          clc    ; PRG $1304F
  $9050: a9 14       lda #$14    ; PRG $13050
  $9052: 65 08       adc $08    ; PRG $13052
  $9054: 85 18       sta $18    ; PRG $13054
  $9056: 8a          txa    ; PRG $13056
  $9057: 65 09       adc $09    ; PRG $13057
  $9059: 85 19       sta $19    ; PRG $13059
  $905B: a5 19       lda $19    ; PRG $1305B
  $905D: 48          pha    ; PRG $1305D
  $905E: a5 18       lda $18    ; PRG $1305E
  $9060: 48          pha    ; PRG $13060
  $9061: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $13061
  $9064: 0c d3 04    .db $0c $d3 $04  -> vm $D30C argc 4    ; PRG $13064
  $9067: 86 09       stx $09    ; PRG $13067
  $9069: a2 18       ldx #$18    ; PRG $13069
  $906B: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $1306B
  $906E: a0 08       ldy #$08    ; PRG $1306E
  $9070: a2 18       ldx #$18    ; PRG $13070
  $9072: a9 14       lda #$14    ; PRG $13072
  $9074: 20 15 e4    jsr $e415   ; alu_shr16_n    ; PRG $13074
  $9077: a9 03       lda #$03    ; PRG $13077
  $9079: 25 14       and $14    ; PRG $13079
  $907B: a0 f3       ldy #$f3    ; PRG $1307B
  $907D: 91 06       sta ($06),y    ; PRG $1307D
  $907F: 8a          txa    ; PRG $1307F
  $9080: c8          iny    ; PRG $13080
  $9081: 91 06       sta ($06),y    ; PRG $13081
  $9083: a9 04       lda #$04    ; PRG $13083
  $9085: 85 18       sta $18    ; PRG $13085
  $9087: 86 19       stx $19    ; PRG $13087
  $9089: a2 18       ldx #$18    ; PRG $13089
  $908B: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $1308B
  $908E: a0 ff       ldy #$ff    ; PRG $1308E
  $9090: b1 06       lda ($06),y    ; PRG $13090
  $9092: 85 18       sta $18    ; PRG $13092
  $9094: 86 19       stx $19    ; PRG $13094
  $9096: a5 19       lda $19    ; PRG $13096
  $9098: 48          pha    ; PRG $13098
  $9099: a5 18       lda $18    ; PRG $13099
  $909B: 48          pha    ; PRG $1309B
  $909C: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1309C
  $909F: 32 d5 04    .db $32 $d5 $04  -> vm $D532 argc 4    ; PRG $1309F
  $90A2: 18          clc    ; PRG $130A2
  $90A3: a9 14       lda #$14    ; PRG $130A3
  $90A5: 65 08       adc $08    ; PRG $130A5
  $90A7: 85 18       sta $18    ; PRG $130A7
  $90A9: 8a          txa    ; PRG $130A9
  $90AA: 65 09       adc $09    ; PRG $130AA
  $90AC: 85 19       sta $19    ; PRG $130AC
  $90AE: a5 19       lda $19    ; PRG $130AE
  $90B0: 48          pha    ; PRG $130B0
  $90B1: a5 18       lda $18    ; PRG $130B1
  $90B3: 48          pha    ; PRG $130B3
  $90B4: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $130B4
  $90B7: 0c d3 04    .db $0c $d3 $04  -> vm $D30C argc 4    ; PRG $130B7
  $90BA: 86 09       stx $09    ; PRG $130BA
  $90BC: a2 18       ldx #$18    ; PRG $130BC
  $90BE: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $130BE
  $90C1: a0 08       ldy #$08    ; PRG $130C1
  $90C3: a2 18       ldx #$18    ; PRG $130C3
  $90C5: a9 14       lda #$14    ; PRG $130C5
  $90C7: 20 15 e4    jsr $e415   ; alu_shr16_n    ; PRG $130C7
  $90CA: 98          tya    ; PRG $130CA
  $90CB: 25 14       and $14    ; PRG $130CB
  $90CD: a0 f1       ldy #$f1    ; PRG $130CD
  $90CF: 91 06       sta ($06),y    ; PRG $130CF
  $90D1: 8a          txa    ; PRG $130D1
  $90D2: c8          iny    ; PRG $130D2
  $90D3: 91 06       sta ($06),y    ; PRG $130D3
  $90D5: a0 f9       ldy #$f9    ; PRG $130D5
  $90D7: b1 06       lda ($06),y    ; PRG $130D7
  $90D9: 85 18       sta $18    ; PRG $130D9
  $90DB: c8          iny    ; PRG $130DB
  $90DC: b1 06       lda ($06),y    ; PRG $130DC
  $90DE: 85 19       sta $19    ; PRG $130DE
  $90E0: a9 0a       lda #$0a    ; PRG $130E0
  $90E2: 85 14       sta $14    ; PRG $130E2
  $90E4: 86 15       stx $15    ; PRG $130E4
  $90E6: a0 f5       ldy #$f5    ; PRG $130E6
  $90E8: b1 06       lda ($06),y    ; PRG $130E8
  $90EA: 85 10       sta $10    ; PRG $130EA
  $90EC: c8          iny    ; PRG $130EC
  $90ED: b1 06       lda ($06),y    ; PRG $130ED
  $90EF: 85 11       sta $11    ; PRG $130EF
  $90F1: a0 10       ldy #$10    ; PRG $130F1
  $90F3: a2 14       ldx #$14    ; PRG $130F3
  $90F5: a9 0c       lda #$0c    ; PRG $130F5
  $90F7: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $130F7
  $90FA: a9 0a       lda #$0a    ; PRG $130FA
  $90FC: 85 14       sta $14    ; PRG $130FC
  $90FE: 86 15       stx $15    ; PRG $130FE
  $9100: a0 f7       ldy #$f7    ; PRG $13100
  $9102: b1 06       lda ($06),y    ; PRG $13102
  $9104: 85 10       sta $10    ; PRG $13104
  $9106: c8          iny    ; PRG $13106
  $9107: b1 06       lda ($06),y    ; PRG $13107
  $9109: 85 11       sta $11    ; PRG $13109
  $910B: a0 10       ldy #$10    ; PRG $1310B
  $910D: a2 14       ldx #$14    ; PRG $1310D
  $910F: a9 08       lda #$08    ; PRG $1310F
  $9111: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $13111
  $9114: 18          clc    ; PRG $13114
  $9115: a5 08       lda $08    ; PRG $13115
  $9117: 65 0c       adc $0c    ; PRG $13117
  $9119: 85 14       sta $14    ; PRG $13119
  $911B: a5 09       lda $09    ; PRG $1311B
  $911D: 65 0d       adc $0d    ; PRG $1311D
  $911F: 85 15       sta $15    ; PRG $1311F
  $9121: 18          clc    ; PRG $13121
  $9122: a9 14       lda #$14    ; PRG $13122
  $9124: 65 14       adc $14    ; PRG $13124
  $9126: 85 10       sta $10    ; PRG $13126
  $9128: 8a          txa    ; PRG $13128
  $9129: 65 15       adc $15    ; PRG $13129
  $912B: 85 11       sta $11    ; PRG $1312B
  $912D: a5 10       lda $10    ; PRG $1312D
  $912F: 81 18       sta ($18,x)    ; PRG $1312F
  $9131: a0 f9       ldy #$f9    ; PRG $13131
  $9133: b1 06       lda ($06),y    ; PRG $13133
  $9135: 85 18       sta $18    ; PRG $13135
  $9137: c8          iny    ; PRG $13137
  $9138: b1 06       lda ($06),y    ; PRG $13138
  $913A: 85 19       sta $19    ; PRG $1313A
  $913C: a9 04       lda #$04    ; PRG $1313C
  $913E: 85 14       sta $14    ; PRG $1313E
  $9140: 86 15       stx $15    ; PRG $13140
  $9142: 38          sec    ; PRG $13142
  $9143: a0 f1       ldy #$f1    ; PRG $13143
  $9145: f1 06       sbc ($06),y    ; PRG $13145
  $9147: 85 10       sta $10    ; PRG $13147
  $9149: 8a          txa    ; PRG $13149
  $914A: c8          iny    ; PRG $1314A
  $914B: f1 06       sbc ($06),y    ; PRG $1314B
  $914D: 85 11       sta $11    ; PRG $1314D
  $914F: a9 0a       lda #$0a    ; PRG $1314F
  $9151: 85 0c       sta $0c    ; PRG $13151
  $9153: 86 0d       stx $0d    ; PRG $13153
  $9155: 38          sec    ; PRG $13155
  $9156: c8          iny    ; PRG $13156
  $9157: f1 06       sbc ($06),y    ; PRG $13157
  $9159: 85 08       sta $08    ; PRG $13159
  $915B: 8a          txa    ; PRG $1315B
  $915C: c8          iny    ; PRG $1315C
  $915D: f1 06       sbc ($06),y    ; PRG $1315D
  $915F: 85 09       sta $09    ; PRG $1315F
  $9161: a2 18       ldx #$18    ; PRG $13161
  $9163: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $13163
  $9166: a9 14       lda #$14    ; PRG $13166
  $9168: 85 18       sta $18    ; PRG $13168
  $916A: 86 19       stx $19    ; PRG $1316A
  $916C: aa          tax    ; PRG $1316C
  $916D: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $1316D
  $9170: a9 64       lda #$64    ; PRG $13170
  $9172: 85 14       sta $14    ; PRG $13172
  $9174: 86 15       stx $15    ; PRG $13174
  $9176: a2 10       ldx #$10    ; PRG $13176
  $9178: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $13178
  $917B: 38          sec    ; PRG $1317B
  $917C: a9 14       lda #$14    ; PRG $1317C
  $917E: a0 f7       ldy #$f7    ; PRG $1317E
  $9180: f1 06       sbc ($06),y    ; PRG $13180
  $9182: 85 10       sta $10    ; PRG $13182
  $9184: 8a          txa    ; PRG $13184
  $9185: c8          iny    ; PRG $13185
  $9186: f1 06       sbc ($06),y    ; PRG $13186
  $9188: 85 11       sta $11    ; PRG $13188
  $918A: a2 0c       ldx #$0c    ; PRG $1318A
  $918C: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $1318C
  $918F: a0 10       ldy #$10    ; PRG $1318F
  $9191: a2 14       ldx #$14    ; PRG $13191
  $9193: a9 0c       lda #$0c    ; PRG $13193
  $9195: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $13195
  $9198: a0 0c       ldy #$0c    ; PRG $13198
  $919A: a2 18       ldx #$18    ; PRG $1319A
  $919C: a9 14       lda #$14    ; PRG $1319C
  $919E: 20 b4 e1    jsr $e1b4   ; alu_abs16    ; PRG $1319E
  $91A1: a0 14       ldy #$14    ; PRG $131A1
  $91A3: a2 08       ldx #$08    ; PRG $131A3
  $91A5: a9 18       lda #$18    ; PRG $131A5
  $91A7: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $131A7
  $91AA: a2 0c       ldx #$0c    ; PRG $131AA
  $91AC: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $131AC
  $91AF: a0 18       ldy #$18    ; PRG $131AF
  $91B1: a2 0c       ldx #$0c    ; PRG $131B1
  $91B3: a9 14       lda #$14    ; PRG $131B3
  $91B5: 20 b4 e1    jsr $e1b4   ; alu_abs16    ; PRG $131B5
  $91B8: a2 10       ldx #$10    ; PRG $131B8
  $91BA: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $131BA
  $91BD: a0 14       ldy #$14    ; PRG $131BD
  $91BF: a2 10       ldx #$10    ; PRG $131BF
  $91C1: a9 18       lda #$18    ; PRG $131C1
  $91C3: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $131C3
  $91C6: a2 14       ldx #$14    ; PRG $131C6
  $91C8: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $131C8
  $91CB: a0 18       ldy #$18    ; PRG $131CB
  $91CD: a2 14       ldx #$14    ; PRG $131CD
  $91CF: a9 10       lda #$10    ; PRG $131CF
  $91D1: 20 b4 e1    jsr $e1b4   ; alu_abs16    ; PRG $131D1
  $91D4: a2 18       ldx #$18    ; PRG $131D4
  $91D6: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $131D6
  $91D9: a5 10       lda $10    ; PRG $131D9
  $91DB: 91 18       sta ($18),y    ; PRG $131DB
  $91DD: a0 f9       ldy #$f9    ; PRG $131DD
  $91DF: b1 06       lda ($06),y    ; PRG $131DF
  $91E1: 85 18       sta $18    ; PRG $131E1
  $91E3: c8          iny    ; PRG $131E3
  $91E4: b1 06       lda ($06),y    ; PRG $131E4
  $91E6: 85 19       sta $19    ; PRG $131E6
  $91E8: a2 18       ldx #$18    ; PRG $131E8
  $91EA: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $131EA
  $91ED: 48          pha    ; PRG $131ED
  $91EE: a9 64       lda #$64    ; PRG $131EE
  $91F0: 48          pha    ; PRG $131F0
  $91F1: a9 04       lda #$04    ; PRG $131F1
  $91F3: 85 18       sta $18    ; PRG $131F3
  $91F5: 86 19       stx $19    ; PRG $131F5
  $91F7: 18          clc    ; PRG $131F7
  $91F8: a9 03       lda #$03    ; PRG $131F8
  $91FA: a0 f1       ldy #$f1    ; PRG $131FA
  $91FC: 71 06       adc ($06),y    ; PRG $131FC
  $91FE: 85 14       sta $14    ; PRG $131FE
  $9200: 8a          txa    ; PRG $13200
  $9201: c8          iny    ; PRG $13201
  $9202: 71 06       adc ($06),y    ; PRG $13202
  $9204: 85 15       sta $15    ; PRG $13204
  $9206: a9 0a       lda #$0a    ; PRG $13206
  $9208: 85 10       sta $10    ; PRG $13208
  $920A: 86 11       stx $11    ; PRG $1320A
  $920C: 38          sec    ; PRG $1320C
  $920D: a0 f7       ldy #$f7    ; PRG $1320D
  $920F: f1 06       sbc ($06),y    ; PRG $1320F
  $9211: 85 0c       sta $0c    ; PRG $13211
  $9213: 8a          txa    ; PRG $13213
  $9214: c8          iny    ; PRG $13214
  $9215: f1 06       sbc ($06),y    ; PRG $13215
  $9217: 85 0d       sta $0d    ; PRG $13217
  $9219: a9 0a       lda #$0a    ; PRG $13219
  $921B: 85 08       sta $08    ; PRG $1321B
  $921D: 86 09       stx $09    ; PRG $1321D
  $921F: a2 18       ldx #$18    ; PRG $1321F
  $9221: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $13221
  $9224: a0 f3       ldy #$f3    ; PRG $13224
  $9226: b1 06       lda ($06),y    ; PRG $13226
  $9228: 85 18       sta $18    ; PRG $13228
  $922A: c8          iny    ; PRG $1322A
  $922B: b1 06       lda ($06),y    ; PRG $1322B
  $922D: 85 19       sta $19    ; PRG $1322D
  $922F: a2 14       ldx #$14    ; PRG $1322F
  $9231: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $13231
  $9234: a0 18       ldy #$18    ; PRG $13234
  $9236: a2 08       ldx #$08    ; PRG $13236
  $9238: a9 14       lda #$14    ; PRG $13238
  $923A: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1323A
  $923D: 18          clc    ; PRG $1323D
  $923E: a9 64       lda #$64    ; PRG $1323E
  $9240: 65 14       adc $14    ; PRG $13240
  $9242: 85 18       sta $18    ; PRG $13242
  $9244: 8a          txa    ; PRG $13244
  $9245: 65 15       adc $15    ; PRG $13245
  $9247: 85 19       sta $19    ; PRG $13247
  $9249: a0 18       ldy #$18    ; PRG $13249
  $924B: a2 0c       ldx #$0c    ; PRG $1324B
  $924D: a9 14       lda #$14    ; PRG $1324D
  $924F: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1324F
  $9252: a0 14       ldy #$14    ; PRG $13252
  $9254: a2 10       ldx #$10    ; PRG $13254
  $9256: a9 18       lda #$18    ; PRG $13256
  $9258: 20 b4 e1    jsr $e1b4   ; alu_abs16    ; PRG $13258
  $925B: a2 14       ldx #$14    ; PRG $1325B
  $925D: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $1325D
  $9260: a0 18       ldy #$18    ; PRG $13260
  $9262: a2 14       ldx #$14    ; PRG $13262
  $9264: a9 10       lda #$10    ; PRG $13264
  $9266: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $13266
  $9269: a2 18       ldx #$18    ; PRG $13269
  $926B: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $1326B
  $926E: a0 10       ldy #$10    ; PRG $1326E
  $9270: a2 18       ldx #$18    ; PRG $13270
  $9272: a9 14       lda #$14    ; PRG $13272
  $9274: 20 b4 e1    jsr $e1b4   ; alu_abs16    ; PRG $13274
  $9277: a5 15       lda $15    ; PRG $13277
  $9279: 48          pha    ; PRG $13279
  $927A: a5 14       lda $14    ; PRG $1327A
  $927C: 48          pha    ; PRG $1327C
  $927D: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1327D
  $9280: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $13280
  $9283: a2 18       ldx #$18    ; PRG $13283
  $9285: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $13285
  $9288: a5 08       lda $08    ; PRG $13288
  $928A: c8          iny    ; PRG $1328A
  $928B: 91 18       sta ($18),y    ; PRG $1328B
  $928D: 18          clc    ; PRG $1328D
  $928E: a9 0f       lda #$0f    ; PRG $1328E
  $9290: a0 fb       ldy #$fb    ; PRG $13290
  $9292: 71 06       adc ($06),y    ; PRG $13292
  $9294: 85 18       sta $18    ; PRG $13294
  $9296: 8a          txa    ; PRG $13296
  $9297: c8          iny    ; PRG $13297
  $9298: 71 06       adc ($06),y    ; PRG $13298
  $929A: 85 19       sta $19    ; PRG $1329A
  $929C: a5 19       lda $19    ; PRG $1329C
  $929E: 48          pha    ; PRG $1329E
  $929F: a5 18       lda $18    ; PRG $1329F
  $92A1: 48          pha    ; PRG $132A1
  $92A2: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $132A2
  $92A5: 26 d3 04    .db $26 $d3 $04  -> vm $D326 argc 4    ; PRG $132A5
  $92A8: a5 08       lda $08    ; PRG $132A8
  $92AA: a0 ef       ldy #$ef    ; PRG $132AA
  $92AC: 91 06       sta ($06),y    ; PRG $132AC
  $92AE: a5 09       lda $09    ; PRG $132AE
  $92B0: c8          iny    ; PRG $132B0
  $92B1: 91 06       sta ($06),y    ; PRG $132B1
  $92B3: a0 f9       ldy #$f9    ; PRG $132B3
  $92B5: b1 06       lda ($06),y    ; PRG $132B5
  $92B7: 85 18       sta $18    ; PRG $132B7
  $92B9: c8          iny    ; PRG $132B9
  $92BA: b1 06       lda ($06),y    ; PRG $132BA
  $92BC: 85 19       sta $19    ; PRG $132BC
  $92BE: a0 04       ldy #$04    ; PRG $132BE
  $92C0: b1 18       lda ($18),y    ; PRG $132C0
  $92C2: a0 ef       ldy #$ef    ; PRG $132C2
  $92C4: d1 06       cmp ($06),y    ; PRG $132C4
  $92C6: a0 05       ldy #$05    ; PRG $132C6
  $92C8: b1 18       lda ($18),y    ; PRG $132C8
  $92CA: a0 f0       ldy #$f0    ; PRG $132CA
  $92CC: f1 06       sbc ($06),y    ; PRG $132CC
  $92CE: 70 04       bvs $92d4    ; PRG $132CE
  $92D0: 30 07       bmi $92d9    ; PRG $132D0
  $92D2: 10 02       bpl $92d6    ; PRG $132D2
  $92D4: 10 03       bpl $92d9    ; PRG $132D4
  $92D6: 4c 95 93    jmp $9395    ; PRG $132D6
  $92D9: a0 0f       ldy #$0f    ; PRG $132D9
  $92DB: b1 04       lda ($04),y    ; PRG $132DB
  $92DD: c9 32       cmp #$32    ; PRG $132DD
  $92DF: c8          iny    ; PRG $132DF
  $92E0: b1 04       lda ($04),y    ; PRG $132E0
  $92E2: e9 00       sbc #$00    ; PRG $132E2
  $92E4: 90 03       bcc $92e9    ; PRG $132E4
  $92E6: 4c 7a 93    jmp $937a    ; PRG $132E6
  $92E9: a0 f9       ldy #$f9    ; PRG $132E9
  $92EB: b1 06       lda ($06),y    ; PRG $132EB
  $92ED: 85 18       sta $18    ; PRG $132ED
  $92EF: c8          iny    ; PRG $132EF
  $92F0: b1 06       lda ($06),y    ; PRG $132F0
  $92F2: 85 19       sta $19    ; PRG $132F2
  $92F4: a2 18       ldx #$18    ; PRG $132F4
  $92F6: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $132F6
  $92F9: a0 f0       ldy #$f0    ; PRG $132F9
  $92FB: b1 06       lda ($06),y    ; PRG $132FB
  $92FD: 48          pha    ; PRG $132FD
  $92FE: 88          dey    ; PRG $132FE
  $92FF: b1 06       lda ($06),y    ; PRG $132FF
  $9301: 48          pha    ; PRG $13301
  $9302: a0 f9       ldy #$f9    ; PRG $13302
  $9304: b1 06       lda ($06),y    ; PRG $13304
  $9306: 85 18       sta $18    ; PRG $13306
  $9308: c8          iny    ; PRG $13308
  $9309: b1 06       lda ($06),y    ; PRG $13309
  $930B: 85 19       sta $19    ; PRG $1330B
  $930D: a9 1e       lda #$1e    ; PRG $1330D
  $930F: 85 14       sta $14    ; PRG $1330F
  $9311: 86 15       stx $15    ; PRG $13311
  $9313: a9 0e       lda #$0e    ; PRG $13313
  $9315: 85 10       sta $10    ; PRG $13315
  $9317: 86 11       stx $11    ; PRG $13317
  $9319: a0 0f       ldy #$0f    ; PRG $13319
  $931B: b1 04       lda ($04),y    ; PRG $1331B
  $931D: 85 0c       sta $0c    ; PRG $1331D
  $931F: c8          iny    ; PRG $1331F
  $9320: b1 04       lda ($04),y    ; PRG $13320
  $9322: 85 0d       sta $0d    ; PRG $13322
  $9324: a0 0c       ldy #$0c    ; PRG $13324
  $9326: a2 10       ldx #$10    ; PRG $13326
  $9328: a9 08       lda #$08    ; PRG $13328
  $932A: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1332A
  $932D: 18          clc    ; PRG $1332D
  $932E: a5 08       lda $08    ; PRG $1332E
  $9330: 69 b2       adc #$b2    ; PRG $13330
  $9332: 85 10       sta $10    ; PRG $13332
  $9334: a5 09       lda $09    ; PRG $13334
  $9336: 69 67       adc #$67    ; PRG $13336
  $9338: 85 11       sta $11    ; PRG $13338
  $933A: a1 10       lda ($10,x)    ; PRG $1333A
  $933C: 85 0c       sta $0c    ; PRG $1333C
  $933E: b1 10       lda ($10),y    ; PRG $1333E
  $9340: 85 0d       sta $0d    ; PRG $13340
  $9342: a0 0c       ldy #$0c    ; PRG $13342
  $9344: a2 14       ldx #$14    ; PRG $13344
  $9346: a9 10       lda #$10    ; PRG $13346
  $9348: 20 b4 e1    jsr $e1b4   ; alu_abs16    ; PRG $13348
  $934B: 18          clc    ; PRG $1334B
  $934C: a5 10       lda $10    ; PRG $1334C
  $934E: a0 04       ldy #$04    ; PRG $1334E
  $9350: 71 18       adc ($18),y    ; PRG $13350
  $9352: 85 14       sta $14    ; PRG $13352
  $9354: a5 11       lda $11    ; PRG $13354
  $9356: c8          iny    ; PRG $13356
  $9357: 71 18       adc ($18),y    ; PRG $13357
  $9359: 85 15       sta $15    ; PRG $13359
  $935B: a5 15       lda $15    ; PRG $1335B
  $935D: 48          pha    ; PRG $1335D
  $935E: a5 14       lda $14    ; PRG $1335E
  $9360: 48          pha    ; PRG $13360
  $9361: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $13361
  $9364: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $13364
  $9367: a2 18       ldx #$18    ; PRG $13367
  $9369: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $13369
  $936C: a5 08       lda $08    ; PRG $1336C
  $936E: a0 04       ldy #$04    ; PRG $1336E
  $9370: 91 18       sta ($18),y    ; PRG $13370
  $9372: a5 09       lda $09    ; PRG $13372
  $9374: c8          iny    ; PRG $13374
  $9375: 91 18       sta ($18),y    ; PRG $13375
  $9377: 4c 95 93    jmp $9395    ; PRG $13377
  $937A: a0 f9       ldy #$f9    ; PRG $1337A
  $937C: b1 06       lda ($06),y    ; PRG $1337C
  $937E: 85 18       sta $18    ; PRG $1337E
  $9380: c8          iny    ; PRG $13380
  $9381: b1 06       lda ($06),y    ; PRG $13381
  $9383: 85 19       sta $19    ; PRG $13383
  $9385: a0 ef       ldy #$ef    ; PRG $13385
  $9387: b1 06       lda ($06),y    ; PRG $13387
  $9389: a0 04       ldy #$04    ; PRG $13389
  $938B: 91 18       sta ($18),y    ; PRG $1338B
  $938D: a0 f0       ldy #$f0    ; PRG $1338D
  $938F: b1 06       lda ($06),y    ; PRG $1338F
  $9391: a0 05       ldy #$05    ; PRG $13391
  $9393: 91 18       sta ($18),y    ; PRG $13393
  $9395: 60          rts    ; PRG $13395

; ---- sub_9_139c  [stub]  <- (entry: bytecode/OS via $E299)
nat_9_1396: jsr $E299                    ; 9:9396  native-call prologue
            .db $00 $f1 $ff            ; inline: argcount $00, frame $fff1
  $939C: 18          clc    ; PRG $1339C
  $939D: a9 f9       lda #$f9    ; PRG $1339D
  $939F: 65 06       adc $06    ; PRG $1339F
  $93A1: 85 18       sta $18    ; PRG $133A1
  $93A3: 8a          txa    ; PRG $133A3
  $93A4: 65 07       adc $07    ; PRG $133A4
  $93A6: 85 19       sta $19    ; PRG $133A6
  $93A8: a5 19       lda $19    ; PRG $133A8
  $93AA: 48          pha    ; PRG $133AA
  $93AB: a5 18       lda $18    ; PRG $133AB
  $93AD: 48          pha    ; PRG $133AD
  $93AE: a0 0c       ldy #$0c    ; PRG $133AE
  $93B0: b1 04       lda ($04),y    ; PRG $133B0
  $93B2: 48          pha    ; PRG $133B2
  $93B3: 88          dey    ; PRG $133B3
  $93B4: b1 04       lda ($04),y    ; PRG $133B4
  $93B6: 48          pha    ; PRG $133B6
  $93B7: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $133B7
  $93BA: 26 d0 06    .db $26 $d0 $06  -> vm $D026 argc 6    ; PRG $133BA
  $93BD: a5 08       lda $08    ; PRG $133BD
  $93BF: a0 fe       ldy #$fe    ; PRG $133BF
  $93C1: 91 06       sta ($06),y    ; PRG $133C1
  $93C3: a5 09       lda $09    ; PRG $133C3
  $93C5: c8          iny    ; PRG $133C5
  $93C6: 91 06       sta ($06),y    ; PRG $133C6
  $93C8: 18          clc    ; PRG $133C8
  $93C9: a9 f9       lda #$f9    ; PRG $133C9
  $93CB: 65 06       adc $06    ; PRG $133CB
  $93CD: 85 18       sta $18    ; PRG $133CD
  $93CF: 8a          txa    ; PRG $133CF
  $93D0: 65 07       adc $07    ; PRG $133D0
  $93D2: 85 19       sta $19    ; PRG $133D2
  $93D4: a5 18       lda $18    ; PRG $133D4
  $93D6: a0 f7       ldy #$f7    ; PRG $133D6
  $93D8: 91 06       sta ($06),y    ; PRG $133D8
  $93DA: a5 19       lda $19    ; PRG $133DA
  $93DC: c8          iny    ; PRG $133DC
  $93DD: 91 06       sta ($06),y    ; PRG $133DD
  $93DF: 18          clc    ; PRG $133DF
  $93E0: a5 18       lda $18    ; PRG $133E0
  $93E2: a0 fe       ldy #$fe    ; PRG $133E2
  $93E4: 71 06       adc ($06),y    ; PRG $133E4
  $93E6: a0 f5       ldy #$f5    ; PRG $133E6
  $93E8: 91 06       sta ($06),y    ; PRG $133E8
  $93EA: a5 19       lda $19    ; PRG $133EA
  $93EC: a0 ff       ldy #$ff    ; PRG $133EC
  $93EE: 71 06       adc ($06),y    ; PRG $133EE
  $93F0: a0 f6       ldy #$f6    ; PRG $133F0
  $93F2: 91 06       sta ($06),y    ; PRG $133F2
  $93F4: 4c 06 94    jmp $9406    ; PRG $133F4
  $93F7: 18          clc    ; PRG $133F7
  $93F8: a9 01       lda #$01    ; PRG $133F8
  $93FA: a0 f7       ldy #$f7    ; PRG $133FA
  $93FC: 71 06       adc ($06),y    ; PRG $133FC
  $93FE: 91 06       sta ($06),y    ; PRG $133FE
  $9400: 8a          txa    ; PRG $13400
  $9401: c8          iny    ; PRG $13401
  $9402: 71 06       adc ($06),y    ; PRG $13402
  $9404: 91 06       sta ($06),y    ; PRG $13404
  $9406: a0 f7       ldy #$f7    ; PRG $13406
  $9408: b1 06       lda ($06),y    ; PRG $13408
  $940A: a0 f5       ldy #$f5    ; PRG $1340A
  $940C: d1 06       cmp ($06),y    ; PRG $1340C
  $940E: a0 f8       ldy #$f8    ; PRG $1340E
  $9410: b1 06       lda ($06),y    ; PRG $13410
  $9412: a0 f6       ldy #$f6    ; PRG $13412
  $9414: f1 06       sbc ($06),y    ; PRG $13414
  $9416: 90 03       bcc $941b    ; PRG $13416
  $9418: 4c 4d 94    jmp $944d    ; PRG $13418
  $941B: a0 0e       ldy #$0e    ; PRG $1341B
  $941D: b1 04       lda ($04),y    ; PRG $1341D
  $941F: 48          pha    ; PRG $1341F
  $9420: 88          dey    ; PRG $13420
  $9421: b1 04       lda ($04),y    ; PRG $13421
  $9423: 48          pha    ; PRG $13423
  $9424: a0 f7       ldy #$f7    ; PRG $13424
  $9426: b1 06       lda ($06),y    ; PRG $13426
  $9428: 85 18       sta $18    ; PRG $13428
  $942A: c8          iny    ; PRG $1342A
  $942B: b1 06       lda ($06),y    ; PRG $1342B
  $942D: 85 19       sta $19    ; PRG $1342D
  $942F: a1 18       lda ($18,x)    ; PRG $1342F
  $9431: 85 14       sta $14    ; PRG $13431
  $9433: 86 15       stx $15    ; PRG $13433
  $9435: a5 15       lda $15    ; PRG $13435
  $9437: 48          pha    ; PRG $13437
  $9438: a5 14       lda $14    ; PRG $13438
  $943A: 48          pha    ; PRG $1343A
  $943B: a0 0c       ldy #$0c    ; PRG $1343B
  $943D: b1 04       lda ($04),y    ; PRG $1343D
  $943F: 48          pha    ; PRG $1343F
  $9440: 88          dey    ; PRG $13440
  $9441: b1 04       lda ($04),y    ; PRG $13441
  $9443: 48          pha    ; PRG $13443
  $9444: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $13444
  $9447: 0b 8f 08    .db $0b $8f $08  -> vm $8F0B argc 8    ; PRG $13447
  $944A: 4c f7 93    jmp $93f7    ; PRG $1344A
  $944D: a9 04       lda #$04    ; PRG $1344D
  $944F: 85 18       sta $18    ; PRG $1344F
  $9451: 86 19       stx $19    ; PRG $13451
  $9453: a0 0b       ldy #$0b    ; PRG $13453
  $9455: b1 04       lda ($04),y    ; PRG $13455
  $9457: 85 14       sta $14    ; PRG $13457
  $9459: c8          iny    ; PRG $13459
  $945A: b1 04       lda ($04),y    ; PRG $1345A
  $945C: 85 15       sta $15    ; PRG $1345C
  $945E: a0 14       ldy #$14    ; PRG $1345E
  $9460: a2 18       ldx #$18    ; PRG $13460
  $9462: a9 10       lda #$10    ; PRG $13462
  $9464: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $13464
  $9467: 18          clc    ; PRG $13467
  $9468: a5 10       lda $10    ; PRG $13468
  $946A: 69 62       adc #$62    ; PRG $1346A
  $946C: a0 f3       ldy #$f3    ; PRG $1346C
  $946E: 91 06       sta ($06),y    ; PRG $1346E
  $9470: a5 11       lda $11    ; PRG $13470
  $9472: 69 66       adc #$66    ; PRG $13472
  $9474: c8          iny    ; PRG $13474
  $9475: 91 06       sta ($06),y    ; PRG $13475
  $9477: a0 0d       ldy #$0d    ; PRG $13477
  $9479: b1 04       lda ($04),y    ; PRG $13479
  $947B: c9 32       cmp #$32    ; PRG $1347B
  $947D: c8          iny    ; PRG $1347D
  $947E: b1 04       lda ($04),y    ; PRG $1347E
  $9480: e9 00       sbc #$00    ; PRG $13480
  $9482: 90 03       bcc $9487    ; PRG $13482
  $9484: 4c d6 95    jmp $95d6    ; PRG $13484
  $9487: 84 18       sty $18    ; PRG $13487
  $9489: 86 19       stx $19    ; PRG $13489
  $948B: 88          dey    ; PRG $1348B
  $948C: b1 04       lda ($04),y    ; PRG $1348C
  $948E: 85 14       sta $14    ; PRG $1348E
  $9490: c8          iny    ; PRG $13490
  $9491: b1 04       lda ($04),y    ; PRG $13491
  $9493: 85 15       sta $15    ; PRG $13493
  $9495: a0 14       ldy #$14    ; PRG $13495
  $9497: a2 18       ldx #$18    ; PRG $13497
  $9499: a9 10       lda #$10    ; PRG $13499
  $949B: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1349B
  $949E: 18          clc    ; PRG $1349E
  $949F: a5 10       lda $10    ; PRG $1349F
  $94A1: 69 b2       adc #$b2    ; PRG $134A1
  $94A3: a0 f1       ldy #$f1    ; PRG $134A3
  $94A5: 91 06       sta ($06),y    ; PRG $134A5
  $94A7: a5 11       lda $11    ; PRG $134A7
  $94A9: 69 67       adc #$67    ; PRG $134A9
  $94AB: c8          iny    ; PRG $134AB
  $94AC: 91 06       sta ($06),y    ; PRG $134AC
  $94AE: c8          iny    ; PRG $134AE
  $94AF: b1 06       lda ($06),y    ; PRG $134AF
  $94B1: 85 18       sta $18    ; PRG $134B1
  $94B3: c8          iny    ; PRG $134B3
  $94B4: b1 06       lda ($06),y    ; PRG $134B4
  $94B6: 85 19       sta $19    ; PRG $134B6
  $94B8: a2 18       ldx #$18    ; PRG $134B8
  $94BA: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $134BA
  $94BD: a0 f1       ldy #$f1    ; PRG $134BD
  $94BF: b1 06       lda ($06),y    ; PRG $134BF
  $94C1: 85 18       sta $18    ; PRG $134C1
  $94C3: c8          iny    ; PRG $134C3
  $94C4: b1 06       lda ($06),y    ; PRG $134C4
  $94C6: 85 19       sta $19    ; PRG $134C6
  $94C8: a1 18       lda ($18,x)    ; PRG $134C8
  $94CA: 85 14       sta $14    ; PRG $134CA
  $94CC: a0 01       ldy #$01    ; PRG $134CC
  $94CE: b1 18       lda ($18),y    ; PRG $134CE
  $94D0: 85 15       sta $15    ; PRG $134D0
  $94D2: a9 05       lda #$05    ; PRG $134D2
  $94D4: 85 18       sta $18    ; PRG $134D4
  $94D6: 86 19       stx $19    ; PRG $134D6
  $94D8: 18          clc    ; PRG $134D8
  $94D9: a9 ff       lda #$ff    ; PRG $134D9
  $94DB: a0 0b       ldy #$0b    ; PRG $134DB
  $94DD: 71 04       adc ($04),y    ; PRG $134DD
  $94DF: 85 10       sta $10    ; PRG $134DF
  $94E1: a9 ff       lda #$ff    ; PRG $134E1
  $94E3: c8          iny    ; PRG $134E3
  $94E4: 71 04       adc ($04),y    ; PRG $134E4
  $94E6: 85 11       sta $11    ; PRG $134E6
  $94E8: a0 10       ldy #$10    ; PRG $134E8
  $94EA: a2 18       ldx #$18    ; PRG $134EA
  $94EC: a9 0c       lda #$0c    ; PRG $134EC
  $94EE: 20 eb e1    jsr $e1eb   ; alu_udiv16    ; PRG $134EE
  $94F1: a5 0c       lda $0c    ; PRG $134F1
  $94F3: c9 03       cmp #$03    ; PRG $134F3
  $94F5: a5 0d       lda $0d    ; PRG $134F5
  $94F7: e9 00       sbc #$00    ; PRG $134F7
  $94F9: 90 03       bcc $94fe    ; PRG $134F9
  $94FB: 4c 07 95    jmp $9507    ; PRG $134FB
  $94FE: a9 09       lda #$09    ; PRG $134FE
  $9500: 85 18       sta $18    ; PRG $13500
  $9502: 86 19       stx $19    ; PRG $13502
  $9504: 4c 0d 95    jmp $950d    ; PRG $13504
  $9507: a9 05       lda #$05    ; PRG $13507
  $9509: 85 18       sta $18    ; PRG $13509
  $950B: 86 19       stx $19    ; PRG $1350B
  $950D: a0 18       ldy #$18    ; PRG $1350D
  $950F: a2 14       ldx #$14    ; PRG $1350F
  $9511: a9 10       lda #$10    ; PRG $13511
  $9513: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $13513
  $9516: a2 10       ldx #$10    ; PRG $13516
  $9518: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $13518
  $951B: 48          pha    ; PRG $1351B
  $951C: a9 32       lda #$32    ; PRG $1351C
  $951E: 48          pha    ; PRG $1351E
  $951F: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1351F
  $9522: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $13522
  $9525: a2 10       ldx #$10    ; PRG $13525
  $9527: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $13527
  $952A: 18          clc    ; PRG $1352A
  $952B: a5 08       lda $08    ; PRG $1352B
  $952D: 65 10       adc $10    ; PRG $1352D
  $952F: 85 18       sta $18    ; PRG $1352F
  $9531: a5 09       lda $09    ; PRG $13531
  $9533: 65 11       adc $11    ; PRG $13533
  $9535: 85 19       sta $19    ; PRG $13535
  $9537: a5 19       lda $19    ; PRG $13537
  $9539: 48          pha    ; PRG $13539
  $953A: a5 18       lda $18    ; PRG $1353A
  $953C: 48          pha    ; PRG $1353C
  $953D: a0 f3       ldy #$f3    ; PRG $1353D
  $953F: b1 06       lda ($06),y    ; PRG $1353F
  $9541: 85 18       sta $18    ; PRG $13541
  $9543: c8          iny    ; PRG $13543
  $9544: b1 06       lda ($06),y    ; PRG $13544
  $9546: 85 19       sta $19    ; PRG $13546
  $9548: 38          sec    ; PRG $13548
  $9549: a9 60       lda #$60    ; PRG $13549
  $954B: a0 09       ldy #$09    ; PRG $1354B
  $954D: f1 18       sbc ($18),y    ; PRG $1354D
  $954F: 85 14       sta $14    ; PRG $1354F
  $9551: a9 ea       lda #$ea    ; PRG $13551
  $9553: c8          iny    ; PRG $13553
  $9554: f1 18       sbc ($18),y    ; PRG $13554
  $9556: 85 15       sta $15    ; PRG $13556
  $9558: a5 15       lda $15    ; PRG $13558
  $955A: 48          pha    ; PRG $1355A
  $955B: a5 14       lda $14    ; PRG $1355B
  $955D: 48          pha    ; PRG $1355D
  $955E: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1355E
  $9561: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $13561
  $9564: a2 18       ldx #$18    ; PRG $13564
  $9566: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $13566
  $9569: 18          clc    ; PRG $13569
  $956A: a0 09       ldy #$09    ; PRG $1356A
  $956C: b1 18       lda ($18),y    ; PRG $1356C
  $956E: 65 08       adc $08    ; PRG $1356E
  $9570: 91 18       sta ($18),y    ; PRG $13570
  $9572: c8          iny    ; PRG $13572
  $9573: b1 18       lda ($18),y    ; PRG $13573
  $9575: 65 09       adc $09    ; PRG $13575
  $9577: 91 18       sta ($18),y    ; PRG $13577
  $9579: a0 f1       ldy #$f1    ; PRG $13579
  $957B: b1 06       lda ($06),y    ; PRG $1357B
  $957D: 85 18       sta $18    ; PRG $1357D
  $957F: c8          iny    ; PRG $1357F
  $9580: b1 06       lda ($06),y    ; PRG $13580
  $9582: 85 19       sta $19    ; PRG $13582
  $9584: a2 18       ldx #$18    ; PRG $13584
  $9586: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $13586
  $9589: a0 f1       ldy #$f1    ; PRG $13589
  $958B: b1 06       lda ($06),y    ; PRG $1358B
  $958D: 85 18       sta $18    ; PRG $1358D
  $958F: c8          iny    ; PRG $1358F
  $9590: b1 06       lda ($06),y    ; PRG $13590
  $9592: 85 19       sta $19    ; PRG $13592
  $9594: a0 0b       ldy #$0b    ; PRG $13594
  $9596: b1 18       lda ($18),y    ; PRG $13596
  $9598: 85 14       sta $14    ; PRG $13598
  $959A: 86 15       stx $15    ; PRG $1359A
  $959C: a5 15       lda $15    ; PRG $1359C
  $959E: 48          pha    ; PRG $1359E
  $959F: a5 14       lda $14    ; PRG $1359F
  $95A1: 48          pha    ; PRG $135A1
  $95A2: 8a          txa    ; PRG $135A2
  $95A3: 48          pha    ; PRG $135A3
  $95A4: a9 02       lda #$02    ; PRG $135A4
  $95A6: 48          pha    ; PRG $135A6
  $95A7: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $135A7
  $95AA: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $135AA
  $95AD: 18          clc    ; PRG $135AD
  $95AE: a9 02       lda #$02    ; PRG $135AE
  $95B0: 65 08       adc $08    ; PRG $135B0
  $95B2: 85 18       sta $18    ; PRG $135B2
  $95B4: 8a          txa    ; PRG $135B4
  $95B5: 65 09       adc $09    ; PRG $135B5
  $95B7: 85 19       sta $19    ; PRG $135B7
  $95B9: a5 19       lda $19    ; PRG $135B9
  $95BB: 48          pha    ; PRG $135BB
  $95BC: a5 18       lda $18    ; PRG $135BC
  $95BE: 48          pha    ; PRG $135BE
  $95BF: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $135BF
  $95C2: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $135C2
  $95C5: a2 18       ldx #$18    ; PRG $135C5
  $95C7: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $135C7
  $95CA: 38          sec    ; PRG $135CA
  $95CB: a0 0b       ldy #$0b    ; PRG $135CB
  $95CD: b1 18       lda ($18),y    ; PRG $135CD
  $95CF: e5 08       sbc $08    ; PRG $135CF
  $95D1: 91 18       sta ($18),y    ; PRG $135D1
  $95D3: 4c 20 96    jmp $9620    ; PRG $135D3
  $95D6: a0 f3       ldy #$f3    ; PRG $135D6
  $95D8: b1 06       lda ($06),y    ; PRG $135D8
  $95DA: 85 18       sta $18    ; PRG $135DA
  $95DC: c8          iny    ; PRG $135DC
  $95DD: b1 06       lda ($06),y    ; PRG $135DD
  $95DF: 85 19       sta $19    ; PRG $135DF
  $95E1: a9 e8       lda #$e8    ; PRG $135E1
  $95E3: 85 14       sta $14    ; PRG $135E3
  $95E5: a9 03       lda #$03    ; PRG $135E5
  $95E7: 85 15       sta $15    ; PRG $135E7
  $95E9: a2 18       ldx #$18    ; PRG $135E9
  $95EB: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $135EB
  $95EE: a2 14       ldx #$14    ; PRG $135EE
  $95F0: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $135F0
  $95F3: 48          pha    ; PRG $135F3
  $95F4: a9 0a       lda #$0a    ; PRG $135F4
  $95F6: 48          pha    ; PRG $135F6
  $95F7: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $135F7
  $95FA: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $135FA
  $95FD: a2 14       ldx #$14    ; PRG $135FD
  $95FF: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $135FF
  $9602: a0 08       ldy #$08    ; PRG $13602
  $9604: a2 14       ldx #$14    ; PRG $13604
  $9606: a9 18       lda #$18    ; PRG $13606
  $9608: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $13608
  $960B: a2 14       ldx #$14    ; PRG $1360B
  $960D: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $1360D
  $9610: 18          clc    ; PRG $13610
  $9611: a9 10       lda #$10    ; PRG $13611
  $9613: 65 18       adc $18    ; PRG $13613
  $9615: a0 09       ldy #$09    ; PRG $13615
  $9617: 91 14       sta ($14),y    ; PRG $13617
  $9619: a9 27       lda #$27    ; PRG $13619
  $961B: 65 19       adc $19    ; PRG $1361B
  $961D: c8          iny    ; PRG $1361D
  $961E: 91 14       sta ($14),y    ; PRG $1361E
  $9620: a0 0c       ldy #$0c    ; PRG $13620
  $9622: b1 04       lda ($04),y    ; PRG $13622
  $9624: 48          pha    ; PRG $13624
  $9625: 88          dey    ; PRG $13625
  $9626: b1 04       lda ($04),y    ; PRG $13626
  $9628: 48          pha    ; PRG $13628
  $9629: a9 91       lda #$91    ; PRG $13629
  $962B: 48          pha    ; PRG $1362B
  $962C: a9 04       lda #$04    ; PRG $1362C
  $962E: 48          pha    ; PRG $1362E
  $962F: 8a          txa    ; PRG $1362F
  $9630: 48          pha    ; PRG $13630
  $9631: a9 ca       lda #$ca    ; PRG $13631
  $9633: 48          pha    ; PRG $13633
  $9634: 8a          txa    ; PRG $13634
  $9635: 48          pha    ; PRG $13635
  $9636: a9 01       lda #$01    ; PRG $13636
  $9638: 48          pha    ; PRG $13638
  $9639: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $13639
  $963C: 3a de 0a    .db $3a $de $0a  -> vm $DE3A argc 10    ; PRG $1363C
  $963F: 60          rts    ; PRG $1363F

; ---- sub_9_1646  [stub]  <- (entry: bytecode/OS via $E299)
nat_9_1640: jsr $E299                    ; 9:9640  native-call prologue
            .db $00 $e8 $ff            ; inline: argcount $00, frame $ffe8
  $9646: a9 04       lda #$04    ; PRG $13646
  $9648: 85 18       sta $18    ; PRG $13648
  $964A: 86 19       stx $19    ; PRG $1364A
  $964C: a0 0b       ldy #$0b    ; PRG $1364C
  $964E: b1 04       lda ($04),y    ; PRG $1364E
  $9650: 85 14       sta $14    ; PRG $13650
  $9652: c8          iny    ; PRG $13652
  $9653: b1 04       lda ($04),y    ; PRG $13653
  $9655: 85 15       sta $15    ; PRG $13655
  $9657: a0 14       ldy #$14    ; PRG $13657
  $9659: a2 18       ldx #$18    ; PRG $13659
  $965B: a9 10       lda #$10    ; PRG $1365B
  $965D: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $1365D
  $9660: 18          clc    ; PRG $13660
  $9661: a5 10       lda $10    ; PRG $13661
  $9663: 69 62       adc #$62    ; PRG $13663
  $9665: a0 fc       ldy #$fc    ; PRG $13665
  $9667: 91 06       sta ($06),y    ; PRG $13667
  $9669: a5 11       lda $11    ; PRG $13669
  $966B: 69 66       adc #$66    ; PRG $1366B
  $966D: c8          iny    ; PRG $1366D
  $966E: 91 06       sta ($06),y    ; PRG $1366E
  $9670: a9 07       lda #$07    ; PRG $13670
  $9672: 85 18       sta $18    ; PRG $13672
  $9674: 86 19       stx $19    ; PRG $13674
  $9676: a0 0d       ldy #$0d    ; PRG $13676
  $9678: b1 04       lda ($04),y    ; PRG $13678
  $967A: 85 14       sta $14    ; PRG $1367A
  $967C: c8          iny    ; PRG $1367C
  $967D: b1 04       lda ($04),y    ; PRG $1367D
  $967F: 85 15       sta $15    ; PRG $1367F
  $9681: a0 14       ldy #$14    ; PRG $13681
  $9683: a2 18       ldx #$18    ; PRG $13683
  $9685: a9 10       lda #$10    ; PRG $13685
  $9687: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $13687
  $968A: 18          clc    ; PRG $1368A
  $968B: a5 10       lda $10    ; PRG $1368B
  $968D: 69 90       adc #$90    ; PRG $1368D
  $968F: a0 f8       ldy #$f8    ; PRG $1368F
  $9691: 91 06       sta ($06),y    ; PRG $13691
  $9693: a5 11       lda $11    ; PRG $13693
  $9695: 69 6c       adc #$6c    ; PRG $13695
  $9697: c8          iny    ; PRG $13697
  $9698: 91 06       sta ($06),y    ; PRG $13698
  $969A: 88          dey    ; PRG $1369A
  $969B: b1 06       lda ($06),y    ; PRG $1369B
  $969D: 85 18       sta $18    ; PRG $1369D
  $969F: c8          iny    ; PRG $1369F
  $96A0: b1 06       lda ($06),y    ; PRG $136A0
  $96A2: 85 19       sta $19    ; PRG $136A2
  $96A4: a0 06       ldy #$06    ; PRG $136A4
  $96A6: b1 18       lda ($18),y    ; PRG $136A6
  $96A8: 85 14       sta $14    ; PRG $136A8
  $96AA: 86 15       stx $15    ; PRG $136AA
  $96AC: a9 0f       lda #$0f    ; PRG $136AC
  $96AE: 25 14       and $14    ; PRG $136AE
  $96B0: a0 fe       ldy #$fe    ; PRG $136B0
  $96B2: 91 06       sta ($06),y    ; PRG $136B2
  $96B4: 8a          txa    ; PRG $136B4
  $96B5: c8          iny    ; PRG $136B5
  $96B6: 91 06       sta ($06),y    ; PRG $136B6
  $96B8: b1 06       lda ($06),y    ; PRG $136B8
  $96BA: 48          pha    ; PRG $136BA
  $96BB: 88          dey    ; PRG $136BB
  $96BC: b1 06       lda ($06),y    ; PRG $136BC
  $96BE: 48          pha    ; PRG $136BE
  $96BF: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $136BF
  $96C2: 32 d5 04    .db $32 $d5 $04  -> vm $D532 argc 4    ; PRG $136C2
  $96C5: a5 08       lda $08    ; PRG $136C5
  $96C7: a0 fa       ldy #$fa    ; PRG $136C7
  $96C9: 91 06       sta ($06),y    ; PRG $136C9
  $96CB: a5 09       lda $09    ; PRG $136CB
  $96CD: c8          iny    ; PRG $136CD
  $96CE: 91 06       sta ($06),y    ; PRG $136CE
  $96D0: a9 05       lda #$05    ; PRG $136D0
  $96D2: 85 18       sta $18    ; PRG $136D2
  $96D4: 86 19       stx $19    ; PRG $136D4
  $96D6: a2 18       ldx #$18    ; PRG $136D6
  $96D8: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $136D8
  $96DB: a0 ff       ldy #$ff    ; PRG $136DB
  $96DD: b1 06       lda ($06),y    ; PRG $136DD
  $96DF: 48          pha    ; PRG $136DF
  $96E0: 88          dey    ; PRG $136E0
  $96E1: b1 06       lda ($06),y    ; PRG $136E1
  $96E3: 48          pha    ; PRG $136E3
  $96E4: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $136E4
  $96E7: 32 d5 04    .db $32 $d5 $04  -> vm $D532 argc 4    ; PRG $136E7
  $96EA: 18          clc    ; PRG $136EA
  $96EB: a9 14       lda #$14    ; PRG $136EB
  $96ED: 65 08       adc $08    ; PRG $136ED
  $96EF: 85 18       sta $18    ; PRG $136EF
  $96F1: 8a          txa    ; PRG $136F1
  $96F2: 65 09       adc $09    ; PRG $136F2
  $96F4: 85 19       sta $19    ; PRG $136F4
  $96F6: a5 19       lda $19    ; PRG $136F6
  $96F8: 48          pha    ; PRG $136F8
  $96F9: a5 18       lda $18    ; PRG $136F9
  $96FB: 48          pha    ; PRG $136FB
  $96FC: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $136FC
  $96FF: 0c d3 04    .db $0c $d3 $04  -> vm $D30C argc 4    ; PRG $136FF
  $9702: 86 09       stx $09    ; PRG $13702
  $9704: a2 18       ldx #$18    ; PRG $13704
  $9706: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $13706
  $9709: a0 08       ldy #$08    ; PRG $13709
  $970B: a2 18       ldx #$18    ; PRG $1370B
  $970D: a9 14       lda #$14    ; PRG $1370D
  $970F: 20 15 e4    jsr $e415   ; alu_shr16_n    ; PRG $1370F
  $9712: a9 07       lda #$07    ; PRG $13712
  $9714: 25 14       and $14    ; PRG $13714
  $9716: a0 f6       ldy #$f6    ; PRG $13716
  $9718: 91 06       sta ($06),y    ; PRG $13718
  $971A: 8a          txa    ; PRG $1371A
  $971B: c8          iny    ; PRG $1371B
  $971C: 91 06       sta ($06),y    ; PRG $1371C
  $971E: a0 ff       ldy #$ff    ; PRG $1371E
  $9720: b1 06       lda ($06),y    ; PRG $13720
  $9722: 48          pha    ; PRG $13722
  $9723: 88          dey    ; PRG $13723
  $9724: b1 06       lda ($06),y    ; PRG $13724
  $9726: 48          pha    ; PRG $13726
  $9727: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $13727
  $972A: 32 d5 04    .db $32 $d5 $04  -> vm $D532 argc 4    ; PRG $1372A
  $972D: 18          clc    ; PRG $1372D
  $972E: a9 14       lda #$14    ; PRG $1372E
  $9730: 65 08       adc $08    ; PRG $13730
  $9732: 85 18       sta $18    ; PRG $13732
  $9734: 8a          txa    ; PRG $13734
  $9735: 65 09       adc $09    ; PRG $13735
  $9737: 85 19       sta $19    ; PRG $13737
  $9739: a5 19       lda $19    ; PRG $13739
  $973B: 48          pha    ; PRG $1373B
  $973C: a5 18       lda $18    ; PRG $1373C
  $973E: 48          pha    ; PRG $1373E
  $973F: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1373F
  $9742: 0c d3 04    .db $0c $d3 $04  -> vm $D30C argc 4    ; PRG $13742
  $9745: 86 09       stx $09    ; PRG $13745
  $9747: a9 03       lda #$03    ; PRG $13747
  $9749: 25 08       and $08    ; PRG $13749
  $974B: a0 f4       ldy #$f4    ; PRG $1374B
  $974D: 91 06       sta ($06),y    ; PRG $1374D
  $974F: 8a          txa    ; PRG $1374F
  $9750: c8          iny    ; PRG $13750
  $9751: 91 06       sta ($06),y    ; PRG $13751
  $9753: a9 02       lda #$02    ; PRG $13753
  $9755: 85 18       sta $18    ; PRG $13755
  $9757: 86 19       stx $19    ; PRG $13757
  $9759: a2 18       ldx #$18    ; PRG $13759
  $975B: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $1375B
  $975E: a0 ff       ldy #$ff    ; PRG $1375E
  $9760: b1 06       lda ($06),y    ; PRG $13760
  $9762: 48          pha    ; PRG $13762
  $9763: 88          dey    ; PRG $13763
  $9764: b1 06       lda ($06),y    ; PRG $13764
  $9766: 48          pha    ; PRG $13766
  $9767: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $13767
  $976A: 32 d5 04    .db $32 $d5 $04  -> vm $D532 argc 4    ; PRG $1376A
  $976D: 18          clc    ; PRG $1376D
  $976E: a9 14       lda #$14    ; PRG $1376E
  $9770: 65 08       adc $08    ; PRG $13770
  $9772: 85 18       sta $18    ; PRG $13772
  $9774: 8a          txa    ; PRG $13774
  $9775: 65 09       adc $09    ; PRG $13775
  $9777: 85 19       sta $19    ; PRG $13777
  $9779: a5 19       lda $19    ; PRG $13779
  $977B: 48          pha    ; PRG $1377B
  $977C: a5 18       lda $18    ; PRG $1377C
  $977E: 48          pha    ; PRG $1377E
  $977F: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1377F
  $9782: 0c d3 04    .db $0c $d3 $04  -> vm $D30C argc 4    ; PRG $13782
  $9785: 86 09       stx $09    ; PRG $13785
  $9787: a2 18       ldx #$18    ; PRG $13787
  $9789: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $13789
  $978C: a0 08       ldy #$08    ; PRG $1378C
  $978E: a2 18       ldx #$18    ; PRG $1378E
  $9790: a9 14       lda #$14    ; PRG $13790
  $9792: 20 15 e4    jsr $e415   ; alu_shr16_n    ; PRG $13792
  $9795: a9 03       lda #$03    ; PRG $13795
  $9797: 25 14       and $14    ; PRG $13797
  $9799: a0 f2       ldy #$f2    ; PRG $13799
  $979B: 91 06       sta ($06),y    ; PRG $1379B
  $979D: 8a          txa    ; PRG $1379D
  $979E: c8          iny    ; PRG $1379E
  $979F: 91 06       sta ($06),y    ; PRG $1379F
  $97A1: a9 04       lda #$04    ; PRG $137A1
  $97A3: 85 18       sta $18    ; PRG $137A3
  $97A5: 86 19       stx $19    ; PRG $137A5
  $97A7: a2 18       ldx #$18    ; PRG $137A7
  $97A9: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $137A9
  $97AC: a0 ff       ldy #$ff    ; PRG $137AC
  $97AE: b1 06       lda ($06),y    ; PRG $137AE
  $97B0: 48          pha    ; PRG $137B0
  $97B1: 88          dey    ; PRG $137B1
  $97B2: b1 06       lda ($06),y    ; PRG $137B2
  $97B4: 48          pha    ; PRG $137B4
  $97B5: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $137B5
  $97B8: 32 d5 04    .db $32 $d5 $04  -> vm $D532 argc 4    ; PRG $137B8
  $97BB: 18          clc    ; PRG $137BB
  $97BC: a9 14       lda #$14    ; PRG $137BC
  $97BE: 65 08       adc $08    ; PRG $137BE
  $97C0: 85 18       sta $18    ; PRG $137C0
  $97C2: 8a          txa    ; PRG $137C2
  $97C3: 65 09       adc $09    ; PRG $137C3
  $97C5: 85 19       sta $19    ; PRG $137C5
  $97C7: a5 19       lda $19    ; PRG $137C7
  $97C9: 48          pha    ; PRG $137C9
  $97CA: a5 18       lda $18    ; PRG $137CA
  $97CC: 48          pha    ; PRG $137CC
  $97CD: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $137CD
  $97D0: 0c d3 04    .db $0c $d3 $04  -> vm $D30C argc 4    ; PRG $137D0
  $97D3: 86 09       stx $09    ; PRG $137D3
  $97D5: a2 18       ldx #$18    ; PRG $137D5
  $97D7: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $137D7
  $97DA: a0 08       ldy #$08    ; PRG $137DA
  $97DC: a2 18       ldx #$18    ; PRG $137DC
  $97DE: a9 14       lda #$14    ; PRG $137DE
  $97E0: 20 15 e4    jsr $e415   ; alu_shr16_n    ; PRG $137E0
  $97E3: 98          tya    ; PRG $137E3
  $97E4: 25 14       and $14    ; PRG $137E4
  $97E6: a0 f0       ldy #$f0    ; PRG $137E6
  $97E8: 91 06       sta ($06),y    ; PRG $137E8
  $97EA: 8a          txa    ; PRG $137EA
  $97EB: c8          iny    ; PRG $137EB
  $97EC: 91 06       sta ($06),y    ; PRG $137EC
  $97EE: a0 f8       ldy #$f8    ; PRG $137EE
  $97F0: b1 06       lda ($06),y    ; PRG $137F0
  $97F2: 85 18       sta $18    ; PRG $137F2
  $97F4: c8          iny    ; PRG $137F4
  $97F5: b1 06       lda ($06),y    ; PRG $137F5
  $97F7: 85 19       sta $19    ; PRG $137F7
  $97F9: a1 18       lda ($18,x)    ; PRG $137F9
  $97FB: 85 14       sta $14    ; PRG $137FB
  $97FD: 86 15       stx $15    ; PRG $137FD
  $97FF: a5 14       lda $14    ; PRG $137FF
  $9801: a0 ee       ldy #$ee    ; PRG $13801
  $9803: 91 06       sta ($06),y    ; PRG $13803
  $9805: a5 15       lda $15    ; PRG $13805
  $9807: c8          iny    ; PRG $13807
  $9808: 91 06       sta ($06),y    ; PRG $13808
  $980A: a0 f8       ldy #$f8    ; PRG $1380A
  $980C: b1 06       lda ($06),y    ; PRG $1380C
  $980E: 85 18       sta $18    ; PRG $1380E
  $9810: c8          iny    ; PRG $13810
  $9811: b1 06       lda ($06),y    ; PRG $13811
  $9813: 85 19       sta $19    ; PRG $13813
  $9815: a0 01       ldy #$01    ; PRG $13815
  $9817: b1 18       lda ($18),y    ; PRG $13817
  $9819: 85 14       sta $14    ; PRG $13819
  $981B: 86 15       stx $15    ; PRG $1381B
  $981D: a5 14       lda $14    ; PRG $1381D
  $981F: a0 ec       ldy #$ec    ; PRG $1381F
  $9821: 91 06       sta ($06),y    ; PRG $13821
  $9823: a5 15       lda $15    ; PRG $13823
  $9825: c8          iny    ; PRG $13825
  $9826: 91 06       sta ($06),y    ; PRG $13826
  $9828: a0 f8       ldy #$f8    ; PRG $13828
  $982A: b1 06       lda ($06),y    ; PRG $1382A
  $982C: 85 18       sta $18    ; PRG $1382C
  $982E: c8          iny    ; PRG $1382E
  $982F: b1 06       lda ($06),y    ; PRG $1382F
  $9831: 85 19       sta $19    ; PRG $13831
  $9833: a0 02       ldy #$02    ; PRG $13833
  $9835: b1 18       lda ($18),y    ; PRG $13835
  $9837: 85 14       sta $14    ; PRG $13837
  $9839: 86 15       stx $15    ; PRG $13839
  $983B: a5 14       lda $14    ; PRG $1383B
  $983D: a0 ea       ldy #$ea    ; PRG $1383D
  $983F: 91 06       sta ($06),y    ; PRG $1383F
  $9841: a5 15       lda $15    ; PRG $13841
  $9843: c8          iny    ; PRG $13843
  $9844: 91 06       sta ($06),y    ; PRG $13844
  $9846: a0 fc       ldy #$fc    ; PRG $13846
  $9848: b1 06       lda ($06),y    ; PRG $13848
  $984A: 85 18       sta $18    ; PRG $1384A
  $984C: c8          iny    ; PRG $1384C
  $984D: b1 06       lda ($06),y    ; PRG $1384D
  $984F: 85 19       sta $19    ; PRG $1384F
  $9851: a2 18       ldx #$18    ; PRG $13851
  $9853: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $13853
  $9856: a9 0a       lda #$0a    ; PRG $13856
  $9858: 85 18       sta $18    ; PRG $13858
  $985A: 86 19       stx $19    ; PRG $1385A
  $985C: a9 02       lda #$02    ; PRG $1385C
  $985E: 85 14       sta $14    ; PRG $1385E
  $9860: 86 15       stx $15    ; PRG $13860
  $9862: 38          sec    ; PRG $13862
  $9863: a9 04       lda #$04    ; PRG $13863
  $9865: a0 f0       ldy #$f0    ; PRG $13865
  $9867: f1 06       sbc ($06),y    ; PRG $13867
  $9869: 85 10       sta $10    ; PRG $13869
  $986B: 8a          txa    ; PRG $1386B
  $986C: c8          iny    ; PRG $1386C
  $986D: f1 06       sbc ($06),y    ; PRG $1386D
  $986F: 85 11       sta $11    ; PRG $1386F
  $9871: a9 0a       lda #$0a    ; PRG $13871
  $9873: 85 0c       sta $0c    ; PRG $13873
  $9875: 86 0d       stx $0d    ; PRG $13875
  $9877: 38          sec    ; PRG $13877
  $9878: c8          iny    ; PRG $13878
  $9879: f1 06       sbc ($06),y    ; PRG $13879
  $987B: 85 08       sta $08    ; PRG $1387B
  $987D: 8a          txa    ; PRG $1387D
  $987E: c8          iny    ; PRG $1387E
  $987F: f1 06       sbc ($06),y    ; PRG $1387F
  $9881: 85 09       sta $09    ; PRG $13881
  $9883: a2 18       ldx #$18    ; PRG $13883
  $9885: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $13885
  $9888: a9 14       lda #$14    ; PRG $13888
  $988A: 85 18       sta $18    ; PRG $1388A
  $988C: 86 19       stx $19    ; PRG $1388C
  $988E: aa          tax    ; PRG $1388E
  $988F: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $1388F
  $9892: a9 64       lda #$64    ; PRG $13892
  $9894: 85 14       sta $14    ; PRG $13894
  $9896: 86 15       stx $15    ; PRG $13896
  $9898: a2 10       ldx #$10    ; PRG $13898
  $989A: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $1389A
  $989D: 38          sec    ; PRG $1389D
  $989E: a9 14       lda #$14    ; PRG $1389E
  $98A0: a0 f6       ldy #$f6    ; PRG $138A0
  $98A2: f1 06       sbc ($06),y    ; PRG $138A2
  $98A4: 85 10       sta $10    ; PRG $138A4
  $98A6: 8a          txa    ; PRG $138A6
  $98A7: c8          iny    ; PRG $138A7
  $98A8: f1 06       sbc ($06),y    ; PRG $138A8
  $98AA: 85 11       sta $11    ; PRG $138AA
  $98AC: a2 0c       ldx #$0c    ; PRG $138AC
  $98AE: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $138AE
  $98B1: a0 10       ldy #$10    ; PRG $138B1
  $98B3: a2 14       ldx #$14    ; PRG $138B3
  $98B5: a9 0c       lda #$0c    ; PRG $138B5
  $98B7: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $138B7
  $98BA: a0 0c       ldy #$0c    ; PRG $138BA
  $98BC: a2 18       ldx #$18    ; PRG $138BC
  $98BE: a9 14       lda #$14    ; PRG $138BE
  $98C0: 20 d9 e1    jsr $e1d9   ; alu_div_push_remainder    ; PRG $138C0
  $98C3: a0 14       ldy #$14    ; PRG $138C3
  $98C5: a2 08       ldx #$08    ; PRG $138C5
  $98C7: a9 18       lda #$18    ; PRG $138C7
  $98C9: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $138C9
  $98CC: a2 0c       ldx #$0c    ; PRG $138CC
  $98CE: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $138CE
  $98D1: a0 18       ldy #$18    ; PRG $138D1
  $98D3: a2 0c       ldx #$0c    ; PRG $138D3
  $98D5: a9 14       lda #$14    ; PRG $138D5
  $98D7: 20 d9 e1    jsr $e1d9   ; alu_div_push_remainder    ; PRG $138D7
  $98DA: a2 10       ldx #$10    ; PRG $138DA
  $98DC: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $138DC
  $98DF: a0 14       ldy #$14    ; PRG $138DF
  $98E1: a2 10       ldx #$10    ; PRG $138E1
  $98E3: a9 18       lda #$18    ; PRG $138E3
  $98E5: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $138E5
  $98E8: a2 14       ldx #$14    ; PRG $138E8
  $98EA: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $138EA
  $98ED: a0 18       ldy #$18    ; PRG $138ED
  $98EF: a2 14       ldx #$14    ; PRG $138EF
  $98F1: a9 10       lda #$10    ; PRG $138F1
  $98F3: 20 15 e4    jsr $e415   ; alu_shr16_n    ; PRG $138F3
  $98F6: 38          sec    ; PRG $138F6
  $98F7: a5 10       lda $10    ; PRG $138F7
  $98F9: a0 ec       ldy #$ec    ; PRG $138F9
  $98FB: f1 06       sbc ($06),y    ; PRG $138FB
  $98FD: 85 18       sta $18    ; PRG $138FD
  $98FF: a5 11       lda $11    ; PRG $138FF
  $9901: c8          iny    ; PRG $13901
  $9902: f1 06       sbc ($06),y    ; PRG $13902
  $9904: 85 19       sta $19    ; PRG $13904
  $9906: a9 0a       lda #$0a    ; PRG $13906
  $9908: 85 14       sta $14    ; PRG $13908
  $990A: 86 15       stx $15    ; PRG $1390A
  $990C: a0 f4       ldy #$f4    ; PRG $1390C
  $990E: b1 06       lda ($06),y    ; PRG $1390E
  $9910: 85 10       sta $10    ; PRG $13910
  $9912: c8          iny    ; PRG $13912
  $9913: b1 06       lda ($06),y    ; PRG $13913
  $9915: 85 11       sta $11    ; PRG $13915
  $9917: a0 10       ldy #$10    ; PRG $13917
  $9919: a2 14       ldx #$14    ; PRG $13919
  $991B: a9 0c       lda #$0c    ; PRG $1391B
  $991D: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1391D
  $9920: a9 0a       lda #$0a    ; PRG $13920
  $9922: 85 14       sta $14    ; PRG $13922
  $9924: 86 15       stx $15    ; PRG $13924
  $9926: a0 f6       ldy #$f6    ; PRG $13926
  $9928: b1 06       lda ($06),y    ; PRG $13928
  $992A: 85 10       sta $10    ; PRG $1392A
  $992C: c8          iny    ; PRG $1392C
  $992D: b1 06       lda ($06),y    ; PRG $1392D
  $992F: 85 11       sta $11    ; PRG $1392F
  $9931: a0 10       ldy #$10    ; PRG $13931
  $9933: a2 14       ldx #$14    ; PRG $13933
  $9935: a9 08       lda #$08    ; PRG $13935
  $9937: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $13937
  $993A: 18          clc    ; PRG $1393A
  $993B: a5 08       lda $08    ; PRG $1393B
  $993D: 65 0c       adc $0c    ; PRG $1393D
  $993F: 85 14       sta $14    ; PRG $1393F
  $9941: a5 09       lda $09    ; PRG $13941
  $9943: 65 0d       adc $0d    ; PRG $13943
  $9945: 85 15       sta $15    ; PRG $13945
  $9947: 18          clc    ; PRG $13947
  $9948: a9 14       lda #$14    ; PRG $13948
  $994A: 65 14       adc $14    ; PRG $1394A
  $994C: 85 10       sta $10    ; PRG $1394C
  $994E: 8a          txa    ; PRG $1394E
  $994F: 65 15       adc $15    ; PRG $1394F
  $9951: 85 11       sta $11    ; PRG $13951
  $9953: 38          sec    ; PRG $13953
  $9954: a5 10       lda $10    ; PRG $13954
  $9956: a0 ee       ldy #$ee    ; PRG $13956
  $9958: f1 06       sbc ($06),y    ; PRG $13958
  $995A: 85 14       sta $14    ; PRG $1395A
  $995C: a5 11       lda $11    ; PRG $1395C
  $995E: c8          iny    ; PRG $1395E
  $995F: f1 06       sbc ($06),y    ; PRG $1395F
  $9961: 85 15       sta $15    ; PRG $13961
  $9963: a2 18       ldx #$18    ; PRG $13963
  $9965: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $13965
  $9968: a2 14       ldx #$14    ; PRG $13968
  $996A: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $1396A
  $996D: 48          pha    ; PRG $1396D
  $996E: a9 64       lda #$64    ; PRG $1396E
  $9970: 48          pha    ; PRG $13970
  $9971: a9 02       lda #$02    ; PRG $13971
  $9973: 85 18       sta $18    ; PRG $13973
  $9975: 86 19       stx $19    ; PRG $13975
  $9977: 18          clc    ; PRG $13977
  $9978: a9 03       lda #$03    ; PRG $13978
  $997A: a0 f0       ldy #$f0    ; PRG $1397A
  $997C: 71 06       adc ($06),y    ; PRG $1397C
  $997E: 85 14       sta $14    ; PRG $1397E
  $9980: 8a          txa    ; PRG $13980
  $9981: c8          iny    ; PRG $13981
  $9982: 71 06       adc ($06),y    ; PRG $13982
  $9984: 85 15       sta $15    ; PRG $13984
  $9986: a9 0a       lda #$0a    ; PRG $13986
  $9988: 85 10       sta $10    ; PRG $13988
  $998A: 86 11       stx $11    ; PRG $1398A
  $998C: 38          sec    ; PRG $1398C
  $998D: a0 f6       ldy #$f6    ; PRG $1398D
  $998F: f1 06       sbc ($06),y    ; PRG $1398F
  $9991: 85 0c       sta $0c    ; PRG $13991
  $9993: 8a          txa    ; PRG $13993
  $9994: c8          iny    ; PRG $13994
  $9995: f1 06       sbc ($06),y    ; PRG $13995
  $9997: 85 0d       sta $0d    ; PRG $13997
  $9999: a9 0a       lda #$0a    ; PRG $13999
  $999B: 85 08       sta $08    ; PRG $1399B
  $999D: 86 09       stx $09    ; PRG $1399D
  $999F: a2 18       ldx #$18    ; PRG $1399F
  $99A1: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $139A1
  $99A4: a0 f2       ldy #$f2    ; PRG $139A4
  $99A6: b1 06       lda ($06),y    ; PRG $139A6
  $99A8: 85 18       sta $18    ; PRG $139A8
  $99AA: c8          iny    ; PRG $139AA
  $99AB: b1 06       lda ($06),y    ; PRG $139AB
  $99AD: 85 19       sta $19    ; PRG $139AD
  $99AF: a2 14       ldx #$14    ; PRG $139AF
  $99B1: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $139B1
  $99B4: a0 18       ldy #$18    ; PRG $139B4
  $99B6: a2 08       ldx #$08    ; PRG $139B6
  $99B8: a9 14       lda #$14    ; PRG $139B8
  $99BA: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $139BA
  $99BD: 18          clc    ; PRG $139BD
  $99BE: a9 64       lda #$64    ; PRG $139BE
  $99C0: 65 14       adc $14    ; PRG $139C0
  $99C2: 85 18       sta $18    ; PRG $139C2
  $99C4: 8a          txa    ; PRG $139C4
  $99C5: 65 15       adc $15    ; PRG $139C5
  $99C7: 85 19       sta $19    ; PRG $139C7
  $99C9: a0 18       ldy #$18    ; PRG $139C9
  $99CB: a2 0c       ldx #$0c    ; PRG $139CB
  $99CD: a9 14       lda #$14    ; PRG $139CD
  $99CF: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $139CF
  $99D2: a0 14       ldy #$14    ; PRG $139D2
  $99D4: a2 10       ldx #$10    ; PRG $139D4
  $99D6: a9 18       lda #$18    ; PRG $139D6
  $99D8: 20 d9 e1    jsr $e1d9   ; alu_div_push_remainder    ; PRG $139D8
  $99DB: a2 14       ldx #$14    ; PRG $139DB
  $99DD: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $139DD
  $99E0: a0 18       ldy #$18    ; PRG $139E0
  $99E2: a2 14       ldx #$14    ; PRG $139E2
  $99E4: a9 10       lda #$10    ; PRG $139E4
  $99E6: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $139E6
  $99E9: a2 18       ldx #$18    ; PRG $139E9
  $99EB: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $139EB
  $99EE: a0 10       ldy #$10    ; PRG $139EE
  $99F0: a2 18       ldx #$18    ; PRG $139F0
  $99F2: a9 14       lda #$14    ; PRG $139F2
  $99F4: 20 15 e4    jsr $e415   ; alu_shr16_n    ; PRG $139F4
  $99F7: a5 15       lda $15    ; PRG $139F7
  $99F9: 48          pha    ; PRG $139F9
  $99FA: a5 14       lda $14    ; PRG $139FA
  $99FC: 48          pha    ; PRG $139FC
  $99FD: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $139FD
  $9A00: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $13A00
  $9A03: 38          sec    ; PRG $13A03
  $9A04: a5 08       lda $08    ; PRG $13A04
  $9A06: a0 ea       ldy #$ea    ; PRG $13A06
  $9A08: f1 06       sbc ($06),y    ; PRG $13A08
  $9A0A: 85 18       sta $18    ; PRG $13A0A
  $9A0C: a5 09       lda $09    ; PRG $13A0C
  $9A0E: c8          iny    ; PRG $13A0E
  $9A0F: f1 06       sbc ($06),y    ; PRG $13A0F
  $9A11: 85 19       sta $19    ; PRG $13A11
  $9A13: a2 14       ldx #$14    ; PRG $13A13
  $9A15: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $13A15
  $9A18: 18          clc    ; PRG $13A18
  $9A19: a5 18       lda $18    ; PRG $13A19
  $9A1B: 65 14       adc $14    ; PRG $13A1B
  $9A1D: 85 10       sta $10    ; PRG $13A1D
  $9A1F: a5 19       lda $19    ; PRG $13A1F
  $9A21: 65 15       adc $15    ; PRG $13A21
  $9A23: 85 11       sta $11    ; PRG $13A23
  $9A25: a2 18       ldx #$18    ; PRG $13A25
  $9A27: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $13A27
  $9A2A: 18          clc    ; PRG $13A2A
  $9A2B: a5 10       lda $10    ; PRG $13A2B
  $9A2D: 65 18       adc $18    ; PRG $13A2D
  $9A2F: 85 14       sta $14    ; PRG $13A2F
  $9A31: a5 11       lda $11    ; PRG $13A31
  $9A33: 65 19       adc $19    ; PRG $13A33
  $9A35: 85 15       sta $15    ; PRG $13A35
  $9A37: a2 18       ldx #$18    ; PRG $13A37
  $9A39: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $13A39
  $9A3C: a0 14       ldy #$14    ; PRG $13A3C
  $9A3E: a2 18       ldx #$18    ; PRG $13A3E
  $9A40: a9 10       lda #$10    ; PRG $13A40
  $9A42: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $13A42
  $9A45: a5 11       lda $11    ; PRG $13A45
  $9A47: 48          pha    ; PRG $13A47
  $9A48: a5 10       lda $10    ; PRG $13A48
  $9A4A: 48          pha    ; PRG $13A4A
  $9A4B: a0 fc       ldy #$fc    ; PRG $13A4B
  $9A4D: b1 06       lda ($06),y    ; PRG $13A4D
  $9A4F: 85 18       sta $18    ; PRG $13A4F
  $9A51: c8          iny    ; PRG $13A51
  $9A52: b1 06       lda ($06),y    ; PRG $13A52
  $9A54: 85 19       sta $19    ; PRG $13A54
  $9A56: a0 0a       ldy #$0a    ; PRG $13A56
  $9A58: b1 18       lda ($18),y    ; PRG $13A58
  $9A5A: 48          pha    ; PRG $13A5A
  $9A5B: 88          dey    ; PRG $13A5B
  $9A5C: b1 18       lda ($18),y    ; PRG $13A5C
  $9A5E: 48          pha    ; PRG $13A5E
  $9A5F: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $13A5F
  $9A62: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $13A62
  $9A65: a2 18       ldx #$18    ; PRG $13A65
  $9A67: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $13A67
  $9A6A: 38          sec    ; PRG $13A6A
  $9A6B: a0 09       ldy #$09    ; PRG $13A6B
  $9A6D: b1 18       lda ($18),y    ; PRG $13A6D
  $9A6F: e5 08       sbc $08    ; PRG $13A6F
  $9A71: 91 18       sta ($18),y    ; PRG $13A71
  $9A73: c8          iny    ; PRG $13A73
  $9A74: b1 18       lda ($18),y    ; PRG $13A74
  $9A76: e5 09       sbc $09    ; PRG $13A76
  $9A78: 91 18       sta ($18),y    ; PRG $13A78
  $9A7A: a0 f8       ldy #$f8    ; PRG $13A7A
  $9A7C: b1 06       lda ($06),y    ; PRG $13A7C
  $9A7E: 85 18       sta $18    ; PRG $13A7E
  $9A80: c8          iny    ; PRG $13A80
  $9A81: b1 06       lda ($06),y    ; PRG $13A81
  $9A83: 85 19       sta $19    ; PRG $13A83
  $9A85: a9 0a       lda #$0a    ; PRG $13A85
  $9A87: 85 14       sta $14    ; PRG $13A87
  $9A89: 86 15       stx $15    ; PRG $13A89
  $9A8B: a0 f4       ldy #$f4    ; PRG $13A8B
  $9A8D: b1 06       lda ($06),y    ; PRG $13A8D
  $9A8F: 85 10       sta $10    ; PRG $13A8F
  $9A91: c8          iny    ; PRG $13A91
  $9A92: b1 06       lda ($06),y    ; PRG $13A92
  $9A94: 85 11       sta $11    ; PRG $13A94
  $9A96: a0 10       ldy #$10    ; PRG $13A96
  $9A98: a2 14       ldx #$14    ; PRG $13A98
  $9A9A: a9 0c       lda #$0c    ; PRG $13A9A
  $9A9C: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $13A9C
  $9A9F: a9 0a       lda #$0a    ; PRG $13A9F
  $9AA1: 85 14       sta $14    ; PRG $13AA1
  $9AA3: 86 15       stx $15    ; PRG $13AA3
  $9AA5: a0 f6       ldy #$f6    ; PRG $13AA5
  $9AA7: b1 06       lda ($06),y    ; PRG $13AA7
  $9AA9: 85 10       sta $10    ; PRG $13AA9
  $9AAB: c8          iny    ; PRG $13AAB
  $9AAC: b1 06       lda ($06),y    ; PRG $13AAC
  $9AAE: 85 11       sta $11    ; PRG $13AAE
  $9AB0: a0 10       ldy #$10    ; PRG $13AB0
  $9AB2: a2 14       ldx #$14    ; PRG $13AB2
  $9AB4: a9 08       lda #$08    ; PRG $13AB4
  $9AB6: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $13AB6
  $9AB9: 18          clc    ; PRG $13AB9
  $9ABA: a5 08       lda $08    ; PRG $13ABA
  $9ABC: 65 0c       adc $0c    ; PRG $13ABC
  $9ABE: 85 14       sta $14    ; PRG $13ABE
  $9AC0: a5 09       lda $09    ; PRG $13AC0
  $9AC2: 65 0d       adc $0d    ; PRG $13AC2
  $9AC4: 85 15       sta $15    ; PRG $13AC4
  $9AC6: 18          clc    ; PRG $13AC6
  $9AC7: a9 14       lda #$14    ; PRG $13AC7
  $9AC9: 65 14       adc $14    ; PRG $13AC9
  $9ACB: 85 10       sta $10    ; PRG $13ACB
  $9ACD: 8a          txa    ; PRG $13ACD
  $9ACE: 65 15       adc $15    ; PRG $13ACE
  $9AD0: 85 11       sta $11    ; PRG $13AD0
  $9AD2: a5 10       lda $10    ; PRG $13AD2
  $9AD4: 81 18       sta ($18,x)    ; PRG $13AD4
  $9AD6: a0 f8       ldy #$f8    ; PRG $13AD6
  $9AD8: b1 06       lda ($06),y    ; PRG $13AD8
  $9ADA: 85 18       sta $18    ; PRG $13ADA
  $9ADC: c8          iny    ; PRG $13ADC
  $9ADD: b1 06       lda ($06),y    ; PRG $13ADD
  $9ADF: 85 19       sta $19    ; PRG $13ADF
  $9AE1: a9 04       lda #$04    ; PRG $13AE1
  $9AE3: 85 14       sta $14    ; PRG $13AE3
  $9AE5: 86 15       stx $15    ; PRG $13AE5
  $9AE7: 38          sec    ; PRG $13AE7
  $9AE8: a0 f0       ldy #$f0    ; PRG $13AE8
  $9AEA: f1 06       sbc ($06),y    ; PRG $13AEA
  $9AEC: 85 10       sta $10    ; PRG $13AEC
  $9AEE: 8a          txa    ; PRG $13AEE
  $9AEF: c8          iny    ; PRG $13AEF
  $9AF0: f1 06       sbc ($06),y    ; PRG $13AF0
  $9AF2: 85 11       sta $11    ; PRG $13AF2
  $9AF4: a9 0a       lda #$0a    ; PRG $13AF4
  $9AF6: 85 0c       sta $0c    ; PRG $13AF6
  $9AF8: 86 0d       stx $0d    ; PRG $13AF8
  $9AFA: 38          sec    ; PRG $13AFA
  $9AFB: c8          iny    ; PRG $13AFB
  $9AFC: f1 06       sbc ($06),y    ; PRG $13AFC
  $9AFE: 85 08       sta $08    ; PRG $13AFE
  $9B00: 8a          txa    ; PRG $13B00
  $9B01: c8          iny    ; PRG $13B01
  $9B02: f1 06       sbc ($06),y    ; PRG $13B02
  $9B04: 85 09       sta $09    ; PRG $13B04
  $9B06: a2 18       ldx #$18    ; PRG $13B06
  $9B08: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $13B08
  $9B0B: a9 14       lda #$14    ; PRG $13B0B
  $9B0D: 85 18       sta $18    ; PRG $13B0D
  $9B0F: 86 19       stx $19    ; PRG $13B0F
  $9B11: aa          tax    ; PRG $13B11
  $9B12: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $13B12
  $9B15: a9 64       lda #$64    ; PRG $13B15
  $9B17: 85 14       sta $14    ; PRG $13B17
  $9B19: 86 15       stx $15    ; PRG $13B19
  $9B1B: a2 10       ldx #$10    ; PRG $13B1B
  $9B1D: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $13B1D
  $9B20: 38          sec    ; PRG $13B20
  $9B21: a9 14       lda #$14    ; PRG $13B21
  $9B23: a0 f6       ldy #$f6    ; PRG $13B23
  $9B25: f1 06       sbc ($06),y    ; PRG $13B25
  $9B27: 85 10       sta $10    ; PRG $13B27
  $9B29: 8a          txa    ; PRG $13B29
  $9B2A: c8          iny    ; PRG $13B2A
  $9B2B: f1 06       sbc ($06),y    ; PRG $13B2B
  $9B2D: 85 11       sta $11    ; PRG $13B2D
  $9B2F: a2 0c       ldx #$0c    ; PRG $13B2F
  $9B31: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $13B31
  $9B34: a0 10       ldy #$10    ; PRG $13B34
  $9B36: a2 14       ldx #$14    ; PRG $13B36
  $9B38: a9 0c       lda #$0c    ; PRG $13B38
  $9B3A: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $13B3A
  $9B3D: a0 0c       ldy #$0c    ; PRG $13B3D
  $9B3F: a2 18       ldx #$18    ; PRG $13B3F
  $9B41: a9 14       lda #$14    ; PRG $13B41
  $9B43: 20 b4 e1    jsr $e1b4   ; alu_abs16    ; PRG $13B43
  $9B46: a0 14       ldy #$14    ; PRG $13B46
  $9B48: a2 08       ldx #$08    ; PRG $13B48
  $9B4A: a9 18       lda #$18    ; PRG $13B4A
  $9B4C: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $13B4C
  $9B4F: a2 0c       ldx #$0c    ; PRG $13B4F
  $9B51: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $13B51
  $9B54: a0 18       ldy #$18    ; PRG $13B54
  $9B56: a2 0c       ldx #$0c    ; PRG $13B56
  $9B58: a9 14       lda #$14    ; PRG $13B58
  $9B5A: 20 b4 e1    jsr $e1b4   ; alu_abs16    ; PRG $13B5A
  $9B5D: a2 10       ldx #$10    ; PRG $13B5D
  $9B5F: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $13B5F
  $9B62: a0 14       ldy #$14    ; PRG $13B62
  $9B64: a2 10       ldx #$10    ; PRG $13B64
  $9B66: a9 18       lda #$18    ; PRG $13B66
  $9B68: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $13B68
  $9B6B: a2 14       ldx #$14    ; PRG $13B6B
  $9B6D: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $13B6D
  $9B70: a0 18       ldy #$18    ; PRG $13B70
  $9B72: a2 14       ldx #$14    ; PRG $13B72
  $9B74: a9 10       lda #$10    ; PRG $13B74
  $9B76: 20 b4 e1    jsr $e1b4   ; alu_abs16    ; PRG $13B76
  $9B79: a2 18       ldx #$18    ; PRG $13B79
  $9B7B: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $13B7B
  $9B7E: a5 10       lda $10    ; PRG $13B7E
  $9B80: 91 18       sta ($18),y    ; PRG $13B80
  $9B82: a0 f8       ldy #$f8    ; PRG $13B82
  $9B84: b1 06       lda ($06),y    ; PRG $13B84
  $9B86: 85 18       sta $18    ; PRG $13B86
  $9B88: c8          iny    ; PRG $13B88
  $9B89: b1 06       lda ($06),y    ; PRG $13B89
  $9B8B: 85 19       sta $19    ; PRG $13B8B
  $9B8D: a2 18       ldx #$18    ; PRG $13B8D
  $9B8F: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $13B8F
  $9B92: 48          pha    ; PRG $13B92
  $9B93: a9 64       lda #$64    ; PRG $13B93
  $9B95: 48          pha    ; PRG $13B95
  $9B96: a9 02       lda #$02    ; PRG $13B96
  $9B98: 85 18       sta $18    ; PRG $13B98
  $9B9A: 86 19       stx $19    ; PRG $13B9A
  $9B9C: 18          clc    ; PRG $13B9C
  $9B9D: a9 03       lda #$03    ; PRG $13B9D
  $9B9F: a0 f0       ldy #$f0    ; PRG $13B9F
  $9BA1: 71 06       adc ($06),y    ; PRG $13BA1
  $9BA3: 85 14       sta $14    ; PRG $13BA3
  $9BA5: 8a          txa    ; PRG $13BA5
  $9BA6: c8          iny    ; PRG $13BA6
  $9BA7: 71 06       adc ($06),y    ; PRG $13BA7
  $9BA9: 85 15       sta $15    ; PRG $13BA9
  $9BAB: a9 0a       lda #$0a    ; PRG $13BAB
  $9BAD: 85 10       sta $10    ; PRG $13BAD
  $9BAF: 86 11       stx $11    ; PRG $13BAF
  $9BB1: 38          sec    ; PRG $13BB1
  $9BB2: a0 f6       ldy #$f6    ; PRG $13BB2
  $9BB4: f1 06       sbc ($06),y    ; PRG $13BB4
  $9BB6: 85 0c       sta $0c    ; PRG $13BB6
  $9BB8: 8a          txa    ; PRG $13BB8
  $9BB9: c8          iny    ; PRG $13BB9
  $9BBA: f1 06       sbc ($06),y    ; PRG $13BBA
  $9BBC: 85 0d       sta $0d    ; PRG $13BBC
  $9BBE: a9 0a       lda #$0a    ; PRG $13BBE
  $9BC0: 85 08       sta $08    ; PRG $13BC0
  $9BC2: 86 09       stx $09    ; PRG $13BC2
  $9BC4: a2 18       ldx #$18    ; PRG $13BC4
  $9BC6: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $13BC6
  $9BC9: a0 f2       ldy #$f2    ; PRG $13BC9
  $9BCB: b1 06       lda ($06),y    ; PRG $13BCB
  $9BCD: 85 18       sta $18    ; PRG $13BCD
  $9BCF: c8          iny    ; PRG $13BCF
  $9BD0: b1 06       lda ($06),y    ; PRG $13BD0
  $9BD2: 85 19       sta $19    ; PRG $13BD2
  $9BD4: a2 14       ldx #$14    ; PRG $13BD4
  $9BD6: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $13BD6
  $9BD9: a0 18       ldy #$18    ; PRG $13BD9
  $9BDB: a2 08       ldx #$08    ; PRG $13BDB
  $9BDD: a9 14       lda #$14    ; PRG $13BDD
  $9BDF: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $13BDF
  $9BE2: 18          clc    ; PRG $13BE2
  $9BE3: a9 64       lda #$64    ; PRG $13BE3
  $9BE5: 65 14       adc $14    ; PRG $13BE5
  $9BE7: 85 18       sta $18    ; PRG $13BE7
  $9BE9: 8a          txa    ; PRG $13BE9
  $9BEA: 65 15       adc $15    ; PRG $13BEA
  $9BEC: 85 19       sta $19    ; PRG $13BEC
  $9BEE: a0 18       ldy #$18    ; PRG $13BEE
  $9BF0: a2 0c       ldx #$0c    ; PRG $13BF0
  $9BF2: a9 14       lda #$14    ; PRG $13BF2
  $9BF4: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $13BF4
  $9BF7: a0 14       ldy #$14    ; PRG $13BF7
  $9BF9: a2 10       ldx #$10    ; PRG $13BF9
  $9BFB: a9 18       lda #$18    ; PRG $13BFB
  $9BFD: 20 d9 e1    jsr $e1d9   ; alu_div_push_remainder    ; PRG $13BFD
  $9C00: a2 14       ldx #$14    ; PRG $13C00
  $9C02: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $13C02
  $9C05: a0 18       ldy #$18    ; PRG $13C05
  $9C07: a2 14       ldx #$14    ; PRG $13C07
  $9C09: a9 10       lda #$10    ; PRG $13C09
  $9C0B: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $13C0B
  $9C0E: a2 18       ldx #$18    ; PRG $13C0E
  $9C10: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $13C10
  $9C13: a0 10       ldy #$10    ; PRG $13C13
  $9C15: a2 18       ldx #$18    ; PRG $13C15
  $9C17: a9 14       lda #$14    ; PRG $13C17
  $9C19: 20 15 e4    jsr $e415   ; alu_shr16_n    ; PRG $13C19
  $9C1C: a5 15       lda $15    ; PRG $13C1C
  $9C1E: 48          pha    ; PRG $13C1E
  $9C1F: a5 14       lda $14    ; PRG $13C1F
  $9C21: 48          pha    ; PRG $13C21
  $9C22: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $13C22
  $9C25: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $13C25
  $9C28: a2 18       ldx #$18    ; PRG $13C28
  $9C2A: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $13C2A
  $9C2D: a5 08       lda $08    ; PRG $13C2D
  $9C2F: c8          iny    ; PRG $13C2F
  $9C30: 91 18       sta ($18),y    ; PRG $13C30
  $9C32: 18          clc    ; PRG $13C32
  $9C33: a9 0f       lda #$0f    ; PRG $13C33
  $9C35: a0 fa       ldy #$fa    ; PRG $13C35
  $9C37: 71 06       adc ($06),y    ; PRG $13C37
  $9C39: 85 18       sta $18    ; PRG $13C39
  $9C3B: 8a          txa    ; PRG $13C3B
  $9C3C: c8          iny    ; PRG $13C3C
  $9C3D: 71 06       adc ($06),y    ; PRG $13C3D
  $9C3F: 85 19       sta $19    ; PRG $13C3F
  $9C41: a5 19       lda $19    ; PRG $13C41
  $9C43: 48          pha    ; PRG $13C43
  $9C44: a5 18       lda $18    ; PRG $13C44
  $9C46: 48          pha    ; PRG $13C46
  $9C47: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $13C47
  $9C4A: 26 d3 04    .db $26 $d3 $04  -> vm $D326 argc 4    ; PRG $13C4A
  $9C4D: a5 08       lda $08    ; PRG $13C4D
  $9C4F: a0 e8       ldy #$e8    ; PRG $13C4F
  $9C51: 91 06       sta ($06),y    ; PRG $13C51
  $9C53: a5 09       lda $09    ; PRG $13C53
  $9C55: c8          iny    ; PRG $13C55
  $9C56: 91 06       sta ($06),y    ; PRG $13C56
  $9C58: a0 fc       ldy #$fc    ; PRG $13C58
  $9C5A: b1 06       lda ($06),y    ; PRG $13C5A
  $9C5C: 85 18       sta $18    ; PRG $13C5C
  $9C5E: c8          iny    ; PRG $13C5E
  $9C5F: b1 06       lda ($06),y    ; PRG $13C5F
  $9C61: 85 19       sta $19    ; PRG $13C61
  $9C63: a9 64       lda #$64    ; PRG $13C63
  $9C65: a0 09       ldy #$09    ; PRG $13C65
  $9C67: d1 18       cmp ($18),y    ; PRG $13C67
  $9C69: 8a          txa    ; PRG $13C69
  $9C6A: c8          iny    ; PRG $13C6A
  $9C6B: f1 18       sbc ($18),y    ; PRG $13C6B
  $9C6D: 90 03       bcc $9c72    ; PRG $13C6D
  $9C6F: 4c 3d 9d    jmp $9d3d    ; PRG $13C6F
  $9C72: a0 f8       ldy #$f8    ; PRG $13C72
  $9C74: b1 06       lda ($06),y    ; PRG $13C74
  $9C76: 85 18       sta $18    ; PRG $13C76
  $9C78: c8          iny    ; PRG $13C78
  $9C79: b1 06       lda ($06),y    ; PRG $13C79
  $9C7B: 85 19       sta $19    ; PRG $13C7B
  $9C7D: a0 04       ldy #$04    ; PRG $13C7D
  $9C7F: b1 18       lda ($18),y    ; PRG $13C7F
  $9C81: a0 e8       ldy #$e8    ; PRG $13C81
  $9C83: d1 06       cmp ($06),y    ; PRG $13C83
  $9C85: a0 05       ldy #$05    ; PRG $13C85
  $9C87: b1 18       lda ($18),y    ; PRG $13C87
  $9C89: a0 e9       ldy #$e9    ; PRG $13C89
  $9C8B: f1 06       sbc ($06),y    ; PRG $13C8B
  $9C8D: 90 03       bcc $9c92    ; PRG $13C8D
  $9C8F: 4c 3d 9d    jmp $9d3d    ; PRG $13C8F
  $9C92: a0 fc       ldy #$fc    ; PRG $13C92
  $9C94: b1 06       lda ($06),y    ; PRG $13C94
  $9C96: 85 18       sta $18    ; PRG $13C96
  $9C98: c8          iny    ; PRG $13C98
  $9C99: b1 06       lda ($06),y    ; PRG $13C99
  $9C9B: 85 19       sta $19    ; PRG $13C9B
  $9C9D: a2 18       ldx #$18    ; PRG $13C9D
  $9C9F: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $13C9F
  $9CA2: 48          pha    ; PRG $13CA2
  $9CA3: a9 0a       lda #$0a    ; PRG $13CA3
  $9CA5: 48          pha    ; PRG $13CA5
  $9CA6: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $13CA6
  $9CA9: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $13CA9
  $9CAC: 18          clc    ; PRG $13CAC
  $9CAD: a9 5a       lda #$5a    ; PRG $13CAD
  $9CAF: 65 08       adc $08    ; PRG $13CAF
  $9CB1: 85 18       sta $18    ; PRG $13CB1
  $9CB3: 8a          txa    ; PRG $13CB3
  $9CB4: 65 09       adc $09    ; PRG $13CB4
  $9CB6: 85 19       sta $19    ; PRG $13CB6
  $9CB8: a2 14       ldx #$14    ; PRG $13CB8
  $9CBA: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $13CBA
  $9CBD: 38          sec    ; PRG $13CBD
  $9CBE: a0 09       ldy #$09    ; PRG $13CBE
  $9CC0: b1 14       lda ($14),y    ; PRG $13CC0
  $9CC2: e5 18       sbc $18    ; PRG $13CC2
  $9CC4: 91 14       sta ($14),y    ; PRG $13CC4
  $9CC6: c8          iny    ; PRG $13CC6
  $9CC7: b1 14       lda ($14),y    ; PRG $13CC7
  $9CC9: e5 19       sbc $19    ; PRG $13CC9
  $9CCB: 91 14       sta ($14),y    ; PRG $13CCB
  $9CCD: a0 f8       ldy #$f8    ; PRG $13CCD
  $9CCF: b1 06       lda ($06),y    ; PRG $13CCF
  $9CD1: 85 18       sta $18    ; PRG $13CD1
  $9CD3: c8          iny    ; PRG $13CD3
  $9CD4: b1 06       lda ($06),y    ; PRG $13CD4
  $9CD6: 85 19       sta $19    ; PRG $13CD6
  $9CD8: a2 18       ldx #$18    ; PRG $13CD8
  $9CDA: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $13CDA
  $9CDD: a0 e9       ldy #$e9    ; PRG $13CDD
  $9CDF: b1 06       lda ($06),y    ; PRG $13CDF
  $9CE1: 48          pha    ; PRG $13CE1
  $9CE2: 88          dey    ; PRG $13CE2
  $9CE3: b1 06       lda ($06),y    ; PRG $13CE3
  $9CE5: 48          pha    ; PRG $13CE5
  $9CE6: a0 f8       ldy #$f8    ; PRG $13CE6
  $9CE8: b1 06       lda ($06),y    ; PRG $13CE8
  $9CEA: 85 18       sta $18    ; PRG $13CEA
  $9CEC: c8          iny    ; PRG $13CEC
  $9CED: b1 06       lda ($06),y    ; PRG $13CED
  $9CEF: 85 19       sta $19    ; PRG $13CEF
  $9CF1: a2 18       ldx #$18    ; PRG $13CF1
  $9CF3: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $13CF3
  $9CF6: 48          pha    ; PRG $13CF6
  $9CF7: a9 0a       lda #$0a    ; PRG $13CF7
  $9CF9: 48          pha    ; PRG $13CF9
  $9CFA: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $13CFA
  $9CFD: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $13CFD
  $9D00: a2 18       ldx #$18    ; PRG $13D00
  $9D02: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $13D02
  $9D05: 18          clc    ; PRG $13D05
  $9D06: a5 08       lda $08    ; PRG $13D06
  $9D08: a0 04       ldy #$04    ; PRG $13D08
  $9D0A: 71 18       adc ($18),y    ; PRG $13D0A
  $9D0C: 85 14       sta $14    ; PRG $13D0C
  $9D0E: a5 09       lda $09    ; PRG $13D0E
  $9D10: c8          iny    ; PRG $13D10
  $9D11: 71 18       adc ($18),y    ; PRG $13D11
  $9D13: 85 15       sta $15    ; PRG $13D13
  $9D15: 18          clc    ; PRG $13D15
  $9D16: a9 14       lda #$14    ; PRG $13D16
  $9D18: 65 14       adc $14    ; PRG $13D18
  $9D1A: 85 18       sta $18    ; PRG $13D1A
  $9D1C: 8a          txa    ; PRG $13D1C
  $9D1D: 65 15       adc $15    ; PRG $13D1D
  $9D1F: 85 19       sta $19    ; PRG $13D1F
  $9D21: a5 19       lda $19    ; PRG $13D21
  $9D23: 48          pha    ; PRG $13D23
  $9D24: a5 18       lda $18    ; PRG $13D24
  $9D26: 48          pha    ; PRG $13D26
  $9D27: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $13D27
  $9D2A: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $13D2A
  $9D2D: a2 18       ldx #$18    ; PRG $13D2D
  $9D2F: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $13D2F
  $9D32: a5 08       lda $08    ; PRG $13D32
  $9D34: a0 04       ldy #$04    ; PRG $13D34
  $9D36: 91 18       sta ($18),y    ; PRG $13D36
  $9D38: a5 09       lda $09    ; PRG $13D38
  $9D3A: c8          iny    ; PRG $13D3A
  $9D3B: 91 18       sta ($18),y    ; PRG $13D3B
  $9D3D: 60          rts    ; PRG $13D3D

; ---- sub_9_1d44  [stub]  <- (entry: bytecode/OS via $E299)
nat_9_1d3e: jsr $E299                    ; 9:9D3E  native-call prologue
            .db $00 $f5 $ff            ; inline: argcount $00, frame $fff5
  $9D44: 18          clc    ; PRG $13D44
  $9D45: a9 fb       lda #$fb    ; PRG $13D45
  $9D47: 65 06       adc $06    ; PRG $13D47
  $9D49: 85 18       sta $18    ; PRG $13D49
  $9D4B: 8a          txa    ; PRG $13D4B
  $9D4C: 65 07       adc $07    ; PRG $13D4C
  $9D4E: 85 19       sta $19    ; PRG $13D4E
  $9D50: a5 19       lda $19    ; PRG $13D50
  $9D52: 48          pha    ; PRG $13D52
  $9D53: a5 18       lda $18    ; PRG $13D53
  $9D55: 48          pha    ; PRG $13D55
  $9D56: a0 0c       ldy #$0c    ; PRG $13D56
  $9D58: b1 04       lda ($04),y    ; PRG $13D58
  $9D5A: 48          pha    ; PRG $13D5A
  $9D5B: 88          dey    ; PRG $13D5B
  $9D5C: b1 04       lda ($04),y    ; PRG $13D5C
  $9D5E: 48          pha    ; PRG $13D5E
  $9D5F: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $13D5F
  $9D62: 26 d0 06    .db $26 $d0 $06  -> vm $D026 argc 6    ; PRG $13D62
  $9D65: a5 08       lda $08    ; PRG $13D65
  $9D67: a0 f5       ldy #$f5    ; PRG $13D67
  $9D69: 91 06       sta ($06),y    ; PRG $13D69
  $9D6B: a5 09       lda $09    ; PRG $13D6B
  $9D6D: c8          iny    ; PRG $13D6D
  $9D6E: 91 06       sta ($06),y    ; PRG $13D6E
  $9D70: 18          clc    ; PRG $13D70
  $9D71: a9 fb       lda #$fb    ; PRG $13D71
  $9D73: 65 06       adc $06    ; PRG $13D73
  $9D75: 85 18       sta $18    ; PRG $13D75
  $9D77: 8a          txa    ; PRG $13D77
  $9D78: 65 07       adc $07    ; PRG $13D78
  $9D7A: 85 19       sta $19    ; PRG $13D7A
  $9D7C: a5 18       lda $18    ; PRG $13D7C
  $9D7E: a0 f9       ldy #$f9    ; PRG $13D7E
  $9D80: 91 06       sta ($06),y    ; PRG $13D80
  $9D82: a5 19       lda $19    ; PRG $13D82
  $9D84: c8          iny    ; PRG $13D84
  $9D85: 91 06       sta ($06),y    ; PRG $13D85
  $9D87: 18          clc    ; PRG $13D87
  $9D88: a5 18       lda $18    ; PRG $13D88
  $9D8A: a0 f5       ldy #$f5    ; PRG $13D8A
  $9D8C: 71 06       adc ($06),y    ; PRG $13D8C
  $9D8E: a0 f7       ldy #$f7    ; PRG $13D8E
  $9D90: 91 06       sta ($06),y    ; PRG $13D90
  $9D92: a5 19       lda $19    ; PRG $13D92
  $9D94: 88          dey    ; PRG $13D94
  $9D95: 71 06       adc ($06),y    ; PRG $13D95
  $9D97: a0 f8       ldy #$f8    ; PRG $13D97
  $9D99: 91 06       sta ($06),y    ; PRG $13D99
  $9D9B: 4c ad 9d    jmp $9dad    ; PRG $13D9B
  $9D9E: 18          clc    ; PRG $13D9E
  $9D9F: a9 01       lda #$01    ; PRG $13D9F
  $9DA1: a0 f9       ldy #$f9    ; PRG $13DA1
  $9DA3: 71 06       adc ($06),y    ; PRG $13DA3
  $9DA5: 91 06       sta ($06),y    ; PRG $13DA5
  $9DA7: 8a          txa    ; PRG $13DA7
  $9DA8: c8          iny    ; PRG $13DA8
  $9DA9: 71 06       adc ($06),y    ; PRG $13DA9
  $9DAB: 91 06       sta ($06),y    ; PRG $13DAB
  $9DAD: a0 f9       ldy #$f9    ; PRG $13DAD
  $9DAF: b1 06       lda ($06),y    ; PRG $13DAF
  $9DB1: a0 f7       ldy #$f7    ; PRG $13DB1
  $9DB3: d1 06       cmp ($06),y    ; PRG $13DB3
  $9DB5: a0 fa       ldy #$fa    ; PRG $13DB5
  $9DB7: b1 06       lda ($06),y    ; PRG $13DB7
  $9DB9: a0 f8       ldy #$f8    ; PRG $13DB9
  $9DBB: f1 06       sbc ($06),y    ; PRG $13DBB
  $9DBD: 90 03       bcc $9dc2    ; PRG $13DBD
  $9DBF: 4c ea 9d    jmp $9dea    ; PRG $13DBF
  $9DC2: c8          iny    ; PRG $13DC2
  $9DC3: b1 06       lda ($06),y    ; PRG $13DC3
  $9DC5: 85 18       sta $18    ; PRG $13DC5
  $9DC7: c8          iny    ; PRG $13DC7
  $9DC8: b1 06       lda ($06),y    ; PRG $13DC8
  $9DCA: 85 19       sta $19    ; PRG $13DCA
  $9DCC: a1 18       lda ($18,x)    ; PRG $13DCC
  $9DCE: 85 14       sta $14    ; PRG $13DCE
  $9DD0: 86 15       stx $15    ; PRG $13DD0
  $9DD2: a5 15       lda $15    ; PRG $13DD2
  $9DD4: 48          pha    ; PRG $13DD4
  $9DD5: a5 14       lda $14    ; PRG $13DD5
  $9DD7: 48          pha    ; PRG $13DD7
  $9DD8: a0 0c       ldy #$0c    ; PRG $13DD8
  $9DDA: b1 04       lda ($04),y    ; PRG $13DDA
  $9DDC: 48          pha    ; PRG $13DDC
  $9DDD: 88          dey    ; PRG $13DDD
  $9DDE: b1 04       lda ($04),y    ; PRG $13DDE
  $9DE0: 48          pha    ; PRG $13DE0
  $9DE1: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $13DE1
  $9DE4: 40 96 06    .db $40 $96 $06  -> vm $9640 argc 6    ; PRG $13DE4
  $9DE7: 4c 9e 9d    jmp $9d9e    ; PRG $13DE7
  $9DEA: a0 f5       ldy #$f5    ; PRG $13DEA
  $9DEC: b1 06       lda ($06),y    ; PRG $13DEC
  $9DEE: c9 03       cmp #$03    ; PRG $13DEE
  $9DF0: c8          iny    ; PRG $13DF0
  $9DF1: b1 06       lda ($06),y    ; PRG $13DF1
  $9DF3: e9 00       sbc #$00    ; PRG $13DF3
  $9DF5: b0 03       bcs $9dfa    ; PRG $13DF5
  $9DF7: 4c 2e 9e    jmp $9e2e    ; PRG $13DF7
  $9DFA: a9 04       lda #$04    ; PRG $13DFA
  $9DFC: 85 18       sta $18    ; PRG $13DFC
  $9DFE: 86 19       stx $19    ; PRG $13DFE
  $9E00: a0 0b       ldy #$0b    ; PRG $13E00
  $9E02: b1 04       lda ($04),y    ; PRG $13E02
  $9E04: 85 14       sta $14    ; PRG $13E04
  $9E06: c8          iny    ; PRG $13E06
  $9E07: b1 04       lda ($04),y    ; PRG $13E07
  $9E09: 85 15       sta $15    ; PRG $13E09
  $9E0B: a0 14       ldy #$14    ; PRG $13E0B
  $9E0D: a2 18       ldx #$18    ; PRG $13E0D
  $9E0F: a9 10       lda #$10    ; PRG $13E0F
  $9E11: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $13E11
  $9E14: 18          clc    ; PRG $13E14
  $9E15: a5 10       lda $10    ; PRG $13E15
  $9E17: 69 6b       adc #$6b    ; PRG $13E17
  $9E19: 85 18       sta $18    ; PRG $13E19
  $9E1B: a5 11       lda $11    ; PRG $13E1B
  $9E1D: 69 66       adc #$66    ; PRG $13E1D
  $9E1F: 85 19       sta $19    ; PRG $13E1F
  $9E21: a1 18       lda ($18,x)    ; PRG $13E21
  $9E23: c9 e8       cmp #$e8    ; PRG $13E23
  $9E25: b1 18       lda ($18),y    ; PRG $13E25
  $9E27: e9 03       sbc #$03    ; PRG $13E27
  $9E29: 90 03       bcc $9e2e    ; PRG $13E29
  $9E2B: 4c 40 9e    jmp $9e40    ; PRG $13E2B
  $9E2E: a0 0c       ldy #$0c    ; PRG $13E2E
  $9E30: b1 04       lda ($04),y    ; PRG $13E30
  $9E32: 48          pha    ; PRG $13E32
  $9E33: 88          dey    ; PRG $13E33
  $9E34: b1 04       lda ($04),y    ; PRG $13E34
  $9E36: 48          pha    ; PRG $13E36
  $9E37: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $13E37
  $9E3A: 4b db 04    .db $4b $db $04  -> vm $DB4B argc 4    ; PRG $13E3A
  $9E3D: 4c 5f 9e    jmp $9e5f    ; PRG $13E3D
  $9E40: a0 0c       ldy #$0c    ; PRG $13E40
  $9E42: b1 04       lda ($04),y    ; PRG $13E42
  $9E44: 48          pha    ; PRG $13E44
  $9E45: 88          dey    ; PRG $13E45
  $9E46: b1 04       lda ($04),y    ; PRG $13E46
  $9E48: 48          pha    ; PRG $13E48
  $9E49: a9 91       lda #$91    ; PRG $13E49
  $9E4B: 48          pha    ; PRG $13E4B
  $9E4C: a9 04       lda #$04    ; PRG $13E4C
  $9E4E: 48          pha    ; PRG $13E4E
  $9E4F: 8a          txa    ; PRG $13E4F
  $9E50: 48          pha    ; PRG $13E50
  $9E51: a9 ca       lda #$ca    ; PRG $13E51
  $9E53: 48          pha    ; PRG $13E53
  $9E54: 8a          txa    ; PRG $13E54
  $9E55: 48          pha    ; PRG $13E55
  $9E56: a9 01       lda #$01    ; PRG $13E56
  $9E58: 48          pha    ; PRG $13E58
  $9E59: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $13E59
  $9E5C: 3a de 0a    .db $3a $de $0a  -> vm $DE3A argc 10    ; PRG $13E5C
  $9E5F: 60          rts    ; PRG $13E5F
