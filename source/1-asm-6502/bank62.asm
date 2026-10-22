; ============================================================================
; Uncharted Waters - bank 62 NATIVE disassembly (window base $C000)
; 12 native subs: 1 $E299-stubbed (VM-frame entries) + 11 plain + 0 jumptable/CALL-recovered
; coverage: 1142B code+inline (13%) + 214B $FF-pad + 6836B data
; control-flow-followed, inline bridges ($E299/$E338) skipped; calls resolved vs mesen-labels.toml.
; ============================================================================
.base $C000

; ---- sub_62_0009  [stub]  <- (entry: bytecode/OS via $E299)
nat_62_0003: jsr $E299                    ; 62:C003  native-call prologue
            .db $00 $80 $ff            ; inline: argcount $00, frame $ff80
  $C009: a0 0b       ldy #$0b    ; PRG $7C009
  $C00B: b1 04       lda ($04),y    ; PRG $7C00B
  $C00D: 85 0a       sta $0a    ; PRG $7C00D
  $C00F: c8          iny    ; PRG $7C00F
  $C010: b1 04       lda ($04),y    ; PRG $7C010
  $C012: 85 0b       sta $0b    ; PRG $7C012
  $C014: c8          iny    ; PRG $7C014
  $C015: b1 04       lda ($04),y    ; PRG $7C015
  $C017: 85 0c       sta $0c    ; PRG $7C017
  $C019: a0 00       ldy #$00    ; PRG $7C019
  $C01B: a2 0e       ldx #$0e    ; PRG $7C01B
  $C01D: ca          dex    ; PRG $7C01D
  $C01E: 94 52       sty $52,x    ; PRG $7C01E
  $C020: ca          dex    ; PRG $7C020
  $C021: d0 fa       bne $c01d    ; PRG $7C021
  $C023: 84 14       sty $14    ; PRG $7C023
  $C025: 84 19       sty $19    ; PRG $7C025
  $C027: 84 18       sty $18    ; PRG $7C027
  $C029: 84 17       sty $17    ; PRG $7C029
  $C02B: ad 86 72    lda $7286    ; PRG $7C02B
  $C02E: 85 15       sta $15    ; PRG $7C02E
  $C030: 20 44 c4    jsr $c444   ; calc_record_ptrs2    ; PRG $7C030
  $C033: ad 8e 72    lda $728e    ; PRG $7C033
  $C036: 0a          asl a    ; PRG $7C036
  $C037: 0a          asl a    ; PRG $7C037
  $C038: 0a          asl a    ; PRG $7C038
  $C039: 0a          asl a    ; PRG $7C039
  $C03A: 0a          asl a    ; PRG $7C03A
  $C03B: 0a          asl a    ; PRG $7C03B
  $C03C: 85 13       sta $13    ; PRG $7C03C
  $C03E: a0 00       ldy #$00    ; PRG $7C03E
  $C040: b1 0a       lda ($0a),y    ; PRG $7C040
  $C042: d0 03       bne $c047    ; PRG $7C042
  $C044: 4c 25 c3    jmp $c325   ; native_c325    ; PRG $7C044
  $C047: 85 0d       sta $0d    ; PRG $7C047
  $C049: c8          iny    ; PRG $7C049
  $C04A: b1 0a       lda ($0a),y    ; PRG $7C04A
  $C04C: 85 12       sta $12    ; PRG $7C04C
  $C04E: 88          dey    ; PRG $7C04E
  $C04F: a5 0d       lda $0d    ; PRG $7C04F
  $C051: c9 20       cmp #$20    ; PRG $7C051
  $C053: 90 2a       bcc $c07f    ; PRG $7C053
  $C055: c9 80       cmp #$80    ; PRG $7C055
  $C057: b0 29       bcs $c082    ; PRG $7C057
  $C059: 38          sec    ; PRG $7C059
  $C05A: e9 20       sbc #$20    ; PRG $7C05A
  $C05C: 91 08       sta ($08),y    ; PRG $7C05C
  $C05E: 20 66 c3    jsr $c366   ; inc_word_08    ; PRG $7C05E
  $C061: a5 13       lda $13    ; PRG $7C061
  $C063: 91 10       sta ($10),y    ; PRG $7C063
  $C065: 20 74 c3    jsr $c374   ; inc_word_10    ; PRG $7C065
  $C068: a9 00       lda #$00    ; PRG $7C068
  $C06A: 91 1a       sta ($1a),y    ; PRG $7C06A
  $C06C: 91 0e       sta ($0e),y    ; PRG $7C06C
  $C06E: 20 6d c3    jsr $c36d   ; inc_word_1a    ; PRG $7C06E
  $C071: 20 7b c3    jsr $c37b   ; inc_word_0e    ; PRG $7C071
  $C074: ee 86 72    inc $7286    ; PRG $7C074
  $C077: e6 16       inc $16    ; PRG $7C077
  $C079: 4c d8 c2    jmp $c2d8   ; native_c2d8    ; PRG $7C079
  $C07C: 4c 79 c1    jmp $c179   ; native_c179    ; PRG $7C07C
  $C07F: 4c a3 c1    jmp $c1a3   ; native_c1a3    ; PRG $7C07F
  $C082: c9 a0       cmp #$a0    ; PRG $7C082
  $C084: 90 f3       bcc $c079    ; PRG $7C084
  $C086: c9 de       cmp #$de    ; PRG $7C086
  $C088: b0 f2       bcs $c07c    ; PRG $7C088
  $C08A: a5 14       lda $14    ; PRG $7C08A
  $C08C: f0 07       beq $c095    ; PRG $7C08C
  $C08E: a5 0d       lda $0d    ; PRG $7C08E
  $C090: 38          sec    ; PRG $7C090
  $C091: e9 40       sbc #$40    ; PRG $7C091
  $C093: 85 0d       sta $0d    ; PRG $7C093
  $C095: a5 12       lda $12    ; PRG $7C095
  $C097: c9 de       cmp #$de    ; PRG $7C097
  $C099: f0 03       beq $c09e    ; PRG $7C099
  $C09B: 4c 04 c1    jmp $c104   ; native_c104    ; PRG $7C09B
  $C09E: a2 0a       ldx #$0a    ; PRG $7C09E
  $C0A0: 20 5f c3    jsr $c35f   ; inc_word_00    ; PRG $7C0A0
  $C0A3: a5 0c       lda $0c    ; PRG $7C0A3
  $C0A5: f0 0d       beq $c0b4    ; PRG $7C0A5
  $C0A7: a9 9e       lda #$9e    ; PRG $7C0A7
  $C0A9: 91 1a       sta ($1a),y    ; PRG $7C0A9
  $C0AB: 20 6d c3    jsr $c36d   ; inc_word_1a    ; PRG $7C0AB
  $C0AE: 20 2f c4    jsr $c42f   ; store_advance_ptrs    ; PRG $7C0AE
  $C0B1: 4c 44 c1    jmp $c144   ; native_c144    ; PRG $7C0B1
  $C0B4: a5 0d       lda $0d    ; PRG $7C0B4
  $C0B6: c9 76       cmp #$76    ; PRG $7C0B6
  $C0B8: 90 3c       bcc $c0f6    ; PRG $7C0B8
  $C0BA: c9 85       cmp #$85    ; PRG $7C0BA
  $C0BC: b0 08       bcs $c0c6    ; PRG $7C0BC
  $C0BE: 38          sec    ; PRG $7C0BE
  $C0BF: e9 76       sbc #$76    ; PRG $7C0BF
  $C0C1: 85 0d       sta $0d    ; PRG $7C0C1
  $C0C3: 4c fa c0    jmp $c0fa   ; native_c0fa    ; PRG $7C0C3
  $C0C6: c9 8a       cmp #$8a    ; PRG $7C0C6
  $C0C8: 90 2c       bcc $c0f6    ; PRG $7C0C8
  $C0CA: c9 8f       cmp #$8f    ; PRG $7C0CA
  $C0CC: b0 08       bcs $c0d6    ; PRG $7C0CC
  $C0CE: 38          sec    ; PRG $7C0CE
  $C0CF: e9 7b       sbc #$7b    ; PRG $7C0CF
  $C0D1: 85 0d       sta $0d    ; PRG $7C0D1
  $C0D3: 4c fa c0    jmp $c0fa   ; native_c0fa    ; PRG $7C0D3
  $C0D6: c9 b6       cmp #$b6    ; PRG $7C0D6
  $C0D8: 90 1c       bcc $c0f6    ; PRG $7C0D8
  $C0DA: c9 c5       cmp #$c5    ; PRG $7C0DA
  $C0DC: b0 08       bcs $c0e6    ; PRG $7C0DC
  $C0DE: 38          sec    ; PRG $7C0DE
  $C0DF: e9 9d       sbc #$9d    ; PRG $7C0DF
  $C0E1: 85 0d       sta $0d    ; PRG $7C0E1
  $C0E3: 4c fa c0    jmp $c0fa   ; native_c0fa    ; PRG $7C0E3
  $C0E6: c9 ca       cmp #$ca    ; PRG $7C0E6
  $C0E8: 90 0c       bcc $c0f6    ; PRG $7C0E8
  $C0EA: c9 cf       cmp #$cf    ; PRG $7C0EA
  $C0EC: b0 08       bcs $c0f6    ; PRG $7C0EC
  $C0EE: 38          sec    ; PRG $7C0EE
  $C0EF: e9 a2       sbc #$a2    ; PRG $7C0EF
  $C0F1: 85 0d       sta $0d    ; PRG $7C0F1
  $C0F3: 4c fa c0    jmp $c0fa   ; native_c0fa    ; PRG $7C0F3
  $C0F6: a9 01       lda #$01    ; PRG $7C0F6
  $C0F8: 85 19       sta $19    ; PRG $7C0F8
  $C0FA: a5 13       lda $13    ; PRG $7C0FA
  $C0FC: 18          clc    ; PRG $7C0FC
  $C0FD: 69 01       adc #$01    ; PRG $7C0FD
  $C0FF: 91 10       sta ($10),y    ; PRG $7C0FF
  $C101: 4c 44 c1    jmp $c144   ; native_c144    ; PRG $7C101
  $C104: c9 df       cmp #$df    ; PRG $7C104
  $C106: d0 38       bne $c140    ; PRG $7C106
  $C108: a2 0a       ldx #$0a    ; PRG $7C108
  $C10A: 20 5f c3    jsr $c35f   ; inc_word_00    ; PRG $7C10A
  $C10D: a5 0c       lda $0c    ; PRG $7C10D
  $C10F: f0 0d       beq $c11e    ; PRG $7C10F
  $C111: a9 9f       lda #$9f    ; PRG $7C111
  $C113: 91 1a       sta ($1a),y    ; PRG $7C113
  $C115: 20 6d c3    jsr $c36d   ; inc_word_1a    ; PRG $7C115
  $C118: 20 2f c4    jsr $c42f   ; store_advance_ptrs    ; PRG $7C118
  $C11B: 4c 44 c1    jmp $c144   ; native_c144    ; PRG $7C11B
  $C11E: a5 0d       lda $0d    ; PRG $7C11E
  $C120: c9 ca       cmp #$ca    ; PRG $7C120
  $C122: 90 0c       bcc $c130    ; PRG $7C122
  $C124: c9 cf       cmp #$cf    ; PRG $7C124
  $C126: b0 ce       bcs $c0f6    ; PRG $7C126
  $C128: 38          sec    ; PRG $7C128
  $C129: e9 9d       sbc #$9d    ; PRG $7C129
  $C12B: 85 0d       sta $0d    ; PRG $7C12B
  $C12D: 4c fa c0    jmp $c0fa   ; native_c0fa    ; PRG $7C12D
  $C130: c9 8a       cmp #$8a    ; PRG $7C130
  $C132: 90 c2       bcc $c0f6    ; PRG $7C132
  $C134: c9 8f       cmp #$8f    ; PRG $7C134
  $C136: b0 be       bcs $c0f6    ; PRG $7C136
  $C138: 38          sec    ; PRG $7C138
  $C139: e9 76       sbc #$76    ; PRG $7C139
  $C13B: 85 0d       sta $0d    ; PRG $7C13B
  $C13D: 4c fa c0    jmp $c0fa   ; native_c0fa    ; PRG $7C13D
  $C140: a5 13       lda $13    ; PRG $7C140
  $C142: 91 10       sta ($10),y    ; PRG $7C142
  $C144: a5 19       lda $19    ; PRG $7C144
  $C146: f0 0b       beq $c153    ; PRG $7C146
  $C148: a5 13       lda $13    ; PRG $7C148
  $C14A: 91 10       sta ($10),y    ; PRG $7C14A
  $C14C: a2 0a       ldx #$0a    ; PRG $7C14C
  $C14E: a9 01       lda #$01    ; PRG $7C14E
  $C150: 20 50 e1    jsr $e150   ; sub_a_from_word_zpx    ; PRG $7C150
  $C153: a5 18       lda $18    ; PRG $7C153
  $C155: d0 13       bne $c16a    ; PRG $7C155
  $C157: a9 00       lda #$00    ; PRG $7C157
  $C159: 91 1a       sta ($1a),y    ; PRG $7C159
  $C15B: 91 0e       sta ($0e),y    ; PRG $7C15B
  $C15D: 20 6d c3    jsr $c36d   ; inc_word_1a    ; PRG $7C15D
  $C160: 20 7b c3    jsr $c37b   ; inc_word_0e    ; PRG $7C160
  $C163: a5 0d       lda $0d    ; PRG $7C163
  $C165: 91 08       sta ($08),y    ; PRG $7C165
  $C167: 20 66 c3    jsr $c366   ; inc_word_08    ; PRG $7C167
  $C16A: 20 74 c3    jsr $c374   ; inc_word_10    ; PRG $7C16A
  $C16D: ee 86 72    inc $7286    ; PRG $7C16D
  $C170: e6 16       inc $16    ; PRG $7C170
  $C172: 84 18       sty $18    ; PRG $7C172
  $C174: 84 19       sty $19    ; PRG $7C174
  $C176: 4c d8 c2    jmp $c2d8   ; native_c2d8    ; PRG $7C176
  $C179: c9 de       cmp #$de    ; PRG $7C179
  $C17B: f0 04       beq $c181    ; PRG $7C17B
  $C17D: c9 df       cmp #$df    ; PRG $7C17D
  $C17F: d0 22       bne $c1a3    ; PRG $7C17F
  $C181: a5 13       lda $13    ; PRG $7C181
  $C183: 91 10       sta ($10),y    ; PRG $7C183
  $C185: 20 74 c3    jsr $c374   ; inc_word_10    ; PRG $7C185
  $C188: a9 00       lda #$00    ; PRG $7C188
  $C18A: 91 1a       sta ($1a),y    ; PRG $7C18A
  $C18C: 91 0e       sta ($0e),y    ; PRG $7C18C
  $C18E: 20 6d c3    jsr $c36d   ; inc_word_1a    ; PRG $7C18E
  $C191: 20 7b c3    jsr $c37b   ; inc_word_0e    ; PRG $7C191
  $C194: a5 0d       lda $0d    ; PRG $7C194
  $C196: 91 08       sta ($08),y    ; PRG $7C196
  $C198: 20 66 c3    jsr $c366   ; inc_word_08    ; PRG $7C198
  $C19B: ee 86 72    inc $7286    ; PRG $7C19B
  $C19E: e6 16       inc $16    ; PRG $7C19E
  $C1A0: 4c d8 c2    jmp $c2d8   ; native_c2d8    ; PRG $7C1A0
  $C1A3: c9 0a       cmp #$0a    ; PRG $7C1A3
  $C1A5: d0 07       bne $c1ae    ; PRG $7C1A5
  $C1A7: a9 01       lda #$01    ; PRG $7C1A7
  $C1A9: 85 17       sta $17    ; PRG $7C1A9
  $C1AB: 4c d8 c2    jmp $c2d8   ; native_c2d8    ; PRG $7C1AB
  $C1AE: c9 1b       cmp #$1b    ; PRG $7C1AE
  $C1B0: f0 03       beq $c1b5    ; PRG $7C1B0
  $C1B2: 4c d8 c2    jmp $c2d8   ; native_c2d8    ; PRG $7C1B2
  $C1B5: a5 16       lda $16    ; PRG $7C1B5
  $C1B7: f0 0b       beq $c1c4    ; PRG $7C1B7
  $C1B9: 20 82 c3    jsr $c382   ; calc_record_ptrs    ; PRG $7C1B9
  $C1BC: ad 86 72    lda $7286    ; PRG $7C1BC
  $C1BF: 85 15       sta $15    ; PRG $7C1BF
  $C1C1: 20 44 c4    jsr $c444   ; calc_record_ptrs2    ; PRG $7C1C1
  $C1C4: a2 0a       ldx #$0a    ; PRG $7C1C4
  $C1C6: 20 5f c3    jsr $c35f   ; inc_word_00    ; PRG $7C1C6
  $C1C9: a5 12       lda $12    ; PRG $7C1C9
  $C1CB: c9 2a       cmp #$2a    ; PRG $7C1CB
  $C1CD: 90 66       bcc $c235    ; PRG $7C1CD
  $C1CF: d0 0e       bne $c1df    ; PRG $7C1CF
  $C1D1: 84 52       sty $52    ; PRG $7C1D1
  $C1D3: 84 54       sty $54    ; PRG $7C1D3
  $C1D5: 84 56       sty $56    ; PRG $7C1D5
  $C1D7: a9 07       lda #$07    ; PRG $7C1D7
  $C1D9: 20 1d c4    jsr $c41d   ; invoke_syscall_a_dc6e    ; PRG $7C1D9
  $C1DC: 4c ea c2    jmp $c2ea   ; native_c2ea    ; PRG $7C1DC
  $C1DF: c9 3d       cmp #$3d    ; PRG $7C1DF
  $C1E1: 90 52       bcc $c235    ; PRG $7C1E1
  $C1E3: d0 1f       bne $c204    ; PRG $7C1E3
  $C1E5: a2 0a       ldx #$0a    ; PRG $7C1E5
  $C1E7: 20 5f c3    jsr $c35f   ; inc_word_00    ; PRG $7C1E7
  $C1EA: b1 0a       lda ($0a),y    ; PRG $7C1EA
  $C1EC: 38          sec    ; PRG $7C1EC
  $C1ED: e9 20       sbc #$20    ; PRG $7C1ED
  $C1EF: 8d 88 72    sta $7288    ; PRG $7C1EF
  $C1F2: a2 0a       ldx #$0a    ; PRG $7C1F2
  $C1F4: 20 5f c3    jsr $c35f   ; inc_word_00    ; PRG $7C1F4
  $C1F7: b1 0a       lda ($0a),y    ; PRG $7C1F7
  $C1F9: 38          sec    ; PRG $7C1F9
  $C1FA: e9 20       sbc #$20    ; PRG $7C1FA
  $C1FC: 8d 86 72    sta $7286    ; PRG $7C1FC
  $C1FF: 85 15       sta $15    ; PRG $7C1FF
  $C201: 4c ea c2    jmp $c2ea   ; native_c2ea    ; PRG $7C201
  $C204: c9 43       cmp #$43    ; PRG $7C204
  $C206: 90 2d       bcc $c235    ; PRG $7C206
  $C208: d0 18       bne $c222    ; PRG $7C208
  $C20A: a2 0a       ldx #$0a    ; PRG $7C20A
  $C20C: 20 5f c3    jsr $c35f   ; inc_word_00    ; PRG $7C20C
  $C20F: b1 0a       lda ($0a),y    ; PRG $7C20F
  $C211: 38          sec    ; PRG $7C211
  $C212: e9 30       sbc #$30    ; PRG $7C212
  $C214: 8d 8e 72    sta $728e    ; PRG $7C214
  $C217: 0a          asl a    ; PRG $7C217
  $C218: 0a          asl a    ; PRG $7C218
  $C219: 0a          asl a    ; PRG $7C219
  $C21A: 0a          asl a    ; PRG $7C21A
  $C21B: 0a          asl a    ; PRG $7C21B
  $C21C: 0a          asl a    ; PRG $7C21C
  $C21D: 85 13       sta $13    ; PRG $7C21D
  $C21F: 4c ea c2    jmp $c2ea   ; native_c2ea    ; PRG $7C21F
  $C222: c9 45       cmp #$45    ; PRG $7C222
  $C224: 90 0f       bcc $c235    ; PRG $7C224
  $C226: d0 10       bne $c238    ; PRG $7C226
  $C228: a2 0a       ldx #$0a    ; PRG $7C228
  $C22A: 20 5f c3    jsr $c35f   ; inc_word_00    ; PRG $7C22A
  $C22D: b1 0a       lda ($0a),y    ; PRG $7C22D
  $C22F: 38          sec    ; PRG $7C22F
  $C230: e9 20       sbc #$20    ; PRG $7C230
  $C232: 8d 8c 72    sta $728c    ; PRG $7C232
  $C235: 4c ea c2    jmp $c2ea   ; native_c2ea    ; PRG $7C235
  $C238: c9 48       cmp #$48    ; PRG $7C238
  $C23A: 90 f9       bcc $c235    ; PRG $7C23A
  $C23C: d0 05       bne $c243    ; PRG $7C23C
  $C23E: 84 14       sty $14    ; PRG $7C23E
  $C240: 4c ea c2    jmp $c2ea   ; native_c2ea    ; PRG $7C240
  $C243: c9 4b       cmp #$4b    ; PRG $7C243
  $C245: 90 ee       bcc $c235    ; PRG $7C245
  $C247: d0 07       bne $c250    ; PRG $7C247
  $C249: a9 01       lda #$01    ; PRG $7C249
  $C24B: 85 14       sta $14    ; PRG $7C24B
  $C24D: 4c ea c2    jmp $c2ea   ; native_c2ea    ; PRG $7C24D
  $C250: c9 52       cmp #$52    ; PRG $7C250
  $C252: 90 e1       bcc $c235    ; PRG $7C252
  $C254: d0 0d       bne $c263    ; PRG $7C254
  $C256: a2 0a       ldx #$0a    ; PRG $7C256
  $C258: 20 5f c3    jsr $c35f   ; inc_word_00    ; PRG $7C258
  $C25B: b1 0a       lda ($0a),y    ; PRG $7C25B
  $C25D: 38          sec    ; PRG $7C25D
  $C25E: e9 20       sbc #$20    ; PRG $7C25E
  $C260: 8d 8a 72    sta $728a    ; PRG $7C260
  $C263: c9 54       cmp #$54    ; PRG $7C263
  $C265: 90 ce       bcc $c235    ; PRG $7C265
  $C267: d0 31       bne $c29a    ; PRG $7C267
  $C269: ad 86 72    lda $7286    ; PRG $7C269
  $C26C: 85 52       sta $52    ; PRG $7C26C
  $C26E: ad 88 72    lda $7288    ; PRG $7C26E
  $C271: 85 54       sta $54    ; PRG $7C271
  $C273: ad 8c 72    lda $728c    ; PRG $7C273
  $C276: 38          sec    ; PRG $7C276
  $C277: ed 86 72    sbc $7286    ; PRG $7C277
  $C27A: 18          clc    ; PRG $7C27A
  $C27B: 69 01       adc #$01    ; PRG $7C27B
  $C27D: 85 56       sta $56    ; PRG $7C27D
  $C27F: a9 01       lda #$01    ; PRG $7C27F
  $C281: 85 58       sta $58    ; PRG $7C281
  $C283: 84 5a       sty $5a    ; PRG $7C283
  $C285: 84 5b       sty $5b    ; PRG $7C285
  $C287: 84 5c       sty $5c    ; PRG $7C287
  $C289: 84 5d       sty $5d    ; PRG $7C289
  $C28B: a9 08       lda #$08    ; PRG $7C28B
  $C28D: 20 1d c4    jsr $c41d   ; invoke_syscall_a_dc6e    ; PRG $7C28D
  $C290: e6 54       inc $54    ; PRG $7C290
  $C292: a9 08       lda #$08    ; PRG $7C292
  $C294: 20 1d c4    jsr $c41d   ; invoke_syscall_a_dc6e    ; PRG $7C294
  $C297: 4c ea c2    jmp $c2ea   ; native_c2ea    ; PRG $7C297
  $C29A: c9 57       cmp #$57    ; PRG $7C29A
  $C29C: 90 97       bcc $c235    ; PRG $7C29C
  $C29E: d0 14       bne $c2b4    ; PRG $7C29E
  $C2A0: 20 2a c3    jsr $c32a   ; save_block_to_stack    ; PRG $7C2A0
  $C2A3: 98          tya    ; PRG $7C2A3
  $C2A4: 48          pha    ; PRG $7C2A4
  $C2A5: a9 01       lda #$01    ; PRG $7C2A5
  $C2A7: 48          pha    ; PRG $7C2A7
  $C2A8: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $7C2A8
  $C2AB: 9b ce 04    .db $9b $ce $04  -> vm $CE9B argc 4    ; PRG $7C2AB
  $C2AE: 20 44 c3    jsr $c344   ; restore_block_from_stack    ; PRG $7C2AE
  $C2B1: 4c ea c2    jmp $c2ea   ; native_c2ea    ; PRG $7C2B1
  $C2B4: c9 e0       cmp #$e0    ; PRG $7C2B4
  $C2B6: 90 32       bcc $c2ea    ; PRG $7C2B6
  $C2B8: 91 08       sta ($08),y    ; PRG $7C2B8
  $C2BA: 20 66 c3    jsr $c366   ; inc_word_08    ; PRG $7C2BA
  $C2BD: a5 13       lda $13    ; PRG $7C2BD
  $C2BF: 91 10       sta ($10),y    ; PRG $7C2BF
  $C2C1: 20 74 c3    jsr $c374   ; inc_word_10    ; PRG $7C2C1
  $C2C4: a9 00       lda #$00    ; PRG $7C2C4
  $C2C6: 91 1a       sta ($1a),y    ; PRG $7C2C6
  $C2C8: 91 0e       sta ($0e),y    ; PRG $7C2C8
  $C2CA: 20 6d c3    jsr $c36d   ; inc_word_1a    ; PRG $7C2CA
  $C2CD: 20 7b c3    jsr $c37b   ; inc_word_0e    ; PRG $7C2CD
  $C2D0: ee 86 72    inc $7286    ; PRG $7C2D0
  $C2D3: e6 16       inc $16    ; PRG $7C2D3
  $C2D5: 4c ea c2    jmp $c2ea   ; native_c2ea    ; PRG $7C2D5
  $C2D8: a5 17       lda $17    ; PRG $7C2D8
  $C2DA: d0 16       bne $c2f2    ; PRG $7C2DA
  $C2DC: ad 8c 72    lda $728c    ; PRG $7C2DC
  $C2DF: cd 86 72    cmp $7286    ; PRG $7C2DF
  $C2E2: 90 0e       bcc $c2f2    ; PRG $7C2E2
  $C2E4: a5 16       lda $16    ; PRG $7C2E4
  $C2E6: c9 21       cmp #$21    ; PRG $7C2E6
  $C2E8: b0 08       bcs $c2f2    ; PRG $7C2E8
  $C2EA: a2 0a       ldx #$0a    ; PRG $7C2EA
  $C2EC: 20 5f c3    jsr $c35f   ; inc_word_00    ; PRG $7C2EC
  $C2EF: 4c 3e c0    jmp $c03e   ; native_c03e    ; PRG $7C2EF
  $C2F2: a5 16       lda $16    ; PRG $7C2F2
  $C2F4: f0 06       beq $c2fc    ; PRG $7C2F4
  $C2F6: 20 82 c3    jsr $c382   ; calc_record_ptrs    ; PRG $7C2F6
  $C2F9: 20 44 c4    jsr $c444   ; calc_record_ptrs2    ; PRG $7C2F9
  $C2FC: ad 8a 72    lda $728a    ; PRG $7C2FC
  $C2FF: 85 15       sta $15    ; PRG $7C2FF
  $C301: c9 40       cmp #$40    ; PRG $7C301
  $C303: 90 02       bcc $c307    ; PRG $7C303
  $C305: a9 3f       lda #$3f    ; PRG $7C305
  $C307: 8d 86 72    sta $7286    ; PRG $7C307
  $C30A: ee 88 72    inc $7288    ; PRG $7C30A
  $C30D: a5 0c       lda $0c    ; PRG $7C30D
  $C30F: f0 03       beq $c314    ; PRG $7C30F
  $C311: ee 88 72    inc $7288    ; PRG $7C311
  $C314: ad 88 72    lda $7288    ; PRG $7C314
  $C317: c9 1e       cmp #$1e    ; PRG $7C317
  $C319: 90 05       bcc $c320    ; PRG $7C319
  $C31B: a9 1d       lda #$1d    ; PRG $7C31B
  $C31D: 8d 88 72    sta $7288    ; PRG $7C31D
  $C320: 84 17       sty $17    ; PRG $7C320
  $C322: 4c ea c2    jmp $c2ea   ; native_c2ea    ; PRG $7C322
  $C325: a5 16       lda $16    ; PRG $7C325
  $C327: d0 59       bne $c382    ; PRG $7C327
  $C329: 60          rts    ; PRG $7C329

; ---- sub_62_032a  [plain]  <- callers: $C009
  $C32A: 68          pla    ; PRG $7C32A
  $C32B: 85 40       sta $40    ; PRG $7C32B
  $C32D: 68          pla    ; PRG $7C32D
  $C32E: 85 41       sta $41    ; PRG $7C32E
  $C330: a0 00       ldy #$00    ; PRG $7C330
  $C332: b9 08 00    lda $0008,y    ; PRG $7C332
  $C335: 48          pha    ; PRG $7C335
  $C336: c8          iny    ; PRG $7C336
  $C337: c0 14       cpy #$14    ; PRG $7C337
  $C339: d0 f7       bne $c332    ; PRG $7C339
  $C33B: a5 41       lda $41    ; PRG $7C33B
  $C33D: 48          pha    ; PRG $7C33D
  $C33E: a5 40       lda $40    ; PRG $7C33E
  $C340: 48          pha    ; PRG $7C340
  $C341: a0 00       ldy #$00    ; PRG $7C341
  $C343: 60          rts    ; PRG $7C343

; ---- sub_62_0344  [plain]  <- callers: $C009
  $C344: 68          pla    ; PRG $7C344
  $C345: 85 40       sta $40    ; PRG $7C345
  $C347: 68          pla    ; PRG $7C347
  $C348: 85 41       sta $41    ; PRG $7C348
  $C34A: a0 13       ldy #$13    ; PRG $7C34A
  $C34C: 68          pla    ; PRG $7C34C
  $C34D: 99 08 00    sta $0008,y    ; PRG $7C34D
  $C350: c0 00       cpy #$00    ; PRG $7C350
  $C352: f0 04       beq $c358    ; PRG $7C352
  $C354: 88          dey    ; PRG $7C354
  $C355: 4c 4c c3    jmp $c34c    ; PRG $7C355
  $C358: a5 41       lda $41    ; PRG $7C358
  $C35A: 48          pha    ; PRG $7C35A
  $C35B: a5 40       lda $40    ; PRG $7C35B
  $C35D: 48          pha    ; PRG $7C35D
  $C35E: 60          rts    ; PRG $7C35E

; ---- sub_62_035f  [plain]  <- callers: $C009, $C382
  $C35F: f6 00       inc $00,x    ; PRG $7C35F
  $C361: d0 02       bne $c365    ; PRG $7C361
  $C363: f6 01       inc $01,x    ; PRG $7C363
  $C365: 60          rts    ; PRG $7C365

; ---- sub_62_0366  [plain]  <- callers: $C009, $C42F
  $C366: e6 08       inc $08    ; PRG $7C366
  $C368: d0 17       bne $c381    ; PRG $7C368
  $C36A: e6 09       inc $09    ; PRG $7C36A
  $C36C: 60          rts    ; PRG $7C36C

; ---- sub_62_036d  [plain]  <- callers: $C009, $C382
  $C36D: e6 1a       inc $1a    ; PRG $7C36D
  $C36F: d0 10       bne $c381    ; PRG $7C36F
  $C371: e6 1b       inc $1b    ; PRG $7C371
  $C373: 60          rts    ; PRG $7C373

; ---- sub_62_0374  [plain]  <- callers: $C009
  $C374: e6 10       inc $10    ; PRG $7C374
  $C376: d0 09       bne $c381    ; PRG $7C376
  $C378: e6 11       inc $11    ; PRG $7C378
  $C37A: 60          rts    ; PRG $7C37A

; ---- sub_62_037b  [plain]  <- callers: $C009, $C382, $C42F
  $C37B: e6 0e       inc $0e    ; PRG $7C37B
  $C37D: d0 02       bne $c381    ; PRG $7C37D
  $C37F: e6 0f       inc $0f    ; PRG $7C37F
  $C381: 60          rts    ; PRG $7C381

; ---- sub_62_0382  [plain]  <- callers: $C009
  $C382: a5 15       lda $15    ; PRG $7C382
  $C384: 85 52       sta $52    ; PRG $7C384
  $C386: ad 88 72    lda $7288    ; PRG $7C386
  $C389: 85 54       sta $54    ; PRG $7C389
  $C38B: a5 16       lda $16    ; PRG $7C38B
  $C38D: 85 56       sta $56    ; PRG $7C38D
  $C38F: a5 06       lda $06    ; PRG $7C38F
  $C391: 85 00       sta $00    ; PRG $7C391
  $C393: a5 07       lda $07    ; PRG $7C393
  $C395: 85 01       sta $01    ; PRG $7C395
  $C397: a2 00       ldx #$00    ; PRG $7C397
  $C399: a9 c0       lda #$c0    ; PRG $7C399
  $C39B: 20 46 e1    jsr $e146   ; add_a_to_word_zpx    ; PRG $7C39B
  $C39E: a5 00       lda $00    ; PRG $7C39E
  $C3A0: 85 5a       sta $5a    ; PRG $7C3A0
  $C3A2: a5 01       lda $01    ; PRG $7C3A2
  $C3A4: 85 5b       sta $5b    ; PRG $7C3A4
  $C3A6: a5 06       lda $06    ; PRG $7C3A6
  $C3A8: 85 42       sta $42    ; PRG $7C3A8
  $C3AA: a5 07       lda $07    ; PRG $7C3AA
  $C3AC: 85 43       sta $43    ; PRG $7C3AC
  $C3AE: a2 42       ldx #$42    ; PRG $7C3AE
  $C3B0: a9 80       lda #$80    ; PRG $7C3B0
  $C3B2: 20 46 e1    jsr $e146   ; add_a_to_word_zpx    ; PRG $7C3B2
  $C3B5: a5 42       lda $42    ; PRG $7C3B5
  $C3B7: 85 5c       sta $5c    ; PRG $7C3B7
  $C3B9: a5 43       lda $43    ; PRG $7C3B9
  $C3BB: 85 5d       sta $5d    ; PRG $7C3BB
  $C3BD: a9 ff       lda #$ff    ; PRG $7C3BD
  $C3BF: 85 5e       sta $5e    ; PRG $7C3BF
  $C3C1: a5 0c       lda $0c    ; PRG $7C3C1
  $C3C3: f0 44       beq $c409    ; PRG $7C3C3
  $C3C5: a2 00       ldx #$00    ; PRG $7C3C5
  $C3C7: a9 20       lda #$20    ; PRG $7C3C7
  $C3C9: 20 46 e1    jsr $e146   ; add_a_to_word_zpx    ; PRG $7C3C9
  $C3CC: a2 42       ldx #$42    ; PRG $7C3CC
  $C3CE: a9 20       lda #$20    ; PRG $7C3CE
  $C3D0: 20 46 e1    jsr $e146   ; add_a_to_word_zpx    ; PRG $7C3D0
  $C3D3: a4 16       ldy $16    ; PRG $7C3D3
  $C3D5: a2 00       ldx #$00    ; PRG $7C3D5
  $C3D7: a1 00       lda ($00,x)    ; PRG $7C3D7
  $C3D9: 81 1a       sta ($1a,x)    ; PRG $7C3D9
  $C3DB: a1 42       lda ($42,x)    ; PRG $7C3DB
  $C3DD: 81 0e       sta ($0e,x)    ; PRG $7C3DD
  $C3DF: a2 00       ldx #$00    ; PRG $7C3DF
  $C3E1: 20 5f c3    jsr $c35f   ; inc_word_00    ; PRG $7C3E1
  $C3E4: 20 6d c3    jsr $c36d   ; inc_word_1a    ; PRG $7C3E4
  $C3E7: a2 42       ldx #$42    ; PRG $7C3E7
  $C3E9: 20 5f c3    jsr $c35f   ; inc_word_00    ; PRG $7C3E9
  $C3EC: 20 7b c3    jsr $c37b   ; inc_word_0e    ; PRG $7C3EC
  $C3EF: 88          dey    ; PRG $7C3EF
  $C3F0: d0 e3       bne $c3d5    ; PRG $7C3F0
  $C3F2: a2 1a       ldx #$1a    ; PRG $7C3F2
  $C3F4: a5 16       lda $16    ; PRG $7C3F4
  $C3F6: 20 50 e1    jsr $e150   ; sub_a_from_word_zpx    ; PRG $7C3F6
  $C3F9: a2 0e       ldx #$0e    ; PRG $7C3F9
  $C3FB: a5 16       lda $16    ; PRG $7C3FB
  $C3FD: 20 50 e1    jsr $e150   ; sub_a_from_word_zpx    ; PRG $7C3FD
  $C400: a9 02       lda #$02    ; PRG $7C400
  $C402: 85 58       sta $58    ; PRG $7C402
  $C404: a9 09       lda #$09    ; PRG $7C404
  $C406: 4c 1d c4    jmp $c41d   ; invoke_syscall_a_dc6e    ; PRG $7C406
  $C409: a9 01       lda #$01    ; PRG $7C409
  $C40B: 85 58       sta $58    ; PRG $7C40B
  $C40D: a2 5a       ldx #$5a    ; PRG $7C40D
  $C40F: a9 20       lda #$20    ; PRG $7C40F
  $C411: 20 46 e1    jsr $e146   ; add_a_to_word_zpx    ; PRG $7C411
  $C414: a2 5c       ldx #$5c    ; PRG $7C414
  $C416: a9 20       lda #$20    ; PRG $7C416
  $C418: 20 46 e1    jsr $e146   ; add_a_to_word_zpx    ; PRG $7C418
  $C41B: a9 09       lda #$09    ; PRG $7C41B
  $C41D: 85 50       sta $50    ; PRG $7C41D
  $C41F: a9 00       lda #$00    ; PRG $7C41F
  $C421: 85 51       sta $51    ; PRG $7C421
  $C423: a9 c4       lda #$c4    ; PRG $7C423
  $C425: 48          pha    ; PRG $7C425
  $C426: a9 2d       lda #$2d    ; PRG $7C426
  $C428: 48          pha    ; PRG $7C428
  $C429: 08          php    ; PRG $7C429
  $C42A: 6c de ff    jmp ($ffde)    ; PRG $7C42A

; ---- sub_62_041d  [plain]  <- callers: $C009
  $C41D: 85 50       sta $50    ; PRG $7C41D
  $C41F: a9 00       lda #$00    ; PRG $7C41F
  $C421: 85 51       sta $51    ; PRG $7C421
  $C423: a9 c4       lda #$c4    ; PRG $7C423
  $C425: 48          pha    ; PRG $7C425
  $C426: a9 2d       lda #$2d    ; PRG $7C426
  $C428: 48          pha    ; PRG $7C428
  $C429: 08          php    ; PRG $7C429
  $C42A: 6c de ff    jmp ($ffde)    ; PRG $7C42A

; ---- sub_62_042f  [plain]  <- callers: $C009
  $C42F: a5 0d       lda $0d    ; PRG $7C42F
  $C431: 91 08       sta ($08),y    ; PRG $7C431
  $C433: 20 66 c3    jsr $c366   ; inc_word_08    ; PRG $7C433
  $C436: a5 13       lda $13    ; PRG $7C436
  $C438: 91 0e       sta ($0e),y    ; PRG $7C438
  $C43A: 91 10       sta ($10),y    ; PRG $7C43A
  $C43C: 20 7b c3    jsr $c37b   ; inc_word_0e    ; PRG $7C43C
  $C43F: a9 01       lda #$01    ; PRG $7C43F
  $C441: 85 18       sta $18    ; PRG $7C441
  $C443: 60          rts    ; PRG $7C443

; ---- sub_62_0444  [plain]  <- callers: $C009
  $C444: a5 06       lda $06    ; PRG $7C444
  $C446: 85 1a       sta $1a    ; PRG $7C446
  $C448: 85 08       sta $08    ; PRG $7C448
  $C44A: a5 07       lda $07    ; PRG $7C44A
  $C44C: 85 1b       sta $1b    ; PRG $7C44C
  $C44E: 85 09       sta $09    ; PRG $7C44E
  $C450: a2 1a       ldx #$1a    ; PRG $7C450
  $C452: a9 c0       lda #$c0    ; PRG $7C452
  $C454: 20 46 e1    jsr $e146   ; add_a_to_word_zpx    ; PRG $7C454
  $C457: a2 08       ldx #$08    ; PRG $7C457
  $C459: a9 e0       lda #$e0    ; PRG $7C459
  $C45B: 20 46 e1    jsr $e146   ; add_a_to_word_zpx    ; PRG $7C45B
  $C45E: a5 06       lda $06    ; PRG $7C45E
  $C460: 85 0e       sta $0e    ; PRG $7C460
  $C462: 85 10       sta $10    ; PRG $7C462
  $C464: a5 07       lda $07    ; PRG $7C464
  $C466: 85 0f       sta $0f    ; PRG $7C466
  $C468: 85 11       sta $11    ; PRG $7C468
  $C46A: a2 0e       ldx #$0e    ; PRG $7C46A
  $C46C: a9 80       lda #$80    ; PRG $7C46C
  $C46E: 20 46 e1    jsr $e146   ; add_a_to_word_zpx    ; PRG $7C46E
  $C471: a2 10       ldx #$10    ; PRG $7C471
  $C473: a9 a0       lda #$a0    ; PRG $7C473
  $C475: 20 46 e1    jsr $e146   ; add_a_to_word_zpx    ; PRG $7C475
  $C478: 84 16       sty $16    ; PRG $7C478
  $C47A: 60          rts    ; PRG $7C47A
