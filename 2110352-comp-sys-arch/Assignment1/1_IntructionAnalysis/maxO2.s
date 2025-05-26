	.file	"max.c"
	.text
	.p2align 4,,15
	.globl	_max1
	.def	_max1;	.scl	2;	.type	32;	.endef
_max1:
LFB12:
	.cfi_startproc
	movl	4(%esp), %edx
	movl	8(%esp), %eax
	cmpl	%edx, %eax
	jge	L2
	movl	%edx, %eax
L2:
	rep ret
	.cfi_endproc
LFE12:
	.p2align 4,,15
	.globl	_max2
	.def	_max2;	.scl	2;	.type	32;	.endef
_max2:
LFB13:
	.cfi_startproc
	movl	8(%esp), %edx
	movl	4(%esp), %eax
	cmpl	%edx, %eax
	jge	L5
	movl	%edx, %eax
L5:
	rep ret
	.cfi_endproc
LFE13:
	.p2align 4,,15
	.globl	_testMax
	.def	_testMax;	.scl	2;	.type	32;	.endef
_testMax:
LFB14:
	.cfi_startproc
	movl	8(%esp), %edx
	movl	4(%esp), %eax
	cmpl	%edx, %eax
	jge	L7
	movl	%edx, %eax
L7:
	rep ret
	.cfi_endproc
LFE14:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
