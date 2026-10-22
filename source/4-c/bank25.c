// Decompiled from source/2-asm-vm\bank25.asm sub $A003
// $A003 call_court_check_gold
// (body @ $A008)

word call_court_check_gold(void) {
    return call_in_bank_dcd1(1, 218, court_check_gold_request);    // $A013
}

// Decompiled from source/2-asm-vm\bank25.asm sub $A014
// $A014 call_court_check_crew
// (body @ $A019)

word call_court_check_crew(void) {
    return call_in_bank_dcd1(1, 218, court_check_crew_request);    // $A024
}

// Decompiled from source/2-asm-vm\bank25.asm sub $A025
// $A025 call_court_eval
// (body @ $A02A)

word call_court_eval(void) {
    return call_in_bank_dcd1(1, 218, court_eval_state);    // $A035
}

// Decompiled from source/2-asm-vm\bank25.asm sub $A036
// $A036 court_request_menu
// (body @ $A03B)

word court_request_menu(void) {
    do {    // $A03B
        draw_window();    // $A03B
        draw_string(0x907B, 1);    // $A042
        *(byte*)(fp - 1) = draw_tile_grid(8, 23, 7, 1, 0x9068, 2, 1);    // $A054
    } while (!((*(byte*)(fp - 1) != 255)));    // $A05E
    return (*(*(word*)(((*(byte*)(fp - 1) << 1) + 0x906C))))();    // $A06B
}

// Decompiled from source/2-asm-vm\bank25.asm sub $A06E
// $A06E court_announce
// (body @ $A073)

word court_announce(void) {
    local10 = 0;    // $A074
    draw_box_variant(10, 1);    // $A077
    if (current_port) goto L_80D2;    // $A07E
    if (!((quest_flags & 1))) goto L_80BE;    // $A086
    if ((quest_target_port != current_port)) goto L_80BE;    // $A092
    if (mem_7053) goto L_80BE;    // $A098
    win_render_syscall(1);    // $A09C
    draw_string(0x90D1, 0);    // $A0A4
    draw_string_banked(mem_6542);    // $A0AB
    draw_string(0x90E3, 0);    // $A0B3
    win_close();    // $A0B7
    goto L_8103;    // $A0BB
}

// Decompiled from source/2-asm-vm\bank25.asm sub $A176
// $A176 court_cond_active
// (body @ $A17B)

word court_cond_active(void) {
    if (!((quest_flags & 1))) goto L_8195;    // $A180
    if ((quest_target_port != current_port)) goto L_8195;    // $A18C
    if (!(mem_7053)) goto L_8199;    // $A192
    goto L_819A;    // $A196
}

// Decompiled from source/2-asm-vm\bank25.asm sub $A19B
// $A19B court_cond_1
// (body @ $A1A0)

word court_cond_1(void) {
    if ((quest_flags & 8)) goto L_81B6;    // $A1A5
    if ((quest_flags & 2)) goto L_81B6;    // $A1AD
    if (court_leaf_8176()) goto L_81BA;    // $A1B3
    goto L_81BB;    // $A1B7
}

// Decompiled from source/2-asm-vm\bank25.asm sub $A1BC
// $A1BC court_cond_2
// (body @ $A1C1)

word court_cond_2(void) {
    if (!((quest_flags & 8))) goto L_81D7;    // $A1C6
    if ((quest_flags & 2)) goto L_81D7;    // $A1CE
    if (court_leaf_8176()) goto L_81DB;    // $A1D4
    goto L_81DC;    // $A1D8
}

// Decompiled from source/2-asm-vm\bank25.asm sub $A1DD
// $A1DD court_cond_3
// (body @ $A1E2)

word court_cond_3(void) {
    if (!((quest_flags & 8))) goto L_81F8;    // $A1E7
    if (!((quest_flags & 2))) goto L_81F8;    // $A1EF
    if (court_leaf_8176()) goto L_81FC;    // $A1F5
    goto L_81FD;    // $A1F9
}

// Decompiled from source/2-asm-vm\bank25.asm sub $A1FE
// $A1FE draw_court_box
// (body @ $A203)

word draw_court_box(void) {
    return draw_box_variant(1, 1);    // $A209
}

// Decompiled from source/2-asm-vm\bank25.asm sub $A20A
// $A20A court_wait_loop
// (body @ $A20F)

word court_wait_loop(void) {
    do {    // $A20F
        local11 = mem_6F72;    // $A212
    } while (!(court_leaf_81dd()));    // $A216
    mem_7267 = 255;    // $A21C
    return 1;    // $A220
}

// Decompiled from source/2-asm-vm\bank25.asm sub $A278
// $A278 court_turnin_legendary
// (body @ $A27D)

word court_turnin_legendary(void) {
    local10 = mem_6F72;    // $A280
    local11 = 0x666D;    // $A284
    if (!((quest_flags & 8))) goto L_834F;    // $A28A
    if (!((quest_flags & 1))) goto L_834F;    // $A292
    if ((quest_target_port != current_port)) goto L_834F;    // $A29E
    if (mem_7053) goto L_834F;    // $A2A4
    if (!((*(word*)((local11 + 2)) & 0x8000))) goto L_834F;    // $A2AE
    court_leaf_81fe();    // $A2B1
    win_render_syscall(1);    // $A2B5
    draw_string(0x9263, 0);    // $A2BD
    draw_string_banked(record_base_d604(mem_7055));    // $A2CA
    draw_string(0x9278, 0);    // $A2D2
    win_close();    // $A2D6
    if (!(((unsigned)mem_6F74 < (unsigned)9))) goto L_82F8;    // $A2DE
    draw_window();    // $A2E1
    draw_string(0x9290, 1);    // $A2E8
    mem_6F74 = (mem_6F74 + 1);    // $A2F2
    call_court_check_gold();    // $A2F5
    mem_7058 = (((load_operand16_14(3) + 3) * mem_6F74) * 0x03E8);    // $A308
    draw_window();    // $A30B
    draw_string(0x92B1, 1);    // $A312
    call_court_check_gold();    // $A316
    mem_6F70 = max_s16((((unsigned)mem_7058 / (unsigned)0x03E8) + mem_6F70), 0x2710);    // $A32C
    *(word*)(((((unsigned)mem_7055 >> 4) << 1) + local11)) = (*(word*)(((((unsigned)mem_7055 >> 4) << 1) + local11)) & ((1 << (mem_7055 & 15)) ^ 1));    // $A348
    quest_flags = 0;    // $A34A
    return 1;    // $A34E
}

// Decompiled from source/2-asm-vm\bank25.asm sub $A484
// $A484 draw_record_name
// (body @ $A489)

word draw_record_name(word arg1) {
    draw_string_banked(*(word*)((((*(byte*)&arg1 + 20) * 7) + 0x6542)));    // $A496
    *(byte*)(fp - 1) = ((unsigned)(*(byte*)&arg1 - 1) / (unsigned)5);    // $A4A0
    if (!((*(byte*)(fp - 1) == 3))) goto L_84B2;    // $A4A8
    goto L_84B6;    // $A4AF
}

// Decompiled from source/2-asm-vm\bank25.asm sub $A4CD
// $A4CD court_story_peace
// (body @ $A4D2)

word court_story_peace(void) {
    local11 = mem_6F72;    // $A4D5
    if (!(court_leaf_81dd())) goto L_8549;    // $A4D9
    court_leaf_81fe();    // $A4DC
    draw_window();    // $A4DF
    draw_string(0x943F, 1);    // $A4E6
    if (!(((unsigned)mem_6F74 < (unsigned)9))) goto L_8509;    // $A4EF
    call_court_check_gold();    // $A4F2
    draw_window();    // $A4F5
    draw_string(0x9467, 1);    // $A4FC
    mem_6F74 = (mem_6F74 + 1);    // $A506
    mem_7058 = (((load_operand16_14(3) + 3) * mem_6F74) * 0x03E8);    // $A519
    call_court_check_gold();    // $A51C
    draw_window();    // $A51F
    draw_string(0x9487, 1);    // $A526
    mem_6F70 = max_s16((((unsigned)mem_7058 / (unsigned)0x03E8) + mem_6F70), 0x2710);    // $A53D
    quest_flags = 0;    // $A541
    call_court_check_gold();    // $A544
    return 1;    // $A548
}

// Decompiled from source/2-asm-vm\bank25.asm sub $A626
// $A626 court_deliver_letter
// (body @ $A62B)

word court_deliver_letter(void) {
    draw_box_variant((current_port + 1), 1);    // $A631
    win_render_syscall(1);    // $A636
    draw_string(0x95F1, 0);    // $A63E
    draw_string_banked(mem_6542);    // $A645
    draw_string(0x9608, 0);    // $A64D
    win_close();    // $A651
    draw_box_variant(0, 0);    // $A656
    win_render_syscall(1);    // $A65B
    draw_string(0x9621, 1);    // $A663
    call_court_check_gold();    // $A667
    draw_window();    // $A66A
    draw_string(0x965A, 1);    // $A671
    call_court_check_gold();    // $A675
    draw_box_variant((current_port + 1), 1);    // $A67E
    draw_window();    // $A682
    draw_string(0x9689, 0);    // $A689
    win_close();    // $A68D
    quest_flags = (quest_flags | 2);    // $A696
    return quest_flags;    // $A699
}

// Decompiled from source/2-asm-vm\bank25.asm sub $A69A
// $A69A court_reward_service
// (body @ $A69F)

word court_reward_service(void) {
    local11 = mem_6F72;    // $A6A2
    if (!(court_leaf_81dd())) goto L_8716;    // $A6A6
    court_leaf_81fe();    // $A6A9
    draw_window();    // $A6AC
    draw_string(0x96CB, 1);    // $A6B3
    if (!(((unsigned)mem_6F74 < (unsigned)9))) goto L_86D6;    // $A6BC
    call_court_check_gold();    // $A6BF
    draw_window();    // $A6C2
    draw_string(0x96F7, 1);    // $A6C9
    mem_6F74 = (mem_6F74 + 1);    // $A6D3
    mem_7058 = (((load_operand16_14(3) + 3) * mem_6F74) * 0x03E8);    // $A6E6
    call_court_check_gold();    // $A6E9
    draw_window();    // $A6EC
    draw_string(0x9716, 1);    // $A6F3
    mem_6F70 = max_s16((((unsigned)mem_7058 / (unsigned)0x03E8) + mem_6F70), 0x2710);    // $A70A
    quest_flags = 0;    // $A70E
    call_court_check_gold();    // $A711
    return 1;    // $A715
}

// Decompiled from source/2-asm-vm\bank25.asm sub $A814
// $A814 court_scan_records
// (body @ $A819)

word court_scan_records(void) {
    *(byte*)(fp - 3) = scan_records_6c90_flag(0, &local8);    // $A822
    goto L_889A;    // $A826
}

// Decompiled from source/2-asm-vm\bank25.asm sub $A8AA
// $A8AA court_eval_quest
// (body @ $A8AF)

word court_eval_quest(void) {
    local9 = mem_6F72;    // $A8B2
    if (!(court_leaf_81bc())) goto L_8982;    // $A8B6
    if (!(sum_matching_6aa4(mem_7055))) goto L_8982;    // $A8C1
    draw_box_variant(1, 1);    // $A8C6
    draw_window();    // $A8CA
    draw_string(0x9894, 1);    // $A8D1
    call_court_check_gold();    // $A8D5
    draw_window();    // $A8D8
    if (!(((unsigned)sum_matching_6aa4(mem_7055) < (unsigned)mem_7056))) goto L_8931;    // $A8E7
    draw_string(0x98BB, 1);    // $A8EE
    if (!(prompt_confirm())) goto L_8907;    // $A8F5
    draw_window();    // $A8F8
    draw_string(0x98F1, 1);    // $A8FF
    return call_court_check_gold();    // $A906
}

// Decompiled from source/2-asm-vm\bank25.asm sub $ABBB
// $ABBB court_port_support
// (body @ $ABC0)

word court_port_support(void) {
    syscall_id09_syscall_banked_blit_m3(2, 6, 28, 14, 0xB51A, 0xB6A2, 231);    // $ABCF
    set_draw_origin(22, 7);    // $ABD6
    draw_string(0x9C15, 0);    // $ABDE
    set_draw_origin(4, 8);    // $ABE4
    return draw_string(0x9C1D, 0);    // $ABF0
}

// Decompiled from source/2-asm-vm\bank25.asm sub $ABF1
// $ABF1 court_init_state
// (body @ $ABF6)

word court_init_state(void) {
    *(word*)(fp - 55) = 0;    // $ABF7
    *(word*)(fp - 57) = 0;    // $ABFA
    goto L_8C28;    // $ABFC
}

// Decompiled from source/2-asm-vm\bank25.asm sub $ACF1
// $ACF1 court_cond_savings
// (body @ $ACF6)

word court_cond_savings(void) {
    *(byte*)(fp - 1) = mem_6F74;    // $ACF9
    *(word*)(fp - 3) = 1;    // $ACFD
    if (!((quest_flags & 8))) goto L_8D28;    // $AD04
    if ((mem_7054 != 1)) goto L_8D28;    // $AD0C
    if ((mem_7055 != current_port)) goto L_8D28;    // $AD18
    if ((quest_flags & 2)) goto L_8D28;    // $AD20
    court_leaf_8626();    // $AD23
    return 0;    // $AD27
}

// Decompiled from source/2-asm-vm\bank25.asm sub $AE19
// $AE19 royal_bank_deposit_full
// (body @ $AE1E)

word royal_bank_deposit_full(void) {
    do {    // $AE1E
        local11 = mem_666B;    // $AE21
    } while (!((0x2710 <= mem_6F70)));    // $AE29
    draw_window();    // $AE2C
    draw_text(0x9D32);    // $AE32
    return 0;    // $AE37
}

// Decompiled from source/2-asm-vm\bank25.asm sub $AEF0
// $AEF0 royal_bank_no_more_gold
// (body @ $AEF5)

word royal_bank_no_more_gold(void) {
    do {    // $AEF5
        local11 = mem_666B;    // $AEF8
        // ext_op ext_op_F1AF
        // ext_op ext_op_F14C
    } while (!(local11));    // $AF04
    draw_box_from_native();    // $AF07
    win_render_syscall(1);    // $AF0B
    draw_text(0x9DF1);    // $AF12
    return 0;    // $AF17
}

// Decompiled from source/2-asm-vm\bank25.asm sub $AFD9
// $AFD9 royal_bank_no_gold
// (body @ $AFDE)

word royal_bank_no_gold(void) {
    local11 = mem_6F70;    // $AFE1
    draw_box_variant(10, 1);    // $AFE4
    local9 = 0;    // $AFE9
    *(byte*)(fp - 3) = 0;    // $AFEB
    if (local11) goto L_9002;    // $AFEF
    win_render_syscall(1);    // $AFF3
    draw_text(0x9ED9);    // $AFFA
    goto L_9015;    // $AFFF
}
