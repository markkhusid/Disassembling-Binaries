	.arch armv8-a
	.file	"div_int.f08"
	.text
	.align	2
	.type	MAIN__, %function
MAIN__:
	sub	sp, sp, #16
	mov	w0, 10
	str	w0, [sp, 12]
	mov	w0, 5
	str	w0, [sp, 8]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	sdiv	w0, w1, w0
	str	w0, [sp, 4]
	nop
	add	sp, sp, 16
	ret
	.size	MAIN__, .-MAIN__
	.align	2
	.global	main
	.type	main, %function
main:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	w0, [x29, 28]
	str	x1, [x29, 16]
	ldr	x1, [x29, 16]
	ldr	w0, [x29, 28]
	bl	_gfortran_set_args
	adrp	x0, options.0.2561
	add	x0, x0, :lo12:options.0.2561
	mov	x1, x0
	mov	w0, 7
	bl	_gfortran_set_options
	bl	MAIN__
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	options.0.2561, %object
	.size	options.0.2561, 28
options.0.2561:
	.word	68
	.word	1023
	.word	0
	.word	1
	.word	1
	.word	0
	.word	31
	.ident	"GCC: (Ubuntu/Linaro 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
