	.text
	.file	"lib_timing.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function rusage
.LCPI0_0:
	.quad	4696837146684686336     # double 1.0E+6
.LCPI0_1:
	.quad	4636737291354636288     # double 100
	.text
	.globl	rusage
	.p2align	4, 0x90
	.type	rusage,@function
rusage:                                 # @rusage
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	cvtsi2sdq	ru_stop+16(%rip), %xmm7
	cvtsi2sdq	ru_stop+24(%rip), %xmm1
	cvtsi2sdq	ru_start+16(%rip), %xmm6
	cvtsi2sdq	ru_start+24(%rip), %xmm5
	cvtsi2sdq	ru_stop(%rip), %xmm4
	cvtsi2sdq	ru_stop+8(%rip), %xmm2
	cvtsi2sdq	ru_start(%rip), %xmm8
	cvtsi2sdq	ru_start+8(%rip), %xmm0
	movq	stop_tv(%rip), %rdx
	movq	start_tv(%rip), %rsi
	movq	%rdx, %rax
	subq	%rsi, %rax
	movq	stop_tv+8(%rip), %rcx
	subq	start_tv+8(%rip), %rcx
	movq	%rax, %r8
	movq	%rcx, %r9
	js	.LBB0_1
# %bb.4:
	cmpq	%rsi, %rdx
	jl	.LBB0_5
	jmp	.LBB0_6
.LBB0_1:
	testq	%rax, %rax
	jle	.LBB0_5
# %bb.2:
	movq	%rcx, %r9
	addq	$1000000, %r9           # imm = 0xF4240
	js	.LBB0_21
# %bb.3:
	leaq	-1(%rax), %r8
	cmpq	%rsi, %rdx
	jge	.LBB0_6
.LBB0_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
.LBB0_6:
	movq	%rax, %r10
	movq	%rcx, %r11
	testq	%rcx, %rcx
	js	.LBB0_7
# %bb.10:
	cmpq	%rsi, %rdx
	jl	.LBB0_11
	jmp	.LBB0_12
.LBB0_7:
	testq	%rax, %rax
	jle	.LBB0_11
# %bb.8:
	movq	%rcx, %r11
	addq	$1000000, %r11          # imm = 0xF4240
	js	.LBB0_21
# %bb.9:
	leaq	-1(%rax), %r10
	cmpq	%rsi, %rdx
	jge	.LBB0_12
.LBB0_11:
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
.LBB0_12:
	movq	ftiming(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB0_13
# %bb.14:
	testq	%rcx, %rcx
	js	.LBB0_15
.LBB0_18:
	cmpq	%rsi, %rdx
	jl	.LBB0_19
	jmp	.LBB0_20
.LBB0_13:
	movq	__stderrp(%rip), %rdi
	movq	%rdi, ftiming(%rip)
	testq	%rcx, %rcx
	jns	.LBB0_18
.LBB0_15:
	testq	%rax, %rax
	jle	.LBB0_19
# %bb.16:
	addq	$1000000, %rcx          # imm = 0xF4240
	js	.LBB0_21
# %bb.17:
	addq	$-1, %rax
	cmpq	%rsi, %rdx
	jge	.LBB0_20
.LBB0_19:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB0_20:
	movsd	.LCPI0_0(%rip), %xmm3   # xmm3 = mem[0],zero
	divsd	%xmm3, %xmm1
	addsd	%xmm7, %xmm1
	divsd	%xmm3, %xmm5
	addsd	%xmm6, %xmm5
	subsd	%xmm5, %xmm1
	divsd	%xmm3, %xmm2
	addsd	%xmm4, %xmm2
	divsd	%xmm3, %xmm0
	addsd	%xmm8, %xmm0
	xorps	%xmm3, %xmm3
	cvtsi2sd	%r9, %xmm3
	xorps	%xmm4, %xmm4
	cvtsi2sd	%r8, %xmm4
	subsd	%xmm0, %xmm2
	divsd	.LCPI0_0(%rip), %xmm3
	addsd	%xmm4, %xmm3
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r11, %xmm0
	movapd	%xmm1, %xmm4
	addsd	%xmm2, %xmm4
	subsd	%xmm4, %xmm3
	xorps	%xmm4, %xmm4
	cvtsi2sd	%r10, %xmm4
	divsd	.LCPI0_0(%rip), %xmm0
	addsd	%xmm4, %xmm0
	movapd	%xmm3, %xmm4
	divsd	%xmm0, %xmm4
	mulsd	.LCPI0_1(%rip), %xmm4
	xorps	%xmm5, %xmm5
	cvtsi2sd	%rax, %xmm5
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rcx, %xmm0
	divsd	.LCPI0_0(%rip), %xmm0
	addsd	%xmm5, %xmm0
	movl	$.L.str, %esi
	movb	$5, %al
	callq	fprintf
	movl	ru_stop+88(%rip), %edx
	subl	ru_start+88(%rip), %edx
	movl	ru_stop+96(%rip), %ecx
	subl	ru_start+96(%rip), %ecx
	movl	ru_stop+64(%rip), %r8d
	subl	ru_start+64(%rip), %r8d
	movl	ru_stop+72(%rip), %r9d
	subl	ru_start+72(%rip), %r9d
	movq	ftiming(%rip), %rdi
	movdqu	ru_stop+128(%rip), %xmm0
	movdqu	ru_start+128(%rip), %xmm1
	psubq	%xmm1, %xmm0
	movd	%xmm0, %eax
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %esi
	addl	%eax, %esi
	movl	%esi, (%rsp)
	movl	$.L.str.1, %esi
	xorl	%eax, %eax
	callq	fprintf
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_21:
	.cfi_def_cfa %rbp, 16
	movl	$.L__func__.tvsub, %edi
	movl	$.L.str.24, %esi
	movl	$.L.str.25, %ecx
	movl	$1099, %edx             # imm = 0x44B
	callq	__assert
.Lfunc_end0:
	.size	rusage, .Lfunc_end0-rusage
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function timespent
.LCPI1_0:
	.quad	4696837146684686336     # double 1.0E+6
	.text
	.globl	timespent
	.p2align	4, 0x90
	.type	timespent,@function
timespent:                              # @timespent
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	stop_tv(%rip), %rdx
	movq	start_tv(%rip), %rsi
	movq	%rdx, %rax
	subq	%rsi, %rax
	movq	stop_tv+8(%rip), %rcx
	subq	start_tv+8(%rip), %rcx
	js	.LBB1_1
# %bb.4:
	cmpq	%rsi, %rdx
	jl	.LBB1_5
	jmp	.LBB1_6
.LBB1_1:
	testq	%rax, %rax
	jle	.LBB1_5
# %bb.2:
	addq	$1000000, %rcx          # imm = 0xF4240
	js	.LBB1_7
# %bb.3:
	addq	$-1, %rax
	cmpq	%rsi, %rdx
	jge	.LBB1_6
.LBB1_5:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB1_6:
	cvtsi2sd	%rax, %xmm1
	cvtsi2sd	%rcx, %xmm0
	divsd	.LCPI1_0(%rip), %xmm0
	addsd	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_7:
	.cfi_def_cfa %rbp, 16
	movl	$.L__func__.tvsub, %edi
	movl	$.L.str.24, %esi
	movl	$.L.str.25, %ecx
	movl	$1099, %edx             # imm = 0x44B
	callq	__assert
.Lfunc_end1:
	.size	timespent, .Lfunc_end1-timespent
	.cfi_endproc
                                        # -- End function
	.globl	lmbench_usage           # -- Begin function lmbench_usage
	.p2align	4, 0x90
	.type	lmbench_usage,@function
lmbench_usage:                          # @lmbench_usage
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdx, %rcx
	movq	__stderrp(%rip), %rdi
	movq	(%rsi), %rdx
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$-1, %edi
	callq	exit
.Lfunc_end2:
	.size	lmbench_usage, .Lfunc_end2-lmbench_usage
	.cfi_endproc
                                        # -- End function
	.globl	sigchld_wait_handler    # -- Begin function sigchld_wait_handler
	.p2align	4, 0x90
	.type	sigchld_wait_handler,@function
sigchld_wait_handler:                   # @sigchld_wait_handler
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%edi, %edi
	callq	wait
	movl	$sigchld_wait_handler, %esi
	movl	$20, %edi
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	jmp	signal                  # TAILCALL
.Lfunc_end3:
	.size	sigchld_wait_handler, .Lfunc_end3-sigchld_wait_handler
	.cfi_endproc
                                        # -- End function
	.globl	benchmp_sigterm         # -- Begin function benchmp_sigterm
	.p2align	4, 0x90
	.type	benchmp_sigterm,@function
benchmp_sigterm:                        # @benchmp_sigterm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	$1, benchmp_sigterm_received(%rip)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	benchmp_sigterm, .Lfunc_end4-benchmp_sigterm
	.cfi_endproc
                                        # -- End function
	.globl	benchmp_sigchld         # -- Begin function benchmp_sigchld
	.p2align	4, 0x90
	.type	benchmp_sigchld,@function
benchmp_sigchld:                        # @benchmp_sigchld
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$20, %edi
	xorl	%esi, %esi
	callq	signal
	movb	$1, benchmp_sigchld_received(%rip)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	benchmp_sigchld, .Lfunc_end5-benchmp_sigchld
	.cfi_endproc
                                        # -- End function
	.globl	benchmp_sigalrm         # -- Begin function benchmp_sigalrm
	.p2align	4, 0x90
	.type	benchmp_sigalrm,@function
benchmp_sigalrm:                        # @benchmp_sigalrm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$1, %esi
	movl	$14, %edi
	callq	signal
	movl	benchmp_sigalrm_pid(%rip), %edi
	movl	$15, %esi
	callq	kill
	movl	$1, benchmp_sigalrm_timeout(%rip)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	benchmp_sigalrm, .Lfunc_end6-benchmp_sigalrm
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function benchmp
.LCPI7_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI7_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI7_2:
	.quad	4696837146684686336     # double 1.0E+6
.LCPI7_3:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
	.text
	.globl	benchmp
	.p2align	4, 0x90
	.type	benchmp,@function
benchmp:                                # @benchmp
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
	subq	$88, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%r9d, %r12d
	movl	%r8d, %ebx
	movl	%ecx, %r15d
	movq	%rdx, %r13
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	16(%rbp), %r14d
	callq	init_timing
	movl	long_enough(%rip), %eax
	cmpl	%r15d, %eax
	cmovgel	%eax, %r15d
	testl	%r14d, %r14d
	jns	.LBB7_2
# %bb.1:
	cmpl	$999999, %r15d          # imm = 0xF423F
	movl	$1, %eax
	movl	$11, %r14d
	cmovgl	%eax, %r14d
	cmpl	$1, %ebx
	cmovgl	%eax, %r14d
.LBB7_2:
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, start_tv(%rip)
	movapd	%xmm0, stop_tv(%rip)
	movq	$1, iterations(%rip)
	movl	$1, %eax
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	cmpl	$2, %ebx
	jl	.LBB7_19
# %bb.3:
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%r13, %rdx
	movl	%r15d, %ecx
	movl	$1, %r8d
	movl	%r12d, %r9d
	pushq	24(%rbp)
	pushq	%r14
	callq	benchmp
	addq	$16, %rsp
	movq	stop_tv(%rip), %rbx
	movq	start_tv(%rip), %rsi
	movq	%rbx, %rdx
	subq	%rsi, %rdx
	movq	stop_tv+8(%rip), %rcx
	subq	start_tv+8(%rip), %rcx
	movq	%rdx, %rax
	movq	%rcx, %rdi
	js	.LBB7_4
# %bb.7:
	cmpq	%rsi, %rbx
	jl	.LBB7_8
	jmp	.LBB7_9
.LBB7_4:
	testq	%rdx, %rdx
	jle	.LBB7_8
# %bb.5:
	movq	%rcx, %rdi
	addq	$1000000, %rdi          # imm = 0xF4240
	js	.LBB7_39
# %bb.6:
	leaq	-1(%rdx), %rax
	cmpq	%rsi, %rbx
	jge	.LBB7_9
.LBB7_8:
	xorl	%eax, %eax
	xorl	%edi, %edi
.LBB7_9:
	imulq	$1000000, %rax, %rax    # imm = 0xF4240
	addq	%rdi, %rax
	je	.LBB7_38
# %bb.10:
	movq	iterations(%rip), %rax
	cmpl	$999999, %r15d          # imm = 0xF423F
	jg	.LBB7_18
# %bb.11:
	testq	%rcx, %rcx
	jns	.LBB7_15
# %bb.12:
	testq	%rdx, %rdx
	jle	.LBB7_16
# %bb.13:
	addq	$1000000, %rcx          # imm = 0xF4240
	js	.LBB7_39
# %bb.14:
	addq	$-1, %rdx
.LBB7_15:
	cmpq	%rsi, %rbx
	jge	.LBB7_17
.LBB7_16:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
.LBB7_17:
	movq	%rax, %xmm0
	punpckldq	.LCPI7_0(%rip), %xmm0 # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI7_1(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	mulsd	.LCPI7_2(%rip), %xmm1
	imulq	$1000000, %rdx, %rax    # imm = 0xF4240
	addq	%rcx, %rax
	movq	%rax, %xmm0
	punpckldq	.LCPI7_0(%rip), %xmm0 # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI7_1(%rip), %xmm0
	movapd	%xmm0, %xmm2
	unpckhpd	%xmm0, %xmm2    # xmm2 = xmm2[1],xmm0[1]
	addsd	%xmm0, %xmm2
	divsd	%xmm2, %xmm1
	movsd	.LCPI7_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rax, %rcx
	cvttsd2si	%xmm1, %rax
	ucomisd	%xmm0, %xmm1
	cmovaeq	%rcx, %rax
	addq	$1, %rax
.LBB7_18:
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, start_tv(%rip)
	movapd	%xmm0, stop_tv(%rip)
	movq	$1, iterations(%rip)
.LBB7_19:
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%r13, -120(%rbp)        # 8-byte Spill
	movq	%r14, -88(%rbp)         # 8-byte Spill
	movl	%r12d, %ebx
	leaq	-80(%rbp), %rdi
	callq	pipe
	testl	%eax, %eax
	js	.LBB7_38
# %bb.20:
	leaq	-72(%rbp), %rdi
	callq	pipe
	testl	%eax, %eax
	js	.LBB7_38
# %bb.21:
	leaq	-64(%rbp), %rdi
	callq	pipe
	testl	%eax, %eax
	js	.LBB7_38
# %bb.22:
	leaq	-56(%rbp), %rdi
	callq	pipe
	testl	%eax, %eax
	js	.LBB7_38
# %bb.23:
	movb	$0, benchmp_sigchld_received(%rip)
	movb	$0, benchmp_sigterm_received(%rip)
	movl	$benchmp_sigterm, %esi
	movl	$15, %edi
	callq	signal
	movq	%rax, benchmp_sigterm_handler(%rip)
	movl	$benchmp_sigchld, %esi
	movl	$20, %edi
	callq	signal
	movq	%rax, benchmp_sigchld_handler(%rip)
	movslq	-48(%rbp), %r14         # 4-byte Folded Reload
	leaq	(,%r14,4), %r12
	movq	%r12, %rdi
	callq	malloc
	testq	%rax, %rax
	je	.LBB7_38
# %bb.24:
	movq	%rax, %r13
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%r12, %rdx
	callq	memset
	movq	-48(%rbp), %r12         # 8-byte Reload
	testl	%r12d, %r12d
	jle	.LBB7_25
# %bb.26:
	xorl	%r12d, %r12d
.LBB7_27:                               # =>This Inner Loop Header: Depth=1
	cmpb	$0, benchmp_sigterm_received(%rip)
	jne	.LBB7_33
# %bb.28:                               #   in Loop: Header=BB7_27 Depth=1
	callq	fork
	movl	%eax, (%r13,%r12,4)
	cmpl	$-1, %eax
	je	.LBB7_33
# %bb.29:                               #   in Loop: Header=BB7_27 Depth=1
	testl	%eax, %eax
	je	.LBB7_40
# %bb.30:                               #   in Loop: Header=BB7_27 Depth=1
	addq	$1, %r12
	cmpq	%r12, %r14
	jne	.LBB7_27
# %bb.31:
	movq	-48(%rbp), %r12         # 8-byte Reload
	jmp	.LBB7_32
.LBB7_33:
	movl	$20, %edi
	xorl	%esi, %esi
	callq	signal
	movq	$-1, %r14
	testq	%r12, %r12
	je	.LBB7_35
	.p2align	4, 0x90
.LBB7_34:                               # =>This Inner Loop Header: Depth=1
	movl	-4(%r13,%r12,4), %ebx
	movl	%ebx, %edi
	movl	$15, %esi
	callq	kill
	movl	%ebx, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	waitpid
	addq	$-1, %r12
	jg	.LBB7_34
	jmp	.LBB7_35
.LBB7_25:
	xorl	%r14d, %r14d
.LBB7_32:
	movl	-76(%rbp), %edi
	callq	close
	movl	-72(%rbp), %edi
	callq	close
	movl	-64(%rbp), %edi
	callq	close
	movl	-56(%rbp), %edi
	callq	close
	movl	-80(%rbp), %edi
	movl	-68(%rbp), %esi
	movl	-60(%rbp), %edx
	movl	-52(%rbp), %ecx
	subq	$32, %rsp
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	%eax, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movq	%r13, %r8
	movl	%r12d, %r9d
	callq	benchmp_parent
	addq	$32, %rsp
.LBB7_35:
	movslq	%r15d, %rax
	imulq	$1125899907, %rax, %rax # imm = 0x431BDE83
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$49, %rax
	addl	%ecx, %eax
	cmpl	$2, %eax
	movl	$3, %ecx
	cmovgl	%eax, %ecx
	addl	$2, %ecx
	movl	%ecx, benchmp_sigalrm_timeout(%rip)
	movl	$20, %edi
	xorl	%esi, %esi
	callq	signal
	testq	%r14, %r14
	jle	.LBB7_37
	.p2align	4, 0x90
.LBB7_36:                               # =>This Inner Loop Header: Depth=1
	movl	-4(%r13,%r14,4), %ebx
	movl	%ebx, benchmp_sigalrm_pid(%rip)
	movl	$benchmp_sigalrm, %esi
	movl	$14, %edi
	callq	signal
	movq	%rax, benchmp_sigalrm_handler(%rip)
	movl	benchmp_sigalrm_timeout(%rip), %edi
	callq	alarm
	movl	%ebx, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	waitpid
	xorl	%edi, %edi
	callq	alarm
	movq	benchmp_sigalrm_handler(%rip), %rsi
	movl	$14, %edi
	callq	signal
	addq	$-1, %r14
	jg	.LBB7_36
.LBB7_37:
	movq	%r13, %rdi
	callq	free
.LBB7_38:
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB7_39:
	.cfi_def_cfa %rbp, 16
	movl	$.L__func__.tvsub, %edi
	movl	$.L.str.24, %esi
	movl	$.L.str.25, %ecx
	movl	$1099, %edx             # imm = 0x44B
	callq	__assert
.LBB7_40:
	movl	-80(%rbp), %edi
	callq	close
	movl	-68(%rbp), %edi
	callq	close
	movl	-60(%rbp), %edi
	callq	close
	movl	-52(%rbp), %edi
	callq	close
	movl	%r12d, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	handle_scheduler
	movl	-76(%rbp), %r8d
	movl	-72(%rbp), %r9d
	movl	-64(%rbp), %r10d
	movl	-56(%rbp), %r11d
	subq	$8, %rsp
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movl	%r12d, %ecx
	pushq	24(%rbp)
	pushq	-88(%rbp)               # 8-byte Folded Reload
	pushq	-48(%rbp)               # 8-byte Folded Reload
	pushq	-112(%rbp)              # 8-byte Folded Reload
	pushq	%r15
	pushq	%r11
	pushq	%r10
	callq	benchmp_child
	addq	$64, %rsp
	xorl	%edi, %edi
	callq	exit
.Lfunc_end7:
	.size	benchmp, .Lfunc_end7-benchmp
	.cfi_endproc
                                        # -- End function
	.globl	get_enough              # -- Begin function get_enough
	.p2align	4, 0x90
	.type	get_enough,@function
get_enough:                             # @get_enough
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
	movl	%edi, %ebx
	callq	init_timing
	movl	long_enough(%rip), %eax
	cmpl	%ebx, %eax
	cmovll	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	get_enough, .Lfunc_end8-get_enough
	.cfi_endproc
                                        # -- End function
	.globl	settime                 # -- Begin function settime
	.p2align	4, 0x90
	.type	settime,@function
settime:                                # @settime
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorps	%xmm0, %xmm0
	movups	%xmm0, start_tv(%rip)
	movabsq	$4835703278458516699, %rcx # imm = 0x431BDE82D7B634DB
	movq	%rdi, %rax
	mulq	%rcx
	shrq	$18, %rdx
	movq	%rdx, stop_tv(%rip)
	imulq	$1000000, %rdx, %rax    # imm = 0xF4240
	subq	%rax, %rdi
	movq	%rdi, stop_tv+8(%rip)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end9:
	.size	settime, .Lfunc_end9-settime
	.cfi_endproc
                                        # -- End function
	.globl	save_n                  # -- Begin function save_n
	.p2align	4, 0x90
	.type	save_n,@function
save_n:                                 # @save_n
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, iterations(%rip)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end10:
	.size	save_n, .Lfunc_end10-save_n
	.cfi_endproc
                                        # -- End function
	.globl	usecs_spent             # -- Begin function usecs_spent
	.p2align	4, 0x90
	.type	usecs_spent,@function
usecs_spent:                            # @usecs_spent
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	stop_tv(%rip), %rdx
	movq	start_tv(%rip), %rsi
	movq	%rdx, %rax
	subq	%rsi, %rax
	movq	stop_tv+8(%rip), %rcx
	subq	start_tv+8(%rip), %rcx
	js	.LBB11_1
# %bb.4:
	cmpq	%rsi, %rdx
	jl	.LBB11_5
	jmp	.LBB11_6
.LBB11_1:
	testq	%rax, %rax
	jle	.LBB11_5
# %bb.2:
	addq	$1000000, %rcx          # imm = 0xF4240
	js	.LBB11_7
# %bb.3:
	addq	$-1, %rax
	cmpq	%rsi, %rdx
	jge	.LBB11_6
.LBB11_5:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB11_6:
	imulq	$1000000, %rax, %rax    # imm = 0xF4240
	addq	%rcx, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB11_7:
	.cfi_def_cfa %rbp, 16
	movl	$.L__func__.tvsub, %edi
	movl	$.L.str.24, %esi
	movl	$.L.str.25, %ecx
	movl	$1099, %edx             # imm = 0x44B
	callq	__assert
.Lfunc_end11:
	.size	usecs_spent, .Lfunc_end11-usecs_spent
	.cfi_endproc
                                        # -- End function
	.globl	get_n                   # -- Begin function get_n
	.p2align	4, 0x90
	.type	get_n,@function
get_n:                                  # @get_n
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	iterations(%rip), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end12:
	.size	get_n, .Lfunc_end12-get_n
	.cfi_endproc
                                        # -- End function
	.globl	benchmp_child           # -- Begin function benchmp_child
	.p2align	4, 0x90
	.type	benchmp_child,@function
benchmp_child:                          # @benchmp_child
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
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	64(%rbp), %r14
	movl	56(%rbp), %eax
	movq	40(%rbp), %r10
	movl	32(%rbp), %r11d
	movl	24(%rbp), %r12d
	movl	16(%rbp), %r13d
	movl	48(%rbp), %esi
	movl	$1, %edi
	cmpl	$1, %esi
	jle	.LBB13_2
# %bb.1:
	movq	iterations(%rip), %rdi
.LBB13_2:
	movl	$0, _benchmp_child_state(%rip)
	movq	%r15, _benchmp_child_state+8(%rip)
	movq	%rbx, _benchmp_child_state+16(%rip)
	movq	%rdx, _benchmp_child_state+24(%rip)
	movl	%ecx, _benchmp_child_state+32(%rip)
	movl	%r8d, _benchmp_child_state+36(%rip)
	movl	%r9d, _benchmp_child_state+40(%rip)
	movl	%r13d, _benchmp_child_state+44(%rip)
	movl	%r12d, _benchmp_child_state+48(%rip)
	movl	%r11d, _benchmp_child_state+52(%rip)
	movq	%r10, _benchmp_child_state+56(%rip)
	movq	%rdi, _benchmp_child_state+80(%rip)
	movl	%esi, _benchmp_child_state+64(%rip)
	movl	%eax, _benchmp_child_state+68(%rip)
	movl	%eax, %ecx
	shll	$4, %ecx
	orl	$8, %ecx
	cmpl	$12, %eax
	movl	$184, %eax
	cmovgel	%ecx, %eax
	movq	%r14, _benchmp_child_state+72(%rip)
	movl	$1, _benchmp_child_state+88(%rip)
	movq	$0, _benchmp_child_state+96(%rip)
	movl	%eax, _benchmp_child_state+104(%rip)
	movslq	%eax, %rdi
	callq	malloc
	movq	%rax, _benchmp_child_state+112(%rip)
	testq	%rax, %rax
	je	.LBB13_12
# %bb.3:
	movl	$0, (%rax)
	movq	%rax, results(%rip)
	movq	$1, iterations(%rip)
	xorps	%xmm0, %xmm0
	movups	%xmm0, start_tv(%rip)
	movaps	%xmm0, stop_tv(%rip)
	movq	benchmp_sigchld_handler(%rip), %rsi
	testq	%rsi, %rsi
	jne	.LBB13_5
# %bb.4:
	movl	$benchmp_child_sigchld, %esi
.LBB13_5:
	movl	$20, %edi
	callq	signal
	testq	%r15, %r15
	je	.LBB13_7
# %bb.6:
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	*%r15
.LBB13_7:
	movq	benchmp_sigterm_handler(%rip), %rsi
	testq	%rsi, %rsi
	jne	.LBB13_9
# %bb.8:
	movl	$benchmp_child_sigterm, %esi
.LBB13_9:
	movl	$15, %edi
	callq	signal
	cmpb	$1, benchmp_sigterm_received(%rip)
	je	.LBB13_13
# %bb.10:
	movq	_benchmp_child_state+112(%rip), %rax
	movl	$0, (%rax)
	.p2align	4, 0x90
.LBB13_11:                              # =>This Inner Loop Header: Depth=1
	movl	$_benchmp_child_state, %edi
	callq	benchmp_interval
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	*%rbx
	jmp	.LBB13_11
.LBB13_12:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB13_13:
	.cfi_def_cfa %rbp, 16
	callq	benchmp_child_sigterm
.Lfunc_end13:
	.size	benchmp_child, .Lfunc_end13-benchmp_child
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function benchmp_parent
.LCPI14_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI14_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
.LCPI14_2:
	.quad	4294967295              # 0xffffffff
	.quad	4294967295              # 0xffffffff
.LCPI14_3:
	.quad	4841369599423283200     # 0x4330000000000000
	.quad	4841369599423283200     # 0x4330000000000000
.LCPI14_4:
	.quad	4985484787499139072     # 0x4530000000000000
	.quad	4985484787499139072     # 0x4530000000000000
.LCPI14_5:
	.quad	4985484787500187648     # double 1.9342813118337666E+25
	.quad	4985484787500187648     # double 1.9342813118337666E+25
	.text
	.globl	benchmp_parent
	.p2align	4, 0x90
	.type	benchmp_parent,@function
benchmp_parent:                         # @benchmp_parent
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
	subq	$440, %rsp              # imm = 0x1B8
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%r9d, %ebx
	movq	%r8, %r15
	movl	%edx, -96(%rbp)         # 4-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
                                        # kill: def $edi killed $edi def $rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	xorl	%edx, %edx
	xorl	%eax, %eax
	cmpb	$0, benchmp_sigchld_received(%rip)
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	jne	.LBB14_1
# %bb.2:
	testb	$1, benchmp_sigterm_received(%rip)
	movl	$0, %r14d
	movl	$0, %r13d
	jne	.LBB14_12
# %bb.3:
	movl	%ebx, %r13d
	movl	32(%rbp), %ebx
	movl	%ebx, %eax
	shll	$4, %eax
	orl	$8, %eax
	cmpl	$12, %ebx
	movl	$184, %r14d
	cmovll	%r14d, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movslq	%eax, %rdi
	callq	malloc
	movq	%rax, %r12
	imull	%r13d, %ebx
	movl	%ebx, %eax
	shll	$4, %eax
	orl	$8, %eax
	cmpl	$12, %ebx
	cmovll	%r14d, %eax
	movslq	%eax, %rdi
	callq	malloc
	movq	%rax, %rbx
	movl	%r13d, -48(%rbp)        # 4-byte Spill
	movslq	%r13d, %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	malloc
	testq	%r12, %r12
	je	.LBB14_71
# %bb.4:
	testq	%rbx, %rbx
	je	.LBB14_71
# %bb.5:
	testq	%rax, %rax
	je	.LBB14_71
# %bb.6:
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%r12, -72(%rbp)         # 8-byte Spill
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	je	.LBB14_20
# %bb.7:
	movslq	-88(%rbp), %rcx         # 4-byte Folded Reload
	movl	$1, %r12d
	leal	1(%rcx), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movq	%rcx, %r14
	shrq	$6, %r14
	xorl	%ebx, %ebx
	movq	%r12, %xmm0
	movdqa	%xmm0, -128(%rbp)       # 16-byte Spill
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %r12
	xorl	%r13d, %r13d
	jmp	.LBB14_8
	.p2align	4, 0x90
.LBB14_17:                              #   in Loop: Header=BB14_8 Depth=1
	xorl	%eax, %eax
.LBB14_19:                              #   in Loop: Header=BB14_8 Depth=1
	addl	%eax, %r13d
	movslq	%r13d, %rbx
	cmpl	-48(%rbp), %ebx         # 4-byte Folded Reload
	jae	.LBB14_20
.LBB14_8:                               # =>This Inner Loop Header: Depth=1
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, -320(%rbp)
	movdqa	%xmm0, -336(%rbp)
	movdqa	%xmm0, -352(%rbp)
	movdqa	%xmm0, -368(%rbp)
	movdqa	%xmm0, -384(%rbp)
	movdqa	%xmm0, -400(%rbp)
	movdqa	%xmm0, -416(%rbp)
	movdqa	%xmm0, -432(%rbp)
	movdqa	%xmm0, -304(%rbp)
	movdqa	%xmm0, -288(%rbp)
	movdqa	%xmm0, -272(%rbp)
	movdqa	%xmm0, -256(%rbp)
	movdqa	%xmm0, -240(%rbp)
	movdqa	%xmm0, -224(%rbp)
	movdqa	%xmm0, -208(%rbp)
	movdqa	%xmm0, -192(%rbp)
	orq	%r12, -432(%rbp,%r14,8)
	orq	%r12, -304(%rbp,%r14,8)
	movdqa	-128(%rbp), %xmm0       # 16-byte Reload
	movdqa	%xmm0, -160(%rbp)
	movl	-76(%rbp), %edi         # 4-byte Reload
	leaq	-432(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-304(%rbp), %rcx
	leaq	-160(%rbp), %r8
	callq	select
	cmpb	$0, benchmp_sigchld_received(%rip)
	jne	.LBB14_11
# %bb.9:                                #   in Loop: Header=BB14_8 Depth=1
	testb	$1, benchmp_sigterm_received(%rip)
	jne	.LBB14_11
# %bb.10:                               #   in Loop: Header=BB14_8 Depth=1
	testq	%r12, -304(%rbp,%r14,8)
	jne	.LBB14_11
# %bb.16:                               #   in Loop: Header=BB14_8 Depth=1
	testq	%r12, -432(%rbp,%r14,8)
	je	.LBB14_17
# %bb.18:                               #   in Loop: Header=BB14_8 Depth=1
	movq	-112(%rbp), %rdx        # 8-byte Reload
	subq	%rbx, %rdx
	movq	-88(%rbp), %rdi         # 8-byte Reload
                                        # kill: def $edi killed $edi killed $rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	read
	testl	%eax, %eax
	jns	.LBB14_19
	jmp	.LBB14_11
.LBB14_1:
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	jmp	.LBB14_12
.LBB14_20:
	movl	24(%rbp), %eax
	testl	%eax, %eax
	jle	.LBB14_22
# %bb.21:
	movl	%eax, %ecx
	imulq	$1125899907, %rcx, %rcx # imm = 0x431BDE83
	shrq	$50, %rcx
	movq	%rcx, -456(%rbp)
	imull	$1000000, %ecx, %ecx    # imm = 0xF4240
	subl	%ecx, %eax
	movq	%rax, -448(%rbp)
	leaq	-456(%rbp), %r8
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	select
.LBB14_22:
	movl	-100(%rbp), %edi        # 4-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	write
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	je	.LBB14_23
# %bb.24:
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movslq	%ecx, %r13
	movl	$1, %r14d
	shrq	$6, %r13
	leal	1(%rcx), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	xorl	%ebx, %ebx
	movq	%r14, %xmm0
	movdqa	%xmm0, -128(%rbp)       # 16-byte Spill
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %r14
	xorl	%r12d, %r12d
	jmp	.LBB14_25
	.p2align	4, 0x90
.LBB14_29:                              #   in Loop: Header=BB14_25 Depth=1
	xorl	%eax, %eax
.LBB14_31:                              #   in Loop: Header=BB14_25 Depth=1
	addl	%eax, %r12d
	movslq	%r12d, %rbx
	cmpl	-48(%rbp), %ebx         # 4-byte Folded Reload
	jae	.LBB14_32
.LBB14_25:                              # =>This Inner Loop Header: Depth=1
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, -320(%rbp)
	movdqa	%xmm0, -336(%rbp)
	movdqa	%xmm0, -352(%rbp)
	movdqa	%xmm0, -368(%rbp)
	movdqa	%xmm0, -384(%rbp)
	movdqa	%xmm0, -400(%rbp)
	movdqa	%xmm0, -416(%rbp)
	movdqa	%xmm0, -432(%rbp)
	movdqa	%xmm0, -304(%rbp)
	movdqa	%xmm0, -288(%rbp)
	movdqa	%xmm0, -272(%rbp)
	movdqa	%xmm0, -256(%rbp)
	movdqa	%xmm0, -240(%rbp)
	movdqa	%xmm0, -224(%rbp)
	movdqa	%xmm0, -208(%rbp)
	movdqa	%xmm0, -192(%rbp)
	orq	%r14, -432(%rbp,%r13,8)
	orq	%r14, -304(%rbp,%r13,8)
	movdqa	-128(%rbp), %xmm0       # 16-byte Reload
	movdqa	%xmm0, -160(%rbp)
	movl	-76(%rbp), %edi         # 4-byte Reload
	leaq	-432(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-304(%rbp), %rcx
	leaq	-160(%rbp), %r8
	callq	select
	cmpb	$0, benchmp_sigchld_received(%rip)
	jne	.LBB14_11
# %bb.26:                               #   in Loop: Header=BB14_25 Depth=1
	testb	$1, benchmp_sigterm_received(%rip)
	jne	.LBB14_11
# %bb.27:                               #   in Loop: Header=BB14_25 Depth=1
	testq	%r14, -304(%rbp,%r13,8)
	jne	.LBB14_11
# %bb.28:                               #   in Loop: Header=BB14_25 Depth=1
	testq	%r14, -432(%rbp,%r13,8)
	je	.LBB14_29
# %bb.30:                               #   in Loop: Header=BB14_25 Depth=1
	movq	-112(%rbp), %rdx        # 8-byte Reload
	subq	%rbx, %rdx
	movq	-88(%rbp), %rdi         # 8-byte Reload
                                        # kill: def $edi killed $edi killed $rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	read
	testl	%eax, %eax
	jns	.LBB14_31
	jmp	.LBB14_11
.LBB14_23:
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	$0, (%rbx)
.LBB14_61:
	xorl	%r14d, %r14d
	movl	$20, %edi
	xorl	%esi, %esi
	callq	signal
	movl	-92(%rbp), %r12d        # 4-byte Reload
	movl	%r12d, %edi
	movq	-72(%rbp), %r13         # 8-byte Reload
	movq	%r13, %rsi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	write
	movq	%rbx, results(%rip)
	movl	(%rbx), %ecx
	testl	%ecx, %ecx
	je	.LBB14_62
# %bb.63:
	movl	%ecx, %eax
	shrl	$31, %eax
	addl	%ecx, %eax
	sarl	%eax
	movslq	%eax, %rdx
	shlq	$4, %rdx
	leaq	(%rbx,%rdx), %rsi
	addq	$8, %rsi
	movq	16(%rbx,%rdx), %rax
	testb	$1, %cl
	jne	.LBB14_64
# %bb.65:
	addq	(%rdx,%rbx), %rax
	shrq	%rax
	movq	-8(%rdx,%rbx), %r14
	addq	(%rsi), %r14
	shrq	%r14
	jmp	.LBB14_66
.LBB14_32:
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	$0, (%rbx)
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	jle	.LBB14_61
# %bb.33:
	movl	$1, %eax
	movq	-88(%rbp), %rcx         # 8-byte Reload
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$1, %eax
	movq	-72(%rbp), %r8          # 8-byte Reload
	addq	$8, %r8
	leaq	8(%rbx), %r11
	xorl	%ecx, %ecx
	xorps	%xmm8, %xmm8
	movq	%rax, %xmm0
	movdqa	%xmm0, -480(%rbp)       # 16-byte Spill
	movq	%r8, -168(%rbp)         # 8-byte Spill
	movq	%r11, -176(%rbp)        # 8-byte Spill
.LBB14_34:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_40 Depth 2
                                        #     Child Loop BB14_37 Depth 2
                                        #       Child Loop BB14_48 Depth 3
                                        #       Child Loop BB14_54 Depth 3
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	movaps	%xmm8, -320(%rbp)
	movaps	%xmm8, -336(%rbp)
	movaps	%xmm8, -352(%rbp)
	movaps	%xmm8, -368(%rbp)
	movaps	%xmm8, -384(%rbp)
	movaps	%xmm8, -400(%rbp)
	movaps	%xmm8, -416(%rbp)
	movaps	%xmm8, -432(%rbp)
	movaps	%xmm8, -304(%rbp)
	movaps	%xmm8, -288(%rbp)
	movaps	%xmm8, -272(%rbp)
	movaps	%xmm8, -256(%rbp)
	movaps	%xmm8, -240(%rbp)
	movaps	%xmm8, -224(%rbp)
	movaps	%xmm8, -208(%rbp)
	movaps	%xmm8, -192(%rbp)
	movl	$1, %edx
	movl	-96(%rbp), %edi         # 4-byte Reload
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rsi
	callq	write
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, %r14d
	testl	%eax, %eax
	movq	-128(%rbp), %rcx        # 8-byte Reload
	jg	.LBB14_40
	jmp	.LBB14_35
.LBB14_44:                              #   in Loop: Header=BB14_40 Depth=2
	xorl	%eax, %eax
.LBB14_46:                              #   in Loop: Header=BB14_40 Depth=2
	cltq
	addq	%rax, %rbx
	subl	%eax, %r14d
	jle	.LBB14_35
.LBB14_40:                              #   Parent Loop BB14_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	orq	%rcx, -432(%rbp,%r13,8)
	orq	%rcx, -304(%rbp,%r13,8)
	movdqa	-480(%rbp), %xmm0       # 16-byte Reload
	movdqa	%xmm0, -160(%rbp)
	movl	-76(%rbp), %edi         # 4-byte Reload
	leaq	-432(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-304(%rbp), %rcx
	leaq	-160(%rbp), %r8
	callq	select
	cmpb	$0, benchmp_sigchld_received(%rip)
	jne	.LBB14_11
# %bb.41:                               #   in Loop: Header=BB14_40 Depth=2
	testb	$1, benchmp_sigterm_received(%rip)
	jne	.LBB14_11
# %bb.42:                               #   in Loop: Header=BB14_40 Depth=2
	movq	-128(%rbp), %rcx        # 8-byte Reload
	testq	%rcx, -304(%rbp,%r13,8)
	jne	.LBB14_11
# %bb.43:                               #   in Loop: Header=BB14_40 Depth=2
	testq	%rcx, -432(%rbp,%r13,8)
	je	.LBB14_44
# %bb.45:                               #   in Loop: Header=BB14_40 Depth=2
	movslq	%r14d, %rdx
	movq	-88(%rbp), %rdi         # 8-byte Reload
                                        # kill: def $edi killed $edi killed $rdi
	movq	%rbx, %rsi
	callq	read
	movq	-128(%rbp), %rcx        # 8-byte Reload
	testl	%eax, %eax
	jns	.LBB14_46
	jmp	.LBB14_11
.LBB14_35:                              #   in Loop: Header=BB14_34 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movslq	(%rax), %r12
	testq	%r12, %r12
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	-168(%rbp), %r8         # 8-byte Reload
	movq	-176(%rbp), %r11        # 8-byte Reload
	xorps	%xmm8, %xmm8
	movdqa	.LCPI14_0(%rip), %xmm4  # xmm4 = [1127219200,1160773632,0,0]
	movapd	.LCPI14_1(%rip), %xmm5  # xmm5 = [4.503599627370496E+15,1.9342813113834067E+25]
	jle	.LBB14_60
# %bb.36:                               #   in Loop: Header=BB14_34 Depth=1
	xorl	%r14d, %r14d
	jmp	.LBB14_37
.LBB14_39:                              #   in Loop: Header=BB14_37 Depth=2
	xorl	%edi, %edi
.LBB14_58:                              #   in Loop: Header=BB14_37 Depth=2
	movl	%edi, %eax
	shlq	$4, %rax
	movq	%r10, 8(%rbx,%rax)
	movq	%r9, 16(%rbx,%rax)
	addl	$1, %ecx
	movl	%ecx, (%rbx)
.LBB14_59:                              #   in Loop: Header=BB14_37 Depth=2
	addq	$1, %r14
	cmpq	%r12, %r14
	jge	.LBB14_60
.LBB14_37:                              #   Parent Loop BB14_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_48 Depth 3
                                        #       Child Loop BB14_54 Depth 3
	movq	%r14, %rax
	shlq	$4, %rax
	movq	(%r8,%rax), %r10
	testq	%r10, %r10
	je	.LBB14_59
# %bb.38:                               #   in Loop: Header=BB14_37 Depth=2
	movq	8(%r8,%rax), %r9
	movslq	(%rbx), %rcx
	testq	%rcx, %rcx
	jle	.LBB14_39
# %bb.47:                               #   in Loop: Header=BB14_37 Depth=2
	movq	%r10, %xmm1
	punpckldq	%xmm4, %xmm1    # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1]
	subpd	%xmm5, %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	movq	%r9, %xmm1
	punpckldq	%xmm4, %xmm1    # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1]
	subpd	%xmm5, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2    # xmm2 = xmm2[1],xmm1[1]
	addsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	movq	%r11, %rsi
	xorl	%eax, %eax
	xorl	%edi, %edi
	movdqa	.LCPI14_2(%rip), %xmm6  # xmm6 = [4294967295,4294967295]
	movdqa	%xmm6, %xmm9
	movdqa	.LCPI14_3(%rip), %xmm7  # xmm7 = [4841369599423283200,4841369599423283200]
	movdqa	.LCPI14_4(%rip), %xmm3  # xmm3 = [4985484787499139072,4985484787499139072]
	movapd	.LCPI14_5(%rip), %xmm6  # xmm6 = [1.9342813118337666E+25,1.9342813118337666E+25]
	movabsq	$4294967296, %rdx       # imm = 0x100000000
	.p2align	4, 0x90
.LBB14_48:                              #   Parent Loop BB14_34 Depth=1
                                        #     Parent Loop BB14_37 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movdqu	(%rsi), %xmm1
	movdqa	%xmm1, %xmm2
	pand	%xmm9, %xmm2
	por	%xmm7, %xmm2
	psrlq	$32, %xmm1
	por	%xmm3, %xmm1
	subpd	%xmm6, %xmm1
	addpd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2    # xmm2 = xmm2[1],xmm1[1]
	divsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	ja	.LBB14_49
# %bb.56:                               #   in Loop: Header=BB14_48 Depth=3
	addq	$1, %rdi
	addq	%rdx, %rax
	addq	$16, %rsi
	cmpq	%rdi, %rcx
	jne	.LBB14_48
# %bb.57:                               #   in Loop: Header=BB14_37 Depth=2
	movq	%rcx, %rdi
	jmp	.LBB14_58
.LBB14_49:                              #   in Loop: Header=BB14_37 Depth=2
	cmpl	%edi, %ecx
	jle	.LBB14_58
# %bb.50:                               #   in Loop: Header=BB14_37 Depth=2
	sarq	$32, %rax
	movl	%ecx, %esi
	subl	%eax, %esi
	movq	%rax, %r11
	notq	%r11
	movq	%rcx, %rdx
	testb	$1, %sil
	je	.LBB14_52
# %bb.51:                               #   in Loop: Header=BB14_37 Depth=2
	movq	%rcx, %rsi
	shlq	$4, %rsi
	leaq	-1(%rcx), %rdx
	movq	%rdx, %rbx
	shlq	$4, %rbx
	movq	-56(%rbp), %r8          # 8-byte Reload
	movupd	8(%r8,%rbx), %xmm0
	movq	-168(%rbp), %r8         # 8-byte Reload
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movupd	%xmm0, 8(%rbx,%rsi)
.LBB14_52:                              #   in Loop: Header=BB14_37 Depth=2
	addq	%rcx, %r11
	movq	-176(%rbp), %r11        # 8-byte Reload
	je	.LBB14_55
# %bb.53:                               #   in Loop: Header=BB14_37 Depth=2
	movq	%rdx, %rsi
	shlq	$4, %rsi
	addq	%r11, %rsi
	.p2align	4, 0x90
.LBB14_54:                              #   Parent Loop BB14_34 Depth=1
                                        #     Parent Loop BB14_37 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movupd	-32(%rsi), %xmm0
	movupd	-16(%rsi), %xmm1
	movupd	%xmm1, (%rsi)
	addq	$-2, %rdx
	movupd	%xmm0, -16(%rsi)
	addq	$-32, %rsi
	cmpq	%rax, %rdx
	jg	.LBB14_54
.LBB14_55:                              #   in Loop: Header=BB14_37 Depth=2
	movl	(%rbx), %ecx
	jmp	.LBB14_58
.LBB14_60:                              #   in Loop: Header=BB14_34 Depth=1
	movq	-440(%rbp), %rcx        # 8-byte Reload
	addl	$1, %ecx
	cmpl	-48(%rbp), %ecx         # 4-byte Folded Reload
	jne	.LBB14_34
	jmp	.LBB14_61
.LBB14_11:
	movq	-72(%rbp), %r13         # 8-byte Reload
	movq	%r13, %rdx
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %r14         # 8-byte Reload
	movl	-48(%rbp), %ebx         # 4-byte Reload
.LBB14_12:
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	$20, %edi
	xorl	%esi, %esi
	callq	signal
	testl	%ebx, %ebx
	jle	.LBB14_15
# %bb.13:
	movl	%ebx, %r12d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB14_14:                              # =>This Inner Loop Header: Depth=1
	movl	(%r15,%rbx,4), %edi
	movl	$15, %esi
	callq	kill
	movl	(%r15,%rbx,4), %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	waitpid
	addq	$1, %rbx
	cmpq	%rbx, %r12
	jne	.LBB14_14
.LBB14_15:
	movq	%r14, %rdi
	callq	free
	movl	-92(%rbp), %r12d        # 4-byte Reload
	movq	-48(%rbp), %rbx         # 8-byte Reload
.LBB14_67:
	movq	-88(%rbp), %rdi         # 8-byte Reload
                                        # kill: def $edi killed $edi killed $rdi
	callq	close
	movl	-100(%rbp), %edi        # 4-byte Reload
	callq	close
	movl	-96(%rbp), %edi         # 4-byte Reload
	callq	close
	movl	%r12d, %edi
	callq	close
	testq	%rbx, %rbx
	je	.LBB14_69
# %bb.68:
	movq	%r13, %rdi
	callq	free
.LBB14_69:
	movq	-64(%rbp), %rdi         # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB14_71
# %bb.70:
	callq	free
.LBB14_71:
	addq	$440, %rsp              # imm = 0x1B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB14_62:
	.cfi_def_cfa %rbp, 16
	movl	$1, %eax
	jmp	.LBB14_66
.LBB14_64:
	movq	(%rsi), %r14
.LBB14_66:
	movq	%rax, iterations(%rip)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, start_tv(%rip)
	movabsq	$4835703278458516699, %rcx # imm = 0x431BDE82D7B634DB
	movq	%r14, %rax
	mulq	%rcx
	shrq	$18, %rdx
	movq	%rdx, stop_tv(%rip)
	imulq	$1000000, %rdx, %rax    # imm = 0xF4240
	subq	%rax, %r14
	movq	%r14, stop_tv+8(%rip)
	movq	%r13, %rbx
	jmp	.LBB14_67
.Lfunc_end14:
	.size	benchmp_parent, .Lfunc_end14-benchmp_parent
	.cfi_endproc
                                        # -- End function
	.globl	sizeof_result           # -- Begin function sizeof_result
	.p2align	4, 0x90
	.type	sizeof_result,@function
sizeof_result:                          # @sizeof_result
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, %eax
	shll	$4, %eax
	leal	8(%rax), %ecx
	cmpl	$12, %edi
	movl	$184, %eax
	cmovgel	%ecx, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end15:
	.size	sizeof_result, .Lfunc_end15-sizeof_result
	.cfi_endproc
                                        # -- End function
	.globl	insertinit              # -- Begin function insertinit
	.p2align	4, 0x90
	.type	insertinit,@function
insertinit:                             # @insertinit
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$0, (%rdi)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end16:
	.size	insertinit, .Lfunc_end16-insertinit
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function insertsort
.LCPI17_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI17_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
.LCPI17_2:
	.quad	4294967295              # 0xffffffff
	.quad	4294967295              # 0xffffffff
.LCPI17_3:
	.quad	4841369599423283200     # 0x4330000000000000
	.quad	4841369599423283200     # 0x4330000000000000
.LCPI17_4:
	.quad	4985484787499139072     # 0x4530000000000000
	.quad	4985484787499139072     # 0x4530000000000000
.LCPI17_5:
	.quad	4985484787500187648     # double 1.9342813118337666E+25
	.quad	4985484787500187648     # double 1.9342813118337666E+25
	.text
	.globl	insertsort
	.p2align	4, 0x90
	.type	insertsort,@function
insertsort:                             # @insertsort
	.cfi_startproc
# %bb.0:
	testq	%rdi, %rdi
	je	.LBB17_14
# %bb.1:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movslq	(%rdx), %r8
	testq	%r8, %r8
	jle	.LBB17_2
# %bb.3:
	movq	%rdi, %xmm1
	movdqa	.LCPI17_0(%rip), %xmm2  # xmm2 = [1127219200,1160773632,0,0]
	punpckldq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movapd	.LCPI17_1(%rip), %xmm3  # xmm3 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	movq	%rsi, %xmm1
	punpckldq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2    # xmm2 = xmm2[1],xmm1[1]
	addsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	leaq	8(%rdx), %rax
	xorl	%ecx, %ecx
	movdqa	.LCPI17_2(%rip), %xmm1  # xmm1 = [4294967295,4294967295]
	movdqa	.LCPI17_3(%rip), %xmm2  # xmm2 = [4841369599423283200,4841369599423283200]
	movdqa	.LCPI17_4(%rip), %xmm3  # xmm3 = [4985484787499139072,4985484787499139072]
	movapd	.LCPI17_5(%rip), %xmm4  # xmm4 = [1.9342813118337666E+25,1.9342813118337666E+25]
	.p2align	4, 0x90
.LBB17_4:                               # =>This Inner Loop Header: Depth=1
	movdqu	(%rax), %xmm5
	movdqa	%xmm5, %xmm6
	pand	%xmm1, %xmm6
	por	%xmm2, %xmm6
	psrlq	$32, %xmm5
	por	%xmm3, %xmm5
	subpd	%xmm4, %xmm5
	addpd	%xmm6, %xmm5
	movapd	%xmm5, %xmm6
	unpckhpd	%xmm5, %xmm6    # xmm6 = xmm6[1],xmm5[1]
	divsd	%xmm6, %xmm5
	ucomisd	%xmm5, %xmm0
	ja	.LBB17_5
# %bb.12:                               #   in Loop: Header=BB17_4 Depth=1
	addq	$1, %rcx
	addq	$16, %rax
	cmpq	%r8, %rcx
	jl	.LBB17_4
	jmp	.LBB17_13
.LBB17_2:
	xorl	%ecx, %ecx
	jmp	.LBB17_13
.LBB17_5:
	cmpl	%ecx, %r8d
	jle	.LBB17_13
# %bb.6:
	movl	%r8d, %eax
	subl	%ecx, %eax
	movq	%r8, %r9
	testb	$1, %al
	je	.LBB17_8
# %bb.7:
	movq	%r8, %r10
	shlq	$4, %r10
	leaq	-1(%r8), %r9
	movq	%r9, %rax
	shlq	$4, %rax
	movupd	8(%rdx,%rax), %xmm0
	movupd	%xmm0, 8(%rdx,%r10)
.LBB17_8:
	addq	$-1, %r8
	cmpq	%rcx, %r8
	je	.LBB17_11
# %bb.9:
	movq	%r9, %rax
	shlq	$4, %rax
	addq	%rdx, %rax
	addq	$8, %rax
	.p2align	4, 0x90
.LBB17_10:                              # =>This Inner Loop Header: Depth=1
	movupd	-32(%rax), %xmm0
	movdqu	-16(%rax), %xmm1
	movdqu	%xmm1, (%rax)
	addq	$-2, %r9
	movupd	%xmm0, -16(%rax)
	addq	$-32, %rax
	cmpq	%rcx, %r9
	jg	.LBB17_10
.LBB17_11:
	movl	(%rdx), %r8d
.LBB17_13:
	movl	%ecx, %eax
	shlq	$4, %rax
	movq	%rdi, 8(%rdx,%rax)
	movq	%rsi, 16(%rdx,%rax)
	addl	$1, %r8d
	movl	%r8d, (%rdx)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
.LBB17_14:
	retq
.Lfunc_end17:
	.size	insertsort, .Lfunc_end17-insertsort
	.cfi_endproc
                                        # -- End function
	.globl	set_results             # -- Begin function set_results
	.p2align	4, 0x90
	.type	set_results,@function
set_results:                            # @set_results
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, results(%rip)
	movl	(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB18_1
# %bb.2:
	movl	%ecx, %eax
	shrl	$31, %eax
	addl	%ecx, %eax
	sarl	%eax
	movslq	%eax, %rdx
	shlq	$4, %rdx
	leaq	(%rdi,%rdx), %rsi
	addq	$8, %rsi
	movq	16(%rdi,%rdx), %rax
	testb	$1, %cl
	jne	.LBB18_3
# %bb.4:
	addq	(%rdx,%rdi), %rax
	shrq	%rax
	movq	-8(%rdx,%rdi), %rcx
	addq	(%rsi), %rcx
	shrq	%rcx
	jmp	.LBB18_5
.LBB18_1:
	movl	$1, %eax
	xorl	%ecx, %ecx
	jmp	.LBB18_5
.LBB18_3:
	movq	(%rsi), %rcx
.LBB18_5:
	movq	%rax, iterations(%rip)
	xorps	%xmm0, %xmm0
	movups	%xmm0, start_tv(%rip)
	movabsq	$4835703278458516699, %rdx # imm = 0x431BDE82D7B634DB
	movq	%rcx, %rax
	mulq	%rdx
	shrq	$18, %rdx
	movq	%rdx, stop_tv(%rip)
	imulq	$1000000, %rdx, %rax    # imm = 0xF4240
	subq	%rax, %rcx
	movq	%rcx, stop_tv+8(%rip)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end18:
	.size	set_results, .Lfunc_end18-set_results
	.cfi_endproc
                                        # -- End function
	.globl	benchmp_childid         # -- Begin function benchmp_childid
	.p2align	4, 0x90
	.type	benchmp_childid,@function
benchmp_childid:                        # @benchmp_childid
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	_benchmp_child_state+32(%rip), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end19:
	.size	benchmp_childid, .Lfunc_end19-benchmp_childid
	.cfi_endproc
                                        # -- End function
	.globl	benchmp_child_sigchld   # -- Begin function benchmp_child_sigchld
	.p2align	4, 0x90
	.type	benchmp_child_sigchld,@function
benchmp_child_sigchld:                  # @benchmp_child_sigchld
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	cmpq	$0, _benchmp_child_state+24(%rip)
	je	.LBB20_2
# %bb.1:
	movl	$20, %edi
	xorl	%esi, %esi
	callq	signal
	movl	$_benchmp_child_state, %esi
	xorl	%edi, %edi
	callq	*_benchmp_child_state+24(%rip)
.LBB20_2:
	movl	$1, %edi
	callq	exit
.Lfunc_end20:
	.size	benchmp_child_sigchld, .Lfunc_end20-benchmp_child_sigchld
	.cfi_endproc
                                        # -- End function
	.globl	benchmp_child_sigterm   # -- Begin function benchmp_child_sigterm
	.p2align	4, 0x90
	.type	benchmp_child_sigterm,@function
benchmp_child_sigterm:                  # @benchmp_child_sigterm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$1, %esi
	movl	$15, %edi
	callq	signal
	cmpq	$0, _benchmp_child_state+24(%rip)
	je	.LBB21_5
# %bb.1:
	movl	$20, %edi
	xorl	%esi, %esi
	callq	signal
	movl	$benchmp_child_sigchld, %ecx
	cmpq	%rcx, %rax
	je	.LBB21_4
# %bb.2:
	testq	%rax, %rax
	je	.LBB21_4
# %bb.3:
	movl	$20, %edi
	movq	%rax, %rsi
	callq	signal
.LBB21_4:
	movl	$_benchmp_child_state, %esi
	xorl	%edi, %edi
	callq	*_benchmp_child_state+24(%rip)
.LBB21_5:
	xorl	%edi, %edi
	callq	exit
.Lfunc_end21:
	.size	benchmp_child_sigterm, .Lfunc_end21-benchmp_child_sigterm
	.cfi_endproc
                                        # -- End function
	.globl	benchmp_getstate        # -- Begin function benchmp_getstate
	.p2align	4, 0x90
	.type	benchmp_getstate,@function
benchmp_getstate:                       # @benchmp_getstate
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$_benchmp_child_state, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end22:
	.size	benchmp_getstate, .Lfunc_end22-benchmp_getstate
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function benchmp_interval
.LCPI23_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI23_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
.LCPI23_4:
	.quad	4294967295              # 0xffffffff
	.quad	4294967295              # 0xffffffff
.LCPI23_5:
	.quad	4841369599423283200     # 0x4330000000000000
	.quad	4841369599423283200     # 0x4330000000000000
.LCPI23_6:
	.quad	4985484787499139072     # 0x4530000000000000
	.quad	4985484787499139072     # 0x4530000000000000
.LCPI23_7:
	.quad	4985484787500187648     # double 1.9342813118337666E+25
	.quad	4985484787500187648     # double 1.9342813118337666E+25
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI23_2:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
.LCPI23_3:
	.quad	4606732058837280358     # double 0.94999999999999996
.LCPI23_8:
	.quad	4607092346807469998     # double 0.98999999999999999
.LCPI23_9:
	.quad	4608083138725491507     # double 1.2
.LCPI23_10:
	.quad	4639481672377565184     # double 150
.LCPI23_11:
	.quad	4607632778762754458     # double 1.1000000000000001
.LCPI23_12:
	.quad	4607182418800017408     # double 1
	.text
	.globl	benchmp_interval
	.p2align	4, 0x90
	.type	benchmp_interval,@function
benchmp_interval:                       # @benchmp_interval
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
	subq	$200, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	leaq	56(%rdi), %r15
	leaq	80(%rdi), %rax
	cmpl	$1, (%rdi)
	cmoveq	%r15, %rax
	movq	(%rax), %r14
	cmpl	$0, 88(%rdi)
	je	.LBB23_2
# %bb.1:
	cvtsi2sdl	52(%rbx), %xmm0
	movapd	%xmm0, -48(%rbp)        # 16-byte Spill
	jmp	.LBB23_13
.LBB23_2:
	movl	$stop_tv, %edi
	xorl	%esi, %esi
	callq	gettimeofday
	movl	$ru_stop, %esi
	xorl	%edi, %edi
	callq	getrusage
	movq	stop_tv(%rip), %rdx
	movq	start_tv(%rip), %rsi
	movq	%rdx, %rax
	subq	%rsi, %rax
	movq	stop_tv+8(%rip), %rcx
	subq	start_tv+8(%rip), %rcx
	js	.LBB23_3
# %bb.6:
	cmpq	%rsi, %rdx
	jl	.LBB23_7
	jmp	.LBB23_8
.LBB23_3:
	testq	%rax, %rax
	jle	.LBB23_7
# %bb.4:
	addq	$1000000, %rcx          # imm = 0xF4240
	js	.LBB23_70
# %bb.5:
	addq	$-1, %rax
	cmpq	%rsi, %rdx
	jge	.LBB23_8
.LBB23_7:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB23_8:
	imulq	$1000000, %rax, %rax    # imm = 0xF4240
	addq	%rcx, %rax
	movq	%rax, %xmm0
	punpckldq	.LCPI23_0(%rip), %xmm0 # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI23_1(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movapd	%xmm1, -48(%rbp)        # 16-byte Spill
	movq	24(%rbx), %rax
	testq	%rax, %rax
	je	.LBB23_12
# %bb.9:
	cmpq	$0, benchmp_sigchld_handler(%rip)
	jne	.LBB23_11
# %bb.10:
	movl	$20, %edi
	xorl	%esi, %esi
	callq	signal
	movq	24(%rbx), %rax
.LBB23_11:
	movq	72(%rbx), %rsi
	movq	%r14, %rdi
	callq	*%rax
.LBB23_12:
	movq	(%r15), %rax
	movq	%rax, iterations(%rip)
	callq	t_overhead
	movq	%rax, %xmm0
	movdqa	.LCPI23_0(%rip), %xmm1  # xmm1 = [1127219200,1160773632,0,0]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movapd	.LCPI23_1(%rip), %xmm2  # xmm2 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm2, %xmm0
	movapd	%xmm0, %xmm3
	unpckhpd	%xmm0, %xmm3    # xmm3 = xmm3[1],xmm0[1]
	addsd	%xmm0, %xmm3
	movapd	%xmm3, -96(%rbp)        # 16-byte Spill
	movq	iterations(%rip), %xmm0 # xmm0 = mem[0],zero
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	subpd	%xmm2, %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movapd	%xmm1, -80(%rbp)        # 16-byte Spill
	callq	l_overhead
	mulsd	-80(%rbp), %xmm0        # 16-byte Folded Reload
	addsd	-96(%rbp), %xmm0        # 16-byte Folded Reload
	movapd	-48(%rbp), %xmm3        # 16-byte Reload
	subsd	%xmm0, %xmm3
	movsd	.LCPI23_2(%rip), %xmm0  # xmm0 = mem[0],zero
	movapd	%xmm3, %xmm1
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	cvttsd2si	%xmm3, %rdx
	ucomisd	%xmm0, %xmm3
	cmovaeq	%rax, %rdx
	movq	%rdx, %xmm1
	punpckldq	.LCPI23_0(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI23_1(%rip), %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2    # xmm2 = xmm2[1],xmm1[1]
	addsd	%xmm1, %xmm2
	xorpd	%xmm1, %xmm1
	movapd	%xmm3, -48(%rbp)        # 16-byte Spill
	cmpnlesd	%xmm3, %xmm1
	andnpd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %rax
	xorq	%rcx, %rax
	cvttsd2si	%xmm1, %rcx
	ucomisd	%xmm0, %xmm1
	cmovaeq	%rax, %rcx
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, start_tv(%rip)
	movabsq	$4835703278458516699, %rdx # imm = 0x431BDE82D7B634DB
	movq	%rcx, %rax
	mulq	%rdx
	shrq	$18, %rdx
	movq	%rdx, stop_tv(%rip)
	imulq	$1000000, %rdx, %rax    # imm = 0xF4240
	subq	%rax, %rcx
	movq	%rcx, stop_tv+8(%rip)
.LBB23_13:
	callq	getppid
	cmpl	$1, %eax
	jne	.LBB23_18
# %bb.14:
	movq	24(%rbx), %rax
	testq	%rax, %rax
	jne	.LBB23_15
.LBB23_18:
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, -64(%rbp)
	movapd	%xmm0, -224(%rbp)
	movapd	%xmm0, -208(%rbp)
	movapd	%xmm0, -192(%rbp)
	movapd	%xmm0, -176(%rbp)
	movapd	%xmm0, -160(%rbp)
	movapd	%xmm0, -144(%rbp)
	movapd	%xmm0, -128(%rbp)
	movapd	%xmm0, -112(%rbp)
	movl	(%rbx), %eax
	cmpl	$2, %eax
	je	.LBB23_64
# %bb.19:
	cmpl	$1, %eax
	je	.LBB23_25
# %bb.20:
	testl	%eax, %eax
	jne	.LBB23_56
# %bb.21:
	movq	80(%rbx), %r14
	movslq	40(%rbx), %rcx
	movl	$1, %eax
	shlq	%cl, %rax
	leal	1(%rcx), %edi
	shrq	$6, %rcx
	orq	%rax, -224(%rbp,%rcx,8)
	leaq	-224(%rbp), %rsi
	leaq	-64(%rbp), %r8
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	select
	movslq	40(%rbx), %rdi
	movq	%rdi, %rax
	shrq	$6, %rax
	movq	-224(%rbp,%rax,8), %rax
	btq	%rdi, %rax
	jae	.LBB23_23
# %bb.22:
	movl	$1, (%rbx)
	leaq	-25(%rbp), %rsi
	movl	$1, %edx
                                        # kill: def $edi killed $edi killed $rdi
	callq	read
	movq	56(%rbx), %r14
.LBB23_23:
	cmpl	$0, 88(%rbx)
	je	.LBB23_56
# %bb.24:
	movl	$0, 88(%rbx)
	movl	36(%rbx), %edi
	leaq	-25(%rbp), %rsi
	movl	$1, %edx
	callq	write
	jmp	.LBB23_56
.LBB23_25:
	movq	56(%rbx), %r14
	cmpl	$1, 64(%rbx)
	movapd	-48(%rbp), %xmm7        # 16-byte Reload
	jg	.LBB23_27
# %bb.26:
	xorps	%xmm0, %xmm0
	cvtsi2sdl	52(%rbx), %xmm0
	mulsd	.LCPI23_3(%rip), %xmm0
	ucomisd	%xmm0, %xmm7
	jbe	.LBB23_50
.LBB23_27:
	movq	stop_tv(%rip), %rdx
	movq	start_tv(%rip), %rsi
	movq	%rdx, %rax
	subq	%rsi, %rax
	movq	stop_tv+8(%rip), %rcx
	subq	start_tv+8(%rip), %rcx
	js	.LBB23_28
# %bb.31:
	cmpq	%rsi, %rdx
	jl	.LBB23_32
	jmp	.LBB23_33
.LBB23_64:
	movq	80(%rbx), %r14
	movslq	44(%rbx), %rcx
	movl	$1, %eax
	shlq	%cl, %rax
	leal	1(%rcx), %edi
	shrq	$6, %rcx
	orq	%rax, -224(%rbp,%rcx,8)
	leaq	-224(%rbp), %rsi
	leaq	-64(%rbp), %r8
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	select
	movslq	44(%rbx), %rdi
	movq	%rdi, %rax
	shrq	$6, %rax
	movq	-224(%rbp,%rax,8), %rax
	btq	%rdi, %rax
	jae	.LBB23_56
# %bb.65:
	leaq	-25(%rbp), %rsi
	movl	$1, %edx
                                        # kill: def $edi killed $edi killed $rdi
	callq	read
	movl	36(%rbx), %edi
	movq	results(%rip), %rsi
	movslq	104(%rbx), %rdx
	callq	write
	movq	24(%rbx), %rax
	testq	%rax, %rax
	je	.LBB23_69
# %bb.66:
	cmpq	$0, benchmp_sigchld_handler(%rip)
	jne	.LBB23_68
# %bb.67:
	movl	$20, %edi
	xorl	%esi, %esi
	callq	signal
	movq	24(%rbx), %rax
.LBB23_68:
	movq	72(%rbx), %rsi
	xorl	%edi, %edi
	callq	*%rax
.LBB23_69:
	movl	48(%rbx), %edi
	leaq	-25(%rbp), %rsi
	movl	$1, %edx
	callq	read
	xorl	%edi, %edi
	callq	exit
.LBB23_28:
	testq	%rax, %rax
	jle	.LBB23_32
# %bb.29:
	addq	$1000000, %rcx          # imm = 0xF4240
	js	.LBB23_70
# %bb.30:
	addq	$-1, %rax
	cmpq	%rsi, %rdx
	jge	.LBB23_33
.LBB23_32:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB23_33:
	imulq	$1000000, %rax, %r10    # imm = 0xF4240
	addq	%rcx, %r10
	je	.LBB23_48
# %bb.34:
	movq	iterations(%rip), %r8
	movq	results(%rip), %r9
	movslq	(%r9), %r15
	testq	%r15, %r15
	jle	.LBB23_35
# %bb.36:
	movq	%r10, %xmm1
	movdqa	.LCPI23_0(%rip), %xmm2  # xmm2 = [1127219200,1160773632,0,0]
	punpckldq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movapd	.LCPI23_1(%rip), %xmm3  # xmm3 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	movq	%r8, %xmm1
	punpckldq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2    # xmm2 = xmm2[1],xmm1[1]
	addsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	leaq	8(%r9), %rcx
	xorl	%edx, %edx
	movdqa	.LCPI23_4(%rip), %xmm1  # xmm1 = [4294967295,4294967295]
	movdqa	.LCPI23_5(%rip), %xmm2  # xmm2 = [4841369599423283200,4841369599423283200]
	movdqa	.LCPI23_6(%rip), %xmm3  # xmm3 = [4985484787499139072,4985484787499139072]
	movapd	.LCPI23_7(%rip), %xmm4  # xmm4 = [1.9342813118337666E+25,1.9342813118337666E+25]
	movabsq	$4294967296, %rax       # imm = 0x100000000
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB23_37:                              # =>This Inner Loop Header: Depth=1
	movdqu	(%rcx), %xmm5
	movdqa	%xmm5, %xmm6
	pand	%xmm1, %xmm6
	por	%xmm2, %xmm6
	psrlq	$32, %xmm5
	por	%xmm3, %xmm5
	subpd	%xmm4, %xmm5
	addpd	%xmm6, %xmm5
	movapd	%xmm5, %xmm6
	unpckhpd	%xmm5, %xmm6    # xmm6 = xmm6[1],xmm5[1]
	divsd	%xmm6, %xmm5
	ucomisd	%xmm5, %xmm0
	ja	.LBB23_38
# %bb.45:                               #   in Loop: Header=BB23_37 Depth=1
	addq	$1, %rdi
	addq	%rax, %rdx
	addq	$16, %rcx
	cmpq	%rdi, %r15
	jne	.LBB23_37
# %bb.46:
	movq	%r15, %rdi
	jmp	.LBB23_47
.LBB23_35:
	xorl	%edi, %edi
	jmp	.LBB23_47
.LBB23_38:
	cmpl	%edi, %r15d
	jle	.LBB23_47
# %bb.39:
	sarq	$32, %rdx
	movl	%r15d, %ecx
	subl	%edx, %ecx
	movq	%rdx, %r11
	notq	%r11
	movq	%r15, %rsi
	testb	$1, %cl
	je	.LBB23_41
# %bb.40:
	movq	%r15, %rcx
	shlq	$4, %rcx
	leaq	-1(%r15), %rsi
	movq	%rsi, %rax
	shlq	$4, %rax
	movupd	8(%r9,%rax), %xmm0
	movupd	%xmm0, 8(%r9,%rcx)
.LBB23_41:
	addq	%r15, %r11
	je	.LBB23_44
# %bb.42:
	movq	%rsi, %rax
	shlq	$4, %rax
	leaq	(%rax,%r9), %rcx
	addq	$8, %rcx
	.p2align	4, 0x90
.LBB23_43:                              # =>This Inner Loop Header: Depth=1
	movupd	-32(%rcx), %xmm0
	movdqu	-16(%rcx), %xmm1
	movdqu	%xmm1, (%rcx)
	addq	$-2, %rsi
	movupd	%xmm0, -16(%rcx)
	addq	$-32, %rcx
	cmpq	%rdx, %rsi
	jg	.LBB23_43
.LBB23_44:
	movl	(%r9), %r15d
.LBB23_47:
	movl	%edi, %eax
	shlq	$4, %rax
	movq	%r10, 8(%r9,%rax)
	movq	%r8, 16(%r9,%rax)
	addl	$1, %r15d
	movl	%r15d, (%r9)
.LBB23_48:
	movq	96(%rbx), %rax
	addq	$1, %rax
	movq	%rax, 96(%rbx)
	movslq	68(%rbx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB23_50
# %bb.49:
	movl	$2, (%rbx)
.LBB23_50:
	cmpl	$1, 64(%rbx)
	jne	.LBB23_55
# %bb.51:
	xorps	%xmm0, %xmm0
	cvtsi2sdl	52(%rbx), %xmm0
	movsd	.LCPI23_8(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	ucomisd	%xmm7, %xmm1
	ja	.LBB23_53
# %bb.52:
	movsd	.LCPI23_9(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm7
	jbe	.LBB23_55
.LBB23_53:
	ucomisd	.LCPI23_10(%rip), %xmm7
	jbe	.LBB23_59
# %bb.54:
	movq	%r14, %xmm1
	punpckldq	.LCPI23_0(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI23_1(%rip), %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2    # xmm2 = xmm2[1],xmm1[1]
	addsd	%xmm1, %xmm2
	mulsd	.LCPI23_11(%rip), %xmm0
	divsd	%xmm7, %xmm2
	mulsd	%xmm2, %xmm0
	addsd	.LCPI23_12(%rip), %xmm0
	movsd	.LCPI23_2(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rax, %rcx
	cvttsd2si	%xmm0, %r14
	ucomisd	%xmm1, %xmm0
	cmovaeq	%rcx, %r14
.LBB23_55:
	movl	(%rbx), %eax
	movq	%r14, 56(%rbx)
	cmpl	$2, %eax
	jne	.LBB23_56
.LBB23_63:
	movl	36(%rbx), %edi
	leaq	-25(%rbp), %rsi
	movl	$1, %edx
	callq	write
	movq	80(%rbx), %r14
.LBB23_56:
	movq	8(%rbx), %rax
	testq	%rax, %rax
	je	.LBB23_58
# %bb.57:
	movq	72(%rbx), %rsi
	movq	%r14, %rdi
	callq	*%rax
.LBB23_58:
	movl	$ru_start, %esi
	xorl	%edi, %edi
	callq	getrusage
	movl	$start_tv, %edi
	xorl	%esi, %esi
	callq	gettimeofday
	movq	%r14, %rax
	addq	$200, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB23_59:
	.cfi_def_cfa %rbp, 16
	shlq	$3, %r14
	cmpq	$134217728, %r14        # imm = 0x8000000
	ja	.LBB23_62
# %bb.60:
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm7, %xmm0
	jbe	.LBB23_55
# %bb.61:
	cmpq	$1048577, %r14          # imm = 0x100001
	jb	.LBB23_55
.LBB23_62:
	movl	$2, (%rbx)
	movq	%r14, 56(%rbx)
	jmp	.LBB23_63
.LBB23_15:
	cmpq	$0, benchmp_sigchld_handler(%rip)
	jne	.LBB23_17
# %bb.16:
	movl	$20, %edi
	xorl	%esi, %esi
	callq	signal
	movq	24(%rbx), %rax
.LBB23_17:
	movq	72(%rbx), %rsi
	xorl	%edi, %edi
	callq	*%rax
	xorl	%edi, %edi
	callq	exit
.LBB23_70:
	movl	$.L__func__.tvsub, %edi
	movl	$.L.str.24, %esi
	movl	$.L.str.25, %ecx
	movl	$1099, %edx             # imm = 0x44B
	callq	__assert
.Lfunc_end23:
	.size	benchmp_interval, .Lfunc_end23-benchmp_interval
	.cfi_endproc
                                        # -- End function
	.globl	stop                    # -- Begin function stop
	.p2align	4, 0x90
	.type	stop,@function
stop:                                   # @stop
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, %r14
	testq	%rsi, %rsi
	movl	$stop_tv, %ebx
	cmovneq	%rsi, %rbx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movl	$ru_stop, %esi
	xorl	%edi, %edi
	callq	getrusage
	testq	%r14, %r14
	movl	$start_tv, %edi
	cmovneq	%r14, %rdi
	movq	(%rbx), %rdx
	movq	8(%rbx), %rcx
	movq	(%rdi), %rsi
	movq	%rdx, %rax
	subq	%rsi, %rax
	subq	8(%rdi), %rcx
	js	.LBB24_1
# %bb.4:
	cmpq	%rsi, %rdx
	jl	.LBB24_5
	jmp	.LBB24_6
.LBB24_1:
	testq	%rax, %rax
	jle	.LBB24_5
# %bb.2:
	addq	$1000000, %rcx          # imm = 0xF4240
	js	.LBB24_7
# %bb.3:
	addq	$-1, %rax
	cmpq	%rsi, %rdx
	jge	.LBB24_6
.LBB24_5:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB24_6:
	imulq	$1000000, %rax, %rax    # imm = 0xF4240
	addq	%rcx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB24_7:
	.cfi_def_cfa %rbp, 16
	movl	$.L__func__.tvsub, %edi
	movl	$.L.str.24, %esi
	movl	$.L.str.25, %ecx
	movl	$1099, %edx             # imm = 0x44B
	callq	__assert
.Lfunc_end24:
	.size	stop, .Lfunc_end24-stop
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function t_overhead
.LCPI25_0:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
.LCPI25_1:
	.quad	4606732058837280358     # double 0.94999999999999996
.LCPI25_2:
	.quad	4607092346807469998     # double 0.98999999999999999
.LCPI25_3:
	.quad	4608083138725491507     # double 1.2
.LCPI25_4:
	.quad	4607632778762754458     # double 1.1000000000000001
.LCPI25_7:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI25_5:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI25_6:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
.LCPI25_8:
	.quad	4294967295              # 0xffffffff
	.quad	4294967295              # 0xffffffff
.LCPI25_9:
	.quad	4841369599423283200     # 0x4330000000000000
	.quad	4841369599423283200     # 0x4330000000000000
.LCPI25_10:
	.quad	4985484787499139072     # 0x4530000000000000
	.quad	4985484787499139072     # 0x4530000000000000
.LCPI25_11:
	.quad	4985484787500187648     # double 1.9342813118337666E+25
	.quad	4985484787500187648     # double 1.9342813118337666E+25
.LCPI25_12:
	.zero	16
	.text
	.globl	t_overhead
	.p2align	4, 0x90
	.type	t_overhead,@function
t_overhead:                             # @t_overhead
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
	subq	$264, %rsp              # imm = 0x108
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	callq	init_timing
	cmpb	$0, t_overhead.initialized(%rip)
	jne	.LBB25_56
# %bb.1:
	movb	$1, t_overhead.initialized(%rip)
	movl	$.L.str.32, %edi
	callq	getenv
	testq	%rax, %rax
	je	.LBB25_3
# %bb.2:
	movq	%rax, %rdi
	callq	atof
	movsd	.LCPI25_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rax, %rcx
	cvttsd2si	%xmm0, %rax
	ucomisd	%xmm1, %xmm0
	cmovaeq	%rcx, %rax
	movq	%rax, t_overhead.overhead(%rip)
	jmp	.LBB25_56
.LBB25_3:
	callq	init_timing
	cmpl	$50000, long_enough(%rip) # imm = 0xC350
	jg	.LBB25_56
# %bb.4:
	movq	results(%rip), %rdi
	movq	iterations(%rip), %rbx
	movq	stop_tv(%rip), %rdx
	movq	start_tv(%rip), %rsi
	movq	%rdx, %rax
	subq	%rsi, %rax
	movq	stop_tv+8(%rip), %rcx
	subq	start_tv+8(%rip), %rcx
	jns	.LBB25_8
# %bb.5:
	testq	%rax, %rax
	jle	.LBB25_9
# %bb.6:
	addq	$1000000, %rcx          # imm = 0xF4240
	js	.LBB25_57
# %bb.7:
	addq	$-1, %rax
.LBB25_8:
	cmpq	%rsi, %rdx
	jge	.LBB25_10
.LBB25_9:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB25_10:
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	imulq	$1000000, %rax, %rax    # imm = 0xF4240
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$0, -280(%rbp)
	movabsq	$-9223372036854775808, %r14 # imm = 0x8000000000000000
	leaq	-296(%rbp), %rbx
	movabsq	$4294967296, %r15       # imm = 0x100000000
	xorl	%r13d, %r13d
	jmp	.LBB25_14
	.p2align	4, 0x90
.LBB25_11:                              #   in Loop: Header=BB25_14 Depth=1
	xorl	%edx, %edx
.LBB25_12:                              #   in Loop: Header=BB25_14 Depth=1
	movl	%edx, %ecx
	shlq	$4, %rcx
	movq	%r11, -272(%rbp,%rcx)
	movq	%r8, -264(%rbp,%rcx)
	addl	$1, %eax
	movl	%eax, -280(%rbp)
.LBB25_13:                              #   in Loop: Header=BB25_14 Depth=1
	addl	$1, %r13d
	cmpl	$11, %r13d
	je	.LBB25_47
.LBB25_14:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_19 Depth 2
                                        #       Child Loop BB25_20 Depth 3
                                        #     Child Loop BB25_36 Depth 2
                                        #     Child Loop BB25_44 Depth 2
	callq	init_timing
	movl	long_enough(%rip), %eax
	testl	%eax, %eax
	movl	$0, %ecx
	cmovsl	%ecx, %eax
	xorps	%xmm4, %xmm4
	cvtsi2sd	%eax, %xmm4
	movapd	%xmm4, %xmm1
	mulsd	.LCPI25_1(%rip), %xmm1
	xorpd	%xmm0, %xmm0
	movsd	%xmm1, -96(%rbp)        # 8-byte Spill
	ucomisd	%xmm0, %xmm1
	jbe	.LBB25_32
# %bb.15:                               #   in Loop: Header=BB25_14 Depth=1
	movapd	%xmm4, %xmm0
	mulsd	.LCPI25_2(%rip), %xmm0
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movapd	%xmm4, %xmm0
	mulsd	.LCPI25_3(%rip), %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	mulsd	.LCPI25_4(%rip), %xmm4
	movsd	%xmm4, -72(%rbp)        # 8-byte Spill
	jmp	.LBB25_19
	.p2align	4, 0x90
.LBB25_16:                              #   in Loop: Header=BB25_19 Depth=2
	movq	%rcx, %xmm1
	punpckldq	.LCPI25_5(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI25_6(%rip), %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2    # xmm2 = xmm2[1],xmm1[1]
	addsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	mulsd	%xmm4, %xmm2
	addsd	.LCPI25_7(%rip), %xmm2
	movapd	%xmm2, %xmm1
	movsd	.LCPI25_0(%rip), %xmm3  # xmm3 = mem[0],zero
	subsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %rax
	xorq	%r14, %rax
	cvttsd2si	%xmm2, %rcx
	ucomisd	%xmm3, %xmm2
	cmovaeq	%rax, %rcx
.LBB25_17:                              #   in Loop: Header=BB25_19 Depth=2
	movq	%rcx, t_overhead.__iterations(%rip)
.LBB25_18:                              #   in Loop: Header=BB25_19 Depth=2
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB25_33
.LBB25_19:                              #   Parent Loop BB25_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB25_20 Depth 3
	movl	$ru_start, %esi
	xorl	%edi, %edi
	callq	getrusage
	movl	$start_tv, %edi
	xorl	%esi, %esi
	callq	gettimeofday
	movq	t_overhead.__iterations(%rip), %r12
	testq	%r12, %r12
	je	.LBB25_21
	.p2align	4, 0x90
.LBB25_20:                              #   Parent Loop BB25_14 Depth=1
                                        #     Parent Loop BB25_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	addq	$-1, %r12
	jne	.LBB25_20
.LBB25_21:                              #   in Loop: Header=BB25_19 Depth=2
	movl	$stop_tv, %edi
	xorl	%esi, %esi
	callq	gettimeofday
	movl	$ru_stop, %esi
	xorl	%edi, %edi
	callq	getrusage
	movq	stop_tv(%rip), %rdx
	movq	start_tv(%rip), %rsi
	movq	%rdx, %rax
	subq	%rsi, %rax
	movq	stop_tv+8(%rip), %rcx
	subq	start_tv+8(%rip), %rcx
	js	.LBB25_23
# %bb.22:                               #   in Loop: Header=BB25_19 Depth=2
	movsd	-72(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	cmpq	%rsi, %rdx
	jl	.LBB25_26
	jmp	.LBB25_27
	.p2align	4, 0x90
.LBB25_23:                              #   in Loop: Header=BB25_19 Depth=2
	testq	%rax, %rax
	movsd	-72(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	jle	.LBB25_26
# %bb.24:                               #   in Loop: Header=BB25_19 Depth=2
	addq	$1000000, %rcx          # imm = 0xF4240
	js	.LBB25_57
# %bb.25:                               #   in Loop: Header=BB25_19 Depth=2
	addq	$-1, %rax
	cmpq	%rsi, %rdx
	jge	.LBB25_27
.LBB25_26:                              #   in Loop: Header=BB25_19 Depth=2
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB25_27:                              #   in Loop: Header=BB25_19 Depth=2
	imulq	$1000000, %rax, %rax    # imm = 0xF4240
	addq	%rcx, %rax
	movq	%rax, %xmm1
	punpckldq	.LCPI25_5(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI25_6(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB25_29
# %bb.28:                               #   in Loop: Header=BB25_19 Depth=2
	ucomisd	-80(%rbp), %xmm0        # 8-byte Folded Reload
	jbe	.LBB25_18
.LBB25_29:                              #   in Loop: Header=BB25_19 Depth=2
	movq	t_overhead.__iterations(%rip), %rcx
	cmpq	$151, %rax
	jae	.LBB25_16
# %bb.30:                               #   in Loop: Header=BB25_19 Depth=2
	cmpq	$134217728, %rcx        # imm = 0x8000000
	ja	.LBB25_32
# %bb.31:                               #   in Loop: Header=BB25_19 Depth=2
	shlq	$3, %rcx
	jmp	.LBB25_17
	.p2align	4, 0x90
.LBB25_32:                              #   in Loop: Header=BB25_14 Depth=1
	xorpd	%xmm0, %xmm0
.LBB25_33:                              #   in Loop: Header=BB25_14 Depth=1
	movq	t_overhead.__iterations(%rip), %r8
	movapd	%xmm0, %xmm1
	movsd	.LCPI25_0(%rip), %xmm2  # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %rax
	xorq	%r14, %rax
	cvttsd2si	%xmm0, %r11
	ucomisd	%xmm2, %xmm0
	movq	%r8, iterations(%rip)
	cmovaeq	%rax, %r11
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, start_tv(%rip)
	movq	%r11, %rax
	movabsq	$4835703278458516699, %rcx # imm = 0x431BDE82D7B634DB
	mulq	%rcx
	shrq	$18, %rdx
	movq	%rdx, stop_tv(%rip)
	imulq	$1000000, %rdx, %rax    # imm = 0xF4240
	movq	%r11, %rdx
	subq	%rax, %rdx
	movq	%rdx, stop_tv+8(%rip)
	testq	%r11, %r11
	movdqa	.LCPI25_8(%rip), %xmm4  # xmm4 = [4294967295,4294967295]
	movdqa	.LCPI25_9(%rip), %xmm5  # xmm5 = [4841369599423283200,4841369599423283200]
	movdqa	.LCPI25_10(%rip), %xmm6 # xmm6 = [4985484787499139072,4985484787499139072]
	movapd	.LCPI25_11(%rip), %xmm7 # xmm7 = [1.9342813118337666E+25,1.9342813118337666E+25]
	je	.LBB25_13
# %bb.34:                               #   in Loop: Header=BB25_14 Depth=1
	movslq	-280(%rbp), %rax
	testq	%rax, %rax
	jle	.LBB25_11
# %bb.35:                               #   in Loop: Header=BB25_14 Depth=1
	movq	%r11, %xmm1
	movdqa	.LCPI25_5(%rip), %xmm0  # xmm0 = [1127219200,1160773632,0,0]
	movdqa	%xmm0, %xmm2
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movapd	.LCPI25_6(%rip), %xmm0  # xmm0 = [4.503599627370496E+15,1.9342813113834067E+25]
	movapd	%xmm0, %xmm3
	subpd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	movq	%r8, %xmm1
	punpckldq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2    # xmm2 = xmm2[1],xmm1[1]
	addsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	leaq	-272(%rbp), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB25_36:                              #   Parent Loop BB25_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%rsi), %xmm1
	movdqa	%xmm1, %xmm2
	pand	%xmm4, %xmm2
	por	%xmm5, %xmm2
	psrlq	$32, %xmm1
	por	%xmm6, %xmm1
	subpd	%xmm7, %xmm1
	addpd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2    # xmm2 = xmm2[1],xmm1[1]
	divsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	ja	.LBB25_39
# %bb.37:                               #   in Loop: Header=BB25_36 Depth=2
	addq	$1, %rdx
	addq	%r15, %rdi
	addq	$16, %rsi
	cmpq	%rdx, %rax
	jne	.LBB25_36
# %bb.38:                               #   in Loop: Header=BB25_14 Depth=1
	movq	%rax, %rdx
	jmp	.LBB25_12
.LBB25_39:                              #   in Loop: Header=BB25_14 Depth=1
	cmpl	%edx, %eax
	jle	.LBB25_12
# %bb.40:                               #   in Loop: Header=BB25_14 Depth=1
	sarq	$32, %rdi
	movl	%eax, %r10d
	subl	%edi, %r10d
	movq	%rdi, %r9
	notq	%r9
	movq	%rax, %rcx
	testb	$1, %r10b
	je	.LBB25_42
# %bb.41:                               #   in Loop: Header=BB25_14 Depth=1
	movq	%rax, %r10
	shlq	$4, %r10
	leaq	-1(%rax), %rcx
	movq	%rcx, %rsi
	shlq	$4, %rsi
	movupd	-272(%rbp,%rsi), %xmm0
	movupd	%xmm0, -272(%rbp,%r10)
.LBB25_42:                              #   in Loop: Header=BB25_14 Depth=1
	addq	%rax, %r9
	je	.LBB25_45
# %bb.43:                               #   in Loop: Header=BB25_14 Depth=1
	movq	%rcx, %rax
	shlq	$4, %rax
	leaq	-272(%rbp), %rsi
	addq	%rsi, %rax
	.p2align	4, 0x90
.LBB25_44:                              #   Parent Loop BB25_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movupd	-32(%rax), %xmm0
	movupd	-16(%rax), %xmm1
	movupd	%xmm1, (%rax)
	addq	$-2, %rcx
	movupd	%xmm0, -16(%rax)
	addq	$-32, %rax
	cmpq	%rdi, %rcx
	jg	.LBB25_44
.LBB25_45:                              #   in Loop: Header=BB25_14 Depth=1
	movl	-280(%rbp), %eax
	jmp	.LBB25_12
.LBB25_47:
	leaq	-280(%rbp), %r10
	movq	%r10, results(%rip)
	movslq	-280(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB25_50
# %bb.48:
	movl	%edi, %eax
	shrl	$31, %eax
	addl	%edi, %eax
	sarl	%eax
	cltq
	shlq	$4, %rax
	leaq	(%rax,%rbp), %rdx
	addq	$-272, %rdx             # imm = 0xFEF0
	movq	-264(%rbp,%rax), %rbx
	testb	$1, %dil
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jne	.LBB25_51
# %bb.49:
	addq	(%rax,%r10), %rbx
	shrq	%rbx
	movq	-8(%rax,%r10), %rcx
	addq	(%rdx), %rcx
	shrq	%rcx
	jmp	.LBB25_52
.LBB25_50:
	movq	$1, iterations(%rip)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, start_tv(%rip)
	movapd	%xmm0, stop_tv(%rip)
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movabsq	$4835703278458516699, %r11 # imm = 0x431BDE82D7B634DB
	jmp	.LBB25_54
.LBB25_51:
	movq	(%rdx), %rcx
.LBB25_52:
	movabsq	$4835703278458516699, %r11 # imm = 0x431BDE82D7B634DB
	movq	%rcx, %rax
	mulq	%r11
	shrq	$18, %rdx
	imulq	$1000000, %rdx, %rax    # imm = 0xF4240
	subq	%rax, %rcx
	movq	%rbx, iterations(%rip)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, start_tv(%rip)
	movq	%rdx, stop_tv(%rip)
	movq	%rcx, stop_tv+8(%rip)
	testl	%edi, %edi
	je	.LBB25_54
# %bb.53:
	shlq	$4, %rdi
	movq	-8(%rdi,%r10), %rcx
	movq	(%rdi,%r10), %rdi
	movq	%rdi, iterations(%rip)
	movupd	%xmm0, start_tv(%rip)
	movq	%rcx, %rax
	mulq	%r11
	shrq	$18, %rdx
	movq	%rdx, stop_tv(%rip)
	imulq	$1000000, %rdx, %rax    # imm = 0xF4240
	subq	%rax, %rcx
	jmp	.LBB25_55
.LBB25_54:
	movq	$1, iterations(%rip)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, start_tv(%rip)
	movq	$0, stop_tv(%rip)
	movl	$1, %edi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB25_55:
	addq	%rcx, %rax
	xorl	%edx, %edx
	divq	%rdi
	movq	%rax, t_overhead.overhead(%rip)
	movq	%r8, results(%rip)
	movq	%r9, iterations(%rip)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, start_tv(%rip)
	movq	%rsi, %rax
	mulq	%r11
	shrq	$18, %rdx
	movq	%rdx, stop_tv(%rip)
	imulq	$1000000, %rdx, %rax    # imm = 0xF4240
	subq	%rax, %rsi
	movq	%rsi, stop_tv+8(%rip)
.LBB25_56:
	movq	t_overhead.overhead(%rip), %rax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB25_57:
	.cfi_def_cfa %rbp, 16
	movl	$.L__func__.tvsub, %edi
	movl	$.L.str.24, %esi
	movl	$.L.str.25, %ecx
	movl	$1099, %edx             # imm = 0x44B
	callq	__assert
.Lfunc_end25:
	.size	t_overhead, .Lfunc_end25-t_overhead
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function l_overhead
.LCPI26_0:
	.quad	4606732058837280358     # double 0.94999999999999996
.LCPI26_1:
	.quad	4607092346807469998     # double 0.98999999999999999
.LCPI26_2:
	.quad	4608083138725491507     # double 1.2
.LCPI26_3:
	.quad	4607632778762754458     # double 1.1000000000000001
.LCPI26_6:
	.quad	4607182418800017408     # double 1
.LCPI26_7:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI26_4:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI26_5:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
.LCPI26_8:
	.quad	4294967295              # 0xffffffff
	.quad	4294967295              # 0xffffffff
.LCPI26_9:
	.quad	4841369599423283200     # 0x4330000000000000
	.quad	4841369599423283200     # 0x4330000000000000
.LCPI26_10:
	.quad	4985484787499139072     # 0x4530000000000000
	.quad	4985484787499139072     # 0x4530000000000000
.LCPI26_11:
	.quad	4985484787500187648     # double 1.9342813118337666E+25
	.quad	4985484787500187648     # double 1.9342813118337666E+25
.LCPI26_12:
	.zero	16
	.text
	.globl	l_overhead
	.p2align	4, 0x90
	.type	l_overhead,@function
l_overhead:                             # @l_overhead
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
	subq	$440, %rsp              # imm = 0x1B8
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	callq	init_timing
	cmpb	$1, l_overhead.initialized(%rip)
	jne	.LBB26_2
# %bb.1:
	movsd	l_overhead.overhead(%rip), %xmm0 # xmm0 = mem[0],zero
	jmp	.LBB26_125
.LBB26_2:
	movb	$1, l_overhead.initialized(%rip)
	movl	$.L.str.31, %edi
	callq	getenv
	testq	%rax, %rax
	je	.LBB26_4
# %bb.3:
	movq	%rax, %rdi
	callq	atof
	movsd	%xmm0, l_overhead.overhead(%rip)
	jmp	.LBB26_125
.LBB26_4:
	movq	results(%rip), %rdi
	movq	iterations(%rip), %rbx
	movq	stop_tv(%rip), %rdx
	movq	start_tv(%rip), %rsi
	movq	%rdx, %rax
	subq	%rsi, %rax
	movq	stop_tv+8(%rip), %rcx
	subq	start_tv+8(%rip), %rcx
	js	.LBB26_6
# %bb.5:
	cmpq	%rsi, %rdx
	jl	.LBB26_9
	jmp	.LBB26_10
.LBB26_6:
	testq	%rax, %rax
	jle	.LBB26_9
# %bb.7:
	addq	$1000000, %rcx          # imm = 0xF4240
	js	.LBB26_126
# %bb.8:
	addq	$-1, %rax
	cmpq	%rsi, %rdx
	jge	.LBB26_10
.LBB26_9:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB26_10:
	movq	%rbx, -104(%rbp)        # 8-byte Spill
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movabsq	$4294967296, %r12       # imm = 0x100000000
	imulq	$1000000, %rax, %rax    # imm = 0xF4240
	addq	%rcx, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	$0, -480(%rbp)
	movl	$0, -296(%rbp)
	movabsq	$-9223372036854775808, %r14 # imm = 0x8000000000000000
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorl	%r15d, %r15d
	jmp	.LBB26_14
.LBB26_11:                              #   in Loop: Header=BB26_14 Depth=1
	xorl	%ecx, %ecx
.LBB26_12:                              #   in Loop: Header=BB26_14 Depth=1
	movl	%ecx, %eax
	shlq	$4, %rax
	movq	%rbx, -288(%rbp,%rax)
	movq	%r8, -280(%rbp,%rax)
	addl	$1, %edx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%edx, -296(%rbp)
.LBB26_13:                              #   in Loop: Header=BB26_14 Depth=1
	addl	$1, %r15d
	cmpl	$11, %r15d
	je	.LBB26_108
.LBB26_14:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_19 Depth 2
                                        #       Child Loop BB26_22 Depth 3
                                        #       Child Loop BB26_25 Depth 3
                                        #     Child Loop BB26_48 Depth 2
                                        #     Child Loop BB26_58 Depth 2
                                        #     Child Loop BB26_67 Depth 2
                                        #       Child Loop BB26_70 Depth 3
                                        #       Child Loop BB26_73 Depth 3
                                        #     Child Loop BB26_96 Depth 2
                                        #     Child Loop BB26_105 Depth 2
	movq	p(%rip), %r13
	callq	init_timing
	movl	long_enough(%rip), %eax
	testl	%eax, %eax
	movl	$0, %ecx
	cmovsl	%ecx, %eax
	xorps	%xmm4, %xmm4
	cvtsi2sd	%eax, %xmm4
	movapd	%xmm4, %xmm1
	mulsd	.LCPI26_0(%rip), %xmm1
	xorpd	%xmm0, %xmm0
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	ucomisd	%xmm0, %xmm1
	jbe	.LBB26_37
# %bb.15:                               #   in Loop: Header=BB26_14 Depth=1
	movapd	%xmm4, %xmm0
	mulsd	.LCPI26_1(%rip), %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movapd	%xmm4, %xmm0
	mulsd	.LCPI26_2(%rip), %xmm0
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	mulsd	.LCPI26_3(%rip), %xmm4
	movsd	%xmm4, -64(%rbp)        # 8-byte Spill
	jmp	.LBB26_19
	.p2align	4, 0x90
.LBB26_16:                              #   in Loop: Header=BB26_19 Depth=2
	movq	%rcx, %xmm1
	punpckldq	.LCPI26_4(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI26_5(%rip), %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2    # xmm2 = xmm2[1],xmm1[1]
	addsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	mulsd	%xmm4, %xmm2
	movsd	.LCPI26_6(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm1
	movsd	.LCPI26_7(%rip), %xmm3  # xmm3 = mem[0],zero
	subsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %rax
	xorq	%r14, %rax
	cvttsd2si	%xmm2, %rcx
	ucomisd	%xmm3, %xmm2
	cmovaeq	%rax, %rcx
.LBB26_17:                              #   in Loop: Header=BB26_19 Depth=2
	movq	%rcx, one_op.__iterations(%rip)
.LBB26_18:                              #   in Loop: Header=BB26_19 Depth=2
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB26_38
.LBB26_19:                              #   Parent Loop BB26_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB26_22 Depth 3
                                        #       Child Loop BB26_25 Depth 3
	movl	$ru_start, %esi
	xorl	%edi, %edi
	callq	getrusage
	movl	$start_tv, %edi
	xorl	%esi, %esi
	callq	gettimeofday
	movq	one_op.__iterations(%rip), %rax
	testq	%rax, %rax
	je	.LBB26_26
# %bb.20:                               #   in Loop: Header=BB26_19 Depth=2
	leaq	-1(%rax), %rcx
	movq	%rax, %rdx
	andq	$7, %rdx
	je	.LBB26_24
# %bb.21:                               #   in Loop: Header=BB26_19 Depth=2
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB26_22:                              #   Parent Loop BB26_14 Depth=1
                                        #     Parent Loop BB26_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r13), %r13
	addq	$1, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB26_22
# %bb.23:                               #   in Loop: Header=BB26_19 Depth=2
	subq	%rsi, %rax
.LBB26_24:                              #   in Loop: Header=BB26_19 Depth=2
	cmpq	$7, %rcx
	jb	.LBB26_26
	.p2align	4, 0x90
.LBB26_25:                              #   Parent Loop BB26_14 Depth=1
                                        #     Parent Loop BB26_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r13), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %r13
	addq	$-8, %rax
	jne	.LBB26_25
.LBB26_26:                              #   in Loop: Header=BB26_19 Depth=2
	movl	$stop_tv, %edi
	xorl	%esi, %esi
	callq	gettimeofday
	movl	$ru_stop, %esi
	xorl	%edi, %edi
	callq	getrusage
	movq	stop_tv(%rip), %rdx
	movq	start_tv(%rip), %rsi
	movq	%rdx, %rax
	subq	%rsi, %rax
	movq	stop_tv+8(%rip), %rcx
	subq	start_tv+8(%rip), %rcx
	js	.LBB26_28
# %bb.27:                               #   in Loop: Header=BB26_19 Depth=2
	movsd	-64(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	cmpq	%rsi, %rdx
	jl	.LBB26_31
	jmp	.LBB26_32
	.p2align	4, 0x90
.LBB26_28:                              #   in Loop: Header=BB26_19 Depth=2
	testq	%rax, %rax
	movsd	-64(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	jle	.LBB26_31
# %bb.29:                               #   in Loop: Header=BB26_19 Depth=2
	addq	$1000000, %rcx          # imm = 0xF4240
	js	.LBB26_126
# %bb.30:                               #   in Loop: Header=BB26_19 Depth=2
	addq	$-1, %rax
	cmpq	%rsi, %rdx
	jge	.LBB26_32
.LBB26_31:                              #   in Loop: Header=BB26_19 Depth=2
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB26_32:                              #   in Loop: Header=BB26_19 Depth=2
	imulq	$1000000, %rax, %rax    # imm = 0xF4240
	addq	%rcx, %rax
	movq	%rax, %xmm1
	punpckldq	.LCPI26_4(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI26_5(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB26_34
# %bb.33:                               #   in Loop: Header=BB26_19 Depth=2
	ucomisd	-72(%rbp), %xmm0        # 8-byte Folded Reload
	jbe	.LBB26_18
.LBB26_34:                              #   in Loop: Header=BB26_19 Depth=2
	movq	one_op.__iterations(%rip), %rcx
	cmpq	$151, %rax
	jae	.LBB26_16
# %bb.35:                               #   in Loop: Header=BB26_19 Depth=2
	cmpq	$134217728, %rcx        # imm = 0x8000000
	ja	.LBB26_37
# %bb.36:                               #   in Loop: Header=BB26_19 Depth=2
	shlq	$3, %rcx
	jmp	.LBB26_17
	.p2align	4, 0x90
.LBB26_37:                              #   in Loop: Header=BB26_14 Depth=1
	xorpd	%xmm0, %xmm0
.LBB26_38:                              #   in Loop: Header=BB26_14 Depth=1
	movapd	%xmm0, %xmm1
	movsd	.LCPI26_7(%rip), %xmm2  # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %rax
	movq	one_op.__iterations(%rip), %rcx
	xorq	%r14, %rax
	cvttsd2si	%xmm0, %rbx
	ucomisd	%xmm2, %xmm0
	cmovaeq	%rax, %rbx
	movq	%rcx, iterations(%rip)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, start_tv(%rip)
	movq	%rbx, %rax
	movabsq	$4835703278458516699, %rcx # imm = 0x431BDE82D7B634DB
	mulq	%rcx
	shrq	$18, %rdx
	movq	%rdx, stop_tv(%rip)
	imulq	$1000000, %rdx, %rax    # imm = 0xF4240
	movq	%rbx, %rcx
	subq	%rax, %rcx
	movq	%rcx, stop_tv+8(%rip)
	addq	%r13, use_result_dummy(%rip)
	callq	t_overhead
	cmpq	%rax, %rbx
	jbe	.LBB26_62
# %bb.39:                               #   in Loop: Header=BB26_14 Depth=1
	movq	stop_tv(%rip), %rdx
	movq	start_tv(%rip), %rsi
	movq	%rdx, %rax
	subq	%rsi, %rax
	movq	stop_tv+8(%rip), %rcx
	subq	start_tv+8(%rip), %rcx
	js	.LBB26_41
# %bb.40:                               #   in Loop: Header=BB26_14 Depth=1
	cmpq	%rsi, %rdx
	jl	.LBB26_44
	jmp	.LBB26_45
.LBB26_41:                              #   in Loop: Header=BB26_14 Depth=1
	testq	%rax, %rax
	jle	.LBB26_44
# %bb.42:                               #   in Loop: Header=BB26_14 Depth=1
	addq	$1000000, %rcx          # imm = 0xF4240
	js	.LBB26_126
# %bb.43:                               #   in Loop: Header=BB26_14 Depth=1
	addq	$-1, %rax
	cmpq	%rsi, %rdx
	jge	.LBB26_45
.LBB26_44:                              #   in Loop: Header=BB26_14 Depth=1
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB26_45:                              #   in Loop: Header=BB26_14 Depth=1
	imulq	$1000000, %rax, %rbx    # imm = 0xF4240
	addq	%rcx, %rbx
	callq	t_overhead
	subq	%rax, %rbx
	je	.LBB26_62
# %bb.46:                               #   in Loop: Header=BB26_14 Depth=1
	movq	iterations(%rip), %r8
	movq	-48(%rbp), %rdx         # 8-byte Reload
	testl	%edx, %edx
	jle	.LBB26_51
# %bb.47:                               #   in Loop: Header=BB26_14 Depth=1
	movq	%rbx, %xmm1
	movdqa	.LCPI26_4(%rip), %xmm0  # xmm0 = [1127219200,1160773632,0,0]
	movdqa	%xmm0, %xmm2
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movapd	.LCPI26_5(%rip), %xmm0  # xmm0 = [4.503599627370496E+15,1.9342813113834067E+25]
	movapd	%xmm0, %xmm3
	subpd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	movq	%r8, %xmm1
	punpckldq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2    # xmm2 = xmm2[1],xmm1[1]
	addsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	movslq	%edx, %rsi
	leaq	-472(%rbp), %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movdqa	.LCPI26_8(%rip), %xmm3  # xmm3 = [4294967295,4294967295]
	movdqa	.LCPI26_9(%rip), %xmm4  # xmm4 = [4841369599423283200,4841369599423283200]
	movdqa	.LCPI26_10(%rip), %xmm5 # xmm5 = [4985484787499139072,4985484787499139072]
	movapd	.LCPI26_11(%rip), %xmm6 # xmm6 = [1.9342813118337666E+25,1.9342813118337666E+25]
	.p2align	4, 0x90
.LBB26_48:                              #   Parent Loop BB26_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%rdi), %xmm1
	movdqa	%xmm1, %xmm2
	pand	%xmm3, %xmm2
	por	%xmm4, %xmm2
	psrlq	$32, %xmm1
	por	%xmm5, %xmm1
	subpd	%xmm6, %xmm1
	addpd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2    # xmm2 = xmm2[1],xmm1[1]
	divsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	ja	.LBB26_53
# %bb.49:                               #   in Loop: Header=BB26_48 Depth=2
	addq	$1, %rcx
	addq	%r12, %rdx
	addq	$16, %rdi
	cmpq	%rcx, %rsi
	jne	.LBB26_48
# %bb.50:                               #   in Loop: Header=BB26_14 Depth=1
	movq	%rsi, %rcx
	movq	-48(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB26_61
.LBB26_51:                              #   in Loop: Header=BB26_14 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB26_61
.LBB26_53:                              #   in Loop: Header=BB26_14 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	cmpl	%ecx, %edi
	jle	.LBB26_60
# %bb.54:                               #   in Loop: Header=BB26_14 Depth=1
	sarq	$32, %rdx
	subl	%edx, %edi
	movq	%rdx, %r10
	notq	%r10
	movq	%rsi, %rax
	testb	$1, %dil
	je	.LBB26_56
# %bb.55:                               #   in Loop: Header=BB26_14 Depth=1
	movq	%rsi, %r9
	shlq	$4, %r9
	leaq	-1(%rsi), %rax
	movq	%rax, %rdi
	shlq	$4, %rdi
	movupd	-472(%rbp,%rdi), %xmm0
	movupd	%xmm0, -472(%rbp,%r9)
.LBB26_56:                              #   in Loop: Header=BB26_14 Depth=1
	addq	%rsi, %r10
	je	.LBB26_59
# %bb.57:                               #   in Loop: Header=BB26_14 Depth=1
	movq	%rax, %rsi
	shlq	$4, %rsi
	leaq	-472(%rbp), %rdi
	addq	%rdi, %rsi
	.p2align	4, 0x90
.LBB26_58:                              #   Parent Loop BB26_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movupd	-32(%rsi), %xmm0
	movupd	-16(%rsi), %xmm1
	movupd	%xmm1, (%rsi)
	addq	$-2, %rax
	movupd	%xmm0, -16(%rsi)
	addq	$-32, %rsi
	cmpq	%rdx, %rax
	jg	.LBB26_58
.LBB26_59:                              #   in Loop: Header=BB26_14 Depth=1
	movl	-480(%rbp), %edx
	jmp	.LBB26_61
.LBB26_60:                              #   in Loop: Header=BB26_14 Depth=1
	movq	%rdi, %rdx
	.p2align	4, 0x90
.LBB26_61:                              #   in Loop: Header=BB26_14 Depth=1
	movl	%ecx, %eax
	shlq	$4, %rax
	movq	%rbx, -472(%rbp,%rax)
	movq	%r8, -464(%rbp,%rax)
	addl	$1, %edx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%edx, -480(%rbp)
.LBB26_62:                              #   in Loop: Header=BB26_14 Depth=1
	movq	p(%rip), %rbx
	callq	init_timing
	movl	long_enough(%rip), %eax
	testl	%eax, %eax
	movl	$0, %ecx
	cmovsl	%ecx, %eax
	xorps	%xmm4, %xmm4
	cvtsi2sd	%eax, %xmm4
	movapd	%xmm4, %xmm1
	mulsd	.LCPI26_0(%rip), %xmm1
	xorpd	%xmm0, %xmm0
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	ucomisd	%xmm0, %xmm1
	jbe	.LBB26_85
# %bb.63:                               #   in Loop: Header=BB26_14 Depth=1
	movapd	%xmm4, %xmm0
	mulsd	.LCPI26_1(%rip), %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movapd	%xmm4, %xmm0
	mulsd	.LCPI26_2(%rip), %xmm0
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	mulsd	.LCPI26_3(%rip), %xmm4
	movsd	%xmm4, -64(%rbp)        # 8-byte Spill
	jmp	.LBB26_67
	.p2align	4, 0x90
.LBB26_64:                              #   in Loop: Header=BB26_67 Depth=2
	movq	%rcx, %xmm1
	punpckldq	.LCPI26_4(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI26_5(%rip), %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2    # xmm2 = xmm2[1],xmm1[1]
	addsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	mulsd	%xmm4, %xmm2
	movsd	.LCPI26_6(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm1
	movsd	.LCPI26_7(%rip), %xmm3  # xmm3 = mem[0],zero
	subsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %rax
	xorq	%r14, %rax
	cvttsd2si	%xmm2, %rcx
	ucomisd	%xmm3, %xmm2
	cmovaeq	%rax, %rcx
.LBB26_65:                              #   in Loop: Header=BB26_67 Depth=2
	movq	%rcx, two_op.__iterations(%rip)
.LBB26_66:                              #   in Loop: Header=BB26_67 Depth=2
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB26_86
.LBB26_67:                              #   Parent Loop BB26_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB26_70 Depth 3
                                        #       Child Loop BB26_73 Depth 3
	movl	$ru_start, %esi
	xorl	%edi, %edi
	callq	getrusage
	movl	$start_tv, %edi
	xorl	%esi, %esi
	callq	gettimeofday
	movq	two_op.__iterations(%rip), %rax
	testq	%rax, %rax
	je	.LBB26_74
# %bb.68:                               #   in Loop: Header=BB26_67 Depth=2
	leaq	-1(%rax), %rcx
	movq	%rax, %rdx
	andq	$7, %rdx
	je	.LBB26_72
# %bb.69:                               #   in Loop: Header=BB26_67 Depth=2
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB26_70:                              #   Parent Loop BB26_14 Depth=1
                                        #     Parent Loop BB26_67 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rbx), %rdi
	movq	(%rdi), %rbx
	addq	$1, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB26_70
# %bb.71:                               #   in Loop: Header=BB26_67 Depth=2
	subq	%rsi, %rax
.LBB26_72:                              #   in Loop: Header=BB26_67 Depth=2
	cmpq	$7, %rcx
	jb	.LBB26_74
	.p2align	4, 0x90
.LBB26_73:                              #   Parent Loop BB26_14 Depth=1
                                        #     Parent Loop BB26_67 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rbx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rbx
	addq	$-8, %rax
	jne	.LBB26_73
.LBB26_74:                              #   in Loop: Header=BB26_67 Depth=2
	movl	$stop_tv, %edi
	xorl	%esi, %esi
	callq	gettimeofday
	movl	$ru_stop, %esi
	xorl	%edi, %edi
	callq	getrusage
	movq	stop_tv(%rip), %rdx
	movq	start_tv(%rip), %rsi
	movq	%rdx, %rax
	subq	%rsi, %rax
	movq	stop_tv+8(%rip), %rcx
	subq	start_tv+8(%rip), %rcx
	js	.LBB26_76
# %bb.75:                               #   in Loop: Header=BB26_67 Depth=2
	movsd	-64(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	cmpq	%rsi, %rdx
	jl	.LBB26_79
	jmp	.LBB26_80
	.p2align	4, 0x90
.LBB26_76:                              #   in Loop: Header=BB26_67 Depth=2
	testq	%rax, %rax
	movsd	-64(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	jle	.LBB26_79
# %bb.77:                               #   in Loop: Header=BB26_67 Depth=2
	addq	$1000000, %rcx          # imm = 0xF4240
	js	.LBB26_126
# %bb.78:                               #   in Loop: Header=BB26_67 Depth=2
	addq	$-1, %rax
	cmpq	%rsi, %rdx
	jge	.LBB26_80
.LBB26_79:                              #   in Loop: Header=BB26_67 Depth=2
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB26_80:                              #   in Loop: Header=BB26_67 Depth=2
	imulq	$1000000, %rax, %rax    # imm = 0xF4240
	addq	%rcx, %rax
	movq	%rax, %xmm1
	punpckldq	.LCPI26_4(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI26_5(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB26_82
# %bb.81:                               #   in Loop: Header=BB26_67 Depth=2
	ucomisd	-72(%rbp), %xmm0        # 8-byte Folded Reload
	jbe	.LBB26_66
.LBB26_82:                              #   in Loop: Header=BB26_67 Depth=2
	movq	two_op.__iterations(%rip), %rcx
	cmpq	$151, %rax
	jae	.LBB26_64
# %bb.83:                               #   in Loop: Header=BB26_67 Depth=2
	cmpq	$134217728, %rcx        # imm = 0x8000000
	ja	.LBB26_85
# %bb.84:                               #   in Loop: Header=BB26_67 Depth=2
	shlq	$3, %rcx
	jmp	.LBB26_65
	.p2align	4, 0x90
.LBB26_85:                              #   in Loop: Header=BB26_14 Depth=1
	xorpd	%xmm0, %xmm0
.LBB26_86:                              #   in Loop: Header=BB26_14 Depth=1
	movapd	%xmm0, %xmm1
	movsd	.LCPI26_7(%rip), %xmm2  # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %rax
	movq	two_op.__iterations(%rip), %rcx
	xorq	%r14, %rax
	cvttsd2si	%xmm0, %r13
	ucomisd	%xmm2, %xmm0
	cmovaeq	%rax, %r13
	movq	%rcx, iterations(%rip)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, start_tv(%rip)
	movq	%r13, %rax
	movabsq	$4835703278458516699, %rcx # imm = 0x431BDE82D7B634DB
	mulq	%rcx
	shrq	$18, %rdx
	movq	%rdx, stop_tv(%rip)
	imulq	$1000000, %rdx, %rax    # imm = 0xF4240
	movq	%r13, %rcx
	subq	%rax, %rcx
	movq	%rcx, stop_tv+8(%rip)
	addq	%rbx, use_result_dummy(%rip)
	callq	t_overhead
	cmpq	%rax, %r13
	jbe	.LBB26_13
# %bb.87:                               #   in Loop: Header=BB26_14 Depth=1
	movq	stop_tv(%rip), %rdx
	movq	start_tv(%rip), %rsi
	movq	%rdx, %rax
	subq	%rsi, %rax
	movq	stop_tv+8(%rip), %rcx
	subq	start_tv+8(%rip), %rcx
	js	.LBB26_89
# %bb.88:                               #   in Loop: Header=BB26_14 Depth=1
	cmpq	%rsi, %rdx
	jl	.LBB26_92
	jmp	.LBB26_93
.LBB26_89:                              #   in Loop: Header=BB26_14 Depth=1
	testq	%rax, %rax
	jle	.LBB26_92
# %bb.90:                               #   in Loop: Header=BB26_14 Depth=1
	addq	$1000000, %rcx          # imm = 0xF4240
	js	.LBB26_126
# %bb.91:                               #   in Loop: Header=BB26_14 Depth=1
	addq	$-1, %rax
	cmpq	%rsi, %rdx
	jge	.LBB26_93
.LBB26_92:                              #   in Loop: Header=BB26_14 Depth=1
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB26_93:                              #   in Loop: Header=BB26_14 Depth=1
	imulq	$1000000, %rax, %rbx    # imm = 0xF4240
	addq	%rcx, %rbx
	callq	t_overhead
	subq	%rax, %rbx
	je	.LBB26_13
# %bb.94:                               #   in Loop: Header=BB26_14 Depth=1
	movq	iterations(%rip), %r8
	movq	-56(%rbp), %rdx         # 8-byte Reload
	testl	%edx, %edx
	movdqa	.LCPI26_9(%rip), %xmm4  # xmm4 = [4841369599423283200,4841369599423283200]
	movdqa	.LCPI26_10(%rip), %xmm5 # xmm5 = [4985484787499139072,4985484787499139072]
	movapd	.LCPI26_11(%rip), %xmm6 # xmm6 = [1.9342813118337666E+25,1.9342813118337666E+25]
	jle	.LBB26_11
# %bb.95:                               #   in Loop: Header=BB26_14 Depth=1
	movq	%rbx, %xmm1
	movdqa	.LCPI26_4(%rip), %xmm0  # xmm0 = [1127219200,1160773632,0,0]
	movdqa	%xmm0, %xmm2
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movapd	.LCPI26_5(%rip), %xmm0  # xmm0 = [4.503599627370496E+15,1.9342813113834067E+25]
	movapd	%xmm0, %xmm3
	subpd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	movq	%r8, %xmm1
	punpckldq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2    # xmm2 = xmm2[1],xmm1[1]
	addsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	movslq	%edx, %rsi
	leaq	-288(%rbp), %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movdqa	.LCPI26_8(%rip), %xmm3  # xmm3 = [4294967295,4294967295]
	.p2align	4, 0x90
.LBB26_96:                              #   Parent Loop BB26_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%rdi), %xmm1
	movdqa	%xmm1, %xmm2
	pand	%xmm3, %xmm2
	por	%xmm4, %xmm2
	psrlq	$32, %xmm1
	por	%xmm5, %xmm1
	subpd	%xmm6, %xmm1
	addpd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2    # xmm2 = xmm2[1],xmm1[1]
	divsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	ja	.LBB26_100
# %bb.97:                               #   in Loop: Header=BB26_96 Depth=2
	addq	$1, %rcx
	addq	%r12, %rdx
	addq	$16, %rdi
	cmpq	%rcx, %rsi
	jne	.LBB26_96
# %bb.98:                               #   in Loop: Header=BB26_14 Depth=1
	movq	%rsi, %rcx
	movq	-56(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB26_12
.LBB26_100:                             #   in Loop: Header=BB26_14 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	cmpl	%ecx, %edi
	jle	.LBB26_107
# %bb.101:                              #   in Loop: Header=BB26_14 Depth=1
	sarq	$32, %rdx
	subl	%edx, %edi
	movq	%rdx, %r10
	notq	%r10
	movq	%rsi, %rax
	testb	$1, %dil
	je	.LBB26_103
# %bb.102:                              #   in Loop: Header=BB26_14 Depth=1
	movq	%rsi, %r9
	shlq	$4, %r9
	leaq	-1(%rsi), %rax
	movq	%rax, %rdi
	shlq	$4, %rdi
	movupd	-288(%rbp,%rdi), %xmm0
	movupd	%xmm0, -288(%rbp,%r9)
.LBB26_103:                             #   in Loop: Header=BB26_14 Depth=1
	addq	%rsi, %r10
	je	.LBB26_106
# %bb.104:                              #   in Loop: Header=BB26_14 Depth=1
	movq	%rax, %rsi
	shlq	$4, %rsi
	leaq	-288(%rbp), %rdi
	addq	%rdi, %rsi
	.p2align	4, 0x90
.LBB26_105:                             #   Parent Loop BB26_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movupd	-32(%rsi), %xmm0
	movupd	-16(%rsi), %xmm1
	movupd	%xmm1, (%rsi)
	addq	$-2, %rax
	movupd	%xmm0, -16(%rsi)
	addq	$-32, %rsi
	cmpq	%rdx, %rax
	jg	.LBB26_105
.LBB26_106:                             #   in Loop: Header=BB26_14 Depth=1
	movl	-296(%rbp), %edx
	jmp	.LBB26_12
.LBB26_107:                             #   in Loop: Header=BB26_14 Depth=1
	movq	%rdi, %rdx
	jmp	.LBB26_12
.LBB26_108:
	leaq	-480(%rbp), %rsi
	movq	%rsi, results(%rip)
	movq	-48(%rbp), %rcx         # 8-byte Reload
	testl	%ecx, %ecx
	je	.LBB26_111
# %bb.109:
	movl	%ecx, %eax
	shrl	$31, %eax
	addl	%ecx, %eax
	sarl	%eax
	cltq
	shlq	$4, %rax
	leaq	(%rax,%rbp), %rdx
	addq	$-472, %rdx             # imm = 0xFE28
	movq	-464(%rbp,%rax), %rdi
	testb	$1, %cl
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-104(%rbp), %r8         # 8-byte Reload
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movabsq	$4835703278458516699, %r10 # imm = 0x431BDE82D7B634DB
	jne	.LBB26_112
# %bb.110:
	addq	(%rax,%rsi), %rdi
	shrq	%rdi
	movq	-8(%rax,%rsi), %rcx
	addq	(%rdx), %rcx
	shrq	%rcx
	jmp	.LBB26_113
.LBB26_111:
	movq	$1, iterations(%rip)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, start_tv(%rip)
	movapd	%xmm0, stop_tv(%rip)
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-104(%rbp), %r8         # 8-byte Reload
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movabsq	$4835703278458516699, %r10 # imm = 0x431BDE82D7B634DB
	jmp	.LBB26_115
.LBB26_112:
	movq	(%rdx), %rcx
.LBB26_113:
	movq	%rcx, %rax
	mulq	%r10
	shrq	$18, %rdx
	imulq	$1000000, %rdx, %rax    # imm = 0xF4240
	subq	%rax, %rcx
	movq	%rdi, iterations(%rip)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, start_tv(%rip)
	movq	%rdx, stop_tv(%rip)
	movq	%rcx, stop_tv+8(%rip)
	movq	-48(%rbp), %rax         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB26_115
# %bb.114:
	cltq
	shlq	$4, %rax
	movq	-8(%rax,%rsi), %rcx
	movq	(%rax,%rsi), %rsi
	movq	%rsi, iterations(%rip)
	movq	%rcx, %rax
	mulq	%r10
	movupd	%xmm0, start_tv(%rip)
	shrq	$18, %rdx
	movq	%rdx, stop_tv(%rip)
	imulq	$1000000, %rdx, %rax    # imm = 0xF4240
	subq	%rax, %rcx
	movq	%rsi, %xmm1
	punpckldq	.LCPI26_4(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI26_5(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	jmp	.LBB26_116
.LBB26_115:
	movq	$1, iterations(%rip)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, start_tv(%rip)
	movq	$0, stop_tv(%rip)
	movsd	.LCPI26_6(%rip), %xmm0  # xmm0 = mem[0],zero
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB26_116:
	movq	%rcx, stop_tv+8(%rip)
	addq	%rcx, %rax
	movq	%rax, %xmm2
	punpckldq	.LCPI26_4(%rip), %xmm2 # xmm2 = xmm2[0],mem[0],xmm2[1],mem[1]
	subpd	.LCPI26_5(%rip), %xmm2
	movapd	%xmm2, %xmm1
	unpckhpd	%xmm2, %xmm1    # xmm1 = xmm1[1],xmm2[1]
	addsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, l_overhead.overhead(%rip)
	leaq	-296(%rbp), %rsi
	movq	%rsi, results(%rip)
	movq	-56(%rbp), %rcx         # 8-byte Reload
	testl	%ecx, %ecx
	je	.LBB26_119
# %bb.117:
	movl	%ecx, %eax
	shrl	$31, %eax
	addl	%ecx, %eax
	sarl	%eax
	cltq
	shlq	$4, %rax
	leaq	(%rax,%rbp), %rdx
	addq	$-288, %rdx             # imm = 0xFEE0
	movq	-280(%rbp,%rax), %rdi
	testb	$1, %cl
	jne	.LBB26_120
# %bb.118:
	addq	(%rax,%rsi), %rdi
	shrq	%rdi
	movq	-8(%rax,%rsi), %rcx
	addq	(%rdx), %rcx
	shrq	%rcx
	jmp	.LBB26_121
.LBB26_119:
	movq	$1, iterations(%rip)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, start_tv(%rip)
	movapd	%xmm0, stop_tv(%rip)
	jmp	.LBB26_123
.LBB26_120:
	movq	(%rdx), %rcx
.LBB26_121:
	movq	%rcx, %rax
	mulq	%r10
	shrq	$18, %rdx
	imulq	$1000000, %rdx, %rax    # imm = 0xF4240
	subq	%rax, %rcx
	movq	%rdi, iterations(%rip)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, start_tv(%rip)
	movq	%rdx, stop_tv(%rip)
	movq	%rcx, stop_tv+8(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB26_123
# %bb.122:
	cltq
	shlq	$4, %rax
	movq	-8(%rax,%rsi), %rcx
	movq	(%rax,%rsi), %rsi
	movq	%rsi, iterations(%rip)
	movq	%rcx, %rax
	mulq	%r10
	movupd	%xmm0, start_tv(%rip)
	shrq	$18, %rdx
	movq	%rdx, stop_tv(%rip)
	imulq	$1000000, %rdx, %rax    # imm = 0xF4240
	subq	%rax, %rcx
	movq	%rsi, %xmm0
	punpckldq	.LCPI26_4(%rip), %xmm0 # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI26_5(%rip), %xmm0
	movapd	%xmm0, %xmm3
	unpckhpd	%xmm0, %xmm3    # xmm3 = xmm3[1],xmm0[1]
	addsd	%xmm0, %xmm3
	jmp	.LBB26_124
.LBB26_123:
	movq	$1, iterations(%rip)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, start_tv(%rip)
	movq	$0, stop_tv(%rip)
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movsd	.LCPI26_6(%rip), %xmm3  # xmm3 = mem[0],zero
.LBB26_124:
	addq	%rcx, %rax
	movq	%rax, %xmm0
	punpckldq	.LCPI26_4(%rip), %xmm0 # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI26_5(%rip), %xmm0
	movapd	%xmm0, %xmm2
	unpckhpd	%xmm0, %xmm2    # xmm2 = xmm2[1],xmm0[1]
	addsd	%xmm0, %xmm2
	divsd	%xmm3, %xmm2
	subsd	%xmm2, %xmm1
	xorpd	%xmm0, %xmm0
	maxsd	%xmm1, %xmm0
	movsd	%xmm0, l_overhead.overhead(%rip)
	movq	%r9, results(%rip)
	movq	%r8, iterations(%rip)
	xorpd	%xmm1, %xmm1
	movupd	%xmm1, start_tv(%rip)
	movq	%rbx, %rax
	mulq	%r10
	shrq	$18, %rdx
	movq	%rdx, stop_tv(%rip)
	imulq	$1000000, %rdx, %rax    # imm = 0xF4240
	subq	%rax, %rbx
	movq	%rbx, stop_tv+8(%rip)
.LBB26_125:
	addq	$440, %rsp              # imm = 0x1B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB26_126:
	.cfi_def_cfa %rbp, 16
	movl	$.L__func__.tvsub, %edi
	movl	$.L.str.24, %esi
	movl	$.L.str.25, %ecx
	movl	$1099, %edx             # imm = 0x44B
	callq	__assert
.Lfunc_end26:
	.size	l_overhead, .Lfunc_end26-l_overhead
	.cfi_endproc
                                        # -- End function
	.globl	start                   # -- Begin function start
	.p2align	4, 0x90
	.type	start,@function
start:                                  # @start
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
	movq	%rdi, %rbx
	testq	%rdi, %rdi
	movl	$start_tv, %eax
	cmoveq	%rax, %rbx
	movl	$ru_start, %esi
	xorl	%edi, %edi
	callq	getrusage
	movq	%rbx, %rdi
	xorl	%esi, %esi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	jmp	gettimeofday            # TAILCALL
.Lfunc_end27:
	.size	start, .Lfunc_end27-start
	.cfi_endproc
                                        # -- End function
	.globl	timing                  # -- Begin function timing
	.p2align	4, 0x90
	.type	timing,@function
timing:                                 # @timing
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, ftiming(%rip)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end28:
	.size	timing, .Lfunc_end28-timing
	.cfi_endproc
                                        # -- End function
	.globl	tvdelta                 # -- Begin function tvdelta
	.p2align	4, 0x90
	.type	tvdelta,@function
tvdelta:                                # @tvdelta
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rsi), %rdx
	movq	8(%rsi), %rcx
	movq	(%rdi), %rsi
	movq	%rdx, %rax
	subq	%rsi, %rax
	subq	8(%rdi), %rcx
	js	.LBB29_1
# %bb.4:
	cmpq	%rsi, %rdx
	jl	.LBB29_5
	jmp	.LBB29_6
.LBB29_1:
	testq	%rax, %rax
	jle	.LBB29_5
# %bb.2:
	addq	$1000000, %rcx          # imm = 0xF4240
	js	.LBB29_7
# %bb.3:
	addq	$-1, %rax
	cmpq	%rsi, %rdx
	jge	.LBB29_6
.LBB29_5:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB29_6:
	imulq	$1000000, %rax, %rax    # imm = 0xF4240
	addq	%rcx, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB29_7:
	.cfi_def_cfa %rbp, 16
	movl	$.L__func__.tvsub, %edi
	movl	$.L.str.24, %esi
	movl	$.L.str.25, %ecx
	movl	$1099, %edx             # imm = 0x44B
	callq	__assert
.Lfunc_end29:
	.size	tvdelta, .Lfunc_end29-tvdelta
	.cfi_endproc
                                        # -- End function
	.globl	now                     # -- Begin function now
	.p2align	4, 0x90
	.type	now,@function
now:                                    # @now
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	-16(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	imulq	$1000000, -16(%rbp), %rax # imm = 0xF4240
	addq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end30:
	.size	now, .Lfunc_end30-now
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function Now
.LCPI31_0:
	.quad	4696837146684686336     # double 1.0E+6
	.text
	.globl	Now
	.p2align	4, 0x90
	.type	Now,@function
Now:                                    # @Now
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	-16(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	cvtsi2sdq	-16(%rbp), %xmm1
	mulsd	.LCPI31_0(%rip), %xmm1
	cvtsi2sdq	-8(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end31:
	.size	Now, .Lfunc_end31-Now
	.cfi_endproc
                                        # -- End function
	.globl	delta                   # -- Begin function delta
	.p2align	4, 0x90
	.type	delta,@function
delta:                                  # @delta
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	-16(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movq	delta.last+8(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB32_8
# %bb.1:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	delta.last(%rip), %rsi
	movq	%rdx, %rax
	subq	%rsi, %rax
	subq	%rdi, %rcx
	js	.LBB32_2
# %bb.5:
	cmpq	%rsi, %rdx
	jl	.LBB32_6
	jmp	.LBB32_7
.LBB32_8:
	movups	-16(%rbp), %xmm0
	movups	%xmm0, delta.last(%rip)
	xorl	%eax, %eax
	jmp	.LBB32_9
.LBB32_2:
	testq	%rax, %rax
	jle	.LBB32_6
# %bb.3:
	addq	$1000000, %rcx          # imm = 0xF4240
	js	.LBB32_10
# %bb.4:
	addq	$-1, %rax
	cmpq	%rsi, %rdx
	jge	.LBB32_7
.LBB32_6:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB32_7:
	movups	-16(%rbp), %xmm0
	movups	%xmm0, delta.last(%rip)
	imulq	$1000000, %rax, %rax    # imm = 0xF4240
	addq	%rcx, %rax
.LBB32_9:
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB32_10:
	.cfi_def_cfa %rbp, 16
	movl	$.L__func__.tvsub, %edi
	movl	$.L.str.24, %esi
	movl	$.L.str.25, %ecx
	movl	$1099, %edx             # imm = 0x44B
	callq	__assert
.Lfunc_end32:
	.size	delta, .Lfunc_end32-delta
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function tvsub
.LCPI33_0:
	.quad	-1                      # 0xffffffffffffffff
	.quad	1000000                 # 0xf4240
	.text
	.globl	tvsub
	.p2align	4, 0x90
	.type	tvsub,@function
tvsub:                                  # @tvsub
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movdqu	(%rsi), %xmm0
	movdqu	(%rdx), %xmm1
	psubq	%xmm1, %xmm0
	movdqu	%xmm0, (%rdi)
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	movq	%xmm1, %rax
	testq	%rax, %rax
	jns	.LBB33_3
# %bb.1:
	movq	%xmm0, %rax
	testq	%rax, %rax
	jle	.LBB33_4
# %bb.2:
	paddq	.LCPI33_0(%rip), %xmm0
	movdqu	%xmm0, (%rdi)
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movq	%xmm0, %rax
	testq	%rax, %rax
	js	.LBB33_6
.LBB33_3:
	movq	(%rsi), %rax
	cmpq	(%rdx), %rax
	jge	.LBB33_5
.LBB33_4:
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%rdi)
.LBB33_5:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB33_6:
	.cfi_def_cfa %rbp, 16
	movl	$.L__func__.tvsub, %edi
	movl	$.L.str.24, %esi
	movl	$.L.str.25, %ecx
	movl	$1099, %edx             # imm = 0x44B
	callq	__assert
.Lfunc_end33:
	.size	tvsub, .Lfunc_end33-tvsub
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function Delta
.LCPI34_0:
	.quad	4696837146684686336     # double 1.0E+6
	.text
	.globl	Delta
	.p2align	4, 0x90
	.type	Delta,@function
Delta:                                  # @Delta
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	-16(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	start_tv(%rip), %rsi
	movq	%rdx, %rcx
	subq	%rsi, %rcx
	subq	start_tv+8(%rip), %rax
	js	.LBB34_1
# %bb.4:
	cmpq	%rsi, %rdx
	jl	.LBB34_5
	jmp	.LBB34_6
.LBB34_1:
	testq	%rcx, %rcx
	jle	.LBB34_5
# %bb.2:
	addq	$1000000, %rax          # imm = 0xF4240
	js	.LBB34_7
# %bb.3:
	addq	$-1, %rcx
	cmpq	%rsi, %rdx
	jge	.LBB34_6
.LBB34_5:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
.LBB34_6:
	cvtsi2sd	%rcx, %xmm1
	cvtsi2sd	%rax, %xmm0
	divsd	.LCPI34_0(%rip), %xmm0
	addsd	%xmm1, %xmm0
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB34_7:
	.cfi_def_cfa %rbp, 16
	movl	$.L__func__.tvsub, %edi
	movl	$.L.str.24, %esi
	movl	$.L.str.25, %ecx
	movl	$1099, %edx             # imm = 0x44B
	callq	__assert
.Lfunc_end34:
	.size	Delta, .Lfunc_end34-Delta
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function bandwidth
.LCPI35_0:
	.quad	4696837146684686336     # double 1.0E+6
.LCPI35_3:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI35_1:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI35_2:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.text
	.globl	bandwidth
	.p2align	4, 0x90
	.type	bandwidth,@function
bandwidth:                              # @bandwidth
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	stop_tv(%rip), %r8
	movq	start_tv(%rip), %r9
	movq	%r8, %rax
	subq	%r9, %rax
	movq	stop_tv+8(%rip), %rcx
	subq	start_tv+8(%rip), %rcx
	js	.LBB35_1
# %bb.4:
	cmpq	%r9, %r8
	jl	.LBB35_5
	jmp	.LBB35_6
.LBB35_1:
	testq	%rax, %rax
	jle	.LBB35_5
# %bb.2:
	addq	$1000000, %rcx          # imm = 0xF4240
	js	.LBB35_16
# %bb.3:
	addq	$-1, %rax
	cmpq	%r9, %r8
	jge	.LBB35_6
.LBB35_5:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB35_6:
	cvtsi2sd	%rax, %xmm2
	movsd	.LCPI35_0(%rip), %xmm6  # xmm6 = mem[0],zero
	mulsd	%xmm6, %xmm2
	cvtsi2sd	%rcx, %xmm1
	addsd	%xmm2, %xmm1
	divsd	%xmm6, %xmm1
	movq	%rsi, %xmm2
	movdqa	.LCPI35_1(%rip), %xmm3  # xmm3 = [1127219200,1160773632,0,0]
	punpckldq	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	movapd	.LCPI35_2(%rip), %xmm4  # xmm4 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm4, %xmm2
	movapd	%xmm2, %xmm5
	unpckhpd	%xmm2, %xmm5    # xmm5 = xmm5[1],xmm2[1]
	addsd	%xmm2, %xmm5
	movq	%rdi, %xmm2
	punpckldq	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	subpd	%xmm4, %xmm2
	movapd	%xmm2, %xmm0
	unpckhpd	%xmm2, %xmm0    # xmm0 = xmm0[1],xmm2[1]
	addsd	%xmm2, %xmm0
	movq	ftiming(%rip), %rdi
	testq	%rdi, %rdi
	jne	.LBB35_8
# %bb.7:
	movq	__stderrp(%rip), %rdi
	movq	%rdi, ftiming(%rip)
.LBB35_8:
	divsd	%xmm5, %xmm1
	divsd	%xmm6, %xmm0
	testl	%edx, %edx
	je	.LBB35_9
# %bb.17:
	movapd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	movl	$.L.str.3, %esi
	movb	$3, %al
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	jmp	fprintf                 # TAILCALL
.LBB35_9:
	.cfi_def_cfa %rbp, 16
	movsd	%xmm1, -8(%rbp)         # 8-byte Spill
	movsd	.LCPI35_3(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movapd	%xmm0, -32(%rbp)        # 16-byte Spill
	jbe	.LBB35_11
# %bb.10:
	movl	$.L.str.4, %esi
	jmp	.LBB35_12
.LBB35_11:
	movl	$.L.str.5, %esi
.LBB35_12:
	movb	$1, %al
	callq	fprintf
	movapd	-32(%rbp), %xmm1        # 16-byte Reload
	divsd	-8(%rbp), %xmm1         # 8-byte Folded Reload
	movsd	.LCPI35_3(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movq	ftiming(%rip), %rdi
	movapd	%xmm1, %xmm0
	jbe	.LBB35_15
# %bb.13:
	movl	$.L.str.6, %esi
	jmp	.LBB35_14
.LBB35_15:
	movl	$.L.str.7, %esi
.LBB35_14:
	movb	$1, %al
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	jmp	fprintf                 # TAILCALL
.LBB35_16:
	.cfi_def_cfa %rbp, 16
	movl	$.L__func__.tvsub, %edi
	movl	$.L.str.24, %esi
	movl	$.L.str.25, %ecx
	movl	$1099, %edx             # imm = 0x44B
	callq	__assert
.Lfunc_end35:
	.size	bandwidth, .Lfunc_end35-bandwidth
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function kb
.LCPI36_0:
	.quad	4696837146684686336     # double 1.0E+6
.LCPI36_3:
	.quad	4607182418800017408     # double 1
.LCPI36_4:
	.quad	4652007308841189376     # double 1000
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI36_1:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI36_2:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.text
	.globl	kb
	.p2align	4, 0x90
	.type	kb,@function
kb:                                     # @kb
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	stop_tv(%rip), %rdx
	movq	start_tv(%rip), %rsi
	movq	%rdx, %rax
	subq	%rsi, %rax
	movq	stop_tv+8(%rip), %rcx
	subq	start_tv+8(%rip), %rcx
	js	.LBB36_1
# %bb.4:
	cmpq	%rsi, %rdx
	jl	.LBB36_5
	jmp	.LBB36_6
.LBB36_1:
	testq	%rax, %rax
	jle	.LBB36_5
# %bb.2:
	addq	$1000000, %rcx          # imm = 0xF4240
	js	.LBB36_11
# %bb.3:
	addq	$-1, %rax
	cmpq	%rsi, %rdx
	jge	.LBB36_6
.LBB36_5:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB36_6:
	cvtsi2sd	%rax, %xmm0
	cvtsi2sd	%rcx, %xmm1
	divsd	.LCPI36_0(%rip), %xmm1
	addsd	%xmm0, %xmm1
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm2, %xmm1
	jne	.LBB36_7
	jp	.LBB36_7
# %bb.10:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB36_7:
	.cfi_def_cfa %rbp, 16
	movq	%rdi, %xmm3
	punpckldq	.LCPI36_1(%rip), %xmm3 # xmm3 = xmm3[0],mem[0],xmm3[1],mem[1]
	subpd	.LCPI36_2(%rip), %xmm3
	movapd	%xmm3, %xmm0
	unpckhpd	%xmm3, %xmm0    # xmm0 = xmm0[1],xmm3[1]
	addsd	%xmm3, %xmm0
	cmpeqsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm3
	andnpd	%xmm1, %xmm3
	movsd	.LCPI36_3(%rip), %xmm1  # xmm1 = mem[0],zero
	andpd	%xmm2, %xmm1
	orpd	%xmm3, %xmm1
	divsd	%xmm1, %xmm0
	movq	ftiming(%rip), %rdi
	testq	%rdi, %rdi
	jne	.LBB36_9
# %bb.8:
	movq	__stderrp(%rip), %rdi
	movq	%rdi, ftiming(%rip)
.LBB36_9:
	divsd	.LCPI36_4(%rip), %xmm0
	movl	$.L.str.8, %esi
	movb	$1, %al
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	jmp	fprintf                 # TAILCALL
.LBB36_11:
	.cfi_def_cfa %rbp, 16
	movl	$.L__func__.tvsub, %edi
	movl	$.L.str.24, %esi
	movl	$.L.str.25, %ecx
	movl	$1099, %edx             # imm = 0x44B
	callq	__assert
.Lfunc_end36:
	.size	kb, .Lfunc_end36-kb
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function mb
.LCPI37_0:
	.quad	4696837146684686336     # double 1.0E+6
.LCPI37_3:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI37_1:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI37_2:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.text
	.globl	mb
	.p2align	4, 0x90
	.type	mb,@function
mb:                                     # @mb
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	stop_tv(%rip), %rdx
	movq	start_tv(%rip), %rsi
	movq	%rdx, %rax
	subq	%rsi, %rax
	movq	stop_tv+8(%rip), %rcx
	subq	start_tv+8(%rip), %rcx
	js	.LBB37_1
# %bb.4:
	cmpq	%rsi, %rdx
	jl	.LBB37_5
	jmp	.LBB37_6
.LBB37_1:
	testq	%rax, %rax
	jle	.LBB37_5
# %bb.2:
	addq	$1000000, %rcx          # imm = 0xF4240
	js	.LBB37_11
# %bb.3:
	addq	$-1, %rax
	cmpq	%rsi, %rdx
	jge	.LBB37_6
.LBB37_5:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB37_6:
	cvtsi2sd	%rax, %xmm0
	cvtsi2sd	%rcx, %xmm1
	divsd	.LCPI37_0(%rip), %xmm1
	addsd	%xmm0, %xmm1
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm2, %xmm1
	jne	.LBB37_7
	jp	.LBB37_7
# %bb.10:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB37_7:
	.cfi_def_cfa %rbp, 16
	movq	%rdi, %xmm3
	punpckldq	.LCPI37_1(%rip), %xmm3 # xmm3 = xmm3[0],mem[0],xmm3[1],mem[1]
	subpd	.LCPI37_2(%rip), %xmm3
	movapd	%xmm3, %xmm0
	unpckhpd	%xmm3, %xmm0    # xmm0 = xmm0[1],xmm3[1]
	addsd	%xmm3, %xmm0
	cmpeqsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm3
	andnpd	%xmm1, %xmm3
	movsd	.LCPI37_3(%rip), %xmm1  # xmm1 = mem[0],zero
	andpd	%xmm2, %xmm1
	orpd	%xmm3, %xmm1
	divsd	%xmm1, %xmm0
	movq	ftiming(%rip), %rdi
	testq	%rdi, %rdi
	jne	.LBB37_9
# %bb.8:
	movq	__stderrp(%rip), %rdi
	movq	%rdi, ftiming(%rip)
.LBB37_9:
	divsd	.LCPI37_0(%rip), %xmm0
	movl	$.L.str.9, %esi
	movb	$1, %al
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	jmp	fprintf                 # TAILCALL
.LBB37_11:
	.cfi_def_cfa %rbp, 16
	movl	$.L__func__.tvsub, %edi
	movl	$.L.str.24, %esi
	movl	$.L.str.25, %ecx
	movl	$1099, %edx             # imm = 0x44B
	callq	__assert
.Lfunc_end37:
	.size	mb, .Lfunc_end37-mb
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function latency
.LCPI38_0:
	.quad	4696837146684686336     # double 1.0E+6
.LCPI38_3:
	.quad	4652007308841189376     # double 1000
.LCPI38_4:
	.quad	4636737291354636288     # double 100
.LCPI38_5:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI38_1:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI38_2:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.text
	.globl	latency
	.p2align	4, 0x90
	.type	latency,@function
latency:                                # @latency
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	ftiming(%rip), %rdi
	testq	%rdi, %rdi
	jne	.LBB38_2
# %bb.1:
	movq	__stderrp(%rip), %rdi
	movq	%rdi, ftiming(%rip)
.LBB38_2:
	movq	stop_tv(%rip), %rdx
	movq	start_tv(%rip), %rsi
	movq	%rdx, %rax
	subq	%rsi, %rax
	movq	stop_tv+8(%rip), %rcx
	subq	start_tv+8(%rip), %rcx
	js	.LBB38_3
# %bb.6:
	cmpq	%rsi, %rdx
	jl	.LBB38_7
	jmp	.LBB38_8
.LBB38_3:
	testq	%rax, %rax
	jle	.LBB38_7
# %bb.4:
	addq	$1000000, %rcx          # imm = 0xF4240
	js	.LBB38_20
# %bb.5:
	addq	$-1, %rax
	cmpq	%rsi, %rdx
	jge	.LBB38_8
.LBB38_7:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB38_8:
	cvtsi2sd	%rax, %xmm0
	cvtsi2sd	%rcx, %xmm2
	divsd	.LCPI38_0(%rip), %xmm2
	addsd	%xmm0, %xmm2
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm2
	jne	.LBB38_9
	jp	.LBB38_9
# %bb.19:
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB38_9:
	.cfi_def_cfa %rbp, 16
	cmpq	$2, %rbx
	movsd	%xmm2, -24(%rbp)        # 8-byte Spill
	jb	.LBB38_11
# %bb.10:
	movq	%r14, %xmm0
	punpckldq	.LCPI38_1(%rip), %xmm0 # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI38_2(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	divsd	.LCPI38_3(%rip), %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	$.L.str.10, %esi
	movl	%ebx, %edx
	movapd	%xmm2, %xmm0
	movb	$1, %al
	callq	fprintf
	jmp	.LBB38_12
.LBB38_11:
	movq	%r14, %xmm1
	punpckldq	.LCPI38_1(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI38_2(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	divsd	.LCPI38_3(%rip), %xmm0
	movl	$.L.str.11, %esi
	movb	$1, %al
	callq	fprintf
.LBB38_12:
	cmpq	$1, %rbx
	movsd	.LCPI38_3(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	-24(%rbp), %xmm2        # 8-byte Folded Reload
	movq	%rbx, %xmm0
	punpckldq	.LCPI38_1(%rip), %xmm0 # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI38_2(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movsd	%xmm2, -32(%rbp)        # 8-byte Spill
	movapd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	movl	$.L.str.13, %eax
	movl	$.L.str.14, %edx
	cmovaq	%rax, %rdx
	ucomisd	.LCPI38_4(%rip), %xmm0
	movq	ftiming(%rip), %rdi
	jbe	.LBB38_14
# %bb.13:
	movl	$.L.str.12, %esi
	jmp	.LBB38_15
.LBB38_14:
	movl	$.L.str.15, %esi
.LBB38_15:
	movb	$1, %al
	callq	fprintf
	imulq	%rbx, %r14
	movq	%r14, %xmm1
	punpckldq	.LCPI38_1(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI38_2(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	movsd	-24(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	.LCPI38_0(%rip), %xmm2
	movapd	%xmm0, %xmm1
	divsd	%xmm2, %xmm1
	ucomisd	.LCPI38_5(%rip), %xmm1
	movq	ftiming(%rip), %rdi
	jbe	.LBB38_18
# %bb.16:
	movl	$.L.str.9, %esi
	movapd	%xmm1, %xmm0
	jmp	.LBB38_17
.LBB38_18:
	divsd	-32(%rbp), %xmm0        # 8-byte Folded Reload
	movl	$.L.str.16, %esi
.LBB38_17:
	movb	$1, %al
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	jmp	fprintf                 # TAILCALL
.LBB38_20:
	.cfi_def_cfa %rbp, 16
	movl	$.L__func__.tvsub, %edi
	movl	$.L.str.24, %esi
	movl	$.L.str.25, %ecx
	movl	$1099, %edx             # imm = 0x44B
	callq	__assert
.Lfunc_end38:
	.size	latency, .Lfunc_end38-latency
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function context
.LCPI39_0:
	.quad	4696837146684686336     # double 1.0E+6
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI39_1:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI39_2:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.text
	.globl	context
	.p2align	4, 0x90
	.type	context,@function
context:                                # @context
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rdx
	movq	stop_tv(%rip), %rsi
	movq	start_tv(%rip), %rdi
	movq	%rsi, %rax
	subq	%rdi, %rax
	movq	stop_tv+8(%rip), %rcx
	subq	start_tv+8(%rip), %rcx
	js	.LBB39_1
# %bb.4:
	cmpq	%rdi, %rsi
	jl	.LBB39_5
	jmp	.LBB39_6
.LBB39_1:
	testq	%rax, %rax
	jle	.LBB39_5
# %bb.2:
	addq	$1000000, %rcx          # imm = 0xF4240
	js	.LBB39_11
# %bb.3:
	addq	$-1, %rax
	cmpq	%rdi, %rsi
	jge	.LBB39_6
.LBB39_5:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB39_6:
	cvtsi2sd	%rax, %xmm1
	cvtsi2sd	%rcx, %xmm0
	divsd	.LCPI39_0(%rip), %xmm0
	addsd	%xmm1, %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB39_7
	jp	.LBB39_7
# %bb.10:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB39_7:
	.cfi_def_cfa %rbp, 16
	movq	ftiming(%rip), %rdi
	testq	%rdi, %rdi
	jne	.LBB39_9
# %bb.8:
	movq	__stderrp(%rip), %rdi
	movq	%rdi, ftiming(%rip)
.LBB39_9:
	movsd	.LCPI39_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movq	%rdx, %xmm2
	punpckldq	.LCPI39_1(%rip), %xmm2 # xmm2 = xmm2[0],mem[0],xmm2[1],mem[1]
	mulsd	%xmm0, %xmm1
	subpd	.LCPI39_2(%rip), %xmm2
	movapd	%xmm2, %xmm3
	unpckhpd	%xmm2, %xmm3    # xmm3 = xmm3[1],xmm2[1]
	addsd	%xmm2, %xmm3
	divsd	%xmm3, %xmm1
	movl	$.L.str.17, %esi
                                        # kill: def $edx killed $edx killed $rdx
	movb	$2, %al
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	jmp	fprintf                 # TAILCALL
.LBB39_11:
	.cfi_def_cfa %rbp, 16
	movl	$.L__func__.tvsub, %edi
	movl	$.L.str.24, %esi
	movl	$.L.str.25, %ecx
	movl	$1099, %edx             # imm = 0x44B
	callq	__assert
.Lfunc_end39:
	.size	context, .Lfunc_end39-context
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function nano
.LCPI40_0:
	.quad	4652007308841189376     # double 1000
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI40_1:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI40_2:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.text
	.globl	nano
	.p2align	4, 0x90
	.type	nano,@function
nano:                                   # @nano
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %r8
	movq	stop_tv(%rip), %rdi
	movq	start_tv(%rip), %rdx
	movq	%rdi, %rax
	subq	%rdx, %rax
	movq	stop_tv+8(%rip), %rcx
	subq	start_tv+8(%rip), %rcx
	js	.LBB40_1
# %bb.4:
	cmpq	%rdx, %rdi
	jl	.LBB40_5
	jmp	.LBB40_6
.LBB40_1:
	testq	%rax, %rax
	jle	.LBB40_5
# %bb.2:
	addq	$1000000, %rcx          # imm = 0xF4240
	js	.LBB40_11
# %bb.3:
	addq	$-1, %rax
	cmpq	%rdx, %rdi
	jge	.LBB40_6
.LBB40_5:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB40_6:
	imulq	$1000000, %rax, %rax    # imm = 0xF4240
	addq	%rcx, %rax
	cvtsi2sd	%rax, %xmm0
	mulsd	.LCPI40_0(%rip), %xmm0
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB40_7
	jp	.LBB40_7
# %bb.10:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB40_7:
	.cfi_def_cfa %rbp, 16
	movq	ftiming(%rip), %rdi
	testq	%rdi, %rdi
	jne	.LBB40_9
# %bb.8:
	movq	__stderrp(%rip), %rdi
	movq	%rdi, ftiming(%rip)
.LBB40_9:
	movq	%rsi, %xmm1
	punpckldq	.LCPI40_1(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI40_2(%rip), %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2    # xmm2 = xmm2[1],xmm1[1]
	addsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	movl	$.L.str.18, %esi
	movq	%r8, %rdx
	movb	$1, %al
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	jmp	fprintf                 # TAILCALL
.LBB40_11:
	.cfi_def_cfa %rbp, 16
	movl	$.L__func__.tvsub, %edi
	movl	$.L.str.24, %esi
	movl	$.L.str.25, %ecx
	movl	$1099, %edx             # imm = 0x44B
	callq	__assert
.Lfunc_end40:
	.size	nano, .Lfunc_end40-nano
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function micro
.LCPI41_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI41_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.text
	.globl	micro
	.p2align	4, 0x90
	.type	micro,@function
micro:                                  # @micro
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %r8
	movq	stop_tv(%rip), %rdi
	movq	start_tv(%rip), %rdx
	movq	%rdi, %rax
	subq	%rdx, %rax
	movq	stop_tv+8(%rip), %rcx
	subq	start_tv+8(%rip), %rcx
	js	.LBB41_1
# %bb.4:
	cmpq	%rdx, %rdi
	jl	.LBB41_5
	jmp	.LBB41_6
.LBB41_1:
	testq	%rax, %rax
	jle	.LBB41_5
# %bb.2:
	addq	$1000000, %rcx          # imm = 0xF4240
	js	.LBB41_11
# %bb.3:
	addq	$-1, %rax
	cmpq	%rdx, %rdi
	jge	.LBB41_6
.LBB41_5:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB41_6:
	imulq	$1000000, %rax, %rax    # imm = 0xF4240
	addq	%rcx, %rax
	cvtsi2sd	%rax, %xmm0
	movq	%rsi, %xmm1
	punpckldq	.LCPI41_0(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI41_1(%rip), %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2    # xmm2 = xmm2[1],xmm1[1]
	addsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB41_7
	jp	.LBB41_7
# %bb.10:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB41_7:
	.cfi_def_cfa %rbp, 16
	movq	ftiming(%rip), %rdi
	testq	%rdi, %rdi
	jne	.LBB41_9
# %bb.8:
	movq	__stderrp(%rip), %rdi
	movq	%rdi, ftiming(%rip)
.LBB41_9:
	movl	$.L.str.19, %esi
	movq	%r8, %rdx
	movb	$1, %al
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	jmp	fprintf                 # TAILCALL
.LBB41_11:
	.cfi_def_cfa %rbp, 16
	movl	$.L__func__.tvsub, %edi
	movl	$.L.str.24, %esi
	movl	$.L.str.25, %ecx
	movl	$1099, %edx             # imm = 0x44B
	callq	__assert
.Lfunc_end41:
	.size	micro, .Lfunc_end41-micro
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function micromb
.LCPI42_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI42_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI42_2:
	.quad	4696837146684686336     # double 1.0E+6
.LCPI42_3:
	.quad	4621819117588971520     # double 10
	.text
	.globl	micromb
	.p2align	4, 0x90
	.type	micromb,@function
micromb:                                # @micromb
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	stop_tv(%rip), %r8
	movq	start_tv(%rip), %rdx
	movq	%r8, %rax
	subq	%rdx, %rax
	movq	stop_tv+8(%rip), %rcx
	subq	start_tv+8(%rip), %rcx
	js	.LBB42_1
# %bb.4:
	cmpq	%rdx, %r8
	jl	.LBB42_5
	jmp	.LBB42_6
.LBB42_1:
	testq	%rax, %rax
	jle	.LBB42_5
# %bb.2:
	addq	$1000000, %rcx          # imm = 0xF4240
	js	.LBB42_14
# %bb.3:
	addq	$-1, %rax
	cmpq	%rdx, %r8
	jge	.LBB42_6
.LBB42_5:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB42_6:
	imulq	$1000000, %rax, %rax    # imm = 0xF4240
	addq	%rcx, %rax
	cvtsi2sd	%rax, %xmm1
	movq	%rsi, %xmm3
	movdqa	.LCPI42_0(%rip), %xmm0  # xmm0 = [1127219200,1160773632,0,0]
	punpckldq	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	movapd	.LCPI42_1(%rip), %xmm2  # xmm2 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm2, %xmm3
	movapd	%xmm3, %xmm4
	unpckhpd	%xmm3, %xmm4    # xmm4 = xmm4[1],xmm3[1]
	addsd	%xmm3, %xmm4
	divsd	%xmm4, %xmm1
	xorpd	%xmm3, %xmm3
	ucomisd	%xmm3, %xmm1
	jne	.LBB42_7
	jp	.LBB42_7
# %bb.13:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB42_7:
	.cfi_def_cfa %rbp, 16
	movq	%rdi, %xmm3
	punpckldq	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	subpd	%xmm2, %xmm3
	movapd	%xmm3, %xmm0
	unpckhpd	%xmm3, %xmm0    # xmm0 = xmm0[1],xmm3[1]
	addsd	%xmm3, %xmm0
	movq	ftiming(%rip), %rdi
	testq	%rdi, %rdi
	jne	.LBB42_9
# %bb.8:
	movq	__stderrp(%rip), %rdi
	movq	%rdi, ftiming(%rip)
.LBB42_9:
	divsd	.LCPI42_2(%rip), %xmm0
	ucomisd	.LCPI42_3(%rip), %xmm1
	jae	.LBB42_10
# %bb.12:
	movl	$.L.str.21, %esi
	jmp	.LBB42_11
.LBB42_10:
	movl	$.L.str.20, %esi
.LBB42_11:
	movb	$2, %al
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	jmp	fprintf                 # TAILCALL
.LBB42_14:
	.cfi_def_cfa %rbp, 16
	movl	$.L__func__.tvsub, %edi
	movl	$.L.str.24, %esi
	movl	$.L.str.25, %ecx
	movl	$1099, %edx             # imm = 0x44B
	callq	__assert
.Lfunc_end42:
	.size	micromb, .Lfunc_end42-micromb
	.cfi_endproc
                                        # -- End function
	.globl	milli                   # -- Begin function milli
	.p2align	4, 0x90
	.type	milli,@function
milli:                                  # @milli
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %r8
	movq	stop_tv(%rip), %rdi
	movq	start_tv(%rip), %rcx
	movq	%rdi, %rdx
	subq	%rcx, %rdx
	movq	stop_tv+8(%rip), %rax
	subq	start_tv+8(%rip), %rax
	js	.LBB43_1
# %bb.4:
	cmpq	%rcx, %rdi
	jl	.LBB43_5
	jmp	.LBB43_6
.LBB43_1:
	testq	%rdx, %rdx
	jle	.LBB43_5
# %bb.2:
	addq	$1000000, %rax          # imm = 0xF4240
	js	.LBB43_11
# %bb.3:
	addq	$-1, %rdx
	cmpq	%rcx, %rdi
	jge	.LBB43_6
.LBB43_5:
	xorl	%edx, %edx
	xorl	%eax, %eax
.LBB43_6:
	imulq	$1000, %rdx, %rcx       # imm = 0x3E8
	shrq	$3, %rax
	movabsq	$2361183241434822607, %rdx # imm = 0x20C49BA5E353F7CF
	mulq	%rdx
	movq	%rdx, %rdi
	shrq	$4, %rdi
	addq	%rcx, %rdi
	movq	%rdi, %rax
	xorl	%edx, %edx
	divq	%rsi
	cmpq	%rsi, %rdi
	jae	.LBB43_7
# %bb.10:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB43_7:
	.cfi_def_cfa %rbp, 16
	movq	ftiming(%rip), %rdi
	testq	%rdi, %rdi
	jne	.LBB43_9
# %bb.8:
	movq	__stderrp(%rip), %rdi
	movq	%rdi, ftiming(%rip)
.LBB43_9:
	movl	$.L.str.22, %esi
	movq	%r8, %rdx
	movl	%eax, %ecx
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	jmp	fprintf                 # TAILCALL
.LBB43_11:
	.cfi_def_cfa %rbp, 16
	movl	$.L__func__.tvsub, %edi
	movl	$.L.str.24, %esi
	movl	$.L.str.25, %ecx
	movl	$1099, %edx             # imm = 0x44B
	callq	__assert
.Lfunc_end43:
	.size	milli, .Lfunc_end43-milli
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function ptime
.LCPI44_0:
	.quad	4696837146684686336     # double 1.0E+6
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI44_1:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI44_2:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.text
	.globl	ptime
	.p2align	4, 0x90
	.type	ptime,@function
ptime:                                  # @ptime
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rdx
	movq	stop_tv(%rip), %rsi
	movq	start_tv(%rip), %rdi
	movq	%rsi, %rax
	subq	%rdi, %rax
	movq	stop_tv+8(%rip), %rcx
	subq	start_tv+8(%rip), %rcx
	js	.LBB44_1
# %bb.4:
	cmpq	%rdi, %rsi
	jl	.LBB44_5
	jmp	.LBB44_6
.LBB44_1:
	testq	%rax, %rax
	jle	.LBB44_5
# %bb.2:
	addq	$1000000, %rcx          # imm = 0xF4240
	js	.LBB44_11
# %bb.3:
	addq	$-1, %rax
	cmpq	%rdi, %rsi
	jge	.LBB44_6
.LBB44_5:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB44_6:
	cvtsi2sd	%rax, %xmm1
	cvtsi2sd	%rcx, %xmm0
	divsd	.LCPI44_0(%rip), %xmm0
	addsd	%xmm1, %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB44_7
	jp	.LBB44_7
# %bb.10:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB44_7:
	.cfi_def_cfa %rbp, 16
	movq	ftiming(%rip), %rdi
	testq	%rdi, %rdi
	jne	.LBB44_9
# %bb.8:
	movq	__stderrp(%rip), %rdi
	movq	%rdi, ftiming(%rip)
.LBB44_9:
	movsd	.LCPI44_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movq	%rdx, %xmm2
	punpckldq	.LCPI44_1(%rip), %xmm2 # xmm2 = xmm2[0],mem[0],xmm2[1],mem[1]
	mulsd	%xmm0, %xmm1
	subpd	.LCPI44_2(%rip), %xmm2
	movapd	%xmm2, %xmm3
	unpckhpd	%xmm2, %xmm3    # xmm3 = xmm3[1],xmm2[1]
	addsd	%xmm2, %xmm3
	divsd	%xmm3, %xmm1
	movl	$.L.str.23, %esi
                                        # kill: def $edx killed $edx killed $rdx
	movb	$2, %al
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	jmp	fprintf                 # TAILCALL
.LBB44_11:
	.cfi_def_cfa %rbp, 16
	movl	$.L__func__.tvsub, %edi
	movl	$.L.str.24, %esi
	movl	$.L.str.25, %ecx
	movl	$1099, %edx             # imm = 0x44B
	callq	__assert
.Lfunc_end44:
	.size	ptime, .Lfunc_end44-ptime
	.cfi_endproc
                                        # -- End function
	.globl	p64                     # -- Begin function p64
	.p2align	4, 0x90
	.type	p64,@function
p64:                                    # @p64
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movslq	n(%rip), %rax
	leal	1(%rax), %ecx
	leaq	(%rax,%rax,4), %rax
	leaq	p64buf(,%rax,4), %rax
	xorl	%edx, %edx
	cmpl	$10, %ecx
	cmovnel	%ecx, %edx
	movl	%edx, n(%rip)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end45:
	.size	p64, .Lfunc_end45-p64
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function p64sz
.LCPI46_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI46_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI46_2:
	.quad	4562146422526312448     # double 9.765625E-4
.LCPI46_3:
	.quad	4647714815446351872     # double 512
.LCPI46_4:
	.quad	4636737291354636288     # double 100
	.text
	.globl	p64sz
	.p2align	4, 0x90
	.type	p64sz,@function
p64sz:                                  # @p64sz
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
	movq	%rdi, %xmm1
	punpckldq	.LCPI46_0(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI46_1(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	movslq	n(%rip), %rax
	leal	1(%rax), %edx
	xorl	%ecx, %ecx
	cmpl	$10, %edx
	cmovel	%ecx, %edx
	movl	%edx, n(%rip)
	cmpq	$513, %rdi              # imm = 0x201
	jb	.LBB46_3
# %bb.1:
	xorl	%ecx, %ecx
	movsd	.LCPI46_2(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI46_3(%rip), %xmm2  # xmm2 = mem[0],zero
	.p2align	4, 0x90
.LBB46_2:                               # =>This Inner Loop Header: Depth=1
	mulsd	%xmm1, %xmm0
	addq	$1, %rcx
	ucomisd	%xmm2, %xmm0
	ja	.LBB46_2
.LBB46_3:
	movl	$.L.str.27, %ebx
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB46_4
	jnp	.LBB46_8
.LBB46_4:
	leaq	(%rax,%rax,4), %rax
	leaq	p64buf(,%rax,4), %rbx
	movsd	.LCPI46_4(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movsbl	.L.str.26(%rcx), %edx
	jbe	.LBB46_6
# %bb.5:
	movl	$.L.str.28, %esi
	jmp	.LBB46_7
.LBB46_6:
	movl	$.L.str.29, %esi
.LBB46_7:
	movq	%rbx, %rdi
	movb	$1, %al
	callq	sprintf
.LBB46_8:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end46:
	.size	p64sz, .Lfunc_end46-p64sz
	.cfi_endproc
                                        # -- End function
	.globl	last                    # -- Begin function last
	.p2align	4, 0x90
	.type	last,@function
last:                                   # @last
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	.p2align	4, 0x90
.LBB47_1:                               # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%rdi)
	leaq	1(%rdi), %rdi
	jne	.LBB47_1
# %bb.2:
	movb	-2(%rdi), %al
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end47:
	.size	last, .Lfunc_end47-last
	.cfi_endproc
                                        # -- End function
	.globl	bytes                   # -- Begin function bytes
	.p2align	4, 0x90
	.type	bytes,@function
bytes:                                  # @bytes
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, %rbx
	xorl	%r14d, %r14d
	leaq	-24(%rbp), %rdx
	movl	$.L.str.30, %esi
	xorl	%eax, %eax
	callq	sscanf
	testl	%eax, %eax
	jle	.LBB48_12
	.p2align	4, 0x90
.LBB48_1:                               # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%rbx)
	leaq	1(%rbx), %rbx
	jne	.LBB48_1
# %bb.2:
	movsbl	-2(%rbx), %eax
	addl	$-71, %eax
	cmpl	$38, %eax
	ja	.LBB48_4
# %bb.3:
	jmpq	*.LJTI48_0(,%rax,8)
.LBB48_10:
	imulq	$1000000000, -24(%rbp), %r14 # imm = 0x3B9ACA00
	jmp	.LBB48_11
.LBB48_4:
	movq	-24(%rbp), %r14
	jmp	.LBB48_12
.LBB48_6:
	imulq	$1000, -24(%rbp), %r14  # imm = 0x3E8
	jmp	.LBB48_11
.LBB48_8:
	imulq	$1000000, -24(%rbp), %r14 # imm = 0xF4240
	jmp	.LBB48_11
.LBB48_9:
	movq	-24(%rbp), %r14
	shlq	$30, %r14
	jmp	.LBB48_11
.LBB48_5:
	movq	-24(%rbp), %r14
	shlq	$10, %r14
	jmp	.LBB48_11
.LBB48_7:
	movq	-24(%rbp), %r14
	shlq	$20, %r14
.LBB48_11:
	movq	%r14, -24(%rbp)
.LBB48_12:
	movq	%r14, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end48:
	.size	bytes, .Lfunc_end48-bytes
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI48_0:
	.quad	.LBB48_10
	.quad	.LBB48_4
	.quad	.LBB48_4
	.quad	.LBB48_4
	.quad	.LBB48_6
	.quad	.LBB48_4
	.quad	.LBB48_8
	.quad	.LBB48_4
	.quad	.LBB48_4
	.quad	.LBB48_4
	.quad	.LBB48_4
	.quad	.LBB48_4
	.quad	.LBB48_4
	.quad	.LBB48_4
	.quad	.LBB48_4
	.quad	.LBB48_4
	.quad	.LBB48_4
	.quad	.LBB48_4
	.quad	.LBB48_4
	.quad	.LBB48_4
	.quad	.LBB48_4
	.quad	.LBB48_4
	.quad	.LBB48_4
	.quad	.LBB48_4
	.quad	.LBB48_4
	.quad	.LBB48_4
	.quad	.LBB48_4
	.quad	.LBB48_4
	.quad	.LBB48_4
	.quad	.LBB48_4
	.quad	.LBB48_4
	.quad	.LBB48_4
	.quad	.LBB48_9
	.quad	.LBB48_4
	.quad	.LBB48_4
	.quad	.LBB48_4
	.quad	.LBB48_5
	.quad	.LBB48_4
	.quad	.LBB48_7
                                        # -- End function
	.text
	.globl	use_int                 # -- Begin function use_int
	.p2align	4, 0x90
	.type	use_int,@function
use_int:                                # @use_int
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movslq	%edi, %rax
	addq	%rax, use_result_dummy(%rip)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end49:
	.size	use_int, .Lfunc_end49-use_int
	.cfi_endproc
                                        # -- End function
	.globl	use_pointer             # -- Begin function use_pointer
	.p2align	4, 0x90
	.type	use_pointer,@function
use_pointer:                            # @use_pointer
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	addq	%rdi, use_result_dummy(%rip)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end50:
	.size	use_pointer, .Lfunc_end50-use_pointer
	.cfi_endproc
                                        # -- End function
	.globl	get_results             # -- Begin function get_results
	.p2align	4, 0x90
	.type	get_results,@function
get_results:                            # @get_results
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	results(%rip), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end51:
	.size	get_results, .Lfunc_end51-get_results
	.cfi_endproc
                                        # -- End function
	.globl	save_minimum            # -- Begin function save_minimum
	.p2align	4, 0x90
	.type	save_minimum,@function
save_minimum:                           # @save_minimum
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	results(%rip), %rax
	movslq	(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB52_1
# %bb.2:
	shlq	$4, %rcx
	movq	(%rcx,%rax), %rdx
	movq	%rdx, iterations(%rip)
	movq	-8(%rcx,%rax), %rcx
	xorps	%xmm0, %xmm0
	movups	%xmm0, start_tv(%rip)
	movabsq	$4835703278458516699, %rdx # imm = 0x431BDE82D7B634DB
	movq	%rcx, %rax
	mulq	%rdx
	shrq	$18, %rdx
	movq	%rdx, stop_tv(%rip)
	imulq	$1000000, %rdx, %rax    # imm = 0xF4240
	subq	%rax, %rcx
	jmp	.LBB52_3
.LBB52_1:
	movq	$1, iterations(%rip)
	xorps	%xmm0, %xmm0
	movups	%xmm0, start_tv(%rip)
	movq	$0, stop_tv(%rip)
	xorl	%ecx, %ecx
.LBB52_3:
	movq	%rcx, stop_tv+8(%rip)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end52:
	.size	save_minimum, .Lfunc_end52-save_minimum
	.cfi_endproc
                                        # -- End function
	.globl	save_median             # -- Begin function save_median
	.p2align	4, 0x90
	.type	save_median,@function
save_median:                            # @save_median
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	results(%rip), %rcx
	movl	(%rcx), %edx
	testl	%edx, %edx
	je	.LBB53_1
# %bb.2:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	movslq	%eax, %rsi
	shlq	$4, %rsi
	leaq	(%rcx,%rsi), %rdi
	addq	$8, %rdi
	movq	16(%rcx,%rsi), %rax
	testb	$1, %dl
	jne	.LBB53_3
# %bb.4:
	addq	(%rsi,%rcx), %rax
	shrq	%rax
	movq	-8(%rsi,%rcx), %rcx
	addq	(%rdi), %rcx
	shrq	%rcx
	jmp	.LBB53_5
.LBB53_1:
	movl	$1, %eax
	xorl	%ecx, %ecx
	jmp	.LBB53_5
.LBB53_3:
	movq	(%rdi), %rcx
.LBB53_5:
	movq	%rax, iterations(%rip)
	xorps	%xmm0, %xmm0
	movups	%xmm0, start_tv(%rip)
	movabsq	$4835703278458516699, %rdx # imm = 0x431BDE82D7B634DB
	movq	%rcx, %rax
	mulq	%rdx
	shrq	$18, %rdx
	movq	%rdx, stop_tv(%rip)
	imulq	$1000000, %rdx, %rax    # imm = 0xF4240
	subq	%rax, %rcx
	movq	%rcx, stop_tv+8(%rip)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end53:
	.size	save_median, .Lfunc_end53-save_median
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function init_timing
.LCPI54_0:
	.quad	4607002274814922588     # double 0.97999999999999998
.LCPI54_1:
	.quad	4607272490792564818     # double 1.02
.LCPI54_4:
	.quad	4607182418800017408     # double 1
.LCPI54_5:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
.LCPI54_6:
	.quad	4607249972794427965     # double 1.0149999999999999
.LCPI54_7:
	.quad	4567911030049346683     # double 0.0025000000000000001
.LCPI54_8:
	.quad	4607340044786975375     # double 1.0349999999999999
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI54_2:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI54_3:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.text
	.p2align	4, 0x90
	.type	init_timing,@function
init_timing:                            # @init_timing
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
	subq	$48, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	cmpb	$0, init_timing.done(%rip)
	je	.LBB54_1
# %bb.19:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB54_1:
	.cfi_def_cfa %rbp, 16
	movb	$1, init_timing.done(%rip)
	movl	$.L.str.33, %edi
	callq	getenv
	testq	%rax, %rax
	je	.LBB54_2
# %bb.20:
	movq	%rax, %rdi
	callq	atoi
	movl	%eax, %r14d
	jmp	.LBB54_18
.LBB54_2:
	xorl	%r15d, %r15d
	movabsq	$-9223372036854775808, %r12 # imm = 0x8000000000000000
	jmp	.LBB54_3
	.p2align	4, 0x90
.LBB54_16:                              #   in Loop: Header=BB54_3 Depth=1
	addq	$1, %r15
	cmpq	$4, %r15
	je	.LBB54_17
.LBB54_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB54_6 Depth 2
	movl	possibilities(,%r15,4), %r14d
	movq	find_N.usecs(%rip), %rax
	testq	%rax, %rax
	jne	.LBB54_5
# %bb.4:                                #   in Loop: Header=BB54_3 Depth=1
	movq	find_N.N(%rip), %rdi
	callq	time_N
	movq	%rax, find_N.usecs(%rip)
.LBB54_5:                               #   in Loop: Header=BB54_3 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r14d, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	.LCPI54_0(%rip), %xmm1
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	mulsd	.LCPI54_1(%rip), %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movl	$10, %ebx
	jmp	.LBB54_6
	.p2align	4, 0x90
.LBB54_10:                              #   in Loop: Header=BB54_6 Depth=2
	movq	%rcx, %xmm1
	punpckldq	.LCPI54_2(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI54_3(%rip), %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2    # xmm2 = xmm2[1],xmm1[1]
	addsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	mulsd	-72(%rbp), %xmm2        # 8-byte Folded Reload
	addsd	.LCPI54_4(%rip), %xmm2
	movapd	%xmm2, %xmm0
	movsd	.LCPI54_5(%rip), %xmm1  # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %rax
	xorq	%r12, %rax
	cvttsd2si	%xmm2, %rdi
	ucomisd	%xmm1, %xmm2
	cmovaeq	%rax, %rdi
.LBB54_11:                              #   in Loop: Header=BB54_6 Depth=2
	movq	%rdi, find_N.N(%rip)
	callq	time_N
	movq	%rax, find_N.usecs(%rip)
	addl	$-1, %ebx
	je	.LBB54_16
.LBB54_6:                               #   Parent Loop BB54_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %xmm1
	punpckldq	.LCPI54_2(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI54_3(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	ucomisd	-48(%rbp), %xmm0        # 8-byte Folded Reload
	jbe	.LBB54_8
# %bb.7:                                #   in Loop: Header=BB54_6 Depth=2
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB54_12
.LBB54_8:                               #   in Loop: Header=BB54_6 Depth=2
	movq	find_N.N(%rip), %rcx
	cmpq	$999, %rax              # imm = 0x3E7
	ja	.LBB54_10
# %bb.9:                                #   in Loop: Header=BB54_6 Depth=2
	addq	%rcx, %rcx
	leaq	(%rcx,%rcx,4), %rdi
	jmp	.LBB54_11
	.p2align	4, 0x90
.LBB54_12:                              #   in Loop: Header=BB54_3 Depth=1
	movq	find_N.N(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB54_16
# %bb.13:                               #   in Loop: Header=BB54_3 Depth=1
	movq	%rbx, %rdi
	callq	time_N
	movq	%rbx, %xmm0
	movdqa	.LCPI54_2(%rip), %xmm1  # xmm1 = [1127219200,1160773632,0,0]
	movdqa	%xmm1, %xmm2
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movapd	.LCPI54_3(%rip), %xmm1  # xmm1 = [4.503599627370496E+15,1.9342813113834067E+25]
	movapd	%xmm1, %xmm3
	subpd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movq	%rax, %xmm0
	punpckldq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	subpd	%xmm3, %xmm0
	movapd	%xmm0, %xmm2
	unpckhpd	%xmm0, %xmm2    # xmm2 = xmm2[1],xmm0[1]
	addsd	%xmm0, %xmm2
	movapd	%xmm2, -48(%rbp)        # 16-byte Spill
	movapd	%xmm1, -64(%rbp)        # 16-byte Spill
	movapd	%xmm1, %xmm0
	movsd	.LCPI54_6(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movslq	%eax, %rdi
	callq	time_N
	movapd	-48(%rbp), %xmm0        # 16-byte Reload
	mulsd	.LCPI54_6(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movsd	.LCPI54_5(%rip), %xmm2  # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %rcx
	xorq	%r12, %rcx
	cvttsd2si	%xmm0, %rdx
	ucomisd	%xmm2, %xmm0
	cmovaeq	%rcx, %rdx
	movq	%rax, %rcx
	subq	%rdx, %rcx
	negq	%rcx
	subq	%rdx, %rax
	cmovbq	%rcx, %rax
	movq	%rax, %xmm0
	movdqa	.LCPI54_2(%rip), %xmm2  # xmm2 = [1127219200,1160773632,0,0]
	punpckldq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	movapd	.LCPI54_3(%rip), %xmm3  # xmm3 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm3, %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movq	%rdx, %xmm0
	punpckldq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	subpd	%xmm3, %xmm0
	movapd	%xmm0, %xmm2
	unpckhpd	%xmm0, %xmm2    # xmm2 = xmm2[1],xmm0[1]
	addsd	%xmm0, %xmm2
	divsd	%xmm2, %xmm1
	ucomisd	.LCPI54_7(%rip), %xmm1
	ja	.LBB54_16
# %bb.14:                               #   in Loop: Header=BB54_3 Depth=1
	movapd	-64(%rbp), %xmm0        # 16-byte Reload
	movsd	.LCPI54_1(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movslq	%eax, %rdi
	callq	time_N
	movapd	-48(%rbp), %xmm0        # 16-byte Reload
	mulsd	.LCPI54_1(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movsd	.LCPI54_5(%rip), %xmm2  # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %rcx
	xorq	%r12, %rcx
	cvttsd2si	%xmm0, %rdx
	ucomisd	%xmm2, %xmm0
	cmovaeq	%rcx, %rdx
	movq	%rax, %rcx
	subq	%rdx, %rcx
	negq	%rcx
	subq	%rdx, %rax
	cmovbq	%rcx, %rax
	movq	%rax, %xmm0
	movdqa	.LCPI54_2(%rip), %xmm1  # xmm1 = [1127219200,1160773632,0,0]
	movdqa	%xmm1, %xmm2
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movapd	.LCPI54_3(%rip), %xmm1  # xmm1 = [4.503599627370496E+15,1.9342813113834067E+25]
	movapd	%xmm1, %xmm3
	subpd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movq	%rdx, %xmm0
	punpckldq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	subpd	%xmm3, %xmm0
	movapd	%xmm0, %xmm2
	unpckhpd	%xmm0, %xmm2    # xmm2 = xmm2[1],xmm0[1]
	addsd	%xmm0, %xmm2
	divsd	%xmm2, %xmm1
	ucomisd	.LCPI54_7(%rip), %xmm1
	ja	.LBB54_16
# %bb.15:                               #   in Loop: Header=BB54_3 Depth=1
	movsd	.LCPI54_8(%rip), %xmm0  # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm1
	movapd	-64(%rbp), %xmm0        # 16-byte Reload
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movslq	%eax, %rdi
	callq	time_N
	movapd	-48(%rbp), %xmm2        # 16-byte Reload
	mulsd	.LCPI54_8(%rip), %xmm2
	movapd	%xmm2, %xmm0
	movsd	.LCPI54_5(%rip), %xmm1  # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %rcx
	xorq	%r12, %rcx
	cvttsd2si	%xmm2, %rdx
	ucomisd	%xmm1, %xmm2
	cmovaeq	%rcx, %rdx
	movq	%rax, %rcx
	subq	%rdx, %rcx
	negq	%rcx
	subq	%rdx, %rax
	cmovbq	%rcx, %rax
	movq	%rax, %xmm0
	movdqa	.LCPI54_2(%rip), %xmm1  # xmm1 = [1127219200,1160773632,0,0]
	movdqa	%xmm1, %xmm2
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movapd	.LCPI54_3(%rip), %xmm1  # xmm1 = [4.503599627370496E+15,1.9342813113834067E+25]
	movapd	%xmm1, %xmm3
	subpd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movq	%rdx, %xmm0
	punpckldq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	subpd	%xmm3, %xmm0
	movapd	%xmm0, %xmm2
	unpckhpd	%xmm0, %xmm2    # xmm2 = xmm2[1],xmm0[1]
	addsd	%xmm0, %xmm2
	divsd	%xmm2, %xmm1
	ucomisd	.LCPI54_7(%rip), %xmm1
	ja	.LBB54_16
	jmp	.LBB54_18
.LBB54_17:
	movl	$1000000, %r14d         # imm = 0xF4240
.LBB54_18:
	movl	%r14d, long_enough(%rip)
	callq	t_overhead
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	jmp	l_overhead              # TAILCALL
.Lfunc_end54:
	.size	init_timing, .Lfunc_end54-init_timing
	.cfi_endproc
                                        # -- End function
	.globl	morefds                 # -- Begin function morefds
	.p2align	4, 0x90
	.type	morefds,@function
morefds:                                # @morefds
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -24
	leaq	-24(%rbp), %rbx
	movl	$8, %edi
	movq	%rbx, %rsi
	callq	getrlimit
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$8, %edi
	movq	%rbx, %rsi
	callq	setrlimit
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end55:
	.size	morefds, .Lfunc_end55-morefds
	.cfi_endproc
                                        # -- End function
	.globl	bread                   # -- Begin function bread
	.p2align	4, 0x90
	.type	bread,@function
bread:                                  # @bread
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	(%rdi,%rsi), %rcx
	xorl	%eax, %eax
	cmpq	$1024, %rsi             # imm = 0x400
	jge	.LBB56_7
# %bb.1:
	movq	%rdi, %rdx
	jmp	.LBB56_2
	.p2align	4, 0x90
.LBB56_7:                               # =>This Inner Loop Header: Depth=1
	movdqu	672(%rdi), %xmm0
	movdqu	160(%rdi), %xmm1
	paddq	%xmm0, %xmm1
	movdqu	928(%rdi), %xmm0
	movdqu	416(%rdi), %xmm12
	paddq	%xmm0, %xmm12
	paddq	%xmm1, %xmm12
	movdqu	544(%rdi), %xmm8
	movdqu	800(%rdi), %xmm0
	movdqu	288(%rdi), %xmm11
	paddq	%xmm0, %xmm11
	movdqu	736(%rdi), %xmm0
	movdqu	224(%rdi), %xmm1
	paddq	%xmm0, %xmm1
	movdqu	992(%rdi), %xmm0
	movdqu	480(%rdi), %xmm2
	paddq	%xmm0, %xmm2
	paddq	%xmm1, %xmm2
	movdqu	608(%rdi), %xmm0
	movdqu	96(%rdi), %xmm1
	paddq	%xmm0, %xmm1
	movdqu	864(%rdi), %xmm0
	movdqu	352(%rdi), %xmm3
	paddq	%xmm0, %xmm3
	paddq	%xmm1, %xmm3
	paddq	%xmm2, %xmm3
	movdqu	640(%rdi), %xmm0
	movdqu	128(%rdi), %xmm1
	paddq	%xmm0, %xmm1
	movdqu	896(%rdi), %xmm0
	movdqu	384(%rdi), %xmm4
	paddq	%xmm0, %xmm4
	paddq	%xmm1, %xmm4
	movdqu	512(%rdi), %xmm9
	movdqu	768(%rdi), %xmm0
	movdqu	256(%rdi), %xmm13
	paddq	%xmm0, %xmm13
	movdqu	704(%rdi), %xmm0
	movdqu	192(%rdi), %xmm1
	paddq	%xmm0, %xmm1
	movdqu	960(%rdi), %xmm0
	movdqu	448(%rdi), %xmm2
	paddq	%xmm0, %xmm2
	paddq	%xmm1, %xmm2
	movdqu	576(%rdi), %xmm0
	movdqu	64(%rdi), %xmm5
	paddq	%xmm0, %xmm5
	movdqu	832(%rdi), %xmm0
	movdqu	320(%rdi), %xmm1
	paddq	%xmm0, %xmm1
	paddq	%xmm5, %xmm1
	paddq	%xmm2, %xmm1
	movdqu	688(%rdi), %xmm0
	movdqu	176(%rdi), %xmm2
	paddq	%xmm0, %xmm2
	movdqu	944(%rdi), %xmm0
	movdqu	432(%rdi), %xmm7
	paddq	%xmm0, %xmm7
	paddq	%xmm2, %xmm7
	movdqu	560(%rdi), %xmm10
	movdqu	816(%rdi), %xmm0
	movdqu	304(%rdi), %xmm14
	paddq	%xmm0, %xmm14
	movdqu	752(%rdi), %xmm0
	movdqu	240(%rdi), %xmm2
	paddq	%xmm0, %xmm2
	movdqu	1008(%rdi), %xmm0
	movdqu	496(%rdi), %xmm6
	paddq	%xmm0, %xmm6
	paddq	%xmm2, %xmm6
	movdqu	624(%rdi), %xmm0
	movdqu	112(%rdi), %xmm5
	paddq	%xmm0, %xmm5
	movdqu	880(%rdi), %xmm0
	movdqu	368(%rdi), %xmm2
	paddq	%xmm0, %xmm2
	paddq	%xmm5, %xmm2
	paddq	%xmm6, %xmm2
	movdqu	656(%rdi), %xmm0
	movdqu	144(%rdi), %xmm5
	paddq	%xmm0, %xmm5
	movdqu	912(%rdi), %xmm6
	movdqu	400(%rdi), %xmm0
	paddq	%xmm6, %xmm0
	paddq	%xmm5, %xmm0
	movdqu	528(%rdi), %xmm5
	movdqu	(%rdi), %xmm6
	paddq	%xmm9, %xmm6
	paddq	%xmm13, %xmm6
	paddq	%xmm4, %xmm6
	paddq	%xmm1, %xmm6
	movdqu	16(%rdi), %xmm4
	paddq	%xmm5, %xmm4
	movdqu	32(%rdi), %xmm1
	paddq	%xmm8, %xmm1
	paddq	%xmm11, %xmm1
	paddq	%xmm12, %xmm1
	paddq	%xmm3, %xmm1
	paddq	%xmm6, %xmm1
	movdqu	48(%rdi), %xmm3
	paddq	%xmm10, %xmm3
	paddq	%xmm14, %xmm3
	paddq	%xmm7, %xmm3
	paddq	%xmm2, %xmm3
	movdqu	784(%rdi), %xmm2
	movdqu	272(%rdi), %xmm5
	paddq	%xmm2, %xmm5
	paddq	%xmm4, %xmm5
	paddq	%xmm0, %xmm5
	movdqu	720(%rdi), %xmm0
	movdqu	208(%rdi), %xmm2
	paddq	%xmm0, %xmm2
	movdqu	976(%rdi), %xmm0
	movdqu	464(%rdi), %xmm4
	paddq	%xmm0, %xmm4
	paddq	%xmm2, %xmm4
	movdqu	592(%rdi), %xmm0
	movdqu	80(%rdi), %xmm2
	paddq	%xmm0, %xmm2
	movdqu	848(%rdi), %xmm0
	movdqu	336(%rdi), %xmm6
	paddq	%xmm0, %xmm6
	paddq	%xmm2, %xmm6
	paddq	%xmm4, %xmm6
	paddq	%xmm5, %xmm6
	paddq	%xmm3, %xmm6
	paddq	%xmm1, %xmm6
	pshufd	$78, %xmm6, %xmm0       # xmm0 = xmm6[2,3,0,1]
	paddq	%xmm6, %xmm0
	movq	%xmm0, %rdx
	addq	%rdx, %rax
	leaq	1024(%rdi), %rdx
	addq	$2048, %rdi             # imm = 0x800
	cmpq	%rdi, %rcx
	movq	%rdx, %rdi
	jae	.LBB56_7
.LBB56_2:
	leaq	128(%rdx), %rsi
	cmpq	%rsi, %rcx
	jae	.LBB56_8
# %bb.3:
	movq	%rdx, %rsi
	jmp	.LBB56_5
	.p2align	4, 0x90
.LBB56_8:                               # =>This Inner Loop Header: Depth=1
	movdqu	80(%rdx), %xmm0
	movdqu	112(%rdx), %xmm1
	movdqu	64(%rdx), %xmm2
	movdqu	96(%rdx), %xmm3
	movdqu	(%rdx), %xmm4
	paddq	%xmm2, %xmm4
	movdqu	16(%rdx), %xmm2
	paddq	%xmm0, %xmm2
	movdqu	32(%rdx), %xmm0
	paddq	%xmm3, %xmm0
	paddq	%xmm4, %xmm0
	movdqu	48(%rdx), %xmm3
	paddq	%xmm1, %xmm3
	paddq	%xmm2, %xmm3
	paddq	%xmm0, %xmm3
	pshufd	$78, %xmm3, %xmm0       # xmm0 = xmm3[2,3,0,1]
	paddq	%xmm3, %xmm0
	movq	%xmm0, %rsi
	addq	%rsi, %rax
	leaq	128(%rdx), %rsi
	addq	$256, %rdx              # imm = 0x100
	cmpq	%rdx, %rcx
	movq	%rsi, %rdx
	jae	.LBB56_8
	jmp	.LBB56_5
	.p2align	4, 0x90
.LBB56_4:                               #   in Loop: Header=BB56_5 Depth=1
	addq	-8(%rsi), %rax
.LBB56_5:                               # =>This Inner Loop Header: Depth=1
	addq	$8, %rsi
	cmpq	%rsi, %rcx
	jae	.LBB56_4
# %bb.6:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end56:
	.size	bread, .Lfunc_end56-bread
	.cfi_endproc
                                        # -- End function
	.globl	touch                   # -- Begin function touch
	.p2align	4, 0x90
	.type	touch,@function
touch:                                  # @touch
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	touch.psize(%rip), %rax
	testq	%rax, %rax
	je	.LBB57_1
# %bb.2:
	cmpq	%r14, %rax
	ja	.LBB57_4
	.p2align	4, 0x90
.LBB57_3:                               # =>This Inner Loop Header: Depth=1
	movb	$1, (%rbx)
	addq	%rax, %rbx
	subq	%rax, %r14
	cmpq	%rax, %r14
	jae	.LBB57_3
.LBB57_4:
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB57_1:
	.cfi_def_cfa %rbp, 16
	callq	getpagesize
	cltq
	movq	%rax, touch.psize(%rip)
	cmpq	%r14, %rax
	jbe	.LBB57_3
	jmp	.LBB57_4
.Lfunc_end57:
	.size	touch, .Lfunc_end57-touch
	.cfi_endproc
                                        # -- End function
	.globl	permutation             # -- Begin function permutation
	.p2align	4, 0x90
	.type	permutation,@function
permutation:                            # @permutation
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
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r15
	movq	%rdi, %r14
	leaq	(,%rdi,8), %rdi
	callq	malloc
	testq	%rax, %rax
	je	.LBB58_1
# %bb.2:
	movq	%rax, %r12
	testq	%r14, %r14
	je	.LBB58_10
# %bb.3:
	leaq	-1(%r14), %rax
	movl	%r14d, %r8d
	andl	$3, %r8d
	cmpq	$3, %rax
	jae	.LBB58_5
# %bb.4:
	xorl	%ecx, %ecx
	testq	%r8, %r8
	jne	.LBB58_8
	jmp	.LBB58_10
.LBB58_1:
	xorl	%r12d, %r12d
	jmp	.LBB58_15
.LBB58_5:
	movq	%r14, %rdx
	subq	%r8, %rdx
	leaq	(%r15,%r15,2), %r9
	leaq	(,%r15,4), %rdi
	leaq	(%r15,%r15), %rbx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB58_6:                               # =>This Inner Loop Header: Depth=1
	movq	%rax, (%r12,%rcx,8)
	leaq	(%r15,%rax), %rsi
	movq	%rsi, 8(%r12,%rcx,8)
	leaq	(%rbx,%rax), %rsi
	movq	%rsi, 16(%r12,%rcx,8)
	leaq	(%r9,%rax), %rsi
	movq	%rsi, 24(%r12,%rcx,8)
	addq	$4, %rcx
	addq	%rdi, %rax
	cmpq	%rcx, %rdx
	jne	.LBB58_6
# %bb.7:
	testq	%r8, %r8
	je	.LBB58_10
.LBB58_8:
	leaq	(%r12,%rcx,8), %rax
	imulq	%r15, %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB58_9:                               # =>This Inner Loop Header: Depth=1
	movq	%rcx, (%rax,%rdx,8)
	addq	$1, %rdx
	addq	%r15, %rcx
	cmpq	%rdx, %r8
	jne	.LBB58_9
.LBB58_10:
	movq	permutation.r(%rip), %rbx
	testq	%rbx, %rbx
	jne	.LBB58_12
# %bb.11:
	callq	getpid
	movl	%eax, %r13d
	shll	$6, %r13d
	callq	getppid
	movl	%eax, %r15d
	callq	rand
	movl	%eax, %ebx
	xorl	%r15d, %ebx
	xorl	%r13d, %ebx
	callq	rand
	shll	$10, %eax
	xorl	%ebx, %eax
	movslq	%eax, %rbx
	movq	%rbx, permutation.r(%rip)
.LBB58_12:
	testq	%r14, %r14
	je	.LBB58_15
# %bb.13:
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB58_14:                              # =>This Inner Loop Header: Depth=1
	addq	%rbx, %rbx
	callq	rand
	cltq
	xorq	%rax, %rbx
	movq	%rbx, permutation.r(%rip)
	movq	%rbx, %rax
	xorl	%edx, %edx
	divq	%r14
	movq	(%r12,%rdx,8), %rax
	movq	(%r12,%r15,8), %rcx
	movq	%rcx, (%r12,%rdx,8)
	movq	%rax, (%r12,%r15,8)
	addq	$1, %r15
	cmpq	%r15, %r14
	jne	.LBB58_14
.LBB58_15:
	movq	%r12, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end58:
	.size	permutation, .Lfunc_end58-permutation
	.cfi_endproc
                                        # -- End function
	.globl	cp                      # -- Begin function cp
	.p2align	4, 0x90
	.type	cp,@function
cp:                                     # @cp
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
	subq	$8200, %rsp             # imm = 0x2008
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%edx, %ebx
	movq	%rsi, %r12
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	open
	movl	$-1, %r14d
	testl	%eax, %eax
	js	.LBB59_6
# %bb.1:
	movl	%eax, %r15d
	movzwl	%bx, %edx
	movq	%r12, %rdi
	movl	$1538, %esi             # imm = 0x602
	xorl	%eax, %eax
	callq	open
	testl	%eax, %eax
	js	.LBB59_6
# %bb.2:
	movl	%eax, %r12d
	leaq	-8240(%rbp), %r13
	.p2align	4, 0x90
.LBB59_3:                               # =>This Inner Loop Header: Depth=1
	movl	$8192, %edx             # imm = 0x2000
	movl	%r15d, %edi
	movq	%r13, %rsi
	callq	read
	testq	%rax, %rax
	jle	.LBB59_5
# %bb.4:                                #   in Loop: Header=BB59_3 Depth=1
	movq	%rax, %rbx
	movl	%r12d, %edi
	movq	%r13, %rsi
	movq	%rax, %rdx
	callq	write
	cmpq	%rbx, %rax
	jge	.LBB59_3
	jmp	.LBB59_6
.LBB59_5:
	movl	%r12d, %edi
	callq	fsync
	movl	%r15d, %edi
	callq	close
	movl	%r12d, %edi
	callq	close
	xorl	%r14d, %r14d
.LBB59_6:
	movl	%r14d, %eax
	addq	$8200, %rsp             # imm = 0x2008
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end59:
	.size	cp, .Lfunc_end59-cp
	.cfi_endproc
                                        # -- End function
	.globl	seekto                  # -- Begin function seekto
	.p2align	4, 0x90
	.type	seekto,@function
seekto:                                 # @seekto
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
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%edx, %ebx
	movq	%rsi, %r12
	movl	%edi, %r15d
	cmpl	$2, %edx
	je	.LBB60_4
# %bb.1:
	cmpl	$1, %ebx
	je	.LBB60_6
# %bb.2:
	testl	%ebx, %ebx
	jne	.LBB60_7
# %bb.3:
	movl	%r15d, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	lseek
	jmp	.LBB60_7
.LBB60_4:
	movl	%r15d, %edi
	xorl	%esi, %esi
	movl	$2, %edx
	callq	lseek
	cmpq	$-1, %rax
	jne	.LBB60_7
	jmp	.LBB60_5
.LBB60_6:
	testq	%r12, %r12
	je	.LBB60_17
.LBB60_7:
	movl	%ebx, -44(%rbp)         # 4-byte Spill
	xorl	%r13d, %r13d
	testq	%r12, %r12
	setns	%r13b
	shlq	$31, %r13
	addq	$-1073741824, %r13      # imm = 0xC0000000
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	cmpq	%r12, %r13
	setg	%al
	setl	%cl
	testq	%r12, %r12
	cmovnsl	%ecx, %eax
	movq	%r12, %rbx
	cmpb	$1, %al
	jne	.LBB60_13
# %bb.8:
	movq	%r13, %r14
	negq	%r14
	movq	%r12, %rbx
	jmp	.LBB60_10
	.p2align	4, 0x90
.LBB60_9:                               #   in Loop: Header=BB60_10 Depth=1
	leaq	(%r14,%rbx), %rax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	cmpq	%r13, %rax
	setl	%cl
	setg	%dl
	testq	%r12, %r12
	cmovnsl	%edx, %ecx
	subq	%r13, %rbx
	testb	%cl, %cl
	je	.LBB60_13
.LBB60_10:                              # =>This Inner Loop Header: Depth=1
	movl	%r15d, %edi
	movq	%r13, %rsi
	movl	$1, %edx
	callq	lseek
	cmpq	$-1, %rax
	jne	.LBB60_9
# %bb.11:                               #   in Loop: Header=BB60_10 Depth=1
	callq	__error
	cmpl	$0, (%rax)
	je	.LBB60_9
.LBB60_5:
	movq	$-1, %r12
	jmp	.LBB60_16
.LBB60_13:
	movslq	%ebx, %rsi
	movl	%r15d, %edi
	movl	$1, %edx
	callq	lseek
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	jne	.LBB60_15
# %bb.14:
	cmpl	$-1, %eax
	jne	.LBB60_16
.LBB60_15:
	movslq	%eax, %r12
.LBB60_16:
	movq	%r12, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB60_17:
	.cfi_def_cfa %rbp, 16
	movl	%r15d, %edi
	xorl	%esi, %esi
	movl	$1, %edx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	jmp	lseek                   # TAILCALL
.Lfunc_end60:
	.size	seekto, .Lfunc_end60-seekto
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function time_N
.LCPI61_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI61_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
.LCPI61_2:
	.quad	4294967295              # 0xffffffff
	.quad	4294967295              # 0xffffffff
.LCPI61_3:
	.quad	4841369599423283200     # 0x4330000000000000
	.quad	4841369599423283200     # 0x4330000000000000
.LCPI61_4:
	.quad	4985484787499139072     # 0x4530000000000000
	.quad	4985484787499139072     # 0x4530000000000000
.LCPI61_5:
	.quad	4985484787500187648     # double 1.9342813118337666E+25
	.quad	4985484787500187648     # double 1.9342813118337666E+25
	.text
	.p2align	4, 0x90
	.type	time_N,@function
time_N:                                 # @time_N
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
	subq	$232, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %r12
	movq	results(%rip), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$0, -264(%rbp)
	movq	%rdi, %xmm0
	punpckldq	.LCPI61_0(%rip), %xmm0 # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI61_1(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movapd	%xmm1, -80(%rbp)        # 16-byte Spill
	leaq	-1(%rdi), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	$1, %r14d
	xorl	%r15d, %r15d
	movabsq	$4294967296, %rax       # imm = 0x100000000
	jmp	.LBB61_1
	.p2align	4, 0x90
.LBB61_16:                              #   in Loop: Header=BB61_1 Depth=1
	xorl	%ecx, %ecx
.LBB61_28:                              #   in Loop: Header=BB61_1 Depth=1
	movl	%ecx, %ecx
	shlq	$4, %rcx
	movq	%r11, -256(%rbp,%rcx)
	movq	%r12, -248(%rbp,%rcx)
	addl	$1, %r15d
	movl	%r15d, -264(%rbp)
.LBB61_29:                              #   in Loop: Header=BB61_1 Depth=1
	addl	$1, %r14d
	cmpl	$11, %r14d
	je	.LBB61_30
.LBB61_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB61_5 Depth 2
                                        #     Child Loop BB61_18 Depth 2
                                        #     Child Loop BB61_24 Depth 2
	movq	%rax, %rbx
	leaq	-48(%rbp), %r13
	movq	%r13, -48(%rbp)
	movl	$ru_start, %esi
	xorl	%edi, %edi
	callq	getrusage
	movl	$start_tv, %edi
	xorl	%esi, %esi
	callq	gettimeofday
	testq	%r12, %r12
	jle	.LBB61_6
# %bb.2:                                #   in Loop: Header=BB61_1 Depth=1
	leaq	-48(%rbp), %r13
	movq	%r12, %rax
	testb	$1, %r12b
	je	.LBB61_4
# %bb.3:                                #   in Loop: Header=BB61_1 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %r13
	movq	-64(%rbp), %rax         # 8-byte Reload
.LBB61_4:                               #   in Loop: Header=BB61_1 Depth=1
	cmpq	$1, %r12
	je	.LBB61_6
	.p2align	4, 0x90
.LBB61_5:                               #   Parent Loop BB61_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r13), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %r13
	addq	$-2, %rax
	jg	.LBB61_5
.LBB61_6:                               #   in Loop: Header=BB61_1 Depth=1
	movl	$stop_tv, %edi
	xorl	%esi, %esi
	callq	gettimeofday
	movl	$ru_stop, %esi
	xorl	%edi, %edi
	callq	getrusage
	movq	stop_tv(%rip), %rdx
	movq	start_tv(%rip), %rsi
	movq	%rdx, %rax
	subq	%rsi, %rax
	movq	stop_tv+8(%rip), %rcx
	subq	start_tv+8(%rip), %rcx
	js	.LBB61_8
# %bb.7:                                #   in Loop: Header=BB61_1 Depth=1
	movdqa	.LCPI61_2(%rip), %xmm3  # xmm3 = [4294967295,4294967295]
	movdqa	.LCPI61_3(%rip), %xmm4  # xmm4 = [4841369599423283200,4841369599423283200]
	movdqa	.LCPI61_4(%rip), %xmm5  # xmm5 = [4985484787499139072,4985484787499139072]
	movapd	.LCPI61_5(%rip), %xmm6  # xmm6 = [1.9342813118337666E+25,1.9342813118337666E+25]
	cmpq	%rsi, %rdx
	jl	.LBB61_12
	jmp	.LBB61_13
	.p2align	4, 0x90
.LBB61_8:                               #   in Loop: Header=BB61_1 Depth=1
	testq	%rax, %rax
	movdqa	.LCPI61_2(%rip), %xmm3  # xmm3 = [4294967295,4294967295]
	movdqa	.LCPI61_3(%rip), %xmm4  # xmm4 = [4841369599423283200,4841369599423283200]
	movdqa	.LCPI61_4(%rip), %xmm5  # xmm5 = [4985484787499139072,4985484787499139072]
	movapd	.LCPI61_5(%rip), %xmm6  # xmm6 = [1.9342813118337666E+25,1.9342813118337666E+25]
	jle	.LBB61_12
# %bb.9:                                #   in Loop: Header=BB61_1 Depth=1
	addq	$1000000, %rcx          # imm = 0xF4240
	js	.LBB61_44
# %bb.10:                               #   in Loop: Header=BB61_1 Depth=1
	addq	$-1, %rax
	cmpq	%rsi, %rdx
	jge	.LBB61_13
.LBB61_12:                              #   in Loop: Header=BB61_1 Depth=1
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB61_13:                              #   in Loop: Header=BB61_1 Depth=1
	imulq	$1000000, %rax, %r11    # imm = 0xF4240
	addq	%r13, use_result_dummy(%rip)
	addq	%rcx, %r11
	je	.LBB61_14
# %bb.15:                               #   in Loop: Header=BB61_1 Depth=1
	testl	%r15d, %r15d
	movq	%rbx, %rax
	jle	.LBB61_16
# %bb.17:                               #   in Loop: Header=BB61_1 Depth=1
	movq	%r11, %xmm1
	punpckldq	.LCPI61_0(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI61_1(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	divsd	-80(%rbp), %xmm0        # 16-byte Folded Reload
	movslq	%r15d, %rsi
	leaq	-256(%rbp), %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB61_18:                              #   Parent Loop BB61_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%rdi), %xmm1
	movdqa	%xmm1, %xmm2
	pand	%xmm3, %xmm2
	por	%xmm4, %xmm2
	psrlq	$32, %xmm1
	por	%xmm5, %xmm1
	subpd	%xmm6, %xmm1
	addpd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2    # xmm2 = xmm2[1],xmm1[1]
	divsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	ja	.LBB61_19
# %bb.26:                               #   in Loop: Header=BB61_18 Depth=2
	addq	$1, %rcx
	addq	%rax, %rdx
	addq	$16, %rdi
	cmpq	%rcx, %rsi
	jne	.LBB61_18
# %bb.27:                               #   in Loop: Header=BB61_1 Depth=1
	movq	%rsi, %rcx
	jmp	.LBB61_28
	.p2align	4, 0x90
.LBB61_14:                              #   in Loop: Header=BB61_1 Depth=1
	movq	%rbx, %rax
	jmp	.LBB61_29
.LBB61_19:                              #   in Loop: Header=BB61_1 Depth=1
	cmpl	%ecx, %r15d
	jle	.LBB61_28
# %bb.20:                               #   in Loop: Header=BB61_1 Depth=1
	sarq	$32, %rdx
	subl	%edx, %r15d
	movq	%rdx, %r9
	notq	%r9
	movq	%rsi, %rbx
	testb	$1, %r15b
	je	.LBB61_22
# %bb.21:                               #   in Loop: Header=BB61_1 Depth=1
	movq	%rsi, %r8
	shlq	$4, %r8
	leaq	-1(%rsi), %rbx
	movq	%rbx, %rdi
	shlq	$4, %rdi
	movupd	-256(%rbp,%rdi), %xmm0
	movupd	%xmm0, -256(%rbp,%r8)
.LBB61_22:                              #   in Loop: Header=BB61_1 Depth=1
	addq	%rsi, %r9
	je	.LBB61_25
# %bb.23:                               #   in Loop: Header=BB61_1 Depth=1
	movq	%rbx, %rsi
	shlq	$4, %rsi
	leaq	-256(%rbp), %rdi
	addq	%rdi, %rsi
	.p2align	4, 0x90
.LBB61_24:                              #   Parent Loop BB61_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movupd	-32(%rsi), %xmm0
	movupd	-16(%rsi), %xmm1
	movupd	%xmm1, (%rsi)
	addq	$-2, %rbx
	movupd	%xmm0, -16(%rsi)
	addq	$-32, %rsi
	cmpq	%rdx, %rbx
	jg	.LBB61_24
.LBB61_25:                              #   in Loop: Header=BB61_1 Depth=1
	movl	-264(%rbp), %r15d
	jmp	.LBB61_28
.LBB61_30:
	leaq	-264(%rbp), %rbx
	movq	%rbx, results(%rip)
	movabsq	$4835703278458516699, %r8 # imm = 0x431BDE82D7B634DB
	testl	%r15d, %r15d
	je	.LBB61_36
# %bb.31:
	movl	%r15d, %eax
	shrl	$31, %eax
	addl	%r15d, %eax
	sarl	%eax
	cltq
	shlq	$4, %rax
	leaq	(%rax,%rbp), %rdx
	addq	$-256, %rdx
	movq	-248(%rbp,%rax), %rsi
	testb	$1, %r15b
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jne	.LBB61_32
# %bb.33:
	addq	(%rax,%rbx), %rsi
	shrq	%rsi
	movq	-8(%rax,%rbx), %rcx
	addq	(%rdx), %rcx
	shrq	%rcx
	jmp	.LBB61_34
.LBB61_36:
	movq	$1, iterations(%rip)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, start_tv(%rip)
	movapd	%xmm0, stop_tv(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB61_37
.LBB61_32:
	movq	(%rdx), %rcx
.LBB61_34:
	movq	%rcx, %rax
	mulq	%r8
	shrq	$18, %rdx
	imulq	$1000000, %rdx, %rax    # imm = 0xF4240
	subq	%rax, %rcx
	movq	%rsi, iterations(%rip)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, start_tv(%rip)
	movq	%rdx, stop_tv(%rip)
	movq	%rcx, stop_tv+8(%rip)
	testl	%r15d, %r15d
	je	.LBB61_37
# %bb.35:
	movslq	%r15d, %rax
	shlq	$4, %rax
	movq	-8(%rax,%rbx), %rsi
	movq	(%rax,%rbx), %rax
	movq	%rax, iterations(%rip)
	movupd	%xmm0, start_tv(%rip)
	movq	%rsi, %rax
	mulq	%r8
	shrq	$18, %rdx
	movq	%rdx, stop_tv(%rip)
	imulq	$1000000, %rdx, %rcx    # imm = 0xF4240
	subq	%rcx, %rsi
	jmp	.LBB61_38
.LBB61_37:
	movq	$1, iterations(%rip)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, start_tv(%rip)
	movq	$0, stop_tv(%rip)
	xorl	%ecx, %ecx
	xorl	%esi, %esi
.LBB61_38:
	movq	%rsi, stop_tv+8(%rip)
	addq	%rsi, %rcx
	movq	%rdi, results(%rip)
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.LBB61_39
# %bb.40:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	movslq	%eax, %rsi
	shlq	$4, %rsi
	leaq	(%rdi,%rsi), %rbx
	addq	$8, %rbx
	movq	16(%rdi,%rsi), %rax
	testb	$1, %dl
	jne	.LBB61_41
# %bb.42:
	addq	(%rsi,%rdi), %rax
	shrq	%rax
	movq	-8(%rsi,%rdi), %rsi
	addq	(%rbx), %rsi
	shrq	%rsi
	jmp	.LBB61_43
.LBB61_39:
	movl	$1, %eax
	xorl	%esi, %esi
	jmp	.LBB61_43
.LBB61_41:
	movq	(%rbx), %rsi
.LBB61_43:
	movq	%rax, iterations(%rip)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, start_tv(%rip)
	movq	%rsi, %rax
	mulq	%r8
	shrq	$18, %rdx
	movq	%rdx, stop_tv(%rip)
	imulq	$1000000, %rdx, %rax    # imm = 0xF4240
	subq	%rax, %rsi
	movq	%rsi, stop_tv+8(%rip)
	movq	%rcx, %rax
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB61_44:
	.cfi_def_cfa %rbp, 16
	movl	$.L__func__.tvsub, %edi
	movl	$.L.str.24, %esi
	movl	$.L.str.25, %ecx
	movl	$1099, %edx             # imm = 0x44B
	callq	__assert
.Lfunc_end61:
	.size	time_N, .Lfunc_end61-time_N
	.cfi_endproc
                                        # -- End function
	.type	ru_stop,@object         # @ru_stop
	.local	ru_stop
	.comm	ru_stop,144,8
	.type	ru_start,@object        # @ru_start
	.local	ru_start
	.comm	ru_start,144,8
	.type	ftiming,@object         # @ftiming
	.comm	ftiming,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"real=%.2f sys=%.2f user=%.2f idle=%.2f stall=%.0f%% "
	.size	.L.str, 53

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"rd=%d wr=%d min=%d maj=%d ctx=%d\n"
	.size	.L.str.1, 34

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Usage: %s %s"
	.size	.L.str.2, 13

	.type	benchmp_sigterm_received,@object # @benchmp_sigterm_received
	.local	benchmp_sigterm_received
	.comm	benchmp_sigterm_received,1,4
	.type	benchmp_sigchld_received,@object # @benchmp_sigchld_received
	.local	benchmp_sigchld_received
	.comm	benchmp_sigchld_received,1,4
	.type	benchmp_sigalrm_pid,@object # @benchmp_sigalrm_pid
	.local	benchmp_sigalrm_pid
	.comm	benchmp_sigalrm_pid,4,4
	.type	benchmp_sigalrm_timeout,@object # @benchmp_sigalrm_timeout
	.local	benchmp_sigalrm_timeout
	.comm	benchmp_sigalrm_timeout,4,4
	.type	benchmp_sigterm_handler,@object # @benchmp_sigterm_handler
	.comm	benchmp_sigterm_handler,8,8
	.type	benchmp_sigchld_handler,@object # @benchmp_sigchld_handler
	.comm	benchmp_sigchld_handler,8,8
	.type	benchmp_sigalrm_handler,@object # @benchmp_sigalrm_handler
	.comm	benchmp_sigalrm_handler,8,8
	.type	_benchmp_child_state,@object # @_benchmp_child_state
	.local	_benchmp_child_state
	.comm	_benchmp_child_state,120,8
	.type	start_tv,@object        # @start_tv
	.local	start_tv
	.comm	start_tv,16,8
	.type	stop_tv,@object         # @stop_tv
	.local	stop_tv
	.comm	stop_tv,16,16
	.type	delta.last,@object      # @delta.last
	.local	delta.last
	.comm	delta.last,16,8
	.type	iterations,@object      # @iterations
	.local	iterations
	.comm	iterations,8,8
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%.4f MB in %.4f secs, %.4f MB/sec\n"
	.size	.L.str.3, 35

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%.6f "
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%.2f "
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%.6f\n"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%.2f\n"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%.0f KB/sec\n"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%.2f MB/sec\n"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%d %dKB xfers in %.2f secs, "
	.size	.L.str.10, 29

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%.1fKB in "
	.size	.L.str.11, 11

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%.0f millisec%s, "
	.size	.L.str.12, 18

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"/xfer"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"s"
	.size	.L.str.14, 2

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%.4f millisec%s, "
	.size	.L.str.15, 18

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%.2f KB/sec\n"
	.size	.L.str.16, 13

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%d context switches in %.2f secs, %.0f microsec/switch\n"
	.size	.L.str.17, 56

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%s: %.2f nanoseconds\n"
	.size	.L.str.18, 22

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%s: %.4f microseconds\n"
	.size	.L.str.19, 23

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%.6f %.0f\n"
	.size	.L.str.20, 11

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"%.6f %.3f\n"
	.size	.L.str.21, 11

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%s: %d milliseconds\n"
	.size	.L.str.22, 21

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%d in %.2f secs, %.0f microseconds each\n"
	.size	.L.str.23, 41

	.type	.L__func__.tvsub,@object # @__func__.tvsub
.L__func__.tvsub:
	.asciz	"tvsub"
	.size	.L__func__.tvsub, 6

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"lib_timing.c"
	.size	.L.str.24, 13

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"tdiff->tv_usec >= 0"
	.size	.L.str.25, 20

	.type	p64buf,@object          # @p64buf
	.local	p64buf
	.comm	p64buf,200,16
	.type	n,@object               # @n
	.local	n
	.comm	n,4,4
	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	" KMGTPE"
	.size	.L.str.26, 8

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"0"
	.size	.L.str.27, 2

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"%.4f%c"
	.size	.L.str.28, 7

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"%.2f%c"
	.size	.L.str.29, 7

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"%llu"
	.size	.L.str.30, 5

	.type	use_result_dummy,@object # @use_result_dummy
	.local	use_result_dummy
	.comm	use_result_dummy,8,8
	.type	results,@object         # @results
	.data
	.p2align	3
results:
	.quad	_results
	.size	results, 8

	.type	l_overhead.overhead,@object # @l_overhead.overhead
	.local	l_overhead.overhead
	.comm	l_overhead.overhead,8,8
	.type	l_overhead.initialized,@object # @l_overhead.initialized
	.local	l_overhead.initialized
	.comm	l_overhead.initialized,1,4
	.type	.L.str.31,@object       # @.str.31
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.31:
	.asciz	"LOOP_O"
	.size	.L.str.31, 7

	.type	p,@object               # @p
	.data
	.p2align	3
p:
	.quad	p
	.size	p, 8

	.type	t_overhead.initialized,@object # @t_overhead.initialized
	.local	t_overhead.initialized
	.comm	t_overhead.initialized,1,4
	.type	t_overhead.overhead,@object # @t_overhead.overhead
	.local	t_overhead.overhead
	.comm	t_overhead.overhead,8,8
	.type	.L.str.32,@object       # @.str.32
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.32:
	.asciz	"TIMING_O"
	.size	.L.str.32, 9

	.type	t_overhead.__iterations,@object # @t_overhead.__iterations
	.data
	.p2align	3
t_overhead.__iterations:
	.quad	1                       # 0x1
	.size	t_overhead.__iterations, 8

	.type	long_enough,@object     # @long_enough
	.local	long_enough
	.comm	long_enough,4,4
	.type	touch.psize,@object     # @touch.psize
	.local	touch.psize
	.comm	touch.psize,8,8
	.type	permutation.r,@object   # @permutation.r
	.local	permutation.r
	.comm	permutation.r,8,8
	.type	_results,@object        # @_results
	.local	_results
	.comm	_results,184,8
	.type	one_op.__iterations,@object # @one_op.__iterations
	.p2align	3
one_op.__iterations:
	.quad	1                       # 0x1
	.size	one_op.__iterations, 8

	.type	two_op.__iterations,@object # @two_op.__iterations
	.p2align	3
two_op.__iterations:
	.quad	1                       # 0x1
	.size	two_op.__iterations, 8

	.type	init_timing.done,@object # @init_timing.done
	.local	init_timing.done
	.comm	init_timing.done,1,4
	.type	.L.str.33,@object       # @.str.33
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.33:
	.asciz	"ENOUGH"
	.size	.L.str.33, 7

	.type	possibilities,@object   # @possibilities
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
possibilities:
	.long	5000                    # 0x1388
	.long	10000                   # 0x2710
	.long	50000                   # 0xc350
	.long	100000                  # 0x186a0
	.size	possibilities, 16

	.type	find_N.N,@object        # @find_N.N
	.data
	.p2align	3
find_N.N:
	.quad	10000                   # 0x2710
	.size	find_N.N, 8

	.type	find_N.usecs,@object    # @find_N.usecs
	.local	find_N.usecs
	.comm	find_N.usecs,8,8

	.ident	"FreeBSD clang version 9.0.1 (git@github.com:llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05) (based on LLVM 9.0.1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sigchld_wait_handler
	.addrsig_sym benchmp_sigterm
	.addrsig_sym benchmp_sigchld
	.addrsig_sym benchmp_sigalrm
	.addrsig_sym benchmp_child_sigchld
	.addrsig_sym benchmp_child_sigterm
	.addrsig_sym ru_stop
	.addrsig_sym ru_start
	.addrsig_sym _benchmp_child_state
	.addrsig_sym start_tv
	.addrsig_sym stop_tv
	.addrsig_sym p64buf
	.addrsig_sym use_result_dummy
	.addrsig_sym p
	.addrsig_sym _results
