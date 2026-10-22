; ============================================================================
; Uncharted Waters - bank 1 NATIVE disassembly (window base $A000)
; 1 native subs: 1 $E299-stubbed (VM-frame entries) + 0 plain + 0 jumptable/CALL-recovered
; coverage: 348B code+inline (4%) + 501B $FF-pad + 7343B data
; control-flow-followed, inline bridges ($E299/$E338) skipped; calls resolved vs mesen-labels.toml.
; ============================================================================
.base $A000

; ---- sub_1_1678  [stub]  <- (entry: bytecode/OS via $E299)
nat_1_1672: jsr $E299                    ; 1:B672  native-call prologue
            .db $00 $f8 $ff            ; inline: argcount $00, frame $fff8
  $B678: a0 fe       ldy #$fe    ; PRG $03678
  $B67A: 91 06       sta ($06),y    ; PRG $0367A
  $B67C: c8          iny    ; PRG $0367C
  $B67D: 91 06       sta ($06),y    ; PRG $0367D
  $B67F: a0 fc       ldy #$fc    ; PRG $0367F
  $B681: 91 06       sta ($06),y    ; PRG $03681
  $B683: c8          iny    ; PRG $03683
  $B684: 91 06       sta ($06),y    ; PRG $03684
  $B686: 4c 98 b6    jmp $b698    ; PRG $03686
  $B689: 18          clc    ; PRG $03689
  $B68A: a9 01       lda #$01    ; PRG $0368A
  $B68C: a0 fe       ldy #$fe    ; PRG $0368C
  $B68E: 71 06       adc ($06),y    ; PRG $0368E
  $B690: 91 06       sta ($06),y    ; PRG $03690
  $B692: 8a          txa    ; PRG $03692
  $B693: c8          iny    ; PRG $03693
  $B694: 71 06       adc ($06),y    ; PRG $03694
  $B696: 91 06       sta ($06),y    ; PRG $03696
  $B698: a0 fe       ldy #$fe    ; PRG $03698
  $B69A: b1 06       lda ($06),y    ; PRG $0369A
  $B69C: c9 08       cmp #$08    ; PRG $0369C
  $B69E: c8          iny    ; PRG $0369E
  $B69F: b1 06       lda ($06),y    ; PRG $0369F
  $B6A1: e9 00       sbc #$00    ; PRG $036A1
  $B6A3: 90 03       bcc $b6a8    ; PRG $036A3
  $B6A5: 4c c2 b7    jmp $b7c2    ; PRG $036A5
  $B6A8: a9 02       lda #$02    ; PRG $036A8
  $B6AA: 85 18       sta $18    ; PRG $036AA
  $B6AC: 86 19       stx $19    ; PRG $036AC
  $B6AE: 88          dey    ; PRG $036AE
  $B6AF: b1 06       lda ($06),y    ; PRG $036AF
  $B6B1: 85 14       sta $14    ; PRG $036B1
  $B6B3: c8          iny    ; PRG $036B3
  $B6B4: b1 06       lda ($06),y    ; PRG $036B4
  $B6B6: 85 15       sta $15    ; PRG $036B6
  $B6B8: a0 14       ldy #$14    ; PRG $036B8
  $B6BA: a2 18       ldx #$18    ; PRG $036BA
  $B6BC: a9 10       lda #$10    ; PRG $036BC
  $B6BE: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $036BE
  $B6C1: 18          clc    ; PRG $036C1
  $B6C2: a5 10       lda $10    ; PRG $036C2
  $B6C4: 69 85       adc #$85    ; PRG $036C4
  $B6C6: 85 18       sta $18    ; PRG $036C6
  $B6C8: a5 11       lda $11    ; PRG $036C8
  $B6CA: 69 70       adc #$70    ; PRG $036CA
  $B6CC: 85 19       sta $19    ; PRG $036CC
  $B6CE: 18          clc    ; PRG $036CE
  $B6CF: a1 18       lda ($18,x)    ; PRG $036CF
  $B6D1: a0 0b       ldy #$0b    ; PRG $036D1
  $B6D3: 71 04       adc ($04),y    ; PRG $036D3
  $B6D5: a0 fa       ldy #$fa    ; PRG $036D5
  $B6D7: 91 06       sta ($06),y    ; PRG $036D7
  $B6D9: a0 01       ldy #$01    ; PRG $036D9
  $B6DB: b1 18       lda ($18),y    ; PRG $036DB
  $B6DD: a0 0c       ldy #$0c    ; PRG $036DD
  $B6DF: 71 04       adc ($04),y    ; PRG $036DF
  $B6E1: a0 fb       ldy #$fb    ; PRG $036E1
  $B6E3: 91 06       sta ($06),y    ; PRG $036E3
  $B6E5: a9 02       lda #$02    ; PRG $036E5
  $B6E7: 85 18       sta $18    ; PRG $036E7
  $B6E9: 86 19       stx $19    ; PRG $036E9
  $B6EB: a0 fe       ldy #$fe    ; PRG $036EB
  $B6ED: b1 06       lda ($06),y    ; PRG $036ED
  $B6EF: 85 14       sta $14    ; PRG $036EF
  $B6F1: c8          iny    ; PRG $036F1
  $B6F2: b1 06       lda ($06),y    ; PRG $036F2
  $B6F4: 85 15       sta $15    ; PRG $036F4
  $B6F6: a0 14       ldy #$14    ; PRG $036F6
  $B6F8: a2 18       ldx #$18    ; PRG $036F8
  $B6FA: a9 10       lda #$10    ; PRG $036FA
  $B6FC: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $036FC
  $B6FF: 18          clc    ; PRG $036FF
  $B700: a5 10       lda $10    ; PRG $03700
  $B702: 69 87       adc #$87    ; PRG $03702
  $B704: 85 18       sta $18    ; PRG $03704
  $B706: a5 11       lda $11    ; PRG $03706
  $B708: 69 70       adc #$70    ; PRG $03708
  $B70A: 85 19       sta $19    ; PRG $0370A
  $B70C: 18          clc    ; PRG $0370C
  $B70D: a1 18       lda ($18,x)    ; PRG $0370D
  $B70F: a0 0d       ldy #$0d    ; PRG $0370F
  $B711: 71 04       adc ($04),y    ; PRG $03711
  $B713: a0 f8       ldy #$f8    ; PRG $03713
  $B715: 91 06       sta ($06),y    ; PRG $03715
  $B717: a0 01       ldy #$01    ; PRG $03717
  $B719: b1 18       lda ($18),y    ; PRG $03719
  $B71B: a0 0e       ldy #$0e    ; PRG $0371B
  $B71D: 71 04       adc ($04),y    ; PRG $0371D
  $B71F: a0 f9       ldy #$f9    ; PRG $0371F
  $B721: 91 06       sta ($06),y    ; PRG $03721
  $B723: a0 fb       ldy #$fb    ; PRG $03723
  $B725: b1 06       lda ($06),y    ; PRG $03725
  $B727: 10 03       bpl $b72c    ; PRG $03727
  $B729: 4c bf b7    jmp $b7bf    ; PRG $03729
  $B72C: a9 0d       lda #$0d    ; PRG $0372C
  $B72E: 88          dey    ; PRG $0372E
  $B72F: d1 06       cmp ($06),y    ; PRG $0372F
  $B731: 8a          txa    ; PRG $03731
  $B732: c8          iny    ; PRG $03732
  $B733: f1 06       sbc ($06),y    ; PRG $03733
  $B735: 70 04       bvs $b73b    ; PRG $03735
  $B737: 30 04       bmi $b73d    ; PRG $03737
  $B739: 10 05       bpl $b740    ; PRG $03739
  $B73B: 30 03       bmi $b740    ; PRG $0373B
  $B73D: 4c bf b7    jmp $b7bf    ; PRG $0373D
  $B740: a0 f9       ldy #$f9    ; PRG $03740
  $B742: b1 06       lda ($06),y    ; PRG $03742
  $B744: 10 03       bpl $b749    ; PRG $03744
  $B746: 4c bf b7    jmp $b7bf    ; PRG $03746
  $B749: a9 0d       lda #$0d    ; PRG $03749
  $B74B: 88          dey    ; PRG $0374B
  $B74C: d1 06       cmp ($06),y    ; PRG $0374C
  $B74E: 8a          txa    ; PRG $0374E
  $B74F: c8          iny    ; PRG $0374F
  $B750: f1 06       sbc ($06),y    ; PRG $03750
  $B752: 70 04       bvs $b758    ; PRG $03752
  $B754: 30 04       bmi $b75a    ; PRG $03754
  $B756: 10 05       bpl $b75d    ; PRG $03756
  $B758: 30 03       bmi $b75d    ; PRG $03758
  $B75A: 4c bf b7    jmp $b7bf    ; PRG $0375A
  $B75D: b1 06       lda ($06),y    ; PRG $0375D
  $B75F: 48          pha    ; PRG $0375F
  $B760: 88          dey    ; PRG $03760
  $B761: b1 06       lda ($06),y    ; PRG $03761
  $B763: 48          pha    ; PRG $03763
  $B764: a0 fb       ldy #$fb    ; PRG $03764
  $B766: b1 06       lda ($06),y    ; PRG $03766
  $B768: 48          pha    ; PRG $03768
  $B769: 88          dey    ; PRG $03769
  $B76A: b1 06       lda ($06),y    ; PRG $0376A
  $B76C: 48          pha    ; PRG $0376C
  $B76D: ad 7b 73    lda $737b    ; PRG $0376D
  $B770: 85 18       sta $18    ; PRG $03770
  $B772: 86 19       stx $19    ; PRG $03772
  $B774: a5 19       lda $19    ; PRG $03774
  $B776: 48          pha    ; PRG $03776
  $B777: a5 18       lda $18    ; PRG $03777
  $B779: 48          pha    ; PRG $03779
  $B77A: ad 7a 73    lda $737a    ; PRG $0377A
  $B77D: 85 18       sta $18    ; PRG $0377D
  $B77F: 86 19       stx $19    ; PRG $0377F
  $B781: a5 19       lda $19    ; PRG $03781
  $B783: 48          pha    ; PRG $03783
  $B784: a5 18       lda $18    ; PRG $03784
  $B786: 48          pha    ; PRG $03786
  $B787: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $03787
  $B78A: 05 d4 0a    .db $05 $d4 $0a  -> vm $D405 argc 10    ; PRG $0378A
  $B78D: a5 08       lda $08    ; PRG $0378D
  $B78F: 05 09       ora $09    ; PRG $0378F
  $B791: d0 03       bne $b796    ; PRG $03791
  $B793: 4c bf b7    jmp $b7bf    ; PRG $03793
  $B796: 18          clc    ; PRG $03796
  $B797: a0 0f       ldy #$0f    ; PRG $03797
  $B799: b1 04       lda ($04),y    ; PRG $03799
  $B79B: a0 fc       ldy #$fc    ; PRG $0379B
  $B79D: 71 06       adc ($06),y    ; PRG $0379D
  $B79F: 85 18       sta $18    ; PRG $0379F
  $B7A1: a0 10       ldy #$10    ; PRG $037A1
  $B7A3: b1 04       lda ($04),y    ; PRG $037A3
  $B7A5: a0 fd       ldy #$fd    ; PRG $037A5
  $B7A7: 71 06       adc ($06),y    ; PRG $037A7
  $B7A9: 85 19       sta $19    ; PRG $037A9
  $B7AB: c8          iny    ; PRG $037AB
  $B7AC: b1 06       lda ($06),y    ; PRG $037AC
  $B7AE: 81 18       sta ($18,x)    ; PRG $037AE
  $B7B0: 18          clc    ; PRG $037B0
  $B7B1: a9 01       lda #$01    ; PRG $037B1
  $B7B3: a0 fc       ldy #$fc    ; PRG $037B3
  $B7B5: 71 06       adc ($06),y    ; PRG $037B5
  $B7B7: 91 06       sta ($06),y    ; PRG $037B7
  $B7B9: 8a          txa    ; PRG $037B9
  $B7BA: c8          iny    ; PRG $037BA
  $B7BB: 71 06       adc ($06),y    ; PRG $037BB
  $B7BD: 91 06       sta ($06),y    ; PRG $037BD
  $B7BF: 4c 89 b6    jmp $b689    ; PRG $037BF
  $B7C2: a0 fc       ldy #$fc    ; PRG $037C2
  $B7C4: b1 06       lda ($06),y    ; PRG $037C4
  $B7C6: 85 08       sta $08    ; PRG $037C6
  $B7C8: c8          iny    ; PRG $037C8
  $B7C9: b1 06       lda ($06),y    ; PRG $037C9
  $B7CB: 85 09       sta $09    ; PRG $037CB
  $B7CD: 60          rts    ; PRG $037CD
