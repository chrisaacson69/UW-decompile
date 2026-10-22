// Decompiled from source/2-asm-vm\bank37.asm sub $8003
// $8003 gameover_format_line
// (body @ $8008)

word gameover_format_line(word arg1) {
L_8013:
    str_copy((fp - 7), 0x84EA);    // $800F
    *(byte*)(fp - 1) = *(byte*)(arg1);    // $8015
    if (!(*(byte*)(arg1))) goto L_80AD;    // $8018
    switch (*(byte*)(fp - 1)) {    // $801E
    case 10:
L_8033:
        draw_string(0x84ED, 1);    // $802F
        arg1 = (arg1 + 1);    // $8035
        goto L_8013;    // $8036
    case 27:
        arg1 = (arg1 + 1);    // $803B
        *(byte*)&local11 = *(byte*)(arg1);    // $803E
        switch (*(byte*)(arg1)) {    // $8041
            case 75: goto L_8052;    // $8041
            case 72: goto L_8052;    // $8041
            case 87: goto L_805B;    // $8041
            default: goto L_8033;    // $8041
        }    // $8041
L_8052:
        *(byte*)&local9 = *(byte*)&local11;    // $8055
        goto L_8033;    // $8058
L_805B:
        phi_805d_0 = 120;    // $805B
L_805D:
        syscall_id17_syscall_busy_wait(phi_805d_0);    // $805F
        goto L_8033;    // $8063
    default:
        *(byte*)&local11 = *(byte*)((arg1 + 1));    // $8069
        if (((*(byte*)&local11 == 222) || (*(byte*)&local11 == 223))) {    // $807D
        arg1 = (arg1 + 1);    // $8082
        *(byte*)(fp - 5) = *(byte*)(fp - 1);    // $8086
        *(byte*)&local10 = *(byte*)&local11;    // $808C
        *(byte*)(fp - 3) = 0;    // $8090
        } else {
        *(byte*)(fp - 5) = *(byte*)(fp - 1);    // $8099
        *(byte*)&local10 = 0;    // $809D
        }
L_80A0:
        phi_805d_0 = 7;    // $80AA
        draw_string((fp - 7), 1);    // $80A5
        goto L_805D;    // $80AA
    }
L_80AD:
    return draw_string((fp - 7), 1);    // $80AD
    }
}

// Decompiled from source/2-asm-vm\bank37.asm sub $80AE
// $80AE gameover_setup_sprite
// (body @ $80B3)

word gameover_setup_sprite(word arg1, word arg2) {
    if (arg1) goto L_80D7;    // $80B4
    memcpy_ptr(0x84CA, &local4, 16);    // $80C0
    syscall_id06_syscall_set_sprite_block(&local4, 0, 16);    // $80CC
L_80D7:
    syscall_id17_syscall_busy_wait(15);    // $80D3
    local3 = 0;    // $80D8
L_80D9:
    memcpy_ptr(arg2, &local4, 16);    // $80E0
    local2 = 0;    // $80E5
L_80E6:
    *(byte*)((local2 + &local4)) = (*(byte*)((local2 + &local4)) & *(byte*)(((((arg1 << 1) << 1) + local3) + 0x84EF)));    // $80FC
    local2 = (local2 + 1);    // $80FF
    if ((local2 < 16)) goto L_80E6;    // $8104
    syscall_id06_syscall_set_sprite_block(&local4, 0, 16);    // $810F
    syscall_id17_syscall_busy_wait(15);    // $8116
    local3 = (local3 + 1);    // $811C
    if ((local3 < 4)) goto L_80D9;    // $8120
    phi_ret_8147 = arg1;    // $8124
    if (phi_ret_8147) {    // $8124
    memcpy_ptr(0x84CA, &local4, 16);    // $8130
    syscall_id06_syscall_set_sprite_block(&local4, 0, 16);    // $813C
    phi_ret_8147 = syscall_id17_syscall_busy_wait(15);    // $8143
    }
L_8147:
    return phi_ret_8147;    // $8147
}

// Decompiled from source/2-asm-vm\bank37.asm sub $8148
// $8148 gameover_draw_header
// (body @ $814D)

word gameover_draw_header(void) {
    scale_x6(100);    // $814F
    draw_string(0x84F7, 1);    // $8157
    syscall_id09_syscall_banked_blit_m3(4, 14, 24, 11, 0xB82A, 0xB932, 231);    // $816A
    return set_draw_origin(6, 15);    // $8174
}

// Decompiled from source/2-asm-vm\bank37.asm sub $8175
// $8175 gameover_draw_date
// (body @ $817A)

word gameover_draw_date(void) {
    opt_sprite(0);    // $8182
    draw_string(0x8502, 0);    // $818A
    draw_month();    // $818E
    draw_string(0x8507, 0);    // $8195
    draw_day();    // $8199
    draw_string(0x8509, 0);    // $81A0
    draw_year();    // $81A4
    draw_string(0x850C, 0);    // $81AB
    draw_string_banked(mem_6542);    // $81B2
    draw_string(0x8518, 0);    // $81BA
    return gameover_draw_header();    // $81C1
}

// Decompiled from source/2-asm-vm\bank37.asm sub $81C2
// $81C2 gameover_animation
// (body @ $81C7)

word gameover_animation(void) {
    syscall_id17_syscall_busy_wait(120);    // $81CB
    syscall_id09_syscall_banked_blit_m3(11, 6, 10, 15, 0xA8A8, 0xA93E, 226);    // $81DD
    gameover_setup_sprite(0, 0x849A);    // $81E5
    syscall_id17_syscall_busy_wait(180);    // $81EE
    syscall_id09_syscall_banked_blit_m3(11, 6, 10, 15, 0xA9D4, 0xAA6A, 226);    // $8200
    syscall_id17_syscall_busy_wait(150);    // $8209
    syscall_id09_syscall_banked_blit_m3(11, 6, 10, 15, 0xAB00, 0xAB96, 226);    // $821B
    syscall_id17_syscall_busy_wait(0x012C);    // $8224
    gameover_setup_sprite(1, 0x849A);    // $822C
    syscall_id07_syscall_queue_vram_row(0, 0, 0);    // $8234
    syscall_id17_syscall_busy_wait(120);    // $823C
    syscall_id09_syscall_banked_blit_m3(8, 7, 8, 8, 0xA41C, 0xA45C, 226);    // $824E
    gameover_setup_sprite(0, 0x84AA);    // $8256
    syscall_id17_syscall_busy_wait(120);    // $825E
    mem_728E = 2;    // $8263
    local11 = 0;    // $8267
    do {    // $8268
        draw_string(0x85D4, 1);    // $826C
        gameover_format_line(*(word*)(((local11 << 1) + 0x8535)));    // $8278
        syscall_id08_syscall_queue_ppu_transfer(8, 17, 20, 6, 0, 0);    // $8285
        local11 = (local11 + 1);    // $828B
    } while ((local11 < 4));    // $828F
    syscall_id17_syscall_busy_wait(120);    // $8296
    syscall_id09_syscall_banked_blit_m3(8, 7, 8, 8, 0xA49C, 0xA4DC, 226);    // $82A8
    syscall_id17_syscall_busy_wait(50);    // $82B0
    syscall_id09_syscall_banked_blit_m3(8, 7, 8, 8, 0xA51C, 0xA55C, 226);    // $82C2
    syscall_id17_syscall_busy_wait(50);    // $82CA
    syscall_id09_syscall_banked_blit_m3(8, 7, 8, 8, 0xA59C, 0xA5DC, 226);    // $82DC
    syscall_id17_syscall_busy_wait(0x012C);    // $82E5
    gameover_setup_sprite(1, 0x84AA);    // $82ED
    syscall_id07_syscall_queue_vram_row(0, 0, 0);    // $82F5
    syscall_id17_syscall_busy_wait(180);    // $82FE
    syscall_id09_syscall_banked_blit_m3(14, 14, 12, 6, 0xAC2C, 0xAC74, 226);    // $8310
    gameover_setup_sprite(0, 0x849A);    // $8318
    syscall_id22_syscall_set_sound_param(1);    // $831F
    syscall_id17_syscall_busy_wait(0x0258);    // $8328
    gameover_setup_sprite(1, 0x849A);    // $8330
    return syscall_id07_syscall_queue_vram_row(0, 0, 0);    // $833C
}

// Decompiled from source/2-asm-vm\bank37.asm sub $833D
// $833D show_game_over
// (body @ $8342)

word show_game_over(void) {
    os_mode_flags = (os_mode_flags | 4);    // $8348
    os_mode_flags = (os_mode_flags | 8);    // $8351
    audio_reset_gated();    // $8354
    if (((unsigned)mem_7267 < (unsigned)5)) {    // $835C
    idx_over_20(15);    // $8360
    }
L_8369:
    audio_param_gated(1);    // $8365
    switch (mem_7267) {    // $836C
    case 1:
        gameover_draw_date();    // $837B
        draw_string(0x85DC, 1);    // $8382
        gameover_draw_header();    // $8386
        draw_string(0x8624, 1);    // $838D
        gameover_draw_header();    // $8391
        draw_string(0x866E, 1);    // $8398
        goto L_8423;    // $839C
    case 2:
        gameover_draw_date();    // $839F
        scale_x6(20);    // $83A4
        draw_string(0x86BB, 1);    // $83AC
        gameover_draw_header();    // $83B0
        scale_x6(20);    // $83B5
        draw_string(0x86F2, 1);    // $83BD
        scale_x6(20);    // $83C3
        goto L_8423;    // $83C7
    case 3:
        opt_sprite(0);    // $83D2
        local11 = mem_7068;    // $83D9
        mem_7068 = 0;    // $83DB
        draw_string(0x873F, 0);    // $83E2
        draw_string_banked(mem_6542);    // $83E9
        draw_string(0x876C, 0);    // $83F1
        draw_month();    // $83F5
        draw_string(0x877E, 0);    // $83FC
        draw_day();    // $8400
        draw_string(0x8780, 0);    // $8407
        draw_year();    // $840B
        scale_x6(60);    // $8410
        gameover_draw_header();    // $8414
        draw_string(0x8783, 1);    // $841B
        mem_7068 = local11;    // $8420
    case 4:
L_8423:
        audio_param_gated(0);    // $8424
        scale_x6(120);    // $842A
        return opt_audio_off();    // $8439
    default:
        reset_all_chr();    // $843A
        syscall_id12_syscall_set_chr_banks(0, 64);    // $8441
        syscall_id18_syscall_set_scroll(0, 0);    // $8449
        syscall_id02_syscall_call_banked_routine(1, 230);    // $8452
        gameover_animation();    // $8456
        syscall_id17_syscall_busy_wait(60);    // $845D
        syscall_id09_syscall_banked_blit_m3(11, 7, 10, 6, 0xA074, 0xA0B0, 226);    // $846F
        syscall_id09_syscall_banked_blit_m3(7, 15, 18, 3, 0xA83C, 0xA872, 226);    // $8482
        gameover_setup_sprite(0, 0x84BA);    // $848A
        do {    // $848E
        } while (syscall_id24_syscall_audio_is_playing());    // $8494
        while (1) {    // $8497
L_8497:
            continue;    // $8497
        }
    }
}
