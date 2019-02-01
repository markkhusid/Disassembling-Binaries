	.file "add_functions.pp"
# Begin asmlist al_procedures

.section .text.n_p$add_functions_program_$$_add_function$smallint$smallint$$smallint
	.balign 16,0x90
.globl	P$ADD_FUNCTIONS_PROGRAM_$$_ADD_FUNCTION$SMALLINT$SMALLINT$$SMALLINT
	.type	P$ADD_FUNCTIONS_PROGRAM_$$_ADD_FUNCTION$SMALLINT$SMALLINT$$SMALLINT,@function
P$ADD_FUNCTIONS_PROGRAM_$$_ADD_FUNCTION$SMALLINT$SMALLINT$$SMALLINT:
.Lc1:
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
# [9] add_function := f_a + f_b;
	movswl	-8(%rbp),%edx
	movswl	-16(%rbp),%eax
	leal	(%edx,%eax),%eax
	movw	%ax,-20(%rbp)
# [10] END;
	movswl	-20(%rbp),%eax
	leave
	ret
.Lc2:
.Le0:
	.size	P$ADD_FUNCTIONS_PROGRAM_$$_ADD_FUNCTION$SMALLINT$SMALLINT$$SMALLINT, .Le0 - P$ADD_FUNCTIONS_PROGRAM_$$_ADD_FUNCTION$SMALLINT$SMALLINT$$SMALLINT

.section .text.n_main
	.balign 16,0x90
.globl	PASCALMAIN
	.type	PASCALMAIN,@function
PASCALMAIN:
.globl	main
	.type	main,@function
main:
.Lc6:
# [12] BEGIN
	pushq	%rbp
.Lc8:
.Lc9:
	movq	%rsp,%rbp
.Lc10:
	call	FPC_INITIALIZEUNITS
# [14] a := 2;
	movw	$2,U_$P$ADD_FUNCTIONS_PROGRAM_$$_A
# [15] b := 3;
	movw	$3,U_$P$ADD_FUNCTIONS_PROGRAM_$$_B
# [17] c := add_function(a, b);
	movswl	U_$P$ADD_FUNCTIONS_PROGRAM_$$_B,%eax
	movswl	U_$P$ADD_FUNCTIONS_PROGRAM_$$_A,%edi
	movl	%eax,%esi
	call	P$ADD_FUNCTIONS_PROGRAM_$$_ADD_FUNCTION$SMALLINT$SMALLINT$$SMALLINT
	movw	%ax,U_$P$ADD_FUNCTIONS_PROGRAM_$$_C
# [19] END.
	call	FPC_DO_EXIT
	leave
	ret
.Lc7:
.Le1:
	.size	main, .Le1 - main

.section .text
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
.section .note.GNU-stack,"",%progbits

