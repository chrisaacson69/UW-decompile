// Decompiled from source/2-asm-vm\bank30.asm sub $8003
// $8003 opt_check_port
// (body @ $8008)

word opt_check_port(void) {
    if (((unsigned)current_port >= (unsigned)50)) {    // $800E
    local11 = *(byte*)((current_port + 0x8BEA));    // $8019
    return syscall_id06_syscall_set_sprite_block(((local11 << 4) + 0x8B9C), 0, 16);    // $802A
    }
L_802B:
    if ((!(((current_port != 2) || (current_port == 12))))) return syscall_id06_syscall_set_sprite_block(0x8BEC, 0, 16);    // $8038
    local10 = ((current_port * 5) + 0xB50A);    // $8050
    local11 = record_field_byte(local10);    // $8056
    return syscall_id06_syscall_set_sprite_block(((local11 << 4) + 0x8B9C), 0, 16);    // $8067
}

// Decompiled from source/2-asm-vm\bank30.asm sub $8068
// $8068 draw_ship_icon_30
// (body @ $806D)

word draw_ship_icon_30(word arg1, word arg2, word arg3, word arg4, word arg5) {
    syscall_id09_syscall_banked_blit_m3(arg1, arg2, 7, 4, *(word*)((((arg3 << 1) << 1) + 0x8CB0)), *(word*)((((arg3 << 1) << 1) + 0x8CB2)), 224);    // $8087
    local11 = ((unsigned)arg3 >> 1);    // $808E
    if (((arg4 == 255))) return syscall_id09_syscall_banked_blit_m3((arg1 + 2), arg2, 5, 3, *(word*)((((local11 << 1) << 1) + 0x8CC8)), *(word*)((((local11 << 1) << 1) + 0x8CCA)), 224);    // $8094
    if ((local11 == 1)) {    // $80BB
    } else {
    if (local11) goto L_8108;    // $80E2
    goto L_812A;    // $8105
L_8108:
    }
L_812A:
    return syscall_id09_syscall_banked_blit_m3((arg1 + 2), arg2, 5, 3, *(word*)((((((arg5 - 1) << 1) << 1) + (arg4 << 3)) + 0x8CFC)), *(word*)((((((arg5 - 1) << 1) << 1) + (arg4 << 3)) + 0x8CFE)), 224);    // $8138
    }
}

// Decompiled from source/2-asm-vm\bank30.asm sub $8139
// $8139 draw_ship_icon_class
// (body @ $813E)

word draw_ship_icon_class(word arg1, word arg2, word arg3) {
    return draw_ship_icon_30(arg1, arg2, (((unsigned)record_field_byte((record_base_6b1c(arg3) + 20)) >> 5) & 7), (((unsigned)record_field_byte((record_base_6b1c(arg3) + 20)) >> 4) & 1), (((unsigned)record_field_byte((record_base_6b1c(arg3) + 20)) >> 2) & 3));    // $8177
}

// Decompiled from source/2-asm-vm\bank30.asm sub $8178
// $8178 get_ship_6aba
// (body @ $817D)

word get_ship_6aba(word arg1) {
    return *(byte*)(((arg1 * 24) + 0x6ABA));    // $8186
}

// Decompiled from source/2-asm-vm\bank30.asm sub $8187
// $8187 opt_passthru_8187
// (body @ $818C)

word opt_passthru_8187(word arg1, word arg2, word arg3) {
    if (!(arg3)) return arg3;    // $818D
    arg3 = (arg3 - 1);    // $8193
    return syscall_id09_syscall_banked_blit_m3(arg1, arg2, 3, 3, *(word*)((((arg3 << 1) << 1) + 0x8D0C)), *(word*)((((arg3 << 1) << 1) + 0x8D0E)), 225);    // $81B2
}

// Decompiled from source/2-asm-vm\bank30.asm sub $81B3
// $81B3 opt_ship_line
// (body @ $81B8)

word opt_ship_line(word arg1, word arg2, word arg3) {
    local9 = ((arg3 * 24) + 0x6AA4);    // $81C0
    local10 = ((arg3 * 7) + 0x6C90);    // $81C8
    local11 = record_base_6b1c((*(byte*)((local10 + 6)) & 15));    // $81D3
    reset_chr_alloc();    // $81D4
    syscall_id12_syscall_set_chr_banks(0, 64);    // $81DB
    syscall_id09_syscall_banked_blit_m3(arg1, arg2, 30, 20, 0xB1AA, 0xB402, 232);    // $81EF
    draw_ship_icon_class((arg1 + 2), (arg2 + 1), (*(byte*)((local10 + 6)) & 15));    // $81FF
    opt_passthru_8187((arg1 + 10), (arg2 + 2), *(byte*)(((arg3 * 24) + 0x6ABB)));    // $8213
    set_tile_cursor((arg1 + 14), (arg2 + 2));    // $821D
    draw_string(0x8D28, 0);    // $8225
    draw_string_banked(local11);    // $822A
    set_tile_cursor((arg1 + 14), (arg2 + 4));    // $8234
    draw_field(0x8D2F, get_ship_6aba(arg3));    // $8241
    set_tile_cursor((arg1 + 2), (arg2 + 6));    // $824B
    draw_string(0x8D3E, 0);    // $8253
    draw_string_banked(*(word*)(((*(byte*)(((arg3 * 24) + 0x6AA4)) * 7) + 0x6542)));    // $8268
    set_draw_origin((arg1 + 2), (arg2 + 8));    // $8272
    draw_field(0x8D4A, *(byte*)(((arg3 * 7) + 0x6C90)), record_proc_6c96_1(arg3));    // $8288
    set_draw_origin((arg1 + 2), (arg2 + 9));    // $8292
    draw_field(0x8D65, *(byte*)(((arg3 * 7) + 0x6C92)), record_proc_6c96_3(arg3));    // $82A8
    set_draw_origin((arg1 + 2), (arg2 + 10));    // $82B2
    draw_field(0x8D80, *(byte*)(((arg3 * 7) + 0x6C91)), record_proc_6c96_2(arg3));    // $82C8
    set_draw_origin((arg1 + 2), (arg2 + 11));    // $82D2
    draw_field(0x8D9B, record_base_6aa4_b(arg3), record_field_word((record_base_6b1c((*(byte*)(((arg3 * 7) + 0x6C96)) & 15)) + 18)));    // $82F6
    set_draw_origin((arg1 + 2), (arg2 + 12));    // $8300
    draw_field(0x8DB6, *(word*)(((arg3 * 7) + 0x6C94)), *(word*)((record_base_6b1c((*(byte*)(((arg3 * 7) + 0x6C96)) & 15)) + 15)));    // $8322
    set_draw_origin((arg1 + 2), (arg2 + 13));    // $832C
    draw_string(0x8DD1, 0);    // $8334
    draw_string_banked(record_field_word((((((unsigned)*(byte*)((local10 + 6)) >> 4) & 3) << 1) + 0xBC33)));    // $834A
    draw_string(0x8DD8, 0);    // $8352
    set_draw_origin((arg1 + 21), (arg2 + 13));    // $835D
    draw_field(0x8DDB, *(byte*)((local10 + 3)), record_field_byte((local11 + 17)));    // $8371
    set_draw_origin((arg1 + 2), (arg2 + 15));    // $837B
    draw_field(0x8DE3, record_read_6c90(arg3), record_proc_6c96_4(arg3));    // $838E
    set_draw_origin((arg1 + 13), (arg2 + 18));    // $8399
    draw_field(0x8DFC, (*(word*)((local9 + 16)) / 10), (*(word*)((local9 + 18)) / 10), *(word*)((local9 + 20)));    // $83B3
    draw_icon_2x2((arg1 + 11), (arg2 + 17), 0);    // $83BF
    draw_icon_2x2((arg1 + 17), (arg2 + 17), 1);    // $83CC
    draw_icon_2x2((arg1 + 23), (arg2 + 17), 2);    // $83D9
    return wait_input();    // $83E0
}

// Decompiled from source/2-asm-vm\bank30.asm sub $83E1
// $83E1 opt_passthru_83e1
// (body @ $83E6)

word opt_passthru_83e1(word arg1, word arg2, word arg3) {
    if (!(arg3)) return arg3;    // $83E7
    phi_val_8406 = 0;    // $83EC
    while (((unsigned)local11 < (unsigned)arg3)) {    // $8406
        syscall_id09_syscall_banked_blit_m3(arg1, arg2, 1, 2, 0xB91E, 0xB920, 225);    // $83FD
        arg1 = (arg1 + 1);    // $8403
        phi_val_8406 = (local11 + 1);    // $8405
        local11 = phi_val_8406;    // $8406
    }
    return ((unsigned)local11 < (unsigned)arg3);    // $840D
}

// Decompiled from source/2-asm-vm\bank30.asm sub $840E
// $840E opt_guard_840e
// (body @ $8413)

word opt_guard_840e(word arg1) {
    if (!(arg1)) return 0;    // $8414
    local11 = 0x6C90;    // $841C
    local10 = (0x6C90 + 35);    // $841F
    local9 = 0x6AA4;    // $8423
    local8 = 0;    // $8425
    while (((unsigned)local11 < (unsigned)local10)) {    // $8442
        if (!((*(byte*)((local11 + 6)) & 64))) goto L_843B;    // $842F
        if ((!((*(byte*)(local9) != arg1)))) return 1;    // $8436
        local9 = (local9 + 24);    // $843E
        local11 = (local11 + 7);    // $8441
    }
    return 2;    // $8449
}

// Decompiled from source/2-asm-vm\bank30.asm sub $844A
// $844A opt_draw_name
// (body @ $844F)

word opt_draw_name(word arg1, word arg2, word arg3) {
    local11 = ((arg3 * 7) + 0x6542);    // $8456
    local10 = ((arg3 * 10) + 0x6BBE);    // $845E
    reset_chr_alloc();    // $845F
    syscall_id12_syscall_set_chr_banks(0, 64);    // $8466
    syscall_id09_syscall_banked_blit_m3(arg1, arg2, 30, 20, 0xB1AA, 0xB402, 232);    // $847A
    syscall_id08_syscall_queue_ppu_transfer((arg1 + 1), (arg2 + 9), 28, 1, 249, 0);    // $848C
    syscall_id08_syscall_queue_ppu_transfer((arg1 + 1), (arg2 + 14), 28, 1, 249, 0);    // $849E
    resolve_field_ptr((arg1 + 2), (arg2 + 1), arg3, 0);    // $84AA
    set_draw_origin((arg1 + 8), (arg2 + 4));    // $84B4
    if (arg3) goto L_84EA;    // $84B9
    local9 = mem_6F74;    // $84BF
    if (local9) {    // $84C1
    opt_passthru_83e1((arg1 + 8), (arg2 + 1), local9);    // $84CB
    draw_string_banked(record_field_word(((local9 << 1) + 0xBC56)));    // $84DB
    draw_string(0x8E2B, 0);    // $84E3
    goto L_8507;    // $84E7
L_84EA:
    draw_field(0x8E2D, *(word*)(((opt_guard_840e(arg3) << 1) + 0x8E0C)));    // $84F9
    }
L_8507:
    set_draw_origin((arg1 + 8), (arg2 + 2));    // $8503
    draw_string_banked(*(word*)(local11));    // $850A
    set_draw_origin((arg1 + 8), (arg2 + 6));    // $8514
    draw_string(0x8E30, 0);    // $851C
    draw_string_banked(record_base_6b1c(record_scan_6c90_6aa4(arg3)));    // $852B
    set_draw_origin((arg1 + 22), (arg2 + 6));    // $8536
    draw_field(0x8E37, *(byte*)(local10));    // $8540
    if (arg3) goto L_8562;    // $8545
    set_draw_origin((arg1 + 1), (arg2 + 8));    // $854E
    draw_field(0x8E40, mem_6F72, mem_666B);    // $855B
    goto L_857C;    // $855F
L_8562:
    set_draw_origin((arg1 + 8), (arg2 + 8));    // $8568
L_857C:
    draw_field(0x8E58, *(byte*)((((arg3 - 1) << 1) + 0x6A6E)));    // $8578
    set_draw_origin((arg1 + 1), (arg2 + 11));    // $8582
    draw_field(0x8E65, *(word*)((local10 + 6)), *(byte*)((local11 + 2)));    // $8591
    set_draw_origin((arg1 + 1), (arg2 + 13));    // $859B
    draw_field(0x8E80, *(word*)((local10 + 8)), *(byte*)((local11 + 3)));    // $85AA
    set_draw_origin((arg1 + 1), (arg2 + 16));    // $85B5
    draw_field(0x8E9B, *(byte*)((local10 + 1)), *(byte*)((local10 + 2)));    // $85C4
    set_draw_origin((arg1 + 1), (arg2 + 17));    // $85CF
    draw_field(0x8EB8, *(byte*)((local10 + 5)), *(byte*)((local10 + 4)));    // $85DE
    set_draw_origin((arg1 + 1), (arg2 + 18));    // $85E9
    draw_field(0x8ED5, *(byte*)((local10 + 3)));    // $85F4
    wait_input();    // $85F8
    return reset_chr_alloc();    // $85FE
}

// Decompiled from source/2-asm-vm\bank30.asm sub $85FF
// $85FF opt_sprite
// (body @ $8604)

word opt_sprite(word arg1) {
    upload_sprite_block();    // $8604
    ui_shared_var_737d = 0;    // $8608
    syscall_id18_syscall_set_scroll(0, 0);    // $860F
    reset_all_chr();    // $8613
    syscall_id09_syscall_banked_blit_m3(*(byte*)(((arg1 << 1) + 0x8F6A)), (*(byte*)(((arg1 << 1) + 0x8F6B)) - 1), *(byte*)(((arg1 << 1) + 0x8F5E)), *(byte*)(((arg1 << 1) + 0x8F5F)), *(word*)((((arg1 << 1) << 1) + 0x8EE6)), *(word*)((((arg1 << 1) << 1) + 0x8EE8)), 225);    // $864D
    syscall_id09_syscall_banked_blit_m3(4, 14, 24, 11, 0xB82A, 0xB932, 231);    // $8660
    draw_string(0x8F76, 1);    // $8668
    set_draw_origin(6, 15);    // $866E
    return syscall_id06_syscall_set_sprite_block(((arg1 << 4) + 0x8EFE), 0, 16);    // $8682
}

// Decompiled from source/2-asm-vm\bank30.asm sub $8683
// $8683 opt_loop_8683
// (body @ $8688)

word opt_loop_8683(void) {
    local8 = 0;    // $8689
    do {    // $868A
        local9 = ((local8 * 24) + 0x6AA4);    // $8692
        if (!(*(byte*)(local9))) break;    // $8695
        local8 = (local8 + 1);    // $869A
    } while (((unsigned)local8 < (unsigned)5));    // $869E
L_86A1:
    local10 = record_base_6b1c(local8);    // $86A6
    local8 = ((unsigned)*(byte*)((local10 + 20)) >> 5);    // $86AD
    local11 = 0xF386;    // $86B1
    if (((unsigned)local8 > (unsigned)2)) {    // $86B5
    local11 = 0xF3D6;    // $86BB
    }
L_86BC:
    return syscall_id13_syscall_set_chr_bank_alt(local11, 1, 20);    // $86C5
}

// Decompiled from source/2-asm-vm\bank30.asm sub $86C6
// $86C6 opt_calc_div5
// (body @ $86CB)

word opt_calc_div5(word arg1) {
    local8 = ((unsigned)arg1 / (unsigned)5);    // $86CE
    if (((unsigned)arg1 / (unsigned)5)) {    // $86CF
    local10 = 240;    // $86D5
    } else {
    local8 = *(byte*)(((arg1 * 24) + 0x6AA4));    // $86E5
    local11 = ((local8 * 10) + 0x6BBE);    // $86ED
    local10 = (((*(byte*)((local11 + 2)) << 1) + *(byte*)((local11 + 1))) + *(byte*)((local11 + 3)));    // $86FE
    }
L_8700:
    local9 = *(byte*)(((local8 * 7) + 0x6545));    // $8707
    return ((((local10 * local9) / 8) + local10) / 8);    // $8711
    }
}

// Decompiled from source/2-asm-vm\bank30.asm sub $8712
// $8712 opt_scan_a
// (body @ $8717)

word opt_scan_a(word arg1) {
    arg1 = (arg1 * 5);    // $871B
    local8 = ((arg1 * 7) + 0x6C90);    // $8723
    local7 = (((arg1 * 7) + 0x6C90) + 35);    // $8726
    local11 = 200;    // $872A
    local10 = 0;    // $872C
    while (((unsigned)local8 < (unsigned)local7)) {    // $876A
        if ((*(byte*)((local8 + 6)) & 64)) {    // $8736
        local10 = (local10 + 1);    // $873B
        local9 = max_s16(((((*(byte*)((local8 + 1)) / 2) * opt_calc_div5(arg1)) / 100) + (*(byte*)((local8 + 1)) / 2)), 100);    // $875B
        if (((unsigned)local11 > (unsigned)local9)) {    // $875F
        local11 = local9;    // $8763
        }
        }
L_8764:
        arg1 = (arg1 + 1);    // $8766
        local8 = (local8 + 7);    // $8769
    }
    if (!(local10)) return 0;    // $8771
    return local11;    // $8777
}

// Decompiled from source/2-asm-vm\bank30.asm sub $8778
// $8778 opt_scan_b
// (body @ $877D)

word opt_scan_b(word arg1) {
    arg1 = (arg1 * 5);    // $8781
    local7 = ((arg1 * 7) + 0x6C90);    // $8789
    local6 = (((arg1 * 7) + 0x6C90) + 35);    // $878C
    local11 = 200;    // $8790
    local10 = 0;    // $8792
    while (((unsigned)local7 < (unsigned)local6)) {    // $87D0
        if ((*(byte*)((local7 + 6)) & 64)) {    // $879C
        local10 = (local10 + 1);    // $87A1
        local8 = max_s16(((((*(byte*)((local7 + 2)) / 2) * opt_calc_div5(arg1)) / 100) + (*(byte*)((local7 + 2)) / 2)), 100);    // $87C1
        if (((unsigned)local11 > (unsigned)local8)) {    // $87C5
        local11 = local8;    // $87C9
        }
        }
L_87CA:
        arg1 = (arg1 + 1);    // $87CC
        local7 = (local7 + 7);    // $87CF
    }
    if (!(local10)) return 0;    // $87D7
    return local11;    // $87DD
}

// Decompiled from source/2-asm-vm\bank30.asm sub $87DE
// $87DE opt_get_entity
// (body @ $87E3)

word opt_get_entity(word arg1) {
    local11 = ((arg1 << 4) + 0x6662);    // $87EA
    return ((((mem_7081 * 0x0190) - (((((unsigned)(calc_axis_diff_fold(mem_7080, *(byte*)((local11 + 8))) + 1) >> 1) << 1) * opt_scan_a(arg1)) * mem_7081)) / 0x01C2) * (*(byte*)((local11 + 15)) & 1));    // $881F
}

// Decompiled from source/2-asm-vm\bank30.asm sub $8820
// $8820 opt_get_entity_b
// (body @ $8825)

word opt_get_entity_b(word arg1) {
    local11 = ((arg1 << 4) + 0x6662);    // $882C
    local9 = calc_axis_diff_fold(mem_7080, *(byte*)((local11 + 8)));    // $8839
    local10 = (((opt_scan_b(arg1) * mem_7081) / 26) * (*(byte*)(((arg1 << 4) + 0x6671)) & 1));    // $8855
    local8 = (((local9 > 2) ? ((3 - local9) ^ 1) : local9) + 1);    // $8866
    local10 = (local10 + ((opt_get_entity(arg1) / local8) * cmp_lt_neg1((-(local9 + -2)))));    // $887D
    local9 = calc_axis_diff_fold((((unsigned)mem_7084 >> 6) & 7), *(byte*)((local11 + 8)));    // $888E
    local8 = (((local9 > 2) ? ((3 - local9) ^ 1) : local9) + 1);    // $889F
    local10 = (local10 + ((((((unsigned)mem_7084 >> 3) & 3) * (*(byte*)(((arg1 << 4) + 0x6671)) & 1)) / local8) * cmp_lt_neg1((-(local9 + -2)))));    // $88C5
    local10 = ((local10 < 0) ? 0 : local10);    // $88D1
    return local10;    // $88D3
}

// Decompiled from source/2-asm-vm\bank30.asm sub $88D4
// $88D4 draw_coord_field
// (body @ $88D9)

word draw_coord_field(word arg1, word arg2, word arg3) {
    return draw_field_m1(0x8FDA, *(word*)(((arg2 << 1) + 0x8F92)), (arg3 + 1), (arg1 + 1500));    // $88F0
}

// Decompiled from source/2-asm-vm\bank30.asm sub $88F1
// $88F1 opt_audio_off
// (body @ $88F6)

word opt_audio_off(void) {
    audio_param_gated(0);    // $88F7
    do {    // $88FB
    } while (audio_playing_gated());    // $88FE
    upload_sprite_block();    // $8901
    reset_all_chr();    // $8904
    syscall_id17_syscall_busy_wait(60);    // $890B
    syscall_id09_syscall_banked_blit_m3(11, 7, 10, 6, 0xA074, 0xA0B0, 226);    // $891D
    syscall_id09_syscall_banked_blit_m3(7, 15, 18, 3, 0xA83C, 0xA872, 226);    // $8930
L_893F:
    syscall_id06_syscall_set_sprite_block(0x8F82, 0, 16);    // $893B
    goto L_893F;    // $893F
}

// Decompiled from source/2-asm-vm\bank30.asm sub $8942
// $8942 draw_last_save
// (body @ $8947)

word draw_last_save(void) {
    syscall_id03_syscall_set_prg_bank(0, 1);    // $894A
    if ((mem_7060 == 75)) {    // $8954
    local11 = game_year_off;    // $895A
    local10 = game_month;    // $895E
    local9 = game_day;    // $8962
    syscall_id03_syscall_set_prg_bank(0, 5);    // $8966
    draw_string(0x8FE6, 1);    // $896E
    draw_coord_field(local11, local10, local9);    // $8975
    } else {
    }
L_8983:
    syscall_id03_syscall_set_prg_bank(0, 5);    // $897F
    draw_string(0x8FF8, 1);    // $8987
    if (prompt_confirm()) {    // $898E
    mem_7060 = 75;    // $8993
    copy_from_bank(1, 1, 0x6000, 0x8000, 0x1061);    // $89A1
    mem_7060 = 0;    // $89A6
    if (mem_7068) goto L_89B5;    // $89AC
    show_message();    // $89AF
    goto L_89B8;    // $89B2
L_89B5:
L_89B8:
    draw_window();    // $89B5
    }
L_89C0:
    draw_string(0x9002, 1);    // $89BC
    if (mem_7068) goto L_89CC;    // $89C3
    show_message();    // $89C6
    goto L_89CF;    // $89C9
L_89CC:
L_89CF:
    draw_window();    // $89CC
    draw_string(0x9012, 1);    // $89D3
    if (prompt_confirm()) {    // $89DA
    draw_string(0x901C, 1);    // $89E1
    if (prompt_confirm()) {    // $89E8
    audio_reset_gated();    // $89EB
    }
    }
L_89F1:
    opt_audio_off();    // $89EE
    return 0;    // $89F2
    }
}

// Decompiled from source/2-asm-vm\bank30.asm sub $89F3
// $89F3 opt_message_speed
// (body @ $89F8)

word opt_message_speed(void) {
    draw_field_m1(0x902A, mem_6B88);    // $89FF
    local11 = draw_labeled_value(0x9049, 1, 10, 1);    // $8A0D
    if ((local11 != 1)) {    // $8A12
    mem_6B88 = local11;    // $8A16
    }
L_8A19:
    return 0;    // $8A1A
}

// Decompiled from source/2-asm-vm\bank30.asm sub $8A1B
// $8A1B opt_toggle_8a1b
// (body @ $8A20)

word opt_toggle_8a1b(void) {
    if (mem_7068) goto L_8A32;    // $8A23
    phi_8a52_0 = lookup_region_music(current_region);    // $8A2F
    goto L_8A52;    // $8A2F
L_8A32:
    local11 = mem_6663;    // $8A35
    if (current_port) goto L_8A40;    // $8A39
    phi_8a52_0 = 6;    // $8A3D
    goto L_8A52;    // $8A3D
L_8A40:
    if (((unsigned)local11 > (unsigned)11)) {    // $8A43
    if (!(((unsigned)local11 < (unsigned)31))) goto L_8A51;    // $8A4A
    phi_8a52_0 = 8;    // $8A4E
    } else {
    phi_8a52_0 = 7;    // $8A51
    }
L_8A52:
    idx_over_20(phi_8a52_0);    // $8A52
    return audio_param_gated(1);    // $8A5B
    }
}

// Decompiled from source/2-asm-vm\bank30.asm sub $8A5C
// $8A5C opt_music_toggle
// (body @ $8A61)

word opt_music_toggle(void) {
    local11 = (os_mode_flags & 4);    // $8A66
    draw_field_m1(0x904A, (local11 ? 0x905D : 0x9060));    // $8A78
    draw_string((local11 ? 0x9064 : 0x9068), 1);    // $8A8B
    local10 = prompt_confirm();    // $8A92
    if (local10) {    // $8A94
    if (local11) goto L_8AB3;    // $8A98
    os_mode_flags = (os_mode_flags | 4);    // $8AA1
    os_mode_flags = (os_mode_flags | 8);    // $8AAA
    opt_toggle_8a1b();    // $8AAD
    goto L_8ACC;    // $8AB0
L_8AB3:
    audio_reset_gated();    // $8AB3
    os_mode_flags = (os_mode_flags & 251);    // $8ABE
    os_mode_flags = (os_mode_flags & 247);    // $8AC9
    }
L_8ACC:
    return 0;    // $8ACD
}

// Decompiled from source/2-asm-vm\bank30.asm sub $8ACE
// $8ACE opt_pick
// (body @ $8AD3)

word opt_pick(void) {
    local7 = 11;    // $8AD4
    if (mem_7068) goto L_8AEC;    // $8AD8
    goto L_8AEE;    // $8AE9
L_8AEC:
L_8AEE:
    local8 = (((unsigned)party_map_x < (unsigned)7) ? 22 : 18);    // $8AEE
    blit_block_save(local8, local7, 8, 8);    // $8AF3
    syscall_id09_syscall_banked_blit_m3(local8, local7, 8, 8, 0xB12A, 0xB16A, 232);    // $8B05
    local10 = (local8 + 2);    // $8B0B
    local9 = (local7 + 1);    // $8B0E
    local11 = 0;    // $8B10
    do {    // $8B11
        set_tile_cursor(local10, local9);    // $8B13
        draw_string(*(word*)(((local11 << 1) + 0x906B)), 1);    // $8B20
        local9 = (local9 + 2);    // $8B28
        local11 = (local11 + 1);    // $8B2B
    } while (((unsigned)local11 < (unsigned)3));    // $8B2F
    local6 = 0;    // $8B33
    if (mem_7068) goto L_8B40;    // $8B37
    show_prompt_record();    // $8B3A
    goto L_8B43;    // $8B3D
L_8B40:
L_8B43:
    draw_box_from_native();    // $8B40
    draw_string(0x9088, 1);    // $8B47
    local11 = menu_pick(0x909E, 3, (local8 + 1), (local7 + 2), 0, 2, 3, 1);    // $8B5D
    if ((local11 == 1)) {    // $8B62
    local6 = 1;    // $8B66
    } else {
    if (mem_7068) goto L_8B76;    // $8B6D
    show_message();    // $8B70
    goto L_8B79;    // $8B73
L_8B76:
L_8B79:
    draw_window();    // $8B76
    local6 = (*(*(word*)((((local11 - 1) << 1) + 0x9071))))();    // $8B82
    if (mem_7068) goto L_8B8F;    // $8B86
    show_message();    // $8B89
    goto L_8B92;    // $8B8C
L_8B8F:
    }
L_8B92:
    draw_window();    // $8B8F
    if (!(local6)) goto L_8B43;    // $8B93
    blit_block_unwind();    // $8B96
    return 0;    // $8B9A
    }
}
