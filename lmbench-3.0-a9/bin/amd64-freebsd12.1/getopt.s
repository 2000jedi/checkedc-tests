	.text
	.file	"getopt.c"
	.globl	mygetopt                # -- Begin function mygetopt
	.p2align	4, 0x90
	.type	mygetopt,@function
mygetopt:                               # @mygetopt
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movl	myoptind(%rip), %ebx
	testl	%ebx, %ebx
	jne	.LBB0_2
# %bb.1:
	movl	$1, myoptind(%rip)
	movl	$1, n(%rip)
	movl	$1, %ebx
.LBB0_2:
	movl	$-1, %eax
	cmpl	%edi, %ebx
	jge	.LBB0_27
# %bb.3:
	movslq	%ebx, %rcx
	movq	(%rsi,%rcx,8), %r9
	cmpb	$45, (%r9)
	jne	.LBB0_27
# %bb.4:
	cmpb	$0, 1(%r9)
	je	.LBB0_27
# %bb.5:
	movslq	n(%rip), %r8
	movsbl	(%r9,%r8), %r11d
	testl	%r11d, %r11d
	je	.LBB0_29
# %bb.6:
	addq	$-1, %rdx
	.p2align	4, 0x90
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movzbl	1(%rdx), %eax
	testb	%al, %al
	je	.LBB0_25
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addq	$1, %rdx
	cmpb	%r11b, %al
	jne	.LBB0_7
# %bb.9:
	movb	1(%rdx), %r10b
	leal	-58(%r10), %eax
	cmpb	$2, %al
	jb	.LBB0_11
# %bb.10:
	cmpb	$124, %r10b
	jne	.LBB0_18
.LBB0_11:
	cmpb	$0, 1(%r8,%r9)
	je	.LBB0_15
# %bb.12:
	leaq	(%r8,%r9), %rax
	addq	$1, %rax
	movq	%rax, myoptarg(%rip)
.LBB0_13:
	addl	$1, %ebx
.LBB0_14:
	movl	%ebx, myoptind(%rip)
	movl	$1, n(%rip)
	movsbl	(%rdx), %eax
	jmp	.LBB0_27
.LBB0_15:
	cmpb	$59, %r10b
	je	.LBB0_20
# %bb.16:
	cmpb	$124, %r10b
	jne	.LBB0_23
# %bb.17:
	movq	$0, myoptarg(%rip)
	jmp	.LBB0_13
.LBB0_18:
	cmpb	$0, 1(%r9,%r8)
	je	.LBB0_21
# %bb.19:
	addq	$1, %r8
	jmp	.LBB0_22
.LBB0_20:
	movq	$0, myoptarg(%rip)
	addl	$1, %ebx
	movl	%ebx, myoptind(%rip)
	movsbl	(%rdx), %eax
	movl	%eax, myoptopt(%rip)
	jmp	.LBB0_26
.LBB0_21:
	addl	$1, %ebx
	movl	%ebx, myoptind(%rip)
	movb	(%rdx), %r11b
	movl	$1, %r8d
.LBB0_22:
	movl	%r8d, n(%rip)
	movsbl	%r11b, %eax
	jmp	.LBB0_27
.LBB0_23:
	leal	1(%rbx), %eax
	cmpl	%edi, %eax
	je	.LBB0_25
# %bb.24:
	cltq
	movq	(%rsi,%rax,8), %rax
	cmpb	$45, (%rax)
	jne	.LBB0_28
.LBB0_25:
	movl	%r11d, myoptopt(%rip)
.LBB0_26:
	movl	$63, %eax
.LBB0_27:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_28:
	.cfi_def_cfa %rbp, 16
	movq	%rax, myoptarg(%rip)
	addl	$2, %ebx
	jmp	.LBB0_14
.LBB0_29:
	movl	$.L__func__.mygetopt, %edi
	movl	$.L.str, %esi
	movl	$.L.str.1, %ecx
	movl	$48, %edx
	callq	__assert
.Lfunc_end0:
	.size	mygetopt, .Lfunc_end0-mygetopt
	.cfi_endproc
                                        # -- End function
	.type	myoptind,@object        # @myoptind
	.comm	myoptind,4,4
	.type	n,@object               # @n
	.local	n
	.comm	n,4,4
	.type	.L__func__.mygetopt,@object # @__func__.mygetopt
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.mygetopt:
	.asciz	"mygetopt"
	.size	.L__func__.mygetopt, 9

	.type	.L.str,@object          # @.str
.L.str:
	.asciz	"getopt.c"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"av[optind][n]"
	.size	.L.str.1, 14

	.type	myoptopt,@object        # @myoptopt
	.comm	myoptopt,4,4
	.type	myoptarg,@object        # @myoptarg
	.comm	myoptarg,8,8

	.ident	"FreeBSD clang version 9.0.1 (git@github.com:llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05) (based on LLVM 9.0.1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
