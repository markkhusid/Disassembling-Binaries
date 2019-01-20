	.file	"print.f08"
	.text
	.section	.rodata
.LC0:
	.string	"print.f08"
.LC1:
	.ascii	"Hello World!"
	.text
	.type	MAIN__, @function
MAIN__:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$480, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, -472(%rbp)
	movl	$3, -464(%rbp)
	movl	$128, -480(%rbp)
	movl	$6, -476(%rbp)
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-480(%rbp), %rax
	movl	$12, %edx
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	MAIN__, .-MAIN__
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_gfortran_set_args@PLT
	leaq	options.1.3502(%rip), %rsi
	movl	$7, %edi
	call	_gfortran_set_options@PLT
	call	MAIN__
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align 16
	.type	options.1.3502, @object
	.size	options.1.3502, 28
options.1.3502:
	.long	68
	.long	1023
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
