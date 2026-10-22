// Decompiled from source/2-asm-vm\bank23.asm sub $8003
// $8003 call_court_menu
// (body @ $8008)

word call_court_menu(void) {
    return court_menu();    // $8013
}

// Decompiled from source/2-asm-vm\bank23.asm sub $8014
// $8014 tavern_recruit_sailor
// (body @ $8019)

word tavern_recruit_sailor(void) {
    return event_recruit_sailor();    // $8024
}

// Decompiled from source/2-asm-vm\bank23.asm sub $8025
// $8025 call_quest_dialogue
// (body @ $802A)

word call_quest_dialogue(void) {
    return quest_pick();    // $8035
}

// Decompiled from source/2-asm-vm\bank23.asm sub $8036
// $8036 tavern_waitress
// (body @ $803B)

word tavern_waitress(void) {
    return event_waitress();    // $8046
}

// Decompiled from source/2-asm-vm\bank23.asm sub $8047
// $8047 tavern_quest_reward
// (body @ $804C)

word tavern_quest_reward(void) {
    return event_quest_reward();    // $8057
}

// Decompiled from source/2-asm-vm\bank23.asm sub $8058
// $8058 tavern_entry_menu
// (body @ $805D)

word tavern_entry_menu(void) {
    if (!(!(tavern_quest_reward()))) return 0;    // $8060
    idx_over_20(9);    // $8066
    audio_param_gated(1);    // $806B
    local9 = 0;    // $8070
    draw_box_variant(7, 1);    // $8073
    draw_window();    // $8077
    draw_text(0x922F);    // $807D
    *(byte*)&local10 = record_field_byte(((current_port * 5) + 0xB50D));    // $808F
    if ((*(byte*)&local10 != 255)) {    // $8099
    draw_box_variant(*(byte*)&local10, 2);    // $80A1
    draw_window();    // $80A5
    draw_string(*(word*)(((((unsigned)*(byte*)((*(byte*)&local10 + 0x652C)) / (unsigned)45) << 1) + 0x9198)), 1);    // $80BB
    }
L_80C4:
    scale_6b88(1);    // $80C0
    draw_box_from_native();    // $80C4
    win_render_syscall(1);    // $80C8
    draw_text(0x924C);    // $80CF
    draw_box_frame();    // $80D3
    *(byte*)(fp - 3) = draw_tile_grid(8, 21, 12, 2, 0x918C, 6, 3);    // $80E4
    if (!((*(byte*)(fp - 3) != 255))) goto L_8133;    // $80EE
    if (!((*(byte*)(fp - 3) == 5))) goto L_8125;    // $80F6
    *(byte*)(fp - 3) = (*(mem_918A))();    // $80FD
    if ((*(byte*)(fp - 3) != 255)) {    // $8107
    sprite_anim_frame = 255;    // $810D
    local9 = 1;    // $8111
    mem_729C = (*(byte*)(fp - 3) + 1);    // $8116
    local11 = 0;    // $811A
    } else {
    *(byte*)(fp - 3) = 0;    // $811F
    goto L_8133;    // $8122
L_8125:
    local9 = (local9 | (*(*(word*)(((*(byte*)(fp - 3) << 1) + 0x9180))))());    // $8132
L_8133:
    if (!((*(byte*)(fp - 3) == 255))) goto L_80C4;    // $813A
    }
L_813D:
    return local9;    // $813E
    }
}

// Decompiled from source/2-asm-vm\bank23.asm sub $813F
// $813F tavern_scan_state
// (body @ $8144)

word tavern_scan_state(word arg1) {
    local5 = 0;    // $8145
    local8 = 0;    // $8147
    local9 = 0;    // $8148
    while (((unsigned)local8 < (unsigned)27)) {    // $81C5
        local11 = ((local8 * 5) + 0xB50A);    // $8153
        local10 = ((local8 * 14) + 0x67B2);    // $815B
        local7 = (*(byte*)((local10 + 11)) + 50);    // $8161
        local6 = record_field_word((((record_field_byte(local11) * 88) + (arg1 << 1)) + 0xB888));    // $8178
        // ext_op ext_op_F1A9
        // ext_op ext_op_F263
        // ext_op ext_op_F1A9
        // ext_op ext_op_F26C
        // ext_op ext_op_EF81
        // ext_op sdiv32
        // ext_op ext_op_F1B3
        local6 = local6;    // $818F
        if ((record_field_byte((local11 + 1)) == arg1)) {    // $8199
        // ext_op ext_op_F1A9
        // ext_op ext_op_F263
        // ext_op ext_op_F1A9
        // ext_op ext_op_F26C
        // ext_op ext_op_EF81
        // ext_op sdiv32
        // ext_op ext_op_F1B3
        local6 = ((*(word*)((local10 + 12)) / 2) + 1);    // $81B7
        }
L_81B8:
        if ((local6 > local5)) {    // $81BB
        local5 = local6;    // $81BF
        local9 = local8;    // $81C1
        }
L_81C2:
        local8 = (local8 + 1);    // $81C4
    }
    return local9;    // $81CD
}

// Decompiled from source/2-asm-vm\bank23.asm sub $81CE
// $81CE tavern_scan_records
// (body @ $81D3)

word tavern_scan_records(word arg1) {
    *(word*)(fp - 17) = scan_records_6c90_flag(0, (fp - 9));    // $81DC
    *(word*)(fp - 11) = 0;    // $81DF
    goto L_8229;    // $81E2
L_81E5:
    local11 = ((*(byte*)((*(word*)(fp - 13) + (fp - 9))) * 24) + 0x6AA4);    // $81F5
    local10 = (local11 + 1);    // $81F8
    *(word*)(fp - 19) = (local11 + 6);    // $81FB
    *(word*)(fp - 15) = 0;    // $81FE
L_8200:
    if (*(word*)(((*(word*)(fp - 15) << 1) + *(word*)(fp - 19)))) {    // $8207
    *(byte*)((arg1 + *(word*)(fp - 11))) = *(byte*)((local10 + *(word*)(fp - 15)));    // $8214
    *(word*)(fp - 11) = (*(word*)(fp - 11) + 1);    // $8218
    }
L_821A:
    *(word*)(fp - 15) = (*(word*)(fp - 15) + 1);    // $821D
    if (((unsigned)*(word*)(fp - 15) < (unsigned)5)) goto L_8200;    // $8223
L_8229:
    *(word*)(fp - 13) = (*(word*)(fp - 13) + 1);    // $8229
    if (((unsigned)*(word*)(fp - 13) < (unsigned)*(word*)(fp - 17))) goto L_81E5;    // $8230
    return *(word*)(fp - 11);    // $8235
}

// Decompiled from source/2-asm-vm\bank23.asm sub $8236
// $8236 tavern_resolve_field
// (body @ $823B)

word tavern_resolve_field(word arg1) {
    local11 = compute_dad1(arg1);    // $8240
    return resolve_field_ptr(2, 21, local11, 1);    // $824A
}

// Decompiled from source/2-asm-vm\bank23.asm sub $824B
// $824B tavern_scan_ports
// (body @ $8250)

word tavern_scan_ports(word arg1) {
    local11 = 0xB50A;    // $8253
    local10 = 0;    // $8255
    do {    // $8256
        local9 = record_field_byte((local11 + 3));    // $825D
        if (((local9 == arg1))) return local10;    // $8261
        local11 = (local11 + 5);    // $8268
        local10 = (local10 + 1);    // $826B
    } while (((unsigned)local10 < (unsigned)50));    // $8270
    return 0;    // $8274
}

// Decompiled from source/2-asm-vm\bank23.asm sub $8275
// $8275 quest_flag_8
// (body @ $827A)

word quest_flag_8(void) {
    return (quest_flags & 8);    // $827F
}

// Decompiled from source/2-asm-vm\bank23.asm sub $8280
// $8280 quest_flag_2
// (body @ $8285)

word quest_flag_2(void) {
    return (quest_flags & 2);    // $828A
}

// Decompiled from source/2-asm-vm\bank23.asm sub $828B
// $828B quest_flag_1
// (body @ $8290)

word quest_flag_1(void) {
    return (quest_flags & 1);    // $8295
}

// Decompiled from source/2-asm-vm\bank23.asm sub $8296
// $8296 at_target_port
// (body @ $829B)

word at_target_port(void) {
    return (quest_target_port == current_port);    // $82A4
}

// Decompiled from source/2-asm-vm\bank23.asm sub $82A5
// $82A5 tavern_calc_port
// (body @ $82AA)

word tavern_calc_port(word arg1, word arg2) {
    local3 = ((arg1 * 5) + 0xB50A);    // $82B1
    local5 = (record_field_byte((local3 + 2)) * 50);    // $82BC
    local8 = record_field_byte((local3 + 1));    // $82C4
    local6 = *(word*)(((arg1 * 14) + 0x67B2));    // $82CD
    if ((local8 == 255)) goto L_82F0;    // $82D3
    if ((local8 != arg2)) goto L_82F0;    // $82D9
    if (!((local5 <= local6))) goto L_82F0;    // $82DF
    if (((quest_target_port != current_port))) return 1;    // $82EB
    local4 = ((record_field_byte(local3) * 88) + 0xB864);    // $82FC
    local11 = local4;    // $82FE
    local10 = (local4 + 9);    // $8301
    local9 = 0;    // $8303
    do {    // $8304
        local5 = (record_field_byte(local11) * 50);    // $830C
        if ((local5 == 255)) break;    // $8312
        local7 = record_field_byte(local10);    // $831A
        if ((local7 != arg2)) goto L_8329;    // $831E
        if (((local5 <= local6))) return 1;    // $8324
        local10 = (local10 + 1);    // $832B
        local11 = (local11 + 1);    // $832E
        local9 = (local9 + 1);    // $8331
    } while (((unsigned)local9 < (unsigned)9));    // $8335
L_8338:
    return 0;    // $8339
}

// Decompiled from source/2-asm-vm\bank23.asm sub $833A
// $833A tavern_recruit_greet
// (body @ $833F)

word tavern_recruit_greet(void) {
    if (load_operand16_14(2)) {    // $8344
    draw_string(0x9268, 0);    // $834B
    phi_8370_0 = 0x9271;    // $835A
    phi_8370_1 = 0;    // $835A
    draw_string_banked(mem_6542);    // $8352
    } else {
    draw_string(0x9280, 0);    // $8361
    phi_8370_0 = 0x929C;    // $836D
    phi_8370_1 = 0;    // $836D
    }
L_8370:
    draw_string_banked(mem_6542);    // $8368
    return draw_string(phi_8370_0, phi_8370_1);    // $8374
    }
}

// Decompiled from source/2-asm-vm\bank23.asm sub $8375
// $8375 tavern_recruit_stats
// (body @ $837A)

word tavern_recruit_stats(word arg1, word arg2) {
    local11 = ((unsigned)arg2 / (unsigned)18);    // $837E
    if (local11) {    // $8380
    phi_val_8393 = ((arg2 * 5) + -90);    // $8388
    } else {
    phi_val_8393 = (90 - (arg2 * 5));    // $8392
    }
L_8393:
    local9 = phi_val_8393;    // $8393
    local7 = ((unsigned)(arg1 + 38) % (unsigned)72);    // $839A
    local10 = ((unsigned)local7 / (unsigned)36);    // $839F
    local8 = ((local10 ? (72 - local7) : local7) * 5);    // $83AE
    return draw_field(0x92AF, *(word*)(((local11 << 1) + 0x929F)), local9, *(word*)(((local10 << 1) + 0x92A3)), local8);    // $83C8
    }
}

// Decompiled from source/2-asm-vm\bank23.asm sub $83C9
// $83C9 tavern_draw_port_name
// (body @ $83CE)

word tavern_draw_port_name(word arg1) {
    local11 = ((arg1 * 19) + 0xAFD8);    // $83D6
    draw_string_banked(local11);    // $83D8
    draw_string(0x92BD, 0);    // $83E0
    return tavern_recruit_stats(record_field_byte((local11 + 15)), record_field_byte((local11 + 16)));    // $83F9
}

// Decompiled from source/2-asm-vm\bank23.asm sub $83FA
// $83FA tavern_draw_name
// (body @ $83FF)

word tavern_draw_name(word arg1) {
    local11 = ((unsigned)(arg1 - 1) / (unsigned)5);    // $8403
    draw_string_banked(*(word*)((((arg1 + 20) * 7) + 0x6542)));    // $840F
    if ((local11 == 3)) {    // $8416
    phi_8424_0 = 0x92C2;    // $841D
    phi_8424_1 = 0;    // $841D
    } else {
    phi_8424_0 = 0x92C8;    // $8421
    phi_8424_1 = 0;    // $8421
    }
L_8424:
    draw_string(phi_8424_0, phi_8424_1);    // $8424
    return draw_string_banked(record_field_word(((local11 << 1) + 0xBB24)));    // $8438
    }
}

// Decompiled from source/2-asm-vm\bank23.asm sub $8439
// $8439 tavern_rumor_rival_loc
// (body @ $843E)

word tavern_rumor_rival_loc(word arg1) {
    draw_window();    // $843E
    draw_string(0x92CF, 0);    // $8445
    draw_string_banked(*(word*)((((arg1 + 20) * 7) + 0x6542)));    // $8454
    draw_string(0x92D1, 0);    // $845C
    local10 = (((arg1 - 1) * 51) + 0x6004);    // $8469
    if (!(load_operand16_14(4))) goto L_84DB;    // $846F
    local11 = *(byte*)((local10 + 5));    // $8475
    if (!(*(byte*)((local10 + 4)))) goto L_84C0;    // $8479
    if ((current_port == local11)) {    // $8481
    phi_8488_0 = 0x92DA;    // $8485
    phi_8488_1 = 0;    // $8485
L_8488:
    draw_string(phi_8488_0, phi_8488_1);    // $8488
    } else {
    local9 = ((local11 * 19) + 0xAFD8);    // $8497
    draw_string(0x92F6, 0);    // $849C
    draw_string_banked(local9);    // $84A1
    draw_string(0x930C, 0);    // $84A9
    phi_push_84f1 = record_field_byte((local9 + 15));    // $84BD
    goto L_84F1;    // $84BD
L_84C0:
    if (local11) goto L_84CB;    // $84C1
    phi_8488_0 = 0x9311;    // $84C8
    phi_8488_1 = 0;    // $84C8
    goto L_8488;    // $84C8
L_84CB:
    draw_string(0x932A, 0);    // $84CF
    tavern_draw_name(local11);    // $84D4
    goto L_84F6;    // $84D8
L_84DB:
    local8 = ((arg1 << 4) + 0x6662);    // $84E2
    draw_string(0x9336, 0);    // $84E7
    phi_push_84f1 = *(byte*)(local8);    // $84F0
L_84F1:
    }
L_84F6:
    tavern_recruit_stats(phi_push_84f1, *(byte*)((local8 + 1)));    // $84F2
    return win_close();    // $84F9
    }
}

// Decompiled from source/2-asm-vm\bank23.asm sub $84FA
// $84FA tavern_rumor_port_specialty
// (body @ $84FF)

word tavern_rumor_port_specialty(word arg1) {
    if (tavern_calc_port(current_port, arg1)) {    // $8508
    if ((current_port != quest_target_port)) {    // $8514
    draw_window();    // $8517
    draw_string(0x9353, 1);    // $851E
    return win_open();    // $8525
    }
    }
L_8526:
    local11 = 0;    // $8527
L_8528:
    local10 = (load_operand16_14(19) + current_port);    // $8534
    local10 = (local10 - max_s16(local10, 9));    // $853E
    if (((unsigned)local10 > (unsigned)50)) {    // $8543
    local10 = 50;    // $8548
    }
L_8549:
    if ((current_port == local10)) goto L_8528;    // $854E
    if (tavern_calc_port(local10, arg1)) {    // $8557
    if ((quest_target_port != local10)) {    // $855F
    draw_window();    // $8562
    draw_string(0x937A, 0);    // $8569
    tavern_draw_port_name(local10);    // $856E
    return win_close();    // $8575
    }
    }
L_8576:
    local11 = (local11 + 1);    // $8578
    if (((unsigned)local11 < (unsigned)20)) goto L_8528;    // $857D
    draw_window();    // $8580
    draw_string(0x93A4, 1);    // $8587
    return win_open();    // $858E
}

// Decompiled from source/2-asm-vm\bank23.asm sub $858F
// $858F tavern_quest_hook
// (body @ $8594)

word tavern_quest_hook(void) {
    if (quest_flag_1()) {    // $8597
    if (quest_flag_8()) goto L_85D7;    // $859D
    draw_window();    // $85A0
    tavern_recruit_greet();    // $85A3
    if (mem_7053) goto L_85BE;    // $85A9
    phi_85b7_0 = 0x93C4;    // $85B0
    phi_85b7_1 = 0;    // $85B0
    goto L_85B7;    // $85B0
L_85B3:
    phi_85b7_0 = 0x93EB;    // $85B4
    phi_85b7_1 = 0;    // $85B4
L_85B7:
    draw_string(phi_85b7_0, phi_85b7_1);    // $85B7
    goto L_85D4;    // $85BB
L_85BE:
    if (at_target_port()) goto L_85B3;    // $85C1
    draw_string(0x9412, 0);    // $85C8
L_85D4:
    tavern_draw_port_name(quest_target_port);    // $85D0
    }
L_85D7:
    win_close();    // $85D4
    if (quest_flag_1()) {    // $85DA
    if (quest_flag_8()) {    // $85E0
    if (sum_matching_6aa4(mem_7055)) goto L_861E;    // $85EB
    draw_window();    // $85EE
    draw_string(0x942F, 0);    // $85F5
    draw_string_banked(record_field_word(((mem_7055 << 1) + 0xBB49)));    // $8607
    draw_string(0x9456, 0);    // $860F
    win_close();    // $8613
    }
    }
L_861E:
    tavern_rumor_port_specialty(mem_7055);    // $861A
    phi_ret_8673 = quest_flag_1();    // $8621
    if (phi_ret_8673) {    // $8621
    phi_ret_8673 = quest_flag_8();    // $8627
    if (phi_ret_8673) {    // $8627
    phi_ret_8673 = sum_matching_6aa4(mem_7055);    // $8632
    if (phi_ret_8673) {    // $8632
    draw_window();    // $8635
    tavern_recruit_greet();    // $8638
    if (mem_7053) goto L_8653;    // $863E
    phi_864c_0 = 0x9462;    // $8645
    phi_864c_1 = 0;    // $8645
    goto L_864C;    // $8645
L_8648:
    phi_864c_0 = 0x947E;    // $8649
    phi_864c_1 = 0;    // $8649
L_864C:
    draw_string(phi_864c_0, phi_864c_1);    // $864C
    goto L_8670;    // $8650
L_8653:
    if (at_target_port()) goto L_8648;    // $8656
    draw_string(0x94A6, 0);    // $865D
L_8670:
    draw_string_banked(((quest_target_port * 19) + 0xAFD8));    // $866C
    phi_ret_8673 = win_close();    // $8670
    }
    }
    }
L_8673:
    return phi_ret_8673;    // $8673
}

// Decompiled from source/2-asm-vm\bank23.asm sub $8674
// $8674 tavern_rumor_intro
// (body @ $8679)

word tavern_rumor_intro(void) {
    draw_window();    // $8679
    draw_string(0x94C0, 0);    // $8680
    draw_string_banked(record_base_d604(31));    // $868B
    draw_string(0x94C6, 0);    // $8693
    tavern_draw_name(mem_705A);    // $869B
    return draw_string(0x94D2, 0);    // $86A7
}

// Decompiled from source/2-asm-vm\bank23.asm sub $86A8
// $86A8 tavern_hook_search
// (body @ $86AD)

word tavern_hook_search(void) {
    if (!(quest_flag_1())) goto L_86F0;    // $86B0
    if (quest_flag_8()) goto L_86F0;    // $86B6
    draw_window();    // $86B9
    tavern_recruit_greet();    // $86BC
    if (mem_7053) goto L_86D7;    // $86C2
    phi_86d0_0 = 0x9545;    // $86C9
    phi_86d0_1 = 0;    // $86C9
    goto L_86D0;    // $86C9
L_86CC:
    phi_86d0_0 = 0x956C;    // $86CD
    phi_86d0_1 = 0;    // $86CD
L_86D0:
    draw_string(phi_86d0_0, phi_86d0_1);    // $86D0
    goto L_86ED;    // $86D4
L_86D7:
    if (at_target_port()) goto L_86CC;    // $86DA
    draw_string(0x9594, 0);    // $86E1
L_86ED:
    tavern_draw_port_name(quest_target_port);    // $86E9
L_86F0:
    win_close();    // $86ED
    if (!(quest_flag_1())) goto L_8A0A;    // $86F3
    if (!(quest_flag_8())) goto L_8A0A;    // $86F9
    if ((mem_666F & 0x8000)) goto L_8A0A;    // $8703
    if (!((*(byte*)(player_char_record) == 9))) goto L_87B1;    // $870C
    if (!(mem_705A)) goto L_8720;    // $8712
    tavern_rumor_rival_loc(mem_705A);    // $8719
    goto L_8A0A;    // $871D
L_8720:
    draw_window();    // $8720
    draw_string(0x95B1, 1);    // $8727
    win_open();    // $872B
    draw_window();    // $872E
    local1 = 0x6662;    // $8734
    if (!((mem_705B == *(byte*)(local1)))) goto L_875A;    // $873D
    if (!((mem_705C == *(byte*)((local1 + 1))))) goto L_875A;    // $8749
L_8754:
    draw_string(0x95DA, 1);    // $8750
    win_open();    // $8754
    goto L_8A0A;    // $8757
L_875A:
    local6 = *(byte*)(local1);    // $875C
    local5 = *(byte*)((local1 + 1));    // $8760
    local8 = mem_705B;    // $8764
    local7 = mem_705C;    // $8768
    local3 = (31 - local6);    // $876D
    local6 = (local6 + local3);    // $8772
    local4 = (local8 + local3);    // $8776
    if ((local4 >= 0)) goto L_8783;    // $877A
    local4 = ((local8 + local3) + 71);    // $8782
L_8783:
    local8 = local4;    // $8784
    draw_field_m1(0x95FE, *(word*)(((*(byte*)(((((cmp_lt_neg1((local8 - local6)) + 1) * 3) + cmp_lt_neg1((local7 - local5))) + 0x94FF)) << 1) + 0x94EE)));    // $87AA
    goto L_8754;    // $87AE
L_87B1:
    if (!((*(byte*)(player_char_record) == 3))) goto L_8815;    // $87B7
    player_char_record = (player_char_record + 1);    // $87BE
    draw_window();    // $87C1
    draw_string(0x961E, 0);    // $87C8
    draw_string_banked(record_base_d604(31));    // $87D3
    draw_string(0x9637, 0);    // $87DB
    if (!(*(byte*)(player_char_record))) goto L_87F8;    // $87E3
    phi_val_8804 = record_field_word(((*(byte*)((player_char_record + 1)) << 1) + 0xA00C));    // $87F5
    goto L_8804;    // $87F5
L_87F8:
    phi_val_8804 = *(word*)(((*(byte*)((player_char_record + 1)) * 7) + 0x6542));    // $8803
L_8804:
    local11 = phi_val_8804;    // $8804
    phi_880e_0 = 0x963A;    // $880B
    phi_880e_1 = 0;    // $880B
L_880E:
    draw_string_banked(local11);    // $8806
    draw_string(phi_880e_0, phi_880e_1);    // $880E
    goto L_8A07;    // $8812
L_8815:
    if (!(*(byte*)(player_char_record))) goto L_8839;    // $8819
    local9 = tavern_scan_ports(*(byte*)((player_char_record + 1)));    // $8826
    phi_val_8852 = record_field_word(((*(byte*)((player_char_record + 1)) << 1) + 0xA00C));    // $8836
    goto L_8852;    // $8836
L_8839:
    local9 = *(byte*)((((*(byte*)((player_char_record + 1)) - 1) << 1) + 0x6A6F));    // $8845
    phi_val_8852 = *(word*)(((*(byte*)((player_char_record + 1)) * 7) + 0x6542));    // $8851
L_8852:
    local11 = phi_val_8852;    // $8852
    draw_window();    // $8853
    draw_string(0x9659, 0);    // $885A
    draw_string_banked(local11);    // $885F
    draw_string(0x9673, 0);    // $8867
    win_close();    // $886B
    draw_window();    // $886E
    if (!(*(byte*)(player_char_record))) goto L_888E;    // $8875
    if ((current_port != local9)) goto L_8887;    // $887D
    phi_880e_0 = 0x9679;    // $8884
    phi_880e_1 = 0;    // $8884
    goto L_880E;    // $8884
L_8887:
    phi_89fe_0 = 0x96BE;    // $888B
    phi_89fe_1 = 0;    // $888B
    goto L_89FE;    // $888B
L_888E:
    if ((current_port != local9)) goto L_89FA;    // $8893
    draw_text(0x96EA);    // $8899
    draw_box_variant(*(byte*)((player_char_record + 1)), 0);    // $88A4
    if (!(*(byte*)((((*(byte*)((player_char_record + 1)) - 1) << 1) + 0x6A6E)))) goto L_8948;    // $88B4
    draw_window();    // $88B7
    draw_string(0x9712, 1);    // $88BE
    win_open();    // $88C2
    if (!((*(byte*)((player_char_record + 2)) == 9))) goto L_88F2;    // $88CC
    if (!(mem_705A)) goto L_88DB;    // $88D2
L_88D5:
    tavern_rumor_intro();    // $88D5
    goto L_8929;    // $88D8
L_88DB:
    phi_88e2_0 = 0x9749;    // $88DF
    phi_88e2_1 = 0;    // $88DF
L_88E2:
    draw_window();    // $88DB
    draw_string(phi_88e2_0, phi_88e2_1);    // $88E2
    quest_flags = (quest_flags | 4);    // $88EC
    goto L_8929;    // $88EF
L_88F2:
    draw_window();    // $88F2
    draw_string(0x9793, 0);    // $88F9
    if (!(*(byte*)((player_char_record + 2)))) goto L_8917;    // $8902
    phi_val_8923 = record_field_word(((*(byte*)((player_char_record + 3)) << 1) + 0xA00C));    // $8914
    goto L_8923;    // $8914
L_8917:
    phi_val_8923 = *(word*)(((*(byte*)((player_char_record + 3)) * 7) + 0x6542));    // $8922
L_8923:
    local10 = phi_val_8923;    // $8923
L_8929:
    draw_string_banked(local10);    // $8925
    *(byte*)(((*(byte*)((player_char_record + 1)) * 7) + 0x6548)) = (*(byte*)(((*(byte*)((player_char_record + 1)) * 7) + 0x6548)) & 253);    // $893B
    player_char_record = (player_char_record + 2);    // $8942
    goto L_8A07;    // $8945
L_8948:
    draw_window();    // $8948
    draw_string(0x97C4, 1);    // $894F
    win_open();    // $8953
    if (!((*(byte*)((player_char_record + 2)) == 9))) goto L_89B8;    // $895D
    if (mem_705A) goto L_88D5;    // $8963
    if (!(load_operand16_14(2))) goto L_89AE;    // $896B
    local2 = max_s16(mem_666B, ((load_operand16_14(5) + 1) * 100));    // $897F
    draw_window();    // $8980
    draw_field_m1(0x97F0, local2);    // $8987
    if (!(prompt_confirm())) goto L_89A4;    // $898E
    draw_window();    // $8991
    mem_666B = (mem_666B - local2);    // $899A
    phi_88e2_0 = 0x9822;    // $89A1
    phi_88e2_1 = 0;    // $89A1
    goto L_88E2;    // $89A1
L_89A4:
    phi_880e_0 = 0x9847;    // $89AB
    phi_880e_1 = 0;    // $89AB
    draw_window();    // $89A4
    goto L_880E;    // $89AB
L_89AE:
    phi_880e_0 = 0x985F;    // $89B5
    phi_880e_1 = 0;    // $89B5
    draw_window();    // $89AE
    goto L_880E;    // $89B5
L_89B8:
    draw_window();    // $89B8
    draw_string(0x98AA, 0);    // $89BF
    if (!(*(byte*)((player_char_record + 2)))) goto L_89DD;    // $89C8
    phi_val_89e9 = record_field_word(((*(byte*)((player_char_record + 3)) << 1) + 0xA00C));    // $89DA
    goto L_89E9;    // $89DA
L_89DD:
    phi_val_89e9 = *(word*)(((*(byte*)((player_char_record + 3)) * 7) + 0x6542));    // $89E8
L_89E9:
    local10 = phi_val_89e9;    // $89E9
    draw_string_banked(local10);    // $89EB
    draw_string(0x98C7, 0);    // $89F3
    goto L_8929;    // $89F7
L_89FA:
    phi_89fe_0 = 0x98D4;    // $89FB
    phi_89fe_1 = 0;    // $89FB
L_89FE:
    draw_string(phi_89fe_0, phi_89fe_1);    // $89FE
L_8A07:
    tavern_draw_port_name(local9);    // $8A03
L_8A0A:
    win_close();    // $8A07
    phi_ret_8a62 = quest_flag_1();    // $8A0D
    if (!(phi_ret_8a62)) goto L_8A62;    // $8A0D
    phi_ret_8a62 = quest_flag_8();    // $8A13
    if (!(phi_ret_8a62)) goto L_8A62;    // $8A13
    phi_ret_8a62 = (mem_666F & 0x8000);    // $8A1D
    if (!(phi_ret_8a62)) goto L_8A62;    // $8A1D
    draw_window();    // $8A20
    tavern_recruit_greet();    // $8A23
    if (mem_7053) goto L_8A33;    // $8A29
    phi_8a5b_0 = 0x98FB;    // $8A30
    phi_8a5b_1 = 0;    // $8A30
    goto L_8A5B;    // $8A30
L_8A33:
    if (!(at_target_port())) goto L_8A40;    // $8A36
    phi_8a5b_0 = 0x9917;    // $8A3D
    phi_8a5b_1 = 0;    // $8A3D
    goto L_8A5B;    // $8A3D
L_8A40:
    draw_string(0x9939, 0);    // $8A44
    phi_8a5b_0 = 0x994E;    // $8A58
    phi_8a5b_1 = 0;    // $8A58
L_8A5B:
    draw_string_banked(((quest_target_port * 19) + 0xAFD8));    // $8A53
    draw_string(phi_8a5b_0, phi_8a5b_1);    // $8A5B
    phi_ret_8a62 = win_close();    // $8A5F
L_8A62:
    return phi_ret_8a62;    // $8A62
}

// Decompiled from source/2-asm-vm\bank23.asm sub $8A63
// $8A63 tavern_quest_hook_b
// (body @ $8A68)

word tavern_quest_hook_b(void) {
    if (!(quest_flag_1())) goto L_8AAB;    // $8A6B
    if (quest_flag_8()) goto L_8AAB;    // $8A71
    draw_window();    // $8A74
    tavern_recruit_greet();    // $8A77
    if (mem_7053) goto L_8A92;    // $8A7D
    phi_8a8b_0 = 0x9961;    // $8A84
    phi_8a8b_1 = 0;    // $8A84
    goto L_8A8B;    // $8A84
L_8A87:
    phi_8a8b_0 = 0x997D;    // $8A88
    phi_8a8b_1 = 0;    // $8A88
L_8A8B:
    draw_string(phi_8a8b_0, phi_8a8b_1);    // $8A8B
    goto L_8AA8;    // $8A8F
L_8A92:
    if (at_target_port()) goto L_8A87;    // $8A95
    draw_string(0x999F, 0);    // $8A9C
L_8AA8:
    tavern_draw_port_name(quest_target_port);    // $8AA4
L_8AAB:
    win_close();    // $8AA8
    if (!(quest_flag_1())) goto L_8AC5;    // $8AAE
    if (!(quest_flag_8())) goto L_8AC5;    // $8AB4
    if (quest_flag_2()) goto L_8AC5;    // $8ABA
L_8AC5:
    tavern_rumor_rival_loc(mem_7055);    // $8AC1
    phi_ret_8b19 = quest_flag_1();    // $8AC8
    if (!(phi_ret_8b19)) goto L_8B19;    // $8AC8
    phi_ret_8b19 = quest_flag_8();    // $8ACE
    if (!(phi_ret_8b19)) goto L_8B19;    // $8ACE
    phi_ret_8b19 = quest_flag_2();    // $8AD4
    if (!(phi_ret_8b19)) goto L_8B19;    // $8AD4
    draw_window();    // $8AD7
    tavern_recruit_greet();    // $8ADA
    if (mem_7053) goto L_8AEA;    // $8AE0
    phi_8b12_0 = 0x99BC;    // $8AE7
    phi_8b12_1 = 0;    // $8AE7
    goto L_8B12;    // $8AE7
L_8AEA:
    if (!(at_target_port())) goto L_8AF7;    // $8AED
    phi_8b12_0 = 0x99D6;    // $8AF4
    phi_8b12_1 = 0;    // $8AF4
    goto L_8B12;    // $8AF4
L_8AF7:
    draw_string(0x99F8, 0);    // $8AFB
    phi_8b12_0 = 0x9A0B;    // $8B0F
    phi_8b12_1 = 0;    // $8B0F
L_8B12:
    draw_string_banked(((quest_target_port * 19) + 0xAFD8));    // $8B0A
    draw_string(phi_8b12_0, phi_8b12_1);    // $8B12
    phi_ret_8b19 = win_close();    // $8B16
L_8B19:
    return phi_ret_8b19;    // $8B19
}

// Decompiled from source/2-asm-vm\bank23.asm sub $8B1A
// $8B1A tavern_hook_king
// (body @ $8B1F)

word tavern_hook_king(void) {
    if (!(quest_flag_1())) goto L_8B3C;    // $8B22
    if (quest_flag_8()) goto L_8B3C;    // $8B28
    draw_window();    // $8B2B
    tavern_recruit_greet();    // $8B2E
    draw_string(0x9A21, 0);    // $8B35
L_8B3C:
    win_close();    // $8B39
    if (!(quest_flag_1())) goto L_8B95;    // $8B3F
    if (!(quest_flag_8())) goto L_8B95;    // $8B45
    if (quest_flag_2()) goto L_8B95;    // $8B4B
    if (!((*(byte*)(player_char_record) == 3))) goto L_8B8D;    // $8B54
    player_char_record = (player_char_record + 1);    // $8B5B
    draw_window();    // $8B5E
    draw_string(0x9A49, 1);    // $8B65
    win_open();    // $8B69
    draw_window();    // $8B6C
    draw_string(0x9A83, 0);    // $8B73
    tavern_draw_name(mem_7055);    // $8B7B
    draw_string(0x9A9D, 0);    // $8B83
    win_close();    // $8B87
    goto L_8B95;    // $8B8A
L_8B8D:
L_8B95:
    tavern_rumor_rival_loc(mem_7055);    // $8B91
    phi_ret_8bb8 = quest_flag_1();    // $8B98
    if (!(phi_ret_8bb8)) goto L_8BB8;    // $8B98
    phi_ret_8bb8 = quest_flag_8();    // $8B9E
    if (!(phi_ret_8bb8)) goto L_8BB8;    // $8B9E
    phi_ret_8bb8 = quest_flag_2();    // $8BA4
    if (!(phi_ret_8bb8)) goto L_8BB8;    // $8BA4
    draw_window();    // $8BA7
    tavern_recruit_greet();    // $8BAA
    draw_string(0x9AAD, 0);    // $8BB1
    phi_ret_8bb8 = win_close();    // $8BB5
L_8BB8:
    return phi_ret_8bb8;    // $8BB8
}

// Decompiled from source/2-asm-vm\bank23.asm sub $8BB9
// $8BB9 tavern_hook_king_b
// (body @ $8BBE)

word tavern_hook_king_b(void) {
    if (!(quest_flag_1())) goto L_8BDB;    // $8BC1
    if (quest_flag_8()) goto L_8BDB;    // $8BC7
    draw_window();    // $8BCA
    tavern_recruit_greet();    // $8BCD
    draw_string(0x9AC9, 0);    // $8BD4
L_8BDB:
    win_close();    // $8BD8
    if (!(quest_flag_1())) goto L_8C32;    // $8BDE
    if (!(quest_flag_8())) goto L_8C32;    // $8BE4
    if (quest_flag_2()) goto L_8C32;    // $8BEA
    draw_window();    // $8BED
    if ((mem_7055 == current_port)) goto L_8C24;    // $8BF9
    draw_string(0x9AF1, 0);    // $8C00
    draw_string_banked(record_field_word(((mem_7055 << 1) + 0xBB24)));    // $8C12
    draw_string(0x9B0D, 0);    // $8C1A
    win_close();    // $8C1E
    goto L_8C32;    // $8C21
L_8C24:
    draw_window();    // $8C24
    draw_string(0x9B2B, 1);    // $8C2B
L_8C32:
    win_open();    // $8C2F
    phi_ret_8c55 = quest_flag_1();    // $8C35
    if (!(phi_ret_8c55)) goto L_8C55;    // $8C35
    phi_ret_8c55 = quest_flag_8();    // $8C3B
    if (!(phi_ret_8c55)) goto L_8C55;    // $8C3B
    phi_ret_8c55 = quest_flag_2();    // $8C41
    if (!(phi_ret_8c55)) goto L_8C55;    // $8C41
    draw_window();    // $8C44
    tavern_recruit_greet();    // $8C47
    draw_string(0x9B53, 0);    // $8C4E
    phi_ret_8c55 = win_close();    // $8C52
L_8C55:
    return phi_ret_8c55;    // $8C55
}

// Decompiled from source/2-asm-vm\bank23.asm sub $8C56
// $8C56 tavern_dispatch_event
// (body @ $8C5B)

word tavern_dispatch_event(void) {
    tavern_resolve_field(load_operand16_14(3));    // $8C61
    switch (mem_7054) {    // $8C68
    case 0:
    default:
L_8C7C:
        return tavern_quest_hook();    // $8C7C
    case 1:
        tavern_hook_king_b();    // $8C7D
        goto L_8C7C;    // $8C80
    case 2:
        tavern_quest_hook_b();    // $8C83
        goto L_8C7C;    // $8C86
    case 3:
        tavern_hook_search();    // $8C89
        goto L_8C7C;    // $8C8C
    case 4:
        tavern_hook_king();    // $8C8F
        goto L_8C7C;    // $8C92
    }
}

// Decompiled from source/2-asm-vm\bank23.asm sub $8C95
// $8C95 tavern_rumor_trade
// (body @ $8C9A)

word tavern_rumor_trade(void) {
    if (load_operand16_14(10)) goto L_8D14;    // $8C9F
    tavern_resolve_field(load_operand16_14(3));    // $8CA8
    *(word*)(fp - 35) = tavern_scan_records((fp - 27));    // $8CB4
    if (!(*(word*)(fp - 35))) goto L_8CCB;    // $8CB8
    goto L_8CD1;    // $8CC8
L_8CCB:
L_8CD1:
    *(word*)(fp - 29) = load_operand16_14(26);    // $8CD1
    *(word*)(fp - 31) = tavern_scan_state(*(word*)(fp - 29));    // $8CD9
    *(word*)(fp - 37) = ((*(word*)(fp - 31) * 19) + 0xAFD8);    // $8CE4
    draw_window();    // $8CE6
    draw_string(0x9B7A, 0);    // $8CED
    tavern_draw_port_name(*(word*)(fp - 31));    // $8CF3
    draw_string(0x9B83, 0);    // $8CFB
    draw_string_banked(record_field_word(((*(word*)(fp - 29) << 1) + 0xBB49)));    // $8D0C
    return win_close();    // $8D13
L_8D14:
    if (!(load_operand16_14(6))) goto L_8E1C;    // $8D19
L_8D26:
    tavern_resolve_field(load_operand16_14(3));    // $8D22
    *(word*)(fp - 31) = ((load_operand16_14(5) + current_port) + -2);    // $8D33
    if ((current_port == *(word*)(fp - 31))) goto L_8D4D;    // $8D3B
    if (!(((unsigned)*(word*)(fp - 31) >= (unsigned)0))) goto L_8D26;    // $8D42
    if (!(((unsigned)*(word*)(fp - 31) < (unsigned)50))) goto L_8D26;    // $8D4A
L_8D4D:
    local11 = ((*(word*)(fp - 31) * 19) + 0xAFD8);    // $8D56
    draw_window();    // $8D57
    *(word*)(fp - 39) = ((*(word*)(fp - 31) * 5) + 0xB50A);    // $8D62
    if (!((*(byte*)((*(word*)(fp - 31) + 0x6F76)) & 8))) goto L_8DD8;    // $8D6D
    *(word*)(fp - 33) = record_field_byte((*(word*)(fp - 39) + 1));    // $8D78
    draw_string(0x9BA2, 0);    // $8D7E
    draw_string_banked(local11);    // $8D83
    if (!((*(word*)(fp - 33) == 255))) goto L_8D9B;    // $8D8D
    phi_8d94_0 = 0x9BB7;    // $8D91
    phi_8d94_1 = 0;    // $8D91
L_8D94:
    draw_string(phi_8d94_0, phi_8d94_1);    // $8D94
    goto L_8E18;    // $8D98
L_8D9B:
    if (!(((record_field_byte((*(word*)(fp - 39) + 2)) * 50) <= *(word*)(((*(word*)(fp - 31) * 14) + 0x67B2))))) goto L_8DD1;    // $8DB2
    draw_string(0x9BDB, 0);    // $8DB9
L_8DC3:
    draw_string_banked(record_field_word(((*(word*)(fp - 33) << 1) + 0xBB49)));    // $8DCA
    goto L_8E18;    // $8DCE
L_8DD1:
    phi_8d94_0 = 0x9BF4;    // $8DD5
    phi_8d94_1 = 0;    // $8DD5
    goto L_8D94;    // $8DD5
L_8DD8:
    *(word*)(fp - 37) = ((*(word*)(fp - 31) * 19) + 0xAFD8);    // $8DE1
    draw_string(0x9C23, 0);    // $8DE7
    draw_string_banked(((*(word*)(fp - 31) * 19) + 0xAFD8));    // $8DF5
    draw_string(0x9C3E, 0);    // $8DFD
L_8E18:
    tavern_recruit_stats(record_field_byte((*(word*)(fp - 37) + 15)), record_field_byte((*(word*)(fp - 37) + 16)));    // $8E14
    phi_ret_8e1b = win_close();    // $8E18
L_8E1B:
    return phi_ret_8e1b;    // $8E1B
L_8E1C:
    tavern_resolve_field(3);    // $8E1D
    *(word*)(fp - 29) = mem_6FCB;    // $8E24
    draw_window();    // $8E26
    switch (*(word*)(fp - 29)) {    // $8E2B
        case 0: goto L_8E3A;    // $8E2B
        case 1: goto L_8E3A;    // $8E2B
        case 2: goto L_8E3A;    // $8E2B
        case 3: goto L_8E4B;    // $8E2B
        default: goto L_8E59;    // $8E2B
    }    // $8E2B
L_8E3A:
    draw_string(0x9C44, 0);    // $8E3E
    goto L_8DC3;    // $8E48
L_8E4B:
    phi_8e4f_0 = 0x9C7B;    // $8E4C
    phi_8e4f_1 = 1;    // $8E4C
L_8E4F:
    draw_string(phi_8e4f_0, phi_8e4f_1);    // $8E4F
    phi_ret_8e1b = win_open();    // $8E56
    goto L_8E1B;    // $8E56
L_8E59:
    phi_8e4f_0 = 0x9CAA;    // $8E5D
    phi_8e4f_1 = 1;    // $8E5D
    goto L_8E4F;    // $8E5D
}

// Decompiled from source/2-asm-vm\bank23.asm sub $8E60
// $8E60 tavern_stay_gather_info
// (body @ $8E65)

word tavern_stay_gather_info(void) {
    if (((unsigned)mem_666B < (unsigned)100)) {    // $8E6B
    draw_box_from_native();    // $8E6E
    draw_window();    // $8E71
    draw_text(0x9CD6);    // $8E77
    return 0;    // $8E7C
    }
L_8E7D:
    draw_box_variant(0, 0);    // $8E7F
    draw_window();    // $8E83
    draw_text(0x9CF4);    // $8E89
    local10 = *(word*)(((current_port * 14) + 0x67B2));    // $8E97
    local11 = (((*(byte*)(((current_port * 14) + 0x67BD)) + 50) / 10) * ((local10 / 0x012C) + 1));    // $8EAF
    draw_box_variant(7, 1);    // $8EB2
    draw_window();    // $8EB6
    draw_field_m1(0x9D1F, local11);    // $8EBD
    scale_6b88(1);    // $8EC2
    mem_666B = (mem_666B - local11);    // $8ECC
    draw_box_from_native();    // $8ECF
    if (((unsigned)load_operand16_14(0x03E8) > (unsigned)(local10 + 300))) {    // $8EE0
    draw_window();    // $8EE3
    draw_text(0x9D59);    // $8EE9
    return 1;    // $8EEE
    }
L_8EEF:
    draw_window();    // $8EEF
    draw_text(0x9D81);    // $8EF5
    if ((quest_flags & 1)) {    // $8EFE
    if (!(load_operand16_14(4))) goto L_8F0F;    // $8F06
    tavern_dispatch_event();    // $8F09
    } else {
    }
L_8F12:
    tavern_rumor_trade();    // $8F0F
    return 1;    // $8F13
    }
}

// Decompiled from source/2-asm-vm\bank23.asm sub $8F14
// $8F14 draw_tavern_box
// (body @ $8F19)

word draw_tavern_box(void) {
    return draw_box_variant(8, 1);    // $8F1F
}

// Decompiled from source/2-asm-vm\bank23.asm sub $8F20
// $8F20 tavern_crew_roster
// (body @ $8F25)

word tavern_crew_roster(word arg1, word arg2, word arg3) {
    syscall_id09_syscall_banked_blit_m3(2, 6, 28, 14, 0xB51A, 0xB6A2, 231);    // $8F34
    mem_7064 = -1;    // $8F3A
    set_draw_origin(6, 8);    // $8F3F
    draw_string(0x9DB0, 0);    // $8F47
    syscall_id08_syscall_queue_ppu_transfer(15, 10, 1, 9, 250, 0);    // $8F54
    while (((unsigned)*(byte*)(fp - 1) < (unsigned)*(byte*)&arg1)) {    // $8F96
        set_draw_origin(((((unsigned)*(byte*)(fp - 1) / (unsigned)5) * 13) + 4), ((((unsigned)*(byte*)(fp - 1) % (unsigned)5) << 1) + 10));    // $8F6D
        *(word*)(((*(byte*)(fp - 1) << 1) + arg3)) = *(word*)(((*(byte*)((*(byte*)(fp - 1) + arg2)) * 7) + 0x6542));    // $8F85
        draw_string_banked(*(word*)(((*(byte*)(fp - 1) << 1) + arg3)));    // $8F8E
        *(byte*)(fp - 1) = (*(byte*)(fp - 1) + 1);    // $8F96
    }
    return ((unsigned)*(byte*)(fp - 1) < (unsigned)*(byte*)&arg1);    // $8FA5
}

// Decompiled from source/2-asm-vm\bank23.asm sub $8FA6
// $8FA6 tavern_dismiss_confirm
// (body @ $8FAB)

word tavern_dismiss_confirm(word arg1, word arg2) {
    draw_tavern_box();    // $8FAB
    win_render_syscall(1);    // $8FAF
    draw_string(0x9DC4, 0);    // $8FB7
    draw_string_banked(arg2);    // $8FBC
    set_draw_origin(8, 25);    // $8FC3
    local11 = prompt_confirm();    // $8FCA
    if (local11) {    // $8FCC
    local10 = 0x6A9A;    // $8FD2
    goto L_8FF1;    // $8FD4
L_8FD7:
    if ((*(byte*)(local10) == *(byte*)&arg1)) {    // $8FDF
    *(byte*)(local10) = 255;    // $8FE6
    } else {
    local10 = (local10 + 1);    // $8FEC
L_8FF1:
    *(byte*)(fp - 7) = (*(byte*)(fp - 7) + 1);    // $8FF1
    if (!(((unsigned)*(byte*)(fp - 7) < (unsigned)10))) goto L_9005;    // $8FF9
    if ((*(byte*)(local10) != 255)) goto L_8FD7;    // $9002
    }
L_9005:
    local10 = 0x6A9A;    // $9008
    local9 = 0x6A9A;    // $9009
    *(byte*)(fp - 7) = 0;    // $900B
    *(byte*)&local8 = 0;    // $900E
    while (((unsigned)*(byte*)(fp - 7) < (unsigned)10)) {    // $9035
        if ((*(byte*)(local10) != 255)) {    // $901A
        *(byte*)(local9) = *(byte*)(local10);    // $9020
        local9 = (local9 + 1);    // $9023
        *(byte*)&local8 = (*(byte*)&local8 + 1);    // $9028
        }
L_902B:
        local10 = (local10 + 1);    // $902D
        *(byte*)(fp - 7) = (*(byte*)(fp - 7) + 1);    // $9032
    }
    *(byte*)(fp - 7) = *(byte*)&local8;    // $9040
    while (((unsigned)*(byte*)(fp - 7) < (unsigned)10)) {    // $9055
        *(byte*)(local9) = 255;    // $904A
        *(byte*)(fp - 7) = (*(byte*)(fp - 7) + 1);    // $904F
        local9 = (local9 + 1);    // $9054
    }
    *(byte*)((((*(byte*)&arg1 - 1) << 1) + 0x6A6F)) = current_port;    // $906A
L_906B:
    return local11;    // $906C
    }
    }
}

// Decompiled from source/2-asm-vm\bank23.asm sub $906D
// $906D tavern_dismiss_crew
// (body @ $9072)

word tavern_dismiss_crew(void) {
    *(byte*)(fp - 63) = record_iter_6a9a(&local6);    // $907A
    *(byte*)(fp - 64) = search_6a9a_b(&local1);    // $9085
    if (*(byte*)(fp - 63)) goto L_909F;    // $908B
    draw_tavern_box();    // $908E
    win_render_syscall(1);    // $9092
    draw_text(0x9DD7);    // $9099
    return 0;    // $909E
L_909F:
    if (!((*(byte*)(fp - 63) == *(byte*)(fp - 64)))) goto L_90BC;    // $90A8
    draw_tavern_box();    // $90AB
    win_render_syscall(1);    // $90AF
    draw_text(0x9DFC);    // $90B6
    return 0;    // $90BB
L_90BC:
    blit_alloc_tiles(2, 2, 28, 18, 0);    // $90C3
    tavern_crew_roster(*(byte*)(fp - 63), &local6, (fp - 62));    // $90D3
    mem_7063 = 240;    // $90DA
L_90DD:
    *(word*)(fp - 66) = 0;    // $90DE
    draw_tavern_box();    // $90E0
    draw_window();    // $90E3
    draw_string(0x9E18, 1);    // $90EA
    local11 = menu_pick(0x9E31, *(byte*)(fp - 63), 3, 10, 13, 2, 5, 1);    // $90FF
    if ((local11 == 1)) goto L_9165;    // $9104
    local11 = (local11 - 1);    // $9109
    if (!((record_scan_6c90_6aa4(*(byte*)((local11 + &local6))) == record_scan_6c90_6aa4(0)))) goto L_913E;    // $911F
    *(word*)(fp - 66) = tavern_dismiss_confirm(*(byte*)((local11 + &local6)), *(word*)(((local11 << 1) + (fp - 62))));    // $9139
    goto L_9165;    // $913B
L_913E:
    draw_tavern_box();    // $913E
    draw_window();    // $9141
    draw_string(0x9E32, 0);    // $9148
    draw_string_banked(*(word*)(((local11 << 1) + (fp - 62))));    // $9156
    draw_string(0x9E46, 0);    // $915E
L_9165:
    win_close();    // $9162
    if (*(word*)(fp - 66)) goto L_9171;    // $9167
    if ((local11 != 1)) goto L_90DD;    // $916E
L_9171:
    blit_free_tiles(2, 2, 28, 18, 0);    // $9178
    return *(word*)(fp - 66);    // $917E
}
