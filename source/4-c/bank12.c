// Decompiled from source/2-asm-vm\bank12.asm sub $8003
// $8003 combat_clear_metasprite
// (body @ $8008)

word combat_clear_metasprite(void) {
    return syscall_id14_syscall_set_metasprite(0x0500, 0, 0, 0, 0);    // $8014
}

// Decompiled from source/2-asm-vm\bank12.asm sub $8015
// $8015 combat_grid_wrap
// (body @ $801A)

word combat_grid_wrap(word arg1) {
    local9 = (mem_74C4 % 15);    // $801F
    local8 = (mem_74C4 / 15);    // $8025
    local11 = (((local9 << 1) + 1) << 3);    // $802B
    local10 = (((((local9 & 1) ? 3 : 2) + (local8 << 1)) << 3) - 1);    // $803F
    syscall_id14_syscall_set_metasprite(0x0501, ((local10 << 8) + local11), 0xE0E0, 0xE0E0, 0);    // $8051
    idx_valid_lt21(23);    // $8057
    local11 = (((mem_74C0 << 1) + 1) << 3);    // $8062
    local10 = (((((mem_74C0 % 2) ? 3 : 2) + (mem_74C2 << 1)) << 3) - 1);    // $807A
    syscall_id17_syscall_busy_wait(12);    // $807E
    combat_clear_metasprite();    // $8082
    combat_get_stat_0(arg1);    // $8086
    syscall_id14_syscall_set_metasprite(0x0501, ((local10 << 8) + local11), 0xE0E0, 0xE0E0, 3);    // $809B
    syscall_id17_syscall_busy_wait(24);    // $80A3
    return combat_clear_metasprite();    // $80AA
}

// Decompiled from source/2-asm-vm\bank12.asm sub $80AB
// $80AB combat_draw_sprite
// (body @ $80B0)

word combat_draw_sprite(void) {
    combat_clear_metasprite();    // $80B0
    local9 = (mem_74C4 % 15);    // $80B8
    local8 = (mem_74C4 / 15);    // $80BE
    local7 = (((local9 << 1) + 1) << 3);    // $80C4
    local5 = (((((local9 & 1) ? 3 : 2) + (local8 << 1)) << 3) - 1);    // $80D8
    local6 = (((mem_74C0 << 1) + 1) << 3);    // $80E0
    local4 = (((((mem_74C0 % 2) ? 3 : 2) + (mem_74C2 << 1)) << 3) - 1);    // $80F8
    idx_valid_lt21(24);    // $80FB
    local11 = 0;    // $8100
L_8101:
    memcpy_ptr(0x9DE0, (fp - 32), 16);    // $810A
    local10 = 0;    // $810F
L_8110:
    *(byte*)((((local10 << 1) << 1) + (fp - 32))) = (*(byte*)((((local10 << 1) << 1) + (fp - 32))) + local5);    // $811F
    *(byte*)((((local10 << 1) << 1) + (fp - 29))) = (*(byte*)((((local10 << 1) << 1) + (fp - 29))) + local7);    // $812F
    local10 = (local10 + 1);    // $8132
    if (((unsigned)local10 < (unsigned)4)) goto L_8110;    // $8136
    syscall_id13_syscall_set_chr_bank_alt((fp - 32), 5, 4);    // $8140
    memcpy_ptr(0x9DE0, (fp - 32), 16);    // $814D
    syscall_id17_syscall_busy_wait(6);    // $8154
    local10 = 0;    // $8159
L_815A:
    *(byte*)((((local10 << 1) << 1) + (fp - 32))) = (*(byte*)((((local10 << 1) << 1) + (fp - 32))) + local4);    // $8169
    *(byte*)((((local10 << 1) << 1) + (fp - 29))) = (*(byte*)((((local10 << 1) << 1) + (fp - 29))) + local6);    // $8179
    local10 = (local10 + 1);    // $817C
    if (((unsigned)local10 < (unsigned)4)) goto L_815A;    // $8180
    syscall_id13_syscall_set_chr_bank_alt((fp - 32), 5, 4);    // $818A
    syscall_id17_syscall_busy_wait(6);    // $8191
    local11 = (local11 + 1);    // $8197
    if (((unsigned)local11 < (unsigned)4)) goto L_8101;    // $819B
    return syscall_id12_syscall_set_chr_banks(5, 4);    // $81A5
}

// Decompiled from source/2-asm-vm\bank12.asm sub $81A6
// $81A6 combat_tile_x
// (body @ $81AB)

word combat_tile_x(void) {
    local11 = (((mem_74C0 << 1) + 1) << 3);    // $81B2
    local10 = (((((mem_74C0 % 2) ? 3 : 2) + (mem_74C2 << 1)) << 3) - 1);    // $81CA
    return syscall_id14_syscall_set_metasprite(0x0501, ((local10 << 8) + local11), 0xE0E0, 0xE0E0, 0);    // $81E0
}

// Decompiled from source/2-asm-vm\bank12.asm sub $81E1
// $81E1 combat_dir_81e1
// (body @ $81E6)

word combat_dir_81e1(word arg1, word arg2, word arg3, word arg4) {
    if (((unsigned)arg4 < (unsigned)5)) {    // $81E9
    phi_val_81ff = (arg4 == mem_74D2);    // $81F1
    } else {
    local11 = 2;    // $81F5
    if ((arg4 != mem_74D4)) goto L_8200;    // $81FB
    phi_val_81ff = 3;    // $81FE
    }
L_81FF:
    local11 = phi_val_81ff;    // $81FF
L_8200:
    return draw_icon_df4e(arg1, arg2, local11, arg3);    // $8208
    }
}

// Decompiled from source/2-asm-vm\bank12.asm sub $8209
// $8209 combat_check_8209
// (body @ $820E)

word combat_check_8209(word arg1, word arg2, word arg3) {
    local7 = (arg3 == 0x03C0);    // $8213
    local11 = ((mem_74C0 << 1) + 1);    // $8219
    local10 = (((mem_74C0 % 2) ? 3 : 2) + (mem_74C2 << 1));    // $822E
    draw_icon_dfae(local11, local10, *(byte*)((((mem_74C2 * 15) + mem_74C0) + 0x7417)));    // $8240
    combat_dir_81e1(local11, local10, arg2, arg1);    // $8248
    local8 = (*(word*)((((((mem_74C0 % 2) ? 2 : 1) << 1) + (arg2 * 6)) + 0x9CDE)) + mem_74C2);    // $8269
    local9 = (*(word*)(((arg2 * 6) + 0x9CDE)) + mem_74C0);    // $8276
    if (!((!((local9 >= 0)) || ((local9 >= 15) || (!((local8 >= 0)) || ((local8 >= 9) || ((unsigned)*(byte*)((((local8 * 15) + local9) + 0x7390)) > (unsigned)128))))))) goto L_82A2;    // $829D
    return 0;    // $82A1
L_82A2:
    draw_icon_dfae(local11, local10, *(byte*)((((mem_74C2 * 15) + mem_74C0) + 0x7417)));    // $82B3
    combat_dir_81e1(((local9 << 1) + 1), (((local9 % 2) ? 3 : 2) + (local8 << 1)), arg2, arg1);    // $82CE
    mem_74C2 = local8;    // $82D3
    mem_74C0 = local9;    // $82D7
    mem_74C4 = ((local8 * 15) + local9);    // $82DF
    return 1;    // $82E3
}

// Decompiled from source/2-asm-vm\bank12.asm sub $82E4
// $82E4 combat_move_82e4
// (body @ $82E9)

word combat_move_82e4(word arg1, word arg2, word arg3, word arg4) {
    if (((unsigned)arg4 < (unsigned)2)) {    // $82EC
    if (((arg3 == 100))) return syscall_id09_syscall_banked_blit_m3(arg1, arg2, 2, 1, *(word*)((((arg4 << 1) << 1) + 0x9EE0)), *(word*)((((arg4 << 1) << 1) + 0x9EE2)), 224);    // $82F3
    copy_from_bank_dc80(&local11, 2, 0);    // $831B
    } else {
    if (!(((unsigned)arg3 > (unsigned)99))) goto L_8334;    // $8327
    arg3 = ((unsigned)arg3 / (unsigned)10);    // $832E
    arg4 = (arg4 + 2);    // $8333
L_8334:
    copy_from_bank_dc80(&local11, 2, 125);    // $833B
    }
L_834D:
    copy_from_bank_dc80(&local10, 2, ((arg4 & 1) ? 141 : 13));    // $8352
    copy_from_bank_dc80(&local9, 2, 255);    // $835E
    phi_val_8379 = 2;    // $8363
    goto L_8379;    // $8363
L_8366:
    *(byte*)((local5 + (fp - 7))) = ((unsigned)arg3 % (unsigned)10);    // $8371
    arg3 = ((unsigned)arg3 / (unsigned)10);    // $8376
    phi_val_8379 = (local5 - 1);    // $8378
L_8379:
    local5 = phi_val_8379;    // $8379
    if (!(arg3)) goto L_8384;    // $837B
    if ((local5 > 0)) goto L_8366;    // $8381
L_8384:
    local8 = &local11;    // $8387
    local7 = &local10;    // $838B
    local5 = 0;    // $838D
    do {    // $838E
        local6 = *(byte*)((local5 + &local9));    // $8396
        if ((local6 == 255)) goto L_83D3;    // $839C
        copy_from_bank(2, 224, *(word*)((((arg4 * 40) + ((local6 << 1) << 1)) + 0x9DF0)), local8, 1);    // $83B5
L_83D3:
        copy_from_bank(2, 224, *(word*)((((arg4 * 40) + ((local6 << 1) << 1)) + 0x9DF2)), local7, 1);    // $83CF
        local8 = (local8 + 1);    // $83D5
        local7 = (local7 + 1);    // $83D8
        local5 = (local5 + 1);    // $83DB
    } while ((local5 < 2));    // $83DF
    return syscall_id09_syscall_banked_blit_m3(arg1, arg2, 2, 1, &local11, &local10, 224);    // $83F6
    }
}

// Decompiled from source/2-asm-vm\bank12.asm sub $83F7
// $83F7 combat_grid_index
// (body @ $83FC)

word combat_grid_index(word arg1) {
    return (((arg1 < 5) ? 0 : 5) + (arg1 % 5));    // $840D
}

// Decompiled from source/2-asm-vm\bank12.asm sub $840E
// $840E combat_get_ship_stat
// (body @ $8413)

word combat_get_ship_stat(word arg1, word arg2) {
    local11 = ((arg1 * 7) + 0x6C90);    // $841A
    if (!(!((!(*(word*)((local11 + 4))) || !(*(byte*)(local11)))))) return *(byte*)(local11);    // $8423
    local5 = combat_grid_index(arg1);    // $842C
    if (arg2) {    // $842E
    local10 = (mem_74C4 % 15);    // $8436
    phi_val_844d = (mem_74C4 / 15);    // $843C
    } else {
    local6 = *(byte*)((local5 + 0x74AC));    // $8445
    local10 = ((unsigned)local6 % (unsigned)15);    // $8449
    phi_val_844d = ((unsigned)local6 / (unsigned)15);    // $844C
    }
L_844D:
    local9 = phi_val_844d;    // $844D
    local8 = ((local10 << 1) + 1);    // $8451
    local7 = (((local10 & 1) ? 3 : 2) + (local9 << 1));    // $8462
    combat_move_82e4(local8, local7, *(byte*)(local11), (((unsigned)arg1 < (unsigned)5) ? 0 : 1));    // $8474
    return combat_move_82e4(local8, (local7 + 1), *(word*)((local11 + 4)), (((unsigned)arg1 < (unsigned)5) ? 2 : 3));    // $8490
    }
}

// Decompiled from source/2-asm-vm\bank12.asm sub $8491
// $8491 combat_grid_side
// (body @ $8496)

word combat_grid_side(word arg1, word arg2, word arg3) {
    local11 = (((unsigned)arg3 < (unsigned)5) ? 0 : 1);    // $84A1
    return syscall_id09_syscall_banked_blit_m3(arg1, arg2, 2, 2, *(word*)((((local11 << 1) << 1) + 0x9EE8)), *(word*)((((local11 << 1) << 1) + 0x9EEA)), 225);    // $84C0
}

// Decompiled from source/2-asm-vm\bank12.asm sub $84C1
// $84C1 combat_ship_84c1
// (body @ $84C6)

word combat_ship_84c1(word arg1, word arg2) {
    local5 = ((arg1 * 7) + 0x6C90);    // $84CD
    if (!(*(byte*)(local5))) return *(byte*)(local5);    // $84D0
    local6 = combat_grid_index(arg1);    // $84D9
    if (arg2) {    // $84DB
    local11 = (mem_74C4 % 15);    // $84E3
    phi_val_84fa = (mem_74C4 / 15);    // $84E9
    } else {
    local7 = *(byte*)((local6 + 0x74AC));    // $84F2
    local11 = ((unsigned)local7 % (unsigned)15);    // $84F6
    phi_val_84fa = ((unsigned)local7 / (unsigned)15);    // $84F9
    }
L_84FA:
    local10 = phi_val_84fa;    // $84FA
    local9 = ((local11 << 1) + 1);    // $84FE
    local8 = (((local11 % 2) ? 3 : 2) + (local10 << 1));    // $850F
    if (*(word*)((local5 + 4))) goto L_8520;    // $8513
    phi_ret_852e = combat_grid_side(local9, local8, arg1);    // $851D
    goto L_852E;    // $851D
L_8520:
    phi_ret_852e = combat_dir_81e1(local9, local8, *(byte*)((local6 + 0x74B6)), arg1);    // $852A
L_852E:
    return phi_ret_852e;    // $852E
    }
}

// Decompiled from source/2-asm-vm\bank12.asm sub $852F
// $852F combat_get_stat_0
// (body @ $8534)

word combat_get_stat_0(word arg1) {
    combat_get_ship_stat(arg1, 0);    // $8536
    syscall_id17_syscall_busy_wait(24);    // $853E
    return combat_ship_84c1(arg1, 0);    // $8548
}

// Decompiled from source/2-asm-vm\bank12.asm sub $8549
// $8549 combat_get_stat_1
// (body @ $854E)

word combat_get_stat_1(word arg1, word arg2) {
    combat_get_ship_stat(arg1, 1);    // $8550
    combat_get_stat_0(arg2);    // $8555
    return combat_ship_84c1(arg1, 1);    // $855F
}

// Decompiled from source/2-asm-vm\bank12.asm sub $8560
// $8560 combat_pos_8560
// (body @ $8565)

word combat_pos_8560(word arg1, word arg2) {
    local9 = (((unsigned)arg1 < (unsigned)5) ? arg1 : arg2);    // $8570
    local10 = ((local9 * 24) + 0x6AA4);    // $8579
    local11 = ((*(byte*)(local10) * 10) + 0x6BBE);    // $8582
    mem_74C6 = *(byte*)((local11 + 1));    // $8586
    mem_74C8 = *(byte*)((local11 + 2));    // $858C
    mem_74CA = *(byte*)((local11 + 4));    // $8592
    mem_74CC = *(byte*)((local11 + 5));    // $8598
    mem_74CE = *(byte*)((local10 + 22));    // $859F
    mem_74D0 = *(byte*)(((*(byte*)(local10) * 7) + 0x6544));    // $85AB
    local9 = (((unsigned)arg1 < (unsigned)5) ? arg2 : arg1);    // $85B9
    local8 = ((local9 == mem_74D4) ? 75 : 65);    // $85C9
    mem_74CD = local8;    // $85CB
    mem_74CB = local8;    // $85CE
    mem_74C9 = local8;    // $85D1
    mem_74C7 = local8;    // $85D4
    mem_74CF = 80;    // $85D9
    mem_74D1 = *(byte*)((((((unsigned)local9 / (unsigned)5) + 21) * 7) + 0x6544));    // $85E8
    return *(byte*)((((((unsigned)local9 / (unsigned)5) + 21) * 7) + 0x6544));    // $85EB
}

// Decompiled from source/2-asm-vm\bank12.asm sub $85EC
// $85EC combat_85ec
// (body @ $85F1)

word combat_85ec(word arg1) {
    local9 = 1;    // $85F2
    if (((unsigned)arg1 < (unsigned)5)) {    // $85F6
    local9 = 0;    // $85FA
    }
L_85FB:
    local11 = ((((((*(byte*)((local9 + 0x74CC)) << 1) + *(byte*)((local9 + 0x74C8))) + *(byte*)((local9 + 0x74CA))) * ((*(byte*)((local9 + 0x74D0)) / 5) + 1)) / 40) + load_operand16_14(3));    // $862B
    if (local9) goto L_8646;    // $862D
    if (*(byte*)(((arg1 * 24) + 0x6AA4))) goto L_864E;    // $8639
    goto L_8648;    // $8643
L_8646:
L_8648:
    local11 = (local11 + ((local11 << 1) / 8));    // $864D
L_864E:
    local10 = ((*(word*)(((arg1 * 7) + 0x6C94)) * *(byte*)((local9 + 0x74CE))) / 150);    // $8663
    // ext_op ext_op_F1A9
    // ext_op ext_op_F263
    // ext_op ext_op_F1A9
    // ext_op ext_op_F26C
    // ext_op ext_op_EF81
    // ext_op sdiv32
    // ext_op ext_op_F03F
    // ext_op ext_op_F1B3
    return local10;    // $8682
}

// Decompiled from source/2-asm-vm\bank12.asm sub $8683
// $8683 combat_get_ship_8683
// (body @ $8688)

word combat_get_ship_8683(word arg1, word arg2) {
    local11 = ((arg2 * 7) + 0x6C90);    // $868F
    *(word*)((local11 + 4)) = (*(word*)((local11 + 4)) - max_s16(*(word*)((local11 + 4)), combat_85ec(arg1)));    // $86A5
    phi_ret_86e5 = ((unsigned)arg1 < (unsigned)5);    // $86A9
    if (phi_ret_86e5) {    // $86A9
    phi_ret_86e5 = *(word*)((local11 + 4));    // $86AF
    if (phi_ret_86e5) goto L_86E5;    // $86AF
    local9 = *(byte*)(((arg1 * 24) + 0x6AA4));    // $86BB
    phi_ret_86e5 = (*(byte*)(((local9 * 7) + 0x6544)) != 50);    // $86C7
    if (phi_ret_86e5) {    // $86C7
    local10 = ((*(byte*)((local11 + 6)) & 15) + -4);    // $86D1
    *(word*)(((local9 * 10) + 0x6BC4)) = (*(word*)(((local9 * 10) + 0x6BC4)) + ((local10 * local10) * 100));    // $86E4
    phi_ret_86e5 = *(word*)(((local9 * 10) + 0x6BC4));    // $86E4
    }
    }
L_86E5:
    return phi_ret_86e5;    // $86E5
}

// Decompiled from source/2-asm-vm\bank12.asm sub $86E6
// $86E6 combat_86e6
// (body @ $86EB)

word combat_86e6(word arg1, word arg2) {
    combat_pos_8560(arg1, arg2);    // $86ED
    combat_get_ship_8683(arg1, arg2);    // $86F3
    combat_get_ship_8683(arg2, arg1);    // $86F9
    return combat_get_stat_1(arg1, arg2);    // $8703
}

// Decompiled from source/2-asm-vm\bank12.asm sub $8704
// $8704 combat_action_8704
// (body @ $8709)

word combat_action_8704(word arg1, word arg2) {
    combat_pos_8560(arg1, arg2);    // $870B
    local5 = (((unsigned)arg1 < (unsigned)5) ? 0 : 1);    // $871A
    local4 = ((arg1 * 7) + 0x6C90);    // $8722
    local11 = ((*(byte*)((local5 + 0x74CA)) << 1) + *(byte*)((local5 + 0x74C6)));    // $8733
    local10 = ((((((*(byte*)((local5 + 0x74D0)) / 5) + 1) * local11) / 40) + load_operand16_14(5)) + (local11 / 15));    // $8750
    local9 = *(byte*)(((arg1 * 24) + 0x6AA4));    // $875A
    if (local5) goto L_8776;    // $875C
    if (local9) goto L_8776;    // $8760
    local10 = max_s16((((unsigned)(record_iter_d824(3) * local10) >> 3) + local10), 100);    // $8775
L_8776:
    if (local5) {    // $8777
    local10 = max_s16((((unsigned)(local10 << 1) >> 3) + local10), 100);    // $8787
    }
L_8788:
    local8 = (((((unsigned)(((unsigned)max_s16(*(byte*)((local4 + 3)), *(word*)((local4 + 4))) >> 1) * *(byte*)((local5 + 0x74CE))) / (unsigned)100) * local10) / 100) + load_operand16_14(3));    // $87AF
    if (((((unsigned)*(byte*)((local4 + 6)) >> 4) & 3) == 3)) {    // $87B9
    local8 = (local8 * 2);    // $87C0
    }
L_87C1:
    if (local5) {    // $87C2
    if (*(byte*)(((arg2 * 24) + 0x6AA4))) goto L_87E0;    // $87CE
    local8 = (local8 - (record_iter_d824(1) * (local8 / 10)));    // $87DF
    }
L_87E0:
    if (local5) goto L_87EC;    // $87E1
    local8 = (local8 - ((local8 / 10) << 1));    // $87EB
L_87EC:
    local6 = (local8 / 2);    // $87EF
    local4 = ((arg2 * 7) + 0x6C90);    // $87F7
    *(byte*)(local4) = (*(byte*)(local4) - max_s16(*(byte*)(local4), local8));    // $8806
    *(word*)((local4 + 4)) = (*(word*)((local4 + 4)) - max_s16(*(word*)((local4 + 4)), (load_operand16_14(3) + local6)));    // $881E
    *(byte*)((local4 + 2)) = (*(byte*)((local4 + 2)) - max_s16(*(byte*)((local4 + 2)), (load_operand16_14(3) + local6)));    // $8836
    *(byte*)((local4 + 1)) = (*(byte*)((local4 + 1)) - max_s16(*(byte*)((local4 + 1)), (load_operand16_14(3) + local6)));    // $884E
    combat_get_stat_0(arg2);    // $8850
    if (*(byte*)(local4)) goto L_88A4;    // $8856
    draw_icon_dfae(((mem_74C0 << 1) + 1), (((mem_74C0 % 2) ? 3 : 2) + (mem_74C2 << 1)), *(byte*)((((mem_74C2 * 15) + mem_74C0) + 0x7417)));    // $8883
    if (((unsigned)arg2 < (unsigned)5)) {    // $888A
    *(byte*)(((*(byte*)(((arg2 * 24) + 0x6AA4)) * 7) + 0x6548)) = (*(byte*)(((*(byte*)(((arg2 * 24) + 0x6AA4)) * 7) + 0x6548)) & 254);    // $88A3
    }
L_88A4:
    phi_ret_88dc = *(word*)((local4 + 4));    // $88AC
    if ((!(*(byte*)(local4)) || !(phi_ret_88dc))) {    // $88AC
    phi_ret_88dc = local5;    // $88B0
    if (phi_ret_88dc) goto L_88DC;    // $88B0
    phi_ret_88dc = (*(byte*)(((local9 * 7) + 0x6544)) != 50);    // $88BE
    if (phi_ret_88dc) {    // $88BE
    local7 = ((*(byte*)((local4 + 6)) & 15) + -4);    // $88C8
    *(word*)(((local9 * 10) + 0x6BC4)) = (*(word*)(((local9 * 10) + 0x6BC4)) + ((local7 * local7) * 100));    // $88DB
    phi_ret_88dc = *(word*)(((local9 * 10) + 0x6BC4));    // $88DB
    }
    }
L_88DC:
    return phi_ret_88dc;    // $88DC
}

// Decompiled from source/2-asm-vm\bank12.asm sub $88DD
// $88DD combat_calc_power
// (body @ $88E2)

word combat_calc_power(word arg1) {
    return max_s16(20, ((((unsigned)(*(byte*)(((arg1 * 7) + 0x6C92)) * mem_74DC) / (unsigned)50) + ((unsigned)*(byte*)(((*(byte*)(((arg1 * 24) + 0x6AA4)) * 7) + 0x6544)) / (unsigned)5)) + 6));    // $890E
}

// Decompiled from source/2-asm-vm\bank12.asm sub $890F
// $890F combat_890f
// (body @ $8914)

word combat_890f(word arg1, word arg2) {
    local9 = 250;    // $8917
    *(byte*)&local10 = ((arg2 << 3) + 3);    // $891C
    *(byte*)(fp - 3) = local9;    // $8920
    *(byte*)&local11 = 3;    // $8924
    *(byte*)(fp - 1) = ((arg1 << 3) + 4);    // $892B
    syscall_id13_syscall_set_chr_bank_alt(&local10, mem_75F8, 1);    // $8937
    mem_75F8 = (mem_75F8 + 1);    // $893F
    return mem_75F8;    // $8942
}

// Decompiled from source/2-asm-vm\bank12.asm sub $8943
// $8943 combat_set_state
// (body @ $8948)

word combat_set_state(void) {
    mem_75F8 = 13;    // $8949
    return syscall_id12_syscall_set_chr_banks(mem_75F8, (63 - mem_75F8));    // $895B
}

// Decompiled from source/2-asm-vm\bank12.asm sub $895C
// $895C combat_loop_895c
// (body @ $8961)

word combat_loop_895c(void) {
    do {    // $8961
    } while ((syscall_id16_syscall_read_controller(0) != 4));    // $896A
    do {    // $896D
    } while (syscall_id16_syscall_read_controller(0));    // $8974
    return syscall_id16_syscall_read_controller(0);    // $8977
}

// Decompiled from source/2-asm-vm\bank12.asm sub $8978
// $8978 combat_scan_749e
// (body @ $897D)

word combat_scan_749e(word arg1) {
    local11 = 0x749E;    // $8980
    local10 = (0x749E + mem_74A8);    // $8985
    while (((unsigned)local11 < (unsigned)local10)) {    // $8998
        combat_get_ship_stat(*(byte*)(local11), (*(byte*)(local11) == arg1));    // $8991
        local11 = (local11 + 1);    // $8997
    }
    local11 = 0x74A3;    // $89A1
    local10 = (0x74A3 + mem_74AA);    // $89A6
    while (((unsigned)local11 < (unsigned)local10)) {    // $89B9
        combat_get_ship_stat(*(byte*)(local11), (*(byte*)(local11) == arg1));    // $89B2
        local11 = (local11 + 1);    // $89B8
    }
    combat_loop_895c();    // $89BF
    local11 = 0x74A3;    // $89C5
    local10 = (0x74A3 + mem_74AA);    // $89CA
    while (((unsigned)local11 < (unsigned)local10)) {    // $89DD
        combat_ship_84c1(*(byte*)(local11), (*(byte*)(local11) == arg1));    // $89D6
        local11 = (local11 + 1);    // $89DC
    }
    local11 = 0x749E;    // $89E6
    local10 = (0x749E + mem_74A8);    // $89EB
    while (((unsigned)local11 < (unsigned)local10)) {    // $89FE
        combat_ship_84c1(*(byte*)(local11), (*(byte*)(local11) == arg1));    // $89F7
        local11 = (local11 + 1);    // $89FD
    }
    return ((unsigned)local11 < (unsigned)local10);    // $8A04
}

// Decompiled from source/2-asm-vm\bank12.asm sub $8A05
// $8A05 combat_draw_a05
// (body @ $8A0A)

word combat_draw_a05(word arg1, word arg2) {
    local11 = 232;    // $8A0D
    arg1 = (arg1 * 8);    // $8A12
    arg2 = ((arg2 << 3) - 1);    // $8A17
    *(byte*)&local4 = arg2;    // $8A19
    *(byte*)&local2 = arg2;    // $8A1C
    *(byte*)&local8 = (arg2 + 8);    // $8A21
    *(byte*)&local6 = (arg2 + 8);    // $8A24
    *(byte*)(fp - 9) = arg1;    // $8A28
    *(byte*)(fp - 17) = arg1;    // $8A2B
    *(byte*)(fp - 5) = (arg1 + 8);    // $8A30
    *(byte*)(fp - 13) = (arg1 + 8);    // $8A33
    *(byte*)&local9 = 0;    // $8A37
    *(byte*)&local7 = 0;    // $8A3A
    *(byte*)&local5 = 0;    // $8A3D
    *(byte*)&local3 = 0;    // $8A40
    local10 = 0;    // $8A44
    do {    // $8A45
        *(byte*)((((local10 << 1) << 1) + (fp - 19))) = local11;    // $8A50
        local10 = (local10 + 1);    // $8A53
        local11 = (local11 + 1);    // $8A56
    } while (((unsigned)local10 < (unsigned)4));    // $8A5A
    return syscall_id13_syscall_set_chr_bank_alt(&local2, 1, 4);    // $8A68
}

// Decompiled from source/2-asm-vm\bank12.asm sub $8A69
// $8A69 combat_a69
// (body @ $8A6E)

word combat_a69(word arg1) {
    local11 = 0;    // $8A6F
    while (1) {    // $8A70
L_8A70:
        combat_draw_a05(((mem_74C0 << 1) + 1), (((mem_74C0 % 2) ? 3 : 2) + (mem_74C2 << 1)));    // $8A8B
        helper_ce4d(local11, 12);    // $8A91
        local11 = cursor_blink_wait();    // $8A98
        switch (cursor_blink_wait()) {    // $8A99
            case 1: goto L_8ACD;    // $8A99
            case 2: goto L_8AC2;    // $8A99
            case 4: goto L_8ABA;    // $8A99
            case 16: goto L_8ADE;    // $8A99
            case 32: goto L_8AEE;    // $8A99
            case 64: goto L_8AFD;    // $8A99
            case 128: goto L_8B0D;    // $8A99
            default: goto L_8A70;    // $8A99
        }    // $8A99
L_8ABA:
        combat_scan_749e(arg1);    // $8ABB
        continue;    // $8ABF
L_8AC2:
        syscall_id12_syscall_set_chr_banks(1, 4);    // $8AC5
        return 240;    // $8ACC
L_8ACD:
        syscall_id12_syscall_set_chr_banks(1, 4);    // $8AD0
        return ((mem_74C2 * 15) + mem_74C0);    // $8ADD
L_8ADE:
        if (!(mem_74C2)) continue;    // $8AE1
        phi_val_8ae8 = (mem_74C2 - 1);    // $8AE7
L_8AE8:
        mem_74C2 = phi_val_8ae8;    // $8AE8
        continue;    // $8AEB
L_8AEE:
        if ((mem_74C2 >= 8)) continue;    // $8AF3
        phi_val_8ae8 = (mem_74C2 + 1);    // $8AFA
        goto L_8AE8;    // $8AFA
L_8AFD:
        if (!(mem_74C0)) continue;    // $8B00
        phi_val_8b07 = (mem_74C0 - 1);    // $8B06
L_8B07:
        mem_74C0 = phi_val_8b07;    // $8B07
        continue;    // $8B0A
L_8B0D:
        if ((mem_74C0 >= 14)) continue;    // $8B12
        phi_val_8b07 = (mem_74C0 + 1);    // $8B19
        goto L_8B07;    // $8B19
    }
}

// Decompiled from source/2-asm-vm\bank12.asm sub $8B20
// $8B20 combat_b20
// (body @ $8B25)

word combat_b20(word arg1, word arg2) {
    phi_ret_8b67 = (arg1 >= 0);    // $8B28
    if (phi_ret_8b67) {    // $8B28
    phi_ret_8b67 = (arg1 < 15);    // $8B2E
    if (phi_ret_8b67) {    // $8B2E
    phi_ret_8b67 = (arg2 >= 0);    // $8B34
    if (phi_ret_8b67) {    // $8B34
    phi_ret_8b67 = (arg2 < 9);    // $8B3A
    if (phi_ret_8b67) {    // $8B3A
    combat_890f(((arg1 << 1) + 1), (((arg1 % 2) ? 3 : 2) + (arg2 << 1)));    // $8B52
    *(byte*)((((arg2 * 15) + arg1) + 0x7390)) = (*(byte*)((((arg2 * 15) + arg1) + 0x7390)) ^ 255);    // $8B66
    phi_ret_8b67 = *(byte*)((((arg2 * 15) + arg1) + 0x7390));    // $8B66
    }
    }
    }
    }
L_8B67:
    return phi_ret_8b67;    // $8B67
}

// Decompiled from source/2-asm-vm\bank12.asm sub $8B68
// $8B68 combat_grid_to_index
// (body @ $8B6D)

word combat_grid_to_index(void) {
    local8 = ((mem_74C2 * 15) + mem_74C0);    // $8B76
    local10 = 0x74A3;    // $8B7A
    local9 = (0x74A3 + mem_74AA);    // $8B7F
    while (((unsigned)local10 < (unsigned)local9)) {    // $8BAB
        local11 = ((*(byte*)(local10) * 7) + 0x6C90);    // $8B8B
        if (!((*(byte*)((((unsigned)*(byte*)(local10) % (unsigned)5) + 0x74B1)) == local8))) goto L_8BA8;    // $8B97
        if (!(*(word*)((local11 + 4)))) goto L_8BA8;    // $8B9D
        if (!(!(*(byte*)(local11)))) return *(byte*)(local10);    // $8BA2
        local10 = (local10 + 1);    // $8BAA
    }
    return mem_74A3;    // $8BB4
}

// Decompiled from source/2-asm-vm\bank12.asm sub $8BB5
// $8BB5 combat_bb5
// (body @ $8BBA)

word combat_bb5(word arg1, word arg2) {
    local10 = 1;    // $8BBB
    if ((arg1 % 2)) {    // $8BBF
    local10 = 2;    // $8BC3
    }
L_8BC4:
    mem_75F8 = 13;    // $8BC5
    local11 = 0;    // $8BC9
    do {    // $8BCA
        combat_b20((*(word*)(((local11 * 6) + 0x9CDE)) + arg1), (*(word*)((((local11 * 6) + (local10 << 1)) + 0x9CDE)) + arg2));    // $8BE5
        local11 = (local11 + 1);    // $8BEB
    } while (((unsigned)local11 < (unsigned)6));    // $8BEF
    return ((unsigned)local11 < (unsigned)6);    // $8BF2
}

// Decompiled from source/2-asm-vm\bank12.asm sub $8BF3
// $8BF3 combat_board
// (body @ $8BF8)

word combat_board(word arg1) {
    local8 = mem_74C0;    // $8BFB
    local7 = mem_74C2;    // $8BFF
    combat_bb5(local8, local7);    // $8C02
    do {    // $8C06
        combat_draw_markers();    // $8C06
        draw_string(0x9EF0, 1);    // $8C0D
        local11 = combat_a69(arg1);    // $8C16
        if ((local11 == 240)) break;    // $8C1C
    } while (*(byte*)((local11 + 0x7390)));    // $8C25
L_8C28:
    combat_bb5(local8, local7);    // $8C2A
    combat_set_state();    // $8C2E
    if ((local11 == 240)) {    // $8C36
    mem_74C0 = local8;    // $8C3A
    mem_74C2 = local7;    // $8C3E
    return 0;    // $8C42
    }
L_8C43:
    local10 = *(byte*)(((arg1 * 24) + 0x6AA4));    // $8C4C
    if ((*(byte*)(((local10 * 7) + 0x6544)) != 50)) {    // $8C58
    *(word*)(((local10 * 10) + 0x6BC4)) = (*(word*)(((local10 * 10) + 0x6BC4)) + 2);    // $8C67
    }
L_8C68:
    local9 = combat_grid_to_index();    // $8C6B
    combat_get_stat_1(arg1, local9);    // $8C6E
    combat_draw_sprite();    // $8C72
    combat_86e6(arg1, local9);    // $8C77
    mem_74C0 = local8;    // $8C7C
    mem_74C2 = local7;    // $8C80
    return 1;    // $8C84
}

// Decompiled from source/2-asm-vm\bank12.asm sub $8C85
// $8C85 combat_c85
// (body @ $8C8A)

word combat_c85(word arg1, word arg2, word arg3) {
    local8 = ((unsigned)*(byte*)((((((unsigned)arg1 < (unsigned)5) ? 0 : 5) + ((unsigned)arg1 % (unsigned)5)) + 0x74B6)) % (unsigned)3);    // $8CA2
    local7 = (((((unsigned)*(byte*)(((arg1 * 7) + 0x6C96)) >> 4) & 3) & 1) ? 6 : 14);    // $8CB9
    mem_75F8 = 13;    // $8CBB
    local9 = 1;    // $8CBF
    if ((arg2 % 2)) {    // $8CC3
    local9 = 2;    // $8CC7
    }
L_8CC8:
    local11 = ((local8 * 14) + 0x9DB6);    // $8CCF
    local10 = (((local8 * 14) + 0x9DB6) + local7);    // $8CD2
    while (((unsigned)local11 < (unsigned)local10)) {    // $8CFA
        combat_b20((*(word*)(((*(byte*)(local11) * 6) + 0x9D02)) + arg2), (*(word*)((((*(byte*)(local11) * 6) + (local9 << 1)) + 0x9D02)) + arg3));    // $8CF3
        local11 = (local11 + 1);    // $8CF9
    }
    return ((unsigned)local11 < (unsigned)local10);    // $8D00
}

// Decompiled from source/2-asm-vm\bank12.asm sub $8D01
// $8D01 combat_fire
// (body @ $8D06)

word combat_fire(word arg1) {
    local8 = mem_74C0;    // $8D09
    local7 = mem_74C2;    // $8D0D
    combat_c85(arg1, local8, local7);    // $8D11
    do {    // $8D15
        combat_draw_markers();    // $8D15
        draw_string(0x9F02, 1);    // $8D1C
        local11 = combat_a69(arg1);    // $8D25
        if ((local11 == 240)) break;    // $8D2B
    } while (*(byte*)((local11 + 0x7390)));    // $8D34
L_8D37:
    combat_c85(arg1, local8, local7);    // $8D3A
    combat_set_state();    // $8D3E
    if ((local11 == 240)) {    // $8D46
    mem_74C0 = local8;    // $8D4A
    mem_74C2 = local7;    // $8D4E
    return 0;    // $8D52
    }
L_8D53:
    local10 = *(byte*)(((arg1 * 24) + 0x6AA4));    // $8D5C
    if ((*(byte*)(((local10 * 7) + 0x6544)) != 50)) {    // $8D68
    *(word*)(((local10 * 10) + 0x6BC4)) = (*(word*)(((local10 * 10) + 0x6BC4)) + 2);    // $8D77
    }
L_8D78:
    local9 = combat_grid_to_index();    // $8D7B
    combat_grid_wrap(local9);    // $8D7D
    combat_action_8704(arg1, local9);    // $8D83
    mem_74C0 = local8;    // $8D88
    mem_74C2 = local7;    // $8D8C
    return 1;    // $8D90
}

// Decompiled from source/2-asm-vm\bank12.asm sub $8D91
// $8D91 combat_board_check
// (body @ $8D96)

word combat_board_check(word arg1) {
    if (!(!(combat_can_board()))) return combat_board(arg1);    // $8D99
    if (!(!(combat_get_ship_class_2d(arg1)))) return combat_fire(arg1);    // $8DA7
    return 0;    // $8DB1
}

// Decompiled from source/2-asm-vm\bank12.asm sub $8DB2
// $8DB2 combat_db2
// (body @ $8DB7)

word combat_db2(word arg1, word arg2, word arg3) {
    arg1 = (arg1 * 8);    // $8DBB
    arg2 = ((arg2 << 3) - 1);    // $8DC0
    *(byte*)&local4 = arg2;    // $8DC2
    *(byte*)&local2 = arg2;    // $8DC5
    *(byte*)&local8 = (arg2 + 8);    // $8DCA
    *(byte*)&local6 = (arg2 + 8);    // $8DCD
    *(byte*)(fp - 9) = arg1;    // $8DD1
    *(byte*)(fp - 17) = arg1;    // $8DD4
    *(byte*)(fp - 5) = (arg1 + 8);    // $8DD9
    *(byte*)(fp - 13) = (arg1 + 8);    // $8DDC
    *(byte*)&local9 = 0;    // $8DE0
    *(byte*)&local7 = 0;    // $8DE3
    *(byte*)&local5 = 0;    // $8DE6
    *(byte*)&local3 = 0;    // $8DE9
    local11 = *(byte*)((arg3 + 0x9F16));    // $8DF2
    local10 = 0;    // $8DF4
    do {    // $8DF5
        *(byte*)((((local10 << 1) << 1) + (fp - 19))) = local11;    // $8E00
        local10 = (local10 + 1);    // $8E03
        local11 = (local11 + 1);    // $8E06
    } while (((unsigned)local10 < (unsigned)4));    // $8E0A
    return syscall_id13_syscall_set_chr_bank_alt(&local2, 1, 4);    // $8E18
}

// Decompiled from source/2-asm-vm\bank12.asm sub $8E19
// $8E19 combat_e19
// (body @ $8E1E)

word combat_e19(word arg1, word arg2) {
    mem_75FA = arg1;    // $8E1F
    local11 = ((mem_74C0 << 1) + 1);    // $8E27
    local10 = (((mem_74C0 % 2) ? 3 : 2) + (mem_74C2 << 1));    // $8E3C
    local8 = 0;    // $8E3E
L_8E3F:
    combat_db2(local11, local10, mem_75FA);    // $8E44
    helper_ce4d(local8, 12);    // $8E4A
    local8 = cursor_blink_wait();    // $8E51
    switch (cursor_blink_wait()) {    // $8E52
        case 1: goto L_8EB3;    // $8E52
        case 2: goto L_8EA8;    // $8E52
        case 4: goto L_8E73;    // $8E52
        case 16: goto L_8E8A;    // $8E52
        case 32: goto L_8EA4;    // $8E52
        case 64: goto L_8E91;    // $8E52
        case 128: goto L_8E7B;    // $8E52
        default: goto L_8E3F;    // $8E52
    }    // $8E52
L_8E73:
    combat_scan_749e(arg2);    // $8E74
    goto L_8E3F;    // $8E78
L_8E7B:
    mem_75FA = (mem_75FA + 1);    // $8E7F
    if ((mem_75FA <= 5)) goto L_8E3F;    // $8E87
L_8E8A:
    phi_val_8e8b = 0;    // $8E8A
L_8E8B:
    mem_75FA = phi_val_8e8b;    // $8E8B
    goto L_8E3F;    // $8E8E
L_8E91:
    mem_75FA = (mem_75FA - 1);    // $8E95
    if ((mem_75FA >= 0)) goto L_8E3F;    // $8E9D
    phi_val_8e8b = 5;    // $8EA1
    goto L_8E8B;    // $8EA1
L_8EA4:
    phi_val_8e8b = 3;    // $8EA5
    goto L_8E8B;    // $8EA5
L_8EA8:
    syscall_id12_syscall_set_chr_banks(1, 4);    // $8EAB
    return 255;    // $8EB2
L_8EB3:
    local9 = 5;    // $8EB4
L_8EB5:
    if ((((unsigned)(arg1 + local9) % (unsigned)6) == mem_75FA)) {    // $8EBE
    syscall_id12_syscall_set_chr_banks(1, 4);    // $8EC4
    return (local9 + -5);    // $8ECB
    }
L_8ECC:
    local9 = (local9 + 1);    // $8ECE
    if (((unsigned)local9 < (unsigned)8)) goto L_8EB5;    // $8ED2
    goto L_8E3F;    // $8ED5
}

// Decompiled from source/2-asm-vm\bank12.asm sub $8ED8
// $8ED8 combat_ed8
// (body @ $8EDD)

word combat_ed8(word arg1, word arg2) {
    mem_75F8 = 13;    // $8EDE
    local8 = 1;    // $8EE2
    if ((mem_74C0 % 2)) {    // $8EE8
    local8 = 2;    // $8EEC
    }
L_8EED:
    local2 = ((arg1 * 7) + 0x6C90);    // $8EF4
    local6 = (((unsigned)(100 - *(byte*)((local2 + 1))) / (unsigned)25) + 1);    // $8F01
    local5 = (100 - *(byte*)((local2 + 2)));    // $8F0A
    local10 = 0;    // $8F0C
    local11 = 0;    // $8F0E
    while (((unsigned)local10 < (unsigned)3)) {    // $8FA6
        local9 = ((local10 != 1) ? local6 : 0);    // $8F1D
        local7 = ((unsigned)((*(byte*)((arg1 + 0x74B6)) + local10) + 5) % (unsigned)6);    // $8F29
        local9 = (local9 + (((unsigned)(*(byte*)((local7 + 0x74D6)) * local5) / (unsigned)60) + 1));    // $8F39
        if (((unsigned)arg2 >= (unsigned)local9)) {    // $8F3D
        local4 = (*(word*)(((local7 * 6) + 0x9CDE)) + mem_74C0);    // $8F4C
        local3 = (*(word*)((((local7 * 6) + (local8 << 1)) + 0x9CDE)) + mem_74C2);    // $8F5E
        if ((local4 >= 0)) {    // $8F62
        if ((local4 < 15)) {    // $8F68
        if ((local3 >= 0)) {    // $8F6E
        if ((local3 < 9)) {    // $8F74
        if (((unsigned)*(byte*)((((local3 * 15) + local4) + 0x7390)) <= (unsigned)128)) {    // $8F85
        combat_890f(((local4 << 1) + 1), (((local4 % 2) ? 3 : 2) + (local3 << 1)));    // $8F9D
        local11 = 1;    // $8FA2
        }
        }
        }
        }
        }
        }
L_8FA3:
        local10 = (local10 + 1);    // $8FA5
    }
    return local11;    // $8FAD
}

// Decompiled from source/2-asm-vm\bank12.asm sub $8FAE
// $8FAE combat_draw_mobility
// (body @ $8FB3)

word combat_draw_mobility(word arg1) {
    mem_74DE = combat_calc_power(arg1);    // $8FB8
    local5 = ((arg1 * 7) + 0x6C90);    // $8FC2
    local7 = (((unsigned)(100 - *(byte*)((local5 + 1))) / (unsigned)25) + 1);    // $8FCF
    local6 = (100 - *(byte*)((local5 + 2)));    // $8FD8
    combat_clear_metasprite();    // $8FD9
    combat_draw_markers();    // $8FDC
    local11 = 0;    // $8FE0
L_8FE1:
    if (mem_74DE) goto L_8FEE;    // $8FE4
    goto L_9086;    // $8FE7
L_8FEA:
    phi_ret_9092 = 1;    // $8FEB
    goto L_9092;    // $8FEB
L_8FEE:
    set_tile_cursor(13, 22);    // $8FF1
    draw_field_m1(0x9F1C, mem_74DE);    // $8FFB
    if (!((combat_ed8(arg1, mem_74DE) || !(local11)))) goto L_9086;    // $900B
    local10 = combat_e19(*(byte*)((arg1 + 0x74B6)), arg1);    // $901A
    combat_set_state();    // $901B
    combat_ed8(arg1, mem_74DE);    // $9022
    combat_set_state();    // $9026
    if ((local10 == 255)) goto L_9086;    // $902E
    local11 = 1;    // $9032
    local8 = ((local10 != 1) ? local7 : 0);    // $903E
    local9 = ((unsigned)((*(byte*)((arg1 + 0x74B6)) + local10) + 5) % (unsigned)6);    // $904A
    local8 = (local8 + (((unsigned)(*(byte*)((local9 + 0x74D6)) * local6) / (unsigned)60) + 1));    // $905A
    if (!(((unsigned)local8 <= (unsigned)mem_74DE))) goto L_8FE1;    // $9060
    mem_74DE = (mem_74DE - local8);    // $9069
    *(byte*)((arg1 + 0x74B6)) = local9;    // $9073
    if (!(combat_check_8209(arg1, local9, 0x03C0))) goto L_9086;    // $907D
    if (!(combat_can_board())) goto L_8FE1;    // $9083
L_9086:
    combat_tile_x();    // $9086
    if (combat_board_check(arg1)) goto L_8FEA;    // $908E
    phi_ret_9092 = local11;    // $9091
L_9092:
    return phi_ret_9092;    // $9092
}

// Decompiled from source/2-asm-vm\bank12.asm sub $9093
// $9093 combat_ret1
// (body @ $9098)

word combat_ret1(void) {
    return 1;    // $9099
}

// Decompiled from source/2-asm-vm\bank12.asm sub $909A
// $909A combat_9a
// (body @ $909F)

word combat_9a(word arg1, word arg2) {
    local11 = 232;    // $90A2
    arg1 = (arg1 * 8);    // $90A7
    arg2 = ((arg2 << 3) - 1);    // $90AC
    return syscall_id14_syscall_set_metasprite(0x0101, ((arg2 << 8) + arg1), 0xE9E8, 0xEBEA, 0);    // $90C2
}

// Decompiled from source/2-asm-vm\bank12.asm sub $90C3
// $90C3 combat_clear_metasprite2
// (body @ $90C8)

word combat_clear_metasprite2(void) {
    return syscall_id14_syscall_set_metasprite(0x0100, 0, 0, 0, 0);    // $90D4
}

// Decompiled from source/2-asm-vm\bank12.asm sub $90D5
// $90D5 combat_wait_button
// (body @ $90DA)

word combat_wait_button(void) {
    while (!(syscall_id16_syscall_read_controller(0))) {    // $9111
        if (syscall_id16_syscall_read_controller(1)) break;    // $90E4
        syscall_id08_syscall_queue_ppu_transfer(21, 27, 1, 1, 228, 0);    // $90F2
        syscall_id17_syscall_busy_wait(3);    // $90F9
        syscall_id08_syscall_queue_ppu_transfer(21, 27, 1, 1, 0, 0);    // $9106
        syscall_id17_syscall_busy_wait(3);    // $910D
    }
L_911B:
L_9128:
    syscall_id08_syscall_queue_ppu_transfer(21, 27, 1, 1, 0, 0);    // $9124
    if (syscall_id16_syscall_read_controller(0)) goto L_9128;    // $912F
    if (syscall_id16_syscall_read_controller(1)) goto L_9128;    // $9139
    return syscall_id16_syscall_read_controller(1);    // $913C
}

// Decompiled from source/2-asm-vm\bank12.asm sub $913D
// $913D combat_draw_ship_stats
// (body @ $9142)

word combat_draw_ship_stats(word arg1) {
    combat_9a(((mem_74C0 << 1) + 1), (((mem_74C0 % 2) ? 3 : 2) + (mem_74C2 << 1)));    // $915D
    dsel_9178 = ((unsigned)arg1 >= (unsigned)mem_74A8);    // $9178
    local9 = *(byte*)(((dsel_9178 ? (arg1 - mem_74A8) : arg1) + (dsel_9178 ? 0x74A3 : 0x749E)));    // $917A
    local11 = ((local9 * 7) + 0x6C90);    // $9182
    if (!(!((!(*(word*)((local11 + 4))) || !(*(byte*)(local11)))))) return combat_clear_metasprite2();    // $918B
    combat_draw_markers();    // $9192
    draw_string_banked(record_base_6b1c((*(byte*)((local11 + 6)) & 15)));    // $91A0
    if (((mem_74D2 == local9) || (mem_74D4 == local9))) {    // $91B1
    }
L_91BC:
    draw_string(0x9F29, 0);    // $91B8
    draw_field(0x9F35, *(word*)((local11 + 4)));    // $91C3
    draw_string(0x9F3F, 0);    // $91CB
    local8 = (((unsigned)*(byte*)((local11 + 6)) >> 4) & 3);    // $91D6
    draw_string_banked(record_field_word(((local8 << 1) + 0xBC33)));    // $91E3
    if (local8) {    // $91E8
    }
L_91F6:
    draw_field(0x9F47, *(byte*)((local11 + 3)));    // $91F2
    combat_wait_button();    // $91F6
    combat_draw_markers();    // $91F9
    draw_field(0x9F50, combat_calc_power(local9));    // $9205
    draw_field(0x9F5E, *(byte*)(local11));    // $920F
    draw_field(0x9F6E, (((unsigned)(100 - *(byte*)((local11 + 1))) / (unsigned)25) + 1));    // $9223
    combat_wait_button();    // $9227
    if (((unsigned)local9 < (unsigned)5)) goto L_9238;    // $922D
    if ((local9 == mem_74D4)) {    // $9235
L_9238:
    combat_draw_markers();    // $9238
    dsel_9252 = ((unsigned)local9 < (unsigned)5);    // $9252
    local9 = (dsel_9252 ? *(byte*)(((local9 * 24) + 0x6AA4)) : (((unsigned)local9 / (unsigned)5) + 20));    // $9252
    local10 = ((local9 * 7) + 0x6542);    // $925A
    resolve_field_ptr(13, 22, local9, 0);    // $9260
    set_tile_cursor(19, 23);    // $9268
    draw_string_banked(*(word*)(local10));    // $926F
    set_draw_origin(19, 25);    // $9277
    draw_string(0x9F81, 0);    // $927F
    set_draw_origin(19, 26);    // $9287
    draw_field(0x9F88, *(byte*)((local10 + 2)));    // $9292
    combat_wait_button();    // $9296
    }
L_929C:
    reset_chr_alloc();    // $9299
    combat_draw_markers();    // $929C
    return combat_clear_metasprite2();    // $92A2
}

// Decompiled from source/2-asm-vm\bank12.asm sub $92A3
// $92A3 combat_view_vessel
// (body @ $92A8)

word combat_view_vessel(word arg1) {
    local8 = mem_74C0;    // $92AB
    local7 = mem_74C2;    // $92AF
L_92B0:
    combat_draw_markers();    // $92B0
    combat_clear_metasprite();    // $92B3
    draw_string(0x9F92, 1);    // $92BA
    local10 = combat_a69(arg1);    // $92C3
    local9 = (mem_74A8 + mem_74AA);    // $92CB
    phi_val_9301 = 0;    // $92CD
    goto L_9301;    // $92CD
L_92D0:
    dsel_92f3 = ((unsigned)local11 < (unsigned)mem_74A8);    // $92F3
    if ((*(byte*)(((dsel_92f3 ? *(byte*)((local11 + 0x749E)) : ((unsigned)*(byte*)(((local11 - mem_74A8) + 0x74A3)) % (unsigned)5)) + (dsel_92f3 ? 0x74AC : 0x74B1))) == local10)) {    // $92F7
    }
L_92FF:
    combat_draw_ship_stats(local11);    // $92FB
    phi_val_9301 = (local11 + 1);    // $9300
L_9301:
    local11 = phi_val_9301;    // $9301
    if (((unsigned)local11 < (unsigned)local9)) goto L_92D0;    // $9305
    if ((local10 != 240)) goto L_92B0;    // $930D
    mem_74C0 = local8;    // $9311
    mem_74C2 = local7;    // $9315
    return 0;    // $9319
}

// Decompiled from source/2-asm-vm\bank12.asm sub $931A
// $931A combat_set_74e0
// (body @ $931F)

word combat_set_74e0(void) {
    mem_74E0 = 3;    // $9320
    mem_75F6 = 1;    // $9324
    return 1;    // $9328
}

// Decompiled from source/2-asm-vm\bank12.asm sub $9329
// $9329 combat_329
// (body @ $932E)

word combat_329(word arg1, word arg2) {
    combat_draw_markers();    // $932E
    local10 = 0;    // $9332
    local8 = 0;    // $9334
    phi_val_93c9 = 0;    // $9335
    while (((unsigned)local9 < (unsigned)6)) {    // $93C9
        local11 = 0;    // $9339
        if (((unsigned)local9 < (unsigned)3)) {    // $933D
        local11 = 1;    // $9341
        }
L_9342:
        if ((local9 == 4)) {    // $9345
        if (combat_get_ship_class_2d(arg1)) {    // $934D
        if (local10) goto L_9356;    // $9351
        local11 = 1;    // $9355
        }
        }
L_9356:
        if ((local9 == 3)) {    // $9359
        if (combat_can_board()) {    // $935F
        local10 = 1;    // $9363
        local11 = 1;    // $9365
        }
        }
L_9366:
        if ((local9 == 5)) {    // $9369
        if (*(byte*)(((arg1 * 24) + 0x6AA4))) goto L_9396;    // $9375
        if ((!(mem_74C0) || (!(mem_74C2) || ((mem_74C0 == 14) || (mem_74C2 == 8))))) {    // $9391
        local11 = 1;    // $9395
        }
        }
L_9396:
        if (local11) {    // $9397
        local7 = ((local8 << 1) + 18);    // $939E
        syscall_id09_syscall_banked_blit_m3(local7, 23, 2, 4, *(word*)((((local9 << 1) << 1) + 0x9FA5)), *(word*)((((local9 << 1) << 1) + 0x9FA7)), 224);    // $93BA
        local8 = (local8 + 1);    // $93C0
        *(byte*)(((local8 - 1) + arg2)) = local9;    // $93C6
        }
L_93C7:
        phi_val_93c9 = (local9 + 1);    // $93C8
        local9 = phi_val_93c9;    // $93C9
    }
    return local8;    // $93D1
}

// Decompiled from source/2-asm-vm\bank12.asm sub $93D2
// $93D2 combat_load_d2
// (body @ $93D7)

word combat_load_d2(word arg1) {
    memcpy_ptr(0x9FBD, &local4, 16);    // $93E0
    local3 = 0;    // $93E5
    local1 = 0;    // $93E6
L_93E7:
    local2 = 0;    // $93E8
L_93E9:
    *(byte*)((((local2 << 1) << 1) + (fp - 13))) = (*(byte*)((((local2 << 1) << 1) + 0x9FC0)) + ((local3 << 1) << 3));    // $9402
    local2 = (local2 + 1);    // $9405
    if ((local2 < 4)) goto L_93E9;    // $9409
    syscall_id13_syscall_set_chr_bank_alt(&local4, 0, 4);    // $9413
    local0 = local3;    // $9418
    helper_ce4d(local1, 12);    // $941B
    local1 = frame_sync(0);    // $9424
    switch (frame_sync(0)) {    // $9425
        case 1: goto L_943E;    // $9425
        case 2: goto L_944F;    // $9425
        case 4: goto L_9461;    // $9425
        case 64: goto L_9473;    // $9425
        case 128: goto L_9482;    // $9425
        default: goto L_93E7;    // $9425
    }    // $9425
L_943E:
L_9445:
    syscall_id12_syscall_set_chr_banks(0, 4);    // $9441
    if (frame_sync(0)) goto L_9445;    // $944A
    return local0;    // $944E
L_944F:
L_9456:
    syscall_id12_syscall_set_chr_banks(0, 4);    // $9452
    if (frame_sync(0)) goto L_9456;    // $945B
    return -1;    // $9460
L_9461:
L_9468:
    syscall_id12_syscall_set_chr_banks(0, 4);    // $9464
    if (frame_sync(0)) goto L_9468;    // $946D
    return -2;    // $9472
L_9473:
    local3 = (local3 - 1);    // $9475
    if ((local3 >= 0)) goto L_93E7;    // $9479
    phi_val_947e = (arg1 - 1);    // $947D
L_947E:
    local3 = phi_val_947e;    // $947E
    goto L_93E7;    // $947F
L_9482:
    local3 = (local3 + 1);    // $9484
    if (!(((unsigned)local3 >= (unsigned)arg1))) goto L_93E7;    // $9488
    phi_val_947e = 0;    // $948C
    goto L_947E;    // $948C
}

// Decompiled from source/2-asm-vm\bank12.asm sub $948F
// $948F combat_wait_2
// (body @ $9494)

word combat_wait_2(word arg1, word arg2) {
    while ((local11 == 2)) {    // $949C
        combat_scan_749e(arg2);    // $9498
        local11 = combat_load_d2(arg1);    // $94A1
    }
    return ((local11 == 1) ? 255 : local11);    // $94B7
}

// Decompiled from source/2-asm-vm\bank12.asm sub $94B8
// $94B8 combat_b8
// (body @ $94BD)

word combat_b8(word arg1) {
    combat_calc_ship_stat(arg1);    // $94BE
    local11 = 0x74A3;    // $94C5
    local10 = (0x74A3 + mem_74AA);    // $94CA
    while (((unsigned)local11 < (unsigned)local10)) {    // $9509
        local9 = ((*(byte*)(local11) * 7) + 0x6C90);    // $94D6
        if (*(byte*)(local9)) {    // $94D9
        local8 = *(byte*)((((unsigned)*(byte*)(local11) % (unsigned)5) + 0x74B1));    // $94E5
        *(byte*)((((((unsigned)local8 / (unsigned)15) * 15) + ((unsigned)local8 % (unsigned)15)) + 0x7390)) = (*(word*)((local9 + 4)) ? 255 : 136);    // $9505
        }
L_9506:
        local11 = (local11 + 1);    // $9508
    }
    local11 = 0x749E;    // $9512
    local10 = (0x749E + mem_74A8);    // $9517
    while (((unsigned)local11 < (unsigned)local10)) {    // $9545
        if (*(byte*)(((*(byte*)(local11) * 7) + 0x6C90))) {    // $9524
        local8 = *(byte*)((*(byte*)(local11) + 0x74AC));    // $952E
        *(byte*)((((((unsigned)local8 / (unsigned)15) * 15) + ((unsigned)local8 % (unsigned)15)) + 0x7390)) = (*(byte*)((((((unsigned)local8 / (unsigned)15) * 15) + ((unsigned)local8 % (unsigned)15)) + 0x7390)) + 1);    // $9541
        }
L_9542:
        local11 = (local11 + 1);    // $9544
    }
    *(byte*)((((((unsigned)*(byte*)((arg1 + 0x74AC)) / (unsigned)15) * 15) + ((unsigned)*(byte*)((arg1 + 0x74AC)) % (unsigned)15)) + 0x7390)) = (*(byte*)((((((unsigned)*(byte*)((arg1 + 0x74AC)) / (unsigned)15) * 15) + ((unsigned)*(byte*)((arg1 + 0x74AC)) % (unsigned)15)) + 0x7390)) - 1);    // $9567
    return *(byte*)((((((unsigned)*(byte*)((arg1 + 0x74AC)) / (unsigned)15) * 15) + ((unsigned)*(byte*)((arg1 + 0x74AC)) % (unsigned)15)) + 0x7390));    // $9568
}

// Decompiled from source/2-asm-vm\bank12.asm sub $9569
// $9569 combat_draw_markers
// (body @ $956E)

word combat_draw_markers(void) {
    syscall_id08_syscall_queue_ppu_transfer(13, 22, 18, 7, 0, 0);    // $9577
    draw_string(0x9FCD, 1);    // $957F
    return set_tile_cursor(13, 22);    // $958A
}

// Decompiled from source/2-asm-vm\bank12.asm sub $958B
// $958B combat_reset_75f6
// (body @ $9590)

word combat_reset_75f6(word arg1) {
    mem_75F6 = 0;    // $9591
    do {    // $9594
        combat_tile_x();    // $9594
        copy_from_bank_dc80(0x7390, 135, 128);    // $95A0
        combat_b8(arg1);    // $95A5
        local7 = combat_wait_2(combat_329(arg1, &local9), arg1);    // $95B8
        if ((local7 == 255)) break;    // $95BE
    } while (!((*(*(word*)(((*(byte*)((local7 + &local9)) << 1) + 0x9FD4))))(arg1)));    // $95D2
L_95D5:
    combat_draw_markers();    // $95D5
    return mem_75F6;    // $95DB
}

// Decompiled from source/2-asm-vm\bank12.asm sub $95DC
// $95DC combat_side_parity
// (body @ $95E1)

word combat_side_parity(void) {
    return ((mem_74C0 % 2) ? 2 : 1);    // $95EE
}

// Decompiled from source/2-asm-vm\bank12.asm sub $95EF
// $95EF combat_95ef
// (body @ $95F4)

word combat_95ef(word arg1, word arg2) {
    arg1 = (arg1 + mem_74C0);    // $95FA
    arg2 = (arg2 + mem_74C2);    // $9601
    if (!((arg1 >= 0))) goto L_9658;    // $9605
    if ((arg1 >= 15)) goto L_9658;    // $960B
    if (!((arg2 >= 0))) goto L_9658;    // $9611
    if ((arg2 >= 9)) goto L_9658;    // $9617
    local8 = ((arg2 * 15) + arg1);    // $961F
    local10 = 0x74A3;    // $9623
    local9 = (0x74A3 + mem_74AA);    // $9628
    while (((unsigned)local10 < (unsigned)local9)) {    // $9652
        local11 = ((*(byte*)(local10) * 7) + 0x6C90);    // $9634
        if (!(*(word*)((local11 + 4)))) goto L_964F;    // $9638
        if (!(*(byte*)(local11))) goto L_964F;    // $963D
        if ((!((*(byte*)((*(byte*)(local10) + 0x74AC)) != local8)))) return *(byte*)(local10);    // $9649
        local10 = (local10 + 1);    // $9651
    }
L_9658:
    return 255;    // $965B
}

// Decompiled from source/2-asm-vm\bank12.asm sub $965C
// $965C combat_5c
// (body @ $9661)

word combat_5c(word arg1, word arg2) {
    local11 = arg2;    // $9662
    local10 = (arg2 + arg1);    // $9665
    while (((unsigned)local11 < (unsigned)local10)) {    // $968C
        local9 = *(byte*)((*(byte*)(local11) + 0x74AC));    // $9670
        mem_74C0 = ((unsigned)local9 % (unsigned)15);    // $9674
        mem_74C2 = ((unsigned)local9 / (unsigned)15);    // $967A
        if ((!((*(byte*)(local11) != mem_74D2)))) return *(byte*)(local11);    // $9683
        local11 = (local11 + 1);    // $968B
    }
    return *(byte*)((local11 - 1));    // $9695
}

// Decompiled from source/2-asm-vm\bank12.asm sub $9696
// $9696 combat_96
// (body @ $969B)

word combat_96(void) {
    *(word*)(fp - 9) = combat_side_parity();    // $969E
    *(word*)(fp - 11) = 0;    // $96A1
    while (((unsigned)*(word*)(fp - 7) < (unsigned)6)) {    // $96E3
        *(word*)(fp - 13) = combat_95ef(*(word*)(((*(word*)(fp - 7) * 6) + 0x9CDE)), *(word*)((((*(word*)(fp - 7) * 6) + (*(word*)(fp - 9) << 1)) + 0x9CDE)));    // $96C5
        if ((*(word*)(fp - 13) != 255)) {    // $96CD
        *(word*)(fp - 11) = (*(word*)(fp - 11) + 1);    // $96D7
        *(byte*)(((*(word*)(fp - 11) - 1) + (fp - 5))) = *(word*)(fp - 13);    // $96DF
        }
L_96E0:
        *(word*)(fp - 7) = (*(word*)(fp - 7) + 1);    // $96E3
    }
    return combat_5c(*(word*)(fp - 11), (fp - 5));    // $96F6
}

// Decompiled from source/2-asm-vm\bank12.asm sub $96F7
// $96F7 combat_f7
// (body @ $96FC)

word combat_f7(word arg1) {
    *(word*)(fp - 13) = combat_side_parity();    // $96FF
    *(word*)(fp - 15) = ((unsigned)*(byte*)((((unsigned)arg1 % (unsigned)5) + 0x74BB)) % (unsigned)3);    // $970B
    *(word*)(fp - 19) = (((((unsigned)*(byte*)(((arg1 * 7) + 0x6C96)) >> 4) & 3) & 1) ? 6 : 14);    // $9723
    *(word*)(fp - 17) = 0;    // $9726
    local11 = ((*(word*)(fp - 15) * 14) + 0x9DB6);    // $9730
    local10 = (((*(word*)(fp - 15) * 14) + 0x9DB6) + *(word*)(fp - 19));    // $9734
    while (((unsigned)local11 < (unsigned)local10)) {    // $9774
        *(word*)(fp - 11) = combat_95ef(*(word*)(((*(byte*)(local11) * 6) + 0x9D02)), *(word*)((((*(byte*)(local11) * 6) + (*(word*)(fp - 13) << 1)) + 0x9D02)));    // $9756
        if ((*(word*)(fp - 11) != 255)) {    // $975E
        *(word*)(fp - 17) = (*(word*)(fp - 17) + 1);    // $9768
        *(byte*)(((*(word*)(fp - 17) - 1) + (fp - 9))) = *(word*)(fp - 11);    // $9770
        }
L_9771:
        local11 = (local11 + 1);    // $9773
    }
    return combat_5c(*(word*)(fp - 17), (fp - 9));    // $9784
}

// Decompiled from source/2-asm-vm\bank12.asm sub $9785
// $9785 combat_85
// (body @ $978A)

word combat_85(word arg1) {
    local11 = mem_74C0;    // $978D
    local10 = mem_74C2;    // $9791
    local9 = combat_96();    // $9795
    combat_get_stat_1(arg1, local9);    // $9798
    combat_draw_sprite();    // $979C
    combat_86e6(arg1, local9);    // $97A1
    mem_74C0 = local11;    // $97A6
    mem_74C2 = local10;    // $97AA
    return local10;    // $97AD
}

// Decompiled from source/2-asm-vm\bank12.asm sub $97AE
// $97AE combat_ae
// (body @ $97B3)

word combat_ae(word arg1) {
    local11 = mem_74C0;    // $97B6
    local10 = mem_74C2;    // $97BA
    local9 = combat_f7(arg1);    // $97C0
    combat_grid_wrap(local9);    // $97C2
    combat_action_8704(arg1, local9);    // $97C8
    mem_74C0 = local11;    // $97CD
    mem_74C2 = local10;    // $97D1
    return local10;    // $97D4
}

// Decompiled from source/2-asm-vm\bank12.asm sub $97D5
// $97D5 combat_d5
// (body @ $97DA)

word combat_d5(word arg1) {
    if (combat_can_board()) {    // $97DD
    phi_ret_9801 = (*(word*)(((arg1 * 7) + 0x6C94)) <= 20);    // $97EB
    if (phi_ret_9801) goto L_9801;    // $97EB
    phi_ret_9801 = (*(byte*)(((arg1 * 7) + 0x6C90)) <= 20);    // $97F9
    if (phi_ret_9801) goto L_9801;    // $97F9
    phi_ret_9801 = combat_85(arg1);    // $97FD
L_9801:
    return phi_ret_9801;    // $9801
    }
L_9802:
    phi_ret_980f = combat_get_ship_class_2d(arg1);    // $9807
    if (phi_ret_980f) {    // $9807
    phi_ret_980f = combat_ae(arg1);    // $980B
    }
L_980F:
    return phi_ret_980f;    // $980F
}

// Decompiled from source/2-asm-vm\bank12.asm sub $9810
// $9810 combat_scan_74a3
// (body @ $9815)

word combat_scan_74a3(void) {
    local11 = 0x74A3;    // $9818
    local10 = (0x74A3 + mem_74AA);    // $981D
    goto L_98BA;    // $981E
L_9821:
    local8 = ((unsigned)*(byte*)((*(byte*)(local11) + 0x74AC)) % (unsigned)15);    // $982A
    local7 = ((unsigned)*(byte*)((*(byte*)(local11) + 0x74AC)) / (unsigned)15);    // $9834
    if (*(byte*)(((*(byte*)(local11) * 7) + 0x6C90))) {    // $983E
    *(byte*)((((local7 * 15) + local8) + 0x7390)) = 133;    // $984E
    if (mem_7568) {    // $9852
    local9 = 0;    // $9856
L_9857:
    local6 = (*(word*)(((local9 * 6) + 0x9CDE)) + local8);    // $9861
    local5 = (*(word*)((((((local8 % 2) ? 2 : 1) << 1) + (local9 * 6)) + 0x9CDE)) + local7);    // $987B
    if ((local6 >= 0)) {    // $987F
    if ((local6 < 15)) {    // $9885
    if ((local5 >= 0)) {    // $988B
    if ((local5 < 9)) {    // $9891
    if (*(byte*)((((local5 * 15) + local6) + 0x7390))) {    // $989E
    *(byte*)((((local5 * 15) + local6) + 0x7390)) = (*(byte*)((((local5 * 15) + local6) + 0x7390)) - 1);    // $98AD
    }
    }
    }
    }
    }
L_98AE:
    local9 = (local9 + 1);    // $98B0
    if (((unsigned)local9 < (unsigned)6)) goto L_9857;    // $98B4
    }
    }
L_98B7:
    local11 = (local11 + 1);    // $98B9
L_98BA:
    if (((unsigned)local11 < (unsigned)local10)) goto L_9821;    // $98BD
    local11 = 0x749E;    // $98C3
    local10 = (0x749E + mem_74A8);    // $98C8
    goto L_98F9;    // $98C9
L_98CC:
    if (*(byte*)(((*(byte*)(local11) * 7) + 0x6C90))) {    // $98D5
    local9 = *(byte*)((((unsigned)*(byte*)(local11) % (unsigned)5) + 0x74B1));    // $98E1
    *(byte*)((((((unsigned)local9 / (unsigned)15) * 15) + ((unsigned)local9 % (unsigned)15)) + 0x7390)) = 133;    // $98F5
    }
L_98F6:
    local11 = (local11 + 1);    // $98F8
L_98F9:
    if (((unsigned)local11 < (unsigned)local10)) goto L_98CC;    // $98FC
    return ((unsigned)local11 < (unsigned)local10);    // $98FF
}

// Decompiled from source/2-asm-vm\bank12.asm sub $9900
// $9900 combat_00
// (body @ $9905)

word combat_00(void) {
    local11 = 0;    // $9906
    do {    // $9907
        local9 = (*(word*)(((local11 * 6) + 0x9CDE)) + mem_74C0);    // $9913
        local8 = (*(word*)((((combat_side_parity() << 1) + (local11 * 6)) + 0x9CDE)) + mem_74C2);    // $9927
        local10 = ((local8 * 15) + local9);    // $992D
        if (!((local9 >= 0))) goto L_9957;    // $9931
        if ((local9 >= 15)) goto L_9957;    // $9937
        if (!((local8 >= 0))) goto L_9957;    // $993D
        if ((local8 >= 9)) goto L_9957;    // $9943
        if ((!((*(byte*)((((unsigned)mem_74D2 % (unsigned)5) + 0x74AC)) != local10)))) return 1;    // $9952
        local11 = (local11 + 1);    // $9959
    } while (((unsigned)local11 < (unsigned)6));    // $995D
    return 0;    // $9961
}

// Decompiled from source/2-asm-vm\bank12.asm sub $9962
// $9962 combat_get_ship_class
// (body @ $9967)

word combat_get_ship_class(word arg1) {
    local5 = (((unsigned)*(byte*)(((arg1 * 7) + 0x6C96)) >> 4) & 3);    // $9973
    if (!(local5)) goto L_99F8;    // $9975
    local7 = ((unsigned)*(byte*)((((unsigned)arg1 % (unsigned)5) + 0x74BB)) % (unsigned)3);    // $9982
    local5 = ((local5 & 1) ? 6 : 14);    // $998E
    local11 = ((local7 * 14) + 0x9DB6);    // $9996
    local10 = (((local7 * 14) + 0x9DB6) + local5);    // $9999
    while (((unsigned)local11 < (unsigned)local10)) {    // $99F2
        local9 = (*(word*)(((*(byte*)(local11) * 6) + 0x9D02)) + mem_74C0);    // $99AA
        local8 = (*(word*)((((combat_side_parity() << 1) + (*(byte*)(local11) * 6)) + 0x9D02)) + mem_74C2);    // $99BF
        local6 = ((local8 * 15) + local9);    // $99C5
        if (!((local9 >= 0))) goto L_99EF;    // $99C9
        if ((local9 >= 15)) goto L_99EF;    // $99CF
        if (!((local8 >= 0))) goto L_99EF;    // $99D5
        if ((local8 >= 9)) goto L_99EF;    // $99DB
        if ((!((*(byte*)((((unsigned)mem_74D2 % (unsigned)5) + 0x74AC)) != local6)))) return 1;    // $99EA
        local11 = (local11 + 1);    // $99F1
    }
L_99F8:
    return 0;    // $99F9
}

// Decompiled from source/2-asm-vm\bank12.asm sub $99FA
// $99FA combat_99fa
// (body @ $99FF)

word combat_99fa(word arg1) {
    local11 = (((unsigned)arg1 % (unsigned)5) + 0x74BB);    // $9A06
    local7 = 128;    // $9A0A
    local10 = 5;    // $9A0C
    local8 = 5;    // $9A0D
    while (((unsigned)local10 < (unsigned)8)) {    // $9A89
        local9 = ((unsigned)(*(byte*)(local11) + local10) % (unsigned)6);    // $9A17
        local5 = (*(word*)(((local9 * 6) + 0x9CDE)) + mem_74C0);    // $9A24
        local4 = (*(word*)((((combat_side_parity() << 1) + (local9 * 6)) + 0x9CDE)) + mem_74C2);    // $9A38
        if ((local5 >= 0)) {    // $9A3C
        if ((local5 < 15)) {    // $9A42
        if ((local4 >= 0)) {    // $9A48
        if ((local4 < 9)) {    // $9A4E
        if (((unsigned)local7 >= (unsigned)*(byte*)((((local4 * 15) + local5) + 0x7390)))) {    // $9A5F
        if (!((*(byte*)((((local4 * 15) + local5) + 0x7390)) == local7))) goto L_9A79;    // $9A6E
        if (load_operand16_14(2)) goto L_9A86;    // $9A76
L_9A79:
        local8 = local10;    // $9A7A
        local7 = *(byte*)((((local4 * 15) + local5) + 0x7390));    // $9A85
        }
        }
        }
        }
        }
L_9A86:
        local10 = (local10 + 1);    // $9A88
    }
    local3 = ((arg1 * 7) + 0x6C90);    // $9A96
    if (((local8 + -5) != 1)) {    // $9A9C
    phi_val_9aaf = (((unsigned)(100 - *(byte*)((local3 + 1))) / (unsigned)25) + 1);    // $9AAB
    } else {
    phi_val_9aaf = 0;    // $9AAE
    }
L_9AAF:
    local6 = phi_val_9aaf;    // $9AAF
    local9 = ((unsigned)(*(byte*)(local11) + local8) % (unsigned)6);    // $9AB6
    local6 = (local6 + (((unsigned)((100 - *(byte*)((local3 + 2))) * *(byte*)((local9 + 0x74D6))) / (unsigned)60) + 1));    // $9ACF
    if (((unsigned)local6 <= (unsigned)mem_74DE)) {    // $9AD5
    mem_74DE = (mem_74DE - local6);    // $9ADE
    *(byte*)(local11) = local9;    // $9AE3
    return combat_check_8209(arg1, local9, 0x0840);    // $9AED
    }
L_9AEE:
    return 0;    // $9AEF
    }
}

// Decompiled from source/2-asm-vm\bank12.asm sub $9AF0
// $9AF0 combat_f0
// (body @ $9AF5)

word combat_f0(word arg1) {
    combat_scan_74a3();    // $9AF5
    mem_74DE = max_s16(20, ((((unsigned)(*(byte*)(((arg1 * 7) + 0x6C92)) * mem_74DC) / (unsigned)50) + ((unsigned)*(byte*)((((((unsigned)arg1 / (unsigned)5) + 21) * 7) + 0x6544)) / (unsigned)5)) + 6));    // $9B20
    do {    // $9B23
        if (mem_74DE) goto L_9B2F;    // $9B26
L_9B29:
        return combat_d5(arg1);    // $9B2E
L_9B2F:
        if (!(*(byte*)((((mem_74C2 * 15) + mem_74C0) + 0x7390)))) goto L_9B29;    // $9B3D
        if (combat_get_ship_class(arg1)) goto L_9B29;    // $9B45
        if (combat_00()) goto L_9B29;    // $9B4B
        if (!(combat_99fa(arg1))) goto L_9B29;    // $9B53
    } while (!(combat_can_board()));    // $9B59
    goto L_9B29;    // $9B5C
}

// Decompiled from source/2-asm-vm\bank12.asm sub $9B5F
// $9B5F combat_calc_ship_stat
// (body @ $9B64)

word combat_calc_ship_stat(word arg1) {
    local8 = ((((unsigned)record_field_byte((record_base_6b1c(arg1) + 20)) >> 5) & 7) & 1);    // $9B76
    local9 = 0x7390;    // $9B7A
    local11 = 0x7417;    // $9B7E
    local10 = (0x7417 + 135);    // $9B82
    while (((unsigned)local11 < (unsigned)local10)) {    // $9BAA
        if ((*(byte*)(local11) == 3)) goto L_9B9F;    // $9B8A
        if ((*(byte*)(local11) == 4)) goto L_9B9F;    // $9B91
        if ((*(byte*)(local11) == 2)) {    // $9B98
        if (local8) {    // $9B9C
L_9B9F:
        *(byte*)(local9) = (*(byte*)(local9) + 1);    // $9BA3
        }
        }
L_9BA4:
        local9 = (local9 + 1);    // $9BA6
        local11 = (local11 + 1);    // $9BA9
    }
    return ((unsigned)local11 < (unsigned)local10);    // $9BB0
}

// Decompiled from source/2-asm-vm\bank12.asm sub $9BB1
// $9BB1 combat_bb1
// (body @ $9BB6)

word combat_bb1(word arg1, word arg2) {
    arg1 = (arg1 + mem_74C0);    // $9BBC
    arg2 = (arg2 + mem_74C2);    // $9BC3
    if (!((!((arg1 >= 0)) || ((arg1 >= 15) || (!((arg2 >= 0)) || (arg2 >= 9)))))) goto L_9BDE;    // $9BD9
    return 0;    // $9BDD
L_9BDE:
    local7 = 5;    // $9BDF
    if (!(((unsigned)mem_74A3 < (unsigned)5))) goto L_9BEA;    // $9BE5
    local7 = 0;    // $9BE9
L_9BEA:
    local8 = ((arg2 * 15) + arg1);    // $9BEF
    local10 = 0x74A3;    // $9BF3
    local9 = (0x74A3 + mem_74AA);    // $9BF8
    goto L_9C25;    // $9BF9
L_9BFC:
    local11 = ((*(byte*)(local10) * 7) + 0x6C90);    // $9C04
    if (!(*(word*)((local11 + 4)))) goto L_9C22;    // $9C08
    if (!(*(byte*)(local11))) goto L_9C22;    // $9C0D
    if (!((*(byte*)(((((unsigned)*(byte*)(local10) % (unsigned)5) + local7) + 0x74AC)) == local8))) goto L_9C22;    // $9C1D
    return 1;    // $9C21
L_9C22:
    local10 = (local10 + 1);    // $9C24
L_9C25:
    if (((unsigned)local10 < (unsigned)local9)) goto L_9BFC;    // $9C28
    return 0;    // $9C2C
}

// Decompiled from source/2-asm-vm\bank12.asm sub $9C2D
// $9C2D combat_get_ship_class_2d
// (body @ $9C32)

word combat_get_ship_class_2d(word arg1) {
    local7 = (((unsigned)*(byte*)(((arg1 * 7) + 0x6C96)) >> 4) & 3);    // $9C3E
    if (local7) {    // $9C40
    local9 = ((unsigned)*(byte*)((((((unsigned)arg1 < (unsigned)5) ? 0 : 5) + ((unsigned)arg1 % (unsigned)5)) + 0x74B6)) % (unsigned)3);    // $9C5B
    local8 = combat_side_parity();    // $9C5F
    local7 = ((local7 & 1) ? 6 : 14);    // $9C6B
    local11 = ((local9 * 14) + 0x9DB6);    // $9C73
    local10 = (((local9 * 14) + 0x9DB6) + local7);    // $9C76
    while (((unsigned)local11 < (unsigned)local10)) {    // $9C9F
        if (!(!(combat_bb1(*(word*)(((*(byte*)(local11) * 6) + 0x9D02)), *(word*)((((*(byte*)(local11) * 6) + (local8 << 1)) + 0x9D02)))))) return 1;    // $9C97
        local11 = (local11 + 1);    // $9C9E
    }
    }
L_9CA5:
    return 0;    // $9CA6
}

// Decompiled from source/2-asm-vm\bank12.asm sub $9CA7
// $9CA7 combat_can_board
// (body @ $9CAC)

word combat_can_board(void) {
    local10 = combat_side_parity();    // $9CAF
    local11 = 0;    // $9CB1
    do {    // $9CB2
        if (!(!(combat_bb1(*(word*)(((local11 * 6) + 0x9CDE)), *(word*)((((local11 * 6) + (local10 << 1)) + 0x9CDE)))))) return 1;    // $9CCD
        local11 = (local11 + 1);    // $9CD4
    } while (((unsigned)local11 < (unsigned)6));    // $9CD8
    return 0;    // $9CDC
}
