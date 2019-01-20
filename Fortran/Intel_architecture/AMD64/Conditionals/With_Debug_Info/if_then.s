	.file	"if_then.f08"
	.text
.Ltext0:
	.section	.rodata
.LC0:
	.string	"if_then.f08"
	.align 8
.LC1:
	.ascii	"Enter a number between 1 and 10 -> "
.LC2:
	.ascii	"Number entered greater than 5!"
	.text
	.type	MAIN__, @function
MAIN__:
.LFB0:
	.file 1 "if_then.f08"
	.loc 1 1 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$496, %rsp
.LBB2:
	.loc 1 8 0
	leaq	.LC0(%rip), %rax
	movq	%rax, -488(%rbp)
	movl	$8, -480(%rbp)
	movl	$128, -496(%rbp)
	movl	$6, -492(%rbp)
	leaq	-496(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-496(%rbp), %rax
	movl	$35, %edx
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-496(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.LBE2:
.LBB3:
	.loc 1 9 0
	leaq	.LC0(%rip), %rax
	movq	%rax, -488(%rbp)
	movl	$9, -480(%rbp)
	movl	$128, -496(%rbp)
	movl	$5, -492(%rbp)
	leaq	-496(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	leaq	-4(%rbp), %rcx
	leaq	-496(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer@PLT
	leaq	-496(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
.LBE3:
	.loc 1 11 0
	movl	-4(%rbp), %eax
	cmpl	$5, %eax
	jle	.L3
.LBB4:
	.loc 1 12 0
	leaq	.LC0(%rip), %rax
	movq	%rax, -488(%rbp)
	movl	$12, -480(%rbp)
	movl	$128, -496(%rbp)
	movl	$6, -492(%rbp)
	leaq	-496(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-496(%rbp), %rax
	movl	$30, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-496(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L3:
.LBE4:
	.loc 1 15 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	MAIN__, .-MAIN__
	.globl	main
	.type	main, @function
main:
.LFB1:
	.loc 1 15 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 15 0
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_gfortran_set_args@PLT
	leaq	options.3.3507(%rip), %rsi
	movl	$7, %edi
	call	_gfortran_set_options@PLT
	call	MAIN__
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align 16
	.type	options.3.3507, @object
	.size	options.3.3507, 28
options.3.3507:
	.long	68
	.long	1023
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xf3
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF4
	.byte	0xe
	.byte	0x2
	.long	.LASF5
	.long	.LASF6
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF2
	.uleb128 0x3
	.long	0x32
	.uleb128 0x4
	.long	.LASF7
	.byte	0x1
	.byte	0xf
	.long	0x32
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x7d
	.uleb128 0x5
	.long	.LASF0
	.byte	0x1
	.byte	0xf
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.long	.LASF1
	.byte	0x1
	.byte	0xf
	.long	0x7d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -32
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x83
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x7
	.long	.LASF8
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.long	.LASF9
	.byte	0x1
	.byte	0x5
	.long	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x9
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x9
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0xa
	.long	.LASF10
	.byte	0x1
	.byte	0x6
	.long	0x39
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
	.section	.debug_macro,"",@progbits
.Ldebug_macro0:
	.value	0x4
	.byte	0x2
	.long	.Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.byte	0x4
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"if_then"
.LASF5:
	.string	"if_then.f08"
.LASF3:
	.string	"character(kind=1)"
.LASF6:
	.string	"/home/ubuntu/Engineering/Programming/Disassembling-Binaries/Fortran/Intel_architecture/AMD64/Conditionals/With_Debug_Info"
.LASF4:
	.string	"GNU Fortran2008 7.3.0 -mtune=generic -march=x86-64 -ggdb3 -fintrinsic-modules-path /usr/lib/gcc/x86_64-linux-gnu/7/finclude"
.LASF9:
	.string	"num1"
.LASF10:
	.string	"num2"
.LASF2:
	.string	"integer(kind=4)"
.LASF7:
	.string	"main"
.LASF0:
	.string	"argc"
.LASF1:
	.string	"argv"
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
