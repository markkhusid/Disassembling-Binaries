	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.file	"add_int_w_io.adb"
	.section	.rodata
	.align	2
.LC3:
	.ascii	"Please enter first integer now followed by <CR> -> "
	.align	2
.LC4:
	.ascii	"Please enter second integer now followed by <CR> ->"
	.ascii	" "
	.align	2
.LC5:
	.ascii	"add_int_w_io.adb"
	.space	1
	.align	2
.LC6:
	.ascii	"The sum is : "
	.align	2
.LC0:
	.word	1
	.word	51
	.align	2
.LC1:
	.word	1
	.word	52
	.align	2
.LC2:
	.word	1
	.word	13
	.text
	.align	2
	.global	_ada_add_int_w_io
	.syntax unified
	.arm
	.fpu vfp
	.type	_ada_add_int_w_io, %function
_ada_add_int_w_io:
	.fnstart
.LFB1:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, fp, lr}
	.save {r4, r5, r6, r7, fp, lr}
	.setfp fp, sp, #20
	add	fp, sp, #20
	.pad #16
	sub	sp, sp, #16
	ldr	r2, .L4
	ldr	r3, .L4+4
	mov	r0, r2
	mov	r1, r3
	bl	gnat__io__put__6
	bl	gnat__io__get
	mov	r3, r0
	str	r3, [fp, #-24]
	ldr	r6, .L4+8
	ldr	r7, .L4+12
	mov	r0, r6
	mov	r1, r7
	bl	gnat__io__put__6
	bl	gnat__io__get
	mov	r3, r0
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	lsr	r3, r3, #31
	uxtb	r2, r3
	ldr	r1, [fp, #-24]
	ldr	r3, [fp, #-28]
	add	r3, r1, r3
	mov	r1, r3
	ldr	r3, [fp, #-24]
	cmp	r1, r3
	movlt	r3, #1
	movge	r3, #0
	uxtb	r3, r3
	eor	r3, r3, r2
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L2
	mov	r1, #16
	ldr	r0, .L4+16
	bl	__gnat_rcheck_CE_Overflow_Check
.L2:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	str	r3, [fp, #-32]
	ldr	r4, .L4+20
	ldr	r5, .L4+24
	mov	r0, r4
	mov	r1, r5
	bl	gnat__io__put__6
	ldr	r0, [fp, #-32]
	bl	gnat__io__put__2
	mov	r0, #1
	bl	gnat__io__new_line__2
	nop
	sub	sp, fp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, fp, pc}
.L5:
	.align	2
.L4:
	.word	.LC3
	.word	.LC0
	.word	.LC4
	.word	.LC1
	.word	.LC5
	.word	.LC6
	.word	.LC2
	.fnend
	.size	_ada_add_int_w_io, .-_ada_add_int_w_io
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
