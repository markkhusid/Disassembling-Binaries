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
	.text
.Ltext0:
	.cfi_sections	.debug_frame
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
	.file 1 "add_int_w_io.adb"
	.loc 1 5 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, fp, lr}
	.save {r4, r5, r6, r7, fp, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.setfp fp, sp, #20
	add	fp, sp, #20
	.cfi_def_cfa 11, 4
	.pad #16
	sub	sp, sp, #16
.LBB2:
	.loc 1 10 0
	ldr	r2, .L4
	ldr	r3, .L4+4
	mov	r0, r2
	mov	r1, r3
	bl	gnat__io__put__6
.LBE2:
	.loc 1 11 0
	bl	gnat__io__get
	mov	r3, r0
	str	r3, [fp, #-24]
.LBB3:
	.loc 1 13 0
	ldr	r6, .L4+8
	ldr	r7, .L4+12
	mov	r0, r6
	mov	r1, r7
	bl	gnat__io__put__6
.LBE3:
	.loc 1 14 0
	bl	gnat__io__get
	mov	r3, r0
	str	r3, [fp, #-28]
	.loc 1 16 0
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
	.loc 1 16 0 is_stmt 0 discriminator 1
	mov	r1, #16
	ldr	r0, .L4+16
	bl	__gnat_rcheck_CE_Overflow_Check
.L2:
	.loc 1 16 0 discriminator 2
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	str	r3, [fp, #-32]
.LBB4:
	.loc 1 18 0 is_stmt 1 discriminator 2
	ldr	r4, .L4+20
	ldr	r5, .L4+24
	mov	r0, r4
	mov	r1, r5
	bl	gnat__io__put__6
.LBE4:
	.loc 1 19 0 discriminator 2
	ldr	r0, [fp, #-32]
	bl	gnat__io__put__2
	.loc 1 20 0 discriminator 2
	mov	r0, #1
	bl	gnat__io__new_line__2
	.loc 1 22 0 discriminator 2
	nop
	sub	sp, fp, #20
	.cfi_def_cfa 13, 24
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
	.cfi_endproc
.LFE1:
	.fnend
	.size	_ada_add_int_w_io, .-_ada_add_int_w_io
.Letext0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x82
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF0
	.byte	0xd
	.4byte	.LASF1
	.4byte	.LASF2
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x1
	.byte	0x5
	.4byte	.LASF4
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7e
	.uleb128 0x3
	.ascii	"a\000"
	.byte	0x1
	.byte	0x6
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.ascii	"b\000"
	.byte	0x1
	.byte	0x6
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.ascii	"c\000"
	.byte	0x1
	.byte	0x6
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x4
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x4
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF1:
	.ascii	"add_int_w_io.adb\000"
.LASF3:
	.ascii	"add_int_w_io\000"
.LASF5:
	.ascii	"integer\000"
.LASF0:
	.ascii	"GNU Ada 6.3.0 20170516 -ggdb3 -march=armv6 -mfloat-"
	.ascii	"abi=hard -mfpu=vfp -mtls-dialect=gnu\000"
.LASF4:
	.ascii	"_ada_add_int_w_io\000"
.LASF2:
	.ascii	"/home/pi/Engineering/GITHUB/Disassembling-Binaries/"
	.ascii	"Ada/ARM_Architecture/ARM32/Add_Int_w_IO/With_Debug_"
	.ascii	"Info\000"
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
