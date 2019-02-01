	.file "add_floats.pp"
// Begin asmlist al_procedures

.section .text.n_main
	.balign 8
.globl	PASCALMAIN
	.type	PASCALMAIN,@function
PASCALMAIN:
.globl	main
	.type	main,@function
main:
// [add_floats.pp]
// [6] BEGIN
	stp	x29,x30,[sp, #-16]!
	mov	x29,sp
	bl	FPC_INITIALIZEUNITS
// [8] a := 3.3;
	adrp	x0,:got:_$ADD_FLOATS$_Ld1
	ldr	x0,[x0, :got_lo12:_$ADD_FLOATS$_Ld1]
	ldur	x1,[x0]
	adrp	x0,U_$P$ADD_FLOATS_$$_A
	add	x0,x0,:lo12:U_$P$ADD_FLOATS_$$_A
	stur	x1,[x0]
// [9] b := 5.6;
	adrp	x0,:got:_$ADD_FLOATS$_Ld2
	ldr	x0,[x0, :got_lo12:_$ADD_FLOATS$_Ld2]
	ldur	x1,[x0]
	adrp	x0,U_$P$ADD_FLOATS_$$_B
	add	x0,x0,:lo12:U_$P$ADD_FLOATS_$$_B
	stur	x1,[x0]
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
// [11] END.
	bl	FPC_DO_EXIT
	ldp	x29,x30,[sp], #16
	ret
.Le0:
	.size	main, .Le0 - main

.section .text
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
.section .note.GNU-stack,"",%progbits

