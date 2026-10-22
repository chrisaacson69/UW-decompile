// Decompiled from source/2-asm-vm\bank00.asm sub $8003
// $8003 cargo_main
// (body @ $8008)

word cargo_main(word arg1) {
    local10 = 177;    // $800B
    phi_val_807f = 0;    // $800D
    while (((unsigned)local11 <= (unsigned)64)) {    // $807F
        local9 = ((((unsigned)local11 % (unsigned)10) << 1) + 5);    // $8015
        local8 = ((((unsigned)local11 / (unsigned)10) << 1) + 8);    // $801B
        switch (local11) {    // $801D
            case 36: goto L_805E;    // $801D
            case 37: goto L_8088;    // $801D
            case 38: goto L_805E;    // $801D
            case 39: goto L_808E;    // $801D
            case 40: goto L_8094;    // $801D
            case 41: goto L_8061;    // $801D
            case 42: goto L_8061;    // $801D
            case 43: goto L_8061;    // $801D
            case 44: goto L_8061;    // $801D
            case 45: goto L_8061;    // $801D
            case 46: goto L_805E;    // $801D
            case 47: goto L_809A;    // $801D
            case 48: goto L_805E;    // $801D
            case 49: goto L_80A0;    // $801D
            case 50: goto L_80A6;    // $801D
            case 51: goto L_8061;    // $801D
            case 52: goto L_8061;    // $801D
            case 53: goto L_8061;    // $801D
            case 54: goto L_8061;    // $801D
            case 55: goto L_8061;    // $801D
            case 56: goto L_8061;    // $801D
            case 57: goto L_8061;    // $801D
            case 58: goto L_8061;    // $801D
            case 59: goto L_80AC;    // $801D
            case 60: goto L_8061;    // $801D
            case 61: goto L_80B2;    // $801D
            case 62: goto L_805E;    // $801D
            case 63: goto L_805E;    // $801D
            case 64: goto L_805E;    // $801D
            default: goto L_8061;    // $801D
        }    // $801D
L_805E:
        phi_val_8060 = 64;    // $805E
L_8060:
        local10 = phi_val_8060;    // $8060
L_8061:
        local7 = (local10 & 255);    // $8066
        *(byte*)((arg1 + local11)) = local7;    // $806C
        if ((local7 == 64)) {    // $8071
        *(byte*)((arg1 + local11)) = 0;    // $8079
        }
L_807A:
        local10 = (local10 + 1);    // $807C
        phi_val_807f = (local11 + 1);    // $807E
        local11 = phi_val_807f;    // $807F
        return ((unsigned)local11 <= (unsigned)64);    // $8087
L_8088:
        phi_val_8060 = 213;    // $808B
        goto L_8060;    // $808B
L_808E:
        phi_val_8060 = 214;    // $8091
        goto L_8060;    // $8091
L_8094:
        phi_val_8060 = 215;    // $8097
        goto L_8060;    // $8097
L_809A:
        phi_val_8060 = 166;    // $809D
        goto L_8060;    // $809D
L_80A0:
        phi_val_8060 = 221;    // $80A3
        goto L_8060;    // $80A3
L_80A6:
        phi_val_8060 = 167;    // $80A9
        goto L_8060;    // $80A9
L_80AC:
        phi_val_8060 = 222;    // $80AF
        goto L_8060;    // $80AF
L_80B2:
        phi_val_8060 = 45;    // $80B4
        goto L_8060;    // $80B4
    }
}

// Decompiled from source/2-asm-vm\bank00.asm sub $80B7
// $80B7 cargo_calc_80b7
// (body @ $80BC)

word cargo_calc_80b7(word arg1, word arg2, word arg3) {
    local11 = (((((unsigned)(arg2 + -7) >> 1) * 10) + ((unsigned)(arg1 + -6) >> 1)) + 1);    // $80CC
    phi_val_80e1 = arg3;    // $80CE
    goto L_80E1;    // $80CE
L_80D1:
    if (!((*(word*)(((local10 << 1) + 0x990A)) == local11))) goto L_80DF;    // $80DA
    return 1;    // $80DE
L_80DF:
    phi_val_80e1 = (local10 + 1);    // $80E0
L_80E1:
    local10 = phi_val_80e1;    // $80E1
    if (((unsigned)local10 <= (unsigned)9)) goto L_80D1;    // $80E5
    if ((local11 != 66)) goto L_80F1;    // $80EC
    return 2;    // $80F0
L_80F1:
    if ((local11 != 69)) goto L_80FA;    // $80F5
    return 3;    // $80F9
L_80FA:
    return 0;    // $80FB
}

// Decompiled from source/2-asm-vm\bank00.asm sub $80FC
// $80FC cargo_draw_char
// (body @ $8101)

word cargo_draw_char(word arg1, word arg2) {
    local10 = 1;    // $8102
    set_tile_cursor((16 - ((unsigned)arg2 >> 1)), 23);    // $810E
    phi_val_8136 = 0;    // $8113
    while (((unsigned)local11 <= (unsigned)(arg2 + -2))) {    // $8136
        if (*(byte*)((arg1 + local11))) goto L_811F;    // $811A
        local10 = 0;    // $811E
L_811F:
        draw_field_m1(0x991E, (local10 ? *(byte*)((arg1 + local11)) : 95));    // $8130
        phi_val_8136 = (local11 + 1);    // $8135
        local11 = phi_val_8136;    // $8136
    }
    return ((unsigned)local11 <= (unsigned)(arg2 + -2));    // $8141
}

// Decompiled from source/2-asm-vm\bank00.asm sub $8142
// $8142 cargo_check_8142
// (body @ $8147)

word cargo_check_8142(word arg1, word arg2) {
    if (((unsigned)arg1 >= (unsigned)1)) {    // $814A
    arg1 = (arg1 - 1);    // $814F
    }
L_8150:
    *(byte*)((arg2 + arg1)) = 0;    // $8155
    return arg1;    // $8157
}

// Decompiled from source/2-asm-vm\bank00.asm sub $8158
// $8158 cargo_confirm
// (body @ $815D)

word cargo_confirm(void) {
    syscall_id08_syscall_queue_ppu_transfer(3, 26, 26, 1, 0, 0);    // $8166
    set_tile_cursor(3, 25);    // $816D
    draw_string(0x9921, 1);    // $8175
    local11 = prompt_confirm();    // $817C
    if (!(!(prompt_confirm()))) return local11;    // $817D
    syscall_id08_syscall_queue_ppu_transfer(3, 26, 26, 1, 0, 0);    // $818B
    return local11;    // $8190
}

// Decompiled from source/2-asm-vm\bank00.asm sub $8191
// $8191 cargo_8191
// (body @ $8196)

word cargo_8191(word arg1) {
    local10 = 33;    // $8198
    phi_val_81d9 = 0;    // $819A
    while (((unsigned)local11 <= (unsigned)64)) {    // $81D9
        local9 = ((((unsigned)local11 % (unsigned)10) << 1) + 5);    // $81A2
        local8 = ((((unsigned)local11 / (unsigned)10) << 1) + 8);    // $81A8
        switch (local11) {    // $81AA
            case 26: goto L_81C3;    // $81AA
            case 52: goto L_81E2;    // $81AA
            case 62: goto L_81E7;    // $81AA
            case 63: goto L_81EB;    // $81AA
            case 64: goto L_81EF;    // $81AA
            default: goto L_81C6;    // $81AA
        }    // $81AA
L_81C3:
        phi_val_81c5 = 65;    // $81C3
L_81C5:
        local10 = phi_val_81c5;    // $81C5
L_81C6:
        local7 = (local10 & 255);    // $81CB
        *(byte*)((arg1 + local11)) = (local7 + 32);    // $81D3
        local10 = (local10 + 1);    // $81D6
        phi_val_81d9 = (local11 + 1);    // $81D8
        local11 = phi_val_81d9;    // $81D9
        return ((unsigned)local11 <= (unsigned)64);    // $81E1
L_81E2:
        phi_val_81c5 = 16;    // $81E4
        goto L_81C5;    // $81E4
L_81E7:
        phi_val_81c5 = 7;    // $81E8
        goto L_81C5;    // $81E8
L_81EB:
        phi_val_81c5 = 13;    // $81EC
        goto L_81C5;    // $81EC
L_81EF:
        phi_val_81c5 = 0;    // $81F0
        goto L_81C5;    // $81F0
    }
}

// Decompiled from source/2-asm-vm\bank00.asm sub $81F3
// $81F3 cargo_screen
// (body @ $81F8)

word cargo_screen(word arg1, word arg2, word arg3) {
    local11 = 6;    // $81F9
    local7 = 6;    // $81FA
    local10 = 7;    // $81FC
    local6 = 7;    // $81FD
    local8 = 2;    // $81FF
    local3 = 0;    // $8201
    local5 = 0;    // $8202
    local2 = 1;    // $8204
    local0 = 0;    // $8206
    cargo_draw_char(arg1, arg3);    // $8209
    goto L_83A1;    // $820D
L_8210:
    if ((local5 == 1)) goto L_8244;    // $8213
    *(byte*)(fp - 28) = ((local6 << 3) - 1);    // $821A
    *(byte*)(fp - 27) = 225;    // $8220
    *(byte*)(fp - 26) = 3;    // $8224
    *(byte*)(fp - 25) = (local7 << 3);    // $822A
    syscall_id13_syscall_set_chr_bank_alt((fp - 28), 0, 1);    // $8234
    helper_ce4d(local9, 7);    // $823A
    local9 = frame_sync(0);    // $8243
L_8244:
    switch (local9) {    // $8245
        case 1: goto L_82E1;    // $8245
        case 2: goto L_82E6;    // $8245
        case 8: goto L_82F6;    // $8245
        case 16: goto L_8266;    // $8245
        case 32: goto L_82B1;    // $8245
        case 64: goto L_82D1;    // $8245
        case 128: goto L_82C1;    // $8245
        default: goto L_82A9;    // $8245
    }    // $8245
L_8266:
    local6 = (local6 - local8);    // $826A
    if (!(((unsigned)local6 < (unsigned)local10))) goto L_8274;    // $826E
    phi_val_8273 = 19;    // $8271
L_8273:
    local6 = phi_val_8273;    // $8273
L_8274:
    if ((local6 != 19)) goto L_82A9;    // $8278
    if (!(((unsigned)local2 < (unsigned)1))) goto L_828E;    // $827E
    if (!(((unsigned)local7 >= (unsigned)10))) goto L_8298;    // $8284
    phi_val_8292 = ((unsigned)local7 <= (unsigned)18);    // $828B
    goto L_8292;    // $828B
L_828E:
    phi_val_8292 = (local7 == 18);    // $8291
L_8292:
    if (!(phi_val_8292)) goto L_8298;    // $8292
    local7 = 16;    // $8297
L_8298:
    if (!(((unsigned)local7 >= (unsigned)19))) goto L_82A9;    // $829C
    if (!(((unsigned)local7 < (unsigned)25))) goto L_82A9;    // $82A3
    phi_val_82a8 = 22;    // $82A6
L_82A8:
    local7 = phi_val_82a8;    // $82A8
L_82A9:
L_82B1:
    local6 = (local6 + local8);    // $82B5
    if (!(((unsigned)local6 > (unsigned)19))) goto L_8274;    // $82BA
    phi_val_8273 = local10;    // $82BE
    goto L_8273;    // $82BE
L_82C1:
    local7 = (local7 + local8);    // $82C5
    if (!(((unsigned)local7 > (unsigned)24))) goto L_82A9;    // $82CA
    phi_val_82a8 = local11;    // $82CE
    goto L_82A8;    // $82CE
L_82D1:
    local7 = (local7 - local8);    // $82D5
    if (!(((unsigned)local7 < (unsigned)local11))) goto L_82A9;    // $82D9
    phi_val_82a8 = 24;    // $82DE
    goto L_82A8;    // $82DE
L_82E1:
    local3 = 1;    // $82E2
    goto L_82A9;    // $82E3
L_82E6:
    local0 = cargo_check_8142(local0, arg1);    // $82EC
    cargo_draw_char(arg1, arg3);    // $82EF
    goto L_82A9;    // $82F3
L_82F6:
    local7 = 22;    // $82F8
    local6 = 19;    // $82FB
    if (local0) goto L_8303;    // $82FD
    *(byte*)(arg1) = 0;    // $8302
L_8303:
    syscall_id08_syscall_queue_ppu_transfer(3, 25, 26, 2, 0, 0);    // $830C
    return local0;    // $8311
    local1 = (local2 ? local0 : 0);    // $8313
    local5 = cargo_calc_80b7(local7, local6, local1);    // $831B
    if ((local5 != 1)) goto L_832E;    // $831F
    if ((local9 != 4)) goto L_83A1;    // $8325
    local7 = 6;    // $8329
    local6 = 7;    // $832B
    local5 = 0;    // $832D
L_832E:
    if ((local3 != 1)) goto L_839F;    // $8331
    if ((local5 != 2)) goto L_8343;    // $8337
    phi_val_8396 = cargo_check_8142(local0, arg1);    // $8340
    goto L_8396;    // $8340
L_8343:
    if ((local5 != 3)) goto L_835F;    // $8346
    if (local0) goto L_8350;    // $834A
    *(byte*)(arg1) = 0;    // $834F
L_8350:
    syscall_id08_syscall_queue_ppu_transfer(3, 25, 26, 2, 0, 0);    // $8359
    return local0;    // $835E
L_835F:
    local4 = (((((unsigned)(local6 - local10) >> 1) * 10) + ((unsigned)(local7 - local11) >> 1)) + 1);    // $836F
    if (!(((unsigned)local0 >= (unsigned)(arg3 + -2)))) goto L_837E;    // $8377
    local0 = (arg3 + -2);    // $837D
L_837E:
    *(byte*)((arg1 + local0)) = *(byte*)(((((local2 * 65) + arg2) + local4) - 1));    // $838C
    *(byte*)(((arg1 + local0) + 1)) = 0;    // $8393
    phi_val_8396 = (local0 + 1);    // $8395
L_8396:
    local0 = phi_val_8396;    // $8396
    local3 = 0;    // $8398
L_839F:
    cargo_draw_char(arg1, arg3);    // $839B
    local5 = 0;    // $83A0
L_83A1:
    if (1) goto L_8210;    // $83A2
    return 1;    // $83A5
}

// Decompiled from source/2-asm-vm\bank00.asm sub $83A6
// $83A6 cargo_load_data
// (body @ $83AB)

word cargo_load_data(word arg1, word arg2) {
    copy_from_bank_dc80(arg2, *(byte*)&arg1, 95);    // $83B2
    *(byte*)(arg2) = 0;    // $83B8
    syscall_id08_syscall_queue_ppu_transfer(5, 6, 22, 15, 0, 0);    // $83C1
    syscall_id09_syscall_banked_blit_m3(7, 7, 19, 13, 0xB9ED, 0, 226);    // $83D2
    cargo_8191((fp - 65));    // $83DA
    *(byte*)(fp - 131) = cargo_screen(arg2, (fp - 130), *(byte*)&arg1);    // $83EB
    return *(byte*)(fp - 131);    // $83F1
}

// Decompiled from source/2-asm-vm\bank00.asm sub $83F2
// $83F2 cargo_entity_a
// (body @ $83F7)

word cargo_entity_a(void) {
    local11 = 0x6662;    // $83FA
    if ((*(byte*)((local11 + 15)) & 2)) {    // $8400
    phi_ret_840c = draw_box_from_native();    // $8406
    } else {
    phi_ret_840c = show_message();    // $8409
    }
L_840C:
    return phi_ret_840c;    // $840C
    }
}

// Decompiled from source/2-asm-vm\bank00.asm sub $840D
// $840D cargo_entity_b
// (body @ $8412)

word cargo_entity_b(word arg1) {
    local11 = 0x6662;    // $8415
    if ((*(byte*)((local11 + 15)) & 2)) {    // $841B
    phi_ret_842b = win_render_syscall(arg1);    // $8423
    } else {
    phi_ret_842b = draw_message_line(arg1);    // $8427
    }
L_842B:
    return phi_ret_842b;    // $842B
    }
}

// Decompiled from source/2-asm-vm\bank00.asm sub $842C
// $842C cargo_entity_c
// (body @ $8431)

word cargo_entity_c(void) {
    local11 = 0x6662;    // $8434
    if ((*(byte*)((local11 + 15)) & 2)) {    // $843A
    phi_ret_8446 = draw_box_frame();    // $8440
    } else {
    phi_ret_8446 = show_message();    // $8443
    }
L_8446:
    return phi_ret_8446;    // $8446
    }
}

// Decompiled from source/2-asm-vm\bank00.asm sub $8447
// $8447 get_cargo_6ab6
// (body @ $844C)

word get_cargo_6ab6(word arg1) {
    return (*(word*)(((arg1 * 24) + 0x6AB6)) / 10);    // $8457
}

// Decompiled from source/2-asm-vm\bank00.asm sub $8458
// $8458 get_cargo_6ab8
// (body @ $845D)

word get_cargo_6ab8(word arg1) {
    return *(word*)(((arg1 * 24) + 0x6AB8));    // $8466
}

// Decompiled from source/2-asm-vm\bank00.asm sub $8467
// $8467 get_cargo_6ab4
// (body @ $846C)

word get_cargo_6ab4(word arg1) {
    return (*(word*)(((arg1 * 24) + 0x6AB4)) / 10);    // $8477
}

// Decompiled from source/2-asm-vm\bank00.asm sub $8478
// $8478 cargo_draw_ship
// (body @ $847D)

word cargo_draw_ship(word arg1, word arg2, word arg3) {
    *(word*)(fp - 32) = 0x6662;    // $8480
    if ((*(byte*)((*(word*)(fp - 32) + 15)) & 2)) {    // $8488
    }
L_848E:
    clear_two_ppu_regions();    // $848B
    draw_string(0x9932, 1);    // $8492
    syscall_id09_syscall_banked_blit_m3(arg2, arg3, 30, 14, 0xA792, 0xA936, 232);    // $84A5
    syscall_id08_syscall_queue_ppu_transfer((arg2 + 20), (arg3 + 1), 1, 12, 250, 0);    // $84B7
    set_tile_cursor((arg2 + 1), (arg3 + 1));    // $84C1
    draw_string(0x9939, 1);    // $84C9
    set_tile_cursor((arg2 + 14), (arg3 + 1));    // $84D3
    draw_string(0x993E, 1);    // $84DB
    draw_icon_2x2((arg2 + 10), (arg3 + 1), arg1);    // $84E6
    *(word*)(fp - 28) = 0;    // $84EB
    *(word*)(fp - 26) = 0;    // $84ED
    local11 = 0;    // $84F0
    local10 = 0;    // $84F1
    while (((unsigned)local11 < (unsigned)5)) {    // $85B5
        *(word*)(fp - 30) = ((local11 * 7) + 0x6C90);    // $84FC
        if ((*(byte*)((*(word*)(fp - 30) + 6)) & 64)) {    // $8505
        *(word*)(((local10 << 1) + &local5)) = record_field_word((record_base_6b1c(local11) + 18));    // $851D
        *(word*)(fp - 26) = (*(word*)(fp - 26) + *(word*)(((local10 << 1) + &local5)));    // $852B
        *(word*)(((local10 << 1) + &local0)) = record_base_6aa4(local11);    // $853B
        *(word*)(fp - 28) = (*(word*)(fp - 28) + *(word*)(((local10 << 1) + &local0)));    // $8549
        set_tile_cursor((arg2 + 2), (((local10 << 1) + arg3) + 4));    // $8554
        draw_string_banked(record_base_6b1c((*(byte*)((*(word*)(fp - 30) + 6)) & 15)));    // $8564
        set_tile_cursor((arg2 + 9), (((local10 << 1) + arg3) + 3));    // $8571
        draw_field_m1(0x9943, (*(*(word*)(((arg1 << 1) + 0x992C))))(local11));    // $8583
        set_tile_cursor((arg2 + 13), (((local10 << 1) + arg3) + 3));    // $8590
        draw_field_m1(0x9947, *(word*)(((local10 << 1) + &local0)), *(word*)(((local10 << 1) + &local5)));    // $85AB
        local10 = (local10 + 1);    // $85B1
        }
L_85B2:
        local11 = (local11 + 1);    // $85B4
    }
    set_tile_cursor((arg2 + 21), (arg3 + 9));    // $85C2
    draw_field_m1(0x994F);    // $85C9
    set_draw_origin((arg2 + 23), (arg3 + 11));    // $85D4
    draw_field(0x9955, *(word*)(fp - 28));    // $85DD
    set_draw_origin((arg2 + 24), (arg3 + 12));    // $85E8
    return draw_field(0x9958, *(word*)(fp - 26));    // $85F5
}

// Decompiled from source/2-asm-vm\bank00.asm sub $85F6
// $85F6 cargo_85f6
// (body @ $85FB)

word cargo_85f6(word arg1, word arg2, word arg3, word arg4, word arg5) {
    local4 = 0;    // $85FC
    local11 = 0;    // $85FE
    local10 = 0;    // $85FF
    while (((unsigned)local11 < (unsigned)5)) {    // $8636
        local3 = ((local11 * 7) + 0x6C90);    // $860A
        if ((*(byte*)((local3 + 6)) & 64)) {    // $8611
        *(word*)(((local10 << 1) + &local5)) = record_base_6aa4(local11);    // $8622
        local4 = (local4 + *(word*)(((local10 << 1) + &local5)));    // $862F
        local10 = (local10 + 1);    // $8632
        }
L_8633:
        local11 = (local11 + 1);    // $8635
    }
    draw_string(0x9963, 1);    // $8640
    set_tile_cursor((arg4 + 9), (((arg3 << 1) + arg5) + 3));    // $864E
    draw_field_m1(0x996A, (*(*(word*)(((arg1 << 1) + 0x995D))))(arg2));    // $8660
    set_tile_cursor((arg4 + 13), (((arg3 << 1) + arg5) + 3));    // $866E
    draw_field_m1(0x996E, *(word*)(((arg3 << 1) + &local5)));    // $867F
    set_draw_origin((arg4 + 23), (arg5 + 11));    // $868B
    return draw_field(0x9972, local4);    // $8697
}

// Decompiled from source/2-asm-vm\bank00.asm sub $8698
// $8698 cargo_cannot_load
// (body @ $869D)

word cargo_cannot_load(word arg1, word arg2, word arg3, word arg4) {
    local9 = 0;    // $869E
    local11 = (record_field_word((record_base_6b1c(arg1) + 18)) - record_base_6aa4(arg1));    // $86B3
    if (local11) goto L_86C1;    // $86B5
    draw_text(0x9975);    // $86BB
    return local9;    // $86C0
L_86C1:
    local10 = draw_labeled_value(0x9986, 0, local11, 1);    // $86CB
    if ((!(((local10 != 1) || !(local10))))) return 0;    // $86D4
    if ((local10 != 1)) {    // $86DD
    *(word*)(((arg1 * 24) + 0x6AB6)) = (*(word*)(((arg1 * 24) + 0x6AB6)) + (local10 * 10));    // $86F0
    }
L_86FA:
    cargo_85f6(1, arg1, arg2, arg3, arg4);    // $86F6
    return local9;    // $86FB
}

// Decompiled from source/2-asm-vm\bank00.asm sub $86FC
// $86FC cargo_which_ship
// (body @ $8701)

word cargo_which_ship(word arg1, word arg2, word arg3, word arg4) {
    cargo_draw_ship(1, arg3, arg4);    // $8704
    local11 = 0;    // $8709
    do {    // $870A
        cargo_entity_a();    // $870A
        draw_string(0x9995, 1);    // $8711
        local10 = menu_select((arg3 + 1), (arg4 + 4), 2, arg1);    // $8721
        if ((local10 != 255)) {    // $8727
        local9 = *(word*)(((*(byte*)((arg2 + local10)) * 24) + 0x6AB6));    // $8736
        cargo_entity_c();    // $8737
        cargo_entity_b(1);    // $873B
        local11 = cargo_cannot_load(*(byte*)((arg2 + local10)), local10, arg3, arg4);    // $874B
        }
L_874C:
        if ((local10 == 255)) break;    // $8751
    } while ((local11 != 1));    // $8757
L_875A:
    return (local11 == 1);    // $875A
}

// Decompiled from source/2-asm-vm\bank00.asm sub $875B
// $875B get_ship_word15_0
// (body @ $8760)

word get_ship_word15_0(word arg1) {
    return record_field_word((record_base_6b1c(arg1) + 15));    // $876B
}

// Decompiled from source/2-asm-vm\bank00.asm sub $876C
// $876C draw_hold_gauge
// (body @ $8771)

word draw_hold_gauge(word arg1) {
    return draw_field_m1(0x99A9, *(word*)(((arg1 * 7) + 0x6C94)), get_ship_word15_0(arg1));    // $8787
}

// Decompiled from source/2-asm-vm\bank00.asm sub $8788
// $8788 cargo_left
// (body @ $878D)

word cargo_left(word arg1, word arg2, word arg3, word arg4, word arg5, word arg6, word arg7) {
    local11 = max_s16((*(word*)(((arg4 * 7) + 0x6C94)) + *(word*)(arg1)), get_ship_word15_0(arg4));    // $87A5
    cargo_entity_c();    // $87A6
    cargo_entity_b(1);    // $87AA
    local10 = draw_labeled_value(0x99B1, 0, local11, 1);    // $87B8
    if (((local10 == 1))) return (local10 == 1);    // $87BD
    local9 = *(word*)(((arg4 * 7) + 0x6C94));    // $87C9
    local4 = ((arg4 * 24) + 0x6AA4);    // $87D2
    if (((unsigned)local10 < (unsigned)local9)) {    // $87D6
    // ext_op ext_op_F1AF
    // ext_op ext_op_F263
    // ext_op ext_op_F1AF
    // ext_op ext_op_F263
    // ext_op ext_op_F1A9
    // ext_op ext_op_F26C
    // ext_op ext_op_F04C
    // ext_op ext_op_F26C
    // ext_op ext_op_EF81
    // ext_op ext_op_F229
    // TODO: trigger_syscall_EB_FE
    // TODO: op_FF
    // ext_op ext_op_F1A9
    // ext_op ext_op_F263
    // ext_op ext_op_F1AF
    // ext_op ext_op_F26C
    // ext_op ext_op_EF81
    // ext_op ext_op_F229
    // TODO: trigger_syscall_EB_FE
    // TODO: op_FF
    // ext_op ext_op_F1A9
    // ext_op ext_op_F263
    // ext_op ext_op_F1AF
    // ext_op ext_op_F263
    // ext_op ext_op_F1A9
    // ext_op ext_op_F26C
    // ext_op ext_op_F04C
    // ext_op ext_op_F26C
    // ext_op ext_op_F03F
    // ext_op ext_op_F263
    // ext_op ext_op_F20D
    // TODO: trigger_syscall_EB_FE
    // TODO: op_FF
    // ext_op ext_op_F21B
    // TODO: trigger_syscall_EB_FE
    // TODO: op_FF
    // ext_op ext_op_F03F
    // ext_op ext_op_F26C
    // ext_op sdiv32
    // ext_op ext_op_F1B3
    *(word*)(arg2) = local9;    // $8830
    } else {
    // ext_op ext_op_F1A9
    // ext_op ext_op_F263
    // ext_op ext_op_F1AF
    // ext_op ext_op_F26C
    // ext_op ext_op_EF81
    // ext_op ext_op_F229
    // TODO: trigger_syscall_EB_FE
    // TODO: op_FF
    // ext_op ext_op_F1AF
    // ext_op ext_op_F263
    // ext_op ext_op_F1A9
    // ext_op ext_op_F263
    // ext_op ext_op_F1AF
    // ext_op ext_op_F26C
    // ext_op ext_op_F04C
    // ext_op ext_op_F26C
    // ext_op ext_op_EF81
    // ext_op ext_op_F229
    // TODO: trigger_syscall_EB_FE
    // TODO: op_FF
    // ext_op ext_op_F1AF
    // ext_op ext_op_F263
    // ext_op ext_op_F20D
    // TODO: trigger_syscall_EB_FE
    // TODO: op_FF
    // ext_op ext_op_F21B
    // TODO: trigger_syscall_EB_FE
    // TODO: op_FF
    // ext_op ext_op_F03F
    // ext_op ext_op_F26C
    // ext_op sdiv32
    // ext_op ext_op_F1B3
    *(byte*)((local4 + 22)) = local10;    // $8883
    }
L_888D:
    *(word*)(arg1) = (*(word*)(arg1) - (local10 - local9));    // $888D
    *(word*)(((arg4 * 7) + 0x6C94)) = local10;    // $8897
    set_tile_cursor((arg5 + 8), ((arg3 << 1) + arg6));    // $88A2
    draw_hold_gauge(arg4);    // $88A7
    if ((sprite_mode_flags & 2)) {    // $88B0
    phi_push_88bf = (arg6 + 10);    // $88B6
    } else {
    phi_push_88bf = ((arg7 << 1) + arg6);    // $88BE
    }
L_88BF:
    set_tile_cursor((arg5 + 5), phi_push_88bf);    // $88C4
    return draw_field_m1(0x99BF, *(word*)(arg1));    // $88D2
    }
    }
}

// Decompiled from source/2-asm-vm\bank00.asm sub $88D3
// $88D3 cargo_left_b
// (body @ $88D8)

word cargo_left_b(word arg1, word arg2, word arg3, word arg4, word arg5, word arg6) {
    local10 = arg1;    // $88D9
    local9 = 0x6662;    // $88DD
    if ((*(byte*)((local9 + 15)) & 2)) {    // $88E3
    local10 = 5;    // $88E7
    }
L_88E8:
    if ((arg4 == 255)) {    // $88ED
    arg4 = 0;    // $88F1
    }
L_88F2:
    draw_menu_frame((arg5 + -2), (arg6 - 1), 18, ((local10 << 1) + 4), 0, 0);    // $8903
    phi_val_8953 = 0;    // $8908
    while (((unsigned)local11 < (unsigned)arg1)) {    // $8953
        set_tile_cursor((arg5 + 8), ((local11 << 1) + arg6));    // $8915
        draw_hold_gauge(*(byte*)((arg2 + local11)));    // $891E
        *(word*)(((local11 << 1) + arg3)) = record_base_6b1c((*(byte*)(((*(byte*)((arg2 + local11)) * 7) + 0x6C96)) & 15));    // $8939
        set_tile_cursor(arg5, (((local11 << 1) + arg6) + 1));    // $8943
        draw_string_banked(*(word*)(((local11 << 1) + arg3)));    // $894D
        phi_val_8953 = (local11 + 1);    // $8952
        local11 = phi_val_8953;    // $8953
    }
    set_tile_cursor((arg5 + 5), ((local10 << 1) + arg6));    // $8964
    return draw_field_m1(0x99C8, arg4);    // $8970
}

// Decompiled from source/2-asm-vm\bank00.asm sub $8971
// $8971 cargo_pick_ship
// (body @ $8976)

word cargo_pick_ship(word arg1, word arg2, word arg3) {
    *(word*)(fp - 21) = scan_records_6c90_flag(0, (fp - 5));    // $897F
    cargo_left_b(*(word*)(fp - 21), (fp - 5), (fp - 15), arg1, arg2, arg3);    // $898E
    while (((unsigned)*(word*)(fp - 17) < (unsigned)*(word*)(fp - 21))) {    // $89B4
        *(word*)(((*(word*)(fp - 17) << 1) + (fp - 37))) = *(word*)(((*(byte*)((*(word*)(fp - 17) + (fp - 5))) * 7) + 0x6C94));    // $89B0
        *(word*)(fp - 17) = (*(word*)(fp - 17) + 1);    // $89B4
    }
    *(word*)(fp - 39) = 1;    // $89BF
    *(word*)(fp - 27) = ((arg1 == 255) ? 0 : arg1);    // $89CE
    *(word*)(fp - 25) = 90;    // $89D2
    if ((sprite_mode_flags & 2)) goto L_89DF;    // $89D9
L_89DF:
    show_prompt_record();    // $89DC
    cargo_entity_a();    // $89DF
    draw_string(0x99E0, 1);    // $89E6
    *(word*)(fp - 19) = menu_select((arg2 - 1), (arg3 + 1), 2, *(word*)(fp - 21));    // $89F7
    if ((*(word*)(fp - 19) != 255)) {    // $89FF
    cargo_left((fp - 27), (fp - 25), *(word*)(fp - 19), *(byte*)((*(word*)(fp - 19) + (fp - 5))), arg2, arg3, *(word*)(fp - 21));    // $8A1A
    } else {
    cargo_entity_c();    // $8A21
    if (!(*(word*)(fp - 27))) goto L_8A83;    // $8A26
    cargo_entity_b(2);    // $8A2A
    draw_string(0x99EC, 1);    // $8A32
    if (ui_shared_var_737d) goto L_8A41;    // $8A39
    goto L_8A4F;    // $8A3E
L_8A41:
L_8A4F:
    *(word*)(fp - 23) = ((ui_shared_var_737d == 1) ? 4 : 20);    // $8A4F
    *(word*)(fp - 19) = draw_tile_grid(8, *(word*)(fp - 23), 8, 1, 0x99D1, 2, 1);    // $8A5F
    switch (*(word*)(fp - 19)) {    // $8A63
        case 0: goto L_8A74;    // $8A63
        case 1: goto L_8A77;    // $8A63
        case 255: goto L_8A7F;    // $8A63
        default: goto L_8A9E;    // $8A63
    }    // $8A63
L_8A74:
    *(word*)(fp - 39) = 0;    // $8A75
L_8A77:
L_8A7A:
    *(word*)(fp - 19) = 255;    // $8A7A
    goto L_8A9E;    // $8A7C
L_8A7F:
    goto L_8A7A;    // $8A80
L_8A83:
    cargo_entity_b(1);    // $8A84
    draw_string(0x9A08, 1);    // $8A8C
    if (!(prompt_confirm())) goto L_8A7F;    // $8A93
    *(word*)(fp - 19) = 255;    // $8A99
    *(word*)(fp - 39) = 1;    // $8A9C
    }
L_8A9E:
    if ((*(word*)(fp - 19) != 255)) goto L_89DF;    // $8AA4
    *(word*)(fp - 41) = 1;    // $8AA8
    if (*(word*)(fp - 39)) goto L_8ADE;    // $8AAC
    while (((unsigned)*(word*)(fp - 17) < (unsigned)*(word*)(fp - 21))) {    // $8AD1
        *(word*)(((*(byte*)((*(word*)(fp - 17) + (fp - 5))) * 7) + 0x6C94)) = *(word*)(((*(word*)(fp - 17) << 1) + (fp - 37)));    // $8ACD
        *(word*)(fp - 17) = (*(word*)(fp - 17) + 1);    // $8AD1
    }
    *(word*)(fp - 41) = 0;    // $8ADC
L_8ADE:
    return *(word*)(fp - 41);    // $8AE0
    }
}

// Decompiled from source/2-asm-vm\bank00.asm sub $8AE1
// $8AE1 cargo_loop_8ae1
// (body @ $8AE6)

word cargo_loop_8ae1(word arg1) {
    local11 = 0;    // $8AE7
    phi_val_8afe = 0;    // $8AE8
    while ((local10 < 8)) {    // $8AFE
        if (*(word*)(((local10 << 1) + arg1))) {    // $8AF0
        local11 = (local11 + *(word*)(((local10 << 1) + arg1)));    // $8AFB
        }
L_8AFC:
        phi_val_8afe = (local10 + 1);    // $8AFD
        local10 = phi_val_8afe;    // $8AFE
    }
    return (arg1->field_16 - local11);    // $8B0B
}

// Decompiled from source/2-asm-vm\bank00.asm sub $8B0C
// $8B0C cargo_transfer_col
// (body @ $8B11)

word cargo_transfer_col(word arg1, word arg2) {
    return syscall_id08_syscall_queue_ppu_transfer(((arg1 * 14) + 2), arg2, (arg1 + 13), ((16 - arg2) + 3), 0, 0);    // $8B27
}

// Decompiled from source/2-asm-vm\bank00.asm sub $8B28
// $8B28 cargo_choose_vessel
// (body @ $8B2D)

word cargo_choose_vessel(void) {
    local4 = 3;    // $8B2E
    local3 = 3;    // $8B30
    local10 = (scan_records_6c90_flag(0, &local5) - 1);    // $8B3B
    phi_val_8b68 = 0;    // $8B3D
    goto L_8B68;    // $8B3D
L_8B40:
    set_tile_cursor(local4, (((local11 << 1) + local3) + 1));    // $8B47
    draw_string_banked(record_base_6b1c((*(byte*)(((*(byte*)((local11 + &local5)) * 7) + 0x6C96)) & 15)));    // $8B62
    phi_val_8b68 = (local11 + 1);    // $8B67
L_8B68:
    local11 = phi_val_8b68;    // $8B68
    if (((unsigned)local11 <= (unsigned)local10)) goto L_8B40;    // $8B6C
L_8B6F:
    win_render_syscall(1);    // $8B70
    draw_box_frame();    // $8B74
    draw_string(0x9A29, 1);    // $8B7B
    local9 = menu_select((local4 - 1), (local3 + 1), 2, (local10 + 1));    // $8B8D
    if ((local9 == 255)) goto L_8BD9;    // $8B93
    draw_box_frame();    // $8B96
    win_render_syscall(1);    // $8B9A
    draw_string(0x9A39, 0);    // $8BA2
    draw_string_banked(record_base_6b1c((*(byte*)(((*(byte*)((local9 + &local5)) * 7) + 0x6C96)) & 15)));    // $8BBD
    set_draw_origin(8, 25);    // $8BC4
    local8 = prompt_confirm();    // $8BCB
    if (!(local8)) goto L_8B6F;    // $8BCD
    return *(byte*)((local9 + &local5));    // $8BD8
L_8BD9:
    return 255;    // $8BDC
}

// Decompiled from source/2-asm-vm\bank00.asm sub $8BDD
// $8BDD cargo_ship_rec
// (body @ $8BE2)

word cargo_ship_rec(word arg1, word arg2, word arg3, word arg4) {
    local7 = ((arg1 * 24) + 0x6AA4);    // $8BEA
    local9 = (local7 + 1);    // $8BED
    local8 = (local7 + 6);    // $8BF0
    local11 = 3;    // $8BF2
    phi_val_8c18 = 0;    // $8BF4
    while (((unsigned)local10 < (unsigned)5)) {    // $8C18
        if (*(word*)(((local10 << 1) + local8))) {    // $8BFC
        *(byte*)((arg2 + local11)) = *(byte*)((local9 + local10));    // $8C07
        *(word*)(((local11 << 1) + arg4)) = *(word*)(((local10 << 1) + local8));    // $8C12
        local11 = (local11 + 1);    // $8C15
        }
L_8C16:
        phi_val_8c18 = (local10 + 1);    // $8C17
        local10 = phi_val_8c18;    // $8C18
    }
    while (((unsigned)local11 < (unsigned)8)) {    // $8C34
        *(byte*)((arg2 + local11)) = 255;    // $8C29
        *(word*)(((local11 << 1) + arg4)) = 0;    // $8C30
        local11 = (local11 + 1);    // $8C33
    }
    local10 = 0;    // $8C3B
    do {    // $8C3C
        *(byte*)((arg2 + local10)) = (local10 + 26);    // $8C43
        local10 = (local10 + 1);    // $8C46
    } while (((unsigned)local10 < (unsigned)3));    // $8C4A
    *(word*)(arg4) = (*(word*)((local7 + 18)) / 10);    // $8C54
    arg4->field_2 = (*(word*)((local7 + 16)) / 10);    // $8C5E
    arg4->field_4 = *(word*)((local7 + 20));    // $8C66
    arg4->field_16 = record_field_word((record_base_6b1c((*(byte*)(((arg1 * 7) + 0x6C96)) & 15)) + 18));    // $8C81
    return record_field_word((record_base_6b1c((*(byte*)(((arg1 * 7) + 0x6C96)) & 15)) + 18));    // $8C82
}

// Decompiled from source/2-asm-vm\bank00.asm sub $8C83
// $8C83 cargo_barrels_free
// (body @ $8C88)

word cargo_barrels_free(word arg1) {
    win_render_syscall(3);    // $8C89
    return draw_field_m1(0x9A55, cargo_loop_8ae1(arg1));    // $8C9A
}

// Decompiled from source/2-asm-vm\bank00.asm sub $8C9B
// $8C9B cargo_draw_qty
// (body @ $8CA0)

word cargo_draw_qty(word arg1, word arg2, word arg3, word arg4) {
    local7 = 0;    // $8CA1
    local11 = 0;    // $8CA3
    phi_val_8d08 = 0;    // $8CA4
    goto L_8D08;    // $8CA4
L_8CA7:
    if (!((*(byte*)((arg2 + local10)) != 255))) goto L_8D06;    // $8CAF
    if (!(((unsigned)local10 < (unsigned)3))) goto L_8CD1;    // $8CB5
    set_tile_cursor(3, ((local11 << 1) + 3));    // $8CBD
    draw_string(*(word*)(((local10 << 1) + 0x9A11)), 1);    // $8CCA
    goto L_8CED;    // $8CCE
L_8CD1:
    set_tile_cursor(3, ((local11 << 1) + 4));    // $8CD6
L_8CED:
    draw_string_banked(record_field_word(((*(byte*)((arg2 + local10)) << 1) + 0xBB49)));    // $8CE9
    set_tile_cursor(12, ((local11 << 1) + 3));    // $8CF2
    draw_field_m1(0x9A66, *(word*)(((local10 << 1) + arg4)));    // $8CFF
    local11 = (local11 + 1);    // $8D05
L_8D06:
    phi_val_8d08 = (local10 + 1);    // $8D07
L_8D08:
    local10 = phi_val_8d08;    // $8D08
    if (((unsigned)local10 < (unsigned)8)) goto L_8CA7;    // $8D0C
    local9 = 0;    // $8D10
    phi_val_8d5c = 0;    // $8D11
    goto L_8D5C;    // $8D11
L_8D14:
    if (!(*(word*)(((local10 << 1) + arg3)))) goto L_8D5A;    // $8D19
    local8 = 0;    // $8D1D
L_8D1E:
    if (!((*(byte*)((arg2 + local8)) == local10))) goto L_8D2C;    // $8D24
    local7 = 1;    // $8D28
    goto L_8D35;    // $8D29
L_8D2C:
    local8 = (local8 + 1);    // $8D2E
    if (((unsigned)local8 < (unsigned)8)) goto L_8D1E;    // $8D32
L_8D35:
    if (!(((unsigned)local11 < (unsigned)8))) goto L_8D58;    // $8D38
    if (local7) goto L_8D58;    // $8D3C
    set_tile_cursor(3, ((local11 << 1) + 3));    // $8D44
    draw_string(0x9A6A, 1);    // $8D4C
    local11 = (local11 + 1);    // $8D52
    local9 = 1;    // $8D54
    goto L_8D64;    // $8D55
L_8D58:
    local7 = 0;    // $8D59
L_8D5A:
    phi_val_8d5c = (local10 + 1);    // $8D5B
L_8D5C:
    local10 = phi_val_8d5c;    // $8D5C
    if (((unsigned)local10 < (unsigned)26)) goto L_8D14;    // $8D61
L_8D64:
    phi_val_8d7b = local11;    // $8D65
    goto L_8D7B;    // $8D65
L_8D68:
    set_tile_cursor(3, ((local10 << 1) + 3));    // $8D6D
    draw_string(0x9A78, 1);    // $8D75
    phi_val_8d7b = (local10 + 1);    // $8D7A
L_8D7B:
    local10 = phi_val_8d7b;    // $8D7B
    if (((unsigned)local10 < (unsigned)8)) goto L_8D68;    // $8D7F
    cargo_barrels_free(arg4);    // $8D83
    return ((local11 - 1) - local9);    // $8D8B
}

// Decompiled from source/2-asm-vm\bank00.asm sub $8D8C
// $8D8C cargo_ship_rec_b
// (body @ $8D91)

word cargo_ship_rec_b(word arg1, word arg2, word arg3, word arg4) {
    local7 = ((arg1 * 24) + 0x6AA4);    // $8D99
    local11 = (local7 + 1);    // $8D9C
    local8 = (local7 + 6);    // $8D9F
    local9 = 0;    // $8DA1
    do {    // $8DA2
        *(byte*)((local11 + local9)) = 255;    // $8DA9
        *(word*)(((local9 << 1) + local8)) = 0;    // $8DB0
        local9 = (local9 + 1);    // $8DB3
    } while (((unsigned)local9 < (unsigned)5));    // $8DB7
    local10 = 0;    // $8DBB
    phi_val_8de4 = 3;    // $8DBD
    while (((unsigned)local9 < (unsigned)8)) {    // $8DE4
        if ((*(byte*)((arg2 + local9)) != 255)) {    // $8DC8
        *(byte*)((local11 + local10)) = *(byte*)((arg2 + local9));    // $8DD3
        *(word*)(((local10 << 1) + local8)) = *(word*)(((local9 << 1) + arg4));    // $8DDE
        local10 = (local10 + 1);    // $8DE1
        }
L_8DE2:
        phi_val_8de4 = (local9 + 1);    // $8DE3
        local9 = phi_val_8de4;    // $8DE4
    }
    *(word*)((local7 + 18)) = (*(word*)(arg4) * 10);    // $8DF3
    *(word*)((local7 + 16)) = (arg4->field_2 * 10);    // $8DFD
    *(word*)((local7 + 20)) = arg4->field_4;    // $8E05
    return arg4->field_4;    // $8E06
}

// Decompiled from source/2-asm-vm\bank00.asm sub $8E07
// $8E07 cargo_8e07
// (body @ $8E0C)

word cargo_8e07(word arg1, word arg2, word arg3) {
    local11 = 0;    // $8E0D
    local9 = 3;    // $8E0F
    goto L_8E46;    // $8E10
L_8E13:
    if (*(word*)(((local11 << 1) + arg3))) {    // $8E18
    local10 = 0;    // $8E1C
L_8E1D:
    if ((*(byte*)((arg1 + local10)) != 255)) {    // $8E25
    if ((*(byte*)((arg1 + local10)) == local11)) {    // $8E2E
    *(byte*)((arg2 + local9)) = local11;    // $8E36
    local9 = (local9 + 1);    // $8E39
    }
    }
L_8E3A:
    local10 = (local10 + 1);    // $8E3C
    if (((unsigned)local10 < (unsigned)8)) goto L_8E1D;    // $8E40
    }
L_8E43:
    local11 = (local11 + 1);    // $8E45
L_8E46:
    if (((unsigned)local11 < (unsigned)26)) goto L_8E13;    // $8E4A
    phi_val_8e5b = local9;    // $8E4E
    goto L_8E5B;    // $8E4E
L_8E51:
    *(byte*)((arg2 + local11)) = 255;    // $8E58
    phi_val_8e5b = (local11 + 1);    // $8E5A
L_8E5B:
    local11 = phi_val_8e5b;    // $8E5B
    if (((unsigned)local11 < (unsigned)29)) goto L_8E51;    // $8E60
    local11 = 26;    // $8E65
L_8E66:
    *(byte*)(((arg2 + local11) + -26)) = local11;    // $8E6D
    local11 = (local11 + 1);    // $8E70
    if (((unsigned)local11 < (unsigned)29)) goto L_8E66;    // $8E75
    return (local9 - 1);    // $8E7A
}

// Decompiled from source/2-asm-vm\bank00.asm sub $8E7B
// $8E7B cargo_8e7b
// (body @ $8E80)

word cargo_8e7b(word arg1, word arg2, word arg3) {
    local11 = 0;    // $8E81
    local10 = 0;    // $8E83
    local8 = 0;    // $8E85
    goto L_8ECA;    // $8E86
L_8E89:
    if (!(*(word*)(((local10 << 1) + arg3)))) goto L_8EC7;    // $8E8E
    local9 = 0;    // $8E92
L_8E93:
    if (!((*(byte*)((arg1 + local9)) != 255))) goto L_8EAC;    // $8E9B
    if (!((*(byte*)((arg1 + local9)) == local10))) goto L_8EAC;    // $8EA4
    local11 = 1;    // $8EA8
    goto L_8EB5;    // $8EA9
L_8EAC:
    local9 = (local9 + 1);    // $8EAE
    if (((unsigned)local9 < (unsigned)8)) goto L_8E93;    // $8EB2
L_8EB5:
    if (local11) goto L_8EC5;    // $8EB6
    *(byte*)((arg2 + local8)) = local10;    // $8EBE
    local8 = (local8 + 1);    // $8EC1
    goto L_8EC7;    // $8EC2
L_8EC5:
    local11 = 0;    // $8EC6
L_8EC7:
    local10 = (local10 + 1);    // $8EC9
L_8ECA:
    if (((unsigned)local10 < (unsigned)26)) goto L_8E89;    // $8ECE
    phi_val_8edf = local8;    // $8ED2
    goto L_8EDF;    // $8ED2
L_8ED5:
    *(byte*)((arg2 + local10)) = 255;    // $8EDC
    phi_val_8edf = (local10 + 1);    // $8EDE
L_8EDF:
    local10 = phi_val_8edf;    // $8EDF
    if (((unsigned)local10 < (unsigned)29)) goto L_8ED5;    // $8EE4
    if (local8) goto L_8EEF;    // $8EE8
    return 255;    // $8EEE
L_8EEF:
    return (local8 - 1);    // $8EF1
}

// Decompiled from source/2-asm-vm\bank00.asm sub $8EF2
// $8EF2 cargo_draw_field
// (body @ $8EF7)

word cargo_draw_field(word arg1, word arg2) {
    local10 = 0;    // $8EF8
    phi_val_8f59 = 0;    // $8EFA
    goto L_8F59;    // $8EFA
L_8EFD:
    if (((unsigned)local10 < (unsigned)3)) {    // $8F00
    set_tile_cursor(17, ((local10 << 1) + 3));    // $8F09
    draw_string(*(word*)(((local11 << 1) + 0x9A11)), 1);    // $8F16
    } else {
    set_tile_cursor(17, ((local10 << 1) + 4));    // $8F23
    }
L_8F3A:
    draw_string_banked(record_field_word(((*(byte*)((arg1 + local11)) << 1) + 0xBB49)));    // $8F36
    set_tile_cursor(26, ((local10 << 1) + 3));    // $8F40
    draw_field_m1(0x9A7F, *(word*)(((*(byte*)((arg1 + local11)) << 1) + arg2)));    // $8F50
    local10 = (local10 + 1);    // $8F56
    phi_val_8f59 = (local11 + 1);    // $8F58
L_8F59:
    local11 = phi_val_8f59;    // $8F59
    if (!((*(byte*)((arg1 + local11)) != 255))) goto L_8F6B;    // $8F62
    if (((unsigned)local11 < (unsigned)8)) goto L_8EFD;    // $8F68
L_8F6B:
    return ((unsigned)local11 < (unsigned)8);    // $8F6B
    }
}

// Decompiled from source/2-asm-vm\bank00.asm sub $8F6C
// $8F6C cargo_8f6c
// (body @ $8F71)

word cargo_8f6c(word arg1, word arg2, word arg3, word arg4) {
    cargo_transfer_col(1, 3);    // $8F73
    local9 = 0;    // $8F78
    phi_val_8ff8 = (arg1 << 3);    // $8F7C
    goto L_8FF8;    // $8F7C
L_8F7F:
    if (!((*(byte*)((arg3 + local11)) != 255))) goto L_9007;    // $8F87
    phi_val_8fa6 = 0;    // $8F8B
    goto L_8FA6;    // $8F8B
L_8F8E:
    if ((*(byte*)((arg2 + local10)) == *(byte*)((arg3 + local11)))) {    // $8F99
    }
L_8FA4:
    draw_string(0x9A83, 1);    // $8FA0
    phi_val_8fa6 = (local10 + 1);    // $8FA5
L_8FA6:
    local10 = phi_val_8fa6;    // $8FA6
    if (!(*(byte*)((arg2 + local10)))) goto L_8FB4;    // $8FAB
    if (((unsigned)local10 < (unsigned)5)) goto L_8F8E;    // $8FB1
L_8FB4:
    set_tile_cursor(17, ((local9 << 1) + 4));    // $8FBA
    draw_string_banked(record_field_word(((*(byte*)((arg3 + local11)) << 1) + 0xBB49)));    // $8FCD
    set_tile_cursor(26, ((local9 << 1) + 3));    // $8FD7
    draw_field_m1(0x9A87, *(word*)(((*(byte*)((arg3 + local11)) << 1) + arg4)));    // $8FE7
    local9 = (local9 + 1);    // $8FED
    draw_string(0x9A8B, 1);    // $8FF2
    phi_val_8ff8 = (local11 + 1);    // $8FF7
L_8FF8:
    local11 = phi_val_8ff8;    // $8FF8
    if (!(((unsigned)local9 < (unsigned)8))) goto L_9006;    // $8FFC
    if (((unsigned)local11 < (unsigned)29)) goto L_8F7F;    // $9003
L_9006:
    return ((unsigned)local11 < (unsigned)29);    // $9006
L_9007:
    return ((unsigned)local11 < (unsigned)29);    // $9007
}

// Decompiled from source/2-asm-vm\bank00.asm sub $9008
// $9008 cargo_field_9008
// (body @ $900D)

word cargo_field_9008(word arg1, word arg2, word arg3, word arg4) {
    local11 = 0;    // $900E
    do {    // $900F
        if ((*(byte*)((arg2 + local11)) == *(byte*)((arg3 + arg1)))) {    // $901A
        set_tile_cursor(26, ((local11 << 1) + 3));    // $9023
        }
L_9037:
        draw_field_m1(0x9A8F, *(word*)(((*(byte*)((arg3 + arg1)) << 1) + arg4)));    // $9033
        local11 = (local11 + 1);    // $9039
    } while (((unsigned)local11 < (unsigned)8));    // $903D
    return ((unsigned)local11 < (unsigned)8);    // $9040
}

// Decompiled from source/2-asm-vm\bank00.asm sub $9041
// $9041 cargo_main_screen
// (body @ $9046)

word cargo_main_screen(word arg1, word arg2, word arg3, word arg4, word arg5) {
    local11 = 2;    // $9047
    local10 = 4;    // $9049
    local9 = 8;    // $904B
    local4 = 0;    // $904D
    *(word*)(fp - 99) = 0;    // $904E
    local6 = 1;    // $9051
    local0 = 0;    // $9053
    cargo_transfer_col(1, 3);    // $9056
    local2 = cargo_8e07(arg3, (fp - 57), arg4);    // $9064
    local1 = cargo_8e7b(arg3, (fp - 86), arg4);    // $906F
    cargo_draw_field((fp - 57), arg4);    // $9075
    *(byte*)(fp - 94) = 225;    // $907C
    *(byte*)(fp - 93) = 0;    // $9080
L_9083:
    local3 = frame_sync(0);    // $9088
    if ((local3 == 2)) goto L_9776;    // $908C
    *(word*)(fp - 97) = cargo_loop_8ae1(arg5);    // $9095
    local9 = 8;    // $9098
    *(byte*)(fp - 95) = ((((*(word*)(fp - 99) << 1) + local10) << 3) - 1);    // $90A1
    *(byte*)(fp - 92) = (local11 << 3);    // $90A7
    syscall_id13_syscall_set_chr_bank_alt((fp - 95), 0, 1);    // $90B1
    switch (local3) {    // $90B6
        case 1: goto L_9422;    // $90B6
        case 8: goto L_9112;    // $90B6
        case 16: goto L_90D3;    // $90B6
        case 32: goto L_90F3;    // $90B6
        case 64: goto L_9308;    // $90B6
        case 128: goto L_9124;    // $90B6
        default: goto L_9112;    // $90B6
    }    // $90B6
L_90D3:
    *(word*)(fp - 99) = (*(word*)(fp - 99) - 1);    // $90D6
    if (!((*(word*)(fp - 99) < 0))) goto L_9112;    // $90DA
    *(word*)(fp - 99) = arg1;    // $90DE
    if ((local1 == 255)) goto L_9112;    // $90E5
    if (!(((unsigned)arg1 < (unsigned)7))) goto L_9112;    // $90EB
    goto L_9110;    // $90F0
L_90F3:
    if ((*(word*)(fp - 99) >= 7)) goto L_910F;    // $90F7
    if ((local1 == 255)) goto L_911B;    // $90FF
    *(word*)(fp - 99) = (*(word*)(fp - 99) + 1);    // $9108
L_910B:
    if (!(((unsigned)*(word*)(fp - 99) > (unsigned)(arg1 + 1)))) goto L_9112;    // $910C
L_910F:
L_9110:
    *(word*)(fp - 99) = 0;    // $9110
L_9112:
    helper_ce4d(local3, local9);    // $9114
    goto L_9083;    // $9118
L_911B:
    *(word*)(fp - 99) = (*(word*)(fp - 99) + 1);    // $911E
    goto L_910B;    // $9121
L_9124:
    if (((unsigned)*(word*)(fp - 99) > (unsigned)arg1)) goto L_9112;    // $9128
L_912B:
    if (!((*(word*)(((*(word*)(fp - 99) << 1) + arg5)) > 0))) goto L_9232;    // $9134
    if ((local9 != 1)) goto L_919A;    // $913A
    if (!((*(word*)(((*(word*)(fp - 99) << 1) + arg5)) > 10))) goto L_916D;    // $9146
    *(word*)(((*(byte*)((arg3 + *(word*)(fp - 99))) << 1) + arg4)) = (*(word*)(((*(byte*)((arg3 + *(word*)(fp - 99))) << 1) + arg4)) + 10);    // $9156
    *(word*)(((*(word*)(fp - 99) << 1) + arg5)) = (*(word*)(((*(word*)(fp - 99) << 1) + arg5)) - 10);    // $9162
    *(word*)(fp - 97) = (*(word*)(fp - 97) + 10);    // $9168
    goto L_91B5;    // $916A
L_916D:
    *(word*)(((*(byte*)((arg3 + *(word*)(fp - 99))) << 1) + arg4)) = (*(word*)(((*(byte*)((arg3 + *(word*)(fp - 99))) << 1) + arg4)) + *(word*)(((*(word*)(fp - 99) << 1) + arg5)));    // $9181
    *(word*)(fp - 97) = (*(word*)(fp - 97) + *(word*)(((*(word*)(fp - 99) << 1) + arg5)));    // $918D
    goto L_91B4;    // $9197
L_919A:
    *(word*)(((*(word*)(fp - 99) << 1) + arg5)) = (*(word*)(((*(word*)(fp - 99) << 1) + arg5)) - 1);    // $91A3
    *(word*)(fp - 97) = (*(word*)(fp - 97) + 1);    // $91A7
L_91B4:
    *(word*)(((*(byte*)((arg3 + *(word*)(fp - 99))) << 1) + arg4)) = (*(word*)(((*(byte*)((arg3 + *(word*)(fp - 99))) << 1) + arg4)) + 1);    // $91B4
L_91B5:
    phi_val_91d3 = 0;    // $91B6
    goto L_91D3;    // $91B6
L_91B9:
    if (!((*(byte*)((arg3 + *(word*)(fp - 99))) == *(byte*)((local8 + (fp - 57)))))) goto L_91D1;    // $91C9
    local6 = 0;    // $91CD
    goto L_91DD;    // $91CE
L_91D1:
    phi_val_91d3 = (local8 + 1);    // $91D2
L_91D3:
    local8 = phi_val_91d3;    // $91D3
    if (((unsigned)local8 < (unsigned)(local2 + 1))) goto L_91B9;    // $91DA
L_91DD:
    if (!(local6)) goto L_9230;    // $91DE
    set_tile_cursor(17, (((local2 + 1) << 1) + 4));    // $91E8
    draw_string_banked(record_field_word(((*(byte*)((arg3 + *(word*)(fp - 99))) << 1) + 0xBB49)));    // $91FC
    set_tile_cursor(26, (((local2 + 1) << 1) + 3));    // $9207
    draw_field_m1(0x9A93, *(word*)(((*(byte*)((arg3 + *(word*)(fp - 99))) << 1) + arg4)));    // $9218
    *(byte*)((local2 + (fp - 56))) = *(byte*)((arg3 + *(word*)(fp - 99)));    // $9229
    local2 = (local2 + 1);    // $922C
    goto L_9232;    // $922D
L_9230:
    local6 = 1;    // $9231
L_9232:
    cargo_field_9008(*(word*)(fp - 99), (fp - 57), arg3, arg4);    // $923A
    set_tile_cursor(12, (((*(word*)(fp - 99) << 1) + local10) - 1));    // $9246
    draw_field_m1(0x9A97, *(word*)(((*(word*)(fp - 99) << 1) + arg5)));    // $9255
    set_tile_cursor(8, 25);    // $925C
    draw_field_m1(0x9A9B, *(word*)(fp - 97));    // $9265
    local9 = 1;    // $926A
    if (!((*(word*)(fp - 99) > 2))) goto L_92F5;    // $926F
    if (*(word*)(((*(word*)(fp - 99) << 1) + arg5))) goto L_92F5;    // $9279
    draw_box_frame();    // $927C
    win_render_syscall(1);    // $9280
    draw_string(0x9A9F, 1);    // $9288
    win_open();    // $928C
    draw_box_frame();    // $928F
    *(byte*)((arg3 + *(word*)(fp - 99))) = 255;    // $929A
    syscall_id12_syscall_set_chr_banks(0, 1);    // $929E
    if (!((*(word*)(fp - 99) == arg1))) goto L_92AE;    // $92A6
    *(word*)(fp - 99) = (*(word*)(fp - 99) - 1);    // $92AC
L_92AE:
    local2 = cargo_8e07(arg3, (fp - 57), arg4);    // $92B8
    local1 = cargo_8e7b(arg3, (fp - 86), arg4);    // $92C3
    cargo_transfer_col(1, 9);    // $92C6
    cargo_draw_field((fp - 57), arg4);    // $92CF
    cargo_ship_rec_b(arg2, arg3, arg4, arg5);    // $92D8
    cargo_ship_rec(arg2, arg3, arg4, arg5);    // $92E1
    cargo_transfer_col(0, 9);    // $92E7
    arg1 = cargo_draw_qty(arg2, arg3, arg4, arg5);    // $92F4
L_92F5:
    if ((syscall_id16_syscall_read_controller(0) & 128)) goto L_912B;    // $9300
L_9303:
    local9 = 8;    // $9304
    goto L_9112;    // $9305
L_9308:
    if (((unsigned)*(word*)(fp - 99) > (unsigned)arg1)) goto L_9112;    // $930C
L_930F:
    if (!(*(word*)(((*(byte*)((arg3 + *(word*)(fp - 99))) << 1) + arg4)))) goto L_93D9;    // $9318
    if (!(*(word*)(fp - 97))) goto L_93D9;    // $931D
    if ((local9 != 1)) goto L_93BE;    // $9323
    if (!((*(word*)(((*(byte*)((arg3 + *(word*)(fp - 99))) << 1) + arg4)) > 10))) goto L_935D;    // $9331
    if (!((*(word*)(fp - 97) > 10))) goto L_935D;    // $9338
    *(word*)(((*(byte*)((arg3 + *(word*)(fp - 99))) << 1) + arg4)) = (*(word*)(((*(byte*)((arg3 + *(word*)(fp - 99))) << 1) + arg4)) - 10);    // $9348
    *(word*)(((*(word*)(fp - 99) << 1) + arg5)) = (*(word*)(((*(word*)(fp - 99) << 1) + arg5)) + 10);    // $9354
    goto L_93D7;    // $935A
L_935D:
    if (!((*(word*)(((*(byte*)((arg3 + *(word*)(fp - 99))) << 1) + arg4)) > *(word*)(fp - 97)))) goto L_938C;    // $9369
    *(word*)(((*(word*)(fp - 99) << 1) + arg5)) = (*(word*)(((*(word*)(fp - 99) << 1) + arg5)) + *(word*)(fp - 97));    // $9378
    *(word*)(((*(byte*)((arg3 + *(word*)(fp - 99))) << 1) + arg4)) = (*(word*)(((*(byte*)((arg3 + *(word*)(fp - 99))) << 1) + arg4)) - *(word*)(fp - 97));    // $9387
    goto L_93D7;    // $9389
L_938C:
    *(word*)(((*(word*)(fp - 99) << 1) + arg5)) = (*(word*)(((*(word*)(fp - 99) << 1) + arg5)) + *(word*)(((*(byte*)((arg3 + *(word*)(fp - 99))) << 1) + arg4)));    // $93A0
    *(word*)(fp - 97) = (*(word*)(fp - 97) - *(word*)(((*(byte*)((arg3 + *(word*)(fp - 99))) << 1) + arg4)));    // $93AE
    *(word*)(((*(byte*)((arg3 + *(word*)(fp - 99))) << 1) + arg4)) = 0;    // $93BA
    goto L_93D9;    // $93BB
L_93BE:
    *(word*)(((*(byte*)((arg3 + *(word*)(fp - 99))) << 1) + arg4)) = (*(word*)(((*(byte*)((arg3 + *(word*)(fp - 99))) << 1) + arg4)) - 1);    // $93C9
    *(word*)(((*(word*)(fp - 99) << 1) + arg5)) = (*(word*)(((*(word*)(fp - 99) << 1) + arg5)) + 1);    // $93D3
L_93D7:
    *(word*)(fp - 97) = (*(word*)(fp - 97) - 1);    // $93D7
L_93D9:
    cargo_field_9008(*(word*)(fp - 99), (fp - 57), arg3, arg4);    // $93E1
    set_tile_cursor(12, (((*(word*)(fp - 99) << 1) + local10) - 1));    // $93ED
    draw_field_m1(0x9AB5, *(word*)(((*(word*)(fp - 99) << 1) + arg5)));    // $93FC
    set_tile_cursor(8, 25);    // $9403
    draw_field_m1(0x9AB9, *(word*)(fp - 97));    // $940C
    local9 = 1;    // $9411
    if ((syscall_id16_syscall_read_controller(0) & 64)) goto L_930F;    // $941C
    goto L_9303;    // $941F
L_9422:
    if (!(((unsigned)*(word*)(fp - 99) > (unsigned)arg1))) goto L_9752;    // $9426
    if ((local1 == 255)) goto L_9752;    // $942E
    if (cargo_loop_8ae1(arg5)) goto L_9454;    // $9437
    draw_window();    // $943A
    draw_string(0x9ABD, 1);    // $9441
    win_open();    // $9445
L_944B:
    draw_window_3();    // $9448
    cargo_barrels_free(arg5);    // $944D
    goto L_9112;    // $9451
L_9454:
    local8 = 0;    // $9455
L_9456:
    *(byte*)((local8 + (fp - 91))) = 255;    // $9461
    local8 = (local8 + 1);    // $9464
    if (((unsigned)local8 < (unsigned)5)) goto L_9456;    // $9468
    local5 = 0;    // $946C
    *(word*)(fp - 28) = local1;    // $946E
    draw_box_frame();    // $9470
    win_render_syscall(1);    // $9474
    draw_text(0x9AD2);    // $947B
    draw_window_3();    // $947F
    cargo_barrels_free(arg5);    // $9484
    local0 = 0;    // $9489
    *(word*)(fp - 101) = 0;    // $948B
    cargo_8f6c(local0, (fp - 91), (fp - 86), arg4);    // $9497
    *(word*)(fp - 26) = ((unsigned)local1 >> 3);    // $949E
    goto L_9716;    // $94A0
L_94A3:
    helper_ce4d(local3, local9);    // $94A5
    local9 = 8;    // $94AA
    *(byte*)(fp - 95) = (((((*(word*)(fp - 101) - (local0 << 3)) << 1) + local10) << 3) - 1);    // $94B9
    *(byte*)(fp - 92) = 128;    // $94BF
    syscall_id13_syscall_set_chr_bank_alt((fp - 95), 0, 1);    // $94C9
    switch (local3) {    // $94CE
        case 1: goto L_956F;    // $94CE
        case 16: goto L_94E7;    // $94CE
        case 32: goto L_9508;    // $94CE
        case 64: goto L_9526;    // $94CE
        case 128: goto L_9545;    // $94CE
        default: goto L_9716;    // $94CE
    }    // $94CE
L_94E7:
    *(word*)(fp - 101) = (*(word*)(fp - 101) - 1);    // $94EA
    if (((*(word*)(fp - 101) + 1) % 8)) goto L_9716;    // $94F1
    if (!(((unsigned)local1 > (unsigned)((local0 << 3) + 7)))) goto L_956B;    // $94FC
L_9503:
    *(word*)(fp - 101) = ((local0 << 3) + 7);    // $9503
    goto L_9716;    // $9505
L_9508:
    *(word*)(fp - 101) = (*(word*)(fp - 101) + 1);    // $950B
    if (!((((unsigned)*(word*)(fp - 101) > (unsigned)((local0 << 3) + 7)) || ((unsigned)*(word*)(fp - 101) > (unsigned)local1)))) goto L_9716;    // $951D
    goto L_9503;    // $9523
L_9526:
    if (!(((unsigned)local0 > (unsigned)0))) goto L_9716;    // $9529
    local0 = (local0 - 1);    // $952E
    cargo_8f6c(local0, (fp - 91), (fp - 86), arg4);    // $9539
    goto L_9503;    // $9542
L_9545:
    if (!(((unsigned)*(word*)(fp - 26) > (unsigned)local0))) goto L_9716;    // $9549
    local0 = (local0 + 1);    // $954E
    cargo_8f6c(local0, (fp - 91), (fp - 86), arg4);    // $9559
    *(word*)(fp - 101) = (*(word*)(fp - 101) + 8);    // $9562
    if (!(((unsigned)*(word*)(fp - 101) > (unsigned)local1))) goto L_9716;    // $9568
L_956B:
    goto L_9503;    // $956C
L_956F:
    phi_val_9591 = 0;    // $9570
    goto L_9591;    // $9570
L_9573:
    if (!((*(byte*)((local8 + (fp - 91))) == *(byte*)((*(word*)(fp - 101) + (fp - 86)))))) goto L_958F;    // $9587
    local4 = 1;    // $958B
    goto L_9598;    // $958C
L_958F:
    phi_val_9591 = (local8 + 1);    // $9590
L_9591:
    local8 = phi_val_9591;    // $9591
    if (((unsigned)local8 <= (unsigned)local5)) goto L_9573;    // $9595
L_9598:
    if (*(word*)(fp - 97)) goto L_95B9;    // $959A
    draw_window();    // $959D
    draw_string(0x9AE2, 1);    // $95A4
    win_open();    // $95A8
    local4 = 1;    // $95AC
    win_open();    // $95AD
    draw_window_3();    // $95B0
L_95B9:
    cargo_barrels_free(arg5);    // $95B5
    if (!(((unsigned)arg1 < (unsigned)7))) goto L_96F4;    // $95BC
    if (local4) goto L_96F4;    // $95C0
    if (!(*(word*)(fp - 97))) goto L_96F4;    // $95C5
    *(byte*)((local5 + (fp - 91))) = *(byte*)((*(word*)(fp - 101) + (fp - 86)));    // $95D9
    local5 = (local5 + 1);    // $95DC
    draw_string(0x9AF7, 1);    // $95E1
    set_tile_cursor(17, (((*(word*)(fp - 101) - (local0 << 3)) << 1) + 4));    // $95F2
    draw_string_banked(record_field_word(((*(byte*)((*(word*)(fp - 101) + (fp - 86))) << 1) + 0xBB49)));    // $960A
    set_tile_cursor(26, (((*(word*)(fp - 101) - (local0 << 3)) << 1) + 3));    // $961B
    *(word*)(((*(byte*)((*(word*)(fp - 101) + (fp - 86))) << 1) + arg4)) = (*(word*)(((*(byte*)((*(word*)(fp - 101) + (fp - 86))) << 1) + arg4)) - 1);    // $962E
    draw_field_m1(0x9AFB, *(word*)(((*(byte*)((*(word*)(fp - 101) + (fp - 86))) << 1) + arg4)));    // $9633
    draw_string(0x9AFF, 1);    // $963B
    arg1 = (arg1 + 1);    // $9641
    *(byte*)((arg3 + arg1)) = *(byte*)((*(word*)(fp - 101) + (fp - 86)));    // $964F
    *(byte*)((local2 + (fp - 57))) = *(byte*)((*(word*)(fp - 101) + (fp - 86)));    // $9661
    set_tile_cursor(3, ((arg1 << 1) + 4));    // $9667
    syscall_id08_syscall_queue_ppu_transfer(3, ((arg1 << 1) + 4), 9, 1, 0, 0);    // $9675
    draw_string_banked(record_field_word(((*(byte*)((arg3 + arg1)) << 1) + 0xBB49)));    // $9688
    set_tile_cursor(12, ((arg1 << 1) + 3));    // $9691
    *(word*)(((arg1 << 1) + arg5)) = (*(word*)(((arg1 << 1) + arg5)) + 1);    // $969D
    draw_field_m1(0x9B03, *(word*)(((arg1 << 1) + arg5)));    // $96A2
    if (!(((unsigned)arg1 < (unsigned)7))) goto L_96CA;    // $96A9
    if (!(((unsigned)*(word*)(fp - 28) > (unsigned)0))) goto L_96CA;    // $96B0
    set_tile_cursor(3, (((arg1 + 1) << 1) + 3));    // $96B9
    draw_string(0x9B07, 1);    // $96C1
    *(word*)(fp - 28) = (*(word*)(fp - 28) - 1);    // $96C8
L_96CA:
    cargo_ship_rec_b(arg2, arg3, arg4, arg5);    // $96CF
    cargo_ship_rec(arg2, arg3, arg4, arg5);    // $96D8
    *(word*)(fp - 97) = (*(word*)(fp - 97) - 1);    // $96DF
    set_tile_cursor(8, 25);    // $96E4
    draw_field_m1(0x9B15, *(word*)(fp - 97));    // $96ED
    goto L_9714;    // $96F1
L_96F4:
    if (local4) goto L_9714;    // $96F5
    draw_box_frame();    // $96F8
    win_render_syscall(1);    // $96FC
    draw_string(0x9B19, 1);    // $9704
    win_open();    // $9708
    draw_window_3();    // $970B
L_9714:
    cargo_barrels_free(arg5);    // $9710
    local4 = 0;    // $9715
L_9716:
    local3 = frame_sync(0);    // $971B
    if ((local3 != 2)) goto L_94A3;    // $971F
    local3 = 0;    // $9723
    helper_ce4d(local3, local9);    // $9726
    local2 = cargo_8e07(arg3, (fp - 57), arg4);    // $9734
    local1 = cargo_8e7b(arg3, (fp - 86), arg4);    // $973F
    cargo_transfer_col(1, 3);    // $9742
    cargo_draw_field((fp - 57), arg4);    // $974B
    goto L_9112;    // $974F
L_9752:
    if ((local1 != 255)) goto L_9112;    // $9757
    if (!(((unsigned)*(word*)(fp - 99) > (unsigned)arg1))) goto L_9112;    // $975E
    draw_box_frame();    // $9761
    win_render_syscall(1);    // $9765
    draw_text(0x9B29);    // $976C
    draw_box_frame();    // $9770
    goto L_944B;    // $9773
L_9776:
    return draw_box_frame();    // $9776
}

// Decompiled from source/2-asm-vm\bank00.asm sub $9777
// $9777 cargo_load_9777
// (body @ $977C)

word cargo_load_9777(word arg1, word arg2) {
    copy_from_bank_dc80(&local8, 8, 255);    // $9784
    copy_from_bank_dc80((fp - 34), 18, 0);    // $978F
    cargo_ship_rec(arg1, &local8, arg2, (fp - 34));    // $979D
    cargo_transfer_col(0, 3);    // $97A3
    local4 = cargo_draw_qty(arg1, &local8, arg2, (fp - 34));    // $97B5
    cargo_main_screen(local4, arg1, &local8, arg2, (fp - 34));    // $97C1
    return cargo_ship_rec_b(arg1, &local8, arg2, (fp - 34));    // $97D3
}

// Decompiled from source/2-asm-vm\bank00.asm sub $97D4
// $97D4 cargo_header
// (body @ $97D9)

word cargo_header(void) {
    set_tile_cursor(3, 1);    // $97DB
    draw_string(0x9B46, 1);    // $97E3
    local11 = 0;    // $97E8
    do {    // $97E9
        set_tile_cursor(((local11 * 14) + 12), 1);    // $97EF
        draw_string(0x9B4C, 1);    // $97F7
        local11 = (local11 + 1);    // $97FD
    } while (((unsigned)local11 < (unsigned)2));    // $9801
    set_tile_cursor(17, 1);    // $9807
    return draw_string(0x9B50, 1);    // $9813
}

// Decompiled from source/2-asm-vm\bank00.asm sub $9814
// $9814 cargo_sprites
// (body @ $9819)

word cargo_sprites(word arg1) {
    upload_sprite_block();    // $9819
    reset_chr_alloc();    // $981C
    reset_all_chr();    // $981F
    local9 = 0;    // $9823
    local8 = 0x6662;    // $9827
    ui_shared_var_737d = 0;    // $9829
    syscall_id18_syscall_set_scroll(0, 0);    // $9830
    syscall_id09_syscall_banked_blit_m3(1, 2, 30, 18, 0xBA3A, 0xBC56, 231);    // $9844
    if (((*(byte*)((local8 + 15)) & 2) || (*(byte*)((local8 + 15)) & 32))) {    // $9856
    }
L_9861:
    copy_from_bank_dc80(arg1, 58, 0);    // $985D
    draw_box_from_native();    // $9861
    syscall_id08_syscall_queue_ppu_transfer(15, 3, 1, 16, 250, 0);    // $986E
    syscall_id06_syscall_set_sprite_block(0x9B58, 0, 16);    // $9879
L_9889:
    syscall_id06_syscall_set_sprite_block(0xF376, 16, 16);    // $9885
    syscall_id08_syscall_queue_ppu_transfer(3, 2, 26, 1, 249, 0);    // $9893
    cargo_transfer_col(0, 3);    // $9899
    local11 = cargo_choose_vessel();    // $98A0
    if ((local11 == 255)) {    // $98A6
    local10 = 0;    // $98AA
L_98AB:
    if (!(*(word*)(((local10 << 1) + arg1)))) goto L_98B8;    // $98B0
    local9 = 1;    // $98B4
    goto L_98C2;    // $98B5
L_98B8:
    local10 = (local10 + 1);    // $98BA
    if (((unsigned)local10 < (unsigned)26)) goto L_98AB;    // $98BF
L_98C2:
    draw_box_frame();    // $98C2
    win_render_syscall(1);    // $98C6
    if (!(local9)) goto L_98D5;    // $98CB
    phi_98d9_0 = 0x9B68;    // $98D2
    phi_98d9_1 = 1;    // $98D2
    goto L_98D9;    // $98D2
L_98D5:
    phi_98d9_0 = 0x9B86;    // $98D6
    phi_98d9_1 = 1;    // $98D6
L_98D9:
    draw_string(phi_98d9_0, phi_98d9_1);    // $98D9
    if (prompt_confirm()) goto L_98E5;    // $98E0
    local11 = 0;    // $98E4
L_98E5:
    local9 = 0;    // $98E6
    } else {
    cargo_header();    // $98EA
    cargo_load_9777(local11, arg1);    // $98EF
    syscall_id12_syscall_set_chr_banks(0, 1);    // $98F6
    }
L_9900:
    cargo_transfer_col(1, 3);    // $98FC
    if ((local11 != 255)) goto L_9889;    // $9905
    return (local11 != 255);    // $9908
    }
}
