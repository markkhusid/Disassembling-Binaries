	.file "add.pp"
	.eabi_attribute 28, 1 @Tag_ABI_VFP_args
# Begin asmlist al_begin

.section .text.b_DEBUGSTART_$P$ADD
	.balign 4
.globl	DEBUGSTART_$P$ADD
	.type	DEBUGSTART_$P$ADD,#object
DEBUGSTART_$P$ADD:
	.stabs "/home/pi/Engineering/GITHUB/Disassembling-Binaries/Pascal/ARM_Architecture/ARM32/With_Debug_Info/",100,0,0,.Lf2
	.stabs "add.pp",100,0,0,.Lf2
.Lf2:
# End asmlist al_begin
# Begin asmlist al_stabs

.section .data.n_ADD
	.balign 4
.globl	DEBUGINFO_$P$ADD
	.type	DEBUGINFO_$P$ADD,#object
DEBUGINFO_$P$ADD:
# Defs - Begin unit SYSTEM has index 1
	.stabs "void:t2=2",128,0,0,0
	.stabs "SMALLINT:t1=@s16;r1;-32768;32767;",128,0,0,0
# Defs - End unit SYSTEM has index 1
# Defs - Begin unit FPINTRES has index 2
# Defs - End unit FPINTRES has index 2
# Defs - Begin Staticsymtable
# Defs - End Staticsymtable
# Syms - Begin Staticsymtable
	.stabs "A:S1",38,0,4,U_$P$ADD_$$_A
	.stabs "B:S1",38,0,4,U_$P$ADD_$$_B
	.stabs "C:S1",38,0,4,U_$P$ADD_$$_C
# Syms - End Staticsymtable
# End asmlist al_stabs
# Begin asmlist al_procedures

.section .text.n_main
	.balign 4
.globl	PASCALMAIN
	.type	PASCALMAIN,#function
PASCALMAIN:
.globl	main
	.type	main,#function
main:
	.stabs "main:F2",36,0,3,main
	.stabs "add.pp",132,0,0,.Lf1
.Lf1:
	.stabn 68,0,6,.Ll1 - main
.Ll1:
	mov	r12,r13
	stmfd	r13!,{r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#48
	blx	FPC_INITIALIZEUNITS
	.stabn 68,0,8,.Ll2 - main
.Ll2:
	mov	r0,#3
	ldr	r1,.Lj5
	strh	r0,[r1]
	.stabn 68,0,9,.Ll3 - main
.Ll3:
	mov	r0,#5
	ldr	r1,.Lj8
	strh	r0,[r1]
	.stabn 68,0,10,.Ll4 - main
.Ll4:
	ldr	r0,.Lj5
	ldrsh	r1,[r0]
	ldr	r0,.Lj8
	ldrsh	r0,[r0]
	add	r0,r0,r1
	sxth	r1,r0
	ldr	r0,.Lj13
	strh	r1,[r0]
	.stabn 68,0,11,.Ll5 - main
.Ll5:
	blx	FPC_DO_EXIT
	ldmea	r11,{r11,r13,r15}
.Lj5:
	.long	U_$P$ADD_$$_A
.Lj8:
	.long	U_$P$ADD_$$_B
.Lj13:
	.long	U_$P$ADD_$$_C
.Le0:
	.size	main, .Le0 - main
	.stabn 192,0,0,0
	.stabn 224,0,0,.Lt1-main
.Lt1:

.section .text

.section .fpc.n_links
	.long	DEBUGINFO_$P$ADD
	.long	DEBUGSTART_$P$ADD
	.long	DEBUGEND_$P$ADD
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss
	.balign 2
	.type U_$P$ADD_$$_A,%object
	.size U_$P$ADD_$$_A,2
U_$P$ADD_$$_A:
	.zero 2

.section .bss
	.balign 2
	.type U_$P$ADD_$$_B,%object
	.size U_$P$ADD_$$_B,2
U_$P$ADD_$$_B:
	.zero 2

.section .bss
	.balign 2
	.type U_$P$ADD_$$_C,%object
	.size U_$P$ADD_$$_C,2
U_$P$ADD_$$_C:
	.zero 2

.section .data.n_INITFINAL
	.balign 4
.globl	INITFINAL
	.type	INITFINAL,#object
INITFINAL:
	.long	1,0
	.long	INIT$_$SYSTEM
	.long	0
.Le1:
	.size	INITFINAL, .Le1 - INITFINAL

.section .data.n_FPC_THREADVARTABLES
	.balign 4
.globl	FPC_THREADVARTABLES
	.type	FPC_THREADVARTABLES,#object
FPC_THREADVARTABLES:
	.long	1
	.long	THREADVARLIST_$SYSTEM
.Le2:
	.size	FPC_THREADVARTABLES, .Le2 - FPC_THREADVARTABLES

.section .data.n_FPC_RESOURCESTRINGTABLES
	.balign 4
.globl	FPC_RESOURCESTRINGTABLES
	.type	FPC_RESOURCESTRINGTABLES,#object
FPC_RESOURCESTRINGTABLES:
	.long	0
.Le3:
	.size	FPC_RESOURCESTRINGTABLES, .Le3 - FPC_RESOURCESTRINGTABLES

.section .data.n_FPC_WIDEINITTABLES
	.balign 4
.globl	FPC_WIDEINITTABLES
	.type	FPC_WIDEINITTABLES,#object
FPC_WIDEINITTABLES:
	.long	0
.Le4:
	.size	FPC_WIDEINITTABLES, .Le4 - FPC_WIDEINITTABLES

.section .data.n_FPC_RESSTRINITTABLES
	.balign 4
.globl	FPC_RESSTRINITTABLES
	.type	FPC_RESSTRINITTABLES,#object
FPC_RESSTRINITTABLES:
	.long	0
.Le5:
	.size	FPC_RESSTRINITTABLES, .Le5 - FPC_RESSTRINITTABLES

.section .fpc.n_version
	.balign 8
	.ascii	"FPC 3.0.0+dfsg-11+rpi1+deb9u1 [2017/07/27] for arm "
	.ascii	"- Linux"

.section .data.n___stklen
	.balign 4
.globl	__stklen
	.type	__stklen,#object
__stklen:
	.long	8388608

.section .data.n___heapsize
	.balign 4
.globl	__heapsize
	.type	__heapsize,#object
__heapsize:
	.long	0

.section .data.n___fpc_valgrind
.globl	__fpc_valgrind
	.type	__fpc_valgrind,#object
__fpc_valgrind:
	.byte	0

.section .data.n_FPC_RESLOCATION
	.balign 4
.globl	FPC_RESLOCATION
	.type	FPC_RESLOCATION,#object
FPC_RESLOCATION:
	.long	0
# End asmlist al_globals
# Begin asmlist al_end

.section .text.z_DEBUGEND_$P$ADD
	.balign 4
.globl	DEBUGEND_$P$ADD
	.type	DEBUGEND_$P$ADD,#object
DEBUGEND_$P$ADD:
	.stabs "",100,0,0,.Lf3
.Lf3:
# End asmlist al_end
.section .note.GNU-stack,"",%progbits

