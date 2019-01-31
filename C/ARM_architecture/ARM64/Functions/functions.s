	.arch armv8-a
	.file	"functions.c"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	w0, [x29, 28]
	str	x1, [x29, 16]
	mov	w0, 3
	str	w0, [x29, 36]
	mov	w0, 4
	str	w0, [x29, 40]
	ldr	w1, [x29, 40]
	ldr	w0, [x29, 36]
	bl	sum
	str	w0, [x29, 44]
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret
	.size	main, .-main
	.align	2
	.global	sum
	.type	sum, %function
sum:
	sub	sp, sp, #16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	add	w0, w1, w0
	add	sp, sp, 16
	ret
	.size	sum, .-sum
	.ident	"GCC: (Ubuntu/Linaro 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
