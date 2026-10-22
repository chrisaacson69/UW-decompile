// Decompiled from source/2-asm-vm\bank09.asm sub $8003
// $8003 handle_active_entity
// (body @ $8008)

word handle_active_entity(void) {
    local11 = active_entity_idx;    // $800B
    return handle_entity_at_port(local11);    // $8011
}

// Decompiled from source/2-asm-vm\bank09.asm sub $8012
// $8012 handle_entity_at_port
// (body @ $8017)

word handle_entity_at_port(word arg1) {
    local10 = ((arg1 << 4) + 0x6662);    // $801E
    local9 = (((arg1 - 1) * 51) + 0x6004);    // $8028
    if (*(byte*)((local9 + 4))) {    // $802C
    local11 = find_port_by_key(*(byte*)(local10), *(byte*)((local10 + 1)), *(byte*)((local10 + 2)), *(byte*)((local10 + 3)));    // $8042
    if (!((*(byte*)((local9 + 5)) == local11))) goto L_805C;    // $8048
    phi_ret_8061 = (*(*(word*)((((*(byte*)((local9 + 4)) - 1) << 1) + entity_event_handlers))))(arg1, local11);    // $8059
    } else {
    phi_ret_8061 = nat_9_0062(arg1);    // $805D
    }
L_8061:
    return phi_ret_8061;    // $8061
    }
}
