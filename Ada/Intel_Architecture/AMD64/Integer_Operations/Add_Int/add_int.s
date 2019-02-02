	.file	"add_int.adb"
	.text
	.align 2
	.globl	_ada_add_int
	.type	_ada_add_int, @function
_ada_add_int:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$3, -4(%rbp)
	movl	$5, -8(%rbp)
	movl	$8, -12(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_ada_add_int, .-_ada_add_int
	.ident	"GCC: (Debian 8.2.0-14) 8.2.0"
	.section	.note.GNU-stack,"",@progbits
