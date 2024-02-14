loop:
lw $t0, 0($t1)
addi $t1, $t0, 5
addi $t2, $zero, 2
addi $t3, $zero, 3

beq $t1, $t2, loop

addi $t3, $zero, 5
addi $t2, $zero, 5

beq $t1, $t2, loop

addi $t3, $zero, 1
addi $t2, $zero, 1
addi $t1, $zero, 1