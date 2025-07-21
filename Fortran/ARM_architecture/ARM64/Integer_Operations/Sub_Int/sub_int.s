	.arch armv8-a
	.file	"sub_int.f08"
	.text
	.align	2
	.type	MAIN__, %function
MAIN__:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	mov	w0, 5
	str	w0, [sp, 12]
	mov	w0, 3
	str	w0, [sp, 8]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	sub	w0, w1, w0
	str	w0, [sp, 4]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	MAIN__, .-MAIN__
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	w0, [sp, 28]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	w0, [sp, 28]
	bl	_gfortran_set_args
	adrp	x0, options.0.0
	add	x1, x0, :lo12:options.0.0
	mov	w0, 7
	bl	_gfortran_set_options
	bl	MAIN__
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	options.0.0, %object
	.size	options.0.0, 28
options.0.0:
	.word	2116
	.word	4095
	.word	0
	.word	1
	.word	1
	.word	0
	.word	31
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
