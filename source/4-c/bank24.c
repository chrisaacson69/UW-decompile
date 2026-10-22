// Decompiled from source/2-asm-vm\bank24.asm sub $8003
// $8003 quest_scan_ports
// (body @ $8008)

word quest_scan_ports(word arg1) {
    local11 = 0xB50A;    // $800B
    local10 = 0;    // $800D
    do {    // $800E
        local9 = record_field_byte((local11 + 3));    // $8015
        if (((local9 == arg1))) return local10;    // $8019
        local11 = (local11 + 5);    // $8020
        local10 = (local10 + 1);    // $8023
    } while (((unsigned)local10 < (unsigned)50));    // $8028
    return 0;    // $802C
}

// Decompiled from source/2-asm-vm\bank24.asm sub $802D
// $802D quest_flag_8
// (body @ $8032)

word quest_flag_8(void) {
    return (quest_flags & 8);    // $8037
}

// Decompiled from source/2-asm-vm\bank24.asm sub $8038
// $8038 quest_flag_2
// (body @ $803D)

word quest_flag_2(void) {
    return (quest_flags & 2);    // $8042
}

// Decompiled from source/2-asm-vm\bank24.asm sub $8043
// $8043 quest_flag_1
// (body @ $8048)

word quest_flag_1(void) {
    return (quest_flags & 1);    // $804D
}

// Decompiled from source/2-asm-vm\bank24.asm sub $804E
// $804E quest_at_target_port
// (body @ $8053)

word quest_at_target_port(void) {
    return (quest_target_port == current_port);    // $805C
}

// Decompiled from source/2-asm-vm\bank24.asm sub $805D
// $805D quest_calc_port
// (body @ $8062)

word quest_calc_port(word arg1, word arg2) {
    local3 = ((arg1 * 5) + 0xB50A);    // $8069
    local5 = (record_field_byte((local3 + 2)) * 50);    // $8074
    local8 = record_field_byte((local3 + 1));    // $807C
    local6 = *(word*)(((arg1 * 14) + 0x67B2));    // $8085
    if ((local8 == 255)) goto L_80A8;    // $808B
    if ((local8 != arg2)) goto L_80A8;    // $8091
    if (!((local5 <= local6))) goto L_80A8;    // $8097
    if (((quest_target_port != current_port))) return 1;    // $80A3
    local4 = ((record_field_byte(local3) * 88) + 0xB864);    // $80B4
    local11 = local4;    // $80B6
    local10 = (local4 + 9);    // $80B9
    local9 = 0;    // $80BB
    do {    // $80BC
        local5 = (record_field_byte(local11) * 50);    // $80C4
        if ((local5 == 255)) break;    // $80CA
        local7 = record_field_byte(local10);    // $80D2
        if ((local7 != arg2)) goto L_80E1;    // $80D6
        if (((local5 <= local6))) return 1;    // $80DC
        local10 = (local10 + 1);    // $80E3
        local11 = (local11 + 1);    // $80E6
        local9 = (local9 + 1);    // $80E9
    } while (((unsigned)local9 < (unsigned)9));    // $80ED
L_80F0:
    return 0;    // $80F1
}

// Decompiled from source/2-asm-vm\bank24.asm sub $80F2
// $80F2 quest_draw_stats
// (body @ $80F7)

word quest_draw_stats(word arg1, word arg2) {
    local11 = ((unsigned)arg2 / (unsigned)18);    // $80FB
    if (local11) {    // $80FD
    phi_val_8110 = ((arg2 * 5) + -90);    // $8105
    } else {
    phi_val_8110 = (90 - (arg2 * 5));    // $810F
    }
L_8110:
    local9 = phi_val_8110;    // $8110
    local7 = ((unsigned)(arg1 + 38) % (unsigned)72);    // $8117
    local10 = ((unsigned)local7 / (unsigned)36);    // $811C
    local8 = ((local10 ? (72 - local7) : local7) * 5);    // $812B
    return draw_field(0x92C2, *(word*)(((local11 << 1) + 0x92B2)), local9, *(word*)(((local10 << 1) + 0x92B6)), local8);    // $8145
    }
}

// Decompiled from source/2-asm-vm\bank24.asm sub $8146
// $8146 quest_draw_port_name
// (body @ $814B)

word quest_draw_port_name(word arg1) {
    local11 = ((arg1 * 19) + 0xAFD8);    // $8153
    draw_string_banked(local11);    // $8155
    draw_string(0x92D0, 0);    // $815D
    return quest_draw_stats(record_field_byte((local11 + 15)), record_field_byte((local11 + 16)));    // $8176
}

// Decompiled from source/2-asm-vm\bank24.asm sub $8177
// $8177 event_hook_generic
// (body @ $817C)

word event_hook_generic(word arg1) {
    draw_string(0x92D6, 0);    // $8180
    quest_draw_port_name(arg1);    // $8185
    return win_close();    // $818C
}

// Decompiled from source/2-asm-vm\bank24.asm sub $818D
// $818D quest_draw_name
// (body @ $8192)

word quest_draw_name(word arg1) {
    local11 = ((unsigned)(arg1 - 1) / (unsigned)5);    // $8196
    draw_string_banked(*(word*)((((arg1 + 20) * 7) + 0x6542)));    // $81A2
    if ((local11 == 3)) {    // $81A9
    phi_81b7_0 = 0x92F6;    // $81B0
    phi_81b7_1 = 0;    // $81B0
    } else {
    phi_81b7_0 = 0x92FD;    // $81B4
    phi_81b7_1 = 0;    // $81B4
    }
L_81B7:
    draw_string(phi_81b7_0, phi_81b7_1);    // $81B7
    return draw_string_banked(record_field_word(((local11 << 1) + 0xBB24)));    // $81CB
    }
}

// Decompiled from source/2-asm-vm\bank24.asm sub $81CC
// $81CC event_royal_summons
// (body @ $81D1)

word event_royal_summons(void) {
    draw_string(0x9305, 1);    // $81D5
    return win_open();    // $81DC
}

// Decompiled from source/2-asm-vm\bank24.asm sub $81DD
// $81DD event_track_npc
// (body @ $81E2)

word event_track_npc(word arg1) {
    draw_window();    // $81E2
    draw_string(0x9332, 0);    // $81E9
    quest_draw_name(arg1);    // $81EE
    draw_string(0x934C, 0);    // $81F6
    win_close();    // $81FA
    draw_window();    // $81FD
    draw_string(0x934E, 0);    // $8204
    local10 = (((arg1 - 1) * 51) + 0x6004);    // $8211
    if (!(load_operand16_14(4))) goto L_8262;    // $8217
    local11 = *(byte*)((local10 + 5));    // $821D
    if (!(*(byte*)((local10 + 4)))) goto L_824E;    // $8221
    if ((current_port == local11)) {    // $8229
    phi_8237_0 = 0x9350;    // $8230
    phi_8237_1 = 0;    // $8230
    goto L_8237;    // $8230
L_8233:
    phi_8237_0 = 0x9388;    // $8234
    phi_8237_1 = 0;    // $8234
L_8237:
    draw_string(phi_8237_0, phi_8237_1);    // $8237
    } else {
    draw_string(0x9370, 0);    // $8242
    quest_draw_port_name(local11);    // $8247
    goto L_827D;    // $824B
L_824E:
    if (!(local11)) goto L_8233;    // $824F
    draw_string(0x93AB, 0);    // $8256
    quest_draw_name(local11);    // $825B
    goto L_827D;    // $825F
L_8262:
    local8 = ((arg1 << 4) + 0x6662);    // $8269
    draw_string(0x93BF, 0);    // $826E
    }
L_827D:
    quest_draw_stats(*(byte*)(local8), *(byte*)((local8 + 1)));    // $8279
    return win_close();    // $8280
    }
}

// Decompiled from source/2-asm-vm\bank24.asm sub $8281
// $8281 event_trade_intel
// (body @ $8286)

word event_trade_intel(word arg1) {
    if (quest_calc_port(current_port, arg1)) {    // $828F
    if ((current_port != quest_target_port)) {    // $829B
    draw_window();    // $829E
    draw_string(0x9436, 1);    // $82A5
    return win_open();    // $82AC
    }
    }
L_82AD:
    if (load_operand16_14(2)) goto L_82EB;    // $82B2
    local10 = 0;    // $82B6
    phi_val_82c9 = 0;    // $82B7
    while (((unsigned)local11 < (unsigned)12)) {    // $82C9
        if ((*(byte*)((local11 + 0x93ED)) == arg1)) {    // $82C2
        local10 = local11;    // $82C6
        }
L_82C7:
        phi_val_82c9 = (local11 + 1);    // $82C8
        local11 = phi_val_82c9;    // $82C9
    }
    draw_window();    // $82D0
    draw_field_m1(0x9455, *(word*)(((*(byte*)((local10 + 0x93E1)) << 1) + 0x93D5)));    // $82E3
    return win_open();    // $82EA
L_82EB:
    draw_window();    // $82EB
    draw_string(0x946E, 1);    // $82F2
    return win_open();    // $82F9
}

// Decompiled from source/2-asm-vm\bank24.asm sub $82FA
// $82FA event_trader_hook
// (body @ $82FF)

word event_trader_hook(void) {
    draw_string(0x9493, 1);    // $8303
    return win_open();    // $830A
}

// Decompiled from source/2-asm-vm\bank24.asm sub $830B
// $830B event_quest_objective
// (body @ $8310)

word event_quest_objective(void) {
    if (!(quest_flag_1())) goto L_833F;    // $8313
    if (quest_flag_8()) goto L_833F;    // $8319
    draw_window();    // $831C
    if (mem_7053) goto L_832B;    // $8322
    event_royal_summons();    // $8325
    goto L_833F;    // $8328
L_832B:
    if (!(quest_at_target_port())) goto L_8337;    // $832E
    event_trader_hook();    // $8331
    goto L_833F;    // $8334
L_8337:
L_833F:
    event_hook_generic(quest_target_port);    // $833B
    if (!(quest_flag_1())) goto L_8386;    // $8342
    if (!(quest_flag_8())) goto L_8386;    // $8348
    if (sum_matching_6aa4(mem_7055)) goto L_8386;    // $8353
    draw_window();    // $8356
    draw_string(0x94C9, 0);    // $835D
    draw_string_banked(record_field_word(((mem_7055 << 1) + 0xBB49)));    // $836F
    draw_string(0x94F0, 0);    // $8377
    win_close();    // $837B
L_8386:
    event_trade_intel(mem_7055);    // $8382
    phi_ret_83e2 = quest_flag_1();    // $8389
    if (!(phi_ret_83e2)) goto L_83E2;    // $8389
    phi_ret_83e2 = quest_flag_8();    // $838F
    if (!(phi_ret_83e2)) goto L_83E2;    // $838F
    phi_ret_83e2 = sum_matching_6aa4(mem_7055);    // $839A
    if (!(phi_ret_83e2)) goto L_83E2;    // $839A
    draw_window();    // $839D
    if (mem_7053) goto L_83B4;    // $83A3
    draw_string(0x94F2, 1);    // $83AA
    phi_ret_83e2 = win_open();    // $83B1
    goto L_83E2;    // $83B1
L_83B4:
    if (!(quest_at_target_port())) goto L_83C0;    // $83B7
    phi_ret_83e2 = event_trader_hook();    // $83BD
    goto L_83E2;    // $83BD
L_83C0:
    draw_string(0x9522, 0);    // $83C4
    draw_string_banked(((quest_target_port * 19) + 0xAFD8));    // $83D3
    draw_string(0x9542, 0);    // $83DB
    phi_ret_83e2 = win_close();    // $83DF
L_83E2:
    return phi_ret_83e2;    // $83E2
}

// Decompiled from source/2-asm-vm\bank24.asm sub $83E3
// $83E3 event_guild_hook
// (body @ $83E8)

word event_guild_hook(void) {
    draw_window();    // $83E8
    if (mem_7053) goto L_83F7;    // $83EE
    phi_ret_8413 = event_royal_summons();    // $83F4
    goto L_8413;    // $83F4
L_83F7:
    if (quest_at_target_port()) {    // $83FA
    draw_string(0x954F, 1);    // $8401
    phi_ret_8413 = win_open();    // $8408
    } else {
    phi_ret_8413 = event_hook_generic(quest_target_port);    // $840F
    }
L_8413:
    return phi_ret_8413;    // $8413
    }
}

// Decompiled from source/2-asm-vm\bank24.asm sub $8414
// $8414 quest_has_item
// (body @ $8419)

word quest_has_item(void) {
    draw_string(0x9573, 0);    // $841D
    quest_draw_name(mem_705A);    // $8425
    return draw_field(0x9575, record_base_d604(31));    // $8437
}

// Decompiled from source/2-asm-vm\bank24.asm sub $8438
// $8438 event_map_clue
// (body @ $843D)

word event_map_clue(void) {
    if (!((*(byte*)(player_char_record) == 9))) goto L_8465;    // $8443
    draw_window();    // $8446
    if (mem_705A) {    // $844C
    phi_ret_8775 = event_track_npc(mem_705A);    // $8457
    } else {
    phi_845e_0 = 0x9582;    // $845B
    phi_845e_1 = 0;    // $845B
L_845E:
    draw_string(phi_845e_0, phi_845e_1);    // $845E
    goto L_8772;    // $8462
L_8465:
    if (!((*(byte*)(player_char_record) == 3))) goto L_84E9;    // $846B
    player_char_record = (player_char_record + 1);    // $8472
    if (!(*(byte*)(player_char_record))) goto L_8499;    // $8479
    local9 = record_field_word(((*(byte*)((player_char_record + 1)) << 1) + 0xA00C));    // $848B
    phi_val_84a8 = quest_scan_ports(*(byte*)((player_char_record + 1)));    // $8496
    goto L_84A8;    // $8496
L_8499:
    local9 = *(word*)(((*(byte*)((player_char_record + 1)) * 7) + 0x6542));    // $84A5
    phi_val_84a8 = 99;    // $84A6
L_84A8:
    local11 = phi_val_84a8;    // $84A8
    if (!((!(*(byte*)(player_char_record)) || (current_port != local11)))) goto L_84E3;    // $84B5
    draw_window();    // $84B8
    draw_field_m1(0x95CC, record_base_d604(31));    // $84C5
    win_open();    // $84C9
    draw_window();    // $84CC
    draw_string(0x95E9, 0);    // $84D3
    phi_845e_0 = 0x95EB;    // $84E0
    phi_845e_1 = 0;    // $84E0
    draw_string_banked(local9);    // $84D8
    goto L_845E;    // $84E0
L_84E3:
    phi_ret_8775 = event_map_clue();    // $84E6
    goto L_8775;    // $84E6
L_84E9:
    if (!(*(byte*)(player_char_record))) goto L_850D;    // $84ED
    local11 = quest_scan_ports(*(byte*)((player_char_record + 1)));    // $84FA
    phi_val_8526 = record_field_word(((*(byte*)((player_char_record + 1)) << 1) + 0xA00C));    // $850A
    goto L_8526;    // $850A
L_850D:
    local11 = *(byte*)((((*(byte*)((player_char_record + 1)) - 1) << 1) + 0x6A6F));    // $8519
    phi_val_8526 = *(word*)(((*(byte*)((player_char_record + 1)) * 7) + 0x6542));    // $8525
L_8526:
    local9 = phi_val_8526;    // $8526
    draw_window();    // $8527
    if (!(*(byte*)(player_char_record))) goto L_86DF;    // $852E
    if ((current_port != local11)) goto L_867F;    // $8536
    if (!(((unsigned)*(byte*)((*(byte*)((player_char_record + 1)) + 0x652C)) > (unsigned)90))) goto L_85B3;    // $8546
    if (!((*(byte*)((player_char_record + 2)) == 9))) goto L_8573;    // $8550
    if (!(mem_705A)) goto L_855F;    // $8556
L_8559:
    quest_has_item();    // $8559
    goto L_85A7;    // $855C
L_855F:
    draw_string(0x960B, 0);    // $8563
    quest_flags = (quest_flags | 4);    // $856D
    goto L_85A7;    // $8570
L_8573:
    draw_string(0x9654, 0);    // $8577
    if (!(*(byte*)((player_char_record + 2)))) goto L_8595;    // $8580
    phi_val_85a1 = record_field_word(((*(byte*)((player_char_record + 3)) << 1) + 0xA00C));    // $8592
    goto L_85A1;    // $8592
L_8595:
    phi_val_85a1 = *(word*)(((*(byte*)((player_char_record + 3)) * 7) + 0x6542));    // $85A0
L_85A1:
    local8 = phi_val_85a1;    // $85A1
L_85A7:
    draw_string_banked(local8);    // $85A3
    player_char_record = (player_char_record + 2);    // $85AD
    goto L_8772;    // $85B0
L_85B3:
    draw_string(0x9681, 1);    // $85B7
    win_open();    // $85BB
    draw_window();    // $85BE
    if (!((*(byte*)((player_char_record + 2)) == 9))) goto L_8640;    // $85C8
    if (mem_705A) goto L_8559;    // $85CE
    if (!(load_operand16_14(2))) goto L_8632;    // $85D6
    if (!(mem_666B)) goto L_8632;    // $85DC
    local7 = max_s16(mem_666B, ((load_operand16_14(5) + 1) * 100));    // $85F0
    draw_field_m1(0x96A7, local7);    // $85F5
    if (!(prompt_confirm())) goto L_8628;    // $85FC
    draw_window();    // $85FF
    mem_666B = (mem_666B - local7);    // $8608
    draw_string(0x96E0, 1);    // $860F
    quest_flags = (quest_flags | 4);    // $8619
    player_char_record = (player_char_record + 2);    // $8622
    goto L_863A;    // $8625
L_8628:
    phi_8636_0 = 0x96FA;    // $862F
    phi_8636_1 = 1;    // $862F
    draw_window();    // $8628
    goto L_8636;    // $862F
L_8632:
    phi_8636_0 = 0x9707;    // $8633
    phi_8636_1 = 1;    // $8633
L_8636:
L_863A:
    draw_string(phi_8636_0, phi_8636_1);    // $8636
    phi_ret_8775 = win_open();    // $863D
    goto L_8775;    // $863D
L_8640:
    draw_string(0x9732, 0);    // $8644
    if (!(*(byte*)((player_char_record + 2)))) goto L_8662;    // $864D
    phi_val_866e = record_field_word(((*(byte*)((player_char_record + 3)) << 1) + 0xA00C));    // $865F
    goto L_866E;    // $865F
L_8662:
    phi_val_866e = *(word*)(((*(byte*)((player_char_record + 3)) * 7) + 0x6542));    // $866D
L_866E:
    local8 = phi_val_866e;    // $866E
    draw_string_banked(local8);    // $8670
    draw_string(0x974F, 0);    // $8678
    goto L_85A7;    // $867C
L_867F:
    draw_string(0x975C, 0);    // $8683
    draw_string_banked(record_field_word(((*(byte*)((player_char_record + 1)) << 1) + 0xA00C)));    // $8697
    draw_string(0x975E, 0);    // $869F
    if (!(load_operand16_14(2))) goto L_86C4;    // $86A8
    phi_86bd_0 = ((quest_scan_ports(*(byte*)((player_char_record + 1))) * 19) + 0xAFD8);    // $86BC
L_86BD:
    draw_string_banked(phi_86bd_0);    // $86BD
    goto L_8772;    // $86C1
L_86C4:
    local10 = quest_scan_ports(*(byte*)((player_char_record + 1)));    // $86CE
    local6 = ((local10 * 19) + 0xAFD8);    // $86D7
    phi_8759_0 = 0x976B;    // $86DC
    phi_8759_1 = 0;    // $86DC
    goto L_8759;    // $86DC
L_86DF:
    draw_string(0x977E, 0);    // $86E3
    if ((current_port != local11)) goto L_8712;    // $86EC
    draw_string(0x9790, 0);    // $86F3
    draw_string_banked(*(word*)(((*(byte*)((player_char_record + 1)) * 7) + 0x6542)));    // $8704
    draw_field(0x9792);    // $870B
    goto L_8772;    // $870F
L_8712:
    draw_string_banked(*(word*)(((*(byte*)((player_char_record + 1)) * 7) + 0x6542)));    // $871F
    draw_string(0x97A7, 0);    // $8727
    local10 = *(byte*)((((*(byte*)((player_char_record + 1)) - 1) << 1) + 0x6A6F));    // $8737
    local6 = ((local10 * 19) + 0xAFD8);    // $8740
    if (!(load_operand16_14(2))) goto L_8755;    // $8746
    phi_86bd_0 = local6;    // $8752
    draw_string(0x97B7, 0);    // $874D
    goto L_86BD;    // $8752
L_8755:
    phi_8759_0 = 0x97C7;    // $8756
    phi_8759_1 = 0;    // $8756
L_8759:
    draw_string(phi_8759_0, phi_8759_1);    // $8759
L_8772:
    quest_draw_stats(record_field_byte((local6 + 15)), record_field_byte((local6 + 16)));    // $876E
    phi_ret_8775 = win_close();    // $8772
    }
L_8775:
    return phi_ret_8775;    // $8775
    }
}

// Decompiled from source/2-asm-vm\bank24.asm sub $8776
// $8776 event_quest_urgency
// (body @ $877B)

word event_quest_urgency(void) {
    draw_window();    // $877B
    if (mem_7053) goto L_8792;    // $8781
    draw_string(0x97D9, 1);    // $8788
    phi_ret_87bd = win_open();    // $878F
    goto L_87BD;    // $878F
L_8792:
    if (quest_at_target_port()) {    // $8795
    draw_string(0x97F3, 0);    // $879C
    } else {
    draw_string(0x9822, 0);    // $87A7
    }
L_87BA:
    draw_string_banked(((quest_target_port * 19) + 0xAFD8));    // $87B6
    phi_ret_87bd = win_close();    // $87BA
L_87BD:
    return phi_ret_87bd;    // $87BD
    }
}

// Decompiled from source/2-asm-vm\bank24.asm sub $87BE
// $87BE quest_cond
// (body @ $87C3)

word quest_cond(void) {
    if (!(quest_flag_1())) goto L_87D2;    // $87C6
    if (quest_flag_8()) goto L_87D2;    // $87CC
L_87D2:
    event_guild_hook();    // $87CF
    if (!(quest_flag_1())) goto L_87EB;    // $87D5
    if (!(quest_flag_8())) goto L_87EB;    // $87DB
    if ((mem_666F & 0x8000)) goto L_87EB;    // $87E5
L_87EB:
    event_map_clue();    // $87E8
    phi_ret_8804 = quest_flag_1();    // $87EE
    if (!(phi_ret_8804)) goto L_8804;    // $87EE
    phi_ret_8804 = quest_flag_8();    // $87F4
    if (!(phi_ret_8804)) goto L_8804;    // $87F4
    phi_ret_8804 = (mem_666F & 0x8000);    // $87FE
    if (!(phi_ret_8804)) goto L_8804;    // $87FE
    phi_ret_8804 = event_quest_urgency();    // $8801
L_8804:
    return phi_ret_8804;    // $8804
}

// Decompiled from source/2-asm-vm\bank24.asm sub $8805
// $8805 event_hook_multi
// (body @ $880A)

word event_hook_multi(void) {
    if (!(quest_flag_1())) goto L_8842;    // $880D
    if (quest_flag_8()) goto L_8842;    // $8813
    draw_window();    // $8816
    if (mem_7053) goto L_8834;    // $881C
    phi_882a_0 = 0x9848;    // $8823
    phi_882a_1 = 1;    // $8823
    goto L_882A;    // $8823
L_8826:
    phi_882a_0 = 0x9869;    // $8827
    phi_882a_1 = 1;    // $8827
L_882A:
    draw_string(phi_882a_0, phi_882a_1);    // $882A
    win_open();    // $882E
    goto L_8842;    // $8831
L_8834:
    if (quest_at_target_port()) goto L_8826;    // $8837
L_8842:
    event_hook_generic(quest_target_port);    // $883E
    if (!(quest_flag_1())) goto L_885C;    // $8845
    if (!(quest_flag_8())) goto L_885C;    // $884B
    if (quest_flag_2()) goto L_885C;    // $8851
L_885C:
    event_track_npc(mem_7055);    // $8858
    phi_ret_8882 = quest_flag_1();    // $885F
    if (!(phi_ret_8882)) goto L_8882;    // $885F
    phi_ret_8882 = quest_flag_8();    // $8865
    if (!(phi_ret_8882)) goto L_8882;    // $8865
    phi_ret_8882 = quest_flag_2();    // $886B
    if (!(phi_ret_8882)) goto L_8882;    // $886B
    draw_window();    // $886E
    if (mem_7053) goto L_888A;    // $8874
    phi_887b_0 = 0x988F;    // $8878
    phi_887b_1 = 1;    // $8878
L_887B:
    draw_string(phi_887b_0, phi_887b_1);    // $887B
    phi_ret_8882 = win_open();    // $887F
L_8882:
    return phi_ret_8882;    // $8882
L_8883:
    phi_887b_0 = 0x98B6;    // $8887
    phi_887b_1 = 1;    // $8887
    goto L_887B;    // $8887
L_888A:
    if (quest_at_target_port()) goto L_8883;    // $888D
    draw_string(0x98DB, 0);    // $8894
    draw_string_banked(((quest_target_port * 19) + 0xAFD8));    // $88A3
    draw_string(0x98EB, 0);    // $88AB
    return win_close();    // $88B2
}

// Decompiled from source/2-asm-vm\bank24.asm sub $88B3
// $88B3 event_story_princess
// (body @ $88B8)

word event_story_princess(void) {
    if (!(quest_flag_1())) goto L_88D2;    // $88BB
    if (quest_flag_8()) goto L_88D2;    // $88C1
    draw_window();    // $88C4
    draw_string(0x9909, 1);    // $88CB
L_88D2:
    win_open();    // $88CF
    if (!(quest_flag_1())) goto L_892B;    // $88D5
    if (!(quest_flag_8())) goto L_892B;    // $88DB
    if (quest_flag_2()) goto L_892B;    // $88E1
    if (!((*(byte*)(player_char_record) == 3))) goto L_8923;    // $88EA
    player_char_record = (player_char_record + 1);    // $88F1
    draw_window();    // $88F4
    draw_string(0x9941, 1);    // $88FB
    win_open();    // $88FF
    draw_window();    // $8902
    draw_string(0x9968, 0);    // $8909
    quest_draw_name(mem_7055);    // $8911
    draw_string(0x996A, 0);    // $8919
    win_close();    // $891D
    goto L_892B;    // $8920
L_8923:
L_892B:
    event_track_npc(mem_7055);    // $8927
    phi_ret_894b = quest_flag_1();    // $892E
    if (!(phi_ret_894b)) goto L_894B;    // $892E
    phi_ret_894b = quest_flag_8();    // $8934
    if (!(phi_ret_894b)) goto L_894B;    // $8934
    phi_ret_894b = quest_flag_2();    // $893A
    if (!(phi_ret_894b)) goto L_894B;    // $893A
    draw_window();    // $893D
    draw_string(0x9973, 1);    // $8944
    phi_ret_894b = win_open();    // $8948
L_894B:
    return phi_ret_894b;    // $894B
}

// Decompiled from source/2-asm-vm\bank24.asm sub $894C
// $894C event_fetch_gift
// (body @ $8951)

word event_fetch_gift(void) {
    if (!(quest_flag_1())) goto L_8963;    // $8954
    if (quest_flag_8()) goto L_8963;    // $895A
    draw_window();    // $895D
L_8963:
    event_royal_summons();    // $8960
    if (!(quest_flag_1())) goto L_89B7;    // $8966
    if (!(quest_flag_8())) goto L_89B7;    // $896C
    if (quest_flag_2()) goto L_89B7;    // $8972
    draw_window();    // $8975
    if ((mem_7055 == current_port)) goto L_89AC;    // $8981
    draw_string(0x99AA, 0);    // $8988
    draw_string_banked(record_field_word(((mem_7055 << 1) + 0xBB24)));    // $899A
    draw_string(0x99D9, 0);    // $89A2
    win_close();    // $89A6
    goto L_89B7;    // $89A9
L_89AC:
    draw_string(0x99DB, 1);    // $89B0
L_89B7:
    win_open();    // $89B4
    phi_ret_89d7 = quest_flag_1();    // $89BA
    if (!(phi_ret_89d7)) goto L_89D7;    // $89BA
    phi_ret_89d7 = quest_flag_8();    // $89C0
    if (!(phi_ret_89d7)) goto L_89D7;    // $89C0
    phi_ret_89d7 = quest_flag_2();    // $89C6
    if (!(phi_ret_89d7)) goto L_89D7;    // $89C6
    draw_window();    // $89C9
    draw_string(0x9A11, 1);    // $89D0
    phi_ret_89d7 = win_open();    // $89D4
L_89D7:
    return phi_ret_89d7;    // $89D7
}

// Decompiled from source/2-asm-vm\bank24.asm sub $89D8
// $89D8 quest_dispatch
// (body @ $89DD)

word quest_dispatch(void) {
    switch (mem_7054) {    // $89E0
    case 0:
    default:
L_89F4:
        return event_quest_objective();    // $89F4
    case 1:
        event_fetch_gift();    // $89F5
        goto L_89F4;    // $89F8
    case 2:
        event_hook_multi();    // $89FB
        goto L_89F4;    // $89FE
    case 3:
        quest_cond();    // $8A01
        goto L_89F4;    // $8A04
    case 4:
        event_story_princess();    // $8A07
        goto L_89F4;    // $8A0A
    }
}

// Decompiled from source/2-asm-vm\bank24.asm sub $8A0D
// $8A0D quest_decline
// (body @ $8A12)

word quest_decline(word arg1) {
    draw_box_variant(arg1, 2);    // $8A14
    draw_window();    // $8A18
    return draw_text(0x9A31);    // $8A22
}

// Decompiled from source/2-asm-vm\bank24.asm sub $8A23
// $8A23 event_waitress
// (body @ $8A28)

word event_waitress(void) {
    local11 = record_field_byte(((current_port * 5) + 0xB50D));    // $8A36
    if ((local11 == 255)) {    // $8A3C
    draw_box_from_native();    // $8A3F
    win_render_syscall(1);    // $8A43
    draw_text(0x9B9F);    // $8A4A
    return 0;    // $8A4F
    }
L_8A50:
    local10 = *(byte*)((local11 + 0x652C));    // $8A56
    draw_box_variant(7, 1);    // $8A59
    win_render_syscall(1);    // $8A5E
    draw_string(0x9BC9, 0);    // $8A66
    draw_string_banked(record_field_word(((local11 << 1) + 0xA00C)));    // $8A76
    draw_string(0x9BD4, 0);    // $8A7E
    scale_6b88(1);    // $8A83
    if (((unsigned)mem_666B < (unsigned)10)) {    // $8A8C
    draw_box_from_native();    // $8A8F
    draw_window();    // $8A92
    draw_text(0x9BF7);    // $8A98
    if ((!(((unsigned)local10 >= (unsigned)100)))) return 0;    // $8AA0
    quest_decline(local11);    // $8AA6
    } else {
    if (!(((unsigned)local10 >= (unsigned)100))) goto L_8ABF;    // $8AB1
    if (((unsigned)load_operand16_14(local10) > (unsigned)80)) goto L_8AA5;    // $8ABC
L_8ABF:
    mem_666B = (mem_666B - 10);    // $8AC5
    }
L_8AC8:
    local9 = ((unsigned)local10 / (unsigned)45);    // $8ACC
    local8 = 1;    // $8ACE
    if (local9) {    // $8AD0
    local8 = load_operand16_14((1 << (5 - local9)));    // $8ADF
    }
L_8AE0:
    draw_box_variant(local11, 2);    // $8AE2
    draw_window();    // $8AE6
    draw_string(*(word*)(((local9 << 1) + 0x9A6C)), 1);    // $8AF2
    scale_6b88(1);    // $8AF7
    if (((unsigned)local10 < (unsigned)200)) {    // $8B00
    *(byte*)((local11 + 0x652C)) = max_s16(((load_operand16_14(5) + local10) + 10), 200);    // $8B19
    }
L_8B1A:
    if ((quest_flags & 1)) {    // $8B1F
    if (!(load_operand16_14(4))) goto L_8B30;    // $8B27
    quest_dispatch();    // $8B2A
    } else {
    if (local8) goto L_8BD1;    // $8B31
    do {    // $8B34
        local7 = load_operand16_14(20);    // $8B3A
    } while ((*(byte*)((((local7 + 1) << 4) + 0x6671)) & 8));    // $8B46
    draw_window();    // $8B49
    draw_string(0x9C0C, 0);    // $8B50
    draw_string_banked(*(word*)((((local7 + 21) * 7) + 0x6542)));    // $8B5F
    draw_field(0x9C15, *(word*)((((((((unsigned)local7 / (unsigned)5) << 1) + ((unsigned)((unsigned)local7 % (unsigned)5) / (unsigned)3)) + 1) << 1) + 0x9A5A)));    // $8B7A
    local6 = ((local7 * 51) + 0x6004);    // $8B86
    local7 = *(byte*)((local6 + 5));    // $8B8A
    if (*(byte*)((local6 + 4))) goto L_8BB9;    // $8B8E
    if (!(local7)) goto L_8BA7;    // $8B92
    goto L_8BA8;    // $8BA4
L_8BA7:
L_8BA8:
    draw_field(0x9C1C, *(word*)(((0 << 1) + 0x9A5A)));    // $8BB2
    goto L_8BCE;    // $8BB6
L_8BB9:
    draw_string(0x9C31, 0);    // $8BBD
L_8BCE:
    draw_string_banked(((local7 * 19) + 0xAFD8));    // $8BCA
    }
L_8BD1:
    win_close();    // $8BCE
    return 1;    // $8BD2
    }
    }
}

// Decompiled from source/2-asm-vm\bank24.asm sub $8BD3
// $8BD3 event_quest_reward
// (body @ $8BD8)

word event_quest_reward(void) {
    if (!((quest_flags & 8))) goto L_8C6B;    // $8BDD
    if (!((quest_flags & 2))) goto L_8C6B;    // $8BE5
    if (!((quest_flags & 1))) goto L_8C6B;    // $8BED
    if ((quest_target_port != current_port)) goto L_8C6B;    // $8BF9
    if ((mem_7053 != 3)) goto L_8C6B;    // $8C01
    idx_over_20(13);    // $8C05
    audio_param_gated(1);    // $8C0A
    draw_box_variant(7, 1);    // $8C10
    draw_window();    // $8C14
    draw_string(0x9C46, 1);    // $8C1B
    win_open();    // $8C1F
    mem_6F70 = max_s16((((unsigned)mem_7058 >> 1) + mem_6F70), 0x2710);    // $8C33
    if (!(((unsigned)mem_6F72 < (unsigned)0xC350))) goto L_8C57;    // $8C3D
    mem_6F72 = (mem_6F72 + max_s16((0xC350 - mem_6F72), 0x03E8));    // $8C54
L_8C57:
    draw_window();    // $8C57
    draw_string(0x9C7A, 1);    // $8C5E
    win_open();    // $8C62
    quest_flags = 0;    // $8C66
    return 1;    // $8C6A
L_8C6B:
    if (!((quest_flags & 8))) goto L_8D37;    // $8C70
    if (!((quest_flags & 1))) goto L_8D37;    // $8C78
    if ((quest_target_port != current_port)) goto L_8D37;    // $8C84
    if ((mem_7053 != 3)) goto L_8D37;    // $8C8C
    idx_over_20(13);    // $8C90
    audio_param_gated(1);    // $8C95
    draw_box_variant(7, 1);    // $8C9B
    draw_window();    // $8C9F
    draw_string(0x9CA1, 1);    // $8CA6
    win_open();    // $8CAA
    draw_window();    // $8CAD
    draw_string(0x9CC0, 1);    // $8CB4
    if (!(prompt_confirm())) goto L_8CCF;    // $8CBB
    draw_window();    // $8CBE
    draw_string(0x9CEB, 1);    // $8CC5
    win_open();    // $8CC9
    goto L_8D35;    // $8CCC
L_8CCF:
    draw_window();    // $8CCF
    draw_string(0x9D0F, 1);    // $8CD6
    if (!(((unsigned)mem_6F70 < (unsigned)((unsigned)mem_7058 >> 1)))) goto L_8CFD;    // $8CE5
    mem_6F70 = 0;    // $8CE9
    win_open();    // $8CEC
    draw_window();    // $8CEF
    draw_string(0x9D33, 1);    // $8CF6
    goto L_8D0A;    // $8CFA
L_8CFD:
    mem_6F70 = (mem_6F70 - ((unsigned)mem_7058 >> 1));    // $8D07
L_8D0A:
    win_open();    // $8D0A
    draw_window();    // $8D0D
    draw_text(0x9D67);    // $8D13
    mem_6F72 = (mem_6F72 - max_s16(mem_6F72, ((load_operand16_14(10) * 5) + 300)));    // $8D2E
    quest_flags = 0;    // $8D32
L_8D35:
    return 1;    // $8D36
L_8D37:
    if ((quest_flags & 8)) goto L_8E2F;    // $8D3C
    if (!((quest_flags & 1))) goto L_8E2F;    // $8D44
    if ((quest_target_port != current_port)) goto L_8E2F;    // $8D50
    if ((mem_7053 != 3)) goto L_8E2F;    // $8D58
    idx_over_20(13);    // $8D5C
    audio_param_gated(1);    // $8D61
    mem_7058 = ((load_operand16_14(5) * 5) + 100);    // $8D6E
    draw_box_variant(7, 1);    // $8D73
    draw_window();    // $8D77
    draw_string(0x9D89, 1);    // $8D7E
    win_open();    // $8D82
    draw_window();    // $8D85
    draw_string(0x9DC2, 0);    // $8D8C
    draw_string_banked(*(word*)((((mem_7055 + 20) * 7) + 0x6542)));    // $8D9D
    if (!((((unsigned)(mem_7055 - 1) / (unsigned)5) == 3))) goto L_8DB3;    // $8DA9
    phi_8db7_0 = 0x9DCD;    // $8DB0
    phi_8db7_1 = 0;    // $8DB0
    goto L_8DB7;    // $8DB0
L_8DB3:
    phi_8db7_0 = 0x9DD4;    // $8DB4
    phi_8db7_1 = 0;    // $8DB4
L_8DB7:
    draw_string(phi_8db7_0, phi_8db7_1);    // $8DB7
    draw_string_banked(record_field_word(((((unsigned)(mem_7055 - 1) / (unsigned)5) << 1) + 0xBB24)));    // $8DCC
    draw_string(0x9DDC, 0);    // $8DD4
    win_close();    // $8DD8
    draw_window();    // $8DDB
    draw_field_m1(0x9DF2, mem_7058);    // $8DE4
    if (!(prompt_confirm())) goto L_8E1B;    // $8DEB
    draw_window();    // $8DEE
    draw_field_m1(0x9E22, ((unsigned)mem_7058 >> 1));    // $8DFA
    mem_6F70 = max_s16((((unsigned)mem_7058 >> 1) + mem_6F70), 0x2710);    // $8E0F
    phi_val_8e27 = (quest_flags | 8);    // $8E18
    goto L_8E27;    // $8E18
L_8E1B:
    draw_window();    // $8E1B
    draw_string(0x9E5E, 1);    // $8E22
    phi_val_8e27 = 0;    // $8E26
L_8E27:
    quest_flags = phi_val_8e27;    // $8E27
    win_open();    // $8E2A
    return 1;    // $8E2E
L_8E2F:
    return 0;    // $8E30
}

// Decompiled from source/2-asm-vm\bank24.asm sub $8E31
// $8E31 event_recruit_crew
// (body @ $8E36)

word event_recruit_crew(void) {
    local3 = ((current_port * 14) + 0x67B2);    // $8E3F
    draw_box_from_native();    // $8E40
    if ((record_iter_6c90(0) == mul_field_000b(0))) {    // $8E50
    draw_window();    // $8E53
    draw_text(0x9E82);    // $8E59
    return 0;    // $8E5E
    }
L_8E5F:
    if (((unsigned)mem_666B < (unsigned)50)) {    // $8E65
    draw_window();    // $8E68
    draw_text(0x9EA0);    // $8E6E
    return 0;    // $8E73
    }
L_8E74:
    local5 = mem_666B;    // $8E77
    local7 = max_s16(local5, 0x03E8);    // $8E80
    win_render_syscall(1);    // $8E82
    local11 = draw_labeled_value_1(0x9EBA, 50, local7);    // $8E90
    if (((local11 == 1))) return 0;    // $8E95
    mem_666B = (mem_666B - local11);    // $8EA0
    draw_window();    // $8EA3
    draw_string(0x9ECA, 0);    // $8EAA
    draw_string_banked(mem_6542);    // $8EB1
    draw_string(0x9EF2, 0);    // $8EB9
    scale_6b88(1);    // $8EBE
    local10 = (((20 - (*(byte*)(((current_port * 14) + 0x67BA)) / 10)) + (10 - mem_6F74)) + ((0x03E8 - *(word*)(local3)) / 100));    // $8EEB
    local9 = ((load_operand16_14(2) + ((unsigned)local11 / (unsigned)local10)) + 1);    // $8EF8
    local6 = (mul_field_000b(0) - record_iter_6c90(0));    // $8F06
    local8 = max_s16(local6, local9);    // $8F0D
    draw_box_frame();    // $8F0E
    win_render_syscall(1);    // $8F12
    draw_field(0x9EF4, local9);    // $8F1A
    if ((local9 > local6)) {    // $8F21
    }
L_8F2C:
    draw_field(0x9F05, local8);    // $8F28
    scale_6b88(2);    // $8F2D
    blit_alloc_tiles(2, 2, 28, 18, 0);    // $8F38
    local4 = cargo_pick_ship(local8, 9, 7);    // $8F4A
    mem_7063 = 240;    // $8F4E
    blit_free_tiles(2, 2, 28, 18, 0);    // $8F58
    if (((local4 == 1))) return 1;    // $8F5F
    mem_666B = local5;    // $8F65
    return local4;    // $8F69
}

// Decompiled from source/2-asm-vm\bank24.asm sub $8F6A
// $8F6A quest_clear_screen
// (body @ $8F6F)

word quest_clear_screen(void) {
    mem_7063 = 240;    // $8F72
    blit_alloc_tiles(2, 2, 28, 18, 0);    // $8F7C
    local11 = cargo_pick_ship(255, 9, 7);    // $8F90
    blit_free_tiles(2, 2, 28, 18, 0);    // $8F98
    return local11;    // $8F9D
}

// Decompiled from source/2-asm-vm\bank24.asm sub $8F9E
// $8F9E quest_pick
// (body @ $8FA3)

word quest_pick(void) {
    local10 = 0;    // $8FA4
    do {    // $8FA5
        draw_box_from_native();    // $8FA5
        win_render_syscall(1);    // $8FA9
        draw_string(0x9F37, 1);    // $8FB1
        *(byte*)(fp - 1) = draw_tile_grid(8, 23, 9, 1, 0x9F20, 2, 1);    // $8FC3
        if ((*(byte*)(fp - 1) != 255)) {    // $8FCD
        local10 = (*(*(word*)(((*(byte*)(fp - 1) << 1) + 0x9F24))))();    // $8FDA
        }
L_8FDB:
        if ((*(byte*)(fp - 1) == 255)) break;    // $8FE2
    } while (!(local10));    // $8FE6
L_8FE9:
    return local10;    // $8FEA
}

// Decompiled from source/2-asm-vm\bank24.asm sub $8FEB
// $8FEB event_recruit_sailor
// (body @ $8FF0)

word event_recruit_sailor(void) {
    draw_box_from_native();    // $8FF0
    win_render_syscall(1);    // $8FF4
    if (!((record_iter_6a9a((fp - 11)) == 10))) goto L_900E;    // $9002
    draw_text(0x9F42);    // $9008
    return 0;    // $900D
L_900E:
    *(byte*)(fp - 34) = 0;    // $900F
    *(word*)(fp - 33) = (fp - 31);    // $9015
    goto L_9062;    // $9018
L_901B:
    *(byte*)(fp - 53) = *(byte*)((((*(byte*)(fp - 1) + 1) * 7) + 0x6548));    // $9026
    if (!((*(byte*)(((*(byte*)(fp - 1) << 1) + 0x6A6F)) == current_port))) goto L_905E;    // $9038
    if ((*(byte*)(fp - 53) & 2)) goto L_905E;    // $9040
    if (!((*(byte*)(fp - 53) & 1))) goto L_905E;    // $9048
    *(byte*)(*(word*)(fp - 33)) = (*(byte*)(fp - 1) + 1);    // $9051
    *(word*)(fp - 33) = (*(word*)(fp - 33) + 1);    // $9055
    *(byte*)(fp - 34) = (*(byte*)(fp - 34) + 1);    // $905B
L_905E:
L_9062:
    *(byte*)(fp - 1) = (*(byte*)(fp - 1) + 1);    // $9062
    if (((unsigned)*(byte*)(fp - 1) < (unsigned)20)) goto L_901B;    // $906B
    if (*(byte*)(fp - 34)) goto L_907D;    // $9071
    draw_text(0x9F5C);    // $9077
    return 0;    // $907C
L_907D:
    if (!(((unsigned)*(byte*)(fp - 34) < (unsigned)6))) goto L_908B;    // $9082
    goto L_908C;    // $9088
L_908B:
L_908C:
    *(byte*)(fp - 34) = 6;    // $908C
    blit_alloc_tiles(2, 2, 28, 18, 0);    // $9096
    syscall_id09_syscall_banked_blit_m3(11, 6, 14, 14, 0xAADA, 0xAB9E, 232);    // $90A8
    goto L_90E1;    // $90AD
L_90B0:
    set_tile_cursor(13, ((*(byte*)(fp - 1) << 1) + 8));    // $90B7
    *(word*)(((*(byte*)(fp - 1) << 1) + (fp - 46))) = *(word*)(((*(byte*)((*(byte*)(fp - 1) + (fp - 31))) * 7) + 0x6542));    // $90D7
    draw_string_banked(*(word*)(((*(byte*)((*(byte*)(fp - 1) + (fp - 31))) * 7) + 0x6542)));    // $90D9
L_90E1:
    *(byte*)(fp - 1) = (*(byte*)(fp - 1) + 1);    // $90E1
    if (((unsigned)*(byte*)(fp - 1) < (unsigned)*(byte*)(fp - 34))) goto L_90B0;    // $90ED
    mem_7063 = 240;    // $90F3
    *(word*)(fp - 66) = 0x6542;    // $90F9
    *(word*)(fp - 48) = 0x6BBF;    // $90FE
    mem_7064 = -1;    // $9102
    win_render_syscall(1);    // $9106
    draw_box_from_native();    // $910A
    draw_string(0x9F79, 1);    // $9111
    *(word*)(fp - 64) = 0;    // $9116
    *(byte*)(fp - 53) = menu_select(12, 8, 2, *(byte*)(fp - 34));    // $9123
    if (!((*(byte*)(fp - 53) != 255))) goto L_9249;    // $912D
    draw_box_variant(0, 0);    // $9132
    draw_window();    // $9136
    draw_text(0x9F88);    // $913C
    draw_box_variant(*(byte*)((*(byte*)(fp - 53) + (fp - 31))), 0);    // $914C
    *(word*)(fp - 70) = (((*(byte*)((*(byte*)(fp - 53) + (fp - 31))) - 1) << 1) + 0x6A6E);    // $9160
    if (!(((unsigned)*(byte*)(*(word*)(fp - 70)) < (unsigned)40))) goto L_923C;    // $9168
    *(word*)(fp - 68) = ((*(byte*)((*(byte*)(fp - 53) + (fp - 31))) * 7) + 0x6542);    // $917B
    *(word*)(fp - 50) = ((*(byte*)((*(byte*)(fp - 53) + (fp - 31))) * 10) + 0x6BBF);    // $918D
    *(word*)(fp - 56) = (*(byte*)((*(word*)(fp - 68) + 2)) + *(byte*)((*(word*)(fp - 68) + 3)));    // $919A
    *(word*)(fp - 58) = (*(byte*)((*(word*)(fp - 66) + 2)) + *(byte*)((*(word*)(fp - 66) + 3)));    // $91A7
    *(byte*)(fp - 1) = 0;    // $91AA
    *(byte*)(fp - 54) = 0;    // $91AD
    *(byte*)(fp - 51) = 0;    // $91B0
    goto L_91DD;    // $91B3
L_91B6:
    if (!(((unsigned)*(byte*)((*(byte*)(fp - 1) + *(word*)(fp - 50))) > (unsigned)*(byte*)(fp - 51)))) goto L_91D6;    // $91C3
    *(byte*)(fp - 51) = *(byte*)((*(byte*)(fp - 1) + *(word*)(fp - 50)));    // $91CD
    *(byte*)(fp - 54) = *(byte*)(fp - 1);    // $91D3
L_91D6:
    *(byte*)(fp - 1) = (*(byte*)(fp - 1) + 1);    // $91DA
L_91DD:
    if (((unsigned)*(byte*)(fp - 1) < (unsigned)5)) goto L_91B6;    // $91E2
    *(byte*)(fp - 52) = *(byte*)((*(byte*)(fp - 54) + *(word*)(fp - 48)));    // $91EC
    *(word*)(fp - 60) = (*(byte*)(fp - 51) * *(word*)(fp - 56));    // $91F5
    *(word*)(fp - 62) = (((unsigned)((*(byte*)(fp - 52) * mem_6F74) * *(word*)(fp - 58)) / (unsigned)10) + (*(byte*)(fp - 52) * *(word*)(fp - 58)));    // $920E
    if (!(((unsigned)*(word*)(fp - 60) > (unsigned)(load_operand16_14(20) + *(word*)(fp - 62))))) goto L_9231;    // $921E
    win_render_syscall(1);    // $9222
    draw_text(0x9FA8);    // $9229
    goto L_9247;    // $922E
L_9231:
    phi_9242_0 = 0x9FD0;    // $9239
    win_render_syscall(1);    // $9232
    goto L_9242;    // $9239
L_923C:
    phi_9242_0 = 0x9FDA;    // $923F
L_9242:
    draw_window();    // $923C
    draw_text(phi_9242_0);    // $9242
L_9247:
    *(word*)(fp - 64) = 1;    // $9247
L_9249:
    if (!(*(word*)(fp - 64))) goto L_92A5;    // $924B
    if (!(((unsigned)*(byte*)(*(word*)(fp - 70)) < (unsigned)20))) goto L_9266;    // $9254
    *(byte*)(*(word*)(fp - 70)) = (*(byte*)(*(word*)(fp - 70)) + (load_operand16_14(10) + 20));    // $9265
L_9266:
    *(word*)(fp - 33) = 0x6A9A;    // $9269
    goto L_9292;    // $926C
L_926F:
    if (!((*(byte*)(*(word*)(fp - 33)) == 255))) goto L_9289;    // $9276
    *(byte*)(*(word*)(fp - 33)) = *(byte*)((*(byte*)(fp - 53) + (fp - 31)));    // $9285
    goto L_929D;    // $9286
L_9289:
    *(word*)(fp - 33) = (*(word*)(fp - 33) + 1);    // $928C
L_9292:
    *(byte*)(fp - 1) = (*(byte*)(fp - 1) + 1);    // $9292
    if (((unsigned)*(byte*)(fp - 1) < (unsigned)10)) goto L_926F;    // $929A
L_929D:
    *(byte*)((*(word*)(fp - 70) + 1)) = 255;    // $92A4
L_92A5:
    blit_free_tiles(2, 2, 28, 18, 0);    // $92AC
    return 1;    // $92B1
}
