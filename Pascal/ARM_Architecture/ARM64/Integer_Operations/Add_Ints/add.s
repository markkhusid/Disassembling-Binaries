	.file "add.pp"
// Begin asmlist al_procedures

.section .text.n_main
	.balign 8
.globl	PASCALMAIN
	.type	PASCALMAIN,@function
PASCALMAIN:
.globl	main
	.type	main,@function
main:
// [add.pp]
// [6] BEGIN
	stp	x29,x30,[sp, #-16]!
	mov	x29,sp
	bl	FPC_INITIALIZEUNITS
// [8] a := 3;
	movz	w0,#3
	adrp	x1,U_$P$ADD_$$_A
	add	x1,x1,:lo12:U_$P$ADD_$$_A
	sturh	w0,[x1]
// [9] b := 5;
	movz	w1,#5
	adrp	x0,U_$P$ADD_$$_B
	add	x0,x0,:lo12:U_$P$ADD_$$_B
	sturh	w1,[x0]
// [10] c := a + 5;
	adrp	x0,U_$P$ADD_$$_A
	add	x0,x0,:lo12:U_$P$ADD_$$_A
	ldursh	w0,[x0]
	add	w0,w0,#5
	sxth	w0,w0
	adrp	x1,U_$P$ADD_$$_C
	add	x1,x1,:lo12:U_$P$ADD_$$_C
	sturh	w0,[x1]
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
	.balign 2
// [4] a, b, c : INTEGER;
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
.section .note.GNU-stack,"",%progbits

