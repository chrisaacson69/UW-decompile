// Decompiled from source/2-asm-vm\bank38.asm sub $8003
// $8003 ending_init_a
// (body @ $8008)

word ending_init_a(word arg1, word arg2) {
    if (arg1) goto L_802C;    // $8009
    memcpy_ptr(0x8784, &local4, 16);    // $8015
    syscall_id06_syscall_set_sprite_block(&local4, 0, 16);    // $8021
L_802C:
    syscall_id17_syscall_busy_wait(15);    // $8028
    local3 = 0;    // $802D
L_802E:
    memcpy_ptr(arg2, &local4, 16);    // $8035
    local2 = 0;    // $803A
L_803B:
    *(byte*)((local2 + &local4)) = (*(byte*)((local2 + &local4)) & *(byte*)(((((arg1 << 1) << 1) + local3) + 0x92AB)));    // $8051
    local2 = (local2 + 1);    // $8054
    if ((local2 < 16)) goto L_803B;    // $8059
    syscall_id06_syscall_set_sprite_block(&local4, 0, 16);    // $8064
    syscall_id17_syscall_busy_wait(15);    // $806B
    local3 = (local3 + 1);    // $8071
    if ((local3 < 4)) goto L_802E;    // $8075
    phi_ret_809c = arg1;    // $8079
    if (phi_ret_809c) {    // $8079
    memcpy_ptr(0x8784, &local4, 16);    // $8085
    syscall_id06_syscall_set_sprite_block(&local4, 0, 16);    // $8091
    phi_ret_809c = syscall_id17_syscall_busy_wait(15);    // $8098
    }
L_809C:
    return phi_ret_809c;    // $809C
}

// Decompiled from source/2-asm-vm\bank38.asm sub $809D
// $809D ending_init_b
// (body @ $80A2)

word ending_init_b(word arg1, word arg2) {
    if (arg1) goto L_80C6;    // $80A3
    memcpy_ptr(0x8784, (fp - 32), 32);    // $80AF
    syscall_id06_syscall_set_sprite_block((fp - 32), 0, 32);    // $80BB
L_80C6:
    syscall_id17_syscall_busy_wait(15);    // $80C2
    *(word*)(fp - 34) = 0;    // $80C7
L_80C9:
    memcpy_ptr(arg2, (fp - 32), 32);    // $80D0
    *(word*)(fp - 36) = 0;    // $80D5
L_80D7:
    *(byte*)((*(word*)(fp - 36) + (fp - 32))) = (*(byte*)((*(word*)(fp - 36) + (fp - 32))) & *(byte*)(((((arg1 << 1) << 1) + *(word*)(fp - 34)) + 0x92B3)));    // $80EF
    *(word*)(fp - 36) = (*(word*)(fp - 36) + 1);    // $80F3
    if ((*(word*)(fp - 36) < 16)) goto L_80D7;    // $80FA
    syscall_id06_syscall_set_sprite_block((fp - 32), 0, 32);    // $8105
    syscall_id17_syscall_busy_wait(15);    // $810C
    *(word*)(fp - 34) = (*(word*)(fp - 34) + 1);    // $8113
    if ((*(word*)(fp - 34) < 4)) goto L_80C9;    // $8119
    phi_ret_8140 = arg1;    // $811D
    if (phi_ret_8140) {    // $811D
    memcpy_ptr(0x8784, (fp - 32), 32);    // $8129
    syscall_id06_syscall_set_sprite_block((fp - 32), 0, 32);    // $8135
    phi_ret_8140 = syscall_id17_syscall_busy_wait(15);    // $813C
    }
L_8140:
    return phi_ret_8140;    // $8140
}

// Decompiled from source/2-asm-vm\bank38.asm sub $8141
// $8141 ending_show_page
// (body @ $8146)

word ending_show_page(word arg1) {
    local11 = arg1;    // $8147
L_8148:
    local11 = (local11 + 1);    // $814A
    switch (to_upper(*(byte*)((local11 - 1)))) {    // $8152
    case 79:
        syscall_id13_syscall_set_chr_bank_alt(0x73A0, 15, 18);    // $817A
        goto L_8148;    // $817E
    case 71:
        local11 = (local11 + 1);    // $8183
        local10 = *(word*)(((*(byte*)((local11 - 1)) << 1) + 0x9283));    // $818C
        local11 = (local11 + 1);    // $818F
        *(byte*)(fp - 5) = *(byte*)((local11 - 1));    // $8192
        local11 = (local11 + 1);    // $8197
        *(byte*)&local9 = *(byte*)((local11 - 1));    // $819A
        local11 = (local11 + 1);    // $819F
        *(byte*)(fp - 7) = *(byte*)((local11 - 1));    // $81A2
        memcpy_ptr(local10, (((*(byte*)(fp - 5) * 24) + ((*(byte*)&local9 << 1) << 1)) + 0x73A0), *(byte*)(fp - 7));    // $81BD
        goto L_8148;    // $81C1
    case 80:
        local11 = (local11 + 1);    // $81C6
        *(byte*)(fp - 5) = *(byte*)((local11 - 1));    // $81C9
        local11 = (local11 + 1);    // $81CE
        *(byte*)&local8 = *(byte*)((local11 - 1));    // $81D1
        local11 = (local11 + 1);    // $81D6
        *(byte*)(fp - 9) = *(byte*)((local11 - 1));    // $81D9
        *(word*)(fp - 11) = 0;    // $81DD
L_81DF:
        *(byte*)((((*(byte*)(fp - 5) * 24) + ((*(word*)(fp - 11) << 1) << 1)) + 0x73A3)) = (*(byte*)((((*(byte*)(fp - 5) * 24) + ((*(word*)(fp - 11) << 1) << 1)) + 0x73A3)) + *(byte*)&local8);    // $81F7
        *(byte*)((((*(byte*)(fp - 5) * 24) + ((*(word*)(fp - 11) << 1) << 1)) + 0x73A0)) = (*(byte*)((((*(byte*)(fp - 5) * 24) + ((*(word*)(fp - 11) << 1) << 1)) + 0x73A0)) + *(byte*)(fp - 9));    // $8210
        *(word*)(fp - 11) = (*(word*)(fp - 11) + 1);    // $8214
        if ((*(word*)(fp - 11) < 6)) goto L_81DF;    // $821A
        goto L_8148;    // $821D
    case 77:
        local11 = (local11 + 1);    // $8222
        if (*(byte*)((local11 - 1))) goto L_824A;    // $8225
        syscall_id08_syscall_queue_ppu_transfer(3, 20, 20, 8, 0, 0);    // $8231
        native_draw_box(9, 12, 20, 8, 1, 0);    // $823C
        set_tile_cursor(10, 13);    // $8242
        phi_val_826a = 10;    // $8247
        goto L_826A;    // $8247
L_824A:
        syscall_id08_syscall_queue_ppu_transfer(9, 12, 20, 8, 0, 0);    // $8252
        native_draw_box(3, 20, 20, 8, 2, 0);    // $825E
        set_tile_cursor(4, 21);    // $8265
        phi_val_826a = 4;    // $8269
L_826A:
        mem_728A = phi_val_826a;    // $826A
        local11 = (local11 + 1);    // $8272
        draw_field_m1(*(word*)(((*(byte*)((local11 - 1)) << 1) + 0x87A4)), 0x7390);    // $827C
        goto L_8148;    // $8280
    case 75:
        local11 = (local11 + 1);    // $8285
        *(byte*)(fp - 5) = *(byte*)((local11 - 1));    // $8288
        local11 = (local11 + 1);    // $828D
        *(byte*)&local8 = *(byte*)((local11 - 1));    // $8290
        local11 = (local11 + 1);    // $8295
        *(byte*)(fp - 9) = *(byte*)((local11 - 1));    // $8298
        resolve_field_ptr(*(byte*)&local8, *(byte*)(fp - 9), *(byte*)((*(byte*)(fp - 5) + 0x92BB)), 17);    // $82AE
        goto L_8148;    // $82B2
    case 87:
        local11 = (local11 + 1);    // $82B7
        *(byte*)(fp - 5) = *(byte*)((local11 - 1));    // $82BA
        syscall_id17_syscall_busy_wait((*(byte*)(fp - 5) << 1));    // $82C4
        goto L_8148;    // $82C8
    case 69:
    default:
    }
    return syscall_id17_syscall_busy_wait((*(byte*)(fp - 5) << 1));    // $82CB
}

// Decompiled from source/2-asm-vm\bank38.asm sub $82CC
// $82CC ending_page_1
// (body @ $82D1)

word ending_page_1(void) {
    return ending_show_page(0x92BE);    // $82D8
}

// Decompiled from source/2-asm-vm\bank38.asm sub $82D9
// $82D9 ending_page_2
// (body @ $82DE)

word ending_page_2(void) {
    return ending_show_page(0x93F5);    // $82E5
}

// Decompiled from source/2-asm-vm\bank38.asm sub $82E6
// $82E6 ending_page_3
// (body @ $82EB)

word ending_page_3(void) {
    return ending_show_page(0x94F1);    // $82F2
}

// Decompiled from source/2-asm-vm\bank38.asm sub $82F3
// $82F3 ending_page_4
// (body @ $82F8)

word ending_page_4(void) {
    return ending_show_page(0x9588);    // $82FF
}

// Decompiled from source/2-asm-vm\bank38.asm sub $8300
// $8300 ending_page_5
// (body @ $8305)

word ending_page_5(void) {
    return ending_show_page(0x96EB);    // $830C
}

// Decompiled from source/2-asm-vm\bank38.asm sub $830D
// $830D ending_page_6
// (body @ $8312)

word ending_page_6(void) {
    return ending_show_page(0x970C);    // $8319
}

// Decompiled from source/2-asm-vm\bank38.asm sub $831A
// $831A ending_page_7
// (body @ $831F)

word ending_page_7(void) {
    return ending_show_page(0x97EA);    // $8326
}

// Decompiled from source/2-asm-vm\bank38.asm sub $8327
// $8327 ending_text_main
// (body @ $832C)

word ending_text_main(void) {
// DECOMPILE ERROR @$8327: list index out of range

// Decompiled from source/2-asm-vm\bank38.asm sub $8334
// $8334 ending_page_8
// (body @ $8339)

word ending_page_8(void) {
    return ending_show_page(0x9AB1);    // $8340
}

// Decompiled from source/2-asm-vm\bank38.asm sub $8341
// $8341 ending_scene_a
// (body @ $8346)

word ending_scene_a(void) {
    syscall_id21_syscall_play_music(18);    // $834A
    syscall_id22_syscall_set_sound_param(1);    // $8351
    syscall_id06_syscall_set_sprite_block(0x8744, 0, 32);    // $835C
    syscall_id09_syscall_banked_blit_m3(6, 4, 20, 7, 0xACBE, 0xAD4A, 226);    // $836F
    syscall_id13_syscall_set_chr_bank_alt(0x9267, 1, 7);    // $8379
    syscall_id13_syscall_set_chr_bank_alt(0x924B, 8, 7);    // $8383
    syscall_id05_syscall_set_chr_banks(0x873C);    // $838B
    ending_page_1();    // $838F
    local11 = menu_pick(0x9CB5, 4, 5, 24, 7, 2, 2, 0);    // $83A1
    switch (menu_pick(0x9CB5, 4, 5, 24, 7, 2, 2, 0)) {    // $83A2
    case 1:
    default:
L_83B4:
        ending_page_2();    // $83B1
        if (!(((unsigned)local11 < (unsigned)3))) goto L_83FA;    // $83B7
        phi_83c8_0 = 0x9CB6;    // $83C5
        phi_83c8_1 = 2;    // $83C5
        phi_83c8_2 = 5;    // $83C5
        phi_83c8_3 = 26;    // $83C5
        phi_83c8_4 = 8;    // $83C5
        phi_83c8_5 = 0;    // $83C5
        phi_83c8_6 = 1;    // $83C5
        phi_83c8_7 = 0;    // $83C5
L_83C8:
        ending_page_3();    // $83BA
        if (!((menu_pick(phi_83c8_0, phi_83c8_1, phi_83c8_2, phi_83c8_3, phi_83c8_4, phi_83c8_5, phi_83c8_6, phi_83c8_7) == 1))) goto L_83E9;    // $83CE
        ending_page_4();    // $83D1
        goto L_83FD;    // $83D4
    case 2:
        ending_page_6();    // $83D7
        goto L_83B4;    // $83DA
    case 3:
        ending_page_7();    // $83DD
        goto L_83B4;    // $83E0
    case 4:
        ending_page_8();    // $83E3
        goto L_83B4;    // $83E6
    }
L_83E9:
    phi_83c8_0 = 0x9CB7;    // $83F7
    phi_83c8_1 = 2;    // $83F7
    phi_83c8_2 = 5;    // $83F7
    phi_83c8_3 = 26;    // $83F7
    phi_83c8_4 = 8;    // $83F7
    phi_83c8_5 = 0;    // $83F7
    phi_83c8_6 = 1;    // $83F7
    phi_83c8_7 = 0;    // $83F7
    ending_page_5();    // $83E9
    goto L_83C8;    // $83F7
L_83FA:
L_83FD:
    ending_text_main();    // $83FA
    return syscall_id17_syscall_busy_wait(180);    // $8406
}

// Decompiled from source/2-asm-vm\bank38.asm sub $8407
// $8407 ending_sprite
// (body @ $840C)

word ending_sprite(void) {
    syscall_id06_syscall_set_sprite_block(0x8784, 0, 8);    // $8412
    syscall_id09_syscall_banked_blit_m3(11, 4, 10, 10, 0xADD6, 0xAE3A, 226);    // $8424
    syscall_id17_syscall_busy_wait(60);    // $842C
    local7 = 0;    // $8431
L_8432:
    memcpy_ptr(0x8744, &local8, 8);    // $843A
    phi_val_8457 = 0;    // $843F
    goto L_8457;    // $843F
L_8442:
    *(byte*)((local6 + &local8)) = (*(byte*)((local6 + &local8)) & *(byte*)((local7 + 0x9CB8)));    // $8454
    phi_val_8457 = (local6 + 1);    // $8456
L_8457:
    local6 = phi_val_8457;    // $8457
    if (((unsigned)local6 < (unsigned)8)) goto L_8442;    // $845B
    syscall_id06_syscall_set_sprite_block(&local8, 0, 8);    // $8465
    syscall_id17_syscall_busy_wait(15);    // $846C
    local7 = (local7 + 1);    // $8472
    if ((local7 < 4)) goto L_8432;    // $8476
    return (local7 < 4);    // $8479
}

// Decompiled from source/2-asm-vm\bank38.asm sub $847A
// $847A ending_loop
// (body @ $847F)

word ending_loop(void) {
    local11 = 0;    // $8480
L_8481:
    if ((local11 <= 1)) goto L_849A;    // $8484
    if ((local11 >= 5)) goto L_849A;    // $848A
L_849A:
    syscall_id12_syscall_set_chr_banks((((local11 + -2) << 1) + 27), 2);    // $8496
    if ((local11 <= 0)) goto L_84B3;    // $849D
L_84B3:
    syscall_id08_syscall_queue_ppu_transfer(6, (local11 + 3), 20, 1, mem_9CBE, 145);    // $84AF
    local10 = 0;    // $84B4
L_84B5:
    syscall_id08_syscall_queue_ppu_transfer(6, (local11 + 4), 20, 1, *(byte*)((local10 + 0x9CBC)), 145);    // $84C7
    syscall_id17_syscall_busy_wait(10);    // $84CE
    local10 = (local10 + 1);    // $84D4
    if ((local10 < 2)) goto L_84B5;    // $84D8
    local11 = (local11 + 1);    // $84DD
    if ((local11 < 6)) goto L_8481;    // $84E1
    syscall_id17_syscall_busy_wait(0x012C);    // $84E9
    syscall_id08_syscall_queue_ppu_transfer(2, 12, 28, 16, 0, 0);    // $84F6
    syscall_id12_syscall_set_chr_banks(15, 12);    // $84FD
    syscall_id09_syscall_banked_blit_m3(10, 3, 12, 12, 0xAE9E, 0xAF2E, 226);    // $850F
    ending_sprite();    // $8513
    syscall_id17_syscall_busy_wait(0x0258);    // $851B
    ending_init_b(1, 0x8744);    // $8523
    syscall_id12_syscall_set_chr_banks(0, 64);    // $852B
    return syscall_id07_syscall_queue_vram_row(0, 0, 0);    // $8537
}

// Decompiled from source/2-asm-vm\bank38.asm sub $8538
// $8538 ending_anim
// (body @ $853D)

word ending_anim(void) {
    *(word*)(fp - 82) = 0;    // $853E
L_8540:
    *(word*)(fp - 90) = ((*(word*)(fp - 82) * 24) + 0x6AA4);    // $8549
    if (!(*(byte*)(*(word*)(fp - 90)))) goto L_855D;    // $854E
    *(word*)(fp - 82) = (*(word*)(fp - 82) + 1);    // $8554
    if (((unsigned)*(word*)(fp - 82) < (unsigned)5)) goto L_8540;    // $855A
L_855D:
    *(word*)(fp - 88) = record_base_6b1c(*(word*)(fp - 82));    // $8563
    *(word*)(fp - 82) = ((unsigned)*(byte*)((*(word*)(fp - 88) + 20)) >> 5);    // $856C
    *(word*)(fp - 86) = 0xF386;    // $8571
    if (((unsigned)*(word*)(fp - 82) > (unsigned)2)) {    // $8577
    *(word*)(fp - 86) = 0xF3D6;    // $857D
    }
L_857F:
    *(word*)(fp - 84) = 5;    // $8580
    memcpy_ptr(*(word*)(fp - 86), (fp - 80), 80);    // $858A
    *(word*)(fp - 82) = 0;    // $858F
L_8591:
    *(byte*)((((*(word*)(fp - 82) << 1) << 1) + (fp - 80))) = (*(byte*)((((*(word*)(fp - 82) << 1) << 1) + (fp - 80))) + 2);    // $85A0
    *(word*)(fp - 82) = (*(word*)(fp - 82) + 1);    // $85A4
    if (((unsigned)*(word*)(fp - 82) < (unsigned)20)) goto L_8591;    // $85AB
    syscall_id13_syscall_set_chr_bank_alt((fp - 80), 1, 20);    // $85B6
    goto L_85ED;    // $85BA
L_85BD:
    *(byte*)((((*(word*)(fp - 82) << 1) << 1) + (fp - 77))) = (*(byte*)((((*(word*)(fp - 82) << 1) << 1) + (fp - 77))) - 1);    // $85CA
L_85CB:
    *(word*)(fp - 82) = (*(word*)(fp - 82) + 1);    // $85CE
    if (((unsigned)*(word*)(fp - 82) < (unsigned)20)) goto L_85F0;    // $85D5
    syscall_id13_syscall_set_chr_bank_alt((fp - 80), 1, 20);    // $85E0
    if (!(((unsigned)*(byte*)(fp - 77) < (unsigned)72))) goto L_8620;    // $85EA
L_85ED:
    *(word*)(fp - 82) = 0;    // $85EE
L_85F0:
    if (((unsigned)*(byte*)((((*(word*)(fp - 82) << 1) << 1) + (fp - 77))) > (unsigned)12)) goto L_85BD;    // $85FD
    *(byte*)((((*(word*)(fp - 82) << 1) << 1) + (fp - 79))) = 160;    // $860E
    if (!((*(word*)(fp - 82) == 19))) goto L_85CB;    // $8614
    return syscall_id12_syscall_set_chr_banks(1, 20);    // $861F
L_8620:
    syscall_id17_syscall_busy_wait(*(word*)(fp - 84));    // $8624
    goto L_85ED;    // $8628
}

// Decompiled from source/2-asm-vm\bank38.asm sub $862B
// $862B ending_scene_b
// (body @ $8630)

word ending_scene_b(void) {
    syscall_id06_syscall_set_sprite_block(0x8784, 0, 16);    // $8637
    syscall_id09_syscall_banked_blit_m3(2, 2, 28, 4, 0xA4DC, 0xA54C, 225);    // $864A
    draw_year();    // $864E
    draw_month();    // $8651
    draw_day();    // $8654
    set_tile_cursor(21, 3);    // $865A
    draw_string(0x9CCF, 1);    // $8662
    syscall_id09_syscall_banked_blit_m3(2, 6, 28, 14, 0xAA44, 0xABCC, 225);    // $8675
    return syscall_id09_syscall_banked_blit_m3(22, 6, 8, 5, 0xA0C0, 0xA0E8, 225);    // $868C
}

// Decompiled from source/2-asm-vm\bank38.asm sub $868D
// $868D ending_scene_c
// (body @ $8692)

word ending_scene_c(void) {
    syscall_id21_syscall_play_music(19);    // $8696
    syscall_id22_syscall_set_sound_param(1);    // $869D
    syscall_id05_syscall_set_chr_banks(0x9CD6);    // $86A5
    ending_scene_b();    // $86A9
    native_draw_box(2, 20, 28, 8, 0, 0);    // $86B4
    syscall_id06_syscall_set_sprite_block(0x8744, 16, 16);    // $86C0
    ending_init_a(0, 0x9CBF);    // $86C8
    opt_loop_8683();    // $86D3
    draw_field_m1(mem_9CDE, 0x7390);    // $86DD
    syscall_id17_syscall_busy_wait(0x0168);    // $86E6
    native_draw_box(2, 20, 28, 8, 0, 0);    // $86F2
    draw_string(mem_9CE0, 1);    // $86FA
    syscall_id17_syscall_busy_wait(0x0168);    // $8703
    ending_anim();    // $8707
    ending_init_a(1, 0x9CBF);    // $870E
    syscall_id07_syscall_queue_vram_row(0, 0, 0);    // $8716
    return syscall_id05_syscall_set_chr_banks(0x873C);    // $8722
}

// Decompiled from source/2-asm-vm\bank38.asm sub $8723
// $8723 ending_format_name
// (body @ $8728)

word ending_format_name(void) {
    str_copy(0x7390, mem_6542);    // $872E
    ending_scene_a();    // $8732
    ending_loop();    // $8735
    return ending_scene_c();    // $873B
}
