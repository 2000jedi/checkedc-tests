	.text
	.file	"lib_unix.c"
	.globl	unix_server             # -- Begin function unix_server
	.p2align	4, 0x90
	.type	unix_server,@function
unix_server:                            # @unix_server
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$112, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, %r14
	movl	$1, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	socket
	testl	%eax, %eax
	js	.LBB0_4
# %bb.1:
	movl	%eax, %ebx
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -128(%rbp)
	movups	%xmm0, -38(%rbp)
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -112(%rbp)
	movb	$1, -127(%rbp)
	leaq	-126(%rbp), %rdi
	movq	%r14, %rsi
	callq	strcpy
	leaq	-128(%rbp), %rsi
	movl	%ebx, %edi
	movl	$106, %edx
	callq	bind
	testl	%eax, %eax
	js	.LBB0_5
# %bb.2:
	movl	%ebx, %edi
	movl	$100, %esi
	callq	listen
	testl	%eax, %eax
	js	.LBB0_6
# %bb.3:
	movl	%ebx, %eax
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_4:
	.cfi_def_cfa %rbp, 16
	movl	$.L.str, %edi
	callq	perror
	movl	$1, %edi
	callq	exit
.LBB0_5:
	movl	$.L.str.1, %edi
	callq	perror
	movl	$2, %edi
	callq	exit
.LBB0_6:
	movl	$.L.str.2, %edi
	callq	perror
	movl	$4, %edi
	callq	exit
.Lfunc_end0:
	.size	unix_server, .Lfunc_end0-unix_server
	.cfi_endproc
                                        # -- End function
	.globl	unix_done               # -- Begin function unix_done
	.p2align	4, 0x90
	.type	unix_done,@function
unix_done:                              # @unix_done
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
	movq	%rsi, %rbx
	callq	close
	movq	%rbx, %rdi
	callq	unlink
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	unix_done, .Lfunc_end1-unix_done
	.cfi_endproc
                                        # -- End function
	.globl	unix_accept             # -- Begin function unix_accept
	.p2align	4, 0x90
	.type	unix_accept,@function
unix_accept:                            # @unix_accept
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
	subq	$120, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%edi, %ebx
	movl	$106, -28(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm0, -112(%rbp)
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movups	%xmm0, -54(%rbp)
	leaq	-144(%rbp), %r14
	leaq	-28(%rbp), %r15
	.p2align	4, 0x90
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movl	%ebx, %edi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	accept
	testl	%eax, %eax
	jns	.LBB2_4
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	callq	__error
	cmpl	$4, (%rax)
	je	.LBB2_1
# %bb.3:
	movl	$.L.str.3, %edi
	callq	perror
	movl	$6, %edi
	callq	exit
.LBB2_4:
	addq	$120, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	unix_accept, .Lfunc_end2-unix_accept
	.cfi_endproc
                                        # -- End function
	.globl	unix_connect            # -- Begin function unix_connect
	.p2align	4, 0x90
	.type	unix_connect,@function
unix_connect:                           # @unix_connect
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$112, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, %r14
	movl	$1, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	socket
	testl	%eax, %eax
	js	.LBB3_3
# %bb.1:
	movl	%eax, %ebx
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -128(%rbp)
	movups	%xmm0, -38(%rbp)
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -112(%rbp)
	movb	$1, -127(%rbp)
	leaq	-126(%rbp), %rdi
	movq	%r14, %rsi
	callq	strcpy
	leaq	-128(%rbp), %rsi
	movl	%ebx, %edi
	movl	$106, %edx
	callq	connect
	testl	%eax, %eax
	js	.LBB3_4
# %bb.2:
	movl	%ebx, %eax
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB3_3:
	.cfi_def_cfa %rbp, 16
	movl	$.L.str, %edi
	callq	perror
	movl	$1, %edi
	callq	exit
.LBB3_4:
	movl	$.L.str.4, %edi
	callq	perror
	movl	$4, %edi
	callq	exit
.Lfunc_end3:
	.size	unix_connect, .Lfunc_end3-unix_connect
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
	.asciz	"listen"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"accept"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"connect"
	.size	.L.str.4, 8


	.ident	"FreeBSD clang version 9.0.1 (git@github.com:llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05) (based on LLVM 9.0.1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
