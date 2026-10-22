// Decompiled from source/2-asm-vm\bank29.asm sub $8003
// $8003 cargo_load_sprites
// (body @ $8008)

word cargo_load_sprites(void) {
    return syscall_id06_syscall_set_sprite_block(0x88CE, 8, 8);    // $8012
}

// Decompiled from source/2-asm-vm\bank29.asm sub $8013
// $8013 draw_cargo_box
// (body @ $8018)

word draw_cargo_box(void) {
    return draw_box_variant(9, 1);    // $801E
}

// Decompiled from source/2-asm-vm\bank29.asm sub $801F
// $801F cargo_ship_list
// (body @ $8024)

word cargo_ship_list(void) {
    *(word*)(fp - 17) = 0;    // $8025
    *(word*)(fp - 19) = scan_records_6c90_flag(0, (fp - 5));    // $8030
    syscall_id09_syscall_banked_blit_m3(6, 6, 20, 14, 0xA49C, 0xA5B4, 231);    // $8041
    set_draw_origin(8, 8);    // $8047
    draw_string(0x88DA, 0);    // $804F
    cargo_load_sprites();    // $8053
    draw_icon_2x2(15, 7, 1);    // $8059
    draw_icon_2x2(19, 7, 0);    // $8061
    set_draw_origin(22, 8);    // $8068
    draw_string(0x88DF, 0);    // $8070
    while (((unsigned)*(word*)(fp - 21) < (unsigned)*(word*)(fp - 19))) {    // $809D
        *(word*)(((*(word*)(fp - 21) << 1) + (fp - 15))) = record_base_6b1c((*(byte*)(((*(byte*)((*(word*)(fp - 21) + (fp - 5))) * 7) + 0x6C96)) & 15));    // $8099
        *(word*)(fp - 21) = (*(word*)(fp - 21) + 1);    // $809D
    }
    *(word*)(fp - 31) = 0;    // $80A8
    *(word*)(fp - 33) = 0;    // $80AB
    *(word*)(fp - 35) = 0;    // $80AE
    while (((unsigned)*(word*)(fp - 21) < (unsigned)*(word*)(fp - 19))) {    // $816D
        *(word*)(fp - 41) = ((*(byte*)((*(word*)(fp - 21) + (fp - 5))) * 24) + 0x6AA4);    // $80C4
        set_tile_cursor(7, ((*(word*)(fp - 21) << 1) + 10));    // $80CC
        draw_string_banked(*(word*)(((*(word*)(fp - 21) << 1) + (fp - 15))));    // $80DB
        set_tile_cursor(14, ((*(word*)(fp - 21) << 1) + 9));    // $80E5
        *(word*)(fp - 23) = *(word*)((*(word*)(fp - 41) + 18));    // $80EE
        *(word*)(fp - 33) = (*(word*)(fp - 33) + *(word*)(fp - 23));    // $80F6
        draw_field_m1(0x88D6, (*(word*)(fp - 23) / 10));    // $8100
        set_tile_cursor(18, ((*(word*)(fp - 21) << 1) + 9));    // $810B
        *(word*)(fp - 25) = *(word*)((*(word*)(fp - 41) + 16));    // $8114
        *(word*)(fp - 35) = (*(word*)(fp - 35) + *(word*)(fp - 25));    // $811C
        draw_field_m1(0x88D6, (*(word*)(fp - 25) / 10));    // $8126
        set_tile_cursor(22, ((*(word*)(fp - 21) << 1) + 9));    // $8131
        *(word*)(fp - 27) = *(word*)(((*(byte*)((*(word*)(fp - 21) + (fp - 5))) * 7) + 0x6C94));    // $8145
        *(word*)(fp - 31) = (*(word*)(fp - 31) + *(word*)(fp - 27));    // $814D
        if ((*(word*)(fp - 27) < 5)) {    // $8153
        *(word*)(fp - 17) = 1;    // $8157
        phi_8166_0 = 0x88E3;    // $815E
        phi_8166_1 = *(word*)(fp - 27);    // $815E
        } else {
        phi_8166_0 = 0x88D6;    // $8163
        phi_8166_1 = *(word*)(fp - 27);    // $8163
        }
L_8166:
        draw_field_m1(phi_8166_0, phi_8166_1);    // $8166
        *(word*)(fp - 21) = (*(word*)(fp - 21) + 1);    // $816D
    }
    *(word*)(fp - 37) = (*(word*)(fp - 33) / ((*(word*)(fp - 31) / 2) + 1));    // $8181
    *(word*)(fp - 39) = (*(word*)(fp - 35) / ((*(word*)(fp - 31) / 2) + 1));    // $818D
    *(word*)(fp - 29) = max_s16(*(word*)(fp - 37), *(word*)(fp - 39));    // $8197
    if (*(word*)(fp - 17)) {    // $819B
    phi_ret_81ab = 0;    // $819F
    } else {
    phi_ret_81ab = max_s16(*(word*)(fp - 29), 0x03E8);    // $81A7
    }
L_81AB:
    return phi_ret_81ab;    // $81AB
    }
        }
}

// Decompiled from source/2-asm-vm\bank29.asm sub $81AC
// $81AC cargo_no_move
// (body @ $81B1)

word cargo_no_move(void) {
    blit_alloc_tiles(2, 2, 28, 18, 0);    // $81B8
    syscall_id12_syscall_set_chr_banks(1, 20);    // $81C0
    local11 = cargo_ship_list();    // $81C7
    mem_7063 = 240;    // $81CB
    draw_box_from_native();    // $81CE
    draw_window();    // $81D1
    if (local11) goto L_81E3;    // $81D5
    draw_string(0x88EE, 1);    // $81DC
    goto L_8211;    // $81E0
L_81E3:
    if ((local11 < 10)) {    // $81E6
    phi_81f2_0 = 0x8927;    // $81EC
    } else {
    phi_81f2_0 = 0x8948;    // $81EF
    }
L_81F2:
    draw_text(phi_81f2_0);    // $81F2
    draw_window();    // $81F6
L_8211:
    draw_field_m1(0x896B, local11, ((local11 == 1) ? 0x898B : 0x898C));    // $820D
    if (prompt_confirm()) {    // $8214
    vram_tile_cursor = (vram_tile_cursor - 0x03F0);    // $821F
    draw_cargo_box();    // $8222
    draw_window();    // $8225
    draw_text(0x898E);    // $822B
    cargo_reset();    // $822F
    call_in_bank_dcd1(1, 222, cargo_load_sprites);    // $8239
    return 1;    // $823E
    }
L_823F:
    call_in_bank_dcd1(1, 222, cargo_load_sprites);    // $8246
    blit_free_tiles(2, 2, 28, 18, 0);    // $8251
    opt_loop_8683();    // $825C
    return 0;    // $8261
    }
}

// Decompiled from source/2-asm-vm\bank29.asm sub $8262
// $8262 cargo_load_prompt
// (body @ $8267)

word cargo_load_prompt(void) {
    draw_cargo_box();    // $8267
    draw_window();    // $826A
    draw_text(0x899F);    // $8270
    local1 = 0;    // $8275
    local2 = 0;    // $8276
    *(byte*)(fp - 1) = 0;    // $8278
    *(byte*)(fp - 3) = 0;    // $827B
    while (((unsigned)*(byte*)(fp - 1) < (unsigned)5)) {    // $82CF
        local0 = ((*(byte*)(fp - 1) * 7) + 0x6C90);    // $828A
        if ((*(byte*)((local0 + 6)) & 64)) {    // $8291
        *(byte*)((*(byte*)(fp - 3) + &local8)) = *(byte*)(fp - 1);    // $82A1
        *(byte*)(fp - 3) = (*(byte*)(fp - 3) + 1);    // $82A6
        local2 = (local2 + record_field_word((record_base_6b1c(*(byte*)(fp - 1)) + 18)));    // $82BB
        local1 = (local1 + record_base_6aa4(*(byte*)(fp - 1)));    // $82C7
        }
L_82C8:
        *(byte*)(fp - 1) = (*(byte*)(fp - 1) + 1);    // $82CC
    }
    blit_alloc_tiles(2, 2, 28, 18, 0);    // $82DE
    syscall_id12_syscall_set_chr_banks(1, 20);    // $82E6
    cargo_load_sprites();    // $82EA
    cargo_which_ship(*(byte*)(fp - 3), &local8, 1, 6);    // $82FE
    call_in_bank_dcd1(1, 222, cargo_load_sprites);    // $8309
    clear_two_ppu_regions();    // $830D
    blit_free_tiles(2, 2, 28, 18, 0);    // $8317
    return 0;    // $831C
}

// Decompiled from source/2-asm-vm\bank29.asm sub $831D
// $831D cargo_full
// (body @ $8322)

word cargo_full(word arg1, word arg2, word arg3, word arg4, word arg5, word arg6, word arg7) {
    local11 = ((unsigned)mem_666B / (unsigned)arg5);    // $8328
    local10 = (record_field_word((record_base_6b1c(arg2) + 18)) - record_base_6aa4(arg2));    // $833D
    if (((unsigned)local11 > (unsigned)local10)) {    // $8341
    local11 = local10;    // $8345
    }
L_8346:
    if (local11) goto L_8359;    // $8347
    draw_cargo_box();    // $834A
    draw_window();    // $834D
    draw_text(0x89CD);    // $8353
    return 0;    // $8358
L_8359:
    draw_window();    // $8359
    draw_field_m1(0x89E6, arg3);    // $8360
    local8 = draw_labeled_value(0x8A06, 0, local11, 1);    // $836E
    if ((!(((local8 != 1) || !(local8))))) return 0;    // $8377
    draw_window();    // $837C
    local9 = (arg5 * local8);    // $8383
    draw_field_m1(0x8A07, local9);    // $8388
    if (!(prompt_confirm())) return 0;    // $838F
    (*(arg7))(arg2, local8);    // $8398
    cargo_85f6(arg4, arg2, arg1, 1, 6);    // $83A6
    mem_666B = (mem_666B - local9);    // $83B0
    set_tile_cursor(22, 13);    // $83B6
    draw_field(0x8A36);    // $83BD
    set_draw_origin(25, 14);    // $83C4
    draw_field(0x8A3C, mem_666B);    // $83CE
    return 1;    // $83D3
}

// Decompiled from source/2-asm-vm\bank29.asm sub $83D4
// $83D4 cargo_price
// (body @ $83D9)

word cargo_price(word arg1, word arg2, word arg3, word arg4, word arg5, word arg6, word arg7) {
    *(word*)(fp - 21) = scan_records_6c90_flag(0, (fp - 9));    // $83E2
    draw_window();    // $83E4
    draw_field_m1(0x8A40, arg3, arg2, arg4);    // $83ED
    scale_6b88(1);    // $83F2
    if (((unsigned)mem_666B < (unsigned)arg2)) {    // $83FB
    draw_box_from_native();    // $83FE
    draw_window();    // $8401
    draw_text(0x8A5F);    // $8407
    return 0;    // $840C
    }
L_840D:
    *(word*)(fp - 27) = 0;    // $840E
    syscall_id12_syscall_set_chr_banks(1, 20);    // $8414
    blit_alloc_tiles(2, 2, 28, 18, 0);    // $841F
    clear_two_ppu_regions();    // $8423
    cargo_load_sprites();    // $8426
    cargo_draw_ship(arg1, 1, 6);    // $8433
    set_tile_cursor(22, 9);    // $843A
    draw_string(0x8A7B, 0);    // $8442
    set_draw_origin(22, 10);    // $8449
    draw_field(0x8A82, arg2);    // $8451
    set_draw_origin(22, 11);    // $8458
    draw_field(0x8A89, arg4);    // $8460
    set_tile_cursor(22, 13);    // $8467
    draw_field(0x8A8C);    // $846E
    set_draw_origin(25, 14);    // $8475
    draw_field(0x8A92, mem_666B);    // $847F
    do {    // $8483
        draw_cargo_box();    // $8483
        draw_window();    // $8486
        draw_string(0x8A96, 1);    // $848D
        local10 = menu_select(2, 10, 2, *(word*)(fp - 21));    // $849A
        if ((local10 != 255)) {    // $84A0
        *(word*)(fp - 27) = (*(word*)(fp - 27) | cargo_full(local10, *(byte*)((local10 + (fp - 9))), arg4, arg1, arg2, arg5, arg7));    // $84BC
        }
L_84BE:
        if ((local10 == 255)) break;    // $84C3
    } while (!(((unsigned)mem_666B < (unsigned)arg2)));    // $84CB
L_84CE:
    if (((unsigned)mem_666B < (unsigned)arg2)) {    // $84D3
    draw_box_from_native();    // $84D6
    draw_window();    // $84D9
    }
L_84E3:
    draw_text(0x8AAA);    // $84DF
    call_in_bank_dcd1(1, 222, cargo_load_sprites);    // $84EA
    clear_two_ppu_regions();    // $84EE
    blit_free_tiles(2, 2, 28, 18, 0);    // $84F8
    return *(word*)(fp - 27);    // $84FE
}

// Decompiled from source/2-asm-vm\bank29.asm sub $84FF
// $84FF cargo_loop
// (body @ $8504)

word cargo_loop(word arg1, word arg2) {
    local10 = 0;    // $8505
    phi_val_851e = 0;    // $8507
    while (((unsigned)local11 < (unsigned)arg1)) {    // $851E
        local10 = (local10 + (*(word*)(((*(byte*)((arg2 + local11)) * 24) + 0x6AB4)) / 10));    // $851B
        phi_val_851e = (local11 + 1);    // $851D
        local11 = phi_val_851e;    // $851E
    }
    return local10;    // $8526
}

// Decompiled from source/2-asm-vm\bank29.asm sub $8527
// $8527 set_cargo_qty
// (body @ $852C)

word set_cargo_qty(word arg1, word arg2) {
    *(word*)(((arg1 * 24) + 0x6AB4)) = (*(word*)(((arg1 * 24) + 0x6AB4)) + (arg2 * 10));    // $853C
    return *(word*)(((arg1 * 24) + 0x6AB4));    // $853D
}

// Decompiled from source/2-asm-vm\bank29.asm sub $853E
// $853E cargo_ret_853e
// (body @ $8543)

word cargo_ret_853e(void) {
    return ?;    // $8543
}

// Decompiled from source/2-asm-vm\bank29.asm sub $8544
// $8544 check_port_valid
// (body @ $8549)

word check_port_valid(void) {
    if (((unsigned)current_port > (unsigned)49)) {    // $854F
    phi_val_8561 = 50;    // $8554
    } else {
    phi_val_8561 = *(byte*)(((current_port * 14) + 0x67BD));    // $8560
    }
L_8561:
    local11 = phi_val_8561;    // $8561
    local11 = ((local11 + 50) / 5);    // $8567
    return cargo_price(0, local11, 0x8AC4, 0x8AC9, cargo_ret_853e, cargo_loop, set_cargo_qty);    // $857D
    }
}

// Decompiled from source/2-asm-vm\bank29.asm sub $857E
// $857E cargo_ret_857e
// (body @ $8583)

word cargo_ret_857e(void) {
    return ?;    // $8583
}

// Decompiled from source/2-asm-vm\bank29.asm sub $8584
// $8584 cargo_init
// (body @ $8589)

word cargo_init(word arg1, word arg2) {
    *(word*)(fp - 3) = 0;    // $858A
    while (((unsigned)*(byte*)(fp - 1) < (unsigned)arg1)) {    // $85A8
        *(word*)(fp - 3) = (*(word*)(fp - 3) + *(word*)(((*(byte*)((*(byte*)(fp - 1) + arg2)) * 24) + 0x6AB8)));    // $85A2
        *(byte*)(fp - 1) = (*(byte*)(fp - 1) + 1);    // $85A8
    }
    return *(word*)(fp - 3);    // $85B5
}

// Decompiled from source/2-asm-vm\bank29.asm sub $85B6
// $85B6 set_cargo_field
// (body @ $85BB)

word set_cargo_field(word arg1, word arg2) {
    *(word*)(((arg1 * 24) + 0x6AB8)) = (*(word*)(((arg1 * 24) + 0x6AB8)) + arg2);    // $85C8
    return *(word*)(((arg1 * 24) + 0x6AB8));    // $85C9
}

// Decompiled from source/2-asm-vm\bank29.asm sub $85CA
// $85CA check_port_29b
// (body @ $85CF)

word check_port_29b(void) {
    if (((unsigned)current_port > (unsigned)49)) {    // $85D5
    phi_val_85e7 = 50;    // $85DA
    } else {
    phi_val_85e7 = *(byte*)(((current_port * 14) + 0x67BD));    // $85E6
    }
L_85E7:
    local11 = phi_val_85e7;    // $85E7
    local11 = ((local11 + 50) / 3);    // $85ED
    return cargo_price(2, local11, 0x8AD0, 0x8AD7, cargo_ret_857e, cargo_init, set_cargo_field);    // $8603
    }
}

// Decompiled from source/2-asm-vm\bank29.asm sub $8604
// $8604 cargo_all_full
// (body @ $8609)

word cargo_all_full(void) {
    *(word*)(fp - 11) = scan_records_6c90_flag(0, (fp - 9));    // $8612
    *(word*)(fp - 15) = 0;    // $8615
    *(word*)(fp - 13) = 0;    // $8617
    phi_val_864c = 0;    // $861A
    while (((unsigned)local11 < (unsigned)*(word*)(fp - 11))) {    // $864C
        *(word*)(fp - 15) = (*(word*)(fp - 15) + record_base_6aa4(*(byte*)((local11 + (fp - 9)))));    // $862E
        *(word*)(fp - 13) = (*(word*)(fp - 13) + record_field_word((record_base_6b1c(*(byte*)((local11 + (fp - 9)))) + 18)));    // $8648
        phi_val_864c = (local11 + 1);    // $864B
        local11 = phi_val_864c;    // $864C
    }
    if ((*(word*)(fp - 15) == *(word*)(fp - 13))) {    // $8659
    draw_cargo_box();    // $865C
    draw_window();    // $865F
    draw_text(0x8AFA);    // $8665
    return 0;    // $866A
    }
L_866B:
    *(word*)(fp - 17) = 0;    // $866C
    do {    // $866E
        draw_cargo_box();    // $866E
        draw_window();    // $8671
        draw_string(0x8B0E, 1);    // $8678
        local10 = draw_tile_grid(8, 23, 8, 2, 0x8ADC, 3, 2);    // $868A
        if ((local10 != 255)) {    // $8690
        mem_7063 = 240;    // $8696
        *(word*)(fp - 17) = (*(word*)(fp - 17) | (*(*(word*)(((local10 << 1) + 0x8AE2))))());    // $86A5
        }
L_86B2:
        opt_loop_8683();    // $86AE
    } while ((local10 != 255));    // $86B7
    return 0;    // $86BB
}

// Decompiled from source/2-asm-vm\bank29.asm sub $86BC
// $86BC cargo_clear
// (body @ $86C1)

word cargo_clear(void) {
    blit_alloc_tiles(2, 2, 28, 18, 0);    // $86C8
    *(word*)(fp - 60) = 0;    // $86CD
    do {    // $86CF
        *(word*)(((*(word*)(fp - 60) << 1) + (fp - 58))) = 0;    // $86DA
        *(word*)(fp - 60) = (*(word*)(fp - 60) + 1);    // $86DE
    } while (((unsigned)*(word*)(fp - 60) < (unsigned)29));    // $86E5
    syscall_id12_syscall_set_chr_banks(1, 20);    // $86EC
    cargo_sprites((fp - 58));    // $86FB
    call_in_bank_dcd1(1, 222, cargo_load_sprites);    // $8706
    mem_7063 = 240;    // $870D
    clear_screen_top();    // $8710
    blit_free_tiles(2, 2, 28, 18, 0);    // $871A
    opt_loop_8683();    // $8725
    return 0;    // $872A
}

// Decompiled from source/2-asm-vm\bank29.asm sub $872B
// $872B cargo_menu
// (body @ $8730)

word cargo_menu(void) {
    local10 = 0;    // $8731
    do {    // $8732
        draw_cargo_box();    // $8732
        draw_window();    // $8735
        draw_string(0x8B4E, 1);    // $873C
        local11 = draw_tile_grid(8, 23, 7, 2, 0x8B24, 3, 2);    // $874E
        if ((local11 != 255)) {    // $8754
        local10 = (*(*(word*)(((local11 << 1) + 0x8B2C))))();    // $875F
        }
L_8760:
        if ((local11 == 255)) break;    // $8765
    } while (!(local10));    // $8769
L_876C:
    return local10;    // $876D
}

// Decompiled from source/2-asm-vm\bank29.asm sub $876E
// $876E cargo_reset
// (body @ $8773)

word cargo_reset(void) {
    mem_7063 = 0;    // $8774
    sprite_mode_flags = (sprite_mode_flags & 253);    // $877F
    sprite_mode_flags = (sprite_mode_flags | 1);    // $8788
    mem_737E = 0;    // $878C
    return 0;    // $878F
}

// Decompiled from source/2-asm-vm\bank29.asm sub $8790
// $8790 draw_captain_line
// (body @ $8795)

word draw_captain_line(word arg1) {
    return draw_field_m1(0x8B66, arg1);    // $879D
}

// Decompiled from source/2-asm-vm\bank29.asm sub $879E
// $879E destination_menu
// (body @ $87A3)

word destination_menu(void) {
    syscall_id08_syscall_queue_ppu_transfer(1, 20, 30, 8, 0, 0);    // $87AC
    draw_box_from_native();    // $87B0
    win_render_syscall(1);    // $87B4
    if (!(load_operand16_14(90))) return draw_captain_line(0x8B72);    // $87BE
    local11 = (mem_666D & 7);    // $87CE
    if ((local11 & 1)) goto L_87EE;    // $87D2
    if (!(((unsigned)mem_6545 < (unsigned)5))) goto L_87EE;    // $87DA
    if (!(load_operand16_14(40))) return draw_captain_line(0x8BA3);    // $87E3
    if ((local11 & 2)) goto L_880D;    // $87F1
    if (!(((unsigned)mem_6545 < (unsigned)6))) goto L_880D;    // $87F9
    if (!(load_operand16_14(50))) return draw_captain_line(0x8BD3);    // $8802
    if ((local11 & 4)) goto L_882C;    // $8810
    if (!(((unsigned)mem_6545 < (unsigned)7))) goto L_882C;    // $8818
    if (!(load_operand16_14(50))) return draw_captain_line(0x8C00);    // $8821
    if (!(((unsigned)mem_666B < (unsigned)(load_operand16_14(100) + 70)))) goto L_884D;    // $883A
    if (!(load_operand16_14(3))) return draw_captain_line(0x8C2B);    // $8842
    if (!((quest_flags & 1))) goto L_886F;    // $8852
    if (!((*(byte*)(player_char_record) != 9))) goto L_886F;    // $885B
    if (!((*(byte*)(player_char_record) != 8))) goto L_886F;    // $8864
    if (!(load_operand16_14(3))) goto L_8878;    // $886C
L_886F:
    if (load_operand16_14(30)) goto L_88A6;    // $8875
L_8878:
    if (((unsigned)current_port < (unsigned)50)) {    // $887E
    if (load_operand16_14(2)) {    // $8886
    } else {
    }
L_88A0:
    return draw_captain_line((load_operand16_14(2) ? 0x8C7A : 0x8CA1));    // $88A5
L_88A6:
    if (!((scan_records_6c90_flag(0, &local8) == 1))) goto L_88C4;    // $88B1
    if (!(load_operand16_14(15))) return draw_captain_line(0x8CD1);    // $88B9
    return draw_string(0x8D07, 1);    // $88CC
    }
    }
}
