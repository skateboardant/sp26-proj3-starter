addi x1, x0, 10
addi x2, x0, 10
addi x3, x0, 20
addi x4, x0, -5

beq x1, x2, pass_beq
addi x5, x0, 0x404
pass_beq:

beq x1, x3, fail_beq
addi x6, x0, 1
fail_beq:

bne x1, x3, pass_bne
addi x7, x0, 0x404
pass_bne:

bne x1, x2, fail_bne
addi x8, x0, 1
fail_bne:

blt x4, x1, pass_blt
addi x9, x0, 0x404
pass_blt:

blt x1, x4, fail_blt
addi x10, x0, 1
fail_blt:

bge x1, x4, pass_bge
addi x11, x0, 0x404
pass_bge:

bge x4, x1, fail_bge
addi x12, x0, 1
fail_bge:

bltu x1, x4, pass_bltu
addi x13, x0, 0x404
pass_bltu:

bltu x4, x1, fail_bltu
addi x14, x0, 1
fail_bltu:

bgeu x4, x1, pass_bgeu
addi x15, x0, 0x404
pass_bgeu:

bgeu x1, x4, fail_bgeu
addi x16, x0, 1
fail_bgeu:

addi x17, x0, 3
addi x18, x0, 0
loop:
    addi x18, x18, 5
    addi x17, x17, -1
    bne x17, x0, loop
