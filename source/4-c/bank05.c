// Decompiled from source/2-asm-vm\bank05.asm sub $8003
// $8003 econ_get_6fbc
// (body @ $8008)

word econ_get_6fbc(word arg1) {
    local11 = (((arg1 << 1) << 1) + 0x6FBC);    // $800F
    *(byte*)((local11 + 2)) = (*(byte*)((local11 + 2)) - max_s16(*(byte*)((local11 + 2)), (load_operand16_14(3) + 2)));    // $8026
    return *(byte*)((local11 + 2));    // $8027
}

// Decompiled from source/2-asm-vm\bank05.asm sub $8028
// $8028 econ_get_entity
// (body @ $802D)

word econ_get_entity(word arg1) {
    local9 = ((arg1 << 4) + 0x6662);    // $8034
    if (!(*(byte*)((local9 + 15)) & 8)) return (*(byte*)((local9 + 15)) & 8);    // $803A
    *(byte*)((local9 + 15)) = (*(byte*)((local9 + 15)) & 247);    // $8047
    local11 = (((arg1 + 20) * 7) + 0x6542);    // $8051
    local10 = 0x6542;    // $8055
    nat_5_0c75(((unsigned)(arg1 - 1) / (unsigned)5), local11);    // $805C
    *(byte*)((local11 + 2)) = max_s16((load_operand16_14(5) + *(byte*)((local10 + 2))), 50);    // $8075
    *(byte*)((local11 + 3)) = max_s16((load_operand16_14(5) + *(byte*)((local10 + 3))), 50);    // $808B
    local8 = ((record_field_byte((arg1 + 0xA0D4)) * 19) + 0xAFD8);    // $809D
    *(byte*)(local9) = record_field_byte((local8 + 15));    // $80A6
    *(byte*)((local9 + 1)) = record_field_byte((local8 + 16));    // $80B2
    *(byte*)((local9 + 2)) = record_field_byte((local8 + 17));    // $80BE
    *(byte*)((local9 + 3)) = record_field_byte((local8 + 18));    // $80CA
    *(word*)((local11 + 4)) = compute_dad1(((unsigned)(arg1 - 1) / (unsigned)5));    // $80D7
    *(byte*)((((arg1 - 1) * 51) + 0x6008)) = 4;    // $80E3
    *(word*)((local9 + 11)) = 0;    // $80E8
    *(word*)((local9 + 13)) = (*(word*)((local9 + 13)) & 0x8000);    // $80F2
    local7 = (((arg1 - 1) * 51) + 0x6004);    // $80FC
    *(byte*)((local7 + 5)) = record_field_byte((arg1 + 0xA0D4));    // $810A
    *(byte*)((local7 + 4)) = 4;    // $810F
    *(word*)((local7 + 7)) = 0;    // $8114
    return 0;    // $8115
}

// Decompiled from source/2-asm-vm\bank05.asm sub $8116
// $8116 econ_ship_rec35
// (body @ $811B)

word econ_ship_rec35(word arg1) {
    local10 = ((arg1 * 35) + 0x6C90);    // $8123
    local9 = (((arg1 * 35) + 0x6C90) + 35);    // $8126
    while (((unsigned)local10 < (unsigned)local9)) {    // $8136
        if (!((*(byte*)((local10 + 6)) & 64))) break;    // $8130
        local10 = (local10 + 7);    // $8135
    }
L_813C:
    local7 = ((record_field_byte(((((unsigned)(arg1 - 1) / (unsigned)5) << 1) + 0xA005)) * 14) + 0x67B2);    // $8150
    local11 = (load_operand16_14(3) + 7);    // $8157
    *(byte*)((local10 + 6)) = 0;    // $815C
    *(byte*)((local10 + 6)) = (local11 | 80);    // $8164
    local8 = record_base_6b1c(local11);    // $816A
    local6 = (((unsigned)record_field_byte((record_base_6b1c(local11) + 20)) >> 5) & 7);    // $817B
    local5 = (record_field_byte((record_base_6b1c(local11) + 20)) & 3);    // $818A
    local4 = (((unsigned)record_field_byte((record_base_6b1c(local11) + 20)) >> 2) & 3);    // $819B
    local3 = (((unsigned)record_field_byte((record_base_6b1c(local11) + 20)) >> 4) & 1);    // $81AC
    *(byte*)(local10) = (((local6 * 10) + (local5 * 10)) + 20);    // $81B9
    *(byte*)((local10 + 1)) = (((((((20 - local6) * 100) / 20) * (10 - local4)) / 10) * (4 - local3)) / 4);    // $81D7
    *(byte*)((local10 + 2)) = ((((((local4 * 10) + 100) * (10 - local6)) / 10) * (local3 + 3)) / 4);    // $81EF
    *(byte*)((local10 + 2)) = max_s16(*(byte*)((local10 + 2)), 100);    // $81FD
    *(byte*)((local10 + 3)) = record_field_byte((local8 + 17));    // $8209
    local2 = record_field_word((local8 + 15));    // $8211
    *(word*)((local10 + 4)) = (((local2 / 8) * (*(word*)(local7) / 250)) + (local2 / 2));    // $8227
    return (((local2 / 8) * (*(word*)(local7) / 250)) + (local2 / 2));    // $8228
}

// Decompiled from source/2-asm-vm\bank05.asm sub $8229
// $8229 econ_calc_8229
// (body @ $822E)

word econ_calc_8229(word arg1) {
    local3 = (((arg1 << 1) << 1) + 0x6FBC);    // $8235
    local10 = (((unsigned)*(word*)(local3) / (unsigned)100) + 1);    // $823C
    if (!(local10)) return local10;    // $823E
    arg1 = ((arg1 * 5) + 1);    // $8246
    local9 = 0;    // $8248
    phi_val_8270 = 0;    // $824A
    goto L_8270;    // $824A
L_824D:
    *(byte*)((local11 + (fp - 9))) = scan_records_6c90_flag((arg1 + local11), &local5);    // $8261
    local9 = (local9 + *(byte*)((local11 + (fp - 9))));    // $826D
    phi_val_8270 = (local11 + 1);    // $826F
L_8270:
    local11 = phi_val_8270;    // $8270
    if (((unsigned)local11 < (unsigned)3)) goto L_824D;    // $8274
    if (((local9 == 15))) return (local9 == 15);    // $827A
    local4 = (fp - 9);    // $8281
    phi_val_82bf = 0;    // $8283
    goto L_82BF;    // $8283
L_8286:
    if (!(((unsigned)*(byte*)(local4) < (unsigned)5))) goto L_82BA;    // $828A
    if (*(byte*)(local4)) goto L_829A;    // $828F
L_829A:
    econ_get_entity((arg1 + local11));    // $8296
    econ_ship_rec35((arg1 + local11));    // $829E
    *(byte*)(local4) = scan_records_6c90_flag((arg1 + local11), &local5);    // $82AF
    local9 = (local9 + 1);    // $82B2
    local10 = (local10 - 1);    // $82B5
    if (!(local10)) goto L_82C6;    // $82B7
L_82BA:
    local4 = (local4 + 1);    // $82BC
    phi_val_82bf = (local11 + 1);    // $82BE
L_82BF:
    local11 = phi_val_82bf;    // $82BF
    if (((unsigned)local11 < (unsigned)3)) goto L_8286;    // $82C3
L_82C6:
    if (!(((unsigned)local9 < (unsigned)15))) goto L_82D0;    // $82C9
    if (local10) goto L_827E;    // $82CD
L_82D0:
    return local10;    // $82D0
}

// Decompiled from source/2-asm-vm\bank05.asm sub $82D1
// $82D1 econ_ship_calc
// (body @ $82D6)

word econ_ship_calc(word arg1) {
    local10 = ((arg1 * 35) + 0x6C90);    // $82DE
    local9 = (((arg1 * 35) + 0x6C90) + 35);    // $82E1
    while (((unsigned)local10 < (unsigned)local9)) {    // $82F1
        if (!((*(byte*)((local10 + 6)) & 64))) break;    // $82EB
        local10 = (local10 + 7);    // $82F0
    }
L_82F7:
    local7 = ((record_field_byte(((((unsigned)(arg1 - 1) / (unsigned)5) << 1) + 0xA005)) * 14) + 0x67B2);    // $830B
    local11 = (load_operand16_14(2) + 9);    // $8312
    *(byte*)((local10 + 6)) = 0;    // $8317
    *(byte*)((local10 + 6)) = (local11 | 64);    // $831F
    *(byte*)((local10 + 6)) = (*(byte*)((local10 + 6)) | ((load_operand16_14(2) + 2) << 4));    // $832F
    local8 = record_base_6b1c(local11);    // $8335
    *(byte*)(local10) = ((((((unsigned)record_field_byte((record_base_6b1c(local11) + 20)) >> 5) & 7) * 10) + ((record_field_byte((record_base_6b1c(local11) + 20)) & 3) * 10)) + 20);    // $835E
    *(byte*)((local10 + 1)) = (((((((20 - (((unsigned)record_field_byte((record_base_6b1c(local11) + 20)) >> 5) & 7)) * 100) / 20) * (10 - (((unsigned)record_field_byte((record_base_6b1c(local11) + 20)) >> 2) & 3))) / 10) * (4 - (((unsigned)record_field_byte((record_base_6b1c(local11) + 20)) >> 4) & 1))) / 4);    // $83AF
    *(byte*)((local10 + 2)) = (((((((((unsigned)record_field_byte((record_base_6b1c(local11) + 20)) >> 2) & 3) * 10) + 100) * (10 - (((unsigned)record_field_byte((record_base_6b1c(local11) + 20)) >> 5) & 7))) / 10) * ((((unsigned)record_field_byte((record_base_6b1c(local11) + 20)) >> 4) & 1) + 3)) / 4);    // $83F6
    *(byte*)((local10 + 2)) = max_s16(*(byte*)((local10 + 2)), 100);    // $8404
    *(byte*)((local10 + 3)) = record_field_byte((local8 + 17));    // $8410
    local6 = record_field_word((local8 + 15));    // $8418
    *(word*)((local10 + 4)) = (((local6 / 8) * (*(word*)(local7) / 250)) + (local6 / 2));    // $842E
    return (((local6 / 8) * (*(word*)(local7) / 250)) + (local6 / 2));    // $842F
}

// Decompiled from source/2-asm-vm\bank05.asm sub $8430
// $8430 econ_calc_8430
// (body @ $8435)

word econ_calc_8430(word arg1) {
    local4 = (((arg1 << 1) << 1) + 0x6FBC);    // $843C
    local11 = (((unsigned)*(word*)(local4) / (unsigned)150) + 1);    // $8444
    arg1 = ((arg1 * 5) + 4);    // $8449
    if (!(local11)) return local11;    // $844B
    local10 = 0;    // $8450
    phi_val_8478 = 0;    // $8452
    goto L_8478;    // $8452
L_8455:
    *(byte*)((local9 + (fp - 9))) = scan_records_6c90_flag((arg1 + local9), &local5);    // $8469
    local10 = (local10 + *(byte*)((local9 + (fp - 9))));    // $8475
    phi_val_8478 = (local9 + 1);    // $8477
L_8478:
    local9 = phi_val_8478;    // $8478
    if (((unsigned)local9 < (unsigned)2)) goto L_8455;    // $847C
    if (((local10 == 10))) return (local10 == 10);    // $8482
    local9 = 0;    // $8487
L_8488:
    if (!(((unsigned)*(byte*)((local9 + (fp - 9))) < (unsigned)5))) goto L_84CF;    // $8492
    if (*(byte*)((local9 + (fp - 9)))) goto L_84A8;    // $849D
L_84A8:
    econ_get_entity((arg1 + local9));    // $84A4
    econ_ship_calc((arg1 + local9));    // $84AC
    *(byte*)((local9 + (fp - 9))) = scan_records_6c90_flag((arg1 + local9), &local5);    // $84C4
    local10 = (local10 + 1);    // $84C7
    local11 = (local11 - 1);    // $84CA
    if (!(local11)) goto L_84D8;    // $84CC
L_84CF:
    local9 = (local9 + 1);    // $84D1
    if (((unsigned)local9 < (unsigned)2)) goto L_8488;    // $84D5
L_84D8:
    if (!(((unsigned)local10 < (unsigned)10))) goto L_84E2;    // $84DB
    if (local11) goto L_8486;    // $84DF
L_84E2:
    return local11;    // $84E2
}

// Decompiled from source/2-asm-vm\bank05.asm sub $84E3
// $84E3 econ_ship_calc_b
// (body @ $84E8)

word econ_ship_calc_b(word arg1) {
    local10 = ((arg1 * 35) + 0x6C90);    // $84F0
    local9 = (((arg1 * 35) + 0x6C90) + 35);    // $84F3
    while (((unsigned)local10 < (unsigned)local9)) {    // $8503
        if (!((*(byte*)((local10 + 6)) & 64))) break;    // $84FD
        local10 = (local10 + 7);    // $8502
    }
L_8509:
    local11 = (load_operand16_14(3) + 8);    // $850F
    *(byte*)((local10 + 6)) = 0;    // $8514
    *(byte*)((local10 + 6)) = (local11 | 64);    // $851C
    *(byte*)((local10 + 6)) = (*(byte*)((local10 + 6)) | ((load_operand16_14(2) + 2) << 4));    // $852C
    local8 = record_base_6b1c(local11);    // $8532
    *(byte*)(local10) = ((((((unsigned)record_field_byte((record_base_6b1c(local11) + 20)) >> 5) & 7) * 10) + ((record_field_byte((record_base_6b1c(local11) + 20)) & 3) * 10)) + 20);    // $855B
    *(byte*)((local10 + 1)) = (((((((20 - (((unsigned)record_field_byte((record_base_6b1c(local11) + 20)) >> 5) & 7)) * 100) / 20) * (10 - (((unsigned)record_field_byte((record_base_6b1c(local11) + 20)) >> 2) & 3))) / 10) * (4 - (((unsigned)record_field_byte((record_base_6b1c(local11) + 20)) >> 4) & 1))) / 4);    // $85AC
    *(byte*)((local10 + 2)) = (((((((((unsigned)record_field_byte((record_base_6b1c(local11) + 20)) >> 2) & 3) * 10) + 100) * (10 - (((unsigned)record_field_byte((record_base_6b1c(local11) + 20)) >> 5) & 7))) / 10) * ((((unsigned)record_field_byte((record_base_6b1c(local11) + 20)) >> 4) & 1) + 3)) / 4);    // $85F3
    *(byte*)((local10 + 2)) = max_s16(*(byte*)((local10 + 2)), 100);    // $8601
    *(byte*)((local10 + 3)) = record_field_byte((local8 + 17));    // $860D
    *(word*)((local10 + 4)) = record_field_word((local8 + 15));    // $8618
    return record_field_word((local8 + 15));    // $8619
}

// Decompiled from source/2-asm-vm\bank05.asm sub $861A
// $861A econ_calc_861a
// (body @ $861F)

word econ_calc_861a(void) {
    local10 = 3;    // $8620
    local2 = (((local10 << 1) << 1) + 0x6FBC);    // $8628
    local9 = 5;    // $862A
    local10 = ((local10 * 5) + 1);    // $862F
    local8 = 0;    // $8631
    phi_val_8659 = 0;    // $8633
    goto L_8659;    // $8633
L_8636:
    *(byte*)((local11 + &local3)) = scan_records_6c90_flag((local10 + local11), (fp - 13));    // $864A
    local8 = (local8 + *(byte*)((local11 + &local3)));    // $8656
    phi_val_8659 = (local11 + 1);    // $8658
L_8659:
    local11 = phi_val_8659;    // $8659
    if (((unsigned)local11 < (unsigned)5)) goto L_8636;    // $865D
    if (((local8 == 25))) return (local8 == 25);    // $8664
    local11 = 0;    // $8669
L_866A:
    if (!(((unsigned)*(byte*)((local11 + &local3)) < (unsigned)5))) goto L_86B1;    // $8674
    if (*(byte*)((local11 + &local3))) goto L_868A;    // $867F
L_868A:
    econ_get_entity((local10 + local11));    // $8686
    econ_ship_calc_b((local10 + local11));    // $868E
    *(byte*)((local11 + &local3)) = scan_records_6c90_flag((local10 + local11), (fp - 13));    // $86A6
    local8 = (local8 + 1);    // $86A9
    local9 = (local9 - 1);    // $86AC
    if (!(local9)) goto L_86BA;    // $86AE
L_86B1:
    local11 = (local11 + 1);    // $86B3
    if (((unsigned)local11 < (unsigned)5)) goto L_866A;    // $86B7
L_86BA:
    if (!(((unsigned)local8 < (unsigned)25))) goto L_86C5;    // $86BE
    if (local9) goto L_8668;    // $86C2
L_86C5:
    return local9;    // $86C5
}

// Decompiled from source/2-asm-vm\bank05.asm sub $86C6
// $86C6 econ_calc_86c6
// (body @ $86CB)

word econ_calc_86c6(word arg1) {
    *(word*)(fp - 17) = (((arg1 << 1) << 1) + 0x6FBC);    // $86D2
    if (((unsigned)*(byte*)((*(word*)(fp - 17) + 2)) > (unsigned)load_operand16_14(100))) {    // $86E1
L_86E9:
    *(byte*)((*(word*)(fp - 17) + 3)) = 4;    // $86E9
    phi_ret_86ea = 4;    // $86E9
L_86EA:
    return phi_ret_86ea;    // $86EA
    }
L_86EB:
    *(word*)(fp - 7) = (((unsigned)(((unsigned)mem_6B99 >> ((arg1 << 1) << 1)) | ((unsigned)8 >> arg1)) >> 1) & 15);    // $86FE
    *(word*)(fp - 11) = 0;    // $8701
    *(word*)(fp - 9) = 0;    // $8703
    while (((unsigned)*(word*)(fp - 11) < (unsigned)3)) {    // $872D
        *(byte*)(((2 - *(word*)(fp - 11)) + (fp - 3))) = (*(word*)(fp - 7) & 1);    // $8717
        *(word*)(fp - 9) = (*(word*)(fp - 9) + (*(word*)(fp - 7) & 1));    // $8720
        *(word*)(fp - 7) = ((unsigned)*(word*)(fp - 7) >> 1);    // $8726
        *(word*)(fp - 11) = (*(word*)(fp - 11) + 1);    // $872B
    }
    *(word*)(fp - 5) = 0x6B8D;    // $8737
    switch (*(word*)(fp - 9)) {    // $873B
        case 3: goto L_8748;    // $873B
        case 2: goto L_8750;    // $873B
        default: goto L_879E;    // $873B
    }    // $873B
L_8748:
    goto L_86E9;    // $874D
L_8750:
    *(word*)(fp - 19) = 1;    // $8751
    while (((unsigned)*(word*)(fp - 11) < (unsigned)3)) {    // $8788
        if (*(byte*)((*(word*)(fp - 11) + (fp - 3)))) goto L_8785;    // $8760
        if (((unsigned)*(byte*)((*(byte*)(((((arg1 << 1) << 1) + *(word*)(fp - 11)) + 0x9A2E)) + *(word*)(fp - 5))) < (unsigned)51)) {    // $8775
        *(byte*)((*(word*)(fp - 17) + 3)) = *(word*)(fp - 11);    // $877E
        *(word*)(fp - 19) = 0;    // $8780
        } else {
        *(word*)(fp - 11) = (*(word*)(fp - 11) + 1);    // $8788
    }
        }
L_8791:
    phi_ret_86ea = *(word*)(fp - 19);    // $8793
    if (!(phi_ret_86ea)) goto L_86EA;    // $8793
L_8796:
L_879A:
    goto L_86E9;    // $879B
L_879E:
    *(word*)(fp - 13) = 200;    // $87A1
    *(word*)(fp - 11) = 0;    // $87A4
    *(word*)(fp - 15) = 0;    // $87A6
    while (((unsigned)*(word*)(fp - 11) < (unsigned)4)) {    // $87E3
        if ((*(word*)(fp - 11) != arg1)) {    // $87AF
        if (((unsigned)*(word*)(fp - 13) > (unsigned)*(byte*)((*(byte*)(((((arg1 << 1) << 1) + *(word*)(fp - 11)) + 0x9A2E)) + *(word*)(fp - 5))))) {    // $87C6
        *(word*)(fp - 13) = *(byte*)((*(byte*)(((((arg1 << 1) << 1) + *(word*)(fp - 11)) + 0x9A2E)) + *(word*)(fp - 5)));    // $87D8
        *(word*)(fp - 15) = *(word*)(fp - 11);    // $87DC
        }
        }
L_87DE:
        *(word*)(fp - 11) = (*(word*)(fp - 11) + 1);    // $87E1
    }
    if (!(((unsigned)*(word*)(fp - 13) < (unsigned)((((4 - record_field_byte(((arg1 << 1) + 0xA004))) << 1) << 1) + 30)))) goto L_880E;    // $8802
    goto L_86E9;    // $880B
L_880E:
    if ((arg1 != 3)) goto L_8796;    // $8811
    *(word*)(fp - 11) = load_operand16_14(4);    // $8819
    if ((*(word*)(fp - 11) == 3)) goto L_879A;    // $8823
    goto L_86E9;    // $8828
        }
}

// Decompiled from source/2-asm-vm\bank05.asm sub $882B
// $882B econ_check_882b
// (body @ $8830)

word econ_check_882b(word arg1) {
    if ((arg1 == 3)) {    // $8833
    econ_calc_861a();    // $8836
    } else {
    econ_calc_8229(arg1);    // $883D
    }
L_8846:
    econ_calc_8430(arg1);    // $8842
    return econ_calc_86c6(arg1);    // $884B
    }
}

// Decompiled from source/2-asm-vm\bank05.asm sub $884C
// $884C econ_accrue_6fcc
// (body @ $8851)

word econ_accrue_6fcc(void) {
    mem_6FCC = (mem_6FCC + ((load_operand16_14(15) + ((unsigned)mem_6FBC / (unsigned)50)) * mem_6F74));    // $886A
    mem_6FCC = max_s16(mem_6FCC, 0x2710);    // $8877
    mem_6FCE = (mem_6FCE + ((((unsigned)*(word*)(((record_field_byte(0xA005) * 14) + 0x67B4)) / (unsigned)50) + load_operand16_14(5)) * mem_6F74));    // $889E
    mem_6FCE = max_s16(mem_6FCE, 0x03E8);    // $88AB
    mem_6540 = (mem_6540 - max_s16(mem_6540, ((9 - mem_6F74) + load_operand16_14(2))));    // $88CB
    return mem_6540;    // $88CE
}

// Decompiled from source/2-asm-vm\bank05.asm sub $88CF
// $88CF econ_get_port
// (body @ $88D4)

word econ_get_port(word arg1) {
    local11 = ((record_field_byte(((arg1 << 1) + 0xA005)) * 14) + 0x67B2);    // $88E5
    return ((((unsigned)*(word*)((((arg1 << 1) << 1) + 0x6FBC)) / (unsigned)50) + *(word*)((local11 + 4))) + *(word*)(local11));    // $88FC
}

// Decompiled from source/2-asm-vm\bank05.asm sub $88FD
// $88FD econ_calc_88fd
// (body @ $8902)

word econ_calc_88fd(word arg1, word arg2) {
    local11 = 0x6B8D;    // $8905
    local9 = 0x6B93;    // $8909
    if (!(((unsigned)*(byte*)((*(byte*)(((((arg1 << 1) << 1) + arg2) + 0x9A2E)) + local11)) < (unsigned)40))) goto L_8B26;    // $891A
    if ((((unsigned)mem_6B99 >> ((arg1 << 1) << 1)) & ((unsigned)8 >> arg2))) {    // $892C
    mem_6B99 = (mem_6B99 & ((((unsigned)8 >> arg2) << ((arg1 << 1) << 1)) ^ 1));    // $8940
    mem_6B99 = (mem_6B99 & ((((unsigned)8 >> arg1) << ((arg2 << 1) << 1)) ^ 1));    // $8954
    } else {
    local6 = econ_get_port(arg1);    // $896D
    local5 = econ_get_port(arg2);    // $8973
    if ((local6 <= local5)) goto L_8ADB;    // $8977
    if (!((((unsigned)mem_6B9B >> ((arg1 << 1) << 1)) & ((unsigned)8 >> arg2)))) goto L_8A54;    // $8989
    *(byte*)((*(byte*)((((arg1 * 3) + arg2) + 0x9A3E)) + local9)) = 0;    // $899A
    local8 = nat_5_0dba(arg2);    // $89A0
    phi_ret_8c1c = (local6 > ((local5 * 3) / 2));    // $89AA
    if (!(phi_ret_8c1c)) goto L_8C1C;    // $89AA
    phi_ret_8c1c = ((unsigned)((record_field_byte(((arg1 << 1) + 0xA004)) * 10) + *(byte*)((*(byte*)(((((arg1 << 1) << 1) + arg2) + 0x9A2E)) + local11))) < (unsigned)load_operand16_14(100));    // $89D3
    if (!(phi_ret_8c1c)) goto L_8C1C;    // $89D3
    phi_ret_8c1c = local8;    // $89D7
    if (!(phi_ret_8c1c)) goto L_8C1C;    // $89D7
    local10 = ((local8 * 14) + 0x67BA);    // $89E1
    local7 = 0;    // $89E3
    do {    // $89E4
        *(byte*)((local10 + local7)) = ((local7 == arg1) ? 80 : 0);    // $89F4
        local7 = (local7 + 1);    // $89F7
    } while (((unsigned)local7 < (unsigned)3));    // $89FB
    *(byte*)((local8 + 0x6F76)) = (*(byte*)((local8 + 0x6F76)) & 252);    // $8A0A
    *(byte*)((local8 + 0x6F76)) = (*(byte*)((local8 + 0x6F76)) | (arg1 + 1));    // $8A17
    *(byte*)((*(byte*)(((((arg1 << 1) << 1) + arg2) + 0x9A2E)) + local11)) = max_s16(((load_operand16_14(5) + *(byte*)((*(byte*)(((((arg1 << 1) << 1) + arg2) + 0x9A2E)) + local11))) + 3), 100);    // $8A42
    goto L_8C1B;    // $8A51
L_8A54:
    if (!(((unsigned)((record_field_byte(((arg1 << 1) + 0xA004)) * 5) + *(byte*)((*(byte*)(((((arg1 << 1) << 1) + arg2) + 0x9A2E)) + local11))) < (unsigned)load_operand16_14(100)))) goto L_8ACA;    // $8A7A
    mem_6B9B = (mem_6B9B | (((unsigned)8 >> arg2) << ((arg1 << 1) << 1)));    // $8A8B
    *(byte*)((*(byte*)(((((arg1 << 1) << 1) + arg2) + 0x9A2E)) + local11)) = (*(byte*)((*(byte*)(((((arg1 << 1) << 1) + arg2) + 0x9A2E)) + local11)) - max_s16(*(byte*)((*(byte*)(((((arg1 << 1) << 1) + arg2) + 0x9A2E)) + local11)), (load_operand16_14(3) + 2)));    // $8AB8
    goto L_8C1B;    // $8AC7
L_8ACA:
    goto L_8C1B;    // $8AD8
L_8ADB:
    *(byte*)((*(byte*)((((arg1 * 3) + arg2) + 0x9A3E)) + local9)) = 1;    // $8AE9
    if (!(((local6 << 1) > local5))) goto L_8AF9;    // $8AEE
    if (load_operand16_14(3)) goto L_8ACA;    // $8AF6
L_8AF9:
    max_s16(((load_operand16_14(3) + *(byte*)((*(byte*)(((((arg1 << 1) << 1) + arg2) + 0x9A2E)) + local11))) + 1), 100);    // $8B1F
    goto L_8C1B;    // $8B23
L_8B26:
    if (!((((unsigned)mem_6B9B >> ((arg1 << 1) << 1)) & ((unsigned)8 >> arg2)))) goto L_8B5D;    // $8B35
    mem_6B9B = (mem_6B9B & ((((unsigned)8 >> arg2) << ((arg1 << 1) << 1)) ^ 1));    // $8B49
    goto L_8C1B;    // $8B5A
L_8B5D:
    if (!(((unsigned)*(byte*)((*(byte*)(((((arg1 << 1) << 1) + arg2) + 0x9A2E)) + local11)) < (unsigned)60))) goto L_8BC2;    // $8B6D
    if (((unsigned)load_operand16_14(7) < (unsigned)record_field_byte(((arg1 << 1) + 0xA004)))) goto L_8ACA;    // $8B83
    *(byte*)((*(byte*)(((((arg1 << 1) << 1) + arg2) + 0x9A2E)) + local11)) = max_s16(((load_operand16_14(3) + *(byte*)((*(byte*)(((((arg1 << 1) << 1) + arg2) + 0x9A2E)) + local11))) + 1), 100);    // $8BB0
    goto L_8C1B;    // $8BBF
L_8BC2:
    *(byte*)((*(byte*)((((arg1 * 3) + arg2) + 0x9A3E)) + local9)) = 0;    // $8BD0
    phi_ret_8c1c = (((unsigned)mem_6B99 >> ((arg1 << 1) << 1)) & ((unsigned)8 >> arg2));    // $8BE0
    if (phi_ret_8c1c) goto L_8C1C;    // $8BE0
    phi_ret_8c1c = load_operand16_14(4);    // $8BE8
    if (phi_ret_8c1c) goto L_8C1C;    // $8BE8
    mem_6B99 = (mem_6B99 | (((unsigned)8 >> arg2) << ((arg1 << 1) << 1)));    // $8BF9
    mem_6B99 = (mem_6B99 | (((unsigned)8 >> arg1) << ((arg2 << 1) << 1)));    // $8C0A
    }
L_8C1B:
    *(byte*)((*(byte*)((((arg1 * 3) + arg2) + 0x9A3E)) + local9)) = 5;    // $8C1B
    phi_ret_8c1c = 5;    // $8C1B
L_8C1C:
    return phi_ret_8c1c;    // $8C1C
    }
}

// Decompiled from source/2-asm-vm\bank05.asm sub $8C1D
// $8C1D econ_loop_8c1d
// (body @ $8C22)

word econ_loop_8c1d(word arg1) {
    local11 = 0;    // $8C23
    do {    // $8C24
        if ((arg1 != local11)) {    // $8C27
        }
L_8C30:
        econ_calc_88fd(arg1, local11);    // $8C2C
        local11 = (local11 + 1);    // $8C32
    } while (((unsigned)local11 < (unsigned)3));    // $8C36
    return ((unsigned)local11 < (unsigned)3);    // $8C39
}

// Decompiled from source/2-asm-vm\bank05.asm sub $8C3A
// $8C3A econ_loop_8c3a
// (body @ $8C3F)

word econ_loop_8c3a(void) {
    local11 = 0;    // $8C40
    do {    // $8C41
        econ_get_6fbc(local11);    // $8C42
        if ((local11 != 3)) {    // $8C49
        }
L_8C51:
        econ_loop_8c1d(local11);    // $8C4D
        econ_check_882b(local11);    // $8C52
        local11 = (local11 + 1);    // $8C58
    } while (((unsigned)local11 < (unsigned)4));    // $8C5C
    return econ_accrue_6fcc();    // $8C62
}

// Decompiled from source/2-asm-vm\bank05.asm sub $8C63
// $8C63 econ_call_nat5
// (body @ $8C68)

word econ_call_nat5(void) {
    nat_5_1186();    // $8C68
    econ_loop_8c3a();    // $8C6B
    nat_5_1890();    // $8C6E
    return nat_5_198e();    // $8C74
}
