// Decompiled from source/2-asm-vm\bank26.asm sub $8003
// $8003 court_check_crew_request
// (body @ $8008)

word court_check_crew_request(void) {
    local11 = mem_6FCE;    // $800B
    local9 = record_iter_6c90(0);    // $8011
    local8 = mul_field_000b(0);    // $8017
    if ((local9 == local8)) {    // $801B
    draw_box_from_native();    // $801E
    win_render_syscall(1);    // $8022
    draw_text(0x8914);    // $8029
    return 0;    // $802E
    }
L_802F:
    draw_box_variant(10, 1);    // $8031
    win_render_syscall(1);    // $8036
    if ((local11 <= 10)) {    // $803D
    draw_text(0x8930);    // $8043
    return 0;    // $8048
    }
L_8049:
    local7 = (local8 - local9);    // $804C
    local10 = max_s16(local7, local11);    // $8053
    draw_field_m1(0x8963, local10);    // $8058
    local6 = draw_labeled_value_1(0x898E, 1, local10);    // $8065
    if (((local6 == 1))) return 0;    // $806A
    mem_6FCE = (mem_6FCE - local6);    // $8075
    draw_window();    // $8078
    draw_text(0x8997);    // $807E
    draw_box_from_native();    // $8082
    draw_window();    // $8085
    draw_text(0x89BA);    // $808B
    blit_alloc_tiles(2, 2, 28, 18, 0);    // $8096
    *(word*)(fp - 15) = cargo_pick_ship(local6, 9, 7);    // $80A8
    blit_free_tiles(2, 2, 28, 18, 0);    // $80B1
    mem_7063 = 240;    // $80B8
    if ((!((*(word*)(fp - 15) != 1)))) return 0;    // $80BF
    mem_6FCE = (mem_6FCE + local6);    // $80CA
    return *(word*)(fp - 15);    // $80CF
}

// Decompiled from source/2-asm-vm\bank26.asm sub $80D0
// $80D0 court_check_gold_request
// (body @ $80D5)

word court_check_gold_request(void) {
    local11 = mem_6FCC;    // $80D8
    local9 = mem_666B;    // $80DC
    if (((unsigned)local9 > (unsigned)0xE678)) {    // $80E2
    draw_box_from_native();    // $80E5
    draw_window();    // $80E8
    draw_text(0x89DA);    // $80EE
    return 0;    // $80F3
    }
L_80F4:
    draw_box_variant(10, 1);    // $80F6
    win_render_syscall(1);    // $80FB
    if ((local11 <= 100)) {    // $8103
    draw_text(0x89F7);    // $8109
    return 0;    // $810E
    }
L_810F:
    if ((local11 >= 0x1770)) {    // $8114
    phi_val_812d = (0xEA60 - local9);    // $811C
    } else {
    phi_val_812d = max_s16((0xEA60 - local9), (local11 * 10));    // $8129
    }
L_812D:
    local10 = phi_val_812d;    // $812D
    local10 = (((unsigned)local10 / (unsigned)0x03E8) * 0x03E8);    // $8137
    draw_field_m1(0x8A29, local10);    // $813C
    win_open();    // $8140
    draw_window();    // $8143
    local8 = draw_labeled_value_1(0x8A57, 1, local10);    // $814F
    if (((local8 == 1))) return 0;    // $8154
    mem_666B = (mem_666B + local8);    // $815F
    mem_6FCC = (mem_6FCC - (((unsigned)local8 / (unsigned)10) + 1));    // $816B
    draw_window();    // $816E
    draw_text(0x8A6B);    // $8174
    return 0;    // $8179
    }
}

// Decompiled from source/2-asm-vm\bank26.asm sub $817A
// $817A court_eval_state
// (body @ $817F)

word court_eval_state(void) {
    *(byte*)&local9 = mem_6540;    // $8182
    if ((quest_flags & 1)) {    // $818A
    if ((quest_target_port == current_port)) {    // $8196
    if (mem_7053) goto L_81BF;    // $819C
    if ((mem_7054 == 4)) {    // $81A4
    draw_box_variant(10, 1);    // $81A9
    win_render_syscall(1);    // $81AE
    draw_string(0x8C73, 1);    // $81B6
    win_open();    // $81BA
    return 1;    // $81BE
    }
    }
    }
L_81BF:
    if (((unsigned)*(byte*)&local9 < (unsigned)load_operand16_14(100))) {    // $81CB
    if (((unsigned)(load_operand16_14(3) + mem_6F74) < (unsigned)3)) {    // $81DB
    draw_box_variant(10, 1);    // $81E0
    win_render_syscall(1);    // $81E5
    draw_text(0x8CA2);    // $81EC
    draw_box_variant(0, 0);    // $81F2
    win_render_syscall(1);    // $81F7
    draw_text(0x8CE4);    // $81FE
    return 1;    // $8203
    }
    }
L_8204:
    audio_reset_gated(16);    // $8206
    idx_over_20(11);    // $820B
    draw_box_variant(12, 1);    // $8211
    win_render_syscall(1);    // $8216
    draw_string(0x8D0C, 0);    // $821E
    draw_string_banked(mem_6542);    // $8225
    draw_string(0x8D12, 0);    // $822D
    win_close();    // $8231
    draw_box_variant(0, 0);    // $8236
    win_render_syscall(1);    // $823B
    draw_string(0x8D30, 1);    // $8243
    win_open();    // $8247
    *(byte*)(fp - 1) = ((unsigned)*(byte*)&local9 / (unsigned)45);    // $8250
    if (*(byte*)(fp - 1)) {    // $8256
    load_operand16_14((1 << (5 - *(byte*)(fp - 1))));    // $8265
    } else {
    }
L_826D:
    *(byte*)&local11 = 1;    // $826D
    if (((unsigned)*(byte*)&local9 < (unsigned)100)) {    // $8276
    load_operand16_14((((unsigned)(100 - *(byte*)&local9) / (unsigned)10) + 1));    // $8285
    } else {
    }
L_828D:
    *(byte*)(fp - 7) = 0;    // $828D
    draw_box_variant(12, 1);    // $8292
    draw_window();    // $8296
    draw_string(*(word*)(((*(byte*)(fp - 1) << 1) + 0x8A90)), 1);    // $82A4
    win_open();    // $82A8
    draw_box_variant(0, 0);    // $82AD
    win_render_syscall(1);    // $82B2
    draw_string(*(word*)(((*(byte*)(fp - 1) << 1) + 0x8B4F)), 1);    // $82C1
    win_open();    // $82C5
    *(byte*)(fp - 3) = (((unsigned)mem_666B < (unsigned)0x0190) ? 2 : 3);    // $82D7
    draw_box_frame();    // $82DA
    do {    // $82DD
        *(byte*)&local10 = draw_tile_grid(8, 21, 0, 2, 0x8C53, *(byte*)(fp - 3), 3);    // $82EE
    } while ((*(byte*)&local10 == 255));    // $82F8
    if (*(byte*)&local10) goto L_8356;    // $82FE
    draw_box_variant(12, 1);    // $8303
    win_render_syscall(1);    // $8308
    draw_string(0x8D54, 1);    // $8310
    win_open();    // $8314
    goto L_834A;    // $831A
L_831D:
    draw_box_variant(0, 0);    // $831F
    draw_window();    // $8323
    draw_string(0x8D75, 1);    // $832A
    win_open();    // $832E
    draw_box_variant(12, 1);    // $8333
    win_render_syscall(1);    // $8338
    draw_string(0x8D97, 1);    // $8340
    win_open();    // $8344
L_834A:
    *(byte*)(fp - 5) = (((unsigned)(mem_6BC0 * 15) / (unsigned)100) + 5);    // $8350
    goto L_845E;    // $8353
L_8356:
    if ((*(byte*)&local10 == 1)) goto L_831D;    // $835B
    *(word*)(fp - 11) = 0x666D;    // $8361
    *(byte*)&local8 = 0;    // $8364
    while (((unsigned)*(byte*)(fp - 9) <= (unsigned)30)) {    // $838E
        if ((*(word*)(((((unsigned)*(byte*)(fp - 9) >> 4) << 1) + *(word*)(fp - 11))) & (1 << (*(byte*)(fp - 9) & 15)))) {    // $8381
        *(byte*)&local8 = *(byte*)(fp - 9);    // $8387
        }
L_838A:
        *(byte*)(fp - 9) = (*(byte*)(fp - 9) + 1);    // $838E
    }
    if (*(byte*)&local8) {    // $839D
    draw_box_variant(0, 0);    // $83A2
    win_render_syscall(1);    // $83A7
    draw_string(0x8DAF, 0);    // $83AF
    draw_string_banked(record_base_d604(*(byte*)&local8));    // $83BC
    draw_string(0x8DCC, 0);    // $83C4
    win_close();    // $83C8
    draw_box_variant(12, 1);    // $83CD
    draw_window();    // $83D1
    draw_string(0x8DDC, 1);    // $83D8
    *(byte*)(fp - 5) = (record_field_byte(((*(byte*)(fp - 3) << 1) + 0xB825)) * 40);    // $83EC
    *(word*)(((((unsigned)*(byte*)&local8 >> 4) << 1) + *(word*)(fp - 11))) = (*(word*)(((((unsigned)*(byte*)&local8 >> 4) << 1) + *(word*)(fp - 11))) & ((1 << (*(byte*)&local8 & 15)) ^ 1));    // $8409
    } else {
    draw_box_variant(0, 0);    // $840F
    draw_window();    // $8413
    draw_string(0x8DFA, 1);    // $841A
    win_open();    // $841E
    mem_666B = (mem_666B - 0x012C);    // $8429
    draw_box_variant(12, 1);    // $842E
    if (*(byte*)(fp - 7)) goto L_844A;    // $8435
    win_render_syscall(1);    // $8439
    draw_string(0x8E1A, 1);    // $8441
    goto L_8458;    // $8447
L_844A:
    win_render_syscall(1);    // $844B
    draw_string(0x8E29, 1);    // $8453
L_8458:
    *(byte*)(fp - 5) = 0;    // $8458
    }
L_845B:
L_845E:
    win_open();    // $845B
    if (((unsigned)*(byte*)&local9 < (unsigned)200)) {    // $8465
    mem_6540 = max_s16(((load_operand16_14(5) + *(byte*)&local9) + *(byte*)(fp - 5)), 200);    // $8481
    }
L_8484:
    if (*(byte*)&local11) goto L_84B3;    // $8487
    if ((mem_6FCC < 0x1388)) {    // $8491
    mem_6FCC = (mem_6FCC + 0x03E8);    // $849C
    }
L_849F:
    draw_box_variant(12, 1);    // $84A1
    draw_window();    // $84A5
    draw_string(0x8E54, 0);    // $84AC
L_84B3:
    win_close();    // $84B0
    draw_window();    // $84B3
    draw_string(0x8E95, 1);    // $84BA
    win_open();    // $84BE
    audio_reset_gated(16);    // $84C3
    return 1;    // $84C8
    }
    }
    }
}

// Decompiled from source/2-asm-vm\bank26.asm sub $84C9
// $84C9 court_pose_select
// (body @ $84CE)

word court_pose_select(word arg1) {
    if (current_port) goto L_84D8;    // $84D1
    phi_84ee_0 = 6;    // $84D5
    goto L_84EE;    // $84D5
L_84D8:
    if (((unsigned)*(byte*)&arg1 > (unsigned)11)) {    // $84DD
    if (!(((unsigned)*(byte*)&arg1 < (unsigned)31))) goto L_84ED;    // $84E6
    phi_84ee_0 = 8;    // $84EA
    } else {
    phi_84ee_0 = 7;    // $84ED
    }
L_84EE:
    idx_over_20(phi_84ee_0);    // $84EE
    return audio_param_gated(1);    // $84F7
    }
}

// Decompiled from source/2-asm-vm\bank26.asm sub $84F8
// $84F8 court_draw_scene
// (body @ $84FD)

word court_draw_scene(void) {
    local11 = ((current_port * 19) + 0xAFD8);    // $8507
    syscall_id08_syscall_queue_ppu_transfer(1, 20, 30, 8, 0, 0);    // $8511
    reset_chr_alloc();    // $8515
    syscall_id09_syscall_banked_blit_m3(6, 21, 20, 5, 0xB452, 0xB4B6, 231);    // $8528
    set_tile_cursor(8, 22);    // $852F
    return draw_string(0x8F26, 1);    // $853B
}

// Decompiled from source/2-asm-vm\bank26.asm sub $853C
// $853C lookup_title_8f04
// (body @ $8541)

word lookup_title_8f04(word arg1) {
    if (((unsigned)*(byte*)&arg1 >= (unsigned)50)) {    // $8547
    local11 = *(byte*)((*(byte*)&arg1 + 0x8F04));    // $8552
    return local11;    // $8554
    }
L_8555:
    if ((!(((*(byte*)&arg1 != 2) || (*(byte*)&arg1 == 12))))) return 5;    // $8562
    local10 = ((*(byte*)&arg1 * 5) + 0xB50A);    // $8570
    local11 = record_field_byte(local10);    // $8576
    return local11;    // $8578
}

// Decompiled from source/2-asm-vm\bank26.asm sub $8579
// $8579 draw_court_sprite
// (body @ $857E)

word draw_court_sprite(word arg1, word arg2, word arg3) {
    local10 = (((unsigned)arg1 < (unsigned)3) ? 0 : (arg1 + -2));    // $858B
    return syscall_id09_syscall_banked_blit_m3(*(byte*)(((arg1 << 1) + 0x8FEA)), *(byte*)(((arg1 << 1) + 0x8FEB)), *(byte*)(((local10 << 1) + 0x8FF6)), *(byte*)(((local10 << 1) + 0x8FF7)), *(word*)((((arg2 << 4) + ((local10 << 1) << 1)) + 0x8F4A)), *(word*)((((arg2 << 4) + ((local10 << 1) << 1)) + 0x8F4C)), arg3);    // $85D0
}

// Decompiled from source/2-asm-vm\bank26.asm sub $85D1
// $85D1 draw_court_portrait
// (body @ $85D6)

word draw_court_portrait(word arg1) {
    *(word*)(fp - 9) = 225;    // $85D9
    *(word*)(fp - 5) = lookup_title_8f04(*(byte*)&arg1);    // $85E3
    if (((*(word*)(fp - 5) == 3) || (*(word*)(fp - 5) == 5))) {    // $85F0
    *(word*)(fp - 9) = 224;    // $85F6
    }
L_85F8:
    syscall_id09_syscall_banked_blit_m3(2, 6, 28, 14, *(word*)((((*(word*)(fp - 5) << 1) << 1) + 0x8FCA)), *(word*)((((*(word*)(fp - 5) << 1) << 1) + 0x8FCC)), *(word*)(fp - 9));    // $8614
    *(byte*)(fp - 1) = *(byte*)((*(byte*)&arg1 + 0x6F76));    // $8620
    *(word*)(fp - 3) = 0;    // $8624
    while (1) {    // $8626
L_8626:
        if (((unsigned)*(byte*)&arg1 < (unsigned)50)) {    // $862C
        if ((*(word*)(fp - 3) == 1)) {    // $8633
        if ((*(byte*)(fp - 1) & 4)) goto L_8671;    // $863B
        phi_8643_0 = 1;    // $8642
        phi_8643_1 = *(word*)(fp - 5);    // $8642
        phi_8643_2 = *(word*)(fp - 9);    // $8642
L_8643:
L_8647:
        draw_court_sprite(phi_8643_0, phi_8643_1, phi_8643_2);    // $8643
        *(word*)(fp - 3) = (*(word*)(fp - 3) + 1);    // $864A
        if (((unsigned)*(word*)(fp - 3) < (unsigned)9)) continue;    // $8650
        syscall_id06_syscall_set_sprite_block(((*(word*)(fp - 5) << 4) + 0x8EA6), 0, 16);    // $8660
        return syscall_id06_syscall_set_sprite_block(0xF376, 16, 16);    // $8670
        }
L_8671:
        if (!((*(word*)(fp - 3) == 2))) goto L_8689;    // $8675
        if (!((*(byte*)(fp - 1) & 16))) goto L_8689;    // $867E
        phi_8643_0 = 5;    // $8686
        phi_8643_1 = *(word*)(fp - 5);    // $8686
        phi_8643_2 = *(word*)(fp - 9);    // $8686
        goto L_8643;    // $8686
L_8689:
        if (!((*(word*)(fp - 3) == 2))) goto L_8647;    // $868D
        goto L_8647;    // $8690
        }
L_8693:
        if (!(((unsigned)*(word*)(fp - 3) < (unsigned)6))) goto L_8647;    // $8697
        phi_8643_0 = *(word*)(fp - 3);    // $86A0
        phi_8643_1 = *(word*)(fp - 5);    // $86A0
        phi_8643_2 = *(word*)(fp - 9);    // $86A0
        goto L_8643;    // $86A0
    }
}

// Decompiled from source/2-asm-vm\bank26.asm sub $86A3
// $86A3 count_record_fields
// (body @ $86A8)

word count_record_fields(word arg1) {
    local10 = arg1;    // $86A9
    local11 = 0;    // $86AB
    while (record_field_byte(local10)) {    // $86B5
        local11 = (local11 + 1);    // $86B1
        local10 = (local10 + 1);    // $86B4
    }
    set_draw_origin(((30 - local11) - ((unsigned)24 / (unsigned)local11)), 4);    // $86CA
    return draw_string_banked(arg1);    // $86D3
}

// Decompiled from source/2-asm-vm\bank26.asm sub $86D4
// $86D4 court_setup_chr
// (body @ $86D9)

word court_setup_chr(void) {
    syscall_id05_syscall_set_chr_banks(0x8FFE);    // $86DD
    local10 = ((current_port * 19) + 0xAFD8);    // $86EB
    if ((mem_7068 != 1)) {    // $86F1
    mem_7068 = 1;    // $86F5
    mem_7069 = 0;    // $86F9
    }
L_86FC:
    upload_sprite_block();    // $86FC
    reset_all_chr();    // $86FF
    court_pose_select(mem_6663);    // $8706
    syscall_id09_syscall_banked_blit_m3(2, 2, 28, 4, 0xA4DC, 0xA54C, 225);    // $8719
    count_record_fields(local10);    // $871E
    draw_year();    // $8722
    draw_month();    // $8725
    draw_day();    // $8728
    opt_loop_8683();    // $8732
    draw_court_portrait(current_port);    // $873A
    return court_draw_scene();    // $8741
}

// Decompiled from source/2-asm-vm\bank26.asm sub $8742
// $8742 court_request_crew
// (body @ $8747)

word court_request_crew(void) {
    draw_box_variant(0, 0);    // $8749
    win_render_syscall(1);    // $874E
    draw_text(0x900C);    // $8755
    if (!(((unsigned)*(byte*)(((current_port * 14) + 0x67BD)) < (unsigned)20))) goto L_8771;    // $8766
    if (load_operand16_14(3)) goto L_87B6;    // $876E
L_8771:
    if (((*(word*)(((current_port * 14) + 0x67B2)) / 2) < 100)) goto L_87B6;    // $8780
    // ext_op ext_op_F1AF
    // ext_op ext_op_F17A
    if (mem_666B) goto L_87B6;    // $8790
    if (((unsigned)mem_666B < (unsigned)(100 - load_operand16_14(20)))) goto L_87B6;    // $87A4
    if (!(((unsigned)mem_6B86 > (unsigned)(load_operand16_14(3) + 4)))) goto L_87DA;    // $87B3
L_87B6:
    if (!(((unsigned)mem_6B86 > (unsigned)4))) goto L_87C8;    // $87BB
    phi_87cf_0 = 0x902D;    // $87C5
    phi_87cf_1 = 1;    // $87C5
    draw_window();    // $87BE
    goto L_87CF;    // $87C5
L_87C8:
    phi_87cf_0 = 0x9059;    // $87CC
    phi_87cf_1 = 1;    // $87CC
L_87CF:
    draw_window();    // $87C8
    draw_string(phi_87cf_0, phi_87cf_1);    // $87CF
    scale_6b88(1);    // $87D4
    return 1;    // $87D9
L_87DA:
    *(byte*)(fp - 1) = 0;    // $87DB
    goto L_87FE;    // $87DF
L_87E2:
    if (!((mem_7066 & *(byte*)((*(byte*)&local11 + 0x9006))))) goto L_87FA;    // $87F0
    *(byte*)(fp - 1) = (*(byte*)(fp - 1) + 1);    // $87F7
L_87FA:
L_87FE:
    *(byte*)&local11 = (*(byte*)&local11 + 1);    // $87FE
    if (((unsigned)*(byte*)&local11 < (unsigned)6)) goto L_87E2;    // $8806
    if (((unsigned)*(byte*)(fp - 1) < (unsigned)3)) goto L_881A;    // $880E
    if (load_operand16_14(30)) goto L_8841;    // $8817
L_881A:
    if (!(((unsigned)*(byte*)(fp - 1) < (unsigned)3))) goto L_8828;    // $881F
    goto L_882E;    // $8825
L_8828:
L_882E:
    *(byte*)(fp - 1) = (load_operand16_14(2) + 1);    // $882E
    draw_window();    // $8831
    draw_field_m1(0x9093, *(byte*)(fp - 1));    // $883B
    return 1;    // $8840
L_8841:
    return 0;    // $8842
}

// Decompiled from source/2-asm-vm\bank26.asm sub $8843
// $8843 court_request_gold
// (body @ $8848)

word court_request_gold(void) {
    draw_box_variant(0, 0);    // $884A
    win_render_syscall(1);    // $884F
    draw_text(0x90BB);    // $8856
    if (!(((unsigned)*(byte*)(((current_port * 14) + 0x67BD)) < (unsigned)20))) goto L_8872;    // $8867
    if (load_operand16_14(2)) goto L_889D;    // $886F
L_8872:
    if (((unsigned)mem_666B < (unsigned)(60 - load_operand16_14(10)))) goto L_889D;    // $8882
    // ext_op ext_op_F1AF
    // ext_op ext_op_F17A
    if (mem_666B) goto L_889D;    // $8892
    if (((unsigned)mem_6B86 > (unsigned)7)) {    // $889A
L_889D:
    if (((unsigned)mem_6B86 > (unsigned)5)) {    // $88A2
    phi_88b6_0 = 0x90ED;    // $88AC
    phi_88b6_1 = 1;    // $88AC
    draw_window();    // $88A5
    } else {
    phi_88b6_0 = 0x9118;    // $88B3
    phi_88b6_1 = 1;    // $88B3
    }
L_88B6:
    draw_window();    // $88AF
    draw_string(phi_88b6_0, phi_88b6_1);    // $88B6
    scale_6b88(1);    // $88BB
    return 1;    // $88C0
L_88C1:
    return 0;    // $88C2
    }
    }
}

// Decompiled from source/2-asm-vm\bank26.asm sub $88C3
// $88C3 court_menu
// (body @ $88C8)

word court_menu(void) {
    draw_box_from_native();    // $88C8
    win_render_syscall(1);    // $88CC
    draw_string(0x9161, 1);    // $88D4
    *(byte*)&local11 = draw_tile_grid(8, 23, 8, 1, 0x9148, 2, 1);    // $88E6
    if ((*(byte*)&local11 != 255)) {    // $88F0
    if ((*(*(word*)(((*(byte*)&local11 << 1) + 0x914C))))()) {    // $88FD
    *(byte*)&local11 = 255;    // $8903
    } else {
    mem_7063 = 240;    // $890C
    }
L_890F:
    return *(byte*)&local11;    // $8912
    }
    }
}
