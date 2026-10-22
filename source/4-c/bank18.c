// Decompiled from source/2-asm-vm\bank18.asm sub $8003
// $8003 enc_check_port
// (body @ $8008)

word enc_check_port(word arg1) {
    if (current_port) goto L_8012;    // $800B
    phi_8028_0 = 6;    // $800F
    goto L_8028;    // $800F
L_8012:
    if (((unsigned)*(byte*)&arg1 > (unsigned)11)) {    // $8017
    if (!(((unsigned)*(byte*)&arg1 < (unsigned)31))) goto L_8027;    // $8020
    phi_8028_0 = 8;    // $8024
    } else {
    phi_8028_0 = 7;    // $8027
    }
L_8028:
    idx_over_20(phi_8028_0);    // $8028
    return audio_param_gated(1);    // $8031
    }
}

// Decompiled from source/2-asm-vm\bank18.asm sub $8032
// $8032 enc_port_guard
// (body @ $8037)

word enc_port_guard(word arg1) {
    if (((unsigned)*(byte*)&arg1 >= (unsigned)50)) {    // $803D
    local11 = *(byte*)((*(byte*)&arg1 + 0x9300));    // $8048
    return local11;    // $804A
    }
L_804B:
    if ((!(((*(byte*)&arg1 != 2) || (*(byte*)&arg1 == 12))))) return 5;    // $8058
    local10 = ((*(byte*)&arg1 * 5) + 0xB50A);    // $8066
    local11 = record_field_byte(local10);    // $806C
    return local11;    // $806E
}

// Decompiled from source/2-asm-vm\bank18.asm sub $806F
// $806F enc_side_806f
// (body @ $8074)

word enc_side_806f(word arg1, word arg2) {
    local10 = (((unsigned)arg1 < (unsigned)3) ? 0 : (arg1 + -2));    // $8081
    return syscall_id09_syscall_banked_blit_m3(*(byte*)(((arg1 << 1) + 0x93E6)), *(byte*)(((arg1 << 1) + 0x93E7)), *(byte*)(((local10 << 1) + 0x93F2)), *(byte*)(((local10 << 1) + 0x93F3)), *(word*)((((arg2 << 4) + ((local10 << 1) << 1)) + 0x9346)), *(word*)((((arg2 << 4) + ((local10 << 1) << 1)) + 0x9348)), mem_7396);    // $80C8
}

// Decompiled from source/2-asm-vm\bank18.asm sub $80C9
// $80C9 enc_setup
// (body @ $80CE)

word enc_setup(word arg1) {
    mem_7396 = 225;    // $80D1
    *(word*)(fp - 5) = enc_port_guard(*(byte*)&arg1);    // $80DC
    if (!(((*(word*)(fp - 5) == 3) || (*(word*)(fp - 5) == 5)))) goto L_80F2;    // $80E9
    mem_7396 = 224;    // $80EF
L_80F2:
    syscall_id09_syscall_banked_blit_m3(2, 6, 28, 14, *(word*)((((*(word*)(fp - 5) << 1) << 1) + 0x93C6)), *(word*)((((*(word*)(fp - 5) << 1) << 1) + 0x93C8)), mem_7396);    // $810F
    *(byte*)(fp - 1) = *(byte*)((*(byte*)&arg1 + 0x6F76));    // $811B
    mem_7066 = 0;    // $811F
    goto L_819D;    // $8123
L_8126:
    if (!(((unsigned)*(byte*)&arg1 < (unsigned)50))) goto L_81CE;    // $812C
    if (!((*(word*)(fp - 3) == 1))) goto L_8167;    // $8133
    if ((*(byte*)(fp - 1) & 4)) goto L_8167;    // $813B
    enc_side_806f(1, *(word*)(fp - 5));    // $8141
    *(word*)(fp - 7) = 0;    // $8146
L_8148:
    copy_from_bank_dc80(((*(word*)(fp - 7) * 28) + 0x739E), 6, 0);    // $8154
    *(word*)(fp - 7) = (*(word*)(fp - 7) + 1);    // $815B
    if (((unsigned)*(word*)(fp - 7) < (unsigned)4)) goto L_8148;    // $8161
    goto L_819A;    // $8164
L_8167:
    if (!((*(word*)(fp - 3) == 2))) goto L_81C4;    // $816B
    if (!((*(byte*)(fp - 1) & 16))) goto L_81C4;    // $8174
    enc_side_806f(5, *(word*)(fp - 5));    // $817A
L_8187:
    copy_from_bank_dc80(0x7424, 3, 1);    // $8183
    if (!(((unsigned)*(word*)(fp - 3) < (unsigned)8))) goto L_819A;    // $818B
    mem_7066 = (mem_7066 | (1 << *(word*)(fp - 3)));    // $8197
L_819A:
L_819D:
    *(word*)(fp - 3) = (*(word*)(fp - 3) + 1);    // $819D
    if (((unsigned)*(word*)(fp - 3) < (unsigned)9)) goto L_8126;    // $81A3
    syscall_id06_syscall_set_sprite_block(((*(word*)(fp - 5) << 4) + 0x92B2), 0, 16);    // $81B3
    return syscall_id06_syscall_set_sprite_block(0xF376, 16, 16);    // $81C3
L_81C4:
    if (!((*(word*)(fp - 3) == 2))) goto L_8187;    // $81C8
    goto L_819A;    // $81CB
L_81CE:
    if (!(((unsigned)*(word*)(fp - 3) < (unsigned)6))) goto L_8187;    // $81D2
    enc_side_806f(*(word*)(fp - 3), *(word*)(fp - 5));    // $81D9
    goto L_819A;    // $81DD
}

// Decompiled from source/2-asm-vm\bank18.asm sub $81E0
// $81E0 enc_81e0
// (body @ $81E5)

word enc_81e0(word arg1) {
    local10 = arg1;    // $81E6
    local11 = 0;    // $81E8
    while (record_field_byte(local10)) {    // $81F2
        local11 = (local11 + 1);    // $81EE
        local10 = (local10 + 1);    // $81F1
    }
    set_draw_origin(((30 - local11) - ((unsigned)24 / (unsigned)local11)), 4);    // $8207
    return draw_string_banked(arg1);    // $8210
}

// Decompiled from source/2-asm-vm\bank18.asm sub $8211
// $8211 enc_port_table
// (body @ $8216)

word enc_port_table(void) {
    local10 = ((current_port * 19) + 0xAFD8);    // $8220
    if ((mem_7068 != 1)) {    // $8226
    mem_7068 = 1;    // $822A
    mem_7069 = 0;    // $822E
    }
L_8231:
    upload_sprite_block();    // $8231
    reset_all_chr();    // $8234
    enc_check_port(mem_6663);    // $823B
    syscall_id09_syscall_banked_blit_m3(2, 2, 28, 4, 0xA4DC, 0xA54C, 225);    // $824E
    enc_81e0(local10);    // $8253
    draw_year();    // $8257
    draw_month();    // $825A
    draw_day();    // $825D
    opt_loop_8683();    // $8267
    enc_setup(current_port);    // $826F
    return blit_alloc_tiles(2, 2, 28, 18, 0);    // $827E
}

// Decompiled from source/2-asm-vm\bank18.asm sub $827F
// $827F enc_draw_region
// (body @ $8284)

word enc_draw_region(word arg1) {
    blit_alloc_tiles(2, 6, 28, 14, 1);    // $828A
    local10 = vram_tile_cursor;    // $8291
    local11 = (vram_tile_cursor + 392);    // $8298
    blit_alloc_tiles(2, 6, 28, 14, 1);    // $829F
    blit_alloc_tiles(*(byte*)(((arg1 << 1) + 0x93FA)), *(byte*)(((arg1 << 1) + 0x93FB)), *(byte*)(((arg1 << 1) + 0x9408)), *(byte*)(((arg1 << 1) + 0x9409)), 1);    // $82C4
    vram_tile_cursor = (local10 - 392);    // $82CC
    syscall_id03_syscall_set_prg_bank(0, 1);    // $82D2
    local9 = local10;    // $82D7
    phi_val_82e9 = 0;    // $82D9
    while (((unsigned)local7 < (unsigned)0x0188)) {    // $82E9
        local9 = (local9 + 1);    // $82E0
        *(byte*)((local9 - 1)) = (*(byte*)((local9 - 1)) & 63);    // $82E6
        phi_val_82e9 = (local7 + 1);    // $82E8
        local7 = phi_val_82e9;    // $82E9
    }
    local6 = ((((*(byte*)(((arg1 << 1) + 0x93FB)) + -6) * 28) + *(byte*)(((arg1 << 1) + 0x93FA))) + -2);    // $830A
    local9 = (local10 + local6);    // $830E
    local8 = local11;    // $8310
    phi_val_8336 = 0;    // $8312
    while (((unsigned)local7 < (unsigned)*(byte*)(((arg1 << 1) + 0x9409)))) {    // $8336
        memcpy_ptr(local8, local9, *(byte*)(((arg1 << 1) + 0x9408)));    // $831F
        local9 = (local9 + 28);    // $8328
        local8 = (local8 + *(byte*)(((arg1 << 1) + 0x9408)));    // $8333
        phi_val_8336 = (local7 + 1);    // $8335
        local7 = phi_val_8336;    // $8336
    }
    syscall_id09_syscall_banked_blit_m3(2, 6, 28, 14, 0, local10, 255);    // $8350
    return syscall_id03_syscall_set_prg_bank(0, 5);    // $835B
}

// Decompiled from source/2-asm-vm\bank18.asm sub $835C
// $835C enc_cursor_835c
// (body @ $8361)

word enc_cursor_835c(void) {
    local11 = vram_tile_cursor;    // $8364
    syscall_id03_syscall_set_prg_bank(0, 1);    // $8368
    syscall_id09_syscall_banked_blit_m3(2, 6, 28, 14, 0, local11, 255);    // $8377
    return syscall_id03_syscall_set_prg_bank(0, 5);    // $8382
}

// Decompiled from source/2-asm-vm\bank18.asm sub $8383
// $8383 enc_cursor_8383
// (body @ $8388)

word enc_cursor_8383(void) {
    local11 = (vram_tile_cursor - 1008);    // $838E
    syscall_id03_syscall_set_prg_bank(0, 1);    // $8392
    syscall_id09_syscall_banked_blit_m3(2, 2, 28, 18, local11, (local11 + 504), 255);    // $83A6
    syscall_id03_syscall_set_prg_bank(0, 5);    // $83AD
    draw_year();    // $83B1
    draw_month();    // $83B4
    return draw_day();    // $83BA
}

// Decompiled from source/2-asm-vm\bank18.asm sub $83BB
// $83BB enc_83bb
// (body @ $83C0)

word enc_83bb(word arg1) {
    local10 = 0;    // $83C1
    if ((arg1 == 14)) goto L_83E3;    // $83C5
    local10 = 1;    // $83C9
    if ((arg1 != 39)) goto L_83D5;    // $83CE
    phi_83df_0 = 3;    // $83D2
    goto L_83DF;    // $83D2
L_83D5:
    if (!(mem_7398)) goto L_83E3;    // $83D8
    phi_83df_0 = (arg1 + -15);    // $83DE
L_83DF:
L_83E3:
    enc_draw_region(phi_83df_0);    // $83DF
    switch (arg1) {    // $83E4
        case 14: goto L_840D;    // $83E4
        case 15: goto L_8452;    // $83E4
        case 16: goto L_845B;    // $83E4
        case 17: goto L_8464;    // $83E4
        case 18: goto L_846A;    // $83E4
        case 19: goto L_8473;    // $83E4
        case 20: goto L_8487;    // $83E4
        case 21: goto L_842C;    // $83E4
        case 39: goto L_8490;    // $83E4
        default: goto L_8419;    // $83E4
    }    // $83E4
L_840D:
    phi_8413_0 = 222;    // $8410
    phi_8413_1 = 0x8ACE;    // $8410
L_8413:
    local11 = call_in_bank_dcd1(1, phi_8413_0, phi_8413_1);    // $8418
L_8419:
    if ((mem_7063 != 240)) goto L_84A2;    // $8420
    enc_cursor_8383();    // $8423
    mem_7063 = 1;    // $8427
    return local11;    // $842B
L_842C:
    local11 = cargo_menu();    // $8437
    if (!(local11)) goto L_8419;    // $8439
    blit_free_tiles(2, 2, 28, 18, 0);    // $8443
    draw_year();    // $8447
    draw_month();    // $844A
    draw_day();    // $844D
    return local11;    // $8451
L_8452:
L_8455:
    phi_8413_0 = 211;    // $8458
    phi_8413_1 = 0x9232;    // $8458
    goto L_8413;    // $8458
L_845B:
    phi_8413_0 = 217;    // $8461
    phi_8413_1 = 0x806E;    // $8461
    goto L_8413;    // $8461
L_8464:
    goto L_8455;    // $8467
L_846A:
    phi_8413_0 = 212;    // $8470
    phi_8413_1 = 0x947B;    // $8470
    goto L_8413;    // $8470
L_8473:
    local11 = tavern_entry_menu();    // $847E
    if (!(mem_729C)) goto L_8419;    // $8482
    return local11;    // $8486
L_8487:
    phi_8413_0 = 213;    // $848D
    phi_8413_1 = 0x82A7;    // $848D
    goto L_8413;    // $848D
L_8490:
    local11 = guild_quest_return();    // $849B
    if (local11) goto L_8419;    // $849D
    return local11;    // $84A1
L_84A2:
    if (!(local10)) goto L_84A9;    // $84A3
L_84A9:
    enc_cursor_835c();    // $84A6
    return local11;    // $84AA
}

// Decompiled from source/2-asm-vm\bank18.asm sub $84AB
// $84AB enc_loop_84ab
// (body @ $84B0)

word enc_loop_84ab(word arg1, word arg2, word arg3) {
L_84BA:
    phi_val_84cb = 0x9426;    // $84BD
    goto L_84CB;    // $84BD
    if ((((unsigned)((arg3 < 2) ? phi_val_84cb : arg1) >> 3) & 1)) goto L_84BA;    // $84C5
    phi_val_84cb = 0x9416;    // $84C8
L_84CB:
    local3 = phi_val_84cb;    // $84CB
    arg3 = (arg3 << 3);    // $84CF
    local2 = &local4;    // $84D3
    local1 = 0;    // $84D5
    do {    // $84D6
        *(byte*)(local2) = (*(byte*)(local3) + arg2);    // $84DD
        local2 = (local2 + 1);    // $84E0
        local3 = (local3 + 1);    // $84E3
        *(byte*)(local2) = (*(byte*)(local3) + arg3);    // $84EB
        local2 = (local2 + 1);    // $84EE
        local3 = (local3 + 1);    // $84F1
        *(byte*)(local2) = *(byte*)(local3);    // $84F5
        local2 = (local2 + 1);    // $84F8
        local3 = (local3 + 1);    // $84FB
        *(byte*)(local2) = (*(byte*)(local3) + arg1);    // $8503
        local2 = (local2 + 1);    // $8506
        local3 = (local3 + 1);    // $8509
        local1 = (local1 + 1);    // $850C
    } while (((unsigned)local1 < (unsigned)4));    // $8510
    return syscall_id13_syscall_set_chr_bank_alt(&local4, 22, 4);    // $851F
}

// Decompiled from source/2-asm-vm\bank18.asm sub $8520
// $8520 enc_set_chr
// (body @ $8525)

word enc_set_chr(void) {
    return syscall_id12_syscall_set_chr_banks(22, 4);    // $852D
}

// Decompiled from source/2-asm-vm\bank18.asm sub $852E
// $852E enc_dispatch
// (body @ $8533)

word enc_dispatch(word arg1, word arg2, word arg3, word arg4) {
    switch (arg4) {    // $8534
    case 16:
        phi_val_8557 = (arg2 + 7);    // $854B
        while (((unsigned)local11 >= (unsigned)arg2)) {    // $8557
            enc_loop_84ab(arg1, local11, 1);    // $8551
            phi_val_8557 = (local11 - 1);    // $8556
            local11 = phi_val_8557;    // $8557
        }
        phi_val_855f = 1;    // $855E
L_855F:
        arg3 = phi_val_855f;    // $855F
    default:
        return (arg3 & 3);    // $8563
    case 32:
        phi_val_8573 = (arg2 + -7);    // $8567
        while (((unsigned)local11 <= (unsigned)arg2)) {    // $8573
            enc_loop_84ab(arg1, local11, 0);    // $856D
            phi_val_8573 = (local11 + 1);    // $8572
            local11 = phi_val_8573;    // $8573
        }
        phi_val_855f = 0;    // $857B
        goto L_855F;    // $857B
    case 64:
        phi_val_858c = (arg1 + 7);    // $8580
        while (((unsigned)local11 >= (unsigned)arg1)) {    // $858C
            enc_loop_84ab(local11, arg2, 3);    // $8586
            phi_val_858c = (local11 - 1);    // $858B
            local11 = phi_val_858c;    // $858C
        }
        phi_val_855f = 3;    // $8594
        goto L_855F;    // $8594
    case 128:
        phi_val_85a6 = (arg1 + -7);    // $859A
        while (((unsigned)local11 <= (unsigned)arg1)) {    // $85A6
            enc_loop_84ab(local11, arg2, 2);    // $85A0
            phi_val_85a6 = (local11 + 1);    // $85A5
            local11 = phi_val_85a6;    // $85A6
        }
        phi_val_855f = 2;    // $85AE
        goto L_855F;    // $85AE
    }
}

// Decompiled from source/2-asm-vm\bank18.asm sub $85B1
// $85B1 enc_check_85b1
// (body @ $85B6)

word enc_check_85b1(word arg1, word arg2) {
    if ((arg2 != 4)) goto L_85CC;    // $85B9
    if ((!(((unsigned)arg1 >= (unsigned)5)))) return 1;    // $85BF
    phi_ret_85e6 = ((unsigned)arg1 < (unsigned)11);    // $85C7
    if (!(phi_ret_85e6)) goto L_85E6;    // $85C7
    return 5;    // $85CB
L_85CC:
    if ((!(((unsigned)arg1 >= (unsigned)5)))) return 3;    // $85CF
    if ((!(((unsigned)arg1 >= (unsigned)18)))) return 4;    // $85D8
    phi_ret_85e6 = ((unsigned)arg1 < (unsigned)25);    // $85E1
    if (!(!(phi_ret_85e6))) return 2;    // $85E1
    return phi_ret_85e6;    // $85E6
}

// Decompiled from source/2-asm-vm\bank18.asm sub $85E7
// $85E7 enc_85e7
// (body @ $85EC)

word enc_85e7(word arg1, word arg2, word arg3, word arg4, word arg5, word arg6) {
    arg5 = (arg5 << 3);    // $85F0
    goto L_8655;    // $85F2
L_85F5:
    if ((!((frame_sync(0) == arg1)))) return (frame_sync(0) != arg1);    // $85FC
    local3 = (((unsigned)arg6 / (unsigned)5) ? 0x9426 : 0x9416);    // $8610
    local2 = &local4;    // $8614
    local1 = 0;    // $8616
L_8617:
    *(byte*)(local2) = (*(byte*)(local3) + arg4);    // $861E
    local2 = (local2 + 1);    // $8621
    local3 = (local3 + 1);    // $8624
    *(byte*)(local2) = (*(byte*)(local3) + arg5);    // $862D
    local2 = (local2 + 1);    // $8630
    local3 = (local3 + 1);    // $8633
    *(byte*)(local2) = *(byte*)(local3);    // $8637
    local2 = (local2 + 1);    // $863A
    local3 = (local3 + 1);    // $863D
    *(byte*)(local2) = (*(byte*)(local3) + arg3);    // $8645
    local2 = (local2 + 1);    // $8648
    local3 = (local3 + 1);    // $864B
    local1 = (local1 + 1);    // $864E
    if (((unsigned)local1 < (unsigned)4)) goto L_8617;    // $8652
L_8655:
    arg2 = (arg2 - 1);    // $8657
    if ((arg2 + 1)) goto L_85F5;    // $8659
    phi_ret_866f = ((unsigned)arg6 % (unsigned)5);    // $8660
    if (phi_ret_866f) goto L_866F;    // $8660
    phi_ret_866f = syscall_id13_syscall_set_chr_bank_alt(&local4, 22, 4);    // $866B
L_866F:
    return phi_ret_866f;    // $866F
}

// Decompiled from source/2-asm-vm\bank18.asm sub $8670
// $8670 enc_8670
// (body @ $8675)

word enc_8670(void) {
    local11 = 2;    // $8676
    local10 = 6;    // $8678
    local8 = 0;    // $867A
    local6 = 0;    // $867B
    phi_val_867f = mem_7394;    // $867C
L_867F:
    local9 = phi_val_867f;    // $867F
L_8680:
    local8 = frame_sync(0);    // $8685
    enc_85e7(local8, 3, (((mem_7390 + local11) << 3) + -4), ((((mem_7392 + local10) - 1) << 3) + -2), local9, local6);    // $869F
    local6 = (local6 + 1);    // $86A5
    if (((unsigned)local6 > (unsigned)10)) {    // $86A9
    local6 = 0;    // $86AD
    }
L_86AE:
    switch (local8) {    // $86AF
        case 4: goto L_87A8;    // $86AF
        case 16: goto L_86C8;    // $86AF
        case 32: goto L_8720;    // $86AF
        case 64: goto L_8785;    // $86AF
        case 128: goto L_8751;    // $86AF
        default: goto L_8680;    // $86AF
    }    // $86AF
L_86C8:
    if (((unsigned)(mem_7392 - 1) < (unsigned)1)) goto L_8680;    // $86CE
    local7 = *(byte*)(((((mem_7392 - 1) * 28) + mem_7390) + 0x739E));    // $86E1
    if (!(local7)) goto L_86FB;    // $86E3
    if ((local7 != 1)) goto L_8680;    // $86E9
    mem_7394 = 0;    // $86ED
    return enc_check_85b1(mem_7390, mem_7392);    // $86FA
L_86FB:
    phi_val_86ff = (mem_7392 - 1);    // $86FE
L_86FF:
    mem_7392 = phi_val_86ff;    // $86FF
L_8702:
    phi_val_867f = enc_dispatch((((mem_7390 + local11) << 3) + -4), ((((mem_7392 + local10) - 1) << 3) + -2), local9, local8);    // $871D
    goto L_867F;    // $871D
L_8720:
    if (((unsigned)(mem_7392 + 1) > (unsigned)13)) goto L_8680;    // $8726
    local7 = *(byte*)(((((mem_7392 + 1) * 28) + mem_7390) + 0x739E));    // $8739
    if (!(local7)) goto L_874A;    // $873B
    if ((local7 != 1)) goto L_8680;    // $8741
    mem_7394 = 1;    // $8745
    return 7;    // $8749
L_874A:
    phi_val_86ff = (mem_7392 + 1);    // $874E
    goto L_86FF;    // $874E
L_8751:
    if (((unsigned)(mem_7390 + 1) > (unsigned)26)) goto L_8680;    // $8758
    local7 = *(byte*)((((mem_7392 * 28) + mem_7390) + 0x739F));    // $876A
    if (!(local7)) goto L_877B;    // $876C
    if ((local7 != 1)) goto L_8680;    // $8772
    mem_7394 = 3;    // $8776
    return 6;    // $877A
L_877B:
    phi_val_877f = (mem_7390 + 1);    // $877E
L_877F:
    mem_7390 = phi_val_877f;    // $877F
    goto L_8702;    // $8782
L_8785:
    if ((mem_7390 == 1)) goto L_8680;    // $878A
    local7 = *(byte*)((((mem_7392 * 28) + mem_7390) + 0x739D));    // $879C
    if (local7) goto L_8680;    // $879E
    phi_val_877f = (mem_7390 - 1);    // $87A5
    goto L_877F;    // $87A5
L_87A8:
    mem_7066 = (mem_7066 | 1);    // $87AE
    return 0;    // $87B2
}

// Decompiled from source/2-asm-vm\bank18.asm sub $87B3
// $87B3 enc_get_6f76
// (body @ $87B8)

word enc_get_6f76(void) {
    *(byte*)(fp - 1) = *(byte*)((current_port + 0x6F76));    // $87C0
    mem_7066 = 0;    // $87C4
    goto L_8834;    // $87C8
L_87CB:
    if (!(((unsigned)current_port < (unsigned)50))) goto L_8848;    // $87D1
    if (!((*(word*)(fp - 3) == 1))) goto L_8805;    // $87D8
    if ((*(byte*)(fp - 1) & 4)) goto L_8805;    // $87E0
    *(word*)(fp - 5) = 0;    // $87E4
L_87E6:
    copy_from_bank_dc80(((*(word*)(fp - 5) * 28) + 0x739E), 6, 0);    // $87F2
    *(word*)(fp - 5) = (*(word*)(fp - 5) + 1);    // $87F9
    if (((unsigned)*(word*)(fp - 5) < (unsigned)4)) goto L_87E6;    // $87FF
    goto L_8831;    // $8802
L_8805:
    if (!((*(word*)(fp - 3) == 2))) goto L_883E;    // $8809
    if (!((*(byte*)(fp - 1) & 16))) goto L_883E;    // $8812
L_881E:
    copy_from_bank_dc80(0x7424, 3, 1);    // $881A
    if (!(((unsigned)*(word*)(fp - 3) < (unsigned)8))) goto L_8831;    // $8822
    mem_7066 = (mem_7066 | (1 << *(word*)(fp - 3)));    // $882E
L_8831:
L_8834:
    *(word*)(fp - 3) = (*(word*)(fp - 3) + 1);    // $8834
    if (((unsigned)*(word*)(fp - 3) < (unsigned)9)) goto L_87CB;    // $883A
    return ((unsigned)*(word*)(fp - 3) < (unsigned)9);    // $883D
L_883E:
    phi_val_8842 = (*(word*)(fp - 3) == 2);    // $8841
L_8842:
    if (!(phi_val_8842)) goto L_881E;    // $8842
    goto L_8831;    // $8845
L_8848:
    phi_val_8842 = ((unsigned)*(word*)(fp - 3) < (unsigned)6);    // $884C
    goto L_8842;    // $884C
}

// Decompiled from source/2-asm-vm\bank18.asm sub $884F
// $884F enc_884f
// (body @ $8854)

word enc_884f(void) {
    *(word*)(fp - 82) = 0;    // $8855
L_8857:
    *(word*)(fp - 90) = ((*(word*)(fp - 82) * 24) + 0x6AA4);    // $8860
    if (!(*(byte*)(*(word*)(fp - 90)))) goto L_8874;    // $8865
    *(word*)(fp - 82) = (*(word*)(fp - 82) + 1);    // $886B
    if (((unsigned)*(word*)(fp - 82) < (unsigned)5)) goto L_8857;    // $8871
L_8874:
    *(word*)(fp - 88) = record_base_6b1c(*(word*)(fp - 82));    // $887A
    *(word*)(fp - 82) = ((unsigned)*(byte*)((*(word*)(fp - 88) + 20)) >> 5);    // $8883
    *(word*)(fp - 86) = 0xF386;    // $8888
    if (((unsigned)*(word*)(fp - 82) > (unsigned)2)) {    // $888E
    *(word*)(fp - 86) = 0xF3D6;    // $8894
    }
L_8896:
    *(word*)(fp - 84) = 5;    // $8897
    memcpy_ptr(*(word*)(fp - 86), (fp - 80), 80);    // $88A1
    *(word*)(fp - 82) = 0;    // $88A6
L_88A8:
    *(byte*)((((*(word*)(fp - 82) << 1) << 1) + (fp - 80))) = (*(byte*)((((*(word*)(fp - 82) << 1) << 1) + (fp - 80))) + 2);    // $88B7
    *(word*)(fp - 82) = (*(word*)(fp - 82) + 1);    // $88BB
    if (((unsigned)*(word*)(fp - 82) < (unsigned)20)) goto L_88A8;    // $88C2
    syscall_id13_syscall_set_chr_bank_alt((fp - 80), 1, 20);    // $88CD
    goto L_8912;    // $88D1
L_88D4:
    *(byte*)((((*(word*)(fp - 82) << 1) << 1) + (fp - 77))) = (*(byte*)((((*(word*)(fp - 82) << 1) << 1) + (fp - 77))) - 1);    // $88E1
L_88E2:
    *(word*)(fp - 82) = (*(word*)(fp - 82) + 1);    // $88E5
    if (((unsigned)*(word*)(fp - 82) < (unsigned)20)) goto L_8915;    // $88EC
    syscall_id13_syscall_set_chr_bank_alt((fp - 80), 1, 20);    // $88F7
    if (!(((unsigned)*(byte*)(fp - 77) < (unsigned)72))) goto L_8945;    // $8901
    *(byte*)((((*(word*)(fp - 82) << 1) << 1) + (fp - 77))) = (*(byte*)((((*(word*)(fp - 82) << 1) << 1) + (fp - 77))) - 1);    // $8911
L_8912:
    *(word*)(fp - 82) = 0;    // $8913
L_8915:
    if (((unsigned)*(byte*)((((*(word*)(fp - 82) << 1) << 1) + (fp - 77))) > (unsigned)12)) goto L_88D4;    // $8922
    *(byte*)((((*(word*)(fp - 82) << 1) << 1) + (fp - 79))) = 160;    // $8933
    if (!((*(word*)(fp - 82) == 19))) goto L_88E2;    // $8939
    return syscall_id12_syscall_set_chr_banks(1, 20);    // $8944
L_8945:
    syscall_id17_syscall_busy_wait(*(word*)(fp - 84));    // $8949
    goto L_8912;    // $894D
}

// Decompiled from source/2-asm-vm\bank18.asm sub $8950
// $8950 enc_now_leaving
// (body @ $8955)

word enc_now_leaving(word arg1) {
    local11 = ((current_port * 19) + 0xAFD8);    // $895F
    syscall_id08_syscall_queue_ppu_transfer(1, 20, 30, 8, 0, 0);    // $8969
    reset_chr_alloc();    // $896D
    syscall_id09_syscall_banked_blit_m3(6, 21, 20, 5, 0xB452, 0xB4B6, 231);    // $8980
    if (arg1) {    // $8985
    set_tile_cursor(8, 22);    // $898B
    draw_string(0x9436, 0);    // $8993
    draw_string_banked(local11);    // $8998
    draw_string(0x9444, 0);    // $89A0
    return enc_884f();    // $89A7
    }
L_89A8:
    set_tile_cursor(8, 22);    // $89AB
    return draw_string(0x9448, 1);    // $89B7
}

// Decompiled from source/2-asm-vm\bank18.asm sub $89B8
// $89B8 enc_draw_markers
// (body @ $89BD)

word enc_draw_markers(void) {
    if (mem_737E) goto L_89D6;    // $89C0
    mem_7390 = 14;    // $89C4
    mem_7392 = 11;    // $89C8
    mem_7394 = 1;    // $89CC
    mem_737E = 1;    // $89D0
    goto L_89E2;    // $89D3
L_89D6:
    mem_7390 = 3;    // $89D7
    mem_7392 = 10;    // $89DB
    mem_7394 = 0;    // $89DF
L_89E2:
    mem_7398 = 1;    // $89E3
    local7 = 1;    // $89E7
    local8 = 0x6662;    // $89EB
    current_port = find_port_by_key(*(byte*)(local8), *(byte*)((local8 + 1)), *(byte*)((local8 + 2)), *(byte*)((local8 + 3)));    // $89FF
    copy_from_bank(2, 226, 0xB156, 0x739E, 0x0188);    // $8A0F
    if (!(((unsigned)current_port >= (unsigned)50))) goto L_8A5C;    // $8A19
    local11 = 0;    // $8A1D
L_8A1E:
    copy_from_bank_dc80(((local11 * 28) + 0x739E), 20, 0);    // $8A2A
    local11 = (local11 + 1);    // $8A30
    if (((unsigned)local11 < (unsigned)5)) goto L_8A1E;    // $8A34
    copy_from_bank_dc80(0x742A, 196, 0);    // $8A3E
    local11 = 12;    // $8A43
L_8A44:
    copy_from_bank_dc80(((local11 * 28) + 0x73B4), 6, 0);    // $8A4F
    local11 = (local11 + 1);    // $8A55
    if (((unsigned)local11 < (unsigned)14)) goto L_8A44;    // $8A59
L_8A5C:
    draw_string(0x9534, 1);    // $8A60
    if (mem_7063) goto L_8A7A;    // $8A67
    vram_tile_cursor = 0x7062;    // $8A6D
    enc_port_table();    // $8A70
    mem_7063 = 1;    // $8A74
    goto L_8AAB;    // $8A77
L_8A7A:
    if ((mem_7063 != 240)) goto L_8A8E;    // $8A81
    mem_7063 = 1;    // $8A85
    enc_cursor_8383();    // $8A88
    goto L_8A9A;    // $8A8B
L_8A8E:
    enc_get_6f76();    // $8A8E
    draw_year();    // $8A91
    draw_month();    // $8A94
L_8A9A:
    draw_day();    // $8A97
    vram_tile_cursor = 0x7062;    // $8A9D
L_8AAB:
    blit_alloc_tiles(2, 2, 28, 18, 0);    // $8AA7
    mem_7266 = 255;    // $8AAE
    mem_7265 = 255;    // $8AB1
    mem_7264 = 255;    // $8AB4
    mem_7263 = 255;    // $8AB7
    mem_729C = 0;    // $8ABB
    if (!(((unsigned)current_port < (unsigned)50))) goto L_8ADE;    // $8AC4
    if (!(enc_91dd())) goto L_8AF2;    // $8ACA
    cargo_reset();    // $8AD4
    return enc_now_leaving(1);    // $8ADD
L_8ADE:
    draw_box_from_native();    // $8ADE
L_8AF2:
    draw_string(*(word*)(((load_operand16_14(5) << 1) + 0x9458)), 1);    // $8AEE
    local9 = 0;    // $8AF3
L_8AF4:
    local10 = enc_8670();    // $8AF7
    enc_set_chr();    // $8AF8
    if ((local10 == 7)) goto L_8B09;    // $8AFE
L_8B09:
    syscall_id12_syscall_set_chr_banks(1, 20);    // $8B05
    if (!(((local10 == 8) || (mem_7066 & (1 << local10))))) goto L_8B53;    // $8B18
    if ((local10 != 4)) goto L_8B40;    // $8B1E
    local9 = enc_83bb(39);    // $8B27
    if (local9) goto L_8B38;    // $8B29
    mem_7398 = 0;    // $8B2D
    local9 = enc_83bb((local10 + 14));    // $8B37
L_8B38:
    mem_7398 = 1;    // $8B39
    phi_val_8b47 = 0;    // $8B3D
    goto L_8B47;    // $8B3D
L_8B40:
    phi_val_8b47 = enc_83bb((local10 + 14));    // $8B43
L_8B47:
    local9 = phi_val_8b47;    // $8B47
L_8B53:
    opt_loop_8683();    // $8B4F
    if (!(mem_7267)) goto L_8B5A;    // $8B56
    return mem_7267;    // $8B59
L_8B5A:
    if (!(local7)) goto L_8B6C;    // $8B5B
    if (mem_729C) goto L_8B6C;    // $8B61
L_8B6C:
    enc_check_port(*(byte*)((local8 + 1)));    // $8B68
    if (local9) goto L_8B7B;    // $8B6D
L_8B7B:
    destination_menu();    // $8B77
    if (!(local9)) goto L_8AF4;    // $8B7C
    if (!((*(byte*)((local8 + 15)) & 2))) goto L_8B91;    // $8B84
    if (mem_729C) goto L_8B91;    // $8B8A
    phi_8b98_0 = 0;    // $8B8E
    goto L_8B98;    // $8B8E
L_8B91:
    if ((local10 != 7)) goto L_8B9C;    // $8B94
    phi_8b98_0 = 1;    // $8B97
L_8B98:
L_8B9C:
    enc_now_leaving(phi_8b98_0);    // $8B98
    mem_6B8C = 0;    // $8B9D
    return 0;    // $8BA0
}

// Decompiled from source/2-asm-vm\bank18.asm sub $8BA1
// $8BA1 get_6f76_bits
// (body @ $8BA6)

word get_6f76_bits(word arg1) {
    return (*(byte*)((*(byte*)&arg1 + 0x6F76)) & 3);    // $8BB0
}

// Decompiled from source/2-asm-vm\bank18.asm sub $8BB1
// $8BB1 enc_get_6b99
// (body @ $8BB6)

word enc_get_6b99(word arg1, word arg2) {
    *(byte*)(fp - 1) = ((unsigned)mem_6B99 >> ((*(byte*)&arg2 << 1) << 1));    // $8BC1
    return ((((unsigned)8 >> *(byte*)&arg1) & *(byte*)(fp - 1)) ? 0 : 1);    // $8BD9
}

// Decompiled from source/2-asm-vm\bank18.asm sub $8BDA
// $8BDA enc_quest_cond
// (body @ $8BDF)

word enc_quest_cond(void) {
    return !(((quest_flags & 8) && ((quest_flags & 1) && ((mem_7054 == 1) && (mem_7055 == current_port)))));    // $8C08
}

// Decompiled from source/2-asm-vm\bank18.asm sub $8C09
// $8C09 enc_get_6b9b
// (body @ $8C0E)

word enc_get_6b9b(word arg1, word arg2) {
    *(byte*)(fp - 1) = ((unsigned)mem_6B9B >> ((*(byte*)&arg2 << 1) << 1));    // $8C19
    return (((unsigned)8 >> *(byte*)&arg1) & *(byte*)(fp - 1));    // $8C29
}

// Decompiled from source/2-asm-vm\bank18.asm sub $8C2A
// $8C2A enc_port_rec
// (body @ $8C2F)

word enc_port_rec(word arg1, word arg2, word arg3) {
    *(word*)(fp - 5) = ((*(byte*)&arg3 * 14) + 0x67BA);    // $8C38
    local11 = 0x6B8D;    // $8C3D
    *(byte*)(fp - 3) = *(byte*)((*(byte*)(((((*(byte*)&arg1 << 1) << 1) + *(byte*)&arg2) + 0x95D4)) + local11));    // $8C51
    if (((unsigned)*(byte*)((((*(byte*)&arg2 << 1) << 1) + 0x6FBE)) > (unsigned)*(byte*)(fp - 3))) {    // $8C64
    } else {
    }
L_8C91:
    *(word*)(fp - 7) = 0;    // $8C91
    return *(word*)(fp - 7);    // $8C95
    }
}

// Decompiled from source/2-asm-vm\bank18.asm sub $8C96
// $8C96 enc_port_rec_b
// (body @ $8C9B)

word enc_port_rec_b(word arg1, word arg2, word arg3) {
    local10 = ((*(byte*)&arg3 * 14) + 0x67BA);    // $8CA4
    local11 = 0x6B8D;    // $8CA8
    *(byte*)(fp - 5) = *(byte*)((*(byte*)(((((*(byte*)&arg1 << 1) << 1) + *(byte*)&arg2) + 0x95E4)) + local11));    // $8CBC
    if (((unsigned)*(byte*)(fp - 5) < (unsigned)50)) {    // $8CC5
    } else {
    }
L_8CE9:
    *(word*)(fp - 7) = 0;    // $8CE9
    return *(word*)(fp - 7);    // $8CED
    }
}

// Decompiled from source/2-asm-vm\bank18.asm sub $8CEE
// $8CEE enc_bribe_ok
// (body @ $8CF3)

word enc_bribe_ok(void) {
    local10 = ((load_operand16_14(3) + 3) * 0x01F4);    // $8CFD
    if (mem_666B) goto L_8D17;    // $8D01
    draw_box_from_native();    // $8D04
    draw_window();    // $8D07
    draw_string(mem_953C, 1);    // $8D0E
    win_open();    // $8D12
    return 0;    // $8D16
L_8D17:
    draw_box_from_native();    // $8D17
    draw_window();    // $8D1A
    local11 = draw_labeled_value(mem_953E, 1, mem_666B);    // $8D28
    if (((local11 == 1))) return 0;    // $8D2D
    resolve_field_ptr(2, 21, mem_739C, 1);    // $8D39
    if (((unsigned)local11 > (unsigned)local10)) {    // $8D40
    if (load_operand16_14(4)) {    // $8D48
    draw_window();    // $8D4B
    draw_string(0x95F4, 1);    // $8D52
    win_open();    // $8D56
    mem_666B = (mem_666B - local11);    // $8D5F
    return 1;    // $8D63
    }
    }
L_8D64:
    draw_window();    // $8D64
    draw_string(0x9626, 1);    // $8D6B
    win_open();    // $8D6F
    return 10;    // $8D73
}

// Decompiled from source/2-asm-vm\bank18.asm sub $8D74
// $8D74 enc_8d74
// (body @ $8D79)

word enc_8d74(word arg1, word arg2) {
    *(word*)(fp - 3) = 0;    // $8D7A
L_8D7C:
    draw_box_from_native();    // $8D7C
    draw_window();    // $8D7F
    draw_string(mem_9542, 1);    // $8D86
    *(byte*)(fp - 1) = draw_tile_grid(8, 25, 8, 1, 0x9662, 2, 1);    // $8D98
    if (!((*(byte*)(fp - 1) != 255))) goto L_8D7C;    // $8DA2
    if (*(byte*)(fp - 1)) goto L_8DC7;    // $8DA8
    *(word*)(fp - 3) = enc_bribe_ok(*(byte*)&arg1);    // $8DB3
    if (!(*(word*)(fp - 3))) goto L_8D7C;    // $8DB7
    if ((*(word*)(fp - 3) == 10)) {    // $8DBE
    *(word*)(fp - 3) = 0;    // $8DC2
    }
L_8DC4:
    return *(word*)(fp - 3);    // $8DC6
L_8DC7:
    resolve_field_ptr(2, 21, mem_739C, 1);    // $8DCE
    draw_window();    // $8DD2
    if (arg2) {    // $8DD6
    phi_8de4_0 = 0x9671;    // $8DDD
    phi_8de4_1 = 1;    // $8DDD
    } else {
    phi_8de4_0 = 0x96A7;    // $8DE1
    phi_8de4_1 = 1;    // $8DE1
    }
L_8DE4:
    draw_string(phi_8de4_0, phi_8de4_1);    // $8DE4
    win_open();    // $8DE8
    return 0;    // $8DEC
    }
}

// Decompiled from source/2-asm-vm\bank18.asm sub $8DED
// $8DED enc_proud
// (body @ $8DF2)

word enc_proud(word arg1, word arg2) {
    draw_box_from_native();    // $8DF2
    draw_window();    // $8DF5
    draw_string(mem_9540, 1);    // $8DFC
    win_open();    // $8E00
    resolve_field_ptr(2, 21, mem_739C, 1);    // $8E0A
    draw_window();    // $8E0E
    draw_string(0x96C4, 1);    // $8E15
    win_open();    // $8E19
    if (enc_8d74(*(byte*)&arg1, arg2)) {    // $8E25
    draw_box_variant(0, 0);    // $8E2A
    draw_window();    // $8E2E
    draw_string(0x9700, 1);    // $8E35
    win_open();    // $8E39
    draw_box_from_native();    // $8E3C
    draw_window();    // $8E3F
    draw_string(0x972D, 1);    // $8E46
    win_open();    // $8E4A
    return 0;    // $8E4E
    }
L_8E4F:
    draw_box_variant(0, 0);    // $8E51
    draw_window();    // $8E55
    draw_text(0x9750);    // $8E5B
    return 1;    // $8E60
}

// Decompiled from source/2-asm-vm\bank18.asm sub $8E61
// $8E61 enc_scan_ships
// (body @ $8E66)

word enc_scan_ships(void) {
    *(byte*)(fp - 1) = scan_records_6c90_flag(0, (fp - 7));    // $8E6F
    while (((unsigned)*(byte*)&local11 < (unsigned)*(byte*)(fp - 1))) {    // $8E92
        copy_from_bank_dc80(((*(byte*)((*(byte*)&local11 + (fp - 7))) * 24) + 0x6AAA), 10, 0);    // $8E8A
        *(byte*)&local11 = (*(byte*)&local11 + 1);    // $8E92
    }
    return ((unsigned)*(byte*)&local11 < (unsigned)*(byte*)(fp - 1));    // $8EA1
}

// Decompiled from source/2-asm-vm\bank18.asm sub $8EA2
// $8EA2 enc_youll_pay
// (body @ $8EA7)

word enc_youll_pay(void) {
    draw_box_variant(0, 0);    // $8EA9
    draw_window();    // $8EAD
    draw_string(0x976E, 1);    // $8EB4
    mem_666B = ((unsigned)mem_666B / (unsigned)10);    // $8EBE
    enc_scan_ships();    // $8EC1
    return win_open();    // $8EC7
}

// Decompiled from source/2-asm-vm\bank18.asm sub $8EC8
// $8EC8 enc_got_away
// (body @ $8ECD)

word enc_got_away(void) {
    draw_box_from_native();    // $8ECD
    draw_window();    // $8ED0
    if (((unsigned)((mem_6544 << 1) + mem_6BC3) > (unsigned)load_operand16_14(120))) {    // $8EE6
    draw_string(0x9790, 1);    // $8EED
    win_open();    // $8EF1
    } else {
    draw_string(0x979D, 1);    // $8EFB
    win_open();    // $8EFF
    resolve_field_ptr(2, 21, mem_739C, 1);    // $8F09
    draw_window();    // $8F0D
    draw_string(0x97B7, 0);    // $8F14
    win_close();    // $8F18
    }
L_8F1E:
    enc_youll_pay();    // $8F1B
    return 1;    // $8F1F
    }
}

// Decompiled from source/2-asm-vm\bank18.asm sub $8F20
// $8F20 enc_no_bribe_gold
// (body @ $8F25)

word enc_no_bribe_gold(void) {
    local9 = ((mem_739B * 14) + 0x67BA);    // $8F2E
    local10 = ((unsigned)(*(byte*)((((mem_739A << 1) << 1) + 0x6FBE)) * *(byte*)((mem_739A + local9))) / (unsigned)5);    // $8F44
    local10 = ((load_operand16_14(local10) + local10) + 100);    // $8F4E
    if (mem_666B) goto L_8F7D;    // $8F52
    draw_box_from_native();    // $8F55
    win_render_syscall(1);    // $8F59
    draw_string(0x97EE, 1);    // $8F61
    win_open();    // $8F65
    resolve_field_ptr(2, 21, mem_739C, 1);    // $8F6F
    phi_8fcb_0 = 0x9809;    // $8F7A
    phi_8fcb_1 = 1;    // $8F7A
    draw_window();    // $8F73
    goto L_8FCB;    // $8F7A
L_8F7D:
    draw_box_from_native();    // $8F7D
    draw_window();    // $8F80
    local11 = draw_labeled_value(0x983E, 1, mem_666B, 1);    // $8F8F
    if (((local11 == 1))) return 0;    // $8F94
    resolve_field_ptr(2, 21, mem_739C, 1);    // $8FA0
    if (((unsigned)local11 > (unsigned)local10)) {    // $8FA7
    draw_window();    // $8FAA
    draw_string(0x9857, 1);    // $8FB1
    win_open();    // $8FB5
    mem_666B = (mem_666B - local11);    // $8FBE
    } else {
    phi_8fcb_0 = 0x986F;    // $8FC8
    phi_8fcb_1 = 1;    // $8FC8
L_8FCB:
    draw_window();    // $8FC4
    draw_string(phi_8fcb_0, phi_8fcb_1);    // $8FCB
    win_open();    // $8FCF
    }
L_8FD5:
    enc_youll_pay();    // $8FD2
    return 1;    // $8FD6
    }
}

// Decompiled from source/2-asm-vm\bank18.asm sub $8FD7
// $8FD7 enc_honest
// (body @ $8FDC)

word enc_honest(void) {
    if (load_operand16_14(3)) goto L_9000;    // $8FE1
    resolve_field_ptr(2, 21, mem_739C, 1);    // $8FEB
    draw_window();    // $8FEF
    draw_string(0x9898, 1);    // $8FF6
    win_open();    // $8FFA
    goto L_901C;    // $8FFD
L_9000:
    resolve_field_ptr(2, 21, mem_739C, 1);    // $9007
    draw_window();    // $900B
    draw_string(0x98D2, 1);    // $9012
    win_open();    // $9016
L_901C:
    enc_youll_pay();    // $9019
    return 1;    // $901D
}

// Decompiled from source/2-asm-vm\bank18.asm sub $901E
// $901E enc_gruff_men
// (body @ $9023)

word enc_gruff_men(word arg1) {
    idx_over_20(14);    // $9024
    audio_param_gated(1);    // $9029
    draw_box_from_native();    // $902D
    win_render_syscall(1);    // $9031
    draw_string(0x9944, 1);    // $9039
    win_open();    // $903D
    resolve_field_ptr(2, 21, mem_739C, 1);    // $9047
    draw_window();    // $904B
    draw_string(0x997C, 0);    // $9052
    draw_string_banked(mem_6542);    // $9059
    draw_field(0x997E, *(word*)(((*(byte*)&arg1 << 1) + 0x9907)));    // $906A
    win_close();    // $906E
    *(word*)(fp - 3) = 0;    // $9072
    do {    // $9074
        draw_box_from_native();    // $9074
        win_render_syscall(1);    // $9078
        draw_string(0x99AA, 1);    // $9080
        *(byte*)(fp - 1) = draw_tile_grid(8, 23, 6, 2, 0x990D, 3, 2);    // $9092
        if ((*(byte*)(fp - 1) != 255)) {    // $909C
        *(word*)(fp - 3) = (*(*(word*)(((*(byte*)(fp - 1) << 1) + 0x9913))))(*(byte*)&arg1);    // $90AE
        }
L_90B0:
    } while (!(*(word*)(fp - 3)));    // $90B2
    draw_box_variant(0, 0);    // $90B7
    draw_window();    // $90BB
    draw_text(0x99BC);    // $90C1
    return audio_reset_gated(16);    // $90CB
}

// Decompiled from source/2-asm-vm\bank18.asm sub $90CC
// $90CC enc_rumor
// (body @ $90D1)

word enc_rumor(void) {
    syscall_id08_syscall_queue_ppu_transfer(1, 20, 30, 8, 0, 0);    // $90DA
    draw_box_from_native();    // $90DE
    local11 = (mem_666D & 7);    // $90E6
    draw_window();    // $90E7
    if (!((quest_flags & 1))) goto L_910C;    // $90EF
    if (!((*(byte*)(player_char_record) != 9))) goto L_910C;    // $90F8
    if (!((*(byte*)(player_char_record) != 8))) goto L_910C;    // $9101
    if (!(load_operand16_14(3))) goto L_9115;    // $9109
L_910C:
    if (load_operand16_14(20)) goto L_9134;    // $9112
L_9115:
    if (((unsigned)current_port < (unsigned)50)) {    // $911B
L_9130:
    phi_91d8_0 = (load_operand16_14(2) ? 0x99F7 : 0x9A34);    // $9131
    phi_91d8_1 = 1;    // $9131
    } else {
    if (current_port) goto L_914F;    // $9137
    if (mem_6540) goto L_914F;    // $913D
    if (load_operand16_14(10)) goto L_914F;    // $9145
    phi_91d8_0 = 0x9A64;    // $914C
    phi_91d8_1 = 0;    // $914C
    goto L_91D8;    // $914C
L_914F:
    *(byte*)(fp - 3) = get_6f76_bits(current_port);    // $9157
    if (!((((unsigned)*(byte*)(fp - 3) > (unsigned)1) & enc_get_6b99(0, *(byte*)(fp - 3))))) goto L_918B;    // $916B
    if (!(load_operand16_14(2))) goto L_918B;    // $9173
    if (!(load_operand16_14(2))) goto L_9185;    // $917C
    goto L_9130;    // $9182
L_9185:
    goto L_9130;    // $9188
L_918B:
    if (!(((unsigned)mem_6545 < (unsigned)5))) goto L_91D4;    // $9190
    if (load_operand16_14(12)) goto L_91D4;    // $9198
    draw_string(0x9B04, 1);    // $919F
    win_open();    // $91A3
    draw_window();    // $91A6
    switch (load_operand16_14(3)) {    // $91AE
        case 0: goto L_91BF;    // $91AE
        case 1: goto L_91C6;    // $91AE
        case 2: goto L_91CD;    // $91AE
        default: goto L_91DC;    // $91AE
    }    // $91AE
L_91BF:
    phi_91d8_0 = 0x9B34;    // $91C3
    phi_91d8_1 = 1;    // $91C3
    goto L_91D8;    // $91C3
L_91C6:
    phi_91d8_0 = 0x9B6D;    // $91CA
    phi_91d8_1 = 1;    // $91CA
    goto L_91D8;    // $91CA
L_91CD:
    phi_91d8_0 = 0x9BA6;    // $91D1
    phi_91d8_1 = 1;    // $91D1
    goto L_91D8;    // $91D1
L_91D4:
    phi_91d8_0 = 0x9BE2;    // $91D5
    phi_91d8_1 = 1;    // $91D5
    }
L_91D8:
L_91DC:
    return draw_string(phi_91d8_0, phi_91d8_1);    // $91DC
    }
}

// Decompiled from source/2-asm-vm\bank18.asm sub $91DD
// $91DD enc_91dd
// (body @ $91E2)

word enc_91dd(void) {
    local7 = 0x6662;    // $91E5
    *(byte*)&local9 = find_port_by_key(*(byte*)(local7), *(byte*)((local7 + 1)), *(byte*)((local7 + 2)), *(byte*)((local7 + 3)));    // $91F9
    mem_739B = find_port_by_key(*(byte*)(local7), *(byte*)((local7 + 1)), *(byte*)((local7 + 2)), *(byte*)((local7 + 3)));    // $91FC
    local8 = 0;    // $9200
    *(byte*)(fp - 5) = get_6f76_bits(*(byte*)&local9);    // $9209
    if ((*(byte*)(fp - 5) == 2)) {    // $9211
    phi_val_9225 = 0x141C;    // $9217
    } else {
    if (!((*(byte*)(fp - 5) == 3))) goto L_9228;    // $921F
    phi_val_9225 = 0x1870;    // $9222
    }
L_9225:
    mem_739C = phi_val_9225;    // $9225
L_9228:
    mem_739A = (*(byte*)(fp - 5) - 1);    // $922C
    if (((unsigned)*(byte*)(fp - 5) > (unsigned)1)) {    // $9234
    if (enc_get_6b99(0, (*(byte*)(fp - 5) - 1))) {    // $9241
    local11 = enc_port_rec(0, (*(byte*)(fp - 5) - 1), *(byte*)&local9);    // $9252
    if (!(((unsigned)load_operand16_14(0x012C) >= (unsigned)local11))) goto L_929D;    // $925C
    if (enc_quest_cond()) {    // $9262
    if (!(enc_get_6b9b(0, (*(byte*)(fp - 5) - 1)))) goto L_9299;    // $926F
    local10 = enc_port_rec_b(0, (*(byte*)(fp - 5) - 1), *(byte*)&local9);    // $9280
    if (((unsigned)load_operand16_14(100) < (unsigned)local10)) {    // $9289
L_928D:
    phi_val_92a7 = enc_proud((*(byte*)(fp - 5) - 1), 0);    // $9296
    goto L_92A7;    // $9296
L_9299:
    goto L_928D;    // $929A
L_929D:
    enc_gruff_men((*(byte*)(fp - 5) - 1));    // $92A2
    phi_val_92a7 = 1;    // $92A6
L_92A7:
    local8 = phi_val_92a7;    // $92A7
    }
    }
    }
    }
L_92A8:
    if (local8) goto L_92AF;    // $92A9
L_92AF:
    enc_rumor();    // $92AC
    return local8;    // $92B0
    }
}
