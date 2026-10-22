// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $C47B
// $C47B wait_input
// (body @ $C480)

word wait_input(void) {
L_C480:
    if (syscall_id16_syscall_read_controller(0)) goto L_C480;    // $C487
    if (syscall_id16_syscall_read_controller(1)) goto L_C480;    // $C491
    do {    // $C494
        if (syscall_id16_syscall_read_controller(0)) break;    // $C49B
    } while (!(syscall_id16_syscall_read_controller(1)));    // $C4A5
L_C4A8:
    return syscall_id16_syscall_read_controller(1);    // $C4A8
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $C4A9
// $C4A9 frame_sync
// (body @ $C4AE)

word frame_sync(word arg1) {
    local10 = mul_wide();    // $C4B1
    local10 = (local10 + 1);    // $C4B4
    write_struct_9472(local10);    // $C4B6
    if (!(arg1)) goto L_C4C6;    // $C4BB
    while (1) {    // $C4BE
        goto L_C4D3;    // $C4C3
    }
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $C4DC
// $C4DC loop_init_c4dc
// (body @ $C4E1)

word loop_init_c4dc(void) {
    local11 = 0;    // $C4E2
    goto L_C4F1;    // $C4E3
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $C4FE
// $C4FE incr_deref_field
// (body @ $C503)

word incr_deref_field(word arg1, word arg2) {
    // ext_op ext_op_F20D
    // ext_op ext_op_F127
    if (!(local0)) goto L_C52A;    // $C50F
    *(word*)(arg1) = (*(word*)(arg1) + 1);    // $C516
    // ext_op ext_op_F20D
    // ext_op ext_op_F03F
    // ext_op ext_op_F1B3
    *(byte*)((*(word*)(arg1) - 1)) = local0;    // $C527
    return 1;    // $C529
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $C554
// $C554 format_field
// (body @ $C559)

word format_field(word arg1) {
    *(word*)(fp - 29) = (fp - 179);    // $C55C
    *(word*)(fp - 3) = arg1;    // $C55F
    goto L_C56F;    // $C561
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $C70B
// $C70B set_draw_origin
// (body @ $C710)

word set_draw_origin(word arg1, word arg2) {
    window_stack_lo = arg1;    // $C711
    window_stack_depth = arg2;    // $C715
    return arg2;    // $C718
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $C719
// $C719 draw_field
// (body @ $C71E)

word draw_field(word arg1, word arg2) {
    local11 = &arg2;    // $C721
    return format_field(arg1, local11, 0);    // $C729
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $C72A
// $C72A finalize_cursor
// (body @ $C72F)

word finalize_cursor(void) {
    if ((window_stack_lo >= 0)) goto L_C73B;    // $C734
    while (1) {    // $C737
        goto L_C74C;    // $C738
    }
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $C770
// $C770 set_tile_cursor
// (body @ $C775)

word set_tile_cursor(word arg1, word arg2) {
    set_draw_origin(arg1, arg2);    // $C777
    return finalize_cursor();    // $C77E
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $C77F
// $C77F set_cursor_col
// (body @ $C784)

word set_cursor_col(word arg1) {
    window_stack_lo = arg1;    // $C785
    return finalize_cursor();    // $C78B
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $C78C
// $C78C set_cursor_row
// (body @ $C791)

word set_cursor_row(word arg1) {
    window_stack_depth = arg1;    // $C792
    return finalize_cursor();    // $C798
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $C799
// $C799 draw_field_m1
// (body @ $C79E)

word draw_field_m1(word arg1, word arg2) {
    local11 = &arg2;    // $C7A1
    return format_field(arg1, local11, 1);    // $C7A9
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $C7AA
// $C7AA input_check
// (body @ $C7AF)

word input_check(void) {
    if (!(syscall_id16_syscall_read_controller(0))) goto L_C7BD;    // $C7B6
    while (1) {    // $C7B9
        goto L_C7C8;    // $C7BA
    }
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $C7C9
// $C7C9 frame_wait
// (body @ $C7CE)

word frame_wait(void) {
    return frame_sync(0);    // $C7D3
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $C7D4
// $C7D4 wait_input_timeout
// (body @ $C7D9)

word wait_input_timeout(void) {
    goto L_C7EE;    // $C7D9
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $C7F6
// $C7F6 cursor_blink_wait
// (body @ $C7FB)

word cursor_blink_wait(void) {
    do {    // $C7FB
        if (mem_7290) {    // $C7FE
        }
L_C805:
        (*(mem_7290))();    // $C804
        wait_input_timeout(20);    // $C807
        if (mem_7290) {    // $C80E
        }
L_C815:
        (*(mem_7290))();    // $C814
    } while (!(wait_input_timeout(20)));    // $C81B
    return frame_sync(0);    // $C823
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $C824
// $C824 menu_pick
// (body @ $C829)

word menu_pick(word arg1, word arg2, word arg3, word arg4, word arg5, word arg6, word arg7) {
    *(byte*)(fp - 17) = 225;    // $C82C
    *(byte*)&local4 = 0;    // $C830
    local10 = arg3;    // $C834
    local9 = arg4;    // $C836
    local8 = 1;    // $C838
    local7 = 0;    // $C83A
    local6 = (arg2 / arg7);    // $C83F
    local5 = (arg2 - (local6 * arg7));    // $C848
    draw_string(arg1, 1);    // $C84B
    *(byte*)&local3 = (*(word*)(((ui_shared_var_737d << 1) + 0xDF14)) + (local9 << 3));    // $C85E
    *(byte*)(fp - 15) = (local10 << 3);    // $C864
    syscall_id13_syscall_set_chr_bank_alt(&local3, 0, 1);    // $C86E
    if (!(arg6)) goto L_C87C;    // $C874
    while (1) {    // $C877
        goto L_C87D;    // $C879
    }
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $C9CD
// $C9CD dispatch_indirect
// (body @ $C9D2)

word dispatch_indirect(word arg1, word arg2) {
    // ext_op ext_op_F1AF
    // ext_op ext_op_F229
    (*(arg2))(/*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA, /*stack underflow*/ regA);    // $C9D7
    goto L_C9E0;    // $C9DA
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $CCF3
// $CCF3 draw_labeled_value
// (body @ $CCF8)

word draw_labeled_value(word arg1, word arg2, word arg3, word arg4) {
    draw_string(arg1, 1);    // $CCFA
    draw_field_m1(0xDF1A, arg2, arg3);    // $CD03
    return dispatch_indirect(arg2, arg3, *(byte*)&arg4);    // $CD11
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $CD12
// $CD12 draw_labeled_value_1
// (body @ $CD17)

word draw_labeled_value_1(word arg1, word arg2, word arg3) {
    return draw_labeled_value(arg1, arg2, arg3, 1);    // $CD1F
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $CD20
// $CD20 draw_labeled_value_2
// (body @ $CD25)

word draw_labeled_value_2(word arg1, word arg2) {
    return draw_labeled_value(arg1, 1, arg2, 1);    // $CD2D
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $CD2E
// $CD2E place_cursor_sprite
// (body @ $CD33)

word place_cursor_sprite(word arg1) {
    *(byte*)&local10 = (*(word*)(((ui_shared_var_737d << 1) + 0xDF14)) + arg1);    // $CD3E
    *(byte*)(fp - 3) = 224;    // $CD44
    *(byte*)&local11 = 0;    // $CD48
    *(byte*)(fp - 1) = (window_stack_lo << 3);    // $CD50
    return syscall_id13_syscall_set_chr_bank_alt(&local10, 0, 1);    // $CD5E
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $CD5F
// $CD5F menu_input_loop
// (body @ $CD64)

word menu_input_loop(void) {
    do {    // $CD64
        place_cursor_sprite(((window_stack_depth << 3) + 8));    // $CD6B
        if (mem_7290) {    // $CD72
        }
L_CD79:
        (*(mem_7290))();    // $CD78
        wait_input_timeout(20);    // $CD7B
        syscall_id12_syscall_set_chr_banks(0, 1);    // $CD82
        if (mem_7290) {    // $CD89
        }
L_CD90:
        (*(mem_7290))();    // $CD8F
    } while (!(wait_input_timeout(20)));    // $CD96
    return frame_sync(0);    // $CD9E
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $CD9F
// $CD9F prompt_confirm
// (body @ $CDA4)

word prompt_confirm(void) {
    draw_string(0xDF23, 1);    // $CDA8
    do {    // $CDAC
    } while (frame_sync(0));    // $CDB1
    local11 = menu_input_loop();    // $CDB7
    if (((local11 == 1) || (local11 == 64))) {    // $CDC2
    draw_string(0xDF2A, 1);    // $CDC9
    do {    // $CDCD
    } while (frame_sync(0));    // $CDD2
    }
L_CDD5:
    return 1;    // $CDD6
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $CDF7
// $CDF7 draw_info_panel
// (body @ $CDFC)

word draw_info_panel(void) {
    syscall_id06_syscall_set_sprite_block(0xF366, 0, 32);    // $CE03
    set_draw_origin(7, 24);    // $CE0A
    draw_field(0xDF2E, mem_6000);    // $CE14
    draw_field(0xDF3D, syscall_id04_syscall_get_prg_bank(1));    // $CE22
L_CE34:
    draw_field(0xDF45, syscall_id04_syscall_get_prg_bank(2));    // $CE30
    goto L_CE34;    // $CE34
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $CE37
// $CE37 reset_all_chr
// (body @ $CE3C)

word reset_all_chr(void) {
    syscall_id12_syscall_set_chr_banks(0, 64);    // $CE40
    return syscall_id07_syscall_queue_vram_row(0, 0, 0);    // $CE4C
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $CE4D
// $CE4D helper_ce4d
// (body @ $CE52)

word helper_ce4d(void) {
    goto L_CE66;    // $CE52
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $CE6E
// $CE6E scale_helper_ce6e
// (body @ $CE73)

word scale_helper_ce6e(void) {
    goto L_CE85;    // $CE73
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $CE8D
// $CE8D scale_x6
// (body @ $CE92)

word scale_x6(word arg1) {
    return scale_helper_ce6e((arg1 * 6));    // $CE9A
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $CE9B
// $CE9B scale_6b88
// (body @ $CEA0)

word scale_6b88(word arg1) {
    return scale_x6(((mem_6B88 * arg1) * 3));    // $CEAC
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $D4A5
// $D4A5 stub_d4a5
// (body @ $D4AA)

word stub_d4a5(word arg1) {
    switch (arg1) {    // $D4AB
        case 1: goto L_D4DC;    // $D4AB
        case 4: goto L_D4E2;    // $D4AB
        case 12: goto L_D4E8;    // $D4AB
        case 33: goto L_D4EE;    // $D4AB
        case 34: goto L_D4F4;    // $D4AB
        case 35: goto L_D4D6;    // $D4AB
        case 38: goto L_D4CC;    // $D4AB
        default: goto L_D4D5;    // $D4AB
    }    // $D4AB
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $D4FA
// $D4FA set_var_7268
// (body @ $D4FF)

word set_var_7268(word arg1, word arg2) {
    active_entity_idx = arg2;    // $D500
    switch (arg1) {    // $D504
        case 2: goto L_D519;    // $D504
        case 3: goto L_D523;    // $D504
        case 36: goto L_D529;    // $D504
        case 37: goto L_D522;    // $D504
        default: goto L_D522;    // $D504
    }    // $D504
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $D532
// $D532 record_base_6b1c
// (body @ $D537)

word record_base_6b1c(word arg1) {
    if (!(((unsigned)arg1 < (unsigned)5))) goto L_D547;    // $D53A
    while (1) {    // $D53D
        goto L_D54E;    // $D544
    }
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $D550
// $D550 record_base_d604
// (body @ $D555)

word record_base_d604(word arg1) {
    if ((arg1 == 31)) goto L_D567;    // $D559
    while (1) {    // $D55C
        goto L_D56A;    // $D564
    }
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $D56B
// $D56B draw_string_banked
// (body @ $D570)

word draw_string_banked(word arg1) {
    if (((unsigned)arg1 > (unsigned)0x9FFF)) {    // $D575
    local11 = syscall_id04_syscall_get_prg_bank(2);    // $D57E
    }
L_D588:
    syscall_id03_syscall_set_prg_bank(2, 250);    // $D584
    draw_string(arg1, 0);    // $D58A
    phi_ret_d59d = ((unsigned)arg1 > (unsigned)0x9FFF);    // $D593
    if (phi_ret_d59d) {    // $D593
    phi_ret_d59d = syscall_id03_syscall_set_prg_bank(2, local11);    // $D599
    }
L_D59D:
    return phi_ret_d59d;    // $D59D
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $D59E
// $D59E record_iter_6c90
// (body @ $D5A3)

word record_iter_6c90(word arg1) {
    arg1 = (arg1 * 5);    // $D5A7
    local10 = ((arg1 * 7) + 0x6C90);    // $D5AF
    local9 = (((arg1 * 7) + 0x6C90) + 35);    // $D5B2
    local11 = 0;    // $D5B4
    goto L_D5CB;    // $D5B5
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $D5D3
// $D5D3 ret_50_or
// (body @ $D5D8)

word ret_50_or(word arg1) {
    if (!(arg1)) goto L_D5DF;    // $D5D9
    return 50;    // $D5DE
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $D615
// $D615 record_scan_6c90_6aa4
// (body @ $D61A)

word record_scan_6c90_6aa4(void) {
    local11 = 0x6C90;    // $D61D
    local10 = (0x6C90 + 35);    // $D620
    local9 = 0x6AA4;    // $D624
    local8 = 0;    // $D626
    goto L_D646;    // $D627
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $D652
// $D652 record_iter_d824
// (body @ $D657)

word record_iter_d824(void) {
    local6 = 0xD824;    // $D65A
    local5 = (0xD824 + 64);    // $D65D
    local11 = 0x666D;    // $D661
    local9 = 0;    // $D663
    local10 = 0;    // $D665
    goto L_D69E;    // $D666
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $D6A6
// $D6A6 record_iter_6a9a
// (body @ $D6AB)

word record_iter_6a9a(void) {
    local11 = 0x6A9A;    // $D6AE
    local9 = 0;    // $D6B0
    local10 = 0;    // $D6B1
    goto L_D6C5;    // $D6B2
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $D6D6
// $D6D6 search_6a9a
// (body @ $D6DB)

word search_6a9a(word arg1) {
    local8 = record_iter_6a9a(arg1);    // $D6E0
    if (local8) goto L_D6E7;    // $D6E2
    return 0;    // $D6E6
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $D718
// $D718 search_6a9a_b
// (body @ $D71D)

word search_6a9a_b(word arg1) {
    local7 = record_iter_6a9a(arg1);    // $D722
    if (local7) goto L_D729;    // $D724
    return 0;    // $D728
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $D75A
// $D75A record_scan_6c90_6aa4_b
// (body @ $D75F)

word record_scan_6c90_6aa4_b(void) {
    local11 = 0x6C90;    // $D762
    local10 = (0x6C90 + 35);    // $D765
    local9 = 0x6AA4;    // $D769
    local8 = 0;    // $D76B
    goto L_D789;    // $D76C
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $D791
// $D791 search_6a9a_ptr
// (body @ $D796)

word search_6a9a_ptr(void) {
    local2 = search_6a9a(&local7);    // $D79E
    if (local2) goto L_D7A7;    // $D7A0
    return 255;    // $D7A6
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $D7D8
// $D7D8 record_scan_67ba
// (body @ $D7DD)

word record_scan_67ba(word arg1, word arg2, word arg3) {
    local11 = ((arg1 * 14) + 0x67BA);    // $D7E4
    if (((*(byte*)((local11 + arg2)) + arg3) > 100)) {    // $D7EE
    arg3 = (100 - *(byte*)((local11 + arg2)));    // $D7FA
    }
L_D7FB:
    *(byte*)((local11 + arg2)) = (*(byte*)((local11 + arg2)) + arg3);    // $D804
    local9 = ((*(byte*)(local11) + *(byte*)((local11 + 1))) + *(byte*)((local11 + 2)));    // $D813
    if ((local9 > 100)) {    // $D818
    arg3 = (local9 + -100);    // $D81E
L_D81F:
    local10 = 0;    // $D820
L_D821:
    if ((local10 != arg2)) {    // $D824
    if (*(byte*)((local11 + local10))) {    // $D82B
    if (arg3) {    // $D82F
    *(byte*)((local11 + local10)) = (*(byte*)((local11 + local10)) - 1);    // $D838
    arg3 = (arg3 - 1);    // $D83B
    }
    }
    }
L_D83C:
    local10 = (local10 + 1);    // $D83E
    if (((unsigned)local10 < (unsigned)3)) goto L_D821;    // $D842
    if (arg3) goto L_D81F;    // $D846
    }
L_D849:
    *(byte*)((arg1 + 0x6F76)) = (*(byte*)((arg1 + 0x6F76)) & 252);    // $D855
    local10 = 0;    // $D857
L_D858:
    if (((unsigned)79 < (unsigned)*(byte*)((local11 + local10)))) {    // $D861
    *(byte*)((arg1 + 0x6F76)) = (*(byte*)((arg1 + 0x6F76)) | (local10 + 1));    // $D870
    }
L_D871:
    local10 = (local10 + 1);    // $D873
    if (((unsigned)local10 < (unsigned)3)) goto L_D858;    // $D877
    return ((unsigned)local10 < (unsigned)3);    // $D87A
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $D87B
// $D87B record_proc_6c96_1
// (body @ $D880)

word record_proc_6c96_1(word arg1) {
    local11 = ((((unsigned)record_field_byte((record_base_6b1c((*(byte*)(((arg1 * 7) + 0x6C96)) & 15)) + 20)) >> 5) & 7) * 10);    // $D89C
    local10 = ((record_field_byte((record_base_6b1c((*(byte*)(((arg1 * 7) + 0x6C96)) & 15)) + 20)) & 3) * 10);    // $D8B7
    return ((local11 + local10) + 20);    // $D8BD
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $D8BE
// $D8BE record_proc_6c96_2
// (body @ $D8C3)

word record_proc_6c96_2(word arg1) {
    local11 = (((unsigned)record_field_byte((record_base_6b1c((*(byte*)(((arg1 * 7) + 0x6C96)) & 15)) + 20)) >> 5) & 7);    // $D8DD
    local10 = (((unsigned)record_field_byte((record_base_6b1c((*(byte*)(((arg1 * 7) + 0x6C96)) & 15)) + 20)) >> 2) & 3);    // $D8F8
    local9 = (((unsigned)record_field_byte((record_base_6b1c((*(byte*)(((arg1 * 7) + 0x6C96)) & 15)) + 20)) >> 4) & 1);    // $D913
    return (((((((20 - local11) * 100) / 20) * (10 - local10)) / 10) * (4 - local9)) / 4);    // $D92E
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $D92F
// $D92F record_proc_6c96_3
// (body @ $D934)

word record_proc_6c96_3(word arg1) {
    local10 = (((unsigned)record_field_byte((record_base_6b1c((*(byte*)(((arg1 * 7) + 0x6C96)) & 15)) + 20)) >> 5) & 7);    // $D94E
    local9 = (((unsigned)record_field_byte((record_base_6b1c((*(byte*)(((arg1 * 7) + 0x6C96)) & 15)) + 20)) >> 2) & 3);    // $D969
    local8 = (((unsigned)record_field_byte((record_base_6b1c((*(byte*)(((arg1 * 7) + 0x6C96)) & 15)) + 20)) >> 4) & 1);    // $D984
    local11 = ((((((local9 * 10) + 100) * (10 - local10)) / 10) * (local8 + 3)) / 4);    // $D999
    if ((local11 <= 100)) goto L_D9A6;    // $D99E
    while (1) {    // $D9A1
        goto L_D9A7;    // $D9A3
    }
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $D9A8
// $D9A8 record_proc_6c96_4
// (body @ $D9AD)

word record_proc_6c96_4(word arg1) {
    local10 = (((unsigned)record_field_byte((record_base_6b1c((*(byte*)(((arg1 * 7) + 0x6C96)) & 15)) + 20)) >> 5) & 7);    // $D9C7
    local11 = ((((((local10 % 2) * local10) * 50) + (((local10 + 2) / 2) * 0x012C)) + ((local10 / 5) * 50)) - 200);    // $D9E7
    return local11;    // $D9E9
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $D9EA
// $D9EA record_base_6aa4
// (body @ $D9EF)

word record_base_6aa4(word arg1) {
    local8 = ((arg1 * 24) + 0x6AA4);    // $D9F7
    local10 = (local8 + 6);    // $D9FA
    local9 = ((local8 + 6) + 10);    // $D9FC
    local11 = 0;    // $D9FE
    goto L_DA0B;    // $D9FF
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $DA2A
// $DA2A record_base_6aa4_b
// (body @ $DA2F)

word record_base_6aa4_b(word arg1) {
    local8 = ((arg1 * 24) + 0x6AA4);    // $DA37
    local11 = (local8 + 6);    // $DA3A
    local10 = ((local8 + 6) + 10);    // $DA3C
    local9 = 0;    // $DA3E
    goto L_DA4B;    // $DA3F
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $DA6A
// $DA6A record_read_6c90
// (body @ $DA6F)

word record_read_6c90(word arg1) {
    local11 = ((arg1 * 7) + 0x6C90);    // $DA76
    return ((record_base_6aa4_b(arg1) + *(byte*)((local11 + 3))) + *(word*)((local11 + 4)));    // $DA88
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $DA89
// $DA89 mul_field_000b
// (body @ $DA8E)

word mul_field_000b(word arg1) {
    *(byte*)&arg1 = (*(byte*)&arg1 * 5);    // $DA94
    local11 = 0;    // $DA98
    goto L_DAC8;    // $DA9A
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $DAD1
// $DAD1 compute_dad1
// (body @ $DAD6)

word compute_dad1(word arg1) {
    local11 = 0;    // $DAD7
    local8 = 0x1000;    // $DADB
    local8 = (local8 + (arg1 << 10));    // $DAE2
    local6 = load_operand16_14(4);    // $DAE8
    local8 = (local8 + (local6 << 8));    // $DAEF
    local6 = load_operand16_14(4);    // $DAF5
    local8 = (local8 + (local6 << 6));    // $DAFC
    local6 = load_operand16_14(4);    // $DB02
    local8 = (local8 + (local6 << 4));    // $DB09
    local6 = load_operand16_14(4);    // $DB0F
    local8 = (local8 + ((local6 << 1) << 1));    // $DB16
    local6 = load_operand16_14(4);    // $DB1C
    local8 = (local8 + local6);    // $DB21
    local10 = 0x6549;    // $DB25
    local9 = (0x6549 + 287);    // $DB29
    goto L_DB3F;    // $DB2A
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $DB4B
// $DB4B record_proc_6004
// (body @ $DB50)

word record_proc_6004(word arg1) {
    local11 = (((arg1 - 1) * 51) + 0x6004);    // $DB59
    *(byte*)((local11 + 5)) = record_field_byte((arg1 + 0xC0D4));    // $DB67
    *(byte*)((local11 + 4)) = 4;    // $DB6C
    *(word*)((local11 + 7)) = (local11 + 9);    // $DB72
    *(byte*)(*(word*)((local11 + 7))) = 0;    // $DB78
    local10 = ((*(byte*)((local11 + 5)) * 19) + 0xCFD8);    // $DB83
    *(byte*)(local11) = record_field_byte((local10 + 15));    // $DB8C
    *(byte*)((local11 + 1)) = record_field_byte((local10 + 16));    // $DB98
    *(byte*)((local11 + 2)) = record_field_byte((local10 + 17));    // $DBA4
    *(byte*)((local11 + 3)) = record_field_byte((local10 + 18));    // $DBB0
    return record_field_byte((local10 + 18));    // $DBB1
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $DBB2
// $DBB2 char_class_dbb2
// (body @ $DBB7)

word char_class_dbb2(word arg1) {
    local11 = arg1;    // $DBB8
    if ((*(byte*)(local11) == 32)) goto L_DBE1;    // $DBBE
    if ((*(byte*)(local11) == 9)) goto L_DBE1;    // $DBC5
    // ext_op ext_op_F229
    // TODO: trigger_syscall_EB_FE
    // TODO: op_FF
    if ((48 <= *(byte*)(local11))) goto L_DBE6;    // $DBD9
    // ext_op ext_op_F20D
    // TODO: trigger_syscall_EB_FE
    // TODO: op_FF
    return (48 <= *(byte*)(local11));    // $DBE0
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $DC0C
// $DC0C to_upper
// (body @ $DC11)

word to_upper(word arg1) {
    if (!((97 <= *(byte*)&arg1))) goto L_DC2D;    // $DC19
    if (!((*(byte*)&arg1 <= 122))) goto L_DC2D;    // $DC22
    while (1) {    // $DC25
        goto L_DC30;    // $DC2A
    }
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $DC31
// $DC31 to_lower
// (body @ $DC36)

word to_lower(word arg1) {
    if (!((65 <= *(byte*)&arg1))) goto L_DC52;    // $DC3E
    if (!((*(byte*)&arg1 <= 90))) goto L_DC52;    // $DC47
    while (1) {    // $DC4A
        goto L_DC55;    // $DC4F
    }
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $DC56
// $DC56 cmp_lt_neg1
// (body @ $DC5B)

word cmp_lt_neg1(word arg1) {
    if ((arg1 >= 0)) goto L_DC66;    // $DC5E
    while (1) {    // $DC61
        goto L_DC71;    // $DC63
    }
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $DC72
// $DC72 native_table_dc72
// (body @ $DC77)

word native_table_dc72(void) {
    max_s16();    // $DC77
    min_s16();    // $DC7A
    memcpy_ptr();    // $DC7D
    memset_ptr();    // $DC80
    copy_from_bank();    // $DC83
    call_in_bank_dcd1();    // $DC86
    abs_s16();    // $DC89
    str_end_ptr();    // $DC8C
    str_copy();    // $DC8F
    return strlen();    // $DC95
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $DC96
// $DC96 draw_icon_df4e
// (body @ $DC9B)

word draw_icon_df4e(word arg1, word arg2, word arg3, word arg4) {
    return syscall_id09_syscall_banked_blit_m3(arg1, arg2, 2, 2, *(word*)((((arg3 * 24) + ((arg4 << 1) << 1)) + 0xDF4C)), *(word*)((((arg3 * 24) + ((arg4 << 1) << 1)) + 0xDF4E)), 224);    // $DCC7
}

// Decompiled from source/2-asm-vm\bank62_C000_library.asm sub $DCC8
// $DCC8 draw_icon_dfae
// (body @ $DCCD)

word draw_icon_dfae(word arg1, word arg2, word arg3) {
    return syscall_id09_syscall_banked_blit_m3(arg1, arg2, 2, 2, *(word*)((((arg3 << 1) << 1) + 0xDFAC)), *(word*)((((arg3 << 1) << 1) + 0xDFAE)), 224);    // $DCEB
}
