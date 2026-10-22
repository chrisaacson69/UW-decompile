// Decompiled from source/2-asm-vm\bank01.asm sub $A003
// $A003 win_open
// (body @ $A008)

word win_open(void) {
    while (!(syscall_id16_syscall_read_controller(0))) {    // $A04B
        if (syscall_id16_syscall_read_controller(1)) break;    // $A012
        syscall_id08_syscall_queue_ppu_transfer((window_stack_lo + 1), (window_stack_depth + 1), 1, 1, 224, 0);    // $A026
        syscall_id17_syscall_busy_wait(2);    // $A02D
        syscall_id08_syscall_queue_ppu_transfer((window_stack_lo + 1), (window_stack_depth + 1), 1, 1, 0, 0);    // $A040
        syscall_id17_syscall_busy_wait(2);    // $A047
    }
L_A055:
L_A068:
    syscall_id08_syscall_queue_ppu_transfer((window_stack_lo + 1), (window_stack_depth + 1), 1, 1, 0, 0);    // $A064
    if (syscall_id16_syscall_read_controller(0)) goto L_A068;    // $A06F
    if (syscall_id16_syscall_read_controller(1)) goto L_A068;    // $A079
    return syscall_id16_syscall_read_controller(1);    // $A07C
}

// Decompiled from source/2-asm-vm\bank01.asm sub $A07D
// $A07D win_close
// (body @ $A082)

word win_close(void) {
    window_stack_depth = (window_stack_depth - 1);    // $A086
    return win_open();    // $A08C
}

// Decompiled from source/2-asm-vm\bank01.asm sub $A08D
// $A08D draw_banked_menu
// (body @ $A092)

word draw_banked_menu(word arg1, word arg2, word arg3, word arg4, word arg5) {
    draw_menu_frame(arg1, arg2, 10, ((arg3 * arg5) + 2), 0, 0);    // $A09D
    phi_val_a0c0 = 0;    // $A0A2
    while (((unsigned)local11 < (unsigned)arg3)) {    // $A0C0
        set_tile_cursor((arg1 + 2), (((local11 * arg5) + arg2) + 2));    // $A0B0
        draw_string_banked(*(word*)(((local11 << 1) + arg4)));    // $A0BA
        phi_val_a0c0 = (local11 + 1);    // $A0BF
        local11 = phi_val_a0c0;    // $A0C0
    }
    local10 = menu_pick(0xBA8C, arg3, (arg1 + 1), (arg2 + 2), 0, arg5, arg3, 1);    // $A0DA
    return ((local10 == 1) ? 255 : (local10 - 1));    // $A0EA
}

// Decompiled from source/2-asm-vm\bank01.asm sub $A0EB
// $A0EB draw_text_menu
// (body @ $A0F0)

word draw_text_menu(word arg1, word arg2, word arg3, word arg4, word arg5) {
    draw_hud_panel();    // $A0F0
    local11 = 8;    // $A0F4
    local10 = ((ui_shared_var_737d == 1) ? 4 : 20);    // $A103
    phi_val_a12d = 0;    // $A105
    while (((unsigned)local9 < (unsigned)arg4)) {    // $A12D
        set_tile_cursor((((((unsigned)local9 / (unsigned)arg5) * arg1) + local11) + 1), (((((unsigned)local9 % (unsigned)arg5) * arg2) + local10) + 1));    // $A11C
        draw_string(*(word*)(((local9 << 1) + arg3)), 0);    // $A127
        phi_val_a12d = (local9 + 1);    // $A12C
        local9 = phi_val_a12d;    // $A12D
    }
    local8 = menu_pick(0xBA8D, arg4, local11, (local10 + 1), arg1, arg2, arg5, 1);    // $A145
    return ((local8 == 1) ? 255 : (local8 - 1));    // $A155
}

// Decompiled from source/2-asm-vm\bank01.asm sub $A156
// $A156 draw_tile_grid
// (body @ $A15B)

word draw_tile_grid(word arg1, word arg2, word arg3, word arg4, word arg5, word arg6, word arg7) {
    local10 = (arg1 + 1);    // $A15D
    phi_val_a186 = 0;    // $A15F
    while (((unsigned)local11 < (unsigned)arg6)) {    // $A186
        set_tile_cursor(((((unsigned)local11 / (unsigned)arg7) * arg3) + local10), ((((unsigned)local11 % (unsigned)arg7) * arg4) + arg2));    // $A174
        draw_string(*(word*)(((local11 << 1) + arg5)), 1);    // $A180
        phi_val_a186 = (local11 + 1);    // $A185
        local11 = phi_val_a186;    // $A186
    }
    local9 = menu_pick(0xBA8E, arg6, arg1, (arg2 + 1), arg3, arg4, arg7, 1);    // $A1A0
    return ((local9 == 1) ? 255 : (local9 - 1));    // $A1B0
}

// Decompiled from source/2-asm-vm\bank01.asm sub $A1B1
// $A1B1 draw_text_menu_2
// (body @ $A1B6)

word draw_text_menu_2(word arg1, word arg2, word arg3, word arg4, word arg5) {
    draw_hud_panel();    // $A1B6
    local10 = 8;    // $A1BA
    local9 = ((ui_shared_var_737d == 1) ? 4 : 20);    // $A1C9
    phi_val_a1f2 = 0;    // $A1CB
    while (((unsigned)local11 < (unsigned)arg4)) {    // $A1F2
        set_tile_cursor((((((unsigned)local11 / (unsigned)arg5) * arg1) + local10) + 1), ((((unsigned)local11 % (unsigned)arg5) * arg2) + local9));    // $A1E1
        draw_string(*(word*)(((local11 << 1) + arg3)), 1);    // $A1EC
        phi_val_a1f2 = (local11 + 1);    // $A1F1
        local11 = phi_val_a1f2;    // $A1F2
    }
    local8 = menu_pick(0xBA8F, arg4, local10, (local9 + 1), arg1, arg2, arg5, 2);    // $A20A
    if (((unsigned)local8 <= (unsigned)arg4)) {    // $A20E
    local8 = (local8 - 1);    // $A213
    }
L_A214:
    return local8;    // $A215
}

// Decompiled from source/2-asm-vm\bank01.asm sub $A216
// $A216 menu_select
// (body @ $A21B)

word menu_select(word arg1, word arg2, word arg3, word arg4) {
    *(byte*)(fp - 1) = menu_pick(0xBA90, arg4, arg1, arg2, 0, arg3, arg4, 1);    // $A229
    if ((!((*(byte*)(fp - 1) != 255)))) return 255;    // $A233
    *(byte*)(fp - 1) = (*(byte*)(fp - 1) - 1);    // $A23E
    return *(byte*)(fp - 1);    // $A241
}

// Decompiled from source/2-asm-vm\bank01.asm sub $A242
// $A242 draw_party_sprite
// (body @ $A247)

word draw_party_sprite(void) {
    local8 = 0x6662;    // $A24A
    local11 = ((((*(byte*)((local8 + 8)) & 7) << 1) << 1) + 128);    // $A255
    local10 = (((*(byte*)((local8 + 2)) << 1) << 3) + 16);    // $A25E
    local9 = ((((*(byte*)((local8 + 3)) << 1) << 3) + *(word*)(((ui_shared_var_737d << 1) + 0xDF14))) + 8);    // $A272
    return syscall_id14_syscall_set_metasprite(0x0501, ((local9 << 8) + local10), (((local11 + 1) << 8) + local11), ((((local11 + 3) << 8) + local11) + 2), 3);    // $A291
}

// Decompiled from source/2-asm-vm\bank01.asm sub $A292
// $A292 animate_party_sprite
// (body @ $A297)

word animate_party_sprite(void) {
    local9 = 0x6662;    // $A29A
    *(byte*)(fp - 3) = *(byte*)((local9 + 8));    // $A29E
    *(byte*)&local10 = *(byte*)((local9 + 8));    // $A2A1
    syscall_id17_syscall_busy_wait(1);    // $A2A7
    draw_party_sprite();    // $A2AB
    local11 = 0;    // $A2AF
L_A2B0:
    if ((*(byte*)&local10 != *(byte*)((local9 + 8)))) {    // $A2B9
    draw_party_sprite();    // $A2BC
    *(byte*)&local10 = *(byte*)((local9 + 8));    // $A2C2
    }
L_A2C5:
    helper_ce4d(local11, 12);    // $A2C7
    local11 = cursor_blink_wait();    // $A2CE
    if ((local11 != 64)) goto L_A303;    // $A2D3
    if (*(byte*)((local9 + 8))) goto L_A2FB;    // $A2D9
    goto L_A2F7;    // $A2E0
L_A2E3:
    if ((*(byte*)((local9 + 8)) == 7)) {    // $A2E8
    } else {
    }
L_A2F7:
    *(byte*)((local9 + 8)) = (*(byte*)((local9 + 8)) + 1);    // $A2F7
    goto L_A2B0;    // $A2F8
L_A2FB:
    goto L_A2F7;    // $A300
L_A303:
    if ((local11 == 128)) goto L_A2E3;    // $A308
    if ((local11 == 1)) goto L_A317;    // $A30E
    if ((local11 != 2)) goto L_A2B0;    // $A314
L_A317:
    if ((local11 == 2)) {    // $A31A
    *(byte*)((local9 + 8)) = *(byte*)(fp - 3);    // $A323
    }
L_A324:
    syscall_id14_syscall_set_metasprite(0x0500, 0, 0, 0, 0);    // $A32C
    do {    // $A330
    } while (input_check());    // $A333
    return (*(byte*)(fp - 3) != *(byte*)((local9 + 8)));    // $A33F
    }
}

// Decompiled from source/2-asm-vm\bank01.asm sub $A340
// $A340 draw_year
// (body @ $A345)

word draw_year(void) {
    if (((mem_7068 == 255))) return (mem_7068 == 255);    // $A34C
    if ((mem_7068 == 1)) {    // $A355
    }
L_A35E:
    set_draw_origin(12, 3);    // $A35A
    return draw_field(0xBA92, (game_year_off + 1500));    // $A36C
}

// Decompiled from source/2-asm-vm\bank01.asm sub $A36D
// $A36D draw_month
// (body @ $A372)

word draw_month(void) {
    if (((mem_7068 == 255))) return (mem_7068 == 255);    // $A379
    if ((mem_7068 == 1)) {    // $A382
    }
L_A38B:
    set_draw_origin(4, 3);    // $A387
    return draw_field(0xBADE, *(word*)(((game_month << 1) + 0xBA96)));    // $A39C
}

// Decompiled from source/2-asm-vm\bank01.asm sub $A39D
// $A39D draw_day
// (body @ $A3A2)

word draw_day(void) {
    if (((mem_7068 == 255))) return (mem_7068 == 255);    // $A3A9
    if ((mem_7068 == 1)) {    // $A3B2
    set_draw_origin(8, 3);    // $A3B7
    phi_val_a3c4 = 0xBAE1;    // $A3BE
    } else {
    phi_val_a3c4 = 0xBAE6;    // $A3C1
    }
L_A3C4:
    local11 = phi_val_a3c4;    // $A3C4
    return draw_field(local11, (game_day + 1));    // $A3CF
    }
}

// Decompiled from source/2-asm-vm\bank01.asm sub $A3D0
// $A3D0 draw_icon_2x2
// (body @ $A3D5)

word draw_icon_2x2(word arg1, word arg2, word arg3) {
    return syscall_id09_syscall_banked_blit_m3(arg1, arg2, 2, 2, *(word*)((((arg3 << 1) << 1) + 0xBAE9)), *(word*)((((arg3 << 1) << 1) + 0xBAEB)), 224);    // $A3F3
}

// Decompiled from source/2-asm-vm\bank01.asm sub $A3F4
// $A3F4 draw_text
// (body @ $A3F9)

word draw_text(word arg1) {
    draw_string(arg1, 1);    // $A3FB
    return scale_6b88(1);    // $A404
}

// Decompiled from source/2-asm-vm\bank01.asm sub $A405
// $A405 blit_alloc_tiles
// (body @ $A40A)

word blit_alloc_tiles(word arg1, word arg2, word arg3, word arg4, word arg5) {
    local11 = vram_tile_cursor;    // $A40D
    if (arg5) goto L_A449;    // $A410
    local10 = ((unsigned)(((arg3 * arg4) << 1) + local11) >= (unsigned)0x8000);    // $A41D
    if (((unsigned)(((arg3 * arg4) << 1) + local11) >= (unsigned)0x8000)) goto L_A47D;    // $A41E
    syscall_id03_syscall_set_prg_bank(0, 1);    // $A424
    syscall_id10_syscall_banked_ppu_blit(arg1, arg2, arg3, arg4, local11, ((arg3 * arg4) + local11), 255);    // $A437
    syscall_id03_syscall_set_prg_bank(0, 5);    // $A43E
    goto L_A475;    // $A446
L_A449:
    local10 = ((unsigned)((arg3 * arg4) + local11) >= (unsigned)0x8000);    // $A452
    if (((unsigned)((arg3 * arg4) + local11) >= (unsigned)0x8000)) goto L_A47D;    // $A453
    syscall_id03_syscall_set_prg_bank(0, 1);    // $A459
    syscall_id10_syscall_banked_ppu_blit(arg1, arg2, arg3, arg4, 0, local11, 255);    // $A467
    syscall_id03_syscall_set_prg_bank(0, 5);    // $A46E
L_A475:
    vram_tile_cursor = (vram_tile_cursor + (arg3 * arg4));    // $A47A
L_A47D:
    if (local10) {    // $A47E
    syscall_id07_syscall_queue_vram_row(0, 0, 0);    // $A485
    set_draw_origin(10, 10);    // $A48B
L_A497:
    draw_string(0xBAF5, 0);    // $A493
    goto L_A497;    // $A497
    }
L_A49A:
    return draw_string(0xBAF5, 0);    // $A49A
}

// Decompiled from source/2-asm-vm\bank01.asm sub $A49B
// $A49B blit_free_tiles
// (body @ $A4A0)

word blit_free_tiles(word arg1, word arg2, word arg3, word arg4, word arg5) {
    local11 = vram_tile_cursor;    // $A4A3
    if (arg5) goto L_A4D3;    // $A4A6
    vram_tile_cursor = (vram_tile_cursor - ((arg3 * arg4) << 1));    // $A4B2
    syscall_id03_syscall_set_prg_bank(0, 1);    // $A4B8
    goto L_A4F1;    // $A4D0
L_A4D3:
    vram_tile_cursor = (vram_tile_cursor - (arg3 * arg4));    // $A4DB
    syscall_id03_syscall_set_prg_bank(0, 1);    // $A4E1
L_A4F1:
    syscall_id09_syscall_banked_blit_m3(arg1, arg2, arg3, arg4, 0, (local11 - (arg3 * arg4)), 255);    // $A4F6
    return syscall_id03_syscall_set_prg_bank(0, 5);    // $A501
}

// Decompiled from source/2-asm-vm\bank01.asm sub $A502
// $A502 blit_block_save
// (body @ $A507)

word blit_block_save(word arg1, word arg2, word arg3, word arg4) {
    blit_alloc_tiles(arg1, arg2, arg3, arg4, 0);    // $A50C
    blit_save_sp = (blit_save_sp + 1);    // $A514
    *(word*)(((blit_save_sp << 1) + 0x726D)) = arg1;    // $A521
    *(word*)(((blit_save_sp << 1) + 0x7273)) = arg2;    // $A52C
    *(word*)(((blit_save_sp << 1) + 0x7279)) = arg3;    // $A537
    *(word*)(((blit_save_sp << 1) + 0x727F)) = arg4;    // $A542
    return arg4;    // $A543
}

// Decompiled from source/2-asm-vm\bank01.asm sub $A544
// $A544 blit_block_unwind
// (body @ $A549)

word blit_block_unwind(void) {
    if ((blit_save_sp >= 0)) {    // $A54E
    blit_free_tiles(*(word*)(((blit_save_sp << 1) + 0x726D)), *(word*)(((blit_save_sp << 1) + 0x7273)), *(word*)(((blit_save_sp << 1) + 0x7279)), *(word*)(((blit_save_sp << 1) + 0x727F)), 0);    // $A57A
    blit_save_sp = (blit_save_sp - 1);    // $A582
    return 1;    // $A586
    }
L_A587:
    return 0;    // $A588
}

// Decompiled from source/2-asm-vm\bank01.asm sub $A589
// $A589 reset_chr_alloc
// (body @ $A58E)

word reset_chr_alloc(void) {
    if (((unsigned)chr_alloc_count < (unsigned)64)) {    // $A594
    }
L_A5A9:
    syscall_id12_syscall_set_chr_banks(chr_alloc_count, (64 - chr_alloc_count));    // $A5A5
    chr_alloc_count = 255;    // $A5AC
    blit_pos_y = 255;    // $A5AF
    blit_pos_x = 255;    // $A5B2
    blit_frame_state = -1;    // $A5B7
    return -1;    // $A5BA
}

// Decompiled from source/2-asm-vm\bank01.asm sub $A5BB
// $A5BB resolve_field_ptr
// (body @ $A5C0)

word resolve_field_ptr(word arg1, word arg2, word arg3, word arg4) {
    if ((arg4 != 3)) goto L_A5E6;    // $A5C3
    if (!((!(arg3) || ((arg3 == 4) || ((arg3 == 5) || (arg3 == 6)))))) goto L_A5E5;    // $A5D9
    *(word*)(fp - 134) = arg3;    // $A5DD
    goto L_A630;    // $A5E2
L_A5E5:
    return 64;    // $A5E5
L_A5E6:
    switch ((arg4 & 15)) {    // $A5E9
    case 0:
        if ((arg3 != 255)) {    // $A5FF
        *(word*)(fp - 138) = ((arg3 * 7) + 0x6542);    // $A609
L_A611:
        *(word*)(fp - 134) = *(word*)((*(word*)(fp - 138) + 4));    // $A611
        }
L_A620:
        goto L_A611;    // $A621
    case 1:
        goto L_A611;    // $A625
    case 2:
        goto L_A611;    // $A62A
    default:
        return (arg3 + 13);    // $A62D
    }
L_A630:
    chr_alloc_count = ((arg4 & 16) ? (arg3 + 13) : 33);    // $A630
    phi_ret_a674 = (blit_pos_y != arg2);    // $A64A
    if (((blit_frame_state != *(word*)(fp - 134)) || ((blit_pos_x != arg1) || phi_ret_a674))) {    // $A64A
    blit_pos_x = arg1;    // $A64E
    blit_pos_y = arg2;    // $A652
    blit_frame_state = *(word*)(fp - 134);    // $A658
    if (((unsigned)blit_frame_state > (unsigned)0x0FFF)) {    // $A662
    phi_a66e_0 = 228;    // $A668
    } else {
    phi_a66e_0 = 227;    // $A66B
    }
L_A66E:
    phi_ret_a674 = syscall_id02_syscall_call_banked_routine(1, phi_a66e_0);    // $A670
L_A674:
    return phi_ret_a674;    // $A674
    }
    }
}

// Decompiled from source/2-asm-vm\bank01.asm sub $A675
// $A675 upload_sprite_block
// (body @ $A67A)

word upload_sprite_block(void) {
    copy_from_bank_dc80((fp - 32), 32, 15);    // $A681
    return syscall_id06_syscall_set_sprite_block((fp - 32), 0, 32);    // $A691
}

// Decompiled from source/2-asm-vm\bank01.asm sub $AB2C
// $AB2C blit_screen_buffer_m3
// (body @ $AB31)

word blit_screen_buffer_m3(void) {
    syscall_id03_syscall_set_prg_bank(0, 1);    // $AB34
    syscall_id09_syscall_banked_blit_m3(1, 1, 30, 28, 0x7062, 0x73AA, 255);    // $AB48
    return syscall_id03_syscall_set_prg_bank(0, 5);    // $AB53
}

// Decompiled from source/2-asm-vm\bank01.asm sub $AB54
// $AB54 write_screen_2x2
// (body @ $AB59)

word write_screen_2x2(word arg1, word arg2) {
    local11 = ((((arg2 << 1) * 30) + (arg1 << 1)) + 0x7063);    // $AB67
    local10 = (local11 + 840);    // $AB6C
    syscall_id03_syscall_set_prg_bank(0, 1);    // $AB70
    copy_from_bank(2, 224, 0xAF92, local11, 2);    // $AB7D
    copy_from_bank(2, 224, 0xAF94, (local11 + 30), 2);    // $AB8D
    copy_from_bank(2, 224, 0xAF96, local10, 2);    // $AB9A
    copy_from_bank(2, 224, 0xAF98, (local10 + 30), 2);    // $ABAA
    return syscall_id03_syscall_set_prg_bank(0, 5);    // $ABB5
}

// Decompiled from source/2-asm-vm\bank01.asm sub $ABB6
// $ABB6 calc_record_fields_abb6
// (body @ $ABBB)

word calc_record_fields_abb6(word arg1, word arg2, word arg3) {
    // ext_op ext_op_F1A9
    // ext_op ext_op_F229
    // TODO: UNK
    // TODO: op_FF
    calc_from_record_fields(&local10, &local9, 2);    // $ABD3
    calc_from_record_fields(&local10, 0x7082, 3);    // $ABDF
    // ext_op ext_op_F1AF
    // ext_op ext_op_F229
    // TODO: UNK
    // TODO: op_FF
    calc_from_record_fields(&local10, &local0, 18);    // $ABFB
    *(word*)(fp - 26) = &local0;    // $AC02
    *(word*)(fp - 28) = (&local0 + 18);    // $AC06
    while (((unsigned)*(word*)(fp - 26) < (unsigned)*(word*)(fp - 28))) {    // $AC3D
        // ext_op ext_op_F1A9
        // ext_op ext_op_F263
        // ext_op ext_op_F1AF
        // ext_op ext_op_EF81
        // ext_op ext_op_F26C
        // ext_op ext_op_F03F
        // ext_op ext_op_F229
        // TODO: UNK
        // TODO: op_FF
        calc_from_record_fields(&local10, arg3, 49);    // $AC2E
        arg3 = (arg3 + 49);    // $AC37
        *(word*)(fp - 26) = (*(word*)(fp - 26) + 2);    // $AC3B
    }
    return ((unsigned)*(word*)(fp - 26) < (unsigned)*(word*)(fp - 28));    // $AC45
}

// Decompiled from source/2-asm-vm\bank01.asm sub $AC46
// $AC46 calc_position_seasonal
// (body @ $AC4B)

word calc_position_seasonal(word arg1, word arg2) {
    // ext_op ext_op_F229
    // TODO: UNK
    // TODO: op_FF
    calc_from_record_fields(&local10, 0x70A5, 2);    // $AC5D
    calc_from_record_fields(&local10, 0x70A7, 2);    // $AC69
    calc_record_fields_abb6(arg1, arg2, 0x70A9);    // $AC72
    if (((unsigned)game_month > (unsigned)2)) {    // $AC7B
    if (!(((unsigned)game_month < (unsigned)9))) goto L_AC8E;    // $AC83
    } else {
    }
L_AC91:
    mem_7080 = (mem_7082 & 15);    // $AC93
    if (((unsigned)game_month > (unsigned)2)) {    // $AC9B
    if (!(((unsigned)game_month < (unsigned)9))) goto L_ACAE;    // $ACA3
    } else {
    }
L_ACB1:
    mem_7081 = (mem_7083 & 15);    // $ACB3
    return (mem_7083 & 15);    // $ACB6
    }
    }
}

// Decompiled from source/2-asm-vm\bank01.asm sub $ACB7
// $ACB7 draw_map_object_2x2
// (body @ $ACBC)

word draw_map_object_2x2(word arg1, word arg2) {
    write_screen_2x2(arg1, arg2);    // $ACBE
    arg1 = ((arg1 << 1) + 2);    // $ACC5
    arg2 = ((arg2 << 1) + 1);    // $ACC9
    return syscall_id09_syscall_banked_blit_m3(arg1, arg2, 2, 2, 0xAF92, 0xAF96, 224);    // $ACDC
}

// Decompiled from source/2-asm-vm\bank01.asm sub $ACDD
// $ACDD draw_map_sprite_anim
// (body @ $ACE2)

word draw_map_sprite_anim(word arg1, word arg2, word arg3) {
    local11 = read_record_70a9(arg3, ((unsigned)arg1 >> 1), ((unsigned)arg2 >> 1));    // $ACEF
    local10 = (((arg2 & 1) << 1) + (arg1 & 1));    // $ACFA
    arg1 = ((arg1 << 1) + 2);    // $ACFE
    arg2 = ((arg2 << 1) + 1);    // $AD02
    local8 = *(byte*)(((((local11 << 1) << 1) + local10) + 0xBDB6));    // $AD0D
    local7 = *(word*)((((sprite_anim_frame * 72) + ((local8 << 1) << 1)) + 0xBC96));    // $AD1F
    local6 = *(word*)((((sprite_anim_frame * 72) + ((local8 << 1) << 1)) + 0xBC98));    // $AD31
    return syscall_id09_syscall_banked_blit_m3(arg1, arg2, 2, 2, local7, local6, 224);    // $AD40
}

// Decompiled from source/2-asm-vm\bank01.asm sub $AD41
// $AD41 place_object_sprite
// (body @ $AD46)

word place_object_sprite(word arg1, word arg2, word arg3) {
    if (!(!((sprite_mode_flags & 2)))) return (sprite_mode_flags & 2);    // $AD4B
    arg1 = ((arg1 << 1) << 3);    // $AD53
    arg2 = ((arg2 << 1) << 3);    // $AD58
    local3 = ((ui_shared_var_737d << 4) + 0xBB02);    // $AD62
    local2 = &local4;    // $AD66
    if ((sprite_mode_flags & 32)) {    // $AD6D
    *(byte*)(local2) = ((*(byte*)(local3) + arg2) + 4);    // $AD78
    local2 = (local2 + 1);    // $AD7B
    local3 = (local3 + 3);    // $AD80
    *(byte*)(local2) = 250;    // $AD85
    local2 = (local2 + 1);    // $AD88
    *(byte*)(local2) = 3;    // $AD8B
    local2 = (local2 + 1);    // $AD8E
    *(byte*)(local2) = ((*(byte*)(local3) + arg1) + 4);    // $AD97
    return syscall_id13_syscall_set_chr_bank_alt(&local4, 5, 1);    // $ADA3
    }
L_ADA4:
    if ((sprite_mode_flags & 1)) goto L_ADAE;    // $ADA9
    arg3 = 8;    // $ADAD
L_ADAE:
    if ((mem_7299 == 1)) {    // $ADB3
    arg3 = load_operand16_14(8);    // $ADBB
    }
L_ADBC:
    arg3 = ((arg3 << 1) << 1);    // $ADBF
    local1 = 0;    // $ADC1
    do {    // $ADC2
        *(byte*)(local2) = (*(byte*)(local3) + arg2);    // $ADC9
        local2 = (local2 + 1);    // $ADCC
        local3 = (local3 + 1);    // $ADCF
        *(byte*)(local2) = (*(byte*)(local3) + arg3);    // $ADD7
        local2 = (local2 + 1);    // $ADDA
        local3 = (local3 + 1);    // $ADDD
        *(byte*)(local2) = *(byte*)(local3);    // $ADE1
        local2 = (local2 + 1);    // $ADE4
        local3 = (local3 + 1);    // $ADE7
        *(byte*)(local2) = (*(byte*)(local3) + arg1);    // $ADEF
        local2 = (local2 + 1);    // $ADF2
        local3 = (local3 + 1);    // $ADF5
        local1 = (local1 + 1);    // $ADF8
    } while ((local1 < 4));    // $ADFC
    return syscall_id13_syscall_set_chr_bank_alt(&local4, 5, 4);    // $AE0A
}

// Decompiled from source/2-asm-vm\bank01.asm sub $AE0B
// $AE0B draw_entity_sprite
// (body @ $AE10)

word draw_entity_sprite(word arg1, word arg2, word arg3) {
    local11 = ((arg3 << 4) + 0x6662);    // $AE17
    *(byte*)((local11 + 8)) = ((unsigned)*(byte*)((local11 + 8)) % (unsigned)8);    // $AE1F
    local10 = *(byte*)((local11 + 8));    // $AE20
    if (!(arg3)) return place_object_sprite(arg1, arg2, local10);    // $AE22
    arg1 = ((arg1 << 1) + 2);    // $AE30
    arg2 = ((arg2 << 1) + 1);    // $AE34
    return syscall_id09_syscall_banked_blit_m3(arg1, arg2, 2, 2, *(word*)((((local10 << 1) << 1) + 0xBB32)), *(word*)((((local10 << 1) << 1) + 0xBB34)), 224);    // $AE53
}

// Decompiled from source/2-asm-vm\bank01.asm sub $AE54
// $AE54 step_entity
// (body @ $AE59)

word step_entity(word arg1, word arg2, word arg3) {
    local7 = nat_1_1672(*(byte*)(arg1), *(byte*)(arg2), &local8);    // $AE67
    if (!(local7)) return 1;    // $AE69
    local6 = *(byte*)((load_operand16_14(local7) + &local8));    // $AE7A
    *(byte*)(arg1) = (*(byte*)(arg1) + *(word*)((((local6 << 1) << 1) + 0x7085)));    // $AE89
    *(byte*)(arg2) = (*(byte*)(arg2) + *(word*)((((local6 << 1) << 1) + 0x7087)));    // $AE98
    *(byte*)(((arg3 << 4) + 0x666A)) = local6;    // $AEA2
    return 0;    // $AEA4
}

// Decompiled from source/2-asm-vm\bank01.asm sub $AEA5
// $AEA5 pick_random_step
// (body @ $AEAA)

word pick_random_step(word arg1, word arg2) {
    do {    // $AEAA
        if (load_operand16_14(2)) {    // $AEAF
        *(byte*)(arg1) = (load_operand16_14(2) * 13);    // $AEBA
        load_operand16_14(14);    // $AEBD
        } else {
        *(byte*)(arg1) = load_operand16_14(14);    // $AECA
        }
L_AED3:
        *(byte*)(arg2) = (load_operand16_14(2) * 13);    // $AED3
    } while (!(calc_pos_relative(entity_x_work, entity_y_work, *(byte*)(arg1), *(byte*)(arg2))));    // $AEE6
    return calc_pos_relative(entity_x_work, entity_y_work, *(byte*)(arg1), *(byte*)(arg2));    // $AEE9
        }
}

// Decompiled from source/2-asm-vm\bank01.asm sub $AEEA
// $AEEA move_entity_ai
// (body @ $AEEF)

word move_entity_ai(word arg1) {
    local11 = ((arg1 << 4) + 0x6662);    // $AEF6
    entity_x_work = *(byte*)(local11);    // $AEF9
    entity_y_work = *(byte*)((local11 + 1));    // $AEFF
    if ((*(byte*)((local11 + 2)) == 255)) goto L_AF31;    // $AF09
    if (calc_pos_relative(entity_x_work, entity_y_work, *(byte*)((local11 + 2)), *(byte*)((local11 + 3)))) goto L_AF3B;    // $AF20
    if (step_entity((local11 + 2), (local11 + 3), arg1)) {    // $AF2E
L_AF31:
    }
L_AF3B:
    pick_random_step((local11 + 2), (local11 + 3));    // $AF37
    *(word*)((local11 + 4)) = 12;    // $AF3F
    *(word*)((local11 + 6)) = 12;    // $AF44
    draw_entity_sprite(*(byte*)((local11 + 2)), *(byte*)((local11 + 3)), arg1);    // $AF4E
    return connect_map_tile(*(byte*)((local11 + 2)), *(byte*)((local11 + 3)), arg1);    // $AF5F
}

// Decompiled from source/2-asm-vm\bank01.asm sub $AF60
// $AF60 load_map_sprite_data
// (body @ $AF65)

word load_map_sprite_data(void) {
    copy_from_bank_dc80(0x72A0, 21, 255);    // $AF6D
    return copy_from_bank_dc80(0x72B6, 196, 255);    // $AF7E
}

// Decompiled from source/2-asm-vm\bank01.asm sub $AF7F
// $AF7F select_party_pose
// (body @ $AF84)

word select_party_pose(void) {
    local11 = 0x6662;    // $AF87
    if (!(ui_shared_var_737d)) goto L_AFA6;    // $AF8B
    if (((unsigned)*(byte*)((local11 + 3)) < (unsigned)6)) goto L_AFAE;    // $AF93
    if (!(((unsigned)*(byte*)((local11 + 3)) > (unsigned)7))) goto L_AFB2;    // $AF9B
L_AF9E:
    phi_val_afaf = 1;    // $AF9F
    goto L_AFAF;    // $AF9F
L_AFA2:
    phi_push_afbd = 7;    // $AFA3
    goto L_AFBD;    // $AFA3
L_AFA6:
    if (!(((unsigned)*(byte*)((local11 + 3)) < (unsigned)7))) goto L_AF9E;    // $AFAB
L_AFAE:
    phi_val_afaf = 2;    // $AFAE
L_AFAF:
    ui_shared_var_737d = phi_val_afaf;    // $AFAF
L_AFB2:
    if ((ui_shared_var_737d == 1)) goto L_AFA2;    // $AFB7
    phi_push_afbd = 231;    // $AFBA
L_AFBD:
    syscall_id18_syscall_set_scroll(0, phi_push_afbd);    // $AFC1
    return syscall_id17_syscall_busy_wait(1);    // $AFCC
}

// Decompiled from source/2-asm-vm\bank01.asm sub $AFCD
// $AFCD lookup_region_music
// (body @ $AFD2)

word lookup_region_music(word arg1) {
    return *(byte*)((arg1 + 0xBB52));    // $AFD8
}

// Decompiled from source/2-asm-vm\bank01.asm sub $AFD9
// $AFD9 draw_map_view
// (body @ $AFDE)

word draw_map_view(word arg1, word arg2) {
    load_map_sprite_data();    // $AFDE
    *(word*)(fp - 29) = ((unsigned)arg1 % (unsigned)3);    // $AFE4
    *(word*)(fp - 33) = ((unsigned)arg2 % (unsigned)3);    // $AFE9
    *(word*)(fp - 31) = ((unsigned)arg1 / (unsigned)3);    // $AFEE
    *(word*)(fp - 35) = ((unsigned)arg2 / (unsigned)3);    // $AFF3
    *(word*)(fp - 39) = *(byte*)((((unsigned)arg2 / (unsigned)6) + 0xBB55));    // $AFFD
    if (!((current_region != *(word*)(fp - 39)))) goto L_B01D;    // $B005
    idx_over_20(lookup_region_music(*(word*)(fp - 39)));    // $B00F
    audio_param_gated(1);    // $B014
    current_region = *(word*)(fp - 39);    // $B01A
L_B01D:
    *(word*)(fp - 41) = *(word*)(fp - 35);    // $B01F
    if (!((*(word*)(fp - 41) < 6))) goto L_B02F;    // $B025
    goto L_B033;    // $B02C
L_B02F:
L_B033:
    *(word*)(fp - 41) = (*(word*)(fp - 41) + -6);    // $B033
    if (!((*(word*)(fp - 41) < 4))) goto L_B043;    // $B039
    goto L_B047;    // $B040
L_B043:
L_B047:
    *(word*)(fp - 41) = (*(word*)(fp - 41) + -2);    // $B047
    if (!((sprite_anim_frame != *(word*)(fp - 41)))) goto L_B057;    // $B04F
    sprite_anim_frame = *(word*)(fp - 41);    // $B054
L_B057:
    if (!(((mem_7263 != *(word*)(fp - 31)) || (mem_7264 != *(word*)(fp - 35))))) goto L_B07B;    // $B066
    calc_position_seasonal(*(word*)(fp - 31), *(word*)(fp - 35));    // $B06D
    mem_7263 = *(word*)(fp - 31);    // $B073
    mem_7264 = *(word*)(fp - 35);    // $B078
L_B07B:
    if ((mem_7265 != *(word*)(fp - 29))) goto L_B091;    // $B081
    if ((mem_7266 != *(word*)(fp - 33))) goto L_B091;    // $B08A
    goto L_B092;    // $B08E
L_B091:
L_B092:
    *(word*)(fp - 45) = 1;    // $B092
    if (!(*(word*)(fp - 45))) goto L_B0B2;    // $B096
    syscall_id12_syscall_set_chr_banks(5, 4);    // $B09C
    draw_map_frame(*(word*)(fp - 29), *(word*)(fp - 33));    // $B0A4
    mem_7265 = *(word*)(fp - 29);    // $B0AA
    mem_7266 = *(word*)(fp - 33);    // $B0AF
L_B0B2:
    mem_707F = collect_ports_by_key(arg1, arg2, (fp - 21));    // $B0BC
    if (!(collect_ports_by_key(arg1, arg2, (fp - 21)))) goto L_B14B;    // $B0BF
    *(word*)(fp - 37) = 0;    // $B0C3
    *(word*)(fp - 23) = (fp - 21);    // $B0C8
    *(word*)(fp - 25) = (mem_707F + (fp - 21));    // $B0D0
    goto L_B13E;    // $B0D2
L_B0D5:
    if (!((*(byte*)((*(byte*)(*(word*)(fp - 23)) + 0x6F76)) & 8))) goto L_B129;    // $B0DF
    *(word*)(fp - 43) = ((*(byte*)(*(word*)(fp - 23)) * 19) + 0xAFD8);    // $B0EC
    if (!(*(word*)(fp - 45))) goto L_B10E;    // $B0F0
    write_screen_2x2(record_field_byte((*(word*)(fp - 43) + 17)), record_field_byte((*(word*)(fp - 43) + 18)));    // $B107
    goto L_B139;    // $B10B
L_B10E:
    draw_map_object_2x2(record_field_byte((*(word*)(fp - 43) + 17)), record_field_byte((*(word*)(fp - 43) + 18)));    // $B122
    goto L_B139;    // $B126
L_B129:
    *(byte*)((*(word*)(fp - 37) + 0x706B)) = *(byte*)(*(word*)(fp - 23));    // $B133
    *(word*)(fp - 37) = (*(word*)(fp - 37) + 1);    // $B137
L_B139:
    *(word*)(fp - 23) = (*(word*)(fp - 23) + 1);    // $B13C
L_B13E:
    if (((unsigned)*(word*)(fp - 23) < (unsigned)*(word*)(fp - 25))) goto L_B0D5;    // $B143
    mem_707F = *(word*)(fp - 37);    // $B148
L_B14B:
    if (!(*(word*)(fp - 45))) goto L_B160;    // $B14D
    select_party_pose();    // $B150
    upload_cursor_sprites(((unsigned)mem_6B8C / (unsigned)5));    // $B159
L_B160:
    blit_screen_buffer_m3();    // $B15D
    *(word*)(fp - 27) = scan_records_6662(arg1, arg2, (fp - 21));    // $B16A
    if (!(scan_records_6662(arg1, arg2, (fp - 21)))) goto L_B191;    // $B16C
    *(word*)(fp - 23) = (fp - 21);    // $B172
    *(word*)(fp - 25) = ((fp - 21) + *(word*)(fp - 27));    // $B177
    goto L_B189;    // $B179
L_B17C:
    move_entity_ai(*(byte*)(*(word*)(fp - 23)));    // $B180
    *(word*)(fp - 23) = (*(word*)(fp - 23) + 1);    // $B187
L_B189:
    if (((unsigned)*(word*)(fp - 23) < (unsigned)*(word*)(fp - 25))) goto L_B17C;    // $B18E
L_B191:
    return ((unsigned)*(word*)(fp - 23) < (unsigned)*(word*)(fp - 25));    // $B191
}

// Decompiled from source/2-asm-vm\bank01.asm sub $B192
// $B192 upload_cursor_sprites
// (body @ $B197)

word upload_cursor_sprites(word arg1) {
    if (((unsigned)arg1 % (unsigned)3)) goto L_B1A8;    // $B19A
    goto L_B1C1;    // $B1A5
L_B1A8:
    if (((unsigned)arg1 / (unsigned)3)) {    // $B1AB
    } else {
    }
L_B1C1:
    local11 = ((sprite_anim_frame << 4) + 0xBBDC);    // $B1C2
    syscall_id06_syscall_set_sprite_block(local11, 0, 16);    // $B1C8
    return syscall_id06_syscall_set_sprite_block(0xF376, 16, 16);    // $B1D8
    }
}

// Decompiled from source/2-asm-vm\bank01.asm sub $B1D9
// $B1D9 draw_message_frame
// (body @ $B1DE)

word draw_message_frame(void) {
    return native_draw_box(7, ((ui_shared_var_737d == 1) ? 3 : 19), 18, 8, 2, 0);    // $B1F7
}

// Decompiled from source/2-asm-vm\bank01.asm sub $B1F8
// $B1F8 draw_message_line
// (body @ $B1FD)

word draw_message_line(word arg1) {
    arg1 = (arg1 - 1);    // $B1FF
    local11 = ((ui_shared_var_737d == 1) ? 3 : 19);    // $B20E
    set_tile_cursor(8, (((arg1 << 1) + local11) + 1));    // $B216
    return draw_string(0xBC1C, 1);    // $B222
}

// Decompiled from source/2-asm-vm\bank01.asm sub $B223
// $B223 show_prompt_bc23
// (body @ $B228)

word show_prompt_bc23(void) {
    draw_message_frame();    // $B228
    local11 = ((ui_shared_var_737d == 1) ? 3 : 19);    // $B239
    set_tile_cursor(8, (local11 + 1));    // $B23E
    return draw_string(0xBC23, 1);    // $B24A
}

// Decompiled from source/2-asm-vm\bank01.asm sub $B24B
// $B24B show_message
// (body @ $B250)

word show_message(void) {
    draw_message_frame();    // $B250
    return draw_message_line(1);    // $B258
}

// Decompiled from source/2-asm-vm\bank01.asm sub $B259
// $B259 show_message_line2
// (body @ $B25E)

word show_message_line2(void) {
    draw_message_frame();    // $B25E
    return draw_message_line(2);    // $B266
}

// Decompiled from source/2-asm-vm\bank01.asm sub $B267
// $B267 show_prompt_bc27
// (body @ $B26C)

word show_prompt_bc27(word arg1, word arg2) {
    screen_dirty = 2;    // $B26D
    local10 = ((ui_shared_var_737d == 1) ? 3 : 19);    // $B27E
    syscall_id09_syscall_banked_blit_m3(7, local10, 24, 8, 0xA004, 0xA0C4, 233);    // $B28E
    resolve_field_ptr(25, (local10 + 1), arg1, arg2);    // $B299
    draw_message_frame();    // $B29D
    set_tile_cursor(8, (local10 + 1));    // $B2A4
    return draw_string(0xBC27, 1);    // $B2B0
}

// Decompiled from source/2-asm-vm\bank01.asm sub $B2B1
// $B2B1 show_prompt_bc2b
// (body @ $B2B6)

word show_prompt_bc2b(word arg1, word arg2) {
    screen_dirty = 2;    // $B2B7
    local10 = ((ui_shared_var_737d == 1) ? 3 : 19);    // $B2C8
    resolve_field_ptr(25, (local10 + 1), arg1, arg2);    // $B2D0
    draw_message_frame();    // $B2D4
    set_tile_cursor(8, (local10 + 1));    // $B2DB
    return draw_string(0xBC2B, 1);    // $B2E7
}

// Decompiled from source/2-asm-vm\bank01.asm sub $B2E8
// $B2E8 show_prompt_record
// (body @ $B2ED)

word show_prompt_record(void) {
    return show_prompt_bc27(search_6a9a_ptr(), 0);    // $B2F6
}

// Decompiled from source/2-asm-vm\bank01.asm sub $B2F7
// $B2F7 draw_object_count
// (body @ $B2FC)

word draw_object_count(word arg1, word arg2, word arg3, word arg4) {
    syscall_id09_syscall_banked_blit_m3(arg1, arg2, 2, 2, *(word*)((((arg3 << 1) << 1) + 0xBC2F)), *(word*)((((arg3 << 1) << 1) + 0xBC31)), 224);    // $B316
    arg1 = (arg1 + 2);    // $B31E
    arg2 = (arg2 + 1);    // $B321
    arg4 = ((unsigned)arg4 % (unsigned)10);    // $B325
    return syscall_id09_syscall_banked_blit_m3(arg1, arg2, 1, 1, *(word*)((((arg4 << 1) << 1) + 0xBC4F)), *(word*)((((arg4 << 1) << 1) + 0xBC51)), 224);    // $B344
}

// Decompiled from source/2-asm-vm\bank01.asm sub $B345
// $B345 draw_ship_status
// (body @ $B34A)

word draw_ship_status(word arg1, word arg2) {
    local11 = mem_7081;    // $B34D
    syscall_id09_syscall_banked_blit_m3(arg1, arg2, 5, 8, 0xAED6, 0xAEFE, 224);    // $B35C
    arg1 = (arg1 + 1);    // $B362
    arg2 = (arg2 + 2);    // $B367
    if (local11) {    // $B369
    }
L_B377:
    draw_object_count(arg1, arg2, mem_7080, local11);    // $B373
    local11 = (((unsigned)mem_7084 >> 3) & 3);    // $B37E
    arg2 = (arg2 + 3);    // $B383
    phi_ret_b397 = local11;    // $B385
    if (phi_ret_b397) {    // $B385
    phi_ret_b397 = draw_object_count(arg1, arg2, (((unsigned)mem_7084 >> 6) & 7), local11);    // $B393
    }
L_B397:
    return phi_ret_b397;    // $B397
}

// Decompiled from source/2-asm-vm\bank01.asm sub $B398
// $B398 sum_fleet_cargo
// (body @ $B39D)

word sum_fleet_cargo(word arg1, word arg2) {
    local11 = 0xBC77;    // $B3A0
    *(word*)(fp - 13) = scan_records_6c90_flag(0, (fp - 7));    // $B3AA
    *(word*)(fp - 19) = 0;    // $B3AD
    *(word*)(fp - 17) = 0;    // $B3AF
    *(word*)(fp - 15) = 0;    // $B3B1
    *(word*)(fp - 9) = (fp - 7);    // $B3B6
    *(word*)(fp - 11) = ((fp - 7) + *(word*)(fp - 13));    // $B3BB
    while (((unsigned)*(word*)(fp - 9) < (unsigned)*(word*)(fp - 11))) {    // $B3FC
        *(word*)(fp - 25) = ((*(byte*)(*(word*)(fp - 9)) * 24) + 0x6AA4);    // $B3CA
        *(word*)(fp - 27) = ((*(byte*)(*(word*)(fp - 9)) * 7) + 0x6C90);    // $B3D5
        *(word*)(fp - 17) = (*(word*)(fp - 17) + *(word*)((*(word*)(fp - 25) + 18)));    // $B3E0
        *(word*)(fp - 19) = (*(word*)(fp - 19) + *(word*)((*(word*)(fp - 25) + 16)));    // $B3EB
        *(word*)(fp - 15) = (*(word*)(fp - 15) + *(word*)((*(word*)(fp - 27) + 4)));    // $B3F5
        *(word*)(fp - 9) = (*(word*)(fp - 9) + 1);    // $B3FA
    }
    // ext_op ext_op_F1AF
    // ext_op ext_op_F263
    // ext_op ext_op_F1AF
    // ext_op ext_op_F26C
    // ext_op ext_op_EF81
    // ext_op sdiv32
    // ext_op ext_op_F1B3
    *(word*)(fp - 21) = *(word*)(fp - 15);    // $B41D
    // ext_op ext_op_F1AF
    // ext_op ext_op_F263
    // ext_op ext_op_F1AF
    // ext_op ext_op_F26C
    // ext_op ext_op_EF81
    // ext_op sdiv32
    // ext_op ext_op_F1B3
    *(word*)(fp - 23) = *(word*)(fp - 15);    // $B438
    *(word*)(fp - 21) = ((unsigned)*(word*)(fp - 17) / (unsigned)(*(word*)(fp - 21) + 1));    // $B442
    *(word*)(fp - 23) = ((unsigned)*(word*)(fp - 19) / (unsigned)(*(word*)(fp - 23) + 1));    // $B44C
    *(word*)(fp - 21) = max_s16(*(word*)(fp - 21), 0x03E8);    // $B457
    *(word*)(fp - 23) = max_s16(*(word*)(fp - 23), 0x03E8);    // $B462
    draw_icon_2x2(arg1, arg2, 1);    // $B467
    set_tile_cursor((arg1 + 2), arg2);    // $B46F
    draw_field(0xBC7C, *(word*)(fp - 21));    // $B478
    set_draw_origin((arg1 + 2), (arg2 + 1));    // $B482
    draw_field(0xBC7F, local11);    // $B48A
    draw_icon_2x2(arg1, (arg2 + 3), 0);    // $B493
    set_tile_cursor((arg1 + 2), (arg2 + 3));    // $B49D
    draw_field(0xBC82, *(word*)(fp - 23));    // $B4A6
    set_draw_origin((arg1 + 2), (arg2 + 4));    // $B4B0
    return draw_field(0xBC85, local11);    // $B4BC
}

// Decompiled from source/2-asm-vm\bank01.asm sub $B4BD
// $B4BD draw_hud_panel
// (body @ $B4C2)

word draw_hud_panel(void) {
    local11 = 2;    // $B4C3
    local10 = ((ui_shared_var_737d == 1) ? 3 : 19);    // $B4D2
    reset_chr_alloc();    // $B4D3
    draw_string(0xBC88, 0);    // $B4DA
    if (screen_dirty) goto L_B4EA;    // $B4E1
L_B4EA:
    draw_ship_status(local11, local10);    // $B4E6
    if ((!(screen_dirty) || (screen_dirty == 2))) {    // $B4F5
    syscall_id09_syscall_banked_blit_m3((local11 + 5), local10, 24, 8, 0xA004, 0xA0C4, 233);    // $B509
    set_draw_origin((local11 + 6), local10);    // $B511
    draw_month();    // $B515
    set_draw_origin((local11 + 10), local10);    // $B51C
    draw_day();    // $B520
    set_draw_origin((local11 + 13), local10);    // $B527
    draw_year();    // $B52B
    set_draw_origin((local11 + 21), local10);    // $B533
    draw_field(0xBC8F, mem_6A96);    // $B53D
    sum_fleet_cargo((local11 + 22), (local10 + 2));    // $B548
    } else {
    }
L_B55E:
    syscall_id08_syscall_queue_ppu_transfer((local11 + 6), (local10 + 1), 15, 6, 0, 0);    // $B55A
    screen_dirty = 1;    // $B55F
    return 1;    // $B562
    }
}

// Decompiled from source/2-asm-vm\bank01.asm sub $B563
// $B563 refresh_hud
// (body @ $B568)

word refresh_hud(void) {
    screen_dirty = 0;    // $B569
    return draw_hud_panel();    // $B56F
}

// Decompiled from source/2-asm-vm\bank01.asm sub $B570
// $B570 blit_screen_buffer
// (body @ $B575)

word blit_screen_buffer(void) {
    syscall_id03_syscall_set_prg_bank(0, 1);    // $B578
    syscall_id10_syscall_banked_ppu_blit(1, 1, 30, 28, 0x7062, 0x73AA, 255);    // $B58C
    return syscall_id03_syscall_set_prg_bank(0, 5);    // $B597
}

// Decompiled from source/2-asm-vm\bank01.asm sub $B598
// $B598 redraw_screen_if_changed
// (body @ $B59D)

word redraw_screen_if_changed(void) {
    phi_ret_b5e4 = (*(byte*)(vram_tile_cursor) != 0x7062);    // $B5A5
    if (phi_ret_b5e4) {    // $B5A5
    select_party_pose();    // $B5A8
    syscall_id03_syscall_set_prg_bank(0, 1);    // $B5AE
    syscall_id09_syscall_banked_blit_m3(1, 1, 30, 28, 0x7062, 0x73AA, 255);    // $B5C2
    syscall_id03_syscall_set_prg_bank(0, 5);    // $B5C9
    reset_chr_alloc();    // $B5CD
    place_object_sprite(party_map_x, party_map_y, mem_666A);    // $B5DC
    screen_dirty = 0;    // $B5E1
    phi_ret_b5e4 = 0;    // $B5E1
    }
L_B5E4:
    return phi_ret_b5e4;    // $B5E4
}

// Decompiled from source/2-asm-vm\bank01.asm sub $B5E5
// $B5E5 redraw_dialog_region
// (body @ $B5EA)

word redraw_dialog_region(void) {
    phi_ret_b633 = screen_dirty;    // $B5ED
    if (phi_ret_b633) {    // $B5ED
    local11 = ((ui_shared_var_737d == 1) ? 3 : 19);    // $B5FE
    local10 = ((local11 - 1) * 30);    // $B604
    syscall_id03_syscall_set_prg_bank(0, 1);    // $B608
    syscall_id09_syscall_banked_blit_m3(1, local11, 30, 8, (local10 + 0x7062), (local10 + 0x73AA), 255);    // $B621
    syscall_id03_syscall_set_prg_bank(0, 5);    // $B628
    reset_chr_alloc();    // $B62C
    screen_dirty = 0;    // $B630
    phi_ret_b633 = 0;    // $B630
    }
L_B633:
    return phi_ret_b633;    // $B633
}

// Decompiled from source/2-asm-vm\bank01.asm sub $B634
// $B634 party_in_rect
// (body @ $B639)

word party_in_rect(word arg1, word arg2, word arg3, word arg4) {
    local11 = ((party_map_x << 1) + 2);    // $B63E
    local10 = ((party_map_y << 1) + 1);    // $B644
    local7 = 0;    // $B646
    local9 = (arg1 + arg3);    // $B64A
    local8 = (arg2 + arg4);    // $B64E
    if (((unsigned)local11 >= (unsigned)arg1)) {    // $B652
    if (((unsigned)local11 < (unsigned)local9)) {    // $B658
    if (((unsigned)local10 >= (unsigned)arg2)) {    // $B65E
    if (((unsigned)local10 < (unsigned)local8)) {    // $B664
    local7 = 1;    // $B668
    }
    }
    }
    }
L_B670:
    syscall_id12_syscall_set_chr_banks(5, 4);    // $B66C
    return local7;    // $B671
}

// Decompiled from source/2-asm-vm\bank01.asm sub $B7CE
// $B7CE clear_two_ppu_regions
// (body @ $B7D3)

word clear_two_ppu_regions(void) {
    syscall_id08_syscall_queue_ppu_transfer(0, 6, 32, 14, 0, 0);    // $B7DB
    return syscall_id08_syscall_queue_ppu_transfer(1, 20, 1, 8, 0, 0);    // $B7EB
}

// Decompiled from source/2-asm-vm\bank01.asm sub $B7EC
// $B7EC clear_screen_top
// (body @ $B7F1)

word clear_screen_top(void) {
    syscall_id08_syscall_queue_ppu_transfer(0, 0, 32, 6, 0, 0);    // $B7F9
    return clear_two_ppu_regions();    // $B800
}

// Decompiled from source/2-asm-vm\bank01.asm sub $B801
// $B801 draw_box_frame
// (body @ $B806)

word draw_box_frame(void) {
    native_draw_box(7, 20, 24, 8, 1, 0);    // $B80E
    return draw_string(0xBE8A, 1);    // $B81A
}

// Decompiled from source/2-asm-vm\bank01.asm sub $B81B
// $B81B win_render_syscall
// (body @ $B820)

word win_render_syscall(word arg1) {
    syscall_id08_syscall_queue_ppu_transfer(1, 20, 6, 8, 0, 0);    // $B828
    set_tile_cursor(8, ((arg1 << 1) + 19));    // $B832
    return draw_string(0xBE91, 1);    // $B83E
}

// Decompiled from source/2-asm-vm\bank01.asm sub $B83F
// $B83F draw_window
// (body @ $B844)

word draw_window(void) {
    draw_box_frame();    // $B844
    return win_render_syscall(1);    // $B84C
}

// Decompiled from source/2-asm-vm\bank01.asm sub $B84D
// $B84D draw_window_2
// (body @ $B852)

word draw_window_2(void) {
    draw_box_frame();    // $B852
    return win_render_syscall(2);    // $B85A
}

// Decompiled from source/2-asm-vm\bank01.asm sub $B85B
// $B85B draw_window_3
// (body @ $B860)

word draw_window_3(void) {
    draw_box_frame();    // $B860
    return win_render_syscall(3);    // $B868
}

// Decompiled from source/2-asm-vm\bank01.asm sub $B869
// $B869 draw_box_variant
// (body @ $B86E)

word draw_box_variant(word arg1, word arg2) {
    native_draw_box(7, 20, 24, 8, 1, 0);    // $B876
    resolve_field_ptr(2, 21, arg1, arg2);    // $B87F
    return win_render_syscall(1);    // $B888
}

// Decompiled from source/2-asm-vm\bank01.asm sub $B889
// $B889 draw_box_from_native
// (body @ $B88E)

word draw_box_from_native(void) {
    return draw_box_variant(search_6a9a_ptr(), 0);    // $B897
}

// Decompiled from source/2-asm-vm\bank01.asm sub $B898
// $B898 modal_input_loop
// (body @ $B89D)

word modal_input_loop(word arg1) {
    *(word*)(fp - 9) = 0;    // $B89E
    *(word*)(fp - 7) = 0;    // $B8A0
    *(byte*)(fp - 5) = (((*(word*)(fp - 9) + 12) << 3) - 1);    // $B8A8
    *(byte*)&local10 = 225;    // $B8AE
    *(byte*)(fp - 3) = 0;    // $B8B2
    *(byte*)&local11 = ((*(word*)(fp - 7) + 2) << 3);    // $B8BA
L_B8C8:
    syscall_id13_syscall_set_chr_bank_alt((fp - 5), 0, 1);    // $B8C4
    *(byte*)(fp - 1) = frame_sync(0);    // $B8CD
    helper_ce4d(*(byte*)(fp - 1), 12);    // $B8D5
    switch (*(byte*)(fp - 1)) {    // $B8DC
    case 16:
    case 32:
        if (!(*(word*)(fp - 9))) goto L_B946;    // $B8F3
L_B8F7:
        *(word*)(fp - 9) = 0;    // $B8F7
    default:
L_B8F9:
        *(byte*)(fp - 5) = ((((*(word*)(fp - 9) * 7) + 12) << 3) - 1);    // $B901
        *(byte*)&local10 = 225;    // $B907
        *(byte*)(fp - 3) = 0;    // $B90B
        *(byte*)&local11 = (((*(word*)(fp - 7) * 9) + 2) << 3);    // $B915
        syscall_id13_syscall_set_chr_bank_alt((fp - 5), 0, 1);    // $B91F
        if ((*(byte*)(fp - 1) == 1)) goto L_B933;    // $B928
        if (!((*(byte*)(fp - 1) == 2))) goto L_B8C8;    // $B930
L_B933:
        syscall_id12_syscall_set_chr_banks(0, 1);    // $B936
        if (!((*(byte*)(fp - 1) == 2))) goto L_B998;    // $B93F
        return 255;    // $B945
L_B946:
        if (!(((unsigned)(*(word*)(fp - 7) + 3) < (unsigned)arg1))) goto L_B8F9;    // $B94B
        goto L_B8F7;    // $B94F
        goto L_B8F9;    // $B952
    case 128:
        if ((*(word*)(fp - 7) != 2)) {    // $B959
        if (!(((unsigned)(((*(word*)(fp - 9) * 3) + *(word*)(fp - 7)) + 1) < (unsigned)arg1))) goto L_B96F;    // $B966
        } else {
        goto L_B97F;    // $B970
L_B973:
        goto L_B97F;    // $B976
L_B979:
        if (*(word*)(fp - 9)) goto L_B98F;    // $B97B
        }
L_B97F:
        *(word*)(fp - 7) = 2;    // $B97F
        goto L_B8F9;    // $B981
    case 64:
        if (*(word*)(fp - 7)) goto L_B973;    // $B986
        if (((unsigned)arg1 > (unsigned)3)) goto L_B979;    // $B98C
L_B98F:
        *(word*)(fp - 7) = ((unsigned)(arg1 - 1) % (unsigned)3);    // $B993
        goto L_B8F9;    // $B995
    }
L_B998:
    return ((*(word*)(fp - 9) * 3) + *(word*)(fp - 7));    // $B99F
    }
}

// Decompiled from source/2-asm-vm\bank01.asm sub $B9A0
// $B9A0 sum_matching_6aa4
// (body @ $B9A5)

word sum_matching_6aa4(word arg1) {
    *(word*)(fp - 15) = scan_records_6c90_flag(0, (fp - 5));    // $B9AE
    *(word*)(fp - 19) = 0;    // $B9B1
    *(word*)(fp - 7) = (fp - 5);    // $B9B6
    *(word*)(fp - 9) = ((fp - 5) + *(word*)(fp - 15));    // $B9BB
    goto L_BA06;    // $B9BD
L_B9C0:
    *(word*)(fp - 21) = ((*(byte*)(*(word*)(fp - 7)) * 24) + 0x6AA4);    // $B9CA
    *(word*)(fp - 11) = (*(word*)(fp - 21) + 1);    // $B9CF
    *(word*)(fp - 17) = (*(word*)(fp - 21) + 6);    // $B9D4
    *(word*)(fp - 13) = (*(word*)(fp - 11) + 5);    // $B9D9
    goto L_B9F9;    // $B9DB
L_B9DE:
    if ((*(byte*)(*(word*)(fp - 11)) == arg1)) {    // $B9E3
    *(word*)(fp - 19) = (*(word*)(fp - 19) + *(word*)(*(word*)(fp - 17)));    // $B9ED
    }
L_B9EF:
    *(word*)(fp - 17) = (*(word*)(fp - 17) + 2);    // $B9F2
    *(word*)(fp - 11) = (*(word*)(fp - 11) + 1);    // $B9F7
L_B9F9:
    if (((unsigned)*(word*)(fp - 11) < (unsigned)*(word*)(fp - 13))) goto L_B9DE;    // $B9FE
    *(word*)(fp - 7) = (*(word*)(fp - 7) + 1);    // $BA04
L_BA06:
    if (((unsigned)*(word*)(fp - 7) < (unsigned)*(word*)(fp - 9))) goto L_B9C0;    // $BA0B
    return *(word*)(fp - 19);    // $BA10
}

// Decompiled from source/2-asm-vm\bank01.asm sub $BA11
// $BA11 lookup_stat_ba11
// (body @ $BA16)

word lookup_stat_ba11(void) {
    local9 = mem_7055;    // $BA19
    local8 = ((current_port * 5) + 0xB50A);    // $BA23
    local7 = ((current_port * 14) + 0x67B2);    // $BA2D
    local11 = (*(byte*)((local7 + 11)) + 50);    // $BA33
    local10 = record_field_word((((record_field_byte(local8) * 88) + (local9 << 1)) + 0xB888));    // $BA4A
    // ext_op ext_op_F1A9
    // ext_op ext_op_F263
    // ext_op ext_op_F1A9
    // ext_op ext_op_F26C
    // ext_op ext_op_EF81
    // ext_op sdiv32
    // ext_op ext_op_F1B3
    local10 = local10;    // $BA61
    if ((record_field_byte((local8 + 1)) == local9)) {    // $BA6B
    // ext_op ext_op_F1A9
    // ext_op ext_op_F263
    // ext_op ext_op_F1A9
    // ext_op ext_op_F26C
    // ext_op ext_op_EF81
    // ext_op sdiv32
    // ext_op ext_op_F1B3
    local10 = ((*(word*)((local7 + 12)) / 2) + 1);    // $BA89
    }
L_BA8A:
    return local10;    // $BA8B
}
