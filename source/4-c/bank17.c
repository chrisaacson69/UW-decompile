// Decompiled from source/2-asm-vm\bank17.asm sub $8003
// $8003 fleet_row_origin
// (body @ $8008)

word fleet_row_origin(void) {
    return ((ui_shared_var_737d == 1) ? 11 : 7);    // $8015
}

// Decompiled from source/2-asm-vm\bank17.asm sub $8016
// $8016 fleet_col_by_facing
// (body @ $801B)

word fleet_col_by_facing(void) {
    local11 = 0x6662;    // $801E
    return (((unsigned)*(byte*)((local11 + 2)) < (unsigned)7) ? 20 : 2);    // $802D
}

// Decompiled from source/2-asm-vm\bank17.asm sub $802E
// $802E fleet_draw_grid
// (body @ $8033)

word fleet_draw_grid(word arg1, word arg2, word arg3, word arg4) {
    local11 = ((arg3 / 2) + (arg3 % 2));    // $803C
    local9 = ((local11 << 1) + 2);    // $8040
    blit_block_save(arg1, arg2, 26, local9);    // $8046
    local7 = party_in_rect(arg1, arg2, 26, local9);    // $8053
    draw_menu_frame(arg1, arg2, 26, local9, 0, 0);    // $805B
    phi_val_807c = 0;    // $8060
    while (((unsigned)local10 < (unsigned)local11)) {    // $807C
        set_tile_cursor((arg1 + 2), (((local10 << 1) + arg2) + 2));    // $806C
        draw_string_banked(*(word*)(((local10 << 1) + arg4)));    // $8076
        phi_val_807c = (local10 + 1);    // $807B
        local10 = phi_val_807c;    // $807C
    }
    while (((unsigned)local10 < (unsigned)arg3)) {    // $80A2
        set_tile_cursor((arg1 + 14), ((((local10 - local11) << 1) + arg2) + 2));    // $8091
        draw_string_banked(*(word*)(((local10 << 1) + arg4)));    // $809B
        local10 = (local10 + 1);    // $80A1
    }
    local8 = menu_pick(0x9720, arg3, (arg1 + 1), (arg2 + 2), 12, 2, local11, 1);    // $80BA
    blit_block_unwind();    // $80BB
    if (local7) {    // $80BF
    }
L_80D2:
    place_object_sprite(party_map_x, party_map_y, mem_666A);    // $80CE
    return ((local8 == 1) ? 255 : (local8 - 1));    // $80E1
}

// Decompiled from source/2-asm-vm\bank17.asm sub $80E2
// $80E2 fleet_select_mate
// (body @ $80E7)

word fleet_select_mate(void) {
    local0 = 0;    // $80E8
    phi_val_8110 = 0x6A9A;    // $80EC
    while (((unsigned)local0 < (unsigned)10)) {    // $8110
        if (!((*(byte*)(local11) != 255))) break;    // $80F5
        *(word*)(((local0 << 1) + &local1)) = *(word*)(((*(byte*)(local11) * 7) + 0x6542));    // $810A
        local0 = (local0 + 1);    // $810D
        phi_val_8110 = (local11 + 1);    // $810F
        local11 = phi_val_8110;    // $8110
    }
L_8117:
    show_prompt_record();    // $8117
    if (local0) goto L_8129;    // $811B
    draw_text(0x9721);    // $8121
    return 255;    // $8128
L_8129:
    draw_string(0x973F, 1);    // $812D
    *(word*)(fp - 26) = fleet_draw_grid(2, fleet_row_origin(), local0, &local1);    // $813F
    if ((!((*(word*)(fp - 26) != 255)))) return *(word*)(fp - 26);    // $8147
    return *(byte*)((*(word*)(fp - 26) + 0x6A9A));    // $8154
}

// Decompiled from source/2-asm-vm\bank17.asm sub $8155
// $8155 fleet_draw_row
// (body @ $815A)

word fleet_draw_row(word arg1, word arg2, word arg3, word arg4) {
    local10 = ((arg3 << 1) + 2);    // $815D
    blit_block_save(arg1, arg2, 10, local10);    // $8162
    draw_menu_frame(arg1, arg2, 10, local10, 0, 0);    // $816C
    phi_val_818d = 0;    // $8171
    while (((unsigned)local11 < (unsigned)arg3)) {    // $818D
        set_tile_cursor((arg1 + 2), (((local11 << 1) + arg2) + 2));    // $817D
        draw_string_banked(*(word*)(((local11 << 1) + arg4)));    // $8187
        phi_val_818d = (local11 + 1);    // $818C
        local11 = phi_val_818d;    // $818D
    }
    local9 = menu_pick(0x974B, arg3, (arg1 + 1), (arg2 + 2), 0, 2, arg3, 1);    // $81A6
    blit_block_unwind();    // $81A7
    return ((local9 == 1) ? 255 : (local9 - 1));    // $81B9
}

// Decompiled from source/2-asm-vm\bank17.asm sub $81BA
// $81BA fleet_row_base
// (body @ $81BF)

word fleet_row_base(void) {
    return ((ui_shared_var_737d == 1) ? 3 : 7);    // $81CC
}

// Decompiled from source/2-asm-vm\bank17.asm sub $81CD
// $81CD fleet_list_loop
// (body @ $81D2)

word fleet_list_loop(void) {
    local9 = fleet_row_base();    // $81D5
L_81D6:
    local11 = draw_text_menu(10, 0, 0x974C, 2, 1);    // $81E1
    if ((local11 == 255)) goto L_8233;    // $81E7
    if ((local11 != 1)) goto L_821F;    // $81ED
L_81F0:
    local10 = fleet_select_mate();    // $81F3
    if ((local10 == 255)) goto L_8210;    // $81F9
    opt_draw_name(1, local9, local10);    // $8206
    reset_chr_alloc();    // $820A
L_8210:
    redraw_screen_if_changed();    // $820D
    if ((local10 != 255)) goto L_81F0;    // $8215
    screen_dirty = 0;    // $8219
    goto L_8233;    // $821C
L_821F:
    opt_draw_name(1, local9, local11);    // $8229
    reset_chr_alloc();    // $822D
L_8233:
    redraw_screen_if_changed();    // $8230
    if ((local11 != 255)) goto L_81D6;    // $8238
    return 0;    // $823C
}

// Decompiled from source/2-asm-vm\bank17.asm sub $823D
// $823D fleet_select_ship
// (body @ $8242)

word fleet_select_ship(void) {
    *(word*)(fp - 27) = scan_records_6c90_flag(0, (fp - 19));    // $824B
    local5 = &local6;    // $8250
    *(word*)(fp - 21) = (fp - 19);    // $8254
    *(word*)(fp - 23) = ((fp - 19) + *(word*)(fp - 27));    // $8259
    while (((unsigned)*(word*)(fp - 21) < (unsigned)*(word*)(fp - 23))) {    // $8282
        local11 = ((*(byte*)(*(word*)(fp - 21)) * 7) + 0x6C90);    // $8267
        *(byte*)(*(word*)(fp - 21)) = (*(byte*)((local11 + 6)) & 15);    // $826F
        *(word*)(local5) = record_base_6b1c(*(byte*)(*(word*)(fp - 21)));    // $8279
        local5 = (local5 + 2);    // $827C
        *(word*)(fp - 21) = (*(word*)(fp - 21) + 1);    // $8280
    }
    draw_string(0x975E, 1);    // $828E
    *(word*)(fp - 25) = fleet_draw_row(fleet_col_by_facing(), fleet_row_origin(), *(word*)(fp - 27), &local6);    // $82A4
    if ((*(word*)(fp - 25) != 255)) {    // $82AC
    phi_ret_82be = *(byte*)((*(word*)(fp - 25) + (fp - 19)));    // $82B8
    } else {
    phi_ret_82be = 255;    // $82BB
    }
L_82BE:
    return phi_ret_82be;    // $82BE
    }
}

// Decompiled from source/2-asm-vm\bank17.asm sub $82BF
// $82BF fleet_scroll_loop
// (body @ $82C4)

word fleet_scroll_loop(void) {
    local10 = fleet_row_base();    // $82C7
    do {    // $82C8
        show_prompt_record();    // $82C8
        local9 = fleet_select_ship();    // $82CE
        if ((fleet_select_ship() != 255)) {    // $82D3
        opt_ship_line(1, local10, local9);    // $82E0
        }
L_82E7:
        redraw_screen_if_changed();    // $82E4
    } while ((local9 != 255));    // $82EC
    screen_dirty = 0;    // $82F0
    return 0;    // $82F4
}

// Decompiled from source/2-asm-vm\bank17.asm sub $82F5
// $82F5 fleet_view_cargo
// (body @ $82FA)

word fleet_view_cargo(word arg1, word arg2, word arg3) {
    local6 = (((*(byte*)(((arg3 * 7) + 0x6C96)) & 15) * 24) + 0x6AA4);    // $830B
    local11 = 0;    // $830D
    local8 = (local6 + 6);    // $8310
    local7 = ((local6 + 6) + 10);    // $8312
    while (((unsigned)local8 < (unsigned)local7)) {    // $8321
        if (*(word*)(local8)) {    // $8318
        local11 = (local11 + 1);    // $831D
        }
L_831E:
        local8 = (local8 + 2);    // $8320
    }
    if (local11) goto L_8338;    // $8328
    show_prompt_bc23();    // $832B
    phi_ret_83bd = draw_text(0x976A);    // $8335
    goto L_83BD;    // $8335
L_8338:
    local10 = ((local11 << 1) + 2);    // $833B
    blit_block_save(arg1, arg2, 15, local10);    // $8340
    draw_menu_frame(arg1, arg2, 15, local10, 2, 0);    // $834A
    local9 = (arg2 + 1);    // $8350
    local11 = 0;    // $8352
    phi_val_839b = (local6 + 6);    // $8355
    while (((unsigned)local8 < (unsigned)local7)) {    // $839B
        if (*(word*)(local8)) {    // $835A
        set_tile_cursor((arg1 + 1), (local9 + 1));    // $8363
        draw_string_banked(record_field_word(((*(byte*)(((local6 + local11) + 1)) << 1) + 0xBB49)));    // $8377
        set_tile_cursor((arg1 + 10), local9);    // $837F
        draw_field_m1(0x9780, *(word*)((((local11 << 1) + local6) + 6)));    // $838D
        local9 = (local9 + 2);    // $8395
        }
L_8396:
        local11 = (local11 + 1);    // $8398
        phi_val_839b = (local8 + 2);    // $839A
        local8 = phi_val_839b;    // $839B
    }
    show_prompt_bc23();    // $83A2
    draw_string(0x9784, 0);    // $83A9
    draw_string_banked(record_base_6b1c(arg3));    // $83B3
    win_close();    // $83B7
    phi_ret_83bd = blit_block_unwind();    // $83BA
L_83BD:
    return phi_ret_83bd;    // $83BD
}

// Decompiled from source/2-asm-vm\bank17.asm sub $83BE
// $83BE fleet_col_b
// (body @ $83C3)

word fleet_col_b(void) {
    local11 = 0x6662;    // $83C6
    return (((unsigned)*(byte*)((local11 + 2)) < (unsigned)7) ? 16 : 1);    // $83D5
}

// Decompiled from source/2-asm-vm\bank17.asm sub $83D6
// $83D6 fleet_show_prompt
// (body @ $83DB)

word fleet_show_prompt(void) {
L_83DE:
    show_prompt_record();    // $83DB
    local11 = fleet_select_ship();    // $83E1
    if ((fleet_select_ship() != 255)) {    // $83E6
    fleet_view_cargo(fleet_col_b(), fleet_row_origin(), local11);    // $83F2
    }
L_83F9:
    show_prompt_bc23();    // $83F6
    if ((local11 != 255)) goto L_83DE;    // $83FE
    return 0;    // $8402
}

// Decompiled from source/2-asm-vm\bank17.asm sub $8403
// $8403 fleet_scan_666d
// (body @ $8408)

word fleet_scan_666d(word arg1) {
    local9 = 0x666D;    // $840B
    local11 = 0;    // $840D
    local10 = 0;    // $840E
    while (((unsigned)local11 < (unsigned)32)) {    // $8432
        if ((*(word*)(((((unsigned)local11 >> 4) << 1) + local9)) & (1 << (local11 & 15)))) {    // $8423
        *(byte*)(arg1) = local11;    // $8428
        arg1 = (arg1 + 1);    // $842B
        local10 = (local10 + 1);    // $842E
        }
L_842F:
        local11 = (local11 + 1);    // $8431
    }
    return local10;    // $843A
}

// Decompiled from source/2-asm-vm\bank17.asm sub $843B
// $843B fleet_row_c
// (body @ $8440)

word fleet_row_c(void) {
    return ((ui_shared_var_737d == 1) ? 11 : 1);    // $844D
}

// Decompiled from source/2-asm-vm\bank17.asm sub $844E
// $844E fleet_col_by_pos
// (body @ $8453)

word fleet_col_by_pos(void) {
    if ((!(((unsigned)party_map_x >= (unsigned)7)))) return 14;    // $8458
    return 2;    // $845E
}

// Decompiled from source/2-asm-vm\bank17.asm sub $845F
// $845F fleet_view_items
// (body @ $8464)

word fleet_view_items(void) {
    show_prompt_record();    // $8464
    local7 = fleet_scan_666d((fp - 52));    // $846F
    if (fleet_scan_666d((fp - 52))) goto L_847C;    // $8470
    draw_text(0x97A1);    // $8476
    return 0;    // $847B
L_847C:
    local8 = ((unsigned)(local7 - 1) >> 3);    // $8480
    draw_string(0x97B9, 1);    // $8485
    if (local8) {    // $848A
    }
L_8495:
    draw_string(0x97CF, 1);    // $8491
    draw_string(0x97D7, 1);    // $8499
    local5 = fleet_col_by_pos();    // $84A0
    local4 = fleet_row_c();    // $84A4
    dsel_84b3 = local8;    // $84B3
    local6 = (dsel_84b3 ? 18 : ((((unsigned)local7 % (unsigned)9) << 1) + 2));    // $84B3
    blit_block_save(local5, local4, 16, local6);    // $84B9
    local3 = party_in_rect(local5, local4, 16, local6);    // $84C6
    draw_menu_frame(local5, local4, 16, local6, 2, 0);    // $84CE
    local5 = (local5 + 1);    // $84D4
    local4 = (local4 + 1);    // $84D7
    local6 = (local6 - 2);    // $84DC
    local9 = 0;    // $84DE
    local2 = 0;    // $84E0
L_84E1:
    local11 = 0;    // $84E2
L_84E3:
    local10 = ((local9 << 3) + local11);    // $84E8
    if (!(((unsigned)local10 < (unsigned)local7))) goto L_8514;    // $84EC
    set_tile_cursor(local5, ((local11 << 1) + local4));    // $84F5
    draw_string_banked(record_base_d604(*(byte*)((local10 + (fp - 52)))));    // $8507
    local11 = (local11 + 1);    // $850D
    if (((unsigned)local11 < (unsigned)8)) goto L_84E3;    // $8511
L_8514:
    local2 = frame_sync(0);    // $8519
    if (!(local8)) goto L_853D;    // $851B
    if ((local2 != 1)) goto L_853D;    // $8521
    syscall_id08_syscall_queue_ppu_transfer(local5, local4, 14, local6, 0, 0);    // $852B
    local9 = (local9 + 1);    // $8531
    if (!(((unsigned)local9 > (unsigned)local8))) goto L_8543;    // $8535
    local9 = 0;    // $8539
    goto L_8543;    // $853A
L_853D:
    if ((local2 != 2)) goto L_8514;    // $8540
L_8543:
    if ((local2 != 2)) goto L_84E1;    // $8546
    blit_block_unwind();    // $8549
    if (local3) {    // $854D
    }
L_8560:
    place_object_sprite(party_map_x, party_map_y, mem_666A);    // $855C
    return 0;    // $8561
}

// Decompiled from source/2-asm-vm\bank17.asm sub $8562
// $8562 calc_sprite_pos
// (body @ $8567)

word calc_sprite_pos(void) {
    local11 = 0x6662;    // $856A
    local6 = (((((((unsigned)*(byte*)(local11) % (unsigned)3) * 7) + ((unsigned)*(byte*)((local11 + 2)) >> 1)) + 5) << 3) + ((*(byte*)((local11 + 2)) & 1) ? 4 : 0));    // $858C
    local5 = (((((((unsigned)*(byte*)((local11 + 1)) % (unsigned)3) * 7) + ((unsigned)*(byte*)((local11 + 3)) >> 1)) + 4) << 3) - ((*(byte*)((local11 + 3)) & 1) ? 1 : 5));    // $85AF
    *(byte*)&local7 = local5;    // $85B1
    *(byte*)(fp - 9) = 247;    // $85B7
    *(byte*)&local8 = 1;    // $85BB
    *(byte*)(fp - 7) = local6;    // $85BF
    *(byte*)&local9 = (local5 + 8);    // $85C4
    *(byte*)(fp - 5) = 248;    // $85CA
    *(byte*)&local10 = 0;    // $85CE
    *(byte*)(fp - 3) = local6;    // $85D2
    return syscall_id13_syscall_set_chr_bank_alt(&local7, 0, 2);    // $85E0
}

// Decompiled from source/2-asm-vm\bank17.asm sub $85E1
// $85E1 calc_sprite_pos_b
// (body @ $85E6)

word calc_sprite_pos_b(void) {
    local9 = (((((((unsigned)mem_705B % (unsigned)3) * 7) + ((unsigned)mem_705D >> 1)) + 5) << 3) + ((mem_705D & 1) ? 2 : -2));    // $8609
    local8 = (((((((unsigned)mem_705C % (unsigned)3) * 7) + ((unsigned)mem_705E >> 1)) + 4) << 3) + ((mem_705E & 1) ? 1 : -3));    // $862D
    *(byte*)&local10 = local8;    // $862F
    *(byte*)(fp - 3) = 249;    // $8635
    *(byte*)&local11 = 2;    // $8639
    *(byte*)(fp - 1) = local9;    // $863D
    return syscall_id13_syscall_set_chr_bank_alt(&local10, 0, 1);    // $864B
}

// Decompiled from source/2-asm-vm\bank17.asm sub $864C
// $864C draw_fleet_sprite
// (body @ $8651)

word draw_fleet_sprite(void) {
    fleet_leaf_8b0a();    // $8651
    calc_sprite_pos();    // $8654
    wait_input();    // $8657
    syscall_id12_syscall_set_chr_banks(0, 64);    // $865E
    return upload_sprite_block();    // $8665
}

// Decompiled from source/2-asm-vm\bank17.asm sub $8666
// $8666 fleet_look
// (body @ $866B)

word fleet_look(void) {
    if ((mem_666D & 4)) goto L_867F;    // $8670
    show_prompt_record();    // $8673
    draw_text(0x97DE);    // $8679
    return 0;    // $867E
L_867F:
    draw_fleet_sprite(1);    // $8680
    redraw_screen_if_changed();    // $8684
    upload_cursor_sprites(((unsigned)mem_6B8C / (unsigned)5));    // $868D
    return 0;    // $8692
}

// Decompiled from source/2-asm-vm\bank17.asm sub $8693
// $8693 calc_map_pos
// (body @ $8698)

word calc_map_pos(void) {
    local11 = ((unsigned)mem_705B / (unsigned)3);    // $869D
    local10 = ((unsigned)mem_705C / (unsigned)3);    // $86A3
    local7 = ((mem_7263 != local11) || (mem_7264 != local10));    // $86B9
    if (local7) {    // $86BB
    local9 = mem_7263;    // $86C1
    local8 = mem_7264;    // $86C5
    calc_position_seasonal(local11, local10);    // $86C8
    mem_7263 = local11;    // $86CD
    mem_7264 = local10;    // $86D1
    }
L_86D4:
    fleet_leaf_8b0a(0);    // $86D5
    calc_sprite_pos_b();    // $86D9
    wait_input();    // $86DC
    syscall_id12_syscall_set_chr_banks(0, 64);    // $86E3
    upload_sprite_block();    // $86E7
    phi_ret_86fc = local7;    // $86EB
    if (phi_ret_86fc) {    // $86EB
    calc_position_seasonal(local9, local8);    // $86F0
    mem_7263 = local9;    // $86F5
    mem_7264 = local8;    // $86F9
    phi_ret_86fc = local8;    // $86F9
    }
L_86FC:
    return phi_ret_86fc;    // $86FC
}

// Decompiled from source/2-asm-vm\bank17.asm sub $86FD
// $86FD fleet_redraw
// (body @ $8702)

word fleet_redraw(void) {
    calc_map_pos();    // $8702
    redraw_screen_if_changed();    // $8705
    upload_cursor_sprites(((unsigned)mem_6B8C / (unsigned)5));    // $870E
    return 0;    // $8713
}

// Decompiled from source/2-asm-vm\bank17.asm sub $8714
// $8714 fleet_menu_loop
// (body @ $8719)

word fleet_menu_loop(void) {
    local10 = 1;    // $871A
L_871B:
    if ((quest_flags & 4)) {    // $8720
    phi_872a_0 = 6;    // $8725
    phi_872a_1 = 3;    // $8725
    } else {
    phi_872a_0 = 5;    // $8729
    phi_872a_1 = 3;    // $8729
    }
L_872A:
    local11 = draw_text_menu(7, 2, 0x97F6, phi_872a_0, phi_872a_1);    // $8733
    if ((local11 == 255)) {    // $8739
    local10 = 0;    // $873D
    } else {
    if (!((*(*(word*)(((local11 << 1) + 0x9802))))())) goto L_871B;    // $8749
    }
L_874C:
    return local10;    // $874D
    }
    }
}

// Decompiled from source/2-asm-vm\bank17.asm sub $8DC3
// $8DC3 fleet_set_rations
// (body @ $8DC8)

word fleet_set_rations(void) {
    local8 = 0;    // $8DC9
    local7 = fleet_col_by_facing();    // $8DCD
    blit_block_save(local7, 11, 10, 8);    // $8DD2
    syscall_id09_syscall_banked_blit_m3(local7, 11, 10, 8, 0xAC62, 0xACB2, 232);    // $8DE4
    local7 = (local7 + 1);    // $8DEA
    set_draw_origin(local7, 11);    // $8DED
    draw_string(0x99A0, 0);    // $8DF5
    local11 = mem_6A98;    // $8DFC
    local10 = mem_6A99;    // $8E00
    draw_icon_2x2(local7, 13, 1);    // $8E04
    draw_icon_2x2(local7, 16, 0);    // $8E0C
    set_draw_origin((local7 + 2), 14);    // $8E14
    draw_field(0x99AE, local11);    // $8E1C
    set_draw_origin((local7 + 2), 17);    // $8E25
    draw_field(0x99B4, local10);    // $8E2D
    show_prompt_record();    // $8E31
    draw_string(0x99BA, 1);    // $8E38
    set_tile_cursor((local7 + 6), 13);    // $8E40
    local9 = dispatch_indirect(1, 99, 1);    // $8E4C
    if ((local9 == 1)) {    // $8E51
    set_tile_cursor((local7 + 6), 13);    // $8E58
    draw_field_m1(0x99E1, local11);    // $8E60
    } else {
    mem_6A98 = local9;    // $8E68
    local8 = 1;    // $8E6C
    }
L_8E6D:
    set_tile_cursor((local7 + 6), 16);    // $8E72
    local9 = dispatch_indirect(1, 99, 1);    // $8E7E
    if ((local9 == 1)) {    // $8E83
    set_tile_cursor((local7 + 6), 13);    // $8E8A
    draw_field_m1(0x99E5, local10);    // $8E92
    } else {
    mem_6A99 = local9;    // $8E9A
    local8 = 1;    // $8E9E
    }
L_8E9F:
    blit_block_unwind();    // $8E9F
    return local8;    // $8EA3
    }
    }
}

// Decompiled from source/2-asm-vm\bank17.asm sub $8EA4
// $8EA4 fleet_thanks
// (body @ $8EA9)

word fleet_thanks(word arg1, word arg2) {
    local11 = ((arg1 * 10) + 0x6BBF);    // $8EB0
    *(word*)(fp - 9) = 0;    // $8EB2
    *(byte*)(fp - 5) = 0;    // $8EB5
    local10 = (local11 + 5);    // $8EBA
    while (((unsigned)local11 < (unsigned)local10)) {    // $8EDA
        if (((unsigned)*(byte*)(local11) > (unsigned)*(byte*)(fp - 5))) {    // $8EC6
        *(byte*)(fp - 5) = *(byte*)(local11);    // $8ECB
        *(word*)(fp - 7) = *(word*)(fp - 9);    // $8ED0
        }
L_8ED2:
        *(word*)(fp - 9) = (*(word*)(fp - 9) + 1);    // $8ED5
        local11 = (local11 + 1);    // $8ED9
    }
    *(word*)(fp - 13) = *(byte*)(fp - 5);    // $8EE3
    local10 = 0x6BBF;    // $8EE8
    *(word*)(fp - 15) = *(byte*)((local10 + *(word*)(fp - 7)));    // $8EEE
    *(word*)(fp - 17) = arg2;    // $8EF1
    *(word*)(fp - 27) = ((arg1 * 7) + 0x6542);    // $8EFA
    *(word*)(fp - 29) = 0x6542;    // $8EFF
    *(word*)(fp - 19) = (*(byte*)((*(word*)(fp - 27) + 2)) + *(byte*)((*(word*)(fp - 27) + 3)));    // $8F0C
    *(word*)(fp - 21) = (*(byte*)((*(word*)(fp - 29) + 2)) + *(byte*)((*(word*)(fp - 29) + 3)));    // $8F19
    *(word*)(fp - 23) = (((*(word*)(fp - 13) * *(word*)(fp - 19)) / 100) + *(word*)(fp - 13));    // $8F26
    *(word*)(fp - 25) = (((*(word*)(fp - 15) * *(word*)(fp - 21)) / 100) + *(word*)(fp - 25));    // $8F33
    if ((*(word*)(fp - 23) > *(word*)(fp - 25))) {    // $8F3A
    } else {
    }
L_8F4E:
    *(word*)(fp - 11) = max_s16((*(byte*)((((arg1 - 1) << 1) + 0x6A6E)) + ((*(word*)(fp - 17) / *(word*)(fp - 19)) / 3)), 100);    // $8F5F
    *(byte*)((((arg1 - 1) << 1) + 0x6A6E)) = *(word*)(fp - 11);    // $8F6B
    show_prompt_bc27(arg1, 0);    // $8F6E
    return draw_text(0x99E9);    // $8F79
    }
}

// Decompiled from source/2-asm-vm\bank17.asm sub $8F7A
// $8F7A fleet_col_d
// (body @ $8F7F)

word fleet_col_d(void) {
    local11 = 0x6662;    // $8F82
    return (((unsigned)*(byte*)((local11 + 2)) < (unsigned)7) ? 16 : 2);    // $8F91
}

// Decompiled from source/2-asm-vm\bank17.asm sub $8F92
// $8F92 fleet_give_gold_loyalty
// (body @ $8F97)

word fleet_give_gold_loyalty(word arg1) {
    local7 = 0;    // $8F98
    local6 = ((arg1 * 7) + 0x6542);    // $8FA0
    local11 = fleet_col_d();    // $8FA4
    blit_block_save(local11, 12, 14, 6);    // $8FA9
    syscall_id09_syscall_banked_blit_m3(local11, 12, 14, 6, 0xAD02, 0xAD56, 232);    // $8FBB
    local11 = (local11 + 1);    // $8FC1
    set_tile_cursor(local11, 14);    // $8FC4
    draw_string_banked(*(word*)(local6));    // $8FCB
    set_tile_cursor(local11, 15);    // $8FD1
    draw_field_m1(0x99FE, *(byte*)((((arg1 - 1) << 1) + 0x6A6E)));    // $8FE1
    local10 = mem_666B;    // $8FE8
    local8 = (((unsigned)local10 > (unsigned)0x03E7) ? 0x03E7 : local10);    // $8FF8
    show_message();    // $8FF9
    draw_field_m1(0x9A0A, local10);    // $9000
    local9 = draw_labeled_value(0x9A13, 1, local8, 1);    // $900E
    if ((local9 != 1)) {    // $9013
    mem_666B = (mem_666B - local9);    // $901C
    fleet_thanks(arg1, local9);    // $9021
    set_tile_cursor(local11, 15);    // $9027
    draw_field_m1(0x9A23, *(byte*)((((arg1 - 1) << 1) + 0x6A6E)));    // $9037
    local7 = 1;    // $903C
    }
L_903D:
    blit_block_unwind();    // $903D
    return local7;    // $9041
}

// Decompiled from source/2-asm-vm\bank17.asm sub $9042
// $9042 fleet_gold_limit
// (body @ $9047)

word fleet_gold_limit(void) {
    if (mem_666B) goto L_9059;    // $904A
    show_prompt_record();    // $904D
    draw_text(0x9A37);    // $9053
    return 0;    // $9058
L_9059:
    local11 = fleet_select_mate();    // $905C
    local10 = 0;    // $905E
    if ((local11 != 255)) {    // $9064
    local10 = fleet_give_gold_loyalty(local11);    // $906C
    }
L_906D:
    return local10;    // $906E
}

// Decompiled from source/2-asm-vm\bank17.asm sub $906F
// $906F fleet_replace_mate
// (body @ $9074)

word fleet_replace_mate(word arg1, word arg2, word arg3, word arg4, word arg5, word arg6) {
    local5 = *(word*)(((arg5 << 1) + 0x9A55));    // $907C
    *(byte*)(fp - 19) = 225;    // $9080
    *(byte*)&local3 = 0;    // $9084
    local7 = 1;    // $9088
    local6 = 0;    // $908A
    local8 = 0;    // $908C
    if (arg5) {    // $908F
    set_draw_origin((arg1 + 1), (arg2 + 16));    // $9099
    draw_string(0x9A65, 0);    // $90A1
    set_draw_origin((arg1 + 1), (arg2 + 17));    // $90AC
    draw_string(0x9A6D, 0);    // $90B4
    phi_90ff_0 = 0x9A75;    // $90C7
    phi_90ff_1 = 0;    // $90C7
    set_draw_origin((arg1 + 1), (arg2 + 18));    // $90BF
    } else {
    set_draw_origin((arg1 + 1), (arg2 + 16));    // $90D1
    draw_string(0x9A7D, 0);    // $90D9
    set_draw_origin((arg1 + 1), (arg2 + 17));    // $90E4
    draw_string(0x9A85, 0);    // $90EC
    phi_90ff_0 = 0x9A8D;    // $90FC
    phi_90ff_1 = 0;    // $90FC
    }
L_90FF:
    set_draw_origin((arg1 + 1), (arg2 + 18));    // $90F7
L_9103:
    draw_string(phi_90ff_0, phi_90ff_1);    // $90FF
    local11 = ((local7 * 10) + local6);    // $9108
    local10 = (*(word*)(((local7 << 1) + 0x9A59)) + arg1);    // $9112
    local4 = ((local7 == 2) ? 1 : 2);    // $911E
    local9 = ((*(word*)(((local7 << 1) + 0x9A5F)) + (local6 * local4)) + arg2);    // $912E
    *(byte*)&local2 = (*(word*)(((ui_shared_var_737d << 1) + 0xDF14)) + (local9 << 3));    // $913E
    *(byte*)(fp - 17) = (local10 << 3);    // $9144
    syscall_id13_syscall_set_chr_bank_alt(&local2, local5, 1);    // $914E
    helper_ce4d(local8, 12);    // $9154
    local8 = frame_sync(0);    // $915D
    switch (frame_sync(0)) {    // $915E
        case 1: goto L_917B;    // $915E
        case 2: goto L_919F;    // $915E
        case 16: goto L_91B1;    // $915E
        case 32: goto L_91CA;    // $915E
        case 64: goto L_91E6;    // $915E
        case 128: goto L_91EA;    // $915E
        default: goto L_9103;    // $915E
    }    // $915E
L_917B:
    *(byte*)&local3 = 3;    // $917C
    syscall_id13_syscall_set_chr_bank_alt(&local2, local5, 1);    // $9186
    if (local11) goto L_9195;    // $918B
    syscall_id12_syscall_set_chr_banks(0, 2);    // $9191
    do {    // $9195
    } while (frame_sync(0));    // $919A
    return local11;    // $919E
L_919F:
    syscall_id12_syscall_set_chr_banks(0, 2);    // $91A2
    do {    // $91A6
    } while (frame_sync(0));    // $91AB
    return -1;    // $91B0
L_91B1:
    local6 = (local6 - 1);    // $91B3
    if ((local6 >= 0)) goto L_9103;    // $91B7
    local6 = 0;    // $91BB
    if ((local7 != 2)) goto L_9103;    // $91BF
    local7 = 1;    // $91C3
L_91C4:
L_91C5:
    phi_val_91c6 = (arg3 - 1);    // $91C5
L_91C6:
    local6 = phi_val_91c6;    // $91C6
    goto L_9103;    // $91C7
L_91CA:
    local6 = (local6 + 1);    // $91CC
    if (arg6) {    // $91CF
    if (arg4) {    // $91D3
    if (local7) {    // $91D7
    if (((unsigned)local6 >= (unsigned)arg3)) {    // $91DD
    local6 = 0;    // $91E1
    phi_val_91ef = 2;    // $91E3
    goto L_91EF;    // $91E3
L_91E6:
    phi_val_91ef = 0;    // $91E7
    goto L_91EF;    // $91E7
L_91EA:
    if (local7) goto L_91F0;    // $91EB
    phi_val_91ef = 1;    // $91EE
L_91EF:
    local7 = phi_val_91ef;    // $91EF
    }
    }
    }
    }
L_91F0:
    if (!(local7)) goto L_920D;    // $91F1
    if ((local7 != 1)) goto L_9203;    // $91F7
    if (((unsigned)local6 < (unsigned)arg3)) goto L_9103;    // $91FD
    goto L_91C4;    // $9200
L_9203:
    if (((unsigned)local6 < (unsigned)arg4)) goto L_9103;    // $9206
    goto L_91C5;    // $920A
L_920D:
    phi_val_91c6 = 0;    // $920E
    goto L_91C6;    // $920E
    }
}

// Decompiled from source/2-asm-vm\bank17.asm sub $9211
// $9211 fleet_draw_panel
// (body @ $9216)

word fleet_draw_panel(word arg1, word arg2, word arg3, word arg4, word arg5) {
    syscall_id08_syscall_queue_ppu_transfer(arg1, (arg2 + 1), 11, 9, 0, 0);    // $921F
    local11 = (arg4 + arg3);    // $9226
    while (((unsigned)arg4 < (unsigned)local11)) {    // $924B
        set_tile_cursor(arg1, (arg2 + 1));    // $922E
        draw_string_banked(*(word*)(((*(byte*)(arg4) * 7) + 0x6542)));    // $923C
        arg2 = (arg2 + (2 - arg5));    // $9247
        arg4 = (arg4 + 1);    // $924A
    }
    return ((unsigned)arg4 < (unsigned)local11);    // $9251
}

// Decompiled from source/2-asm-vm\bank17.asm sub $9252
// $9252 fleet_fill_loop
// (body @ $9257)

word fleet_fill_loop(word arg1, word arg2, word arg3, word arg4) {
    local11 = (arg4 + arg3);    // $925A
    while (((unsigned)arg4 < (unsigned)local11)) {    // $9283
        set_tile_cursor(arg1, (arg2 + 1));    // $9262
        draw_string_banked(record_base_6b1c((*(byte*)(((*(byte*)(arg4) * 7) + 0x6C96)) & 15)));    // $9277
        arg2 = (arg2 + 2);    // $927F
        arg4 = (arg4 + 1);    // $9282
    }
    return ((unsigned)arg4 < (unsigned)local11);    // $9289
}

// Decompiled from source/2-asm-vm\bank17.asm sub $928A
// $928A fleet_draw_roster
// (body @ $928F)

word fleet_draw_roster(word arg1, word arg2) {
    local6 = 3;    // $9290
    reset_chr_alloc();    // $9291
    syscall_id09_syscall_banked_blit_m3(7, local6, 23, 24, 0xA184, 0xA3AC, 233);    // $92A4
    set_draw_origin(9, local6);    // $92AA
    draw_string(0x9A95, 0);    // $92B2
    set_draw_origin(18, local6);    // $92B9
    draw_string(0x9A9A, 0);    // $92C1
    syscall_id08_syscall_queue_ppu_transfer(8, (local6 + 12), 21, 1, 249, 0);    // $92D1
    set_draw_origin(18, (local6 + 12));    // $92DA
    draw_string(0x9AA4, 0);    // $92E2
    set_tile_cursor(11, (local6 + 13));    // $92EA
    draw_string(0x9AAC, 1);    // $92F2
    set_tile_cursor(8, (local6 + 20));    // $92FB
    draw_string(0x9AB1, 0);    // $9303
    set_tile_cursor(8, (local6 + 21));    // $930C
    draw_string(0x9ABB, 0);    // $9314
    set_tile_cursor(8, (local6 + 22));    // $931D
    draw_string(0x9AC4, 0);    // $9325
    fleet_fill_loop(9, (local6 + 1), arg1, arg2);    // $932F
    local5 = record_scan_6c90_6aa4_b(&local7);    // $933B
    fleet_draw_panel(18, (local6 + 1), local5, &local7, 0);    // $9347
    local5 = search_6a9a(&local7);    // $9353
    return fleet_draw_panel(18, (local6 + 13), local5, &local7, 1);    // $9363
}

// Decompiled from source/2-asm-vm\bank17.asm sub $9364
// $9364 fleet_iter_9364
// (body @ $9369)

word fleet_iter_9364(word arg1, word arg2, word arg3) {
    local11 = (arg1 + arg3);    // $936C
    while (((unsigned)arg1 < (unsigned)local11)) {    // $9382
        if ((!((*(byte*)(arg1) == *(byte*)(arg2))))) return 0;    // $9377
        arg2 = (arg2 + 1);    // $937E
        arg1 = (arg1 + 1);    // $9381
    }
    return 1;    // $9389
}

// Decompiled from source/2-asm-vm\bank17.asm sub $938A
// $938A fleet_ship_cargo
// (body @ $938F)

word fleet_ship_cargo(word arg1, word arg2, word arg3, word arg4) {
    local11 = ((arg4 * 7) + 0x6C90);    // $9396
    local10 = (((*(byte*)((local11 + 6)) & 15) * 24) + 0x6AA4);    // $93A3
    *(byte*)(local10) = arg1;    // $93A6
    local11 = ((arg3 * 7) + 0x6C90);    // $93AE
    local10 = (((*(byte*)((local11 + 6)) & 15) * 24) + 0x6AA4);    // $93BB
    *(byte*)(local10) = arg2;    // $93BE
    return arg2;    // $93BF
}

// Decompiled from source/2-asm-vm\bank17.asm sub $93C0
// $93C0 fleet_cargo_screen
// (body @ $93C5)

word fleet_cargo_screen(word arg1, word arg2) {
    *(word*)(fp - 42) = 3;    // $93C6
    *(word*)(fp - 32) = record_scan_6c90_6aa4_b((fp - 5));    // $93D0
    *(word*)(fp - 34) = search_6a9a(&local2);    // $93DA
    *(word*)(fp - 36) = *(word*)(fp - 32);    // $93DE
    *(word*)(fp - 38) = *(word*)(fp - 34);    // $93E2
    memcpy_ptr((fp - 5), &local7, 5);    // $93ED
    memcpy_ptr(&local2, (fp - 30), 10);    // $93FA
    *(word*)(fp - 44) = 0;    // $93FF
    *(word*)(fp - 54) = 0;    // $9402
L_9404:
    *(word*)(fp - 56) = fleet_replace_mate(7, *(word*)(fp - 42), *(word*)(fp - 36), *(word*)(fp - 38), *(word*)(fp - 44), *(word*)(fp - 54));    // $9413
    switch (*(word*)(fp - 56)) {    // $9417
        case 0: goto L_9424;    // $9417
        case 65535: goto L_945A;    // $9417
        default: goto L_94CA;    // $9417
    }    // $9417
L_9424:
    if (!((*(word*)(fp - 36) == *(word*)(fp - 32)))) goto L_9458;    // $9429
    if (!((*(word*)(fp - 38) == *(word*)(fp - 34)))) goto L_9458;    // $9431
    if (!(fleet_iter_9364((fp - 5), &local7, *(word*)(fp - 36)))) goto L_9458;    // $9442
    if (!(!(fleet_iter_9364(&local2, (fp - 30), *(word*)(fp - 38))))) return 0;    // $9453
    return 1;    // $9459
L_945A:
    while (((unsigned)*(word*)(fp - 40) < (unsigned)arg1)) {    // $9489
        *(word*)(fp - 58) = ((*(byte*)((arg2 + *(word*)(fp - 40))) * 7) + 0x6C90);    // $9469
        *(word*)(fp - 60) = (((*(byte*)((*(word*)(fp - 58) + 6)) & 15) * 24) + 0x6AA4);    // $9478
        *(byte*)(*(word*)(fp - 60)) = *(byte*)((*(word*)(fp - 40) + (fp - 5)));    // $9485
        *(word*)(fp - 40) = (*(word*)(fp - 40) + 1);    // $9489
    }
    *(word*)(fp - 36) = record_scan_6c90_6aa4_b(&local7);    // $949A
    *(word*)(fp - 38) = search_6a9a((fp - 30));    // $94A4
    fleet_draw_panel(18, (*(word*)(fp - 42) + 1), *(word*)(fp - 36), &local7, 0);    // $94B3
    fleet_draw_panel(18, (*(word*)(fp - 42) + 13), *(word*)(fp - 38), (fp - 30), 1);    // $94C4
    return 0;    // $94C9
L_94CA:
    if (*(word*)(fp - 44)) goto L_94F7;    // $94CC
    *(word*)(fp - 46) = *(byte*)((((unsigned)*(word*)(fp - 56) % (unsigned)10) + &local7));    // $94DA
    *(word*)(fp - 50) = *(byte*)((((unsigned)*(word*)(fp - 56) % (unsigned)10) + arg2));    // $94E3
    if (*(word*)(fp - 46)) {    // $94E7
    *(word*)(fp - 54) = 1;    // $94EB
    }
L_94ED:
L_94F0:
    *(word*)(fp - 44) = (*(word*)(fp - 44) + 1);    // $94F0
L_94F2:
    if (1) goto L_9404;    // $94F3
    return 1;    // $94F6
L_94F7:
    if (((unsigned)*(word*)(fp - 56) < (unsigned)20)) {    // $94FC
    *(word*)(fp - 48) = *(byte*)((((unsigned)*(word*)(fp - 56) % (unsigned)10) + &local7));    // $950A
    } else {
    *(word*)(fp - 48) = *(byte*)((((unsigned)*(word*)(fp - 56) % (unsigned)10) + (fp - 30)));    // $9521
    }
L_9525:
    *(word*)(fp - 52) = *(word*)(fp - 50);    // $9525
    if (!((*(word*)(fp - 46) != *(word*)(fp - 48)))) goto L_94F2;    // $952C
    syscall_id12_syscall_set_chr_banks(0, 2);    // $9532
    fleet_ship_cargo(*(word*)(fp - 46), *(word*)(fp - 48), *(word*)(fp - 50), *(word*)(fp - 52));    // $953E
    *(word*)(fp - 36) = record_scan_6c90_6aa4_b(&local7);    // $954A
    *(word*)(fp - 38) = search_6a9a((fp - 30));    // $9554
    fleet_draw_panel(18, (*(word*)(fp - 42) + 1), *(word*)(fp - 36), &local7, 0);    // $9563
    fleet_draw_panel(18, (*(word*)(fp - 42) + 13), *(word*)(fp - 38), (fp - 30), 1);    // $9574
    *(word*)(fp - 54) = 0;    // $9579
    goto L_94F0;    // $957C
    }
}

// Decompiled from source/2-asm-vm\bank17.asm sub $957F
// $957F fleet_replace_navigator
// (body @ $9584)

word fleet_replace_navigator(void) {
    show_prompt_record();    // $9584
    *(word*)(fp - 9) = scan_records_6c90_flag(0, (fp - 5));    // $9590
    if ((*(word*)(fp - 9) == 1)) {    // $9596
    draw_text(0x9ACD);    // $959C
    return 0;    // $95A1
    }
L_95A2:
    draw_text(0x9AE5);    // $95A5
    syscall_id12_syscall_set_chr_banks(5, 4);    // $95AC
    syscall_id08_syscall_queue_ppu_transfer(30, 3, 1, 24, 0, 0);    // $95B9
    fleet_draw_roster(*(word*)(fp - 9), (fp - 5));    // $95C3
    *(word*)(fp - 11) = fleet_cargo_screen(*(word*)(fp - 9), (fp - 5));    // $95D1
    redraw_screen_if_changed();    // $95D3
    show_prompt_record();    // $95D6
    draw_string(0x9AFE, 0);    // $95DD
    draw_string_banked(record_base_6b1c(record_scan_6c90_6aa4(0)));    // $95EC
    draw_string(0x9B15, 0);    // $95F4
    redraw_dialog_region();    // $95F8
    return *(word*)(fp - 11);    // $95FD
}

// Decompiled from source/2-asm-vm\bank17.asm sub $95FE
// $95FE fleet_scan_ships
// (body @ $9603)

word fleet_scan_ships(word arg1) {
    local7 = 0x6AA4;    // $9606
    local11 = 0;    // $9608
    local10 = 0;    // $9609
    local9 = 0x6C90;    // $960D
    local8 = (0x6C90 + 35);    // $9610
    while (((unsigned)local9 < (unsigned)local8)) {    // $9635
        if ((*(byte*)((local9 + 6)) & 64)) {    // $961A
        if (*(byte*)(local7)) {    // $961F
        *(byte*)(arg1) = local11;    // $9624
        arg1 = (arg1 + 1);    // $9627
        local10 = (local10 + 1);    // $962A
        }
        }
L_962B:
        local11 = (local11 + 1);    // $962D
        local7 = (local7 + 24);    // $9631
        local9 = (local9 + 7);    // $9634
    }
    return local10;    // $963C
}

// Decompiled from source/2-asm-vm\bank17.asm sub $963D
// $963D fleet_dispose_vessel
// (body @ $9642)

word fleet_dispose_vessel(void) {
    show_prompt_record();    // $9642
    *(word*)(fp - 30) = fleet_scan_ships(&local1);    // $964D
    if (*(word*)(fp - 30)) goto L_965D;    // $9651
    draw_text(0x9B18);    // $9657
    return 0;    // $965C
L_965D:
    local6 = &local7;    // $9660
    local0 = &local1;    // $9664
    *(word*)(fp - 26) = (&local1 + *(word*)(fp - 30));    // $9668
    while (((unsigned)local0 < (unsigned)*(word*)(fp - 26))) {    // $968E
        *(word*)(fp - 28) = ((*(byte*)(local0) * 7) + 0x6C90);    // $9675
        *(byte*)(local0) = (*(byte*)((*(word*)(fp - 28) + 6)) & 15);    // $967E
        *(word*)(local6) = record_base_6b1c(*(byte*)(local0));    // $9687
        local6 = (local6 + 2);    // $968A
        local0 = (local0 + 1);    // $968D
    }
    draw_string(0x9B3D, 1);    // $9699
    *(word*)(fp - 32) = fleet_draw_row(fleet_col_by_facing(), fleet_row_origin(), *(word*)(fp - 30), &local7);    // $96AF
    *(word*)(fp - 34) = 0;    // $96B2
    if ((*(word*)(fp - 32) != 255)) {    // $96BA
    show_message();    // $96BD
    draw_field_m1(0x9B56, *(word*)(((*(word*)(fp - 32) << 1) + &local7)));    // $96CE
    *(word*)(fp - 34) = prompt_confirm();    // $96D5
    if (*(word*)(fp - 34)) {    // $96D9
    *(byte*)(((*(byte*)((*(word*)(fp - 32) + &local1)) * 7) + 0x6C96)) = (*(byte*)(((*(byte*)((*(word*)(fp - 32) + &local1)) * 7) + 0x6C96)) & 191);    // $96F2
    }
    }
L_96F3:
    return *(word*)(fp - 34);    // $96F5
}

// Decompiled from source/2-asm-vm\bank17.asm sub $96F6
// $96F6 fleet_cargo_menu
// (body @ $96FB)

word fleet_cargo_menu(void) {
    do {    // $96FB
        local11 = draw_text_menu(0, 1, 0x9B68, 4, 4);    // $9706
        if (((local11 == 255))) return 0;    // $970C
        local10 = (*(*(word*)(((local11 << 1) + 0x9B70))))();    // $9719
    } while (!(local10));    // $971B
    return 1;    // $971F
}
