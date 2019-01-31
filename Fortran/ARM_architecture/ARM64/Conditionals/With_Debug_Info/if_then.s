	.arch armv8-a
	.file	"if_then.f08"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
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
.LFB0:
	.file 1 "if_then.f08"
	.loc 1 1 0
	.cfi_startproc
	sub	sp, sp, #512
	.cfi_def_cfa_offset 512
	stp	x29, x30, [sp]
	.cfi_offset 29, -512
	.cfi_offset 30, -504
	add	x29, sp, 0
	.cfi_def_cfa_register 29
.LBB2:
	.loc 1 8 0
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
.LBE2:
.LBB3:
	.loc 1 9 0
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
.LBE3:
	.loc 1 11 0
	ldr	w0, [x29, 508]
	cmp	w0, 5
	ble	.L3
.LBB4:
	.loc 1 12 0
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
.LBE4:
	.loc 1 15 0
	nop
	ldp	x29, x30, [sp]
	add	sp, sp, 512
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE0:
	.size	MAIN__, .-MAIN__
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.loc 1 15 0
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	str	w0, [x29, 28]
	str	x1, [x29, 16]
	.loc 1 15 0
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
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE1:
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
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf3
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF4
	.byte	0xe
	.byte	0x2
	.4byte	.LASF5
	.4byte	.LASF6
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	0x32
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x1
	.byte	0xf
	.4byte	0x32
	.8byte	.LFB1
	.8byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7d
	.uleb128 0x5
	.4byte	.LASF0
	.byte	0x1
	.byte	0xf
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x5
	.4byte	.LASF1
	.byte	0x1
	.byte	0xf
	.4byte	0x7d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -16
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.4byte	0x83
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x7
	.4byte	.LASF8
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.8byte	.LFB0
	.8byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF9
	.byte	0x1
	.byte	0x5
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x9
	.8byte	.LBB2
	.8byte	.LBE2-.LBB2
	.uleb128 0x9
	.8byte	.LBB3
	.8byte	.LBE3-.LBB3
	.uleb128 0x9
	.8byte	.LBB4
	.8byte	.LBE4-.LBB4
	.uleb128 0xa
	.4byte	.LASF10
	.byte	0x1
	.byte	0x6
	.4byte	0x39
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x42
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x2119
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6a
	.uleb128 0x19
	.uleb128 0x36
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x9
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x27
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.8byte	0
	.8byte	0
	.section	.debug_macro,"",@progbits
.Ldebug_macro0:
	.2byte	0x4
	.byte	0x2
	.4byte	.Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.byte	0x4
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF6:
	.string	"/home/ubuntu/Engineering/GITHUB/Disassembling-Binaries/Fortran/ARM_architecture/ARM64/Conditionals/With_Debug_Info"
.LASF8:
	.string	"if_then"
.LASF5:
	.string	"if_then.f08"
.LASF3:
	.string	"character(kind=1)"
.LASF0:
	.string	"argc"
.LASF7:
	.string	"main"
.LASF9:
	.string	"num1"
.LASF10:
	.string	"num2"
.LASF2:
	.string	"integer(kind=4)"
.LASF4:
	.string	"GNU Fortran2008 7.3.0 -mlittle-endian -mabi=lp64 -ggdb3 -fintrinsic-modules-path /usr/lib/gcc/aarch64-linux-gnu/7/finclude"
.LASF1:
	.string	"argv"
	.ident	"GCC: (Ubuntu/Linaro 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
