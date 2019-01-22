	.file "mult_int.pp"
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

.section .text.b_DEBUGSTART_$P$MULT
.globl	DEBUGSTART_$P$MULT
	.type	DEBUGSTART_$P$MULT,@object
DEBUGSTART_$P$MULT:
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
// [mult_int.pp]
// [6] BEGIN
	stp	x29,x30,[sp, #-16]!
	mov	x29,sp
	bl	FPC_INITIALIZEUNITS
.Ll2:
// [8] a := 3;
	movz	w0,#3
	adrp	x1,U_$P$MULT_$$_A
	add	x1,x1,:lo12:U_$P$MULT_$$_A
	sturh	w0,[x1]
.Ll3:
// [9] b := 5;
	movz	w1,#5
	adrp	x0,U_$P$MULT_$$_B
	add	x0,x0,:lo12:U_$P$MULT_$$_B
	sturh	w1,[x0]
.Ll4:
// [10] c := a * 5;
	adrp	x0,U_$P$MULT_$$_A
	add	x0,x0,:lo12:U_$P$MULT_$$_A
	ldursh	w0,[x0]
	movz	w1,#5
	mul	w0,w0,w1
	sxth	w0,w0
	adrp	x1,U_$P$MULT_$$_C
	add	x1,x1,:lo12:U_$P$MULT_$$_C
	sturh	w0,[x1]
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
	.quad	DEBUGSTART_$P$MULT
	.quad	DEBUGEND_$P$MULT
// End asmlist al_procedures
// Begin asmlist al_globals

.section .bss
	.balign 2
// [4] a, b, c : INTEGER;
	.type U_$P$MULT_$$_A,@object
	.size U_$P$MULT_$$_A,2
U_$P$MULT_$$_A:
	.zero 2

.section .bss
	.balign 2
	.type U_$P$MULT_$$_B,@object
	.size U_$P$MULT_$$_B,2
U_$P$MULT_$$_B:
	.zero 2

.section .bss
	.balign 2
	.type U_$P$MULT_$$_C,@object
	.size U_$P$MULT_$$_C,2
U_$P$MULT_$$_C:
	.zero 2

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
	.ascii	"FPC 3.0.4+dfsg-21 [2019/01/16] for aarch64 - Linux"

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
	.ascii	"mult_int.pp\000"
	.ascii	"Free Pascal 3.0.4+dfsg-21 2019/01/16\000"
	.ascii	"/home/haxor/Engineering/Programming/Disassembling-B"
	.ascii	"inaries/Pascal/ARM_Architecture/ARM64/Mult_Ints/Wit"
	.ascii	"h_Debug_Info/\000"
	.byte	9
	.byte	3
	.long	.Ldebug_line0
	.quad	DEBUGSTART_$P$MULT
	.quad	DEBUGEND_$P$MULT
// Syms - Begin Staticsymtable
// Symbol SYSTEM
// Symbol FPINTRES
// Symbol MULT
// Symbol main
// Symbol A
	.uleb128	2
	.ascii	"A\000"
	.byte	9
	.byte	3
	.quad	U_$P$MULT_$$_A
	.quad	_$MULT$_Ld1
// Symbol B
	.uleb128	2
	.ascii	"B\000"
	.byte	9
	.byte	3
	.quad	U_$P$MULT_$$_B
	.quad	_$MULT$_Ld1
// Symbol C
	.uleb128	2
	.ascii	"C\000"
	.byte	9
	.byte	3
	.quad	U_$P$MULT_$$_C
	.quad	_$MULT$_Ld1
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
// Definition SmallInt
.globl	_$MULT$_Ld1
	.type	_$MULT$_Ld1,@object
_$MULT$_Ld1:
	.uleb128	4
	.ascii	"SMALLINT\000"
	.quad	.La1
	.type	.La1,@object
.La1:
	.uleb128	5
	.ascii	"SMALLINT\000"
	.byte	5
	.byte	2
.globl	_$MULT$_Ld2
	.type	_$MULT$_Ld2,@object
_$MULT$_Ld2:
	.uleb128	6
	.quad	_$MULT$_Ld1
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
	.ascii	"mult_int.pp\000"
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
// [10:7]
	.byte	2
	.uleb128	.Ll4-.Ll3
	.byte	5
	.uleb128	7
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

.section .text.z_DEBUGEND_$P$MULT
.globl	DEBUGEND_$P$MULT
	.type	DEBUGEND_$P$MULT,@object
DEBUGEND_$P$MULT:
// End asmlist al_end
.section .note.GNU-stack,"",%progbits

