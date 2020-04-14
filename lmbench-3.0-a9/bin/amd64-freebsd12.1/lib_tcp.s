	.text
	.file	"lib_tcp.c"
	.globl	tcp_server              # -- Begin function tcp_server
	.p2align	4, 0x90
	.type	tcp_server,@function
tcp_server:                             # @tcp_server
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
	subq	$40, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%esi, %r15d
	movl	%edi, %r14d
	movl	$2, %edi
	movl	$1, %esi
	movl	$6, %edx
	callq	socket
	testl	%eax, %eax
	js	.LBB0_11
# %bb.1:
	movl	%eax, %ebx
	movl	%eax, %edi
	movl	%r15d, %esi
	callq	sock_optimize
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -48(%rbp)
	movb	$2, -47(%rbp)
	testl	%r14d, %r14d
	jns	.LBB0_3
# %bb.2:
	movl	%r14d, %eax
	negl	%eax
	rolw	$8, %ax
	movw	%ax, -46(%rbp)
.LBB0_3:
	leaq	-48(%rbp), %rsi
	movl	%ebx, %edi
	movl	$16, %edx
	callq	bind
	testl	%eax, %eax
	js	.LBB0_12
# %bb.4:
	movl	%ebx, %edi
	movl	$100, %esi
	callq	listen
	testl	%eax, %eax
	js	.LBB0_13
# %bb.5:
	testl	%r14d, %r14d
	jle	.LBB0_10
# %bb.6:
	movslq	%r14d, %r14
	movl	$1, %esi
	movq	%r14, %rdi
	callq	pmap_unset
	movl	$16, -28(%rbp)
	leaq	-64(%rbp), %rsi
	leaq	-28(%rbp), %rdx
	movl	%ebx, %edi
	callq	getsockname
	testl	%eax, %eax
	js	.LBB0_7
# %bb.8:
	movzwl	-62(%rbp), %eax
	rolw	$8, %ax
	movzwl	%ax, %ecx
.LBB0_9:
	movl	$1, %esi
	movq	%r14, %rdi
	movl	$6, %edx
	callq	pmap_set
	testl	%eax, %eax
	je	.LBB0_14
.LBB0_10:
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_7:
	.cfi_def_cfa %rbp, 16
	movl	$.L.str.8, %edi
	callq	perror
	movl	$65535, %ecx            # imm = 0xFFFF
	jmp	.LBB0_9
.LBB0_11:
	movl	$.L.str, %edi
	callq	perror
	movl	$1, %edi
	callq	exit
.LBB0_12:
	movl	$.L.str.1, %edi
	callq	perror
	movl	$2, %edi
	callq	exit
.LBB0_13:
	movl	$.L.str.2, %edi
	callq	perror
	movl	$4, %edi
	callq	exit
.LBB0_14:
	movl	$.L.str.3, %edi
	callq	perror
	movl	$5, %edi
	callq	exit
.Lfunc_end0:
	.size	tcp_server, .Lfunc_end0-tcp_server
	.cfi_endproc
                                        # -- End function
	.globl	sock_optimize           # -- Begin function sock_optimize
	.p2align	4, 0x90
	.type	sock_optimize,@function
sock_optimize:                          # @sock_optimize
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
	movl	%esi, %r14d
	movl	%edi, %ebx
	testb	$1, %r14b
	je	.LBB1_4
# %bb.1:
	movl	$1048576, -32(%rbp)     # imm = 0x100000
	leaq	-32(%rbp), %rcx
	movl	%ebx, %edi
	movl	$65535, %esi            # imm = 0xFFFF
	movl	$4098, %edx             # imm = 0x1002
	movl	$4, %r8d
	callq	setsockopt
	testl	%eax, %eax
	je	.LBB1_4
# %bb.2:
	leaq	-32(%rbp), %r15
	.p2align	4, 0x90
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	sarl	-32(%rbp)
	movl	%ebx, %edi
	movl	$65535, %esi            # imm = 0xFFFF
	movl	$4098, %edx             # imm = 0x1002
	movq	%r15, %rcx
	movl	$4, %r8d
	callq	setsockopt
	testl	%eax, %eax
	jne	.LBB1_3
.LBB1_4:
	testb	$2, %r14b
	je	.LBB1_8
# %bb.5:
	movl	$1048576, -28(%rbp)     # imm = 0x100000
	leaq	-28(%rbp), %rcx
	movl	%ebx, %edi
	movl	$65535, %esi            # imm = 0xFFFF
	movl	$4097, %edx             # imm = 0x1001
	movl	$4, %r8d
	callq	setsockopt
	testl	%eax, %eax
	je	.LBB1_8
# %bb.6:
	leaq	-28(%rbp), %r15
	.p2align	4, 0x90
.LBB1_7:                                # =>This Inner Loop Header: Depth=1
	sarl	-28(%rbp)
	movl	%ebx, %edi
	movl	$65535, %esi            # imm = 0xFFFF
	movl	$4097, %edx             # imm = 0x1001
	movq	%r15, %rcx
	movl	$4, %r8d
	callq	setsockopt
	testl	%eax, %eax
	jne	.LBB1_7
.LBB1_8:
	testb	$8, %r14b
	je	.LBB1_11
# %bb.9:
	movl	$1, -36(%rbp)
	leaq	-36(%rbp), %rcx
	movl	%ebx, %edi
	movl	$65535, %esi            # imm = 0xFFFF
	movl	$4, %edx
	movl	$4, %r8d
	callq	setsockopt
	cmpl	$-1, %eax
	je	.LBB1_10
.LBB1_11:
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_10:
	.cfi_def_cfa %rbp, 16
	movl	$.L.str.7, %edi
	callq	perror
	jmp	.LBB1_11
.Lfunc_end1:
	.size	sock_optimize, .Lfunc_end1-sock_optimize
	.cfi_endproc
                                        # -- End function
	.globl	sockport                # -- Begin function sockport
	.p2align	4, 0x90
	.type	sockport,@function
sockport:                               # @sockport
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$16, -4(%rbp)
	leaq	-24(%rbp), %rsi
	leaq	-4(%rbp), %rdx
	callq	getsockname
	testl	%eax, %eax
	js	.LBB2_1
# %bb.2:
	movzwl	-22(%rbp), %eax
	rolw	$8, %ax
	movzwl	%ax, %eax
.LBB2_3:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_1:
	.cfi_def_cfa %rbp, 16
	movl	$.L.str.8, %edi
	callq	perror
	movl	$-1, %eax
	jmp	.LBB2_3
.Lfunc_end2:
	.size	sockport, .Lfunc_end2-sockport
	.cfi_endproc
                                        # -- End function
	.globl	tcp_done                # -- Begin function tcp_done
	.p2align	4, 0x90
	.type	tcp_done,@function
tcp_done:                               # @tcp_done
	.cfi_startproc
# %bb.0:
	testl	%edi, %edi
	jle	.LBB3_2
# %bb.1:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movslq	%edi, %rdi
	movl	$1, %esi
	callq	pmap_unset
	popq	%rbp
	.cfi_def_cfa %rsp, 8
.LBB3_2:
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	tcp_done, .Lfunc_end3-tcp_done
	.cfi_endproc
                                        # -- End function
	.globl	tcp_accept              # -- Begin function tcp_accept
	.p2align	4, 0x90
	.type	tcp_accept,@function
tcp_accept:                             # @tcp_accept
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%esi, %r14d
	movl	%edi, %r13d
	movl	$16, -44(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	leaq	-64(%rbp), %r15
	leaq	-44(%rbp), %r12
	.p2align	4, 0x90
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	movl	%r13d, %edi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	accept
	testl	%eax, %eax
	jns	.LBB4_4
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	callq	__error
	cmpl	$4, (%rax)
	je	.LBB4_1
# %bb.3:
	movl	$.L.str.4, %edi
	callq	perror
	movl	$6, %edi
	callq	exit
.LBB4_4:
	movl	%eax, %ebx
	movl	%eax, %edi
	movl	%r14d, %esi
	callq	sock_optimize
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	tcp_accept, .Lfunc_end4-tcp_accept
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function tcp_connect
.LCPI5_0:
	.zero	16
	.text
	.globl	tcp_connect
	.p2align	4, 0x90
	.type	tcp_connect,@function
tcp_connect:                            # @tcp_connect
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%edx, %r12d
	movl	%esi, %ebx
	movq	%rdi, %r14
	movl	$2, %edi
	movl	$1, %esi
	movl	$6, %edx
	callq	socket
	testl	%eax, %eax
	js	.LBB5_27
# %bb.1:
	movl	%eax, %r15d
	testb	$4, %r12b
	je	.LBB5_9
# %bb.2:
	movzwl	tcp_connect.port(%rip), %eax
	testw	%ax, %ax
	jne	.LBB5_5
# %bb.3:
	callq	getpid
	shll	$4, %eax
	movw	%ax, tcp_connect.port(%rip)
	movzwl	%ax, %ecx
	cmpl	$1023, %ecx             # imm = 0x3FF
	ja	.LBB5_5
# %bb.4:
	addl	$1024, %eax             # imm = 0x400
	movw	%ax, tcp_connect.port(%rip)
.LBB5_5:
	movl	%ebx, %r13d
	addl	$1, %eax
	movw	%ax, tcp_connect.port(%rip)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movb	$2, -63(%rbp)
	rolw	$8, %ax
	movw	%ax, -62(%rbp)
	leaq	-64(%rbp), %rsi
	movl	%r15d, %edi
	movl	$16, %edx
	callq	bind
	cmpl	$-1, %eax
	jne	.LBB5_8
# %bb.6:
	leaq	-64(%rbp), %rbx
	.p2align	4, 0x90
.LBB5_7:                                # =>This Inner Loop Header: Depth=1
	movzwl	tcp_connect.port(%rip), %eax
	addl	$1, %eax
	movw	%ax, tcp_connect.port(%rip)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movb	$2, -63(%rbp)
	rolw	$8, %ax
	movw	%ax, -62(%rbp)
	movl	%r15d, %edi
	movq	%rbx, %rsi
	movl	$16, %edx
	callq	bind
	cmpl	$-1, %eax
	je	.LBB5_7
.LBB5_8:
	movl	%r13d, %ebx
.LBB5_9:
	movl	%r15d, %edi
	movl	%r12d, %esi
	callq	sock_optimize
	cmpq	$0, tcp_connect.h(%rip)
	movslq	%ebx, %r13
	je	.LBB5_12
# %bb.10:
	cmpq	%r14, tcp_connect.save_host(%rip)
	jne	.LBB5_12
# %bb.11:
	cmpq	%r13, tcp_connect.save_prog(%rip)
	je	.LBB5_18
.LBB5_12:
	movq	%r14, tcp_connect.save_host(%rip)
	movq	%r13, tcp_connect.save_prog(%rip)
	movq	%r14, %rdi
	callq	gethostbyname
	movq	%rax, tcp_connect.h(%rip)
	testq	%rax, %rax
	je	.LBB5_28
# %bb.13:
	xorps	%xmm0, %xmm0
	movups	%xmm0, tcp_connect.s(%rip)
	movb	$2, tcp_connect.s+1(%rip)
	movq	24(%rax), %rcx
	movq	(%rcx), %rdi
	movslq	20(%rax), %rdx
	movl	$tcp_connect.s+4, %esi
	callq	bcopy
	testl	%ebx, %ebx
	jle	.LBB5_16
# %bb.14:
	movl	$tcp_connect.s, %edi
	movl	$1, %edx
	movq	%r13, %rsi
	movl	$6, %ecx
	callq	pmap_getport
                                        # kill: def $ax killed $ax def $eax
	testw	%ax, %ax
	jne	.LBB5_17
# %bb.15:
	movl	$.L.str.5, %edi
	callq	perror
	movl	$3, %edi
	callq	exit
.LBB5_16:
	movl	%ebx, %eax
	negl	%eax
.LBB5_17:
	rolw	$8, %ax
	movw	%ax, tcp_connect.s+2(%rip)
.LBB5_18:
	movl	$tcp_connect.s, %esi
	movl	%r15d, %edi
	movl	$16, %edx
	callq	connect
	testl	%eax, %eax
	js	.LBB5_19
# %bb.25:
	movl	$0, tcp_connect.tries(%rip)
	jmp	.LBB5_26
.LBB5_19:
	callq	__error
	cmpl	$54, (%rax)
	je	.LBB5_22
# %bb.20:
	callq	__error
	cmpl	$61, (%rax)
	je	.LBB5_22
# %bb.21:
	callq	__error
	cmpl	$35, (%rax)
	jne	.LBB5_24
.LBB5_22:
	movl	%r15d, %edi
	callq	close
	movl	tcp_connect.tries(%rip), %eax
	leal	1(%rax), %ecx
	movl	%ecx, tcp_connect.tries(%rip)
	movl	$-1, %r15d
	cmpl	$9, %eax
	jg	.LBB5_26
# %bb.23:
	movq	%r14, %rdi
	movl	%ebx, %esi
	movl	%r12d, %edx
	callq	tcp_connect
	movl	%eax, %r15d
.LBB5_26:
	movl	%r15d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_27:
	.cfi_def_cfa %rbp, 16
	movl	$.L.str, %edi
	callq	perror
	movl	$1, %edi
	callq	exit
.LBB5_28:
	movq	%r14, %rdi
	callq	perror
	movl	$2, %edi
	callq	exit
.LBB5_24:
	movl	$.L.str.6, %edi
	callq	perror
	movl	$4, %edi
	callq	exit
.Lfunc_end5:
	.size	tcp_connect, .Lfunc_end5-tcp_connect
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
	.asciz	"pmap_set"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"accept"
	.size	.L.str.4, 7

	.type	tcp_connect.h,@object   # @tcp_connect.h
	.local	tcp_connect.h
	.comm	tcp_connect.h,8,8
	.type	tcp_connect.s,@object   # @tcp_connect.s
	.local	tcp_connect.s
	.comm	tcp_connect.s,16,4
	.type	tcp_connect.save_prog,@object # @tcp_connect.save_prog
	.local	tcp_connect.save_prog
	.comm	tcp_connect.save_prog,8,8
	.type	tcp_connect.save_host,@object # @tcp_connect.save_host
	.local	tcp_connect.save_host
	.comm	tcp_connect.save_host,8,8
	.type	tcp_connect.tries,@object # @tcp_connect.tries
	.local	tcp_connect.tries
	.comm	tcp_connect.tries,4,4
	.type	tcp_connect.port,@object # @tcp_connect.port
	.local	tcp_connect.port
	.comm	tcp_connect.port,2,2
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"lib TCP: No port found"
	.size	.L.str.5, 23

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"connect"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"SO_REUSEADDR"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"getsockname"
	.size	.L.str.8, 12


	.ident	"FreeBSD clang version 9.0.1 (git@github.com:llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05) (based on LLVM 9.0.1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tcp_connect.s
