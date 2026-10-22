// Decompiled from source/2-asm-vm\bank35.asm sub $8003
// $8003 compute_sprite_tiles
// (body @ $8008)

word compute_sprite_tiles(word arg1, word arg2, word arg3, word arg4, word arg5) {
    local11 = ((((unsigned)arg1 >> 2) << 8) + ((arg1 & 3) << 6));    // $8015
    while (arg5) {    // $8043
        local10 = (*(byte*)((arg2 + 1)) + local11);    // $801E
        *(byte*)(arg3) = (local10 & 255);    // $8025
        *(byte*)(arg4) = ((*(byte*)((arg2 + 2)) << 6) | ((unsigned)local10 >> 8));    // $8032
        arg3 = (arg3 + 1);    // $8035
        arg4 = (arg4 + 1);    // $8038
        arg2 = (arg2 + 4);    // $803D
        arg5 = (arg5 - 1);    // $8041
    }
    return arg5;    // $8048
}

// Decompiled from source/2-asm-vm\bank35.asm sub $8049
// $8049 blit_sprite5x6
// (body @ $804E)

word blit_sprite5x6(void) {
    *(word*)(fp - 62) = *(byte*)(*(word*)(((blit_frame_state << 1) + 0x9994)));    // $8058
    compute_sprite_tiles(*(word*)(fp - 62), *(word*)(((blit_frame_state << 1) + 0x99F4)), (fp - 30), (fp - 60), 30);    // $8070
    return syscall_id09_syscall_banked_blit_m3(blit_pos_x, blit_pos_y, 5, 6, (fp - 30), (fp - 60), 193);    // $808E
}

// Decompiled from source/2-asm-vm\bank35.asm sub $808F
// $808F draw_sprite35_a
// (body @ $8094)

word draw_sprite35_a(void) {
    *(word*)(fp - 130) = blit_pos_x;    // $8097
    *(word*)(fp - 132) = blit_pos_y;    // $809D
    memcpy_ptr(0x7382, (fp - 128), 8);    // $80A8
    *(byte*)(fp - 128) = *(byte*)(*(word*)(((blit_frame_state << 1) + 0x9994)));    // $80B6
    *(byte*)(fp - 127) = *(byte*)((*(word*)(((blit_frame_state << 1) + 0x9994)) + 1));    // $80C4
    memcpy_ptr(*(word*)(((blit_frame_state << 1) + 0x99F4)), (fp - 120), 120);    // $80D7
    syscall_id08_syscall_queue_ppu_transfer(*(word*)(fp - 130), *(word*)(fp - 132), 5, 6, 0, 0);    // $80E6
    *(word*)(fp - 130) = (*(word*)(fp - 130) * 8);    // $80F0
    *(word*)(fp - 132) = (*(word*)(((ui_shared_var_737d << 1) + 0xDF14)) + (*(word*)(fp - 132) << 3));    // $8104
    *(word*)(fp - 134) = 0;    // $8108
    do {    // $810B
        *(byte*)((((*(word*)(fp - 134) << 1) << 1) + (fp - 120))) = (*(byte*)((((*(word*)(fp - 134) << 1) << 1) + (fp - 120))) + *(word*)(fp - 132));    // $811E
        *(byte*)((((*(word*)(fp - 134) << 1) << 1) + (fp - 117))) = (*(byte*)((((*(word*)(fp - 134) << 1) << 1) + (fp - 117))) + *(word*)(fp - 130));    // $8132
        *(word*)(fp - 134) = (*(word*)(fp - 134) + 1);    // $8137
    } while ((*(word*)(fp - 134) < 30));    // $8140
    syscall_id05_syscall_set_chr_banks((fp - 128));    // $8148
    syscall_id12_syscall_set_chr_banks(chr_alloc_count, 30);    // $8153
    return syscall_id13_syscall_set_chr_bank_alt((fp - 120), chr_alloc_count, 30);    // $8166
}

// Decompiled from source/2-asm-vm\bank35.asm sub $8167
// $8167 draw_sprite35_b
// (body @ $816C)

word draw_sprite35_b(void) {
    *(word*)(fp - 130) = blit_pos_x;    // $816F
    *(word*)(fp - 132) = blit_pos_y;    // $8175
    memcpy_ptr(0x7382, (fp - 128), 8);    // $8180
    *(word*)(fp - 138) = *(byte*)(mem_9994);    // $8188
    *(byte*)(fp - 128) = *(word*)(fp - 138);    // $818E
    *(byte*)(fp - 127) = (*(word*)(fp - 138) + 1);    // $8195
    *(byte*)(fp - 126) = (*(word*)(fp - 138) + 2);    // $819C
    memcpy_ptr(*(word*)(((blit_frame_state << 1) + 0x99F4)), (fp - 120), 120);    // $81AF
    syscall_id08_syscall_queue_ppu_transfer(*(word*)(fp - 130), *(word*)(fp - 132), 5, 6, 0, 0);    // $81BE
    *(word*)(fp - 130) = (*(word*)(fp - 130) * 8);    // $81C8
    *(word*)(fp - 132) = (*(word*)(((ui_shared_var_737d << 1) + 0xDF14)) + (*(word*)(fp - 132) << 3));    // $81DC
    *(word*)(fp - 140) = *(byte*)(*(word*)(((blit_frame_state << 1) + 0x9994)));    // $81E9
    *(word*)(fp - 142) = 0;    // $81ED
    if ((*(word*)(fp - 138) != *(word*)(fp - 140))) {    // $81F7
    *(word*)(fp - 142) = ((*(word*)(fp - 140) - *(word*)(fp - 138)) << 6);    // $8203
    }
L_8206:
    *(word*)(fp - 134) = 0;    // $8207
    do {    // $820A
        *(byte*)((((*(word*)(fp - 134) << 1) << 1) + (fp - 120))) = (*(byte*)((((*(word*)(fp - 134) << 1) << 1) + (fp - 120))) + *(word*)(fp - 132));    // $821D
        *(byte*)((((*(word*)(fp - 134) << 1) << 1) + (fp - 117))) = (*(byte*)((((*(word*)(fp - 134) << 1) << 1) + (fp - 117))) + *(word*)(fp - 130));    // $8231
        if (*(word*)(fp - 142)) {    // $8235
        *(byte*)((((*(word*)(fp - 134) << 1) << 1) + (fp - 119))) = (*(byte*)((((*(word*)(fp - 134) << 1) << 1) + (fp - 119))) + *(word*)(fp - 142));    // $824B
        }
L_824C:
        *(word*)(fp - 134) = (*(word*)(fp - 134) + 1);    // $8250
    } while ((*(word*)(fp - 134) < 30));    // $8259
    *(word*)(fp - 136) = (blit_frame_state ? 34 : 4);    // $8268
    syscall_id05_syscall_set_chr_banks((fp - 128));    // $8270
    syscall_id12_syscall_set_chr_banks(*(word*)(fp - 136), 30);    // $827A
    return syscall_id13_syscall_set_chr_bank_alt((fp - 120), *(word*)(fp - 136), 30);    // $828C
}

// Decompiled from source/2-asm-vm\bank35.asm sub $828D
// $828D draw_sprite35
// (body @ $8292)

word draw_sprite35(void) {
    if (((unsigned)chr_alloc_count < (unsigned)64)) {    // $8298
    phi_ret_82b3 = draw_sprite35_a();    // $829E
    } else {
    if ((chr_alloc_count != 64)) goto L_82B0;    // $82A7
    phi_ret_82b3 = draw_sprite35_b();    // $82AD
    goto L_82B3;    // $82AD
L_82B0:
    phi_ret_82b3 = blit_sprite5x6();    // $82B0
    }
L_82B3:
    return phi_ret_82b3;    // $82B3
    }
}
