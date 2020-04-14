	.text
	.file	"lib_debug.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function percent_point
.LCPI0_0:
	.quad	4607182418800017408     # double 1
.LCPI0_3:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_1:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI0_2:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.text
	.globl	percent_point
	.p2align	4, 0x90
	.type	percent_point,@function
percent_point:                          # @percent_point
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
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	callq	get_results
	movq	%rax, %rbx
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	subsd	-16(%rbp), %xmm1        # 8-byte Folded Reload
	movl	(%rax), %eax
	addl	$-1, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	callq	floor
	movapd	%xmm0, %xmm1
	movsd	-16(%rbp), %xmm6        # 8-byte Reload
                                        # xmm6 = mem[0],zero
	cvttsd2si	%xmm6, %eax
	cltq
	shlq	$4, %rax
	movsd	8(%rbx,%rax), %xmm4     # xmm4 = mem[0],zero
	movapd	.LCPI0_1(%rip), %xmm2   # xmm2 = [1127219200,1160773632,0,0]
	unpcklps	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1]
	movapd	.LCPI0_2(%rip), %xmm3   # xmm3 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm3, %xmm4
	movapd	%xmm4, %xmm0
	unpckhpd	%xmm4, %xmm0    # xmm0 = xmm0[1],xmm4[1]
	addsd	%xmm4, %xmm0
	movsd	16(%rbx,%rax), %xmm4    # xmm4 = mem[0],zero
	unpcklps	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1]
	subpd	%xmm3, %xmm4
	movapd	%xmm4, %xmm5
	unpckhpd	%xmm4, %xmm5    # xmm5 = xmm5[1],xmm4[1]
	addsd	%xmm4, %xmm5
	divsd	%xmm5, %xmm0
	ucomisd	%xmm1, %xmm6
	jne	.LBB0_1
	jnp	.LBB0_2
.LBB0_1:
	movsd	24(%rax,%rbx), %xmm1    # xmm1 = mem[0],zero
	unpcklps	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm4
	unpckhpd	%xmm1, %xmm4    # xmm4 = xmm4[1],xmm1[1]
	addsd	%xmm1, %xmm4
	movsd	32(%rax,%rbx), %xmm1    # xmm1 = mem[0],zero
	unpcklps	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2    # xmm2 = xmm2[1],xmm1[1]
	addsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm4
	addsd	%xmm4, %xmm0
	mulsd	.LCPI0_3(%rip), %xmm0
.LBB0_2:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	percent_point, .Lfunc_end0-percent_point
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function print_results
.LCPI1_0:
	.quad	4294967295              # 0xffffffff
	.quad	4294967295              # 0xffffffff
.LCPI1_1:
	.quad	4841369599423283200     # 0x4330000000000000
	.quad	4841369599423283200     # 0x4330000000000000
.LCPI1_2:
	.quad	4985484787499139072     # 0x4530000000000000
	.quad	4985484787499139072     # 0x4530000000000000
.LCPI1_3:
	.quad	4985484787500187648     # double 1.9342813118337666E+25
	.quad	4985484787500187648     # double 1.9342813118337666E+25
	.text
	.globl	print_results
	.p2align	4, 0x90
	.type	print_results,@function
print_results:                          # @print_results
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
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%edi, %r14d
	xorl	%eax, %eax
	callq	get_results
	movq	%rax, %r15
	movq	__stderrp(%rip), %rdi
	movl	(%rax), %edx
	movl	$.L.str, %esi
	xorl	%eax, %eax
	callq	fprintf
	cmpl	$0, (%r15)
	movq	__stderrp(%rip), %rcx
	jle	.LBB1_5
# %bb.1:
	leaq	8(%r15), %r12
	xorl	%ebx, %ebx
	jmp	.LBB1_2
	.p2align	4, 0x90
.LBB1_4:                                #   in Loop: Header=BB1_2 Depth=1
	addq	$1, %rbx
	cltq
	movq	__stderrp(%rip), %rcx
	addq	$16, %r12
	cmpq	%rax, %rbx
	jge	.LBB1_5
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movdqu	(%r12), %xmm0
	movdqa	%xmm0, %xmm1
	pand	.LCPI1_0(%rip), %xmm1
	por	.LCPI1_1(%rip), %xmm1
	psrlq	$32, %xmm0
	por	.LCPI1_2(%rip), %xmm0
	subpd	.LCPI1_3(%rip), %xmm0
	addpd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	divsd	%xmm1, %xmm0
	movl	$.L.str.1, %esi
	movq	%rcx, %rdi
	movb	$1, %al
	callq	fprintf
	movslq	(%r15), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	cmpq	%rcx, %rbx
	jge	.LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	movq	__stderrp(%rip), %rcx
	movl	$.L.str.2, %edi
	movl	$2, %esi
	movl	$1, %edx
	callq	fwrite
	movl	(%r15), %eax
	jmp	.LBB1_4
.LBB1_5:
	movl	$.L.str.3, %edi
	movl	$2, %esi
	movl	$1, %edx
	callq	fwrite
	testl	%r14d, %r14d
	je	.LBB1_12
# %bb.6:
	movq	__stderrp(%rip), %rdi
	movl	(%r15), %edx
	movl	$.L.str.4, %esi
	xorl	%eax, %eax
	callq	fprintf
	cmpl	$0, (%r15)
	movq	__stderrp(%rip), %rax
	jle	.LBB1_11
# %bb.7:
	movq	%r15, %r14
	addq	$16, %r14
	xorl	%ebx, %ebx
	jmp	.LBB1_8
	.p2align	4, 0x90
.LBB1_10:                               #   in Loop: Header=BB1_8 Depth=1
	addq	$1, %rbx
	movslq	%eax, %rcx
	movq	__stderrp(%rip), %rax
	addq	$16, %r14
	cmpq	%rcx, %rbx
	jge	.LBB1_11
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%r14), %rdx
	movq	(%r14), %rcx
	movl	$.L.str.5, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	fprintf
	movslq	(%r15), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	cmpq	%rcx, %rbx
	jge	.LBB1_10
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=1
	movq	__stderrp(%rip), %rcx
	movl	$.L.str.2, %edi
	movl	$2, %esi
	movl	$1, %edx
	callq	fwrite
	movl	(%r15), %eax
	jmp	.LBB1_10
.LBB1_11:
	movl	$.L.str.6, %edi
	movl	$5, %esi
	movl	$1, %edx
	movq	%rax, %rcx
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	jmp	fwrite                  # TAILCALL
.LBB1_12:
	.cfi_def_cfa %rbp, 16
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	print_results, .Lfunc_end1-print_results
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function bw_quartile
.LCPI2_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI2_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI2_2:
	.quad	4696837146684686336     # double 1.0E+6
.LCPI2_3:
	.quad	4604930618986332160     # double 0.75
.LCPI2_4:
	.quad	4602678819172646912     # double 0.5
.LCPI2_5:
	.quad	4598175219545276416     # double 0.25
	.text
	.globl	bw_quartile
	.p2align	4, 0x90
	.type	bw_quartile,@function
bw_quartile:                            # @bw_quartile
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
	subq	$104, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movq	__stderrp(%rip), %r14
	callq	get_n
	movq	%rax, %r15
	movq	%rbx, %xmm0
	punpckldq	.LCPI2_0(%rip), %xmm0 # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI2_1(%rip), %xmm0
	movapd	%xmm0, -96(%rbp)        # 16-byte Spill
	xorl	%eax, %eax
	callq	get_results
	movslq	(%rax), %rcx
	shlq	$4, %rcx
	movsd	-8(%rcx,%rax), %xmm0    # xmm0 = mem[0],zero
	movapd	.LCPI2_0(%rip), %xmm2   # xmm2 = [1127219200,1160773632,0,0]
	unpcklps	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	movapd	.LCPI2_1(%rip), %xmm3   # xmm3 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm3, %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movapd	%xmm1, -80(%rbp)        # 16-byte Spill
	movsd	(%rcx,%rax), %xmm0      # xmm0 = mem[0],zero
	unpcklps	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	subpd	%xmm3, %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movapd	%xmm1, -48(%rbp)        # 16-byte Spill
	xorl	%eax, %eax
	callq	get_results
	movq	%rax, %rbx
	movl	(%rax), %eax
	addl	$-1, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	mulsd	.LCPI2_3(%rip), %xmm0
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	callq	floor
	movapd	.LCPI2_1(%rip), %xmm4   # xmm4 = [4.503599627370496E+15,1.9342813113834067E+25]
	movapd	.LCPI2_0(%rip), %xmm3   # xmm3 = [1127219200,1160773632,0,0]
	movsd	-112(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	cvttsd2si	%xmm6, %eax
	cltq
	shlq	$4, %rax
	movsd	8(%rbx,%rax), %xmm1     # xmm1 = mem[0],zero
	unpcklps	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	subpd	%xmm4, %xmm1
	movapd	%xmm1, %xmm5
	unpckhpd	%xmm1, %xmm5    # xmm5 = xmm5[1],xmm1[1]
	addsd	%xmm1, %xmm5
	movsd	16(%rbx,%rax), %xmm1    # xmm1 = mem[0],zero
	unpcklps	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	subpd	%xmm4, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2    # xmm2 = xmm2[1],xmm1[1]
	addsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm5
	ucomisd	%xmm0, %xmm6
	jne	.LBB2_1
	jnp	.LBB2_2
.LBB2_1:
	movsd	24(%rax,%rbx), %xmm0    # xmm0 = mem[0],zero
	unpcklps	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1]
	subpd	%xmm4, %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movsd	32(%rax,%rbx), %xmm0    # xmm0 = mem[0],zero
	unpcklps	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1]
	subpd	%xmm4, %xmm0
	movapd	%xmm0, %xmm2
	unpckhpd	%xmm0, %xmm2    # xmm2 = xmm2[1],xmm0[1]
	addsd	%xmm0, %xmm2
	divsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm5
	mulsd	.LCPI2_4(%rip), %xmm5
.LBB2_2:
	movapd	%xmm5, -64(%rbp)        # 16-byte Spill
	movaps	-96(%rbp), %xmm0        # 16-byte Reload
	movhlps	%xmm0, %xmm0            # xmm0 = xmm0[1,1]
	movaps	%xmm0, -112(%rbp)       # 16-byte Spill
	movapd	-80(%rbp), %xmm0        # 16-byte Reload
	divsd	-48(%rbp), %xmm0        # 16-byte Folded Reload
	movapd	%xmm0, -80(%rbp)        # 16-byte Spill
	xorl	%eax, %eax
	callq	get_results
	movq	%rax, %rbx
	movl	(%rax), %eax
	addl	$-1, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	mulsd	.LCPI2_4(%rip), %xmm0
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	callq	floor
	movsd	-48(%rbp), %xmm6        # 8-byte Reload
                                        # xmm6 = mem[0],zero
	cvttsd2si	%xmm6, %eax
	cltq
	shlq	$4, %rax
	movsd	8(%rbx,%rax), %xmm1     # xmm1 = mem[0],zero
	movapd	.LCPI2_0(%rip), %xmm3   # xmm3 = [1127219200,1160773632,0,0]
	unpcklps	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	movapd	.LCPI2_1(%rip), %xmm4   # xmm4 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm4, %xmm1
	movapd	%xmm1, %xmm5
	unpckhpd	%xmm1, %xmm5    # xmm5 = xmm5[1],xmm1[1]
	addsd	%xmm1, %xmm5
	movsd	16(%rbx,%rax), %xmm1    # xmm1 = mem[0],zero
	unpcklps	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	subpd	%xmm4, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2    # xmm2 = xmm2[1],xmm1[1]
	addsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm5
	ucomisd	%xmm0, %xmm6
	jne	.LBB2_3
	jnp	.LBB2_4
.LBB2_3:
	movapd	%xmm3, %xmm2
	movapd	%xmm4, %xmm3
	movsd	24(%rax,%rbx), %xmm0    # xmm0 = mem[0],zero
	unpcklps	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	subpd	%xmm4, %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movsd	32(%rax,%rbx), %xmm0    # xmm0 = mem[0],zero
	unpcklps	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	subpd	%xmm4, %xmm0
	movapd	%xmm0, %xmm2
	unpckhpd	%xmm0, %xmm2    # xmm2 = xmm2[1],xmm0[1]
	addsd	%xmm0, %xmm2
	divsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm5
	mulsd	.LCPI2_4(%rip), %xmm5
.LBB2_4:
	movapd	-64(%rbp), %xmm1        # 16-byte Reload
	movapd	-112(%rbp), %xmm0       # 16-byte Reload
	addsd	-96(%rbp), %xmm0        # 16-byte Folded Reload
	movapd	%xmm0, -112(%rbp)       # 16-byte Spill
	movapd	-80(%rbp), %xmm0        # 16-byte Reload
	mulsd	.LCPI2_2(%rip), %xmm0
	movapd	%xmm0, -80(%rbp)        # 16-byte Spill
	mulsd	.LCPI2_2(%rip), %xmm1
	movapd	%xmm1, -64(%rbp)        # 16-byte Spill
	mulsd	.LCPI2_2(%rip), %xmm5
	movapd	%xmm5, -96(%rbp)        # 16-byte Spill
	xorl	%eax, %eax
	callq	get_results
	movq	%rax, %rbx
	movl	(%rax), %eax
	addl	$-1, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	mulsd	.LCPI2_5(%rip), %xmm0
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	callq	floor
	movsd	-48(%rbp), %xmm6        # 8-byte Reload
                                        # xmm6 = mem[0],zero
	cvttsd2si	%xmm6, %eax
	cltq
	shlq	$4, %rax
	movsd	8(%rbx,%rax), %xmm2     # xmm2 = mem[0],zero
	movapd	.LCPI2_0(%rip), %xmm4   # xmm4 = [1127219200,1160773632,0,0]
	unpcklps	%xmm4, %xmm2    # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1]
	movapd	.LCPI2_1(%rip), %xmm5   # xmm5 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm5, %xmm2
	movapd	%xmm2, %xmm1
	unpckhpd	%xmm2, %xmm1    # xmm1 = xmm1[1],xmm2[1]
	addsd	%xmm2, %xmm1
	movsd	16(%rbx,%rax), %xmm2    # xmm2 = mem[0],zero
	unpcklps	%xmm4, %xmm2    # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1]
	subpd	%xmm5, %xmm2
	movapd	%xmm2, %xmm3
	unpckhpd	%xmm2, %xmm3    # xmm3 = xmm3[1],xmm2[1]
	addsd	%xmm2, %xmm3
	divsd	%xmm3, %xmm1
	ucomisd	%xmm0, %xmm6
	jne	.LBB2_5
	jnp	.LBB2_6
.LBB2_5:
	movapd	%xmm4, %xmm3
	movapd	%xmm5, %xmm4
	movsd	24(%rax,%rbx), %xmm0    # xmm0 = mem[0],zero
	unpcklps	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1]
	subpd	%xmm5, %xmm0
	movapd	%xmm0, %xmm2
	unpckhpd	%xmm0, %xmm2    # xmm2 = xmm2[1],xmm0[1]
	addsd	%xmm0, %xmm2
	movsd	32(%rax,%rbx), %xmm0    # xmm0 = mem[0],zero
	unpcklps	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1]
	subpd	%xmm5, %xmm0
	movapd	%xmm0, %xmm3
	unpckhpd	%xmm0, %xmm3    # xmm3 = xmm3[1],xmm0[1]
	addsd	%xmm0, %xmm3
	divsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	mulsd	.LCPI2_4(%rip), %xmm1
.LBB2_6:
	movapd	-112(%rbp), %xmm0       # 16-byte Reload
	movapd	%xmm0, %xmm2
	divsd	-80(%rbp), %xmm2        # 16-byte Folded Reload
	movapd	%xmm2, -80(%rbp)        # 16-byte Spill
	movapd	%xmm0, %xmm2
	divsd	-64(%rbp), %xmm2        # 16-byte Folded Reload
	movapd	%xmm2, -64(%rbp)        # 16-byte Spill
	movapd	%xmm0, %xmm2
	divsd	-96(%rbp), %xmm2        # 16-byte Folded Reload
	movapd	%xmm2, -96(%rbp)        # 16-byte Spill
	mulsd	.LCPI2_2(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movapd	%xmm0, -48(%rbp)        # 16-byte Spill
	xorl	%eax, %eax
	callq	get_results
	movq	%rax, %rbx
	movl	(%rax), %eax
	addl	$-1, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	xorpd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	callq	floor
	movsd	-120(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	cvttsd2si	%xmm6, %eax
	cltq
	shlq	$4, %rax
	movsd	8(%rbx,%rax), %xmm2     # xmm2 = mem[0],zero
	movapd	.LCPI2_0(%rip), %xmm4   # xmm4 = [1127219200,1160773632,0,0]
	unpcklps	%xmm4, %xmm2    # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1]
	movapd	.LCPI2_1(%rip), %xmm5   # xmm5 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm5, %xmm2
	movapd	%xmm2, %xmm1
	unpckhpd	%xmm2, %xmm1    # xmm1 = xmm1[1],xmm2[1]
	addsd	%xmm2, %xmm1
	movsd	16(%rbx,%rax), %xmm2    # xmm2 = mem[0],zero
	unpcklps	%xmm4, %xmm2    # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1]
	subpd	%xmm5, %xmm2
	movapd	%xmm2, %xmm3
	unpckhpd	%xmm2, %xmm3    # xmm3 = xmm3[1],xmm2[1]
	addsd	%xmm2, %xmm3
	divsd	%xmm3, %xmm1
	ucomisd	%xmm0, %xmm6
	jne	.LBB2_7
	jnp	.LBB2_8
.LBB2_7:
	movapd	%xmm4, %xmm3
	movapd	%xmm5, %xmm4
	movsd	24(%rax,%rbx), %xmm0    # xmm0 = mem[0],zero
	unpcklps	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1]
	subpd	%xmm5, %xmm0
	movapd	%xmm0, %xmm2
	unpckhpd	%xmm0, %xmm2    # xmm2 = xmm2[1],xmm0[1]
	addsd	%xmm0, %xmm2
	movsd	32(%rax,%rbx), %xmm0    # xmm0 = mem[0],zero
	unpcklps	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1]
	subpd	%xmm5, %xmm0
	movapd	%xmm0, %xmm3
	unpckhpd	%xmm0, %xmm3    # xmm3 = xmm3[1],xmm0[1]
	addsd	%xmm0, %xmm3
	divsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	mulsd	.LCPI2_4(%rip), %xmm1
.LBB2_8:
	mulsd	.LCPI2_2(%rip), %xmm1
	movapd	-112(%rbp), %xmm4       # 16-byte Reload
	divsd	%xmm1, %xmm4
	movl	$.L.str.7, %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	movaps	-80(%rbp), %xmm0        # 16-byte Reload
	movaps	-64(%rbp), %xmm1        # 16-byte Reload
	movaps	-96(%rbp), %xmm2        # 16-byte Reload
	movaps	-48(%rbp), %xmm3        # 16-byte Reload
	movb	$5, %al
	addq	$104, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	jmp	fprintf                 # TAILCALL
.Lfunc_end2:
	.size	bw_quartile, .Lfunc_end2-bw_quartile
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function nano_quartile
.LCPI3_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI3_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI3_2:
	.quad	4652007308841189376     # double 1000
.LCPI3_3:
	.quad	4604930618986332160     # double 0.75
.LCPI3_4:
	.quad	4602678819172646912     # double 0.5
.LCPI3_5:
	.quad	4598175219545276416     # double 0.25
	.text
	.globl	nano_quartile
	.p2align	4, 0x90
	.type	nano_quartile,@function
nano_quartile:                          # @nano_quartile
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
	subq	$104, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movq	__stderrp(%rip), %r14
	callq	get_n
	movq	%rax, %r15
	xorl	%eax, %eax
	callq	get_results
	movslq	(%rax), %rcx
	shlq	$4, %rcx
	movsd	-8(%rcx,%rax), %xmm0    # xmm0 = mem[0],zero
	movapd	.LCPI3_0(%rip), %xmm2   # xmm2 = [1127219200,1160773632,0,0]
	unpcklps	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	movapd	.LCPI3_1(%rip), %xmm3   # xmm3 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm3, %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movapd	%xmm1, -64(%rbp)        # 16-byte Spill
	movsd	(%rcx,%rax), %xmm0      # xmm0 = mem[0],zero
	unpcklps	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	subpd	%xmm3, %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movapd	%xmm1, -96(%rbp)        # 16-byte Spill
	movq	%rbx, %xmm0
	punpckldq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	subpd	%xmm3, %xmm0
	movapd	%xmm0, -80(%rbp)        # 16-byte Spill
	xorl	%eax, %eax
	callq	get_results
	movq	%rax, %rbx
	movl	(%rax), %eax
	addl	$-1, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	mulsd	.LCPI3_3(%rip), %xmm0
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	callq	floor
	movapd	.LCPI3_1(%rip), %xmm4   # xmm4 = [4.503599627370496E+15,1.9342813113834067E+25]
	movapd	.LCPI3_0(%rip), %xmm3   # xmm3 = [1127219200,1160773632,0,0]
	movsd	-48(%rbp), %xmm6        # 8-byte Reload
                                        # xmm6 = mem[0],zero
	cvttsd2si	%xmm6, %eax
	cltq
	shlq	$4, %rax
	movsd	8(%rbx,%rax), %xmm1     # xmm1 = mem[0],zero
	unpcklps	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	subpd	%xmm4, %xmm1
	movapd	%xmm1, %xmm5
	unpckhpd	%xmm1, %xmm5    # xmm5 = xmm5[1],xmm1[1]
	addsd	%xmm1, %xmm5
	movsd	16(%rbx,%rax), %xmm1    # xmm1 = mem[0],zero
	unpcklps	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	subpd	%xmm4, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2    # xmm2 = xmm2[1],xmm1[1]
	addsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm5
	ucomisd	%xmm0, %xmm6
	jne	.LBB3_1
	jnp	.LBB3_2
.LBB3_1:
	movsd	24(%rax,%rbx), %xmm0    # xmm0 = mem[0],zero
	unpcklps	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1]
	subpd	%xmm4, %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movsd	32(%rax,%rbx), %xmm0    # xmm0 = mem[0],zero
	unpcklps	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1]
	subpd	%xmm4, %xmm0
	movapd	%xmm0, %xmm2
	unpckhpd	%xmm0, %xmm2    # xmm2 = xmm2[1],xmm0[1]
	addsd	%xmm0, %xmm2
	divsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm5
	mulsd	.LCPI3_4(%rip), %xmm5
.LBB3_2:
	movapd	%xmm5, -48(%rbp)        # 16-byte Spill
	movapd	-64(%rbp), %xmm0        # 16-byte Reload
	divsd	-96(%rbp), %xmm0        # 16-byte Folded Reload
	movapd	%xmm0, -64(%rbp)        # 16-byte Spill
	movaps	-80(%rbp), %xmm0        # 16-byte Reload
	movhlps	%xmm0, %xmm0            # xmm0 = xmm0[1,1]
	movaps	%xmm0, -96(%rbp)        # 16-byte Spill
	xorl	%eax, %eax
	callq	get_results
	movq	%rax, %rbx
	movl	(%rax), %eax
	addl	$-1, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	mulsd	.LCPI3_4(%rip), %xmm0
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	callq	floor
	movsd	-112(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	cvttsd2si	%xmm6, %eax
	cltq
	shlq	$4, %rax
	movsd	8(%rbx,%rax), %xmm1     # xmm1 = mem[0],zero
	movapd	.LCPI3_0(%rip), %xmm3   # xmm3 = [1127219200,1160773632,0,0]
	unpcklps	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	movapd	.LCPI3_1(%rip), %xmm4   # xmm4 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm4, %xmm1
	movapd	%xmm1, %xmm5
	unpckhpd	%xmm1, %xmm5    # xmm5 = xmm5[1],xmm1[1]
	addsd	%xmm1, %xmm5
	movsd	16(%rbx,%rax), %xmm1    # xmm1 = mem[0],zero
	unpcklps	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	subpd	%xmm4, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2    # xmm2 = xmm2[1],xmm1[1]
	addsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm5
	ucomisd	%xmm0, %xmm6
	jne	.LBB3_3
	jnp	.LBB3_4
.LBB3_3:
	movapd	%xmm3, %xmm2
	movapd	%xmm4, %xmm3
	movsd	24(%rax,%rbx), %xmm0    # xmm0 = mem[0],zero
	unpcklps	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	subpd	%xmm4, %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movsd	32(%rax,%rbx), %xmm0    # xmm0 = mem[0],zero
	unpcklps	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	subpd	%xmm4, %xmm0
	movapd	%xmm0, %xmm2
	unpckhpd	%xmm0, %xmm2    # xmm2 = xmm2[1],xmm0[1]
	addsd	%xmm0, %xmm2
	divsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm5
	mulsd	.LCPI3_4(%rip), %xmm5
.LBB3_4:
	movapd	-48(%rbp), %xmm1        # 16-byte Reload
	movapd	-64(%rbp), %xmm0        # 16-byte Reload
	mulsd	.LCPI3_2(%rip), %xmm0
	movapd	%xmm0, -64(%rbp)        # 16-byte Spill
	movapd	-96(%rbp), %xmm0        # 16-byte Reload
	addsd	-80(%rbp), %xmm0        # 16-byte Folded Reload
	movapd	%xmm0, -96(%rbp)        # 16-byte Spill
	mulsd	.LCPI3_2(%rip), %xmm1
	movapd	%xmm1, -48(%rbp)        # 16-byte Spill
	mulsd	.LCPI3_2(%rip), %xmm5
	movapd	%xmm5, -80(%rbp)        # 16-byte Spill
	xorl	%eax, %eax
	callq	get_results
	movq	%rax, %rbx
	movl	(%rax), %eax
	addl	$-1, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	mulsd	.LCPI3_5(%rip), %xmm0
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	callq	floor
	movsd	-112(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	cvttsd2si	%xmm6, %eax
	cltq
	shlq	$4, %rax
	movsd	8(%rbx,%rax), %xmm1     # xmm1 = mem[0],zero
	movapd	.LCPI3_0(%rip), %xmm3   # xmm3 = [1127219200,1160773632,0,0]
	unpcklps	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	movapd	.LCPI3_1(%rip), %xmm4   # xmm4 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm4, %xmm1
	movapd	%xmm1, %xmm5
	unpckhpd	%xmm1, %xmm5    # xmm5 = xmm5[1],xmm1[1]
	addsd	%xmm1, %xmm5
	movsd	16(%rbx,%rax), %xmm1    # xmm1 = mem[0],zero
	unpcklps	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	subpd	%xmm4, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2    # xmm2 = xmm2[1],xmm1[1]
	addsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm5
	ucomisd	%xmm0, %xmm6
	jne	.LBB3_5
	jnp	.LBB3_6
.LBB3_5:
	movapd	%xmm3, %xmm2
	movapd	%xmm4, %xmm3
	movsd	24(%rax,%rbx), %xmm0    # xmm0 = mem[0],zero
	unpcklps	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	subpd	%xmm4, %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movsd	32(%rax,%rbx), %xmm0    # xmm0 = mem[0],zero
	unpcklps	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	subpd	%xmm4, %xmm0
	movapd	%xmm0, %xmm2
	unpckhpd	%xmm0, %xmm2    # xmm2 = xmm2[1],xmm0[1]
	addsd	%xmm0, %xmm2
	divsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm5
	mulsd	.LCPI3_4(%rip), %xmm5
.LBB3_6:
	movapd	-64(%rbp), %xmm0        # 16-byte Reload
	movapd	-96(%rbp), %xmm1        # 16-byte Reload
	divsd	%xmm1, %xmm0
	movapd	%xmm0, -64(%rbp)        # 16-byte Spill
	movapd	-48(%rbp), %xmm0        # 16-byte Reload
	divsd	%xmm1, %xmm0
	movapd	%xmm0, -48(%rbp)        # 16-byte Spill
	movapd	-80(%rbp), %xmm0        # 16-byte Reload
	divsd	%xmm1, %xmm0
	movapd	%xmm0, -80(%rbp)        # 16-byte Spill
	mulsd	.LCPI3_2(%rip), %xmm5
	divsd	%xmm1, %xmm5
	movapd	%xmm5, -112(%rbp)       # 16-byte Spill
	xorl	%eax, %eax
	callq	get_results
	movq	%rax, %rbx
	movl	(%rax), %eax
	addl	$-1, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	xorpd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	callq	floor
	movsd	-120(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	cvttsd2si	%xmm6, %eax
	cltq
	shlq	$4, %rax
	movsd	8(%rbx,%rax), %xmm1     # xmm1 = mem[0],zero
	movapd	.LCPI3_0(%rip), %xmm3   # xmm3 = [1127219200,1160773632,0,0]
	unpcklps	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	movapd	.LCPI3_1(%rip), %xmm5   # xmm5 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm5, %xmm1
	movapd	%xmm1, %xmm4
	unpckhpd	%xmm1, %xmm4    # xmm4 = xmm4[1],xmm1[1]
	addsd	%xmm1, %xmm4
	movsd	16(%rbx,%rax), %xmm1    # xmm1 = mem[0],zero
	unpcklps	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	subpd	%xmm5, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2    # xmm2 = xmm2[1],xmm1[1]
	addsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm4
	ucomisd	%xmm0, %xmm6
	jne	.LBB3_7
	jnp	.LBB3_8
.LBB3_7:
	movapd	%xmm3, %xmm2
	movapd	%xmm5, %xmm3
	movsd	24(%rax,%rbx), %xmm0    # xmm0 = mem[0],zero
	unpcklps	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	subpd	%xmm5, %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movsd	32(%rax,%rbx), %xmm0    # xmm0 = mem[0],zero
	unpcklps	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	subpd	%xmm5, %xmm0
	movapd	%xmm0, %xmm2
	unpckhpd	%xmm0, %xmm2    # xmm2 = xmm2[1],xmm0[1]
	addsd	%xmm0, %xmm2
	divsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm4
	mulsd	.LCPI3_4(%rip), %xmm4
.LBB3_8:
	mulsd	.LCPI3_2(%rip), %xmm4
	divsd	-96(%rbp), %xmm4        # 16-byte Folded Reload
	movl	$.L.str.7, %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	movaps	-64(%rbp), %xmm0        # 16-byte Reload
	movaps	-48(%rbp), %xmm1        # 16-byte Reload
	movaps	-80(%rbp), %xmm2        # 16-byte Reload
	movaps	-112(%rbp), %xmm3       # 16-byte Reload
	movb	$5, %al
	addq	$104, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	jmp	fprintf                 # TAILCALL
.Lfunc_end3:
	.size	nano_quartile, .Lfunc_end3-nano_quartile
	.cfi_endproc
                                        # -- End function
	.globl	print_mem               # -- Begin function print_mem
	.p2align	4, 0x90
	.type	print_mem,@function
print_mem:                              # @print_mem
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
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rdi, %r15
	callq	getpagesize
	cmpq	%r15, (%r15)
	je	.LBB4_3
# %bb.1:
	movslq	%eax, %r12
	movq	%r15, %rbx
	movq	%r15, %rcx
	.p2align	4, 0x90
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	subq	%r15, %rcx
	movq	__stderrp(%rip), %rdi
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%r12
	movq	%rax, %r8
	movq	%rdx, %rax
	xorl	%edx, %edx
	divq	%r14
	movq	%rax, %r9
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%r14
	movq	%rdx, %rax
	shrq	$3, %rax
	movl	$.L.str.8, %esi
	movq	%r8, %rdx
	movq	%r9, %rcx
	movq	%rax, %r8
	xorl	%eax, %eax
	callq	fprintf
	movq	(%rbx), %rbx
	movq	%rbx, %rcx
	cmpq	%r15, (%rbx)
	jne	.LBB4_2
.LBB4_3:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	print_mem, .Lfunc_end4-print_mem
	.cfi_endproc
                                        # -- End function
	.globl	check_mem               # -- Begin function check_mem
	.p2align	4, 0x90
	.type	check_mem,@function
check_mem:                              # @check_mem
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
	movq	(%rdi), %rax
	cmpq	%rdi, %rax
	je	.LBB5_8
# %bb.1:
	movq	%rsi, %r14
	movq	%rdi, %r12
	leaq	(%rdi,%rsi), %r15
	shrq	$3, %r14
	xorl	%ebx, %ebx
	movq	%rdi, %r13
	movq	%rdi, %rcx
	.p2align	4, 0x90
.LBB5_2:                                # =>This Inner Loop Header: Depth=1
	cmpq	%r12, %rcx
	jb	.LBB5_4
# %bb.3:                                #   in Loop: Header=BB5_2 Depth=1
	cmpq	%rcx, %r15
	movq	%rax, %rcx
	ja	.LBB5_5
.LBB5_4:                                #   in Loop: Header=BB5_2 Depth=1
	movq	__stderrp(%rip), %rcx
	movl	$.L.str.9, %edi
	movl	$33, %esi
	movl	$1, %edx
	callq	fwrite
	movq	(%r13), %rcx
.LBB5_5:                                #   in Loop: Header=BB5_2 Depth=1
	movq	(%rcx), %rax
	cmpq	%r14, %rbx
	jae	.LBB5_7
# %bb.6:                                #   in Loop: Header=BB5_2 Depth=1
	addq	$1, %rbx
	movq	%rcx, %r13
	cmpq	%r12, %rax
	jne	.LBB5_2
.LBB5_7:
	cmpq	%r12, %rax
	je	.LBB5_8
# %bb.9:
	movq	__stderrp(%rip), %rcx
	movl	$.L.str.10, %edi
	movl	$38, %esi
	movl	$1, %edx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	jmp	fwrite                  # TAILCALL
.LBB5_8:
	.cfi_def_cfa %rbp, 16
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	check_mem, .Lfunc_end5-check_mem
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"N=%d, t={"
	.size	.L.str, 10

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%.2f"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	", "
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"}\n"
	.size	.L.str.3, 3

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\t/* %d {"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%llu/%llu"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"} */\n"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%lu\t%e\t%e\t%e\t%e\t%e\n"
	.size	.L.str.7, 20

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\t%lu\t%lu\t%lu\n"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"check_mem: pointer out of range!\n"
	.size	.L.str.9, 34

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"check_mem: pointer chain doesn't loop\n"
	.size	.L.str.10, 39


	.ident	"FreeBSD clang version 9.0.1 (git@github.com:llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05) (based on LLVM 9.0.1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
