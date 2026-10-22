// Decompiled from source/2-asm-vm\bank02.asm sub $8003
// $8003 clear_ui_state
// (body @ $8008)

word clear_ui_state(void) {
    window_stack_lo = 0;    // $8009
    window_stack_depth = 0;    // $800D
    mem_728A = 0;    // $8011
    mem_728C = 32;    // $8016
    mem_728E = 0;    // $801A
    os_mode_flags = 4;    // $801E
    mem_7290 = 0;    // $8022
    // ext_op ext_op_F246
    // TODO: trigger_syscall_9X
    return (0 + 2);    // $802F
}

// Decompiled from source/2-asm-vm\bank02.asm sub $8030
// $8030 init_entry
// (body @ $8035)

word init_entry(void) {
    os_mode_flags = 255;    // $8038
    reset_all_chr();    // $803B
    syscall_id07_syscall_queue_vram_row(1, 0, 0);    // $8042
    draw_string(0x8FC2, 0);    // $804A
    return set_tile_cursor(0, 0);    // $8054
}

// Decompiled from source/2-asm-vm\bank02.asm sub $8055
// $8055 char_create_helper_a
// (body @ $805A)

word char_create_helper_a(void) {
    copy_from_bank(1, 249, 0x9062, 0x7062, ((0x7285 - 0x7062) + 1));    // $806D
    current_region = 255;    // $8074
    copy_from_bank_dc80(0x72A0, 21, 0);    // $807D
    copy_from_bank_dc80(0x72B6, 196, 0);    // $8088
    memcpy_ptr(0xF35E, 0x7382, 8);    // $8093
    syscall_id05_syscall_set_chr_banks(0x7382);    // $809B
    ui_shared_var_737d = 0;    // $80A0
    chr_alloc_count = 255;    // $80A6
    blit_pos_y = 255;    // $80A9
    blit_pos_x = 255;    // $80AC
    blit_frame_state = -1;    // $80B1
    return -1;    // $80B4
}

// Decompiled from source/2-asm-vm\bank02.asm sub $80B5
// $80B5 char_create_init
// (body @ $80BA)

word char_create_init(void) {
    clear_ui_state();    // $80BA
    char_create_helper_a();    // $80BD
    entry_init_nametable();    // $80C0
    init_entry();    // $80C3
    entry_start_audio();    // $80C6
    upload_sprite_block();    // $80C9
    return reset_all_chr();    // $80CF
}

// Decompiled from source/2-asm-vm\bank02.asm sub $80D0
// $80D0 load_char_portrait
// (body @ $80D5)

word load_char_portrait(word arg1, word arg2) {
    copy_from_bank(2, 250, arg2, (fp - 15), 15);    // $80DF
    arg2 = (fp - 15);    // $80E6
    goto L_80FE;    // $80E7
L_80EA:
    if ((!((*(byte*)(arg1) == *(byte*)(arg2))))) return 0;    // $80F1
    arg1 = (arg1 + 1);    // $80F8
    arg2 = (arg2 + 1);    // $80FC
L_80FE:
    if (*(byte*)(arg1)) goto L_80EA;    // $8100
    if (*(byte*)(arg2)) goto L_80EA;    // $8105
    return 1;    // $8109
}

// Decompiled from source/2-asm-vm\bank02.asm sub $810A
// $810A load_save_data
// (body @ $810F)

word load_save_data(void) {
    return copy_from_bank(1, 249, 0x8000, 0x6000, 0x1061);    // $8120
}

// Decompiled from source/2-asm-vm\bank02.asm sub $8121
// $8121 title_menu
// (body @ $8126)

word title_menu(void) {
    syscall_id09_syscall_banked_blit_m3(1, 2, 30, 26, 0xB2DE, 0xB5EA, 226);    // $8136
    syscall_id08_syscall_queue_ppu_transfer(7, 7, 18, 8, 0, 0);    // $8142
    set_tile_cursor(9, 8);    // $8148
    draw_string(0x8FDA, 1);    // $8150
    set_tile_cursor(9, 11);    // $8156
    draw_string(0x8FE8, 1);    // $815E
    syscall_id09_syscall_banked_blit_m3(6, 22, 20, 6, 0xAC7A, 0xACF2, 231);    // $8172
    set_tile_cursor(7, 23);    // $8179
    draw_string(0x8FF3, 1);    // $8181
    syscall_id06_syscall_set_sprite_block(0x8FCA, 0, 16);    // $818C
    return syscall_id06_syscall_set_sprite_block(0xF376, 16, 16);    // $819C
}

// Decompiled from source/2-asm-vm\bank02.asm sub $819D
// $819D draw_ok_prompt
// (body @ $81A2)

word draw_ok_prompt(word arg1) {
    set_tile_cursor(7, 25);    // $81A5
    draw_string(arg1, 1);    // $81AB
    draw_string(0x8FFF, 1);    // $81B3
    local11 = prompt_confirm();    // $81BA
    return local11;    // $81BC
}

// Decompiled from source/2-asm-vm\bank02.asm sub $81BD
// $81BD char_create
// (body @ $81C2)

word char_create(void) {
    load_save_data();    // $81C2
    syscall_id09_syscall_banked_blit_m3(1, 2, 30, 26, 0xB2DE, 0xB5EA, 226);    // $81D5
L_81ED:
    syscall_id09_syscall_banked_blit_m3(2, 22, 28, 6, 0xA004, 0xA0AC, 231);    // $81E9
    set_tile_cursor(7, 25);    // $81F0
L_81FC:
    draw_string(str_enter_hero_name, 1);    // $81F8
    *(byte*)(fp - 7) = cargo_load_data(12, (fp - 34));    // $820C
    if (*(byte*)(fp - 7)) {    // $8212
    *(word*)(fp - 53) = 1;    // $8216
L_8218:
    if (load_char_portrait((fp - 34), *(word*)(((*(word*)(fp - 53) * 7) + 0x6542)))) {    // $822A
    *(byte*)(fp - 7) = 30;    // $822F
    syscall_id08_syscall_queue_ppu_transfer(3, 25, 26, 2, 0, 0);    // $823B
    set_tile_cursor(6, 25);    // $8242
    }
L_824E:
    draw_string(0x9046, 1);    // $824A
    *(word*)(fp - 53) = (*(word*)(fp - 53) + 1);    // $8251
    if ((*(word*)(fp - 53) < 41)) goto L_8218;    // $8258
    }
L_825B:
    if ((*(byte*)(fp - 7) == 30)) goto L_81FC;    // $8261
    if (*(byte*)(fp - 7)) goto L_8278;    // $8267
    set_tile_cursor(10, 24);    // $826D
L_8278:
    draw_string_banked(0x6BAE);    // $8274
    if (!(draw_ok_prompt(0x905B))) goto L_81ED;    // $827F
    if (*(byte*)(fp - 7)) {    // $8285
    phi_8292_0 = (fp - 34);    // $828C
    } else {
    phi_8292_0 = 0x9064;    // $828F
    }
L_8292:
    str_copy(0x6BAE, phi_8292_0);    // $8295
    mem_6542 = 0x6BAE;    // $829C
    syscall_id09_syscall_banked_blit_m3(1, 2, 30, 26, 0xB2DE, 0xB5EA, 226);    // $82AF
    syscall_id08_syscall_queue_ppu_transfer(9, 4, 14, 17, 0, 0);    // $82BB
    set_tile_cursor(10, 5);    // $82C1
L_82CC:
    draw_string_banked(mem_6542);    // $82C8
    goto L_8321;    // $82CD
L_82D0:
    *(byte*)((*(byte*)(fp - 7) + &local9)) = (load_operand16_14(30) + 40);    // $82E2
    set_tile_cursor(10, ((*(byte*)(fp - 7) << 1) + 6));    // $82EA
    draw_field_m1(0x9070, *(word*)(((*(byte*)(fp - 7) << 1) + 0x9002)));    // $82FB
    set_tile_cursor(19, ((*(byte*)(fp - 7) << 1) + 6));    // $8307
    draw_field_m1(0x9073, *(byte*)((*(byte*)(fp - 7) + &local9)));    // $8319
L_8321:
    *(byte*)(fp - 7) = (*(byte*)(fp - 7) + 1);    // $8321
    if (((unsigned)*(byte*)(fp - 7) < (unsigned)5)) goto L_82D0;    // $8329
    *(byte*)&local8 = ((unsigned)(load_operand16_14(40) + 1) / (unsigned)40);    // $8336
    *(byte*)(fp - 1) = ((((load_operand16_14(50) + 20) * *(byte*)&local8) + load_operand16_14(30)) + 40);    // $8352
    set_tile_cursor(10, ((*(byte*)(fp - 7) << 1) + 7));    // $835C
    draw_field_m1(str_bonus_points, *(byte*)(fp - 1));    // $8367
    syscall_id09_syscall_banked_blit_m3(6, 22, 20, 6, 0xAC7A, 0xACF2, 231);    // $837B
    if (!(draw_ok_prompt(0x9084))) goto L_82CC;    // $8386
L_8393:
    copy_from_bank_dc80((fp - 19), 5, 0);    // $838F
    syscall_id09_syscall_banked_blit_m3(6, 22, 20, 6, 0xAC7A, 0xACF2, 231);    // $83A3
    set_tile_cursor(7, 23);    // $83AA
    draw_string(0x908D, 1);    // $83B2
    set_tile_cursor(7, 25);    // $83B9
    draw_string(0x909B, 1);    // $83C1
    goto L_8409;    // $83C6
L_83C9:
    *(byte*)(fp - 1) = (*(byte*)(fp - 1) + *(byte*)((*(byte*)(fp - 7) + (fp - 19))));    // $83D8
    *(byte*)((*(byte*)(fp - 7) + (fp - 19))) = 0;    // $83E6
    set_tile_cursor(19, ((*(byte*)(fp - 7) << 1) + 6));    // $83EF
    draw_field_m1(0x90A8, *(byte*)((*(byte*)(fp - 7) + &local9)));    // $8401
L_8409:
    *(byte*)(fp - 7) = (*(byte*)(fp - 7) + 1);    // $8409
    if (((unsigned)*(byte*)(fp - 7) < (unsigned)5)) goto L_83C9;    // $8411
    set_tile_cursor(19, ((*(byte*)(fp - 7) << 1) + 7));    // $841C
    draw_field_m1(0x90AC, *(byte*)(fp - 1));    // $8427
    *(word*)(fp - 51) = 0;    // $842C
    *(word*)(fp - 53) = 12;    // $842F
L_8431:
    *(byte*)&local6 = ((((*(word*)(fp - 51) << 1) + 7) << 3) - 1);    // $8438
    *(byte*)(fp - 11) = 225;    // $843E
    *(byte*)&local7 = 0;    // $8442
    *(byte*)(fp - 9) = 72;    // $8447
    syscall_id13_syscall_set_chr_bank_alt(&local6, 0, 1);    // $8451
    helper_ce4d(*(byte*)&local8, *(word*)(fp - 53));    // $845B
    *(word*)(fp - 53) = 12;    // $8460
    *(byte*)&local8 = frame_sync(0);    // $8467
    switch (frame_sync(0)) {    // $846A
    case 16:
        *(word*)(fp - 51) = (*(word*)(fp - 51) - 1);    // $848A
        if ((*(word*)(fp - 51) < 0)) {    // $848E
L_8492:
        *(word*)(fp - 51) = 4;    // $8492
        }
    default:
L_8494:
        if (*(byte*)(fp - 1)) goto L_8431;    // $8497
        syscall_id12_syscall_set_chr_banks(0, 1);    // $849D
        syscall_id09_syscall_banked_blit_m3(6, 22, 20, 6, 0xAC7A, 0xACF2, 231);    // $84B1
        if (!(draw_ok_prompt(0x90C0))) goto L_8393;    // $84BC
        local5 = 0x6BBF;    // $84C2
        goto L_85CD;    // $84C4
    case 32:
        *(word*)(fp - 51) = (*(word*)(fp - 51) + 1);    // $84CA
        if (!((*(word*)(fp - 51) > 4))) goto L_8494;    // $84CE
        goto L_8492;    // $84D2
    case 2:
    case 128:
        if (!(*(byte*)((*(word*)(fp - 51) + (fp - 19))))) goto L_8494;    // $84DE
        *(byte*)((*(word*)(fp - 51) + (fp - 19))) = (*(byte*)((*(word*)(fp - 51) + (fp - 19))) - 1);    // $84EC
        *(byte*)(fp - 1) = (*(byte*)(fp - 1) + 1);    // $84F1
        set_tile_cursor(19, ((*(word*)(fp - 51) << 1) + 6));    // $84FB
        draw_field_m1(0x90B0, (*(byte*)((*(word*)(fp - 51) + &local9)) + *(byte*)((*(word*)(fp - 51) + (fp - 19)))));    // $8518
        set_tile_cursor(19, ((*(byte*)(fp - 7) << 1) + 7));    // $8524
        phi_852f_0 = 0x90B4;    // $852C
        phi_852f_1 = *(byte*)(fp - 1);    // $852C
L_852F:
        draw_field_m1(phi_852f_0, phi_852f_1);    // $852F
        *(word*)(fp - 53) = 1;    // $8534
        goto L_8494;    // $8536
    case 1:
    case 64:
        if (!(*(byte*)(fp - 1))) goto L_8494;    // $853C
        if (!(((unsigned)(*(byte*)((*(word*)(fp - 51) + (fp - 19))) + *(byte*)((*(word*)(fp - 51) + &local9))) < (unsigned)100))) goto L_8494;    // $8557
        *(byte*)((*(word*)(fp - 51) + (fp - 19))) = (*(byte*)((*(word*)(fp - 51) + (fp - 19))) + 1);    // $8565
        *(byte*)(fp - 1) = (*(byte*)(fp - 1) - 1);    // $856A
        set_tile_cursor(19, ((*(word*)(fp - 51) << 1) + 6));    // $8574
        draw_field_m1(0x90B8, (*(byte*)((*(word*)(fp - 51) + &local9)) + *(byte*)((*(word*)(fp - 51) + (fp - 19)))));    // $8591
        set_tile_cursor(19, ((*(byte*)(fp - 7) << 1) + 7));    // $859D
        phi_852f_0 = 0x90BC;    // $85A8
        phi_852f_1 = *(byte*)(fp - 1);    // $85A8
        goto L_852F;    // $85A8
    }
L_85AB:
    *(byte*)((*(byte*)(fp - 7) + local5)) = (*(byte*)((*(byte*)(fp - 7) + &local9)) + *(byte*)((*(byte*)(fp - 7) + (fp - 19))));    // $85C8
L_85CD:
    *(byte*)(fp - 7) = (*(byte*)(fp - 7) + 1);    // $85CD
    if (((unsigned)*(byte*)(fp - 7) < (unsigned)5)) goto L_85AB;    // $85D5
    syscall_id09_syscall_banked_blit_m3(1, 2, 30, 26, 0xB2DE, 0xB5EA, 226);    // $85E8
L_8600:
    syscall_id09_syscall_banked_blit_m3(2, 22, 28, 6, 0xA004, 0xA0AC, 231);    // $85FC
    set_tile_cursor(5, 25);    // $8603
    draw_string(str_enter_flagship, 1);    // $860B
    *(byte*)(fp - 7) = cargo_load_data(7, (fp - 49));    // $861F
    if (*(byte*)(fp - 7)) goto L_863C;    // $8625
    set_tile_cursor(13, 23);    // $862B
L_863C:
    draw_field_m1(0x90E0, record_base_6b1c(0));    // $8638
    if (!(draw_ok_prompt(0x90E3))) goto L_8600;    // $8643
    if (*(byte*)(fp - 7)) {    // $8649
    }
L_865A:
    str_copy(record_base_6b1c(0), (fp - 49));    // $8656
    syscall_id09_syscall_banked_blit_m3(1, 2, 30, 26, 0xB2DE, 0xB5EA, 226);    // $866A
    syscall_id08_syscall_queue_ppu_transfer(9, 4, 14, 17, 0, 0);    // $8676
    syscall_id09_syscall_banked_blit_m3(2, 22, 28, 6, 0xA004, 0xA0AC, 231);    // $868A
    set_tile_cursor(10, 5);    // $8690
    draw_string_banked(mem_6542);    // $8697
    goto L_86D7;    // $869C
L_869F:
    set_tile_cursor(10, ((*(byte*)(fp - 7) << 1) + 6));    // $86A6
    draw_string(*(word*)(((*(byte*)(fp - 7) << 1) + 0x9002)), 1);    // $86B5
    set_tile_cursor(19, ((*(byte*)(fp - 7) << 1) + 6));    // $86C1
    draw_field_m1(0x90EC, *(byte*)((*(byte*)(fp - 7) + local5)));    // $86CF
L_86D7:
    *(byte*)(fp - 7) = (*(byte*)(fp - 7) + 1);    // $86D7
    if (((unsigned)*(byte*)(fp - 7) < (unsigned)5)) goto L_869F;    // $86DF
    set_tile_cursor(10, ((*(byte*)(fp - 7) << 1) + 6));    // $86E9
    draw_field_m1(0x90F0, record_base_6b1c(0));    // $86F6
    return draw_ok_prompt(0x90F9);    // $8701
    }
}

// Decompiled from source/2-asm-vm\bank02.asm sub $8702
// $8702 char_create_loop
// (body @ $8707)

word char_create_loop(void) {
    *(word*)(fp - 3) = char_create();    // $870A
    while (((unsigned)*(byte*)(fp - 1) < (unsigned)20)) {    // $8728
        *(word*)(fp - 5) = ((*(byte*)(fp - 1) * 51) + 0x6004);    // $871A
        *(word*)((*(word*)(fp - 5) + 7)) = (*(word*)(fp - 5) + 9);    // $8723
        *(byte*)(fp - 1) = (*(byte*)(fp - 1) + 1);    // $8728
    }
    return *(word*)(fp - 3);    // $8736
}

// Decompiled from source/2-asm-vm\bank02.asm sub $8737
// $8737 char_create_helper_b
// (body @ $873C)

word char_create_helper_b(void) {
    syscall_id03_syscall_set_prg_bank(0, 1);    // $873F
    if ((mem_7060 != 75)) {    // $8749
    syscall_id03_syscall_set_prg_bank(0, 5);    // $874F
    syscall_id09_syscall_banked_blit_m3(6, 22, 20, 6, 0xAC7A, 0xACF2, 231);    // $8763
    set_tile_cursor(7, 23);    // $876A
    draw_string(0x9102, 1);    // $8772
    local11 = 0;    // $8777
    do {    // $8778
        local11 = (local11 + 1);    // $877A
    } while (((unsigned)local11 < (unsigned)0x01F4));    // $8780
    return 0;    // $8784
    }
L_8785:
    syscall_id03_syscall_set_prg_bank(0, 5);    // $8788
    copy_from_bank(1, 1, 0x8000, 0x6000, 0x1061);    // $8797
    syscall_id09_syscall_banked_blit_m3(6, 22, 20, 6, 0xAC7A, 0xACF2, 231);    // $87AB
    set_tile_cursor(7, 24);    // $87B2
    draw_string(0x9110, 1);    // $87BA
    return 1;    // $87BF
}

// Decompiled from source/2-asm-vm\bank02.asm sub $87C0
// $87C0 char_create_stats
// (body @ $87C5)

word char_create_stats(void) {
    local11 = char_create_helper_b();    // $87C8
    return local11;    // $87CA
}

// Decompiled from source/2-asm-vm\bank02.asm sub $87CB
// $87CB entry_upload_sprites
// (body @ $87D0)

word entry_upload_sprites(void) {
L_87D3:
    upload_sprite_block();    // $87D0
    title_menu();    // $87D3
    local9 = menu_pick(0x911D, 2, 8, 9, 0, 3, 2, 0);    // $87E4
    switch (local9) {    // $87E6
    case 1:
        local11 = char_create_loop();    // $87F6
        phi_val_87f8 = 1;    // $87F7
L_87F8:
        local10 = phi_val_87f8;    // $87F8
    default:
        if (!(local11)) goto L_87D3;    // $87FA
        return local10;    // $87FE
    case 2:
        local11 = char_create_stats();    // $8802
        phi_val_87f8 = 0;    // $8804
        goto L_87F8;    // $8804
    }
}

// Decompiled from source/2-asm-vm\bank02.asm sub $8807
// $8807 entry_start_audio
// (body @ $880C)

word entry_start_audio(void) {
    idx_over_20(2);    // $880D
    audio_param_gated(1);    // $8812
    if (entry_upload_sprites()) {    // $8819
    }
L_881F:
    entry_sprite_anim();    // $881C
    if ((os_mode_flags & 4)) goto L_882D;    // $8824
L_882D:
    syscall_id23_syscall_audio_reset();    // $8829
    ship_sail_state = 0;    // $882E
    mem_7299 = 0;    // $8832
    mem_729A = 0;    // $8836
    mem_729B = 0;    // $883A
    mem_7068 = 255;    // $8840
    return 255;    // $8843
}

// Decompiled from source/2-asm-vm\bank02.asm sub $8844
// $8844 entry_countdown_a
// (body @ $8849)

word entry_countdown_a(word arg1) {
L_8849:
    arg1 = (arg1 - 1);    // $884B
    if (!((arg1 + 1))) goto L_8869;    // $884D
    if (syscall_id16_syscall_read_controller(0)) {    // $8857
    mem_7390 = 1;    // $885B
    return 1;    // $885E
    }
L_885F:
    syscall_id17_syscall_busy_wait(1);    // $8862
    goto L_8849;    // $8866
L_8869:
    return syscall_id17_syscall_busy_wait(1);    // $8869
}

// Decompiled from source/2-asm-vm\bank02.asm sub $886A
// $886A entry_format_text
// (body @ $886F)

word entry_format_text(word arg1) {
L_887A:
    str_copy((fp - 7), 0x9BFC);    // $8876
    *(byte*)(fp - 1) = *(byte*)(arg1);    // $887C
    if (!(*(byte*)(arg1))) goto L_8946;    // $887F
    goto L_892C;    // $8885
L_8888:
    draw_string(0x9BFF, 1);    // $888C
    goto L_8939;    // $8890
L_8893:
    arg1 = (arg1 + 1);    // $8895
    *(byte*)&local11 = *(byte*)(arg1);    // $8898
    goto L_88E7;    // $889B
L_889E:
    *(byte*)&local9 = *(byte*)&local11;    // $88A1
    goto L_8908;    // $88A4
L_88A7:
    entry_countdown_a(55);    // $88A9
    goto L_8908;    // $88AD
L_88B0:
    entry_countdown_a(75);    // $88B2
    goto L_8908;    // $88B6
L_88B9:
    resolve_field_ptr(5, 6, *(byte*)((mem_7392 + 0x9BF8)), 1);    // $88C5
    mem_7392 = (mem_7392 + 1);    // $88CD
    goto L_8908;    // $88D0
L_88D3:
    entry_format_text(0x7393);    // $88D6
    goto L_8908;    // $88DA
L_88DD:
    entry_format_text(0x73A2);    // $88E0
    goto L_8908;    // $88E4
L_88E7:
    switch (entry_format_text(0x73A2)) {    // $88E7
        case 70: goto L_88DD;    // $88E7
        case 72: goto L_889E;    // $88E7
        case 75: goto L_889E;    // $88E7
        case 80: goto L_88B9;    // $88E7
        case 83: goto L_88D3;    // $88E7
        case 87: goto L_88A7;    // $88E7
        case 88: goto L_88B0;    // $88E7
        default: goto L_8908;    // $88E7
    }    // $88E7
L_8908:
    goto L_8939;    // $8908
L_890B:
    *(byte*)&local11 = *(byte*)((arg1 + 1));    // $890E
    *(byte*)(fp - 5) = *(byte*)(fp - 1);    // $8914
    *(byte*)&local10 = 0;    // $8918
    draw_string((fp - 7), 1);    // $8920
    entry_countdown_a(6);    // $8925
    goto L_8939;    // $8929
L_892C:
    switch (entry_countdown_a(6)) {    // $892C
        case 10: goto L_8888;    // $892C
        case 27: goto L_8893;    // $892C
        default: goto L_890B;    // $892C
    }    // $892C
L_8939:
    arg1 = (arg1 + 1);    // $893B
    if (!(!(mem_7390))) return mem_7390;    // $893F
    goto L_887A;    // $8943
L_8946:
    return mem_7390;    // $8946
}

// Decompiled from source/2-asm-vm\bank02.asm sub $8947
// $8947 entry_sprite_anim
// (body @ $894C)

word entry_sprite_anim(void) {
    upload_sprite_block();    // $894C
    syscall_id07_syscall_queue_vram_row(0, 0, 0);    // $8953
    syscall_id21_syscall_play_music(0);    // $895A
    syscall_id22_syscall_set_sound_param(1);    // $8961
    syscall_id06_syscall_set_sprite_block(0x97C6, 0, 16);    // $896C
    syscall_id06_syscall_set_sprite_block(0xF376, 16, 16);    // $8978
    syscall_id09_syscall_banked_blit_m3(5, 12, 22, 10, 0xA61C, 0xA6F8, 226);    // $898B
    mem_7392 = 0;    // $8990
    str_copy(0x7393, mem_6542);    // $8999
    str_copy(0x73A2, record_base_6b1c(0));    // $89A6
    local11 = 0;    // $89AB
    do {    // $89AC
        mem_7390 = 0;    // $89AD
        syscall_id08_syscall_queue_ppu_transfer(6, 14, 20, 7, 0, 0);    // $89B8
        draw_string(0x9C01, 1);    // $89C0
        entry_format_text(*(word*)(((local11 << 1) + 0x97D6)));    // $89CC
        local11 = (local11 + 1);    // $89D2
    } while ((local11 < 22));    // $89D7
    reset_chr_alloc();    // $89DA
    syscall_id07_syscall_queue_vram_row(0, 0, 0);    // $89E1
    syscall_id05_syscall_set_chr_banks(0x7382);    // $89E9
    return syscall_id06_syscall_set_sprite_block(0xF366, 0, 32);    // $89F8
}

// Decompiled from source/2-asm-vm\bank02.asm sub $89F9
// $89F9 entry_countdown_b
// (body @ $89FE)

word entry_countdown_b(word arg1) {
L_89FE:
    arg1 = (arg1 - 1);    // $8A00
    if (!((arg1 + 1))) goto L_8A20;    // $8A02
    if ((syscall_id16_syscall_read_controller(0) == 8)) {    // $8A0E
    mem_7390 = 1;    // $8A12
    return 1;    // $8A15
    }
L_8A16:
    syscall_id17_syscall_busy_wait(1);    // $8A19
    goto L_89FE;    // $8A1D
L_8A20:
    return syscall_id17_syscall_busy_wait(1);    // $8A20
}

// Decompiled from source/2-asm-vm\bank02.asm sub $8A21
// $8A21 entry_anim_1
// (body @ $8A26)

word entry_anim_1(void) {
    local9 = 0;    // $8A27
L_8A28:
    if ((local9 != 2)) {    // $8A2B
    memcpy_ptr(0x9C09, &local10, 4);    // $8A36
    local8 = 0;    // $8A3B
L_8A3C:
    *(byte*)((local8 + &local10)) = (*(byte*)((local8 + &local10)) & *(byte*)((local9 + 0x915E)));    // $8A4E
    local8 = (local8 + 1);    // $8A51
    if ((local8 < 4)) goto L_8A3C;    // $8A55
    syscall_id06_syscall_set_sprite_block(&local10, 0, 4);    // $8A5F
    }
L_8A6A:
    syscall_id17_syscall_busy_wait(10);    // $8A66
    local9 = (local9 + 1);    // $8A6C
    if ((local9 < 4)) goto L_8A28;    // $8A70
    return (local9 < 4);    // $8A73
}

// Decompiled from source/2-asm-vm\bank02.asm sub $8A74
// $8A74 entry_anim_2
// (body @ $8A79)

word entry_anim_2(void) {
    local9 = 0;    // $8A7A
L_8A7B:
    memcpy_ptr(0x9C0D, &local10, 4);    // $8A83
    local8 = 0;    // $8A88
L_8A89:
    *(byte*)((local8 + &local10)) = (*(byte*)((local8 + &local10)) & *(byte*)((local9 + 0x915E)));    // $8A9B
    local8 = (local8 + 1);    // $8A9E
    if ((local8 < 4)) goto L_8A89;    // $8AA2
    syscall_id06_syscall_set_sprite_block(&local10, 0, 4);    // $8AAC
    entry_countdown_b(9);    // $8AB1
    if (!(!(mem_7390))) return mem_7390;    // $8AB8
    local9 = (local9 + 1);    // $8ABE
    if ((local9 < 4)) goto L_8A7B;    // $8AC2
    return (local9 < 4);    // $8AC5
}

// Decompiled from source/2-asm-vm\bank02.asm sub $8AC6
// $8AC6 entry_anim_3
// (body @ $8ACB)

word entry_anim_3(void) {
    local3 = 0;    // $8ACC
L_8ACD:
    if ((local3 != 2)) {    // $8AD0
    memcpy_ptr(0x912E, &local4, 16);    // $8ADC
    local2 = 0;    // $8AE1
L_8AE2:
    *(byte*)((local2 + &local4)) = (*(byte*)((local2 + &local4)) & *(byte*)((local3 + 0x915E)));    // $8AF4
    local2 = (local2 + 1);    // $8AF7
    if ((local2 < 16)) goto L_8AE2;    // $8AFC
    syscall_id06_syscall_set_sprite_block(&local4, 0, 16);    // $8B07
    }
L_8B10:
    entry_countdown_b(10);    // $8B0C
    local3 = (local3 + 1);    // $8B12
    if ((local3 < 4)) goto L_8ACD;    // $8B16
    return (local3 < 4);    // $8B19
}

// Decompiled from source/2-asm-vm\bank02.asm sub $8B1A
// $8B1A entry_anim_4
// (body @ $8B1F)

word entry_anim_4(void) {
    local3 = 0;    // $8B20
L_8B21:
    memcpy_ptr(0x9C11, &local4, 16);    // $8B2A
    local2 = 0;    // $8B2F
L_8B30:
    *(byte*)((local2 + &local4)) = (*(byte*)((local2 + &local4)) & *(byte*)((local3 + 0x9162)));    // $8B42
    local2 = (local2 + 1);    // $8B45
    if ((local2 < 4)) goto L_8B30;    // $8B49
    syscall_id06_syscall_set_sprite_block(&local4, 0, 4);    // $8B53
    entry_countdown_b(9);    // $8B58
    if (!(!(mem_7390))) return mem_7390;    // $8B5F
    local3 = (local3 + 1);    // $8B65
    if ((local3 < 4)) goto L_8B21;    // $8B69
    return (local3 < 4);    // $8B6C
}

// Decompiled from source/2-asm-vm\bank02.asm sub $8B6D
// $8B6D entry_anim_5
// (body @ $8B72)

word entry_anim_5(void) {
    local3 = 0;    // $8B73
L_8B74:
    memcpy_ptr(0x912E, &local4, 16);    // $8B7D
    local2 = 0;    // $8B82
L_8B83:
    *(byte*)((local2 + &local4)) = (*(byte*)((local2 + &local4)) & *(byte*)((local3 + 0x9162)));    // $8B95
    local2 = (local2 + 1);    // $8B98
    if ((local2 < 16)) goto L_8B83;    // $8B9D
    syscall_id06_syscall_set_sprite_block(&local4, 0, 16);    // $8BA8
    entry_countdown_b(5);    // $8BAD
    if (!(!(mem_7390))) return mem_7390;    // $8BB4
    local3 = (local3 + 1);    // $8BBA
    if ((local3 < 4)) goto L_8B74;    // $8BBE
    return (local3 < 4);    // $8BC1
}

// Decompiled from source/2-asm-vm\bank02.asm sub $8BC2
// $8BC2 entry_anim_6
// (body @ $8BC7)

word entry_anim_6(void) {
    local3 = 0;    // $8BC8
L_8BC9:
    memcpy_ptr(0x911E, &local4, 16);    // $8BD2
    local2 = 0;    // $8BD7
L_8BD8:
    *(byte*)((local2 + &local4)) = (*(byte*)((local2 + &local4)) & *(byte*)((local3 + 0x915E)));    // $8BEA
    local2 = (local2 + 1);    // $8BED
    if ((local2 < 16)) goto L_8BD8;    // $8BF2
    syscall_id06_syscall_set_sprite_block(&local4, 16, 16);    // $8BFE
    entry_countdown_b(20);    // $8C04
    if (!(!(mem_7390))) return mem_7390;    // $8C0B
    local3 = (local3 + 1);    // $8C11
    if ((local3 < 4)) goto L_8BC9;    // $8C15
    return (local3 < 4);    // $8C18
}

// Decompiled from source/2-asm-vm\bank02.asm sub $8C19
// $8C19 entry_anim_7
// (body @ $8C1E)

word entry_anim_7(void) {
    local3 = 0;    // $8C1F
L_8C20:
    memcpy_ptr(0x911E, &local4, 16);    // $8C29
    local2 = 0;    // $8C2E
L_8C2F:
    *(byte*)((local2 + &local4)) = (*(byte*)((local2 + &local4)) & *(byte*)((local3 + 0x9162)));    // $8C41
    local2 = (local2 + 1);    // $8C44
    if ((local2 < 16)) goto L_8C2F;    // $8C49
    syscall_id06_syscall_set_sprite_block(&local4, 16, 16);    // $8C55
    entry_countdown_b(20);    // $8C5B
    if (!(!(mem_7390))) return mem_7390;    // $8C62
    local3 = (local3 + 1);    // $8C68
    if ((local3 < 4)) goto L_8C20;    // $8C6C
    return (local3 < 4);    // $8C6F
}

// Decompiled from source/2-asm-vm\bank02.asm sub $8C70
// $8C70 draw_title_logo
// (body @ $8C75)

word draw_title_logo(void) {
    syscall_id06_syscall_set_sprite_block(0x913E, 0, 4);    // $8C7B
    syscall_id09_syscall_banked_blit_m3(11, 9, 10, 6, 0xA074, 0xA0B0, 226);    // $8C8D
    entry_anim_1();    // $8C91
    syscall_id17_syscall_busy_wait(30);    // $8C98
    syscall_id09_syscall_banked_blit_m3(8, 17, 16, 2, 0xA0EC, 0xA10C, 226);    // $8CAC
    entry_countdown_b(120);    // $8CB2
    if (!(!(mem_7390))) return mem_7390;    // $8CB9
    syscall_id07_syscall_queue_vram_row(0, 0, 0);    // $8CC1
    syscall_id09_syscall_banked_blit_m3(2, 15, 28, 2, 0xA004, 0xA03C, 226);    // $8CD4
    syscall_id06_syscall_set_sprite_block(0x9C15, 0, 4);    // $8CDE
    entry_countdown_b(120);    // $8CE4
    if (!(!(mem_7390))) return mem_7390;    // $8CEB
    entry_anim_4();    // $8CEF
    if (!(!(mem_7390))) return mem_7390;    // $8CF5
    syscall_id07_syscall_queue_vram_row(0, 0, 0);    // $8CFD
    syscall_id09_syscall_banked_blit_m3(12, 12, 8, 3, 0xA7D4, 0xA7EC, 226);    // $8D0F
    syscall_id09_syscall_banked_blit_m3(7, 16, 18, 2, 0xA21C, 0xA240, 226);    // $8D23
    entry_anim_2();    // $8D27
    if (!(!(mem_7390))) return mem_7390;    // $8D2D
    entry_countdown_b(120);    // $8D33
    if (!(!(mem_7390))) return mem_7390;    // $8D3A
    entry_anim_4();    // $8D3E
    if (!(!(mem_7390))) return mem_7390;    // $8D44
    syscall_id07_syscall_queue_vram_row(0, 0, 0);    // $8D4C
    syscall_id06_syscall_set_sprite_block(0xF366, 0, 4);    // $8D56
    return entry_countdown_b(60);    // $8D60
}

// Decompiled from source/2-asm-vm\bank02.asm sub $8D61
// $8D61 title_screen
// (body @ $8D66)

word title_screen(void) {
    syscall_id06_syscall_set_sprite_block(0x912E, 0, 16);    // $8D6D
    syscall_id21_syscall_play_music(20);    // $8D75
    syscall_id22_syscall_set_sound_param(0);    // $8D7C
    syscall_id05_syscall_set_chr_banks(0x96BE);    // $8D84
    syscall_id06_syscall_set_sprite_block(0x913E, 16, 16);    // $8D90
    syscall_id13_syscall_set_chr_bank_alt(0x96C6, 0, 64);    // $8D9B
    entry_anim_6();    // $8D9F
    if (!(!(mem_7390))) return mem_7390;    // $8DA5
    local11 = 0x9178;    // $8DAC
    local10 = 0;    // $8DAE
    local9 = 0;    // $8DB0
L_8DB1:
    if ((local9 >= 150)) goto L_8EAA;    // $8DB6
    local6 = 0;    // $8DBA
L_8DBB:
    local10 = (local10 + 1);    // $8DBD
    if (((unsigned)(local10 & 255) > (unsigned)239)) {    // $8DC7
    local10 = (local10 & 0xFF00);    // $8DD0
    local10 = (local10 ^ 0x0100);    // $8DD7
    }
L_8DD8:
    syscall_id18_syscall_set_scroll(0, local10);    // $8DDC
    syscall_id08_syscall_queue_ppu_transfer(6, (local9 % 30), 18, 1, 0, 0);    // $8DEC
    syscall_id09_syscall_banked_blit_m3(6, ((local9 + 29) % 30), 18, 1, local11, 0, syscall_id04_syscall_get_prg_bank(2));    // $8E05
    entry_countdown_b(4);    // $8E0A
    if (!(!(mem_7390))) return mem_7390;    // $8E11
    local6 = (local6 + 1);    // $8E17
    if ((local6 < 8)) goto L_8DBB;    // $8E1B
    local9 = (local9 + 1);    // $8E20
    local6 = 0;    // $8E22
L_8E23:
    local10 = (local10 + 1);    // $8E25
    if (((unsigned)(local10 & 255) > (unsigned)239)) {    // $8E2F
    local10 = (local10 & 0xFF00);    // $8E38
    local10 = (local10 ^ 0x0100);    // $8E3F
    }
L_8E40:
    syscall_id18_syscall_set_scroll(0, local10);    // $8E44
    syscall_id08_syscall_queue_ppu_transfer(6, (local9 % 30), 18, 1, 0, 0);    // $8E54
    syscall_id09_syscall_banked_blit_m3(6, ((local9 + 29) % 30), 18, 1, 0x9166, 0, syscall_id04_syscall_get_prg_bank(2));    // $8E6F
    entry_countdown_b(4);    // $8E74
    if (!(!(mem_7390))) return mem_7390;    // $8E7B
    local6 = (local6 + 1);    // $8E81
    if ((local6 < 8)) goto L_8E23;    // $8E85
    local11 = (local11 + 18);    // $8E8D
    local9 = (local9 + 1);    // $8E90
    if ((local9 == 90)) {    // $8E95
    syscall_id21_syscall_play_music(20);    // $8E9C
    }
L_8EA7:
    syscall_id22_syscall_set_sound_param(0);    // $8EA3
    goto L_8DB1;    // $8EA7
L_8EAA:
    return entry_anim_7();    // $8EAD
}

// Decompiled from source/2-asm-vm\bank02.asm sub $8EAE
// $8EAE press_start
// (body @ $8EB3)

word press_start(void) {
    mem_7390 = 0;    // $8EB4
    syscall_id07_syscall_queue_vram_row(0, 0, 0);    // $8EBB
    syscall_id21_syscall_play_music(1);    // $8EC2
    syscall_id22_syscall_set_sound_param(0);    // $8EC9
    entry_countdown_b(55);    // $8ECF
    syscall_id06_syscall_set_sprite_block(0x913E, 0, 16);    // $8EDA
    syscall_id09_syscall_banked_blit_m3(5, 4, 22, 10, 0xA264, draw_year, 226);    // $8EED
    syscall_id09_syscall_banked_blit_m3(11, 11, 10, 12, 0xA12C, 0xA1A4, 226);    // $8EFF
    entry_anim_3();    // $8F03
    entry_countdown_b(50);    // $8F08
    syscall_id09_syscall_banked_blit_m3(2, 26, 28, 1, 0xA804, 0xA820, 226);    // $8F1C
L_8F28:
    syscall_id17_syscall_busy_wait(80);    // $8F24
    if (!(syscall_id24_syscall_audio_is_playing())) goto L_8F40;    // $8F2E
    entry_countdown_b(1);    // $8F32
    if (!(!(mem_7390))) return mem_7390;    // $8F39
    goto L_8F28;    // $8F3D
L_8F40:
    set_tile_cursor(7, 23);    // $8F43
    draw_string(0x9C19, 1);    // $8F4B
    return entry_countdown_b(0x07D0);    // $8F56
}

// Decompiled from source/2-asm-vm\bank02.asm sub $8F57
// $8F57 entry_init_nametable
// (body @ $8F5C)

word entry_init_nametable(void) {
    syscall_id01_syscall_set_nt_exram_mode(0, 1, 1);    // $8F60
    mem_7390 = 0;    // $8F65
    draw_title_logo();    // $8F68
    if (mem_7390) goto L_8F95;    // $8F6E
    title_screen();    // $8F71
    syscall_id23_syscall_audio_reset();    // $8F76
    syscall_id06_syscall_set_sprite_block(0x913E, 0, 32);    // $8F81
    syscall_id18_syscall_set_scroll(0, 0);    // $8F89
L_8F95:
    syscall_id12_syscall_set_chr_banks(0, 64);    // $8F91
    press_start();    // $8F95
    syscall_id23_syscall_audio_reset();    // $8F9A
    syscall_id07_syscall_queue_vram_row(0, 0, 0);    // $8FA2
    syscall_id18_syscall_set_scroll(0, 0);    // $8FAA
    syscall_id05_syscall_set_chr_banks(0x7382);    // $8FB2
    return syscall_id06_syscall_set_sprite_block(0xF366, 0, 32);    // $8FC1
}
