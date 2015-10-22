	.file	"HJM_Swaption_Blocking.cpp"
	.text
.Ltext0:
	.section	.text.unlikely,"ax",@progbits
.LCOLDB4:
	.text
.LHOTB4:
	.p2align 4,,15
	.section	.text.unlikely
.Ltext_cold0:
	.text
	.globl	_Z21HJM_Swaption_BlockingPddddddiidS_PS_llii
	.type	_Z21HJM_Swaption_BlockingPddddddiidS_PS_llii, @function
_Z21HJM_Swaption_BlockingPddddddiidS_PS_llii:
.LFB74:
	.file 1 "/if16/jad5ju/Progs/opensource/parsec-3.0//pkgs/apps/swaptions/src/HJM_Swaption_Blocking.cpp"
	.loc 1 36 0
	.cfi_startproc
.LBB2:
	.loc 1 42 0
	pxor	%xmm6, %xmm6
.LBE2:
	.loc 1 36 0
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
.LBB3:
	.loc 1 42 0
	cvtsi2sd	%esi, %xmm6
.LBE3:
	.loc 1 36 0
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$312, %rsp
	.cfi_def_cfa_offset 368
	.loc 1 36 0
	movsd	%xmm5, 184(%rsp)
	movq	%rdi, 240(%rsp)
	movl	%esi, 168(%rsp)
	movsd	%xmm0, 16(%rsp)
.LBB4:
	.loc 1 44 0
	movapd	%xmm4, %xmm0
.LBE4:
	.loc 1 36 0
	movsd	%xmm4, 48(%rsp)
.LBB5:
	.loc 1 50 0
	pxor	%xmm4, %xmm4
.LBE5:
	.loc 1 36 0
	movsd	%xmm2, 8(%rsp)
	movl	%edx, 172(%rsp)
	movsd	%xmm3, 32(%rsp)
	movq	%rcx, 40(%rsp)
.LBB6:
	.loc 1 50 0
	ucomisd	%xmm4, %xmm1
.LBE6:
	.loc 1 36 0
	movq	%r8, 216(%rsp)
	movq	%r9, 296(%rsp)
	movl	376(%rsp), %r14d
.LBB7:
	.loc 1 42 0
	divsd	%xmm6, %xmm5
	.loc 1 44 0
	divsd	%xmm5, %xmm0
	.loc 1 42 0
	movsd	%xmm5, 160(%rsp)
	.loc 1 44 0
	addsd	.LC2(%rip), %xmm0
	cvttsd2si	%xmm0, %ebx
	.loc 1 50 0
	jp	.L70
	jne	.L70
.L2:
	.loc 1 73 0
	movl	168(%rsp), %r15d
	xorl	%edx, %edx
	xorl	%edi, %edi
	movsd	%xmm6, 24(%rsp)
	movl	%r15d, %ebp
	movl	%r15d, %eax
	imull	%r14d, %ebp
	subl	$1, %eax
	movslq	%eax, %r12
	movl	%eax, 72(%rsp)
	movq	%r12, %rsi
	subl	$1, %ebp
	movslq	%ebp, %r13
	movq	%r13, %rcx
	call	_Z7dmatrixllll
	.loc 1 74 0
	movq	%r12, %rsi
	xorl	%edi, %edi
	.loc 1 73 0
	movq	%rax, 224(%rsp)
	.loc 1 74 0
	call	_Z7dvectorll
	.loc 1 75 0
	movl	172(%rsp), %esi
	leal	-2(%r15), %ecx
	xorl	%edx, %edx
	.loc 1 74 0
	movq	%rax, 176(%rsp)
	.loc 1 75 0
	movslq	%ecx, %r15
	leal	-1(%rsi), %edi
	movq	%r15, %rcx
	movslq	%edi, %rsi
	xorl	%edi, %edi
	call	_Z7dmatrixllll
	.loc 1 76 0
	movq	%r15, %rsi
	xorl	%edi, %edi
	.loc 1 75 0
	movq	%rax, 56(%rsp)
	.loc 1 76 0
	call	_Z7dvectorll
	.loc 1 106 0
	movq	%r13, %rsi
	xorl	%edi, %edi
	.loc 1 76 0
	movq	%rax, 208(%rsp)
	.loc 1 106 0
	call	_Z7dvectorll
	.loc 1 107 0
	movq	%r13, %rsi
	xorl	%edi, %edi
	.loc 1 106 0
	movq	%rax, 232(%rsp)
	.loc 1 107 0
	call	_Z7dvectorll
	.loc 1 110 0
	movsd	8(%rsp), %xmm5
	.loc 1 113 0
	xorl	%edi, %edi
	.loc 1 110 0
	movsd	24(%rsp), %xmm7
	.loc 1 107 0
	movq	%rax, 104(%rsp)
	.loc 1 110 0
	divsd	160(%rsp), %xmm5
	subsd	%xmm5, %xmm7
	movsd	%xmm5, 64(%rsp)
	addsd	.LC2(%rip), %xmm7
	cvttsd2si	%xmm7, %r8d
	.loc 1 113 0
	movl	%r8d, %r9d
	.loc 1 110 0
	movl	%r8d, %r13d
	movl	%r8d, 8(%rsp)
	.loc 1 113 0
	imull	%r14d, %r9d
	.loc 1 116 0
	movl	%r13d, %r15d
	subl	$1, %r15d
	.loc 1 113 0
	subl	$1, %r9d
	movslq	%r9d, %rbp
	movq	%rbp, %rsi
	call	_Z7dvectorll
	.loc 1 114 0
	xorl	%edi, %edi
	movq	%rbp, %rsi
	.loc 1 113 0
	movq	%rax, 192(%rsp)
	.loc 1 114 0
	call	_Z7dvectorll
	.loc 1 116 0
	xorl	%edi, %edi
	movslq	%r15d, %rsi
	.loc 1 114 0
	movq	%rax, 112(%rsp)
	.loc 1 116 0
	call	_Z7dvectorll
	.loc 1 120 0
	movsd	32(%rsp), %xmm8
	.loc 1 126 0
	testl	%r13d, %r13d
	.loc 1 116 0
	movq	%rax, 24(%rsp)
	.loc 1 120 0
	divsd	160(%rsp), %xmm8
	addsd	.LC2(%rip), %xmm8
	cvttsd2si	%xmm8, %r12d
	.loc 1 126 0
	jle	.L7
	.loc 1 127 0
	movl	%r15d, %r11d
	movq	24(%rsp), %rdi
	xorl	%esi, %esi
	leaq	8(,%r11,8), %rdx
	call	memset
.L7:
	.loc 1 128 0
	cmpl	%r12d, %ebx
	jg	.L6
	movsd	16(%rsp), %xmm9
	movslq	%ebx, %rax
	movq	24(%rsp), %rdx
	leaq	(%rax,%rax,2), %rcx
	leaq	0(,%rax,8), %rbp
	movl	%ebx, %r13d
	mulsd	48(%rsp), %xmm9
	salq	$4, %rcx
	leaq	(%rdx,%rbp), %r15
	movq	%rcx, 32(%rsp)
	movsd	%xmm9, 16(%rsp)
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L10:
	.loc 1 133 0
	call	exp
	movq	32(%rsp), %rsi
	.loc 1 128 0
	addl	%ebx, %r13d
	prefetcht0	(%r15,%rsi)
	.loc 1 133 0
	movsd	%xmm0, (%r15)
	addq	%rbp, %r15
	.loc 1 128 0
	cmpl	%r13d, %r12d
	jl	.L6
	.p2align 4,,10
	.p2align 3
.L12:
	.loc 1 130 0
	cmpl	%r12d, %r13d
	.loc 1 131 0
	movsd	16(%rsp), %xmm0
	.loc 1 130 0
	je	.L10
	.loc 1 131 0
	call	exp
	subsd	.LC3(%rip), %xmm0
	.loc 1 128 0
	addl	%ebx, %r13d
	.loc 1 131 0
	movsd	%xmm0, (%r15)
	addq	%rbp, %r15
	.loc 1 128 0
	cmpl	%r13d, %r12d
	jge	.L12
.L6:
	.loc 1 137 0
	movq	40(%rsp), %rdx
	movl	168(%rsp), %esi
	movq	176(%rsp), %rdi
	call	_Z20HJM_Yield_to_ForwardPdiS_
	.loc 1 138 0
	cmpl	$1, %eax
	je	.L354
.L8:
.LBE7:
	.loc 1 210 0
	addq	$312, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L70:
	.cfi_restore_state
.LBB8:
	.loc 1 55 0
	movsd	16(%rsp), %xmm0
	movsd	%xmm6, 24(%rsp)
	mulsd	%xmm1, %xmm0
	movsd	%xmm1, 16(%rsp)
	addsd	.LC3(%rip), %xmm0
	call	log
	movsd	16(%rsp), %xmm1
	movsd	.LC3(%rip), %xmm2
	movsd	24(%rsp), %xmm6
	divsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm3
	mulsd	%xmm0, %xmm3
	movsd	%xmm3, 16(%rsp)
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L354:
	.loc 1 142 0
	movq	216(%rsp), %r8
	movl	172(%rsp), %ecx
	movl	168(%rsp), %edx
	movq	56(%rsp), %rsi
	movq	208(%rsp), %rdi
	movsd	184(%rsp), %xmm0
	call	_Z10HJM_DriftsPdPS_iidS0_
	.loc 1 143 0
	cmpl	$1, %eax
	jne	.L8
	.loc 1 150 0 discriminator 1
	cmpq	$0, 368(%rsp)
	jle	.L61
	.loc 1 119 0
	movsd	.LC2(%rip), %xmm12
	movq	224(%rsp), %rbx
	leal	-9(%r14), %ebp
	movl	72(%rsp), %r10d
	movl	8(%rsp), %esi
	leal	0(,%r14,8), %r15d
	addsd	64(%rsp), %xmm12
	shrl	$3, %ebp
	movslq	%r14d, %r9
	leal	8(,%rbp,8), %edx
	movslq	%r15d, %rcx
	leal	0(,%r14,4), %ebp
	leaq	0(,%rcx,8), %r13
	leaq	0(,%r9,8), %r12
	subl	%r14d, %r15d
	leaq	8(,%r10,8), %r11
	movl	%edx, 148(%rsp)
	movslq	%ebp, %rdx
	addl	%r14d, %ebp
	movq	%r13, 32(%rsp)
	movslq	%r15d, %r15
	addq	%rbx, %r11
	movslq	%ebp, %rcx
	movq	%rdx, 288(%rsp)
	cvttsd2si	%xmm12, %eax
	movq	%r11, 120(%rsp)
	movq	%rcx, 280(%rsp)
	movq	%r15, 264(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 200(%rsp)
	movq	%r9, 48(%rsp)
	movq	%r12, 56(%rsp)
	movslq	%eax, %rdi
	leaq	(%rbx,%rdi,8), %r8
	leal	-9(%rsi), %edi
	movq	232(%rsp), %rsi
	imull	%r14d, %eax
	movq	%r8, 152(%rsp)
	leal	(%r14,%r14), %r8d
	shrl	$3, %edi
	leal	8(,%rdi,8), %ebx
	leal	-1(%r14), %edi
	movslq	%r8d, %r10
	cltq
	addl	%r14d, %r8d
	movslq	%r8d, %r11
	leaq	(%rsi,%rax,8), %rax
	addl	%r8d, %r8d
	movslq	%r8d, %r13
	addq	$1, %rdi
	movl	%ebx, 40(%rsp)
	movq	%r10, 256(%rsp)
	movq	%r11, 248(%rsp)
	movq	%r13, 272(%rsp)
	movq	%rax, 128(%rsp)
	movq	%rdi, 136(%rsp)
	.p2align 4,,10
	.p2align 3
.L54:
	.loc 1 152 0
	pushq	%r14
	.cfi_def_cfa_offset 376
	leaq	304(%rsp), %r9
	pushq	%r9
	.cfi_def_cfa_offset 384
	movl	184(%rsp), %r12d
	movq	240(%rsp), %rbx
	movq	232(%rsp), %r9
	movq	224(%rsp), %r8
	movq	192(%rsp), %rcx
	movl	188(%rsp), %edx
	movsd	200(%rsp), %xmm0
	movl	%r12d, %esi
	movq	%rbx, %rdi
	call	_Z28HJM_SimPath_Forward_BlockingPPdiidS_S_S0_Pli
	.loc 1 153 0
	cmpl	$1, %eax
	popq	%rdx
	.cfi_def_cfa_offset 376
	popq	%rcx
	.cfi_def_cfa_offset 368
	jne	.L8
	.loc 1 158 0 discriminator 1
	testl	%r12d, %r12d
	jle	.L14
	movq	104(%rsp), %r8
	.loc 1 158 0 is_stmt 0
	xorl	%r15d, %r15d
	xorl	%ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L15:
	.loc 1 159 0 is_stmt 1 discriminator 1
	testl	%r14d, %r14d
	jle	.L26
	movq	(%rbx), %rdi
	leaq	16(%r8), %rcx
	leaq	0(,%rbp,8), %rdx
	leaq	16(%rdi), %r10
	cmpq	%r10, %r8
	setae	%r11b
	cmpq	%rcx, %rdi
	setae	%r13b
	orb	%r13b, %r11b
	je	.L29
	cmpl	$24, %r14d
	jbe	.L29
	movq	%rdi, %rax
	salq	$60, %rax
	shrq	$63, %rax
	cmpl	%eax, %r14d
	cmovbe	%r14d, %eax
	.loc 1 159 0 is_stmt 0
	xorl	%r9d, %r9d
	testl	%eax, %eax
	je	.L22
	.loc 1 160 0 is_stmt 1
	movsd	(%rdi), %xmm13
	.loc 1 159 0
	movb	$1, %r9b
	.loc 1 160 0
	movsd	%xmm13, (%r8)
.L22:
	movl	%eax, %r11d
	movl	%r14d, %esi
	salq	$3, %r11
	subl	%eax, %esi
	leaq	(%rdi,%r11), %r10
	addq	%r11, %rdx
	addq	104(%rsp), %rdx
	movl	%esi, 16(%rsp)
	subl	$2, %esi
	movl	$4, %r11d
	movapd	(%r10), %xmm14
	prefetcht0	464(%r10)
	shrl	%esi
	leal	1(%rsi), %r13d
	subl	$4, %esi
	leaq	64(%r10), %rax
	movups	%xmm14, (%rdx)
	leal	(%r13,%r13), %r12d
	shrl	$2, %esi
	leaq	64(%rdx), %rcx
	movapd	16(%r10), %xmm15
	movl	%r12d, 80(%rsp)
	leal	4(,%rsi,4), %r12d
	andl	$3, %esi
	movups	%xmm15, 16(%rdx)
	cmpl	%r12d, %r11d
	movapd	32(%r10), %xmm0
	movups	%xmm0, 32(%rdx)
	movapd	48(%r10), %xmm4
	movups	%xmm4, 48(%rdx)
	je	.L323
	testl	%esi, %esi
	je	.L23
	cmpl	$1, %esi
	je	.L271
	cmpl	$2, %esi
	je	.L272
	movapd	64(%r10), %xmm2
	prefetcht0	528(%r10)
	movl	$8, %r11d
	movups	%xmm2, 64(%rdx)
	movapd	16(%rax), %xmm1
	movups	%xmm1, 16(%rcx)
	movapd	32(%rax), %xmm3
	movups	%xmm3, 32(%rcx)
	movapd	48(%rax), %xmm6
	leaq	128(%r10), %rax
	movups	%xmm6, 48(%rcx)
	leaq	128(%rdx), %rcx
.L272:
	prefetcht0	464(%rax)
	addq	$64, %rcx
	addq	$64, %rax
	addl	$4, %r11d
	movapd	-64(%rax), %xmm5
	movups	%xmm5, -64(%rcx)
	movapd	-48(%rax), %xmm7
	movups	%xmm7, -48(%rcx)
	movapd	-32(%rax), %xmm8
	movups	%xmm8, -32(%rcx)
	movapd	-16(%rax), %xmm9
	movups	%xmm9, -16(%rcx)
.L271:
	prefetcht0	464(%rax)
	addl	$4, %r11d
	addq	$64, %rax
	addq	$64, %rcx
	movapd	-64(%rax), %xmm10
	movups	%xmm10, -64(%rcx)
	movapd	-48(%rax), %xmm11
	movups	%xmm11, -48(%rcx)
	movapd	-32(%rax), %xmm12
	movups	%xmm12, -32(%rcx)
	movapd	-16(%rax), %xmm13
	movups	%xmm13, -16(%rcx)
	cmpl	%r12d, %r11d
	je	.L323
.L23:
	prefetcht0	464(%rax)
	prefetcht0	528(%rax)
	prefetcht0	592(%rax)
	.loc 1 160 0 is_stmt 0 discriminator 3
	movapd	(%rax), %xmm14
	prefetcht0	656(%rax)
	addl	$16, %r11d
	addq	$256, %rax
	addq	$256, %rcx
	movups	%xmm14, -256(%rcx)
	movapd	-240(%rax), %xmm15
	movups	%xmm15, -240(%rcx)
	movapd	-224(%rax), %xmm0
	movups	%xmm0, -224(%rcx)
	movapd	-208(%rax), %xmm4
	movups	%xmm4, -208(%rcx)
	movapd	-192(%rax), %xmm2
	movups	%xmm2, -192(%rcx)
	movapd	-176(%rax), %xmm1
	movups	%xmm1, -176(%rcx)
	movapd	-160(%rax), %xmm3
	movups	%xmm3, -160(%rcx)
	movapd	-144(%rax), %xmm6
	movups	%xmm6, -144(%rcx)
	movapd	-128(%rax), %xmm5
	movups	%xmm5, -128(%rcx)
	movapd	-112(%rax), %xmm7
	movups	%xmm7, -112(%rcx)
	movapd	-96(%rax), %xmm8
	movups	%xmm8, -96(%rcx)
	movapd	-80(%rax), %xmm9
	movups	%xmm9, -80(%rcx)
	movapd	-64(%rax), %xmm10
	movups	%xmm10, -64(%rcx)
	movapd	-48(%rax), %xmm11
	movups	%xmm11, -48(%rcx)
	movapd	-32(%rax), %xmm12
	movups	%xmm12, -32(%rcx)
	movapd	-16(%rax), %xmm13
	movups	%xmm13, -16(%rcx)
	cmpl	%r12d, %r11d
	jne	.L23
.L323:
	movl	%r12d, %r10d
	leal	1(%r12), %esi
	movl	$16, %edx
	notl	%r10d
	.loc 1 160 0
	movapd	(%rax), %xmm14
	addl	%r13d, %r10d
	andl	$7, %r10d
	cmpl	%esi, %r13d
	movups	%xmm14, (%rcx)
	jbe	.L322
	testl	%r10d, %r10d
	je	.L16
	cmpl	$1, %r10d
	je	.L265
	cmpl	$2, %r10d
	je	.L266
	cmpl	$3, %r10d
	je	.L267
	cmpl	$4, %r10d
	je	.L268
	cmpl	$5, %r10d
	je	.L269
	cmpl	$6, %r10d
	je	.L270
	movapd	16(%rax), %xmm15
	leal	2(%r12), %esi
	movl	$32, %edx
	movups	%xmm15, 16(%rcx)
.L270:
	addl	$1, %esi
	movapd	(%rax,%rdx), %xmm0
	movups	%xmm0, (%rcx,%rdx)
	addq	$16, %rdx
.L269:
	addl	$1, %esi
	movapd	(%rax,%rdx), %xmm4
	movups	%xmm4, (%rcx,%rdx)
	addq	$16, %rdx
.L268:
	addl	$1, %esi
	movapd	(%rax,%rdx), %xmm2
	movups	%xmm2, (%rcx,%rdx)
	addq	$16, %rdx
.L267:
	addl	$1, %esi
	movapd	(%rax,%rdx), %xmm1
	movups	%xmm1, (%rcx,%rdx)
	addq	$16, %rdx
.L266:
	addl	$1, %esi
	movapd	(%rax,%rdx), %xmm3
	movups	%xmm3, (%rcx,%rdx)
	addq	$16, %rdx
.L265:
	addl	$1, %esi
	movapd	(%rax,%rdx), %xmm6
	movups	%xmm6, (%rcx,%rdx)
	addq	$16, %rdx
	cmpl	%esi, %r13d
	jbe	.L322
.L16:
	addl	$8, %esi
	movapd	(%rax,%rdx), %xmm5
	movups	%xmm5, (%rcx,%rdx)
	movapd	16(%rax,%rdx), %xmm7
	movups	%xmm7, 16(%rcx,%rdx)
	movapd	32(%rax,%rdx), %xmm8
	movups	%xmm8, 32(%rcx,%rdx)
	movapd	48(%rax,%rdx), %xmm9
	movups	%xmm9, 48(%rcx,%rdx)
	movapd	64(%rax,%rdx), %xmm10
	movups	%xmm10, 64(%rcx,%rdx)
	movapd	80(%rax,%rdx), %xmm11
	movups	%xmm11, 80(%rcx,%rdx)
	movapd	96(%rax,%rdx), %xmm12
	movups	%xmm12, 96(%rcx,%rdx)
	movapd	112(%rax,%rdx), %xmm13
	movups	%xmm13, 112(%rcx,%rdx)
	subq	$-128, %rdx
	cmpl	%esi, %r13d
	ja	.L16
	.p2align 4,,10
	.p2align 3
.L322:
	movl	80(%rsp), %eax
	addl	%eax, %r9d
	cmpl	%eax, 16(%rsp)
	je	.L26
	movslq	%r9d, %rcx
	movq	104(%rsp), %r11
	addl	%r15d, %r9d
	movsd	(%rdi,%rcx,8), %xmm14
	movslq	%r9d, %rdi
	movsd	%xmm14, (%r11,%rdi,8)
.L26:
	addq	48(%rsp), %rbp
	addq	56(%rsp), %r8
	addq	$8, %rbx
	addl	%r14d, %r15d
	.loc 1 158 0 is_stmt 1
	cmpq	120(%rsp), %rbx
	jne	.L15
.L14:
	.loc 1 163 0
	movq	104(%rsp), %rdx
	movl	168(%rsp), %esi
	movl	%r14d, %ecx
	movq	232(%rsp), %rdi
	movsd	184(%rsp), %xmm0
	call	_Z25Discount_Factors_BlockingPdidS_i
	.loc 1 165 0
	cmpl	$1, %eax
	jne	.L8
	.loc 1 169 0 discriminator 1
	movl	8(%rsp), %ebx
	testl	%ebx, %ebx
	jle	.L30
	movq	192(%rsp), %r15
	.loc 1 169 0 is_stmt 0
	movl	$0, 16(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 80(%rsp)
	xorl	%ebp, %ebp
	movq	%r15, %rbx
	.p2align 4,,10
	.p2align 3
.L31:
	.loc 1 170 0 is_stmt 1 discriminator 1
	testl	%r14d, %r14d
	jle	.L42
	movq	152(%rsp), %r8
	leaq	16(%r10), %rax
	leaq	(%r15,%rax), %rsi
	movq	(%r8), %rcx
	leaq	(%rcx,%r10), %rdi
	cmpq	%rsi, %rdi
	setae	%dl
	addq	%rcx, %rax
	cmpq	%rax, %rbx
	setae	%r11b
	orb	%r11b, %dl
	je	.L45
	cmpl	$24, %r14d
	jbe	.L45
	movq	%rdi, %r9
	salq	$60, %r9
	shrq	$63, %r9
	cmpl	%r14d, %r9d
	cmova	%r14d, %r9d
	.loc 1 170 0 is_stmt 0
	xorl	%r8d, %r8d
	testl	%r9d, %r9d
	je	.L38
	.loc 1 172 0 is_stmt 1
	movsd	(%rdi), %xmm15
	.loc 1 170 0
	movb	$1, %r8b
	.loc 1 172 0
	movsd	%xmm15, (%rbx)
.L38:
	movl	%r9d, %edi
	movl	%r14d, %r12d
	movl	$4, %r11d
	leaq	(%r10,%rdi,8), %rdi
	subl	%r9d, %r12d
	leal	-2(%r12), %esi
	movl	%r12d, 96(%rsp)
	leaq	(%rcx,%rdi), %r9
	addq	%r15, %rdi
	shrl	%esi
	leaq	64(%rdi), %rdx
	movapd	(%r9), %xmm0
	prefetcht0	464(%r9)
	leal	1(%rsi), %r13d
	subl	$4, %esi
	movups	%xmm0, (%rdi)
	shrl	$2, %esi
	leal	(%r13,%r13), %eax
	leal	4(,%rsi,4), %r12d
	andl	$3, %esi
	movapd	16(%r9), %xmm4
	cmpl	%r12d, %r11d
	movl	%eax, 88(%rsp)
	leaq	64(%r9), %rax
	movups	%xmm4, 16(%rdi)
	movapd	32(%r9), %xmm2
	movups	%xmm2, 32(%rdi)
	movapd	48(%r9), %xmm1
	movups	%xmm1, 48(%rdi)
	je	.L325
	testl	%esi, %esi
	je	.L39
	cmpl	$1, %esi
	je	.L257
	cmpl	$2, %esi
	je	.L258
	movapd	64(%r9), %xmm3
	prefetcht0	528(%r9)
	movl	$8, %r11d
	movups	%xmm3, 64(%rdi)
	movapd	16(%rax), %xmm6
	movups	%xmm6, 16(%rdx)
	movapd	32(%rax), %xmm5
	movups	%xmm5, 32(%rdx)
	movapd	48(%rax), %xmm7
	leaq	128(%r9), %rax
	movups	%xmm7, 48(%rdx)
	leaq	128(%rdi), %rdx
.L258:
	prefetcht0	464(%rax)
	addq	$64, %rdx
	addq	$64, %rax
	addl	$4, %r11d
	movapd	-64(%rax), %xmm8
	movups	%xmm8, -64(%rdx)
	movapd	-48(%rax), %xmm9
	movups	%xmm9, -48(%rdx)
	movapd	-32(%rax), %xmm10
	movups	%xmm10, -32(%rdx)
	movapd	-16(%rax), %xmm11
	movups	%xmm11, -16(%rdx)
.L257:
	prefetcht0	464(%rax)
	addl	$4, %r11d
	addq	$64, %rax
	addq	$64, %rdx
	movapd	-64(%rax), %xmm12
	movups	%xmm12, -64(%rdx)
	movapd	-48(%rax), %xmm13
	movups	%xmm13, -48(%rdx)
	movapd	-32(%rax), %xmm14
	movups	%xmm14, -32(%rdx)
	movapd	-16(%rax), %xmm15
	movups	%xmm15, -16(%rdx)
	cmpl	%r12d, %r11d
	je	.L325
.L39:
	prefetcht0	464(%rax)
	prefetcht0	528(%rax)
	prefetcht0	592(%rax)
	.loc 1 172 0 is_stmt 0 discriminator 3
	movapd	(%rax), %xmm0
	prefetcht0	656(%rax)
	addl	$16, %r11d
	addq	$256, %rax
	addq	$256, %rdx
	movups	%xmm0, -256(%rdx)
	movapd	-240(%rax), %xmm4
	movups	%xmm4, -240(%rdx)
	movapd	-224(%rax), %xmm2
	movups	%xmm2, -224(%rdx)
	movapd	-208(%rax), %xmm1
	movups	%xmm1, -208(%rdx)
	movapd	-192(%rax), %xmm3
	movups	%xmm3, -192(%rdx)
	movapd	-176(%rax), %xmm6
	movups	%xmm6, -176(%rdx)
	movapd	-160(%rax), %xmm5
	movups	%xmm5, -160(%rdx)
	movapd	-144(%rax), %xmm7
	movups	%xmm7, -144(%rdx)
	movapd	-128(%rax), %xmm8
	movups	%xmm8, -128(%rdx)
	movapd	-112(%rax), %xmm9
	movups	%xmm9, -112(%rdx)
	movapd	-96(%rax), %xmm10
	movups	%xmm10, -96(%rdx)
	movapd	-80(%rax), %xmm11
	movups	%xmm11, -80(%rdx)
	movapd	-64(%rax), %xmm12
	movups	%xmm12, -64(%rdx)
	movapd	-48(%rax), %xmm13
	movups	%xmm13, -48(%rdx)
	movapd	-32(%rax), %xmm14
	movups	%xmm14, -32(%rdx)
	movapd	-16(%rax), %xmm15
	movups	%xmm15, -16(%rdx)
	cmpl	%r12d, %r11d
	jne	.L39
.L325:
	movl	%r12d, %r9d
	leal	1(%r12), %edi
	movl	$16, %esi
	notl	%r9d
	.loc 1 172 0
	movapd	(%rax), %xmm0
	addl	%r13d, %r9d
	andl	$7, %r9d
	cmpl	%edi, %r13d
	movups	%xmm0, (%rdx)
	jbe	.L324
	testl	%r9d, %r9d
	je	.L32
	cmpl	$1, %r9d
	je	.L251
	cmpl	$2, %r9d
	je	.L252
	cmpl	$3, %r9d
	je	.L253
	cmpl	$4, %r9d
	je	.L254
	cmpl	$5, %r9d
	je	.L255
	cmpl	$6, %r9d
	je	.L256
	movapd	16(%rax), %xmm4
	leal	2(%r12), %edi
	movl	$32, %esi
	movups	%xmm4, 16(%rdx)
.L256:
	addl	$1, %edi
	movapd	(%rax,%rsi), %xmm2
	movups	%xmm2, (%rdx,%rsi)
	addq	$16, %rsi
.L255:
	addl	$1, %edi
	movapd	(%rax,%rsi), %xmm1
	movups	%xmm1, (%rdx,%rsi)
	addq	$16, %rsi
.L254:
	addl	$1, %edi
	movapd	(%rax,%rsi), %xmm3
	movups	%xmm3, (%rdx,%rsi)
	addq	$16, %rsi
.L253:
	addl	$1, %edi
	movapd	(%rax,%rsi), %xmm6
	movups	%xmm6, (%rdx,%rsi)
	addq	$16, %rsi
.L252:
	addl	$1, %edi
	movapd	(%rax,%rsi), %xmm5
	movups	%xmm5, (%rdx,%rsi)
	addq	$16, %rsi
.L251:
	addl	$1, %edi
	movapd	(%rax,%rsi), %xmm7
	movups	%xmm7, (%rdx,%rsi)
	addq	$16, %rsi
	cmpl	%edi, %r13d
	jbe	.L324
.L32:
	addl	$8, %edi
	movapd	(%rax,%rsi), %xmm8
	movups	%xmm8, (%rdx,%rsi)
	movapd	16(%rax,%rsi), %xmm9
	movups	%xmm9, 16(%rdx,%rsi)
	movapd	32(%rax,%rsi), %xmm10
	movups	%xmm10, 32(%rdx,%rsi)
	movapd	48(%rax,%rsi), %xmm11
	movups	%xmm11, 48(%rdx,%rsi)
	movapd	64(%rax,%rsi), %xmm12
	movups	%xmm12, 64(%rdx,%rsi)
	movapd	80(%rax,%rsi), %xmm13
	movups	%xmm13, 80(%rdx,%rsi)
	movapd	96(%rax,%rsi), %xmm14
	movups	%xmm14, 96(%rdx,%rsi)
	movapd	112(%rax,%rsi), %xmm15
	movups	%xmm15, 112(%rdx,%rsi)
	subq	$-128, %rsi
	cmpl	%edi, %r13d
	ja	.L32
	.p2align 4,,10
	.p2align 3
.L324:
	movl	88(%rsp), %eax
	addl	%eax, %r8d
	cmpl	96(%rsp), %eax
	je	.L42
	.loc 1 171 0 is_stmt 1
	addl	16(%rsp), %r8d
	movslq	%r8d, %rdx
	.loc 1 172 0
	movsd	(%rcx,%rdx,8), %xmm0
	movsd	%xmm0, (%r15,%rdx,8)
.L42:
	movq	56(%rsp), %rsi
	.loc 1 169 0
	addl	$1, %ebp
	movq	48(%rsp), %rcx
	addl	%r14d, 16(%rsp)
	addq	%rcx, 80(%rsp)
	addq	%rsi, %r10
	addq	%rsi, %rbx
	cmpl	8(%rsp), %ebp
	jne	.L31
.L30:
	.loc 1 121 0
	movl	8(%rsp), %esi
	pxor	%xmm0, %xmm0
	.loc 1 175 0
	movq	112(%rsp), %rbx
	movq	192(%rsp), %rdx
	movl	%r14d, %ecx
	.loc 1 121 0
	cvtsi2sd	%esi, %xmm0
	.loc 1 175 0
	movq	%rbx, %rdi
	.loc 1 121 0
	mulsd	160(%rsp), %xmm0
	.loc 1 175 0
	call	_Z25Discount_Factors_BlockingPdidS_i
	.loc 1 176 0
	cmpl	$1, %eax
	jne	.L8
	.loc 1 182 0 discriminator 1
	testl	%r14d, %r14d
	jle	.L46
	.loc 1 182 0 is_stmt 0
	xorl	%ebp, %ebp
	movl	%r14d, 376(%rsp)
	movq	48(%rsp), %r13
	movq	%rbp, 16(%rsp)
	movq	248(%rsp), %r15
	movq	256(%rsp), %rbp
	movq	56(%rsp), %r12
	movq	272(%rsp), %r8
	movq	280(%rsp), %r9
	movq	288(%rsp), %r10
	movq	264(%rsp), %r14
	.p2align 4,,10
	.p2align 3
.L47:
	.loc 1 184 0 is_stmt 1 discriminator 1
	movl	8(%rsp), %r11d
	testl	%r11d, %r11d
	jle	.L69
	.loc 1 184 0 is_stmt 0
	xorl	%esi, %esi
	cmpl	$8, %r11d
	pxor	%xmm6, %xmm6
	jle	.L51
	movq	24(%rsp), %rdx
	.loc 1 185 0 is_stmt 1
	pxor	%xmm2, %xmm2
	movsd	(%rbx,%r15,8), %xmm7
	movl	40(%rsp), %r11d
	movsd	(%rbx,%r10,8), %xmm10
	movq	32(%rsp), %rax
	movq	%rdx, %rdi
	movsd	(%rbx,%r9,8), %xmm13
	subq	$-128, %rdi
	movsd	-128(%rdi), %xmm4
	movsd	-120(%rdi), %xmm1
	leal	-8(%r11), %ecx
	prefetcht0	(%rdi)
	mulsd	(%rbx), %xmm4
	movl	$8, %esi
	addq	%rbx, %rax
	mulsd	(%rbx,%r13,8), %xmm1
	shrl	$3, %ecx
	leaq	192(%rdx), %rdx
	movsd	-112(%rdi), %xmm6
	andl	$1, %ecx
	movsd	-104(%rdi), %xmm5
	cmpl	%r11d, %esi
	mulsd	(%rbx,%rbp,8), %xmm6
	mulsd	%xmm5, %xmm7
	addsd	%xmm4, %xmm2
	movsd	-96(%rdi), %xmm9
	movsd	-88(%rdi), %xmm12
	mulsd	%xmm9, %xmm10
	mulsd	%xmm12, %xmm13
	movapd	%xmm2, %xmm3
	movsd	-80(%rdi), %xmm15
	movsd	(%rbx,%r8,8), %xmm0
	addsd	%xmm1, %xmm3
	movsd	(%rbx,%r14,8), %xmm2
	mulsd	%xmm15, %xmm0
	movsd	-72(%rdi), %xmm1
	addsd	%xmm3, %xmm6
	mulsd	%xmm1, %xmm2
	movapd	%xmm6, %xmm8
	addsd	%xmm7, %xmm8
	addsd	%xmm10, %xmm8
	movapd	%xmm8, %xmm14
	addsd	%xmm13, %xmm14
	addsd	%xmm0, %xmm14
	movapd	%xmm14, %xmm6
	addsd	%xmm2, %xmm6
	je	.L51
	testl	%ecx, %ecx
	je	.L333
	movsd	-128(%rdx), %xmm3
	movl	$16, %esi
	movq	24(%rsp), %r11
	movsd	-112(%rdx), %xmm5
	prefetcht0	(%rdx)
	mulsd	(%rax), %xmm3
	mulsd	(%rax,%rbp,8), %xmm5
	movsd	-104(%rdx), %xmm7
	movsd	(%rax,%r15,8), %xmm8
	movsd	-96(%rdx), %xmm10
	mulsd	%xmm7, %xmm8
	addsd	%xmm6, %xmm3
	movsd	-120(%rdx), %xmm6
	movsd	(%rax,%r10,8), %xmm11
	mulsd	(%rax,%r13,8), %xmm6
	mulsd	%xmm10, %xmm11
	movsd	-88(%rdx), %xmm13
	movsd	(%rax,%r9,8), %xmm14
	movsd	-80(%rdx), %xmm0
	mulsd	%xmm13, %xmm14
	addsd	%xmm3, %xmm6
	movsd	(%rax,%r8,8), %xmm4
	movsd	-72(%rdx), %xmm1
	leaq	256(%r11), %rdx
	mulsd	%xmm0, %xmm4
	movsd	(%rax,%r14,8), %xmm2
	addq	32(%rsp), %rax
	addsd	%xmm6, %xmm5
	cmpl	40(%rsp), %esi
	mulsd	%xmm1, %xmm2
	movapd	%xmm5, %xmm9
	addsd	%xmm8, %xmm9
	addsd	%xmm11, %xmm9
	movapd	%xmm9, %xmm15
	addsd	%xmm14, %xmm15
	addsd	%xmm4, %xmm15
	movapd	%xmm15, %xmm6
	addsd	%xmm2, %xmm6
	je	.L51
.L333:
	movq	32(%rsp), %rdi
	movl	40(%rsp), %r11d
.L50:
	.loc 1 185 0 is_stmt 0 discriminator 3
	movsd	-128(%rdx), %xmm5
	leaq	64(%rdx), %rcx
	prefetcht0	(%rdx)
	movsd	-120(%rdx), %xmm7
	addl	$16, %esi
	subq	$-128, %rdx
	mulsd	(%rax), %xmm5
	prefetcht0	(%rcx)
	movsd	(%rax,%r13,8), %xmm8
	movsd	-240(%rdx), %xmm10
	mulsd	%xmm7, %xmm8
	mulsd	(%rax,%rbp,8), %xmm10
	movsd	-232(%rdx), %xmm11
	addsd	%xmm6, %xmm5
	movsd	-224(%rdx), %xmm14
	mulsd	(%rax,%r15,8), %xmm11
	movsd	(%rax,%r10,8), %xmm15
	movsd	-216(%rdx), %xmm4
	movapd	%xmm5, %xmm9
	mulsd	%xmm14, %xmm15
	mulsd	(%rax,%r9,8), %xmm4
	addsd	%xmm8, %xmm9
	movsd	-208(%rdx), %xmm2
	movsd	(%rax,%r8,8), %xmm6
	movsd	-200(%rdx), %xmm7
	mulsd	%xmm2, %xmm6
	addsd	%xmm9, %xmm10
	mulsd	(%rax,%r14,8), %xmm7
	addq	%rdi, %rax
	movsd	(%rax,%r13,8), %xmm12
	movsd	-176(%rdx), %xmm14
	movsd	(%rax,%r15,8), %xmm0
	movapd	%xmm10, %xmm13
	movsd	-192(%rdx), %xmm10
	mulsd	(%rax,%rbp,8), %xmm14
	addsd	%xmm11, %xmm13
	mulsd	(%rax), %xmm10
	movsd	-184(%rdx), %xmm11
	movsd	-160(%rdx), %xmm1
	mulsd	%xmm11, %xmm12
	addsd	%xmm15, %xmm13
	movsd	-168(%rdx), %xmm15
	movsd	-152(%rdx), %xmm5
	mulsd	%xmm15, %xmm0
	movsd	(%rax,%r9,8), %xmm2
	movapd	%xmm13, %xmm3
	movsd	-144(%rdx), %xmm8
	mulsd	%xmm5, %xmm2
	addsd	%xmm4, %xmm3
	movsd	-136(%rdx), %xmm11
	addsd	%xmm6, %xmm3
	movapd	%xmm3, %xmm9
	movsd	(%rax,%r10,8), %xmm3
	addsd	%xmm7, %xmm9
	mulsd	%xmm1, %xmm3
	addsd	%xmm9, %xmm10
	movsd	(%rax,%r8,8), %xmm9
	mulsd	%xmm8, %xmm9
	movapd	%xmm10, %xmm13
	addsd	%xmm12, %xmm13
	movsd	(%rax,%r14,8), %xmm12
	addq	%rdi, %rax
	cmpl	%r11d, %esi
	mulsd	%xmm11, %xmm12
	addsd	%xmm13, %xmm14
	movapd	%xmm14, %xmm4
	addsd	%xmm0, %xmm4
	addsd	%xmm3, %xmm4
	movapd	%xmm4, %xmm7
	addsd	%xmm2, %xmm7
	addsd	%xmm9, %xmm7
	movapd	%xmm7, %xmm6
	addsd	%xmm12, %xmm6
	jne	.L50
.L51:
	movq	24(%rsp), %rdx
	movslq	%esi, %rax
	movq	112(%rsp), %rdi
	.loc 1 184 0 is_stmt 1
	leal	1(%rsi), %ecx
	leaq	(%rdx,%rax,8), %r11
	movl	376(%rsp), %eax
	.loc 1 185 0
	movsd	(%r11), %xmm0
	leaq	8(%r11), %rdx
	imull	%esi, %eax
	cltq
	addq	16(%rsp), %rax
	leaq	(%rdi,%rax,8), %rax
	movl	%esi, %edi
	notl	%edi
	addl	8(%rsp), %edi
	mulsd	(%rax), %xmm0
	addq	%r12, %rax
	andl	$7, %edi
	.loc 1 184 0
	cmpl	%ecx, 8(%rsp)
	.loc 1 185 0
	addsd	%xmm6, %xmm0
	.loc 1 184 0
	jle	.L326
	testl	%edi, %edi
	je	.L48
	cmpl	$1, %edi
	je	.L239
	cmpl	$2, %edi
	je	.L240
	cmpl	$3, %edi
	je	.L241
	cmpl	$4, %edi
	je	.L242
	cmpl	$5, %edi
	je	.L243
	cmpl	$6, %edi
	je	.L244
	.loc 1 185 0
	movsd	8(%r11), %xmm13
	.loc 1 184 0
	leal	2(%rsi), %ecx
	leaq	16(%r11), %rdx
	.loc 1 185 0
	mulsd	(%rax), %xmm13
	addq	%r12, %rax
	addsd	%xmm13, %xmm0
.L244:
	movsd	(%rdx), %xmm14
	.loc 1 184 0
	addl	$1, %ecx
	addq	$8, %rdx
	.loc 1 185 0
	mulsd	(%rax), %xmm14
	addq	%r12, %rax
	addsd	%xmm14, %xmm0
.L243:
	movsd	(%rdx), %xmm15
	.loc 1 184 0
	addl	$1, %ecx
	addq	$8, %rdx
	.loc 1 185 0
	mulsd	(%rax), %xmm15
	addq	%r12, %rax
	addsd	%xmm15, %xmm0
.L242:
	movsd	(%rdx), %xmm4
	.loc 1 184 0
	addl	$1, %ecx
	addq	$8, %rdx
	.loc 1 185 0
	mulsd	(%rax), %xmm4
	addq	%r12, %rax
	addsd	%xmm4, %xmm0
.L241:
	movsd	(%rdx), %xmm1
	.loc 1 184 0
	addl	$1, %ecx
	addq	$8, %rdx
	.loc 1 185 0
	mulsd	(%rax), %xmm1
	addq	%r12, %rax
	addsd	%xmm1, %xmm0
.L240:
	movsd	(%rdx), %xmm3
	.loc 1 184 0
	addl	$1, %ecx
	addq	$8, %rdx
	.loc 1 185 0
	mulsd	(%rax), %xmm3
	addq	%r12, %rax
	addsd	%xmm3, %xmm0
.L239:
	movsd	(%rdx), %xmm6
	.loc 1 184 0
	addl	$1, %ecx
	addq	$8, %rdx
	.loc 1 185 0
	mulsd	(%rax), %xmm6
	addq	%r12, %rax
	.loc 1 184 0
	cmpl	%ecx, 8(%rsp)
	.loc 1 185 0
	addsd	%xmm6, %xmm0
	.loc 1 184 0
	jle	.L326
.L48:
	.loc 1 185 0
	movsd	(%rdx), %xmm5
	.loc 1 184 0
	addl	$8, %ecx
	addq	$64, %rdx
	.loc 1 185 0
	movsd	-56(%rdx), %xmm2
	mulsd	(%rax), %xmm5
	addq	%r12, %rax
	mulsd	(%rax), %xmm2
	addq	%r12, %rax
	movsd	-48(%rdx), %xmm7
	movsd	(%rax), %xmm8
	addq	%r12, %rax
	movsd	(%rax), %xmm10
	addq	%r12, %rax
	mulsd	%xmm7, %xmm8
	addsd	%xmm5, %xmm0
	movsd	-32(%rdx), %xmm12
	movsd	(%rax), %xmm13
	addq	%r12, %rax
	movsd	-24(%rdx), %xmm15
	mulsd	%xmm12, %xmm13
	addsd	%xmm2, %xmm0
	movsd	(%rax), %xmm4
	addq	%r12, %rax
	movsd	-16(%rdx), %xmm1
	mulsd	%xmm15, %xmm4
	movsd	(%rax), %xmm6
	addq	%r12, %rax
	movapd	%xmm0, %xmm9
	movsd	-40(%rdx), %xmm0
	mulsd	%xmm1, %xmm6
	mulsd	%xmm0, %xmm10
	addsd	%xmm8, %xmm9
	movsd	-8(%rdx), %xmm0
	mulsd	(%rax), %xmm0
	addq	%r12, %rax
	.loc 1 184 0
	cmpl	%ecx, 8(%rsp)
	.loc 1 185 0
	addsd	%xmm10, %xmm9
	movapd	%xmm9, %xmm14
	addsd	%xmm13, %xmm14
	addsd	%xmm4, %xmm14
	movapd	%xmm14, %xmm5
	addsd	%xmm6, %xmm5
	addsd	%xmm5, %xmm0
	.loc 1 184 0
	jg	.L48
.L326:
	subsd	.LC3(%rip), %xmm0
.L52:
	.loc 1 187 0 discriminator 2
	pxor	%xmm1, %xmm1
	movq	%r10, 96(%rsp)
	movq	%r9, 88(%rsp)
	movq	%r8, 80(%rsp)
	addq	$8, %rbx
	call	_Z4dMaxdd
	.loc 1 189 0 discriminator 2
	movq	16(%rsp), %r9
	movq	128(%rsp), %r10
	.loc 1 194 0 discriminator 2
	movsd	72(%rsp), %xmm2
	.loc 1 182 0 discriminator 2
	movq	80(%rsp), %r8
	.loc 1 189 0 discriminator 2
	mulsd	(%r10,%r9,8), %xmm0
	addq	$1, %r9
	.loc 1 182 0 discriminator 2
	cmpq	136(%rsp), %r9
	movq	%r9, 16(%rsp)
	movq	96(%rsp), %r10
	movq	88(%rsp), %r9
	.loc 1 194 0 discriminator 2
	addsd	%xmm0, %xmm2
	.loc 1 195 0 discriminator 2
	mulsd	%xmm0, %xmm0
	addsd	64(%rsp), %xmm0
	.loc 1 194 0 discriminator 2
	movsd	%xmm2, 72(%rsp)
	.loc 1 195 0 discriminator 2
	movsd	%xmm0, 64(%rsp)
	.loc 1 182 0 discriminator 2
	jne	.L47
	movl	376(%rsp), %r14d
.L46:
	movq	48(%rsp), %rbx
	addq	%rbx, 200(%rsp)
	movq	200(%rsp), %rbp
	.loc 1 150 0 discriminator 2
	cmpq	%rbp, 368(%rsp)
	jg	.L54
	movsd	72(%rsp), %xmm12
	movsd	64(%rsp), %xmm11
	movapd	%xmm12, %xmm10
	mulsd	%xmm12, %xmm10
.L13:
	.loc 1 200 0
	pxor	%xmm13, %xmm13
	cvtsi2sdq	368(%rsp), %xmm13
	.loc 1 201 0
	divsd	%xmm13, %xmm10
	.loc 1 202 0
	movapd	%xmm13, %xmm8
	subsd	.LC3(%rip), %xmm8
	.loc 1 201 0
	subsd	%xmm10, %xmm11
	movapd	%xmm11, %xmm7
	.loc 1 202 0
	divsd	%xmm8, %xmm7
	sqrtsd	%xmm7, %xmm9
	ucomisd	%xmm9, %xmm9
	movapd	%xmm7, %xmm0
	jp	.L355
.L55:
	sqrtsd	%xmm13, %xmm0
	ucomisd	%xmm0, %xmm0
	jp	.L356
.L57:
	.loc 1 200 0
	divsd	%xmm13, %xmm12
	.loc 1 205 0
	movq	240(%rsp), %r12
	.loc 1 209 0
	movl	$1, %eax
	.loc 1 202 0
	divsd	%xmm0, %xmm9
	.loc 1 205 0
	movsd	%xmm12, (%r12)
	.loc 1 206 0
	movsd	%xmm9, 8(%r12)
	.loc 1 209 0
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L29:
	cmpl	$8, %r14d
	jle	.L63
	.loc 1 160 0
	movsd	(%rdi), %xmm15
	leaq	160(%rdi), %r9
	leaq	160(%r8), %r12
	movl	148(%rsp), %r13d
	movl	$8, %esi
	leaq	224(%rdi), %rdx
	prefetcht0	(%r9)
	prefetcht0	(%r12)
	movsd	%xmm15, (%r8)
	leaq	224(%r8), %rax
	movsd	8(%rdi), %xmm0
	leal	-8(%r13), %ecx
	movsd	%xmm0, 8(%r8)
	shrl	$3, %ecx
	andl	$1, %ecx
	cmpl	$8, %r13d
	movsd	16(%rdi), %xmm4
	movsd	%xmm4, 16(%r8)
	movsd	24(%rdi), %xmm2
	movsd	%xmm2, 24(%r8)
	movsd	32(%rdi), %xmm1
	movsd	%xmm1, 32(%r8)
	movsd	40(%rdi), %xmm3
	movsd	%xmm3, 40(%r8)
	movsd	48(%rdi), %xmm6
	movsd	%xmm6, 48(%r8)
	movsd	56(%rdi), %xmm5
	movsd	%xmm5, 56(%r8)
	je	.L18
	testl	%ecx, %ecx
	je	.L345
	movsd	-160(%rdx), %xmm7
	prefetcht0	(%rdx)
	cmpl	$16, 148(%rsp)
	prefetcht0	(%rax)
	movl	$16, %esi
	movsd	%xmm7, -160(%rax)
	movsd	-152(%rdx), %xmm8
	movsd	%xmm8, -152(%rax)
	movsd	-144(%rdx), %xmm9
	movsd	%xmm9, -144(%rax)
	movsd	-136(%rdx), %xmm10
	movsd	%xmm10, -136(%rax)
	movsd	-128(%rdx), %xmm11
	movsd	%xmm11, -128(%rax)
	movsd	-120(%rdx), %xmm12
	movsd	%xmm12, -120(%rax)
	movsd	-112(%rdx), %xmm13
	movsd	%xmm13, -112(%rax)
	movsd	-104(%rdx), %xmm14
	leaq	288(%rdi), %rdx
	movsd	%xmm14, -104(%rax)
	leaq	288(%r8), %rax
	je	.L18
.L345:
	movl	148(%rsp), %r11d
.L19:
	movsd	-160(%rdx), %xmm15
	prefetcht0	(%rdx)
	leaq	64(%rdx), %r9
	leaq	64(%rax), %r12
	prefetcht0	(%rax)
	addl	$16, %esi
	movsd	%xmm15, -160(%rax)
	prefetcht0	(%r9)
	subq	$-128, %rdx
	prefetcht0	(%r12)
	subq	$-128, %rax
	movsd	-280(%rdx), %xmm0
	movsd	%xmm0, -280(%rax)
	movsd	-272(%rdx), %xmm4
	movsd	%xmm4, -272(%rax)
	movsd	-264(%rdx), %xmm2
	movsd	%xmm2, -264(%rax)
	movsd	-256(%rdx), %xmm1
	movsd	%xmm1, -256(%rax)
	movsd	-248(%rdx), %xmm3
	movsd	%xmm3, -248(%rax)
	movsd	-240(%rdx), %xmm6
	movsd	%xmm6, -240(%rax)
	movsd	-232(%rdx), %xmm5
	movsd	%xmm5, -232(%rax)
	movsd	-224(%rdx), %xmm7
	movsd	%xmm7, -224(%rax)
	movsd	-216(%rdx), %xmm8
	movsd	%xmm8, -216(%rax)
	movsd	-208(%rdx), %xmm9
	movsd	%xmm9, -208(%rax)
	movsd	-200(%rdx), %xmm10
	movsd	%xmm10, -200(%rax)
	movsd	-192(%rdx), %xmm11
	movsd	%xmm11, -192(%rax)
	movsd	-184(%rdx), %xmm12
	movsd	%xmm12, -184(%rax)
	movsd	-176(%rdx), %xmm13
	movsd	%xmm13, -176(%rax)
	movsd	-168(%rdx), %xmm14
	movsd	%xmm14, -168(%rax)
	cmpl	%esi, %r11d
	jne	.L19
.L18:
	movslq	%esi, %r13
	leal	-1(%r14), %edx
	leal	1(%rsi), %r11d
	leaq	(%rdi,%r13,8), %r10
	movq	104(%rsp), %rdi
	addq	%rbp, %r13
	subl	%esi, %edx
	movl	$1, %eax
	movsd	(%r10), %xmm15
	andl	$7, %edx
	.loc 1 159 0
	cmpl	%r11d, %r14d
	leaq	(%rdi,%r13,8), %rcx
	.loc 1 160 0
	movsd	%xmm15, (%rcx)
	.loc 1 159 0
	jle	.L26
	testl	%edx, %edx
	je	.L20
	cmpl	$1, %edx
	je	.L259
	cmpl	$2, %edx
	je	.L260
	cmpl	$3, %edx
	je	.L261
	cmpl	$4, %edx
	je	.L262
	cmpl	$5, %edx
	je	.L263
	cmpl	$6, %edx
	je	.L264
	.loc 1 160 0
	movsd	8(%r10), %xmm0
	movl	$2, %eax
	movsd	%xmm0, 8(%rcx)
.L264:
	movsd	(%r10,%rax,8), %xmm4
	movsd	%xmm4, (%rcx,%rax,8)
	addq	$1, %rax
.L263:
	movsd	(%r10,%rax,8), %xmm2
	movsd	%xmm2, (%rcx,%rax,8)
	addq	$1, %rax
.L262:
	movsd	(%r10,%rax,8), %xmm1
	movsd	%xmm1, (%rcx,%rax,8)
	addq	$1, %rax
.L261:
	movsd	(%r10,%rax,8), %xmm3
	movsd	%xmm3, (%rcx,%rax,8)
	addq	$1, %rax
.L260:
	movsd	(%r10,%rax,8), %xmm6
	movsd	%xmm6, (%rcx,%rax,8)
	addq	$1, %rax
.L259:
	movsd	(%r10,%rax,8), %xmm5
	movsd	%xmm5, (%rcx,%rax,8)
	addq	$1, %rax
	leal	(%rsi,%rax), %r9d
	.loc 1 159 0
	cmpl	%r9d, %r14d
	jle	.L26
.L20:
	.loc 1 160 0
	movsd	(%r10,%rax,8), %xmm7
	leaq	1(%rax), %r12
	leaq	2(%rax), %r13
	leaq	3(%rax), %rdi
	leaq	4(%rax), %rdx
	leaq	5(%rax), %r11
	movsd	%xmm7, (%rcx,%rax,8)
	leaq	6(%rax), %r9
	movsd	(%r10,%r12,8), %xmm8
	movsd	%xmm8, (%rcx,%r12,8)
	leaq	7(%rax), %r12
	addq	$8, %rax
	movsd	(%r10,%r13,8), %xmm9
	movsd	%xmm9, (%rcx,%r13,8)
	leal	(%rsi,%rax), %r13d
	movsd	(%r10,%rdi,8), %xmm10
	.loc 1 159 0
	cmpl	%r13d, %r14d
	.loc 1 160 0
	movsd	%xmm10, (%rcx,%rdi,8)
	movsd	(%r10,%rdx,8), %xmm11
	movsd	%xmm11, (%rcx,%rdx,8)
	movsd	(%r10,%r11,8), %xmm12
	movsd	%xmm12, (%rcx,%r11,8)
	movsd	(%r10,%r9,8), %xmm13
	movsd	%xmm13, (%rcx,%r9,8)
	movsd	(%r10,%r12,8), %xmm14
	movsd	%xmm14, (%rcx,%r12,8)
	.loc 1 159 0
	jg	.L20
	jmp	.L26
	.p2align 4,,10
	.p2align 3
.L45:
	cmpl	$8, %r14d
	jle	.L66
	leaq	184(%r10), %r12
	movl	148(%rsp), %r11d
	movl	$8, %esi
	leaq	(%rcx,%r12), %r8
	addq	%r15, %r12
	leal	-8(%r11), %r9d
	prefetcht0	(%r12)
	leaq	64(%r12), %rax
	.loc 1 172 0
	movsd	-184(%r8), %xmm4
	prefetcht0	(%r8)
	leaq	64(%r8), %rdx
	shrl	$3, %r9d
	movsd	%xmm4, -184(%r12)
	andl	$1, %r9d
	cmpl	%r11d, %esi
	movsd	-176(%r8), %xmm2
	movsd	%xmm2, -176(%r12)
	movsd	-168(%r8), %xmm1
	movsd	%xmm1, -168(%r12)
	movsd	-160(%r8), %xmm3
	movsd	%xmm3, -160(%r12)
	movsd	-152(%r8), %xmm6
	movsd	%xmm6, -152(%r12)
	movsd	-144(%r8), %xmm5
	movsd	%xmm5, -144(%r12)
	movsd	-136(%r8), %xmm7
	movsd	%xmm7, -136(%r12)
	movsd	-128(%r8), %xmm8
	movsd	%xmm8, -128(%r12)
	je	.L34
	testl	%r9d, %r9d
	je	.L337
	movsd	-184(%rdx), %xmm9
	prefetcht0	(%rdx)
	movl	$16, %esi
	cmpl	148(%rsp), %esi
	prefetcht0	(%rax)
	movsd	%xmm9, -184(%rax)
	movsd	-176(%rdx), %xmm10
	movsd	%xmm10, -176(%rax)
	movsd	-168(%rdx), %xmm11
	movsd	%xmm11, -168(%rax)
	movsd	-160(%rdx), %xmm12
	movsd	%xmm12, -160(%rax)
	movsd	-152(%rdx), %xmm13
	movsd	%xmm13, -152(%rax)
	movsd	-144(%rdx), %xmm14
	movsd	%xmm14, -144(%rax)
	movsd	-136(%rdx), %xmm15
	movsd	%xmm15, -136(%rax)
	movsd	-128(%rdx), %xmm0
	leaq	128(%r8), %rdx
	movsd	%xmm0, -128(%rax)
	leaq	128(%r12), %rax
	je	.L34
.L337:
	movl	148(%rsp), %r12d
.L35:
	movsd	-184(%rdx), %xmm4
	prefetcht0	(%rdx)
	leaq	64(%rdx), %r8
	leaq	64(%rax), %rdi
	prefetcht0	(%rax)
	addl	$16, %esi
	movsd	%xmm4, -184(%rax)
	prefetcht0	(%r8)
	subq	$-128, %rdx
	prefetcht0	(%rdi)
	subq	$-128, %rax
	movsd	-304(%rdx), %xmm2
	movsd	%xmm2, -304(%rax)
	movsd	-296(%rdx), %xmm1
	movsd	%xmm1, -296(%rax)
	movsd	-288(%rdx), %xmm3
	movsd	%xmm3, -288(%rax)
	movsd	-280(%rdx), %xmm6
	movsd	%xmm6, -280(%rax)
	movsd	-272(%rdx), %xmm5
	movsd	%xmm5, -272(%rax)
	movsd	-264(%rdx), %xmm7
	movsd	%xmm7, -264(%rax)
	movsd	-256(%rdx), %xmm8
	movsd	%xmm8, -256(%rax)
	movsd	-248(%rdx), %xmm9
	movsd	%xmm9, -248(%rax)
	movsd	-240(%rdx), %xmm10
	movsd	%xmm10, -240(%rax)
	movsd	-232(%rdx), %xmm11
	movsd	%xmm11, -232(%rax)
	movsd	-224(%rdx), %xmm12
	movsd	%xmm12, -224(%rax)
	movsd	-216(%rdx), %xmm13
	movsd	%xmm13, -216(%rax)
	movsd	-208(%rdx), %xmm14
	movsd	%xmm14, -208(%rax)
	movsd	-200(%rdx), %xmm15
	movsd	%xmm15, -200(%rax)
	movsd	-192(%rdx), %xmm0
	movsd	%xmm0, -192(%rax)
	cmpl	%r12d, %esi
	jne	.L35
.L34:
	movslq	%esi, %r11
	addq	80(%rsp), %r11
	leal	-1(%r14), %r13d
	leal	1(%rsi), %r9d
	movl	$1, %edx
	subl	%esi, %r13d
	andl	$7, %r13d
	salq	$3, %r11
	addq	%r11, %rcx
	addq	%r15, %r11
	.loc 1 170 0
	cmpl	%r9d, %r14d
	.loc 1 172 0
	movsd	(%rcx), %xmm4
	movsd	%xmm4, (%r11)
	.loc 1 170 0
	jle	.L42
	testl	%r13d, %r13d
	je	.L36
	cmpl	$1, %r13d
	je	.L245
	cmpl	$2, %r13d
	je	.L246
	cmpl	$3, %r13d
	je	.L247
	cmpl	$4, %r13d
	je	.L248
	cmpl	$5, %r13d
	je	.L249
	cmpl	$6, %r13d
	je	.L250
	.loc 1 172 0
	movsd	8(%rcx), %xmm2
	movl	$2, %edx
	movsd	%xmm2, 8(%r11)
.L250:
	movsd	(%rcx,%rdx,8), %xmm1
	movsd	%xmm1, (%r11,%rdx,8)
	addq	$1, %rdx
.L249:
	movsd	(%rcx,%rdx,8), %xmm3
	movsd	%xmm3, (%r11,%rdx,8)
	addq	$1, %rdx
.L248:
	movsd	(%rcx,%rdx,8), %xmm6
	movsd	%xmm6, (%r11,%rdx,8)
	addq	$1, %rdx
.L247:
	movsd	(%rcx,%rdx,8), %xmm5
	movsd	%xmm5, (%r11,%rdx,8)
	addq	$1, %rdx
.L246:
	movsd	(%rcx,%rdx,8), %xmm7
	movsd	%xmm7, (%r11,%rdx,8)
	addq	$1, %rdx
.L245:
	movsd	(%rcx,%rdx,8), %xmm8
	movsd	%xmm8, (%r11,%rdx,8)
	addq	$1, %rdx
	leal	(%rsi,%rdx), %eax
	.loc 1 170 0
	cmpl	%eax, %r14d
	jle	.L42
.L36:
	.loc 1 172 0
	movsd	(%rcx,%rdx,8), %xmm9
	leaq	1(%rdx), %r12
	leaq	2(%rdx), %r8
	leaq	3(%rdx), %rdi
	leaq	4(%rdx), %r13
	leaq	5(%rdx), %r9
	movsd	%xmm9, (%r11,%rdx,8)
	leaq	6(%rdx), %rax
	movsd	(%rcx,%r12,8), %xmm10
	movsd	%xmm10, (%r11,%r12,8)
	leaq	7(%rdx), %r12
	addq	$8, %rdx
	movsd	(%rcx,%r8,8), %xmm11
	movsd	%xmm11, (%r11,%r8,8)
	leal	(%rsi,%rdx), %r8d
	movsd	(%rcx,%rdi,8), %xmm12
	.loc 1 170 0
	cmpl	%r8d, %r14d
	.loc 1 172 0
	movsd	%xmm12, (%r11,%rdi,8)
	movsd	(%rcx,%r13,8), %xmm13
	movsd	%xmm13, (%r11,%r13,8)
	movsd	(%rcx,%r9,8), %xmm14
	movsd	%xmm14, (%r11,%r9,8)
	movsd	(%rcx,%rax,8), %xmm15
	movsd	%xmm15, (%r11,%rax,8)
	movsd	(%rcx,%r12,8), %xmm0
	movsd	%xmm0, (%r11,%r12,8)
	.loc 1 170 0
	jg	.L36
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L69:
	.loc 1 184 0
	movsd	.LC1(%rip), %xmm0
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L66:
	.loc 1 170 0
	xorl	%esi, %esi
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L63:
	.loc 1 159 0
	xorl	%esi, %esi
	jmp	.L18
.L61:
	.loc 1 150 0
	pxor	%xmm10, %xmm10
	movsd	%xmm10, 64(%rsp)
	movapd	%xmm10, %xmm12
	movapd	%xmm10, %xmm11
	jmp	.L13
.L356:
	.loc 1 202 0
	movapd	%xmm13, %xmm0
	movsd	%xmm9, 24(%rsp)
	movsd	%xmm12, 16(%rsp)
	movsd	%xmm13, 8(%rsp)
	call	sqrt
	movsd	24(%rsp), %xmm9
	movsd	16(%rsp), %xmm12
	movsd	8(%rsp), %xmm13
	jmp	.L57
.L355:
	movsd	%xmm12, 16(%rsp)
	movsd	%xmm13, 8(%rsp)
	call	sqrt
	movsd	16(%rsp), %xmm12
	movapd	%xmm0, %xmm9
	movsd	8(%rsp), %xmm13
	jmp	.L55
.LBE8:
	.cfi_endproc
.LFE74:
	.size	_Z21HJM_Swaption_BlockingPddddddiidS_PS_llii, .-_Z21HJM_Swaption_BlockingPddddddiidS_PS_llii
	.section	.text.unlikely
.LCOLDE4:
	.text
.LHOTE4:
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	-1074790400
	.align 8
.LC2:
	.long	0
	.long	1071644672
	.align 8
.LC3:
	.long	0
	.long	1072693248
	.text
.Letext0:
	.section	.text.unlikely
.Letext_cold0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.9/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "/usr/include/c++/4.9/cstring"
	.file 6 "/usr/include/string.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x643
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF98
	.byte	0x4
	.long	.LASF99
	.long	.LASF100
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd4
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x83
	.long	0x69
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x84
	.long	0x69
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x7
	.long	.LASF41
	.byte	0xd8
	.byte	0x4
	.byte	0xf5
	.long	0x21c
	.uleb128 0x8
	.long	.LASF12
	.byte	0x4
	.byte	0xf6
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF13
	.byte	0x4
	.byte	0xfb
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF14
	.byte	0x4
	.byte	0xfc
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF15
	.byte	0x4
	.byte	0xfd
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.byte	0xfe
	.long	0x8f
	.byte	0x20
	.uleb128 0x8
	.long	.LASF17
	.byte	0x4
	.byte	0xff
	.long	0x8f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF18
	.byte	0x4
	.value	0x100
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.value	0x101
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.value	0x102
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.value	0x104
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.value	0x105
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.value	0x106
	.long	0x8f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.value	0x108
	.long	0x254
	.byte	0x60
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.value	0x10a
	.long	0x25a
	.byte	0x68
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.value	0x10c
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.value	0x110
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.value	0x112
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.value	0x116
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.value	0x117
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.value	0x118
	.long	0x260
	.byte	0x83
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.value	0x11c
	.long	0x270
	.byte	0x88
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.value	0x125
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.value	0x12e
	.long	0x8d
	.byte	0x98
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.value	0x12f
	.long	0x8d
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.value	0x130
	.long	0x8d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.value	0x131
	.long	0x8d
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.value	0x132
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.value	0x134
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.value	0x136
	.long	0x276
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF101
	.byte	0x4
	.byte	0x9a
	.uleb128 0x7
	.long	.LASF42
	.byte	0x18
	.byte	0x4
	.byte	0xa0
	.long	0x254
	.uleb128 0x8
	.long	.LASF43
	.byte	0x4
	.byte	0xa1
	.long	0x254
	.byte	0
	.uleb128 0x8
	.long	.LASF44
	.byte	0x4
	.byte	0xa2
	.long	0x25a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF45
	.byte	0x4
	.byte	0xa6
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x223
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0xb
	.long	0x95
	.long	0x270
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x21c
	.uleb128 0xb
	.long	0x95
	.long	0x286
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x28c
	.uleb128 0xd
	.long	0x95
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF46
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF47
	.uleb128 0x6
	.byte	0x8
	.long	0x2a5
	.uleb128 0xe
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF48
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF49
	.uleb128 0x6
	.byte	0x8
	.long	0x2ad
	.uleb128 0x6
	.byte	0x8
	.long	0x2b4
	.uleb128 0xf
	.string	"std"
	.byte	0x8
	.byte	0
	.long	0x30b
	.uleb128 0x10
	.byte	0x5
	.byte	0x4b
	.long	0x30b
	.uleb128 0x10
	.byte	0x5
	.byte	0x52
	.long	0x32e
	.uleb128 0x10
	.byte	0x5
	.byte	0x55
	.long	0x348
	.uleb128 0x10
	.byte	0x5
	.byte	0x5b
	.long	0x35e
	.uleb128 0x10
	.byte	0x5
	.byte	0x5c
	.long	0x379
	.uleb128 0x10
	.byte	0x5
	.byte	0x5d
	.long	0x398
	.uleb128 0x10
	.byte	0x5
	.byte	0x5e
	.long	0x3b6
	.uleb128 0x10
	.byte	0x5
	.byte	0x5f
	.long	0x3d5
	.uleb128 0x10
	.byte	0x5
	.byte	0x60
	.long	0x3f4
	.byte	0
	.uleb128 0x11
	.long	.LASF54
	.byte	0x6
	.byte	0x59
	.long	.LASF54
	.long	0x29f
	.long	0x32e
	.uleb128 0x12
	.long	0x29f
	.uleb128 0x12
	.long	0x62
	.uleb128 0x12
	.long	0x2d
	.byte	0
	.uleb128 0x13
	.long	.LASF50
	.byte	0x6
	.byte	0x97
	.long	0x62
	.long	0x348
	.uleb128 0x12
	.long	0x286
	.uleb128 0x12
	.long	0x286
	.byte	0
	.uleb128 0x14
	.long	.LASF51
	.byte	0x6
	.value	0x19d
	.long	0x8f
	.long	0x35e
	.uleb128 0x12
	.long	0x62
	.byte	0
	.uleb128 0x14
	.long	.LASF52
	.byte	0x6
	.value	0x15c
	.long	0x8f
	.long	0x379
	.uleb128 0x12
	.long	0x8f
	.uleb128 0x12
	.long	0x286
	.byte	0
	.uleb128 0x13
	.long	.LASF53
	.byte	0x6
	.byte	0x9a
	.long	0x2d
	.long	0x398
	.uleb128 0x12
	.long	0x8f
	.uleb128 0x12
	.long	0x286
	.uleb128 0x12
	.long	0x2d
	.byte	0
	.uleb128 0x11
	.long	.LASF55
	.byte	0x6
	.byte	0xe5
	.long	.LASF55
	.long	0x286
	.long	0x3b6
	.uleb128 0x12
	.long	0x286
	.uleb128 0x12
	.long	0x62
	.byte	0
	.uleb128 0x15
	.long	.LASF56
	.byte	0x6
	.value	0x134
	.long	.LASF56
	.long	0x286
	.long	0x3d5
	.uleb128 0x12
	.long	0x286
	.uleb128 0x12
	.long	0x286
	.byte	0
	.uleb128 0x15
	.long	.LASF57
	.byte	0x6
	.value	0x100
	.long	.LASF57
	.long	0x286
	.long	0x3f4
	.uleb128 0x12
	.long	0x286
	.uleb128 0x12
	.long	0x62
	.byte	0
	.uleb128 0x15
	.long	.LASF58
	.byte	0x6
	.value	0x14f
	.long	.LASF58
	.long	0x286
	.long	0x413
	.uleb128 0x12
	.long	0x286
	.uleb128 0x12
	.long	0x286
	.byte	0
	.uleb128 0x16
	.long	.LASF102
	.byte	0x1
	.byte	0xe
	.long	.LASF103
	.long	0x62
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x630
	.uleb128 0x17
	.long	.LASF59
	.byte	0x1
	.byte	0xe
	.long	0x2b4
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x17
	.long	.LASF60
	.byte	0x1
	.byte	0x12
	.long	0x2ad
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x17
	.long	.LASF61
	.byte	0x1
	.byte	0x13
	.long	0x2ad
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x17
	.long	.LASF62
	.byte	0x1
	.byte	0x15
	.long	0x2ad
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x17
	.long	.LASF63
	.byte	0x1
	.byte	0x16
	.long	0x2ad
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x17
	.long	.LASF64
	.byte	0x1
	.byte	0x17
	.long	0x2ad
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x18
	.string	"iN"
	.byte	0x1
	.byte	0x1a
	.long	0x62
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.long	.LASF65
	.byte	0x1
	.byte	0x1b
	.long	0x62
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x17
	.long	.LASF66
	.byte	0x1
	.byte	0x1c
	.long	0x2ad
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x17
	.long	.LASF67
	.byte	0x1
	.byte	0x1d
	.long	0x2b4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.long	.LASF68
	.byte	0x1
	.byte	0x1e
	.long	0x2ba
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x17
	.long	.LASF69
	.byte	0x1
	.byte	0x20
	.long	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x17
	.long	.LASF70
	.byte	0x1
	.byte	0x21
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF71
	.byte	0x1
	.byte	0x22
	.long	0x62
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x18
	.string	"tid"
	.byte	0x1
	.byte	0x22
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x19
	.long	.Ldebug_ranges0+0
	.uleb128 0x1a
	.long	.LASF72
	.byte	0x1
	.byte	0x25
	.long	0x62
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x26
	.long	0x62
	.uleb128 0x1b
	.string	"b"
	.byte	0x1
	.byte	0x27
	.long	0x62
	.uleb128 0x1b
	.string	"l"
	.byte	0x1
	.byte	0x28
	.long	0x69
	.uleb128 0x1a
	.long	.LASF73
	.byte	0x1
	.byte	0x2a
	.long	0x2ad
	.uleb128 0x1a
	.long	.LASF74
	.byte	0x1
	.byte	0x2c
	.long	0x62
	.uleb128 0x1a
	.long	.LASF75
	.byte	0x1
	.byte	0x30
	.long	0x2ad
	.uleb128 0x1a
	.long	.LASF76
	.byte	0x1
	.byte	0x3f
	.long	0x62
	.uleb128 0x1a
	.long	.LASF77
	.byte	0x1
	.byte	0x41
	.long	0x2ba
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.byte	0x43
	.long	0x2b4
	.uleb128 0x1a
	.long	.LASF79
	.byte	0x1
	.byte	0x44
	.long	0x2ba
	.uleb128 0x1a
	.long	.LASF80
	.byte	0x1
	.byte	0x45
	.long	0x2b4
	.uleb128 0x1a
	.long	.LASF81
	.byte	0x1
	.byte	0x50
	.long	0x2b4
	.uleb128 0x1a
	.long	.LASF82
	.byte	0x1
	.byte	0x51
	.long	0x2b4
	.uleb128 0x1a
	.long	.LASF83
	.byte	0x1
	.byte	0x53
	.long	0x2b4
	.uleb128 0x1a
	.long	.LASF84
	.byte	0x1
	.byte	0x54
	.long	0x2b4
	.uleb128 0x1a
	.long	.LASF85
	.byte	0x1
	.byte	0x56
	.long	0x2b4
	.uleb128 0x1c
	.long	.LASF86
	.byte	0x1
	.byte	0x59
	.long	0x62
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1c
	.long	.LASF87
	.byte	0x1
	.byte	0x5a
	.long	0x62
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1a
	.long	.LASF88
	.byte	0x1
	.byte	0x5b
	.long	0x2ad
	.uleb128 0x1c
	.long	.LASF89
	.byte	0x1
	.byte	0x5d
	.long	0x2ad
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x1c
	.long	.LASF90
	.byte	0x1
	.byte	0x5e
	.long	0x2ad
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x1a
	.long	.LASF91
	.byte	0x1
	.byte	0x5f
	.long	0x2ad
	.uleb128 0x1a
	.long	.LASF92
	.byte	0x1
	.byte	0x62
	.long	0x2ad
	.uleb128 0x1a
	.long	.LASF93
	.byte	0x1
	.byte	0x63
	.long	0x2ad
	.uleb128 0x1a
	.long	.LASF94
	.byte	0x1
	.byte	0x66
	.long	0x2ad
	.uleb128 0x1a
	.long	.LASF95
	.byte	0x1
	.byte	0x67
	.long	0x2ad
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LASF96
	.byte	0x7
	.byte	0xa8
	.long	0x25a
	.uleb128 0x1d
	.long	.LASF97
	.byte	0x7
	.byte	0xa9
	.long	0x25a
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB2-.Ltext0
	.quad	.LBE2-.Ltext0
	.quad	.LBB3-.Ltext0
	.quad	.LBE3-.Ltext0
	.quad	.LBB4-.Ltext0
	.quad	.LBE4-.Ltext0
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	.LBB6-.Ltext0
	.quad	.LBE6-.Ltext0
	.quad	.LBB7-.Ltext0
	.quad	.LBE7-.Ltext0
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF85:
	.string	"pdSwapPayoffs"
.LASF102:
	.string	"HJM_Swaption_Blocking"
.LASF49:
	.string	"double"
.LASF99:
	.string	"/if16/jad5ju/Progs/opensource/parsec-3.0//pkgs/apps/swaptions/src/HJM_Swaption_Blocking.cpp"
.LASF67:
	.string	"pdYield"
.LASF17:
	.string	"_IO_write_ptr"
.LASF64:
	.string	"dPaymentInterval"
.LASF92:
	.string	"dSumSimSwaptionPrice"
.LASF23:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF59:
	.string	"pdSwaptionPrice"
.LASF10:
	.string	"sizetype"
.LASF33:
	.string	"_offset"
.LASF83:
	.string	"pdSwapRatePath"
.LASF56:
	.string	"strpbrk"
.LASF90:
	.string	"dDiscSwaptionPayoff"
.LASF103:
	.string	"_Z21HJM_Swaption_BlockingPddddddiidS_PS_llii"
.LASF12:
	.string	"_flags"
.LASF19:
	.string	"_IO_buf_base"
.LASF81:
	.string	"pdDiscountingRatePath"
.LASF24:
	.string	"_markers"
.LASF51:
	.string	"strerror"
.LASF84:
	.string	"pdSwapDiscountFactors"
.LASF60:
	.string	"dStrike"
.LASF89:
	.string	"dSwaptionPayoff"
.LASF68:
	.string	"ppdFactors"
.LASF76:
	.string	"iSwapVectorLength"
.LASF48:
	.string	"float"
.LASF46:
	.string	"long long int"
.LASF72:
	.string	"iSuccess"
.LASF71:
	.string	"BLOCKSIZE"
.LASF32:
	.string	"_lock"
.LASF94:
	.string	"dSimSwaptionMeanPrice"
.LASF6:
	.string	"long int"
.LASF62:
	.string	"dMaturity"
.LASF52:
	.string	"strtok"
.LASF29:
	.string	"_cur_column"
.LASF100:
	.string	"/localtmp/jad5ju/goa2/benchmarks/swaptions"
.LASF45:
	.string	"_pos"
.LASF98:
	.string	"GNU C++ 4.9.2 -mtune=generic -march=x86-64 -g -O3 -funroll-loops -fprefetch-loop-arrays -fpermissive -fno-exceptions -fstack-protector"
.LASF74:
	.string	"iFreqRatio"
.LASF44:
	.string	"_sbuf"
.LASF28:
	.string	"_old_offset"
.LASF9:
	.string	"__off64_t"
.LASF1:
	.string	"unsigned char"
.LASF93:
	.string	"dSumSquareSimSwaptionPrice"
.LASF21:
	.string	"_IO_save_base"
.LASF91:
	.string	"dFixedLegValue"
.LASF4:
	.string	"signed char"
.LASF47:
	.string	"long long unsigned int"
.LASF55:
	.string	"strchr"
.LASF3:
	.string	"unsigned int"
.LASF42:
	.string	"_IO_marker"
.LASF31:
	.string	"_shortbuf"
.LASF86:
	.string	"iSwapStartTimeIndex"
.LASF14:
	.string	"_IO_read_end"
.LASF16:
	.string	"_IO_write_base"
.LASF36:
	.string	"__pad3"
.LASF13:
	.string	"_IO_read_ptr"
.LASF20:
	.string	"_IO_buf_end"
.LASF69:
	.string	"iRndSeed"
.LASF63:
	.string	"dTenor"
.LASF66:
	.string	"dYears"
.LASF73:
	.string	"ddelt"
.LASF11:
	.string	"char"
.LASF41:
	.string	"_IO_FILE"
.LASF78:
	.string	"pdForward"
.LASF50:
	.string	"strcoll"
.LASF43:
	.string	"_next"
.LASF34:
	.string	"__pad1"
.LASF35:
	.string	"__pad2"
.LASF75:
	.string	"dStrikeCont"
.LASF37:
	.string	"__pad4"
.LASF38:
	.string	"__pad5"
.LASF79:
	.string	"ppdDrifts"
.LASF2:
	.string	"short unsigned int"
.LASF53:
	.string	"strxfrm"
.LASF0:
	.string	"long unsigned int"
.LASF61:
	.string	"dCompounding"
.LASF87:
	.string	"iSwapTimePoints"
.LASF18:
	.string	"_IO_write_end"
.LASF82:
	.string	"pdPayoffDiscountFactors"
.LASF70:
	.string	"lTrials"
.LASF26:
	.string	"_fileno"
.LASF25:
	.string	"_chain"
.LASF8:
	.string	"__off_t"
.LASF77:
	.string	"ppdHJMPath"
.LASF95:
	.string	"dSimSwaptionStdError"
.LASF22:
	.string	"_IO_backup_base"
.LASF96:
	.string	"stdin"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF15:
	.string	"_IO_read_base"
.LASF58:
	.string	"strstr"
.LASF80:
	.string	"pdTotalDrift"
.LASF30:
	.string	"_vtable_offset"
.LASF40:
	.string	"_unused2"
.LASF57:
	.string	"strrchr"
.LASF65:
	.string	"iFactors"
.LASF88:
	.string	"dSwapVectorYears"
.LASF97:
	.string	"stdout"
.LASF101:
	.string	"_IO_lock_t"
.LASF54:
	.string	"memchr"
	.ident	"GCC: (Ubuntu 4.9.2-0ubuntu1~14.04) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
