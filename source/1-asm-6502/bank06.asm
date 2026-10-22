; ============================================================================
; Uncharted Waters - bank 6 NATIVE disassembly (window base $8000)
; 10 native subs: 8 $E299-stubbed (VM-frame entries) + 1 plain + 1 jumptable/CALL-recovered
; coverage: 6514B code+inline (79%) + 1598B $FF-pad + 80B data
; control-flow-followed, inline bridges ($E299/$E338) skipped; calls resolved vs mesen-labels.toml.
; ============================================================================
.base $8000

; ---- sub_6_0009  [stub]  <- (entry: bytecode/OS via $E299)
nat_6_0003: jsr $E299                    ; 6:8003  native-call prologue
            .db $00 $00 $00            ; inline: argcount $00, frame $0000
  $8009: ad 68 72    lda $7268    ; PRG $0C009
  $800C: d0 03       bne $8011    ; PRG $0C00C
  $800E: 4c 27 80    jmp $8027    ; PRG $0C00E
  $8011: ad 68 72    lda $7268    ; PRG $0C011
  $8014: 85 18       sta $18    ; PRG $0C014
  $8016: 86 19       stx $19    ; PRG $0C016
  $8018: a5 19       lda $19    ; PRG $0C018
  $801A: 48          pha    ; PRG $0C01A
  $801B: a5 18       lda $18    ; PRG $0C01B
  $801D: 48          pha    ; PRG $0C01D
  $801E: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0C01E
  $8021: a5 8a 04    .db $a5 $8a $04  -> vm $8AA5 argc 4    ; PRG $0C021
  $8024: 4c 45 80    jmp $8045    ; PRG $0C024
  $8027: 8a          txa    ; PRG $0C027
  $8028: 48          pha    ; PRG $0C028
  $8029: a9 01       lda #$01    ; PRG $0C029
  $802B: 48          pha    ; PRG $0C02B
  $802C: 8a          txa    ; PRG $0C02C
  $802D: 48          pha    ; PRG $0C02D
  $802E: 48          pha    ; PRG $0C02E
  $802F: a9 8e       lda #$8e    ; PRG $0C02F
  $8031: 48          pha    ; PRG $0C031
  $8032: a9 d1       lda #$d1    ; PRG $0C032
  $8034: 48          pha    ; PRG $0C034
  $8035: 8a          txa    ; PRG $0C035
  $8036: 48          pha    ; PRG $0C036
  $8037: a9 c7       lda #$c7    ; PRG $0C037
  $8039: 48          pha    ; PRG $0C039
  $803A: 8a          txa    ; PRG $0C03A
  $803B: 48          pha    ; PRG $0C03B
  $803C: a9 01       lda #$01    ; PRG $0C03C
  $803E: 48          pha    ; PRG $0C03E
  $803F: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0C03F
  $8042: 3a de 0c    .db $3a $de $0c  -> vm $DE3A argc 12    ; PRG $0C042
  $8045: 60          rts    ; PRG $0C045

; ---- sub_6_004c  [stub]  <- (entry: bytecode/OS via $E299)
nat_6_0046: jsr $E299                    ; 6:8046  native-call prologue
            .db $00 $f6 $ff            ; inline: argcount $00, frame $fff6
  $804C: a0 0d       ldy #$0d    ; PRG $0C04C
  $804E: b1 04       lda ($04),y    ; PRG $0C04E
  $8050: 85 18       sta $18    ; PRG $0C050
  $8052: c8          iny    ; PRG $0C052
  $8053: b1 04       lda ($04),y    ; PRG $0C053
  $8055: 85 19       sta $19    ; PRG $0C055
  $8057: a1 18       lda ($18,x)    ; PRG $0C057
  $8059: 85 14       sta $14    ; PRG $0C059
  $805B: 86 15       stx $15    ; PRG $0C05B
  $805D: a5 14       lda $14    ; PRG $0C05D
  $805F: a0 fc       ldy #$fc    ; PRG $0C05F
  $8061: 91 06       sta ($06),y    ; PRG $0C061
  $8063: a5 15       lda $15    ; PRG $0C063
  $8065: c8          iny    ; PRG $0C065
  $8066: 91 06       sta ($06),y    ; PRG $0C066
  $8068: a0 0d       ldy #$0d    ; PRG $0C068
  $806A: b1 04       lda ($04),y    ; PRG $0C06A
  $806C: 85 18       sta $18    ; PRG $0C06C
  $806E: c8          iny    ; PRG $0C06E
  $806F: b1 04       lda ($04),y    ; PRG $0C06F
  $8071: 85 19       sta $19    ; PRG $0C071
  $8073: a0 01       ldy #$01    ; PRG $0C073
  $8075: b1 18       lda ($18),y    ; PRG $0C075
  $8077: 85 14       sta $14    ; PRG $0C077
  $8079: 86 15       stx $15    ; PRG $0C079
  $807B: a5 14       lda $14    ; PRG $0C07B
  $807D: a0 fa       ldy #$fa    ; PRG $0C07D
  $807F: 91 06       sta ($06),y    ; PRG $0C07F
  $8081: a5 15       lda $15    ; PRG $0C081
  $8083: c8          iny    ; PRG $0C083
  $8084: 91 06       sta ($06),y    ; PRG $0C084
  $8086: a0 0b       ldy #$0b    ; PRG $0C086
  $8088: b1 04       lda ($04),y    ; PRG $0C088
  $808A: 85 18       sta $18    ; PRG $0C08A
  $808C: c8          iny    ; PRG $0C08C
  $808D: b1 04       lda ($04),y    ; PRG $0C08D
  $808F: 85 19       sta $19    ; PRG $0C08F
  $8091: a0 07       ldy #$07    ; PRG $0C091
  $8093: b1 18       lda ($18),y    ; PRG $0C093
  $8095: a0 fe       ldy #$fe    ; PRG $0C095
  $8097: 91 06       sta ($06),y    ; PRG $0C097
  $8099: a0 08       ldy #$08    ; PRG $0C099
  $809B: b1 18       lda ($18),y    ; PRG $0C09B
  $809D: a0 ff       ldy #$ff    ; PRG $0C09D
  $809F: 91 06       sta ($06),y    ; PRG $0C09F
  $80A1: 88          dey    ; PRG $0C0A1
  $80A2: b1 06       lda ($06),y    ; PRG $0C0A2
  $80A4: c8          iny    ; PRG $0C0A4
  $80A5: 11 06       ora ($06),y    ; PRG $0C0A5
  $80A7: f0 03       beq $80ac    ; PRG $0C0A7
  $80A9: 4c ad 80    jmp $80ad    ; PRG $0C0A9
  $80AC: 60          rts    ; PRG $0C0AC
  $80AD: a0 fe       ldy #$fe    ; PRG $0C0AD
  $80AF: b1 06       lda ($06),y    ; PRG $0C0AF
  $80B1: 85 18       sta $18    ; PRG $0C0B1
  $80B3: c8          iny    ; PRG $0C0B3
  $80B4: b1 06       lda ($06),y    ; PRG $0C0B4
  $80B6: 85 19       sta $19    ; PRG $0C0B6
  $80B8: a1 18       lda ($18,x)    ; PRG $0C0B8
  $80BA: 85 14       sta $14    ; PRG $0C0BA
  $80BC: 86 15       stx $15    ; PRG $0C0BC
  $80BE: a5 14       lda $14    ; PRG $0C0BE
  $80C0: a0 f8       ldy #$f8    ; PRG $0C0C0
  $80C2: 91 06       sta ($06),y    ; PRG $0C0C2
  $80C4: a5 15       lda $15    ; PRG $0C0C4
  $80C6: c8          iny    ; PRG $0C0C6
  $80C7: 91 06       sta ($06),y    ; PRG $0C0C7
  $80C9: 18          clc    ; PRG $0C0C9
  $80CA: a9 01       lda #$01    ; PRG $0C0CA
  $80CC: a0 fe       ldy #$fe    ; PRG $0C0CC
  $80CE: 71 06       adc ($06),y    ; PRG $0C0CE
  $80D0: 91 06       sta ($06),y    ; PRG $0C0D0
  $80D2: 8a          txa    ; PRG $0C0D2
  $80D3: c8          iny    ; PRG $0C0D3
  $80D4: 71 06       adc ($06),y    ; PRG $0C0D4
  $80D6: 91 06       sta ($06),y    ; PRG $0C0D6
  $80D8: 88          dey    ; PRG $0C0D8
  $80D9: b1 06       lda ($06),y    ; PRG $0C0D9
  $80DB: 85 18       sta $18    ; PRG $0C0DB
  $80DD: c8          iny    ; PRG $0C0DD
  $80DE: b1 06       lda ($06),y    ; PRG $0C0DE
  $80E0: 85 19       sta $19    ; PRG $0C0E0
  $80E2: a1 18       lda ($18,x)    ; PRG $0C0E2
  $80E4: 85 14       sta $14    ; PRG $0C0E4
  $80E6: 86 15       stx $15    ; PRG $0C0E6
  $80E8: a5 14       lda $14    ; PRG $0C0E8
  $80EA: a0 f6       ldy #$f6    ; PRG $0C0EA
  $80EC: 91 06       sta ($06),y    ; PRG $0C0EC
  $80EE: a5 15       lda $15    ; PRG $0C0EE
  $80F0: c8          iny    ; PRG $0C0F0
  $80F1: 91 06       sta ($06),y    ; PRG $0C0F1
  $80F3: a0 fc       ldy #$fc    ; PRG $0C0F3
  $80F5: b1 06       lda ($06),y    ; PRG $0C0F5
  $80F7: c8          iny    ; PRG $0C0F7
  $80F8: 11 06       ora ($06),y    ; PRG $0C0F8
  $80FA: f0 03       beq $80ff    ; PRG $0C0FA
  $80FC: 4c 1d 81    jmp $811d    ; PRG $0C0FC
  $80FF: a0 f8       ldy #$f8    ; PRG $0C0FF
  $8101: b1 06       lda ($06),y    ; PRG $0C101
  $8103: c9 47       cmp #$47    ; PRG $0C103
  $8105: d0 05       bne $810c    ; PRG $0C105
  $8107: c8          iny    ; PRG $0C107
  $8108: b1 06       lda ($06),y    ; PRG $0C108
  $810A: c9 00       cmp #$00    ; PRG $0C10A
  $810C: f0 03       beq $8111    ; PRG $0C10C
  $810E: 4c 1d 81    jmp $811d    ; PRG $0C10E
  $8111: a9 ff       lda #$ff    ; PRG $0C111
  $8113: a0 f8       ldy #$f8    ; PRG $0C113
  $8115: 91 06       sta ($06),y    ; PRG $0C115
  $8117: c8          iny    ; PRG $0C117
  $8118: 91 06       sta ($06),y    ; PRG $0C118
  $811A: 4c 45 81    jmp $8145    ; PRG $0C11A
  $811D: a0 f8       ldy #$f8    ; PRG $0C11D
  $811F: b1 06       lda ($06),y    ; PRG $0C11F
  $8121: c8          iny    ; PRG $0C121
  $8122: 11 06       ora ($06),y    ; PRG $0C122
  $8124: f0 03       beq $8129    ; PRG $0C124
  $8126: 4c 45 81    jmp $8145    ; PRG $0C126
  $8129: a0 fc       ldy #$fc    ; PRG $0C129
  $812B: b1 06       lda ($06),y    ; PRG $0C12B
  $812D: c9 47       cmp #$47    ; PRG $0C12D
  $812F: d0 05       bne $8136    ; PRG $0C12F
  $8131: c8          iny    ; PRG $0C131
  $8132: b1 06       lda ($06),y    ; PRG $0C132
  $8134: c9 00       cmp #$00    ; PRG $0C134
  $8136: f0 03       beq $813b    ; PRG $0C136
  $8138: 4c 45 81    jmp $8145    ; PRG $0C138
  $813B: a9 48       lda #$48    ; PRG $0C13B
  $813D: a0 f8       ldy #$f8    ; PRG $0C13D
  $813F: 91 06       sta ($06),y    ; PRG $0C13F
  $8141: 8a          txa    ; PRG $0C141
  $8142: c8          iny    ; PRG $0C142
  $8143: 91 06       sta ($06),y    ; PRG $0C143
  $8145: 38          sec    ; PRG $0C145
  $8146: a0 f8       ldy #$f8    ; PRG $0C146
  $8148: b1 06       lda ($06),y    ; PRG $0C148
  $814A: a0 fc       ldy #$fc    ; PRG $0C14A
  $814C: f1 06       sbc ($06),y    ; PRG $0C14C
  $814E: 85 18       sta $18    ; PRG $0C14E
  $8150: a0 f9       ldy #$f9    ; PRG $0C150
  $8152: b1 06       lda ($06),y    ; PRG $0C152
  $8154: a0 fd       ldy #$fd    ; PRG $0C154
  $8156: f1 06       sbc ($06),y    ; PRG $0C156
  $8158: 85 19       sta $19    ; PRG $0C158
  $815A: a5 19       lda $19    ; PRG $0C15A
  $815C: 48          pha    ; PRG $0C15C
  $815D: a5 18       lda $18    ; PRG $0C15D
  $815F: 48          pha    ; PRG $0C15F
  $8160: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0C160
  $8163: 56 dc 04    .db $56 $dc $04  -> vm $DC56 argc 4    ; PRG $0C163
  $8166: 18          clc    ; PRG $0C166
  $8167: 98          tya    ; PRG $0C167
  $8168: 65 08       adc $08    ; PRG $0C168
  $816A: a0 fc       ldy #$fc    ; PRG $0C16A
  $816C: 91 06       sta ($06),y    ; PRG $0C16C
  $816E: 8a          txa    ; PRG $0C16E
  $816F: 65 09       adc $09    ; PRG $0C16F
  $8171: c8          iny    ; PRG $0C171
  $8172: 91 06       sta ($06),y    ; PRG $0C172
  $8174: 38          sec    ; PRG $0C174
  $8175: a0 f6       ldy #$f6    ; PRG $0C175
  $8177: b1 06       lda ($06),y    ; PRG $0C177
  $8179: a0 fa       ldy #$fa    ; PRG $0C179
  $817B: f1 06       sbc ($06),y    ; PRG $0C17B
  $817D: 85 18       sta $18    ; PRG $0C17D
  $817F: a0 f7       ldy #$f7    ; PRG $0C17F
  $8181: b1 06       lda ($06),y    ; PRG $0C181
  $8183: a0 fb       ldy #$fb    ; PRG $0C183
  $8185: f1 06       sbc ($06),y    ; PRG $0C185
  $8187: 85 19       sta $19    ; PRG $0C187
  $8189: a5 19       lda $19    ; PRG $0C189
  $818B: 48          pha    ; PRG $0C18B
  $818C: a5 18       lda $18    ; PRG $0C18C
  $818E: 48          pha    ; PRG $0C18E
  $818F: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0C18F
  $8192: 56 dc 04    .db $56 $dc $04  -> vm $DC56 argc 4    ; PRG $0C192
  $8195: 18          clc    ; PRG $0C195
  $8196: 98          tya    ; PRG $0C196
  $8197: 65 08       adc $08    ; PRG $0C197
  $8199: a0 fa       ldy #$fa    ; PRG $0C199
  $819B: 91 06       sta ($06),y    ; PRG $0C19B
  $819D: 8a          txa    ; PRG $0C19D
  $819E: 65 09       adc $09    ; PRG $0C19E
  $81A0: c8          iny    ; PRG $0C1A0
  $81A1: 91 06       sta ($06),y    ; PRG $0C1A1
  $81A3: a0 0d       ldy #$0d    ; PRG $0C1A3
  $81A5: b1 04       lda ($04),y    ; PRG $0C1A5
  $81A7: 85 18       sta $18    ; PRG $0C1A7
  $81A9: c8          iny    ; PRG $0C1A9
  $81AA: b1 04       lda ($04),y    ; PRG $0C1AA
  $81AC: 85 19       sta $19    ; PRG $0C1AC
  $81AE: a9 01       lda #$01    ; PRG $0C1AE
  $81B0: 85 14       sta $14    ; PRG $0C1B0
  $81B2: 86 15       stx $15    ; PRG $0C1B2
  $81B4: a0 fa       ldy #$fa    ; PRG $0C1B4
  $81B6: b1 06       lda ($06),y    ; PRG $0C1B6
  $81B8: 85 10       sta $10    ; PRG $0C1B8
  $81BA: c8          iny    ; PRG $0C1BA
  $81BB: b1 06       lda ($06),y    ; PRG $0C1BB
  $81BD: 85 11       sta $11    ; PRG $0C1BD
  $81BF: a0 10       ldy #$10    ; PRG $0C1BF
  $81C1: a2 14       ldx #$14    ; PRG $0C1C1
  $81C3: a9 0c       lda #$0c    ; PRG $0C1C3
  $81C5: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0C1C5
  $81C8: a9 06       lda #$06    ; PRG $0C1C8
  $81CA: 85 14       sta $14    ; PRG $0C1CA
  $81CC: 86 15       stx $15    ; PRG $0C1CC
  $81CE: a0 fc       ldy #$fc    ; PRG $0C1CE
  $81D0: b1 06       lda ($06),y    ; PRG $0C1D0
  $81D2: 85 10       sta $10    ; PRG $0C1D2
  $81D4: c8          iny    ; PRG $0C1D4
  $81D5: b1 06       lda ($06),y    ; PRG $0C1D5
  $81D7: 85 11       sta $11    ; PRG $0C1D7
  $81D9: a0 10       ldy #$10    ; PRG $0C1D9
  $81DB: a2 14       ldx #$14    ; PRG $0C1DB
  $81DD: a9 08       lda #$08    ; PRG $0C1DD
  $81DF: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0C1DF
  $81E2: 18          clc    ; PRG $0C1E2
  $81E3: a5 08       lda $08    ; PRG $0C1E3
  $81E5: 65 0c       adc $0c    ; PRG $0C1E5
  $81E7: 85 14       sta $14    ; PRG $0C1E7
  $81E9: a5 09       lda $09    ; PRG $0C1E9
  $81EB: 65 0d       adc $0d    ; PRG $0C1EB
  $81ED: 85 15       sta $15    ; PRG $0C1ED
  $81EF: 18          clc    ; PRG $0C1EF
  $81F0: a5 14       lda $14    ; PRG $0C1F0
  $81F2: 69 90       adc #$90    ; PRG $0C1F2
  $81F4: 85 10       sta $10    ; PRG $0C1F4
  $81F6: a5 15       lda $15    ; PRG $0C1F6
  $81F8: 69 99       adc #$99    ; PRG $0C1F8
  $81FA: 85 11       sta $11    ; PRG $0C1FA
  $81FC: a1 10       lda ($10,x)    ; PRG $0C1FC
  $81FE: a0 08       ldy #$08    ; PRG $0C1FE
  $8200: 91 18       sta ($18),y    ; PRG $0C200
  $8202: 60          rts    ; PRG $0C202

; ---- sub_6_0209  [stub]  <- (entry: bytecode/OS via $E299)
nat_6_0203: jsr $E299                    ; 6:8203  native-call prologue
            .db $00 $00 $00            ; inline: argcount $00, frame $0000
  $8209: a0 0d       ldy #$0d    ; PRG $0C209
  $820B: b1 04       lda ($04),y    ; PRG $0C20B
  $820D: 85 18       sta $18    ; PRG $0C20D
  $820F: c8          iny    ; PRG $0C20F
  $8210: b1 04       lda ($04),y    ; PRG $0C210
  $8212: 85 19       sta $19    ; PRG $0C212
  $8214: 88          dey    ; PRG $0C214
  $8215: b1 04       lda ($04),y    ; PRG $0C215
  $8217: 85 14       sta $14    ; PRG $0C217
  $8219: c8          iny    ; PRG $0C219
  $821A: b1 04       lda ($04),y    ; PRG $0C21A
  $821C: 85 15       sta $15    ; PRG $0C21C
  $821E: a9 ff       lda #$ff    ; PRG $0C21E
  $8220: a0 03       ldy #$03    ; PRG $0C220
  $8222: 91 14       sta ($14),y    ; PRG $0C222
  $8224: 88          dey    ; PRG $0C224
  $8225: 91 18       sta ($18),y    ; PRG $0C225
  $8227: a0 0b       ldy #$0b    ; PRG $0C227
  $8229: b1 04       lda ($04),y    ; PRG $0C229
  $822B: 85 18       sta $18    ; PRG $0C22B
  $822D: c8          iny    ; PRG $0C22D
  $822E: b1 04       lda ($04),y    ; PRG $0C22E
  $8230: 85 19       sta $19    ; PRG $0C230
  $8232: a0 07       ldy #$07    ; PRG $0C232
  $8234: b1 18       lda ($18),y    ; PRG $0C234
  $8236: 85 14       sta $14    ; PRG $0C236
  $8238: c8          iny    ; PRG $0C238
  $8239: b1 18       lda ($18),y    ; PRG $0C239
  $823B: 85 15       sta $15    ; PRG $0C23B
  $823D: a1 14       lda ($14,x)    ; PRG $0C23D
  $823F: 85 18       sta $18    ; PRG $0C23F
  $8241: 86 19       stx $19    ; PRG $0C241
  $8243: a5 18       lda $18    ; PRG $0C243
  $8245: c9 ff       cmp #$ff    ; PRG $0C245
  $8247: d0 04       bne $824d    ; PRG $0C247
  $8249: a5 19       lda $19    ; PRG $0C249
  $824B: c9 00       cmp #$00    ; PRG $0C24B
  $824D: d0 03       bne $8252    ; PRG $0C24D
  $824F: 4c ec 82    jmp $82ec    ; PRG $0C24F
  $8252: a0 0b       ldy #$0b    ; PRG $0C252
  $8254: b1 04       lda ($04),y    ; PRG $0C254
  $8256: 85 18       sta $18    ; PRG $0C256
  $8258: c8          iny    ; PRG $0C258
  $8259: b1 04       lda ($04),y    ; PRG $0C259
  $825B: 85 19       sta $19    ; PRG $0C25B
  $825D: a0 07       ldy #$07    ; PRG $0C25D
  $825F: b1 18       lda ($18),y    ; PRG $0C25F
  $8261: c8          iny    ; PRG $0C261
  $8262: 11 18       ora ($18),y    ; PRG $0C262
  $8264: d0 03       bne $8269    ; PRG $0C264
  $8266: 4c ec 82    jmp $82ec    ; PRG $0C266
  $8269: a0 0d       ldy #$0d    ; PRG $0C269
  $826B: b1 04       lda ($04),y    ; PRG $0C26B
  $826D: 85 18       sta $18    ; PRG $0C26D
  $826F: c8          iny    ; PRG $0C26F
  $8270: b1 04       lda ($04),y    ; PRG $0C270
  $8272: 85 19       sta $19    ; PRG $0C272
  $8274: a0 0b       ldy #$0b    ; PRG $0C274
  $8276: b1 04       lda ($04),y    ; PRG $0C276
  $8278: 85 14       sta $14    ; PRG $0C278
  $827A: c8          iny    ; PRG $0C27A
  $827B: b1 04       lda ($04),y    ; PRG $0C27B
  $827D: 85 15       sta $15    ; PRG $0C27D
  $827F: a0 07       ldy #$07    ; PRG $0C27F
  $8281: b1 14       lda ($14),y    ; PRG $0C281
  $8283: 85 10       sta $10    ; PRG $0C283
  $8285: c8          iny    ; PRG $0C285
  $8286: b1 14       lda ($14),y    ; PRG $0C286
  $8288: 85 11       sta $11    ; PRG $0C288
  $828A: a1 10       lda ($10,x)    ; PRG $0C28A
  $828C: 81 18       sta ($18,x)    ; PRG $0C28C
  $828E: a0 0b       ldy #$0b    ; PRG $0C28E
  $8290: b1 04       lda ($04),y    ; PRG $0C290
  $8292: 85 18       sta $18    ; PRG $0C292
  $8294: c8          iny    ; PRG $0C294
  $8295: b1 04       lda ($04),y    ; PRG $0C295
  $8297: 85 19       sta $19    ; PRG $0C297
  $8299: 18          clc    ; PRG $0C299
  $829A: a9 01       lda #$01    ; PRG $0C29A
  $829C: a0 07       ldy #$07    ; PRG $0C29C
  $829E: 71 18       adc ($18),y    ; PRG $0C29E
  $82A0: 91 18       sta ($18),y    ; PRG $0C2A0
  $82A2: 8a          txa    ; PRG $0C2A2
  $82A3: c8          iny    ; PRG $0C2A3
  $82A4: 71 18       adc ($18),y    ; PRG $0C2A4
  $82A6: 91 18       sta ($18),y    ; PRG $0C2A6
  $82A8: a0 0d       ldy #$0d    ; PRG $0C2A8
  $82AA: b1 04       lda ($04),y    ; PRG $0C2AA
  $82AC: 85 18       sta $18    ; PRG $0C2AC
  $82AE: c8          iny    ; PRG $0C2AE
  $82AF: b1 04       lda ($04),y    ; PRG $0C2AF
  $82B1: 85 19       sta $19    ; PRG $0C2B1
  $82B3: a0 0b       ldy #$0b    ; PRG $0C2B3
  $82B5: b1 04       lda ($04),y    ; PRG $0C2B5
  $82B7: 85 14       sta $14    ; PRG $0C2B7
  $82B9: c8          iny    ; PRG $0C2B9
  $82BA: b1 04       lda ($04),y    ; PRG $0C2BA
  $82BC: 85 15       sta $15    ; PRG $0C2BC
  $82BE: a0 07       ldy #$07    ; PRG $0C2BE
  $82C0: b1 14       lda ($14),y    ; PRG $0C2C0
  $82C2: 85 10       sta $10    ; PRG $0C2C2
  $82C4: c8          iny    ; PRG $0C2C4
  $82C5: b1 14       lda ($14),y    ; PRG $0C2C5
  $82C7: 85 11       sta $11    ; PRG $0C2C7
  $82C9: a1 10       lda ($10,x)    ; PRG $0C2C9
  $82CB: a0 01       ldy #$01    ; PRG $0C2CB
  $82CD: 91 18       sta ($18),y    ; PRG $0C2CD
  $82CF: a0 0b       ldy #$0b    ; PRG $0C2CF
  $82D1: b1 04       lda ($04),y    ; PRG $0C2D1
  $82D3: 85 18       sta $18    ; PRG $0C2D3
  $82D5: c8          iny    ; PRG $0C2D5
  $82D6: b1 04       lda ($04),y    ; PRG $0C2D6
  $82D8: 85 19       sta $19    ; PRG $0C2D8
  $82DA: 18          clc    ; PRG $0C2DA
  $82DB: a9 01       lda #$01    ; PRG $0C2DB
  $82DD: a0 07       ldy #$07    ; PRG $0C2DD
  $82DF: 71 18       adc ($18),y    ; PRG $0C2DF
  $82E1: 91 18       sta ($18),y    ; PRG $0C2E1
  $82E3: 8a          txa    ; PRG $0C2E3
  $82E4: c8          iny    ; PRG $0C2E4
  $82E5: 71 18       adc ($18),y    ; PRG $0C2E5
  $82E7: 91 18       sta ($18),y    ; PRG $0C2E7
  $82E9: 4c ff 82    jmp $82ff    ; PRG $0C2E9
  $82EC: a0 0b       ldy #$0b    ; PRG $0C2EC
  $82EE: b1 04       lda ($04),y    ; PRG $0C2EE
  $82F0: 85 18       sta $18    ; PRG $0C2F0
  $82F2: c8          iny    ; PRG $0C2F2
  $82F3: b1 04       lda ($04),y    ; PRG $0C2F3
  $82F5: 85 19       sta $19    ; PRG $0C2F5
  $82F7: 8a          txa    ; PRG $0C2F7
  $82F8: a0 07       ldy #$07    ; PRG $0C2F8
  $82FA: 91 18       sta ($18),y    ; PRG $0C2FA
  $82FC: c8          iny    ; PRG $0C2FC
  $82FD: 91 18       sta ($18),y    ; PRG $0C2FD
  $82FF: 60          rts    ; PRG $0C2FF

; ---- sub_6_0306  [stub]  <- (entry: bytecode/OS via $E299)
nat_6_0300: jsr $E299                    ; 6:8300  native-call prologue
            .db $00 $ee $ff            ; inline: argcount $00, frame $ffee
  $8306: a9 33       lda #$33    ; PRG $0C306
  $8308: 85 18       sta $18    ; PRG $0C308
  $830A: 86 19       stx $19    ; PRG $0C30A
  $830C: 18          clc    ; PRG $0C30C
  $830D: a9 ff       lda #$ff    ; PRG $0C30D
  $830F: a0 0b       ldy #$0b    ; PRG $0C30F
  $8311: 71 04       adc ($04),y    ; PRG $0C311
  $8313: 85 14       sta $14    ; PRG $0C313
  $8315: a9 ff       lda #$ff    ; PRG $0C315
  $8317: c8          iny    ; PRG $0C317
  $8318: 71 04       adc ($04),y    ; PRG $0C318
  $831A: 85 15       sta $15    ; PRG $0C31A
  $831C: a0 14       ldy #$14    ; PRG $0C31C
  $831E: a2 18       ldx #$18    ; PRG $0C31E
  $8320: a9 10       lda #$10    ; PRG $0C320
  $8322: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0C322
  $8325: 18          clc    ; PRG $0C325
  $8326: a5 10       lda $10    ; PRG $0C326
  $8328: 69 04       adc #$04    ; PRG $0C328
  $832A: a0 f0       ldy #$f0    ; PRG $0C32A
  $832C: 91 06       sta ($06),y    ; PRG $0C32C
  $832E: a5 11       lda $11    ; PRG $0C32E
  $8330: 69 60       adc #$60    ; PRG $0C330
  $8332: c8          iny    ; PRG $0C332
  $8333: 91 06       sta ($06),y    ; PRG $0C333
  $8335: 88          dey    ; PRG $0C335
  $8336: b1 06       lda ($06),y    ; PRG $0C336
  $8338: 85 18       sta $18    ; PRG $0C338
  $833A: c8          iny    ; PRG $0C33A
  $833B: b1 06       lda ($06),y    ; PRG $0C33B
  $833D: 85 19       sta $19    ; PRG $0C33D
  $833F: a0 07       ldy #$07    ; PRG $0C33F
  $8341: b1 18       lda ($18),y    ; PRG $0C341
  $8343: a0 f2       ldy #$f2    ; PRG $0C343
  $8345: 91 06       sta ($06),y    ; PRG $0C345
  $8347: a0 08       ldy #$08    ; PRG $0C347
  $8349: b1 18       lda ($18),y    ; PRG $0C349
  $834B: a0 f3       ldy #$f3    ; PRG $0C34B
  $834D: 91 06       sta ($06),y    ; PRG $0C34D
  $834F: 88          dey    ; PRG $0C34F
  $8350: b1 06       lda ($06),y    ; PRG $0C350
  $8352: c8          iny    ; PRG $0C352
  $8353: 11 06       ora ($06),y    ; PRG $0C353
  $8355: f0 03       beq $835a    ; PRG $0C355
  $8357: 4c 5b 83    jmp $835b    ; PRG $0C357
  $835A: 60          rts    ; PRG $0C35A
  $835B: a9 04       lda #$04    ; PRG $0C35B
  $835D: 85 18       sta $18    ; PRG $0C35D
  $835F: 86 19       stx $19    ; PRG $0C35F
  $8361: a0 0b       ldy #$0b    ; PRG $0C361
  $8363: b1 04       lda ($04),y    ; PRG $0C363
  $8365: 85 14       sta $14    ; PRG $0C365
  $8367: c8          iny    ; PRG $0C367
  $8368: b1 04       lda ($04),y    ; PRG $0C368
  $836A: 85 15       sta $15    ; PRG $0C36A
  $836C: a0 14       ldy #$14    ; PRG $0C36C
  $836E: a2 18       ldx #$18    ; PRG $0C36E
  $8370: a9 10       lda #$10    ; PRG $0C370
  $8372: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0C372
  $8375: 18          clc    ; PRG $0C375
  $8376: a5 10       lda $10    ; PRG $0C376
  $8378: 69 62       adc #$62    ; PRG $0C378
  $837A: a0 ee       ldy #$ee    ; PRG $0C37A
  $837C: 91 06       sta ($06),y    ; PRG $0C37C
  $837E: a5 11       lda $11    ; PRG $0C37E
  $8380: 69 66       adc #$66    ; PRG $0C380
  $8382: c8          iny    ; PRG $0C382
  $8383: 91 06       sta ($06),y    ; PRG $0C383
  $8385: 88          dey    ; PRG $0C385
  $8386: b1 06       lda ($06),y    ; PRG $0C386
  $8388: 85 18       sta $18    ; PRG $0C388
  $838A: c8          iny    ; PRG $0C38A
  $838B: b1 06       lda ($06),y    ; PRG $0C38B
  $838D: 85 19       sta $19    ; PRG $0C38D
  $838F: a1 18       lda ($18,x)    ; PRG $0C38F
  $8391: 85 14       sta $14    ; PRG $0C391
  $8393: 86 15       stx $15    ; PRG $0C393
  $8395: a5 14       lda $14    ; PRG $0C395
  $8397: a0 fe       ldy #$fe    ; PRG $0C397
  $8399: 91 06       sta ($06),y    ; PRG $0C399
  $839B: a5 15       lda $15    ; PRG $0C39B
  $839D: c8          iny    ; PRG $0C39D
  $839E: 91 06       sta ($06),y    ; PRG $0C39E
  $83A0: a0 ee       ldy #$ee    ; PRG $0C3A0
  $83A2: b1 06       lda ($06),y    ; PRG $0C3A2
  $83A4: 85 18       sta $18    ; PRG $0C3A4
  $83A6: c8          iny    ; PRG $0C3A6
  $83A7: b1 06       lda ($06),y    ; PRG $0C3A7
  $83A9: 85 19       sta $19    ; PRG $0C3A9
  $83AB: a0 01       ldy #$01    ; PRG $0C3AB
  $83AD: b1 18       lda ($18),y    ; PRG $0C3AD
  $83AF: 85 14       sta $14    ; PRG $0C3AF
  $83B1: 86 15       stx $15    ; PRG $0C3B1
  $83B3: a5 14       lda $14    ; PRG $0C3B3
  $83B5: a0 fc       ldy #$fc    ; PRG $0C3B5
  $83B7: 91 06       sta ($06),y    ; PRG $0C3B7
  $83B9: a5 15       lda $15    ; PRG $0C3B9
  $83BB: c8          iny    ; PRG $0C3BB
  $83BC: 91 06       sta ($06),y    ; PRG $0C3BC
  $83BE: a9 03       lda #$03    ; PRG $0C3BE
  $83C0: 85 18       sta $18    ; PRG $0C3C0
  $83C2: 86 19       stx $19    ; PRG $0C3C2
  $83C4: c8          iny    ; PRG $0C3C4
  $83C5: b1 06       lda ($06),y    ; PRG $0C3C5
  $83C7: 85 14       sta $14    ; PRG $0C3C7
  $83C9: c8          iny    ; PRG $0C3C9
  $83CA: b1 06       lda ($06),y    ; PRG $0C3CA
  $83CC: 85 15       sta $15    ; PRG $0C3CC
  $83CE: a0 14       ldy #$14    ; PRG $0C3CE
  $83D0: a2 18       ldx #$18    ; PRG $0C3D0
  $83D2: a9 10       lda #$10    ; PRG $0C3D2
  $83D4: 20 b4 e1    jsr $e1b4   ; alu_abs16    ; PRG $0C3D4
  $83D7: ad 63 72    lda $7263    ; PRG $0C3D7
  $83DA: 85 18       sta $18    ; PRG $0C3DA
  $83DC: 86 19       stx $19    ; PRG $0C3DC
  $83DE: a5 18       lda $18    ; PRG $0C3DE
  $83E0: c5 10       cmp $10    ; PRG $0C3E0
  $83E2: d0 04       bne $83e8    ; PRG $0C3E2
  $83E4: a5 19       lda $19    ; PRG $0C3E4
  $83E6: c5 11       cmp $11    ; PRG $0C3E6
  $83E8: f0 03       beq $83ed    ; PRG $0C3E8
  $83EA: 4c 2a 89    jmp $892a    ; PRG $0C3EA
  $83ED: a9 03       lda #$03    ; PRG $0C3ED
  $83EF: 85 18       sta $18    ; PRG $0C3EF
  $83F1: 86 19       stx $19    ; PRG $0C3F1
  $83F3: a0 fc       ldy #$fc    ; PRG $0C3F3
  $83F5: b1 06       lda ($06),y    ; PRG $0C3F5
  $83F7: 85 14       sta $14    ; PRG $0C3F7
  $83F9: c8          iny    ; PRG $0C3F9
  $83FA: b1 06       lda ($06),y    ; PRG $0C3FA
  $83FC: 85 15       sta $15    ; PRG $0C3FC
  $83FE: a0 14       ldy #$14    ; PRG $0C3FE
  $8400: a2 18       ldx #$18    ; PRG $0C400
  $8402: a9 10       lda #$10    ; PRG $0C402
  $8404: 20 b4 e1    jsr $e1b4   ; alu_abs16    ; PRG $0C404
  $8407: ad 64 72    lda $7264    ; PRG $0C407
  $840A: 85 18       sta $18    ; PRG $0C40A
  $840C: 86 19       stx $19    ; PRG $0C40C
  $840E: a5 18       lda $18    ; PRG $0C40E
  $8410: c5 10       cmp $10    ; PRG $0C410
  $8412: d0 04       bne $8418    ; PRG $0C412
  $8414: a5 19       lda $19    ; PRG $0C414
  $8416: c5 11       cmp $11    ; PRG $0C416
  $8418: f0 03       beq $841d    ; PRG $0C418
  $841A: 4c 2a 89    jmp $892a    ; PRG $0C41A
  $841D: a0 ee       ldy #$ee    ; PRG $0C41D
  $841F: b1 06       lda ($06),y    ; PRG $0C41F
  $8421: 85 18       sta $18    ; PRG $0C421
  $8423: c8          iny    ; PRG $0C423
  $8424: b1 06       lda ($06),y    ; PRG $0C424
  $8426: 85 19       sta $19    ; PRG $0C426
  $8428: a0 08       ldy #$08    ; PRG $0C428
  $842A: b1 18       lda ($18),y    ; PRG $0C42A
  $842C: 85 14       sta $14    ; PRG $0C42C
  $842E: 86 15       stx $15    ; PRG $0C42E
  $8430: a9 07       lda #$07    ; PRG $0C430
  $8432: c5 14       cmp $14    ; PRG $0C432
  $8434: 8a          txa    ; PRG $0C434
  $8435: e5 15       sbc $15    ; PRG $0C435
  $8437: 90 03       bcc $843c    ; PRG $0C437
  $8439: 4c 54 84    jmp $8454    ; PRG $0C439
  $843C: a0 ef       ldy #$ef    ; PRG $0C43C
  $843E: b1 06       lda ($06),y    ; PRG $0C43E
  $8440: 48          pha    ; PRG $0C440
  $8441: 88          dey    ; PRG $0C441
  $8442: b1 06       lda ($06),y    ; PRG $0C442
  $8444: 48          pha    ; PRG $0C444
  $8445: a0 f1       ldy #$f1    ; PRG $0C445
  $8447: b1 06       lda ($06),y    ; PRG $0C447
  $8449: 48          pha    ; PRG $0C449
  $844A: 88          dey    ; PRG $0C44A
  $844B: b1 06       lda ($06),y    ; PRG $0C44B
  $844D: 48          pha    ; PRG $0C44D
  $844E: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0C44E
  $8451: 46 80 06    .db $46 $80 $06  -> vm $8046 argc 6    ; PRG $0C451
  $8454: a9 03       lda #$03    ; PRG $0C454
  $8456: 85 18       sta $18    ; PRG $0C456
  $8458: 86 19       stx $19    ; PRG $0C458
  $845A: a0 ee       ldy #$ee    ; PRG $0C45A
  $845C: b1 06       lda ($06),y    ; PRG $0C45C
  $845E: 85 14       sta $14    ; PRG $0C45E
  $8460: c8          iny    ; PRG $0C460
  $8461: b1 06       lda ($06),y    ; PRG $0C461
  $8463: 85 15       sta $15    ; PRG $0C463
  $8465: a1 14       lda ($14,x)    ; PRG $0C465
  $8467: 85 10       sta $10    ; PRG $0C467
  $8469: 86 11       stx $11    ; PRG $0C469
  $846B: a0 10       ldy #$10    ; PRG $0C46B
  $846D: a2 18       ldx #$18    ; PRG $0C46D
  $846F: a9 14       lda #$14    ; PRG $0C46F
  $8471: 20 eb e1    jsr $e1eb   ; alu_udiv16    ; PRG $0C471
  $8474: ad 65 72    lda $7265    ; PRG $0C474
  $8477: 85 18       sta $18    ; PRG $0C477
  $8479: 86 19       stx $19    ; PRG $0C479
  $847B: a5 18       lda $18    ; PRG $0C47B
  $847D: c5 14       cmp $14    ; PRG $0C47D
  $847F: d0 04       bne $8485    ; PRG $0C47F
  $8481: a5 19       lda $19    ; PRG $0C481
  $8483: c5 15       cmp $15    ; PRG $0C483
  $8485: f0 03       beq $848a    ; PRG $0C485
  $8487: 4c e7 84    jmp $84e7    ; PRG $0C487
  $848A: a9 03       lda #$03    ; PRG $0C48A
  $848C: 85 18       sta $18    ; PRG $0C48C
  $848E: 86 19       stx $19    ; PRG $0C48E
  $8490: a0 ee       ldy #$ee    ; PRG $0C490
  $8492: b1 06       lda ($06),y    ; PRG $0C492
  $8494: 85 14       sta $14    ; PRG $0C494
  $8496: c8          iny    ; PRG $0C496
  $8497: b1 06       lda ($06),y    ; PRG $0C497
  $8499: 85 15       sta $15    ; PRG $0C499
  $849B: a0 01       ldy #$01    ; PRG $0C49B
  $849D: b1 14       lda ($14),y    ; PRG $0C49D
  $849F: 85 10       sta $10    ; PRG $0C49F
  $84A1: 86 11       stx $11    ; PRG $0C4A1
  $84A3: a0 10       ldy #$10    ; PRG $0C4A3
  $84A5: a2 18       ldx #$18    ; PRG $0C4A5
  $84A7: a9 14       lda #$14    ; PRG $0C4A7
  $84A9: 20 eb e1    jsr $e1eb   ; alu_udiv16    ; PRG $0C4A9
  $84AC: ad 66 72    lda $7266    ; PRG $0C4AC
  $84AF: 85 18       sta $18    ; PRG $0C4AF
  $84B1: 86 19       stx $19    ; PRG $0C4B1
  $84B3: a5 18       lda $18    ; PRG $0C4B3
  $84B5: c5 14       cmp $14    ; PRG $0C4B5
  $84B7: d0 04       bne $84bd    ; PRG $0C4B7
  $84B9: a5 19       lda $19    ; PRG $0C4B9
  $84BB: c5 15       cmp $15    ; PRG $0C4BB
  $84BD: f0 03       beq $84c2    ; PRG $0C4BD
  $84BF: 4c e7 84    jmp $84e7    ; PRG $0C4BF
  $84C2: 8a          txa    ; PRG $0C4C2
  $84C3: 48          pha    ; PRG $0C4C3
  $84C4: 48          pha    ; PRG $0C4C4
  $84C5: a0 0c       ldy #$0c    ; PRG $0C4C5
  $84C7: b1 04       lda ($04),y    ; PRG $0C4C7
  $84C9: 48          pha    ; PRG $0C4C9
  $84CA: 88          dey    ; PRG $0C4CA
  $84CB: b1 04       lda ($04),y    ; PRG $0C4CB
  $84CD: 48          pha    ; PRG $0C4CD
  $84CE: a9 8e       lda #$8e    ; PRG $0C4CE
  $84D0: 48          pha    ; PRG $0C4D0
  $84D1: a9 d1       lda #$d1    ; PRG $0C4D1
  $84D3: 48          pha    ; PRG $0C4D3
  $84D4: 8a          txa    ; PRG $0C4D4
  $84D5: 48          pha    ; PRG $0C4D5
  $84D6: a9 c7       lda #$c7    ; PRG $0C4D6
  $84D8: 48          pha    ; PRG $0C4D8
  $84D9: 8a          txa    ; PRG $0C4D9
  $84DA: 48          pha    ; PRG $0C4DA
  $84DB: a9 01       lda #$01    ; PRG $0C4DB
  $84DD: 48          pha    ; PRG $0C4DD
  $84DE: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0C4DE
  $84E1: 3a de 0c    .db $3a $de $0c  -> vm $DE3A argc 12    ; PRG $0C4E1
  $84E4: 4c 27 89    jmp $8927    ; PRG $0C4E4
  $84E7: a0 ee       ldy #$ee    ; PRG $0C4E7
  $84E9: b1 06       lda ($06),y    ; PRG $0C4E9
  $84EB: 85 18       sta $18    ; PRG $0C4EB
  $84ED: c8          iny    ; PRG $0C4ED
  $84EE: b1 06       lda ($06),y    ; PRG $0C4EE
  $84F0: 85 19       sta $19    ; PRG $0C4F0
  $84F2: a9 ff       lda #$ff    ; PRG $0C4F2
  $84F4: a0 08       ldy #$08    ; PRG $0C4F4
  $84F6: 91 18       sta ($18),y    ; PRG $0C4F6
  $84F8: a0 ee       ldy #$ee    ; PRG $0C4F8
  $84FA: b1 06       lda ($06),y    ; PRG $0C4FA
  $84FC: 85 18       sta $18    ; PRG $0C4FC
  $84FE: c8          iny    ; PRG $0C4FE
  $84FF: b1 06       lda ($06),y    ; PRG $0C4FF
  $8501: 85 19       sta $19    ; PRG $0C501
  $8503: a0 02       ldy #$02    ; PRG $0C503
  $8505: b1 18       lda ($18),y    ; PRG $0C505
  $8507: 85 14       sta $14    ; PRG $0C507
  $8509: 86 15       stx $15    ; PRG $0C509
  $850B: a5 14       lda $14    ; PRG $0C50B
  $850D: c9 ff       cmp #$ff    ; PRG $0C50D
  $850F: d0 04       bne $8515    ; PRG $0C50F
  $8511: a5 15       lda $15    ; PRG $0C511
  $8513: c9 00       cmp #$00    ; PRG $0C513
  $8515: d0 03       bne $851a    ; PRG $0C515
  $8517: 4c 3c 85    jmp $853c    ; PRG $0C517
  $851A: a0 ee       ldy #$ee    ; PRG $0C51A
  $851C: b1 06       lda ($06),y    ; PRG $0C51C
  $851E: 85 18       sta $18    ; PRG $0C51E
  $8520: c8          iny    ; PRG $0C520
  $8521: b1 06       lda ($06),y    ; PRG $0C521
  $8523: 85 19       sta $19    ; PRG $0C523
  $8525: a0 03       ldy #$03    ; PRG $0C525
  $8527: b1 18       lda ($18),y    ; PRG $0C527
  $8529: 85 14       sta $14    ; PRG $0C529
  $852B: 86 15       stx $15    ; PRG $0C52B
  $852D: a5 14       lda $14    ; PRG $0C52D
  $852F: c9 ff       cmp #$ff    ; PRG $0C52F
  $8531: d0 04       bne $8537    ; PRG $0C531
  $8533: a5 15       lda $15    ; PRG $0C533
  $8535: c9 00       cmp #$00    ; PRG $0C535
  $8537: f0 03       beq $853c    ; PRG $0C537
  $8539: 4c 57 85    jmp $8557    ; PRG $0C539
  $853C: a0 ef       ldy #$ef    ; PRG $0C53C
  $853E: b1 06       lda ($06),y    ; PRG $0C53E
  $8540: 48          pha    ; PRG $0C540
  $8541: 88          dey    ; PRG $0C541
  $8542: b1 06       lda ($06),y    ; PRG $0C542
  $8544: 48          pha    ; PRG $0C544
  $8545: a0 f1       ldy #$f1    ; PRG $0C545
  $8547: b1 06       lda ($06),y    ; PRG $0C547
  $8549: 48          pha    ; PRG $0C549
  $854A: 88          dey    ; PRG $0C54A
  $854B: b1 06       lda ($06),y    ; PRG $0C54B
  $854D: 48          pha    ; PRG $0C54D
  $854E: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0C54E
  $8551: 03 82 06    .db $03 $82 $06  -> vm $8203 argc 6    ; PRG $0C551
  $8554: 4c 27 89    jmp $8927    ; PRG $0C554
  $8557: 8a          txa    ; PRG $0C557
  $8558: 48          pha    ; PRG $0C558
  $8559: a9 03       lda #$03    ; PRG $0C559
  $855B: 48          pha    ; PRG $0C55B
  $855C: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0C55C
  $855F: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $0C55F
  $8562: a5 08       lda $08    ; PRG $0C562
  $8564: 05 09       ora $09    ; PRG $0C564
  $8566: f0 03       beq $856b    ; PRG $0C566
  $8568: 4c 27 89    jmp $8927    ; PRG $0C568
  $856B: a0 f2       ldy #$f2    ; PRG $0C56B
  $856D: b1 06       lda ($06),y    ; PRG $0C56D
  $856F: 85 18       sta $18    ; PRG $0C56F
  $8571: c8          iny    ; PRG $0C571
  $8572: b1 06       lda ($06),y    ; PRG $0C572
  $8574: 85 19       sta $19    ; PRG $0C574
  $8576: a1 18       lda ($18,x)    ; PRG $0C576
  $8578: 85 14       sta $14    ; PRG $0C578
  $857A: 86 15       stx $15    ; PRG $0C57A
  $857C: a5 14       lda $14    ; PRG $0C57C
  $857E: c9 ff       cmp #$ff    ; PRG $0C57E
  $8580: d0 04       bne $8586    ; PRG $0C580
  $8582: a5 15       lda $15    ; PRG $0C582
  $8584: c9 00       cmp #$00    ; PRG $0C584
  $8586: d0 03       bne $858b    ; PRG $0C586
  $8588: 4c 27 89    jmp $8927    ; PRG $0C588
  $858B: a0 f2       ldy #$f2    ; PRG $0C58B
  $858D: b1 06       lda ($06),y    ; PRG $0C58D
  $858F: c8          iny    ; PRG $0C58F
  $8590: 11 06       ora ($06),y    ; PRG $0C590
  $8592: d0 03       bne $8597    ; PRG $0C592
  $8594: 4c de 85    jmp $85de    ; PRG $0C594
  $8597: 88          dey    ; PRG $0C597
  $8598: b1 06       lda ($06),y    ; PRG $0C598
  $859A: 85 18       sta $18    ; PRG $0C59A
  $859C: c8          iny    ; PRG $0C59C
  $859D: b1 06       lda ($06),y    ; PRG $0C59D
  $859F: 85 19       sta $19    ; PRG $0C59F
  $85A1: a1 18       lda ($18,x)    ; PRG $0C5A1
  $85A3: 85 14       sta $14    ; PRG $0C5A3
  $85A5: 86 15       stx $15    ; PRG $0C5A5
  $85A7: a5 14       lda $14    ; PRG $0C5A7
  $85A9: a0 f6       ldy #$f6    ; PRG $0C5A9
  $85AB: 91 06       sta ($06),y    ; PRG $0C5AB
  $85AD: a5 15       lda $15    ; PRG $0C5AD
  $85AF: c8          iny    ; PRG $0C5AF
  $85B0: 91 06       sta ($06),y    ; PRG $0C5B0
  $85B2: 18          clc    ; PRG $0C5B2
  $85B3: a9 01       lda #$01    ; PRG $0C5B3
  $85B5: a0 f2       ldy #$f2    ; PRG $0C5B5
  $85B7: 71 06       adc ($06),y    ; PRG $0C5B7
  $85B9: 91 06       sta ($06),y    ; PRG $0C5B9
  $85BB: 8a          txa    ; PRG $0C5BB
  $85BC: c8          iny    ; PRG $0C5BC
  $85BD: 71 06       adc ($06),y    ; PRG $0C5BD
  $85BF: 91 06       sta ($06),y    ; PRG $0C5BF
  $85C1: 88          dey    ; PRG $0C5C1
  $85C2: b1 06       lda ($06),y    ; PRG $0C5C2
  $85C4: 85 18       sta $18    ; PRG $0C5C4
  $85C6: c8          iny    ; PRG $0C5C6
  $85C7: b1 06       lda ($06),y    ; PRG $0C5C7
  $85C9: 85 19       sta $19    ; PRG $0C5C9
  $85CB: a1 18       lda ($18,x)    ; PRG $0C5CB
  $85CD: 85 14       sta $14    ; PRG $0C5CD
  $85CF: 86 15       stx $15    ; PRG $0C5CF
  $85D1: a5 14       lda $14    ; PRG $0C5D1
  $85D3: c8          iny    ; PRG $0C5D3
  $85D4: 91 06       sta ($06),y    ; PRG $0C5D4
  $85D6: a5 15       lda $15    ; PRG $0C5D6
  $85D8: c8          iny    ; PRG $0C5D8
  $85D9: 91 06       sta ($06),y    ; PRG $0C5D9
  $85DB: 4c 18 86    jmp $8618    ; PRG $0C5DB
  $85DE: a0 f0       ldy #$f0    ; PRG $0C5DE
  $85E0: b1 06       lda ($06),y    ; PRG $0C5E0
  $85E2: 85 18       sta $18    ; PRG $0C5E2
  $85E4: c8          iny    ; PRG $0C5E4
  $85E5: b1 06       lda ($06),y    ; PRG $0C5E5
  $85E7: 85 19       sta $19    ; PRG $0C5E7
  $85E9: a1 18       lda ($18,x)    ; PRG $0C5E9
  $85EB: 85 14       sta $14    ; PRG $0C5EB
  $85ED: 86 15       stx $15    ; PRG $0C5ED
  $85EF: a5 14       lda $14    ; PRG $0C5EF
  $85F1: a0 f6       ldy #$f6    ; PRG $0C5F1
  $85F3: 91 06       sta ($06),y    ; PRG $0C5F3
  $85F5: a5 15       lda $15    ; PRG $0C5F5
  $85F7: c8          iny    ; PRG $0C5F7
  $85F8: 91 06       sta ($06),y    ; PRG $0C5F8
  $85FA: a0 f0       ldy #$f0    ; PRG $0C5FA
  $85FC: b1 06       lda ($06),y    ; PRG $0C5FC
  $85FE: 85 18       sta $18    ; PRG $0C5FE
  $8600: c8          iny    ; PRG $0C600
  $8601: b1 06       lda ($06),y    ; PRG $0C601
  $8603: 85 19       sta $19    ; PRG $0C603
  $8605: a0 01       ldy #$01    ; PRG $0C605
  $8607: b1 18       lda ($18),y    ; PRG $0C607
  $8609: 85 14       sta $14    ; PRG $0C609
  $860B: 86 15       stx $15    ; PRG $0C60B
  $860D: a5 14       lda $14    ; PRG $0C60D
  $860F: a0 f4       ldy #$f4    ; PRG $0C60F
  $8611: 91 06       sta ($06),y    ; PRG $0C611
  $8613: a5 15       lda $15    ; PRG $0C613
  $8615: c8          iny    ; PRG $0C615
  $8616: 91 06       sta ($06),y    ; PRG $0C616
  $8618: 38          sec    ; PRG $0C618
  $8619: a0 f6       ldy #$f6    ; PRG $0C619
  $861B: b1 06       lda ($06),y    ; PRG $0C61B
  $861D: a0 fe       ldy #$fe    ; PRG $0C61D
  $861F: f1 06       sbc ($06),y    ; PRG $0C61F
  $8621: 85 18       sta $18    ; PRG $0C621
  $8623: a0 f7       ldy #$f7    ; PRG $0C623
  $8625: b1 06       lda ($06),y    ; PRG $0C625
  $8627: a0 ff       ldy #$ff    ; PRG $0C627
  $8629: f1 06       sbc ($06),y    ; PRG $0C629
  $862B: 85 19       sta $19    ; PRG $0C62B
  $862D: a5 19       lda $19    ; PRG $0C62D
  $862F: 48          pha    ; PRG $0C62F
  $8630: a5 18       lda $18    ; PRG $0C630
  $8632: 48          pha    ; PRG $0C632
  $8633: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0C633
  $8636: 56 dc 04    .db $56 $dc $04  -> vm $DC56 argc 4    ; PRG $0C636
  $8639: a0 ee       ldy #$ee    ; PRG $0C639
  $863B: b1 06       lda ($06),y    ; PRG $0C63B
  $863D: 85 18       sta $18    ; PRG $0C63D
  $863F: c8          iny    ; PRG $0C63F
  $8640: b1 06       lda ($06),y    ; PRG $0C640
  $8642: 85 19       sta $19    ; PRG $0C642
  $8644: a0 02       ldy #$02    ; PRG $0C644
  $8646: b1 18       lda ($18),y    ; PRG $0C646
  $8648: 85 14       sta $14    ; PRG $0C648
  $864A: 86 15       stx $15    ; PRG $0C64A
  $864C: 18          clc    ; PRG $0C64C
  $864D: a5 14       lda $14    ; PRG $0C64D
  $864F: 65 08       adc $08    ; PRG $0C64F
  $8651: a0 fa       ldy #$fa    ; PRG $0C651
  $8653: 91 06       sta ($06),y    ; PRG $0C653
  $8655: a5 15       lda $15    ; PRG $0C655
  $8657: 65 09       adc $09    ; PRG $0C657
  $8659: c8          iny    ; PRG $0C659
  $865A: 91 06       sta ($06),y    ; PRG $0C65A
  $865C: 38          sec    ; PRG $0C65C
  $865D: a0 f4       ldy #$f4    ; PRG $0C65D
  $865F: b1 06       lda ($06),y    ; PRG $0C65F
  $8661: a0 fc       ldy #$fc    ; PRG $0C661
  $8663: f1 06       sbc ($06),y    ; PRG $0C663
  $8665: 85 18       sta $18    ; PRG $0C665
  $8667: a0 f5       ldy #$f5    ; PRG $0C667
  $8669: b1 06       lda ($06),y    ; PRG $0C669
  $866B: a0 fd       ldy #$fd    ; PRG $0C66B
  $866D: f1 06       sbc ($06),y    ; PRG $0C66D
  $866F: 85 19       sta $19    ; PRG $0C66F
  $8671: a5 19       lda $19    ; PRG $0C671
  $8673: 48          pha    ; PRG $0C673
  $8674: a5 18       lda $18    ; PRG $0C674
  $8676: 48          pha    ; PRG $0C676
  $8677: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0C677
  $867A: 56 dc 04    .db $56 $dc $04  -> vm $DC56 argc 4    ; PRG $0C67A
  $867D: a0 ee       ldy #$ee    ; PRG $0C67D
  $867F: b1 06       lda ($06),y    ; PRG $0C67F
  $8681: 85 18       sta $18    ; PRG $0C681
  $8683: c8          iny    ; PRG $0C683
  $8684: b1 06       lda ($06),y    ; PRG $0C684
  $8686: 85 19       sta $19    ; PRG $0C686
  $8688: a0 03       ldy #$03    ; PRG $0C688
  $868A: b1 18       lda ($18),y    ; PRG $0C68A
  $868C: 85 14       sta $14    ; PRG $0C68C
  $868E: 86 15       stx $15    ; PRG $0C68E
  $8690: 18          clc    ; PRG $0C690
  $8691: a5 14       lda $14    ; PRG $0C691
  $8693: 65 08       adc $08    ; PRG $0C693
  $8695: a0 f8       ldy #$f8    ; PRG $0C695
  $8697: 91 06       sta ($06),y    ; PRG $0C697
  $8699: a5 15       lda $15    ; PRG $0C699
  $869B: 65 09       adc $09    ; PRG $0C69B
  $869D: c8          iny    ; PRG $0C69D
  $869E: 91 06       sta ($06),y    ; PRG $0C69E
  $86A0: a0 fb       ldy #$fb    ; PRG $0C6A0
  $86A2: b1 06       lda ($06),y    ; PRG $0C6A2
  $86A4: 10 03       bpl $86a9    ; PRG $0C6A4
  $86A6: 4c db 86    jmp $86db    ; PRG $0C6A6
  $86A9: a0 f9       ldy #$f9    ; PRG $0C6A9
  $86AB: b1 06       lda ($06),y    ; PRG $0C6AB
  $86AD: 10 03       bpl $86b2    ; PRG $0C6AD
  $86AF: 4c db 86    jmp $86db    ; PRG $0C6AF
  $86B2: a9 0d       lda #$0d    ; PRG $0C6B2
  $86B4: c8          iny    ; PRG $0C6B4
  $86B5: d1 06       cmp ($06),y    ; PRG $0C6B5
  $86B7: 8a          txa    ; PRG $0C6B7
  $86B8: c8          iny    ; PRG $0C6B8
  $86B9: f1 06       sbc ($06),y    ; PRG $0C6B9
  $86BB: 70 04       bvs $86c1    ; PRG $0C6BB
  $86BD: 30 04       bmi $86c3    ; PRG $0C6BD
  $86BF: 10 05       bpl $86c6    ; PRG $0C6BF
  $86C1: 30 03       bmi $86c6    ; PRG $0C6C1
  $86C3: 4c db 86    jmp $86db    ; PRG $0C6C3
  $86C6: a9 0d       lda #$0d    ; PRG $0C6C6
  $86C8: a0 f8       ldy #$f8    ; PRG $0C6C8
  $86CA: d1 06       cmp ($06),y    ; PRG $0C6CA
  $86CC: 8a          txa    ; PRG $0C6CC
  $86CD: c8          iny    ; PRG $0C6CD
  $86CE: f1 06       sbc ($06),y    ; PRG $0C6CE
  $86D0: 70 04       bvs $86d6    ; PRG $0C6D0
  $86D2: 30 07       bmi $86db    ; PRG $0C6D2
  $86D4: 10 02       bpl $86d8    ; PRG $0C6D4
  $86D6: 10 03       bpl $86db    ; PRG $0C6D6
  $86D8: 4c 01 89    jmp $8901    ; PRG $0C6D8
  $86DB: a0 fb       ldy #$fb    ; PRG $0C6DB
  $86DD: b1 06       lda ($06),y    ; PRG $0C6DD
  $86DF: 10 03       bpl $86e4    ; PRG $0C6DF
  $86E1: 4c f8 86    jmp $86f8    ; PRG $0C6E1
  $86E4: a9 0d       lda #$0d    ; PRG $0C6E4
  $86E6: 88          dey    ; PRG $0C6E6
  $86E7: d1 06       cmp ($06),y    ; PRG $0C6E7
  $86E9: 8a          txa    ; PRG $0C6E9
  $86EA: c8          iny    ; PRG $0C6EA
  $86EB: f1 06       sbc ($06),y    ; PRG $0C6EB
  $86ED: 70 04       bvs $86f3    ; PRG $0C6ED
  $86EF: 30 07       bmi $86f8    ; PRG $0C6EF
  $86F1: 10 02       bpl $86f5    ; PRG $0C6F1
  $86F3: 10 03       bpl $86f8    ; PRG $0C6F3
  $86F5: 4c a4 87    jmp $87a4    ; PRG $0C6F5
  $86F8: a0 fb       ldy #$fb    ; PRG $0C6F8
  $86FA: b1 06       lda ($06),y    ; PRG $0C6FA
  $86FC: 30 03       bmi $8701    ; PRG $0C6FC
  $86FE: 4c 4e 87    jmp $874e    ; PRG $0C6FE
  $8701: a0 ee       ldy #$ee    ; PRG $0C701
  $8703: b1 06       lda ($06),y    ; PRG $0C703
  $8705: 85 18       sta $18    ; PRG $0C705
  $8707: c8          iny    ; PRG $0C707
  $8708: b1 06       lda ($06),y    ; PRG $0C708
  $870A: 85 19       sta $19    ; PRG $0C70A
  $870C: a1 18       lda ($18,x)    ; PRG $0C70C
  $870E: d0 03       bne $8713    ; PRG $0C70E
  $8710: 4c 2b 87    jmp $872b    ; PRG $0C710
  $8713: 88          dey    ; PRG $0C713
  $8714: b1 06       lda ($06),y    ; PRG $0C714
  $8716: 85 18       sta $18    ; PRG $0C716
  $8718: c8          iny    ; PRG $0C718
  $8719: b1 06       lda ($06),y    ; PRG $0C719
  $871B: 85 19       sta $19    ; PRG $0C71B
  $871D: 18          clc    ; PRG $0C71D
  $871E: a9 ff       lda #$ff    ; PRG $0C71E
  $8720: 61 18       adc ($18,x)    ; PRG $0C720
  $8722: 81 18       sta ($18,x)    ; PRG $0C722
  $8724: a9 ff       lda #$ff    ; PRG $0C724
  $8726: 69 00       adc #$00    ; PRG $0C726
  $8728: 4c 3a 87    jmp $873a    ; PRG $0C728
  $872B: a0 ee       ldy #$ee    ; PRG $0C72B
  $872D: b1 06       lda ($06),y    ; PRG $0C72D
  $872F: 85 18       sta $18    ; PRG $0C72F
  $8731: c8          iny    ; PRG $0C731
  $8732: b1 06       lda ($06),y    ; PRG $0C732
  $8734: 85 19       sta $19    ; PRG $0C734
  $8736: a9 47       lda #$47    ; PRG $0C736
  $8738: 81 18       sta ($18,x)    ; PRG $0C738
  $873A: a0 ee       ldy #$ee    ; PRG $0C73A
  $873C: b1 06       lda ($06),y    ; PRG $0C73C
  $873E: 85 18       sta $18    ; PRG $0C73E
  $8740: c8          iny    ; PRG $0C740
  $8741: b1 06       lda ($06),y    ; PRG $0C741
  $8743: 85 19       sta $19    ; PRG $0C743
  $8745: a9 0d       lda #$0d    ; PRG $0C745
  $8747: a0 02       ldy #$02    ; PRG $0C747
  $8749: 91 18       sta ($18),y    ; PRG $0C749
  $874B: 4c a1 87    jmp $87a1    ; PRG $0C74B
  $874E: a0 ee       ldy #$ee    ; PRG $0C74E
  $8750: b1 06       lda ($06),y    ; PRG $0C750
  $8752: 85 18       sta $18    ; PRG $0C752
  $8754: c8          iny    ; PRG $0C754
  $8755: b1 06       lda ($06),y    ; PRG $0C755
  $8757: 85 19       sta $19    ; PRG $0C757
  $8759: a1 18       lda ($18,x)    ; PRG $0C759
  $875B: 85 14       sta $14    ; PRG $0C75B
  $875D: 86 15       stx $15    ; PRG $0C75D
  $875F: a5 14       lda $14    ; PRG $0C75F
  $8761: c9 47       cmp #$47    ; PRG $0C761
  $8763: a5 15       lda $15    ; PRG $0C763
  $8765: e9 00       sbc #$00    ; PRG $0C765
  $8767: 90 03       bcc $876c    ; PRG $0C767
  $8769: 4c 83 87    jmp $8783    ; PRG $0C769
  $876C: 88          dey    ; PRG $0C76C
  $876D: b1 06       lda ($06),y    ; PRG $0C76D
  $876F: 85 18       sta $18    ; PRG $0C76F
  $8771: c8          iny    ; PRG $0C771
  $8772: b1 06       lda ($06),y    ; PRG $0C772
  $8774: 85 19       sta $19    ; PRG $0C774
  $8776: 18          clc    ; PRG $0C776
  $8777: a9 01       lda #$01    ; PRG $0C777
  $8779: 61 18       adc ($18,x)    ; PRG $0C779
  $877B: 81 18       sta ($18,x)    ; PRG $0C77B
  $877D: 8a          txa    ; PRG $0C77D
  $877E: 69 00       adc #$00    ; PRG $0C77E
  $8780: 4c 91 87    jmp $8791    ; PRG $0C780
  $8783: a0 ee       ldy #$ee    ; PRG $0C783
  $8785: b1 06       lda ($06),y    ; PRG $0C785
  $8787: 85 18       sta $18    ; PRG $0C787
  $8789: c8          iny    ; PRG $0C789
  $878A: b1 06       lda ($06),y    ; PRG $0C78A
  $878C: 85 19       sta $19    ; PRG $0C78C
  $878E: 8a          txa    ; PRG $0C78E
  $878F: 81 18       sta ($18,x)    ; PRG $0C78F
  $8791: a0 ee       ldy #$ee    ; PRG $0C791
  $8793: b1 06       lda ($06),y    ; PRG $0C793
  $8795: 85 18       sta $18    ; PRG $0C795
  $8797: c8          iny    ; PRG $0C797
  $8798: b1 06       lda ($06),y    ; PRG $0C798
  $879A: 85 19       sta $19    ; PRG $0C79A
  $879C: 8a          txa    ; PRG $0C79C
  $879D: a0 02       ldy #$02    ; PRG $0C79D
  $879F: 91 18       sta ($18),y    ; PRG $0C79F
  $87A1: 4c 5a 88    jmp $885a    ; PRG $0C7A1
  $87A4: a0 f9       ldy #$f9    ; PRG $0C7A4
  $87A6: b1 06       lda ($06),y    ; PRG $0C7A6
  $87A8: 30 03       bmi $87ad    ; PRG $0C7A8
  $87AA: 4c 01 88    jmp $8801    ; PRG $0C7AA
  $87AD: a0 ee       ldy #$ee    ; PRG $0C7AD
  $87AF: b1 06       lda ($06),y    ; PRG $0C7AF
  $87B1: 85 18       sta $18    ; PRG $0C7B1
  $87B3: c8          iny    ; PRG $0C7B3
  $87B4: b1 06       lda ($06),y    ; PRG $0C7B4
  $87B6: 85 19       sta $19    ; PRG $0C7B6
  $87B8: a0 01       ldy #$01    ; PRG $0C7B8
  $87BA: b1 18       lda ($18),y    ; PRG $0C7BA
  $87BC: d0 03       bne $87c1    ; PRG $0C7BC
  $87BE: 4c dc 87    jmp $87dc    ; PRG $0C7BE
  $87C1: a0 ee       ldy #$ee    ; PRG $0C7C1
  $87C3: b1 06       lda ($06),y    ; PRG $0C7C3
  $87C5: 85 18       sta $18    ; PRG $0C7C5
  $87C7: c8          iny    ; PRG $0C7C7
  $87C8: b1 06       lda ($06),y    ; PRG $0C7C8
  $87CA: 85 19       sta $19    ; PRG $0C7CA
  $87CC: 18          clc    ; PRG $0C7CC
  $87CD: a9 ff       lda #$ff    ; PRG $0C7CD
  $87CF: a0 01       ldy #$01    ; PRG $0C7CF
  $87D1: 71 18       adc ($18),y    ; PRG $0C7D1
  $87D3: 91 18       sta ($18),y    ; PRG $0C7D3
  $87D5: a9 ff       lda #$ff    ; PRG $0C7D5
  $87D7: 69 00       adc #$00    ; PRG $0C7D7
  $87D9: 4c ed 87    jmp $87ed    ; PRG $0C7D9
  $87DC: a0 ee       ldy #$ee    ; PRG $0C7DC
  $87DE: b1 06       lda ($06),y    ; PRG $0C7DE
  $87E0: 85 18       sta $18    ; PRG $0C7E0
  $87E2: c8          iny    ; PRG $0C7E2
  $87E3: b1 06       lda ($06),y    ; PRG $0C7E3
  $87E5: 85 19       sta $19    ; PRG $0C7E5
  $87E7: a9 23       lda #$23    ; PRG $0C7E7
  $87E9: a0 01       ldy #$01    ; PRG $0C7E9
  $87EB: 91 18       sta ($18),y    ; PRG $0C7EB
  $87ED: a0 ee       ldy #$ee    ; PRG $0C7ED
  $87EF: b1 06       lda ($06),y    ; PRG $0C7EF
  $87F1: 85 18       sta $18    ; PRG $0C7F1
  $87F3: c8          iny    ; PRG $0C7F3
  $87F4: b1 06       lda ($06),y    ; PRG $0C7F4
  $87F6: 85 19       sta $19    ; PRG $0C7F6
  $87F8: a9 0d       lda #$0d    ; PRG $0C7F8
  $87FA: a0 03       ldy #$03    ; PRG $0C7FA
  $87FC: 91 18       sta ($18),y    ; PRG $0C7FC
  $87FE: 4c 5a 88    jmp $885a    ; PRG $0C7FE
  $8801: a0 ee       ldy #$ee    ; PRG $0C801
  $8803: b1 06       lda ($06),y    ; PRG $0C803
  $8805: 85 18       sta $18    ; PRG $0C805
  $8807: c8          iny    ; PRG $0C807
  $8808: b1 06       lda ($06),y    ; PRG $0C808
  $880A: 85 19       sta $19    ; PRG $0C80A
  $880C: a0 01       ldy #$01    ; PRG $0C80C
  $880E: b1 18       lda ($18),y    ; PRG $0C80E
  $8810: 85 14       sta $14    ; PRG $0C810
  $8812: 86 15       stx $15    ; PRG $0C812
  $8814: a5 14       lda $14    ; PRG $0C814
  $8816: c9 23       cmp #$23    ; PRG $0C816
  $8818: a5 15       lda $15    ; PRG $0C818
  $881A: e9 00       sbc #$00    ; PRG $0C81A
  $881C: 90 03       bcc $8821    ; PRG $0C81C
  $881E: 4c 3a 88    jmp $883a    ; PRG $0C81E
  $8821: a0 ee       ldy #$ee    ; PRG $0C821
  $8823: b1 06       lda ($06),y    ; PRG $0C823
  $8825: 85 18       sta $18    ; PRG $0C825
  $8827: c8          iny    ; PRG $0C827
  $8828: b1 06       lda ($06),y    ; PRG $0C828
  $882A: 85 19       sta $19    ; PRG $0C82A
  $882C: 18          clc    ; PRG $0C82C
  $882D: a9 01       lda #$01    ; PRG $0C82D
  $882F: a8          tay    ; PRG $0C82F
  $8830: 71 18       adc ($18),y    ; PRG $0C830
  $8832: 91 18       sta ($18),y    ; PRG $0C832
  $8834: 8a          txa    ; PRG $0C834
  $8835: 69 00       adc #$00    ; PRG $0C835
  $8837: 4c 4a 88    jmp $884a    ; PRG $0C837
  $883A: a0 ee       ldy #$ee    ; PRG $0C83A
  $883C: b1 06       lda ($06),y    ; PRG $0C83C
  $883E: 85 18       sta $18    ; PRG $0C83E
  $8840: c8          iny    ; PRG $0C840
  $8841: b1 06       lda ($06),y    ; PRG $0C841
  $8843: 85 19       sta $19    ; PRG $0C843
  $8845: 8a          txa    ; PRG $0C845
  $8846: a0 01       ldy #$01    ; PRG $0C846
  $8848: 91 18       sta ($18),y    ; PRG $0C848
  $884A: a0 ee       ldy #$ee    ; PRG $0C84A
  $884C: b1 06       lda ($06),y    ; PRG $0C84C
  $884E: 85 18       sta $18    ; PRG $0C84E
  $8850: c8          iny    ; PRG $0C850
  $8851: b1 06       lda ($06),y    ; PRG $0C851
  $8853: 85 19       sta $19    ; PRG $0C853
  $8855: 8a          txa    ; PRG $0C855
  $8856: a0 03       ldy #$03    ; PRG $0C856
  $8858: 91 18       sta ($18),y    ; PRG $0C858
  $885A: a0 ee       ldy #$ee    ; PRG $0C85A
  $885C: b1 06       lda ($06),y    ; PRG $0C85C
  $885E: 85 18       sta $18    ; PRG $0C85E
  $8860: c8          iny    ; PRG $0C860
  $8861: b1 06       lda ($06),y    ; PRG $0C861
  $8863: 85 19       sta $19    ; PRG $0C863
  $8865: a1 18       lda ($18,x)    ; PRG $0C865
  $8867: 85 14       sta $14    ; PRG $0C867
  $8869: 86 15       stx $15    ; PRG $0C869
  $886B: a5 14       lda $14    ; PRG $0C86B
  $886D: a0 f6       ldy #$f6    ; PRG $0C86D
  $886F: d1 06       cmp ($06),y    ; PRG $0C86F
  $8871: d0 05       bne $8878    ; PRG $0C871
  $8873: a5 15       lda $15    ; PRG $0C873
  $8875: c8          iny    ; PRG $0C875
  $8876: d1 06       cmp ($06),y    ; PRG $0C876
  $8878: f0 03       beq $887d    ; PRG $0C878
  $887A: 4c fe 88    jmp $88fe    ; PRG $0C87A
  $887D: a0 ee       ldy #$ee    ; PRG $0C87D
  $887F: b1 06       lda ($06),y    ; PRG $0C87F
  $8881: 85 18       sta $18    ; PRG $0C881
  $8883: c8          iny    ; PRG $0C883
  $8884: b1 06       lda ($06),y    ; PRG $0C884
  $8886: 85 19       sta $19    ; PRG $0C886
  $8888: a0 01       ldy #$01    ; PRG $0C888
  $888A: b1 18       lda ($18),y    ; PRG $0C88A
  $888C: 85 14       sta $14    ; PRG $0C88C
  $888E: 86 15       stx $15    ; PRG $0C88E
  $8890: a5 14       lda $14    ; PRG $0C890
  $8892: a0 f4       ldy #$f4    ; PRG $0C892
  $8894: d1 06       cmp ($06),y    ; PRG $0C894
  $8896: d0 05       bne $889d    ; PRG $0C896
  $8898: a5 15       lda $15    ; PRG $0C898
  $889A: c8          iny    ; PRG $0C89A
  $889B: d1 06       cmp ($06),y    ; PRG $0C89B
  $889D: f0 03       beq $88a2    ; PRG $0C89D
  $889F: 4c fe 88    jmp $88fe    ; PRG $0C89F
  $88A2: a0 f0       ldy #$f0    ; PRG $0C8A2
  $88A4: b1 06       lda ($06),y    ; PRG $0C8A4
  $88A6: 85 18       sta $18    ; PRG $0C8A6
  $88A8: c8          iny    ; PRG $0C8A8
  $88A9: b1 06       lda ($06),y    ; PRG $0C8A9
  $88AB: 85 19       sta $19    ; PRG $0C8AB
  $88AD: a0 07       ldy #$07    ; PRG $0C8AD
  $88AF: b1 18       lda ($18),y    ; PRG $0C8AF
  $88B1: c8          iny    ; PRG $0C8B1
  $88B2: 11 18       ora ($18),y    ; PRG $0C8B2
  $88B4: d0 03       bne $88b9    ; PRG $0C8B4
  $88B6: 4c fe 88    jmp $88fe    ; PRG $0C8B6
  $88B9: a0 f0       ldy #$f0    ; PRG $0C8B9
  $88BB: b1 06       lda ($06),y    ; PRG $0C8BB
  $88BD: 85 18       sta $18    ; PRG $0C8BD
  $88BF: c8          iny    ; PRG $0C8BF
  $88C0: b1 06       lda ($06),y    ; PRG $0C8C0
  $88C2: 85 19       sta $19    ; PRG $0C8C2
  $88C4: a0 07       ldy #$07    ; PRG $0C8C4
  $88C6: b1 18       lda ($18),y    ; PRG $0C8C6
  $88C8: 85 14       sta $14    ; PRG $0C8C8
  $88CA: c8          iny    ; PRG $0C8CA
  $88CB: b1 18       lda ($18),y    ; PRG $0C8CB
  $88CD: 85 15       sta $15    ; PRG $0C8CD
  $88CF: a1 14       lda ($14,x)    ; PRG $0C8CF
  $88D1: 85 18       sta $18    ; PRG $0C8D1
  $88D3: 86 19       stx $19    ; PRG $0C8D3
  $88D5: a5 18       lda $18    ; PRG $0C8D5
  $88D7: c9 ff       cmp #$ff    ; PRG $0C8D7
  $88D9: d0 04       bne $88df    ; PRG $0C8D9
  $88DB: a5 19       lda $19    ; PRG $0C8DB
  $88DD: c9 00       cmp #$00    ; PRG $0C8DD
  $88DF: d0 03       bne $88e4    ; PRG $0C8DF
  $88E1: 4c fe 88    jmp $88fe    ; PRG $0C8E1
  $88E4: a0 f0       ldy #$f0    ; PRG $0C8E4
  $88E6: b1 06       lda ($06),y    ; PRG $0C8E6
  $88E8: 85 18       sta $18    ; PRG $0C8E8
  $88EA: c8          iny    ; PRG $0C8EA
  $88EB: b1 06       lda ($06),y    ; PRG $0C8EB
  $88ED: 85 19       sta $19    ; PRG $0C8ED
  $88EF: 18          clc    ; PRG $0C8EF
  $88F0: a9 02       lda #$02    ; PRG $0C8F0
  $88F2: a0 07       ldy #$07    ; PRG $0C8F2
  $88F4: 71 18       adc ($18),y    ; PRG $0C8F4
  $88F6: 91 18       sta ($18),y    ; PRG $0C8F6
  $88F8: 8a          txa    ; PRG $0C8F8
  $88F9: c8          iny    ; PRG $0C8F9
  $88FA: 71 18       adc ($18),y    ; PRG $0C8FA
  $88FC: 91 18       sta ($18),y    ; PRG $0C8FC
  $88FE: 4c 27 89    jmp $8927    ; PRG $0C8FE
  $8901: a0 ee       ldy #$ee    ; PRG $0C901
  $8903: b1 06       lda ($06),y    ; PRG $0C903
  $8905: 85 18       sta $18    ; PRG $0C905
  $8907: c8          iny    ; PRG $0C907
  $8908: b1 06       lda ($06),y    ; PRG $0C908
  $890A: 85 19       sta $19    ; PRG $0C90A
  $890C: a0 fa       ldy #$fa    ; PRG $0C90C
  $890E: b1 06       lda ($06),y    ; PRG $0C90E
  $8910: a0 02       ldy #$02    ; PRG $0C910
  $8912: 91 18       sta ($18),y    ; PRG $0C912
  $8914: a0 ee       ldy #$ee    ; PRG $0C914
  $8916: b1 06       lda ($06),y    ; PRG $0C916
  $8918: 85 18       sta $18    ; PRG $0C918
  $891A: c8          iny    ; PRG $0C91A
  $891B: b1 06       lda ($06),y    ; PRG $0C91B
  $891D: 85 19       sta $19    ; PRG $0C91D
  $891F: a0 f8       ldy #$f8    ; PRG $0C91F
  $8921: b1 06       lda ($06),y    ; PRG $0C921
  $8923: a0 03       ldy #$03    ; PRG $0C923
  $8925: 91 18       sta ($18),y    ; PRG $0C925
  $8927: 4c 53 89    jmp $8953    ; PRG $0C927
  $892A: a0 ee       ldy #$ee    ; PRG $0C92A
  $892C: b1 06       lda ($06),y    ; PRG $0C92C
  $892E: 85 18       sta $18    ; PRG $0C92E
  $8930: c8          iny    ; PRG $0C930
  $8931: b1 06       lda ($06),y    ; PRG $0C931
  $8933: 85 19       sta $19    ; PRG $0C933
  $8935: a9 ff       lda #$ff    ; PRG $0C935
  $8937: a0 08       ldy #$08    ; PRG $0C937
  $8939: 91 18       sta ($18),y    ; PRG $0C939
  $893B: a0 ef       ldy #$ef    ; PRG $0C93B
  $893D: b1 06       lda ($06),y    ; PRG $0C93D
  $893F: 48          pha    ; PRG $0C93F
  $8940: 88          dey    ; PRG $0C940
  $8941: b1 06       lda ($06),y    ; PRG $0C941
  $8943: 48          pha    ; PRG $0C943
  $8944: a0 f1       ldy #$f1    ; PRG $0C944
  $8946: b1 06       lda ($06),y    ; PRG $0C946
  $8948: 48          pha    ; PRG $0C948
  $8949: 88          dey    ; PRG $0C949
  $894A: b1 06       lda ($06),y    ; PRG $0C94A
  $894C: 48          pha    ; PRG $0C94C
  $894D: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0C94D
  $8950: 03 82 06    .db $03 $82 $06  -> vm $8203 argc 6    ; PRG $0C950
  $8953: ad 65 72    lda $7265    ; PRG $0C953
  $8956: 85 18       sta $18    ; PRG $0C956
  $8958: 86 19       stx $19    ; PRG $0C958
  $895A: a9 03       lda #$03    ; PRG $0C95A
  $895C: 85 14       sta $14    ; PRG $0C95C
  $895E: 86 15       stx $15    ; PRG $0C95E
  $8960: ad 63 72    lda $7263    ; PRG $0C960
  $8963: 85 10       sta $10    ; PRG $0C963
  $8965: 86 11       stx $11    ; PRG $0C965
  $8967: a0 10       ldy #$10    ; PRG $0C967
  $8969: a2 14       ldx #$14    ; PRG $0C969
  $896B: a9 0c       lda #$0c    ; PRG $0C96B
  $896D: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0C96D
  $8970: 18          clc    ; PRG $0C970
  $8971: a5 0c       lda $0c    ; PRG $0C971
  $8973: 65 18       adc $18    ; PRG $0C973
  $8975: 85 14       sta $14    ; PRG $0C975
  $8977: a5 0d       lda $0d    ; PRG $0C977
  $8979: 65 19       adc $19    ; PRG $0C979
  $897B: 85 15       sta $15    ; PRG $0C97B
  $897D: a5 14       lda $14    ; PRG $0C97D
  $897F: a0 fe       ldy #$fe    ; PRG $0C97F
  $8981: d1 06       cmp ($06),y    ; PRG $0C981
  $8983: d0 05       bne $898a    ; PRG $0C983
  $8985: a5 15       lda $15    ; PRG $0C985
  $8987: c8          iny    ; PRG $0C987
  $8988: d1 06       cmp ($06),y    ; PRG $0C988
  $898A: f0 03       beq $898f    ; PRG $0C98A
  $898C: 4c cb 89    jmp $89cb    ; PRG $0C98C
  $898F: ad 66 72    lda $7266    ; PRG $0C98F
  $8992: 85 18       sta $18    ; PRG $0C992
  $8994: 86 19       stx $19    ; PRG $0C994
  $8996: a9 03       lda #$03    ; PRG $0C996
  $8998: 85 14       sta $14    ; PRG $0C998
  $899A: 86 15       stx $15    ; PRG $0C99A
  $899C: ad 64 72    lda $7264    ; PRG $0C99C
  $899F: 85 10       sta $10    ; PRG $0C99F
  $89A1: 86 11       stx $11    ; PRG $0C9A1
  $89A3: a0 10       ldy #$10    ; PRG $0C9A3
  $89A5: a2 14       ldx #$14    ; PRG $0C9A5
  $89A7: a9 0c       lda #$0c    ; PRG $0C9A7
  $89A9: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0C9A9
  $89AC: 18          clc    ; PRG $0C9AC
  $89AD: a5 0c       lda $0c    ; PRG $0C9AD
  $89AF: 65 18       adc $18    ; PRG $0C9AF
  $89B1: 85 14       sta $14    ; PRG $0C9B1
  $89B3: a5 0d       lda $0d    ; PRG $0C9B3
  $89B5: 65 19       adc $19    ; PRG $0C9B5
  $89B7: 85 15       sta $15    ; PRG $0C9B7
  $89B9: a5 14       lda $14    ; PRG $0C9B9
  $89BB: a0 fc       ldy #$fc    ; PRG $0C9BB
  $89BD: d1 06       cmp ($06),y    ; PRG $0C9BD
  $89BF: d0 05       bne $89c6    ; PRG $0C9BF
  $89C1: a5 15       lda $15    ; PRG $0C9C1
  $89C3: c8          iny    ; PRG $0C9C3
  $89C4: d1 06       cmp ($06),y    ; PRG $0C9C4
  $89C6: d0 03       bne $89cb    ; PRG $0C9C6
  $89C8: 4c a4 8a    jmp $8aa4    ; PRG $0C9C8
  $89CB: a0 ee       ldy #$ee    ; PRG $0C9CB
  $89CD: b1 06       lda ($06),y    ; PRG $0C9CD
  $89CF: 85 18       sta $18    ; PRG $0C9CF
  $89D1: c8          iny    ; PRG $0C9D1
  $89D2: b1 06       lda ($06),y    ; PRG $0C9D2
  $89D4: 85 19       sta $19    ; PRG $0C9D4
  $89D6: a1 18       lda ($18,x)    ; PRG $0C9D6
  $89D8: 85 14       sta $14    ; PRG $0C9D8
  $89DA: 86 15       stx $15    ; PRG $0C9DA
  $89DC: a5 14       lda $14    ; PRG $0C9DC
  $89DE: a0 fe       ldy #$fe    ; PRG $0C9DE
  $89E0: 91 06       sta ($06),y    ; PRG $0C9E0
  $89E2: a5 15       lda $15    ; PRG $0C9E2
  $89E4: c8          iny    ; PRG $0C9E4
  $89E5: 91 06       sta ($06),y    ; PRG $0C9E5
  $89E7: a0 ee       ldy #$ee    ; PRG $0C9E7
  $89E9: b1 06       lda ($06),y    ; PRG $0C9E9
  $89EB: 85 18       sta $18    ; PRG $0C9EB
  $89ED: c8          iny    ; PRG $0C9ED
  $89EE: b1 06       lda ($06),y    ; PRG $0C9EE
  $89F0: 85 19       sta $19    ; PRG $0C9F0
  $89F2: a0 01       ldy #$01    ; PRG $0C9F2
  $89F4: b1 18       lda ($18),y    ; PRG $0C9F4
  $89F6: 85 14       sta $14    ; PRG $0C9F6
  $89F8: 86 15       stx $15    ; PRG $0C9F8
  $89FA: a5 14       lda $14    ; PRG $0C9FA
  $89FC: a0 fc       ldy #$fc    ; PRG $0C9FC
  $89FE: 91 06       sta ($06),y    ; PRG $0C9FE
  $8A00: a5 15       lda $15    ; PRG $0CA00
  $8A02: c8          iny    ; PRG $0CA02
  $8A03: 91 06       sta ($06),y    ; PRG $0CA03
  $8A05: ad 65 72    lda $7265    ; PRG $0CA05
  $8A08: 85 18       sta $18    ; PRG $0CA08
  $8A0A: 86 19       stx $19    ; PRG $0CA0A
  $8A0C: a9 03       lda #$03    ; PRG $0CA0C
  $8A0E: 85 14       sta $14    ; PRG $0CA0E
  $8A10: 86 15       stx $15    ; PRG $0CA10
  $8A12: ad 63 72    lda $7263    ; PRG $0CA12
  $8A15: 85 10       sta $10    ; PRG $0CA15
  $8A17: 86 11       stx $11    ; PRG $0CA17
  $8A19: a0 10       ldy #$10    ; PRG $0CA19
  $8A1B: a2 14       ldx #$14    ; PRG $0CA1B
  $8A1D: a9 0c       lda #$0c    ; PRG $0CA1D
  $8A1F: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0CA1F
  $8A22: 18          clc    ; PRG $0CA22
  $8A23: a5 0c       lda $0c    ; PRG $0CA23
  $8A25: 65 18       adc $18    ; PRG $0CA25
  $8A27: 85 14       sta $14    ; PRG $0CA27
  $8A29: a5 0d       lda $0d    ; PRG $0CA29
  $8A2B: 65 19       adc $19    ; PRG $0CA2B
  $8A2D: 85 15       sta $15    ; PRG $0CA2D
  $8A2F: a5 14       lda $14    ; PRG $0CA2F
  $8A31: a0 fe       ldy #$fe    ; PRG $0CA31
  $8A33: d1 06       cmp ($06),y    ; PRG $0CA33
  $8A35: d0 05       bne $8a3c    ; PRG $0CA35
  $8A37: a5 15       lda $15    ; PRG $0CA37
  $8A39: c8          iny    ; PRG $0CA39
  $8A3A: d1 06       cmp ($06),y    ; PRG $0CA3A
  $8A3C: f0 03       beq $8a41    ; PRG $0CA3C
  $8A3E: 4c a4 8a    jmp $8aa4    ; PRG $0CA3E
  $8A41: ad 66 72    lda $7266    ; PRG $0CA41
  $8A44: 85 18       sta $18    ; PRG $0CA44
  $8A46: 86 19       stx $19    ; PRG $0CA46
  $8A48: a9 03       lda #$03    ; PRG $0CA48
  $8A4A: 85 14       sta $14    ; PRG $0CA4A
  $8A4C: 86 15       stx $15    ; PRG $0CA4C
  $8A4E: ad 64 72    lda $7264    ; PRG $0CA4E
  $8A51: 85 10       sta $10    ; PRG $0CA51
  $8A53: 86 11       stx $11    ; PRG $0CA53
  $8A55: a0 10       ldy #$10    ; PRG $0CA55
  $8A57: a2 14       ldx #$14    ; PRG $0CA57
  $8A59: a9 0c       lda #$0c    ; PRG $0CA59
  $8A5B: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0CA5B
  $8A5E: 18          clc    ; PRG $0CA5E
  $8A5F: a5 0c       lda $0c    ; PRG $0CA5F
  $8A61: 65 18       adc $18    ; PRG $0CA61
  $8A63: 85 14       sta $14    ; PRG $0CA63
  $8A65: a5 0d       lda $0d    ; PRG $0CA65
  $8A67: 65 19       adc $19    ; PRG $0CA67
  $8A69: 85 15       sta $15    ; PRG $0CA69
  $8A6B: a5 14       lda $14    ; PRG $0CA6B
  $8A6D: a0 fc       ldy #$fc    ; PRG $0CA6D
  $8A6F: d1 06       cmp ($06),y    ; PRG $0CA6F
  $8A71: d0 05       bne $8a78    ; PRG $0CA71
  $8A73: a5 15       lda $15    ; PRG $0CA73
  $8A75: c8          iny    ; PRG $0CA75
  $8A76: d1 06       cmp ($06),y    ; PRG $0CA76
  $8A78: f0 03       beq $8a7d    ; PRG $0CA78
  $8A7A: 4c a4 8a    jmp $8aa4    ; PRG $0CA7A
  $8A7D: a0 0c       ldy #$0c    ; PRG $0CA7D
  $8A7F: b1 04       lda ($04),y    ; PRG $0CA7F
  $8A81: 48          pha    ; PRG $0CA81
  $8A82: 88          dey    ; PRG $0CA82
  $8A83: b1 04       lda ($04),y    ; PRG $0CA83
  $8A85: 48          pha    ; PRG $0CA85
  $8A86: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0CA86
  $8A89: ea ae 04    .db $ea $ae $04  -> vm $AEEA argc 4    ; PRG $0CA89
  $8A8C: a0 ef       ldy #$ef    ; PRG $0CA8C
  $8A8E: b1 06       lda ($06),y    ; PRG $0CA8E
  $8A90: 48          pha    ; PRG $0CA90
  $8A91: 88          dey    ; PRG $0CA91
  $8A92: b1 06       lda ($06),y    ; PRG $0CA92
  $8A94: 48          pha    ; PRG $0CA94
  $8A95: a0 f1       ldy #$f1    ; PRG $0CA95
  $8A97: b1 06       lda ($06),y    ; PRG $0CA97
  $8A99: 48          pha    ; PRG $0CA99
  $8A9A: 88          dey    ; PRG $0CA9A
  $8A9B: b1 06       lda ($06),y    ; PRG $0CA9B
  $8A9D: 48          pha    ; PRG $0CA9D
  $8A9E: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0CA9E
  $8AA1: 46 80 06    .db $46 $80 $06  -> vm $8046 argc 6    ; PRG $0CAA1
  $8AA4: 60          rts    ; PRG $0CAA4

; ---- sub_6_0aab  [stub]  <- (entry: bytecode/OS via $E299)
nat_6_0aa5: jsr $E299                    ; 6:8AA5  native-call prologue
            .db $00 $f8 $ff            ; inline: argcount $00, frame $fff8
  $8AAB: a9 33       lda #$33    ; PRG $0CAAB
  $8AAD: 85 18       sta $18    ; PRG $0CAAD
  $8AAF: 86 19       stx $19    ; PRG $0CAAF
  $8AB1: 18          clc    ; PRG $0CAB1
  $8AB2: a9 ff       lda #$ff    ; PRG $0CAB2
  $8AB4: a0 0b       ldy #$0b    ; PRG $0CAB4
  $8AB6: 71 04       adc ($04),y    ; PRG $0CAB6
  $8AB8: 85 14       sta $14    ; PRG $0CAB8
  $8ABA: a9 ff       lda #$ff    ; PRG $0CABA
  $8ABC: c8          iny    ; PRG $0CABC
  $8ABD: 71 04       adc ($04),y    ; PRG $0CABD
  $8ABF: 85 15       sta $15    ; PRG $0CABF
  $8AC1: a0 14       ldy #$14    ; PRG $0CAC1
  $8AC3: a2 18       ldx #$18    ; PRG $0CAC3
  $8AC5: a9 10       lda #$10    ; PRG $0CAC5
  $8AC7: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0CAC7
  $8ACA: 18          clc    ; PRG $0CACA
  $8ACB: a5 10       lda $10    ; PRG $0CACB
  $8ACD: 69 04       adc #$04    ; PRG $0CACD
  $8ACF: a0 fe       ldy #$fe    ; PRG $0CACF
  $8AD1: 91 06       sta ($06),y    ; PRG $0CAD1
  $8AD3: a5 11       lda $11    ; PRG $0CAD3
  $8AD5: 69 60       adc #$60    ; PRG $0CAD5
  $8AD7: c8          iny    ; PRG $0CAD7
  $8AD8: 91 06       sta ($06),y    ; PRG $0CAD8
  $8ADA: a9 04       lda #$04    ; PRG $0CADA
  $8ADC: 85 18       sta $18    ; PRG $0CADC
  $8ADE: 86 19       stx $19    ; PRG $0CADE
  $8AE0: a0 0b       ldy #$0b    ; PRG $0CAE0
  $8AE2: b1 04       lda ($04),y    ; PRG $0CAE2
  $8AE4: 85 14       sta $14    ; PRG $0CAE4
  $8AE6: c8          iny    ; PRG $0CAE6
  $8AE7: b1 04       lda ($04),y    ; PRG $0CAE7
  $8AE9: 85 15       sta $15    ; PRG $0CAE9
  $8AEB: a0 14       ldy #$14    ; PRG $0CAEB
  $8AED: a2 18       ldx #$18    ; PRG $0CAED
  $8AEF: a9 10       lda #$10    ; PRG $0CAEF
  $8AF1: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0CAF1
  $8AF4: 18          clc    ; PRG $0CAF4
  $8AF5: a5 10       lda $10    ; PRG $0CAF5
  $8AF7: 69 62       adc #$62    ; PRG $0CAF7
  $8AF9: a0 f8       ldy #$f8    ; PRG $0CAF9
  $8AFB: 91 06       sta ($06),y    ; PRG $0CAFB
  $8AFD: a5 11       lda $11    ; PRG $0CAFD
  $8AFF: 69 66       adc #$66    ; PRG $0CAFF
  $8B01: c8          iny    ; PRG $0CB01
  $8B02: 91 06       sta ($06),y    ; PRG $0CB02
  $8B04: a0 fe       ldy #$fe    ; PRG $0CB04
  $8B06: b1 06       lda ($06),y    ; PRG $0CB06
  $8B08: 85 18       sta $18    ; PRG $0CB08
  $8B0A: c8          iny    ; PRG $0CB0A
  $8B0B: b1 06       lda ($06),y    ; PRG $0CB0B
  $8B0D: 85 19       sta $19    ; PRG $0CB0D
  $8B0F: a0 04       ldy #$04    ; PRG $0CB0F
  $8B11: b1 18       lda ($18),y    ; PRG $0CB11
  $8B13: d0 03       bne $8b18    ; PRG $0CB13
  $8B15: 4c fe 8b    jmp $8bfe    ; PRG $0CB15
  $8B18: a0 fe       ldy #$fe    ; PRG $0CB18
  $8B1A: b1 06       lda ($06),y    ; PRG $0CB1A
  $8B1C: 85 18       sta $18    ; PRG $0CB1C
  $8B1E: c8          iny    ; PRG $0CB1E
  $8B1F: b1 06       lda ($06),y    ; PRG $0CB1F
  $8B21: 85 19       sta $19    ; PRG $0CB21
  $8B23: a0 07       ldy #$07    ; PRG $0CB23
  $8B25: b1 18       lda ($18),y    ; PRG $0CB25
  $8B27: c8          iny    ; PRG $0CB27
  $8B28: 11 18       ora ($18),y    ; PRG $0CB28
  $8B2A: f0 03       beq $8b2f    ; PRG $0CB2A
  $8B2C: 4c fb 8b    jmp $8bfb    ; PRG $0CB2C
  $8B2F: a9 13       lda #$13    ; PRG $0CB2F
  $8B31: 85 18       sta $18    ; PRG $0CB31
  $8B33: 86 19       stx $19    ; PRG $0CB33
  $8B35: a0 fe       ldy #$fe    ; PRG $0CB35
  $8B37: b1 06       lda ($06),y    ; PRG $0CB37
  $8B39: 85 14       sta $14    ; PRG $0CB39
  $8B3B: c8          iny    ; PRG $0CB3B
  $8B3C: b1 06       lda ($06),y    ; PRG $0CB3C
  $8B3E: 85 15       sta $15    ; PRG $0CB3E
  $8B40: a0 05       ldy #$05    ; PRG $0CB40
  $8B42: b1 14       lda ($14),y    ; PRG $0CB42
  $8B44: 85 10       sta $10    ; PRG $0CB44
  $8B46: 86 11       stx $11    ; PRG $0CB46
  $8B48: a0 10       ldy #$10    ; PRG $0CB48
  $8B4A: a2 18       ldx #$18    ; PRG $0CB4A
  $8B4C: a9 14       lda #$14    ; PRG $0CB4C
  $8B4E: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0CB4E
  $8B51: 18          clc    ; PRG $0CB51
  $8B52: a5 14       lda $14    ; PRG $0CB52
  $8B54: 69 d8       adc #$d8    ; PRG $0CB54
  $8B56: a0 fc       ldy #$fc    ; PRG $0CB56
  $8B58: 91 06       sta ($06),y    ; PRG $0CB58
  $8B5A: a5 15       lda $15    ; PRG $0CB5A
  $8B5C: 69 af       adc #$af    ; PRG $0CB5C
  $8B5E: c8          iny    ; PRG $0CB5E
  $8B5F: 91 06       sta ($06),y    ; PRG $0CB5F
  $8B61: 18          clc    ; PRG $0CB61
  $8B62: a9 12       lda #$12    ; PRG $0CB62
  $8B64: 88          dey    ; PRG $0CB64
  $8B65: 71 06       adc ($06),y    ; PRG $0CB65
  $8B67: 85 18       sta $18    ; PRG $0CB67
  $8B69: 8a          txa    ; PRG $0CB69
  $8B6A: c8          iny    ; PRG $0CB6A
  $8B6B: 71 06       adc ($06),y    ; PRG $0CB6B
  $8B6D: 85 19       sta $19    ; PRG $0CB6D
  $8B6F: a5 19       lda $19    ; PRG $0CB6F
  $8B71: 48          pha    ; PRG $0CB71
  $8B72: a5 18       lda $18    ; PRG $0CB72
  $8B74: 48          pha    ; PRG $0CB74
  $8B75: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0CB75
  $8B78: 0c d3 04    .db $0c $d3 $04  -> vm $D30C argc 4    ; PRG $0CB78
  $8B7B: 86 09       stx $09    ; PRG $0CB7B
  $8B7D: a5 09       lda $09    ; PRG $0CB7D
  $8B7F: 48          pha    ; PRG $0CB7F
  $8B80: a5 08       lda $08    ; PRG $0CB80
  $8B82: 48          pha    ; PRG $0CB82
  $8B83: 18          clc    ; PRG $0CB83
  $8B84: a9 11       lda #$11    ; PRG $0CB84
  $8B86: a0 fc       ldy #$fc    ; PRG $0CB86
  $8B88: 71 06       adc ($06),y    ; PRG $0CB88
  $8B8A: 85 18       sta $18    ; PRG $0CB8A
  $8B8C: 8a          txa    ; PRG $0CB8C
  $8B8D: c8          iny    ; PRG $0CB8D
  $8B8E: 71 06       adc ($06),y    ; PRG $0CB8E
  $8B90: 85 19       sta $19    ; PRG $0CB90
  $8B92: a5 19       lda $19    ; PRG $0CB92
  $8B94: 48          pha    ; PRG $0CB94
  $8B95: a5 18       lda $18    ; PRG $0CB95
  $8B97: 48          pha    ; PRG $0CB97
  $8B98: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0CB98
  $8B9B: 0c d3 04    .db $0c $d3 $04  -> vm $D30C argc 4    ; PRG $0CB9B
  $8B9E: 86 09       stx $09    ; PRG $0CB9E
  $8BA0: a5 09       lda $09    ; PRG $0CBA0
  $8BA2: 48          pha    ; PRG $0CBA2
  $8BA3: a5 08       lda $08    ; PRG $0CBA3
  $8BA5: 48          pha    ; PRG $0CBA5
  $8BA6: 18          clc    ; PRG $0CBA6
  $8BA7: a9 10       lda #$10    ; PRG $0CBA7
  $8BA9: a0 fc       ldy #$fc    ; PRG $0CBA9
  $8BAB: 71 06       adc ($06),y    ; PRG $0CBAB
  $8BAD: 85 18       sta $18    ; PRG $0CBAD
  $8BAF: 8a          txa    ; PRG $0CBAF
  $8BB0: c8          iny    ; PRG $0CBB0
  $8BB1: 71 06       adc ($06),y    ; PRG $0CBB1
  $8BB3: 85 19       sta $19    ; PRG $0CBB3
  $8BB5: a5 19       lda $19    ; PRG $0CBB5
  $8BB7: 48          pha    ; PRG $0CBB7
  $8BB8: a5 18       lda $18    ; PRG $0CBB8
  $8BBA: 48          pha    ; PRG $0CBBA
  $8BBB: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0CBBB
  $8BBE: 0c d3 04    .db $0c $d3 $04  -> vm $D30C argc 4    ; PRG $0CBBE
  $8BC1: 86 09       stx $09    ; PRG $0CBC1
  $8BC3: a5 09       lda $09    ; PRG $0CBC3
  $8BC5: 48          pha    ; PRG $0CBC5
  $8BC6: a5 08       lda $08    ; PRG $0CBC6
  $8BC8: 48          pha    ; PRG $0CBC8
  $8BC9: 18          clc    ; PRG $0CBC9
  $8BCA: a9 0f       lda #$0f    ; PRG $0CBCA
  $8BCC: a0 fc       ldy #$fc    ; PRG $0CBCC
  $8BCE: 71 06       adc ($06),y    ; PRG $0CBCE
  $8BD0: 85 18       sta $18    ; PRG $0CBD0
  $8BD2: 8a          txa    ; PRG $0CBD2
  $8BD3: c8          iny    ; PRG $0CBD3
  $8BD4: 71 06       adc ($06),y    ; PRG $0CBD4
  $8BD6: 85 19       sta $19    ; PRG $0CBD6
  $8BD8: a5 19       lda $19    ; PRG $0CBD8
  $8BDA: 48          pha    ; PRG $0CBDA
  $8BDB: a5 18       lda $18    ; PRG $0CBDB
  $8BDD: 48          pha    ; PRG $0CBDD
  $8BDE: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0CBDE
  $8BE1: 0c d3 04    .db $0c $d3 $04  -> vm $D30C argc 4    ; PRG $0CBE1
  $8BE4: 86 09       stx $09    ; PRG $0CBE4
  $8BE6: a5 09       lda $09    ; PRG $0CBE6
  $8BE8: 48          pha    ; PRG $0CBE8
  $8BE9: a5 08       lda $08    ; PRG $0CBE9
  $8BEB: 48          pha    ; PRG $0CBEB
  $8BEC: a0 0c       ldy #$0c    ; PRG $0CBEC
  $8BEE: b1 04       lda ($04),y    ; PRG $0CBEE
  $8BF0: 48          pha    ; PRG $0CBF0
  $8BF1: 88          dey    ; PRG $0CBF1
  $8BF2: b1 04       lda ($04),y    ; PRG $0CBF2
  $8BF4: 48          pha    ; PRG $0CBF4
  $8BF5: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0CBF5
  $8BF8: 78 97 0c    .db $78 $97 $0c  -> vm $9778 argc 12    ; PRG $0CBF8
  $8BFB: 4c e8 8d    jmp $8de8    ; PRG $0CBFB
  $8BFE: a9 04       lda #$04    ; PRG $0CBFE
  $8C00: 85 18       sta $18    ; PRG $0CC00
  $8C02: 86 19       stx $19    ; PRG $0CC02
  $8C04: a0 fe       ldy #$fe    ; PRG $0CC04
  $8C06: b1 06       lda ($06),y    ; PRG $0CC06
  $8C08: 85 14       sta $14    ; PRG $0CC08
  $8C0A: c8          iny    ; PRG $0CC0A
  $8C0B: b1 06       lda ($06),y    ; PRG $0CC0B
  $8C0D: 85 15       sta $15    ; PRG $0CC0D
  $8C0F: a0 05       ldy #$05    ; PRG $0CC0F
  $8C11: b1 14       lda ($14),y    ; PRG $0CC11
  $8C13: 85 10       sta $10    ; PRG $0CC13
  $8C15: 86 11       stx $11    ; PRG $0CC15
  $8C17: a0 10       ldy #$10    ; PRG $0CC17
  $8C19: a2 18       ldx #$18    ; PRG $0CC19
  $8C1B: a9 14       lda #$14    ; PRG $0CC1B
  $8C1D: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0CC1D
  $8C20: 18          clc    ; PRG $0CC20
  $8C21: a5 14       lda $14    ; PRG $0CC21
  $8C23: 69 62       adc #$62    ; PRG $0CC23
  $8C25: a0 fa       ldy #$fa    ; PRG $0CC25
  $8C27: 91 06       sta ($06),y    ; PRG $0CC27
  $8C29: a5 15       lda $15    ; PRG $0CC29
  $8C2B: 69 66       adc #$66    ; PRG $0CC2B
  $8C2D: c8          iny    ; PRG $0CC2D
  $8C2E: 91 06       sta ($06),y    ; PRG $0CC2E
  $8C30: 88          dey    ; PRG $0CC30
  $8C31: b1 06       lda ($06),y    ; PRG $0CC31
  $8C33: 85 18       sta $18    ; PRG $0CC33
  $8C35: c8          iny    ; PRG $0CC35
  $8C36: b1 06       lda ($06),y    ; PRG $0CC36
  $8C38: 85 19       sta $19    ; PRG $0CC38
  $8C3A: a0 0f       ldy #$0f    ; PRG $0CC3A
  $8C3C: b1 18       lda ($18),y    ; PRG $0CC3C
  $8C3E: 85 14       sta $14    ; PRG $0CC3E
  $8C40: 86 15       stx $15    ; PRG $0CC40
  $8C42: a5 14       lda $14    ; PRG $0CC42
  $8C44: 29 08       and #$08    ; PRG $0CC44
  $8C46: f0 03       beq $8c4b    ; PRG $0CC46
  $8C48: 4c d9 8d    jmp $8dd9    ; PRG $0CC48
  $8C4B: a0 fe       ldy #$fe    ; PRG $0CC4B
  $8C4D: b1 06       lda ($06),y    ; PRG $0CC4D
  $8C4F: 85 18       sta $18    ; PRG $0CC4F
  $8C51: c8          iny    ; PRG $0CC51
  $8C52: b1 06       lda ($06),y    ; PRG $0CC52
  $8C54: 85 19       sta $19    ; PRG $0CC54
  $8C56: a0 07       ldy #$07    ; PRG $0CC56
  $8C58: b1 18       lda ($18),y    ; PRG $0CC58
  $8C5A: c8          iny    ; PRG $0CC5A
  $8C5B: 11 18       ora ($18),y    ; PRG $0CC5B
  $8C5D: d0 03       bne $8c62    ; PRG $0CC5D
  $8C5F: 4c 0a 8d    jmp $8d0a    ; PRG $0CC5F
  $8C62: a0 fe       ldy #$fe    ; PRG $0CC62
  $8C64: b1 06       lda ($06),y    ; PRG $0CC64
  $8C66: 85 18       sta $18    ; PRG $0CC66
  $8C68: c8          iny    ; PRG $0CC68
  $8C69: b1 06       lda ($06),y    ; PRG $0CC69
  $8C6B: 85 19       sta $19    ; PRG $0CC6B
  $8C6D: a0 07       ldy #$07    ; PRG $0CC6D
  $8C6F: b1 18       lda ($18),y    ; PRG $0CC6F
  $8C71: c8          iny    ; PRG $0CC71
  $8C72: 11 18       ora ($18),y    ; PRG $0CC72
  $8C74: d0 03       bne $8c79    ; PRG $0CC74
  $8C76: 4c d6 8d    jmp $8dd6    ; PRG $0CC76
  $8C79: a0 fe       ldy #$fe    ; PRG $0CC79
  $8C7B: b1 06       lda ($06),y    ; PRG $0CC7B
  $8C7D: 85 18       sta $18    ; PRG $0CC7D
  $8C7F: c8          iny    ; PRG $0CC7F
  $8C80: b1 06       lda ($06),y    ; PRG $0CC80
  $8C82: 85 19       sta $19    ; PRG $0CC82
  $8C84: a0 07       ldy #$07    ; PRG $0CC84
  $8C86: b1 18       lda ($18),y    ; PRG $0CC86
  $8C88: 85 14       sta $14    ; PRG $0CC88
  $8C8A: c8          iny    ; PRG $0CC8A
  $8C8B: b1 18       lda ($18),y    ; PRG $0CC8B
  $8C8D: 85 15       sta $15    ; PRG $0CC8D
  $8C8F: a1 14       lda ($14,x)    ; PRG $0CC8F
  $8C91: 85 18       sta $18    ; PRG $0CC91
  $8C93: 86 19       stx $19    ; PRG $0CC93
  $8C95: a5 18       lda $18    ; PRG $0CC95
  $8C97: c9 ff       cmp #$ff    ; PRG $0CC97
  $8C99: d0 04       bne $8c9f    ; PRG $0CC99
  $8C9B: a5 19       lda $19    ; PRG $0CC9B
  $8C9D: c9 00       cmp #$00    ; PRG $0CC9D
  $8C9F: d0 03       bne $8ca4    ; PRG $0CC9F
  $8CA1: 4c d6 8d    jmp $8dd6    ; PRG $0CCA1
  $8CA4: a0 fa       ldy #$fa    ; PRG $0CCA4
  $8CA6: b1 06       lda ($06),y    ; PRG $0CCA6
  $8CA8: 85 18       sta $18    ; PRG $0CCA8
  $8CAA: c8          iny    ; PRG $0CCAA
  $8CAB: b1 06       lda ($06),y    ; PRG $0CCAB
  $8CAD: 85 19       sta $19    ; PRG $0CCAD
  $8CAF: a1 18       lda ($18,x)    ; PRG $0CCAF
  $8CB1: 85 14       sta $14    ; PRG $0CCB1
  $8CB3: 86 15       stx $15    ; PRG $0CCB3
  $8CB5: a0 fe       ldy #$fe    ; PRG $0CCB5
  $8CB7: b1 06       lda ($06),y    ; PRG $0CCB7
  $8CB9: 85 18       sta $18    ; PRG $0CCB9
  $8CBB: c8          iny    ; PRG $0CCBB
  $8CBC: b1 06       lda ($06),y    ; PRG $0CCBC
  $8CBE: 85 19       sta $19    ; PRG $0CCBE
  $8CC0: a1 18       lda ($18,x)    ; PRG $0CCC0
  $8CC2: 85 10       sta $10    ; PRG $0CCC2
  $8CC4: 86 11       stx $11    ; PRG $0CCC4
  $8CC6: a5 10       lda $10    ; PRG $0CCC6
  $8CC8: c5 14       cmp $14    ; PRG $0CCC8
  $8CCA: d0 04       bne $8cd0    ; PRG $0CCCA
  $8CCC: a5 11       lda $11    ; PRG $0CCCC
  $8CCE: c5 15       cmp $15    ; PRG $0CCCE
  $8CD0: f0 03       beq $8cd5    ; PRG $0CCD0
  $8CD2: 4c 0a 8d    jmp $8d0a    ; PRG $0CCD2
  $8CD5: a0 fa       ldy #$fa    ; PRG $0CCD5
  $8CD7: b1 06       lda ($06),y    ; PRG $0CCD7
  $8CD9: 85 18       sta $18    ; PRG $0CCD9
  $8CDB: c8          iny    ; PRG $0CCDB
  $8CDC: b1 06       lda ($06),y    ; PRG $0CCDC
  $8CDE: 85 19       sta $19    ; PRG $0CCDE
  $8CE0: a0 01       ldy #$01    ; PRG $0CCE0
  $8CE2: b1 18       lda ($18),y    ; PRG $0CCE2
  $8CE4: 85 14       sta $14    ; PRG $0CCE4
  $8CE6: 86 15       stx $15    ; PRG $0CCE6
  $8CE8: a0 fe       ldy #$fe    ; PRG $0CCE8
  $8CEA: b1 06       lda ($06),y    ; PRG $0CCEA
  $8CEC: 85 18       sta $18    ; PRG $0CCEC
  $8CEE: c8          iny    ; PRG $0CCEE
  $8CEF: b1 06       lda ($06),y    ; PRG $0CCEF
  $8CF1: 85 19       sta $19    ; PRG $0CCF1
  $8CF3: a0 01       ldy #$01    ; PRG $0CCF3
  $8CF5: b1 18       lda ($18),y    ; PRG $0CCF5
  $8CF7: 85 10       sta $10    ; PRG $0CCF7
  $8CF9: 86 11       stx $11    ; PRG $0CCF9
  $8CFB: a5 10       lda $10    ; PRG $0CCFB
  $8CFD: c5 14       cmp $14    ; PRG $0CCFD
  $8CFF: d0 04       bne $8d05    ; PRG $0CCFF
  $8D01: a5 11       lda $11    ; PRG $0CD01
  $8D03: c5 15       cmp $15    ; PRG $0CD03
  $8D05: d0 03       bne $8d0a    ; PRG $0CD05
  $8D07: 4c d6 8d    jmp $8dd6    ; PRG $0CD07
  $8D0A: a0 fe       ldy #$fe    ; PRG $0CD0A
  $8D0C: b1 06       lda ($06),y    ; PRG $0CD0C
  $8D0E: 85 18       sta $18    ; PRG $0CD0E
  $8D10: c8          iny    ; PRG $0CD10
  $8D11: b1 06       lda ($06),y    ; PRG $0CD11
  $8D13: 85 19       sta $19    ; PRG $0CD13
  $8D15: a0 07       ldy #$07    ; PRG $0CD15
  $8D17: b1 18       lda ($18),y    ; PRG $0CD17
  $8D19: c8          iny    ; PRG $0CD19
  $8D1A: 11 18       ora ($18),y    ; PRG $0CD1A
  $8D1C: d0 03       bne $8d21    ; PRG $0CD1C
  $8D1E: 4c 65 8d    jmp $8d65    ; PRG $0CD1E
  $8D21: 8a          txa    ; PRG $0CD21
  $8D22: 48          pha    ; PRG $0CD22
  $8D23: a9 05       lda #$05    ; PRG $0CD23
  $8D25: 48          pha    ; PRG $0CD25
  $8D26: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0CD26
  $8D29: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $0CD29
  $8D2C: a5 08       lda $08    ; PRG $0CD2C
  $8D2E: 05 09       ora $09    ; PRG $0CD2E
  $8D30: d0 03       bne $8d35    ; PRG $0CD30
  $8D32: 4c 65 8d    jmp $8d65    ; PRG $0CD32
  $8D35: a0 fe       ldy #$fe    ; PRG $0CD35
  $8D37: b1 06       lda ($06),y    ; PRG $0CD37
  $8D39: 85 18       sta $18    ; PRG $0CD39
  $8D3B: c8          iny    ; PRG $0CD3B
  $8D3C: b1 06       lda ($06),y    ; PRG $0CD3C
  $8D3E: 85 19       sta $19    ; PRG $0CD3E
  $8D40: a0 06       ldy #$06    ; PRG $0CD40
  $8D42: b1 18       lda ($18),y    ; PRG $0CD42
  $8D44: 85 14       sta $14    ; PRG $0CD44
  $8D46: 86 15       stx $15    ; PRG $0CD46
  $8D48: a5 14       lda $14    ; PRG $0CD48
  $8D4A: 05 15       ora $15    ; PRG $0CD4A
  $8D4C: f0 03       beq $8d51    ; PRG $0CD4C
  $8D4E: 4c d6 8d    jmp $8dd6    ; PRG $0CD4E
  $8D51: 8a          txa    ; PRG $0CD51
  $8D52: 48          pha    ; PRG $0CD52
  $8D53: a9 02       lda #$02    ; PRG $0CD53
  $8D55: 48          pha    ; PRG $0CD55
  $8D56: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0CD56
  $8D59: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $0CD59
  $8D5C: a5 08       lda $08    ; PRG $0CD5C
  $8D5E: 05 09       ora $09    ; PRG $0CD5E
  $8D60: d0 03       bne $8d65    ; PRG $0CD60
  $8D62: 4c d6 8d    jmp $8dd6    ; PRG $0CD62
  $8D65: a0 fa       ldy #$fa    ; PRG $0CD65
  $8D67: b1 06       lda ($06),y    ; PRG $0CD67
  $8D69: 85 18       sta $18    ; PRG $0CD69
  $8D6B: c8          iny    ; PRG $0CD6B
  $8D6C: b1 06       lda ($06),y    ; PRG $0CD6C
  $8D6E: 85 19       sta $19    ; PRG $0CD6E
  $8D70: a0 03       ldy #$03    ; PRG $0CD70
  $8D72: b1 18       lda ($18),y    ; PRG $0CD72
  $8D74: 85 14       sta $14    ; PRG $0CD74
  $8D76: 86 15       stx $15    ; PRG $0CD76
  $8D78: a5 15       lda $15    ; PRG $0CD78
  $8D7A: 48          pha    ; PRG $0CD7A
  $8D7B: a5 14       lda $14    ; PRG $0CD7B
  $8D7D: 48          pha    ; PRG $0CD7D
  $8D7E: a0 fa       ldy #$fa    ; PRG $0CD7E
  $8D80: b1 06       lda ($06),y    ; PRG $0CD80
  $8D82: 85 18       sta $18    ; PRG $0CD82
  $8D84: c8          iny    ; PRG $0CD84
  $8D85: b1 06       lda ($06),y    ; PRG $0CD85
  $8D87: 85 19       sta $19    ; PRG $0CD87
  $8D89: a0 02       ldy #$02    ; PRG $0CD89
  $8D8B: b1 18       lda ($18),y    ; PRG $0CD8B
  $8D8D: 85 14       sta $14    ; PRG $0CD8D
  $8D8F: 86 15       stx $15    ; PRG $0CD8F
  $8D91: a5 15       lda $15    ; PRG $0CD91
  $8D93: 48          pha    ; PRG $0CD93
  $8D94: a5 14       lda $14    ; PRG $0CD94
  $8D96: 48          pha    ; PRG $0CD96
  $8D97: a0 fa       ldy #$fa    ; PRG $0CD97
  $8D99: b1 06       lda ($06),y    ; PRG $0CD99
  $8D9B: 85 18       sta $18    ; PRG $0CD9B
  $8D9D: c8          iny    ; PRG $0CD9D
  $8D9E: b1 06       lda ($06),y    ; PRG $0CD9E
  $8DA0: 85 19       sta $19    ; PRG $0CDA0
  $8DA2: a0 01       ldy #$01    ; PRG $0CDA2
  $8DA4: b1 18       lda ($18),y    ; PRG $0CDA4
  $8DA6: 85 14       sta $14    ; PRG $0CDA6
  $8DA8: 86 15       stx $15    ; PRG $0CDA8
  $8DAA: a5 15       lda $15    ; PRG $0CDAA
  $8DAC: 48          pha    ; PRG $0CDAC
  $8DAD: a5 14       lda $14    ; PRG $0CDAD
  $8DAF: 48          pha    ; PRG $0CDAF
  $8DB0: a0 fa       ldy #$fa    ; PRG $0CDB0
  $8DB2: b1 06       lda ($06),y    ; PRG $0CDB2
  $8DB4: 85 18       sta $18    ; PRG $0CDB4
  $8DB6: c8          iny    ; PRG $0CDB6
  $8DB7: b1 06       lda ($06),y    ; PRG $0CDB7
  $8DB9: 85 19       sta $19    ; PRG $0CDB9
  $8DBB: a1 18       lda ($18,x)    ; PRG $0CDBB
  $8DBD: 85 14       sta $14    ; PRG $0CDBD
  $8DBF: 86 15       stx $15    ; PRG $0CDBF
  $8DC1: a5 15       lda $15    ; PRG $0CDC1
  $8DC3: 48          pha    ; PRG $0CDC3
  $8DC4: a5 14       lda $14    ; PRG $0CDC4
  $8DC6: 48          pha    ; PRG $0CDC6
  $8DC7: a0 0c       ldy #$0c    ; PRG $0CDC7
  $8DC9: b1 04       lda ($04),y    ; PRG $0CDC9
  $8DCB: 48          pha    ; PRG $0CDCB
  $8DCC: 88          dey    ; PRG $0CDCC
  $8DCD: b1 04       lda ($04),y    ; PRG $0CDCD
  $8DCF: 48          pha    ; PRG $0CDCF
  $8DD0: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0CDD0
  $8DD3: 78 97 0c    .db $78 $97 $0c  -> vm $9778 argc 12    ; PRG $0CDD3
  $8DD6: 4c e8 8d    jmp $8de8    ; PRG $0CDD6
  $8DD9: a0 0c       ldy #$0c    ; PRG $0CDD9
  $8DDB: b1 04       lda ($04),y    ; PRG $0CDDB
  $8DDD: 48          pha    ; PRG $0CDDD
  $8DDE: 88          dey    ; PRG $0CDDE
  $8DDF: b1 04       lda ($04),y    ; PRG $0CDDF
  $8DE1: 48          pha    ; PRG $0CDE1
  $8DE2: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0CDE2
  $8DE5: 4b db 04    .db $4b $db $04  -> vm $DB4B argc 4    ; PRG $0CDE5
  $8DE8: a0 f8       ldy #$f8    ; PRG $0CDE8
  $8DEA: b1 06       lda ($06),y    ; PRG $0CDEA
  $8DEC: 85 18       sta $18    ; PRG $0CDEC
  $8DEE: c8          iny    ; PRG $0CDEE
  $8DEF: b1 06       lda ($06),y    ; PRG $0CDEF
  $8DF1: 85 19       sta $19    ; PRG $0CDF1
  $8DF3: a1 18       lda ($18,x)    ; PRG $0CDF3
  $8DF5: 85 14       sta $14    ; PRG $0CDF5
  $8DF7: 86 15       stx $15    ; PRG $0CDF7
  $8DF9: a0 fe       ldy #$fe    ; PRG $0CDF9
  $8DFB: b1 06       lda ($06),y    ; PRG $0CDFB
  $8DFD: 85 18       sta $18    ; PRG $0CDFD
  $8DFF: c8          iny    ; PRG $0CDFF
  $8E00: b1 06       lda ($06),y    ; PRG $0CE00
  $8E02: 85 19       sta $19    ; PRG $0CE02
  $8E04: a1 18       lda ($18,x)    ; PRG $0CE04
  $8E06: 85 10       sta $10    ; PRG $0CE06
  $8E08: 86 11       stx $11    ; PRG $0CE08
  $8E0A: a5 10       lda $10    ; PRG $0CE0A
  $8E0C: c5 14       cmp $14    ; PRG $0CE0C
  $8E0E: d0 04       bne $8e14    ; PRG $0CE0E
  $8E10: a5 11       lda $11    ; PRG $0CE10
  $8E12: c5 15       cmp $15    ; PRG $0CE12
  $8E14: f0 03       beq $8e19    ; PRG $0CE14
  $8E16: 4c fe 91    jmp $91fe    ; PRG $0CE16
  $8E19: a0 f8       ldy #$f8    ; PRG $0CE19
  $8E1B: b1 06       lda ($06),y    ; PRG $0CE1B
  $8E1D: 85 18       sta $18    ; PRG $0CE1D
  $8E1F: c8          iny    ; PRG $0CE1F
  $8E20: b1 06       lda ($06),y    ; PRG $0CE20
  $8E22: 85 19       sta $19    ; PRG $0CE22
  $8E24: a0 01       ldy #$01    ; PRG $0CE24
  $8E26: b1 18       lda ($18),y    ; PRG $0CE26
  $8E28: 85 14       sta $14    ; PRG $0CE28
  $8E2A: 86 15       stx $15    ; PRG $0CE2A
  $8E2C: a0 fe       ldy #$fe    ; PRG $0CE2C
  $8E2E: b1 06       lda ($06),y    ; PRG $0CE2E
  $8E30: 85 18       sta $18    ; PRG $0CE30
  $8E32: c8          iny    ; PRG $0CE32
  $8E33: b1 06       lda ($06),y    ; PRG $0CE33
  $8E35: 85 19       sta $19    ; PRG $0CE35
  $8E37: a0 01       ldy #$01    ; PRG $0CE37
  $8E39: b1 18       lda ($18),y    ; PRG $0CE39
  $8E3B: 85 10       sta $10    ; PRG $0CE3B
  $8E3D: 86 11       stx $11    ; PRG $0CE3D
  $8E3F: a5 10       lda $10    ; PRG $0CE3F
  $8E41: c5 14       cmp $14    ; PRG $0CE41
  $8E43: d0 04       bne $8e49    ; PRG $0CE43
  $8E45: a5 11       lda $11    ; PRG $0CE45
  $8E47: c5 15       cmp $15    ; PRG $0CE47
  $8E49: f0 03       beq $8e4e    ; PRG $0CE49
  $8E4B: 4c fe 91    jmp $91fe    ; PRG $0CE4B
  $8E4E: a0 f8       ldy #$f8    ; PRG $0CE4E
  $8E50: b1 06       lda ($06),y    ; PRG $0CE50
  $8E52: 85 18       sta $18    ; PRG $0CE52
  $8E54: c8          iny    ; PRG $0CE54
  $8E55: b1 06       lda ($06),y    ; PRG $0CE55
  $8E57: 85 19       sta $19    ; PRG $0CE57
  $8E59: a0 02       ldy #$02    ; PRG $0CE59
  $8E5B: b1 18       lda ($18),y    ; PRG $0CE5B
  $8E5D: 85 14       sta $14    ; PRG $0CE5D
  $8E5F: 86 15       stx $15    ; PRG $0CE5F
  $8E61: a0 fe       ldy #$fe    ; PRG $0CE61
  $8E63: b1 06       lda ($06),y    ; PRG $0CE63
  $8E65: 85 18       sta $18    ; PRG $0CE65
  $8E67: c8          iny    ; PRG $0CE67
  $8E68: b1 06       lda ($06),y    ; PRG $0CE68
  $8E6A: 85 19       sta $19    ; PRG $0CE6A
  $8E6C: a0 02       ldy #$02    ; PRG $0CE6C
  $8E6E: b1 18       lda ($18),y    ; PRG $0CE6E
  $8E70: 85 10       sta $10    ; PRG $0CE70
  $8E72: 86 11       stx $11    ; PRG $0CE72
  $8E74: a5 10       lda $10    ; PRG $0CE74
  $8E76: c5 14       cmp $14    ; PRG $0CE76
  $8E78: d0 04       bne $8e7e    ; PRG $0CE78
  $8E7A: a5 11       lda $11    ; PRG $0CE7A
  $8E7C: c5 15       cmp $15    ; PRG $0CE7C
  $8E7E: f0 03       beq $8e83    ; PRG $0CE7E
  $8E80: 4c 1b 91    jmp $911b    ; PRG $0CE80
  $8E83: a0 f8       ldy #$f8    ; PRG $0CE83
  $8E85: b1 06       lda ($06),y    ; PRG $0CE85
  $8E87: 85 18       sta $18    ; PRG $0CE87
  $8E89: c8          iny    ; PRG $0CE89
  $8E8A: b1 06       lda ($06),y    ; PRG $0CE8A
  $8E8C: 85 19       sta $19    ; PRG $0CE8C
  $8E8E: a0 03       ldy #$03    ; PRG $0CE8E
  $8E90: b1 18       lda ($18),y    ; PRG $0CE90
  $8E92: 85 14       sta $14    ; PRG $0CE92
  $8E94: 86 15       stx $15    ; PRG $0CE94
  $8E96: a0 fe       ldy #$fe    ; PRG $0CE96
  $8E98: b1 06       lda ($06),y    ; PRG $0CE98
  $8E9A: 85 18       sta $18    ; PRG $0CE9A
  $8E9C: c8          iny    ; PRG $0CE9C
  $8E9D: b1 06       lda ($06),y    ; PRG $0CE9D
  $8E9F: 85 19       sta $19    ; PRG $0CE9F
  $8EA1: a0 03       ldy #$03    ; PRG $0CEA1
  $8EA3: b1 18       lda ($18),y    ; PRG $0CEA3
  $8EA5: 85 10       sta $10    ; PRG $0CEA5
  $8EA7: 86 11       stx $11    ; PRG $0CEA7
  $8EA9: a5 10       lda $10    ; PRG $0CEA9
  $8EAB: c5 14       cmp $14    ; PRG $0CEAB
  $8EAD: d0 04       bne $8eb3    ; PRG $0CEAD
  $8EAF: a5 11       lda $11    ; PRG $0CEAF
  $8EB1: c5 15       cmp $15    ; PRG $0CEB1
  $8EB3: f0 03       beq $8eb8    ; PRG $0CEB3
  $8EB5: 4c 1b 91    jmp $911b    ; PRG $0CEB5
  $8EB8: a0 fe       ldy #$fe    ; PRG $0CEB8
  $8EBA: b1 06       lda ($06),y    ; PRG $0CEBA
  $8EBC: 85 18       sta $18    ; PRG $0CEBC
  $8EBE: c8          iny    ; PRG $0CEBE
  $8EBF: b1 06       lda ($06),y    ; PRG $0CEBF
  $8EC1: 85 19       sta $19    ; PRG $0CEC1
  $8EC3: 8a          txa    ; PRG $0CEC3
  $8EC4: a0 07       ldy #$07    ; PRG $0CEC4
  $8EC6: 91 18       sta ($18),y    ; PRG $0CEC6
  $8EC8: c8          iny    ; PRG $0CEC8
  $8EC9: 91 18       sta ($18),y    ; PRG $0CEC9
  $8ECB: a0 fe       ldy #$fe    ; PRG $0CECB
  $8ECD: b1 06       lda ($06),y    ; PRG $0CECD
  $8ECF: 85 18       sta $18    ; PRG $0CECF
  $8ED1: c8          iny    ; PRG $0CED1
  $8ED2: b1 06       lda ($06),y    ; PRG $0CED2
  $8ED4: 85 19       sta $19    ; PRG $0CED4
  $8ED6: a0 04       ldy #$04    ; PRG $0CED6
  $8ED8: b1 18       lda ($18),y    ; PRG $0CED8
  $8EDA: d0 03       bne $8edf    ; PRG $0CEDA
  $8EDC: 4c c3 8f    jmp $8fc3    ; PRG $0CEDC
  $8EDF: a9 13       lda #$13    ; PRG $0CEDF
  $8EE1: 85 18       sta $18    ; PRG $0CEE1
  $8EE3: 86 19       stx $19    ; PRG $0CEE3
  $8EE5: a0 fe       ldy #$fe    ; PRG $0CEE5
  $8EE7: b1 06       lda ($06),y    ; PRG $0CEE7
  $8EE9: 85 14       sta $14    ; PRG $0CEE9
  $8EEB: c8          iny    ; PRG $0CEEB
  $8EEC: b1 06       lda ($06),y    ; PRG $0CEEC
  $8EEE: 85 15       sta $15    ; PRG $0CEEE
  $8EF0: a0 05       ldy #$05    ; PRG $0CEF0
  $8EF2: b1 14       lda ($14),y    ; PRG $0CEF2
  $8EF4: 85 10       sta $10    ; PRG $0CEF4
  $8EF6: 86 11       stx $11    ; PRG $0CEF6
  $8EF8: a0 10       ldy #$10    ; PRG $0CEF8
  $8EFA: a2 18       ldx #$18    ; PRG $0CEFA
  $8EFC: a9 14       lda #$14    ; PRG $0CEFC
  $8EFE: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0CEFE
  $8F01: 18          clc    ; PRG $0CF01
  $8F02: a5 14       lda $14    ; PRG $0CF02
  $8F04: 69 d8       adc #$d8    ; PRG $0CF04
  $8F06: a0 fc       ldy #$fc    ; PRG $0CF06
  $8F08: 91 06       sta ($06),y    ; PRG $0CF08
  $8F0A: a5 15       lda $15    ; PRG $0CF0A
  $8F0C: 69 af       adc #$af    ; PRG $0CF0C
  $8F0E: c8          iny    ; PRG $0CF0E
  $8F0F: 91 06       sta ($06),y    ; PRG $0CF0F
  $8F11: a0 f8       ldy #$f8    ; PRG $0CF11
  $8F13: b1 06       lda ($06),y    ; PRG $0CF13
  $8F15: 85 18       sta $18    ; PRG $0CF15
  $8F17: c8          iny    ; PRG $0CF17
  $8F18: b1 06       lda ($06),y    ; PRG $0CF18
  $8F1A: 85 19       sta $19    ; PRG $0CF1A
  $8F1C: a2 18       ldx #$18    ; PRG $0CF1C
  $8F1E: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $0CF1E
  $8F21: 18          clc    ; PRG $0CF21
  $8F22: a9 11       lda #$11    ; PRG $0CF22
  $8F24: a0 fc       ldy #$fc    ; PRG $0CF24
  $8F26: 71 06       adc ($06),y    ; PRG $0CF26
  $8F28: 85 18       sta $18    ; PRG $0CF28
  $8F2A: 8a          txa    ; PRG $0CF2A
  $8F2B: c8          iny    ; PRG $0CF2B
  $8F2C: 71 06       adc ($06),y    ; PRG $0CF2C
  $8F2E: 85 19       sta $19    ; PRG $0CF2E
  $8F30: a5 19       lda $19    ; PRG $0CF30
  $8F32: 48          pha    ; PRG $0CF32
  $8F33: a5 18       lda $18    ; PRG $0CF33
  $8F35: 48          pha    ; PRG $0CF35
  $8F36: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0CF36
  $8F39: 0c d3 04    .db $0c $d3 $04  -> vm $D30C argc 4    ; PRG $0CF39
  $8F3C: a2 18       ldx #$18    ; PRG $0CF3C
  $8F3E: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $0CF3E
  $8F41: a5 08       lda $08    ; PRG $0CF41
  $8F43: c8          iny    ; PRG $0CF43
  $8F44: 91 18       sta ($18),y    ; PRG $0CF44
  $8F46: a0 f8       ldy #$f8    ; PRG $0CF46
  $8F48: b1 06       lda ($06),y    ; PRG $0CF48
  $8F4A: 85 18       sta $18    ; PRG $0CF4A
  $8F4C: c8          iny    ; PRG $0CF4C
  $8F4D: b1 06       lda ($06),y    ; PRG $0CF4D
  $8F4F: 85 19       sta $19    ; PRG $0CF4F
  $8F51: a2 18       ldx #$18    ; PRG $0CF51
  $8F53: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $0CF53
  $8F56: 18          clc    ; PRG $0CF56
  $8F57: a9 12       lda #$12    ; PRG $0CF57
  $8F59: a0 fc       ldy #$fc    ; PRG $0CF59
  $8F5B: 71 06       adc ($06),y    ; PRG $0CF5B
  $8F5D: 85 18       sta $18    ; PRG $0CF5D
  $8F5F: 8a          txa    ; PRG $0CF5F
  $8F60: c8          iny    ; PRG $0CF60
  $8F61: 71 06       adc ($06),y    ; PRG $0CF61
  $8F63: 85 19       sta $19    ; PRG $0CF63
  $8F65: a5 19       lda $19    ; PRG $0CF65
  $8F67: 48          pha    ; PRG $0CF67
  $8F68: a5 18       lda $18    ; PRG $0CF68
  $8F6A: 48          pha    ; PRG $0CF6A
  $8F6B: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0CF6B
  $8F6E: 0c d3 04    .db $0c $d3 $04  -> vm $D30C argc 4    ; PRG $0CF6E
  $8F71: a2 18       ldx #$18    ; PRG $0CF71
  $8F73: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $0CF73
  $8F76: a5 08       lda $08    ; PRG $0CF76
  $8F78: a0 03       ldy #$03    ; PRG $0CF78
  $8F7A: 91 18       sta ($18),y    ; PRG $0CF7A
  $8F7C: a0 f8       ldy #$f8    ; PRG $0CF7C
  $8F7E: b1 06       lda ($06),y    ; PRG $0CF7E
  $8F80: 85 18       sta $18    ; PRG $0CF80
  $8F82: c8          iny    ; PRG $0CF82
  $8F83: b1 06       lda ($06),y    ; PRG $0CF83
  $8F85: 85 19       sta $19    ; PRG $0CF85
  $8F87: a9 12       lda #$12    ; PRG $0CF87
  $8F89: a0 0f       ldy #$0f    ; PRG $0CF89
  $8F8B: 11 18       ora ($18),y    ; PRG $0CF8B
  $8F8D: 91 18       sta ($18),y    ; PRG $0CF8D
  $8F8F: a0 fe       ldy #$fe    ; PRG $0CF8F
  $8F91: b1 06       lda ($06),y    ; PRG $0CF91
  $8F93: 85 18       sta $18    ; PRG $0CF93
  $8F95: c8          iny    ; PRG $0CF95
  $8F96: b1 06       lda ($06),y    ; PRG $0CF96
  $8F98: 85 19       sta $19    ; PRG $0CF98
  $8F9A: a2 18       ldx #$18    ; PRG $0CF9A
  $8F9C: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $0CF9C
  $8F9F: 48          pha    ; PRG $0CF9F
  $8FA0: a9 06       lda #$06    ; PRG $0CFA0
  $8FA2: 48          pha    ; PRG $0CFA2
  $8FA3: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0CFA3
  $8FA6: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $0CFA6
  $8FA9: 18          clc    ; PRG $0CFA9
  $8FAA: a9 05       lda #$05    ; PRG $0CFAA
  $8FAC: 65 08       adc $08    ; PRG $0CFAC
  $8FAE: 85 18       sta $18    ; PRG $0CFAE
  $8FB0: 8a          txa    ; PRG $0CFB0
  $8FB1: 65 09       adc $09    ; PRG $0CFB1
  $8FB3: 85 19       sta $19    ; PRG $0CFB3
  $8FB5: a2 14       ldx #$14    ; PRG $0CFB5
  $8FB7: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $0CFB7
  $8FBA: a5 18       lda $18    ; PRG $0CFBA
  $8FBC: a0 06       ldy #$06    ; PRG $0CFBC
  $8FBE: 91 14       sta ($14),y    ; PRG $0CFBE
  $8FC0: 4c 18 91    jmp $9118    ; PRG $0CFC0
  $8FC3: a9 04       lda #$04    ; PRG $0CFC3
  $8FC5: 85 18       sta $18    ; PRG $0CFC5
  $8FC7: 86 19       stx $19    ; PRG $0CFC7
  $8FC9: a0 fe       ldy #$fe    ; PRG $0CFC9
  $8FCB: b1 06       lda ($06),y    ; PRG $0CFCB
  $8FCD: 85 14       sta $14    ; PRG $0CFCD
  $8FCF: c8          iny    ; PRG $0CFCF
  $8FD0: b1 06       lda ($06),y    ; PRG $0CFD0
  $8FD2: 85 15       sta $15    ; PRG $0CFD2
  $8FD4: a0 05       ldy #$05    ; PRG $0CFD4
  $8FD6: b1 14       lda ($14),y    ; PRG $0CFD6
  $8FD8: 85 10       sta $10    ; PRG $0CFD8
  $8FDA: 86 11       stx $11    ; PRG $0CFDA
  $8FDC: a0 10       ldy #$10    ; PRG $0CFDC
  $8FDE: a2 18       ldx #$18    ; PRG $0CFDE
  $8FE0: a9 14       lda #$14    ; PRG $0CFE0
  $8FE2: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0CFE2
  $8FE5: 18          clc    ; PRG $0CFE5
  $8FE6: a5 14       lda $14    ; PRG $0CFE6
  $8FE8: 69 62       adc #$62    ; PRG $0CFE8
  $8FEA: a0 fa       ldy #$fa    ; PRG $0CFEA
  $8FEC: 91 06       sta ($06),y    ; PRG $0CFEC
  $8FEE: a5 15       lda $15    ; PRG $0CFEE
  $8FF0: 69 66       adc #$66    ; PRG $0CFF0
  $8FF2: c8          iny    ; PRG $0CFF2
  $8FF3: 91 06       sta ($06),y    ; PRG $0CFF3
  $8FF5: 88          dey    ; PRG $0CFF5
  $8FF6: b1 06       lda ($06),y    ; PRG $0CFF6
  $8FF8: 85 18       sta $18    ; PRG $0CFF8
  $8FFA: c8          iny    ; PRG $0CFFA
  $8FFB: b1 06       lda ($06),y    ; PRG $0CFFB
  $8FFD: 85 19       sta $19    ; PRG $0CFFD
  $8FFF: a1 18       lda ($18,x)    ; PRG $0CFFF
  $9001: 85 14       sta $14    ; PRG $0D001
  $9003: 86 15       stx $15    ; PRG $0D003
  $9005: a0 f8       ldy #$f8    ; PRG $0D005
  $9007: b1 06       lda ($06),y    ; PRG $0D007
  $9009: 85 18       sta $18    ; PRG $0D009
  $900B: c8          iny    ; PRG $0D00B
  $900C: b1 06       lda ($06),y    ; PRG $0D00C
  $900E: 85 19       sta $19    ; PRG $0D00E
  $9010: a1 18       lda ($18,x)    ; PRG $0D010
  $9012: 85 10       sta $10    ; PRG $0D012
  $9014: 86 11       stx $11    ; PRG $0D014
  $9016: a5 10       lda $10    ; PRG $0D016
  $9018: c5 14       cmp $14    ; PRG $0D018
  $901A: d0 04       bne $9020    ; PRG $0D01A
  $901C: a5 11       lda $11    ; PRG $0D01C
  $901E: c5 15       cmp $15    ; PRG $0D01E
  $9020: f0 03       beq $9025    ; PRG $0D020
  $9022: 4c 18 91    jmp $9118    ; PRG $0D022
  $9025: a0 fa       ldy #$fa    ; PRG $0D025
  $9027: b1 06       lda ($06),y    ; PRG $0D027
  $9029: 85 18       sta $18    ; PRG $0D029
  $902B: c8          iny    ; PRG $0D02B
  $902C: b1 06       lda ($06),y    ; PRG $0D02C
  $902E: 85 19       sta $19    ; PRG $0D02E
  $9030: a0 01       ldy #$01    ; PRG $0D030
  $9032: b1 18       lda ($18),y    ; PRG $0D032
  $9034: 85 14       sta $14    ; PRG $0D034
  $9036: 86 15       stx $15    ; PRG $0D036
  $9038: a0 f8       ldy #$f8    ; PRG $0D038
  $903A: b1 06       lda ($06),y    ; PRG $0D03A
  $903C: 85 18       sta $18    ; PRG $0D03C
  $903E: c8          iny    ; PRG $0D03E
  $903F: b1 06       lda ($06),y    ; PRG $0D03F
  $9041: 85 19       sta $19    ; PRG $0D041
  $9043: a0 01       ldy #$01    ; PRG $0D043
  $9045: b1 18       lda ($18),y    ; PRG $0D045
  $9047: 85 10       sta $10    ; PRG $0D047
  $9049: 86 11       stx $11    ; PRG $0D049
  $904B: a5 10       lda $10    ; PRG $0D04B
  $904D: c5 14       cmp $14    ; PRG $0D04D
  $904F: d0 04       bne $9055    ; PRG $0D04F
  $9051: a5 11       lda $11    ; PRG $0D051
  $9053: c5 15       cmp $15    ; PRG $0D053
  $9055: f0 03       beq $905a    ; PRG $0D055
  $9057: 4c 18 91    jmp $9118    ; PRG $0D057
  $905A: a0 fa       ldy #$fa    ; PRG $0D05A
  $905C: b1 06       lda ($06),y    ; PRG $0D05C
  $905E: 85 18       sta $18    ; PRG $0D05E
  $9060: c8          iny    ; PRG $0D060
  $9061: b1 06       lda ($06),y    ; PRG $0D061
  $9063: 85 19       sta $19    ; PRG $0D063
  $9065: a0 02       ldy #$02    ; PRG $0D065
  $9067: b1 18       lda ($18),y    ; PRG $0D067
  $9069: 85 14       sta $14    ; PRG $0D069
  $906B: 86 15       stx $15    ; PRG $0D06B
  $906D: a0 f8       ldy #$f8    ; PRG $0D06D
  $906F: b1 06       lda ($06),y    ; PRG $0D06F
  $9071: 85 18       sta $18    ; PRG $0D071
  $9073: c8          iny    ; PRG $0D073
  $9074: b1 06       lda ($06),y    ; PRG $0D074
  $9076: 85 19       sta $19    ; PRG $0D076
  $9078: a0 02       ldy #$02    ; PRG $0D078
  $907A: b1 18       lda ($18),y    ; PRG $0D07A
  $907C: 85 10       sta $10    ; PRG $0D07C
  $907E: 86 11       stx $11    ; PRG $0D07E
  $9080: a5 10       lda $10    ; PRG $0D080
  $9082: c5 14       cmp $14    ; PRG $0D082
  $9084: d0 04       bne $908a    ; PRG $0D084
  $9086: a5 11       lda $11    ; PRG $0D086
  $9088: c5 15       cmp $15    ; PRG $0D088
  $908A: f0 03       beq $908f    ; PRG $0D08A
  $908C: 4c 18 91    jmp $9118    ; PRG $0D08C
  $908F: a0 fa       ldy #$fa    ; PRG $0D08F
  $9091: b1 06       lda ($06),y    ; PRG $0D091
  $9093: 85 18       sta $18    ; PRG $0D093
  $9095: c8          iny    ; PRG $0D095
  $9096: b1 06       lda ($06),y    ; PRG $0D096
  $9098: 85 19       sta $19    ; PRG $0D098
  $909A: a0 03       ldy #$03    ; PRG $0D09A
  $909C: b1 18       lda ($18),y    ; PRG $0D09C
  $909E: 85 14       sta $14    ; PRG $0D09E
  $90A0: 86 15       stx $15    ; PRG $0D0A0
  $90A2: a0 f8       ldy #$f8    ; PRG $0D0A2
  $90A4: b1 06       lda ($06),y    ; PRG $0D0A4
  $90A6: 85 18       sta $18    ; PRG $0D0A6
  $90A8: c8          iny    ; PRG $0D0A8
  $90A9: b1 06       lda ($06),y    ; PRG $0D0A9
  $90AB: 85 19       sta $19    ; PRG $0D0AB
  $90AD: a0 03       ldy #$03    ; PRG $0D0AD
  $90AF: b1 18       lda ($18),y    ; PRG $0D0AF
  $90B1: 85 10       sta $10    ; PRG $0D0B1
  $90B3: 86 11       stx $11    ; PRG $0D0B3
  $90B5: a5 10       lda $10    ; PRG $0D0B5
  $90B7: c5 14       cmp $14    ; PRG $0D0B7
  $90B9: d0 04       bne $90bf    ; PRG $0D0B9
  $90BB: a5 11       lda $11    ; PRG $0D0BB
  $90BD: c5 15       cmp $15    ; PRG $0D0BD
  $90BF: f0 03       beq $90c4    ; PRG $0D0BF
  $90C1: 4c 18 91    jmp $9118    ; PRG $0D0C1
  $90C4: a0 fa       ldy #$fa    ; PRG $0D0C4
  $90C6: b1 06       lda ($06),y    ; PRG $0D0C6
  $90C8: 85 18       sta $18    ; PRG $0D0C8
  $90CA: c8          iny    ; PRG $0D0CA
  $90CB: b1 06       lda ($06),y    ; PRG $0D0CB
  $90CD: 85 19       sta $19    ; PRG $0D0CD
  $90CF: a0 0f       ldy #$0f    ; PRG $0D0CF
  $90D1: b1 18       lda ($18),y    ; PRG $0D0D1
  $90D3: 85 14       sta $14    ; PRG $0D0D3
  $90D5: 86 15       stx $15    ; PRG $0D0D5
  $90D7: a5 14       lda $14    ; PRG $0D0D7
  $90D9: 29 22       and #$22    ; PRG $0D0D9
  $90DB: f0 03       beq $90e0    ; PRG $0D0DB
  $90DD: 4c 18 91    jmp $9118    ; PRG $0D0DD
  $90E0: ad 8c 6b    lda $6b8c    ; PRG $0D0E0
  $90E3: 85 18       sta $18    ; PRG $0D0E3
  $90E5: 86 19       stx $19    ; PRG $0D0E5
  $90E7: a5 18       lda $18    ; PRG $0D0E7
  $90E9: c9 0a       cmp #$0a    ; PRG $0D0E9
  $90EB: a5 19       lda $19    ; PRG $0D0EB
  $90ED: e9 00       sbc #$00    ; PRG $0D0ED
  $90EF: 90 03       bcc $90f4    ; PRG $0D0EF
  $90F1: 4c 18 91    jmp $9118    ; PRG $0D0F1
  $90F4: a0 fe       ldy #$fe    ; PRG $0D0F4
  $90F6: b1 06       lda ($06),y    ; PRG $0D0F6
  $90F8: 85 18       sta $18    ; PRG $0D0F8
  $90FA: c8          iny    ; PRG $0D0FA
  $90FB: b1 06       lda ($06),y    ; PRG $0D0FB
  $90FD: 85 19       sta $19    ; PRG $0D0FD
  $90FF: a0 05       ldy #$05    ; PRG $0D0FF
  $9101: b1 18       lda ($18),y    ; PRG $0D101
  $9103: 85 14       sta $14    ; PRG $0D103
  $9105: 86 15       stx $15    ; PRG $0D105
  $9107: 18          clc    ; PRG $0D107
  $9108: a9 01       lda #$01    ; PRG $0D108
  $910A: 65 14       adc $14    ; PRG $0D10A
  $910C: 85 18       sta $18    ; PRG $0D10C
  $910E: 8a          txa    ; PRG $0D10E
  $910F: 65 15       adc $15    ; PRG $0D10F
  $9111: 85 19       sta $19    ; PRG $0D111
  $9113: a5 18       lda $18    ; PRG $0D113
  $9115: 8d 9d 72    sta $729d    ; PRG $0D115
  $9118: 4c fb 91    jmp $91fb    ; PRG $0D118
  $911B: a0 f8       ldy #$f8    ; PRG $0D11B
  $911D: b1 06       lda ($06),y    ; PRG $0D11D
  $911F: 85 18       sta $18    ; PRG $0D11F
  $9121: c8          iny    ; PRG $0D121
  $9122: b1 06       lda ($06),y    ; PRG $0D122
  $9124: 85 19       sta $19    ; PRG $0D124
  $9126: a1 18       lda ($18,x)    ; PRG $0D126
  $9128: 85 14       sta $14    ; PRG $0D128
  $912A: 86 15       stx $15    ; PRG $0D12A
  $912C: ad 65 72    lda $7265    ; PRG $0D12C
  $912F: 85 18       sta $18    ; PRG $0D12F
  $9131: 86 19       stx $19    ; PRG $0D131
  $9133: a9 03       lda #$03    ; PRG $0D133
  $9135: 85 10       sta $10    ; PRG $0D135
  $9137: 86 11       stx $11    ; PRG $0D137
  $9139: ad 63 72    lda $7263    ; PRG $0D139
  $913C: 85 0c       sta $0c    ; PRG $0D13C
  $913E: 86 0d       stx $0d    ; PRG $0D13E
  $9140: a0 0c       ldy #$0c    ; PRG $0D140
  $9142: a2 10       ldx #$10    ; PRG $0D142
  $9144: a9 08       lda #$08    ; PRG $0D144
  $9146: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0D146
  $9149: 18          clc    ; PRG $0D149
  $914A: a5 08       lda $08    ; PRG $0D14A
  $914C: 65 18       adc $18    ; PRG $0D14C
  $914E: 85 10       sta $10    ; PRG $0D14E
  $9150: a5 09       lda $09    ; PRG $0D150
  $9152: 65 19       adc $19    ; PRG $0D152
  $9154: 85 11       sta $11    ; PRG $0D154
  $9156: a5 10       lda $10    ; PRG $0D156
  $9158: c5 14       cmp $14    ; PRG $0D158
  $915A: d0 04       bne $9160    ; PRG $0D15A
  $915C: a5 11       lda $11    ; PRG $0D15C
  $915E: c5 15       cmp $15    ; PRG $0D15E
  $9160: f0 03       beq $9165    ; PRG $0D160
  $9162: 4c b1 91    jmp $91b1    ; PRG $0D162
  $9165: a0 f8       ldy #$f8    ; PRG $0D165
  $9167: b1 06       lda ($06),y    ; PRG $0D167
  $9169: 85 18       sta $18    ; PRG $0D169
  $916B: c8          iny    ; PRG $0D16B
  $916C: b1 06       lda ($06),y    ; PRG $0D16C
  $916E: 85 19       sta $19    ; PRG $0D16E
  $9170: a0 01       ldy #$01    ; PRG $0D170
  $9172: b1 18       lda ($18),y    ; PRG $0D172
  $9174: 85 14       sta $14    ; PRG $0D174
  $9176: 86 15       stx $15    ; PRG $0D176
  $9178: ad 66 72    lda $7266    ; PRG $0D178
  $917B: 85 18       sta $18    ; PRG $0D17B
  $917D: 86 19       stx $19    ; PRG $0D17D
  $917F: a9 03       lda #$03    ; PRG $0D17F
  $9181: 85 10       sta $10    ; PRG $0D181
  $9183: 86 11       stx $11    ; PRG $0D183
  $9185: ad 64 72    lda $7264    ; PRG $0D185
  $9188: 85 0c       sta $0c    ; PRG $0D188
  $918A: 86 0d       stx $0d    ; PRG $0D18A
  $918C: a0 0c       ldy #$0c    ; PRG $0D18C
  $918E: a2 10       ldx #$10    ; PRG $0D18E
  $9190: a9 08       lda #$08    ; PRG $0D190
  $9192: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0D192
  $9195: 18          clc    ; PRG $0D195
  $9196: a5 08       lda $08    ; PRG $0D196
  $9198: 65 18       adc $18    ; PRG $0D198
  $919A: 85 10       sta $10    ; PRG $0D19A
  $919C: a5 09       lda $09    ; PRG $0D19C
  $919E: 65 19       adc $19    ; PRG $0D19E
  $91A0: 85 11       sta $11    ; PRG $0D1A0
  $91A2: a5 10       lda $10    ; PRG $0D1A2
  $91A4: c5 14       cmp $14    ; PRG $0D1A4
  $91A6: d0 04       bne $91ac    ; PRG $0D1A6
  $91A8: a5 11       lda $11    ; PRG $0D1A8
  $91AA: c5 15       cmp $15    ; PRG $0D1AA
  $91AC: d0 03       bne $91b1    ; PRG $0D1AC
  $91AE: 4c ec 91    jmp $91ec    ; PRG $0D1AE
  $91B1: a0 f8       ldy #$f8    ; PRG $0D1B1
  $91B3: b1 06       lda ($06),y    ; PRG $0D1B3
  $91B5: 85 18       sta $18    ; PRG $0D1B5
  $91B7: c8          iny    ; PRG $0D1B7
  $91B8: b1 06       lda ($06),y    ; PRG $0D1B8
  $91BA: 85 19       sta $19    ; PRG $0D1BA
  $91BC: a0 fe       ldy #$fe    ; PRG $0D1BC
  $91BE: b1 06       lda ($06),y    ; PRG $0D1BE
  $91C0: 85 14       sta $14    ; PRG $0D1C0
  $91C2: c8          iny    ; PRG $0D1C2
  $91C3: b1 06       lda ($06),y    ; PRG $0D1C3
  $91C5: 85 15       sta $15    ; PRG $0D1C5
  $91C7: a0 02       ldy #$02    ; PRG $0D1C7
  $91C9: b1 14       lda ($14),y    ; PRG $0D1C9
  $91CB: 91 18       sta ($18),y    ; PRG $0D1CB
  $91CD: a0 f8       ldy #$f8    ; PRG $0D1CD
  $91CF: b1 06       lda ($06),y    ; PRG $0D1CF
  $91D1: 85 18       sta $18    ; PRG $0D1D1
  $91D3: c8          iny    ; PRG $0D1D3
  $91D4: b1 06       lda ($06),y    ; PRG $0D1D4
  $91D6: 85 19       sta $19    ; PRG $0D1D6
  $91D8: a0 fe       ldy #$fe    ; PRG $0D1D8
  $91DA: b1 06       lda ($06),y    ; PRG $0D1DA
  $91DC: 85 14       sta $14    ; PRG $0D1DC
  $91DE: c8          iny    ; PRG $0D1DE
  $91DF: b1 06       lda ($06),y    ; PRG $0D1DF
  $91E1: 85 15       sta $15    ; PRG $0D1E1
  $91E3: a0 03       ldy #$03    ; PRG $0D1E3
  $91E5: b1 14       lda ($14),y    ; PRG $0D1E5
  $91E7: 91 18       sta ($18),y    ; PRG $0D1E7
  $91E9: 4c fb 91    jmp $91fb    ; PRG $0D1E9
  $91EC: a0 0c       ldy #$0c    ; PRG $0D1EC
  $91EE: b1 04       lda ($04),y    ; PRG $0D1EE
  $91F0: 48          pha    ; PRG $0D1F0
  $91F1: 88          dey    ; PRG $0D1F1
  $91F2: b1 04       lda ($04),y    ; PRG $0D1F2
  $91F4: 48          pha    ; PRG $0D1F4
  $91F5: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0D1F5
  $91F8: 00 83 04    .db $00 $83 $04  -> vm $8300 argc 4    ; PRG $0D1F8
  $91FB: 4c 0d 92    jmp $920d    ; PRG $0D1FB
  $91FE: a0 0c       ldy #$0c    ; PRG $0D1FE
  $9200: b1 04       lda ($04),y    ; PRG $0D200
  $9202: 48          pha    ; PRG $0D202
  $9203: 88          dey    ; PRG $0D203
  $9204: b1 04       lda ($04),y    ; PRG $0D204
  $9206: 48          pha    ; PRG $0D206
  $9207: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0D207
  $920A: 00 83 04    .db $00 $83 $04  -> vm $8300 argc 4    ; PRG $0D20A
  $920D: 60          rts    ; PRG $0D20D

; ---- sub_6_1214  [stub]  <- (entry: bytecode/OS via $E299)
nat_6_120e: jsr $E299                    ; 6:920E  native-call prologue
            .db $00 $f5 $ff            ; inline: argcount $00, frame $fff5
  $9214: a9 0a       lda #$0a    ; PRG $0D214
  $9216: 48          pha    ; PRG $0D216
  $9217: a9 20       lda #$20    ; PRG $0D217
  $9219: 48          pha    ; PRG $0D219
  $921A: a9 73       lda #$73    ; PRG $0D21A
  $921C: 48          pha    ; PRG $0D21C
  $921D: a9 90       lda #$90    ; PRG $0D21D
  $921F: 48          pha    ; PRG $0D21F
  $9220: a9 a0       lda #$a0    ; PRG $0D220
  $9222: 48          pha    ; PRG $0D222
  $9223: a9 04       lda #$04    ; PRG $0D223
  $9225: 48          pha    ; PRG $0D225
  $9226: 8a          txa    ; PRG $0D226
  $9227: 48          pha    ; PRG $0D227
  $9228: a9 ef       lda #$ef    ; PRG $0D228
  $922A: 48          pha    ; PRG $0D22A
  $922B: 8a          txa    ; PRG $0D22B
  $922C: 48          pha    ; PRG $0D22C
  $922D: a9 02       lda #$02    ; PRG $0D22D
  $922F: 48          pha    ; PRG $0D22F
  $9230: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0D230
  $9233: ec dc 0c    .db $ec $dc $0c  -> vm $DCEC argc 12    ; PRG $0D233
  $9236: a9 48       lda #$48    ; PRG $0D236
  $9238: 85 18       sta $18    ; PRG $0D238
  $923A: 86 19       stx $19    ; PRG $0D23A
  $923C: a0 0d       ldy #$0d    ; PRG $0D23C
  $923E: b1 04       lda ($04),y    ; PRG $0D23E
  $9240: 85 14       sta $14    ; PRG $0D240
  $9242: c8          iny    ; PRG $0D242
  $9243: b1 04       lda ($04),y    ; PRG $0D243
  $9245: 85 15       sta $15    ; PRG $0D245
  $9247: a0 14       ldy #$14    ; PRG $0D247
  $9249: a2 18       ldx #$18    ; PRG $0D249
  $924B: a9 10       lda #$10    ; PRG $0D24B
  $924D: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0D24D
  $9250: 18          clc    ; PRG $0D250
  $9251: a5 10       lda $10    ; PRG $0D251
  $9253: a0 0b       ldy #$0b    ; PRG $0D253
  $9255: 71 04       adc ($04),y    ; PRG $0D255
  $9257: 85 18       sta $18    ; PRG $0D257
  $9259: a5 11       lda $11    ; PRG $0D259
  $925B: c8          iny    ; PRG $0D25B
  $925C: 71 04       adc ($04),y    ; PRG $0D25C
  $925E: 85 19       sta $19    ; PRG $0D25E
  $9260: 18          clc    ; PRG $0D260
  $9261: a5 18       lda $18    ; PRG $0D261
  $9263: 69 90       adc #$90    ; PRG $0D263
  $9265: a0 fa       ldy #$fa    ; PRG $0D265
  $9267: 91 06       sta ($06),y    ; PRG $0D267
  $9269: a5 19       lda $19    ; PRG $0D269
  $926B: 69 73       adc #$73    ; PRG $0D26B
  $926D: c8          iny    ; PRG $0D26D
  $926E: 91 06       sta ($06),y    ; PRG $0D26E
  $9270: 88          dey    ; PRG $0D270
  $9271: b1 06       lda ($06),y    ; PRG $0D271
  $9273: 85 18       sta $18    ; PRG $0D273
  $9275: c8          iny    ; PRG $0D275
  $9276: b1 06       lda ($06),y    ; PRG $0D276
  $9278: 85 19       sta $19    ; PRG $0D278
  $927A: a9 fe       lda #$fe    ; PRG $0D27A
  $927C: 81 18       sta ($18,x)    ; PRG $0D27C
  $927E: a9 b0       lda #$b0    ; PRG $0D27E
  $9280: a0 f7       ldy #$f7    ; PRG $0D280
  $9282: 91 06       sta ($06),y    ; PRG $0D282
  $9284: a9 7d       lda #$7d    ; PRG $0D284
  $9286: c8          iny    ; PRG $0D286
  $9287: 91 06       sta ($06),y    ; PRG $0D287
  $9289: 18          clc    ; PRG $0D289
  $928A: a9 02       lda #$02    ; PRG $0D28A
  $928C: 69 b0       adc #$b0    ; PRG $0D28C
  $928E: a0 f5       ldy #$f5    ; PRG $0D28E
  $9290: 91 06       sta ($06),y    ; PRG $0D290
  $9292: 8a          txa    ; PRG $0D292
  $9293: 69 7d       adc #$7d    ; PRG $0D293
  $9295: c8          iny    ; PRG $0D295
  $9296: 91 06       sta ($06),y    ; PRG $0D296
  $9298: c8          iny    ; PRG $0D298
  $9299: b1 06       lda ($06),y    ; PRG $0D299
  $929B: 85 18       sta $18    ; PRG $0D29B
  $929D: c8          iny    ; PRG $0D29D
  $929E: b1 06       lda ($06),y    ; PRG $0D29E
  $92A0: 85 19       sta $19    ; PRG $0D2A0
  $92A2: a9 48       lda #$48    ; PRG $0D2A2
  $92A4: 85 14       sta $14    ; PRG $0D2A4
  $92A6: 86 15       stx $15    ; PRG $0D2A6
  $92A8: a0 11       ldy #$11    ; PRG $0D2A8
  $92AA: b1 04       lda ($04),y    ; PRG $0D2AA
  $92AC: 85 10       sta $10    ; PRG $0D2AC
  $92AE: c8          iny    ; PRG $0D2AE
  $92AF: b1 04       lda ($04),y    ; PRG $0D2AF
  $92B1: 85 11       sta $11    ; PRG $0D2B1
  $92B3: a0 10       ldy #$10    ; PRG $0D2B3
  $92B5: a2 14       ldx #$14    ; PRG $0D2B5
  $92B7: a9 0c       lda #$0c    ; PRG $0D2B7
  $92B9: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0D2B9
  $92BC: 18          clc    ; PRG $0D2BC
  $92BD: a5 0c       lda $0c    ; PRG $0D2BD
  $92BF: a0 0f       ldy #$0f    ; PRG $0D2BF
  $92C1: 71 04       adc ($04),y    ; PRG $0D2C1
  $92C3: 81 18       sta ($18,x)    ; PRG $0D2C3
  $92C5: a5 0d       lda $0d    ; PRG $0D2C5
  $92C7: c8          iny    ; PRG $0D2C7
  $92C8: 71 04       adc ($04),y    ; PRG $0D2C8
  $92CA: a0 01       ldy #$01    ; PRG $0D2CA
  $92CC: 91 18       sta ($18),y    ; PRG $0D2CC
  $92CE: 18          clc    ; PRG $0D2CE
  $92CF: a1 18       lda ($18,x)    ; PRG $0D2CF
  $92D1: 69 90       adc #$90    ; PRG $0D2D1
  $92D3: 85 14       sta $14    ; PRG $0D2D3
  $92D5: b1 18       lda ($18),y    ; PRG $0D2D5
  $92D7: 69 73       adc #$73    ; PRG $0D2D7
  $92D9: 85 15       sta $15    ; PRG $0D2D9
  $92DB: 8a          txa    ; PRG $0D2DB
  $92DC: 81 14       sta ($14,x)    ; PRG $0D2DC
  $92DE: a0 f7       ldy #$f7    ; PRG $0D2DE
  $92E0: b1 06       lda ($06),y    ; PRG $0D2E0
  $92E2: a0 f5       ldy #$f5    ; PRG $0D2E2
  $92E4: d1 06       cmp ($06),y    ; PRG $0D2E4
  $92E6: d0 08       bne $92f0    ; PRG $0D2E6
  $92E8: a0 f8       ldy #$f8    ; PRG $0D2E8
  $92EA: b1 06       lda ($06),y    ; PRG $0D2EA
  $92EC: a0 f6       ldy #$f6    ; PRG $0D2EC
  $92EE: d1 06       cmp ($06),y    ; PRG $0D2EE
  $92F0: d0 03       bne $92f5    ; PRG $0D2F0
  $92F2: 4c 60 95    jmp $9560    ; PRG $0D2F2
  $92F5: 18          clc    ; PRG $0D2F5
  $92F6: a0 f7       ldy #$f7    ; PRG $0D2F6
  $92F8: b1 06       lda ($06),y    ; PRG $0D2F8
  $92FA: 85 18       sta $18    ; PRG $0D2FA
  $92FC: 69 02       adc #$02    ; PRG $0D2FC
  $92FE: 91 06       sta ($06),y    ; PRG $0D2FE
  $9300: c8          iny    ; PRG $0D300
  $9301: b1 06       lda ($06),y    ; PRG $0D301
  $9303: 85 19       sta $19    ; PRG $0D303
  $9305: 69 00       adc #$00    ; PRG $0D305
  $9307: 91 06       sta ($06),y    ; PRG $0D307
  $9309: a1 18       lda ($18,x)    ; PRG $0D309
  $930B: 8d f0 7f    sta $7ff0    ; PRG $0D30B
  $930E: a0 01       ldy #$01    ; PRG $0D30E
  $9310: b1 18       lda ($18),y    ; PRG $0D310
  $9312: 8d f1 7f    sta $7ff1    ; PRG $0D312
  $9315: a0 f7       ldy #$f7    ; PRG $0D315
  $9317: b1 06       lda ($06),y    ; PRG $0D317
  $9319: c9 f0       cmp #$f0    ; PRG $0D319
  $931B: c8          iny    ; PRG $0D31B
  $931C: b1 06       lda ($06),y    ; PRG $0D31C
  $931E: e9 7f       sbc #$7f    ; PRG $0D31E
  $9320: b0 03       bcs $9325    ; PRG $0D320
  $9322: 4c 2f 93    jmp $932f    ; PRG $0D322
  $9325: a9 b0       lda #$b0    ; PRG $0D325
  $9327: 88          dey    ; PRG $0D327
  $9328: 91 06       sta ($06),y    ; PRG $0D328
  $932A: a9 7d       lda #$7d    ; PRG $0D32A
  $932C: c8          iny    ; PRG $0D32C
  $932D: 91 06       sta ($06),y    ; PRG $0D32D
  $932F: 18          clc    ; PRG $0D32F
  $9330: ad f0 7f    lda $7ff0    ; PRG $0D330
  $9333: 69 90       adc #$90    ; PRG $0D333
  $9335: 8d f4 7f    sta $7ff4    ; PRG $0D335
  $9338: ad f1 7f    lda $7ff1    ; PRG $0D338
  $933B: 69 73       adc #$73    ; PRG $0D33B
  $933D: 8d f5 7f    sta $7ff5    ; PRG $0D33D
  $9340: ad f4 7f    lda $7ff4    ; PRG $0D340
  $9343: 85 18       sta $18    ; PRG $0D343
  $9345: ad f5 7f    lda $7ff5    ; PRG $0D345
  $9348: 85 19       sta $19    ; PRG $0D348
  $934A: a1 18       lda ($18,x)    ; PRG $0D34A
  $934C: 85 14       sta $14    ; PRG $0D34C
  $934E: 86 15       stx $15    ; PRG $0D34E
  $9350: 18          clc    ; PRG $0D350
  $9351: a9 01       lda #$01    ; PRG $0D351
  $9353: 65 14       adc $14    ; PRG $0D353
  $9355: 85 18       sta $18    ; PRG $0D355
  $9357: 8a          txa    ; PRG $0D357
  $9358: 65 15       adc $15    ; PRG $0D358
  $935A: 85 19       sta $19    ; PRG $0D35A
  $935C: a5 18       lda $18    ; PRG $0D35C
  $935E: a0 f9       ldy #$f9    ; PRG $0D35E
  $9360: 91 06       sta ($06),y    ; PRG $0D360
  $9362: a9 48       lda #$48    ; PRG $0D362
  $9364: 85 18       sta $18    ; PRG $0D364
  $9366: 86 19       stx $19    ; PRG $0D366
  $9368: ad f0 7f    lda $7ff0    ; PRG $0D368
  $936B: 85 14       sta $14    ; PRG $0D36B
  $936D: ad f1 7f    lda $7ff1    ; PRG $0D36D
  $9370: 85 15       sta $15    ; PRG $0D370
  $9372: a0 14       ldy #$14    ; PRG $0D372
  $9374: a2 18       ldx #$18    ; PRG $0D374
  $9376: a9 10       lda #$10    ; PRG $0D376
  $9378: 20 b4 e1    jsr $e1b4   ; alu_abs16    ; PRG $0D378
  $937B: a5 10       lda $10    ; PRG $0D37B
  $937D: 8d f2 7f    sta $7ff2    ; PRG $0D37D
  $9380: a5 11       lda $11    ; PRG $0D380
  $9382: 8d f3 7f    sta $7ff3    ; PRG $0D382
  $9385: a9 48       lda #$48    ; PRG $0D385
  $9387: 85 18       sta $18    ; PRG $0D387
  $9389: 86 19       stx $19    ; PRG $0D389
  $938B: ad f0 7f    lda $7ff0    ; PRG $0D38B
  $938E: 85 14       sta $14    ; PRG $0D38E
  $9390: ad f1 7f    lda $7ff1    ; PRG $0D390
  $9393: 85 15       sta $15    ; PRG $0D393
  $9395: a0 14       ldy #$14    ; PRG $0D395
  $9397: a2 18       ldx #$18    ; PRG $0D397
  $9399: a9 10       lda #$10    ; PRG $0D399
  $939B: 20 fd e1    jsr $e1fd   ; div16_unsigned    ; PRG $0D39B
  $939E: a5 10       lda $10    ; PRG $0D39E
  $93A0: 8d f0 7f    sta $7ff0    ; PRG $0D3A0
  $93A3: a5 11       lda $11    ; PRG $0D3A3
  $93A5: 8d f1 7f    sta $7ff1    ; PRG $0D3A5
  $93A8: 8a          txa    ; PRG $0D3A8
  $93A9: a0 fe       ldy #$fe    ; PRG $0D3A9
  $93AB: 91 06       sta ($06),y    ; PRG $0D3AB
  $93AD: c8          iny    ; PRG $0D3AD
  $93AE: 91 06       sta ($06),y    ; PRG $0D3AE
  $93B0: 4c c2 93    jmp $93c2    ; PRG $0D3B0
  $93B3: 18          clc    ; PRG $0D3B3
  $93B4: a9 01       lda #$01    ; PRG $0D3B4
  $93B6: a0 fe       ldy #$fe    ; PRG $0D3B6
  $93B8: 71 06       adc ($06),y    ; PRG $0D3B8
  $93BA: 91 06       sta ($06),y    ; PRG $0D3BA
  $93BC: 8a          txa    ; PRG $0D3BC
  $93BD: c8          iny    ; PRG $0D3BD
  $93BE: 71 06       adc ($06),y    ; PRG $0D3BE
  $93C0: 91 06       sta ($06),y    ; PRG $0D3C0
  $93C2: a0 fe       ldy #$fe    ; PRG $0D3C2
  $93C4: b1 06       lda ($06),y    ; PRG $0D3C4
  $93C6: c9 08       cmp #$08    ; PRG $0D3C6
  $93C8: c8          iny    ; PRG $0D3C8
  $93C9: b1 06       lda ($06),y    ; PRG $0D3C9
  $93CB: e9 00       sbc #$00    ; PRG $0D3CB
  $93CD: 90 03       bcc $93d2    ; PRG $0D3CD
  $93CF: 4c 5d 95    jmp $955d    ; PRG $0D3CF
  $93D2: ad f0 7f    lda $7ff0    ; PRG $0D3D2
  $93D5: 0d f1 7f    ora $7ff1    ; PRG $0D3D5
  $93D8: f0 03       beq $93dd    ; PRG $0D3D8
  $93DA: 4c 1f 94    jmp $941f    ; PRG $0D3DA
  $93DD: a9 01       lda #$01    ; PRG $0D3DD
  $93DF: 85 18       sta $18    ; PRG $0D3DF
  $93E1: 86 19       stx $19    ; PRG $0D3E1
  $93E3: 18          clc    ; PRG $0D3E3
  $93E4: a9 08       lda #$08    ; PRG $0D3E4
  $93E6: 88          dey    ; PRG $0D3E6
  $93E7: 71 06       adc ($06),y    ; PRG $0D3E7
  $93E9: 85 14       sta $14    ; PRG $0D3E9
  $93EB: 8a          txa    ; PRG $0D3EB
  $93EC: c8          iny    ; PRG $0D3EC
  $93ED: 71 06       adc ($06),y    ; PRG $0D3ED
  $93EF: 85 15       sta $15    ; PRG $0D3EF
  $93F1: a0 14       ldy #$14    ; PRG $0D3F1
  $93F3: a2 18       ldx #$18    ; PRG $0D3F3
  $93F5: a9 10       lda #$10    ; PRG $0D3F5
  $93F7: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0D3F7
  $93FA: 18          clc    ; PRG $0D3FA
  $93FB: a5 10       lda $10    ; PRG $0D3FB
  $93FD: 69 a2       adc #$a2    ; PRG $0D3FD
  $93FF: 85 18       sta $18    ; PRG $0D3FF
  $9401: a5 11       lda $11    ; PRG $0D401
  $9403: 69 99       adc #$99    ; PRG $0D403
  $9405: 85 19       sta $19    ; PRG $0D405
  $9407: 18          clc    ; PRG $0D407
  $9408: a1 18       lda ($18,x)    ; PRG $0D408
  $940A: 6d f4 7f    adc $7ff4    ; PRG $0D40A
  $940D: a0 fc       ldy #$fc    ; PRG $0D40D
  $940F: 91 06       sta ($06),y    ; PRG $0D40F
  $9411: a0 01       ldy #$01    ; PRG $0D411
  $9413: b1 18       lda ($18),y    ; PRG $0D413
  $9415: 6d f5 7f    adc $7ff5    ; PRG $0D415
  $9418: a0 fd       ldy #$fd    ; PRG $0D418
  $941A: 91 06       sta ($06),y    ; PRG $0D41A
  $941C: 4c af 94    jmp $94af    ; PRG $0D41C
  $941F: ad f0 7f    lda $7ff0    ; PRG $0D41F
  $9422: c9 47       cmp #$47    ; PRG $0D422
  $9424: d0 05       bne $942b    ; PRG $0D424
  $9426: ad f1 7f    lda $7ff1    ; PRG $0D426
  $9429: c9 00       cmp #$00    ; PRG $0D429
  $942B: f0 03       beq $9430    ; PRG $0D42B
  $942D: 4c 73 94    jmp $9473    ; PRG $0D42D
  $9430: a9 01       lda #$01    ; PRG $0D430
  $9432: 85 18       sta $18    ; PRG $0D432
  $9434: 86 19       stx $19    ; PRG $0D434
  $9436: 18          clc    ; PRG $0D436
  $9437: a9 10       lda #$10    ; PRG $0D437
  $9439: a0 fe       ldy #$fe    ; PRG $0D439
  $943B: 71 06       adc ($06),y    ; PRG $0D43B
  $943D: 85 14       sta $14    ; PRG $0D43D
  $943F: 8a          txa    ; PRG $0D43F
  $9440: c8          iny    ; PRG $0D440
  $9441: 71 06       adc ($06),y    ; PRG $0D441
  $9443: 85 15       sta $15    ; PRG $0D443
  $9445: a0 14       ldy #$14    ; PRG $0D445
  $9447: a2 18       ldx #$18    ; PRG $0D447
  $9449: a9 10       lda #$10    ; PRG $0D449
  $944B: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0D44B
  $944E: 18          clc    ; PRG $0D44E
  $944F: a5 10       lda $10    ; PRG $0D44F
  $9451: 69 a2       adc #$a2    ; PRG $0D451
  $9453: 85 18       sta $18    ; PRG $0D453
  $9455: a5 11       lda $11    ; PRG $0D455
  $9457: 69 99       adc #$99    ; PRG $0D457
  $9459: 85 19       sta $19    ; PRG $0D459
  $945B: 18          clc    ; PRG $0D45B
  $945C: a1 18       lda ($18,x)    ; PRG $0D45C
  $945E: 6d f4 7f    adc $7ff4    ; PRG $0D45E
  $9461: a0 fc       ldy #$fc    ; PRG $0D461
  $9463: 91 06       sta ($06),y    ; PRG $0D463
  $9465: a0 01       ldy #$01    ; PRG $0D465
  $9467: b1 18       lda ($18),y    ; PRG $0D467
  $9469: 6d f5 7f    adc $7ff5    ; PRG $0D469
  $946C: a0 fd       ldy #$fd    ; PRG $0D46C
  $946E: 91 06       sta ($06),y    ; PRG $0D46E
  $9470: 4c af 94    jmp $94af    ; PRG $0D470
  $9473: a9 01       lda #$01    ; PRG $0D473
  $9475: 85 18       sta $18    ; PRG $0D475
  $9477: 86 19       stx $19    ; PRG $0D477
  $9479: a0 fe       ldy #$fe    ; PRG $0D479
  $947B: b1 06       lda ($06),y    ; PRG $0D47B
  $947D: 85 14       sta $14    ; PRG $0D47D
  $947F: c8          iny    ; PRG $0D47F
  $9480: b1 06       lda ($06),y    ; PRG $0D480
  $9482: 85 15       sta $15    ; PRG $0D482
  $9484: a0 14       ldy #$14    ; PRG $0D484
  $9486: a2 18       ldx #$18    ; PRG $0D486
  $9488: a9 10       lda #$10    ; PRG $0D488
  $948A: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0D48A
  $948D: 18          clc    ; PRG $0D48D
  $948E: a5 10       lda $10    ; PRG $0D48E
  $9490: 69 a2       adc #$a2    ; PRG $0D490
  $9492: 85 18       sta $18    ; PRG $0D492
  $9494: a5 11       lda $11    ; PRG $0D494
  $9496: 69 99       adc #$99    ; PRG $0D496
  $9498: 85 19       sta $19    ; PRG $0D498
  $949A: 18          clc    ; PRG $0D49A
  $949B: a1 18       lda ($18,x)    ; PRG $0D49B
  $949D: 6d f4 7f    adc $7ff4    ; PRG $0D49D
  $94A0: a0 fc       ldy #$fc    ; PRG $0D4A0
  $94A2: 91 06       sta ($06),y    ; PRG $0D4A2
  $94A4: a0 01       ldy #$01    ; PRG $0D4A4
  $94A6: b1 18       lda ($18),y    ; PRG $0D4A6
  $94A8: 6d f5 7f    adc $7ff5    ; PRG $0D4A8
  $94AB: a0 fd       ldy #$fd    ; PRG $0D4AB
  $94AD: 91 06       sta ($06),y    ; PRG $0D4AD
  $94AF: a0 fc       ldy #$fc    ; PRG $0D4AF
  $94B1: b1 06       lda ($06),y    ; PRG $0D4B1
  $94B3: c9 90       cmp #$90    ; PRG $0D4B3
  $94B5: c8          iny    ; PRG $0D4B5
  $94B6: b1 06       lda ($06),y    ; PRG $0D4B6
  $94B8: e9 73       sbc #$73    ; PRG $0D4B8
  $94BA: b0 03       bcs $94bf    ; PRG $0D4BA
  $94BC: 4c ce 94    jmp $94ce    ; PRG $0D4BC
  $94BF: a9 af       lda #$af    ; PRG $0D4BF
  $94C1: 88          dey    ; PRG $0D4C1
  $94C2: d1 06       cmp ($06),y    ; PRG $0D4C2
  $94C4: a9 7d       lda #$7d    ; PRG $0D4C4
  $94C6: c8          iny    ; PRG $0D4C6
  $94C7: f1 06       sbc ($06),y    ; PRG $0D4C7
  $94C9: 90 03       bcc $94ce    ; PRG $0D4C9
  $94CB: 4c d1 94    jmp $94d1    ; PRG $0D4CB
  $94CE: 4c b3 93    jmp $93b3    ; PRG $0D4CE
  $94D1: a0 fc       ldy #$fc    ; PRG $0D4D1
  $94D3: b1 06       lda ($06),y    ; PRG $0D4D3
  $94D5: 85 18       sta $18    ; PRG $0D4D5
  $94D7: c8          iny    ; PRG $0D4D7
  $94D8: b1 06       lda ($06),y    ; PRG $0D4D8
  $94DA: 85 19       sta $19    ; PRG $0D4DA
  $94DC: a1 18       lda ($18,x)    ; PRG $0D4DC
  $94DE: 85 14       sta $14    ; PRG $0D4DE
  $94E0: 86 15       stx $15    ; PRG $0D4E0
  $94E2: a5 14       lda $14    ; PRG $0D4E2
  $94E4: c9 fe       cmp #$fe    ; PRG $0D4E4
  $94E6: d0 04       bne $94ec    ; PRG $0D4E6
  $94E8: a5 15       lda $15    ; PRG $0D4E8
  $94EA: c9 00       cmp #$00    ; PRG $0D4EA
  $94EC: f0 03       beq $94f1    ; PRG $0D4EC
  $94EE: 4c 5a 95    jmp $955a    ; PRG $0D4EE
  $94F1: a0 fc       ldy #$fc    ; PRG $0D4F1
  $94F3: b1 06       lda ($06),y    ; PRG $0D4F3
  $94F5: a0 fa       ldy #$fa    ; PRG $0D4F5
  $94F7: d1 06       cmp ($06),y    ; PRG $0D4F7
  $94F9: d0 08       bne $9503    ; PRG $0D4F9
  $94FB: a0 fd       ldy #$fd    ; PRG $0D4FB
  $94FD: b1 06       lda ($06),y    ; PRG $0D4FD
  $94FF: a0 fb       ldy #$fb    ; PRG $0D4FF
  $9501: d1 06       cmp ($06),y    ; PRG $0D501
  $9503: f0 03       beq $9508    ; PRG $0D503
  $9505: 4c 09 95    jmp $9509    ; PRG $0D505
  $9508: 60          rts    ; PRG $0D508
  $9509: a0 fc       ldy #$fc    ; PRG $0D509
  $950B: b1 06       lda ($06),y    ; PRG $0D50B
  $950D: 85 18       sta $18    ; PRG $0D50D
  $950F: c8          iny    ; PRG $0D50F
  $9510: b1 06       lda ($06),y    ; PRG $0D510
  $9512: 85 19       sta $19    ; PRG $0D512
  $9514: a0 f9       ldy #$f9    ; PRG $0D514
  $9516: b1 06       lda ($06),y    ; PRG $0D516
  $9518: 81 18       sta ($18,x)    ; PRG $0D518
  $951A: 18          clc    ; PRG $0D51A
  $951B: a0 f5       ldy #$f5    ; PRG $0D51B
  $951D: b1 06       lda ($06),y    ; PRG $0D51D
  $951F: 85 18       sta $18    ; PRG $0D51F
  $9521: 69 02       adc #$02    ; PRG $0D521
  $9523: 91 06       sta ($06),y    ; PRG $0D523
  $9525: c8          iny    ; PRG $0D525
  $9526: b1 06       lda ($06),y    ; PRG $0D526
  $9528: 85 19       sta $19    ; PRG $0D528
  $952A: 69 00       adc #$00    ; PRG $0D52A
  $952C: 91 06       sta ($06),y    ; PRG $0D52C
  $952E: 38          sec    ; PRG $0D52E
  $952F: a0 fc       ldy #$fc    ; PRG $0D52F
  $9531: b1 06       lda ($06),y    ; PRG $0D531
  $9533: e9 90       sbc #$90    ; PRG $0D533
  $9535: 81 18       sta ($18,x)    ; PRG $0D535
  $9537: c8          iny    ; PRG $0D537
  $9538: b1 06       lda ($06),y    ; PRG $0D538
  $953A: e9 73       sbc #$73    ; PRG $0D53A
  $953C: a0 01       ldy #$01    ; PRG $0D53C
  $953E: 91 18       sta ($18),y    ; PRG $0D53E
  $9540: a0 f5       ldy #$f5    ; PRG $0D540
  $9542: b1 06       lda ($06),y    ; PRG $0D542
  $9544: c9 f0       cmp #$f0    ; PRG $0D544
  $9546: c8          iny    ; PRG $0D546
  $9547: b1 06       lda ($06),y    ; PRG $0D547
  $9549: e9 7f       sbc #$7f    ; PRG $0D549
  $954B: b0 03       bcs $9550    ; PRG $0D54B
  $954D: 4c 5a 95    jmp $955a    ; PRG $0D54D
  $9550: a9 b0       lda #$b0    ; PRG $0D550
  $9552: 88          dey    ; PRG $0D552
  $9553: 91 06       sta ($06),y    ; PRG $0D553
  $9555: a9 7d       lda #$7d    ; PRG $0D555
  $9557: c8          iny    ; PRG $0D557
  $9558: 91 06       sta ($06),y    ; PRG $0D558
  $955A: 4c b3 93    jmp $93b3    ; PRG $0D55A
  $955D: 4c de 92    jmp $92de    ; PRG $0D55D
  $9560: 60          rts    ; PRG $0D560

; ---- sub_6_1567  [stub]  <- (entry: bytecode/OS via $E299)
nat_6_1561: jsr $E299                    ; 6:9561  native-call prologue
            .db $00 $f0 $ff            ; inline: argcount $00, frame $fff0
  $9567: a0 12       ldy #$12    ; PRG $0D567
  $9569: b1 04       lda ($04),y    ; PRG $0D569
  $956B: 48          pha    ; PRG $0D56B
  $956C: 88          dey    ; PRG $0D56C
  $956D: b1 04       lda ($04),y    ; PRG $0D56D
  $956F: 48          pha    ; PRG $0D56F
  $9570: 88          dey    ; PRG $0D570
  $9571: b1 04       lda ($04),y    ; PRG $0D571
  $9573: 48          pha    ; PRG $0D573
  $9574: 88          dey    ; PRG $0D574
  $9575: b1 04       lda ($04),y    ; PRG $0D575
  $9577: 48          pha    ; PRG $0D577
  $9578: 88          dey    ; PRG $0D578
  $9579: b1 04       lda ($04),y    ; PRG $0D579
  $957B: 48          pha    ; PRG $0D57B
  $957C: 88          dey    ; PRG $0D57C
  $957D: b1 04       lda ($04),y    ; PRG $0D57D
  $957F: 48          pha    ; PRG $0D57F
  $9580: 88          dey    ; PRG $0D580
  $9581: b1 04       lda ($04),y    ; PRG $0D581
  $9583: 48          pha    ; PRG $0D583
  $9584: 88          dey    ; PRG $0D584
  $9585: b1 04       lda ($04),y    ; PRG $0D585
  $9587: 48          pha    ; PRG $0D587
  $9588: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0D588
  $958B: 0e 92 0a    .db $0e $92 $0a  -> vm $920E argc 10    ; PRG $0D58B
  $958E: a0 fa       ldy #$fa    ; PRG $0D58E
  $9590: 91 06       sta ($06),y    ; PRG $0D590
  $9592: c8          iny    ; PRG $0D592
  $9593: 91 06       sta ($06),y    ; PRG $0D593
  $9595: a9 ff       lda #$ff    ; PRG $0D595
  $9597: c8          iny    ; PRG $0D597
  $9598: 91 06       sta ($06),y    ; PRG $0D598
  $959A: 8a          txa    ; PRG $0D59A
  $959B: c8          iny    ; PRG $0D59B
  $959C: 91 06       sta ($06),y    ; PRG $0D59C
  $959E: a9 48       lda #$48    ; PRG $0D59E
  $95A0: 85 18       sta $18    ; PRG $0D5A0
  $95A2: 86 19       stx $19    ; PRG $0D5A2
  $95A4: a0 0d       ldy #$0d    ; PRG $0D5A4
  $95A6: b1 04       lda ($04),y    ; PRG $0D5A6
  $95A8: 85 14       sta $14    ; PRG $0D5A8
  $95AA: c8          iny    ; PRG $0D5AA
  $95AB: b1 04       lda ($04),y    ; PRG $0D5AB
  $95AD: 85 15       sta $15    ; PRG $0D5AD
  $95AF: a0 14       ldy #$14    ; PRG $0D5AF
  $95B1: a2 18       ldx #$18    ; PRG $0D5B1
  $95B3: a9 10       lda #$10    ; PRG $0D5B3
  $95B5: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0D5B5
  $95B8: 18          clc    ; PRG $0D5B8
  $95B9: a5 10       lda $10    ; PRG $0D5B9
  $95BB: a0 0b       ldy #$0b    ; PRG $0D5BB
  $95BD: 71 04       adc ($04),y    ; PRG $0D5BD
  $95BF: 85 18       sta $18    ; PRG $0D5BF
  $95C1: a5 11       lda $11    ; PRG $0D5C1
  $95C3: c8          iny    ; PRG $0D5C3
  $95C4: 71 04       adc ($04),y    ; PRG $0D5C4
  $95C6: 85 19       sta $19    ; PRG $0D5C6
  $95C8: 18          clc    ; PRG $0D5C8
  $95C9: a5 18       lda $18    ; PRG $0D5C9
  $95CB: 69 90       adc #$90    ; PRG $0D5CB
  $95CD: 85 14       sta $14    ; PRG $0D5CD
  $95CF: a5 19       lda $19    ; PRG $0D5CF
  $95D1: 69 73       adc #$73    ; PRG $0D5D1
  $95D3: 85 15       sta $15    ; PRG $0D5D3
  $95D5: a1 14       lda ($14,x)    ; PRG $0D5D5
  $95D7: 85 18       sta $18    ; PRG $0D5D7
  $95D9: 86 19       stx $19    ; PRG $0D5D9
  $95DB: a5 18       lda $18    ; PRG $0D5DB
  $95DD: 05 19       ora $19    ; PRG $0D5DD
  $95DF: d0 03       bne $95e4    ; PRG $0D5DF
  $95E1: 4c 68 97    jmp $9768    ; PRG $0D5E1
  $95E4: 8a          txa    ; PRG $0D5E4
  $95E5: a0 f8       ldy #$f8    ; PRG $0D5E5
  $95E7: 91 06       sta ($06),y    ; PRG $0D5E7
  $95E9: c8          iny    ; PRG $0D5E9
  $95EA: 91 06       sta ($06),y    ; PRG $0D5EA
  $95EC: 4c fe 95    jmp $95fe    ; PRG $0D5EC
  $95EF: 18          clc    ; PRG $0D5EF
  $95F0: a9 01       lda #$01    ; PRG $0D5F0
  $95F2: a0 f8       ldy #$f8    ; PRG $0D5F2
  $95F4: 71 06       adc ($06),y    ; PRG $0D5F4
  $95F6: 91 06       sta ($06),y    ; PRG $0D5F6
  $95F8: 8a          txa    ; PRG $0D5F8
  $95F9: c8          iny    ; PRG $0D5F9
  $95FA: 71 06       adc ($06),y    ; PRG $0D5FA
  $95FC: 91 06       sta ($06),y    ; PRG $0D5FC
  $95FE: a0 f8       ldy #$f8    ; PRG $0D5FE
  $9600: b1 06       lda ($06),y    ; PRG $0D600
  $9602: c9 08       cmp #$08    ; PRG $0D602
  $9604: c8          iny    ; PRG $0D604
  $9605: b1 06       lda ($06),y    ; PRG $0D605
  $9607: e9 00       sbc #$00    ; PRG $0D607
  $9609: 70 04       bvs $960f    ; PRG $0D609
  $960B: 30 07       bmi $9614    ; PRG $0D60B
  $960D: 10 02       bpl $9611    ; PRG $0D60D
  $960F: 10 03       bpl $9614    ; PRG $0D60F
  $9611: 4c f1 96    jmp $96f1    ; PRG $0D611
  $9614: a0 0b       ldy #$0b    ; PRG $0D614
  $9616: b1 04       lda ($04),y    ; PRG $0D616
  $9618: a0 f2       ldy #$f2    ; PRG $0D618
  $961A: 91 06       sta ($06),y    ; PRG $0D61A
  $961C: a0 0c       ldy #$0c    ; PRG $0D61C
  $961E: b1 04       lda ($04),y    ; PRG $0D61E
  $9620: a0 f3       ldy #$f3    ; PRG $0D620
  $9622: 91 06       sta ($06),y    ; PRG $0D622
  $9624: a0 0d       ldy #$0d    ; PRG $0D624
  $9626: b1 04       lda ($04),y    ; PRG $0D626
  $9628: a0 f0       ldy #$f0    ; PRG $0D628
  $962A: 91 06       sta ($06),y    ; PRG $0D62A
  $962C: a0 0e       ldy #$0e    ; PRG $0D62C
  $962E: b1 04       lda ($04),y    ; PRG $0D62E
  $9630: a0 f1       ldy #$f1    ; PRG $0D630
  $9632: 91 06       sta ($06),y    ; PRG $0D632
  $9634: a0 f9       ldy #$f9    ; PRG $0D634
  $9636: b1 06       lda ($06),y    ; PRG $0D636
  $9638: 48          pha    ; PRG $0D638
  $9639: 88          dey    ; PRG $0D639
  $963A: b1 06       lda ($06),y    ; PRG $0D63A
  $963C: 48          pha    ; PRG $0D63C
  $963D: 18          clc    ; PRG $0D63D
  $963E: a9 f0       lda #$f0    ; PRG $0D63E
  $9640: 65 06       adc $06    ; PRG $0D640
  $9642: 85 18       sta $18    ; PRG $0D642
  $9644: 8a          txa    ; PRG $0D644
  $9645: 65 07       adc $07    ; PRG $0D645
  $9647: 85 19       sta $19    ; PRG $0D647
  $9649: a5 19       lda $19    ; PRG $0D649
  $964B: 48          pha    ; PRG $0D64B
  $964C: a5 18       lda $18    ; PRG $0D64C
  $964E: 48          pha    ; PRG $0D64E
  $964F: 18          clc    ; PRG $0D64F
  $9650: a9 f2       lda #$f2    ; PRG $0D650
  $9652: 65 06       adc $06    ; PRG $0D652
  $9654: 85 18       sta $18    ; PRG $0D654
  $9656: 8a          txa    ; PRG $0D656
  $9657: 65 07       adc $07    ; PRG $0D657
  $9659: 85 19       sta $19    ; PRG $0D659
  $965B: a5 19       lda $19    ; PRG $0D65B
  $965D: 48          pha    ; PRG $0D65D
  $965E: a5 18       lda $18    ; PRG $0D65E
  $9660: 48          pha    ; PRG $0D660
  $9661: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0D661
  $9664: e4 98 08    .db $e4 $98 $08  -> vm $98E4 argc 8    ; PRG $0D664
  $9667: a9 48       lda #$48    ; PRG $0D667
  $9669: 85 18       sta $18    ; PRG $0D669
  $966B: 86 19       stx $19    ; PRG $0D66B
  $966D: a0 f0       ldy #$f0    ; PRG $0D66D
  $966F: b1 06       lda ($06),y    ; PRG $0D66F
  $9671: 85 14       sta $14    ; PRG $0D671
  $9673: c8          iny    ; PRG $0D673
  $9674: b1 06       lda ($06),y    ; PRG $0D674
  $9676: 85 15       sta $15    ; PRG $0D676
  $9678: a0 14       ldy #$14    ; PRG $0D678
  $967A: a2 18       ldx #$18    ; PRG $0D67A
  $967C: a9 10       lda #$10    ; PRG $0D67C
  $967E: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0D67E
  $9681: 18          clc    ; PRG $0D681
  $9682: a5 10       lda $10    ; PRG $0D682
  $9684: a0 f2       ldy #$f2    ; PRG $0D684
  $9686: 71 06       adc ($06),y    ; PRG $0D686
  $9688: 85 18       sta $18    ; PRG $0D688
  $968A: a5 11       lda $11    ; PRG $0D68A
  $968C: c8          iny    ; PRG $0D68C
  $968D: 71 06       adc ($06),y    ; PRG $0D68D
  $968F: 85 19       sta $19    ; PRG $0D68F
  $9691: 18          clc    ; PRG $0D691
  $9692: a5 18       lda $18    ; PRG $0D692
  $9694: 69 90       adc #$90    ; PRG $0D694
  $9696: 85 14       sta $14    ; PRG $0D696
  $9698: a5 19       lda $19    ; PRG $0D698
  $969A: 69 73       adc #$73    ; PRG $0D69A
  $969C: 85 15       sta $15    ; PRG $0D69C
  $969E: a1 14       lda ($14,x)    ; PRG $0D69E
  $96A0: 85 18       sta $18    ; PRG $0D6A0
  $96A2: 86 19       stx $19    ; PRG $0D6A2
  $96A4: a5 18       lda $18    ; PRG $0D6A4
  $96A6: a0 fe       ldy #$fe    ; PRG $0D6A6
  $96A8: 91 06       sta ($06),y    ; PRG $0D6A8
  $96AA: a5 19       lda $19    ; PRG $0D6AA
  $96AC: c8          iny    ; PRG $0D6AC
  $96AD: 91 06       sta ($06),y    ; PRG $0D6AD
  $96AF: a5 18       lda $18    ; PRG $0D6AF
  $96B1: a0 fc       ldy #$fc    ; PRG $0D6B1
  $96B3: d1 06       cmp ($06),y    ; PRG $0D6B3
  $96B5: a5 19       lda $19    ; PRG $0D6B5
  $96B7: c8          iny    ; PRG $0D6B7
  $96B8: f1 06       sbc ($06),y    ; PRG $0D6B8
  $96BA: 90 03       bcc $96bf    ; PRG $0D6BA
  $96BC: 4c ee 96    jmp $96ee    ; PRG $0D6BC
  $96BF: c8          iny    ; PRG $0D6BF
  $96C0: b1 06       lda ($06),y    ; PRG $0D6C0
  $96C2: a0 fc       ldy #$fc    ; PRG $0D6C2
  $96C4: 91 06       sta ($06),y    ; PRG $0D6C4
  $96C6: a0 ff       ldy #$ff    ; PRG $0D6C6
  $96C8: b1 06       lda ($06),y    ; PRG $0D6C8
  $96CA: a0 fd       ldy #$fd    ; PRG $0D6CA
  $96CC: 91 06       sta ($06),y    ; PRG $0D6CC
  $96CE: a0 f2       ldy #$f2    ; PRG $0D6CE
  $96D0: b1 06       lda ($06),y    ; PRG $0D6D0
  $96D2: a0 f6       ldy #$f6    ; PRG $0D6D2
  $96D4: 91 06       sta ($06),y    ; PRG $0D6D4
  $96D6: a0 f3       ldy #$f3    ; PRG $0D6D6
  $96D8: b1 06       lda ($06),y    ; PRG $0D6D8
  $96DA: a0 f7       ldy #$f7    ; PRG $0D6DA
  $96DC: 91 06       sta ($06),y    ; PRG $0D6DC
  $96DE: a0 f0       ldy #$f0    ; PRG $0D6DE
  $96E0: b1 06       lda ($06),y    ; PRG $0D6E0
  $96E2: a0 f4       ldy #$f4    ; PRG $0D6E2
  $96E4: 91 06       sta ($06),y    ; PRG $0D6E4
  $96E6: a0 f1       ldy #$f1    ; PRG $0D6E6
  $96E8: b1 06       lda ($06),y    ; PRG $0D6E8
  $96EA: a0 f5       ldy #$f5    ; PRG $0D6EA
  $96EC: 91 06       sta ($06),y    ; PRG $0D6EC
  $96EE: 4c ef 95    jmp $95ef    ; PRG $0D6EE
  $96F1: 18          clc    ; PRG $0D6F1
  $96F2: a0 13       ldy #$13    ; PRG $0D6F2
  $96F4: b1 04       lda ($04),y    ; PRG $0D6F4
  $96F6: 85 18       sta $18    ; PRG $0D6F6
  $96F8: 69 01       adc #$01    ; PRG $0D6F8
  $96FA: 91 04       sta ($04),y    ; PRG $0D6FA
  $96FC: c8          iny    ; PRG $0D6FC
  $96FD: b1 04       lda ($04),y    ; PRG $0D6FD
  $96FF: 85 19       sta $19    ; PRG $0D6FF
  $9701: 69 00       adc #$00    ; PRG $0D701
  $9703: 91 04       sta ($04),y    ; PRG $0D703
  $9705: a0 f6       ldy #$f6    ; PRG $0D705
  $9707: b1 06       lda ($06),y    ; PRG $0D707
  $9709: a0 0b       ldy #$0b    ; PRG $0D709
  $970B: 91 04       sta ($04),y    ; PRG $0D70B
  $970D: a0 f7       ldy #$f7    ; PRG $0D70D
  $970F: b1 06       lda ($06),y    ; PRG $0D70F
  $9711: a0 0c       ldy #$0c    ; PRG $0D711
  $9713: 91 04       sta ($04),y    ; PRG $0D713
  $9715: a0 f6       ldy #$f6    ; PRG $0D715
  $9717: b1 06       lda ($06),y    ; PRG $0D717
  $9719: 81 18       sta ($18,x)    ; PRG $0D719
  $971B: 18          clc    ; PRG $0D71B
  $971C: a0 13       ldy #$13    ; PRG $0D71C
  $971E: b1 04       lda ($04),y    ; PRG $0D71E
  $9720: 85 18       sta $18    ; PRG $0D720
  $9722: 69 01       adc #$01    ; PRG $0D722
  $9724: 91 04       sta ($04),y    ; PRG $0D724
  $9726: c8          iny    ; PRG $0D726
  $9727: b1 04       lda ($04),y    ; PRG $0D727
  $9729: 85 19       sta $19    ; PRG $0D729
  $972B: 69 00       adc #$00    ; PRG $0D72B
  $972D: 91 04       sta ($04),y    ; PRG $0D72D
  $972F: a0 f4       ldy #$f4    ; PRG $0D72F
  $9731: b1 06       lda ($06),y    ; PRG $0D731
  $9733: a0 0d       ldy #$0d    ; PRG $0D733
  $9735: 91 04       sta ($04),y    ; PRG $0D735
  $9737: a0 f5       ldy #$f5    ; PRG $0D737
  $9739: b1 06       lda ($06),y    ; PRG $0D739
  $973B: a0 0e       ldy #$0e    ; PRG $0D73B
  $973D: 91 04       sta ($04),y    ; PRG $0D73D
  $973F: a0 f4       ldy #$f4    ; PRG $0D73F
  $9741: b1 06       lda ($06),y    ; PRG $0D741
  $9743: 81 18       sta ($18,x)    ; PRG $0D743
  $9745: 18          clc    ; PRG $0D745
  $9746: a9 01       lda #$01    ; PRG $0D746
  $9748: a0 fa       ldy #$fa    ; PRG $0D748
  $974A: 71 06       adc ($06),y    ; PRG $0D74A
  $974C: 91 06       sta ($06),y    ; PRG $0D74C
  $974E: 8a          txa    ; PRG $0D74E
  $974F: c8          iny    ; PRG $0D74F
  $9750: 71 06       adc ($06),y    ; PRG $0D750
  $9752: 91 06       sta ($06),y    ; PRG $0D752
  $9754: a9 13       lda #$13    ; PRG $0D754
  $9756: 88          dey    ; PRG $0D756
  $9757: d1 06       cmp ($06),y    ; PRG $0D757
  $9759: 8a          txa    ; PRG $0D759
  $975A: c8          iny    ; PRG $0D75A
  $975B: f1 06       sbc ($06),y    ; PRG $0D75B
  $975D: 90 03       bcc $9762    ; PRG $0D75D
  $975F: 4c 65 97    jmp $9765    ; PRG $0D75F
  $9762: 4c 68 97    jmp $9768    ; PRG $0D762
  $9765: 4c 9e 95    jmp $959e    ; PRG $0D765
  $9768: a0 13       ldy #$13    ; PRG $0D768
  $976A: b1 04       lda ($04),y    ; PRG $0D76A
  $976C: 85 18       sta $18    ; PRG $0D76C
  $976E: c8          iny    ; PRG $0D76E
  $976F: b1 04       lda ($04),y    ; PRG $0D76F
  $9771: 85 19       sta $19    ; PRG $0D771
  $9773: a9 ff       lda #$ff    ; PRG $0D773
  $9775: 81 18       sta ($18,x)    ; PRG $0D775
  $9777: 60          rts    ; PRG $0D777

; ---- sub_6_177e  [stub]  <- (entry: bytecode/OS via $E299)
nat_6_1778: jsr $E299                    ; 6:9778  native-call prologue
            .db $00 $fc $ff            ; inline: argcount $00, frame $fffc
  $977E: a9 04       lda #$04    ; PRG $0D77E
  $9780: 85 18       sta $18    ; PRG $0D780
  $9782: 86 19       stx $19    ; PRG $0D782
  $9784: a0 0b       ldy #$0b    ; PRG $0D784
  $9786: b1 04       lda ($04),y    ; PRG $0D786
  $9788: 85 14       sta $14    ; PRG $0D788
  $978A: c8          iny    ; PRG $0D78A
  $978B: b1 04       lda ($04),y    ; PRG $0D78B
  $978D: 85 15       sta $15    ; PRG $0D78D
  $978F: a0 14       ldy #$14    ; PRG $0D78F
  $9791: a2 18       ldx #$18    ; PRG $0D791
  $9793: a9 10       lda #$10    ; PRG $0D793
  $9795: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0D795
  $9798: 18          clc    ; PRG $0D798
  $9799: a5 10       lda $10    ; PRG $0D799
  $979B: 69 62       adc #$62    ; PRG $0D79B
  $979D: a0 fc       ldy #$fc    ; PRG $0D79D
  $979F: 91 06       sta ($06),y    ; PRG $0D79F
  $97A1: a5 11       lda $11    ; PRG $0D7A1
  $97A3: 69 66       adc #$66    ; PRG $0D7A3
  $97A5: c8          iny    ; PRG $0D7A5
  $97A6: 91 06       sta ($06),y    ; PRG $0D7A6
  $97A8: a9 33       lda #$33    ; PRG $0D7A8
  $97AA: 85 18       sta $18    ; PRG $0D7AA
  $97AC: 86 19       stx $19    ; PRG $0D7AC
  $97AE: 18          clc    ; PRG $0D7AE
  $97AF: a9 ff       lda #$ff    ; PRG $0D7AF
  $97B1: a0 0b       ldy #$0b    ; PRG $0D7B1
  $97B3: 71 04       adc ($04),y    ; PRG $0D7B3
  $97B5: 85 14       sta $14    ; PRG $0D7B5
  $97B7: a9 ff       lda #$ff    ; PRG $0D7B7
  $97B9: c8          iny    ; PRG $0D7B9
  $97BA: 71 04       adc ($04),y    ; PRG $0D7BA
  $97BC: 85 15       sta $15    ; PRG $0D7BC
  $97BE: a0 14       ldy #$14    ; PRG $0D7BE
  $97C0: a2 18       ldx #$18    ; PRG $0D7C0
  $97C2: a9 10       lda #$10    ; PRG $0D7C2
  $97C4: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0D7C4
  $97C7: 18          clc    ; PRG $0D7C7
  $97C8: a5 10       lda $10    ; PRG $0D7C8
  $97CA: 69 04       adc #$04    ; PRG $0D7CA
  $97CC: a0 fe       ldy #$fe    ; PRG $0D7CC
  $97CE: 91 06       sta ($06),y    ; PRG $0D7CE
  $97D0: a5 11       lda $11    ; PRG $0D7D0
  $97D2: 69 60       adc #$60    ; PRG $0D7D2
  $97D4: c8          iny    ; PRG $0D7D4
  $97D5: 91 06       sta ($06),y    ; PRG $0D7D5
  $97D7: a0 fc       ldy #$fc    ; PRG $0D7D7
  $97D9: b1 06       lda ($06),y    ; PRG $0D7D9
  $97DB: 85 18       sta $18    ; PRG $0D7DB
  $97DD: c8          iny    ; PRG $0D7DD
  $97DE: b1 06       lda ($06),y    ; PRG $0D7DE
  $97E0: 85 19       sta $19    ; PRG $0D7E0
  $97E2: a1 18       lda ($18,x)    ; PRG $0D7E2
  $97E4: 85 14       sta $14    ; PRG $0D7E4
  $97E6: 86 15       stx $15    ; PRG $0D7E6
  $97E8: a5 14       lda $14    ; PRG $0D7E8
  $97EA: a0 0d       ldy #$0d    ; PRG $0D7EA
  $97EC: d1 04       cmp ($04),y    ; PRG $0D7EC
  $97EE: d0 05       bne $97f5    ; PRG $0D7EE
  $97F0: a5 15       lda $15    ; PRG $0D7F0
  $97F2: c8          iny    ; PRG $0D7F2
  $97F3: d1 04       cmp ($04),y    ; PRG $0D7F3
  $97F5: f0 03       beq $97fa    ; PRG $0D7F5
  $97F7: 4c 1f 98    jmp $981f    ; PRG $0D7F7
  $97FA: a0 fc       ldy #$fc    ; PRG $0D7FA
  $97FC: b1 06       lda ($06),y    ; PRG $0D7FC
  $97FE: 85 18       sta $18    ; PRG $0D7FE
  $9800: c8          iny    ; PRG $0D800
  $9801: b1 06       lda ($06),y    ; PRG $0D801
  $9803: 85 19       sta $19    ; PRG $0D803
  $9805: a0 01       ldy #$01    ; PRG $0D805
  $9807: b1 18       lda ($18),y    ; PRG $0D807
  $9809: 85 14       sta $14    ; PRG $0D809
  $980B: 86 15       stx $15    ; PRG $0D80B
  $980D: a5 14       lda $14    ; PRG $0D80D
  $980F: a0 0f       ldy #$0f    ; PRG $0D80F
  $9811: d1 04       cmp ($04),y    ; PRG $0D811
  $9813: d0 05       bne $981a    ; PRG $0D813
  $9815: a5 15       lda $15    ; PRG $0D815
  $9817: c8          iny    ; PRG $0D817
  $9818: d1 04       cmp ($04),y    ; PRG $0D818
  $981A: d0 03       bne $981f    ; PRG $0D81A
  $981C: 4c 7b 98    jmp $987b    ; PRG $0D81C
  $981F: 18          clc    ; PRG $0D81F
  $9820: a9 09       lda #$09    ; PRG $0D820
  $9822: a0 fe       ldy #$fe    ; PRG $0D822
  $9824: 71 06       adc ($06),y    ; PRG $0D824
  $9826: 85 18       sta $18    ; PRG $0D826
  $9828: 8a          txa    ; PRG $0D828
  $9829: c8          iny    ; PRG $0D829
  $982A: 71 06       adc ($06),y    ; PRG $0D82A
  $982C: 85 19       sta $19    ; PRG $0D82C
  $982E: a5 19       lda $19    ; PRG $0D82E
  $9830: 48          pha    ; PRG $0D830
  $9831: a5 18       lda $18    ; PRG $0D831
  $9833: 48          pha    ; PRG $0D833
  $9834: a0 10       ldy #$10    ; PRG $0D834
  $9836: b1 04       lda ($04),y    ; PRG $0D836
  $9838: 48          pha    ; PRG $0D838
  $9839: 88          dey    ; PRG $0D839
  $983A: b1 04       lda ($04),y    ; PRG $0D83A
  $983C: 48          pha    ; PRG $0D83C
  $983D: 88          dey    ; PRG $0D83D
  $983E: b1 04       lda ($04),y    ; PRG $0D83E
  $9840: 48          pha    ; PRG $0D840
  $9841: 88          dey    ; PRG $0D841
  $9842: b1 04       lda ($04),y    ; PRG $0D842
  $9844: 48          pha    ; PRG $0D844
  $9845: a0 fc       ldy #$fc    ; PRG $0D845
  $9847: b1 06       lda ($06),y    ; PRG $0D847
  $9849: 85 18       sta $18    ; PRG $0D849
  $984B: c8          iny    ; PRG $0D84B
  $984C: b1 06       lda ($06),y    ; PRG $0D84C
  $984E: 85 19       sta $19    ; PRG $0D84E
  $9850: a0 01       ldy #$01    ; PRG $0D850
  $9852: b1 18       lda ($18),y    ; PRG $0D852
  $9854: 85 14       sta $14    ; PRG $0D854
  $9856: 86 15       stx $15    ; PRG $0D856
  $9858: a5 15       lda $15    ; PRG $0D858
  $985A: 48          pha    ; PRG $0D85A
  $985B: a5 14       lda $14    ; PRG $0D85B
  $985D: 48          pha    ; PRG $0D85D
  $985E: a0 fc       ldy #$fc    ; PRG $0D85E
  $9860: b1 06       lda ($06),y    ; PRG $0D860
  $9862: 85 18       sta $18    ; PRG $0D862
  $9864: c8          iny    ; PRG $0D864
  $9865: b1 06       lda ($06),y    ; PRG $0D865
  $9867: 85 19       sta $19    ; PRG $0D867
  $9869: a1 18       lda ($18,x)    ; PRG $0D869
  $986B: 85 14       sta $14    ; PRG $0D86B
  $986D: 86 15       stx $15    ; PRG $0D86D
  $986F: a5 15       lda $15    ; PRG $0D86F
  $9871: 48          pha    ; PRG $0D871
  $9872: a5 14       lda $14    ; PRG $0D872
  $9874: 48          pha    ; PRG $0D874
  $9875: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0D875
  $9878: 61 95 0c    .db $61 $95 $0c  -> vm $9561 argc 12    ; PRG $0D878
  $987B: a0 fe       ldy #$fe    ; PRG $0D87B
  $987D: b1 06       lda ($06),y    ; PRG $0D87D
  $987F: 85 18       sta $18    ; PRG $0D87F
  $9881: c8          iny    ; PRG $0D881
  $9882: b1 06       lda ($06),y    ; PRG $0D882
  $9884: 85 19       sta $19    ; PRG $0D884
  $9886: 18          clc    ; PRG $0D886
  $9887: a9 09       lda #$09    ; PRG $0D887
  $9889: 88          dey    ; PRG $0D889
  $988A: 71 06       adc ($06),y    ; PRG $0D88A
  $988C: a0 07       ldy #$07    ; PRG $0D88C
  $988E: 91 18       sta ($18),y    ; PRG $0D88E
  $9890: 8a          txa    ; PRG $0D890
  $9891: a0 ff       ldy #$ff    ; PRG $0D891
  $9893: 71 06       adc ($06),y    ; PRG $0D893
  $9895: a0 08       ldy #$08    ; PRG $0D895
  $9897: 91 18       sta ($18),y    ; PRG $0D897
  $9899: a0 fe       ldy #$fe    ; PRG $0D899
  $989B: b1 06       lda ($06),y    ; PRG $0D89B
  $989D: 85 18       sta $18    ; PRG $0D89D
  $989F: c8          iny    ; PRG $0D89F
  $98A0: b1 06       lda ($06),y    ; PRG $0D8A0
  $98A2: 85 19       sta $19    ; PRG $0D8A2
  $98A4: a0 0d       ldy #$0d    ; PRG $0D8A4
  $98A6: b1 04       lda ($04),y    ; PRG $0D8A6
  $98A8: 81 18       sta ($18,x)    ; PRG $0D8A8
  $98AA: a0 fe       ldy #$fe    ; PRG $0D8AA
  $98AC: b1 06       lda ($06),y    ; PRG $0D8AC
  $98AE: 85 18       sta $18    ; PRG $0D8AE
  $98B0: c8          iny    ; PRG $0D8B0
  $98B1: b1 06       lda ($06),y    ; PRG $0D8B1
  $98B3: 85 19       sta $19    ; PRG $0D8B3
  $98B5: a0 0f       ldy #$0f    ; PRG $0D8B5
  $98B7: b1 04       lda ($04),y    ; PRG $0D8B7
  $98B9: a0 01       ldy #$01    ; PRG $0D8B9
  $98BB: 91 18       sta ($18),y    ; PRG $0D8BB
  $98BD: a0 fe       ldy #$fe    ; PRG $0D8BD
  $98BF: b1 06       lda ($06),y    ; PRG $0D8BF
  $98C1: 85 18       sta $18    ; PRG $0D8C1
  $98C3: c8          iny    ; PRG $0D8C3
  $98C4: b1 06       lda ($06),y    ; PRG $0D8C4
  $98C6: 85 19       sta $19    ; PRG $0D8C6
  $98C8: a0 11       ldy #$11    ; PRG $0D8C8
  $98CA: b1 04       lda ($04),y    ; PRG $0D8CA
  $98CC: a0 02       ldy #$02    ; PRG $0D8CC
  $98CE: 91 18       sta ($18),y    ; PRG $0D8CE
  $98D0: a0 fe       ldy #$fe    ; PRG $0D8D0
  $98D2: b1 06       lda ($06),y    ; PRG $0D8D2
  $98D4: 85 18       sta $18    ; PRG $0D8D4
  $98D6: c8          iny    ; PRG $0D8D6
  $98D7: b1 06       lda ($06),y    ; PRG $0D8D7
  $98D9: 85 19       sta $19    ; PRG $0D8D9
  $98DB: a0 13       ldy #$13    ; PRG $0D8DB
  $98DD: b1 04       lda ($04),y    ; PRG $0D8DD
  $98DF: a0 03       ldy #$03    ; PRG $0D8DF
  $98E1: 91 18       sta ($18),y    ; PRG $0D8E1
  $98E3: 60          rts    ; PRG $0D8E3

; ---- sub_6_18e4  [recovered]  <- (uncalled?)
  $98E4: a0 07       ldy #$07    ; PRG $0D8E4
  $98E6: 20 00 e1    jsr $e100   ; native_e100    ; PRG $0D8E6
  $98E9: a0 01       ldy #$01    ; PRG $0D8E9
  $98EB: b1 0a       lda ($0a),y    ; PRG $0D8EB
  $98ED: 85 15       sta $15    ; PRG $0D8ED
  $98EF: b1 0c       lda ($0c),y    ; PRG $0D8EF
  $98F1: 85 17       sta $17    ; PRG $0D8F1
  $98F3: 88          dey    ; PRG $0D8F3
  $98F4: b1 0a       lda ($0a),y    ; PRG $0D8F4
  $98F6: 85 14       sta $14    ; PRG $0D8F6
  $98F8: b1 0c       lda ($0c),y    ; PRG $0D8F8
  $98FA: 85 16       sta $16    ; PRG $0D8FA
  $98FC: a9 99       lda #$99    ; PRG $0D8FC
  $98FE: 85 19       sta $19    ; PRG $0D8FE
  $9900: a9 75       lda #$75    ; PRG $0D900
  $9902: 85 18       sta $18    ; PRG $0D902
  $9904: a2 18       ldx #$18    ; PRG $0D904
  $9906: a5 0e       lda $0e    ; PRG $0D906
  $9908: 20 46 e1    jsr $e146   ; add_a_to_word_zpx    ; PRG $0D908
  $990B: a2 14       ldx #$14    ; PRG $0D90B
  $990D: b1 18       lda ($18),y    ; PRG $0D90D
  $990F: f0 0f       beq $9920    ; PRG $0D90F
  $9911: c9 02       cmp #$02    ; PRG $0D911
  $9913: d0 08       bne $991d    ; PRG $0D913
  $9915: a9 01       lda #$01    ; PRG $0D915
  $9917: 20 50 e1    jsr $e150   ; sub_a_from_word_zpx    ; PRG $0D917
  $991A: 4c 20 99    jmp $9920    ; PRG $0D91A
  $991D: 20 85 99    jsr $9985    ; PRG $0D91D
  $9920: a9 08       lda #$08    ; PRG $0D920
  $9922: a2 18       ldx #$18    ; PRG $0D922
  $9924: 20 46 e1    jsr $e146   ; add_a_to_word_zpx    ; PRG $0D924
  $9927: a2 16       ldx #$16    ; PRG $0D927
  $9929: b1 18       lda ($18),y    ; PRG $0D929
  $992B: f0 0f       beq $993c    ; PRG $0D92B
  $992D: c9 02       cmp #$02    ; PRG $0D92D
  $992F: d0 08       bne $9939    ; PRG $0D92F
  $9931: a9 01       lda #$01    ; PRG $0D931
  $9933: 20 50 e1    jsr $e150   ; sub_a_from_word_zpx    ; PRG $0D933
  $9936: 4c 3c 99    jmp $993c    ; PRG $0D936
  $9939: 20 85 99    jsr $9985    ; PRG $0D939
  $993C: a5 15       lda $15    ; PRG $0D93C
  $993E: 10 09       bpl $9949    ; PRG $0D93E
  $9940: 84 15       sty $15    ; PRG $0D940
  $9942: a9 47       lda #$47    ; PRG $0D942
  $9944: 85 14       sta $14    ; PRG $0D944
  $9946: 4c 53 99    jmp $9953    ; PRG $0D946
  $9949: a5 14       lda $14    ; PRG $0D949
  $994B: c9 48       cmp #$48    ; PRG $0D94B
  $994D: 90 04       bcc $9953    ; PRG $0D94D
  $994F: 84 14       sty $14    ; PRG $0D94F
  $9951: 84 15       sty $15    ; PRG $0D951
  $9953: a5 14       lda $14    ; PRG $0D953
  $9955: 91 0a       sta ($0a),y    ; PRG $0D955
  $9957: a5 16       lda $16    ; PRG $0D957
  $9959: 91 0c       sta ($0c),y    ; PRG $0D959
  $995B: c8          iny    ; PRG $0D95B
  $995C: a5 15       lda $15    ; PRG $0D95C
  $995E: 91 0a       sta ($0a),y    ; PRG $0D95E
  $9960: a5 17       lda $17    ; PRG $0D960
  $9962: 91 0c       sta ($0c),y    ; PRG $0D962
  $9964: 10 03       bpl $9969    ; PRG $0D964
  $9966: 4c 67 e1    jmp $e167    ; PRG $0D966
  $9969: a5 16       lda $16    ; PRG $0D969
  $996B: c9 24       cmp #$24    ; PRG $0D96B
  $996D: 90 03       bcc $9972    ; PRG $0D96D
  $996F: 4c 67 e1    jmp $e167    ; PRG $0D96F
  $9972: 4c 5e e1    jmp $e15e    ; PRG $0D972

; ---- sub_6_1985  [plain]  <- callers: $98E4
