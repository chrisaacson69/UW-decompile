// Decompiled from source/2-asm-vm\bank22.asm sub $8003
// $8003 shipyard_entry
// (body @ $8008)

word shipyard_entry(void) {
    if (!((scan_records_6c90_flag(0, (fp - 23)) == 5))) goto L_8025;    // $8013
    draw_box_from_native();    // $8016
    draw_window();    // $8019
    draw_text(0x9083);    // $801F
    return 0;    // $8024
L_8025:
    if (search_6a9a((fp - 23))) goto L_803F;    // $802D
    draw_box_from_native();    // $8030
    draw_window();    // $8033
    draw_text(0x9099);    // $8039
    return 0;    // $803E
L_803F:
    if (!((*(word*)(((current_port * 14) + 0x67B6)) < 100))) goto L_8061;    // $804C
    draw_box_variant(5, 1);    // $8051
    draw_window();    // $8055
    draw_text(0x90B5);    // $805B
    return 0;    // $8060
L_8061:
    local11 = 0;    // $8062
L_8063:
    draw_box_variant(5, 1);    // $8065
    draw_window();    // $8069
    draw_string(0x90DD, 1);    // $8070
    *(byte*)(fp - 3) = draw_tile_grid(8, 23, 0, 2, 0x905E, 2, 2);    // $8082
    if (!((*(byte*)(fp - 3) != 255))) goto L_80CE;    // $808C
    blit_alloc_tiles(2, 2, 28, 18, 0);    // $8096
    local11 = (*(*(word*)(((*(byte*)(fp - 3) << 1) + 0x9062))))();    // $80A4
    mem_7063 = 240;    // $80A8
    if (!(local11)) goto L_80B8;    // $80AC
    if ((local11 == 1)) goto L_80B8;    // $80B2
L_80B8:
    reset_all_chr();    // $80B5
    call_in_bank_dcd1(1, 222, shipyard_entry);    // $80BF
L_80CE:
    blit_free_tiles(2, 2, 28, 18, 0);    // $80CA
    if ((*(byte*)(fp - 3) == 255)) goto L_80DC;    // $80D5
    if (!(local11)) goto L_8063;    // $80D9
L_80DC:
    if (!(local11)) goto L_812C;    // $80DD
    if ((local11 == 1)) goto L_812C;    // $80E3
    local11 = (local11 - 5);    // $80EA
    *(word*)(fp - 25) = ((local11 * 7) + 0x6C90);    // $80F2
    draw_box_from_native();    // $80F4
    draw_window();    // $80F7
    draw_string(0x90F1, 0);    // $80FE
    draw_string_banked(record_base_6b1c((*(byte*)((*(word*)(fp - 25) + 6)) & 15)));    // $810E
    draw_string(0x910D, 0);    // $8116
    *(byte*)(((local11 * 24) + 0x6AA4)) = search_6a9a_ptr();    // $8126
    local11 = 1;    // $8128
L_812C:
    win_close();    // $8129
    return local11;    // $812D
}

// Decompiled from source/2-asm-vm\bank22.asm sub $812E
// $812E load_shipyard_sprites
// (body @ $8133)

word load_shipyard_sprites(void) {
    return syscall_id06_syscall_set_sprite_block(0x9116, 8, 8);    // $813D
}

// Decompiled from source/2-asm-vm\bank22.asm sub $813E
// $813E draw_ship_icon
// (body @ $8143)

word draw_ship_icon(word arg1) {
    load_shipyard_sprites();    // $8143
    local11 = ((((unsigned)arg1 % (unsigned)3) * 9) + 3);    // $814C
    local10 = ((((unsigned)arg1 / (unsigned)3) * 7) + 1);    // $8153
    local9 = record_base_6b1c((arg1 + 5));    // $815B
    draw_ship_icon_class(local11, (local10 + 6), (arg1 + 5));    // $816A
    set_tile_cursor(local11, (local10 + 11));    // $8172
    return draw_string_banked(local9);    // $817B
}

// Decompiled from source/2-asm-vm\bank22.asm sub $817C
// $817C shipyard_clear
// (body @ $8181)

word shipyard_clear(word arg1) {
    mem_7064 = -1;    // $8183
    clear_two_ppu_regions();    // $8186
    phi_val_8194 = 0;    // $818A
    while (((unsigned)local11 < (unsigned)(arg1 + 1))) {    // $8194
        draw_ship_icon(local11);    // $818E
        phi_val_8194 = (local11 + 1);    // $8193
        local11 = phi_val_8194;    // $8194
    }
    return ((unsigned)local11 < (unsigned)(arg1 + 1));    // $819E
}

// Decompiled from source/2-asm-vm\bank22.asm sub $819F
// $819F get_ship_condition
// (body @ $81A4)

word get_ship_condition(word arg1) {
    local11 = ((((unsigned)record_field_byte((record_base_6b1c(arg1) + 20)) >> 5) & 7) * 10);    // $81B6
    local10 = ((record_field_byte((record_base_6b1c(arg1) + 20)) & 3) * 10);    // $81C7
    return ((local11 + local10) + 20);    // $81CD
}

// Decompiled from source/2-asm-vm\bank22.asm sub $81CE
// $81CE calc_used_ship_price
// (body @ $81D3)

word calc_used_ship_price(word arg1) {
    return (((((((20 - (((unsigned)record_field_byte((record_base_6b1c(*(byte*)&arg1) + 20)) >> 5) & 7)) * 100) / 20) * (10 - (((unsigned)record_field_byte((record_base_6b1c(*(byte*)&arg1) + 20)) >> 2) & 3))) / 10) * (4 - (((unsigned)record_field_byte((record_base_6b1c(*(byte*)&arg1) + 20)) >> 4) & 1))) / 4);    // $8229
}

// Decompiled from source/2-asm-vm\bank22.asm sub $822A
// $822A calc_ship_price_capped
// (body @ $822F)

word calc_ship_price_capped(word arg1) {
    local11 = ((unsigned)((((((((unsigned)record_field_byte((record_base_6b1c(*(byte*)&arg1) + 20)) >> 2) & 3) * 10) + 100) * (10 - (((unsigned)record_field_byte((record_base_6b1c(*(byte*)&arg1) + 20)) >> 5) & 7))) / 10) * ((((unsigned)record_field_byte((record_base_6b1c(*(byte*)&arg1) + 20)) >> 4) & 1) + 3)) >> 2);    // $827B
    return ((local11 > 100) ? 100 : local11);    // $8289
}

// Decompiled from source/2-asm-vm\bank22.asm sub $828A
// $828A calc_ship_build_cost
// (body @ $828F)

word calc_ship_build_cost(word arg1) {
    *(byte*)(fp - 3) = (((unsigned)record_field_byte((record_base_6b1c(*(byte*)&arg1) + 20)) >> 5) & 7);    // $82A2
    local11 = ((((((*(byte*)(fp - 3) + 2) / 2) * 0x012C) + (((*(byte*)(fp - 3) & 1) * *(byte*)(fp - 3)) * 50)) + (((unsigned)*(byte*)(fp - 3) / (unsigned)5) * 50)) - 200);    // $82CE
    return local11;    // $82D0
}

// Decompiled from source/2-asm-vm\bank22.asm sub $82D1
// $82D1 get_ship_word18
// (body @ $82D6)

word get_ship_word18(word arg1) {
    return record_field_word((record_base_6b1c(*(byte*)&arg1) + 18));    // $82E5
}

// Decompiled from source/2-asm-vm\bank22.asm sub $82E6
// $82E6 get_ship_word15
// (body @ $82EB)

word get_ship_word15(word arg1) {
    return record_field_word((record_base_6b1c(*(byte*)&arg1) + 15));    // $82F9
}

// Decompiled from source/2-asm-vm\bank22.asm sub $82FA
// $82FA get_ship_byte17
// (body @ $82FF)

word get_ship_byte17(word arg1) {
    return record_field_byte((record_base_6b1c(*(byte*)&arg1) + 17));    // $830E
}

// Decompiled from source/2-asm-vm\bank22.asm sub $830F
// $830F shipyard_draw_ship_stats
// (body @ $8314)

word shipyard_draw_ship_stats(word arg1) {
    clear_two_ppu_regions();    // $8314
    syscall_id09_syscall_banked_blit_m3(1, 6, 30, 14, 0xA792, 0xA936, 232);    // $8326
    draw_ship_icon_class(3, 7, *(byte*)&arg1);    // $8337
    set_draw_origin(11, 8);    // $833D
    draw_field(0x9156, *(word*)((((*(byte*)&arg1 + -5) << 1) + 0x911E)));    // $8350
    set_draw_origin(3, 14);    // $8356
    draw_field(0x9159, get_ship_word15(*(byte*)&arg1));    // $8366
    set_draw_origin(14, 16);    // $836D
    draw_field(0x9163, calc_ship_build_cost(*(byte*)&arg1));    // $837D
    set_draw_origin(3, 12);    // $8383
    draw_field(0x9172, get_ship_word18(*(byte*)&arg1));    // $8393
    set_draw_origin(14, 12);    // $8399
    draw_field(0x917C, calc_ship_price_capped(*(byte*)&arg1));    // $83A9
    set_draw_origin(14, 14);    // $83AF
    draw_field(0x918C, calc_used_ship_price(*(byte*)&arg1));    // $83BF
    set_draw_origin(14, 10);    // $83C5
    draw_field(0x919C, get_ship_condition(*(byte*)&arg1));    // $83D5
    set_draw_origin(3, 16);    // $83DC
    draw_field(0x91AC, get_ship_byte17(*(byte*)&arg1));    // $83EC
    set_draw_origin(19, 18);    // $83F4
    draw_string(0x91B6, 0);    // $83FC
    return draw_field(0x91BC, mem_666B);    // $840A
}

// Decompiled from source/2-asm-vm\bank22.asm sub $840B
// $840B shipyard_buy_confirm_name
// (body @ $8410)

word shipyard_buy_confirm_name(word arg1, word arg2) {
    local11 = 0;    // $8411
L_8412:
    *(word*)(fp - 17) = ((local11 * 7) + 0x6C90);    // $8419
    if (!((*(byte*)((*(word*)(fp - 17) + 6)) & 64))) goto L_842E;    // $8422
    local11 = (local11 + 1);    // $8427
    if (((unsigned)local11 < (unsigned)5)) goto L_8412;    // $842B
L_842E:
    *(byte*)(fp - 3) = local11;    // $842F
    *(byte*)(fp - 15) = (load_operand16_14(5) + 5);    // $8438
    *(byte*)(*(word*)(fp - 17)) = (get_ship_condition(*(byte*)&arg2) - *(byte*)(fp - 15));    // $844B
    *(byte*)((*(word*)(fp - 17) + 1)) = (calc_used_ship_price(*(byte*)&arg2) - *(byte*)(fp - 15));    // $845E
    *(byte*)((*(word*)(fp - 17) + 2)) = (calc_ship_price_capped(*(byte*)&arg2) - *(byte*)(fp - 15));    // $8471
    *(byte*)((*(word*)(fp - 17) + 3)) = 0;    // $8477
    *(word*)((*(word*)(fp - 17) + 4)) = 0;    // $847D
    *(byte*)&local10 = scan_records_6c90_flag(0, (fp - 9));    // $8487
    local11 = 0;    // $848B
L_848C:
    *(byte*)((local11 + &local5)) = local11;    // $8495
    local11 = (local11 + 1);    // $8498
    if (((unsigned)local11 < (unsigned)5)) goto L_848C;    // $849C
    phi_val_84c1 = 0;    // $84A0
    goto L_84C1;    // $84A0
L_84A3:
    *(byte*)(((*(byte*)(((*(byte*)((local11 + (fp - 9))) * 7) + 0x6C96)) & 15) + &local5)) = 255;    // $84BE
    phi_val_84c1 = (local11 + 1);    // $84C0
L_84C1:
    local11 = phi_val_84c1;    // $84C1
    if (((unsigned)local11 < (unsigned)*(byte*)&local10)) goto L_84A3;    // $84C9
    local11 = 0;    // $84CD
L_84CE:
    if ((*(byte*)((local11 + &local5)) != 255)) {    // $84DA
    *(byte*)&local10 = *(byte*)((local11 + &local5));    // $84E5
    } else {
    local11 = (local11 + 1);    // $84ED
    if (((unsigned)local11 < (unsigned)5)) goto L_84CE;    // $84F1
    }
L_84F4:
    *(byte*)((*(word*)(fp - 17) + 6)) = 0;    // $84F9
    *(byte*)((*(word*)(fp - 17) + 6)) = (*(byte*)((*(word*)(fp - 17) + 6)) | 64);    // $8503
    *(byte*)((*(word*)(fp - 17) + 6)) = (*(byte*)((*(word*)(fp - 17) + 6)) & 240);    // $850E
    *(byte*)((*(word*)(fp - 17) + 6)) = (*(byte*)((*(word*)(fp - 17) + 6)) | *(byte*)&local10);    // $8519
    *(word*)(fp - 19) = record_base_6b1c(*(byte*)&local10);    // $8522
    *(word*)(fp - 21) = record_base_6b1c(*(byte*)&arg2);    // $852C
    *(word*)((*(word*)(fp - 19) + 15)) = record_field_word((*(word*)(fp - 21) + 15));    // $853A
    *(byte*)((*(word*)(fp - 19) + 17)) = record_field_byte((*(word*)(fp - 21) + 17));    // $8549
    *(word*)((*(word*)(fp - 19) + 18)) = record_field_word((*(word*)(fp - 21) + 18));    // $8558
    *(byte*)((*(word*)(fp - 19) + 20)) = record_field_byte((*(word*)(fp - 21) + 20));    // $8567
    copy_from_bank_dc80(((*(byte*)(fp - 3) * 24) + 0x6AA4), 24, 0);    // $8576
    mem_666B = (mem_666B - arg1);    // $8580
    draw_box_variant(5, 1);    // $8585
    draw_window();    // $8589
    draw_text(0x91D0);    // $858F
    reset_all_chr();    // $8593
    syscall_id06_syscall_set_sprite_block(0x91C0, 0, 16);    // $859D
L_85B5:
    syscall_id09_syscall_banked_blit_m3(1, 2, 30, 26, 0xB2DE, 0xB5EA, 226);    // $85B1
L_85C9:
    syscall_id09_syscall_banked_blit_m3(2, 22, 28, 6, 0xA004, 0xA0AC, 231);    // $85C5
    if (!(cargo_load_data(7, *(word*)(fp - 19)))) goto L_85C9;    // $85D7
    set_tile_cursor(5, 25);    // $85DD
    draw_string(0x91F6, 1);    // $85E5
    if (!(prompt_confirm())) goto L_85B5;    // $85EC
    return (*(byte*)(fp - 3) + 5);    // $85F3
    }
}

// Decompiled from source/2-asm-vm\bank22.asm sub $85F4
// $85F4 shipyard_buy_used_dialog
// (body @ $85F9)

word shipyard_buy_used_dialog(word arg1, word arg2) {
    *(byte*)(fp - 1) = 0;    // $85FA
    draw_box_variant(5, 1);    // $85FF
    draw_box_frame();    // $8603
    win_render_syscall(1);    // $8607
    draw_string(0x938A, 0);    // $860F
    draw_string_banked(record_base_6b1c((*(byte*)&arg1 + 5)));    // $861D
    draw_field(0x938E, *(word*)(((*(byte*)&arg1 << 1) + 0x9206)));    // $862E
    win_close();    // $8632
    draw_window();    // $8635
    draw_string(0x9397, 1);    // $863C
    if (!(prompt_confirm())) goto L_8702;    // $8643
    shipyard_draw_ship_stats((*(byte*)&arg1 + 5));    // $864B
    *(word*)(arg2) = 1;    // $8651
    draw_box_frame();    // $8652
    draw_window();    // $8655
    *(word*)(fp - 9) = (((unsigned)record_field_byte((record_base_6b1c((*(byte*)&arg1 + 5)) + 20)) >> 5) & 7);    // $866C
    *(word*)(fp - 3) = (((((record_field_byte((record_base_6b1c((*(byte*)&arg1 + 5)) + 20)) & 3) + 2) * (((*(word*)(fp - 9) * 7) / 2) + 1)) / 2) * 0x02BC);    // $8691
    *(word*)(fp - 5) = ((((((unsigned)record_field_byte((record_base_6b1c((*(byte*)&arg1 + 5)) + 20)) >> 2) & 3) + 1) * (((*(word*)(fp - 9) / 2) * 6) + 1)) * 0x012C);    // $86B6
    *(word*)(fp - 7) = ((*(byte*)(((current_port * 14) + 0x67BD)) + 40) * ((*(word*)(fp - 3) + *(word*)(fp - 5)) / 100));    // $86CF
    draw_field_m1(0x93AC, *(word*)(fp - 7));    // $86D6
    *(word*)(fp - 15) = mem_666B;    // $86DD
    if (prompt_confirm()) {    // $86E2
    if (((unsigned)*(word*)(fp - 15) < (unsigned)*(word*)(fp - 7))) {    // $86EA
    draw_box_from_native();    // $86ED
    win_render_syscall(1);    // $86F1
    draw_text(0x93DE);    // $86F8
L_8702:
    draw_box_variant(5, 1);    // $86FE
    draw_window();    // $8702
    draw_text(0x9422);    // $8708
    return 0;    // $870D
    }
L_870E:
    *(word*)(fp - 17) = shipyard_buy_confirm_name(*(word*)(fp - 7), (*(byte*)&arg1 + 5));    // $8719
    return *(word*)(fp - 17);    // $871D
    }
L_871E:
    if (load_operand16_14((mem_6F74 + 1))) goto L_8702;    // $8727
    draw_window();    // $872A
    *(word*)(fp - 13) = max_s16(*(word*)(fp - 7), *(word*)(fp - 15));    // $8735
    *(word*)(fp - 11) = draw_labeled_value(0x93F1, 1, *(word*)(fp - 13), 1);    // $8742
    if ((*(word*)(fp - 11) == 0x0E0A)) {    // $874A
    *(byte*)(fp - 1) = 1;    // $874E
    *(word*)(fp - 7) = 0;    // $8752
    }
L_8754:
    if (!((*(word*)(fp - 11) != 1))) goto L_8702;    // $8759
    *(word*)(fp - 7) = ((((10 - mem_6F74) * (*(word*)(fp - 7) / 20)) + (*(word*)(fp - 7) / 2)) - load_operand16_14((*(word*)(fp - 7) / 10)));    // $877E
    if (((unsigned)*(word*)(fp - 11) < (unsigned)*(word*)(fp - 7))) {    // $8785
    draw_window();    // $8788
    draw_text(0x940D);    // $878E
    return 1;    // $8793
    }
L_8794:
    *(word*)(fp - 17) = shipyard_buy_confirm_name(*(word*)(fp - 11), (*(byte*)&arg1 + 5));    // $879F
    if (*(byte*)(fp - 1)) {    // $87A4
    mem_666B = 0xEA60;    // $87AA
    }
L_87AD:
    return *(word*)(fp - 17);    // $87AF
}

// Decompiled from source/2-asm-vm\bank22.asm sub $87B0
// $87B0 shipyard_buy_used_select
// (body @ $87B5)

word shipyard_buy_used_select(void) {
    draw_box_variant(5, 1);    // $87B7
    *(byte*)&local11 = ((*(word*)(((current_port * 14) + 0x67B6)) + -100) / 160);    // $87CB
    if (((unsigned)*(byte*)&local11 < (unsigned)5)) {    // $87D3
    if (load_operand16_14(20)) goto L_87F2;    // $87DC
    win_render_syscall(1);    // $87E0
    draw_text(0x943F);    // $87E7
    *(byte*)&local11 = (*(byte*)&local11 + 1);    // $87EF
    }
L_87F2:
    local9 = 1;    // $87F3
    local10 = 0;    // $87F5
    do {    // $87F6
        if (local9) {    // $87F7
        shipyard_clear(*(byte*)&local11);    // $87FE
        local9 = 0;    // $8803
        }
L_8804:
        draw_window();    // $8804
        draw_string(0x946E, 1);    // $880B
        *(byte*)(fp - 1) = modal_input_loop((*(byte*)&local11 + 1));    // $8818
        if ((*(byte*)(fp - 1) != 255)) {    // $8822
        local10 = shipyard_buy_used_dialog(*(byte*)(fp - 1), &local9);    // $8831
        } else {
        win_render_syscall(3);    // $8836
        draw_text(0x9486);    // $883D
        }
L_8844:
        clear_two_ppu_regions();    // $8841
        if ((*(byte*)(fp - 1) == 255)) break;    // $884B
    } while (!(local10));    // $884F
L_8852:
    return local10;    // $8853
        }
}

// Decompiled from source/2-asm-vm\bank22.asm sub $8854
// $8854 shipyard_buy_used
// (body @ $8859)

word shipyard_buy_used(void) {
    local11 = shipyard_buy_used_select();    // $885C
    if ((local11 == 1)) {    // $8860
    }
L_8866:
    clear_screen_top();    // $8863
    return local11;    // $8867
}

// Decompiled from source/2-asm-vm\bank22.asm sub $8868
// $8868 call_ship_build
// (body @ $886D)

word call_ship_build(word arg1, word arg2, word arg3) {
    return draw_ship_icon_30(arg1, arg2, arg3, 255, 0);    // $887F
}

// Decompiled from source/2-asm-vm\bank22.asm sub $8880
// $8880 load_shipyard_sprites_b
// (body @ $8885)

word load_shipyard_sprites_b(void) {
    return syscall_id06_syscall_set_sprite_block(0x9498, 8, 8);    // $888F
}

// Decompiled from source/2-asm-vm\bank22.asm sub $8890
// $8890 shipyard_clear_b
// (body @ $8895)

word shipyard_clear_b(word arg1) {
    mem_7064 = -1;    // $8897
    load_shipyard_sprites_b();    // $889A
    phi_val_88d2 = 0;    // $889E
    while (((unsigned)local11 <= (unsigned)arg1)) {    // $88D2
        local10 = ((((unsigned)local11 % (unsigned)3) * 9) + 3);    // $88A7
        local9 = (((unsigned)local11 / (unsigned)3) * 7);    // $88AD
        call_ship_build(local10, (local9 + 7), local11);    // $88B3
        set_tile_cursor(local10, (local9 + 11));    // $88BB
        mem_728A = local10;    // $88C0
        draw_string(*(word*)(((local11 << 1) + 0x94A0)), 0);    // $88CC
        phi_val_88d2 = (local11 + 1);    // $88D1
        local11 = phi_val_88d2;    // $88D2
    }
    return ((unsigned)local11 <= (unsigned)arg1);    // $88D9
}

// Decompiled from source/2-asm-vm\bank22.asm sub $88DA
// $88DA calc_ship_value
// (body @ $88DF)

word calc_ship_value(word arg1) {
    return (((arg1->field_6 * 10) + (*(word*)(arg1) * 10)) + 20);    // $88ED
}

// Decompiled from source/2-asm-vm\bank22.asm sub $88EE
// $88EE draw_stat_durability
// (body @ $88F3)

word draw_stat_durability(word arg1) {
    set_draw_origin(14, 10);    // $88F5
    return draw_field(0x94E7, calc_ship_value(arg1));    // $8906
}

// Decompiled from source/2-asm-vm\bank22.asm sub $8907
// $8907 calc_ship_price_new
// (body @ $890C)

word calc_ship_price_new(word arg1) {
    return ((unsigned)(((unsigned)(((unsigned)((20 - arg1->field_6) * 100) / (unsigned)20) * (10 - arg1->field_2)) / (unsigned)10) * (4 - arg1->field_4)) >> 2);    // $8932
}

// Decompiled from source/2-asm-vm\bank22.asm sub $8933
// $8933 draw_stat_handling
// (body @ $8938)

word draw_stat_handling(word arg1) {
    set_draw_origin(14, 14);    // $893A
    return draw_field(0x94F7, calc_ship_price_new(arg1));    // $894B
}

// Decompiled from source/2-asm-vm\bank22.asm sub $894C
// $894C calc_ship_price_new_capped
// (body @ $8951)

word calc_ship_price_new_capped(word arg1) {
    local11 = ((unsigned)(((unsigned)(((arg1->field_2 * 10) + 100) * (10 - arg1->field_6)) / (unsigned)10) * (arg1->field_4 + 3)) >> 2);    // $896D
    if ((local11 > 100)) {    // $8972
    local11 = 100;    // $8977
    }
L_8978:
    return local11;    // $8979
}

// Decompiled from source/2-asm-vm\bank22.asm sub $897A
// $897A draw_stat_power
// (body @ $897F)

word draw_stat_power(word arg1) {
    set_draw_origin(14, 12);    // $8981
    return draw_field(0x9507, calc_ship_price_new_capped(arg1));    // $8992
}

// Decompiled from source/2-asm-vm\bank22.asm sub $8993
// $8993 calc_ship_build_cost_b
// (body @ $8998)

word calc_ship_build_cost_b(word arg1) {
    local11 = ((((((arg1 + 2) / 2) * 0x012C) + (((arg1 & 1) * arg1) * 50)) + (((unsigned)arg1 / (unsigned)5) * 50)) - 200);    // $89B7
    return local11;    // $89B9
}

// Decompiled from source/2-asm-vm\bank22.asm sub $89BA
// $89BA draw_stat_capacity
// (body @ $89BF)

word draw_stat_capacity(word arg1) {
    set_draw_origin(14, 16);    // $89C2
    return draw_field(0x9517, calc_ship_build_cost_b(arg1));    // $89D3
}

// Decompiled from source/2-asm-vm\bank22.asm sub $89D4
// $89D4 draw_stat_cargo
// (body @ $89D9)

word draw_stat_cargo(word arg1) {
    set_draw_origin(3, 12);    // $89DB
    return draw_field(0x9526, arg1);    // $89E7
}

// Decompiled from source/2-asm-vm\bank22.asm sub $89E8
// $89E8 draw_stat_crew
// (body @ $89ED)

word draw_stat_crew(word arg1) {
    set_draw_origin(3, 14);    // $89EF
    return draw_field(0x9530, arg1);    // $89FB
}

// Decompiled from source/2-asm-vm\bank22.asm sub $89FC
// $89FC draw_stat_arms
// (body @ $8A01)

word draw_stat_arms(word arg1) {
    set_draw_origin(3, 16);    // $8A04
    return draw_field(0x953A, arg1);    // $8A10
}

// Decompiled from source/2-asm-vm\bank22.asm sub $8A11
// $8A11 shipyard_confirm
// (body @ $8A16)

word shipyard_confirm(void) {
    draw_box_variant(5, 1);    // $8A18
    draw_window();    // $8A1C
    draw_string(0x9544, 1);    // $8A23
    local11 = prompt_confirm();    // $8A2A
    return local11;    // $8A2C
}

// Decompiled from source/2-asm-vm\bank22.asm sub $8A2D
// $8A2D shipyard_build_confirm_name
// (body @ $8A32)

word shipyard_build_confirm_name(word arg1) {
    local11 = 0;    // $8A33
L_8A34:
    local4 = ((local11 * 7) + 0x6C90);    // $8A3B
    if (!((*(byte*)((local4 + 6)) & 64))) goto L_8A4E;    // $8A42
    local11 = (local11 + 1);    // $8A47
    if (((unsigned)local11 < (unsigned)5)) goto L_8A34;    // $8A4B
L_8A4E:
    *(byte*)(fp - 3) = local11;    // $8A4F
    *(byte*)(local4) = calc_ship_value(arg1);    // $8A58
    *(byte*)((local4 + 1)) = calc_ship_price_new(arg1);    // $8A61
    *(byte*)((local4 + 2)) = calc_ship_price_new_capped(arg1);    // $8A6A
    *(byte*)((local4 + 3)) = 0;    // $8A6F
    *(word*)((local4 + 4)) = 0;    // $8A74
    *(byte*)&local10 = scan_records_6c90_flag(0, (fp - 9));    // $8A7E
    local11 = 0;    // $8A82
L_8A83:
    *(byte*)((local11 + &local5)) = local11;    // $8A8C
    local11 = (local11 + 1);    // $8A8F
    if (((unsigned)local11 < (unsigned)5)) goto L_8A83;    // $8A93
    phi_val_8ab8 = 0;    // $8A97
    goto L_8AB8;    // $8A97
L_8A9A:
    *(byte*)(((*(byte*)(((*(byte*)((local11 + (fp - 9))) * 7) + 0x6C96)) & 15) + &local5)) = 255;    // $8AB5
    phi_val_8ab8 = (local11 + 1);    // $8AB7
L_8AB8:
    local11 = phi_val_8ab8;    // $8AB8
    if (((unsigned)local11 < (unsigned)*(byte*)&local10)) goto L_8A9A;    // $8AC0
    local11 = 0;    // $8AC4
L_8AC5:
    if ((*(byte*)((local11 + &local5)) != 255)) {    // $8AD1
    *(byte*)&local10 = *(byte*)((local11 + &local5));    // $8ADC
    } else {
    local11 = (local11 + 1);    // $8AE4
    if (((unsigned)local11 < (unsigned)5)) goto L_8AC5;    // $8AE8
    }
L_8AEB:
    *(byte*)((local4 + 6)) = 0;    // $8AEF
    *(byte*)((local4 + 6)) = (*(byte*)((local4 + 6)) | 64);    // $8AF8
    *(byte*)((local4 + 6)) = (*(byte*)((local4 + 6)) & 240);    // $8B02
    *(byte*)((local4 + 6)) = (*(byte*)((local4 + 6)) | *(byte*)&local10);    // $8B0C
    local3 = record_base_6b1c(*(byte*)&local10);    // $8B15
    *(word*)((local3 + 15)) = arg1->field_10;    // $8B1C
    *(byte*)((local3 + 17)) = arg1->field_12;    // $8B24
    *(word*)((local3 + 18)) = arg1->field_8;    // $8B2C
    *(byte*)((local3 + 20)) = (((((arg1->field_2 << 1) << 1) | (arg1->field_4 << 4)) | (arg1->field_6 << 5)) | *(word*)(arg1));    // $8B4B
    copy_from_bank_dc80(((*(byte*)(fp - 3) * 24) + 0x6AA4), 24, 0);    // $8B5A
    draw_box_variant(5, 1);    // $8B60
    draw_window();    // $8B64
    draw_text(0x955F);    // $8B6A
    reset_all_chr();    // $8B6E
    syscall_id06_syscall_set_sprite_block(0x954F, 0, 16);    // $8B78
L_8B90:
    syscall_id09_syscall_banked_blit_m3(1, 2, 30, 26, 0xB2DE, 0xB5EA, 226);    // $8B8C
L_8BA4:
    syscall_id09_syscall_banked_blit_m3(2, 22, 28, 6, 0xA004, 0xA0AC, 231);    // $8BA0
    if (!(cargo_load_data(7, local3))) goto L_8BA4;    // $8BB1
    set_tile_cursor(8, 25);    // $8BB7
    draw_string(0x958D, 1);    // $8BBF
    if (!(prompt_confirm())) goto L_8B90;    // $8BC6
    return (*(byte*)(fp - 3) + 5);    // $8BCD
    }
}

// Decompiled from source/2-asm-vm\bank22.asm sub $8BCE
// $8BCE shipyard_build_arms_crew
// (body @ $8BD3)

word shipyard_build_arms_crew(word arg1) {
    do {    // $8BD3
        draw_box_frame();    // $8BD3
        draw_window();    // $8BD6
        local10 = (((((unsigned)arg1->field_6 >> 1) + 1) * 20) + (((unsigned)arg1->field_6 / (unsigned)5) * 40));    // $8BED
        local11 = draw_labeled_value_1(0x9598, 0, local10);    // $8BF7
        if (((local11 == 1))) return 0;    // $8BFC
        arg1->field_12 = local11;    // $8C05
        local9 = 0x01F4;    // $8C09
        if (((unsigned)local9 > (unsigned)(calc_ship_build_cost_b(arg1->field_6) - local11))) {    // $8C18
        local9 = (calc_ship_build_cost_b(arg1->field_6) - local11);    // $8C25
        }
L_8C26:
        draw_box_frame();    // $8C26
        draw_window();    // $8C29
        local11 = draw_labeled_value_1(0x95C9, 20, local9);    // $8C36
        if (((local11 == 1))) return 0;    // $8C3B
        arg1->field_10 = local11;    // $8C44
        arg1->field_8 = (calc_ship_build_cost_b(arg1->field_6) - (arg1->field_10 + arg1->field_12));    // $8C5C
        draw_stat_cargo(arg1->field_8);    // $8C61
        draw_stat_crew(arg1->field_10);    // $8C69
        draw_stat_arms(arg1->field_12);    // $8C71
    } while (!(shipyard_confirm()));    // $8C78
    local8 = shipyard_build_confirm_name(arg1);    // $8C80
    return local8;    // $8C82
}

// Decompiled from source/2-asm-vm\bank22.asm sub $8C83
// $8C83 shipyard_build_hull_masts
// (body @ $8C88)

word shipyard_build_hull_masts(word arg1, word arg2, word arg3) {
    arg3->field_6 = *(byte*)&arg1;    // $8C8E
    draw_box_frame();    // $8C8F
    clear_two_ppu_regions();    // $8C92
    call_ship_build(3, 6, *(byte*)&arg1);    // $8C9B
    draw_stat_capacity(arg3->field_6);    // $8CA3
    set_draw_origin(19, 18);    // $8CAB
    draw_field(0x9625, mem_666B);    // $8CB5
    do {    // $8CB9
        draw_window();    // $8CB9
        draw_string(0x962E, 1);    // $8CC0
        *(byte*)(fp - 1) = draw_tile_grid(8, 23, 7, 2, 0x95E5, 4, 2);    // $8CD2
        if ((!((*(byte*)(fp - 1) != 255)))) return 0;    // $8CDC
        *(word*)(arg3) = *(byte*)(fp - 1);    // $8CE5
        draw_stat_durability(arg3);    // $8CE7
        // ext_op ext_op_F1AF
        // ext_op ext_op_F229
        // TODO: trigger_syscall_EB_FE
        // TODO: op_FF
        // ext_op ext_op_F20D
        // TODO: trigger_syscall_EB_FE
        // TODO: op_FF
        // ext_op ext_op_F1B3
        draw_field_m1(0x9641, set_draw_origin(2, 18));    // $8D1C
    } while (!(shipyard_confirm()));    // $8D23
    do {    // $8D26
        if (((arg3->field_6 == 2) || (arg3->field_6 == 3))) {    // $8D33
        } else {
        }
L_8D3B:
        *(word*)(fp - 7) = 2;    // $8D3B
        *(word*)(fp - 3) = (((unsigned)arg3->field_6 < (unsigned)4) ? 0x95ED : 0x95EF);    // $8D4E
        draw_box_frame();    // $8D50
        draw_window();    // $8D53
        draw_string(0x964B, 1);    // $8D5A
        *(byte*)(fp - 1) = draw_tile_grid(8, 23, 4, 1, *(word*)(fp - 3), *(word*)(fp - 7), 1);    // $8D6C
        if ((!((*(byte*)(fp - 1) != 255)))) return 0;    // $8D76
        if (((unsigned)arg3->field_6 > (unsigned)3)) {    // $8D80
        *(byte*)(fp - 1) = (*(byte*)(fp - 1) + 1);    // $8D87
        }
L_8D8A:
        arg3->field_2 = *(byte*)(fp - 1);    // $8D90
        draw_box_frame();    // $8D91
        draw_window();    // $8D94
        draw_string(0x965B, 1);    // $8D9B
        win_open();    // $8D9F
        draw_window();    // $8DA2
        draw_string(0x9697, 1);    // $8DA9
        *(byte*)(fp - 1) = draw_tile_grid(8, 25, 9, 1, 0x95F3, 2, 1);    // $8DBB
        if ((!((*(byte*)(fp - 1) != 255)))) return 0;    // $8DC5
        arg3->field_4 = *(byte*)(fp - 1);    // $8DD0
        draw_stat_handling(arg3);    // $8DD2
        draw_stat_power(arg3);    // $8DD7
        draw_ship_icon_30(3, 6, arg3->field_6, arg3->field_4, arg3->field_2);    // $8DF0
        // ext_op ext_op_F1AF
        // ext_op ext_op_F229
        // TODO: trigger_syscall_EB_FE
        // TODO: op_FF
        // ext_op ext_op_F20D
        // TODO: trigger_syscall_EB_FE
        // TODO: op_FF
        // ext_op ext_op_F13E
        if (((((unsigned)(((((unsigned)(arg3->field_6 * 7) >> 1) + 1) * (*(byte*)&arg2 + 50)) * (*(word*)(arg3) + 2)) >> 1) * 7) + (((((((unsigned)arg3->field_6 >> 1) * 6) + 1) * (*(byte*)&arg2 + 50)) * (arg3->field_2 + 1)) * 3))) {    // $8E3C
        // ext_op ext_op_F229
        // TODO: trigger_syscall_EB_FE
        // TODO: op_FF
        }
L_8E49:
        // ext_op ext_op_F20D
        // TODO: trigger_syscall_EB_FE
        // TODO: op_FF
        // ext_op ext_op_F1B3
        draw_field_m1(0x96B7, set_tile_cursor(2, 18));    // $8E5A
    } while (!(shipyard_confirm()));    // $8E61
    // ext_op ext_op_F20D
    // TODO: trigger_syscall_EB_FE
    // TODO: op_FF
    // ext_op ext_op_F1B3
    draw_field_m1(0x96C1, draw_window());    // $8E71
    *(word*)(fp - 9) = mem_666B;    // $8E78
    if (prompt_confirm()) {    // $8E7D
    // ext_op ext_op_F20D
    // TODO: trigger_syscall_EB_FE
    // TODO: op_FF
    // ext_op ext_op_F1B3
    if (((unsigned)prompt_confirm() > (unsigned)*(word*)(fp - 9))) {    // $8E89
    draw_box_from_native();    // $8E8C
    draw_window();    // $8E8F
L_8E99:
    draw_text(0x96EE);    // $8E95
    return 0;    // $8E9A
    }
L_8E9B:
    *(word*)(fp - 13) = shipyard_build_arms_crew(arg3);    // $8EA0
    if (!(shipyard_build_arms_crew(arg3))) goto L_8E99;    // $8EA2
    // ext_op ext_op_F20D
    // TODO: trigger_syscall_EB_FE
    // TODO: op_FF
    // ext_op ext_op_F1B3
    mem_666B = (mem_666B - shipyard_build_arms_crew(arg3));    // $8EB0
    return *(word*)(fp - 13);    // $8EB5
    }
L_8EB6:
    if (load_operand16_14((mem_6F74 + 1))) goto L_8F60;    // $8EBF
    // ext_op ext_op_F20D
    // TODO: trigger_syscall_EB_FE
    // TODO: op_FF
    // ext_op ext_op_F1B3
    *(word*)(fp - 11) = max_s16(draw_window(), *(word*)(fp - 9));    // $8ED2
    *(word*)(fp - 5) = draw_labeled_value(0x9701, 1, *(word*)(fp - 11), 1);    // $8EDF
    if ((*(word*)(fp - 5) != 1)) {    // $8EE6
    // ext_op ext_op_F20D
    // TODO: trigger_syscall_EB_FE
    // TODO: op_FF
    // ext_op ext_op_F1B3
    // ext_op ext_op_F1AF
    // ext_op ext_op_F263
    // ext_op ext_op_F20D
    // TODO: trigger_syscall_EB_FE
    // TODO: op_FF
    // ext_op sdiv32
    // ext_op ext_op_F263
    // ext_op ext_op_F20D
    // TODO: trigger_syscall_EB_FE
    // TODO: op_FF
    // ext_op sdiv32
    // ext_op ext_op_F263
    load_operand16_14(((unsigned)(*(word*)(fp - 5) != 1) / (unsigned)10));    // $8EF2
    // ext_op ext_op_F1AF
    // ext_op ext_op_F26C
    // ext_op ext_op_EF81
    // ext_op ext_op_F26C
    // ext_op ext_op_F03F
    // ext_op ext_op_F26C
    // ext_op ext_op_F04C
    // ext_op ext_op_F229
    // TODO: trigger_syscall_EB_FE
    // TODO: op_FF
    // ext_op ext_op_F20D
    // TODO: trigger_syscall_EB_FE
    // TODO: op_FF
    // ext_op ext_op_F1B3
    if (((unsigned)*(word*)(fp - 5) < (unsigned)(10 - mem_6F74))) {    // $8F3A
    draw_window();    // $8F3D
    draw_text(0x9716);    // $8F43
    return 1;    // $8F48
    }
L_8F49:
    *(word*)(fp - 13) = shipyard_build_arms_crew(arg3);    // $8F4E
    if (shipyard_build_arms_crew(arg3)) {    // $8F50
    mem_666B = (mem_666B - *(word*)(fp - 5));    // $8F5A
    return *(word*)(fp - 13);    // $8F5F
    }
    }
L_8F60:
    return 0;    // $8F61
        }
}

// Decompiled from source/2-asm-vm\bank22.asm sub $8F62
// $8F62 shipyard_build_confirm
// (body @ $8F67)

word shipyard_build_confirm(word arg1, word arg2, word arg3, word arg4) {
    draw_window();    // $8F67
    draw_field(0x9910, *(word*)(((*(byte*)&arg1 << 1) + 0x9745)));    // $8F77
    win_close();    // $8F7B
    draw_window();    // $8F7E
    draw_string(0x9914, 1);    // $8F85
    if (!(prompt_confirm())) goto L_8FA5;    // $8F8C
    *(word*)(arg4) = 1;    // $8F91
    local11 = shipyard_build_hull_masts(*(byte*)&arg1, *(byte*)&arg2, arg3);    // $8F9F
    if (!(!(shipyard_build_hull_masts(*(byte*)&arg1, *(byte*)&arg2, arg3)))) return local11;    // $8FA0
    draw_box_variant(5, 1);    // $8FA7
    draw_window();    // $8FAB
    draw_text(0x992D);    // $8FB1
    return 0;    // $8FB6
}

// Decompiled from source/2-asm-vm\bank22.asm sub $8FB7
// $8FB7 shipyard_build_entry
// (body @ $8FBC)

word shipyard_build_entry(void) {
    draw_box_variant(5, 1);    // $8FBE
    draw_window();    // $8FC2
    draw_text(0x9949);    // $8FC8
    *(byte*)(fp - 1) = ((*(word*)(((current_port * 14) + 0x67B6)) + -100) / 180);    // $8FDC
    local2 = 1;    // $8FE0
    local3 = 0;    // $8FE2
    do {    // $8FE3
        copy_from_bank_dc80(&local4, 8, 0);    // $8FE9
        if (local2) {    // $8FEE
        clear_two_ppu_regions();    // $8FF1
        shipyard_clear_b(*(byte*)(fp - 1));    // $8FF8
        local2 = 0;    // $8FFD
        }
L_8FFE:
        draw_window();    // $8FFE
        draw_string(0x9974, 1);    // $9005
        *(byte*)&local11 = modal_input_loop((*(byte*)(fp - 1) + 1));    // $9012
        if ((*(byte*)&local11 != 255)) {    // $901C
        local3 = shipyard_build_confirm(*(byte*)&local11, *(byte*)(((current_port * 14) + 0x67BD)), &local4, &local2);    // $903A
        } else {
        win_render_syscall(2);    // $903F
        draw_text(0x9984);    // $9046
        }
L_904D:
        clear_two_ppu_regions();    // $904A
        if ((*(byte*)&local11 == 255)) break;    // $9054
    } while (!(local3));    // $9058
L_905B:
    return local3;    // $905C
        }
}
