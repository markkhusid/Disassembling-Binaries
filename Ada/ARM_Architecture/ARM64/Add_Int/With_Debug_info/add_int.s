	.arch armv8-a
	.file	"add_int.adb"
	.text
.Ltext0:
	.align	3
	.global	_ada_add_int
	.type	_ada_add_int, %function
_ada_add_int:
.LFB1:
	.file 1 "add_int.adb"
	.loc 1 5 0
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	.loc 1 10 0
	mov	w0, 3
	str	w0, [sp, 12]
	.loc 1 11 0
	mov	w0, 5
	str	w0, [sp, 8]
	.loc 1 13 0
	mov	w0, 8
	str	w0, [sp, 4]
	.loc 1 15 0
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	_ada_add_int, .-_ada_add_int
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x77
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF0
	.byte	0xd
	.4byte	.LASF1
	.4byte	.LASF2
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x1
	.byte	0x5
	.4byte	.LASF4
	.8byte	.LFB1
	.8byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x73
	.uleb128 0x3
	.string	"a"
	.byte	0x1
	.byte	0x6
	.4byte	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x3
	.string	"b"
	.byte	0x1
	.byte	0x6
	.4byte	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x3
	.string	"c"
	.byte	0x1
	.byte	0x6
	.4byte	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
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
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.string	"add_int"
.LASF5:
	.string	"integer"
.LASF1:
	.string	"add_int.adb"
.LASF2:
	.string	"/home/ubuntu/Engineering/GITHUB/Disassembling-Binaries/Ada/ARM_Architecture/ARM64/Add_Int/With_Debug_info"
.LASF0:
	.string	"GNU Ada 7.3.0 -ggdb3 -mlittle-endian -mabi=lp64"
.LASF4:
	.string	"_ada_add_int"
	.ident	"GCC: (Ubuntu/Linaro 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
