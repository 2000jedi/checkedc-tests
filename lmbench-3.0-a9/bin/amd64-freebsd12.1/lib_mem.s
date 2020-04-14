	.text
	.file	"lib_mem.c"
	.globl	mem_benchmark_0         # -- Begin function mem_benchmark_0
	.p2align	4, 0x90
	.type	mem_benchmark_0,@function
mem_benchmark_0:                        # @mem_benchmark_0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	cmpb	$1, mem_benchmark_rerun(%rip)
	jne	.LBB0_3
# %bb.1:
	movq	mem_benchmark_0.addr_save(%rip), %rax
	cmpq	(%rsi), %rax
	je	.LBB0_2
.LBB0_3:
	leaq	16(%rsi), %rax
	jmp	.LBB0_4
.LBB0_2:
	movl	$mem_benchmark_0.sp0, %eax
.LBB0_4:
	movq	(%rax), %rax
	testq	%rdi, %rdi
	je	.LBB0_6
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	addq	$-1, %rdi
	jne	.LBB0_5
.LBB0_6:
	movq	%rax, mem_benchmark_0.sp0(%rip)
	movq	(%rsi), %rax
	movq	%rax, mem_benchmark_0.addr_save(%rip)
	movb	$1, mem_benchmark_rerun(%rip)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	mem_benchmark_0, .Lfunc_end0-mem_benchmark_0
	.cfi_endproc
                                        # -- End function
	.globl	mem_benchmark_1         # -- Begin function mem_benchmark_1
	.p2align	4, 0x90
	.type	mem_benchmark_1,@function
mem_benchmark_1:                        # @mem_benchmark_1
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	cmpb	$1, mem_benchmark_rerun(%rip)
	jne	.LBB1_3
# %bb.1:
	movq	mem_benchmark_1.addr_save(%rip), %rax
	leaq	16(%rsi), %rcx
	cmpq	(%rsi), %rax
	movl	$mem_benchmark_1.sp0, %eax
	cmovneq	%rcx, %rax
	movq	(%rax), %rax
	jne	.LBB1_4
# %bb.2:
	movl	$mem_benchmark_1.sp1, %ecx
	jmp	.LBB1_5
.LBB1_3:
	movq	16(%rsi), %rax
.LBB1_4:
	leaq	24(%rsi), %rcx
.LBB1_5:
	movq	(%rcx), %rcx
	testq	%rdi, %rdi
	je	.LBB1_7
	.p2align	4, 0x90
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	addq	$-1, %rdi
	jne	.LBB1_6
.LBB1_7:
	movq	%rax, mem_benchmark_1.sp0(%rip)
	movq	%rcx, mem_benchmark_1.sp1(%rip)
	movq	(%rsi), %rax
	movq	%rax, mem_benchmark_1.addr_save(%rip)
	movb	$1, mem_benchmark_rerun(%rip)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	mem_benchmark_1, .Lfunc_end1-mem_benchmark_1
	.cfi_endproc
                                        # -- End function
	.globl	mem_benchmark_2         # -- Begin function mem_benchmark_2
	.p2align	4, 0x90
	.type	mem_benchmark_2,@function
mem_benchmark_2:                        # @mem_benchmark_2
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	cmpb	$1, mem_benchmark_rerun(%rip)
	jne	.LBB2_3
# %bb.1:
	movq	mem_benchmark_2.addr_save(%rip), %rax
	leaq	16(%rsi), %rcx
	leaq	24(%rsi), %rdx
	cmpq	(%rsi), %rax
	movl	$mem_benchmark_2.sp0, %eax
	cmovneq	%rcx, %rax
	movq	(%rax), %rax
	movl	$mem_benchmark_2.sp1, %ecx
	cmovneq	%rdx, %rcx
	movq	(%rcx), %rcx
	jne	.LBB2_4
# %bb.2:
	movl	$mem_benchmark_2.sp2, %edx
	jmp	.LBB2_5
.LBB2_3:
	movq	16(%rsi), %rax
	movq	24(%rsi), %rcx
.LBB2_4:
	leaq	32(%rsi), %rdx
.LBB2_5:
	movq	(%rdx), %rdx
	testq	%rdi, %rdi
	je	.LBB2_7
	.p2align	4, 0x90
.LBB2_6:                                # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	addq	$-1, %rdi
	jne	.LBB2_6
.LBB2_7:
	movq	%rax, mem_benchmark_2.sp0(%rip)
	movq	%rcx, mem_benchmark_2.sp1(%rip)
	movq	%rdx, mem_benchmark_2.sp2(%rip)
	movq	(%rsi), %rax
	movq	%rax, mem_benchmark_2.addr_save(%rip)
	movb	$1, mem_benchmark_rerun(%rip)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	mem_benchmark_2, .Lfunc_end2-mem_benchmark_2
	.cfi_endproc
                                        # -- End function
	.globl	mem_benchmark_3         # -- Begin function mem_benchmark_3
	.p2align	4, 0x90
	.type	mem_benchmark_3,@function
mem_benchmark_3:                        # @mem_benchmark_3
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	cmpb	$1, mem_benchmark_rerun(%rip)
	jne	.LBB3_3
# %bb.1:
	movq	mem_benchmark_3.addr_save(%rip), %rax
	leaq	16(%rsi), %rcx
	leaq	24(%rsi), %rdx
	leaq	32(%rsi), %r9
	cmpq	(%rsi), %rax
	movl	$mem_benchmark_3.sp0, %eax
	cmovneq	%rcx, %rax
	movq	(%rax), %r8
	movl	$mem_benchmark_3.sp1, %eax
	cmovneq	%rdx, %rax
	movq	(%rax), %r10
	movl	$mem_benchmark_3.sp2, %eax
	cmovneq	%r9, %rax
	movq	(%rax), %r9
	jne	.LBB3_4
# %bb.2:
	movl	$mem_benchmark_3.sp3, %eax
	jmp	.LBB3_5
.LBB3_3:
	movq	16(%rsi), %r8
	movq	24(%rsi), %r10
	movq	32(%rsi), %r9
.LBB3_4:
	leaq	40(%rsi), %rax
.LBB3_5:
	movq	(%rax), %r11
	testq	%rdi, %rdi
	je	.LBB3_7
	.p2align	4, 0x90
.LBB3_6:                                # =>This Inner Loop Header: Depth=1
	movq	(%r8), %rcx
	movq	(%r10), %rdx
	movq	(%r9), %rax
	movq	(%r11), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r11
	movq	(%rcx), %r8
	movq	(%rdx), %r10
	movq	(%rax), %r9
	movq	(%r11), %r11
	addq	$-1, %rdi
	jne	.LBB3_6
.LBB3_7:
	movq	%r8, mem_benchmark_3.sp0(%rip)
	movq	%r10, mem_benchmark_3.sp1(%rip)
	movq	%r9, mem_benchmark_3.sp2(%rip)
	movq	%r11, mem_benchmark_3.sp3(%rip)
	movq	(%rsi), %rax
	movq	%rax, mem_benchmark_3.addr_save(%rip)
	movb	$1, mem_benchmark_rerun(%rip)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	mem_benchmark_3, .Lfunc_end3-mem_benchmark_3
	.cfi_endproc
                                        # -- End function
	.globl	mem_benchmark_4         # -- Begin function mem_benchmark_4
	.p2align	4, 0x90
	.type	mem_benchmark_4,@function
mem_benchmark_4:                        # @mem_benchmark_4
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
	cmpb	$1, mem_benchmark_rerun(%rip)
	jne	.LBB4_3
# %bb.1:
	movq	mem_benchmark_4.addr_save(%rip), %rax
	leaq	16(%rsi), %rcx
	leaq	24(%rsi), %rdx
	leaq	32(%rsi), %r10
	leaq	40(%rsi), %r11
	cmpq	(%rsi), %rax
	movl	$mem_benchmark_4.sp0, %eax
	cmovneq	%rcx, %rax
	movq	(%rax), %r8
	movl	$mem_benchmark_4.sp1, %eax
	cmovneq	%rdx, %rax
	movq	(%rax), %r9
	movl	$mem_benchmark_4.sp2, %eax
	cmovneq	%r10, %rax
	movq	(%rax), %r10
	movl	$mem_benchmark_4.sp3, %eax
	cmovneq	%r11, %rax
	movq	(%rax), %r11
	jne	.LBB4_4
# %bb.2:
	movl	$mem_benchmark_4.sp4, %ecx
	jmp	.LBB4_5
.LBB4_3:
	movq	16(%rsi), %r8
	movq	24(%rsi), %r9
	movq	32(%rsi), %r10
	movq	40(%rsi), %r11
.LBB4_4:
	leaq	48(%rsi), %rcx
.LBB4_5:
	movq	(%rcx), %r14
	testq	%rdi, %rdi
	je	.LBB4_7
	.p2align	4, 0x90
.LBB4_6:                                # =>This Inner Loop Header: Depth=1
	movq	(%r8), %rdx
	movq	(%r9), %rax
	movq	(%r10), %rcx
	movq	(%r11), %rbx
	movq	(%r14), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r8), %r14
	movq	(%rdx), %r8
	movq	(%rax), %r9
	movq	(%rcx), %r10
	movq	(%rbx), %r11
	movq	(%r14), %r14
	addq	$-1, %rdi
	jne	.LBB4_6
.LBB4_7:
	movq	%r8, mem_benchmark_4.sp0(%rip)
	movq	%r9, mem_benchmark_4.sp1(%rip)
	movq	%r10, mem_benchmark_4.sp2(%rip)
	movq	%r11, mem_benchmark_4.sp3(%rip)
	movq	%r14, mem_benchmark_4.sp4(%rip)
	movq	(%rsi), %rax
	movq	%rax, mem_benchmark_4.addr_save(%rip)
	movb	$1, mem_benchmark_rerun(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	mem_benchmark_4, .Lfunc_end4-mem_benchmark_4
	.cfi_endproc
                                        # -- End function
	.globl	mem_benchmark_5         # -- Begin function mem_benchmark_5
	.p2align	4, 0x90
	.type	mem_benchmark_5,@function
mem_benchmark_5:                        # @mem_benchmark_5
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
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	cmpb	$1, mem_benchmark_rerun(%rip)
	jne	.LBB5_3
# %bb.1:
	movq	mem_benchmark_5.addr_save(%rip), %rax
	leaq	16(%rsi), %rcx
	leaq	24(%rsi), %rdx
	leaq	32(%rsi), %r10
	leaq	40(%rsi), %r11
	leaq	48(%rsi), %rbx
	cmpq	(%rsi), %rax
	movl	$mem_benchmark_5.sp0, %eax
	cmovneq	%rcx, %rax
	movq	(%rax), %r8
	movl	$mem_benchmark_5.sp1, %eax
	cmovneq	%rdx, %rax
	movq	(%rax), %r9
	movl	$mem_benchmark_5.sp2, %eax
	cmovneq	%r10, %rax
	movq	(%rax), %r10
	movl	$mem_benchmark_5.sp3, %eax
	cmovneq	%r11, %rax
	movq	(%rax), %r11
	movl	$mem_benchmark_5.sp4, %ecx
	cmovneq	%rbx, %rcx
	movq	(%rcx), %r14
	jne	.LBB5_4
# %bb.2:
	movl	$mem_benchmark_5.sp5, %edx
	jmp	.LBB5_5
.LBB5_3:
	movq	16(%rsi), %r8
	movq	24(%rsi), %r9
	movq	32(%rsi), %r10
	movq	40(%rsi), %r11
	movq	48(%rsi), %r14
.LBB5_4:
	leaq	56(%rsi), %rdx
.LBB5_5:
	movq	(%rdx), %r15
	testq	%rdi, %rdi
	je	.LBB5_7
	.p2align	4, 0x90
.LBB5_6:                                # =>This Inner Loop Header: Depth=1
	movq	(%r8), %rbx
	movq	(%r9), %rax
	movq	(%r10), %rcx
	movq	(%r11), %rdx
	movq	(%r14), %r8
	movq	(%r15), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r8), %r14
	movq	(%r9), %r15
	movq	(%rbx), %r8
	movq	(%rax), %r9
	movq	(%rcx), %r10
	movq	(%rdx), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	addq	$-1, %rdi
	jne	.LBB5_6
.LBB5_7:
	movq	%r8, mem_benchmark_5.sp0(%rip)
	movq	%r9, mem_benchmark_5.sp1(%rip)
	movq	%r10, mem_benchmark_5.sp2(%rip)
	movq	%r11, mem_benchmark_5.sp3(%rip)
	movq	%r14, mem_benchmark_5.sp4(%rip)
	movq	%r15, mem_benchmark_5.sp5(%rip)
	movq	(%rsi), %rax
	movq	%rax, mem_benchmark_5.addr_save(%rip)
	movb	$1, mem_benchmark_rerun(%rip)
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	mem_benchmark_5, .Lfunc_end5-mem_benchmark_5
	.cfi_endproc
                                        # -- End function
	.globl	mem_benchmark_6         # -- Begin function mem_benchmark_6
	.p2align	4, 0x90
	.type	mem_benchmark_6,@function
mem_benchmark_6:                        # @mem_benchmark_6
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	cmpb	$1, mem_benchmark_rerun(%rip)
	jne	.LBB6_3
# %bb.1:
	movq	mem_benchmark_6.addr_save(%rip), %rax
	leaq	16(%rsi), %rcx
	leaq	24(%rsi), %rdx
	leaq	32(%rsi), %r10
	leaq	40(%rsi), %r11
	leaq	48(%rsi), %rbx
	leaq	56(%rsi), %r14
	cmpq	(%rsi), %rax
	movl	$mem_benchmark_6.sp0, %eax
	cmovneq	%rcx, %rax
	movq	(%rax), %r8
	movl	$mem_benchmark_6.sp1, %eax
	cmovneq	%rdx, %rax
	movq	(%rax), %r9
	movl	$mem_benchmark_6.sp2, %eax
	cmovneq	%r10, %rax
	movq	(%rax), %r10
	movl	$mem_benchmark_6.sp3, %eax
	cmovneq	%r11, %rax
	movq	(%rax), %r11
	movl	$mem_benchmark_6.sp4, %eax
	cmovneq	%rbx, %rax
	movq	(%rax), %r15
	movl	$mem_benchmark_6.sp5, %eax
	cmovneq	%r14, %rax
	movq	(%rax), %r14
	jne	.LBB6_4
# %bb.2:
	movl	$mem_benchmark_6.sp6, %eax
	jmp	.LBB6_5
.LBB6_3:
	movq	16(%rsi), %r8
	movq	24(%rsi), %r9
	movq	32(%rsi), %r10
	movq	40(%rsi), %r11
	movq	48(%rsi), %r15
	movq	56(%rsi), %r14
.LBB6_4:
	leaq	64(%rsi), %rax
.LBB6_5:
	movq	(%rax), %r12
	testq	%rdi, %rdi
	je	.LBB6_7
	.p2align	4, 0x90
.LBB6_6:                                # =>This Inner Loop Header: Depth=1
	movq	(%r8), %rbx
	movq	(%r9), %rcx
	movq	(%r10), %rdx
	movq	(%r11), %rax
	movq	(%r15), %r8
	movq	(%r14), %r9
	movq	(%r12), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r8), %r14
	movq	(%r9), %r12
	movq	(%r10), %r13
	movq	(%rbx), %r8
	movq	(%rcx), %r9
	movq	(%rdx), %r10
	movq	(%rax), %r11
	movq	(%r14), %r15
	movq	(%r12), %r14
	movq	(%r13), %r12
	addq	$-1, %rdi
	jne	.LBB6_6
.LBB6_7:
	movq	%r8, mem_benchmark_6.sp0(%rip)
	movq	%r9, mem_benchmark_6.sp1(%rip)
	movq	%r10, mem_benchmark_6.sp2(%rip)
	movq	%r11, mem_benchmark_6.sp3(%rip)
	movq	%r15, mem_benchmark_6.sp4(%rip)
	movq	%r14, mem_benchmark_6.sp5(%rip)
	movq	%r12, mem_benchmark_6.sp6(%rip)
	movq	(%rsi), %rax
	movq	%rax, mem_benchmark_6.addr_save(%rip)
	movb	$1, mem_benchmark_rerun(%rip)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	mem_benchmark_6, .Lfunc_end6-mem_benchmark_6
	.cfi_endproc
                                        # -- End function
	.globl	mem_benchmark_7         # -- Begin function mem_benchmark_7
	.p2align	4, 0x90
	.type	mem_benchmark_7,@function
mem_benchmark_7:                        # @mem_benchmark_7
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	cmpb	$1, mem_benchmark_rerun(%rip)
	jne	.LBB7_3
# %bb.1:
	movq	mem_benchmark_7.addr_save(%rip), %rax
	leaq	16(%rsi), %rcx
	leaq	24(%rsi), %rdx
	leaq	32(%rsi), %rbx
	leaq	40(%rsi), %r11
	leaq	48(%rsi), %r14
	leaq	56(%rsi), %r15
	leaq	64(%rsi), %r12
	cmpq	(%rsi), %rax
	movl	$mem_benchmark_7.sp0, %eax
	cmovneq	%rcx, %rax
	movq	(%rax), %r8
	movl	$mem_benchmark_7.sp1, %eax
	cmovneq	%rdx, %rax
	movq	(%rax), %r9
	movl	$mem_benchmark_7.sp2, %eax
	cmovneq	%rbx, %rax
	movq	(%rax), %r10
	movl	$mem_benchmark_7.sp3, %eax
	cmovneq	%r11, %rax
	movq	(%rax), %r11
	movl	$mem_benchmark_7.sp4, %eax
	cmovneq	%r14, %rax
	movq	(%rax), %r14
	movl	$mem_benchmark_7.sp5, %eax
	cmovneq	%r15, %rax
	movq	(%rax), %r15
	movl	$mem_benchmark_7.sp6, %eax
	cmovneq	%r12, %rax
	movq	(%rax), %r12
	jne	.LBB7_4
# %bb.2:
	movl	$mem_benchmark_7.sp7, %ebx
	jmp	.LBB7_5
.LBB7_3:
	movq	16(%rsi), %r8
	movq	24(%rsi), %r9
	movq	32(%rsi), %r10
	movq	40(%rsi), %r11
	movq	48(%rsi), %r14
	movq	56(%rsi), %r15
	movq	64(%rsi), %r12
.LBB7_4:
	leaq	72(%rsi), %rbx
.LBB7_5:
	movq	(%rbx), %r13
	testq	%rdi, %rdi
	je	.LBB7_7
	.p2align	4, 0x90
.LBB7_6:                                # =>This Inner Loop Header: Depth=1
	movq	(%r8), %rcx
	movq	(%r9), %rdx
	movq	(%r10), %rax
	movq	(%r11), %rbx
	movq	(%r14), %r8
	movq	(%r15), %r9
	movq	(%r12), %r10
	movq	(%r13), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r8), %r14
	movq	(%r9), %r15
	movq	(%r10), %r12
	movq	(%r11), %r13
	movq	(%rcx), %r8
	movq	(%rdx), %r9
	movq	(%rax), %r10
	movq	(%rbx), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	addq	$-1, %rdi
	jne	.LBB7_6
.LBB7_7:
	movq	%r8, mem_benchmark_7.sp0(%rip)
	movq	%r9, mem_benchmark_7.sp1(%rip)
	movq	%r10, mem_benchmark_7.sp2(%rip)
	movq	%r11, mem_benchmark_7.sp3(%rip)
	movq	%r14, mem_benchmark_7.sp4(%rip)
	movq	%r15, mem_benchmark_7.sp5(%rip)
	movq	%r12, mem_benchmark_7.sp6(%rip)
	movq	%r13, mem_benchmark_7.sp7(%rip)
	movq	(%rsi), %rax
	movq	%rax, mem_benchmark_7.addr_save(%rip)
	movb	$1, mem_benchmark_rerun(%rip)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	mem_benchmark_7, .Lfunc_end7-mem_benchmark_7
	.cfi_endproc
                                        # -- End function
	.globl	mem_benchmark_8         # -- Begin function mem_benchmark_8
	.p2align	4, 0x90
	.type	mem_benchmark_8,@function
mem_benchmark_8:                        # @mem_benchmark_8
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	cmpb	$1, mem_benchmark_rerun(%rip)
	jne	.LBB8_4
# %bb.1:
	movq	mem_benchmark_8.addr_save(%rip), %rax
	leaq	16(%rsi), %rcx
	leaq	24(%rsi), %rbx
	leaq	32(%rsi), %r8
	leaq	40(%rsi), %r11
	leaq	48(%rsi), %r14
	leaq	56(%rsi), %r15
	leaq	64(%rsi), %r12
	leaq	72(%rsi), %r13
	cmpq	(%rsi), %rax
	movl	$mem_benchmark_8.sp0, %eax
	cmovneq	%rcx, %rax
	movq	(%rax), %rdx
	movl	$mem_benchmark_8.sp1, %eax
	cmovneq	%rbx, %rax
	movq	(%rax), %rbx
	movl	$mem_benchmark_8.sp2, %eax
	cmovneq	%r8, %rax
	movq	(%rax), %r10
	movl	$mem_benchmark_8.sp3, %eax
	cmovneq	%r11, %rax
	movq	(%rax), %r11
	movl	$mem_benchmark_8.sp4, %eax
	cmovneq	%r14, %rax
	movq	(%rax), %r14
	movl	$mem_benchmark_8.sp5, %eax
	cmovneq	%r15, %rax
	movq	(%rax), %r15
	movl	$mem_benchmark_8.sp6, %eax
	cmovneq	%r12, %rax
	movq	(%rax), %r12
	movl	$mem_benchmark_8.sp7, %ecx
	cmovneq	%r13, %rcx
	movq	(%rcx), %r13
	je	.LBB8_3
# %bb.2:
	movq	%rbx, %rax
	jmp	.LBB8_5
.LBB8_4:
	movq	16(%rsi), %rdx
	movq	24(%rsi), %rax
	movq	32(%rsi), %r10
	movq	40(%rsi), %r11
	movq	48(%rsi), %r14
	movq	56(%rsi), %r15
	movq	64(%rsi), %r12
	movq	72(%rsi), %r13
.LBB8_5:
	leaq	80(%rsi), %rcx
	jmp	.LBB8_6
.LBB8_3:
	movl	$mem_benchmark_8.sp8, %ecx
	movq	%rbx, %rax
.LBB8_6:
	movq	(%rcx), %r8
	testq	%rdi, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	je	.LBB8_8
	.p2align	4, 0x90
.LBB8_7:                                # =>This Inner Loop Header: Depth=1
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r10), %rbx
	movq	(%r11), %rcx
	movq	(%r14), %r9
	movq	(%r15), %r10
	movq	(%r12), %r11
	movq	(%r13), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%r9), %r15
	movq	(%r10), %r12
	movq	(%r11), %r13
	movq	(%r14), %r9
	movq	(%r8), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %r10
	movq	(%rcx), %r11
	movq	(%r15), %r14
	movq	(%r12), %r15
	movq	(%r13), %r12
	movq	(%r9), %r13
	movq	(%rsi), %r8
	addq	$-1, %rdi
	jne	.LBB8_7
.LBB8_8:
	movq	%rdx, mem_benchmark_8.sp0(%rip)
	movq	%rax, mem_benchmark_8.sp1(%rip)
	movq	%r10, mem_benchmark_8.sp2(%rip)
	movq	%r11, mem_benchmark_8.sp3(%rip)
	movq	%r14, mem_benchmark_8.sp4(%rip)
	movq	%r15, mem_benchmark_8.sp5(%rip)
	movq	%r12, mem_benchmark_8.sp6(%rip)
	movq	%r13, mem_benchmark_8.sp7(%rip)
	movq	%r8, mem_benchmark_8.sp8(%rip)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, mem_benchmark_8.addr_save(%rip)
	movb	$1, mem_benchmark_rerun(%rip)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	mem_benchmark_8, .Lfunc_end8-mem_benchmark_8
	.cfi_endproc
                                        # -- End function
	.globl	mem_benchmark_9         # -- Begin function mem_benchmark_9
	.p2align	4, 0x90
	.type	mem_benchmark_9,@function
mem_benchmark_9:                        # @mem_benchmark_9
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	cmpb	$1, mem_benchmark_rerun(%rip)
	jne	.LBB9_3
# %bb.1:
	movq	mem_benchmark_9.addr_save(%rip), %rax
	leaq	16(%rsi), %rdx
	leaq	24(%rsi), %rbx
	leaq	32(%rsi), %rcx
	leaq	40(%rsi), %r11
	leaq	48(%rsi), %r14
	leaq	56(%rsi), %r15
	leaq	64(%rsi), %r13
	leaq	72(%rsi), %r8
	leaq	80(%rsi), %r9
	cmpq	(%rsi), %rax
	movl	$mem_benchmark_9.sp0, %eax
	cmovneq	%rdx, %rax
	movq	(%rax), %r10
	movl	$mem_benchmark_9.sp1, %eax
	cmovneq	%rbx, %rax
	movq	(%rax), %rdx
	movl	$mem_benchmark_9.sp2, %eax
	cmovneq	%rcx, %rax
	movq	(%rax), %rbx
	movl	$mem_benchmark_9.sp3, %eax
	cmovneq	%r11, %rax
	movq	(%rax), %r11
	movl	$mem_benchmark_9.sp4, %eax
	cmovneq	%r14, %rax
	movq	(%rax), %r14
	movl	$mem_benchmark_9.sp5, %eax
	cmovneq	%r15, %rax
	movq	(%rax), %r15
	movl	$mem_benchmark_9.sp6, %eax
	cmovneq	%r13, %rax
	movq	(%rax), %r13
	movl	$mem_benchmark_9.sp7, %ecx
	cmovneq	%r8, %rcx
	movq	(%rcx), %r12
	movl	$mem_benchmark_9.sp8, %ecx
	cmovneq	%r9, %rcx
	movq	(%rcx), %r8
	jne	.LBB9_4
# %bb.2:
	movl	$mem_benchmark_9.sp9, %eax
	jmp	.LBB9_5
.LBB9_3:
	movq	16(%rsi), %r10
	movq	24(%rsi), %rdx
	movq	32(%rsi), %rbx
	movq	40(%rsi), %r11
	movq	48(%rsi), %r14
	movq	56(%rsi), %r15
	movq	64(%rsi), %r13
	movq	72(%rsi), %r12
	movq	80(%rsi), %r8
.LBB9_4:
	leaq	88(%rsi), %rax
.LBB9_5:
	movq	(%rax), %r9
	testq	%rdi, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%r10, %rsi
	movq	%rdx, %rax
	je	.LBB9_7
	.p2align	4, 0x90
.LBB9_6:                                # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r11), %rcx
	movq	(%r14), %rdx
	movq	(%r15), %r10
	movq	(%r13), %r11
	movq	(%r12), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	%rdi, %r13
	movq	(%r10), %rdi
	movq	(%r11), %r12
	movq	(%r14), %r10
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rcx), %r11
	movq	(%rdx), %r14
	movq	(%rdi), %r15
	movq	%r13, %rdi
	movq	(%r12), %r13
	movq	(%r10), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	addq	$-1, %rdi
	jne	.LBB9_6
.LBB9_7:
	movq	%rsi, mem_benchmark_9.sp0(%rip)
	movq	%rax, mem_benchmark_9.sp1(%rip)
	movq	%rbx, mem_benchmark_9.sp2(%rip)
	movq	%r11, mem_benchmark_9.sp3(%rip)
	movq	%r14, mem_benchmark_9.sp4(%rip)
	movq	%r15, mem_benchmark_9.sp5(%rip)
	movq	%r13, mem_benchmark_9.sp6(%rip)
	movq	%r12, mem_benchmark_9.sp7(%rip)
	movq	%r8, mem_benchmark_9.sp8(%rip)
	movq	%r9, mem_benchmark_9.sp9(%rip)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, mem_benchmark_9.addr_save(%rip)
	movb	$1, mem_benchmark_rerun(%rip)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end9:
	.size	mem_benchmark_9, .Lfunc_end9-mem_benchmark_9
	.cfi_endproc
                                        # -- End function
	.globl	mem_benchmark_10        # -- Begin function mem_benchmark_10
	.p2align	4, 0x90
	.type	mem_benchmark_10,@function
mem_benchmark_10:                       # @mem_benchmark_10
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	cmpb	$1, mem_benchmark_rerun(%rip)
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	jne	.LBB10_4
# %bb.1:
	movq	mem_benchmark_10.addr_save(%rip), %rdx
	leaq	16(%rsi), %rbx
	leaq	24(%rsi), %rax
	leaq	32(%rsi), %r10
	leaq	40(%rsi), %r11
	leaq	48(%rsi), %r14
	leaq	56(%rsi), %r15
	leaq	64(%rsi), %r12
	leaq	72(%rsi), %r9
	leaq	80(%rsi), %r8
	leaq	88(%rsi), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	cmpq	(%rsi), %rdx
	movl	$mem_benchmark_10.sp0, %edx
	cmovneq	%rbx, %rdx
	movq	(%rdx), %rsi
	movl	$mem_benchmark_10.sp1, %edx
	cmovneq	%rax, %rdx
	movq	(%rdx), %rbx
	movl	$mem_benchmark_10.sp2, %eax
	cmovneq	%r10, %rax
	movq	(%rax), %rcx
	movl	$mem_benchmark_10.sp3, %eax
	cmovneq	%r11, %rax
	movq	(%rax), %rdx
	movl	$mem_benchmark_10.sp4, %eax
	cmovneq	%r14, %rax
	movq	(%rax), %r14
	movl	$mem_benchmark_10.sp5, %eax
	cmovneq	%r15, %rax
	movq	(%rax), %r15
	movl	$mem_benchmark_10.sp6, %eax
	cmovneq	%r12, %rax
	movq	(%rax), %r12
	movl	$mem_benchmark_10.sp7, %eax
	cmovneq	%r9, %rax
	movq	(%rax), %r13
	movl	$mem_benchmark_10.sp8, %eax
	cmovneq	%r8, %rax
	movq	(%rax), %r8
	movl	$mem_benchmark_10.sp9, %eax
	cmovneq	-56(%rbp), %rax         # 8-byte Folded Reload
	movq	(%rax), %r9
	je	.LBB10_3
# %bb.2:
	movq	%rsi, %r10
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB10_5
.LBB10_4:
	movq	16(%rsi), %r10
	movq	24(%rsi), %rbx
	movq	32(%rsi), %rcx
	movq	40(%rsi), %rdx
	movq	48(%rsi), %r14
	movq	56(%rsi), %r15
	movq	64(%rsi), %r12
	movq	72(%rsi), %r13
	movq	80(%rsi), %r8
	movq	88(%rsi), %r9
.LBB10_5:
	leaq	96(%rsi), %rax
	movq	%r10, %rsi
	jmp	.LBB10_6
.LBB10_3:
	movl	$mem_benchmark_10.sp10, %eax
.LBB10_6:
	movq	(%rax), %r10
	testq	%rdi, %rdi
	je	.LBB10_8
	.p2align	4, 0x90
.LBB10_7:                               # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%r14), %rax
	movq	(%r15), %r11
	movq	(%r12), %r14
	movq	(%r13), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r11), %r12
	movq	(%r14), %r13
	movq	(%r15), %r11
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%rbx), %rbx
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %r14
	movq	(%r12), %r15
	movq	(%r13), %r12
	movq	(%r11), %r13
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	addq	$-1, %rdi
	jne	.LBB10_7
.LBB10_8:
	movq	%rsi, mem_benchmark_10.sp0(%rip)
	movq	%rbx, mem_benchmark_10.sp1(%rip)
	movq	%rcx, mem_benchmark_10.sp2(%rip)
	movq	%rdx, mem_benchmark_10.sp3(%rip)
	movq	%r14, mem_benchmark_10.sp4(%rip)
	movq	%r15, mem_benchmark_10.sp5(%rip)
	movq	%r12, mem_benchmark_10.sp6(%rip)
	movq	%r13, mem_benchmark_10.sp7(%rip)
	movq	%r8, mem_benchmark_10.sp8(%rip)
	movq	%r9, mem_benchmark_10.sp9(%rip)
	movq	%r10, mem_benchmark_10.sp10(%rip)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, mem_benchmark_10.addr_save(%rip)
	movb	$1, mem_benchmark_rerun(%rip)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end10:
	.size	mem_benchmark_10, .Lfunc_end10-mem_benchmark_10
	.cfi_endproc
                                        # -- End function
	.globl	mem_benchmark_11        # -- Begin function mem_benchmark_11
	.p2align	4, 0x90
	.type	mem_benchmark_11,@function
mem_benchmark_11:                       # @mem_benchmark_11
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	cmpb	$1, mem_benchmark_rerun(%rip)
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	jne	.LBB11_4
# %bb.1:
	movq	mem_benchmark_11.addr_save(%rip), %rbx
	leaq	16(%rsi), %r8
	leaq	24(%rsi), %r9
	leaq	32(%rsi), %r10
	leaq	40(%rsi), %r11
	leaq	48(%rsi), %r14
	leaq	56(%rsi), %r15
	leaq	64(%rsi), %r12
	leaq	72(%rsi), %r13
	leaq	80(%rsi), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	leaq	88(%rsi), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	leaq	96(%rsi), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	cmpq	(%rsi), %rbx
	movl	$mem_benchmark_11.sp0, %ebx
	cmovneq	%r8, %rbx
	movq	(%rbx), %rcx
	movl	$mem_benchmark_11.sp1, %ebx
	cmovneq	%r9, %rbx
	movq	(%rbx), %rsi
	movl	$mem_benchmark_11.sp2, %ebx
	cmovneq	%r10, %rbx
	movq	(%rbx), %rdx
	movl	$mem_benchmark_11.sp3, %ebx
	cmovneq	%r11, %rbx
	movq	(%rbx), %rax
	movl	$mem_benchmark_11.sp4, %ebx
	cmovneq	%r14, %rbx
	movq	(%rbx), %r14
	movl	$mem_benchmark_11.sp5, %ebx
	cmovneq	%r15, %rbx
	movq	(%rbx), %r15
	movl	$mem_benchmark_11.sp6, %ebx
	cmovneq	%r12, %rbx
	movq	(%rbx), %r12
	movl	$mem_benchmark_11.sp7, %ebx
	cmovneq	%r13, %rbx
	movq	(%rbx), %r13
	movl	$mem_benchmark_11.sp8, %ebx
	cmovneq	-64(%rbp), %rbx         # 8-byte Folded Reload
	movq	(%rbx), %r8
	movl	$mem_benchmark_11.sp9, %ebx
	cmovneq	-72(%rbp), %rbx         # 8-byte Folded Reload
	movq	(%rbx), %r9
	movl	$mem_benchmark_11.sp10, %ebx
	cmovneq	-48(%rbp), %rbx         # 8-byte Folded Reload
	movq	(%rbx), %r10
	je	.LBB11_3
# %bb.2:
	movq	%rsi, %r11
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB11_5
.LBB11_4:
	movq	16(%rsi), %rcx
	movq	24(%rsi), %r11
	movq	32(%rsi), %rdx
	movq	40(%rsi), %rax
	movq	48(%rsi), %r14
	movq	56(%rsi), %r15
	movq	64(%rsi), %r12
	movq	72(%rsi), %r13
	movq	80(%rsi), %r8
	movq	88(%rsi), %r9
	movq	96(%rsi), %r10
.LBB11_5:
	leaq	104(%rsi), %rbx
	movq	%r11, %rsi
	jmp	.LBB11_6
.LBB11_3:
	movl	$mem_benchmark_11.sp11, %ebx
.LBB11_6:
	movq	(%rbx), %r11
	movq	%r14, %rbx
	testq	%rdi, %rdi
	je	.LBB11_8
	.p2align	4, 0x90
.LBB11_7:                               # =>This Inner Loop Header: Depth=1
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r14
	movq	(%r12), %r15
	movq	(%r13), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r14), %r13
	movq	(%r15), %r14
	movq	(%r12), %rdi
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%rcx), %rcx
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r13), %r15
	movq	(%r14), %r12
	movq	(%rdi), %r13
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	(%r8), %r8
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	addq	$-1, %rdi
	jne	.LBB11_7
.LBB11_8:
	movq	%rcx, mem_benchmark_11.sp0(%rip)
	movq	%rsi, mem_benchmark_11.sp1(%rip)
	movq	%rdx, mem_benchmark_11.sp2(%rip)
	movq	%rax, mem_benchmark_11.sp3(%rip)
	movq	%rbx, mem_benchmark_11.sp4(%rip)
	movq	%r15, mem_benchmark_11.sp5(%rip)
	movq	%r12, mem_benchmark_11.sp6(%rip)
	movq	%r13, mem_benchmark_11.sp7(%rip)
	movq	%r8, mem_benchmark_11.sp8(%rip)
	movq	%r9, mem_benchmark_11.sp9(%rip)
	movq	%r10, mem_benchmark_11.sp10(%rip)
	movq	%r11, mem_benchmark_11.sp11(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, mem_benchmark_11.addr_save(%rip)
	movb	$1, mem_benchmark_rerun(%rip)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end11:
	.size	mem_benchmark_11, .Lfunc_end11-mem_benchmark_11
	.cfi_endproc
                                        # -- End function
	.globl	mem_benchmark_12        # -- Begin function mem_benchmark_12
	.p2align	4, 0x90
	.type	mem_benchmark_12,@function
mem_benchmark_12:                       # @mem_benchmark_12
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r8
	cmpb	$1, mem_benchmark_rerun(%rip)
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	jne	.LBB12_4
# %bb.1:
	movq	mem_benchmark_12.addr_save(%rip), %rcx
	leaq	16(%r8), %rdx
	movl	$mem_benchmark_12.sp0, %ebx
	cmpq	(%r8), %rcx
	cmovneq	%rdx, %rbx
	leaq	24(%r8), %rdx
	movl	$mem_benchmark_12.sp1, %ecx
	cmovneq	%rdx, %rcx
	leaq	32(%r8), %rsi
	movl	$mem_benchmark_12.sp2, %edx
	cmovneq	%rsi, %rdx
	leaq	40(%r8), %rsi
	movl	$mem_benchmark_12.sp3, %eax
	cmovneq	%rsi, %rax
	leaq	48(%r8), %rsi
	movl	$mem_benchmark_12.sp4, %r15d
	cmovneq	%rsi, %r15
	leaq	56(%r8), %rsi
	movl	$mem_benchmark_12.sp5, %r12d
	cmovneq	%rsi, %r12
	leaq	64(%r8), %rsi
	movl	$mem_benchmark_12.sp6, %r13d
	cmovneq	%rsi, %r13
	leaq	72(%r8), %rsi
	movl	$mem_benchmark_12.sp7, %r9d
	cmovneq	%rsi, %r9
	leaq	80(%r8), %rsi
	movl	$mem_benchmark_12.sp8, %r10d
	cmovneq	%rsi, %r10
	leaq	88(%r8), %rsi
	movl	$mem_benchmark_12.sp9, %r11d
	cmovneq	%rsi, %r11
	leaq	96(%r8), %rsi
	movl	$mem_benchmark_12.sp10, %r14d
	cmovneq	%rsi, %r14
	leaq	104(%r8), %rsi
	movl	$mem_benchmark_12.sp11, %r8d
	cmovneq	%rsi, %r8
	movq	(%rbx), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r15), %rbx
	movq	(%r12), %r15
	movq	(%r13), %r12
	movq	(%r9), %r13
	movq	(%r10), %r9
	movq	(%r11), %r10
	movq	(%r14), %r11
	movq	(%r8), %r14
	je	.LBB12_3
# %bb.2:
	movq	-48(%rbp), %r8          # 8-byte Reload
	jmp	.LBB12_5
.LBB12_4:
	movq	16(%r8), %rsi
	movq	24(%r8), %rcx
	movq	32(%r8), %rdx
	movq	40(%r8), %rax
	movq	48(%r8), %rbx
	movq	56(%r8), %r15
	movq	64(%r8), %r12
	movq	72(%r8), %r13
	movq	80(%r8), %r9
	movq	88(%r8), %r10
	movq	96(%r8), %r11
	movq	104(%r8), %r14
.LBB12_5:
	addq	$112, %r8
	jmp	.LBB12_6
.LBB12_3:
	movl	$mem_benchmark_12.sp12, %r8d
.LBB12_6:
	movq	(%r8), %r8
	testq	%rdi, %rdi
	je	.LBB12_8
	.p2align	4, 0x90
.LBB12_7:                               # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	addq	$-1, %rdi
	jne	.LBB12_7
.LBB12_8:
	movq	%rsi, mem_benchmark_12.sp0(%rip)
	movq	%rcx, mem_benchmark_12.sp1(%rip)
	movq	%rdx, mem_benchmark_12.sp2(%rip)
	movq	%rax, mem_benchmark_12.sp3(%rip)
	movq	%rbx, mem_benchmark_12.sp4(%rip)
	movq	%r15, mem_benchmark_12.sp5(%rip)
	movq	%r12, mem_benchmark_12.sp6(%rip)
	movq	%r13, mem_benchmark_12.sp7(%rip)
	movq	%r9, mem_benchmark_12.sp8(%rip)
	movq	%r10, mem_benchmark_12.sp9(%rip)
	movq	%r11, mem_benchmark_12.sp10(%rip)
	movq	%r14, mem_benchmark_12.sp11(%rip)
	movq	%r8, mem_benchmark_12.sp12(%rip)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, mem_benchmark_12.addr_save(%rip)
	movb	$1, mem_benchmark_rerun(%rip)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end12:
	.size	mem_benchmark_12, .Lfunc_end12-mem_benchmark_12
	.cfi_endproc
                                        # -- End function
	.globl	mem_benchmark_13        # -- Begin function mem_benchmark_13
	.p2align	4, 0x90
	.type	mem_benchmark_13,@function
mem_benchmark_13:                       # @mem_benchmark_13
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	cmpb	$1, mem_benchmark_rerun(%rip)
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	jne	.LBB13_4
# %bb.1:
	movq	mem_benchmark_13.addr_save(%rip), %rcx
	leaq	16(%rsi), %rdx
	leaq	24(%rsi), %rax
	movl	$mem_benchmark_13.sp0, %edi
	cmpq	(%rsi), %rcx
	cmovneq	%rdx, %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	leaq	32(%rsi), %rdi
	movl	$mem_benchmark_13.sp1, %ecx
	cmovneq	%rax, %rcx
	leaq	40(%rsi), %rbx
	movl	$mem_benchmark_13.sp2, %edx
	cmovneq	%rdi, %rdx
	leaq	48(%rsi), %rdi
	movl	$mem_benchmark_13.sp3, %eax
	cmovneq	%rbx, %rax
	leaq	56(%rsi), %r8
	movl	$mem_benchmark_13.sp4, %ebx
	cmovneq	%rdi, %rbx
	leaq	64(%rsi), %rdi
	movl	$mem_benchmark_13.sp5, %r13d
	cmovneq	%r8, %r13
	leaq	72(%rsi), %r11
	movl	$mem_benchmark_13.sp6, %r12d
	cmovneq	%rdi, %r12
	leaq	80(%rsi), %rdi
	movl	$mem_benchmark_13.sp7, %r9d
	cmovneq	%r11, %r9
	leaq	88(%rsi), %r8
	movl	$mem_benchmark_13.sp8, %r11d
	cmovneq	%rdi, %r11
	leaq	96(%rsi), %rdi
	movl	$mem_benchmark_13.sp9, %r10d
	cmovneq	%r8, %r10
	leaq	104(%rsi), %r15
	movl	$mem_benchmark_13.sp10, %r14d
	cmovneq	%rdi, %r14
	movl	$mem_benchmark_13.sp11, %r8d
	cmovneq	%r15, %r8
	leaq	112(%rsi), %rdi
	movl	$mem_benchmark_13.sp12, %r15d
	cmovneq	%rdi, %r15
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%r13), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	(%r12), %r12
	movq	(%r9), %r13
	movq	(%r11), %r9
	movq	(%r10), %r10
	movq	(%r14), %r11
	movq	(%r8), %r14
	movq	(%r15), %r8
	je	.LBB13_3
# %bb.2:
	movq	-64(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB13_5
.LBB13_4:
	movq	16(%rsi), %r8
	movq	24(%rsi), %rcx
	movq	32(%rsi), %rdx
	movq	40(%rsi), %rax
	movq	48(%rsi), %rbx
	movq	56(%rsi), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movq	64(%rsi), %r12
	movq	72(%rsi), %r13
	movq	80(%rsi), %r9
	movq	88(%rsi), %r10
	movq	96(%rsi), %r11
	movq	104(%rsi), %r14
	movq	112(%rsi), %r8
.LBB13_5:
	leaq	120(%rsi), %r15
	jmp	.LBB13_6
.LBB13_3:
	movl	$mem_benchmark_13.sp13, %r15d
.LBB13_6:
	movq	(%r15), %r15
	movq	-56(%rbp), %rsi         # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB13_8
	.p2align	4, 0x90
.LBB13_7:                               # =>This Inner Loop Header: Depth=1
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rbx), %rbx
	movq	(%rsi), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r8), %r8
	movq	(%r15), %r15
	addq	$-1, %rsi
	jne	.LBB13_7
.LBB13_8:
	movq	%rdi, mem_benchmark_13.sp0(%rip)
	movq	%rcx, mem_benchmark_13.sp1(%rip)
	movq	%rdx, mem_benchmark_13.sp2(%rip)
	movq	%rax, mem_benchmark_13.sp3(%rip)
	movq	%rbx, mem_benchmark_13.sp4(%rip)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, mem_benchmark_13.sp5(%rip)
	movq	%r12, mem_benchmark_13.sp6(%rip)
	movq	%r13, mem_benchmark_13.sp7(%rip)
	movq	%r9, mem_benchmark_13.sp8(%rip)
	movq	%r10, mem_benchmark_13.sp9(%rip)
	movq	%r11, mem_benchmark_13.sp10(%rip)
	movq	%r14, mem_benchmark_13.sp11(%rip)
	movq	%r8, mem_benchmark_13.sp12(%rip)
	movq	%r15, mem_benchmark_13.sp13(%rip)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, mem_benchmark_13.addr_save(%rip)
	movb	$1, mem_benchmark_rerun(%rip)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end13:
	.size	mem_benchmark_13, .Lfunc_end13-mem_benchmark_13
	.cfi_endproc
                                        # -- End function
	.globl	mem_benchmark_14        # -- Begin function mem_benchmark_14
	.p2align	4, 0x90
	.type	mem_benchmark_14,@function
mem_benchmark_14:                       # @mem_benchmark_14
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	cmpb	$1, mem_benchmark_rerun(%rip)
	jne	.LBB14_4
# %bb.1:
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	mem_benchmark_14.addr_save(%rip), %rcx
	leaq	16(%rsi), %rdx
	leaq	24(%rsi), %rax
	leaq	32(%rsi), %rdi
	movl	$mem_benchmark_14.sp0, %r10d
	cmpq	(%rsi), %rcx
	cmovneq	%rdx, %r10
	leaq	40(%rsi), %rbx
	movl	$mem_benchmark_14.sp1, %ecx
	cmovneq	%rax, %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	leaq	48(%rsi), %rax
	movl	$mem_benchmark_14.sp2, %ecx
	cmovneq	%rdi, %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	leaq	56(%rsi), %rcx
	movl	$mem_benchmark_14.sp3, %edx
	cmovneq	%rbx, %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	leaq	64(%rsi), %rdx
	movl	$mem_benchmark_14.sp4, %r13d
	cmovneq	%rax, %r13
	movq	%rsi, %rdi
	leaq	72(%rsi), %r11
	movl	$mem_benchmark_14.sp5, %r15d
	cmovneq	%rcx, %r15
	leaq	80(%rsi), %rax
	movl	$mem_benchmark_14.sp6, %r12d
	cmovneq	%rdx, %r12
	leaq	88(%rsi), %rsi
	movl	$mem_benchmark_14.sp7, %r14d
	cmovneq	%r11, %r14
	leaq	96(%rdi), %r11
	movl	$mem_benchmark_14.sp8, %ecx
	cmovneq	%rax, %rcx
	leaq	104(%rdi), %r9
	movl	$mem_benchmark_14.sp9, %edx
	cmovneq	%rsi, %rdx
	movl	$mem_benchmark_14.sp10, %eax
	cmovneq	%r11, %rax
	movq	%rdi, %rsi
	movl	$mem_benchmark_14.sp11, %r8d
	cmovneq	%r9, %r8
	leaq	112(%rdi), %r9
	movl	$mem_benchmark_14.sp12, %r11d
	cmovneq	%r9, %r11
	leaq	120(%rdi), %r9
	movl	$mem_benchmark_14.sp13, %edi
	cmovneq	%r9, %rdi
	movq	(%r10), %r9
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	(%rbx), %r10
	movq	%r10, -48(%rbp)         # 8-byte Spill
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	(%rbx), %rbx
	movq	%rbx, -80(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	(%rbx), %rbx
	movq	%rbx, -128(%rbp)        # 8-byte Spill
	movq	(%r13), %rbx
	movq	%rbx, -112(%rbp)        # 8-byte Spill
	movq	(%r15), %rbx
	movq	%rbx, -120(%rbp)        # 8-byte Spill
	movq	(%r12), %r13
	movq	(%r14), %rbx
	movq	%rbx, -104(%rbp)        # 8-byte Spill
	movq	(%rcx), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	(%rdx), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	(%rax), %rbx
	movq	(%r8), %r8
	movq	(%r11), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	(%rdi), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	je	.LBB14_3
# %bb.2:
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	-128(%rbp), %r14        # 8-byte Reload
	movq	-112(%rbp), %r15        # 8-byte Reload
	movq	-120(%rbp), %r12        # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	-96(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB14_5
.LBB14_4:
	movq	16(%rsi), %r9
	movq	24(%rsi), %r10
	movq	32(%rsi), %r11
	movq	40(%rsi), %r14
	movq	48(%rsi), %r15
	movq	56(%rsi), %r12
	movq	64(%rsi), %r13
	movq	72(%rsi), %rcx
	movq	80(%rsi), %rdx
	movq	88(%rsi), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	96(%rsi), %rbx
	movq	104(%rsi), %r8
	movq	112(%rsi), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	120(%rsi), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB14_5:
	leaq	128(%rsi), %rax
	jmp	.LBB14_6
.LBB14_3:
	movl	$mem_benchmark_14.sp14, %eax
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	-128(%rbp), %r14        # 8-byte Reload
	movq	-112(%rbp), %r15        # 8-byte Reload
	movq	-120(%rbp), %r12        # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	-96(%rbp), %rdx         # 8-byte Reload
.LBB14_6:
	movq	(%rax), %rax
	testq	%rdi, %rdi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	%rax, -48(%rbp)         # 8-byte Spill
	je	.LBB14_7
# %bb.8:
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rax         # 8-byte Reload
	.p2align	4, 0x90
.LBB14_9:                               # =>This Inner Loop Header: Depth=1
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	(%rdi), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rax), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %r9
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rax
	movq	(%rdi), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	(%r9), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rax), %rsi
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	(%r9), %r9
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	-80(%rbp), %r9          # 8-byte Reload
	addq	$-1, %rdi
	jne	.LBB14_9
	jmp	.LBB14_10
.LBB14_7:
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rax         # 8-byte Reload
.LBB14_10:
	movq	%r9, mem_benchmark_14.sp0(%rip)
	movq	%r10, mem_benchmark_14.sp1(%rip)
	movq	%r11, mem_benchmark_14.sp2(%rip)
	movq	%r14, mem_benchmark_14.sp3(%rip)
	movq	%r15, mem_benchmark_14.sp4(%rip)
	movq	%r12, mem_benchmark_14.sp5(%rip)
	movq	%r13, mem_benchmark_14.sp6(%rip)
	movq	%rcx, mem_benchmark_14.sp7(%rip)
	movq	%rdx, mem_benchmark_14.sp8(%rip)
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, mem_benchmark_14.sp9(%rip)
	movq	%rbx, mem_benchmark_14.sp10(%rip)
	movq	%r8, mem_benchmark_14.sp11(%rip)
	movq	%rsi, mem_benchmark_14.sp12(%rip)
	movq	%rax, mem_benchmark_14.sp13(%rip)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, mem_benchmark_14.sp14(%rip)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, mem_benchmark_14.addr_save(%rip)
	movb	$1, mem_benchmark_rerun(%rip)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end14:
	.size	mem_benchmark_14, .Lfunc_end14-mem_benchmark_14
	.cfi_endproc
                                        # -- End function
	.globl	mem_benchmark_15        # -- Begin function mem_benchmark_15
	.p2align	4, 0x90
	.type	mem_benchmark_15,@function
mem_benchmark_15:                       # @mem_benchmark_15
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
	cmpb	$1, mem_benchmark_rerun(%rip)
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	jne	.LBB15_4
# %bb.1:
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	mem_benchmark_15.addr_save(%rip), %rax
	leaq	16(%rsi), %rcx
	movl	$mem_benchmark_15.sp0, %edx
	cmpq	(%rsi), %rax
	cmovneq	%rcx, %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	leaq	24(%rsi), %rax
	movl	$mem_benchmark_15.sp1, %ecx
	cmovneq	%rax, %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	leaq	32(%rsi), %rax
	movl	$mem_benchmark_15.sp2, %r10d
	cmovneq	%rax, %r10
	leaq	40(%rsi), %rax
	movl	$mem_benchmark_15.sp3, %r11d
	cmovneq	%rax, %r11
	leaq	48(%rsi), %rax
	movl	$mem_benchmark_15.sp4, %r14d
	cmovneq	%rax, %r14
	leaq	56(%rsi), %rax
	movl	$mem_benchmark_15.sp5, %r15d
	cmovneq	%rax, %r15
	leaq	64(%rsi), %rcx
	movl	$mem_benchmark_15.sp6, %r12d
	cmovneq	%rcx, %r12
	leaq	72(%rsi), %rcx
	movl	$mem_benchmark_15.sp7, %r13d
	cmovneq	%rcx, %r13
	leaq	80(%rsi), %rax
	movl	$mem_benchmark_15.sp8, %ecx
	cmovneq	%rax, %rcx
	leaq	88(%rsi), %rdx
	movl	$mem_benchmark_15.sp9, %eax
	cmovneq	%rdx, %rax
	leaq	96(%rsi), %rdx
	movl	$mem_benchmark_15.sp10, %ebx
	cmovneq	%rdx, %rbx
	leaq	104(%rsi), %rdx
	movl	$mem_benchmark_15.sp11, %r9d
	cmovneq	%rdx, %r9
	leaq	112(%rsi), %rdx
	movl	$mem_benchmark_15.sp12, %r8d
	cmovneq	%rdx, %r8
	leaq	120(%rsi), %rdi
	movl	$mem_benchmark_15.sp13, %edx
	cmovneq	%rdi, %rdx
	leaq	128(%rsi), %rsi
	movl	$mem_benchmark_15.sp14, %edi
	cmovneq	%rsi, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rsi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	(%r10), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	(%r11), %rsi
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	(%r14), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	(%r15), %rsi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	(%r12), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	(%r13), %rsi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	(%rcx), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	(%rbx), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	(%r9), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	(%r8), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	(%rdx), %rcx
	movq	(%rdi), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	je	.LBB15_3
# %bb.2:
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	-160(%rbp), %rbx        # 8-byte Reload
	movq	-152(%rbp), %r13        # 8-byte Reload
	movq	-144(%rbp), %r14        # 8-byte Reload
	movq	-136(%rbp), %r8         # 8-byte Reload
	jmp	.LBB15_5
.LBB15_4:
	movq	16(%rsi), %rdx
	movq	24(%rsi), %rcx
	movq	32(%rsi), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	40(%rsi), %rbx
	movq	48(%rsi), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	56(%rsi), %r13
	movq	64(%rsi), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	72(%rsi), %r14
	movq	80(%rsi), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	88(%rsi), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	96(%rsi), %r8
	movq	104(%rsi), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	112(%rsi), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	120(%rsi), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	128(%rsi), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB15_5:
	leaq	136(%rsi), %r9
	jmp	.LBB15_6
.LBB15_3:
	movl	$mem_benchmark_15.sp15, %r9d
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	-160(%rbp), %rbx        # 8-byte Reload
	movq	-152(%rbp), %r13        # 8-byte Reload
	movq	-144(%rbp), %r14        # 8-byte Reload
	movq	-136(%rbp), %r8         # 8-byte Reload
.LBB15_6:
	movq	(%r9), %rax
	testq	%rdi, %rdi
	je	.LBB15_7
# %bb.8:
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	%r14, %r10
	movq	%rax, %r14
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%r10, %r12
	.p2align	4, 0x90
.LBB15_9:                               # =>This Inner Loop Header: Depth=1
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	(%rdx), %r10
	movq	(%rcx), %r11
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %r15
	movq	%r12, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %r12
	movq	(%r13), %r13
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r14), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r10), %r10
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	(%rdx), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	(%r9), %r9
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rdx
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	(%r10), %rdx
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	(%r11), %r10
	movq	(%r14), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%r15), %r11
	movq	(%r12), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r13), %r13
	movq	(%rcx), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %r12
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rcx
	movq	(%rbx), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	(%r8), %r8
	movq	(%rsi), %rsi
	movq	(%rdi), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rax
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	(%r9), %r9
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rbx
	movq	%rbx, -80(%rbp)         # 8-byte Spill
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %r14
	movq	%r11, %rbx
	movq	%r10, %rcx
	addq	$-1, %rdi
	jne	.LBB15_9
	jmp	.LBB15_10
.LBB15_7:
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdi
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%r14, %r12
	movq	%rdi, %r14
.LBB15_10:
	movq	%rdx, mem_benchmark_15.sp0(%rip)
	movq	%rcx, mem_benchmark_15.sp1(%rip)
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, mem_benchmark_15.sp2(%rip)
	movq	%rbx, mem_benchmark_15.sp3(%rip)
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, mem_benchmark_15.sp4(%rip)
	movq	%r13, mem_benchmark_15.sp5(%rip)
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, mem_benchmark_15.sp6(%rip)
	movq	%r12, mem_benchmark_15.sp7(%rip)
	movq	%rax, mem_benchmark_15.sp8(%rip)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, mem_benchmark_15.sp9(%rip)
	movq	%r8, mem_benchmark_15.sp10(%rip)
	movq	%rsi, mem_benchmark_15.sp11(%rip)
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, mem_benchmark_15.sp12(%rip)
	movq	%r9, mem_benchmark_15.sp13(%rip)
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, mem_benchmark_15.sp14(%rip)
	movq	%r14, mem_benchmark_15.sp15(%rip)
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, mem_benchmark_15.addr_save(%rip)
	movb	$1, mem_benchmark_rerun(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end15:
	.size	mem_benchmark_15, .Lfunc_end15-mem_benchmark_15
	.cfi_endproc
                                        # -- End function
	.globl	mem_reset               # -- Begin function mem_reset
	.p2align	4, 0x90
	.type	mem_reset,@function
mem_reset:                              # @mem_reset
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	$0, mem_benchmark_rerun(%rip)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end16:
	.size	mem_reset, .Lfunc_end16-mem_reset
	.cfi_endproc
                                        # -- End function
	.globl	mem_cleanup             # -- Begin function mem_cleanup
	.p2align	4, 0x90
	.type	mem_cleanup,@function
mem_cleanup:                            # @mem_cleanup
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
	testq	%rdi, %rdi
	jne	.LBB17_9
# %bb.1:
	movq	%rsi, %rbx
	movq	(%rsi), %rdi
	testq	%rdi, %rdi
	je	.LBB17_3
# %bb.2:
	callq	free
	movq	$0, (%rbx)
.LBB17_3:
	movq	216(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB17_5
# %bb.4:
	callq	free
	movq	$0, 216(%rbx)
.LBB17_5:
	movq	208(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB17_7
# %bb.6:
	callq	free
	movq	$0, 208(%rbx)
.LBB17_7:
	movq	224(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB17_9
# %bb.8:
	callq	free
	movq	$0, 224(%rbx)
.LBB17_9:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end17:
	.size	mem_cleanup, .Lfunc_end17-mem_cleanup
	.cfi_endproc
                                        # -- End function
	.globl	tlb_cleanup             # -- Begin function tlb_cleanup
	.p2align	4, 0x90
	.type	tlb_cleanup,@function
tlb_cleanup:                            # @tlb_cleanup
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
	testq	%rdi, %rdi
	jne	.LBB18_12
# %bb.1:
	movq	%rsi, %r14
	movq	(%rsi), %r15
	testq	%r15, %r15
	je	.LBB18_8
# %bb.2:
	movq	192(%r14), %rax
	testq	%rax, %rax
	je	.LBB18_7
# %bb.3:
	xorl	%ebx, %ebx
	jmp	.LBB18_4
	.p2align	4, 0x90
.LBB18_6:                               #   in Loop: Header=BB18_4 Depth=1
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jae	.LBB18_7
.LBB18_4:                               # =>This Inner Loop Header: Depth=1
	movq	(%r15,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.LBB18_6
# %bb.5:                                #   in Loop: Header=BB18_4 Depth=1
	callq	free
	movq	192(%r14), %rax
	jmp	.LBB18_6
.LBB18_7:
	movq	%r15, %rdi
	callq	free
	movq	$0, (%r14)
.LBB18_8:
	movq	208(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB18_10
# %bb.9:
	callq	free
	movq	$0, 208(%r14)
.LBB18_10:
	movq	216(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB18_12
# %bb.11:
	callq	free
	movq	$0, 216(%r14)
.LBB18_12:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end18:
	.size	tlb_cleanup, .Lfunc_end18-tlb_cleanup
	.cfi_endproc
                                        # -- End function
	.globl	base_initialize         # -- Begin function base_initialize
	.p2align	4, 0x90
	.type	base_initialize,@function
base_initialize:                        # @base_initialize
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
	testq	%rdi, %rdi
	jne	.LBB19_4
# %bb.1:
	movq	%rsi, %rbx
	movl	$0, 144(%rsi)
	movq	152(%rsi), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	168(%rsi), %r13
	movq	176(%rsi), %r14
	leaq	-1(%r14), %r15
	movq	160(%rsi), %rax
	addq	%r15, %rax
	xorl	%edx, %edx
	divq	%r14
	movq	%rax, %r12
	callq	getpid
	movl	%eax, %edi
	callq	srand
	movq	176(%rbx), %rsi
	movq	%r12, %rdi
	callq	permutation
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	176(%rbx), %r12
	leaq	(%r12,%r12), %rdi
	addq	160(%rbx), %rdi
	callq	malloc
	movq	%rax, (%rbx)
	testq	%rax, %rax
	je	.LBB19_5
# %bb.2:
	movq	%rax, %rcx
	addq	-56(%rbp), %r15         # 8-byte Folded Reload
	movq	%r15, %rax
	xorl	%edx, %edx
	divq	%r14
	movq	%rax, %rsi
	movq	%r14, %rax
	xorl	%edx, %edx
	divq	%r13
	shrq	$3, %r13
	movq	%r13, 200(%rbx)
	movq	%rax, 184(%rbx)
	movq	%rsi, 192(%rbx)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, 208(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 216(%rbx)
	testq	%rax, %rax
	je	.LBB19_4
# %bb.3:
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%r12
	subq	%rdx, %r12
	addq	%rcx, %r12
	testq	%rdx, %rdx
	cmoveq	%rcx, %r12
	movq	%r12, 8(%rbx)
	movl	$1, 144(%rbx)
	movb	$0, mem_benchmark_rerun(%rip)
.LBB19_4:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB19_5:
	.cfi_def_cfa %rbp, 16
	movl	$.L.str, %edi
	callq	perror
	movl	$1, %edi
	callq	exit
.Lfunc_end19:
	.size	base_initialize, .Lfunc_end19-base_initialize
	.cfi_endproc
                                        # -- End function
	.globl	stride_initialize       # -- Begin function stride_initialize
	.p2align	4, 0x90
	.type	stride_initialize,@function
stride_initialize:                      # @stride_initialize
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
	movq	%rsi, %r14
	movq	152(%rsi), %r15
	movq	168(%rsi), %rbx
	callq	base_initialize
	cmpl	$0, 144(%r14)
	je	.LBB20_5
# %bb.1:
	movq	8(%r14), %rax
	movq	%rbx, %rsi
	cmpq	%r15, %rbx
	jae	.LBB20_4
# %bb.2:
	leaq	(%rax,%rbx), %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB20_3:                               # =>This Inner Loop Header: Depth=1
	leaq	(%rcx,%rdx), %rsi
	movq	%rsi, (%rax,%rdx)
	addq	%rbx, %rdx
	leaq	(%rbx,%rdx), %rsi
	cmpq	%r15, %rsi
	jb	.LBB20_3
.LBB20_4:
	subq	%rbx, %rsi
	movq	%rax, (%rax,%rsi)
	movq	%rax, 16(%r14)
	movb	$0, mem_benchmark_rerun(%rip)
.LBB20_5:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end20:
	.size	stride_initialize, .Lfunc_end20-stride_initialize
	.cfi_endproc
                                        # -- End function
	.globl	thrash_initialize       # -- Begin function thrash_initialize
	.p2align	4, 0x90
	.type	thrash_initialize,@function
thrash_initialize:                      # @thrash_initialize
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
	movq	%rsi, %r14
	callq	base_initialize
	cmpl	$0, 144(%r14)
	je	.LBB21_48
# %bb.1:
	movq	8(%r14), %r13
	movq	152(%r14), %rsi
	movq	176(%r14), %rcx
	movq	%rsi, %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	168(%r14), %rbx
	testq	%rdx, %rdx
	movq	%rbx, %rax
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	je	.LBB21_22
# %bb.2:
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %rax
	xorl	%edx, %edx
	divq	%rbx
	movq	%rax, %r15
	movq	%rax, 200(%r14)
	leaq	(,%rax,8), %rbx
	movq	%rbx, %rdi
	callq	malloc
	testq	%rax, %rax
	je	.LBB21_49
# %bb.3:
	movq	%rax, %r12
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	memset
	movq	%r15, %rcx
	shrq	%rcx
	movl	$64, %edx
	movl	$64, %eax
	je	.LBB21_5
# %bb.4:
	bsrq	%rcx, %rax
	xorq	$63, %rax
.LBB21_5:
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	-48(%rbp), %rcx         # 8-byte Folded Reload
	ja	.LBB21_13
# %bb.6:
	subq	%rax, %rdx
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movslq	%ecx, %r8
	movl	$64, %edi
	subq	%rax, %rdi
	xorl	%esi, %esi
	testq	%rdx, %rdx
	jne	.LBB21_8
	.p2align	4, 0x90
.LBB21_12:                              # =>This Inner Loop Header: Depth=1
	movq	(%r12,%rsi,8), %rax
	imulq	%r8, %rax
	movq	%rax, (%r12,%rsi,8)
	addq	$1, %rsi
	cmpq	%r15, %rsi
	je	.LBB21_13
# %bb.7:                                #   in Loop: Header=BB21_12 Depth=1
	testq	%rdx, %rdx
	je	.LBB21_12
.LBB21_8:
	xorl	%eax, %eax
	jmp	.LBB21_9
	.p2align	4, 0x90
.LBB21_11:                              #   in Loop: Header=BB21_9 Depth=1
	addq	$1, %rax
	cmpq	%rax, %rdi
	je	.LBB21_12
.LBB21_9:                               # =>This Inner Loop Header: Depth=1
	movl	$1, %ebx
	movl	%eax, %ecx
	shll	%cl, %ebx
	movslq	%ebx, %rcx
	testq	%rcx, %rsi
	je	.LBB21_11
# %bb.10:                               #   in Loop: Header=BB21_9 Depth=1
	movl	%eax, %ecx
	xorl	%r9d, %ecx
	addl	%edx, %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	movslq	%ebx, %rcx
	orq	%rcx, (%r12,%rsi,8)
	jmp	.LBB21_11
.LBB21_13:
	movq	%r12, 224(%r14)
	movq	%r15, %rdx
	addq	$-1, %rdx
	je	.LBB21_14
# %bb.15:
	addq	$-2, %r15
	movl	%edx, %eax
	andl	$3, %eax
	cmpq	$3, %r15
	jae	.LBB21_17
# %bb.16:
	xorl	%ecx, %ecx
	testq	%rax, %rax
	jne	.LBB21_20
	jmp	.LBB21_21
.LBB21_22:
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%rbx
	movq	%rax, %r15
	movq	%rax, 200(%r14)
	leaq	(,%rax,8), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	malloc
	testq	%rax, %rax
	je	.LBB21_50
# %bb.23:
	movq	%rax, %r12
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	memset
	movq	%r15, %rcx
	shrq	%rcx
	movl	$64, %edx
	movl	$64, %eax
	je	.LBB21_25
# %bb.24:
	bsrq	%rcx, %rax
	xorq	$63, %rax
.LBB21_25:
	cmpq	-48(%rbp), %rbx         # 8-byte Folded Reload
	ja	.LBB21_33
# %bb.26:
	subq	%rax, %rdx
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movslq	-56(%rbp), %r8          # 4-byte Folded Reload
	movl	$64, %edi
	subq	%rax, %rdi
	xorl	%esi, %esi
	testq	%rdx, %rdx
	jne	.LBB21_28
	.p2align	4, 0x90
.LBB21_32:                              # =>This Inner Loop Header: Depth=1
	movq	(%r12,%rsi,8), %rax
	imulq	%r8, %rax
	movq	%rax, (%r12,%rsi,8)
	addq	$1, %rsi
	cmpq	%r15, %rsi
	je	.LBB21_33
# %bb.27:                               #   in Loop: Header=BB21_32 Depth=1
	testq	%rdx, %rdx
	je	.LBB21_32
.LBB21_28:
	xorl	%eax, %eax
	jmp	.LBB21_29
	.p2align	4, 0x90
.LBB21_31:                              #   in Loop: Header=BB21_29 Depth=1
	addq	$1, %rax
	cmpq	%rax, %rdi
	je	.LBB21_32
.LBB21_29:                              # =>This Inner Loop Header: Depth=1
	movl	$1, %ebx
	movl	%eax, %ecx
	shll	%cl, %ebx
	movslq	%ebx, %rcx
	testq	%rcx, %rsi
	je	.LBB21_31
# %bb.30:                               #   in Loop: Header=BB21_29 Depth=1
	movl	%eax, %ecx
	xorl	%r9d, %ecx
	addl	%edx, %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	movslq	%ebx, %rcx
	orq	%rcx, (%r12,%rsi,8)
	jmp	.LBB21_31
.LBB21_33:
	movq	%r12, 224(%r14)
	movq	192(%r14), %r8
	movq	208(%r14), %rax
	movq	(%rax), %r9
	cmpq	$1, %r8
	jne	.LBB21_35
# %bb.34:
	xorl	%r10d, %r10d
	movq	%r9, %r11
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	cmpq	%rdx, %rcx
	jbe	.LBB21_43
	jmp	.LBB21_46
.LBB21_14:
	xorl	%ecx, %ecx
	jmp	.LBB21_21
.LBB21_17:
	subq	%rax, %rdx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB21_18:                              # =>This Inner Loop Header: Depth=1
	movq	8(%r12,%rcx,8), %rsi
	addq	%r13, %rsi
	movq	(%r12,%rcx,8), %rdi
	movq	%rsi, (%r13,%rdi)
	movq	224(%r14), %rsi
	movq	16(%rsi,%rcx,8), %rdi
	addq	%r13, %rdi
	movq	8(%rsi,%rcx,8), %rsi
	movq	%rdi, (%r13,%rsi)
	movq	224(%r14), %rsi
	movq	24(%rsi,%rcx,8), %rdi
	addq	%r13, %rdi
	movq	16(%rsi,%rcx,8), %rsi
	movq	%rdi, (%r13,%rsi)
	movq	224(%r14), %rsi
	movq	32(%rsi,%rcx,8), %rdi
	addq	%r13, %rdi
	movq	24(%rsi,%rcx,8), %rsi
	addq	$4, %rcx
	movq	%rdi, (%r13,%rsi)
	movq	224(%r14), %r12
	addq	$-4, %rdx
	jne	.LBB21_18
# %bb.19:
	testq	%rax, %rax
	je	.LBB21_21
	.p2align	4, 0x90
.LBB21_20:                              # =>This Inner Loop Header: Depth=1
	movq	8(%r12,%rcx,8), %rdx
	addq	%r13, %rdx
	movq	(%r12,%rcx,8), %rsi
	addq	$1, %rcx
	movq	%rdx, (%r13,%rsi)
	movq	224(%r14), %r12
	addq	$-1, %rax
	jne	.LBB21_20
.LBB21_21:
	movq	(%r12,%rcx,8), %rax
	movq	%r13, (%r13,%rax)
	jmp	.LBB21_47
.LBB21_35:
	addq	$-1, %r8
	movl	$1, %r12d
	xorl	%r10d, %r10d
	movq	%r9, %r11
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB21_38
	.p2align	4, 0x90
.LBB21_37:                              #   in Loop: Header=BB21_38 Depth=1
	movq	8(%rax,%r9,8), %r11
	addq	$1, %r12
	cmpq	%r8, %r10
	jae	.LBB21_41
.LBB21_38:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_40 Depth 2
	movq	%r10, %r9
	addq	$1, %r10
	cmpq	%rdx, %rcx
	ja	.LBB21_37
# %bb.39:                               #   in Loop: Header=BB21_38 Depth=1
	movq	8(%rax,%r9,8), %rdi
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB21_40:                              #   Parent Loop BB21_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	224(%r14), %rcx
	leaq	(%r9,%rbx), %rax
	xorl	%edx, %edx
	divq	%r15
	movq	(%rcx,%rdx,8), %rsi
	addq	%r11, %rsi
	leaq	(%r12,%rbx), %rax
	xorl	%edx, %edx
	divq	%r15
	movq	(%rcx,%rdx,8), %rax
	addq	%rdi, %rax
	addq	%r13, %rax
	movq	%rax, (%r13,%rsi)
	addq	$1, %rbx
	cmpq	%r15, %rbx
	jb	.LBB21_40
# %bb.36:                               #   in Loop: Header=BB21_38 Depth=1
	movq	208(%r14), %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB21_37
.LBB21_41:
	movq	(%rax), %r9
	cmpq	%rdx, %rcx
	ja	.LBB21_46
.LBB21_43:
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB21_44:                              # =>This Inner Loop Header: Depth=1
	movq	224(%r14), %rsi
	leaq	(%r10,%rcx), %rax
	xorl	%edx, %edx
	divq	%r15
	movq	(%rsi,%rdx,8), %rdi
	addq	%r11, %rdi
	addq	$1, %rcx
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%r15
	movq	(%rsi,%rdx,8), %rax
	addq	%r9, %rax
	addq	%r13, %rax
	movq	%rax, (%r13,%rdi)
	cmpq	%r15, %rcx
	jb	.LBB21_44
# %bb.45:
	movq	208(%r14), %rax
	movq	(%rax), %r9
.LBB21_46:
	addq	%r9, %r13
.LBB21_47:
	movq	%r13, 16(%r14)
	movb	$0, mem_benchmark_rerun(%rip)
.LBB21_48:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB21_49:
	.cfi_def_cfa %rbp, 16
	movq	$0, 224(%r14)
	movl	$.L.str.1, %edi
	callq	perror
	movl	$1, %edi
	callq	exit
.LBB21_50:
	movq	$0, 224(%r14)
	movl	$.L.str.1, %edi
	callq	perror
	movl	$2, %edi
	callq	exit
.Lfunc_end21:
	.size	thrash_initialize, .Lfunc_end21-thrash_initialize
	.cfi_endproc
                                        # -- End function
	.globl	words_initialize        # -- Begin function words_initialize
	.p2align	4, 0x90
	.type	words_initialize,@function
words_initialize:                       # @words_initialize
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
	movl	%esi, %r15d
	movq	%rdi, %r14
	leaq	(,%rdi,8), %r12
	movq	%r12, %rdi
	callq	malloc
	testq	%rax, %rax
	je	.LBB22_1
# %bb.2:
	movq	%rax, %r13
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%r12, %rdx
	callq	memset
	movq	%r14, %rcx
	shrq	%rcx
	movl	$64, %edx
	movl	$64, %eax
	je	.LBB22_4
# %bb.3:
	bsrq	%rcx, %rax
	xorq	$63, %rax
.LBB22_4:
	testq	%r14, %r14
	je	.LBB22_12
# %bb.5:
	subq	%rax, %rdx
	movslq	%r15d, %r8
	movl	$64, %edi
	subq	%rax, %rdi
	xorl	%esi, %esi
	testq	%rdx, %rdx
	jne	.LBB22_7
	.p2align	4, 0x90
.LBB22_11:                              # =>This Inner Loop Header: Depth=1
	movq	(%r13,%rsi,8), %rax
	imulq	%r8, %rax
	movq	%rax, (%r13,%rsi,8)
	addq	$1, %rsi
	cmpq	%r14, %rsi
	je	.LBB22_12
# %bb.6:                                #   in Loop: Header=BB22_11 Depth=1
	testq	%rdx, %rdx
	je	.LBB22_11
.LBB22_7:
	xorl	%eax, %eax
	jmp	.LBB22_8
	.p2align	4, 0x90
.LBB22_10:                              #   in Loop: Header=BB22_8 Depth=1
	addq	$1, %rax
	cmpq	%rax, %rdi
	je	.LBB22_11
.LBB22_8:                               # =>This Inner Loop Header: Depth=1
	movl	$1, %ebx
	movl	%eax, %ecx
	shll	%cl, %ebx
	movslq	%ebx, %rcx
	testq	%rcx, %rsi
	je	.LBB22_10
# %bb.9:                                #   in Loop: Header=BB22_8 Depth=1
	movl	%eax, %ecx
	notl	%ecx
	addl	%edx, %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	movslq	%ebx, %rcx
	orq	%rcx, (%r13,%rsi,8)
	jmp	.LBB22_10
.LBB22_1:
	xorl	%r13d, %r13d
.LBB22_12:
	movq	%r13, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end22:
	.size	words_initialize, .Lfunc_end22-words_initialize
	.cfi_endproc
                                        # -- End function
	.globl	mem_initialize          # -- Begin function mem_initialize
	.p2align	4, 0x90
	.type	mem_initialize,@function
mem_initialize:                         # @mem_initialize
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
	subq	$104, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	testq	%rdi, %rdi
	jne	.LBB23_66
# %bb.1:
	movq	%rsi, %r14
	xorl	%edi, %edi
	callq	base_initialize
	cmpl	$0, 144(%r14)
	je	.LBB23_66
# %bb.2:
	movl	$0, 144(%r14)
	movq	152(%r14), %rax
	movq	168(%r14), %r15
	xorl	%edx, %edx
	divq	%r15
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	200(%r14), %rbx
	movq	184(%r14), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	192(%r14), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rbx, %r13
	shlq	$32, %r13
	movq	%r13, -64(%rbp)         # 8-byte Spill
	sarq	$29, %r13
	movq	%r13, %rdi
	callq	malloc
	testq	%rax, %rax
	movq	%r14, -56(%rbp)         # 8-byte Spill
	movq	%rbx, -80(%rbp)         # 8-byte Spill
	je	.LBB23_14
# %bb.3:
	movq	%rax, %r12
	movslq	%ebx, %r14
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%r13, %rdx
	callq	memset
	movq	%r14, %rcx
	shrq	%rcx
	movl	$64, %r8d
	movl	$64, %eax
	je	.LBB23_5
# %bb.4:
	bsrq	%rcx, %rax
	xorq	$63, %rax
.LBB23_5:
	cmpq	$0, -64(%rbp)           # 8-byte Folded Reload
	movl	$4294967295, %ebx       # imm = 0xFFFFFFFF
	movq	-48(%rbp), %r13         # 8-byte Reload
	je	.LBB23_13
# %bb.6:
	subq	%rax, %r8
	movl	$64, %esi
	subq	%rax, %rsi
	xorl	%edi, %edi
	testq	%r8, %r8
	jne	.LBB23_9
	.p2align	4, 0x90
.LBB23_7:                               # =>This Inner Loop Header: Depth=1
	shlq	$3, (%r12,%rdi,8)
	addq	$1, %rdi
	cmpq	%r14, %rdi
	je	.LBB23_13
# %bb.8:                                #   in Loop: Header=BB23_7 Depth=1
	testq	%r8, %r8
	je	.LBB23_7
.LBB23_9:
	xorl	%eax, %eax
	jmp	.LBB23_11
	.p2align	4, 0x90
.LBB23_10:                              #   in Loop: Header=BB23_11 Depth=1
	addq	$1, %rax
	cmpq	%rax, %rsi
	je	.LBB23_7
.LBB23_11:                              # =>This Inner Loop Header: Depth=1
	movl	$1, %edx
	movl	%eax, %ecx
	shll	%cl, %edx
	movslq	%edx, %rcx
	testq	%rcx, %rdi
	je	.LBB23_10
# %bb.12:                               #   in Loop: Header=BB23_11 Depth=1
	movl	%eax, %ecx
	xorl	%ebx, %ecx
	addl	%r8d, %ecx
	movl	$1, %edx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	movslq	%edx, %rcx
	orq	%rcx, (%r12,%rdi,8)
	jmp	.LBB23_10
.LBB23_13:
	movq	-56(%rbp), %r14         # 8-byte Reload
	jmp	.LBB23_15
.LBB23_14:
	xorl	%r12d, %r12d
	movq	-48(%rbp), %r13         # 8-byte Reload
.LBB23_15:
	movq	%r12, 224(%r14)
	shlq	$32, %r13
	movq	%r13, %rbx
	sarq	$29, %rbx
	movq	%rbx, %rdi
	callq	malloc
	testq	%rax, %rax
	je	.LBB23_27
# %bb.16:
	movslq	-48(%rbp), %r14         # 4-byte Folded Reload
	movq	%rbx, %rdx
	movq	%rax, %rbx
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset
	movq	%r14, %rcx
	shrq	%rcx
	movl	$64, %r9d
	movl	$64, %eax
	je	.LBB23_18
# %bb.17:
	bsrq	%rcx, %rax
	xorq	$63, %rax
.LBB23_18:
	testq	%r13, %r13
	movl	$4294967295, %r11d      # imm = 0xFFFFFFFF
	movq	-48(%rbp), %r10         # 8-byte Reload
	je	.LBB23_26
# %bb.19:
	subq	%rax, %r9
	movslq	%r15d, %r8
	movl	$64, %edi
	subq	%rax, %rdi
	xorl	%esi, %esi
	testq	%r9, %r9
	jne	.LBB23_22
	.p2align	4, 0x90
.LBB23_20:                              # =>This Inner Loop Header: Depth=1
	movq	(%rbx,%rsi,8), %rax
	imulq	%r8, %rax
	movq	%rax, (%rbx,%rsi,8)
	addq	$1, %rsi
	cmpq	%r14, %rsi
	je	.LBB23_26
# %bb.21:                               #   in Loop: Header=BB23_20 Depth=1
	testq	%r9, %r9
	je	.LBB23_20
.LBB23_22:
	xorl	%eax, %eax
	jmp	.LBB23_24
	.p2align	4, 0x90
.LBB23_23:                              #   in Loop: Header=BB23_24 Depth=1
	addq	$1, %rax
	cmpq	%rax, %rdi
	je	.LBB23_20
.LBB23_24:                              # =>This Inner Loop Header: Depth=1
	movl	$1, %edx
	movl	%eax, %ecx
	shll	%cl, %edx
	movslq	%edx, %rcx
	testq	%rcx, %rsi
	je	.LBB23_23
# %bb.25:                               #   in Loop: Header=BB23_24 Depth=1
	movl	%eax, %ecx
	xorl	%r11d, %ecx
	addl	%r9d, %ecx
	movl	$1, %edx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	movslq	%edx, %rcx
	orq	%rcx, (%rbx,%rsi,8)
	jmp	.LBB23_23
.LBB23_26:
	movq	-56(%rbp), %r14         # 8-byte Reload
	jmp	.LBB23_28
.LBB23_27:
	xorl	%ebx, %ebx
	movq	-48(%rbp), %r10         # 8-byte Reload
.LBB23_28:
	movq	%rbx, 216(%r14)
	testq	%r12, %r12
	je	.LBB23_67
# %bb.29:
	testq	%rbx, %rbx
	je	.LBB23_67
# %bb.30:
	movq	208(%r14), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	je	.LBB23_67
# %bb.31:
	cmpq	$0, (%r14)
	je	.LBB23_67
# %bb.32:
	movq	%rbx, %r9
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movl	%ecx, %edx
	movq	8(%r14), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movabsq	$-4294967296, %rsi      # imm = 0xFFFFFFFF00000000
	addl	$-1, %r10d
	testl	%ecx, %ecx
	jle	.LBB23_57
# %bb.33:
	movq	-88(%rbp), %rax         # 8-byte Reload
	leal	-1(%rax), %r11d
	movq	%r10, -48(%rbp)         # 8-byte Spill
	movslq	%r10d, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rdx, %rax
	shlq	$32, %rax
	addq	%rsi, %rax
	sarq	$32, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	%eax, %ecx
                                        # kill: def $eax killed $eax killed $rax def $rax
	andl	$7, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	leaq	-1(%rcx), %rsi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	subq	%rax, %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	xorl	%r8d, %r8d
	movabsq	$34359738368, %r13      # imm = 0x800000000
	xorl	%ecx, %ecx
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	cmpl	%r11d, %ecx
	jl	.LBB23_36
	jmp	.LBB23_47
	.p2align	4, 0x90
.LBB23_34:
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movq	-144(%rbp), %r8         # 8-byte Reload
	cmpq	%rdx, %r8
	je	.LBB23_58
# %bb.35:
	cmpl	%r11d, %ecx
	jge	.LBB23_47
.LBB23_36:
	movq	-48(%rbp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB23_47
# %bb.37:
	movq	-88(%rbp), %rax         # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	cltd
	movq	-56(%rbp), %rsi         # 8-byte Reload
	idivl	148(%rsi)
	movl	%eax, %esi
	xorl	%r14d, %r14d
	movq	-72(%rbp), %rbx         # 8-byte Reload
	.p2align	4, 0x90
.LBB23_38:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_40 Depth 2
	testq	%r15, %r15
	je	.LBB23_41
# %bb.39:                               #   in Loop: Header=BB23_38 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax,%r8,8), %rax
	addq	%rbx, %rax
	movq	%r9, %rdi
	movq	8(%r9,%r14,8), %rdx
	addq	%rax, %rdx
	addq	(%r9,%r14,8), %rax
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB23_40:                              #   Parent Loop BB23_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%rdx,%rdi), %r10
	movq	%r10, (%rax,%rdi)
	shlq	$32, %rdi
	addq	%r13, %rdi
	sarq	$32, %rdi
	cmpq	%r15, %rdi
	jb	.LBB23_40
.LBB23_41:                              #   in Loop: Header=BB23_38 Depth=1
	movl	%ecx, %eax
	cltd
	idivl	%esi
	testl	%edx, %edx
	jne	.LBB23_44
# %bb.42:                               #   in Loop: Header=BB23_38 Depth=1
	movl	%eax, %edi
	cmpl	$15, %eax
	jg	.LBB23_44
# %bb.43:                               #   in Loop: Header=BB23_38 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax,%r8,8), %rbx
	addq	-72(%rbp), %rbx         # 8-byte Folded Reload
	addq	(%r9,%r14,8), %rbx
	movl	%edi, %eax
	cltd
	idivl	-80(%rbp)               # 4-byte Folded Reload
	movslq	%edx, %rax
	addq	(%r12,%rax,8), %rbx
	movslq	%edi, %rax
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%rbx, 16(%rdx,%rax,8)
	movq	-72(%rbp), %rbx         # 8-byte Reload
.LBB23_44:                              #   in Loop: Header=BB23_38 Depth=1
	addq	$1, %r14
	addl	$1, %ecx
	cmpl	%r11d, %ecx
	jge	.LBB23_48
# %bb.45:                               #   in Loop: Header=BB23_38 Depth=1
	cmpq	-96(%rbp), %r14         # 8-byte Folded Reload
	jl	.LBB23_38
	jmp	.LBB23_48
	.p2align	4, 0x90
.LBB23_47:
	xorl	%r14d, %r14d
.LBB23_48:
	leaq	1(%r8), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	cmpq	-128(%rbp), %r8         # 8-byte Folded Reload
	jge	.LBB23_34
# %bb.49:
	cmpl	$0, -80(%rbp)           # 4-byte Folded Reload
	jle	.LBB23_34
# %bb.50:
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	8(%rsi,%r8,8), %rdx
	movq	-72(%rbp), %rax         # 8-byte Reload
	addq	%rax, %rdx
	movq	%r9, %rdi
	addq	(%r9), %rdx
	movq	(%rsi,%r8,8), %rsi
	addq	%rax, %rsi
	movl	%r14d, %eax
	addq	(%r9,%rax,8), %rsi
	cmpq	$7, -112(%rbp)          # 8-byte Folded Reload
	jae	.LBB23_52
# %bb.51:
	xorl	%edi, %edi
	jmp	.LBB23_54
	.p2align	4, 0x90
.LBB23_52:
	xorl	%edi, %edi
	movq	-104(%rbp), %r8         # 8-byte Reload
	.p2align	4, 0x90
.LBB23_53:                              # =>This Inner Loop Header: Depth=1
	movq	(%r12,%rdi,8), %rax
	leaq	(%rdx,%rax), %rbx
	movq	%rbx, (%rsi,%rax)
	movq	8(%r12,%rdi,8), %rax
	leaq	(%rdx,%rax), %rbx
	movq	%rbx, (%rsi,%rax)
	movq	16(%r12,%rdi,8), %rax
	leaq	(%rdx,%rax), %rbx
	movq	%rbx, (%rsi,%rax)
	movq	24(%r12,%rdi,8), %rax
	leaq	(%rdx,%rax), %rbx
	movq	%rbx, (%rsi,%rax)
	movq	32(%r12,%rdi,8), %rax
	leaq	(%rdx,%rax), %rbx
	movq	%rbx, (%rsi,%rax)
	movq	40(%r12,%rdi,8), %rax
	leaq	(%rdx,%rax), %rbx
	movq	%rbx, (%rsi,%rax)
	movq	48(%r12,%rdi,8), %rax
	leaq	(%rdx,%rax), %rbx
	movq	%rbx, (%rsi,%rax)
	movq	56(%r12,%rdi,8), %rax
	leaq	(%rdx,%rax), %rbx
	movq	%rbx, (%rsi,%rax)
	addq	$8, %rdi
	cmpq	%rdi, %r8
	jne	.LBB23_53
.LBB23_54:
	movq	-120(%rbp), %r10        # 8-byte Reload
	testq	%r10, %r10
	je	.LBB23_34
# %bb.55:
	leaq	(%r12,%rdi,8), %r8
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB23_56:                              # =>This Inner Loop Header: Depth=1
	movq	(%r8,%rax,8), %rbx
	leaq	(%rdx,%rbx), %rdi
	movq	%rdi, (%rsi,%rbx)
	addq	$1, %rax
	cmpq	%rax, %r10
	jne	.LBB23_56
	jmp	.LBB23_34
.LBB23_57:
	movl	%r10d, %r14d
.LBB23_58:
	movq	-80(%rbp), %r10         # 8-byte Reload
	testl	%r10d, %r10d
	movl	$4294967295, %r15d      # imm = 0xFFFFFFFF
	movq	-72(%rbp), %rbx         # 8-byte Reload
	jle	.LBB23_65
# %bb.59:
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rax
	addq	%rbx, %rax
	addq	(%r9), %rax
	shlq	$32, %rdx
	movabsq	$-4294967296, %rsi      # imm = 0xFFFFFFFF00000000
	addq	%rsi, %rdx
	sarq	$29, %rdx
	addq	(%rcx,%rdx), %rbx
	movslq	%r14d, %rcx
	addq	(%r9,%rcx,8), %rbx
	addl	%r10d, %r15d
	movl	%r10d, %r11d
	movl	%r10d, %r8d
	andl	$1, %r8d
	cmpq	$1, %r11
	jne	.LBB23_61
# %bb.60:
	xorl	%edi, %edi
	testq	%r8, %r8
	jne	.LBB23_64
	jmp	.LBB23_65
.LBB23_61:
	subq	%r8, %r11
	xorl	%r9d, %r9d
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB23_62:                              # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdx
	leaq	1(%rdi), %rbx
	cmpq	%rdi, %r15
	movl	%ebx, %ecx
	cmoveq	%r9, %rcx
	movq	(%r12,%rcx,8), %rcx
	addq	%rax, %rcx
	movq	(%r12,%rdi,8), %rsi
	movq	%rcx, (%rdx,%rsi)
	movq	8(%r12,%rdi,8), %rcx
	addq	$2, %rdi
	movl	%edi, %esi
	andl	$-2, %esi
	cmpq	%r15, %rbx
	movq	%rdx, %rbx
	cmoveq	%r9, %rsi
	movq	(%r12,%rsi,8), %rsi
	addq	%rax, %rsi
	movq	%rsi, (%rdx,%rcx)
	cmpq	%rdi, %r11
	jne	.LBB23_62
# %bb.63:
	testq	%r8, %r8
	je	.LBB23_65
.LBB23_64:
	leal	1(%rdi), %ecx
	xorl	%esi, %esi
	cmpq	%r15, %rdi
	cmovneq	%rcx, %rsi
	addq	(%r12,%rsi,8), %rax
	movq	(%r12,%rdi,8), %rcx
	movq	%rax, (%rbx,%rcx)
.LBB23_65:
	movb	$0, mem_benchmark_rerun(%rip)
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movslq	148(%rbx), %rax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	imull	%r10d, %ecx
	addl	$100, %ecx
	movslq	%ecx, %rcx
	imulq	$1374389535, %rcx, %rcx # imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$37, %rcx
	addl	%edx, %ecx
	movslq	%ecx, %rdi
	movq	%rbx, %rsi
	callq	*mem_benchmarks-8(,%rax,8)
	movl	$1, 144(%rbx)
.LBB23_66:
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB23_67:
	.cfi_def_cfa %rbp, 16
	movl	$.L.str.2, %edi
	callq	perror
	movl	$1, %edi
	callq	exit
.Lfunc_end23:
	.size	mem_initialize, .Lfunc_end23-mem_initialize
	.cfi_endproc
                                        # -- End function
	.globl	line_initialize         # -- Begin function line_initialize
	.p2align	4, 0x90
	.type	line_initialize,@function
line_initialize:                        # @line_initialize
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
	testq	%rdi, %rdi
	je	.LBB24_1
.LBB24_31:
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB24_1:
	.cfi_def_cfa %rbp, 16
	movq	%rsi, %r12
	xorl	%edi, %edi
	callq	base_initialize
	cmpl	$0, 144(%r12)
	je	.LBB24_31
# %bb.2:
	movl	$0, 144(%r12)
	movq	168(%r12), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	184(%r12), %r13
	movq	192(%r12), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%r13, %r14
	shlq	$32, %r14
	movq	%r14, %r15
	sarq	$29, %r15
	movq	%r15, %rdi
	callq	malloc
	testq	%rax, %rax
	movq	%r12, -56(%rbp)         # 8-byte Spill
	movq	%r13, -72(%rbp)         # 8-byte Spill
	je	.LBB24_3
# %bb.4:
	movq	%rax, %rbx
	movslq	%r13d, %r12
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%r15, %rdx
	callq	memset
	movq	%r12, %rcx
	shrq	%rcx
	movl	$64, %r9d
	movl	$64, %eax
	je	.LBB24_6
# %bb.5:
	bsrq	%rcx, %rax
	xorq	$63, %rax
.LBB24_6:
	testq	%r14, %r14
	je	.LBB24_14
# %bb.7:
	subq	%rax, %r9
	movslq	-48(%rbp), %r8          # 4-byte Folded Reload
	movl	$64, %edi
	subq	%rax, %rdi
	xorl	%esi, %esi
	testq	%r9, %r9
	jne	.LBB24_9
	.p2align	4, 0x90
.LBB24_13:                              # =>This Inner Loop Header: Depth=1
	movq	(%rbx,%rsi,8), %rax
	imulq	%r8, %rax
	movq	%rax, (%rbx,%rsi,8)
	addq	$1, %rsi
	cmpq	%r12, %rsi
	je	.LBB24_14
# %bb.8:                                #   in Loop: Header=BB24_13 Depth=1
	testq	%r9, %r9
	je	.LBB24_13
.LBB24_9:
	xorl	%eax, %eax
	jmp	.LBB24_10
	.p2align	4, 0x90
.LBB24_12:                              #   in Loop: Header=BB24_10 Depth=1
	addq	$1, %rax
	cmpq	%rax, %rdi
	je	.LBB24_13
.LBB24_10:                              # =>This Inner Loop Header: Depth=1
	movl	$1, %edx
	movl	%eax, %ecx
	shll	%cl, %edx
	movslq	%edx, %rcx
	testq	%rcx, %rsi
	je	.LBB24_12
# %bb.11:                               #   in Loop: Header=BB24_10 Depth=1
	movl	%eax, %ecx
	notl	%ecx
	addl	%r9d, %ecx
	movl	$1, %edx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	movslq	%edx, %rcx
	orq	%rcx, (%rbx,%rsi,8)
	jmp	.LBB24_12
.LBB24_14:
	movq	-56(%rbp), %r12         # 8-byte Reload
	jmp	.LBB24_15
.LBB24_3:
	xorl	%ebx, %ebx
.LBB24_15:
	movq	%rbx, 216(%r12)
	movq	208(%r12), %rdx
	movq	(%r12), %rax
	movq	8(%r12), %r11
	movl	$1, 148(%r12)
	testq	%rdx, %rdx
	je	.LBB24_31
# %bb.16:
	testq	%rbx, %rbx
	je	.LBB24_31
# %bb.17:
	testq	%rax, %rax
	je	.LBB24_31
# %bb.18:
	cmpl	$0, -64(%rbp)           # 4-byte Folded Reload
	jle	.LBB24_30
# %bb.19:
	movl	-64(%rbp), %ecx         # 4-byte Reload
	movq	-72(%rbp), %rax         # 8-byte Reload
	leal	-1(%rax), %edi
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	shlq	$32, %rax
	movabsq	$-4294967296, %rcx      # imm = 0xFFFFFFFF00000000
	addq	%rax, %rcx
	sarq	$32, %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movq	(%rbx), %rax
	addq	%r11, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	%edi, %esi
	andl	$7, %esi
	leaq	-1(%rdi), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rdi, %r9
	subq	%rsi, %r9
	leaq	8(%rbx), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	xorl	%r12d, %r12d
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB24_20
	.p2align	4, 0x90
.LBB24_29:                              #   in Loop: Header=BB24_20 Depth=1
	cmpq	-112(%rbp), %r12        # 8-byte Folded Reload
	leaq	1(%r12), %r12
	movl	%r12d, %eax
	movl	$0, %ecx
	cmovgeq	%rcx, %rax
	movq	(%rdx,%rax,8), %rax
	addq	-104(%rbp), %rax        # 8-byte Folded Reload
	addq	%r11, %r15
	movl	%r8d, %ecx
	movq	(%rbx,%rcx,8), %rcx
	movq	%rax, (%rcx,%r15)
	cmpq	-120(%rbp), %r12        # 8-byte Folded Reload
	je	.LBB24_30
.LBB24_20:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_24 Depth 2
                                        #     Child Loop BB24_27 Depth 2
	movq	(%rdx,%r12,8), %r15
	movl	$0, %r8d
	testl	%edi, %edi
	jle	.LBB24_29
# %bb.21:                               #   in Loop: Header=BB24_20 Depth=1
	leaq	(%r11,%r15), %r13
	movq	(%rbx), %r10
	cmpq	$7, -96(%rbp)           # 8-byte Folded Reload
	jae	.LBB24_23
# %bb.22:                               #   in Loop: Header=BB24_20 Depth=1
	xorl	%r14d, %r14d
	jmp	.LBB24_25
	.p2align	4, 0x90
.LBB24_23:                              #   in Loop: Header=BB24_20 Depth=1
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB24_24:                              #   Parent Loop BB24_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%rbx,%r14,8), %rax
	leaq	(%rax,%r13), %rcx
	movq	%rcx, (%r13,%r10)
	movq	16(%rbx,%r14,8), %rcx
	leaq	(%rcx,%r13), %rdi
	movq	%rdi, (%r13,%rax)
	movq	24(%rbx,%r14,8), %rax
	leaq	(%r13,%rax), %rdi
	movq	%rdi, (%r13,%rcx)
	movq	32(%rbx,%r14,8), %rcx
	leaq	(%r13,%rcx), %rdi
	movq	%rdi, (%r13,%rax)
	movq	40(%rbx,%r14,8), %rax
	leaq	(%r13,%rax), %rdi
	movq	%rdi, (%r13,%rcx)
	movq	48(%rbx,%r14,8), %rcx
	leaq	(%r13,%rcx), %rdi
	movq	%rdi, (%r13,%rax)
	movq	56(%rbx,%r14,8), %rax
	leaq	(%rax,%r13), %rdi
	movq	%rdi, (%r13,%rcx)
	movq	64(%rbx,%r14,8), %r10
	addq	$8, %r14
	leaq	(%r10,%r13), %rcx
	movq	%rcx, (%r13,%rax)
	cmpq	%r14, %r9
	jne	.LBB24_24
.LBB24_25:                              #   in Loop: Header=BB24_20 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%edi, %r8d
	testq	%rsi, %rsi
	je	.LBB24_29
# %bb.26:                               #   in Loop: Header=BB24_20 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r14,8), %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB24_27:                              #   Parent Loop BB24_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax,%rcx,8), %rdi
	leaq	(%rdi,%r13), %rdx
	movq	%rdx, (%r13,%r10)
	addq	$1, %rcx
	movq	%rdi, %r10
	cmpq	%rcx, %rsi
	jne	.LBB24_27
# %bb.28:                               #   in Loop: Header=BB24_20 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%edi, %r8d
	movq	-88(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB24_29
.LBB24_30:
	addq	(%rdx), %r11
	addq	(%rbx), %r11
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%r11, 16(%rbx)
	movb	$0, mem_benchmark_rerun(%rip)
	movq	-64(%rbp), %rax         # 8-byte Reload
	imull	-72(%rbp), %eax         # 4-byte Folded Reload
	addl	$100, %eax
	cltq
	imulq	$1374389535, %rax, %rax # imm = 0x51EB851F
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$37, %rax
	addl	%ecx, %eax
	movslq	%eax, %rdi
	movq	%rbx, %rsi
	callq	mem_benchmark_0
	movl	$1, 144(%rbx)
	jmp	.LBB24_31
.Lfunc_end24:
	.size	line_initialize, .Lfunc_end24-line_initialize
	.cfi_endproc
                                        # -- End function
	.globl	tlb_initialize          # -- Begin function tlb_initialize
	.p2align	4, 0x90
	.type	tlb_initialize,@function
tlb_initialize:                         # @tlb_initialize
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
	subq	$56, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	testq	%rdi, %rdi
	jne	.LBB25_31
# %bb.1:
	movl	$0, 144(%rsi)
	movq	152(%rsi), %rax
	movq	176(%rsi), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movslq	%ecx, %r12
	movq	%r12, %r14
	shrq	$3, %r14
	xorl	%edx, %edx
	divq	%r12
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	getpid
	movl	%eax, %ebx
	callq	getppid
	shll	$7, %eax
	xorl	%ebx, %eax
	movl	%eax, %edi
	callq	srand
	movq	%r14, -96(%rbp)         # 8-byte Spill
	shlq	$32, %r14
	movq	%r12, %r13
	sarq	$3, %r13
	movq	%r14, %rbx
	sarq	$29, %rbx
	movq	%rbx, %rdi
	callq	malloc
	testq	%rax, %rax
	movq	%r13, -64(%rbp)         # 8-byte Spill
	je	.LBB25_2
# %bb.3:
	movq	%rax, %r15
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	memset
	movq	%r13, %rcx
	shrq	%rcx
	movl	$64, %edx
	movl	$64, %eax
	je	.LBB25_5
# %bb.4:
	bsrq	%rcx, %rax
	xorq	$63, %rax
.LBB25_5:
	testq	%r14, %r14
	je	.LBB25_13
# %bb.6:
	subq	%rax, %rdx
	movl	$64, %esi
	subq	%rax, %rsi
	xorl	%edi, %edi
	testq	%rdx, %rdx
	jne	.LBB25_8
	.p2align	4, 0x90
.LBB25_12:                              # =>This Inner Loop Header: Depth=1
	shlq	$3, (%r15,%rdi,8)
	addq	$1, %rdi
	cmpq	%r13, %rdi
	je	.LBB25_13
# %bb.7:                                #   in Loop: Header=BB25_12 Depth=1
	testq	%rdx, %rdx
	je	.LBB25_12
.LBB25_8:
	xorl	%eax, %eax
	jmp	.LBB25_9
	.p2align	4, 0x90
.LBB25_11:                              #   in Loop: Header=BB25_9 Depth=1
	addq	$1, %rax
	cmpq	%rax, %rsi
	je	.LBB25_12
.LBB25_9:                               # =>This Inner Loop Header: Depth=1
	movl	$1, %ebx
	movl	%eax, %ecx
	shll	%cl, %ebx
	movslq	%ebx, %rcx
	testq	%rcx, %rdi
	je	.LBB25_11
# %bb.10:                               #   in Loop: Header=BB25_9 Depth=1
	movl	%eax, %ecx
	notl	%ecx
	addl	%edx, %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	movslq	%ebx, %rcx
	orq	%rcx, (%r15,%rdi,8)
	jmp	.LBB25_11
.LBB25_2:
	xorl	%r15d, %r15d
.LBB25_13:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	shlq	$32, %rbx
	movq	%rbx, -88(%rbp)         # 8-byte Spill
	sarq	$29, %rbx
	movq	%rbx, %rdi
	callq	malloc
	movq	%rax, %r13
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	callq	malloc
	testq	%r15, %r15
	je	.LBB25_32
# %bb.14:
	testq	%r13, %r13
	je	.LBB25_32
# %bb.15:
	movq	%rax, %r14
	testq	%rax, %rax
	je	.LBB25_32
# %bb.16:
	movq	-88(%rbp), %rdx         # 8-byte Reload
	sarq	$32, %rdx
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	$1, 200(%rax)
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, 184(%rax)
	movq	%rdx, 192(%rax)
	movq	$0, 224(%rax)
	movq	%r15, 216(%rax)
	movq	%r13, 208(%rax)
	movq	%r14, (%rax)
	movq	%r14, %rdi
	xorl	%esi, %esi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	callq	memset
	movq	%r13, %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	memset
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	jle	.LBB25_23
# %bb.17:
	movq	-80(%rbp), %rax         # 8-byte Reload
	addl	%eax, %eax
	cltq
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movslq	-48(%rbp), %rax         # 4-byte Folded Reload
	movq	%rax, -64(%rbp)         # 8-byte Spill
	xorl	%ebx, %ebx
	jmp	.LBB25_18
	.p2align	4, 0x90
.LBB25_21:                              #   in Loop: Header=BB25_18 Depth=1
	movq	%rax, %rcx
	xorl	%edx, %edx
	divq	%r12
	movq	%r12, %rdi
	subq	%rdx, %rdi
	addq	%rcx, %rdi
.LBB25_22:                              #   in Loop: Header=BB25_18 Depth=1
	movq	%rdi, (%r13,%rbx,8)
	addq	$1, %rbx
	cmpq	-64(%rbp), %rbx         # 8-byte Folded Reload
	jge	.LBB25_23
.LBB25_18:                              # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	callq	valloc
	movq	%rax, (%r14,%rbx,8)
	testq	%rax, %rax
	je	.LBB25_33
# %bb.19:                               #   in Loop: Header=BB25_18 Depth=1
	movq	%rax, %rdi
	xorl	%edx, %edx
	divq	%r12
	testq	%rdx, %rdx
	je	.LBB25_22
# %bb.20:                               #   in Loop: Header=BB25_18 Depth=1
	callq	free
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	valloc
	movq	%rax, (%r14,%rbx,8)
	testq	%rax, %rax
	jne	.LBB25_21
# %bb.34:
	movl	$.L.str.4, %edi
	callq	perror
	movl	$5, %edi
	callq	exit
.LBB25_23:
	callq	rand
	movl	%eax, %ebx
	callq	rand
	movq	-48(%rbp), %rcx         # 8-byte Reload
	addl	$-2, %ecx
	testl	%ecx, %ecx
	jle	.LBB25_26
# %bb.24:
	shll	$15, %ebx
	xorl	%eax, %ebx
	movslq	%ecx, %r14
	.p2align	4, 0x90
.LBB25_25:                              # =>This Inner Loop Header: Depth=1
	addl	%ebx, %ebx
	callq	rand
	sarl	$4, %eax
	xorl	%eax, %ebx
	movl	%ebx, %eax
	xorl	%edx, %edx
	divl	%r14d
                                        # kill: def $edx killed $edx def $rdx
	movq	8(%r13,%rdx,8), %rax
	movq	8(%r13,%r14,8), %rcx
	movq	%rcx, 8(%r13,%rdx,8)
	movq	%rax, 8(%r13,%r14,8)
	addq	$-1, %r14
	jg	.LBB25_25
.LBB25_26:
	movq	-48(%rbp), %rax         # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	addl	$-1, %eax
	movq	-96(%rbp), %r9          # 8-byte Reload
	jle	.LBB25_27
# %bb.28:
	movslq	%eax, %r8
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB25_29:                              # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rsi
	addq	$1, %rcx
	movq	(%r13,%rsi,8), %rbx
	movq	8(%r13,%rsi,8), %rdi
	movl	%ecx, %eax
	cltd
	idivl	%r9d
                                        # kill: def $edx killed $edx def $rdx
	addq	(%r15,%rdx,8), %rdi
	movl	%esi, %eax
	cltd
	idivl	%r9d
                                        # kill: def $edx killed $edx def $rdx
	movq	(%r15,%rdx,8), %rax
	movq	%rdi, (%rbx,%rax)
	cmpq	%r8, %rcx
	jl	.LBB25_29
	jmp	.LBB25_30
.LBB25_27:
	xorl	%ecx, %ecx
.LBB25_30:
	movq	(%r15), %rsi
	movq	(%r13), %rdi
	addq	%rsi, %rdi
	movl	%ecx, %eax
	movq	(%r13,%rax,8), %rbx
	movl	%ecx, %eax
	cltd
	idivl	%r9d
                                        # kill: def $edx killed $edx def $rdx
	movq	(%r15,%rdx,8), %rax
	movq	%rdi, (%rbx,%rax)
	addq	(%r13), %rsi
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rsi, 16(%rbx)
	movb	$0, mem_benchmark_rerun(%rip)
	movq	-48(%rbp), %rax         # 8-byte Reload
	addl	$100, %eax
	cltq
	imulq	$1374389535, %rax, %rax # imm = 0x51EB851F
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$37, %rax
	addl	%ecx, %eax
	movslq	%eax, %rdi
	movq	%rbx, %rsi
	callq	mem_benchmark_0
	movl	$1, 144(%rbx)
.LBB25_31:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB25_33:
	.cfi_def_cfa %rbp, 16
	movl	$.L.str.4, %edi
	callq	perror
	movl	$4, %edi
	callq	exit
.LBB25_32:
	movl	$.L.str.3, %edi
	callq	perror
	movl	$1, %edi
	callq	exit
.Lfunc_end25:
	.size	tlb_initialize, .Lfunc_end25-tlb_initialize
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function line_find
.LCPI26_0:
	.quad	4608533498688228557     # double 1.3
.LCPI26_1:
	.quad	4607857958744122982     # double 1.1499999999999999
.LCPI26_2:
	.quad	0                       # double 0
	.text
	.globl	line_find
	.p2align	4, 0x90
	.type	line_find,@function
line_find:                              # @line_find
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
	movq	%rcx, %r13
	movl	%edx, %r14d
	movq	%rdi, %rbx
	callq	getpagesize
	testl	%r14d, %r14d
	movl	$11, %r15d
	cmovnsl	%r14d, %r15d
	movl	$1, 148(%r13)
	movq	$8, 168(%r13)
	movq	$0, (%r13)
	movq	$-1, %rcx
	testq	%rbx, %rbx
	je	.LBB26_26
# %bb.1:
	movl	%eax, %r12d
	sarl	$31, %r12d
	shrl	$28, %r12d
	addl	%eax, %r12d
	sarl	$4, %r12d
	movslq	%r12d, %r14
	.p2align	4, 0x90
.LBB26_2:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, 160(%r13)
	movq	%rbx, 152(%r13)
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	line_initialize
	movq	(%r13), %rax
	testq	%rax, %rax
	sete	%cl
	shrq	%cl, %rbx
	testq	%rax, %rax
	jne	.LBB26_4
# %bb.3:                                #   in Loop: Header=BB26_2 Depth=1
	testq	%rbx, %rbx
	jne	.LBB26_2
.LBB26_4:
	testq	%rax, %rax
	movq	$-1, %rcx
	je	.LBB26_26
# %bb.5:
	cmpl	$8, %r12d
	jae	.LBB26_7
# %bb.6:
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB26_17
.LBB26_7:
	movl	$8, %r12d
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorps	%xmm0, %xmm0
	xorl	%ebx, %ebx
	jmp	.LBB26_8
	.p2align	4, 0x90
.LBB26_10:                              #   in Loop: Header=BB26_8 Depth=1
	movq	%rbx, %rax
.LBB26_14:                              #   in Loop: Header=BB26_8 Depth=1
	addq	%r12, %r12
	movq	%rax, %rbx
	cmpq	%r14, %r12
	ja	.LBB26_17
.LBB26_8:                               # =>This Inner Loop Header: Depth=1
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movq	%r12, %rdi
	movl	%r15d, %edx
	movq	%r13, %rcx
	callq	line_test
	ucomisd	.LCPI26_2, %xmm0
	jne	.LBB26_9
	jnp	.LBB26_17
.LBB26_9:                               #   in Loop: Header=BB26_8 Depth=1
	cmpq	$9, %r12
	jb	.LBB26_10
# %bb.11:                               #   in Loop: Header=BB26_8 Depth=1
	movsd	-56(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm2, %xmm1
	mulsd	.LCPI26_0(%rip), %xmm1
	movl	$1, %eax
	ucomisd	%xmm1, %xmm0
	ja	.LBB26_14
# %bb.12:                               #   in Loop: Header=BB26_8 Depth=1
	testq	%rbx, %rbx
	je	.LBB26_13
# %bb.15:                               #   in Loop: Header=BB26_8 Depth=1
	mulsd	.LCPI26_1(%rip), %xmm2
	ucomisd	%xmm0, %xmm2
	movq	%rbx, %rax
	jbe	.LBB26_14
	jmp	.LBB26_16
.LBB26_13:                              #   in Loop: Header=BB26_8 Depth=1
	xorl	%eax, %eax
	jmp	.LBB26_14
.LBB26_16:
	shrq	%r12
	movq	%r12, -48(%rbp)         # 8-byte Spill
.LBB26_17:
	movq	(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB26_19
# %bb.18:
	callq	free
	movq	$0, (%r13)
.LBB26_19:
	movq	216(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB26_21
# %bb.20:
	callq	free
	movq	$0, 216(%r13)
.LBB26_21:
	movq	208(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB26_23
# %bb.22:
	callq	free
	movq	$0, 208(%r13)
.LBB26_23:
	movq	224(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB26_25
# %bb.24:
	callq	free
	movq	$0, 224(%r13)
.LBB26_25:
	movq	-48(%rbp), %rcx         # 8-byte Reload
.LBB26_26:
	movq	%rcx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end26:
	.size	line_find, .Lfunc_end26-line_find
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function line_test
.LCPI27_0:
	.quad	4606732058837280358     # double 0.94999999999999996
.LCPI27_1:
	.quad	4607092346807469998     # double 0.98999999999999999
.LCPI27_2:
	.quad	4608083138725491507     # double 1.2
.LCPI27_3:
	.quad	4607632778762754458     # double 1.1000000000000001
.LCPI27_6:
	.quad	4607182418800017408     # double 1
.LCPI27_7:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
.LCPI27_8:
	.quad	4621819117588971520     # double 10
.LCPI27_9:
	.quad	0                       # double 0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI27_4:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI27_5:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.text
	.globl	line_test
	.p2align	4, 0x90
	.type	line_test,@function
line_test:                              # @line_test
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
	subq	$120, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rcx, %r15
	movl	%edx, %ecx
	movq	192(%r15), %r13
	movq	8(%r15), %r10
	movq	176(%r15), %rax
	xorl	%edx, %edx
	divq	%rdi
	movq	208(%r15), %rsi
	movq	(%rsi), %rdi
	leaq	(%r10,%rdi), %rbx
	movq	216(%r15), %rdx
	movq	(%rdx), %r14
	testl	%ecx, %ecx
	movl	$11, %r12d
	cmovnsl	%ecx, %r12d
	cmpq	184(%r15), %rax
	jae	.LBB27_12
# %bb.1:
	movq	%r13, %rcx
	addq	$-1, %rcx
	je	.LBB27_5
# %bb.2:
	movq	8(%rsi), %rsi
	addq	%r10, %rsi
	addq	%r14, %rsi
	movq	-8(%rdx,%rax,8), %rdx
	movq	%rsi, (%rdx,%rbx)
	movq	208(%r15), %rsi
	cmpq	$1, %rcx
	je	.LBB27_10
# %bb.3:
	leal	-2(%r13), %r8d
	andl	$1, %r8d
	cmpq	$3, %r13
	jne	.LBB27_6
# %bb.4:
	movl	$1, %edx
	testq	%r8, %r8
	jne	.LBB27_9
	jmp	.LBB27_10
.LBB27_5:
	movq	%r14, %rcx
	jmp	.LBB27_11
.LBB27_6:
	movq	%r8, %r9
	subq	%r13, %r9
	addq	$2, %r9
	movl	$1, %edx
	.p2align	4, 0x90
.LBB27_7:                               # =>This Inner Loop Header: Depth=1
	movq	216(%r15), %rcx
	movq	8(%rsi,%rdx,8), %rdi
	addq	%r10, %rdi
	addq	(%rcx), %rdi
	movq	(%rsi,%rdx,8), %rsi
	addq	%r10, %rsi
	movq	-8(%rcx,%rax,8), %rcx
	movq	%rdi, (%rcx,%rsi)
	movq	208(%r15), %rsi
	movq	216(%r15), %rcx
	movq	16(%rsi,%rdx,8), %rdi
	addq	%r10, %rdi
	addq	(%rcx), %rdi
	movq	8(%rsi,%rdx,8), %rsi
	addq	%r10, %rsi
	movq	-8(%rcx,%rax,8), %rcx
	movq	%rdi, (%rcx,%rsi)
	movq	208(%r15), %rsi
	leaq	(%r9,%rdx), %rcx
	addq	$2, %rcx
	addq	$2, %rdx
	cmpq	$1, %rcx
	jne	.LBB27_7
# %bb.8:
	testq	%r8, %r8
	je	.LBB27_10
.LBB27_9:
	movq	216(%r15), %rcx
	movq	8(%rsi,%rdx,8), %rdi
	addq	%r10, %rdi
	addq	(%rcx), %rdi
	movq	(%rsi,%rdx,8), %rdx
	addq	%r10, %rdx
	movq	-8(%rcx,%rax,8), %rcx
	movq	%rdi, (%rcx,%rdx)
	movq	208(%r15), %rsi
.LBB27_10:
	movq	(%rsi), %rdi
	movq	216(%r15), %rdx
	movq	(%rdx), %rcx
.LBB27_11:
	addq	%r10, %rdi
	addq	%rcx, %rdi
	addq	-8(%rsi,%r13,8), %r10
	movq	-8(%rdx,%rax,8), %rcx
	movq	%rdi, (%rcx,%r10)
.LBB27_12:
	movq	%rax, -136(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	callq	get_results
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	%r12d, %edi
	callq	sizeof_result
	movslq	%eax, %rdi
	callq	malloc
	testq	%rax, %rax
	je	.LBB27_40
# %bb.13:
	movq	%r13, -120(%rbp)        # 8-byte Spill
	addq	%r14, %rbx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	insertinit
	testl	%r12d, %r12d
	je	.LBB27_30
# %bb.14:
	movslq	%r12d, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	xorl	%r14d, %r14d
	movabsq	$-9223372036854775808, %r13 # imm = 0x8000000000000000
	jmp	.LBB27_17
	.p2align	4, 0x90
.LBB27_15:                              #   in Loop: Header=BB27_17 Depth=1
	xorpd	%xmm4, %xmm4
.LBB27_16:                              #   in Loop: Header=BB27_17 Depth=1
	movapd	%xmm4, -64(%rbp)        # 16-byte Spill
	movq	line_test.__iterations(%rip), %rdi
	callq	save_n
	movapd	-64(%rbp), %xmm2        # 16-byte Reload
	movapd	%xmm2, %xmm0
	movsd	.LCPI27_7(%rip), %xmm1  # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %rax
	xorq	%r13, %rax
	cvttsd2si	%xmm2, %rdi
	ucomisd	%xmm1, %xmm2
	cmovaeq	%rax, %rdi
	callq	settime
	callq	usecs_spent
	movq	%rax, %xmm0
	movdqa	.LCPI27_4(%rip), %xmm1  # xmm1 = [1127219200,1160773632,0,0]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movapd	.LCPI27_5(%rip), %xmm1  # xmm1 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movapd	%xmm1, -64(%rbp)        # 16-byte Spill
	callq	t_overhead
	movq	%rax, %xmm0
	punpckldq	.LCPI27_4(%rip), %xmm0 # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI27_5(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movapd	%xmm1, -112(%rbp)       # 16-byte Spill
	callq	get_n
	movq	%rax, %xmm0
	punpckldq	.LCPI27_4(%rip), %xmm0 # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI27_5(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movapd	%xmm1, -96(%rbp)        # 16-byte Spill
	callq	l_overhead
	mulsd	-96(%rbp), %xmm0        # 16-byte Folded Reload
	addsd	-112(%rbp), %xmm0       # 16-byte Folded Reload
	movapd	-64(%rbp), %xmm2        # 16-byte Reload
	subsd	%xmm0, %xmm2
	xorpd	%xmm0, %xmm0
	maxsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	movsd	.LCPI27_7(%rip), %xmm1  # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %rax
	xorq	%r13, %rax
	cvttsd2si	%xmm2, %rdi
	ucomisd	%xmm1, %xmm2
	cmovaeq	%rax, %rdi
	callq	settime
	callq	usecs_spent
	movq	%rax, %r12
	callq	get_n
	movq	%r12, %rdi
	movq	%rax, %rsi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	insertsort
	addq	$1, %r14
	cmpq	-144(%rbp), %r14        # 8-byte Folded Reload
	jae	.LBB27_30
.LBB27_17:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_22 Depth 2
                                        #       Child Loop BB27_23 Depth 3
	xorl	%edi, %edi
	callq	get_enough
	cvtsi2sd	%eax, %xmm3
	movapd	%xmm3, %xmm0
	mulsd	.LCPI27_0(%rip), %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	ucomisd	.LCPI27_9, %xmm0
	jbe	.LBB27_15
# %bb.18:                               #   in Loop: Header=BB27_17 Depth=1
	movapd	%xmm3, %xmm0
	mulsd	.LCPI27_1(%rip), %xmm0
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movapd	%xmm3, %xmm0
	mulsd	.LCPI27_2(%rip), %xmm0
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	mulsd	.LCPI27_3(%rip), %xmm3
	movsd	%xmm3, -112(%rbp)       # 8-byte Spill
	jmp	.LBB27_22
	.p2align	4, 0x90
.LBB27_19:                              #   in Loop: Header=BB27_22 Depth=2
	movq	%rcx, %xmm0
	punpckldq	.LCPI27_4(%rip), %xmm0 # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI27_5(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	divsd	%xmm4, %xmm1
	mulsd	%xmm3, %xmm1
	addsd	.LCPI27_6(%rip), %xmm1
	movapd	%xmm1, %xmm0
	movsd	.LCPI27_7(%rip), %xmm2  # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %rax
	xorq	%r13, %rax
	cvttsd2si	%xmm1, %rcx
	ucomisd	%xmm2, %xmm1
	cmovaeq	%rax, %rcx
.LBB27_20:                              #   in Loop: Header=BB27_22 Depth=2
	movq	%rcx, line_test.__iterations(%rip)
.LBB27_21:                              #   in Loop: Header=BB27_22 Depth=2
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm4, %xmm0
	jbe	.LBB27_16
.LBB27_22:                              #   Parent Loop BB27_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB27_23 Depth 3
	xorl	%edi, %edi
	callq	start
	movq	line_test.__iterations(%rip), %rax
	testq	%rax, %rax
	je	.LBB27_24
	.p2align	4, 0x90
.LBB27_23:                              #   Parent Loop BB27_17 Depth=1
                                        #     Parent Loop BB27_22 Depth=2
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
	addq	$-1, %rax
	jne	.LBB27_23
.LBB27_24:                              #   in Loop: Header=BB27_22 Depth=2
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	stop
	movq	%rax, %xmm0
	punpckldq	.LCPI27_4(%rip), %xmm0 # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI27_5(%rip), %xmm0
	movapd	%xmm0, %xmm4
	unpckhpd	%xmm0, %xmm4    # xmm4 = xmm4[1],xmm0[1]
	addsd	%xmm0, %xmm4
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm4, %xmm0
	movsd	-112(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	ja	.LBB27_26
# %bb.25:                               #   in Loop: Header=BB27_22 Depth=2
	ucomisd	-152(%rbp), %xmm4       # 8-byte Folded Reload
	jbe	.LBB27_21
.LBB27_26:                              #   in Loop: Header=BB27_22 Depth=2
	movq	line_test.__iterations(%rip), %rcx
	cmpq	$151, %rax
	jae	.LBB27_19
# %bb.27:                               #   in Loop: Header=BB27_22 Depth=2
	cmpq	$134217728, %rcx        # imm = 0x8000000
	ja	.LBB27_15
# %bb.28:                               #   in Loop: Header=BB27_22 Depth=2
	shlq	$3, %rcx
	jmp	.LBB27_20
.LBB27_30:
	movq	%rbx, %rdi
	callq	use_pointer
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	callq	set_results
	callq	usecs_spent
	movq	%rax, %xmm0
	punpckldq	.LCPI27_4(%rip), %xmm0 # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI27_5(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	mulsd	.LCPI27_8(%rip), %xmm1
	movapd	%xmm1, -64(%rbp)        # 16-byte Spill
	callq	get_n
	movq	%rax, %xmm0
	punpckldq	.LCPI27_4(%rip), %xmm0 # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI27_5(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movapd	-64(%rbp), %xmm0        # 16-byte Reload
	divsd	%xmm1, %xmm0
	movapd	%xmm0, -64(%rbp)        # 16-byte Spill
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	set_results
	movq	%rbx, %rdi
	callq	free
	movq	-136(%rbp), %rdi        # 8-byte Reload
	cmpq	184(%r15), %rdi
	jae	.LBB27_39
# %bb.31:
	movq	8(%r15), %rax
	movq	208(%r15), %rdx
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	%r9, %r10
	addq	$-1, %r10
	je	.LBB27_38
# %bb.32:
	movl	%r10d, %r8d
	andl	$1, %r8d
	cmpq	$2, %r9
	jne	.LBB27_34
# %bb.33:
	xorl	%esi, %esi
	testq	%r8, %r8
	jne	.LBB27_37
	jmp	.LBB27_38
.LBB27_34:
	subq	%r8, %r10
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB27_35:                              # =>This Inner Loop Header: Depth=1
	movq	(%rdx,%rsi,8), %rdx
	addq	%rax, %rdx
	movq	216(%r15), %rbx
	movq	(%rbx,%rdi,8), %rcx
	addq	%rdx, %rcx
	movq	-8(%rbx,%rdi,8), %rbx
	movq	%rcx, (%rbx,%rdx)
	movq	208(%r15), %rcx
	movq	216(%r15), %rdx
	movq	8(%rcx,%rsi,8), %rcx
	addq	%rax, %rcx
	movq	(%rdx,%rdi,8), %rbx
	addq	%rcx, %rbx
	movq	-8(%rdx,%rdi,8), %rdx
	movq	%rbx, (%rdx,%rcx)
	addq	$2, %rsi
	movq	208(%r15), %rdx
	cmpq	%rsi, %r10
	jne	.LBB27_35
# %bb.36:
	testq	%r8, %r8
	je	.LBB27_38
.LBB27_37:
	movq	(%rdx,%rsi,8), %rcx
	addq	%rax, %rcx
	movq	216(%r15), %rdx
	movq	(%rdx,%rdi,8), %rsi
	addq	%rcx, %rsi
	movq	-8(%rdx,%rdi,8), %rdx
	movq	%rsi, (%rdx,%rcx)
	movq	208(%r15), %rdx
.LBB27_38:
	addq	-8(%rdx,%r9,8), %rax
	movq	216(%r15), %rcx
	movq	(%rcx,%rdi,8), %rdx
	addq	%rax, %rdx
	movq	-8(%rcx,%rdi,8), %rcx
	movq	%rdx, (%rcx,%rax)
.LBB27_39:
	movaps	-64(%rbp), %xmm0        # 16-byte Reload
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB27_40:
	.cfi_def_cfa %rbp, 16
	movl	$.L.str.5, %edi
	callq	perror
	movl	$1, %edi
	callq	exit
.Lfunc_end27:
	.size	line_test, .Lfunc_end27-line_test
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function par_mem
.LCPI28_0:
	.quad	-4616189618054758400    # double -1
.LCPI28_1:
	.quad	4607182418800017408     # double 1
.LCPI28_2:
	.quad	4606732058837280358     # double 0.94999999999999996
.LCPI28_3:
	.quad	4607092346807469998     # double 0.98999999999999999
.LCPI28_4:
	.quad	4608083138725491507     # double 1.2
.LCPI28_5:
	.quad	4607632778762754458     # double 1.1000000000000001
.LCPI28_8:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
.LCPI28_9:
	.quad	4616189618054758400     # double 4
.LCPI28_10:
	.quad	0                       # double 0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI28_6:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI28_7:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.text
	.globl	par_mem
	.p2align	4, 0x90
	.type	par_mem,@function
par_mem:                                # @par_mem
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
	subq	$312, %rsp              # imm = 0x138
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	$1, 148(%rcx)
	movq	$0, (%rcx)
	movsd	.LCPI28_0(%rip), %xmm0  # xmm0 = mem[0],zero
	testq	%rdi, %rdi
	je	.LBB28_41
# %bb.1:
	movq	%rcx, %r13
	movq	%rdi, %rbx
	.p2align	4, 0x90
.LBB28_2:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, 160(%r13)
	movq	%rbx, 152(%r13)
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	mem_initialize
	movq	(%r13), %rax
	testq	%rax, %rax
	sete	%cl
	shrq	%cl, %rbx
	testq	%rax, %rax
	jne	.LBB28_4
# %bb.3:                                #   in Loop: Header=BB28_2 Depth=1
	testq	%rbx, %rbx
	jne	.LBB28_2
.LBB28_4:
	testq	%rax, %rax
	movsd	.LCPI28_0(%rip), %xmm0  # xmm0 = mem[0],zero
	je	.LBB28_41
# %bb.5:
	movq	%rbx, %rax
	shrq	$3, %rax
	addq	$100, %rax
	shrq	$2, %rax
	movabsq	$2951479051793528259, %rcx # imm = 0x28F5C28F5C28F5C3
	mulq	%rcx
	shrq	$2, %rdx
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movsd	.LCPI28_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movl	$1, %r12d
	xorl	%ecx, %ecx
                                        # implicit-def: $xmm1
                                        # kill: killed $xmm1
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movq	%rbx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB28_9
	.p2align	4, 0x90
.LBB28_6:                               #   in Loop: Header=BB28_9 Depth=1
	movq	%rax, %xmm0
	movdqa	.LCPI28_6(%rip), %xmm1  # xmm1 = [1127219200,1160773632,0,0]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movapd	.LCPI28_7(%rip), %xmm1  # xmm1 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movapd	%xmm1, -112(%rbp)       # 16-byte Spill
	callq	get_n
	movq	%rax, %xmm0
	punpckldq	.LCPI28_6(%rip), %xmm0 # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI28_7(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movapd	-112(%rbp), %xmm0       # 16-byte Reload
	divsd	%xmm1, %xmm0
	movapd	%xmm0, -112(%rbp)       # 16-byte Spill
.LBB28_7:                               #   in Loop: Header=BB28_9 Depth=1
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
.LBB28_8:                               #   in Loop: Header=BB28_9 Depth=1
	addq	$1, %r12
	cmpq	$16, %rcx
	je	.LBB28_32
.LBB28_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_10 Depth 2
                                        #     Child Loop BB28_13 Depth 2
                                        #       Child Loop BB28_18 Depth 3
	movq	%r12, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %r14
	movq	8(%r13), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	168(%r13), %rcx
	movq	%rbx, %rax
	xorl	%edx, %edx
	divq	%rcx
	leaq	1(%r14), %r10
	xorl	%edx, %edx
	divq	%r10
	movq	%rax, %r8
	movq	176(%r13), %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rax, %r9
	movq	200(%r13), %r11
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB28_10:                              #   Parent Loop BB28_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r8, %rcx
	imulq	%rbx, %rcx
	movq	%rdi, %rax
	xorl	%edx, %edx
	divq	%r10
	movq	%rax, %r15
	movq	208(%r13), %rsi
	movq	216(%r13), %r12
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%r9
	movq	(%rsi,%rax,8), %rcx
	addq	-64(%rbp), %rcx         # 8-byte Folded Reload
	addq	(%r12,%rdx,8), %rcx
	movq	224(%r13), %rsi
	movq	%r15, %rax
	xorl	%edx, %edx
	divq	%r11
	addq	(%rsi,%rdx,8), %rcx
	movq	%rcx, 16(%r13,%rbx,8)
	addq	$1, %rbx
	addq	%r11, %rdi
	cmpq	%rbx, -96(%rbp)         # 8-byte Folded Reload
	jne	.LBB28_10
# %bb.11:                               #   in Loop: Header=BB28_9 Depth=1
	movq	%r10, -88(%rbp)         # 8-byte Spill
	movq	-96(%rbp), %r12         # 8-byte Reload
	movb	$0, mem_benchmark_rerun(%rip)
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%r13, %rsi
	callq	*mem_benchmarks(,%r14,8)
	leaq	-344(%rbp), %rdi
	callq	insertinit
	movl	$1, %edi
	movq	%r13, %rsi
	callq	*mem_benchmarks(,%r14,8)
	xorl	%r15d, %r15d
	movabsq	$-9223372036854775808, %rbx # imm = 0x8000000000000000
	jmp	.LBB28_13
	.p2align	4, 0x90
.LBB28_12:                              #   in Loop: Header=BB28_13 Depth=2
	addq	$1, %r15
	cmpq	$11, %r15
	je	.LBB28_29
.LBB28_13:                              #   Parent Loop BB28_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB28_18 Depth 3
	xorl	%edi, %edi
	callq	get_enough
	cvtsi2sd	%eax, %xmm3
	movapd	%xmm3, %xmm1
	mulsd	.LCPI28_2(%rip), %xmm1
	xorpd	%xmm0, %xmm0
	movsd	%xmm1, -64(%rbp)        # 8-byte Spill
	ucomisd	%xmm0, %xmm1
	jbe	.LBB28_25
# %bb.14:                               #   in Loop: Header=BB28_13 Depth=2
	movapd	%xmm3, %xmm0
	mulsd	.LCPI28_3(%rip), %xmm0
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	movapd	%xmm3, %xmm0
	mulsd	.LCPI28_4(%rip), %xmm0
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	mulsd	.LCPI28_5(%rip), %xmm3
	movsd	%xmm3, -144(%rbp)       # 8-byte Spill
	jmp	.LBB28_18
	.p2align	4, 0x90
.LBB28_15:                              #   in Loop: Header=BB28_18 Depth=3
	movq	%rcx, %xmm0
	punpckldq	.LCPI28_6(%rip), %xmm0 # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI28_7(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	divsd	%xmm4, %xmm1
	mulsd	%xmm3, %xmm1
	addsd	.LCPI28_1(%rip), %xmm1
	movapd	%xmm1, %xmm0
	movsd	.LCPI28_8(%rip), %xmm2  # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %rax
	xorq	%rbx, %rax
	cvttsd2si	%xmm1, %rcx
	ucomisd	%xmm2, %xmm1
	cmovaeq	%rax, %rcx
.LBB28_16:                              #   in Loop: Header=BB28_18 Depth=3
	movq	%rcx, par_mem.__iterations(%rip)
.LBB28_17:                              #   in Loop: Header=BB28_18 Depth=3
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm4, %xmm0
	jbe	.LBB28_26
.LBB28_18:                              #   Parent Loop BB28_9 Depth=1
                                        #     Parent Loop BB28_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%edi, %edi
	callq	start
	movq	par_mem.__iterations(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB28_20
# %bb.19:                               #   in Loop: Header=BB28_18 Depth=3
	movq	%r13, %rsi
	callq	*mem_benchmarks(,%r14,8)
.LBB28_20:                              #   in Loop: Header=BB28_18 Depth=3
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	stop
	movq	%rax, %xmm0
	punpckldq	.LCPI28_6(%rip), %xmm0 # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI28_7(%rip), %xmm0
	movapd	%xmm0, %xmm4
	unpckhpd	%xmm0, %xmm4    # xmm4 = xmm4[1],xmm0[1]
	addsd	%xmm0, %xmm4
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm4, %xmm0
	movsd	-144(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	ja	.LBB28_22
# %bb.21:                               #   in Loop: Header=BB28_18 Depth=3
	ucomisd	-160(%rbp), %xmm4       # 8-byte Folded Reload
	jbe	.LBB28_17
.LBB28_22:                              #   in Loop: Header=BB28_18 Depth=3
	movq	par_mem.__iterations(%rip), %rcx
	cmpq	$151, %rax
	jae	.LBB28_15
# %bb.23:                               #   in Loop: Header=BB28_18 Depth=3
	cmpq	$134217728, %rcx        # imm = 0x8000000
	ja	.LBB28_25
# %bb.24:                               #   in Loop: Header=BB28_18 Depth=3
	shlq	$3, %rcx
	jmp	.LBB28_16
	.p2align	4, 0x90
.LBB28_25:                              #   in Loop: Header=BB28_13 Depth=2
	xorpd	%xmm4, %xmm4
.LBB28_26:                              #   in Loop: Header=BB28_13 Depth=2
	movapd	%xmm4, -64(%rbp)        # 16-byte Spill
	movq	par_mem.__iterations(%rip), %rdi
	callq	save_n
	movapd	-64(%rbp), %xmm2        # 16-byte Reload
	movapd	%xmm2, %xmm0
	movsd	.LCPI28_8(%rip), %xmm1  # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %rax
	xorq	%rbx, %rax
	cvttsd2si	%xmm2, %rdi
	ucomisd	%xmm1, %xmm2
	cmovaeq	%rax, %rdi
	callq	settime
	callq	usecs_spent
	movq	%rax, %xmm0
	movdqa	.LCPI28_6(%rip), %xmm1  # xmm1 = [1127219200,1160773632,0,0]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movapd	.LCPI28_7(%rip), %xmm1  # xmm1 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movapd	%xmm1, -64(%rbp)        # 16-byte Spill
	callq	t_overhead
	movq	%rax, %xmm0
	punpckldq	.LCPI28_6(%rip), %xmm0 # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI28_7(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movapd	%xmm1, -144(%rbp)       # 16-byte Spill
	callq	get_n
	movq	%rax, %xmm0
	punpckldq	.LCPI28_6(%rip), %xmm0 # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI28_7(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movapd	%xmm1, -128(%rbp)       # 16-byte Spill
	callq	l_overhead
	mulsd	-128(%rbp), %xmm0       # 16-byte Folded Reload
	addsd	-144(%rbp), %xmm0       # 16-byte Folded Reload
	movapd	-64(%rbp), %xmm2        # 16-byte Reload
	subsd	%xmm0, %xmm2
	maxsd	.LCPI28_10, %xmm2
	movapd	%xmm2, %xmm0
	movsd	.LCPI28_8(%rip), %xmm1  # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %rax
	xorq	%rbx, %rax
	cvttsd2si	%xmm2, %rdi
	ucomisd	%xmm1, %xmm2
	cmovaeq	%rax, %rdi
	callq	settime
	callq	usecs_spent
	testq	%rax, %rax
	je	.LBB28_12
# %bb.27:                               #   in Loop: Header=BB28_13 Depth=2
	callq	usecs_spent
	movq	%rax, %rbx
	callq	get_n
	movq	%rbx, %rdi
	movabsq	$-9223372036854775808, %rbx # imm = 0x8000000000000000
	movq	%rax, %rsi
	leaq	-344(%rbp), %rdx
	callq	insertsort
	jmp	.LBB28_12
	.p2align	4, 0x90
.LBB28_29:                              #   in Loop: Header=BB28_9 Depth=1
	xorl	%eax, %eax
	callq	get_results
	movl	$184, %edx
	movq	%rax, %rdi
	leaq	-344(%rbp), %rsi
	callq	memcpy
	callq	usecs_spent
	testq	%r14, %r14
	je	.LBB28_6
# %bb.30:                               #   in Loop: Header=BB28_9 Depth=1
	testq	%rax, %rax
	je	.LBB28_7
# %bb.31:                               #   in Loop: Header=BB28_9 Depth=1
	callq	usecs_spent
	movq	%rax, %xmm0
	movdqa	.LCPI28_6(%rip), %xmm1  # xmm1 = [1127219200,1160773632,0,0]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movapd	.LCPI28_7(%rip), %xmm1  # xmm1 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movapd	%xmm1, -64(%rbp)        # 16-byte Spill
	callq	get_n
	movq	-88(%rbp), %rcx         # 8-byte Reload
	imulq	%rcx, %rax
	movq	%rax, %xmm0
	punpckldq	.LCPI28_6(%rip), %xmm0 # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI28_7(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movapd	-64(%rbp), %xmm2        # 16-byte Reload
	divsd	%xmm1, %xmm2
	movapd	-112(%rbp), %xmm0       # 16-byte Reload
	divsd	%xmm2, %xmm0
	maxsd	-72(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	mulsd	.LCPI28_9(%rip), %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r14d, %xmm1
	ucomisd	%xmm0, %xmm1
	movq	-80(%rbp), %rbx         # 8-byte Reload
	jbe	.LBB28_8
.LBB28_32:
	movq	(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB28_34
# %bb.33:
	callq	free
	movq	$0, (%r13)
.LBB28_34:
	movq	216(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB28_36
# %bb.35:
	callq	free
	movq	$0, 216(%r13)
.LBB28_36:
	movq	208(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB28_38
# %bb.37:
	callq	free
	movq	$0, 208(%r13)
.LBB28_38:
	movq	224(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB28_40
# %bb.39:
	callq	free
	movq	$0, 224(%r13)
.LBB28_40:
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB28_41:
	addq	$312, %rsp              # imm = 0x138
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end28:
	.size	par_mem, .Lfunc_end28-par_mem
	.cfi_endproc
                                        # -- End function
	.type	mem_benchmarks,@object  # @mem_benchmarks
	.data
	.globl	mem_benchmarks
	.p2align	4
mem_benchmarks:
	.quad	mem_benchmark_0
	.quad	mem_benchmark_1
	.quad	mem_benchmark_2
	.quad	mem_benchmark_3
	.quad	mem_benchmark_4
	.quad	mem_benchmark_5
	.quad	mem_benchmark_6
	.quad	mem_benchmark_7
	.quad	mem_benchmark_8
	.quad	mem_benchmark_9
	.quad	mem_benchmark_10
	.quad	mem_benchmark_11
	.quad	mem_benchmark_12
	.quad	mem_benchmark_13
	.quad	mem_benchmark_14
	.quad	mem_benchmark_15
	.size	mem_benchmarks, 128

	.type	mem_benchmark_0.addr_save,@object # @mem_benchmark_0.addr_save
	.local	mem_benchmark_0.addr_save
	.comm	mem_benchmark_0.addr_save,8,8
	.type	mem_benchmark_0.sp0,@object # @mem_benchmark_0.sp0
	.local	mem_benchmark_0.sp0
	.comm	mem_benchmark_0.sp0,8,8
	.type	mem_benchmark_rerun,@object # @mem_benchmark_rerun
	.local	mem_benchmark_rerun
	.comm	mem_benchmark_rerun,1,4
	.type	mem_benchmark_1.addr_save,@object # @mem_benchmark_1.addr_save
	.local	mem_benchmark_1.addr_save
	.comm	mem_benchmark_1.addr_save,8,8
	.type	mem_benchmark_1.sp0,@object # @mem_benchmark_1.sp0
	.local	mem_benchmark_1.sp0
	.comm	mem_benchmark_1.sp0,8,8
	.type	mem_benchmark_1.sp1,@object # @mem_benchmark_1.sp1
	.local	mem_benchmark_1.sp1
	.comm	mem_benchmark_1.sp1,8,8
	.type	mem_benchmark_2.addr_save,@object # @mem_benchmark_2.addr_save
	.local	mem_benchmark_2.addr_save
	.comm	mem_benchmark_2.addr_save,8,8
	.type	mem_benchmark_2.sp0,@object # @mem_benchmark_2.sp0
	.local	mem_benchmark_2.sp0
	.comm	mem_benchmark_2.sp0,8,8
	.type	mem_benchmark_2.sp1,@object # @mem_benchmark_2.sp1
	.local	mem_benchmark_2.sp1
	.comm	mem_benchmark_2.sp1,8,8
	.type	mem_benchmark_2.sp2,@object # @mem_benchmark_2.sp2
	.local	mem_benchmark_2.sp2
	.comm	mem_benchmark_2.sp2,8,8
	.type	mem_benchmark_3.addr_save,@object # @mem_benchmark_3.addr_save
	.local	mem_benchmark_3.addr_save
	.comm	mem_benchmark_3.addr_save,8,8
	.type	mem_benchmark_3.sp0,@object # @mem_benchmark_3.sp0
	.local	mem_benchmark_3.sp0
	.comm	mem_benchmark_3.sp0,8,8
	.type	mem_benchmark_3.sp1,@object # @mem_benchmark_3.sp1
	.local	mem_benchmark_3.sp1
	.comm	mem_benchmark_3.sp1,8,8
	.type	mem_benchmark_3.sp2,@object # @mem_benchmark_3.sp2
	.local	mem_benchmark_3.sp2
	.comm	mem_benchmark_3.sp2,8,8
	.type	mem_benchmark_3.sp3,@object # @mem_benchmark_3.sp3
	.local	mem_benchmark_3.sp3
	.comm	mem_benchmark_3.sp3,8,8
	.type	mem_benchmark_4.addr_save,@object # @mem_benchmark_4.addr_save
	.local	mem_benchmark_4.addr_save
	.comm	mem_benchmark_4.addr_save,8,8
	.type	mem_benchmark_4.sp0,@object # @mem_benchmark_4.sp0
	.local	mem_benchmark_4.sp0
	.comm	mem_benchmark_4.sp0,8,8
	.type	mem_benchmark_4.sp1,@object # @mem_benchmark_4.sp1
	.local	mem_benchmark_4.sp1
	.comm	mem_benchmark_4.sp1,8,8
	.type	mem_benchmark_4.sp2,@object # @mem_benchmark_4.sp2
	.local	mem_benchmark_4.sp2
	.comm	mem_benchmark_4.sp2,8,8
	.type	mem_benchmark_4.sp3,@object # @mem_benchmark_4.sp3
	.local	mem_benchmark_4.sp3
	.comm	mem_benchmark_4.sp3,8,8
	.type	mem_benchmark_4.sp4,@object # @mem_benchmark_4.sp4
	.local	mem_benchmark_4.sp4
	.comm	mem_benchmark_4.sp4,8,8
	.type	mem_benchmark_5.addr_save,@object # @mem_benchmark_5.addr_save
	.local	mem_benchmark_5.addr_save
	.comm	mem_benchmark_5.addr_save,8,8
	.type	mem_benchmark_5.sp0,@object # @mem_benchmark_5.sp0
	.local	mem_benchmark_5.sp0
	.comm	mem_benchmark_5.sp0,8,8
	.type	mem_benchmark_5.sp1,@object # @mem_benchmark_5.sp1
	.local	mem_benchmark_5.sp1
	.comm	mem_benchmark_5.sp1,8,8
	.type	mem_benchmark_5.sp2,@object # @mem_benchmark_5.sp2
	.local	mem_benchmark_5.sp2
	.comm	mem_benchmark_5.sp2,8,8
	.type	mem_benchmark_5.sp3,@object # @mem_benchmark_5.sp3
	.local	mem_benchmark_5.sp3
	.comm	mem_benchmark_5.sp3,8,8
	.type	mem_benchmark_5.sp4,@object # @mem_benchmark_5.sp4
	.local	mem_benchmark_5.sp4
	.comm	mem_benchmark_5.sp4,8,8
	.type	mem_benchmark_5.sp5,@object # @mem_benchmark_5.sp5
	.local	mem_benchmark_5.sp5
	.comm	mem_benchmark_5.sp5,8,8
	.type	mem_benchmark_6.addr_save,@object # @mem_benchmark_6.addr_save
	.local	mem_benchmark_6.addr_save
	.comm	mem_benchmark_6.addr_save,8,8
	.type	mem_benchmark_6.sp0,@object # @mem_benchmark_6.sp0
	.local	mem_benchmark_6.sp0
	.comm	mem_benchmark_6.sp0,8,8
	.type	mem_benchmark_6.sp1,@object # @mem_benchmark_6.sp1
	.local	mem_benchmark_6.sp1
	.comm	mem_benchmark_6.sp1,8,8
	.type	mem_benchmark_6.sp2,@object # @mem_benchmark_6.sp2
	.local	mem_benchmark_6.sp2
	.comm	mem_benchmark_6.sp2,8,8
	.type	mem_benchmark_6.sp3,@object # @mem_benchmark_6.sp3
	.local	mem_benchmark_6.sp3
	.comm	mem_benchmark_6.sp3,8,8
	.type	mem_benchmark_6.sp4,@object # @mem_benchmark_6.sp4
	.local	mem_benchmark_6.sp4
	.comm	mem_benchmark_6.sp4,8,8
	.type	mem_benchmark_6.sp5,@object # @mem_benchmark_6.sp5
	.local	mem_benchmark_6.sp5
	.comm	mem_benchmark_6.sp5,8,8
	.type	mem_benchmark_6.sp6,@object # @mem_benchmark_6.sp6
	.local	mem_benchmark_6.sp6
	.comm	mem_benchmark_6.sp6,8,8
	.type	mem_benchmark_7.addr_save,@object # @mem_benchmark_7.addr_save
	.local	mem_benchmark_7.addr_save
	.comm	mem_benchmark_7.addr_save,8,8
	.type	mem_benchmark_7.sp0,@object # @mem_benchmark_7.sp0
	.local	mem_benchmark_7.sp0
	.comm	mem_benchmark_7.sp0,8,8
	.type	mem_benchmark_7.sp1,@object # @mem_benchmark_7.sp1
	.local	mem_benchmark_7.sp1
	.comm	mem_benchmark_7.sp1,8,8
	.type	mem_benchmark_7.sp2,@object # @mem_benchmark_7.sp2
	.local	mem_benchmark_7.sp2
	.comm	mem_benchmark_7.sp2,8,8
	.type	mem_benchmark_7.sp3,@object # @mem_benchmark_7.sp3
	.local	mem_benchmark_7.sp3
	.comm	mem_benchmark_7.sp3,8,8
	.type	mem_benchmark_7.sp4,@object # @mem_benchmark_7.sp4
	.local	mem_benchmark_7.sp4
	.comm	mem_benchmark_7.sp4,8,8
	.type	mem_benchmark_7.sp5,@object # @mem_benchmark_7.sp5
	.local	mem_benchmark_7.sp5
	.comm	mem_benchmark_7.sp5,8,8
	.type	mem_benchmark_7.sp6,@object # @mem_benchmark_7.sp6
	.local	mem_benchmark_7.sp6
	.comm	mem_benchmark_7.sp6,8,8
	.type	mem_benchmark_7.sp7,@object # @mem_benchmark_7.sp7
	.local	mem_benchmark_7.sp7
	.comm	mem_benchmark_7.sp7,8,8
	.type	mem_benchmark_8.addr_save,@object # @mem_benchmark_8.addr_save
	.local	mem_benchmark_8.addr_save
	.comm	mem_benchmark_8.addr_save,8,8
	.type	mem_benchmark_8.sp0,@object # @mem_benchmark_8.sp0
	.local	mem_benchmark_8.sp0
	.comm	mem_benchmark_8.sp0,8,8
	.type	mem_benchmark_8.sp1,@object # @mem_benchmark_8.sp1
	.local	mem_benchmark_8.sp1
	.comm	mem_benchmark_8.sp1,8,8
	.type	mem_benchmark_8.sp2,@object # @mem_benchmark_8.sp2
	.local	mem_benchmark_8.sp2
	.comm	mem_benchmark_8.sp2,8,8
	.type	mem_benchmark_8.sp3,@object # @mem_benchmark_8.sp3
	.local	mem_benchmark_8.sp3
	.comm	mem_benchmark_8.sp3,8,8
	.type	mem_benchmark_8.sp4,@object # @mem_benchmark_8.sp4
	.local	mem_benchmark_8.sp4
	.comm	mem_benchmark_8.sp4,8,8
	.type	mem_benchmark_8.sp5,@object # @mem_benchmark_8.sp5
	.local	mem_benchmark_8.sp5
	.comm	mem_benchmark_8.sp5,8,8
	.type	mem_benchmark_8.sp6,@object # @mem_benchmark_8.sp6
	.local	mem_benchmark_8.sp6
	.comm	mem_benchmark_8.sp6,8,8
	.type	mem_benchmark_8.sp7,@object # @mem_benchmark_8.sp7
	.local	mem_benchmark_8.sp7
	.comm	mem_benchmark_8.sp7,8,8
	.type	mem_benchmark_8.sp8,@object # @mem_benchmark_8.sp8
	.local	mem_benchmark_8.sp8
	.comm	mem_benchmark_8.sp8,8,8
	.type	mem_benchmark_9.addr_save,@object # @mem_benchmark_9.addr_save
	.local	mem_benchmark_9.addr_save
	.comm	mem_benchmark_9.addr_save,8,8
	.type	mem_benchmark_9.sp0,@object # @mem_benchmark_9.sp0
	.local	mem_benchmark_9.sp0
	.comm	mem_benchmark_9.sp0,8,8
	.type	mem_benchmark_9.sp1,@object # @mem_benchmark_9.sp1
	.local	mem_benchmark_9.sp1
	.comm	mem_benchmark_9.sp1,8,8
	.type	mem_benchmark_9.sp2,@object # @mem_benchmark_9.sp2
	.local	mem_benchmark_9.sp2
	.comm	mem_benchmark_9.sp2,8,8
	.type	mem_benchmark_9.sp3,@object # @mem_benchmark_9.sp3
	.local	mem_benchmark_9.sp3
	.comm	mem_benchmark_9.sp3,8,8
	.type	mem_benchmark_9.sp4,@object # @mem_benchmark_9.sp4
	.local	mem_benchmark_9.sp4
	.comm	mem_benchmark_9.sp4,8,8
	.type	mem_benchmark_9.sp5,@object # @mem_benchmark_9.sp5
	.local	mem_benchmark_9.sp5
	.comm	mem_benchmark_9.sp5,8,8
	.type	mem_benchmark_9.sp6,@object # @mem_benchmark_9.sp6
	.local	mem_benchmark_9.sp6
	.comm	mem_benchmark_9.sp6,8,8
	.type	mem_benchmark_9.sp7,@object # @mem_benchmark_9.sp7
	.local	mem_benchmark_9.sp7
	.comm	mem_benchmark_9.sp7,8,8
	.type	mem_benchmark_9.sp8,@object # @mem_benchmark_9.sp8
	.local	mem_benchmark_9.sp8
	.comm	mem_benchmark_9.sp8,8,8
	.type	mem_benchmark_9.sp9,@object # @mem_benchmark_9.sp9
	.local	mem_benchmark_9.sp9
	.comm	mem_benchmark_9.sp9,8,8
	.type	mem_benchmark_10.addr_save,@object # @mem_benchmark_10.addr_save
	.local	mem_benchmark_10.addr_save
	.comm	mem_benchmark_10.addr_save,8,8
	.type	mem_benchmark_10.sp0,@object # @mem_benchmark_10.sp0
	.local	mem_benchmark_10.sp0
	.comm	mem_benchmark_10.sp0,8,8
	.type	mem_benchmark_10.sp1,@object # @mem_benchmark_10.sp1
	.local	mem_benchmark_10.sp1
	.comm	mem_benchmark_10.sp1,8,8
	.type	mem_benchmark_10.sp2,@object # @mem_benchmark_10.sp2
	.local	mem_benchmark_10.sp2
	.comm	mem_benchmark_10.sp2,8,8
	.type	mem_benchmark_10.sp3,@object # @mem_benchmark_10.sp3
	.local	mem_benchmark_10.sp3
	.comm	mem_benchmark_10.sp3,8,8
	.type	mem_benchmark_10.sp4,@object # @mem_benchmark_10.sp4
	.local	mem_benchmark_10.sp4
	.comm	mem_benchmark_10.sp4,8,8
	.type	mem_benchmark_10.sp5,@object # @mem_benchmark_10.sp5
	.local	mem_benchmark_10.sp5
	.comm	mem_benchmark_10.sp5,8,8
	.type	mem_benchmark_10.sp6,@object # @mem_benchmark_10.sp6
	.local	mem_benchmark_10.sp6
	.comm	mem_benchmark_10.sp6,8,8
	.type	mem_benchmark_10.sp7,@object # @mem_benchmark_10.sp7
	.local	mem_benchmark_10.sp7
	.comm	mem_benchmark_10.sp7,8,8
	.type	mem_benchmark_10.sp8,@object # @mem_benchmark_10.sp8
	.local	mem_benchmark_10.sp8
	.comm	mem_benchmark_10.sp8,8,8
	.type	mem_benchmark_10.sp9,@object # @mem_benchmark_10.sp9
	.local	mem_benchmark_10.sp9
	.comm	mem_benchmark_10.sp9,8,8
	.type	mem_benchmark_10.sp10,@object # @mem_benchmark_10.sp10
	.local	mem_benchmark_10.sp10
	.comm	mem_benchmark_10.sp10,8,8
	.type	mem_benchmark_11.addr_save,@object # @mem_benchmark_11.addr_save
	.local	mem_benchmark_11.addr_save
	.comm	mem_benchmark_11.addr_save,8,8
	.type	mem_benchmark_11.sp0,@object # @mem_benchmark_11.sp0
	.local	mem_benchmark_11.sp0
	.comm	mem_benchmark_11.sp0,8,8
	.type	mem_benchmark_11.sp1,@object # @mem_benchmark_11.sp1
	.local	mem_benchmark_11.sp1
	.comm	mem_benchmark_11.sp1,8,8
	.type	mem_benchmark_11.sp2,@object # @mem_benchmark_11.sp2
	.local	mem_benchmark_11.sp2
	.comm	mem_benchmark_11.sp2,8,8
	.type	mem_benchmark_11.sp3,@object # @mem_benchmark_11.sp3
	.local	mem_benchmark_11.sp3
	.comm	mem_benchmark_11.sp3,8,8
	.type	mem_benchmark_11.sp4,@object # @mem_benchmark_11.sp4
	.local	mem_benchmark_11.sp4
	.comm	mem_benchmark_11.sp4,8,8
	.type	mem_benchmark_11.sp5,@object # @mem_benchmark_11.sp5
	.local	mem_benchmark_11.sp5
	.comm	mem_benchmark_11.sp5,8,8
	.type	mem_benchmark_11.sp6,@object # @mem_benchmark_11.sp6
	.local	mem_benchmark_11.sp6
	.comm	mem_benchmark_11.sp6,8,8
	.type	mem_benchmark_11.sp7,@object # @mem_benchmark_11.sp7
	.local	mem_benchmark_11.sp7
	.comm	mem_benchmark_11.sp7,8,8
	.type	mem_benchmark_11.sp8,@object # @mem_benchmark_11.sp8
	.local	mem_benchmark_11.sp8
	.comm	mem_benchmark_11.sp8,8,8
	.type	mem_benchmark_11.sp9,@object # @mem_benchmark_11.sp9
	.local	mem_benchmark_11.sp9
	.comm	mem_benchmark_11.sp9,8,8
	.type	mem_benchmark_11.sp10,@object # @mem_benchmark_11.sp10
	.local	mem_benchmark_11.sp10
	.comm	mem_benchmark_11.sp10,8,8
	.type	mem_benchmark_11.sp11,@object # @mem_benchmark_11.sp11
	.local	mem_benchmark_11.sp11
	.comm	mem_benchmark_11.sp11,8,8
	.type	mem_benchmark_12.addr_save,@object # @mem_benchmark_12.addr_save
	.local	mem_benchmark_12.addr_save
	.comm	mem_benchmark_12.addr_save,8,8
	.type	mem_benchmark_12.sp0,@object # @mem_benchmark_12.sp0
	.local	mem_benchmark_12.sp0
	.comm	mem_benchmark_12.sp0,8,8
	.type	mem_benchmark_12.sp1,@object # @mem_benchmark_12.sp1
	.local	mem_benchmark_12.sp1
	.comm	mem_benchmark_12.sp1,8,8
	.type	mem_benchmark_12.sp2,@object # @mem_benchmark_12.sp2
	.local	mem_benchmark_12.sp2
	.comm	mem_benchmark_12.sp2,8,8
	.type	mem_benchmark_12.sp3,@object # @mem_benchmark_12.sp3
	.local	mem_benchmark_12.sp3
	.comm	mem_benchmark_12.sp3,8,8
	.type	mem_benchmark_12.sp4,@object # @mem_benchmark_12.sp4
	.local	mem_benchmark_12.sp4
	.comm	mem_benchmark_12.sp4,8,8
	.type	mem_benchmark_12.sp5,@object # @mem_benchmark_12.sp5
	.local	mem_benchmark_12.sp5
	.comm	mem_benchmark_12.sp5,8,8
	.type	mem_benchmark_12.sp6,@object # @mem_benchmark_12.sp6
	.local	mem_benchmark_12.sp6
	.comm	mem_benchmark_12.sp6,8,8
	.type	mem_benchmark_12.sp7,@object # @mem_benchmark_12.sp7
	.local	mem_benchmark_12.sp7
	.comm	mem_benchmark_12.sp7,8,8
	.type	mem_benchmark_12.sp8,@object # @mem_benchmark_12.sp8
	.local	mem_benchmark_12.sp8
	.comm	mem_benchmark_12.sp8,8,8
	.type	mem_benchmark_12.sp9,@object # @mem_benchmark_12.sp9
	.local	mem_benchmark_12.sp9
	.comm	mem_benchmark_12.sp9,8,8
	.type	mem_benchmark_12.sp10,@object # @mem_benchmark_12.sp10
	.local	mem_benchmark_12.sp10
	.comm	mem_benchmark_12.sp10,8,8
	.type	mem_benchmark_12.sp11,@object # @mem_benchmark_12.sp11
	.local	mem_benchmark_12.sp11
	.comm	mem_benchmark_12.sp11,8,8
	.type	mem_benchmark_12.sp12,@object # @mem_benchmark_12.sp12
	.local	mem_benchmark_12.sp12
	.comm	mem_benchmark_12.sp12,8,8
	.type	mem_benchmark_13.addr_save,@object # @mem_benchmark_13.addr_save
	.local	mem_benchmark_13.addr_save
	.comm	mem_benchmark_13.addr_save,8,8
	.type	mem_benchmark_13.sp0,@object # @mem_benchmark_13.sp0
	.local	mem_benchmark_13.sp0
	.comm	mem_benchmark_13.sp0,8,8
	.type	mem_benchmark_13.sp1,@object # @mem_benchmark_13.sp1
	.local	mem_benchmark_13.sp1
	.comm	mem_benchmark_13.sp1,8,8
	.type	mem_benchmark_13.sp2,@object # @mem_benchmark_13.sp2
	.local	mem_benchmark_13.sp2
	.comm	mem_benchmark_13.sp2,8,8
	.type	mem_benchmark_13.sp3,@object # @mem_benchmark_13.sp3
	.local	mem_benchmark_13.sp3
	.comm	mem_benchmark_13.sp3,8,8
	.type	mem_benchmark_13.sp4,@object # @mem_benchmark_13.sp4
	.local	mem_benchmark_13.sp4
	.comm	mem_benchmark_13.sp4,8,8
	.type	mem_benchmark_13.sp5,@object # @mem_benchmark_13.sp5
	.local	mem_benchmark_13.sp5
	.comm	mem_benchmark_13.sp5,8,8
	.type	mem_benchmark_13.sp6,@object # @mem_benchmark_13.sp6
	.local	mem_benchmark_13.sp6
	.comm	mem_benchmark_13.sp6,8,8
	.type	mem_benchmark_13.sp7,@object # @mem_benchmark_13.sp7
	.local	mem_benchmark_13.sp7
	.comm	mem_benchmark_13.sp7,8,8
	.type	mem_benchmark_13.sp8,@object # @mem_benchmark_13.sp8
	.local	mem_benchmark_13.sp8
	.comm	mem_benchmark_13.sp8,8,8
	.type	mem_benchmark_13.sp9,@object # @mem_benchmark_13.sp9
	.local	mem_benchmark_13.sp9
	.comm	mem_benchmark_13.sp9,8,8
	.type	mem_benchmark_13.sp10,@object # @mem_benchmark_13.sp10
	.local	mem_benchmark_13.sp10
	.comm	mem_benchmark_13.sp10,8,8
	.type	mem_benchmark_13.sp11,@object # @mem_benchmark_13.sp11
	.local	mem_benchmark_13.sp11
	.comm	mem_benchmark_13.sp11,8,8
	.type	mem_benchmark_13.sp12,@object # @mem_benchmark_13.sp12
	.local	mem_benchmark_13.sp12
	.comm	mem_benchmark_13.sp12,8,8
	.type	mem_benchmark_13.sp13,@object # @mem_benchmark_13.sp13
	.local	mem_benchmark_13.sp13
	.comm	mem_benchmark_13.sp13,8,8
	.type	mem_benchmark_14.addr_save,@object # @mem_benchmark_14.addr_save
	.local	mem_benchmark_14.addr_save
	.comm	mem_benchmark_14.addr_save,8,8
	.type	mem_benchmark_14.sp0,@object # @mem_benchmark_14.sp0
	.local	mem_benchmark_14.sp0
	.comm	mem_benchmark_14.sp0,8,8
	.type	mem_benchmark_14.sp1,@object # @mem_benchmark_14.sp1
	.local	mem_benchmark_14.sp1
	.comm	mem_benchmark_14.sp1,8,8
	.type	mem_benchmark_14.sp2,@object # @mem_benchmark_14.sp2
	.local	mem_benchmark_14.sp2
	.comm	mem_benchmark_14.sp2,8,8
	.type	mem_benchmark_14.sp3,@object # @mem_benchmark_14.sp3
	.local	mem_benchmark_14.sp3
	.comm	mem_benchmark_14.sp3,8,8
	.type	mem_benchmark_14.sp4,@object # @mem_benchmark_14.sp4
	.local	mem_benchmark_14.sp4
	.comm	mem_benchmark_14.sp4,8,8
	.type	mem_benchmark_14.sp5,@object # @mem_benchmark_14.sp5
	.local	mem_benchmark_14.sp5
	.comm	mem_benchmark_14.sp5,8,8
	.type	mem_benchmark_14.sp6,@object # @mem_benchmark_14.sp6
	.local	mem_benchmark_14.sp6
	.comm	mem_benchmark_14.sp6,8,8
	.type	mem_benchmark_14.sp7,@object # @mem_benchmark_14.sp7
	.local	mem_benchmark_14.sp7
	.comm	mem_benchmark_14.sp7,8,8
	.type	mem_benchmark_14.sp8,@object # @mem_benchmark_14.sp8
	.local	mem_benchmark_14.sp8
	.comm	mem_benchmark_14.sp8,8,8
	.type	mem_benchmark_14.sp9,@object # @mem_benchmark_14.sp9
	.local	mem_benchmark_14.sp9
	.comm	mem_benchmark_14.sp9,8,8
	.type	mem_benchmark_14.sp10,@object # @mem_benchmark_14.sp10
	.local	mem_benchmark_14.sp10
	.comm	mem_benchmark_14.sp10,8,8
	.type	mem_benchmark_14.sp11,@object # @mem_benchmark_14.sp11
	.local	mem_benchmark_14.sp11
	.comm	mem_benchmark_14.sp11,8,8
	.type	mem_benchmark_14.sp12,@object # @mem_benchmark_14.sp12
	.local	mem_benchmark_14.sp12
	.comm	mem_benchmark_14.sp12,8,8
	.type	mem_benchmark_14.sp13,@object # @mem_benchmark_14.sp13
	.local	mem_benchmark_14.sp13
	.comm	mem_benchmark_14.sp13,8,8
	.type	mem_benchmark_14.sp14,@object # @mem_benchmark_14.sp14
	.local	mem_benchmark_14.sp14
	.comm	mem_benchmark_14.sp14,8,8
	.type	mem_benchmark_15.addr_save,@object # @mem_benchmark_15.addr_save
	.local	mem_benchmark_15.addr_save
	.comm	mem_benchmark_15.addr_save,8,8
	.type	mem_benchmark_15.sp0,@object # @mem_benchmark_15.sp0
	.local	mem_benchmark_15.sp0
	.comm	mem_benchmark_15.sp0,8,8
	.type	mem_benchmark_15.sp1,@object # @mem_benchmark_15.sp1
	.local	mem_benchmark_15.sp1
	.comm	mem_benchmark_15.sp1,8,8
	.type	mem_benchmark_15.sp2,@object # @mem_benchmark_15.sp2
	.local	mem_benchmark_15.sp2
	.comm	mem_benchmark_15.sp2,8,8
	.type	mem_benchmark_15.sp3,@object # @mem_benchmark_15.sp3
	.local	mem_benchmark_15.sp3
	.comm	mem_benchmark_15.sp3,8,8
	.type	mem_benchmark_15.sp4,@object # @mem_benchmark_15.sp4
	.local	mem_benchmark_15.sp4
	.comm	mem_benchmark_15.sp4,8,8
	.type	mem_benchmark_15.sp5,@object # @mem_benchmark_15.sp5
	.local	mem_benchmark_15.sp5
	.comm	mem_benchmark_15.sp5,8,8
	.type	mem_benchmark_15.sp6,@object # @mem_benchmark_15.sp6
	.local	mem_benchmark_15.sp6
	.comm	mem_benchmark_15.sp6,8,8
	.type	mem_benchmark_15.sp7,@object # @mem_benchmark_15.sp7
	.local	mem_benchmark_15.sp7
	.comm	mem_benchmark_15.sp7,8,8
	.type	mem_benchmark_15.sp8,@object # @mem_benchmark_15.sp8
	.local	mem_benchmark_15.sp8
	.comm	mem_benchmark_15.sp8,8,8
	.type	mem_benchmark_15.sp9,@object # @mem_benchmark_15.sp9
	.local	mem_benchmark_15.sp9
	.comm	mem_benchmark_15.sp9,8,8
	.type	mem_benchmark_15.sp10,@object # @mem_benchmark_15.sp10
	.local	mem_benchmark_15.sp10
	.comm	mem_benchmark_15.sp10,8,8
	.type	mem_benchmark_15.sp11,@object # @mem_benchmark_15.sp11
	.local	mem_benchmark_15.sp11
	.comm	mem_benchmark_15.sp11,8,8
	.type	mem_benchmark_15.sp12,@object # @mem_benchmark_15.sp12
	.local	mem_benchmark_15.sp12
	.comm	mem_benchmark_15.sp12,8,8
	.type	mem_benchmark_15.sp13,@object # @mem_benchmark_15.sp13
	.local	mem_benchmark_15.sp13
	.comm	mem_benchmark_15.sp13,8,8
	.type	mem_benchmark_15.sp14,@object # @mem_benchmark_15.sp14
	.local	mem_benchmark_15.sp14
	.comm	mem_benchmark_15.sp14,8,8
	.type	mem_benchmark_15.sp15,@object # @mem_benchmark_15.sp15
	.local	mem_benchmark_15.sp15
	.comm	mem_benchmark_15.sp15,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"base_initialize: malloc"
	.size	.L.str, 24

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"thrash_initialize: malloc"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"mem_initialize: malloc"
	.size	.L.str.2, 23

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"tlb_initialize: malloc"
	.size	.L.str.3, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"tlb_initialize: valloc"
	.size	.L.str.4, 23

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"line_test: malloc"
	.size	.L.str.5, 18

	.type	line_test.__iterations,@object # @line_test.__iterations
	.data
	.p2align	3
line_test.__iterations:
	.quad	1                       # 0x1
	.size	line_test.__iterations, 8

	.type	par_mem.__iterations,@object # @par_mem.__iterations
	.p2align	3
par_mem.__iterations:
	.quad	1                       # 0x1
	.size	par_mem.__iterations, 8


	.ident	"FreeBSD clang version 9.0.1 (git@github.com:llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05) (based on LLVM 9.0.1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym mem_benchmark_0
	.addrsig_sym mem_benchmark_1
	.addrsig_sym mem_benchmark_2
	.addrsig_sym mem_benchmark_3
	.addrsig_sym mem_benchmark_4
	.addrsig_sym mem_benchmark_5
	.addrsig_sym mem_benchmark_6
	.addrsig_sym mem_benchmark_7
	.addrsig_sym mem_benchmark_8
	.addrsig_sym mem_benchmark_9
	.addrsig_sym mem_benchmark_10
	.addrsig_sym mem_benchmark_11
	.addrsig_sym mem_benchmark_12
	.addrsig_sym mem_benchmark_13
	.addrsig_sym mem_benchmark_14
	.addrsig_sym mem_benchmark_15
