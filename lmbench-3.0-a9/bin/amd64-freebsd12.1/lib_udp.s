	.text
	.file	"lib_udp.c"
	.globl	udp_server              # -- Begin function udp_server
	.p2align	4, 0x90
	.type	udp_server,@function
udp_server:                             # @udp_server
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%esi, %r15d
	movq	%rdi, %r14
	movl	$2, %edi
	movl	$2, %esi
	movl	$17, %edx
	callq	socket
	testl	%eax, %eax
	js	.LBB0_3
# %bb.1:
	movl	%eax, %ebx
	movl	%eax, %edi
	movl	%r15d, %esi
	callq	sock_optimize
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -48(%rbp)
	movb	$2, -47(%rbp)
	rolw	$8, %r14w
	movw	%r14w, -46(%rbp)
	leaq	-48(%rbp), %rsi
	movl	%ebx, %edi
	movl	$16, %edx
	callq	bind
	testl	%eax, %eax
	js	.LBB0_4
# %bb.2:
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_3:
	.cfi_def_cfa %rbp, 16
	movl	$.L.str, %edi
	callq	perror
	movl	$1, %edi
	callq	exit
.LBB0_4:
	movl	$.L.str.1, %edi
	callq	perror
	movl	$2, %edi
	callq	exit
.Lfunc_end0:
	.size	udp_server, .Lfunc_end0-udp_server
	.cfi_endproc
                                        # -- End function
	.globl	udp_done                # -- Begin function udp_done
	.p2align	4, 0x90
	.type	udp_done,@function
udp_done:                               # @udp_done
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$1, %esi
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	jmp	pmap_unset              # TAILCALL
.Lfunc_end1:
	.size	udp_done, .Lfunc_end1-udp_done
	.cfi_endproc
                                        # -- End function
	.globl	udp_connect             # -- Begin function udp_connect
	.p2align	4, 0x90
	.type	udp_connect,@function
udp_connect:                            # @udp_connect
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%edx, %r12d
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$2, %edi
	movl	$2, %esi
	movl	$17, %edx
	callq	socket
	testl	%eax, %eax
	js	.LBB2_4
# %bb.1:
	movl	%eax, %ebx
	movl	%eax, %edi
	movl	%r12d, %esi
	callq	sock_optimize
	movq	%r15, %rdi
	callq	gethostbyname
	testq	%rax, %rax
	je	.LBB2_5
# %bb.2:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -48(%rbp)
	movb	$2, -47(%rbp)
	movq	24(%rax), %rcx
	movq	(%rcx), %rdi
	leaq	-44(%rbp), %rsi
	movslq	20(%rax), %rdx
	callq	bcopy
	rolw	$8, %r14w
	movw	%r14w, -46(%rbp)
	leaq	-48(%rbp), %rsi
	movl	%ebx, %edi
	movl	$16, %edx
	callq	connect
	testl	%eax, %eax
	js	.LBB2_6
# %bb.3:
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_4:
	.cfi_def_cfa %rbp, 16
	movl	$.L.str, %edi
	callq	perror
	movl	$1, %edi
	callq	exit
.LBB2_5:
	movq	%r15, %rdi
	callq	perror
	movl	$2, %edi
	callq	exit
.LBB2_6:
	movl	$.L.str.2, %edi
	callq	perror
	movl	$4, %edi
	callq	exit
.Lfunc_end2:
	.size	udp_connect, .Lfunc_end2-udp_connect
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"socket"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"bind"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"connect"
	.size	.L.str.2, 8


	.ident	"FreeBSD clang version 9.0.1 (git@github.com:llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05) (based on LLVM 9.0.1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
