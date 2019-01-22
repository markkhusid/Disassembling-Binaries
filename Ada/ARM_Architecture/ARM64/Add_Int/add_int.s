	.arch armv8-a
	.file	"add_int.adb"
	.text
	.align	3
	.global	_ada_add_int
	.type	_ada_add_int, %function
_ada_add_int:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	mov	w0, 3
	str	w0, [sp, 12]
	mov	w0, 5
	str	w0, [sp, 8]
	mov	w0, 8
	str	w0, [sp, 4]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	_ada_add_int, .-_ada_add_int
	.ident	"GCC: (Ubuntu/Linaro 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
