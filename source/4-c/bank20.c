// Decompiled from source/2-asm-vm\bank20.asm sub $8003
// $8003 sum_cargo_qty
// (body @ $8008)

word sum_cargo_qty(word arg1) {
    local9 = ((arg1 * 24) + 0x6AA4);    // $8010
    local11 = 0;    // $8012
    phi_val_8023 = 0;    // $8014
    while (((unsigned)local10 < (unsigned)5)) {    // $8023
        local11 = (local11 + *(word*)((((local10 << 1) + local9) + 6)));    // $8020
        phi_val_8023 = (local10 + 1);    // $8022
        local10 = phi_val_8023;    // $8023
    }
    return local11;    // $802B
}

// Decompiled from source/2-asm-vm\bank20.asm sub $802C
// $802C calc_ship_total
// (body @ $8031)

word calc_ship_total(word arg1) {
    local11 = ((arg1 * 24) + 0x6AA4);    // $8039
    return (((sum_cargo_qty(arg1) + (*(word*)((local11 + 16)) / 10)) + (*(word*)((local11 + 18)) / 10)) + *(word*)((local11 + 20)));    // $8058
}

// Decompiled from source/2-asm-vm\bank20.asm sub $8059
// $8059 market_draw_gold
// (body @ $805E)

word market_draw_gold(word arg1, word arg2) {
    set_tile_cursor(18, ((arg1 << 1) + 8));    // $8064
    draw_field(0x94CA, record_base_6aa4(arg2), record_field_word((record_base_6b1c(arg2) + 18)));    // $807E
    set_tile_cursor(8, 17);    // $8085
    return draw_field_m1(0x94D2, mem_666B);    // $8093
}

// Decompiled from source/2-asm-vm\bank20.asm sub $8094
// $8094 market_draw_ship_load
// (body @ $8099)

word market_draw_ship_load(word arg1, word arg2) {
    mem_7064 = -1;    // $809B
    syscall_id09_syscall_banked_blit_m3(5, 3, 22, 17, 0xAD6A, 0xAEE0, 231);    // $80AE
    syscall_id08_syscall_queue_ppu_transfer(6, 6, 20, 1, 249, 0);    // $80BC
    set_tile_cursor(7, 4);    // $80C2
    draw_string(0x94E2, 1);    // $80CA
    phi_val_8111 = 0;    // $80CF
    while (((unsigned)local6 < (unsigned)arg1)) {    // $8111
        market_draw_gold(local6, *(byte*)((arg2 + local6)));    // $80D8
        *(word*)(((local6 << 1) + &local7)) = record_base_6b1c((*(byte*)(((*(byte*)((arg2 + local6)) * 7) + 0x6C96)) & 15));    // $80F7
        set_tile_cursor(7, ((local6 << 1) + 8));    // $80FD
        draw_string_banked(*(word*)(((local6 << 1) + &local7)));    // $810B
        phi_val_8111 = (local6 + 1);    // $8110
        local6 = phi_val_8111;    // $8111
    }
    return ((unsigned)local6 < (unsigned)arg1);    // $8118
}

// Decompiled from source/2-asm-vm\bank20.asm sub $8119
// $8119 market_draw_goods_list
// (body @ $811E)

word market_draw_goods_list(word arg1, word arg2, word arg3, word arg4, word arg5) {
    local11 = 0;    // $811F
    syscall_id08_syscall_queue_ppu_transfer(6, 7, 20, 10, 0, 0);    // $8128
    *(word*)(fp - 27) = ((current_port * 14) + 0x67B2);    // $8135
    *(word*)(fp - 11) = (*(byte*)((((current_port * 14) + 0x67B2) + 11)) + 50);    // $813B
    *(word*)(fp - 23) = ((arg1 * 24) + 0x6AA4);    // $8145
    *(word*)(fp - 15) = (((arg1 * 24) + 0x6AA4) + 6);    // $8148
    local8 = (*(word*)(fp - 23) + 1);    // $814D
    local9 = 0;    // $814F
    phi_val_8266 = 0;    // $8150
    while (((unsigned)local10 < (unsigned)5)) {    // $8266
        if (*(word*)(*(word*)(fp - 15))) {    // $8156
        if (local11) goto L_8199;    // $815A
        *(word*)(fp - 25) = ((current_port * 5) + 0xB50A);    // $8166
        *(byte*)(fp - 9) = record_field_byte((*(word*)(fp - 25) + 1));    // $8170
        *(word*)(fp - 17) = record_field_byte((*(word*)(fp - 25) + 2));    // $817B
        *(word*)(fp - 29) = ((record_field_byte(*(word*)(fp - 25)) * 88) + 0xB864);    // $818A
        *(word*)(fp - 19) = *(word*)(*(word*)(fp - 27));    // $818F
        *(word*)(fp - 21) = *(word*)((*(word*)(fp - 27) + 12));    // $8195
        local11 = 1;    // $8198
L_8199:
        set_tile_cursor(7, ((local9 << 1) + 7));    // $819E
        *(word*)(fp - 13) = record_field_word((((*(byte*)(local8) << 1) + *(word*)(fp - 29)) + 36));    // $81AF
        // ext_op ext_op_F1A9
        // ext_op ext_op_F263
        // ext_op ext_op_F1A9
        // ext_op ext_op_F26C
        // ext_op ext_op_EF81
        // ext_op sdiv32
        // ext_op ext_op_F1B3
        *(word*)(fp - 13) = *(word*)(fp - 13);    // $81C9
        if ((*(byte*)(fp - 9) == *(byte*)(local8))) {    // $81D3
        if (((*(word*)(fp - 17) * 50) <= *(word*)(fp - 19))) {    // $81DE
        // ext_op ext_op_F1A9
        // ext_op ext_op_F263
        // ext_op ext_op_F1A9
        // ext_op ext_op_F26C
        // ext_op ext_op_EF81
        // ext_op sdiv32
        // ext_op ext_op_F1B3
        *(word*)(fp - 13) = ((*(word*)(fp - 21) / 2) + 1);    // $81FC
        }
        }
L_81FE:
        *(word*)(((local9 << 1) + arg3)) = *(word*)(fp - 13);    // $8205
        *(word*)(((local9 << 1) + arg4)) = *(word*)(*(word*)(fp - 15));    // $820E
        *(word*)(((local9 << 1) + arg2)) = *(word*)(((*(byte*)(local8) << 1) + 0x94F5));    // $821C
        *(byte*)((arg5 + local9)) = local10;    // $8223
        draw_field_m1(0x95DF, *(word*)(((local9 << 1) + arg2)));    // $822D
        set_tile_cursor(18, ((local9 << 1) + 7));    // $8237
        draw_field_m1(0x95E2, *(word*)(*(word*)(fp - 15)));    // $8242
        set_tile_cursor(22, ((local9 << 1) + 7));    // $824C
        draw_field_m1(0x95E6, *(word*)(fp - 13));    // $8255
        local9 = (local9 + 1);    // $825B
        }
L_825C:
        *(word*)(fp - 15) = (*(word*)(fp - 15) + 2);    // $825F
        local8 = (local8 + 1);    // $8263
        phi_val_8266 = (local10 + 1);    // $8265
        local10 = phi_val_8266;    // $8266
    }
    return local9;    // $826E
}

// Decompiled from source/2-asm-vm\bank20.asm sub $826F
// $826F market_sell_screen
// (body @ $8274)

word market_sell_screen(word arg1, word arg2) {
    if (sum_cargo_qty(arg1)) goto L_828B;    // $8279
    draw_box_from_native();    // $827C
    draw_window();    // $827F
    draw_text(0x95EA);    // $8285
    return 0;    // $828A
L_828B:
    if ((mem_666B == 0xEA60)) {    // $8292
    draw_box_from_native();    // $8295
    draw_window();    // $8298
    draw_text(0x9609);    // $829E
    return 0;    // $82A3
    }
L_82A4:
    *(word*)(fp - 45) = 0;    // $82A5
    syscall_id08_syscall_queue_ppu_transfer(6, 7, 20, 10, 0, 0);    // $82AF
    set_tile_cursor(7, 4);    // $82B5
    draw_string(0x9638, 1);    // $82BD
    syscall_id08_syscall_queue_ppu_transfer(6, 6, 20, 1, 249, 0);    // $82CB
    set_tile_cursor(8, 17);    // $82D2
    draw_field_m1(0x964C, mem_666B);    // $82DC
    *(word*)(fp - 47) = 1;    // $82E1
    do {    // $82E3
        draw_window();    // $82E3
        draw_string(0x965C, 1);    // $82EA
        if (*(word*)(fp - 47)) {    // $82F0
        local11 = market_draw_goods_list(arg1, &local5, (fp - 29), (fp - 39), (fp - 19));    // $8308
        }
L_8309:
        local10 = menu_select(6, 8, 2, local11);    // $8311
        if ((local10 == 255)) goto L_8470;    // $8317
        // ext_op ext_op_F1AF
        // ext_op ext_op_F263
        // ext_op ext_op_F1A9
        // ext_op ext_op_F263
        // ext_op ext_op_F1A9
        // ext_op ext_op_F26C
        // ext_op ext_op_EF81
        // ext_op ext_op_F26C
        // ext_op ext_op_F03F
        // ext_op ext_op_F13E
        if (*(word*)(((local10 << 1) + (fp - 39)))) {    // $8349
        *(word*)(fp - 41) = (0xEA60 - mem_666B);    // $8353
        } else {
        }
L_8388:
        *(word*)(fp - 41) = *(word*)(((local10 << 1) + (fp - 39)));    // $8388
        draw_window();    // $838A
        draw_field_m1(0x9671, *(word*)(((local10 << 1) + &local5)));    // $839A
        *(word*)(fp - 43) = draw_labeled_value_1(0x968B, 1, *(word*)(fp - 41));    // $83A8
        if ((*(word*)(fp - 43) != 1)) {    // $83AF
        *(word*)((((*(byte*)((local10 + (fp - 19))) << 1) + (arg1 * 24)) + 0x6AAA)) = (*(word*)((((*(byte*)((local10 + (fp - 19))) << 1) + (arg1 * 24)) + 0x6AAA)) - *(word*)(fp - 43));    // $83CC
        mem_666B = (mem_666B + (*(word*)(((local10 << 1) + (fp - 29))) * *(word*)(fp - 43)));    // $83DE
        *(word*)(fp - 45) = 1;    // $83E2
        if (!(((unsigned)mem_666B > (unsigned)0xEA60))) goto L_83F4;    // $83EB
        mem_666B = 0xEA60;    // $83F1
L_83F4:
        set_tile_cursor(8, 17);    // $83F7
        draw_field_m1(0x968C, mem_666B);    // $8401
        if (!(((unsigned)((unsigned)(*(word*)(((local10 << 1) + (fp - 29))) * *(word*)(fp - 43)) / (unsigned)0x03E8) > (unsigned)10))) goto L_841F;    // $8417
        goto L_8430;    // $841C
L_841F:
L_8430:
        *(byte*)(arg2) = ((unsigned)(*(word*)(((local10 << 1) + (fp - 29))) * *(word*)(fp - 43)) / (unsigned)0x03E8);    // $8430
        if ((mem_666B != 0xEA60)) goto L_844B;    // $8438
        draw_box_from_native();    // $843B
        draw_window();    // $843E
        draw_text(0x969C);    // $8444
        return *(word*)(fp - 45);    // $844A
L_844B:
        if (sum_cargo_qty(arg1)) goto L_8463;    // $8450
        draw_box_from_native();    // $8453
        draw_window();    // $8456
        draw_text(0x96BC);    // $845C
        return *(word*)(fp - 45);    // $8462
L_8463:
        *(word*)(fp - 45) = 0;    // $8464
L_8467:
        *(word*)(fp - 47) = 1;    // $8467
        } else {
        goto L_8467;    // $846D
L_8470:
        *(word*)(fp - 45) = 255;    // $8473
        }
L_8475:
        if ((local10 == 255)) break;    // $847A
    } while (!(*(word*)(fp - 45)));    // $847F
L_8482:
    return *(word*)(fp - 45);    // $8484
        }
        }
}

// Decompiled from source/2-asm-vm\bank20.asm sub $8485
// $8485 market_sell_pick_ship
// (body @ $848A)

word market_sell_pick_ship(word arg1) {
    *(byte*)(arg1) = 0;    // $848C
    *(word*)(fp - 29) = 1;    // $848E
    *(word*)(fp - 17) = scan_records_6c90_flag(0, (fp - 5));    // $8499
    *(word*)(fp - 23) = 0;    // $849C
    while (((unsigned)*(word*)(fp - 19) < (unsigned)*(word*)(fp - 17))) {    // $84B9
        *(word*)(fp - 23) = (*(word*)(fp - 23) + sum_cargo_qty(*(byte*)((*(word*)(fp - 19) + (fp - 5)))));    // $84B4
        *(word*)(fp - 19) = (*(word*)(fp - 19) + 1);    // $84B9
    }
    if (*(word*)(fp - 23)) goto L_84D9;    // $84C5
    draw_box_from_native();    // $84C8
    win_render_syscall(1);    // $84CC
    draw_text(0x96D7);    // $84D3
    return 0;    // $84D8
L_84D9:
    if ((mem_666B == 0xEA60)) {    // $84E0
    draw_box_from_native();    // $84E3
    win_render_syscall(1);    // $84E7
    draw_text(0x96F4);    // $84EE
    return 0;    // $84F3
    }
L_84F4:
    *(word*)(fp - 27) = 0;    // $84F5
    *(word*)(fp - 25) = 0;    // $84F7
    mem_7063 = 240;    // $84FC
    blit_alloc_tiles(2, 2, 28, 18, 0);    // $8506
    clear_screen_top();    // $850A
    do {    // $850D
        draw_box_variant(6, 1);    // $850F
        win_render_syscall(1);    // $8514
        draw_string(0x9713, 1);    // $851C
        if (*(word*)(fp - 29)) {    // $8522
        market_draw_ship_load(*(word*)(fp - 17), (fp - 5));    // $852B
        *(word*)(fp - 29) = 0;    // $8530
        }
L_8532:
        *(word*)(fp - 21) = menu_select(6, 8, 2, *(word*)(fp - 17));    // $853B
        if ((*(word*)(fp - 21) != 255)) {    // $8543
        *(word*)(fp - 27) = market_sell_screen(*(byte*)((*(word*)(fp - 21) + (fp - 5))), arg1);    // $8555
        if (*(word*)(fp - 27)) {    // $8559
        if ((*(word*)(fp - 27) == 255)) {    // $8562
        *(word*)(fp - 27) = 0;    // $8566
        }
L_8568:
        *(word*)(fp - 29) = 1;    // $8569
        }
L_856B:
        *(word*)(fp - 25) = (*(word*)(fp - 25) | *(word*)(fp - 27));    // $8571
        }
L_8573:
        if ((*(word*)(fp - 21) == 255)) break;    // $8579
    } while (!(*(word*)(fp - 25)));    // $857E
L_8581:
    if ((*(word*)(fp - 25) || *(byte*)(arg1))) {    // $8588
    if (((unsigned)*(byte*)(((current_port * 14) + 0x67BD)) > (unsigned)9)) {    // $8597
    } else {
    }
L_85B8:
    *(byte*)(((current_port * 14) + 0x67BD)) = 0;    // $85B8
L_85B9:
    blit_free_tiles(2, 2, 28, 18, 0);    // $85C0
    return *(word*)(fp - 25);    // $85C6
    }
    }
}

// Decompiled from source/2-asm-vm\bank20.asm sub $85C7
// $85C7 sum_cargo_space
// (body @ $85CC)

word sum_cargo_space(word arg1) {
    local10 = ((arg1 * 24) + 0x6AAA);    // $85D4
    local11 = 0;    // $85D6
    phi_val_85e9 = 0;    // $85D8
    while (((unsigned)local9 < (unsigned)5)) {    // $85E9
        local10 = (local10 + 2);    // $85DD
        if (*(word*)((local10 + -2))) {    // $85E1
        local11 = (local11 + 1);    // $85E6
        }
L_85E7:
        phi_val_85e9 = (local9 + 1);    // $85E8
        local9 = phi_val_85e9;    // $85E9
    }
    return local11;    // $85F1
}

// Decompiled from source/2-asm-vm\bank20.asm sub $85F2
// $85F2 get_port_goods_row
// (body @ $85F7)

word get_port_goods_row(void) {
    local10 = ((record_field_byte(((current_port * 5) + 0xB50A)) * 88) + 0xB864);    // $860C
    local8 = (local10 + 9);    // $860F
    local7 = local10;    // $8611
    local6 = (local10 + 18);    // $8615
    local9 = ((current_port * 14) + 0x67B2);    // $861F
    local5 = *(word*)(local9);    // $8622
    local11 = 0;    // $8624
    do {    // $8625
        if (record_field_byte(local8)) {    // $862A
        if (((record_field_byte(local7) * 50) <= local5)) {    // $8637
        // ext_op ext_op_F1A9
        // ext_op ext_op_F263
        // ext_op ext_op_F1A9
        // ext_op ext_op_F26C
        // ext_op ext_op_EF81
        // ext_op sdiv32
        // ext_op ext_op_F1B3
        return record_field_word(local6);    // $8658
        }
        }
L_8659:
        local8 = (local8 + 1);    // $865B
        local6 = (local6 + 2);    // $865E
        local7 = (local7 + 1);    // $8661
        local11 = (local11 + 1);    // $8664
    } while (((unsigned)local11 < (unsigned)9));    // $8668
    return 0;    // $866C
}

// Decompiled from source/2-asm-vm\bank20.asm sub $866D
// $866D scan_ships_cargo
// (body @ $8672)

word scan_ships_cargo(word arg1, word arg2, word arg3) {
    local9 = ((arg1 * 24) + 0x6AA4);    // $867A
    local11 = 0;    // $867C
    do {    // $867D
        if (*(word*)((((local11 << 1) + local9) + 6))) {    // $8683
        *(word*)(arg3) = get_port_goods_row(*(byte*)(((local9 + local11) + 1)));    // $8691
        if (get_port_goods_row(*(byte*)(((local9 + local11) + 1)))) {    // $8692
        *(byte*)(arg2) = *(byte*)(((local9 + local11) + 1));    // $869B
        arg2 = (arg2 + 1);    // $869E
        arg3 = (arg3 + 2);    // $86A1
        *(byte*)(fp - 3) = (*(byte*)(fp - 3) + 1);    // $86A6
        }
        }
L_86A9:
        local11 = (local11 + 1);    // $86AB
    } while (((unsigned)local11 < (unsigned)5));    // $86AF
    local8 = ((current_port * 5) + 0xB50A);    // $86BB
    *(byte*)&local10 = record_field_byte((local8 + 1));    // $86C3
    if ((record_field_byte((local8 + 1)) != 255)) {    // $86CA
    local11 = 0;    // $86CE
    do {    // $86CF
        if (*(word*)((((local11 << 1) + local9) + 6))) {    // $86D5
        if ((*(byte*)(((local9 + local11) + 1)) == *(byte*)&local10)) {    // $86E3
        local7 = ((current_port * 14) + 0x67B2);    // $86EF
        *(byte*)(arg2) = *(byte*)&local10;    // $86F4
        arg2 = (arg2 + 1);    // $86F7
        // ext_op ext_op_F1A9
        // ext_op ext_op_F263
        // ext_op ext_op_F1A9
        // ext_op ext_op_F26C
        // ext_op ext_op_EF81
        // ext_op sdiv32
        // ext_op ext_op_F1B3
        *(word*)(arg3) = *(word*)((local7 + 12));    // $8715
        arg3 = (arg3 + 2);    // $8718
        *(byte*)(fp - 3) = (*(byte*)(fp - 3) + 1);    // $871D
        }
        }
L_8720:
        local11 = (local11 + 1);    // $8722
    } while (((unsigned)local11 < (unsigned)5));    // $8726
    }
L_8729:
    return *(byte*)(fp - 3);    // $872C
}

// Decompiled from source/2-asm-vm\bank20.asm sub $872D
// $872D find_ship_cargo_a
// (body @ $8732)

word find_ship_cargo_a(word arg1, word arg2) {
    local10 = ((arg1 * 24) + 0x6AA4);    // $873A
    local11 = 0;    // $873C
    do {    // $873D
        if ((!((*(byte*)(((local10 + local11) + 1)) != arg2)))) return *(word*)((((local11 << 1) + local10) + 6));    // $8744
        local11 = (local11 + 1);    // $8750
    } while (((unsigned)local11 < (unsigned)5));    // $8754
    return 0;    // $8758
}

// Decompiled from source/2-asm-vm\bank20.asm sub $8759
// $8759 find_ship_cargo_b
// (body @ $875E)

word find_ship_cargo_b(word arg1, word arg2) {
    local10 = ((arg1 * 24) + 0x6AA4);    // $8766
    local11 = 0;    // $8768
    do {    // $8769
        if (!((*(byte*)(((local10 + local11) + 1)) == arg2))) goto L_877E;    // $8770
        if (!(!(*(word*)((((local11 << 1) + local10) + 6))))) return 0;    // $8779
        local11 = (local11 + 1);    // $8780
    } while (((unsigned)local11 < (unsigned)5));    // $8784
    return 1;    // $8788
}

// Decompiled from source/2-asm-vm\bank20.asm sub $8789
// $8789 market_draw_cargo
// (body @ $878E)

word market_draw_cargo(word arg1, word arg2, word arg3, word arg4, word arg5) {
    set_tile_cursor(22, 16);    // $8792
    draw_string(0x9733, 0);    // $879A
    set_tile_cursor(22, 17);    // $87A2
    draw_field(0x9739, mem_666B);    // $87AC
    set_tile_cursor(22, 8);    // $87B3
    draw_string(0x973D, 0);    // $87BB
    set_tile_cursor(22, 9);    // $87C2
    draw_field(0x9746, sum_cargo_space(arg4));    // $87CF
    set_tile_cursor(22, 12);    // $87D6
    draw_string(0x9750, 0);    // $87DE
    set_tile_cursor(22, 13);    // $87E5
    draw_field(0x9756, (record_field_word((record_base_6b1c((*(byte*)(((arg4 * 7) + 0x6C96)) & 15)) + 18)) - calc_ship_total(arg4)));    // $880B
    phi_val_8897 = (arg5 * 6);    // $8813
    while (((unsigned)local11 < (unsigned)arg1)) {    // $8897
        set_tile_cursor(3, ((local11 << 1) + 8));    // $881B
        if ((sum_cargo_space(arg4) == 5)) {    // $8826
        if (!(find_ship_cargo_b(arg4, *(byte*)((((arg5 * 6) + arg2) + local11))))) goto L_883F;    // $8838
        phi_val_8840 = 3;    // $883C
        } else {
        phi_val_8840 = 0;    // $883F
        }
L_8840:
        local10 = phi_val_8840;    // $8840
        draw_string_banked(record_field_word(((*(byte*)((((arg5 * 6) + arg2) + local11)) << 1) + 0xBB49)));    // $8855
        set_tile_cursor(13, ((local11 << 1) + 8));    // $885E
        draw_field(0x975F, find_ship_cargo_a(arg4, *(byte*)((((arg5 * 6) + arg2) + local11))));    // $8875
        set_tile_cursor(17, ((local11 << 1) + 8));    // $887F
        draw_field(0x9763, *(word*)(((((arg5 * 6) + local11) << 1) + arg3)));    // $8891
        phi_val_8897 = (local11 + 1);    // $8896
        local11 = phi_val_8897;    // $8897
    }
    return ((unsigned)local11 < (unsigned)arg1);    // $889E
        }
}

// Decompiled from source/2-asm-vm\bank20.asm sub $889F
// $889F calc_port_prices
// (body @ $88A4)

word calc_port_prices(word arg1, word arg2) {
    local2 = ((current_port * 14) + 0x67B2);    // $88AD
    local6 = (*(byte*)((local2 + 11)) + 50);    // $88B3
    local7 = *(word*)(local2);    // $88B6
    local1 = ((current_port * 5) + 0xB50A);    // $88C0
    local11 = ((record_field_byte(local1) * 88) + 0xB864);    // $88CD
    local8 = local11;    // $88CF
    local9 = (local11 + 9);    // $88D2
    local5 = (local11 + 18);    // $88D6
    local0 = 0;    // $88D8
    *(word*)(fp - 26) = 0;    // $88D9
    while (((unsigned)local0 < (unsigned)9)) {    // $8935
        *(word*)(fp - 28) = record_field_byte(local9);    // $88E3
        if ((record_field_byte(local9) != 255)) {    // $88E9
        local4 = record_field_byte(local8);    // $88F1
        if (((local4 * 50) <= local7)) {    // $88F8
        *(byte*)((arg1 + *(word*)(fp - 26))) = *(word*)(fp - 28);    // $8902
        // ext_op ext_op_F1A9
        // ext_op ext_op_F263
        // ext_op ext_op_F1A9
        // ext_op ext_op_F26C
        // ext_op ext_op_EF81
        // ext_op sdiv32
        // ext_op ext_op_F1B3
        *(word*)(((*(word*)(fp - 26) << 1) + arg2)) = record_field_word(local5);    // $8923
        *(word*)(fp - 26) = (*(word*)(fp - 26) + 1);    // $8927
        }
        }
L_8929:
        local9 = (local9 + 1);    // $892B
        local8 = (local8 + 1);    // $892E
        local5 = (local5 + 2);    // $8931
        local0 = (local0 + 1);    // $8934
    }
    local10 = record_field_byte((local1 + 1));    // $8942
    if ((local10 != 255)) {    // $8948
    if (((record_field_byte((local1 + 2)) * 50) <= local7)) {    // $8957
    *(byte*)((arg1 + *(word*)(fp - 26))) = local10;    // $8960
    // ext_op ext_op_F1A9
    // ext_op ext_op_F263
    // ext_op ext_op_F1A9
    // ext_op ext_op_F26C
    // ext_op ext_op_EF81
    // ext_op sdiv32
    // ext_op ext_op_F1B3
    *(word*)(((*(word*)(fp - 26) << 1) + arg2)) = *(word*)((local2 + 12));    // $897F
    *(word*)(fp - 26) = (*(word*)(fp - 26) + 1);    // $8983
    }
    }
L_8985:
    return *(word*)(fp - 26);    // $8987
}

// Decompiled from source/2-asm-vm\bank20.asm sub $8988
// $8988 market_draw_goods_table
// (body @ $898D)

word market_draw_goods_table(word arg1, word arg2, word arg3, word arg4) {
    *(byte*)(fp - 13) = 225;    // $8990
    *(byte*)&local6 = 0;    // $8994
    local7 = 0;    // $8998
    local8 = 0;    // $8999
    local11 = 2;    // $899B
    phi_val_899d = 8;    // $899C
L_899D:
    local10 = phi_val_899d;    // $899D
L_899E:
    local9 = frame_sync(0);    // $89A3
    if (((local9 == 1) || (local9 == 2))) {    // $89AD
    phi_val_89b5 = 0;    // $89B1
    } else {
    phi_val_89b5 = 1;    // $89B4
    }
L_89B5:
    if (!(phi_val_89b5)) goto L_8A43;    // $89B5
    *(byte*)&local5 = ((local10 << 3) - 1);    // $89BC
    *(byte*)(fp - 11) = (local11 << 3);    // $89C2
    syscall_id13_syscall_set_chr_bank_alt(&local5, 0, 1);    // $89CC
    helper_ce4d(local9, 12);    // $89D2
    switch (local9) {    // $89D7
        case 16: goto L_89EC;    // $89D7
        case 32: goto L_8A02;    // $89D7
        case 64: goto L_8A3B;    // $89D7
        case 128: goto L_8A19;    // $89D7
        default: goto L_899E;    // $89D7
    }    // $89D7
L_89EC:
    if (local8) goto L_89F8;    // $89ED
    local8 = arg1;    // $89F1
    phi_val_899d = ((arg1 << 1) + 8);    // $89F5
    goto L_899D;    // $89F5
L_89F8:
    local8 = (local8 - 1);    // $89FA
    phi_val_899d = (local10 - 2);    // $89FF
    goto L_899D;    // $89FF
L_8A02:
    if ((local8 != arg1)) goto L_8A0F;    // $8A05
    local10 = 8;    // $8A09
    phi_val_8a0b = 0;    // $8A0A
L_8A0B:
    local8 = phi_val_8a0b;    // $8A0B
    goto L_899E;    // $8A0C
L_8A0F:
    local10 = (local10 + 2);    // $8A13
    phi_val_8a0b = (local8 + 1);    // $8A16
    goto L_8A0B;    // $8A16
L_8A19:
    if (local7) goto L_899E;    // $8A1A
    if (!(((unsigned)(arg1 + 1) > (unsigned)6))) goto L_899E;    // $8A21
    phi_val_8a25 = 1;    // $8A24
L_8A25:
    local7 = phi_val_8a25;    // $8A25
    syscall_id12_syscall_set_chr_banks(0, 1);    // $8A29
    market_draw_cargo((arg1 + 1), arg2, arg3, arg4, local7);    // $8A34
    goto L_899E;    // $8A38
L_8A3B:
    if (!(local7)) goto L_899E;    // $8A3C
    phi_val_8a25 = 0;    // $8A40
    goto L_8A25;    // $8A40
L_8A43:
    syscall_id12_syscall_set_chr_banks(0, 1);    // $8A46
    if (((local9 == 2))) return 255;    // $8A4D
    return ((local7 * 6) + local8);    // $8A59
    }
}

// Decompiled from source/2-asm-vm\bank20.asm sub $8A5A
// $8A5A market_buy_confirm
// (body @ $8A5F)

word market_buy_confirm(word arg1, word arg2, word arg3, word arg4) {
    if (!((sum_cargo_space(arg4) == 5))) goto L_8A76;    // $8A66
    if (find_ship_cargo_b(arg4, *(byte*)((arg2 + arg1)))) goto L_8A97;    // $8A73
L_8A76:
    if ((record_field_word((record_base_6b1c((*(byte*)(((arg4 * 7) + 0x6C96)) & 15)) + 18)) - calc_ship_total(arg4))) goto L_8AA6;    // $8A94
L_8A97:
    draw_box_from_native();    // $8A97
    draw_window();    // $8A9A
    draw_text(0x9767);    // $8AA0
    return 0;    // $8AA5
L_8AA6:
    draw_box_variant(6, 1);    // $8AA8
    draw_window();    // $8AAC
    local7 = *(word*)(((arg1 << 1) + arg3));    // $8AB4
    draw_string(0x9786, 0);    // $8AB9
    draw_string_banked(record_field_word(((*(byte*)((arg2 + arg1)) << 1) + 0xBB49)));    // $8ACC
    draw_string(0x9788, 0);    // $8AD4
    set_draw_origin(8, 23);    // $8ADB
    draw_field_m1(0x9796, local7);    // $8AE3
    local9 = mem_666B;    // $8AEA
    local6 = prompt_confirm();    // $8AEE
    if (!(local6)) goto L_8B0A;    // $8AF0
    if (!(((unsigned)local7 > (unsigned)local9))) goto L_8B7C;    // $8AF6
    draw_box_from_native();    // $8AF9
    win_render_syscall(1);    // $8AFD
    draw_text(0x97AF);    // $8B04
    return 0;    // $8B09
L_8B0A:
    if (!(((unsigned)*(byte*)(((current_port * 14) + 0x67BA)) >= (unsigned)(load_operand16_14(10) + 70)))) goto L_8BF8;    // $8B1E
    draw_box_variant(6, 1);    // $8B23
    win_render_syscall(1);    // $8B28
    local8 = max_s16(local9, local7);    // $8B32
    local11 = draw_labeled_value_1(0x97CD, 1, local8, 1);    // $8B3D
    if (((unsigned)local11 < (unsigned)(local7 - ((unsigned)((mem_6F74 + 1) * (local7 / 2)) / (unsigned)10)))) {    // $8B52
    draw_box_variant(6, 1);    // $8B57
    draw_window();    // $8B5B
    draw_text(0x97E9);    // $8B61
    return 1;    // $8B66
    }
L_8B67:
    if ((local11 == 1)) {    // $8B6B
    draw_window();    // $8B6E
    draw_text(0x9804);    // $8B74
    return 3;    // $8B79
    }
L_8B7A:
    local7 = local11;    // $8B7B
L_8B7C:
    local10 = (record_field_word((record_base_6b1c((*(byte*)(((arg4 * 7) + 0x6C96)) & 15)) + 18)) - calc_ship_total(arg4));    // $8B9A
    local10 = max_s16(local10, ((unsigned)mem_666B / (unsigned)local7));    // $8BA6
    draw_box_variant(6, 1);    // $8BA9
    draw_window();    // $8BAD
    draw_string(0x983D, 0);    // $8BB4
    draw_string_banked(record_field_word(((*(byte*)((arg2 + arg1)) << 1) + 0xBB49)));    // $8BC7
    set_draw_origin(8, 23);    // $8BCE
    draw_string(0x9848, 1);    // $8BD6
    local11 = draw_labeled_value(0x985A, 1, local10, 1);    // $8BE4
    if ((local11 == 1)) {    // $8BE9
    draw_window();    // $8BEC
    draw_text(0x985B);    // $8BF2
    return 3;    // $8BF7
L_8BF8:
    draw_box_variant(6, 1);    // $8BFA
    draw_window();    // $8BFE
    draw_text(0x981E);    // $8C04
    return 0;    // $8C09
    }
L_8C0A:
    *(word*)(fp - 17) = ((arg4 * 24) + 0x6AA4);    // $8C12
    local6 = 0;    // $8C15
    while (((unsigned)*(byte*)(fp - 13) < (unsigned)5)) {    // $8C3B
        if ((*(byte*)(((*(byte*)(fp - 13) + *(word*)(fp - 17)) + 1)) == *(byte*)((arg2 + arg1)))) {    // $8C29
        *(byte*)&local5 = *(byte*)(fp - 13);    // $8C2F
        local6 = 1;    // $8C33
        } else {
        *(byte*)(fp - 13) = (*(byte*)(fp - 13) + 1);    // $8C3B
    }
        }
L_8C46:
    if (local6) goto L_8C74;    // $8C47
    while (((unsigned)*(byte*)(fp - 13) < (unsigned)5)) {    // $8C69
        if (*(word*)((((*(byte*)(fp - 13) << 1) + *(word*)(fp - 17)) + 6))) goto L_8C65;    // $8C57
        *(byte*)&local5 = *(byte*)(fp - 13);    // $8C5D
        local6 = 1;    // $8C61
        goto L_8C74;    // $8C62
L_8C65:
        *(byte*)(fp - 13) = (*(byte*)(fp - 13) + 1);    // $8C69
    }
L_8C74:
    *(byte*)(((*(byte*)&local5 + *(word*)(fp - 17)) + 1)) = *(byte*)((arg2 + arg1));    // $8C80
    *(word*)((((*(byte*)&local5 << 1) + *(word*)(fp - 17)) + 6)) = (*(word*)((((*(byte*)&local5 << 1) + *(word*)(fp - 17)) + 6)) + local11);    // $8C8E
    mem_666B = (mem_666B - (local11 * local7));    // $8C97
    if (((unsigned)(local11 * local7) > (unsigned)0x03E8)) {    // $8CA1
    *(byte*)(fp - 15) = max_s16(10, ((unsigned)(local11 * local7) / (unsigned)0x03E8));    // $8CB1
    if (((unsigned)(*(byte*)(((current_port * 14) + 0x67BD)) + *(byte*)(fp - 15)) > (unsigned)100)) {    // $8CC7
    } else {
    }
L_8CE9:
    *(byte*)(((current_port * 14) + 0x67BD)) = (*(byte*)(((current_port * 14) + 0x67BD)) + *(byte*)(fp - 15));    // $8CE9
L_8CEA:
    return 0;    // $8CEB
    }
    }
        }
}

// Decompiled from source/2-asm-vm\bank20.asm sub $8CEC
// $8CEC market_buy_menu
// (body @ $8CF1)

word market_buy_menu(word arg1) {
    local4 = 0;    // $8CF2
    if ((calc_ship_total(arg1) == record_field_word((record_base_6b1c((*(byte*)(((arg1 * 7) + 0x6C96)) & 15)) + 18)))) goto L_8D2F;    // $8D11
    if ((sum_cargo_space(arg1) == 5)) {    // $8D1B
    local6 = scan_ships_cargo(arg1, &local7, (fp - 36));    // $8D2B
    if (scan_ships_cargo(arg1, &local7, (fp - 36))) goto L_8D40;    // $8D2C
L_8D2F:
    draw_box_from_native();    // $8D2F
    draw_window();    // $8D32
    draw_text(0x9882);    // $8D38
    return 255;    // $8D3F
    }
L_8D40:
    clear_screen_top();    // $8D40
    syscall_id09_syscall_banked_blit_m3(1, 3, 30, 17, 0xB056, 0xB254, 231);    // $8D53
    syscall_id08_syscall_queue_ppu_transfer(2, 6, 28, 1, 249, 0);    // $8D61
    syscall_id08_syscall_queue_ppu_transfer(21, 7, 1, 12, 250, 0);    // $8D6F
    set_tile_cursor(3, 4);    // $8D75
    draw_string(0x9895, 1);    // $8D7D
    *(word*)(fp - 40) = 1;    // $8D82
    do {    // $8D84
        *(word*)(fp - 38) = 0;    // $8D85
        if (*(word*)(fp - 40)) {    // $8D89
        local6 = calc_port_prices(&local7, (fp - 36));    // $8D98
        }
L_8D99:
        *(word*)(fp - 40) = 1;    // $8D9A
        draw_box_variant(6, 1);    // $8D9E
        draw_window();    // $8DA2
        draw_string(0x98A8, 1);    // $8DA9
        market_draw_cargo(local6, &local7, (fp - 36), arg1, local4);    // $8DB8
        local5 = market_draw_goods_table((local6 - 1), &local7, (fp - 36), arg1);    // $8DCC
        if ((local5 != 255)) {    // $8DD2
        *(word*)(fp - 38) = market_buy_confirm(local5, &local7, (fp - 36), arg1);    // $8DE3
        if ((*(word*)(fp - 38) == 3)) {    // $8DE9
        *(word*)(fp - 38) = 0;    // $8DED
        *(word*)(fp - 40) = 0;    // $8DEF
        }
L_8DF1:
        if ((record_base_6aa4(arg1) == record_field_word((record_base_6b1c(arg1) + 18)))) {    // $8E05
        draw_box_from_native();    // $8E08
        draw_window();    // $8E0B
        draw_text(0x98C7);    // $8E11
        return 1;    // $8E16
        }
        }
L_8E17:
        if ((local5 == 255)) break;    // $8E1C
    } while (!(*(word*)(fp - 38)));    // $8E21
L_8E24:
    return *(word*)(fp - 38);    // $8E26
}

// Decompiled from source/2-asm-vm\bank20.asm sub $8E27
// $8E27 market_buy_pick_ship
// (body @ $8E2C)

word market_buy_pick_ship(word arg1) {
    *(byte*)(arg1) = 0;    // $8E2E
    local0 = 0;    // $8E30
    *(byte*)(fp - 1) = scan_records_6c90_flag(0, &local8);    // $8E3A
    local1 = 1;    // $8E3E
    local2 = 0;    // $8E40
    goto L_8E96;    // $8E42
L_8E45:
    if (!((calc_ship_total(*(byte*)((*(byte*)&local11 + &local8))) < record_field_word((record_base_6b1c((*(byte*)(((*(byte*)((*(byte*)&local11 + &local8)) * 7) + 0x6C96)) & 15)) + 18))))) goto L_8E92;    // $8E76
    if (!(((unsigned)sum_cargo_space(*(byte*)((*(byte*)&local11 + &local8))) <= (unsigned)5))) goto L_8E92;    // $8E8A
    local1 = 0;    // $8E8E
    goto L_8EA5;    // $8E8F
L_8E92:
L_8E96:
    *(byte*)&local11 = (*(byte*)&local11 + 1);    // $8E96
    if (((unsigned)*(byte*)&local11 < (unsigned)*(byte*)(fp - 1))) goto L_8E45;    // $8EA2
L_8EA5:
    if (!(local1)) goto L_8EB8;    // $8EA6
    draw_box_from_native();    // $8EA9
    draw_window();    // $8EAC
    draw_text(0x98DF);    // $8EB2
    return 0;    // $8EB7
L_8EB8:
    if (mem_666B) goto L_8ECD;    // $8EBB
    draw_box_from_native();    // $8EBE
    draw_window();    // $8EC1
    draw_text(0x98FE);    // $8EC7
    return 0;    // $8ECC
L_8ECD:
    local1 = 0;    // $8ECE
    mem_7063 = 240;    // $8ED2
L_8EE0:
    blit_alloc_tiles(2, 2, 28, 18, 0);    // $8EDC
    draw_box_variant(6, 1);    // $8EE2
    draw_window();    // $8EE6
    draw_string(0x991E, 1);    // $8EED
    if (local0) goto L_8F06;    // $8EF2
    clear_screen_top();    // $8EF5
    market_draw_ship_load(*(byte*)(fp - 1), &local8);    // $8F00
    local0 = 1;    // $8F05
L_8F06:
    *(byte*)(fp - 3) = menu_select(6, 8, 2, *(byte*)(fp - 1));    // $8F11
    if (!((*(byte*)(fp - 3) != 255))) goto L_8F3E;    // $8F1B
    local1 = market_buy_menu(*(byte*)((*(byte*)(fp - 3) + &local8)), arg1);    // $8F2E
    if ((local1 != 255)) goto L_8F3C;    // $8F34
    local1 = 0;    // $8F38
    goto L_8F3E;    // $8F39
L_8F3C:
    local0 = 0;    // $8F3D
L_8F3E:
    if ((*(byte*)(fp - 3) == 255)) goto L_8F4C;    // $8F45
    if (!(local1)) goto L_8EE0;    // $8F49
L_8F4C:
    if (!(local1)) goto L_8F80;    // $8F4D
    if (!(((unsigned)*(byte*)(((current_port * 14) + 0x67BD)) < (unsigned)90))) goto L_8F73;    // $8F5D
    goto L_8F7F;    // $8F70
L_8F73:
L_8F7F:
    *(byte*)(((current_port * 14) + 0x67BD)) = 100;    // $8F7F
L_8F80:
    clear_screen_top();    // $8F80
    blit_free_tiles(2, 2, 28, 18, 0);    // $8F8A
    return 0;    // $8F8F
}

// Decompiled from source/2-asm-vm\bank20.asm sub $8F90
// $8F90 find_ship_with_good
// (body @ $8F95)

word find_ship_with_good(word arg1, word arg2) {
    local11 = 0;    // $8F96
    do {    // $8F97
        if ((!((record_field_byte(arg1) != *(byte*)&arg2)))) return local11;    // $8FA2
        arg1 = (arg1 + 1);    // $8FA9
        local11 = (local11 + 1);    // $8FAC
    } while (((unsigned)local11 < (unsigned)9));    // $8FB0
    return 255;    // $8FB6
}

// Decompiled from source/2-asm-vm\bank20.asm sub $8FB7
// $8FB7 market_price_list
// (body @ $8FBC)

word market_price_list(word arg1, word arg2) {
    local10 = ((current_port * 5) + 0xB50A);    // $8FC5
    local4 = record_field_byte((local10 + 1));    // $8FCD
    local3 = record_field_byte((local10 + 2));    // $8FD5
    local11 = ((record_field_byte(local10) * 88) + 0xB864);    // $8FE2
    local8 = local11;    // $8FE4
    local7 = (local11 + 9);    // $8FE7
    local2 = (local11 + 18);    // $8FEB
    local1 = (local11 + 36);    // $8FEF
    local9 = ((current_port * 14) + 0x67B2);    // $8FF9
    *(word*)(fp - 28) = *(word*)(local9);    // $8FFC
    *(word*)(fp - 30) = *(word*)((local9 + 12));    // $9001
    local0 = (*(byte*)((local9 + 11)) + 50);    // $9008
    if (arg2) {    // $900A
    clear_screen_top();    // $900D
    syscall_id09_syscall_banked_blit_m3(5, 3, 22, 17, 0xAD6A, 0xAEE0, 231);    // $9020
    set_tile_cursor(6, 4);    // $9026
    draw_string(0x998E, 0);    // $902E
    set_tile_cursor(6, 5);    // $9034
    phi_9051_0 = 6;    // $9048
    phi_9051_1 = 20;    // $9048
    phi_9051_2 = 1;    // $9048
    phi_9051_3 = 249;    // $9048
    phi_9051_4 = 0;    // $9048
    draw_string(0x99A3, 0);    // $903C
    } else {
    phi_9051_0 = 7;    // $9050
    phi_9051_1 = 20;    // $9050
    phi_9051_2 = 12;    // $9050
    phi_9051_3 = 0;    // $9050
    phi_9051_4 = 0;    // $9050
    }
L_9051:
    syscall_id08_syscall_queue_ppu_transfer(6, phi_9051_0, phi_9051_1, phi_9051_2, phi_9051_3, phi_9051_4);    // $9053
    phi_val_9195 = 0;    // $9058
    while (((unsigned)local6 < (unsigned)*(byte*)((arg1 + 0x9951)))) {    // $9195
        set_tile_cursor(6, ((local6 << 1) + 8));    // $9060
        draw_string_banked(record_field_word((((*(byte*)((arg1 + 0x994B)) + local6) << 1) + 0xBB49)));    // $9077
        local5 = find_ship_with_good(local7, (*(byte*)((arg1 + 0x994B)) + local6));    // $9089
        set_tile_cursor(16, ((local6 << 1) + 8));    // $9090
        *(word*)(fp - 32) = record_field_byte((local8 + local5));    // $909C
        if ((local5 != 255)) {    // $90A3
        if (!(((*(word*)(fp - 32) * 50) <= *(word*)(fp - 28)))) goto L_90DA;    // $90AE
        // ext_op ext_op_F1A9
        // ext_op ext_op_F263
        // ext_op ext_op_F1A9
        // ext_op ext_op_F26C
        // ext_op ext_op_EF81
        // ext_op sdiv32
        // ext_op ext_op_F1B3
        phi_90d3_0 = 0x99B8;    // $90D0
        phi_90d3_1 = record_field_word(((local5 << 1) + local2));    // $90D0
L_90D3:
        draw_field(phi_90d3_0, phi_90d3_1);    // $90D3
        } else {
        if ((local4 == 255)) goto L_911E;    // $90DF
        if (!(((*(byte*)((arg1 + 0x994B)) + local6) == local4))) goto L_911E;    // $90EC
        if (!(((local3 * 50) <= *(word*)(fp - 28)))) goto L_9117;    // $90F6
        // ext_op ext_op_F1A9
        // ext_op ext_op_F263
        // ext_op ext_op_F1A9
        // ext_op ext_op_F26C
        // ext_op ext_op_EF81
        // ext_op sdiv32
        // ext_op ext_op_F1B3
        phi_90d3_0 = 0x99BC;    // $9114
        phi_90d3_1 = *(word*)(fp - 30);    // $9114
        goto L_90D3;    // $9114
L_9117:
        phi_9122_0 = 0x99C0;    // $911B
        phi_9122_1 = 0;    // $911B
        goto L_9122;    // $911B
L_911E:
        phi_9122_0 = 0x99C5;    // $911F
        phi_9122_1 = 0;    // $911F
L_9122:
        }
L_9126:
        draw_string(phi_9122_0, phi_9122_1);    // $9122
        set_tile_cursor(22, ((local6 << 1) + 8));    // $912C
        // ext_op ext_op_F1A9
        // ext_op ext_op_F263
        // ext_op ext_op_F1A9
        // ext_op ext_op_F26C
        // ext_op ext_op_EF81
        // ext_op sdiv32
        // ext_op ext_op_F1B3
        *(word*)(fp - 26) = record_field_word((((*(byte*)((arg1 + 0x994B)) + local6) << 1) + local1));    // $9155
        if (((*(byte*)((arg1 + 0x994B)) + local6) == local4)) {    // $9161
        if (((unsigned)(local3 * 50) <= (unsigned)*(word*)(fp - 28))) {    // $916B
        // ext_op ext_op_F1A9
        // ext_op ext_op_F263
        // ext_op ext_op_F1A9
        // ext_op ext_op_F26C
        // ext_op ext_op_EF81
        // ext_op sdiv32
        // ext_op ext_op_F1B3
        *(word*)(fp - 26) = ((*(word*)(fp - 30) / 2) + 1);    // $9188
        }
        }
L_918A:
        draw_field(0x99CA, *(word*)(fp - 26));    // $918F
        phi_val_9195 = (local6 + 1);    // $9194
        local6 = phi_val_9195;    // $9195
    }
    set_tile_cursor(12, 17);    // $91A6
    draw_field_m1(0x99CE, *(word*)(((arg1 << 1) + 0x993F)));    // $91B5
    phi_ret_91c6 = ((unsigned)arg1 < (unsigned)5);    // $91BC
    if (phi_ret_91c6) {    // $91BC
    phi_ret_91c6 = draw_field_m1(0x99D1);    // $91C2
    }
L_91C6:
    return phi_ret_91c6;    // $91C6
        }
    }
}

// Decompiled from source/2-asm-vm\bank20.asm sub $91C7
// $91C7 market_pick_ship
// (body @ $91CC)

word market_pick_ship(void) {
    local10 = 1;    // $91CD
    local11 = 1;    // $91CE
    do {    // $91CF
        draw_box_variant(6, 1);    // $91D1
        win_render_syscall(1);    // $91D6
        draw_string(0x9A09, 1);    // $91DE
        local9 = draw_tile_grid(8, 23, 7, 2, 0x99D9, 6, 2);    // $91F0
        if ((local9 != 255)) {    // $91F6
        mem_7063 = 240;    // $91FC
        if (local11) {    // $9200
        blit_alloc_tiles(2, 2, 28, 18, 0);    // $920A
        local11 = 0;    // $920F
        }
L_9210:
        market_price_list(local9, local10);    // $9212
        local10 = 0;    // $9217
        }
L_9218:
    } while ((local9 != 255));    // $921D
    if (local11) goto L_922F;    // $9221
L_922F:
    blit_free_tiles(2, 2, 28, 18, 0);    // $922B
    return 0;    // $9230
}

// Decompiled from source/2-asm-vm\bank20.asm sub $9231
// $9231 accrue_port_investment
// (body @ $9236)

word accrue_port_investment(void) {
    phi_ret_926d = ((unsigned)mem_6F72 < (unsigned)0xC350);    // $923D
    if (phi_ret_926d) {    // $923D
    local11 = ((current_port * 14) + 0x67B2);    // $9249
    local10 = ((load_operand16_14(100) + ((unsigned)(*(word*)((local11 + 4)) + *(word*)(local11)) >> 1)) + mem_6F72);    // $9261
    mem_6F72 = max_s16(local10, 0xC350);    // $926A
    phi_ret_926d = max_s16(local10, 0xC350);    // $926A
    }
L_926D:
    return phi_ret_926d;    // $926D
}

// Decompiled from source/2-asm-vm\bank20.asm sub $926E
// $926E calc_good_price
// (body @ $9273)

word calc_good_price(word arg1) {
    local11 = ((current_port * 14) + 0x67B2);    // $927C
    local10 = *(byte*)((((arg1 << 1) << 1) + 0x6FBE));    // $9285
    local10 = (((load_operand16_14(3) + ((unsigned)(*(word*)((local11 + 4)) + *(word*)(local11)) / (unsigned)65)) + local10) + 5);    // $929C
    *(byte*)((((arg1 << 1) << 1) + 0x6FBE)) = max_s16(local10, 100);    // $92AC
    return max_s16(local10, 100);    // $92AD
}

// Decompiled from source/2-asm-vm\bank20.asm sub $92AE
// $92AE market_invest_port
// (body @ $92B3)

word market_invest_port(void) {
    if (mem_666B) goto L_92C8;    // $92B6
    draw_box_from_native();    // $92B9
    draw_window();    // $92BC
    draw_text(0x9A14);    // $92C2
    return 0;    // $92C7
L_92C8:
    if (((unsigned)current_port < (unsigned)3)) {    // $92CD
    draw_box_variant(6, 1);    // $92D2
    draw_window();    // $92D6
    draw_field_m1(0x9A27, ((current_port == 2) ? 0x9A60 : 0x9A67));    // $92EE
    return 0;    // $92F3
    }
L_92F4:
    if ((*(word*)(((current_port * 14) + 0x67B4)) == 0xEA60)) {    // $9302
    draw_box_variant(6, 1);    // $9307
    draw_window();    // $930B
    draw_text(0x9A6C);    // $9311
    return 0;    // $9316
    }
L_9317:
    draw_box_variant(6, 1);    // $9319
    win_render_syscall(1);    // $931E
    draw_text(0x9A8C);    // $9325
    local11 = (0xEA60 - *(word*)(((current_port * 14) + 0x67B4)));    // $9339
    if (((unsigned)mem_666B < (unsigned)local11)) {    // $933F
    local11 = mem_666B;    // $9345
    }
L_9346:
    draw_box_from_native();    // $9346
    draw_window();    // $9349
    local10 = draw_labeled_value(0x9AAC, 1, local11, 1);    // $9356
    if ((local10 == 1)) {    // $935B
    draw_box_variant(6, 1);    // $9360
    draw_window();    // $9364
    draw_text(0x9AC5);    // $936A
    return 0;    // $936F
    }
L_9370:
    *(word*)(((current_port * 14) + 0x67B4)) = (*(word*)(((current_port * 14) + 0x67B4)) + max_s16((0xEA60 - *(word*)(((current_port * 14) + 0x67B4))), local10));    // $9394
    mem_666B = (mem_666B - local10);    // $939B
    draw_box_variant(6, 1);    // $93A0
    draw_window();    // $93A4
    if (((unsigned)local10 < (unsigned)0x03E8)) {    // $93AC
    local9 = ((unsigned)(local10 + 1) / (unsigned)20);    // $93B4
    phi_93df_0 = 0x9AEF;    // $93B9
    phi_93df_1 = 1;    // $93B9
    } else {
    if (!(((unsigned)local10 > (unsigned)0x270F))) goto L_93D4;    // $93C1
    local9 = (((unsigned)local10 / (unsigned)0x03E8) + 150);    // $93CC
    phi_93df_0 = 0x9B00;    // $93D1
    phi_93df_1 = 1;    // $93D1
    goto L_93DF;    // $93D1
L_93D4:
    local9 = (((unsigned)local10 / (unsigned)100) + 50);    // $93DA
    phi_93df_0 = 0x9B25;    // $93DC
    phi_93df_1 = 1;    // $93DC
    }
L_93DF:
    draw_string(phi_93df_0, phi_93df_1);    // $93DF
    scale_6b88(1);    // $93E4
    if (((unsigned)*(byte*)(((current_port * 14) + 0x67BA)) > (unsigned)49)) {    // $93F5
    } else {
    }
L_9420:
    local8 = (((unsigned)(local9 + 1) / (unsigned)((unsigned)(100 - *(byte*)(((current_port * 14) + 0x67BA))) / (unsigned)7)) + load_operand16_14(2));    // $9429
    local7 = (*(byte*)((current_port + 0x6F76)) & 3);    // $9434
    record_scan_67ba(current_port, 0, local8);    // $943B
    local6 = (*(byte*)((current_port + 0x6F76)) & 3);    // $9449
    if ((local7 != local6)) {    // $944D
    if (local6) goto L_946A;    // $9451
    if (((local7 == 2) || (local7 == 3))) {    // $945D
    calc_good_price((local7 - 1));    // $9463
    } else {
    if ((local7 == 1)) goto L_9479;    // $946D
    if ((local6 != 1)) goto L_9479;    // $9473
    }
L_9479:
    accrue_port_investment();    // $9476
    return 1;    // $947A
    }
    }
    }
    }
}

// Decompiled from source/2-asm-vm\bank20.asm sub $947B
// $947B market_help_menu
// (body @ $9480)

word market_help_menu(void) {
    local10 = 0;    // $9481
    do {    // $9482
        draw_box_variant(6, 1);    // $9484
        draw_window();    // $9488
        draw_string(0x9B65, 1);    // $948F
        *(byte*)(fp - 1) = draw_tile_grid(8, 23, 7, 2, 0x9B39, 4, 2);    // $94A1
        if ((*(byte*)(fp - 1) != 255)) {    // $94AB
        local10 = (*(*(word*)(((*(byte*)(fp - 1) << 1) + 0x9B41))))(&local11);    // $94BD
        }
L_94BE:
    } while ((*(byte*)(fp - 1) != 255));    // $94C5
    return local10;    // $94C9
}
