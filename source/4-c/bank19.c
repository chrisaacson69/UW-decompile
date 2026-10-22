// Decompiled from source/2-asm-vm\bank19.asm sub $8003
// $8003 guild_scan_records
// (body @ $8008)

word guild_scan_records(word arg1, word arg2) {
    *(word*)(fp - 17) = scan_records_6c90_flag(0, (fp - 7));    // $8011
    *(word*)(fp - 9) = (fp - 7);    // $8016
    *(word*)(fp - 11) = ((fp - 7) + *(word*)(fp - 17));    // $801B
    goto L_807C;    // $801D
L_8020:
    *(word*)(fp - 19) = *(byte*)(*(word*)(fp - 9));    // $8023
    *(word*)(fp - 23) = ((*(word*)(fp - 19) * 24) + 0x6AA4);    // $802E
    *(word*)(fp - 13) = (*(word*)(fp - 23) + 1);    // $8033
    *(word*)(fp - 21) = (*(word*)(fp - 23) + 6);    // $8038
    *(word*)(fp - 15) = (*(word*)(fp - 13) + 5);    // $803D
    goto L_806F;    // $803F
L_8042:
    if ((*(byte*)(*(word*)(fp - 13)) == arg1)) {    // $8047
    if (arg2) {    // $804B
    local11 = max_s16(*(word*)(*(word*)(fp - 21)), arg2);    // $8057
    *(word*)(*(word*)(fp - 21)) = (*(word*)(*(word*)(fp - 21)) - local11);    // $805F
    arg2 = (arg2 - local11);    // $8064
    }
    }
L_8065:
    *(word*)(fp - 21) = (*(word*)(fp - 21) + 2);    // $8068
    *(word*)(fp - 13) = (*(word*)(fp - 13) + 1);    // $806D
L_806F:
    if (((unsigned)*(word*)(fp - 13) < (unsigned)*(word*)(fp - 15))) goto L_8042;    // $8074
    *(word*)(fp - 9) = (*(word*)(fp - 9) + 1);    // $807A
L_807C:
    if (((unsigned)*(word*)(fp - 9) < (unsigned)*(word*)(fp - 11))) goto L_8020;    // $8081
    return ((unsigned)*(word*)(fp - 9) < (unsigned)*(word*)(fp - 11));    // $8084
}

// Decompiled from source/2-asm-vm\bank19.asm sub $8085
// $8085 guild_decline
// (body @ $808A)

word guild_decline(void) {
    draw_window();    // $808A
    draw_string(0x94D6, 1);    // $8091
    quest_flags = 0;    // $8096
    return win_open();    // $809C
}

// Decompiled from source/2-asm-vm\bank19.asm sub $809D
// $809D guild_cant_carry
// (body @ $80A2)

word guild_cant_carry(void) {
    draw_window();    // $80A2
    draw_string(0x94F5, 0);    // $80A9
    return win_close();    // $80B0
}

// Decompiled from source/2-asm-vm\bank19.asm sub $80B1
// $80B1 guild_quest_return
// (body @ $80B6)

word guild_quest_return(void) {
    if (!((quest_flags & 8))) goto L_8206;    // $80BB
    if (!((quest_flags & 1))) goto L_8206;    // $80C3
    if ((quest_target_port != current_port)) goto L_8206;    // $80CF
    if ((mem_7053 != 1)) goto L_8206;    // $80D7
    if (!(sum_matching_6aa4(mem_7055))) goto L_8206;    // $80E2
    idx_over_20(13);    // $80E6
    audio_param_gated(1);    // $80EB
    draw_box_variant(6, 1);    // $80F1
    win_render_syscall(1);    // $80F6
    draw_string(0x953D, 1);    // $80FE
    win_open();    // $8102
    if (!(((unsigned)sum_matching_6aa4(mem_7055) < (unsigned)mem_7056))) goto L_8144;    // $8111
    draw_window();    // $8114
    draw_string(0x9574, 1);    // $811B
    win_open();    // $811F
    draw_window();    // $8122
    draw_string(0x9590, 1);    // $8129
    win_open();    // $812D
    guild_scan_records(mem_7055, sum_matching_6aa4(mem_7055));    // $813D
    goto L_8200;    // $8141
L_8144:
    draw_window();    // $8144
    guild_scan_records(mem_7055, mem_7056);    // $814E
    draw_string(0x95C3, 1);    // $8156
    win_open();    // $815A
    // ext_op ext_op_F1AF
    // ext_op ext_op_F263
    // ext_op ext_op_F1AF
    // ext_op ext_op_F26C
    // ext_op ext_op_F03F
    // ext_op ext_op_F229
    // TODO: UNK
    // TODO: op_FF
    // ext_op ext_op_F20D
    // TODO: UNK
    // TODO: op_FF
    // ext_op ext_op_F13E
    if (!(mem_666B)) goto L_81B1;    // $817D
    // ext_op ext_op_F20D
    // TODO: UNK
    // TODO: op_FF
    // ext_op ext_op_F03F
    // ext_op sdiv32
    // ext_op ext_op_F1B3
    mem_6F70 = max_s16((mem_666B + mem_6F70), 0x2710);    // $81A2
    mem_666B = 0xEA60;    // $81A8
    guild_cant_carry();    // $81AB
    goto L_81C8;    // $81AE
L_81B1:
    mem_666B = (mem_666B + max_s16((0xEA60 - mem_666B), mem_7058));    // $81C5
L_81C8:
    if (!(((unsigned)mem_6F72 < (unsigned)0xC350))) goto L_81F2;    // $81CF
    mem_6F72 = (mem_6F72 + max_s16((0xC350 - mem_6F72), ((((unsigned)mem_6F74 >> 1) * 100) + 150)));    // $81EF
L_81F2:
    draw_window();    // $81F2
    draw_string(0x95ED, 1);    // $81F9
L_8200:
    win_open();    // $81FD
    quest_flags = 0;    // $8201
    return 1;    // $8205
L_8206:
    if (!((quest_flags & 8))) goto L_82C3;    // $820B
    if (!((quest_flags & 1))) goto L_82C3;    // $8213
    if ((quest_target_port != current_port)) goto L_82C3;    // $821F
    if ((mem_7053 != 1)) goto L_82C3;    // $8227
    idx_over_20(13);    // $822B
    audio_param_gated(1);    // $8230
    draw_box_variant(6, 1);    // $8236
    win_render_syscall(1);    // $823B
    draw_string(0x961F, 1);    // $8243
    if (!(prompt_confirm())) goto L_825E;    // $824A
    draw_window();    // $824D
    draw_string(0x9651, 1);    // $8254
    win_open();    // $8258
    goto L_82C1;    // $825B
L_825E:
    draw_window();    // $825E
    draw_string(0x9670, 1);    // $8265
    if (!(((unsigned)mem_666B < (unsigned)mem_7058))) goto L_8288;    // $8270
    mem_666B = 0;    // $8274
    win_open();    // $8277
    draw_window();    // $827A
    draw_string(0x9698, 1);    // $8281
    goto L_8293;    // $8285
L_8288:
    mem_666B = (mem_666B - mem_7058);    // $8290
L_8293:
    win_open();    // $8293
    draw_window();    // $8296
    draw_string(0x96C5, 1);    // $829D
    mem_6F72 = (mem_6F72 - max_s16(mem_6F72, ((load_operand16_14(10) * 5) + 50)));    // $82B7
    win_open();    // $82BA
    quest_flags = 0;    // $82BE
L_82C1:
    return 1;    // $82C2
L_82C3:
    if ((quest_flags & 8)) goto L_8587;    // $82C8
    if (!((quest_flags & 1))) goto L_8587;    // $82D0
    if ((quest_target_port != current_port)) goto L_8587;    // $82DC
    if ((mem_7053 != 1)) goto L_8587;    // $82E4
    idx_over_20(13);    // $82E8
    audio_param_gated(1);    // $82ED
    local10 = lookup_stat_ba11();    // $82F4
    draw_box_variant(6, 1);    // $82F7
    win_render_syscall(1);    // $82FC
    draw_string(0x96E7, 1);    // $8304
    win_open();    // $8308
    draw_window();    // $830B
    draw_string(0x9719, 0);    // $8312
    draw_string_banked(record_field_word(((mem_7055 << 1) + 0xBB49)));    // $8324
    win_close();    // $8328
    draw_window();    // $832B
    local11 = max_s16(((record_field_word((record_base_6b1c((*(byte*)(((record_scan_6c90_6aa4(0) * 7) + 0x6C96)) & 15)) + 18)) / 2) + load_operand16_14(5)), ((unsigned)((mem_6F74 + 1) * 0x07D0) / (unsigned)local10));    // $8362
    mem_7056 = local11;    // $8364
    mem_7058 = (local11 * local10);    // $836A
    if (!(sum_matching_6aa4(mem_7055))) goto L_84CD;    // $8375
    draw_field_m1(0x9745, sum_matching_6aa4(mem_7055));    // $8384
    win_open();    // $8388
    draw_window();    // $838B
    draw_field_m1(0x9766, local11);    // $8392
    win_open();    // $8396
    draw_window();    // $8399
    draw_string(0x9793, 1);    // $83A0
    // ext_op ext_op_F1AF
    // ext_op ext_op_F263
    // ext_op ext_op_F1AF
    // ext_op ext_op_F26C
    // ext_op ext_op_EF81
    // ext_op ext_op_F229
    // TODO: UNK
    // TODO: op_FF
    // ext_op ext_op_F20D
    // TODO: UNK
    // TODO: op_FF
    // ext_op ext_op_F13E
    if (!(sum_matching_6aa4(mem_7055))) goto L_83E2;    // $83C7
    // ext_op ext_op_F20D
    // TODO: UNK
    // TODO: op_FF
    // ext_op sdiv32
    // ext_op ext_op_F263
    draw_field_m1(0x97AE, /*stack underflow*/ regA, /*stack underflow*/ regA);    // $83DB
    goto L_83F4;    // $83DF
L_83E2:
L_83F4:
    draw_field_m1(0x97B4, (sum_matching_6aa4(mem_7055) * local10));    // $83F0
    draw_string(0x97B7, 1);    // $83F8
    win_open();    // $83FC
    draw_window();    // $83FF
    draw_field_m1(0x97D6, local11, (mem_7058 << 1));    // $840B
    if (!(prompt_confirm())) goto L_8582;    // $8412
    draw_window();    // $8415
    draw_field_m1(0x9800, mem_7058);    // $841E
    // ext_op ext_op_F1AF
    // ext_op ext_op_F263
    // ext_op ext_op_F1AF
    // ext_op ext_op_F26C
    // ext_op ext_op_F03F
    // ext_op ext_op_F1FF
    // ext_op ext_op_F20D
    // TODO: UNK
    // TODO: op_FF
    // ext_op ext_op_F03F
    // ext_op ext_op_F229
    // TODO: UNK
    // TODO: op_FF
    // ext_op ext_op_F20D
    // TODO: UNK
    // TODO: op_FF
    // ext_op ext_op_F13E
    if (!(win_open())) goto L_8482;    // $844D
    draw_window();    // $8450
    // ext_op ext_op_F20D
    // TODO: UNK
    // TODO: op_FF
    // ext_op ext_op_F03F
    // ext_op ext_op_F1B3
    mem_6F70 = max_s16((((unsigned)draw_string(0x9821, 1) / (unsigned)0x03E8) + mem_6F70), 0x2710);    // $8479
    phi_val_84ad = 0xEA60;    // $847F
    goto L_84AD;    // $847F
L_8482:
    draw_window();    // $8482
    draw_string(0x9857, 1);    // $8489
    phi_val_84ad = (mem_666B + max_s16((0xEA60 - mem_666B), ((sum_matching_6aa4(mem_7055) * local10) + mem_7058)));    // $84AC
L_84AD:
    mem_666B = phi_val_84ad;    // $84AD
    guild_scan_records(mem_7055, sum_matching_6aa4(mem_7055));    // $84BD
    quest_flags = (quest_flags | 8);    // $84C7
    goto L_857C;    // $84CA
L_84CD:
    draw_field_m1(0x9880, local11);    // $84D1
    win_open();    // $84D5
    draw_window();    // $84D8
    draw_field_m1(0x98A4, (mem_7058 << 1));    // $84E3
    if (!(prompt_confirm())) goto L_8582;    // $84EA
    draw_window();    // $84ED
    draw_field_m1(0x98BE, mem_7058);    // $84F6
    win_open();    // $84FA
    // ext_op ext_op_F1AF
    // ext_op ext_op_F263
    // ext_op ext_op_F1AF
    // ext_op ext_op_F26C
    // ext_op ext_op_F03F
    // ext_op ext_op_F229
    // TODO: UNK
    // TODO: op_FF
    // ext_op ext_op_F20D
    // TODO: UNK
    // TODO: op_FF
    // ext_op ext_op_F13E
    if (!(mem_666B)) goto L_8551;    // $851D
    // ext_op ext_op_F20D
    // TODO: UNK
    // TODO: op_FF
    // ext_op ext_op_F03F
    // ext_op sdiv32
    // ext_op ext_op_F1B3
    mem_6F70 = max_s16((mem_666B + mem_6F70), 0x2710);    // $8542
    mem_666B = 0xEA60;    // $8548
    guild_cant_carry();    // $854B
    goto L_8568;    // $854E
L_8551:
    mem_666B = (mem_666B + max_s16((0xEA60 - mem_666B), mem_7058));    // $8565
L_8568:
    quest_flags = (quest_flags | 8);    // $856E
    draw_window();    // $8571
L_857C:
    draw_string(0x98E7, 1);    // $8578
    win_open();    // $857C
    goto L_8585;    // $857F
L_8582:
L_8585:
    guild_decline();    // $8582
    return 1;    // $8586
L_8587:
    return 0;    // $8588
}

// Decompiled from source/2-asm-vm\bank19.asm sub $8589
// $8589 guild_sprites
// (body @ $858E)

word guild_sprites(void) {
    return syscall_id06_syscall_set_sprite_block(0xF36F, 9, 7);    // $8598
}

// Decompiled from source/2-asm-vm\bank19.asm sub $8599
// $8599 guild_clear_region
// (body @ $859E)

word guild_clear_region(void) {
    return syscall_id08_syscall_queue_ppu_transfer(1, 6, 30, 22, 0, 0);    // $85AB
}

// Decompiled from source/2-asm-vm\bank19.asm sub $85AC
// $85AC guild_show_worth
// (body @ $85B1)

word guild_show_worth(void) {
    mem_7063 = 240;    // $85B4
    local10 = ((current_port * 14) + 0x67BA);    // $85C0
    local9 = ((current_port * 14) + 0x67B2);    // $85CA
    mem_7064 = -1;    // $85CD
    blit_alloc_tiles(2, 2, 28, 18, 0);    // $85D7
    clear_two_ppu_regions();    // $85DB
    syscall_id09_syscall_banked_blit_m3(1, 6, 30, 14, 0xA154, 0xA2F8, 231);    // $85ED
    syscall_id08_syscall_queue_ppu_transfer(2, 13, 28, 1, 249, 0);    // $85FB
    set_draw_origin(2, 7);    // $8601
    draw_field(0x995C, *(word*)(local9));    // $860B
    set_draw_origin(2, 8);    // $8611
    draw_field(0x996F, *(word*)((local9 + 2)));    // $861C
    set_draw_origin(2, 10);    // $8622
    draw_field(0x9987, *(word*)((local9 + 4)));    // $862D
    set_draw_origin(2, 11);    // $8633
    draw_field(0x999C, *(word*)((local9 + 6)));    // $863E
    set_draw_origin(2, 14);    // $8644
    draw_field(0x99B6);    // $864B
    while (((unsigned)*(byte*)(fp - 1) < (unsigned)3)) {    // $86AA
        set_draw_origin(2, (*(byte*)(fp - 1) + 15));    // $8659
        if ((*(byte*)(fp - 1) == 1)) {    // $8662
        phi_8678_0 = 0x99BF;    // $8669
        phi_8678_1 = 0;    // $8669
        } else {
        if (!((*(byte*)(fp - 1) == 2))) goto L_867C;    // $8671
        phi_8678_0 = 0x99C3;    // $8675
        phi_8678_1 = 0;    // $8675
        }
L_8678:
L_867C:
        draw_string(phi_8678_0, phi_8678_1);    // $8678
        draw_string_banked(record_field_word(((*(byte*)(fp - 1) << 1) + 0xBB24)));    // $868A
        set_draw_origin(11, (*(byte*)(fp - 1) + 15));    // $8694
        draw_field(0x99C6, *(byte*)((*(byte*)(fp - 1) + local10)));    // $86A2
        *(byte*)(fp - 1) = (*(byte*)(fp - 1) + 1);    // $86AA
    }
    *(byte*)&local11 = (*(byte*)((current_port + 0x6F76)) & 3);    // $86BF
    set_draw_origin(19, 17);    // $86C6
    draw_field(0x99CA, (*(byte*)((local9 + 11)) + 50));    // $86D3
    mem_728A = 19;    // $86DA
    set_tile_cursor(19, 14);    // $86DE
    draw_field(0x99D7, *(word*)(((*(byte*)&local11 << 1) + 0x9910)));    // $86EF
    wait_input();    // $86F3
    clear_two_ppu_regions();    // $86F6
    blit_free_tiles(2, 2, 28, 18, 0);    // $8700
    return 0;    // $8705
        }
}

// Decompiled from source/2-asm-vm\bank19.asm sub $8706
// $8706 guild_grid_calc
// (body @ $870B)

word guild_grid_calc(word arg1, word arg2, word arg3, word arg4) {
    local11 = ((arg3 / 2) + (arg3 % 2));    // $8714
    draw_menu_frame(arg1, arg2, 26, ((local11 << 1) + 2), 0, 0);    // $871F
    phi_val_8740 = 0;    // $8724
    while (((unsigned)local10 < (unsigned)local11)) {    // $8740
        set_tile_cursor((arg1 + 2), (((local10 << 1) + arg2) + 2));    // $8730
        draw_string_banked(*(word*)(((local10 << 1) + arg4)));    // $873A
        phi_val_8740 = (local10 + 1);    // $873F
        local10 = phi_val_8740;    // $8740
    }
    while (((unsigned)local10 < (unsigned)arg3)) {    // $8766
        set_tile_cursor((arg1 + 14), ((((local10 - local11) << 1) + arg2) + 2));    // $8755
        draw_string_banked(*(word*)(((local10 << 1) + arg4)));    // $875F
        local10 = (local10 + 1);    // $8765
    }
    local9 = menu_pick(0x99DA, arg3, (arg1 + 1), (arg2 + 2), 12, 2, local11, 1);    // $877E
    return ((local9 == 1) ? 255 : (local9 - 1));    // $878E
}

// Decompiled from source/2-asm-vm\bank19.asm sub $878F
// $878F guild_no_crew
// (body @ $8794)

word guild_no_crew(void) {
    local0 = 0;    // $8795
    phi_val_87bd = 0x6A9A;    // $8799
    while (((unsigned)local0 < (unsigned)10)) {    // $87BD
        if (!((*(byte*)(local11) != 255))) break;    // $87A2
        *(word*)(((local0 << 1) + &local1)) = *(word*)(((*(byte*)(local11) * 7) + 0x6542));    // $87B7
        local0 = (local0 + 1);    // $87BA
        phi_val_87bd = (local11 + 1);    // $87BC
        local11 = phi_val_87bd;    // $87BD
    }
L_87C4:
    draw_box_from_native();    // $87C4
    if (local0) goto L_87D4;    // $87C8
    draw_text(0x99DB);    // $87CE
    return 0;    // $87D3
L_87D4:
    blit_alloc_tiles(2, 2, 28, 18, 0);    // $87DB
    draw_string(0x99F9, 1);    // $87E3
    *(word*)(fp - 26) = guild_grid_calc(2, 6, local0, &local1);    // $87F2
    if ((!((*(word*)(fp - 26) != 255)))) return *(word*)(fp - 26);    // $87FA
    return *(byte*)((*(word*)(fp - 26) + 0x6A9A));    // $8807
}

// Decompiled from source/2-asm-vm\bank19.asm sub $8808
// $8808 guild_view_whom
// (body @ $880D)

word guild_view_whom(void) {
    mem_7063 = 240;    // $8810
L_8813:
    draw_box_from_native();    // $8813
    draw_string(0x9A18, 1);    // $881A
    local11 = draw_tile_grid(8, 23, 10, 0, 0x9A05, 2, 1);    // $882C
    if ((local11 != 255)) {    // $8832
    if ((local11 != 1)) goto L_8893;    // $8838
L_883B:
    local10 = guild_no_crew();    // $883E
    if (!(local10)) goto L_88DB;    // $8840
    if ((local10 != 255)) {    // $8848
    clear_two_ppu_regions();    // $884B
    syscall_id08_syscall_queue_ppu_transfer(1, 20, 30, 8, 0, 0);    // $8857
    guild_sprites();    // $885B
    opt_draw_name(1, 6, local10);    // $8868
    guild_clear_region();    // $886C
    reset_chr_alloc();    // $886F
    }
L_887D:
    call_in_bank_dcd1(1, 222, guild_scan_records);    // $8879
    blit_free_tiles(2, 2, 28, 18, 0);    // $8884
    if ((local10 != 255)) goto L_883B;    // $888D
    goto L_88DB;    // $8890
L_8893:
    blit_alloc_tiles(2, 2, 28, 18, 0);    // $889A
    clear_two_ppu_regions();    // $889E
    syscall_id08_syscall_queue_ppu_transfer(1, 20, 30, 8, 0, 0);    // $88AA
    guild_sprites();    // $88AE
    opt_draw_name(1, 6, local11);    // $88BB
    guild_clear_region();    // $88BF
    reset_chr_alloc();    // $88C2
    call_in_bank_dcd1(1, 222, guild_scan_records);    // $88CC
    }
L_88DB:
    blit_free_tiles(2, 2, 28, 18, 0);    // $88D7
    if ((local11 != 255)) goto L_8813;    // $88E0
    return 0;    // $88E4
}

// Decompiled from source/2-asm-vm\bank19.asm sub $88E5
// $88E5 guild_which_ship
// (body @ $88EA)

word guild_which_ship(void) {
    *(word*)(fp - 27) = scan_records_6c90_flag(0, (fp - 17));    // $88F3
    *(word*)(fp - 23) = &local6;    // $88F8
    *(word*)(fp - 19) = (fp - 17);    // $88FD
    *(word*)(fp - 21) = ((fp - 17) + *(word*)(fp - 27));    // $8902
    while (((unsigned)*(word*)(fp - 19) < (unsigned)*(word*)(fp - 21))) {    // $892E
        local11 = ((*(byte*)(*(word*)(fp - 19)) * 7) + 0x6C90);    // $8910
        *(byte*)(*(word*)(fp - 19)) = (*(byte*)((local11 + 6)) & 15);    // $8918
        *(word*)(*(word*)(fp - 23)) = record_base_6b1c(*(byte*)(*(word*)(fp - 19)));    // $8923
        *(word*)(fp - 23) = (*(word*)(fp - 23) + 2);    // $8927
        *(word*)(fp - 19) = (*(word*)(fp - 19) + 1);    // $892C
    }
    draw_box_from_native();    // $8936
    draw_string(0x9A23, 1);    // $893D
    *(word*)(fp - 25) = draw_banked_menu(2, 6, *(word*)(fp - 27), &local6, 2);    // $894E
    if ((*(word*)(fp - 25) != 255)) {    // $8956
    phi_ret_8968 = *(byte*)((*(word*)(fp - 25) + (fp - 17)));    // $8962
    } else {
    phi_ret_8968 = 255;    // $8965
    }
L_8968:
    return phi_ret_8968;    // $8968
    }
}

// Decompiled from source/2-asm-vm\bank19.asm sub $8969
// $8969 guild_clear_8969
// (body @ $896E)

word guild_clear_8969(void) {
    mem_7063 = 240;    // $8971
    do {    // $8974
        blit_alloc_tiles(2, 2, 28, 18, 0);    // $897B
        local11 = guild_which_ship();    // $8982
        if ((guild_which_ship() != 255)) {    // $8987
        clear_two_ppu_regions();    // $898A
        syscall_id08_syscall_queue_ppu_transfer(1, 20, 30, 8, 0, 0);    // $8996
        guild_sprites();    // $899A
        opt_ship_line(1, 6, local11);    // $89A7
        guild_clear_region();    // $89AB
        }
L_89B1:
        reset_chr_alloc();    // $89AE
        call_in_bank_dcd1(1, 222, guild_scan_records);    // $89B8
        blit_free_tiles(2, 2, 28, 18, 0);    // $89C3
    } while ((local11 != 255));    // $89CC
    return 0;    // $89D0
}

// Decompiled from source/2-asm-vm\bank19.asm sub $89D1
// $89D1 guild_welcome
// (body @ $89D6)

word guild_welcome(void) {
    draw_box_variant(11, 1);    // $89D8
    win_render_syscall(1);    // $89DD
    draw_string(0x9A40, 1);    // $89E5
    local11 = draw_tile_grid(8, 25, 6, 1, 0x9A2F, 2, 1);    // $89F7
    if (((local11 == 255))) return 255;    // $89FD
    if (local11) goto L_8A1C;    // $8A05
    draw_box_variant(11, 1);    // $8A0A
    win_render_syscall(1);    // $8A0F
    draw_text(0x9A5D);    // $8A16
    return 0;    // $8A1B
L_8A1C:
    return 1;    // $8A1D
}

// Decompiled from source/2-asm-vm\bank19.asm sub $8A1E
// $8A1E guild_tired
// (body @ $8A23)

word guild_tired(void) {
    local10 = guild_welcome();    // $8A26
    if (((local10 == 255))) return 0;    // $8A2C
    if (!(local10)) goto L_8A49;    // $8A32
    draw_box_variant(11, 1);    // $8A37
    win_render_syscall(1);    // $8A3C
    draw_text(0x9A94);    // $8A43
    return 1;    // $8A48
    do {    // $8A49
        draw_box_from_native();    // $8A49
        win_render_syscall(1);    // $8A4D
        draw_string(0x9AC2, 1);    // $8A55
        local11 = draw_tile_grid(8, 23, 7, 1, 0x9A77, 3, 1);    // $8A67
        if ((local11 != 255)) {    // $8A6D
        local10 = (*(*(word*)(((local11 << 1) + 0x9A7D))))();    // $8A78
        }
L_8A79:
        if ((local11 == 255)) break;    // $8A7E
    } while (!(local10));    // $8A82
L_8A85:
    return local10;    // $8A86
}

// Decompiled from source/2-asm-vm\bank19.asm sub $8A87
// $8A87 guild_as_you_wish
// (body @ $8A8C)

word guild_as_you_wish(void) {
    draw_window();    // $8A8C
    return draw_text(0x9ACE);    // $8A96
}

// Decompiled from source/2-asm-vm\bank19.asm sub $8A97
// $8A97 guild_show_revenue
// (body @ $8A9C)

word guild_show_revenue(word arg1) {
    local8 = *(byte*)((((arg1 << 1) << 1) + 0x6FBE));    // $8AA4
    local4 = *(word*)((((arg1 << 1) << 1) + 0x6FBC));    // $8AAD
    local5 = *(byte*)((((arg1 << 1) << 1) + 0x6FBF));    // $8AB6
    local3 = 0x6B8D;    // $8ABA
    mem_7064 = -1;    // $8ABD
    syscall_id09_syscall_banked_blit_m3(5, 6, 22, 14, 0xA004, 0xA138, 232);    // $8ACF
    set_tile_cursor(13, 7);    // $8AD5
    draw_string_banked(record_field_word(((arg1 << 1) + 0xBB24)));    // $8AE5
    set_tile_cursor(6, 9);    // $8AEB
    draw_field(0x9AE3, local4);    // $8AF3
    set_tile_cursor(6, 11);    // $8AF9
    draw_field(0x9AEF, local8);    // $8B01
    set_tile_cursor(6, 13);    // $8B07
    draw_string(0x9AFD, 0);    // $8B0F
    local9 = 0;    // $8B14
    local11 = 0;    // $8B16
    local10 = 0;    // $8B18
    while (((unsigned)local11 < (unsigned)3)) {    // $8BCA
        if ((local11 != arg1)) {    // $8B1F
        set_tile_cursor(8, (local10 + 14));    // $8B26
        draw_string_banked(record_field_word(((local11 << 1) + 0xBB24)));    // $8B36
        set_tile_cursor(17, (local10 + 14));    // $8B3F
        draw_field(0x9B0B, *(byte*)((*(byte*)((((arg1 * 3) + local11) + 0x9ADA)) + local3)));    // $8B54
        local10 = (local10 + 1);    // $8B5A
        local7 = ((unsigned)mem_6B99 >> ((arg1 << 1) << 1));    // $8B64
        if ((((unsigned)8 >> local11) & local7)) {    // $8B6A
        set_tile_cursor(6, (local9 + 17));    // $8B72
        draw_string(0x9B0F, 0);    // $8B7A
        draw_string_banked(record_field_word(((local11 << 1) + 0xBB24)));    // $8B8A
        local9 = (local9 + 1);    // $8B90
        }
L_8B91:
        local6 = ((unsigned)mem_6B9B >> ((arg1 << 1) << 1));    // $8B9A
        if ((((unsigned)8 >> local11) & local6)) {    // $8BA0
        set_tile_cursor(6, (local9 + 17));    // $8BA8
        draw_string_banked(record_field_word(((local11 << 1) + 0xBB24)));    // $8BB8
        draw_string(0x9B18, 0);    // $8BC0
        local9 = (local9 + 1);    // $8BC6
        }
        }
L_8BC7:
        local11 = (local11 + 1);    // $8BC9
    }
    draw_window();    // $8BD0
    if (((unsigned)0 <= (unsigned)local5)) {    // $8BD6
    if (!(((unsigned)local5 <= (unsigned)2))) goto L_8C12;    // $8BDC
    draw_string(0x9B24, 0);    // $8BE3
    draw_string_banked(record_field_word(((arg1 << 1) + 0xBB24)));    // $8BF3
    draw_string(0x9B3F, 0);    // $8BFB
    draw_string_banked(record_field_word(((local5 << 1) + 0xBB24)));    // $8C0B
    } else {
    if ((local5 != 4)) goto L_8C37;    // $8C15
    draw_string(0x9B46, 0);    // $8C1C
    phi_8c3b_0 = 0x9B48;    // $8C34
    phi_8c3b_1 = 0;    // $8C34
    draw_string_banked(record_field_word(((arg1 << 1) + 0xBB24)));    // $8C2C
    goto L_8C3B;    // $8C34
L_8C37:
    phi_8c3b_0 = 0x9B67;    // $8C38
    phi_8c3b_1 = 0;    // $8C38
L_8C3B:
    }
L_8C3F:
    draw_string(phi_8c3b_0, phi_8c3b_1);    // $8C3B
    return win_close();    // $8C42
    }
}

// Decompiled from source/2-asm-vm\bank19.asm sub $8C43
// $8C43 guild_info_header
// (body @ $8C48)

word guild_info_header(word arg1) {
    local11 = ((current_port * 14) + 0x67BA);    // $8C51
    local10 = ((((unsigned)(100 - *(byte*)((local11 + arg1))) / (unsigned)20) * 10) + 50);    // $8C62
    draw_window();    // $8C63
    draw_string(0x9B86, 0);    // $8C6A
    draw_string_banked(record_field_word(((arg1 << 1) + 0xBB24)));    // $8C7A
    draw_string(0x9B98, 0);    // $8C82
    set_draw_origin(8, 25);    // $8C89
    draw_field_m1(0x9BA3, local10);    // $8C91
    if (prompt_confirm()) {    // $8C98
    if (!(((unsigned)mem_666B < (unsigned)local10))) goto L_8CB4;    // $8CA0
    draw_box_from_native();    // $8CA3
    win_render_syscall(1);    // $8CA7
    draw_text(0x9BAF);    // $8CAE
    return 0;    // $8CB3
L_8CB4:
    mem_666B = (mem_666B - local10);    // $8CBA
    blit_alloc_tiles(2, 3, 28, 17, 0);    // $8CC4
    guild_show_revenue(arg1);    // $8CC9
    blit_free_tiles(2, 3, 28, 17, 0);    // $8CD4
    } else {
    }
L_8CDE:
    guild_as_you_wish();    // $8CDB
    return 0;    // $8CDF
    }
}

// Decompiled from source/2-asm-vm\bank19.asm sub $8CE0
// $8CE0 guild_info_which
// (body @ $8CE5)

word guild_info_which(void) {
    local10 = 0;    // $8CE6
    do {    // $8CE7
        draw_box_variant(4, 1);    // $8CE9
        win_render_syscall(1);    // $8CEE
        draw_string(0x9BE0, 1);    // $8CF6
        local11 = draw_tile_grid(8, 23, 10, 2, 0x9BC4, 3, 2);    // $8D08
        if ((local11 != 255)) {    // $8D0E
        mem_7063 = 240;    // $8D14
        local10 = guild_info_header(local11);    // $8D1C
        }
L_8D1D:
        if ((local11 == 255)) break;    // $8D22
    } while (!(local10));    // $8D26
L_8D29:
    return local10;    // $8D2A
}

// Decompiled from source/2-asm-vm\bank19.asm sub $8D2B
// $8D2B guild_draw_value
// (body @ $8D30)

word guild_draw_value(word arg1) {
    clear_two_ppu_regions();    // $8D30
    mem_7064 = -1;    // $8D35
    syscall_id09_syscall_banked_blit_m3(4, 6, 24, 14, 0xA26C, 0xA3BC, 232);    // $8D47
    local10 = 0;    // $8D4C
    local11 = (arg1 + 4);    // $8D4F
    while (((unsigned)arg1 < (unsigned)local11)) {    // $8D8B
        local9 = record_base_d604(record_field_byte(arg1));    // $8D5D
        set_draw_origin(6, ((local10 << 1) + 8));    // $8D63
        draw_string_banked(local9);    // $8D68
        set_draw_origin(22, ((local10 << 1) + 8));    // $8D72
        draw_field(0x9BF6, record_field_word((local9 + 15)));    // $8D81
        local10 = (local10 + 1);    // $8D87
        arg1 = (arg1 + 1);    // $8D8A
    }
    set_draw_origin(16, 16);    // $8D95
    draw_field_m1(0x9BFA, mem_666B);    // $8D9F
    return local10;    // $8DA4
}

// Decompiled from source/2-asm-vm\bank19.asm sub $8DA5
// $8DA5 guild_have_one
// (body @ $8DAA)

word guild_have_one(word arg1, word arg2, word arg3) {
    local11 = 0x666D;    // $8DAD
    if ((*(word*)(((((unsigned)arg3 >> 4) << 1) + local11)) & (1 << (arg3 & 15)))) {    // $8DBF
    draw_box_from_native();    // $8DC2
    win_render_syscall(1);    // $8DC6
    draw_text(0x9C04);    // $8DCD
    return 0;    // $8DD2
    }
L_8DD3:
    draw_window();    // $8DD3
    draw_string(0x9C19, 0);    // $8DDA
    draw_string_banked(arg1);    // $8DDF
    set_draw_origin(8, 23);    // $8DE6
    draw_field_m1(0x9C20, arg2);    // $8DEE
    if (!(prompt_confirm())) goto L_8E42;    // $8DF5
    if (((unsigned)mem_666B < (unsigned)arg2)) {    // $8DFD
    draw_box_from_native();    // $8E00
    win_render_syscall(1);    // $8E04
    draw_text(0x9C3E);    // $8E0B
    } else {
    mem_666B = (mem_666B - arg2);    // $8E18
    *(word*)(((((unsigned)arg3 >> 4) << 1) + local11)) = (*(word*)(((((unsigned)arg3 >> 4) << 1) + local11)) | (1 << (arg3 & 15)));    // $8E2D
    set_tile_cursor(22, 16);    // $8E32
    draw_field_m1(0x9C53, mem_666B);    // $8E3C
    return 1;    // $8E41
L_8E42:
    }
L_8E45:
    guild_as_you_wish();    // $8E42
    return 0;    // $8E46
    }
}

// Decompiled from source/2-asm-vm\bank19.asm sub $8E47
// $8E47 guild_interests
// (body @ $8E4C)

word guild_interests(void) {
    blit_alloc_tiles(2, 3, 28, 17, 0);    // $8E53
    local11 = (((current_port << 1) << 1) + 0xA0E9);    // $8E60
    local5 = guild_draw_value(local11);    // $8E66
    phi_val_8e84 = 0;    // $8E68
    while (((unsigned)local6 < (unsigned)local5)) {    // $8E84
        *(word*)(((local6 << 1) + &local7)) = record_base_d604(record_field_byte((local11 + local6)));    // $8E81
        phi_val_8e84 = (local6 + 1);    // $8E83
        local6 = phi_val_8e84;    // $8E84
    }
    local3 = 0;    // $8E8C
    mem_7063 = 240;    // $8E90
    do {    // $8E93
        draw_box_variant(4, 1);    // $8E95
        win_render_syscall(1);    // $8E9A
        draw_string(0x9C57, 1);    // $8EA2
        local4 = menu_select(5, 8, 2, local5);    // $8EAE
        if ((local4 != 255)) {    // $8EB4
        local6 = record_field_byte((local11 + local4));    // $8EBF
        local3 = guild_have_one(*(word*)(((local4 << 1) + &local7)), record_field_word((record_base_d604(local6) + 15)), local6);    // $8EDB
        }
L_8EDC:
    } while ((local4 != 255));    // $8EE1
    blit_free_tiles(2, 3, 28, 17, 0);    // $8EEB
    return local3;    // $8EF0
}

// Decompiled from source/2-asm-vm\bank19.asm sub $8EF1
// $8EF1 guild_loop_8ef1
// (body @ $8EF6)

word guild_loop_8ef1(word arg1) {
    local9 = 0;    // $8EF7
    local11 = 0x666D;    // $8EFB
    phi_val_8f1f = 0;    // $8EFD
    while (((unsigned)local10 < (unsigned)15)) {    // $8F1F
        if ((*(word*)(((((unsigned)local10 >> 4) << 1) + local11)) & (1 << (local10 & 15)))) {    // $8F11
        *(byte*)((arg1 + local9)) = local10;    // $8F19
        local9 = (local9 + 1);    // $8F1C
        }
L_8F1D:
        phi_val_8f1f = (local10 + 1);    // $8F1E
        local10 = phi_val_8f1f;    // $8F1F
    }
    return local9;    // $8F27
}

// Decompiled from source/2-asm-vm\bank19.asm sub $8F28
// $8F28 guild_loop_8f28
// (body @ $8F2D)

word guild_loop_8f28(word arg1) {
    local9 = 0;    // $8F2E
    local11 = 0x666D;    // $8F32
    phi_val_8f56 = 15;    // $8F34
    while (((unsigned)local10 < (unsigned)31)) {    // $8F56
        if ((*(word*)(((((unsigned)local10 >> 4) << 1) + local11)) & (1 << (local10 & 15)))) {    // $8F48
        *(byte*)((arg1 + local9)) = local10;    // $8F50
        local9 = (local9 + 1);    // $8F53
        }
L_8F54:
        phi_val_8f56 = (local10 + 1);    // $8F55
        local10 = phi_val_8f56;    // $8F56
    }
    return local9;    // $8F5F
}

// Decompiled from source/2-asm-vm\bank19.asm sub $8F60
// $8F60 guild_clear_top
// (body @ $8F65)

word guild_clear_top(word arg1, word arg2) {
    clear_screen_top();    // $8F65
    syscall_id09_syscall_banked_blit_m3(8, 1, 17, 19, 0xA50C, 0xA64F, 232);    // $8F78
    mem_7064 = -1;    // $8F7E
    phi_val_8f9d = 0;    // $8F82
    while (((unsigned)local11 < (unsigned)arg1)) {    // $8F9D
        set_tile_cursor(10, (local11 + 3));    // $8F89
        draw_string_banked(record_base_d604(*(byte*)((arg2 + local11))));    // $8F97
        phi_val_8f9d = (local11 + 1);    // $8F9C
        local11 = phi_val_8f9d;    // $8F9D
    }
    return ((unsigned)local11 < (unsigned)arg1);    // $8FA4
}

// Decompiled from source/2-asm-vm\bank19.asm sub $8FA5
// $8FA5 guild_draw_8fa5
// (body @ $8FAA)

word guild_draw_8fa5(word arg1) {
    *(byte*)(fp - 7) = 225;    // $8FAD
    *(byte*)&local9 = 0;    // $8FB1
    local10 = 0;    // $8FB5
L_8FB6:
    *(byte*)&local8 = (((local10 + 3) << 3) - 1);    // $8FBB
    *(byte*)(fp - 5) = 72;    // $8FC0
    syscall_id13_syscall_set_chr_bank_alt(&local8, 0, 1);    // $8FCA
    local11 = frame_sync(0);    // $8FD3
    helper_ce4d(local11, 10);    // $8FD6
    switch (local11) {    // $8FDB
        case 16: goto L_8FE8;    // $8FDB
        case 32: goto L_900C;    // $8FDB
        default: goto L_8FEF;    // $8FDB
    }    // $8FDB
L_8FE8:
    if (local10) {    // $8FE9
    phi_val_8fee = (local10 - 1);    // $8FED
L_8FEE:
    local10 = phi_val_8fee;    // $8FEE
    }
L_8FEF:
    if ((local11 == 1)) goto L_8FFB;    // $8FF2
    if ((local11 != 2)) goto L_8FB6;    // $8FF8
L_8FFB:
    syscall_id12_syscall_set_chr_banks(0, 1);    // $8FFE
    if ((local11 != 2)) goto L_901E;    // $9005
    return 255;    // $900B
L_900C:
    if (!(((unsigned)local10 < (unsigned)(arg1 - 1)))) goto L_901A;    // $9012
    phi_val_8fee = (local10 + 1);    // $9017
    goto L_8FEE;    // $9017
L_901A:
    phi_val_8fee = 0;    // $901B
    goto L_8FEE;    // $901B
L_901E:
    return local10;    // $901F
}

// Decompiled from source/2-asm-vm\bank19.asm sub $9020
// $9020 guild_dont_deal
// (body @ $9025)

word guild_dont_deal(word arg1) {
    local7 = 0x6662;    // $9028
    local9 = (local7 + 11);    // $902B
    local11 = 0;    // $902D
    local10 = record_base_d604(arg1);    // $9033
    draw_box_variant(4, 1);    // $9036
    win_render_syscall(1);    // $903B
    if (((record_field_byte(((arg1 << 1) + 0xB825)) * 150) > *(word*)(((current_port * 14) + 0x67B2)))) {    // $905B
    draw_text(0x9C6B);    // $9061
    } else {
    local8 = (record_field_word((local10 + 15)) / 2);    // $9071
    draw_field_m1(0x9C96, local8);    // $9076
    if (!(prompt_confirm())) goto L_90AF;    // $907D
    *(word*)((local7 + 9)) = (*(word*)((local7 + 9)) + max_s16((0xEA60 - *(word*)((local7 + 9))), local8));    // $9096
    *(word*)(((((unsigned)arg1 >> 4) << 1) + local9)) = (*(word*)(((((unsigned)arg1 >> 4) << 1) + local9)) & ((1 << (arg1 & 15)) ^ 1));    // $90AC
    local11 = 1;    // $90AE
    }
L_90AF:
    return local11;    // $90B0
    }
}

// Decompiled from source/2-asm-vm\bank19.asm sub $90B1
// $90B1 guild_nothing_sell
// (body @ $90B6)

word guild_nothing_sell(word arg1) {
    *(word*)(fp - 44) = 0;    // $90B7
    *(word*)(fp - 42) = 0;    // $90B9
    *(word*)(fp - 38) = 0;    // $90BB
    do {    // $90BD
        if (arg1) {    // $90BE
        guild_loop_8f28((fp - 32));    // $90C5
        } else {
        }
L_90D4:
        *(word*)(fp - 36) = guild_loop_8ef1((fp - 32));    // $90D4
        if (*(word*)(fp - 36)) goto L_9100;    // $90D8
        draw_box_from_native();    // $90DB
        win_render_syscall(1);    // $90DF
        draw_text(0x9CC1);    // $90E6
        if (*(word*)(fp - 42)) {    // $90EC
        clear_screen_top();    // $90EF
        }
L_90FD:
        blit_free_tiles(2, 2, 28, 18, 0);    // $90F9
        return *(word*)(fp - 38);    // $90FF
L_9100:
        if (*(word*)(fp - 42)) goto L_9113;    // $9102
        blit_alloc_tiles(2, 2, 28, 18, 0);    // $910C
        *(word*)(fp - 42) = 1;    // $9111
L_9113:
        if (*(word*)(fp - 44)) goto L_9122;    // $9115
L_9122:
        guild_clear_top(*(word*)(fp - 36), (fp - 32));    // $911E
        draw_box_variant(4, 1);    // $9124
        win_render_syscall(1);    // $9129
        draw_string(0x9CD7, 1);    // $9131
        *(word*)(fp - 34) = guild_draw_8fa5(*(word*)(fp - 36));    // $913B
        if (!((*(word*)(fp - 34) != 255))) goto L_91C0;    // $9143
        *(word*)(fp - 40) = guild_dont_deal(*(byte*)((*(word*)(fp - 34) + (fp - 32))));    // $9154
        if (*(word*)(fp - 40)) {    // $9158
        *(word*)(fp - 36) = (*(word*)(fp - 36) - 1);    // $915E
        } else {
        *(word*)(fp - 38) = *(word*)(fp - 40);    // $9166
        }
L_9169:
        *(word*)(fp - 44) = 1;    // $9169
        draw_box_variant(4, 1);    // $916D
        if (*(word*)(fp - 36)) goto L_9190;    // $9173
        draw_box_from_native();    // $9176
        win_render_syscall(1);    // $917A
        draw_text(0x9CED);    // $9181
        *(word*)(fp - 38) = (*(word*)(fp - 38) | *(word*)(fp - 40));    // $918B
        goto L_91C9;    // $918D
L_9190:
        if (*(word*)(fp - 40)) {    // $9192
        draw_window();    // $9195
        draw_field_m1(0x9D0D, (arg1 ? 0x9D27 : 0x9D30));    // $91A9
        if (prompt_confirm()) goto L_91B8;    // $91B0
        *(word*)(fp - 34) = 255;    // $91B6
        }
L_91B8:
        *(word*)(fp - 38) = (*(word*)(fp - 38) | *(word*)(fp - 40));    // $91BE
L_91C0:
    } while ((*(word*)(fp - 34) != 255));    // $91C6
L_91C9:
    clear_screen_top();    // $91C9
    blit_free_tiles(2, 2, 28, 18, 0);    // $91D3
    return *(word*)(fp - 38);    // $91D9
        }
        }
}

// Decompiled from source/2-asm-vm\bank19.asm sub $91DA
// $91DA guild_which_one
// (body @ $91DF)

word guild_which_one(void) {
    *(word*)(fp - 3) = 0;    // $91E0
    do {    // $91E2
        draw_box_variant(4, 1);    // $91E4
        win_render_syscall(1);    // $91E9
        draw_string(0x9D49, 1);    // $91F1
        *(byte*)(fp - 1) = draw_tile_grid(8, 23, 7, 1, 0x9D36, 2, 1);    // $9203
        if ((*(byte*)(fp - 1) != 255)) {    // $920D
        mem_7063 = 240;    // $9213
        *(word*)(fp - 3) = guild_nothing_sell(*(byte*)(fp - 1));    // $921E
        }
L_9220:
        if ((*(byte*)(fp - 1) == 255)) break;    // $9227
    } while (!(*(word*)(fp - 3)));    // $922C
L_922F:
    return *(word*)(fp - 3);    // $9231
}

// Decompiled from source/2-asm-vm\bank19.asm sub $9232
// $9232 guild_quest_item
// (body @ $9237)

word guild_quest_item(void) {
    local8 = 0x666D;    // $923A
    if (!((quest_flags & 8))) goto L_92FD;    // $9240
    if (!((quest_flags & 1))) goto L_92FD;    // $9248
    if ((quest_target_port != current_port)) goto L_92FD;    // $9254
    if ((mem_7053 != 2)) goto L_92FD;    // $925C
    if (!((*(word*)((local8 + 2)) & 0x8000))) goto L_92FD;    // $9266
    idx_over_20(13);    // $926A
    audio_param_gated(1);    // $926F
    draw_box_variant(4, 1);    // $9275
    draw_window();    // $9279
    draw_string(0x9D81, 0);    // $9280
    draw_string_banked(record_base_d604(mem_7055));    // $928D
    draw_string(0x9D98, 0);    // $9295
    win_close();    // $9299
    draw_window();    // $929C
    draw_string(0x9DA6, 1);    // $92A3
    if (!(((unsigned)mem_6F72 < (unsigned)0xC350))) goto L_92C8;    // $92AE
    mem_6F72 = (mem_6F72 + max_s16((0xC350 - mem_6F72), 0x07D0));    // $92C5
L_92C8:
    mem_6F70 = max_s16((mem_6F70 + mem_7058), 0x2710);    // $92D7
    win_open();    // $92DA
    *(word*)(((((unsigned)mem_7055 >> 4) << 1) + local8)) = (*(word*)(((((unsigned)mem_7055 >> 4) << 1) + local8)) & ((1 << (mem_7055 & 15)) ^ 1));    // $92F6
    quest_flags = 0;    // $92F8
    return 0;    // $92FC
L_92FD:
    if (!((quest_flags & 8))) goto L_93BB;    // $9302
    if (!((quest_flags & 1))) goto L_93BB;    // $930A
    if ((quest_target_port != current_port)) goto L_93BB;    // $9316
    if ((mem_7053 != 2)) goto L_93BB;    // $931E
    idx_over_20(13);    // $9322
    audio_param_gated(1);    // $9327
    draw_box_variant(4, 1);    // $932D
    win_render_syscall(1);    // $9332
    draw_string(0x9DDE, 1);    // $933A
    win_open();    // $933E
    draw_window();    // $9341
    draw_string(0x9E00, 1);    // $9348
    if (!(prompt_confirm())) goto L_9363;    // $934F
    draw_window();    // $9352
    draw_string(0x9E23, 1);    // $9359
    win_open();    // $935D
    goto L_93B9;    // $9360
L_9363:
    draw_window();    // $9363
    draw_string(0x9E44, 1);    // $936A
    if (!(((unsigned)mem_6F70 < (unsigned)mem_7058))) goto L_938D;    // $9375
    win_open();    // $9378
    mem_6F70 = 0;    // $937C
    draw_window();    // $937F
    draw_string(0x9E64, 1);    // $9386
    goto L_9398;    // $938A
L_938D:
    mem_6F70 = (mem_6F70 - mem_7058);    // $9395
L_9398:
    win_open();    // $9398
    quest_flags = 0;    // $939C
    mem_6F72 = (mem_6F72 - max_s16(mem_6F72, ((load_operand16_14(10) * 5) + 200)));    // $93B6
L_93B9:
    return 0;    // $93BA
L_93BB:
    if ((quest_flags & 8)) goto L_9494;    // $93C0
    if (!((quest_flags & 1))) goto L_9494;    // $93C8
    if ((quest_target_port != current_port)) goto L_9494;    // $93D4
    if ((mem_7053 != 2)) goto L_9494;    // $93DC
    idx_over_20(13);    // $93E0
    audio_param_gated(1);    // $93E5
    draw_box_variant(4, 1);    // $93EB
    win_render_syscall(1);    // $93F0
    draw_string(0x9E8C, 1);    // $93F8
    win_open();    // $93FC
    draw_window();    // $93FF
    draw_string(0x9EBD, 0);    // $9406
    draw_string_banked(record_base_d604(mem_7055));    // $9413
    draw_string(0x9ED7, 0);    // $941B
    win_close();    // $941F
    draw_window();    // $9422
    draw_string(0x9EE8, 1);    // $9429
    win_open();    // $942D
    draw_window();    // $9430
    local9 = (((load_operand16_14(2) + mem_6F74) + 1) * 40);    // $9442
    draw_field_m1(0x9F12, local9);    // $9447
    if (!(prompt_confirm())) goto L_9480;    // $944E
    draw_window();    // $9451
    draw_field_m1(0x9F30, ((unsigned)local9 >> 1));    // $945B
    mem_6F70 = max_s16((((unsigned)local9 >> 1) + mem_6F70), 0x2710);    // $946E
    mem_7058 = ((unsigned)local9 >> 1);    // $9474
    phi_val_948c = (quest_flags | 8);    // $947D
    goto L_948C;    // $947D
L_9480:
    draw_window();    // $9480
    draw_string(0x9F67, 1);    // $9487
    phi_val_948c = 0;    // $948B
L_948C:
    quest_flags = phi_val_948c;    // $948C
    win_open();    // $948F
    return 0;    // $9493
L_9494:
    local10 = 0;    // $9495
L_9496:
    draw_box_variant(4, 1);    // $9498
    win_render_syscall(1);    // $949D
    draw_string(0x9F79, 1);    // $94A5
    local11 = draw_tile_grid(8, 23, 10, 2, 0x9D54, 3, 2);    // $94B7
    if ((local11 == 255)) goto L_94C9;    // $94BD
    local10 = (*(*(word*)(((local11 << 1) + 0x9D5A))))();    // $94C8
L_94C9:
    if ((local11 != 255)) goto L_9496;    // $94CE
    guild_as_you_wish();    // $94D1
    return 0;    // $94D5
}
