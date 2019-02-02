	.file	"add_int_w_io.adb"
	.text
.Ltext0:
	.section	.rodata
	.align 8
.LC3:
	.ascii	"Please enter first integer now followed by <CR> -> "
	.align 8
.LC4:
	.ascii	"Please enter second integer now followed by <CR> -> "
.LC5:
	.ascii	"add_int_w_io.adb"
	.zero	1
.LC6:
	.ascii	"The sum is : "
	.align 8
.LC0:
	.long	1
	.long	51
	.align 8
.LC1:
	.long	1
	.long	52
	.align 8
.LC2:
	.long	1
	.long	13
	.text
	.align 2
	.globl	_ada_add_int_w_io
	.type	_ada_add_int_w_io, @function
_ada_add_int_w_io:
.LFB1:
	.file 1 "add_int_w_io.adb"
	.loc 1 5 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
.LBB2:
	.loc 1 10 0
	leaq	.LC3(%rip), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, %rdi
	movq	%rax, %rsi
	call	gnat__io__put__6@PLT
.LBE2:
	.loc 1 11 0
	call	gnat__io__get@PLT
	movl	%eax, -52(%rbp)
.LBB3:
	.loc 1 13 0
	leaq	.LC4(%rip), %r14
	leaq	.LC1(%rip), %r15
	movq	%r14, %rcx
	movq	%r15, %rbx
	movq	%r14, %rax
	movq	%r15, %rdx
	movq	%rdx, %rax
	movq	%rcx, %rdi
	movq	%rax, %rsi
	call	gnat__io__put__6@PLT
.LBE3:
	.loc 1 14 0
	call	gnat__io__get@PLT
	movl	%eax, -56(%rbp)
	.loc 1 16 0
	movl	$0, %ecx
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %eax
	addl	%edx, %eax
	jno	.L2
	movl	$1, %ecx
.L2:
	movl	%eax, %edx
	movl	%ecx, %eax
	testl	%eax, %eax
	je	.L4
	.loc 1 16 0 is_stmt 0 discriminator 1
	movl	$16, %esi
	leaq	.LC5(%rip), %rdi
	call	__gnat_rcheck_CE_Overflow_Check@PLT
.L4:
	.loc 1 16 0 discriminator 2
	movl	%edx, %eax
	movl	%eax, -60(%rbp)
.LBB4:
	.loc 1 18 0 is_stmt 1 discriminator 2
	leaq	.LC6(%rip), %r12
	leaq	.LC2(%rip), %r13
	movq	%r12, %rcx
	movq	%r13, %rbx
	movq	%r12, %rax
	movq	%r13, %rdx
	movq	%rdx, %rax
	movq	%rcx, %rdi
	movq	%rax, %rsi
	call	gnat__io__put__6@PLT
.LBE4:
	.loc 1 19 0 discriminator 2
	movl	-60(%rbp), %eax
	movl	%eax, %edi
	call	gnat__io__put__2@PLT
	.loc 1 20 0 discriminator 2
	movl	$1, %edi
	call	gnat__io__new_line__2@PLT
	.loc 1 22 0 discriminator 2
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_ada_add_int_w_io, .-_ada_add_int_w_io
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xad
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
	.long	.LASF4
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0xa9
	.uleb128 0x3
	.string	"a"
	.byte	0x1
	.byte	0x6
	.long	0xa9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.string	"b"
	.byte	0x1
	.byte	0x6
	.long	0xa9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.string	"c"
	.byte	0x1
	.byte	0x6
	.long	0xa9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x4
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x4
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x4
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6e
	.uleb128 0xe
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
	.uleb128 0x7
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
.LASF1:
	.string	"add_int_w_io.adb"
.LASF3:
	.string	"add_int_w_io"
.LASF0:
	.string	"GNU Ada 7.3.0 -ggdb3 -mtune=generic -march=x86-64"
.LASF4:
	.string	"_ada_add_int_w_io"
.LASF5:
	.string	"integer"
.LASF2:
	.string	"/home/ubuntu/Engineering/Programming/Disassembling-Binaries/Ada/Intel_Architecture/Add_Int_w_IO/With_Debug_Info"
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
