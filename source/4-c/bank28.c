// Decompiled from source/2-asm-vm\bank28.asm sub $8003
// $8003 bj_draw_table
// (body @ $8008)

word bj_draw_table(void) {
    syscall_id09_syscall_banked_blit_m3(1, 2, 30, 26, 0xB2DE, 0xB5EA, 226);    // $8018
    syscall_id09_syscall_banked_blit_m3(8, 1, 16, 9, 0xA816, 0xA8A6, 231);    // $802B
    syscall_id09_syscall_banked_blit_m3(0, 9, 16, 9, 0xA816, 0xA8A6, 231);    // $803E
    syscall_id09_syscall_banked_blit_m3(16, 9, 16, 9, 0xA816, 0xA8A6, 231);    // $8052
    return syscall_id09_syscall_banked_blit_m3(8, 17, 16, 11, 0xA936, 0xA9E6, 231);    // $806A
}

// Decompiled from source/2-asm-vm\bank28.asm sub $806B
// $806B bj_draw_card
// (body @ $8070)

word bj_draw_card(word arg1, word arg2, word arg3, word arg4) {
    syscall_id09_syscall_banked_blit_m3(arg1, arg2, 2, 1, *(word*)((((arg4 << 1) << 1) + 0x8B8E)), *(word*)((((arg4 << 1) << 1) + 0x8B90)), 226);    // $808A
    syscall_id09_syscall_banked_blit_m3(arg1, (arg2 + 1), 2, 1, (((*(byte*)((arg4 + 0x8BAE)) * 52) + ((arg3 << 1) << 1)) + 0xB0EE), (((*(byte*)((arg4 + 0x8BAE)) * 52) + ((arg3 << 1) << 1)) + 0xB0F0), 226);    // $80C0
    syscall_id09_syscall_banked_blit_m3(arg1, (arg2 + 2), 2, 1, *(word*)((((arg4 << 1) << 1) + 0x8B9E)), *(word*)((((arg4 << 1) << 1) + 0x8BA0)), 226);    // $80E0
    set_draw_origin(arg1, (arg2 - 1));    // $80E8
    return draw_string(0x8BB2, 0);    // $80F4
}

// Decompiled from source/2-asm-vm\bank28.asm sub $80F5
// $80F5 bj_delay
// (body @ $80FA)

word bj_delay(void) {
    return scale_x6(3);    // $80FF
}

// Decompiled from source/2-asm-vm\bank28.asm sub $8100
// $8100 bj_deal
// (body @ $8105)

word bj_deal(void) {
    *(word*)(fp - 11) = 0;    // $8106
    *(word*)(fp - 9) = 0;    // $8108
    while (((unsigned)*(word*)(fp - 11) < (unsigned)6)) {    // $814D
        if ((*(word*)(fp - 11) != 1)) {    // $8111
        if ((*(word*)(fp - 11) != 3)) {    // $8118
        if ((*(word*)(fp - 11) != 5)) {    // $811F
        if ((mem_7066 & *(byte*)((*(word*)(fp - 11) + 0x8E68)))) {    // $812F
        *(byte*)((*(word*)(fp - 9) + &local9)) = *(byte*)((*(word*)(fp - 11) + 0x8E6E));    // $8142
        *(word*)(fp - 9) = (*(word*)(fp - 9) + 1);    // $8146
        }
        }
        }
        }
L_8148:
        *(word*)(fp - 11) = (*(word*)(fp - 11) + 1);    // $814B
    }
    *(byte*)(fp - 7) = *(byte*)((load_operand16_14(*(word*)(fp - 9)) + &local9));    // $8161
    return *(byte*)(fp - 7);    // $8167
}

// Decompiled from source/2-asm-vm\bank28.asm sub $8168
// $8168 blackjack_hit
// (body @ $816D)

word blackjack_hit(word arg1) {
    syscall_id09_syscall_banked_blit_m3(1, 2, 30, 26, 0xB2DE, 0xB5EA, 226);    // $817D
    syscall_id09_syscall_banked_blit_m3(6, 3, 22, 11, 0xAA96, 0xAB88, 231);    // $8190
    syscall_id09_syscall_banked_blit_m3(6, 16, 22, 11, 0xAA96, 0xAB88, 231);    // $81A4
    syscall_id06_syscall_set_sprite_block(0x8E74, 0, 16);    // $81AF
    resolve_field_ptr(5, 3, *(byte*)&arg1, 3);    // $81BA
    return resolve_field_ptr(5, 16, 0, 3);    // $81C7
}

// Decompiled from source/2-asm-vm\bank28.asm sub $81C8
// $81C8 bj_draw_card_hi
// (body @ $81CD)

word bj_draw_card_hi(word arg1, word arg2, word arg3) {
    *(byte*)(fp - 1) = (((unsigned)*(byte*)&arg1 >> 4) & 15);    // $81D4
    return bj_draw_card(*(byte*)&arg2, *(byte*)&arg3, (*(byte*)&arg1 & 15), *(byte*)(fp - 1));    // $81ED
}

// Decompiled from source/2-asm-vm\bank28.asm sub $81EE
// $81EE bj_card_value
// (body @ $81F3)

word bj_card_value(word arg1) {
    *(byte*)&arg1 = (*(byte*)&arg1 & 15);    // $81F8
    if (!(*(byte*)&arg1)) return 0;    // $81FE
    return 1;    // $8204
}

// Decompiled from source/2-asm-vm\bank28.asm sub $8205
// $8205 bj_is_face_card
// (body @ $820A)

word bj_is_face_card(word arg1) {
    *(byte*)&arg1 = (*(byte*)&arg1 & 15);    // $820F
    *(byte*)(fp - 1) = ((((unsigned)9 < (unsigned)*(byte*)&arg1) && (!(((unsigned)*(byte*)&arg1 < (unsigned)13)) && *(byte*)&arg1)) || (!(((unsigned)9 < (unsigned)*(byte*)&arg1)) && *(byte*)&arg1));    // $822F
    return *(byte*)(fp - 1);    // $8235
}

// Decompiled from source/2-asm-vm\bank28.asm sub $8236
// $8236 bj_hand_value
// (body @ $823B)

word bj_hand_value(word arg1, word arg2) {
    if (!(((unsigned)0 < (unsigned)*(byte*)&arg1))) goto L_8254;    // $8242
    if (!(((unsigned)*(byte*)&arg1 < (unsigned)10))) goto L_8254;    // $824A
    goto L_828A;    // $8251
L_8254:
    if (!(((unsigned)9 < (unsigned)*(byte*)&arg1))) goto L_826A;    // $825B
    if (!(((unsigned)*(byte*)&arg1 < (unsigned)13))) goto L_826A;    // $8263
    goto L_828A;    // $8267
L_826A:
    if (*(byte*)&arg1) goto L_828D;    // $826D
    *(byte*)&arg1 = 11;    // $8271
    if (!(((unsigned)(*(byte*)&arg1 + *(byte*)&arg2) <= (unsigned)21))) goto L_8289;    // $8280
    goto L_828A;    // $8286
L_8289:
L_828A:
    *(byte*)(fp - 1) = 1;    // $828A
L_828D:
    return *(byte*)(fp - 1);    // $8290
}

// Decompiled from source/2-asm-vm\bank28.asm sub $8291
// $8291 bj_check_bust
// (body @ $8296)

word bj_check_bust(word arg1) {
    if (!(((unsigned)0 < (unsigned)*(byte*)&arg1))) goto L_82AF;    // $829D
    if (!(((unsigned)*(byte*)&arg1 < (unsigned)10))) goto L_82AF;    // $82A5
    goto L_82C2;    // $82AC
L_82AF:
    if (!(((unsigned)9 < (unsigned)*(byte*)&arg1))) goto L_82C5;    // $82B6
    if (!(((unsigned)*(byte*)&arg1 < (unsigned)13))) goto L_82C5;    // $82BE
L_82C2:
    *(byte*)(fp - 1) = 10;    // $82C2
L_82C5:
    return *(byte*)(fp - 1);    // $82C8
}

// Decompiled from source/2-asm-vm\bank28.asm sub $82C9
// $82C9 bj_hit_loop
// (body @ $82CE)

word bj_hit_loop(word arg1, word arg2) {
    *(byte*)(fp - 7) = (*(byte*)&arg1 + 1);    // $82D2
L_82D5:
    *(byte*)(fp - 7) = (*(byte*)(fp - 7) - 1);    // $82D9
    goto L_82F0;    // $82DD
L_82E0:
    *(byte*)((*(byte*)(fp - 5) + &local10)) = 11;    // $82EB
L_82F0:
    *(byte*)(fp - 5) = (*(byte*)(fp - 5) + 1);    // $82F0
    if (((unsigned)*(byte*)(fp - 5) < (unsigned)*(byte*)(fp - 7))) goto L_82E0;    // $82FC
    goto L_8315;    // $8302
L_8305:
    *(byte*)((*(byte*)(fp - 5) + &local10)) = 1;    // $8310
L_8315:
    *(byte*)(fp - 5) = (*(byte*)(fp - 5) + 1);    // $8315
    if (((unsigned)*(byte*)(fp - 5) < (unsigned)*(byte*)&arg1)) goto L_8305;    // $8321
    *(byte*)&local9 = *(byte*)&arg2;    // $8327
    goto L_8344;    // $832B
L_832E:
    *(byte*)&local9 = (*(byte*)&local9 + *(byte*)((*(byte*)(fp - 5) + &local10)));    // $833D
L_8344:
    *(byte*)(fp - 5) = (*(byte*)(fp - 5) + 1);    // $8344
    if (((unsigned)*(byte*)(fp - 5) < (unsigned)*(byte*)&arg1)) goto L_832E;    // $8350
    if (((unsigned)*(byte*)&local9 < (unsigned)22)) goto L_8362;    // $8359
    if (*(byte*)(fp - 7)) goto L_82D5;    // $835F
L_8362:
    return *(byte*)&local9;    // $8365
}

// Decompiled from source/2-asm-vm\bank28.asm sub $8366
// $8366 bj_deal_loop
// (body @ $836B)

word bj_deal_loop(word arg1, word arg2, word arg3) {
    *(byte*)(fp - 1) = 0;    // $836C
    while (((unsigned)*(byte*)&local11 < (unsigned)*(byte*)&arg2)) {    // $838A
        *(byte*)(fp - 1) = (*(byte*)(fp - 1) + bj_check_bust(*(byte*)((*(byte*)&local11 + arg1))));    // $8383
        *(byte*)&local11 = (*(byte*)&local11 + 1);    // $838A
    }
    if (*(byte*)&arg3) {    // $839C
    *(byte*)(fp - 1) = bj_hit_loop(*(byte*)&arg3, *(byte*)(fp - 1));    // $83AB
    }
L_83AE:
    return *(byte*)(fp - 1);    // $83B1
}

// Decompiled from source/2-asm-vm\bank28.asm sub $83B2
// $83B2 bj_draw_hand
// (body @ $83B7)

word bj_draw_hand(void) {
    blit_block_save(1, 10, 10, 8);    // $83BB
    do {    // $83BF
        *(byte*)(fp - 3) = draw_banked_menu(1, 10, 2, 0x8E84, 2);    // $83CA
    } while ((*(byte*)(fp - 3) == 255));    // $83D4
    blit_block_unwind();    // $83D7
    switch (*(byte*)(fp - 3)) {    // $83DD
    case 0:
L_83EB:
        *(byte*)&local11 = 0;    // $83EB
    default:
        return *(byte*)&local11;    // $83F1
    case 1:
        goto L_83EB;    // $83F3
    }
}

// Decompiled from source/2-asm-vm\bank28.asm sub $83F6
// $83F6 bj_loop_83f6
// (body @ $83FB)

word bj_loop_83f6(word arg1) {
    goto L_8430;    // $83FC
L_83FF:
    goto L_8421;    // $8400
L_8403:
    *(byte*)((((*(byte*)(fp - 1) * 13) + *(byte*)&local11) + arg1)) = ((*(byte*)(fp - 1) << 4) | *(byte*)&local11);    // $841C
L_8421:
    *(byte*)&local11 = (*(byte*)&local11 + 1);    // $8421
    if (((unsigned)*(byte*)&local11 < (unsigned)13)) goto L_8403;    // $8429
L_8430:
    *(byte*)(fp - 1) = (*(byte*)(fp - 1) + 1);    // $8430
    if (((unsigned)*(byte*)(fp - 1) < (unsigned)4)) goto L_83FF;    // $8438
    return ((unsigned)*(byte*)(fp - 1) < (unsigned)4);    // $843B
}

// Decompiled from source/2-asm-vm\bank28.asm sub $843C
// $843C bj_draw_prompt
// (body @ $8441)

word bj_draw_prompt(word arg1) {
    native_draw_box(10, 3, 18, 6, 1, 0);    // $8448
    set_tile_cursor(11, 4);    // $844E
    mem_728A = 11;    // $8453
    draw_field_m1(0x8E92, arg1);    // $845A
    mem_728A = 0;    // $845F
    return 0;    // $8462
}

// Decompiled from source/2-asm-vm\bank28.asm sub $8463
// $8463 bj_clear_area
// (body @ $8468)

word bj_clear_area(void) {
    syscall_id08_syscall_queue_ppu_transfer(10, 9, 17, 4, 0, 0);    // $8470
    return syscall_id08_syscall_queue_ppu_transfer(10, 17, 17, 6, 0, 0);    // $8481
}

// Decompiled from source/2-asm-vm\bank28.asm sub $8482
// $8482 blackjack_bet_screen
// (body @ $8487)

word blackjack_bet_screen(void) {
    *(byte*)(fp - 118) = bj_deal();    // $848A
    blackjack_hit(*(byte*)(fp - 118));    // $8491
    bj_loop_83f6((fp - 52));    // $8499
    *(byte*)(fp - 73) = 0;    // $849E
    *(byte*)(fp - 74) = 1;    // $84A2
    *(word*)(fp - 115) = mem_666B;    // $84A8
L_84AA:
    bj_clear_area();    // $84AA
    *(byte*)(fp - 72) = 0;    // $84AE
    *(byte*)(fp - 79) = 0;    // $84B2
    *(byte*)(fp - 80) = 0;    // $84B6
    set_tile_cursor(11, 23);    // $84BC
    draw_field_m1(0x8E9D, *(word*)(fp - 115));    // $84C5
    if (!(((unsigned)*(word*)(fp - 115) < (unsigned)5))) goto L_84EB;    // $84CD
    bj_draw_prompt(*(word*)(((load_operand16_14(2) << 1) + 0x8D90)));    // $84DC
    scale_6b88(1);    // $84E1
    mem_666B = *(word*)(fp - 115);    // $84E7
    return *(word*)(fp - 115);    // $84EA
L_84EB:
    bj_loop_8af1((fp - 52));    // $84EF
    *(word*)(fp - 120) = 0;    // $84F4
L_84F6:
    *(word*)(fp - 122) = 0;    // $84F7
L_84F9:
    *(byte*)(fp - 72) = (*(byte*)(fp - 72) + 1);    // $850E
    *(byte*)((((*(word*)(fp - 122) << 1) + *(word*)(fp - 120)) + (fp - 56))) = *(byte*)(((*(byte*)(fp - 72) - 1) + (fp - 52)));    // $8515
    if (!((*(byte*)(fp - 74) == *(word*)(fp - 122)))) goto L_85DE;    // $851C
    *(byte*)(fp - 81) = (*(byte*)((((*(word*)(fp - 122) << 1) + *(word*)(fp - 120)) + (fp - 56))) & 15);    // $852E
    *(byte*)((*(word*)(fp - 120) + (fp - 98))) = *(byte*)(fp - 81);    // $853D
    if (*(word*)(fp - 120)) goto L_8551;    // $8540
L_8551:
    bj_draw_card_hi(*(byte*)(fp - 54), mem_8E99, mem_8E9B);    // $854D
    if (!((*(word*)(fp - 120) == 1))) goto L_863C;    // $8555
    bj_draw_prompt(mem_8CE7);    // $855B
    if (!(*(word*)(fp - 115))) goto L_863C;    // $8561
L_8564:
    set_tile_cursor(11, 6);    // $8566
    if (!(((unsigned)*(word*)(fp - 115) < (unsigned)50))) goto L_8577;    // $856F
    phi_push_8579 = *(word*)(fp - 115);    // $8574
    goto L_8579;    // $8574
L_8577:
    phi_push_8579 = 50;    // $8577
L_8579:
    *(word*)(fp - 117) = draw_labeled_value_1(0x8EAC, 5, phi_push_8579);    // $8582
    if ((*(word*)(fp - 117) == 1)) goto L_8564;    // $8589
    if (!(((unsigned)*(word*)(fp - 117) <= (unsigned)10))) goto L_8599;    // $8590
    phi_85aa_0 = mem_8D12;    // $8596
    goto L_85AA;    // $8596
L_8599:
    if (!(((unsigned)41 <= (unsigned)*(word*)(fp - 117)))) goto L_85A7;    // $859E
    phi_85aa_0 = mem_8D16;    // $85A4
    goto L_85AA;    // $85A4
L_85A7:
    phi_85aa_0 = mem_8D14;    // $85A7
L_85AA:
    bj_draw_prompt(phi_85aa_0);    // $85AA
    scale_6b88(1);    // $85AF
    *(word*)(fp - 115) = (*(word*)(fp - 115) - *(word*)(fp - 117));    // $85B9
    set_tile_cursor(11, 21);    // $85BE
    draw_field_m1(0x8EAD, *(word*)(fp - 117));    // $85C7
    set_tile_cursor(11, 23);    // $85CE
    draw_field_m1(0x8EB5, *(word*)(fp - 115));    // $85D7
    goto L_863C;    // $85DB
L_85DE:
    *(byte*)(fp - 82) = (*(byte*)((((*(word*)(fp - 122) << 1) + *(word*)(fp - 120)) + (fp - 56))) & 15);    // $85ED
    *(byte*)((*(word*)(fp - 120) + (fp - 113))) = *(byte*)(fp - 82);    // $85FC
    if (!((*(byte*)(fp - 73) == *(word*)(fp - 122)))) goto L_862D;    // $8603
    if (!((*(word*)(fp - 120) == 1))) goto L_862D;    // $860A
    bj_draw_card_hi(*(byte*)((((*(word*)(fp - 122) << 1) + *(word*)(fp - 120)) + (fp - 56))), ((*(word*)(fp - 120) << 1) + mem_8E95), mem_8E97);    // $8626
    goto L_863C;    // $862A
L_862D:
L_863C:
    bj_blit_card_2x3(((*(word*)(fp - 120) << 1) + mem_8E95), mem_8E97);    // $8638
    *(word*)(fp - 122) = (*(word*)(fp - 122) + 1);    // $863F
    if (((unsigned)*(word*)(fp - 122) < (unsigned)2)) goto L_84F9;    // $8645
    *(byte*)(fp - 79) = (*(byte*)(fp - 79) + bj_hand_value(*(byte*)(fp - 81), *(byte*)(fp - 79)));    // $8659
    *(byte*)(fp - 80) = (*(byte*)(fp - 80) + bj_hand_value(*(byte*)(fp - 82), *(byte*)(fp - 80)));    // $866D
    *(word*)(fp - 120) = (*(word*)(fp - 120) + 1);    // $8673
    if (((unsigned)*(word*)(fp - 120) < (unsigned)2)) goto L_84F6;    // $8679
    *(byte*)(fp - 83) = 0;    // $867D
    *(word*)(fp - 120) = 0;    // $8681
L_8683:
    *(byte*)(fp - 83) = (*(byte*)(fp - 83) + bj_is_face_card(*(byte*)((*(word*)(fp - 120) + (fp - 56)))));    // $8696
    *(word*)(fp - 120) = (*(word*)(fp - 120) + 1);    // $869C
    if (((unsigned)*(word*)(fp - 120) < (unsigned)2)) goto L_8683;    // $86A2
    if (*(byte*)(fp - 83)) goto L_86FD;    // $86A8
    if (!((*(byte*)(fp - 80) == 21))) goto L_86FD;    // $86B1
    bj_draw_card_hi(*(byte*)(fp - 56), mem_8E95, mem_8E97);    // $86BE
    bj_draw_prompt(mem_8E0E);    // $86C5
    scale_6b88(1);    // $86CA
    bj_draw_prompt(*(word*)(((load_operand16_14(2) << 1) + 0x8C1A)));    // $86DA
    scale_6b88(1);    // $86DF
    if (!(((unsigned)*(word*)(fp - 115) < (unsigned)(*(word*)(fp - 117) << 1)))) goto L_86F4;    // $86EB
L_86EF:
    *(word*)(fp - 115) = 0;    // $86EF
    goto L_8A0F;    // $86F1
L_86F4:
    goto L_86EF;    // $86FA
L_86FD:
    bj_draw_card_hi(*(byte*)(fp - 53), (mem_8E99 + 2), mem_8E9B);    // $8709
    *(byte*)(fp - 83) = 0;    // $870E
    *(word*)(fp - 120) = 0;    // $8712
L_8714:
    *(byte*)(fp - 83) = (*(byte*)(fp - 83) + bj_is_face_card(*(byte*)((*(word*)(fp - 120) + (fp - 54)))));    // $8727
    *(word*)(fp - 120) = (*(word*)(fp - 120) + 1);    // $872D
    if (((unsigned)*(word*)(fp - 120) < (unsigned)2)) goto L_8714;    // $8733
    if (*(byte*)(fp - 83)) goto L_8785;    // $8739
    if (!((*(byte*)(fp - 79) == 21))) goto L_8785;    // $8742
    bj_draw_card_hi(*(byte*)(fp - 56), mem_8E95, mem_8E97);    // $874F
    bj_draw_prompt(mem_8E0C);    // $8756
    scale_6b88(1);    // $875B
    bj_draw_prompt(*(word*)(((load_operand16_14(2) << 1) + 0x8BE9)));    // $876B
    *(word*)(fp - 117) = (*(word*)(fp - 117) * 3);    // $8773
    max_s16((*(word*)(fp - 115) + *(word*)(fp - 117)), 0xEA60);    // $877E
    goto L_86EF;    // $8782
L_8785:
    *(word*)(fp - 120) = 2;    // $8786
    *(byte*)(fp - 78) = 0;    // $8789
L_878C:
    bj_draw_prompt(mem_8CE9);    // $878F
    *(byte*)(fp - 83) = bj_draw_hand();    // $8796
    if (*(byte*)(fp - 83)) goto L_884F;    // $879C
    if (!(((unsigned)*(byte*)(fp - 78) < (unsigned)5))) goto L_883C;    // $87A4
    *(byte*)(fp - 72) = (*(byte*)(fp - 72) + 1);    // $87AF
    *(byte*)(fp - 81) = *(byte*)(((*(byte*)(fp - 72) - 1) + (fp - 52)));    // $87B6
    *(byte*)((*(word*)(fp - 120) + (fp - 98))) = (*(byte*)(fp - 81) & 15);    // $87C7
    bj_draw_card_hi(*(byte*)(fp - 81), ((*(word*)(fp - 120) << 1) + mem_8E99), mem_8E9B);    // $87D7
    *(word*)(fp - 120) = (*(word*)(fp - 120) + 1);    // $87DE
    *(byte*)(fp - 75) = 0;    // $87E1
    goto L_8817;    // $87E5
L_87E8:
    if (!(bj_card_value(*(byte*)((*(word*)(fp - 122) + (fp - 98)))))) goto L_8814;    // $87F6
    *(byte*)((*(byte*)(fp - 75) + (fp - 71))) = *(byte*)((*(word*)(fp - 122) + (fp - 98)));    // $880C
    *(byte*)(fp - 75) = (*(byte*)(fp - 75) + 1);    // $8811
L_8814:
L_8817:
    *(word*)(fp - 122) = (*(word*)(fp - 122) + 1);    // $8817
    if (((unsigned)*(word*)(fp - 122) < (unsigned)*(word*)(fp - 120))) goto L_87E8;    // $881E
    *(byte*)(fp - 79) = bj_deal_loop((fp - 71), *(byte*)(fp - 75), (*(word*)(fp - 120) - *(byte*)(fp - 75)));    // $8836
    goto L_8848;    // $8839
L_883C:
    bj_draw_prompt(mem_8E33);    // $883F
L_8848:
    scale_6b88(1);    // $8844
    *(byte*)(fp - 78) = (*(byte*)(fp - 78) + 1);    // $884C
L_884F:
    if (((unsigned)*(byte*)(fp - 79) > (unsigned)21)) goto L_886A;    // $8855
    if ((*(byte*)(fp - 83) == 13)) goto L_886A;    // $885D
    if (!(((unsigned)5 < (unsigned)*(byte*)(fp - 78)))) goto L_878C;    // $8867
L_886A:
    if (!(((unsigned)*(byte*)(fp - 79) <= (unsigned)21))) goto L_8938;    // $8870
    if (!(((unsigned)*(byte*)(fp - 80) < (unsigned)16))) goto L_8938;    // $8879
    *(word*)(fp - 120) = 2;    // $887D
    *(byte*)(fp - 78) = 0;    // $8880
L_8883:
    if (!(((unsigned)*(byte*)(fp - 78) < (unsigned)5))) goto L_891D;    // $8888
    *(byte*)(fp - 72) = (*(byte*)(fp - 72) + 1);    // $8893
    *(byte*)(fp - 82) = *(byte*)(((*(byte*)(fp - 72) - 1) + (fp - 52)));    // $889A
    *(byte*)((*(word*)(fp - 120) + (fp - 113))) = (*(byte*)(fp - 82) & 15);    // $88AB
    bj_draw_card_hi(*(byte*)(fp - 82), ((*(word*)(fp - 120) << 1) + mem_8E95), mem_8E97);    // $88BB
    *(word*)(fp - 120) = (*(word*)(fp - 120) + 1);    // $88C2
    *(byte*)(fp - 75) = 0;    // $88C5
    goto L_88FB;    // $88C9
L_88CC:
    if (!(bj_card_value(*(byte*)((*(word*)(fp - 122) + (fp - 113)))))) goto L_88F8;    // $88DA
    *(byte*)((*(byte*)(fp - 75) + (fp - 71))) = *(byte*)((*(word*)(fp - 122) + (fp - 113)));    // $88F0
    *(byte*)(fp - 75) = (*(byte*)(fp - 75) + 1);    // $88F5
L_88F8:
L_88FB:
    *(word*)(fp - 122) = (*(word*)(fp - 122) + 1);    // $88FB
    if (((unsigned)*(word*)(fp - 122) < (unsigned)*(word*)(fp - 120))) goto L_88CC;    // $8902
    *(byte*)(fp - 80) = bj_deal_loop((fp - 71), *(byte*)(fp - 75), (*(word*)(fp - 120) - *(byte*)(fp - 75)));    // $891A
L_891D:
    *(byte*)(fp - 78) = (*(byte*)(fp - 78) + 1);    // $8921
    if (!(((unsigned)*(byte*)(fp - 80) < (unsigned)16))) goto L_895F;    // $892A
    if (((unsigned)*(byte*)(fp - 78) < (unsigned)5)) goto L_8883;    // $8932
    goto L_895F;    // $8935
L_8938:
    if (!(((unsigned)*(byte*)(fp - 79) <= (unsigned)21))) goto L_895F;    // $893E
    if (!(((unsigned)*(byte*)(fp - 80) > (unsigned)16))) goto L_895F;    // $8947
    bj_draw_prompt(*(word*)(((load_operand16_14(2) << 1) + 0x8BB5)));    // $8956
L_895F:
    scale_6b88(1);    // $895B
    bj_draw_card_hi(*(byte*)(fp - 56), mem_8E95, mem_8E97);    // $8969
    set_tile_cursor(25, 18);    // $8971
    draw_field_m1(0x8EC4, *(byte*)(fp - 79));    // $897C
    set_tile_cursor(25, 10);    // $8983
    draw_field_m1(0x8EC8, *(byte*)(fp - 80));    // $898E
    if (!((!(((unsigned)*(byte*)(fp - 80) <= (unsigned)21)) || !(((unsigned)*(byte*)(fp - 79) < (unsigned)*(byte*)(fp - 80)))))) goto L_89B0;    // $89A4
    if (!(((unsigned)*(byte*)(fp - 79) > (unsigned)21))) goto L_89DE;    // $89AD
L_89B0:
    if (!(((unsigned)*(byte*)(fp - 79) > (unsigned)21))) goto L_89C5;    // $89B6
    goto L_89CE;    // $89C2
L_89C5:
L_89CE:
    phi_89d7_0 = *(word*)(((load_operand16_14(2) << 1) + 0x8C88));    // $89D1
    goto L_89D7;    // $89D1
L_89D4:
    phi_89d7_0 = mem_8E31;    // $89D4
L_89D7:
    bj_draw_prompt(phi_89d7_0);    // $89D7
    goto L_8A0A;    // $89DB
L_89DE:
    if ((*(byte*)(fp - 79) == *(byte*)(fp - 80))) goto L_89D4;    // $89E7
    bj_draw_prompt(*(word*)(((load_operand16_14(2) << 1) + 0x8C49)));    // $89F6
    *(word*)(fp - 115) = max_s16(((*(word*)(fp - 117) << 1) + *(word*)(fp - 115)), 0xEA60);    // $8A08
L_8A0A:
L_8A0F:
    scale_6b88(1);    // $8A0B
    if (!((((unsigned)(((*(word*)(((current_port * 14) + 0x67B2)) / 2) + load_operand16_14(50)) + mem_666B) <= (unsigned)*(word*)(fp - 115)) || (*(word*)(fp - 115) == 0xEA60)))) goto L_8A59;    // $8A34
    bj_draw_prompt(*(word*)(((load_operand16_14(2) << 1) + 0x8DD1)));    // $8A43
    scale_6b88(2);    // $8A48
    mem_6B86 = (mem_6B86 + 1);    // $8A50
L_8A53:
    mem_666B = *(word*)(fp - 115);    // $8A55
    return *(word*)(fp - 115);    // $8A58
L_8A59:
    blit_block_save(1, 10, 10, 6);    // $8A5D
    syscall_id09_syscall_banked_blit_m3(1, 10, 10, 6, 0xA79E, 0xA7DA, 231);    // $8A6F
    mem_728A = 2;    // $8A74
    set_tile_cursor(2, 11);    // $8A79
    draw_string(0x8ECC, 1);    // $8A81
    *(byte*)(fp - 83) = prompt_confirm();    // $8A88
    mem_728A = 0;    // $8A8C
    blit_block_unwind();    // $8A8F
    if (*(byte*)(fp - 83)) goto L_84AA;    // $8A95
    bj_draw_prompt(*(word*)(((load_operand16_14(2) << 1) + 0x8D56)));    // $8AA4
    scale_6b88(1);    // $8AA9
    goto L_8A53;    // $8AAD
}

// Decompiled from source/2-asm-vm\bank28.asm sub $8AB0
// $8AB0 bj_reset
// (body @ $8AB5)

word bj_reset(void) {
    reset_all_chr();    // $8AB5
    copy_from_bank_dc80(&local4, 16, 15);    // $8ABF
    syscall_id06_syscall_set_sprite_block(&local4, 0, 16);    // $8ACB
    blackjack_bet_screen();    // $8ACF
    mem_7068 = 255;    // $8AD5
    mem_7063 = 1;    // $8AD9
    syscall_id12_syscall_set_chr_banks(1, 20);    // $8AE0
    court_setup_chr();    // $8AEB
    return 1;    // $8AF0
}

// Decompiled from source/2-asm-vm\bank28.asm sub $8AF1
// $8AF1 bj_loop_8af1
// (body @ $8AF6)

word bj_loop_8af1(word arg1) {
    *(word*)(fp - 5) = 0;    // $8AF7
    do {    // $8AF9
        *(byte*)&local11 = load_operand16_14(52);    // $8AFF
        *(byte*)(fp - 3) = load_operand16_14(52);    // $8B08
        *(byte*)(fp - 1) = *(byte*)((*(byte*)&local11 + arg1));    // $8B11
        *(byte*)((*(byte*)&local11 + arg1)) = *(byte*)((*(byte*)(fp - 3) + arg1));    // $8B20
        *(byte*)((*(byte*)(fp - 3) + arg1)) = *(byte*)(fp - 1);    // $8B2A
        *(word*)(fp - 5) = (*(word*)(fp - 5) + 1);    // $8B2E
    } while (((unsigned)*(word*)(fp - 5) < (unsigned)104));    // $8B35
    return ((unsigned)*(word*)(fp - 5) < (unsigned)104);    // $8B38
}

// Decompiled from source/2-asm-vm\bank28.asm sub $8B39
// $8B39 bj_blit_card_2x3
// (body @ $8B3E)

word bj_blit_card_2x3(word arg1, word arg2) {
    return syscall_id09_syscall_banked_blit_m3(arg1, arg2, 2, 3, 0xB072, 0xB078, 226);    // $8B50
}

// Decompiled from source/2-asm-vm\bank28.asm sub $8B51
// $8B51 bj_clear_card
// (body @ $8B56)

word bj_clear_card(word arg1, word arg2) {
    return syscall_id08_syscall_queue_ppu_transfer(arg1, arg2, 2, 4, 0, 0);    // $8B61
}

// Decompiled from source/2-asm-vm\bank28.asm sub $8B62
// $8B62 bj_loop_8b62
// (body @ $8B67)

word bj_loop_8b62(word arg1) {
    local11 = 0;    // $8B68
L_8B69:
    local10 = 0;    // $8B6A
L_8B6B:
    *(byte*)((((local11 * 13) + arg1) + local10)) = ((local10 << 4) | local11);    // $8B7A
    local10 = (local10 + 1);    // $8B7D
    if (((unsigned)local10 < (unsigned)13)) goto L_8B6B;    // $8B81
    local11 = (local11 + 1);    // $8B86
    if (((unsigned)local11 < (unsigned)4)) goto L_8B69;    // $8B8A
    return ((unsigned)local11 < (unsigned)4);    // $8B8D
}
