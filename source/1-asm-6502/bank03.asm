; ============================================================================
; Uncharted Waters - bank 3 NATIVE disassembly (window base $8000)
; 22 native subs: 22 $E299-stubbed (VM-frame entries) + 0 plain + 0 jumptable/CALL-recovered
; coverage: 7325B code+inline (89%) + 824B $FF-pad + 43B data
; control-flow-followed, inline bridges ($E299/$E338) skipped; calls resolved vs mesen-labels.toml.
; ============================================================================
.base $8000

; ---- sub_3_0009  [stub]  <- (entry: bytecode/OS via $E299)
nat_3_0003: jsr $E299                    ; 3:8003  native-call prologue
            .db $00 $fe $ff            ; inline: argcount $00, frame $fffe
  $8009: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $06009
  $800C: 92 a2 02    .db $92 $a2 $02  -> vm $A292 argc 2    ; PRG $0600C
  $800F: a5 08       lda $08    ; PRG $0600F
  $8011: a0 fe       ldy #$fe    ; PRG $06011
  $8013: 91 06       sta ($06),y    ; PRG $06013
  $8015: a5 09       lda $09    ; PRG $06015
  $8017: c8          iny    ; PRG $06017
  $8018: 91 06       sta ($06),y    ; PRG $06018
  $801A: ad 6a 66    lda $666a    ; PRG $0601A
  $801D: 85 18       sta $18    ; PRG $0601D
  $801F: 86 19       stx $19    ; PRG $0601F
  $8021: a5 19       lda $19    ; PRG $06021
  $8023: 48          pha    ; PRG $06023
  $8024: a5 18       lda $18    ; PRG $06024
  $8026: 48          pha    ; PRG $06026
  $8027: ad 65 66    lda $6665   ; party_map_y    ; PRG $06027
  $802A: 85 18       sta $18    ; PRG $0602A
  $802C: 86 19       stx $19    ; PRG $0602C
  $802E: a5 19       lda $19    ; PRG $0602E
  $8030: 48          pha    ; PRG $06030
  $8031: a5 18       lda $18    ; PRG $06031
  $8033: 48          pha    ; PRG $06033
  $8034: ad 64 66    lda $6664   ; party_map_x    ; PRG $06034
  $8037: 85 18       sta $18    ; PRG $06037
  $8039: 86 19       stx $19    ; PRG $06039
  $803B: a5 19       lda $19    ; PRG $0603B
  $803D: 48          pha    ; PRG $0603D
  $803E: a5 18       lda $18    ; PRG $0603E
  $8040: 48          pha    ; PRG $06040
  $8041: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $06041
  $8044: 41 ad 08    .db $41 $ad $08  -> vm $AD41 argc 8    ; PRG $06044
  $8047: a0 fe       ldy #$fe    ; PRG $06047
  $8049: b1 06       lda ($06),y    ; PRG $06049
  $804B: 85 08       sta $08    ; PRG $0604B
  $804D: c8          iny    ; PRG $0604D
  $804E: b1 06       lda ($06),y    ; PRG $0604E
  $8050: 85 09       sta $09    ; PRG $06050
  $8052: 60          rts    ; PRG $06052

; ---- sub_3_0059  [stub]  <- (entry: bytecode/OS via $E299)
nat_3_0053: jsr $E299                    ; 3:8053  native-call prologue
            .db $00 $00 $00            ; inline: argcount $00, frame $0000
  $8059: 48          pha    ; PRG $06059
  $805A: a9 08       lda #$08    ; PRG $0605A
  $805C: 48          pha    ; PRG $0605C
  $805D: a9 73       lda #$73    ; PRG $0605D
  $805F: 48          pha    ; PRG $0605F
  $8060: a9 82       lda #$82    ; PRG $06060
  $8062: 48          pha    ; PRG $06062
  $8063: a0 0c       ldy #$0c    ; PRG $06063
  $8065: b1 04       lda ($04),y    ; PRG $06065
  $8067: 48          pha    ; PRG $06067
  $8068: 88          dey    ; PRG $06068
  $8069: b1 04       lda ($04),y    ; PRG $06069
  $806B: 48          pha    ; PRG $0606B
  $806C: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0606C
  $806F: e0 dd 08    .db $e0 $dd $08  -> vm $DDE0 argc 8    ; PRG $0606F
  $8072: a0 0c       ldy #$0c    ; PRG $06072
  $8074: b1 04       lda ($04),y    ; PRG $06074
  $8076: 48          pha    ; PRG $06076
  $8077: 88          dey    ; PRG $06077
  $8078: b1 04       lda ($04),y    ; PRG $06078
  $807A: 48          pha    ; PRG $0607A
  $807B: 8a          txa    ; PRG $0607B
  $807C: 48          pha    ; PRG $0607C
  $807D: a9 05       lda #$05    ; PRG $0607D
  $807F: 48          pha    ; PRG $0607F
  $8080: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $06080
  $8083: d4 ee 06    .db $d4 $ee $06  -> vm $EED4 argc 6    ; PRG $06083
  $8086: 60          rts    ; PRG $06086

; ---- sub_3_008d  [stub]  <- (entry: bytecode/OS via $E299)
nat_3_0087: jsr $E299                    ; 3:8087  native-call prologue
            .db $00 $fe $ff            ; inline: argcount $00, frame $fffe
  $808D: ad 68 70    lda $7068    ; PRG $0608D
  $8090: 85 18       sta $18    ; PRG $06090
  $8092: 86 19       stx $19    ; PRG $06092
  $8094: a5 18       lda $18    ; PRG $06094
  $8096: 05 19       ora $19    ; PRG $06096
  $8098: f0 03       beq $809d    ; PRG $06098
  $809A: 4c 9e 80    jmp $809e    ; PRG $0609A
  $809D: 60          rts    ; PRG $0609D
  $809E: 8a          txa    ; PRG $0609E
  $809F: 48          pha    ; PRG $0609F
  $80A0: a9 01       lda #$01    ; PRG $060A0
  $80A2: 48          pha    ; PRG $060A2
  $80A3: 8a          txa    ; PRG $060A3
  $80A4: 48          pha    ; PRG $060A4
  $80A5: 48          pha    ; PRG $060A5
  $80A6: 48          pha    ; PRG $060A6
  $80A7: a9 03       lda #$03    ; PRG $060A7
  $80A9: 48          pha    ; PRG $060A9
  $80AA: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $060AA
  $80AD: d4 ee 08    .db $d4 $ee $08  -> vm $EED4 argc 8    ; PRG $060AD
  $80B0: 48          pha    ; PRG $060B0
  $80B1: 48          pha    ; PRG $060B1
  $80B2: a9 06       lda #$06    ; PRG $060B2
  $80B4: 48          pha    ; PRG $060B4
  $80B5: a9 90       lda #$90    ; PRG $060B5
  $80B7: 48          pha    ; PRG $060B7
  $80B8: a9 70       lda #$70    ; PRG $060B8
  $80BA: 48          pha    ; PRG $060BA
  $80BB: a9 62       lda #$62    ; PRG $060BB
  $80BD: 48          pha    ; PRG $060BD
  $80BE: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $060BE
  $80C1: 3a f3 08    .db $3a $f3 $08  -> vm $F33A argc 8    ; PRG $060C1
  $80C4: 48          pha    ; PRG $060C4
  $80C5: a9 05       lda #$05    ; PRG $060C5
  $80C7: 48          pha    ; PRG $060C7
  $80C8: 8a          txa    ; PRG $060C8
  $80C9: 48          pha    ; PRG $060C9
  $80CA: 48          pha    ; PRG $060CA
  $80CB: 48          pha    ; PRG $060CB
  $80CC: a9 03       lda #$03    ; PRG $060CC
  $80CE: 48          pha    ; PRG $060CE
  $80CF: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $060CF
  $80D2: d4 ee 08    .db $d4 $ee $08  -> vm $EED4 argc 8    ; PRG $060D2
  $80D5: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $060D5
  $80D8: 75 a6 02    .db $75 $a6 $02  -> vm $A675 argc 2    ; PRG $060D8
  $80DB: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $060DB
  $80DE: 37 ce 02    .db $37 $ce $02  -> vm $CE37 argc 2    ; PRG $060DE
  $80E1: a9 9c       lda #$9c    ; PRG $060E1
  $80E3: 48          pha    ; PRG $060E3
  $80E4: a9 a8       lda #$a8    ; PRG $060E4
  $80E6: 48          pha    ; PRG $060E6
  $80E7: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $060E7
  $80EA: 53 80 04    .db $53 $80 $04  -> vm $8053 argc 4    ; PRG $060EA
  $80ED: a9 ff       lda #$ff    ; PRG $060ED
  $80EF: 8d 7c 73    sta $737c   ; current_region    ; PRG $060EF
  $80F2: 8d 64 70    sta $7064    ; PRG $060F2
  $80F5: 8d 65 70    sta $7065    ; PRG $060F5
  $80F8: 8e 68 70    stx $7068    ; PRG $060F8
  $80FB: a9 62       lda #$62    ; PRG $060FB
  $80FD: a0 fe       ldy #$fe    ; PRG $060FD
  $80FF: 91 06       sta ($06),y    ; PRG $060FF
  $8101: a9 66       lda #$66    ; PRG $06101
  $8103: c8          iny    ; PRG $06103
  $8104: 91 06       sta ($06),y    ; PRG $06104
  $8106: 88          dey    ; PRG $06106
  $8107: b1 06       lda ($06),y    ; PRG $06107
  $8109: 85 18       sta $18    ; PRG $06109
  $810B: c8          iny    ; PRG $0610B
  $810C: b1 06       lda ($06),y    ; PRG $0610C
  $810E: 85 19       sta $19    ; PRG $0610E
  $8110: a0 03       ldy #$03    ; PRG $06110
  $8112: b1 18       lda ($18),y    ; PRG $06112
  $8114: 85 14       sta $14    ; PRG $06114
  $8116: 86 15       stx $15    ; PRG $06116
  $8118: a5 14       lda $14    ; PRG $06118
  $811A: c9 07       cmp #$07    ; PRG $0611A
  $811C: a5 15       lda $15    ; PRG $0611C
  $811E: e9 00       sbc #$00    ; PRG $0611E
  $8120: 90 03       bcc $8125    ; PRG $06120
  $8122: 4c 2e 81    jmp $812e   ; load_shipyard_sprites    ; PRG $06122
  $8125: a9 02       lda #$02    ; PRG $06125
  $8127: 85 18       sta $18    ; PRG $06127
  $8129: 86 19       stx $19    ; PRG $06129
  $812B: 4c 34 81    jmp $8134    ; PRG $0612B
  $812E: a9 01       lda #$01    ; PRG $0612E
  $8130: 85 18       sta $18    ; PRG $06130
  $8132: 86 19       stx $19    ; PRG $06132
  $8134: a5 18       lda $18    ; PRG $06134
  $8136: 8d 7d 73    sta $737d   ; ui_shared_var_737d    ; PRG $06136
  $8139: a0 fe       ldy #$fe    ; PRG $06139
  $813B: b1 06       lda ($06),y    ; PRG $0613B
  $813D: 85 18       sta $18    ; PRG $0613D
  $813F: c8          iny    ; PRG $0613F
  $8140: b1 06       lda ($06),y    ; PRG $06140
  $8142: 85 19       sta $19    ; PRG $06142
  $8144: a0 01       ldy #$01    ; PRG $06144
  $8146: b1 18       lda ($18),y    ; PRG $06146
  $8148: 85 14       sta $14    ; PRG $06148
  $814A: 86 15       stx $15    ; PRG $0614A
  $814C: a5 15       lda $15    ; PRG $0614C
  $814E: 48          pha    ; PRG $0614E
  $814F: a5 14       lda $14    ; PRG $0614F
  $8151: 48          pha    ; PRG $06151
  $8152: a0 fe       ldy #$fe    ; PRG $06152
  $8154: b1 06       lda ($06),y    ; PRG $06154
  $8156: 85 18       sta $18    ; PRG $06156
  $8158: c8          iny    ; PRG $06158
  $8159: b1 06       lda ($06),y    ; PRG $06159
  $815B: 85 19       sta $19    ; PRG $0615B
  $815D: a1 18       lda ($18,x)    ; PRG $0615D
  $815F: 85 14       sta $14    ; PRG $0615F
  $8161: 86 15       stx $15    ; PRG $06161
  $8163: a5 15       lda $15    ; PRG $06163
  $8165: 48          pha    ; PRG $06165
  $8166: a5 14       lda $14    ; PRG $06166
  $8168: 48          pha    ; PRG $06168
  $8169: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $06169
  $816C: d9 af 06    .db $d9 $af $06  -> vm $AFD9 argc 6    ; PRG $0616C
  $816F: 60          rts    ; PRG $0616F

; ---- sub_3_0176  [stub]  <- (entry: bytecode/OS via $E299)
nat_3_0170: jsr $E299                    ; 3:8170  native-call prologue
            .db $00 $00 $00            ; inline: argcount $00, frame $0000
  $8176: ad 68 70    lda $7068    ; PRG $06176
  $8179: 85 18       sta $18    ; PRG $06179
  $817B: 86 19       stx $19    ; PRG $0617B
  $817D: a5 18       lda $18    ; PRG $0617D
  $817F: c9 01       cmp #$01    ; PRG $0617F
  $8181: d0 04       bne $8187    ; PRG $06181
  $8183: a5 19       lda $19    ; PRG $06183
  $8185: c9 00       cmp #$00    ; PRG $06185
  $8187: d0 03       bne $818c    ; PRG $06187
  $8189: 4c 92 81    jmp $8192    ; PRG $06189
  $818C: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0618C
  $818F: 75 a6 02    .db $75 $a6 $02  -> vm $A675 argc 2    ; PRG $0618F
  $8192: a9 9c       lda #$9c    ; PRG $06192
  $8194: 48          pha    ; PRG $06194
  $8195: a9 a0       lda #$a0    ; PRG $06195
  $8197: 48          pha    ; PRG $06197
  $8198: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $06198
  $819B: 53 80 04    .db $53 $80 $04  -> vm $8053 argc 4    ; PRG $0619B
  $819E: 8e 7d 73    stx $737d   ; ui_shared_var_737d    ; PRG $0619E
  $81A1: 48          pha    ; PRG $061A1
  $81A2: 48          pha    ; PRG $061A2
  $81A3: 48          pha    ; PRG $061A3
  $81A4: 48          pha    ; PRG $061A4
  $81A5: 48          pha    ; PRG $061A5
  $81A6: a9 12       lda #$12    ; PRG $061A6
  $81A8: 48          pha    ; PRG $061A8
  $81A9: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $061A9
  $81AC: d4 ee 08    .db $d4 $ee $08  -> vm $EED4 argc 8    ; PRG $061AC
  $81AF: 60          rts    ; PRG $061AF

; ---- sub_3_01b6  [stub]  <- (entry: bytecode/OS via $E299)
nat_3_01b0: jsr $E299                    ; 3:81B0  native-call prologue
            .db $00 $00 $00            ; inline: argcount $00, frame $0000
  $81B6: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $061B6
  $81B9: 75 a6 02    .db $75 $a6 $02  -> vm $A675 argc 2    ; PRG $061B9
  $81BC: 8e 7d 73    stx $737d   ; ui_shared_var_737d    ; PRG $061BC
  $81BF: 48          pha    ; PRG $061BF
  $81C0: 48          pha    ; PRG $061C0
  $81C1: 48          pha    ; PRG $061C1
  $81C2: 48          pha    ; PRG $061C2
  $81C3: 48          pha    ; PRG $061C3
  $81C4: a9 12       lda #$12    ; PRG $061C4
  $81C6: 48          pha    ; PRG $061C6
  $81C7: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $061C7
  $81CA: d4 ee 08    .db $d4 $ee $08  -> vm $EED4 argc 8    ; PRG $061CA
  $81CD: a9 9c       lda #$9c    ; PRG $061CD
  $81CF: 48          pha    ; PRG $061CF
  $81D0: a9 a8       lda #$a8    ; PRG $061D0
  $81D2: 48          pha    ; PRG $061D2
  $81D3: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $061D3
  $81D6: 53 80 04    .db $53 $80 $04  -> vm $8053 argc 4    ; PRG $061D6
  $81D9: 60          rts    ; PRG $061D9

; ---- sub_3_01e0  [stub]  <- (entry: bytecode/OS via $E299)
nat_3_01da: jsr $E299                    ; 3:81DA  native-call prologue
            .db $00 $fe $ff            ; inline: argcount $00, frame $fffe
  $81E0: a9 04       lda #$04    ; PRG $061E0
  $81E2: 85 18       sta $18    ; PRG $061E2
  $81E4: 86 19       stx $19    ; PRG $061E4
  $81E6: a0 0b       ldy #$0b    ; PRG $061E6
  $81E8: b1 04       lda ($04),y    ; PRG $061E8
  $81EA: 85 14       sta $14    ; PRG $061EA
  $81EC: c8          iny    ; PRG $061EC
  $81ED: b1 04       lda ($04),y    ; PRG $061ED
  $81EF: 85 15       sta $15    ; PRG $061EF
  $81F1: a0 14       ldy #$14    ; PRG $061F1
  $81F3: a2 18       ldx #$18    ; PRG $061F3
  $81F5: a9 10       lda #$10    ; PRG $061F5
  $81F7: 20 fd e1    jsr $e1fd   ; div16_unsigned    ; PRG $061F7
  $81FA: a5 10       lda $10    ; PRG $061FA
  $81FC: 05 11       ora $11    ; PRG $061FC
  $81FE: f0 03       beq $8203    ; PRG $061FE
  $8200: 4c 0f 82    jmp $820f    ; PRG $06200
  $8203: 98          tya    ; PRG $06203
  $8204: a0 fe       ldy #$fe    ; PRG $06204
  $8206: 91 06       sta ($06),y    ; PRG $06206
  $8208: 8a          txa    ; PRG $06208
  $8209: c8          iny    ; PRG $06209
  $820A: 91 06       sta ($06),y    ; PRG $0620A
  $820C: 4c 17 82    jmp $8217    ; PRG $0620C
  $820F: 8a          txa    ; PRG $0620F
  $8210: a0 fe       ldy #$fe    ; PRG $06210
  $8212: 91 06       sta ($06),y    ; PRG $06212
  $8214: c8          iny    ; PRG $06214
  $8215: 91 06       sta ($06),y    ; PRG $06215
  $8217: a9 64       lda #$64    ; PRG $06217
  $8219: 85 18       sta $18    ; PRG $06219
  $821B: 86 19       stx $19    ; PRG $0621B
  $821D: a0 0b       ldy #$0b    ; PRG $0621D
  $821F: b1 04       lda ($04),y    ; PRG $0621F
  $8221: 85 14       sta $14    ; PRG $06221
  $8223: c8          iny    ; PRG $06223
  $8224: b1 04       lda ($04),y    ; PRG $06224
  $8226: 85 15       sta $15    ; PRG $06226
  $8228: a0 14       ldy #$14    ; PRG $06228
  $822A: a2 18       ldx #$18    ; PRG $0622A
  $822C: a9 10       lda #$10    ; PRG $0622C
  $822E: 20 fd e1    jsr $e1fd   ; div16_unsigned    ; PRG $0622E
  $8231: a5 10       lda $10    ; PRG $06231
  $8233: 05 11       ora $11    ; PRG $06233
  $8235: f0 03       beq $823a    ; PRG $06235
  $8237: 4c 6d 82    jmp $826d    ; PRG $06237
  $823A: a9 90       lda #$90    ; PRG $0623A
  $823C: 85 18       sta $18    ; PRG $0623C
  $823E: 84 19       sty $19    ; PRG $0623E
  $8240: a0 0b       ldy #$0b    ; PRG $06240
  $8242: b1 04       lda ($04),y    ; PRG $06242
  $8244: 85 14       sta $14    ; PRG $06244
  $8246: c8          iny    ; PRG $06246
  $8247: b1 04       lda ($04),y    ; PRG $06247
  $8249: 85 15       sta $15    ; PRG $06249
  $824B: a0 14       ldy #$14    ; PRG $0624B
  $824D: a2 18       ldx #$18    ; PRG $0624D
  $824F: a9 10       lda #$10    ; PRG $0624F
  $8251: 20 fd e1    jsr $e1fd   ; div16_unsigned    ; PRG $06251
  $8254: a5 10       lda $10    ; PRG $06254
  $8256: 05 11       ora $11    ; PRG $06256
  $8258: f0 03       beq $825d    ; PRG $06258
  $825A: 4c 64 82    jmp $8264    ; PRG $0625A
  $825D: 86 18       stx $18    ; PRG $0625D
  $825F: 86 19       stx $19    ; PRG $0625F
  $8261: 4c 6a 82    jmp $826a    ; PRG $06261
  $8264: a9 01       lda #$01    ; PRG $06264
  $8266: 85 18       sta $18    ; PRG $06266
  $8268: 86 19       stx $19    ; PRG $06268
  $826A: 4c 71 82    jmp $8271    ; PRG $0626A
  $826D: 86 18       stx $18    ; PRG $0626D
  $826F: 86 19       stx $19    ; PRG $0626F
  $8271: 38          sec    ; PRG $06271
  $8272: a0 fe       ldy #$fe    ; PRG $06272
  $8274: b1 06       lda ($06),y    ; PRG $06274
  $8276: e5 18       sbc $18    ; PRG $06276
  $8278: 91 06       sta ($06),y    ; PRG $06278
  $827A: c8          iny    ; PRG $0627A
  $827B: b1 06       lda ($06),y    ; PRG $0627B
  $827D: e5 19       sbc $19    ; PRG $0627D
  $827F: 91 06       sta ($06),y    ; PRG $0627F
  $8281: 88          dey    ; PRG $06281
  $8282: b1 06       lda ($06),y    ; PRG $06282
  $8284: 85 08       sta $08    ; PRG $06284
  $8286: c8          iny    ; PRG $06286
  $8287: b1 06       lda ($06),y    ; PRG $06287
  $8289: 85 09       sta $09    ; PRG $06289
  $828B: 60          rts    ; PRG $0628B

; ---- sub_3_0292  [stub]  <- (entry: bytecode/OS via $E299)
nat_3_028c: jsr $E299                    ; 3:828C  native-call prologue
            .db $00 $fe $ff            ; inline: argcount $00, frame $fffe
  $8292: a9 01       lda #$01    ; PRG $06292
  $8294: 85 18       sta $18    ; PRG $06294
  $8296: 86 19       stx $19    ; PRG $06296
  $8298: a0 0d       ldy #$0d    ; PRG $06298
  $829A: b1 04       lda ($04),y    ; PRG $0629A
  $829C: 85 14       sta $14    ; PRG $0629C
  $829E: c8          iny    ; PRG $0629E
  $829F: b1 04       lda ($04),y    ; PRG $0629F
  $82A1: 85 15       sta $15    ; PRG $062A1
  $82A3: a0 14       ldy #$14    ; PRG $062A3
  $82A5: a2 18       ldx #$18    ; PRG $062A5
  $82A7: a9 10       lda #$10    ; PRG $062A7
  $82A9: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $062A9
  $82AC: 18          clc    ; PRG $062AC
  $82AD: a5 10       lda $10    ; PRG $062AD
  $82AF: 69 b0       adc #$b0    ; PRG $062AF
  $82B1: 85 18       sta $18    ; PRG $062B1
  $82B3: a5 11       lda $11    ; PRG $062B3
  $82B5: 69 9c       adc #$9c    ; PRG $062B5
  $82B7: 85 19       sta $19    ; PRG $062B7
  $82B9: a1 18       lda ($18,x)    ; PRG $062B9
  $82BB: a0 fe       ldy #$fe    ; PRG $062BB
  $82BD: 91 06       sta ($06),y    ; PRG $062BD
  $82BF: a0 01       ldy #$01    ; PRG $062BF
  $82C1: b1 18       lda ($18),y    ; PRG $062C1
  $82C3: a0 ff       ldy #$ff    ; PRG $062C3
  $82C5: 91 06       sta ($06),y    ; PRG $062C5
  $82C7: a0 0d       ldy #$0d    ; PRG $062C7
  $82C9: b1 04       lda ($04),y    ; PRG $062C9
  $82CB: c9 01       cmp #$01    ; PRG $062CB
  $82CD: d0 05       bne $82d4    ; PRG $062CD
  $82CF: c8          iny    ; PRG $062CF
  $82D0: b1 04       lda ($04),y    ; PRG $062D0
  $82D2: c9 00       cmp #$00    ; PRG $062D2
  $82D4: f0 03       beq $82d9    ; PRG $062D4
  $82D6: 4c 0c 83    jmp $830c    ; PRG $062D6
  $82D9: 18          clc    ; PRG $062D9
  $82DA: a9 dc       lda #$dc    ; PRG $062DA
  $82DC: a0 0b       ldy #$0b    ; PRG $062DC
  $82DE: 71 04       adc ($04),y    ; PRG $062DE
  $82E0: 85 18       sta $18    ; PRG $062E0
  $82E2: a9 05       lda #$05    ; PRG $062E2
  $82E4: c8          iny    ; PRG $062E4
  $82E5: 71 04       adc ($04),y    ; PRG $062E5
  $82E7: 85 19       sta $19    ; PRG $062E7
  $82E9: a5 19       lda $19    ; PRG $062E9
  $82EB: 48          pha    ; PRG $062EB
  $82EC: a5 18       lda $18    ; PRG $062EC
  $82EE: 48          pha    ; PRG $062EE
  $82EF: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $062EF
  $82F2: da 81 04    .db $da $81 $04  -> vm $81DA argc 4    ; PRG $062F2
  $82F5: a5 08       lda $08    ; PRG $062F5
  $82F7: 05 09       ora $09    ; PRG $062F7
  $82F9: d0 03       bne $82fe    ; PRG $062F9
  $82FB: 4c 0c 83    jmp $830c    ; PRG $062FB
  $82FE: 18          clc    ; PRG $062FE
  $82FF: 98          tya    ; PRG $062FF
  $8300: a0 fe       ldy #$fe    ; PRG $06300
  $8302: 71 06       adc ($06),y    ; PRG $06302
  $8304: 91 06       sta ($06),y    ; PRG $06304
  $8306: 8a          txa    ; PRG $06306
  $8307: c8          iny    ; PRG $06307
  $8308: 71 06       adc ($06),y    ; PRG $06308
  $830A: 91 06       sta ($06),y    ; PRG $0630A
  $830C: a0 fe       ldy #$fe    ; PRG $0630C
  $830E: b1 06       lda ($06),y    ; PRG $0630E
  $8310: 85 08       sta $08    ; PRG $06310
  $8312: c8          iny    ; PRG $06312
  $8313: b1 06       lda ($06),y    ; PRG $06313
  $8315: 85 09       sta $09    ; PRG $06315
  $8317: 60          rts    ; PRG $06317

; ---- sub_3_031e  [stub]  <- (entry: bytecode/OS via $E299)
nat_3_0318: jsr $E299                    ; 3:8318  native-call prologue
            .db $00 $f1 $ff            ; inline: argcount $00, frame $fff1
  $831E: 18          clc    ; PRG $0631E
  $831F: a9 f5       lda #$f5    ; PRG $0631F
  $8321: 65 06       adc $06    ; PRG $06321
  $8323: 85 18       sta $18    ; PRG $06323
  $8325: 8a          txa    ; PRG $06325
  $8326: 65 07       adc $07    ; PRG $06326
  $8328: 85 19       sta $19    ; PRG $06328
  $832A: a5 19       lda $19    ; PRG $0632A
  $832C: 48          pha    ; PRG $0632C
  $832D: a5 18       lda $18    ; PRG $0632D
  $832F: 48          pha    ; PRG $0632F
  $8330: 8a          txa    ; PRG $06330
  $8331: 48          pha    ; PRG $06331
  $8332: 48          pha    ; PRG $06332
  $8333: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $06333
  $8336: 26 d0 06    .db $26 $d0 $06  -> vm $D026 argc 6    ; PRG $06336
  $8339: a5 08       lda $08    ; PRG $06339
  $833B: a0 fc       ldy #$fc    ; PRG $0633B
  $833D: 91 06       sta ($06),y    ; PRG $0633D
  $833F: a5 09       lda $09    ; PRG $0633F
  $8341: c8          iny    ; PRG $06341
  $8342: 91 06       sta ($06),y    ; PRG $06342
  $8344: 8a          txa    ; PRG $06344
  $8345: c8          iny    ; PRG $06345
  $8346: 91 06       sta ($06),y    ; PRG $06346
  $8348: c8          iny    ; PRG $06348
  $8349: 91 06       sta ($06),y    ; PRG $06349
  $834B: 18          clc    ; PRG $0634B
  $834C: a9 f5       lda #$f5    ; PRG $0634C
  $834E: 65 06       adc $06    ; PRG $0634E
  $8350: 85 18       sta $18    ; PRG $06350
  $8352: 8a          txa    ; PRG $06352
  $8353: 65 07       adc $07    ; PRG $06353
  $8355: 85 19       sta $19    ; PRG $06355
  $8357: a5 18       lda $18    ; PRG $06357
  $8359: a0 f3       ldy #$f3    ; PRG $06359
  $835B: 91 06       sta ($06),y    ; PRG $0635B
  $835D: a5 19       lda $19    ; PRG $0635D
  $835F: c8          iny    ; PRG $0635F
  $8360: 91 06       sta ($06),y    ; PRG $06360
  $8362: 18          clc    ; PRG $06362
  $8363: a5 18       lda $18    ; PRG $06363
  $8365: a0 fc       ldy #$fc    ; PRG $06365
  $8367: 71 06       adc ($06),y    ; PRG $06367
  $8369: a0 f1       ldy #$f1    ; PRG $06369
  $836B: 91 06       sta ($06),y    ; PRG $0636B
  $836D: a5 19       lda $19    ; PRG $0636D
  $836F: a0 fd       ldy #$fd    ; PRG $0636F
  $8371: 71 06       adc ($06),y    ; PRG $06371
  $8373: a0 f2       ldy #$f2    ; PRG $06373
  $8375: 91 06       sta ($06),y    ; PRG $06375
  $8377: 4c 89 83    jmp $8389    ; PRG $06377
  $837A: 18          clc    ; PRG $0637A
  $837B: a9 01       lda #$01    ; PRG $0637B
  $837D: a0 f3       ldy #$f3    ; PRG $0637D
  $837F: 71 06       adc ($06),y    ; PRG $0637F
  $8381: 91 06       sta ($06),y    ; PRG $06381
  $8383: 8a          txa    ; PRG $06383
  $8384: c8          iny    ; PRG $06384
  $8385: 71 06       adc ($06),y    ; PRG $06385
  $8387: 91 06       sta ($06),y    ; PRG $06387
  $8389: a0 f3       ldy #$f3    ; PRG $06389
  $838B: b1 06       lda ($06),y    ; PRG $0638B
  $838D: a0 f1       ldy #$f1    ; PRG $0638D
  $838F: d1 06       cmp ($06),y    ; PRG $0638F
  $8391: a0 f4       ldy #$f4    ; PRG $06391
  $8393: b1 06       lda ($06),y    ; PRG $06393
  $8395: a0 f2       ldy #$f2    ; PRG $06395
  $8397: f1 06       sbc ($06),y    ; PRG $06397
  $8399: 90 03       bcc $839e    ; PRG $06399
  $839B: 4c e3 83    jmp $83e3   ; event_guild_hook    ; PRG $0639B
  $839E: a9 18       lda #$18    ; PRG $0639E
  $83A0: 85 18       sta $18    ; PRG $063A0
  $83A2: 86 19       stx $19    ; PRG $063A2
  $83A4: c8          iny    ; PRG $063A4
  $83A5: b1 06       lda ($06),y    ; PRG $063A5
  $83A7: 85 14       sta $14    ; PRG $063A7
  $83A9: c8          iny    ; PRG $063A9
  $83AA: b1 06       lda ($06),y    ; PRG $063AA
  $83AC: 85 15       sta $15    ; PRG $063AC
  $83AE: a1 14       lda ($14,x)    ; PRG $063AE
  $83B0: 85 10       sta $10    ; PRG $063B0
  $83B2: 86 11       stx $11    ; PRG $063B2
  $83B4: a0 10       ldy #$10    ; PRG $063B4
  $83B6: a2 18       ldx #$18    ; PRG $063B6
  $83B8: a9 14       lda #$14    ; PRG $063B8
  $83BA: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $063BA
  $83BD: 18          clc    ; PRG $063BD
  $83BE: a5 14       lda $14    ; PRG $063BE
  $83C0: 69 bb       adc #$bb    ; PRG $063C0
  $83C2: 85 18       sta $18    ; PRG $063C2
  $83C4: a5 15       lda $15    ; PRG $063C4
  $83C6: 69 6a       adc #$6a    ; PRG $063C6
  $83C8: 85 19       sta $19    ; PRG $063C8
  $83CA: a1 18       lda ($18,x)    ; PRG $063CA
  $83CC: 85 14       sta $14    ; PRG $063CC
  $83CE: 86 15       stx $15    ; PRG $063CE
  $83D0: 18          clc    ; PRG $063D0
  $83D1: a0 fe       ldy #$fe    ; PRG $063D1
  $83D3: b1 06       lda ($06),y    ; PRG $063D3
  $83D5: 65 14       adc $14    ; PRG $063D5
  $83D7: 91 06       sta ($06),y    ; PRG $063D7
  $83D9: c8          iny    ; PRG $063D9
  $83DA: b1 06       lda ($06),y    ; PRG $063DA
  $83DC: 65 15       adc $15    ; PRG $063DC
  $83DE: 91 06       sta ($06),y    ; PRG $063DE
  $83E0: 4c 7a 83    jmp $837a    ; PRG $063E0
  $83E3: a0 fc       ldy #$fc    ; PRG $063E3
  $83E5: b1 06       lda ($06),y    ; PRG $063E5
  $83E7: 85 18       sta $18    ; PRG $063E7
  $83E9: c8          iny    ; PRG $063E9
  $83EA: b1 06       lda ($06),y    ; PRG $063EA
  $83EC: 85 19       sta $19    ; PRG $063EC
  $83EE: c8          iny    ; PRG $063EE
  $83EF: b1 06       lda ($06),y    ; PRG $063EF
  $83F1: 85 14       sta $14    ; PRG $063F1
  $83F3: c8          iny    ; PRG $063F3
  $83F4: b1 06       lda ($06),y    ; PRG $063F4
  $83F6: 85 15       sta $15    ; PRG $063F6
  $83F8: a0 14       ldy #$14    ; PRG $063F8
  $83FA: a2 18       ldx #$18    ; PRG $063FA
  $83FC: a9 10       lda #$10    ; PRG $063FC
  $83FE: 20 d9 e1    jsr $e1d9   ; alu_div_push_remainder    ; PRG $063FE
  $8401: 18          clc    ; PRG $06401
  $8402: 98          tya    ; PRG $06402
  $8403: 65 10       adc $10    ; PRG $06403
  $8405: a0 fe       ldy #$fe    ; PRG $06405
  $8407: 91 06       sta ($06),y    ; PRG $06407
  $8409: 8a          txa    ; PRG $06409
  $840A: 65 11       adc $11    ; PRG $0640A
  $840C: c8          iny    ; PRG $0640C
  $840D: 91 06       sta ($06),y    ; PRG $0640D
  $840F: ad 84 70    lda $7084    ; PRG $0640F
  $8412: 85 18       sta $18    ; PRG $06412
  $8414: 86 19       stx $19    ; PRG $06414
  $8416: a9 07       lda #$07    ; PRG $06416
  $8418: 25 18       and $18    ; PRG $06418
  $841A: a0 fa       ldy #$fa    ; PRG $0641A
  $841C: 91 06       sta ($06),y    ; PRG $0641C
  $841E: 8a          txa    ; PRG $0641E
  $841F: c8          iny    ; PRG $0641F
  $8420: 91 06       sta ($06),y    ; PRG $06420
  $8422: a0 fe       ldy #$fe    ; PRG $06422
  $8424: b1 06       lda ($06),y    ; PRG $06424
  $8426: 85 18       sta $18    ; PRG $06426
  $8428: c8          iny    ; PRG $06428
  $8429: b1 06       lda ($06),y    ; PRG $06429
  $842B: 85 19       sta $19    ; PRG $0642B
  $842D: a9 06       lda #$06    ; PRG $0642D
  $842F: 85 14       sta $14    ; PRG $0642F
  $8431: 86 15       stx $15    ; PRG $06431
  $8433: a0 fa       ldy #$fa    ; PRG $06433
  $8435: b1 06       lda ($06),y    ; PRG $06435
  $8437: 85 10       sta $10    ; PRG $06437
  $8439: c8          iny    ; PRG $06439
  $843A: b1 06       lda ($06),y    ; PRG $0643A
  $843C: 85 11       sta $11    ; PRG $0643C
  $843E: a0 10       ldy #$10    ; PRG $0643E
  $8440: a2 14       ldx #$14    ; PRG $06440
  $8442: a9 0c       lda #$0c    ; PRG $06442
  $8444: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $06444
  $8447: 18          clc    ; PRG $06447
  $8448: 98          tya    ; PRG $06448
  $8449: 65 0c       adc $0c    ; PRG $06449
  $844B: 85 14       sta $14    ; PRG $0644B
  $844D: 8a          txa    ; PRG $0644D
  $844E: 65 0d       adc $0d    ; PRG $0644E
  $8450: 85 15       sta $15    ; PRG $06450
  $8452: a0 14       ldy #$14    ; PRG $06452
  $8454: a2 18       ldx #$18    ; PRG $06454
  $8456: a9 10       lda #$10    ; PRG $06456
  $8458: 20 d9 e1    jsr $e1d9   ; alu_div_push_remainder    ; PRG $06458
  $845B: a5 10       lda $10    ; PRG $0645B
  $845D: a0 fc       ldy #$fc    ; PRG $0645D
  $845F: 91 06       sta ($06),y    ; PRG $0645F
  $8461: a5 11       lda $11    ; PRG $06461
  $8463: c8          iny    ; PRG $06463
  $8464: 91 06       sta ($06),y    ; PRG $06464
  $8466: a9 02       lda #$02    ; PRG $06466
  $8468: 48          pha    ; PRG $06468
  $8469: a9 58       lda #$58    ; PRG $06469
  $846B: 48          pha    ; PRG $0646B
  $846C: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0646C
  $846F: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $0646F
  $8472: a5 08       lda $08    ; PRG $06472
  $8474: a0 fc       ldy #$fc    ; PRG $06474
  $8476: d1 06       cmp ($06),y    ; PRG $06476
  $8478: a5 09       lda $09    ; PRG $06478
  $847A: c8          iny    ; PRG $0647A
  $847B: f1 06       sbc ($06),y    ; PRG $0647B
  $847D: 90 03       bcc $8482    ; PRG $0647D
  $847F: 4c e2 84    jmp $84e2    ; PRG $0647F
  $8482: 8a          txa    ; PRG $06482
  $8483: 48          pha    ; PRG $06483
  $8484: a9 03       lda #$03    ; PRG $06484
  $8486: 48          pha    ; PRG $06486
  $8487: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $06487
  $848A: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $0648A
  $848D: a5 08       lda $08    ; PRG $0648D
  $848F: 05 09       ora $09    ; PRG $0648F
  $8491: f0 03       beq $8496    ; PRG $06491
  $8493: 4c c9 84    jmp $84c9   ; court_pose_select    ; PRG $06493
  $8496: 98          tya    ; PRG $06496
  $8497: a0 fc       ldy #$fc    ; PRG $06497
  $8499: d1 06       cmp ($06),y    ; PRG $06499
  $849B: 8a          txa    ; PRG $0649B
  $849C: c8          iny    ; PRG $0649C
  $849D: f1 06       sbc ($06),y    ; PRG $0649D
  $849F: 90 03       bcc $84a4    ; PRG $0649F
  $84A1: 4c c9 84    jmp $84c9   ; court_pose_select    ; PRG $064A1
  $84A4: a9 05       lda #$05    ; PRG $064A4
  $84A6: a0 fa       ldy #$fa    ; PRG $064A6
  $84A8: d1 06       cmp ($06),y    ; PRG $064A8
  $84AA: 8a          txa    ; PRG $064AA
  $84AB: c8          iny    ; PRG $064AB
  $84AC: f1 06       sbc ($06),y    ; PRG $064AC
  $84AE: 90 03       bcc $84b3    ; PRG $064AE
  $84B0: 4c c9 84    jmp $84c9   ; court_pose_select    ; PRG $064B0
  $84B3: 18          clc    ; PRG $064B3
  $84B4: 98          tya    ; PRG $064B4
  $84B5: 88          dey    ; PRG $064B5
  $84B6: 71 06       adc ($06),y    ; PRG $064B6
  $84B8: 85 18       sta $18    ; PRG $064B8
  $84BA: a9 ff       lda #$ff    ; PRG $064BA
  $84BC: c8          iny    ; PRG $064BC
  $84BD: 71 06       adc ($06),y    ; PRG $064BD
  $84BF: 85 19       sta $19    ; PRG $064BF
  $84C1: a5 18       lda $18    ; PRG $064C1
  $84C3: 8d 98 72    sta $7298   ; ship_sail_state    ; PRG $064C3
  $84C6: 4c e2 84    jmp $84e2    ; PRG $064C6
  $84C9: ad 81 70    lda $7081    ; PRG $064C9
  $84CC: 85 18       sta $18    ; PRG $064CC
  $84CE: 86 19       stx $19    ; PRG $064CE
  $84D0: a5 18       lda $18    ; PRG $064D0
  $84D2: c9 07       cmp #$07    ; PRG $064D2
  $84D4: a5 19       lda $19    ; PRG $064D4
  $84D6: e9 00       sbc #$00    ; PRG $064D6
  $84D8: b0 03       bcs $84dd    ; PRG $064D8
  $84DA: 4c e2 84    jmp $84e2    ; PRG $064DA
  $84DD: a9 03       lda #$03    ; PRG $064DD
  $84DF: 8d 98 72    sta $7298   ; ship_sail_state    ; PRG $064DF
  $84E2: 60          rts    ; PRG $064E2

; ---- sub_3_04e9  [stub]  <- (entry: bytecode/OS via $E299)
nat_3_04e3: jsr $E299                    ; 3:84E3  native-call prologue
            .db $00 $00 $00            ; inline: argcount $00, frame $0000
  $84E9: ad 68 70    lda $7068    ; PRG $064E9
  $84EC: 85 18       sta $18    ; PRG $064EC
  $84EE: 86 19       stx $19    ; PRG $064EE
  $84F0: a5 18       lda $18    ; PRG $064F0
  $84F2: c9 01       cmp #$01    ; PRG $064F2
  $84F4: d0 04       bne $84fa    ; PRG $064F4
  $84F6: a5 19       lda $19    ; PRG $064F6
  $84F8: c9 00       cmp #$00    ; PRG $064F8
  $84FA: f0 03       beq $84ff    ; PRG $064FA
  $84FC: 4c 00 85    jmp $8500    ; PRG $064FC
  $84FF: 60          rts    ; PRG $064FF
  $8500: a0 0c       ldy #$0c    ; PRG $06500
  $8502: b1 04       lda ($04),y    ; PRG $06502
  $8504: 48          pha    ; PRG $06504
  $8505: 88          dey    ; PRG $06505
  $8506: b1 04       lda ($04),y    ; PRG $06506
  $8508: 48          pha    ; PRG $06508
  $8509: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $06509
  $850C: 92 b1 04    .db $92 $b1 $04  -> vm $B192 argc 4    ; PRG $0650C
  $850F: 48          pha    ; PRG $0650F
  $8510: a9 03       lda #$03    ; PRG $06510
  $8512: 48          pha    ; PRG $06512
  $8513: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $06513
  $8516: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $06516
  $8519: ad 8a 6b    lda $6b8a   ; game_month    ; PRG $06519
  $851C: 85 18       sta $18    ; PRG $0651C
  $851E: 86 19       stx $19    ; PRG $0651E
  $8520: a9 02       lda #$02    ; PRG $06520
  $8522: c5 18       cmp $18    ; PRG $06522
  $8524: 8a          txa    ; PRG $06524
  $8525: e5 19       sbc $19    ; PRG $06525
  $8527: 90 03       bcc $852c    ; PRG $06527
  $8529: 4c 62 85    jmp $8562   ; calc_sprite_pos    ; PRG $06529
  $852C: ad 8a 6b    lda $6b8a   ; game_month    ; PRG $0652C
  $852F: 85 18       sta $18    ; PRG $0652F
  $8531: 86 19       stx $19    ; PRG $06531
  $8533: a5 18       lda $18    ; PRG $06533
  $8535: c9 09       cmp #$09    ; PRG $06535
  $8537: a5 19       lda $19    ; PRG $06537
  $8539: e9 00       sbc #$00    ; PRG $06539
  $853B: 90 03       bcc $8540    ; PRG $0653B
  $853D: 4c 62 85    jmp $8562   ; calc_sprite_pos    ; PRG $0653D
  $8540: a9 04       lda #$04    ; PRG $06540
  $8542: 85 18       sta $18    ; PRG $06542
  $8544: 86 19       stx $19    ; PRG $06544
  $8546: ad 82 70    lda $7082    ; PRG $06546
  $8549: 85 14       sta $14    ; PRG $06549
  $854B: 86 15       stx $15    ; PRG $0654B
  $854D: a0 14       ldy #$14    ; PRG $0654D
  $854F: a2 18       ldx #$18    ; PRG $0654F
  $8551: a9 10       lda #$10    ; PRG $06551
  $8553: 20 15 e4    jsr $e415   ; alu_shr16_n    ; PRG $06553
  $8556: a9 0f       lda #$0f    ; PRG $06556
  $8558: 25 10       and $10    ; PRG $06558
  $855A: 85 18       sta $18    ; PRG $0655A
  $855C: 8a          txa    ; PRG $0655C
  $855D: 85 19       sta $19    ; PRG $0655D
  $855F: 4c 7a 85    jmp $857a    ; PRG $0655F
  $8562: ad 82 70    lda $7082    ; PRG $06562
  $8565: 85 18       sta $18    ; PRG $06565
  $8567: 86 19       stx $19    ; PRG $06567
  $8569: a9 0f       lda #$0f    ; PRG $06569
  $856B: 25 18       and $18    ; PRG $0656B
  $856D: 85 14       sta $14    ; PRG $0656D
  $856F: 8a          txa    ; PRG $0656F
  $8570: 85 15       sta $15    ; PRG $06570
  $8572: a5 14       lda $14    ; PRG $06572
  $8574: 85 18       sta $18    ; PRG $06574
  $8576: a5 15       lda $15    ; PRG $06576
  $8578: 85 19       sta $19    ; PRG $06578
  $857A: 18          clc    ; PRG $0657A
  $857B: a5 18       lda $18    ; PRG $0657B
  $857D: 65 08       adc $08    ; PRG $0657D
  $857F: 85 14       sta $14    ; PRG $0657F
  $8581: a5 19       lda $19    ; PRG $06581
  $8583: 65 09       adc $09    ; PRG $06583
  $8585: 85 15       sta $15    ; PRG $06585
  $8587: 18          clc    ; PRG $06587
  $8588: a9 07       lda #$07    ; PRG $06588
  $858A: 65 14       adc $14    ; PRG $0658A
  $858C: 85 18       sta $18    ; PRG $0658C
  $858E: 8a          txa    ; PRG $0658E
  $858F: 65 15       adc $15    ; PRG $0658F
  $8591: 85 19       sta $19    ; PRG $06591
  $8593: a9 07       lda #$07    ; PRG $06593
  $8595: 25 18       and $18    ; PRG $06595
  $8597: 85 14       sta $14    ; PRG $06597
  $8599: 8a          txa    ; PRG $06599
  $859A: 85 15       sta $15    ; PRG $0659A
  $859C: a5 14       lda $14    ; PRG $0659C
  $859E: 8d 80 70    sta $7080    ; PRG $0659E
  $85A1: 8a          txa    ; PRG $065A1
  $85A2: 48          pha    ; PRG $065A2
  $85A3: a9 02       lda #$02    ; PRG $065A3
  $85A5: 48          pha    ; PRG $065A5
  $85A6: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $065A6
  $85A9: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $065A9
  $85AC: ad 8a 6b    lda $6b8a   ; game_month    ; PRG $065AC
  $85AF: 85 18       sta $18    ; PRG $065AF
  $85B1: 86 19       stx $19    ; PRG $065B1
  $85B3: a9 02       lda #$02    ; PRG $065B3
  $85B5: c5 18       cmp $18    ; PRG $065B5
  $85B7: 8a          txa    ; PRG $065B7
  $85B8: e5 19       sbc $19    ; PRG $065B8
  $85BA: 90 03       bcc $85bf    ; PRG $065BA
  $85BC: 4c f5 85    jmp $85f5    ; PRG $065BC
  $85BF: ad 8a 6b    lda $6b8a   ; game_month    ; PRG $065BF
  $85C2: 85 18       sta $18    ; PRG $065C2
  $85C4: 86 19       stx $19    ; PRG $065C4
  $85C6: a5 18       lda $18    ; PRG $065C6
  $85C8: c9 09       cmp #$09    ; PRG $065C8
  $85CA: a5 19       lda $19    ; PRG $065CA
  $85CC: e9 00       sbc #$00    ; PRG $065CC
  $85CE: 90 03       bcc $85d3    ; PRG $065CE
  $85D0: 4c f5 85    jmp $85f5    ; PRG $065D0
  $85D3: a9 04       lda #$04    ; PRG $065D3
  $85D5: 85 18       sta $18    ; PRG $065D5
  $85D7: 86 19       stx $19    ; PRG $065D7
  $85D9: ad 83 70    lda $7083    ; PRG $065D9
  $85DC: 85 14       sta $14    ; PRG $065DC
  $85DE: 86 15       stx $15    ; PRG $065DE
  $85E0: a0 14       ldy #$14    ; PRG $065E0
  $85E2: a2 18       ldx #$18    ; PRG $065E2
  $85E4: a9 10       lda #$10    ; PRG $065E4
  $85E6: 20 15 e4    jsr $e415   ; alu_shr16_n    ; PRG $065E6
  $85E9: a9 0f       lda #$0f    ; PRG $065E9
  $85EB: 25 10       and $10    ; PRG $065EB
  $85ED: 85 18       sta $18    ; PRG $065ED
  $85EF: 8a          txa    ; PRG $065EF
  $85F0: 85 19       sta $19    ; PRG $065F0
  $85F2: 4c 0d 86    jmp $860d    ; PRG $065F2
  $85F5: ad 83 70    lda $7083    ; PRG $065F5
  $85F8: 85 18       sta $18    ; PRG $065F8
  $85FA: 86 19       stx $19    ; PRG $065FA
  $85FC: a9 0f       lda #$0f    ; PRG $065FC
  $85FE: 25 18       and $18    ; PRG $065FE
  $8600: 85 14       sta $14    ; PRG $06600
  $8602: 8a          txa    ; PRG $06602
  $8603: 85 15       sta $15    ; PRG $06603
  $8605: a5 14       lda $14    ; PRG $06605
  $8607: 85 18       sta $18    ; PRG $06607
  $8609: a5 15       lda $15    ; PRG $06609
  $860B: 85 19       sta $19    ; PRG $0660B
  $860D: 18          clc    ; PRG $0660D
  $860E: a5 18       lda $18    ; PRG $0660E
  $8610: 65 08       adc $08    ; PRG $06610
  $8612: 85 14       sta $14    ; PRG $06612
  $8614: a5 19       lda $19    ; PRG $06614
  $8616: 65 09       adc $09    ; PRG $06616
  $8618: 85 15       sta $15    ; PRG $06618
  $861A: a5 14       lda $14    ; PRG $0661A
  $861C: 8d 81 70    sta $7081    ; PRG $0661C
  $861F: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0661F
  $8622: 18 83 02    .db $18 $83 $02  -> vm $8318 argc 2    ; PRG $06622
  $8625: ad 71 66    lda $6671   ; sprite_mode_flags    ; PRG $06625
  $8628: 85 18       sta $18    ; PRG $06628
  $862A: 86 19       stx $19    ; PRG $0662A
  $862C: a5 18       lda $18    ; PRG $0662C
  $862E: 29 20       and #$20    ; PRG $0662E
  $8630: d0 03       bne $8635    ; PRG $06630
  $8632: 4c 5f 86    jmp $865f    ; PRG $06632
  $8635: ad 71 66    lda $6671   ; sprite_mode_flags    ; PRG $06635
  $8638: 85 18       sta $18    ; PRG $06638
  $863A: 86 19       stx $19    ; PRG $0663A
  $863C: a5 18       lda $18    ; PRG $0663C
  $863E: 29 40       and #$40    ; PRG $0663E
  $8640: f0 03       beq $8645    ; PRG $06640
  $8642: 4c 5f 86    jmp $865f    ; PRG $06642
  $8645: a0 0b       ldy #$0b    ; PRG $06645
  $8647: b1 04       lda ($04),y    ; PRG $06647
  $8649: c9 03       cmp #$03    ; PRG $06649
  $864B: c8          iny    ; PRG $0664B
  $864C: b1 04       lda ($04),y    ; PRG $0664C
  $864E: e9 00       sbc #$00    ; PRG $0664E
  $8650: 90 03       bcc $8655    ; PRG $06650
  $8652: 4c 5f 86    jmp $865f    ; PRG $06652
  $8655: 8a          txa    ; PRG $06655
  $8656: 48          pha    ; PRG $06656
  $8657: 98          tya    ; PRG $06657
  $8658: 48          pha    ; PRG $06658
  $8659: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $06659
  $865C: a5 d4 04    .db $a5 $d4 $04  -> vm $D4A5 argc 4    ; PRG $0665C
  $865F: 60          rts    ; PRG $0665F

; ---- sub_3_0666  [stub]  <- (entry: bytecode/OS via $E299)
nat_3_0660: jsr $E299                    ; 3:8660  native-call prologue
            .db $00 $f4 $ff            ; inline: argcount $00, frame $fff4
  $8666: 48          pha    ; PRG $06666
  $8667: a9 14       lda #$14    ; PRG $06667
  $8669: 48          pha    ; PRG $06669
  $866A: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0666A
  $866D: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $0666D
  $8670: a5 08       lda $08    ; PRG $06670
  $8672: 05 09       ora $09    ; PRG $06672
  $8674: f0 03       beq $8679    ; PRG $06674
  $8676: 4c 84 86    jmp $8684    ; PRG $06676
  $8679: 8a          txa    ; PRG $06679
  $867A: 48          pha    ; PRG $0667A
  $867B: a9 26       lda #$26    ; PRG $0667B
  $867D: 48          pha    ; PRG $0667D
  $867E: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0667E
  $8681: a5 d4 04    .db $a5 $d4 $04  -> vm $D4A5 argc 4    ; PRG $06681
  $8684: a9 62       lda #$62    ; PRG $06684
  $8686: a0 fc       ldy #$fc    ; PRG $06686
  $8688: 91 06       sta ($06),y    ; PRG $06688
  $868A: a9 66       lda #$66    ; PRG $0668A
  $868C: c8          iny    ; PRG $0668C
  $868D: 91 06       sta ($06),y    ; PRG $0668D
  $868F: 8a          txa    ; PRG $0668F
  $8690: c8          iny    ; PRG $06690
  $8691: 91 06       sta ($06),y    ; PRG $06691
  $8693: c8          iny    ; PRG $06693
  $8694: 91 06       sta ($06),y    ; PRG $06694
  $8696: 4c b6 86    jmp $86b6    ; PRG $06696
  $8699: 18          clc    ; PRG $06699
  $869A: a9 10       lda #$10    ; PRG $0669A
  $869C: a0 fc       ldy #$fc    ; PRG $0669C
  $869E: 71 06       adc ($06),y    ; PRG $0669E
  $86A0: 91 06       sta ($06),y    ; PRG $066A0
  $86A2: 8a          txa    ; PRG $066A2
  $86A3: c8          iny    ; PRG $066A3
  $86A4: 71 06       adc ($06),y    ; PRG $066A4
  $86A6: 91 06       sta ($06),y    ; PRG $066A6
  $86A8: 18          clc    ; PRG $066A8
  $86A9: a9 01       lda #$01    ; PRG $066A9
  $86AB: c8          iny    ; PRG $066AB
  $86AC: 71 06       adc ($06),y    ; PRG $066AC
  $86AE: 91 06       sta ($06),y    ; PRG $066AE
  $86B0: 8a          txa    ; PRG $066B0
  $86B1: c8          iny    ; PRG $066B1
  $86B2: 71 06       adc ($06),y    ; PRG $066B2
  $86B4: 91 06       sta ($06),y    ; PRG $066B4
  $86B6: a0 fe       ldy #$fe    ; PRG $066B6
  $86B8: b1 06       lda ($06),y    ; PRG $066B8
  $86BA: c9 15       cmp #$15    ; PRG $066BA
  $86BC: c8          iny    ; PRG $066BC
  $86BD: b1 06       lda ($06),y    ; PRG $066BD
  $86BF: e9 00       sbc #$00    ; PRG $066BF
  $86C1: 90 03       bcc $86c6    ; PRG $066C1
  $86C3: 4c e8 87    jmp $87e8    ; PRG $066C3
  $86C6: a0 fc       ldy #$fc    ; PRG $066C6
  $86C8: b1 06       lda ($06),y    ; PRG $066C8
  $86CA: 85 18       sta $18    ; PRG $066CA
  $86CC: c8          iny    ; PRG $066CC
  $86CD: b1 06       lda ($06),y    ; PRG $066CD
  $86CF: 85 19       sta $19    ; PRG $066CF
  $86D1: a0 0f       ldy #$0f    ; PRG $066D1
  $86D3: b1 18       lda ($18),y    ; PRG $066D3
  $86D5: 85 14       sta $14    ; PRG $066D5
  $86D7: 86 15       stx $15    ; PRG $066D7
  $86D9: a5 14       lda $14    ; PRG $066D9
  $86DB: 29 08       and #$08    ; PRG $066DB
  $86DD: f0 03       beq $86e2    ; PRG $066DD
  $86DF: 4c dd 87    jmp $87dd    ; PRG $066DF
  $86E2: a0 fc       ldy #$fc    ; PRG $066E2
  $86E4: b1 06       lda ($06),y    ; PRG $066E4
  $86E6: 85 18       sta $18    ; PRG $066E6
  $86E8: c8          iny    ; PRG $066E8
  $86E9: b1 06       lda ($06),y    ; PRG $066E9
  $86EB: 85 19       sta $19    ; PRG $066EB
  $86ED: a9 ef       lda #$ef    ; PRG $066ED
  $86EF: a0 0f       ldy #$0f    ; PRG $066EF
  $86F1: 31 18       and ($18),y    ; PRG $066F1
  $86F3: 91 18       sta ($18),y    ; PRG $066F3
  $86F5: a0 fc       ldy #$fc    ; PRG $066F5
  $86F7: b1 06       lda ($06),y    ; PRG $066F7
  $86F9: 85 18       sta $18    ; PRG $066F9
  $86FB: c8          iny    ; PRG $066FB
  $86FC: b1 06       lda ($06),y    ; PRG $066FC
  $86FE: 85 19       sta $19    ; PRG $066FE
  $8700: a0 0f       ldy #$0f    ; PRG $06700
  $8702: b1 18       lda ($18),y    ; PRG $06702
  $8704: 85 14       sta $14    ; PRG $06704
  $8706: 86 15       stx $15    ; PRG $06706
  $8708: a5 14       lda $14    ; PRG $06708
  $870A: 29 02       and #$02    ; PRG $0670A
  $870C: d0 03       bne $8711    ; PRG $0670C
  $870E: 4c dd 87    jmp $87dd    ; PRG $0670E
  $8711: a0 fe       ldy #$fe    ; PRG $06711
  $8713: b1 06       lda ($06),y    ; PRG $06713
  $8715: c8          iny    ; PRG $06715
  $8716: 11 06       ora ($06),y    ; PRG $06716
  $8718: f0 03       beq $871d    ; PRG $06718
  $871A: 4c 59 87    jmp $8759   ; find_ship_cargo_b    ; PRG $0671A
  $871D: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0671D
  $8720: 70 81 02    .db $70 $81 $02  -> vm $8170 argc 2    ; PRG $06720
  $8723: 48          pha    ; PRG $06723
  $8724: 98          tya    ; PRG $06724
  $8725: 48          pha    ; PRG $06725
  $8726: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $06726
  $8729: a5 d4 04    .db $a5 $d4 $04  -> vm $D4A5 argc 4    ; PRG $06729
  $872C: ad 9c 72    lda $729c    ; PRG $0672C
  $872F: d0 03       bne $8734    ; PRG $0672F
  $8731: 4c 53 87    jmp $8753    ; PRG $06731
  $8734: ad 9c 72    lda $729c    ; PRG $06734
  $8737: 85 18       sta $18    ; PRG $06737
  $8739: 86 19       stx $19    ; PRG $06739
  $873B: 18          clc    ; PRG $0673B
  $873C: a9 20       lda #$20    ; PRG $0673C
  $873E: 65 18       adc $18    ; PRG $0673E
  $8740: 85 14       sta $14    ; PRG $06740
  $8742: 8a          txa    ; PRG $06742
  $8743: 65 19       adc $19    ; PRG $06743
  $8745: 85 15       sta $15    ; PRG $06745
  $8747: a5 15       lda $15    ; PRG $06747
  $8749: 48          pha    ; PRG $06749
  $874A: a5 14       lda $14    ; PRG $0674A
  $874C: 48          pha    ; PRG $0674C
  $874D: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0674D
  $8750: a5 d4 04    .db $a5 $d4 $04  -> vm $D4A5 argc 4    ; PRG $06750
  $8753: 8e 8c 6b    stx $6b8c    ; PRG $06753
  $8756: 4c ca 87    jmp $87ca   ; duel_87ca    ; PRG $06756
  $8759: a9 33       lda #$33    ; PRG $06759
  $875B: 85 18       sta $18    ; PRG $0675B
  $875D: 86 19       stx $19    ; PRG $0675D
  $875F: 18          clc    ; PRG $0675F
  $8760: a9 ff       lda #$ff    ; PRG $06760
  $8762: a0 fe       ldy #$fe    ; PRG $06762
  $8764: 71 06       adc ($06),y    ; PRG $06764
  $8766: 85 14       sta $14    ; PRG $06766
  $8768: a9 ff       lda #$ff    ; PRG $06768
  $876A: c8          iny    ; PRG $0676A
  $876B: 71 06       adc ($06),y    ; PRG $0676B
  $876D: 85 15       sta $15    ; PRG $0676D
  $876F: a0 14       ldy #$14    ; PRG $0676F
  $8771: a2 18       ldx #$18    ; PRG $06771
  $8773: a9 10       lda #$10    ; PRG $06773
  $8775: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $06775
  $8778: 18          clc    ; PRG $06778
  $8779: a5 10       lda $10    ; PRG $06779
  $877B: 69 04       adc #$04    ; PRG $0677B
  $877D: a0 f6       ldy #$f6    ; PRG $0677D
  $877F: 91 06       sta ($06),y    ; PRG $0677F
  $8781: a5 11       lda $11    ; PRG $06781
  $8783: 69 60       adc #$60    ; PRG $06783
  $8785: c8          iny    ; PRG $06785
  $8786: 91 06       sta ($06),y    ; PRG $06786
  $8788: 88          dey    ; PRG $06788
  $8789: b1 06       lda ($06),y    ; PRG $06789
  $878B: 85 18       sta $18    ; PRG $0678B
  $878D: c8          iny    ; PRG $0678D
  $878E: b1 06       lda ($06),y    ; PRG $0678E
  $8790: 85 19       sta $19    ; PRG $06790
  $8792: a0 06       ldy #$06    ; PRG $06792
  $8794: b1 18       lda ($18),y    ; PRG $06794
  $8796: f0 03       beq $879b    ; PRG $06796
  $8798: 4c b2 87    jmp $87b2    ; PRG $06798
  $879B: a0 ff       ldy #$ff    ; PRG $0679B
  $879D: b1 06       lda ($06),y    ; PRG $0679D
  $879F: 48          pha    ; PRG $0679F
  $87A0: 88          dey    ; PRG $067A0
  $87A1: b1 06       lda ($06),y    ; PRG $067A1
  $87A3: 48          pha    ; PRG $067A3
  $87A4: 8a          txa    ; PRG $067A4
  $87A5: 48          pha    ; PRG $067A5
  $87A6: a9 02       lda #$02    ; PRG $067A6
  $87A8: 48          pha    ; PRG $067A8
  $87A9: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $067A9
  $87AC: fa d4 06    .db $fa $d4 $06  -> vm $D4FA argc 6    ; PRG $067AC
  $87AF: 4c ca 87    jmp $87ca   ; duel_87ca    ; PRG $067AF
  $87B2: a0 f6       ldy #$f6    ; PRG $067B2
  $87B4: b1 06       lda ($06),y    ; PRG $067B4
  $87B6: 85 18       sta $18    ; PRG $067B6
  $87B8: c8          iny    ; PRG $067B8
  $87B9: b1 06       lda ($06),y    ; PRG $067B9
  $87BB: 85 19       sta $19    ; PRG $067BB
  $87BD: 18          clc    ; PRG $067BD
  $87BE: a9 ff       lda #$ff    ; PRG $067BE
  $87C0: a0 06       ldy #$06    ; PRG $067C0
  $87C2: 71 18       adc ($18),y    ; PRG $067C2
  $87C4: 91 18       sta ($18),y    ; PRG $067C4
  $87C6: a9 ff       lda #$ff    ; PRG $067C6
  $87C8: 69 00       adc #$00    ; PRG $067C8
  $87CA: a0 fc       ldy #$fc    ; PRG $067CA
  $87CC: b1 06       lda ($06),y    ; PRG $067CC
  $87CE: 85 18       sta $18    ; PRG $067CE
  $87D0: c8          iny    ; PRG $067D0
  $87D1: b1 06       lda ($06),y    ; PRG $067D1
  $87D3: 85 19       sta $19    ; PRG $067D3
  $87D5: a9 10       lda #$10    ; PRG $067D5
  $87D7: a0 0f       ldy #$0f    ; PRG $067D7
  $87D9: 11 18       ora ($18),y    ; PRG $067D9
  $87DB: 91 18       sta ($18),y    ; PRG $067DB
  $87DD: ad 67 72    lda $7267    ; PRG $067DD
  $87E0: f0 03       beq $87e5    ; PRG $067E0
  $87E2: 4c e8 87    jmp $87e8    ; PRG $067E2
  $87E5: 4c 99 86    jmp $8699    ; PRG $067E5
  $87E8: 4c ee 87    jmp $87ee    ; PRG $067E8
  $87EB: ee 8c 6b    inc $6b8c    ; PRG $067EB
  $87EE: ad 8c 6b    lda $6b8c    ; PRG $067EE
  $87F1: 85 18       sta $18    ; PRG $067F1
  $87F3: 86 19       stx $19    ; PRG $067F3
  $87F5: a5 18       lda $18    ; PRG $067F5
  $87F7: c9 1e       cmp #$1e    ; PRG $067F7
  $87F9: a5 19       lda $19    ; PRG $067F9
  $87FB: e9 00       sbc #$00    ; PRG $067FB
  $87FD: 90 03       bcc $8802    ; PRG $067FD
  $87FF: 4c 8b 8c    jmp $8c8b    ; PRG $067FF
  $8802: ad 99 72    lda $7299    ; PRG $06802
  $8805: d0 03       bne $880a    ; PRG $06805
  $8807: 4c 25 88    jmp $8825    ; PRG $06807
  $880A: ee 9a 72    inc $729a    ; PRG $0680A
  $880D: ad 9a 72    lda $729a    ; PRG $0680D
  $8810: 85 18       sta $18    ; PRG $06810
  $8812: 86 19       stx $19    ; PRG $06812
  $8814: a9 3c       lda #$3c    ; PRG $06814
  $8816: c5 18       cmp $18    ; PRG $06816
  $8818: 8a          txa    ; PRG $06818
  $8819: e5 19       sbc $19    ; PRG $06819
  $881B: 90 03       bcc $8820    ; PRG $0681B
  $881D: 4c 25 88    jmp $8825    ; PRG $0681D
  $8820: a9 02       lda #$02    ; PRG $06820
  $8822: 8d 99 72    sta $7299    ; PRG $06822
  $8825: a9 05       lda #$05    ; PRG $06825
  $8827: 85 18       sta $18    ; PRG $06827
  $8829: 86 19       stx $19    ; PRG $06829
  $882B: ad 8c 6b    lda $6b8c    ; PRG $0682B
  $882E: 85 14       sta $14    ; PRG $0682E
  $8830: 86 15       stx $15    ; PRG $06830
  $8832: a0 14       ldy #$14    ; PRG $06832
  $8834: a2 18       ldx #$18    ; PRG $06834
  $8836: a9 10       lda #$10    ; PRG $06836
  $8838: 20 eb e1    jsr $e1eb   ; alu_udiv16    ; PRG $06838
  $883B: a5 10       lda $10    ; PRG $0683B
  $883D: 05 11       ora $11    ; PRG $0683D
  $883F: f0 03       beq $8844    ; PRG $0683F
  $8841: 4c 76 88    jmp $8876    ; PRG $06841
  $8844: ad 68 70    lda $7068    ; PRG $06844
  $8847: 85 18       sta $18    ; PRG $06847
  $8849: 86 19       stx $19    ; PRG $06849
  $884B: a5 18       lda $18    ; PRG $0684B
  $884D: 05 19       ora $19    ; PRG $0684D
  $884F: f0 03       beq $8854    ; PRG $0684F
  $8851: 4c 76 88    jmp $8876    ; PRG $06851
  $8854: a9 05       lda #$05    ; PRG $06854
  $8856: 85 18       sta $18    ; PRG $06856
  $8858: 86 19       stx $19    ; PRG $06858
  $885A: ad 8c 6b    lda $6b8c    ; PRG $0685A
  $885D: 85 14       sta $14    ; PRG $0685D
  $885F: 86 15       stx $15    ; PRG $0685F
  $8861: a0 14       ldy #$14    ; PRG $06861
  $8863: a2 18       ldx #$18    ; PRG $06863
  $8865: a9 10       lda #$10    ; PRG $06865
  $8867: 20 d9 e1    jsr $e1d9   ; alu_div_push_remainder    ; PRG $06867
  $886A: a5 11       lda $11    ; PRG $0686A
  $886C: 48          pha    ; PRG $0686C
  $886D: a5 10       lda $10    ; PRG $0686D
  $886F: 48          pha    ; PRG $0686F
  $8870: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $06870
  $8873: e3 84 04    .db $e3 $84 $04  -> vm $84E3 argc 4    ; PRG $06873
  $8876: a9 62       lda #$62    ; PRG $06876
  $8878: a0 fc       ldy #$fc    ; PRG $06878
  $887A: 91 06       sta ($06),y    ; PRG $0687A
  $887C: a9 66       lda #$66    ; PRG $0687C
  $887E: c8          iny    ; PRG $0687E
  $887F: 91 06       sta ($06),y    ; PRG $0687F
  $8881: a9 62       lda #$62    ; PRG $06881
  $8883: a0 fa       ldy #$fa    ; PRG $06883
  $8885: 91 06       sta ($06),y    ; PRG $06885
  $8887: a9 66       lda #$66    ; PRG $06887
  $8889: c8          iny    ; PRG $06889
  $888A: 91 06       sta ($06),y    ; PRG $0688A
  $888C: 18          clc    ; PRG $0688C
  $888D: a9 50       lda #$50    ; PRG $0688D
  $888F: 69 62       adc #$62    ; PRG $0688F
  $8891: a0 f8       ldy #$f8    ; PRG $06891
  $8893: 91 06       sta ($06),y    ; PRG $06893
  $8895: a9 01       lda #$01    ; PRG $06895
  $8897: 69 66       adc #$66    ; PRG $06897
  $8899: c8          iny    ; PRG $06899
  $889A: 91 06       sta ($06),y    ; PRG $0689A
  $889C: 8a          txa    ; PRG $0689C
  $889D: a0 fe       ldy #$fe    ; PRG $0689D
  $889F: 91 06       sta ($06),y    ; PRG $0689F
  $88A1: c8          iny    ; PRG $068A1
  $88A2: 91 06       sta ($06),y    ; PRG $068A2
  $88A4: 4c c5 88    jmp $88c5    ; PRG $068A4
  $88A7: 18          clc    ; PRG $068A7
  $88A8: a9 01       lda #$01    ; PRG $068A8
  $88AA: a0 fe       ldy #$fe    ; PRG $068AA
  $88AC: 71 06       adc ($06),y    ; PRG $068AC
  $88AE: 91 06       sta ($06),y    ; PRG $068AE
  $88B0: 8a          txa    ; PRG $068B0
  $88B1: c8          iny    ; PRG $068B1
  $88B2: 71 06       adc ($06),y    ; PRG $068B2
  $88B4: 91 06       sta ($06),y    ; PRG $068B4
  $88B6: 18          clc    ; PRG $068B6
  $88B7: a9 10       lda #$10    ; PRG $068B7
  $88B9: a0 fc       ldy #$fc    ; PRG $068B9
  $88BB: 71 06       adc ($06),y    ; PRG $068BB
  $88BD: 91 06       sta ($06),y    ; PRG $068BD
  $88BF: 8a          txa    ; PRG $068BF
  $88C0: c8          iny    ; PRG $068C0
  $88C1: 71 06       adc ($06),y    ; PRG $068C1
  $88C3: 91 06       sta ($06),y    ; PRG $068C3
  $88C5: a0 fc       ldy #$fc    ; PRG $068C5
  $88C7: b1 06       lda ($06),y    ; PRG $068C7
  $88C9: a0 f8       ldy #$f8    ; PRG $068C9
  $88CB: d1 06       cmp ($06),y    ; PRG $068CB
  $88CD: a0 fd       ldy #$fd    ; PRG $068CD
  $88CF: b1 06       lda ($06),y    ; PRG $068CF
  $88D1: a0 f9       ldy #$f9    ; PRG $068D1
  $88D3: f1 06       sbc ($06),y    ; PRG $068D3
  $88D5: 90 03       bcc $88da    ; PRG $068D5
  $88D7: 4c 80 8c    jmp $8c80    ; PRG $068D7
  $88DA: a0 fe       ldy #$fe    ; PRG $068DA
  $88DC: b1 06       lda ($06),y    ; PRG $068DC
  $88DE: 8d 9e 72    sta $729e    ; PRG $068DE
  $88E1: a0 fa       ldy #$fa    ; PRG $068E1
  $88E3: b1 06       lda ($06),y    ; PRG $068E3
  $88E5: 85 18       sta $18    ; PRG $068E5
  $88E7: c8          iny    ; PRG $068E7
  $88E8: b1 06       lda ($06),y    ; PRG $068E8
  $88EA: 85 19       sta $19    ; PRG $068EA
  $88EC: a0 0f       ldy #$0f    ; PRG $068EC
  $88EE: b1 18       lda ($18),y    ; PRG $068EE
  $88F0: 85 14       sta $14    ; PRG $068F0
  $88F2: 86 15       stx $15    ; PRG $068F2
  $88F4: a5 14       lda $14    ; PRG $068F4
  $88F6: 29 20       and #$20    ; PRG $068F6
  $88F8: d0 03       bne $88fd    ; PRG $068F8
  $88FA: 4c bf 89    jmp $89bf    ; PRG $068FA
  $88FD: 8a          txa    ; PRG $068FD
  $88FE: 48          pha    ; PRG $068FE
  $88FF: 48          pha    ; PRG $068FF
  $8900: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $06900
  $8903: a9 c4 04    .db $a9 $c4 $04  -> vm $C4A9 argc 4    ; PRG $06903
  $8906: a5 08       lda $08    ; PRG $06906
  $8908: a0 f4       ldy #$f4    ; PRG $06908
  $890A: 91 06       sta ($06),y    ; PRG $0690A
  $890C: a5 09       lda $09    ; PRG $0690C
  $890E: c8          iny    ; PRG $0690E
  $890F: 91 06       sta ($06),y    ; PRG $0690F
  $8911: 88          dey    ; PRG $06911
  $8912: b1 06       lda ($06),y    ; PRG $06912
  $8914: c9 40       cmp #$40    ; PRG $06914
  $8916: d0 05       bne $891d    ; PRG $06916
  $8918: c8          iny    ; PRG $06918
  $8919: b1 06       lda ($06),y    ; PRG $06919
  $891B: c9 00       cmp #$00    ; PRG $0691B
  $891D: d0 03       bne $8922    ; PRG $0691D
  $891F: 4c 60 89    jmp $8960    ; PRG $0691F
  $8922: a0 f4       ldy #$f4    ; PRG $06922
  $8924: b1 06       lda ($06),y    ; PRG $06924
  $8926: c9 80       cmp #$80    ; PRG $06926
  $8928: d0 05       bne $892f    ; PRG $06928
  $892A: c8          iny    ; PRG $0692A
  $892B: b1 06       lda ($06),y    ; PRG $0692B
  $892D: c9 00       cmp #$00    ; PRG $0692D
  $892F: d0 03       bne $8934    ; PRG $0692F
  $8931: 4c 60 89    jmp $8960    ; PRG $06931
  $8934: a0 f4       ldy #$f4    ; PRG $06934
  $8936: b1 06       lda ($06),y    ; PRG $06936
  $8938: c9 01       cmp #$01    ; PRG $06938
  $893A: d0 05       bne $8941    ; PRG $0693A
  $893C: c8          iny    ; PRG $0693C
  $893D: b1 06       lda ($06),y    ; PRG $0693D
  $893F: c9 00       cmp #$00    ; PRG $0693F
  $8941: d0 03       bne $8946    ; PRG $06941
  $8943: 4c 60 89    jmp $8960    ; PRG $06943
  $8946: a0 f4       ldy #$f4    ; PRG $06946
  $8948: b1 06       lda ($06),y    ; PRG $06948
  $894A: c9 02       cmp #$02    ; PRG $0694A
  $894C: d0 05       bne $8953    ; PRG $0694C
  $894E: c8          iny    ; PRG $0694E
  $894F: b1 06       lda ($06),y    ; PRG $0694F
  $8951: c9 00       cmp #$00    ; PRG $06951
  $8953: d0 03       bne $8958    ; PRG $06953
  $8955: 4c 60 89    jmp $8960    ; PRG $06955
  $8958: 8a          txa    ; PRG $06958
  $8959: a0 f4       ldy #$f4    ; PRG $06959
  $895B: 91 06       sta ($06),y    ; PRG $0695B
  $895D: c8          iny    ; PRG $0695D
  $895E: 91 06       sta ($06),y    ; PRG $0695E
  $8960: ad 99 72    lda $7299    ; PRG $06960
  $8963: f0 03       beq $8968    ; PRG $06963
  $8965: 4c bf 89    jmp $89bf    ; PRG $06965
  $8968: a0 f4       ldy #$f4    ; PRG $06968
  $896A: b1 06       lda ($06),y    ; PRG $0696A
  $896C: c8          iny    ; PRG $0696C
  $896D: 11 06       ora ($06),y    ; PRG $0696D
  $896F: d0 03       bne $8974    ; PRG $0696F
  $8971: 4c bf 89    jmp $89bf    ; PRG $06971
  $8974: a0 fa       ldy #$fa    ; PRG $06974
  $8976: b1 06       lda ($06),y    ; PRG $06976
  $8978: 85 18       sta $18    ; PRG $06978
  $897A: c8          iny    ; PRG $0697A
  $897B: b1 06       lda ($06),y    ; PRG $0697B
  $897D: 85 19       sta $19    ; PRG $0697D
  $897F: a0 0f       ldy #$0f    ; PRG $0697F
  $8981: b1 18       lda ($18),y    ; PRG $06981
  $8983: 85 14       sta $14    ; PRG $06983
  $8985: 86 15       stx $15    ; PRG $06985
  $8987: a5 14       lda $14    ; PRG $06987
  $8989: 29 10       and #$10    ; PRG $06989
  $898B: f0 03       beq $8990    ; PRG $0698B
  $898D: 4c bf 89    jmp $89bf    ; PRG $0698D
  $8990: a0 fa       ldy #$fa    ; PRG $06990
  $8992: b1 06       lda ($06),y    ; PRG $06992
  $8994: 85 18       sta $18    ; PRG $06994
  $8996: c8          iny    ; PRG $06996
  $8997: b1 06       lda ($06),y    ; PRG $06997
  $8999: 85 19       sta $19    ; PRG $06999
  $899B: a0 0f       ldy #$0f    ; PRG $0699B
  $899D: b1 18       lda ($18),y    ; PRG $0699D
  $899F: 85 14       sta $14    ; PRG $0699F
  $89A1: 86 15       stx $15    ; PRG $069A1
  $89A3: a5 14       lda $14    ; PRG $069A3
  $89A5: 29 20       and #$20    ; PRG $069A5
  $89A7: d0 03       bne $89ac    ; PRG $069A7
  $89A9: 4c bf 89    jmp $89bf    ; PRG $069A9
  $89AC: a0 fa       ldy #$fa    ; PRG $069AC
  $89AE: b1 06       lda ($06),y    ; PRG $069AE
  $89B0: 85 18       sta $18    ; PRG $069B0
  $89B2: c8          iny    ; PRG $069B2
  $89B3: b1 06       lda ($06),y    ; PRG $069B3
  $89B5: 85 19       sta $19    ; PRG $069B5
  $89B7: a9 bf       lda #$bf    ; PRG $069B7
  $89B9: a0 0f       ldy #$0f    ; PRG $069B9
  $89BB: 31 18       and ($18),y    ; PRG $069BB
  $89BD: 91 18       sta ($18),y    ; PRG $069BD
  $89BF: a0 fc       ldy #$fc    ; PRG $069BF
  $89C1: b1 06       lda ($06),y    ; PRG $069C1
  $89C3: 85 18       sta $18    ; PRG $069C3
  $89C5: c8          iny    ; PRG $069C5
  $89C6: b1 06       lda ($06),y    ; PRG $069C6
  $89C8: 85 19       sta $19    ; PRG $069C8
  $89CA: a0 0f       ldy #$0f    ; PRG $069CA
  $89CC: b1 18       lda ($18),y    ; PRG $069CC
  $89CE: 85 14       sta $14    ; PRG $069CE
  $89D0: 86 15       stx $15    ; PRG $069D0
  $89D2: a5 14       lda $14    ; PRG $069D2
  $89D4: 29 08       and #$08    ; PRG $069D4
  $89D6: f0 03       beq $89db    ; PRG $069D6
  $89D8: 4c 75 8c    jmp $8c75   ; nat_5_0c75    ; PRG $069D8
  $89DB: a0 fc       ldy #$fc    ; PRG $069DB
  $89DD: b1 06       lda ($06),y    ; PRG $069DD
  $89DF: 85 18       sta $18    ; PRG $069DF
  $89E1: c8          iny    ; PRG $069E1
  $89E2: b1 06       lda ($06),y    ; PRG $069E2
  $89E4: 85 19       sta $19    ; PRG $069E4
  $89E6: a0 0f       ldy #$0f    ; PRG $069E6
  $89E8: b1 18       lda ($18),y    ; PRG $069E8
  $89EA: 85 14       sta $14    ; PRG $069EA
  $89EC: 86 15       stx $15    ; PRG $069EC
  $89EE: a5 14       lda $14    ; PRG $069EE
  $89F0: 29 10       and #$10    ; PRG $069F0
  $89F2: f0 03       beq $89f7    ; PRG $069F2
  $89F4: 4c 75 8c    jmp $8c75   ; nat_5_0c75    ; PRG $069F4
  $89F7: a0 fc       ldy #$fc    ; PRG $069F7
  $89F9: b1 06       lda ($06),y    ; PRG $069F9
  $89FB: 85 18       sta $18    ; PRG $069FB
  $89FD: c8          iny    ; PRG $069FD
  $89FE: b1 06       lda ($06),y    ; PRG $069FE
  $8A00: 85 19       sta $19    ; PRG $06A00
  $8A02: a0 0f       ldy #$0f    ; PRG $06A02
  $8A04: b1 18       lda ($18),y    ; PRG $06A04
  $8A06: 85 14       sta $14    ; PRG $06A06
  $8A08: 86 15       stx $15    ; PRG $06A08
  $8A0A: a5 14       lda $14    ; PRG $06A0A
  $8A0C: 29 20       and #$20    ; PRG $06A0C
  $8A0E: f0 03       beq $8a13    ; PRG $06A0E
  $8A10: 4c 75 8c    jmp $8c75   ; nat_5_0c75    ; PRG $06A10
  $8A13: 8e 9d 72    stx $729d    ; PRG $06A13
  $8A16: a0 fe       ldy #$fe    ; PRG $06A16
  $8A18: b1 06       lda ($06),y    ; PRG $06A18
  $8A1A: c8          iny    ; PRG $06A1A
  $8A1B: 11 06       ora ($06),y    ; PRG $06A1B
  $8A1D: f0 03       beq $8a22    ; PRG $06A1D
  $8A1F: 4c 28 8a    jmp $8a28    ; PRG $06A1F
  $8A22: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $06A22
  $8A25: 87 80 02    .db $87 $80 $02  -> vm $8087 argc 2    ; PRG $06A25
  $8A28: 8a          txa    ; PRG $06A28
  $8A29: 48          pha    ; PRG $06A29
  $8A2A: 48          pha    ; PRG $06A2A
  $8A2B: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $06A2B
  $8A2E: a9 c4 04    .db $a9 $c4 $04  -> vm $C4A9 argc 4    ; PRG $06A2E
  $8A31: a5 08       lda $08    ; PRG $06A31
  $8A33: a0 f4       ldy #$f4    ; PRG $06A33
  $8A35: 91 06       sta ($06),y    ; PRG $06A35
  $8A37: a5 09       lda $09    ; PRG $06A37
  $8A39: c8          iny    ; PRG $06A39
  $8A3A: 91 06       sta ($06),y    ; PRG $06A3A
  $8A3C: 88          dey    ; PRG $06A3C
  $8A3D: b1 06       lda ($06),y    ; PRG $06A3D
  $8A3F: c9 40       cmp #$40    ; PRG $06A3F
  $8A41: d0 05       bne $8a48    ; PRG $06A41
  $8A43: c8          iny    ; PRG $06A43
  $8A44: b1 06       lda ($06),y    ; PRG $06A44
  $8A46: c9 00       cmp #$00    ; PRG $06A46
  $8A48: d0 03       bne $8a4d    ; PRG $06A48
  $8A4A: 4c 8b 8a    jmp $8a8b    ; PRG $06A4A
  $8A4D: a0 f4       ldy #$f4    ; PRG $06A4D
  $8A4F: b1 06       lda ($06),y    ; PRG $06A4F
  $8A51: c9 80       cmp #$80    ; PRG $06A51
  $8A53: d0 05       bne $8a5a    ; PRG $06A53
  $8A55: c8          iny    ; PRG $06A55
  $8A56: b1 06       lda ($06),y    ; PRG $06A56
  $8A58: c9 00       cmp #$00    ; PRG $06A58
  $8A5A: d0 03       bne $8a5f    ; PRG $06A5A
  $8A5C: 4c 8b 8a    jmp $8a8b    ; PRG $06A5C
  $8A5F: a0 f4       ldy #$f4    ; PRG $06A5F
  $8A61: b1 06       lda ($06),y    ; PRG $06A61
  $8A63: c9 01       cmp #$01    ; PRG $06A63
  $8A65: d0 05       bne $8a6c    ; PRG $06A65
  $8A67: c8          iny    ; PRG $06A67
  $8A68: b1 06       lda ($06),y    ; PRG $06A68
  $8A6A: c9 00       cmp #$00    ; PRG $06A6A
  $8A6C: d0 03       bne $8a71    ; PRG $06A6C
  $8A6E: 4c 8b 8a    jmp $8a8b    ; PRG $06A6E
  $8A71: a0 f4       ldy #$f4    ; PRG $06A71
  $8A73: b1 06       lda ($06),y    ; PRG $06A73
  $8A75: c9 02       cmp #$02    ; PRG $06A75
  $8A77: d0 05       bne $8a7e    ; PRG $06A77
  $8A79: c8          iny    ; PRG $06A79
  $8A7A: b1 06       lda ($06),y    ; PRG $06A7A
  $8A7C: c9 00       cmp #$00    ; PRG $06A7C
  $8A7E: d0 03       bne $8a83    ; PRG $06A7E
  $8A80: 4c 8b 8a    jmp $8a8b    ; PRG $06A80
  $8A83: 8a          txa    ; PRG $06A83
  $8A84: a0 f4       ldy #$f4    ; PRG $06A84
  $8A86: 91 06       sta ($06),y    ; PRG $06A86
  $8A88: c8          iny    ; PRG $06A88
  $8A89: 91 06       sta ($06),y    ; PRG $06A89
  $8A8B: ad 99 72    lda $7299    ; PRG $06A8B
  $8A8E: f0 03       beq $8a93    ; PRG $06A8E
  $8A90: 4c 4c 8b    jmp $8b4c    ; PRG $06A90
  $8A93: a0 f4       ldy #$f4    ; PRG $06A93
  $8A95: b1 06       lda ($06),y    ; PRG $06A95
  $8A97: c8          iny    ; PRG $06A97
  $8A98: 11 06       ora ($06),y    ; PRG $06A98
  $8A9A: d0 03       bne $8a9f    ; PRG $06A9A
  $8A9C: 4c 4c 8b    jmp $8b4c    ; PRG $06A9C
  $8A9F: a0 fa       ldy #$fa    ; PRG $06A9F
  $8AA1: b1 06       lda ($06),y    ; PRG $06AA1
  $8AA3: 85 18       sta $18    ; PRG $06AA3
  $8AA5: c8          iny    ; PRG $06AA5
  $8AA6: b1 06       lda ($06),y    ; PRG $06AA6
  $8AA8: 85 19       sta $19    ; PRG $06AA8
  $8AAA: a0 0f       ldy #$0f    ; PRG $06AAA
  $8AAC: b1 18       lda ($18),y    ; PRG $06AAC
  $8AAE: 85 14       sta $14    ; PRG $06AAE
  $8AB0: 86 15       stx $15    ; PRG $06AB0
  $8AB2: a5 14       lda $14    ; PRG $06AB2
  $8AB4: 29 10       and #$10    ; PRG $06AB4
  $8AB6: f0 03       beq $8abb    ; PRG $06AB6
  $8AB8: 4c 4c 8b    jmp $8b4c    ; PRG $06AB8
  $8ABB: a0 fa       ldy #$fa    ; PRG $06ABB
  $8ABD: b1 06       lda ($06),y    ; PRG $06ABD
  $8ABF: 85 18       sta $18    ; PRG $06ABF
  $8AC1: c8          iny    ; PRG $06AC1
  $8AC2: b1 06       lda ($06),y    ; PRG $06AC2
  $8AC4: 85 19       sta $19    ; PRG $06AC4
  $8AC6: a0 0f       ldy #$0f    ; PRG $06AC6
  $8AC8: b1 18       lda ($18),y    ; PRG $06AC8
  $8ACA: 85 14       sta $14    ; PRG $06ACA
  $8ACC: 86 15       stx $15    ; PRG $06ACC
  $8ACE: a5 14       lda $14    ; PRG $06ACE
  $8AD0: 29 20       and #$20    ; PRG $06AD0
  $8AD2: f0 03       beq $8ad7    ; PRG $06AD2
  $8AD4: 4c 4c 8b    jmp $8b4c    ; PRG $06AD4
  $8AD7: a0 f4       ldy #$f4    ; PRG $06AD7
  $8AD9: b1 06       lda ($06),y    ; PRG $06AD9
  $8ADB: c9 40       cmp #$40    ; PRG $06ADB
  $8ADD: d0 05       bne $8ae4    ; PRG $06ADD
  $8ADF: c8          iny    ; PRG $06ADF
  $8AE0: b1 06       lda ($06),y    ; PRG $06AE0
  $8AE2: c9 00       cmp #$00    ; PRG $06AE2
  $8AE4: d0 03       bne $8ae9    ; PRG $06AE4
  $8AE6: 4c fb 8a    jmp $8afb    ; PRG $06AE6
  $8AE9: a0 f4       ldy #$f4    ; PRG $06AE9
  $8AEB: b1 06       lda ($06),y    ; PRG $06AEB
  $8AED: c9 80       cmp #$80    ; PRG $06AED
  $8AEF: d0 05       bne $8af6    ; PRG $06AEF
  $8AF1: c8          iny    ; PRG $06AF1
  $8AF2: b1 06       lda ($06),y    ; PRG $06AF2
  $8AF4: c9 00       cmp #$00    ; PRG $06AF4
  $8AF6: f0 03       beq $8afb    ; PRG $06AF6
  $8AF8: 4c 20 8b    jmp $8b20   ; combat_b20    ; PRG $06AF8
  $8AFB: a0 fa       ldy #$fa    ; PRG $06AFB
  $8AFD: b1 06       lda ($06),y    ; PRG $06AFD
  $8AFF: 85 18       sta $18    ; PRG $06AFF
  $8B01: c8          iny    ; PRG $06B01
  $8B02: b1 06       lda ($06),y    ; PRG $06B02
  $8B04: 85 19       sta $19    ; PRG $06B04
  $8B06: a0 0f       ldy #$0f    ; PRG $06B06
  $8B08: b1 18       lda ($18),y    ; PRG $06B08
  $8B0A: 85 14       sta $14    ; PRG $06B0A
  $8B0C: 86 15       stx $15    ; PRG $06B0C
  $8B0E: a5 14       lda $14    ; PRG $06B0E
  $8B10: 29 01       and #$01    ; PRG $06B10
  $8B12: d0 03       bne $8b17    ; PRG $06B12
  $8B14: 4c 20 8b    jmp $8b20   ; combat_b20    ; PRG $06B14
  $8B17: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $06B17
  $8B1A: 03 80 02    .db $03 $80 $02  -> vm $8003 argc 2    ; PRG $06B1A
  $8B1D: 4c 2b 8b    jmp $8b2b    ; PRG $06B1D
  $8B20: 8a          txa    ; PRG $06B20
  $8B21: 48          pha    ; PRG $06B21
  $8B22: a9 04       lda #$04    ; PRG $06B22
  $8B24: 48          pha    ; PRG $06B24
  $8B25: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $06B25
  $8B28: a5 d4 04    .db $a5 $d4 $04  -> vm $D4A5 argc 4    ; PRG $06B28
  $8B2B: ad 9d 72    lda $729d    ; PRG $06B2B
  $8B2E: d0 03       bne $8b33    ; PRG $06B2E
  $8B30: 4c 4c 8b    jmp $8b4c    ; PRG $06B30
  $8B33: ad 9d 72    lda $729d    ; PRG $06B33
  $8B36: 85 18       sta $18    ; PRG $06B36
  $8B38: 86 19       stx $19    ; PRG $06B38
  $8B3A: a5 18       lda $18    ; PRG $06B3A
  $8B3C: c9 01       cmp #$01    ; PRG $06B3C
  $8B3E: d0 04       bne $8b44    ; PRG $06B3E
  $8B40: a5 19       lda $19    ; PRG $06B40
  $8B42: c9 00       cmp #$00    ; PRG $06B42
  $8B44: d0 03       bne $8b49    ; PRG $06B44
  $8B46: 4c 4c 8b    jmp $8b4c    ; PRG $06B46
  $8B49: 8e 9e 72    stx $729e    ; PRG $06B49
  $8B4C: 8a          txa    ; PRG $06B4C
  $8B4D: 48          pha    ; PRG $06B4D
  $8B4E: a9 3c       lda #$3c    ; PRG $06B4E
  $8B50: 48          pha    ; PRG $06B50
  $8B51: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $06B51
  $8B54: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $06B54
  $8B57: a5 08       lda $08    ; PRG $06B57
  $8B59: 05 09       ora $09    ; PRG $06B59
  $8B5B: d0 03       bne $8b60    ; PRG $06B5B
  $8B5D: 4c ea 8b    jmp $8bea    ; PRG $06B5D
  $8B60: a0 fc       ldy #$fc    ; PRG $06B60
  $8B62: b1 06       lda ($06),y    ; PRG $06B62
  $8B64: 85 18       sta $18    ; PRG $06B64
  $8B66: c8          iny    ; PRG $06B66
  $8B67: b1 06       lda ($06),y    ; PRG $06B67
  $8B69: 85 19       sta $19    ; PRG $06B69
  $8B6B: a0 0f       ldy #$0f    ; PRG $06B6B
  $8B6D: b1 18       lda ($18),y    ; PRG $06B6D
  $8B6F: 85 14       sta $14    ; PRG $06B6F
  $8B71: 86 15       stx $15    ; PRG $06B71
  $8B73: a5 14       lda $14    ; PRG $06B73
  $8B75: 29 10       and #$10    ; PRG $06B75
  $8B77: f0 03       beq $8b7c    ; PRG $06B77
  $8B79: 4c 06 8c    jmp $8c06    ; PRG $06B79
  $8B7C: a9 03       lda #$03    ; PRG $06B7C
  $8B7E: 85 18       sta $18    ; PRG $06B7E
  $8B80: 86 19       stx $19    ; PRG $06B80
  $8B82: a0 fc       ldy #$fc    ; PRG $06B82
  $8B84: b1 06       lda ($06),y    ; PRG $06B84
  $8B86: 85 14       sta $14    ; PRG $06B86
  $8B88: c8          iny    ; PRG $06B88
  $8B89: b1 06       lda ($06),y    ; PRG $06B89
  $8B8B: 85 15       sta $15    ; PRG $06B8B
  $8B8D: a1 14       lda ($14,x)    ; PRG $06B8D
  $8B8F: 85 10       sta $10    ; PRG $06B8F
  $8B91: 86 11       stx $11    ; PRG $06B91
  $8B93: a0 10       ldy #$10    ; PRG $06B93
  $8B95: a2 18       ldx #$18    ; PRG $06B95
  $8B97: a9 14       lda #$14    ; PRG $06B97
  $8B99: 20 d9 e1    jsr $e1d9   ; alu_div_push_remainder    ; PRG $06B99
  $8B9C: ad 63 72    lda $7263    ; PRG $06B9C
  $8B9F: 85 18       sta $18    ; PRG $06B9F
  $8BA1: 86 19       stx $19    ; PRG $06BA1
  $8BA3: a5 18       lda $18    ; PRG $06BA3
  $8BA5: c5 14       cmp $14    ; PRG $06BA5
  $8BA7: d0 04       bne $8bad    ; PRG $06BA7
  $8BA9: a5 19       lda $19    ; PRG $06BA9
  $8BAB: c5 15       cmp $15    ; PRG $06BAB
  $8BAD: f0 03       beq $8bb2    ; PRG $06BAD
  $8BAF: 4c 06 8c    jmp $8c06    ; PRG $06BAF
  $8BB2: a9 03       lda #$03    ; PRG $06BB2
  $8BB4: 85 18       sta $18    ; PRG $06BB4
  $8BB6: 86 19       stx $19    ; PRG $06BB6
  $8BB8: a0 fc       ldy #$fc    ; PRG $06BB8
  $8BBA: b1 06       lda ($06),y    ; PRG $06BBA
  $8BBC: 85 14       sta $14    ; PRG $06BBC
  $8BBE: c8          iny    ; PRG $06BBE
  $8BBF: b1 06       lda ($06),y    ; PRG $06BBF
  $8BC1: 85 15       sta $15    ; PRG $06BC1
  $8BC3: a0 01       ldy #$01    ; PRG $06BC3
  $8BC5: b1 14       lda ($14),y    ; PRG $06BC5
  $8BC7: 85 10       sta $10    ; PRG $06BC7
  $8BC9: 86 11       stx $11    ; PRG $06BC9
  $8BCB: a0 10       ldy #$10    ; PRG $06BCB
  $8BCD: a2 18       ldx #$18    ; PRG $06BCD
  $8BCF: a9 14       lda #$14    ; PRG $06BCF
  $8BD1: 20 d9 e1    jsr $e1d9   ; alu_div_push_remainder    ; PRG $06BD1
  $8BD4: ad 64 72    lda $7264    ; PRG $06BD4
  $8BD7: 85 18       sta $18    ; PRG $06BD7
  $8BD9: 86 19       stx $19    ; PRG $06BD9
  $8BDB: a5 18       lda $18    ; PRG $06BDB
  $8BDD: c5 14       cmp $14    ; PRG $06BDD
  $8BDF: d0 04       bne $8be5    ; PRG $06BDF
  $8BE1: a5 19       lda $19    ; PRG $06BE1
  $8BE3: c5 15       cmp $15    ; PRG $06BE3
  $8BE5: f0 03       beq $8bea    ; PRG $06BE5
  $8BE7: 4c 06 8c    jmp $8c06    ; PRG $06BE7
  $8BEA: ad 9d 72    lda $729d    ; PRG $06BEA
  $8BED: f0 03       beq $8bf2    ; PRG $06BED
  $8BEF: 4c 06 8c    jmp $8c06    ; PRG $06BEF
  $8BF2: a0 ff       ldy #$ff    ; PRG $06BF2
  $8BF4: b1 06       lda ($06),y    ; PRG $06BF4
  $8BF6: 48          pha    ; PRG $06BF6
  $8BF7: 88          dey    ; PRG $06BF7
  $8BF8: b1 06       lda ($06),y    ; PRG $06BF8
  $8BFA: 48          pha    ; PRG $06BFA
  $8BFB: 8a          txa    ; PRG $06BFB
  $8BFC: 48          pha    ; PRG $06BFC
  $8BFD: a9 03       lda #$03    ; PRG $06BFD
  $8BFF: 48          pha    ; PRG $06BFF
  $8C00: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $06C00
  $8C03: fa d4 06    .db $fa $d4 $06  -> vm $D4FA argc 6    ; PRG $06C03
  $8C06: ad 9d 72    lda $729d    ; PRG $06C06
  $8C09: d0 03       bne $8c0e    ; PRG $06C09
  $8C0B: 4c 75 8c    jmp $8c75   ; nat_5_0c75    ; PRG $06C0B
  $8C0E: 18          clc    ; PRG $06C0E
  $8C0F: a9 ff       lda #$ff    ; PRG $06C0F
  $8C11: 6d 9d 72    adc $729d    ; PRG $06C11
  $8C14: 8d 9d 72    sta $729d    ; PRG $06C14
  $8C17: a9 ff       lda #$ff    ; PRG $06C17
  $8C19: 69 00       adc #$00    ; PRG $06C19
  $8C1B: ad 9e 72    lda $729e    ; PRG $06C1B
  $8C1E: 85 18       sta $18    ; PRG $06C1E
  $8C20: 86 19       stx $19    ; PRG $06C20
  $8C22: a5 18       lda $18    ; PRG $06C22
  $8C24: 05 19       ora $19    ; PRG $06C24
  $8C26: d0 03       bne $8c2b    ; PRG $06C26
  $8C28: 4c 3b 8c    jmp $8c3b    ; PRG $06C28
  $8C2B: ad 9d 72    lda $729d    ; PRG $06C2B
  $8C2E: 85 18       sta $18    ; PRG $06C2E
  $8C30: 86 19       stx $19    ; PRG $06C30
  $8C32: a5 18       lda $18    ; PRG $06C32
  $8C34: 05 19       ora $19    ; PRG $06C34
  $8C36: f0 03       beq $8c3b    ; PRG $06C36
  $8C38: 4c 62 8c    jmp $8c62    ; PRG $06C38
  $8C3B: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $06C3B
  $8C3E: b0 81 02    .db $b0 $81 $02  -> vm $81B0 argc 2    ; PRG $06C3E
  $8C41: ad 9e 72    lda $729e    ; PRG $06C41
  $8C44: 85 18       sta $18    ; PRG $06C44
  $8C46: 86 19       stx $19    ; PRG $06C46
  $8C48: a5 19       lda $19    ; PRG $06C48
  $8C4A: 48          pha    ; PRG $06C4A
  $8C4B: a5 18       lda $18    ; PRG $06C4B
  $8C4D: 48          pha    ; PRG $06C4D
  $8C4E: 8a          txa    ; PRG $06C4E
  $8C4F: 48          pha    ; PRG $06C4F
  $8C50: a9 24       lda #$24    ; PRG $06C50
  $8C52: 48          pha    ; PRG $06C52
  $8C53: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $06C53
  $8C56: fa d4 06    .db $fa $d4 $06  -> vm $D4FA argc 6    ; PRG $06C56
  $8C59: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $06C59
  $8C5C: 87 80 02    .db $87 $80 $02  -> vm $8087 argc 2    ; PRG $06C5C
  $8C5F: 4c 75 8c    jmp $8c75   ; nat_5_0c75    ; PRG $06C5F
  $8C62: ad 9e 72    lda $729e    ; PRG $06C62
  $8C65: 85 18       sta $18    ; PRG $06C65
  $8C67: 86 19       stx $19    ; PRG $06C67
  $8C69: a5 19       lda $19    ; PRG $06C69
  $8C6B: 48          pha    ; PRG $06C6B
  $8C6C: a5 18       lda $18    ; PRG $06C6C
  $8C6E: 48          pha    ; PRG $06C6E
  $8C6F: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $06C6F
  $8C72: 22 9a 04    .db $22 $9a $04  -> vm $9A22 argc 4    ; PRG $06C72
  $8C75: ad 67 72    lda $7267    ; PRG $06C75
  $8C78: f0 03       beq $8c7d    ; PRG $06C78
  $8C7A: 4c 80 8c    jmp $8c80    ; PRG $06C7A
  $8C7D: 4c a7 88    jmp $88a7    ; PRG $06C7D
  $8C80: ad 67 72    lda $7267    ; PRG $06C80
  $8C83: f0 03       beq $8c88    ; PRG $06C83
  $8C85: 4c 8b 8c    jmp $8c8b    ; PRG $06C85
  $8C88: 4c eb 87    jmp $87eb    ; PRG $06C88
  $8C8B: 8e 8c 6b    stx $6b8c    ; PRG $06C8B
  $8C8E: 60          rts    ; PRG $06C8E

; ---- sub_3_0c95  [stub]  <- (entry: bytecode/OS via $E299)
nat_3_0c8f: jsr $E299                    ; 3:8C8F  native-call prologue
            .db $00 $fc $ff            ; inline: argcount $00, frame $fffc
  $8C95: ee 8b 6b    inc $6b8b   ; game_year_off    ; PRG $06C95
  $8C98: ad 8b 6b    lda $6b8b   ; game_year_off    ; PRG $06C98
  $8C9B: 85 18       sta $18    ; PRG $06C9B
  $8C9D: 86 19       stx $19    ; PRG $06C9D
  $8C9F: a9 15       lda #$15    ; PRG $06C9F
  $8CA1: c5 18       cmp $18    ; PRG $06CA1
  $8CA3: 8a          txa    ; PRG $06CA3
  $8CA4: e5 19       sbc $19    ; PRG $06CA4
  $8CA6: 90 03       bcc $8cab    ; PRG $06CA6
  $8CA8: 4c b0 8c    jmp $8cb0    ; PRG $06CA8
  $8CAB: a9 03       lda #$03    ; PRG $06CAB
  $8CAD: 8d 67 72    sta $7267    ; PRG $06CAD
  $8CB0: a9 be       lda #$be    ; PRG $06CB0
  $8CB2: a0 fe       ldy #$fe    ; PRG $06CB2
  $8CB4: 91 06       sta ($06),y    ; PRG $06CB4
  $8CB6: a9 6b       lda #$6b    ; PRG $06CB6
  $8CB8: c8          iny    ; PRG $06CB8
  $8CB9: 91 06       sta ($06),y    ; PRG $06CB9
  $8CBB: 18          clc    ; PRG $06CBB
  $8CBC: a9 d2       lda #$d2    ; PRG $06CBC
  $8CBE: 69 be       adc #$be    ; PRG $06CBE
  $8CC0: a0 fc       ldy #$fc    ; PRG $06CC0
  $8CC2: 91 06       sta ($06),y    ; PRG $06CC2
  $8CC4: 8a          txa    ; PRG $06CC4
  $8CC5: 69 6b       adc #$6b    ; PRG $06CC5
  $8CC7: c8          iny    ; PRG $06CC7
  $8CC8: 91 06       sta ($06),y    ; PRG $06CC8
  $8CCA: 4c dc 8c    jmp $8cdc    ; PRG $06CCA
  $8CCD: 18          clc    ; PRG $06CCD
  $8CCE: a9 0a       lda #$0a    ; PRG $06CCE
  $8CD0: a0 fe       ldy #$fe    ; PRG $06CD0
  $8CD2: 71 06       adc ($06),y    ; PRG $06CD2
  $8CD4: 91 06       sta ($06),y    ; PRG $06CD4
  $8CD6: 8a          txa    ; PRG $06CD6
  $8CD7: c8          iny    ; PRG $06CD7
  $8CD8: 71 06       adc ($06),y    ; PRG $06CD8
  $8CDA: 91 06       sta ($06),y    ; PRG $06CDA
  $8CDC: a0 fe       ldy #$fe    ; PRG $06CDC
  $8CDE: b1 06       lda ($06),y    ; PRG $06CDE
  $8CE0: a0 fc       ldy #$fc    ; PRG $06CE0
  $8CE2: d1 06       cmp ($06),y    ; PRG $06CE2
  $8CE4: a0 ff       ldy #$ff    ; PRG $06CE4
  $8CE6: b1 06       lda ($06),y    ; PRG $06CE6
  $8CE8: a0 fd       ldy #$fd    ; PRG $06CE8
  $8CEA: f1 06       sbc ($06),y    ; PRG $06CEA
  $8CEC: 90 03       bcc $8cf1    ; PRG $06CEC
  $8CEE: 4c 08 8d    jmp $8d08    ; PRG $06CEE
  $8CF1: c8          iny    ; PRG $06CF1
  $8CF2: b1 06       lda ($06),y    ; PRG $06CF2
  $8CF4: 85 18       sta $18    ; PRG $06CF4
  $8CF6: c8          iny    ; PRG $06CF6
  $8CF7: b1 06       lda ($06),y    ; PRG $06CF7
  $8CF9: 85 19       sta $19    ; PRG $06CF9
  $8CFB: 18          clc    ; PRG $06CFB
  $8CFC: a9 01       lda #$01    ; PRG $06CFC
  $8CFE: 61 18       adc ($18,x)    ; PRG $06CFE
  $8D00: 81 18       sta ($18,x)    ; PRG $06D00
  $8D02: 8a          txa    ; PRG $06D02
  $8D03: 69 00       adc #$00    ; PRG $06D03
  $8D05: 4c cd 8c    jmp $8ccd    ; PRG $06D05
  $8D08: 60          rts    ; PRG $06D08

; ---- sub_3_0d0f  [stub]  <- (entry: bytecode/OS via $E299)
nat_3_0d09: jsr $E299                    ; 3:8D09  native-call prologue
            .db $00 $fe $ff            ; inline: argcount $00, frame $fffe
  $8D0F: 4c 15 8d    jmp $8d15    ; PRG $06D0F
  $8D12: ee 8a 6b    inc $6b8a   ; game_month    ; PRG $06D12
  $8D15: ad 8a 6b    lda $6b8a   ; game_month    ; PRG $06D15
  $8D18: 85 18       sta $18    ; PRG $06D18
  $8D1A: 86 19       stx $19    ; PRG $06D1A
  $8D1C: a5 18       lda $18    ; PRG $06D1C
  $8D1E: c9 0c       cmp #$0c    ; PRG $06D1E
  $8D20: a5 19       lda $19    ; PRG $06D20
  $8D22: e9 00       sbc #$00    ; PRG $06D22
  $8D24: 90 03       bcc $8d29    ; PRG $06D24
  $8D26: 4c a1 8d    jmp $8da1    ; PRG $06D26
  $8D29: ad 8a 6b    lda $6b8a   ; game_month    ; PRG $06D29
  $8D2C: 85 18       sta $18    ; PRG $06D2C
  $8D2E: 86 19       stx $19    ; PRG $06D2E
  $8D30: a5 19       lda $19    ; PRG $06D30
  $8D32: 48          pha    ; PRG $06D32
  $8D33: a5 18       lda $18    ; PRG $06D33
  $8D35: 48          pha    ; PRG $06D35
  $8D36: ad 8b 6b    lda $6b8b   ; game_year_off    ; PRG $06D36
  $8D39: 85 18       sta $18    ; PRG $06D39
  $8D3B: 86 19       stx $19    ; PRG $06D3B
  $8D3D: a5 19       lda $19    ; PRG $06D3D
  $8D3F: 48          pha    ; PRG $06D3F
  $8D40: a5 18       lda $18    ; PRG $06D40
  $8D42: 48          pha    ; PRG $06D42
  $8D43: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $06D43
  $8D46: 8c 82 06    .db $8c $82 $06  -> vm $828C argc 6    ; PRG $06D46
  $8D49: a5 08       lda $08    ; PRG $06D49
  $8D4B: a0 fe       ldy #$fe    ; PRG $06D4B
  $8D4D: 91 06       sta ($06),y    ; PRG $06D4D
  $8D4F: a5 09       lda $09    ; PRG $06D4F
  $8D51: c8          iny    ; PRG $06D51
  $8D52: 91 06       sta ($06),y    ; PRG $06D52
  $8D54: 4c 5a 8d    jmp $8d5a    ; PRG $06D54
  $8D57: ee 89 6b    inc $6b89   ; game_day    ; PRG $06D57
  $8D5A: ad 89 6b    lda $6b89   ; game_day    ; PRG $06D5A
  $8D5D: 85 18       sta $18    ; PRG $06D5D
  $8D5F: 86 19       stx $19    ; PRG $06D5F
  $8D61: a5 18       lda $18    ; PRG $06D61
  $8D63: a0 fe       ldy #$fe    ; PRG $06D63
  $8D65: d1 06       cmp ($06),y    ; PRG $06D65
  $8D67: a5 19       lda $19    ; PRG $06D67
  $8D69: c8          iny    ; PRG $06D69
  $8D6A: f1 06       sbc ($06),y    ; PRG $06D6A
  $8D6C: 90 03       bcc $8d71    ; PRG $06D6C
  $8D6E: 4c 85 8d    jmp $8d85    ; PRG $06D6E
  $8D71: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $06D71
  $8D74: 60 86 02    .db $60 $86 $02  -> vm $8660 argc 2    ; PRG $06D74
  $8D77: ad 67 72    lda $7267    ; PRG $06D77
  $8D7A: d0 03       bne $8d7f    ; PRG $06D7A
  $8D7C: 4c 82 8d    jmp $8d82    ; PRG $06D7C
  $8D7F: 4c 85 8d    jmp $8d85    ; PRG $06D7F
  $8D82: 4c 57 8d    jmp $8d57    ; PRG $06D82
  $8D85: ad 67 72    lda $7267    ; PRG $06D85
  $8D88: d0 03       bne $8d8d    ; PRG $06D88
  $8D8A: 4c 90 8d    jmp $8d90    ; PRG $06D8A
  $8D8D: 4c a1 8d    jmp $8da1    ; PRG $06D8D
  $8D90: 8e 89 6b    stx $6b89   ; game_day    ; PRG $06D90
  $8D93: 8a          txa    ; PRG $06D93
  $8D94: 48          pha    ; PRG $06D94
  $8D95: a9 23       lda #$23    ; PRG $06D95
  $8D97: 48          pha    ; PRG $06D97
  $8D98: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $06D98
  $8D9B: a5 d4 04    .db $a5 $d4 $04  -> vm $D4A5 argc 4    ; PRG $06D9B
  $8D9E: 4c 12 8d    jmp $8d12    ; PRG $06D9E
  $8DA1: ad 67 72    lda $7267    ; PRG $06DA1
  $8DA4: d0 03       bne $8da9    ; PRG $06DA4
  $8DA6: 4c ac 8d    jmp $8dac    ; PRG $06DA6
  $8DA9: 4c c5 8d    jmp $8dc5    ; PRG $06DA9
  $8DAC: 8e 8a 6b    stx $6b8a   ; game_month    ; PRG $06DAC
  $8DAF: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $06DAF
  $8DB2: 8f 8c 02    .db $8f $8c $02  -> vm $8C8F argc 2    ; PRG $06DB2
  $8DB5: ad 67 72    lda $7267    ; PRG $06DB5
  $8DB8: 85 18       sta $18    ; PRG $06DB8
  $8DBA: 86 19       stx $19    ; PRG $06DBA
  $8DBC: a5 18       lda $18    ; PRG $06DBC
  $8DBE: 05 19       ora $19    ; PRG $06DBE
  $8DC0: d0 03       bne $8dc5    ; PRG $06DC0
  $8DC2: 4c 0f 8d    jmp $8d0f    ; PRG $06DC2
  $8DC5: 60          rts    ; PRG $06DC5

; ---- sub_3_0dcc  [stub]  <- (entry: bytecode/OS via $E299)
nat_3_0dc6: jsr $E299                    ; 3:8DC6  native-call prologue
            .db $00 $fa $ff            ; inline: argcount $00, frame $fffa
  $8DCC: a0 fa       ldy #$fa    ; PRG $06DCC
  $8DCE: 91 06       sta ($06),y    ; PRG $06DCE
  $8DD0: c8          iny    ; PRG $06DD0
  $8DD1: 91 06       sta ($06),y    ; PRG $06DD1
  $8DD3: 18          clc    ; PRG $06DD3
  $8DD4: a0 0d       ldy #$0d    ; PRG $06DD4
  $8DD6: b1 04       lda ($04),y    ; PRG $06DD6
  $8DD8: a0 0b       ldy #$0b    ; PRG $06DD8
  $8DDA: 71 04       adc ($04),y    ; PRG $06DDA
  $8DDC: a0 fe       ldy #$fe    ; PRG $06DDC
  $8DDE: 91 06       sta ($06),y    ; PRG $06DDE
  $8DE0: a0 0e       ldy #$0e    ; PRG $06DE0
  $8DE2: b1 04       lda ($04),y    ; PRG $06DE2
  $8DE4: a0 0c       ldy #$0c    ; PRG $06DE4
  $8DE6: 71 04       adc ($04),y    ; PRG $06DE6
  $8DE8: a0 ff       ldy #$ff    ; PRG $06DE8
  $8DEA: 91 06       sta ($06),y    ; PRG $06DEA
  $8DEC: 4c fe 8d    jmp $8dfe    ; PRG $06DEC
  $8DEF: 18          clc    ; PRG $06DEF
  $8DF0: a9 01       lda #$01    ; PRG $06DF0
  $8DF2: a0 0d       ldy #$0d    ; PRG $06DF2
  $8DF4: 71 04       adc ($04),y    ; PRG $06DF4
  $8DF6: 91 04       sta ($04),y    ; PRG $06DF6
  $8DF8: 8a          txa    ; PRG $06DF8
  $8DF9: c8          iny    ; PRG $06DF9
  $8DFA: 71 04       adc ($04),y    ; PRG $06DFA
  $8DFC: 91 04       sta ($04),y    ; PRG $06DFC
  $8DFE: a0 0d       ldy #$0d    ; PRG $06DFE
  $8E00: b1 04       lda ($04),y    ; PRG $06E00
  $8E02: a0 fe       ldy #$fe    ; PRG $06E02
  $8E04: d1 06       cmp ($06),y    ; PRG $06E04
  $8E06: a0 0e       ldy #$0e    ; PRG $06E06
  $8E08: b1 04       lda ($04),y    ; PRG $06E08
  $8E0A: a0 ff       ldy #$ff    ; PRG $06E0A
  $8E0C: f1 06       sbc ($06),y    ; PRG $06E0C
  $8E0E: 90 03       bcc $8e13    ; PRG $06E0E
  $8E10: 4c 1d 8f    jmp $8f1d   ; nat_5_0f1d    ; PRG $06E10
  $8E13: a9 07       lda #$07    ; PRG $06E13
  $8E15: 85 18       sta $18    ; PRG $06E15
  $8E17: 86 19       stx $19    ; PRG $06E17
  $8E19: a0 0d       ldy #$0d    ; PRG $06E19
  $8E1B: b1 04       lda ($04),y    ; PRG $06E1B
  $8E1D: 85 14       sta $14    ; PRG $06E1D
  $8E1F: c8          iny    ; PRG $06E1F
  $8E20: b1 04       lda ($04),y    ; PRG $06E20
  $8E22: 85 15       sta $15    ; PRG $06E22
  $8E24: a1 14       lda ($14,x)    ; PRG $06E24
  $8E26: 85 10       sta $10    ; PRG $06E26
  $8E28: 86 11       stx $11    ; PRG $06E28
  $8E2A: a0 10       ldy #$10    ; PRG $06E2A
  $8E2C: a2 18       ldx #$18    ; PRG $06E2C
  $8E2E: a9 14       lda #$14    ; PRG $06E2E
  $8E30: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $06E30
  $8E33: 18          clc    ; PRG $06E33
  $8E34: a5 14       lda $14    ; PRG $06E34
  $8E36: 69 96       adc #$96    ; PRG $06E36
  $8E38: 85 18       sta $18    ; PRG $06E38
  $8E3A: a5 15       lda $15    ; PRG $06E3A
  $8E3C: 69 6c       adc #$6c    ; PRG $06E3C
  $8E3E: 85 19       sta $19    ; PRG $06E3E
  $8E40: a1 18       lda ($18,x)    ; PRG $06E40
  $8E42: 85 14       sta $14    ; PRG $06E42
  $8E44: 86 15       stx $15    ; PRG $06E44
  $8E46: a9 0f       lda #$0f    ; PRG $06E46
  $8E48: 25 14       and $14    ; PRG $06E48
  $8E4A: 85 18       sta $18    ; PRG $06E4A
  $8E4C: 8a          txa    ; PRG $06E4C
  $8E4D: 85 19       sta $19    ; PRG $06E4D
  $8E4F: 18          clc    ; PRG $06E4F
  $8E50: a9 fb       lda #$fb    ; PRG $06E50
  $8E52: 65 18       adc $18    ; PRG $06E52
  $8E54: a0 fc       ldy #$fc    ; PRG $06E54
  $8E56: 91 06       sta ($06),y    ; PRG $06E56
  $8E58: a9 ff       lda #$ff    ; PRG $06E58
  $8E5A: 65 19       adc $19    ; PRG $06E5A
  $8E5C: c8          iny    ; PRG $06E5C
  $8E5D: 91 06       sta ($06),y    ; PRG $06E5D
  $8E5F: a9 02       lda #$02    ; PRG $06E5F
  $8E61: 85 18       sta $18    ; PRG $06E61
  $8E63: 86 19       stx $19    ; PRG $06E63
  $8E65: 88          dey    ; PRG $06E65
  $8E66: b1 06       lda ($06),y    ; PRG $06E66
  $8E68: 85 14       sta $14    ; PRG $06E68
  $8E6A: c8          iny    ; PRG $06E6A
  $8E6B: b1 06       lda ($06),y    ; PRG $06E6B
  $8E6D: 85 15       sta $15    ; PRG $06E6D
  $8E6F: a0 14       ldy #$14    ; PRG $06E6F
  $8E71: a2 18       ldx #$18    ; PRG $06E71
  $8E73: a9 10       lda #$10    ; PRG $06E73
  $8E75: 20 fd e1    jsr $e1fd   ; div16_unsigned    ; PRG $06E75
  $8E78: 38          sec    ; PRG $06E78
  $8E79: a9 03       lda #$03    ; PRG $06E79
  $8E7B: e5 10       sbc $10    ; PRG $06E7B
  $8E7D: 85 18       sta $18    ; PRG $06E7D
  $8E7F: 8a          txa    ; PRG $06E7F
  $8E80: e5 11       sbc $11    ; PRG $06E80
  $8E82: 85 19       sta $19    ; PRG $06E82
  $8E84: a9 03       lda #$03    ; PRG $06E84
  $8E86: 85 14       sta $14    ; PRG $06E86
  $8E88: 86 15       stx $15    ; PRG $06E88
  $8E8A: a9 14       lda #$14    ; PRG $06E8A
  $8E8C: 85 10       sta $10    ; PRG $06E8C
  $8E8E: 86 11       stx $11    ; PRG $06E8E
  $8E90: a9 02       lda #$02    ; PRG $06E90
  $8E92: 85 0c       sta $0c    ; PRG $06E92
  $8E94: 86 0d       stx $0d    ; PRG $06E94
  $8E96: a0 fc       ldy #$fc    ; PRG $06E96
  $8E98: b1 06       lda ($06),y    ; PRG $06E98
  $8E9A: 85 08       sta $08    ; PRG $06E9A
  $8E9C: c8          iny    ; PRG $06E9C
  $8E9D: b1 06       lda ($06),y    ; PRG $06E9D
  $8E9F: 85 09       sta $09    ; PRG $06E9F
  $8EA1: a2 18       ldx #$18    ; PRG $06EA1
  $8EA3: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $06EA3
  $8EA6: a0 08       ldy #$08    ; PRG $06EA6
  $8EA8: a2 0c       ldx #$0c    ; PRG $06EA8
  $8EAA: a9 18       lda #$18    ; PRG $06EAA
  $8EAC: 20 15 e4    jsr $e415   ; alu_shr16_n    ; PRG $06EAC
  $8EAF: 84 0c       sty $0c    ; PRG $06EAF
  $8EB1: 86 0d       stx $0d    ; PRG $06EB1
  $8EB3: a0 fc       ldy #$fc    ; PRG $06EB3
  $8EB5: b1 06       lda ($06),y    ; PRG $06EB5
  $8EB7: 85 08       sta $08    ; PRG $06EB7
  $8EB9: c8          iny    ; PRG $06EB9
  $8EBA: b1 06       lda ($06),y    ; PRG $06EBA
  $8EBC: 85 09       sta $09    ; PRG $06EBC
  $8EBE: a2 14       ldx #$14    ; PRG $06EBE
  $8EC0: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $06EC0
  $8EC3: a0 08       ldy #$08    ; PRG $06EC3
  $8EC5: a2 0c       ldx #$0c    ; PRG $06EC5
  $8EC7: a9 14       lda #$14    ; PRG $06EC7
  $8EC9: 20 15 e4    jsr $e415   ; alu_shr16_n    ; PRG $06EC9
  $8ECC: 18          clc    ; PRG $06ECC
  $8ECD: a5 14       lda $14    ; PRG $06ECD
  $8ECF: 65 18       adc $18    ; PRG $06ECF
  $8ED1: 85 0c       sta $0c    ; PRG $06ED1
  $8ED3: a5 15       lda $15    ; PRG $06ED3
  $8ED5: 65 19       adc $19    ; PRG $06ED5
  $8ED7: 85 0d       sta $0d    ; PRG $06ED7
  $8ED9: a0 0c       ldy #$0c    ; PRG $06ED9
  $8EDB: a2 10       ldx #$10    ; PRG $06EDB
  $8EDD: a9 18       lda #$18    ; PRG $06EDD
  $8EDF: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $06EDF
  $8EE2: 18          clc    ; PRG $06EE2
  $8EE3: a9 0a       lda #$0a    ; PRG $06EE3
  $8EE5: 65 18       adc $18    ; PRG $06EE5
  $8EE7: 85 14       sta $14    ; PRG $06EE7
  $8EE9: 8a          txa    ; PRG $06EE9
  $8EEA: 65 19       adc $19    ; PRG $06EEA
  $8EEC: 85 15       sta $15    ; PRG $06EEC
  $8EEE: a2 18       ldx #$18    ; PRG $06EEE
  $8EF0: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $06EF0
  $8EF3: a0 14       ldy #$14    ; PRG $06EF3
  $8EF5: a2 18       ldx #$18    ; PRG $06EF5
  $8EF7: a9 10       lda #$10    ; PRG $06EF7
  $8EF9: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $06EF9
  $8EFC: a2 18       ldx #$18    ; PRG $06EFC
  $8EFE: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $06EFE
  $8F01: a0 10       ldy #$10    ; PRG $06F01
  $8F03: a2 18       ldx #$18    ; PRG $06F03
  $8F05: a9 14       lda #$14    ; PRG $06F05
  $8F07: 20 b4 e1    jsr $e1b4   ; alu_abs16    ; PRG $06F07
  $8F0A: 18          clc    ; PRG $06F0A
  $8F0B: a0 fa       ldy #$fa    ; PRG $06F0B
  $8F0D: b1 06       lda ($06),y    ; PRG $06F0D
  $8F0F: 65 14       adc $14    ; PRG $06F0F
  $8F11: 91 06       sta ($06),y    ; PRG $06F11
  $8F13: c8          iny    ; PRG $06F13
  $8F14: b1 06       lda ($06),y    ; PRG $06F14
  $8F16: 65 15       adc $15    ; PRG $06F16
  $8F18: 91 06       sta ($06),y    ; PRG $06F18
  $8F1A: 4c ef 8d    jmp $8def    ; PRG $06F1A
  $8F1D: a9 05       lda #$05    ; PRG $06F1D
  $8F1F: 85 18       sta $18    ; PRG $06F1F
  $8F21: 86 19       stx $19    ; PRG $06F21
  $8F23: a0 fa       ldy #$fa    ; PRG $06F23
  $8F25: b1 06       lda ($06),y    ; PRG $06F25
  $8F27: 85 14       sta $14    ; PRG $06F27
  $8F29: c8          iny    ; PRG $06F29
  $8F2A: b1 06       lda ($06),y    ; PRG $06F2A
  $8F2C: 85 15       sta $15    ; PRG $06F2C
  $8F2E: a0 14       ldy #$14    ; PRG $06F2E
  $8F30: a2 18       ldx #$18    ; PRG $06F30
  $8F32: a9 08       lda #$08    ; PRG $06F32
  $8F34: 20 b4 e1    jsr $e1b4   ; alu_abs16    ; PRG $06F34
  $8F37: 60          rts    ; PRG $06F37

; ---- sub_3_0f3e  [stub]  <- (entry: bytecode/OS via $E299)
nat_3_0f38: jsr $E299                    ; 3:8F38  native-call prologue
            .db $00 $f4 $ff            ; inline: argcount $00, frame $fff4
  $8F3E: a0 fa       ldy #$fa    ; PRG $06F3E
  $8F40: 91 06       sta ($06),y    ; PRG $06F40
  $8F42: c8          iny    ; PRG $06F42
  $8F43: 91 06       sta ($06),y    ; PRG $06F43
  $8F45: 18          clc    ; PRG $06F45
  $8F46: a0 0d       ldy #$0d    ; PRG $06F46
  $8F48: b1 04       lda ($04),y    ; PRG $06F48
  $8F4A: a0 0b       ldy #$0b    ; PRG $06F4A
  $8F4C: 71 04       adc ($04),y    ; PRG $06F4C
  $8F4E: 85 18       sta $18    ; PRG $06F4E
  $8F50: a0 0e       ldy #$0e    ; PRG $06F50
  $8F52: b1 04       lda ($04),y    ; PRG $06F52
  $8F54: a0 0c       ldy #$0c    ; PRG $06F54
  $8F56: 71 04       adc ($04),y    ; PRG $06F56
  $8F58: 85 19       sta $19    ; PRG $06F58
  $8F5A: 18          clc    ; PRG $06F5A
  $8F5B: a9 ff       lda #$ff    ; PRG $06F5B
  $8F5D: 65 18       adc $18    ; PRG $06F5D
  $8F5F: a0 fe       ldy #$fe    ; PRG $06F5F
  $8F61: 91 06       sta ($06),y    ; PRG $06F61
  $8F63: a9 ff       lda #$ff    ; PRG $06F63
  $8F65: 65 19       adc $19    ; PRG $06F65
  $8F67: c8          iny    ; PRG $06F67
  $8F68: 91 06       sta ($06),y    ; PRG $06F68
  $8F6A: 4c 7d 8f    jmp $8f7d    ; PRG $06F6A
  $8F6D: 18          clc    ; PRG $06F6D
  $8F6E: a9 ff       lda #$ff    ; PRG $06F6E
  $8F70: a0 fe       ldy #$fe    ; PRG $06F70
  $8F72: 71 06       adc ($06),y    ; PRG $06F72
  $8F74: 91 06       sta ($06),y    ; PRG $06F74
  $8F76: a9 ff       lda #$ff    ; PRG $06F76
  $8F78: c8          iny    ; PRG $06F78
  $8F79: 71 06       adc ($06),y    ; PRG $06F79
  $8F7B: 91 06       sta ($06),y    ; PRG $06F7B
  $8F7D: a0 fe       ldy #$fe    ; PRG $06F7D
  $8F7F: b1 06       lda ($06),y    ; PRG $06F7F
  $8F81: a0 0d       ldy #$0d    ; PRG $06F81
  $8F83: d1 04       cmp ($04),y    ; PRG $06F83
  $8F85: a0 ff       ldy #$ff    ; PRG $06F85
  $8F87: b1 06       lda ($06),y    ; PRG $06F87
  $8F89: a0 0e       ldy #$0e    ; PRG $06F89
  $8F8B: f1 04       sbc ($04),y    ; PRG $06F8B
  $8F8D: b0 03       bcs $8f92    ; PRG $06F8D
  $8F8F: 4c 18 91    jmp $9118   ; duel_scan_666d    ; PRG $06F8F
  $8F92: a0 fe       ldy #$fe    ; PRG $06F92
  $8F94: b1 06       lda ($06),y    ; PRG $06F94
  $8F96: 85 18       sta $18    ; PRG $06F96
  $8F98: c8          iny    ; PRG $06F98
  $8F99: b1 06       lda ($06),y    ; PRG $06F99
  $8F9B: 85 19       sta $19    ; PRG $06F9B
  $8F9D: a1 18       lda ($18,x)    ; PRG $06F9D
  $8F9F: 85 14       sta $14    ; PRG $06F9F
  $8FA1: 86 15       stx $15    ; PRG $06FA1
  $8FA3: a5 14       lda $14    ; PRG $06FA3
  $8FA5: a0 fc       ldy #$fc    ; PRG $06FA5
  $8FA7: 91 06       sta ($06),y    ; PRG $06FA7
  $8FA9: a5 15       lda $15    ; PRG $06FA9
  $8FAB: c8          iny    ; PRG $06FAB
  $8FAC: 91 06       sta ($06),y    ; PRG $06FAC
  $8FAE: a9 07       lda #$07    ; PRG $06FAE
  $8FB0: 85 18       sta $18    ; PRG $06FB0
  $8FB2: 86 19       stx $19    ; PRG $06FB2
  $8FB4: 88          dey    ; PRG $06FB4
  $8FB5: b1 06       lda ($06),y    ; PRG $06FB5
  $8FB7: 85 14       sta $14    ; PRG $06FB7
  $8FB9: c8          iny    ; PRG $06FB9
  $8FBA: b1 06       lda ($06),y    ; PRG $06FBA
  $8FBC: 85 15       sta $15    ; PRG $06FBC
  $8FBE: a0 14       ldy #$14    ; PRG $06FBE
  $8FC0: a2 18       ldx #$18    ; PRG $06FC0
  $8FC2: a9 10       lda #$10    ; PRG $06FC2
  $8FC4: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $06FC4
  $8FC7: 18          clc    ; PRG $06FC7
  $8FC8: a5 10       lda $10    ; PRG $06FC8
  $8FCA: 69 90       adc #$90    ; PRG $06FCA
  $8FCC: a0 f6       ldy #$f6    ; PRG $06FCC
  $8FCE: 91 06       sta ($06),y    ; PRG $06FCE
  $8FD0: a5 11       lda $11    ; PRG $06FD0
  $8FD2: 69 6c       adc #$6c    ; PRG $06FD2
  $8FD4: c8          iny    ; PRG $06FD4
  $8FD5: 91 06       sta ($06),y    ; PRG $06FD5
  $8FD7: 88          dey    ; PRG $06FD7
  $8FD8: b1 06       lda ($06),y    ; PRG $06FD8
  $8FDA: 85 18       sta $18    ; PRG $06FDA
  $8FDC: c8          iny    ; PRG $06FDC
  $8FDD: b1 06       lda ($06),y    ; PRG $06FDD
  $8FDF: 85 19       sta $19    ; PRG $06FDF
  $8FE1: a1 18       lda ($18,x)    ; PRG $06FE1
  $8FE3: 85 14       sta $14    ; PRG $06FE3
  $8FE5: 86 15       stx $15    ; PRG $06FE5
  $8FE7: a0 0f       ldy #$0f    ; PRG $06FE7
  $8FE9: b1 04       lda ($04),y    ; PRG $06FE9
  $8FEB: c5 14       cmp $14    ; PRG $06FEB
  $8FED: c8          iny    ; PRG $06FED
  $8FEE: b1 04       lda ($04),y    ; PRG $06FEE
  $8FF0: e5 15       sbc $15    ; PRG $06FF0
  $8FF2: b0 03       bcs $8ff7    ; PRG $06FF2
  $8FF4: 4c ef 90    jmp $90ef    ; PRG $06FF4
  $8FF7: a9 03       lda #$03    ; PRG $06FF7
  $8FF9: 85 18       sta $18    ; PRG $06FF9
  $8FFB: 86 19       stx $19    ; PRG $06FFB
  $8FFD: 18          clc    ; PRG $06FFD
  $8FFE: a9 fb       lda #$fb    ; PRG $06FFE
  $9000: a0 fc       ldy #$fc    ; PRG $07000
  $9002: 71 06       adc ($06),y    ; PRG $07002
  $9004: 85 14       sta $14    ; PRG $07004
  $9006: a9 ff       lda #$ff    ; PRG $07006
  $9008: c8          iny    ; PRG $07008
  $9009: 71 06       adc ($06),y    ; PRG $07009
  $900B: 85 15       sta $15    ; PRG $0700B
  $900D: a0 14       ldy #$14    ; PRG $0700D
  $900F: a2 18       ldx #$18    ; PRG $0700F
  $9011: a9 10       lda #$10    ; PRG $07011
  $9013: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $07013
  $9016: 18          clc    ; PRG $07016
  $9017: a5 10       lda $10    ; PRG $07017
  $9019: 69 00       adc #$00    ; PRG $07019
  $901B: a0 f4       ldy #$f4    ; PRG $0701B
  $901D: 91 06       sta ($06),y    ; PRG $0701D
  $901F: a5 11       lda $11    ; PRG $0701F
  $9021: 69 64       adc #$64    ; PRG $07021
  $9023: c8          iny    ; PRG $07023
  $9024: 91 06       sta ($06),y    ; PRG $07024
  $9026: 88          dey    ; PRG $07026
  $9027: b1 06       lda ($06),y    ; PRG $07027
  $9029: 85 18       sta $18    ; PRG $07029
  $902B: c8          iny    ; PRG $0702B
  $902C: b1 06       lda ($06),y    ; PRG $0702C
  $902E: 85 19       sta $19    ; PRG $0702E
  $9030: a1 18       lda ($18,x)    ; PRG $07030
  $9032: 85 14       sta $14    ; PRG $07032
  $9034: 86 15       stx $15    ; PRG $07034
  $9036: a5 14       lda $14    ; PRG $07036
  $9038: c9 ff       cmp #$ff    ; PRG $07038
  $903A: d0 04       bne $9040    ; PRG $0703A
  $903C: a5 15       lda $15    ; PRG $0703C
  $903E: c9 00       cmp #$00    ; PRG $0703E
  $9040: d0 03       bne $9045    ; PRG $07040
  $9042: 4c cb 90    jmp $90cb    ; PRG $07042
  $9045: 18          clc    ; PRG $07045
  $9046: a0 11       ldy #$11    ; PRG $07046
  $9048: b1 04       lda ($04),y    ; PRG $07048
  $904A: a0 fa       ldy #$fa    ; PRG $0704A
  $904C: 71 06       adc ($06),y    ; PRG $0704C
  $904E: 85 18       sta $18    ; PRG $0704E
  $9050: a0 12       ldy #$12    ; PRG $07050
  $9052: b1 04       lda ($04),y    ; PRG $07052
  $9054: a0 fb       ldy #$fb    ; PRG $07054
  $9056: 71 06       adc ($06),y    ; PRG $07056
  $9058: 85 19       sta $19    ; PRG $07058
  $905A: a0 f4       ldy #$f4    ; PRG $0705A
  $905C: b1 06       lda ($06),y    ; PRG $0705C
  $905E: 85 14       sta $14    ; PRG $0705E
  $9060: c8          iny    ; PRG $07060
  $9061: b1 06       lda ($06),y    ; PRG $07061
  $9063: 85 15       sta $15    ; PRG $07063
  $9065: a1 14       lda ($14,x)    ; PRG $07065
  $9067: 81 18       sta ($18,x)    ; PRG $07067
  $9069: a9 01       lda #$01    ; PRG $07069
  $906B: 85 18       sta $18    ; PRG $0706B
  $906D: 86 19       stx $19    ; PRG $0706D
  $906F: a0 fa       ldy #$fa    ; PRG $0706F
  $9071: b1 06       lda ($06),y    ; PRG $07071
  $9073: 85 14       sta $14    ; PRG $07073
  $9075: c8          iny    ; PRG $07075
  $9076: b1 06       lda ($06),y    ; PRG $07076
  $9078: 85 15       sta $15    ; PRG $07078
  $907A: a0 14       ldy #$14    ; PRG $0707A
  $907C: a2 18       ldx #$18    ; PRG $0707C
  $907E: a9 10       lda #$10    ; PRG $0707E
  $9080: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $07080
  $9083: 18          clc    ; PRG $07083
  $9084: a5 10       lda $10    ; PRG $07084
  $9086: a0 13       ldy #$13    ; PRG $07086
  $9088: 71 04       adc ($04),y    ; PRG $07088
  $908A: 85 18       sta $18    ; PRG $0708A
  $908C: a5 11       lda $11    ; PRG $0708C
  $908E: c8          iny    ; PRG $0708E
  $908F: 71 04       adc ($04),y    ; PRG $0708F
  $9091: 85 19       sta $19    ; PRG $07091
  $9093: a0 f4       ldy #$f4    ; PRG $07093
  $9095: b1 06       lda ($06),y    ; PRG $07095
  $9097: 85 14       sta $14    ; PRG $07097
  $9099: c8          iny    ; PRG $07099
  $909A: b1 06       lda ($06),y    ; PRG $0709A
  $909C: 85 15       sta $15    ; PRG $0709C
  $909E: a0 01       ldy #$01    ; PRG $0709E
  $90A0: b1 14       lda ($14),y    ; PRG $070A0
  $90A2: 81 18       sta ($18,x)    ; PRG $070A2
  $90A4: c8          iny    ; PRG $070A4
  $90A5: b1 14       lda ($14),y    ; PRG $070A5
  $90A7: 88          dey    ; PRG $070A7
  $90A8: 91 18       sta ($18),y    ; PRG $070A8
  $90AA: 18          clc    ; PRG $070AA
  $90AB: 98          tya    ; PRG $070AB
  $90AC: a0 fa       ldy #$fa    ; PRG $070AC
  $90AE: 71 06       adc ($06),y    ; PRG $070AE
  $90B0: 91 06       sta ($06),y    ; PRG $070B0
  $90B2: 8a          txa    ; PRG $070B2
  $90B3: c8          iny    ; PRG $070B3
  $90B4: 71 06       adc ($06),y    ; PRG $070B4
  $90B6: 91 06       sta ($06),y    ; PRG $070B6
  $90B8: a0 f6       ldy #$f6    ; PRG $070B8
  $90BA: b1 06       lda ($06),y    ; PRG $070BA
  $90BC: 85 18       sta $18    ; PRG $070BC
  $90BE: c8          iny    ; PRG $070BE
  $90BF: b1 06       lda ($06),y    ; PRG $070BF
  $90C1: 85 19       sta $19    ; PRG $070C1
  $90C3: a9 bf       lda #$bf    ; PRG $070C3
  $90C5: a0 06       ldy #$06    ; PRG $070C5
  $90C7: 31 18       and ($18),y    ; PRG $070C7
  $90C9: 91 18       sta ($18),y    ; PRG $070C9
  $90CB: a0 f6       ldy #$f6    ; PRG $070CB
  $90CD: b1 06       lda ($06),y    ; PRG $070CD
  $90CF: 85 18       sta $18    ; PRG $070CF
  $90D1: c8          iny    ; PRG $070D1
  $90D2: b1 06       lda ($06),y    ; PRG $070D2
  $90D4: 85 19       sta $19    ; PRG $070D4
  $90D6: a1 18       lda ($18,x)    ; PRG $070D6
  $90D8: 85 14       sta $14    ; PRG $070D8
  $90DA: 86 15       stx $15    ; PRG $070DA
  $90DC: 38          sec    ; PRG $070DC
  $90DD: a0 0f       ldy #$0f    ; PRG $070DD
  $90DF: b1 04       lda ($04),y    ; PRG $070DF
  $90E1: e5 14       sbc $14    ; PRG $070E1
  $90E3: 91 04       sta ($04),y    ; PRG $070E3
  $90E5: c8          iny    ; PRG $070E5
  $90E6: b1 04       lda ($04),y    ; PRG $070E6
  $90E8: e5 15       sbc $15    ; PRG $070E8
  $90EA: 91 04       sta ($04),y    ; PRG $070EA
  $90EC: 4c 09 91    jmp $9109    ; PRG $070EC
  $90EF: a0 f6       ldy #$f6    ; PRG $070EF
  $90F1: b1 06       lda ($06),y    ; PRG $070F1
  $90F3: 85 18       sta $18    ; PRG $070F3
  $90F5: c8          iny    ; PRG $070F5
  $90F6: b1 06       lda ($06),y    ; PRG $070F6
  $90F8: 85 19       sta $19    ; PRG $070F8
  $90FA: 38          sec    ; PRG $070FA
  $90FB: a1 18       lda ($18,x)    ; PRG $070FB
  $90FD: a0 0f       ldy #$0f    ; PRG $070FD
  $90FF: f1 04       sbc ($04),y    ; PRG $070FF
  $9101: 81 18       sta ($18,x)    ; PRG $07101
  $9103: 8a          txa    ; PRG $07103
  $9104: 91 04       sta ($04),y    ; PRG $07104
  $9106: c8          iny    ; PRG $07106
  $9107: 91 04       sta ($04),y    ; PRG $07107
  $9109: a0 0f       ldy #$0f    ; PRG $07109
  $910B: b1 04       lda ($04),y    ; PRG $0710B
  $910D: c8          iny    ; PRG $0710D
  $910E: 11 04       ora ($04),y    ; PRG $0710E
  $9110: d0 03       bne $9115    ; PRG $07110
  $9112: 4c 18 91    jmp $9118   ; duel_scan_666d    ; PRG $07112
  $9115: 4c 6d 8f    jmp $8f6d    ; PRG $07115
  $9118: a0 fa       ldy #$fa    ; PRG $07118
  $911A: b1 06       lda ($06),y    ; PRG $0711A
  $911C: 85 08       sta $08    ; PRG $0711C
  $911E: 86 09       stx $09    ; PRG $0711E
  $9120: 60          rts    ; PRG $07120

; ---- sub_3_1127  [stub]  <- (entry: bytecode/OS via $E299)
nat_3_1121: jsr $E299                    ; 3:9121  native-call prologue
            .db $00 $fe $ff            ; inline: argcount $00, frame $fffe
  $9127: a9 04       lda #$04    ; PRG $07127
  $9129: 85 18       sta $18    ; PRG $07129
  $912B: 86 19       stx $19    ; PRG $0712B
  $912D: a0 0b       ldy #$0b    ; PRG $0712D
  $912F: b1 04       lda ($04),y    ; PRG $0712F
  $9131: 85 14       sta $14    ; PRG $07131
  $9133: c8          iny    ; PRG $07133
  $9134: b1 04       lda ($04),y    ; PRG $07134
  $9136: 85 15       sta $15    ; PRG $07136
  $9138: a0 14       ldy #$14    ; PRG $07138
  $913A: a2 18       ldx #$18    ; PRG $0713A
  $913C: a9 10       lda #$10    ; PRG $0713C
  $913E: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0713E
  $9141: 18          clc    ; PRG $07141
  $9142: a5 10       lda $10    ; PRG $07142
  $9144: 69 62       adc #$62    ; PRG $07144
  $9146: a0 fe       ldy #$fe    ; PRG $07146
  $9148: 91 06       sta ($06),y    ; PRG $07148
  $914A: a5 11       lda $11    ; PRG $0714A
  $914C: 69 66       adc #$66    ; PRG $0714C
  $914E: c8          iny    ; PRG $0714E
  $914F: 91 06       sta ($06),y    ; PRG $0714F
  $9151: a0 0d       ldy #$0d    ; PRG $07151
  $9153: b1 04       lda ($04),y    ; PRG $07153
  $9155: c8          iny    ; PRG $07155
  $9156: 11 04       ora ($04),y    ; PRG $07156
  $9158: d0 03       bne $915d    ; PRG $07158
  $915A: 4c 9e 91    jmp $919e    ; PRG $0715A
  $915D: a0 0c       ldy #$0c    ; PRG $0715D
  $915F: b1 04       lda ($04),y    ; PRG $0715F
  $9161: 48          pha    ; PRG $07161
  $9162: 88          dey    ; PRG $07162
  $9163: b1 04       lda ($04),y    ; PRG $07163
  $9165: 48          pha    ; PRG $07165
  $9166: a0 fe       ldy #$fe    ; PRG $07166
  $9168: b1 06       lda ($06),y    ; PRG $07168
  $916A: 85 18       sta $18    ; PRG $0716A
  $916C: c8          iny    ; PRG $0716C
  $916D: b1 06       lda ($06),y    ; PRG $0716D
  $916F: 85 19       sta $19    ; PRG $0716F
  $9171: a0 03       ldy #$03    ; PRG $07171
  $9173: b1 18       lda ($18),y    ; PRG $07173
  $9175: 85 14       sta $14    ; PRG $07175
  $9177: 86 15       stx $15    ; PRG $07177
  $9179: a5 15       lda $15    ; PRG $07179
  $917B: 48          pha    ; PRG $0717B
  $917C: a5 14       lda $14    ; PRG $0717C
  $917E: 48          pha    ; PRG $0717E
  $917F: a0 fe       ldy #$fe    ; PRG $0717F
  $9181: b1 06       lda ($06),y    ; PRG $07181
  $9183: 85 18       sta $18    ; PRG $07183
  $9185: c8          iny    ; PRG $07185
  $9186: b1 06       lda ($06),y    ; PRG $07186
  $9188: 85 19       sta $19    ; PRG $07188
  $918A: a0 02       ldy #$02    ; PRG $0718A
  $918C: b1 18       lda ($18),y    ; PRG $0718C
  $918E: 85 14       sta $14    ; PRG $0718E
  $9190: 86 15       stx $15    ; PRG $07190
  $9192: a5 15       lda $15    ; PRG $07192
  $9194: 48          pha    ; PRG $07194
  $9195: a5 14       lda $14    ; PRG $07195
  $9197: 48          pha    ; PRG $07197
  $9198: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $07198
  $919B: 18 a9 08    .db $18 $a9 $08  -> vm $A918 argc 8    ; PRG $0719B
  $919E: a0 fe       ldy #$fe    ; PRG $0719E
  $91A0: b1 06       lda ($06),y    ; PRG $071A0
  $91A2: 85 18       sta $18    ; PRG $071A2
  $91A4: c8          iny    ; PRG $071A4
  $91A5: b1 06       lda ($06),y    ; PRG $071A5
  $91A7: 85 19       sta $19    ; PRG $071A7
  $91A9: a9 08       lda #$08    ; PRG $071A9
  $91AB: a0 0f       ldy #$0f    ; PRG $071AB
  $91AD: 11 18       ora ($18),y    ; PRG $071AD
  $91AF: 91 18       sta ($18),y    ; PRG $071AF
  $91B1: a9 07       lda #$07    ; PRG $071B1
  $91B3: 85 18       sta $18    ; PRG $071B3
  $91B5: 86 19       stx $19    ; PRG $071B5
  $91B7: 18          clc    ; PRG $071B7
  $91B8: a9 14       lda #$14    ; PRG $071B8
  $91BA: a0 0b       ldy #$0b    ; PRG $071BA
  $91BC: 71 04       adc ($04),y    ; PRG $071BC
  $91BE: 85 14       sta $14    ; PRG $071BE
  $91C0: 8a          txa    ; PRG $071C0
  $91C1: c8          iny    ; PRG $071C1
  $91C2: 71 04       adc ($04),y    ; PRG $071C2
  $91C4: 85 15       sta $15    ; PRG $071C4
  $91C6: a0 14       ldy #$14    ; PRG $071C6
  $91C8: a2 18       ldx #$18    ; PRG $071C8
  $91CA: a9 10       lda #$10    ; PRG $071CA
  $91CC: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $071CC
  $91CF: 18          clc    ; PRG $071CF
  $91D0: a5 10       lda $10    ; PRG $071D0
  $91D2: 69 48       adc #$48    ; PRG $071D2
  $91D4: 85 18       sta $18    ; PRG $071D4
  $91D6: a5 11       lda $11    ; PRG $071D6
  $91D8: 69 65       adc #$65    ; PRG $071D8
  $91DA: 85 19       sta $19    ; PRG $071DA
  $91DC: 98          tya    ; PRG $071DC
  $91DD: 01 18       ora ($18,x)    ; PRG $071DD
  $91DF: 81 18       sta ($18,x)    ; PRG $071DF
  $91E1: 60          rts    ; PRG $071E1

; ---- sub_3_11e8  [stub]  <- (entry: bytecode/OS via $E299)
nat_3_11e2: jsr $E299                    ; 3:91E2  native-call prologue
            .db $00 $fc $ff            ; inline: argcount $00, frame $fffc
  $91E8: a0 0f       ldy #$0f    ; PRG $071E8
  $91EA: b1 04       lda ($04),y    ; PRG $071EA
  $91EC: c8          iny    ; PRG $071EC
  $91ED: 11 04       ora ($04),y    ; PRG $071ED
  $91EF: d0 03       bne $91f4    ; PRG $071EF
  $91F1: 4c 9f 93    jmp $939f    ; PRG $071F1
  $91F4: 18          clc    ; PRG $071F4
  $91F5: a0 0d       ldy #$0d    ; PRG $071F5
  $91F7: b1 04       lda ($04),y    ; PRG $071F7
  $91F9: a0 0b       ldy #$0b    ; PRG $071F9
  $91FB: 71 04       adc ($04),y    ; PRG $071FB
  $91FD: a0 fe       ldy #$fe    ; PRG $071FD
  $91FF: 91 06       sta ($06),y    ; PRG $071FF
  $9201: a0 0e       ldy #$0e    ; PRG $07201
  $9203: b1 04       lda ($04),y    ; PRG $07203
  $9205: a0 0c       ldy #$0c    ; PRG $07205
  $9207: 71 04       adc ($04),y    ; PRG $07207
  $9209: a0 ff       ldy #$ff    ; PRG $07209
  $920B: 91 06       sta ($06),y    ; PRG $0720B
  $920D: 4c 1f 92    jmp $921f    ; PRG $0720D
  $9210: 18          clc    ; PRG $07210
  $9211: a9 01       lda #$01    ; PRG $07211
  $9213: a0 0d       ldy #$0d    ; PRG $07213
  $9215: 71 04       adc ($04),y    ; PRG $07215
  $9217: 91 04       sta ($04),y    ; PRG $07217
  $9219: 8a          txa    ; PRG $07219
  $921A: c8          iny    ; PRG $0721A
  $921B: 71 04       adc ($04),y    ; PRG $0721B
  $921D: 91 04       sta ($04),y    ; PRG $0721D
  $921F: a0 0d       ldy #$0d    ; PRG $0721F
  $9221: b1 04       lda ($04),y    ; PRG $07221
  $9223: a0 fe       ldy #$fe    ; PRG $07223
  $9225: d1 06       cmp ($06),y    ; PRG $07225
  $9227: a0 0e       ldy #$0e    ; PRG $07227
  $9229: b1 04       lda ($04),y    ; PRG $07229
  $922B: a0 ff       ldy #$ff    ; PRG $0722B
  $922D: f1 06       sbc ($06),y    ; PRG $0722D
  $922F: 90 03       bcc $9234    ; PRG $0722F
  $9231: 4c 9f 93    jmp $939f    ; PRG $07231
  $9234: a9 03       lda #$03    ; PRG $07234
  $9236: 85 18       sta $18    ; PRG $07236
  $9238: 86 19       stx $19    ; PRG $07238
  $923A: a0 0d       ldy #$0d    ; PRG $0723A
  $923C: b1 04       lda ($04),y    ; PRG $0723C
  $923E: 85 14       sta $14    ; PRG $0723E
  $9240: c8          iny    ; PRG $07240
  $9241: b1 04       lda ($04),y    ; PRG $07241
  $9243: 85 15       sta $15    ; PRG $07243
  $9245: a1 14       lda ($14,x)    ; PRG $07245
  $9247: 85 10       sta $10    ; PRG $07247
  $9249: 86 11       stx $11    ; PRG $07249
  $924B: 18          clc    ; PRG $0724B
  $924C: a9 fb       lda #$fb    ; PRG $0724C
  $924E: 65 10       adc $10    ; PRG $0724E
  $9250: 85 14       sta $14    ; PRG $07250
  $9252: a9 ff       lda #$ff    ; PRG $07252
  $9254: 65 11       adc $11    ; PRG $07254
  $9256: 85 15       sta $15    ; PRG $07256
  $9258: a0 14       ldy #$14    ; PRG $07258
  $925A: a2 18       ldx #$18    ; PRG $0725A
  $925C: a9 10       lda #$10    ; PRG $0725C
  $925E: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0725E
  $9261: 18          clc    ; PRG $07261
  $9262: a5 10       lda $10    ; PRG $07262
  $9264: 69 00       adc #$00    ; PRG $07264
  $9266: a0 fc       ldy #$fc    ; PRG $07266
  $9268: 91 06       sta ($06),y    ; PRG $07268
  $926A: a5 11       lda $11    ; PRG $0726A
  $926C: 69 64       adc #$64    ; PRG $0726C
  $926E: c8          iny    ; PRG $0726E
  $926F: 91 06       sta ($06),y    ; PRG $0726F
  $9271: 88          dey    ; PRG $07271
  $9272: b1 06       lda ($06),y    ; PRG $07272
  $9274: 85 18       sta $18    ; PRG $07274
  $9276: c8          iny    ; PRG $07276
  $9277: b1 06       lda ($06),y    ; PRG $07277
  $9279: 85 19       sta $19    ; PRG $07279
  $927B: a1 18       lda ($18,x)    ; PRG $0727B
  $927D: 85 14       sta $14    ; PRG $0727D
  $927F: 86 15       stx $15    ; PRG $0727F
  $9281: a5 14       lda $14    ; PRG $07281
  $9283: c9 ff       cmp #$ff    ; PRG $07283
  $9285: d0 04       bne $928b    ; PRG $07285
  $9287: a5 15       lda $15    ; PRG $07287
  $9289: c9 00       cmp #$00    ; PRG $07289
  $928B: f0 03       beq $9290    ; PRG $0728B
  $928D: 4c 90 93    jmp $9390    ; PRG $0728D
  $9290: a0 fc       ldy #$fc    ; PRG $07290
  $9292: b1 06       lda ($06),y    ; PRG $07292
  $9294: 85 18       sta $18    ; PRG $07294
  $9296: c8          iny    ; PRG $07296
  $9297: b1 06       lda ($06),y    ; PRG $07297
  $9299: 85 19       sta $19    ; PRG $07299
  $929B: 18          clc    ; PRG $0729B
  $929C: a0 11       ldy #$11    ; PRG $0729C
  $929E: b1 04       lda ($04),y    ; PRG $0729E
  $92A0: a0 0f       ldy #$0f    ; PRG $072A0
  $92A2: 71 04       adc ($04),y    ; PRG $072A2
  $92A4: 85 14       sta $14    ; PRG $072A4
  $92A6: a0 12       ldy #$12    ; PRG $072A6
  $92A8: b1 04       lda ($04),y    ; PRG $072A8
  $92AA: a0 10       ldy #$10    ; PRG $072AA
  $92AC: 71 04       adc ($04),y    ; PRG $072AC
  $92AE: 85 15       sta $15    ; PRG $072AE
  $92B0: 18          clc    ; PRG $072B0
  $92B1: a9 ff       lda #$ff    ; PRG $072B1
  $92B3: 65 14       adc $14    ; PRG $072B3
  $92B5: 85 10       sta $10    ; PRG $072B5
  $92B7: a9 ff       lda #$ff    ; PRG $072B7
  $92B9: 65 15       adc $15    ; PRG $072B9
  $92BB: 85 11       sta $11    ; PRG $072BB
  $92BD: a1 10       lda ($10,x)    ; PRG $072BD
  $92BF: 81 18       sta ($18,x)    ; PRG $072BF
  $92C1: a0 fc       ldy #$fc    ; PRG $072C1
  $92C3: b1 06       lda ($06),y    ; PRG $072C3
  $92C5: 85 18       sta $18    ; PRG $072C5
  $92C7: c8          iny    ; PRG $072C7
  $92C8: b1 06       lda ($06),y    ; PRG $072C8
  $92CA: 85 19       sta $19    ; PRG $072CA
  $92CC: a2 18       ldx #$18    ; PRG $072CC
  $92CE: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $072CE
  $92D1: a9 07       lda #$07    ; PRG $072D1
  $92D3: 85 18       sta $18    ; PRG $072D3
  $92D5: 86 19       stx $19    ; PRG $072D5
  $92D7: a0 0d       ldy #$0d    ; PRG $072D7
  $92D9: b1 04       lda ($04),y    ; PRG $072D9
  $92DB: 85 14       sta $14    ; PRG $072DB
  $92DD: c8          iny    ; PRG $072DD
  $92DE: b1 04       lda ($04),y    ; PRG $072DE
  $92E0: 85 15       sta $15    ; PRG $072E0
  $92E2: a1 14       lda ($14,x)    ; PRG $072E2
  $92E4: 85 10       sta $10    ; PRG $072E4
  $92E6: 86 11       stx $11    ; PRG $072E6
  $92E8: a0 10       ldy #$10    ; PRG $072E8
  $92EA: a2 18       ldx #$18    ; PRG $072EA
  $92EC: a9 14       lda #$14    ; PRG $072EC
  $92EE: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $072EE
  $92F1: 18          clc    ; PRG $072F1
  $92F2: a5 14       lda $14    ; PRG $072F2
  $92F4: 69 96       adc #$96    ; PRG $072F4
  $92F6: 85 18       sta $18    ; PRG $072F6
  $92F8: a5 15       lda $15    ; PRG $072F8
  $92FA: 69 6c       adc #$6c    ; PRG $072FA
  $92FC: 85 19       sta $19    ; PRG $072FC
  $92FE: a1 18       lda ($18,x)    ; PRG $072FE
  $9300: 85 14       sta $14    ; PRG $07300
  $9302: 86 15       stx $15    ; PRG $07302
  $9304: a9 0f       lda #$0f    ; PRG $07304
  $9306: 25 14       and $14    ; PRG $07306
  $9308: 85 18       sta $18    ; PRG $07308
  $930A: 8a          txa    ; PRG $0730A
  $930B: 85 19       sta $19    ; PRG $0730B
  $930D: a5 19       lda $19    ; PRG $0730D
  $930F: 48          pha    ; PRG $0730F
  $9310: a5 18       lda $18    ; PRG $07310
  $9312: 48          pha    ; PRG $07312
  $9313: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $07313
  $9316: 32 d5 04    .db $32 $d5 $04  -> vm $D532 argc 4    ; PRG $07316
  $9319: 18          clc    ; PRG $07319
  $931A: a9 12       lda #$12    ; PRG $0731A
  $931C: 65 08       adc $08    ; PRG $0731C
  $931E: 85 18       sta $18    ; PRG $0731E
  $9320: 8a          txa    ; PRG $07320
  $9321: 65 09       adc $09    ; PRG $07321
  $9323: 85 19       sta $19    ; PRG $07323
  $9325: a5 19       lda $19    ; PRG $07325
  $9327: 48          pha    ; PRG $07327
  $9328: a5 18       lda $18    ; PRG $07328
  $932A: 48          pha    ; PRG $0732A
  $932B: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0732B
  $932E: 26 d3 04    .db $26 $d3 $04  -> vm $D326 argc 4    ; PRG $0732E
  $9331: a5 09       lda $09    ; PRG $07331
  $9333: 48          pha    ; PRG $07333
  $9334: a5 08       lda $08    ; PRG $07334
  $9336: 48          pha    ; PRG $07336
  $9337: 84 18       sty $18    ; PRG $07337
  $9339: 86 19       stx $19    ; PRG $07339
  $933B: 18          clc    ; PRG $0733B
  $933C: a9 ff       lda #$ff    ; PRG $0733C
  $933E: a0 0f       ldy #$0f    ; PRG $0733E
  $9340: 71 04       adc ($04),y    ; PRG $07340
  $9342: 85 14       sta $14    ; PRG $07342
  $9344: a9 ff       lda #$ff    ; PRG $07344
  $9346: c8          iny    ; PRG $07346
  $9347: 71 04       adc ($04),y    ; PRG $07347
  $9349: 85 15       sta $15    ; PRG $07349
  $934B: a0 14       ldy #$14    ; PRG $0734B
  $934D: a2 18       ldx #$18    ; PRG $0734D
  $934F: a9 10       lda #$10    ; PRG $0734F
  $9351: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $07351
  $9354: 18          clc    ; PRG $07354
  $9355: a5 10       lda $10    ; PRG $07355
  $9357: a0 13       ldy #$13    ; PRG $07357
  $9359: 71 04       adc ($04),y    ; PRG $07359
  $935B: 85 18       sta $18    ; PRG $0735B
  $935D: a5 11       lda $11    ; PRG $0735D
  $935F: c8          iny    ; PRG $0735F
  $9360: 71 04       adc ($04),y    ; PRG $07360
  $9362: 85 19       sta $19    ; PRG $07362
  $9364: a0 01       ldy #$01    ; PRG $07364
  $9366: b1 18       lda ($18),y    ; PRG $07366
  $9368: 48          pha    ; PRG $07368
  $9369: a1 18       lda ($18,x)    ; PRG $07369
  $936B: 48          pha    ; PRG $0736B
  $936C: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0736C
  $936F: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $0736F
  $9372: a2 18       ldx #$18    ; PRG $07372
  $9374: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $07374
  $9377: a5 08       lda $08    ; PRG $07377
  $9379: 91 18       sta ($18),y    ; PRG $07379
  $937B: a5 09       lda $09    ; PRG $0737B
  $937D: c8          iny    ; PRG $0737D
  $937E: 91 18       sta ($18),y    ; PRG $0737E
  $9380: 18          clc    ; PRG $07380
  $9381: a9 ff       lda #$ff    ; PRG $07381
  $9383: a0 0f       ldy #$0f    ; PRG $07383
  $9385: 71 04       adc ($04),y    ; PRG $07385
  $9387: 91 04       sta ($04),y    ; PRG $07387
  $9389: a9 ff       lda #$ff    ; PRG $07389
  $938B: c8          iny    ; PRG $0738B
  $938C: 71 04       adc ($04),y    ; PRG $0738C
  $938E: 91 04       sta ($04),y    ; PRG $0738E
  $9390: a0 0f       ldy #$0f    ; PRG $07390
  $9392: b1 04       lda ($04),y    ; PRG $07392
  $9394: c8          iny    ; PRG $07394
  $9395: 11 04       ora ($04),y    ; PRG $07395
  $9397: d0 03       bne $939c    ; PRG $07397
  $9399: 4c 9f 93    jmp $939f    ; PRG $07399
  $939C: 4c 10 92    jmp $9210    ; PRG $0739C
  $939F: 60          rts    ; PRG $0739F

; ---- sub_3_13a6  [stub]  <- (entry: bytecode/OS via $E299)
nat_3_13a0: jsr $E299                    ; 3:93A0  native-call prologue
            .db $00 $fe $ff            ; inline: argcount $00, frame $fffe
  $93A6: a9 04       lda #$04    ; PRG $073A6
  $93A8: 85 18       sta $18    ; PRG $073A8
  $93AA: 86 19       stx $19    ; PRG $073AA
  $93AC: a0 0b       ldy #$0b    ; PRG $073AC
  $93AE: b1 04       lda ($04),y    ; PRG $073AE
  $93B0: 85 14       sta $14    ; PRG $073B0
  $93B2: c8          iny    ; PRG $073B2
  $93B3: b1 04       lda ($04),y    ; PRG $073B3
  $93B5: 85 15       sta $15    ; PRG $073B5
  $93B7: a0 14       ldy #$14    ; PRG $073B7
  $93B9: a2 18       ldx #$18    ; PRG $073B9
  $93BB: a9 10       lda #$10    ; PRG $073BB
  $93BD: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $073BD
  $93C0: 18          clc    ; PRG $073C0
  $93C1: a5 10       lda $10    ; PRG $073C1
  $93C3: 69 62       adc #$62    ; PRG $073C3
  $93C5: a0 fe       ldy #$fe    ; PRG $073C5
  $93C7: 91 06       sta ($06),y    ; PRG $073C7
  $93C9: a5 11       lda $11    ; PRG $073C9
  $93CB: 69 66       adc #$66    ; PRG $073CB
  $93CD: c8          iny    ; PRG $073CD
  $93CE: 91 06       sta ($06),y    ; PRG $073CE
  $93D0: 88          dey    ; PRG $073D0
  $93D1: b1 06       lda ($06),y    ; PRG $073D1
  $93D3: 85 18       sta $18    ; PRG $073D3
  $93D5: c8          iny    ; PRG $073D5
  $93D6: b1 06       lda ($06),y    ; PRG $073D6
  $93D8: 85 19       sta $19    ; PRG $073D8
  $93DA: a2 18       ldx #$18    ; PRG $073DA
  $93DC: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $073DC
  $93DF: a9 04       lda #$04    ; PRG $073DF
  $93E1: 85 18       sta $18    ; PRG $073E1
  $93E3: 86 19       stx $19    ; PRG $073E3
  $93E5: a0 0d       ldy #$0d    ; PRG $073E5
  $93E7: b1 04       lda ($04),y    ; PRG $073E7
  $93E9: 85 14       sta $14    ; PRG $073E9
  $93EB: c8          iny    ; PRG $073EB
  $93EC: b1 04       lda ($04),y    ; PRG $073EC
  $93EE: 85 15       sta $15    ; PRG $073EE
  $93F0: a0 14       ldy #$14    ; PRG $073F0
  $93F2: a2 18       ldx #$18    ; PRG $073F2
  $93F4: a9 10       lda #$10    ; PRG $073F4
  $93F6: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $073F6
  $93F9: 18          clc    ; PRG $073F9
  $93FA: a5 10       lda $10    ; PRG $073FA
  $93FC: 69 6b       adc #$6b    ; PRG $073FC
  $93FE: 85 18       sta $18    ; PRG $073FE
  $9400: a5 11       lda $11    ; PRG $07400
  $9402: 69 66       adc #$66    ; PRG $07402
  $9404: 85 19       sta $19    ; PRG $07404
  $9406: b1 18       lda ($18),y    ; PRG $07406
  $9408: 48          pha    ; PRG $07408
  $9409: a1 18       lda ($18,x)    ; PRG $07409
  $940B: 48          pha    ; PRG $0740B
  $940C: a0 fe       ldy #$fe    ; PRG $0740C
  $940E: b1 06       lda ($06),y    ; PRG $0740E
  $9410: 85 18       sta $18    ; PRG $07410
  $9412: c8          iny    ; PRG $07412
  $9413: b1 06       lda ($06),y    ; PRG $07413
  $9415: 85 19       sta $19    ; PRG $07415
  $9417: 38          sec    ; PRG $07417
  $9418: a9 60       lda #$60    ; PRG $07418
  $941A: a0 09       ldy #$09    ; PRG $0741A
  $941C: f1 18       sbc ($18),y    ; PRG $0741C
  $941E: 85 14       sta $14    ; PRG $0741E
  $9420: a9 ea       lda #$ea    ; PRG $07420
  $9422: c8          iny    ; PRG $07422
  $9423: f1 18       sbc ($18),y    ; PRG $07423
  $9425: 85 15       sta $15    ; PRG $07425
  $9427: a5 15       lda $15    ; PRG $07427
  $9429: 48          pha    ; PRG $07429
  $942A: a5 14       lda $14    ; PRG $0742A
  $942C: 48          pha    ; PRG $0742C
  $942D: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0742D
  $9430: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $07430
  $9433: a2 18       ldx #$18    ; PRG $07433
  $9435: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $07435
  $9438: 18          clc    ; PRG $07438
  $9439: a0 09       ldy #$09    ; PRG $07439
  $943B: b1 18       lda ($18),y    ; PRG $0743B
  $943D: 65 08       adc $08    ; PRG $0743D
  $943F: 91 18       sta ($18),y    ; PRG $0743F
  $9441: c8          iny    ; PRG $07441
  $9442: b1 18       lda ($18),y    ; PRG $07442
  $9444: 65 09       adc $09    ; PRG $07444
  $9446: 91 18       sta ($18),y    ; PRG $07446
  $9448: 60          rts    ; PRG $07448

; ---- sub_3_144f  [stub]  <- (entry: bytecode/OS via $E299)
nat_3_1449: jsr $E299                    ; 3:9449  native-call prologue
            .db $00 $fa $ff            ; inline: argcount $00, frame $fffa
  $944F: 48          pha    ; PRG $0744F
  $9450: a9 03       lda #$03    ; PRG $07450
  $9452: 48          pha    ; PRG $07452
  $9453: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $07453
  $9456: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $07456
  $9459: a5 08       lda $08    ; PRG $07459
  $945B: 05 09       ora $09    ; PRG $0745B
  $945D: f0 03       beq $9462    ; PRG $0745D
  $945F: 4c d8 94    jmp $94d8    ; PRG $0745F
  $9462: a9 07       lda #$07    ; PRG $07462
  $9464: 85 18       sta $18    ; PRG $07464
  $9466: 86 19       stx $19    ; PRG $07466
  $9468: 18          clc    ; PRG $07468
  $9469: a9 14       lda #$14    ; PRG $07469
  $946B: a0 0b       ldy #$0b    ; PRG $0746B
  $946D: 71 04       adc ($04),y    ; PRG $0746D
  $946F: 85 14       sta $14    ; PRG $0746F
  $9471: 8a          txa    ; PRG $07471
  $9472: c8          iny    ; PRG $07472
  $9473: 71 04       adc ($04),y    ; PRG $07473
  $9475: 85 15       sta $15    ; PRG $07475
  $9477: a0 14       ldy #$14    ; PRG $07477
  $9479: a2 18       ldx #$18    ; PRG $07479
  $947B: a9 10       lda #$10    ; PRG $0747B
  $947D: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0747D
  $9480: 18          clc    ; PRG $07480
  $9481: a5 10       lda $10    ; PRG $07481
  $9483: 69 42       adc #$42    ; PRG $07483
  $9485: a0 fa       ldy #$fa    ; PRG $07485
  $9487: 91 06       sta ($06),y    ; PRG $07487
  $9489: a5 11       lda $11    ; PRG $07489
  $948B: 69 65       adc #$65    ; PRG $0748B
  $948D: c8          iny    ; PRG $0748D
  $948E: 91 06       sta ($06),y    ; PRG $0748E
  $9490: 88          dey    ; PRG $07490
  $9491: b1 06       lda ($06),y    ; PRG $07491
  $9493: 85 18       sta $18    ; PRG $07493
  $9495: c8          iny    ; PRG $07495
  $9496: b1 06       lda ($06),y    ; PRG $07496
  $9498: 85 19       sta $19    ; PRG $07498
  $949A: a2 18       ldx #$18    ; PRG $0749A
  $949C: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $0749C
  $949F: 48          pha    ; PRG $0749F
  $94A0: a9 c8       lda #$c8    ; PRG $074A0
  $94A2: 48          pha    ; PRG $074A2
  $94A3: a0 fa       ldy #$fa    ; PRG $074A3
  $94A5: b1 06       lda ($06),y    ; PRG $074A5
  $94A7: 85 18       sta $18    ; PRG $074A7
  $94A9: c8          iny    ; PRG $074A9
  $94AA: b1 06       lda ($06),y    ; PRG $074AA
  $94AC: 85 19       sta $19    ; PRG $074AC
  $94AE: a0 02       ldy #$02    ; PRG $074AE
  $94B0: b1 18       lda ($18),y    ; PRG $074B0
  $94B2: 85 14       sta $14    ; PRG $074B2
  $94B4: 86 15       stx $15    ; PRG $074B4
  $94B6: 18          clc    ; PRG $074B6
  $94B7: a9 01       lda #$01    ; PRG $074B7
  $94B9: 65 14       adc $14    ; PRG $074B9
  $94BB: 85 18       sta $18    ; PRG $074BB
  $94BD: 8a          txa    ; PRG $074BD
  $94BE: 65 15       adc $15    ; PRG $074BE
  $94C0: 85 19       sta $19    ; PRG $074C0
  $94C2: a5 19       lda $19    ; PRG $074C2
  $94C4: 48          pha    ; PRG $074C4
  $94C5: a5 18       lda $18    ; PRG $074C5
  $94C7: 48          pha    ; PRG $074C7
  $94C8: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $074C8
  $94CB: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $074CB
  $94CE: a2 18       ldx #$18    ; PRG $074CE
  $94D0: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $074D0
  $94D3: a5 08       lda $08    ; PRG $074D3
  $94D5: c8          iny    ; PRG $074D5
  $94D6: 91 18       sta ($18),y    ; PRG $074D6
  $94D8: a9 33       lda #$33    ; PRG $074D8
  $94DA: 85 18       sta $18    ; PRG $074DA
  $94DC: 86 19       stx $19    ; PRG $074DC
  $94DE: 18          clc    ; PRG $074DE
  $94DF: a9 ff       lda #$ff    ; PRG $074DF
  $94E1: a0 0b       ldy #$0b    ; PRG $074E1
  $94E3: 71 04       adc ($04),y    ; PRG $074E3
  $94E5: 85 14       sta $14    ; PRG $074E5
  $94E7: a9 ff       lda #$ff    ; PRG $074E7
  $94E9: c8          iny    ; PRG $074E9
  $94EA: 71 04       adc ($04),y    ; PRG $074EA
  $94EC: 85 15       sta $15    ; PRG $074EC
  $94EE: a0 14       ldy #$14    ; PRG $074EE
  $94F0: a2 18       ldx #$18    ; PRG $074F0
  $94F2: a9 10       lda #$10    ; PRG $074F2
  $94F4: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $074F4
  $94F7: 18          clc    ; PRG $074F7
  $94F8: a5 10       lda $10    ; PRG $074F8
  $94FA: 69 08       adc #$08    ; PRG $074FA
  $94FC: 85 18       sta $18    ; PRG $074FC
  $94FE: a5 11       lda $11    ; PRG $074FE
  $9500: 69 60       adc #$60    ; PRG $07500
  $9502: 85 19       sta $19    ; PRG $07502
  $9504: a1 18       lda ($18,x)    ; PRG $07504
  $9506: 85 14       sta $14    ; PRG $07506
  $9508: 86 15       stx $15    ; PRG $07508
  $950A: a5 14       lda $14    ; PRG $0750A
  $950C: 05 15       ora $15    ; PRG $0750C
  $950E: d0 03       bne $9513    ; PRG $0750E
  $9510: 4c 23 95    jmp $9523    ; PRG $07510
  $9513: a0 0d       ldy #$0d    ; PRG $07513
  $9515: b1 04       lda ($04),y    ; PRG $07515
  $9517: c9 03       cmp #$03    ; PRG $07517
  $9519: c8          iny    ; PRG $07519
  $951A: b1 04       lda ($04),y    ; PRG $0751A
  $951C: e9 00       sbc #$00    ; PRG $0751C
  $951E: 90 03       bcc $9523    ; PRG $0751E
  $9520: 4c 33 95    jmp $9533    ; PRG $07520
  $9523: a0 0c       ldy #$0c    ; PRG $07523
  $9525: b1 04       lda ($04),y    ; PRG $07525
  $9527: 48          pha    ; PRG $07527
  $9528: 88          dey    ; PRG $07528
  $9529: b1 04       lda ($04),y    ; PRG $07529
  $952B: 48          pha    ; PRG $0752B
  $952C: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0752C
  $952F: 4b db 04    .db $4b $db $04  -> vm $DB4B argc 4    ; PRG $0752F
  $9532: 60          rts    ; PRG $07532
  $9533: 18          clc    ; PRG $07533
  $9534: a0 0f       ldy #$0f    ; PRG $07534
  $9536: b1 04       lda ($04),y    ; PRG $07536
  $9538: a0 0d       ldy #$0d    ; PRG $07538
  $953A: 71 04       adc ($04),y    ; PRG $0753A
  $953C: a0 fe       ldy #$fe    ; PRG $0753C
  $953E: 91 06       sta ($06),y    ; PRG $0753E
  $9540: a0 10       ldy #$10    ; PRG $07540
  $9542: b1 04       lda ($04),y    ; PRG $07542
  $9544: a0 0e       ldy #$0e    ; PRG $07544
  $9546: 71 04       adc ($04),y    ; PRG $07546
  $9548: a0 ff       ldy #$ff    ; PRG $07548
  $954A: 91 06       sta ($06),y    ; PRG $0754A
  $954C: 4c 5e 95    jmp $955e    ; PRG $0754C
  $954F: 18          clc    ; PRG $0754F
  $9550: a9 01       lda #$01    ; PRG $07550
  $9552: a0 0f       ldy #$0f    ; PRG $07552
  $9554: 71 04       adc ($04),y    ; PRG $07554
  $9556: 91 04       sta ($04),y    ; PRG $07556
  $9558: 8a          txa    ; PRG $07558
  $9559: c8          iny    ; PRG $07559
  $955A: 71 04       adc ($04),y    ; PRG $0755A
  $955C: 91 04       sta ($04),y    ; PRG $0755C
  $955E: a0 0f       ldy #$0f    ; PRG $0755E
  $9560: b1 04       lda ($04),y    ; PRG $07560
  $9562: a0 fe       ldy #$fe    ; PRG $07562
  $9564: d1 06       cmp ($06),y    ; PRG $07564
  $9566: a0 10       ldy #$10    ; PRG $07566
  $9568: b1 04       lda ($04),y    ; PRG $07568
  $956A: a0 ff       ldy #$ff    ; PRG $0756A
  $956C: f1 06       sbc ($06),y    ; PRG $0756C
  $956E: 90 03       bcc $9573    ; PRG $0756E
  $9570: 4c c4 95    jmp $95c4    ; PRG $07570
  $9573: a9 07       lda #$07    ; PRG $07573
  $9575: 85 18       sta $18    ; PRG $07575
  $9577: 86 19       stx $19    ; PRG $07577
  $9579: a0 0f       ldy #$0f    ; PRG $07579
  $957B: b1 04       lda ($04),y    ; PRG $0757B
  $957D: 85 14       sta $14    ; PRG $0757D
  $957F: c8          iny    ; PRG $0757F
  $9580: b1 04       lda ($04),y    ; PRG $07580
  $9582: 85 15       sta $15    ; PRG $07582
  $9584: a1 14       lda ($14,x)    ; PRG $07584
  $9586: 85 10       sta $10    ; PRG $07586
  $9588: 86 11       stx $11    ; PRG $07588
  $958A: a2 18       ldx #$18    ; PRG $0758A
  $958C: a9 14       lda #$14    ; PRG $0758C
  $958E: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0758E
  $9591: 18          clc    ; PRG $07591
  $9592: a5 14       lda $14    ; PRG $07592
  $9594: 69 90       adc #$90    ; PRG $07594
  $9596: 85 18       sta $18    ; PRG $07596
  $9598: a5 15       lda $15    ; PRG $07598
  $959A: 69 6c       adc #$6c    ; PRG $0759A
  $959C: 85 19       sta $19    ; PRG $0759C
  $959E: a1 18       lda ($18,x)    ; PRG $0759E
  $95A0: 85 14       sta $14    ; PRG $075A0
  $95A2: 86 15       stx $15    ; PRG $075A2
  $95A4: a5 14       lda $14    ; PRG $075A4
  $95A6: c9 14       cmp #$14    ; PRG $075A6
  $95A8: a5 15       lda $15    ; PRG $075A8
  $95AA: e9 00       sbc #$00    ; PRG $075AA
  $95AC: 90 03       bcc $95b1    ; PRG $075AC
  $95AE: 4c c1 95    jmp $95c1    ; PRG $075AE
  $95B1: a0 0c       ldy #$0c    ; PRG $075B1
  $95B3: b1 04       lda ($04),y    ; PRG $075B3
  $95B5: 48          pha    ; PRG $075B5
  $95B6: 88          dey    ; PRG $075B6
  $95B7: b1 04       lda ($04),y    ; PRG $075B7
  $95B9: 48          pha    ; PRG $075B9
  $95BA: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $075BA
  $95BD: 4b db 04    .db $4b $db $04  -> vm $DB4B argc 4    ; PRG $075BD
  $95C0: 60          rts    ; PRG $075C0
  $95C1: 4c 4f 95    jmp $954f    ; PRG $075C1
  $95C4: 60          rts    ; PRG $075C4

; ---- sub_3_15cb  [stub]  <- (entry: bytecode/OS via $E299)
nat_3_15c5: jsr $E299                    ; 3:95C5  native-call prologue
            .db $00 $be $ff            ; inline: argcount $00, frame $ffbe
  $95CB: 18          clc    ; PRG $075CB
  $95CC: a9 fb       lda #$fb    ; PRG $075CC
  $95CE: 65 06       adc $06    ; PRG $075CE
  $95D0: 85 18       sta $18    ; PRG $075D0
  $95D2: 8a          txa    ; PRG $075D2
  $95D3: 65 07       adc $07    ; PRG $075D3
  $95D5: 85 19       sta $19    ; PRG $075D5
  $95D7: a5 19       lda $19    ; PRG $075D7
  $95D9: 48          pha    ; PRG $075D9
  $95DA: a5 18       lda $18    ; PRG $075DA
  $95DC: 48          pha    ; PRG $075DC
  $95DD: a0 0c       ldy #$0c    ; PRG $075DD
  $95DF: b1 04       lda ($04),y    ; PRG $075DF
  $95E1: 48          pha    ; PRG $075E1
  $95E2: 88          dey    ; PRG $075E2
  $95E3: b1 04       lda ($04),y    ; PRG $075E3
  $95E5: 48          pha    ; PRG $075E5
  $95E6: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $075E6
  $95E9: 26 d0 06    .db $26 $d0 $06  -> vm $D026 argc 6    ; PRG $075E9
  $95EC: a5 08       lda $08    ; PRG $075EC
  $95EE: a0 e0       ldy #$e0    ; PRG $075EE
  $95F0: 91 06       sta ($06),y    ; PRG $075F0
  $95F2: a5 09       lda $09    ; PRG $075F2
  $95F4: c8          iny    ; PRG $075F4
  $95F5: 91 06       sta ($06),y    ; PRG $075F5
  $95F7: 18          clc    ; PRG $075F7
  $95F8: a9 f6       lda #$f6    ; PRG $075F8
  $95FA: 65 06       adc $06    ; PRG $075FA
  $95FC: 85 18       sta $18    ; PRG $075FC
  $95FE: 8a          txa    ; PRG $075FE
  $95FF: 65 07       adc $07    ; PRG $075FF
  $9601: 85 19       sta $19    ; PRG $07601
  $9603: a5 19       lda $19    ; PRG $07603
  $9605: 48          pha    ; PRG $07605
  $9606: a5 18       lda $18    ; PRG $07606
  $9608: 48          pha    ; PRG $07608
  $9609: a0 0e       ldy #$0e    ; PRG $07609
  $960B: b1 04       lda ($04),y    ; PRG $0760B
  $960D: 48          pha    ; PRG $0760D
  $960E: 88          dey    ; PRG $0760E
  $960F: b1 04       lda ($04),y    ; PRG $0760F
  $9611: 48          pha    ; PRG $07611
  $9612: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $07612
  $9615: 26 d0 06    .db $26 $d0 $06  -> vm $D026 argc 6    ; PRG $07615
  $9618: a5 08       lda $08    ; PRG $07618
  $961A: a0 de       ldy #$de    ; PRG $0761A
  $961C: 91 06       sta ($06),y    ; PRG $0761C
  $961E: a5 09       lda $09    ; PRG $0761E
  $9620: c8          iny    ; PRG $07620
  $9621: 91 06       sta ($06),y    ; PRG $07621
  $9623: 18          clc    ; PRG $07623
  $9624: a9 fb       lda #$fb    ; PRG $07624
  $9626: 65 06       adc $06    ; PRG $07626
  $9628: 85 18       sta $18    ; PRG $07628
  $962A: 8a          txa    ; PRG $0762A
  $962B: 65 07       adc $07    ; PRG $0762B
  $962D: 85 19       sta $19    ; PRG $0762D
  $962F: a5 19       lda $19    ; PRG $0762F
  $9631: 48          pha    ; PRG $07631
  $9632: a5 18       lda $18    ; PRG $07632
  $9634: 48          pha    ; PRG $07634
  $9635: a0 e1       ldy #$e1    ; PRG $07635
  $9637: b1 06       lda ($06),y    ; PRG $07637
  $9639: 48          pha    ; PRG $07639
  $963A: 88          dey    ; PRG $0763A
  $963B: b1 06       lda ($06),y    ; PRG $0763B
  $963D: 48          pha    ; PRG $0763D
  $963E: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0763E
  $9641: c6 8d 06    .db $c6 $8d $06  -> vm $8DC6 argc 6    ; PRG $07641
  $9644: a5 08       lda $08    ; PRG $07644
  $9646: a0 d4       ldy #$d4    ; PRG $07646
  $9648: 91 06       sta ($06),y    ; PRG $07648
  $964A: a5 09       lda $09    ; PRG $0764A
  $964C: c8          iny    ; PRG $0764C
  $964D: 91 06       sta ($06),y    ; PRG $0764D
  $964F: 18          clc    ; PRG $0764F
  $9650: a9 f6       lda #$f6    ; PRG $07650
  $9652: 65 06       adc $06    ; PRG $07652
  $9654: 85 18       sta $18    ; PRG $07654
  $9656: 8a          txa    ; PRG $07656
  $9657: 65 07       adc $07    ; PRG $07657
  $9659: 85 19       sta $19    ; PRG $07659
  $965B: a5 19       lda $19    ; PRG $0765B
  $965D: 48          pha    ; PRG $0765D
  $965E: a5 18       lda $18    ; PRG $0765E
  $9660: 48          pha    ; PRG $07660
  $9661: a0 df       ldy #$df    ; PRG $07661
  $9663: b1 06       lda ($06),y    ; PRG $07663
  $9665: 48          pha    ; PRG $07665
  $9666: 88          dey    ; PRG $07666
  $9667: b1 06       lda ($06),y    ; PRG $07667
  $9669: 48          pha    ; PRG $07669
  $966A: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0766A
  $966D: c6 8d 06    .db $c6 $8d $06  -> vm $8DC6 argc 6    ; PRG $0766D
  $9670: a5 08       lda $08    ; PRG $07670
  $9672: a0 d2       ldy #$d2    ; PRG $07672
  $9674: 91 06       sta ($06),y    ; PRG $07674
  $9676: a5 09       lda $09    ; PRG $07676
  $9678: c8          iny    ; PRG $07678
  $9679: 91 06       sta ($06),y    ; PRG $07679
  $967B: 18          clc    ; PRG $0767B
  $967C: a9 c8       lda #$c8    ; PRG $0767C
  $967E: 65 06       adc $06    ; PRG $0767E
  $9680: 85 18       sta $18    ; PRG $07680
  $9682: 8a          txa    ; PRG $07682
  $9683: 65 07       adc $07    ; PRG $07683
  $9685: 85 19       sta $19    ; PRG $07685
  $9687: a5 19       lda $19    ; PRG $07687
  $9689: 48          pha    ; PRG $07689
  $968A: a5 18       lda $18    ; PRG $0768A
  $968C: 48          pha    ; PRG $0768C
  $968D: 18          clc    ; PRG $0768D
  $968E: a9 f1       lda #$f1    ; PRG $0768E
  $9690: 65 06       adc $06    ; PRG $07690
  $9692: 85 18       sta $18    ; PRG $07692
  $9694: 8a          txa    ; PRG $07694
  $9695: 65 07       adc $07    ; PRG $07695
  $9697: 85 19       sta $19    ; PRG $07697
  $9699: a5 19       lda $19    ; PRG $07699
  $969B: 48          pha    ; PRG $0769B
  $969C: a5 18       lda $18    ; PRG $0769C
  $969E: 48          pha    ; PRG $0769E
  $969F: a0 d5       ldy #$d5    ; PRG $0769F
  $96A1: b1 06       lda ($06),y    ; PRG $076A1
  $96A3: 48          pha    ; PRG $076A3
  $96A4: 88          dey    ; PRG $076A4
  $96A5: b1 06       lda ($06),y    ; PRG $076A5
  $96A7: 48          pha    ; PRG $076A7
  $96A8: 18          clc    ; PRG $076A8
  $96A9: a9 f6       lda #$f6    ; PRG $076A9
  $96AB: 65 06       adc $06    ; PRG $076AB
  $96AD: 85 18       sta $18    ; PRG $076AD
  $96AF: 8a          txa    ; PRG $076AF
  $96B0: 65 07       adc $07    ; PRG $076B0
  $96B2: 85 19       sta $19    ; PRG $076B2
  $96B4: a5 19       lda $19    ; PRG $076B4
  $96B6: 48          pha    ; PRG $076B6
  $96B7: a5 18       lda $18    ; PRG $076B7
  $96B9: 48          pha    ; PRG $076B9
  $96BA: a0 df       ldy #$df    ; PRG $076BA
  $96BC: b1 06       lda ($06),y    ; PRG $076BC
  $96BE: 48          pha    ; PRG $076BE
  $96BF: 88          dey    ; PRG $076BF
  $96C0: b1 06       lda ($06),y    ; PRG $076C0
  $96C2: 48          pha    ; PRG $076C2
  $96C3: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $076C3
  $96C6: 38 8f 0c    .db $38 $8f $0c  -> vm $8F38 argc 12    ; PRG $076C6
  $96C9: 86 09       stx $09    ; PRG $076C9
  $96CB: a5 08       lda $08    ; PRG $076CB
  $96CD: a0 d8       ldy #$d8    ; PRG $076CD
  $96CF: 91 06       sta ($06),y    ; PRG $076CF
  $96D1: a5 09       lda $09    ; PRG $076D1
  $96D3: c8          iny    ; PRG $076D3
  $96D4: 91 06       sta ($06),y    ; PRG $076D4
  $96D6: 18          clc    ; PRG $076D6
  $96D7: a9 be       lda #$be    ; PRG $076D7
  $96D9: 65 06       adc $06    ; PRG $076D9
  $96DB: 85 18       sta $18    ; PRG $076DB
  $96DD: 8a          txa    ; PRG $076DD
  $96DE: 65 07       adc $07    ; PRG $076DE
  $96E0: 85 19       sta $19    ; PRG $076E0
  $96E2: a5 19       lda $19    ; PRG $076E2
  $96E4: 48          pha    ; PRG $076E4
  $96E5: a5 18       lda $18    ; PRG $076E5
  $96E7: 48          pha    ; PRG $076E7
  $96E8: 18          clc    ; PRG $076E8
  $96E9: a9 ec       lda #$ec    ; PRG $076E9
  $96EB: 65 06       adc $06    ; PRG $076EB
  $96ED: 85 18       sta $18    ; PRG $076ED
  $96EF: 8a          txa    ; PRG $076EF
  $96F0: 65 07       adc $07    ; PRG $076F0
  $96F2: 85 19       sta $19    ; PRG $076F2
  $96F4: a5 19       lda $19    ; PRG $076F4
  $96F6: 48          pha    ; PRG $076F6
  $96F7: a5 18       lda $18    ; PRG $076F7
  $96F9: 48          pha    ; PRG $076F9
  $96FA: a0 d3       ldy #$d3    ; PRG $076FA
  $96FC: b1 06       lda ($06),y    ; PRG $076FC
  $96FE: 48          pha    ; PRG $076FE
  $96FF: 88          dey    ; PRG $076FF
  $9700: b1 06       lda ($06),y    ; PRG $07700
  $9702: 48          pha    ; PRG $07702
  $9703: 18          clc    ; PRG $07703
  $9704: a9 fb       lda #$fb    ; PRG $07704
  $9706: 65 06       adc $06    ; PRG $07706
  $9708: 85 18       sta $18    ; PRG $07708
  $970A: 8a          txa    ; PRG $0770A
  $970B: 65 07       adc $07    ; PRG $0770B
  $970D: 85 19       sta $19    ; PRG $0770D
  $970F: a5 19       lda $19    ; PRG $0770F
  $9711: 48          pha    ; PRG $07711
  $9712: a5 18       lda $18    ; PRG $07712
  $9714: 48          pha    ; PRG $07714
  $9715: a0 e1       ldy #$e1    ; PRG $07715
  $9717: b1 06       lda ($06),y    ; PRG $07717
  $9719: 48          pha    ; PRG $07719
  $971A: 88          dey    ; PRG $0771A
  $971B: b1 06       lda ($06),y    ; PRG $0771B
  $971D: 48          pha    ; PRG $0771D
  $971E: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0771E
  $9721: 38 8f 0c    .db $38 $8f $0c  -> vm $8F38 argc 12    ; PRG $07721
  $9724: 86 09       stx $09    ; PRG $07724
  $9726: a5 08       lda $08    ; PRG $07726
  $9728: a0 d6       ldy #$d6    ; PRG $07728
  $972A: 91 06       sta ($06),y    ; PRG $0772A
  $972C: a5 09       lda $09    ; PRG $0772C
  $972E: c8          iny    ; PRG $0772E
  $972F: 91 06       sta ($06),y    ; PRG $0772F
  $9731: 18          clc    ; PRG $07731
  $9732: a9 e7       lda #$e7    ; PRG $07732
  $9734: 65 06       adc $06    ; PRG $07734
  $9736: 85 18       sta $18    ; PRG $07736
  $9738: 8a          txa    ; PRG $07738
  $9739: 65 07       adc $07    ; PRG $07739
  $973B: 85 19       sta $19    ; PRG $0773B
  $973D: a5 19       lda $19    ; PRG $0773D
  $973F: 48          pha    ; PRG $0773F
  $9740: a5 18       lda $18    ; PRG $07740
  $9742: 48          pha    ; PRG $07742
  $9743: a0 0c       ldy #$0c    ; PRG $07743
  $9745: b1 04       lda ($04),y    ; PRG $07745
  $9747: 48          pha    ; PRG $07747
  $9748: 88          dey    ; PRG $07748
  $9749: b1 04       lda ($04),y    ; PRG $07749
  $974B: 48          pha    ; PRG $0774B
  $974C: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0774C
  $974F: 26 d0 06    .db $26 $d0 $06  -> vm $D026 argc 6    ; PRG $0774F
  $9752: a5 08       lda $08    ; PRG $07752
  $9754: a0 dc       ldy #$dc    ; PRG $07754
  $9756: 91 06       sta ($06),y    ; PRG $07756
  $9758: a5 09       lda $09    ; PRG $07758
  $975A: c8          iny    ; PRG $0775A
  $975B: 91 06       sta ($06),y    ; PRG $0775B
  $975D: 18          clc    ; PRG $0775D
  $975E: a9 e2       lda #$e2    ; PRG $0775E
  $9760: 65 06       adc $06    ; PRG $07760
  $9762: 85 18       sta $18    ; PRG $07762
  $9764: 8a          txa    ; PRG $07764
  $9765: 65 07       adc $07    ; PRG $07765
  $9767: 85 19       sta $19    ; PRG $07767
  $9769: a5 19       lda $19    ; PRG $07769
  $976B: 48          pha    ; PRG $0776B
  $976C: a5 18       lda $18    ; PRG $0776C
  $976E: 48          pha    ; PRG $0776E
  $976F: a0 0e       ldy #$0e    ; PRG $0776F
  $9771: b1 04       lda ($04),y    ; PRG $07771
  $9773: 48          pha    ; PRG $07773
  $9774: 88          dey    ; PRG $07774
  $9775: b1 04       lda ($04),y    ; PRG $07775
  $9777: 48          pha    ; PRG $07777
  $9778: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $07778
  $977B: 26 d0 06    .db $26 $d0 $06  -> vm $D026 argc 6    ; PRG $0777B
  $977E: a5 08       lda $08    ; PRG $0777E
  $9780: a0 da       ldy #$da    ; PRG $07780
  $9782: 91 06       sta ($06),y    ; PRG $07782
  $9784: a5 09       lda $09    ; PRG $07784
  $9786: c8          iny    ; PRG $07786
  $9787: 91 06       sta ($06),y    ; PRG $07787
  $9789: c8          iny    ; PRG $07789
  $978A: b1 06       lda ($06),y    ; PRG $0778A
  $978C: c8          iny    ; PRG $0778C
  $978D: 11 06       ora ($06),y    ; PRG $0778D
  $978F: f0 03       beq $9794    ; PRG $0778F
  $9791: 4c af 97    jmp $97af    ; PRG $07791
  $9794: a0 10       ldy #$10    ; PRG $07794
  $9796: b1 04       lda ($04),y    ; PRG $07796
  $9798: 48          pha    ; PRG $07798
  $9799: 88          dey    ; PRG $07799
  $979A: b1 04       lda ($04),y    ; PRG $0779A
  $979C: 48          pha    ; PRG $0779C
  $979D: a0 0c       ldy #$0c    ; PRG $0779D
  $979F: b1 04       lda ($04),y    ; PRG $0779F
  $97A1: 48          pha    ; PRG $077A1
  $97A2: 88          dey    ; PRG $077A2
  $97A3: b1 04       lda ($04),y    ; PRG $077A3
  $97A5: 48          pha    ; PRG $077A5
  $97A6: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $077A6
  $97A9: 21 91 06    .db $21 $91 $06  -> vm $9121 argc 6    ; PRG $077A9
  $97AC: 4c 4a 98    jmp $984a    ; PRG $077AC
  $97AF: 18          clc    ; PRG $077AF
  $97B0: a9 e7       lda #$e7    ; PRG $077B0
  $97B2: 65 06       adc $06    ; PRG $077B2
  $97B4: 85 18       sta $18    ; PRG $077B4
  $97B6: 8a          txa    ; PRG $077B6
  $97B7: 65 07       adc $07    ; PRG $077B7
  $97B9: 85 19       sta $19    ; PRG $077B9
  $97BB: a5 19       lda $19    ; PRG $077BB
  $97BD: 48          pha    ; PRG $077BD
  $97BE: a5 18       lda $18    ; PRG $077BE
  $97C0: 48          pha    ; PRG $077C0
  $97C1: a0 dd       ldy #$dd    ; PRG $077C1
  $97C3: b1 06       lda ($06),y    ; PRG $077C3
  $97C5: 48          pha    ; PRG $077C5
  $97C6: 88          dey    ; PRG $077C6
  $97C7: b1 06       lda ($06),y    ; PRG $077C7
  $97C9: 48          pha    ; PRG $077C9
  $97CA: a0 0c       ldy #$0c    ; PRG $077CA
  $97CC: b1 04       lda ($04),y    ; PRG $077CC
  $97CE: 48          pha    ; PRG $077CE
  $97CF: 88          dey    ; PRG $077CF
  $97D0: b1 04       lda ($04),y    ; PRG $077D0
  $97D2: 48          pha    ; PRG $077D2
  $97D3: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $077D3
  $97D6: 49 94 08    .db $49 $94 $08  -> vm $9449 argc 8    ; PRG $077D6
  $97D9: 18          clc    ; PRG $077D9
  $97DA: a9 c8       lda #$c8    ; PRG $077DA
  $97DC: 65 06       adc $06    ; PRG $077DC
  $97DE: 85 18       sta $18    ; PRG $077DE
  $97E0: 8a          txa    ; PRG $077E0
  $97E1: 65 07       adc $07    ; PRG $077E1
  $97E3: 85 19       sta $19    ; PRG $077E3
  $97E5: a5 19       lda $19    ; PRG $077E5
  $97E7: 48          pha    ; PRG $077E7
  $97E8: a5 18       lda $18    ; PRG $077E8
  $97EA: 48          pha    ; PRG $077EA
  $97EB: 18          clc    ; PRG $077EB
  $97EC: a9 f1       lda #$f1    ; PRG $077EC
  $97EE: 65 06       adc $06    ; PRG $077EE
  $97F0: 85 18       sta $18    ; PRG $077F0
  $97F2: 8a          txa    ; PRG $077F2
  $97F3: 65 07       adc $07    ; PRG $077F3
  $97F5: 85 19       sta $19    ; PRG $077F5
  $97F7: a5 19       lda $19    ; PRG $077F7
  $97F9: 48          pha    ; PRG $077F9
  $97FA: a5 18       lda $18    ; PRG $077FA
  $97FC: 48          pha    ; PRG $077FC
  $97FD: a0 d9       ldy #$d9    ; PRG $077FD
  $97FF: b1 06       lda ($06),y    ; PRG $077FF
  $9801: 48          pha    ; PRG $07801
  $9802: 88          dey    ; PRG $07802
  $9803: b1 06       lda ($06),y    ; PRG $07803
  $9805: 48          pha    ; PRG $07805
  $9806: 18          clc    ; PRG $07806
  $9807: a9 e7       lda #$e7    ; PRG $07807
  $9809: 65 06       adc $06    ; PRG $07809
  $980B: 85 18       sta $18    ; PRG $0780B
  $980D: 8a          txa    ; PRG $0780D
  $980E: 65 07       adc $07    ; PRG $0780E
  $9810: 85 19       sta $19    ; PRG $07810
  $9812: a5 19       lda $19    ; PRG $07812
  $9814: 48          pha    ; PRG $07814
  $9815: a5 18       lda $18    ; PRG $07815
  $9817: 48          pha    ; PRG $07817
  $9818: a0 dd       ldy #$dd    ; PRG $07818
  $981A: b1 06       lda ($06),y    ; PRG $0781A
  $981C: 48          pha    ; PRG $0781C
  $981D: 88          dey    ; PRG $0781D
  $981E: b1 06       lda ($06),y    ; PRG $0781E
  $9820: 48          pha    ; PRG $07820
  $9821: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $07821
  $9824: e2 91 0c    .db $e2 $91 $0c  -> vm $91E2 argc 12    ; PRG $07824
  $9827: a0 da       ldy #$da    ; PRG $07827
  $9829: b1 06       lda ($06),y    ; PRG $07829
  $982B: c8          iny    ; PRG $0782B
  $982C: 11 06       ora ($06),y    ; PRG $0782C
  $982E: f0 03       beq $9833    ; PRG $0782E
  $9830: 4c 4a 98    jmp $984a    ; PRG $07830
  $9833: a0 0e       ldy #$0e    ; PRG $07833
  $9835: b1 04       lda ($04),y    ; PRG $07835
  $9837: 48          pha    ; PRG $07837
  $9838: 88          dey    ; PRG $07838
  $9839: b1 04       lda ($04),y    ; PRG $07839
  $983B: 48          pha    ; PRG $0783B
  $983C: 88          dey    ; PRG $0783C
  $983D: b1 04       lda ($04),y    ; PRG $0783D
  $983F: 48          pha    ; PRG $0783F
  $9840: 88          dey    ; PRG $07840
  $9841: b1 04       lda ($04),y    ; PRG $07841
  $9843: 48          pha    ; PRG $07843
  $9844: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $07844
  $9847: a0 93 06    .db $a0 $93 $06  -> vm $93A0 argc 6    ; PRG $07847
  $984A: a0 da       ldy #$da    ; PRG $0784A
  $984C: b1 06       lda ($06),y    ; PRG $0784C
  $984E: c8          iny    ; PRG $0784E
  $984F: 11 06       ora ($06),y    ; PRG $0784F
  $9851: f0 03       beq $9856    ; PRG $07851
  $9853: 4c 70 98    jmp $9870    ; PRG $07853
  $9856: a0 10       ldy #$10    ; PRG $07856
  $9858: b1 04       lda ($04),y    ; PRG $07858
  $985A: 48          pha    ; PRG $0785A
  $985B: 88          dey    ; PRG $0785B
  $985C: b1 04       lda ($04),y    ; PRG $0785C
  $985E: 48          pha    ; PRG $0785E
  $985F: 88          dey    ; PRG $0785F
  $9860: b1 04       lda ($04),y    ; PRG $07860
  $9862: 48          pha    ; PRG $07862
  $9863: 88          dey    ; PRG $07863
  $9864: b1 04       lda ($04),y    ; PRG $07864
  $9866: 48          pha    ; PRG $07866
  $9867: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $07867
  $986A: 21 91 06    .db $21 $91 $06  -> vm $9121 argc 6    ; PRG $0786A
  $986D: 4c 0c 99    jmp $990c    ; PRG $0786D
  $9870: 18          clc    ; PRG $07870
  $9871: a9 e2       lda #$e2    ; PRG $07871
  $9873: 65 06       adc $06    ; PRG $07873
  $9875: 85 18       sta $18    ; PRG $07875
  $9877: 8a          txa    ; PRG $07877
  $9878: 65 07       adc $07    ; PRG $07878
  $987A: 85 19       sta $19    ; PRG $0787A
  $987C: a5 19       lda $19    ; PRG $0787C
  $987E: 48          pha    ; PRG $0787E
  $987F: a5 18       lda $18    ; PRG $0787F
  $9881: 48          pha    ; PRG $07881
  $9882: a0 db       ldy #$db    ; PRG $07882
  $9884: b1 06       lda ($06),y    ; PRG $07884
  $9886: 48          pha    ; PRG $07886
  $9887: 88          dey    ; PRG $07887
  $9888: b1 06       lda ($06),y    ; PRG $07888
  $988A: 48          pha    ; PRG $0788A
  $988B: a0 0e       ldy #$0e    ; PRG $0788B
  $988D: b1 04       lda ($04),y    ; PRG $0788D
  $988F: 48          pha    ; PRG $0788F
  $9890: 88          dey    ; PRG $07890
  $9891: b1 04       lda ($04),y    ; PRG $07891
  $9893: 48          pha    ; PRG $07893
  $9894: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $07894
  $9897: 49 94 08    .db $49 $94 $08  -> vm $9449 argc 8    ; PRG $07897
  $989A: 18          clc    ; PRG $0789A
  $989B: a9 be       lda #$be    ; PRG $0789B
  $989D: 65 06       adc $06    ; PRG $0789D
  $989F: 85 18       sta $18    ; PRG $0789F
  $98A1: 8a          txa    ; PRG $078A1
  $98A2: 65 07       adc $07    ; PRG $078A2
  $98A4: 85 19       sta $19    ; PRG $078A4
  $98A6: a5 19       lda $19    ; PRG $078A6
  $98A8: 48          pha    ; PRG $078A8
  $98A9: a5 18       lda $18    ; PRG $078A9
  $98AB: 48          pha    ; PRG $078AB
  $98AC: 18          clc    ; PRG $078AC
  $98AD: a9 ec       lda #$ec    ; PRG $078AD
  $98AF: 65 06       adc $06    ; PRG $078AF
  $98B1: 85 18       sta $18    ; PRG $078B1
  $98B3: 8a          txa    ; PRG $078B3
  $98B4: 65 07       adc $07    ; PRG $078B4
  $98B6: 85 19       sta $19    ; PRG $078B6
  $98B8: a5 19       lda $19    ; PRG $078B8
  $98BA: 48          pha    ; PRG $078BA
  $98BB: a5 18       lda $18    ; PRG $078BB
  $98BD: 48          pha    ; PRG $078BD
  $98BE: a0 d7       ldy #$d7    ; PRG $078BE
  $98C0: b1 06       lda ($06),y    ; PRG $078C0
  $98C2: 48          pha    ; PRG $078C2
  $98C3: 88          dey    ; PRG $078C3
  $98C4: b1 06       lda ($06),y    ; PRG $078C4
  $98C6: 48          pha    ; PRG $078C6
  $98C7: 18          clc    ; PRG $078C7
  $98C8: a9 e2       lda #$e2    ; PRG $078C8
  $98CA: 65 06       adc $06    ; PRG $078CA
  $98CC: 85 18       sta $18    ; PRG $078CC
  $98CE: 8a          txa    ; PRG $078CE
  $98CF: 65 07       adc $07    ; PRG $078CF
  $98D1: 85 19       sta $19    ; PRG $078D1
  $98D3: a5 19       lda $19    ; PRG $078D3
  $98D5: 48          pha    ; PRG $078D5
  $98D6: a5 18       lda $18    ; PRG $078D6
  $98D8: 48          pha    ; PRG $078D8
  $98D9: a0 db       ldy #$db    ; PRG $078D9
  $98DB: b1 06       lda ($06),y    ; PRG $078DB
  $98DD: 48          pha    ; PRG $078DD
  $98DE: 88          dey    ; PRG $078DE
  $98DF: b1 06       lda ($06),y    ; PRG $078DF
  $98E1: 48          pha    ; PRG $078E1
  $98E2: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $078E2
  $98E5: e2 91 0c    .db $e2 $91 $0c  -> vm $91E2 argc 12    ; PRG $078E5
  $98E8: a0 dc       ldy #$dc    ; PRG $078E8
  $98EA: b1 06       lda ($06),y    ; PRG $078EA
  $98EC: c8          iny    ; PRG $078EC
  $98ED: 11 06       ora ($06),y    ; PRG $078ED
  $98EF: f0 03       beq $98f4    ; PRG $078EF
  $98F1: 4c 0c 99    jmp $990c    ; PRG $078F1
  $98F4: a0 0c       ldy #$0c    ; PRG $078F4
  $98F6: b1 04       lda ($04),y    ; PRG $078F6
  $98F8: 48          pha    ; PRG $078F8
  $98F9: 88          dey    ; PRG $078F9
  $98FA: b1 04       lda ($04),y    ; PRG $078FA
  $98FC: 48          pha    ; PRG $078FC
  $98FD: a0 0e       ldy #$0e    ; PRG $078FD
  $98FF: b1 04       lda ($04),y    ; PRG $078FF
  $9901: 48          pha    ; PRG $07901
  $9902: 88          dey    ; PRG $07902
  $9903: b1 04       lda ($04),y    ; PRG $07903
  $9905: 48          pha    ; PRG $07905
  $9906: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $07906
  $9909: a0 93 06    .db $a0 $93 $06  -> vm $93A0 argc 6    ; PRG $07909
  $990C: 60          rts    ; PRG $0790C

; ---- sub_3_1913  [stub]  <- (entry: bytecode/OS via $E299)
nat_3_190d: jsr $E299                    ; 3:990D  native-call prologue
            .db $00 $00 $00            ; inline: argcount $00, frame $0000
  $9913: 48          pha    ; PRG $07913
  $9914: 48          pha    ; PRG $07914
  $9915: 48          pha    ; PRG $07915
  $9916: 48          pha    ; PRG $07916
  $9917: 48          pha    ; PRG $07917
  $9918: 48          pha    ; PRG $07918
  $9919: 48          pha    ; PRG $07919
  $991A: 48          pha    ; PRG $0791A
  $991B: a9 14       lda #$14    ; PRG $0791B
  $991D: 48          pha    ; PRG $0791D
  $991E: 8a          txa    ; PRG $0791E
  $991F: 48          pha    ; PRG $0791F
  $9920: 48          pha    ; PRG $07920
  $9921: a9 0e       lda #$0e    ; PRG $07921
  $9923: 48          pha    ; PRG $07923
  $9924: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $07924
  $9927: d4 ee 0e    .db $d4 $ee $0e  -> vm $EED4 argc 14    ; PRG $07927
  $992A: 60          rts    ; PRG $0792A

; ---- sub_3_1931  [stub]  <- (entry: bytecode/OS via $E299)
nat_3_192b: jsr $E299                    ; 3:992B  native-call prologue
            .db $00 $00 $00            ; inline: argcount $00, frame $0000
  $9931: a9 03       lda #$03    ; PRG $07931
  $9933: 85 18       sta $18    ; PRG $07933
  $9935: 86 19       stx $19    ; PRG $07935
  $9937: 84 14       sty $14    ; PRG $07937
  $9939: 86 15       stx $15    ; PRG $07939
  $993B: a0 0b       ldy #$0b    ; PRG $0793B
  $993D: b1 04       lda ($04),y    ; PRG $0793D
  $993F: 85 10       sta $10    ; PRG $0793F
  $9941: c8          iny    ; PRG $07941
  $9942: b1 04       lda ($04),y    ; PRG $07942
  $9944: 85 11       sta $11    ; PRG $07944
  $9946: a0 10       ldy #$10    ; PRG $07946
  $9948: a2 14       ldx #$14    ; PRG $07948
  $994A: a9 0c       lda #$0c    ; PRG $0794A
  $994C: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0794C
  $994F: 18          clc    ; PRG $0794F
  $9950: a9 02       lda #$02    ; PRG $07950
  $9952: 65 0c       adc $0c    ; PRG $07952
  $9954: 85 14       sta $14    ; PRG $07954
  $9956: 8a          txa    ; PRG $07956
  $9957: 65 0d       adc $0d    ; PRG $07957
  $9959: 85 15       sta $15    ; PRG $07959
  $995B: a0 14       ldy #$14    ; PRG $0795B
  $995D: a2 18       ldx #$18    ; PRG $0795D
  $995F: a9 10       lda #$10    ; PRG $0795F
  $9961: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $07961
  $9964: a5 10       lda $10    ; PRG $07964
  $9966: a0 0b       ldy #$0b    ; PRG $07966
  $9968: 91 04       sta ($04),y    ; PRG $07968
  $996A: a5 11       lda $11    ; PRG $0796A
  $996C: c8          iny    ; PRG $0796C
  $996D: 91 04       sta ($04),y    ; PRG $0796D
  $996F: a9 03       lda #$03    ; PRG $0796F
  $9971: 85 18       sta $18    ; PRG $07971
  $9973: 86 19       stx $19    ; PRG $07973
  $9975: a9 01       lda #$01    ; PRG $07975
  $9977: 85 14       sta $14    ; PRG $07977
  $9979: 86 15       stx $15    ; PRG $07979
  $997B: c8          iny    ; PRG $0797B
  $997C: b1 04       lda ($04),y    ; PRG $0797C
  $997E: 85 10       sta $10    ; PRG $0797E
  $9980: c8          iny    ; PRG $07980
  $9981: b1 04       lda ($04),y    ; PRG $07981
  $9983: 85 11       sta $11    ; PRG $07983
  $9985: a0 10       ldy #$10    ; PRG $07985
  $9987: a2 14       ldx #$14    ; PRG $07987
  $9989: a9 0c       lda #$0c    ; PRG $07989
  $998B: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0798B
  $998E: 18          clc    ; PRG $0798E
  $998F: 98          tya    ; PRG $0798F
  $9990: 65 0c       adc $0c    ; PRG $07990
  $9992: 85 14       sta $14    ; PRG $07992
  $9994: 8a          txa    ; PRG $07994
  $9995: 65 0d       adc $0d    ; PRG $07995
  $9997: 85 15       sta $15    ; PRG $07997
  $9999: a0 14       ldy #$14    ; PRG $07999
  $999B: a2 18       ldx #$18    ; PRG $0799B
  $999D: a9 10       lda #$10    ; PRG $0799D
  $999F: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0799F
  $99A2: 84 18       sty $18    ; PRG $079A2
  $99A4: 86 19       stx $19    ; PRG $079A4
  $99A6: ad 7d 73    lda $737d   ; ui_shared_var_737d    ; PRG $079A6
  $99A9: 85 14       sta $14    ; PRG $079A9
  $99AB: 86 15       stx $15    ; PRG $079AB
  $99AD: a0 14       ldy #$14    ; PRG $079AD
  $99AF: a2 18       ldx #$18    ; PRG $079AF
  $99B1: a9 0c       lda #$0c    ; PRG $079B1
  $99B3: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $079B3
  $99B6: 18          clc    ; PRG $079B6
  $99B7: a5 0c       lda $0c    ; PRG $079B7
  $99B9: 69 14       adc #$14    ; PRG $079B9
  $99BB: 85 18       sta $18    ; PRG $079BB
  $99BD: a5 0d       lda $0d    ; PRG $079BD
  $99BF: 69 df       adc #$df    ; PRG $079BF
  $99C1: 85 19       sta $19    ; PRG $079C1
  $99C3: 18          clc    ; PRG $079C3
  $99C4: a1 18       lda ($18,x)    ; PRG $079C4
  $99C6: 65 10       adc $10    ; PRG $079C6
  $99C8: a0 0d       ldy #$0d    ; PRG $079C8
  $99CA: 91 04       sta ($04),y    ; PRG $079CA
  $99CC: a0 01       ldy #$01    ; PRG $079CC
  $99CE: b1 18       lda ($18),y    ; PRG $079CE
  $99D0: 65 11       adc $11    ; PRG $079D0
  $99D2: a0 0e       ldy #$0e    ; PRG $079D2
  $99D4: 91 04       sta ($04),y    ; PRG $079D4
  $99D6: 8a          txa    ; PRG $079D6
  $99D7: 48          pha    ; PRG $079D7
  $99D8: a9 03       lda #$03    ; PRG $079D8
  $99DA: 48          pha    ; PRG $079DA
  $99DB: a9 e0       lda #$e0    ; PRG $079DB
  $99DD: 48          pha    ; PRG $079DD
  $99DE: 48          pha    ; PRG $079DE
  $99DF: 48          pha    ; PRG $079DF
  $99E0: 48          pha    ; PRG $079E0
  $99E1: a9 08       lda #$08    ; PRG $079E1
  $99E3: 85 18       sta $18    ; PRG $079E3
  $99E5: 86 19       stx $19    ; PRG $079E5
  $99E7: 88          dey    ; PRG $079E7
  $99E8: b1 04       lda ($04),y    ; PRG $079E8
  $99EA: 85 14       sta $14    ; PRG $079EA
  $99EC: c8          iny    ; PRG $079EC
  $99ED: b1 04       lda ($04),y    ; PRG $079ED
  $99EF: 85 15       sta $15    ; PRG $079EF
  $99F1: a0 14       ldy #$14    ; PRG $079F1
  $99F3: a2 18       ldx #$18    ; PRG $079F3
  $99F5: a9 10       lda #$10    ; PRG $079F5
  $99F7: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $079F7
  $99FA: 18          clc    ; PRG $079FA
  $99FB: a5 10       lda $10    ; PRG $079FB
  $99FD: a0 0b       ldy #$0b    ; PRG $079FD
  $99FF: 71 04       adc ($04),y    ; PRG $079FF
  $9A01: 85 18       sta $18    ; PRG $07A01
  $9A03: a5 11       lda $11    ; PRG $07A03
  $9A05: c8          iny    ; PRG $07A05
  $9A06: 71 04       adc ($04),y    ; PRG $07A06
  $9A08: 85 19       sta $19    ; PRG $07A08
  $9A0A: a5 19       lda $19    ; PRG $07A0A
  $9A0C: 48          pha    ; PRG $07A0C
  $9A0D: a5 18       lda $18    ; PRG $07A0D
  $9A0F: 48          pha    ; PRG $07A0F
  $9A10: a9 14       lda #$14    ; PRG $07A10
  $9A12: 48          pha    ; PRG $07A12
  $9A13: a9 01       lda #$01    ; PRG $07A13
  $9A15: 48          pha    ; PRG $07A15
  $9A16: 8a          txa    ; PRG $07A16
  $9A17: 48          pha    ; PRG $07A17
  $9A18: a9 0e       lda #$0e    ; PRG $07A18
  $9A1A: 48          pha    ; PRG $07A1A
  $9A1B: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $07A1B
  $9A1E: d4 ee 0e    .db $d4 $ee $0e  -> vm $EED4 argc 14    ; PRG $07A1E
  $9A21: 60          rts    ; PRG $07A21

; ---- sub_3_1a28  [stub]  <- (entry: bytecode/OS via $E299)
nat_3_1a22: jsr $E299                    ; 3:9A22  native-call prologue
            .db $00 $f0 $ff            ; inline: argcount $00, frame $fff0
  $9A28: ad 9d 72    lda $729d    ; PRG $07A28
  $9A2B: 85 18       sta $18    ; PRG $07A2B
  $9A2D: 86 19       stx $19    ; PRG $07A2D
  $9A2F: a5 18       lda $18    ; PRG $07A2F
  $9A31: a0 fe       ldy #$fe    ; PRG $07A31
  $9A33: 91 06       sta ($06),y    ; PRG $07A33
  $9A35: a5 19       lda $19    ; PRG $07A35
  $9A37: c8          iny    ; PRG $07A37
  $9A38: 91 06       sta ($06),y    ; PRG $07A38
  $9A3A: ad 5f 70    lda $705f   ; quest_flags    ; PRG $07A3A
  $9A3D: 85 18       sta $18    ; PRG $07A3D
  $9A3F: 86 19       stx $19    ; PRG $07A3F
  $9A41: a5 18       lda $18    ; PRG $07A41
  $9A43: 29 01       and #$01    ; PRG $07A43
  $9A45: d0 03       bne $9a4a    ; PRG $07A45
  $9A47: 4c ef 9a    jmp $9aef    ; PRG $07A47
  $9A4A: ad 54 70    lda $7054    ; PRG $07A4A
  $9A4D: 85 18       sta $18    ; PRG $07A4D
  $9A4F: 86 19       stx $19    ; PRG $07A4F
  $9A51: a9 01       lda #$01    ; PRG $07A51
  $9A53: c5 18       cmp $18    ; PRG $07A53
  $9A55: 8a          txa    ; PRG $07A55
  $9A56: e5 19       sbc $19    ; PRG $07A56
  $9A58: 90 03       bcc $9a5d    ; PRG $07A58
  $9A5A: 4c ef 9a    jmp $9aef    ; PRG $07A5A
  $9A5D: ad 54 70    lda $7054    ; PRG $07A5D
  $9A60: 85 18       sta $18    ; PRG $07A60
  $9A62: 86 19       stx $19    ; PRG $07A62
  $9A64: a5 18       lda $18    ; PRG $07A64
  $9A66: c9 03       cmp #$03    ; PRG $07A66
  $9A68: d0 04       bne $9a6e    ; PRG $07A68
  $9A6A: a5 19       lda $19    ; PRG $07A6A
  $9A6C: c9 00       cmp #$00    ; PRG $07A6C
  $9A6E: f0 03       beq $9a73    ; PRG $07A6E
  $9A70: 4c 88 9a    jmp $9a88    ; PRG $07A70
  $9A73: ad 5a 70    lda $705a    ; PRG $07A73
  $9A76: 85 18       sta $18    ; PRG $07A76
  $9A78: 86 19       stx $19    ; PRG $07A78
  $9A7A: a5 18       lda $18    ; PRG $07A7A
  $9A7C: a0 fa       ldy #$fa    ; PRG $07A7C
  $9A7E: 91 06       sta ($06),y    ; PRG $07A7E
  $9A80: a5 19       lda $19    ; PRG $07A80
  $9A82: c8          iny    ; PRG $07A82
  $9A83: 91 06       sta ($06),y    ; PRG $07A83
  $9A85: 4c 9a 9a    jmp $9a9a    ; PRG $07A85
  $9A88: ad 55 70    lda $7055    ; PRG $07A88
  $9A8B: 85 18       sta $18    ; PRG $07A8B
  $9A8D: 86 19       stx $19    ; PRG $07A8D
  $9A8F: a5 18       lda $18    ; PRG $07A8F
  $9A91: a0 fa       ldy #$fa    ; PRG $07A91
  $9A93: 91 06       sta ($06),y    ; PRG $07A93
  $9A95: a5 19       lda $19    ; PRG $07A95
  $9A97: c8          iny    ; PRG $07A97
  $9A98: 91 06       sta ($06),y    ; PRG $07A98
  $9A9A: a0 fe       ldy #$fe    ; PRG $07A9A
  $9A9C: b1 06       lda ($06),y    ; PRG $07A9C
  $9A9E: a0 fa       ldy #$fa    ; PRG $07A9E
  $9AA0: d1 06       cmp ($06),y    ; PRG $07AA0
  $9AA2: d0 08       bne $9aac    ; PRG $07AA2
  $9AA4: a0 ff       ldy #$ff    ; PRG $07AA4
  $9AA6: b1 06       lda ($06),y    ; PRG $07AA6
  $9AA8: a0 fb       ldy #$fb    ; PRG $07AA8
  $9AAA: d1 06       cmp ($06),y    ; PRG $07AAA
  $9AAC: d0 03       bne $9ab1    ; PRG $07AAC
  $9AAE: 4c cb 9a    jmp $9acb    ; PRG $07AAE
  $9AB1: a0 0b       ldy #$0b    ; PRG $07AB1
  $9AB3: b1 04       lda ($04),y    ; PRG $07AB3
  $9AB5: 85 18       sta $18    ; PRG $07AB5
  $9AB7: 86 19       stx $19    ; PRG $07AB7
  $9AB9: a5 18       lda $18    ; PRG $07AB9
  $9ABB: a0 fa       ldy #$fa    ; PRG $07ABB
  $9ABD: d1 06       cmp ($06),y    ; PRG $07ABD
  $9ABF: d0 05       bne $9ac6    ; PRG $07ABF
  $9AC1: a5 19       lda $19    ; PRG $07AC1
  $9AC3: c8          iny    ; PRG $07AC3
  $9AC4: d1 06       cmp ($06),y    ; PRG $07AC4
  $9AC6: f0 03       beq $9acb    ; PRG $07AC6
  $9AC8: 4c ef 9a    jmp $9aef    ; PRG $07AC8
  $9ACB: a0 ff       ldy #$ff    ; PRG $07ACB
  $9ACD: b1 06       lda ($06),y    ; PRG $07ACD
  $9ACF: 48          pha    ; PRG $07ACF
  $9AD0: 88          dey    ; PRG $07AD0
  $9AD1: b1 06       lda ($06),y    ; PRG $07AD1
  $9AD3: 48          pha    ; PRG $07AD3
  $9AD4: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $07AD4
  $9AD7: 4b db 04    .db $4b $db $04  -> vm $DB4B argc 4    ; PRG $07AD7
  $9ADA: a0 0b       ldy #$0b    ; PRG $07ADA
  $9ADC: b1 04       lda ($04),y    ; PRG $07ADC
  $9ADE: 85 18       sta $18    ; PRG $07ADE
  $9AE0: 86 19       stx $19    ; PRG $07AE0
  $9AE2: a5 19       lda $19    ; PRG $07AE2
  $9AE4: 48          pha    ; PRG $07AE4
  $9AE5: a5 18       lda $18    ; PRG $07AE5
  $9AE7: 48          pha    ; PRG $07AE7
  $9AE8: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $07AE8
  $9AEB: 4b db 04    .db $4b $db $04  -> vm $DB4B argc 4    ; PRG $07AEB
  $9AEE: 60          rts    ; PRG $07AEE
  $9AEF: a9 04       lda #$04    ; PRG $07AEF
  $9AF1: 85 18       sta $18    ; PRG $07AF1
  $9AF3: 86 19       stx $19    ; PRG $07AF3
  $9AF5: a0 0b       ldy #$0b    ; PRG $07AF5
  $9AF7: b1 04       lda ($04),y    ; PRG $07AF7
  $9AF9: 85 14       sta $14    ; PRG $07AF9
  $9AFB: 86 15       stx $15    ; PRG $07AFB
  $9AFD: a0 14       ldy #$14    ; PRG $07AFD
  $9AFF: a2 18       ldx #$18    ; PRG $07AFF
  $9B01: a9 10       lda #$10    ; PRG $07B01
  $9B03: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $07B03
  $9B06: 18          clc    ; PRG $07B06
  $9B07: a5 10       lda $10    ; PRG $07B07
  $9B09: 69 62       adc #$62    ; PRG $07B09
  $9B0B: a0 f8       ldy #$f8    ; PRG $07B0B
  $9B0D: 91 06       sta ($06),y    ; PRG $07B0D
  $9B0F: a5 11       lda $11    ; PRG $07B0F
  $9B11: 69 66       adc #$66    ; PRG $07B11
  $9B13: c8          iny    ; PRG $07B13
  $9B14: 91 06       sta ($06),y    ; PRG $07B14
  $9B16: a9 04       lda #$04    ; PRG $07B16
  $9B18: 85 18       sta $18    ; PRG $07B18
  $9B1A: 86 19       stx $19    ; PRG $07B1A
  $9B1C: a0 fe       ldy #$fe    ; PRG $07B1C
  $9B1E: b1 06       lda ($06),y    ; PRG $07B1E
  $9B20: 85 14       sta $14    ; PRG $07B20
  $9B22: c8          iny    ; PRG $07B22
  $9B23: b1 06       lda ($06),y    ; PRG $07B23
  $9B25: 85 15       sta $15    ; PRG $07B25
  $9B27: a0 14       ldy #$14    ; PRG $07B27
  $9B29: a2 18       ldx #$18    ; PRG $07B29
  $9B2B: a9 10       lda #$10    ; PRG $07B2B
  $9B2D: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $07B2D
  $9B30: 18          clc    ; PRG $07B30
  $9B31: a5 10       lda $10    ; PRG $07B31
  $9B33: 69 62       adc #$62    ; PRG $07B33
  $9B35: a0 f6       ldy #$f6    ; PRG $07B35
  $9B37: 91 06       sta ($06),y    ; PRG $07B37
  $9B39: a5 11       lda $11    ; PRG $07B39
  $9B3B: 69 66       adc #$66    ; PRG $07B3B
  $9B3D: c8          iny    ; PRG $07B3D
  $9B3E: 91 06       sta ($06),y    ; PRG $07B3E
  $9B40: a9 33       lda #$33    ; PRG $07B40
  $9B42: 85 18       sta $18    ; PRG $07B42
  $9B44: 86 19       stx $19    ; PRG $07B44
  $9B46: a0 0b       ldy #$0b    ; PRG $07B46
  $9B48: b1 04       lda ($04),y    ; PRG $07B48
  $9B4A: 85 14       sta $14    ; PRG $07B4A
  $9B4C: 86 15       stx $15    ; PRG $07B4C
  $9B4E: 18          clc    ; PRG $07B4E
  $9B4F: a9 ff       lda #$ff    ; PRG $07B4F
  $9B51: 65 14       adc $14    ; PRG $07B51
  $9B53: 85 10       sta $10    ; PRG $07B53
  $9B55: a9 ff       lda #$ff    ; PRG $07B55
  $9B57: 65 15       adc $15    ; PRG $07B57
  $9B59: 85 11       sta $11    ; PRG $07B59
  $9B5B: a0 10       ldy #$10    ; PRG $07B5B
  $9B5D: a2 18       ldx #$18    ; PRG $07B5D
  $9B5F: a9 14       lda #$14    ; PRG $07B5F
  $9B61: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $07B61
  $9B64: 18          clc    ; PRG $07B64
  $9B65: a5 14       lda $14    ; PRG $07B65
  $9B67: 69 04       adc #$04    ; PRG $07B67
  $9B69: a0 f4       ldy #$f4    ; PRG $07B69
  $9B6B: 91 06       sta ($06),y    ; PRG $07B6B
  $9B6D: a5 15       lda $15    ; PRG $07B6D
  $9B6F: 69 60       adc #$60    ; PRG $07B6F
  $9B71: c8          iny    ; PRG $07B71
  $9B72: 91 06       sta ($06),y    ; PRG $07B72
  $9B74: a9 33       lda #$33    ; PRG $07B74
  $9B76: 85 18       sta $18    ; PRG $07B76
  $9B78: 86 19       stx $19    ; PRG $07B78
  $9B7A: 18          clc    ; PRG $07B7A
  $9B7B: a9 ff       lda #$ff    ; PRG $07B7B
  $9B7D: a0 fe       ldy #$fe    ; PRG $07B7D
  $9B7F: 71 06       adc ($06),y    ; PRG $07B7F
  $9B81: 85 14       sta $14    ; PRG $07B81
  $9B83: a9 ff       lda #$ff    ; PRG $07B83
  $9B85: c8          iny    ; PRG $07B85
  $9B86: 71 06       adc ($06),y    ; PRG $07B86
  $9B88: 85 15       sta $15    ; PRG $07B88
  $9B8A: a0 14       ldy #$14    ; PRG $07B8A
  $9B8C: a2 18       ldx #$18    ; PRG $07B8C
  $9B8E: a9 10       lda #$10    ; PRG $07B8E
  $9B90: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $07B90
  $9B93: 18          clc    ; PRG $07B93
  $9B94: a5 10       lda $10    ; PRG $07B94
  $9B96: 69 04       adc #$04    ; PRG $07B96
  $9B98: a0 f2       ldy #$f2    ; PRG $07B98
  $9B9A: 91 06       sta ($06),y    ; PRG $07B9A
  $9B9C: a5 11       lda $11    ; PRG $07B9C
  $9B9E: 69 60       adc #$60    ; PRG $07B9E
  $9BA0: c8          iny    ; PRG $07BA0
  $9BA1: 91 06       sta ($06),y    ; PRG $07BA1
  $9BA3: 8a          txa    ; PRG $07BA3
  $9BA4: a0 f0       ldy #$f0    ; PRG $07BA4
  $9BA6: 91 06       sta ($06),y    ; PRG $07BA6
  $9BA8: c8          iny    ; PRG $07BA8
  $9BA9: 91 06       sta ($06),y    ; PRG $07BA9
  $9BAB: ad 68 70    lda $7068    ; PRG $07BAB
  $9BAE: 85 18       sta $18    ; PRG $07BAE
  $9BB0: 86 19       stx $19    ; PRG $07BB0
  $9BB2: a5 18       lda $18    ; PRG $07BB2
  $9BB4: 05 19       ora $19    ; PRG $07BB4
  $9BB6: f0 03       beq $9bbb    ; PRG $07BB6
  $9BB8: 4c 57 9c    jmp $9c57    ; PRG $07BB8
  $9BBB: a0 f8       ldy #$f8    ; PRG $07BBB
  $9BBD: b1 06       lda ($06),y    ; PRG $07BBD
  $9BBF: 85 18       sta $18    ; PRG $07BBF
  $9BC1: c8          iny    ; PRG $07BC1
  $9BC2: b1 06       lda ($06),y    ; PRG $07BC2
  $9BC4: 85 19       sta $19    ; PRG $07BC4
  $9BC6: a1 18       lda ($18,x)    ; PRG $07BC6
  $9BC8: 85 14       sta $14    ; PRG $07BC8
  $9BCA: 86 15       stx $15    ; PRG $07BCA
  $9BCC: ad 62 66    lda $6662   ; entity_table    ; PRG $07BCC
  $9BCF: 85 18       sta $18    ; PRG $07BCF
  $9BD1: 86 19       stx $19    ; PRG $07BD1
  $9BD3: a5 18       lda $18    ; PRG $07BD3
  $9BD5: c5 14       cmp $14    ; PRG $07BD5
  $9BD7: d0 04       bne $9bdd    ; PRG $07BD7
  $9BD9: a5 19       lda $19    ; PRG $07BD9
  $9BDB: c5 15       cmp $15    ; PRG $07BDB
  $9BDD: f0 03       beq $9be2    ; PRG $07BDD
  $9BDF: 4c 57 9c    jmp $9c57    ; PRG $07BDF
  $9BE2: a0 f8       ldy #$f8    ; PRG $07BE2
  $9BE4: b1 06       lda ($06),y    ; PRG $07BE4
  $9BE6: 85 18       sta $18    ; PRG $07BE6
  $9BE8: c8          iny    ; PRG $07BE8
  $9BE9: b1 06       lda ($06),y    ; PRG $07BE9
  $9BEB: 85 19       sta $19    ; PRG $07BEB
  $9BED: a0 01       ldy #$01    ; PRG $07BED
  $9BEF: b1 18       lda ($18),y    ; PRG $07BEF
  $9BF1: 85 14       sta $14    ; PRG $07BF1
  $9BF3: 86 15       stx $15    ; PRG $07BF3
  $9BF5: ad 63 66    lda $6663    ; PRG $07BF5
  $9BF8: 85 18       sta $18    ; PRG $07BF8
  $9BFA: 86 19       stx $19    ; PRG $07BFA
  $9BFC: a5 18       lda $18    ; PRG $07BFC
  $9BFE: c5 14       cmp $14    ; PRG $07BFE
  $9C00: d0 04       bne $9c06    ; PRG $07C00
  $9C02: a5 19       lda $19    ; PRG $07C02
  $9C04: c5 15       cmp $15    ; PRG $07C04
  $9C06: f0 03       beq $9c0b    ; PRG $07C06
  $9C08: 4c 57 9c    jmp $9c57    ; PRG $07C08
  $9C0B: a9 01       lda #$01    ; PRG $07C0B
  $9C0D: a0 f0       ldy #$f0    ; PRG $07C0D
  $9C0F: 91 06       sta ($06),y    ; PRG $07C0F
  $9C11: 8a          txa    ; PRG $07C11
  $9C12: c8          iny    ; PRG $07C12
  $9C13: 91 06       sta ($06),y    ; PRG $07C13
  $9C15: 48          pha    ; PRG $07C15
  $9C16: a9 17       lda #$17    ; PRG $07C16
  $9C18: 48          pha    ; PRG $07C18
  $9C19: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $07C19
  $9C1C: 6f e0 04    .db $6f $e0 $04  -> vm $E06F argc 4    ; PRG $07C1C
  $9C1F: a0 f8       ldy #$f8    ; PRG $07C1F
  $9C21: b1 06       lda ($06),y    ; PRG $07C21
  $9C23: 85 18       sta $18    ; PRG $07C23
  $9C25: c8          iny    ; PRG $07C25
  $9C26: b1 06       lda ($06),y    ; PRG $07C26
  $9C28: 85 19       sta $19    ; PRG $07C28
  $9C2A: a0 03       ldy #$03    ; PRG $07C2A
  $9C2C: b1 18       lda ($18),y    ; PRG $07C2C
  $9C2E: 85 14       sta $14    ; PRG $07C2E
  $9C30: 86 15       stx $15    ; PRG $07C30
  $9C32: a5 15       lda $15    ; PRG $07C32
  $9C34: 48          pha    ; PRG $07C34
  $9C35: a5 14       lda $14    ; PRG $07C35
  $9C37: 48          pha    ; PRG $07C37
  $9C38: a0 f8       ldy #$f8    ; PRG $07C38
  $9C3A: b1 06       lda ($06),y    ; PRG $07C3A
  $9C3C: 85 18       sta $18    ; PRG $07C3C
  $9C3E: c8          iny    ; PRG $07C3E
  $9C3F: b1 06       lda ($06),y    ; PRG $07C3F
  $9C41: 85 19       sta $19    ; PRG $07C41
  $9C43: a0 02       ldy #$02    ; PRG $07C43
  $9C45: b1 18       lda ($18),y    ; PRG $07C45
  $9C47: 85 14       sta $14    ; PRG $07C47
  $9C49: 86 15       stx $15    ; PRG $07C49
  $9C4B: a5 15       lda $15    ; PRG $07C4B
  $9C4D: 48          pha    ; PRG $07C4D
  $9C4E: a5 14       lda $14    ; PRG $07C4E
  $9C50: 48          pha    ; PRG $07C50
  $9C51: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $07C51
  $9C54: 2b 99 06    .db $2b $99 $06  -> vm $992B argc 6    ; PRG $07C54
  $9C57: a0 f1       ldy #$f1    ; PRG $07C57
  $9C59: b1 06       lda ($06),y    ; PRG $07C59
  $9C5B: 48          pha    ; PRG $07C5B
  $9C5C: 88          dey    ; PRG $07C5C
  $9C5D: b1 06       lda ($06),y    ; PRG $07C5D
  $9C5F: 48          pha    ; PRG $07C5F
  $9C60: a0 0b       ldy #$0b    ; PRG $07C60
  $9C62: b1 04       lda ($04),y    ; PRG $07C62
  $9C64: 85 18       sta $18    ; PRG $07C64
  $9C66: 86 19       stx $19    ; PRG $07C66
  $9C68: a5 19       lda $19    ; PRG $07C68
  $9C6A: 48          pha    ; PRG $07C6A
  $9C6B: a5 18       lda $18    ; PRG $07C6B
  $9C6D: 48          pha    ; PRG $07C6D
  $9C6E: a0 ff       ldy #$ff    ; PRG $07C6E
  $9C70: b1 06       lda ($06),y    ; PRG $07C70
  $9C72: 48          pha    ; PRG $07C72
  $9C73: 88          dey    ; PRG $07C73
  $9C74: b1 06       lda ($06),y    ; PRG $07C74
  $9C76: 48          pha    ; PRG $07C76
  $9C77: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $07C77
  $9C7A: c5 95 08    .db $c5 $95 $08  -> vm $95C5 argc 8    ; PRG $07C7A
  $9C7D: a0 f0       ldy #$f0    ; PRG $07C7D
  $9C7F: b1 06       lda ($06),y    ; PRG $07C7F
  $9C81: c8          iny    ; PRG $07C81
  $9C82: 11 06       ora ($06),y    ; PRG $07C82
  $9C84: d0 03       bne $9c89    ; PRG $07C84
  $9C86: 4c 9f 9c    jmp $9c9f    ; PRG $07C86
  $9C89: 8a          txa    ; PRG $07C89
  $9C8A: 48          pha    ; PRG $07C8A
  $9C8B: a9 0c       lda #$0c    ; PRG $07C8B
  $9C8D: 48          pha    ; PRG $07C8D
  $9C8E: 8a          txa    ; PRG $07C8E
  $9C8F: 48          pha    ; PRG $07C8F
  $9C90: a9 11       lda #$11    ; PRG $07C90
  $9C92: 48          pha    ; PRG $07C92
  $9C93: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $07C93
  $9C96: d4 ee 06    .db $d4 $ee $06  -> vm $EED4 argc 6    ; PRG $07C96
  $9C99: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $07C99
  $9C9C: 0d 99 02    .db $0d $99 $02  -> vm $990D argc 2    ; PRG $07C9C
  $9C9F: 60          rts    ; PRG $07C9F
