// Decompiled from source/2-asm-vm\bank63_E000_os.asm sub $E003
// $E003 os_main
// (body @ $E008)

word os_main(void) {
    syscall_id03_syscall_set_prg_bank(0, 5);    // $E00B
    copy_from_bank_dc80(0x6000, 0x2000, 0);    // $E016
    syscall_id01_syscall_set_nt_exram_mode(0, 1, 1);    // $E01E
    syscall_id05_syscall_set_chr_banks(0xF35E);    // $E026
    syscall_id07_syscall_queue_vram_row(0, 0, 0);    // $E02E
    syscall_id06_syscall_set_sprite_block(0xF366, 0, 32);    // $E039
    syscall_id03_syscall_set_prg_bank(1, 192);    // $E042
    syscall_id03_syscall_set_prg_bank(2, 193);    // $E04B
    mem_7267 = 0;    // $E050
    syscall_id02_syscall_call_banked_routine(1, 194);    // $E058
    syscall_id02_syscall_call_banked_routine(1, 195);    // $E061
    return syscall_id02_syscall_call_banked_routine(1, 229);    // $E06E
}

// Decompiled from source/2-asm-vm\bank63_E000_os.asm sub $E06F
// $E06F idx_valid_lt21
// (body @ $E074)

word idx_valid_lt21(word arg1) {
    if (!(((unsigned)arg1 < (unsigned)21))) goto L_E07C;    // $E078
    return ((unsigned)arg1 < (unsigned)21);    // $E07B
}

// Decompiled from source/2-asm-vm\bank63_E000_os.asm sub $E08C
// $E08C idx_over_20
// (body @ $E091)

word idx_over_20(word arg1) {
    if (!(((unsigned)arg1 > (unsigned)20))) goto L_E099;    // $E095
    return ((unsigned)arg1 > (unsigned)20);    // $E098
}

// Decompiled from source/2-asm-vm\bank63_E000_os.asm sub $E0C1
// $E0C1 audio_param_gated
// (body @ $E0C6)

word audio_param_gated(word arg1) {
    phi_ret_e0d5 = (os_mode_flags & 4);    // $E0CB
    if (phi_ret_e0d5) {    // $E0CB
    phi_ret_e0d5 = syscall_id22_syscall_set_sound_param(arg1);    // $E0D1
    }
L_E0D5:
    return phi_ret_e0d5;    // $E0D5
}

// Decompiled from source/2-asm-vm\bank63_E000_os.asm sub $E0D6
// $E0D6 audio_reset_gated
// (body @ $E0DB)

word audio_reset_gated(void) {
    phi_ret_e0e9 = (os_mode_flags & 4);    // $E0E0
    if (phi_ret_e0e9) {    // $E0E0
    phi_ret_e0e9 = syscall_id23_syscall_audio_reset();    // $E0E5
    }
L_E0E9:
    return phi_ret_e0e9;    // $E0E9
}

// Decompiled from source/2-asm-vm\bank63_E000_os.asm sub $E0EA
// $E0EA audio_playing_gated
// (body @ $E0EF)

word audio_playing_gated(void) {
    if (!((os_mode_flags & 4))) goto L_E0FE;    // $E0F4
    return syscall_id24_syscall_audio_is_playing();    // $E0FD
}
