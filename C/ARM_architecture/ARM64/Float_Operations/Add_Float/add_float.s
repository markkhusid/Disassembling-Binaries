	.arch armv8-a
	.file	"add_float.c"
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
	mov	w0, 52429
	movk	w0, 0x404c, lsl 16
	str	w0, [sp, 28]
	mov	w0, 52429
	movk	w0, 0x40cc, lsl 16
	str	w0, [sp, 24]
	ldr	s1, [sp, 28]
	ldr	s0, [sp, 24]
	fadd	s0, s1, s0
	str	s0, [sp, 20]
	mov	w0, 0
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 8.2.0-14) 8.2.0"
	.section	.note.GNU-stack,"",@progbits
