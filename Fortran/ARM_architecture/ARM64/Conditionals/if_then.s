	.arch armv8-a
	.file	"if_then.f08"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"if_then.f08"
	.align	3
.LC1:
	.ascii	"Enter a number between 1 and 10 -> "
	.align	3
.LC2:
	.ascii	"Number entered greater than 5!"
	.text
	.align	2
	.type	MAIN__, %function
MAIN__:
	sub	sp, sp, #512
	stp	x29, x30, [sp]
	add	x29, sp, 0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	str	x0, [x29, 32]
	mov	w0, 8
	str	w0, [x29, 40]
	mov	w0, 128
	str	w0, [x29, 24]
	mov	w0, 6
	str	w0, [x29, 28]
	add	x0, x29, 24
	bl	_gfortran_st_write
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, x29, 24
	mov	w2, 35
	bl	_gfortran_transfer_character_write
	add	x0, x29, 24
	bl	_gfortran_st_write_done
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	str	x0, [x29, 32]
	mov	w0, 9
	str	w0, [x29, 40]
	mov	w0, 128
	str	w0, [x29, 24]
	mov	w0, 5
	str	w0, [x29, 28]
	add	x0, x29, 24
	bl	_gfortran_st_read
	add	x1, x29, 508
	add	x0, x29, 24
	mov	w2, 4
	bl	_gfortran_transfer_integer
	add	x0, x29, 24
	bl	_gfortran_st_read_done
	ldr	w0, [x29, 508]
	cmp	w0, 5
	ble	.L3
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	str	x0, [x29, 32]
	mov	w0, 12
	str	w0, [x29, 40]
	mov	w0, 128
	str	w0, [x29, 24]
	mov	w0, 6
	str	w0, [x29, 28]
	add	x0, x29, 24
	bl	_gfortran_st_write
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, x29, 24
	mov	w2, 30
	bl	_gfortran_transfer_character_write
	add	x0, x29, 24
	bl	_gfortran_st_write_done
.L3:
	nop
	ldp	x29, x30, [sp]
	add	sp, sp, 512
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
	adrp	x0, options.3.2564
	add	x0, x0, :lo12:options.3.2564
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
	.type	options.3.2564, %object
	.size	options.3.2564, 28
options.3.2564:
	.word	68
	.word	1023
	.word	0
	.word	1
	.word	1
	.word	0
	.word	31
	.ident	"GCC: (Ubuntu/Linaro 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
