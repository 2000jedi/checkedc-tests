	.text
	.file	"lib_stats.c"
	.globl	int_compare             # -- Begin function int_compare
	.p2align	4, 0x90
	.type	int_compare,@function
int_compare:                            # @int_compare
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	(%rdi), %eax
	xorl	%ecx, %ecx
	cmpl	(%rsi), %eax
	setg	%cl
	movl	$-1, %eax
	cmovgel	%ecx, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	int_compare, .Lfunc_end0-int_compare
	.cfi_endproc
                                        # -- End function
	.globl	uint64_compare          # -- Begin function uint64_compare
	.p2align	4, 0x90
	.type	uint64_compare,@function
uint64_compare:                         # @uint64_compare
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	xorl	%ecx, %ecx
	cmpq	(%rsi), %rax
	seta	%cl
	movl	$-1, %eax
	cmovael	%ecx, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	uint64_compare, .Lfunc_end1-uint64_compare
	.cfi_endproc
                                        # -- End function
	.globl	double_compare          # -- Begin function double_compare
	.p2align	4, 0x90
	.type	double_compare,@function
double_compare:                         # @double_compare
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	movsd	(%rsi), %xmm1           # xmm1 = mem[0],zero
	xorl	%ecx, %ecx
	ucomisd	%xmm1, %xmm0
	seta	%cl
	ucomisd	%xmm0, %xmm1
	movl	$-1, %eax
	cmovbel	%ecx, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	double_compare, .Lfunc_end2-double_compare
	.cfi_endproc
                                        # -- End function
	.globl	int_median              # -- Begin function int_median
	.p2align	4, 0x90
	.type	int_median,@function
int_median:                             # @int_median
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
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%esi, %r15d
	movq	%rdi, %r14
	movslq	%esi, %rbx
	movl	$4, %edx
	movl	$int_compare, %ecx
	movq	%rbx, %rsi
	callq	qsort
	testl	%ebx, %ebx
	je	.LBB3_1
# %bb.2:
	movl	%r15d, %eax
	shrl	$31, %eax
	addl	%r15d, %eax
	sarl	%eax
	cltq
	testb	$1, %r15b
	jne	.LBB3_3
# %bb.4:
	movl	(%r14,%rax,4), %ecx
	addl	-4(%r14,%rax,4), %ecx
	movl	%ecx, %eax
	shrl	$31, %eax
	addl	%ecx, %eax
	sarl	%eax
	jmp	.LBB3_5
.LBB3_1:
	xorl	%eax, %eax
	jmp	.LBB3_5
.LBB3_3:
	movl	(%r14,%rax,4), %eax
.LBB3_5:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	int_median, .Lfunc_end3-int_median
	.cfi_endproc
                                        # -- End function
	.globl	uint64_median           # -- Begin function uint64_median
	.p2align	4, 0x90
	.type	uint64_median,@function
uint64_median:                          # @uint64_median
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
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%esi, %r15d
	movq	%rdi, %r14
	movslq	%esi, %rbx
	movl	$8, %edx
	movl	$uint64_compare, %ecx
	movq	%rbx, %rsi
	callq	qsort
	testl	%ebx, %ebx
	je	.LBB4_1
# %bb.2:
	movl	%r15d, %eax
	shrl	$31, %eax
	addl	%r15d, %eax
	sarl	%eax
	testb	$1, %r15b
	jne	.LBB4_3
# %bb.4:
	movslq	%eax, %rcx
	movq	(%r14,%rcx,8), %rax
	addq	-8(%r14,%rcx,8), %rax
	shrq	%rax
	jmp	.LBB4_5
.LBB4_1:
	xorl	%eax, %eax
	jmp	.LBB4_5
.LBB4_3:
	cltq
	movq	(%r14,%rax,8), %rax
.LBB4_5:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	uint64_median, .Lfunc_end4-uint64_median
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function double_median
.LCPI5_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	double_median
	.p2align	4, 0x90
	.type	double_median,@function
double_median:                          # @double_median
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
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%esi, %r15d
	movq	%rdi, %r14
	movslq	%esi, %rbx
	movl	$8, %edx
	movl	$double_compare, %ecx
	movq	%rbx, %rsi
	callq	qsort
	testl	%ebx, %ebx
	je	.LBB5_1
# %bb.2:
	movl	%r15d, %eax
	shrl	$31, %eax
	addl	%r15d, %eax
	sarl	%eax
	cltq
	testb	$1, %r15b
	jne	.LBB5_3
# %bb.4:
	movsd	-8(%r14,%rax,8), %xmm0  # xmm0 = mem[0],zero
	addsd	(%r14,%rax,8), %xmm0
	mulsd	.LCPI5_0(%rip), %xmm0
	jmp	.LBB5_5
.LBB5_1:
	xorpd	%xmm0, %xmm0
	jmp	.LBB5_5
.LBB5_3:
	movsd	(%r14,%rax,8), %xmm0    # xmm0 = mem[0],zero
.LBB5_5:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	double_median, .Lfunc_end5-double_median
	.cfi_endproc
                                        # -- End function
	.globl	int_mean                # -- Begin function int_mean
	.p2align	4, 0x90
	.type	int_mean,@function
int_mean:                               # @int_mean
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	testl	%esi, %esi
	jle	.LBB6_1
# %bb.2:
	movl	%esi, %r8d
	cmpl	$8, %esi
	jae	.LBB6_4
# %bb.3:
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.LBB6_12
.LBB6_1:
	xorl	%eax, %eax
	jmp	.LBB6_13
.LBB6_4:
	movl	%r8d, %edx
	andl	$-8, %edx
	leaq	-8(%rdx), %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$1, %rcx
	movl	%ecx, %r9d
	andl	$3, %r9d
	cmpq	$24, %rax
	jae	.LBB6_6
# %bb.5:
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	pxor	%xmm1, %xmm1
	testq	%r9, %r9
	jne	.LBB6_9
	jmp	.LBB6_11
.LBB6_6:
	movq	%r9, %rax
	subq	%rcx, %rax
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	pxor	%xmm1, %xmm1
	.p2align	4, 0x90
.LBB6_7:                                # =>This Inner Loop Header: Depth=1
	movdqu	(%rdi,%rcx,4), %xmm2
	paddd	%xmm0, %xmm2
	movdqu	16(%rdi,%rcx,4), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	32(%rdi,%rcx,4), %xmm1
	movdqu	48(%rdi,%rcx,4), %xmm3
	movdqu	64(%rdi,%rcx,4), %xmm4
	paddd	%xmm1, %xmm4
	paddd	%xmm2, %xmm4
	movdqu	80(%rdi,%rcx,4), %xmm2
	paddd	%xmm3, %xmm2
	paddd	%xmm0, %xmm2
	movdqu	96(%rdi,%rcx,4), %xmm0
	paddd	%xmm4, %xmm0
	movdqu	112(%rdi,%rcx,4), %xmm1
	paddd	%xmm2, %xmm1
	addq	$32, %rcx
	addq	$4, %rax
	jne	.LBB6_7
# %bb.8:
	testq	%r9, %r9
	je	.LBB6_11
.LBB6_9:
	leaq	(%rdi,%rcx,4), %rax
	addq	$16, %rax
	negq	%r9
	.p2align	4, 0x90
.LBB6_10:                               # =>This Inner Loop Header: Depth=1
	movdqu	-16(%rax), %xmm2
	paddd	%xmm2, %xmm0
	movdqu	(%rax), %xmm2
	paddd	%xmm2, %xmm1
	addq	$32, %rax
	incq	%r9
	jne	.LBB6_10
.LBB6_11:
	paddd	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	paddd	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %eax
	cmpq	%r8, %rdx
	je	.LBB6_13
	.p2align	4, 0x90
.LBB6_12:                               # =>This Inner Loop Header: Depth=1
	addl	(%rdi,%rdx,4), %eax
	addq	$1, %rdx
	cmpq	%rdx, %r8
	jne	.LBB6_12
.LBB6_13:
	cltd
	idivl	%esi
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	int_mean, .Lfunc_end6-int_mean
	.cfi_endproc
                                        # -- End function
	.globl	uint64_mean             # -- Begin function uint64_mean
	.p2align	4, 0x90
	.type	uint64_mean,@function
uint64_mean:                            # @uint64_mean
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	testl	%esi, %esi
	jle	.LBB7_1
# %bb.2:
	movl	%esi, %r8d
	cmpl	$4, %esi
	jae	.LBB7_4
# %bb.3:
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.LBB7_12
.LBB7_1:
	xorl	%eax, %eax
	jmp	.LBB7_13
.LBB7_4:
	movl	%r8d, %edx
	andl	$-4, %edx
	leaq	-4(%rdx), %rax
	movq	%rax, %rcx
	shrq	$2, %rcx
	addq	$1, %rcx
	movl	%ecx, %r9d
	andl	$3, %r9d
	cmpq	$12, %rax
	jae	.LBB7_6
# %bb.5:
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	pxor	%xmm1, %xmm1
	testq	%r9, %r9
	jne	.LBB7_9
	jmp	.LBB7_11
.LBB7_6:
	movq	%r9, %rax
	subq	%rcx, %rax
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	pxor	%xmm1, %xmm1
	.p2align	4, 0x90
.LBB7_7:                                # =>This Inner Loop Header: Depth=1
	movdqu	(%rdi,%rcx,8), %xmm2
	paddq	%xmm0, %xmm2
	movdqu	16(%rdi,%rcx,8), %xmm0
	paddq	%xmm1, %xmm0
	movdqu	32(%rdi,%rcx,8), %xmm1
	movdqu	48(%rdi,%rcx,8), %xmm3
	movdqu	64(%rdi,%rcx,8), %xmm4
	paddq	%xmm1, %xmm4
	paddq	%xmm2, %xmm4
	movdqu	80(%rdi,%rcx,8), %xmm2
	paddq	%xmm3, %xmm2
	paddq	%xmm0, %xmm2
	movdqu	96(%rdi,%rcx,8), %xmm0
	paddq	%xmm4, %xmm0
	movdqu	112(%rdi,%rcx,8), %xmm1
	paddq	%xmm2, %xmm1
	addq	$16, %rcx
	addq	$4, %rax
	jne	.LBB7_7
# %bb.8:
	testq	%r9, %r9
	je	.LBB7_11
.LBB7_9:
	leaq	(%rdi,%rcx,8), %rax
	addq	$16, %rax
	negq	%r9
	.p2align	4, 0x90
.LBB7_10:                               # =>This Inner Loop Header: Depth=1
	movdqu	-16(%rax), %xmm2
	paddq	%xmm2, %xmm0
	movdqu	(%rax), %xmm2
	paddq	%xmm2, %xmm1
	addq	$32, %rax
	incq	%r9
	jne	.LBB7_10
.LBB7_11:
	paddq	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	paddq	%xmm0, %xmm1
	movq	%xmm1, %rax
	cmpq	%r8, %rdx
	je	.LBB7_13
	.p2align	4, 0x90
.LBB7_12:                               # =>This Inner Loop Header: Depth=1
	addq	(%rdi,%rdx,8), %rax
	addq	$1, %rdx
	cmpq	%rdx, %r8
	jne	.LBB7_12
.LBB7_13:
	movslq	%esi, %rcx
	xorl	%edx, %edx
	divq	%rcx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	uint64_mean, .Lfunc_end7-uint64_mean
	.cfi_endproc
                                        # -- End function
	.globl	double_mean             # -- Begin function double_mean
	.p2align	4, 0x90
	.type	double_mean,@function
double_mean:                            # @double_mean
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	testl	%esi, %esi
	jle	.LBB8_1
# %bb.2:
	movl	%esi, %edx
	leaq	-1(%rdx), %rcx
	movl	%edx, %eax
	andl	$7, %eax
	cmpq	$7, %rcx
	jae	.LBB8_4
# %bb.3:
	xorpd	%xmm0, %xmm0
	xorl	%ecx, %ecx
	testq	%rax, %rax
	jne	.LBB8_7
	jmp	.LBB8_9
.LBB8_1:
	xorpd	%xmm0, %xmm0
	jmp	.LBB8_9
.LBB8_4:
	subq	%rax, %rdx
	xorpd	%xmm0, %xmm0
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB8_5:                                # =>This Inner Loop Header: Depth=1
	addsd	(%rdi,%rcx,8), %xmm0
	addsd	8(%rdi,%rcx,8), %xmm0
	addsd	16(%rdi,%rcx,8), %xmm0
	addsd	24(%rdi,%rcx,8), %xmm0
	addsd	32(%rdi,%rcx,8), %xmm0
	addsd	40(%rdi,%rcx,8), %xmm0
	addsd	48(%rdi,%rcx,8), %xmm0
	addsd	56(%rdi,%rcx,8), %xmm0
	addq	$8, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB8_5
# %bb.6:
	testq	%rax, %rax
	je	.LBB8_9
.LBB8_7:
	leaq	(%rdi,%rcx,8), %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB8_8:                                # =>This Inner Loop Header: Depth=1
	addsd	(%rcx,%rdx,8), %xmm0
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	.LBB8_8
.LBB8_9:
	cvtsi2sd	%esi, %xmm1
	divsd	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	double_mean, .Lfunc_end8-double_mean
	.cfi_endproc
                                        # -- End function
	.globl	int_min                 # -- Begin function int_min
	.p2align	4, 0x90
	.type	int_min,@function
int_min:                                # @int_min
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	(%rdi), %eax
	cmpl	$2, %esi
	jl	.LBB9_11
# %bb.1:
	movl	%esi, %ecx
	leaq	-1(%rcx), %r8
	movl	$1, %edx
	cmpq	$8, %r8
	jb	.LBB9_10
# %bb.2:
	movq	%r8, %rdx
	andq	$-8, %rdx
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	leaq	-8(%rdx), %rax
	movq	%rax, %rsi
	shrq	$3, %rsi
	addq	$1, %rsi
	movl	%esi, %r9d
	andl	$1, %r9d
	testq	%rax, %rax
	je	.LBB9_3
# %bb.4:
	movq	%r9, %rax
	subq	%rsi, %rax
	movl	$1, %esi
	movdqa	%xmm0, %xmm1
	.p2align	4, 0x90
.LBB9_5:                                # =>This Inner Loop Header: Depth=1
	movdqu	(%rdi,%rsi,4), %xmm2
	movdqu	16(%rdi,%rsi,4), %xmm3
	movdqu	32(%rdi,%rsi,4), %xmm4
	movdqu	48(%rdi,%rsi,4), %xmm5
	movdqa	%xmm0, %xmm6
	pcmpgtd	%xmm2, %xmm6
	pand	%xmm6, %xmm2
	pandn	%xmm0, %xmm6
	por	%xmm2, %xmm6
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm3, %xmm2
	pand	%xmm2, %xmm3
	pandn	%xmm1, %xmm2
	por	%xmm3, %xmm2
	movdqa	%xmm6, %xmm0
	pcmpgtd	%xmm4, %xmm0
	pand	%xmm0, %xmm4
	pandn	%xmm6, %xmm0
	por	%xmm4, %xmm0
	movdqa	%xmm2, %xmm1
	pcmpgtd	%xmm5, %xmm1
	pand	%xmm1, %xmm5
	pandn	%xmm2, %xmm1
	por	%xmm5, %xmm1
	addq	$16, %rsi
	addq	$2, %rax
	jne	.LBB9_5
# %bb.6:
	testq	%r9, %r9
	je	.LBB9_8
.LBB9_7:
	movdqu	(%rdi,%rsi,4), %xmm2
	movdqu	16(%rdi,%rsi,4), %xmm3
	movdqa	%xmm1, %xmm4
	pcmpgtd	%xmm3, %xmm4
	pand	%xmm4, %xmm3
	pandn	%xmm1, %xmm4
	por	%xmm3, %xmm4
	movdqa	%xmm0, %xmm1
	pcmpgtd	%xmm2, %xmm1
	pand	%xmm1, %xmm2
	pandn	%xmm0, %xmm1
	por	%xmm2, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm4, %xmm1
.LBB9_8:
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm0, %xmm2
	pand	%xmm2, %xmm0
	pandn	%xmm1, %xmm2
	por	%xmm0, %xmm2
	pshufd	$78, %xmm2, %xmm0       # xmm0 = xmm2[2,3,0,1]
	movdqa	%xmm0, %xmm1
	pcmpgtd	%xmm2, %xmm1
	pand	%xmm1, %xmm2
	pandn	%xmm0, %xmm1
	por	%xmm2, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	movdqa	%xmm0, %xmm2
	pcmpgtd	%xmm1, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm0, %xmm2
	por	%xmm1, %xmm2
	movd	%xmm2, %eax
	cmpq	%rdx, %r8
	je	.LBB9_11
# %bb.9:
	orq	$1, %rdx
	.p2align	4, 0x90
.LBB9_10:                               # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rdx,4), %esi
	cmpl	%eax, %esi
	cmovlel	%esi, %eax
	addq	$1, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB9_10
.LBB9_11:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB9_3:
	.cfi_def_cfa %rbp, 16
	movl	$1, %esi
	movdqa	%xmm0, %xmm1
	testq	%r9, %r9
	jne	.LBB9_7
	jmp	.LBB9_8
.Lfunc_end9:
	.size	int_min, .Lfunc_end9-int_min
	.cfi_endproc
                                        # -- End function
	.globl	uint64_min              # -- Begin function uint64_min
	.p2align	4, 0x90
	.type	uint64_min,@function
uint64_min:                             # @uint64_min
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $esi killed $esi def $rsi
	movq	(%rdi), %rax
	cmpl	$2, %esi
	jl	.LBB10_16
# %bb.1:
	movl	%esi, %r8d
	addl	$-1, %esi
	leaq	-2(%r8), %rcx
	andl	$3, %esi
	cmpq	$3, %rcx
	jae	.LBB10_3
# %bb.2:
	movl	$1, %edx
	jmp	.LBB10_13
.LBB10_3:
	subq	%rsi, %r8
	movl	$1, %edx
	jmp	.LBB10_4
	.p2align	4, 0x90
.LBB10_12:                              #   in Loop: Header=BB10_4 Depth=1
	addq	$4, %rdx
	cmpq	%rdx, %r8
	je	.LBB10_13
.LBB10_4:                               # =>This Inner Loop Header: Depth=1
	movq	(%rdi,%rdx,8), %rcx
	movq	8(%rdi,%rdx,8), %r9
	cmpq	%rax, %rcx
	jb	.LBB10_6
# %bb.5:                                #   in Loop: Header=BB10_4 Depth=1
	movq	%rax, %rcx
.LBB10_6:                               #   in Loop: Header=BB10_4 Depth=1
	cmpq	%rcx, %r9
	jb	.LBB10_8
# %bb.7:                                #   in Loop: Header=BB10_4 Depth=1
	movq	%rcx, %r9
.LBB10_8:                               #   in Loop: Header=BB10_4 Depth=1
	movq	16(%rdi,%rdx,8), %rcx
	cmpq	%r9, %rcx
	jb	.LBB10_10
# %bb.9:                                #   in Loop: Header=BB10_4 Depth=1
	movq	%r9, %rcx
.LBB10_10:                              #   in Loop: Header=BB10_4 Depth=1
	movq	24(%rdi,%rdx,8), %rax
	cmpq	%rcx, %rax
	jb	.LBB10_12
# %bb.11:                               #   in Loop: Header=BB10_4 Depth=1
	movq	%rcx, %rax
	jmp	.LBB10_12
.LBB10_13:
	testq	%rsi, %rsi
	je	.LBB10_16
# %bb.14:
	leaq	(%rdi,%rdx,8), %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB10_15:                              # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdx,8), %rdi
	cmpq	%rax, %rdi
	cmovbq	%rdi, %rax
	addq	$1, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB10_15
.LBB10_16:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end10:
	.size	uint64_min, .Lfunc_end10-uint64_min
	.cfi_endproc
                                        # -- End function
	.globl	double_min              # -- Begin function double_min
	.p2align	4, 0x90
	.type	double_min,@function
double_min:                             # @double_min
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $esi killed $esi def $rsi
	movsd	(%rdi), %xmm1           # xmm1 = mem[0],zero
	cmpl	$2, %esi
	jl	.LBB11_1
# %bb.2:
	movl	%esi, %eax
	addl	$-1, %esi
	leaq	-2(%rax), %rcx
	andl	$3, %esi
	cmpq	$3, %rcx
	jae	.LBB11_4
# %bb.3:
	movl	$1, %ecx
	jmp	.LBB11_6
.LBB11_1:
	movapd	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB11_4:
	.cfi_def_cfa %rbp, 16
	subq	%rsi, %rax
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB11_5:                               # =>This Inner Loop Header: Depth=1
	movsd	(%rdi,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	minsd	%xmm1, %xmm0
	movsd	8(%rdi,%rcx,8), %xmm1   # xmm1 = mem[0],zero
	minsd	%xmm0, %xmm1
	movsd	16(%rdi,%rcx,8), %xmm0  # xmm0 = mem[0],zero
	minsd	%xmm1, %xmm0
	movsd	24(%rdi,%rcx,8), %xmm1  # xmm1 = mem[0],zero
	minsd	%xmm0, %xmm1
	addq	$4, %rcx
	cmpq	%rcx, %rax
	jne	.LBB11_5
.LBB11_6:
	movapd	%xmm1, %xmm0
	testq	%rsi, %rsi
	je	.LBB11_9
# %bb.7:
	leaq	(%rdi,%rcx,8), %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB11_8:                               # =>This Inner Loop Header: Depth=1
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	minsd	%xmm1, %xmm0
	addq	$1, %rcx
	movapd	%xmm0, %xmm1
	cmpq	%rcx, %rsi
	jne	.LBB11_8
.LBB11_9:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end11:
	.size	double_min, .Lfunc_end11-double_min
	.cfi_endproc
                                        # -- End function
	.globl	int_max                 # -- Begin function int_max
	.p2align	4, 0x90
	.type	int_max,@function
int_max:                                # @int_max
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	(%rdi), %eax
	cmpl	$2, %esi
	jl	.LBB12_11
# %bb.1:
	movl	%esi, %ecx
	leaq	-1(%rcx), %r8
	movl	$1, %edx
	cmpq	$8, %r8
	jb	.LBB12_10
# %bb.2:
	movq	%r8, %rdx
	andq	$-8, %rdx
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	leaq	-8(%rdx), %rax
	movq	%rax, %rsi
	shrq	$3, %rsi
	addq	$1, %rsi
	movl	%esi, %r9d
	andl	$1, %r9d
	testq	%rax, %rax
	je	.LBB12_3
# %bb.4:
	movq	%r9, %rax
	subq	%rsi, %rax
	movl	$1, %esi
	movdqa	%xmm0, %xmm1
	.p2align	4, 0x90
.LBB12_5:                               # =>This Inner Loop Header: Depth=1
	movdqu	(%rdi,%rsi,4), %xmm2
	movdqu	16(%rdi,%rsi,4), %xmm3
	movdqu	32(%rdi,%rsi,4), %xmm4
	movdqu	48(%rdi,%rsi,4), %xmm5
	movdqa	%xmm2, %xmm6
	pcmpgtd	%xmm0, %xmm6
	pand	%xmm6, %xmm2
	pandn	%xmm0, %xmm6
	por	%xmm2, %xmm6
	movdqa	%xmm3, %xmm2
	pcmpgtd	%xmm1, %xmm2
	pand	%xmm2, %xmm3
	pandn	%xmm1, %xmm2
	por	%xmm3, %xmm2
	movdqa	%xmm4, %xmm0
	pcmpgtd	%xmm6, %xmm0
	pand	%xmm0, %xmm4
	pandn	%xmm6, %xmm0
	por	%xmm4, %xmm0
	movdqa	%xmm5, %xmm1
	pcmpgtd	%xmm2, %xmm1
	pand	%xmm1, %xmm5
	pandn	%xmm2, %xmm1
	por	%xmm5, %xmm1
	addq	$16, %rsi
	addq	$2, %rax
	jne	.LBB12_5
# %bb.6:
	testq	%r9, %r9
	je	.LBB12_8
.LBB12_7:
	movdqu	(%rdi,%rsi,4), %xmm2
	movdqu	16(%rdi,%rsi,4), %xmm3
	movdqa	%xmm3, %xmm4
	pcmpgtd	%xmm1, %xmm4
	pand	%xmm4, %xmm3
	pandn	%xmm1, %xmm4
	por	%xmm3, %xmm4
	movdqa	%xmm2, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm1, %xmm2
	pandn	%xmm0, %xmm1
	por	%xmm2, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm4, %xmm1
.LBB12_8:
	movdqa	%xmm0, %xmm2
	pcmpgtd	%xmm1, %xmm2
	pand	%xmm2, %xmm0
	pandn	%xmm1, %xmm2
	por	%xmm0, %xmm2
	pshufd	$78, %xmm2, %xmm0       # xmm0 = xmm2[2,3,0,1]
	movdqa	%xmm2, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm1, %xmm2
	pandn	%xmm0, %xmm1
	por	%xmm2, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm0, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm0, %xmm2
	por	%xmm1, %xmm2
	movd	%xmm2, %eax
	cmpq	%rdx, %r8
	je	.LBB12_11
# %bb.9:
	orq	$1, %rdx
	.p2align	4, 0x90
.LBB12_10:                              # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rdx,4), %esi
	cmpl	%eax, %esi
	cmovgel	%esi, %eax
	addq	$1, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB12_10
.LBB12_11:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB12_3:
	.cfi_def_cfa %rbp, 16
	movl	$1, %esi
	movdqa	%xmm0, %xmm1
	testq	%r9, %r9
	jne	.LBB12_7
	jmp	.LBB12_8
.Lfunc_end12:
	.size	int_max, .Lfunc_end12-int_max
	.cfi_endproc
                                        # -- End function
	.globl	uint64_max              # -- Begin function uint64_max
	.p2align	4, 0x90
	.type	uint64_max,@function
uint64_max:                             # @uint64_max
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $esi killed $esi def $rsi
	movq	(%rdi), %rax
	cmpl	$2, %esi
	jl	.LBB13_16
# %bb.1:
	movl	%esi, %r8d
	addl	$-1, %esi
	leaq	-2(%r8), %rcx
	andl	$3, %esi
	cmpq	$3, %rcx
	jae	.LBB13_3
# %bb.2:
	movl	$1, %edx
	jmp	.LBB13_13
.LBB13_3:
	subq	%rsi, %r8
	movl	$1, %edx
	jmp	.LBB13_4
	.p2align	4, 0x90
.LBB13_12:                              #   in Loop: Header=BB13_4 Depth=1
	addq	$4, %rdx
	cmpq	%rdx, %r8
	je	.LBB13_13
.LBB13_4:                               # =>This Inner Loop Header: Depth=1
	movq	(%rdi,%rdx,8), %rcx
	movq	8(%rdi,%rdx,8), %r9
	cmpq	%rax, %rcx
	ja	.LBB13_6
# %bb.5:                                #   in Loop: Header=BB13_4 Depth=1
	movq	%rax, %rcx
.LBB13_6:                               #   in Loop: Header=BB13_4 Depth=1
	cmpq	%rcx, %r9
	ja	.LBB13_8
# %bb.7:                                #   in Loop: Header=BB13_4 Depth=1
	movq	%rcx, %r9
.LBB13_8:                               #   in Loop: Header=BB13_4 Depth=1
	movq	16(%rdi,%rdx,8), %rcx
	cmpq	%r9, %rcx
	ja	.LBB13_10
# %bb.9:                                #   in Loop: Header=BB13_4 Depth=1
	movq	%r9, %rcx
.LBB13_10:                              #   in Loop: Header=BB13_4 Depth=1
	movq	24(%rdi,%rdx,8), %rax
	cmpq	%rcx, %rax
	ja	.LBB13_12
# %bb.11:                               #   in Loop: Header=BB13_4 Depth=1
	movq	%rcx, %rax
	jmp	.LBB13_12
.LBB13_13:
	testq	%rsi, %rsi
	je	.LBB13_16
# %bb.14:
	leaq	(%rdi,%rdx,8), %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB13_15:                              # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdx,8), %rdi
	cmpq	%rax, %rdi
	cmovaq	%rdi, %rax
	addq	$1, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB13_15
.LBB13_16:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end13:
	.size	uint64_max, .Lfunc_end13-uint64_max
	.cfi_endproc
                                        # -- End function
	.globl	double_max              # -- Begin function double_max
	.p2align	4, 0x90
	.type	double_max,@function
double_max:                             # @double_max
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $esi killed $esi def $rsi
	movsd	(%rdi), %xmm1           # xmm1 = mem[0],zero
	cmpl	$2, %esi
	jl	.LBB14_1
# %bb.2:
	movl	%esi, %eax
	addl	$-1, %esi
	leaq	-2(%rax), %rcx
	andl	$3, %esi
	cmpq	$3, %rcx
	jae	.LBB14_4
# %bb.3:
	movl	$1, %ecx
	jmp	.LBB14_6
.LBB14_1:
	movapd	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB14_4:
	.cfi_def_cfa %rbp, 16
	subq	%rsi, %rax
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB14_5:                               # =>This Inner Loop Header: Depth=1
	movsd	(%rdi,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	maxsd	%xmm1, %xmm0
	movsd	8(%rdi,%rcx,8), %xmm1   # xmm1 = mem[0],zero
	maxsd	%xmm0, %xmm1
	movsd	16(%rdi,%rcx,8), %xmm0  # xmm0 = mem[0],zero
	maxsd	%xmm1, %xmm0
	movsd	24(%rdi,%rcx,8), %xmm1  # xmm1 = mem[0],zero
	maxsd	%xmm0, %xmm1
	addq	$4, %rcx
	cmpq	%rcx, %rax
	jne	.LBB14_5
.LBB14_6:
	movapd	%xmm1, %xmm0
	testq	%rsi, %rsi
	je	.LBB14_9
# %bb.7:
	leaq	(%rdi,%rcx,8), %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB14_8:                               # =>This Inner Loop Header: Depth=1
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	maxsd	%xmm1, %xmm0
	addq	$1, %rcx
	movapd	%xmm0, %xmm1
	cmpq	%rcx, %rsi
	jne	.LBB14_8
.LBB14_9:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end14:
	.size	double_max, .Lfunc_end14-double_max
	.cfi_endproc
                                        # -- End function
	.globl	int_variance            # -- Begin function int_variance
	.p2align	4, 0x90
	.type	int_variance,@function
int_variance:                           # @int_variance
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorpd	%xmm0, %xmm0
	testl	%esi, %esi
	jle	.LBB15_20
# %bb.1:
	movl	%esi, %r8d
	cmpl	$8, %esi
	jae	.LBB15_3
# %bb.2:
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.LBB15_11
.LBB15_3:
	movl	%r8d, %edx
	andl	$-8, %edx
	leaq	-8(%rdx), %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$1, %rcx
	movl	%ecx, %r9d
	andl	$3, %r9d
	cmpq	$24, %rax
	jae	.LBB15_5
# %bb.4:
	pxor	%xmm1, %xmm1
	xorl	%ecx, %ecx
	pxor	%xmm2, %xmm2
	testq	%r9, %r9
	jne	.LBB15_8
	jmp	.LBB15_10
.LBB15_5:
	movq	%r9, %rax
	subq	%rcx, %rax
	pxor	%xmm1, %xmm1
	xorl	%ecx, %ecx
	pxor	%xmm2, %xmm2
	.p2align	4, 0x90
.LBB15_6:                               # =>This Inner Loop Header: Depth=1
	movdqu	(%rdi,%rcx,4), %xmm3
	paddd	%xmm1, %xmm3
	movdqu	16(%rdi,%rcx,4), %xmm1
	paddd	%xmm2, %xmm1
	movdqu	32(%rdi,%rcx,4), %xmm2
	movdqu	48(%rdi,%rcx,4), %xmm4
	movdqu	64(%rdi,%rcx,4), %xmm5
	paddd	%xmm2, %xmm5
	paddd	%xmm3, %xmm5
	movdqu	80(%rdi,%rcx,4), %xmm3
	paddd	%xmm4, %xmm3
	paddd	%xmm1, %xmm3
	movdqu	96(%rdi,%rcx,4), %xmm1
	paddd	%xmm5, %xmm1
	movdqu	112(%rdi,%rcx,4), %xmm2
	paddd	%xmm3, %xmm2
	addq	$32, %rcx
	addq	$4, %rax
	jne	.LBB15_6
# %bb.7:
	testq	%r9, %r9
	je	.LBB15_10
.LBB15_8:
	leaq	(%rdi,%rcx,4), %rax
	addq	$16, %rax
	negq	%r9
	.p2align	4, 0x90
.LBB15_9:                               # =>This Inner Loop Header: Depth=1
	movdqu	-16(%rax), %xmm3
	paddd	%xmm3, %xmm1
	movdqu	(%rax), %xmm3
	paddd	%xmm3, %xmm2
	addq	$32, %rax
	incq	%r9
	jne	.LBB15_9
.LBB15_10:
	paddd	%xmm2, %xmm1
	pshufd	$78, %xmm1, %xmm2       # xmm2 = xmm1[2,3,0,1]
	paddd	%xmm1, %xmm2
	pshufd	$229, %xmm2, %xmm1      # xmm1 = xmm2[1,1,2,3]
	paddd	%xmm2, %xmm1
	movd	%xmm1, %eax
	cmpq	%r8, %rdx
	je	.LBB15_12
	.p2align	4, 0x90
.LBB15_11:                              # =>This Inner Loop Header: Depth=1
	addl	(%rdi,%rdx,4), %eax
	addq	$1, %rdx
	cmpq	%rdx, %r8
	jne	.LBB15_11
.LBB15_12:
	cltd
	idivl	%esi
	testl	%esi, %esi
	jle	.LBB15_20
# %bb.13:
	leaq	-1(%r8), %rcx
	movl	%r8d, %r9d
	andl	$3, %r9d
	cmpq	$3, %rcx
	jae	.LBB15_15
# %bb.14:
	xorpd	%xmm0, %xmm0
	xorl	%r10d, %r10d
	testq	%r9, %r9
	jne	.LBB15_18
	jmp	.LBB15_20
.LBB15_15:
	subq	%r9, %r8
	xorpd	%xmm0, %xmm0
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB15_16:                              # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%r10,4), %edx
	movl	4(%rdi,%r10,4), %ecx
	subl	%eax, %edx
	imull	%edx, %edx
	xorps	%xmm1, %xmm1
	cvtsi2sd	%edx, %xmm1
	subl	%eax, %ecx
	imull	%ecx, %ecx
	xorps	%xmm2, %xmm2
	cvtsi2sd	%ecx, %xmm2
	addsd	%xmm0, %xmm1
	addsd	%xmm1, %xmm2
	movl	8(%rdi,%r10,4), %ecx
	subl	%eax, %ecx
	imull	%ecx, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ecx, %xmm1
	movl	12(%rdi,%r10,4), %ecx
	subl	%eax, %ecx
	imull	%ecx, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ecx, %xmm0
	addsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	addq	$4, %r10
	cmpq	%r10, %r8
	jne	.LBB15_16
# %bb.17:
	testq	%r9, %r9
	je	.LBB15_20
.LBB15_18:
	leaq	(%rdi,%r10,4), %rcx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB15_19:                              # =>This Inner Loop Header: Depth=1
	movl	(%rcx,%rdi,4), %edx
	subl	%eax, %edx
	imull	%edx, %edx
	xorps	%xmm1, %xmm1
	cvtsi2sd	%edx, %xmm1
	addsd	%xmm1, %xmm0
	addq	$1, %rdi
	cmpq	%rdi, %r9
	jne	.LBB15_19
.LBB15_20:
	addl	$-1, %esi
	xorps	%xmm1, %xmm1
	cvtsi2sd	%esi, %xmm1
	divsd	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end15:
	.size	int_variance, .Lfunc_end15-int_variance
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function uint64_variance
.LCPI16_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI16_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.text
	.globl	uint64_variance
	.p2align	4, 0x90
	.type	uint64_variance,@function
uint64_variance:                        # @uint64_variance
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorpd	%xmm0, %xmm0
	testl	%esi, %esi
	jle	.LBB16_20
# %bb.1:
	movl	%esi, %r9d
	cmpl	$4, %esi
	jae	.LBB16_3
# %bb.2:
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.LBB16_11
.LBB16_3:
	movl	%r9d, %edx
	andl	$-4, %edx
	leaq	-4(%rdx), %rax
	movq	%rax, %rcx
	shrq	$2, %rcx
	addq	$1, %rcx
	movl	%ecx, %r8d
	andl	$3, %r8d
	cmpq	$12, %rax
	jae	.LBB16_5
# %bb.4:
	pxor	%xmm1, %xmm1
	xorl	%ecx, %ecx
	pxor	%xmm2, %xmm2
	testq	%r8, %r8
	jne	.LBB16_8
	jmp	.LBB16_10
.LBB16_5:
	movq	%r8, %rax
	subq	%rcx, %rax
	pxor	%xmm1, %xmm1
	xorl	%ecx, %ecx
	pxor	%xmm2, %xmm2
	.p2align	4, 0x90
.LBB16_6:                               # =>This Inner Loop Header: Depth=1
	movdqu	(%rdi,%rcx,8), %xmm3
	paddq	%xmm1, %xmm3
	movdqu	16(%rdi,%rcx,8), %xmm1
	paddq	%xmm2, %xmm1
	movdqu	32(%rdi,%rcx,8), %xmm2
	movdqu	48(%rdi,%rcx,8), %xmm4
	movdqu	64(%rdi,%rcx,8), %xmm5
	paddq	%xmm2, %xmm5
	paddq	%xmm3, %xmm5
	movdqu	80(%rdi,%rcx,8), %xmm3
	paddq	%xmm4, %xmm3
	paddq	%xmm1, %xmm3
	movdqu	96(%rdi,%rcx,8), %xmm1
	paddq	%xmm5, %xmm1
	movdqu	112(%rdi,%rcx,8), %xmm2
	paddq	%xmm3, %xmm2
	addq	$16, %rcx
	addq	$4, %rax
	jne	.LBB16_6
# %bb.7:
	testq	%r8, %r8
	je	.LBB16_10
.LBB16_8:
	leaq	(%rdi,%rcx,8), %rax
	addq	$16, %rax
	negq	%r8
	.p2align	4, 0x90
.LBB16_9:                               # =>This Inner Loop Header: Depth=1
	movdqu	-16(%rax), %xmm3
	paddq	%xmm3, %xmm1
	movdqu	(%rax), %xmm3
	paddq	%xmm3, %xmm2
	addq	$32, %rax
	incq	%r8
	jne	.LBB16_9
.LBB16_10:
	paddq	%xmm2, %xmm1
	pshufd	$78, %xmm1, %xmm2       # xmm2 = xmm1[2,3,0,1]
	paddq	%xmm1, %xmm2
	movq	%xmm2, %rax
	cmpq	%r9, %rdx
	je	.LBB16_12
	.p2align	4, 0x90
.LBB16_11:                              # =>This Inner Loop Header: Depth=1
	addq	(%rdi,%rdx,8), %rax
	addq	$1, %rdx
	cmpq	%rdx, %r9
	jne	.LBB16_11
.LBB16_12:
	movslq	%esi, %rcx
	xorl	%edx, %edx
	divq	%rcx
	testl	%esi, %esi
	jle	.LBB16_20
# %bb.13:
	leaq	-1(%r9), %rcx
	movl	%r9d, %r8d
	andl	$3, %r8d
	cmpq	$3, %rcx
	jae	.LBB16_15
# %bb.14:
	xorpd	%xmm0, %xmm0
	xorl	%r10d, %r10d
	testq	%r8, %r8
	jne	.LBB16_18
	jmp	.LBB16_20
.LBB16_15:
	subq	%r8, %r9
	xorpd	%xmm0, %xmm0
	xorl	%r10d, %r10d
	movdqa	.LCPI16_0(%rip), %xmm1  # xmm1 = [1127219200,1160773632,0,0]
	movapd	.LCPI16_1(%rip), %xmm2  # xmm2 = [4.503599627370496E+15,1.9342813113834067E+25]
	.p2align	4, 0x90
.LBB16_16:                              # =>This Inner Loop Header: Depth=1
	movq	(%rdi,%r10,8), %rcx
	movq	8(%rdi,%r10,8), %rdx
	subq	%rax, %rcx
	imulq	%rcx, %rcx
	movq	%rcx, %xmm3
	punpckldq	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1]
	subpd	%xmm2, %xmm3
	movapd	%xmm3, %xmm4
	unpckhpd	%xmm3, %xmm4    # xmm4 = xmm4[1],xmm3[1]
	addsd	%xmm3, %xmm4
	addsd	%xmm0, %xmm4
	subq	%rax, %rdx
	imulq	%rdx, %rdx
	movq	%rdx, %xmm0
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	subpd	%xmm2, %xmm0
	movapd	%xmm0, %xmm3
	unpckhpd	%xmm0, %xmm3    # xmm3 = xmm3[1],xmm0[1]
	addsd	%xmm0, %xmm3
	addsd	%xmm4, %xmm3
	movq	16(%rdi,%r10,8), %rcx
	subq	%rax, %rcx
	imulq	%rcx, %rcx
	movq	%rcx, %xmm0
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	subpd	%xmm2, %xmm0
	movapd	%xmm0, %xmm4
	unpckhpd	%xmm0, %xmm4    # xmm4 = xmm4[1],xmm0[1]
	addsd	%xmm0, %xmm4
	addsd	%xmm3, %xmm4
	movq	24(%rdi,%r10,8), %rcx
	subq	%rax, %rcx
	imulq	%rcx, %rcx
	movq	%rcx, %xmm3
	punpckldq	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1]
	subpd	%xmm2, %xmm3
	movapd	%xmm3, %xmm0
	unpckhpd	%xmm3, %xmm0    # xmm0 = xmm0[1],xmm3[1]
	addsd	%xmm3, %xmm0
	addsd	%xmm4, %xmm0
	addq	$4, %r10
	cmpq	%r10, %r9
	jne	.LBB16_16
# %bb.17:
	testq	%r8, %r8
	je	.LBB16_20
.LBB16_18:
	leaq	(%rdi,%r10,8), %rcx
	xorl	%edx, %edx
	movdqa	.LCPI16_0(%rip), %xmm1  # xmm1 = [1127219200,1160773632,0,0]
	movapd	.LCPI16_1(%rip), %xmm2  # xmm2 = [4.503599627370496E+15,1.9342813113834067E+25]
	.p2align	4, 0x90
.LBB16_19:                              # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdx,8), %rdi
	subq	%rax, %rdi
	imulq	%rdi, %rdi
	movq	%rdi, %xmm3
	punpckldq	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1]
	subpd	%xmm2, %xmm3
	movapd	%xmm3, %xmm4
	unpckhpd	%xmm3, %xmm4    # xmm4 = xmm4[1],xmm3[1]
	addsd	%xmm3, %xmm4
	addsd	%xmm4, %xmm0
	addq	$1, %rdx
	cmpq	%rdx, %r8
	jne	.LBB16_19
.LBB16_20:
	addl	$-1, %esi
	xorps	%xmm1, %xmm1
	cvtsi2sd	%esi, %xmm1
	divsd	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end16:
	.size	uint64_variance, .Lfunc_end16-uint64_variance
	.cfi_endproc
                                        # -- End function
	.globl	double_variance         # -- Begin function double_variance
	.p2align	4, 0x90
	.type	double_variance,@function
double_variance:                        # @double_variance
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	testl	%esi, %esi
	jle	.LBB17_3
# %bb.1:
	movl	%esi, %r8d
	leaq	-1(%r8), %rax
	movl	%r8d, %ecx
	andl	$7, %ecx
	cmpq	$7, %rax
	jae	.LBB17_4
# %bb.2:
	xorpd	%xmm1, %xmm1
	xorl	%edx, %edx
	testq	%rcx, %rcx
	jne	.LBB17_7
	jmp	.LBB17_9
.LBB17_4:
	movq	%r8, %rax
	subq	%rcx, %rax
	xorpd	%xmm1, %xmm1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB17_5:                               # =>This Inner Loop Header: Depth=1
	addsd	(%rdi,%rdx,8), %xmm1
	addsd	8(%rdi,%rdx,8), %xmm1
	addsd	16(%rdi,%rdx,8), %xmm1
	addsd	24(%rdi,%rdx,8), %xmm1
	addsd	32(%rdi,%rdx,8), %xmm1
	addsd	40(%rdi,%rdx,8), %xmm1
	addsd	48(%rdi,%rdx,8), %xmm1
	addsd	56(%rdi,%rdx,8), %xmm1
	addq	$8, %rdx
	cmpq	%rdx, %rax
	jne	.LBB17_5
# %bb.6:
	testq	%rcx, %rcx
	je	.LBB17_9
.LBB17_7:
	leaq	(%rdi,%rdx,8), %rax
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB17_8:                               # =>This Inner Loop Header: Depth=1
	addsd	(%rax,%rdx,8), %xmm1
	addq	$1, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB17_8
.LBB17_9:
	testl	%esi, %esi
	jle	.LBB17_3
# %bb.10:
	cvtsi2sd	%esi, %xmm0
	divsd	%xmm0, %xmm1
	leaq	-1(%r8), %rax
	movl	%r8d, %ecx
	andl	$3, %ecx
	cmpq	$3, %rax
	jae	.LBB17_13
# %bb.11:
	xorpd	%xmm0, %xmm0
	xorl	%edx, %edx
	testq	%rcx, %rcx
	jne	.LBB17_16
	jmp	.LBB17_18
.LBB17_3:
	xorpd	%xmm0, %xmm0
	jmp	.LBB17_18
.LBB17_13:
	subq	%rcx, %r8
	xorpd	%xmm0, %xmm0
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB17_14:                              # =>This Inner Loop Header: Depth=1
	movsd	(%rdi,%rdx,8), %xmm2    # xmm2 = mem[0],zero
	movsd	8(%rdi,%rdx,8), %xmm3   # xmm3 = mem[0],zero
	subsd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm2
	addsd	%xmm0, %xmm2
	subsd	%xmm1, %xmm3
	mulsd	%xmm3, %xmm3
	addsd	%xmm2, %xmm3
	movsd	16(%rdi,%rdx,8), %xmm2  # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm2
	addsd	%xmm3, %xmm2
	movsd	24(%rdi,%rdx,8), %xmm0  # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm2, %xmm0
	addq	$4, %rdx
	cmpq	%rdx, %r8
	jne	.LBB17_14
# %bb.15:
	testq	%rcx, %rcx
	je	.LBB17_18
.LBB17_16:
	leaq	(%rdi,%rdx,8), %rax
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB17_17:                              # =>This Inner Loop Header: Depth=1
	movsd	(%rax,%rdx,8), %xmm2    # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm2
	addsd	%xmm2, %xmm0
	addq	$1, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB17_17
.LBB17_18:
	addl	$-1, %esi
	xorps	%xmm1, %xmm1
	cvtsi2sd	%esi, %xmm1
	divsd	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end17:
	.size	double_variance, .Lfunc_end17-double_variance
	.cfi_endproc
                                        # -- End function
	.globl	int_moment              # -- Begin function int_moment
	.p2align	4, 0x90
	.type	int_moment,@function
int_moment:                             # @int_moment
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	.cfi_offset %rbx, -24
	movl	%edx, %r8d
                                        # kill: def $edi killed $edi def $rdi
	xorpd	%xmm0, %xmm0
	testl	%edx, %edx
	jle	.LBB18_23
# %bb.1:
	movl	%r8d, %r11d
	cmpl	$8, %r8d
	jae	.LBB18_3
# %bb.2:
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.LBB18_11
.LBB18_3:
	movl	%r11d, %edx
	andl	$-8, %edx
	leaq	-8(%rdx), %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$1, %rcx
	movl	%ecx, %r9d
	andl	$3, %r9d
	cmpq	$24, %rax
	jae	.LBB18_5
# %bb.4:
	pxor	%xmm1, %xmm1
	xorl	%ecx, %ecx
	pxor	%xmm2, %xmm2
	testq	%r9, %r9
	jne	.LBB18_8
	jmp	.LBB18_10
.LBB18_5:
	movq	%r9, %rax
	subq	%rcx, %rax
	pxor	%xmm1, %xmm1
	xorl	%ecx, %ecx
	pxor	%xmm2, %xmm2
	.p2align	4, 0x90
.LBB18_6:                               # =>This Inner Loop Header: Depth=1
	movdqu	(%rsi,%rcx,4), %xmm3
	paddd	%xmm1, %xmm3
	movdqu	16(%rsi,%rcx,4), %xmm1
	paddd	%xmm2, %xmm1
	movdqu	32(%rsi,%rcx,4), %xmm2
	movdqu	48(%rsi,%rcx,4), %xmm4
	movdqu	64(%rsi,%rcx,4), %xmm5
	paddd	%xmm2, %xmm5
	paddd	%xmm3, %xmm5
	movdqu	80(%rsi,%rcx,4), %xmm3
	paddd	%xmm4, %xmm3
	paddd	%xmm1, %xmm3
	movdqu	96(%rsi,%rcx,4), %xmm1
	paddd	%xmm5, %xmm1
	movdqu	112(%rsi,%rcx,4), %xmm2
	paddd	%xmm3, %xmm2
	addq	$32, %rcx
	addq	$4, %rax
	jne	.LBB18_6
# %bb.7:
	testq	%r9, %r9
	je	.LBB18_10
.LBB18_8:
	leaq	(%rsi,%rcx,4), %rax
	addq	$16, %rax
	negq	%r9
	.p2align	4, 0x90
.LBB18_9:                               # =>This Inner Loop Header: Depth=1
	movdqu	-16(%rax), %xmm3
	paddd	%xmm3, %xmm1
	movdqu	(%rax), %xmm3
	paddd	%xmm3, %xmm2
	addq	$32, %rax
	incq	%r9
	jne	.LBB18_9
.LBB18_10:
	paddd	%xmm2, %xmm1
	pshufd	$78, %xmm1, %xmm2       # xmm2 = xmm1[2,3,0,1]
	paddd	%xmm1, %xmm2
	pshufd	$229, %xmm2, %xmm1      # xmm1 = xmm2[1,1,2,3]
	paddd	%xmm2, %xmm1
	movd	%xmm1, %eax
	cmpq	%r11, %rdx
	je	.LBB18_12
	.p2align	4, 0x90
.LBB18_11:                              # =>This Inner Loop Header: Depth=1
	addl	(%rsi,%rdx,4), %eax
	addq	$1, %rdx
	cmpq	%rdx, %r11
	jne	.LBB18_11
.LBB18_12:
	cltd
	idivl	%r8d
	testl	%r8d, %r8d
	jle	.LBB18_23
# %bb.13:
	leal	-1(%rdi), %edx
	leal	-2(%rdi), %r9d
	andl	$7, %edx
	movl	%edx, %r10d
	subl	%edi, %r10d
	addl	$1, %r10d
	xorpd	%xmm0, %xmm0
	xorl	%ecx, %ecx
	jmp	.LBB18_14
	.p2align	4, 0x90
.LBB18_15:                              #   in Loop: Header=BB18_14 Depth=1
	movapd	%xmm1, %xmm2
.LBB18_22:                              #   in Loop: Header=BB18_14 Depth=1
	addsd	%xmm2, %xmm0
	addq	$1, %rcx
	cmpq	%r11, %rcx
	je	.LBB18_23
.LBB18_14:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_18 Depth 2
                                        #     Child Loop BB18_21 Depth 2
	movl	(%rsi,%rcx,4), %ebx
	subl	%eax, %ebx
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ebx, %xmm1
	cmpl	$2, %edi
	jl	.LBB18_15
# %bb.16:                               #   in Loop: Header=BB18_14 Depth=1
	movapd	%xmm1, %xmm2
	cmpl	$7, %r9d
	jb	.LBB18_19
# %bb.17:                               #   in Loop: Header=BB18_14 Depth=1
	movl	%r10d, %ebx
	movapd	%xmm1, %xmm2
	.p2align	4, 0x90
.LBB18_18:                              #   Parent Loop BB18_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mulsd	%xmm1, %xmm2
	mulsd	%xmm1, %xmm2
	mulsd	%xmm1, %xmm2
	mulsd	%xmm1, %xmm2
	mulsd	%xmm1, %xmm2
	mulsd	%xmm1, %xmm2
	mulsd	%xmm1, %xmm2
	mulsd	%xmm1, %xmm2
	addl	$8, %ebx
	jne	.LBB18_18
.LBB18_19:                              #   in Loop: Header=BB18_14 Depth=1
	testl	%edx, %edx
	je	.LBB18_22
# %bb.20:                               #   in Loop: Header=BB18_14 Depth=1
	movl	%edx, %ebx
	.p2align	4, 0x90
.LBB18_21:                              #   Parent Loop BB18_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mulsd	%xmm1, %xmm2
	addl	$-1, %ebx
	jne	.LBB18_21
	jmp	.LBB18_22
.LBB18_23:
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r8d, %xmm1
	divsd	%xmm1, %xmm0
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end18:
	.size	int_moment, .Lfunc_end18-int_moment
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function uint64_moment
.LCPI19_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI19_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.text
	.globl	uint64_moment
	.p2align	4, 0x90
	.type	uint64_moment,@function
uint64_moment:                          # @uint64_moment
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
	movl	%edx, %r8d
                                        # kill: def $edi killed $edi def $rdi
	xorpd	%xmm0, %xmm0
	testl	%edx, %edx
	jle	.LBB19_23
# %bb.1:
	movl	%r8d, %r14d
	cmpl	$4, %r8d
	jae	.LBB19_3
# %bb.2:
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.LBB19_11
.LBB19_3:
	movl	%r14d, %edx
	andl	$-4, %edx
	leaq	-4(%rdx), %rax
	movq	%rax, %rcx
	shrq	$2, %rcx
	addq	$1, %rcx
	movl	%ecx, %ebx
	andl	$3, %ebx
	cmpq	$12, %rax
	jae	.LBB19_5
# %bb.4:
	pxor	%xmm1, %xmm1
	xorl	%ecx, %ecx
	pxor	%xmm2, %xmm2
	testq	%rbx, %rbx
	jne	.LBB19_8
	jmp	.LBB19_10
.LBB19_5:
	movq	%rbx, %rax
	subq	%rcx, %rax
	pxor	%xmm1, %xmm1
	xorl	%ecx, %ecx
	pxor	%xmm2, %xmm2
	.p2align	4, 0x90
.LBB19_6:                               # =>This Inner Loop Header: Depth=1
	movdqu	(%rsi,%rcx,8), %xmm3
	paddq	%xmm1, %xmm3
	movdqu	16(%rsi,%rcx,8), %xmm1
	paddq	%xmm2, %xmm1
	movdqu	32(%rsi,%rcx,8), %xmm2
	movdqu	48(%rsi,%rcx,8), %xmm4
	movdqu	64(%rsi,%rcx,8), %xmm5
	paddq	%xmm2, %xmm5
	paddq	%xmm3, %xmm5
	movdqu	80(%rsi,%rcx,8), %xmm3
	paddq	%xmm4, %xmm3
	paddq	%xmm1, %xmm3
	movdqu	96(%rsi,%rcx,8), %xmm1
	paddq	%xmm5, %xmm1
	movdqu	112(%rsi,%rcx,8), %xmm2
	paddq	%xmm3, %xmm2
	addq	$16, %rcx
	addq	$4, %rax
	jne	.LBB19_6
# %bb.7:
	testq	%rbx, %rbx
	je	.LBB19_10
.LBB19_8:
	leaq	(%rsi,%rcx,8), %rax
	addq	$16, %rax
	negq	%rbx
	.p2align	4, 0x90
.LBB19_9:                               # =>This Inner Loop Header: Depth=1
	movdqu	-16(%rax), %xmm3
	paddq	%xmm3, %xmm1
	movdqu	(%rax), %xmm3
	paddq	%xmm3, %xmm2
	addq	$32, %rax
	incq	%rbx
	jne	.LBB19_9
.LBB19_10:
	paddq	%xmm2, %xmm1
	pshufd	$78, %xmm1, %xmm2       # xmm2 = xmm1[2,3,0,1]
	paddq	%xmm1, %xmm2
	movq	%xmm2, %rax
	cmpq	%r14, %rdx
	je	.LBB19_12
	.p2align	4, 0x90
.LBB19_11:                              # =>This Inner Loop Header: Depth=1
	addq	(%rsi,%rdx,8), %rax
	addq	$1, %rdx
	cmpq	%rdx, %r14
	jne	.LBB19_11
.LBB19_12:
	movslq	%r8d, %rcx
	xorl	%edx, %edx
	divq	%rcx
	testl	%r8d, %r8d
	jle	.LBB19_23
# %bb.13:
	leal	-1(%rdi), %r11d
	leal	-2(%rdi), %r9d
	andl	$7, %r11d
	movl	%r11d, %r10d
	subl	%edi, %r10d
	addl	$1, %r10d
	xorpd	%xmm0, %xmm0
	xorl	%edx, %edx
	movdqa	.LCPI19_0(%rip), %xmm1  # xmm1 = [1127219200,1160773632,0,0]
	movapd	.LCPI19_1(%rip), %xmm2  # xmm2 = [4.503599627370496E+15,1.9342813113834067E+25]
	jmp	.LBB19_14
	.p2align	4, 0x90
.LBB19_15:                              #   in Loop: Header=BB19_14 Depth=1
	movapd	%xmm3, %xmm4
.LBB19_22:                              #   in Loop: Header=BB19_14 Depth=1
	addsd	%xmm4, %xmm0
	addq	$1, %rdx
	cmpq	%r14, %rdx
	je	.LBB19_23
.LBB19_14:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_18 Depth 2
                                        #     Child Loop BB19_21 Depth 2
	movq	(%rsi,%rdx,8), %rcx
	subq	%rax, %rcx
	movq	%rcx, %xmm4
	punpckldq	%xmm1, %xmm4    # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1]
	subpd	%xmm2, %xmm4
	movapd	%xmm4, %xmm3
	unpckhpd	%xmm4, %xmm3    # xmm3 = xmm3[1],xmm4[1]
	addsd	%xmm4, %xmm3
	cmpl	$2, %edi
	jl	.LBB19_15
# %bb.16:                               #   in Loop: Header=BB19_14 Depth=1
	movapd	%xmm3, %xmm4
	cmpl	$7, %r9d
	jb	.LBB19_19
# %bb.17:                               #   in Loop: Header=BB19_14 Depth=1
	movl	%r10d, %ecx
	movapd	%xmm3, %xmm4
	.p2align	4, 0x90
.LBB19_18:                              #   Parent Loop BB19_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mulsd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm4
	addl	$8, %ecx
	jne	.LBB19_18
.LBB19_19:                              #   in Loop: Header=BB19_14 Depth=1
	testl	%r11d, %r11d
	je	.LBB19_22
# %bb.20:                               #   in Loop: Header=BB19_14 Depth=1
	movl	%r11d, %ecx
	.p2align	4, 0x90
.LBB19_21:                              #   Parent Loop BB19_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mulsd	%xmm3, %xmm4
	addl	$-1, %ecx
	jne	.LBB19_21
	jmp	.LBB19_22
.LBB19_23:
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r8d, %xmm1
	divsd	%xmm1, %xmm0
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end19:
	.size	uint64_moment, .Lfunc_end19-uint64_moment
	.cfi_endproc
                                        # -- End function
	.globl	double_moment           # -- Begin function double_moment
	.p2align	4, 0x90
	.type	double_moment,@function
double_moment:                          # @double_moment
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $edi killed $edi def $rdi
	testl	%edx, %edx
	jle	.LBB20_3
# %bb.1:
	movl	%edx, %r10d
	leaq	-1(%r10), %rax
	movl	%r10d, %r8d
	andl	$7, %r8d
	cmpq	$7, %rax
	jae	.LBB20_4
# %bb.2:
	xorpd	%xmm1, %xmm1
	xorl	%eax, %eax
	testq	%r8, %r8
	jne	.LBB20_7
	jmp	.LBB20_9
.LBB20_3:
	cvtsi2sd	%edx, %xmm2
	jmp	.LBB20_20
.LBB20_4:
	movq	%r10, %rcx
	subq	%r8, %rcx
	xorpd	%xmm1, %xmm1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB20_5:                               # =>This Inner Loop Header: Depth=1
	addsd	(%rsi,%rax,8), %xmm1
	addsd	8(%rsi,%rax,8), %xmm1
	addsd	16(%rsi,%rax,8), %xmm1
	addsd	24(%rsi,%rax,8), %xmm1
	addsd	32(%rsi,%rax,8), %xmm1
	addsd	40(%rsi,%rax,8), %xmm1
	addsd	48(%rsi,%rax,8), %xmm1
	addsd	56(%rsi,%rax,8), %xmm1
	addq	$8, %rax
	cmpq	%rax, %rcx
	jne	.LBB20_5
# %bb.6:
	testq	%r8, %r8
	je	.LBB20_9
.LBB20_7:
	leaq	(%rsi,%rax,8), %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB20_8:                               # =>This Inner Loop Header: Depth=1
	addsd	(%rax,%rcx,8), %xmm1
	addq	$1, %rcx
	cmpq	%rcx, %r8
	jne	.LBB20_8
.LBB20_9:
	cvtsi2sd	%edx, %xmm2
	testl	%edx, %edx
	jle	.LBB20_20
# %bb.10:
	divsd	%xmm2, %xmm1
	leal	-1(%rdi), %ecx
	leal	-2(%rdi), %r9d
	andl	$7, %ecx
	movl	%ecx, %r8d
	subl	%edi, %r8d
	addl	$1, %r8d
	xorpd	%xmm0, %xmm0
	xorl	%edx, %edx
	jmp	.LBB20_13
	.p2align	4, 0x90
.LBB20_11:                              #   in Loop: Header=BB20_13 Depth=1
	movapd	%xmm3, %xmm4
.LBB20_12:                              #   in Loop: Header=BB20_13 Depth=1
	addsd	%xmm4, %xmm0
	addq	$1, %rdx
	cmpq	%r10, %rdx
	je	.LBB20_21
.LBB20_13:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_16 Depth 2
                                        #     Child Loop BB20_19 Depth 2
	movsd	(%rsi,%rdx,8), %xmm3    # xmm3 = mem[0],zero
	subsd	%xmm1, %xmm3
	cmpl	$2, %edi
	jl	.LBB20_11
# %bb.14:                               #   in Loop: Header=BB20_13 Depth=1
	movapd	%xmm3, %xmm4
	cmpl	$7, %r9d
	jb	.LBB20_17
# %bb.15:                               #   in Loop: Header=BB20_13 Depth=1
	movl	%r8d, %eax
	movapd	%xmm3, %xmm4
	.p2align	4, 0x90
.LBB20_16:                              #   Parent Loop BB20_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mulsd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm4
	addl	$8, %eax
	jne	.LBB20_16
.LBB20_17:                              #   in Loop: Header=BB20_13 Depth=1
	testl	%ecx, %ecx
	je	.LBB20_12
# %bb.18:                               #   in Loop: Header=BB20_13 Depth=1
	movl	%ecx, %eax
	.p2align	4, 0x90
.LBB20_19:                              #   Parent Loop BB20_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mulsd	%xmm3, %xmm4
	addl	$-1, %eax
	jne	.LBB20_19
	jmp	.LBB20_12
.LBB20_20:
	xorpd	%xmm0, %xmm0
.LBB20_21:
	divsd	%xmm2, %xmm0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end20:
	.size	double_moment, .Lfunc_end20-double_moment
	.cfi_endproc
                                        # -- End function
	.globl	int_stderr              # -- Begin function int_stderr
	.p2align	4, 0x90
	.type	int_stderr,@function
int_stderr:                             # @int_stderr
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	testl	%esi, %esi
	jle	.LBB21_1
# %bb.2:
	movl	%esi, %r8d
	cmpl	$8, %esi
	jae	.LBB21_4
# %bb.3:
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.LBB21_12
.LBB21_1:
	xorpd	%xmm0, %xmm0
	jmp	.LBB21_20
.LBB21_4:
	movl	%r8d, %edx
	andl	$-8, %edx
	leaq	-8(%rdx), %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$1, %rcx
	movl	%ecx, %r9d
	andl	$3, %r9d
	cmpq	$24, %rax
	jae	.LBB21_6
# %bb.5:
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	pxor	%xmm1, %xmm1
	testq	%r9, %r9
	jne	.LBB21_9
	jmp	.LBB21_11
.LBB21_6:
	movq	%r9, %rax
	subq	%rcx, %rax
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	pxor	%xmm1, %xmm1
	.p2align	4, 0x90
.LBB21_7:                               # =>This Inner Loop Header: Depth=1
	movdqu	(%rdi,%rcx,4), %xmm2
	paddd	%xmm0, %xmm2
	movdqu	16(%rdi,%rcx,4), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	32(%rdi,%rcx,4), %xmm1
	movdqu	48(%rdi,%rcx,4), %xmm3
	movdqu	64(%rdi,%rcx,4), %xmm4
	paddd	%xmm1, %xmm4
	paddd	%xmm2, %xmm4
	movdqu	80(%rdi,%rcx,4), %xmm2
	paddd	%xmm3, %xmm2
	paddd	%xmm0, %xmm2
	movdqu	96(%rdi,%rcx,4), %xmm0
	paddd	%xmm4, %xmm0
	movdqu	112(%rdi,%rcx,4), %xmm1
	paddd	%xmm2, %xmm1
	addq	$32, %rcx
	addq	$4, %rax
	jne	.LBB21_7
# %bb.8:
	testq	%r9, %r9
	je	.LBB21_11
.LBB21_9:
	leaq	(%rdi,%rcx,4), %rax
	addq	$16, %rax
	negq	%r9
	.p2align	4, 0x90
.LBB21_10:                              # =>This Inner Loop Header: Depth=1
	movdqu	-16(%rax), %xmm2
	paddd	%xmm2, %xmm0
	movdqu	(%rax), %xmm2
	paddd	%xmm2, %xmm1
	addq	$32, %rax
	incq	%r9
	jne	.LBB21_10
.LBB21_11:
	paddd	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	paddd	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %eax
	cmpq	%r8, %rdx
	je	.LBB21_13
	.p2align	4, 0x90
.LBB21_12:                              # =>This Inner Loop Header: Depth=1
	addl	(%rdi,%rdx,4), %eax
	addq	$1, %rdx
	cmpq	%rdx, %r8
	jne	.LBB21_12
.LBB21_13:
	cltd
	idivl	%esi
	leaq	-1(%r8), %rcx
	movl	%r8d, %r9d
	andl	$3, %r9d
	cmpq	$3, %rcx
	jae	.LBB21_15
# %bb.14:
	pxor	%xmm0, %xmm0
	xorl	%r10d, %r10d
	testq	%r9, %r9
	jne	.LBB21_18
	jmp	.LBB21_20
.LBB21_15:
	subq	%r9, %r8
	pxor	%xmm0, %xmm0
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB21_16:                              # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%r10,4), %edx
	movl	4(%rdi,%r10,4), %ecx
	subl	%eax, %edx
	imull	%edx, %edx
	xorps	%xmm1, %xmm1
	cvtsi2sd	%edx, %xmm1
	subl	%eax, %ecx
	imull	%ecx, %ecx
	xorps	%xmm2, %xmm2
	cvtsi2sd	%ecx, %xmm2
	addsd	%xmm0, %xmm1
	addsd	%xmm1, %xmm2
	movl	8(%rdi,%r10,4), %ecx
	subl	%eax, %ecx
	imull	%ecx, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ecx, %xmm1
	movl	12(%rdi,%r10,4), %ecx
	subl	%eax, %ecx
	imull	%ecx, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ecx, %xmm0
	addsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	addq	$4, %r10
	cmpq	%r10, %r8
	jne	.LBB21_16
# %bb.17:
	testq	%r9, %r9
	je	.LBB21_20
.LBB21_18:
	leaq	(%rdi,%r10,4), %rcx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB21_19:                              # =>This Inner Loop Header: Depth=1
	movl	(%rcx,%rdi,4), %edx
	subl	%eax, %edx
	imull	%edx, %edx
	xorps	%xmm1, %xmm1
	cvtsi2sd	%edx, %xmm1
	addsd	%xmm1, %xmm0
	addq	$1, %rdi
	cmpq	%rdi, %r9
	jne	.LBB21_19
.LBB21_20:
	addl	$-1, %esi
	xorps	%xmm1, %xmm1
	cvtsi2sd	%esi, %xmm1
	divsd	%xmm1, %xmm0
	sqrtsd	%xmm0, %xmm0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end21:
	.size	int_stderr, .Lfunc_end21-int_stderr
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function uint64_stderr
.LCPI22_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI22_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.text
	.globl	uint64_stderr
	.p2align	4, 0x90
	.type	uint64_stderr,@function
uint64_stderr:                          # @uint64_stderr
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	testl	%esi, %esi
	jle	.LBB22_1
# %bb.2:
	movl	%esi, %r9d
	cmpl	$4, %esi
	jae	.LBB22_4
# %bb.3:
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.LBB22_12
.LBB22_1:
	xorpd	%xmm0, %xmm0
	jmp	.LBB22_20
.LBB22_4:
	movl	%r9d, %edx
	andl	$-4, %edx
	leaq	-4(%rdx), %rax
	movq	%rax, %rcx
	shrq	$2, %rcx
	addq	$1, %rcx
	movl	%ecx, %r8d
	andl	$3, %r8d
	cmpq	$12, %rax
	jae	.LBB22_6
# %bb.5:
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	pxor	%xmm1, %xmm1
	testq	%r8, %r8
	jne	.LBB22_9
	jmp	.LBB22_11
.LBB22_6:
	movq	%r8, %rax
	subq	%rcx, %rax
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	pxor	%xmm1, %xmm1
	.p2align	4, 0x90
.LBB22_7:                               # =>This Inner Loop Header: Depth=1
	movdqu	(%rdi,%rcx,8), %xmm2
	paddq	%xmm0, %xmm2
	movdqu	16(%rdi,%rcx,8), %xmm0
	paddq	%xmm1, %xmm0
	movdqu	32(%rdi,%rcx,8), %xmm1
	movdqu	48(%rdi,%rcx,8), %xmm3
	movdqu	64(%rdi,%rcx,8), %xmm4
	paddq	%xmm1, %xmm4
	paddq	%xmm2, %xmm4
	movdqu	80(%rdi,%rcx,8), %xmm2
	paddq	%xmm3, %xmm2
	paddq	%xmm0, %xmm2
	movdqu	96(%rdi,%rcx,8), %xmm0
	paddq	%xmm4, %xmm0
	movdqu	112(%rdi,%rcx,8), %xmm1
	paddq	%xmm2, %xmm1
	addq	$16, %rcx
	addq	$4, %rax
	jne	.LBB22_7
# %bb.8:
	testq	%r8, %r8
	je	.LBB22_11
.LBB22_9:
	leaq	(%rdi,%rcx,8), %rax
	addq	$16, %rax
	negq	%r8
	.p2align	4, 0x90
.LBB22_10:                              # =>This Inner Loop Header: Depth=1
	movdqu	-16(%rax), %xmm2
	paddq	%xmm2, %xmm0
	movdqu	(%rax), %xmm2
	paddq	%xmm2, %xmm1
	addq	$32, %rax
	incq	%r8
	jne	.LBB22_10
.LBB22_11:
	paddq	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	paddq	%xmm0, %xmm1
	movq	%xmm1, %rax
	cmpq	%r9, %rdx
	je	.LBB22_13
	.p2align	4, 0x90
.LBB22_12:                              # =>This Inner Loop Header: Depth=1
	addq	(%rdi,%rdx,8), %rax
	addq	$1, %rdx
	cmpq	%rdx, %r9
	jne	.LBB22_12
.LBB22_13:
	movslq	%esi, %rcx
	xorl	%edx, %edx
	divq	%rcx
	leaq	-1(%r9), %rcx
	movl	%r9d, %r8d
	andl	$3, %r8d
	cmpq	$3, %rcx
	jae	.LBB22_15
# %bb.14:
	pxor	%xmm0, %xmm0
	xorl	%r10d, %r10d
	testq	%r8, %r8
	jne	.LBB22_18
	jmp	.LBB22_20
.LBB22_15:
	subq	%r8, %r9
	pxor	%xmm0, %xmm0
	xorl	%r10d, %r10d
	movdqa	.LCPI22_0(%rip), %xmm1  # xmm1 = [1127219200,1160773632,0,0]
	movapd	.LCPI22_1(%rip), %xmm2  # xmm2 = [4.503599627370496E+15,1.9342813113834067E+25]
	.p2align	4, 0x90
.LBB22_16:                              # =>This Inner Loop Header: Depth=1
	movq	(%rdi,%r10,8), %rcx
	movq	8(%rdi,%r10,8), %rdx
	subq	%rax, %rcx
	imulq	%rcx, %rcx
	movq	%rcx, %xmm3
	punpckldq	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1]
	subpd	%xmm2, %xmm3
	movapd	%xmm3, %xmm4
	unpckhpd	%xmm3, %xmm4    # xmm4 = xmm4[1],xmm3[1]
	addsd	%xmm3, %xmm4
	addsd	%xmm0, %xmm4
	subq	%rax, %rdx
	imulq	%rdx, %rdx
	movq	%rdx, %xmm0
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	subpd	%xmm2, %xmm0
	movapd	%xmm0, %xmm3
	unpckhpd	%xmm0, %xmm3    # xmm3 = xmm3[1],xmm0[1]
	addsd	%xmm0, %xmm3
	addsd	%xmm4, %xmm3
	movq	16(%rdi,%r10,8), %rcx
	subq	%rax, %rcx
	imulq	%rcx, %rcx
	movq	%rcx, %xmm0
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	subpd	%xmm2, %xmm0
	movapd	%xmm0, %xmm4
	unpckhpd	%xmm0, %xmm4    # xmm4 = xmm4[1],xmm0[1]
	addsd	%xmm0, %xmm4
	addsd	%xmm3, %xmm4
	movq	24(%rdi,%r10,8), %rcx
	subq	%rax, %rcx
	imulq	%rcx, %rcx
	movq	%rcx, %xmm3
	punpckldq	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1]
	subpd	%xmm2, %xmm3
	movapd	%xmm3, %xmm0
	unpckhpd	%xmm3, %xmm0    # xmm0 = xmm0[1],xmm3[1]
	addsd	%xmm3, %xmm0
	addsd	%xmm4, %xmm0
	addq	$4, %r10
	cmpq	%r10, %r9
	jne	.LBB22_16
# %bb.17:
	testq	%r8, %r8
	je	.LBB22_20
.LBB22_18:
	leaq	(%rdi,%r10,8), %rcx
	xorl	%edx, %edx
	movdqa	.LCPI22_0(%rip), %xmm1  # xmm1 = [1127219200,1160773632,0,0]
	movapd	.LCPI22_1(%rip), %xmm2  # xmm2 = [4.503599627370496E+15,1.9342813113834067E+25]
	.p2align	4, 0x90
.LBB22_19:                              # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdx,8), %rdi
	subq	%rax, %rdi
	imulq	%rdi, %rdi
	movq	%rdi, %xmm3
	punpckldq	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1]
	subpd	%xmm2, %xmm3
	movapd	%xmm3, %xmm4
	unpckhpd	%xmm3, %xmm4    # xmm4 = xmm4[1],xmm3[1]
	addsd	%xmm3, %xmm4
	addsd	%xmm4, %xmm0
	addq	$1, %rdx
	cmpq	%rdx, %r8
	jne	.LBB22_19
.LBB22_20:
	addl	$-1, %esi
	xorps	%xmm1, %xmm1
	cvtsi2sd	%esi, %xmm1
	divsd	%xmm1, %xmm0
	sqrtsd	%xmm0, %xmm0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end22:
	.size	uint64_stderr, .Lfunc_end22-uint64_stderr
	.cfi_endproc
                                        # -- End function
	.globl	double_stderr           # -- Begin function double_stderr
	.p2align	4, 0x90
	.type	double_stderr,@function
double_stderr:                          # @double_stderr
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	testl	%esi, %esi
	jle	.LBB23_1
# %bb.2:
	movl	%esi, %r9d
	leaq	-1(%r9), %r8
	movl	%r9d, %ecx
	andl	$7, %ecx
	cmpq	$7, %r8
	jae	.LBB23_4
# %bb.3:
	xorpd	%xmm0, %xmm0
	xorl	%edx, %edx
	testq	%rcx, %rcx
	jne	.LBB23_7
	jmp	.LBB23_9
.LBB23_1:
	xorpd	%xmm1, %xmm1
	jmp	.LBB23_16
.LBB23_4:
	movq	%r9, %rax
	subq	%rcx, %rax
	xorpd	%xmm0, %xmm0
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB23_5:                               # =>This Inner Loop Header: Depth=1
	addsd	(%rdi,%rdx,8), %xmm0
	addsd	8(%rdi,%rdx,8), %xmm0
	addsd	16(%rdi,%rdx,8), %xmm0
	addsd	24(%rdi,%rdx,8), %xmm0
	addsd	32(%rdi,%rdx,8), %xmm0
	addsd	40(%rdi,%rdx,8), %xmm0
	addsd	48(%rdi,%rdx,8), %xmm0
	addsd	56(%rdi,%rdx,8), %xmm0
	addq	$8, %rdx
	cmpq	%rdx, %rax
	jne	.LBB23_5
# %bb.6:
	testq	%rcx, %rcx
	je	.LBB23_9
.LBB23_7:
	leaq	(%rdi,%rdx,8), %rax
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB23_8:                               # =>This Inner Loop Header: Depth=1
	addsd	(%rax,%rdx,8), %xmm0
	addq	$1, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB23_8
.LBB23_9:
	cvtsi2sd	%esi, %xmm1
	divsd	%xmm1, %xmm0
	movl	%r9d, %ecx
	andl	$3, %ecx
	cmpq	$3, %r8
	jae	.LBB23_11
# %bb.10:
	xorpd	%xmm1, %xmm1
	xorl	%edx, %edx
	testq	%rcx, %rcx
	jne	.LBB23_14
	jmp	.LBB23_16
.LBB23_11:
	subq	%rcx, %r9
	xorpd	%xmm1, %xmm1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB23_12:                              # =>This Inner Loop Header: Depth=1
	movsd	(%rdi,%rdx,8), %xmm2    # xmm2 = mem[0],zero
	movsd	8(%rdi,%rdx,8), %xmm3   # xmm3 = mem[0],zero
	subsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm2
	addsd	%xmm1, %xmm2
	subsd	%xmm0, %xmm3
	mulsd	%xmm3, %xmm3
	addsd	%xmm2, %xmm3
	movsd	16(%rdi,%rdx,8), %xmm2  # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm2
	addsd	%xmm3, %xmm2
	movsd	24(%rdi,%rdx,8), %xmm1  # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	%xmm1, %xmm1
	addsd	%xmm2, %xmm1
	addq	$4, %rdx
	cmpq	%rdx, %r9
	jne	.LBB23_12
# %bb.13:
	testq	%rcx, %rcx
	je	.LBB23_16
.LBB23_14:
	leaq	(%rdi,%rdx,8), %rax
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB23_15:                              # =>This Inner Loop Header: Depth=1
	movsd	(%rax,%rdx,8), %xmm2    # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm2
	addsd	%xmm2, %xmm1
	addq	$1, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB23_15
.LBB23_16:
	addl	$-1, %esi
	xorps	%xmm0, %xmm0
	cvtsi2sd	%esi, %xmm0
	divsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	sqrtsd	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end23:
	.size	double_stderr, .Lfunc_end23-double_stderr
	.cfi_endproc
                                        # -- End function
	.globl	int_skew                # -- Begin function int_skew
	.p2align	4, 0x90
	.type	int_skew,@function
int_skew:                               # @int_skew
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $esi killed $esi def $rsi
	testl	%esi, %esi
	jle	.LBB24_1
# %bb.2:
	movl	%esi, %r8d
	cmpl	$8, %esi
	jae	.LBB24_4
# %bb.3:
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.LBB24_12
.LBB24_1:
	leal	-1(%rsi), %eax
	cvtsi2sd	%eax, %xmm1
	xorpd	%xmm0, %xmm0
	xorpd	%xmm2, %xmm2
	divsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm2, %xmm1
	jmp	.LBB24_37
.LBB24_4:
	movl	%r8d, %edx
	andl	$-8, %edx
	leaq	-8(%rdx), %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$1, %rcx
	movl	%ecx, %r9d
	andl	$3, %r9d
	cmpq	$24, %rax
	jae	.LBB24_6
# %bb.5:
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	pxor	%xmm1, %xmm1
	testq	%r9, %r9
	jne	.LBB24_9
	jmp	.LBB24_11
.LBB24_6:
	movq	%r9, %rax
	subq	%rcx, %rax
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	pxor	%xmm1, %xmm1
	.p2align	4, 0x90
.LBB24_7:                               # =>This Inner Loop Header: Depth=1
	movdqu	(%rdi,%rcx,4), %xmm2
	paddd	%xmm0, %xmm2
	movdqu	16(%rdi,%rcx,4), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	32(%rdi,%rcx,4), %xmm1
	movdqu	48(%rdi,%rcx,4), %xmm3
	movdqu	64(%rdi,%rcx,4), %xmm4
	paddd	%xmm1, %xmm4
	paddd	%xmm2, %xmm4
	movdqu	80(%rdi,%rcx,4), %xmm2
	paddd	%xmm3, %xmm2
	paddd	%xmm0, %xmm2
	movdqu	96(%rdi,%rcx,4), %xmm0
	paddd	%xmm4, %xmm0
	movdqu	112(%rdi,%rcx,4), %xmm1
	paddd	%xmm2, %xmm1
	addq	$32, %rcx
	addq	$4, %rax
	jne	.LBB24_7
# %bb.8:
	testq	%r9, %r9
	je	.LBB24_11
.LBB24_9:
	leaq	(%rdi,%rcx,4), %rax
	addq	$16, %rax
	negq	%r9
	.p2align	4, 0x90
.LBB24_10:                              # =>This Inner Loop Header: Depth=1
	movdqu	-16(%rax), %xmm2
	paddd	%xmm2, %xmm0
	movdqu	(%rax), %xmm2
	paddd	%xmm2, %xmm1
	addq	$32, %rax
	incq	%r9
	jne	.LBB24_10
.LBB24_11:
	paddd	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	paddd	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %eax
	cmpq	%r8, %rdx
	je	.LBB24_13
	.p2align	4, 0x90
.LBB24_12:                              # =>This Inner Loop Header: Depth=1
	addl	(%rdi,%rdx,4), %eax
	addq	$1, %rdx
	cmpq	%rdx, %r8
	jne	.LBB24_12
.LBB24_13:
	cltd
	idivl	%esi
	leaq	-1(%r8), %rcx
	movl	%r8d, %r9d
	andl	$3, %r9d
	cmpq	$3, %rcx
	jae	.LBB24_15
# %bb.14:
	pxor	%xmm1, %xmm1
	xorl	%r11d, %r11d
	testq	%r9, %r9
	jne	.LBB24_18
	jmp	.LBB24_20
.LBB24_15:
	movq	%r8, %r10
	subq	%r9, %r10
	pxor	%xmm1, %xmm1
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB24_16:                              # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%r11,4), %edx
	movl	4(%rdi,%r11,4), %ecx
	subl	%eax, %edx
	imull	%edx, %edx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%edx, %xmm0
	subl	%eax, %ecx
	imull	%ecx, %ecx
	xorps	%xmm2, %xmm2
	cvtsi2sd	%ecx, %xmm2
	addsd	%xmm1, %xmm0
	addsd	%xmm0, %xmm2
	movl	8(%rdi,%r11,4), %ecx
	subl	%eax, %ecx
	imull	%ecx, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ecx, %xmm0
	movl	12(%rdi,%r11,4), %ecx
	subl	%eax, %ecx
	imull	%ecx, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ecx, %xmm1
	addsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	addq	$4, %r11
	cmpq	%r11, %r10
	jne	.LBB24_16
# %bb.17:
	testq	%r9, %r9
	je	.LBB24_20
.LBB24_18:
	leaq	(%rdi,%r11,4), %r10
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB24_19:                              # =>This Inner Loop Header: Depth=1
	movl	(%r10,%rdx,4), %ecx
	subl	%eax, %ecx
	imull	%ecx, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ecx, %xmm0
	addsd	%xmm0, %xmm1
	addq	$1, %rdx
	cmpq	%rdx, %r9
	jne	.LBB24_19
.LBB24_20:
	leal	-1(%rsi), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	cmpl	$8, %esi
	jae	.LBB24_22
# %bb.21:
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.LBB24_30
.LBB24_22:
	movl	%r8d, %edx
	andl	$-8, %edx
	leaq	-8(%rdx), %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$1, %rcx
	movl	%ecx, %r9d
	andl	$3, %r9d
	cmpq	$24, %rax
	jae	.LBB24_24
# %bb.23:
	pxor	%xmm2, %xmm2
	xorl	%ecx, %ecx
	pxor	%xmm3, %xmm3
	testq	%r9, %r9
	jne	.LBB24_27
	jmp	.LBB24_29
.LBB24_24:
	movq	%r9, %rax
	subq	%rcx, %rax
	pxor	%xmm2, %xmm2
	xorl	%ecx, %ecx
	pxor	%xmm3, %xmm3
	.p2align	4, 0x90
.LBB24_25:                              # =>This Inner Loop Header: Depth=1
	movdqu	(%rdi,%rcx,4), %xmm4
	paddd	%xmm2, %xmm4
	movdqu	16(%rdi,%rcx,4), %xmm2
	paddd	%xmm3, %xmm2
	movdqu	32(%rdi,%rcx,4), %xmm3
	movdqu	48(%rdi,%rcx,4), %xmm5
	movdqu	64(%rdi,%rcx,4), %xmm6
	paddd	%xmm3, %xmm6
	paddd	%xmm4, %xmm6
	movdqu	80(%rdi,%rcx,4), %xmm4
	paddd	%xmm5, %xmm4
	paddd	%xmm2, %xmm4
	movdqu	96(%rdi,%rcx,4), %xmm2
	paddd	%xmm6, %xmm2
	movdqu	112(%rdi,%rcx,4), %xmm3
	paddd	%xmm4, %xmm3
	addq	$32, %rcx
	addq	$4, %rax
	jne	.LBB24_25
# %bb.26:
	testq	%r9, %r9
	je	.LBB24_29
.LBB24_27:
	leaq	(%rdi,%rcx,4), %rax
	addq	$16, %rax
	negq	%r9
	.p2align	4, 0x90
.LBB24_28:                              # =>This Inner Loop Header: Depth=1
	movdqu	-16(%rax), %xmm4
	paddd	%xmm4, %xmm2
	movdqu	(%rax), %xmm4
	paddd	%xmm4, %xmm3
	addq	$32, %rax
	incq	%r9
	jne	.LBB24_28
.LBB24_29:
	paddd	%xmm3, %xmm2
	pshufd	$78, %xmm2, %xmm3       # xmm3 = xmm2[2,3,0,1]
	paddd	%xmm2, %xmm3
	pshufd	$229, %xmm3, %xmm2      # xmm2 = xmm3[1,1,2,3]
	paddd	%xmm3, %xmm2
	movd	%xmm2, %eax
	cmpq	%r8, %rdx
	je	.LBB24_31
	.p2align	4, 0x90
.LBB24_30:                              # =>This Inner Loop Header: Depth=1
	addl	(%rdi,%rdx,4), %eax
	addq	$1, %rdx
	cmpq	%rdx, %r8
	jne	.LBB24_30
.LBB24_31:
	divsd	%xmm0, %xmm1
	cltd
	idivl	%esi
	movl	%r8d, %r9d
	andl	$1, %r9d
	cmpl	$1, %esi
	jne	.LBB24_33
# %bb.32:
	xorpd	%xmm0, %xmm0
	xorl	%edx, %edx
	jmp	.LBB24_35
.LBB24_33:
	subq	%r9, %r8
	xorpd	%xmm0, %xmm0
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB24_34:                              # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rdx,4), %ecx
	subl	%eax, %ecx
	xorps	%xmm2, %xmm2
	cvtsi2sd	%ecx, %xmm2
	movl	4(%rdi,%rdx,4), %ecx
	movapd	%xmm2, %xmm3
	mulsd	%xmm2, %xmm3
	mulsd	%xmm2, %xmm3
	addsd	%xmm0, %xmm3
	subl	%eax, %ecx
	xorps	%xmm2, %xmm2
	cvtsi2sd	%ecx, %xmm2
	movapd	%xmm2, %xmm0
	mulsd	%xmm2, %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm3, %xmm0
	addq	$2, %rdx
	cmpq	%rdx, %r8
	jne	.LBB24_34
.LBB24_35:
	sqrtsd	%xmm1, %xmm1
	testq	%r9, %r9
	je	.LBB24_37
# %bb.36:
	movl	(%rdi,%rdx,4), %ecx
	subl	%eax, %ecx
	xorps	%xmm2, %xmm2
	cvtsi2sd	%ecx, %xmm2
	movapd	%xmm2, %xmm3
	mulsd	%xmm2, %xmm3
	mulsd	%xmm2, %xmm3
	addsd	%xmm3, %xmm0
.LBB24_37:
	xorps	%xmm2, %xmm2
	cvtsi2sd	%esi, %xmm2
	divsd	%xmm2, %xmm0
	movapd	%xmm1, %xmm2
	mulsd	%xmm1, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end24:
	.size	int_skew, .Lfunc_end24-int_skew
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function uint64_skew
.LCPI25_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI25_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.text
	.globl	uint64_skew
	.p2align	4, 0x90
	.type	uint64_skew,@function
uint64_skew:                            # @uint64_skew
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	.cfi_offset %rbx, -24
                                        # kill: def $esi killed $esi def $rsi
	testl	%esi, %esi
	jle	.LBB25_1
# %bb.2:
	movl	%esi, %r9d
	cmpl	$4, %esi
	jae	.LBB25_4
# %bb.3:
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.LBB25_12
.LBB25_1:
	leal	-1(%rsi), %eax
	cvtsi2sd	%eax, %xmm1
	xorpd	%xmm0, %xmm0
	xorpd	%xmm2, %xmm2
	divsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm2, %xmm1
	jmp	.LBB25_37
.LBB25_4:
	movl	%r9d, %edx
	andl	$-4, %edx
	leaq	-4(%rdx), %rax
	movq	%rax, %rcx
	shrq	$2, %rcx
	addq	$1, %rcx
	movl	%ecx, %r8d
	andl	$3, %r8d
	cmpq	$12, %rax
	jae	.LBB25_6
# %bb.5:
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	pxor	%xmm1, %xmm1
	testq	%r8, %r8
	jne	.LBB25_9
	jmp	.LBB25_11
.LBB25_6:
	movq	%r8, %rax
	subq	%rcx, %rax
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	pxor	%xmm1, %xmm1
	.p2align	4, 0x90
.LBB25_7:                               # =>This Inner Loop Header: Depth=1
	movdqu	(%rdi,%rcx,8), %xmm2
	paddq	%xmm0, %xmm2
	movdqu	16(%rdi,%rcx,8), %xmm0
	paddq	%xmm1, %xmm0
	movdqu	32(%rdi,%rcx,8), %xmm1
	movdqu	48(%rdi,%rcx,8), %xmm3
	movdqu	64(%rdi,%rcx,8), %xmm4
	paddq	%xmm1, %xmm4
	paddq	%xmm2, %xmm4
	movdqu	80(%rdi,%rcx,8), %xmm2
	paddq	%xmm3, %xmm2
	paddq	%xmm0, %xmm2
	movdqu	96(%rdi,%rcx,8), %xmm0
	paddq	%xmm4, %xmm0
	movdqu	112(%rdi,%rcx,8), %xmm1
	paddq	%xmm2, %xmm1
	addq	$16, %rcx
	addq	$4, %rax
	jne	.LBB25_7
# %bb.8:
	testq	%r8, %r8
	je	.LBB25_11
.LBB25_9:
	leaq	(%rdi,%rcx,8), %rax
	addq	$16, %rax
	negq	%r8
	.p2align	4, 0x90
.LBB25_10:                              # =>This Inner Loop Header: Depth=1
	movdqu	-16(%rax), %xmm2
	paddq	%xmm2, %xmm0
	movdqu	(%rax), %xmm2
	paddq	%xmm2, %xmm1
	addq	$32, %rax
	incq	%r8
	jne	.LBB25_10
.LBB25_11:
	paddq	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	paddq	%xmm0, %xmm1
	movq	%xmm1, %rax
	cmpq	%r9, %rdx
	je	.LBB25_13
	.p2align	4, 0x90
.LBB25_12:                              # =>This Inner Loop Header: Depth=1
	addq	(%rdi,%rdx,8), %rax
	addq	$1, %rdx
	cmpq	%rdx, %r9
	jne	.LBB25_12
.LBB25_13:
	movslq	%esi, %r8
	xorl	%edx, %edx
	divq	%r8
	leaq	-1(%r9), %rcx
	movl	%r9d, %r10d
	andl	$3, %r10d
	cmpq	$3, %rcx
	jae	.LBB25_15
# %bb.14:
	pxor	%xmm1, %xmm1
	xorl	%ecx, %ecx
	testq	%r10, %r10
	jne	.LBB25_18
	jmp	.LBB25_20
.LBB25_15:
	movq	%r9, %r11
	subq	%r10, %r11
	pxor	%xmm1, %xmm1
	xorl	%ecx, %ecx
	movdqa	.LCPI25_0(%rip), %xmm0  # xmm0 = [1127219200,1160773632,0,0]
	movapd	.LCPI25_1(%rip), %xmm2  # xmm2 = [4.503599627370496E+15,1.9342813113834067E+25]
	.p2align	4, 0x90
.LBB25_16:                              # =>This Inner Loop Header: Depth=1
	movq	(%rdi,%rcx,8), %rdx
	movq	8(%rdi,%rcx,8), %rbx
	subq	%rax, %rdx
	imulq	%rdx, %rdx
	movq	%rdx, %xmm3
	punpckldq	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	subpd	%xmm2, %xmm3
	movapd	%xmm3, %xmm4
	unpckhpd	%xmm3, %xmm4    # xmm4 = xmm4[1],xmm3[1]
	addsd	%xmm3, %xmm4
	addsd	%xmm1, %xmm4
	subq	%rax, %rbx
	imulq	%rbx, %rbx
	movq	%rbx, %xmm1
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	subpd	%xmm2, %xmm1
	movapd	%xmm1, %xmm3
	unpckhpd	%xmm1, %xmm3    # xmm3 = xmm3[1],xmm1[1]
	addsd	%xmm1, %xmm3
	addsd	%xmm4, %xmm3
	movq	16(%rdi,%rcx,8), %rdx
	subq	%rax, %rdx
	imulq	%rdx, %rdx
	movq	%rdx, %xmm1
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	subpd	%xmm2, %xmm1
	movapd	%xmm1, %xmm4
	unpckhpd	%xmm1, %xmm4    # xmm4 = xmm4[1],xmm1[1]
	addsd	%xmm1, %xmm4
	addsd	%xmm3, %xmm4
	movq	24(%rdi,%rcx,8), %rdx
	subq	%rax, %rdx
	imulq	%rdx, %rdx
	movq	%rdx, %xmm3
	punpckldq	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	subpd	%xmm2, %xmm3
	movapd	%xmm3, %xmm1
	unpckhpd	%xmm3, %xmm1    # xmm1 = xmm1[1],xmm3[1]
	addsd	%xmm3, %xmm1
	addsd	%xmm4, %xmm1
	addq	$4, %rcx
	cmpq	%rcx, %r11
	jne	.LBB25_16
# %bb.17:
	testq	%r10, %r10
	je	.LBB25_20
.LBB25_18:
	leaq	(%rdi,%rcx,8), %rcx
	xorl	%edx, %edx
	movdqa	.LCPI25_0(%rip), %xmm0  # xmm0 = [1127219200,1160773632,0,0]
	movapd	.LCPI25_1(%rip), %xmm2  # xmm2 = [4.503599627370496E+15,1.9342813113834067E+25]
	.p2align	4, 0x90
.LBB25_19:                              # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdx,8), %rbx
	subq	%rax, %rbx
	imulq	%rbx, %rbx
	movq	%rbx, %xmm3
	punpckldq	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	subpd	%xmm2, %xmm3
	movapd	%xmm3, %xmm4
	unpckhpd	%xmm3, %xmm4    # xmm4 = xmm4[1],xmm3[1]
	addsd	%xmm3, %xmm4
	addsd	%xmm4, %xmm1
	addq	$1, %rdx
	cmpq	%rdx, %r10
	jne	.LBB25_19
.LBB25_20:
	leal	-1(%rsi), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	cmpl	$4, %esi
	jae	.LBB25_22
# %bb.21:
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.LBB25_30
.LBB25_22:
	movl	%r9d, %edx
	andl	$-4, %edx
	leaq	-4(%rdx), %rax
	movq	%rax, %rcx
	shrq	$2, %rcx
	addq	$1, %rcx
	movl	%ecx, %r10d
	andl	$3, %r10d
	cmpq	$12, %rax
	jae	.LBB25_24
# %bb.23:
	xorpd	%xmm2, %xmm2
	xorl	%ecx, %ecx
	pxor	%xmm3, %xmm3
	testq	%r10, %r10
	jne	.LBB25_27
	jmp	.LBB25_29
.LBB25_24:
	movq	%r10, %rax
	subq	%rcx, %rax
	xorpd	%xmm2, %xmm2
	xorl	%ecx, %ecx
	pxor	%xmm3, %xmm3
	.p2align	4, 0x90
.LBB25_25:                              # =>This Inner Loop Header: Depth=1
	movdqu	(%rdi,%rcx,8), %xmm4
	paddq	%xmm2, %xmm4
	movdqu	16(%rdi,%rcx,8), %xmm2
	paddq	%xmm3, %xmm2
	movdqu	32(%rdi,%rcx,8), %xmm3
	movdqu	48(%rdi,%rcx,8), %xmm5
	movdqu	64(%rdi,%rcx,8), %xmm6
	paddq	%xmm3, %xmm6
	paddq	%xmm4, %xmm6
	movdqu	80(%rdi,%rcx,8), %xmm4
	paddq	%xmm5, %xmm4
	paddq	%xmm2, %xmm4
	movdqu	96(%rdi,%rcx,8), %xmm2
	paddq	%xmm6, %xmm2
	movdqu	112(%rdi,%rcx,8), %xmm3
	paddq	%xmm4, %xmm3
	addq	$16, %rcx
	addq	$4, %rax
	jne	.LBB25_25
# %bb.26:
	testq	%r10, %r10
	je	.LBB25_29
.LBB25_27:
	leaq	(%rdi,%rcx,8), %rax
	addq	$16, %rax
	negq	%r10
	.p2align	4, 0x90
.LBB25_28:                              # =>This Inner Loop Header: Depth=1
	movdqu	-16(%rax), %xmm4
	paddq	%xmm4, %xmm2
	movdqu	(%rax), %xmm4
	paddq	%xmm4, %xmm3
	addq	$32, %rax
	incq	%r10
	jne	.LBB25_28
.LBB25_29:
	paddq	%xmm3, %xmm2
	pshufd	$78, %xmm2, %xmm3       # xmm3 = xmm2[2,3,0,1]
	paddq	%xmm2, %xmm3
	movq	%xmm3, %rax
	cmpq	%r9, %rdx
	je	.LBB25_31
	.p2align	4, 0x90
.LBB25_30:                              # =>This Inner Loop Header: Depth=1
	addq	(%rdi,%rdx,8), %rax
	addq	$1, %rdx
	cmpq	%rdx, %r9
	jne	.LBB25_30
.LBB25_31:
	divsd	%xmm0, %xmm1
	xorl	%edx, %edx
	divq	%r8
	movl	%r9d, %r8d
	andl	$1, %r8d
	cmpl	$1, %esi
	jne	.LBB25_33
# %bb.32:
	xorpd	%xmm0, %xmm0
	xorl	%edx, %edx
	jmp	.LBB25_35
.LBB25_33:
	subq	%r8, %r9
	xorpd	%xmm0, %xmm0
	xorl	%edx, %edx
	movdqa	.LCPI25_0(%rip), %xmm2  # xmm2 = [1127219200,1160773632,0,0]
	movapd	.LCPI25_1(%rip), %xmm3  # xmm3 = [4.503599627370496E+15,1.9342813113834067E+25]
	.p2align	4, 0x90
.LBB25_34:                              # =>This Inner Loop Header: Depth=1
	movq	(%rdi,%rdx,8), %rbx
	movq	8(%rdi,%rdx,8), %rcx
	subq	%rax, %rbx
	movq	%rbx, %xmm4
	punpckldq	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1]
	subpd	%xmm3, %xmm4
	movapd	%xmm4, %xmm5
	unpckhpd	%xmm4, %xmm5    # xmm5 = xmm5[1],xmm4[1]
	addsd	%xmm4, %xmm5
	movapd	%xmm5, %xmm4
	mulsd	%xmm5, %xmm4
	mulsd	%xmm5, %xmm4
	addsd	%xmm0, %xmm4
	subq	%rax, %rcx
	movq	%rcx, %xmm0
	punpckldq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	subpd	%xmm3, %xmm0
	movapd	%xmm0, %xmm5
	unpckhpd	%xmm0, %xmm5    # xmm5 = xmm5[1],xmm0[1]
	addsd	%xmm0, %xmm5
	movapd	%xmm5, %xmm0
	mulsd	%xmm5, %xmm0
	mulsd	%xmm5, %xmm0
	addsd	%xmm4, %xmm0
	addq	$2, %rdx
	cmpq	%rdx, %r9
	jne	.LBB25_34
.LBB25_35:
	sqrtsd	%xmm1, %xmm1
	testq	%r8, %r8
	je	.LBB25_37
# %bb.36:
	movq	(%rdi,%rdx,8), %rcx
	subq	%rax, %rcx
	movq	%rcx, %xmm2
	punpckldq	.LCPI25_0(%rip), %xmm2 # xmm2 = xmm2[0],mem[0],xmm2[1],mem[1]
	subpd	.LCPI25_1(%rip), %xmm2
	movapd	%xmm2, %xmm3
	unpckhpd	%xmm2, %xmm3    # xmm3 = xmm3[1],xmm2[1]
	addsd	%xmm2, %xmm3
	movapd	%xmm3, %xmm2
	mulsd	%xmm3, %xmm2
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm0
.LBB25_37:
	xorps	%xmm2, %xmm2
	cvtsi2sd	%esi, %xmm2
	divsd	%xmm2, %xmm0
	movapd	%xmm1, %xmm2
	mulsd	%xmm1, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end25:
	.size	uint64_skew, .Lfunc_end25-uint64_skew
	.cfi_endproc
                                        # -- End function
	.globl	double_skew             # -- Begin function double_skew
	.p2align	4, 0x90
	.type	double_skew,@function
double_skew:                            # @double_skew
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $esi killed $esi def $rsi
	testl	%esi, %esi
	jle	.LBB26_30
# %bb.1:
	movl	%esi, %r9d
	leaq	-1(%r9), %r8
	movl	%r9d, %edx
	andl	$7, %edx
	cmpq	$7, %r8
	jae	.LBB26_3
# %bb.2:
	xorpd	%xmm0, %xmm0
	xorl	%eax, %eax
	testq	%rdx, %rdx
	jne	.LBB26_6
	jmp	.LBB26_8
.LBB26_30:
	leal	-1(%rsi), %eax
	cvtsi2sd	%eax, %xmm1
	xorpd	%xmm0, %xmm0
	xorpd	%xmm2, %xmm2
	divsd	%xmm1, %xmm2
	sqrtsd	%xmm2, %xmm2
	xorps	%xmm1, %xmm1
	cvtsi2sd	%esi, %xmm1
	jmp	.LBB26_29
.LBB26_3:
	movq	%r9, %rcx
	subq	%rdx, %rcx
	xorpd	%xmm0, %xmm0
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB26_4:                               # =>This Inner Loop Header: Depth=1
	addsd	(%rdi,%rax,8), %xmm0
	addsd	8(%rdi,%rax,8), %xmm0
	addsd	16(%rdi,%rax,8), %xmm0
	addsd	24(%rdi,%rax,8), %xmm0
	addsd	32(%rdi,%rax,8), %xmm0
	addsd	40(%rdi,%rax,8), %xmm0
	addsd	48(%rdi,%rax,8), %xmm0
	addsd	56(%rdi,%rax,8), %xmm0
	addq	$8, %rax
	cmpq	%rax, %rcx
	jne	.LBB26_4
# %bb.5:
	testq	%rdx, %rdx
	je	.LBB26_8
.LBB26_6:
	leaq	(%rdi,%rax,8), %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB26_7:                               # =>This Inner Loop Header: Depth=1
	addsd	(%rax,%rcx,8), %xmm0
	addq	$1, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB26_7
.LBB26_8:
	cvtsi2sd	%esi, %xmm1
	divsd	%xmm1, %xmm0
	movl	%r9d, %edx
	andl	$3, %edx
	cmpq	$3, %r8
	jae	.LBB26_10
# %bb.9:
	xorpd	%xmm2, %xmm2
	xorl	%ecx, %ecx
	testq	%rdx, %rdx
	jne	.LBB26_13
	jmp	.LBB26_15
.LBB26_10:
	movq	%r9, %rax
	subq	%rdx, %rax
	xorpd	%xmm2, %xmm2
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB26_11:                              # =>This Inner Loop Header: Depth=1
	movsd	(%rdi,%rcx,8), %xmm3    # xmm3 = mem[0],zero
	movsd	8(%rdi,%rcx,8), %xmm4   # xmm4 = mem[0],zero
	subsd	%xmm0, %xmm3
	mulsd	%xmm3, %xmm3
	addsd	%xmm2, %xmm3
	subsd	%xmm0, %xmm4
	mulsd	%xmm4, %xmm4
	addsd	%xmm3, %xmm4
	movsd	16(%rdi,%rcx,8), %xmm3  # xmm3 = mem[0],zero
	subsd	%xmm0, %xmm3
	mulsd	%xmm3, %xmm3
	addsd	%xmm4, %xmm3
	movsd	24(%rdi,%rcx,8), %xmm2  # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm2
	addsd	%xmm3, %xmm2
	addq	$4, %rcx
	cmpq	%rcx, %rax
	jne	.LBB26_11
# %bb.12:
	testq	%rdx, %rdx
	je	.LBB26_15
.LBB26_13:
	leaq	(%rdi,%rcx,8), %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB26_14:                              # =>This Inner Loop Header: Depth=1
	movsd	(%rax,%rcx,8), %xmm3    # xmm3 = mem[0],zero
	subsd	%xmm0, %xmm3
	mulsd	%xmm3, %xmm3
	addsd	%xmm3, %xmm2
	addq	$1, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB26_14
.LBB26_15:
	addl	$-1, %esi
	movl	%r9d, %edx
	andl	$7, %edx
	cmpq	$7, %r8
	jae	.LBB26_17
# %bb.16:
	xorpd	%xmm3, %xmm3
	xorl	%ecx, %ecx
	jmp	.LBB26_19
.LBB26_17:
	movq	%r9, %rax
	subq	%rdx, %rax
	xorpd	%xmm3, %xmm3
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB26_18:                              # =>This Inner Loop Header: Depth=1
	addsd	(%rdi,%rcx,8), %xmm3
	addsd	8(%rdi,%rcx,8), %xmm3
	addsd	16(%rdi,%rcx,8), %xmm3
	addsd	24(%rdi,%rcx,8), %xmm3
	addsd	32(%rdi,%rcx,8), %xmm3
	addsd	40(%rdi,%rcx,8), %xmm3
	addsd	48(%rdi,%rcx,8), %xmm3
	addsd	56(%rdi,%rcx,8), %xmm3
	addq	$8, %rcx
	cmpq	%rcx, %rax
	jne	.LBB26_18
.LBB26_19:
	xorps	%xmm0, %xmm0
	cvtsi2sd	%esi, %xmm0
	testq	%rdx, %rdx
	je	.LBB26_22
# %bb.20:
	leaq	(%rdi,%rcx,8), %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB26_21:                              # =>This Inner Loop Header: Depth=1
	addsd	(%rax,%rcx,8), %xmm3
	addq	$1, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB26_21
.LBB26_22:
	divsd	%xmm0, %xmm2
	divsd	%xmm1, %xmm3
	movl	%r9d, %edx
	andl	$3, %edx
	cmpq	$3, %r8
	jae	.LBB26_24
# %bb.23:
	xorpd	%xmm0, %xmm0
	xorl	%ecx, %ecx
	jmp	.LBB26_26
.LBB26_24:
	subq	%rdx, %r9
	xorpd	%xmm0, %xmm0
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB26_25:                              # =>This Inner Loop Header: Depth=1
	movsd	(%rdi,%rcx,8), %xmm4    # xmm4 = mem[0],zero
	movsd	8(%rdi,%rcx,8), %xmm5   # xmm5 = mem[0],zero
	subsd	%xmm3, %xmm4
	movapd	%xmm4, %xmm6
	mulsd	%xmm4, %xmm6
	mulsd	%xmm4, %xmm6
	addsd	%xmm0, %xmm6
	subsd	%xmm3, %xmm5
	movapd	%xmm5, %xmm0
	mulsd	%xmm5, %xmm0
	mulsd	%xmm5, %xmm0
	addsd	%xmm6, %xmm0
	movsd	16(%rdi,%rcx,8), %xmm4  # xmm4 = mem[0],zero
	subsd	%xmm3, %xmm4
	movapd	%xmm4, %xmm5
	mulsd	%xmm4, %xmm5
	mulsd	%xmm4, %xmm5
	addsd	%xmm0, %xmm5
	movsd	24(%rdi,%rcx,8), %xmm4  # xmm4 = mem[0],zero
	subsd	%xmm3, %xmm4
	movapd	%xmm4, %xmm0
	mulsd	%xmm4, %xmm0
	mulsd	%xmm4, %xmm0
	addsd	%xmm5, %xmm0
	addq	$4, %rcx
	cmpq	%rcx, %r9
	jne	.LBB26_25
.LBB26_26:
	sqrtsd	%xmm2, %xmm2
	testq	%rdx, %rdx
	je	.LBB26_29
# %bb.27:
	leaq	(%rdi,%rcx,8), %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB26_28:                              # =>This Inner Loop Header: Depth=1
	movsd	(%rax,%rcx,8), %xmm4    # xmm4 = mem[0],zero
	subsd	%xmm3, %xmm4
	movapd	%xmm4, %xmm5
	mulsd	%xmm4, %xmm5
	mulsd	%xmm4, %xmm5
	addsd	%xmm5, %xmm0
	addq	$1, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB26_28
.LBB26_29:
	divsd	%xmm1, %xmm0
	movapd	%xmm2, %xmm1
	mulsd	%xmm2, %xmm1
	mulsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end26:
	.size	double_skew, .Lfunc_end26-double_skew
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function int_kurtosis
.LCPI27_0:
	.quad	-4609434218613702656    # double -3
	.text
	.globl	int_kurtosis
	.p2align	4, 0x90
	.type	int_kurtosis,@function
int_kurtosis:                           # @int_kurtosis
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $esi killed $esi def $rsi
	testl	%esi, %esi
	jle	.LBB27_1
# %bb.2:
	movl	%esi, %r8d
	cmpl	$8, %esi
	jae	.LBB27_4
# %bb.3:
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.LBB27_12
.LBB27_1:
	leal	-1(%rsi), %eax
	cvtsi2sd	%eax, %xmm2
	xorpd	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
	divsd	%xmm2, %xmm1
	jmp	.LBB27_37
.LBB27_4:
	movl	%r8d, %edx
	andl	$-8, %edx
	leaq	-8(%rdx), %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$1, %rcx
	movl	%ecx, %r9d
	andl	$3, %r9d
	cmpq	$24, %rax
	jae	.LBB27_6
# %bb.5:
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	pxor	%xmm1, %xmm1
	testq	%r9, %r9
	jne	.LBB27_9
	jmp	.LBB27_11
.LBB27_6:
	movq	%r9, %rax
	subq	%rcx, %rax
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	pxor	%xmm1, %xmm1
	.p2align	4, 0x90
.LBB27_7:                               # =>This Inner Loop Header: Depth=1
	movdqu	(%rdi,%rcx,4), %xmm2
	paddd	%xmm0, %xmm2
	movdqu	16(%rdi,%rcx,4), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	32(%rdi,%rcx,4), %xmm1
	movdqu	48(%rdi,%rcx,4), %xmm3
	movdqu	64(%rdi,%rcx,4), %xmm4
	paddd	%xmm1, %xmm4
	paddd	%xmm2, %xmm4
	movdqu	80(%rdi,%rcx,4), %xmm2
	paddd	%xmm3, %xmm2
	paddd	%xmm0, %xmm2
	movdqu	96(%rdi,%rcx,4), %xmm0
	paddd	%xmm4, %xmm0
	movdqu	112(%rdi,%rcx,4), %xmm1
	paddd	%xmm2, %xmm1
	addq	$32, %rcx
	addq	$4, %rax
	jne	.LBB27_7
# %bb.8:
	testq	%r9, %r9
	je	.LBB27_11
.LBB27_9:
	leaq	(%rdi,%rcx,4), %rax
	addq	$16, %rax
	negq	%r9
	.p2align	4, 0x90
.LBB27_10:                              # =>This Inner Loop Header: Depth=1
	movdqu	-16(%rax), %xmm2
	paddd	%xmm2, %xmm0
	movdqu	(%rax), %xmm2
	paddd	%xmm2, %xmm1
	addq	$32, %rax
	incq	%r9
	jne	.LBB27_10
.LBB27_11:
	paddd	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	paddd	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %eax
	cmpq	%r8, %rdx
	je	.LBB27_13
	.p2align	4, 0x90
.LBB27_12:                              # =>This Inner Loop Header: Depth=1
	addl	(%rdi,%rdx,4), %eax
	addq	$1, %rdx
	cmpq	%rdx, %r8
	jne	.LBB27_12
.LBB27_13:
	cltd
	idivl	%esi
	leaq	-1(%r8), %rcx
	movl	%r8d, %r9d
	andl	$3, %r9d
	cmpq	$3, %rcx
	jae	.LBB27_15
# %bb.14:
	pxor	%xmm1, %xmm1
	xorl	%r11d, %r11d
	testq	%r9, %r9
	jne	.LBB27_18
	jmp	.LBB27_20
.LBB27_15:
	movq	%r8, %r10
	subq	%r9, %r10
	pxor	%xmm1, %xmm1
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB27_16:                              # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%r11,4), %ecx
	movl	4(%rdi,%r11,4), %edx
	subl	%eax, %ecx
	imull	%ecx, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ecx, %xmm0
	subl	%eax, %edx
	imull	%edx, %edx
	xorps	%xmm2, %xmm2
	cvtsi2sd	%edx, %xmm2
	addsd	%xmm1, %xmm0
	addsd	%xmm0, %xmm2
	movl	8(%rdi,%r11,4), %ecx
	subl	%eax, %ecx
	imull	%ecx, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ecx, %xmm0
	movl	12(%rdi,%r11,4), %ecx
	subl	%eax, %ecx
	imull	%ecx, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ecx, %xmm1
	addsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	addq	$4, %r11
	cmpq	%r11, %r10
	jne	.LBB27_16
# %bb.17:
	testq	%r9, %r9
	je	.LBB27_20
.LBB27_18:
	leaq	(%rdi,%r11,4), %r10
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB27_19:                              # =>This Inner Loop Header: Depth=1
	movl	(%r10,%rdx,4), %ecx
	subl	%eax, %ecx
	imull	%ecx, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ecx, %xmm0
	addsd	%xmm0, %xmm1
	addq	$1, %rdx
	cmpq	%rdx, %r9
	jne	.LBB27_19
.LBB27_20:
	leal	-1(%rsi), %r9d
	cmpl	$8, %esi
	jae	.LBB27_22
# %bb.21:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	jmp	.LBB27_30
.LBB27_22:
	movl	%r8d, %ecx
	andl	$-8, %ecx
	leaq	-8(%rcx), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$1, %rdx
	movl	%edx, %r10d
	andl	$3, %r10d
	cmpq	$24, %rax
	jae	.LBB27_24
# %bb.23:
	pxor	%xmm0, %xmm0
	xorl	%edx, %edx
	pxor	%xmm2, %xmm2
	testq	%r10, %r10
	jne	.LBB27_27
	jmp	.LBB27_29
.LBB27_24:
	movq	%r10, %rax
	subq	%rdx, %rax
	pxor	%xmm0, %xmm0
	xorl	%edx, %edx
	pxor	%xmm2, %xmm2
	.p2align	4, 0x90
.LBB27_25:                              # =>This Inner Loop Header: Depth=1
	movdqu	(%rdi,%rdx,4), %xmm3
	paddd	%xmm0, %xmm3
	movdqu	16(%rdi,%rdx,4), %xmm0
	paddd	%xmm2, %xmm0
	movdqu	32(%rdi,%rdx,4), %xmm2
	movdqu	48(%rdi,%rdx,4), %xmm4
	movdqu	64(%rdi,%rdx,4), %xmm5
	paddd	%xmm2, %xmm5
	paddd	%xmm3, %xmm5
	movdqu	80(%rdi,%rdx,4), %xmm3
	paddd	%xmm4, %xmm3
	paddd	%xmm0, %xmm3
	movdqu	96(%rdi,%rdx,4), %xmm0
	paddd	%xmm5, %xmm0
	movdqu	112(%rdi,%rdx,4), %xmm2
	paddd	%xmm3, %xmm2
	addq	$32, %rdx
	addq	$4, %rax
	jne	.LBB27_25
# %bb.26:
	testq	%r10, %r10
	je	.LBB27_29
.LBB27_27:
	leaq	(%rdi,%rdx,4), %rax
	addq	$16, %rax
	negq	%r10
	.p2align	4, 0x90
.LBB27_28:                              # =>This Inner Loop Header: Depth=1
	movdqu	-16(%rax), %xmm3
	paddd	%xmm3, %xmm0
	movdqu	(%rax), %xmm3
	paddd	%xmm3, %xmm2
	addq	$32, %rax
	incq	%r10
	jne	.LBB27_28
.LBB27_29:
	paddd	%xmm2, %xmm0
	pshufd	$78, %xmm0, %xmm2       # xmm2 = xmm0[2,3,0,1]
	paddd	%xmm0, %xmm2
	pshufd	$229, %xmm2, %xmm0      # xmm0 = xmm2[1,1,2,3]
	paddd	%xmm2, %xmm0
	movd	%xmm0, %eax
	cmpq	%r8, %rcx
	je	.LBB27_31
	.p2align	4, 0x90
.LBB27_30:                              # =>This Inner Loop Header: Depth=1
	addl	(%rdi,%rcx,4), %eax
	addq	$1, %rcx
	cmpq	%rcx, %r8
	jne	.LBB27_30
.LBB27_31:
	xorps	%xmm2, %xmm2
	cvtsi2sd	%r9d, %xmm2
	cltd
	idivl	%esi
	movl	%r8d, %r9d
	andl	$1, %r9d
	cmpl	$1, %esi
	jne	.LBB27_33
# %bb.32:
	pxor	%xmm0, %xmm0
	xorl	%edx, %edx
	jmp	.LBB27_35
.LBB27_33:
	subq	%r9, %r8
	pxor	%xmm0, %xmm0
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB27_34:                              # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rdx,4), %ecx
	movl	4(%rdi,%rdx,4), %r10d
	subl	%eax, %ecx
	xorps	%xmm3, %xmm3
	cvtsi2sd	%ecx, %xmm3
	movapd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm4
	addsd	%xmm0, %xmm4
	subl	%eax, %r10d
	xorps	%xmm3, %xmm3
	cvtsi2sd	%r10d, %xmm3
	movapd	%xmm3, %xmm0
	mulsd	%xmm3, %xmm0
	mulsd	%xmm3, %xmm0
	mulsd	%xmm3, %xmm0
	addsd	%xmm4, %xmm0
	addq	$2, %rdx
	cmpq	%rdx, %r8
	jne	.LBB27_34
.LBB27_35:
	divsd	%xmm2, %xmm1
	testq	%r9, %r9
	je	.LBB27_37
# %bb.36:
	movl	(%rdi,%rdx,4), %ecx
	subl	%eax, %ecx
	xorps	%xmm2, %xmm2
	cvtsi2sd	%ecx, %xmm2
	movapd	%xmm2, %xmm3
	mulsd	%xmm2, %xmm3
	mulsd	%xmm2, %xmm3
	mulsd	%xmm2, %xmm3
	addsd	%xmm3, %xmm0
.LBB27_37:
	xorps	%xmm2, %xmm2
	cvtsi2sd	%esi, %xmm2
	divsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	addsd	.LCPI27_0(%rip), %xmm0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end27:
	.size	int_kurtosis, .Lfunc_end27-int_kurtosis
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function uint64_kurtosis
.LCPI28_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI28_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI28_2:
	.quad	-4609434218613702656    # double -3
	.text
	.globl	uint64_kurtosis
	.p2align	4, 0x90
	.type	uint64_kurtosis,@function
uint64_kurtosis:                        # @uint64_kurtosis
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	.cfi_offset %rbx, -24
                                        # kill: def $esi killed $esi def $rsi
	testl	%esi, %esi
	jle	.LBB28_1
# %bb.2:
	movl	%esi, %r9d
	cmpl	$4, %esi
	jae	.LBB28_4
# %bb.3:
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.LBB28_12
.LBB28_1:
	leal	-1(%rsi), %eax
	cvtsi2sd	%eax, %xmm2
	xorpd	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
	divsd	%xmm2, %xmm1
	jmp	.LBB28_37
.LBB28_4:
	movl	%r9d, %edx
	andl	$-4, %edx
	leaq	-4(%rdx), %rax
	movq	%rax, %rcx
	shrq	$2, %rcx
	addq	$1, %rcx
	movl	%ecx, %r8d
	andl	$3, %r8d
	cmpq	$12, %rax
	jae	.LBB28_6
# %bb.5:
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	pxor	%xmm1, %xmm1
	testq	%r8, %r8
	jne	.LBB28_9
	jmp	.LBB28_11
.LBB28_6:
	movq	%r8, %rax
	subq	%rcx, %rax
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	pxor	%xmm1, %xmm1
	.p2align	4, 0x90
.LBB28_7:                               # =>This Inner Loop Header: Depth=1
	movdqu	(%rdi,%rcx,8), %xmm2
	paddq	%xmm0, %xmm2
	movdqu	16(%rdi,%rcx,8), %xmm0
	paddq	%xmm1, %xmm0
	movdqu	32(%rdi,%rcx,8), %xmm1
	movdqu	48(%rdi,%rcx,8), %xmm3
	movdqu	64(%rdi,%rcx,8), %xmm4
	paddq	%xmm1, %xmm4
	paddq	%xmm2, %xmm4
	movdqu	80(%rdi,%rcx,8), %xmm2
	paddq	%xmm3, %xmm2
	paddq	%xmm0, %xmm2
	movdqu	96(%rdi,%rcx,8), %xmm0
	paddq	%xmm4, %xmm0
	movdqu	112(%rdi,%rcx,8), %xmm1
	paddq	%xmm2, %xmm1
	addq	$16, %rcx
	addq	$4, %rax
	jne	.LBB28_7
# %bb.8:
	testq	%r8, %r8
	je	.LBB28_11
.LBB28_9:
	leaq	(%rdi,%rcx,8), %rax
	addq	$16, %rax
	negq	%r8
	.p2align	4, 0x90
.LBB28_10:                              # =>This Inner Loop Header: Depth=1
	movdqu	-16(%rax), %xmm2
	paddq	%xmm2, %xmm0
	movdqu	(%rax), %xmm2
	paddq	%xmm2, %xmm1
	addq	$32, %rax
	incq	%r8
	jne	.LBB28_10
.LBB28_11:
	paddq	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	paddq	%xmm0, %xmm1
	movq	%xmm1, %rax
	cmpq	%r9, %rdx
	je	.LBB28_13
	.p2align	4, 0x90
.LBB28_12:                              # =>This Inner Loop Header: Depth=1
	addq	(%rdi,%rdx,8), %rax
	addq	$1, %rdx
	cmpq	%rdx, %r9
	jne	.LBB28_12
.LBB28_13:
	movslq	%esi, %r8
	xorl	%edx, %edx
	divq	%r8
	leaq	-1(%r9), %rcx
	movl	%r9d, %r10d
	andl	$3, %r10d
	cmpq	$3, %rcx
	jae	.LBB28_15
# %bb.14:
	pxor	%xmm1, %xmm1
	xorl	%edx, %edx
	testq	%r10, %r10
	jne	.LBB28_18
	jmp	.LBB28_20
.LBB28_15:
	movq	%r9, %r11
	subq	%r10, %r11
	pxor	%xmm1, %xmm1
	xorl	%edx, %edx
	movdqa	.LCPI28_0(%rip), %xmm0  # xmm0 = [1127219200,1160773632,0,0]
	movapd	.LCPI28_1(%rip), %xmm2  # xmm2 = [4.503599627370496E+15,1.9342813113834067E+25]
	.p2align	4, 0x90
.LBB28_16:                              # =>This Inner Loop Header: Depth=1
	movq	(%rdi,%rdx,8), %rcx
	movq	8(%rdi,%rdx,8), %rbx
	subq	%rax, %rcx
	imulq	%rcx, %rcx
	movq	%rcx, %xmm3
	punpckldq	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	subpd	%xmm2, %xmm3
	movapd	%xmm3, %xmm4
	unpckhpd	%xmm3, %xmm4    # xmm4 = xmm4[1],xmm3[1]
	addsd	%xmm3, %xmm4
	addsd	%xmm1, %xmm4
	subq	%rax, %rbx
	imulq	%rbx, %rbx
	movq	%rbx, %xmm1
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	subpd	%xmm2, %xmm1
	movapd	%xmm1, %xmm3
	unpckhpd	%xmm1, %xmm3    # xmm3 = xmm3[1],xmm1[1]
	addsd	%xmm1, %xmm3
	addsd	%xmm4, %xmm3
	movq	16(%rdi,%rdx,8), %rcx
	subq	%rax, %rcx
	imulq	%rcx, %rcx
	movq	%rcx, %xmm1
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	subpd	%xmm2, %xmm1
	movapd	%xmm1, %xmm4
	unpckhpd	%xmm1, %xmm4    # xmm4 = xmm4[1],xmm1[1]
	addsd	%xmm1, %xmm4
	addsd	%xmm3, %xmm4
	movq	24(%rdi,%rdx,8), %rcx
	subq	%rax, %rcx
	imulq	%rcx, %rcx
	movq	%rcx, %xmm3
	punpckldq	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	subpd	%xmm2, %xmm3
	movapd	%xmm3, %xmm1
	unpckhpd	%xmm3, %xmm1    # xmm1 = xmm1[1],xmm3[1]
	addsd	%xmm3, %xmm1
	addsd	%xmm4, %xmm1
	addq	$4, %rdx
	cmpq	%rdx, %r11
	jne	.LBB28_16
# %bb.17:
	testq	%r10, %r10
	je	.LBB28_20
.LBB28_18:
	leaq	(%rdi,%rdx,8), %rcx
	xorl	%edx, %edx
	movdqa	.LCPI28_0(%rip), %xmm0  # xmm0 = [1127219200,1160773632,0,0]
	movapd	.LCPI28_1(%rip), %xmm2  # xmm2 = [4.503599627370496E+15,1.9342813113834067E+25]
	.p2align	4, 0x90
.LBB28_19:                              # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdx,8), %rbx
	subq	%rax, %rbx
	imulq	%rbx, %rbx
	movq	%rbx, %xmm3
	punpckldq	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	subpd	%xmm2, %xmm3
	movapd	%xmm3, %xmm4
	unpckhpd	%xmm3, %xmm4    # xmm4 = xmm4[1],xmm3[1]
	addsd	%xmm3, %xmm4
	addsd	%xmm4, %xmm1
	addq	$1, %rdx
	cmpq	%rdx, %r10
	jne	.LBB28_19
.LBB28_20:
	leal	-1(%rsi), %r10d
	cmpl	$4, %esi
	jae	.LBB28_22
# %bb.21:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	jmp	.LBB28_30
.LBB28_22:
	movl	%r9d, %ecx
	andl	$-4, %ecx
	leaq	-4(%rcx), %rax
	movq	%rax, %rdx
	shrq	$2, %rdx
	addq	$1, %rdx
	movl	%edx, %r11d
	andl	$3, %r11d
	cmpq	$12, %rax
	jae	.LBB28_24
# %bb.23:
	pxor	%xmm0, %xmm0
	xorl	%edx, %edx
	xorpd	%xmm2, %xmm2
	testq	%r11, %r11
	jne	.LBB28_27
	jmp	.LBB28_29
.LBB28_24:
	movq	%r11, %rax
	subq	%rdx, %rax
	pxor	%xmm0, %xmm0
	xorl	%edx, %edx
	xorpd	%xmm2, %xmm2
	.p2align	4, 0x90
.LBB28_25:                              # =>This Inner Loop Header: Depth=1
	movdqu	(%rdi,%rdx,8), %xmm3
	paddq	%xmm0, %xmm3
	movdqu	16(%rdi,%rdx,8), %xmm0
	paddq	%xmm2, %xmm0
	movdqu	32(%rdi,%rdx,8), %xmm2
	movdqu	48(%rdi,%rdx,8), %xmm4
	movdqu	64(%rdi,%rdx,8), %xmm5
	paddq	%xmm2, %xmm5
	paddq	%xmm3, %xmm5
	movdqu	80(%rdi,%rdx,8), %xmm3
	paddq	%xmm4, %xmm3
	paddq	%xmm0, %xmm3
	movdqu	96(%rdi,%rdx,8), %xmm0
	paddq	%xmm5, %xmm0
	movdqu	112(%rdi,%rdx,8), %xmm2
	paddq	%xmm3, %xmm2
	addq	$16, %rdx
	addq	$4, %rax
	jne	.LBB28_25
# %bb.26:
	testq	%r11, %r11
	je	.LBB28_29
.LBB28_27:
	leaq	(%rdi,%rdx,8), %rax
	addq	$16, %rax
	negq	%r11
	.p2align	4, 0x90
.LBB28_28:                              # =>This Inner Loop Header: Depth=1
	movdqu	-16(%rax), %xmm3
	paddq	%xmm3, %xmm0
	movdqu	(%rax), %xmm3
	paddq	%xmm3, %xmm2
	addq	$32, %rax
	incq	%r11
	jne	.LBB28_28
.LBB28_29:
	paddq	%xmm2, %xmm0
	pshufd	$78, %xmm0, %xmm2       # xmm2 = xmm0[2,3,0,1]
	paddq	%xmm0, %xmm2
	movq	%xmm2, %rax
	cmpq	%r9, %rcx
	je	.LBB28_31
	.p2align	4, 0x90
.LBB28_30:                              # =>This Inner Loop Header: Depth=1
	addq	(%rdi,%rcx,8), %rax
	addq	$1, %rcx
	cmpq	%rcx, %r9
	jne	.LBB28_30
.LBB28_31:
	xorps	%xmm2, %xmm2
	cvtsi2sd	%r10d, %xmm2
	xorl	%edx, %edx
	divq	%r8
	movl	%r9d, %r8d
	andl	$1, %r8d
	cmpl	$1, %esi
	jne	.LBB28_33
# %bb.32:
	pxor	%xmm0, %xmm0
	xorl	%edx, %edx
	jmp	.LBB28_35
.LBB28_33:
	subq	%r8, %r9
	pxor	%xmm0, %xmm0
	xorl	%edx, %edx
	movdqa	.LCPI28_0(%rip), %xmm3  # xmm3 = [1127219200,1160773632,0,0]
	movapd	.LCPI28_1(%rip), %xmm4  # xmm4 = [4.503599627370496E+15,1.9342813113834067E+25]
	.p2align	4, 0x90
.LBB28_34:                              # =>This Inner Loop Header: Depth=1
	movq	(%rdi,%rdx,8), %rbx
	movq	8(%rdi,%rdx,8), %rcx
	subq	%rax, %rbx
	movq	%rbx, %xmm5
	punpckldq	%xmm3, %xmm5    # xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1]
	subpd	%xmm4, %xmm5
	movapd	%xmm5, %xmm6
	unpckhpd	%xmm5, %xmm6    # xmm6 = xmm6[1],xmm5[1]
	addsd	%xmm5, %xmm6
	movapd	%xmm6, %xmm5
	mulsd	%xmm6, %xmm5
	mulsd	%xmm6, %xmm5
	mulsd	%xmm6, %xmm5
	addsd	%xmm0, %xmm5
	subq	%rax, %rcx
	movq	%rcx, %xmm0
	punpckldq	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1]
	subpd	%xmm4, %xmm0
	movapd	%xmm0, %xmm6
	unpckhpd	%xmm0, %xmm6    # xmm6 = xmm6[1],xmm0[1]
	addsd	%xmm0, %xmm6
	movapd	%xmm6, %xmm0
	mulsd	%xmm6, %xmm0
	mulsd	%xmm6, %xmm0
	mulsd	%xmm6, %xmm0
	addsd	%xmm5, %xmm0
	addq	$2, %rdx
	cmpq	%rdx, %r9
	jne	.LBB28_34
.LBB28_35:
	divsd	%xmm2, %xmm1
	testq	%r8, %r8
	je	.LBB28_37
# %bb.36:
	movq	(%rdi,%rdx,8), %rcx
	subq	%rax, %rcx
	movq	%rcx, %xmm2
	punpckldq	.LCPI28_0(%rip), %xmm2 # xmm2 = xmm2[0],mem[0],xmm2[1],mem[1]
	subpd	.LCPI28_1(%rip), %xmm2
	movapd	%xmm2, %xmm3
	unpckhpd	%xmm2, %xmm3    # xmm3 = xmm3[1],xmm2[1]
	addsd	%xmm2, %xmm3
	movapd	%xmm3, %xmm2
	mulsd	%xmm3, %xmm2
	mulsd	%xmm3, %xmm2
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm0
.LBB28_37:
	xorps	%xmm2, %xmm2
	cvtsi2sd	%esi, %xmm2
	divsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	addsd	.LCPI28_2(%rip), %xmm0
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end28:
	.size	uint64_kurtosis, .Lfunc_end28-uint64_kurtosis
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function double_kurtosis
.LCPI29_0:
	.quad	-4609434218613702656    # double -3
	.text
	.globl	double_kurtosis
	.p2align	4, 0x90
	.type	double_kurtosis,@function
double_kurtosis:                        # @double_kurtosis
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $esi killed $esi def $rsi
	testl	%esi, %esi
	jle	.LBB29_29
# %bb.1:
	movl	%esi, %r9d
	leaq	-1(%r9), %r8
	movl	%r9d, %edx
	andl	$7, %edx
	cmpq	$7, %r8
	jae	.LBB29_3
# %bb.2:
	xorpd	%xmm0, %xmm0
	xorl	%eax, %eax
	testq	%rdx, %rdx
	jne	.LBB29_6
	jmp	.LBB29_8
.LBB29_29:
	leal	-1(%rsi), %eax
	cvtsi2sd	%eax, %xmm1
	xorpd	%xmm0, %xmm0
	xorpd	%xmm2, %xmm2
	divsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsi2sd	%esi, %xmm1
	jmp	.LBB29_28
.LBB29_3:
	movq	%r9, %rcx
	subq	%rdx, %rcx
	xorpd	%xmm0, %xmm0
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB29_4:                               # =>This Inner Loop Header: Depth=1
	addsd	(%rdi,%rax,8), %xmm0
	addsd	8(%rdi,%rax,8), %xmm0
	addsd	16(%rdi,%rax,8), %xmm0
	addsd	24(%rdi,%rax,8), %xmm0
	addsd	32(%rdi,%rax,8), %xmm0
	addsd	40(%rdi,%rax,8), %xmm0
	addsd	48(%rdi,%rax,8), %xmm0
	addsd	56(%rdi,%rax,8), %xmm0
	addq	$8, %rax
	cmpq	%rax, %rcx
	jne	.LBB29_4
# %bb.5:
	testq	%rdx, %rdx
	je	.LBB29_8
.LBB29_6:
	leaq	(%rdi,%rax,8), %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB29_7:                               # =>This Inner Loop Header: Depth=1
	addsd	(%rax,%rcx,8), %xmm0
	addq	$1, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB29_7
.LBB29_8:
	cvtsi2sd	%esi, %xmm1
	divsd	%xmm1, %xmm0
	movl	%r9d, %edx
	andl	$3, %edx
	cmpq	$3, %r8
	jae	.LBB29_10
# %bb.9:
	xorpd	%xmm2, %xmm2
	xorl	%ecx, %ecx
	testq	%rdx, %rdx
	jne	.LBB29_13
	jmp	.LBB29_15
.LBB29_10:
	movq	%r9, %rax
	subq	%rdx, %rax
	xorpd	%xmm2, %xmm2
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB29_11:                              # =>This Inner Loop Header: Depth=1
	movsd	(%rdi,%rcx,8), %xmm3    # xmm3 = mem[0],zero
	movsd	8(%rdi,%rcx,8), %xmm4   # xmm4 = mem[0],zero
	subsd	%xmm0, %xmm3
	mulsd	%xmm3, %xmm3
	addsd	%xmm2, %xmm3
	subsd	%xmm0, %xmm4
	mulsd	%xmm4, %xmm4
	addsd	%xmm3, %xmm4
	movsd	16(%rdi,%rcx,8), %xmm3  # xmm3 = mem[0],zero
	subsd	%xmm0, %xmm3
	mulsd	%xmm3, %xmm3
	addsd	%xmm4, %xmm3
	movsd	24(%rdi,%rcx,8), %xmm2  # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm2
	addsd	%xmm3, %xmm2
	addq	$4, %rcx
	cmpq	%rcx, %rax
	jne	.LBB29_11
# %bb.12:
	testq	%rdx, %rdx
	je	.LBB29_15
.LBB29_13:
	leaq	(%rdi,%rcx,8), %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB29_14:                              # =>This Inner Loop Header: Depth=1
	movsd	(%rax,%rcx,8), %xmm3    # xmm3 = mem[0],zero
	subsd	%xmm0, %xmm3
	mulsd	%xmm3, %xmm3
	addsd	%xmm3, %xmm2
	addq	$1, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB29_14
.LBB29_15:
	movl	%r9d, %edx
	andl	$7, %edx
	cmpq	$7, %r8
	jae	.LBB29_17
# %bb.16:
	xorpd	%xmm3, %xmm3
	xorl	%ecx, %ecx
	jmp	.LBB29_19
.LBB29_17:
	movq	%r9, %rax
	subq	%rdx, %rax
	xorpd	%xmm3, %xmm3
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB29_18:                              # =>This Inner Loop Header: Depth=1
	addsd	(%rdi,%rcx,8), %xmm3
	addsd	8(%rdi,%rcx,8), %xmm3
	addsd	16(%rdi,%rcx,8), %xmm3
	addsd	24(%rdi,%rcx,8), %xmm3
	addsd	32(%rdi,%rcx,8), %xmm3
	addsd	40(%rdi,%rcx,8), %xmm3
	addsd	48(%rdi,%rcx,8), %xmm3
	addsd	56(%rdi,%rcx,8), %xmm3
	addq	$8, %rcx
	cmpq	%rcx, %rax
	jne	.LBB29_18
.LBB29_19:
	leal	-1(%rsi), %r8d
	testq	%rdx, %rdx
	je	.LBB29_22
# %bb.20:
	leaq	(%rdi,%rcx,8), %rcx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB29_21:                              # =>This Inner Loop Header: Depth=1
	addsd	(%rcx,%rax,8), %xmm3
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.LBB29_21
.LBB29_22:
	xorps	%xmm4, %xmm4
	cvtsi2sd	%r8d, %xmm4
	divsd	%xmm1, %xmm3
	movl	%r9d, %ecx
	andl	$1, %ecx
	cmpl	$1, %esi
	jne	.LBB29_24
# %bb.23:
	xorpd	%xmm0, %xmm0
	xorl	%edx, %edx
	jmp	.LBB29_26
.LBB29_24:
	subq	%rcx, %r9
	xorpd	%xmm0, %xmm0
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB29_25:                              # =>This Inner Loop Header: Depth=1
	movsd	(%rdi,%rdx,8), %xmm5    # xmm5 = mem[0],zero
	movsd	8(%rdi,%rdx,8), %xmm6   # xmm6 = mem[0],zero
	subsd	%xmm3, %xmm5
	movapd	%xmm5, %xmm7
	mulsd	%xmm5, %xmm7
	mulsd	%xmm5, %xmm7
	mulsd	%xmm5, %xmm7
	addsd	%xmm0, %xmm7
	subsd	%xmm3, %xmm6
	movapd	%xmm6, %xmm0
	mulsd	%xmm6, %xmm0
	mulsd	%xmm6, %xmm0
	mulsd	%xmm6, %xmm0
	addsd	%xmm7, %xmm0
	addq	$2, %rdx
	cmpq	%rdx, %r9
	jne	.LBB29_25
.LBB29_26:
	divsd	%xmm4, %xmm2
	testq	%rcx, %rcx
	je	.LBB29_28
# %bb.27:
	movsd	(%rdi,%rdx,8), %xmm4    # xmm4 = mem[0],zero
	subsd	%xmm3, %xmm4
	movapd	%xmm4, %xmm3
	mulsd	%xmm4, %xmm3
	mulsd	%xmm4, %xmm3
	mulsd	%xmm4, %xmm3
	addsd	%xmm3, %xmm0
.LBB29_28:
	divsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm2
	divsd	%xmm2, %xmm0
	addsd	.LCPI29_0(%rip), %xmm0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end29:
	.size	double_kurtosis, .Lfunc_end29-double_kurtosis
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function int_bootstrap_stderr
.LCPI30_0:
	.quad	4641240890982006784     # double 200
.LCPI30_1:
	.quad	4641205706609917952     # double 199
	.text
	.globl	int_bootstrap_stderr
	.p2align	4, 0x90
	.type	int_bootstrap_stderr,@function
int_bootstrap_stderr:                   # @int_bootstrap_stderr
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
	subq	$40, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%esi, %ebx
	movq	%rdi, %r13
	movslq	%esi, %r14
	leaq	(,%r14,4), %rdi
	callq	malloc
	movq	%rax, %r12
	movl	$1600, %edi             # imm = 0x640
	callq	malloc
	movl	%r14d, %r15d
	xorpd	%xmm2, %xmm2
	xorl	%ecx, %ecx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB30_1
	.p2align	4, 0x90
.LBB30_4:                               #   in Loop: Header=BB30_1 Depth=1
	movq	%r12, %rdi
	movl	%ebx, %esi
	callq	*-56(%rbp)              # 8-byte Folded Reload
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movsd	%xmm0, (%rax,%rcx,8)
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm0, %xmm2
	addq	$1, %rcx
	cmpq	$200, %rcx
	je	.LBB30_5
.LBB30_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_3 Depth 2
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movsd	%xmm2, -48(%rbp)        # 8-byte Spill
	testl	%ebx, %ebx
	jle	.LBB30_4
# %bb.2:                                #   in Loop: Header=BB30_1 Depth=1
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB30_3:                               #   Parent Loop BB30_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	rand
	cltd
	idivl	%ebx
	movslq	%edx, %rax
	movl	(%r13,%rax,4), %eax
	movl	%eax, (%r12,%r14,4)
	addq	$1, %r14
	cmpq	%r14, %r15
	jne	.LBB30_3
	jmp	.LBB30_4
.LBB30_5:
	divsd	.LCPI30_0(%rip), %xmm2
	xorpd	%xmm3, %xmm3
	movl	$4, %ecx
	.p2align	4, 0x90
.LBB30_6:                               # =>This Inner Loop Header: Depth=1
	movsd	-32(%rax,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movsd	-24(%rax,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	subsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm3, %xmm0
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	movsd	-16(%rax,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	subsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	-8(%rax,%rcx,8), %xmm1  # xmm1 = mem[0],zero
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	movsd	(%rax,%rcx,8), %xmm3    # xmm3 = mem[0],zero
	subsd	%xmm2, %xmm3
	mulsd	%xmm3, %xmm3
	addsd	%xmm1, %xmm3
	addq	$5, %rcx
	cmpq	$204, %rcx
	jne	.LBB30_6
# %bb.7:
	divsd	.LCPI30_1(%rip), %xmm3
	movsd	%xmm3, -48(%rbp)        # 8-byte Spill
	movq	%rax, %rbx
	movq	%r12, %rdi
	callq	free
	movq	%rbx, %rdi
	callq	free
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	sqrtsd	%xmm0, %xmm0
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end30:
	.size	int_bootstrap_stderr, .Lfunc_end30-int_bootstrap_stderr
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function uint64_bootstrap_stderr
.LCPI31_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI31_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI31_2:
	.quad	4641240890982006784     # double 200
.LCPI31_3:
	.quad	4641205706609917952     # double 199
	.text
	.globl	uint64_bootstrap_stderr
	.p2align	4, 0x90
	.type	uint64_bootstrap_stderr,@function
uint64_bootstrap_stderr:                # @uint64_bootstrap_stderr
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
	subq	$40, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%esi, %ebx
	movq	%rdi, %r13
	movslq	%esi, %r14
	leaq	(,%r14,8), %rdi
	callq	malloc
	movq	%rax, %r12
	movl	$1600, %edi             # imm = 0x640
	callq	malloc
	movl	%r14d, %r15d
	xorpd	%xmm2, %xmm2
	xorl	%ecx, %ecx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB31_1
	.p2align	4, 0x90
.LBB31_4:                               #   in Loop: Header=BB31_1 Depth=1
	movq	%r12, %rdi
	movl	%ebx, %esi
	callq	*-56(%rbp)              # 8-byte Folded Reload
	movq	%rax, %xmm0
	punpckldq	.LCPI31_0(%rip), %xmm0 # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI31_1(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movsd	%xmm1, (%rax,%rcx,8)
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm1, %xmm2
	addq	$1, %rcx
	cmpq	$200, %rcx
	je	.LBB31_5
.LBB31_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_3 Depth 2
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movsd	%xmm2, -48(%rbp)        # 8-byte Spill
	testl	%ebx, %ebx
	jle	.LBB31_4
# %bb.2:                                #   in Loop: Header=BB31_1 Depth=1
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB31_3:                               #   Parent Loop BB31_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	rand
	cltd
	idivl	%ebx
	movslq	%edx, %rax
	movq	(%r13,%rax,8), %rax
	movq	%rax, (%r12,%r14,8)
	addq	$1, %r14
	cmpq	%r14, %r15
	jne	.LBB31_3
	jmp	.LBB31_4
.LBB31_5:
	divsd	.LCPI31_2(%rip), %xmm2
	xorpd	%xmm3, %xmm3
	movl	$4, %ecx
	.p2align	4, 0x90
.LBB31_6:                               # =>This Inner Loop Header: Depth=1
	movsd	-32(%rax,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movsd	-24(%rax,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	subsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm3, %xmm0
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	movsd	-16(%rax,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	subsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	-8(%rax,%rcx,8), %xmm1  # xmm1 = mem[0],zero
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	movsd	(%rax,%rcx,8), %xmm3    # xmm3 = mem[0],zero
	subsd	%xmm2, %xmm3
	mulsd	%xmm3, %xmm3
	addsd	%xmm1, %xmm3
	addq	$5, %rcx
	cmpq	$204, %rcx
	jne	.LBB31_6
# %bb.7:
	movq	%rax, %rbx
	movq	%r12, %rdi
	movsd	%xmm3, -48(%rbp)        # 8-byte Spill
	callq	free
	movq	%rbx, %rdi
	callq	free
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	.LCPI31_3(%rip), %xmm0
	sqrtsd	%xmm0, %xmm0
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end31:
	.size	uint64_bootstrap_stderr, .Lfunc_end31-uint64_bootstrap_stderr
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function double_bootstrap_stderr
.LCPI32_0:
	.quad	4641240890982006784     # double 200
.LCPI32_1:
	.quad	4641205706609917952     # double 199
	.text
	.globl	double_bootstrap_stderr
	.p2align	4, 0x90
	.type	double_bootstrap_stderr,@function
double_bootstrap_stderr:                # @double_bootstrap_stderr
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
	subq	$40, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%esi, %ebx
	movq	%rdi, %r13
	movslq	%esi, %r14
	leaq	(,%r14,8), %rdi
	callq	malloc
	movq	%rax, %r12
	movl	$1600, %edi             # imm = 0x640
	callq	malloc
	movl	%r14d, %r15d
	xorpd	%xmm2, %xmm2
	xorl	%ecx, %ecx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB32_1
	.p2align	4, 0x90
.LBB32_4:                               #   in Loop: Header=BB32_1 Depth=1
	movq	%r12, %rdi
	movl	%ebx, %esi
	callq	*-56(%rbp)              # 8-byte Folded Reload
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movsd	%xmm0, (%rax,%rcx,8)
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm0, %xmm2
	addq	$1, %rcx
	cmpq	$200, %rcx
	je	.LBB32_5
.LBB32_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_3 Depth 2
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movsd	%xmm2, -48(%rbp)        # 8-byte Spill
	testl	%ebx, %ebx
	jle	.LBB32_4
# %bb.2:                                #   in Loop: Header=BB32_1 Depth=1
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB32_3:                               #   Parent Loop BB32_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	rand
	cltd
	idivl	%ebx
	movslq	%edx, %rax
	movq	(%r13,%rax,8), %rax
	movq	%rax, (%r12,%r14,8)
	addq	$1, %r14
	cmpq	%r14, %r15
	jne	.LBB32_3
	jmp	.LBB32_4
.LBB32_5:
	divsd	.LCPI32_0(%rip), %xmm2
	xorpd	%xmm3, %xmm3
	movl	$4, %ecx
	.p2align	4, 0x90
.LBB32_6:                               # =>This Inner Loop Header: Depth=1
	movsd	-32(%rax,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movsd	-24(%rax,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	subsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm3, %xmm0
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	movsd	-16(%rax,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	subsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	-8(%rax,%rcx,8), %xmm1  # xmm1 = mem[0],zero
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	movsd	(%rax,%rcx,8), %xmm3    # xmm3 = mem[0],zero
	subsd	%xmm2, %xmm3
	mulsd	%xmm3, %xmm3
	addsd	%xmm1, %xmm3
	addq	$5, %rcx
	cmpq	$204, %rcx
	jne	.LBB32_6
# %bb.7:
	divsd	.LCPI32_1(%rip), %xmm3
	movsd	%xmm3, -48(%rbp)        # 8-byte Spill
	movq	%rax, %rbx
	movq	%r12, %rdi
	callq	free
	movq	%rbx, %rdi
	callq	free
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	sqrtsd	%xmm0, %xmm0
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end32:
	.size	double_bootstrap_stderr, .Lfunc_end32-double_bootstrap_stderr
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function regression
.LCPI33_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	regression
	.p2align	4, 0x90
	.type	regression,@function
regression:                             # @regression
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
	movq	32(%rbp), %r14
	movq	24(%rbp), %r10
	movq	16(%rbp), %r11
	movl	%ecx, %ebx
	testl	%ecx, %ecx
	jle	.LBB33_1
# %bb.2:
	xorpd	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
	xorl	%eax, %eax
	movsd	.LCPI33_0(%rip), %xmm2  # xmm2 = mem[0],zero
	jmp	.LBB33_3
	.p2align	4, 0x90
.LBB33_5:                               #   in Loop: Header=BB33_3 Depth=1
	movapd	%xmm2, %xmm4
	divsd	%xmm3, %xmm4
	addsd	%xmm4, %xmm1
	unpcklpd	%xmm4, %xmm4    # xmm4 = xmm4[0,0]
	movsd	(%rdi,%rax,8), %xmm3    # xmm3 = mem[0],zero
	movhpd	(%rsi,%rax,8), %xmm3    # xmm3 = xmm3[0],mem[0]
	mulpd	%xmm4, %xmm3
	addpd	%xmm3, %xmm0
	addq	$1, %rax
	cmpq	%rax, %rbx
	je	.LBB33_6
.LBB33_3:                               # =>This Inner Loop Header: Depth=1
	movapd	%xmm2, %xmm3
	testq	%rdx, %rdx
	je	.LBB33_5
# %bb.4:                                #   in Loop: Header=BB33_3 Depth=1
	movsd	(%rdx,%rax,8), %xmm3    # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm3
	jmp	.LBB33_5
.LBB33_6:
	movq	$0, (%r9)
	testl	%ecx, %ecx
	jle	.LBB33_7
# %bb.8:
	movapd	%xmm0, %xmm4
	divsd	%xmm1, %xmm4
	xorpd	%xmm3, %xmm3
	xorl	%eax, %eax
	movsd	.LCPI33_0(%rip), %xmm8  # xmm8 = mem[0],zero
	xorpd	%xmm2, %xmm2
	jmp	.LBB33_9
	.p2align	4, 0x90
.LBB33_11:                              #   in Loop: Header=BB33_9 Depth=1
	movsd	(%rdx,%rax,8), %xmm7    # xmm7 = mem[0],zero
	divsd	%xmm7, %xmm6
	movapd	%xmm6, %xmm5
	mulsd	%xmm6, %xmm5
.LBB33_12:                              #   in Loop: Header=BB33_9 Depth=1
	addsd	%xmm5, %xmm2
	mulsd	(%rsi,%rax,8), %xmm6
	divsd	%xmm7, %xmm6
	addsd	%xmm6, %xmm3
	movsd	%xmm3, (%r9)
	addq	$1, %rax
	cmpq	%rax, %rbx
	je	.LBB33_13
.LBB33_9:                               # =>This Inner Loop Header: Depth=1
	movsd	(%rdi,%rax,8), %xmm6    # xmm6 = mem[0],zero
	subsd	%xmm4, %xmm6
	testq	%rdx, %rdx
	jne	.LBB33_11
# %bb.10:                               #   in Loop: Header=BB33_9 Depth=1
	movapd	%xmm6, %xmm5
	mulsd	%xmm6, %xmm5
	movapd	%xmm8, %xmm7
	jmp	.LBB33_12
.LBB33_1:
	movq	$0, (%r9)
	xorpd	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
.LBB33_7:
	xorpd	%xmm3, %xmm3
	xorpd	%xmm2, %xmm2
.LBB33_13:
	divsd	%xmm2, %xmm3
	movsd	%xmm3, (%r9)
	mulsd	%xmm0, %xmm3
	movapd	%xmm0, %xmm4
	unpckhpd	%xmm0, %xmm4    # xmm4 = xmm4[1],xmm0[1]
	subsd	%xmm3, %xmm4
	divsd	%xmm1, %xmm4
	movsd	%xmm4, (%r8)
	mulsd	%xmm0, %xmm0
	movapd	%xmm1, %xmm3
	mulsd	%xmm2, %xmm3
	divsd	%xmm3, %xmm0
	movsd	.LCPI33_0(%rip), %xmm3  # xmm3 = mem[0],zero
	addsd	%xmm3, %xmm0
	divsd	%xmm1, %xmm0
	sqrtsd	%xmm0, %xmm0
	movsd	%xmm0, (%r11)
	movapd	%xmm3, %xmm0
	divsd	%xmm2, %xmm0
	sqrtsd	%xmm0, %xmm0
	movsd	%xmm0, (%r10)
	movq	$0, (%r14)
	xorpd	%xmm0, %xmm0
	testl	%ecx, %ecx
	jle	.LBB33_18
# %bb.14:
	xorl	%eax, %eax
	jmp	.LBB33_15
	.p2align	4, 0x90
.LBB33_17:                              #   in Loop: Header=BB33_15 Depth=1
	divsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%r14)
	addq	$1, %rax
	cmpq	%rax, %rbx
	je	.LBB33_18
.LBB33_15:                              # =>This Inner Loop Header: Depth=1
	movsd	(%rsi,%rax,8), %xmm1    # xmm1 = mem[0],zero
	movsd	(%r9), %xmm2            # xmm2 = mem[0],zero
	mulsd	(%rdi,%rax,8), %xmm2
	addsd	(%r8), %xmm2
	subsd	%xmm2, %xmm1
	movapd	%xmm3, %xmm2
	testq	%rdx, %rdx
	je	.LBB33_17
# %bb.16:                               #   in Loop: Header=BB33_15 Depth=1
	movsd	(%rdx,%rax,8), %xmm2    # xmm2 = mem[0],zero
	jmp	.LBB33_17
.LBB33_18:
	testq	%rdx, %rdx
	jne	.LBB33_20
# %bb.19:
	addl	$-2, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ecx, %xmm1
	divsd	%xmm1, %xmm0
	sqrtsd	%xmm0, %xmm0
	mulsd	(%r11), %xmm0
	movsd	%xmm0, (%r11)
	movsd	(%r14), %xmm0           # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	sqrtsd	%xmm0, %xmm0
	mulsd	(%r10), %xmm0
	movsd	%xmm0, (%r10)
.LBB33_20:
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end33:
	.size	regression, .Lfunc_end33-regression
	.cfi_endproc
                                        # -- End function

	.ident	"FreeBSD clang version 9.0.1 (git@github.com:llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05) (based on LLVM 9.0.1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym int_compare
	.addrsig_sym uint64_compare
	.addrsig_sym double_compare
