	.text	
	.globl		main
main:
	j		L4
_memcpy:
	addi		$sp, $sp, -4
	move		$t0, $ra
	addi		$t1, $sp, 0
	sw		$t0, 0($t1)
	addi		$sp, $sp, -4
	li		$t0, 0
	addi		$t1, $sp, 0
	sw		$t0, 0($t1)
L2:
	addi		$t0, $sp, 0
	lw		$t0, 0($t0)
	la		$t1, _length
	lw		$t1, 0($t1)
	slt		$t0, $t0, $t1
	beq		$t0, $zero, L3
	addi		$t1, $sp, 0
	lw		$t1, 0($t1)
	addi		$t2, $sp, 0
	lw		$t2, 0($t2)
	la		$t3, _source
	lw		$t3, 0($t3)
	li		$t4, 1
	mul		$t4, $t4, $t2
	sll		$t4, $t4, 2
	add		$t3, $t3, $t4
	lw		$t3, 0($t3)
	la		$t2, _dest
	lw		$t2, 0($t2)
	li		$t4, 1
	mul		$t4, $t4, $t1
	sll		$t4, $t4, 2
	add		$t2, $t2, $t4
	sw		$t3, 0($t2)
	addi		$sp, $sp, 0
	addi		$t1, $sp, 0
	lw		$t1, 0($t1)
	li		$t2, 1
	add		$t1, $t1, $t2
	addi		$t2, $sp, 0
	sw		$t1, 0($t2)
	j		L2
L3:
	addi		$sp, $sp, 4
	addi		$sp, $sp, 0
L1:
	addi		$t0, $sp, 0
	lw		$t0, 0($t0)
	addi		$sp, $sp, 4
	jr		$t0
L4:
	j		L10
readArray:
	addi		$sp, $sp, -4
	move		$t0, $ra
	addi		$t1, $sp, 0
	sw		$t0, 0($t1)
	li		$v0, 4
	la		$a0, _str_0
	syscall	
	addi		$sp, $sp, -4
	li		$t0, 0
	addi		$t1, $sp, 0
	sw		$t0, 0($t1)
L8:
	addi		$t0, $sp, 0
	lw		$t0, 0($t0)
	li		$t1, 5
	slt		$t0, $t0, $t1
	beq		$t0, $zero, L9
	addi		$sp, $sp, -4
	li		$t1, 0
	addi		$t2, $sp, 0
	sw		$t1, 0($t2)
L6:
	addi		$t1, $sp, 0
	lw		$t1, 0($t1)
	li		$t2, 4
	slt		$t1, $t1, $t2
	beq		$t1, $zero, L7
	addi		$sp, $sp, -4
	addi		$t2, $sp, 0
	li		$v0, 5
	syscall	
	sw		$v0, 0($t2)
	addi		$t2, $sp, 8
	lw		$t2, 0($t2)
	addi		$t3, $sp, 4
	lw		$t3, 0($t3)
	addi		$t4, $sp, 0
	lw		$t4, 0($t4)
	addi		$t5, $sp, 16
	lw		$t5, 0($t5)
	li		$t6, 1
	mul		$t6, $t6, $t2
	sll		$t6, $t6, 2
	add		$t5, $t5, $t6
	li		$t6, 5
	mul		$t6, $t6, $t3
	sll		$t6, $t6, 2
	add		$t5, $t5, $t6
	sw		$t4, 0($t5)
	addi		$sp, $sp, 4
	addi		$t2, $sp, 0
	lw		$t2, 0($t2)
	li		$t3, 1
	add		$t2, $t2, $t3
	addi		$t3, $sp, 0
	sw		$t2, 0($t3)
	j		L6
L7:
	addi		$sp, $sp, 4
	addi		$sp, $sp, 0
	addi		$t1, $sp, 0
	lw		$t1, 0($t1)
	li		$t2, 1
	add		$t1, $t1, $t2
	addi		$t2, $sp, 0
	sw		$t1, 0($t2)
	j		L8
L9:
	addi		$sp, $sp, 4
	addi		$sp, $sp, 0
L5:
	addi		$t0, $sp, 0
	lw		$t0, 0($t0)
	addi		$sp, $sp, 8
	jr		$t0
L10:
	j		L16
calcRowSums:
	addi		$sp, $sp, -4
	move		$t0, $ra
	addi		$t1, $sp, 0
	sw		$t0, 0($t1)
	addi		$sp, $sp, -4
	li		$t0, 0
	addi		$t1, $sp, 0
	sw		$t0, 0($t1)
L14:
	addi		$t0, $sp, 0
	lw		$t0, 0($t0)
	li		$t1, 5
	slt		$t0, $t0, $t1
	beq		$t0, $zero, L15
	addi		$t1, $sp, 0
	lw		$t1, 0($t1)
	li		$t2, 0
	addi		$t3, $sp, 12
	lw		$t3, 0($t3)
	li		$t4, 1
	mul		$t4, $t4, $t1
	sll		$t4, $t4, 2
	add		$t3, $t3, $t4
	sw		$t2, 0($t3)
	addi		$sp, $sp, -4
	li		$t1, 0
	addi		$t2, $sp, 0
	sw		$t1, 0($t2)
L12:
	addi		$t1, $sp, 0
	lw		$t1, 0($t1)
	li		$t2, 4
	slt		$t1, $t1, $t2
	beq		$t1, $zero, L13
	addi		$t2, $sp, 4
	lw		$t2, 0($t2)
	addi		$t3, $sp, 4
	lw		$t3, 0($t3)
	addi		$t4, $sp, 16
	lw		$t4, 0($t4)
	li		$t5, 1
	mul		$t5, $t5, $t3
	sll		$t5, $t5, 2
	add		$t4, $t4, $t5
	lw		$t4, 0($t4)
	addi		$t3, $sp, 4
	lw		$t3, 0($t3)
	addi		$t5, $sp, 0
	lw		$t5, 0($t5)
	addi		$t6, $sp, 12
	lw		$t6, 0($t6)
	li		$t7, 1
	mul		$t7, $t7, $t3
	sll		$t7, $t7, 2
	add		$t6, $t6, $t7
	li		$t7, 5
	mul		$t7, $t7, $t5
	sll		$t7, $t7, 2
	add		$t6, $t6, $t7
	lw		$t6, 0($t6)
	add		$t4, $t4, $t6
	addi		$t3, $sp, 16
	lw		$t3, 0($t3)
	li		$t5, 1
	mul		$t5, $t5, $t2
	sll		$t5, $t5, 2
	add		$t3, $t3, $t5
	sw		$t4, 0($t3)
	addi		$sp, $sp, 0
	addi		$t2, $sp, 0
	lw		$t2, 0($t2)
	li		$t3, 1
	add		$t2, $t2, $t3
	addi		$t3, $sp, 0
	sw		$t2, 0($t3)
	j		L12
L13:
	addi		$sp, $sp, 4
	addi		$sp, $sp, 0
	addi		$t1, $sp, 0
	lw		$t1, 0($t1)
	li		$t2, 1
	add		$t1, $t1, $t2
	addi		$t2, $sp, 0
	sw		$t1, 0($t2)
	j		L14
L15:
	addi		$sp, $sp, 4
	addi		$sp, $sp, 0
L11:
	addi		$t0, $sp, 0
	lw		$t0, 0($t0)
	addi		$sp, $sp, 12
	jr		$t0
L16:
	j		L22
calcColSums:
	addi		$sp, $sp, -4
	move		$t0, $ra
	addi		$t1, $sp, 0
	sw		$t0, 0($t1)
	addi		$sp, $sp, -4
	li		$t0, 0
	addi		$t1, $sp, 0
	sw		$t0, 0($t1)
L20:
	addi		$t0, $sp, 0
	lw		$t0, 0($t0)
	li		$t1, 4
	slt		$t0, $t0, $t1
	beq		$t0, $zero, L21
	addi		$sp, $sp, -4
	li		$t1, 0
	addi		$t2, $sp, 0
	sw		$t1, 0($t2)
L18:
	addi		$t1, $sp, 0
	lw		$t1, 0($t1)
	li		$t2, 5
	slt		$t1, $t1, $t2
	beq		$t1, $zero, L19
	addi		$t2, $sp, 4
	lw		$t2, 0($t2)
	addi		$t3, $sp, 4
	lw		$t3, 0($t3)
	addi		$t4, $sp, 16
	lw		$t4, 0($t4)
	li		$t5, 1
	mul		$t5, $t5, $t3
	sll		$t5, $t5, 2
	add		$t4, $t4, $t5
	lw		$t4, 0($t4)
	addi		$t3, $sp, 0
	lw		$t3, 0($t3)
	addi		$t5, $sp, 4
	lw		$t5, 0($t5)
	addi		$t6, $sp, 12
	lw		$t6, 0($t6)
	li		$t7, 1
	mul		$t7, $t7, $t3
	sll		$t7, $t7, 2
	add		$t6, $t6, $t7
	li		$t7, 5
	mul		$t7, $t7, $t5
	sll		$t7, $t7, 2
	add		$t6, $t6, $t7
	lw		$t6, 0($t6)
	add		$t4, $t4, $t6
	addi		$t3, $sp, 16
	lw		$t3, 0($t3)
	li		$t5, 1
	mul		$t5, $t5, $t2
	sll		$t5, $t5, 2
	add		$t3, $t3, $t5
	sw		$t4, 0($t3)
	addi		$sp, $sp, 0
	addi		$t2, $sp, 0
	lw		$t2, 0($t2)
	li		$t3, 1
	add		$t2, $t2, $t3
	addi		$t3, $sp, 0
	sw		$t2, 0($t3)
	j		L18
L19:
	addi		$sp, $sp, 4
	addi		$sp, $sp, 0
	addi		$t1, $sp, 0
	lw		$t1, 0($t1)
	li		$t2, 1
	add		$t1, $t1, $t2
	addi		$t2, $sp, 0
	sw		$t1, 0($t2)
	j		L20
L21:
	addi		$sp, $sp, 4
	addi		$sp, $sp, 0
L17:
	addi		$t0, $sp, 0
	lw		$t0, 0($t0)
	addi		$sp, $sp, 12
	jr		$t0
L22:
	j		L30
printSums:
	addi		$sp, $sp, -4
	move		$t0, $ra
	addi		$t1, $sp, 0
	sw		$t0, 0($t1)
	addi		$sp, $sp, -4
	li		$t0, 0
	addi		$t1, $sp, 0
	sw		$t0, 0($t1)
L26:
	addi		$t0, $sp, 0
	lw		$t0, 0($t0)
	li		$t1, 5
	slt		$t0, $t0, $t1
	beq		$t0, $zero, L27
	addi		$t1, $sp, 0
	lw		$t1, 0($t1)
	addi		$t2, $sp, 16
	lw		$t2, 0($t2)
	li		$t3, 1
	mul		$t3, $t3, $t1
	sll		$t3, $t3, 2
	add		$t2, $t2, $t3
	lw		$t2, 0($t2)
	li		$v0, 1
	move		$a0, $t2
	syscall	
	li		$v0, 4
	la		$a0, _str_1
	syscall	
	addi		$sp, $sp, -4
	li		$t1, 0
	addi		$t2, $sp, 0
	sw		$t1, 0($t2)
L24:
	addi		$t1, $sp, 0
	lw		$t1, 0($t1)
	li		$t2, 4
	slt		$t1, $t1, $t2
	beq		$t1, $zero, L25
	addi		$t2, $sp, 4
	lw		$t2, 0($t2)
	addi		$t3, $sp, 0
	lw		$t3, 0($t3)
	addi		$t4, $sp, 12
	lw		$t4, 0($t4)
	li		$t5, 1
	mul		$t5, $t5, $t2
	sll		$t5, $t5, 2
	add		$t4, $t4, $t5
	li		$t5, 5
	mul		$t5, $t5, $t3
	sll		$t5, $t5, 2
	add		$t4, $t4, $t5
	lw		$t4, 0($t4)
	li		$v0, 1
	move		$a0, $t4
	syscall	
	li		$v0, 4
	la		$a0, _str_2
	syscall	
	addi		$sp, $sp, 0
	addi		$t2, $sp, 0
	lw		$t2, 0($t2)
	li		$t3, 1
	add		$t2, $t2, $t3
	addi		$t3, $sp, 0
	sw		$t2, 0($t3)
	j		L24
L25:
	addi		$sp, $sp, 4
	li		$v0, 4
	la		$a0, _str_3
	syscall	
	addi		$sp, $sp, 0
	addi		$t1, $sp, 0
	lw		$t1, 0($t1)
	li		$t2, 1
	add		$t1, $t1, $t2
	addi		$t2, $sp, 0
	sw		$t1, 0($t2)
	j		L26
L27:
	addi		$sp, $sp, 4
	li		$v0, 4
	la		$a0, _str_4
	syscall	
	addi		$sp, $sp, -4
	li		$t0, 0
	addi		$t1, $sp, 0
	sw		$t0, 0($t1)
L28:
	addi		$t0, $sp, 0
	lw		$t0, 0($t0)
	li		$t1, 4
	slt		$t0, $t0, $t1
	beq		$t0, $zero, L29
	addi		$t1, $sp, 0
	lw		$t1, 0($t1)
	addi		$t2, $sp, 12
	lw		$t2, 0($t2)
	li		$t3, 1
	mul		$t3, $t3, $t1
	sll		$t3, $t3, 2
	add		$t2, $t2, $t3
	lw		$t2, 0($t2)
	li		$v0, 1
	move		$a0, $t2
	syscall	
	li		$v0, 4
	la		$a0, _str_5
	syscall	
	addi		$sp, $sp, 0
	addi		$t1, $sp, 0
	lw		$t1, 0($t1)
	li		$t2, 1
	add		$t1, $t1, $t2
	addi		$t2, $sp, 0
	sw		$t1, 0($t2)
	j		L28
L29:
	addi		$sp, $sp, 4
	li		$v0, 4
	la		$a0, _str_6
	syscall	
	addi		$sp, $sp, 0
L23:
	addi		$t0, $sp, 0
	lw		$t0, 0($t0)
	addi		$sp, $sp, 16
	jr		$t0
L30:
	la		$t0, twoD
	addi		$sp, $sp, -4
	sw		$t0, 0($sp)
	jal		readArray
	move		$t0, $v0
	la		$t0, rowSums
	addi		$sp, $sp, -4
	sw		$t0, 0($sp)
	la		$t0, twoD
	addi		$sp, $sp, -4
	sw		$t0, 0($sp)
	jal		calcRowSums
	move		$t0, $v0
	la		$t0, colSums
	addi		$sp, $sp, -4
	sw		$t0, 0($sp)
	la		$t0, twoD
	addi		$sp, $sp, -4
	sw		$t0, 0($sp)
	jal		calcColSums
	move		$t0, $v0
	la		$t0, rowSums
	addi		$sp, $sp, -4
	sw		$t0, 0($sp)
	la		$t0, colSums
	addi		$sp, $sp, -4
	sw		$t0, 0($sp)
	la		$t0, twoD
	addi		$sp, $sp, -4
	sw		$t0, 0($sp)
	jal		printSums
	move		$t0, $v0
	li		$v0, 10
	syscall	
	.data	
	.align		4
_nl:	.asciiz		"\n"
_sp:	.asciiz		" "
_str_0:	.asciiz		"Enter 20 ints: "
	.align		4
_str_1:	.asciiz		":\t"
	.align		4
_str_2:	.asciiz		"\t"
	.align		4
_str_3:	.asciiz		"\n"
	.align		4
_str_4:	.asciiz		"\t"
	.align		4
_str_5:	.asciiz		"\t"
	.align		4
_str_6:	.asciiz		"\n"
	.align		4
colSums:	.space		16
_length:	.space		4
i:	.space		4
j:	.space		4
k:	.space		4
_source:	.space		4
rowSums:	.space		20
twoD:	.space		80
_dest:	.space		4
