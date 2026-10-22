// Decompiled from source/2-asm-vm\bank08.asm sub $98CB
// $98CB animate_sail_sprites
// (body @ $98D0)

word animate_sail_sprites(void) {
    local11 = 0;    // $98D1
    do {    // $98D2
        syscall_id06_syscall_set_sprite_block(((local11 << 4) + 0x9D6A), 0, 16);    // $98DE
        syscall_id17_syscall_busy_wait(5);    // $98E5
        upload_cursor_sprites(((unsigned)mem_6B8C / (unsigned)5));    // $98EF
        syscall_id17_syscall_busy_wait(5);    // $98F6
        local11 = (local11 + 1);    // $98FC
    } while (((unsigned)local11 < (unsigned)4));    // $9900
    return ((unsigned)local11 < (unsigned)4);    // $9903
}

// Decompiled from source/2-asm-vm\bank08.asm sub $9904
// $9904 animate_sail_sprites_b
// (body @ $9909)

word animate_sail_sprites_b(void) {
    local11 = 0;    // $990A
    do {    // $990B
        idx_valid_lt21(21);    // $990D
        syscall_id06_syscall_set_sprite_block(0x9DAA, 0, 16);    // $9918
        syscall_id17_syscall_busy_wait(3);    // $991F
        upload_cursor_sprites(((unsigned)mem_6B8C / (unsigned)5));    // $9929
        syscall_id17_syscall_busy_wait(3);    // $9930
        local11 = (local11 + 1);    // $9936
    } while (((unsigned)local11 < (unsigned)3));    // $993A
    return ((unsigned)local11 < (unsigned)3);    // $993D
}

// Decompiled from source/2-asm-vm\bank08.asm sub $993E
// $993E draw_ship_at_sea
// (body @ $9943)

word draw_ship_at_sea(void) {
    *(word*)(fp - 34) = 0x6662;    // $9946
    local11 = ((*(byte*)((*(word*)(fp - 34) + 2)) << 1) << 3);    // $994F
    local10 = ((*(byte*)((*(word*)(fp - 34) + 3)) << 1) << 3);    // $9957
    local9 = (*(byte*)((*(word*)(fp - 34) + 8)) & 7);    // $995E
    local8 = (local9 / 2);    // $9962
    if ((*(byte*)((*(word*)(fp - 34) + 15)) & 1)) goto L_996E;    // $9969
    local9 = 8;    // $996D
L_996E:
    local9 = ((local9 << 1) << 1);    // $9971
    *(word*)(fp - 32) = 16;    // $9974
L_9976:
    *(word*)(fp - 26) = ((ui_shared_var_737d << 4) + 0xBB02);    // $997F
    *(word*)(fp - 28) = &local0;    // $9984
    *(word*)(fp - 30) = 0;    // $9987
L_9989:
    *(byte*)(*(word*)(fp - 28)) = (*(byte*)(*(word*)(fp - 26)) + (((*(word*)(fp - 32) % 2) ? *(word*)(((local8 << 1) + 0x9DC2)) : 0) + local10));    // $99A5
    *(word*)(fp - 28) = (*(word*)(fp - 28) + 1);    // $99A9
    *(word*)(fp - 26) = (*(word*)(fp - 26) + 1);    // $99AE
    *(byte*)(*(word*)(fp - 28)) = (*(byte*)(*(word*)(fp - 26)) + local9);    // $99B9
    *(word*)(fp - 28) = (*(word*)(fp - 28) + 1);    // $99BD
    *(word*)(fp - 26) = (*(word*)(fp - 26) + 1);    // $99C2
    *(byte*)(*(word*)(fp - 28)) = *(byte*)(*(word*)(fp - 26));    // $99C9
    *(word*)(fp - 28) = (*(word*)(fp - 28) + 1);    // $99CD
    *(word*)(fp - 26) = (*(word*)(fp - 26) + 1);    // $99D2
    *(byte*)(*(word*)(fp - 28)) = (*(byte*)(*(word*)(fp - 26)) + (((*(word*)(fp - 32) % 2) ? *(word*)(((local8 << 1) + 0x9DBA)) : 0) + local11));    // $99F0
    *(word*)(fp - 28) = (*(word*)(fp - 28) + 1);    // $99F4
    *(word*)(fp - 26) = (*(word*)(fp - 26) + 1);    // $99F9
    *(word*)(fp - 30) = (*(word*)(fp - 30) + 1);    // $99FE
    if ((*(word*)(fp - 30) < 4)) goto L_9989;    // $9A04
    syscall_id13_syscall_set_chr_bank_alt(&local0, 5, 4);    // $9A0E
    syscall_id17_syscall_busy_wait(2);    // $9A15
    *(word*)(fp - 32) = (*(word*)(fp - 32) - 1);    // $9A1C
    if (*(word*)(fp - 32)) goto L_9976;    // $9A20
    return place_object_sprite(party_map_x, party_map_y, mem_666A);    // $9A33
}

// Decompiled from source/2-asm-vm\bank08.asm sub $9A34
// $9A34 load_ship_sprites
// (body @ $9A39)

word load_ship_sprites(void) {
    idx_valid_lt21(22);    // $9A3B
    return syscall_id06_syscall_set_sprite_block(0x9DCA, 0, 16);    // $9A4A
}

// Decompiled from source/2-asm-vm\bank08.asm sub $9A4B
// $9A4B update_wave_anim
// (body @ $9A50)

word update_wave_anim(void) {
    return upload_cursor_sprites(((unsigned)mem_6B8C / (unsigned)5));    // $9A5A
}

// Decompiled from source/2-asm-vm\bank08.asm sub $9A5B
// $9A5B lookup_ship_record
// (body @ $9A60)

word lookup_ship_record(word arg1) {
    return record_base_6b1c((*(byte*)(((arg1 * 7) + 0x6C96)) & 15));    // $9A6F
}

// Decompiled from source/2-asm-vm\bank08.asm sub $9A70
// $9A70 sail_event_land_ho
// (body @ $9A75)

word sail_event_land_ho(void) {
    blit_screen_buffer();    // $9A75
    show_prompt_bc2b(search_6a9a_ptr(), 0);    // $9A7D
    draw_string(0x9DDA, 1);    // $9A85
    return redraw_dialog_region();    // $9A8C
}

// Decompiled from source/2-asm-vm\bank08.asm sub $9A8D
// $9A8D sail_event_out_of_provisions
// (body @ $9A92)

word sail_event_out_of_provisions(word arg1, word arg2) {
    show_prompt_bc2b(search_6a9a_ptr(), 0);    // $9A97
    draw_string(0x9E00, 0);    // $9A9F
    draw_string_banked(lookup_ship_record(arg1));    // $9AA9
    return draw_field(0x9E06, (arg2 ? 0x9E20 : 0x9E25));    // $9AC2
}

// Decompiled from source/2-asm-vm\bank08.asm sub $9AC3
// $9AC3 accrue_capped_6f72
// (body @ $9AC8)

word accrue_capped_6f72(void) {
    phi_ret_9aff = ((unsigned)mem_6F72 < (unsigned)0xC350);    // $9ACF
    if (phi_ret_9aff) {    // $9ACF
    local11 = ((current_port * 14) + 0x67B2);    // $9ADB
    local10 = ((load_operand16_14(100) + ((unsigned)(*(word*)((local11 + 4)) + *(word*)(local11)) >> 1)) + mem_6F72);    // $9AF3
    mem_6F72 = max_s16(local10, 0xC350);    // $9AFC
    phi_ret_9aff = max_s16(local10, 0xC350);    // $9AFC
    }
L_9AFF:
    return phi_ret_9aff;    // $9AFF
}

// Decompiled from source/2-asm-vm\bank08.asm sub $9B00
// $9B00 sum_ship_stat
// (body @ $9B05)

word sum_ship_stat(word arg1) {
    *(word*)(fp - 13) = ((arg1 * 5) + 0xB50A);    // $9B0C
    *(word*)(fp - 11) = record_field_byte(*(word*)(fp - 13));    // $9B14
    if (((unsigned)arg1 < (unsigned)50)) {    // $9B1A
    *(word*)(fp - 7) = scan_records_6c90_flag(0, (fp - 5));    // $9B26
    while (((unsigned)*(word*)(fp - 9) < (unsigned)*(word*)(fp - 7))) {    // $9B81
        *(word*)(fp - 19) = ((*(byte*)((*(word*)(fp - 9) + (fp - 5))) * 24) + 0x6AA4);    // $9B3C
        *(word*)(fp - 17) = ((*(byte*)(*(word*)(fp - 19)) * 7) + 0x6542);    // $9B47
        *(word*)(fp - 15) = ((*(byte*)(*(word*)(fp - 19)) * 10) + 0x6BBE);    // $9B52
        if (((unsigned)*(byte*)((*(word*)(fp - 17) + 3)) < (unsigned)50)) {    // $9B5B
        *(word*)((*(word*)(fp - 15) + 8)) = max_s16(0xEA60, ((((*(word*)(fp - 11) + 1) * (*(word*)(fp - 11) + 1)) * 30) + *(word*)((*(word*)(fp - 15) + 8))));    // $9B7D
        }
L_9B7E:
        *(word*)(fp - 9) = (*(word*)(fp - 9) + 1);    // $9B81
    }
    }
L_9B8B:
    phi_ret_9bbf = ((unsigned)mem_6F72 < (unsigned)0xC350);    // $9B92
    if (phi_ret_9bbf) {    // $9B92
    if (((unsigned)arg1 < (unsigned)50)) {    // $9B99
    phi_push_9bb7 = (((((unsigned)*(word*)(fp - 11) >> 1) * 100) + mem_6F72) + 20);    // $9BAC
    } else {
    phi_push_9bb7 = (mem_6F72 + 100);    // $9BB5
    }
L_9BB7:
    mem_6F72 = max_s16(phi_push_9bb7, 0xC350);    // $9BBC
    phi_ret_9bbf = max_s16(phi_push_9bb7, 0xC350);    // $9BBC
L_9BBF:
    return phi_ret_9bbf;    // $9BBF
    }
    }
}

// Decompiled from source/2-asm-vm\bank08.asm sub $9BC0
// $9BC0 dispatch_sail_event
// (body @ $9BC5)

word dispatch_sail_event(void) {
    blit_screen_buffer();    // $9BC5
    show_prompt_bc2b(search_6a9a_ptr(), 0);    // $9BCD
    (*(*(word*)((((ship_sail_state - 1) << 1) + sail_event_handlers))))();    // $9BDB
    ship_sail_state = 0;    // $9BDD
    return redraw_dialog_region();    // $9BE3
}
