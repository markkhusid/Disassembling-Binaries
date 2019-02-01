	.file "add_functions.pp"
// Begin asmlist al_procedures

.section .text.n_p$add_functions_program_$$_add_function$smallint$smallint$$smallint
	.balign 8
.globl	P$ADD_FUNCTIONS_PROGRAM_$$_ADD_FUNCTION$SMALLINT$SMALLINT$$SMALLINT
	.type	P$ADD_FUNCTIONS_PROGRAM_$$_ADD_FUNCTION$SMALLINT$SMALLINT$$SMALLINT,@function
P$ADD_FUNCTIONS_PROGRAM_$$_ADD_FUNCTION$SMALLINT$SMALLINT$$SMALLINT:
// [add_functions.pp]
// [8] BEGIN
	stp	x29,x30,[sp, #-16]!
	mov	x29,sp
	sub	sp,sp,#32
// Var f_a located at sp+0, size=OS_S16
// Var f_b located at sp+8, size=OS_S16
// Var $result located at sp+16, size=OS_S16
	strh	w0,[sp]
	strh	w1,[sp, #8]
// [9] add_function := f_a + f_b;
	ldrsh	w0,[sp]
	ldrsh	w1,[sp, #8]
	add	w0,w1,w0
	sxth	w0,w0
	strh	w0,[sp, #16]
// [10] END;
	ldrsh	w0,[sp, #16]
	mov	sp,x29
	ldp	x29,x30,[sp], #16
	ret
.Le0:
	.size	P$ADD_FUNCTIONS_PROGRAM_$$_ADD_FUNCTION$SMALLINT$SMALLINT$$SMALLINT, .Le0 - P$ADD_FUNCTIONS_PROGRAM_$$_ADD_FUNCTION$SMALLINT$SMALLINT$$SMALLINT

.section .text.n_main
	.balign 8
.globl	PASCALMAIN
	.type	PASCALMAIN,@function
PASCALMAIN:
.globl	main
	.type	main,@function
main:
// [12] BEGIN
	stp	x29,x30,[sp, #-16]!
	mov	x29,sp
	bl	FPC_INITIALIZEUNITS
// [14] a := 2;
	movz	w1,#2
	adrp	x0,U_$P$ADD_FUNCTIONS_PROGRAM_$$_A
	add	x0,x0,:lo12:U_$P$ADD_FUNCTIONS_PROGRAM_$$_A
	sturh	w1,[x0]
// [15] b := 3;
	movz	w0,#3
	adrp	x1,U_$P$ADD_FUNCTIONS_PROGRAM_$$_B
	add	x1,x1,:lo12:U_$P$ADD_FUNCTIONS_PROGRAM_$$_B
	sturh	w0,[x1]
// [17] c := add_function(a, b);
	adrp	x0,U_$P$ADD_FUNCTIONS_PROGRAM_$$_B
	add	x0,x0,:lo12:U_$P$ADD_FUNCTIONS_PROGRAM_$$_B
	ldursh	w1,[x0]
	adrp	x0,U_$P$ADD_FUNCTIONS_PROGRAM_$$_A
	add	x0,x0,:lo12:U_$P$ADD_FUNCTIONS_PROGRAM_$$_A
	ldursh	w0,[x0]
	bl	P$ADD_FUNCTIONS_PROGRAM_$$_ADD_FUNCTION$SMALLINT$SMALLINT$$SMALLINT
	adrp	x1,U_$P$ADD_FUNCTIONS_PROGRAM_$$_C
	add	x1,x1,:lo12:U_$P$ADD_FUNCTIONS_PROGRAM_$$_C
	sturh	w0,[x1]
// [19] END.
	bl	FPC_DO_EXIT
	ldp	x29,x30,[sp], #16
	ret
.Le1:
	.size	main, .Le1 - main

.section .text
// End asmlist al_procedures
// Begin asmlist al_globals

.section .bss
	.balign 2
// [4] a, b, c : INTEGER;
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
// [20] 
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

