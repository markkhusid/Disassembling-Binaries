	.file "add.pp"
# Begin asmlist al_begin

.section .debug_line
	.type	.Ldebug_linesection0,@object
.Ldebug_linesection0:
	.type	.Ldebug_line0,@object
.Ldebug_line0:

.section .debug_abbrev
	.type	.Ldebug_abbrevsection0,@object
.Ldebug_abbrevsection0:
	.type	.Ldebug_abbrev0,@object
.Ldebug_abbrev0:

.section .text.b_DEBUGSTART_$P$ADD
.globl	DEBUGSTART_$P$ADD
	.type	DEBUGSTART_$P$ADD,@object
DEBUGSTART_$P$ADD:
# End asmlist al_begin
# Begin asmlist al_procedures

.section .text.n_main
	.balign 16,0x90
.globl	PASCALMAIN
	.type	PASCALMAIN,@function
PASCALMAIN:
.globl	main
	.type	main,@function
main:
.Lc1:
.Ll1:
# [add.pp]
# [6] BEGIN
	pushq	%rbp
.Lc3:
.Lc4:
	movq	%rsp,%rbp
.Lc5:
	call	FPC_INITIALIZEUNITS
.Ll2:
# [8] a := 3;
	movw	$3,U_$P$ADD_$$_A
.Ll3:
# [9] b := 5;
	movw	$5,U_$P$ADD_$$_B
.Ll4:
# [10] c := a + b;
	movswl	U_$P$ADD_$$_A,%edx
	movswl	U_$P$ADD_$$_B,%eax
	leal	(%edx,%eax),%eax
	movw	%ax,U_$P$ADD_$$_C
.Ll5:
# [11] END.
	call	FPC_DO_EXIT
	leave
	ret
.Lc2:
.Lt1:
.Le0:
	.size	main, .Le0 - main
.Ll6:

.section .text

.section .fpc.n_links
	.quad	DEBUGSTART_$P$ADD
	.quad	DEBUGEND_$P$ADD
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss
	.balign 2
# [4] a, b, c : INTEGER;
	.type U_$P$ADD_$$_A,@object
	.size U_$P$ADD_$$_A,2
U_$P$ADD_$$_A:
	.zero 2

.section .bss
	.balign 2
	.type U_$P$ADD_$$_B,@object
	.size U_$P$ADD_$$_B,2
U_$P$ADD_$$_B:
	.zero 2

.section .bss
	.balign 2
	.type U_$P$ADD_$$_C,@object
	.size U_$P$ADD_$$_C,2
U_$P$ADD_$$_C:
	.zero 2

.section .data.n_INITFINAL
	.balign 8
.globl	INITFINAL
	.type	INITFINAL,@object
INITFINAL:
	.quad	1,0
	.quad	INIT$_$SYSTEM
	.quad	0
# [12] 
.Le1:
	.size	INITFINAL, .Le1 - INITFINAL

.section .data.n_FPC_THREADVARTABLES
	.balign 8
.globl	FPC_THREADVARTABLES
	.type	FPC_THREADVARTABLES,@object
FPC_THREADVARTABLES:
	.long	1
	.quad	THREADVARLIST_$SYSTEM
.Le2:
	.size	FPC_THREADVARTABLES, .Le2 - FPC_THREADVARTABLES

.section .data.n_FPC_RESOURCESTRINGTABLES
	.balign 8
.globl	FPC_RESOURCESTRINGTABLES
	.type	FPC_RESOURCESTRINGTABLES,@object
FPC_RESOURCESTRINGTABLES:
	.quad	0
.Le3:
	.size	FPC_RESOURCESTRINGTABLES, .Le3 - FPC_RESOURCESTRINGTABLES

.section .data.n_FPC_WIDEINITTABLES
	.balign 8
.globl	FPC_WIDEINITTABLES
	.type	FPC_WIDEINITTABLES,@object
FPC_WIDEINITTABLES:
	.quad	0
.Le4:
	.size	FPC_WIDEINITTABLES, .Le4 - FPC_WIDEINITTABLES

.section .data.n_FPC_RESSTRINITTABLES
	.balign 8
.globl	FPC_RESSTRINITTABLES
	.type	FPC_RESSTRINITTABLES,@object
FPC_RESSTRINITTABLES:
	.quad	0
.Le5:
	.size	FPC_RESSTRINITTABLES, .Le5 - FPC_RESSTRINITTABLES

.section .fpc.n_version
	.balign 8
	.ascii	"FPC 3.0.0+dfsg-2 [2016/01/28] for x86_64 - Linux"

.section .data.n___stklen
	.balign 8
.globl	__stklen
	.type	__stklen,@object
__stklen:
	.quad	8388608

.section .data.n___heapsize
	.balign 8
.globl	__heapsize
	.type	__heapsize,@object
__heapsize:
	.quad	0

.section .data.n___fpc_valgrind
.globl	__fpc_valgrind
	.type	__fpc_valgrind,@object
__fpc_valgrind:
	.byte	0

.section .data.n_FPC_RESLOCATION
	.balign 8
.globl	FPC_RESLOCATION
	.type	FPC_RESLOCATION,@object
FPC_RESLOCATION:
	.quad	0
# End asmlist al_globals
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc6:
	.long	.Lc8-.Lc7
.Lc7:
	.long	-1
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-4
	.byte	16
	.byte	12
	.uleb128	7
	.uleb128	8
	.byte	5
	.uleb128	16
	.uleb128	2
	.balign 4,0
.Lc8:
	.long	.Lc10-.Lc9
.Lc9:
	.quad	.Lc6
	.quad	.Lc1
	.quad	.Lc2-.Lc1
	.byte	4
	.long	.Lc3-.Lc1
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc4-.Lc3
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc5-.Lc4
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc10:
# End asmlist al_dwarf_frame
# Begin asmlist al_dwarf_info

.section .debug_info
	.type	.Ldebug_info0,@object
.Ldebug_info0:
	.long	.Ledebug_info0-.Lf1
.Lf1:
	.short	2
	.long	.Ldebug_abbrev0
	.byte	8
	.uleb128	1
	.ascii	"add.pp\000"
	.ascii	"Free Pascal 3.0.0+dfsg-2 2016/01/28\000"
	.ascii	"/home/ubuntu/Engineering/Programming/Disassembling-"
	.ascii	"Binaries/Pascal/Intel_Architecture/AMD64/Add_Int/\000"
	.byte	9
	.byte	3
	.long	.Ldebug_line0
	.quad	DEBUGSTART_$P$ADD
	.quad	DEBUGEND_$P$ADD
# Syms - Begin Staticsymtable
# Symbol SYSTEM
# Symbol FPINTRES
# Symbol ADD
# Symbol main
# Symbol A
	.uleb128	2
	.ascii	"A\000"
	.byte	9
	.byte	3
	.quad	U_$P$ADD_$$_A
	.quad	_$ADD$_Ld1
# Symbol B
	.uleb128	2
	.ascii	"B\000"
	.byte	9
	.byte	3
	.quad	U_$P$ADD_$$_B
	.quad	_$ADD$_Ld1
# Symbol C
	.uleb128	2
	.ascii	"C\000"
	.byte	9
	.byte	3
	.quad	U_$P$ADD_$$_C
	.quad	_$ADD$_Ld1
# Syms - End Staticsymtable
# Procdef $main; Register;
	.uleb128	3
	.ascii	"main\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	main
	.quad	.Lt1
	.byte	0
# Defs - Begin unit SYSTEM has index 1
# Definition SmallInt
.globl	_$ADD$_Ld1
	.type	_$ADD$_Ld1,@object
_$ADD$_Ld1:
	.uleb128	4
	.ascii	"SMALLINT\000"
	.quad	.La1
	.type	.La1,@object
.La1:
	.uleb128	5
	.ascii	"SMALLINT\000"
	.byte	5
	.byte	2
.globl	_$ADD$_Ld2
	.type	_$ADD$_Ld2,@object
_$ADD$_Ld2:
	.uleb128	6
	.quad	_$ADD$_Ld1
# Defs - End unit SYSTEM has index 1
# Defs - Begin unit FPINTRES has index 2
# Defs - End unit FPINTRES has index 2
# Defs - Begin Staticsymtable
# Defs - End Staticsymtable
	.byte	0
	.type	.Ledebug_info0,@object
.Ledebug_info0:
# End asmlist al_dwarf_info
# Begin asmlist al_dwarf_abbrev

.section .debug_abbrev
# Abbrev 1
	.uleb128	1
	.uleb128	17
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	37
	.uleb128	8
	.uleb128	27
	.uleb128	8
	.uleb128	19
	.uleb128	11
	.uleb128	66
	.uleb128	11
	.uleb128	16
	.uleb128	6
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.byte	0
	.byte	0
# Abbrev 2
	.uleb128	2
	.uleb128	52
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	2
	.uleb128	10
	.uleb128	73
	.uleb128	16
	.byte	0
	.byte	0
# Abbrev 3
	.uleb128	3
	.uleb128	46
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	39
	.uleb128	12
	.uleb128	54
	.uleb128	11
	.uleb128	63
	.uleb128	12
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.byte	0
	.byte	0
# Abbrev 4
	.uleb128	4
	.uleb128	22
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.byte	0
	.byte	0
# Abbrev 5
	.uleb128	5
	.uleb128	36
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	62
	.uleb128	11
	.uleb128	11
	.uleb128	11
	.byte	0
	.byte	0
# Abbrev 6
	.uleb128	6
	.uleb128	16
	.byte	0
	.uleb128	73
	.uleb128	16
	.byte	0
	.byte	0
	.byte	0
# End asmlist al_dwarf_abbrev
# Begin asmlist al_dwarf_line

.section .debug_line
# === header start ===
	.long	.Ledebug_line0-.Lf2
.Lf2:
	.short	2
	.long	.Lehdebug_line0-.Lf3
.Lf3:
	.byte	1
	.byte	1
	.byte	1
	.byte	255
	.byte	13
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
# include_directories
	.byte	0
# file_names
	.ascii	"add.pp\000"
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
	.type	.Lehdebug_line0,@object
.Lehdebug_line0:
# === header end ===
# function: PASCALMAIN
# function: main
# [6:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll1
	.byte	5
	.uleb128	1
	.byte	17
# [8:2]
	.byte	2
	.uleb128	.Ll2-.Ll1
	.byte	5
	.uleb128	2
	.byte	14
# [9:2]
	.byte	2
	.uleb128	.Ll3-.Ll2
	.byte	13
# [10:7]
	.byte	2
	.uleb128	.Ll4-.Ll3
	.byte	5
	.uleb128	7
	.byte	13
# [11:1]
	.byte	2
	.uleb128	.Ll5-.Ll4
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll6
	.byte	0
	.byte	1
	.byte	1
# ###################
	.type	.Ledebug_line0,@object
.Ledebug_line0:
# End asmlist al_dwarf_line
# Begin asmlist al_end

.section .text.z_DEBUGEND_$P$ADD
.globl	DEBUGEND_$P$ADD
	.type	DEBUGEND_$P$ADD,@object
DEBUGEND_$P$ADD:
# End asmlist al_end
.section .note.GNU-stack,"",%progbits

