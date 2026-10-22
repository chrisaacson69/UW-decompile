// Decompiled from source/2-asm-vm\bank36.asm sub $8003
// $8003 decode_sprite_state
// (body @ $8008)

word decode_sprite_state(word arg1, word arg2) {
    local11 = ((unsigned)(blit_frame_state & 0x0300) >> 8);    // $8011
    local10 = ((unsigned)(blit_frame_state & 192) >> 6);    // $801B
    local9 = ((unsigned)(blit_frame_state & 48) >> 4);    // $8024
    local8 = ((unsigned)(blit_frame_state & 12) >> 2);    // $802C
    local7 = (blit_frame_state & 3);    // $8032
    local4 = ((arg2 * 40) + 0x8C5A);    // $803B
    local6 = ((arg2 * 20) + 0x8CFA);    // $8044
    local5 = (local6 + 16);    // $8048
    memcpy_ptr(*(word*)((((local7 << 1) + local4) + 32)), (((*(word*)(local5) << 1) << 1) + arg1), *(word*)((local5 + 2)));    // $805C
    local5 = local6;    // $8061
    memcpy_ptr(*(word*)(((local11 << 1) + local4)), (((*(word*)(local5) << 1) << 1) + arg1), *(word*)((local5 + 2)));    // $8073
    if (arg2) goto L_808C;    // $8078
L_808C:
    memcpy_ptr((*(word*)(((local11 << 1) + local4)) + 76), (arg1 + 76), 4);    // $8088
    local5 = (local6 + 4);    // $808E
    memcpy_ptr(*(word*)((((local10 << 1) + local4) + 8)), (((*(word*)(local5) << 1) << 1) + arg1), *(word*)((local5 + 2)));    // $80A1
    local5 = (local6 + 8);    // $80A7
    memcpy_ptr(*(word*)((((local9 << 1) + local4) + 16)), (((*(word*)(local5) << 1) << 1) + arg1), *(word*)((local5 + 2)));    // $80BB
    local5 = (local6 + 12);    // $80C1
    return memcpy_ptr(*(word*)((((local8 << 1) + local4) + 24)), (((*(word*)(local5) << 1) << 1) + arg1), *(word*)((local5 + 2)));    // $80D9
}

// Decompiled from source/2-asm-vm\bank36.asm sub $80DA
// $80DA compute_sprite_tiles_36
// (body @ $80DF)

word compute_sprite_tiles_36(word arg1, word arg2, word arg3, word arg4, word arg5) {
    local11 = ((((unsigned)arg1 >> 2) << 8) + ((arg1 & 3) << 6));    // $80EC
    while (arg5) {    // $811A
        local10 = (*(byte*)((arg2 + 1)) + local11);    // $80F5
        *(byte*)(arg3) = (local10 & 255);    // $80FC
        *(byte*)(arg4) = ((*(byte*)((arg2 + 2)) << 6) | ((unsigned)local10 >> 8));    // $8109
        arg3 = (arg3 + 1);    // $810C
        arg4 = (arg4 + 1);    // $810F
        arg2 = (arg2 + 4);    // $8114
        arg5 = (arg5 - 1);    // $8118
    }
    return arg5;    // $811F
}

// Decompiled from source/2-asm-vm\bank36.asm sub $8120
// $8120 blit_sprite5x6_36
// (body @ $8125)

word blit_sprite5x6_36(word arg1, word arg2) {
    *(word*)(fp - 62) = *(byte*)((arg2 + 0x8C56));    // $812B
    compute_sprite_tiles_36(*(word*)(fp - 62), arg1, (fp - 30), (fp - 60), 30);    // $813A
    return syscall_id09_syscall_banked_blit_m3(blit_pos_x, blit_pos_y, 5, 6, (fp - 30), (fp - 60), 193);    // $8158
}

// Decompiled from source/2-asm-vm\bank36.asm sub $8159
// $8159 draw_sprite36_a
// (body @ $815E)

word draw_sprite36_a(word arg1, word arg2) {
    memcpy_ptr(0x7382, &local8, 8);    // $8166
    *(byte*)&local8 = *(byte*)((arg2 + 0x8C56));    // $8170
    *(byte*)(fp - 7) = (*(byte*)((arg2 + 0x8C56)) + 1);    // $817A
    local7 = blit_pos_x;    // $8180
    local6 = blit_pos_y;    // $8184
    syscall_id08_syscall_queue_ppu_transfer(local7, local6, 5, 6, 0, 0);    // $818C
    local7 = (local7 * 8);    // $8194
    local6 = (*(word*)(((ui_shared_var_737d << 1) + 0xDF14)) + (local6 << 3));    // $81A4
    local5 = 0;    // $81A6
    do {    // $81A7
        *(byte*)((((local5 << 1) << 1) + arg1)) = (*(byte*)((((local5 << 1) << 1) + arg1)) + local6);    // $81B2
        *(byte*)(((((local5 << 1) << 1) + arg1) + 3)) = (*(byte*)(((((local5 << 1) << 1) + arg1) + 3)) + local7);    // $81BF
        local5 = (local5 + 1);    // $81C2
    } while ((local5 < 30));    // $81C7
    syscall_id05_syscall_set_chr_banks(&local8);    // $81CF
    syscall_id12_syscall_set_chr_banks(chr_alloc_count, 30);    // $81DA
    return syscall_id13_syscall_set_chr_bank_alt(arg1, chr_alloc_count, 30);    // $81EA
}

// Decompiled from source/2-asm-vm\bank36.asm sub $81EB
// $81EB draw_sprite36
// (body @ $81F0)

word draw_sprite36(void) {
    *(word*)(fp - 122) = ((unsigned)(blit_frame_state & 0x0C00) >> 10);    // $81F9
    decode_sprite_state((fp - 120), *(word*)(fp - 122));    // $8201
    if (((unsigned)chr_alloc_count < (unsigned)64)) {    // $820B
    phi_ret_8225 = draw_sprite36_a((fp - 120), *(word*)(fp - 122));    // $8218
    } else {
    phi_ret_8225 = blit_sprite5x6_36((fp - 120), *(word*)(fp - 122));    // $8221
    }
L_8225:
    return phi_ret_8225;    // $8225
    }
}
