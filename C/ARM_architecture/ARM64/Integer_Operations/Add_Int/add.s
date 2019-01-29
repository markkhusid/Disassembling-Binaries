	.arch armv8-a
	.file	"add.c"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	x1, [sp]
	mov	w0, 1
	str	w0, [sp, 28]
	mov	w0, 9
	str	w0, [sp, 24]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 20]
	mov	w0, 0
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 8.2.0-14) 8.2.0"
	.section	.note.GNU-stack,"",@progbits
