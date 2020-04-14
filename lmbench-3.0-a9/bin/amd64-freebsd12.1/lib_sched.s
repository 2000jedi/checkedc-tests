	.text
	.file	"lib_sched.c"
	.globl	handle_scheduler        # -- Begin function handle_scheduler
	.p2align	4, 0x90
	.type	handle_scheduler,@function
handle_scheduler:                       # @handle_scheduler
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
	movl	%edx, %r12d
	movl	%esi, %r15d
	movl	%edi, %r14d
	movl	$.L.str, %edi
	callq	getenv
	xorl	%r13d, %r13d
	testq	%rax, %rax
	je	.LBB0_19
# %bb.1:
	movq	%rax, %rbx
	movl	$.L.str.1, %esi
	movq	%rax, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB0_19
# %bb.2:
	movl	$.L.str.2, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB0_18
# %bb.3:
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB0_18
# %bb.4:
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB0_5
# %bb.8:
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB0_18
# %bb.9:
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB0_10
# %bb.13:
	movl	$.L.str.7, %esi
	movl	$7, %edx
	movq	%rbx, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	je	.LBB0_14
# %bb.15:
	movl	$.L.str.8, %esi
	movl	$14, %edx
	movq	%rbx, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	jne	.LBB0_19
# %bb.16:
	addq	$13, %rbx
	addl	$1, %r12d
	imull	%r14d, %r12d
	addl	%r15d, %r12d
	movq	%rbx, %rdi
	movl	%r12d, %esi
	jmp	.LBB0_17
.LBB0_5:
	movl	$58, %edi
	callq	sysconf
	addl	$-1, %eax
	cmpl	$2, %eax
	jl	.LBB0_18
# %bb.6:
	movl	%eax, %ecx
	.p2align	4, 0x90
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	shrl	%ecx
	cmpl	$3, %eax
	movl	%ecx, %eax
	ja	.LBB0_7
	jmp	.LBB0_18
.LBB0_10:
	movl	$58, %edi
	callq	sysconf
	addl	$-1, %eax
	cmpl	$2, %eax
	jl	.LBB0_18
# %bb.11:
	movl	%eax, %ecx
	.p2align	4, 0x90
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	shrl	%ecx
	cmpl	$3, %eax
	movl	%ecx, %eax
	ja	.LBB0_12
	jmp	.LBB0_18
.LBB0_14:
	addq	$6, %rbx
	movq	%rbx, %rdi
	movl	%r14d, %esi
.LBB0_17:
	callq	custom
.LBB0_18:
	movl	$58, %edi
	callq	sysconf
	movl	$-1, %r13d
.LBB0_19:
	movl	%r13d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	handle_scheduler, .Lfunc_end0-handle_scheduler
	.cfi_endproc
                                        # -- End function
	.globl	reverse_bits            # -- Begin function reverse_bits
	.p2align	4, 0x90
	.type	reverse_bits,@function
reverse_bits:                           # @reverse_bits
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
	movl	%edi, %r14d
	movl	$58, %edi
	callq	sysconf
	addl	$-1, %eax
	movl	$1, %r10d
	cmpl	$2, %eax
	jl	.LBB1_3
# %bb.1:
	movl	$1, %r10d
	movl	%eax, %ecx
	.p2align	4, 0x90
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	shrl	%ecx
	addl	$1, %r10d
	cmpl	$3, %eax
	movl	%ecx, %eax
	ja	.LBB1_2
.LBB1_3:
	movl	%r10d, %r8d
	andl	$1, %r8d
	cmpl	$1, %r10d
	jne	.LBB1_9
# %bb.4:
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	jmp	.LBB1_5
.LBB1_9:
	movl	%r10d, %r9d
	subl	%r8d, %r9d
	xorl	%eax, %eax
	movl	$-2, %edi
	movl	$-1, %edx
	xorl	%esi, %esi
	btl	%esi, %r14d
	jb	.LBB1_11
	jmp	.LBB1_12
	.p2align	4, 0x90
.LBB1_14:                               #   in Loop: Header=BB1_12 Depth=1
	movl	%esi, %ebx
	addl	$2, %ebx
	addl	$-2, %edi
	addl	$-2, %edx
	addl	$1, %ecx
	movl	%ecx, %esi
	cmpl	%ebx, %r9d
	je	.LBB1_5
# %bb.10:                               #   in Loop: Header=BB1_12 Depth=1
	btl	%esi, %r14d
	jae	.LBB1_12
.LBB1_11:
	leal	(%r10,%rdx), %ecx
	btsl	%ecx, %eax
.LBB1_12:                               # =>This Inner Loop Header: Depth=1
	leal	1(%rsi), %ecx
	btl	%ecx, %r14d
	jae	.LBB1_14
# %bb.13:                               #   in Loop: Header=BB1_12 Depth=1
	leal	(%r10,%rdi), %ebx
	btsl	%ebx, %eax
	jmp	.LBB1_14
.LBB1_5:
	testl	%r8d, %r8d
	je	.LBB1_8
# %bb.6:
	btl	%ebx, %r14d
	jae	.LBB1_8
# %bb.7:
	notl	%ebx
	addl	%ebx, %r10d
	btsl	%r10d, %eax
.LBB1_8:
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	reverse_bits, .Lfunc_end1-reverse_bits
	.cfi_endproc
                                        # -- End function
	.globl	custom                  # -- Begin function custom
	.p2align	4, 0x90
	.type	custom,@function
custom:                                 # @custom
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
	movl	%esi, %r14d
	movq	custom.values(%rip), %rcx
	testq	%rcx, %rcx
	jne	.LBB2_18
# %bb.1:
	movq	%rdi, %rbx
	movl	$0, custom.nvalues(%rip)
	movl	$4, %edi
	callq	malloc
	movq	%rax, %rcx
	movq	%rax, custom.values(%rip)
	movb	(%rbx), %al
	testb	%al, %al
	je	.LBB2_18
# %bb.2:
	movq	_ThreadRuneLocale@GOTTPOFF(%rip), %r15
.LBB2_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_12 Depth 2
	movl	__mb_sb_limit(%rip), %edx
	movq	%fs:0, %rsi
	movq	(%rsi,%r15), %rsi
	testq	%rsi, %rsi
	jne	.LBB2_5
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	movq	_CurrentRuneLocale(%rip), %rsi
	testb	%al, %al
	jns	.LBB2_6
	.p2align	4, 0x90
.LBB2_8:                                #   in Loop: Header=BB2_3 Depth=1
	movb	1(%rbx), %al
	addq	$1, %rbx
	testb	%al, %al
	je	.LBB2_18
.LBB2_5:                                #   in Loop: Header=BB2_3 Depth=1
	testb	%al, %al
	js	.LBB2_8
.LBB2_6:                                #   in Loop: Header=BB2_3 Depth=1
	movsbl	%al, %edi
	cmpl	%edi, %edx
	jle	.LBB2_8
# %bb.7:                                #   in Loop: Header=BB2_3 Depth=1
	movsbq	%al, %rdi
	testb	$4, 65(%rsi,%rdi,8)
	je	.LBB2_8
# %bb.9:                                #   in Loop: Header=BB2_3 Depth=1
	movl	__mb_sb_limit(%rip), %edx
	movq	%fs:0, %rsi
	movq	(%rsi,%r15), %rsi
	testq	%rsi, %rsi
	jne	.LBB2_11
# %bb.10:                               #   in Loop: Header=BB2_3 Depth=1
	movq	_CurrentRuneLocale(%rip), %rsi
.LBB2_11:                               #   in Loop: Header=BB2_3 Depth=1
	movq	%rbx, %r12
	.p2align	4, 0x90
.LBB2_12:                               #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%al, %al
	js	.LBB2_16
# %bb.13:                               #   in Loop: Header=BB2_12 Depth=2
	movsbl	%al, %edi
	cmpl	%edi, %edx
	jle	.LBB2_16
# %bb.14:                               #   in Loop: Header=BB2_12 Depth=2
	movsbq	%al, %rax
	testb	$4, 65(%rsi,%rax,8)
	je	.LBB2_16
# %bb.15:                               #   in Loop: Header=BB2_12 Depth=2
	movzbl	1(%r12), %eax
	addq	$1, %r12
	testb	%al, %al
	jne	.LBB2_12
.LBB2_16:                               #   in Loop: Header=BB2_3 Depth=1
	cmpq	%rbx, %r12
	je	.LBB2_18
# %bb.17:                               #   in Loop: Header=BB2_3 Depth=1
	movb	$0, (%r12)
	movslq	custom.nvalues(%rip), %rdx
	leal	1(%rdx), %eax
	movl	%eax, custom.nvalues(%rip)
	shlq	$2, %rdx
	addq	custom.values(%rip), %rdx
	movl	$.L.str.9, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	sscanf
	movq	custom.values(%rip), %rdi
	movslq	custom.nvalues(%rip), %rax
	leaq	4(,%rax,4), %rsi
	callq	realloc
	movq	%rax, %rcx
	movq	%rax, custom.values(%rip)
	movb	1(%r12), %al
	leaq	1(%r12), %rbx
	testb	%al, %al
	jne	.LBB2_3
.LBB2_18:
	movl	custom.nvalues(%rip), %esi
	testl	%esi, %esi
	je	.LBB2_19
# %bb.20:
	movl	%r14d, %eax
	cltd
	idivl	%esi
	movslq	%edx, %rax
	movl	(%rcx,%rax,4), %eax
	jmp	.LBB2_21
.LBB2_19:
	xorl	%eax, %eax
.LBB2_21:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	custom, .Lfunc_end2-custom
	.cfi_endproc
                                        # -- End function
	.globl	sched_pin               # -- Begin function sched_pin
	.p2align	4, 0x90
	.type	sched_pin,@function
sched_pin:                              # @sched_pin
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$-1, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	sched_pin, .Lfunc_end3-sched_pin
	.cfi_endproc
                                        # -- End function
	.globl	sched_ncpus             # -- Begin function sched_ncpus
	.p2align	4, 0x90
	.type	sched_ncpus,@function
sched_ncpus:                            # @sched_ncpus
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$58, %edi
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	jmp	sysconf                 # TAILCALL
.Lfunc_end4:
	.size	sched_ncpus, .Lfunc_end4-sched_ncpus
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LMBENCH_SCHED"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DEFAULT"
	.size	.L.str.1, 8

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"SINGLE"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"BALANCED"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"BALANCED_SPREAD"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"UNIQUE"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"UNIQUE_SPREAD"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"CUSTOM "
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"CUSTOM_SPREAD "
	.size	.L.str.8, 15

	.type	custom.nvalues,@object  # @custom.nvalues
	.data
	.p2align	2
custom.nvalues:
	.long	4294967295              # 0xffffffff
	.size	custom.nvalues, 4

	.type	custom.values,@object   # @custom.values
	.local	custom.values
	.comm	custom.values,8,8
	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"%d"
	.size	.L.str.9, 3


	.ident	"FreeBSD clang version 9.0.1 (git@github.com:llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05) (based on LLVM 9.0.1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
