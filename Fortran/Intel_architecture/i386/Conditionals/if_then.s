	.file	"if_then.f08"
	.text
	.section	.rodata
.LC0:
	.string	"if_then.f08"
	.align 4
.LC1:
	.ascii	"Enter a number between 1 and 10 -> "
.LC2:
	.ascii	"Number entered greater than 5!"
	.text
	.type	MAIN__, @function
MAIN__:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$356, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, -344(%ebp)
	movl	$8, -340(%ebp)
	movl	$128, -352(%ebp)
	movl	$6, -348(%ebp)
	subl	$12, %esp
	leal	-352(%ebp), %eax
	pushl	%eax
	call	_gfortran_st_write@PLT
	addl	$16, %esp
	subl	$4, %esp
	pushl	$35
	leal	.LC1@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	-352(%ebp), %eax
	pushl	%eax
	call	_gfortran_transfer_character_write@PLT
	addl	$16, %esp
	subl	$12, %esp
	leal	-352(%ebp), %eax
	pushl	%eax
	call	_gfortran_st_write_done@PLT
	addl	$16, %esp
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, -344(%ebp)
	movl	$9, -340(%ebp)
	movl	$128, -352(%ebp)
	movl	$5, -348(%ebp)
	subl	$12, %esp
	leal	-352(%ebp), %eax
	pushl	%eax
	call	_gfortran_st_read@PLT
	addl	$16, %esp
	subl	$4, %esp
	pushl	$4
	leal	-12(%ebp), %eax
	pushl	%eax
	leal	-352(%ebp), %eax
	pushl	%eax
	call	_gfortran_transfer_integer@PLT
	addl	$16, %esp
	subl	$12, %esp
	leal	-352(%ebp), %eax
	pushl	%eax
	call	_gfortran_st_read_done@PLT
	addl	$16, %esp
	movl	-12(%ebp), %eax
	cmpl	$5, %eax
	jle	.L3
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, -344(%ebp)
	movl	$12, -340(%ebp)
	movl	$128, -352(%ebp)
	movl	$6, -348(%ebp)
	subl	$12, %esp
	leal	-352(%ebp), %eax
	pushl	%eax
	call	_gfortran_st_write@PLT
	addl	$16, %esp
	subl	$4, %esp
	pushl	$30
	leal	.LC2@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	-352(%ebp), %eax
	pushl	%eax
	call	_gfortran_transfer_character_write@PLT
	addl	$16, %esp
	subl	$12, %esp
	leal	-352(%ebp), %eax
	pushl	%eax
	call	_gfortran_st_write_done@PLT
	addl	$16, %esp
.L3:
	nop
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	MAIN__, .-MAIN__
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x78,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x7c
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	%ecx, %eax
	subl	$8, %esp
	pushl	4(%eax)
	pushl	(%eax)
	call	_gfortran_set_args@PLT
	addl	$16, %esp
	subl	$8, %esp
	leal	options.3.3426@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$7
	call	_gfortran_set_options@PLT
	addl	$16, %esp
	call	MAIN__
	movl	$0, %eax
	leal	-8(%ebp), %esp
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align 4
	.type	options.3.3426, @object
	.size	options.3.3426, 28
options.3.3426:
	.long	68
	.long	1023
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB2:
	.cfi_startproc
	movl	(%esp), %ebx
	ret
	.cfi_endproc
.LFE2:
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
