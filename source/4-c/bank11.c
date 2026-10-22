// Decompiled from source/2-asm-vm\bank11.asm sub $8003
// $8003 clear_metasprite
// (body @ $8008)

word clear_metasprite(void) {
    return syscall_id14_syscall_set_metasprite(0x0500, 0, 0, 0, 0);    // $8014
}

// Decompiled from source/2-asm-vm\bank11.asm sub $8015
// $8015 draw_battle_digit
// (body @ $801A)

word draw_battle_digit(word arg1, word arg2, word arg3, word arg4) {
    if ((arg3 == 1)) {    // $801D
    arg4 = ((unsigned)arg4 % (unsigned)10);    // $8024
    phi_push_80e1 = *(word*)((((arg4 << 1) << 1) + 0x8372));    // $8039
    } else {
    phi_ret_80eb = ((unsigned)arg3 > (unsigned)1);    // $803F
    if (!(phi_ret_80eb)) goto L_80EB;    // $803F
    phi_ret_80eb = ((unsigned)arg3 <= (unsigned)2);    // $8045
    if (!(phi_ret_80eb)) goto L_80EB;    // $8045
    copy_from_bank_dc80(&local7, arg3, 255);    // $8050
    goto L_806A;    // $8055
L_8058:
    *(byte*)((local5 + &local7)) = ((unsigned)arg4 % (unsigned)10);    // $8063
    arg4 = ((unsigned)arg4 / (unsigned)10);    // $8068
L_806A:
    local5 = (local5 - 1);    // $806B
    if (!(arg4)) goto L_8077;    // $806D
    if ((local5 > 1)) goto L_8058;    // $8074
L_8077:
    local9 = &local11;    // $807A
    local8 = &local10;    // $807E
    copy_from_bank_dc80(local9, arg3, 0);    // $8082
    copy_from_bank_dc80(local8, arg3, 0);    // $8089
    phi_val_80d0 = 0;    // $808E
    while (((unsigned)local5 < (unsigned)arg3)) {    // $80D0
        local6 = *(byte*)((local5 + &local7));    // $8099
        if ((local6 == 255)) goto L_80C8;    // $809F
        copy_from_bank(2, 224, *(word*)((((local6 << 1) << 1) + 0x8372)), local9, 1);    // $80B1
L_80C8:
        copy_from_bank(2, 224, *(word*)((((local6 << 1) << 1) + 0x8374)), local8, 1);    // $80C4
        local9 = (local9 + 1);    // $80CA
        local8 = (local8 + 1);    // $80CD
        phi_val_80d0 = (local5 + 1);    // $80CF
        local5 = phi_val_80d0;    // $80D0
    }
    phi_push_80e1 = &local11;    // $80DE
    }
L_80E1:
    phi_ret_80eb = syscall_id09_syscall_banked_blit_m3(arg1, arg2, arg3, 1, phi_push_80e1, &local10, 224);    // $80E7
L_80EB:
    return phi_ret_80eb;    // $80EB
    }
}

// Decompiled from source/2-asm-vm\bank11.asm sub $80EC
// $80EC check_ship_active
// (body @ $80F1)

word check_ship_active(void) {
    local11 = ((mem_74D2 * 7) + 0x6C90);    // $80FA
    if ((!(*(word*)((local11 + 4))) || !(*(byte*)(local11)))) {    // $8103
    mem_74E0 = 5;    // $8107
    return 1;    // $810B
    }
L_810C:
    local11 = ((mem_74D4 * 7) + 0x6C90);    // $8115
    if ((!(*(word*)((local11 + 4))) || !(*(byte*)(local11)))) {    // $811E
    mem_74E0 = 4;    // $8122
    return 1;    // $8126
    }
L_8127:
    return 0;    // $8128
}

// Decompiled from source/2-asm-vm\bank11.asm sub $8129
// $8129 grid_cell_type
// (body @ $812E)

word grid_cell_type(word arg1) {
    if ((!(((unsigned)arg1 < (unsigned)16)))) return 0;    // $8132
    return (((unsigned)((unsigned)(arg1 - 1) % (unsigned)5) <= (unsigned)2) ? 2 : 1);    // $8145
}

// Decompiled from source/2-asm-vm\bank11.asm sub $8146
// $8146 scan_fleet_a
// (body @ $814B)

word scan_fleet_a(void) {
    local5 = grid_cell_type(((unsigned)mem_749E / (unsigned)5));    // $8155
    local11 = 0x749E;    // $8159
    local10 = (0x749E + mem_74A8);    // $815E
    while (((unsigned)local11 < (unsigned)local10)) {    // $8230
        if (!(!(check_ship_active()))) return 0;    // $8165
        local4 = ((*(byte*)(local11) * 7) + 0x6C90);    // $8172
        if (!(*(word*)((local4 + 4)))) goto L_822D;    // $8176
        if (!(*(byte*)(local4))) goto L_822D;    // $817B
        local6 = (((unsigned)*(byte*)(local11) % (unsigned)5) + 5);    // $8183
        local9 = (local6 + 0x74AC);    // $8189
        mem_74C4 = *(byte*)(local9);    // $818C
        mem_74C0 = ((unsigned)*(byte*)(local9) % (unsigned)15);    // $8193
        mem_74C2 = ((unsigned)*(byte*)(local9) / (unsigned)15);    // $819A
        if ((*(byte*)(local11) == mem_74D4)) {    // $81A3
        if (((*(word*)(((*(byte*)(local11) * 7) + 0x6C94)) <= 20) || (*(byte*)(((*(byte*)(local11) * 7) + 0x6C90)) <= 20))) {    // $81C1
        if ((!(mem_74C0) || (!(mem_74C2) || ((mem_74C0 == 14) || (mem_74C2 == 8))))) {    // $81DD
        mem_74E0 = 2;    // $81E1
        return 0;    // $81E5
        }
        }
        }
L_81E6:
        local7 = call_in_bank_dcd1(1, 205, 0x9373, local5, *(byte*)(local11));    // $81F5
        call_in_bank_dcd1(1, 205, 0x8791, ((unsigned)local7 % (unsigned)15), ((unsigned)local7 / (unsigned)15), *(byte*)(local11));    // $8208
        combat_f0(*(byte*)(local11));    // $8216
        *(byte*)(local9) = ((mem_74C2 * 15) + mem_74C0);    // $8224
        if (!(!(check_ship_active()))) return 0;    // $8228
        local11 = (local11 + 1);    // $822F
    }
    return 1;    // $8237
}

// Decompiled from source/2-asm-vm\bank11.asm sub $8238
// $8238 scan_fleet_b
// (body @ $823D)

word scan_fleet_b(void) {
    local11 = 1;    // $823E
    local10 = 0x749E;    // $8242
    local9 = (0x749E + mem_74A8);    // $8247
    goto L_82AD;    // $8248
L_824B:
    if (check_ship_active()) {    // $824E
L_8251:
    local11 = 0;    // $8252
    } else {
    local6 = ((*(byte*)(local10) * 7) + 0x6C90);    // $825E
    if (!(*(word*)((local6 + 4)))) goto L_82AA;    // $8262
    if (!(*(byte*)(local6))) goto L_82AA;    // $8267
    local7 = ((unsigned)*(byte*)(local10) % (unsigned)5);    // $826E
    local8 = (local7 + 0x74AC);    // $8274
    mem_74C4 = *(byte*)(local8);    // $8277
    mem_74C0 = ((unsigned)*(byte*)(local8) % (unsigned)15);    // $827E
    mem_74C2 = ((unsigned)*(byte*)(local8) / (unsigned)15);    // $8285
    if (combat_reset_75f6(*(byte*)(local10))) goto L_8251;    // $8296
    *(byte*)(local8) = ((mem_74C2 * 15) + mem_74C0);    // $82A3
    if (check_ship_active()) goto L_8251;    // $82A7
L_82AA:
    local10 = (local10 + 1);    // $82AC
L_82AD:
    if (((unsigned)local10 < (unsigned)local9)) goto L_824B;    // $82B0
    }
L_82B3:
    clear_metasprite();    // $82B3
    return local11;    // $82B7
    }
}

// Decompiled from source/2-asm-vm\bank11.asm sub $82B8
// $82B8 scan_both_fleets
// (body @ $82BD)

word scan_both_fleets(word arg1, word arg2) {
    mem_74A8 = scan_records_6c90_flag(arg1, 0x749E);    // $82C5
    mem_74AA = scan_records_6c90_flag(arg2, 0x74A3);    // $82D0
    if (!(!(arg1))) return scan_fleet_a();    // $82D4
    return scan_fleet_b();    // $82DE
}

// Decompiled from source/2-asm-vm\bank11.asm sub $82DF
// $82DF check_collision
// (body @ $82E4)

word check_collision(word arg1, word arg2) {
    phi_val_8316 = (35 - (mem_6B8C << 1));    // $82ED
    while (local11) {    // $8316
        draw_battle_digit(10, 22, 2, local11);    // $82F5
        if (!(scan_both_fleets(arg1, arg2))) return scan_both_fleets(arg1, arg2);    // $82FF
        if (!(scan_both_fleets(arg2, arg1))) return scan_both_fleets(arg2, arg1);    // $8309
        mem_6B8C = (mem_6B8C + 1);    // $8311
        phi_val_8316 = (local11 - 1);    // $8315
        local11 = phi_val_8316;    // $8316
    }
    mem_74E0 = 1;    // $831C
    return 1;    // $831F
}

// Decompiled from source/2-asm-vm\bank11.asm sub $8320
// $8320 roll_evade
// (body @ $8325)

word roll_evade(word arg1) {
    if (arg1) goto L_8333;    // $8326
    if (((unsigned)load_operand16_14(10) < (unsigned)7)) {    // $8330
L_8333:
    phi_8340_0 = arg1;    // $8338
    phi_8340_1 = mem_729D;    // $8338
    } else {
    phi_8340_0 = mem_729D;    // $833F
    phi_8340_1 = arg1;    // $833F
    }
L_8340:
    check_collision(phi_8340_0, phi_8340_1);    // $8340
    return 1;    // $8345
    }
}

// Decompiled from source/2-asm-vm\bank11.asm sub $8346
// $8346 init_fleet_grid
// (body @ $834B)

word init_fleet_grid(void) {
    local11 = active_entity_idx;    // $834E
    mem_74E0 = 0;    // $8350
    duel_load_899d(local11);    // $835B
    roll_evade(local11);    // $8360
    return duel_9583(local11);    // $8370
}
