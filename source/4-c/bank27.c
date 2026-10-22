// Decompiled from source/2-asm-vm\bank27.asm sub $8003
// $8003 poker_init
// (body @ $8008)

word poker_init(word arg1) {
    *(byte*)&local11 = 0;    // $8009
    goto L_8054;    // $800D
L_8010:
    if (*(byte*)(fp - 3)) {    // $8013
    if ((*(byte*)(fp - 3) != 3)) {    // $801B
    if ((*(byte*)(fp - 3) != 2)) {    // $8023
    if (((1 << *(byte*)(fp - 3)) & mem_7066)) {    // $8033
    *(byte*)((*(byte*)&local11 + &local7)) = *(byte*)((*(byte*)(fp - 3) + 0x9A7A));    // $8048
    *(byte*)&local11 = (*(byte*)&local11 + 1);    // $804D
    }
    }
    }
    }
L_8050:
L_8054:
    *(byte*)(fp - 3) = (*(byte*)(fp - 3) + 1);    // $8054
    if (((unsigned)*(byte*)(fp - 3) < (unsigned)8)) goto L_8010;    // $805C
    *(byte*)(fp - 1) = 0;    // $8060
    goto L_80A6;    // $8064
L_8067:
    *(byte*)&local10 = load_operand16_14(*(byte*)&local11);    // $806F
    if (((1 << *(byte*)&local10) & *(byte*)(fp - 1))) goto L_8067;    // $807F
    *(byte*)((*(byte*)(fp - 3) + arg1)) = *(byte*)((*(byte*)&local10 + &local7));    // $8092
    *(byte*)(fp - 1) = (*(byte*)(fp - 1) | (1 << *(byte*)&local10));    // $809F
L_80A6:
    *(byte*)(fp - 3) = (*(byte*)(fp - 3) + 1);    // $80A6
    if (((unsigned)*(byte*)(fp - 3) < (unsigned)3)) goto L_8067;    // $80AE
    *(byte*)((arg1 + 3)) = 0;    // $80B5
    return 0;    // $80B6
}

// Decompiled from source/2-asm-vm\bank27.asm sub $80B7
// $80B7 poker_card_rank
// (body @ $80BC)

word poker_card_rank(word arg1, word arg2, word arg3) {
    *(byte*)(fp - 1) = (((unsigned)*(byte*)&arg1 >> 4) & 15);    // $80C3
    if ((*(byte*)(fp - 1) == 12)) {    // $80D1
    phi_push_80dc = 0;    // $80D5
    } else {
    phi_push_80dc = (*(byte*)(fp - 1) + 1);    // $80DB
    }
L_80DC:
    return bj_draw_card(*(byte*)&arg2, *(byte*)&arg3, phi_push_80dc, (*(byte*)&arg1 & 15));    // $80F0
    }
}

// Decompiled from source/2-asm-vm\bank27.asm sub $80F1
// $80F1 poker_deal_card
// (body @ $80F6)

word poker_deal_card(word arg1, word arg2, word arg3) {
    if ((arg3 == 1)) {    // $80F9
    phi_ret_812f = bj_blit_card_2x3(arg1, arg2);    // $8109
    } else {
    arg3 = (arg3 - 2);    // $8110
    phi_ret_812f = syscall_id09_syscall_banked_blit_m3(arg1, arg2, 3, 3, *(word*)((((arg3 << 1) << 1) + 0x9A82)), *(word*)((((arg3 << 1) << 1) + 0x9A84)), 226);    // $812B
    }
L_812F:
    return phi_ret_812f;    // $812F
    }
}

// Decompiled from source/2-asm-vm\bank27.asm sub $8130
// $8130 poker_setup_hand
// (body @ $8135)

word poker_setup_hand(word arg1, word arg2) {
    copy_from_bank_dc80(&local9, 4, 0);    // $813B
    local8 = 1;    // $8140
    do {    // $8141
        *(byte*)(((*(byte*)((arg1 + local8)) & 15) + &local9)) = (*(byte*)(((*(byte*)((arg1 + local8)) & 15) + &local9)) + 1);    // $8150
        local8 = (local8 + 1);    // $8153
    } while (((unsigned)local8 < (unsigned)5));    // $8157
    *(byte*)(fp - 1) = 0;    // $815B
    phi_val_8184 = 0;    // $815F
    while (((unsigned)local8 < (unsigned)4)) {    // $8184
        if (((unsigned)*(byte*)(fp - 1) < (unsigned)*(byte*)((local8 + &local9)))) {    // $8170
        *(byte*)(fp - 1) = *(byte*)((local8 + &local9));    // $817B
        *(byte*)&local11 = local8;    // $817F
        }
L_8182:
        phi_val_8184 = (local8 + 1);    // $8183
        local8 = phi_val_8184;    // $8184
    }
    local8 = 0;    // $818C
    local7 = 0;    // $818D
    while (((unsigned)local8 < (unsigned)5)) {    // $81B7
        if (((*(byte*)((arg1 + local8)) & 15) != *(byte*)&local11)) {    // $819D
        *(byte*)((arg2 + local7)) = *(byte*)((arg1 + local8));    // $81A8
        *(byte*)((arg1 + local8)) = 255;    // $81B0
        local7 = (local7 + 1);    // $81B3
        }
L_81B4:
        local8 = (local8 + 1);    // $81B6
    }
    return local7;    // $81BE
}

// Decompiled from source/2-asm-vm\bank27.asm sub $81BF
// $81BF poker_eval_card
// (body @ $81C4)

word poker_eval_card(word arg1, word arg2) {
    *(word*)(fp - 5) = 0;    // $81C5
    *(byte*)(fp - 1) = ((unsigned)*(byte*)(arg1) >> 4);    // $81CB
    while (((unsigned)*(word*)(fp - 3) < (unsigned)5)) {    // $821C
        if ((!((((unsigned)*(byte*)((arg1 + *(word*)(fp - 3))) >> 4) != (*(byte*)(fp - 1) + 1))) || !((((unsigned)*(byte*)((arg1 + *(word*)(fp - 3))) >> 4) != (*(byte*)(fp - 1) + 2))))) {    // $81F1
        *(byte*)((arg2 + *(word*)(fp - 5))) = *(byte*)(((arg1 + *(word*)(fp - 3)) - 1));    // $81FF
        *(byte*)(((arg1 + *(word*)(fp - 3)) - 1)) = 255;    // $8209
        *(word*)(fp - 5) = (*(word*)(fp - 5) + 1);    // $820D
        }
L_820F:
        *(byte*)(fp - 1) = ((unsigned)*(byte*)((arg1 + *(word*)(fp - 3))) >> 4);    // $8216
        *(word*)(fp - 3) = (*(word*)(fp - 3) + 1);    // $821C
    }
    return *(word*)(fp - 5);    // $8227
}

// Decompiled from source/2-asm-vm\bank27.asm sub $8228
// $8228 poker_load_deck
// (body @ $822D)

word poker_load_deck(word arg1, word arg2) {
    copy_from_bank_dc80((fp - 13), 13, 0);    // $8233
    local0 = 0;    // $8238
    do {    // $8239
        *(byte*)(((((unsigned)*(byte*)((arg1 + local0)) >> 4) & 15) + (fp - 13))) = (*(byte*)(((((unsigned)*(byte*)((arg1 + local0)) >> 4) & 15) + (fp - 13))) + 1);    // $824A
        local0 = (local0 + 1);    // $824D
    } while (((unsigned)local0 < (unsigned)5));    // $8251
    local0 = 0;    // $8255
    *(word*)(fp - 26) = 0;    // $8256
    while (((unsigned)local0 < (unsigned)5)) {    // $8289
        if ((*(byte*)(((((unsigned)*(byte*)((arg1 + local0)) >> 4) & 15) + (fp - 13))) == 1)) {    // $826C
        *(byte*)((arg2 + *(word*)(fp - 26))) = *(byte*)((arg1 + local0));    // $8278
        *(byte*)((arg1 + local0)) = 255;    // $8280
        *(word*)(fp - 26) = (*(word*)(fp - 26) + 1);    // $8284
        }
L_8286:
        local0 = (local0 + 1);    // $8288
    }
    return *(word*)(fp - 26);    // $8291
}

// Decompiled from source/2-asm-vm\bank27.asm sub $8292
// $8292 poker_shuffle
// (body @ $8297)

word poker_shuffle(word arg1) {
    *(byte*)(fp - 1) = (load_operand16_14(5) ? 4 : 5);    // $82A4
    copy_from_bank_dc80(arg1, *(byte*)(fp - 1), 255);    // $82AF
    return *(byte*)(fp - 1);    // $82B6
}

// Decompiled from source/2-asm-vm\bank27.asm sub $82B7
// $82B7 poker_score_hand
// (body @ $82BC)

word poker_score_hand(word arg1, word arg2) {
    *(word*)(fp - 13) = poker_read_hand(arg1, (fp - 9));    // $82C5
    *(byte*)&local7 = *(byte*)(fp - 9);    // $82CA
    if (!(!(*(word*)(fp - 13)))) return 0;    // $82CF
    if (!((*(byte*)&local7 == 80))) goto L_82EC;    // $82DA
    if (!(load_operand16_14(3))) return poker_setup_hand(arg1, arg2);    // $82E2
    if (!((*(byte*)&local7 == 60))) goto L_8304;    // $82F2
    if (!(load_operand16_14(4))) return poker_setup_hand(arg1, arg2);    // $82FA
    *(word*)(fp - 13) = poker_loop_977b(arg1, (fp - 9));    // $830D
    *(byte*)(fp - 11) = *(byte*)(fp - 9);    // $8312
    if (!(!(*(word*)(fp - 13)))) return 0;    // $8317
    if (!((*(byte*)(fp - 9) == 80))) goto L_8334;    // $8322
    if (!(load_operand16_14(4))) return poker_eval_card(arg1, arg2);    // $832A
    if (!(((unsigned)*(byte*)(fp - 9) >= (unsigned)60))) goto L_834C;    // $833A
    if (!(load_operand16_14(3))) return poker_eval_card(arg1, arg2);    // $8342
    poker_load_hand(arg1, (fp - 9));    // $8351
    if (*(byte*)(fp - 5)) goto L_836F;    // $8358
    if (!((!(*(byte*)&local9) || !(*(byte*)(fp - 7))))) goto L_836F;    // $8364
    if ((*(byte*)(fp - 7) == 2)) {    // $836C
L_836F:
    return poker_load_deck(arg1, arg2);    // $8375
    }
L_8376:
    if (!(!((*(byte*)&local9 || *(byte*)(fp - 7))))) return poker_load_deck(arg1, arg2);    // $837F
    if ((((unsigned)*(byte*)&local7 >= (unsigned)80) || ((unsigned)*(byte*)(fp - 11) >= (unsigned)60))) {    // $8398
    if (load_operand16_14(2)) {    // $83A0
    if ((!(((unsigned)*(byte*)&local7 <= (unsigned)(*(byte*)(fp - 11) + 20))))) return poker_setup_hand(arg1, arg2);    // $83AE
    return poker_eval_card(arg1, arg2);    // $83BE
    }
    }
L_83BF:
    return poker_shuffle(arg1, arg2);    // $83C5
}

// Decompiled from source/2-asm-vm\bank27.asm sub $83C6
// $83C6 poker_draw_area
// (body @ $83CB)

word poker_draw_area(word arg1, word arg2) {
    mem_728A = 16;    // $83CD
    blit_alloc_tiles(15, 17, 16, 8, 0);    // $83D7
    syscall_id09_syscall_banked_blit_m3(15, 17, 15, 7, 0xA6CC, 0xA735, 231);    // $83EA
    set_tile_cursor(16, 18);    // $83F2
    *(word*)(fp - 3) = draw_labeled_value(0x9A92, arg1, arg2, 1);    // $8400
    blit_free_tiles(15, 17, 16, 8, 0);    // $8409
    mem_728A = 0;    // $840E
    return *(word*)(fp - 3);    // $8413
}

// Decompiled from source/2-asm-vm\bank27.asm sub $8414
// $8414 poker_get_score
// (body @ $8419)

word poker_get_score(word arg1, word arg2) {
    *(byte*)(fp - 1) = poker_score_hand(arg1, arg2);    // $841F
    return *(byte*)(fp - 1);    // $8425
}

// Decompiled from source/2-asm-vm\bank27.asm sub $8426
// $8426 draw_card_sprite
// (body @ $842B)

word draw_card_sprite(word arg1, word arg2) {
    return syscall_id09_syscall_banked_blit_m3(((arg1 << 1) + 9), (23 - arg2), 2, 2, 0xB09E, 0xB0A2, 226);    // $8444
}

// Decompiled from source/2-asm-vm\bank27.asm sub $8445
// $8445 clear_card_sprite
// (body @ $844A)

word clear_card_sprite(word arg1, word arg2) {
    return syscall_id08_syscall_queue_ppu_transfer(((arg1 << 1) + 9), (23 - arg2), 2, 2, 0, 0);    // $845C
}

// Decompiled from source/2-asm-vm\bank27.asm sub $845D
// $845D poker_play_round
// (body @ $8462)

word poker_play_round(word arg1, word arg2) {
    mem_729C = 0;    // $8463
    local7 = 0;    // $8467
    copy_from_bank_dc80(&local9, 5, 0);    // $846E
    syscall_id08_syscall_queue_ppu_transfer(10, 24, 8, 1, 0, 0);    // $847A
    *(byte*)(fp - 1) = frame_sync(0);    // $8483
    helper_ce4d(*(byte*)(fp - 1), 8);    // $848B
    do {    // $848F
        clear_card_sprite(local7, 0);    // $8491
        draw_card_sprite(local7, 0);    // $8497
        scale_x6(3);    // $849C
    } while ((syscall_id16_syscall_read_controller(0) == 1));    // $84A9
    local8 = 8;    // $84AD
    while (1) {    // $84AE
L_84AE:
        *(byte*)(fp - 1) = frame_sync(0);    // $84B3
        helper_ce4d(*(byte*)(fp - 1), local8);    // $84BB
        switch (*(byte*)(fp - 1)) {    // $84C2
            case 16: goto L_84D7;    // $84C2
            case 32: goto L_84D7;    // $84C2
            case 64: goto L_8592;    // $84C2
            case 128: goto L_8580;    // $84C2
            default: goto L_856C;    // $84C2
        }    // $84C2
L_84D7:
        if ((mem_729C & (1 << local7))) {    // $84E0
        clear_card_sprite(local7, 0);    // $84E5
        draw_card_sprite(local7, 1);    // $84EB
        scale_x6(2);    // $84F0
        poker_card_rank(*(byte*)((arg1 + local7)), ((local7 << 1) + 9), 20);    // $84FF
        mem_729C = (mem_729C & ((1 << local7) ^ 255));    // $850F
        *(byte*)((local7 + &local9)) = 0;    // $851B
        } else {
        clear_card_sprite(local7, 0);    // $8521
        poker_card_rank(*(byte*)((arg1 + local7)), ((local7 << 1) + 9), 19);    // $8530
        mem_729C = (mem_729C | (1 << local7));    // $853C
        *(byte*)((local7 + &local9)) = 1;    // $8548
        draw_card_sprite(local7, *(byte*)((local7 + &local9)));    // $8553
        scale_x6(2);    // $8558
        }
L_856A:
        clear_card_sprite(local7, *(byte*)((local7 + &local9)));    // $8566
        local8 = 8;    // $856B
L_856C:
        draw_card_sprite(local7, 0);    // $856E
        if ((*(byte*)(fp - 1) != 1)) continue;    // $8577
        local6 = 0;    // $857B
        phi_val_85c7 = 0;    // $857D
        goto L_85C7;    // $857D
L_8580:
        if (!(((unsigned)local7 < (unsigned)4))) goto L_856A;    // $8583
        clear_card_sprite(local7, 0);    // $8588
        phi_val_858e = (local7 + 1);    // $858D
L_858E:
        local7 = phi_val_858e;    // $858E
        goto L_856A;    // $858F
L_8592:
        if (!(((unsigned)local7 > (unsigned)0))) goto L_856A;    // $8595
        clear_card_sprite(local7, 0);    // $859A
        phi_val_858e = (local7 - 1);    // $85A0
        goto L_858E;    // $85A0
    }
L_85A3:
    if (((1 << local8) & mem_729C)) {    // $85AE
    *(byte*)((arg2 + local6)) = *(byte*)((arg1 + local8));    // $85B9
    *(byte*)((arg1 + local8)) = 255;    // $85C1
    local6 = (local6 + 1);    // $85C4
    }
L_85C5:
    phi_val_85c7 = (local8 + 1);    // $85C6
L_85C7:
    local8 = phi_val_85c7;    // $85C7
    if (((unsigned)local8 < (unsigned)5)) goto L_85A3;    // $85CB
    poker_loop_96a3(arg1);    // $85CF
    clear_card_sprite(local7, 0);    // $85D5
    return local6;    // $85DA
        }
}

// Decompiled from source/2-asm-vm\bank27.asm sub $85DB
// $85DB poker_ai_decide
// (body @ $85E0)

word poker_ai_decide(word arg1, word arg2, word arg3, word arg4, word arg5, word arg6, word arg7) {
    local11 = 0x9A9C;    // $85E3
    *(byte*)(fp - 3) = 3;    // $85E5
    if ((!(((unsigned)arg1 <= (unsigned)(*(word*)(arg2) + *(word*)(arg3)))))) return 0;    // $85F3
    if (*(byte*)&arg5) {    // $85FB
    local11 = 0x9A9E;    // $8601
    *(byte*)(fp - 3) = 2;    // $8603
    }
L_8606:
    local9 = 0;    // $8607
    local8 = 0;    // $8608
    goto L_8621;    // $8609
L_860C:
    if ((local9 != 3)) {    // $860F
    if (*(word*)(((local9 << 1) + arg7))) goto L_861E;    // $8618
    local8 = (local8 + 1);    // $861D
    }
L_861E:
    local9 = (local9 + 1);    // $8620
L_8621:
    if (((unsigned)local9 < (unsigned)4)) goto L_860C;    // $8624
L_8627:
    local6 = 0;    // $8628
    if ((local8 == 3)) goto L_866D;    // $862C
L_863A:
    blit_alloc_tiles(21, 17, 10, 8, 0);    // $8636
    *(byte*)&local10 = draw_banked_menu(21, 17, *(byte*)(fp - 3), local11, 2);    // $8648
    if ((*(byte*)&local10 == 255)) goto L_863A;    // $8652
    blit_free_tiles(21, 17, 10, 8, 0);    // $865C
    if (*(byte*)&arg5) {    // $8663
    goto L_866E;    // $866A
L_866D:
L_866E:
    *(byte*)&local10 = 1;    // $866E
    }
L_8671:
    if (*(byte*)&local10) goto L_86AD;    // $8674
    local7 = poker_draw_area(arg1, max_s16(*(word*)(arg3), arg6));    // $8686
    if ((local7 == 1)) goto L_86A8;    // $868B
L_8692:
    local7 = (local7 - *(word*)(arg2));    // $8693
L_8694:
    if (local6) goto L_8627;    // $8695
    *(word*)(arg2) = (*(word*)(arg2) + local7);    // $869E
    *(word*)(arg3) = (*(word*)(arg3) - local7);    // $86A5
    return 1;    // $86A7
L_86A8:
    local6 = 1;    // $86A9
    goto L_8694;    // $86AA
L_86AD:
    if (!((*(byte*)&local10 == 1))) goto L_86BD;    // $86B2
    goto L_8692;    // $86BA
L_86BD:
    if (!((*(byte*)&local10 == 2))) goto L_8694;    // $86C2
    return 0;    // $86C6
}

// Decompiled from source/2-asm-vm\bank27.asm sub $86C7
// $86C7 poker_round_flow
// (body @ $86CC)

word poker_round_flow(word arg1, word arg2, word arg3, word arg4, word arg5, word arg6, word arg7, word arg8, word arg9) {
    *(word*)(fp - 13) = 0;    // $86CD
    *(word*)(fp - 15) = 0;    // $86CF
    while (((unsigned)*(word*)(fp - 13) < (unsigned)4)) {    // $86F1
        if ((*(byte*)&arg6 != *(word*)(fp - 13))) {    // $86DA
        if (*(word*)(((*(word*)(fp - 13) << 1) + arg9))) goto L_86EC;    // $86E4
        *(word*)(fp - 15) = (*(word*)(fp - 15) + 1);    // $86EA
        }
L_86EC:
        *(word*)(fp - 13) = (*(word*)(fp - 13) + 1);    // $86EF
    }
    if (!((*(word*)(fp - 15) != 3))) goto L_886C;    // $86FC
    if ((!(((unsigned)(*(word*)(arg2) + *(word*)(arg3)) >= (unsigned)arg1)))) return 0;    // $8708
    *(word*)(fp - 13) = 0;    // $870E
    do {    // $8710
        *(word*)(((*(word*)(fp - 13) << 1) + (fp - 25))) = poker_main(((*(word*)(fp - 13) * 5) + arg4), &local7, 0);    // $872A
        *(word*)(fp - 13) = (*(word*)(fp - 13) + 1);    // $872E
    } while (((unsigned)*(word*)(fp - 13) < (unsigned)4));    // $8734
    *(byte*)(fp - 11) = 0;    // $8738
    *(word*)(fp - 27) = *(word*)(fp - 25);    // $873D
    while (((unsigned)*(word*)(fp - 13) < (unsigned)4)) {    // $8769
        if ((*(word*)(fp - 27) < *(word*)(((*(word*)(fp - 13) << 1) + (fp - 25))))) {    // $8752
        *(word*)(fp - 27) = *(word*)(((*(word*)(fp - 13) << 1) + (fp - 25)));    // $875F
        *(byte*)(fp - 11) = *(word*)(fp - 13);    // $8763
        }
L_8766:
        *(word*)(fp - 13) = (*(word*)(fp - 13) + 1);    // $8769
    }
    *(word*)(fp - 17) = poker_main(((*(byte*)&arg6 * 5) + arg4), &local7, 0);    // $8783
    *(byte*)(fp - 1) = *(byte*)&local7;    // $8788
    if (!(((*(byte*)(fp - 1) == 255) || (*(byte*)(fp - 11) == 3)))) goto L_87F0;    // $879A
    if (!((*(byte*)(fp - 11) != 3))) goto L_87AD;    // $87A2
    if (load_operand16_14(3)) goto L_87BD;    // $87AA
L_87AD:
    if (!((*(byte*)(fp - 11) == 3))) goto L_8806;    // $87B2
    if (!(load_operand16_14(2))) goto L_8806;    // $87BA
L_87BD:
    if (!(((unsigned)(load_operand16_14(*(word*)(arg2)) + (*(word*)(arg2) << 1)) < (unsigned)arg1))) goto L_87D9;    // $87CC
    if (!(!(load_operand16_14(3)))) return 0;    // $87D4
    if ((*(word*)(arg2) == arg1)) {    // $87DD
    }
L_87EB:
    poker_dispatch(*(byte*)&arg6, 1, arg7);    // $87E7
    return (*(word*)(arg2) == arg1);    // $87EF
L_87F0:
    if (!(load_operand16_14(*(word*)(((*(byte*)(fp - 1) << 1) + 0x9AB2))))) return (*(word*)(arg2) == arg1);    // $87FE
    if (*(byte*)&arg5) goto L_885A;    // $8809
    if ((*(byte*)(fp - 1) == 255)) {    // $8813
    load_operand16_14(15);    // $8817
    } else {
    }
L_882A:
    *(word*)(fp - 29) = (load_operand16_14(15) + (*(word*)(fp - 17) / 8));    // $882A
    if (((unsigned)*(word*)(fp - 29) > (unsigned)(arg1 * 3))) {    // $8834
    *(word*)(fp - 29) = ((unsigned)*(word*)(fp - 29) >> 1);    // $883B
    }
L_883D:
    if ((*(byte*)(fp - 11) == *(byte*)&arg6)) {    // $8846
    if (load_operand16_14(3)) {    // $884E
    load_operand16_14(arg8);    // $8853
    goto L_8860;    // $8857
L_885A:
L_8860:
    *(word*)(fp - 29) = (arg1 - *(word*)(arg2));    // $8860
    }
    }
L_8862:
    if (((unsigned)(*(word*)(arg2) + *(word*)(fp - 29)) < (unsigned)arg1)) {    // $8869
L_886C:
    *(word*)(fp - 29) = (arg1 - *(word*)(arg2));    // $8872
    }
L_8874:
    if (((unsigned)(*(word*)(arg2) + *(word*)(fp - 29)) > (unsigned)arg8)) {    // $887C
    *(word*)(fp - 29) = (arg8 - *(word*)(arg2));    // $8886
    }
L_8888:
    if (((unsigned)(*(word*)(arg2) + *(word*)(fp - 29)) > (unsigned)arg1)) {    // $888F
    } else {
    }
L_889B:
    poker_dispatch(*(byte*)&arg6, 1, arg7);    // $889F
    *(word*)(arg2) = (*(word*)(arg2) + *(word*)(fp - 29));    // $88AA
    if (((unsigned)*(word*)(arg3) < (unsigned)*(word*)(fp - 29))) {    // $88B0
    } else {
    }
L_88BF:
    *(word*)(arg3) = (*(word*)(arg3) - *(word*)(fp - 29));    // $88BF
    return 1;    // $88C1
    }
    }
    }
}

// Decompiled from source/2-asm-vm\bank27.asm sub $88C2
// $88C2 poker_deal_to_seat
// (body @ $88C7)

word poker_deal_to_seat(word arg1) {
    poker_deal_card(*(byte*)(((*(byte*)&arg1 << 1) + 0x9AC6)), *(byte*)(((*(byte*)&arg1 << 1) + 0x9AC7)), 5);    // $88DC
    local10 = (*(byte*)&arg1 ? -11 : 4);    // $88EC
    local11 = 0;    // $88EE
    do {    // $88EF
        bj_clear_card(((*(byte*)(((*(byte*)&arg1 << 1) + 0x9AC6)) + (local11 << 1)) + local10), *(byte*)(((*(byte*)&arg1 << 1) + 0x9AC7)));    // $8911
        local11 = (local11 + 1);    // $8917
    } while (((unsigned)local11 < (unsigned)5));    // $891B
    return ((unsigned)local11 < (unsigned)5);    // $891E
}

// Decompiled from source/2-asm-vm\bank27.asm sub $891F
// $891F poker_bet_screen
// (body @ $8924)

word poker_bet_screen(void) {
    poker_init((fp - 153));    // $8928
    *(word*)(fp - 135) = 0;    // $892D
L_8930:
    *(word*)(((*(word*)(fp - 135) << 1) + (fp - 105))) = 0;    // $893C
    *(word*)(((*(word*)(fp - 135) << 1) + (fp - 123))) = (load_operand16_14(0x03E8) + 1000);    // $8952
    *(word*)(fp - 135) = (*(word*)(fp - 135) + 1);    // $8957
    if (((unsigned)*(word*)(fp - 135) < (unsigned)3)) goto L_8930;    // $895F
    *(word*)(fp - 125) = (((*(word*)(((current_port * 14) + 0x67B2)) / 100) * 100) / 4);    // $8974
    *(word*)(fp - 99) = 0;    // $8977
    *(word*)(fp - 117) = mem_666B;    // $897C
    bj_loop_8b62((fp - 52));    // $8989
    *(byte*)(fp - 89) = load_operand16_14(4);    // $8992
L_8995:
    *(byte*)(fp - 88) = 0;    // $8996
    *(byte*)(fp - 91) = ((*(byte*)(fp - 89) + 1) & 3);    // $899F
    goto L_8A43;    // $89A3
L_89A6:
    *(word*)(((*(byte*)(fp - 91) << 1) + (fp - 147))) = 1;    // $89B2
    if (!(((unsigned)*(word*)(((*(byte*)(fp - 91) << 1) + (fp - 123))) < (unsigned)(load_operand16_14(15) + 60)))) goto L_89EE;    // $89C8
    if (!((*(byte*)(fp - 91) == 3))) goto L_89DB;    // $89D0
    poker_draw_box(1);    // $89D4
    goto L_89E8;    // $89D8
L_89DB:
L_89E8:
    poker_dispatch(*(byte*)(fp - 91), 7, (fp - 153));    // $89E4
    mem_666B = *(word*)(fp - 117);    // $89EA
    return *(word*)(fp - 117);    // $89ED
L_89EE:
    *(word*)(((*(byte*)(fp - 91) << 1) + (fp - 115))) = 5;    // $89FA
    *(word*)(((*(byte*)(fp - 91) << 1) + (fp - 123))) = (*(word*)(((*(byte*)(fp - 91) << 1) + (fp - 123))) - 5);    // $8A0A
    set_tile_cursor(*(byte*)(((*(byte*)(fp - 91) << 1) + 0x9AE0)), *(byte*)(((*(byte*)(fp - 91) << 1) + 0x9AE1)));    // $8A1F
    draw_field_m1(0x9B52, *(word*)(((*(byte*)(fp - 91) << 1) + (fp - 115))));    // $8A32
    *(byte*)(fp - 91) = ((*(byte*)(fp - 91) + 1) & 3);    // $8A3C
L_8A43:
    *(word*)(fp - 135) = (*(word*)(fp - 135) + 1);    // $8A43
    if (((unsigned)*(word*)(fp - 135) < (unsigned)4)) goto L_89A6;    // $8A4B
    set_draw_origin(10, 26);    // $8A51
    draw_field(0x9B5A, *(word*)(fp - 117));    // $8A5A
    bj_loop_8af1((fp - 52));    // $8A69
    *(word*)(fp - 135) = 0;    // $8A6E
L_8A71:
    *(byte*)(fp - 91) = ((*(byte*)(fp - 89) + 1) & 3);    // $8A77
    goto L_8B1C;    // $8A7B
L_8A7E:
    *(byte*)(fp - 88) = (*(byte*)(fp - 88) + 1);    // $8A96
    *(byte*)((((*(byte*)(fp - 91) * 5) + *(word*)(fp - 135)) + (fp - 72))) = *(byte*)(((*(byte*)(fp - 88) - 1) + (fp - 52)));    // $8A9D
    if (!((*(byte*)(fp - 91) == 3))) goto L_8AC7;    // $8AA3
    poker_card_rank(*(byte*)((*(word*)(fp - 135) + (fp - 57))), (mem_9AEE + (*(word*)(fp - 135) << 1)), mem_9AEF);    // $8AC0
    goto L_8B0F;    // $8AC4
L_8AC7:
    bj_blit_card_2x3((*(byte*)(((*(byte*)(fp - 91) << 1) + 0x9AE8)) + (*(word*)(fp - 135) << 1)), *(byte*)(((*(byte*)(fp - 91) << 1) + 0x9AE9)));    // $8AE9
    if (!(((unsigned)*(word*)(fp - 135) > (unsigned)1))) goto L_8B0F;    // $8AF2
    if (load_operand16_14((10 - *(word*)(fp - 135)))) goto L_8B0F;    // $8AFF
L_8B0F:
    poker_dispatch(*(byte*)(fp - 91), 4, (fp - 153));    // $8B0B
    *(byte*)(fp - 91) = ((*(byte*)(fp - 91) + 1) & 3);    // $8B15
L_8B1C:
    *(word*)(fp - 137) = (*(word*)(fp - 137) + 1);    // $8B1C
    if (((unsigned)*(word*)(fp - 137) < (unsigned)4)) goto L_8A7E;    // $8B24
    *(word*)(fp - 135) = (*(word*)(fp - 135) + 1);    // $8B2B
    if (((unsigned)*(word*)(fp - 135) < (unsigned)5)) goto L_8A71;    // $8B33
    *(byte*)(fp - 91) = *(byte*)(fp - 89);    // $8B39
    *(word*)(fp - 139) = ((*(byte*)(fp - 91) == 2) ? 9 : 10);    // $8B49
    set_tile_cursor((*(byte*)(((*(byte*)(fp - 91) << 1) + 0x9AE0)) + *(word*)(fp - 139)), *(byte*)(((*(byte*)(fp - 91) << 1) + 0x9AE1)));    // $8B64
    draw_string(0x9B63, 1);    // $8B6C
    *(word*)(fp - 135) = 0;    // $8B71
L_8B74:
    poker_loop_96a3(((*(word*)(fp - 135) * 5) + (fp - 72)));    // $8B80
    *(word*)(fp - 135) = (*(word*)(fp - 135) + 1);    // $8B88
    if (((unsigned)*(word*)(fp - 135) < (unsigned)4)) goto L_8B74;    // $8B90
    *(word*)(fp - 137) = 0;    // $8B94
L_8B97:
    poker_card_rank(*(byte*)((*(word*)(fp - 137) + (fp - 57))), (mem_9AEE + (*(word*)(fp - 137) << 1)), mem_9AEF);    // $8BB1
    *(word*)(fp - 137) = (*(word*)(fp - 137) + 1);    // $8BB9
    if (((unsigned)*(word*)(fp - 137) < (unsigned)5)) goto L_8B97;    // $8BC1
    *(byte*)(fp - 91) = ((*(byte*)(fp - 89) + 1) & 3);    // $8BCA
    goto L_8DF8;    // $8BCE
L_8BD1:
    if (!((*(byte*)(fp - 91) == 3))) goto L_8C93;    // $8BD6
    *(byte*)(fp - 92) = poker_play_round((fp - 57), (fp - 77));    // $8BE5
    goto L_8C10;    // $8BEF
L_8BF2:
    *(byte*)(fp - 88) = (*(byte*)(fp - 88) + 1);    // $8C04
    *(byte*)((*(word*)(fp - 137) + (fp - 57))) = *(byte*)(((*(byte*)(fp - 88) - 1) + (fp - 52)));    // $8C0B
L_8C10:
    *(word*)(fp - 137) = (*(word*)(fp - 137) + 1);    // $8C10
    if (((unsigned)*(word*)(fp - 137) < (unsigned)5)) goto L_8BF2;    // $8C18
    goto L_8C36;    // $8C1C
L_8C1F:
    bj_clear_card(((*(word*)(fp - 137) << 1) + 9), 19);    // $8C2E
L_8C36:
    *(word*)(fp - 137) = (*(word*)(fp - 137) + 1);    // $8C36
    if (((unsigned)*(word*)(fp - 137) < (unsigned)*(byte*)(fp - 92))) goto L_8C1F;    // $8C42
    if (!(*(byte*)(fp - 92))) goto L_8C57;    // $8C48
L_8C57:
    poker_deal_card(20, 20, *(byte*)(fp - 92));    // $8C53
    poker_loop_96a3((fp - 57));    // $8C5B
    *(word*)(fp - 137) = 0;    // $8C60
L_8C63:
    poker_card_rank(*(byte*)((*(word*)(fp - 137) + (fp - 57))), (mem_9AEE + (*(word*)(fp - 137) << 1)), mem_9AEF);    // $8C7D
    *(word*)(fp - 137) = (*(word*)(fp - 137) + 1);    // $8C85
    if (((unsigned)*(word*)(fp - 137) < (unsigned)5)) goto L_8C63;    // $8C8D
    goto L_8DEB;    // $8C90
L_8C93:
    *(byte*)(fp - 92) = poker_get_score(((*(byte*)(fp - 91) * 5) + (fp - 72)), (fp - 77));    // $8CA7
    *(word*)(fp - 137) = 0;    // $8CAB
    *(byte*)(fp - 93) = 0;    // $8CAE
    goto L_8D38;    // $8CB1
L_8CB4:
    *(byte*)(fp - 87) = *(byte*)((((*(byte*)(fp - 91) * 5) + *(word*)(fp - 137)) + (fp - 72)));    // $8CC4
    if (!((((unsigned)(*(byte*)(fp - 87) & 240) > (unsigned)192) || ((unsigned)(*(byte*)(fp - 87) & 15) > (unsigned)3)))) goto L_8D31;    // $8CDC
    scale_x6(3);    // $8CE0
    bj_clear_card((*(byte*)(((*(byte*)(fp - 91) << 1) + 0x9AE8)) + (*(word*)(fp - 137) << 1)), *(byte*)(((*(byte*)(fp - 91) << 1) + 0x9AE9)));    // $8D06
    *(byte*)(fp - 93) = (*(byte*)(fp - 93) + 1);    // $8D0E
    *(byte*)(fp - 88) = (*(byte*)(fp - 88) + 1);    // $8D29
    *(byte*)((((*(byte*)(fp - 91) * 5) + *(word*)(fp - 137)) + (fp - 72))) = *(byte*)(((*(byte*)(fp - 88) - 1) + (fp - 52)));    // $8D30
L_8D31:
    *(word*)(fp - 137) = (*(word*)(fp - 137) + 1);    // $8D35
L_8D38:
    if (((unsigned)*(word*)(fp - 137) < (unsigned)5)) goto L_8CB4;    // $8D3D
    if (!(*(byte*)(fp - 92))) goto L_8D85;    // $8D43
    if (*(byte*)(fp - 91)) goto L_8D68;    // $8D49
    phi_push_8d80 = (*(byte*)(((*(byte*)(fp - 91) << 1) + 0x9AE8)) + -4);    // $8D65
    goto L_8D80;    // $8D65
L_8D68:
    phi_push_8d80 = (*(byte*)(((*(byte*)(fp - 91) << 1) + 0x9AE8)) + 11);    // $8D7F
L_8D80:
L_8D85:
    poker_deal_card(phi_push_8d80, *(byte*)(((*(byte*)(fp - 91) << 1) + 0x9AE9)), *(byte*)(fp - 92));    // $8D81
    poker_loop_96a3(((*(byte*)(fp - 91) * 5) + (fp - 72)));    // $8D91
    *(word*)(fp - 137) = 0;    // $8D96
L_8D99:
    bj_blit_card_2x3((*(byte*)(((*(byte*)(fp - 91) << 1) + 0x9AE8)) + (*(word*)(fp - 137) << 1)), *(byte*)(((*(byte*)(fp - 91) << 1) + 0x9AE9)));    // $8DBB
    if (load_operand16_14(5)) goto L_8DD7;    // $8DC4
    poker_dispatch(*(byte*)(fp - 91), 4, (fp - 153));    // $8DD0
    goto L_8DDC;    // $8DD4
L_8DD7:
L_8DDC:
    scale_x6(3);    // $8DD8
    *(word*)(fp - 137) = (*(word*)(fp - 137) + 1);    // $8DE0
    if (((unsigned)*(word*)(fp - 137) < (unsigned)5)) goto L_8D99;    // $8DE8
L_8DEB:
    *(byte*)(fp - 91) = ((*(byte*)(fp - 91) + 1) & 3);    // $8DF1
L_8DF8:
    *(word*)(fp - 135) = (*(word*)(fp - 135) + 1);    // $8DF8
    if (((unsigned)*(word*)(fp - 135) < (unsigned)4)) goto L_8BD1;    // $8E00
    *(byte*)(fp - 94) = 0;    // $8E04
    *(word*)(fp - 97) = *(word*)(fp - 115);    // $8E09
L_8E0B:
    *(word*)(fp - 149) = 0;    // $8E0C
    *(byte*)(fp - 91) = ((*(byte*)(fp - 89) + 1) & 3);    // $8E15
    *(word*)(fp - 135) = 0;    // $8E19
    goto L_8F8B;    // $8E1C
L_8E1F:
    if (!(*(word*)(((*(byte*)(fp - 91) << 1) + (fp - 147))))) goto L_8F7B;    // $8E2A
    if (!((*(byte*)(fp - 91) == 3))) goto L_8E86;    // $8E32
    *(word*)(((*(byte*)(fp - 91) << 1) + (fp - 147))) = poker_ai_decide(*(word*)(fp - 97), ((*(byte*)(fp - 91) << 1) + (fp - 115)), ((*(byte*)(fp - 91) << 1) + (fp - 123)), ((*(byte*)(fp - 91) * 5) + (fp - 72)), *(byte*)(fp - 94), *(word*)(fp - 125), (fp - 147));    // $8E72
    set_draw_origin(10, 26);    // $8E76
    draw_field(0x9B67, *(word*)(fp - 117));    // $8E7F
    goto L_8EC6;    // $8E83
L_8E86:
    *(word*)(((*(byte*)(fp - 91) << 1) + (fp - 147))) = poker_round_flow(*(word*)(fp - 97), ((*(byte*)(fp - 91) << 1) + (fp - 115)), ((*(byte*)(fp - 91) << 1) + (fp - 123)), (fp - 72), *(byte*)(fp - 94), *(byte*)(fp - 91), (fp - 153), *(word*)(fp - 125), (fp - 147), *(word*)(fp - 117));    // $8EC5
L_8EC6:
    if (!((*(word*)(fp - 97) < *(word*)(((*(byte*)(fp - 91) << 1) + (fp - 115)))))) goto L_8EE6;    // $8ED6
    *(word*)(fp - 97) = *(word*)(((*(byte*)(fp - 91) << 1) + (fp - 115)));    // $8EE4
L_8EE6:
    if (*(word*)(((*(byte*)(fp - 91) << 1) + (fp - 147)))) goto L_8F50;    // $8EF1
    if (!((*(byte*)(fp - 91) == 3))) goto L_8F3B;    // $8EF9
    if (!(((unsigned)*(word*)(fp - 97) <= (unsigned)(*(word*)(((*(byte*)(fp - 91) << 1) + (fp - 115))) + *(word*)(((*(byte*)(fp - 91) << 1) + (fp - 123))))))) goto L_8F48;    // $8F1A
    if (!((*(byte*)(fp - 91) == 3))) goto L_8F48;    // $8F22
    if (load_operand16_14(20)) goto L_8F48;    // $8F2B
    phi_push_8f43 = load_operand16_14(3);    // $8F38
    goto L_8F43;    // $8F38
L_8F3B:
    phi_push_8f43 = *(byte*)(fp - 91);    // $8F40
L_8F43:
L_8F48:
    poker_dispatch(phi_push_8f43, 2, (fp - 153));    // $8F44
L_8F50:
    poker_deal_to_seat(*(byte*)(fp - 91));    // $8F4C
    set_tile_cursor(*(byte*)(((*(byte*)(fp - 91) << 1) + 0x9AE0)), *(byte*)(((*(byte*)(fp - 91) << 1) + 0x9AE1)));    // $8F64
L_8F7B:
    draw_field_m1(0x9B70, *(word*)(((*(byte*)(fp - 91) << 1) + (fp - 115))));    // $8F77
    *(word*)(fp - 135) = (*(word*)(fp - 135) + 1);    // $8F7F
    *(byte*)(fp - 91) = ((*(byte*)(fp - 91) + 1) & 3);    // $8F88
L_8F8B:
    if (((unsigned)*(word*)(fp - 135) < (unsigned)4)) goto L_8E1F;    // $8F90
    *(byte*)(fp - 94) = 1;    // $8F94
    *(byte*)(fp - 91) = ((*(byte*)(fp - 89) + 1) & 3);    // $8F9D
    *(word*)(fp - 135) = 0;    // $8FA1
    *(byte*)(fp - 93) = 0;    // $8FA4
    goto L_8FE7;    // $8FA7
L_8FAA:
    if (!(*(word*)(((*(byte*)(fp - 91) << 1) + (fp - 147))))) goto L_8FD7;    // $8FB5
    if (!((*(word*)(((*(byte*)(fp - 91) << 1) + (fp - 115))) != *(word*)(fp - 97)))) goto L_8FD0;    // $8FC6
    *(word*)(fp - 149) = 1;    // $8FCA
    goto L_8FEF;    // $8FCD
L_8FD0:
    *(byte*)(fp - 93) = (*(byte*)(fp - 93) + 1);    // $8FD4
L_8FD7:
    *(word*)(fp - 135) = (*(word*)(fp - 135) + 1);    // $8FDB
    *(byte*)(fp - 91) = ((*(byte*)(fp - 91) + 1) & 3);    // $8FE4
L_8FE7:
    if (((unsigned)*(word*)(fp - 135) < (unsigned)4)) goto L_8FAA;    // $8FEC
L_8FEF:
    if (!((*(byte*)(fp - 93) == 1))) goto L_8FFB;    // $8FF4
    *(word*)(fp - 149) = 0;    // $8FF8
L_8FFB:
    if (*(word*)(fp - 149)) goto L_8E0B;    // $8FFE
    *(byte*)(fp - 91) = ((*(byte*)(fp - 89) + 1) & 3);    // $9007
    *(word*)(fp - 135) = 0;    // $900B
    goto L_90B1;    // $900E
L_9011:
    if (!(*(word*)(((*(byte*)(fp - 91) << 1) + (fp - 147))))) goto L_9094;    // $901C
    *(word*)(fp - 137) = 0;    // $9020
L_9023:
    poker_card_rank(*(byte*)((((*(byte*)(fp - 91) * 5) + *(word*)(fp - 137)) + (fp - 72))), (*(byte*)(((*(byte*)(fp - 91) << 1) + 0x9AE8)) + (*(word*)(fp - 137) << 1)), *(byte*)(((*(byte*)(fp - 91) << 1) + 0x9AE9)));    // $904F
    *(word*)(fp - 137) = (*(word*)(fp - 137) + 1);    // $9057
    if (((unsigned)*(word*)(fp - 137) < (unsigned)5)) goto L_9023;    // $905F
    *(word*)(((*(byte*)(fp - 91) << 1) + (fp - 133))) = poker_main(((*(byte*)(fp - 91) * 5) + (fp - 72)), (fp - 86), 1);    // $9082
    if (!((*(byte*)(fp - 86) == 255))) goto L_90A1;    // $908A
    *(byte*)(fp - 86) = 8;    // $908E
    goto L_90A1;    // $9091
L_9094:
    *(word*)(((*(byte*)(fp - 91) << 1) + (fp - 133))) = 0;    // $90A0
L_90A1:
    *(word*)(fp - 135) = (*(word*)(fp - 135) + 1);    // $90A5
    *(byte*)(fp - 91) = ((*(byte*)(fp - 91) + 1) & 3);    // $90AE
L_90B1:
    if (((unsigned)*(word*)(fp - 135) < (unsigned)4)) goto L_9011;    // $90B6
    *(byte*)(fp - 95) = *(byte*)(fp - 89);    // $90BC
    *(word*)(fp - 97) = *(word*)(fp - 133);    // $90C2
    *(word*)(fp - 137) = 0;    // $90C5
    *(byte*)(fp - 91) = 0;    // $90C8
    goto L_9109;    // $90CB
L_90CE:
    if (!(((unsigned)*(word*)(fp - 97) < (unsigned)*(word*)(((*(word*)(fp - 137) << 1) + (fp - 133)))))) goto L_9102;    // $90DE
    if (!(*(word*)(((*(word*)(fp - 137) << 1) + (fp - 147))))) goto L_9102;    // $90EC
    *(byte*)(fp - 91) = *(word*)(fp - 137);    // $90F2
    *(word*)(fp - 97) = *(word*)(((*(word*)(fp - 137) << 1) + (fp - 133)));    // $9100
L_9102:
    *(word*)(fp - 137) = (*(word*)(fp - 137) + 1);    // $9106
L_9109:
    if (((unsigned)*(word*)(fp - 137) < (unsigned)4)) goto L_90CE;    // $910E
    *(byte*)(fp - 89) = *(byte*)(fp - 91);    // $9114
    *(word*)(fp - 135) = 0;    // $9118
L_911B:
    if (!(*(word*)(((*(word*)(fp - 135) << 1) + (fp - 147))))) goto L_91AB;    // $9126
    *(word*)(((*(word*)(fp - 135) << 1) + (fp - 133))) = poker_main(((*(word*)(fp - 135) * 5) + (fp - 72)), (fp - 86), 1);    // $9149
    if (!((*(byte*)(fp - 86) == 255))) goto L_9158;    // $9151
    *(byte*)(fp - 86) = 8;    // $9155
L_9158:
    *(word*)(fp - 139) = (*(word*)(fp - 135) ? 0 : 4);    // $9163
    set_tile_cursor((*(byte*)(((*(word*)(fp - 135) << 1) + 0x9AE8)) - *(word*)(fp - 139)), (*(byte*)(((*(word*)(fp - 135) << 1) + 0x9AE9)) + -2));    // $9180
    if (*(byte*)(fp - 86)) goto L_919A;    // $9187
    if (!((*(byte*)(fp - 85) == 2))) goto L_919A;    // $918F
L_919A:
    draw_string(0x9B78, 1);    // $9196
L_91AB:
    draw_field_m1(0x9B7B, *(word*)(((*(byte*)(fp - 86) << 1) + 0x9ACE)));    // $91A7
    *(word*)(fp - 135) = (*(word*)(fp - 135) + 1);    // $91AF
    if (((unsigned)*(word*)(fp - 135) < (unsigned)4)) goto L_911B;    // $91B7
    if (!((*(byte*)(fp - 91) != 3))) goto L_91CF;    // $91BF
L_91CF:
    poker_dispatch(*(byte*)(fp - 91), 3, (fp - 153));    // $91CB
    // ext_op ext_op_F1AF
    // ext_op ext_op_F263
    // ext_op ext_op_F1AF
    // ext_op ext_op_F263
    // ext_op ext_op_F1AF
    // ext_op ext_op_F263
    // ext_op ext_op_F1AF
    // ext_op ext_op_F263
    // ext_op ext_op_F1AF
    // ext_op ext_op_F26C
    // ext_op ext_op_F03F
    // ext_op ext_op_F26C
    // ext_op ext_op_F03F
    // ext_op ext_op_F26C
    // ext_op ext_op_F03F
    // ext_op ext_op_F26C
    // ext_op ext_op_F03F
    // ext_op ext_op_F13E
    if (!(*(word*)(((*(byte*)(fp - 91) << 1) + (fp - 123))))) goto L_9220;    // $920C
    goto L_923A;    // $921D
L_9220:
L_923A:
    *(word*)(((*(byte*)(fp - 91) << 1) + (fp - 123))) = (*(word*)(((*(byte*)(fp - 91) << 1) + (fp - 123))) + (((*(word*)(fp - 115) + *(word*)(fp - 113)) + *(word*)(fp - 111)) + *(word*)(fp - 109)));    // $923A
    if (!((*(byte*)(fp - 91) == 3))) goto L_9290;    // $9240
    if (!(((unsigned)*(word*)(fp - 117) >= (unsigned)((*(word*)(((current_port * 14) + 0x67B2)) + load_operand16_14(50)) + mem_666B)))) goto L_9290;    // $925F
L_9267:
    phi_push_9277 = load_operand16_14(3);    // $926C
    goto L_9277;    // $926C
L_926F:
    phi_push_9277 = *(byte*)(fp - 91);    // $9274
L_9277:
    phi_9327_0 = phi_push_9277;    // $9278
    phi_9327_1 = 7;    // $9278
    phi_9327_2 = (fp - 153);    // $9278
    goto L_9327;    // $9278
L_927B:
    if ((*(byte*)(fp - 91) != 3)) goto L_926F;    // $9280
    poker_draw_box(0);    // $9284
    goto L_9267;    // $928D
L_9290:
    if ((*(word*)(((*(byte*)(fp - 91) << 1) + (fp - 123))) == 0xEA60)) goto L_927B;    // $929F
    *(word*)(((*(byte*)(fp - 89) << 1) + (fp - 105))) = (*(word*)(((*(byte*)(fp - 89) << 1) + (fp - 105))) + 1);    // $92AF
    set_draw_origin(10, 26);    // $92B3
    draw_field(0x9B7E, *(word*)(fp - 117));    // $92BC
    blit_alloc_tiles(21, 18, 10, 6, 0);    // $92C7
    syscall_id09_syscall_banked_blit_m3(21, 18, 10, 6, 0xA79E, 0xA7DA, 231);    // $92DB
    mem_728A = 22;    // $92E1
    set_tile_cursor(22, 19);    // $92E8
    draw_string(0x9B87, 1);    // $92F0
    *(byte*)(fp - 87) = prompt_confirm();    // $92F7
    mem_728A = 0;    // $92FB
    blit_free_tiles(21, 18, 10, 6, 0);    // $9305
    if (*(byte*)(fp - 87)) goto L_9339;    // $930C
    if (!(((unsigned)((load_operand16_14(100) + mem_666B) + 100) < (unsigned)*(word*)(fp - 117)))) goto L_9331;    // $931E
L_9326:
    phi_9327_0 = 3;    // $9326
    phi_9327_1 = 10;    // $9326
    phi_9327_2 = (fp - 153);    // $9326
L_9327:
    poker_dispatch(phi_9327_0, phi_9327_1, phi_9327_2);    // $9327
    mem_666B = *(word*)(fp - 117);    // $932D
    return *(word*)(fp - 117);    // $9330
L_9331:
    goto L_9326;    // $9336
L_9339:
    *(word*)(fp - 135) = 0;    // $933A
L_933D:
    syscall_id08_syscall_queue_ppu_transfer((*(byte*)(((*(word*)(fp - 135) << 1) + 0x9AE0)) - 1), (*(byte*)(((*(word*)(fp - 135) << 1) + 0x9AE1)) + -5), 14, 7, 0, 0);    // $9359
    *(word*)(fp - 135) = (*(word*)(fp - 135) + 1);    // $9361
    if (((unsigned)*(word*)(fp - 135) < (unsigned)4)) goto L_933D;    // $9369
    goto L_8995;    // $936C
}

// Decompiled from source/2-asm-vm\bank27.asm sub $936F
// $936F poker_reset
// (body @ $9374)

word poker_reset(void) {
    reset_all_chr();    // $9374
    copy_from_bank_dc80(&local1, 16, 15);    // $937E
    syscall_id06_syscall_set_sprite_block(&local1, 0, 16);    // $938A
    call_in_bank_dcd1(1, 220, poker_init);    // $9395
    local11 = mem_666B;    // $939C
    syscall_id06_syscall_set_sprite_block(0x9A6A, 0, 16);    // $93A4
    poker_bet_screen();    // $93A8
    mem_7068 = 255;    // $93AE
    local10 = mem_666B;    // $93B4
    if (((unsigned)local11 < (unsigned)local10)) {    // $93B8
    local9 = (*(word*)(((current_port * 14) + 0x67B2)) / 3);    // $93C7
    mem_6B86 = (mem_6B86 + ((unsigned)(local10 - local11) / (unsigned)(load_operand16_14((local9 / 4)) + local9)));    // $93DD
    }
L_93E0:
    mem_7063 = 1;    // $93E1
    court_setup_chr();    // $93EB
    return 1;    // $93F0
}

// Decompiled from source/2-asm-vm\bank27.asm sub $93F1
// $93F1 poker_card_position
// (body @ $93F6)

word poker_card_position(word arg1, word arg2, word arg3) {
    local10 = *(byte*)(((*(byte*)&arg1 << 1) + 0x9F1B));    // $93FF
    local11 = *(byte*)(((*(byte*)&arg1 << 1) + 0x9F1C));    // $9409
    blit_block_save(local10, (local11 - 1), 15, 8);    // $9410
    if ((*(byte*)&arg1 == 2)) {    // $9419
    syscall_id08_syscall_queue_ppu_transfer((local10 + 1), (local11 - 1), 13, 1, 0, 0);    // $9427
    resolve_field_ptr((local10 + 10), local11, *(byte*)((*(byte*)&arg1 + arg3)), 1);    // $9437
    native_draw_box(local10, local11, 10, 6, 2, 0);    // $9441
    phi_val_9473 = (local10 + 1);    // $9447
    } else {
    syscall_id08_syscall_queue_ppu_transfer(local10, (local11 - 1), 14, 1, 0, 0);    // $9453
    resolve_field_ptr(local10, local11, *(byte*)((*(byte*)&arg1 + arg3)), 1);    // $9461
    native_draw_box((local10 + 5), local11, 10, 6, 1, 0);    // $946D
    phi_val_9473 = (local10 + 6);    // $9472
    }
L_9473:
    mem_728A = phi_val_9473;    // $9473
    set_tile_cursor(mem_728A, (local11 + 1));    // $947C
    draw_string(arg2, 0);    // $9482
    mem_728A = 0;    // $9487
    return 0;    // $948A
    }
}

// Decompiled from source/2-asm-vm\bank27.asm sub $948B
// $948B poker_loop_948b
// (body @ $9490)

word poker_loop_948b(word arg1, word arg2, word arg3) {
L_9490:
    arg2 = (arg2 + 1);    // $9492
    *(byte*)(fp - 3) = to_upper(*(byte*)((arg2 - 1)));    // $949A
    switch (*(byte*)(fp - 3)) {    // $94A0
        case 67: goto L_9525;    // $94A0
        case 69: goto L_9537;    // $94A0
        case 75: goto L_94CE;    // $94A0
        case 77: goto L_9502;    // $94A0
        case 79: goto L_952E;    // $94A0
        case 83: goto L_94CE;    // $94A0
        case 84: goto L_94C5;    // $94A0
        case 87: goto L_951D;    // $94A0
        default: goto L_9490;    // $94A0
    }    // $94A0
L_94C5:
    *(byte*)(fp - 5) = *(byte*)&arg1;    // $94C8
    goto L_9490;    // $94CB
L_94CE:
    *(byte*)&local10 = (*(byte*)(arg2) + -32);    // $94D2
    arg2 = (arg2 + 1);    // $94D7
L_94D8:
    *(byte*)&local9 = load_operand16_14(3);    // $94DD
    if ((*(byte*)&local9 == *(byte*)(fp - 5))) goto L_94D8;    // $94E9
    phi_push_94fa = *(byte*)&local9;    // $94F7
L_94FA:
    poker_card_position(phi_push_94fa, *(word*)(((*(byte*)&local10 << 1) + 0x9B90)), arg3);    // $94FB
    goto L_9490;    // $94FF
L_9502:
    *(byte*)&local10 = (*(byte*)(arg2) + -32);    // $9506
    arg2 = (arg2 + 1);    // $950B
    phi_push_94fa = *(byte*)&arg1;    // $951A
    goto L_94FA;    // $951A
L_951D:
    scale_6b88(1);    // $951E
    goto L_9490;    // $9522
L_9525:
    reset_chr_alloc();    // $9525
    blit_block_unwind();    // $9528
    goto L_9490;    // $952B
L_952E:
    if (blit_block_unwind()) goto L_952E;    // $9531
    goto L_9490;    // $9534
L_9537:
    if (blit_block_unwind()) goto L_9537;    // $953A
    return blit_block_unwind();    // $953D
}

// Decompiled from source/2-asm-vm\bank27.asm sub $953E
// $953E poker_dispatch
// (body @ $9543)

word poker_dispatch(word arg1, word arg2, word arg3) {
    switch (*(byte*)&arg2) {    // $9546
    case 0:
        str_copy(&local2, 0x9F5A);    // $956E
L_9579:
        *(byte*)&local3 = (load_operand16_14(4) + 32);    // $9579
    default:
L_957C:
        poker_loop_948b(*(byte*)&arg1, &local2, arg3);    // $9585
        return reset_chr_alloc();    // $958C
    case 1:
        str_copy(&local2, 0x9F61);    // $9594
        goto L_9579;    // $959F
    case 2:
        str_copy(&local2, 0x9F68);    // $95A9
        goto L_9579;    // $95B4
    case 3:
        str_copy(&local2, 0x9F6F);    // $95BE
        goto L_9579;    // $95C9
    case 4:
        str_copy(&local2, 0x9F76);    // $95D3
        goto L_9579;    // $95DE
    case 5:
        str_copy(&local2, 0x9F7D);    // $95E8
        goto L_9579;    // $95F6
    case 6:
        if (!(load_operand16_14(2))) goto L_960F;    // $95FE
L_9604:
        str_copy(&local2, 0x9F8C);    // $9608
        goto L_957C;    // $960C
L_960F:
        goto L_9604;    // $9612
    case 7:
        goto L_9604;    // $9621
    case 8:
        str_copy(&local2, 0x9F9C);    // $962B
        *(byte*)&local5 = *(byte*)((load_operand16_14(3) + mem_9F2D));    // $9639
        goto L_957C;    // $963C
    case 9:
        goto L_9604;    // $9642
    case 10:
        goto L_9604;    // $9648
    case 11:
        str_copy(&local2, 0x9FB3);    // $9652
        goto L_9579;    // $965D
    case 12:
        str_copy(&local2, 0x9FB9);    // $9667
        goto L_9579;    // $9672
    }
}

// Decompiled from source/2-asm-vm\bank27.asm sub $9675
// $9675 poker_draw_box
// (body @ $967A)

word poker_draw_box(word arg1) {
    draw_box_variant(search_6a9a_ptr(), 0);    // $967F
    win_render_syscall(1);    // $9684
    draw_string((*(byte*)&arg1 ? 0x9FBF : 0x9FDA), 1);    // $9699
    return scale_6b88(1);    // $96A2
}

// Decompiled from source/2-asm-vm\bank27.asm sub $96A3
// $96A3 poker_loop_96a3
// (body @ $96A8)

word poker_loop_96a3(word arg1) {
    local10 = 0;    // $96A9
L_96AA:
    *(byte*)&local11 = *(byte*)((arg1 + local10));    // $96AE
    local9 = local10;    // $96B2
    local8 = local10;    // $96B3
    goto L_96D0;    // $96B4
L_96B7:
    if (((unsigned)*(byte*)&local11 > (unsigned)*(byte*)((arg1 + local9)))) {    // $96C1
    local8 = local9;    // $96C5
    *(byte*)&local11 = *(byte*)((arg1 + local9));    // $96CA
    }
L_96CD:
    local9 = (local9 + 1);    // $96CF
L_96D0:
    if (((unsigned)local9 < (unsigned)5)) goto L_96B7;    // $96D3
    if ((local10 != local8)) {    // $96D9
    *(byte*)(fp - 1) = *(byte*)((arg1 + local10));    // $96E0
    *(byte*)((arg1 + local10)) = *(byte*)((arg1 + local8));    // $96EB
    *(byte*)((arg1 + local8)) = *(byte*)(fp - 1);    // $96F3
    }
L_96F4:
    local10 = (local10 + 1);    // $96F6
    if (((unsigned)local10 < (unsigned)5)) goto L_96AA;    // $96FA
    return ((unsigned)local10 < (unsigned)5);    // $96FD
}

// Decompiled from source/2-asm-vm\bank27.asm sub $96FE
// $96FE poker_read_hand
// (body @ $9703)

word poker_read_hand(word arg1, word arg2) {
    copy_from_bank_dc80((fp - 7), 4, 0);    // $9709
    *(word*)(fp - 9) = 0;    // $970E
    do {    // $9710
        *(byte*)(((*(byte*)((arg1 + *(word*)(fp - 9))) & 15) + (fp - 7))) = (*(byte*)(((*(byte*)((arg1 + *(word*)(fp - 9))) & 15) + (fp - 7))) + 1);    // $9720
        *(word*)(fp - 9) = (*(word*)(fp - 9) + 1);    // $9724
    } while (((unsigned)*(word*)(fp - 9) < (unsigned)5));    // $972A
    *(byte*)(fp - 3) = 0;    // $972E
    local11 = 0;    // $9732
    while (((unsigned)*(word*)(fp - 9) < (unsigned)4)) {    // $9768
        if (((unsigned)*(byte*)(fp - 3) < (unsigned)*(byte*)((*(word*)(fp - 9) + (fp - 7))))) {    // $9746
        *(byte*)(fp - 3) = *(byte*)((*(word*)(fp - 9) + (fp - 7)));    // $9752
        }
L_9755:
        if ((*(byte*)((*(word*)(fp - 9) + (fp - 7))) == 5)) {    // $9760
        local11 = 1;    // $9764
        }
L_9765:
        *(word*)(fp - 9) = (*(word*)(fp - 9) + 1);    // $9768
    }
    *(byte*)(arg2) = (*(byte*)(fp - 3) * 20);    // $9778
    return local11;    // $977A
}

// Decompiled from source/2-asm-vm\bank27.asm sub $977B
// $977B poker_loop_977b
// (body @ $9780)

word poker_loop_977b(word arg1, word arg2) {
    local7 = 0;    // $9781
L_9782:
    *(byte*)((local7 + &local8)) = (((unsigned)*(byte*)((arg1 + local7)) >> 4) & 15);    // $9792
    local7 = (local7 + 1);    // $9795
    if (((unsigned)local7 < (unsigned)5)) goto L_9782;    // $9799
    poker_loop_96a3(&local8);    // $97A0
    *(byte*)(arg2) = 20;    // $97A7
    *(byte*)(fp - 3) = *(byte*)&local8;    // $97AB
    phi_val_9801 = 1;    // $97AF
    goto L_9801;    // $97AF
L_97B2:
    if (!((((*(byte*)(fp - 3) + 1) == *(byte*)((local7 + &local8))) || ((*(byte*)(fp - 3) + 2) == *(byte*)((local7 + &local8)))))) goto L_97F4;    // $97D3
    if (!(((*(byte*)(fp - 3) + 1) == *(byte*)((local7 + &local8))))) goto L_97ED;    // $97E5
    goto L_97EE;    // $97EA
L_97ED:
L_97EE:
    *(byte*)(arg2) = (*(byte*)(arg2) + 5);    // $97F3
L_97F4:
    *(byte*)(fp - 3) = *(byte*)((local7 + &local8));    // $97FC
    phi_val_9801 = (local7 + 1);    // $9800
L_9801:
    local7 = phi_val_9801;    // $9801
    if (((unsigned)local7 < (unsigned)5)) goto L_97B2;    // $9805
    return (*(byte*)(arg2) == 100);    // $980D
}

// Decompiled from source/2-asm-vm\bank27.asm sub $980E
// $980E poker_load_hand
// (body @ $9813)

word poker_load_hand(word arg1, word arg2) {
    copy_from_bank_dc80((fp - 13), 13, 0);    // $9819
    *(word*)(fp - 15) = 0;    // $981E
    do {    // $9820
        *(byte*)(((((unsigned)*(byte*)((arg1 + *(word*)(fp - 15))) >> 4) & 15) + (fp - 13))) = (*(byte*)(((((unsigned)*(byte*)((arg1 + *(word*)(fp - 15))) >> 4) & 15) + (fp - 13))) + 1);    // $9832
        *(word*)(fp - 15) = (*(word*)(fp - 15) + 1);    // $9836
    } while (((unsigned)*(word*)(fp - 15) < (unsigned)5));    // $983C
    copy_from_bank_dc80(arg2, 5, 0);    // $9842
    *(word*)(fp - 21) = 0;    // $9847
    *(word*)(fp - 17) = 0;    // $984A
    *(word*)(fp - 19) = 1;    // $984D
    while (((unsigned)*(word*)(fp - 15) < (unsigned)13)) {    // $98D6
        *(byte*)((*(byte*)((*(word*)(fp - 15) + (fp - 13))) + arg2)) = (*(byte*)((*(byte*)((*(word*)(fp - 15) + (fp - 13))) + arg2)) + 1);    // $9861
        if ((*(byte*)((*(word*)(fp - 15) + (fp - 13))) == 1)) {    // $986D
        *(word*)(fp - 21) = (*(word*)(fp - 21) + (*(word*)(fp - 15) * *(word*)(fp - 19)));    // $9879
        *(word*)(fp - 19) = (*(word*)(fp - 19) * ((*(word*)(fp - 19) == 0x0533) ? 0 : 11));    // $988D
        }
L_988F:
        if ((*(byte*)((*(word*)(fp - 15) + (fp - 13))) == 2)) {    // $989A
        *(byte*)(((arg2 + *(word*)(fp - 17)) + 5)) = *(word*)(fp - 15);    // $98A5
        *(word*)(fp - 17) = (*(word*)(fp - 17) + 1);    // $98A9
        }
L_98AB:
        if ((*(byte*)((*(word*)(fp - 15) + (fp - 13))) == 3)) {    // $98B6
        *(byte*)((arg2 + 7)) = *(word*)(fp - 15);    // $98BE
        }
L_98BF:
        if ((*(byte*)((*(word*)(fp - 15) + (fp - 13))) == 4)) {    // $98CA
        *(byte*)((arg2 + 8)) = *(word*)(fp - 15);    // $98D2
        }
L_98D3:
        *(word*)(fp - 15) = (*(word*)(fp - 15) + 1);    // $98D6
    }
    return *(word*)(fp - 21);    // $98E1
}

// Decompiled from source/2-asm-vm\bank27.asm sub $98E2
// $98E2 poker_main
// (body @ $98E7)

word poker_main(word arg1, word arg2, word arg3) {
    local9 = 0;    // $98E8
    local6 = poker_read_hand(arg1, arg2);    // $98EF
    local5 = poker_loop_977b(arg1, arg2);    // $98F6
    *(byte*)(fp - 1) = 255;    // $98FA
    if (!(local6)) goto L_9917;    // $98FE
    if (!(local5)) goto L_9917;    // $9902
    *(byte*)(fp - 1) = ((((unsigned)*(byte*)((arg1 + 4)) >> 4) == 12) ? 7 : 6);    // $9914
L_9917:
    if (!((*(byte*)(fp - 1) == 255))) goto L_9935;    // $991E
    if (local6) goto L_9929;    // $9922
    if (!(local5)) goto L_9935;    // $9926
L_9929:
    *(byte*)(fp - 1) = (local6 ? 3 : 2);    // $9932
L_9935:
    if (!((*(byte*)(fp - 1) == 255))) goto L_9974;    // $993C
    local9 = poker_load_hand(arg1, arg2);    // $9945
    if (!(*(byte*)((arg2 + 4)))) goto L_9950;    // $9949
    goto L_9971;    // $994D
L_9950:
    if (!(*(byte*)((arg2 + 3)))) goto L_9960;    // $9953
    if (!(*(byte*)((arg2 + 2)))) goto L_9960;    // $9959
    goto L_9971;    // $995D
L_9960:
    if (!(*(byte*)((arg2 + 3)))) goto L_996A;    // $9963
    goto L_9971;    // $9967
L_996A:
    if (!(*(byte*)((arg2 + 2)))) goto L_9974;    // $996D
L_9971:
    *(byte*)(fp - 1) = 0;    // $9971
L_9974:
    local8 = 0;    // $9975
    local7 = 0;    // $9976
    switch (*(byte*)(fp - 1)) {    // $997A
        case 0: goto L_9991;    // $997A
        case 1: goto L_99FA;    // $997A
        case 2: goto L_9A08;    // $997A
        case 3: goto L_9A13;    // $997A
        case 4: goto L_9A2A;    // $997A
        case 5: goto L_9A41;    // $997A
        case 6: goto L_9A51;    // $997A
        case 7: goto L_9A5C;    // $997A
        default: goto L_9A62;    // $997A
    }    // $997A
L_9991:
    local7 = 13;    // $9992
    local8 = 6;    // $9994
    *(byte*)((arg2 + 1)) = *(byte*)((arg2 + 2));    // $999B
    *(byte*)((arg2 + 2)) = *(byte*)((arg2 + 5));    // $99A2
    local7 = (local7 + *(byte*)((arg2 + 5)));    // $99A6
    if (!((*(byte*)((arg2 + 1)) == 2))) goto L_99D6;    // $99AC
    local8 = 1;    // $99B0
    *(byte*)((arg2 + 3)) = *(byte*)((arg2 + 6));    // $99B7
    local7 = (local7 + ((*(byte*)((arg2 + 3)) * 11) + 2));    // $99C1
    *(byte*)&local11 = *(byte*)((arg2 + 2));    // $99C5
    *(byte*)((arg2 + 2)) = *(byte*)((arg2 + 3));    // $99CE
    *(byte*)((arg2 + 3)) = *(byte*)&local11;    // $99D5
L_99D6:
    local7 = (local7 * 2);    // $99DA
    *(byte*)(arg2) = *(byte*)(fp - 1);    // $99DF
    if (!(*(byte*)&arg3)) goto L_99F8;    // $99E3
    local7 = (local7 * 145);    // $99EC
    if (!(local8)) goto L_99F8;    // $99EE
    local7 = (local7 + ((unsigned)local9 / (unsigned)local8));    // $99F7
L_99F8:
    return local7;    // $99F9
L_99FA:
    *(byte*)((arg2 + 1)) = *(byte*)((arg2 + 7));    // $9A00
    phi_val_9a04 = (*(byte*)((arg2 + 7)) + 159);    // $9A01
L_9A04:
    local7 = phi_val_9a04;    // $9A04
    goto L_99D6;    // $9A05
L_9A08:
    phi_val_9a04 = (((unsigned)*(byte*)((arg1 + 4)) >> 4) + 169);    // $9A10
    goto L_9A04;    // $9A10
L_9A13:
    *(byte*)((arg2 + 1)) = (*(byte*)(arg1) & 15);    // $9A1A
    phi_val_9a23 = (((unsigned)*(byte*)((arg1 + 4)) >> 4) + 177);    // $9A20
L_9A23:
    local7 = phi_val_9a23;    // $9A23
    local8 = 56;    // $9A26
    goto L_99D6;    // $9A27
L_9A2A:
    *(byte*)((arg2 + 1)) = *(byte*)((arg2 + 7));    // $9A30
    *(byte*)((arg2 + 2)) = *(byte*)((arg2 + 5));    // $9A37
    phi_val_9a04 = (*(byte*)((arg2 + 7)) + 190);    // $9A3E
    goto L_9A04;    // $9A3E
L_9A41:
    *(byte*)((arg2 + 1)) = *(byte*)((arg2 + 8));    // $9A47
    phi_val_9a04 = (*(byte*)((arg2 + 7)) + 203);    // $9A4E
    goto L_9A04;    // $9A4E
L_9A51:
    phi_val_9a04 = (((unsigned)*(byte*)((arg1 + 4)) >> 4) + 213);    // $9A59
    goto L_9A04;    // $9A59
L_9A5C:
    phi_val_9a04 = 225;    // $9A5F
    goto L_9A04;    // $9A5F
L_9A62:
    phi_val_9a23 = ((unsigned)*(byte*)((arg1 + 4)) >> 4);    // $9A67
    goto L_9A23;    // $9A67
}
