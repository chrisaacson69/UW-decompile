; ============================================================================
; Uncharted Waters - bank 5 NATIVE disassembly (window base $8000)
; 7 native subs: 7 $E299-stubbed (VM-frame entries) + 0 plain + 0 jumptable/CALL-recovered
; coverage: 3513B code+inline (42%) + 1503B $FF-pad + 3176B data
; control-flow-followed, inline bridges ($E299/$E338) skipped; calls resolved vs mesen-labels.toml.
; ============================================================================
.base $8000

; ---- sub_5_0c7b  [stub]  <- (entry: bytecode/OS via $E299)
nat_5_0c75: jsr $E299                    ; 5:8C75  native-call prologue
            .db $00 $f6 $ff            ; inline: argcount $00, frame $fff6
  $8C7B: a0 0b       ldy #$0b    ; PRG $0AC7B
  $8C7D: b1 04       lda ($04),y    ; PRG $0AC7D
  $8C7F: c8          iny    ; PRG $0AC7F
  $8C80: 11 04       ora ($04),y    ; PRG $0AC80
  $8C82: d0 03       bne $8c87    ; PRG $0AC82
  $8C84: 4c 96 8c    jmp $8c96   ; enc_port_rec_b    ; PRG $0AC84
  $8C87: 18          clc    ; PRG $0AC87
  $8C88: a9 ff       lda #$ff    ; PRG $0AC88
  $8C8A: 88          dey    ; PRG $0AC8A
  $8C8B: 71 04       adc ($04),y    ; PRG $0AC8B
  $8C8D: 91 04       sta ($04),y    ; PRG $0AC8D
  $8C8F: a9 ff       lda #$ff    ; PRG $0AC8F
  $8C91: c8          iny    ; PRG $0AC91
  $8C92: 71 04       adc ($04),y    ; PRG $0AC92
  $8C94: 91 04       sta ($04),y    ; PRG $0AC94
  $8C96: a9 42       lda #$42    ; PRG $0AC96
  $8C98: a0 fc       ldy #$fc    ; PRG $0AC98
  $8C9A: 91 06       sta ($06),y    ; PRG $0AC9A
  $8C9C: a9 65       lda #$65    ; PRG $0AC9C
  $8C9E: c8          iny    ; PRG $0AC9E
  $8C9F: 91 06       sta ($06),y    ; PRG $0AC9F
  $8CA1: 18          clc    ; PRG $0ACA1
  $8CA2: a9 1f       lda #$1f    ; PRG $0ACA2
  $8CA4: 69 42       adc #$42    ; PRG $0ACA4
  $8CA6: a0 fa       ldy #$fa    ; PRG $0ACA6
  $8CA8: 91 06       sta ($06),y    ; PRG $0ACA8
  $8CAA: a9 01       lda #$01    ; PRG $0ACAA
  $8CAC: 69 65       adc #$65    ; PRG $0ACAC
  $8CAE: c8          iny    ; PRG $0ACAE
  $8CAF: 91 06       sta ($06),y    ; PRG $0ACAF
  $8CB1: 8a          txa    ; PRG $0ACB1
  $8CB2: a0 f6       ldy #$f6    ; PRG $0ACB2
  $8CB4: 91 06       sta ($06),y    ; PRG $0ACB4
  $8CB6: c8          iny    ; PRG $0ACB6
  $8CB7: 91 06       sta ($06),y    ; PRG $0ACB7
  $8CB9: a9 01       lda #$01    ; PRG $0ACB9
  $8CBB: 85 18       sta $18    ; PRG $0ACBB
  $8CBD: 86 19       stx $19    ; PRG $0ACBD
  $8CBF: a0 0b       ldy #$0b    ; PRG $0ACBF
  $8CC1: b1 04       lda ($04),y    ; PRG $0ACC1
  $8CC3: 85 14       sta $14    ; PRG $0ACC3
  $8CC5: c8          iny    ; PRG $0ACC5
  $8CC6: b1 04       lda ($04),y    ; PRG $0ACC6
  $8CC8: 85 15       sta $15    ; PRG $0ACC8
  $8CCA: a0 14       ldy #$14    ; PRG $0ACCA
  $8CCC: a2 18       ldx #$18    ; PRG $0ACCC
  $8CCE: a9 10       lda #$10    ; PRG $0ACCE
  $8CD0: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0ACD0
  $8CD3: 18          clc    ; PRG $0ACD3
  $8CD4: a5 10       lda $10    ; PRG $0ACD4
  $8CD6: 69 48       adc #$48    ; PRG $0ACD6
  $8CD8: 85 18       sta $18    ; PRG $0ACD8
  $8CDA: a5 11       lda $11    ; PRG $0ACDA
  $8CDC: 69 9a       adc #$9a    ; PRG $0ACDC
  $8CDE: 85 19       sta $19    ; PRG $0ACDE
  $8CE0: 84 14       sty $14    ; PRG $0ACE0
  $8CE2: 86 15       stx $15    ; PRG $0ACE2
  $8CE4: a2 18       ldx #$18    ; PRG $0ACE4
  $8CE6: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $0ACE6
  $8CE9: a2 14       ldx #$14    ; PRG $0ACE9
  $8CEB: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $0ACEB
  $8CEE: 48          pha    ; PRG $0ACEE
  $8CEF: a9 5a       lda #$5a    ; PRG $0ACEF
  $8CF1: 48          pha    ; PRG $0ACF1
  $8CF2: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0ACF2
  $8CF5: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $0ACF5
  $8CF8: a2 14       ldx #$14    ; PRG $0ACF8
  $8CFA: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $0ACFA
  $8CFD: a0 08       ldy #$08    ; PRG $0ACFD
  $8CFF: a2 14       ldx #$14    ; PRG $0ACFF
  $8D01: a9 18       lda #$18    ; PRG $0AD01
  $8D03: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0AD03
  $8D06: a2 14       ldx #$14    ; PRG $0AD06
  $8D08: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $0AD08
  $8D0B: 18          clc    ; PRG $0AD0B
  $8D0C: a5 18       lda $18    ; PRG $0AD0C
  $8D0E: 61 14       adc ($14,x)    ; PRG $0AD0E
  $8D10: 85 10       sta $10    ; PRG $0AD10
  $8D12: a5 19       lda $19    ; PRG $0AD12
  $8D14: 71 14       adc ($14),y    ; PRG $0AD14
  $8D16: 85 11       sta $11    ; PRG $0AD16
  $8D18: a5 11       lda $11    ; PRG $0AD18
  $8D1A: 48          pha    ; PRG $0AD1A
  $8D1B: a5 10       lda $10    ; PRG $0AD1B
  $8D1D: 48          pha    ; PRG $0AD1D
  $8D1E: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0AD1E
  $8D21: 26 d3 04    .db $26 $d3 $04  -> vm $D326 argc 4    ; PRG $0AD21
  $8D24: a5 08       lda $08    ; PRG $0AD24
  $8D26: a0 fe       ldy #$fe    ; PRG $0AD26
  $8D28: 91 06       sta ($06),y    ; PRG $0AD28
  $8D2A: a5 09       lda $09    ; PRG $0AD2A
  $8D2C: c8          iny    ; PRG $0AD2C
  $8D2D: 91 06       sta ($06),y    ; PRG $0AD2D
  $8D2F: a0 fc       ldy #$fc    ; PRG $0AD2F
  $8D31: b1 06       lda ($06),y    ; PRG $0AD31
  $8D33: a0 f8       ldy #$f8    ; PRG $0AD33
  $8D35: 91 06       sta ($06),y    ; PRG $0AD35
  $8D37: a0 fd       ldy #$fd    ; PRG $0AD37
  $8D39: b1 06       lda ($06),y    ; PRG $0AD39
  $8D3B: a0 f9       ldy #$f9    ; PRG $0AD3B
  $8D3D: 91 06       sta ($06),y    ; PRG $0AD3D
  $8D3F: 4c 51 8d    jmp $8d51    ; PRG $0AD3F
  $8D42: 18          clc    ; PRG $0AD42
  $8D43: a9 07       lda #$07    ; PRG $0AD43
  $8D45: a0 f8       ldy #$f8    ; PRG $0AD45
  $8D47: 71 06       adc ($06),y    ; PRG $0AD47
  $8D49: 91 06       sta ($06),y    ; PRG $0AD49
  $8D4B: 8a          txa    ; PRG $0AD4B
  $8D4C: c8          iny    ; PRG $0AD4C
  $8D4D: 71 06       adc ($06),y    ; PRG $0AD4D
  $8D4F: 91 06       sta ($06),y    ; PRG $0AD4F
  $8D51: a0 f8       ldy #$f8    ; PRG $0AD51
  $8D53: b1 06       lda ($06),y    ; PRG $0AD53
  $8D55: a0 fa       ldy #$fa    ; PRG $0AD55
  $8D57: d1 06       cmp ($06),y    ; PRG $0AD57
  $8D59: 88          dey    ; PRG $0AD59
  $8D5A: b1 06       lda ($06),y    ; PRG $0AD5A
  $8D5C: a0 fb       ldy #$fb    ; PRG $0AD5C
  $8D5E: f1 06       sbc ($06),y    ; PRG $0AD5E
  $8D60: 90 03       bcc $8d65    ; PRG $0AD60
  $8D62: 4c 95 8d    jmp $8d95    ; PRG $0AD62
  $8D65: a0 f8       ldy #$f8    ; PRG $0AD65
  $8D67: b1 06       lda ($06),y    ; PRG $0AD67
  $8D69: 85 18       sta $18    ; PRG $0AD69
  $8D6B: c8          iny    ; PRG $0AD6B
  $8D6C: b1 06       lda ($06),y    ; PRG $0AD6C
  $8D6E: 85 19       sta $19    ; PRG $0AD6E
  $8D70: a1 18       lda ($18,x)    ; PRG $0AD70
  $8D72: a0 fe       ldy #$fe    ; PRG $0AD72
  $8D74: d1 06       cmp ($06),y    ; PRG $0AD74
  $8D76: d0 08       bne $8d80    ; PRG $0AD76
  $8D78: a0 01       ldy #$01    ; PRG $0AD78
  $8D7A: b1 18       lda ($18),y    ; PRG $0AD7A
  $8D7C: a0 ff       ldy #$ff    ; PRG $0AD7C
  $8D7E: d1 06       cmp ($06),y    ; PRG $0AD7E
  $8D80: f0 03       beq $8d85    ; PRG $0AD80
  $8D82: 4c 92 8d    jmp $8d92    ; PRG $0AD82
  $8D85: a9 01       lda #$01    ; PRG $0AD85
  $8D87: a0 f6       ldy #$f6    ; PRG $0AD87
  $8D89: 91 06       sta ($06),y    ; PRG $0AD89
  $8D8B: 8a          txa    ; PRG $0AD8B
  $8D8C: c8          iny    ; PRG $0AD8C
  $8D8D: 91 06       sta ($06),y    ; PRG $0AD8D
  $8D8F: 4c 95 8d    jmp $8d95    ; PRG $0AD8F
  $8D92: 4c 42 8d    jmp $8d42    ; PRG $0AD92
  $8D95: a0 f6       ldy #$f6    ; PRG $0AD95
  $8D97: b1 06       lda ($06),y    ; PRG $0AD97
  $8D99: c8          iny    ; PRG $0AD99
  $8D9A: 11 06       ora ($06),y    ; PRG $0AD9A
  $8D9C: f0 03       beq $8da1    ; PRG $0AD9C
  $8D9E: 4c b1 8c    jmp $8cb1    ; PRG $0AD9E
  $8DA1: a0 0d       ldy #$0d    ; PRG $0ADA1
  $8DA3: b1 04       lda ($04),y    ; PRG $0ADA3
  $8DA5: 85 18       sta $18    ; PRG $0ADA5
  $8DA7: c8          iny    ; PRG $0ADA7
  $8DA8: b1 04       lda ($04),y    ; PRG $0ADA8
  $8DAA: 85 19       sta $19    ; PRG $0ADAA
  $8DAC: a0 fe       ldy #$fe    ; PRG $0ADAC
  $8DAE: b1 06       lda ($06),y    ; PRG $0ADAE
  $8DB0: 81 18       sta ($18,x)    ; PRG $0ADB0
  $8DB2: c8          iny    ; PRG $0ADB2
  $8DB3: b1 06       lda ($06),y    ; PRG $0ADB3
  $8DB5: a0 01       ldy #$01    ; PRG $0ADB5
  $8DB7: 91 18       sta ($18),y    ; PRG $0ADB7
  $8DB9: 60          rts    ; PRG $0ADB9

; ---- sub_5_0dc0  [stub]  <- (entry: bytecode/OS via $E299)
nat_5_0dba: jsr $E299                    ; 5:8DBA  native-call prologue
            .db $00 $fa $ff            ; inline: argcount $00, frame $fffa
  $8DC0: a0 fa       ldy #$fa    ; PRG $0ADC0
  $8DC2: 91 06       sta ($06),y    ; PRG $0ADC2
  $8DC4: c8          iny    ; PRG $0ADC4
  $8DC5: 91 06       sta ($06),y    ; PRG $0ADC5
  $8DC7: a9 03       lda #$03    ; PRG $0ADC7
  $8DC9: a0 fe       ldy #$fe    ; PRG $0ADC9
  $8DCB: 91 06       sta ($06),y    ; PRG $0ADCB
  $8DCD: 8a          txa    ; PRG $0ADCD
  $8DCE: c8          iny    ; PRG $0ADCE
  $8DCF: 91 06       sta ($06),y    ; PRG $0ADCF
  $8DD1: 4c e3 8d    jmp $8de3    ; PRG $0ADD1
  $8DD4: 18          clc    ; PRG $0ADD4
  $8DD5: a9 01       lda #$01    ; PRG $0ADD5
  $8DD7: a0 fe       ldy #$fe    ; PRG $0ADD7
  $8DD9: 71 06       adc ($06),y    ; PRG $0ADD9
  $8DDB: 91 06       sta ($06),y    ; PRG $0ADDB
  $8DDD: 8a          txa    ; PRG $0ADDD
  $8DDE: c8          iny    ; PRG $0ADDE
  $8DDF: 71 06       adc ($06),y    ; PRG $0ADDF
  $8DE1: 91 06       sta ($06),y    ; PRG $0ADE1
  $8DE3: a0 fe       ldy #$fe    ; PRG $0ADE3
  $8DE5: b1 06       lda ($06),y    ; PRG $0ADE5
  $8DE7: c9 32       cmp #$32    ; PRG $0ADE7
  $8DE9: c8          iny    ; PRG $0ADE9
  $8DEA: b1 06       lda ($06),y    ; PRG $0ADEA
  $8DEC: e9 00       sbc #$00    ; PRG $0ADEC
  $8DEE: 90 03       bcc $8df3    ; PRG $0ADEE
  $8DF0: 4c 45 8e    jmp $8e45    ; PRG $0ADF0
  $8DF3: 18          clc    ; PRG $0ADF3
  $8DF4: 88          dey    ; PRG $0ADF4
  $8DF5: b1 06       lda ($06),y    ; PRG $0ADF5
  $8DF7: 69 76       adc #$76    ; PRG $0ADF7
  $8DF9: 85 18       sta $18    ; PRG $0ADF9
  $8DFB: c8          iny    ; PRG $0ADFB
  $8DFC: b1 06       lda ($06),y    ; PRG $0ADFC
  $8DFE: 69 6f       adc #$6f    ; PRG $0ADFE
  $8E00: 85 19       sta $19    ; PRG $0AE00
  $8E02: a1 18       lda ($18,x)    ; PRG $0AE02
  $8E04: 85 14       sta $14    ; PRG $0AE04
  $8E06: 86 15       stx $15    ; PRG $0AE06
  $8E08: a9 03       lda #$03    ; PRG $0AE08
  $8E0A: 25 14       and $14    ; PRG $0AE0A
  $8E0C: 85 18       sta $18    ; PRG $0AE0C
  $8E0E: 8a          txa    ; PRG $0AE0E
  $8E0F: 85 19       sta $19    ; PRG $0AE0F
  $8E11: a5 18       lda $18    ; PRG $0AE11
  $8E13: a0 0b       ldy #$0b    ; PRG $0AE13
  $8E15: d1 04       cmp ($04),y    ; PRG $0AE15
  $8E17: d0 05       bne $8e1e    ; PRG $0AE17
  $8E19: a5 19       lda $19    ; PRG $0AE19
  $8E1B: c8          iny    ; PRG $0AE1B
  $8E1C: d1 04       cmp ($04),y    ; PRG $0AE1C
  $8E1E: f0 03       beq $8e23    ; PRG $0AE1E
  $8E20: 4c 42 8e    jmp $8e42    ; PRG $0AE20
  $8E23: 18          clc    ; PRG $0AE23
  $8E24: a9 01       lda #$01    ; PRG $0AE24
  $8E26: a0 fa       ldy #$fa    ; PRG $0AE26
  $8E28: 71 06       adc ($06),y    ; PRG $0AE28
  $8E2A: 91 06       sta ($06),y    ; PRG $0AE2A
  $8E2C: 8a          txa    ; PRG $0AE2C
  $8E2D: c8          iny    ; PRG $0AE2D
  $8E2E: 71 06       adc ($06),y    ; PRG $0AE2E
  $8E30: 91 06       sta ($06),y    ; PRG $0AE30
  $8E32: a0 fe       ldy #$fe    ; PRG $0AE32
  $8E34: b1 06       lda ($06),y    ; PRG $0AE34
  $8E36: a0 fc       ldy #$fc    ; PRG $0AE36
  $8E38: 91 06       sta ($06),y    ; PRG $0AE38
  $8E3A: a0 ff       ldy #$ff    ; PRG $0AE3A
  $8E3C: b1 06       lda ($06),y    ; PRG $0AE3C
  $8E3E: a0 fd       ldy #$fd    ; PRG $0AE3E
  $8E40: 91 06       sta ($06),y    ; PRG $0AE40
  $8E42: 4c d4 8d    jmp $8dd4    ; PRG $0AE42
  $8E45: a0 fa       ldy #$fa    ; PRG $0AE45
  $8E47: b1 06       lda ($06),y    ; PRG $0AE47
  $8E49: c8          iny    ; PRG $0AE49
  $8E4A: 11 06       ora ($06),y    ; PRG $0AE4A
  $8E4C: d0 03       bne $8e51    ; PRG $0AE4C
  $8E4E: 4c 5e 8e    jmp $8e5e    ; PRG $0AE4E
  $8E51: c8          iny    ; PRG $0AE51
  $8E52: b1 06       lda ($06),y    ; PRG $0AE52
  $8E54: 85 08       sta $08    ; PRG $0AE54
  $8E56: c8          iny    ; PRG $0AE56
  $8E57: b1 06       lda ($06),y    ; PRG $0AE57
  $8E59: 85 09       sta $09    ; PRG $0AE59
  $8E5B: 4c 62 8e    jmp $8e62    ; PRG $0AE5B
  $8E5E: 86 08       stx $08    ; PRG $0AE5E
  $8E60: 86 09       stx $09    ; PRG $0AE60
  $8E62: 60          rts    ; PRG $0AE62

; ---- sub_5_0e69  [stub]  <- (entry: bytecode/OS via $E299)
nat_5_0e63: jsr $E299                    ; 5:8E63  native-call prologue
            .db $00 $f5 $ff            ; inline: argcount $00, frame $fff5
  $8E69: a9 05       lda #$05    ; PRG $0AE69
  $8E6B: 85 18       sta $18    ; PRG $0AE6B
  $8E6D: 86 19       stx $19    ; PRG $0AE6D
  $8E6F: a0 0b       ldy #$0b    ; PRG $0AE6F
  $8E71: b1 04       lda ($04),y    ; PRG $0AE71
  $8E73: 85 14       sta $14    ; PRG $0AE73
  $8E75: c8          iny    ; PRG $0AE75
  $8E76: b1 04       lda ($04),y    ; PRG $0AE76
  $8E78: 85 15       sta $15    ; PRG $0AE78
  $8E7A: a0 14       ldy #$14    ; PRG $0AE7A
  $8E7C: a2 18       ldx #$18    ; PRG $0AE7C
  $8E7E: a9 10       lda #$10    ; PRG $0AE7E
  $8E80: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0AE80
  $8E83: 18          clc    ; PRG $0AE83
  $8E84: 98          tya    ; PRG $0AE84
  $8E85: 65 10       adc $10    ; PRG $0AE85
  $8E87: a0 f5       ldy #$f5    ; PRG $0AE87
  $8E89: 91 06       sta ($06),y    ; PRG $0AE89
  $8E8B: 8a          txa    ; PRG $0AE8B
  $8E8C: 65 11       adc $11    ; PRG $0AE8C
  $8E8E: c8          iny    ; PRG $0AE8E
  $8E8F: 91 06       sta ($06),y    ; PRG $0AE8F
  $8E91: 88          dey    ; PRG $0AE91
  $8E92: b1 06       lda ($06),y    ; PRG $0AE92
  $8E94: a0 f7       ldy #$f7    ; PRG $0AE94
  $8E96: 91 06       sta ($06),y    ; PRG $0AE96
  $8E98: 88          dey    ; PRG $0AE98
  $8E99: b1 06       lda ($06),y    ; PRG $0AE99
  $8E9B: a0 f8       ldy #$f8    ; PRG $0AE9B
  $8E9D: 91 06       sta ($06),y    ; PRG $0AE9D
  $8E9F: 18          clc    ; PRG $0AE9F
  $8EA0: a9 05       lda #$05    ; PRG $0AEA0
  $8EA2: a0 f5       ldy #$f5    ; PRG $0AEA2
  $8EA4: 71 06       adc ($06),y    ; PRG $0AEA4
  $8EA6: 91 06       sta ($06),y    ; PRG $0AEA6
  $8EA8: 8a          txa    ; PRG $0AEA8
  $8EA9: c8          iny    ; PRG $0AEA9
  $8EAA: 71 06       adc ($06),y    ; PRG $0AEAA
  $8EAC: 91 06       sta ($06),y    ; PRG $0AEAC
  $8EAE: 8a          txa    ; PRG $0AEAE
  $8EAF: a0 f9       ldy #$f9    ; PRG $0AEAF
  $8EB1: 91 06       sta ($06),y    ; PRG $0AEB1
  $8EB3: c8          iny    ; PRG $0AEB3
  $8EB4: 91 06       sta ($06),y    ; PRG $0AEB4
  $8EB6: 4c c8 8e    jmp $8ec8   ; enc_got_away    ; PRG $0AEB6
  $8EB9: 18          clc    ; PRG $0AEB9
  $8EBA: a9 01       lda #$01    ; PRG $0AEBA
  $8EBC: a0 f7       ldy #$f7    ; PRG $0AEBC
  $8EBE: 71 06       adc ($06),y    ; PRG $0AEBE
  $8EC0: 91 06       sta ($06),y    ; PRG $0AEC0
  $8EC2: 8a          txa    ; PRG $0AEC2
  $8EC3: c8          iny    ; PRG $0AEC3
  $8EC4: 71 06       adc ($06),y    ; PRG $0AEC4
  $8EC6: 91 06       sta ($06),y    ; PRG $0AEC6
  $8EC8: a0 f7       ldy #$f7    ; PRG $0AEC8
  $8ECA: b1 06       lda ($06),y    ; PRG $0AECA
  $8ECC: a0 f5       ldy #$f5    ; PRG $0AECC
  $8ECE: d1 06       cmp ($06),y    ; PRG $0AECE
  $8ED0: a0 f8       ldy #$f8    ; PRG $0AED0
  $8ED2: b1 06       lda ($06),y    ; PRG $0AED2
  $8ED4: a0 f6       ldy #$f6    ; PRG $0AED4
  $8ED6: f1 06       sbc ($06),y    ; PRG $0AED6
  $8ED8: 90 03       bcc $8edd    ; PRG $0AED8
  $8EDA: 4c 11 8f    jmp $8f11    ; PRG $0AEDA
  $8EDD: 18          clc    ; PRG $0AEDD
  $8EDE: a9 fb       lda #$fb    ; PRG $0AEDE
  $8EE0: 65 06       adc $06    ; PRG $0AEE0
  $8EE2: 85 18       sta $18    ; PRG $0AEE2
  $8EE4: 8a          txa    ; PRG $0AEE4
  $8EE5: 65 07       adc $07    ; PRG $0AEE5
  $8EE7: 85 19       sta $19    ; PRG $0AEE7
  $8EE9: a5 19       lda $19    ; PRG $0AEE9
  $8EEB: 48          pha    ; PRG $0AEEB
  $8EEC: a5 18       lda $18    ; PRG $0AEEC
  $8EEE: 48          pha    ; PRG $0AEEE
  $8EEF: a0 f8       ldy #$f8    ; PRG $0AEEF
  $8EF1: b1 06       lda ($06),y    ; PRG $0AEF1
  $8EF3: 48          pha    ; PRG $0AEF3
  $8EF4: 88          dey    ; PRG $0AEF4
  $8EF5: b1 06       lda ($06),y    ; PRG $0AEF5
  $8EF7: 48          pha    ; PRG $0AEF7
  $8EF8: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0AEF8
  $8EFB: 26 d0 06    .db $26 $d0 $06  -> vm $D026 argc 6    ; PRG $0AEFB
  $8EFE: 18          clc    ; PRG $0AEFE
  $8EFF: a0 f9       ldy #$f9    ; PRG $0AEFF
  $8F01: b1 06       lda ($06),y    ; PRG $0AF01
  $8F03: 65 08       adc $08    ; PRG $0AF03
  $8F05: 91 06       sta ($06),y    ; PRG $0AF05
  $8F07: c8          iny    ; PRG $0AF07
  $8F08: b1 06       lda ($06),y    ; PRG $0AF08
  $8F0A: 65 09       adc $09    ; PRG $0AF0A
  $8F0C: 91 06       sta ($06),y    ; PRG $0AF0C
  $8F0E: 4c b9 8e    jmp $8eb9    ; PRG $0AF0E
  $8F11: a0 f9       ldy #$f9    ; PRG $0AF11
  $8F13: b1 06       lda ($06),y    ; PRG $0AF13
  $8F15: 85 08       sta $08    ; PRG $0AF15
  $8F17: c8          iny    ; PRG $0AF17
  $8F18: b1 06       lda ($06),y    ; PRG $0AF18
  $8F1A: 85 09       sta $09    ; PRG $0AF1A
  $8F1C: 60          rts    ; PRG $0AF1C

; ---- sub_5_0f23  [stub]  <- (entry: bytecode/OS via $E299)
nat_5_0f1d: jsr $E299                    ; 5:8F1D  native-call prologue
            .db $00 $fa $ff            ; inline: argcount $00, frame $fffa
  $8F23: a9 0e       lda #$0e    ; PRG $0AF23
  $8F25: 85 18       sta $18    ; PRG $0AF25
  $8F27: 86 19       stx $19    ; PRG $0AF27
  $8F29: a0 0b       ldy #$0b    ; PRG $0AF29
  $8F2B: b1 04       lda ($04),y    ; PRG $0AF2B
  $8F2D: 85 14       sta $14    ; PRG $0AF2D
  $8F2F: c8          iny    ; PRG $0AF2F
  $8F30: b1 04       lda ($04),y    ; PRG $0AF30
  $8F32: 85 15       sta $15    ; PRG $0AF32
  $8F34: a0 14       ldy #$14    ; PRG $0AF34
  $8F36: a2 18       ldx #$18    ; PRG $0AF36
  $8F38: a9 10       lda #$10    ; PRG $0AF38
  $8F3A: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0AF3A
  $8F3D: 18          clc    ; PRG $0AF3D
  $8F3E: a5 10       lda $10    ; PRG $0AF3E
  $8F40: 69 b2       adc #$b2    ; PRG $0AF40
  $8F42: a0 fa       ldy #$fa    ; PRG $0AF42
  $8F44: 91 06       sta ($06),y    ; PRG $0AF44
  $8F46: a5 11       lda $11    ; PRG $0AF46
  $8F48: 69 67       adc #$67    ; PRG $0AF48
  $8F4A: c8          iny    ; PRG $0AF4A
  $8F4B: 91 06       sta ($06),y    ; PRG $0AF4B
  $8F4D: 88          dey    ; PRG $0AF4D
  $8F4E: b1 06       lda ($06),y    ; PRG $0AF4E
  $8F50: 85 18       sta $18    ; PRG $0AF50
  $8F52: c8          iny    ; PRG $0AF52
  $8F53: b1 06       lda ($06),y    ; PRG $0AF53
  $8F55: 85 19       sta $19    ; PRG $0AF55
  $8F57: a0 02       ldy #$02    ; PRG $0AF57
  $8F59: b1 18       lda ($18),y    ; PRG $0AF59
  $8F5B: a0 fe       ldy #$fe    ; PRG $0AF5B
  $8F5D: 91 06       sta ($06),y    ; PRG $0AF5D
  $8F5F: a0 03       ldy #$03    ; PRG $0AF5F
  $8F61: b1 18       lda ($18),y    ; PRG $0AF61
  $8F63: a0 ff       ldy #$ff    ; PRG $0AF63
  $8F65: 91 06       sta ($06),y    ; PRG $0AF65
  $8F67: a0 fa       ldy #$fa    ; PRG $0AF67
  $8F69: b1 06       lda ($06),y    ; PRG $0AF69
  $8F6B: 85 18       sta $18    ; PRG $0AF6B
  $8F6D: c8          iny    ; PRG $0AF6D
  $8F6E: b1 06       lda ($06),y    ; PRG $0AF6E
  $8F70: 85 19       sta $19    ; PRG $0AF70
  $8F72: a0 06       ldy #$06    ; PRG $0AF72
  $8F74: b1 18       lda ($18),y    ; PRG $0AF74
  $8F76: a0 fc       ldy #$fc    ; PRG $0AF76
  $8F78: 91 06       sta ($06),y    ; PRG $0AF78
  $8F7A: a0 07       ldy #$07    ; PRG $0AF7A
  $8F7C: b1 18       lda ($18),y    ; PRG $0AF7C
  $8F7E: a0 fd       ldy #$fd    ; PRG $0AF7E
  $8F80: 91 06       sta ($06),y    ; PRG $0AF80
  $8F82: a9 e8       lda #$e8    ; PRG $0AF82
  $8F84: c8          iny    ; PRG $0AF84
  $8F85: d1 06       cmp ($06),y    ; PRG $0AF85
  $8F87: a9 03       lda #$03    ; PRG $0AF87
  $8F89: c8          iny    ; PRG $0AF89
  $8F8A: f1 06       sbc ($06),y    ; PRG $0AF8A
  $8F8C: 90 03       bcc $8f91    ; PRG $0AF8C
  $8F8E: 4c 80 90    jmp $9080    ; PRG $0AF8E
  $8F91: a0 fa       ldy #$fa    ; PRG $0AF91
  $8F93: b1 06       lda ($06),y    ; PRG $0AF93
  $8F95: 85 18       sta $18    ; PRG $0AF95
  $8F97: c8          iny    ; PRG $0AF97
  $8F98: b1 06       lda ($06),y    ; PRG $0AF98
  $8F9A: 85 19       sta $19    ; PRG $0AF9A
  $8F9C: 88          dey    ; PRG $0AF9C
  $8F9D: b1 06       lda ($06),y    ; PRG $0AF9D
  $8F9F: 85 14       sta $14    ; PRG $0AF9F
  $8FA1: c8          iny    ; PRG $0AFA1
  $8FA2: b1 06       lda ($06),y    ; PRG $0AFA2
  $8FA4: 85 15       sta $15    ; PRG $0AFA4
  $8FA6: a9 02       lda #$02    ; PRG $0AFA6
  $8FA8: 85 10       sta $10    ; PRG $0AFA8
  $8FAA: 86 11       stx $11    ; PRG $0AFAA
  $8FAC: a9 e8       lda #$e8    ; PRG $0AFAC
  $8FAE: 85 0c       sta $0c    ; PRG $0AFAE
  $8FB0: a9 03       lda #$03    ; PRG $0AFB0
  $8FB2: 85 0d       sta $0d    ; PRG $0AFB2
  $8FB4: a0 fe       ldy #$fe    ; PRG $0AFB4
  $8FB6: b1 06       lda ($06),y    ; PRG $0AFB6
  $8FB8: 85 08       sta $08    ; PRG $0AFB8
  $8FBA: c8          iny    ; PRG $0AFBA
  $8FBB: b1 06       lda ($06),y    ; PRG $0AFBB
  $8FBD: 85 09       sta $09    ; PRG $0AFBD
  $8FBF: a2 18       ldx #$18    ; PRG $0AFBF
  $8FC1: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $0AFC1
  $8FC4: a0 08       ldy #$08    ; PRG $0AFC4
  $8FC6: a2 0c       ldx #$0c    ; PRG $0AFC6
  $8FC8: a9 18       lda #$18    ; PRG $0AFC8
  $8FCA: 20 d9 e1    jsr $e1d9   ; alu_div_push_remainder    ; PRG $0AFCA
  $8FCD: a0 18       ldy #$18    ; PRG $0AFCD
  $8FCF: a2 10       ldx #$10    ; PRG $0AFCF
  $8FD1: a9 0c       lda #$0c    ; PRG $0AFD1
  $8FD3: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0AFD3
  $8FD6: a2 14       ldx #$14    ; PRG $0AFD6
  $8FD8: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $0AFD8
  $8FDB: a2 0c       ldx #$0c    ; PRG $0AFDB
  $8FDD: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $0AFDD
  $8FE0: 48          pha    ; PRG $0AFE0
  $8FE1: a9 0a       lda #$0a    ; PRG $0AFE1
  $8FE3: 48          pha    ; PRG $0AFE3
  $8FE4: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0AFE4
  $8FE7: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $0AFE7
  $8FEA: a2 0c       ldx #$0c    ; PRG $0AFEA
  $8FEC: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $0AFEC
  $8FEF: 18          clc    ; PRG $0AFEF
  $8FF0: a5 08       lda $08    ; PRG $0AFF0
  $8FF2: 65 0c       adc $0c    ; PRG $0AFF2
  $8FF4: 85 18       sta $18    ; PRG $0AFF4
  $8FF6: a5 09       lda $09    ; PRG $0AFF6
  $8FF8: 65 0d       adc $0d    ; PRG $0AFF8
  $8FFA: 85 19       sta $19    ; PRG $0AFFA
  $8FFC: a2 14       ldx #$14    ; PRG $0AFFC
  $8FFE: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $0AFFE
  $9001: a2 10       ldx #$10    ; PRG $0B001
  $9003: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $0B003
  $9006: 18          clc    ; PRG $0B006
  $9007: a5 18       lda $18    ; PRG $0B007
  $9009: 61 14       adc ($14,x)    ; PRG $0B009
  $900B: 81 10       sta ($10,x)    ; PRG $0B00B
  $900D: a5 19       lda $19    ; PRG $0B00D
  $900F: 71 14       adc ($14),y    ; PRG $0B00F
  $9011: 91 10       sta ($10),y    ; PRG $0B011
  $9013: a0 fa       ldy #$fa    ; PRG $0B013
  $9015: b1 06       lda ($06),y    ; PRG $0B015
  $9017: 85 18       sta $18    ; PRG $0B017
  $9019: c8          iny    ; PRG $0B019
  $901A: b1 06       lda ($06),y    ; PRG $0B01A
  $901C: 85 19       sta $19    ; PRG $0B01C
  $901E: a2 18       ldx #$18    ; PRG $0B01E
  $9020: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $0B020
  $9023: a9 03       lda #$03    ; PRG $0B023
  $9025: 48          pha    ; PRG $0B025
  $9026: a9 e8       lda #$e8    ; PRG $0B026
  $9028: 48          pha    ; PRG $0B028
  $9029: a0 fa       ldy #$fa    ; PRG $0B029
  $902B: b1 06       lda ($06),y    ; PRG $0B02B
  $902D: 85 18       sta $18    ; PRG $0B02D
  $902F: c8          iny    ; PRG $0B02F
  $9030: b1 06       lda ($06),y    ; PRG $0B030
  $9032: 85 19       sta $19    ; PRG $0B032
  $9034: a0 01       ldy #$01    ; PRG $0B034
  $9036: b1 18       lda ($18),y    ; PRG $0B036
  $9038: 48          pha    ; PRG $0B038
  $9039: a1 18       lda ($18,x)    ; PRG $0B039
  $903B: 48          pha    ; PRG $0B03B
  $903C: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0B03C
  $903F: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $0B03F
  $9042: a2 18       ldx #$18    ; PRG $0B042
  $9044: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $0B044
  $9047: a5 08       lda $08    ; PRG $0B047
  $9049: 81 18       sta ($18,x)    ; PRG $0B049
  $904B: a5 09       lda $09    ; PRG $0B04B
  $904D: 91 18       sta ($18),y    ; PRG $0B04D
  $904F: a0 fa       ldy #$fa    ; PRG $0B04F
  $9051: b1 06       lda ($06),y    ; PRG $0B051
  $9053: 85 18       sta $18    ; PRG $0B053
  $9055: c8          iny    ; PRG $0B055
  $9056: b1 06       lda ($06),y    ; PRG $0B056
  $9058: 85 19       sta $19    ; PRG $0B058
  $905A: a9 e8       lda #$e8    ; PRG $0B05A
  $905C: 85 14       sta $14    ; PRG $0B05C
  $905E: a9 03       lda #$03    ; PRG $0B05E
  $9060: 85 15       sta $15    ; PRG $0B060
  $9062: a0 fe       ldy #$fe    ; PRG $0B062
  $9064: b1 06       lda ($06),y    ; PRG $0B064
  $9066: 85 10       sta $10    ; PRG $0B066
  $9068: c8          iny    ; PRG $0B068
  $9069: b1 06       lda ($06),y    ; PRG $0B069
  $906B: 85 11       sta $11    ; PRG $0B06B
  $906D: a0 10       ldy #$10    ; PRG $0B06D
  $906F: a2 14       ldx #$14    ; PRG $0B06F
  $9071: a9 0c       lda #$0c    ; PRG $0B071
  $9073: 20 eb e1    jsr $e1eb   ; alu_udiv16    ; PRG $0B073
  $9076: a5 0c       lda $0c    ; PRG $0B076
  $9078: c8          iny    ; PRG $0B078
  $9079: 91 18       sta ($18),y    ; PRG $0B079
  $907B: a5 0d       lda $0d    ; PRG $0B07B
  $907D: c8          iny    ; PRG $0B07D
  $907E: 91 18       sta ($18),y    ; PRG $0B07E
  $9080: a9 e8       lda #$e8    ; PRG $0B080
  $9082: a0 fc       ldy #$fc    ; PRG $0B082
  $9084: d1 06       cmp ($06),y    ; PRG $0B084
  $9086: a9 03       lda #$03    ; PRG $0B086
  $9088: c8          iny    ; PRG $0B088
  $9089: f1 06       sbc ($06),y    ; PRG $0B089
  $908B: 90 03       bcc $9090    ; PRG $0B08B
  $908D: 4c 85 91    jmp $9185    ; PRG $0B08D
  $9090: a0 fa       ldy #$fa    ; PRG $0B090
  $9092: b1 06       lda ($06),y    ; PRG $0B092
  $9094: 85 18       sta $18    ; PRG $0B094
  $9096: c8          iny    ; PRG $0B096
  $9097: b1 06       lda ($06),y    ; PRG $0B097
  $9099: 85 19       sta $19    ; PRG $0B099
  $909B: 88          dey    ; PRG $0B09B
  $909C: b1 06       lda ($06),y    ; PRG $0B09C
  $909E: 85 14       sta $14    ; PRG $0B09E
  $90A0: c8          iny    ; PRG $0B0A0
  $90A1: b1 06       lda ($06),y    ; PRG $0B0A1
  $90A3: 85 15       sta $15    ; PRG $0B0A3
  $90A5: a9 02       lda #$02    ; PRG $0B0A5
  $90A7: 85 10       sta $10    ; PRG $0B0A7
  $90A9: 86 11       stx $11    ; PRG $0B0A9
  $90AB: a9 e8       lda #$e8    ; PRG $0B0AB
  $90AD: 85 0c       sta $0c    ; PRG $0B0AD
  $90AF: a9 03       lda #$03    ; PRG $0B0AF
  $90B1: 85 0d       sta $0d    ; PRG $0B0B1
  $90B3: c8          iny    ; PRG $0B0B3
  $90B4: b1 06       lda ($06),y    ; PRG $0B0B4
  $90B6: 85 08       sta $08    ; PRG $0B0B6
  $90B8: c8          iny    ; PRG $0B0B8
  $90B9: b1 06       lda ($06),y    ; PRG $0B0B9
  $90BB: 85 09       sta $09    ; PRG $0B0BB
  $90BD: a2 18       ldx #$18    ; PRG $0B0BD
  $90BF: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $0B0BF
  $90C2: a0 08       ldy #$08    ; PRG $0B0C2
  $90C4: a2 0c       ldx #$0c    ; PRG $0B0C4
  $90C6: a9 18       lda #$18    ; PRG $0B0C6
  $90C8: 20 d9 e1    jsr $e1d9   ; alu_div_push_remainder    ; PRG $0B0C8
  $90CB: a0 18       ldy #$18    ; PRG $0B0CB
  $90CD: a2 10       ldx #$10    ; PRG $0B0CD
  $90CF: a9 0c       lda #$0c    ; PRG $0B0CF
  $90D1: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0B0D1
  $90D4: a2 14       ldx #$14    ; PRG $0B0D4
  $90D6: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $0B0D6
  $90D9: a2 0c       ldx #$0c    ; PRG $0B0D9
  $90DB: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $0B0DB
  $90DE: 48          pha    ; PRG $0B0DE
  $90DF: a9 0a       lda #$0a    ; PRG $0B0DF
  $90E1: 48          pha    ; PRG $0B0E1
  $90E2: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0B0E2
  $90E5: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $0B0E5
  $90E8: a2 0c       ldx #$0c    ; PRG $0B0E8
  $90EA: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $0B0EA
  $90ED: 18          clc    ; PRG $0B0ED
  $90EE: a5 08       lda $08    ; PRG $0B0EE
  $90F0: 65 0c       adc $0c    ; PRG $0B0F0
  $90F2: 85 18       sta $18    ; PRG $0B0F2
  $90F4: a5 09       lda $09    ; PRG $0B0F4
  $90F6: 65 0d       adc $0d    ; PRG $0B0F6
  $90F8: 85 19       sta $19    ; PRG $0B0F8
  $90FA: a2 14       ldx #$14    ; PRG $0B0FA
  $90FC: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $0B0FC
  $90FF: a2 10       ldx #$10    ; PRG $0B0FF
  $9101: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $0B101
  $9104: 18          clc    ; PRG $0B104
  $9105: a5 18       lda $18    ; PRG $0B105
  $9107: a0 04       ldy #$04    ; PRG $0B107
  $9109: 71 14       adc ($14),y    ; PRG $0B109
  $910B: 91 10       sta ($10),y    ; PRG $0B10B
  $910D: a5 19       lda $19    ; PRG $0B10D
  $910F: c8          iny    ; PRG $0B10F
  $9110: 71 14       adc ($14),y    ; PRG $0B110
  $9112: 91 10       sta ($10),y    ; PRG $0B112
  $9114: a0 fa       ldy #$fa    ; PRG $0B114
  $9116: b1 06       lda ($06),y    ; PRG $0B116
  $9118: 85 18       sta $18    ; PRG $0B118
  $911A: c8          iny    ; PRG $0B11A
  $911B: b1 06       lda ($06),y    ; PRG $0B11B
  $911D: 85 19       sta $19    ; PRG $0B11D
  $911F: a2 18       ldx #$18    ; PRG $0B11F
  $9121: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $0B121
  $9124: a9 03       lda #$03    ; PRG $0B124
  $9126: 48          pha    ; PRG $0B126
  $9127: a9 e8       lda #$e8    ; PRG $0B127
  $9129: 48          pha    ; PRG $0B129
  $912A: a0 fa       ldy #$fa    ; PRG $0B12A
  $912C: b1 06       lda ($06),y    ; PRG $0B12C
  $912E: 85 18       sta $18    ; PRG $0B12E
  $9130: c8          iny    ; PRG $0B130
  $9131: b1 06       lda ($06),y    ; PRG $0B131
  $9133: 85 19       sta $19    ; PRG $0B133
  $9135: a0 05       ldy #$05    ; PRG $0B135
  $9137: b1 18       lda ($18),y    ; PRG $0B137
  $9139: 48          pha    ; PRG $0B139
  $913A: 88          dey    ; PRG $0B13A
  $913B: b1 18       lda ($18),y    ; PRG $0B13B
  $913D: 48          pha    ; PRG $0B13D
  $913E: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0B13E
  $9141: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $0B141
  $9144: a2 18       ldx #$18    ; PRG $0B144
  $9146: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $0B146
  $9149: a5 08       lda $08    ; PRG $0B149
  $914B: a0 04       ldy #$04    ; PRG $0B14B
  $914D: 91 18       sta ($18),y    ; PRG $0B14D
  $914F: a5 09       lda $09    ; PRG $0B14F
  $9151: c8          iny    ; PRG $0B151
  $9152: 91 18       sta ($18),y    ; PRG $0B152
  $9154: a0 fa       ldy #$fa    ; PRG $0B154
  $9156: b1 06       lda ($06),y    ; PRG $0B156
  $9158: 85 18       sta $18    ; PRG $0B158
  $915A: c8          iny    ; PRG $0B15A
  $915B: b1 06       lda ($06),y    ; PRG $0B15B
  $915D: 85 19       sta $19    ; PRG $0B15D
  $915F: a9 e8       lda #$e8    ; PRG $0B15F
  $9161: 85 14       sta $14    ; PRG $0B161
  $9163: a9 03       lda #$03    ; PRG $0B163
  $9165: 85 15       sta $15    ; PRG $0B165
  $9167: c8          iny    ; PRG $0B167
  $9168: b1 06       lda ($06),y    ; PRG $0B168
  $916A: 85 10       sta $10    ; PRG $0B16A
  $916C: c8          iny    ; PRG $0B16C
  $916D: b1 06       lda ($06),y    ; PRG $0B16D
  $916F: 85 11       sta $11    ; PRG $0B16F
  $9171: a0 10       ldy #$10    ; PRG $0B171
  $9173: a2 14       ldx #$14    ; PRG $0B173
  $9175: a9 0c       lda #$0c    ; PRG $0B175
  $9177: 20 eb e1    jsr $e1eb   ; alu_udiv16    ; PRG $0B177
  $917A: a5 0c       lda $0c    ; PRG $0B17A
  $917C: a0 06       ldy #$06    ; PRG $0B17C
  $917E: 91 18       sta ($18),y    ; PRG $0B17E
  $9180: a5 0d       lda $0d    ; PRG $0B180
  $9182: c8          iny    ; PRG $0B182
  $9183: 91 18       sta ($18),y    ; PRG $0B183
  $9185: 60          rts    ; PRG $0B185

; ---- sub_5_118c  [stub]  <- (entry: bytecode/OS via $E299)
nat_5_1186: jsr $E299                    ; 5:9186  native-call prologue
            .db $00 $62 $ff            ; inline: argcount $00, frame $ff62
  $918C: 48          pha    ; PRG $0B18C
  $918D: 48          pha    ; PRG $0B18D
  $918E: 48          pha    ; PRG $0B18E
  $918F: a9 40       lda #$40    ; PRG $0B18F
  $9191: 48          pha    ; PRG $0B191
  $9192: 18          clc    ; PRG $0B192
  $9193: a9 b2       lda #$b2    ; PRG $0B193
  $9195: 65 06       adc $06    ; PRG $0B195
  $9197: 85 18       sta $18    ; PRG $0B197
  $9199: 8a          txa    ; PRG $0B199
  $919A: 65 07       adc $07    ; PRG $0B19A
  $919C: 85 19       sta $19    ; PRG $0B19C
  $919E: a5 19       lda $19    ; PRG $0B19E
  $91A0: 48          pha    ; PRG $0B1A0
  $91A1: a5 18       lda $18    ; PRG $0B1A1
  $91A3: 48          pha    ; PRG $0B1A3
  $91A4: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0B1A4
  $91A7: 3a f3 08    .db $3a $f3 $08  -> vm $F33A argc 8    ; PRG $0B1A7
  $91AA: 48          pha    ; PRG $0B1AA
  $91AB: 48          pha    ; PRG $0B1AB
  $91AC: 48          pha    ; PRG $0B1AC
  $91AD: a9 40       lda #$40    ; PRG $0B1AD
  $91AF: 48          pha    ; PRG $0B1AF
  $91B0: 18          clc    ; PRG $0B1B0
  $91B1: a9 72       lda #$72    ; PRG $0B1B1
  $91B3: 65 06       adc $06    ; PRG $0B1B3
  $91B5: 85 18       sta $18    ; PRG $0B1B5
  $91B7: 8a          txa    ; PRG $0B1B7
  $91B8: 65 07       adc $07    ; PRG $0B1B8
  $91BA: 85 19       sta $19    ; PRG $0B1BA
  $91BC: a5 19       lda $19    ; PRG $0B1BC
  $91BE: 48          pha    ; PRG $0B1BE
  $91BF: a5 18       lda $18    ; PRG $0B1BF
  $91C1: 48          pha    ; PRG $0B1C1
  $91C2: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0B1C2
  $91C5: 3a f3 08    .db $3a $f3 $08  -> vm $F33A argc 8    ; PRG $0B1C5
  $91C8: a9 b2       lda #$b2    ; PRG $0B1C8
  $91CA: a0 66       ldy #$66    ; PRG $0B1CA
  $91CC: 91 06       sta ($06),y    ; PRG $0B1CC
  $91CE: a9 67       lda #$67    ; PRG $0B1CE
  $91D0: c8          iny    ; PRG $0B1D0
  $91D1: 91 06       sta ($06),y    ; PRG $0B1D1
  $91D3: a9 0a       lda #$0a    ; PRG $0B1D3
  $91D5: a0 64       ldy #$64    ; PRG $0B1D5
  $91D7: 91 06       sta ($06),y    ; PRG $0B1D7
  $91D9: a9 b5       lda #$b5    ; PRG $0B1D9
  $91DB: c8          iny    ; PRG $0B1DB
  $91DC: 91 06       sta ($06),y    ; PRG $0B1DC
  $91DE: 8a          txa    ; PRG $0B1DE
  $91DF: a0 fa       ldy #$fa    ; PRG $0B1DF
  $91E1: 91 06       sta ($06),y    ; PRG $0B1E1
  $91E3: c8          iny    ; PRG $0B1E3
  $91E4: 91 06       sta ($06),y    ; PRG $0B1E4
  $91E6: a9 76       lda #$76    ; PRG $0B1E6
  $91E8: a0 fe       ldy #$fe    ; PRG $0B1E8
  $91EA: 91 06       sta ($06),y    ; PRG $0B1EA
  $91EC: a9 6f       lda #$6f    ; PRG $0B1EC
  $91EE: c8          iny    ; PRG $0B1EE
  $91EF: 91 06       sta ($06),y    ; PRG $0B1EF
  $91F1: 18          clc    ; PRG $0B1F1
  $91F2: a9 32       lda #$32    ; PRG $0B1F2
  $91F4: 69 76       adc #$76    ; PRG $0B1F4
  $91F6: a0 fc       ldy #$fc    ; PRG $0B1F6
  $91F8: 91 06       sta ($06),y    ; PRG $0B1F8
  $91FA: 8a          txa    ; PRG $0B1FA
  $91FB: 69 6f       adc #$6f    ; PRG $0B1FB
  $91FD: c8          iny    ; PRG $0B1FD
  $91FE: 91 06       sta ($06),y    ; PRG $0B1FE
  $9200: 4c 3f 92    jmp $923f    ; PRG $0B200
  $9203: 18          clc    ; PRG $0B203
  $9204: a9 01       lda #$01    ; PRG $0B204
  $9206: a0 fa       ldy #$fa    ; PRG $0B206
  $9208: 71 06       adc ($06),y    ; PRG $0B208
  $920A: 91 06       sta ($06),y    ; PRG $0B20A
  $920C: 8a          txa    ; PRG $0B20C
  $920D: c8          iny    ; PRG $0B20D
  $920E: 71 06       adc ($06),y    ; PRG $0B20E
  $9210: 91 06       sta ($06),y    ; PRG $0B210
  $9212: 18          clc    ; PRG $0B212
  $9213: a9 0e       lda #$0e    ; PRG $0B213
  $9215: a0 66       ldy #$66    ; PRG $0B215
  $9217: 71 06       adc ($06),y    ; PRG $0B217
  $9219: 91 06       sta ($06),y    ; PRG $0B219
  $921B: 8a          txa    ; PRG $0B21B
  $921C: c8          iny    ; PRG $0B21C
  $921D: 71 06       adc ($06),y    ; PRG $0B21D
  $921F: 91 06       sta ($06),y    ; PRG $0B21F
  $9221: 18          clc    ; PRG $0B221
  $9222: a9 05       lda #$05    ; PRG $0B222
  $9224: a0 64       ldy #$64    ; PRG $0B224
  $9226: 71 06       adc ($06),y    ; PRG $0B226
  $9228: 91 06       sta ($06),y    ; PRG $0B228
  $922A: 8a          txa    ; PRG $0B22A
  $922B: c8          iny    ; PRG $0B22B
  $922C: 71 06       adc ($06),y    ; PRG $0B22C
  $922E: 91 06       sta ($06),y    ; PRG $0B22E
  $9230: 18          clc    ; PRG $0B230
  $9231: a9 01       lda #$01    ; PRG $0B231
  $9233: a0 fe       ldy #$fe    ; PRG $0B233
  $9235: 71 06       adc ($06),y    ; PRG $0B235
  $9237: 91 06       sta ($06),y    ; PRG $0B237
  $9239: 8a          txa    ; PRG $0B239
  $923A: c8          iny    ; PRG $0B23A
  $923B: 71 06       adc ($06),y    ; PRG $0B23B
  $923D: 91 06       sta ($06),y    ; PRG $0B23D
  $923F: a0 fe       ldy #$fe    ; PRG $0B23F
  $9241: b1 06       lda ($06),y    ; PRG $0B241
  $9243: a0 fc       ldy #$fc    ; PRG $0B243
  $9245: d1 06       cmp ($06),y    ; PRG $0B245
  $9247: a0 ff       ldy #$ff    ; PRG $0B247
  $9249: b1 06       lda ($06),y    ; PRG $0B249
  $924B: a0 fd       ldy #$fd    ; PRG $0B24B
  $924D: f1 06       sbc ($06),y    ; PRG $0B24D
  $924F: 90 03       bcc $9254    ; PRG $0B24F
  $9251: 4c f4 94    jmp $94f4    ; PRG $0B251
  $9254: c8          iny    ; PRG $0B254
  $9255: b1 06       lda ($06),y    ; PRG $0B255
  $9257: 85 18       sta $18    ; PRG $0B257
  $9259: c8          iny    ; PRG $0B259
  $925A: b1 06       lda ($06),y    ; PRG $0B25A
  $925C: 85 19       sta $19    ; PRG $0B25C
  $925E: a1 18       lda ($18,x)    ; PRG $0B25E
  $9260: 85 14       sta $14    ; PRG $0B260
  $9262: 86 15       stx $15    ; PRG $0B262
  $9264: a9 03       lda #$03    ; PRG $0B264
  $9266: 25 14       and $14    ; PRG $0B266
  $9268: a0 f4       ldy #$f4    ; PRG $0B268
  $926A: 91 06       sta ($06),y    ; PRG $0B26A
  $926C: 8a          txa    ; PRG $0B26C
  $926D: c8          iny    ; PRG $0B26D
  $926E: 91 06       sta ($06),y    ; PRG $0B26E
  $9270: 18          clc    ; PRG $0B270
  $9271: a9 04       lda #$04    ; PRG $0B271
  $9273: a0 64       ldy #$64    ; PRG $0B273
  $9275: 71 06       adc ($06),y    ; PRG $0B275
  $9277: 85 18       sta $18    ; PRG $0B277
  $9279: 8a          txa    ; PRG $0B279
  $927A: c8          iny    ; PRG $0B27A
  $927B: 71 06       adc ($06),y    ; PRG $0B27B
  $927D: 85 19       sta $19    ; PRG $0B27D
  $927F: a5 19       lda $19    ; PRG $0B27F
  $9281: 48          pha    ; PRG $0B281
  $9282: a5 18       lda $18    ; PRG $0B282
  $9284: 48          pha    ; PRG $0B284
  $9285: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0B285
  $9288: 0c d3 04    .db $0c $d3 $04  -> vm $D30C argc 4    ; PRG $0B288
  $928B: 86 09       stx $09    ; PRG $0B28B
  $928D: a5 08       lda $08    ; PRG $0B28D
  $928F: a0 f2       ldy #$f2    ; PRG $0B28F
  $9291: 91 06       sta ($06),y    ; PRG $0B291
  $9293: a5 09       lda $09    ; PRG $0B293
  $9295: c8          iny    ; PRG $0B295
  $9296: 91 06       sta ($06),y    ; PRG $0B296
  $9298: a0 fb       ldy #$fb    ; PRG $0B298
  $929A: b1 06       lda ($06),y    ; PRG $0B29A
  $929C: 48          pha    ; PRG $0B29C
  $929D: 88          dey    ; PRG $0B29D
  $929E: b1 06       lda ($06),y    ; PRG $0B29E
  $92A0: 48          pha    ; PRG $0B2A0
  $92A1: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0B2A1
  $92A4: 1d 8f 04    .db $1d $8f $04  -> vm $8F1D argc 4    ; PRG $0B2A4
  $92A7: 18          clc    ; PRG $0B2A7
  $92A8: a9 b2       lda #$b2    ; PRG $0B2A8
  $92AA: 65 06       adc $06    ; PRG $0B2AA
  $92AC: 85 18       sta $18    ; PRG $0B2AC
  $92AE: 8a          txa    ; PRG $0B2AE
  $92AF: 65 07       adc $07    ; PRG $0B2AF
  $92B1: 85 19       sta $19    ; PRG $0B2B1
  $92B3: 84 14       sty $14    ; PRG $0B2B3
  $92B5: 86 15       stx $15    ; PRG $0B2B5
  $92B7: a0 f2       ldy #$f2    ; PRG $0B2B7
  $92B9: b1 06       lda ($06),y    ; PRG $0B2B9
  $92BB: 85 10       sta $10    ; PRG $0B2BB
  $92BD: c8          iny    ; PRG $0B2BD
  $92BE: b1 06       lda ($06),y    ; PRG $0B2BE
  $92C0: 85 11       sta $11    ; PRG $0B2C0
  $92C2: a0 10       ldy #$10    ; PRG $0B2C2
  $92C4: a2 14       ldx #$14    ; PRG $0B2C4
  $92C6: a9 0c       lda #$0c    ; PRG $0B2C6
  $92C8: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0B2C8
  $92CB: a9 04       lda #$04    ; PRG $0B2CB
  $92CD: 85 14       sta $14    ; PRG $0B2CD
  $92CF: 86 15       stx $15    ; PRG $0B2CF
  $92D1: a0 f4       ldy #$f4    ; PRG $0B2D1
  $92D3: b1 06       lda ($06),y    ; PRG $0B2D3
  $92D5: 85 10       sta $10    ; PRG $0B2D5
  $92D7: c8          iny    ; PRG $0B2D7
  $92D8: b1 06       lda ($06),y    ; PRG $0B2D8
  $92DA: 85 11       sta $11    ; PRG $0B2DA
  $92DC: a0 10       ldy #$10    ; PRG $0B2DC
  $92DE: a2 14       ldx #$14    ; PRG $0B2DE
  $92E0: a9 08       lda #$08    ; PRG $0B2E0
  $92E2: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0B2E2
  $92E5: 18          clc    ; PRG $0B2E5
  $92E6: a5 08       lda $08    ; PRG $0B2E6
  $92E8: 65 0c       adc $0c    ; PRG $0B2E8
  $92EA: 85 14       sta $14    ; PRG $0B2EA
  $92EC: a5 09       lda $09    ; PRG $0B2EC
  $92EE: 65 0d       adc $0d    ; PRG $0B2EE
  $92F0: 85 15       sta $15    ; PRG $0B2F0
  $92F2: 18          clc    ; PRG $0B2F2
  $92F3: a5 14       lda $14    ; PRG $0B2F3
  $92F5: 65 18       adc $18    ; PRG $0B2F5
  $92F7: 85 10       sta $10    ; PRG $0B2F7
  $92F9: a5 15       lda $15    ; PRG $0B2F9
  $92FB: 65 19       adc $19    ; PRG $0B2FB
  $92FD: 85 11       sta $11    ; PRG $0B2FD
  $92FF: a9 04       lda #$04    ; PRG $0B2FF
  $9301: 85 18       sta $18    ; PRG $0B301
  $9303: 86 19       stx $19    ; PRG $0B303
  $9305: a0 66       ldy #$66    ; PRG $0B305
  $9307: b1 06       lda ($06),y    ; PRG $0B307
  $9309: 85 14       sta $14    ; PRG $0B309
  $930B: c8          iny    ; PRG $0B30B
  $930C: b1 06       lda ($06),y    ; PRG $0B30C
  $930E: 85 15       sta $15    ; PRG $0B30E
  $9310: a1 14       lda ($14,x)    ; PRG $0B310
  $9312: 85 0c       sta $0c    ; PRG $0B312
  $9314: a0 01       ldy #$01    ; PRG $0B314
  $9316: b1 14       lda ($14),y    ; PRG $0B316
  $9318: 85 0d       sta $0d    ; PRG $0B318
  $931A: a2 10       ldx #$10    ; PRG $0B31A
  $931C: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $0B31C
  $931F: a2 18       ldx #$18    ; PRG $0B31F
  $9321: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $0B321
  $9324: a2 0c       ldx #$0c    ; PRG $0B324
  $9326: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $0B326
  $9329: a0 65       ldy #$65    ; PRG $0B329
  $932B: b1 06       lda ($06),y    ; PRG $0B32B
  $932D: 48          pha    ; PRG $0B32D
  $932E: 88          dey    ; PRG $0B32E
  $932F: b1 06       lda ($06),y    ; PRG $0B32F
  $9331: 48          pha    ; PRG $0B331
  $9332: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0B332
  $9335: 0c d3 04    .db $0c $d3 $04  -> vm $D30C argc 4    ; PRG $0B335
  $9338: 86 09       stx $09    ; PRG $0B338
  $933A: 18          clc    ; PRG $0B33A
  $933B: 98          tya    ; PRG $0B33B
  $933C: 65 08       adc $08    ; PRG $0B33C
  $933E: 85 18       sta $18    ; PRG $0B33E
  $9340: 8a          txa    ; PRG $0B340
  $9341: 65 09       adc $09    ; PRG $0B341
  $9343: 85 19       sta $19    ; PRG $0B343
  $9345: a2 0c       ldx #$0c    ; PRG $0B345
  $9347: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $0B347
  $934A: a0 18       ldy #$18    ; PRG $0B34A
  $934C: a2 0c       ldx #$0c    ; PRG $0B34C
  $934E: a9 14       lda #$14    ; PRG $0B34E
  $9350: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0B350
  $9353: a2 18       ldx #$18    ; PRG $0B353
  $9355: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $0B355
  $9358: a0 14       ldy #$14    ; PRG $0B358
  $935A: a2 18       ldx #$18    ; PRG $0B35A
  $935C: a9 10       lda #$10    ; PRG $0B35C
  $935E: 20 b4 e1    jsr $e1b4   ; alu_abs16    ; PRG $0B35E
  $9361: a2 18       ldx #$18    ; PRG $0B361
  $9363: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $0B363
  $9366: 18          clc    ; PRG $0B366
  $9367: a1 18       lda ($18,x)    ; PRG $0B367
  $9369: 65 10       adc $10    ; PRG $0B369
  $936B: 81 18       sta ($18,x)    ; PRG $0B36B
  $936D: b1 18       lda ($18),y    ; PRG $0B36D
  $936F: 65 11       adc $11    ; PRG $0B36F
  $9371: 91 18       sta ($18),y    ; PRG $0B371
  $9373: 18          clc    ; PRG $0B373
  $9374: a9 72       lda #$72    ; PRG $0B374
  $9376: 65 06       adc $06    ; PRG $0B376
  $9378: 85 18       sta $18    ; PRG $0B378
  $937A: 8a          txa    ; PRG $0B37A
  $937B: 65 07       adc $07    ; PRG $0B37B
  $937D: 85 19       sta $19    ; PRG $0B37D
  $937F: 84 14       sty $14    ; PRG $0B37F
  $9381: 86 15       stx $15    ; PRG $0B381
  $9383: a0 f2       ldy #$f2    ; PRG $0B383
  $9385: b1 06       lda ($06),y    ; PRG $0B385
  $9387: 85 10       sta $10    ; PRG $0B387
  $9389: c8          iny    ; PRG $0B389
  $938A: b1 06       lda ($06),y    ; PRG $0B38A
  $938C: 85 11       sta $11    ; PRG $0B38C
  $938E: a0 10       ldy #$10    ; PRG $0B38E
  $9390: a2 14       ldx #$14    ; PRG $0B390
  $9392: a9 0c       lda #$0c    ; PRG $0B392
  $9394: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0B394
  $9397: a9 04       lda #$04    ; PRG $0B397
  $9399: 85 14       sta $14    ; PRG $0B399
  $939B: 86 15       stx $15    ; PRG $0B39B
  $939D: a0 f4       ldy #$f4    ; PRG $0B39D
  $939F: b1 06       lda ($06),y    ; PRG $0B39F
  $93A1: 85 10       sta $10    ; PRG $0B3A1
  $93A3: c8          iny    ; PRG $0B3A3
  $93A4: b1 06       lda ($06),y    ; PRG $0B3A4
  $93A6: 85 11       sta $11    ; PRG $0B3A6
  $93A8: a0 10       ldy #$10    ; PRG $0B3A8
  $93AA: a2 14       ldx #$14    ; PRG $0B3AA
  $93AC: a9 08       lda #$08    ; PRG $0B3AC
  $93AE: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0B3AE
  $93B1: 18          clc    ; PRG $0B3B1
  $93B2: a5 08       lda $08    ; PRG $0B3B2
  $93B4: 65 0c       adc $0c    ; PRG $0B3B4
  $93B6: 85 14       sta $14    ; PRG $0B3B6
  $93B8: a5 09       lda $09    ; PRG $0B3B8
  $93BA: 65 0d       adc $0d    ; PRG $0B3BA
  $93BC: 85 15       sta $15    ; PRG $0B3BC
  $93BE: 18          clc    ; PRG $0B3BE
  $93BF: a5 14       lda $14    ; PRG $0B3BF
  $93C1: 65 18       adc $18    ; PRG $0B3C1
  $93C3: 85 10       sta $10    ; PRG $0B3C3
  $93C5: a5 15       lda $15    ; PRG $0B3C5
  $93C7: 65 19       adc $19    ; PRG $0B3C7
  $93C9: 85 11       sta $11    ; PRG $0B3C9
  $93CB: a0 66       ldy #$66    ; PRG $0B3CB
  $93CD: b1 06       lda ($06),y    ; PRG $0B3CD
  $93CF: 85 18       sta $18    ; PRG $0B3CF
  $93D1: c8          iny    ; PRG $0B3D1
  $93D2: b1 06       lda ($06),y    ; PRG $0B3D2
  $93D4: 85 19       sta $19    ; PRG $0B3D4
  $93D6: 18          clc    ; PRG $0B3D6
  $93D7: a1 10       lda ($10,x)    ; PRG $0B3D7
  $93D9: a0 04       ldy #$04    ; PRG $0B3D9
  $93DB: 71 18       adc ($18),y    ; PRG $0B3DB
  $93DD: 81 10       sta ($10,x)    ; PRG $0B3DD
  $93DF: a0 01       ldy #$01    ; PRG $0B3DF
  $93E1: b1 10       lda ($10),y    ; PRG $0B3E1
  $93E3: a0 05       ldy #$05    ; PRG $0B3E3
  $93E5: 71 18       adc ($18),y    ; PRG $0B3E5
  $93E7: a0 01       ldy #$01    ; PRG $0B3E7
  $93E9: 91 10       sta ($10),y    ; PRG $0B3E9
  $93EB: a0 66       ldy #$66    ; PRG $0B3EB
  $93ED: b1 06       lda ($06),y    ; PRG $0B3ED
  $93EF: 85 18       sta $18    ; PRG $0B3EF
  $93F1: c8          iny    ; PRG $0B3F1
  $93F2: b1 06       lda ($06),y    ; PRG $0B3F2
  $93F4: 85 19       sta $19    ; PRG $0B3F4
  $93F6: a0 0b       ldy #$0b    ; PRG $0B3F6
  $93F8: b1 18       lda ($18),y    ; PRG $0B3F8
  $93FA: 85 14       sta $14    ; PRG $0B3FA
  $93FC: 86 15       stx $15    ; PRG $0B3FC
  $93FE: a9 32       lda #$32    ; PRG $0B3FE
  $9400: c5 14       cmp $14    ; PRG $0B400
  $9402: 8a          txa    ; PRG $0B402
  $9403: e5 15       sbc $15    ; PRG $0B403
  $9405: 90 03       bcc $940a    ; PRG $0B405
  $9407: 4c 38 94    jmp $9438    ; PRG $0B407
  $940A: a0 66       ldy #$66    ; PRG $0B40A
  $940C: b1 06       lda ($06),y    ; PRG $0B40C
  $940E: 85 18       sta $18    ; PRG $0B40E
  $9410: c8          iny    ; PRG $0B410
  $9411: b1 06       lda ($06),y    ; PRG $0B411
  $9413: 85 19       sta $19    ; PRG $0B413
  $9415: a0 0b       ldy #$0b    ; PRG $0B415
  $9417: b1 18       lda ($18),y    ; PRG $0B417
  $9419: 85 14       sta $14    ; PRG $0B419
  $941B: 86 15       stx $15    ; PRG $0B41B
  $941D: 18          clc    ; PRG $0B41D
  $941E: a9 ce       lda #$ce    ; PRG $0B41E
  $9420: 65 14       adc $14    ; PRG $0B420
  $9422: 85 18       sta $18    ; PRG $0B422
  $9424: a9 ff       lda #$ff    ; PRG $0B424
  $9426: 65 15       adc $15    ; PRG $0B426
  $9428: 85 19       sta $19    ; PRG $0B428
  $942A: a5 18       lda $18    ; PRG $0B42A
  $942C: a0 f6       ldy #$f6    ; PRG $0B42C
  $942E: 91 06       sta ($06),y    ; PRG $0B42E
  $9430: a5 19       lda $19    ; PRG $0B430
  $9432: c8          iny    ; PRG $0B432
  $9433: 91 06       sta ($06),y    ; PRG $0B433
  $9435: 4c 62 94    jmp $9462    ; PRG $0B435
  $9438: a0 66       ldy #$66    ; PRG $0B438
  $943A: b1 06       lda ($06),y    ; PRG $0B43A
  $943C: 85 18       sta $18    ; PRG $0B43C
  $943E: c8          iny    ; PRG $0B43E
  $943F: b1 06       lda ($06),y    ; PRG $0B43F
  $9441: 85 19       sta $19    ; PRG $0B441
  $9443: a0 0b       ldy #$0b    ; PRG $0B443
  $9445: b1 18       lda ($18),y    ; PRG $0B445
  $9447: 85 14       sta $14    ; PRG $0B447
  $9449: 86 15       stx $15    ; PRG $0B449
  $944B: 38          sec    ; PRG $0B44B
  $944C: a9 32       lda #$32    ; PRG $0B44C
  $944E: e5 14       sbc $14    ; PRG $0B44E
  $9450: 85 18       sta $18    ; PRG $0B450
  $9452: 8a          txa    ; PRG $0B452
  $9453: e5 15       sbc $15    ; PRG $0B453
  $9455: 85 19       sta $19    ; PRG $0B455
  $9457: a5 18       lda $18    ; PRG $0B457
  $9459: a0 f6       ldy #$f6    ; PRG $0B459
  $945B: 91 06       sta ($06),y    ; PRG $0B45B
  $945D: a5 19       lda $19    ; PRG $0B45D
  $945F: c8          iny    ; PRG $0B45F
  $9460: 91 06       sta ($06),y    ; PRG $0B460
  $9462: a9 05       lda #$05    ; PRG $0B462
  $9464: a0 f6       ldy #$f6    ; PRG $0B464
  $9466: d1 06       cmp ($06),y    ; PRG $0B466
  $9468: 8a          txa    ; PRG $0B468
  $9469: c8          iny    ; PRG $0B469
  $946A: f1 06       sbc ($06),y    ; PRG $0B46A
  $946C: 90 03       bcc $9471    ; PRG $0B46C
  $946E: 4c 7a 94    jmp $947a    ; PRG $0B46E
  $9471: a9 05       lda #$05    ; PRG $0B471
  $9473: 85 18       sta $18    ; PRG $0B473
  $9475: 86 19       stx $19    ; PRG $0B475
  $9477: 4c 85 94    jmp $9485    ; PRG $0B477
  $947A: a0 f6       ldy #$f6    ; PRG $0B47A
  $947C: b1 06       lda ($06),y    ; PRG $0B47C
  $947E: 85 18       sta $18    ; PRG $0B47E
  $9480: c8          iny    ; PRG $0B480
  $9481: b1 06       lda ($06),y    ; PRG $0B481
  $9483: 85 19       sta $19    ; PRG $0B483
  $9485: a5 19       lda $19    ; PRG $0B485
  $9487: 48          pha    ; PRG $0B487
  $9488: a5 18       lda $18    ; PRG $0B488
  $948A: 48          pha    ; PRG $0B48A
  $948B: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0B48B
  $948E: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $0B48E
  $9491: 38          sec    ; PRG $0B491
  $9492: a0 f6       ldy #$f6    ; PRG $0B492
  $9494: b1 06       lda ($06),y    ; PRG $0B494
  $9496: e5 08       sbc $08    ; PRG $0B496
  $9498: 91 06       sta ($06),y    ; PRG $0B498
  $949A: c8          iny    ; PRG $0B49A
  $949B: b1 06       lda ($06),y    ; PRG $0B49B
  $949D: e5 09       sbc $09    ; PRG $0B49D
  $949F: 91 06       sta ($06),y    ; PRG $0B49F
  $94A1: a0 66       ldy #$66    ; PRG $0B4A1
  $94A3: b1 06       lda ($06),y    ; PRG $0B4A3
  $94A5: 85 18       sta $18    ; PRG $0B4A5
  $94A7: c8          iny    ; PRG $0B4A7
  $94A8: b1 06       lda ($06),y    ; PRG $0B4A8
  $94AA: 85 19       sta $19    ; PRG $0B4AA
  $94AC: 88          dey    ; PRG $0B4AC
  $94AD: b1 06       lda ($06),y    ; PRG $0B4AD
  $94AF: 85 14       sta $14    ; PRG $0B4AF
  $94B1: c8          iny    ; PRG $0B4B1
  $94B2: b1 06       lda ($06),y    ; PRG $0B4B2
  $94B4: 85 15       sta $15    ; PRG $0B4B4
  $94B6: a0 0b       ldy #$0b    ; PRG $0B4B6
  $94B8: b1 14       lda ($14),y    ; PRG $0B4B8
  $94BA: 85 10       sta $10    ; PRG $0B4BA
  $94BC: 86 11       stx $11    ; PRG $0B4BC
  $94BE: a9 32       lda #$32    ; PRG $0B4BE
  $94C0: c5 10       cmp $10    ; PRG $0B4C0
  $94C2: 8a          txa    ; PRG $0B4C2
  $94C3: e5 11       sbc $11    ; PRG $0B4C3
  $94C5: 90 03       bcc $94ca    ; PRG $0B4C5
  $94C7: 4c dc 94    jmp $94dc    ; PRG $0B4C7
  $94CA: 18          clc    ; PRG $0B4CA
  $94CB: a9 32       lda #$32    ; PRG $0B4CB
  $94CD: a0 f6       ldy #$f6    ; PRG $0B4CD
  $94CF: 71 06       adc ($06),y    ; PRG $0B4CF
  $94D1: 85 14       sta $14    ; PRG $0B4D1
  $94D3: 8a          txa    ; PRG $0B4D3
  $94D4: c8          iny    ; PRG $0B4D4
  $94D5: 71 06       adc ($06),y    ; PRG $0B4D5
  $94D7: 85 15       sta $15    ; PRG $0B4D7
  $94D9: 4c eb 94    jmp $94eb    ; PRG $0B4D9
  $94DC: 38          sec    ; PRG $0B4DC
  $94DD: a9 32       lda #$32    ; PRG $0B4DD
  $94DF: a0 f6       ldy #$f6    ; PRG $0B4DF
  $94E1: f1 06       sbc ($06),y    ; PRG $0B4E1
  $94E3: 85 14       sta $14    ; PRG $0B4E3
  $94E5: 8a          txa    ; PRG $0B4E5
  $94E6: c8          iny    ; PRG $0B4E6
  $94E7: f1 06       sbc ($06),y    ; PRG $0B4E7
  $94E9: 85 15       sta $15    ; PRG $0B4E9
  $94EB: a5 14       lda $14    ; PRG $0B4EB
  $94ED: a0 0b       ldy #$0b    ; PRG $0B4ED
  $94EF: 91 18       sta ($18),y    ; PRG $0B4EF
  $94F1: 4c 03 92    jmp $9203    ; PRG $0B4F1
  $94F4: 8a          txa    ; PRG $0B4F4
  $94F5: 48          pha    ; PRG $0B4F5
  $94F6: 48          pha    ; PRG $0B4F6
  $94F7: 48          pha    ; PRG $0B4F7
  $94F8: a9 06       lda #$06    ; PRG $0B4F8
  $94FA: 48          pha    ; PRG $0B4FA
  $94FB: 18          clc    ; PRG $0B4FB
  $94FC: a9 6c       lda #$6c    ; PRG $0B4FC
  $94FE: 65 06       adc $06    ; PRG $0B4FE
  $9500: 85 18       sta $18    ; PRG $0B500
  $9502: 8a          txa    ; PRG $0B502
  $9503: 65 07       adc $07    ; PRG $0B503
  $9505: 85 19       sta $19    ; PRG $0B505
  $9507: a5 19       lda $19    ; PRG $0B507
  $9509: 48          pha    ; PRG $0B509
  $950A: a5 18       lda $18    ; PRG $0B50A
  $950C: 48          pha    ; PRG $0B50C
  $950D: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0B50D
  $9510: 3a f3 08    .db $3a $f3 $08  -> vm $F33A argc 8    ; PRG $0B510
  $9513: 98          tya    ; PRG $0B513
  $9514: a0 fa       ldy #$fa    ; PRG $0B514
  $9516: 91 06       sta ($06),y    ; PRG $0B516
  $9518: 8a          txa    ; PRG $0B518
  $9519: c8          iny    ; PRG $0B519
  $951A: 91 06       sta ($06),y    ; PRG $0B51A
  $951C: 18          clc    ; PRG $0B51C
  $951D: a9 6c       lda #$6c    ; PRG $0B51D
  $951F: 65 06       adc $06    ; PRG $0B51F
  $9521: 85 18       sta $18    ; PRG $0B521
  $9523: 8a          txa    ; PRG $0B523
  $9524: 65 07       adc $07    ; PRG $0B524
  $9526: 85 19       sta $19    ; PRG $0B526
  $9528: a5 18       lda $18    ; PRG $0B528
  $952A: a0 6a       ldy #$6a    ; PRG $0B52A
  $952C: 91 06       sta ($06),y    ; PRG $0B52C
  $952E: a5 19       lda $19    ; PRG $0B52E
  $9530: c8          iny    ; PRG $0B530
  $9531: 91 06       sta ($06),y    ; PRG $0B531
  $9533: 18          clc    ; PRG $0B533
  $9534: a9 06       lda #$06    ; PRG $0B534
  $9536: 65 18       adc $18    ; PRG $0B536
  $9538: a0 68       ldy #$68    ; PRG $0B538
  $953A: 91 06       sta ($06),y    ; PRG $0B53A
  $953C: 8a          txa    ; PRG $0B53C
  $953D: 65 19       adc $19    ; PRG $0B53D
  $953F: c8          iny    ; PRG $0B53F
  $9540: 91 06       sta ($06),y    ; PRG $0B540
  $9542: 4c 63 95    jmp $9563    ; PRG $0B542
  $9545: 18          clc    ; PRG $0B545
  $9546: a9 01       lda #$01    ; PRG $0B546
  $9548: a0 fa       ldy #$fa    ; PRG $0B548
  $954A: 71 06       adc ($06),y    ; PRG $0B54A
  $954C: 91 06       sta ($06),y    ; PRG $0B54C
  $954E: 8a          txa    ; PRG $0B54E
  $954F: c8          iny    ; PRG $0B54F
  $9550: 71 06       adc ($06),y    ; PRG $0B550
  $9552: 91 06       sta ($06),y    ; PRG $0B552
  $9554: 18          clc    ; PRG $0B554
  $9555: a9 02       lda #$02    ; PRG $0B555
  $9557: a0 6a       ldy #$6a    ; PRG $0B557
  $9559: 71 06       adc ($06),y    ; PRG $0B559
  $955B: 91 06       sta ($06),y    ; PRG $0B55B
  $955D: 8a          txa    ; PRG $0B55D
  $955E: c8          iny    ; PRG $0B55E
  $955F: 71 06       adc ($06),y    ; PRG $0B55F
  $9561: 91 06       sta ($06),y    ; PRG $0B561
  $9563: a0 6a       ldy #$6a    ; PRG $0B563
  $9565: b1 06       lda ($06),y    ; PRG $0B565
  $9567: a0 68       ldy #$68    ; PRG $0B567
  $9569: d1 06       cmp ($06),y    ; PRG $0B569
  $956B: a0 6b       ldy #$6b    ; PRG $0B56B
  $956D: b1 06       lda ($06),y    ; PRG $0B56D
  $956F: a0 69       ldy #$69    ; PRG $0B56F
  $9571: f1 06       sbc ($06),y    ; PRG $0B571
  $9573: 90 03       bcc $9578    ; PRG $0B573
  $9575: 4c 99 97    jmp $9799    ; PRG $0B575
  $9578: 8a          txa    ; PRG $0B578
  $9579: a0 f8       ldy #$f8    ; PRG $0B579
  $957B: 91 06       sta ($06),y    ; PRG $0B57B
  $957D: c8          iny    ; PRG $0B57D
  $957E: 91 06       sta ($06),y    ; PRG $0B57E
  $9580: 4c 92 95    jmp $9592    ; PRG $0B580
  $9583: 18          clc    ; PRG $0B583
  $9584: a9 01       lda #$01    ; PRG $0B584
  $9586: a0 f8       ldy #$f8    ; PRG $0B586
  $9588: 71 06       adc ($06),y    ; PRG $0B588
  $958A: 91 06       sta ($06),y    ; PRG $0B58A
  $958C: 8a          txa    ; PRG $0B58C
  $958D: c8          iny    ; PRG $0B58D
  $958E: 71 06       adc ($06),y    ; PRG $0B58E
  $9590: 91 06       sta ($06),y    ; PRG $0B590
  $9592: a0 f8       ldy #$f8    ; PRG $0B592
  $9594: b1 06       lda ($06),y    ; PRG $0B594
  $9596: c9 05       cmp #$05    ; PRG $0B596
  $9598: c8          iny    ; PRG $0B598
  $9599: b1 06       lda ($06),y    ; PRG $0B599
  $959B: e9 00       sbc #$00    ; PRG $0B59B
  $959D: 90 03       bcc $95a2    ; PRG $0B59D
  $959F: 4c 86 96    jmp $9686    ; PRG $0B59F
  $95A2: 18          clc    ; PRG $0B5A2
  $95A3: a9 72       lda #$72    ; PRG $0B5A3
  $95A5: 65 06       adc $06    ; PRG $0B5A5
  $95A7: 85 18       sta $18    ; PRG $0B5A7
  $95A9: 8a          txa    ; PRG $0B5A9
  $95AA: 65 07       adc $07    ; PRG $0B5AA
  $95AC: 85 19       sta $19    ; PRG $0B5AC
  $95AE: a9 01       lda #$01    ; PRG $0B5AE
  $95B0: 85 14       sta $14    ; PRG $0B5B0
  $95B2: 86 15       stx $15    ; PRG $0B5B2
  $95B4: 88          dey    ; PRG $0B5B4
  $95B5: b1 06       lda ($06),y    ; PRG $0B5B5
  $95B7: 85 10       sta $10    ; PRG $0B5B7
  $95B9: c8          iny    ; PRG $0B5B9
  $95BA: b1 06       lda ($06),y    ; PRG $0B5BA
  $95BC: 85 11       sta $11    ; PRG $0B5BC
  $95BE: a0 10       ldy #$10    ; PRG $0B5BE
  $95C0: a2 14       ldx #$14    ; PRG $0B5C0
  $95C2: a9 0c       lda #$0c    ; PRG $0B5C2
  $95C4: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0B5C4
  $95C7: a9 04       lda #$04    ; PRG $0B5C7
  $95C9: 85 14       sta $14    ; PRG $0B5C9
  $95CB: 86 15       stx $15    ; PRG $0B5CB
  $95CD: a0 fa       ldy #$fa    ; PRG $0B5CD
  $95CF: b1 06       lda ($06),y    ; PRG $0B5CF
  $95D1: 85 10       sta $10    ; PRG $0B5D1
  $95D3: c8          iny    ; PRG $0B5D3
  $95D4: b1 06       lda ($06),y    ; PRG $0B5D4
  $95D6: 85 11       sta $11    ; PRG $0B5D6
  $95D8: a0 10       ldy #$10    ; PRG $0B5D8
  $95DA: a2 14       ldx #$14    ; PRG $0B5DA
  $95DC: a9 08       lda #$08    ; PRG $0B5DC
  $95DE: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0B5DE
  $95E1: 18          clc    ; PRG $0B5E1
  $95E2: a5 08       lda $08    ; PRG $0B5E2
  $95E4: 65 0c       adc $0c    ; PRG $0B5E4
  $95E6: 85 14       sta $14    ; PRG $0B5E6
  $95E8: a5 09       lda $09    ; PRG $0B5E8
  $95EA: 65 0d       adc $0d    ; PRG $0B5EA
  $95EC: 85 15       sta $15    ; PRG $0B5EC
  $95EE: 18          clc    ; PRG $0B5EE
  $95EF: a5 14       lda $14    ; PRG $0B5EF
  $95F1: 65 18       adc $18    ; PRG $0B5F1
  $95F3: 85 10       sta $10    ; PRG $0B5F3
  $95F5: a5 15       lda $15    ; PRG $0B5F5
  $95F7: 65 19       adc $19    ; PRG $0B5F7
  $95F9: 85 11       sta $11    ; PRG $0B5F9
  $95FB: a9 2b       lda #$2b    ; PRG $0B5FB
  $95FD: c1 10       cmp ($10,x)    ; PRG $0B5FD
  $95FF: 98          tya    ; PRG $0B5FF
  $9600: f1 10       sbc ($10),y    ; PRG $0B600
  $9602: 90 03       bcc $9607    ; PRG $0B602
  $9604: 4c 86 96    jmp $9686    ; PRG $0B604
  $9607: a0 6a       ldy #$6a    ; PRG $0B607
  $9609: b1 06       lda ($06),y    ; PRG $0B609
  $960B: 85 18       sta $18    ; PRG $0B60B
  $960D: c8          iny    ; PRG $0B60D
  $960E: b1 06       lda ($06),y    ; PRG $0B60E
  $9610: 85 19       sta $19    ; PRG $0B610
  $9612: 18          clc    ; PRG $0B612
  $9613: a9 b2       lda #$b2    ; PRG $0B613
  $9615: 65 06       adc $06    ; PRG $0B615
  $9617: 85 14       sta $14    ; PRG $0B617
  $9619: 8a          txa    ; PRG $0B619
  $961A: 65 07       adc $07    ; PRG $0B61A
  $961C: 85 15       sta $15    ; PRG $0B61C
  $961E: a9 01       lda #$01    ; PRG $0B61E
  $9620: 85 10       sta $10    ; PRG $0B620
  $9622: 86 11       stx $11    ; PRG $0B622
  $9624: a0 f8       ldy #$f8    ; PRG $0B624
  $9626: b1 06       lda ($06),y    ; PRG $0B626
  $9628: 85 0c       sta $0c    ; PRG $0B628
  $962A: c8          iny    ; PRG $0B62A
  $962B: b1 06       lda ($06),y    ; PRG $0B62B
  $962D: 85 0d       sta $0d    ; PRG $0B62D
  $962F: a0 0c       ldy #$0c    ; PRG $0B62F
  $9631: a2 10       ldx #$10    ; PRG $0B631
  $9633: a9 08       lda #$08    ; PRG $0B633
  $9635: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0B635
  $9638: a9 04       lda #$04    ; PRG $0B638
  $963A: 85 10       sta $10    ; PRG $0B63A
  $963C: 86 11       stx $11    ; PRG $0B63C
  $963E: a0 fa       ldy #$fa    ; PRG $0B63E
  $9640: b1 06       lda ($06),y    ; PRG $0B640
  $9642: 85 0c       sta $0c    ; PRG $0B642
  $9644: c8          iny    ; PRG $0B644
  $9645: b1 06       lda ($06),y    ; PRG $0B645
  $9647: 85 0d       sta $0d    ; PRG $0B647
  $9649: a2 18       ldx #$18    ; PRG $0B649
  $964B: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $0B64B
  $964E: a0 0c       ldy #$0c    ; PRG $0B64E
  $9650: a2 10       ldx #$10    ; PRG $0B650
  $9652: a9 18       lda #$18    ; PRG $0B652
  $9654: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0B654
  $9657: 18          clc    ; PRG $0B657
  $9658: a5 18       lda $18    ; PRG $0B658
  $965A: 65 08       adc $08    ; PRG $0B65A
  $965C: 85 10       sta $10    ; PRG $0B65C
  $965E: a5 19       lda $19    ; PRG $0B65E
  $9660: 65 09       adc $09    ; PRG $0B660
  $9662: 85 11       sta $11    ; PRG $0B662
  $9664: 18          clc    ; PRG $0B664
  $9665: a5 10       lda $10    ; PRG $0B665
  $9667: 65 14       adc $14    ; PRG $0B667
  $9669: 85 18       sta $18    ; PRG $0B669
  $966B: a5 11       lda $11    ; PRG $0B66B
  $966D: 65 15       adc $15    ; PRG $0B66D
  $966F: 85 19       sta $19    ; PRG $0B66F
  $9671: a2 14       ldx #$14    ; PRG $0B671
  $9673: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $0B673
  $9676: 18          clc    ; PRG $0B676
  $9677: a1 14       lda ($14,x)    ; PRG $0B677
  $9679: 61 18       adc ($18,x)    ; PRG $0B679
  $967B: 81 14       sta ($14,x)    ; PRG $0B67B
  $967D: b1 14       lda ($14),y    ; PRG $0B67D
  $967F: 71 18       adc ($18),y    ; PRG $0B67F
  $9681: 91 14       sta ($14),y    ; PRG $0B681
  $9683: 4c 83 95    jmp $9583   ; duel_9583    ; PRG $0B683
  $9686: a9 05       lda #$05    ; PRG $0B686
  $9688: a0 f8       ldy #$f8    ; PRG $0B688
  $968A: 91 06       sta ($06),y    ; PRG $0B68A
  $968C: 8a          txa    ; PRG $0B68C
  $968D: c8          iny    ; PRG $0B68D
  $968E: 91 06       sta ($06),y    ; PRG $0B68E
  $9690: 4c a2 96    jmp $96a2    ; PRG $0B690
  $9693: 18          clc    ; PRG $0B693
  $9694: a9 01       lda #$01    ; PRG $0B694
  $9696: a0 f8       ldy #$f8    ; PRG $0B696
  $9698: 71 06       adc ($06),y    ; PRG $0B698
  $969A: 91 06       sta ($06),y    ; PRG $0B69A
  $969C: 8a          txa    ; PRG $0B69C
  $969D: c8          iny    ; PRG $0B69D
  $969E: 71 06       adc ($06),y    ; PRG $0B69E
  $96A0: 91 06       sta ($06),y    ; PRG $0B6A0
  $96A2: a0 f8       ldy #$f8    ; PRG $0B6A2
  $96A4: b1 06       lda ($06),y    ; PRG $0B6A4
  $96A6: c9 07       cmp #$07    ; PRG $0B6A6
  $96A8: c8          iny    ; PRG $0B6A8
  $96A9: b1 06       lda ($06),y    ; PRG $0B6A9
  $96AB: e9 00       sbc #$00    ; PRG $0B6AB
  $96AD: 90 03       bcc $96b2    ; PRG $0B6AD
  $96AF: 4c 96 97    jmp $9796    ; PRG $0B6AF
  $96B2: 18          clc    ; PRG $0B6B2
  $96B3: a9 72       lda #$72    ; PRG $0B6B3
  $96B5: 65 06       adc $06    ; PRG $0B6B5
  $96B7: 85 18       sta $18    ; PRG $0B6B7
  $96B9: 8a          txa    ; PRG $0B6B9
  $96BA: 65 07       adc $07    ; PRG $0B6BA
  $96BC: 85 19       sta $19    ; PRG $0B6BC
  $96BE: a9 01       lda #$01    ; PRG $0B6BE
  $96C0: 85 14       sta $14    ; PRG $0B6C0
  $96C2: 86 15       stx $15    ; PRG $0B6C2
  $96C4: 88          dey    ; PRG $0B6C4
  $96C5: b1 06       lda ($06),y    ; PRG $0B6C5
  $96C7: 85 10       sta $10    ; PRG $0B6C7
  $96C9: c8          iny    ; PRG $0B6C9
  $96CA: b1 06       lda ($06),y    ; PRG $0B6CA
  $96CC: 85 11       sta $11    ; PRG $0B6CC
  $96CE: a0 10       ldy #$10    ; PRG $0B6CE
  $96D0: a2 14       ldx #$14    ; PRG $0B6D0
  $96D2: a9 0c       lda #$0c    ; PRG $0B6D2
  $96D4: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0B6D4
  $96D7: a9 04       lda #$04    ; PRG $0B6D7
  $96D9: 85 14       sta $14    ; PRG $0B6D9
  $96DB: 86 15       stx $15    ; PRG $0B6DB
  $96DD: a0 fa       ldy #$fa    ; PRG $0B6DD
  $96DF: b1 06       lda ($06),y    ; PRG $0B6DF
  $96E1: 85 10       sta $10    ; PRG $0B6E1
  $96E3: c8          iny    ; PRG $0B6E3
  $96E4: b1 06       lda ($06),y    ; PRG $0B6E4
  $96E6: 85 11       sta $11    ; PRG $0B6E6
  $96E8: a0 10       ldy #$10    ; PRG $0B6E8
  $96EA: a2 14       ldx #$14    ; PRG $0B6EA
  $96EC: a9 08       lda #$08    ; PRG $0B6EC
  $96EE: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0B6EE
  $96F1: 18          clc    ; PRG $0B6F1
  $96F2: a5 08       lda $08    ; PRG $0B6F2
  $96F4: 65 0c       adc $0c    ; PRG $0B6F4
  $96F6: 85 14       sta $14    ; PRG $0B6F6
  $96F8: a5 09       lda $09    ; PRG $0B6F8
  $96FA: 65 0d       adc $0d    ; PRG $0B6FA
  $96FC: 85 15       sta $15    ; PRG $0B6FC
  $96FE: 18          clc    ; PRG $0B6FE
  $96FF: a5 14       lda $14    ; PRG $0B6FF
  $9701: 65 18       adc $18    ; PRG $0B701
  $9703: 85 10       sta $10    ; PRG $0B703
  $9705: a5 15       lda $15    ; PRG $0B705
  $9707: 65 19       adc $19    ; PRG $0B707
  $9709: 85 11       sta $11    ; PRG $0B709
  $970B: a9 2b       lda #$2b    ; PRG $0B70B
  $970D: c1 10       cmp ($10,x)    ; PRG $0B70D
  $970F: 98          tya    ; PRG $0B70F
  $9710: f1 10       sbc ($10),y    ; PRG $0B710
  $9712: 90 03       bcc $9717    ; PRG $0B712
  $9714: 4c 93 97    jmp $9793    ; PRG $0B714
  $9717: a0 6a       ldy #$6a    ; PRG $0B717
  $9719: b1 06       lda ($06),y    ; PRG $0B719
  $971B: 85 18       sta $18    ; PRG $0B71B
  $971D: c8          iny    ; PRG $0B71D
  $971E: b1 06       lda ($06),y    ; PRG $0B71E
  $9720: 85 19       sta $19    ; PRG $0B720
  $9722: 18          clc    ; PRG $0B722
  $9723: a9 b2       lda #$b2    ; PRG $0B723
  $9725: 65 06       adc $06    ; PRG $0B725
  $9727: 85 14       sta $14    ; PRG $0B727
  $9729: 8a          txa    ; PRG $0B729
  $972A: 65 07       adc $07    ; PRG $0B72A
  $972C: 85 15       sta $15    ; PRG $0B72C
  $972E: a9 01       lda #$01    ; PRG $0B72E
  $9730: 85 10       sta $10    ; PRG $0B730
  $9732: 86 11       stx $11    ; PRG $0B732
  $9734: a0 f8       ldy #$f8    ; PRG $0B734
  $9736: b1 06       lda ($06),y    ; PRG $0B736
  $9738: 85 0c       sta $0c    ; PRG $0B738
  $973A: c8          iny    ; PRG $0B73A
  $973B: b1 06       lda ($06),y    ; PRG $0B73B
  $973D: 85 0d       sta $0d    ; PRG $0B73D
  $973F: a0 0c       ldy #$0c    ; PRG $0B73F
  $9741: a2 10       ldx #$10    ; PRG $0B741
  $9743: a9 08       lda #$08    ; PRG $0B743
  $9745: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0B745
  $9748: a9 04       lda #$04    ; PRG $0B748
  $974A: 85 10       sta $10    ; PRG $0B74A
  $974C: 86 11       stx $11    ; PRG $0B74C
  $974E: a0 fa       ldy #$fa    ; PRG $0B74E
  $9750: b1 06       lda ($06),y    ; PRG $0B750
  $9752: 85 0c       sta $0c    ; PRG $0B752
  $9754: c8          iny    ; PRG $0B754
  $9755: b1 06       lda ($06),y    ; PRG $0B755
  $9757: 85 0d       sta $0d    ; PRG $0B757
  $9759: a2 18       ldx #$18    ; PRG $0B759
  $975B: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $0B75B
  $975E: a0 0c       ldy #$0c    ; PRG $0B75E
  $9760: a2 10       ldx #$10    ; PRG $0B760
  $9762: a9 18       lda #$18    ; PRG $0B762
  $9764: 20 f0 e3    jsr $e3f0   ; alu_shl16_n    ; PRG $0B764
  $9767: 18          clc    ; PRG $0B767
  $9768: a5 18       lda $18    ; PRG $0B768
  $976A: 65 08       adc $08    ; PRG $0B76A
  $976C: 85 10       sta $10    ; PRG $0B76C
  $976E: a5 19       lda $19    ; PRG $0B76E
  $9770: 65 09       adc $09    ; PRG $0B770
  $9772: 85 11       sta $11    ; PRG $0B772
  $9774: 18          clc    ; PRG $0B774
  $9775: a5 10       lda $10    ; PRG $0B775
  $9777: 65 14       adc $14    ; PRG $0B777
  $9779: 85 18       sta $18    ; PRG $0B779
  $977B: a5 11       lda $11    ; PRG $0B77B
  $977D: 65 15       adc $15    ; PRG $0B77D
  $977F: 85 19       sta $19    ; PRG $0B77F
  $9781: a2 14       ldx #$14    ; PRG $0B781
  $9783: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $0B783
  $9786: 18          clc    ; PRG $0B786
  $9787: a1 14       lda ($14,x)    ; PRG $0B787
  $9789: 61 18       adc ($18,x)    ; PRG $0B789
  $978B: 81 14       sta ($14,x)    ; PRG $0B78B
  $978D: b1 14       lda ($14),y    ; PRG $0B78D
  $978F: 71 18       adc ($18),y    ; PRG $0B78F
  $9791: 91 14       sta ($14),y    ; PRG $0B791
  $9793: 4c 93 96    jmp $9693    ; PRG $0B793
  $9796: 4c 45 95    jmp $9545    ; PRG $0B796
  $9799: 8a          txa    ; PRG $0B799
  $979A: a0 fa       ldy #$fa    ; PRG $0B79A
  $979C: 91 06       sta ($06),y    ; PRG $0B79C
  $979E: c8          iny    ; PRG $0B79E
  $979F: 91 06       sta ($06),y    ; PRG $0B79F
  $97A1: a9 bc       lda #$bc    ; PRG $0B7A1
  $97A3: a0 62       ldy #$62    ; PRG $0B7A3
  $97A5: 91 06       sta ($06),y    ; PRG $0B7A5
  $97A7: a9 6f       lda #$6f    ; PRG $0B7A7
  $97A9: c8          iny    ; PRG $0B7A9
  $97AA: 91 06       sta ($06),y    ; PRG $0B7AA
  $97AC: 18          clc    ; PRG $0B7AC
  $97AD: a9 6c       lda #$6c    ; PRG $0B7AD
  $97AF: 65 06       adc $06    ; PRG $0B7AF
  $97B1: 85 18       sta $18    ; PRG $0B7B1
  $97B3: 8a          txa    ; PRG $0B7B3
  $97B4: 65 07       adc $07    ; PRG $0B7B4
  $97B6: 85 19       sta $19    ; PRG $0B7B6
  $97B8: a5 18       lda $18    ; PRG $0B7B8
  $97BA: a0 6a       ldy #$6a    ; PRG $0B7BA
  $97BC: 91 06       sta ($06),y    ; PRG $0B7BC
  $97BE: a5 19       lda $19    ; PRG $0B7BE
  $97C0: c8          iny    ; PRG $0B7C0
  $97C1: 91 06       sta ($06),y    ; PRG $0B7C1
  $97C3: 18          clc    ; PRG $0B7C3
  $97C4: a9 06       lda #$06    ; PRG $0B7C4
  $97C6: 65 18       adc $18    ; PRG $0B7C6
  $97C8: a0 68       ldy #$68    ; PRG $0B7C8
  $97CA: 91 06       sta ($06),y    ; PRG $0B7CA
  $97CC: 8a          txa    ; PRG $0B7CC
  $97CD: 65 19       adc $19    ; PRG $0B7CD
  $97CF: c8          iny    ; PRG $0B7CF
  $97D0: 91 06       sta ($06),y    ; PRG $0B7D0
  $97D2: 4c 02 98    jmp $9802    ; PRG $0B7D2
  $97D5: 18          clc    ; PRG $0B7D5
  $97D6: a9 04       lda #$04    ; PRG $0B7D6
  $97D8: a0 62       ldy #$62    ; PRG $0B7D8
  $97DA: 71 06       adc ($06),y    ; PRG $0B7DA
  $97DC: 91 06       sta ($06),y    ; PRG $0B7DC
  $97DE: 8a          txa    ; PRG $0B7DE
  $97DF: c8          iny    ; PRG $0B7DF
  $97E0: 71 06       adc ($06),y    ; PRG $0B7E0
  $97E2: 91 06       sta ($06),y    ; PRG $0B7E2
  $97E4: 18          clc    ; PRG $0B7E4
  $97E5: a9 01       lda #$01    ; PRG $0B7E5
  $97E7: a0 fa       ldy #$fa    ; PRG $0B7E7
  $97E9: 71 06       adc ($06),y    ; PRG $0B7E9
  $97EB: 91 06       sta ($06),y    ; PRG $0B7EB
  $97ED: 8a          txa    ; PRG $0B7ED
  $97EE: c8          iny    ; PRG $0B7EE
  $97EF: 71 06       adc ($06),y    ; PRG $0B7EF
  $97F1: 91 06       sta ($06),y    ; PRG $0B7F1
  $97F3: 18          clc    ; PRG $0B7F3
  $97F4: a9 02       lda #$02    ; PRG $0B7F4
  $97F6: a0 6a       ldy #$6a    ; PRG $0B7F6
  $97F8: 71 06       adc ($06),y    ; PRG $0B7F8
  $97FA: 91 06       sta ($06),y    ; PRG $0B7FA
  $97FC: 8a          txa    ; PRG $0B7FC
  $97FD: c8          iny    ; PRG $0B7FD
  $97FE: 71 06       adc ($06),y    ; PRG $0B7FE
  $9800: 91 06       sta ($06),y    ; PRG $0B800
  $9802: a0 6a       ldy #$6a    ; PRG $0B802
  $9804: b1 06       lda ($06),y    ; PRG $0B804
  $9806: a0 68       ldy #$68    ; PRG $0B806
  $9808: d1 06       cmp ($06),y    ; PRG $0B808
  $980A: a0 6b       ldy #$6b    ; PRG $0B80A
  $980C: b1 06       lda ($06),y    ; PRG $0B80C
  $980E: a0 69       ldy #$69    ; PRG $0B80E
  $9810: f1 06       sbc ($06),y    ; PRG $0B810
  $9812: 90 03       bcc $9817    ; PRG $0B812
  $9814: 4c 8f 98    jmp $988f    ; PRG $0B814
  $9817: a0 62       ldy #$62    ; PRG $0B817
  $9819: b1 06       lda ($06),y    ; PRG $0B819
  $981B: 85 18       sta $18    ; PRG $0B81B
  $981D: c8          iny    ; PRG $0B81D
  $981E: b1 06       lda ($06),y    ; PRG $0B81E
  $9820: 85 19       sta $19    ; PRG $0B820
  $9822: a2 18       ldx #$18    ; PRG $0B822
  $9824: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $0B824
  $9827: a9 c3       lda #$c3    ; PRG $0B827
  $9829: 48          pha    ; PRG $0B829
  $982A: a9 50       lda #$50    ; PRG $0B82A
  $982C: 48          pha    ; PRG $0B82C
  $982D: a9 19       lda #$19    ; PRG $0B82D
  $982F: 85 18       sta $18    ; PRG $0B82F
  $9831: 86 19       stx $19    ; PRG $0B831
  $9833: a0 6a       ldy #$6a    ; PRG $0B833
  $9835: b1 06       lda ($06),y    ; PRG $0B835
  $9837: 85 14       sta $14    ; PRG $0B837
  $9839: c8          iny    ; PRG $0B839
  $983A: b1 06       lda ($06),y    ; PRG $0B83A
  $983C: 85 15       sta $15    ; PRG $0B83C
  $983E: a1 14       lda ($14,x)    ; PRG $0B83E
  $9840: 85 10       sta $10    ; PRG $0B840
  $9842: a0 01       ldy #$01    ; PRG $0B842
  $9844: b1 14       lda ($14),y    ; PRG $0B844
  $9846: 85 11       sta $11    ; PRG $0B846
  $9848: a0 10       ldy #$10    ; PRG $0B848
  $984A: a2 18       ldx #$18    ; PRG $0B84A
  $984C: a9 14       lda #$14    ; PRG $0B84C
  $984E: 20 d9 e1    jsr $e1d9   ; alu_div_push_remainder    ; PRG $0B84E
  $9851: a2 14       ldx #$14    ; PRG $0B851
  $9853: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $0B853
  $9856: a0 fb       ldy #$fb    ; PRG $0B856
  $9858: b1 06       lda ($06),y    ; PRG $0B858
  $985A: 48          pha    ; PRG $0B85A
  $985B: 88          dey    ; PRG $0B85B
  $985C: b1 06       lda ($06),y    ; PRG $0B85C
  $985E: 48          pha    ; PRG $0B85E
  $985F: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0B85F
  $9862: 63 8e 04    .db $63 $8e $04  -> vm $8E63 argc 4    ; PRG $0B862
  $9865: a2 14       ldx #$14    ; PRG $0B865
  $9867: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $0B867
  $986A: a0 08       ldy #$08    ; PRG $0B86A
  $986C: a2 14       ldx #$14    ; PRG $0B86C
  $986E: a9 18       lda #$18    ; PRG $0B86E
  $9870: 20 77 e1    jsr $e177   ; alu_mul16    ; PRG $0B870
  $9873: a5 19       lda $19    ; PRG $0B873
  $9875: 48          pha    ; PRG $0B875
  $9876: a5 18       lda $18    ; PRG $0B876
  $9878: 48          pha    ; PRG $0B878
  $9879: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0B879
  $987C: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $0B87C
  $987F: a2 18       ldx #$18    ; PRG $0B87F
  $9881: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $0B881
  $9884: a5 08       lda $08    ; PRG $0B884
  $9886: 81 18       sta ($18,x)    ; PRG $0B886
  $9888: a5 09       lda $09    ; PRG $0B888
  $988A: 91 18       sta ($18),y    ; PRG $0B88A
  $988C: 4c d5 97    jmp $97d5   ; combat_d5    ; PRG $0B88C
  $988F: 60          rts    ; PRG $0B88F

; ---- sub_5_1896  [stub]  <- (entry: bytecode/OS via $E299)
nat_5_1890: jsr $E299                    ; 5:9890  native-call prologue
            .db $00 $fa $ff            ; inline: argcount $00, frame $fffa
  $9896: a9 6e       lda #$6e    ; PRG $0B896
  $9898: a0 fc       ldy #$fc    ; PRG $0B898
  $989A: 91 06       sta ($06),y    ; PRG $0B89A
  $989C: a9 6a       lda #$6a    ; PRG $0B89C
  $989E: c8          iny    ; PRG $0B89E
  $989F: 91 06       sta ($06),y    ; PRG $0B89F
  $98A1: 18          clc    ; PRG $0B8A1
  $98A2: a9 14       lda #$14    ; PRG $0B8A2
  $98A4: 69 6e       adc #$6e    ; PRG $0B8A4
  $98A6: a0 fa       ldy #$fa    ; PRG $0B8A6
  $98A8: 91 06       sta ($06),y    ; PRG $0B8A8
  $98AA: 8a          txa    ; PRG $0B8AA
  $98AB: 69 6a       adc #$6a    ; PRG $0B8AB
  $98AD: c8          iny    ; PRG $0B8AD
  $98AE: 91 06       sta ($06),y    ; PRG $0B8AE
  $98B0: 4c c2 98    jmp $98c2    ; PRG $0B8B0
  $98B3: 18          clc    ; PRG $0B8B3
  $98B4: a9 02       lda #$02    ; PRG $0B8B4
  $98B6: a0 fc       ldy #$fc    ; PRG $0B8B6
  $98B8: 71 06       adc ($06),y    ; PRG $0B8B8
  $98BA: 91 06       sta ($06),y    ; PRG $0B8BA
  $98BC: 8a          txa    ; PRG $0B8BC
  $98BD: c8          iny    ; PRG $0B8BD
  $98BE: 71 06       adc ($06),y    ; PRG $0B8BE
  $98C0: 91 06       sta ($06),y    ; PRG $0B8C0
  $98C2: a0 fc       ldy #$fc    ; PRG $0B8C2
  $98C4: b1 06       lda ($06),y    ; PRG $0B8C4
  $98C6: a0 fa       ldy #$fa    ; PRG $0B8C6
  $98C8: d1 06       cmp ($06),y    ; PRG $0B8C8
  $98CA: a0 fd       ldy #$fd    ; PRG $0B8CA
  $98CC: b1 06       lda ($06),y    ; PRG $0B8CC
  $98CE: a0 fb       ldy #$fb    ; PRG $0B8CE
  $98D0: f1 06       sbc ($06),y    ; PRG $0B8D0
  $98D2: 90 03       bcc $98d7    ; PRG $0B8D2
  $98D4: 4c 8d 99    jmp $998d    ; PRG $0B8D4
  $98D7: c8          iny    ; PRG $0B8D7
  $98D8: b1 06       lda ($06),y    ; PRG $0B8D8
  $98DA: 85 18       sta $18    ; PRG $0B8DA
  $98DC: c8          iny    ; PRG $0B8DC
  $98DD: b1 06       lda ($06),y    ; PRG $0B8DD
  $98DF: 85 19       sta $19    ; PRG $0B8DF
  $98E1: a0 01       ldy #$01    ; PRG $0B8E1
  $98E3: b1 18       lda ($18),y    ; PRG $0B8E3
  $98E5: 85 14       sta $14    ; PRG $0B8E5
  $98E7: 86 15       stx $15    ; PRG $0B8E7
  $98E9: a5 14       lda $14    ; PRG $0B8E9
  $98EB: c9 ff       cmp #$ff    ; PRG $0B8EB
  $98ED: d0 04       bne $98f3    ; PRG $0B8ED
  $98EF: a5 15       lda $15    ; PRG $0B8EF
  $98F1: c9 00       cmp #$00    ; PRG $0B8F1
  $98F3: d0 03       bne $98f8    ; PRG $0B8F3
  $98F5: 4c 8a 99    jmp $998a    ; PRG $0B8F5
  $98F8: 8a          txa    ; PRG $0B8F8
  $98F9: 48          pha    ; PRG $0B8F9
  $98FA: a9 03       lda #$03    ; PRG $0B8FA
  $98FC: 48          pha    ; PRG $0B8FC
  $98FD: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0B8FD
  $9900: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $0B900
  $9903: a0 fc       ldy #$fc    ; PRG $0B903
  $9905: b1 06       lda ($06),y    ; PRG $0B905
  $9907: 85 18       sta $18    ; PRG $0B907
  $9909: c8          iny    ; PRG $0B909
  $990A: b1 06       lda ($06),y    ; PRG $0B90A
  $990C: 85 19       sta $19    ; PRG $0B90C
  $990E: a0 01       ldy #$01    ; PRG $0B90E
  $9910: b1 18       lda ($18),y    ; PRG $0B910
  $9912: 85 14       sta $14    ; PRG $0B912
  $9914: 86 15       stx $15    ; PRG $0B914
  $9916: 18          clc    ; PRG $0B916
  $9917: a5 14       lda $14    ; PRG $0B917
  $9919: 65 08       adc $08    ; PRG $0B919
  $991B: 85 18       sta $18    ; PRG $0B91B
  $991D: a5 15       lda $15    ; PRG $0B91D
  $991F: 65 09       adc $09    ; PRG $0B91F
  $9921: 85 19       sta $19    ; PRG $0B921
  $9923: 18          clc    ; PRG $0B923
  $9924: a9 ff       lda #$ff    ; PRG $0B924
  $9926: 65 18       adc $18    ; PRG $0B926
  $9928: a0 fe       ldy #$fe    ; PRG $0B928
  $992A: 91 06       sta ($06),y    ; PRG $0B92A
  $992C: a9 ff       lda #$ff    ; PRG $0B92C
  $992E: 65 19       adc $19    ; PRG $0B92E
  $9930: c8          iny    ; PRG $0B930
  $9931: 91 06       sta ($06),y    ; PRG $0B931
  $9933: b1 06       lda ($06),y    ; PRG $0B933
  $9935: 30 03       bmi $993a    ; PRG $0B935
  $9937: 4c 46 99    jmp $9946    ; PRG $0B937
  $993A: a9 31       lda #$31    ; PRG $0B93A
  $993C: 88          dey    ; PRG $0B93C
  $993D: 91 06       sta ($06),y    ; PRG $0B93D
  $993F: 8a          txa    ; PRG $0B93F
  $9940: c8          iny    ; PRG $0B940
  $9941: 91 06       sta ($06),y    ; PRG $0B941
  $9943: 4c 78 99    jmp $9978    ; PRG $0B943
  $9946: a9 31       lda #$31    ; PRG $0B946
  $9948: a0 fe       ldy #$fe    ; PRG $0B948
  $994A: d1 06       cmp ($06),y    ; PRG $0B94A
  $994C: 8a          txa    ; PRG $0B94C
  $994D: c8          iny    ; PRG $0B94D
  $994E: f1 06       sbc ($06),y    ; PRG $0B94E
  $9950: 70 04       bvs $9956    ; PRG $0B950
  $9952: 30 07       bmi $995b    ; PRG $0B952
  $9954: 10 02       bpl $9958    ; PRG $0B954
  $9956: 10 03       bpl $995b    ; PRG $0B956
  $9958: 4c 62 99    jmp $9962   ; combat_get_ship_class    ; PRG $0B958
  $995B: 86 18       stx $18    ; PRG $0B95B
  $995D: 86 19       stx $19    ; PRG $0B95D
  $995F: 4c 6d 99    jmp $996d    ; PRG $0B95F
  $9962: a0 fe       ldy #$fe    ; PRG $0B962
  $9964: b1 06       lda ($06),y    ; PRG $0B964
  $9966: 85 18       sta $18    ; PRG $0B966
  $9968: c8          iny    ; PRG $0B968
  $9969: b1 06       lda ($06),y    ; PRG $0B969
  $996B: 85 19       sta $19    ; PRG $0B96B
  $996D: a5 18       lda $18    ; PRG $0B96D
  $996F: a0 fe       ldy #$fe    ; PRG $0B96F
  $9971: 91 06       sta ($06),y    ; PRG $0B971
  $9973: a5 19       lda $19    ; PRG $0B973
  $9975: c8          iny    ; PRG $0B975
  $9976: 91 06       sta ($06),y    ; PRG $0B976
  $9978: a0 fc       ldy #$fc    ; PRG $0B978
  $997A: b1 06       lda ($06),y    ; PRG $0B97A
  $997C: 85 18       sta $18    ; PRG $0B97C
  $997E: c8          iny    ; PRG $0B97E
  $997F: b1 06       lda ($06),y    ; PRG $0B97F
  $9981: 85 19       sta $19    ; PRG $0B981
  $9983: c8          iny    ; PRG $0B983
  $9984: b1 06       lda ($06),y    ; PRG $0B984
  $9986: a0 01       ldy #$01    ; PRG $0B986
  $9988: 91 18       sta ($18),y    ; PRG $0B988
  $998A: 4c b3 98    jmp $98b3    ; PRG $0B98A
  $998D: 60          rts    ; PRG $0B98D

; ---- sub_5_1994  [stub]  <- (entry: bytecode/OS via $E299)
nat_5_198e: jsr $E299                    ; 5:998E  native-call prologue
            .db $00 $fc $ff            ; inline: argcount $00, frame $fffc
  $9994: a9 2c       lda #$2c    ; PRG $0B994
  $9996: a0 fe       ldy #$fe    ; PRG $0B996
  $9998: 91 06       sta ($06),y    ; PRG $0B998
  $999A: a9 65       lda #$65    ; PRG $0B99A
  $999C: c8          iny    ; PRG $0B99C
  $999D: 91 06       sta ($06),y    ; PRG $0B99D
  $999F: 18          clc    ; PRG $0B99F
  $99A0: a9 14       lda #$14    ; PRG $0B9A0
  $99A2: 69 2c       adc #$2c    ; PRG $0B9A2
  $99A4: a0 fc       ldy #$fc    ; PRG $0B9A4
  $99A6: 91 06       sta ($06),y    ; PRG $0B9A6
  $99A8: 8a          txa    ; PRG $0B9A8
  $99A9: 69 65       adc #$65    ; PRG $0B9A9
  $99AB: c8          iny    ; PRG $0B9AB
  $99AC: 91 06       sta ($06),y    ; PRG $0B9AC
  $99AE: 4c c0 99    jmp $99c0    ; PRG $0B9AE
  $99B1: 18          clc    ; PRG $0B9B1
  $99B2: a9 01       lda #$01    ; PRG $0B9B2
  $99B4: a0 fe       ldy #$fe    ; PRG $0B9B4
  $99B6: 71 06       adc ($06),y    ; PRG $0B9B6
  $99B8: 91 06       sta ($06),y    ; PRG $0B9B8
  $99BA: 8a          txa    ; PRG $0B9BA
  $99BB: c8          iny    ; PRG $0B9BB
  $99BC: 71 06       adc ($06),y    ; PRG $0B9BC
  $99BE: 91 06       sta ($06),y    ; PRG $0B9BE
  $99C0: a0 fe       ldy #$fe    ; PRG $0B9C0
  $99C2: b1 06       lda ($06),y    ; PRG $0B9C2
  $99C4: a0 fc       ldy #$fc    ; PRG $0B9C4
  $99C6: d1 06       cmp ($06),y    ; PRG $0B9C6
  $99C8: a0 ff       ldy #$ff    ; PRG $0B9C8
  $99CA: b1 06       lda ($06),y    ; PRG $0B9CA
  $99CC: a0 fd       ldy #$fd    ; PRG $0B9CC
  $99CE: f1 06       sbc ($06),y    ; PRG $0B9CE
  $99D0: 90 03       bcc $99d5    ; PRG $0B9D0
  $99D2: 4c 2d 9a    jmp $9a2d    ; PRG $0B9D2
  $99D5: c8          iny    ; PRG $0B9D5
  $99D6: b1 06       lda ($06),y    ; PRG $0B9D6
  $99D8: 85 18       sta $18    ; PRG $0B9D8
  $99DA: c8          iny    ; PRG $0B9DA
  $99DB: b1 06       lda ($06),y    ; PRG $0B9DB
  $99DD: 85 19       sta $19    ; PRG $0B9DD
  $99DF: a2 18       ldx #$18    ; PRG $0B9DF
  $99E1: 20 95 e3    jsr $e395   ; vm_pop_operand16    ; PRG $0B9E1
  $99E4: a0 fe       ldy #$fe    ; PRG $0B9E4
  $99E6: b1 06       lda ($06),y    ; PRG $0B9E6
  $99E8: 85 18       sta $18    ; PRG $0B9E8
  $99EA: c8          iny    ; PRG $0B9EA
  $99EB: b1 06       lda ($06),y    ; PRG $0B9EB
  $99ED: 85 19       sta $19    ; PRG $0B9ED
  $99EF: a1 18       lda ($18,x)    ; PRG $0B9EF
  $99F1: 85 14       sta $14    ; PRG $0B9F1
  $99F3: 86 15       stx $15    ; PRG $0B9F3
  $99F5: a5 15       lda $15    ; PRG $0B9F5
  $99F7: 48          pha    ; PRG $0B9F7
  $99F8: a5 14       lda $14    ; PRG $0B9F8
  $99FA: 48          pha    ; PRG $0B9FA
  $99FB: 8a          txa    ; PRG $0B9FB
  $99FC: 48          pha    ; PRG $0B9FC
  $99FD: a9 04       lda #$04    ; PRG $0B9FD
  $99FF: 48          pha    ; PRG $0B9FF
  $9A00: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0BA00
  $9A03: e1 cf 04    .db $e1 $cf $04  -> vm $CFE1 argc 4    ; PRG $0BA03
  $9A06: 18          clc    ; PRG $0BA06
  $9A07: a9 05       lda #$05    ; PRG $0BA07
  $9A09: 65 08       adc $08    ; PRG $0BA09
  $9A0B: 85 18       sta $18    ; PRG $0BA0B
  $9A0D: 8a          txa    ; PRG $0BA0D
  $9A0E: 65 09       adc $09    ; PRG $0BA0E
  $9A10: 85 19       sta $19    ; PRG $0BA10
  $9A12: a5 19       lda $19    ; PRG $0BA12
  $9A14: 48          pha    ; PRG $0BA14
  $9A15: a5 18       lda $18    ; PRG $0BA15
  $9A17: 48          pha    ; PRG $0BA17
  $9A18: 20 38 e3    jsr $e338   ; call_vm_from_native    ; PRG $0BA18
  $9A1B: 6c dd 06    .db $6c $dd $06  -> vm $DD6C argc 6    ; PRG $0BA1B
  $9A1E: a2 18       ldx #$18    ; PRG $0BA1E
  $9A20: 20 ba e3    jsr $e3ba   ; vm_push_result16    ; PRG $0BA20
  $9A23: 38          sec    ; PRG $0BA23
  $9A24: a1 18       lda ($18,x)    ; PRG $0BA24
  $9A26: e5 08       sbc $08    ; PRG $0BA26
  $9A28: 81 18       sta ($18,x)    ; PRG $0BA28
  $9A2A: 4c b1 99    jmp $99b1    ; PRG $0BA2A
  $9A2D: 60          rts    ; PRG $0BA2D
