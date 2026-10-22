// Decompiled from source/2-asm-vm\bank16.asm sub $8003
// $8003 call_fleet_menu
// (body @ $8008)

word call_fleet_menu(void) {
    return fleet_menu_loop();    // $8013
}

// Decompiled from source/2-asm-vm\bank16.asm sub $8014
// $8014 call_fleet_cargo
// (body @ $8019)

word call_fleet_cargo(void) {
    return fleet_cargo_menu();    // $8024
}

// Decompiled from source/2-asm-vm\bank16.asm sub $8025
// $8025 call_shipyard_from_helm
// (body @ $802A)

word call_shipyard_from_helm(void) {
    return opt_pick();    // $8035
}

// Decompiled from source/2-asm-vm\bank16.asm sub $8036
// $8036 helm_draw_compass
// (body @ $803B)

word helm_draw_compass(word arg1, word arg2) {
    local11 = 232;    // $803E
    arg1 = (((arg1 << 1) + 2) << 3);    // $8044
    arg2 = (*(word*)(((ui_shared_var_737d << 1) + 0xDF14)) + (((arg2 << 1) + 1) << 3));    // $8056
    *(byte*)&local4 = arg2;    // $8058
    *(byte*)&local2 = arg2;    // $805B
    *(byte*)&local8 = (arg2 + 8);    // $8060
    *(byte*)&local6 = (arg2 + 8);    // $8063
    *(byte*)(fp - 9) = arg1;    // $8067
    *(byte*)(fp - 17) = arg1;    // $806A
    *(byte*)(fp - 5) = (arg1 + 8);    // $806F
    *(byte*)(fp - 13) = (arg1 + 8);    // $8072
    *(byte*)&local9 = 0;    // $8076
    *(byte*)&local7 = 0;    // $8079
    *(byte*)&local5 = 0;    // $807C
    *(byte*)&local3 = 0;    // $807F
    local10 = 0;    // $8083
    do {    // $8084
        *(byte*)((((local10 << 1) << 1) + (fp - 19))) = local11;    // $808F
        local10 = (local10 + 1);    // $8092
        local11 = (local11 + 1);    // $8095
    } while (((unsigned)local10 < (unsigned)4));    // $8099
    return syscall_id13_syscall_set_chr_bank_alt(&local2, 1, 4);    // $80A7
}

// Decompiled from source/2-asm-vm\bank16.asm sub $80A8
// $80A8 helm_set_chr
// (body @ $80AD)

word helm_set_chr(void) {
    return syscall_id12_syscall_set_chr_banks(1, 4);    // $80B4
}

// Decompiled from source/2-asm-vm\bank16.asm sub $80B5
// $80B5 helm_port_rumor
// (body @ $80BA)

word helm_port_rumor(void) {
    blit_screen_buffer();    // $80BA
    if (mem_707F) {    // $80C0
    if (load_operand16_14(5)) goto L_80DB;    // $80C8
    show_prompt_bc2b(search_6a9a_ptr(), 0);    // $80D0
    }
L_80DB:
    draw_text(0x9527);    // $80D7
L_80DE:
    refresh_hud();    // $80DB
    local11 = draw_text_menu_2(8, 2, 0x94EA, 6, 3);    // $80E9
    if ((local11 != 2)) goto L_8102;    // $80EE
    local11 = 6;    // $80F2
L_80F3:
    if (!((*(*(word*)(((local11 << 1) + 0x94F6))))())) goto L_80DE;    // $80FB
L_80FE:
    return redraw_dialog_region();    // $8101
L_8102:
    if ((local11 != 1)) goto L_80F3;    // $8106
    goto L_80FE;    // $8109
}

// Decompiled from source/2-asm-vm\bank16.asm sub $810C
// $810C helm_set_sail
// (body @ $8111)

word helm_set_sail(void) {
    local10 = 0x6662;    // $8114
    show_prompt_record();    // $8115
    if ((*(byte*)((local10 + 15)) & 1)) {    // $811D
    draw_string(0x95A6, 1);    // $8124
    local11 = animate_party_sprite();    // $812B
    place_object_sprite(party_map_x, party_map_y, mem_666A);    // $8138
    if (local11) {    // $813D
    show_prompt_bc27(0, 0);    // $8142
    show_message();    // $8146
    }
L_815A:
    draw_field_m1(0x95BE, *(word*)(((*(byte*)((local10 + 8)) << 1) + 0x9558)));    // $8156
    return local11;    // $815B
    }
L_815C:
    draw_text(0x95E0);    // $815F
    return 0;    // $8164
}

// Decompiled from source/2-asm-vm\bank16.asm sub $8165
// $8165 helm_anchor
// (body @ $816A)

word helm_anchor(void) {
    local11 = 0x6662;    // $816D
    show_prompt_bc27(0, 0);    // $8170
    if ((*(byte*)((local11 + 15)) & 1)) {    // $8179
    draw_text(0x95FB);    // $817F
    } else {
    draw_text(0x9612);    // $8192
    }
L_819D:
    *(byte*)((local11 + 15)) = (*(byte*)((local11 + 15)) | 1);    // $819D
    place_object_sprite(party_map_x, party_map_y, mem_666A);    // $81AA
    return 1;    // $81AF
    }
}

// Decompiled from source/2-asm-vm\bank16.asm sub $81B0
// $81B0 helm_yesno_menu
// (body @ $81B5)

word helm_yesno_menu(void) {
    local11 = draw_text_menu(0, 2, 0x9632, 2, 2);    // $81C0
    if (((local11 == 255))) return 0;    // $81C6
    return (*(*(word*)(((local11 << 1) + 0x9636))))();    // $81D3
}

// Decompiled from source/2-asm-vm\bank16.asm sub $81D4
// $81D4 coord_out_of_bounds
// (body @ $81D9)

word coord_out_of_bounds(word arg1, word arg2) {
    return ((arg1 < 0) || ((arg1 > 13) || ((arg2 < 0) || (arg2 > 13))));    // $81F6
}

// Decompiled from source/2-asm-vm\bank16.asm sub $81F7
// $81F7 check_move_target
// (body @ $81FC)

word check_move_target(word arg1, word arg2, word arg3, word arg4) {
    if (!(!(coord_out_of_bounds(arg1, arg2)))) return 255;    // $8202
    local10 = arg4;    // $820A
    local9 = (arg4 + arg3);    // $820D
    while (((unsigned)local10 < (unsigned)local9)) {    // $823F
        local11 = ((*(byte*)(local10) * 19) + 0xAFD8);    // $821A
        if (!((record_field_byte((local11 + 17)) == arg1))) goto L_823C;    // $8227
        if ((!((record_field_byte((local11 + 18)) != arg2)))) return *(byte*)(local10);    // $8236
        local10 = (local10 + 1);    // $823E
    }
    return 255;    // $8248
}

// Decompiled from source/2-asm-vm\bank16.asm sub $8249
// $8249 helm_move_loop
// (body @ $824E)

word helm_move_loop(word arg1, word arg2) {
    local11 = 0;    // $824F
    do {    // $8250
        local10 = local11;    // $8251
        if (!(((unsigned)(arg1 + local11) >= (unsigned)15))) goto L_8272;    // $8257
        if (((unsigned)*(word*)(arg2) >= (unsigned)0x2EE0)) {    // $8260
        local11 = (local11 + 1);    // $8265
        *(word*)(arg2) = (*(word*)(arg2) - 0x2EE0);    // $826E
        goto L_8290;    // $826F
L_8272:
        local9 = (((arg1 + local11) * (arg1 + local11)) * 50);    // $827E
        if (((unsigned)*(word*)(arg2) > (unsigned)local9)) {    // $8283
        *(word*)(arg2) = (*(word*)(arg2) - local9);    // $828C
        local11 = (local11 + 1);    // $828F
        }
        }
L_8290:
    } while ((local10 != local11));    // $8293
    if (((unsigned)(arg1 + local11) > (unsigned)50)) {    // $829C
L_829F:
    local11 = (local11 - 1);    // $82A1
    if (local11) goto L_829F;    // $82A3
    if (((unsigned)(arg1 + local11) > (unsigned)50)) goto L_829F;    // $82AC
    }
L_82AF:
    return local11;    // $82B0
}

// Decompiled from source/2-asm-vm\bank16.asm sub $82B1
// $82B1 helm_sailing_skill_up
// (body @ $82B6)

word helm_sailing_skill_up(void) {
    local11 = mem_6A96;    // $82B9
    local8 = scan_records_6c90_flag(0, (fp - 17));    // $82C3
    phi_val_840f = 0;    // $82C5
    goto L_840F;    // $82C5
L_82C8:
    *(word*)(fp - 19) = ((*(byte*)((local7 + (fp - 17))) * 24) + 0x6AA4);    // $82D7
    *(word*)(fp - 21) = ((*(byte*)(*(word*)(fp - 19)) * 10) + 0x6BBE);    // $82E2
    *(word*)(fp - 23) = ((*(byte*)(*(word*)(fp - 19)) * 7) + 0x6542);    // $82ED
    if (!(((unsigned)*(byte*)((*(word*)(fp - 23) + 3)) < (unsigned)50))) goto L_8322;    // $82F6
    *(word*)((*(word*)(fp - 21) + 8)) = max_s16((((((local11 / 10) * (local11 / 10)) * 200) + ((local11 % 10) * 10)) + *(word*)((*(word*)(fp - 21) + 8))), 0xEA60);    // $8321
L_8322:
    if (!(*(byte*)(*(word*)(fp - 19)))) goto L_835B;    // $8325
    *(word*)(fp - 25) = (((*(byte*)(*(word*)(fp - 19)) - 1) << 1) + 0x6A6E);    // $8331
    local10 = *(byte*)(*(word*)(fp - 25));    // $8336
    local10 = (local10 + ((mem_6BBF - *(byte*)((*(word*)(fp - 21) + 1))) / 10));    // $8346
    if ((local10 >= 0)) goto L_834F;    // $834A
    local10 = 0;    // $834E
L_834F:
    local10 = max_s16(local10, 100);    // $8356
    *(byte*)(*(word*)(fp - 25)) = local10;    // $835A
L_835B:
    if (!(((unsigned)*(byte*)((*(word*)(fp - 23) + 3)) < (unsigned)50))) goto L_840D;    // $8362
    local9 = helm_move_loop(*(byte*)((*(word*)(fp - 23) + 3)), (*(word*)(fp - 21) + 8));    // $8372
    if (!(local9)) goto L_840D;    // $8374
    show_message();    // $8377
    draw_string(0x9650, 0);    // $837E
    if (!(*(byte*)(*(word*)(fp - 19)))) goto L_839E;    // $8385
    phi_83a2_0 = 0x9652;    // $839B
    phi_83a2_1 = 0;    // $839B
    draw_string_banked(*(word*)(((*(byte*)(*(word*)(fp - 19)) * 7) + 0x6542)));    // $8393
    goto L_83A2;    // $839B
L_839E:
    phi_83a2_0 = 0x9655;    // $839F
    phi_83a2_1 = 0;    // $839F
L_83A2:
    draw_string(phi_83a2_0, phi_83a2_1);    // $83A2
    draw_string(0x9661, 0);    // $83AA
    *(byte*)((*(word*)(fp - 23) + 3)) = (*(byte*)((*(word*)(fp - 23) + 3)) + local9);    // $83B7
    phi_val_8406 = 0;    // $83B9
    goto L_8406;    // $83B9
L_83BC:
    *(byte*)((*(word*)(fp - 21) + 1)) = max_s16((load_operand16_14(4) + *(byte*)((*(word*)(fp - 21) + 1))), 100);    // $83D3
    *(byte*)((*(word*)(fp - 21) + 2)) = max_s16((load_operand16_14(4) + *(byte*)((*(word*)(fp - 21) + 2))), 100);    // $83EB
    *(byte*)((*(word*)(fp - 21) + 3)) = max_s16((load_operand16_14(4) + *(byte*)((*(word*)(fp - 21) + 3))), 100);    // $8403
    phi_val_8406 = (local6 + 1);    // $8405
L_8406:
    local6 = phi_val_8406;    // $8406
    if (((unsigned)local6 < (unsigned)local9)) goto L_83BC;    // $840A
L_840D:
    phi_val_840f = (local7 + 1);    // $840E
L_840F:
    local7 = phi_val_840f;    // $840F
    if (((unsigned)local7 < (unsigned)local8)) goto L_82C8;    // $8413
    mem_6A96 = 0;    // $8417
    return 0;    // $841A
}

// Decompiled from source/2-asm-vm\bank16.asm sub $841B
// $841B helm_call_at_port
// (body @ $8420)

word helm_call_at_port(void) {
    *(word*)(fp - 72) = collect_ports_by_key(((mem_7263 * 3) + mem_7265), ((mem_7264 * 3) + mem_7266), (fp - 70));    // $8440
    *(word*)(fp - 78) = 0x6662;    // $8445
    *(word*)(fp - 74) = 255;    // $844A
    if (*(word*)(fp - 72)) {    // $844E
    *(word*)(fp - 76) = 0;    // $8452
    do {    // $8454
        *(word*)(fp - 74) = check_move_target((*(byte*)((*(word*)(fp - 78) + 2)) + *(word*)((((*(word*)(fp - 76) << 1) << 1) + 0x7085))), (*(byte*)((*(word*)(fp - 78) + 3)) + *(word*)((((*(word*)(fp - 76) << 1) << 1) + 0x7087))), *(word*)(fp - 72), (fp - 70));    // $8480
        if ((*(word*)(fp - 74) != 255)) break;    // $8488
        *(word*)(fp - 76) = (*(word*)(fp - 76) + 1);    // $848E
    } while (((unsigned)*(word*)(fp - 76) < (unsigned)8));    // $8494
    }
L_8497:
    show_prompt_record();    // $8497
    if ((*(word*)(fp - 74) == 255)) {    // $84A0
    draw_text(0x9681);    // $84A6
    return 0;    // $84AB
    }
L_84AC:
    draw_string(0x9696, 0);    // $84B0
    draw_string_banked(((*(word*)(fp - 74) * 19) + 0xAFD8));    // $84BE
    draw_string(0x96A7, 0);    // $84C6
    if (prompt_confirm()) {    // $84CD
    helm_sailing_skill_up();    // $84D0
    mem_6B86 = 0;    // $84D4
    mem_737E = 0;    // $84D8
    connect_map_tile_b(*(byte*)((*(word*)(fp - 78) + 2)), *(byte*)((*(word*)(fp - 78) + 3)), 0);    // $84E6
    if ((*(byte*)((((*(byte*)((*(word*)(fp - 78) + 2)) * 14) + *(byte*)((*(word*)(fp - 78) + 3))) + 0x72B6)) == 255)) {    // $8500
    }
L_8522:
    draw_map_sprite_anim(*(byte*)((*(word*)(fp - 78) + 2)), *(byte*)((*(word*)(fp - 78) + 3)), ((((unsigned)*(byte*)((*(word*)(fp - 78) + 1)) % (unsigned)3) * 3) + ((unsigned)*(byte*)(*(word*)(fp - 78)) % (unsigned)3)));    // $851E
    *(word*)(fp - 80) = ((*(word*)(fp - 74) * 19) + 0xAFD8);    // $852B
    *(byte*)((*(word*)(fp - 78) + 2)) = record_field_byte((*(word*)(fp - 80) + 17));    // $853A
    *(byte*)((*(word*)(fp - 78) + 3)) = record_field_byte((*(word*)(fp - 80) + 18));    // $8548
    *(byte*)((*(word*)(fp - 78) + 15)) = (*(byte*)((*(word*)(fp - 78) + 15)) | 18);    // $8552
    syscall_id12_syscall_set_chr_banks(5, 4);    // $8556
    return 1;    // $855B
    }
L_855C:
    return 0;    // $855D
}

// Decompiled from source/2-asm-vm\bank16.asm sub $855E
// $855E can_move_to
// (body @ $8563)

word can_move_to(word arg1, word arg2) {
    if (!(!(coord_out_of_bounds(arg1, arg2)))) return 0;    // $8569
    return (calc_pos_relative(((mem_7263 * 3) + mem_7265), ((mem_7264 * 3) + mem_7266), arg1, arg2) ? 0 : 1);    // $8596
}

// Decompiled from source/2-asm-vm\bank16.asm sub $8597
// $8597 helm_dir_loop
// (body @ $859C)

word helm_dir_loop(word arg1, word arg2, word arg3, word arg4) {
    phi_val_85b9 = 0;    // $859D
    goto L_85B9;    // $859D
L_85A0:
    if (!((*(byte*)(((local11 << 1) + arg4)) == arg1))) goto L_85B7;    // $85A7
    if (!((*(byte*)((((local11 << 1) + arg4) + 1)) == arg2))) goto L_85B7;    // $85B2
    return 1;    // $85B6
L_85B7:
    phi_val_85b9 = (local11 + 1);    // $85B8
L_85B9:
    local11 = phi_val_85b9;    // $85B9
    if (((unsigned)local11 < (unsigned)arg3)) goto L_85A0;    // $85BD
    return 0;    // $85C1
}

// Decompiled from source/2-asm-vm\bank16.asm sub $85C2
// $85C2 helm_move_ship
// (body @ $85C7)

word helm_move_ship(word arg1, word arg2) {
    *(word*)(fp - 36) = 0x6662;    // $85CA
    local0 = *(byte*)((*(word*)(fp - 36) + 2));    // $85D0
    *(word*)(fp - 26) = *(byte*)((*(word*)(fp - 36) + 3));    // $85D5
    *(word*)(fp - 28) = 0;    // $85D8
    local3 = 0;    // $85DA
    while (((unsigned)*(word*)(fp - 28) < (unsigned)8)) {    // $8631
        if (can_move_to((*(word*)((((*(word*)(fp - 28) << 1) << 1) + 0x7085)) + local0), (*(word*)((((*(word*)(fp - 28) << 1) << 1) + 0x7087)) + *(word*)(fp - 26)))) {    // $85FB
        *(byte*)(((local3 << 1) + &local4)) = (*(word*)((((*(word*)(fp - 28) << 1) << 1) + 0x7085)) + local0);    // $8612
        *(byte*)(((local3 << 1) + (fp - 15))) = (*(word*)((((*(word*)(fp - 28) << 1) << 1) + 0x7087)) + *(word*)(fp - 26));    // $8628
        local3 = (local3 + 1);    // $862B
        }
L_862C:
        *(word*)(fp - 28) = (*(word*)(fp - 28) + 1);    // $862F
    }
    *(word*)(fp - 30) = load_operand16_14(local3);    // $863D
    local2 = *(byte*)(((*(word*)(fp - 30) << 1) + &local4));    // $8649
    local1 = *(byte*)(((*(word*)(fp - 30) << 1) + (fp - 15)));    // $8654
    do {    // $8655
        helm_draw_compass(local2, local1);    // $8657
        helper_ce4d(*(word*)(fp - 32), 12);    // $865E
        *(word*)(fp - 32) = cursor_blink_wait();    // $8665
        switch (cursor_blink_wait()) {    // $8667
        case 16:
            if (!(local1)) goto L_86EB;    // $867D
            if (!(helm_dir_loop(local2, (local1 - 1), local3, &local4))) goto L_86EB;    // $868D
            phi_val_8692 = (local1 - 1);    // $8691
L_8692:
            local1 = phi_val_8692;    // $8692
            goto L_86EB;    // $8693
L_8696:
            *(byte*)(arg1) = local2;    // $8698
            *(byte*)(arg2) = local1;    // $869B
            return 1;    // $869D
        case 32:
            if ((local1 == 13)) goto L_86EB;    // $86A1
            if (!(helm_dir_loop(local2, (local1 + 1), local3, &local4))) goto L_86EB;    // $86B1
            phi_val_8692 = (local1 + 1);    // $86B6
            goto L_8692;    // $86B6
        case 128:
            if ((local2 == 13)) goto L_86EB;    // $86BC
            if (!(helm_dir_loop((local2 + 1), local1, local3, &local4))) goto L_86EB;    // $86CC
            phi_val_86ea = (local2 + 1);    // $86D1
            goto L_86EA;    // $86D1
        case 64:
            if (local2) {    // $86D5
            if (helm_dir_loop((local2 - 1), local1, local3, &local4)) {    // $86E5
            phi_val_86ea = (local2 - 1);    // $86E9
L_86EA:
            local2 = phi_val_86ea;    // $86EA
            }
            }
        default:
        }
L_86EB:
        if ((*(word*)(fp - 32) == 1)) break;    // $86EF
    } while (!((*(word*)(fp - 32) == 2)));    // $86F6
L_86F9:
    helm_set_chr();    // $86F9
    if ((*(word*)(fp - 32) == 1)) goto L_8696;    // $8700
    return 0;    // $8704
}

// Decompiled from source/2-asm-vm\bank16.asm sub $8705
// $8705 helm_debark
// (body @ $870A)

word helm_debark(void) {
    local10 = 0x6662;    // $870D
    show_prompt_record();    // $870E
    draw_string(0x96A9, 1);    // $8715
    local9 = helm_move_ship((fp - 1), &local11);    // $8725
    if (local9) {    // $8727
    show_message();    // $872A
    draw_string(0x96C0, 1);    // $8731
    if (prompt_confirm()) {    // $8738
    connect_map_tile_b(*(byte*)((local10 + 2)), *(byte*)((local10 + 3)), 0);    // $8744
    if (!((*(byte*)((((*(byte*)((local10 + 2)) * 14) + *(byte*)((local10 + 3))) + 0x72B6)) == 255))) goto L_877A;    // $875C
L_877A:
    draw_map_sprite_anim(*(byte*)((local10 + 2)), *(byte*)((local10 + 3)), ((((unsigned)*(byte*)((local10 + 1)) % (unsigned)3) * 3) + ((unsigned)*(byte*)(local10) % (unsigned)3)));    // $8776
    *(byte*)((local10 + 15)) = (*(byte*)((local10 + 15)) | 48);    // $8782
    *(byte*)((local10 + 15)) = (*(byte*)((local10 + 15)) & 254);    // $878C
    *(byte*)((local10 + 2)) = *(byte*)(fp - 1);    // $8793
    *(byte*)((local10 + 3)) = *(byte*)&local11;    // $879A
    syscall_id12_syscall_set_chr_banks(5, 4);    // $879E
    place_object_sprite(party_map_x, party_map_y, mem_666A);    // $87AE
    phi_val_87b7 = 1;    // $87B3
    } else {
    phi_val_87b7 = 0;    // $87B6
    }
L_87B7:
    local9 = phi_val_87b7;    // $87B7
L_87B8:
    return local9;    // $87B9
    }
    }
}

// Decompiled from source/2-asm-vm\bank16.asm sub $87BA
// $87BA helm_anchor_fail
// (body @ $87BF)

word helm_anchor_fail(void) {
    local7 = ((mem_7263 * 3) + mem_7265);    // $87CA
    local6 = ((mem_7264 * 3) + mem_7266);    // $87D6
    local4 = 0x6662;    // $87DA
    local11 = 0;    // $87DC
    phi_val_8817 = 0;    // $87DE
    while (((unsigned)local5 < (unsigned)8)) {    // $8817
        local10 = (*(byte*)((local4 + 2)) + *(word*)((((local5 << 1) << 1) + 0x7085)));    // $87EF
        local9 = (*(byte*)((local4 + 3)) + *(word*)((((local5 << 1) << 1) + 0x7087)));    // $87FE
        if (coord_out_of_bounds(local10, local9)) goto L_8815;    // $8805
        if (calc_pos_relative(local7, local6, local10, local9)) goto L_8815;    // $8810
        local11 = 1;    // $8814
L_8815:
        phi_val_8817 = (local5 + 1);    // $8816
        local5 = phi_val_8817;    // $8817
    }
    if (local11) goto L_882E;    // $881F
    show_prompt_record();    // $8822
    draw_text(0x96ED);    // $8828
    return 0;    // $882D
L_882E:
    local8 = draw_text_menu(0, 2, 0x96D1, 2, 2);    // $8839
    if (((local8 == 255))) return 0;    // $883F
    return (*(*(word*)(((local8 << 1) + 0x96D5))))();    // $884C
}

// Decompiled from source/2-asm-vm\bank16.asm sub $884D
// $884D helm_compare_pos
// (body @ $8852)

word helm_compare_pos(word arg1, word arg2, word arg3, word arg4, word arg5, word arg6) {
    local10 = *(word*)(arg1);    // $8854
    local9 = *(word*)(arg2);    // $8857
L_8858:
    helm_draw_compass(local10, local9);    // $885A
    helper_ce4d(local11, 6);    // $8860
    local11 = cursor_blink_wait();    // $8867
    switch (local11) {    // $8869
    case 16:
        if (((unsigned)local9 > (unsigned)arg4)) {    // $8881
        local9 = (local9 - 1);    // $8886
        if ((local9 == 4)) {    // $888A
        ui_shared_var_737d = 2;    // $888E
        phi_8894_0 = 231;    // $8891
L_8894:
        syscall_id18_syscall_set_scroll(0, phi_8894_0);    // $8897
        place_object_sprite(party_map_x, party_map_y, mem_666A);    // $88A7
        }
        }
    default:
L_88B2:
        syscall_id17_syscall_busy_wait(1);    // $88AE
        if ((local11 == 1)) goto L_88BE;    // $88B5
        if ((local11 != 2)) goto L_8858;    // $88BB
L_88BE:
        *(word*)(arg1) = local10;    // $88C0
        *(word*)(arg2) = local9;    // $88C3
        return local11;    // $88C5
    case 32:
        if (!(((unsigned)local9 < (unsigned)arg6))) goto L_88B2;    // $88CA
        local9 = (local9 + 1);    // $88CF
        if ((local9 != 9)) goto L_88B2;    // $88D3
        ui_shared_var_737d = 1;    // $88D7
        phi_8894_0 = 7;    // $88DB
        goto L_8894;    // $88DB
        goto L_88B2;    // $88DE
    case 128:
        if (!(((unsigned)local10 < (unsigned)arg5))) goto L_88B2;    // $88E5
        phi_val_88ea = (local10 + 1);    // $88E9
L_88EA:
        local10 = phi_val_88ea;    // $88EA
        goto L_88B2;    // $88EB
    case 64:
        if (!(((unsigned)local10 > (unsigned)arg3))) goto L_88B2;    // $88F1
        phi_val_88ea = (local10 - 1);    // $88F6
        goto L_88EA;    // $88F6
    }
}

// Decompiled from source/2-asm-vm\bank16.asm sub $88F9
// $88F9 helm_fill_row
// (body @ $88FE)

word helm_fill_row(word arg1, word arg2, word arg3, word arg4) {
    local10 = arg4;    // $88FF
    local9 = (arg4 + arg3);    // $8902
    local11 = 0;    // $8904
    while (((unsigned)arg4 < (unsigned)local9)) {    // $892E
        local8 = ((*(byte*)(arg4) << 4) + 0x6662);    // $8910
        if ((*(byte*)((local8 + 2)) == arg1)) {    // $8916
        if ((*(byte*)((local8 + 3)) == arg2)) {    // $891E
        *(byte*)(local10) = *(byte*)(arg4);    // $8924
        local10 = (local10 + 1);    // $8927
        local11 = (local11 + 1);    // $892A
        }
        }
L_892B:
        arg4 = (arg4 + 1);    // $892D
    }
    return local11;    // $8935
}

// Decompiled from source/2-asm-vm\bank16.asm sub $8936
// $8936 helm_look_fleets
// (body @ $893B)

word helm_look_fleets(word arg1, word arg2) {
    if (((unsigned)arg1 > (unsigned)1)) {    // $893E
    local11 = arg2;    // $8942
    local9 = arg2;    // $8943
    local10 = (arg2 + arg1);    // $8946
    while (((unsigned)local11 < (unsigned)local10)) {    // $895F
        if (*(byte*)(local11)) goto L_8955;    // $894C
        arg1 = (arg1 - 1);    // $8951
        goto L_895C;    // $8952
L_8955:
        *(byte*)(local9) = *(byte*)(local11);    // $8958
        local9 = (local9 + 1);    // $895B
L_895C:
        local11 = (local11 + 1);    // $895E
    }
    show_message();    // $8965
    if (((unsigned)arg1 > (unsigned)1)) {    // $896B
    draw_field_m1(0x9708, arg1);    // $8972
    local8 = draw_labeled_value_2(0x9724, arg1);    // $897E
    if (((local8 == 1))) return 255;    // $8983
    return *(byte*)(((arg2 + local8) - 1));    // $898F
    }
L_8990:
    }
L_8997:
    draw_text(0x972E);    // $8993
    return *(byte*)(arg2);    // $8999
}

// Decompiled from source/2-asm-vm\bank16.asm sub $899A
// $899A helm_show_position
// (body @ $899F)

word helm_show_position(void) {
    local2 = 0x6662;    // $89A2
    if ((*(word*)((local2 + 11)) & 2)) goto L_89B7;    // $89A8
    show_prompt_record();    // $89AB
    draw_text(0x975D);    // $89B1
    return 0;    // $89B6
L_89B7:
    local5 = search_6a9a_ptr();    // $89BA
    local4 = *(byte*)(local2);    // $89BD
    local3 = *(byte*)((local2 + 1));    // $89C1
    if ((local5 != 255)) goto L_89D2;    // $89C7
    phi_val_89e0 = (mem_6BC1 + 60);    // $89CF
    goto L_89E0;    // $89CF
L_89D2:
    phi_val_89e0 = (*(byte*)(((local5 * 10) + 0x6BC1)) + mem_6BC1);    // $89DF
L_89E0:
    local6 = phi_val_89e0;    // $89E0
    if (!(((unsigned)local6 < (unsigned)load_operand16_14(180)))) goto L_8A26;    // $89EC
    local4 = ((load_operand16_14(5) + local4) + -2);    // $89F8
    local3 = ((load_operand16_14(3) + local3) - 1);    // $8A01
    if ((local4 >= 0)) goto L_8A0C;    // $8A05
    phi_val_8a13 = 0;    // $8A09
    goto L_8A13;    // $8A09
L_8A0C:
    phi_val_8a13 = max_s16(local4, 71);    // $8A0F
L_8A13:
    local4 = phi_val_8a13;    // $8A13
    if ((local3 >= 0)) goto L_8A1E;    // $8A17
    phi_val_8a25 = 0;    // $8A1B
    goto L_8A25;    // $8A1B
L_8A1E:
    phi_val_8a25 = max_s16(local3, 35);    // $8A21
L_8A25:
    local3 = phi_val_8a25;    // $8A25
L_8A26:
    local11 = (local3 / 18);    // $8A2A
    if (!(local11)) goto L_8A37;    // $8A2C
    phi_val_8a3f = ((local3 * 5) + -90);    // $8A34
    goto L_8A3F;    // $8A34
L_8A37:
    phi_val_8a3f = (90 - (local3 * 5));    // $8A3E
L_8A3F:
    local9 = phi_val_8a3f;    // $8A3F
    local7 = ((local4 + 38) % 72);    // $8A46
    local10 = ((unsigned)local7 / (unsigned)36);    // $8A4B
    local8 = ((local10 ? (72 - local7) : local7) * 5);    // $8A5A
    show_prompt_record();    // $8A5B
    draw_field_m1(0x9775, *(word*)(((local11 << 1) + 0x974D)), local9, *(word*)(((local10 << 1) + 0x9751)), local8);    // $8A73
    win_open();    // $8A77
    return 1;    // $8A7B
}

// Decompiled from source/2-asm-vm\bank16.asm sub $8A7C
// $8A7C helm_col_facing
// (body @ $8A81)

word helm_col_facing(word arg1) {
    return (((unsigned)*(byte*)((arg1 + 2)) < (unsigned)7) ? 18 : 1);    // $8A8F
}

// Decompiled from source/2-asm-vm\bank16.asm sub $8A90
// $8A90 helm_row_origin
// (body @ $8A95)

word helm_row_origin(void) {
    return ((ui_shared_var_737d == 1) ? 11 : 1);    // $8AA2
}

// Decompiled from source/2-asm-vm\bank16.asm sub $8AA3
// $8AA3 helm_draw_fleets
// (body @ $8AA8)

word helm_draw_fleets(word arg1) {
    *(word*)(fp - 27) = ((arg1 << 4) + 0x6662);    // $8AAF
    *(word*)(fp - 19) = helm_col_facing(*(word*)(fp - 27));    // $8AB7
    *(word*)(fp - 21) = helm_row_origin();    // $8ABC
    *(word*)(fp - 15) = scan_records_6c90_flag(arg1, (fp - 9));    // $8AC7
    *(word*)(fp - 23) = ((unsigned)(arg1 - 1) / (unsigned)5);    // $8ACD
    *(word*)(fp - 13) = (*(word*)(fp - 15) + 10);    // $8AD2
    blit_block_save(*(word*)(fp - 19), *(word*)(fp - 21), 13, *(word*)(fp - 13));    // $8ADB
    *(word*)(fp - 29) = party_in_rect(*(word*)(fp - 19), *(word*)(fp - 21), 13, *(word*)(fp - 13));    // $8AEA
    draw_menu_frame(*(word*)(fp - 19), *(word*)(fp - 21), 13, *(word*)(fp - 13), 0, 0);    // $8AF5
    *(word*)(fp - 13) = (*(word*)(fp - 21) + 1);    // $8AFC
    set_draw_origin((*(word*)(fp - 19) + 1), (*(word*)(fp - 21) + 1));    // $8B03
    draw_field(0x9806, *(word*)(((*(word*)(fp - 23) << 1) + 0x979B)));    // $8B13
    *(word*)(fp - 13) = (*(word*)(fp - 13) + 1);    // $8B1A
    set_draw_origin((*(word*)(fp - 19) + 1), *(word*)(fp - 13));    // $8B21
    draw_field(0x980F, *(word*)(((((unsigned)((unsigned)(arg1 - 1) % (unsigned)5) / (unsigned)3) << 1) + 0x97A3)));    // $8B35
    *(word*)(fp - 13) = (*(word*)(fp - 13) + 1);    // $8B3C
    set_draw_origin((*(word*)(fp - 19) + 1), *(word*)(fp - 13));    // $8B43
    draw_field_m1(0x9812, opt_get_entity_b(arg1));    // $8B57
    *(word*)(fp - 13) = (*(word*)(fp - 13) + 2);    // $8B60
    set_draw_origin((*(word*)(fp - 19) + 1), *(word*)(fp - 13));    // $8B67
    draw_field_m1(0x981C, *(word*)((((*(byte*)((*(word*)(fp - 27) + 8)) & 7) << 1) + 0x97A7)));    // $8B7B
    *(word*)(fp - 13) = (*(word*)(fp - 13) + 2);    // $8B84
    set_draw_origin((*(word*)(fp - 19) + 1), *(word*)(fp - 13));    // $8B8B
    draw_string(0x9827, 1);    // $8B93
    local11 = (fp - 9);    // $8B9A
    local10 = ((fp - 9) + *(word*)(fp - 15));    // $8B9E
    while (((unsigned)local11 < (unsigned)local10)) {    // $8BD4
        *(word*)(fp - 25) = ((*(byte*)(local11) * 7) + 0x6C90);    // $8BAA
        *(word*)(fp - 11) = record_base_6b1c((*(byte*)((*(word*)(fp - 25) + 6)) & 15));    // $8BB7
        set_draw_origin((*(word*)(fp - 19) + 2), (*(word*)(fp - 13) + 2));    // $8BC1
        draw_string_banked(*(word*)(fp - 11));    // $8BC7
        *(word*)(fp - 13) = (*(word*)(fp - 13) + 1);    // $8BCE
        local11 = (local11 + 1);    // $8BD3
    }
    *(word*)(fp - 13) = search_6a9a_ptr();    // $8BDD
    *(word*)(fp - 17) = mem_6BC1;    // $8BE2
    if ((*(word*)(fp - 13) == 255)) {    // $8BEA
    } else {
    }
L_8BFB:
    *(word*)(fp - 17) = (*(word*)(fp - 17) + *(byte*)(((*(word*)(fp - 13) * 10) + 0x6BC1)));    // $8BFF
    show_message();    // $8C01
    if (!(((unsigned)*(word*)(fp - 17) >= (unsigned)(load_operand16_14(80) + 100)))) goto L_8C4B;    // $8C11
    draw_string(0x982D, 0);    // $8C18
    draw_string_banked(*(word*)((((arg1 + 20) * 7) + 0x6542)));    // $8C27
    draw_string(0x983C, 0);    // $8C2F
    win_close();    // $8C33
    if (((unsigned)arg1 >= (unsigned)16)) {    // $8C3A
    show_message();    // $8C3D
    draw_string(0x9847, 1);    // $8C44
    goto L_8C5F;    // $8C48
L_8C4B:
L_8C5F:
    draw_field_m1(0x9862, *(word*)((((*(byte*)((*(word*)(fp - 27) + 8)) & 7) << 1) + 0x97A7)));    // $8C5B
    }
L_8C62:
    win_open();    // $8C5F
    if (*(word*)(fp - 29)) {    // $8C64
    }
L_8C77:
    place_object_sprite(party_map_x, party_map_y, mem_666A);    // $8C73
    return blit_block_unwind();    // $8C7A
    }
}

// Decompiled from source/2-asm-vm\bank16.asm sub $8C7B
// $8C7B helm_scan_ports
// (body @ $8C80)

word helm_scan_ports(word arg1, word arg2, word arg3) {
    *(word*)(fp - 3) = 0;    // $8C81
    *(word*)(fp - 5) = ((0 * 19) + 0xAFD8);    // $8C8A
    *(word*)(fp - 7) = (((0 * 19) + 0xAFD8) + 1330);    // $8C8F
    *(byte*)(fp - 1) = 0;    // $8C92
    while (((unsigned)*(word*)(fp - 5) < (unsigned)*(word*)(fp - 7))) {    // $8CCE
        if ((record_field_byte((*(word*)(fp - 5) + 15)) == arg1)) {    // $8CA2
        if ((record_field_byte((*(word*)(fp - 5) + 16)) == arg2)) {    // $8CB0
        *(byte*)((arg3 + *(word*)(fp - 3))) = *(byte*)(fp - 1);    // $8CBB
        *(word*)(fp - 3) = (*(word*)(fp - 3) + 1);    // $8CBF
        }
        }
L_8CC1:
        *(byte*)(fp - 1) = (*(byte*)(fp - 1) + 1);    // $8CC5
        *(word*)(fp - 5) = (*(word*)(fp - 5) + 19);    // $8CCC
    }
    return *(word*)(fp - 3);    // $8CD8
}

// Decompiled from source/2-asm-vm\bank16.asm sub $8CD9
// $8CD9 helm_iter_cd9
// (body @ $8CDE)

word helm_iter_cd9(word arg1, word arg2, word arg3, word arg4) {
    local11 = arg4;    // $8CDF
    local10 = (arg4 + arg3);    // $8CE2
    while (((unsigned)local11 < (unsigned)local10)) {    // $8D32
        local9 = ((*(byte*)(local11) * 19) + 0xAFD8);    // $8CEF
        if (!((record_field_byte((local9 + 17)) == arg1))) goto L_8D2F;    // $8CFA
        if (!((record_field_byte((local9 + 18)) == arg2))) goto L_8D2F;    // $8D07
        if (!((record_field_byte((local9 + 15)) == entity_table))) goto L_8D2F;    // $8D17
        if ((!((record_field_byte((local9 + 16)) != mem_6663)))) return (*(byte*)(local11) + 1);    // $8D28
        local11 = (local11 + 1);    // $8D31
    }
    return 0;    // $8D39
}

// Decompiled from source/2-asm-vm\bank16.asm sub $8D3A
// $8D3A helm_look_area
// (body @ $8D3F)

word helm_look_area(void) {
    local9 = 0;    // $8D40
    local11 = party_map_x;    // $8D44
    if (((unsigned)local11 > (unsigned)1)) {    // $8D48
    local10 = party_map_y;    // $8D4E
    if ((ui_shared_var_737d != 1)) goto L_8D62;    // $8D54
    if (((unsigned)local10 > (unsigned)0)) {    // $8D5A
    goto L_8D6A;    // $8D5F
L_8D62:
    if (((unsigned)local10 > (unsigned)8)) {    // $8D65
L_8D6A:
    if (((unsigned)local10 < (unsigned)14)) {    // $8D6B
    local9 = 1;    // $8D6F
    }
    }
    }
    }
L_8D70:
    if (local9) {    // $8D71
    }
L_8D7B:
    syscall_id12_syscall_set_chr_banks(5, 4);    // $8D77
    return local9;    // $8D7C
}

// Decompiled from source/2-asm-vm\bank16.asm sub $8D7D
// $8D7D helm_look_prompt
// (body @ $8D82)

word helm_look_prompt(void) {
    helm_look_area();    // $8D82
    return show_prompt_record();    // $8D88
}

// Decompiled from source/2-asm-vm\bank16.asm sub $8D89
// $8D89 helm_look
// (body @ $8D8E)

word helm_look(void) {
    local2 = 0;    // $8D8F
    local3 = 0;    // $8D90
    local0 = 13;    // $8D92
    local1 = 13;    // $8D93
    *(word*)(fp - 26) = 0x6662;    // $8D97
    local11 = scan_records_6662(*(byte*)(*(word*)(fp - 26)), *(byte*)((*(word*)(fp - 26) + 1)), (fp - 51));    // $8DAA
    local5 = helm_scan_ports(*(byte*)(*(word*)(fp - 26)), *(byte*)((*(word*)(fp - 26) + 1)), (fp - 121));    // $8DBC
    show_prompt_record();    // $8DBD
    if ((local11 != 1)) goto L_8DD3;    // $8DC3
    if (local5) goto L_8DD3;    // $8DC7
    draw_text(0x9878);    // $8DCD
    return 0;    // $8DD2
L_8DD3:
    local10 = *(byte*)((*(word*)(fp - 26) + 2));    // $8DD7
    local9 = *(byte*)((*(word*)(fp - 26) + 3));    // $8DDC
    *(word*)(fp - 30) = (*(word*)((*(word*)(fp - 26) + 11)) & 1);    // $8DE3
    if (*(word*)(fp - 30)) goto L_8E12;    // $8DE7
    local3 = (local10 ? (local10 - 1) : 0);    // $8DF4
    local2 = (local9 ? (local9 - 1) : 0);    // $8DFF
    local1 = max_s16((local10 + 1), 13);    // $8E08
    local0 = max_s16((local9 + 1), 13);    // $8E11
L_8E12:
    local4 = 0;    // $8E13
    local8 = 0;    // $8E14
L_8E15:
    if (!(local4)) goto L_8E30;    // $8E16
    if ((local8 != 1)) goto L_8E27;    // $8E1C
    show_message();    // $8E1F
    local8 = 0;    // $8E23
    goto L_8E30;    // $8E24
L_8E27:
L_8E30:
    (*(*(word*)(((*(word*)(fp - 30) << 1) + 0x9874))))();    // $8E2F
    local4 = 1;    // $8E31
    draw_text(0x988D);    // $8E35
    if (!(*(word*)(fp - 30))) goto L_8E51;    // $8E3B
    redraw_dialog_region();    // $8E3E
L_8E51:
    place_object_sprite(party_map_x, party_map_y, mem_666A);    // $8E4D
    local6 = helm_compare_pos(&local10, &local9, local3, local2, local1, local0);    // $8E61
    if ((local6 != 1)) goto L_8EFD;    // $8E65
    local11 = scan_records_6662(*(byte*)(*(word*)(fp - 26)), *(byte*)((*(word*)(fp - 26) + 1)), (fp - 51));    // $8E79
    local11 = helm_fill_row(local10, local9, local11, (fp - 51));    // $8E85
    if (!(local11)) goto L_8EED;    // $8E87
    (*(*(word*)(((*(word*)(fp - 30) << 1) + 0x9874))))();    // $8E92
    local7 = helm_look_fleets(local11, (fp - 51));    // $8E9C
    if ((local7 == 255)) goto L_8EE8;    // $8EA2
    if (local7) goto L_8EB6;    // $8EA6
    show_message();    // $8EA9
    draw_text(0x9899);    // $8EAF
    goto L_8EE8;    // $8EB3
L_8EB6:
    *(word*)(fp - 28) = 1;    // $8EB7
    helm_draw_fleets(local7);    // $8EBA
    goto L_8EE8;    // $8EBE
L_8EC1:
    (*(*(word*)(((*(word*)(fp - 30) << 1) + 0x9874))))();    // $8EC9
    draw_string(0x98AA, 0);    // $8ECE
    draw_string_banked((((local11 - 1) * 19) + 0xAFD8));    // $8EDC
L_8EE8:
    draw_string(0x98C8, 0);    // $8EE4
    local8 = 1;    // $8EE9
    goto L_8F03;    // $8EEA
L_8EED:
    local11 = helm_iter_cd9(local10, local9, local5, (fp - 121));    // $8EF8
    if (local11) goto L_8EC1;    // $8EFA
L_8EFD:
    if ((local6 != 2)) goto L_8E51;    // $8F00
L_8F03:
    if ((local6 != 2)) goto L_8E15;    // $8F06
    helm_set_chr();    // $8F09
    if (!(*(word*)(fp - 30))) goto L_8F24;    // $8F0E
    select_party_pose();    // $8F11
L_8F24:
    place_object_sprite(party_map_x, party_map_y, mem_666A);    // $8F20
    return 0;    // $8F25
}

// Decompiled from source/2-asm-vm\bank16.asm sub $8F26
// $8F26 helm_scan_f26
// (body @ $8F2B)

word helm_scan_f26(word arg1) {
    local4 = 0;    // $8F2C
    local8 = 0;    // $8F2E
    local9 = 0;    // $8F2F
    while (((unsigned)local8 < (unsigned)27)) {    // $8FAE
        local11 = ((local8 * 5) + 0xB50A);    // $8F3A
        local10 = ((local8 * 14) + 0x67B2);    // $8F42
        local6 = (*(byte*)((local10 + 11)) + 50);    // $8F48
        local5 = record_field_word((((record_field_byte(local11) * 88) + (arg1 << 1)) + 0xB888));    // $8F5F
        // ext_op ext_op_F1A9
        // ext_op ext_op_F263
        // ext_op ext_op_F1A9
        // ext_op ext_op_F26C
        // ext_op ext_op_EF81
        // ext_op sdiv32
        // ext_op ext_op_F1B3
        local5 = local5;    // $8F76
        local7 = record_field_byte((local11 + 1));    // $8F7E
        if ((local7 == arg1)) {    // $8F82
        // ext_op ext_op_F1A9
        // ext_op ext_op_F263
        // ext_op ext_op_F1A9
        // ext_op ext_op_F26C
        // ext_op ext_op_EF81
        // ext_op sdiv32
        // ext_op ext_op_F1B3
        local5 = ((*(word*)((local10 + 12)) / 2) + 1);    // $8FA0
        }
L_8FA1:
        if ((local5 > local4)) {    // $8FA4
        local4 = local5;    // $8FA8
        local9 = local8;    // $8FAA
        }
L_8FAB:
        local8 = (local8 + 1);    // $8FAD
    }
    return local9;    // $8FB6
}

// Decompiled from source/2-asm-vm\bank16.asm sub $8FB7
// $8FB7 helm_scan_records
// (body @ $8FBC)

word helm_scan_records(word arg1) {
    *(word*)(fp - 21) = scan_records_6c90_flag(0, (fp - 9));    // $8FC5
    *(word*)(fp - 11) = (fp - 9);    // $8FCA
    *(word*)(fp - 13) = ((fp - 9) + *(word*)(fp - 21));    // $8FCF
    *(word*)(fp - 15) = 0;    // $8FD2
    goto L_9021;    // $8FD4
L_8FD7:
    local11 = ((*(byte*)(*(word*)(fp - 11)) * 24) + 0x6AA4);    // $8FE1
    local10 = (local11 + 1);    // $8FE4
    *(word*)(fp - 23) = (local11 + 6);    // $8FE7
    *(word*)(fp - 25) = (*(word*)(fp - 23) + 10);    // $8FEC
    *(word*)(fp - 19) = 0;    // $8FEF
    goto L_9014;    // $8FF1
L_8FF4:
    if (*(word*)(*(word*)(fp - 23))) {    // $8FF7
    *(byte*)((arg1 + *(word*)(fp - 15))) = *(byte*)((local10 + *(word*)(fp - 19)));    // $9004
    *(word*)(fp - 15) = (*(word*)(fp - 15) + 1);    // $9008
    }
L_900A:
    *(word*)(fp - 19) = (*(word*)(fp - 19) + 1);    // $900D
    *(word*)(fp - 23) = (*(word*)(fp - 23) + 2);    // $9012
L_9014:
    if (((unsigned)*(word*)(fp - 23) < (unsigned)*(word*)(fp - 25))) goto L_8FF4;    // $9019
    *(word*)(fp - 11) = (*(word*)(fp - 11) + 1);    // $901F
L_9021:
    if (((unsigned)*(word*)(fp - 11) < (unsigned)*(word*)(fp - 13))) goto L_8FD7;    // $9026
    return *(word*)(fp - 15);    // $902B
}

// Decompiled from source/2-asm-vm\bank16.asm sub $902C
// $902C helm_tables_902c
// (body @ $9031)

word helm_tables_902c(word arg1) {
    local8 = 0x6A6E;    // $9034
    local10 = 0x6549;    // $9038
    local9 = (0x6549 + 140);    // $903C
    while (((unsigned)local10 < (unsigned)local9)) {    // $9060
        local11 = *(byte*)((local10 + 6));    // $9043
        if (!((*(byte*)((local8 + 1)) == arg1))) goto L_905A;    // $9049
        if ((local11 & 2)) goto L_905A;    // $904F
        if (!(!((local11 & 1)))) return 1;    // $9055
        local8 = (local8 + 2);    // $905C
        local10 = (local10 + 7);    // $905F
    }
    return 0;    // $9067
}

// Decompiled from source/2-asm-vm\bank16.asm sub $9068
// $9068 helm_loop_9068
// (body @ $906D)

word helm_loop_9068(void) {
    local11 = 0;    // $906E
    do {    // $906F
        local10 = load_operand16_14(27);    // $9075
        if (!(!(helm_tables_902c(local10)))) return local10;    // $907B
        local11 = (local11 + 1);    // $9082
    } while (((unsigned)local11 < (unsigned)30));    // $9087
    return 255;    // $908D
}

// Decompiled from source/2-asm-vm\bank16.asm sub $908E
// $908E helm_hail_fleet
// (body @ $9093)

word helm_hail_fleet(word arg1) {
    if (((unsigned)*(byte*)((((((unsigned)(arg1 - 1) / (unsigned)5) << 1) << 1) + 0x6FBE)) > (unsigned)39)) {    // $90A1
    phi_917d_0 = 0x98CD;    // $90AA
    show_message();    // $90A4
    } else {
    if (!(((unsigned)((unsigned)(arg1 - 1) % (unsigned)5) < (unsigned)3))) goto L_9142;    // $90B3
    *(word*)(fp - 27) = helm_scan_records((fp - 25));    // $90BE
    if (!(*(word*)(fp - 27))) goto L_9139;    // $90C2
    *(word*)(fp - 29) = *(byte*)((load_operand16_14(*(word*)(fp - 27)) + (fp - 25)));    // $90D2
    *(word*)(fp - 31) = helm_scan_f26(*(word*)(fp - 29));    // $90DA
    show_message();    // $90DC
    draw_string(0x98EC, 0);    // $90E3
    draw_string_banked(record_field_word(((*(word*)(fp - 29) << 1) + 0xBB49)));    // $90F4
    if (!(((*(word*)(fp - 29) == 4) || ((*(word*)(fp - 29) == 6) || (*(word*)(fp - 29) == 21))))) goto L_9115;    // $910B
    phi_9119_0 = 0x98EE;    // $9112
    phi_9119_1 = 0;    // $9112
    goto L_9119;    // $9112
L_9115:
    phi_9119_0 = 0x98F3;    // $9116
    phi_9119_1 = 0;    // $9116
L_9119:
    draw_string(phi_9119_0, phi_9119_1);    // $9119
    draw_string(0x98F7, 0);    // $9121
    phi_917d_0 = 0x9908;    // $9136
    draw_string_banked(((*(word*)(fp - 31) * 19) + 0xAFD8));    // $912F
    goto L_917D;    // $9136
L_9139:
    phi_917d_0 = 0x9909;    // $913F
    show_message();    // $9139
    goto L_917D;    // $913F
L_9142:
    *(word*)(fp - 31) = helm_loop_9068();    // $9145
    if (!((*(word*)(fp - 31) != 255))) goto L_9177;    // $914D
    show_message();    // $9150
    draw_string(0x9923, 0);    // $9157
    draw_string_banked(((*(word*)(fp - 31) * 19) + 0xAFD8));    // $9165
    phi_917d_0 = 0x994A;    // $9174
    draw_string(0x992D, 0);    // $916D
    goto L_917D;    // $9174
L_9177:
    phi_917d_0 = 0x994B;    // $917A
    }
L_917D:
    show_message();    // $9177
    return draw_text(phi_917d_0);    // $9181
    }
}

// Decompiled from source/2-asm-vm\bank16.asm sub $9182
// $9182 clear_npc_event
// (body @ $9187)

word clear_npc_event(word arg1) {
    local11 = (((arg1 - 1) * 51) + 0x6004);    // $9190
    *(byte*)((local11 + 4)) = 0;    // $9195
    *(byte*)((local11 + 5)) = 0;    // $919A
    *(word*)((local11 + 7)) = 0;    // $919F
    return 0;    // $91A0
}

// Decompiled from source/2-asm-vm\bank16.asm sub $91A1
// $91A1 helm_hail_suspicious
// (body @ $91A6)

word helm_hail_suspicious(word arg1) {
    if (((unsigned)mem_6B8C >= (unsigned)15)) {    // $91AB
    clear_npc_event(arg1);    // $91AF
    show_message();    // $91B3
    draw_string(0x995E, 0);    // $91BA
    phi_ret_91d0 = draw_text(0x9998);    // $91C5
    } else {
    mem_729E = arg1;    // $91C9
    mem_729D = 1;    // $91CD
    phi_ret_91d0 = 1;    // $91CD
    }
L_91D0:
    return phi_ret_91d0;    // $91D0
    }
}

// Decompiled from source/2-asm-vm\bank16.asm sub $91D1
// $91D1 helm_pick_fleet
// (body @ $91D6)

word helm_pick_fleet(void) {
    *(word*)(fp - 43) = 0x6662;    // $91D9
    show_prompt_record();    // $91DB
    *(word*)(fp - 23) = scan_records_6662(*(byte*)(*(word*)(fp - 43)), *(byte*)((*(word*)(fp - 43) + 1)), (fp - 21));    // $91EF
    if ((*(word*)(fp - 23) == 1)) {    // $91F5
    draw_text(0x9999);    // $91FB
    return 0;    // $9200
    }
L_9201:
    *(word*)(fp - 29) = 0;    // $9202
    *(word*)(fp - 25) = *(byte*)((*(word*)(fp - 43) + 2));    // $9208
    *(word*)(fp - 27) = *(byte*)((*(word*)(fp - 43) + 3));    // $920E
    if (*(word*)(fp - 25)) {    // $9212
    } else {
    }
L_921C:
    *(word*)(fp - 35) = 0;    // $921C
    if (*(word*)(fp - 27)) {    // $9220
    } else {
    }
L_922A:
    *(word*)(fp - 37) = 0;    // $922A
    *(word*)(fp - 39) = max_s16((*(word*)(fp - 25) + 1), 13);    // $9235
    *(word*)(fp - 41) = max_s16((*(word*)(fp - 27) + 1), 13);    // $9240
L_9242:
    if (*(word*)(fp - 29)) {    // $9244
    show_prompt_record();    // $9247
    *(word*)(fp - 29) = 0;    // $924B
    } else {
    }
L_9253:
    show_message();    // $9250
L_925A:
    draw_text(0x99B5);    // $9256
    *(word*)(fp - 33) = helm_compare_pos((fp - 25), (fp - 27), *(word*)(fp - 35), *(word*)(fp - 37), *(word*)(fp - 39), *(word*)(fp - 41));    // $926E
    if (!((*(word*)(fp - 33) == 1))) goto L_92EE;    // $9274
    *(word*)(fp - 23) = scan_records_6662(*(byte*)(*(word*)(fp - 43)), *(byte*)((*(word*)(fp - 43) + 1)), (fp - 21));    // $9288
    *(word*)(fp - 23) = helm_fill_row(*(word*)(fp - 25), *(word*)(fp - 27), *(word*)(fp - 23), (fp - 21));    // $9298
    if (!(*(word*)(fp - 23))) goto L_92EE;    // $929C
    *(word*)(fp - 31) = helm_look_fleets(*(word*)(fp - 23), (fp - 21));    // $92A9
    if (!((*(word*)(fp - 31) != 255))) goto L_92F5;    // $92B1
    if (*(word*)(fp - 31)) goto L_92C6;    // $92B6
    show_message();    // $92B9
    draw_text(0x99C2);    // $92BF
    goto L_92F5;    // $92C3
L_92C6:
    if (((unsigned)*(word*)(fp - 31) > (unsigned)15)) {    // $92CA
    helm_hail_suspicious(*(word*)(fp - 31));    // $92CF
    helm_set_chr();    // $92D3
    return 1;    // $92D7
    }
L_92D8:
    show_prompt_bc2b((*(word*)(fp - 31) + 20), 0);    // $92DE
    helm_hail_fleet(*(word*)(fp - 31));    // $92E4
    *(word*)(fp - 29) = 1;    // $92E9
    goto L_92F5;    // $92EB
L_92EE:
    if ((*(word*)(fp - 33) != 2)) goto L_925A;    // $92F2
L_92F5:
    if ((*(word*)(fp - 33) != 2)) goto L_9242;    // $92F9
    helm_set_chr();    // $92FC
    return 0;    // $9300
    }
    }
    }
}

// Decompiled from source/2-asm-vm\bank16.asm sub $9301
// $9301 helm_menu_9301
// (body @ $9306)

word helm_menu_9301(void) {
    local11 = draw_text_menu(0, 2, 0x99D3, 3, 3);    // $9311
    if (((local11 == 255))) return 0;    // $9317
    return (*(*(word*)(((local11 << 1) + 0x99D9))))();    // $9324
}

// Decompiled from source/2-asm-vm\bank16.asm sub $9325
// $9325 helm_iter_9325
// (body @ $932A)

word helm_iter_9325(word arg1, word arg2, word arg3, word arg4, word arg5, word arg6) {
    local11 = arg1;    // $932B
    local10 = (arg1 + arg2);    // $932E
    arg2 = 0;    // $9330
    while (((unsigned)local11 < (unsigned)local10)) {    // $936F
        local8 = ((*(byte*)(local11) << 4) + 0x6662);    // $933C
        if (*(byte*)(local11)) {    // $933F
        local9 = *(byte*)((local8 + 2));    // $9345
        if (((unsigned)*(byte*)((local8 + 2)) >= (unsigned)arg3)) {    // $9348
        if (((unsigned)local9 <= (unsigned)arg5)) {    // $934F
        local9 = *(byte*)((local8 + 3));    // $9355
        if (((unsigned)*(byte*)((local8 + 3)) >= (unsigned)arg4)) {    // $9358
        if (((unsigned)local9 <= (unsigned)arg6)) {    // $935F
        *(byte*)(arg1) = *(byte*)(local11);    // $9365
        arg1 = (arg1 + 1);    // $9368
        arg2 = (arg2 + 1);    // $936B
        }
        }
        }
        }
        }
L_936C:
        local11 = (local11 + 1);    // $936E
    }
    return arg2;    // $9376
}

// Decompiled from source/2-asm-vm\bank16.asm sub $9377
// $9377 helm_attack_fleet
// (body @ $937C)

word helm_attack_fleet(void) {
    *(word*)(fp - 47) = 0x6662;    // $937F
    *(word*)(fp - 25) = *(byte*)((*(word*)(fp - 47) + 2));    // $9385
    *(word*)(fp - 27) = *(byte*)((*(word*)(fp - 47) + 3));    // $938B
    if (*(word*)(fp - 25)) {    // $938F
    } else {
    }
L_9399:
    *(word*)(fp - 35) = 0;    // $9399
    if (*(word*)(fp - 27)) {    // $939D
    } else {
    }
L_93A7:
    *(word*)(fp - 37) = 0;    // $93A7
    *(word*)(fp - 39) = max_s16((*(word*)(fp - 25) + 1), 13);    // $93B2
    *(word*)(fp - 41) = max_s16((*(word*)(fp - 27) + 1), 13);    // $93BD
    show_prompt_record();    // $93BF
    if (((unsigned)mem_6B8C >= (unsigned)15)) {    // $93C7
    draw_text(0x9A16);    // $93CD
    return 0;    // $93D2
    }
L_93D3:
    *(word*)(fp - 23) = scan_records_6662(*(byte*)(*(word*)(fp - 47)), *(byte*)((*(word*)(fp - 47) + 1)), (fp - 21));    // $93E4
    *(word*)(fp - 23) = helm_iter_9325((fp - 21), *(word*)(fp - 23), *(word*)(fp - 35), *(word*)(fp - 37), *(word*)(fp - 39), *(word*)(fp - 41));    // $93F8
    if (*(word*)(fp - 23)) goto L_9408;    // $93FC
    draw_text(0x9A41);    // $9402
    return 0;    // $9407
L_9408:
    *(word*)(fp - 29) = 0;    // $9409
L_940B:
    show_message();    // $940B
    draw_text(0x9A5C);    // $9411
    *(word*)(fp - 33) = helm_compare_pos((fp - 25), (fp - 27), *(word*)(fp - 35), *(word*)(fp - 37), *(word*)(fp - 39), *(word*)(fp - 41));    // $9429
    if (!((*(word*)(fp - 33) == 1))) goto L_94D7;    // $942F
    *(word*)(fp - 23) = scan_records_6662(*(byte*)(*(word*)(fp - 47)), *(byte*)((*(word*)(fp - 47) + 1)), (fp - 21));    // $9443
    *(word*)(fp - 23) = helm_iter_9325((fp - 21), *(word*)(fp - 23), *(word*)(fp - 35), *(word*)(fp - 37), *(word*)(fp - 39), *(word*)(fp - 41));    // $9457
    *(word*)(fp - 23) = helm_fill_row(*(word*)(fp - 25), *(word*)(fp - 27), *(word*)(fp - 23), (fp - 21));    // $9467
    if (!(*(word*)(fp - 23))) goto L_94D7;    // $946B
    *(word*)(fp - 31) = helm_look_fleets(*(word*)(fp - 23), (fp - 21));    // $9478
    if (!((*(word*)(fp - 31) != 255))) goto L_94D7;    // $9480
    show_message();    // $9483
    *(word*)(fp - 45) = (((unsigned)(mem_6B99 & 9) >> 1) & 15);    // $9490
    *(word*)(fp - 43) = ((unsigned)(*(word*)(fp - 31) - 1) / (unsigned)5);    // $9497
    draw_string(0x9A69, 1);    // $949D
    if ((*(word*)(fp - 43) == 3)) {    // $94A5
    phi_94c2_0 = 0x9A75;    // $94AC
    phi_94c2_1 = 1;    // $94AC
    } else {
    *(word*)(fp - 43) = ((unsigned)((unsigned)(*(word*)(fp - 31) - 1) % (unsigned)5) / (unsigned)3);    // $94B6
    phi_94c2_0 = *(word*)(((*(word*)(fp - 43) << 1) + 0x99F8));    // $94C1
    phi_94c2_1 = 1;    // $94C1
    }
L_94C2:
    draw_string(phi_94c2_0, phi_94c2_1);    // $94C2
    if (!(prompt_confirm())) goto L_94DE;    // $94C9
    mem_729D = (*(word*)(fp - 31) + 1);    // $94CF
    helm_set_chr();    // $94D2
    return 1;    // $94D6
L_94D7:
    if ((*(word*)(fp - 33) != 2)) goto L_940B;    // $94DB
L_94DE:
    if ((*(word*)(fp - 33) != 2)) goto L_940B;    // $94E2
    helm_set_chr();    // $94E5
    return 0;    // $94E9
    }
    }
    }
}
