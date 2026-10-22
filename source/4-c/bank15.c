// Decompiled from source/2-asm-vm\bank15.asm sub $8003
// $8003 land_row_origin
// (body @ $8008)

word land_row_origin(void) {
    return ((ui_shared_var_737d == 1) ? 11 : 5);    // $8015
}

// Decompiled from source/2-asm-vm\bank15.asm sub $8016
// $8016 land_check_ships
// (body @ $801B)

word land_check_ships(void) {
    *(word*)(fp - 13) = scan_records_6c90_flag(0, (fp - 5));    // $8024
    if (((unsigned)*(word*)(fp - 13) < (unsigned)2)) {    // $802A
    show_prompt_record();    // $802D
    draw_text(0x8D98);    // $8033
    return 0;    // $8038
    }
L_8039:
    *(word*)(fp - 11) = land_row_origin();    // $803C
    blit_block_save(7, *(word*)(fp - 11), 18, 14);    // $8044
    *(word*)(fp - 9) = party_in_rect(7, *(word*)(fp - 11), 18, 14);    // $8052
    *(word*)(fp - 7) = cargo_pick_ship(0, 9, (*(word*)(fp - 11) + 1));    // $8065
    blit_block_unwind();    // $8067
    if (*(word*)(fp - 9)) {    // $806C
    }
L_807F:
    place_object_sprite(party_map_x, party_map_y, mem_666A);    // $807B
    return *(word*)(fp - 7);    // $8081
}

// Decompiled from source/2-asm-vm\bank15.asm sub $8082
// $8082 land_load_data
// (body @ $8087)

word land_load_data(void) {
    copy_from_bank_dc80((fp - 58), 29, 0);    // $808E
    cargo_sprites((fp - 58));    // $809D
    upload_sprite_block();    // $80A1
    redraw_screen_if_changed();    // $80A4
    upload_cursor_sprites(((unsigned)mem_6B8C / (unsigned)5));    // $80AD
    return 1;    // $80B2
}

// Decompiled from source/2-asm-vm\bank15.asm sub $80B3
// $80B3 land_loop_80b3
// (body @ $80B8)

word land_loop_80b3(void) {
    local10 = 0;    // $80B9
    do {    // $80BA
        local11 = draw_text_menu(6, 2, 0x8DAF, 2, 1);    // $80C5
        if ((local11 != 255)) {    // $80CB
        local10 = (*(*(word*)(((local11 << 1) + 0x8DB3))))();    // $80D6
        }
L_80D7:
        if ((local10 == 1)) break;    // $80DA
    } while ((local11 != 255));    // $80E2
L_80E5:
    return local10;    // $80E6
}

// Decompiled from source/2-asm-vm\bank15.asm sub $80E7
// $80E7 land_scan_records
// (body @ $80EC)

word land_scan_records(void) {
    *(word*)(fp - 11) = 0;    // $80ED
    *(word*)(fp - 7) = scan_records_6c90_flag(0, (fp - 5));    // $80F8
    while (((unsigned)*(word*)(fp - 9) < (unsigned)*(word*)(fp - 7))) {    // $8119
        if ((*(word*)(((*(byte*)((*(word*)(fp - 9) + (fp - 5))) * 7) + 0x6C94)) < 5)) {    // $8110
        *(word*)(fp - 11) = 1;    // $8114
        }
L_8116:
        *(word*)(fp - 9) = (*(word*)(fp - 9) + 1);    // $8119
    }
    return *(word*)(fp - 11);    // $8125
}

// Decompiled from source/2-asm-vm\bank15.asm sub $8126
// $8126 fleet_order_sail
// (body @ $812B)

word fleet_order_sail(void) {
    show_prompt_record();    // $812B
    local11 = 0x6662;    // $8131
    if (land_scan_records()) {    // $8135
    }
L_8140:
    draw_string(0x8DC2, 1);    // $813C
    draw_string(0x8DDD, 1);    // $8144
    if (prompt_confirm()) {    // $814B
    show_prompt_bc27(0, 0);    // $8150
    draw_text(0x8DE2);    // $8157
    *(byte*)((local11 + 15)) = (*(byte*)((local11 + 15)) & 207);    // $8164
    *(byte*)((local11 + 15)) = (*(byte*)((local11 + 15)) | 1);    // $816C
    return 1;    // $816E
    }
L_816F:
    return 0;    // $8170
}

// Decompiled from source/2-asm-vm\bank15.asm sub $8171
// $8171 fleet_order_wait
// (body @ $8176)

word fleet_order_wait(void) {
    show_prompt_record();    // $8176
    local11 = 0x6662;    // $817C
    draw_string(0x8DF5, 1);    // $8181
    if (prompt_confirm()) {    // $8188
    *(byte*)((local11 + 15)) = (*(byte*)((local11 + 15)) | 64);    // $8193
    return 1;    // $8195
    }
L_8196:
    return 0;    // $8197
}

// Decompiled from source/2-asm-vm\bank15.asm sub $8198
// $8198 land_redraw
// (body @ $819D)

word land_redraw(void) {
    blit_screen_buffer();    // $819D
    refresh_hud();    // $81A0
    do {    // $81A3
        local11 = draw_text_menu(6, 2, 0x8E19, 5, 3);    // $81AE
        if ((local11 == 255)) break;    // $81B4
    } while (!((*(*(word*)(((local11 << 1) + 0x8E23))))()));    // $81BF
L_81C2:
    redraw_dialog_region();    // $81C2
    phi_ret_8201 = (sprite_mode_flags & 32);    // $81CB
    if (phi_ret_8201) goto L_8201;    // $81CB
    ui_shared_var_737d = (((unsigned)party_map_y < (unsigned)7) ? 2 : 1);    // $81DB
    syscall_id18_syscall_set_scroll(0, ((ui_shared_var_737d == 1) ? 7 : 231));    // $81F1
    syscall_id17_syscall_busy_wait(1);    // $81F8
    phi_ret_8201 = move_entity_ai(0);    // $81FD
L_8201:
    return phi_ret_8201;    // $8201
}

// Decompiled from source/2-asm-vm\bank15.asm sub $8202
// $8202 check_repair_hull
// (body @ $8207)

word check_repair_hull(word arg1) {
    local11 = 0;    // $8208
    if ((*(byte*)(((arg1 * 7) + 0x6C90)) < record_proc_6c96_1(arg1))) {    // $8219
    local11 = 1;    // $821D
    }
L_821E:
    if ((*(byte*)(((arg1 * 7) + 0x6C91)) < record_proc_6c96_2(arg1))) {    // $822E
    local11 = 1;    // $8232
    }
L_8233:
    if ((*(byte*)(((arg1 * 7) + 0x6C92)) < record_proc_6c96_3(arg1))) {    // $8243
    local11 = 1;    // $8247
    }
L_8248:
    return local11;    // $8249
}

// Decompiled from source/2-asm-vm\bank15.asm sub $824A
// $824A repair_hull
// (body @ $824F)

word repair_hull(word arg1, word arg2) {
    *(byte*)(((arg1 * 7) + 0x6C90)) = (*(byte*)(((arg1 * 7) + 0x6C90)) + (arg2 * 5));    // $825E
    phi_ret_8280 = ((unsigned)*(byte*)(((arg1 * 7) + 0x6C90)) > (unsigned)record_proc_6c96_1(arg1));    // $826F
    if (phi_ret_8280) {    // $826F
    *(byte*)(((arg1 * 7) + 0x6C90)) = record_proc_6c96_1(arg1);    // $827F
    phi_ret_8280 = record_proc_6c96_1(arg1);    // $827F
    }
L_8280:
    return phi_ret_8280;    // $8280
}

// Decompiled from source/2-asm-vm\bank15.asm sub $8281
// $8281 repair_mast
// (body @ $8286)

word repair_mast(word arg1, word arg2) {
    *(byte*)(((arg1 * 7) + 0x6C91)) = (*(byte*)(((arg1 * 7) + 0x6C91)) + (arg2 * 5));    // $8295
    phi_ret_82b7 = ((unsigned)*(byte*)(((arg1 * 7) + 0x6C91)) > (unsigned)record_proc_6c96_2(arg1));    // $82A6
    if (phi_ret_82b7) {    // $82A6
    *(byte*)(((arg1 * 7) + 0x6C91)) = record_proc_6c96_2(arg1);    // $82B6
    phi_ret_82b7 = record_proc_6c96_2(arg1);    // $82B6
    }
L_82B7:
    return phi_ret_82b7;    // $82B7
}

// Decompiled from source/2-asm-vm\bank15.asm sub $82B8
// $82B8 repair_rudder
// (body @ $82BD)

word repair_rudder(word arg1, word arg2) {
    *(byte*)(((arg1 * 7) + 0x6C92)) = (*(byte*)(((arg1 * 7) + 0x6C92)) + (arg2 * 5));    // $82CC
    phi_ret_82ee = ((unsigned)*(byte*)(((arg1 * 7) + 0x6C92)) > (unsigned)record_proc_6c96_3(arg1));    // $82DD
    if (phi_ret_82ee) {    // $82DD
    *(byte*)(((arg1 * 7) + 0x6C92)) = record_proc_6c96_3(arg1);    // $82ED
    phi_ret_82ee = record_proc_6c96_3(arg1);    // $82ED
    }
L_82EE:
    return phi_ret_82ee;    // $82EE
}

// Decompiled from source/2-asm-vm\bank15.asm sub $82EF
// $82EF repair_apply_loop
// (body @ $82F4)

word repair_apply_loop(word arg1, word arg2, word arg3) {
    phi_val_832b = 0;    // $82F5
    goto L_832B;    // $82F5
L_82F8:
    local10 = ((*(byte*)((arg2 + local11)) * 24) + 0x6AA4);    // $8303
    if ((*(word*)((local10 + 20)) < arg3)) {    // $830A
    arg3 = (arg3 - *(word*)((local10 + 20)));    // $8314
    *(word*)((local10 + 20)) = 0;    // $831A
    } else {
    *(word*)((local10 + 20)) = (*(word*)((local10 + 20)) - arg3);    // $8326
    arg3 = 0;    // $8328
    }
L_8329:
    phi_val_832b = (local11 + 1);    // $832A
L_832B:
    local11 = phi_val_832b;    // $832B
    if (!(((unsigned)local11 < (unsigned)arg1))) goto L_8336;    // $832F
    if (arg3) goto L_82F8;    // $8333
L_8336:
    return arg3;    // $8336
    }
}

// Decompiled from source/2-asm-vm\bank15.asm sub $8337
// $8337 get_hull
// (body @ $833C)

word get_hull(word arg1) {
    return *(byte*)(((arg1 * 7) + 0x6C90));    // $8344
}

// Decompiled from source/2-asm-vm\bank15.asm sub $8345
// $8345 get_mast
// (body @ $834A)

word get_mast(word arg1) {
    return *(byte*)(((arg1 * 7) + 0x6C91));    // $8352
}

// Decompiled from source/2-asm-vm\bank15.asm sub $8353
// $8353 get_rudder
// (body @ $8358)

word get_rudder(word arg1) {
    return *(byte*)(((arg1 * 7) + 0x6C92));    // $8360
}

// Decompiled from source/2-asm-vm\bank15.asm sub $8361
// $8361 get_hull_max
// (body @ $8366)

word get_hull_max(word arg1) {
    return record_proc_6c96_1(arg1);    // $836B
}

// Decompiled from source/2-asm-vm\bank15.asm sub $836C
// $836C get_mast_max
// (body @ $8371)

word get_mast_max(word arg1) {
    return record_proc_6c96_2(arg1);    // $8376
}

// Decompiled from source/2-asm-vm\bank15.asm sub $8377
// $8377 get_rudder_max
// (body @ $837C)

word get_rudder_max(word arg1) {
    return record_proc_6c96_3(arg1);    // $8381
}

// Decompiled from source/2-asm-vm\bank15.asm sub $8382
// $8382 land_draw_repair_panel
// (body @ $8387)

word land_draw_repair_panel(word arg1, word arg2, word arg3, word arg4, word arg5, word arg6) {
    *(byte*)(fp - 15) = 225;    // $838A
    *(byte*)&local5 = 3;    // $838E
    local8 = (((mem_7390 - arg2) / (arg4 ? arg4 : 1)) + 1);    // $83A3
    local7 = 0;    // $83A5
    local6 = (arg1 / arg6);    // $83AA
L_83B2:
    syscall_id12_syscall_set_chr_banks(0, 2);    // $83AE
    *(byte*)&local4 = (*(word*)(((ui_shared_var_737d << 1) + 0xDF14)) + (mem_7392 << 3));    // $83C3
    *(byte*)(fp - 13) = (mem_7390 << 3);    // $83CB
    syscall_id13_syscall_set_chr_bank_alt(&local4, 0, 1);    // $83D5
    if (arg5) {    // $83DB
    phi_push_83e4 = arg5;    // $83E0
    } else {
    phi_push_83e4 = 1;    // $83E3
    }
L_83E4:
    local11 = ((((mem_7390 - arg2) / (arg4 ? arg4 : 1)) * arg6) + ((mem_7392 - arg3) / phi_push_83e4));    // $8403
    helper_ce4d(local7, 12);    // $8406
    local7 = frame_sync(0);    // $840F
    switch (frame_sync(0)) {    // $8410
        case 1: goto L_842D;    // $8410
        case 2: goto L_8442;    // $8410
        case 16: goto L_8454;    // $8410
        case 32: goto L_8474;    // $8410
        case 64: goto L_84A2;    // $8410
        case 128: goto L_84CD;    // $8410
        default: goto L_83B2;    // $8410
    }    // $8410
L_842D:
    syscall_id13_syscall_set_chr_bank_alt(&local4, 1, 1);    // $8434
    do {    // $8438
    } while (frame_sync(0));    // $843D
    return local11;    // $8441
L_8442:
    syscall_id12_syscall_set_chr_banks(0, 2);    // $8445
    do {    // $8449
    } while (frame_sync(0));    // $844E
    return -1;    // $8453
L_8454:
    if ((mem_7392 <= arg3)) goto L_8469;    // $8459
    phi_val_8463 = (mem_7392 - arg5);    // $8462
L_8463:
    mem_7392 = phi_val_8463;    // $8463
    goto L_83B2;    // $8466
L_8469:
L_8470:
    phi_val_8463 = (((arg6 - 1) * arg5) + arg3);    // $8471
    goto L_8463;    // $8471
L_8474:
    if (arg5) {    // $8476
    phi_push_847f = arg5;    // $847B
    } else {
    phi_push_847f = 1;    // $847E
    }
L_847F:
    if (!(((((mem_7392 - arg3) / phi_push_847f) + 1) < arg6))) goto L_849E;    // $848B
    if (!(((unsigned)(local11 + 1) <= (unsigned)arg1))) goto L_849E;    // $8492
    goto L_8470;    // $849B
L_849E:
    phi_val_8463 = arg3;    // $849F
    goto L_8463;    // $849F
L_84A2:
    if ((local8 <= 1)) goto L_84B7;    // $84A5
    local8 = (local8 - 1);    // $84AA
    phi_val_84b1 = (mem_7390 - arg4);    // $84B0
L_84B1:
    mem_7390 = phi_val_84b1;    // $84B1
    goto L_83B2;    // $84B4
L_84B7:
    local8 = local6;    // $84B8
    goto L_84C9;    // $84BE
L_84C1:
    local8 = (local8 + 1);    // $84C3
L_84C9:
    phi_val_84b1 = (mem_7390 + arg4);    // $84CA
    goto L_84B1;    // $84CA
L_84CD:
    if ((local8 < local6)) goto L_84C1;    // $84D0
    mem_7390 = arg2;    // $84D4
    local8 = 1;    // $84D8
    goto L_83B2;    // $84D9
    }
    }
}

// Decompiled from source/2-asm-vm\bank15.asm sub $84DD
// $84DD land_confirm
// (body @ $84E2)

word land_confirm(void) {
    syscall_id12_syscall_set_chr_banks(0, 2);    // $84E5
    show_message();    // $84E9
    draw_string(0x8E4C, 1);    // $84F0
    return prompt_confirm();    // $84F7
}

// Decompiled from source/2-asm-vm\bank15.asm sub $84F8
// $84F8 draw_hull_gauge
// (body @ $84FD)

word draw_hull_gauge(word arg1, word arg2) {
    local11 = *(byte*)(((arg2 * 7) + 0x6C90));    // $8505
    local10 = record_proc_6c96_1(arg2);    // $850B
    set_tile_cursor(9, arg1);    // $850E
    if (((unsigned)local11 < (unsigned)local10)) {    // $8515
    phi_ret_852c = draw_field_m1(0x8E57, local11, local10);    // $8521
    } else {
    phi_ret_852c = draw_string(0x8E5F, 1);    // $8528
    }
L_852C:
    return phi_ret_852c;    // $852C
    }
}

// Decompiled from source/2-asm-vm\bank15.asm sub $852D
// $852D draw_mast_gauge
// (body @ $8532)

word draw_mast_gauge(word arg1, word arg2) {
    local11 = *(byte*)(((arg2 * 7) + 0x6C91));    // $853A
    local10 = record_proc_6c96_2(arg2);    // $8540
    set_tile_cursor(16, arg1);    // $8544
    if (((unsigned)local11 < (unsigned)local10)) {    // $854B
    phi_ret_8562 = draw_field_m1(0x8E67, local11, local10);    // $8557
    } else {
    phi_ret_8562 = draw_string(0x8E6F, 1);    // $855E
    }
L_8562:
    return phi_ret_8562;    // $8562
    }
}

// Decompiled from source/2-asm-vm\bank15.asm sub $8563
// $8563 draw_rudder_gauge
// (body @ $8568)

word draw_rudder_gauge(word arg1, word arg2) {
    local11 = *(byte*)(((arg2 * 7) + 0x6C92));    // $8570
    local10 = record_proc_6c96_3(arg2);    // $8576
    set_tile_cursor(23, arg1);    // $857A
    if (((unsigned)local11 < (unsigned)local10)) {    // $8581
    phi_ret_8598 = draw_field_m1(0x8E77, local11, local10);    // $858D
    } else {
    phi_ret_8598 = draw_string(0x8E7F, 1);    // $8594
    }
L_8598:
    return phi_ret_8598;    // $8598
    }
}

// Decompiled from source/2-asm-vm\bank15.asm sub $8599
// $8599 draw_repair_row
// (body @ $859E)

word draw_repair_row(word arg1, word arg2) {
    draw_string(0x8E87, 1);    // $85A2
    draw_hull_gauge(arg1, arg2);    // $85A8
    draw_mast_gauge(arg1, arg2);    // $85AE
    return draw_rudder_gauge(arg1, arg2);    // $85B8
}

// Decompiled from source/2-asm-vm\bank15.asm sub $85B9
// $85B9 draw_lumber_field
// (body @ $85BE)

word draw_lumber_field(word arg1, word arg2) {
    set_tile_cursor(20, (arg1 + 13));    // $85C3
    return draw_field_m1(0x8E8E, arg2);    // $85CF
}

// Decompiled from source/2-asm-vm\bank15.asm sub $85D0
// $85D0 repair_draw_parts
// (body @ $85D5)

word repair_draw_parts(word arg1, word arg2) {
    draw_string(0x8E92, 0);    // $85D9
    blit_block_save(1, arg1, 30, 16);    // $85E3
    syscall_id09_syscall_banked_blit_m3(1, arg1, 30, 16, 0xB65A, 0xB83A, 232);    // $85F7
    set_draw_origin(3, arg1);    // $85FD
    draw_string(0x8E99, 0);    // $8605
    set_draw_origin(10, arg1);    // $860B
    draw_string(0x8E9E, 0);    // $8613
    set_draw_origin(17, arg1);    // $861A
    draw_string(0x8EA3, 0);    // $8622
    set_draw_origin(23, arg1);    // $8629
    draw_string(0x8EA8, 0);    // $8631
    draw_icon_2x2(18, (arg1 + 13), 2);    // $863B
    draw_lumber_field(arg1, arg2);    // $8641
    set_tile_cursor(24, (arg1 + 13));    // $864A
    return draw_string(0x8EAF, 1);    // $8656
}

// Decompiled from source/2-asm-vm\bank15.asm sub $8657
// $8657 repair_choose
// (body @ $865C)

word repair_choose(word arg1, word arg2, word arg3, word arg4) {
    mem_7390 = 9;    // $865D
    mem_7392 = (arg1 + 2);    // $8662
    local5 = (arg3 * 3);    // $8668
L_8669:
    if ((local7 == 1)) return land_confirm();    // $866D
    local4 = 1;    // $8675
    phi_val_868d = 0;    // $8677
    goto L_868D;    // $8677
L_867A:
    if (check_repair_hull(*(byte*)((arg2 + local11)))) {    // $8683
    local4 = 0;    // $8687
    } else {
    phi_val_868d = (local11 + 1);    // $868C
L_868D:
    local11 = phi_val_868d;    // $868D
    if (((unsigned)local11 < (unsigned)arg3)) goto L_867A;    // $8691
    }
L_8694:
    if (!(!(local4))) return land_confirm();    // $8695
    show_message();    // $869C
    draw_string(0x8EC8, 1);    // $86A3
    local7 = land_draw_repair_panel(local5, 9, (arg1 + 2), 7, 2, arg3);    // $86B3
    if (!(((unsigned)local7 < (unsigned)local5))) goto L_8669;    // $86B7
    local10 = *(byte*)((((unsigned)local7 % (unsigned)arg3) + arg2));    // $86C0
    local9 = ((unsigned)local7 / (unsigned)arg3);    // $86C4
    if (check_repair_hull(local10)) goto L_86DA;    // $86CA
    show_message();    // $86CD
    draw_text(0x8EDF);    // $86D3
    goto L_8669;    // $86D7
L_86DA:
    if (!(((*(*(word*)(((local9 << 1) + 0x8EC2))))(local10) > (*(*(word*)(((local9 << 1) + 0x8EBC))))(local10)))) goto L_8669;    // $86F1
    local6 = (((*(*(word*)(((local9 << 1) + 0x8EC2))))(local10) - (*(*(word*)(((local9 << 1) + 0x8EBC))))(local10)) / 5);    // $870D
    local6 = (local6 + ((((*(*(word*)(((local9 << 1) + 0x8EC2))))(local10) - (*(*(word*)(((local9 << 1) + 0x8EBC))))(local10)) % 5) ? 1 : 0));    // $8732
    if ((local6 > *(word*)(arg4))) {    // $8739
    local6 = *(word*)(arg4);    // $873E
    }
L_873F:
    show_message();    // $873F
    local8 = draw_labeled_value(0x8EFE, 0, local6);    // $874B
    if ((local8 == 1)) goto L_8669;    // $8750
    (*(*(word*)(((local9 << 1) + 0x8EB6))))(local10, local8);    // $875C
    repair_apply_loop(arg3, arg2, local8);    // $8761
    *(word*)(arg4) = (*(word*)(arg4) - local8);    // $876B
    draw_lumber_field(arg1, *(word*)(arg4));    // $8770
    draw_repair_row((mem_7392 - 1), local10);    // $877A
    if (*(word*)(arg4)) goto L_8669;    // $8780
    show_message();    // $8783
    draw_text(0x8F13);    // $8789
    return land_confirm();    // $8790
    }
}

// Decompiled from source/2-asm-vm\bank15.asm sub $8791
// $8791 land_loop_8791
// (body @ $8796)

word land_loop_8791(word arg1, word arg2, word arg3, word arg4) {
    phi_val_87f7 = 0;    // $8797
    goto L_87F7;    // $8797
L_879A:
    local10 = *(byte*)((arg1 + local11));    // $879E
    local9 = ((local10 * 7) + 0x6C90);    // $87A6
    if (!((*(byte*)(local9) != *(byte*)(((local11 * 3) + arg2))))) goto L_87B7;    // $87B2
    return 1;    // $87B6
L_87B7:
    if (!((*(byte*)((local9 + 1)) != *(byte*)((((local11 * 3) + arg2) + 1))))) goto L_87C9;    // $87C4
    return 1;    // $87C8
L_87C9:
    if (!((*(byte*)((local9 + 2)) != *(byte*)((((local11 * 3) + arg2) + 2))))) goto L_87DB;    // $87D6
    return 1;    // $87DA
L_87DB:
    local8 = ((local10 * 24) + 0x6AA4);    // $87E3
    if (!((*(word*)(((local11 << 1) + arg3)) != *(word*)((local8 + 20))))) goto L_87F5;    // $87F0
    return 1;    // $87F4
L_87F5:
    phi_val_87f7 = (local11 + 1);    // $87F6
L_87F7:
    local11 = phi_val_87f7;    // $87F7
    if (((unsigned)local11 < (unsigned)arg4)) goto L_879A;    // $87FB
    return 0;    // $87FF
}

// Decompiled from source/2-asm-vm\bank15.asm sub $8800
// $8800 land_row_origin_b
// (body @ $8805)

word land_row_origin_b(void) {
    return ((ui_shared_var_737d == 1) ? 11 : 3);    // $8812
}

// Decompiled from source/2-asm-vm\bank15.asm sub $8813
// $8813 repair_finish
// (body @ $8818)

word repair_finish(word arg1) {
    local9 = land_row_origin_b();    // $881B
    syscall_id12_syscall_set_chr_banks(5, 4);    // $881F
    repair_draw_parts(local9, arg1);    // $8825
    local11 = 0;    // $882A
    local10 = 0;    // $882B
    while (((unsigned)local11 < (unsigned)5)) {    // $88D4
        *(word*)(fp - 52) = ((local11 * 7) + 0x6C90);    // $8836
        if ((*(byte*)((*(word*)(fp - 52) + 6)) & 64)) {    // $883F
        *(byte*)((local10 + (fp - 23))) = local11;    // $884B
        *(byte*)(((local10 * 3) + (fp - 38))) = *(byte*)(*(word*)(fp - 52));    // $8859
        *(byte*)(((local10 * 3) + (fp - 37))) = *(byte*)((*(word*)(fp - 52) + 1));    // $8868
        *(byte*)(((local10 * 3) + (fp - 36))) = *(byte*)((*(word*)(fp - 52) + 2));    // $8877
        *(word*)(fp - 54) = ((local11 * 24) + 0x6AA4);    // $8880
        *(word*)(((local10 << 1) + (fp - 48))) = *(word*)((*(word*)(fp - 54) + 20));    // $8890
        *(word*)(fp - 56) = record_base_6b1c((*(byte*)((*(word*)(fp - 52) + 6)) & 15));    // $889C
        *(word*)(((local10 << 1) + &local3)) = *(word*)(fp - 56);    // $88A9
        set_tile_cursor(2, (((local10 << 1) + local9) + 2));    // $88B1
        draw_string_banked(*(word*)(((local10 << 1) + &local3)));    // $88BF
        draw_repair_row((((local10 << 1) + local9) + 1), local11);    // $88CA
        local10 = (local10 + 1);    // $88D0
        }
L_88D1:
        local11 = (local11 + 1);    // $88D3
    }
    *(word*)(fp - 50) = repair_choose(local9, (fp - 23), local10, &arg1);    // $88E8
    if (*(word*)(fp - 50)) {    // $88EC
    *(word*)(fp - 50) = land_loop_8791((fp - 23), (fp - 38), (fp - 48), local10);    // $8900
    }
L_8902:
    if (*(word*)(fp - 50)) goto L_897E;    // $8904
    phi_val_896e = 0;    // $8908
    while (((unsigned)local11 < (unsigned)local10)) {    // $896E
        local8 = *(byte*)((local11 + (fp - 23)));    // $8913
        *(word*)(fp - 52) = ((local8 * 7) + 0x6C90);    // $891B
        *(byte*)(*(word*)(fp - 52)) = *(byte*)(((local11 * 3) + (fp - 38)));    // $8929
        *(byte*)((*(word*)(fp - 52) + 1)) = *(byte*)(((local11 * 3) + (fp - 37)));    // $8938
        *(byte*)((*(word*)(fp - 52) + 2)) = *(byte*)(((local11 * 3) + (fp - 36)));    // $8947
        *(word*)(fp - 54) = ((local8 * 24) + 0x6AA4);    // $8950
        *(word*)((*(word*)(fp - 54) + 20)) = *(word*)(((local11 << 1) + (fp - 48)));    // $8960
        draw_repair_row((((local11 << 1) + local9) + 1), local8);    // $8968
        phi_val_896e = (local11 + 1);    // $896D
        local11 = phi_val_896e;    // $896E
    }
    phi_8984_0 = 0x8F27;    // $897B
    show_message();    // $8975
    goto L_8984;    // $897B
L_897E:
    phi_8984_0 = 0x8F3D;    // $8981
L_8984:
    show_message();    // $897E
    draw_text(phi_8984_0);    // $8984
    blit_block_unwind();    // $8988
    place_object_sprite(party_map_x, party_map_y, mem_666A);    // $8997
    return *(word*)(fp - 50);    // $899D
}

// Decompiled from source/2-asm-vm\bank15.asm sub $899E
// $899E repair_no_lumber
// (body @ $89A3)

word repair_no_lumber(void) {
    local11 = 1;    // $89A4
    local9 = 0;    // $89A6
    phi_val_89d2 = 0;    // $89A8
    while (((unsigned)local10 < (unsigned)5)) {    // $89D2
        if ((*(byte*)(((local10 * 7) + 0x6C96)) & 64)) {    // $89B6
        local9 = (local9 + *(word*)(((local10 * 24) + 0x6AB8)));    // $89C5
        if (check_repair_hull(local10)) {    // $89CB
        local11 = 0;    // $89CF
        }
        }
L_89D0:
        phi_val_89d2 = (local10 + 1);    // $89D1
        local10 = phi_val_89d2;    // $89D2
    }
    show_prompt_record();    // $89D9
    if (local11) {    // $89DD
    draw_text(0x8F52);    // $89E3
    return 0;    // $89E8
    }
L_89E9:
    if (local9) goto L_89F6;    // $89EA
    draw_text(0x8F6A);    // $89F0
    return 0;    // $89F5
L_89F6:
    local11 = repair_finish(local9);    // $89FB
    return local11;    // $89FD
}

// Decompiled from source/2-asm-vm\bank15.asm sub $89FE
// $89FE search_result
// (body @ $8A03)

word search_result(word arg1, word arg2) {
    local10 = (mem_7084 & 7);    // $8A08
    show_message();    // $8A09
    if ((!((((unsigned)((unsigned)mem_6545 / (unsigned)5) >= (unsigned)local10) || ((unsigned)local10 >= (unsigned)5))))) return draw_text(0x8F88);    // $8A19
    draw_text(0x8FA4);    // $8A27
    local11 = 0;    // $8A2C
    phi_val_8a45 = 0;    // $8A2E
    while (((unsigned)local9 < (unsigned)arg1)) {    // $8A45
        local11 = (local11 + (*(word*)(((*(byte*)((arg2 + local9)) * 24) + 0x6AB6)) / 10));    // $8A42
        phi_val_8a45 = (local9 + 1);    // $8A44
        local9 = phi_val_8a45;    // $8A45
    }
    syscall_id12_syscall_set_chr_banks(5, 4);    // $8A4F
    local8 = land_row_origin();    // $8A56
    blit_block_save(1, local8, 30, 14);    // $8A5C
    cargo_which_ship(arg1, arg2, 1, local8);    // $8A6B
    blit_block_unwind();    // $8A6F
    return place_object_sprite(party_map_x, party_map_y, mem_666A);    // $8A82
}

// Decompiled from source/2-asm-vm\bank15.asm sub $8A83
// $8A83 search_water
// (body @ $8A88)

word search_water(void) {
    *(word*)(fp - 15) = 0;    // $8A89
    *(word*)(fp - 13) = 0;    // $8A8B
    local11 = 0;    // $8A8E
    local9 = 0;    // $8A8F
    while (((unsigned)local11 < (unsigned)5)) {    // $8AD3
        *(word*)(fp - 17) = ((local11 * 7) + 0x6C90);    // $8A9A
        if ((*(byte*)((*(word*)(fp - 17) + 6)) & 64)) {    // $8AA3
        *(byte*)((local9 + (fp - 11))) = local11;    // $8AAF
        local9 = (local9 + 1);    // $8AB2
        *(word*)(fp - 13) = (*(word*)(fp - 13) + record_field_word((record_base_6b1c(local11) + 18)));    // $8AC3
        *(word*)(fp - 15) = (*(word*)(fp - 15) + record_base_6aa4(local11));    // $8ACE
        }
L_8AD0:
        local11 = (local11 + 1);    // $8AD2
    }
    show_prompt_record();    // $8AD9
    if ((*(word*)(fp - 15) == *(word*)(fp - 13))) {    // $8AE1
    draw_text(0x8FBD);    // $8AE7
    return 0;    // $8AEC
    }
L_8AED:
    local11 = search_6a9a_ptr();    // $8AF0
    if ((local11 == 255)) goto L_8B0D;    // $8AF6
    if (((unsigned)load_operand16_14(100) >= (unsigned)*(byte*)(((local11 * 10) + 0x6BC1)))) {    // $8B0A
L_8B0D:
    phi_8b38_0 = 0x8FE9;    // $8B11
    phi_8b38_1 = 1;    // $8B11
    } else {
    local10 = (mem_7084 & 7);    // $8B19
    if (!(((unsigned)local10 < (unsigned)2))) goto L_8B27;    // $8B1D
    phi_8b38_0 = 0x8FF9;    // $8B24
    phi_8b38_1 = 1;    // $8B24
    goto L_8B38;    // $8B24
L_8B27:
    if (!(((unsigned)local10 < (unsigned)5))) goto L_8B34;    // $8B2A
    phi_8b38_0 = 0x9018;    // $8B31
    phi_8b38_1 = 1;    // $8B31
    goto L_8B38;    // $8B31
L_8B34:
    phi_8b38_0 = 0x902F;    // $8B35
    phi_8b38_1 = 1;    // $8B35
    }
L_8B38:
    draw_string(phi_8b38_0, phi_8b38_1);    // $8B38
    draw_string(0x904D, 1);    // $8B40
    if (prompt_confirm()) {    // $8B47
    search_result(local9, (fp - 11));    // $8B4F
    return 1;    // $8B54
    }
L_8B55:
    return 0;    // $8B56
    }
}

// Decompiled from source/2-asm-vm\bank15.asm sub $8B57
// $8B57 search_treasure
// (body @ $8B5C)

word search_treasure(word arg1, word arg2) {
    local11 = ((unsigned)arg2 / (unsigned)18);    // $8B60
    if (local11) {    // $8B62
    phi_val_8b75 = ((arg2 * 5) + -90);    // $8B6A
    } else {
    phi_val_8b75 = (90 - (arg2 * 5));    // $8B74
    }
L_8B75:
    local9 = phi_val_8b75;    // $8B75
    local7 = ((unsigned)(arg1 + 38) % (unsigned)72);    // $8B7C
    local10 = ((unsigned)local7 / (unsigned)36);    // $8B81
    local8 = ((local10 ? (72 - local7) : local7) * 5);    // $8B90
    show_message();    // $8B91
    draw_field_m1(0x9065, *(word*)(((local11 << 1) + 0x9055)), local9, *(word*)(((local10 << 1) + 0x9059)), local8);    // $8BA9
    return 1;    // $8BAE
    }
}

// Decompiled from source/2-asm-vm\bank15.asm sub $8BAF
// $8BAF treasure_found
// (body @ $8BB4)

word treasure_found(void) {
    *(word*)(fp - 38) = 0x6662;    // $8BB7
    if (!((quest_flags & 4))) goto L_8D57;    // $8BBE
    local9 = ((mem_7263 * 3) + mem_7265);    // $8BCC
    local8 = ((mem_7264 * 3) + mem_7266);    // $8BD8
    local11 = mem_705B;    // $8BDC
    local10 = mem_705C;    // $8BE0
    if ((local11 != local9)) goto L_8CA5;    // $8BE4
    if ((local10 != local8)) goto L_8CA5;    // $8BEA
    if ((*(byte*)((*(word*)(fp - 38) + 2)) == mem_705D)) {    // $8BF7
    if (!((*(byte*)((*(word*)(fp - 38) + 3)) == mem_705E))) goto L_8C86;    // $8C04
    opt_sprite(2);    // $8C0F
    idx_valid_lt21(25);    // $8C15
    draw_string(0x90BD, 0);    // $8C1D
    draw_string_banked(mem_6542);    // $8C24
    draw_string(0x90C8, 0);    // $8C2C
    draw_string_banked(record_base_d604(mem_7055));    // $8C39
    draw_string(0x90D6, 0);    // $8C41
    wait_input();    // $8C45
    upload_sprite_block();    // $8C48
    redraw_screen_if_changed();    // $8C4B
    upload_cursor_sprites(((unsigned)mem_6B8C / (unsigned)5));    // $8C54
    *(word*)(((((unsigned)mem_7055 >> 4) << 1) + 0x666D)) = (*(word*)(((((unsigned)mem_7055 >> 4) << 1) + 0x666D)) | (1 << (mem_7055 & 15)));    // $8C70
    quest_flags = (quest_flags | 2);    // $8C77
    quest_flags = (quest_flags ^ 4);    // $8C80
    } else {
    show_prompt_record();    // $8C86
    draw_string(0x90D8, 1);    // $8C8D
    win_open();    // $8C91
    show_prompt_bc23();    // $8C94
    draw_string(0x9100, 0);    // $8C9B
    win_close();    // $8C9F
    goto L_8D61;    // $8CA2
L_8CA5:
    local7 = record_iter_6a9a((fp - 30));    // $8CAD
    if (!(local7)) goto L_8CC1;    // $8CAF
    goto L_8CC4;    // $8CBE
L_8CC1:
L_8CC4:
    *(word*)(fp - 32) = 255;    // $8CC4
    show_prompt_bc27(*(word*)(fp - 32), 0);    // $8CC9
    draw_string(0x9135, 1);    // $8CD1
    win_open();    // $8CD5
    if (!((*(word*)(fp - 32) != 255))) goto L_8D01;    // $8CDE
    if (!(((unsigned)(load_operand16_14(30) + 70) <= (unsigned)*(byte*)(((*(word*)(fp - 32) * 10) + 0x6BC1))))) goto L_8D01;    // $8CF5
    search_treasure(local11, local10);    // $8CFA
L_8D01:
    win_open();    // $8CFE
    *(word*)(fp - 42) = (31 - local9);    // $8D05
    local9 = (local9 + *(word*)(fp - 42));    // $8D0C
    *(word*)(fp - 40) = (local11 + *(word*)(fp - 42));    // $8D11
    if (!((*(word*)(fp - 40) < 0))) goto L_8D22;    // $8D17
    *(word*)(fp - 40) = ((local11 + *(word*)(fp - 42)) + 71);    // $8D20
L_8D22:
    local11 = *(word*)(fp - 40);    // $8D24
    show_message();    // $8D25
    draw_field_m1(0x915C, *(word*)(((*(byte*)(((((cmp_lt_neg1((local11 - local9)) + 1) * 3) + cmp_lt_neg1((local10 - local8))) + 0x90A1)) << 1) + 0x9090)));    // $8D4D
    win_open();    // $8D51
    goto L_8D61;    // $8D54
L_8D57:
    show_prompt_record();    // $8D57
    }
L_8D61:
    draw_text(0x9175);    // $8D5D
    return 0;    // $8D62
    }
}

// Decompiled from source/2-asm-vm\bank15.asm sub $8D63
// $8D63 land_loop_8d63
// (body @ $8D68)

word land_loop_8d63(void) {
    local10 = 0;    // $8D69
    do {    // $8D6A
        local11 = draw_text_menu(0, 2, 0x9191, 2, 2);    // $8D75
        if ((local11 != 255)) {    // $8D7B
        local10 = (*(*(word*)(((local11 << 1) + 0x9195))))();    // $8D86
        }
L_8D87:
        if ((local10 == 1)) break;    // $8D8A
    } while ((local11 != 255));    // $8D92
L_8D95:
    return local10;    // $8D96
}
