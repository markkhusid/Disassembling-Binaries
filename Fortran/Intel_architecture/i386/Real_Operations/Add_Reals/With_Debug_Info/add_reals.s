	.file	"add_reals.f08"
	.text
.Ltext0:
	.type	MAIN__, @function
MAIN__:
.LFB0:
	.file 1 "add_reals.f08"
	.loc 1 1 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	.loc 1 7 0
	flds	.LC0@GOTOFF(%eax)
	fstps	-4(%ebp)
	.loc 1 9 0
	flds	.LC1@GOTOFF(%eax)
	fstps	-8(%ebp)
	.loc 1 11 0
	flds	-8(%ebp)
	fadds	-4(%ebp)
	fstps	-12(%ebp)
	.loc 1 13 0
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	MAIN__, .-MAIN__
	.globl	main
	.type	main, @function
main:
.LFB1:
	.loc 1 13 0
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x78,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x7c
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	%ecx, %eax
	.loc 1 13 0
	subl	$8, %esp
	pushl	4(%eax)
	pushl	(%eax)
	call	_gfortran_set_args@PLT
	addl	$16, %esp
	subl	$8, %esp
	leal	options.0.3423@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$7
	call	_gfortran_set_options@PLT
	addl	$16, %esp
	call	MAIN__
	movl	$0, %eax
	leal	-8(%ebp), %esp
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align 4
	.type	options.0.3423, @object
	.size	options.0.3423, 28
options.0.3423:
	.long	68
	.long	1023
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.align 4
.LC0:
	.long	1092616192
	.align 4
.LC1:
	.long	1073741824
	.section	.text.__x86.get_pc_thunk.ax,"axG",@progbits,__x86.get_pc_thunk.ax,comdat
	.globl	__x86.get_pc_thunk.ax
	.hidden	__x86.get_pc_thunk.ax
	.type	__x86.get_pc_thunk.ax, @function
__x86.get_pc_thunk.ax:
.LFB2:
	.cfi_startproc
	movl	(%esp), %eax
	ret
	.cfi_endproc
.LFE2:
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB3:
	.cfi_startproc
	movl	(%esp), %ebx
	ret
	.cfi_endproc
.LFE3:
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xb9
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF5
	.byte	0xe
	.byte	0x2
	.long	.LASF6
	.long	.LASF7
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.long	.LASF8
	.byte	0x1
	.byte	0xd
	.long	0x61
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x61
	.uleb128 0x3
	.long	.LASF0
	.byte	0x1
	.byte	0xd
	.long	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.long	.LASF1
	.byte	0x1
	.byte	0xd
	.long	0x6d
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.long	.LASF2
	.uleb128 0x5
	.long	0x61
	.uleb128 0x6
	.byte	0x4
	.long	0x73
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x7
	.long	.LASF9
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0xb5
	.uleb128 0x8
	.string	"a"
	.byte	0x1
	.byte	0x5
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x8
	.string	"b"
	.byte	0x1
	.byte	0x5
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x8
	.string	"c"
	.byte	0x1
	.byte	0x5
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.long	.LASF4
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
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x2119
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0
	.long	0
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
.LASF9:
	.string	"add_reals"
.LASF1:
	.string	"argv"
.LASF3:
	.string	"character(kind=1)"
.LASF0:
	.string	"argc"
.LASF2:
	.string	"integer(kind=4)"
.LASF7:
	.string	"/home/ubuntu/Engineering/Programming/Disassembling-Binaries/Fortran/Intel_architecture/i386/Real_Operations/Add_Reals/With_Debug_Info"
.LASF8:
	.string	"main"
.LASF5:
	.string	"GNU Fortran2008 7.3.0 -m32 -mtune=generic -march=i686 -ggdb3 -fintrinsic-modules-path /usr/lib/gcc/x86_64-linux-gnu/7/finclude"
.LASF4:
	.string	"real(kind=4)"
.LASF6:
	.string	"add_reals.f08"
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
