	.file "add_functions.pp"
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

.section .text.b_DEBUGSTART_$P$ADD_FUNCTIONS_PROGRAM
.globl	DEBUGSTART_$P$ADD_FUNCTIONS_PROGRAM
	.type	DEBUGSTART_$P$ADD_FUNCTIONS_PROGRAM,@object
DEBUGSTART_$P$ADD_FUNCTIONS_PROGRAM:
# End asmlist al_begin
# Begin asmlist al_procedures

.section .text.n_p$add_functions_program_$$_add_function$smallint$smallint$$smallint
	.balign 16,0x90
.globl	P$ADD_FUNCTIONS_PROGRAM_$$_ADD_FUNCTION$SMALLINT$SMALLINT$$SMALLINT
	.type	P$ADD_FUNCTIONS_PROGRAM_$$_ADD_FUNCTION$SMALLINT$SMALLINT$$SMALLINT,@function
P$ADD_FUNCTIONS_PROGRAM_$$_ADD_FUNCTION$SMALLINT$SMALLINT$$SMALLINT:
.Lc1:
.Ll1:
# [add_functions.pp]
# [8] BEGIN
	pushq	%rbp
.Lc3:
.Lc4:
	movq	%rsp,%rbp
.Lc5:
	leaq	-32(%rsp),%rsp
# Var f_a located at rbp-8, size=OS_S16
# Var f_b located at rbp-16, size=OS_S16
# Var $result located at rbp-20, size=OS_S16
	movw	%di,-8(%rbp)
	movw	%si,-16(%rbp)
.Ll2:
# [9] add_function := f_a + f_b;
	movswl	-8(%rbp),%edx
	movswl	-16(%rbp),%eax
	leal	(%edx,%eax),%eax
	movw	%ax,-20(%rbp)
.Ll3:
# [10] END;
	movswl	-20(%rbp),%eax
	leave
	ret
.Lc2:
.Lt2:
.Le0:
	.size	P$ADD_FUNCTIONS_PROGRAM_$$_ADD_FUNCTION$SMALLINT$SMALLINT$$SMALLINT, .Le0 - P$ADD_FUNCTIONS_PROGRAM_$$_ADD_FUNCTION$SMALLINT$SMALLINT$$SMALLINT
.Ll4:

.section .text.n_main
	.balign 16,0x90
.globl	PASCALMAIN
	.type	PASCALMAIN,@function
PASCALMAIN:
.globl	main
	.type	main,@function
main:
.Lc6:
.Ll5:
# [12] BEGIN
	pushq	%rbp
.Lc8:
.Lc9:
	movq	%rsp,%rbp
.Lc10:
	call	FPC_INITIALIZEUNITS
.Ll6:
# [14] a := 2;
	movw	$2,U_$P$ADD_FUNCTIONS_PROGRAM_$$_A
.Ll7:
# [15] b := 3;
	movw	$3,U_$P$ADD_FUNCTIONS_PROGRAM_$$_B
.Ll8:
# [17] c := add_function(a, b);
	movswl	U_$P$ADD_FUNCTIONS_PROGRAM_$$_B,%eax
	movswl	U_$P$ADD_FUNCTIONS_PROGRAM_$$_A,%edi
	movl	%eax,%esi
	call	P$ADD_FUNCTIONS_PROGRAM_$$_ADD_FUNCTION$SMALLINT$SMALLINT$$SMALLINT
	movw	%ax,U_$P$ADD_FUNCTIONS_PROGRAM_$$_C
.Ll9:
# [19] END.
	call	FPC_DO_EXIT
	leave
	ret
.Lc7:
.Lt1:
.Le1:
	.size	main, .Le1 - main
.Ll10:

.section .text

.section .fpc.n_links
	.quad	DEBUGSTART_$P$ADD_FUNCTIONS_PROGRAM
	.quad	DEBUGEND_$P$ADD_FUNCTIONS_PROGRAM
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss
	.balign 2
# [4] a, b, c : INTEGER;
	.type U_$P$ADD_FUNCTIONS_PROGRAM_$$_A,@object
	.size U_$P$ADD_FUNCTIONS_PROGRAM_$$_A,2
U_$P$ADD_FUNCTIONS_PROGRAM_$$_A:
	.zero 2

.section .bss
	.balign 2
	.type U_$P$ADD_FUNCTIONS_PROGRAM_$$_B,@object
	.size U_$P$ADD_FUNCTIONS_PROGRAM_$$_B,2
U_$P$ADD_FUNCTIONS_PROGRAM_$$_B:
	.zero 2

.section .bss
	.balign 2
	.type U_$P$ADD_FUNCTIONS_PROGRAM_$$_C,@object
	.size U_$P$ADD_FUNCTIONS_PROGRAM_$$_C,2
U_$P$ADD_FUNCTIONS_PROGRAM_$$_C:
	.zero 2

.section .data.n_INITFINAL
	.balign 8
.globl	INITFINAL
	.type	INITFINAL,@object
INITFINAL:
	.quad	1,0
	.quad	INIT$_$SYSTEM
	.quad	0
# [20] 
.Le2:
	.size	INITFINAL, .Le2 - INITFINAL

.section .data.n_FPC_THREADVARTABLES
	.balign 8
.globl	FPC_THREADVARTABLES
	.type	FPC_THREADVARTABLES,@object
FPC_THREADVARTABLES:
	.long	1
	.quad	THREADVARLIST_$SYSTEM
.Le3:
	.size	FPC_THREADVARTABLES, .Le3 - FPC_THREADVARTABLES

.section .data.n_FPC_RESOURCESTRINGTABLES
	.balign 8
.globl	FPC_RESOURCESTRINGTABLES
	.type	FPC_RESOURCESTRINGTABLES,@object
FPC_RESOURCESTRINGTABLES:
	.quad	0
.Le4:
	.size	FPC_RESOURCESTRINGTABLES, .Le4 - FPC_RESOURCESTRINGTABLES

.section .data.n_FPC_WIDEINITTABLES
	.balign 8
.globl	FPC_WIDEINITTABLES
	.type	FPC_WIDEINITTABLES,@object
FPC_WIDEINITTABLES:
	.quad	0
.Le5:
	.size	FPC_WIDEINITTABLES, .Le5 - FPC_WIDEINITTABLES

.section .data.n_FPC_RESSTRINITTABLES
	.balign 8
.globl	FPC_RESSTRINITTABLES
	.type	FPC_RESSTRINITTABLES,@object
FPC_RESSTRINITTABLES:
	.quad	0
.Le6:
	.size	FPC_RESSTRINITTABLES, .Le6 - FPC_RESSTRINITTABLES

.section .fpc.n_version
	.balign 8
	.ascii	"FPC 3.0.4+dfsg-18ubuntu2 [2018/08/29] for x86_64 - "
	.ascii	"Linux"

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
.Lc11:
	.long	.Lc13-.Lc12
.Lc12:
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
.Lc13:
	.long	.Lc15-.Lc14
.Lc14:
	.quad	.Lc11
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
.Lc15:
	.long	.Lc17-.Lc16
.Lc16:
	.quad	.Lc11
	.quad	.Lc6
	.quad	.Lc7-.Lc6
	.byte	4
	.long	.Lc8-.Lc6
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc9-.Lc8
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc10-.Lc9
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc17:
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
	.ascii	"add_functions.pp\000"
	.ascii	"Free Pascal 3.0.4+dfsg-18ubuntu2 2018/08/29\000"
	.ascii	"/home/ubuntu/Engineering/Disassembling-Binaries/Pas"
	.ascii	"cal/Intel_Architecture/AMD64/Functions/With_Debug_I"
	.ascii	"nfo/\000"
	.byte	9
	.byte	3
	.long	.Ldebug_line0
	.quad	DEBUGSTART_$P$ADD_FUNCTIONS_PROGRAM
	.quad	DEBUGEND_$P$ADD_FUNCTIONS_PROGRAM
# Syms - Begin Staticsymtable
# Symbol SYSTEM
# Symbol FPINTRES
# Symbol ADD_FUNCTIONS_PROGRAM
# Symbol main
# Symbol A
	.uleb128	2
	.ascii	"A\000"
	.byte	9
	.byte	3
	.quad	U_$P$ADD_FUNCTIONS_PROGRAM_$$_A
	.quad	_$ADD_FUNCTIONS_PROGRAM$_Ld1
# Symbol B
	.uleb128	2
	.ascii	"B\000"
	.byte	9
	.byte	3
	.quad	U_$P$ADD_FUNCTIONS_PROGRAM_$$_B
	.quad	_$ADD_FUNCTIONS_PROGRAM$_Ld1
# Symbol C
	.uleb128	2
	.ascii	"C\000"
	.byte	9
	.byte	3
	.quad	U_$P$ADD_FUNCTIONS_PROGRAM_$$_C
	.quad	_$ADD_FUNCTIONS_PROGRAM$_Ld1
# Symbol ADD_FUNCTION
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
# Procdef add_function(SmallInt;SmallInt):SmallInt;
	.uleb128	4
	.ascii	"ADD_FUNCTION\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	_$ADD_FUNCTIONS_PROGRAM$_Ld1
	.quad	P$ADD_FUNCTIONS_PROGRAM_$$_ADD_FUNCTION$SMALLINT$SMALLINT$$SMALLINT
	.quad	.Lt2
# Symbol F_A
	.uleb128	5
	.ascii	"F_A\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.quad	_$ADD_FUNCTIONS_PROGRAM$_Ld1
# Symbol F_B
	.uleb128	5
	.ascii	"F_B\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.quad	_$ADD_FUNCTIONS_PROGRAM$_Ld1
# Symbol result
	.uleb128	2
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-20
	.quad	_$ADD_FUNCTIONS_PROGRAM$_Ld1
# Symbol ADD_FUNCTION
	.uleb128	2
	.ascii	"ADD_FUNCTION\000"
	.byte	2
	.byte	118
	.sleb128	-20
	.quad	_$ADD_FUNCTIONS_PROGRAM$_Ld1
	.byte	0
# Defs - Begin unit SYSTEM has index 1
# Definition SmallInt
.globl	_$ADD_FUNCTIONS_PROGRAM$_Ld1
	.type	_$ADD_FUNCTIONS_PROGRAM$_Ld1,@object
_$ADD_FUNCTIONS_PROGRAM$_Ld1:
	.uleb128	6
	.ascii	"SMALLINT\000"
	.quad	.La1
	.type	.La1,@object
.La1:
	.uleb128	7
	.ascii	"SMALLINT\000"
	.byte	5
	.byte	2
.globl	_$ADD_FUNCTIONS_PROGRAM$_Ld2
	.type	_$ADD_FUNCTIONS_PROGRAM$_Ld2,@object
_$ADD_FUNCTIONS_PROGRAM$_Ld2:
	.uleb128	8
	.quad	_$ADD_FUNCTIONS_PROGRAM$_Ld1
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
	.uleb128	73
	.uleb128	16
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.byte	0
	.byte	0
# Abbrev 5
	.uleb128	5
	.uleb128	5
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	2
	.uleb128	10
	.uleb128	73
	.uleb128	16
	.byte	0
	.byte	0
# Abbrev 6
	.uleb128	6
	.uleb128	22
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.byte	0
	.byte	0
# Abbrev 7
	.uleb128	7
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
# Abbrev 8
	.uleb128	8
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
	.ascii	"add_functions.pp\000"
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
	.type	.Lehdebug_line0,@object
.Lehdebug_line0:
# === header end ===
# function: P$ADD_FUNCTIONS_PROGRAM_$$_ADD_FUNCTION$SMALLINT$SMALLINT$$SMALLINT
# [8:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll1
	.byte	5
	.uleb128	1
	.byte	19
# [9:18]
	.byte	2
	.uleb128	.Ll2-.Ll1
	.byte	5
	.uleb128	18
	.byte	13
# [10:1]
	.byte	2
	.uleb128	.Ll3-.Ll2
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll4
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: PASCALMAIN
# function: main
# [12:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll5
	.byte	5
	.uleb128	1
	.byte	23
# [14:2]
	.byte	2
	.uleb128	.Ll6-.Ll5
	.byte	5
	.uleb128	2
	.byte	14
# [15:2]
	.byte	2
	.uleb128	.Ll7-.Ll6
	.byte	13
# [17:7]
	.byte	2
	.uleb128	.Ll8-.Ll7
	.byte	5
	.uleb128	7
	.byte	14
# [19:1]
	.byte	2
	.uleb128	.Ll9-.Ll8
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll10
	.byte	0
	.byte	1
	.byte	1
# ###################
	.type	.Ledebug_line0,@object
.Ledebug_line0:
# End asmlist al_dwarf_line
# Begin asmlist al_end

.section .text.z_DEBUGEND_$P$ADD_FUNCTIONS_PROGRAM
.globl	DEBUGEND_$P$ADD_FUNCTIONS_PROGRAM
	.type	DEBUGEND_$P$ADD_FUNCTIONS_PROGRAM,@object
DEBUGEND_$P$ADD_FUNCTIONS_PROGRAM:
# End asmlist al_end
.section .note.GNU-stack,"",%progbits

