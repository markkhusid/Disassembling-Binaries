	.file "add_floats.pp"
// Begin asmlist al_begin

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

.section .text.b_DEBUGSTART_$P$ADD_FLOATS
.globl	DEBUGSTART_$P$ADD_FLOATS
	.type	DEBUGSTART_$P$ADD_FLOATS,@object
DEBUGSTART_$P$ADD_FLOATS:
// End asmlist al_begin
// Begin asmlist al_procedures

.section .text.n_main
	.balign 8
.globl	PASCALMAIN
	.type	PASCALMAIN,@function
PASCALMAIN:
.globl	main
	.type	main,@function
main:
.Ll1:
// [add_floats.pp]
// [6] BEGIN
	stp	x29,x30,[sp, #-16]!
	mov	x29,sp
	bl	FPC_INITIALIZEUNITS
.Ll2:
// [8] a := 3.3;
	adrp	x0,:got:_$ADD_FLOATS$_Ld1
	ldr	x0,[x0, :got_lo12:_$ADD_FLOATS$_Ld1]
	ldur	x1,[x0]
	adrp	x0,U_$P$ADD_FLOATS_$$_A
	add	x0,x0,:lo12:U_$P$ADD_FLOATS_$$_A
	stur	x1,[x0]
.Ll3:
// [9] b := 5.6;
	adrp	x0,:got:_$ADD_FLOATS$_Ld2
	ldr	x0,[x0, :got_lo12:_$ADD_FLOATS$_Ld2]
	ldur	x1,[x0]
	adrp	x0,U_$P$ADD_FLOATS_$$_B
	add	x0,x0,:lo12:U_$P$ADD_FLOATS_$$_B
	stur	x1,[x0]
.Ll4:
// [10] c := a + b;
	adrp	x0,U_$P$ADD_FLOATS_$$_A
	add	x0,x0,:lo12:U_$P$ADD_FLOATS_$$_A
	ldur	d1,[x0]
	adrp	x0,U_$P$ADD_FLOATS_$$_B
	add	x0,x0,:lo12:U_$P$ADD_FLOATS_$$_B
	ldur	d0,[x0]
	fadd	d0,d1,d0
	adrp	x0,U_$P$ADD_FLOATS_$$_C
	add	x0,x0,:lo12:U_$P$ADD_FLOATS_$$_C
	stur	d0,[x0]
.Ll5:
// [11] END.
	bl	FPC_DO_EXIT
	ldp	x29,x30,[sp], #16
	ret
.Lt1:
.Le0:
	.size	main, .Le0 - main
.Ll6:

.section .text

.section .fpc.n_links
	.quad	DEBUGSTART_$P$ADD_FLOATS
	.quad	DEBUGEND_$P$ADD_FLOATS
// End asmlist al_procedures
// Begin asmlist al_globals

.section .bss
	.balign 8
// [4] a, b, c : REAL;
	.type U_$P$ADD_FLOATS_$$_A,@object
	.size U_$P$ADD_FLOATS_$$_A,8
U_$P$ADD_FLOATS_$$_A:
	.zero 8

.section .bss
	.balign 8
	.type U_$P$ADD_FLOATS_$$_B,@object
	.size U_$P$ADD_FLOATS_$$_B,8
U_$P$ADD_FLOATS_$$_B:
	.zero 8

.section .bss
	.balign 8
	.type U_$P$ADD_FLOATS_$$_C,@object
	.size U_$P$ADD_FLOATS_$$_C,8
U_$P$ADD_FLOATS_$$_C:
	.zero 8

.section .data.n_INITFINAL
	.balign 8
.globl	INITFINAL
	.type	INITFINAL,@object
INITFINAL:
	.quad	1,0
	.quad	INIT$_$SYSTEM
	.quad	0
// [12] 
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
	.ascii	"FPC 3.0.4+dfsg-18ubuntu2 [2018/08/29] for aarch64 -"
	.ascii	" Linux"

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
// End asmlist al_globals
// Begin asmlist al_typedconsts

.section .rodata.n__$ADD_FLOATS$_Ld1
	.balign 8
.globl	_$ADD_FLOATS$_Ld1
_$ADD_FLOATS$_Ld1:
// value: 0d+3.2999999999999998E+000
	.byte	102,102,102,102,102,102,10,64

.section .rodata.n__$ADD_FLOATS$_Ld2
	.balign 8
.globl	_$ADD_FLOATS$_Ld2
_$ADD_FLOATS$_Ld2:
// value: 0d+5.5999999999999996E+000
	.byte	102,102,102,102,102,102,22,64
// End asmlist al_typedconsts
// Begin asmlist al_dwarf_info

.section .debug_info
	.type	.Ldebug_info0,@object
.Ldebug_info0:
	.long	.Ledebug_info0-.Lf1
.Lf1:
	.short	2
	.long	.Ldebug_abbrev0
	.byte	8
	.uleb128	1
	.ascii	"add_floats.pp\000"
	.ascii	"Free Pascal 3.0.4+dfsg-18ubuntu2 2018/08/29\000"
	.ascii	"/home/ubuntu/Engineering/GITHUB/Disassembling-Binar"
	.ascii	"ies/Pascal/ARM_Architecture/ARM64/Real_Operations/W"
	.ascii	"ith_Debug_Info/\000"
	.byte	9
	.byte	3
	.long	.Ldebug_line0
	.quad	DEBUGSTART_$P$ADD_FLOATS
	.quad	DEBUGEND_$P$ADD_FLOATS
// Syms - Begin Staticsymtable
// Symbol SYSTEM
// Symbol FPINTRES
// Symbol ADD_FLOATS
// Symbol main
// Symbol A
	.uleb128	2
	.ascii	"A\000"
	.byte	9
	.byte	3
	.quad	U_$P$ADD_FLOATS_$$_A
	.quad	_$ADD_FLOATS$_Ld3
// Symbol B
	.uleb128	2
	.ascii	"B\000"
	.byte	9
	.byte	3
	.quad	U_$P$ADD_FLOATS_$$_B
	.quad	_$ADD_FLOATS$_Ld3
// Symbol C
	.uleb128	2
	.ascii	"C\000"
	.byte	9
	.byte	3
	.quad	U_$P$ADD_FLOATS_$$_C
	.quad	_$ADD_FLOATS$_Ld3
// Syms - End Staticsymtable
// Procdef $main; StdCall;
	.uleb128	3
	.ascii	"main\000"
	.byte	1
	.byte	1
	.quad	main
	.quad	.Lt1
	.byte	0
// Defs - Begin unit SYSTEM has index 1
// Definition Real
.globl	_$ADD_FLOATS$_Ld3
	.type	_$ADD_FLOATS$_Ld3,@object
_$ADD_FLOATS$_Ld3:
	.uleb128	4
	.ascii	"REAL\000"
	.quad	.La1
	.type	.La1,@object
.La1:
	.uleb128	5
	.ascii	"REAL\000"
	.byte	4
	.byte	8
.globl	_$ADD_FLOATS$_Ld4
	.type	_$ADD_FLOATS$_Ld4,@object
_$ADD_FLOATS$_Ld4:
	.uleb128	6
	.quad	_$ADD_FLOATS$_Ld3
// Defs - End unit SYSTEM has index 1
// Defs - Begin unit FPINTRES has index 2
// Defs - End unit FPINTRES has index 2
// Defs - Begin Staticsymtable
// Defs - End Staticsymtable
	.byte	0
	.type	.Ledebug_info0,@object
.Ledebug_info0:
// End asmlist al_dwarf_info
// Begin asmlist al_dwarf_abbrev

.section .debug_abbrev
// Abbrev 1
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
// Abbrev 2
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
// Abbrev 3
	.uleb128	3
	.uleb128	46
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	39
	.uleb128	12
	.uleb128	63
	.uleb128	12
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.byte	0
	.byte	0
// Abbrev 4
	.uleb128	4
	.uleb128	22
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.byte	0
	.byte	0
// Abbrev 5
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
// Abbrev 6
	.uleb128	6
	.uleb128	16
	.byte	0
	.uleb128	73
	.uleb128	16
	.byte	0
	.byte	0
	.byte	0
// End asmlist al_dwarf_abbrev
// Begin asmlist al_dwarf_line

.section .debug_line
// === header start ===
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
// include_directories
	.byte	0
// file_names
	.ascii	"add_floats.pp\000"
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
	.type	.Lehdebug_line0,@object
.Lehdebug_line0:
// === header end ===
// function: PASCALMAIN
// function: main
// [6:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll1
	.byte	5
	.uleb128	1
	.byte	17
// [8:2]
	.byte	2
	.uleb128	.Ll2-.Ll1
	.byte	5
	.uleb128	2
	.byte	14
// [9:2]
	.byte	2
	.uleb128	.Ll3-.Ll2
	.byte	13
// [10:9]
	.byte	2
	.uleb128	.Ll4-.Ll3
	.byte	5
	.uleb128	9
	.byte	13
// [11:1]
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
// ###################
	.type	.Ledebug_line0,@object
.Ledebug_line0:
// End asmlist al_dwarf_line
// Begin asmlist al_end

.section .text.z_DEBUGEND_$P$ADD_FLOATS
.globl	DEBUGEND_$P$ADD_FLOATS
	.type	DEBUGEND_$P$ADD_FLOATS,@object
DEBUGEND_$P$ADD_FLOATS:
// End asmlist al_end
.section .note.GNU-stack,"",%progbits

