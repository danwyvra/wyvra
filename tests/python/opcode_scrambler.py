mystery_bytes = [0x42, 0x23] # x86-64 supports 2 byte instructions officially

opcodes = {
    "MOV_AX_DISP32":    0xa0,
    "POP_SEG_SHORT":    0x07,
    "JUMP_PC_RELATIVE": 0xeb,
    "INT_OPCODE":       0xcd,
    "NOP_OPCODE":       0x90,
    "REX_OPCODE":       0x40
}

scrambled_opcodes = {}

for op in opcodes:
    opcodes[op] = opcodes[op] ^ mystery_bytes[0] # xor

