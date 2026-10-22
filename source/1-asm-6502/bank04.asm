; ============================================================================
; Uncharted Waters - bank 4 NATIVE disassembly (window base $8000)
; 24 native subs: 23 $E299-stubbed (VM-frame entries) + 0 plain + 1 jumptable/CALL-recovered
; coverage: 6413B code+inline (78%) + 1285B $FF-pad + 494B data
; control-flow-followed, inline bridges ($E299/$E338) skipped; calls resolved vs mesen-labels.toml.
; ============================================================================
.base $8000

; ---- sub_4_0009  [stub]  <- (entry: bytecode/OS via $E299)
nat_4_0003: jsr $E299                    ; 4:8003  native-call prologue
            .db $00 $fe $ff            ; inline: argcount $00, frame $fffe
  $8009: a9 31       lda #$31    ; PRG $08009
  $800B: 85 18       sta $18    ; PRG $0800B
  $800D: 86 19       stx $19    ; PRG $0800D
  $800F: a0 0b       ldy #$0b    ; PRG $0800F
  $8011: b1 04       lda ($04),y    ; PRG $08011
  $8013: 85 14       sta $14    ; PRG $08013
  $8015: c8          iny    ; PRG $08015
  $8016: b1 04       lda ($04),y    ; PRG $08016
  $8018: 85 15       sta $15    ; PRG $08018
  $801A: a0 14       ldy #$14    ; PRG $0801A
  $801C: a2 18       ldx #$18    ; PRG $0801C
  $801E: a9 10       lda #$10    ; PRG $0801E
  $8020: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $08020
  $8023: 18          clc    ; PRG $08023
  $8024: a5 10       lda $10    ; PRG $08024
  $8026: 69 90       adc #$90    ; PRG $08026
  $8028: a0 fe       ldy #$fe    ; PRG $08028
  $802A: 91 06       sta ($06),y    ; PRG $0802A
  $802C: a5 11       lda $11    ; PRG $0802C
  $802E: 69 73       adc #$73    ; PRG $0802E
  $8030: c8          iny    ; PRG $08030
  $8031: 91 06       sta ($06),y    ; PRG $08031
  $8033: a9 07       lda #$07    ; PRG $08033
  $8035: 85 18       sta $18    ; PRG $08035
  $8037: 86 19       stx $19    ; PRG $08037
  $8039: a0 0f       ldy #$0f    ; PRG $08039
  $803B: b1 04       lda ($04),y    ; PRG $0803B
  $803D: 85 14       sta $14    ; PRG $0803D
  $803F: c8          iny    ; PRG $0803F
  $8040: b1 04       lda ($04),y    ; PRG $08040
  $8042: 85 15       sta $15    ; PRG $08042
  $8044: a0 14       ldy #$14    ; PRG $08044
  $8046: a2 18       ldx #$18    ; PRG $08046
  $8048: a9 10       lda #$10    ; PRG $08048
  $804A: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0804A
  $804D: 18          clc    ; PRG $0804D
  $804E: a5 10       lda $10    ; PRG $0804E
  $8050: a0 fe       ldy #$fe    ; PRG $08050
  $8052: 71 06       adc ($06),y    ; PRG $08052
  $8054: 85 18       sta $18    ; PRG $08054
  $8056: a5 11       lda $11    ; PRG $08056
  $8058: c8          iny    ; PRG $08058
  $8059: 71 06       adc ($06),y    ; PRG $08059
  $805B: 85 19       sta $19    ; PRG $0805B
  $805D: 18          clc    ; PRG $0805D
  $805E: a5 18       lda $18    ; PRG $0805E
  $8060: a0 0d       ldy #$0d    ; PRG $08060
  $8062: 71 04       adc ($04),y    ; PRG $08062
  $8064: 85 14       sta $14    ; PRG $08064
  $8066: a5 19       lda $19    ; PRG $08066
  $8068: c8          iny    ; PRG $08068
  $8069: 71 04       adc ($04),y    ; PRG $08069
  $806B: 85 15       sta $15    ; PRG $0806B
  $806D: a1 14       lda ($14,x)    ; PRG $0806D
  $806F: 85 08       sta $08    ; PRG $0806F
  $8071: 86 09       stx $09    ; PRG $08071
  $8073: 60          rts    ; PRG $08073

; ---- sub_4_007a  [stub]  <- (entry: bytecode/OS via $E299)
nat_4_0074: jsr $E299                    ; 4:8074  native-call prologue
            .db $00 $fe $ff            ; inline: argcount $00, frame $fffe
  $807A: a0 10       ldy #$10    ; PRG $0807A
  $807C: b1 04       lda ($04),y    ; PRG $0807C
  $807E: 48          pha    ; PRG $0807E
  $807F: 88          dey    ; PRG $0807F
  $8080: b1 04       lda ($04),y    ; PRG $08080
  $8082: 48          pha    ; PRG $08082
  $8083: 88          dey    ; PRG $08083
  $8084: b1 04       lda ($04),y    ; PRG $08084
  $8086: 48          pha    ; PRG $08086
  $8087: 88          dey    ; PRG $08087
  $8088: b1 04       lda ($04),y    ; PRG $08088
  $808A: 48          pha    ; PRG $0808A
  $808B: 88          dey    ; PRG $0808B
  $808C: b1 04       lda ($04),y    ; PRG $0808C
  $808E: 48          pha    ; PRG $0808E
  $808F: 88          dey    ; PRG $0808F
  $8090: b1 04       lda ($04),y    ; PRG $08090
  $8092: 48          pha    ; PRG $08092
  $8093: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $08093
  $8096: 03 80 08    .db $03 $80 $08  -> vm $8003 argc 8    ; PRG $08096
  $8099: a5 08       lda $08    ; PRG $08099
  $809B: a0 fe       ldy #$fe    ; PRG $0809B
  $809D: 91 06       sta ($06),y    ; PRG $0809D
  $809F: a5 09       lda $09    ; PRG $0809F
  $80A1: c8          iny    ; PRG $080A1
  $80A2: 91 06       sta ($06),y    ; PRG $080A2
  $80A4: a9 04       lda #$04    ; PRG $080A4
  $80A6: 88          dey    ; PRG $080A6
  $80A7: d1 06       cmp ($06),y    ; PRG $080A7
  $80A9: 8a          txa    ; PRG $080A9
  $80AA: c8          iny    ; PRG $080AA
  $80AB: f1 06       sbc ($06),y    ; PRG $080AB
  $80AD: 90 03       bcc $80b2    ; PRG $080AD
  $80AF: 4c c1 80    jmp $80c1    ; PRG $080AF
  $80B2: 88          dey    ; PRG $080B2
  $80B3: b1 06       lda ($06),y    ; PRG $080B3
  $80B5: c9 11       cmp #$11    ; PRG $080B5
  $80B7: c8          iny    ; PRG $080B7
  $80B8: b1 06       lda ($06),y    ; PRG $080B8
  $80BA: e9 00       sbc #$00    ; PRG $080BA
  $80BC: b0 03       bcs $80c1    ; PRG $080BC
  $80BE: 4c fd 80    jmp $80fd    ; PRG $080BE
  $80C1: a9 14       lda #$14    ; PRG $080C1
  $80C3: a0 fe       ldy #$fe    ; PRG $080C3
  $80C5: d1 06       cmp ($06),y    ; PRG $080C5
  $80C7: 8a          txa    ; PRG $080C7
  $80C8: c8          iny    ; PRG $080C8
  $80C9: f1 06       sbc ($06),y    ; PRG $080C9
  $80CB: 90 03       bcc $80d0    ; PRG $080CB
  $80CD: 4c df 80    jmp $80df    ; PRG $080CD
  $80D0: 88          dey    ; PRG $080D0
  $80D1: b1 06       lda ($06),y    ; PRG $080D1
  $80D3: c9 19       cmp #$19    ; PRG $080D3
  $80D5: c8          iny    ; PRG $080D5
  $80D6: b1 06       lda ($06),y    ; PRG $080D6
  $80D8: e9 00       sbc #$00    ; PRG $080D8
  $80DA: b0 03       bcs $80df    ; PRG $080DA
  $80DC: 4c fd 80    jmp $80fd    ; PRG $080DC
  $80DF: a9 1c       lda #$1c    ; PRG $080DF
  $80E1: a0 fe       ldy #$fe    ; PRG $080E1
  $80E3: d1 06       cmp ($06),y    ; PRG $080E3
  $80E5: 8a          txa    ; PRG $080E5
  $80E6: c8          iny    ; PRG $080E6
  $80E7: f1 06       sbc ($06),y    ; PRG $080E7
  $80E9: 90 03       bcc $80ee    ; PRG $080E9
  $80EB: 4c 06 81    jmp $8106    ; PRG $080EB
  $80EE: 88          dey    ; PRG $080EE
  $80EF: b1 06       lda ($06),y    ; PRG $080EF
  $80F1: c9 29       cmp #$29    ; PRG $080F1
  $80F3: c8          iny    ; PRG $080F3
  $80F4: b1 06       lda ($06),y    ; PRG $080F4
  $80F6: e9 00       sbc #$00    ; PRG $080F6
  $80F8: 90 03       bcc $80fd    ; PRG $080F8
  $80FA: 4c 06 81    jmp $8106    ; PRG $080FA
  $80FD: a9 01       lda #$01    ; PRG $080FD
  $80FF: 85 08       sta $08    ; PRG $080FF
  $8101: 86 09       stx $09    ; PRG $08101
  $8103: 4c 0a 81    jmp $810a    ; PRG $08103
  $8106: 86 08       stx $08    ; PRG $08106
  $8108: 86 09       stx $09    ; PRG $08108
  $810A: 60          rts    ; PRG $0810A

; ---- sub_4_0111  [stub]  <- (entry: bytecode/OS via $E299)
nat_4_010b: jsr $E299                    ; 4:810B  native-call prologue
            .db $00 $fc $ff            ; inline: argcount $00, frame $fffc
  $8111: a0 fc       ldy #$fc    ; PRG $08111
  $8113: 91 06       sta ($06),y    ; PRG $08113
  $8115: c8          iny    ; PRG $08115
  $8116: 91 06       sta ($06),y    ; PRG $08116
  $8118: 4c 2a 81    jmp $812a    ; PRG $08118
  $811B: 18          clc    ; PRG $0811B
  $811C: a9 01       lda #$01    ; PRG $0811C
  $811E: a0 fc       ldy #$fc    ; PRG $0811E
  $8120: 71 06       adc ($06),y    ; PRG $08120
  $8122: 91 06       sta ($06),y    ; PRG $08122
  $8124: 8a          txa    ; PRG $08124
  $8125: c8          iny    ; PRG $08125
  $8126: 71 06       adc ($06),y    ; PRG $08126
  $8128: 91 06       sta ($06),y    ; PRG $08128
  $812A: a0 fc       ldy #$fc    ; PRG $0812A
  $812C: b1 06       lda ($06),y    ; PRG $0812C
  $812E: c9 07       cmp #$07    ; PRG $0812E
  $8130: c8          iny    ; PRG $08130
  $8131: b1 06       lda ($06),y    ; PRG $08131
  $8133: e9 00       sbc #$00    ; PRG $08133
  $8135: 90 03       bcc $813a    ; PRG $08135
  $8137: 4c 98 81    jmp $8198    ; PRG $08137
  $813A: 8a          txa    ; PRG $0813A
  $813B: c8          iny    ; PRG $0813B
  $813C: 91 06       sta ($06),y    ; PRG $0813C
  $813E: c8          iny    ; PRG $0813E
  $813F: 91 06       sta ($06),y    ; PRG $0813F
  $8141: 4c 53 81    jmp $8153    ; PRG $08141
  $8144: 18          clc    ; PRG $08144
  $8145: a9 01       lda #$01    ; PRG $08145
  $8147: a0 fe       ldy #$fe    ; PRG $08147
  $8149: 71 06       adc ($06),y    ; PRG $08149
  $814B: 91 06       sta ($06),y    ; PRG $0814B
  $814D: 8a          txa    ; PRG $0814D
  $814E: c8          iny    ; PRG $0814E
  $814F: 71 06       adc ($06),y    ; PRG $0814F
  $8151: 91 06       sta ($06),y    ; PRG $08151
  $8153: a0 fe       ldy #$fe    ; PRG $08153
  $8155: b1 06       lda ($06),y    ; PRG $08155
  $8157: c9 07       cmp #$07    ; PRG $08157
  $8159: c8          iny    ; PRG $08159
  $815A: b1 06       lda ($06),y    ; PRG $0815A
  $815C: e9 00       sbc #$00    ; PRG $0815C
  $815E: 90 03       bcc $8163    ; PRG $0815E
  $8160: 4c 95 81    jmp $8195    ; PRG $08160
  $8163: a0 fd       ldy #$fd    ; PRG $08163
  $8165: b1 06       lda ($06),y    ; PRG $08165
  $8167: 48          pha    ; PRG $08167
  $8168: 88          dey    ; PRG $08168
  $8169: b1 06       lda ($06),y    ; PRG $08169
  $816B: 48          pha    ; PRG $0816B
  $816C: a0 ff       ldy #$ff    ; PRG $0816C
  $816E: b1 06       lda ($06),y    ; PRG $0816E
  $8170: 48          pha    ; PRG $08170
  $8171: 88          dey    ; PRG $08171
  $8172: b1 06       lda ($06),y    ; PRG $08172
  $8174: 48          pha    ; PRG $08174
  $8175: a0 0c       ldy #$0c    ; PRG $08175
  $8177: b1 04       lda ($04),y    ; PRG $08177
  $8179: 48          pha    ; PRG $08179
  $817A: 88          dey    ; PRG $0817A
  $817B: b1 04       lda ($04),y    ; PRG $0817B
  $817D: 48          pha    ; PRG $0817D
  $817E: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0817E
  $8181: 74 80 08    .db $74 $80 $08  -> vm $8074 argc 8    ; PRG $08181
  $8184: a5 08       lda $08    ; PRG $08184
  $8186: 05 09       ora $09    ; PRG $08186
  $8188: d0 03       bne $818d    ; PRG $08188
  $818A: 4c 92 81    jmp $8192    ; PRG $0818A
  $818D: 84 08       sty $08    ; PRG $0818D
  $818F: 86 09       stx $09    ; PRG $0818F
  $8191: 60          rts    ; PRG $08191
  $8192: 4c 44 81    jmp $8144    ; PRG $08192
  $8195: 4c 1b 81    jmp $811b    ; PRG $08195
  $8198: 86 08       stx $08    ; PRG $08198
  $819A: 86 09       stx $09    ; PRG $0819A
  $819C: 60          rts    ; PRG $0819C

; ---- sub_4_01a3  [stub]  <- (entry: bytecode/OS via $E299)
nat_4_019d: jsr $E299                    ; 4:819D  native-call prologue
            .db $00 $fe $ff            ; inline: argcount $00, frame $fffe
  $81A3: a0 fe       ldy #$fe    ; PRG $081A3
  $81A5: 91 06       sta ($06),y    ; PRG $081A5
  $81A7: c8          iny    ; PRG $081A7
  $81A8: 91 06       sta ($06),y    ; PRG $081A8
  $81AA: 4c bc 81    jmp $81bc    ; PRG $081AA
  $81AD: 18          clc    ; PRG $081AD
  $81AE: a9 01       lda #$01    ; PRG $081AE
  $81B0: a0 fe       ldy #$fe    ; PRG $081B0
  $81B2: 71 06       adc ($06),y    ; PRG $081B2
  $81B4: 91 06       sta ($06),y    ; PRG $081B4
  $81B6: 8a          txa    ; PRG $081B6
  $81B7: c8          iny    ; PRG $081B7
  $81B8: 71 06       adc ($06),y    ; PRG $081B8
  $81BA: 91 06       sta ($06),y    ; PRG $081BA
  $81BC: a0 fe       ldy #$fe    ; PRG $081BC
  $81BE: b1 06       lda ($06),y    ; PRG $081BE
  $81C0: c9 09       cmp #$09    ; PRG $081C0
  $81C2: c8          iny    ; PRG $081C2
  $81C3: b1 06       lda ($06),y    ; PRG $081C3
  $81C5: e9 00       sbc #$00    ; PRG $081C5
  $81C7: 90 03       bcc $81cc    ; PRG $081C7
  $81C9: 4c ea 81    jmp $81ea    ; PRG $081C9
  $81CC: b1 06       lda ($06),y    ; PRG $081CC
  $81CE: 48          pha    ; PRG $081CE
  $81CF: 88          dey    ; PRG $081CF
  $81D0: b1 06       lda ($06),y    ; PRG $081D0
  $81D2: 48          pha    ; PRG $081D2
  $81D3: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $081D3
  $81D6: 0b 81 04    .db $0b $81 $04  -> vm $810B argc 4    ; PRG $081D6
  $81D9: a5 08       lda $08    ; PRG $081D9
  $81DB: 05 09       ora $09    ; PRG $081DB
  $81DD: d0 03       bne $81e2    ; PRG $081DD
  $81DF: 4c e7 81    jmp $81e7   ; nat_9_01e7    ; PRG $081DF
  $81E2: 86 08       stx $08    ; PRG $081E2
  $81E4: 86 09       stx $09    ; PRG $081E4
  $81E6: 60          rts    ; PRG $081E6
  $81E7: 4c ad 81    jmp $81ad    ; PRG $081E7
  $81EA: a9 01       lda #$01    ; PRG $081EA
  $81EC: 85 08       sta $08    ; PRG $081EC
  $81EE: 86 09       stx $09    ; PRG $081EE
  $81F0: 60          rts    ; PRG $081F0

; ---- sub_4_01f7  [stub]  <- (entry: bytecode/OS via $E299)
nat_4_01f1: jsr $E299                    ; 4:81F1  native-call prologue
            .db $00 $00 $00            ; inline: argcount $00, frame $0000
  $81F7: a9 01       lda #$01    ; PRG $081F7
  $81F9: 85 18       sta $18    ; PRG $081F9
  $81FB: 86 19       stx $19    ; PRG $081FB
  $81FD: a0 0f       ldy #$0f    ; PRG $081FD
  $81FF: b1 04       lda ($04),y    ; PRG $081FF
  $8201: 85 14       sta $14    ; PRG $08201
  $8203: c8          iny    ; PRG $08203
  $8204: b1 04       lda ($04),y    ; PRG $08204
  $8206: 85 15       sta $15    ; PRG $08206
  $8208: a0 14       ldy #$14    ; PRG $08208
  $820A: a2 18       ldx #$18    ; PRG $0820A
  $820C: a9 10       lda #$10    ; PRG $0820C
  $820E: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0820E
  $8211: 18          clc    ; PRG $08211
  $8212: a5 10       lda $10    ; PRG $08212
  $8214: a0 0d       ldy #$0d    ; PRG $08214
  $8216: 71 04       adc ($04),y    ; PRG $08216
  $8218: 85 18       sta $18    ; PRG $08218
  $821A: a5 11       lda $11    ; PRG $0821A
  $821C: c8          iny    ; PRG $0821C
  $821D: 71 04       adc ($04),y    ; PRG $0821D
  $821F: 85 19       sta $19    ; PRG $0821F
  $8221: 86 19       stx $19    ; PRG $08221
  $8223: a9 08       lda #$08    ; PRG $08223
  $8225: 85 14       sta $14    ; PRG $08225
  $8227: 86 15       stx $15    ; PRG $08227
  $8229: a0 14       ldy #$14    ; PRG $08229
  $822B: a2 18       ldx #$18    ; PRG $0822B
  $822D: a9 10       lda #$10    ; PRG $0822D
  $822F: 20 15 e4    jsr $e415   ; alu_shr16_n    ; PRG $0822F
  $8232: a9 02       lda #$02    ; PRG $08232
  $8234: 85 18       sta $18    ; PRG $08234
  $8236: 86 19       stx $19    ; PRG $08236
  $8238: 98          tya    ; PRG $08238
  $8239: a0 0b       ldy #$0b    ; PRG $08239
  $823B: 31 04       and ($04),y    ; PRG $0823B
  $823D: 85 14       sta $14    ; PRG $0823D
  $823F: 8a          txa    ; PRG $0823F
  $8240: 85 15       sta $15    ; PRG $08240
  $8242: 38          sec    ; PRG $08242
  $8243: a9 01       lda #$01    ; PRG $08243
  $8245: e5 14       sbc $14    ; PRG $08245
  $8247: 85 0c       sta $0c    ; PRG $08247
  $8249: 8a          txa    ; PRG $08249
  $824A: e5 15       sbc $15    ; PRG $0824A
  $824C: 85 0d       sta $0d    ; PRG $0824C
  $824E: c8          iny    ; PRG $0824E
  $824F: a2 18       ldx #$18    ; PRG $0824F
  $8251: a9 14       lda #$14    ; PRG $08251
  $8253: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $08253
  $8256: 84 18       sty $18    ; PRG $08256
  $8258: 86 19       stx $19    ; PRG $08258
  $825A: a0 0b       ldy #$0b    ; PRG $0825A
  $825C: b1 04       lda ($04),y    ; PRG $0825C
  $825E: 85 0c       sta $0c    ; PRG $0825E
  $8260: c8          iny    ; PRG $08260
  $8261: b1 04       lda ($04),y    ; PRG $08261
  $8263: 85 0d       sta $0d    ; PRG $08263
  $8265: a2 18       ldx #$18    ; PRG $08265
  $8267: a9 08       lda #$08    ; PRG $08267
  $8269: 20 15 e4    jsr $e415   ; alu_shr16_n    ; PRG $08269
  $826C: 18          clc    ; PRG $0826C
  $826D: a5 08       lda $08    ; PRG $0826D
  $826F: 69 e6       adc #$e6    ; PRG $0826F
  $8271: 85 18       sta $18    ; PRG $08271
  $8273: a5 09       lda $09    ; PRG $08273
  $8275: 69 99       adc #$99    ; PRG $08275
  $8277: 85 19       sta $19    ; PRG $08277
  $8279: a1 18       lda ($18,x)    ; PRG $08279
  $827B: 85 0c       sta $0c    ; PRG $0827B
  $827D: 86 0d       stx $0d    ; PRG $0827D
  $827F: a0 0c       ldy #$0c    ; PRG $0827F
  $8281: a2 14       ldx #$14    ; PRG $08281
  $8283: a9 18       lda #$18    ; PRG $08283
  $8285: 20 15 e4    jsr $e415   ; alu_shr16_n    ; PRG $08285
  $8288: a5 18       lda $18    ; PRG $08288
  $828A: 25 10       and $10    ; PRG $0828A
  $828C: 85 14       sta $14    ; PRG $0828C
  $828E: a5 19       lda $19    ; PRG $0828E
  $8290: 25 11       and $11    ; PRG $08290
  $8292: 85 15       sta $15    ; PRG $08292
  $8294: a5 14       lda $14    ; PRG $08294
  $8296: 29 0f       and #$0f    ; PRG $08296
  $8298: f0 03       beq $829d    ; PRG $08298
  $829A: 4c a4 82    jmp $82a4    ; PRG $0829A
  $829D: 84 08       sty $08    ; PRG $0829D
  $829F: 86 09       stx $09    ; PRG $0829F
  $82A1: 4c a8 82    jmp $82a8    ; PRG $082A1
  $82A4: 86 08       stx $08    ; PRG $082A4
  $82A6: 86 09       stx $09    ; PRG $082A6
  $82A8: 60          rts    ; PRG $082A8

; ---- sub_4_02af  [stub]  <- (entry: bytecode/OS via $E299)
nat_4_02a9: jsr $E299                    ; 4:82A9  native-call prologue
            .db $00 $fc $ff            ; inline: argcount $00, frame $fffc
  $82AF: a0 0c       ldy #$0c    ; PRG $082AF
  $82B1: b1 04       lda ($04),y    ; PRG $082B1
  $82B3: 48          pha    ; PRG $082B3
  $82B4: 88          dey    ; PRG $082B4
  $82B5: b1 04       lda ($04),y    ; PRG $082B5
  $82B7: 48          pha    ; PRG $082B7
  $82B8: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $082B8
  $82BB: 50 d5 04    .db $50 $d5 $04  -> vm $D550 argc 4    ; PRG $082BB
  $82BE: a5 08       lda $08    ; PRG $082BE
  $82C0: a0 fe       ldy #$fe    ; PRG $082C0
  $82C2: 91 06       sta ($06),y    ; PRG $082C2
  $82C4: a5 09       lda $09    ; PRG $082C4
  $82C6: c8          iny    ; PRG $082C6
  $82C7: 91 06       sta ($06),y    ; PRG $082C7
  $82C9: 88          dey    ; PRG $082C9
  $82CA: b1 06       lda ($06),y    ; PRG $082CA
  $82CC: a0 fc       ldy #$fc    ; PRG $082CC
  $82CE: 91 06       sta ($06),y    ; PRG $082CE
  $82D0: a0 ff       ldy #$ff    ; PRG $082D0
  $82D2: b1 06       lda ($06),y    ; PRG $082D2
  $82D4: a0 fd       ldy #$fd    ; PRG $082D4
  $82D6: 91 06       sta ($06),y    ; PRG $082D6
  $82D8: c8          iny    ; PRG $082D8
  $82D9: b1 06       lda ($06),y    ; PRG $082D9
  $82DB: 85 18       sta $18    ; PRG $082DB
  $82DD: c8          iny    ; PRG $082DD
  $82DE: b1 06       lda ($06),y    ; PRG $082DE
  $82E0: 85 19       sta $19    ; PRG $082E0
  $82E2: a9 a0       lda #$a0    ; PRG $082E2
  $82E4: 85 14       sta $14    ; PRG $082E4
  $82E6: a9 0f       lda #$0f    ; PRG $082E6
  $82E8: 85 15       sta $15    ; PRG $082E8
  $82EA: a2 14       ldx #$14    ; PRG $082EA
  $82EC: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $082EC
  $82EF: a2 18       ldx #$18    ; PRG $082EF
  $82F1: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $082F1
  $82F4: 48          pha    ; PRG $082F4
  $82F5: a9 02       lda #$02    ; PRG $082F5
  $82F7: 48          pha    ; PRG $082F7
  $82F8: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $082F8
  $82FB: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $082FB
  $82FE: a9 03       lda #$03    ; PRG $082FE
  $8300: 85 18       sta $18    ; PRG $08300
  $8302: 86 19       stx $19    ; PRG $08302
  $8304: ad 74 6f    lda $6f74    ; PRG $08304
  $8307: 85 14       sta $14    ; PRG $08307
  $8309: 86 15       stx $15    ; PRG $08309
  $830B: a0 14       ldy #$14    ; PRG $0830B
  $830D: a2 18       ldx #$18    ; PRG $0830D
  $830F: a9 10       lda #$10    ; PRG $0830F
  $8311: 20 d9 e1    jsr $e1d9   ; alu_div_push_remainder    ; PRG $08311
  $8314: 18          clc    ; PRG $08314
  $8315: a5 10       lda $10    ; PRG $08315
  $8317: 65 08       adc $08    ; PRG $08317
  $8319: 85 18       sta $18    ; PRG $08319
  $831B: a5 11       lda $11    ; PRG $0831B
  $831D: 65 09       adc $09    ; PRG $0831D
  $831F: 85 19       sta $19    ; PRG $0831F
  $8321: 18          clc    ; PRG $08321
  $8322: 98          tya    ; PRG $08322
  $8323: 65 18       adc $18    ; PRG $08323
  $8325: 85 14       sta $14    ; PRG $08325
  $8327: 8a          txa    ; PRG $08327
  $8328: 65 19       adc $19    ; PRG $08328
  $832A: 85 15       sta $15    ; PRG $0832A
  $832C: a2 18       ldx #$18    ; PRG $0832C
  $832E: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $0832E
  $8331: a2 10       ldx #$10    ; PRG $08331
  $8333: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $08333
  $8336: a0 14       ldy #$14    ; PRG $08336
  $8338: a2 10       ldx #$10    ; PRG $08338
  $833A: a9 0c       lda #$0c    ; PRG $0833A
  $833C: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0833C
  $833F: a5 0c       lda $0c    ; PRG $0833F
  $8341: a0 0f       ldy #$0f    ; PRG $08341
  $8343: 91 18       sta ($18),y    ; PRG $08343
  $8345: a5 0d       lda $0d    ; PRG $08345
  $8347: c8          iny    ; PRG $08347
  $8348: 91 18       sta ($18),y    ; PRG $08348
  $834A: a9 01       lda #$01    ; PRG $0834A
  $834C: 85 18       sta $18    ; PRG $0834C
  $834E: 86 19       stx $19    ; PRG $0834E
  $8350: a2 18       ldx #$18    ; PRG $08350
  $8352: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $08352
  $8355: 48          pha    ; PRG $08355
  $8356: a9 0c       lda #$0c    ; PRG $08356
  $8358: 48          pha    ; PRG $08358
  $8359: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $08359
  $835C: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $0835C
  $835F: a2 18       ldx #$18    ; PRG $0835F
  $8361: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $08361
  $8364: a0 08       ldy #$08    ; PRG $08364
  $8366: a2 18       ldx #$18    ; PRG $08366
  $8368: a9 14       lda #$14    ; PRG $08368
  $836A: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0836A
  $836D: 18          clc    ; PRG $0836D
  $836E: a5 14       lda $14    ; PRG $0836E
  $8370: 69 01       adc #$01    ; PRG $08370
  $8372: 85 18       sta $18    ; PRG $08372
  $8374: a5 15       lda $15    ; PRG $08374
  $8376: 69 9a       adc #$9a    ; PRG $08376
  $8378: 85 19       sta $19    ; PRG $08378
  $837A: b1 18       lda ($18),y    ; PRG $0837A
  $837C: 48          pha    ; PRG $0837C
  $837D: a1 18       lda ($18,x)    ; PRG $0837D
  $837F: 48          pha    ; PRG $0837F
  $8380: a0 fd       ldy #$fd    ; PRG $08380
  $8382: b1 06       lda ($06),y    ; PRG $08382
  $8384: 48          pha    ; PRG $08384
  $8385: 88          dey    ; PRG $08385
  $8386: b1 06       lda ($06),y    ; PRG $08386
  $8388: 48          pha    ; PRG $08388
  $8389: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $08389
  $838C: a6 de 06    .db $a6 $de $06  -> vm $DEA6 argc 6    ; PRG $0838C
  $838F: a9 9a       lda #$9a    ; PRG $0838F
  $8391: 48          pha    ; PRG $08391
  $8392: a9 d3       lda #$d3    ; PRG $08392
  $8394: 48          pha    ; PRG $08394
  $8395: a0 fd       ldy #$fd    ; PRG $08395
  $8397: b1 06       lda ($06),y    ; PRG $08397
  $8399: 48          pha    ; PRG $08399
  $839A: 88          dey    ; PRG $0839A
  $839B: b1 06       lda ($06),y    ; PRG $0839B
  $839D: 48          pha    ; PRG $0839D
  $839E: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0839E
  $83A1: bf de 06    .db $bf $de $06  -> vm $DEBF argc 6    ; PRG $083A1
  $83A4: 84 18       sty $18    ; PRG $083A4
  $83A6: 86 19       stx $19    ; PRG $083A6
  $83A8: a2 18       ldx #$18    ; PRG $083A8
  $83AA: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $083AA
  $83AD: 48          pha    ; PRG $083AD
  $83AE: a9 0d       lda #$0d    ; PRG $083AE
  $83B0: 48          pha    ; PRG $083B0
  $83B1: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $083B1
  $83B4: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $083B4
  $83B7: a2 18       ldx #$18    ; PRG $083B7
  $83B9: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $083B9
  $83BC: a0 08       ldy #$08    ; PRG $083BC
  $83BE: a2 18       ldx #$18    ; PRG $083BE
  $83C0: a9 14       lda #$14    ; PRG $083C0
  $83C2: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $083C2
  $83C5: 18          clc    ; PRG $083C5
  $83C6: a5 14       lda $14    ; PRG $083C6
  $83C8: 69 19       adc #$19    ; PRG $083C8
  $83CA: 85 18       sta $18    ; PRG $083CA
  $83CC: a5 15       lda $15    ; PRG $083CC
  $83CE: 69 9a       adc #$9a    ; PRG $083CE
  $83D0: 85 19       sta $19    ; PRG $083D0
  $83D2: b1 18       lda ($18),y    ; PRG $083D2
  $83D4: 48          pha    ; PRG $083D4
  $83D5: a1 18       lda ($18,x)    ; PRG $083D5
  $83D7: 48          pha    ; PRG $083D7
  $83D8: a0 fd       ldy #$fd    ; PRG $083D8
  $83DA: b1 06       lda ($06),y    ; PRG $083DA
  $83DC: 48          pha    ; PRG $083DC
  $83DD: 88          dey    ; PRG $083DD
  $83DE: b1 06       lda ($06),y    ; PRG $083DE
  $83E0: 48          pha    ; PRG $083E0
  $83E1: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $083E1
  $83E4: bf de 06    .db $bf $de $06  -> vm $DEBF argc 6    ; PRG $083E4
  $83E7: 60          rts    ; PRG $083E7

; ---- sub_4_03ee  [stub]  <- (entry: bytecode/OS via $E299)
nat_4_03e8: jsr $E299                    ; 4:83E8  native-call prologue
            .db $00 $e7 $ff            ; inline: argcount $00, frame $ffe7
  $83EE: ad 5a 70    lda $705a    ; PRG $083EE
  $83F1: f0 03       beq $83f6    ; PRG $083F1
  $83F3: 4c f1 86    jmp $86f1    ; PRG $083F3
  $83F6: 8a          txa    ; PRG $083F6
  $83F7: 48          pha    ; PRG $083F7
  $83F8: a9 03       lda #$03    ; PRG $083F8
  $83FA: 48          pha    ; PRG $083FA
  $83FB: 18          clc    ; PRG $083FB
  $83FC: a9 fd       lda #$fd    ; PRG $083FC
  $83FE: 65 06       adc $06    ; PRG $083FE
  $8400: 85 18       sta $18    ; PRG $08400
  $8402: 8a          txa    ; PRG $08402
  $8403: 65 07       adc $07    ; PRG $08403
  $8405: 85 19       sta $19    ; PRG $08405
  $8407: a5 19       lda $19    ; PRG $08407
  $8409: 48          pha    ; PRG $08409
  $840A: a5 18       lda $18    ; PRG $0840A
  $840C: 48          pha    ; PRG $0840C
  $840D: a9 70       lda #$70    ; PRG $0840D
  $840F: 48          pha    ; PRG $0840F
  $8410: a9 82       lda #$82    ; PRG $08410
  $8412: 48          pha    ; PRG $08412
  $8413: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $08413
  $8416: e0 dd 08    .db $e0 $dd $08  -> vm $DDE0 argc 8    ; PRG $08416
  $8419: a0 e7       ldy #$e7    ; PRG $08419
  $841B: 91 06       sta ($06),y    ; PRG $0841B
  $841D: c8          iny    ; PRG $0841D
  $841E: 91 06       sta ($06),y    ; PRG $0841E
  $8420: c8          iny    ; PRG $08420
  $8421: 91 06       sta ($06),y    ; PRG $08421
  $8423: c8          iny    ; PRG $08423
  $8424: 91 06       sta ($06),y    ; PRG $08424
  $8426: 48          pha    ; PRG $08426
  $8427: a9 02       lda #$02    ; PRG $08427
  $8429: 48          pha    ; PRG $08429
  $842A: a9 70       lda #$70    ; PRG $0842A
  $842C: 48          pha    ; PRG $0842C
  $842D: a9 a5       lda #$a5    ; PRG $0842D
  $842F: 48          pha    ; PRG $0842F
  $8430: 18          clc    ; PRG $08430
  $8431: a9 e7       lda #$e7    ; PRG $08431
  $8433: 65 06       adc $06    ; PRG $08433
  $8435: 85 18       sta $18    ; PRG $08435
  $8437: 8a          txa    ; PRG $08437
  $8438: 65 07       adc $07    ; PRG $08438
  $843A: 85 19       sta $19    ; PRG $0843A
  $843C: a5 19       lda $19    ; PRG $0843C
  $843E: 48          pha    ; PRG $0843E
  $843F: a5 18       lda $18    ; PRG $0843F
  $8441: 48          pha    ; PRG $08441
  $8442: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $08442
  $8445: 8c d0 08    .db $8c $d0 $08  -> vm $D08C argc 8    ; PRG $08445
  $8448: 48          pha    ; PRG $08448
  $8449: a9 02       lda #$02    ; PRG $08449
  $844B: 48          pha    ; PRG $0844B
  $844C: a9 70       lda #$70    ; PRG $0844C
  $844E: 48          pha    ; PRG $0844E
  $844F: a9 a7       lda #$a7    ; PRG $0844F
  $8451: 48          pha    ; PRG $08451
  $8452: 18          clc    ; PRG $08452
  $8453: a9 e7       lda #$e7    ; PRG $08453
  $8455: 65 06       adc $06    ; PRG $08455
  $8457: 85 18       sta $18    ; PRG $08457
  $8459: 8a          txa    ; PRG $08459
  $845A: 65 07       adc $07    ; PRG $0845A
  $845C: 85 19       sta $19    ; PRG $0845C
  $845E: a5 19       lda $19    ; PRG $0845E
  $8460: 48          pha    ; PRG $08460
  $8461: a5 18       lda $18    ; PRG $08461
  $8463: 48          pha    ; PRG $08463
  $8464: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $08464
  $8467: 8c d0 08    .db $8c $d0 $08  -> vm $D08C argc 8    ; PRG $08467
  $846A: 8a          txa    ; PRG $0846A
  $846B: 48          pha    ; PRG $0846B
  $846C: a9 18       lda #$18    ; PRG $0846C
  $846E: 48          pha    ; PRG $0846E
  $846F: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0846F
  $8472: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $08472
  $8475: a5 08       lda $08    ; PRG $08475
  $8477: a0 ef       ldy #$ef    ; PRG $08477
  $8479: 91 06       sta ($06),y    ; PRG $08479
  $847B: a5 09       lda $09    ; PRG $0847B
  $847D: c8          iny    ; PRG $0847D
  $847E: 91 06       sta ($06),y    ; PRG $0847E
  $8480: 8a          txa    ; PRG $08480
  $8481: 48          pha    ; PRG $08481
  $8482: a9 0c       lda #$0c    ; PRG $08482
  $8484: 48          pha    ; PRG $08484
  $8485: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $08485
  $8488: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $08488
  $848B: a5 08       lda $08    ; PRG $0848B
  $848D: a0 ed       ldy #$ed    ; PRG $0848D
  $848F: 91 06       sta ($06),y    ; PRG $0848F
  $8491: a5 09       lda $09    ; PRG $08491
  $8493: c8          iny    ; PRG $08493
  $8494: 91 06       sta ($06),y    ; PRG $08494
  $8496: a9 73       lda #$73    ; PRG $08496
  $8498: 48          pha    ; PRG $08498
  $8499: a9 90       lda #$90    ; PRG $08499
  $849B: 48          pha    ; PRG $0849B
  $849C: b1 06       lda ($06),y    ; PRG $0849C
  $849E: 48          pha    ; PRG $0849E
  $849F: 88          dey    ; PRG $0849F
  $84A0: b1 06       lda ($06),y    ; PRG $084A0
  $84A2: 48          pha    ; PRG $084A2
  $84A3: a0 f0       ldy #$f0    ; PRG $084A3
  $84A5: b1 06       lda ($06),y    ; PRG $084A5
  $84A7: 48          pha    ; PRG $084A7
  $84A8: 88          dey    ; PRG $084A8
  $84A9: b1 06       lda ($06),y    ; PRG $084A9
  $84AB: 48          pha    ; PRG $084AB
  $84AC: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $084AC
  $84AF: b6 ab 08    .db $b6 $ab $08  -> vm $ABB6 argc 8    ; PRG $084AF
  $84B2: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $084B2
  $84B5: 9d 81 02    .db $9d $81 $02  -> vm $819D argc 2    ; PRG $084B5
  $84B8: a5 08       lda $08    ; PRG $084B8
  $84BA: 05 09       ora $09    ; PRG $084BA
  $84BC: f0 03       beq $84c1    ; PRG $084BC
  $84BE: 4c 6a 84    jmp $846a    ; PRG $084BE
  $84C1: 8a          txa    ; PRG $084C1
  $84C2: 48          pha    ; PRG $084C2
  $84C3: a9 03       lda #$03    ; PRG $084C3
  $84C5: 48          pha    ; PRG $084C5
  $84C6: a9 70       lda #$70    ; PRG $084C6
  $84C8: 48          pha    ; PRG $084C8
  $84C9: a9 82       lda #$82    ; PRG $084C9
  $84CB: 48          pha    ; PRG $084CB
  $84CC: 18          clc    ; PRG $084CC
  $84CD: a9 fd       lda #$fd    ; PRG $084CD
  $84CF: 65 06       adc $06    ; PRG $084CF
  $84D1: 85 18       sta $18    ; PRG $084D1
  $84D3: 8a          txa    ; PRG $084D3
  $84D4: 65 07       adc $07    ; PRG $084D4
  $84D6: 85 19       sta $19    ; PRG $084D6
  $84D8: a5 19       lda $19    ; PRG $084D8
  $84DA: 48          pha    ; PRG $084DA
  $84DB: a5 18       lda $18    ; PRG $084DB
  $84DD: 48          pha    ; PRG $084DD
  $84DE: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $084DE
  $84E1: e0 dd 08    .db $e0 $dd $08  -> vm $DDE0 argc 8    ; PRG $084E1
  $84E4: 8a          txa    ; PRG $084E4
  $84E5: 48          pha    ; PRG $084E5
  $84E6: a9 03       lda #$03    ; PRG $084E6
  $84E8: 48          pha    ; PRG $084E8
  $84E9: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $084E9
  $84EC: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $084EC
  $84EF: a5 08       lda $08    ; PRG $084EF
  $84F1: a0 fb       ldy #$fb    ; PRG $084F1
  $84F3: 91 06       sta ($06),y    ; PRG $084F3
  $84F5: a5 09       lda $09    ; PRG $084F5
  $84F7: c8          iny    ; PRG $084F7
  $84F8: 91 06       sta ($06),y    ; PRG $084F8
  $84FA: 8a          txa    ; PRG $084FA
  $84FB: 48          pha    ; PRG $084FB
  $84FC: a9 03       lda #$03    ; PRG $084FC
  $84FE: 48          pha    ; PRG $084FE
  $84FF: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $084FF
  $8502: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $08502
  $8505: a5 08       lda $08    ; PRG $08505
  $8507: a0 f9       ldy #$f9    ; PRG $08507
  $8509: 91 06       sta ($06),y    ; PRG $08509
  $850B: a5 09       lda $09    ; PRG $0850B
  $850D: c8          iny    ; PRG $0850D
  $850E: 91 06       sta ($06),y    ; PRG $0850E
  $8510: 8a          txa    ; PRG $08510
  $8511: 48          pha    ; PRG $08511
  $8512: a9 07       lda #$07    ; PRG $08512
  $8514: 48          pha    ; PRG $08514
  $8515: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $08515
  $8518: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $08518
  $851B: a5 08       lda $08    ; PRG $0851B
  $851D: a0 f7       ldy #$f7    ; PRG $0851D
  $851F: 91 06       sta ($06),y    ; PRG $0851F
  $8521: a5 09       lda $09    ; PRG $08521
  $8523: c8          iny    ; PRG $08523
  $8524: 91 06       sta ($06),y    ; PRG $08524
  $8526: 8a          txa    ; PRG $08526
  $8527: 48          pha    ; PRG $08527
  $8528: a9 07       lda #$07    ; PRG $08528
  $852A: 48          pha    ; PRG $0852A
  $852B: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0852B
  $852E: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $0852E
  $8531: a5 08       lda $08    ; PRG $08531
  $8533: a0 f5       ldy #$f5    ; PRG $08533
  $8535: 91 06       sta ($06),y    ; PRG $08535
  $8537: a5 09       lda $09    ; PRG $08537
  $8539: c8          iny    ; PRG $08539
  $853A: 91 06       sta ($06),y    ; PRG $0853A
  $853C: a0 f6       ldy #$f6    ; PRG $0853C
  $853E: b1 06       lda ($06),y    ; PRG $0853E
  $8540: 48          pha    ; PRG $08540
  $8541: 88          dey    ; PRG $08541
  $8542: b1 06       lda ($06),y    ; PRG $08542
  $8544: 48          pha    ; PRG $08544
  $8545: a0 f8       ldy #$f8    ; PRG $08545
  $8547: b1 06       lda ($06),y    ; PRG $08547
  $8549: 48          pha    ; PRG $08549
  $854A: 88          dey    ; PRG $0854A
  $854B: b1 06       lda ($06),y    ; PRG $0854B
  $854D: 48          pha    ; PRG $0854D
  $854E: a9 03       lda #$03    ; PRG $0854E
  $8550: 85 18       sta $18    ; PRG $08550
  $8552: 86 19       stx $19    ; PRG $08552
  $8554: a0 f9       ldy #$f9    ; PRG $08554
  $8556: b1 06       lda ($06),y    ; PRG $08556
  $8558: 85 14       sta $14    ; PRG $08558
  $855A: c8          iny    ; PRG $0855A
  $855B: b1 06       lda ($06),y    ; PRG $0855B
  $855D: 85 15       sta $15    ; PRG $0855D
  $855F: a0 14       ldy #$14    ; PRG $0855F
  $8561: a2 18       ldx #$18    ; PRG $08561
  $8563: a9 10       lda #$10    ; PRG $08563
  $8565: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $08565
  $8568: 18          clc    ; PRG $08568
  $8569: a5 10       lda $10    ; PRG $08569
  $856B: a0 fb       ldy #$fb    ; PRG $0856B
  $856D: 71 06       adc ($06),y    ; PRG $0856D
  $856F: 85 18       sta $18    ; PRG $0856F
  $8571: a5 11       lda $11    ; PRG $08571
  $8573: c8          iny    ; PRG $08573
  $8574: 71 06       adc ($06),y    ; PRG $08574
  $8576: 85 19       sta $19    ; PRG $08576
  $8578: a5 19       lda $19    ; PRG $08578
  $857A: 48          pha    ; PRG $0857A
  $857B: a5 18       lda $18    ; PRG $0857B
  $857D: 48          pha    ; PRG $0857D
  $857E: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0857E
  $8581: 74 80 08    .db $74 $80 $08  -> vm $8074 argc 8    ; PRG $08581
  $8584: a5 08       lda $08    ; PRG $08584
  $8586: 05 09       ora $09    ; PRG $08586
  $8588: d0 03       bne $858d    ; PRG $08588
  $858A: 4c e4 84    jmp $84e4    ; PRG $0858A
  $858D: a0 f6       ldy #$f6    ; PRG $0858D
  $858F: b1 06       lda ($06),y    ; PRG $0858F
  $8591: 48          pha    ; PRG $08591
  $8592: 88          dey    ; PRG $08592
  $8593: b1 06       lda ($06),y    ; PRG $08593
  $8595: 48          pha    ; PRG $08595
  $8596: a0 f8       ldy #$f8    ; PRG $08596
  $8598: b1 06       lda ($06),y    ; PRG $08598
  $859A: 48          pha    ; PRG $0859A
  $859B: 88          dey    ; PRG $0859B
  $859C: b1 06       lda ($06),y    ; PRG $0859C
  $859E: 48          pha    ; PRG $0859E
  $859F: a9 03       lda #$03    ; PRG $0859F
  $85A1: 85 18       sta $18    ; PRG $085A1
  $85A3: 86 19       stx $19    ; PRG $085A3
  $85A5: a0 f9       ldy #$f9    ; PRG $085A5
  $85A7: b1 06       lda ($06),y    ; PRG $085A7
  $85A9: 85 14       sta $14    ; PRG $085A9
  $85AB: c8          iny    ; PRG $085AB
  $85AC: b1 06       lda ($06),y    ; PRG $085AC
  $85AE: 85 15       sta $15    ; PRG $085AE
  $85B0: a0 14       ldy #$14    ; PRG $085B0
  $85B2: a2 18       ldx #$18    ; PRG $085B2
  $85B4: a9 10       lda #$10    ; PRG $085B4
  $85B6: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $085B6
  $85B9: 18          clc    ; PRG $085B9
  $85BA: a5 10       lda $10    ; PRG $085BA
  $85BC: a0 fb       ldy #$fb    ; PRG $085BC
  $85BE: 71 06       adc ($06),y    ; PRG $085BE
  $85C0: 85 18       sta $18    ; PRG $085C0
  $85C2: a5 11       lda $11    ; PRG $085C2
  $85C4: c8          iny    ; PRG $085C4
  $85C5: 71 06       adc ($06),y    ; PRG $085C5
  $85C7: 85 19       sta $19    ; PRG $085C7
  $85C9: a5 19       lda $19    ; PRG $085C9
  $85CB: 48          pha    ; PRG $085CB
  $85CC: a5 18       lda $18    ; PRG $085CC
  $85CE: 48          pha    ; PRG $085CE
  $85CF: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $085CF
  $85D2: 03 80 08    .db $03 $80 $08  -> vm $8003 argc 8    ; PRG $085D2
  $85D5: a5 08       lda $08    ; PRG $085D5
  $85D7: a0 eb       ldy #$eb    ; PRG $085D7
  $85D9: 91 06       sta ($06),y    ; PRG $085D9
  $85DB: a5 09       lda $09    ; PRG $085DB
  $85DD: c8          iny    ; PRG $085DD
  $85DE: 91 06       sta ($06),y    ; PRG $085DE
  $85E0: 8a          txa    ; PRG $085E0
  $85E1: 48          pha    ; PRG $085E1
  $85E2: a9 02       lda #$02    ; PRG $085E2
  $85E4: 48          pha    ; PRG $085E4
  $85E5: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $085E5
  $85E8: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $085E8
  $85EB: a5 08       lda $08    ; PRG $085EB
  $85ED: a0 f3       ldy #$f3    ; PRG $085ED
  $85EF: 91 06       sta ($06),y    ; PRG $085EF
  $85F1: a5 09       lda $09    ; PRG $085F1
  $85F3: c8          iny    ; PRG $085F3
  $85F4: 91 06       sta ($06),y    ; PRG $085F4
  $85F6: 8a          txa    ; PRG $085F6
  $85F7: 48          pha    ; PRG $085F7
  $85F8: a9 02       lda #$02    ; PRG $085F8
  $85FA: 48          pha    ; PRG $085FA
  $85FB: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $085FB
  $85FE: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $085FE
  $8601: a5 08       lda $08    ; PRG $08601
  $8603: a0 f1       ldy #$f1    ; PRG $08603
  $8605: 91 06       sta ($06),y    ; PRG $08605
  $8607: a5 09       lda $09    ; PRG $08607
  $8609: c8          iny    ; PRG $08609
  $860A: 91 06       sta ($06),y    ; PRG $0860A
  $860C: a0 f2       ldy #$f2    ; PRG $0860C
  $860E: b1 06       lda ($06),y    ; PRG $0860E
  $8610: 48          pha    ; PRG $08610
  $8611: 88          dey    ; PRG $08611
  $8612: b1 06       lda ($06),y    ; PRG $08612
  $8614: 48          pha    ; PRG $08614
  $8615: a0 f4       ldy #$f4    ; PRG $08615
  $8617: b1 06       lda ($06),y    ; PRG $08617
  $8619: 48          pha    ; PRG $08619
  $861A: 88          dey    ; PRG $0861A
  $861B: b1 06       lda ($06),y    ; PRG $0861B
  $861D: 48          pha    ; PRG $0861D
  $861E: a0 ec       ldy #$ec    ; PRG $0861E
  $8620: b1 06       lda ($06),y    ; PRG $08620
  $8622: 48          pha    ; PRG $08622
  $8623: 88          dey    ; PRG $08623
  $8624: b1 06       lda ($06),y    ; PRG $08624
  $8626: 48          pha    ; PRG $08626
  $8627: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $08627
  $862A: f1 81 08    .db $f1 $81 $08  -> vm $81F1 argc 8    ; PRG $0862A
  $862D: a5 08       lda $08    ; PRG $0862D
  $862F: 05 09       ora $09    ; PRG $0862F
  $8631: f0 03       beq $8636    ; PRG $08631
  $8633: 4c e0 85    jmp $85e0    ; PRG $08633
  $8636: a9 03       lda #$03    ; PRG $08636
  $8638: 85 18       sta $18    ; PRG $08638
  $863A: 86 19       stx $19    ; PRG $0863A
  $863C: a0 ef       ldy #$ef    ; PRG $0863C
  $863E: b1 06       lda ($06),y    ; PRG $0863E
  $8640: 85 14       sta $14    ; PRG $08640
  $8642: c8          iny    ; PRG $08642
  $8643: b1 06       lda ($06),y    ; PRG $08643
  $8645: 85 15       sta $15    ; PRG $08645
  $8647: a0 14       ldy #$14    ; PRG $08647
  $8649: a2 18       ldx #$18    ; PRG $08649
  $864B: a9 10       lda #$10    ; PRG $0864B
  $864D: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0864D
  $8650: 18          clc    ; PRG $08650
  $8651: a5 10       lda $10    ; PRG $08651
  $8653: a0 fb       ldy #$fb    ; PRG $08653
  $8655: 71 06       adc ($06),y    ; PRG $08655
  $8657: 85 18       sta $18    ; PRG $08657
  $8659: a5 11       lda $11    ; PRG $08659
  $865B: c8          iny    ; PRG $0865B
  $865C: 71 06       adc ($06),y    ; PRG $0865C
  $865E: 85 19       sta $19    ; PRG $0865E
  $8660: a5 18       lda $18    ; PRG $08660
  $8662: 8d 5b 70    sta $705b    ; PRG $08662
  $8665: a9 03       lda #$03    ; PRG $08665
  $8667: 85 18       sta $18    ; PRG $08667
  $8669: 86 19       stx $19    ; PRG $08669
  $866B: a0 ed       ldy #$ed    ; PRG $0866B
  $866D: b1 06       lda ($06),y    ; PRG $0866D
  $866F: 85 14       sta $14    ; PRG $0866F
  $8671: c8          iny    ; PRG $08671
  $8672: b1 06       lda ($06),y    ; PRG $08672
  $8674: 85 15       sta $15    ; PRG $08674
  $8676: a0 14       ldy #$14    ; PRG $08676
  $8678: a2 18       ldx #$18    ; PRG $08678
  $867A: a9 10       lda #$10    ; PRG $0867A
  $867C: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0867C
  $867F: 18          clc    ; PRG $0867F
  $8680: a5 10       lda $10    ; PRG $08680
  $8682: a0 f9       ldy #$f9    ; PRG $08682
  $8684: 71 06       adc ($06),y    ; PRG $08684
  $8686: 85 18       sta $18    ; PRG $08686
  $8688: a5 11       lda $11    ; PRG $08688
  $868A: c8          iny    ; PRG $0868A
  $868B: 71 06       adc ($06),y    ; PRG $0868B
  $868D: 85 19       sta $19    ; PRG $0868D
  $868F: a5 18       lda $18    ; PRG $0868F
  $8691: 8d 5c 70    sta $705c    ; PRG $08691
  $8694: a9 01       lda #$01    ; PRG $08694
  $8696: 85 18       sta $18    ; PRG $08696
  $8698: 86 19       stx $19    ; PRG $08698
  $869A: a0 f7       ldy #$f7    ; PRG $0869A
  $869C: b1 06       lda ($06),y    ; PRG $0869C
  $869E: 85 14       sta $14    ; PRG $0869E
  $86A0: c8          iny    ; PRG $086A0
  $86A1: b1 06       lda ($06),y    ; PRG $086A1
  $86A3: 85 15       sta $15    ; PRG $086A3
  $86A5: a0 14       ldy #$14    ; PRG $086A5
  $86A7: a2 18       ldx #$18    ; PRG $086A7
  $86A9: a9 10       lda #$10    ; PRG $086A9
  $86AB: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $086AB
  $86AE: 18          clc    ; PRG $086AE
  $86AF: a5 10       lda $10    ; PRG $086AF
  $86B1: a0 f3       ldy #$f3    ; PRG $086B1
  $86B3: 71 06       adc ($06),y    ; PRG $086B3
  $86B5: 85 18       sta $18    ; PRG $086B5
  $86B7: a5 11       lda $11    ; PRG $086B7
  $86B9: c8          iny    ; PRG $086B9
  $86BA: 71 06       adc ($06),y    ; PRG $086BA
  $86BC: 85 19       sta $19    ; PRG $086BC
  $86BE: a5 18       lda $18    ; PRG $086BE
  $86C0: 8d 5d 70    sta $705d    ; PRG $086C0
  $86C3: a9 01       lda #$01    ; PRG $086C3
  $86C5: 85 18       sta $18    ; PRG $086C5
  $86C7: 86 19       stx $19    ; PRG $086C7
  $86C9: c8          iny    ; PRG $086C9
  $86CA: b1 06       lda ($06),y    ; PRG $086CA
  $86CC: 85 14       sta $14    ; PRG $086CC
  $86CE: c8          iny    ; PRG $086CE
  $86CF: b1 06       lda ($06),y    ; PRG $086CF
  $86D1: 85 15       sta $15    ; PRG $086D1
  $86D3: a0 14       ldy #$14    ; PRG $086D3
  $86D5: a2 18       ldx #$18    ; PRG $086D5
  $86D7: a9 10       lda #$10    ; PRG $086D7
  $86D9: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $086D9
  $86DC: 18          clc    ; PRG $086DC
  $86DD: a5 10       lda $10    ; PRG $086DD
  $86DF: a0 f1       ldy #$f1    ; PRG $086DF
  $86E1: 71 06       adc ($06),y    ; PRG $086E1
  $86E3: 85 18       sta $18    ; PRG $086E3
  $86E5: a5 11       lda $11    ; PRG $086E5
  $86E7: c8          iny    ; PRG $086E7
  $86E8: 71 06       adc ($06),y    ; PRG $086E8
  $86EA: 85 19       sta $19    ; PRG $086EA
  $86EC: a5 18       lda $18    ; PRG $086EC
  $86EE: 8d 5e 70    sta $705e    ; PRG $086EE
  $86F1: a9 1f       lda #$1f    ; PRG $086F1
  $86F3: 8d 55 70    sta $7055    ; PRG $086F3
  $86F6: 8a          txa    ; PRG $086F6
  $86F7: 48          pha    ; PRG $086F7
  $86F8: a9 1f       lda #$1f    ; PRG $086F8
  $86FA: 48          pha    ; PRG $086FA
  $86FB: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $086FB
  $86FE: a9 82 04    .db $a9 $82 $04  -> vm $82A9 argc 4    ; PRG $086FE
  $8701: 60          rts    ; PRG $08701

; ---- sub_4_0708  [stub]  <- (entry: bytecode/OS via $E299)
nat_4_0702: jsr $E299                    ; 4:8702  native-call prologue
            .db $00 $00 $00            ; inline: argcount $00, frame $0000
  $8708: a0 0b       ldy #$0b    ; PRG $08708
  $870A: b1 04       lda ($04),y    ; PRG $0870A
  $870C: 85 18       sta $18    ; PRG $0870C
  $870E: c8          iny    ; PRG $0870E
  $870F: b1 04       lda ($04),y    ; PRG $0870F
  $8711: 85 19       sta $19    ; PRG $08711
  $8713: 8a          txa    ; PRG $08713
  $8714: 81 18       sta ($18,x)    ; PRG $08714
  $8716: 18          clc    ; PRG $08716
  $8717: a9 01       lda #$01    ; PRG $08717
  $8719: 88          dey    ; PRG $08719
  $871A: 71 04       adc ($04),y    ; PRG $0871A
  $871C: 91 04       sta ($04),y    ; PRG $0871C
  $871E: 8a          txa    ; PRG $0871E
  $871F: c8          iny    ; PRG $0871F
  $8720: 71 04       adc ($04),y    ; PRG $08720
  $8722: 91 04       sta ($04),y    ; PRG $08722
  $8724: 88          dey    ; PRG $08724
  $8725: b1 04       lda ($04),y    ; PRG $08725
  $8727: 85 18       sta $18    ; PRG $08727
  $8729: c8          iny    ; PRG $08729
  $872A: b1 04       lda ($04),y    ; PRG $0872A
  $872C: 85 19       sta $19    ; PRG $0872C
  $872E: c8          iny    ; PRG $0872E
  $872F: b1 04       lda ($04),y    ; PRG $0872F
  $8731: 81 18       sta ($18,x)    ; PRG $08731
  $8733: 18          clc    ; PRG $08733
  $8734: a9 01       lda #$01    ; PRG $08734
  $8736: a0 0b       ldy #$0b    ; PRG $08736
  $8738: 71 04       adc ($04),y    ; PRG $08738
  $873A: 91 04       sta ($04),y    ; PRG $0873A
  $873C: 8a          txa    ; PRG $0873C
  $873D: c8          iny    ; PRG $0873D
  $873E: 71 04       adc ($04),y    ; PRG $0873E
  $8740: 91 04       sta ($04),y    ; PRG $08740
  $8742: 88          dey    ; PRG $08742
  $8743: b1 04       lda ($04),y    ; PRG $08743
  $8745: 85 08       sta $08    ; PRG $08745
  $8747: c8          iny    ; PRG $08747
  $8748: b1 04       lda ($04),y    ; PRG $08748
  $874A: 85 09       sta $09    ; PRG $0874A
  $874C: 60          rts    ; PRG $0874C

; ---- sub_4_0753  [stub]  <- (entry: bytecode/OS via $E299)
nat_4_074d: jsr $E299                    ; 4:874D  native-call prologue
            .db $00 $00 $00            ; inline: argcount $00, frame $0000
  $8753: a0 0b       ldy #$0b    ; PRG $08753
  $8755: b1 04       lda ($04),y    ; PRG $08755
  $8757: 85 18       sta $18    ; PRG $08757
  $8759: c8          iny    ; PRG $08759
  $875A: b1 04       lda ($04),y    ; PRG $0875A
  $875C: 85 19       sta $19    ; PRG $0875C
  $875E: a9 01       lda #$01    ; PRG $0875E
  $8760: 81 18       sta ($18,x)    ; PRG $08760
  $8762: 18          clc    ; PRG $08762
  $8763: 88          dey    ; PRG $08763
  $8764: 71 04       adc ($04),y    ; PRG $08764
  $8766: 91 04       sta ($04),y    ; PRG $08766
  $8768: 8a          txa    ; PRG $08768
  $8769: c8          iny    ; PRG $08769
  $876A: 71 04       adc ($04),y    ; PRG $0876A
  $876C: 91 04       sta ($04),y    ; PRG $0876C
  $876E: 88          dey    ; PRG $0876E
  $876F: b1 04       lda ($04),y    ; PRG $0876F
  $8771: 85 18       sta $18    ; PRG $08771
  $8773: c8          iny    ; PRG $08773
  $8774: b1 04       lda ($04),y    ; PRG $08774
  $8776: 85 19       sta $19    ; PRG $08776
  $8778: c8          iny    ; PRG $08778
  $8779: b1 04       lda ($04),y    ; PRG $08779
  $877B: 81 18       sta ($18,x)    ; PRG $0877B
  $877D: 18          clc    ; PRG $0877D
  $877E: a9 01       lda #$01    ; PRG $0877E
  $8780: a0 0b       ldy #$0b    ; PRG $08780
  $8782: 71 04       adc ($04),y    ; PRG $08782
  $8784: 91 04       sta ($04),y    ; PRG $08784
  $8786: 8a          txa    ; PRG $08786
  $8787: c8          iny    ; PRG $08787
  $8788: 71 04       adc ($04),y    ; PRG $08788
  $878A: 91 04       sta ($04),y    ; PRG $0878A
  $878C: 88          dey    ; PRG $0878C
  $878D: b1 04       lda ($04),y    ; PRG $0878D
  $878F: 85 08       sta $08    ; PRG $0878F
  $8791: c8          iny    ; PRG $08791
  $8792: b1 04       lda ($04),y    ; PRG $08792
  $8794: 85 09       sta $09    ; PRG $08794
  $8796: 60          rts    ; PRG $08796

; ---- sub_4_079d  [stub]  <- (entry: bytecode/OS via $E299)
nat_4_0797: jsr $E299                    ; 4:8797  native-call prologue
            .db $00 $fe $ff            ; inline: argcount $00, frame $fffe
  $879D: 8e 54 70    stx $7054    ; PRG $0879D
  $87A0: ad 74 6f    lda $6f74    ; PRG $087A0
  $87A3: 85 18       sta $18    ; PRG $087A3
  $87A5: 86 19       stx $19    ; PRG $087A5
  $87A7: a2 18       ldx #$18    ; PRG $087A7
  $87A9: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $087A9
  $87AC: 48          pha    ; PRG $087AC
  $87AD: a9 03       lda #$03    ; PRG $087AD
  $87AF: 48          pha    ; PRG $087AF
  $87B0: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $087B0
  $87B3: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $087B3
  $87B6: a2 18       ldx #$18    ; PRG $087B6
  $87B8: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $087B8
  $87BB: 18          clc    ; PRG $087BB
  $87BC: a5 08       lda $08    ; PRG $087BC
  $87BE: 65 18       adc $18    ; PRG $087BE
  $87C0: a0 fe       ldy #$fe    ; PRG $087C0
  $87C2: 91 06       sta ($06),y    ; PRG $087C2
  $87C4: a5 09       lda $09    ; PRG $087C4
  $87C6: 65 19       adc $19    ; PRG $087C6
  $87C8: c8          iny    ; PRG $087C8
  $87C9: 91 06       sta ($06),y    ; PRG $087C9
  $87CB: 18          clc    ; PRG $087CB
  $87CC: 88          dey    ; PRG $087CC
  $87CD: b1 06       lda ($06),y    ; PRG $087CD
  $87CF: 69 d5       adc #$d5    ; PRG $087CF
  $87D1: 85 18       sta $18    ; PRG $087D1
  $87D3: c8          iny    ; PRG $087D3
  $87D4: b1 06       lda ($06),y    ; PRG $087D4
  $87D6: 69 9a       adc #$9a    ; PRG $087D6
  $87D8: 85 19       sta $19    ; PRG $087D8
  $87DA: a1 18       lda ($18,x)    ; PRG $087DA
  $87DC: 8d 55 70    sta $7055    ; PRG $087DC
  $87DF: a9 01       lda #$01    ; PRG $087DF
  $87E1: 8d 5f 70    sta $705f    ; PRG $087E1
  $87E4: 60          rts    ; PRG $087E4

; ---- sub_4_07eb  [stub]  <- (entry: bytecode/OS via $E299)
nat_4_07e5: jsr $E299                    ; 4:87E5  native-call prologue
            .db $00 $fd $ff            ; inline: argcount $00, frame $fffd
  $87EB: 8c 54 70    sty $7054    ; PRG $087EB
  $87EE: 48          pha    ; PRG $087EE
  $87EF: a9 02       lda #$02    ; PRG $087EF
  $87F1: 48          pha    ; PRG $087F1
  $87F2: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $087F2
  $87F5: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $087F5
  $87F8: 18          clc    ; PRG $087F8
  $87F9: 98          tya    ; PRG $087F9
  $87FA: 65 08       adc $08    ; PRG $087FA
  $87FC: 85 18       sta $18    ; PRG $087FC
  $87FE: 8a          txa    ; PRG $087FE
  $87FF: 65 09       adc $09    ; PRG $087FF
  $8801: 85 19       sta $19    ; PRG $08801
  $8803: a5 18       lda $18    ; PRG $08803
  $8805: a0 ff       ldy #$ff    ; PRG $08805
  $8807: 91 06       sta ($06),y    ; PRG $08807
  $8809: b1 06       lda ($06),y    ; PRG $08809
  $880B: 8d 55 70    sta $7055    ; PRG $0880B
  $880E: a9 01       lda #$01    ; PRG $0880E
  $8810: 8d 5f 70    sta $705f    ; PRG $08810
  $8813: 60          rts    ; PRG $08813

; ---- sub_4_081a  [stub]  <- (entry: bytecode/OS via $E299)
nat_4_0814: jsr $E299                    ; 4:8814  native-call prologue
            .db $00 $ec $ff            ; inline: argcount $00, frame $ffec
  $881A: a9 02       lda #$02    ; PRG $0881A
  $881C: 8d 54 70    sta $7054    ; PRG $0881C
  $881F: ad 52 70    lda $7052    ; PRG $0881F
  $8822: 85 18       sta $18    ; PRG $08822
  $8824: 86 19       stx $19    ; PRG $08824
  $8826: 18          clc    ; PRG $08826
  $8827: a5 18       lda $18    ; PRG $08827
  $8829: 69 76       adc #$76    ; PRG $08829
  $882B: 85 14       sta $14    ; PRG $0882B
  $882D: a5 19       lda $19    ; PRG $0882D
  $882F: 69 6f       adc #$6f    ; PRG $0882F
  $8831: 85 15       sta $15    ; PRG $08831
  $8833: a1 14       lda ($14,x)    ; PRG $08833
  $8835: 85 18       sta $18    ; PRG $08835
  $8837: 86 19       stx $19    ; PRG $08837
  $8839: a9 03       lda #$03    ; PRG $08839
  $883B: 25 18       and $18    ; PRG $0883B
  $883D: a0 f8       ldy #$f8    ; PRG $0883D
  $883F: 91 06       sta ($06),y    ; PRG $0883F
  $8841: 8a          txa    ; PRG $08841
  $8842: c8          iny    ; PRG $08842
  $8843: 91 06       sta ($06),y    ; PRG $08843
  $8845: a9 d0       lda #$d0    ; PRG $08845
  $8847: a0 fc       ldy #$fc    ; PRG $08847
  $8849: 91 06       sta ($06),y    ; PRG $08849
  $884B: a9 6f       lda #$6f    ; PRG $0884B
  $884D: c8          iny    ; PRG $0884D
  $884E: 91 06       sta ($06),y    ; PRG $0884E
  $8850: 88          dey    ; PRG $08850
  $8851: b1 06       lda ($06),y    ; PRG $08851
  $8853: 85 18       sta $18    ; PRG $08853
  $8855: c8          iny    ; PRG $08855
  $8856: b1 06       lda ($06),y    ; PRG $08856
  $8858: 85 19       sta $19    ; PRG $08858
  $885A: a9 03       lda #$03    ; PRG $0885A
  $885C: 81 18       sta ($18,x)    ; PRG $0885C
  $885E: 18          clc    ; PRG $0885E
  $885F: a9 01       lda #$01    ; PRG $0885F
  $8861: 88          dey    ; PRG $08861
  $8862: 71 06       adc ($06),y    ; PRG $08862
  $8864: 91 06       sta ($06),y    ; PRG $08864
  $8866: 8a          txa    ; PRG $08866
  $8867: c8          iny    ; PRG $08867
  $8868: 71 06       adc ($06),y    ; PRG $08868
  $886A: 91 06       sta ($06),y    ; PRG $0886A
  $886C: 88          dey    ; PRG $0886C
  $886D: b1 06       lda ($06),y    ; PRG $0886D
  $886F: 85 18       sta $18    ; PRG $0886F
  $8871: c8          iny    ; PRG $08871
  $8872: b1 06       lda ($06),y    ; PRG $08872
  $8874: 85 19       sta $19    ; PRG $08874
  $8876: 8a          txa    ; PRG $08876
  $8877: 81 18       sta ($18,x)    ; PRG $08877
  $8879: a9 01       lda #$01    ; PRG $08879
  $887B: a0 f0       ldy #$f0    ; PRG $0887B
  $887D: 91 06       sta ($06),y    ; PRG $0887D
  $887F: 8a          txa    ; PRG $0887F
  $8880: c8          iny    ; PRG $08880
  $8881: 91 06       sta ($06),y    ; PRG $08881
  $8883: a0 f8       ldy #$f8    ; PRG $08883
  $8885: b1 06       lda ($06),y    ; PRG $08885
  $8887: c8          iny    ; PRG $08887
  $8888: 11 06       ora ($06),y    ; PRG $08888
  $888A: d0 03       bne $888f    ; PRG $0888A
  $888C: 4c a8 8a    jmp $8aa8    ; PRG $0888C
  $888F: a9 8d       lda #$8d    ; PRG $0888F
  $8891: a0 fe       ldy #$fe    ; PRG $08891
  $8893: 91 06       sta ($06),y    ; PRG $08893
  $8895: a9 6b       lda #$6b    ; PRG $08895
  $8897: c8          iny    ; PRG $08897
  $8898: 91 06       sta ($06),y    ; PRG $08898
  $889A: 18          clc    ; PRG $0889A
  $889B: 98          tya    ; PRG $0889B
  $889C: a0 f8       ldy #$f8    ; PRG $0889C
  $889E: 71 06       adc ($06),y    ; PRG $0889E
  $88A0: 91 06       sta ($06),y    ; PRG $088A0
  $88A2: a9 ff       lda #$ff    ; PRG $088A2
  $88A4: c8          iny    ; PRG $088A4
  $88A5: 71 06       adc ($06),y    ; PRG $088A5
  $88A7: 91 06       sta ($06),y    ; PRG $088A7
  $88A9: a9 65       lda #$65    ; PRG $088A9
  $88AB: a0 f6       ldy #$f6    ; PRG $088AB
  $88AD: 91 06       sta ($06),y    ; PRG $088AD
  $88AF: 8a          txa    ; PRG $088AF
  $88B0: c8          iny    ; PRG $088B0
  $88B1: 91 06       sta ($06),y    ; PRG $088B1
  $88B3: a0 f2       ldy #$f2    ; PRG $088B3
  $88B5: 91 06       sta ($06),y    ; PRG $088B5
  $88B7: c8          iny    ; PRG $088B7
  $88B8: 91 06       sta ($06),y    ; PRG $088B8
  $88BA: 4c cc 88    jmp $88cc    ; PRG $088BA
  $88BD: 18          clc    ; PRG $088BD
  $88BE: a9 01       lda #$01    ; PRG $088BE
  $88C0: a0 f2       ldy #$f2    ; PRG $088C0
  $88C2: 71 06       adc ($06),y    ; PRG $088C2
  $88C4: 91 06       sta ($06),y    ; PRG $088C4
  $88C6: 8a          txa    ; PRG $088C6
  $88C7: c8          iny    ; PRG $088C7
  $88C8: 71 06       adc ($06),y    ; PRG $088C8
  $88CA: 91 06       sta ($06),y    ; PRG $088CA
  $88CC: a0 f2       ldy #$f2    ; PRG $088CC
  $88CE: b1 06       lda ($06),y    ; PRG $088CE
  $88D0: c9 03       cmp #$03    ; PRG $088D0
  $88D2: c8          iny    ; PRG $088D2
  $88D3: b1 06       lda ($06),y    ; PRG $088D3
  $88D5: e9 00       sbc #$00    ; PRG $088D5
  $88D7: 90 03       bcc $88dc    ; PRG $088D7
  $88D9: 4c c5 89    jmp $89c5    ; PRG $088D9
  $88DC: 88          dey    ; PRG $088DC
  $88DD: b1 06       lda ($06),y    ; PRG $088DD
  $88DF: a0 f8       ldy #$f8    ; PRG $088DF
  $88E1: d1 06       cmp ($06),y    ; PRG $088E1
  $88E3: d0 08       bne $88ed    ; PRG $088E3
  $88E5: a0 f3       ldy #$f3    ; PRG $088E5
  $88E7: b1 06       lda ($06),y    ; PRG $088E7
  $88E9: a0 f9       ldy #$f9    ; PRG $088E9
  $88EB: d1 06       cmp ($06),y    ; PRG $088EB
  $88ED: d0 03       bne $88f2    ; PRG $088ED
  $88EF: 4c c2 89    jmp $89c2    ; PRG $088EF
  $88F2: a9 02       lda #$02    ; PRG $088F2
  $88F4: 85 18       sta $18    ; PRG $088F4
  $88F6: 86 19       stx $19    ; PRG $088F6
  $88F8: a0 f8       ldy #$f8    ; PRG $088F8
  $88FA: b1 06       lda ($06),y    ; PRG $088FA
  $88FC: 85 14       sta $14    ; PRG $088FC
  $88FE: c8          iny    ; PRG $088FE
  $88FF: b1 06       lda ($06),y    ; PRG $088FF
  $8901: 85 15       sta $15    ; PRG $08901
  $8903: a0 14       ldy #$14    ; PRG $08903
  $8905: a2 18       ldx #$18    ; PRG $08905
  $8907: a9 10       lda #$10    ; PRG $08907
  $8909: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $08909
  $890C: 18          clc    ; PRG $0890C
  $890D: a5 10       lda $10    ; PRG $0890D
  $890F: a0 f2       ldy #$f2    ; PRG $0890F
  $8911: 71 06       adc ($06),y    ; PRG $08911
  $8913: 85 18       sta $18    ; PRG $08913
  $8915: a5 11       lda $11    ; PRG $08915
  $8917: c8          iny    ; PRG $08917
  $8918: 71 06       adc ($06),y    ; PRG $08918
  $891A: 85 19       sta $19    ; PRG $0891A
  $891C: 18          clc    ; PRG $0891C
  $891D: a5 18       lda $18    ; PRG $0891D
  $891F: 69 e1       adc #$e1    ; PRG $0891F
  $8921: 85 14       sta $14    ; PRG $08921
  $8923: a5 19       lda $19    ; PRG $08923
  $8925: 69 9a       adc #$9a    ; PRG $08925
  $8927: 85 15       sta $15    ; PRG $08927
  $8929: a1 14       lda ($14,x)    ; PRG $08929
  $892B: 85 18       sta $18    ; PRG $0892B
  $892D: 86 19       stx $19    ; PRG $0892D
  $892F: 18          clc    ; PRG $0892F
  $8930: a5 18       lda $18    ; PRG $08930
  $8932: a0 fe       ldy #$fe    ; PRG $08932
  $8934: 71 06       adc ($06),y    ; PRG $08934
  $8936: 85 14       sta $14    ; PRG $08936
  $8938: a5 19       lda $19    ; PRG $08938
  $893A: c8          iny    ; PRG $0893A
  $893B: 71 06       adc ($06),y    ; PRG $0893B
  $893D: 85 15       sta $15    ; PRG $0893D
  $893F: a1 14       lda ($14,x)    ; PRG $0893F
  $8941: 85 18       sta $18    ; PRG $08941
  $8943: 86 19       stx $19    ; PRG $08943
  $8945: a5 18       lda $18    ; PRG $08945
  $8947: a0 f6       ldy #$f6    ; PRG $08947
  $8949: d1 06       cmp ($06),y    ; PRG $08949
  $894B: a5 19       lda $19    ; PRG $0894B
  $894D: c8          iny    ; PRG $0894D
  $894E: f1 06       sbc ($06),y    ; PRG $0894E
  $8950: 90 03       bcc $8955    ; PRG $08950
  $8952: 4c c2 89    jmp $89c2    ; PRG $08952
  $8955: a0 f2       ldy #$f2    ; PRG $08955
  $8957: b1 06       lda ($06),y    ; PRG $08957
  $8959: a0 f4       ldy #$f4    ; PRG $08959
  $895B: 91 06       sta ($06),y    ; PRG $0895B
  $895D: 88          dey    ; PRG $0895D
  $895E: b1 06       lda ($06),y    ; PRG $0895E
  $8960: a0 f5       ldy #$f5    ; PRG $08960
  $8962: 91 06       sta ($06),y    ; PRG $08962
  $8964: a9 02       lda #$02    ; PRG $08964
  $8966: 85 18       sta $18    ; PRG $08966
  $8968: 86 19       stx $19    ; PRG $08968
  $896A: a0 f8       ldy #$f8    ; PRG $0896A
  $896C: b1 06       lda ($06),y    ; PRG $0896C
  $896E: 85 14       sta $14    ; PRG $0896E
  $8970: c8          iny    ; PRG $08970
  $8971: b1 06       lda ($06),y    ; PRG $08971
  $8973: 85 15       sta $15    ; PRG $08973
  $8975: a0 14       ldy #$14    ; PRG $08975
  $8977: a2 18       ldx #$18    ; PRG $08977
  $8979: a9 10       lda #$10    ; PRG $08979
  $897B: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0897B
  $897E: 18          clc    ; PRG $0897E
  $897F: a5 10       lda $10    ; PRG $0897F
  $8981: a0 f2       ldy #$f2    ; PRG $08981
  $8983: 71 06       adc ($06),y    ; PRG $08983
  $8985: 85 18       sta $18    ; PRG $08985
  $8987: a5 11       lda $11    ; PRG $08987
  $8989: c8          iny    ; PRG $08989
  $898A: 71 06       adc ($06),y    ; PRG $0898A
  $898C: 85 19       sta $19    ; PRG $0898C
  $898E: 18          clc    ; PRG $0898E
  $898F: a5 18       lda $18    ; PRG $0898F
  $8991: 69 e1       adc #$e1    ; PRG $08991
  $8993: 85 14       sta $14    ; PRG $08993
  $8995: a5 19       lda $19    ; PRG $08995
  $8997: 69 9a       adc #$9a    ; PRG $08997
  $8999: 85 15       sta $15    ; PRG $08999
  $899B: a1 14       lda ($14,x)    ; PRG $0899B
  $899D: 85 18       sta $18    ; PRG $0899D
  $899F: 86 19       stx $19    ; PRG $0899F
  $89A1: 18          clc    ; PRG $089A1
  $89A2: a5 18       lda $18    ; PRG $089A2
  $89A4: a0 fe       ldy #$fe    ; PRG $089A4
  $89A6: 71 06       adc ($06),y    ; PRG $089A6
  $89A8: 85 14       sta $14    ; PRG $089A8
  $89AA: a5 19       lda $19    ; PRG $089AA
  $89AC: c8          iny    ; PRG $089AC
  $89AD: 71 06       adc ($06),y    ; PRG $089AD
  $89AF: 85 15       sta $15    ; PRG $089AF
  $89B1: a1 14       lda ($14,x)    ; PRG $089B1
  $89B3: 85 18       sta $18    ; PRG $089B3
  $89B5: 86 19       stx $19    ; PRG $089B5
  $89B7: a5 18       lda $18    ; PRG $089B7
  $89B9: a0 f6       ldy #$f6    ; PRG $089B9
  $89BB: 91 06       sta ($06),y    ; PRG $089BB
  $89BD: a5 19       lda $19    ; PRG $089BD
  $89BF: c8          iny    ; PRG $089BF
  $89C0: 91 06       sta ($06),y    ; PRG $089C0
  $89C2: 4c bd 88    jmp $88bd    ; PRG $089C2
  $89C5: a0 f6       ldy #$f6    ; PRG $089C5
  $89C7: b1 06       lda ($06),y    ; PRG $089C7
  $89C9: c9 33       cmp #$33    ; PRG $089C9
  $89CB: c8          iny    ; PRG $089CB
  $89CC: b1 06       lda ($06),y    ; PRG $089CC
  $89CE: e9 00       sbc #$00    ; PRG $089CE
  $89D0: 90 03       bcc $89d5    ; PRG $089D0
  $89D2: 4c a8 8a    jmp $8aa8    ; PRG $089D2
  $89D5: a9 05       lda #$05    ; PRG $089D5
  $89D7: 85 18       sta $18    ; PRG $089D7
  $89D9: 86 19       stx $19    ; PRG $089D9
  $89DB: a0 f4       ldy #$f4    ; PRG $089DB
  $89DD: b1 06       lda ($06),y    ; PRG $089DD
  $89DF: 85 14       sta $14    ; PRG $089DF
  $89E1: c8          iny    ; PRG $089E1
  $89E2: b1 06       lda ($06),y    ; PRG $089E2
  $89E4: 85 15       sta $15    ; PRG $089E4
  $89E6: a0 14       ldy #$14    ; PRG $089E6
  $89E8: a2 18       ldx #$18    ; PRG $089E8
  $89EA: a9 10       lda #$10    ; PRG $089EA
  $89EC: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $089EC
  $89EF: 18          clc    ; PRG $089EF
  $89F0: a9 04       lda #$04    ; PRG $089F0
  $89F2: 65 10       adc $10    ; PRG $089F2
  $89F4: a0 f2       ldy #$f2    ; PRG $089F4
  $89F6: 91 06       sta ($06),y    ; PRG $089F6
  $89F8: 8a          txa    ; PRG $089F8
  $89F9: 65 11       adc $11    ; PRG $089F9
  $89FB: c8          iny    ; PRG $089FB
  $89FC: 91 06       sta ($06),y    ; PRG $089FC
  $89FE: a9 04       lda #$04    ; PRG $089FE
  $8A00: 85 18       sta $18    ; PRG $08A00
  $8A02: 86 19       stx $19    ; PRG $08A02
  $8A04: 88          dey    ; PRG $08A04
  $8A05: b1 06       lda ($06),y    ; PRG $08A05
  $8A07: 85 14       sta $14    ; PRG $08A07
  $8A09: c8          iny    ; PRG $08A09
  $8A0A: b1 06       lda ($06),y    ; PRG $08A0A
  $8A0C: 85 15       sta $15    ; PRG $08A0C
  $8A0E: a0 14       ldy #$14    ; PRG $08A0E
  $8A10: a2 18       ldx #$18    ; PRG $08A10
  $8A12: a9 10       lda #$10    ; PRG $08A12
  $8A14: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $08A14
  $8A17: 18          clc    ; PRG $08A17
  $8A18: a5 10       lda $10    ; PRG $08A18
  $8A1A: 69 62       adc #$62    ; PRG $08A1A
  $8A1C: a0 ee       ldy #$ee    ; PRG $08A1C
  $8A1E: 91 06       sta ($06),y    ; PRG $08A1E
  $8A20: a5 11       lda $11    ; PRG $08A20
  $8A22: 69 66       adc #$66    ; PRG $08A22
  $8A24: c8          iny    ; PRG $08A24
  $8A25: 91 06       sta ($06),y    ; PRG $08A25
  $8A27: 18          clc    ; PRG $08A27
  $8A28: a9 20       lda #$20    ; PRG $08A28
  $8A2A: 88          dey    ; PRG $08A2A
  $8A2B: 71 06       adc ($06),y    ; PRG $08A2B
  $8A2D: a0 ec       ldy #$ec    ; PRG $08A2D
  $8A2F: 91 06       sta ($06),y    ; PRG $08A2F
  $8A31: 8a          txa    ; PRG $08A31
  $8A32: a0 ef       ldy #$ef    ; PRG $08A32
  $8A34: 71 06       adc ($06),y    ; PRG $08A34
  $8A36: a0 ed       ldy #$ed    ; PRG $08A36
  $8A38: 91 06       sta ($06),y    ; PRG $08A38
  $8A3A: 4c 5b 8a    jmp $8a5b    ; PRG $08A3A
  $8A3D: 18          clc    ; PRG $08A3D
  $8A3E: a9 01       lda #$01    ; PRG $08A3E
  $8A40: a0 f2       ldy #$f2    ; PRG $08A40
  $8A42: 71 06       adc ($06),y    ; PRG $08A42
  $8A44: 91 06       sta ($06),y    ; PRG $08A44
  $8A46: 8a          txa    ; PRG $08A46
  $8A47: c8          iny    ; PRG $08A47
  $8A48: 71 06       adc ($06),y    ; PRG $08A48
  $8A4A: 91 06       sta ($06),y    ; PRG $08A4A
  $8A4C: 18          clc    ; PRG $08A4C
  $8A4D: a9 10       lda #$10    ; PRG $08A4D
  $8A4F: a0 ee       ldy #$ee    ; PRG $08A4F
  $8A51: 71 06       adc ($06),y    ; PRG $08A51
  $8A53: 91 06       sta ($06),y    ; PRG $08A53
  $8A55: 8a          txa    ; PRG $08A55
  $8A56: c8          iny    ; PRG $08A56
  $8A57: 71 06       adc ($06),y    ; PRG $08A57
  $8A59: 91 06       sta ($06),y    ; PRG $08A59
  $8A5B: a0 ee       ldy #$ee    ; PRG $08A5B
  $8A5D: b1 06       lda ($06),y    ; PRG $08A5D
  $8A5F: a0 ec       ldy #$ec    ; PRG $08A5F
  $8A61: d1 06       cmp ($06),y    ; PRG $08A61
  $8A63: a0 ef       ldy #$ef    ; PRG $08A63
  $8A65: b1 06       lda ($06),y    ; PRG $08A65
  $8A67: a0 ed       ldy #$ed    ; PRG $08A67
  $8A69: f1 06       sbc ($06),y    ; PRG $08A69
  $8A6B: 90 03       bcc $8a70    ; PRG $08A6B
  $8A6D: 4c a8 8a    jmp $8aa8    ; PRG $08A6D
  $8A70: c8          iny    ; PRG $08A70
  $8A71: b1 06       lda ($06),y    ; PRG $08A71
  $8A73: 85 18       sta $18    ; PRG $08A73
  $8A75: c8          iny    ; PRG $08A75
  $8A76: b1 06       lda ($06),y    ; PRG $08A76
  $8A78: 85 19       sta $19    ; PRG $08A78
  $8A7A: a0 0f       ldy #$0f    ; PRG $08A7A
  $8A7C: b1 18       lda ($18),y    ; PRG $08A7C
  $8A7E: 85 14       sta $14    ; PRG $08A7E
  $8A80: 86 15       stx $15    ; PRG $08A80
  $8A82: a5 14       lda $14    ; PRG $08A82
  $8A84: 29 08       and #$08    ; PRG $08A84
  $8A86: f0 03       beq $8a8b    ; PRG $08A86
  $8A88: 4c a5 8a    jmp $8aa5   ; nat_6_0aa5    ; PRG $08A88
  $8A8B: 8a          txa    ; PRG $08A8B
  $8A8C: a0 f0       ldy #$f0    ; PRG $08A8C
  $8A8E: 91 06       sta ($06),y    ; PRG $08A8E
  $8A90: c8          iny    ; PRG $08A90
  $8A91: 91 06       sta ($06),y    ; PRG $08A91
  $8A93: c8          iny    ; PRG $08A93
  $8A94: b1 06       lda ($06),y    ; PRG $08A94
  $8A96: a0 fa       ldy #$fa    ; PRG $08A96
  $8A98: 91 06       sta ($06),y    ; PRG $08A98
  $8A9A: a0 f3       ldy #$f3    ; PRG $08A9A
  $8A9C: b1 06       lda ($06),y    ; PRG $08A9C
  $8A9E: a0 fb       ldy #$fb    ; PRG $08A9E
  $8AA0: 91 06       sta ($06),y    ; PRG $08AA0
  $8AA2: 4c a8 8a    jmp $8aa8    ; PRG $08AA2
  $8AA5: 4c 3d 8a    jmp $8a3d    ; PRG $08AA5
  $8AA8: a0 f0       ldy #$f0    ; PRG $08AA8
  $8AAA: b1 06       lda ($06),y    ; PRG $08AAA
  $8AAC: c8          iny    ; PRG $08AAC
  $8AAD: 11 06       ora ($06),y    ; PRG $08AAD
  $8AAF: d0 03       bne $8ab4    ; PRG $08AAF
  $8AB1: 4c 67 8b    jmp $8b67    ; PRG $08AB1
  $8AB4: a9 10       lda #$10    ; PRG $08AB4
  $8AB6: c8          iny    ; PRG $08AB6
  $8AB7: 91 06       sta ($06),y    ; PRG $08AB7
  $8AB9: 8a          txa    ; PRG $08AB9
  $8ABA: c8          iny    ; PRG $08ABA
  $8ABB: 91 06       sta ($06),y    ; PRG $08ABB
  $8ABD: a9 04       lda #$04    ; PRG $08ABD
  $8ABF: 85 18       sta $18    ; PRG $08ABF
  $8AC1: 86 19       stx $19    ; PRG $08AC1
  $8AC3: 88          dey    ; PRG $08AC3
  $8AC4: b1 06       lda ($06),y    ; PRG $08AC4
  $8AC6: 85 14       sta $14    ; PRG $08AC6
  $8AC8: c8          iny    ; PRG $08AC8
  $8AC9: b1 06       lda ($06),y    ; PRG $08AC9
  $8ACB: 85 15       sta $15    ; PRG $08ACB
  $8ACD: a0 14       ldy #$14    ; PRG $08ACD
  $8ACF: a2 18       ldx #$18    ; PRG $08ACF
  $8AD1: a9 10       lda #$10    ; PRG $08AD1
  $8AD3: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $08AD3
  $8AD6: 18          clc    ; PRG $08AD6
  $8AD7: a5 10       lda $10    ; PRG $08AD7
  $8AD9: 69 62       adc #$62    ; PRG $08AD9
  $8ADB: a0 ee       ldy #$ee    ; PRG $08ADB
  $8ADD: 91 06       sta ($06),y    ; PRG $08ADD
  $8ADF: a5 11       lda $11    ; PRG $08ADF
  $8AE1: 69 66       adc #$66    ; PRG $08AE1
  $8AE3: c8          iny    ; PRG $08AE3
  $8AE4: 91 06       sta ($06),y    ; PRG $08AE4
  $8AE6: 18          clc    ; PRG $08AE6
  $8AE7: a9 50       lda #$50    ; PRG $08AE7
  $8AE9: 88          dey    ; PRG $08AE9
  $8AEA: 71 06       adc ($06),y    ; PRG $08AEA
  $8AEC: a0 ec       ldy #$ec    ; PRG $08AEC
  $8AEE: 91 06       sta ($06),y    ; PRG $08AEE
  $8AF0: 8a          txa    ; PRG $08AF0
  $8AF1: a0 ef       ldy #$ef    ; PRG $08AF1
  $8AF3: 71 06       adc ($06),y    ; PRG $08AF3
  $8AF5: a0 ed       ldy #$ed    ; PRG $08AF5
  $8AF7: 91 06       sta ($06),y    ; PRG $08AF7
  $8AF9: 4c 1a 8b    jmp $8b1a    ; PRG $08AF9
  $8AFC: 18          clc    ; PRG $08AFC
  $8AFD: a9 01       lda #$01    ; PRG $08AFD
  $8AFF: a0 f2       ldy #$f2    ; PRG $08AFF
  $8B01: 71 06       adc ($06),y    ; PRG $08B01
  $8B03: 91 06       sta ($06),y    ; PRG $08B03
  $8B05: 8a          txa    ; PRG $08B05
  $8B06: c8          iny    ; PRG $08B06
  $8B07: 71 06       adc ($06),y    ; PRG $08B07
  $8B09: 91 06       sta ($06),y    ; PRG $08B09
  $8B0B: 18          clc    ; PRG $08B0B
  $8B0C: a9 10       lda #$10    ; PRG $08B0C
  $8B0E: a0 ee       ldy #$ee    ; PRG $08B0E
  $8B10: 71 06       adc ($06),y    ; PRG $08B10
  $8B12: 91 06       sta ($06),y    ; PRG $08B12
  $8B14: 8a          txa    ; PRG $08B14
  $8B15: c8          iny    ; PRG $08B15
  $8B16: 71 06       adc ($06),y    ; PRG $08B16
  $8B18: 91 06       sta ($06),y    ; PRG $08B18
  $8B1A: a0 ee       ldy #$ee    ; PRG $08B1A
  $8B1C: b1 06       lda ($06),y    ; PRG $08B1C
  $8B1E: a0 ec       ldy #$ec    ; PRG $08B1E
  $8B20: d1 06       cmp ($06),y    ; PRG $08B20
  $8B22: a0 ef       ldy #$ef    ; PRG $08B22
  $8B24: b1 06       lda ($06),y    ; PRG $08B24
  $8B26: a0 ed       ldy #$ed    ; PRG $08B26
  $8B28: f1 06       sbc ($06),y    ; PRG $08B28
  $8B2A: 90 03       bcc $8b2f    ; PRG $08B2A
  $8B2C: 4c 67 8b    jmp $8b67    ; PRG $08B2C
  $8B2F: c8          iny    ; PRG $08B2F
  $8B30: b1 06       lda ($06),y    ; PRG $08B30
  $8B32: 85 18       sta $18    ; PRG $08B32
  $8B34: c8          iny    ; PRG $08B34
  $8B35: b1 06       lda ($06),y    ; PRG $08B35
  $8B37: 85 19       sta $19    ; PRG $08B37
  $8B39: a0 0f       ldy #$0f    ; PRG $08B39
  $8B3B: b1 18       lda ($18),y    ; PRG $08B3B
  $8B3D: 85 14       sta $14    ; PRG $08B3D
  $8B3F: 86 15       stx $15    ; PRG $08B3F
  $8B41: a5 14       lda $14    ; PRG $08B41
  $8B43: 29 08       and #$08    ; PRG $08B43
  $8B45: f0 03       beq $8b4a    ; PRG $08B45
  $8B47: 4c 64 8b    jmp $8b64    ; PRG $08B47
  $8B4A: 8a          txa    ; PRG $08B4A
  $8B4B: a0 f0       ldy #$f0    ; PRG $08B4B
  $8B4D: 91 06       sta ($06),y    ; PRG $08B4D
  $8B4F: c8          iny    ; PRG $08B4F
  $8B50: 91 06       sta ($06),y    ; PRG $08B50
  $8B52: c8          iny    ; PRG $08B52
  $8B53: b1 06       lda ($06),y    ; PRG $08B53
  $8B55: a0 fa       ldy #$fa    ; PRG $08B55
  $8B57: 91 06       sta ($06),y    ; PRG $08B57
  $8B59: a0 f3       ldy #$f3    ; PRG $08B59
  $8B5B: b1 06       lda ($06),y    ; PRG $08B5B
  $8B5D: a0 fb       ldy #$fb    ; PRG $08B5D
  $8B5F: 91 06       sta ($06),y    ; PRG $08B5F
  $8B61: 4c 67 8b    jmp $8b67    ; PRG $08B61
  $8B64: 4c fc 8a    jmp $8afc    ; PRG $08B64
  $8B67: a0 f0       ldy #$f0    ; PRG $08B67
  $8B69: b1 06       lda ($06),y    ; PRG $08B69
  $8B6B: c8          iny    ; PRG $08B6B
  $8B6C: 11 06       ora ($06),y    ; PRG $08B6C
  $8B6E: d0 03       bne $8b73    ; PRG $08B6E
  $8B70: 4c 74 8b    jmp $8b74    ; PRG $08B70
  $8B73: 60          rts    ; PRG $08B73
  $8B74: a0 fa       ldy #$fa    ; PRG $08B74
  $8B76: b1 06       lda ($06),y    ; PRG $08B76
  $8B78: 8d 55 70    sta $7055    ; PRG $08B78
  $8B7B: a9 01       lda #$01    ; PRG $08B7B
  $8B7D: 8d 5f 70    sta $705f    ; PRG $08B7D
  $8B80: 60          rts    ; PRG $08B80

; ---- sub_4_0b87  [stub]  <- (entry: bytecode/OS via $E299)
nat_4_0b81: jsr $E299                    ; 4:8B81  native-call prologue
            .db $00 $f6 $ff            ; inline: argcount $00, frame $fff6
  $8B87: a9 42       lda #$42    ; PRG $08B87
  $8B89: a0 fc       ldy #$fc    ; PRG $08B89
  $8B8B: 91 06       sta ($06),y    ; PRG $08B8B
  $8B8D: a9 65       lda #$65    ; PRG $08B8D
  $8B8F: c8          iny    ; PRG $08B8F
  $8B90: 91 06       sta ($06),y    ; PRG $08B90
  $8B92: 18          clc    ; PRG $08B92
  $8B93: a9 1f       lda #$1f    ; PRG $08B93
  $8B95: 69 42       adc #$42    ; PRG $08B95
  $8B97: a0 fa       ldy #$fa    ; PRG $08B97
  $8B99: 91 06       sta ($06),y    ; PRG $08B99
  $8B9B: a9 01       lda #$01    ; PRG $08B9B
  $8B9D: 69 65       adc #$65    ; PRG $08B9D
  $8B9F: c8          iny    ; PRG $08B9F
  $8BA0: 91 06       sta ($06),y    ; PRG $08BA0
  $8BA2: 8a          txa    ; PRG $08BA2
  $8BA3: a0 f6       ldy #$f6    ; PRG $08BA3
  $8BA5: 91 06       sta ($06),y    ; PRG $08BA5
  $8BA7: c8          iny    ; PRG $08BA7
  $8BA8: 91 06       sta ($06),y    ; PRG $08BA8
  $8BAA: a9 01       lda #$01    ; PRG $08BAA
  $8BAC: 85 18       sta $18    ; PRG $08BAC
  $8BAE: 86 19       stx $19    ; PRG $08BAE
  $8BB0: a2 18       ldx #$18    ; PRG $08BB0
  $8BB2: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $08BB2
  $8BB5: 48          pha    ; PRG $08BB5
  $8BB6: a9 5a       lda #$5a    ; PRG $08BB6
  $8BB8: 48          pha    ; PRG $08BB8
  $8BB9: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $08BB9
  $8BBC: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $08BBC
  $8BBF: a2 18       ldx #$18    ; PRG $08BBF
  $8BC1: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $08BC1
  $8BC4: a0 08       ldy #$08    ; PRG $08BC4
  $8BC6: a2 18       ldx #$18    ; PRG $08BC6
  $8BC8: a9 14       lda #$14    ; PRG $08BC8
  $8BCA: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $08BCA
  $8BCD: 18          clc    ; PRG $08BCD
  $8BCE: a5 14       lda $14    ; PRG $08BCE
  $8BD0: 69 ff       adc #$ff    ; PRG $08BD0
  $8BD2: 85 18       sta $18    ; PRG $08BD2
  $8BD4: a5 15       lda $15    ; PRG $08BD4
  $8BD6: 69 a4       adc #$a4    ; PRG $08BD6
  $8BD8: 85 19       sta $19    ; PRG $08BD8
  $8BDA: a5 19       lda $19    ; PRG $08BDA
  $8BDC: 48          pha    ; PRG $08BDC
  $8BDD: a5 18       lda $18    ; PRG $08BDD
  $8BDF: 48          pha    ; PRG $08BDF
  $8BE0: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $08BE0
  $8BE3: 26 d3 04    .db $26 $d3 $04  -> vm $D326 argc 4    ; PRG $08BE3
  $8BE6: a5 08       lda $08    ; PRG $08BE6
  $8BE8: a0 fe       ldy #$fe    ; PRG $08BE8
  $8BEA: 91 06       sta ($06),y    ; PRG $08BEA
  $8BEC: a5 09       lda $09    ; PRG $08BEC
  $8BEE: c8          iny    ; PRG $08BEE
  $8BEF: 91 06       sta ($06),y    ; PRG $08BEF
  $8BF1: a0 fc       ldy #$fc    ; PRG $08BF1
  $8BF3: b1 06       lda ($06),y    ; PRG $08BF3
  $8BF5: a0 f8       ldy #$f8    ; PRG $08BF5
  $8BF7: 91 06       sta ($06),y    ; PRG $08BF7
  $8BF9: a0 fd       ldy #$fd    ; PRG $08BF9
  $8BFB: b1 06       lda ($06),y    ; PRG $08BFB
  $8BFD: a0 f9       ldy #$f9    ; PRG $08BFD
  $8BFF: 91 06       sta ($06),y    ; PRG $08BFF
  $8C01: 4c 13 8c    jmp $8c13    ; PRG $08C01
  $8C04: 18          clc    ; PRG $08C04
  $8C05: a9 07       lda #$07    ; PRG $08C05
  $8C07: a0 f8       ldy #$f8    ; PRG $08C07
  $8C09: 71 06       adc ($06),y    ; PRG $08C09
  $8C0B: 91 06       sta ($06),y    ; PRG $08C0B
  $8C0D: 8a          txa    ; PRG $08C0D
  $8C0E: c8          iny    ; PRG $08C0E
  $8C0F: 71 06       adc ($06),y    ; PRG $08C0F
  $8C11: 91 06       sta ($06),y    ; PRG $08C11
  $8C13: a0 f8       ldy #$f8    ; PRG $08C13
  $8C15: b1 06       lda ($06),y    ; PRG $08C15
  $8C17: a0 fa       ldy #$fa    ; PRG $08C17
  $8C19: d1 06       cmp ($06),y    ; PRG $08C19
  $8C1B: 88          dey    ; PRG $08C1B
  $8C1C: b1 06       lda ($06),y    ; PRG $08C1C
  $8C1E: a0 fb       ldy #$fb    ; PRG $08C1E
  $8C20: f1 06       sbc ($06),y    ; PRG $08C20
  $8C22: 90 03       bcc $8c27    ; PRG $08C22
  $8C24: 4c 57 8c    jmp $8c57    ; PRG $08C24
  $8C27: a0 f8       ldy #$f8    ; PRG $08C27
  $8C29: b1 06       lda ($06),y    ; PRG $08C29
  $8C2B: 85 18       sta $18    ; PRG $08C2B
  $8C2D: c8          iny    ; PRG $08C2D
  $8C2E: b1 06       lda ($06),y    ; PRG $08C2E
  $8C30: 85 19       sta $19    ; PRG $08C30
  $8C32: a1 18       lda ($18,x)    ; PRG $08C32
  $8C34: a0 fe       ldy #$fe    ; PRG $08C34
  $8C36: d1 06       cmp ($06),y    ; PRG $08C36
  $8C38: d0 08       bne $8c42    ; PRG $08C38
  $8C3A: a0 01       ldy #$01    ; PRG $08C3A
  $8C3C: b1 18       lda ($18),y    ; PRG $08C3C
  $8C3E: a0 ff       ldy #$ff    ; PRG $08C3E
  $8C40: d1 06       cmp ($06),y    ; PRG $08C40
  $8C42: f0 03       beq $8c47    ; PRG $08C42
  $8C44: 4c 54 8c    jmp $8c54    ; PRG $08C44
  $8C47: a9 01       lda #$01    ; PRG $08C47
  $8C49: a0 f6       ldy #$f6    ; PRG $08C49
  $8C4B: 91 06       sta ($06),y    ; PRG $08C4B
  $8C4D: 8a          txa    ; PRG $08C4D
  $8C4E: c8          iny    ; PRG $08C4E
  $8C4F: 91 06       sta ($06),y    ; PRG $08C4F
  $8C51: 4c 57 8c    jmp $8c57    ; PRG $08C51
  $8C54: 4c 04 8c    jmp $8c04    ; PRG $08C54
  $8C57: a0 f6       ldy #$f6    ; PRG $08C57
  $8C59: b1 06       lda ($06),y    ; PRG $08C59
  $8C5B: c8          iny    ; PRG $08C5B
  $8C5C: 11 06       ora ($06),y    ; PRG $08C5C
  $8C5E: f0 03       beq $8c63    ; PRG $08C5E
  $8C60: 4c a2 8b    jmp $8ba2    ; PRG $08C60
  $8C63: a0 0b       ldy #$0b    ; PRG $08C63
  $8C65: b1 04       lda ($04),y    ; PRG $08C65
  $8C67: 85 18       sta $18    ; PRG $08C67
  $8C69: c8          iny    ; PRG $08C69
  $8C6A: b1 04       lda ($04),y    ; PRG $08C6A
  $8C6C: 85 19       sta $19    ; PRG $08C6C
  $8C6E: a0 fe       ldy #$fe    ; PRG $08C6E
  $8C70: b1 06       lda ($06),y    ; PRG $08C70
  $8C72: 81 18       sta ($18,x)    ; PRG $08C72
  $8C74: c8          iny    ; PRG $08C74
  $8C75: b1 06       lda ($06),y    ; PRG $08C75
  $8C77: a0 01       ldy #$01    ; PRG $08C77
  $8C79: 91 18       sta ($18),y    ; PRG $08C79
  $8C7B: 60          rts    ; PRG $08C7B

; ---- sub_4_0c82  [stub]  <- (entry: bytecode/OS via $E299)
nat_4_0c7c: jsr $E299                    ; 4:8C7C  native-call prologue
            .db $00 $f6 $ff            ; inline: argcount $00, frame $fff6
  $8C82: a9 07       lda #$07    ; PRG $08C82
  $8C84: 85 18       sta $18    ; PRG $08C84
  $8C86: 86 19       stx $19    ; PRG $08C86
  $8C88: a0 0b       ldy #$0b    ; PRG $08C88
  $8C8A: b1 04       lda ($04),y    ; PRG $08C8A
  $8C8C: 85 14       sta $14    ; PRG $08C8C
  $8C8E: c8          iny    ; PRG $08C8E
  $8C8F: b1 04       lda ($04),y    ; PRG $08C8F
  $8C91: 85 15       sta $15    ; PRG $08C91
  $8C93: a0 14       ldy #$14    ; PRG $08C93
  $8C95: a2 18       ldx #$18    ; PRG $08C95
  $8C97: a9 10       lda #$10    ; PRG $08C97
  $8C99: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $08C99
  $8C9C: 18          clc    ; PRG $08C9C
  $8C9D: a5 10       lda $10    ; PRG $08C9D
  $8C9F: 69 42       adc #$42    ; PRG $08C9F
  $8CA1: a0 fe       ldy #$fe    ; PRG $08CA1
  $8CA3: 91 06       sta ($06),y    ; PRG $08CA3
  $8CA5: a5 11       lda $11    ; PRG $08CA5
  $8CA7: 69 65       adc #$65    ; PRG $08CA7
  $8CA9: c8          iny    ; PRG $08CA9
  $8CAA: 91 06       sta ($06),y    ; PRG $08CAA
  $8CAC: a9 42       lda #$42    ; PRG $08CAC
  $8CAE: a0 fc       ldy #$fc    ; PRG $08CAE
  $8CB0: 91 06       sta ($06),y    ; PRG $08CB0
  $8CB2: a9 65       lda #$65    ; PRG $08CB2
  $8CB4: c8          iny    ; PRG $08CB4
  $8CB5: 91 06       sta ($06),y    ; PRG $08CB5
  $8CB7: a0 ff       ldy #$ff    ; PRG $08CB7
  $8CB9: b1 06       lda ($06),y    ; PRG $08CB9
  $8CBB: 48          pha    ; PRG $08CBB
  $8CBC: 88          dey    ; PRG $08CBC
  $8CBD: b1 06       lda ($06),y    ; PRG $08CBD
  $8CBF: 48          pha    ; PRG $08CBF
  $8CC0: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $08CC0
  $8CC3: 81 8b 04    .db $81 $8b $04  -> vm $8B81 argc 4    ; PRG $08CC3
  $8CC6: a0 fe       ldy #$fe    ; PRG $08CC6
  $8CC8: b1 06       lda ($06),y    ; PRG $08CC8
  $8CCA: 85 18       sta $18    ; PRG $08CCA
  $8CCC: c8          iny    ; PRG $08CCC
  $8CCD: b1 06       lda ($06),y    ; PRG $08CCD
  $8CCF: 85 19       sta $19    ; PRG $08CCF
  $8CD1: a2 18       ldx #$18    ; PRG $08CD1
  $8CD3: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $08CD3
  $8CD6: 48          pha    ; PRG $08CD6
  $8CD7: a9 32       lda #$32    ; PRG $08CD7
  $8CD9: 48          pha    ; PRG $08CD9
  $8CDA: 8a          txa    ; PRG $08CDA
  $8CDB: 48          pha    ; PRG $08CDB
  $8CDC: a9 05       lda #$05    ; PRG $08CDC
  $8CDE: 48          pha    ; PRG $08CDE
  $8CDF: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $08CDF
  $8CE2: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $08CE2
  $8CE5: a0 fc       ldy #$fc    ; PRG $08CE5
  $8CE7: b1 06       lda ($06),y    ; PRG $08CE7
  $8CE9: 85 18       sta $18    ; PRG $08CE9
  $8CEB: c8          iny    ; PRG $08CEB
  $8CEC: b1 06       lda ($06),y    ; PRG $08CEC
  $8CEE: 85 19       sta $19    ; PRG $08CEE
  $8CF0: a0 02       ldy #$02    ; PRG $08CF0
  $8CF2: b1 18       lda ($18),y    ; PRG $08CF2
  $8CF4: 85 14       sta $14    ; PRG $08CF4
  $8CF6: 86 15       stx $15    ; PRG $08CF6
  $8CF8: 18          clc    ; PRG $08CF8
  $8CF9: a5 14       lda $14    ; PRG $08CF9
  $8CFB: 65 08       adc $08    ; PRG $08CFB
  $8CFD: 85 18       sta $18    ; PRG $08CFD
  $8CFF: a5 15       lda $15    ; PRG $08CFF
  $8D01: 65 09       adc $09    ; PRG $08D01
  $8D03: 85 19       sta $19    ; PRG $08D03
  $8D05: a5 19       lda $19    ; PRG $08D05
  $8D07: 48          pha    ; PRG $08D07
  $8D08: a5 18       lda $18    ; PRG $08D08
  $8D0A: 48          pha    ; PRG $08D0A
  $8D0B: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $08D0B
  $8D0E: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $08D0E
  $8D11: a2 18       ldx #$18    ; PRG $08D11
  $8D13: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $08D13
  $8D16: a5 08       lda $08    ; PRG $08D16
  $8D18: c8          iny    ; PRG $08D18
  $8D19: 91 18       sta ($18),y    ; PRG $08D19
  $8D1B: a0 fe       ldy #$fe    ; PRG $08D1B
  $8D1D: b1 06       lda ($06),y    ; PRG $08D1D
  $8D1F: 85 18       sta $18    ; PRG $08D1F
  $8D21: c8          iny    ; PRG $08D21
  $8D22: b1 06       lda ($06),y    ; PRG $08D22
  $8D24: 85 19       sta $19    ; PRG $08D24
  $8D26: a2 18       ldx #$18    ; PRG $08D26
  $8D28: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $08D28
  $8D2B: 48          pha    ; PRG $08D2B
  $8D2C: a9 32       lda #$32    ; PRG $08D2C
  $8D2E: 48          pha    ; PRG $08D2E
  $8D2F: 8a          txa    ; PRG $08D2F
  $8D30: 48          pha    ; PRG $08D30
  $8D31: a9 05       lda #$05    ; PRG $08D31
  $8D33: 48          pha    ; PRG $08D33
  $8D34: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $08D34
  $8D37: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $08D37
  $8D3A: a0 fc       ldy #$fc    ; PRG $08D3A
  $8D3C: b1 06       lda ($06),y    ; PRG $08D3C
  $8D3E: 85 18       sta $18    ; PRG $08D3E
  $8D40: c8          iny    ; PRG $08D40
  $8D41: b1 06       lda ($06),y    ; PRG $08D41
  $8D43: 85 19       sta $19    ; PRG $08D43
  $8D45: a0 03       ldy #$03    ; PRG $08D45
  $8D47: b1 18       lda ($18),y    ; PRG $08D47
  $8D49: 85 14       sta $14    ; PRG $08D49
  $8D4B: 86 15       stx $15    ; PRG $08D4B
  $8D4D: 18          clc    ; PRG $08D4D
  $8D4E: a5 14       lda $14    ; PRG $08D4E
  $8D50: 65 08       adc $08    ; PRG $08D50
  $8D52: 85 18       sta $18    ; PRG $08D52
  $8D54: a5 15       lda $15    ; PRG $08D54
  $8D56: 65 09       adc $09    ; PRG $08D56
  $8D58: 85 19       sta $19    ; PRG $08D58
  $8D5A: a5 19       lda $19    ; PRG $08D5A
  $8D5C: 48          pha    ; PRG $08D5C
  $8D5D: a5 18       lda $18    ; PRG $08D5D
  $8D5F: 48          pha    ; PRG $08D5F
  $8D60: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $08D60
  $8D63: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $08D63
  $8D66: a2 18       ldx #$18    ; PRG $08D66
  $8D68: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $08D68
  $8D6B: a5 08       lda $08    ; PRG $08D6B
  $8D6D: a0 03       ldy #$03    ; PRG $08D6D
  $8D6F: 91 18       sta ($18),y    ; PRG $08D6F
  $8D71: a9 01       lda #$01    ; PRG $08D71
  $8D73: 85 18       sta $18    ; PRG $08D73
  $8D75: 86 19       stx $19    ; PRG $08D75
  $8D77: 18          clc    ; PRG $08D77
  $8D78: a9 ff       lda #$ff    ; PRG $08D78
  $8D7A: a0 0b       ldy #$0b    ; PRG $08D7A
  $8D7C: 71 04       adc ($04),y    ; PRG $08D7C
  $8D7E: 85 14       sta $14    ; PRG $08D7E
  $8D80: a9 ff       lda #$ff    ; PRG $08D80
  $8D82: c8          iny    ; PRG $08D82
  $8D83: 71 04       adc ($04),y    ; PRG $08D83
  $8D85: 85 15       sta $15    ; PRG $08D85
  $8D87: a0 14       ldy #$14    ; PRG $08D87
  $8D89: a2 18       ldx #$18    ; PRG $08D89
  $8D8B: a9 10       lda #$10    ; PRG $08D8B
  $8D8D: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $08D8D
  $8D90: 18          clc    ; PRG $08D90
  $8D91: a5 10       lda $10    ; PRG $08D91
  $8D93: 69 6e       adc #$6e    ; PRG $08D93
  $8D95: a0 f6       ldy #$f6    ; PRG $08D95
  $8D97: 91 06       sta ($06),y    ; PRG $08D97
  $8D99: a5 11       lda $11    ; PRG $08D99
  $8D9B: 69 6a       adc #$6a    ; PRG $08D9B
  $8D9D: c8          iny    ; PRG $08D9D
  $8D9E: 91 06       sta ($06),y    ; PRG $08D9E
  $8DA0: 88          dey    ; PRG $08DA0
  $8DA1: b1 06       lda ($06),y    ; PRG $08DA1
  $8DA3: 85 18       sta $18    ; PRG $08DA3
  $8DA5: c8          iny    ; PRG $08DA5
  $8DA6: b1 06       lda ($06),y    ; PRG $08DA6
  $8DA8: 85 19       sta $19    ; PRG $08DA8
  $8DAA: a2 18       ldx #$18    ; PRG $08DAA
  $8DAC: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $08DAC
  $8DAF: 48          pha    ; PRG $08DAF
  $8DB0: a9 14       lda #$14    ; PRG $08DB0
  $8DB2: 48          pha    ; PRG $08DB2
  $8DB3: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $08DB3
  $8DB6: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $08DB6
  $8DB9: a2 18       ldx #$18    ; PRG $08DB9
  $8DBB: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $08DBB
  $8DBE: a5 08       lda $08    ; PRG $08DBE
  $8DC0: 91 18       sta ($18),y    ; PRG $08DC0
  $8DC2: a0 f6       ldy #$f6    ; PRG $08DC2
  $8DC4: b1 06       lda ($06),y    ; PRG $08DC4
  $8DC6: 85 18       sta $18    ; PRG $08DC6
  $8DC8: c8          iny    ; PRG $08DC8
  $8DC9: b1 06       lda ($06),y    ; PRG $08DC9
  $8DCB: 85 19       sta $19    ; PRG $08DCB
  $8DCD: 8a          txa    ; PRG $08DCD
  $8DCE: 81 18       sta ($18,x)    ; PRG $08DCE
  $8DD0: a0 fe       ldy #$fe    ; PRG $08DD0
  $8DD2: b1 06       lda ($06),y    ; PRG $08DD2
  $8DD4: 85 18       sta $18    ; PRG $08DD4
  $8DD6: c8          iny    ; PRG $08DD6
  $8DD7: b1 06       lda ($06),y    ; PRG $08DD7
  $8DD9: 85 19       sta $19    ; PRG $08DD9
  $8DDB: a2 18       ldx #$18    ; PRG $08DDB
  $8DDD: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $08DDD
  $8DE0: 48          pha    ; PRG $08DE0
  $8DE1: 48          pha    ; PRG $08DE1
  $8DE2: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $08DE2
  $8DE5: d1 da 04    .db $d1 $da $04  -> vm $DAD1 argc 4    ; PRG $08DE5
  $8DE8: a2 18       ldx #$18    ; PRG $08DE8
  $8DEA: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $08DEA
  $8DED: a5 08       lda $08    ; PRG $08DED
  $8DEF: a0 04       ldy #$04    ; PRG $08DEF
  $8DF1: 91 18       sta ($18),y    ; PRG $08DF1
  $8DF3: a5 09       lda $09    ; PRG $08DF3
  $8DF5: c8          iny    ; PRG $08DF5
  $8DF6: 91 18       sta ($18),y    ; PRG $08DF6
  $8DF8: a0 fe       ldy #$fe    ; PRG $08DF8
  $8DFA: b1 06       lda ($06),y    ; PRG $08DFA
  $8DFC: 85 18       sta $18    ; PRG $08DFC
  $8DFE: c8          iny    ; PRG $08DFE
  $8DFF: b1 06       lda ($06),y    ; PRG $08DFF
  $8E01: 85 19       sta $19    ; PRG $08E01
  $8E03: a9 01       lda #$01    ; PRG $08E03
  $8E05: a0 06       ldy #$06    ; PRG $08E05
  $8E07: 11 18       ora ($18),y    ; PRG $08E07
  $8E09: 91 18       sta ($18),y    ; PRG $08E09
  $8E0B: 60          rts    ; PRG $08E0B

; ---- sub_4_0e12  [stub]  <- (entry: bytecode/OS via $E299)
nat_4_0e0c: jsr $E299                    ; 4:8E0C  native-call prologue
            .db $00 $ea $ff            ; inline: argcount $00, frame $ffea
  $8E12: 18          clc    ; PRG $08E12
  $8E13: a9 f6       lda #$f6    ; PRG $08E13
  $8E15: 65 06       adc $06    ; PRG $08E15
  $8E17: 85 18       sta $18    ; PRG $08E17
  $8E19: 8a          txa    ; PRG $08E19
  $8E1A: 65 07       adc $07    ; PRG $08E1A
  $8E1C: 85 19       sta $19    ; PRG $08E1C
  $8E1E: a5 19       lda $19    ; PRG $08E1E
  $8E20: 48          pha    ; PRG $08E20
  $8E21: a5 18       lda $18    ; PRG $08E21
  $8E23: 48          pha    ; PRG $08E23
  $8E24: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $08E24
  $8E27: a6 d6 04    .db $a6 $d6 $04  -> vm $D6A6 argc 4    ; PRG $08E27
  $8E2A: a5 08       lda $08    ; PRG $08E2A
  $8E2C: a0 f0       ldy #$f0    ; PRG $08E2C
  $8E2E: 91 06       sta ($06),y    ; PRG $08E2E
  $8E30: a5 09       lda $09    ; PRG $08E30
  $8E32: c8          iny    ; PRG $08E32
  $8E33: 91 06       sta ($06),y    ; PRG $08E33
  $8E35: 8a          txa    ; PRG $08E35
  $8E36: 48          pha    ; PRG $08E36
  $8E37: a9 14       lda #$14    ; PRG $08E37
  $8E39: 48          pha    ; PRG $08E39
  $8E3A: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $08E3A
  $8E3D: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $08E3D
  $8E40: 18          clc    ; PRG $08E40
  $8E41: 98          tya    ; PRG $08E41
  $8E42: 65 08       adc $08    ; PRG $08E42
  $8E44: a0 ee       ldy #$ee    ; PRG $08E44
  $8E46: 91 06       sta ($06),y    ; PRG $08E46
  $8E48: 8a          txa    ; PRG $08E48
  $8E49: 65 09       adc $09    ; PRG $08E49
  $8E4B: c8          iny    ; PRG $08E4B
  $8E4C: 91 06       sta ($06),y    ; PRG $08E4C
  $8E4E: 8a          txa    ; PRG $08E4E
  $8E4F: a0 ea       ldy #$ea    ; PRG $08E4F
  $8E51: 91 06       sta ($06),y    ; PRG $08E51
  $8E53: c8          iny    ; PRG $08E53
  $8E54: 91 06       sta ($06),y    ; PRG $08E54
  $8E56: a9 07       lda #$07    ; PRG $08E56
  $8E58: 85 18       sta $18    ; PRG $08E58
  $8E5A: 86 19       stx $19    ; PRG $08E5A
  $8E5C: a0 ee       ldy #$ee    ; PRG $08E5C
  $8E5E: b1 06       lda ($06),y    ; PRG $08E5E
  $8E60: 85 14       sta $14    ; PRG $08E60
  $8E62: c8          iny    ; PRG $08E62
  $8E63: b1 06       lda ($06),y    ; PRG $08E63
  $8E65: 85 15       sta $15    ; PRG $08E65
  $8E67: a0 14       ldy #$14    ; PRG $08E67
  $8E69: a2 18       ldx #$18    ; PRG $08E69
  $8E6B: a9 10       lda #$10    ; PRG $08E6B
  $8E6D: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $08E6D
  $8E70: 18          clc    ; PRG $08E70
  $8E71: a5 10       lda $10    ; PRG $08E71
  $8E73: 69 48       adc #$48    ; PRG $08E73
  $8E75: 85 18       sta $18    ; PRG $08E75
  $8E77: a5 11       lda $11    ; PRG $08E77
  $8E79: 69 65       adc #$65    ; PRG $08E79
  $8E7B: 85 19       sta $19    ; PRG $08E7B
  $8E7D: a1 18       lda ($18,x)    ; PRG $08E7D
  $8E7F: 85 14       sta $14    ; PRG $08E7F
  $8E81: 86 15       stx $15    ; PRG $08E81
  $8E83: a5 14       lda $14    ; PRG $08E83
  $8E85: 29 02       and #$02    ; PRG $08E85
  $8E87: f0 03       beq $8e8c    ; PRG $08E87
  $8E89: 4c 10 8f    jmp $8f10    ; PRG $08E89
  $8E8C: 18          clc    ; PRG $08E8C
  $8E8D: a9 f6       lda #$f6    ; PRG $08E8D
  $8E8F: 65 06       adc $06    ; PRG $08E8F
  $8E91: 85 18       sta $18    ; PRG $08E91
  $8E93: 8a          txa    ; PRG $08E93
  $8E94: 65 07       adc $07    ; PRG $08E94
  $8E96: 85 19       sta $19    ; PRG $08E96
  $8E98: a5 18       lda $18    ; PRG $08E98
  $8E9A: a0 f4       ldy #$f4    ; PRG $08E9A
  $8E9C: 91 06       sta ($06),y    ; PRG $08E9C
  $8E9E: a5 19       lda $19    ; PRG $08E9E
  $8EA0: c8          iny    ; PRG $08EA0
  $8EA1: 91 06       sta ($06),y    ; PRG $08EA1
  $8EA3: 18          clc    ; PRG $08EA3
  $8EA4: a5 18       lda $18    ; PRG $08EA4
  $8EA6: a0 f0       ldy #$f0    ; PRG $08EA6
  $8EA8: 71 06       adc ($06),y    ; PRG $08EA8
  $8EAA: a0 f2       ldy #$f2    ; PRG $08EAA
  $8EAC: 91 06       sta ($06),y    ; PRG $08EAC
  $8EAE: a5 19       lda $19    ; PRG $08EAE
  $8EB0: 88          dey    ; PRG $08EB0
  $8EB1: 71 06       adc ($06),y    ; PRG $08EB1
  $8EB3: a0 f3       ldy #$f3    ; PRG $08EB3
  $8EB5: 91 06       sta ($06),y    ; PRG $08EB5
  $8EB7: 4c c9 8e    jmp $8ec9    ; PRG $08EB7
  $8EBA: 18          clc    ; PRG $08EBA
  $8EBB: a9 01       lda #$01    ; PRG $08EBB
  $8EBD: a0 f4       ldy #$f4    ; PRG $08EBD
  $8EBF: 71 06       adc ($06),y    ; PRG $08EBF
  $8EC1: 91 06       sta ($06),y    ; PRG $08EC1
  $8EC3: 8a          txa    ; PRG $08EC3
  $8EC4: c8          iny    ; PRG $08EC4
  $8EC5: 71 06       adc ($06),y    ; PRG $08EC5
  $8EC7: 91 06       sta ($06),y    ; PRG $08EC7
  $8EC9: a0 f4       ldy #$f4    ; PRG $08EC9
  $8ECB: b1 06       lda ($06),y    ; PRG $08ECB
  $8ECD: a0 f2       ldy #$f2    ; PRG $08ECD
  $8ECF: d1 06       cmp ($06),y    ; PRG $08ECF
  $8ED1: a0 f5       ldy #$f5    ; PRG $08ED1
  $8ED3: b1 06       lda ($06),y    ; PRG $08ED3
  $8ED5: a0 f3       ldy #$f3    ; PRG $08ED5
  $8ED7: f1 06       sbc ($06),y    ; PRG $08ED7
  $8ED9: 90 03       bcc $8ede    ; PRG $08ED9
  $8EDB: 4c 0d 8f    jmp $8f0d    ; PRG $08EDB
  $8EDE: c8          iny    ; PRG $08EDE
  $8EDF: b1 06       lda ($06),y    ; PRG $08EDF
  $8EE1: 85 18       sta $18    ; PRG $08EE1
  $8EE3: c8          iny    ; PRG $08EE3
  $8EE4: b1 06       lda ($06),y    ; PRG $08EE4
  $8EE6: 85 19       sta $19    ; PRG $08EE6
  $8EE8: a1 18       lda ($18,x)    ; PRG $08EE8
  $8EEA: 85 14       sta $14    ; PRG $08EEA
  $8EEC: 86 15       stx $15    ; PRG $08EEC
  $8EEE: a5 14       lda $14    ; PRG $08EEE
  $8EF0: a0 ee       ldy #$ee    ; PRG $08EF0
  $8EF2: d1 06       cmp ($06),y    ; PRG $08EF2
  $8EF4: d0 05       bne $8efb    ; PRG $08EF4
  $8EF6: a5 15       lda $15    ; PRG $08EF6
  $8EF8: c8          iny    ; PRG $08EF8
  $8EF9: d1 06       cmp ($06),y    ; PRG $08EF9
  $8EFB: f0 03       beq $8f00    ; PRG $08EFB
  $8EFD: 4c 0a 8f    jmp $8f0a    ; PRG $08EFD
  $8F00: a9 01       lda #$01    ; PRG $08F00
  $8F02: a0 ea       ldy #$ea    ; PRG $08F02
  $8F04: 91 06       sta ($06),y    ; PRG $08F04
  $8F06: 8a          txa    ; PRG $08F06
  $8F07: c8          iny    ; PRG $08F07
  $8F08: 91 06       sta ($06),y    ; PRG $08F08
  $8F0A: 4c ba 8e    jmp $8eba    ; PRG $08F0A
  $8F0D: 4c 1a 8f    jmp $8f1a    ; PRG $08F0D
  $8F10: a9 01       lda #$01    ; PRG $08F10
  $8F12: a0 ea       ldy #$ea    ; PRG $08F12
  $8F14: 91 06       sta ($06),y    ; PRG $08F14
  $8F16: 8a          txa    ; PRG $08F16
  $8F17: c8          iny    ; PRG $08F17
  $8F18: 91 06       sta ($06),y    ; PRG $08F18
  $8F1A: a0 ea       ldy #$ea    ; PRG $08F1A
  $8F1C: b1 06       lda ($06),y    ; PRG $08F1C
  $8F1E: c8          iny    ; PRG $08F1E
  $8F1F: 11 06       ora ($06),y    ; PRG $08F1F
  $8F21: f0 03       beq $8f26    ; PRG $08F21
  $8F23: 4c 35 8e    jmp $8e35    ; PRG $08F23
  $8F26: a9 07       lda #$07    ; PRG $08F26
  $8F28: 85 18       sta $18    ; PRG $08F28
  $8F2A: 86 19       stx $19    ; PRG $08F2A
  $8F2C: a0 ee       ldy #$ee    ; PRG $08F2C
  $8F2E: b1 06       lda ($06),y    ; PRG $08F2E
  $8F30: 85 14       sta $14    ; PRG $08F30
  $8F32: c8          iny    ; PRG $08F32
  $8F33: b1 06       lda ($06),y    ; PRG $08F33
  $8F35: 85 15       sta $15    ; PRG $08F35
  $8F37: a0 14       ldy #$14    ; PRG $08F37
  $8F39: a2 18       ldx #$18    ; PRG $08F39
  $8F3B: a9 10       lda #$10    ; PRG $08F3B
  $8F3D: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $08F3D
  $8F40: 18          clc    ; PRG $08F40
  $8F41: a5 10       lda $10    ; PRG $08F41
  $8F43: 69 48       adc #$48    ; PRG $08F43
  $8F45: 85 18       sta $18    ; PRG $08F45
  $8F47: a5 11       lda $11    ; PRG $08F47
  $8F49: 69 65       adc #$65    ; PRG $08F49
  $8F4B: 85 19       sta $19    ; PRG $08F4B
  $8F4D: a1 18       lda ($18,x)    ; PRG $08F4D
  $8F4F: 85 14       sta $14    ; PRG $08F4F
  $8F51: 86 15       stx $15    ; PRG $08F51
  $8F53: a5 14       lda $14    ; PRG $08F53
  $8F55: 29 01       and #$01    ; PRG $08F55
  $8F57: f0 03       beq $8f5c    ; PRG $08F57
  $8F59: 4c 6b 8f    jmp $8f6b    ; PRG $08F59
  $8F5C: a0 ef       ldy #$ef    ; PRG $08F5C
  $8F5E: b1 06       lda ($06),y    ; PRG $08F5E
  $8F60: 48          pha    ; PRG $08F60
  $8F61: 88          dey    ; PRG $08F61
  $8F62: b1 06       lda ($06),y    ; PRG $08F62
  $8F64: 48          pha    ; PRG $08F64
  $8F65: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $08F65
  $8F68: 7c 8c 04    .db $7c $8c $04  -> vm $8C7C argc 4    ; PRG $08F68
  $8F6B: a9 07       lda #$07    ; PRG $08F6B
  $8F6D: 85 18       sta $18    ; PRG $08F6D
  $8F6F: 86 19       stx $19    ; PRG $08F6F
  $8F71: a0 ee       ldy #$ee    ; PRG $08F71
  $8F73: b1 06       lda ($06),y    ; PRG $08F73
  $8F75: 85 14       sta $14    ; PRG $08F75
  $8F77: c8          iny    ; PRG $08F77
  $8F78: b1 06       lda ($06),y    ; PRG $08F78
  $8F7A: 85 15       sta $15    ; PRG $08F7A
  $8F7C: a0 14       ldy #$14    ; PRG $08F7C
  $8F7E: a2 18       ldx #$18    ; PRG $08F7E
  $8F80: a9 10       lda #$10    ; PRG $08F80
  $8F82: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $08F82
  $8F85: 18          clc    ; PRG $08F85
  $8F86: a5 10       lda $10    ; PRG $08F86
  $8F88: 69 48       adc #$48    ; PRG $08F88
  $8F8A: 85 18       sta $18    ; PRG $08F8A
  $8F8C: a5 11       lda $11    ; PRG $08F8C
  $8F8E: 69 65       adc #$65    ; PRG $08F8E
  $8F90: 85 19       sta $19    ; PRG $08F90
  $8F92: a9 02       lda #$02    ; PRG $08F92
  $8F94: 01 18       ora ($18,x)    ; PRG $08F94
  $8F96: 81 18       sta ($18,x)    ; PRG $08F96
  $8F98: a0 ee       ldy #$ee    ; PRG $08F98
  $8F9A: b1 06       lda ($06),y    ; PRG $08F9A
  $8F9C: 85 08       sta $08    ; PRG $08F9C
  $8F9E: c8          iny    ; PRG $08F9E
  $8F9F: b1 06       lda ($06),y    ; PRG $08F9F
  $8FA1: 85 09       sta $09    ; PRG $08FA1
  $8FA3: 60          rts    ; PRG $08FA3

; ---- sub_4_0faa  [stub]  <- (entry: bytecode/OS via $E299)
nat_4_0fa4: jsr $E299                    ; 4:8FA4  native-call prologue
            .db $00 $fa $ff            ; inline: argcount $00, frame $fffa
  $8FAA: 8a          txa    ; PRG $08FAA
  $8FAB: a0 fc       ldy #$fc    ; PRG $08FAB
  $8FAD: 91 06       sta ($06),y    ; PRG $08FAD
  $8FAF: c8          iny    ; PRG $08FAF
  $8FB0: 91 06       sta ($06),y    ; PRG $08FB0
  $8FB2: 48          pha    ; PRG $08FB2
  $8FB3: a9 14       lda #$14    ; PRG $08FB3
  $8FB5: 48          pha    ; PRG $08FB5
  $8FB6: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $08FB6
  $8FB9: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $08FB9
  $8FBC: a5 08       lda $08    ; PRG $08FBC
  $8FBE: a0 fa       ldy #$fa    ; PRG $08FBE
  $8FC0: 91 06       sta ($06),y    ; PRG $08FC0
  $8FC2: a5 09       lda $09    ; PRG $08FC2
  $8FC4: c8          iny    ; PRG $08FC4
  $8FC5: 91 06       sta ($06),y    ; PRG $08FC5
  $8FC7: 18          clc    ; PRG $08FC7
  $8FC8: a0 0b       ldy #$0b    ; PRG $08FC8
  $8FCA: b1 04       lda ($04),y    ; PRG $08FCA
  $8FCC: a0 0d       ldy #$0d    ; PRG $08FCC
  $8FCE: 71 04       adc ($04),y    ; PRG $08FCE
  $8FD0: a0 fe       ldy #$fe    ; PRG $08FD0
  $8FD2: 91 06       sta ($06),y    ; PRG $08FD2
  $8FD4: a0 0c       ldy #$0c    ; PRG $08FD4
  $8FD6: b1 04       lda ($04),y    ; PRG $08FD6
  $8FD8: a0 0e       ldy #$0e    ; PRG $08FD8
  $8FDA: 71 04       adc ($04),y    ; PRG $08FDA
  $8FDC: a0 ff       ldy #$ff    ; PRG $08FDC
  $8FDE: 91 06       sta ($06),y    ; PRG $08FDE
  $8FE0: 4c f2 8f    jmp $8ff2    ; PRG $08FE0
  $8FE3: 18          clc    ; PRG $08FE3
  $8FE4: a9 01       lda #$01    ; PRG $08FE4
  $8FE6: a0 0b       ldy #$0b    ; PRG $08FE6
  $8FE8: 71 04       adc ($04),y    ; PRG $08FE8
  $8FEA: 91 04       sta ($04),y    ; PRG $08FEA
  $8FEC: 8a          txa    ; PRG $08FEC
  $8FED: c8          iny    ; PRG $08FED
  $8FEE: 71 04       adc ($04),y    ; PRG $08FEE
  $8FF0: 91 04       sta ($04),y    ; PRG $08FF0
  $8FF2: a0 0b       ldy #$0b    ; PRG $08FF2
  $8FF4: b1 04       lda ($04),y    ; PRG $08FF4
  $8FF6: a0 fe       ldy #$fe    ; PRG $08FF6
  $8FF8: d1 06       cmp ($06),y    ; PRG $08FF8
  $8FFA: a0 0c       ldy #$0c    ; PRG $08FFA
  $8FFC: b1 04       lda ($04),y    ; PRG $08FFC
  $8FFE: a0 ff       ldy #$ff    ; PRG $08FFE
  $9000: f1 06       sbc ($06),y    ; PRG $09000
  $9002: 90 03       bcc $9007    ; PRG $09002
  $9004: 4c 37 90    jmp $9037    ; PRG $09004
  $9007: a0 0b       ldy #$0b    ; PRG $09007
  $9009: b1 04       lda ($04),y    ; PRG $09009
  $900B: 85 18       sta $18    ; PRG $0900B
  $900D: c8          iny    ; PRG $0900D
  $900E: b1 04       lda ($04),y    ; PRG $0900E
  $9010: 85 19       sta $19    ; PRG $09010
  $9012: a1 18       lda ($18,x)    ; PRG $09012
  $9014: 85 14       sta $14    ; PRG $09014
  $9016: 86 15       stx $15    ; PRG $09016
  $9018: a5 14       lda $14    ; PRG $09018
  $901A: a0 fa       ldy #$fa    ; PRG $0901A
  $901C: d1 06       cmp ($06),y    ; PRG $0901C
  $901E: d0 05       bne $9025    ; PRG $0901E
  $9020: a5 15       lda $15    ; PRG $09020
  $9022: c8          iny    ; PRG $09022
  $9023: d1 06       cmp ($06),y    ; PRG $09023
  $9025: f0 03       beq $902a    ; PRG $09025
  $9027: 4c 34 90    jmp $9034    ; PRG $09027
  $902A: a9 01       lda #$01    ; PRG $0902A
  $902C: a0 fc       ldy #$fc    ; PRG $0902C
  $902E: 91 06       sta ($06),y    ; PRG $0902E
  $9030: 8a          txa    ; PRG $09030
  $9031: c8          iny    ; PRG $09031
  $9032: 91 06       sta ($06),y    ; PRG $09032
  $9034: 4c e3 8f    jmp $8fe3    ; PRG $09034
  $9037: a0 fc       ldy #$fc    ; PRG $09037
  $9039: b1 06       lda ($06),y    ; PRG $09039
  $903B: c8          iny    ; PRG $0903B
  $903C: 11 06       ora ($06),y    ; PRG $0903C
  $903E: f0 03       beq $9043    ; PRG $0903E
  $9040: 4c aa 8f    jmp $8faa    ; PRG $09040
  $9043: a0 fa       ldy #$fa    ; PRG $09043
  $9045: b1 06       lda ($06),y    ; PRG $09045
  $9047: 85 08       sta $08    ; PRG $09047
  $9049: c8          iny    ; PRG $09049
  $904A: b1 06       lda ($06),y    ; PRG $0904A
  $904C: 85 09       sta $09    ; PRG $0904C
  $904E: 60          rts    ; PRG $0904E

; ---- sub_4_1055  [stub]  <- (entry: bytecode/OS via $E299)
nat_4_104f: jsr $E299                    ; 4:904F  native-call prologue
            .db $00 $ed $ff            ; inline: argcount $00, frame $ffed
  $9055: a9 62       lda #$62    ; PRG $09055
  $9057: a0 ed       ldy #$ed    ; PRG $09057
  $9059: 91 06       sta ($06),y    ; PRG $09059
  $905B: a9 66       lda #$66    ; PRG $0905B
  $905D: c8          iny    ; PRG $0905D
  $905E: 91 06       sta ($06),y    ; PRG $0905E
  $9060: a9 03       lda #$03    ; PRG $09060
  $9062: 8d 54 70    sta $7054    ; PRG $09062
  $9065: a9 d0       lda #$d0    ; PRG $09065
  $9067: a0 f9       ldy #$f9    ; PRG $09067
  $9069: 91 06       sta ($06),y    ; PRG $09069
  $906B: a9 6f       lda #$6f    ; PRG $0906B
  $906D: c8          iny    ; PRG $0906D
  $906E: 91 06       sta ($06),y    ; PRG $0906E
  $9070: 88          dey    ; PRG $09070
  $9071: b1 06       lda ($06),y    ; PRG $09071
  $9073: 85 18       sta $18    ; PRG $09073
  $9075: c8          iny    ; PRG $09075
  $9076: b1 06       lda ($06),y    ; PRG $09076
  $9078: 85 19       sta $19    ; PRG $09078
  $907A: a9 03       lda #$03    ; PRG $0907A
  $907C: 81 18       sta ($18,x)    ; PRG $0907C
  $907E: 18          clc    ; PRG $0907E
  $907F: a9 01       lda #$01    ; PRG $0907F
  $9081: 88          dey    ; PRG $09081
  $9082: 71 06       adc ($06),y    ; PRG $09082
  $9084: 91 06       sta ($06),y    ; PRG $09084
  $9086: 8a          txa    ; PRG $09086
  $9087: c8          iny    ; PRG $09087
  $9088: 71 06       adc ($06),y    ; PRG $09088
  $908A: 91 06       sta ($06),y    ; PRG $0908A
  $908C: 8a          txa    ; PRG $0908C
  $908D: 48          pha    ; PRG $0908D
  $908E: a9 02       lda #$02    ; PRG $0908E
  $9090: 48          pha    ; PRG $09090
  $9091: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $09091
  $9094: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $09094
  $9097: a9 03       lda #$03    ; PRG $09097
  $9099: 85 18       sta $18    ; PRG $09099
  $909B: 86 19       stx $19    ; PRG $0909B
  $909D: ad 74 6f    lda $6f74    ; PRG $0909D
  $90A0: 85 14       sta $14    ; PRG $090A0
  $90A2: 86 15       stx $15    ; PRG $090A2
  $90A4: a0 14       ldy #$14    ; PRG $090A4
  $90A6: a2 18       ldx #$18    ; PRG $090A6
  $90A8: a9 10       lda #$10    ; PRG $090A8
  $90AA: 20 d9 e1    jsr $e1d9   ; alu_div_push_remainder    ; PRG $090AA
  $90AD: 18          clc    ; PRG $090AD
  $90AE: a5 10       lda $10    ; PRG $090AE
  $90B0: 65 08       adc $08    ; PRG $090B0
  $90B2: 85 18       sta $18    ; PRG $090B2
  $90B4: a5 11       lda $11    ; PRG $090B4
  $90B6: 65 09       adc $09    ; PRG $090B6
  $90B8: 85 19       sta $19    ; PRG $090B8
  $90BA: 18          clc    ; PRG $090BA
  $90BB: 98          tya    ; PRG $090BB
  $90BC: 65 18       adc $18    ; PRG $090BC
  $90BE: a0 f5       ldy #$f5    ; PRG $090BE
  $90C0: 91 06       sta ($06),y    ; PRG $090C0
  $90C2: 8a          txa    ; PRG $090C2
  $90C3: 65 19       adc $19    ; PRG $090C3
  $90C5: c8          iny    ; PRG $090C5
  $90C6: 91 06       sta ($06),y    ; PRG $090C6
  $90C8: 8a          txa    ; PRG $090C8
  $90C9: c8          iny    ; PRG $090C9
  $90CA: 91 06       sta ($06),y    ; PRG $090CA
  $90CC: c8          iny    ; PRG $090CC
  $90CD: 91 06       sta ($06),y    ; PRG $090CD
  $90CF: a0 f1       ldy #$f1    ; PRG $090CF
  $90D1: 91 06       sta ($06),y    ; PRG $090D1
  $90D3: c8          iny    ; PRG $090D3
  $90D4: 91 06       sta ($06),y    ; PRG $090D4
  $90D6: 4c e8 90    jmp $90e8    ; PRG $090D6
  $90D9: 18          clc    ; PRG $090D9
  $90DA: a9 01       lda #$01    ; PRG $090DA
  $90DC: a0 f7       ldy #$f7    ; PRG $090DC
  $90DE: 71 06       adc ($06),y    ; PRG $090DE
  $90E0: 91 06       sta ($06),y    ; PRG $090E0
  $90E2: 8a          txa    ; PRG $090E2
  $90E3: c8          iny    ; PRG $090E3
  $90E4: 71 06       adc ($06),y    ; PRG $090E4
  $90E6: 91 06       sta ($06),y    ; PRG $090E6
  $90E8: a0 f7       ldy #$f7    ; PRG $090E8
  $90EA: b1 06       lda ($06),y    ; PRG $090EA
  $90EC: a0 f5       ldy #$f5    ; PRG $090EC
  $90EE: d1 06       cmp ($06),y    ; PRG $090EE
  $90F0: a0 f8       ldy #$f8    ; PRG $090F0
  $90F2: b1 06       lda ($06),y    ; PRG $090F2
  $90F4: a0 f6       ldy #$f6    ; PRG $090F4
  $90F6: f1 06       sbc ($06),y    ; PRG $090F6
  $90F8: 90 03       bcc $90fd    ; PRG $090F8
  $90FA: 4c c8 91    jmp $91c8    ; PRG $090FA
  $90FD: 8a          txa    ; PRG $090FD
  $90FE: 48          pha    ; PRG $090FE
  $90FF: a9 02       lda #$02    ; PRG $090FF
  $9101: 48          pha    ; PRG $09101
  $9102: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $09102
  $9105: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $09105
  $9108: a5 08       lda $08    ; PRG $09108
  $910A: 05 09       ora $09    ; PRG $0910A
  $910C: d0 03       bne $9111    ; PRG $0910C
  $910E: 4c 46 91    jmp $9146    ; PRG $0910E
  $9111: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $09111
  $9114: 0c 8e 02    .db $0c $8e $02  -> vm $8E0C argc 2    ; PRG $09114
  $9117: a5 08       lda $08    ; PRG $09117
  $9119: a0 f3       ldy #$f3    ; PRG $09119
  $911B: 91 06       sta ($06),y    ; PRG $0911B
  $911D: a5 09       lda $09    ; PRG $0911D
  $911F: c8          iny    ; PRG $0911F
  $9120: 91 06       sta ($06),y    ; PRG $09120
  $9122: b1 06       lda ($06),y    ; PRG $09122
  $9124: 48          pha    ; PRG $09124
  $9125: 88          dey    ; PRG $09125
  $9126: b1 06       lda ($06),y    ; PRG $09126
  $9128: 48          pha    ; PRG $09128
  $9129: a0 fa       ldy #$fa    ; PRG $09129
  $912B: b1 06       lda ($06),y    ; PRG $0912B
  $912D: 48          pha    ; PRG $0912D
  $912E: 88          dey    ; PRG $0912E
  $912F: b1 06       lda ($06),y    ; PRG $0912F
  $9131: 48          pha    ; PRG $09131
  $9132: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $09132
  $9135: 02 87 06    .db $02 $87 $06  -> vm $8702 argc 6    ; PRG $09135
  $9138: a5 08       lda $08    ; PRG $09138
  $913A: a0 f9       ldy #$f9    ; PRG $0913A
  $913C: 91 06       sta ($06),y    ; PRG $0913C
  $913E: a5 09       lda $09    ; PRG $0913E
  $9140: c8          iny    ; PRG $09140
  $9141: 91 06       sta ($06),y    ; PRG $09141
  $9143: 4c c5 91    jmp $91c5    ; PRG $09143
  $9146: a0 f2       ldy #$f2    ; PRG $09146
  $9148: b1 06       lda ($06),y    ; PRG $09148
  $914A: 48          pha    ; PRG $0914A
  $914B: 88          dey    ; PRG $0914B
  $914C: b1 06       lda ($06),y    ; PRG $0914C
  $914E: 48          pha    ; PRG $0914E
  $914F: 18          clc    ; PRG $0914F
  $9150: a9 fb       lda #$fb    ; PRG $09150
  $9152: 65 06       adc $06    ; PRG $09152
  $9154: 85 18       sta $18    ; PRG $09154
  $9156: 8a          txa    ; PRG $09156
  $9157: 65 07       adc $07    ; PRG $09157
  $9159: 85 19       sta $19    ; PRG $09159
  $915B: a5 19       lda $19    ; PRG $0915B
  $915D: 48          pha    ; PRG $0915D
  $915E: a5 18       lda $18    ; PRG $0915E
  $9160: 48          pha    ; PRG $09160
  $9161: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $09161
  $9164: a4 8f 06    .db $a4 $8f $06  -> vm $8FA4 argc 6    ; PRG $09164
  $9167: a5 08       lda $08    ; PRG $09167
  $9169: a0 f3       ldy #$f3    ; PRG $09169
  $916B: 91 06       sta ($06),y    ; PRG $0916B
  $916D: a5 09       lda $09    ; PRG $0916D
  $916F: c8          iny    ; PRG $0916F
  $9170: 91 06       sta ($06),y    ; PRG $09170
  $9172: 18          clc    ; PRG $09172
  $9173: a9 fb       lda #$fb    ; PRG $09173
  $9175: 65 06       adc $06    ; PRG $09175
  $9177: 85 18       sta $18    ; PRG $09177
  $9179: 8a          txa    ; PRG $09179
  $917A: 65 07       adc $07    ; PRG $0917A
  $917C: 85 19       sta $19    ; PRG $0917C
  $917E: 18          clc    ; PRG $0917E
  $917F: a0 f1       ldy #$f1    ; PRG $0917F
  $9181: b1 06       lda ($06),y    ; PRG $09181
  $9183: 65 18       adc $18    ; PRG $09183
  $9185: 85 14       sta $14    ; PRG $09185
  $9187: c8          iny    ; PRG $09187
  $9188: b1 06       lda ($06),y    ; PRG $09188
  $918A: 65 19       adc $19    ; PRG $0918A
  $918C: 85 15       sta $15    ; PRG $0918C
  $918E: c8          iny    ; PRG $0918E
  $918F: b1 06       lda ($06),y    ; PRG $0918F
  $9191: 81 14       sta ($14,x)    ; PRG $09191
  $9193: 18          clc    ; PRG $09193
  $9194: a9 01       lda #$01    ; PRG $09194
  $9196: a0 f1       ldy #$f1    ; PRG $09196
  $9198: 71 06       adc ($06),y    ; PRG $09198
  $919A: 91 06       sta ($06),y    ; PRG $0919A
  $919C: 8a          txa    ; PRG $0919C
  $919D: c8          iny    ; PRG $0919D
  $919E: 71 06       adc ($06),y    ; PRG $0919E
  $91A0: 91 06       sta ($06),y    ; PRG $091A0
  $91A2: a0 f4       ldy #$f4    ; PRG $091A2
  $91A4: b1 06       lda ($06),y    ; PRG $091A4
  $91A6: 48          pha    ; PRG $091A6
  $91A7: 88          dey    ; PRG $091A7
  $91A8: b1 06       lda ($06),y    ; PRG $091A8
  $91AA: 48          pha    ; PRG $091AA
  $91AB: a0 fa       ldy #$fa    ; PRG $091AB
  $91AD: b1 06       lda ($06),y    ; PRG $091AD
  $91AF: 48          pha    ; PRG $091AF
  $91B0: 88          dey    ; PRG $091B0
  $91B1: b1 06       lda ($06),y    ; PRG $091B1
  $91B3: 48          pha    ; PRG $091B3
  $91B4: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $091B4
  $91B7: 4d 87 06    .db $4d $87 $06  -> vm $874D argc 6    ; PRG $091B7
  $91BA: a5 08       lda $08    ; PRG $091BA
  $91BC: a0 f9       ldy #$f9    ; PRG $091BC
  $91BE: 91 06       sta ($06),y    ; PRG $091BE
  $91C0: a5 09       lda $09    ; PRG $091C0
  $91C2: c8          iny    ; PRG $091C2
  $91C3: 91 06       sta ($06),y    ; PRG $091C3
  $91C5: 4c d9 90    jmp $90d9    ; PRG $091C5
  $91C8: 8a          txa    ; PRG $091C8
  $91C9: 48          pha    ; PRG $091C9
  $91CA: a9 03       lda #$03    ; PRG $091CA
  $91CC: 48          pha    ; PRG $091CC
  $91CD: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $091CD
  $91D0: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $091D0
  $91D3: a5 08       lda $08    ; PRG $091D3
  $91D5: 05 09       ora $09    ; PRG $091D5
  $91D7: d0 03       bne $91dc    ; PRG $091D7
  $91D9: 4c e2 91    jmp $91e2   ; nat_3_11e2    ; PRG $091D9
  $91DC: 8e 5a 70    stx $705a    ; PRG $091DC
  $91DF: 4c 68 92    jmp $9268    ; PRG $091DF
  $91E2: 8a          txa    ; PRG $091E2
  $91E3: 48          pha    ; PRG $091E3
  $91E4: a9 0f       lda #$0f    ; PRG $091E4
  $91E6: 48          pha    ; PRG $091E6
  $91E7: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $091E7
  $91EA: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $091EA
  $91ED: 18          clc    ; PRG $091ED
  $91EE: a9 06       lda #$06    ; PRG $091EE
  $91F0: 65 08       adc $08    ; PRG $091F0
  $91F2: a0 ef       ldy #$ef    ; PRG $091F2
  $91F4: 91 06       sta ($06),y    ; PRG $091F4
  $91F6: 8a          txa    ; PRG $091F6
  $91F7: 65 09       adc $09    ; PRG $091F7
  $91F9: c8          iny    ; PRG $091F9
  $91FA: 91 06       sta ($06),y    ; PRG $091FA
  $91FC: a9 04       lda #$04    ; PRG $091FC
  $91FE: 85 18       sta $18    ; PRG $091FE
  $9200: 86 19       stx $19    ; PRG $09200
  $9202: a0 ef       ldy #$ef    ; PRG $09202
  $9204: b1 06       lda ($06),y    ; PRG $09204
  $9206: 85 14       sta $14    ; PRG $09206
  $9208: c8          iny    ; PRG $09208
  $9209: b1 06       lda ($06),y    ; PRG $09209
  $920B: 85 15       sta $15    ; PRG $0920B
  $920D: a0 14       ldy #$14    ; PRG $0920D
  $920F: a2 18       ldx #$18    ; PRG $0920F
  $9211: a9 10       lda #$10    ; PRG $09211
  $9213: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $09213
  $9216: 18          clc    ; PRG $09216
  $9217: a5 10       lda $10    ; PRG $09217
  $9219: 69 71       adc #$71    ; PRG $09219
  $921B: 85 18       sta $18    ; PRG $0921B
  $921D: a5 11       lda $11    ; PRG $0921D
  $921F: 69 66       adc #$66    ; PRG $0921F
  $9221: 85 19       sta $19    ; PRG $09221
  $9223: a1 18       lda ($18,x)    ; PRG $09223
  $9225: 85 14       sta $14    ; PRG $09225
  $9227: 86 15       stx $15    ; PRG $09227
  $9229: a5 14       lda $14    ; PRG $09229
  $922B: 29 08       and #$08    ; PRG $0922B
  $922D: f0 03       beq $9232    ; PRG $0922D
  $922F: 4c e2 91    jmp $91e2   ; nat_3_11e2    ; PRG $0922F
  $9232: a0 ef       ldy #$ef    ; PRG $09232
  $9234: b1 06       lda ($06),y    ; PRG $09234
  $9236: 8d 5a 70    sta $705a    ; PRG $09236
  $9239: a9 04       lda #$04    ; PRG $09239
  $923B: 85 18       sta $18    ; PRG $0923B
  $923D: 86 19       stx $19    ; PRG $0923D
  $923F: b1 06       lda ($06),y    ; PRG $0923F
  $9241: 85 14       sta $14    ; PRG $09241
  $9243: c8          iny    ; PRG $09243
  $9244: b1 06       lda ($06),y    ; PRG $09244
  $9246: 85 15       sta $15    ; PRG $09246
  $9248: a0 14       ldy #$14    ; PRG $09248
  $924A: a2 18       ldx #$18    ; PRG $0924A
  $924C: a9 10       lda #$10    ; PRG $0924C
  $924E: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0924E
  $9251: 18          clc    ; PRG $09251
  $9252: a5 10       lda $10    ; PRG $09252
  $9254: 69 6f       adc #$6f    ; PRG $09254
  $9256: 85 18       sta $18    ; PRG $09256
  $9258: a5 11       lda $11    ; PRG $09258
  $925A: 69 66       adc #$66    ; PRG $0925A
  $925C: 85 19       sta $19    ; PRG $0925C
  $925E: a1 18       lda ($18,x)    ; PRG $0925E
  $9260: 81 18       sta ($18,x)    ; PRG $09260
  $9262: a9 80       lda #$80    ; PRG $09262
  $9264: 11 18       ora ($18),y    ; PRG $09264
  $9266: 91 18       sta ($18),y    ; PRG $09266
  $9268: a0 f9       ldy #$f9    ; PRG $09268
  $926A: b1 06       lda ($06),y    ; PRG $0926A
  $926C: 85 18       sta $18    ; PRG $0926C
  $926E: c8          iny    ; PRG $0926E
  $926F: b1 06       lda ($06),y    ; PRG $0926F
  $9271: 85 19       sta $19    ; PRG $09271
  $9273: a9 09       lda #$09    ; PRG $09273
  $9275: 81 18       sta ($18,x)    ; PRG $09275
  $9277: a9 01       lda #$01    ; PRG $09277
  $9279: 8d 5f 70    sta $705f    ; PRG $09279
  $927C: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0927C
  $927F: e8 83 02    .db $e8 $83 $02  -> vm $83E8 argc 2    ; PRG $0927F
  $9282: 60          rts    ; PRG $09282

; ---- sub_4_1289  [stub]  <- (entry: bytecode/OS via $E299)
nat_4_1283: jsr $E299                    ; 4:9283  native-call prologue
            .db $00 $ec $ff            ; inline: argcount $00, frame $ffec
  $9289: a9 04       lda #$04    ; PRG $09289
  $928B: 8d 54 70    sta $7054    ; PRG $0928B
  $928E: a9 d0       lda #$d0    ; PRG $0928E
  $9290: a0 fc       ldy #$fc    ; PRG $09290
  $9292: 91 06       sta ($06),y    ; PRG $09292
  $9294: a9 6f       lda #$6f    ; PRG $09294
  $9296: c8          iny    ; PRG $09296
  $9297: 91 06       sta ($06),y    ; PRG $09297
  $9299: 88          dey    ; PRG $09299
  $929A: b1 06       lda ($06),y    ; PRG $0929A
  $929C: 85 18       sta $18    ; PRG $0929C
  $929E: c8          iny    ; PRG $0929E
  $929F: b1 06       lda ($06),y    ; PRG $0929F
  $92A1: 85 19       sta $19    ; PRG $092A1
  $92A3: a9 03       lda #$03    ; PRG $092A3
  $92A5: 81 18       sta ($18,x)    ; PRG $092A5
  $92A7: 18          clc    ; PRG $092A7
  $92A8: a9 01       lda #$01    ; PRG $092A8
  $92AA: 88          dey    ; PRG $092AA
  $92AB: 71 06       adc ($06),y    ; PRG $092AB
  $92AD: 91 06       sta ($06),y    ; PRG $092AD
  $92AF: 8a          txa    ; PRG $092AF
  $92B0: c8          iny    ; PRG $092B0
  $92B1: 71 06       adc ($06),y    ; PRG $092B1
  $92B3: 91 06       sta ($06),y    ; PRG $092B3
  $92B5: 88          dey    ; PRG $092B5
  $92B6: b1 06       lda ($06),y    ; PRG $092B6
  $92B8: 85 18       sta $18    ; PRG $092B8
  $92BA: c8          iny    ; PRG $092BA
  $92BB: b1 06       lda ($06),y    ; PRG $092BB
  $92BD: 85 19       sta $19    ; PRG $092BD
  $92BF: 8a          txa    ; PRG $092BF
  $92C0: 81 18       sta ($18,x)    ; PRG $092C0
  $92C2: a9 8d       lda #$8d    ; PRG $092C2
  $92C4: c8          iny    ; PRG $092C4
  $92C5: 91 06       sta ($06),y    ; PRG $092C5
  $92C7: a9 6b       lda #$6b    ; PRG $092C7
  $92C9: c8          iny    ; PRG $092C9
  $92CA: 91 06       sta ($06),y    ; PRG $092CA
  $92CC: a9 65       lda #$65    ; PRG $092CC
  $92CE: a0 fa       ldy #$fa    ; PRG $092CE
  $92D0: 91 06       sta ($06),y    ; PRG $092D0
  $92D2: 8a          txa    ; PRG $092D2
  $92D3: c8          iny    ; PRG $092D3
  $92D4: 91 06       sta ($06),y    ; PRG $092D4
  $92D6: a9 01       lda #$01    ; PRG $092D6
  $92D8: a0 f4       ldy #$f4    ; PRG $092D8
  $92DA: 91 06       sta ($06),y    ; PRG $092DA
  $92DC: 8a          txa    ; PRG $092DC
  $92DD: c8          iny    ; PRG $092DD
  $92DE: 91 06       sta ($06),y    ; PRG $092DE
  $92E0: 4c f2 92    jmp $92f2    ; PRG $092E0
  $92E3: 18          clc    ; PRG $092E3
  $92E4: a9 01       lda #$01    ; PRG $092E4
  $92E6: a0 f4       ldy #$f4    ; PRG $092E6
  $92E8: 71 06       adc ($06),y    ; PRG $092E8
  $92EA: 91 06       sta ($06),y    ; PRG $092EA
  $92EC: 8a          txa    ; PRG $092EC
  $92ED: c8          iny    ; PRG $092ED
  $92EE: 71 06       adc ($06),y    ; PRG $092EE
  $92F0: 91 06       sta ($06),y    ; PRG $092F0
  $92F2: a0 f4       ldy #$f4    ; PRG $092F2
  $92F4: b1 06       lda ($06),y    ; PRG $092F4
  $92F6: c9 03       cmp #$03    ; PRG $092F6
  $92F8: c8          iny    ; PRG $092F8
  $92F9: b1 06       lda ($06),y    ; PRG $092F9
  $92FB: e9 00       sbc #$00    ; PRG $092FB
  $92FD: 90 03       bcc $9302    ; PRG $092FD
  $92FF: 4c 87 93    jmp $9387    ; PRG $092FF
  $9302: 18          clc    ; PRG $09302
  $9303: 88          dey    ; PRG $09303
  $9304: b1 06       lda ($06),y    ; PRG $09304
  $9306: 69 f1       adc #$f1    ; PRG $09306
  $9308: 85 18       sta $18    ; PRG $09308
  $930A: c8          iny    ; PRG $0930A
  $930B: b1 06       lda ($06),y    ; PRG $0930B
  $930D: 69 9a       adc #$9a    ; PRG $0930D
  $930F: 85 19       sta $19    ; PRG $0930F
  $9311: a1 18       lda ($18,x)    ; PRG $09311
  $9313: 85 14       sta $14    ; PRG $09313
  $9315: 86 15       stx $15    ; PRG $09315
  $9317: 18          clc    ; PRG $09317
  $9318: a5 14       lda $14    ; PRG $09318
  $931A: a0 fe       ldy #$fe    ; PRG $0931A
  $931C: 71 06       adc ($06),y    ; PRG $0931C
  $931E: 85 18       sta $18    ; PRG $0931E
  $9320: a5 15       lda $15    ; PRG $09320
  $9322: c8          iny    ; PRG $09322
  $9323: 71 06       adc ($06),y    ; PRG $09323
  $9325: 85 19       sta $19    ; PRG $09325
  $9327: a1 18       lda ($18,x)    ; PRG $09327
  $9329: 85 14       sta $14    ; PRG $09329
  $932B: 86 15       stx $15    ; PRG $0932B
  $932D: a5 14       lda $14    ; PRG $0932D
  $932F: a0 fa       ldy #$fa    ; PRG $0932F
  $9331: d1 06       cmp ($06),y    ; PRG $09331
  $9333: a5 15       lda $15    ; PRG $09333
  $9335: c8          iny    ; PRG $09335
  $9336: f1 06       sbc ($06),y    ; PRG $09336
  $9338: 90 03       bcc $933d    ; PRG $09338
  $933A: 4c 84 93    jmp $9384    ; PRG $0933A
  $933D: a0 f4       ldy #$f4    ; PRG $0933D
  $933F: b1 06       lda ($06),y    ; PRG $0933F
  $9341: a0 f8       ldy #$f8    ; PRG $09341
  $9343: 91 06       sta ($06),y    ; PRG $09343
  $9345: a0 f5       ldy #$f5    ; PRG $09345
  $9347: b1 06       lda ($06),y    ; PRG $09347
  $9349: a0 f9       ldy #$f9    ; PRG $09349
  $934B: 91 06       sta ($06),y    ; PRG $0934B
  $934D: 18          clc    ; PRG $0934D
  $934E: a0 f4       ldy #$f4    ; PRG $0934E
  $9350: b1 06       lda ($06),y    ; PRG $09350
  $9352: 69 f1       adc #$f1    ; PRG $09352
  $9354: 85 18       sta $18    ; PRG $09354
  $9356: c8          iny    ; PRG $09356
  $9357: b1 06       lda ($06),y    ; PRG $09357
  $9359: 69 9a       adc #$9a    ; PRG $09359
  $935B: 85 19       sta $19    ; PRG $0935B
  $935D: a1 18       lda ($18,x)    ; PRG $0935D
  $935F: 85 14       sta $14    ; PRG $0935F
  $9361: 86 15       stx $15    ; PRG $09361
  $9363: 18          clc    ; PRG $09363
  $9364: a5 14       lda $14    ; PRG $09364
  $9366: a0 fe       ldy #$fe    ; PRG $09366
  $9368: 71 06       adc ($06),y    ; PRG $09368
  $936A: 85 18       sta $18    ; PRG $0936A
  $936C: a5 15       lda $15    ; PRG $0936C
  $936E: c8          iny    ; PRG $0936E
  $936F: 71 06       adc ($06),y    ; PRG $0936F
  $9371: 85 19       sta $19    ; PRG $09371
  $9373: a1 18       lda ($18,x)    ; PRG $09373
  $9375: 85 14       sta $14    ; PRG $09375
  $9377: 86 15       stx $15    ; PRG $09377
  $9379: a5 14       lda $14    ; PRG $09379
  $937B: a0 fa       ldy #$fa    ; PRG $0937B
  $937D: 91 06       sta ($06),y    ; PRG $0937D
  $937F: a5 15       lda $15    ; PRG $0937F
  $9381: c8          iny    ; PRG $09381
  $9382: 91 06       sta ($06),y    ; PRG $09382
  $9384: 4c e3 92    jmp $92e3    ; PRG $09384
  $9387: a9 01       lda #$01    ; PRG $09387
  $9389: a0 f0       ldy #$f0    ; PRG $09389
  $938B: 91 06       sta ($06),y    ; PRG $0938B
  $938D: 8a          txa    ; PRG $0938D
  $938E: c8          iny    ; PRG $0938E
  $938F: 91 06       sta ($06),y    ; PRG $0938F
  $9391: a0 fa       ldy #$fa    ; PRG $09391
  $9393: b1 06       lda ($06),y    ; PRG $09393
  $9395: c9 33       cmp #$33    ; PRG $09395
  $9397: c8          iny    ; PRG $09397
  $9398: b1 06       lda ($06),y    ; PRG $09398
  $939A: e9 00       sbc #$00    ; PRG $0939A
  $939C: 90 03       bcc $93a1    ; PRG $0939C
  $939E: 4c 75 94    jmp $9475    ; PRG $0939E
  $93A1: a9 05       lda #$05    ; PRG $093A1
  $93A3: 85 18       sta $18    ; PRG $093A3
  $93A5: 86 19       stx $19    ; PRG $093A5
  $93A7: a0 f8       ldy #$f8    ; PRG $093A7
  $93A9: b1 06       lda ($06),y    ; PRG $093A9
  $93AB: 85 14       sta $14    ; PRG $093AB
  $93AD: c8          iny    ; PRG $093AD
  $93AE: b1 06       lda ($06),y    ; PRG $093AE
  $93B0: 85 15       sta $15    ; PRG $093B0
  $93B2: a0 14       ldy #$14    ; PRG $093B2
  $93B4: a2 18       ldx #$18    ; PRG $093B4
  $93B6: a9 10       lda #$10    ; PRG $093B6
  $93B8: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $093B8
  $93BB: 18          clc    ; PRG $093BB
  $93BC: a9 04       lda #$04    ; PRG $093BC
  $93BE: 65 10       adc $10    ; PRG $093BE
  $93C0: a0 f4       ldy #$f4    ; PRG $093C0
  $93C2: 91 06       sta ($06),y    ; PRG $093C2
  $93C4: 8a          txa    ; PRG $093C4
  $93C5: 65 11       adc $11    ; PRG $093C5
  $93C7: c8          iny    ; PRG $093C7
  $93C8: 91 06       sta ($06),y    ; PRG $093C8
  $93CA: a9 04       lda #$04    ; PRG $093CA
  $93CC: 85 18       sta $18    ; PRG $093CC
  $93CE: 86 19       stx $19    ; PRG $093CE
  $93D0: 88          dey    ; PRG $093D0
  $93D1: b1 06       lda ($06),y    ; PRG $093D1
  $93D3: 85 14       sta $14    ; PRG $093D3
  $93D5: c8          iny    ; PRG $093D5
  $93D6: b1 06       lda ($06),y    ; PRG $093D6
  $93D8: 85 15       sta $15    ; PRG $093D8
  $93DA: a0 14       ldy #$14    ; PRG $093DA
  $93DC: a2 18       ldx #$18    ; PRG $093DC
  $93DE: a9 10       lda #$10    ; PRG $093DE
  $93E0: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $093E0
  $93E3: 18          clc    ; PRG $093E3
  $93E4: a5 10       lda $10    ; PRG $093E4
  $93E6: 69 62       adc #$62    ; PRG $093E6
  $93E8: a0 ee       ldy #$ee    ; PRG $093E8
  $93EA: 91 06       sta ($06),y    ; PRG $093EA
  $93EC: a5 11       lda $11    ; PRG $093EC
  $93EE: 69 66       adc #$66    ; PRG $093EE
  $93F0: c8          iny    ; PRG $093F0
  $93F1: 91 06       sta ($06),y    ; PRG $093F1
  $93F3: 18          clc    ; PRG $093F3
  $93F4: a9 20       lda #$20    ; PRG $093F4
  $93F6: 88          dey    ; PRG $093F6
  $93F7: 71 06       adc ($06),y    ; PRG $093F7
  $93F9: a0 ec       ldy #$ec    ; PRG $093F9
  $93FB: 91 06       sta ($06),y    ; PRG $093FB
  $93FD: 8a          txa    ; PRG $093FD
  $93FE: a0 ef       ldy #$ef    ; PRG $093FE
  $9400: 71 06       adc ($06),y    ; PRG $09400
  $9402: a0 ed       ldy #$ed    ; PRG $09402
  $9404: 91 06       sta ($06),y    ; PRG $09404
  $9406: 4c 27 94    jmp $9427    ; PRG $09406
  $9409: 18          clc    ; PRG $09409
  $940A: a9 01       lda #$01    ; PRG $0940A
  $940C: a0 f4       ldy #$f4    ; PRG $0940C
  $940E: 71 06       adc ($06),y    ; PRG $0940E
  $9410: 91 06       sta ($06),y    ; PRG $09410
  $9412: 8a          txa    ; PRG $09412
  $9413: c8          iny    ; PRG $09413
  $9414: 71 06       adc ($06),y    ; PRG $09414
  $9416: 91 06       sta ($06),y    ; PRG $09416
  $9418: 18          clc    ; PRG $09418
  $9419: a9 10       lda #$10    ; PRG $09419
  $941B: a0 ee       ldy #$ee    ; PRG $0941B
  $941D: 71 06       adc ($06),y    ; PRG $0941D
  $941F: 91 06       sta ($06),y    ; PRG $0941F
  $9421: 8a          txa    ; PRG $09421
  $9422: c8          iny    ; PRG $09422
  $9423: 71 06       adc ($06),y    ; PRG $09423
  $9425: 91 06       sta ($06),y    ; PRG $09425
  $9427: a0 ee       ldy #$ee    ; PRG $09427
  $9429: b1 06       lda ($06),y    ; PRG $09429
  $942B: a0 ec       ldy #$ec    ; PRG $0942B
  $942D: d1 06       cmp ($06),y    ; PRG $0942D
  $942F: a0 ef       ldy #$ef    ; PRG $0942F
  $9431: b1 06       lda ($06),y    ; PRG $09431
  $9433: a0 ed       ldy #$ed    ; PRG $09433
  $9435: f1 06       sbc ($06),y    ; PRG $09435
  $9437: 90 03       bcc $943c    ; PRG $09437
  $9439: 4c 75 94    jmp $9475    ; PRG $09439
  $943C: c8          iny    ; PRG $0943C
  $943D: b1 06       lda ($06),y    ; PRG $0943D
  $943F: 85 18       sta $18    ; PRG $0943F
  $9441: c8          iny    ; PRG $09441
  $9442: b1 06       lda ($06),y    ; PRG $09442
  $9444: 85 19       sta $19    ; PRG $09444
  $9446: a0 0f       ldy #$0f    ; PRG $09446
  $9448: b1 18       lda ($18),y    ; PRG $09448
  $944A: 85 14       sta $14    ; PRG $0944A
  $944C: 86 15       stx $15    ; PRG $0944C
  $944E: a5 14       lda $14    ; PRG $0944E
  $9450: 29 08       and #$08    ; PRG $09450
  $9452: f0 03       beq $9457    ; PRG $09452
  $9454: 4c 72 94    jmp $9472    ; PRG $09454
  $9457: 8a          txa    ; PRG $09457
  $9458: a0 f0       ldy #$f0    ; PRG $09458
  $945A: 91 06       sta ($06),y    ; PRG $0945A
  $945C: c8          iny    ; PRG $0945C
  $945D: 91 06       sta ($06),y    ; PRG $0945D
  $945F: a0 f4       ldy #$f4    ; PRG $0945F
  $9461: b1 06       lda ($06),y    ; PRG $09461
  $9463: a0 f2       ldy #$f2    ; PRG $09463
  $9465: 91 06       sta ($06),y    ; PRG $09465
  $9467: a0 f5       ldy #$f5    ; PRG $09467
  $9469: b1 06       lda ($06),y    ; PRG $09469
  $946B: a0 f3       ldy #$f3    ; PRG $0946B
  $946D: 91 06       sta ($06),y    ; PRG $0946D
  $946F: 4c 75 94    jmp $9475    ; PRG $0946F
  $9472: 4c 09 94    jmp $9409    ; PRG $09472
  $9475: a0 f0       ldy #$f0    ; PRG $09475
  $9477: b1 06       lda ($06),y    ; PRG $09477
  $9479: c8          iny    ; PRG $09479
  $947A: 11 06       ora ($06),y    ; PRG $0947A
  $947C: d0 03       bne $9481    ; PRG $0947C
  $947E: 4c 36 95    jmp $9536    ; PRG $0947E
  $9481: a9 10       lda #$10    ; PRG $09481
  $9483: a0 f4       ldy #$f4    ; PRG $09483
  $9485: 91 06       sta ($06),y    ; PRG $09485
  $9487: 8a          txa    ; PRG $09487
  $9488: c8          iny    ; PRG $09488
  $9489: 91 06       sta ($06),y    ; PRG $09489
  $948B: a9 04       lda #$04    ; PRG $0948B
  $948D: 85 18       sta $18    ; PRG $0948D
  $948F: 86 19       stx $19    ; PRG $0948F
  $9491: 88          dey    ; PRG $09491
  $9492: b1 06       lda ($06),y    ; PRG $09492
  $9494: 85 14       sta $14    ; PRG $09494
  $9496: c8          iny    ; PRG $09496
  $9497: b1 06       lda ($06),y    ; PRG $09497
  $9499: 85 15       sta $15    ; PRG $09499
  $949B: a0 14       ldy #$14    ; PRG $0949B
  $949D: a2 18       ldx #$18    ; PRG $0949D
  $949F: a9 10       lda #$10    ; PRG $0949F
  $94A1: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $094A1
  $94A4: 18          clc    ; PRG $094A4
  $94A5: a5 10       lda $10    ; PRG $094A5
  $94A7: 69 62       adc #$62    ; PRG $094A7
  $94A9: a0 ee       ldy #$ee    ; PRG $094A9
  $94AB: 91 06       sta ($06),y    ; PRG $094AB
  $94AD: a5 11       lda $11    ; PRG $094AD
  $94AF: 69 66       adc #$66    ; PRG $094AF
  $94B1: c8          iny    ; PRG $094B1
  $94B2: 91 06       sta ($06),y    ; PRG $094B2
  $94B4: 18          clc    ; PRG $094B4
  $94B5: a9 50       lda #$50    ; PRG $094B5
  $94B7: 88          dey    ; PRG $094B7
  $94B8: 71 06       adc ($06),y    ; PRG $094B8
  $94BA: a0 ec       ldy #$ec    ; PRG $094BA
  $94BC: 91 06       sta ($06),y    ; PRG $094BC
  $94BE: 8a          txa    ; PRG $094BE
  $94BF: a0 ef       ldy #$ef    ; PRG $094BF
  $94C1: 71 06       adc ($06),y    ; PRG $094C1
  $94C3: a0 ed       ldy #$ed    ; PRG $094C3
  $94C5: 91 06       sta ($06),y    ; PRG $094C5
  $94C7: 4c e8 94    jmp $94e8    ; PRG $094C7
  $94CA: 18          clc    ; PRG $094CA
  $94CB: a9 01       lda #$01    ; PRG $094CB
  $94CD: a0 f4       ldy #$f4    ; PRG $094CD
  $94CF: 71 06       adc ($06),y    ; PRG $094CF
  $94D1: 91 06       sta ($06),y    ; PRG $094D1
  $94D3: 8a          txa    ; PRG $094D3
  $94D4: c8          iny    ; PRG $094D4
  $94D5: 71 06       adc ($06),y    ; PRG $094D5
  $94D7: 91 06       sta ($06),y    ; PRG $094D7
  $94D9: 18          clc    ; PRG $094D9
  $94DA: a9 10       lda #$10    ; PRG $094DA
  $94DC: a0 ee       ldy #$ee    ; PRG $094DC
  $94DE: 71 06       adc ($06),y    ; PRG $094DE
  $94E0: 91 06       sta ($06),y    ; PRG $094E0
  $94E2: 8a          txa    ; PRG $094E2
  $94E3: c8          iny    ; PRG $094E3
  $94E4: 71 06       adc ($06),y    ; PRG $094E4
  $94E6: 91 06       sta ($06),y    ; PRG $094E6
  $94E8: a0 ee       ldy #$ee    ; PRG $094E8
  $94EA: b1 06       lda ($06),y    ; PRG $094EA
  $94EC: a0 ec       ldy #$ec    ; PRG $094EC
  $94EE: d1 06       cmp ($06),y    ; PRG $094EE
  $94F0: a0 ef       ldy #$ef    ; PRG $094F0
  $94F2: b1 06       lda ($06),y    ; PRG $094F2
  $94F4: a0 ed       ldy #$ed    ; PRG $094F4
  $94F6: f1 06       sbc ($06),y    ; PRG $094F6
  $94F8: 90 03       bcc $94fd    ; PRG $094F8
  $94FA: 4c 36 95    jmp $9536    ; PRG $094FA
  $94FD: c8          iny    ; PRG $094FD
  $94FE: b1 06       lda ($06),y    ; PRG $094FE
  $9500: 85 18       sta $18    ; PRG $09500
  $9502: c8          iny    ; PRG $09502
  $9503: b1 06       lda ($06),y    ; PRG $09503
  $9505: 85 19       sta $19    ; PRG $09505
  $9507: a0 0f       ldy #$0f    ; PRG $09507
  $9509: b1 18       lda ($18),y    ; PRG $09509
  $950B: 85 14       sta $14    ; PRG $0950B
  $950D: 86 15       stx $15    ; PRG $0950D
  $950F: a5 14       lda $14    ; PRG $0950F
  $9511: 29 08       and #$08    ; PRG $09511
  $9513: f0 03       beq $9518    ; PRG $09513
  $9515: 4c 33 95    jmp $9533    ; PRG $09515
  $9518: 8a          txa    ; PRG $09518
  $9519: a0 f0       ldy #$f0    ; PRG $09519
  $951B: 91 06       sta ($06),y    ; PRG $0951B
  $951D: c8          iny    ; PRG $0951D
  $951E: 91 06       sta ($06),y    ; PRG $0951E
  $9520: a0 f4       ldy #$f4    ; PRG $09520
  $9522: b1 06       lda ($06),y    ; PRG $09522
  $9524: a0 f2       ldy #$f2    ; PRG $09524
  $9526: 91 06       sta ($06),y    ; PRG $09526
  $9528: a0 f5       ldy #$f5    ; PRG $09528
  $952A: b1 06       lda ($06),y    ; PRG $0952A
  $952C: a0 f3       ldy #$f3    ; PRG $0952C
  $952E: 91 06       sta ($06),y    ; PRG $0952E
  $9530: 4c 36 95    jmp $9536    ; PRG $09530
  $9533: 4c ca 94    jmp $94ca    ; PRG $09533
  $9536: a0 f0       ldy #$f0    ; PRG $09536
  $9538: b1 06       lda ($06),y    ; PRG $09538
  $953A: c8          iny    ; PRG $0953A
  $953B: 11 06       ora ($06),y    ; PRG $0953B
  $953D: d0 03       bne $9542    ; PRG $0953D
  $953F: 4c 43 95    jmp $9543    ; PRG $0953F
  $9542: 60          rts    ; PRG $09542
  $9543: a0 f2       ldy #$f2    ; PRG $09543
  $9545: b1 06       lda ($06),y    ; PRG $09545
  $9547: 8d 55 70    sta $7055    ; PRG $09547
  $954A: a9 01       lda #$01    ; PRG $0954A
  $954C: 8d 5f 70    sta $705f    ; PRG $0954C
  $954F: 60          rts    ; PRG $0954F

; ---- sub_4_1556  [stub]  <- (entry: bytecode/OS via $E299)
nat_4_1550: jsr $E299                    ; 4:9550  native-call prologue
            .db $00 $fe $ff            ; inline: argcount $00, frame $fffe
  $9556: 8a          txa    ; PRG $09556
  $9557: 48          pha    ; PRG $09557
  $9558: a9 1c       lda #$1c    ; PRG $09558
  $955A: 48          pha    ; PRG $0955A
  $955B: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0955B
  $955E: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $0955E
  $9561: 18          clc    ; PRG $09561
  $9562: 98          tya    ; PRG $09562
  $9563: 65 08       adc $08    ; PRG $09563
  $9565: a0 fe       ldy #$fe    ; PRG $09565
  $9567: 91 06       sta ($06),y    ; PRG $09567
  $9569: 8a          txa    ; PRG $09569
  $956A: 65 09       adc $09    ; PRG $0956A
  $956C: c8          iny    ; PRG $0956C
  $956D: 91 06       sta ($06),y    ; PRG $0956D
  $956F: 18          clc    ; PRG $0956F
  $9570: a0 fe       ldy #$fe    ; PRG $09570
  $9572: b1 06       lda ($06),y    ; PRG $09572
  $9574: 69 76       adc #$76    ; PRG $09574
  $9576: 85 18       sta $18    ; PRG $09576
  $9578: c8          iny    ; PRG $09578
  $9579: b1 06       lda ($06),y    ; PRG $09579
  $957B: 69 6f       adc #$6f    ; PRG $0957B
  $957D: 85 19       sta $19    ; PRG $0957D
  $957F: a1 18       lda ($18,x)    ; PRG $0957F
  $9581: 85 14       sta $14    ; PRG $09581
  $9583: 86 15       stx $15    ; PRG $09583
  $9585: a5 14       lda $14    ; PRG $09585
  $9587: 29 08       and #$08    ; PRG $09587
  $9589: d0 03       bne $958e    ; PRG $09589
  $958B: 4c 56 95    jmp $9556    ; PRG $0958B
  $958E: a0 fe       ldy #$fe    ; PRG $0958E
  $9590: b1 06       lda ($06),y    ; PRG $09590
  $9592: 85 08       sta $08    ; PRG $09592
  $9594: c8          iny    ; PRG $09594
  $9595: b1 06       lda ($06),y    ; PRG $09595
  $9597: 85 09       sta $09    ; PRG $09597
  $9599: 60          rts    ; PRG $09599

; ---- sub_4_15a0  [stub]  <- (entry: bytecode/OS via $E299)
nat_4_159a: jsr $E299                    ; 4:959A  native-call prologue
            .db $00 $fe $ff            ; inline: argcount $00, frame $fffe
  $95A0: 8a          txa    ; PRG $095A0
  $95A1: 48          pha    ; PRG $095A1
  $95A2: a9 1c       lda #$1c    ; PRG $095A2
  $95A4: 48          pha    ; PRG $095A4
  $95A5: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $095A5
  $95A8: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $095A8
  $95AB: 18          clc    ; PRG $095AB
  $95AC: 98          tya    ; PRG $095AC
  $95AD: 65 08       adc $08    ; PRG $095AD
  $95AF: a0 fe       ldy #$fe    ; PRG $095AF
  $95B1: 91 06       sta ($06),y    ; PRG $095B1
  $95B3: 8a          txa    ; PRG $095B3
  $95B4: 65 09       adc $09    ; PRG $095B4
  $95B6: c8          iny    ; PRG $095B6
  $95B7: 91 06       sta ($06),y    ; PRG $095B7
  $95B9: 18          clc    ; PRG $095B9
  $95BA: a0 fe       ldy #$fe    ; PRG $095BA
  $95BC: b1 06       lda ($06),y    ; PRG $095BC
  $95BE: 69 76       adc #$76    ; PRG $095BE
  $95C0: 85 18       sta $18    ; PRG $095C0
  $95C2: c8          iny    ; PRG $095C2
  $95C3: b1 06       lda ($06),y    ; PRG $095C3
  $95C5: 69 6f       adc #$6f    ; PRG $095C5
  $95C7: 85 19       sta $19    ; PRG $095C7
  $95C9: a1 18       lda ($18,x)    ; PRG $095C9
  $95CB: 85 14       sta $14    ; PRG $095CB
  $95CD: 86 15       stx $15    ; PRG $095CD
  $95CF: a5 14       lda $14    ; PRG $095CF
  $95D1: 29 08       and #$08    ; PRG $095D1
  $95D3: d0 03       bne $95d8    ; PRG $095D3
  $95D5: 4c a0 95    jmp $95a0    ; PRG $095D5
  $95D8: 18          clc    ; PRG $095D8
  $95D9: 88          dey    ; PRG $095D9
  $95DA: b1 06       lda ($06),y    ; PRG $095DA
  $95DC: 69 76       adc #$76    ; PRG $095DC
  $95DE: 85 18       sta $18    ; PRG $095DE
  $95E0: c8          iny    ; PRG $095E0
  $95E1: b1 06       lda ($06),y    ; PRG $095E1
  $95E3: 69 6f       adc #$6f    ; PRG $095E3
  $95E5: 85 19       sta $19    ; PRG $095E5
  $95E7: a1 18       lda ($18,x)    ; PRG $095E7
  $95E9: 85 14       sta $14    ; PRG $095E9
  $95EB: 86 15       stx $15    ; PRG $095EB
  $95ED: a5 14       lda $14    ; PRG $095ED
  $95EF: 29 04       and #$04    ; PRG $095EF
  $95F1: d0 03       bne $95f6    ; PRG $095F1
  $95F3: 4c a0 95    jmp $95a0    ; PRG $095F3
  $95F6: a0 fe       ldy #$fe    ; PRG $095F6
  $95F8: b1 06       lda ($06),y    ; PRG $095F8
  $95FA: 85 08       sta $08    ; PRG $095FA
  $95FC: c8          iny    ; PRG $095FC
  $95FD: b1 06       lda ($06),y    ; PRG $095FD
  $95FF: 85 09       sta $09    ; PRG $095FF
  $9601: 60          rts    ; PRG $09601

; ---- sub_4_1608  [stub]  <- (entry: bytecode/OS via $E299)
nat_4_1602: jsr $E299                    ; 4:9602  native-call prologue
            .db $00 $fe $ff            ; inline: argcount $00, frame $fffe
  $9608: 8a          txa    ; PRG $09608
  $9609: 48          pha    ; PRG $09609
  $960A: a9 1c       lda #$1c    ; PRG $0960A
  $960C: 48          pha    ; PRG $0960C
  $960D: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0960D
  $9610: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $09610
  $9613: 18          clc    ; PRG $09613
  $9614: 98          tya    ; PRG $09614
  $9615: 65 08       adc $08    ; PRG $09615
  $9617: a0 fe       ldy #$fe    ; PRG $09617
  $9619: 91 06       sta ($06),y    ; PRG $09619
  $961B: 8a          txa    ; PRG $0961B
  $961C: 65 09       adc $09    ; PRG $0961C
  $961E: c8          iny    ; PRG $0961E
  $961F: 91 06       sta ($06),y    ; PRG $0961F
  $9621: 18          clc    ; PRG $09621
  $9622: a0 fe       ldy #$fe    ; PRG $09622
  $9624: b1 06       lda ($06),y    ; PRG $09624
  $9626: 69 76       adc #$76    ; PRG $09626
  $9628: 85 18       sta $18    ; PRG $09628
  $962A: c8          iny    ; PRG $0962A
  $962B: b1 06       lda ($06),y    ; PRG $0962B
  $962D: 69 6f       adc #$6f    ; PRG $0962D
  $962F: 85 19       sta $19    ; PRG $0962F
  $9631: a1 18       lda ($18,x)    ; PRG $09631
  $9633: 85 14       sta $14    ; PRG $09633
  $9635: 86 15       stx $15    ; PRG $09635
  $9637: a5 14       lda $14    ; PRG $09637
  $9639: 29 08       and #$08    ; PRG $09639
  $963B: d0 03       bne $9640    ; PRG $0963B
  $963D: 4c 08 96    jmp $9608    ; PRG $0963D
  $9640: a0 fe       ldy #$fe    ; PRG $09640
  $9642: b1 06       lda ($06),y    ; PRG $09642
  $9644: 85 08       sta $08    ; PRG $09644
  $9646: c8          iny    ; PRG $09646
  $9647: b1 06       lda ($06),y    ; PRG $09647
  $9649: 85 09       sta $09    ; PRG $09649
  $964B: 60          rts    ; PRG $0964B

; ---- sub_4_1652  [stub]  <- (entry: bytecode/OS via $E299)
nat_4_164c: jsr $E299                    ; 4:964C  native-call prologue
            .db $00 $f8 $ff            ; inline: argcount $00, frame $fff8
  $9652: ad 5f 70    lda $705f    ; PRG $09652
  $9655: 85 18       sta $18    ; PRG $09655
  $9657: 86 19       stx $19    ; PRG $09657
  $9659: a5 18       lda $18    ; PRG $09659
  $965B: 29 01       and #$01    ; PRG $0965B
  $965D: d0 03       bne $9662    ; PRG $0965D
  $965F: 4c 19 97    jmp $9719    ; PRG $0965F
  $9662: ad 54 70    lda $7054    ; PRG $09662
  $9665: 85 18       sta $18    ; PRG $09665
  $9667: 86 19       stx $19    ; PRG $09667
  $9669: a5 18       lda $18    ; PRG $09669
  $966B: c9 03       cmp #$03    ; PRG $0966B
  $966D: d0 04       bne $9673    ; PRG $0966D
  $966F: a5 19       lda $19    ; PRG $0966F
  $9671: c9 00       cmp #$00    ; PRG $09671
  $9673: d0 03       bne $9678    ; PRG $09673
  $9675: 4c 8e 96    jmp $968e    ; PRG $09675
  $9678: ad 54 70    lda $7054    ; PRG $09678
  $967B: 85 18       sta $18    ; PRG $0967B
  $967D: 86 19       stx $19    ; PRG $0967D
  $967F: a5 18       lda $18    ; PRG $0967F
  $9681: c9 02       cmp #$02    ; PRG $09681
  $9683: d0 04       bne $9689    ; PRG $09683
  $9685: a5 19       lda $19    ; PRG $09685
  $9687: c9 00       cmp #$00    ; PRG $09687
  $9689: f0 03       beq $968e    ; PRG $09689
  $968B: 4c 19 97    jmp $9719    ; PRG $0968B
  $968E: ad 5a 70    lda $705a    ; PRG $0968E
  $9691: d0 03       bne $9696    ; PRG $09691
  $9693: 4c c3 96    jmp $96c3    ; PRG $09693
  $9696: a9 04       lda #$04    ; PRG $09696
  $9698: 85 18       sta $18    ; PRG $09698
  $969A: 86 19       stx $19    ; PRG $0969A
  $969C: ad 5a 70    lda $705a    ; PRG $0969C
  $969F: 85 14       sta $14    ; PRG $0969F
  $96A1: 86 15       stx $15    ; PRG $096A1
  $96A3: a0 14       ldy #$14    ; PRG $096A3
  $96A5: a2 18       ldx #$18    ; PRG $096A5
  $96A7: a9 10       lda #$10    ; PRG $096A7
  $96A9: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $096A9
  $96AC: 18          clc    ; PRG $096AC
  $96AD: a5 10       lda $10    ; PRG $096AD
  $96AF: 69 6f       adc #$6f    ; PRG $096AF
  $96B1: 85 18       sta $18    ; PRG $096B1
  $96B3: a5 11       lda $11    ; PRG $096B3
  $96B5: 69 66       adc #$66    ; PRG $096B5
  $96B7: 85 19       sta $19    ; PRG $096B7
  $96B9: a1 18       lda ($18,x)    ; PRG $096B9
  $96BB: 81 18       sta ($18,x)    ; PRG $096BB
  $96BD: a9 7f       lda #$7f    ; PRG $096BD
  $96BF: 31 18       and ($18),y    ; PRG $096BF
  $96C1: 91 18       sta ($18),y    ; PRG $096C1
  $96C3: a9 49       lda #$49    ; PRG $096C3
  $96C5: a0 fa       ldy #$fa    ; PRG $096C5
  $96C7: 91 06       sta ($06),y    ; PRG $096C7
  $96C9: a9 65       lda #$65    ; PRG $096C9
  $96CB: c8          iny    ; PRG $096CB
  $96CC: 91 06       sta ($06),y    ; PRG $096CC
  $96CE: 18          clc    ; PRG $096CE
  $96CF: a9 8c       lda #$8c    ; PRG $096CF
  $96D1: 69 49       adc #$49    ; PRG $096D1
  $96D3: a0 f8       ldy #$f8    ; PRG $096D3
  $96D5: 91 06       sta ($06),y    ; PRG $096D5
  $96D7: 8a          txa    ; PRG $096D7
  $96D8: 69 65       adc #$65    ; PRG $096D8
  $96DA: c8          iny    ; PRG $096DA
  $96DB: 91 06       sta ($06),y    ; PRG $096DB
  $96DD: 4c ef 96    jmp $96ef    ; PRG $096DD
  $96E0: 18          clc    ; PRG $096E0
  $96E1: a9 07       lda #$07    ; PRG $096E1
  $96E3: a0 fa       ldy #$fa    ; PRG $096E3
  $96E5: 71 06       adc ($06),y    ; PRG $096E5
  $96E7: 91 06       sta ($06),y    ; PRG $096E7
  $96E9: 8a          txa    ; PRG $096E9
  $96EA: c8          iny    ; PRG $096EA
  $96EB: 71 06       adc ($06),y    ; PRG $096EB
  $96ED: 91 06       sta ($06),y    ; PRG $096ED
  $96EF: a0 fa       ldy #$fa    ; PRG $096EF
  $96F1: b1 06       lda ($06),y    ; PRG $096F1
  $96F3: a0 f8       ldy #$f8    ; PRG $096F3
  $96F5: d1 06       cmp ($06),y    ; PRG $096F5
  $96F7: a0 fb       ldy #$fb    ; PRG $096F7
  $96F9: b1 06       lda ($06),y    ; PRG $096F9
  $96FB: a0 f9       ldy #$f9    ; PRG $096FB
  $96FD: f1 06       sbc ($06),y    ; PRG $096FD
  $96FF: 90 03       bcc $9704    ; PRG $096FF
  $9701: 4c 19 97    jmp $9719    ; PRG $09701
  $9704: c8          iny    ; PRG $09704
  $9705: b1 06       lda ($06),y    ; PRG $09705
  $9707: 85 18       sta $18    ; PRG $09707
  $9709: c8          iny    ; PRG $09709
  $970A: b1 06       lda ($06),y    ; PRG $0970A
  $970C: 85 19       sta $19    ; PRG $0970C
  $970E: a9 fd       lda #$fd    ; PRG $0970E
  $9710: a0 06       ldy #$06    ; PRG $09710
  $9712: 31 18       and ($18),y    ; PRG $09712
  $9714: 91 18       sta ($18),y    ; PRG $09714
  $9716: 4c e0 96    jmp $96e0    ; PRG $09716
  $9719: a9 d0       lda #$d0    ; PRG $09719
  $971B: 8d 50 70    sta $7050    ; PRG $0971B
  $971E: a9 6f       lda #$6f    ; PRG $0971E
  $9720: 8d 51 70    sta $7051    ; PRG $09720
  $9723: a0 0b       ldy #$0b    ; PRG $09723
  $9725: b1 04       lda ($04),y    ; PRG $09725
  $9727: 85 08       sta $08    ; PRG $09727
  $9729: c8          iny    ; PRG $09729
  $972A: b1 04       lda ($04),y    ; PRG $0972A
  $972C: 85 09       sta $09    ; PRG $0972C
  $972E: 4c cb 98    jmp $98cb    ; PRG $0972E

; ---- sub_4_1731  [recovered]  <- (uncalled?)
  $9731: ad 50 70    lda $7050    ; PRG $09731
  $9734: 85 18       sta $18    ; PRG $09734
  $9736: ad 51 70    lda $7051    ; PRG $09736
  $9739: 85 19       sta $19    ; PRG $09739
  $973B: 8a          txa    ; PRG $0973B
  $973C: 81 18       sta ($18,x)    ; PRG $0973C
  $973E: ee 50 70    inc $7050    ; PRG $0973E
  $9741: d0 03       bne $9746    ; PRG $09741
  $9743: ee 51 70    inc $7051    ; PRG $09743
  $9746: ad 50 70    lda $7050    ; PRG $09746
  $9749: 85 18       sta $18    ; PRG $09749
  $974B: ad 51 70    lda $7051    ; PRG $0974B
  $974E: 85 19       sta $19    ; PRG $0974E
  $9750: 8a          txa    ; PRG $09750
  $9751: 81 18       sta ($18,x)    ; PRG $09751
  $9753: ee 50 70    inc $7050    ; PRG $09753
  $9756: d0 03       bne $975b    ; PRG $09756
  $9758: ee 51 70    inc $7051    ; PRG $09758
  $975B: 8e 52 70    stx $7052    ; PRG $0975B
  $975E: 8e 53 70    stx $7053    ; PRG $0975E
  $9761: ad 74 6f    lda $6f74    ; PRG $09761
  $9764: d0 03       bne $9769    ; PRG $09764
  $9766: 4c b0 97    jmp $97b0    ; PRG $09766
  $9769: 8a          txa    ; PRG $09769
  $976A: 48          pha    ; PRG $0976A
  $976B: a9 02       lda #$02    ; PRG $0976B
  $976D: 48          pha    ; PRG $0976D
  $976E: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0976E
  $9771: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $09771
  $9774: 84 18       sty $18    ; PRG $09774
  $9776: 86 19       stx $19    ; PRG $09776
  $9778: ad 74 6f    lda $6f74    ; PRG $09778
  $977B: 85 14       sta $14    ; PRG $0977B
  $977D: 86 15       stx $15    ; PRG $0977D
  $977F: 18          clc    ; PRG $0977F
  $9780: a9 ff       lda #$ff    ; PRG $09780
  $9782: 65 14       adc $14    ; PRG $09782
  $9784: 85 10       sta $10    ; PRG $09784
  $9786: a9 ff       lda #$ff    ; PRG $09786
  $9788: 65 15       adc $15    ; PRG $09788
  $978A: 85 11       sta $11    ; PRG $0978A
  $978C: a0 10       ldy #$10    ; PRG $0978C
  $978E: a2 18       ldx #$18    ; PRG $0978E
  $9790: a9 14       lda #$14    ; PRG $09790
  $9792: 20 15 e4    jsr $e415   ; alu_shr16_n    ; PRG $09792
  $9795: 18          clc    ; PRG $09795
  $9796: a5 14       lda $14    ; PRG $09796
  $9798: 65 08       adc $08    ; PRG $09798
  $979A: 85 18       sta $18    ; PRG $0979A
  $979C: a5 15       lda $15    ; PRG $0979C
  $979E: 65 09       adc $09    ; PRG $0979E
  $97A0: 85 19       sta $19    ; PRG $097A0
  $97A2: a5 18       lda $18    ; PRG $097A2
  $97A4: a0 fc       ldy #$fc    ; PRG $097A4
  $97A6: 91 06       sta ($06),y    ; PRG $097A6
  $97A8: a5 19       lda $19    ; PRG $097A8
  $97AA: c8          iny    ; PRG $097AA
  $97AB: 91 06       sta ($06),y    ; PRG $097AB
  $97AD: 4c b8 97    jmp $97b8    ; PRG $097AD
  $97B0: 8a          txa    ; PRG $097B0
  $97B1: a0 fc       ldy #$fc    ; PRG $097B1
  $97B3: 91 06       sta ($06),y    ; PRG $097B3
  $97B5: c8          iny    ; PRG $097B5
  $97B6: 91 06       sta ($06),y    ; PRG $097B6
  $97B8: ad 74 6f    lda $6f74    ; PRG $097B8
  $97BB: 85 18       sta $18    ; PRG $097BB
  $97BD: 86 19       stx $19    ; PRG $097BD
  $97BF: a5 18       lda $18    ; PRG $097BF
  $97C1: c9 09       cmp #$09    ; PRG $097C1
  $97C3: d0 04       bne $97c9    ; PRG $097C3
  $97C5: a5 19       lda $19    ; PRG $097C5
  $97C7: c9 00       cmp #$00    ; PRG $097C7
  $97C9: f0 03       beq $97ce    ; PRG $097C9
  $97CB: 4c d8 97    jmp $97d8    ; PRG $097CB
  $97CE: a9 04       lda #$04    ; PRG $097CE
  $97D0: a0 fc       ldy #$fc    ; PRG $097D0
  $97D2: 91 06       sta ($06),y    ; PRG $097D2
  $97D4: 8a          txa    ; PRG $097D4
  $97D5: c8          iny    ; PRG $097D5
  $97D6: 91 06       sta ($06),y    ; PRG $097D6
  $97D8: a9 01       lda #$01    ; PRG $097D8
  $97DA: 85 18       sta $18    ; PRG $097DA
  $97DC: 86 19       stx $19    ; PRG $097DC
  $97DE: a0 fc       ldy #$fc    ; PRG $097DE
  $97E0: b1 06       lda ($06),y    ; PRG $097E0
  $97E2: 85 14       sta $14    ; PRG $097E2
  $97E4: c8          iny    ; PRG $097E4
  $97E5: b1 06       lda ($06),y    ; PRG $097E5
  $97E7: 85 15       sta $15    ; PRG $097E7
  $97E9: a0 14       ldy #$14    ; PRG $097E9
  $97EB: a2 18       ldx #$18    ; PRG $097EB
  $97ED: a9 10       lda #$10    ; PRG $097ED
  $97EF: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $097EF
  $97F2: 18          clc    ; PRG $097F2
  $97F3: a5 10       lda $10    ; PRG $097F3
  $97F5: 69 01       adc #$01    ; PRG $097F5
  $97F7: 85 18       sta $18    ; PRG $097F7
  $97F9: a5 11       lda $11    ; PRG $097F9
  $97FB: 69 9b       adc #$9b    ; PRG $097FB
  $97FD: 85 19       sta $19    ; PRG $097FD
  $97FF: a1 18       lda ($18,x)    ; PRG $097FF
  $9801: 85 08       sta $08    ; PRG $09801
  $9803: b1 18       lda ($18),y    ; PRG $09803
  $9805: 85 09       sta $09    ; PRG $09805
  $9807: 20 85 e4    jsr $e485   ; native_e485    ; PRG $09807
  $980A: 02          .db $02    ; PRG $0980A
  $98CB: 20 45 e4    jsr $e445   ; native_e445    ; PRG $098CB
  $98CE: 00          brk    ; PRG $098CE
  $98CF: 00          brk    ; PRG $098CF
  $98D0: 04          .db $04    ; PRG $098D0
  $98ED: ad 5f 70    lda $705f    ; PRG $098ED
  $98F0: 85 18       sta $18    ; PRG $098F0
  $98F2: 86 19       stx $19    ; PRG $098F2
  $98F4: a5 18       lda $18    ; PRG $098F4
  $98F6: 29 08       and #$08    ; PRG $098F6
  $98F8: f0 03       beq $98fd    ; PRG $098F8
  $98FA: 4c e5 99    jmp $99e5    ; PRG $098FA
  $98FD: ad 54 70    lda $7054    ; PRG $098FD
  $9900: 85 18       sta $18    ; PRG $09900
  $9902: 86 19       stx $19    ; PRG $09902
  $9904: a5 18       lda $18    ; PRG $09904
  $9906: c9 04       cmp #$04    ; PRG $09906
  $9908: d0 04       bne $990e    ; PRG $09908
  $990A: a5 19       lda $19    ; PRG $0990A
  $990C: c9 00       cmp #$00    ; PRG $0990C
  $990E: d0 03       bne $9913    ; PRG $0990E
  $9910: 4c e5 99    jmp $99e5    ; PRG $09910
  $9913: a9 90       lda #$90    ; PRG $09913
  $9915: 85 18       sta $18    ; PRG $09915
  $9917: a9 01       lda #$01    ; PRG $09917
  $9919: 85 19       sta $19    ; PRG $09919
  $991B: ad 74 6f    lda $6f74    ; PRG $0991B
  $991E: 85 14       sta $14    ; PRG $0991E
  $9920: 86 15       stx $15    ; PRG $09920
  $9922: 18          clc    ; PRG $09922
  $9923: a9 01       lda #$01    ; PRG $09923
  $9925: 65 14       adc $14    ; PRG $09925
  $9927: 85 10       sta $10    ; PRG $09927
  $9929: 8a          txa    ; PRG $09929
  $992A: 65 15       adc $15    ; PRG $0992A
  $992C: 85 11       sta $11    ; PRG $0992C
  $992E: ad 74 6f    lda $6f74    ; PRG $0992E
  $9931: 85 14       sta $14    ; PRG $09931
  $9933: 86 15       stx $15    ; PRG $09933
  $9935: 18          clc    ; PRG $09935
  $9936: a9 01       lda #$01    ; PRG $09936
  $9938: 65 14       adc $14    ; PRG $09938
  $993A: 85 0c       sta $0c    ; PRG $0993A
  $993C: 8a          txa    ; PRG $0993C
  $993D: 65 15       adc $15    ; PRG $0993D
  $993F: 85 0d       sta $0d    ; PRG $0993F
  $9941: a0 0c       ldy #$0c    ; PRG $09941
  $9943: a2 10       ldx #$10    ; PRG $09943
  $9945: a9 14       lda #$14    ; PRG $09945
  $9947: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $09947
  $994A: a0 14       ldy #$14    ; PRG $0994A
  $994C: a2 18       ldx #$18    ; PRG $0994C
  $994E: a9 10       lda #$10    ; PRG $0994E
  $9950: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $09950
  $9953: a5 10       lda $10    ; PRG $09953
  $9955: cd 72 6f    cmp $6f72    ; PRG $09955
  $9958: a5 11       lda $11    ; PRG $09958
  $995A: ed 73 6f    sbc $6f73    ; PRG $0995A
  $995D: 90 03       bcc $9962    ; PRG $0995D
  $995F: 4c 6d 99    jmp $996d    ; PRG $0995F
  $9962: 8a          txa    ; PRG $09962
  $9963: a0 fe       ldy #$fe    ; PRG $09963
  $9965: 91 06       sta ($06),y    ; PRG $09965
  $9967: c8          iny    ; PRG $09967
  $9968: 91 06       sta ($06),y    ; PRG $09968
  $996A: 4c b6 99    jmp $99b6    ; PRG $0996A
  $996D: 8a          txa    ; PRG $0996D
  $996E: 48          pha    ; PRG $0996E
  $996F: a9 03       lda #$03    ; PRG $0996F
  $9971: 48          pha    ; PRG $09971
  $9972: a9 05       lda #$05    ; PRG $09972
  $9974: 85 18       sta $18    ; PRG $09974
  $9976: 86 19       stx $19    ; PRG $09976
  $9978: ad 45 65    lda $6545    ; PRG $09978
  $997B: 85 14       sta $14    ; PRG $0997B
  $997D: 86 15       stx $15    ; PRG $0997D
  $997F: a0 14       ldy #$14    ; PRG $0997F
  $9981: a2 18       ldx #$18    ; PRG $09981
  $9983: a9 10       lda #$10    ; PRG $09983
  $9985: 20 d9 e1    jsr $e1d9   ; alu_div_push_remainder    ; PRG $09985
  $9988: a5 11       lda $11    ; PRG $09988
  $998A: 48          pha    ; PRG $0998A
  $998B: a5 10       lda $10    ; PRG $0998B
  $998D: 48          pha    ; PRG $0998D
  $998E: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0998E
  $9991: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $09991
  $9994: a5 09       lda $09    ; PRG $09994
  $9996: 48          pha    ; PRG $09996
  $9997: a5 08       lda $08    ; PRG $09997
  $9999: 48          pha    ; PRG $09999
  $999A: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0999A
  $999D: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $0999D
  $99A0: 18          clc    ; PRG $099A0
  $99A1: 98          tya    ; PRG $099A1
  $99A2: 65 08       adc $08    ; PRG $099A2
  $99A4: 85 18       sta $18    ; PRG $099A4
  $99A6: 8a          txa    ; PRG $099A6
  $99A7: 65 09       adc $09    ; PRG $099A7
  $99A9: 85 19       sta $19    ; PRG $099A9
  $99AB: a5 18       lda $18    ; PRG $099AB
  $99AD: a0 fe       ldy #$fe    ; PRG $099AD
  $99AF: 91 06       sta ($06),y    ; PRG $099AF
  $99B1: a5 19       lda $19    ; PRG $099B1
  $99B3: c8          iny    ; PRG $099B3
  $99B4: 91 06       sta ($06),y    ; PRG $099B4
  $99B6: a0 fe       ldy #$fe    ; PRG $099B6
  $99B8: b1 06       lda ($06),y    ; PRG $099B8
  $99BA: c8          iny    ; PRG $099BA
  $99BB: 11 06       ora ($06),y    ; PRG $099BB
  $99BD: d0 03       bne $99c2    ; PRG $099BD
  $99BF: 4c d6 99    jmp $99d6    ; PRG $099BF
  $99C2: 8a          txa    ; PRG $099C2
  $99C3: 48          pha    ; PRG $099C3
  $99C4: a9 02       lda #$02    ; PRG $099C4
  $99C6: 48          pha    ; PRG $099C6
  $99C7: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $099C7
  $99CA: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $099CA
  $99CD: a5 08       lda $08    ; PRG $099CD
  $99CF: 05 09       ora $09    ; PRG $099CF
  $99D1: d0 03       bne $99d6    ; PRG $099D1
  $99D3: 4c e5 99    jmp $99e5    ; PRG $099D3
  $99D6: a0 ff       ldy #$ff    ; PRG $099D6
  $99D8: b1 06       lda ($06),y    ; PRG $099D8
  $99DA: 48          pha    ; PRG $099DA
  $99DB: 88          dey    ; PRG $099DB
  $99DC: b1 06       lda ($06),y    ; PRG $099DC
  $99DE: 48          pha    ; PRG $099DE
  $99DF: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $099DF
  $99E2: 4c 96 04    .db $4c $96 $04  -> vm $964C argc 4    ; PRG $099E2
  $99E5: 60          rts    ; PRG $099E5

; ---- sub_4_18ed  [stub]  <- (entry: bytecode/OS via $E299)
nat_4_18e7: jsr $E299                    ; 4:98E7  native-call prologue
            .db $00 $fe $ff            ; inline: argcount $00, frame $fffe
  $98ED: ad 5f 70    lda $705f    ; PRG $098ED
  $98F0: 85 18       sta $18    ; PRG $098F0
  $98F2: 86 19       stx $19    ; PRG $098F2
  $98F4: a5 18       lda $18    ; PRG $098F4
  $98F6: 29 08       and #$08    ; PRG $098F6
  $98F8: f0 03       beq $98fd    ; PRG $098F8
  $98FA: 4c e5 99    jmp $99e5    ; PRG $098FA
  $98FD: ad 54 70    lda $7054    ; PRG $098FD
  $9900: 85 18       sta $18    ; PRG $09900
  $9902: 86 19       stx $19    ; PRG $09902
  $9904: a5 18       lda $18    ; PRG $09904
  $9906: c9 04       cmp #$04    ; PRG $09906
  $9908: d0 04       bne $990e    ; PRG $09908
  $990A: a5 19       lda $19    ; PRG $0990A
  $990C: c9 00       cmp #$00    ; PRG $0990C
  $990E: d0 03       bne $9913    ; PRG $0990E
  $9910: 4c e5 99    jmp $99e5    ; PRG $09910
  $9913: a9 90       lda #$90    ; PRG $09913
  $9915: 85 18       sta $18    ; PRG $09915
  $9917: a9 01       lda #$01    ; PRG $09917
  $9919: 85 19       sta $19    ; PRG $09919
  $991B: ad 74 6f    lda $6f74    ; PRG $0991B
  $991E: 85 14       sta $14    ; PRG $0991E
  $9920: 86 15       stx $15    ; PRG $09920
  $9922: 18          clc    ; PRG $09922
  $9923: a9 01       lda #$01    ; PRG $09923
  $9925: 65 14       adc $14    ; PRG $09925
  $9927: 85 10       sta $10    ; PRG $09927
  $9929: 8a          txa    ; PRG $09929
  $992A: 65 15       adc $15    ; PRG $0992A
  $992C: 85 11       sta $11    ; PRG $0992C
  $992E: ad 74 6f    lda $6f74    ; PRG $0992E
  $9931: 85 14       sta $14    ; PRG $09931
  $9933: 86 15       stx $15    ; PRG $09933
  $9935: 18          clc    ; PRG $09935
  $9936: a9 01       lda #$01    ; PRG $09936
  $9938: 65 14       adc $14    ; PRG $09938
  $993A: 85 0c       sta $0c    ; PRG $0993A
  $993C: 8a          txa    ; PRG $0993C
  $993D: 65 15       adc $15    ; PRG $0993D
  $993F: 85 0d       sta $0d    ; PRG $0993F
  $9941: a0 0c       ldy #$0c    ; PRG $09941
  $9943: a2 10       ldx #$10    ; PRG $09943
  $9945: a9 14       lda #$14    ; PRG $09945
  $9947: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $09947
  $994A: a0 14       ldy #$14    ; PRG $0994A
  $994C: a2 18       ldx #$18    ; PRG $0994C
  $994E: a9 10       lda #$10    ; PRG $0994E
  $9950: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $09950
  $9953: a5 10       lda $10    ; PRG $09953
  $9955: cd 72 6f    cmp $6f72    ; PRG $09955
  $9958: a5 11       lda $11    ; PRG $09958
  $995A: ed 73 6f    sbc $6f73    ; PRG $0995A
  $995D: 90 03       bcc $9962    ; PRG $0995D
  $995F: 4c 6d 99    jmp $996d    ; PRG $0995F
  $9962: 8a          txa    ; PRG $09962
  $9963: a0 fe       ldy #$fe    ; PRG $09963
  $9965: 91 06       sta ($06),y    ; PRG $09965
  $9967: c8          iny    ; PRG $09967
  $9968: 91 06       sta ($06),y    ; PRG $09968
  $996A: 4c b6 99    jmp $99b6    ; PRG $0996A
  $996D: 8a          txa    ; PRG $0996D
  $996E: 48          pha    ; PRG $0996E
  $996F: a9 03       lda #$03    ; PRG $0996F
  $9971: 48          pha    ; PRG $09971
  $9972: a9 05       lda #$05    ; PRG $09972
  $9974: 85 18       sta $18    ; PRG $09974
  $9976: 86 19       stx $19    ; PRG $09976
  $9978: ad 45 65    lda $6545    ; PRG $09978
  $997B: 85 14       sta $14    ; PRG $0997B
  $997D: 86 15       stx $15    ; PRG $0997D
  $997F: a0 14       ldy #$14    ; PRG $0997F
  $9981: a2 18       ldx #$18    ; PRG $09981
  $9983: a9 10       lda #$10    ; PRG $09983
  $9985: 20 d9 e1    jsr $e1d9   ; alu_div_push_remainder    ; PRG $09985
  $9988: a5 11       lda $11    ; PRG $09988
  $998A: 48          pha    ; PRG $0998A
  $998B: a5 10       lda $10    ; PRG $0998B
  $998D: 48          pha    ; PRG $0998D
  $998E: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0998E
  $9991: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $09991
  $9994: a5 09       lda $09    ; PRG $09994
  $9996: 48          pha    ; PRG $09996
  $9997: a5 08       lda $08    ; PRG $09997
  $9999: 48          pha    ; PRG $09999
  $999A: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0999A
  $999D: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $0999D
  $99A0: 18          clc    ; PRG $099A0
  $99A1: 98          tya    ; PRG $099A1
  $99A2: 65 08       adc $08    ; PRG $099A2
  $99A4: 85 18       sta $18    ; PRG $099A4
  $99A6: 8a          txa    ; PRG $099A6
  $99A7: 65 09       adc $09    ; PRG $099A7
  $99A9: 85 19       sta $19    ; PRG $099A9
  $99AB: a5 18       lda $18    ; PRG $099AB
  $99AD: a0 fe       ldy #$fe    ; PRG $099AD
  $99AF: 91 06       sta ($06),y    ; PRG $099AF
  $99B1: a5 19       lda $19    ; PRG $099B1
  $99B3: c8          iny    ; PRG $099B3
  $99B4: 91 06       sta ($06),y    ; PRG $099B4
  $99B6: a0 fe       ldy #$fe    ; PRG $099B6
  $99B8: b1 06       lda ($06),y    ; PRG $099B8
  $99BA: c8          iny    ; PRG $099BA
  $99BB: 11 06       ora ($06),y    ; PRG $099BB
  $99BD: d0 03       bne $99c2    ; PRG $099BD
  $99BF: 4c d6 99    jmp $99d6    ; PRG $099BF
  $99C2: 8a          txa    ; PRG $099C2
  $99C3: 48          pha    ; PRG $099C3
  $99C4: a9 02       lda #$02    ; PRG $099C4
  $99C6: 48          pha    ; PRG $099C6
  $99C7: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $099C7
  $99CA: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $099CA
  $99CD: a5 08       lda $08    ; PRG $099CD
  $99CF: 05 09       ora $09    ; PRG $099CF
  $99D1: d0 03       bne $99d6    ; PRG $099D1
  $99D3: 4c e5 99    jmp $99e5    ; PRG $099D3
  $99D6: a0 ff       ldy #$ff    ; PRG $099D6
  $99D8: b1 06       lda ($06),y    ; PRG $099D8
  $99DA: 48          pha    ; PRG $099DA
  $99DB: 88          dey    ; PRG $099DB
  $99DC: b1 06       lda ($06),y    ; PRG $099DC
  $99DE: 48          pha    ; PRG $099DE
  $99DF: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $099DF
  $99E2: 4c 96 04    .db $4c $96 $04  -> vm $964C argc 4    ; PRG $099E2
  $99E5: 60          rts    ; PRG $099E5
