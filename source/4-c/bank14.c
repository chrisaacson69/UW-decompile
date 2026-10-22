// Decompiled from source/2-asm-vm\bank14.asm sub $8003
// $8003 duel_8003
// (body @ $8008)

word duel_8003(word arg1, word arg2, word arg3, word arg4) {
    if ((arg3 == 1)) {    // $800B
    arg4 = ((unsigned)arg4 % (unsigned)10);    // $8012
    phi_push_80cf = *(word*)((((arg4 << 1) << 1) + 0x95F8));    // $8027
    } else {
    phi_ret_80d9 = ((unsigned)arg3 > (unsigned)1);    // $802D
    if (!(phi_ret_80d9)) goto L_80D9;    // $802D
    phi_ret_80d9 = ((unsigned)arg3 <= (unsigned)2);    // $8033
    if (!(phi_ret_80d9)) goto L_80D9;    // $8033
    copy_from_bank_dc80(&local7, arg3, 255);    // $803E
    goto L_8058;    // $8043
L_8046:
    *(byte*)((local5 + &local7)) = ((unsigned)arg4 % (unsigned)10);    // $8051
    arg4 = ((unsigned)arg4 / (unsigned)10);    // $8056
L_8058:
    local5 = (local5 - 1);    // $8059
    if (!(arg4)) goto L_8065;    // $805B
    if ((local5 > 1)) goto L_8046;    // $8062
L_8065:
    local9 = &local11;    // $8068
    local8 = &local10;    // $806C
    copy_from_bank_dc80(local9, arg3, 0);    // $8070
    copy_from_bank_dc80(local8, arg3, 0);    // $8077
    phi_val_80be = 0;    // $807C
    while (((unsigned)local5 < (unsigned)arg3)) {    // $80BE
        local6 = *(byte*)((local5 + &local7));    // $8087
        if ((local6 == 255)) goto L_80B6;    // $808D
        copy_from_bank(2, 224, *(word*)((((local6 << 1) << 1) + 0x95F8)), local9, 1);    // $809F
L_80B6:
        copy_from_bank(2, 224, *(word*)((((local6 << 1) << 1) + 0x95FA)), local8, 1);    // $80B2
        local9 = (local9 + 1);    // $80B8
        local8 = (local8 + 1);    // $80BB
        phi_val_80be = (local5 + 1);    // $80BD
        local5 = phi_val_80be;    // $80BE
    }
    phi_push_80cf = &local11;    // $80CC
    }
L_80CF:
    phi_ret_80d9 = syscall_id09_syscall_banked_blit_m3(arg1, arg2, arg3, 1, phi_push_80cf, &local10, 224);    // $80D5
L_80D9:
    return phi_ret_80d9;    // $80D9
    }
}

// Decompiled from source/2-asm-vm\bank14.asm sub $80DA
// $80DA duel_grid_check
// (body @ $80DF)

word duel_grid_check(word arg1) {
    if ((!(((unsigned)arg1 < (unsigned)16)))) return 0;    // $80E3
    return (((unsigned)((unsigned)(arg1 - 1) % (unsigned)5) <= (unsigned)2) ? 2 : 1);    // $80F6
}

// Decompiled from source/2-asm-vm\bank14.asm sub $80F7
// $80F7 duel_80f7
// (body @ $80FC)

word duel_80f7(word arg1, word arg2, word arg3) {
    local5 = (arg1 ? arg2 : arg1);    // $8105
    mem_74A8 = scan_records_6c90_flag(local5, 0x749E);    // $810E
    local11 = 0x749E;    // $8114
    local10 = (0x749E + mem_74A8);    // $8119
    goto L_81A6;    // $811A
L_811D:
    local6 = *(byte*)(((*(byte*)(local11) * 24) + 0x6AA4));    // $8127
    if (local6) {    // $8129
    if (((unsigned)load_operand16_14((130 - *(byte*)(((local6 * 10) + 0x6BC2)))) > (unsigned)*(byte*)((((local6 - 1) << 1) + 0x6A6E)))) {    // $814A
    *(byte*)(((*(byte*)(local11) * 7) + 0x6C96)) = (*(byte*)(((*(byte*)(local11) * 7) + 0x6C96)) & 191);    // $815C
    local9 = 0x6A9A;    // $8160
    local8 = 0x6A9A;    // $8161
    local7 = (0x6A9A + 10);    // $8163
    goto L_8178;    // $8164
L_8167:
    if ((*(byte*)(local9) != local6)) {    // $816B
    *(byte*)(local8) = *(byte*)(local9);    // $8171
    local8 = (local8 + 1);    // $8174
    }
L_8175:
    local9 = (local9 + 1);    // $8177
L_8178:
    if (!(((unsigned)local9 < (unsigned)local7))) goto L_8187;    // $817B
    if ((*(byte*)(local9) != 255)) goto L_8167;    // $8184
L_8187:
    *(byte*)(local8) = 255;    // $818B
    *(byte*)((((local6 - 1) << 1) + 0x6A6F)) = (load_operand16_14(25) + 4);    // $819B
    arg3 = (arg3 + 1);    // $819E
    *(byte*)((arg3 - 1)) = local6;    // $81A2
    }
    }
L_81A3:
    local11 = (local11 + 1);    // $81A5
L_81A6:
    if (((unsigned)local11 < (unsigned)local10)) goto L_811D;    // $81A9
    return ((unsigned)local11 < (unsigned)local10);    // $81AC
}

// Decompiled from source/2-asm-vm\bank14.asm sub $81AD
// $81AD duel_table_7417
// (body @ $81B2)

word duel_table_7417(void) {
    local10 = 0x7417;    // $81B5
    local9 = (0x7417 + 135);    // $81B9
    while (((unsigned)local10 < (unsigned)local9)) {    // $81D3
        *(byte*)(local10) = load_operand16_14(2);    // $81C3
        if (load_operand16_14(30)) goto L_81D0;    // $81CA
        *(byte*)(local10) = 3;    // $81CF
L_81D0:
        local10 = (local10 + 1);    // $81D2
    }
    return ((unsigned)local10 < (unsigned)local9);    // $81D9
}

// Decompiled from source/2-asm-vm\bank14.asm sub $81DA
// $81DA duel_81da
// (body @ $81DF)

word duel_81da(void) {
    local8 = 0;    // $81E0
L_81E1:
    local9 = 0;    // $81E2
L_81E3:
    if (((local8 != 1) || (local9 != 1))) {    // $81EC
    if (load_operand16_14(10)) goto L_8238;    // $81F4
    local7 = load_operand16_14(8);    // $81FC
    local10 = 0;    // $81FE
L_81FF:
    local11 = 0;    // $8200
L_8201:
    *(byte*)(((((((local8 * 3) + local10) * 15) + (local9 * 5)) + local11) + 0x7417)) = *(byte*)(((((local7 * 15) + (local10 * 5)) + local11) + 0x9620));    // $8225
    local11 = (local11 + 1);    // $8228
    if (((unsigned)local11 < (unsigned)5)) goto L_8201;    // $822C
    local10 = (local10 + 1);    // $8231
    if (((unsigned)local10 < (unsigned)3)) goto L_81FF;    // $8235
    }
L_8238:
    local9 = (local9 + 1);    // $823A
    if (((unsigned)local9 < (unsigned)3)) goto L_81E3;    // $823E
    local8 = (local8 + 1);    // $8243
    if (((unsigned)local8 < (unsigned)3)) goto L_81E1;    // $8247
    return ((unsigned)local8 < (unsigned)3);    // $824A
}

// Decompiled from source/2-asm-vm\bank14.asm sub $824B
// $824B duel_name_7390
// (body @ $8250)

word duel_name_7390(void) {
    local9 = 0x7390;    // $8253
    local11 = 0x7417;    // $8257
    local10 = (0x7417 + 135);    // $825B
    while (((unsigned)local11 < (unsigned)local10)) {    // $827B
        switch (*(byte*)(local11)) {    // $8261
        case 2:
        case 3:
        case 4:
        case 5:
            *(byte*)(local9) = 255;    // $8274
        default:
        }
        local9 = (local9 + 1);    // $8277
        local11 = (local11 + 1);    // $827A
    }
    return ((unsigned)local11 < (unsigned)local10);    // $8281
}

// Decompiled from source/2-asm-vm\bank14.asm sub $8282
// $8282 duel_season
// (body @ $8287)

word duel_season(word arg1) {
    if (((unsigned)game_month > (unsigned)2)) {    // $828C
    if (!(((unsigned)game_month < (unsigned)9))) goto L_829F;    // $8294
    } else {
    }
L_82A2:
    mem_74DC = ((mem_7083 & 15) + 1);    // $82A5
    if (((unsigned)game_month > (unsigned)2)) {    // $82AD
    if (!(((unsigned)game_month < (unsigned)9))) goto L_82C0;    // $82B5
    } else {
    }
L_82C3:
    local8 = ((unsigned)((mem_7082 & 15) * 5) / (unsigned)7);    // $82C9
    phi_val_82f4 = local8;    // $82CB
    while ((local9 < (local8 + 6))) {    // $82F4
        if (((local9 - local8) <= 3)) {    // $82DB
        } else {
        }
L_82F1:
        *(byte*)(((local9 % 6) + 0x74D6)) = (((local8 + 4) == local9) ? 3 : 2);    // $82F1
        phi_val_82f4 = (local9 + 1);    // $82F3
        local9 = phi_val_82f4;    // $82F4
    }
    local8 = ((unsigned)((unsigned)(*(byte*)(((arg1 << 4) + 0x666A)) * 5) / (unsigned)7) % (unsigned)6);    // $830C
    local11 = 0x749E;    // $8310
    local10 = (0x749E + mem_74A8);    // $8315
    while (((unsigned)local11 < (unsigned)local10)) {    // $8336
        *(byte*)((((((unsigned)*(byte*)(local11) < (unsigned)5) ? 0 : 5) + ((unsigned)*(byte*)(local11) % (unsigned)5)) + 0x74B6)) = local8;    // $8332
        local11 = (local11 + 1);    // $8335
    }
    return ((unsigned)local11 < (unsigned)local10);    // $833C
        }
    }
    }
}

// Decompiled from source/2-asm-vm\bank14.asm sub $833D
// $833D duel_fleet_749e
// (body @ $8342)

word duel_fleet_749e(word arg1, word arg2) {
    local11 = 0x749E;    // $8345
    local10 = (0x749E + mem_74A8);    // $834A
    while (((unsigned)local11 < (unsigned)local10)) {    // $83AE
        local7 = (load_operand16_14(5) + arg1);    // $8355
        local6 = (load_operand16_14(3) + arg2);    // $835D
        local9 = (((local6 * 15) + local7) + 0x7390);    // $8367
        if ((*(byte*)(local9) == 1)) continue;    // $836C
        if ((*(byte*)(local9) == 255)) {    // $8375
        *(byte*)((((local6 * 15) + local7) + 0x7417)) = load_operand16_14(2);    // $8387
        }
L_8388:
        *(byte*)(local9) = 1;    // $838A
        local8 = ((((unsigned)*(byte*)(local11) < (unsigned)5) ? 0 : 5) + ((unsigned)*(byte*)(local11) % (unsigned)5));    // $839E
        *(byte*)((local8 + 0x74AC)) = ((local6 * 15) + local7);    // $83AA
        local11 = (local11 + 1);    // $83AD
    }
    return ((unsigned)local11 < (unsigned)local10);    // $83B4
}

// Decompiled from source/2-asm-vm\bank14.asm sub $83B5
// $83B5 duel_load_name
// (body @ $83BA)

word duel_load_name(word arg1, word arg2) {
    copy_from_bank_dc80(0x7390, 135, 0);    // $83C1
    duel_table_7417(arg2);    // $83C6
    duel_81da();    // $83CA
    duel_name_7390();    // $83CD
    local11 = ((arg1 << 4) + 0x6662);    // $83D7
    local10 = ((arg2 << 4) + 0x6662);    // $83DF
    local9 = ((*(byte*)((local11 + 2)) + 1) - *(byte*)((local10 + 2)));    // $83EA
    local8 = ((*(byte*)((local11 + 3)) + 1) - *(byte*)((local10 + 3)));    // $83F5
    mem_74A8 = scan_records_6c90_flag(arg1, 0x749E);    // $83FE
    duel_season(arg1);    // $8402
    duel_fleet_749e((local9 * 5), (local8 * 3));    // $840E
    mem_74A8 = scan_records_6c90_flag(arg2, 0x749E);    // $841A
    duel_season(arg2);    // $841E
    return duel_fleet_749e(5, 3);    // $8428
}

// Decompiled from source/2-asm-vm\bank14.asm sub $8429
// $8429 duel_fleet_74a3
// (body @ $842E)

word duel_fleet_74a3(void) {
    local11 = 0x74A3;    // $8431
    local10 = 0x749E;    // $8435
    local8 = mem_74AA;    // $8439
    local7 = mem_74A8;    // $843D
    if (((unsigned)mem_749E < (unsigned)5)) {    // $8443
    local11 = 0x749E;    // $8449
    local10 = 0x74A3;    // $844D
    local8 = mem_74A8;    // $8451
    local7 = mem_74AA;    // $8455
    }
L_8456:
    local9 = (local11 + local8);    // $8459
    while (((unsigned)local11 < (unsigned)local9)) {    // $8475
        if (*(byte*)(((*(byte*)(local11) * 24) + 0x6AA4))) goto L_8472;    // $8467
        mem_74D2 = *(byte*)(local11);    // $846C
        goto L_847B;    // $846F
L_8472:
        local11 = (local11 + 1);    // $8474
    }
L_847B:
    local4 = 0;    // $847C
    local6 = 0;    // $847D
    local9 = (local10 + local7);    // $8481
    while (((unsigned)local10 < (unsigned)local9)) {    // $84A5
        local5 = ((*(byte*)(((*(byte*)(local10) * 7) + 0x6C96)) & 15) + 1);    // $8491
        if (((unsigned)local5 > (unsigned)local4)) {    // $8495
        local4 = local5;    // $8499
        local3 = *(byte*)(local10);    // $849C
        local8 = local6;    // $849E
        }
L_849F:
        local6 = (local6 + 1);    // $84A1
        local10 = (local10 + 1);    // $84A4
    }
    mem_74D4 = local3;    // $84AC
    return local3;    // $84AF
}

// Decompiled from source/2-asm-vm\bank14.asm sub $84B0
// $84B0 duel_84b0
// (body @ $84B5)

word duel_84b0(word arg1) {
    local10 = 7;    // $84B6
    local9 = 3;    // $84B8
    local8 = 1;    // $84BA
    local11 = 0x9698;    // $84BE
    if (arg1) {    // $84C0
    local10 = 2;    // $84C4
    local9 = 18;    // $84C7
    local8 = 2;    // $84C9
    local11 = 0x969F;    // $84CD
    }
L_84CE:
    native_draw_box(local10, local9, 23, 8, local8, 0);    // $84D5
    return draw_string(local11, 1);    // $84DF
}

// Decompiled from source/2-asm-vm\bank14.asm sub $84E0
// $84E0 duel_84e0
// (body @ $84E5)

word duel_84e0(word arg1, word arg2) {
    local11 = 8;    // $84E6
    local10 = 4;    // $84E8
    if (arg1) {    // $84EA
    local11 = 3;    // $84EE
    local10 = 19;    // $84F1
    }
L_84F2:
    duel_84b0(arg1);    // $84F3
    set_tile_cursor(local11, local10);    // $84F9
    return draw_string(arg2, 1);    // $8503
}

// Decompiled from source/2-asm-vm\bank14.asm sub $8504
// $8504 duel_8504
// (body @ $8509)

word duel_8504(word arg1, word arg2) {
    local11 = (arg1 ? arg1 : arg2);    // $8512
    if (((mem_7054 == 3))) return (mem_705A == local11);    // $8518
    return (mem_7055 == local11);    // $8526
}

// Decompiled from source/2-asm-vm\bank14.asm sub $8527
// $8527 duel_grid_8527
// (body @ $852C)

word duel_grid_8527(word arg1) {
    local11 = ((unsigned)(arg1 - 1) / (unsigned)5);    // $8530
    if (((unsigned)local11 >= (unsigned)2)) {    // $8534
    phi_8542_0 = 0x997E;    // $853B
    phi_8542_1 = 0;    // $853B
    } else {
    phi_8542_0 = 0x9983;    // $853F
    phi_8542_1 = 0;    // $853F
    }
L_8542:
    draw_string(phi_8542_0, phi_8542_1);    // $8542
    return draw_string(*(word*)(((local11 << 1) + 0x995B)), 0);    // $8553
    }
}

// Decompiled from source/2-asm-vm\bank14.asm sub $8554
// $8554 duel_speak
// (body @ $8559)

word duel_speak(word arg1, word arg2) {
    resolve_field_ptr(2, 4, ((arg1 ? arg1 : arg2) + 20), 16);    // $8569
    if ((quest_flags & 8)) goto L_8596;    // $8572
    if ((quest_flags & 1)) {    // $857A
    if (((unsigned)mem_7054 > (unsigned)1)) {    // $8582
    if (duel_8504(arg1, arg2)) {    // $858B
    quest_flags = 0;    // $858F
    mem_7054 = 0;    // $8593
    }
    }
    }
L_8596:
    if (!((quest_flags & 8))) goto L_85B9;    // $859B
    if (((quest_flags & 2) == 2)) goto L_85B9;    // $85A5
    if (((unsigned)mem_7054 <= (unsigned)1)) goto L_85B9;    // $85AD
    if (duel_8504(arg1, arg2)) goto L_866E;    // $85B6
L_85B9:
    if (arg1) {    // $85BA
    resolve_field_ptr(25, 19, search_6a9a_ptr(), 16);    // $85C7
    duel_84e0(1, 0x9989);    // $85CF
    win_open();    // $85D3
    duel_84e0(0, 0x99AB);    // $85DA
    draw_string(0x99AC, 0);    // $85E2
    draw_string_banked(*(word*)((((arg1 + 20) * 7) + 0x6542)));    // $85F1
    draw_field(0x99B2, mem_96A6);    // $85FB
    win_close();    // $85FF
    phi_8611_0 = 1;    // $8610
    phi_8611_1 = mem_96A8;    // $8610
L_8611:
    resolve_field_ptr(25, 19, 0, 16);    // $8609
L_8615:
    duel_84e0(phi_8611_0, phi_8611_1);    // $8611
    return win_open();    // $8618
    }
L_8619:
    resolve_field_ptr(25, 19, 0, 16);    // $8620
    switch (duel_grid_check(arg2)) {    // $8629
        case 0: goto L_863A;    // $8629
        case 1: goto L_864C;    // $8629
        case 2: goto L_865D;    // $8629
        default: goto L_8615;    // $8629
    }    // $8629
L_863A:
    duel_84e0(1, mem_96AA);    // $863E
L_8648:
    phi_8611_0 = 0;    // $8649
    phi_8611_1 = mem_96AC;    // $8649
    win_open();    // $8642
    goto L_8611;    // $8649
L_864C:
    duel_84e0(1, mem_96AE);    // $8650
    win_open();    // $8654
    goto L_8648;    // $865A
L_865D:
    duel_84e0(1, mem_96B2);    // $8661
    win_open();    // $8665
    goto L_8648;    // $866B
L_866E:
    resolve_field_ptr(25, 19, 0, 16);    // $8675
    if ((mem_7054 == 2)) {    // $867E
    duel_84e0(1, 0x99B7);    // $8685
    draw_string(0x99B8, 0);    // $868D
    draw_string_banked(*(word*)(((((arg1 ? arg1 : arg2) + 20) * 7) + 0x6542)));    // $86A4
    draw_string(0x99CB, 0);    // $86AC
    draw_string(mem_96B6, 0);    // $86B4
    win_close();    // $86B8
    }
L_86C3:
    duel_84e0(0, mem_96B8);    // $86BF
    if ((mem_7054 == 3)) {    // $86C8
    duel_84e0(1, 0x99CE);    // $86CF
    draw_field(0x99CF, mem_96BA, mem_96BC, record_base_d604(31));    // $86E3
    win_close();    // $86E7
    }
L_86F2:
    duel_84e0(0, mem_96BE);    // $86EE
    if ((mem_7054 == 4)) {    // $86F7
    duel_84e0(0, mem_96C0);    // $86FE
    win_open();    // $8702
    duel_84e0(1, mem_96C2);    // $8709
    win_open();    // $870D
    resolve_field_ptr(2, 4, 12, 17);    // $8715
    duel_84e0(0, 0x99EA);    // $871D
    draw_string(0x99EB, 0);    // $8725
    draw_string_banked(mem_6542);    // $872C
    draw_field(0x99F1, mem_96C4);    // $8736
    win_close();    // $873A
    }
L_8745:
    duel_84e0(1, mem_96C6);    // $8741
    return win_open();    // $8748
}

// Decompiled from source/2-asm-vm\bank14.asm sub $8749
// $8749 duel_scan_ff
// (body @ $874E)

word duel_scan_ff(word arg1) {
    while ((*(byte*)(arg1) != 255)) {    // $8775
        resolve_field_ptr(25, 19, *(byte*)(arg1), 16);    // $875A
        duel_84e0(1, *(word*)(((load_operand16_14(3) << 1) + 0x99F7)));    // $876B
        win_open();    // $876F
        arg1 = (arg1 + 1);    // $8774
    }
    return (*(byte*)(arg1) != 255);    // $877E
}

// Decompiled from source/2-asm-vm\bank14.asm sub $877F
// $877F duel_draw_markers
// (body @ $8784)

word duel_draw_markers(void) {
    reset_all_chr();    // $8784
    syscall_id09_syscall_banked_blit_m3(0, 0, 32, 22, 0xA1FC, 0xA4BC, 224);    // $8797
    syscall_id09_syscall_banked_blit_m3(2, 22, 5, 6, 0xA77C, 0xA79A, 224);    // $87AA
    syscall_id09_syscall_banked_blit_m3(7, 22, 5, 6, 0xA7B8, 0xA7D6, 224);    // $87BD
    return draw_string(0x9A61, 1);    // $87C9
}

// Decompiled from source/2-asm-vm\bank14.asm sub $87CA
// $87CA duel_87ca
// (body @ $87CF)

word duel_87ca(word arg1, word arg2, word arg3, word arg4) {
    if (!(((unsigned)arg4 < (unsigned)5))) goto L_87E3;    // $87D2
    local11 = 0;    // $87D6
    if ((arg4 == mem_74D2)) {    // $87DC
    phi_val_87ee = 1;    // $87E0
    goto L_87EE;    // $87E0
L_87E3:
    local11 = 2;    // $87E4
    if ((arg4 == mem_74D4)) {    // $87EA
    phi_val_87ee = 3;    // $87ED
L_87EE:
    local11 = phi_val_87ee;    // $87EE
    }
    }
L_87EF:
    return draw_icon_df4e(arg1, arg2, local11, arg3);    // $87F7
}

// Decompiled from source/2-asm-vm\bank14.asm sub $87F8
// $87F8 duel_87f8
// (body @ $87FD)

word duel_87f8(word arg1, word arg2) {
    local11 = (arg2 + arg1);    // $8800
    while (((unsigned)arg2 < (unsigned)local11)) {    // $884D
        local9 = ((((unsigned)*(byte*)(arg2) < (unsigned)5) ? 0 : 5) + ((unsigned)*(byte*)(arg2) % (unsigned)5));    // $8817
        local10 = *(byte*)((local9 + 0x74AC));    // $881E
        local8 = ((unsigned)local10 % (unsigned)15);    // $8822
        local7 = ((unsigned)local10 / (unsigned)15);    // $8826
        duel_87ca(((local8 << 1) + 1), (((local8 % 2) ? 3 : 2) + (local7 << 1)), *(byte*)((local9 + 0x74B6)), *(byte*)(arg2));    // $8846
        arg2 = (arg2 + 1);    // $884C
    }
    return ((unsigned)arg2 < (unsigned)local11);    // $8853
}

// Decompiled from source/2-asm-vm\bank14.asm sub $8854
// $8854 duel_8854
// (body @ $8859)

word duel_8854(void) {
    duel_draw_markers();    // $8859
    local8 = 0;    // $885D
    local9 = 0;    // $885E
    local11 = 0x7417;    // $8862
    local10 = (0x7417 + 135);    // $8866
    while (((unsigned)local11 < (unsigned)local10)) {    // $8897
        draw_icon_dfae(((local9 << 1) + 1), (((local9 % 2) ? 3 : 2) + (local8 << 1)), *(byte*)(local11));    // $8882
        local9 = (local9 + 1);    // $8888
        if ((local9 > 14)) {    // $888C
        local9 = 0;    // $8890
        local8 = (local8 + 1);    // $8893
        }
L_8894:
        local11 = (local11 + 1);    // $8896
    }
    duel_87f8(mem_74A8, 0x749E);    // $88A3
    return duel_87f8(mem_74AA, 0x74A3);    // $88B1
}

// Decompiled from source/2-asm-vm\bank14.asm sub $88B2
// $88B2 duel_get_74dc
// (body @ $88B7)

word duel_get_74dc(void) {
    phi_ret_8905 = mem_74DC;    // $88BA
    if (phi_ret_8905) {    // $88BA
    if (((unsigned)game_month > (unsigned)2)) {    // $88C2
    if (!(((unsigned)game_month < (unsigned)9))) goto L_88D5;    // $88CA
    } else {
    }
L_88D8:
    local11 = (mem_7082 & 15);    // $88DA
    syscall_id09_syscall_banked_blit_m3(3, 24, 2, 2, *(word*)((((local11 << 1) << 1) + 0x9A68)), *(word*)((((local11 << 1) << 1) + 0x9A6A)), 224);    // $88F6
    phi_ret_8905 = duel_8003(6, 22, 1, mem_74DC);    // $8901
L_8905:
    return phi_ret_8905;    // $8905
    }
    }
}

// Decompiled from source/2-asm-vm\bank14.asm sub $8906
// $8906 duel_draw_8906
// (body @ $890B)

word duel_draw_8906(word arg1, word arg2) {
    if (arg1) {    // $890C
    local11 = arg1;    // $8910
    }
L_8911:
    if (arg2) {    // $8912
    local11 = arg2;    // $8916
    }
L_8917:
    set_draw_origin(2, 12);    // $8919
    draw_string(0x9A88, 0);    // $8921
    draw_string_banked(*(word*)((((local11 + 20) * 7) + 0x6542)));    // $8930
    draw_string(0x9A90, 0);    // $8938
    duel_grid_8527(local11);    // $893D
    draw_string(0x9A92, 0);    // $8945
    set_draw_origin(15, 13);    // $894B
    draw_string(0x9A94, 1);    // $8953
    set_draw_origin(8, 16);    // $895A
    draw_string(0x9A98, 0);    // $8962
    draw_string_banked(record_field_word(((mem_6F74 << 1) + 0xBC56)));    // $8974
    if (mem_6F74) {    // $897B
    phi_8989_0 = 0x9A9A;    // $8982
    phi_8989_1 = 0;    // $8982
    } else {
    phi_8989_0 = 0x9A9C;    // $8986
    phi_8989_1 = 0;    // $8986
    }
L_8989:
    draw_string(phi_8989_0, phi_8989_1);    // $8989
    draw_string_banked(mem_6542);    // $8990
    return draw_string(0x9AA5, 0);    // $899C
    }
}

// Decompiled from source/2-asm-vm\bank14.asm sub $899D
// $899D duel_load_899d
// (body @ $89A2)

word duel_load_899d(word arg1) {
    copy_from_bank_dc80((fp - 5), 5, 255);    // $89AA
    reset_all_chr();    // $89AE
    idx_over_20(12);    // $89B2
    audio_param_gated(1);    // $89B7
    duel_80f7(arg1, mem_729D, (fp - 5));    // $89C4
    duel_load_name(arg1, mem_729D);    // $89CD
    mem_74A8 = scan_records_6c90_flag(arg1, 0x749E);    // $89D9
    mem_74AA = scan_records_6c90_flag(mem_729D, 0x74A3);    // $89E7
    duel_fleet_74a3();    // $89EA
    duel_draw_8906(arg1, mem_729D);    // $89F2
    syscall_id06_syscall_set_sprite_block(0xF376, 0, 16);    // $89FD
    duel_speak(arg1, mem_729D);    // $8A06
    duel_scan_ff((fp - 5));    // $8A0E
    upload_sprite_block();    // $8A12
    reset_chr_alloc();    // $8A15
    mem_74A8 = scan_records_6c90_flag(arg1, 0x749E);    // $8A20
    mem_74AA = scan_records_6c90_flag(mem_729D, 0x74A3);    // $8A2E
    duel_8854();    // $8A31
    duel_get_74dc();    // $8A34
    mem_75FA = mem_74B6;    // $8A3A
    syscall_id06_syscall_set_sprite_block(0x9AA7, 0, 16);    // $8A44
    syscall_id06_syscall_set_sprite_block(0xF376, 16, 16);    // $8A50
    return 1;    // $8A55
}

// Decompiled from source/2-asm-vm\bank14.asm sub $8A56
// $8A56 duel_sprites
// (body @ $8A5B)

word duel_sprites(void) {
    upload_sprite_block();    // $8A5B
    reset_chr_alloc();    // $8A5E
    reset_all_chr();    // $8A61
    syscall_id06_syscall_set_sprite_block(0xF376, 0, 16);    // $8A6B
    return syscall_id06_syscall_set_sprite_block(0xF376, 16, 16);    // $8A7B
}

// Decompiled from source/2-asm-vm\bank14.asm sub $8A7C
// $8A7C duel_resolve_target
// (body @ $8A81)

word duel_resolve_target(word arg1, word arg2) {
    resolve_field_ptr(2, 4, search_6a9a_ptr(), 16);    // $8A89
    duel_84e0(0, mem_9AFE);    // $8A91
    win_open();    // $8A95
    resolve_field_ptr(2, 4, (arg2 + 20), 16);    // $8AA0
    duel_84e0(0, mem_9B00);    // $8AA8
    return win_open();    // $8AAF
}

// Decompiled from source/2-asm-vm\bank14.asm sub $8AB0
// $8AB0 duel_ab0
// (body @ $8AB5)

word duel_ab0(word arg1) {
    local6 = 1;    // $8AB6
    local10 = 0x6542;    // $8ABA
    resolve_field_ptr(25, 19, 0, 16);    // $8AC2
    duel_84e0(1, mem_9B02);    // $8ACA
    win_open();    // $8ACE
    resolve_field_ptr(2, 4, search_6a9a_ptr(), 16);    // $8AD9
    duel_84e0(0, mem_9B04);    // $8AE1
    win_open();    // $8AE5
    mem_74A8 = scan_records_6c90_flag(arg1, 0x749E);    // $8AF0
    local8 = 0x749E;    // $8AF6
    local7 = (0x749E + mem_74A8);    // $8AFB
    while (((unsigned)local8 < (unsigned)local7)) {    // $8BA5
        local11 = ((*(byte*)(local8) * 24) + 0x6AA4);    // $8B08
        if (*(byte*)(local11)) {    // $8B0B
        *(byte*)((local11 + 22)) = (*(byte*)((local11 + 22)) - max_s16(*(byte*)((local11 + 22)), (load_operand16_14(5) + 5)));    // $8B26
        local10 = ((*(byte*)(local11) * 7) + 0x6542);    // $8B2F
        if (((unsigned)load_operand16_14(40) > (unsigned)((*(byte*)((local10 + 2)) + *(byte*)((local10 + 3))) + 20))) {    // $8B44
        *(byte*)((local10 + 6)) = (*(byte*)((local10 + 6)) & 254);    // $8B50
        *(word*)(((*(byte*)(local8) * 7) + 0x6C94)) = 0;    // $8B5B
        local6 = 0;    // $8B5D
        }
L_8B5E:
        local9 = (((*(byte*)(local11) - 1) << 1) + 0x6A6E);    // $8B66
        if (((unsigned)load_operand16_14(70) > (unsigned)*(byte*)(local9))) {    // $8B72
        *(byte*)((local9 + 1)) = (load_operand16_14(20) + 14);    // $8B7F
        *(word*)(((*(byte*)(local8) * 7) + 0x6C94)) = 0;    // $8B8A
        local6 = 0;    // $8B8C
        }
L_8B8D:
        *(byte*)(local9) = (*(byte*)(local9) - max_s16(*(byte*)(local9), (load_operand16_14(5) + 5)));    // $8BA1
        }
L_8BA2:
        local8 = (local8 + 1);    // $8BA4
    }
    if (local6) {    // $8BAC
    phi_8bb8_0 = 0x9E25;    // $8BB2
    } else {
    phi_8bb8_0 = 0x9E3E;    // $8BB5
    }
L_8BB8:
    duel_84e0(0, phi_8bb8_0);    // $8BB9
    win_open();    // $8BBD
    duel_sprites();    // $8BC0
    opt_sprite(4);    // $8BCB
    draw_string(0x9E7E, 0);    // $8BD3
    draw_string_banked(mem_6542);    // $8BDA
    draw_string(mem_9D12, 0);    // $8BE2
    scale_6b88(120);    // $8BE8
    return duel_sprites();    // $8BEF
    }
}

// Decompiled from source/2-asm-vm\bank14.asm sub $8BF0
// $8BF0 duel_will_hear
// (body @ $8BF5)

word duel_will_hear(word arg1, word arg2) {
    resolve_field_ptr(2, 4, (arg2 + 20), 16);    // $8BFD
    local11 = duel_grid_check(arg2);    // $8C06
    duel_84e0(0, *(word*)(((local11 << 1) + 0x9AB8)));    // $8C10
    if ((local11 == 2)) {    // $8C17
    }
L_8C34:
    draw_field_m1(0x9E80, ((((unsigned)(arg2 - 1) / (unsigned)5) == 2) ? 0x9E9D : 0x9EA4));    // $8C30
    win_open();    // $8C34
    opt_sprite(3);    // $8C3F
    draw_string(mem_9D0A, 0);    // $8C47
    draw_string_banked(mem_6542);    // $8C4E
    draw_string(mem_9D0C, 0);    // $8C56
    scale_6b88(120);    // $8C5C
    return duel_sprites();    // $8C63
}

// Decompiled from source/2-asm-vm\bank14.asm sub $8C64
// $8C64 duel_check_705a
// (body @ $8C69)

word duel_check_705a(word arg1) {
    if (((mem_7054 == 3))) return (mem_705A == arg1);    // $8C6E
    return (mem_7055 == arg1);    // $8C7C
}

// Decompiled from source/2-asm-vm\bank14.asm sub $8C7D
// $8C7D duel_death
// (body @ $8C82)

word duel_death(word arg1, word arg2) {
    resolve_field_ptr(2, 4, (arg2 + 20), 16);    // $8C8A
    local10 = duel_grid_check(arg2);    // $8C93
    duel_84e0(0, *(word*)(((local10 << 1) + 0x9AF8)));    // $8C9D
    if ((local10 == 1)) {    // $8CA4
    draw_string(0x9ECC, 0);    // $8CAB
    local9 = ((unsigned)(arg2 - 1) / (unsigned)5);    // $8CB3
    if (!(((unsigned)local9 < (unsigned)3))) goto L_8CD7;    // $8CB7
    draw_string(0x9EE6, 0);    // $8CBE
    draw_string(*(word*)(((local9 << 1) + 0x9EA9)), 0);    // $8CCB
L_8CD7:
    draw_string(0x9EF2, 0);    // $8CD3
    win_close();    // $8CD7
    } else {
    }
L_8CE0:
    win_open();    // $8CDD
    opt_sprite(3);    // $8CE8
    draw_string(mem_9D0E, 0);    // $8CF0
    draw_string_banked(mem_6542);    // $8CF7
    draw_string(mem_9D10, 0);    // $8CFF
    scale_6b88(120);    // $8D05
    if (!(((quest_flags & 10) == 8))) goto L_8E26;    // $8D10
    if (!(duel_check_705a(arg2))) goto L_8E26;    // $8D18
    duel_sprites();    // $8D1B
    local11 = 0x6542;    // $8D21
    resolve_field_ptr(25, 19, 0, 16);    // $8D29
    if ((mem_7054 == 2)) {    // $8D32
    duel_84e0(1, mem_9B06);    // $8D39
    quest_flags = (quest_flags | 2);    // $8D43
    }
L_8D49:
    win_open();    // $8D46
    if ((mem_7054 == 3)) {    // $8D4E
    duel_84e0(1, 0x9EF4);    // $8D55
    quest_flags = (quest_flags | 2);    // $8D5F
    }
L_8D65:
    win_open();    // $8D62
    if ((mem_7054 == 4)) {    // $8D6A
    duel_84e0(1, mem_9B08);    // $8D71
    win_open();    // $8D75
    resolve_field_ptr(2, 4, search_6a9a_ptr(), 16);    // $8D80
    duel_84e0(0, mem_9B0A);    // $8D88
    win_open();    // $8D8C
    duel_sprites();    // $8D8F
    opt_sprite(1);    // $8D9A
    draw_string(mem_9D16, 0);    // $8DA2
    draw_string_banked(mem_6542);    // $8DA9
    draw_string(mem_9D18, 0);    // $8DB1
    scale_6b88(120);    // $8DB7
    duel_sprites();    // $8DBB
    resolve_field_ptr(2, 4, 12, 17);    // $8DC3
    duel_84e0(0, 0x9F14);    // $8DCB
    draw_string(0x9F15, 0);    // $8DD3
    draw_string_banked(mem_6542);    // $8DDA
    draw_string(mem_9B0C, 0);    // $8DE2
    win_close();    // $8DE6
    local11 = 0x6542;    // $8DEC
    resolve_field_ptr(25, 19, 0, 16);    // $8DF4
    duel_84e0(1, mem_9B0E);    // $8DFC
    win_open();    // $8E00
    resolve_field_ptr(2, 4, search_6a9a_ptr(), 16);    // $8E0B
    duel_84e0(0, mem_9B10);    // $8E13
    win_open();    // $8E17
    quest_flags = (quest_flags | 2);    // $8E20
    goto L_8E34;    // $8E23
L_8E26:
    *(word*)(((arg2 << 4) + 0x666F)) = (*(word*)(((arg2 << 4) + 0x666F)) & 127);    // $8E33
    }
L_8E34:
    *(byte*)((((arg2 + 20) * 7) + 0x6548)) = (*(byte*)((((arg2 + 20) * 7) + 0x6548)) & 254);    // $8E44
    *(byte*)(((arg2 << 4) + 0x6671)) = (*(byte*)(((arg2 << 4) + 0x6671)) | 8);    // $8E51
    return *(byte*)(((arg2 << 4) + 0x6671));    // $8E52
    }
}

// Decompiled from source/2-asm-vm\bank14.asm sub $8E53
// $8E53 duel_date
// (body @ $8E58)

word duel_date(void) {
    local11 = mem_7068;    // $8E5B
    mem_7068 = 0;    // $8E5D
    draw_string(0x9F17, 0);    // $8E64
    draw_month();    // $8E68
    draw_string(0x9F1C, 0);    // $8E6F
    draw_day();    // $8E73
    draw_string(0x9F1E, 0);    // $8E7A
    draw_year();    // $8E7E
    draw_string(0x9F21, 0);    // $8E85
    draw_string_banked(mem_6542);    // $8E8C
    draw_string(0x9F2D, 0);    // $8E94
    mem_7068 = local11;    // $8E99
    return local11;    // $8E9C
}

// Decompiled from source/2-asm-vm\bank14.asm sub $8E9D
// $8E9D duel_lost_life
// (body @ $8EA2)

word duel_lost_life(void) {
    opt_sprite(5);    // $8EAA
    duel_date();    // $8EAE
    return draw_string(0x9F30, 0);    // $8EB9
}

// Decompiled from source/2-asm-vm\bank14.asm sub $8EBA
// $8EBA duel_load_eba
// (body @ $8EBF)

word duel_load_eba(word arg1, word arg2) {
    copy_from_bank_dc80(0x75FC, 58, 0);    // $8EC5
    mem_74A8 = scan_records_6c90_flag(arg1, 0x749E);    // $8ED1
    local6 = 0x749E;    // $8ED7
    local5 = (0x749E + mem_74A8);    // $8EDC
    goto L_8FE8;    // $8EDD
L_8EE0:
    local11 = ((*(byte*)(local6) * 7) + 0x6C90);    // $8EE8
    *(word*)(fp - 26) = *(byte*)(((*(byte*)(local6) * 24) + 0x6AA4));    // $8EF3
    if (*(word*)(fp - 26)) {    // $8EF7
    if (((unsigned)*(byte*)(((*(word*)(fp - 26) * 10) + 0x6BC2)) < (unsigned)load_operand16_14(60))) {    // $8F0C
    local8 = (((*(word*)(fp - 26) - 1) << 1) + 0x6A6E);    // $8F17
    *(byte*)(local8) = (*(byte*)(local8) - max_s16(*(byte*)(local8), (load_operand16_14(5) + 8)));    // $8F2C
    }
    }
L_8F2D:
    if ((!(*(word*)((local11 + 4))) || !(*(byte*)(local11)))) {    // $8F35
    local10 = ((*(byte*)(local6) * 24) + 0x6AA4);    // $8F41
    mem_7630 = (mem_7630 + (*(word*)((local10 + 16)) / 10));    // $8F4D
    mem_7632 = (mem_7632 + (*(word*)((local10 + 18)) / 10));    // $8F5B
    mem_7634 = (mem_7634 + *(word*)((local10 + 20)));    // $8F67
    local7 = (local10 + 6);    // $8F6C
    local4 = (local10 + 1);    // $8F6F
    local1 = 0;    // $8F71
L_8F72:
    if (*(word*)(((local1 << 1) + local7))) {    // $8F77
    *(word*)(((*(byte*)((local4 + local1)) << 1) + 0x75FC)) = (*(word*)(((*(byte*)((local4 + local1)) << 1) + 0x75FC)) + *(word*)(((local1 << 1) + local7)));    // $8F8D
    }
L_8F8E:
    local1 = (local1 + 1);    // $8F90
    if (((unsigned)local1 < (unsigned)5)) goto L_8F72;    // $8F94
    local3 = 0x6A9A;    // $8F9A
    local2 = 0x6A9A;    // $8F9B
    phi_val_8fb6 = 0;    // $8F9D
    goto L_8FB6;    // $8F9D
L_8FA0:
    if ((*(byte*)(local3) != *(byte*)(local10))) {    // $8FA7
    *(byte*)(local2) = *(byte*)(local3);    // $8FAD
    local2 = (local2 + 1);    // $8FB0
    }
L_8FB1:
    local3 = (local3 + 1);    // $8FB3
    phi_val_8fb6 = (local1 + 1);    // $8FB5
L_8FB6:
    local1 = phi_val_8fb6;    // $8FB6
    if (!(((unsigned)local1 < (unsigned)10))) goto L_8FC6;    // $8FBA
    if ((*(byte*)(local3) != 255)) goto L_8FA0;    // $8FC3
L_8FC6:
    *(byte*)(local2) = 255;    // $8FCA
    *(byte*)(((*(byte*)(local10) * 7) + 0x6548)) = (*(byte*)(((*(byte*)(local10) * 7) + 0x6548)) & 254);    // $8FDA
    *(byte*)((local11 + 6)) = (*(byte*)((local11 + 6)) & 191);    // $8FE4
    }
L_8FE5:
    local6 = (local6 + 1);    // $8FE7
L_8FE8:
    if (((unsigned)local6 < (unsigned)local5)) goto L_8EE0;    // $8FEB
    mem_74AA = scan_records_6c90_flag(arg2, 0x74A3);    // $8FF6
    local0 = 0;    // $8FFA
    local6 = 0x74A3;    // $8FFE
    local5 = (0x74A3 + mem_74AA);    // $9003
    goto L_9080;    // $9004
L_9007:
    local11 = ((*(byte*)(local6) * 7) + 0x6C90);    // $900F
    if (!(*(byte*)(local11))) goto L_903C;    // $9012
    if (!(*(word*)((local11 + 4)))) goto L_903C;    // $9018
    if ((mem_74E0 == 4)) goto L_903C;    // $9020
    if ((mem_74E0 == 2)) {    // $9028
    if (load_operand16_14(3)) goto L_907D;    // $9030
    if ((*(byte*)(local6) != mem_74D4)) {    // $9039
L_903C:
    if ((!(*(byte*)(local11)) || (!(*(word*)((local11 + 4))) || (mem_74E0 == 4)))) {    // $904C
    local9 = (((*(byte*)(local6) + -5) * 3) + 0x6400);    // $9059
    if (*(word*)((local9 + 1))) {    // $905D
    *(word*)(((*(byte*)(local9) << 1) + 0x75FC)) = (*(word*)(((*(byte*)(local9) << 1) + 0x75FC)) + *(word*)((local9 + 1)));    // $906F
    }
L_9070:
    local0 = (local0 + 1);    // $9072
    }
L_9073:
    *(byte*)((local11 + 6)) = (*(byte*)((local11 + 6)) & 191);    // $907C
    }
    }
L_907D:
    local6 = (local6 + 1);    // $907F
L_9080:
    if (((unsigned)local6 < (unsigned)local5)) goto L_9007;    // $9083
    mem_7630 = (mem_7630 + ((load_operand16_14(50) + 30) * local0));    // $9095
    mem_7632 = (mem_7632 + ((load_operand16_14(50) + 30) * local0));    // $90A7
    mem_7634 = (mem_7634 + ((load_operand16_14(3) + 1) * local0));    // $90B7
    return mem_7634;    // $90BA
}

// Decompiled from source/2-asm-vm\bank14.asm sub $90BB
// $90BB duel_90bb
// (body @ $90C0)

word duel_90bb(word arg1, word arg2) {
    local11 = 0;    // $90C1
    do {    // $90C2
        local10 = local11;    // $90C3
        if (!(((unsigned)(arg1 + local11) >= (unsigned)15))) goto L_90E4;    // $90C9
        if (((unsigned)*(word*)(arg2) >= (unsigned)0x2EE0)) {    // $90D2
        local11 = (local11 + 1);    // $90D7
        *(word*)(arg2) = (*(word*)(arg2) - 0x2EE0);    // $90E0
        goto L_9102;    // $90E1
L_90E4:
        local9 = (((arg1 + local11) * (arg1 + local11)) * 50);    // $90F0
        if (((unsigned)*(word*)(arg2) > (unsigned)local9)) {    // $90F5
        *(word*)(arg2) = (*(word*)(arg2) - local9);    // $90FE
        local11 = (local11 + 1);    // $9101
        }
        }
L_9102:
    } while ((local10 != local11));    // $9105
    if (((unsigned)(arg1 + local11) > (unsigned)50)) {    // $910E
    local11 = (50 - arg1);    // $9115
    }
L_9116:
    return local11;    // $9117
}

// Decompiled from source/2-asm-vm\bank14.asm sub $9118
// $9118 duel_scan_666d
// (body @ $911D)

word duel_scan_666d(word arg1, word arg2) {
    local7 = 0x666D;    // $9120
    local9 = ((arg1 << 4) + 0x666D);    // $9128
    local11 = 0;    // $912A
    local10 = 0;    // $912B
    while (((unsigned)local11 < (unsigned)32)) {    // $9163
        if ((*(word*)(((((unsigned)local11 >> 4) << 1) + local9)) & (1 << (local11 & 15)))) {    // $9140
        if ((*(word*)(((((unsigned)local11 >> 4) << 1) + local7)) & (1 << (local11 & 15)))) goto L_9160;    // $9154
        *(byte*)(arg2) = local11;    // $9159
        arg2 = (arg2 + 1);    // $915C
        local10 = (local10 + 1);    // $915F
        }
L_9160:
        local11 = (local11 + 1);    // $9162
    }
    return local10;    // $916B
}

// Decompiled from source/2-asm-vm\bank14.asm sub $916C
// $916C duel_loop_916c
// (body @ $9171)

word duel_loop_916c(void) {
    do {    // $9171
        local11 = frame_sync(0);    // $9176
        if ((local11 == 1)) {    // $917A
        syscall_id08_syscall_queue_ppu_transfer(12, 13, 15, 10, 0, 0);    // $9184
        return 1;    // $9189
        }
L_918A:
    } while ((local11 != 2));    // $918D
    duel_sprites();    // $9190
    return 0;    // $9194
}

// Decompiled from source/2-asm-vm\bank14.asm sub $9195
// $9195 duel_9195
// (body @ $919A)

word duel_9195(word arg1, word arg2, word arg3) {
    resolve_field_ptr(2, 4, search_6a9a_ptr(), 16);    // $91A2
    duel_84e0(0, 0x9F59);    // $91AA
    syscall_id09_syscall_banked_blit_m3(2, 12, 28, 16, 0xADAA, 0xAF6A, 232);    // $91BE
    draw_string(0x9F6D, 1);    // $91C6
    local9 = 3;    // $91CB
    local8 = 13;    // $91CD
    local5 = 0;    // $91CF
    local4 = 0;    // $91D0
    set_tile_cursor((local9 + 1), local8);    // $91D5
    if (arg1) {    // $91DA
    draw_field_m1(0x9F74, arg1);    // $91E1
    local4 = 1;    // $91E6
    }
L_91E7:
    if (arg2) {    // $91E8
    set_tile_cursor((local9 + 1), ((local4 << 1) + local8));    // $91F3
    draw_string(0x9F7D, 1);    // $91FB
    local9 = (local9 + 11);    // $9203
    if (((unsigned)arg2 > (unsigned)7)) goto L_9218;    // $9207
    if (!((!(arg1) || !(((unsigned)arg2 > (unsigned)6))))) goto L_9218;    // $9211
    phi_val_9219 = 0;    // $9215
    goto L_9219;    // $9215
L_9218:
    phi_val_9219 = 1;    // $9218
L_9219:
    local3 = phi_val_9219;    // $9219
    if (!(local3)) goto L_922C;    // $921B
    set_tile_cursor(8, 6);    // $9220
L_922C:
    draw_string(0x9F87, 1);    // $9228
    local11 = arg3;    // $922D
    local10 = (arg3 + arg2);    // $9230
    goto L_9277;    // $9231
L_9234:
    local7 = local9;    // $9235
    local6 = ((local4 << 1) + local8);    // $923A
    set_draw_origin(local7, (local6 + 1));    // $923F
    draw_string_banked(record_base_d604(*(byte*)(local11)));    // $924B
    local4 = (local4 + 1);    // $9251
    if (!(((unsigned)local4 > (unsigned)6))) goto L_9274;    // $9255
    local4 = 0;    // $9259
    local5 = (local5 + 1);    // $925C
    if (!(((unsigned)local5 > (unsigned)1))) goto L_9274;    // $9260
    if (!(arg1)) goto L_9269;    // $9264
    local4 = 1;    // $9268
L_9269:
    if (!(duel_loop_916c(local4))) return duel_loop_916c(local4);    // $926E
    local5 = 0;    // $9273
L_9274:
    local11 = (local11 + 1);    // $9276
L_9277:
    if (((unsigned)local11 < (unsigned)local10)) goto L_9234;    // $927A
    if (local3) goto L_9296;    // $927E
    set_tile_cursor(8, 4);    // $9283
    draw_string(0x9F59, 1);    // $928B
    win_open();    // $928F
    return duel_sprites();    // $9295
L_9296:
    local4 = 0;    // $9297
    local5 = 0;    // $9298
    if (!(arg1)) goto L_929F;    // $929A
    local4 = 1;    // $929E
L_929F:
    if (!(duel_loop_916c(local4))) return duel_loop_916c(local4);    // $92A4
    if (1) goto L_922C;    // $92A9
    phi_ret_92c3 = 1;    // $92AC
    } else {
    set_tile_cursor(8, 4);    // $92B1
    draw_string(0x9F59, 1);    // $92B9
    win_open();    // $92BD
    phi_ret_92c3 = duel_sprites();    // $92C0
    }
L_92C3:
    return phi_ret_92c3;    // $92C3
    }
}

// Decompiled from source/2-asm-vm\bank14.asm sub $92C4
// $92C4 duel_92c4
// (body @ $92C9)

word duel_92c4(word arg1, word arg2) {
    duel_sprites();    // $92C9
    duel_load_eba(arg1, arg2);    // $92CE
    mem_74A8 = scan_records_6c90_flag(arg1, 0x749E);    // $92DA
    local9 = 0x749E;    // $92E0
    local8 = (0x749E + mem_74A8);    // $92E5
    goto L_93A6;    // $92E6
L_92E9:
    local3 = *(byte*)(((*(byte*)(local9) * 24) + 0x6AA4));    // $92F3
    local7 = ((local3 * 7) + 0x6542);    // $92FB
    if (!(((unsigned)*(byte*)((local7 + 2)) < (unsigned)50))) goto L_9399;    // $9302
    local6 = ((local3 * 10) + 0x6BBE);    // $930C
    local5 = duel_90bb(*(byte*)((local7 + 2)), (local6 + 6));    // $9318
    if (!(local5)) goto L_93A3;    // $931A
    *(byte*)((local6 + 4)) = max_s16((load_operand16_14(((local5 << 1) << 1)) + *(byte*)((local6 + 4))), 100);    // $9335
    *(byte*)((local6 + 5)) = max_s16((load_operand16_14(((local5 << 1) << 1)) + *(byte*)((local6 + 5))), 100);    // $934E
    resolve_field_ptr(2, 4, search_6a9a_ptr(), 16);    // $9357
    duel_84e0(0, 0x9F9E);    // $935F
    draw_string(0x9F9F, 0);    // $9367
    if (!(local3)) goto L_937D;    // $936C
    phi_9381_0 = 0x9FA1;    // $937A
    phi_9381_1 = 0;    // $937A
    draw_string_banked(*(word*)(local7));    // $9372
    goto L_9381;    // $937A
L_937D:
    phi_9381_0 = 0x9FA6;    // $937E
    phi_9381_1 = 0;    // $937E
L_9381:
    draw_string(phi_9381_0, phi_9381_1);    // $9381
    draw_string(0x9FB6, 0);    // $9389
    *(byte*)((local7 + 2)) = (*(byte*)((local7 + 2)) + local5);    // $9395
    goto L_93A3;    // $9396
L_9399:
    *(word*)(((local3 * 10) + 0x6BC4)) = 0;    // $93A2
L_93A3:
    local9 = (local9 + 1);    // $93A5
L_93A6:
    if (((unsigned)local9 < (unsigned)local8)) goto L_92E9;    // $93A9
    duel_sprites();    // $93AC
    if (!(((mem_74E0 == 2) || (mem_74E0 == 4)))) goto L_94EB;    // $93BC
    opt_sprite(3);    // $93C7
    duel_date();    // $93CB
    draw_string(0x9FD4, 0);    // $93D2
    scale_6b88(120);    // $93D8
    local4 = ((unsigned)(arg2 - 1) / (unsigned)5);    // $93E0
    *(byte*)((((local4 << 1) << 1) + 0x6FBE)) = max_s16(((load_operand16_14(5) + *(byte*)((((local4 << 1) << 1) + 0x6FBE))) + 10), 100);    // $9401
    if (!(local4)) goto L_942A;    // $9403
    local5 = *(byte*)((local4 + 0x9F9A));    // $940C
    *(byte*)((local5 + 0x6B8D)) = (*(byte*)((local5 + 0x6B8D)) - max_s16(*(byte*)((local5 + 0x6B8D)), (load_operand16_14(10) + 10)));    // $9429
L_942A:
    if ((mem_74E0 != 4)) goto L_94A5;    // $942F
    local11 = ((arg1 << 4) + 0x6662);    // $9439
    local10 = ((arg2 << 4) + 0x6662);    // $9441
    *(word*)(fp - 56) = max_s16(*(word*)((local10 + 9)), (0xEA60 - *(word*)((local11 + 9))));    // $9454
    local5 = duel_scan_666d(arg2, (fp - 50));    // $945F
    *(word*)((local11 + 9)) = (*(word*)((local11 + 9)) + *(word*)(fp - 56));    // $9468
    *(word*)((local11 + 13)) = (*(word*)((local11 + 13)) | *(word*)((local10 + 13)));    // $9473
    *(word*)((local11 + 11)) = (*(word*)((local11 + 11)) | *(word*)((local10 + 11)));    // $947E
    if (!((*(word*)(fp - 56) || local5))) goto L_9496;    // $9485
    duel_sprites();    // $9488
L_9496:
    duel_9195(*(word*)(fp - 56), local5, (fp - 50));    // $9492
    *(word*)((local10 + 9)) = 0;    // $949A
    *(word*)((local10 + 13)) = 0;    // $949F
    *(word*)((local10 + 11)) = 0;    // $94A4
L_94A5:
    *(word*)(fp - 52) = 0x75FC;    // $94A8
    *(word*)(fp - 54) = (0x75FC + 58);    // $94AC
    goto L_94E3;    // $94AE
L_94B1:
    if (!(*(word*)(*(word*)(fp - 52)))) goto L_94DE;    // $94B4
    mem_74A8 = scan_records_6c90_flag(arg1, 0x749E);    // $94BF
    duel_sprites();    // $94C2
    draw_string(0x9FF0, 1);    // $94C9
    cargo_sprites(0x75FC);    // $94D7
    goto L_94EB;    // $94DB
L_94DE:
    *(word*)(fp - 52) = (*(word*)(fp - 52) + 2);    // $94E1
L_94E3:
    if (((unsigned)*(word*)(fp - 52) < (unsigned)*(word*)(fp - 54))) goto L_94B1;    // $94E8
L_94EB:
    return ((unsigned)*(word*)(fp - 52) < (unsigned)*(word*)(fp - 54));    // $94EB
}

// Decompiled from source/2-asm-vm\bank14.asm sub $94EC
// $94EC duel_94ec
// (body @ $94F1)

word duel_94ec(word arg1, word arg2) {
    local11 = arg1;    // $94F2
    local10 = arg2;    // $94F4
    if (arg1) {    // $94F6
    local11 = arg2;    // $94FA
    local10 = arg1;    // $94FC
    }
L_94FD:
    switch (mem_74E0) {    // $9500
    case 1:
    default:
L_9517:
        duel_resolve_target(local11, local10);    // $9513
        if ((mem_74E0 != 4)) goto L_957B;    // $951C
        if (!(((unsigned)(local10 - 1) / (unsigned)5))) goto L_957B;    // $9523
    case 2:
        duel_will_hear(local11, local10);    // $9540
        goto L_9517;    // $9544
    case 3:
        duel_ab0(local11, local10);    // $9549
        goto L_9517;    // $954D
    case 4:
        duel_death(local11, local10);    // $9552
        goto L_9517;    // $9556
    case 5:
        duel_lost_life(local11, local10);    // $955B
        return 0;    // $9560
        mem_6F72 = (mem_6F72 + max_s16((0xC350 - mem_6F72), (((duel_grid_check(local10) == 2) ? 0 : 0x0258) + (load_operand16_14(10) * 10))));    // $9578
L_957B:
        duel_92c4(local11, local10);    // $957D
        return 1;    // $9582
    }
}

// Decompiled from source/2-asm-vm\bank14.asm sub $9583
// $9583 duel_9583
// (body @ $9588)

word duel_9583(word arg1) {
    duel_sprites();    // $9588
    if (!(((unsigned)mem_74E0 > (unsigned)1))) goto L_95B0;    // $9590
    if (!((mem_74E0 & 1))) goto L_95A5;    // $9598
    phi_95ac_0 = 0;    // $95A2
    idx_over_20(16);    // $959D
    goto L_95AC;    // $95A2
L_95A5:
    phi_95ac_0 = 1;    // $95AB
L_95AC:
    idx_over_20(17);    // $95A7
L_95B0:
    audio_param_gated(phi_95ac_0);    // $95AC
    if (!(duel_94ec(arg1, mem_729D))) goto L_95F2;    // $95B9
    mem_7068 = 255;    // $95BF
    mem_7265 = 255;    // $95C5
    mem_7266 = 255;    // $95CB
    sprite_anim_frame = 255;    // $95D1
    if (!(arg1)) goto L_95DC;    // $95D5
    phi_push_95df = arg1;    // $95D9
    goto L_95DF;    // $95D9
L_95DC:
    phi_push_95df = mem_729D;    // $95DC
L_95DF:
    record_proc_6004(phi_push_95df);    // $95E0
    duel_sprites();    // $95E4
    draw_string(0x9FF7, 1);    // $95EB
    goto L_95F6;    // $95EF
L_95F2:
    mem_7267 = 4;    // $95F3
L_95F6:
    return 1;    // $95F7
}
