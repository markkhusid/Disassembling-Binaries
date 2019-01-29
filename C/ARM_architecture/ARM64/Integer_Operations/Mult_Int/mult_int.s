	.arch armv8-a
	.file	"mult_int.c"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	str	x1, [sp]
	mov	w0, 2
	str	w0, [sp, 20]
	mov	w0, 3
	str	w0, [sp, 24]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	mul	w0, w1, w0
	str	w0, [sp, 28]
	mov	w0, 0
	add	sp, sp, 32
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
