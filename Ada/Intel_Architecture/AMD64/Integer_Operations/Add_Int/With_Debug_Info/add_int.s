	.file	"add_int.adb"
	.text
.Ltext0:
	.align 2
	.globl	_ada_add_int
	.type	_ada_add_int, @function
_ada_add_int:
.LFB1:
	.file 1 "add_int.adb"
	.loc 1 5 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 10 6
	movl	$3, -4(%rbp)
	.loc 1 11 6
	movl	$5, -8(%rbp)
	.loc 1 13 6
	movl	$8, -12(%rbp)
	.loc 1 15 5
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_ada_add_int, .-_ada_add_int
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x7b
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF0
	.byte	0xd
	.long	.LASF1
	.long	.LASF2
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF3
	.byte	0x1
	.byte	0x5
	.byte	0x1
	.long	.LASF4
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x77
	.uleb128 0x3
	.string	"a"
	.byte	0x1
	.byte	0x6
	.byte	0x4
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"b"
	.byte	0x1
	.byte	0x6
	.byte	0x7
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"c"
	.byte	0x1
	.byte	0x6
	.byte	0xa
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.long	.LASF5
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
	.uleb128 0x39
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
	.uleb128 0x39
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
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF2:
	.string	"/home/haxor/Engineering/Programming/Disassembling-Binaries/Ada/Intel_Architecture/AMD64/Integer_Operations/Add_Int/With_Debug_Info"
.LASF0:
	.string	"GNU Ada 8.2.0 -ggdb3 -mtune=generic -march=x86-64"
.LASF1:
	.string	"add_int.adb"
.LASF3:
	.string	"add_int"
.LASF5:
	.string	"integer"
.LASF4:
	.string	"_ada_add_int"
	.ident	"GCC: (Debian 8.2.0-14) 8.2.0"
	.section	.note.GNU-stack,"",@progbits
