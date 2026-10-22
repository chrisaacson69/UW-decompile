// Decompiled from source/2-asm-vm\bank21.asm sub $8003
// $8003 outfit_sprites
// (body @ $8008)

word outfit_sprites(void) {
    return syscall_id06_syscall_set_sprite_block(0x9258, 8, 8);    // $8012
}

// Decompiled from source/2-asm-vm\bank21.asm sub $8013
// $8013 draw_ship_icon_21
// (body @ $8018)

word draw_ship_icon_21(word arg1, word arg2) {
    local11 = ((((unsigned)*(byte*)&arg1 % (unsigned)3) * 9) + 3);    // $8020
    local10 = ((((unsigned)*(byte*)&arg1 / (unsigned)3) * 7) + 1);    // $8029
    local9 = record_base_6b1c((*(byte*)&arg1 + 5));    // $8033
    draw_ship_icon_class(local11, (local10 + 6), (*(byte*)(((*(byte*)&arg2 * 7) + 0x6C96)) & 15));    // $804C
    set_tile_cursor(local11, (local10 + 11));    // $8054
    return draw_string_banked(record_base_6b1c((*(byte*)(((*(byte*)&arg2 * 7) + 0x6C96)) & 15)));    // $806E
}

// Decompiled from source/2-asm-vm\bank21.asm sub $806F
// $806F outfit_clear
// (body @ $8074)

word outfit_clear(word arg1) {
    mem_7064 = -1;    // $8076
    clear_two_ppu_regions();    // $8079
    local11 = scan_records_6c90_flag(0, arg1);    // $8082
    outfit_sprites();    // $8083
    phi_val_8096 = 0;    // $8087
    while (((unsigned)local10 < (unsigned)local11)) {    // $8096
        draw_ship_icon_21(local10, *(byte*)((arg1 + local10)));    // $8090
        phi_val_8096 = (local10 + 1);    // $8095
        local10 = phi_val_8096;    // $8096
    }
    return local11;    // $809E
}

// Decompiled from source/2-asm-vm\bank21.asm sub $809F
// $809F draw_stat_durability_21
// (body @ $80A4)

word draw_stat_durability_21(word arg1) {
    set_draw_origin(3, 12);    // $80A6
    return draw_field(0x9260, *(byte*)(((arg1 * 7) + 0x6C90)), record_proc_6c96_1(arg1));    // $80C0
}

// Decompiled from source/2-asm-vm\bank21.asm sub $80C1
// $80C1 draw_stat_handling_21
// (body @ $80C6)

word draw_stat_handling_21(word arg1) {
    set_draw_origin(3, 14);    // $80C8
    return draw_field(0x927B, *(byte*)(((arg1 * 7) + 0x6C91)), record_proc_6c96_2(arg1));    // $80E2
}

// Decompiled from source/2-asm-vm\bank21.asm sub $80E3
// $80E3 draw_stat_power_21
// (body @ $80E8)

word draw_stat_power_21(word arg1) {
    set_draw_origin(3, 13);    // $80EA
    return draw_field(0x9296, *(byte*)(((arg1 * 7) + 0x6C92)), record_proc_6c96_3(arg1));    // $8104
}

// Decompiled from source/2-asm-vm\bank21.asm sub $8105
// $8105 draw_stat_cargo_21
// (body @ $810A)

word draw_stat_cargo_21(word arg1) {
    set_draw_origin(3, 15);    // $810C
    return draw_field(0x92B1, record_base_6aa4_b(arg1), record_field_word((record_base_6b1c((*(byte*)(((arg1 * 7) + 0x6C96)) & 15)) + 18)));    // $8134
}

// Decompiled from source/2-asm-vm\bank21.asm sub $8135
// $8135 draw_stat_total_load
// (body @ $813A)

word draw_stat_total_load(word arg1) {
    set_draw_origin(3, 18);    // $813D
    return draw_field(0x92CC, record_read_6c90(arg1), record_proc_6c96_4(arg1));    // $8154
}

// Decompiled from source/2-asm-vm\bank21.asm sub $8155
// $8155 draw_stat_crew_21
// (body @ $815A)

word draw_stat_crew_21(word arg1) {
    set_draw_origin(3, 16);    // $815D
    draw_string(0x92E5, 0);    // $8165
    draw_field(0x92F9, *(word*)(((arg1 * 7) + 0x6C94)));    // $8175
    return draw_field(0x92FE, *(word*)((record_base_6b1c((*(byte*)(((arg1 * 7) + 0x6C96)) & 15)) + 15)));    // $8192
}

// Decompiled from source/2-asm-vm\bank21.asm sub $8193
// $8193 outfit_ship_line
// (body @ $8198)

word outfit_ship_line(word arg1) {
    local9 = ((arg1 * 24) + 0x6AA4);    // $81A0
    local10 = ((arg1 * 7) + 0x6C90);    // $81A8
    local11 = record_base_6b1c((*(byte*)((local10 + 6)) & 15));    // $81B3
    clear_two_ppu_regions();    // $81B4
    syscall_id09_syscall_banked_blit_m3(1, 6, 30, 14, 0xA792, 0xA936, 232);    // $81C6
    outfit_sprites();    // $81CA
    draw_ship_icon_class(3, 7, (*(byte*)((local10 + 6)) & 15));    // $81DC
    set_draw_origin(15, 7);    // $81E2
    draw_field(0x9302, local11);    // $81EA
    set_draw_origin(15, 9);    // $81F0
    draw_string(0x930B, 0);    // $81F8
    set_draw_origin(15, 10);    // $81FE
    draw_string_banked(*(word*)(((*(byte*)(((arg1 * 24) + 0x6AA4)) * 7) + 0x6542)));    // $8213
    opt_passthru_8187(11, 8, *(byte*)(((arg1 * 24) + 0x6ABB)));    // $822A
    draw_stat_durability_21(arg1);    // $822F
    draw_stat_power_21(arg1);    // $8234
    draw_stat_handling_21(arg1);    // $8239
    draw_stat_cargo_21(arg1);    // $823E
    draw_stat_total_load(arg1);    // $8243
    draw_stat_crew_21(arg1);    // $8248
    set_draw_origin(3, 17);    // $824F
    draw_string(0x9316, 0);    // $8257
    draw_string_banked(record_field_word((((((unsigned)*(byte*)((local10 + 6)) >> 4) & 3) << 1) + 0xBC33)));    // $826D
    draw_string(0x931D, 0);    // $8275
    set_draw_origin(22, 17);    // $827D
    return draw_field(0x9320, *(byte*)((local10 + 3)), record_field_byte((local11 + 17)));    // $8295
}

// Decompiled from source/2-asm-vm\bank21.asm sub $8296
// $8296 outfit_entry
// (body @ $829B)

word outfit_entry(void) {
    return call_in_bank_dcd1(1, 214, outfit_sprites);    // $82A6
}

// Decompiled from source/2-asm-vm\bank21.asm sub $82A7
// $82A7 outfit_menu
// (body @ $82AC)

word outfit_menu(void) {
    local10 = 0;    // $82AD
    do {    // $82AE
        draw_box_variant(5, 1);    // $82B0
        win_render_syscall(1);    // $82B5
        draw_string(0x9358, 1);    // $82BD
        local11 = draw_tile_grid(8, 23, 7, 2, 0x9328, 5, 2);    // $82CF
        if ((local11 != 255)) {    // $82D5
        local10 = (local10 | (*(*(word*)(((local11 << 1) + 0x9332))))());    // $82E3
        }
L_82E4:
    } while ((local11 != 255));    // $82E9
    return local10;    // $82ED
}

// Decompiled from source/2-asm-vm\bank21.asm sub $82EE
// $82EE outfit_no_gold
// (body @ $82F3)

word outfit_no_gold(void) {
    draw_box_from_native();    // $82F3
    draw_window();    // $82F6
    return draw_text(0x936E);    // $8300
}

// Decompiled from source/2-asm-vm\bank21.asm sub $8301
// $8301 outfit_cancel
// (body @ $8306)

word outfit_cancel(void) {
    draw_window();    // $8306
    return draw_text(0x9388);    // $8310
}

// Decompiled from source/2-asm-vm\bank21.asm sub $8311
// $8311 outfit_rename
// (body @ $8316)

word outfit_rename(void) {
    draw_box_variant(5, 1);    // $8318
    draw_window();    // $831C
    draw_text(0x93AE);    // $8322
    if (((unsigned)mem_666B < (unsigned)10)) {    // $832B
    outfit_no_gold();    // $832E
    return 0;    // $8332
    }
L_8333:
    *(byte*)(fp - 11) = outfit_clear(&local7);    // $833B
    draw_window();    // $833E
    draw_string(0x93D7, 1);    // $8345
    *(byte*)&local6 = modal_input_loop(*(byte*)(fp - 11));    // $8351
    if ((*(byte*)&local6 == 255)) {    // $835B
    outfit_cancel();    // $835E
    clear_two_ppu_regions();    // $8361
    return 0;    // $8365
    }
L_8366:
    outfit_ship_line(*(byte*)((*(byte*)&local6 + &local7)));    // $8371
    draw_window();    // $8375
    draw_string(0x93EA, 1);    // $837C
    local5 = prompt_confirm();    // $8383
    if (local5) goto L_8392;    // $8385
    draw_window();    // $8388
L_8392:
    draw_text(0x93FD);    // $838E
    if (!(local5)) goto L_8333;    // $8393
    draw_window();    // $8396
    draw_text(0x9416);    // $839C
    reset_all_chr();    // $83A0
    reset_chr_alloc();    // $83A3
    syscall_id06_syscall_set_sprite_block(0x939E, 0, 16);    // $83AD
L_83C5:
    syscall_id09_syscall_banked_blit_m3(1, 2, 30, 26, 0xB2DE, 0xB5EA, 226);    // $83C1
L_83D9:
    syscall_id09_syscall_banked_blit_m3(2, 22, 28, 6, 0xA004, 0xA0AC, 231);    // $83D5
    if (!(cargo_load_data(7, record_base_6b1c(*(byte*)((*(byte*)&local6 + &local7)))))) goto L_83D9;    // $83F5
    set_tile_cursor(5, 25);    // $83FB
    draw_string(0x9431, 1);    // $8403
    if (!(prompt_confirm())) goto L_83C5;    // $840A
    reset_chr_alloc();    // $840D
    reset_all_chr();    // $8410
    mem_666B = (mem_666B - 10);    // $8419
    return 1;    // $841D
}

// Decompiled from source/2-asm-vm\bank21.asm sub $841E
// $841E outfit_load_guns
// (body @ $8423)

word outfit_load_guns(void) {
L_8429:
    draw_box_variant(5, 1);    // $8425
    *(byte*)&local7 = outfit_clear(&local2);    // $8431
    draw_window();    // $8434
    draw_string(0x945D, 1);    // $843B
    *(byte*)(fp - 21) = modal_input_loop(*(byte*)&local7);    // $8447
    if (!((*(byte*)(fp - 21) == 255))) goto L_845C;    // $8451
    outfit_cancel();    // $8454
    clear_two_ppu_regions();    // $8457
    return 0;    // $845B
L_845C:
    *(byte*)&local8 = *(byte*)((*(byte*)(fp - 21) + &local2));    // $8466
    outfit_ship_line(*(byte*)&local8);    // $846D
    *(byte*)(fp - 7) = 0;    // $8472
    local0 = ((*(byte*)&local8 * 7) + 0x6C90);    // $847E
    if (!(*(byte*)((local0 + 3)))) goto L_848F;    // $8482
    *(byte*)(fp - 7) = (((unsigned)*(byte*)((local0 + 6)) >> 4) & 3);    // $848C
L_848F:
    draw_window();    // $848F
    draw_string(0x9478, 1);    // $8496
    if (!(prompt_confirm())) goto L_86A2;    // $849D
    goto L_868F;    // $84A0
L_84A3:
    draw_box_variant(5, 1);    // $84A5
    draw_window();    // $84A9
    draw_string(0x9489, 1);    // $84B0
    *(byte*)(fp - 21) = draw_tile_grid(8, 23, 10, 2, 0x9441, 3, 2);    // $84C2
    if (!((*(byte*)(fp - 21) != 255))) goto L_868F;    // $84CC
    local11 = ((((unsigned)*(byte*)(fp - 21) >> 1) + 1) * (*(byte*)(((current_port * 14) + 0x67BD)) + 50));    // $84E4
    *(byte*)(fp - 9) = record_field_byte((record_base_6b1c((*(byte*)((local0 + 6)) & 15)) + 17));    // $84F6
    if (!(((*(byte*)(fp - 21) + 1) == *(byte*)(fp - 7)))) goto L_8511;    // $8503
    *(byte*)(fp - 9) = (*(byte*)(fp - 9) - *(byte*)((local0 + 3)));    // $850E
L_8511:
    if (!(*(byte*)(fp - 9))) goto L_8682;    // $8514
    draw_window();    // $8517
    draw_string(0x949C, 0);    // $851E
    draw_string_banked(record_field_word((((*(byte*)(fp - 21) + 1) << 1) + 0xBC33)));    // $8531
    draw_field(0x949E, local11);    // $8539
    win_close();    // $853D
    draw_window();    // $8540
    set_tile_cursor(12, 25);    // $8546
    draw_field_m1(0x94BA, mem_666B);    // $8550
    win_render_syscall(1);    // $8555
    local10 = draw_labeled_value_1(0x94CA, 1, *(byte*)(fp - 9));    // $8565
    if ((local10 == 1)) goto L_868F;    // $856A
    if (!(((unsigned)mem_666B < (unsigned)(local10 * local11)))) goto L_857F;    // $8576
    outfit_no_gold();    // $8579
    goto L_868F;    // $857C
L_857F:
    draw_box_frame();    // $857F
    mem_666B = (mem_666B - (local11 * local10));    // $858A
    if (!(((*(byte*)(fp - 21) + 1) == *(byte*)(fp - 7)))) goto L_85C0;    // $8597
    draw_window();    // $859A
    draw_field_m1(0x94D8, local10, ((local10 == 1) ? 0x94FB : 0x94FC));    // $85B1
    goto L_8677;    // $85BD
L_85C0:
    if (!(*(byte*)((local0 + 3)))) goto L_8635;    // $85C3
    draw_window();    // $85C6
    draw_string(0x94FE, 0);    // $85CD
    draw_string_banked(record_field_word((((*(byte*)(fp - 21) + 1) << 1) + 0xBC33)));    // $85E0
    draw_string(0x9500, 0);    // $85E8
    local9 = (((unsigned)((((unsigned)*(byte*)(fp - 7) >> 1) + 1) * (*(byte*)(((current_port * 14) + 0x67BD)) + 50)) >> 1) * *(byte*)((local0 + 3)));    // $8609
    // ext_op ext_op_F1AF
    // ext_op ext_op_F263
    // ext_op ext_op_F1AF
    // ext_op ext_op_F26C
    // ext_op ext_op_F03F
    // ext_op ext_op_F13E
    if (!(mem_666B)) goto L_862C;    // $8620
    phi_val_8626 = 0xEA60;    // $8623
L_8626:
    mem_666B = phi_val_8626;    // $8626
    goto L_865B;    // $8629
L_862C:
    phi_val_8626 = (mem_666B + local9);    // $8632
    goto L_8626;    // $8632
L_8635:
    draw_window();    // $8635
    draw_string(0x9537, 0);    // $863C
    draw_string_banked(record_field_word((((*(byte*)(fp - 21) + 1) << 1) + 0xBC33)));    // $864F
L_865B:
    draw_string(0x9550, 0);    // $8657
    *(byte*)((local0 + 3)) = local10;    // $865F
    *(byte*)((local0 + 6)) = (*(byte*)((local0 + 6)) & 207);    // $8669
L_8677:
    *(byte*)((local0 + 6)) = (*(byte*)((local0 + 6)) | ((*(byte*)(fp - 21) + 1) << 4));    // $8677
    scale_6b88(1);    // $8679
    clear_two_ppu_regions();    // $867D
    return 1;    // $8681
L_8682:
    draw_box_from_native();    // $8682
    draw_window();    // $8685
L_868F:
    draw_text(0x9552);    // $868B
    if ((*(byte*)(fp - 21) != 255)) goto L_84A3;    // $8696
    draw_box_variant(5, 1);    // $869B
L_86A2:
    outfit_cancel();    // $869F
    draw_window();    // $86A2
    draw_text(0x956E);    // $86A8
    goto L_8429;    // $86AC
}

// Decompiled from source/2-asm-vm\bank21.asm sub $86AF
// $86AF outfit_rig_sails
// (body @ $86B4)

word outfit_rig_sails(void) {
L_86B4:
    *(byte*)(fp - 15) = outfit_clear(&local5);    // $86BC
    draw_box_variant(5, 1);    // $86C1
    draw_window();    // $86C5
    draw_string(0x9587, 1);    // $86CC
    *(byte*)&local4 = modal_input_loop(*(byte*)(fp - 15));    // $86D8
    if (!((*(byte*)&local4 == 255))) goto L_86ED;    // $86E2
    outfit_cancel();    // $86E5
    clear_two_ppu_regions();    // $86E8
    return 0;    // $86EC
L_86ED:
    outfit_ship_line(*(byte*)((*(byte*)&local4 + &local5)));    // $86F8
    draw_window();    // $86FC
    draw_string(0x95A0, 1);    // $8703
    local11 = prompt_confirm();    // $870A
    if (local11) goto L_8719;    // $870C
    draw_window();    // $870F
L_8719:
    draw_text(0x95B3);    // $8715
    if (!(local11)) goto L_86B4;    // $871A
    draw_box_frame();    // $871D
    local3 = ((((((unsigned)record_field_byte((record_base_6b1c(*(byte*)((*(byte*)&local4 + &local5))) + 20)) >> 2) & 3) + 1) * (*(byte*)(((current_port * 14) + 0x67BD)) + 20)) * 3);    // $874C
    set_tile_cursor(12, 25);    // $8750
    draw_field_m1(0x95CC, mem_666B);    // $875A
    win_render_syscall(1);    // $875F
    local10 = (((unsigned)record_field_byte((record_base_6b1c(*(byte*)((*(byte*)&local4 + &local5))) + 20)) >> 4) & 1);    // $877D
    draw_field_m1(0x95DC, (local10 ? 0x95FC : 0x95FE), local3);    // $8790
    local11 = prompt_confirm();    // $8797
    if (!(local11)) goto L_87A8;    // $8799
    if (!(local11)) goto L_87C5;    // $879D
    if (!(((unsigned)mem_666B < (unsigned)local3))) goto L_87C5;    // $87A5
L_87A8:
    if (!(local11)) goto L_87B7;    // $87A9
    if (!(((unsigned)mem_666B < (unsigned)local3))) goto L_87B7;    // $87B1
L_87B7:
    outfit_no_gold();    // $87B4
    draw_box_variant(5, 1);    // $87B9
    outfit_cancel();    // $87BD
    clear_two_ppu_regions();    // $87C0
    local11 = 0;    // $87C4
L_87C5:
    if (!(local11)) goto L_86B4;    // $87C6
    draw_window();    // $87C9
    draw_text(0x9600);    // $87CF
    mem_666B = (mem_666B - local3);    // $87D9
    *(byte*)((record_base_6b1c(*(byte*)((*(byte*)&local4 + &local5))) + 20)) = (*(byte*)((record_base_6b1c(*(byte*)((*(byte*)&local4 + &local5))) + 20)) ^ 16);    // $87F3
    local1 = (((unsigned)record_field_byte((record_base_6b1c((*(byte*)(((*(byte*)((*(byte*)&local4 + &local5)) * 7) + 0x6C96)) & 15)) + 20)) >> 5) & 7);    // $8817
    local0 = (record_field_byte((record_base_6b1c((*(byte*)(((*(byte*)((*(byte*)&local4 + &local5)) * 7) + 0x6C96)) & 15)) + 20)) & 3);    // $8839
    *(word*)(fp - 26) = (((unsigned)record_field_byte((record_base_6b1c((*(byte*)(((*(byte*)((*(byte*)&local4 + &local5)) * 7) + 0x6C96)) & 15)) + 20)) >> 2) & 3);    // $885D
    *(word*)(fp - 28) = (((unsigned)record_field_byte((record_base_6b1c((*(byte*)(((*(byte*)((*(byte*)&local4 + &local5)) * 7) + 0x6C96)) & 15)) + 20)) >> 4) & 1);    // $8882
    local2 = ((*(byte*)((*(byte*)&local4 + &local5)) * 7) + 0x6C90);    // $8894
    *(byte*)(local2) = max_s16(*(byte*)(local2), (((local1 * 10) + (local0 * 10)) + 20));    // $88A9
    *(byte*)((local2 + 1)) = max_s16(*(byte*)((local2 + 1)), (((((((20 - local1) * 100) / 20) * (10 - *(word*)(fp - 26))) / 10) * (4 - *(word*)(fp - 28))) / 4));    // $88D2
    *(byte*)((local2 + 2)) = max_s16(*(byte*)((local2 + 2)), ((unsigned)(((unsigned)(((*(word*)(fp - 26) * 10) + 100) * (10 - local1)) / (unsigned)10) * (*(word*)(fp - 28) + 3)) >> 2));    // $88F5
    clear_two_ppu_regions();    // $88F6
    return 0;    // $88FA
}

// Decompiled from source/2-asm-vm\bank21.asm sub $88FB
// $88FB outfit_hire_crew
// (body @ $8900)

word outfit_hire_crew(void) {
    local10 = 1;    // $8901
L_8902:
    *(byte*)(fp - 17) = 1;    // $8903
    draw_box_variant(5, 1);    // $8908
    draw_window();    // $890C
    if (!(local10)) goto L_8920;    // $8910
    draw_string(0x964F, 1);    // $8917
    local10 = 0;    // $891C
    goto L_8928;    // $891D
L_8920:
L_8928:
    draw_string(0x968E, 1);    // $8924
    *(byte*)(fp - 15) = outfit_clear(&local5);    // $8930
    *(byte*)&local4 = modal_input_loop(*(byte*)(fp - 15));    // $893B
    if (!((*(byte*)&local4 == 255))) goto L_8950;    // $8945
    outfit_cancel();    // $8948
    clear_two_ppu_regions();    // $894B
    return 0;    // $894F
L_8950:
    outfit_ship_line(*(byte*)((*(byte*)&local4 + &local5)));    // $895B
    draw_window();    // $895F
    draw_string(0x96A2, 1);    // $8966
    local11 = prompt_confirm();    // $896D
    if (local11) goto L_897C;    // $896F
    draw_window();    // $8972
L_897C:
    draw_text(0x96B5);    // $8978
    if (!(local11)) goto L_8928;    // $897D
    local11 = 0;    // $8981
    // ext_op ext_op_F1AF
    // ext_op ext_op_F14C
    if (!(mem_666B)) goto L_89F9;    // $898F
    if (!((*(word*)(((current_port * 14) + 0x67B2)) > 0x0352))) goto L_89F9;    // $89A0
    if (load_operand16_14(100)) goto L_89F9;    // $89A9
    local2 = (load_operand16_14(0x03E8) + 30000);    // $89B6
    draw_window();    // $89B7
    draw_field_m1(0x96C9, local2);    // $89BE
    if (!(prompt_confirm())) goto L_89EA;    // $89C5
    mem_666B = (mem_666B - local2);    // $89CE
    *(byte*)(((*(byte*)((*(byte*)&local4 + &local5)) * 24) + 0x6ABB)) = 7;    // $89E4
    clear_two_ppu_regions();    // $89E5
    return 1;    // $89E9
L_89EA:
    draw_window();    // $89EA
    draw_text(0x9701);    // $89F0
    clear_two_ppu_regions();    // $89F4
    return 0;    // $89F8
L_89F9:
    local1 = ((*(byte*)((*(byte*)&local4 + &local5)) * 24) + 0x6AA4);    // $8A0A
    *(byte*)(fp - 15) = ((*(word*)(((current_port * 14) + 0x67B2)) / 170) + 1);    // $8A1A
L_8A1D:
    if (!((*(byte*)(fp - 17) != 255))) goto L_8B2F;    // $8A24
    if (local11) goto L_8B2F;    // $8A28
    draw_box_variant(5, 1);    // $8A2D
    draw_window();    // $8A31
    *(byte*)&local3 = *(byte*)((local1 + 23));    // $8A38
    if (!(*(byte*)&local3)) goto L_8A8C;    // $8A3E
    draw_string(0x9733, 1);    // $8A45
    if (!((*(byte*)&local3 == 2))) goto L_8A59;    // $8A4E
L_8A59:
    draw_string(0x9741, 1);    // $8A55
    if (!((*(byte*)&local3 != 7))) goto L_8A7C;    // $8A5E
    *(byte*)&local3 = (*(byte*)&local3 - 1);    // $8A65
    draw_field_m1(0x9743, *(word*)(((*(byte*)&local3 << 1) + 0x961C)));    // $8A75
    goto L_8A84;    // $8A79
L_8A7C:
L_8A84:
    draw_string(0x9747, 1);    // $8A80
L_8A8C:
    draw_string(0x974E, 1);    // $8A88
    draw_string(0x975C, 1);    // $8A90
    blit_block_save(20, 6, 10, 15);    // $8A99
    *(byte*)(fp - 17) = draw_banked_menu(20, 6, *(byte*)(fp - 15), 0x961C, 2);    // $8AAC
    draw_window();    // $8AAF
    draw_box_frame();    // $8AB2
    blit_block_unwind();    // $8AB5
    if (!((*(byte*)(fp - 17) != 255))) goto L_8A1D;    // $8ABF
    local2 = ((1 << *(byte*)(fp - 17)) * 0x03E8);    // $8ACD
    set_tile_cursor(12, 25);    // $8AD1
    draw_field_m1(0x9772, mem_666B);    // $8ADB
    win_render_syscall(1);    // $8AE0
    draw_field_m1(0x9782, local2);    // $8AE8
    if (!(prompt_confirm())) goto L_8A1D;    // $8AEF
    if (!(((unsigned)mem_666B < (unsigned)local2))) goto L_8B00;    // $8AF7
    outfit_no_gold();    // $8AFA
    goto L_8A1D;    // $8AFD
L_8B00:
    draw_window();    // $8B00
    draw_text(0x97A1);    // $8B06
    mem_666B = (mem_666B - local2);    // $8B10
    *(byte*)(((*(byte*)((*(byte*)&local4 + &local5)) * 24) + 0x6ABB)) = (*(byte*)(fp - 17) + 1);    // $8B29
    clear_two_ppu_regions();    // $8B2A
    return 1;    // $8B2E
L_8B2F:
    if ((*(byte*)(fp - 17) != 255)) goto L_8902;    // $8B36
    if (!(local11)) goto L_8902;    // $8B3A
    clear_two_ppu_regions();    // $8B3D
    return local11;    // $8B41
}

// Decompiled from source/2-asm-vm\bank21.asm sub $8B42
// $8B42 outfit_help
// (body @ $8B47)

word outfit_help(void) {
    local11 = 0;    // $8B48
    do {    // $8B49
        draw_box_variant(5, 1);    // $8B4B
        win_render_syscall(1);    // $8B50
        draw_string(0x97F3, 1);    // $8B58
        *(byte*)(fp - 3) = draw_tile_grid(8, 23, 7, 2, 0x97C1, 4, 2);    // $8B6A
        if ((*(byte*)(fp - 3) != 255)) {    // $8B74
        blit_alloc_tiles(2, 2, 28, 18, 0);    // $8B7E
        mem_7063 = 240;    // $8B85
        local11 = (*(*(word*)(((*(byte*)(fp - 3) << 1) + 0x97C9))))();    // $8B92
        call_in_bank_dcd1(1, 222, outfit_sprites);    // $8B9A
        }
L_8BA9:
        blit_free_tiles(2, 2, 28, 18, 0);    // $8BA5
        if ((*(byte*)(fp - 3) == 255)) break;    // $8BB0
    } while (!(local11));    // $8BB4
L_8BB7:
    return local11;    // $8BB8
}

// Decompiled from source/2-asm-vm\bank21.asm sub $8BB9
// $8BB9 outfit_accrue
// (body @ $8BBE)

word outfit_accrue(void) {
    phi_ret_8bf5 = ((unsigned)mem_6F72 < (unsigned)0xC350);    // $8BC5
    if (phi_ret_8bf5) {    // $8BC5
    local11 = ((current_port * 14) + 0x67B2);    // $8BD1
    local10 = ((load_operand16_14(100) + ((unsigned)(*(word*)((local11 + 4)) + *(word*)(local11)) >> 1)) + mem_6F72);    // $8BE9
    mem_6F72 = max_s16(local10, 0xC350);    // $8BF2
    phi_ret_8bf5 = max_s16(local10, 0xC350);    // $8BF2
    }
L_8BF5:
    return phi_ret_8bf5;    // $8BF5
}

// Decompiled from source/2-asm-vm\bank21.asm sub $8BF6
// $8BF6 outfit_port_rec
// (body @ $8BFB)

word outfit_port_rec(word arg1) {
    local11 = ((current_port * 14) + 0x67B2);    // $8C04
    local10 = *(byte*)((((arg1 << 1) << 1) + 0x6FBE));    // $8C0D
    local10 = (((load_operand16_14(3) + ((unsigned)(*(word*)((local11 + 4)) + *(word*)(local11)) / (unsigned)65)) + local10) + 5);    // $8C24
    *(byte*)((((arg1 << 1) << 1) + 0x6FBE)) = max_s16(local10, 100);    // $8C34
    return max_s16(local10, 100);    // $8C35
}

// Decompiled from source/2-asm-vm\bank21.asm sub $8C36
// $8C36 outfit_no_gold_b
// (body @ $8C3B)

word outfit_no_gold_b(void) {
    if (mem_666B) goto L_8C50;    // $8C3E
    draw_box_from_native();    // $8C41
    draw_window();    // $8C44
    draw_text(0x9806);    // $8C4A
    return 0;    // $8C4F
L_8C50:
    if (((unsigned)current_port < (unsigned)3)) {    // $8C55
    draw_box_variant(5, 1);    // $8C5A
    draw_window();    // $8C5E
    draw_field_m1(0x981D, ((current_port == 2) ? 0x984E : 0x9855));    // $8C76
    return 0;    // $8C7B
    }
L_8C7C:
    if ((*(word*)(((current_port * 14) + 0x67B8)) == 0xEA60)) {    // $8C8A
    draw_box_variant(5, 1);    // $8C8F
    draw_window();    // $8C93
    draw_text(0x985A);    // $8C99
    return 0;    // $8C9E
    }
L_8C9F:
    draw_box_variant(5, 1);    // $8CA1
    draw_window();    // $8CA5
    draw_text(0x9896);    // $8CAB
    local11 = (0xEA60 - *(word*)(((current_port * 14) + 0x67B8)));    // $8CBF
    if (((unsigned)mem_666B < (unsigned)local11)) {    // $8CC5
    local11 = mem_666B;    // $8CCB
    }
L_8CCC:
    draw_box_from_native();    // $8CCC
    win_render_syscall(1);    // $8CD0
    draw_field_m1(0x98C8, mem_666B, local11);    // $8CDB
    local10 = draw_labeled_value(0x98F4, 1, local11);    // $8CE8
    if ((local10 == 1)) {    // $8CED
    draw_box_variant(5, 1);    // $8CF2
    draw_window();    // $8CF6
    draw_text(0x98F5);    // $8CFC
    return 0;    // $8D01
    }
L_8D02:
    *(word*)(((current_port * 14) + 0x67B8)) = (*(word*)(((current_port * 14) + 0x67B8)) + local10);    // $8D10
    mem_666B = (mem_666B - local10);    // $8D17
    draw_box_variant(5, 1);    // $8D1C
    draw_window();    // $8D20
    if (((unsigned)local10 < (unsigned)0x03E8)) {    // $8D28
    local9 = ((unsigned)(local10 + 1) / (unsigned)20);    // $8D30
    phi_8d5c_0 = 0x9901;    // $8D35
    phi_8d5c_1 = 1;    // $8D35
    } else {
    if (!(((unsigned)local10 > (unsigned)0x270F))) goto L_8D50;    // $8D3D
    local9 = (((unsigned)local10 / (unsigned)0x03E8) + 150);    // $8D48
    phi_8d5c_0 = 0x9918;    // $8D4D
    phi_8d5c_1 = 1;    // $8D4D
    goto L_8D5C;    // $8D4D
L_8D50:
    local9 = (((unsigned)local10 / (unsigned)0x03E8) + 50);    // $8D57
    phi_8d5c_0 = 0x9937;    // $8D59
    phi_8d5c_1 = 1;    // $8D59
    }
L_8D5C:
    draw_string(phi_8d5c_0, phi_8d5c_1);    // $8D5C
    scale_6b88(1);    // $8D61
    local5 = *(byte*)(((current_port * 14) + 0x67BA));    // $8D6F
    dsel_8d7f = ((unsigned)local5 > (unsigned)49);    // $8D7F
    local8 = (load_operand16_14(2) + ((unsigned)(local9 + 1) / (unsigned)((unsigned)(dsel_8d7f ? local5 : (100 - local5)) / (unsigned)7)));    // $8D8E
    local7 = (*(byte*)((current_port + 0x6F76)) & 3);    // $8D99
    record_scan_67ba(current_port, 0, local8);    // $8DA0
    local6 = (*(byte*)((current_port + 0x6F76)) & 3);    // $8DAE
    if ((local7 != local6)) {    // $8DB2
    if (local6) goto L_8DCF;    // $8DB6
    if (((local7 == 2) || (local7 == 3))) {    // $8DC2
    outfit_port_rec((local7 - 1));    // $8DC8
    } else {
    if ((local7 == 1)) goto L_8DDE;    // $8DD2
    if ((local6 != 1)) goto L_8DDE;    // $8DD8
    }
L_8DDE:
    outfit_accrue();    // $8DDB
    return 1;    // $8DDF
    }
    }
    }
}

// Decompiled from source/2-asm-vm\bank21.asm sub $8DE0
// $8DE0 outfit_no_repair
// (body @ $8DE5)

word outfit_no_repair(word arg1) {
    local7 = (((unsigned)record_field_byte((record_base_6b1c((*(byte*)(((*(byte*)&arg1 * 7) + 0x6C96)) & 15)) + 20)) >> 5) & 7);    // $8E01
    local6 = (record_field_byte((record_base_6b1c((*(byte*)(((*(byte*)&arg1 * 7) + 0x6C96)) & 15)) + 20)) & 3);    // $8E1C
    local5 = (((unsigned)record_field_byte((record_base_6b1c((*(byte*)(((*(byte*)&arg1 * 7) + 0x6C96)) & 15)) + 20)) >> 2) & 3);    // $8E39
    local4 = (((unsigned)record_field_byte((record_base_6b1c((*(byte*)(((*(byte*)&arg1 * 7) + 0x6C96)) & 15)) + 20)) >> 4) & 1);    // $8E56
    local8 = ((*(byte*)&arg1 * 7) + 0x6C90);    // $8E60
    local9 = ((((((local5 * 10) + 100) * (10 - local7)) / 10) * (local4 + 3)) / 4);    // $8E75
    local9 = max_s16(local9, 100);    // $8E7D
    local10 = ((((((((((20 - local7) * 100) / 20) * (10 - local5)) / 10) * (4 - local4)) / 4) - *(byte*)((local8 + 1))) + ((((local7 * 10) + (local6 * 10)) + 20) - *(byte*)(local8))) + (local9 - *(byte*)((local8 + 2))));    // $8EBB
    if (local10) goto L_8ECC;    // $8EBD
    draw_window();    // $8EC0
    draw_text(0x9944);    // $8EC6
    return 0;    // $8ECB
L_8ECC:
    local11 = ((unsigned)((*(byte*)(((current_port * 14) + 0x67BD)) + 15) * local10) / (unsigned)10);    // $8EDB
    draw_box_frame();    // $8EDC
    draw_window();    // $8EDF
    draw_field_m1(0x9969, local11);    // $8EE6
    if (!(prompt_confirm())) goto L_8F07;    // $8EED
    if (((unsigned)mem_666B < (unsigned)local11)) {    // $8EF5
    draw_box_from_native();    // $8EF8
    win_render_syscall(1);    // $8EFC
L_8F07:
    draw_text(0x9997);    // $8F03
    draw_box_variant(5, 1);    // $8F09
    draw_box_frame();    // $8F0D
    return 0;    // $8F11
    }
L_8F12:
    mem_666B = (mem_666B - local11);    // $8F18
    *(byte*)(local8) = (((local7 * 10) + (local6 * 10)) + 20);    // $8F27
    *(byte*)((local8 + 1)) = (((((((20 - local7) * 100) / 20) * (10 - local5)) / 10) * (4 - local4)) / 4);    // $8F45
    *(byte*)((local8 + 2)) = ((((((local5 * 10) + 100) * (10 - local7)) / 10) * (local4 + 3)) / 4);    // $8F5D
    local9 = *(byte*)((local8 + 2));    // $8F61
    if ((local9 > 100)) {    // $8F66
    *(byte*)((local8 + 2)) = 100;    // $8F6E
    }
L_8F6F:
    return 1;    // $8F70
}

// Decompiled from source/2-asm-vm\bank21.asm sub $8F71
// $8F71 outfit_fix_which
// (body @ $8F76)

word outfit_fix_which(void) {
    local7 = 0;    // $8F77
    blit_alloc_tiles(2, 2, 28, 18, 0);    // $8F7F
    *(byte*)&local8 = outfit_clear(&local9);    // $8F8B
    mem_7063 = 240;    // $8F91
    do {    // $8F94
        draw_box_frame();    // $8F94
        draw_box_variant(5, 1);    // $8F99
        draw_window();    // $8F9D
        draw_string(0x99B2, 1);    // $8FA4
        *(byte*)(fp - 7) = modal_input_loop(*(byte*)&local8);    // $8FB0
        if ((*(byte*)(fp - 7) != 255)) {    // $8FBA
        local7 = (local7 | outfit_no_repair(*(byte*)((*(byte*)(fp - 7) + &local9))));    // $8FCF
        }
L_8FD0:
    } while ((*(byte*)(fp - 7) != 255));    // $8FD7
    draw_box_frame();    // $8FDA
    clear_two_ppu_regions();    // $8FDD
    call_in_bank_dcd1(1, 222, outfit_sprites);    // $8FE7
    blit_free_tiles(2, 2, 28, 18, 0);    // $8FF2
    return local7;    // $8FF7
}

// Decompiled from source/2-asm-vm\bank21.asm sub $8FF8
// $8FF8 outfit_one_ship
// (body @ $8FFD)

word outfit_one_ship(void) {
    local2 = scan_records_6c90_flag(0, (fp - 7));    // $9006
    if ((local2 == 1)) {    // $900A
    draw_box_from_native();    // $900D
    draw_window();    // $9010
    draw_text(0x99C4);    // $9016
    return 0;    // $901B
    }
L_901C:
    local3 = 0;    // $901D
    mem_7063 = 240;    // $9021
    blit_alloc_tiles(2, 2, 28, 18, 0);    // $902B
    local2 = outfit_clear((fp - 7));    // $9037
    do {    // $9038
        draw_box_variant(5, 1);    // $903A
        draw_window();    // $903E
        draw_string(0x99D9, 1);    // $9045
        *(byte*)&local11 = modal_input_loop(local2);    // $904E
        if ((*(byte*)&local11 == 255)) {    // $9058
        win_render_syscall(2);    // $905C
        draw_text(0x99EC);    // $9063
        clear_two_ppu_regions();    // $9067
        call_in_bank_dcd1(1, 222, outfit_sprites);    // $9071
        blit_free_tiles(2, 2, 28, 18, 0);    // $907C
        return 0;    // $9081
        }
L_9082:
        *(byte*)(fp - 1) = *(byte*)((*(byte*)&local11 + (fp - 7)));    // $908C
        draw_box_frame();    // $908F
        if (*(byte*)(((*(byte*)(fp - 1) * 24) + 0x6AA4))) goto L_90C0;    // $909D
        draw_box_from_native();    // $90A0
        phi_90b9_0 = 0x9A02;    // $90AB
        win_render_syscall(1);    // $90A4
        goto L_90B9;    // $90AB
L_90AE:
        draw_box_from_native();    // $90AE
        phi_90b9_0 = 0x9A1F;    // $90B6
L_90B9:
        win_render_syscall(1);    // $90B2
        draw_text(phi_90b9_0);    // $90B9
        goto L_9239;    // $90BD
L_90C0:
        if (*(word*)(((*(byte*)(fp - 1) * 7) + 0x6C94))) goto L_90AE;    // $90CA
        local7 = ((*(byte*)(fp - 1) * 24) + 0x6AAA);    // $90D7
        if (!(((((*(word*)((local7 + 2)) + *(word*)((local7 + 4))) + *(word*)((local7 + 6))) + *(word*)((local7 + 8))) + *(word*)(local7)))) goto L_9109;    // $90F2
        draw_box_from_native();    // $90F5
        draw_window();    // $90F8
        draw_string(0x9A45, 1);    // $90FF
        if (!(prompt_confirm())) goto L_9239;    // $9106
L_9109:
        outfit_ship_line(*(byte*)(fp - 1));    // $910D
        *(byte*)&local8 = (((unsigned)record_field_byte((record_base_6b1c((*(byte*)(((*(byte*)(fp - 1) * 7) + 0x6C96)) & 15)) + 20)) >> 5) & 7);    // $912D
        local5 = (((unsigned)((((unsigned)(*(byte*)&local8 * 7) >> 1) + 1) * ((record_field_byte((record_base_6b1c((*(byte*)(((*(byte*)(fp - 1) * 7) + 0x6C96)) & 15)) + 20)) & 3) + 2)) >> 1) * 3);    // $915A
        local4 = (((((unsigned)*(byte*)&local8 >> 1) * 6) + 1) * ((((unsigned)record_field_byte((record_base_6b1c((*(byte*)(((*(byte*)(fp - 1) * 7) + 0x6C96)) & 15)) + 20)) >> 2) & 3) + 1));    // $9183
        local6 = ((*(byte*)(((current_port * 14) + 0x67BD)) + 50) * (local5 + local4));    // $9196
        draw_box_variant(5, 1);    // $9199
        draw_window();    // $919D
        draw_string(0x9A77, 1);    // $91A4
        win_open();    // $91A8
        draw_window();    // $91AB
        draw_field_m1(0x9A9A, local6);    // $91B2
        if (prompt_confirm()) {    // $91B9
        phi_val_91e6 = 1;    // $91BD
        } else {
        if (load_operand16_14((mem_6F74 + 1))) goto L_91E7;    // $91C9
        local6 = (local6 + (local6 / 10));    // $91D2
        draw_box_frame();    // $91D3
        win_render_syscall(1);    // $91D7
        draw_field_m1(0x9AB7, local6);    // $91DF
        phi_val_91e6 = prompt_confirm();    // $91E3
        }
L_91E6:
        local3 = phi_val_91e6;    // $91E6
L_91E7:
        if (!(local3)) goto L_922D;    // $91E8
        // ext_op ext_op_F1A9
        // ext_op ext_op_F263
        // ext_op ext_op_F1AF
        // ext_op ext_op_F26C
        // ext_op ext_op_F03F
        // ext_op ext_op_F13E
        dsel_9210 = mem_666B;    // $9210
        mem_666B = (dsel_9210 ? 0xEA60 : (mem_666B + local6));    // $9210
        *(byte*)(((*(byte*)(fp - 1) * 7) + 0x6C96)) = (*(byte*)(((*(byte*)(fp - 1) * 7) + 0x6C96)) & 191);    // $9223
        phi_90b9_0 = 0x9ADD;    // $922A
        draw_window();    // $9224
        goto L_90B9;    // $922A
L_922D:
        draw_window();    // $922D
        draw_text(0x9AFC);    // $9233
        local3 = 1;    // $9238
L_9239:
    } while (!(local3));    // $923A
    clear_two_ppu_regions();    // $923D
    call_in_bank_dcd1(1, 222, outfit_sprites);    // $9247
    blit_free_tiles(2, 2, 28, 18, 0);    // $9252
    return local3;    // $9257
        }
}
