	.file	"add_int_w_io.adb"
	.text
	.section	.rodata
	.align 8
.LC3:
	.ascii	"Please enter first integer now followed by <CR> -> "
	.align 8
.LC4:
	.ascii	"Please enter second integer now followed by <CR> -> "
.LC5:
	.ascii	"add_int_w_io.adb"
	.zero	1
.LC6:
	.ascii	"The sum is : "
	.align 8
.LC0:
	.long	1
	.long	51
	.align 8
.LC1:
	.long	1
	.long	52
	.align 8
.LC2:
	.long	1
	.long	13
	.text
	.align 2
	.globl	_ada_add_int_w_io
	.type	_ada_add_int_w_io, @function
_ada_add_int_w_io:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	leaq	.LC3(%rip), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, %rdi
	movq	%rax, %rsi
	call	gnat__io__put__6@PLT
	call	gnat__io__get@PLT
	movl	%eax, -52(%rbp)
	leaq	.LC4(%rip), %r14
	leaq	.LC1(%rip), %r15
	movq	%r14, %rcx
	movq	%r15, %rbx
	movq	%r14, %rax
	movq	%r15, %rdx
	movq	%rdx, %rax
	movq	%rcx, %rdi
	movq	%rax, %rsi
	call	gnat__io__put__6@PLT
	call	gnat__io__get@PLT
	movl	%eax, -56(%rbp)
	movl	$0, %ecx
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %eax
	addl	%edx, %eax
	jno	.L2
	movl	$1, %ecx
.L2:
	movl	%eax, %edx
	movl	%ecx, %eax
	testl	%eax, %eax
	je	.L4
	movl	$16, %esi
	leaq	.LC5(%rip), %rdi
	call	__gnat_rcheck_CE_Overflow_Check@PLT
.L4:
	movl	%edx, %eax
	movl	%eax, -60(%rbp)
	leaq	.LC6(%rip), %r12
	leaq	.LC2(%rip), %r13
	movq	%r12, %rcx
	movq	%r13, %rbx
	movq	%r12, %rax
	movq	%r13, %rdx
	movq	%rdx, %rax
	movq	%rcx, %rdi
	movq	%rax, %rsi
	call	gnat__io__put__6@PLT
	movl	-60(%rbp), %eax
	movl	%eax, %edi
	call	gnat__io__put__2@PLT
	movl	$1, %edi
	call	gnat__io__new_line__2@PLT
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_ada_add_int_w_io, .-_ada_add_int_w_io
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
