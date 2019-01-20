	.arch armv8-a
	.file	"print.f08"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"print.f08"
	.align	3
.LC1:
	.ascii	"Hello World!"
	.text
	.align	2
	.type	MAIN__, %function
MAIN__:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #544
	.cfi_def_cfa_offset 544
	stp	x29, x30, [sp]
	.cfi_offset 29, -544
	.cfi_offset 30, -536
	mov	x29, sp
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	str	x0, [sp, 24]
	mov	w0, 3
	str	w0, [sp, 32]
	mov	w0, 128
	str	w0, [sp, 16]
	mov	w0, 6
	str	w0, [sp, 20]
	add	x0, sp, 16
	bl	_gfortran_st_write
	add	x3, sp, 16
	mov	x2, 12
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x3
	bl	_gfortran_transfer_character_write
	add	x0, sp, 16
	bl	_gfortran_st_write_done
	nop
	ldp	x29, x30, [sp]
	add	sp, sp, 544
	.cfi_restore 29
	.cfi_restore 30
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
	adrp	x0, options.1.2623
	add	x1, x0, :lo12:options.1.2623
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
	.type	options.1.2623, %object
	.size	options.1.2623, 28
options.1.2623:
	.word	68
	.word	8191
	.word	0
	.word	1
	.word	1
	.word	0
	.word	31
	.ident	"GCC: (Debian 8.2.0-14) 8.2.0"
	.section	.note.GNU-stack,"",@progbits
