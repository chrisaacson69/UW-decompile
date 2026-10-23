; ============================================================================
; Uncharted Waters - bank 8 NATIVE disassembly (window base $A000)
; 15 native subs: 15 $E299-stubbed (VM-frame entries) + 0 plain + 0 jumptable/CALL-recovered
; coverage: 2055B code+inline (25%) + 486B $FF-pad + 5651B data
; control-flow-followed, inline bridges ($E299/$E338) skipped; calls resolved vs mesen-labels.toml.
; ============================================================================
.base $A000

; ---- sub_8_0009  [stub]  <- (entry: bytecode/OS via $E299)
nat_8_0003: jsr $E299                    ; 8:A003  native-call prologue
            .db $00 $fa $ff            ; inline: argcount $00, frame $fffa
  $A009: a9 9a       lda #$9a    ; PRG $10009
  $A00B: a0 fe       ldy #$fe    ; PRG $1000B
  $A00D: 91 06       sta ($06),y    ; PRG $1000D
  $A00F: a9 6a       lda #$6a    ; PRG $1000F
  $A011: c8          iny    ; PRG $10011
  $A012: 91 06       sta ($06),y    ; PRG $10012
  $A014: a9 9a       lda #$9a    ; PRG $10014
  $A016: a0 fc       ldy #$fc    ; PRG $10016
  $A018: 91 06       sta ($06),y    ; PRG $10018
  $A01A: a9 6a       lda #$6a    ; PRG $1001A
  $A01C: c8          iny    ; PRG $1001C
  $A01D: 91 06       sta ($06),y    ; PRG $1001D
  $A01F: 8a          txa    ; PRG $1001F
  $A020: a0 fa       ldy #$fa    ; PRG $10020
  $A022: 91 06       sta ($06),y    ; PRG $10022
  $A024: c8          iny    ; PRG $10024
  $A025: 91 06       sta ($06),y    ; PRG $10025
  $A027: 4c 48 80    jmp $8048    ; PRG $10027

; ---- sub_8_0109  [stub]  <- (entry: bytecode/OS via $E299)
nat_8_0103: jsr $E299                    ; 8:A103  native-call prologue
            .db $00 $fa $ff            ; inline: argcount $00, frame $fffa
  $A109: a9 6b       lda #$6b    ; PRG $10109
  $A10B: a0 fe       ldy #$fe    ; PRG $1010B
  $A10D: 91 06       sta ($06),y    ; PRG $1010D
  $A10F: a9 70       lda #$70    ; PRG $1010F
  $A111: c8          iny    ; PRG $10111
  $A112: 91 06       sta ($06),y    ; PRG $10112
  $A114: a9 6b       lda #$6b    ; PRG $10114
  $A116: a0 fc       ldy #$fc    ; PRG $10116
  $A118: 91 06       sta ($06),y    ; PRG $10118
  $A11A: a9 70       lda #$70    ; PRG $1011A
  $A11C: c8          iny    ; PRG $1011C
  $A11D: 91 06       sta ($06),y    ; PRG $1011D
  $A11F: ad 7f 70    lda $707f    ; PRG $1011F
  $A122: 85 18       sta $18    ; PRG $10122
  $A124: 86 19       stx $19    ; PRG $10124
  $A126: 18          clc    ; PRG $10126
  $A127: a5 18       lda $18    ; PRG $10127
  $A129: 69 6b       adc #$6b    ; PRG $10129
  $A12B: a0 fa       ldy #$fa    ; PRG $1012B
  $A12D: 91 06       sta ($06),y    ; PRG $1012D
  $A12F: a5 19       lda $19    ; PRG $1012F
  $A131: 69 70       adc #$70    ; PRG $10131
  $A133: c8          iny    ; PRG $10133
  $A134: 91 06       sta ($06),y    ; PRG $10134
  $A136: 4c 48 81    jmp $8148   ; gameover_draw_header    ; PRG $10136

; ---- sub_8_01be  [stub]  <- (entry: bytecode/OS via $E299)
nat_8_01b8: jsr $E299                    ; 8:A1B8  native-call prologue
            .db $00 $fa $ff            ; inline: argcount $00, frame $fffa
  $A1BE: a0 0c       ldy #$0c    ; PRG $101BE
  $A1C0: b1 04       lda ($04),y    ; PRG $101C0
  $A1C2: 10 03       bpl $a1c7    ; PRG $101C2
  $A1C4: 4c f8 81    jmp $81f8    ; PRG $101C4
  $A1C7: a9 0d       lda #$0d    ; PRG $101C7
  $A1C9: 88          dey    ; PRG $101C9
  $A1CA: d1 04       cmp ($04),y    ; PRG $101CA
  $A1CC: 8a          txa    ; PRG $101CC
  $A1CD: c8          iny    ; PRG $101CD
  $A1CE: f1 04       sbc ($04),y    ; PRG $101CE
  $A1D0: 70 04       bvs $a1d6    ; PRG $101D0
  $A1D2: 30 04       bmi $a1d8    ; PRG $101D2
  $A1D4: 10 05       bpl $a1db    ; PRG $101D4
  $A1D6: 30 03       bmi $a1db    ; PRG $101D6
  $A1D8: 4c f8 81    jmp $81f8    ; PRG $101D8
  $A1DB: a0 0e       ldy #$0e    ; PRG $101DB
  $A1DD: b1 04       lda ($04),y    ; PRG $101DD
  $A1DF: 10 03       bpl $a1e4    ; PRG $101DF
  $A1E1: 4c f8 81    jmp $81f8    ; PRG $101E1
  $A1E4: a9 0d       lda #$0d    ; PRG $101E4
  $A1E6: 88          dey    ; PRG $101E6
  $A1E7: d1 04       cmp ($04),y    ; PRG $101E7
  $A1E9: 8a          txa    ; PRG $101E9
  $A1EA: c8          iny    ; PRG $101EA
  $A1EB: f1 04       sbc ($04),y    ; PRG $101EB
  $A1ED: 70 04       bvs $a1f3    ; PRG $101ED
  $A1EF: 30 07       bmi $a1f8    ; PRG $101EF
  $A1F1: 10 02       bpl $a1f5    ; PRG $101F1
  $A1F3: 10 03       bpl $a1f8    ; PRG $101F3
  $A1F5: 4c fd 81    jmp $81fd    ; PRG $101F5
  $A1F8: 86 08       stx $08    ; PRG $101F8
  $A1FA: 86 09       stx $09    ; PRG $101FA
  $A1FC: 60          rts    ; PRG $101FC

; ---- sub_8_036e  [stub]  <- (entry: bytecode/OS via $E299)
nat_8_0368: jsr $E299                    ; 8:A368  native-call prologue
            .db $00 $fa $ff            ; inline: argcount $00, frame $fffa
  $A36E: a9 6b       lda #$6b    ; PRG $1036E
  $A370: a0 fe       ldy #$fe    ; PRG $10370
  $A372: 91 06       sta ($06),y    ; PRG $10372
  $A374: a9 70       lda #$70    ; PRG $10374
  $A376: c8          iny    ; PRG $10376
  $A377: 91 06       sta ($06),y    ; PRG $10377
  $A379: ad 7f 70    lda $707f    ; PRG $10379
  $A37C: 85 18       sta $18    ; PRG $1037C
  $A37E: 86 19       stx $19    ; PRG $1037E
  $A380: 18          clc    ; PRG $10380
  $A381: a5 18       lda $18    ; PRG $10381
  $A383: 69 6b       adc #$6b    ; PRG $10383
  $A385: a0 fc       ldy #$fc    ; PRG $10385
  $A387: 91 06       sta ($06),y    ; PRG $10387
  $A389: a5 19       lda $19    ; PRG $10389
  $A38B: 69 70       adc #$70    ; PRG $1038B
  $A38D: c8          iny    ; PRG $1038D
  $A38E: 91 06       sta ($06),y    ; PRG $1038E
  $A390: 4c a2 83    jmp $83a2    ; PRG $10390

; ---- sub_8_047f  [stub]  <- (entry: bytecode/OS via $E299)
nat_8_0479: jsr $E299                    ; 8:A479  native-call prologue
            .db $00 $fc $ff            ; inline: argcount $00, frame $fffc
  $A47F: a0 0f       ldy #$0f    ; PRG $1047F
  $A481: b1 04       lda ($04),y    ; PRG $10481
  $A483: 85 18       sta $18    ; PRG $10483
  $A485: c8          iny    ; PRG $10485
  $A486: b1 04       lda ($04),y    ; PRG $10486
  $A488: 85 19       sta $19    ; PRG $10488
  $A48A: a0 0b       ldy #$0b    ; PRG $1048A
  $A48C: b1 18       lda ($18),y    ; PRG $1048C
  $A48E: 29 01       and #$01    ; PRG $1048E
  $A490: d0 03       bne $a495    ; PRG $10490
  $A492: 4c a4 84    jmp $84a4    ; PRG $10492
  $A495: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $10495
  $A498: 70 9a 02    .db $70 $9a $02  -> vm $9A70 argc 2    ; PRG $10498
  $A49B: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1049B
  $A49E: 68 83 02    .db $68 $83 $02  -> vm $8368 argc 2    ; PRG $1049E
  $A4A1: 4c f1 85    jmp $85f1    ; PRG $104A1

; ---- sub_8_05f8  [stub]  <- (entry: bytecode/OS via $E299)
nat_8_05f2: jsr $E299                    ; 8:A5F2  native-call prologue
            .db $00 $ed $ff            ; inline: argcount $00, frame $ffed
  $A5F8: 18          clc    ; PRG $105F8
  $A5F9: a9 fb       lda #$fb    ; PRG $105F9
  $A5FB: 65 06       adc $06    ; PRG $105FB
  $A5FD: 85 18       sta $18    ; PRG $105FD
  $A5FF: 8a          txa    ; PRG $105FF
  $A600: 65 07       adc $07    ; PRG $10600
  $A602: 85 19       sta $19    ; PRG $10602
  $A604: a5 19       lda $19    ; PRG $10604
  $A606: 48          pha    ; PRG $10606
  $A607: a5 18       lda $18    ; PRG $10607
  $A609: 48          pha    ; PRG $10609
  $A60A: 8a          txa    ; PRG $1060A
  $A60B: 48          pha    ; PRG $1060B
  $A60C: 48          pha    ; PRG $1060C
  $A60D: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1060D
  $A610: 26 d0 06    .db $26 $d0 $06  -> vm $D026 argc 6    ; PRG $10610
  $A613: a5 08       lda $08    ; PRG $10613
  $A615: a0 f9       ldy #$f9    ; PRG $10615
  $A617: 91 06       sta ($06),y    ; PRG $10617
  $A619: a5 09       lda $09    ; PRG $10619
  $A61B: c8          iny    ; PRG $1061B
  $A61C: 91 06       sta ($06),y    ; PRG $1061C
  $A61E: 8a          txa    ; PRG $1061E
  $A61F: a0 f7       ldy #$f7    ; PRG $1061F
  $A621: 91 06       sta ($06),y    ; PRG $10621
  $A623: c8          iny    ; PRG $10623
  $A624: 91 06       sta ($06),y    ; PRG $10624
  $A626: 4c 38 86    jmp $8638    ; PRG $10626

; ---- sub_8_07ed  [stub]  <- (entry: bytecode/OS via $E299)
nat_8_07e7: jsr $E299                    ; 8:A7E7  native-call prologue
            .db $00 $f8 $ff            ; inline: argcount $00, frame $fff8
  $A7ED: a0 f8       ldy #$f8    ; PRG $107ED
  $A7EF: 91 06       sta ($06),y    ; PRG $107EF
  $A7F1: c8          iny    ; PRG $107F1
  $A7F2: 91 06       sta ($06),y    ; PRG $107F2
  $A7F4: a9 18       lda #$18    ; PRG $107F4
  $A7F6: 85 18       sta $18    ; PRG $107F6
  $A7F8: 86 19       stx $19    ; PRG $107F8
  $A7FA: a0 0b       ldy #$0b    ; PRG $107FA
  $A7FC: b1 04       lda ($04),y    ; PRG $107FC
  $A7FE: 85 14       sta $14    ; PRG $107FE
  $A800: c8          iny    ; PRG $10800
  $A801: b1 04       lda ($04),y    ; PRG $10801
  $A803: 85 15       sta $15    ; PRG $10803
  $A805: a0 14       ldy #$14    ; PRG $10805
  $A807: a2 18       ldx #$18    ; PRG $10807
  $A809: a9 10       lda #$10    ; PRG $10809
  $A80B: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1080B
  $A80E: 18          clc    ; PRG $1080E
  $A80F: a5 10       lda $10    ; PRG $1080F
  $A811: 69 a4       adc #$a4    ; PRG $10811
  $A813: a0 fc       ldy #$fc    ; PRG $10813
  $A815: 91 06       sta ($06),y    ; PRG $10815
  $A817: a5 11       lda $11    ; PRG $10817
  $A819: 69 6a       adc #$6a    ; PRG $10819
  $A81B: c8          iny    ; PRG $1081B
  $A81C: 91 06       sta ($06),y    ; PRG $1081C
  $A81E: a9 64       lda #$64    ; PRG $1081E
  $A820: 85 18       sta $18    ; PRG $10820
  $A822: 86 19       stx $19    ; PRG $10822
  $A824: a0 0d       ldy #$0d    ; PRG $10824
  $A826: b1 04       lda ($04),y    ; PRG $10826
  $A828: 85 14       sta $14    ; PRG $10828
  $A82A: c8          iny    ; PRG $1082A
  $A82B: b1 04       lda ($04),y    ; PRG $1082B
  $A82D: 85 15       sta $15    ; PRG $1082D
  $A82F: a9 07       lda #$07    ; PRG $1082F
  $A831: 85 10       sta $10    ; PRG $10831
  $A833: 86 11       stx $11    ; PRG $10833
  $A835: a0 0b       ldy #$0b    ; PRG $10835
  $A837: b1 04       lda ($04),y    ; PRG $10837
  $A839: 85 0c       sta $0c    ; PRG $10839
  $A83B: c8          iny    ; PRG $1083B
  $A83C: b1 04       lda ($04),y    ; PRG $1083C
  $A83E: 85 0d       sta $0d    ; PRG $1083E
  $A840: a2 10       ldx #$10    ; PRG $10840
  $A842: a9 08       lda #$08    ; PRG $10842
  $A844: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $10844
  $A847: 18          clc    ; PRG $10847
  $A848: a5 08       lda $08    ; PRG $10848
  $A84A: 69 94       adc #$94    ; PRG $1084A
  $A84C: 85 10       sta $10    ; PRG $1084C
  $A84E: a5 09       lda $09    ; PRG $1084E
  $A850: 69 6c       adc #$6c    ; PRG $10850
  $A852: 85 11       sta $11    ; PRG $10852
  $A854: a1 10       lda ($10,x)    ; PRG $10854
  $A856: 85 0c       sta $0c    ; PRG $10856
  $A858: b1 10       lda ($10),y    ; PRG $10858
  $A85A: 85 0d       sta $0d    ; PRG $1085A
  $A85C: a0 0c       ldy #$0c    ; PRG $1085C
  $A85E: a2 14       ldx #$14    ; PRG $1085E
  $A860: a9 10       lda #$10    ; PRG $10860
  $A862: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $10862
  $A865: a0 10       ldy #$10    ; PRG $10865
  $A867: a2 18       ldx #$18    ; PRG $10867
  $A869: a9 14       lda #$14    ; PRG $10869
  $A86B: 20 d9 e1    jsr $e1d9   ; alu_div_push_remainder    ; PRG $1086B
  $A86E: 18          clc    ; PRG $1086E
  $A86F: 98          tya    ; PRG $1086F
  $A870: 65 14       adc $14    ; PRG $10870
  $A872: a0 fe       ldy #$fe    ; PRG $10872
  $A874: 91 06       sta ($06),y    ; PRG $10874
  $A876: 8a          txa    ; PRG $10876
  $A877: 65 15       adc $15    ; PRG $10877
  $A879: c8          iny    ; PRG $10879
  $A87A: 91 06       sta ($06),y    ; PRG $1087A
  $A87C: a0 fc       ldy #$fc    ; PRG $1087C
  $A87E: b1 06       lda ($06),y    ; PRG $1087E
  $A880: 85 18       sta $18    ; PRG $10880
  $A882: c8          iny    ; PRG $10882
  $A883: b1 06       lda ($06),y    ; PRG $10883
  $A885: 85 19       sta $19    ; PRG $10885
  $A887: a1 18       lda ($18,x)    ; PRG $10887
  $A889: d0 03       bne $a88e    ; PRG $10889
  $A88B: 4c ca 88    jmp $88ca    ; PRG $1088B
  $A88E: a9 01       lda #$01    ; PRG $1088E
  $A890: 85 18       sta $18    ; PRG $10890
  $A892: 86 19       stx $19    ; PRG $10892
  $A894: 88          dey    ; PRG $10894
  $A895: b1 06       lda ($06),y    ; PRG $10895
  $A897: 85 14       sta $14    ; PRG $10897
  $A899: c8          iny    ; PRG $10899
  $A89A: b1 06       lda ($06),y    ; PRG $1089A
  $A89C: 85 15       sta $15    ; PRG $1089C
  $A89E: a1 14       lda ($14,x)    ; PRG $1089E
  $A8A0: 85 10       sta $10    ; PRG $108A0
  $A8A2: 86 11       stx $11    ; PRG $108A2
  $A8A4: 18          clc    ; PRG $108A4
  $A8A5: a9 ff       lda #$ff    ; PRG $108A5
  $A8A7: 65 10       adc $10    ; PRG $108A7
  $A8A9: 85 14       sta $14    ; PRG $108A9
  $A8AB: a9 ff       lda #$ff    ; PRG $108AB
  $A8AD: 65 11       adc $11    ; PRG $108AD
  $A8AF: 85 15       sta $15    ; PRG $108AF
  $A8B1: a0 14       ldy #$14    ; PRG $108B1
  $A8B3: a2 18       ldx #$18    ; PRG $108B3
  $A8B5: a9 10       lda #$10    ; PRG $108B5
  $A8B7: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $108B7
  $A8BA: 18          clc    ; PRG $108BA
  $A8BB: a5 10       lda $10    ; PRG $108BB
  $A8BD: 69 6e       adc #$6e    ; PRG $108BD
  $A8BF: a0 fa       ldy #$fa    ; PRG $108BF
  $A8C1: 91 06       sta ($06),y    ; PRG $108C1
  $A8C3: a5 11       lda $11    ; PRG $108C3
  $A8C5: 69 6a       adc #$6a    ; PRG $108C5
  $A8C7: c8          iny    ; PRG $108C7
  $A8C8: 91 06       sta ($06),y    ; PRG $108C8
  $A8CA: a0 0d       ldy #$0d    ; PRG $108CA
  $A8CC: b1 04       lda ($04),y    ; PRG $108CC
  $A8CE: c9 32       cmp #$32    ; PRG $108CE
  $A8D0: c8          iny    ; PRG $108D0
  $A8D1: b1 04       lda ($04),y    ; PRG $108D1
  $A8D3: e9 00       sbc #$00    ; PRG $108D3
  $A8D5: b0 03       bcs $a8da    ; PRG $108D5
  $A8D7: 4c 47 89    jmp $8947   ; entry_sprite_anim    ; PRG $108D7
  $A8DA: a0 fc       ldy #$fc    ; PRG $108DA
  $A8DC: b1 06       lda ($06),y    ; PRG $108DC
  $A8DE: 85 18       sta $18    ; PRG $108DE
  $A8E0: c8          iny    ; PRG $108E0
  $A8E1: b1 06       lda ($06),y    ; PRG $108E1
  $A8E3: 85 19       sta $19    ; PRG $108E3
  $A8E5: a2 18       ldx #$18    ; PRG $108E5
  $A8E7: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $108E7
  $A8EA: 48          pha    ; PRG $108EA
  $A8EB: a9 64       lda #$64    ; PRG $108EB
  $A8ED: 48          pha    ; PRG $108ED
  $A8EE: a9 0a       lda #$0a    ; PRG $108EE
  $A8F0: 85 18       sta $18    ; PRG $108F0
  $A8F2: 86 19       stx $19    ; PRG $108F2
  $A8F4: 18          clc    ; PRG $108F4
  $A8F5: a9 ce       lda #$ce    ; PRG $108F5
  $A8F7: a0 0d       ldy #$0d    ; PRG $108F7
  $A8F9: 71 04       adc ($04),y    ; PRG $108F9
  $A8FB: 85 14       sta $14    ; PRG $108FB
  $A8FD: a9 ff       lda #$ff    ; PRG $108FD
  $A8FF: c8          iny    ; PRG $108FF
  $A900: 71 04       adc ($04),y    ; PRG $10900
  $A902: 85 15       sta $15    ; PRG $10902
  $A904: a0 14       ldy #$14    ; PRG $10904
  $A906: a2 18       ldx #$18    ; PRG $10906
  $A908: a9 10       lda #$10    ; PRG $10908
  $A90A: 20 d9 e1    jsr $e1d9   ; alu_div_push_remainder    ; PRG $1090A
  $A90D: a0 fc       ldy #$fc    ; PRG $1090D
  $A90F: b1 06       lda ($06),y    ; PRG $1090F
  $A911: 85 18       sta $18    ; PRG $10911
  $A913: c8          iny    ; PRG $10913
  $A914: b1 06       lda ($06),y    ; PRG $10914
  $A916: 85 19       sta $19    ; PRG $10916
  $A918: a0 16       ldy #$16    ; PRG $10918
  $A91A: b1 18       lda ($18),y    ; PRG $1091A
  $A91C: 85 14       sta $14    ; PRG $1091C
  $A91E: 86 15       stx $15    ; PRG $1091E
  $A920: 18          clc    ; PRG $10920
  $A921: a5 14       lda $14    ; PRG $10921
  $A923: 65 10       adc $10    ; PRG $10923
  $A925: 85 18       sta $18    ; PRG $10925
  $A927: a5 15       lda $15    ; PRG $10927
  $A929: 65 11       adc $11    ; PRG $10929
  $A92B: 85 19       sta $19    ; PRG $1092B
  $A92D: a5 19       lda $19    ; PRG $1092D
  $A92F: 48          pha    ; PRG $1092F
  $A930: a5 18       lda $18    ; PRG $10930
  $A932: 48          pha    ; PRG $10932
  $A933: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $10933
  $A936: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $10936
  $A939: a2 18       ldx #$18    ; PRG $10939
  $A93B: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $1093B
  $A93E: a5 08       lda $08    ; PRG $1093E
  $A940: a0 16       ldy #$16    ; PRG $10940
  $A942: 91 18       sta ($18),y    ; PRG $10942
  $A944: 4c 15 8a    jmp $8a15    ; PRG $10944

; ---- sub_8_0b88  [stub]  <- (entry: bytecode/OS via $E299)
nat_8_0b82: jsr $E299                    ; 8:AB82  native-call prologue
            .db $00 $ed $ff            ; inline: argcount $00, frame $ffed
  $AB88: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $10B88
  $AB8B: 70 b5 02    .db $70 $b5 $02  -> vm $B570 argc 2    ; PRG $10B8B
  $AB8E: 18          clc    ; PRG $10B8E
  $AB8F: a9 fb       lda #$fb    ; PRG $10B8F
  $AB91: 65 06       adc $06    ; PRG $10B91
  $AB93: 85 18       sta $18    ; PRG $10B93
  $AB95: 8a          txa    ; PRG $10B95
  $AB96: 65 07       adc $07    ; PRG $10B96
  $AB98: 85 19       sta $19    ; PRG $10B98
  $AB9A: a5 19       lda $19    ; PRG $10B9A
  $AB9C: 48          pha    ; PRG $10B9C
  $AB9D: a5 18       lda $18    ; PRG $10B9D
  $AB9F: 48          pha    ; PRG $10B9F
  $ABA0: 8a          txa    ; PRG $10BA0
  $ABA1: 48          pha    ; PRG $10BA1
  $ABA2: 48          pha    ; PRG $10BA2
  $ABA3: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $10BA3
  $ABA6: 26 d0 06    .db $26 $d0 $06  -> vm $D026 argc 6    ; PRG $10BA6
  $ABA9: a5 08       lda $08    ; PRG $10BA9
  $ABAB: a0 f5       ldy #$f5    ; PRG $10BAB
  $ABAD: 91 06       sta ($06),y    ; PRG $10BAD
  $ABAF: a5 09       lda $09    ; PRG $10BAF
  $ABB1: c8          iny    ; PRG $10BB1
  $ABB2: 91 06       sta ($06),y    ; PRG $10BB2
  $ABB4: 18          clc    ; PRG $10BB4
  $ABB5: a9 fb       lda #$fb    ; PRG $10BB5
  $ABB7: 65 06       adc $06    ; PRG $10BB7
  $ABB9: 85 18       sta $18    ; PRG $10BB9
  $ABBB: 8a          txa    ; PRG $10BBB
  $ABBC: 65 07       adc $07    ; PRG $10BBC
  $ABBE: 85 19       sta $19    ; PRG $10BBE
  $ABC0: a5 18       lda $18    ; PRG $10BC0
  $ABC2: a0 f9       ldy #$f9    ; PRG $10BC2
  $ABC4: 91 06       sta ($06),y    ; PRG $10BC4
  $ABC6: a5 19       lda $19    ; PRG $10BC6
  $ABC8: c8          iny    ; PRG $10BC8
  $ABC9: 91 06       sta ($06),y    ; PRG $10BC9
  $ABCB: 18          clc    ; PRG $10BCB
  $ABCC: a5 18       lda $18    ; PRG $10BCC
  $ABCE: a0 f5       ldy #$f5    ; PRG $10BCE
  $ABD0: 71 06       adc ($06),y    ; PRG $10BD0
  $ABD2: a0 f7       ldy #$f7    ; PRG $10BD2
  $ABD4: 91 06       sta ($06),y    ; PRG $10BD4
  $ABD6: a5 19       lda $19    ; PRG $10BD6
  $ABD8: 88          dey    ; PRG $10BD8
  $ABD9: 71 06       adc ($06),y    ; PRG $10BD9
  $ABDB: a0 f8       ldy #$f8    ; PRG $10BDB
  $ABDD: 91 06       sta ($06),y    ; PRG $10BDD
  $ABDF: 4c f1 8b    jmp $8bf1    ; PRG $10BDF

; ---- sub_8_0f7f  [stub]  <- (entry: bytecode/OS via $E299)
nat_8_0f79: jsr $E299                    ; 8:AF79  native-call prologue
            .db $00 $eb $ff            ; inline: argcount $00, frame $ffeb
  $AF7F: 18          clc    ; PRG $10F7F
  $AF80: a9 f7       lda #$f7    ; PRG $10F80
  $AF82: 65 06       adc $06    ; PRG $10F82
  $AF84: 85 18       sta $18    ; PRG $10F84
  $AF86: 8a          txa    ; PRG $10F86
  $AF87: 65 07       adc $07    ; PRG $10F87
  $AF89: 85 19       sta $19    ; PRG $10F89
  $AF8B: a5 19       lda $19    ; PRG $10F8B
  $AF8D: 48          pha    ; PRG $10F8D
  $AF8E: a5 18       lda $18    ; PRG $10F8E
  $AF90: 48          pha    ; PRG $10F90
  $AF91: 8a          txa    ; PRG $10F91
  $AF92: 48          pha    ; PRG $10F92
  $AF93: 48          pha    ; PRG $10F93
  $AF94: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $10F94
  $AF97: 26 d0 06    .db $26 $d0 $06  -> vm $D026 argc 6    ; PRG $10F97
  $AF9A: a5 08       lda $08    ; PRG $10F9A
  $AF9C: a0 f5       ldy #$f5    ; PRG $10F9C
  $AF9E: 91 06       sta ($06),y    ; PRG $10F9E
  $AFA0: a5 09       lda $09    ; PRG $10FA0
  $AFA2: c8          iny    ; PRG $10FA2
  $AFA3: 91 06       sta ($06),y    ; PRG $10FA3
  $AFA5: a9 2c       lda #$2c    ; PRG $10FA5
  $AFA7: a0 ef       ldy #$ef    ; PRG $10FA7
  $AFA9: 91 06       sta ($06),y    ; PRG $10FA9
  $AFAB: a9 01       lda #$01    ; PRG $10FAB
  $AFAD: c8          iny    ; PRG $10FAD
  $AFAE: 91 06       sta ($06),y    ; PRG $10FAE
  $AFB0: 8a          txa    ; PRG $10FB0
  $AFB1: a0 f3       ldy #$f3    ; PRG $10FB1
  $AFB3: 91 06       sta ($06),y    ; PRG $10FB3
  $AFB5: c8          iny    ; PRG $10FB5
  $AFB6: 91 06       sta ($06),y    ; PRG $10FB6
  $AFB8: a0 f1       ldy #$f1    ; PRG $10FB8
  $AFBA: 91 06       sta ($06),y    ; PRG $10FBA
  $AFBC: c8          iny    ; PRG $10FBC
  $AFBD: 91 06       sta ($06),y    ; PRG $10FBD
  $AFBF: 18          clc    ; PRG $10FBF
  $AFC0: a9 f7       lda #$f7    ; PRG $10FC0
  $AFC2: 65 06       adc $06    ; PRG $10FC2
  $AFC4: 85 18       sta $18    ; PRG $10FC4
  $AFC6: 8a          txa    ; PRG $10FC6
  $AFC7: 65 07       adc $07    ; PRG $10FC7
  $AFC9: 85 19       sta $19    ; PRG $10FC9
  $AFCB: a5 18       lda $18    ; PRG $10FCB
  $AFCD: a0 fe       ldy #$fe    ; PRG $10FCD
  $AFCF: 91 06       sta ($06),y    ; PRG $10FCF
  $AFD1: a5 19       lda $19    ; PRG $10FD1
  $AFD3: c8          iny    ; PRG $10FD3
  $AFD4: 91 06       sta ($06),y    ; PRG $10FD4
  $AFD6: 18          clc    ; PRG $10FD6
  $AFD7: a5 18       lda $18    ; PRG $10FD7
  $AFD9: a0 f5       ldy #$f5    ; PRG $10FD9
  $AFDB: 71 06       adc ($06),y    ; PRG $10FDB
  $AFDD: a0 fc       ldy #$fc    ; PRG $10FDD
  $AFDF: 91 06       sta ($06),y    ; PRG $10FDF
  $AFE1: a5 19       lda $19    ; PRG $10FE1
  $AFE3: a0 f6       ldy #$f6    ; PRG $10FE3
  $AFE5: 71 06       adc ($06),y    ; PRG $10FE5
  $AFE7: a0 fd       ldy #$fd    ; PRG $10FE7
  $AFE9: 91 06       sta ($06),y    ; PRG $10FE9
  $AFEB: 4c 0c 90    jmp $900c   ; str_stat_charisma    ; PRG $10FEB

; ---- sub_8_1115  [stub]  <- (entry: bytecode/OS via $E299)
nat_8_110f: jsr $E299                    ; 8:B10F  native-call prologue
            .db $00 $fc $ff            ; inline: argcount $00, frame $fffc
  $B115: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $11115
  $B118: 79 8f 02    .db $79 $8f $02  -> vm $8F79 argc 2    ; PRG $11118
  $B11B: a5 08       lda $08    ; PRG $1111B
  $B11D: a0 fe       ldy #$fe    ; PRG $1111D
  $B11F: 91 06       sta ($06),y    ; PRG $1111F
  $B121: a5 09       lda $09    ; PRG $11121
  $B123: c8          iny    ; PRG $11123
  $B124: 91 06       sta ($06),y    ; PRG $11124
  $B126: a9 07       lda #$07    ; PRG $11126
  $B128: 85 18       sta $18    ; PRG $11128
  $B12A: 86 19       stx $19    ; PRG $1112A
  $B12C: 88          dey    ; PRG $1112C
  $B12D: b1 06       lda ($06),y    ; PRG $1112D
  $B12F: 85 14       sta $14    ; PRG $1112F
  $B131: c8          iny    ; PRG $11131
  $B132: b1 06       lda ($06),y    ; PRG $11132
  $B134: 85 15       sta $15    ; PRG $11134
  $B136: a0 14       ldy #$14    ; PRG $11136
  $B138: a2 18       ldx #$18    ; PRG $11138
  $B13A: a9 10       lda #$10    ; PRG $1113A
  $B13C: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1113C
  $B13F: 18          clc    ; PRG $1113F
  $B140: a5 10       lda $10    ; PRG $11140
  $B142: 69 90       adc #$90    ; PRG $11142
  $B144: a0 fc       ldy #$fc    ; PRG $11144
  $B146: 91 06       sta ($06),y    ; PRG $11146
  $B148: a5 11       lda $11    ; PRG $11148
  $B14A: 69 6c       adc #$6c    ; PRG $1114A
  $B14C: c8          iny    ; PRG $1114C
  $B14D: 91 06       sta ($06),y    ; PRG $1114D
  $B14F: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1114F
  $B152: 3e 99 02    .db $3e $99 $02  -> vm $993E argc 2    ; PRG $11152
  $B155: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $11155
  $B158: 4b b2 02    .db $4b $b2 $02  -> vm $B24B argc 2    ; PRG $11158
  $B15B: 48          pha    ; PRG $1115B
  $B15C: 48          pha    ; PRG $1115C
  $B15D: a9 9c       lda #$9c    ; PRG $1115D
  $B15F: 48          pha    ; PRG $1115F
  $B160: a9 04       lda #$04    ; PRG $11160
  $B162: 48          pha    ; PRG $11162
  $B163: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $11163
  $B166: 03 c0 06    .db $03 $c0 $06  -> vm $C003 argc 6    ; PRG $11166
  $B169: a0 ff       ldy #$ff    ; PRG $11169
  $B16B: b1 06       lda ($06),y    ; PRG $1116B
  $B16D: 48          pha    ; PRG $1116D
  $B16E: 88          dey    ; PRG $1116E
  $B16F: b1 06       lda ($06),y    ; PRG $1116F
  $B171: 48          pha    ; PRG $11171
  $B172: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $11172
  $B175: 5b 9a 04    .db $5b $9a $04  -> vm $9A5B argc 4    ; PRG $11175
  $B178: a5 09       lda $09    ; PRG $11178
  $B17A: 48          pha    ; PRG $1117A
  $B17B: a5 08       lda $08    ; PRG $1117B
  $B17D: 48          pha    ; PRG $1117D
  $B17E: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1117E
  $B181: 6b d5 04    .db $6b $d5 $04  -> vm $D56B argc 4    ; PRG $11181
  $B184: 48          pha    ; PRG $11184
  $B185: 48          pha    ; PRG $11185
  $B186: a9 9c       lda #$9c    ; PRG $11186
  $B188: 48          pha    ; PRG $11188
  $B189: a9 23       lda #$23    ; PRG $11189
  $B18B: 48          pha    ; PRG $1118B
  $B18C: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1118C
  $B18F: 03 c0 06    .db $03 $c0 $06  -> vm $C003 argc 6    ; PRG $1118F
  $B192: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $11192
  $B195: 4b b2 02    .db $4b $b2 $02  -> vm $B24B argc 2    ; PRG $11195
  $B198: a9 9c       lda #$9c    ; PRG $11198
  $B19A: 48          pha    ; PRG $1119A
  $B19B: a9 28       lda #$28    ; PRG $1119B
  $B19D: 48          pha    ; PRG $1119D
  $B19E: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1119E
  $B1A1: f4 a3 04    .db $f4 $a3 $04  -> vm $A3F4 argc 4    ; PRG $111A1
  $B1A4: a0 fc       ldy #$fc    ; PRG $111A4
  $B1A6: b1 06       lda ($06),y    ; PRG $111A6
  $B1A8: 85 18       sta $18    ; PRG $111A8
  $B1AA: c8          iny    ; PRG $111AA
  $B1AB: b1 06       lda ($06),y    ; PRG $111AB
  $B1AD: 85 19       sta $19    ; PRG $111AD
  $B1AF: 8a          txa    ; PRG $111AF
  $B1B0: a0 02       ldy #$02    ; PRG $111B0
  $B1B2: 91 18       sta ($18),y    ; PRG $111B2
  $B1B4: 60          rts    ; PRG $111B4

; ---- sub_8_11bb  [stub]  <- (entry: bytecode/OS via $E299)
nat_8_11b5: jsr $E299                    ; 8:B1B5  native-call prologue
            .db $00 $fc $ff            ; inline: argcount $00, frame $fffc
  $B1BB: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $111BB
  $B1BE: 79 8f 02    .db $79 $8f $02  -> vm $8F79 argc 2    ; PRG $111BE
  $B1C1: a5 08       lda $08    ; PRG $111C1
  $B1C3: a0 fe       ldy #$fe    ; PRG $111C3
  $B1C5: 91 06       sta ($06),y    ; PRG $111C5
  $B1C7: a5 09       lda $09    ; PRG $111C7
  $B1C9: c8          iny    ; PRG $111C9
  $B1CA: 91 06       sta ($06),y    ; PRG $111CA
  $B1CC: a9 07       lda #$07    ; PRG $111CC
  $B1CE: 85 18       sta $18    ; PRG $111CE
  $B1D0: 86 19       stx $19    ; PRG $111D0
  $B1D2: 88          dey    ; PRG $111D2
  $B1D3: b1 06       lda ($06),y    ; PRG $111D3
  $B1D5: 85 14       sta $14    ; PRG $111D5
  $B1D7: c8          iny    ; PRG $111D7
  $B1D8: b1 06       lda ($06),y    ; PRG $111D8
  $B1DA: 85 15       sta $15    ; PRG $111DA
  $B1DC: a0 14       ldy #$14    ; PRG $111DC
  $B1DE: a2 18       ldx #$18    ; PRG $111DE
  $B1E0: a9 10       lda #$10    ; PRG $111E0
  $B1E2: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $111E2
  $B1E5: 18          clc    ; PRG $111E5
  $B1E6: a5 10       lda $10    ; PRG $111E6
  $B1E8: 69 90       adc #$90    ; PRG $111E8
  $B1EA: a0 fc       ldy #$fc    ; PRG $111EA
  $B1EC: 91 06       sta ($06),y    ; PRG $111EC
  $B1EE: a5 11       lda $11    ; PRG $111EE
  $B1F0: 69 6c       adc #$6c    ; PRG $111F0
  $B1F2: c8          iny    ; PRG $111F2
  $B1F3: 91 06       sta ($06),y    ; PRG $111F3
  $B1F5: a9 18       lda #$18    ; PRG $111F5
  $B1F7: 85 18       sta $18    ; PRG $111F7
  $B1F9: 86 19       stx $19    ; PRG $111F9
  $B1FB: c8          iny    ; PRG $111FB
  $B1FC: b1 06       lda ($06),y    ; PRG $111FC
  $B1FE: 85 14       sta $14    ; PRG $111FE
  $B200: c8          iny    ; PRG $11200
  $B201: b1 06       lda ($06),y    ; PRG $11201
  $B203: 85 15       sta $15    ; PRG $11203
  $B205: a0 14       ldy #$14    ; PRG $11205
  $B207: a2 18       ldx #$18    ; PRG $11207
  $B209: a9 10       lda #$10    ; PRG $11209
  $B20B: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1120B
  $B20E: 18          clc    ; PRG $1120E
  $B20F: a5 10       lda $10    ; PRG $1120F
  $B211: 69 a4       adc #$a4    ; PRG $11211
  $B213: 85 18       sta $18    ; PRG $11213
  $B215: a5 11       lda $11    ; PRG $11215
  $B217: 69 6a       adc #$6a    ; PRG $11217
  $B219: 85 19       sta $19    ; PRG $11219
  $B21B: a1 18       lda ($18,x)    ; PRG $1121B
  $B21D: d0 03       bne $b222    ; PRG $1121D
  $B21F: 4c b4 92    jmp $92b4    ; PRG $1121F
  $B222: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $11222
  $B225: cb 98 02    .db $cb $98 $02  -> vm $98CB argc 2    ; PRG $11225
  $B228: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $11228
  $B22B: 4b b2 02    .db $4b $b2 $02  -> vm $B24B argc 2    ; PRG $1122B
  $B22E: 48          pha    ; PRG $1122E
  $B22F: 48          pha    ; PRG $1122F
  $B230: a9 9c       lda #$9c    ; PRG $11230
  $B232: 48          pha    ; PRG $11232
  $B233: a9 4d       lda #$4d    ; PRG $11233
  $B235: 48          pha    ; PRG $11235
  $B236: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $11236
  $B239: 03 c0 06    .db $03 $c0 $06  -> vm $C003 argc 6    ; PRG $11239
  $B23C: a0 ff       ldy #$ff    ; PRG $1123C
  $B23E: b1 06       lda ($06),y    ; PRG $1123E
  $B240: 48          pha    ; PRG $11240
  $B241: 88          dey    ; PRG $11241
  $B242: b1 06       lda ($06),y    ; PRG $11242
  $B244: 48          pha    ; PRG $11244
  $B245: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $11245
  $B248: 5b 9a 04    .db $5b $9a $04  -> vm $9A5B argc 4    ; PRG $11248
  $B24B: a5 09       lda $09    ; PRG $1124B
  $B24D: 48          pha    ; PRG $1124D
  $B24E: a5 08       lda $08    ; PRG $1124E
  $B250: 48          pha    ; PRG $11250
  $B251: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $11251
  $B254: 6b d5 04    .db $6b $d5 $04  -> vm $D56B argc 4    ; PRG $11254
  $B257: 48          pha    ; PRG $11257
  $B258: 48          pha    ; PRG $11258
  $B259: a9 9c       lda #$9c    ; PRG $11259
  $B25B: 48          pha    ; PRG $1125B
  $B25C: a9 53       lda #$53    ; PRG $1125C
  $B25E: 48          pha    ; PRG $1125E
  $B25F: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1125F
  $B262: 03 c0 06    .db $03 $c0 $06  -> vm $C003 argc 6    ; PRG $11262
  $B265: a9 18       lda #$18    ; PRG $11265
  $B267: 85 18       sta $18    ; PRG $11267
  $B269: 86 19       stx $19    ; PRG $11269
  $B26B: a0 fe       ldy #$fe    ; PRG $1126B
  $B26D: b1 06       lda ($06),y    ; PRG $1126D
  $B26F: 85 14       sta $14    ; PRG $1126F
  $B271: c8          iny    ; PRG $11271
  $B272: b1 06       lda ($06),y    ; PRG $11272
  $B274: 85 15       sta $15    ; PRG $11274
  $B276: a0 14       ldy #$14    ; PRG $11276
  $B278: a2 18       ldx #$18    ; PRG $11278
  $B27A: a9 10       lda #$10    ; PRG $1127A
  $B27C: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1127C
  $B27F: 18          clc    ; PRG $1127F
  $B280: a5 10       lda $10    ; PRG $11280
  $B282: 69 a4       adc #$a4    ; PRG $11282
  $B284: 85 18       sta $18    ; PRG $11284
  $B286: a5 11       lda $11    ; PRG $11286
  $B288: 69 6a       adc #$6a    ; PRG $11288
  $B28A: 85 19       sta $19    ; PRG $1128A
  $B28C: a1 18       lda ($18,x)    ; PRG $1128C
  $B28E: 85 14       sta $14    ; PRG $1128E
  $B290: 86 15       stx $15    ; PRG $11290
  $B292: a5 15       lda $15    ; PRG $11292
  $B294: 48          pha    ; PRG $11294
  $B295: a5 14       lda $14    ; PRG $11295
  $B297: 48          pha    ; PRG $11297
  $B298: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $11298
  $B29B: 03 80 04    .db $03 $80 $04  -> vm $8003 argc 4    ; PRG $1129B
  $B29E: a0 fc       ldy #$fc    ; PRG $1129E
  $B2A0: b1 06       lda ($06),y    ; PRG $112A0
  $B2A2: 85 18       sta $18    ; PRG $112A2
  $B2A4: c8          iny    ; PRG $112A4
  $B2A5: b1 06       lda ($06),y    ; PRG $112A5
  $B2A7: 85 19       sta $19    ; PRG $112A7
  $B2A9: a9 bf       lda #$bf    ; PRG $112A9
  $B2AB: a0 06       ldy #$06    ; PRG $112AB
  $B2AD: 31 18       and ($18),y    ; PRG $112AD
  $B2AF: 91 18       sta ($18),y    ; PRG $112AF
  $B2B1: 4c c6 92    jmp $92c6    ; PRG $112B1

; ---- sub_8_12cd  [stub]  <- (entry: bytecode/OS via $E299)
nat_8_12c7: jsr $E299                    ; 8:B2C7  native-call prologue
            .db $00 $00 $00            ; inline: argcount $00, frame $0000
  $B2CD: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $112CD
  $B2D0: 04 99 02    .db $04 $99 $02  -> vm $9904 argc 2    ; PRG $112D0
  $B2D3: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $112D3
  $B2D6: 4b b2 02    .db $4b $b2 $02  -> vm $B24B argc 2    ; PRG $112D6
  $B2D9: ad 99 72    lda $7299    ; PRG $112D9
  $B2DC: 85 18       sta $18    ; PRG $112DC
  $B2DE: 86 19       stx $19    ; PRG $112DE
  $B2E0: a5 18       lda $18    ; PRG $112E0
  $B2E2: c9 01       cmp #$01    ; PRG $112E2
  $B2E4: d0 04       bne $b2ea    ; PRG $112E4
  $B2E6: a5 19       lda $19    ; PRG $112E6
  $B2E8: c9 00       cmp #$00    ; PRG $112E8
  $B2EA: f0 03       beq $b2ef    ; PRG $112EA
  $B2EC: 4c fe 92    jmp $92fe    ; PRG $112EC
  $B2EF: a9 9c       lda #$9c    ; PRG $112EF
  $B2F1: 48          pha    ; PRG $112F1
  $B2F2: a9 a3       lda #$a3    ; PRG $112F2
  $B2F4: 48          pha    ; PRG $112F4
  $B2F5: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $112F5
  $B2F8: f4 a3 04    .db $f4 $a3 $04  -> vm $A3F4 argc 4    ; PRG $112F8
  $B2FB: 4c 1c 93    jmp $931c    ; PRG $112FB

; ---- sub_8_1338  [stub]  <- (entry: bytecode/OS via $E299)
nat_8_1332: jsr $E299                    ; 8:B332  native-call prologue
            .db $00 $fc $ff            ; inline: argcount $00, frame $fffc
  $B338: a9 18       lda #$18    ; PRG $11338
  $B33A: 85 18       sta $18    ; PRG $1133A
  $B33C: 86 19       stx $19    ; PRG $1133C
  $B33E: a0 0b       ldy #$0b    ; PRG $1133E
  $B340: b1 04       lda ($04),y    ; PRG $11340
  $B342: 85 14       sta $14    ; PRG $11342
  $B344: 86 15       stx $15    ; PRG $11344
  $B346: a0 14       ldy #$14    ; PRG $11346
  $B348: a2 18       ldx #$18    ; PRG $11348
  $B34A: a9 10       lda #$10    ; PRG $1134A
  $B34C: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $1134C
  $B34F: 18          clc    ; PRG $1134F
  $B350: a5 10       lda $10    ; PRG $11350
  $B352: 69 a4       adc #$a4    ; PRG $11352
  $B354: a0 fc       ldy #$fc    ; PRG $11354
  $B356: 91 06       sta ($06),y    ; PRG $11356
  $B358: a5 11       lda $11    ; PRG $11358
  $B35A: 69 6a       adc #$6a    ; PRG $1135A
  $B35C: c8          iny    ; PRG $1135C
  $B35D: 91 06       sta ($06),y    ; PRG $1135D
  $B35F: a9 07       lda #$07    ; PRG $1135F
  $B361: 85 18       sta $18    ; PRG $11361
  $B363: 86 19       stx $19    ; PRG $11363
  $B365: a0 0b       ldy #$0b    ; PRG $11365
  $B367: b1 04       lda ($04),y    ; PRG $11367
  $B369: 85 14       sta $14    ; PRG $11369
  $B36B: 86 15       stx $15    ; PRG $1136B
  $B36D: a0 14       ldy #$14    ; PRG $1136D
  $B36F: a2 18       ldx #$18    ; PRG $1136F
  $B371: a9 10       lda #$10    ; PRG $11371
  $B373: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $11373
  $B376: 18          clc    ; PRG $11376
  $B377: a5 10       lda $10    ; PRG $11377
  $B379: 69 90       adc #$90    ; PRG $11379
  $B37B: a0 fe       ldy #$fe    ; PRG $1137B
  $B37D: 91 06       sta ($06),y    ; PRG $1137D
  $B37F: a5 11       lda $11    ; PRG $1137F
  $B381: 69 6c       adc #$6c    ; PRG $11381
  $B383: c8          iny    ; PRG $11383
  $B384: 91 06       sta ($06),y    ; PRG $11384
  $B386: 88          dey    ; PRG $11386
  $B387: b1 06       lda ($06),y    ; PRG $11387
  $B389: 85 18       sta $18    ; PRG $11389
  $B38B: c8          iny    ; PRG $1138B
  $B38C: b1 06       lda ($06),y    ; PRG $1138C
  $B38E: 85 19       sta $19    ; PRG $1138E
  $B390: a2 18       ldx #$18    ; PRG $11390
  $B392: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $11392
  $B395: 48          pha    ; PRG $11395
  $B396: a9 03       lda #$03    ; PRG $11396
  $B398: 48          pha    ; PRG $11398
  $B399: a0 fe       ldy #$fe    ; PRG $11399
  $B39B: b1 06       lda ($06),y    ; PRG $1139B
  $B39D: 85 18       sta $18    ; PRG $1139D
  $B39F: c8          iny    ; PRG $1139F
  $B3A0: b1 06       lda ($06),y    ; PRG $113A0
  $B3A2: 85 19       sta $19    ; PRG $113A2
  $B3A4: a1 18       lda ($18,x)    ; PRG $113A4
  $B3A6: 85 14       sta $14    ; PRG $113A6
  $B3A8: 86 15       stx $15    ; PRG $113A8
  $B3AA: a5 15       lda $15    ; PRG $113AA
  $B3AC: 48          pha    ; PRG $113AC
  $B3AD: a5 14       lda $14    ; PRG $113AD
  $B3AF: 48          pha    ; PRG $113AF
  $B3B0: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $113B0
  $B3B3: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $113B3
  $B3B6: a2 18       ldx #$18    ; PRG $113B6
  $B3B8: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $113B8
  $B3BB: 38          sec    ; PRG $113BB
  $B3BC: a1 18       lda ($18,x)    ; PRG $113BC
  $B3BE: e5 08       sbc $08    ; PRG $113BE
  $B3C0: 81 18       sta ($18,x)    ; PRG $113C0
  $B3C2: a0 fe       ldy #$fe    ; PRG $113C2
  $B3C4: b1 06       lda ($06),y    ; PRG $113C4
  $B3C6: 85 18       sta $18    ; PRG $113C6
  $B3C8: c8          iny    ; PRG $113C8
  $B3C9: b1 06       lda ($06),y    ; PRG $113C9
  $B3CB: 85 19       sta $19    ; PRG $113CB
  $B3CD: a2 18       ldx #$18    ; PRG $113CD
  $B3CF: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $113CF
  $B3D2: 48          pha    ; PRG $113D2
  $B3D3: a9 03       lda #$03    ; PRG $113D3
  $B3D5: 48          pha    ; PRG $113D5
  $B3D6: a0 fe       ldy #$fe    ; PRG $113D6
  $B3D8: b1 06       lda ($06),y    ; PRG $113D8
  $B3DA: 85 18       sta $18    ; PRG $113DA
  $B3DC: c8          iny    ; PRG $113DC
  $B3DD: b1 06       lda ($06),y    ; PRG $113DD
  $B3DF: 85 19       sta $19    ; PRG $113DF
  $B3E1: a0 01       ldy #$01    ; PRG $113E1
  $B3E3: b1 18       lda ($18),y    ; PRG $113E3
  $B3E5: 85 14       sta $14    ; PRG $113E5
  $B3E7: 86 15       stx $15    ; PRG $113E7
  $B3E9: a5 15       lda $15    ; PRG $113E9
  $B3EB: 48          pha    ; PRG $113EB
  $B3EC: a5 14       lda $14    ; PRG $113EC
  $B3EE: 48          pha    ; PRG $113EE
  $B3EF: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $113EF
  $B3F2: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $113F2
  $B3F5: a2 18       ldx #$18    ; PRG $113F5
  $B3F7: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $113F7
  $B3FA: 38          sec    ; PRG $113FA
  $B3FB: b1 18       lda ($18),y    ; PRG $113FB
  $B3FD: e5 08       sbc $08    ; PRG $113FD
  $B3FF: 91 18       sta ($18),y    ; PRG $113FF
  $B401: a0 fe       ldy #$fe    ; PRG $11401
  $B403: b1 06       lda ($06),y    ; PRG $11403
  $B405: 85 18       sta $18    ; PRG $11405
  $B407: c8          iny    ; PRG $11407
  $B408: b1 06       lda ($06),y    ; PRG $11408
  $B40A: 85 19       sta $19    ; PRG $1140A
  $B40C: a2 18       ldx #$18    ; PRG $1140C
  $B40E: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $1140E
  $B411: 48          pha    ; PRG $11411
  $B412: a9 03       lda #$03    ; PRG $11412
  $B414: 48          pha    ; PRG $11414
  $B415: a0 fe       ldy #$fe    ; PRG $11415
  $B417: b1 06       lda ($06),y    ; PRG $11417
  $B419: 85 18       sta $18    ; PRG $11419
  $B41B: c8          iny    ; PRG $1141B
  $B41C: b1 06       lda ($06),y    ; PRG $1141C
  $B41E: 85 19       sta $19    ; PRG $1141E
  $B420: a0 02       ldy #$02    ; PRG $11420
  $B422: b1 18       lda ($18),y    ; PRG $11422
  $B424: 85 14       sta $14    ; PRG $11424
  $B426: 86 15       stx $15    ; PRG $11426
  $B428: a5 15       lda $15    ; PRG $11428
  $B42A: 48          pha    ; PRG $1142A
  $B42B: a5 14       lda $14    ; PRG $1142B
  $B42D: 48          pha    ; PRG $1142D
  $B42E: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1142E
  $B431: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $11431
  $B434: a2 18       ldx #$18    ; PRG $11434
  $B436: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $11436
  $B439: 38          sec    ; PRG $11439
  $B43A: c8          iny    ; PRG $1143A
  $B43B: b1 18       lda ($18),y    ; PRG $1143B
  $B43D: e5 08       sbc $08    ; PRG $1143D
  $B43F: 91 18       sta ($18),y    ; PRG $1143F
  $B441: a0 fe       ldy #$fe    ; PRG $11441
  $B443: b1 06       lda ($06),y    ; PRG $11443
  $B445: 85 18       sta $18    ; PRG $11445
  $B447: c8          iny    ; PRG $11447
  $B448: b1 06       lda ($06),y    ; PRG $11448
  $B44A: 85 19       sta $19    ; PRG $1144A
  $B44C: a2 18       ldx #$18    ; PRG $1144C
  $B44E: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $1144E
  $B451: 48          pha    ; PRG $11451
  $B452: a9 02       lda #$02    ; PRG $11452
  $B454: 48          pha    ; PRG $11454
  $B455: a0 fe       ldy #$fe    ; PRG $11455
  $B457: b1 06       lda ($06),y    ; PRG $11457
  $B459: 85 18       sta $18    ; PRG $11459
  $B45B: c8          iny    ; PRG $1145B
  $B45C: b1 06       lda ($06),y    ; PRG $1145C
  $B45E: 85 19       sta $19    ; PRG $1145E
  $B460: a0 05       ldy #$05    ; PRG $11460
  $B462: b1 18       lda ($18),y    ; PRG $11462
  $B464: 48          pha    ; PRG $11464
  $B465: 88          dey    ; PRG $11465
  $B466: b1 18       lda ($18),y    ; PRG $11466
  $B468: 48          pha    ; PRG $11468
  $B469: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $11469
  $B46C: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $1146C
  $B46F: a2 18       ldx #$18    ; PRG $1146F
  $B471: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $11471
  $B474: 38          sec    ; PRG $11474
  $B475: a0 04       ldy #$04    ; PRG $11475
  $B477: b1 18       lda ($18),y    ; PRG $11477
  $B479: e5 08       sbc $08    ; PRG $11479
  $B47B: 91 18       sta ($18),y    ; PRG $1147B
  $B47D: c8          iny    ; PRG $1147D
  $B47E: b1 18       lda ($18),y    ; PRG $1147E
  $B480: e5 09       sbc $09    ; PRG $11480
  $B482: 91 18       sta ($18),y    ; PRG $11482
  $B484: a0 fe       ldy #$fe    ; PRG $11484
  $B486: b1 06       lda ($06),y    ; PRG $11486
  $B488: 85 18       sta $18    ; PRG $11488
  $B48A: c8          iny    ; PRG $1148A
  $B48B: b1 06       lda ($06),y    ; PRG $1148B
  $B48D: 85 19       sta $19    ; PRG $1148D
  $B48F: a1 18       lda ($18,x)    ; PRG $1148F
  $B491: d0 03       bne $b496    ; PRG $11491
  $B493: 4c b6 94    jmp $94b6    ; PRG $11493
  $B496: 88          dey    ; PRG $11496
  $B497: b1 06       lda ($06),y    ; PRG $11497
  $B499: 85 18       sta $18    ; PRG $11499
  $B49B: c8          iny    ; PRG $1149B
  $B49C: b1 06       lda ($06),y    ; PRG $1149C
  $B49E: 85 19       sta $19    ; PRG $1149E
  $B4A0: a0 04       ldy #$04    ; PRG $114A0
  $B4A2: b1 18       lda ($18),y    ; PRG $114A2
  $B4A4: c9 05       cmp #$05    ; PRG $114A4
  $B4A6: c8          iny    ; PRG $114A6
  $B4A7: b1 18       lda ($18),y    ; PRG $114A7
  $B4A9: e9 00       sbc #$00    ; PRG $114A9
  $B4AB: 70 04       bvs $b4b1    ; PRG $114AB
  $B4AD: 30 07       bmi $b4b6    ; PRG $114AD
  $B4AF: 10 02       bpl $b4b3    ; PRG $114AF
  $B4B1: 10 03       bpl $b4b6    ; PRG $114B1
  $B4B3: 4c 5f 95    jmp $955f    ; PRG $114B3
  $B4B6: a0 fc       ldy #$fc    ; PRG $114B6
  $B4B8: b1 06       lda ($06),y    ; PRG $114B8
  $B4BA: 85 18       sta $18    ; PRG $114BA
  $B4BC: c8          iny    ; PRG $114BC
  $B4BD: b1 06       lda ($06),y    ; PRG $114BD
  $B4BF: 85 19       sta $19    ; PRG $114BF
  $B4C1: a1 18       lda ($18,x)    ; PRG $114C1
  $B4C3: d0 03       bne $b4c8    ; PRG $114C3
  $B4C5: 4c 5a 95    jmp $955a    ; PRG $114C5
  $B4C8: ee 9b 72    inc $729b    ; PRG $114C8
  $B4CB: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $114CB
  $B4CE: 70 b5 02    .db $70 $b5 $02  -> vm $B570 argc 2    ; PRG $114CE
  $B4D1: 48          pha    ; PRG $114D1
  $B4D2: 48          pha    ; PRG $114D2
  $B4D3: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $114D3
  $B4D6: 91 d7 02    .db $91 $d7 $02  -> vm $D791 argc 2    ; PRG $114D6
  $B4D9: a5 09       lda $09    ; PRG $114D9
  $B4DB: 48          pha    ; PRG $114DB
  $B4DC: a5 08       lda $08    ; PRG $114DC
  $B4DE: 48          pha    ; PRG $114DE
  $B4DF: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $114DF
  $B4E2: b1 b2 06    .db $b1 $b2 $06  -> vm $B2B1 argc 6    ; PRG $114E2
  $B4E5: 48          pha    ; PRG $114E5
  $B4E6: 48          pha    ; PRG $114E6
  $B4E7: a9 9d       lda #$9d    ; PRG $114E7
  $B4E9: 48          pha    ; PRG $114E9
  $B4EA: a9 03       lda #$03    ; PRG $114EA
  $B4EC: 48          pha    ; PRG $114EC
  $B4ED: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $114ED
  $B4F0: 03 c0 06    .db $03 $c0 $06  -> vm $C003 argc 6    ; PRG $114F0
  $B4F3: a0 0b       ldy #$0b    ; PRG $114F3
  $B4F5: b1 04       lda ($04),y    ; PRG $114F5
  $B4F7: 85 18       sta $18    ; PRG $114F7
  $B4F9: 86 19       stx $19    ; PRG $114F9
  $B4FB: a5 19       lda $19    ; PRG $114FB
  $B4FD: 48          pha    ; PRG $114FD
  $B4FE: a5 18       lda $18    ; PRG $114FE
  $B500: 48          pha    ; PRG $11500
  $B501: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $11501
  $B504: 5b 9a 04    .db $5b $9a $04  -> vm $9A5B argc 4    ; PRG $11504
  $B507: a5 09       lda $09    ; PRG $11507
  $B509: 48          pha    ; PRG $11509
  $B50A: a5 08       lda $08    ; PRG $1150A
  $B50C: 48          pha    ; PRG $1150C
  $B50D: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1150D
  $B510: 6b d5 04    .db $6b $d5 $04  -> vm $D56B argc 4    ; PRG $11510
  $B513: 48          pha    ; PRG $11513
  $B514: 48          pha    ; PRG $11514
  $B515: a9 9d       lda #$9d    ; PRG $11515
  $B517: 48          pha    ; PRG $11517
  $B518: a9 09       lda #$09    ; PRG $11518
  $B51A: 48          pha    ; PRG $1151A
  $B51B: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1151B
  $B51E: 03 c0 06    .db $03 $c0 $06  -> vm $C003 argc 6    ; PRG $1151E
  $B521: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $11521
  $B524: e5 b5 02    .db $e5 $b5 $02  -> vm $B5E5 argc 2    ; PRG $11524
  $B527: a0 fc       ldy #$fc    ; PRG $11527
  $B529: b1 06       lda ($06),y    ; PRG $11529
  $B52B: 85 18       sta $18    ; PRG $1152B
  $B52D: c8          iny    ; PRG $1152D
  $B52E: b1 06       lda ($06),y    ; PRG $1152E
  $B530: 85 19       sta $19    ; PRG $11530
  $B532: a1 18       lda ($18,x)    ; PRG $11532
  $B534: 85 14       sta $14    ; PRG $11534
  $B536: 86 15       stx $15    ; PRG $11536
  $B538: a5 15       lda $15    ; PRG $11538
  $B53A: 48          pha    ; PRG $1153A
  $B53B: a5 14       lda $14    ; PRG $1153B
  $B53D: 48          pha    ; PRG $1153D
  $B53E: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1153E
  $B541: 03 80 04    .db $03 $80 $04  -> vm $8003 argc 4    ; PRG $11541
  $B544: a0 fe       ldy #$fe    ; PRG $11544
  $B546: b1 06       lda ($06),y    ; PRG $11546
  $B548: 85 18       sta $18    ; PRG $11548
  $B54A: c8          iny    ; PRG $1154A
  $B54B: b1 06       lda ($06),y    ; PRG $1154B
  $B54D: 85 19       sta $19    ; PRG $1154D
  $B54F: a9 bf       lda #$bf    ; PRG $1154F
  $B551: a0 06       ldy #$06    ; PRG $11551
  $B553: 31 18       and ($18),y    ; PRG $11553
  $B555: 91 18       sta ($18),y    ; PRG $11555
  $B557: 4c 5f 95    jmp $955f    ; PRG $11557

; ---- sub_8_1566  [stub]  <- (entry: bytecode/OS via $E299)
nat_8_1560: jsr $E299                    ; 8:B560  native-call prologue
            .db $00 $f5 $ff            ; inline: argcount $00, frame $fff5
  $B566: 18          clc    ; PRG $11566
  $B567: a9 f7       lda #$f7    ; PRG $11567
  $B569: 65 06       adc $06    ; PRG $11569
  $B56B: 85 18       sta $18    ; PRG $1156B
  $B56D: 8a          txa    ; PRG $1156D
  $B56E: 65 07       adc $07    ; PRG $1156E
  $B570: 85 19       sta $19    ; PRG $11570
  $B572: a5 19       lda $19    ; PRG $11572
  $B574: 48          pha    ; PRG $11574
  $B575: a5 18       lda $18    ; PRG $11575
  $B577: 48          pha    ; PRG $11577
  $B578: 8a          txa    ; PRG $11578
  $B579: 48          pha    ; PRG $11579
  $B57A: 48          pha    ; PRG $1157A
  $B57B: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1157B
  $B57E: 26 d0 06    .db $26 $d0 $06  -> vm $D026 argc 6    ; PRG $1157E
  $B581: a5 08       lda $08    ; PRG $11581
  $B583: a0 f5       ldy #$f5    ; PRG $11583
  $B585: 91 06       sta ($06),y    ; PRG $11585
  $B587: a5 09       lda $09    ; PRG $11587
  $B589: c8          iny    ; PRG $11589
  $B58A: 91 06       sta ($06),y    ; PRG $1158A
  $B58C: 18          clc    ; PRG $1158C
  $B58D: a9 f7       lda #$f7    ; PRG $1158D
  $B58F: 65 06       adc $06    ; PRG $1158F
  $B591: 85 18       sta $18    ; PRG $11591
  $B593: 8a          txa    ; PRG $11593
  $B594: 65 07       adc $07    ; PRG $11594
  $B596: 85 19       sta $19    ; PRG $11596
  $B598: a5 18       lda $18    ; PRG $11598
  $B59A: a0 fe       ldy #$fe    ; PRG $1159A
  $B59C: 91 06       sta ($06),y    ; PRG $1159C
  $B59E: a5 19       lda $19    ; PRG $1159E
  $B5A0: c8          iny    ; PRG $115A0
  $B5A1: 91 06       sta ($06),y    ; PRG $115A1
  $B5A3: 18          clc    ; PRG $115A3
  $B5A4: a5 18       lda $18    ; PRG $115A4
  $B5A6: a0 f5       ldy #$f5    ; PRG $115A6
  $B5A8: 71 06       adc ($06),y    ; PRG $115A8
  $B5AA: a0 fc       ldy #$fc    ; PRG $115AA
  $B5AC: 91 06       sta ($06),y    ; PRG $115AC
  $B5AE: a5 19       lda $19    ; PRG $115AE
  $B5B0: a0 f6       ldy #$f6    ; PRG $115B0
  $B5B2: 71 06       adc ($06),y    ; PRG $115B2
  $B5B4: a0 fd       ldy #$fd    ; PRG $115B4
  $B5B6: 91 06       sta ($06),y    ; PRG $115B6
  $B5B8: 4c ca 95    jmp $95ca    ; PRG $115B8

; ---- sub_8_1658  [stub]  <- (entry: bytecode/OS via $E299)
nat_8_1652: jsr $E299                    ; 8:B652  native-call prologue
            .db $00 $ef $ff            ; inline: argcount $00, frame $ffef
  $B658: ad 99 72    lda $7299    ; PRG $11658
  $B65B: 85 18       sta $18    ; PRG $1165B
  $B65D: 86 19       stx $19    ; PRG $1165D
  $B65F: a5 18       lda $18    ; PRG $1165F
  $B661: c9 01       cmp #$01    ; PRG $11661
  $B663: d0 04       bne $b669    ; PRG $11663
  $B665: a5 19       lda $19    ; PRG $11665
  $B667: c9 00       cmp #$00    ; PRG $11667
  $B669: f0 03       beq $b66e    ; PRG $11669
  $B66B: 4c 96 96    jmp $9696   ; combat_96    ; PRG $1166B
  $B66E: a9 0a       lda #$0a    ; PRG $1166E
  $B670: 85 18       sta $18    ; PRG $11670
  $B672: 86 19       stx $19    ; PRG $11672
  $B674: ad 9a 72    lda $729a    ; PRG $11674
  $B677: 85 14       sta $14    ; PRG $11677
  $B679: 86 15       stx $15    ; PRG $11679
  $B67B: a0 14       ldy #$14    ; PRG $1167B
  $B67D: a2 18       ldx #$18    ; PRG $1167D
  $B67F: a9 10       lda #$10    ; PRG $1167F
  $B681: 20 eb e1    jsr $e1eb   ; alu_udiv16    ; PRG $11681
  $B684: a5 10       lda $10    ; PRG $11684
  $B686: 05 11       ora $11    ; PRG $11686
  $B688: f0 03       beq $b68d    ; PRG $11688
  $B68A: 4c 93 96    jmp $9693    ; PRG $1168A
  $B68D: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $1168D
  $B690: 60 95 02    .db $60 $95 $02  -> vm $9560 argc 2    ; PRG $11690
  $B693: 4c ca 98    jmp $98ca    ; PRG $11693
