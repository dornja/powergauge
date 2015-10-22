	.file	"HJM.cpp"
	.text
.Ltext0:
	.section	.text.unlikely,"ax",@progbits
.LCOLDB5:
	.text
.LHOTB5:
	.p2align 4,,15
	.section	.text.unlikely
.Ltext_cold0:
	.text
	.globl	_Z20HJM_Yield_to_ForwardPdiS_
	.type	_Z20HJM_Yield_to_ForwardPdiS_, @function
_Z20HJM_Yield_to_ForwardPdiS_:
.LFB75:
	.file 1 "/if16/jad5ju/Progs/opensource/parsec-3.0//pkgs/apps/swaptions/src/HJM.cpp"
	.loc 1 91 0
	.cfi_startproc
.LVL0:
.LBB3:
	.loc 1 98 0
	movsd	(%rdx), %xmm0
	.loc 1 99 0
	cmpl	$1, %esi
	.loc 1 98 0
	movsd	%xmm0, (%rdi)
.LVL1:
	.loc 1 99 0
	jle	.L73
	leaq	8(%rdi), %r8
	leaq	40(%rdx), %rax
	leaq	40(%rdi), %r10
	leal	-1(%rsi), %ecx
	cmpq	%rax, %r8
	setae	%r9b
	cmpq	%r10, %rdx
	setae	%r11b
	orb	%r11b, %r9b
	je	.L3
	cmpl	$7, %ecx
	jbe	.L3
.LBE3:
	.loc 1 91 0
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	leaq	8(%rdx), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	salq	$60, %rbp
.LBB4:
	.loc 1 99 0
	movl	$1, -12(%rsp)
	shrq	$63, %rbp
	cmpl	%ebp, %ecx
	cmovbe	%ecx, %ebp
	testl	%ebp, %ebp
	je	.L4
	.loc 1 100 0
	movsd	8(%rdx), %xmm1
	movl	$2, -12(%rsp)
	addsd	%xmm1, %xmm1
	subsd	(%rdx), %xmm1
	movsd	%xmm1, 8(%rdi)
.LVL2:
.L4:
	subl	%ebp, %ecx
	movd	-12(%rsp), %xmm3
	movl	%ebp, %r13d
	leal	-4(%rcx), %r12d
	leaq	8(,%r13,8), %rax
	movl	%ecx, %r10d
	pshufd	$0, %xmm3, %xmm0
	shrl	$2, %r12d
	movdqa	.LC1(%rip), %xmm11
	leal	1(%r12), %ebx
	subl	$2, %r12d
	leaq	(%rdx,%rax), %rbp
	leaq	-8(%rdx,%rax), %r9
	addq	%rdi, %rax
	cmpl	$-4, %r12d
	leal	0(,%rbx,4), %r11d
	paddd	.LC0(%rip), %xmm0
	movdqa	%xmm11, %xmm4
	ja	.L17
	shrl	%r12d
	movdqa	.LC2(%rip), %xmm2
	leal	2(%r12,%r12), %r12d
	.loc 1 99 0
	xorl	%ecx, %ecx
	movdqa	.LC3(%rip), %xmm6
	movdqa	.LC4(%rip), %xmm5
.L6:
	.loc 1 100 0 discriminator 3
	movdqa	%xmm0, %xmm12
	pshufd	$238, %xmm0, %xmm9
	cvtdq2pd	%xmm0, %xmm1
	movupd	16(%r9), %xmm14
	prefetcht0	272(%rbp)
	prefetcht0	272(%r9)
	paddd	%xmm2, %xmm12
	pshufd	$238, %xmm12, %xmm8
	cvtdq2pd	%xmm12, %xmm15
	movupd	(%r9), %xmm3
	cvtdq2pd	%xmm9, %xmm10
	mulpd	%xmm10, %xmm14
	movdqa	%xmm0, %xmm7
	addl	$2, %ecx
	mulpd	0(%rbp), %xmm15
	cvtdq2pd	%xmm8, %xmm13
	addq	$64, %rbp
	movdqa	%xmm0, %xmm8
	paddd	%xmm5, %xmm0
	paddd	%xmm4, %xmm7
	mulpd	-48(%rbp), %xmm13
	addq	$64, %r9
	addq	$64, %rax
	paddd	%xmm6, %xmm8
	mulpd	%xmm1, %xmm3
	pshufd	$238, %xmm0, %xmm12
	cvtdq2pd	%xmm0, %xmm0
	pshufd	$238, %xmm7, %xmm9
	cvtdq2pd	%xmm7, %xmm7
	subpd	%xmm14, %xmm13
	cvtdq2pd	%xmm9, %xmm10
	subpd	%xmm3, %xmm15
	movups	%xmm13, -48(%rax)
	cvtdq2pd	%xmm12, %xmm13
	movups	%xmm15, -64(%rax)
	mulpd	-16(%rbp), %xmm13
	movupd	-16(%r9), %xmm14
	mulpd	-32(%rbp), %xmm0
	movupd	-32(%r9), %xmm15
	mulpd	%xmm10, %xmm14
	mulpd	%xmm15, %xmm7
	subpd	%xmm14, %xmm13
	subpd	%xmm7, %xmm0
	movups	%xmm13, -16(%rax)
	movups	%xmm0, -32(%rax)
	cmpl	%r12d, %ecx
	movdqa	%xmm8, %xmm0
	jne	.L6
.L5:
	.loc 1 100 0 is_stmt 0
	movdqa	%xmm8, %xmm6
	pshufd	$238, %xmm8, %xmm5
	cvtdq2pd	%xmm8, %xmm9
	movupd	16(%r9), %xmm12
	movl	%r12d, %ecx
	paddd	%xmm11, %xmm8
	paddd	%xmm2, %xmm6
	pshufd	$238, %xmm6, %xmm4
	cvtdq2pd	%xmm6, %xmm13
	movupd	(%r9), %xmm10
	cvtdq2pd	%xmm5, %xmm3
	mulpd	%xmm3, %xmm12
	notl	%ecx
	leal	1(%r12), %r13d
	movl	$32, %r8d
	mulpd	0(%rbp), %xmm13
	cvtdq2pd	%xmm4, %xmm1
	addl	%ebx, %ecx
	andl	$1, %ecx
	cmpl	%r13d, %ebx
	mulpd	16(%rbp), %xmm1
	mulpd	%xmm9, %xmm10
	subpd	%xmm12, %xmm1
	subpd	%xmm10, %xmm13
	movups	%xmm1, 16(%rax)
	movups	%xmm13, (%rax)
	ja	.L53
.L70:
	movl	-12(%rsp), %ebx
	addl	%r11d, %ebx
	cmpl	%r11d, %r10d
	je	.L21
.LVL3:
	pxor	%xmm2, %xmm2
	leal	1(%rbx), %ebp
	movslq	%ebx, %rax
	pxor	%xmm11, %xmm11
	movsd	(%rdx,%rax,8), %xmm12
	.loc 1 99 0 is_stmt 1
	cmpl	%ebp, %esi
	.loc 1 100 0
	cvtsi2sd	%ebx, %xmm2
	cvtsi2sd	%ebp, %xmm11
	mulsd	-8(%rdx,%rax,8), %xmm2
	mulsd	%xmm11, %xmm12
	subsd	%xmm2, %xmm12
	movsd	%xmm12, (%rdi,%rax,8)
.LVL4:
	.loc 1 99 0
	jle	.L21
	.loc 1 100 0
	pxor	%xmm15, %xmm15
	leal	2(%rbx), %r12d
	movslq	%ebp, %r9
	movsd	(%rdx,%r9,8), %xmm0
	mulsd	-8(%rdx,%r9,8), %xmm11
	.loc 1 99 0
	cmpl	%r12d, %esi
	.loc 1 100 0
	cvtsi2sd	%r12d, %xmm15
	mulsd	%xmm15, %xmm0
	subsd	%xmm11, %xmm0
	movsd	%xmm0, (%rdi,%r9,8)
.LVL5:
	.loc 1 99 0
	jle	.L21
	.loc 1 100 0
	pxor	%xmm6, %xmm6
	addl	$3, %ebx
	movslq	%r12d, %rsi
.LVL6:
	mulsd	-8(%rdx,%rsi,8), %xmm15
	cvtsi2sd	%ebx, %xmm6
	mulsd	(%rdx,%rsi,8), %xmm6
	subsd	%xmm15, %xmm6
	movsd	%xmm6, (%rdi,%rsi,8)
.LVL7:
.L21:
.LBE4:
	.loc 1 105 0
	popq	%rbx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 32
	movl	$1, %eax
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 8
	ret
.LVL8:
	.p2align 4,,10
	.p2align 3
.L53:
	.cfi_restore_state
	testl	%ecx, %ecx
	je	.L10
.LBB5:
	.loc 1 100 0
	movdqa	%xmm8, %xmm14
	pshufd	$238, %xmm8, %xmm0
	cvtdq2pd	%xmm8, %xmm5
	movupd	48(%r9), %xmm4
	leal	2(%r12), %r13d
	paddd	%xmm11, %xmm8
	paddd	%xmm2, %xmm14
	pshufd	$238, %xmm14, %xmm7
	cvtdq2pd	%xmm14, %xmm1
	movupd	32(%r9), %xmm3
	cvtdq2pd	%xmm0, %xmm6
	mulpd	%xmm6, %xmm4
	cmpl	%r13d, %ebx
	movl	$64, %r8d
	mulpd	32(%rbp), %xmm1
	cvtdq2pd	%xmm7, %xmm15
	mulpd	48(%rbp), %xmm15
	mulpd	%xmm5, %xmm3
	subpd	%xmm4, %xmm15
	subpd	%xmm3, %xmm1
	movups	%xmm15, 48(%rax)
	movups	%xmm1, 32(%rax)
	jbe	.L70
.L10:
	movdqa	%xmm8, %xmm13
	pshufd	$238, %xmm8, %xmm14
	movdqa	%xmm8, %xmm12
	cvtdq2pd	%xmm8, %xmm8
	addl	$2, %r13d
	paddd	%xmm2, %xmm13
	pshufd	$238, %xmm13, %xmm9
	cvtdq2pd	%xmm13, %xmm0
	movupd	16(%r9,%r8), %xmm15
	cvtdq2pd	%xmm14, %xmm7
	paddd	%xmm11, %xmm12
	mulpd	0(%rbp,%r8), %xmm0
	movdqa	%xmm12, %xmm4
	cvtdq2pd	%xmm12, %xmm14
	movupd	(%r9,%r8), %xmm6
	cvtdq2pd	%xmm9, %xmm10
	mulpd	16(%rbp,%r8), %xmm10
	paddd	%xmm2, %xmm4
	mulpd	%xmm7, %xmm15
	mulpd	%xmm6, %xmm8
	pshufd	$238, %xmm4, %xmm1
	subpd	%xmm15, %xmm10
	pshufd	$238, %xmm12, %xmm5
	paddd	%xmm11, %xmm12
	subpd	%xmm8, %xmm0
	cvtdq2pd	%xmm1, %xmm3
	cvtdq2pd	%xmm5, %xmm13
	movdqa	%xmm12, %xmm8
	movups	%xmm10, 16(%rax,%r8)
	cvtdq2pd	%xmm4, %xmm10
	movups	%xmm0, (%rax,%r8)
	mulpd	48(%rbp,%r8), %xmm3
	movupd	48(%r9,%r8), %xmm9
	mulpd	32(%rbp,%r8), %xmm10
	movupd	32(%r9,%r8), %xmm7
	mulpd	%xmm13, %xmm9
	mulpd	%xmm14, %xmm7
	subpd	%xmm9, %xmm3
	subpd	%xmm7, %xmm10
	movups	%xmm3, 48(%rax,%r8)
	movups	%xmm10, 32(%rax,%r8)
	addq	$64, %r8
	cmpl	%r13d, %ebx
	ja	.L10
	jmp	.L70
.LVL9:
	.p2align 4,,10
	.p2align 3
.L3:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	cmpl	$9, %esi
	leal	-7(%rsi), %r11d
	jle	.L18
	pxor	%xmm15, %xmm15
	.loc 1 99 0
	movl	$1, %ecx
	movq	%rdx, %rax
	movq	%rdi, %r8
	movl	$2, %r10d
	cvtsi2sd	%ecx, %xmm15
.LVL10:
	.p2align 4,,10
	.p2align 3
.L13:
	.loc 1 100 0
	pxor	%xmm4, %xmm4
	leal	2(%rcx), %r9d
	prefetcht0	112(%rax)
	mulsd	(%rax), %xmm15
	prefetcht0	112(%r8)
	addq	$64, %rax
	movsd	-56(%rax), %xmm1
	addq	$64, %r8
	cvtsi2sd	%r10d, %xmm4
	pxor	%xmm5, %xmm5
	pxor	%xmm10, %xmm10
	addl	$8, %r10d
	pxor	%xmm11, %xmm11
	cvtsi2sd	%r9d, %xmm5
	leal	3(%rcx), %r9d
	pxor	%xmm6, %xmm6
	cvtsi2sd	%r9d, %xmm10
	leal	4(%rcx), %r9d
	pxor	%xmm3, %xmm3
	cvtsi2sd	%r9d, %xmm11
	leal	5(%rcx), %r9d
	mulsd	%xmm4, %xmm1
	subsd	%xmm15, %xmm1
	pxor	%xmm15, %xmm15
	cvtsi2sd	%r9d, %xmm15
	leal	6(%rcx), %r9d
	movsd	%xmm1, -56(%r8)
.LVL11:
	cvtsi2sd	%r9d, %xmm6
	leal	7(%rcx), %r9d
	addl	$8, %ecx
	mulsd	-56(%rax), %xmm4
	movsd	-48(%rax), %xmm13
	cvtsi2sd	%r9d, %xmm3
	mulsd	%xmm5, %xmm13
	subsd	%xmm4, %xmm13
	movsd	%xmm13, -48(%r8)
.LVL12:
	mulsd	-48(%rax), %xmm5
	movsd	-40(%rax), %xmm14
	mulsd	%xmm10, %xmm14
	subsd	%xmm5, %xmm14
	movsd	%xmm14, -40(%r8)
	movsd	-32(%rax), %xmm12
	mulsd	-40(%rax), %xmm10
	mulsd	%xmm11, %xmm12
	subsd	%xmm10, %xmm12
	movsd	%xmm12, -32(%r8)
	movsd	-24(%rax), %xmm0
	mulsd	-32(%rax), %xmm11
	mulsd	%xmm15, %xmm0
	subsd	%xmm11, %xmm0
	movsd	%xmm0, -24(%r8)
	mulsd	-24(%rax), %xmm15
	movsd	-16(%rax), %xmm4
	mulsd	%xmm6, %xmm4
	subsd	%xmm15, %xmm4
	pxor	%xmm15, %xmm15
	cvtsi2sd	%ecx, %xmm15
	movsd	%xmm4, -16(%r8)
	movsd	-8(%rax), %xmm5
	mulsd	-16(%rax), %xmm6
	mulsd	%xmm3, %xmm5
	subsd	%xmm6, %xmm5
	movsd	%xmm5, -8(%r8)
	movsd	(%rax), %xmm9
	mulsd	-8(%rax), %xmm3
	mulsd	%xmm15, %xmm9
	subsd	%xmm3, %xmm9
	movsd	%xmm9, (%r8)
	cmpl	%r10d, %r11d
	jg	.L13
.L12:
	movl	%ecx, %eax
	movslq	%ecx, %r11
	.loc 1 99 0
	xorl	%r10d, %r10d
	notl	%eax
	salq	$3, %r11
	addl	%esi, %eax
	addq	%r11, %rdx
.LVL13:
	addq	%r11, %rdi
.LVL14:
	andl	$7, %eax
	je	.L14
	.loc 1 100 0
	pxor	%xmm14, %xmm14
	addl	$1, %ecx
	movl	$8, %r10d
	movsd	(%rdx), %xmm7
	.loc 1 99 0
	cmpl	%ecx, %esi
	.loc 1 100 0
	mulsd	-8(%rdx), %xmm15
	cvtsi2sd	%ecx, %xmm14
	mulsd	%xmm14, %xmm7
	subsd	%xmm15, %xmm7
	movsd	%xmm7, (%rdi)
	.loc 1 99 0
	jle	.L73
	cmpl	$1, %eax
	movapd	%xmm14, %xmm15
	je	.L14
	cmpl	$2, %eax
	je	.L54
	cmpl	$3, %eax
	je	.L55
	cmpl	$4, %eax
	je	.L56
	cmpl	$5, %eax
	je	.L57
	cmpl	$6, %eax
	je	.L58
.LVL15:
	.loc 1 100 0
	pxor	%xmm12, %xmm12
	addl	$1, %ecx
.LVL16:
	mulsd	-8(%rdx,%r10), %xmm15
	movsd	(%rdx,%r10), %xmm2
	cvtsi2sd	%ecx, %xmm12
	mulsd	%xmm12, %xmm2
	subsd	%xmm15, %xmm2
	movapd	%xmm12, %xmm15
	movsd	%xmm2, (%rdi,%r10)
.LVL17:
	movb	$16, %r10b
.L58:
.LVL18:
	pxor	%xmm8, %xmm8
	addl	$1, %ecx
.LVL19:
	mulsd	-8(%rdx,%r10), %xmm15
	movsd	(%rdx,%r10), %xmm6
	cvtsi2sd	%ecx, %xmm8
	mulsd	%xmm8, %xmm6
	subsd	%xmm15, %xmm6
	movapd	%xmm8, %xmm15
	movsd	%xmm6, (%rdi,%r10)
.LVL20:
	addq	$8, %r10
.L57:
.LVL21:
	pxor	%xmm4, %xmm4
	addl	$1, %ecx
.LVL22:
	mulsd	-8(%rdx,%r10), %xmm15
	movsd	(%rdx,%r10), %xmm1
	cvtsi2sd	%ecx, %xmm4
	mulsd	%xmm4, %xmm1
	subsd	%xmm15, %xmm1
	movapd	%xmm4, %xmm15
	movsd	%xmm1, (%rdi,%r10)
.LVL23:
	addq	$8, %r10
.L56:
.LVL24:
	pxor	%xmm5, %xmm5
	addl	$1, %ecx
.LVL25:
	mulsd	-8(%rdx,%r10), %xmm15
	movsd	(%rdx,%r10), %xmm13
	cvtsi2sd	%ecx, %xmm5
	mulsd	%xmm5, %xmm13
	subsd	%xmm15, %xmm13
	movapd	%xmm5, %xmm15
	movsd	%xmm13, (%rdi,%r10)
.LVL26:
	addq	$8, %r10
.L55:
.LVL27:
	pxor	%xmm10, %xmm10
	addl	$1, %ecx
.LVL28:
	mulsd	-8(%rdx,%r10), %xmm15
	movsd	(%rdx,%r10), %xmm14
	cvtsi2sd	%ecx, %xmm10
	mulsd	%xmm10, %xmm14
	subsd	%xmm15, %xmm14
	movapd	%xmm10, %xmm15
	movsd	%xmm14, (%rdi,%r10)
.LVL29:
	addq	$8, %r10
.L54:
.LVL30:
	pxor	%xmm11, %xmm11
	addl	$1, %ecx
.LVL31:
	mulsd	-8(%rdx,%r10), %xmm15
	movsd	(%rdx,%r10), %xmm12
	cvtsi2sd	%ecx, %xmm11
	mulsd	%xmm11, %xmm12
	subsd	%xmm15, %xmm12
	movapd	%xmm11, %xmm15
	movsd	%xmm12, (%rdi,%r10)
.LVL32:
	addq	$8, %r10
	jmp	.L14
.LVL33:
	.p2align 4,,10
	.p2align 3
.L75:
	pxor	%xmm4, %xmm4
	leal	2(%rcx), %r9d
	mulsd	(%rdx,%r10), %xmm8
	leal	3(%rcx), %r11d
	leal	4(%rcx), %eax
	movsd	8(%rdx,%r10), %xmm1
	leal	5(%rcx), %r8d
	cvtsi2sd	%r9d, %xmm4
	leal	6(%rcx), %r9d
	pxor	%xmm5, %xmm5
	pxor	%xmm10, %xmm10
	pxor	%xmm11, %xmm11
	cvtsi2sd	%r11d, %xmm5
	pxor	%xmm15, %xmm15
	cvtsi2sd	%eax, %xmm10
	leal	7(%rcx), %r11d
	cvtsi2sd	%r8d, %xmm11
	addl	$8, %ecx
	cvtsi2sd	%r9d, %xmm15
	mulsd	%xmm4, %xmm1
	subsd	%xmm8, %xmm1
	movsd	%xmm1, 8(%rdi,%r10)
	mulsd	8(%rdx,%r10), %xmm4
	movsd	16(%rdx,%r10), %xmm13
	mulsd	%xmm5, %xmm13
	subsd	%xmm4, %xmm13
	pxor	%xmm4, %xmm4
	cvtsi2sd	%r11d, %xmm4
	movsd	%xmm13, 16(%rdi,%r10)
	movsd	24(%rdx,%r10), %xmm14
	mulsd	16(%rdx,%r10), %xmm5
	mulsd	%xmm10, %xmm14
	subsd	%xmm5, %xmm14
	movsd	%xmm14, 24(%rdi,%r10)
	movsd	32(%rdx,%r10), %xmm12
	mulsd	24(%rdx,%r10), %xmm10
	mulsd	%xmm11, %xmm12
	subsd	%xmm10, %xmm12
	movsd	%xmm12, 32(%rdi,%r10)
	movsd	40(%rdx,%r10), %xmm8
	mulsd	32(%rdx,%r10), %xmm11
	mulsd	%xmm15, %xmm8
	subsd	%xmm11, %xmm8
	movsd	%xmm8, 40(%rdi,%r10)
	mulsd	40(%rdx,%r10), %xmm15
	movsd	48(%rdx,%r10), %xmm0
	mulsd	%xmm4, %xmm0
	subsd	%xmm15, %xmm0
	pxor	%xmm15, %xmm15
	cvtsi2sd	%ecx, %xmm15
	movsd	%xmm0, 48(%rdi,%r10)
	movsd	56(%rdx,%r10), %xmm3
	mulsd	48(%rdx,%r10), %xmm4
	mulsd	%xmm15, %xmm3
	subsd	%xmm4, %xmm3
	movsd	%xmm3, 56(%rdi,%r10)
.LVL34:
	addq	$64, %r10
.LVL35:
.L14:
	pxor	%xmm8, %xmm8
	leal	1(%rcx), %r8d
	movsd	(%rdx,%r10), %xmm6
	mulsd	-8(%rdx,%r10), %xmm15
	.loc 1 99 0
	cmpl	%r8d, %esi
	.loc 1 100 0
	cvtsi2sd	%r8d, %xmm8
	mulsd	%xmm8, %xmm6
	subsd	%xmm15, %xmm6
	movsd	%xmm6, (%rdi,%r10)
.LVL36:
	.loc 1 99 0
	jg	.L75
.LVL37:
	.p2align 4,,10
	.p2align 3
.L73:
.LBE5:
	.loc 1 105 0
	movl	$1, %eax
	ret
.LVL38:
	.p2align 4,,10
	.p2align 3
.L17:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
.LBB6:
	.loc 1 99 0
	movdqa	%xmm0, %xmm8
	xorl	%r12d, %r12d
	movdqa	.LC2(%rip), %xmm2
	jmp	.L5
.LVL39:
	.p2align 4,,10
	.p2align 3
.L18:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	pxor	%xmm15, %xmm15
	movl	$1, %ecx
	cvtsi2sd	%ecx, %xmm15
	jmp	.L12
.LBE6:
	.cfi_endproc
.LFE75:
	.size	_Z20HJM_Yield_to_ForwardPdiS_, .-_Z20HJM_Yield_to_ForwardPdiS_
	.section	.text.unlikely
.LCOLDE5:
	.text
.LHOTE5:
	.section	.text.unlikely
.LCOLDB6:
	.text
.LHOTB6:
	.p2align 4,,15
	.globl	_Z11HJM_FactorsPPdiiS_S0_
	.type	_Z11HJM_FactorsPPdiiS_S0_, @function
_Z11HJM_FactorsPPdiiS_S0_:
.LFB76:
	.loc 1 113 0
	.cfi_startproc
.LVL40:
.LBB7:
	.loc 1 136 0
	testl	%edx, %edx
	jle	.L136
	leal	-1(%rdx), %edx
.LVL41:
.LBE7:
	.loc 1 113 0
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
	movq	%rdi, %r15
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%esi, %ebx
	leaq	8(,%rdx,8), %r13
	movl	%ebx, %ebp
	movq	%r8, %r12
	subl	$10, %ebp
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	leaq	(%rdi,%r13), %rdi
.LVL42:
	shrl	$3, %ebp
	movl	%esi, 20(%rsp)
	leal	8(,%rbp,8), %r13d
	leal	-1(%rsi), %esi
.LVL43:
	movq	%rdi, 8(%rsp)
.LVL44:
	.p2align 4,,10
	.p2align 3
.L78:
.LBB8:
	.loc 1 137 0 discriminator 1
	testl	%esi, %esi
	jle	.L82
	.loc 1 137 0 is_stmt 0
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	cmpl	$9, 20(%rsp)
	leaq	64(%rcx), %rbp
	jle	.L100
.LVL45:
	.p2align 4,,10
	.p2align 3
.L102:
	.loc 1 138 0 is_stmt 1 discriminator 3
	movq	(%r12), %rax
	movsd	-64(%rbp), %xmm1
	prefetcht0	0(%rbp)
	movq	(%r15), %rdx
	movsd	(%rax,%rbx), %xmm0
	leaq	(%rdx,%rbx), %r9
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	sqrtsd	%xmm0, %xmm2
	ucomisd	%xmm2, %xmm2
	jp	.L139
.L83:
	movsd	%xmm2, (%r9)
	leaq	8(%rdx,%rbx), %r8
	movsd	-56(%rbp), %xmm3
	movsd	8(%rax,%rbx), %xmm0
	mulsd	%xmm3, %xmm0
	mulsd	%xmm3, %xmm0
	sqrtsd	%xmm0, %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L140
.L85:
	movsd	%xmm4, (%r8)
	leaq	16(%rdx,%rbx), %r10
	movsd	-48(%rbp), %xmm5
	movsd	16(%rax,%rbx), %xmm0
	mulsd	%xmm5, %xmm0
	mulsd	%xmm5, %xmm0
	sqrtsd	%xmm0, %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L141
.L87:
	movsd	%xmm6, (%r10)
	leaq	24(%rdx,%rbx), %r11
	movsd	-40(%rbp), %xmm7
	movsd	24(%rax,%rbx), %xmm0
	mulsd	%xmm7, %xmm0
	mulsd	%xmm7, %xmm0
	sqrtsd	%xmm0, %xmm8
	ucomisd	%xmm8, %xmm8
	jp	.L142
.L89:
	movsd	%xmm8, (%r11)
	leaq	32(%rdx,%rbx), %rdi
	movsd	-32(%rbp), %xmm9
	movsd	32(%rax,%rbx), %xmm0
	mulsd	%xmm9, %xmm0
	mulsd	%xmm9, %xmm0
	sqrtsd	%xmm0, %xmm10
	ucomisd	%xmm10, %xmm10
	jp	.L143
.L91:
	movsd	%xmm10, (%rdi)
	leaq	40(%rdx,%rbx), %r9
	movsd	-24(%rbp), %xmm11
	movsd	40(%rax,%rbx), %xmm0
	mulsd	%xmm11, %xmm0
	mulsd	%xmm11, %xmm0
	sqrtsd	%xmm0, %xmm12
	ucomisd	%xmm12, %xmm12
	jp	.L144
.L93:
	movsd	%xmm12, (%r9)
	leaq	48(%rdx,%rbx), %r8
	movsd	-16(%rbp), %xmm13
	movsd	48(%rax,%rbx), %xmm0
	mulsd	%xmm13, %xmm0
	mulsd	%xmm13, %xmm0
	sqrtsd	%xmm0, %xmm14
	ucomisd	%xmm14, %xmm14
	jp	.L145
.L95:
	movsd	%xmm14, (%r8)
	leaq	56(%rdx,%rbx), %r10
	movsd	-8(%rbp), %xmm15
	movsd	56(%rax,%rbx), %xmm0
	mulsd	%xmm15, %xmm0
	mulsd	%xmm15, %xmm0
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jp	.L146
.L97:
.LVL46:
	addl	$8, %r14d
.LVL47:
	addq	$64, %rbx
	addq	$64, %rbp
	cmpl	%r13d, %r14d
	movsd	%xmm1, (%r10)
	jne	.L102
.LVL48:
.L100:
	.loc 1 138 0 is_stmt 0
	movq	(%r12), %rdi
	movslq	%r14d, %r11
	movl	%r14d, %ebp
	movsd	(%rcx,%r11,8), %xmm2
	leaq	0(,%r11,8), %r9
	notl	%ebp
	movsd	(%rdi,%r11,8), %xmm0
	addl	%esi, %ebp
	movq	%r9, %rbx
	andl	$3, %ebp
	addq	(%r15), %rbx
	mulsd	%xmm2, %xmm0
	mulsd	%xmm2, %xmm0
	sqrtsd	%xmm0, %xmm3
	ucomisd	%xmm3, %xmm3
	jp	.L147
.L128:
	.loc 1 137 0 is_stmt 1
	addl	$1, %r14d
	.loc 1 138 0
	movsd	%xmm3, (%rbx)
	leaq	8(%r9), %rbx
	.loc 1 137 0
	cmpl	%esi, %r14d
	jge	.L82
	testl	%ebp, %ebp
	je	.L81
	cmpl	$1, %ebp
	je	.L123
	cmpl	$2, %ebp
	je	.L124
	.loc 1 138 0
	movq	(%r12), %rdx
	movsd	8(%rcx,%r9), %xmm4
	movq	%rbx, %rbp
	addq	(%r15), %rbp
	movsd	8(%rdx,%r9), %xmm0
	mulsd	%xmm4, %xmm0
	mulsd	%xmm4, %xmm0
	sqrtsd	%xmm0, %xmm5
	ucomisd	%xmm5, %xmm5
	jp	.L148
.L130:
	movsd	%xmm5, 0(%rbp)
	.loc 1 137 0
	addl	$1, %r14d
	addq	$8, %rbx
.L124:
	.loc 1 138 0
	movq	(%r12), %rax
	movsd	(%rcx,%rbx), %xmm6
	movq	%rbx, %rbp
	addq	(%r15), %rbp
	movsd	(%rax,%rbx), %xmm0
	mulsd	%xmm6, %xmm0
	mulsd	%xmm6, %xmm0
	sqrtsd	%xmm0, %xmm7
	ucomisd	%xmm7, %xmm7
	jp	.L149
.L131:
	movsd	%xmm7, 0(%rbp)
	.loc 1 137 0
	addl	$1, %r14d
	addq	$8, %rbx
.L123:
	.loc 1 138 0
	movq	(%r12), %r8
	movsd	(%rcx,%rbx), %xmm8
	movq	%rbx, %rbp
	addq	(%r15), %rbp
	movsd	(%r8,%rbx), %xmm0
	mulsd	%xmm8, %xmm0
	mulsd	%xmm8, %xmm0
	sqrtsd	%xmm0, %xmm9
	ucomisd	%xmm9, %xmm9
	jp	.L150
.L132:
	.loc 1 137 0
	addl	$1, %r14d
	addq	$8, %rbx
	.loc 1 138 0
	movsd	%xmm9, 0(%rbp)
	.loc 1 137 0
	cmpl	%esi, %r14d
	jge	.L82
.L81:
	.loc 1 138 0
	movq	(%r12), %r10
	movsd	(%rcx,%rbx), %xmm10
	movq	%rbx, %rbp
	addq	(%r15), %rbp
	movsd	(%r10,%rbx), %xmm0
	mulsd	%xmm10, %xmm0
	mulsd	%xmm10, %xmm0
	sqrtsd	%xmm0, %xmm11
	ucomisd	%xmm11, %xmm11
	jp	.L151
.L79:
	movq	(%r12), %r11
	movsd	%xmm11, 0(%rbp)
	leaq	8(%rbx), %rbp
	.loc 1 137 0
	addl	$1, %r14d
	.loc 1 138 0
	movsd	8(%rcx,%rbx), %xmm12
	movq	%rbp, %rdi
	movsd	8(%r11,%rbx), %xmm0
	addq	(%r15), %rdi
	mulsd	%xmm12, %xmm0
	mulsd	%xmm12, %xmm0
	sqrtsd	%xmm0, %xmm13
	ucomisd	%xmm13, %xmm13
	jp	.L152
.L129:
	movq	(%r12), %r9
	movsd	%xmm13, (%rdi)
	movq	(%r15), %rbx
	movsd	8(%rcx,%rbp), %xmm14
	movsd	8(%r9,%rbp), %xmm0
	leaq	8(%rbx,%rbp), %rbx
	mulsd	%xmm14, %xmm0
	mulsd	%xmm14, %xmm0
	sqrtsd	%xmm0, %xmm15
	ucomisd	%xmm15, %xmm15
	jp	.L153
.L133:
	movq	(%r12), %rax
	movsd	%xmm15, (%rbx)
	movq	(%r15), %rdx
	movsd	16(%rcx,%rbp), %xmm1
	movsd	16(%rax,%rbp), %xmm0
	leaq	16(%rdx,%rbp), %rbx
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	sqrtsd	%xmm0, %xmm2
	ucomisd	%xmm2, %xmm2
	jp	.L154
.L134:
	.loc 1 137 0
	addl	$3, %r14d
	.loc 1 138 0
	movsd	%xmm2, (%rbx)
	leaq	24(%rbp), %rbx
	.loc 1 137 0
	cmpl	%esi, %r14d
	jl	.L81
.L82:
	addq	$8, %r15
	addq	$8, %r12
	.loc 1 136 0
	cmpq	8(%rsp), %r15
	jne	.L78
.LVL49:
.LBE8:
	.loc 1 142 0
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	$1, %eax
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_restore 14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
.LVL50:
.L146:
	.cfi_restore_state
	movq	%rcx, 40(%rsp)
	movq	%r10, 32(%rsp)
	movl	%esi, 24(%rsp)
.LBB9:
	.loc 1 138 0 discriminator 3
	call	sqrt
.LVL51:
	movq	40(%rsp), %rcx
	movapd	%xmm0, %xmm1
	movq	32(%rsp), %r10
	movl	24(%rsp), %esi
	jmp	.L97
.L145:
	movq	%rcx, 40(%rsp)
	movq	%r8, 32(%rsp)
	movl	%esi, 24(%rsp)
	call	sqrt
.LVL52:
	movq	(%r15), %rdx
	movapd	%xmm0, %xmm14
	movq	(%r12), %rax
	movq	40(%rsp), %rcx
	movq	32(%rsp), %r8
	movl	24(%rsp), %esi
	jmp	.L95
.L144:
	movq	%rcx, 40(%rsp)
	movq	%r9, 32(%rsp)
	movl	%esi, 24(%rsp)
	call	sqrt
.LVL53:
	movq	(%r15), %rdx
	movapd	%xmm0, %xmm12
	movq	(%r12), %rax
	movq	40(%rsp), %rcx
	movq	32(%rsp), %r9
	movl	24(%rsp), %esi
	jmp	.L93
.L143:
	movq	%rcx, 40(%rsp)
	movq	%rdi, 32(%rsp)
	movl	%esi, 24(%rsp)
	call	sqrt
.LVL54:
	movq	(%r15), %rdx
	movapd	%xmm0, %xmm10
	movq	(%r12), %rax
	movq	40(%rsp), %rcx
	movq	32(%rsp), %rdi
	movl	24(%rsp), %esi
	jmp	.L91
.L142:
	movq	%rcx, 40(%rsp)
	movq	%r11, 32(%rsp)
	movl	%esi, 24(%rsp)
	call	sqrt
.LVL55:
	movq	(%r15), %rdx
	movapd	%xmm0, %xmm8
	movq	(%r12), %rax
	movq	40(%rsp), %rcx
	movq	32(%rsp), %r11
	movl	24(%rsp), %esi
	jmp	.L89
.L141:
	movq	%rcx, 40(%rsp)
	movq	%r10, 32(%rsp)
	movl	%esi, 24(%rsp)
	call	sqrt
.LVL56:
	movq	(%r15), %rdx
	movapd	%xmm0, %xmm6
	movq	(%r12), %rax
	movq	40(%rsp), %rcx
	movq	32(%rsp), %r10
	movl	24(%rsp), %esi
	jmp	.L87
.L140:
	movq	%rcx, 40(%rsp)
	movl	%esi, 32(%rsp)
	movq	%r8, 24(%rsp)
	call	sqrt
.LVL57:
	movq	(%r15), %rdx
	movapd	%xmm0, %xmm4
	movq	(%r12), %rax
	movq	40(%rsp), %rcx
	movl	32(%rsp), %esi
	movq	24(%rsp), %r8
	jmp	.L85
.L139:
	movq	%rcx, 40(%rsp)
	movl	%esi, 32(%rsp)
	movq	%r9, 24(%rsp)
	call	sqrt
.LVL58:
	movq	(%r15), %rdx
	movapd	%xmm0, %xmm2
	movq	(%r12), %rax
	movq	40(%rsp), %rcx
	movl	32(%rsp), %esi
	movq	24(%rsp), %r9
	jmp	.L83
.L151:
	movq	%rcx, 32(%rsp)
	movl	%esi, 24(%rsp)
	.loc 1 138 0 is_stmt 0
	call	sqrt
.LVL59:
	movq	32(%rsp), %rcx
	movapd	%xmm0, %xmm11
	movl	24(%rsp), %esi
	jmp	.L79
.L154:
	movq	%rcx, 32(%rsp)
	movl	%esi, 24(%rsp)
	call	sqrt
.LVL60:
	movq	32(%rsp), %rcx
	movapd	%xmm0, %xmm2
	movl	24(%rsp), %esi
	jmp	.L134
.L153:
	movq	%rcx, 32(%rsp)
	movl	%esi, 24(%rsp)
	call	sqrt
.LVL61:
	movq	32(%rsp), %rcx
	movapd	%xmm0, %xmm15
	movl	24(%rsp), %esi
	jmp	.L133
.L152:
	movq	%rcx, 40(%rsp)
	movq	%rdi, 32(%rsp)
	movl	%esi, 24(%rsp)
	call	sqrt
.LVL62:
	movq	40(%rsp), %rcx
	movapd	%xmm0, %xmm13
	movq	32(%rsp), %rdi
	movl	24(%rsp), %esi
	jmp	.L129
.L147:
	movq	%rcx, 40(%rsp)
	movq	%r9, 32(%rsp)
	movl	%esi, 24(%rsp)
	call	sqrt
.LVL63:
	movq	40(%rsp), %rcx
	movapd	%xmm0, %xmm3
	movq	32(%rsp), %r9
	movl	24(%rsp), %esi
	jmp	.L128
.L149:
	movq	%rcx, 32(%rsp)
	movl	%esi, 24(%rsp)
	call	sqrt
.LVL64:
	movq	32(%rsp), %rcx
	movapd	%xmm0, %xmm7
	movl	24(%rsp), %esi
	jmp	.L131
.L150:
	movq	%rcx, 32(%rsp)
	movl	%esi, 24(%rsp)
	call	sqrt
.LVL65:
	movq	32(%rsp), %rcx
	movapd	%xmm0, %xmm9
	movl	24(%rsp), %esi
	jmp	.L132
.L148:
	movq	%rcx, 32(%rsp)
	movl	%esi, 24(%rsp)
	call	sqrt
.LVL66:
	movq	32(%rsp), %rcx
	movapd	%xmm0, %xmm5
	movl	24(%rsp), %esi
	jmp	.L130
.LVL67:
.L136:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
.LBE9:
	.loc 1 142 0 is_stmt 1
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE76:
	.size	_Z11HJM_FactorsPPdiiS_S0_, .-_Z11HJM_FactorsPPdiiS_S0_
	.section	.text.unlikely
.LCOLDE6:
	.text
.LHOTE6:
	.section	.text.unlikely
.LCOLDB9:
	.text
.LHOTB9:
	.p2align 4,,15
	.globl	_Z10HJM_DriftsPdPS_iidS0_
	.type	_Z10HJM_DriftsPdPS_iidS0_, @function
_Z10HJM_DriftsPdPS_iidS0_:
.LFB77:
	.loc 1 151 0
	.cfi_startproc
.LVL68:
	movapd	%xmm0, %xmm2
.LBB10:
	.loc 1 160 0
	testl	%ecx, %ecx
	.loc 1 156 0
	pxor	%xmm0, %xmm0
.LVL69:
.LBE10:
	.loc 1 151 0
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
	movl	%ecx, %ebp
.LBB11:
	.loc 1 156 0
	cvtsi2sd	%edx, %xmm0
.LBE11:
	.loc 1 151 0
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	.loc 1 151 0
	movl	%edx, %ebx
.LBB12:
	.loc 1 156 0
	divsd	%xmm0, %xmm2
.LVL70:
	.loc 1 160 0
	jle	.L156
	cmpl	$8, %ecx
	movq	%r8, %r12
	mulsd	.LC8(%rip), %xmm2
.LVL71:
	jle	.L181
	leal	-9(%rcx), %ecx
.LVL72:
	leaq	136(%rsi), %rdx
.LVL73:
	leaq	136(%r8), %rax
	shrl	$3, %ecx
	leal	8(,%rcx,8), %r9d
	xorl	%ecx, %ecx
.LVL74:
	.p2align 4,,10
	.p2align 3
.L158:
	.loc 1 161 0 discriminator 3
	movq	-136(%rax), %r8
	movq	-136(%rdx), %r10
	prefetcht0	(%rdx)
	movq	-128(%rax), %r11
	prefetcht0	(%rax)
	movq	-128(%rdx), %r13
	movq	-120(%rax), %r14
	movq	-120(%rdx), %r15
	addl	$8, %ecx
.LVL75:
	movsd	(%r8), %xmm1
	movq	-112(%rax), %r8
	addq	$64, %rdx
	addq	$64, %rax
	movapd	%xmm1, %xmm3
	mulsd	%xmm2, %xmm3
	mulsd	%xmm1, %xmm3
	movsd	%xmm3, (%r10)
.LVL76:
	movq	-176(%rdx), %r10
	movsd	(%r11), %xmm4
	movq	-168(%rax), %r11
	movapd	%xmm4, %xmm5
	mulsd	%xmm2, %xmm5
	mulsd	%xmm4, %xmm5
	movsd	%xmm5, 0(%r13)
	movq	-168(%rdx), %r13
	movsd	(%r14), %xmm6
	movq	-160(%rax), %r14
	movapd	%xmm6, %xmm7
	mulsd	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	movsd	%xmm7, (%r15)
	movq	-160(%rdx), %r15
	movsd	(%r8), %xmm8
	movq	-152(%rax), %r8
	movapd	%xmm8, %xmm9
	mulsd	%xmm2, %xmm9
	mulsd	%xmm8, %xmm9
	movsd	%xmm9, (%r10)
	movq	-152(%rdx), %r10
	movsd	(%r11), %xmm10
	movq	-144(%rax), %r11
	movapd	%xmm10, %xmm11
	mulsd	%xmm2, %xmm11
	mulsd	%xmm10, %xmm11
	movsd	%xmm11, 0(%r13)
	movq	-144(%rdx), %r13
	cmpl	%ecx, %r9d
	movsd	(%r14), %xmm12
	movapd	%xmm12, %xmm13
	mulsd	%xmm2, %xmm13
	mulsd	%xmm12, %xmm13
	movsd	%xmm13, (%r15)
	movsd	(%r8), %xmm14
	movapd	%xmm14, %xmm15
	mulsd	%xmm2, %xmm15
	mulsd	%xmm14, %xmm15
	movsd	%xmm15, (%r10)
	movsd	(%r11), %xmm1
	movapd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 0(%r13)
.LVL77:
	jne	.L158
.LVL78:
.L157:
	movslq	%ecx, %rdx
	leal	-1(%rbp), %r14d
	leal	1(%rcx), %r8d
	salq	$3, %rdx
	movl	$1, %r13d
	leaq	(%rsi,%rdx), %r9
	addq	%r12, %rdx
	subl	%ecx, %r14d
	.loc 1 161 0 is_stmt 0
	movq	(%rdx), %rax
	andl	$7, %r14d
.LVL79:
	.loc 1 160 0 is_stmt 1
	cmpl	%r8d, %ebp
	.loc 1 161 0
	movq	(%r9), %r15
	movsd	(%rax), %xmm3
	movapd	%xmm3, %xmm4
	mulsd	%xmm2, %xmm4
	mulsd	%xmm3, %xmm4
	movsd	%xmm4, (%r15)
.LVL80:
	.loc 1 160 0
	jle	.L367
	testl	%r14d, %r14d
	je	.L159
	cmpl	$1, %r14d
	je	.L328
	cmpl	$2, %r14d
	je	.L329
	cmpl	$3, %r14d
	je	.L330
	cmpl	$4, %r14d
	je	.L331
	cmpl	$5, %r14d
	je	.L332
	cmpl	$6, %r14d
	je	.L333
.LVL81:
	.loc 1 161 0
	movq	8(%rdx), %r10
	movq	8(%r9), %r11
	movl	$2, %r13d
	movsd	(%r10), %xmm5
	movapd	%xmm5, %xmm6
	mulsd	%xmm2, %xmm6
	mulsd	%xmm5, %xmm6
	movsd	%xmm6, (%r11)
.LVL82:
.L333:
	movq	(%rdx,%r13,8), %r14
	movq	(%r9,%r13,8), %rax
	addq	$1, %r13
	movsd	(%r14), %xmm7
	movapd	%xmm7, %xmm8
	mulsd	%xmm2, %xmm8
	mulsd	%xmm7, %xmm8
	movsd	%xmm8, (%rax)
.LVL83:
.L332:
	movq	(%rdx,%r13,8), %r15
	movq	(%r9,%r13,8), %r8
	addq	$1, %r13
	movsd	(%r15), %xmm9
	movapd	%xmm9, %xmm10
	mulsd	%xmm2, %xmm10
	mulsd	%xmm9, %xmm10
	movsd	%xmm10, (%r8)
.LVL84:
.L331:
	movq	(%rdx,%r13,8), %r10
	movq	(%r9,%r13,8), %r11
	addq	$1, %r13
	movsd	(%r10), %xmm11
	movapd	%xmm11, %xmm12
	mulsd	%xmm2, %xmm12
	mulsd	%xmm11, %xmm12
	movsd	%xmm12, (%r11)
.LVL85:
.L330:
	movq	(%rdx,%r13,8), %r14
	movq	(%r9,%r13,8), %rax
	addq	$1, %r13
	movsd	(%r14), %xmm13
	movapd	%xmm13, %xmm14
	mulsd	%xmm2, %xmm14
	mulsd	%xmm13, %xmm14
	movsd	%xmm14, (%rax)
.LVL86:
.L329:
	movq	(%rdx,%r13,8), %r15
	movq	(%r9,%r13,8), %r8
	addq	$1, %r13
	movsd	(%r15), %xmm15
	movapd	%xmm15, %xmm1
	mulsd	%xmm2, %xmm1
	mulsd	%xmm15, %xmm1
	movsd	%xmm1, (%r8)
.LVL87:
.L328:
	movq	(%rdx,%r13,8), %r10
	movq	(%r9,%r13,8), %r11
	addq	$1, %r13
	leal	(%rcx,%r13), %r14d
	movsd	(%r10), %xmm3
	.loc 1 160 0
	cmpl	%r14d, %ebp
	.loc 1 161 0
	movapd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	mulsd	%xmm3, %xmm0
	movsd	%xmm0, (%r11)
.LVL88:
	.loc 1 160 0
	jle	.L367
.LVL89:
.L159:
	.loc 1 161 0
	movq	(%rdx,%r13,8), %rax
	movq	(%r9,%r13,8), %r15
	leaq	1(%r13), %r8
	leaq	2(%r13), %r14
	movq	(%rdx,%r8,8), %r10
	movq	(%r9,%r8,8), %r11
	leaq	3(%r13), %r8
	movsd	(%rax), %xmm4
	movq	(%rdx,%r14,8), %rax
	movapd	%xmm4, %xmm5
	mulsd	%xmm2, %xmm5
	mulsd	%xmm4, %xmm5
	movsd	%xmm5, (%r15)
.LVL90:
	movq	(%r9,%r14,8), %r15
	leaq	4(%r13), %r14
	movsd	(%r10), %xmm6
	movq	(%rdx,%r8,8), %r10
	movapd	%xmm6, %xmm7
	mulsd	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	movsd	%xmm7, (%r11)
.LVL91:
	movq	(%r9,%r8,8), %r11
	leaq	5(%r13), %r8
	movsd	(%rax), %xmm8
	movq	(%rdx,%r14,8), %rax
	movapd	%xmm8, %xmm9
	mulsd	%xmm2, %xmm9
	mulsd	%xmm8, %xmm9
	movsd	%xmm9, (%r15)
.LVL92:
	movq	(%r9,%r14,8), %r15
	leaq	6(%r13), %r14
	movsd	(%r10), %xmm10
	movq	(%rdx,%r8,8), %r10
	movapd	%xmm10, %xmm11
	mulsd	%xmm2, %xmm11
	mulsd	%xmm10, %xmm11
	movsd	%xmm11, (%r11)
.LVL93:
	movq	(%r9,%r8,8), %r11
	leaq	7(%r13), %r8
	addq	$8, %r13
	movsd	(%rax), %xmm12
	movq	(%rdx,%r14,8), %rax
	movapd	%xmm12, %xmm13
	mulsd	%xmm2, %xmm13
	mulsd	%xmm12, %xmm13
	movsd	%xmm13, (%r15)
.LVL94:
	movq	(%r9,%r14,8), %r15
	leal	(%rcx,%r13), %r14d
	movsd	(%r10), %xmm14
	.loc 1 160 0
	cmpl	%r14d, %ebp
	.loc 1 161 0
	movq	(%rdx,%r8,8), %r10
	movapd	%xmm14, %xmm15
	mulsd	%xmm2, %xmm15
	mulsd	%xmm14, %xmm15
	movsd	%xmm15, (%r11)
.LVL95:
	movq	(%r9,%r8,8), %r11
	movsd	(%rax), %xmm1
	movapd	%xmm1, %xmm3
	mulsd	%xmm2, %xmm3
	mulsd	%xmm1, %xmm3
	movsd	%xmm3, (%r15)
.LVL96:
	movsd	(%r10), %xmm4
	movapd	%xmm4, %xmm0
	mulsd	%xmm2, %xmm0
	mulsd	%xmm4, %xmm0
	movsd	%xmm0, (%r11)
.LVL97:
	.loc 1 160 0
	jg	.L159
.LVL98:
.L367:
	pxor	%xmm7, %xmm7
	leal	-1(%rbx), %ecx
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L160:
.LVL99:
	.loc 1 165 0 discriminator 1
	cmpl	$2, %ebx
	jle	.L172
	movq	(%rsi,%rdx,8), %r8
	.loc 1 165 0 is_stmt 0
	movl	$1, %r11d
	leaq	8(%r8), %rax
.LVL100:
	.p2align 4,,10
	.p2align 3
.L171:
	.loc 1 168 0 is_stmt 1
	cmpl	$0, %r11d
	.loc 1 167 0
	movq	$0, (%rax)
.LVL101:
	.loc 1 168 0
	jle	.L161
	cmpl	$8, %r11d
	jle	.L182
	.loc 1 169 0
	movapd	%xmm7, %xmm6
	leaq	200(%r8), %r9
	leal	-9(%r11), %r15d
	movl	$8, %r13d
	subsd	(%r8), %xmm6
	prefetcht0	(%r9)
	shrl	$3, %r15d
	leal	8(,%r15,8), %r14d
	andl	$1, %r15d
	leaq	264(%r8), %r9
	cmpl	%r14d, %r13d
	movsd	%xmm6, (%rax)
.LVL102:
	subsd	8(%r8), %xmm6
	movsd	%xmm6, (%rax)
.LVL103:
	subsd	16(%r8), %xmm6
	movsd	%xmm6, (%rax)
.LVL104:
	subsd	24(%r8), %xmm6
	movsd	%xmm6, (%rax)
.LVL105:
	subsd	32(%r8), %xmm6
	movsd	%xmm6, (%rax)
.LVL106:
	subsd	40(%r8), %xmm6
	movsd	%xmm6, (%rax)
.LVL107:
	subsd	48(%r8), %xmm6
	movsd	%xmm6, (%rax)
.LVL108:
	subsd	56(%r8), %xmm6
	movsd	%xmm6, (%rax)
	je	.L162
	testl	%r15d, %r15d
	je	.L163
	subsd	-200(%r9), %xmm6
	prefetcht0	(%r9)
	movl	$16, %r13d
	cmpl	%r14d, %r13d
	movsd	%xmm6, (%rax)
.LVL109:
	subsd	-192(%r9), %xmm6
	movsd	%xmm6, (%rax)
.LVL110:
	subsd	-184(%r9), %xmm6
	movsd	%xmm6, (%rax)
.LVL111:
	subsd	-176(%r9), %xmm6
	movsd	%xmm6, (%rax)
.LVL112:
	subsd	-168(%r9), %xmm6
	movsd	%xmm6, (%rax)
.LVL113:
	subsd	-160(%r9), %xmm6
	movsd	%xmm6, (%rax)
.LVL114:
	subsd	-152(%r9), %xmm6
	movsd	%xmm6, (%rax)
.LVL115:
	subsd	-144(%r9), %xmm6
	leaq	328(%r8), %r9
	movsd	%xmm6, (%rax)
	je	.L162
.L163:
	.loc 1 169 0 is_stmt 0 discriminator 3
	subsd	-200(%r9), %xmm6
	prefetcht0	(%r9)
	leaq	64(%r9), %r10
	addl	$16, %r13d
	subq	$-128, %r9
	prefetcht0	(%r10)
	movsd	%xmm6, (%rax)
.LVL116:
	subsd	-320(%r9), %xmm6
	movsd	%xmm6, (%rax)
.LVL117:
	subsd	-312(%r9), %xmm6
	movsd	%xmm6, (%rax)
.LVL118:
	subsd	-304(%r9), %xmm6
	movsd	%xmm6, (%rax)
.LVL119:
	subsd	-296(%r9), %xmm6
	movsd	%xmm6, (%rax)
.LVL120:
	subsd	-288(%r9), %xmm6
	movsd	%xmm6, (%rax)
.LVL121:
	subsd	-280(%r9), %xmm6
	movsd	%xmm6, (%rax)
.LVL122:
	subsd	-272(%r9), %xmm6
	movsd	%xmm6, (%rax)
.LVL123:
	subsd	-264(%r9), %xmm6
	movsd	%xmm6, (%rax)
.LVL124:
	subsd	-256(%r9), %xmm6
	movsd	%xmm6, (%rax)
.LVL125:
	subsd	-248(%r9), %xmm6
	movsd	%xmm6, (%rax)
.LVL126:
	subsd	-240(%r9), %xmm6
	movsd	%xmm6, (%rax)
.LVL127:
	subsd	-232(%r9), %xmm6
	movsd	%xmm6, (%rax)
.LVL128:
	subsd	-224(%r9), %xmm6
	movsd	%xmm6, (%rax)
.LVL129:
	subsd	-216(%r9), %xmm6
	movsd	%xmm6, (%rax)
.LVL130:
	subsd	-208(%r9), %xmm6
	cmpl	%r14d, %r13d
	movsd	%xmm6, (%rax)
.LVL131:
	jne	.L163
.LVL132:
.L162:
	movslq	%r13d, %r15
	movl	%r13d, %r14d
	.loc 1 168 0 is_stmt 1
	leal	1(%r13), %r10d
	leaq	(%r8,%r15,8), %r15
	notl	%r14d
	addl	%r11d, %r14d
	.loc 1 169 0
	subsd	(%r15), %xmm6
	andl	$7, %r14d
	.loc 1 168 0
	cmpl	%r10d, %r11d
	leaq	8(%r15), %r9
	.loc 1 169 0
	movsd	%xmm6, (%rax)
	.loc 1 168 0
	jle	.L368
	testl	%r14d, %r14d
	je	.L164
	cmpl	$1, %r14d
	je	.L322
	cmpl	$2, %r14d
	je	.L323
	cmpl	$3, %r14d
	je	.L324
	cmpl	$4, %r14d
	je	.L325
	cmpl	$5, %r14d
	je	.L326
	cmpl	$6, %r14d
	je	.L327
	.loc 1 169 0
	subsd	8(%r15), %xmm6
	.loc 1 168 0
	leal	2(%r13), %r10d
	leaq	16(%r15), %r9
	.loc 1 169 0
	movsd	%xmm6, (%rax)
.L327:
	subsd	(%r9), %xmm6
	.loc 1 168 0
	addl	$1, %r10d
	addq	$8, %r9
	.loc 1 169 0
	movsd	%xmm6, (%rax)
.L326:
	subsd	(%r9), %xmm6
	.loc 1 168 0
	addl	$1, %r10d
	addq	$8, %r9
	.loc 1 169 0
	movsd	%xmm6, (%rax)
.L325:
	subsd	(%r9), %xmm6
	.loc 1 168 0
	addl	$1, %r10d
	addq	$8, %r9
	.loc 1 169 0
	movsd	%xmm6, (%rax)
.L324:
	subsd	(%r9), %xmm6
	.loc 1 168 0
	addl	$1, %r10d
	addq	$8, %r9
	.loc 1 169 0
	movsd	%xmm6, (%rax)
.L323:
	subsd	(%r9), %xmm6
	.loc 1 168 0
	addl	$1, %r10d
	addq	$8, %r9
	.loc 1 169 0
	movsd	%xmm6, (%rax)
.L322:
	subsd	(%r9), %xmm6
	.loc 1 168 0
	addl	$1, %r10d
	addq	$8, %r9
	cmpl	%r10d, %r11d
	.loc 1 169 0
	movsd	%xmm6, (%rax)
	.loc 1 168 0
	jle	.L368
.L164:
	.loc 1 169 0
	subsd	(%r9), %xmm6
	.loc 1 168 0
	addl	$8, %r10d
	addq	$64, %r9
	.loc 1 169 0
	movsd	%xmm6, (%rax)
	subsd	-56(%r9), %xmm6
	movsd	%xmm6, (%rax)
	subsd	-48(%r9), %xmm6
	movsd	%xmm6, (%rax)
	subsd	-40(%r9), %xmm6
	movsd	%xmm6, (%rax)
	subsd	-32(%r9), %xmm6
	movsd	%xmm6, (%rax)
	subsd	-24(%r9), %xmm6
	movsd	%xmm6, (%rax)
	subsd	-16(%r9), %xmm6
	movsd	%xmm6, (%rax)
	subsd	-8(%r9), %xmm6
	.loc 1 168 0
	cmpl	%r10d, %r11d
	.loc 1 169 0
	movsd	%xmm6, (%rax)
	.loc 1 168 0
	jg	.L164
.L368:
.LVL133:
	cmpl	$7, %r11d
	movq	(%r12,%rdx,8), %r14
	jle	.L183
	.loc 1 172 0
	movsd	(%r14), %xmm5
	leal	-8(%r11), %r10d
	leaq	232(%r14), %r13
	leaq	296(%r14), %r9
	addsd	%xmm7, %xmm5
	shrl	$3, %r10d
	prefetcht0	0(%r13)
	leal	8(,%r10,8), %r15d
	movl	$8, %r13d
	andl	$3, %r10d
.LVL134:
	cmpl	%r15d, %r13d
	addsd	8(%r14), %xmm5
.LVL135:
	addsd	16(%r14), %xmm5
.LVL136:
	addsd	24(%r14), %xmm5
.LVL137:
	addsd	32(%r14), %xmm5
.LVL138:
	addsd	40(%r14), %xmm5
.LVL139:
	addsd	48(%r14), %xmm5
.LVL140:
	addsd	56(%r14), %xmm5
.LVL141:
	je	.L168
	testl	%r10d, %r10d
	je	.L169
	cmpl	$1, %r10d
	je	.L320
	cmpl	$2, %r10d
	je	.L321
	addsd	-232(%r9), %xmm5
.LVL142:
	prefetcht0	(%r9)
	movl	$16, %r13d
	addsd	-224(%r9), %xmm5
.LVL143:
	addsd	-216(%r9), %xmm5
.LVL144:
	addsd	-208(%r9), %xmm5
.LVL145:
	addsd	-200(%r9), %xmm5
.LVL146:
	addsd	-192(%r9), %xmm5
.LVL147:
	addsd	-184(%r9), %xmm5
.LVL148:
	addsd	-176(%r9), %xmm5
.LVL149:
	leaq	360(%r14), %r9
.L321:
	addsd	-232(%r9), %xmm5
.LVL150:
	prefetcht0	(%r9)
	addl	$8, %r13d
	addq	$64, %r9
	addsd	-288(%r9), %xmm5
.LVL151:
	addsd	-280(%r9), %xmm5
.LVL152:
	addsd	-272(%r9), %xmm5
.LVL153:
	addsd	-264(%r9), %xmm5
.LVL154:
	addsd	-256(%r9), %xmm5
.LVL155:
	addsd	-248(%r9), %xmm5
.LVL156:
	addsd	-240(%r9), %xmm5
.LVL157:
.L320:
	addsd	-232(%r9), %xmm5
.LVL158:
	addl	$8, %r13d
	prefetcht0	(%r9)
	addq	$64, %r9
	addsd	-288(%r9), %xmm5
.LVL159:
	addsd	-280(%r9), %xmm5
.LVL160:
	addsd	-272(%r9), %xmm5
.LVL161:
	addsd	-264(%r9), %xmm5
.LVL162:
	addsd	-256(%r9), %xmm5
.LVL163:
	addsd	-248(%r9), %xmm5
.LVL164:
	addsd	-240(%r9), %xmm5
.LVL165:
	cmpl	%r15d, %r13d
	je	.L168
.L169:
	.loc 1 172 0 is_stmt 0 discriminator 3
	addsd	-232(%r9), %xmm5
.LVL166:
	leaq	64(%r9), %r10
	prefetcht0	(%r9)
	addl	$32, %r13d
	prefetcht0	(%r10)
	leaq	128(%r9), %r10
	prefetcht0	(%r10)
	leaq	192(%r9), %r10
	addq	$256, %r9
	addsd	-480(%r9), %xmm5
.LVL167:
	prefetcht0	(%r10)
	addsd	-472(%r9), %xmm5
.LVL168:
	addsd	-464(%r9), %xmm5
.LVL169:
	addsd	-456(%r9), %xmm5
.LVL170:
	addsd	-448(%r9), %xmm5
.LVL171:
	addsd	-440(%r9), %xmm5
.LVL172:
	addsd	-432(%r9), %xmm5
.LVL173:
	addsd	-424(%r9), %xmm5
.LVL174:
	addsd	-416(%r9), %xmm5
.LVL175:
	addsd	-408(%r9), %xmm5
.LVL176:
	addsd	-400(%r9), %xmm5
.LVL177:
	addsd	-392(%r9), %xmm5
.LVL178:
	addsd	-384(%r9), %xmm5
.LVL179:
	addsd	-376(%r9), %xmm5
.LVL180:
	addsd	-368(%r9), %xmm5
.LVL181:
	addsd	-360(%r9), %xmm5
.LVL182:
	addsd	-352(%r9), %xmm5
.LVL183:
	addsd	-344(%r9), %xmm5
.LVL184:
	addsd	-336(%r9), %xmm5
.LVL185:
	addsd	-328(%r9), %xmm5
.LVL186:
	addsd	-320(%r9), %xmm5
.LVL187:
	addsd	-312(%r9), %xmm5
.LVL188:
	addsd	-304(%r9), %xmm5
.LVL189:
	addsd	-296(%r9), %xmm5
.LVL190:
	addsd	-288(%r9), %xmm5
.LVL191:
	addsd	-280(%r9), %xmm5
.LVL192:
	addsd	-272(%r9), %xmm5
.LVL193:
	addsd	-264(%r9), %xmm5
.LVL194:
	addsd	-256(%r9), %xmm5
.LVL195:
	addsd	-248(%r9), %xmm5
.LVL196:
	addsd	-240(%r9), %xmm5
.LVL197:
	cmpl	%r15d, %r13d
	jne	.L169
.LVL198:
.L168:
	movslq	%r13d, %r15
	.loc 1 171 0 is_stmt 1
	leal	1(%r13), %r10d
	leaq	(%r14,%r15,8), %r15
	movl	%r11d, %r14d
	subl	%r13d, %r14d
	andl	$7, %r14d
.LVL199:
	cmpl	%r10d, %r11d
	.loc 1 172 0
	addsd	(%r15), %xmm5
.LVL200:
	leaq	8(%r15), %r9
	.loc 1 171 0
	jl	.L167
	testl	%r14d, %r14d
	je	.L170
	cmpl	$1, %r14d
	je	.L314
	cmpl	$2, %r14d
	je	.L315
	cmpl	$3, %r14d
	je	.L316
	cmpl	$4, %r14d
	je	.L317
	cmpl	$5, %r14d
	je	.L318
	cmpl	$6, %r14d
	je	.L319
.LVL201:
	.loc 1 172 0
	addsd	8(%r15), %xmm5
.LVL202:
	.loc 1 171 0
	leal	2(%r13), %r10d
	leaq	16(%r15), %r9
.L319:
.LVL203:
	.loc 1 172 0
	addsd	(%r9), %xmm5
.LVL204:
	.loc 1 171 0
	addl	$1, %r10d
	addq	$8, %r9
.L318:
.LVL205:
	.loc 1 172 0
	addsd	(%r9), %xmm5
.LVL206:
	.loc 1 171 0
	addl	$1, %r10d
	addq	$8, %r9
.L317:
.LVL207:
	.loc 1 172 0
	addsd	(%r9), %xmm5
.LVL208:
	.loc 1 171 0
	addl	$1, %r10d
	addq	$8, %r9
.L316:
.LVL209:
	.loc 1 172 0
	addsd	(%r9), %xmm5
.LVL210:
	.loc 1 171 0
	addl	$1, %r10d
	addq	$8, %r9
.L315:
.LVL211:
	.loc 1 172 0
	addsd	(%r9), %xmm5
.LVL212:
	.loc 1 171 0
	addl	$1, %r10d
	addq	$8, %r9
.L314:
.LVL213:
	addl	$1, %r10d
	.loc 1 172 0
	addsd	(%r9), %xmm5
.LVL214:
	addq	$8, %r9
	.loc 1 171 0
	cmpl	%r10d, %r11d
	jl	.L167
.LVL215:
.L170:
	.loc 1 172 0
	addsd	(%r9), %xmm5
	.loc 1 171 0
	addl	$8, %r10d
	addq	$64, %r9
	.loc 1 172 0
	addsd	-56(%r9), %xmm5
	addsd	-48(%r9), %xmm5
	addsd	-40(%r9), %xmm5
	addsd	-32(%r9), %xmm5
	addsd	-24(%r9), %xmm5
	addsd	-16(%r9), %xmm5
	addsd	-8(%r9), %xmm5
	.loc 1 171 0
	cmpl	%r10d, %r11d
	jge	.L170
.L167:
	.loc 1 173 0 discriminator 2
	movapd	%xmm5, %xmm8
	.loc 1 165 0 discriminator 2
	addl	$1, %r11d
.LVL216:
	addq	$8, %rax
	.loc 1 173 0 discriminator 2
	mulsd	%xmm2, %xmm8
	mulsd	%xmm8, %xmm5
	addsd	%xmm5, %xmm6
	movsd	%xmm6, -8(%rax)
	.loc 1 165 0 discriminator 2
	cmpl	%ecx, %r11d
	jne	.L171
.LVL217:
.L172:
	addq	$1, %rdx
.LVL218:
	.loc 1 164 0
	cmpl	%edx, %ebp
	jg	.L160
.LVL219:
.L156:
	.loc 1 177 0
	cmpl	$1, %ebx
	jle	.L369
	leal	-9(%rbp), %r8d
	subl	$2, %ebx
.LVL220:
	xorl	%eax, %eax
	pxor	%xmm10, %xmm10
	leaq	8(,%rbx,8), %r11
	shrl	$3, %r8d
	leal	8(,%r8,8), %r10d
.LVL221:
	.p2align 4,,10
	.p2align 3
.L175:
	.loc 1 180 0
	testl	%ebp, %ebp
	.loc 1 179 0
	movq	$0, (%rdi)
.LVL222:
	.loc 1 180 0
	jle	.L180
	cmpl	$8, %ebp
	jle	.L184
	.loc 1 181 0
	movq	(%rsi), %r14
	leaq	160(%rsi), %r13
	movq	8(%rsi), %r9
	movq	16(%rsi), %rdx
	movq	24(%rsi), %rcx
	leal	-8(%r10), %r15d
	prefetcht0	0(%r13)
	movq	32(%rsi), %rbx
	movq	40(%rsi), %r12
	movsd	(%r14,%rax), %xmm9
	movq	48(%rsi), %r8
	shrl	$3, %r15d
	movq	56(%rsi), %r13
	andl	$1, %r15d
	addsd	%xmm10, %xmm9
	movsd	%xmm9, (%rdi)
.LVL223:
	addsd	(%r9,%rax), %xmm9
	movsd	%xmm9, (%rdi)
.LVL224:
	addsd	(%rdx,%rax), %xmm9
	leaq	224(%rsi), %rdx
	movsd	%xmm9, (%rdi)
.LVL225:
	addsd	(%rcx,%rax), %xmm9
	movsd	%xmm9, (%rdi)
.LVL226:
	addsd	(%rbx,%rax), %xmm9
	movsd	%xmm9, (%rdi)
.LVL227:
	addsd	(%r12,%rax), %xmm9
	movsd	%xmm9, (%rdi)
.LVL228:
	addsd	(%r8,%rax), %xmm9
	movsd	%xmm9, (%rdi)
.LVL229:
	addsd	0(%r13,%rax), %xmm9
	movl	$8, %r13d
.LVL230:
	cmpl	%r10d, %r13d
	movsd	%xmm9, (%rdi)
	je	.L177
	testl	%r15d, %r15d
	je	.L178
	movq	-160(%rdx), %r15
	movq	-152(%rdx), %r14
	prefetcht0	(%rdx)
	movq	-144(%rdx), %r9
	movq	-136(%rdx), %rcx
	movl	$16, %r13d
	movq	-128(%rdx), %rbx
	movq	-120(%rdx), %r12
	cmpl	%r10d, %r13d
	addsd	(%r15,%rax), %xmm9
	movq	-112(%rdx), %r8
	movq	-104(%rdx), %rdx
	movsd	%xmm9, (%rdi)
.LVL231:
	addsd	(%r14,%rax), %xmm9
	movsd	%xmm9, (%rdi)
.LVL232:
	addsd	(%r9,%rax), %xmm9
	movsd	%xmm9, (%rdi)
.LVL233:
	addsd	(%rcx,%rax), %xmm9
	movsd	%xmm9, (%rdi)
.LVL234:
	addsd	(%rbx,%rax), %xmm9
	movsd	%xmm9, (%rdi)
.LVL235:
	addsd	(%r12,%rax), %xmm9
	movsd	%xmm9, (%rdi)
.LVL236:
	addsd	(%r8,%rax), %xmm9
	movsd	%xmm9, (%rdi)
.LVL237:
	addsd	(%rdx,%rax), %xmm9
	leaq	288(%rsi), %rdx
	movsd	%xmm9, (%rdi)
	je	.L177
.L178:
	.loc 1 181 0 is_stmt 0 discriminator 3
	movq	-160(%rdx), %r15
	movq	-152(%rdx), %r14
	prefetcht0	(%rdx)
	movq	-144(%rdx), %r9
	addl	$16, %r13d
	movq	-136(%rdx), %rcx
	movq	-128(%rdx), %rbx
	addsd	(%r15,%rax), %xmm9
	movq	-120(%rdx), %r12
	movq	-112(%rdx), %r8
	movq	-104(%rdx), %r15
	movsd	%xmm9, (%rdi)
.LVL238:
	addsd	(%r14,%rax), %xmm9
	leaq	64(%rdx), %r14
	subq	$-128, %rdx
	prefetcht0	(%r14)
	movsd	%xmm9, (%rdi)
.LVL239:
	addsd	(%r9,%rax), %xmm9
	movq	-224(%rdx), %r9
	movsd	%xmm9, (%rdi)
.LVL240:
	addsd	(%rcx,%rax), %xmm9
	movq	-216(%rdx), %rcx
	movsd	%xmm9, (%rdi)
.LVL241:
	addsd	(%rbx,%rax), %xmm9
	movq	-208(%rdx), %rbx
	movsd	%xmm9, (%rdi)
.LVL242:
	addsd	(%r12,%rax), %xmm9
	movsd	%xmm9, (%rdi)
.LVL243:
	addsd	(%r8,%rax), %xmm9
	movsd	%xmm9, (%rdi)
.LVL244:
	addsd	(%r15,%rax), %xmm9
	movsd	%xmm9, (%rdi)
.LVL245:
	addsd	(%r9,%rax), %xmm9
	movsd	%xmm9, (%rdi)
.LVL246:
	addsd	(%rcx,%rax), %xmm9
	movsd	%xmm9, (%rdi)
.LVL247:
	addsd	(%rbx,%rax), %xmm9
	movq	-200(%rdx), %r12
	movq	-192(%rdx), %r8
	movq	-184(%rdx), %r15
	movq	-176(%rdx), %r14
	movq	-168(%rdx), %r9
	cmpl	%r10d, %r13d
	movsd	%xmm9, (%rdi)
.LVL248:
	addsd	(%r12,%rax), %xmm9
	movsd	%xmm9, (%rdi)
.LVL249:
	addsd	(%r8,%rax), %xmm9
	movsd	%xmm9, (%rdi)
.LVL250:
	addsd	(%r15,%rax), %xmm9
	movsd	%xmm9, (%rdi)
.LVL251:
	addsd	(%r14,%rax), %xmm9
	movsd	%xmm9, (%rdi)
.LVL252:
	addsd	(%r9,%rax), %xmm9
	movsd	%xmm9, (%rdi)
	jne	.L178
.LVL253:
.L177:
	movslq	%r13d, %rdx
	movl	%r13d, %r12d
	.loc 1 180 0 is_stmt 1
	leal	1(%r13), %r15d
	leaq	(%rsi,%rdx,8), %rbx
	notl	%r12d
	addl	%ebp, %r12d
	.loc 1 181 0
	movq	(%rbx), %rcx
	andl	$7, %r12d
	.loc 1 180 0
	cmpl	%r15d, %ebp
	leaq	8(%rbx), %r14
	.loc 1 181 0
	addsd	(%rcx,%rax), %xmm9
	movsd	%xmm9, (%rdi)
	.loc 1 180 0
	jle	.L180
	testl	%r12d, %r12d
	je	.L179
	cmpl	$1, %r12d
	je	.L308
	cmpl	$2, %r12d
	je	.L309
	cmpl	$3, %r12d
	je	.L310
	cmpl	$4, %r12d
	je	.L311
	cmpl	$5, %r12d
	je	.L312
	cmpl	$6, %r12d
	je	.L313
	.loc 1 181 0
	movq	8(%rbx), %r8
	.loc 1 180 0
	leal	2(%r13), %r15d
	leaq	16(%rbx), %r14
	.loc 1 181 0
	addsd	(%r8,%rax), %xmm9
	movsd	%xmm9, (%rdi)
.L313:
	movq	(%r14), %r13
	.loc 1 180 0
	addl	$1, %r15d
	addq	$8, %r14
	.loc 1 181 0
	addsd	0(%r13,%rax), %xmm9
	movsd	%xmm9, (%rdi)
.L312:
	movq	(%r14), %r9
	.loc 1 180 0
	addl	$1, %r15d
	addq	$8, %r14
	.loc 1 181 0
	addsd	(%r9,%rax), %xmm9
	movsd	%xmm9, (%rdi)
.L311:
	movq	(%r14), %rdx
	.loc 1 180 0
	addl	$1, %r15d
	addq	$8, %r14
	.loc 1 181 0
	addsd	(%rdx,%rax), %xmm9
	movsd	%xmm9, (%rdi)
.L310:
	movq	(%r14), %rbx
	.loc 1 180 0
	addl	$1, %r15d
	addq	$8, %r14
	.loc 1 181 0
	addsd	(%rbx,%rax), %xmm9
	movsd	%xmm9, (%rdi)
.L309:
	movq	(%r14), %r12
	.loc 1 180 0
	addl	$1, %r15d
	addq	$8, %r14
	.loc 1 181 0
	addsd	(%r12,%rax), %xmm9
	movsd	%xmm9, (%rdi)
.L308:
	movq	(%r14), %rcx
	.loc 1 180 0
	addl	$1, %r15d
	addq	$8, %r14
	cmpl	%r15d, %ebp
	.loc 1 181 0
	addsd	(%rcx,%rax), %xmm9
	movsd	%xmm9, (%rdi)
	.loc 1 180 0
	jle	.L180
.L179:
	.loc 1 181 0
	movq	(%r14), %r8
	movq	8(%r14), %r13
	.loc 1 180 0
	addl	$8, %r15d
	.loc 1 181 0
	movq	16(%r14), %r9
	addq	$64, %r14
	movq	-40(%r14), %rdx
	movq	-32(%r14), %rbx
	addsd	(%r8,%rax), %xmm9
	movq	-24(%r14), %r12
	movq	-16(%r14), %rcx
	movq	-8(%r14), %r8
	.loc 1 180 0
	cmpl	%r15d, %ebp
	.loc 1 181 0
	movsd	%xmm9, (%rdi)
	addsd	0(%r13,%rax), %xmm9
	movsd	%xmm9, (%rdi)
	addsd	(%r9,%rax), %xmm9
	movsd	%xmm9, (%rdi)
	addsd	(%rdx,%rax), %xmm9
	movsd	%xmm9, (%rdi)
	addsd	(%rbx,%rax), %xmm9
	movsd	%xmm9, (%rdi)
	addsd	(%r12,%rax), %xmm9
	movsd	%xmm9, (%rdi)
	addsd	(%rcx,%rax), %xmm9
	movsd	%xmm9, (%rdi)
	addsd	(%r8,%rax), %xmm9
	movsd	%xmm9, (%rdi)
	.loc 1 180 0
	jg	.L179
.L180:
	addq	$8, %rax
	addq	$8, %rdi
	.loc 1 177 0
	cmpq	%r11, %rax
	jne	.L175
.L369:
.LBE12:
	.loc 1 186 0
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa_offset 40
.LVL254:
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL255:
	.p2align 4,,10
	.p2align 3
.L183:
	.cfi_restore_state
.LBB13:
	.loc 1 168 0
	movapd	%xmm7, %xmm5
	xorl	%r13d, %r13d
	jmp	.L168
.LVL256:
	.p2align 4,,10
	.p2align 3
.L182:
	movapd	%xmm7, %xmm6
	xorl	%r13d, %r13d
	jmp	.L162
	.p2align 4,,10
	.p2align 3
.L161:
.LVL257:
	.loc 1 171 0 discriminator 1
	movapd	%xmm7, %xmm6
	je	.L166
	.loc 1 171 0 is_stmt 0
	movapd	%xmm7, %xmm5
	jmp	.L167
.LVL258:
.L184:
	.loc 1 180 0 is_stmt 1
	movapd	%xmm10, %xmm9
	xorl	%r13d, %r13d
	jmp	.L177
.LVL259:
.L181:
	.loc 1 160 0
	xorl	%ecx, %ecx
.LVL260:
	jmp	.L157
.LVL261:
.L166:
	movq	(%r12,%rdx,8), %r14
	.loc 1 171 0
	movapd	%xmm7, %xmm5
	xorl	%r13d, %r13d
	jmp	.L168
.LBE13:
	.cfi_endproc
.LFE77:
	.size	_Z10HJM_DriftsPdPS_iidS0_, .-_Z10HJM_DriftsPdPS_iidS0_
	.section	.text.unlikely
.LCOLDE9:
	.text
.LHOTE9:
	.section	.text.unlikely
.LCOLDB10:
	.text
.LHOTB10:
	.p2align 4,,15
	.globl	_Z19HJM_SimPath_ForwardPPdiidS_S_S0_Pl
	.type	_Z19HJM_SimPath_ForwardPPdiidS_S_S0_Pl, @function
_Z19HJM_SimPath_ForwardPPdiidS_S_S0_Pl:
.LFB78:
	.loc 1 196 0
	.cfi_startproc
.LVL262:
.LBB14:
	.loc 1 206 0
	pxor	%xmm1, %xmm1
.LBE14:
	.loc 1 196 0
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
.LBB15:
	.loc 1 208 0
	leal	-1(%rdx), %eax
.LBE15:
	.loc 1 196 0
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
	movl	%esi, %ebp
.LBB16:
	.loc 1 206 0
	cvtsi2sd	%esi, %xmm1
.LBE16:
	.loc 1 196 0
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
.LBB17:
	.loc 1 208 0
	cltq
.LBE17:
	.loc 1 196 0
	movl	%edx, %r12d
	movq	%r9, %r15
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	.loc 1 196 0
	movq	%rdi, 32(%rsp)
.LVL263:
	movl	%esi, 12(%rsp)
.LBB18:
	.loc 1 208 0
	xorl	%edi, %edi
.LVL264:
	movq	%rax, %rsi
.LVL265:
.LBE18:
	.loc 1 196 0
	movq	%rcx, 24(%rsp)
	movq	%r8, 40(%rsp)
	movq	160(%rsp), %rbx
.LBB19:
	.loc 1 208 0
	movq	%rax, 64(%rsp)
	.loc 1 206 0
	divsd	%xmm1, %xmm0
.LVL266:
	movsd	%xmm0, (%rsp)
.LVL267:
	.loc 1 208 0
	call	_Z7dvectorll
.LVL268:
	.loc 1 210 0
	testl	%ebp, %ebp
	.loc 1 208 0
	movq	%rax, %r14
.LVL269:
	.loc 1 210 0
	jle	.L372
	cmpl	$8, %ebp
	jle	.L640
	movl	12(%rsp), %edi
	movq	32(%rsp), %rcx
	.loc 1 212 0
	xorl	%r10d, %r10d
	movl	%r12d, 56(%rsp)
	movl	%edi, %esi
	movl	%edi, %r9d
	leaq	80(%rcx), %r13
	subl	$9, %esi
	subl	$1, %r9d
	shrl	$3, %esi
	leaq	8(,%r9,8), %rbp
.LVL270:
	movq	%r13, %r12
.LVL271:
	leal	8(,%rsi,8), %r8d
	movq	%rbx, %r13
	movl	%r9d, 48(%rsp)
	movl	%r10d, %ebx
	movl	%r8d, 16(%rsp)
.LVL272:
	.p2align 4,,10
	.p2align 3
.L376:
	movq	-80(%r12), %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	prefetcht0	(%r12)
	addl	$8, %ebx
	addq	$64, %r12
	call	memset
.LVL273:
	movq	-136(%r12), %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	call	memset
.LVL274:
	movq	-128(%r12), %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	call	memset
.LVL275:
	movq	-120(%r12), %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	call	memset
.LVL276:
	movq	-112(%r12), %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	call	memset
.LVL277:
	movq	-104(%r12), %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	call	memset
.LVL278:
	movq	-96(%r12), %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	call	memset
.LVL279:
	movq	-88(%r12), %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	call	memset
.LVL280:
	cmpl	%ebx, 16(%rsp)
	jne	.L376
	movl	56(%rsp), %r12d
	movl	%ebx, %r11d
	movq	%r13, %rbx
.LVL281:
.L377:
	movq	32(%rsp), %rcx
	movl	48(%rsp), %edi
	movslq	%r11d, %rdx
	movl	%r11d, %r9d
	movl	%r11d, 72(%rsp)
	notl	%r9d
	addl	12(%rsp), %r9d
	leaq	(%rcx,%rdx,8), %rsi
	leaq	8(,%rdi,8), %r8
	movq	(%rsi), %rdi
	movq	%rsi, 48(%rsp)
	xorl	%esi, %esi
	andl	$7, %r9d
	movq	%r8, %rdx
	movq	%r8, 16(%rsp)
	movl	%r9d, 56(%rsp)
.LVL282:
	call	memset
.LVL283:
	.loc 1 210 0
	movl	72(%rsp), %r11d
	movq	48(%rsp), %r10
	movl	56(%rsp), %eax
	leal	1(%r11), %ebp
	cmpl	%ebp, 12(%rsp)
	leaq	8(%r10), %r13
	jle	.L617
	testl	%eax, %eax
	movl	%r11d, 56(%rsp)
	movq	%r10, 48(%rsp)
	je	.L637
	cmpl	$1, %eax
	je	.L571
	cmpl	$2, %eax
	je	.L572
	cmpl	$3, %eax
	je	.L573
	cmpl	$4, %eax
	je	.L574
	cmpl	$5, %eax
	je	.L575
	cmpl	$6, %eax
	je	.L576
	movq	0(%r13), %rdi
	movq	16(%rsp), %rdx
	xorl	%esi, %esi
	call	memset
.LVL284:
	movl	56(%rsp), %ebp
	movq	48(%rsp), %r13
	leal	2(%rbp), %ebp
	leaq	16(%r13), %r13
.L576:
	movq	0(%r13), %rdi
	movq	16(%rsp), %rdx
	xorl	%esi, %esi
	addl	$1, %ebp
	addq	$8, %r13
	call	memset
.LVL285:
.L575:
	movq	0(%r13), %rdi
	movq	16(%rsp), %rdx
	xorl	%esi, %esi
	addl	$1, %ebp
	addq	$8, %r13
	call	memset
.LVL286:
.L574:
	movq	0(%r13), %rdi
	movq	16(%rsp), %rdx
	xorl	%esi, %esi
	addl	$1, %ebp
	addq	$8, %r13
	call	memset
.LVL287:
.L573:
	movq	0(%r13), %rdi
	movq	16(%rsp), %rdx
	xorl	%esi, %esi
	addl	$1, %ebp
	addq	$8, %r13
	call	memset
.LVL288:
.L572:
	movq	0(%r13), %rdi
	movq	16(%rsp), %rdx
	xorl	%esi, %esi
	addl	$1, %ebp
	addq	$8, %r13
	call	memset
.LVL289:
.L571:
	movq	0(%r13), %rdi
	movq	16(%rsp), %rdx
	xorl	%esi, %esi
	addl	$1, %ebp
	addq	$8, %r13
	call	memset
.LVL290:
	cmpl	%ebp, 12(%rsp)
	jle	.L617
.L637:
	movq	%rbx, 160(%rsp)
	movq	16(%rsp), %rbx
.L374:
	movq	0(%r13), %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	addl	$8, %ebp
	addq	$64, %r13
	call	memset
.LVL291:
	movq	-56(%r13), %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	call	memset
.LVL292:
	movq	-48(%r13), %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	call	memset
.LVL293:
	movq	-40(%r13), %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	call	memset
.LVL294:
	movq	-32(%r13), %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	call	memset
.LVL295:
	movq	-24(%r13), %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	call	memset
.LVL296:
	movq	-16(%r13), %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	call	memset
.LVL297:
	movq	-8(%r13), %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	call	memset
.LVL298:
	cmpl	%ebp, 12(%rsp)
	jg	.L374
	movq	160(%rsp), %rbx
.L617:
	movl	12(%rsp), %esi
	movq	32(%rsp), %rdx
	cmpl	$24, %esi
	movq	(%rdx), %rdi
	jbe	.L378
	movq	24(%rsp), %r9
	leaq	16(%rdi), %r8
	leaq	16(%r9), %r10
	cmpq	%r8, %r9
	setae	%r11b
	cmpq	%r10, %rdi
	setae	%al
	orb	%al, %r11b
	je	.L378
	movq	%r9, %rdx
	salq	$60, %rdx
	shrq	$63, %rdx
	cmpl	%esi, %edx
	cmova	%esi, %edx
	xorl	%ebp, %ebp
	testl	%edx, %edx
	je	.L379
.LVL299:
	.loc 1 216 0
	movsd	(%r9), %xmm0
	.loc 1 215 0
	movb	$1, %bpl
	.loc 1 216 0
	movsd	%xmm0, (%rdi)
.LVL300:
.L379:
	movl	12(%rsp), %r13d
	movq	24(%rsp), %r8
	subl	%edx, %r13d
	leal	-2(%r13), %esi
	shrl	%esi
	leal	1(%rsi), %r9d
	leal	-4(%rsi), %r11d
	movl	$4, %esi
	leal	(%r9,%r9), %ecx
	shrl	$2, %r11d
	movl	%ecx, 16(%rsp)
	movl	%edx, %ecx
	salq	$3, %rcx
	leaq	(%r8,%rcx), %r10
	addq	%rdi, %rcx
	leal	4(,%r11,4), %r8d
	andl	$3, %r11d
	leaq	64(%rcx), %rdx
	movapd	(%r10), %xmm2
	prefetcht0	464(%r10)
	cmpl	%r8d, %esi
	leaq	64(%r10), %rax
	movups	%xmm2, (%rcx)
	movapd	16(%r10), %xmm3
	movups	%xmm3, 16(%rcx)
	movapd	32(%r10), %xmm4
	movups	%xmm4, 32(%rcx)
	movapd	48(%r10), %xmm5
	movups	%xmm5, 48(%rcx)
	je	.L618
	testl	%r11d, %r11d
	je	.L380
	cmpl	$1, %r11d
	je	.L569
	cmpl	$2, %r11d
	je	.L570
	movapd	(%rax), %xmm6
	prefetcht0	528(%r10)
	movl	$8, %esi
	movups	%xmm6, (%rdx)
	movapd	16(%rax), %xmm7
	movups	%xmm7, 16(%rdx)
	movapd	32(%rax), %xmm8
	movups	%xmm8, 32(%rdx)
	movapd	48(%rax), %xmm9
	leaq	128(%r10), %rax
	movups	%xmm9, 48(%rdx)
	leaq	128(%rcx), %rdx
.L570:
	prefetcht0	464(%rax)
	addq	$64, %rdx
	addq	$64, %rax
	addl	$4, %esi
	movapd	-64(%rax), %xmm10
	movups	%xmm10, -64(%rdx)
	movapd	-48(%rax), %xmm11
	movups	%xmm11, -48(%rdx)
	movapd	-32(%rax), %xmm12
	movups	%xmm12, -32(%rdx)
	movapd	-16(%rax), %xmm13
	movups	%xmm13, -16(%rdx)
.L569:
	prefetcht0	464(%rax)
	addl	$4, %esi
	addq	$64, %rax
	addq	$64, %rdx
	movapd	-64(%rax), %xmm14
	movups	%xmm14, -64(%rdx)
	movapd	-48(%rax), %xmm15
	movups	%xmm15, -48(%rdx)
	movapd	-32(%rax), %xmm1
	movups	%xmm1, -32(%rdx)
	movapd	-16(%rax), %xmm0
	movups	%xmm0, -16(%rdx)
	cmpl	%r8d, %esi
	je	.L618
.L380:
	prefetcht0	464(%rax)
	prefetcht0	528(%rax)
	prefetcht0	592(%rax)
	.loc 1 216 0 is_stmt 0 discriminator 3
	movapd	(%rax), %xmm2
	prefetcht0	656(%rax)
	addl	$16, %esi
	addq	$256, %rax
	addq	$256, %rdx
	movups	%xmm2, -256(%rdx)
	movapd	-240(%rax), %xmm3
	movups	%xmm3, -240(%rdx)
	movapd	-224(%rax), %xmm4
	movups	%xmm4, -224(%rdx)
	movapd	-208(%rax), %xmm5
	movups	%xmm5, -208(%rdx)
	movapd	-192(%rax), %xmm6
	movups	%xmm6, -192(%rdx)
	movapd	-176(%rax), %xmm7
	movups	%xmm7, -176(%rdx)
	movapd	-160(%rax), %xmm8
	movups	%xmm8, -160(%rdx)
	movapd	-144(%rax), %xmm9
	movups	%xmm9, -144(%rdx)
	movapd	-128(%rax), %xmm10
	movups	%xmm10, -128(%rdx)
	movapd	-112(%rax), %xmm11
	movups	%xmm11, -112(%rdx)
	movapd	-96(%rax), %xmm12
	movups	%xmm12, -96(%rdx)
	movapd	-80(%rax), %xmm13
	movups	%xmm13, -80(%rdx)
	movapd	-64(%rax), %xmm14
	movups	%xmm14, -64(%rdx)
	movapd	-48(%rax), %xmm15
	movups	%xmm15, -48(%rdx)
	movapd	-32(%rax), %xmm1
	movups	%xmm1, -32(%rdx)
	movapd	-16(%rax), %xmm0
	movups	%xmm0, -16(%rdx)
	cmpl	%r8d, %esi
	jne	.L380
.L618:
	movl	%r8d, %r10d
	leal	1(%r8), %r11d
	movl	$16, %ecx
	notl	%r10d
	.loc 1 216 0
	movapd	(%rax), %xmm2
	addl	%r9d, %r10d
	andl	$7, %r10d
	cmpl	%r11d, %r9d
	movups	%xmm2, (%rdx)
	jbe	.L619
	testl	%r10d, %r10d
	je	.L384
	cmpl	$1, %r10d
	je	.L563
	cmpl	$2, %r10d
	je	.L564
	cmpl	$3, %r10d
	je	.L565
	cmpl	$4, %r10d
	je	.L566
	cmpl	$5, %r10d
	je	.L567
	cmpl	$6, %r10d
	je	.L568
	movapd	16(%rax), %xmm3
	leal	2(%r8), %r11d
	movl	$32, %ecx
	movups	%xmm3, 16(%rdx)
.L568:
	addl	$1, %r11d
	movapd	(%rax,%rcx), %xmm4
	movups	%xmm4, (%rdx,%rcx)
	addq	$16, %rcx
.L567:
	addl	$1, %r11d
	movapd	(%rax,%rcx), %xmm5
	movups	%xmm5, (%rdx,%rcx)
	addq	$16, %rcx
.L566:
	addl	$1, %r11d
	movapd	(%rax,%rcx), %xmm6
	movups	%xmm6, (%rdx,%rcx)
	addq	$16, %rcx
.L565:
	addl	$1, %r11d
	movapd	(%rax,%rcx), %xmm7
	movups	%xmm7, (%rdx,%rcx)
	addq	$16, %rcx
.L564:
	addl	$1, %r11d
	movapd	(%rax,%rcx), %xmm8
	movups	%xmm8, (%rdx,%rcx)
	addq	$16, %rcx
.L563:
	addl	$1, %r11d
	movapd	(%rax,%rcx), %xmm9
	movups	%xmm9, (%rdx,%rcx)
	addq	$16, %rcx
	cmpl	%r11d, %r9d
	jbe	.L619
.L384:
	addl	$8, %r11d
	movapd	(%rax,%rcx), %xmm10
	movups	%xmm10, (%rdx,%rcx)
	movapd	16(%rax,%rcx), %xmm11
	movups	%xmm11, 16(%rdx,%rcx)
	movapd	32(%rax,%rcx), %xmm12
	movups	%xmm12, 32(%rdx,%rcx)
	movapd	48(%rax,%rcx), %xmm13
	movups	%xmm13, 48(%rdx,%rcx)
	movapd	64(%rax,%rcx), %xmm14
	movups	%xmm14, 64(%rdx,%rcx)
	movapd	80(%rax,%rcx), %xmm15
	movups	%xmm15, 80(%rdx,%rcx)
	movapd	96(%rax,%rcx), %xmm1
	movups	%xmm1, 96(%rdx,%rcx)
	movapd	112(%rax,%rcx), %xmm0
	movups	%xmm0, 112(%rdx,%rcx)
	subq	$-128, %rcx
	cmpl	%r11d, %r9d
	ja	.L384
.L619:
	movl	16(%rsp), %edx
	movl	%edx, %eax
	addl	%ebp, %eax
	cmpl	%r13d, %edx
	je	.L389
.LVL301:
	movq	24(%rsp), %rsi
	cltq
	movsd	(%rsi,%rax,8), %xmm2
	movsd	%xmm2, (%rdi,%rax,8)
.LVL302:
.L389:
	.loc 1 219 0 is_stmt 1
	cmpl	$1, 12(%rsp)
	jle	.L372
	leal	-9(%r12), %r13d
	movl	12(%rsp), %ecx
	movq	32(%rsp), %rdi
	sqrtsd	(%rsp), %xmm3
	movsd	%xmm3, 56(%rsp)
	movq	%r15, 48(%rsp)
	shrl	$3, %r13d
	movq	%r14, %r15
.LVL303:
	leal	8(,%r13,8), %eax
	subl	$2, %ecx
	addq	$8, %rdi
	movl	%ecx, 12(%rsp)
.LVL304:
	movq	%rdi, %r13
	movl	%eax, %r14d
.LVL305:
	.p2align 4,,10
	.p2align 3
.L390:
	.loc 1 222 0 discriminator 1
	testl	%r12d, %r12d
	jle	.L392
	.loc 1 222 0 is_stmt 0
	xorl	%edx, %edx
	cmpl	$8, %r12d
	leaq	56(%r15), %rbp
	jle	.L394
	movl	%r12d, 16(%rsp)
	movl	%edx, %r12d
.LVL306:
	.p2align 4,,10
	.p2align 3
.L414:
	.loc 1 223 0 is_stmt 1 discriminator 3
	movq	%rbx, %rdi
	prefetcht0	0(%rbp)
	addl	$8, %r12d
	call	_Z7RanUnifPl
.LVL307:
	call	_Z12CumNormalInvd
.LVL308:
	movsd	%xmm0, -56(%rbp)
	movq	%rbx, %rdi
	addq	$64, %rbp
	call	_Z7RanUnifPl
.LVL309:
	call	_Z12CumNormalInvd
.LVL310:
	movsd	%xmm0, -112(%rbp)
	movq	%rbx, %rdi
	call	_Z7RanUnifPl
.LVL311:
	call	_Z12CumNormalInvd
.LVL312:
	movsd	%xmm0, -104(%rbp)
	movq	%rbx, %rdi
	call	_Z7RanUnifPl
.LVL313:
	call	_Z12CumNormalInvd
.LVL314:
	movsd	%xmm0, -96(%rbp)
	movq	%rbx, %rdi
	call	_Z7RanUnifPl
.LVL315:
	call	_Z12CumNormalInvd
.LVL316:
	movsd	%xmm0, -88(%rbp)
	movq	%rbx, %rdi
	call	_Z7RanUnifPl
.LVL317:
	call	_Z12CumNormalInvd
.LVL318:
	movsd	%xmm0, -80(%rbp)
	movq	%rbx, %rdi
	call	_Z7RanUnifPl
.LVL319:
	call	_Z12CumNormalInvd
.LVL320:
	movsd	%xmm0, -72(%rbp)
	movq	%rbx, %rdi
	call	_Z7RanUnifPl
.LVL321:
	call	_Z12CumNormalInvd
.LVL322:
	movsd	%xmm0, -64(%rbp)
	cmpl	%r12d, %r14d
	jne	.L414
	movl	%r12d, %edx
	movl	16(%rsp), %r12d
.L394:
	movl	%edx, %r11d
	movslq	%edx, %r9
	.loc 1 223 0 is_stmt 0
	movq	%rbx, %rdi
	notl	%r11d
	leaq	(%r15,%r9,8), %r10
	movl	%edx, 24(%rsp)
	addl	%r12d, %r11d
	andl	$3, %r11d
	movq	%r10, 32(%rsp)
	movl	%r11d, 16(%rsp)
	call	_Z7RanUnifPl
.LVL323:
	call	_Z12CumNormalInvd
.LVL324:
	.loc 1 222 0 is_stmt 1
	movl	24(%rsp), %edi
	.loc 1 223 0
	movq	32(%rsp), %r8
	.loc 1 222 0
	movl	16(%rsp), %esi
	leal	1(%rdi), %eax
	.loc 1 223 0
	movsd	%xmm0, (%r8)
	leaq	8(%r8), %rbp
	.loc 1 222 0
	cmpl	%eax, %r12d
	jle	.L392
	testl	%esi, %esi
	movl	%edi, 24(%rsp)
	movq	%r8, 16(%rsp)
	je	.L627
	cmpl	$1, %esi
	je	.L555
	cmpl	$2, %esi
	je	.L556
	.loc 1 223 0
	movq	%rbx, %rdi
	call	_Z7RanUnifPl
.LVL325:
	call	_Z12CumNormalInvd
.LVL326:
	movq	16(%rsp), %rbp
	.loc 1 222 0
	movl	24(%rsp), %ecx
	.loc 1 223 0
	movsd	%xmm0, 8(%rbp)
	.loc 1 222 0
	leal	2(%rcx), %eax
	leaq	16(%rbp), %rbp
.L556:
	.loc 1 223 0
	movq	%rbx, %rdi
	movl	%eax, 16(%rsp)
	addq	$8, %rbp
	call	_Z7RanUnifPl
.LVL327:
	call	_Z12CumNormalInvd
.LVL328:
	.loc 1 222 0
	movl	16(%rsp), %eax
	.loc 1 223 0
	movsd	%xmm0, -8(%rbp)
	.loc 1 222 0
	addl	$1, %eax
.L555:
	.loc 1 223 0
	movq	%rbx, %rdi
	movl	%eax, 16(%rsp)
	addq	$8, %rbp
	call	_Z7RanUnifPl
.LVL329:
	call	_Z12CumNormalInvd
.LVL330:
	.loc 1 222 0
	movl	16(%rsp), %eax
	.loc 1 223 0
	movsd	%xmm0, -8(%rbp)
	.loc 1 222 0
	addl	$1, %eax
	cmpl	%eax, %r12d
	jle	.L392
.L627:
	movq	%r13, 16(%rsp)
	movl	%eax, %r13d
.L391:
	.loc 1 223 0
	movq	%rbx, %rdi
	.loc 1 222 0
	addl	$4, %r13d
	addq	$32, %rbp
	.loc 1 223 0
	call	_Z7RanUnifPl
.LVL331:
	call	_Z12CumNormalInvd
.LVL332:
	movsd	%xmm0, -32(%rbp)
	movq	%rbx, %rdi
	call	_Z7RanUnifPl
.LVL333:
	call	_Z12CumNormalInvd
.LVL334:
	movsd	%xmm0, -24(%rbp)
	movq	%rbx, %rdi
	call	_Z7RanUnifPl
.LVL335:
	call	_Z12CumNormalInvd
.LVL336:
	movsd	%xmm0, -16(%rbp)
	movq	%rbx, %rdi
	call	_Z7RanUnifPl
.LVL337:
	call	_Z12CumNormalInvd
.LVL338:
	movsd	%xmm0, -8(%rbp)
	.loc 1 222 0
	cmpl	%r13d, %r12d
	jg	.L391
	movq	16(%rsp), %r13
.L392:
.LVL339:
	movq	%rbx, 160(%rsp)
	movq	40(%rsp), %rbp
	.loc 1 225 0
	xorl	%r9d, %r9d
	movq	48(%rsp), %r8
	movl	12(%rsp), %ebx
	movsd	56(%rsp), %xmm3
.LVL340:
	.p2align 4,,10
	.p2align 3
.L395:
	.loc 1 228 0 discriminator 1
	testl	%r12d, %r12d
	leaq	0(,%r9,8), %rax
	pxor	%xmm4, %xmm4
	jle	.L397
	.loc 1 228 0 is_stmt 0
	xorl	%edi, %edi
	cmpl	$8, %r12d
	pxor	%xmm12, %xmm12
	jle	.L399
	.loc 1 229 0 is_stmt 1
	movq	(%r8), %rdi
	movq	8(%r8), %rsi
	leaq	136(%r8), %r10
	movq	16(%r8), %rcx
	pxor	%xmm6, %xmm6
	prefetcht0	(%r10)
	movq	24(%r8), %r10
	movsd	24(%r15), %xmm11
	movsd	(%rdi,%r9,8), %xmm5
	leaq	136(%r15), %rdx
	movsd	(%rsi,%r9,8), %xmm7
	movq	40(%r8), %rdi
	mulsd	(%r15), %xmm5
	prefetcht0	(%rdx)
	movq	32(%r8), %rdx
	mulsd	8(%r15), %xmm7
	movq	48(%r8), %rsi
	leal	-8(%r14), %r11d
	movsd	(%rcx,%r9,8), %xmm9
	movq	56(%r8), %rcx
	movsd	(%r10,%r9,8), %xmm10
	shrl	$3, %r11d
	mulsd	16(%r15), %xmm9
	andl	$1, %r11d
.LVL341:
	cmpl	$8, %r14d
	mulsd	%xmm10, %xmm11
	addsd	%xmm5, %xmm6
.LVL342:
	movsd	(%rdx,%r9,8), %xmm13
	movapd	%xmm7, %xmm8
	leaq	200(%r15), %rdx
	movsd	32(%r15), %xmm14
	movsd	(%rdi,%r9,8), %xmm1
	movl	$8, %edi
	addsd	%xmm6, %xmm8
.LVL343:
	mulsd	%xmm13, %xmm14
	movsd	40(%r15), %xmm0
	movsd	(%rsi,%r9,8), %xmm5
	mulsd	%xmm1, %xmm0
	addsd	%xmm8, %xmm9
.LVL344:
	movsd	48(%r15), %xmm2
	movsd	(%rcx,%r9,8), %xmm7
	leaq	200(%r8), %rcx
	mulsd	%xmm5, %xmm2
	movsd	56(%r15), %xmm8
	addsd	%xmm11, %xmm9
.LVL345:
	mulsd	%xmm7, %xmm8
	movapd	%xmm9, %xmm12
.LVL346:
	addsd	%xmm14, %xmm12
	movapd	%xmm12, %xmm15
.LVL347:
	addsd	%xmm0, %xmm15
	movapd	%xmm15, %xmm4
.LVL348:
	addsd	%xmm2, %xmm4
.LVL349:
	movapd	%xmm4, %xmm6
.LVL350:
	addsd	%xmm8, %xmm6
	movapd	%xmm6, %xmm12
.LVL351:
	je	.L399
	testl	%r11d, %r11d
	je	.L398
	movq	-136(%rcx), %r11
	movq	-128(%rcx), %r10
	prefetcht0	(%rcx)
	movq	-120(%rcx), %rdi
	movq	-112(%rcx), %rsi
	cmpl	$16, %r14d
	movsd	-112(%rdx), %xmm14
	prefetcht0	(%rdx)
	movsd	(%r11,%rax), %xmm9
	movq	-104(%rcx), %r11
	movsd	(%r10,%rax), %xmm10
	movq	-96(%rcx), %r10
	mulsd	-136(%rdx), %xmm9
	mulsd	-128(%rdx), %xmm10
	movsd	(%rsi,%rax), %xmm13
	movsd	-104(%rdx), %xmm0
	mulsd	%xmm13, %xmm14
	movsd	(%r11,%rax), %xmm1
	addsd	%xmm9, %xmm12
.LVL352:
	movsd	-96(%rdx), %xmm2
	movapd	%xmm10, %xmm11
	mulsd	%xmm1, %xmm0
	movsd	(%r10,%rax), %xmm5
	movsd	-88(%rdx), %xmm8
	addsd	%xmm12, %xmm11
.LVL353:
	movsd	(%rdi,%rax), %xmm12
	mulsd	%xmm5, %xmm2
	movq	-88(%rcx), %rdi
	movq	-80(%rcx), %rcx
	mulsd	-120(%rdx), %xmm12
	movsd	(%rdi,%rax), %xmm7
	movl	$16, %edi
	movsd	(%rcx,%rax), %xmm10
	leaq	264(%r8), %rcx
	mulsd	%xmm7, %xmm8
	mulsd	-80(%rdx), %xmm10
	leaq	264(%r15), %rdx
	addsd	%xmm11, %xmm12
.LVL354:
	movapd	%xmm12, %xmm15
	addsd	%xmm14, %xmm15
.LVL355:
	movapd	%xmm15, %xmm4
	addsd	%xmm0, %xmm4
.LVL356:
	movapd	%xmm4, %xmm6
	addsd	%xmm2, %xmm6
.LVL357:
	movapd	%xmm6, %xmm9
	addsd	%xmm8, %xmm9
.LVL358:
	addsd	%xmm10, %xmm9
	movapd	%xmm9, %xmm12
.LVL359:
	je	.L399
.LVL360:
.L398:
	.loc 1 229 0 is_stmt 0 discriminator 3
	movq	-136(%rcx), %rsi
	movq	-128(%rcx), %r11
	prefetcht0	(%rcx)
	movq	-120(%rcx), %r10
	prefetcht0	(%rdx)
	addl	$16, %edi
	movsd	(%rsi,%rax), %xmm13
	movq	-112(%rcx), %rsi
	movsd	(%r11,%rax), %xmm14
	movq	-104(%rcx), %r11
	mulsd	-136(%rdx), %xmm13
	mulsd	-128(%rdx), %xmm14
	movsd	(%r10,%rax), %xmm1
	movq	-96(%rcx), %r10
	movsd	(%rsi,%rax), %xmm0
	movq	-88(%rcx), %rsi
	mulsd	-120(%rdx), %xmm1
	mulsd	-112(%rdx), %xmm0
	addsd	%xmm13, %xmm12
.LVL361:
	movsd	(%r11,%rax), %xmm2
	movsd	(%r10,%rax), %xmm8
	movq	-80(%rcx), %r11
	mulsd	-104(%rdx), %xmm2
	leaq	64(%rcx), %r10
	subq	$-128, %rcx
	mulsd	-96(%rdx), %xmm8
	addsd	%xmm12, %xmm14
.LVL362:
	movsd	(%rsi,%rax), %xmm11
	prefetcht0	(%r10)
	movq	-192(%rcx), %r10
	leaq	64(%rdx), %rsi
	subq	$-128, %rdx
	mulsd	-216(%rdx), %xmm11
	prefetcht0	(%rsi)
	addsd	%xmm14, %xmm1
.LVL363:
	movsd	(%r11,%rax), %xmm14
	movq	-200(%rcx), %r11
	mulsd	-208(%rdx), %xmm14
	movapd	%xmm1, %xmm5
	addsd	%xmm0, %xmm5
.LVL364:
	movsd	(%r11,%rax), %xmm0
	mulsd	-200(%rdx), %xmm0
	addsd	%xmm2, %xmm5
.LVL365:
	movapd	%xmm5, %xmm10
	movsd	(%r10,%rax), %xmm5
	movapd	%xmm0, %xmm4
	addsd	%xmm8, %xmm10
.LVL366:
	mulsd	-192(%rdx), %xmm5
	movq	-184(%rcx), %rsi
	movq	-176(%rcx), %r11
	movsd	-176(%rdx), %xmm8
	movq	-168(%rcx), %r10
	movsd	-152(%rdx), %xmm0
	addsd	%xmm11, %xmm10
	movsd	(%rsi,%rax), %xmm6
	movsd	(%r11,%rax), %xmm7
	movq	-160(%rcx), %rsi
	mulsd	-184(%rdx), %xmm6
	movq	-152(%rcx), %r11
	movapd	%xmm5, %xmm2
	mulsd	%xmm7, %xmm8
	movapd	%xmm10, %xmm13
.LVL367:
	movsd	-168(%rdx), %xmm11
	movsd	(%r10,%rax), %xmm10
	movq	-144(%rcx), %r10
	addsd	%xmm14, %xmm13
.LVL368:
	movsd	-160(%rdx), %xmm14
	mulsd	%xmm10, %xmm11
	movsd	(%r11,%rax), %xmm1
	movsd	(%r10,%rax), %xmm5
	addsd	%xmm13, %xmm4
.LVL369:
	movsd	(%rsi,%rax), %xmm13
	mulsd	%xmm1, %xmm0
	mulsd	%xmm13, %xmm14
	addsd	%xmm4, %xmm2
.LVL370:
	addsd	%xmm2, %xmm6
.LVL371:
	movsd	-144(%rdx), %xmm2
	cmpl	%edi, %r14d
	mulsd	%xmm5, %xmm2
	addsd	%xmm8, %xmm6
.LVL372:
	movapd	%xmm6, %xmm12
	addsd	%xmm11, %xmm12
.LVL373:
	addsd	%xmm14, %xmm12
.LVL374:
	movapd	%xmm12, %xmm4
	addsd	%xmm0, %xmm4
.LVL375:
	addsd	%xmm2, %xmm4
	movapd	%xmm4, %xmm12
.LVL376:
	jne	.L398
.LVL377:
.L399:
	movslq	%edi, %rcx
	leal	-1(%r12), %r10d
	leal	1(%rdi), %r11d
	salq	$3, %rcx
	leaq	(%r8,%rcx), %rsi
	addq	%r15, %rcx
	subl	%edi, %r10d
	andl	$7, %r10d
	.loc 1 228 0 is_stmt 1
	cmpl	%r11d, %r12d
	.loc 1 229 0
	movq	(%rsi), %rdx
	movsd	(%rdx,%rax), %xmm4
	movl	$1, %edx
	mulsd	(%rcx), %xmm4
	addsd	%xmm12, %xmm4
	.loc 1 228 0
	jle	.L397
	testl	%r10d, %r10d
	je	.L396
	cmpl	$1, %r10d
	je	.L549
	cmpl	$2, %r10d
	je	.L550
	cmpl	$3, %r10d
	je	.L551
	cmpl	$4, %r10d
	je	.L552
	cmpl	$5, %r10d
	je	.L553
	cmpl	$6, %r10d
	je	.L554
	.loc 1 229 0
	movq	8(%rsi), %r10
	movl	$2, %edx
	movsd	(%r10,%rax), %xmm6
	mulsd	8(%rcx), %xmm6
	addsd	%xmm6, %xmm4
.L554:
	movq	(%rsi,%rdx,8), %r11
	movsd	(%r11,%rax), %xmm7
	mulsd	(%rcx,%rdx,8), %xmm7
	addq	$1, %rdx
	addsd	%xmm7, %xmm4
.L553:
	movq	(%rsi,%rdx,8), %r10
	movsd	(%r10,%rax), %xmm8
	mulsd	(%rcx,%rdx,8), %xmm8
	addq	$1, %rdx
	addsd	%xmm8, %xmm4
.L552:
	movq	(%rsi,%rdx,8), %r11
	movsd	(%r11,%rax), %xmm9
	mulsd	(%rcx,%rdx,8), %xmm9
	addq	$1, %rdx
	addsd	%xmm9, %xmm4
.L551:
	movq	(%rsi,%rdx,8), %r10
	movsd	(%r10,%rax), %xmm10
	mulsd	(%rcx,%rdx,8), %xmm10
	addq	$1, %rdx
	addsd	%xmm10, %xmm4
.L550:
	movq	(%rsi,%rdx,8), %r11
	movsd	(%r11,%rax), %xmm11
	mulsd	(%rcx,%rdx,8), %xmm11
	addq	$1, %rdx
	addsd	%xmm11, %xmm4
.L549:
	movq	(%rsi,%rdx,8), %r10
	movsd	(%r10,%rax), %xmm12
	mulsd	(%rcx,%rdx,8), %xmm12
	addq	$1, %rdx
	leal	(%rdi,%rdx), %r11d
	.loc 1 228 0
	cmpl	%r11d, %r12d
	.loc 1 229 0
	addsd	%xmm12, %xmm4
	.loc 1 228 0
	jle	.L397
.L396:
	.loc 1 229 0
	movq	(%rsi,%rdx,8), %r10
	movsd	(%r10,%rax), %xmm13
	leaq	1(%rdx), %r10
	movq	(%rsi,%r10,8), %r11
	mulsd	(%rcx,%rdx,8), %xmm13
	movsd	(%r11,%rax), %xmm14
	mulsd	(%rcx,%r10,8), %xmm14
	leaq	2(%rdx), %r10
	addsd	%xmm13, %xmm4
	movq	(%rsi,%r10,8), %r11
	movsd	(%rcx,%r10,8), %xmm1
	leaq	3(%rdx), %r10
	movsd	(%r11,%rax), %xmm15
	movq	(%rsi,%r10,8), %r11
	addsd	%xmm14, %xmm4
	movsd	(%rcx,%r10,8), %xmm5
	mulsd	%xmm15, %xmm1
	leaq	4(%rdx), %r10
	movsd	(%rcx,%r10,8), %xmm2
	addsd	%xmm1, %xmm4
	movapd	%xmm4, %xmm0
	movsd	(%r11,%rax), %xmm4
	movq	(%rsi,%r10,8), %r11
	leaq	5(%rdx), %r10
	movapd	%xmm0, %xmm6
	mulsd	%xmm4, %xmm5
	movsd	(%r11,%rax), %xmm7
	movq	(%rsi,%r10,8), %r11
	movsd	(%rcx,%r10,8), %xmm10
	leaq	6(%rdx), %r10
	mulsd	%xmm7, %xmm2
	addsd	%xmm5, %xmm6
	movsd	(%r11,%rax), %xmm9
	movq	(%rsi,%r10,8), %r11
	movsd	(%rcx,%r10,8), %xmm13
	leaq	7(%rdx), %r10
	mulsd	%xmm9, %xmm10
	addq	$8, %rdx
	addsd	%xmm2, %xmm6
	movsd	(%r11,%rax), %xmm12
	movq	(%rsi,%r10,8), %r11
	mulsd	%xmm12, %xmm13
	movapd	%xmm6, %xmm11
	movsd	(%r11,%rax), %xmm4
	addsd	%xmm10, %xmm11
	mulsd	(%rcx,%r10,8), %xmm4
	leal	(%rdi,%rdx), %r10d
	.loc 1 228 0
	cmpl	%r10d, %r12d
	.loc 1 229 0
	addsd	%xmm13, %xmm11
	addsd	%xmm11, %xmm4
	.loc 1 228 0
	jg	.L396
.L397:
	.loc 1 230 0 discriminator 2
	movsd	(%rsp), %xmm15
	addq	0(%r13), %rax
	ucomisd	%xmm3, %xmm3
	mulsd	0(%rbp,%r9,8), %xmm15
	movq	-8(%r13), %rdi
	leaq	1(%r9), %rcx
	movapd	%xmm3, %xmm0
	addsd	(%rdi,%rcx,8), %xmm15
	jp	.L641
.L400:
	mulsd	%xmm0, %xmm4
	.loc 1 225 0 discriminator 2
	cmpl	%ecx, %ebx
	movq	%rcx, %r9
	.loc 1 230 0 discriminator 2
	addsd	%xmm4, %xmm15
	movsd	%xmm15, (%rax)
.LVL378:
	.loc 1 225 0 discriminator 2
	jge	.L395
	subl	$1, 12(%rsp)
.LVL379:
	addq	$8, %r13
	movq	160(%rsp), %rbx
	movl	12(%rsp), %eax
	.loc 1 219 0
	cmpl	$-1, %eax
	jne	.L390
	movq	%r15, %r14
.LVL380:
.L372:
	.loc 1 235 0
	movq	64(%rsp), %rdx
	movq	%r14, %rdi
	xorl	%esi, %esi
	call	_Z12free_dvectorPdll
.LVL381:
.LBE19:
	.loc 1 238 0
	addq	$104, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
.LVL382:
	movl	$1, %eax
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
.LVL383:
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL384:
.L641:
	.cfi_restore_state
.LBB20:
	.loc 1 230 0 discriminator 2
	movsd	(%rsp), %xmm0
	movq	%r8, 80(%rsp)
	movsd	%xmm3, 88(%rsp)
	movq	%rcx, 32(%rsp)
	movq	%rax, 16(%rsp)
	movsd	%xmm4, 72(%rsp)
	movsd	%xmm15, 24(%rsp)
	call	sqrt
.LVL385:
	movsd	88(%rsp), %xmm3
	movq	80(%rsp), %r8
	movsd	72(%rsp), %xmm4
	movq	32(%rsp), %rcx
	movsd	24(%rsp), %xmm15
	movq	16(%rsp), %rax
	jmp	.L400
.LVL386:
.L378:
	movl	12(%rsp), %r9d
	cmpl	$8, %r9d
	jle	.L407
	movq	24(%rsp), %r10
	leaq	200(%rdi), %rbp
	leal	-9(%r9), %r13d
	movl	$8, %ecx
	prefetcht0	0(%rbp)
	shrl	$3, %r13d
	leaq	200(%r10), %r11
	.loc 1 216 0
	movsd	-200(%r11), %xmm3
	leal	8(,%r13,8), %r9d
	andl	$1, %r13d
.LVL387:
	leaq	264(%r10), %r10
	prefetcht0	(%r11)
	movsd	%xmm3, (%rdi)
.LVL388:
	cmpl	$8, %r9d
	movsd	-192(%r11), %xmm4
	movsd	%xmm4, 8(%rdi)
.LVL389:
	movsd	-184(%r11), %xmm5
	movsd	%xmm5, 16(%rdi)
.LVL390:
	movsd	-176(%r11), %xmm6
	movsd	%xmm6, 24(%rdi)
.LVL391:
	movsd	-168(%r11), %xmm7
	movsd	%xmm7, 32(%rdi)
.LVL392:
	movsd	-160(%r11), %xmm8
	movsd	%xmm8, 40(%rdi)
.LVL393:
	movsd	-152(%r11), %xmm9
	movsd	%xmm9, 48(%rdi)
.LVL394:
	movsd	-144(%r11), %xmm10
	leaq	264(%rdi), %r11
	movsd	%xmm10, 56(%rdi)
	je	.L386
	testl	%r13d, %r13d
	je	.L387
	movsd	-200(%r10), %xmm11
	prefetcht0	(%r10)
	movq	24(%rsp), %rax
	cmpl	$16, %r9d
	prefetcht0	(%r11)
	movl	$16, %ecx
	movsd	%xmm11, -200(%r11)
.LVL395:
	movsd	-192(%r10), %xmm12
	movsd	%xmm12, -192(%r11)
.LVL396:
	movsd	-184(%r10), %xmm13
	movsd	%xmm13, -184(%r11)
.LVL397:
	movsd	-176(%r10), %xmm14
	movsd	%xmm14, -176(%r11)
.LVL398:
	movsd	-168(%r10), %xmm15
	movsd	%xmm15, -168(%r11)
.LVL399:
	movsd	-160(%r10), %xmm1
	movsd	%xmm1, -160(%r11)
.LVL400:
	movsd	-152(%r10), %xmm0
	movsd	%xmm0, -152(%r11)
.LVL401:
	movsd	-144(%r10), %xmm2
	leaq	328(%rax), %r10
	movsd	%xmm2, -144(%r11)
	leaq	328(%rdi), %r11
	je	.L386
.L387:
	movsd	-200(%r10), %xmm3
	prefetcht0	(%r10)
	leaq	64(%r10), %r8
	leaq	64(%r11), %rsi
	prefetcht0	(%r11)
	addl	$16, %ecx
	movsd	%xmm3, -200(%r11)
.LVL402:
	prefetcht0	(%r8)
	subq	$-128, %r10
	prefetcht0	(%rsi)
	subq	$-128, %r11
	movsd	-320(%r10), %xmm4
	movsd	%xmm4, -320(%r11)
.LVL403:
	movsd	-312(%r10), %xmm5
	movsd	%xmm5, -312(%r11)
.LVL404:
	movsd	-304(%r10), %xmm6
	movsd	%xmm6, -304(%r11)
.LVL405:
	movsd	-296(%r10), %xmm7
	movsd	%xmm7, -296(%r11)
.LVL406:
	movsd	-288(%r10), %xmm8
	movsd	%xmm8, -288(%r11)
.LVL407:
	movsd	-280(%r10), %xmm9
	movsd	%xmm9, -280(%r11)
.LVL408:
	movsd	-272(%r10), %xmm10
	movsd	%xmm10, -272(%r11)
.LVL409:
	movsd	-264(%r10), %xmm11
	movsd	%xmm11, -264(%r11)
.LVL410:
	movsd	-256(%r10), %xmm12
	movsd	%xmm12, -256(%r11)
.LVL411:
	movsd	-248(%r10), %xmm13
	movsd	%xmm13, -248(%r11)
.LVL412:
	movsd	-240(%r10), %xmm14
	movsd	%xmm14, -240(%r11)
.LVL413:
	movsd	-232(%r10), %xmm15
	movsd	%xmm15, -232(%r11)
.LVL414:
	movsd	-224(%r10), %xmm1
	movsd	%xmm1, -224(%r11)
.LVL415:
	movsd	-216(%r10), %xmm0
	movsd	%xmm0, -216(%r11)
.LVL416:
	movsd	-208(%r10), %xmm2
	movsd	%xmm2, -208(%r11)
	cmpl	%ecx, %r9d
	jne	.L387
.LVL417:
.L386:
	movl	12(%rsp), %r9d
	movslq	%ecx, %rbp
	leal	1(%rcx), %r11d
	movq	24(%rsp), %r13
	salq	$3, %rbp
	movl	$1, %eax
	addq	%rbp, %rdi
	leal	-1(%r9), %r10d
	addq	%rbp, %r13
	subl	%ecx, %r10d
	movsd	0(%r13), %xmm3
	andl	$7, %r10d
	.loc 1 215 0
	cmpl	%r11d, %r9d
	.loc 1 216 0
	movsd	%xmm3, (%rdi)
	.loc 1 215 0
	jle	.L389
	testl	%r10d, %r10d
	je	.L388
	cmpl	$1, %r10d
	je	.L557
	cmpl	$2, %r10d
	je	.L558
	cmpl	$3, %r10d
	je	.L559
	cmpl	$4, %r10d
	je	.L560
	cmpl	$5, %r10d
	je	.L561
	cmpl	$6, %r10d
	je	.L562
	.loc 1 216 0
	movsd	8(%r13), %xmm4
	movl	$2, %eax
	movsd	%xmm4, 8(%rdi)
.L562:
	movsd	0(%r13,%rax,8), %xmm5
	movsd	%xmm5, (%rdi,%rax,8)
	addq	$1, %rax
.L561:
	movsd	0(%r13,%rax,8), %xmm6
	movsd	%xmm6, (%rdi,%rax,8)
	addq	$1, %rax
.L560:
	movsd	0(%r13,%rax,8), %xmm7
	movsd	%xmm7, (%rdi,%rax,8)
	addq	$1, %rax
.L559:
	movsd	0(%r13,%rax,8), %xmm8
	movsd	%xmm8, (%rdi,%rax,8)
	addq	$1, %rax
.L558:
	movsd	0(%r13,%rax,8), %xmm9
	movsd	%xmm9, (%rdi,%rax,8)
	addq	$1, %rax
.L557:
	movsd	0(%r13,%rax,8), %xmm10
	movsd	%xmm10, (%rdi,%rax,8)
	addq	$1, %rax
	leal	(%rcx,%rax), %r8d
	.loc 1 215 0
	cmpl	%r8d, 12(%rsp)
	jle	.L389
.L388:
	.loc 1 216 0
	movsd	0(%r13,%rax,8), %xmm11
	leaq	1(%rax), %rsi
	leaq	2(%rax), %rbp
	leaq	3(%rax), %r9
	leaq	4(%rax), %rdx
	leaq	5(%rax), %r10
	movsd	%xmm11, (%rdi,%rax,8)
	leaq	6(%rax), %r11
	leaq	7(%rax), %r8
	addq	$8, %rax
	movsd	0(%r13,%rsi,8), %xmm12
	movsd	%xmm12, (%rdi,%rsi,8)
	leal	(%rcx,%rax), %esi
	.loc 1 215 0
	cmpl	%esi, 12(%rsp)
	.loc 1 216 0
	movsd	0(%r13,%rbp,8), %xmm13
	movsd	%xmm13, (%rdi,%rbp,8)
	movsd	0(%r13,%r9,8), %xmm14
	movsd	%xmm14, (%rdi,%r9,8)
	movsd	0(%r13,%rdx,8), %xmm15
	movsd	%xmm15, (%rdi,%rdx,8)
	movsd	0(%r13,%r10,8), %xmm1
	movsd	%xmm1, (%rdi,%r10,8)
	movsd	0(%r13,%r11,8), %xmm0
	movsd	%xmm0, (%rdi,%r11,8)
	movsd	0(%r13,%r8,8), %xmm2
	movsd	%xmm2, (%rdi,%r8,8)
	.loc 1 215 0
	jg	.L388
	jmp	.L389
.LVL418:
	.p2align 4,,10
	.p2align 3
.L640:
	movl	12(%rsp), %eax
.LVL419:
	.loc 1 210 0
	xorl	%r11d, %r11d
	subl	$1, %eax
	movl	%eax, 48(%rsp)
	jmp	.L377
.LVL420:
.L407:
	xorl	%ecx, %ecx
	jmp	.L386
.LBE20:
	.cfi_endproc
.LFE78:
	.size	_Z19HJM_SimPath_ForwardPPdiidS_S_S0_Pl, .-_Z19HJM_SimPath_ForwardPPdiidS_S_S0_Pl
	.section	.text.unlikely
.LCOLDE10:
	.text
.LHOTE10:
	.section	.text.unlikely
.LCOLDB11:
	.text
.LHOTB11:
	.p2align 4,,15
	.globl	_Z17HJM_SimPath_YieldPPdiidS_S0_Pl
	.type	_Z17HJM_SimPath_YieldPPdiidS_S0_Pl, @function
_Z17HJM_SimPath_YieldPPdiidS_S0_Pl:
.LFB74:
	.loc 1 37 0
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%esi, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%edx, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
.LBB25:
	.loc 1 47 0
	leal	-2(%r14), %ebp
.LBE25:
	.loc 1 37 0
	movq	%rcx, %rbx
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
.LBB36:
	.loc 1 47 0
	movslq	%ebp, %rbp
.LBE36:
	.loc 1 37 0
	movq	%r8, 24(%rsp)
.LBB37:
	.loc 1 46 0
	leal	-1(%rsi), %r8d
.LBE37:
	.loc 1 37 0
	movq	%rdi, 40(%rsp)
.LBB38:
	.loc 1 46 0
	xorl	%edi, %edi
.LBE38:
	.loc 1 37 0
	movsd	%xmm0, 16(%rsp)
	movq	%r9, 48(%rsp)
.LBB39:
	.loc 1 46 0
	movslq	%r8d, %r13
	movl	%r8d, 56(%rsp)
	movq	%r13, %rsi
	call	_Z7dvectorll
	movq	%rax, %r15
	.loc 1 47 0
	leal	-1(%r12), %eax
	movq	%rbp, %rcx
	xorl	%edx, %edx
	xorl	%edi, %edi
	cltq
	movq	%rax, %rsi
	movq	%rax, 32(%rsp)
	call	_Z7dmatrixllll
	.loc 1 48 0
	xorl	%edi, %edi
	movq	%rbp, %rsi
	.loc 1 47 0
	movq	%rax, 8(%rsp)
	.loc 1 48 0
	call	_Z7dvectorll
.LBB26:
.LBB27:
	.loc 1 98 0
	movsd	(%rbx), %xmm0
	.loc 1 99 0
	cmpl	$1, %r14d
.LBE27:
.LBE26:
	.loc 1 48 0
	movq	%rax, (%rsp)
.LBB32:
.LBB28:
	.loc 1 99 0
	movl	56(%rsp), %ecx
	.loc 1 98 0
	movsd	%xmm0, (%r15)
	.loc 1 99 0
	jle	.L652
	leaq	8(%r15), %rdx
	leaq	40(%rbx), %rsi
	leaq	40(%r15), %r9
	cmpq	%rsi, %rdx
	setae	%dil
	cmpq	%r9, %rbx
	setae	%r10b
	orb	%r10b, %dil
	je	.L646
	cmpl	$7, %ecx
	jbe	.L646
	leaq	8(%rbx), %r8
	movl	$1, 56(%rsp)
	salq	$60, %r8
	shrq	$63, %r8
	cmpl	%r8d, %ecx
	cmovbe	%ecx, %r8d
	testl	%r8d, %r8d
	je	.L647
	.loc 1 100 0
	movsd	8(%rbx), %xmm1
	movl	$2, 56(%rsp)
	addsd	%xmm1, %xmm1
	subsd	(%rbx), %xmm1
	movsd	%xmm1, 8(%r15)
.L647:
	movl	%ecx, %r11d
	movd	56(%rsp), %xmm7
	movl	%r8d, %edx
	subl	%r8d, %r11d
	leaq	8(,%rdx,8), %r10
	leal	-4(%r11), %ecx
	pshufd	$0, %xmm7, %xmm0
	movdqa	.LC1(%rip), %xmm4
	leaq	(%rbx,%r10), %rdx
	shrl	$2, %ecx
	leal	1(%rcx), %esi
	subl	$2, %ecx
	paddd	.LC0(%rip), %xmm0
	movdqa	%xmm4, %xmm5
	leal	0(,%rsi,4), %eax
	movl	%eax, 60(%rsp)
	leaq	-8(%rbx,%r10), %rax
	addq	%r15, %r10
	cmpl	$-4, %ecx
	ja	.L662
	shrl	%ecx
	movdqa	.LC2(%rip), %xmm3
	leal	2(%rcx,%rcx), %ecx
	.loc 1 99 0
	xorl	%edi, %edi
	movdqa	.LC3(%rip), %xmm11
	movdqa	.LC4(%rip), %xmm6
.L649:
	.loc 1 100 0
	movdqa	%xmm0, %xmm2
	pshufd	$238, %xmm0, %xmm9
	cvtdq2pd	%xmm0, %xmm1
	movupd	16(%rax), %xmm14
	prefetcht0	272(%rdx)
	prefetcht0	272(%rax)
	paddd	%xmm3, %xmm2
	pshufd	$238, %xmm2, %xmm8
	cvtdq2pd	%xmm2, %xmm15
	movupd	(%rax), %xmm7
	cvtdq2pd	%xmm9, %xmm10
	mulpd	%xmm10, %xmm14
	movdqa	%xmm0, %xmm12
	addl	$2, %edi
	mulpd	(%rdx), %xmm15
	cvtdq2pd	%xmm8, %xmm13
	addq	$64, %rdx
	movdqa	%xmm0, %xmm9
	paddd	%xmm6, %xmm0
	paddd	%xmm5, %xmm12
	mulpd	-48(%rdx), %xmm13
	addq	$64, %rax
	addq	$64, %r10
	paddd	%xmm11, %xmm9
	mulpd	%xmm1, %xmm7
	pshufd	$238, %xmm0, %xmm2
	cvtdq2pd	%xmm0, %xmm0
	subpd	%xmm14, %xmm13
	cvtdq2pd	%xmm2, %xmm8
	subpd	%xmm7, %xmm15
	movups	%xmm13, -48(%r10)
	pshufd	$238, %xmm12, %xmm13
	cvtdq2pd	%xmm12, %xmm12
	movups	%xmm15, -64(%r10)
	cvtdq2pd	%xmm13, %xmm10
	mulpd	-16(%rdx), %xmm8
	movupd	-16(%rax), %xmm14
	mulpd	-32(%rdx), %xmm0
	movupd	-32(%rax), %xmm15
	mulpd	%xmm10, %xmm14
	mulpd	%xmm15, %xmm12
	subpd	%xmm14, %xmm8
	subpd	%xmm12, %xmm0
	movups	%xmm8, -16(%r10)
	movups	%xmm0, -32(%r10)
	cmpl	%ecx, %edi
	movdqa	%xmm9, %xmm0
	jne	.L649
.L648:
	movdqa	%xmm9, %xmm11
	pshufd	$238, %xmm9, %xmm1
	cvtdq2pd	%xmm9, %xmm13
	movupd	16(%rax), %xmm2
	movl	%ecx, %edi
	paddd	%xmm4, %xmm9
	paddd	%xmm3, %xmm11
	pshufd	$238, %xmm11, %xmm5
	cvtdq2pd	%xmm11, %xmm8
	movupd	(%rax), %xmm10
	cvtdq2pd	%xmm1, %xmm7
	mulpd	%xmm7, %xmm2
	notl	%edi
	leal	1(%rcx), %r9d
	movl	$32, %r8d
	mulpd	(%rdx), %xmm8
	cvtdq2pd	%xmm5, %xmm6
	addl	%esi, %edi
	andl	$1, %edi
	cmpl	%r9d, %esi
	mulpd	16(%rdx), %xmm6
	mulpd	%xmm13, %xmm10
	subpd	%xmm2, %xmm6
	subpd	%xmm10, %xmm8
	movups	%xmm6, 16(%r10)
	movups	%xmm8, (%r10)
	ja	.L697
.L715:
	movl	60(%rsp), %r10d
	movl	56(%rsp), %esi
	addl	%r10d, %esi
	cmpl	%r10d, %r11d
	je	.L652
	pxor	%xmm2, %xmm2
	leal	1(%rsi), %edx
	movslq	%esi, %rax
	pxor	%xmm4, %xmm4
	movsd	(%rbx,%rax,8), %xmm3
	.loc 1 99 0
	cmpl	%edx, %r14d
	.loc 1 100 0
	cvtsi2sd	%esi, %xmm2
	cvtsi2sd	%edx, %xmm4
	mulsd	-8(%rbx,%rax,8), %xmm2
	mulsd	%xmm4, %xmm3
	subsd	%xmm2, %xmm3
	movsd	%xmm3, (%r15,%rax,8)
	.loc 1 99 0
	jle	.L652
	.loc 1 100 0
	pxor	%xmm15, %xmm15
	leal	2(%rsi), %eax
	movslq	%edx, %rcx
	movsd	(%rbx,%rcx,8), %xmm0
	mulsd	-8(%rbx,%rcx,8), %xmm4
	.loc 1 99 0
	cmpl	%eax, %r14d
	.loc 1 100 0
	cvtsi2sd	%eax, %xmm15
	mulsd	%xmm15, %xmm0
	subsd	%xmm4, %xmm0
	movsd	%xmm0, (%r15,%rcx,8)
	.loc 1 99 0
	jle	.L652
	.loc 1 100 0
	pxor	%xmm11, %xmm11
	leal	3(%rsi), %edi
	cltq
	mulsd	-8(%rbx,%rax,8), %xmm15
	cvtsi2sd	%edi, %xmm11
	mulsd	(%rbx,%rax,8), %xmm11
	subsd	%xmm15, %xmm11
	movsd	%xmm11, (%r15,%rax,8)
.L652:
.LBE28:
.LBE32:
	.loc 1 61 0
	movq	24(%rsp), %r8
	movq	8(%rsp), %rsi
	movl	%r12d, %ecx
	movq	(%rsp), %rdi
	movl	%r14d, %edx
	movsd	16(%rsp), %xmm0
	call	_Z10HJM_DriftsPdPS_iidS0_
	.loc 1 62 0
	cmpl	$1, %eax
	je	.L723
	.loc 1 64 0
	movq	%r13, %rdx
	xorl	%esi, %esi
	movq	%r15, %rdi
	movl	%eax, 56(%rsp)
	call	_Z12free_dvectorPdll
	.loc 1 65 0
	movq	32(%rsp), %rdx
	movq	8(%rsp), %rdi
	movq	%rbp, %r8
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	call	_Z12free_dmatrixPPdllll
	.loc 1 66 0
	movq	(%rsp), %rdi
	movq	%r13, %rdx
	xorl	%esi, %esi
	call	_Z12free_dvectorPdll
	.loc 1 67 0
	movl	56(%rsp), %eax
.L659:
.LBE39:
	.loc 1 85 0
	addq	$72, %rsp
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
.L697:
	.cfi_restore_state
	testl	%edi, %edi
	je	.L653
.LBB40:
.LBB33:
.LBB29:
	.loc 1 100 0
	movdqa	%xmm9, %xmm14
	pshufd	$238, %xmm9, %xmm0
	cvtdq2pd	%xmm9, %xmm1
	movupd	48(%rax), %xmm5
	leal	2(%rcx), %r9d
	paddd	%xmm4, %xmm9
	paddd	%xmm3, %xmm14
	pshufd	$238, %xmm14, %xmm12
	cvtdq2pd	%xmm14, %xmm6
	movupd	32(%rax), %xmm7
	cvtdq2pd	%xmm0, %xmm11
	mulpd	%xmm11, %xmm5
	cmpl	%r9d, %esi
	movl	$64, %r8d
	mulpd	32(%rdx), %xmm6
	cvtdq2pd	%xmm12, %xmm15
	mulpd	48(%rdx), %xmm15
	mulpd	%xmm1, %xmm7
	subpd	%xmm5, %xmm15
	subpd	%xmm7, %xmm6
	movups	%xmm15, 48(%r10)
	movups	%xmm6, 32(%r10)
	jbe	.L715
.L653:
	movdqa	%xmm9, %xmm8
	pshufd	$238, %xmm9, %xmm14
	movdqa	%xmm9, %xmm2
	cvtdq2pd	%xmm9, %xmm9
	addl	$2, %r9d
	paddd	%xmm3, %xmm8
	pshufd	$238, %xmm8, %xmm13
	cvtdq2pd	%xmm8, %xmm0
	movupd	16(%rax,%r8), %xmm15
	cvtdq2pd	%xmm14, %xmm12
	paddd	%xmm4, %xmm2
	mulpd	(%rdx,%r8), %xmm0
	movdqa	%xmm2, %xmm7
	cvtdq2pd	%xmm2, %xmm14
	movupd	(%rax,%r8), %xmm11
	cvtdq2pd	%xmm13, %xmm10
	mulpd	16(%rdx,%r8), %xmm10
	paddd	%xmm3, %xmm7
	mulpd	%xmm12, %xmm15
	mulpd	%xmm11, %xmm9
	pshufd	$238, %xmm7, %xmm5
	subpd	%xmm15, %xmm10
	pshufd	$238, %xmm2, %xmm6
	paddd	%xmm4, %xmm2
	subpd	%xmm9, %xmm0
	cvtdq2pd	%xmm5, %xmm1
	cvtdq2pd	%xmm6, %xmm8
	movdqa	%xmm2, %xmm9
	movups	%xmm10, 16(%r10,%r8)
	cvtdq2pd	%xmm7, %xmm10
	movups	%xmm0, (%r10,%r8)
	mulpd	48(%rdx,%r8), %xmm1
	movupd	48(%rax,%r8), %xmm13
	mulpd	32(%rdx,%r8), %xmm10
	movupd	32(%rax,%r8), %xmm12
	mulpd	%xmm8, %xmm13
	mulpd	%xmm14, %xmm12
	subpd	%xmm13, %xmm1
	subpd	%xmm12, %xmm10
	movups	%xmm1, 48(%r10,%r8)
	movups	%xmm10, 32(%r10,%r8)
	addq	$64, %r8
	cmpl	%r9d, %esi
	ja	.L653
	jmp	.L715
	.p2align 4,,10
	.p2align 3
.L646:
	cmpl	$9, %r14d
	leal	-7(%r14), %r8d
	jle	.L663
	pxor	%xmm15, %xmm15
	.loc 1 99 0
	movl	$1, %edx
	movq	%rbx, %r9
	movq	%r15, %r11
	movl	$2, %r10d
	cvtsi2sd	%edx, %xmm15
	.p2align 4,,10
	.p2align 3
.L656:
	.loc 1 100 0
	pxor	%xmm7, %xmm7
	leal	2(%rdx), %esi
	prefetcht0	112(%r9)
	mulsd	(%r9), %xmm15
	leal	3(%rdx), %ecx
	leal	4(%rdx), %eax
	movsd	8(%r9), %xmm5
	leal	5(%rdx), %edi
	prefetcht0	112(%r11)
	cvtsi2sd	%r10d, %xmm7
	addl	$8, %r10d
	pxor	%xmm6, %xmm6
	addq	$64, %r9
	pxor	%xmm10, %xmm10
	addq	$64, %r11
	pxor	%xmm4, %xmm4
	cvtsi2sd	%esi, %xmm6
	pxor	%xmm11, %xmm11
	cvtsi2sd	%ecx, %xmm10
	leal	6(%rdx), %esi
	cvtsi2sd	%eax, %xmm4
	leal	7(%rdx), %ecx
	cvtsi2sd	%esi, %xmm11
	addl	$8, %edx
	pxor	%xmm1, %xmm1
	mulsd	%xmm7, %xmm5
	cvtsi2sd	%ecx, %xmm1
	subsd	%xmm15, %xmm5
	pxor	%xmm15, %xmm15
	cvtsi2sd	%edi, %xmm15
	movsd	%xmm5, -56(%r11)
	mulsd	-56(%r9), %xmm7
	movsd	-48(%r9), %xmm8
	mulsd	%xmm6, %xmm8
	subsd	%xmm7, %xmm8
	movsd	%xmm8, -48(%r11)
	mulsd	-48(%r9), %xmm6
	movsd	-40(%r9), %xmm14
	mulsd	%xmm10, %xmm14
	subsd	%xmm6, %xmm14
	movsd	%xmm14, -40(%r11)
	movsd	-32(%r9), %xmm3
	mulsd	-40(%r9), %xmm10
	mulsd	%xmm4, %xmm3
	subsd	%xmm10, %xmm3
	movsd	%xmm3, -32(%r11)
	movsd	-24(%r9), %xmm0
	mulsd	-32(%r9), %xmm4
	mulsd	%xmm15, %xmm0
	subsd	%xmm4, %xmm0
	movsd	%xmm0, -24(%r11)
	mulsd	-24(%r9), %xmm15
	movsd	-16(%r9), %xmm7
	mulsd	%xmm11, %xmm7
	subsd	%xmm15, %xmm7
	pxor	%xmm15, %xmm15
	cvtsi2sd	%edx, %xmm15
	movsd	%xmm7, -16(%r11)
	movsd	-8(%r9), %xmm6
	mulsd	-16(%r9), %xmm11
	mulsd	%xmm1, %xmm6
	subsd	%xmm11, %xmm6
	movsd	%xmm6, -8(%r11)
	movsd	(%r9), %xmm13
	mulsd	-8(%r9), %xmm1
	mulsd	%xmm15, %xmm13
	subsd	%xmm1, %xmm13
	movsd	%xmm13, (%r11)
	cmpl	%r10d, %r8d
	jg	.L656
.L655:
	movl	%edx, %r9d
	movslq	%edx, %r8
	.loc 1 99 0
	xorl	%r11d, %r11d
	notl	%r9d
	salq	$3, %r8
	addl	%r14d, %r9d
	addq	%r8, %rbx
	addq	%r15, %r8
	andl	$7, %r9d
	je	.L657
	.loc 1 100 0
	pxor	%xmm14, %xmm14
	addl	$1, %edx
	movl	$8, %r11d
	movsd	(%rbx), %xmm12
	.loc 1 99 0
	cmpl	%edx, %r14d
	.loc 1 100 0
	mulsd	-8(%rbx), %xmm15
	cvtsi2sd	%edx, %xmm14
	mulsd	%xmm14, %xmm12
	subsd	%xmm15, %xmm12
	movsd	%xmm12, (%r8)
	.loc 1 99 0
	jle	.L652
	cmpl	$1, %r9d
	movapd	%xmm14, %xmm15
	je	.L657
	cmpl	$2, %r9d
	je	.L698
	cmpl	$3, %r9d
	je	.L699
	cmpl	$4, %r9d
	je	.L700
	cmpl	$5, %r9d
	je	.L701
	cmpl	$6, %r9d
	je	.L702
	.loc 1 100 0
	pxor	%xmm3, %xmm3
	addl	$1, %edx
	mulsd	-8(%rbx,%r11), %xmm15
	movsd	(%rbx,%r11), %xmm2
	cvtsi2sd	%edx, %xmm3
	mulsd	%xmm3, %xmm2
	subsd	%xmm15, %xmm2
	movapd	%xmm3, %xmm15
	movsd	%xmm2, (%r8,%r11)
	movb	$16, %r11b
.L702:
	pxor	%xmm9, %xmm9
	addl	$1, %edx
	mulsd	-8(%rbx,%r11), %xmm15
	movsd	(%rbx,%r11), %xmm11
	cvtsi2sd	%edx, %xmm9
	mulsd	%xmm9, %xmm11
	subsd	%xmm15, %xmm11
	movapd	%xmm9, %xmm15
	movsd	%xmm11, (%r8,%r11)
	addq	$8, %r11
.L701:
	pxor	%xmm7, %xmm7
	addl	$1, %edx
	mulsd	-8(%rbx,%r11), %xmm15
	movsd	(%rbx,%r11), %xmm5
	cvtsi2sd	%edx, %xmm7
	mulsd	%xmm7, %xmm5
	subsd	%xmm15, %xmm5
	movapd	%xmm7, %xmm15
	movsd	%xmm5, (%r8,%r11)
	addq	$8, %r11
.L700:
	pxor	%xmm6, %xmm6
	addl	$1, %edx
	mulsd	-8(%rbx,%r11), %xmm15
	movsd	(%rbx,%r11), %xmm8
	cvtsi2sd	%edx, %xmm6
	mulsd	%xmm6, %xmm8
	subsd	%xmm15, %xmm8
	movapd	%xmm6, %xmm15
	movsd	%xmm8, (%r8,%r11)
	addq	$8, %r11
.L699:
	pxor	%xmm10, %xmm10
	addl	$1, %edx
	mulsd	-8(%rbx,%r11), %xmm15
	movsd	(%rbx,%r11), %xmm14
	cvtsi2sd	%edx, %xmm10
	mulsd	%xmm10, %xmm14
	subsd	%xmm15, %xmm14
	movapd	%xmm10, %xmm15
	movsd	%xmm14, (%r8,%r11)
	addq	$8, %r11
.L698:
	pxor	%xmm4, %xmm4
	addl	$1, %edx
	mulsd	-8(%rbx,%r11), %xmm15
	movsd	(%rbx,%r11), %xmm3
	cvtsi2sd	%edx, %xmm4
	mulsd	%xmm4, %xmm3
	subsd	%xmm15, %xmm3
	movapd	%xmm4, %xmm15
	movsd	%xmm3, (%r8,%r11)
	addq	$8, %r11
	jmp	.L657
	.p2align 4,,10
	.p2align 3
.L724:
	pxor	%xmm7, %xmm7
	leal	2(%rdx), %eax
	mulsd	(%rbx,%r11), %xmm9
	leal	3(%rdx), %edi
	leal	4(%rdx), %esi
	movsd	8(%rbx,%r11), %xmm5
	leal	5(%rdx), %ecx
	cvtsi2sd	%eax, %xmm7
	leal	6(%rdx), %r9d
	pxor	%xmm6, %xmm6
	leal	7(%rdx), %r10d
	pxor	%xmm10, %xmm10
	addl	$8, %edx
	pxor	%xmm4, %xmm4
	cvtsi2sd	%edi, %xmm6
	pxor	%xmm15, %xmm15
	cvtsi2sd	%esi, %xmm10
	cvtsi2sd	%ecx, %xmm4
	cvtsi2sd	%r9d, %xmm15
	mulsd	%xmm7, %xmm5
	subsd	%xmm9, %xmm5
	movsd	%xmm5, 8(%r8,%r11)
	mulsd	8(%rbx,%r11), %xmm7
	movsd	16(%rbx,%r11), %xmm8
	mulsd	%xmm6, %xmm8
	subsd	%xmm7, %xmm8
	pxor	%xmm7, %xmm7
	cvtsi2sd	%r10d, %xmm7
	movsd	%xmm8, 16(%r8,%r11)
	movsd	24(%rbx,%r11), %xmm14
	mulsd	16(%rbx,%r11), %xmm6
	mulsd	%xmm10, %xmm14
	subsd	%xmm6, %xmm14
	movsd	%xmm14, 24(%r8,%r11)
	movsd	32(%rbx,%r11), %xmm3
	mulsd	24(%rbx,%r11), %xmm10
	mulsd	%xmm4, %xmm3
	subsd	%xmm10, %xmm3
	movsd	%xmm3, 32(%r8,%r11)
	movsd	40(%rbx,%r11), %xmm9
	mulsd	32(%rbx,%r11), %xmm4
	mulsd	%xmm15, %xmm9
	subsd	%xmm4, %xmm9
	movsd	%xmm9, 40(%r8,%r11)
	mulsd	40(%rbx,%r11), %xmm15
	movsd	48(%rbx,%r11), %xmm0
	mulsd	%xmm7, %xmm0
	subsd	%xmm15, %xmm0
	pxor	%xmm15, %xmm15
	cvtsi2sd	%edx, %xmm15
	movsd	%xmm0, 48(%r8,%r11)
	movsd	56(%rbx,%r11), %xmm1
	mulsd	48(%rbx,%r11), %xmm7
	mulsd	%xmm15, %xmm1
	subsd	%xmm7, %xmm1
	movsd	%xmm1, 56(%r8,%r11)
	addq	$64, %r11
.L657:
	pxor	%xmm9, %xmm9
	leal	1(%rdx), %r10d
	movsd	(%rbx,%r11), %xmm11
	mulsd	-8(%rbx,%r11), %xmm15
	.loc 1 99 0
	cmpl	%r10d, %r14d
	.loc 1 100 0
	cvtsi2sd	%r10d, %xmm9
	mulsd	%xmm9, %xmm11
	subsd	%xmm15, %xmm11
	movsd	%xmm11, (%r8,%r11)
	.loc 1 99 0
	jg	.L724
	jmp	.L652
	.p2align 4,,10
	.p2align 3
.L723:
.LBE29:
.LBE33:
	.loc 1 71 0
	subq	$8, %rsp
	.cfi_def_cfa_offset 136
	movl	%r12d, %edx
	movl	%r14d, %esi
	pushq	56(%rsp)
	.cfi_def_cfa_offset 144
	movq	56(%rsp), %rdi
	movq	%r15, %rcx
	movq	40(%rsp), %r9
	movq	16(%rsp), %r8
	movsd	32(%rsp), %xmm0
	call	_Z19HJM_SimPath_ForwardPPdiidS_S_S0_Pl
	movl	%eax, %ebx
	.loc 1 74 0
	xorl	%esi, %esi
	movq	%r15, %rdi
	.loc 1 72 0
	cmpl	$1, %ebx
	popq	%rax
	.cfi_def_cfa_offset 136
	popq	%rdx
	.cfi_def_cfa_offset 128
	.loc 1 74 0
	movq	%r13, %rdx
	.loc 1 72 0
	je	.L660
	.loc 1 74 0
	call	_Z12free_dvectorPdll
	.loc 1 75 0
	movq	32(%rsp), %rdx
	movq	8(%rsp), %rdi
	movq	%rbp, %r8
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	call	_Z12free_dmatrixPPdllll
	.loc 1 76 0
	movq	(%rsp), %rdi
	movq	%r13, %rdx
	xorl	%esi, %esi
	call	_Z12free_dvectorPdll
	.loc 1 77 0
	movl	%ebx, %eax
	jmp	.L659
	.p2align 4,,10
	.p2align 3
.L662:
.LBB34:
.LBB30:
	.loc 1 99 0
	movdqa	%xmm0, %xmm9
	xorl	%ecx, %ecx
	movdqa	.LC2(%rip), %xmm3
	jmp	.L648
	.p2align 4,,10
	.p2align 3
.L660:
.LBE30:
.LBE34:
	.loc 1 80 0
	call	_Z12free_dvectorPdll
	.loc 1 81 0
	movq	32(%rsp), %rdx
	movq	8(%rsp), %rdi
	movq	%rbp, %r8
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	call	_Z12free_dmatrixPPdllll
	.loc 1 82 0
	movq	(%rsp), %rdi
	movq	%r13, %rdx
	xorl	%esi, %esi
	call	_Z12free_dvectorPdll
	.loc 1 84 0
	movl	$1, %eax
	jmp	.L659
	.p2align 4,,10
	.p2align 3
.L663:
	pxor	%xmm15, %xmm15
.LBB35:
.LBB31:
	.loc 1 99 0
	movl	$1, %edx
	cvtsi2sd	%edx, %xmm15
	jmp	.L655
.LBE31:
.LBE35:
.LBE40:
	.cfi_endproc
.LFE74:
	.size	_Z17HJM_SimPath_YieldPPdiidS_S0_Pl, .-_Z17HJM_SimPath_YieldPPdiidS_S0_Pl
	.section	.text.unlikely
.LCOLDE11:
	.text
.LHOTE11:
	.section	.text.unlikely
.LCOLDB12:
	.text
.LHOTB12:
	.p2align 4,,15
	.globl	_Z16HJM_CorrelationsPPdiiS0_
	.type	_Z16HJM_CorrelationsPPdiiS0_, @function
_Z16HJM_CorrelationsPPdiiS0_:
.LFB79:
	.loc 1 247 0
	.cfi_startproc
.LVL421:
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
.LBB41:
	.loc 1 256 0
	movl	%esi, %eax
.LBE41:
	.loc 1 247 0
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
.LBB42:
	.loc 1 256 0
	subl	$2, %eax
.LBE42:
	.loc 1 247 0
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
.LBB43:
	.loc 1 256 0
	movl	%eax, %r15d
.LBE43:
	.loc 1 247 0
	movl	%edx, %ebx
	movl	%esi, %r14d
	movq	%rdi, %r13
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
.LBB44:
	.loc 1 256 0
	xorl	%edi, %edi
.LVL422:
	movl	%eax, 48(%rsp)
	cltq
.LBE44:
	.loc 1 247 0
	movl	%esi, 24(%rsp)
.LBB45:
	.loc 1 256 0
	movq	%rax, %rsi
.LVL423:
	movq	%rax, %rbp
.LBE45:
	.loc 1 247 0
	movq	%rcx, 8(%rsp)
.LBB46:
	.loc 1 256 0
	movq	%rax, 32(%rsp)
	call	_Z7dvectorll
.LVL424:
	movq	%rax, %r12
.LVL425:
	.loc 1 257 0
	leal	-1(%rbx), %eax
.LVL426:
	xorl	%edx, %edx
	movq	%rbp, %rcx
	xorl	%edi, %edi
	cltq
	movq	%rax, %rsi
	movq	%rax, 40(%rsp)
	call	_Z7dmatrixllll
.LVL427:
	.loc 1 260 0
	movl	%r14d, %edx
	.loc 1 257 0
	movq	%rax, %rbp
.LVL428:
	.loc 1 260 0
	subl	$1, %edx
	testl	%edx, %edx
	movl	%edx, 20(%rsp)
	jle	.L726
	leal	-9(%rbx), %esi
	movl	%r15d, %ecx
	movq	8(%rsp), %r8
	pxor	%xmm5, %xmm5
	leaq	8(,%rcx,8), %r10
	movl	%esi, 52(%rsp)
	shrl	$3, %esi
	movq	%r12, %r14
.LVL429:
	leal	8(,%rsi,8), %edi
	xorl	%r15d, %r15d
.LVL430:
	.p2align 4,,10
	.p2align 3
.L733:
	.loc 1 263 0
	testl	%ebx, %ebx
	.loc 1 262 0
	movq	$0, (%r14)
.LVL431:
	.loc 1 263 0
	jle	.L750
	cmpl	$8, %ebx
	jle	.L751
	leaq	152(%r8), %r9
	movapd	%xmm5, %xmm0
	xorl	%edx, %edx
.LVL432:
	.p2align 4,,10
	.p2align 3
.L729:
	.loc 1 264 0 discriminator 3
	movq	-152(%r9), %r11
	movq	-144(%r9), %rax
	prefetcht0	(%r9)
	movq	-136(%r9), %rcx
	movq	-128(%r9), %rsi
	addl	$8, %edx
	addq	$64, %r9
	movsd	(%r11,%r15), %xmm2
	movq	-184(%r9), %r11
	mulsd	%xmm2, %xmm2
	addsd	%xmm0, %xmm2
	movsd	%xmm2, (%r14)
	movapd	%xmm2, %xmm3
	movsd	(%rax,%r15), %xmm0
	movq	-176(%r9), %rax
	mulsd	%xmm0, %xmm0
	addsd	%xmm0, %xmm3
	movsd	%xmm3, (%r14)
	movsd	(%rcx,%r15), %xmm4
	movq	-168(%r9), %rcx
	mulsd	%xmm4, %xmm4
	addsd	%xmm4, %xmm3
	movsd	%xmm3, (%r14)
	movapd	%xmm3, %xmm6
	movsd	(%rsi,%r15), %xmm7
	movq	-160(%r9), %rsi
	cmpl	%edi, %edx
	mulsd	%xmm7, %xmm7
	addsd	%xmm7, %xmm6
	movsd	%xmm6, (%r14)
	movapd	%xmm6, %xmm10
	movsd	(%r11,%r15), %xmm9
	mulsd	%xmm9, %xmm9
	addsd	%xmm9, %xmm10
	movsd	%xmm10, (%r14)
	movapd	%xmm10, %xmm12
	movsd	(%rax,%r15), %xmm11
	mulsd	%xmm11, %xmm11
	addsd	%xmm11, %xmm12
	movsd	%xmm12, (%r14)
	movsd	(%rcx,%r15), %xmm13
	mulsd	%xmm13, %xmm13
	addsd	%xmm13, %xmm12
	movsd	%xmm12, (%r14)
	movapd	%xmm12, %xmm14
	movsd	(%rsi,%r15), %xmm15
	mulsd	%xmm15, %xmm15
	addsd	%xmm15, %xmm14
	movapd	%xmm14, %xmm0
	movsd	%xmm14, (%r14)
	jne	.L729
.L728:
	movslq	%edx, %r9
	movl	%edx, %esi
	leaq	(%r8,%r9,8), %r11
	notl	%esi
	.loc 1 263 0
	leal	1(%rdx), %r9d
	addl	%ebx, %esi
	.loc 1 264 0
	movq	(%r11), %rax
	andl	$7, %esi
	.loc 1 263 0
	cmpl	%r9d, %ebx
	.loc 1 264 0
	movsd	(%rax,%r15), %xmm1
	leaq	8(%r11), %rax
	mulsd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, (%r14)
	.loc 1 263 0
	jle	.L727
	testl	%esi, %esi
	je	.L730
	cmpl	$1, %esi
	je	.L875
	cmpl	$2, %esi
	je	.L876
	cmpl	$3, %esi
	je	.L877
	cmpl	$4, %esi
	je	.L878
	cmpl	$5, %esi
	je	.L879
	cmpl	$6, %esi
	je	.L880
	.loc 1 264 0
	movq	8(%r11), %rcx
	.loc 1 263 0
	leal	2(%rdx), %r9d
	leaq	16(%r11), %rax
	.loc 1 264 0
	movsd	(%rcx,%r15), %xmm2
	mulsd	%xmm2, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, (%r14)
.L880:
	movq	(%rax), %rdx
	.loc 1 263 0
	addl	$1, %r9d
	addq	$8, %rax
	.loc 1 264 0
	movsd	(%rdx,%r15), %xmm3
	mulsd	%xmm3, %xmm3
	addsd	%xmm3, %xmm1
	movsd	%xmm1, (%r14)
.L879:
	movq	(%rax), %r11
	.loc 1 263 0
	addl	$1, %r9d
	addq	$8, %rax
	.loc 1 264 0
	movsd	(%r11,%r15), %xmm4
	mulsd	%xmm4, %xmm4
	addsd	%xmm4, %xmm1
	movsd	%xmm1, (%r14)
.L878:
	movq	(%rax), %rsi
	.loc 1 263 0
	addl	$1, %r9d
	addq	$8, %rax
	.loc 1 264 0
	movsd	(%rsi,%r15), %xmm6
	mulsd	%xmm6, %xmm6
	addsd	%xmm6, %xmm1
	movsd	%xmm1, (%r14)
.L877:
	movq	(%rax), %rcx
	.loc 1 263 0
	addl	$1, %r9d
	addq	$8, %rax
	.loc 1 264 0
	movsd	(%rcx,%r15), %xmm7
	mulsd	%xmm7, %xmm7
	addsd	%xmm7, %xmm1
	movsd	%xmm1, (%r14)
.L876:
	movq	(%rax), %rdx
	.loc 1 263 0
	addl	$1, %r9d
	addq	$8, %rax
	.loc 1 264 0
	movsd	(%rdx,%r15), %xmm8
	mulsd	%xmm8, %xmm8
	addsd	%xmm8, %xmm1
	movsd	%xmm1, (%r14)
.L875:
	movq	(%rax), %r11
	.loc 1 263 0
	addl	$1, %r9d
	addq	$8, %rax
	cmpl	%r9d, %ebx
	.loc 1 264 0
	movsd	(%r11,%r15), %xmm9
	mulsd	%xmm9, %xmm9
	addsd	%xmm9, %xmm1
	movsd	%xmm1, (%r14)
	.loc 1 263 0
	jle	.L727
.L730:
	.loc 1 264 0
	movq	(%rax), %rsi
	movq	8(%rax), %rcx
	.loc 1 263 0
	addl	$8, %r9d
	.loc 1 264 0
	movq	16(%rax), %rdx
	addq	$64, %rax
	movq	-40(%rax), %r11
	movsd	(%rsi,%r15), %xmm10
	movq	-32(%rax), %rsi
	mulsd	%xmm10, %xmm10
	addsd	%xmm10, %xmm1
	movsd	%xmm1, (%r14)
	movapd	%xmm1, %xmm12
	movsd	(%rcx,%r15), %xmm11
	movq	-24(%rax), %rcx
	mulsd	%xmm11, %xmm11
	addsd	%xmm11, %xmm12
	movsd	%xmm12, (%r14)
	movsd	(%rdx,%r15), %xmm1
	movq	-16(%rax), %rdx
	mulsd	%xmm1, %xmm1
	addsd	%xmm1, %xmm12
	movsd	%xmm12, (%r14)
	movapd	%xmm12, %xmm13
	movsd	(%r11,%r15), %xmm14
	movq	-8(%rax), %r11
	.loc 1 263 0
	cmpl	%r9d, %ebx
	.loc 1 264 0
	mulsd	%xmm14, %xmm14
	addsd	%xmm14, %xmm13
	movsd	%xmm13, (%r14)
	movapd	%xmm13, %xmm2
	movsd	(%rsi,%r15), %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	movsd	%xmm2, (%r14)
	movsd	(%rcx,%r15), %xmm3
	mulsd	%xmm3, %xmm3
	addsd	%xmm3, %xmm2
	movsd	%xmm2, (%r14)
	movapd	%xmm2, %xmm4
	movsd	(%rdx,%r15), %xmm6
	mulsd	%xmm6, %xmm6
	addsd	%xmm6, %xmm4
	movsd	%xmm4, (%r14)
	movsd	(%r11,%r15), %xmm1
	mulsd	%xmm1, %xmm1
	addsd	%xmm4, %xmm1
	movsd	%xmm1, (%r14)
	.loc 1 263 0
	jg	.L730
.L727:
	.loc 1 265 0 discriminator 2
	sqrtsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm0
	jp	.L922
.L731:
	addq	$8, %r15
	movsd	%xmm0, (%r14)
	addq	$8, %r14
	.loc 1 260 0 discriminator 2
	cmpq	%r10, %r15
	jne	.L733
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L734:
.LVL433:
	.loc 1 270 0 discriminator 1
	testl	%ebx, %ebx
	jle	.L737
	.loc 1 271 0 discriminator 3
	movq	(%r8), %r15
	leal	-1(%rbx), %r9d
	movq	0(%rbp), %r14
	movl	$1, %edx
	andl	$7, %r9d
	.loc 1 270 0 discriminator 3
	cmpl	$1, %ebx
	.loc 1 271 0 discriminator 3
	movsd	(%r15,%rax), %xmm8
	divsd	(%r12,%rax), %xmm8
	movsd	%xmm8, (%r14,%rax)
.LVL434:
	.loc 1 270 0 discriminator 3
	jle	.L737
	testl	%r9d, %r9d
	je	.L756
	cmpl	$1, %r9d
	je	.L869
	cmpl	$2, %r9d
	je	.L870
	cmpl	$3, %r9d
	je	.L871
	cmpl	$4, %r9d
	je	.L872
	cmpl	$5, %r9d
	je	.L873
	cmpl	$6, %r9d
	je	.L874
.LVL435:
	.loc 1 271 0
	movq	8(%r8), %rcx
	movq	8(%rbp), %rsi
	movl	$2, %edx
	movsd	(%rcx,%rax), %xmm9
	divsd	(%r12,%rax), %xmm9
	movsd	%xmm9, (%rsi,%rax)
.LVL436:
.L874:
	movq	(%r8,%rdx,8), %rdi
	movq	0(%rbp,%rdx,8), %r11
	addq	$1, %rdx
	movsd	(%rdi,%rax), %xmm10
	divsd	(%r12,%rax), %xmm10
	movsd	%xmm10, (%r11,%rax)
.LVL437:
.L873:
	movq	(%r8,%rdx,8), %r14
	movq	0(%rbp,%rdx,8), %r9
	addq	$1, %rdx
	movsd	(%r14,%rax), %xmm11
	divsd	(%r12,%rax), %xmm11
	movsd	%xmm11, (%r9,%rax)
.LVL438:
.L872:
	movq	(%r8,%rdx,8), %rsi
	movq	0(%rbp,%rdx,8), %r15
	addq	$1, %rdx
	movsd	(%rsi,%rax), %xmm12
	divsd	(%r12,%rax), %xmm12
	movsd	%xmm12, (%r15,%rax)
.LVL439:
.L871:
	movq	(%r8,%rdx,8), %r11
	movq	0(%rbp,%rdx,8), %rcx
	addq	$1, %rdx
	movsd	(%r11,%rax), %xmm1
	divsd	(%r12,%rax), %xmm1
	movsd	%xmm1, (%rcx,%rax)
.LVL440:
.L870:
	movq	(%r8,%rdx,8), %r9
	movq	0(%rbp,%rdx,8), %rdi
	addq	$1, %rdx
	movsd	(%r9,%rax), %xmm13
	divsd	(%r12,%rax), %xmm13
	movsd	%xmm13, (%rdi,%rax)
.LVL441:
.L869:
	movq	(%r8,%rdx,8), %r15
	movq	0(%rbp,%rdx,8), %r14
	addq	$1, %rdx
	.loc 1 270 0
	cmpl	%edx, %ebx
	.loc 1 271 0
	movsd	(%r15,%rax), %xmm14
	divsd	(%r12,%rax), %xmm14
	movsd	%xmm14, (%r14,%rax)
.LVL442:
	.loc 1 270 0
	jle	.L737
.LVL443:
.L756:
	.loc 1 271 0 discriminator 3
	movq	(%r8,%rdx,8), %rsi
	movq	0(%rbp,%rdx,8), %rcx
	leaq	1(%rdx), %r11
	leaq	2(%rdx), %r14
	movq	(%r8,%r11,8), %r9
	movq	0(%rbp,%r11,8), %rdi
	leaq	3(%rdx), %r11
	movsd	(%rsi,%rax), %xmm15
	movq	0(%rbp,%r14,8), %r15
	movq	0(%rbp,%r11,8), %rsi
	divsd	(%r12,%rax), %xmm15
	movsd	%xmm15, (%rcx,%rax)
.LVL444:
	movq	(%r8,%r14,8), %rcx
	movsd	(%r9,%rax), %xmm0
	leaq	4(%rdx), %r9
	divsd	(%r12,%rax), %xmm0
	movq	0(%rbp,%r9,8), %r14
	movsd	%xmm0, (%rdi,%rax)
.LVL445:
	movq	(%r8,%r11,8), %rdi
	movsd	(%rcx,%rax), %xmm2
	leaq	5(%rdx), %rcx
	divsd	(%r12,%rax), %xmm2
	movq	0(%rbp,%rcx,8), %r11
	movsd	%xmm2, (%r15,%rax)
.LVL446:
	movq	(%r8,%r9,8), %r15
	movsd	(%rdi,%rax), %xmm3
	leaq	6(%rdx), %rdi
	divsd	(%r12,%rax), %xmm3
	movq	0(%rbp,%rdi,8), %r9
	movsd	%xmm3, (%rsi,%rax)
.LVL447:
	movq	(%r8,%rcx,8), %rsi
	movsd	(%r15,%rax), %xmm4
	leaq	7(%rdx), %r15
	addq	$8, %rdx
	divsd	(%r12,%rax), %xmm4
	.loc 1 270 0 discriminator 3
	cmpl	%edx, %ebx
	.loc 1 271 0 discriminator 3
	movsd	%xmm4, (%r14,%rax)
.LVL448:
	movq	(%r8,%rdi,8), %r14
	movsd	(%rsi,%rax), %xmm6
	divsd	(%r12,%rax), %xmm6
	movsd	%xmm6, (%r11,%rax)
.LVL449:
	movsd	(%r14,%rax), %xmm7
	divsd	(%r12,%rax), %xmm7
	movq	(%r8,%r15,8), %rcx
	movq	0(%rbp,%r15,8), %r11
	movsd	%xmm7, (%r9,%rax)
.LVL450:
	movsd	(%rcx,%rax), %xmm5
	divsd	(%r12,%rax), %xmm5
	movsd	%xmm5, (%r11,%rax)
.LVL451:
	.loc 1 270 0 discriminator 3
	jg	.L756
.LVL452:
.L737:
	addq	$8, %rax
	.loc 1 269 0
	cmpq	%r10, %rax
	jne	.L734
.LVL453:
	movl	24(%rsp), %edx
	cmpl	$9, %edx
	movl	%edx, %eax
	jle	.L753
	.loc 1 276 0
	movl	48(%rsp), %esi
	subl	$10, %eax
	leaq	72(%r13), %r10
	shrl	$3, %eax
	movl	$8, %r9d
	cmpl	$1, %edx
	leal	8(,%rax,8), %r8d
	movq	%rbp, 56(%rsp)
	movl	%ebx, %r15d
	movq	%r10, %rbp
.LVL454:
	leaq	8(,%rsi,8), %r14
	movl	%r8d, 8(%rsp)
	cmovle	%r9, %r14
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
.LVL455:
.L742:
	movq	-72(%rbp), %rdi
	xorl	%esi, %esi
	movq	%r14, %rdx
	prefetcht0	0(%rbp)
	addl	$8, %ebx
	addq	$64, %rbp
	call	memset
.LVL456:
	movq	-128(%rbp), %rdi
	xorl	%esi, %esi
	movq	%r14, %rdx
	call	memset
.LVL457:
	movq	-120(%rbp), %rdi
	xorl	%esi, %esi
	movq	%r14, %rdx
	call	memset
.LVL458:
	movq	-112(%rbp), %rdi
	xorl	%esi, %esi
	movq	%r14, %rdx
	call	memset
.LVL459:
	movq	-104(%rbp), %rdi
	xorl	%esi, %esi
	movq	%r14, %rdx
	call	memset
.LVL460:
	movq	-96(%rbp), %rdi
	xorl	%esi, %esi
	movq	%r14, %rdx
	call	memset
.LVL461:
	movq	-88(%rbp), %rdi
	xorl	%esi, %esi
	movq	%r14, %rdx
	call	memset
.LVL462:
	movq	-80(%rbp), %rdi
	xorl	%esi, %esi
	movq	%r14, %rdx
	call	memset
.LVL463:
	cmpl	8(%rsp), %ebx
	jne	.L742
	movq	56(%rsp), %rbp
	movl	%ebx, %ecx
	movl	%r15d, %ebx
.LVL464:
.L741:
	movl	48(%rsp), %eax
	cmpl	$1, 24(%rsp)
	movslq	%ecx, %rdx
	movl	%ecx, %r14d
	movl	$8, %esi
	leaq	0(%r13,%rdx,8), %r10
	notl	%r14d
	movl	%ecx, 64(%rsp)
	movq	(%r10), %rdi
	movq	%r10, 24(%rsp)
.LVL465:
	leaq	8(,%rax,8), %r8
	cmovg	%r8, %rsi
	addl	20(%rsp), %r14d
	movq	%rsi, 8(%rsp)
	movq	%rsi, %rdx
	xorl	%esi, %esi
	andl	$7, %r14d
	movl	%r14d, 56(%rsp)
.LVL466:
	call	memset
.LVL467:
	.loc 1 274 0
	movl	64(%rsp), %edi
	movq	24(%rsp), %r11
	movl	56(%rsp), %r9d
	leal	1(%rdi), %r14d
	cmpl	%r14d, 20(%rsp)
	leaq	8(%r11), %r15
	jle	.L910
	testl	%r9d, %r9d
	movq	%r11, 56(%rsp)
	movl	%edi, 24(%rsp)
	je	.L916
	cmpl	$1, %r9d
	je	.L863
	cmpl	$2, %r9d
	je	.L864
	cmpl	$3, %r9d
	je	.L865
	cmpl	$4, %r9d
	je	.L866
	cmpl	$5, %r9d
	je	.L867
	cmpl	$6, %r9d
	je	.L868
	movq	(%r15), %rdi
	movq	8(%rsp), %rdx
	xorl	%esi, %esi
	call	memset
.LVL468:
	movl	24(%rsp), %r15d
	movq	56(%rsp), %rcx
	leal	2(%r15), %r14d
	leaq	16(%rcx), %r15
.L868:
	movq	(%r15), %rdi
	movq	8(%rsp), %rdx
	xorl	%esi, %esi
	addl	$1, %r14d
	addq	$8, %r15
	call	memset
.LVL469:
.L867:
	movq	(%r15), %rdi
	movq	8(%rsp), %rdx
	xorl	%esi, %esi
	addl	$1, %r14d
	addq	$8, %r15
	call	memset
.LVL470:
.L866:
	movq	(%r15), %rdi
	movq	8(%rsp), %rdx
	xorl	%esi, %esi
	addl	$1, %r14d
	addq	$8, %r15
	call	memset
.LVL471:
.L865:
	movq	(%r15), %rdi
	movq	8(%rsp), %rdx
	xorl	%esi, %esi
	addl	$1, %r14d
	addq	$8, %r15
	call	memset
.LVL472:
.L864:
	movq	(%r15), %rdi
	movq	8(%rsp), %rdx
	xorl	%esi, %esi
	addl	$1, %r14d
	addq	$8, %r15
	call	memset
.LVL473:
.L863:
	movq	(%r15), %rdi
	movq	8(%rsp), %rdx
	xorl	%esi, %esi
	addl	$1, %r14d
	addq	$8, %r15
	call	memset
.LVL474:
	cmpl	%r14d, 20(%rsp)
	jle	.L910
.L916:
	movl	%ebx, 24(%rsp)
	movq	8(%rsp), %rbx
.LVL475:
.L739:
	movq	(%r15), %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	addl	$8, %r14d
	addq	$64, %r15
	call	memset
.LVL476:
	movq	-56(%r15), %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	call	memset
.LVL477:
	movq	-48(%r15), %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	call	memset
.LVL478:
	movq	-40(%r15), %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	call	memset
.LVL479:
	movq	-32(%r15), %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	call	memset
.LVL480:
	movq	-24(%r15), %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	call	memset
.LVL481:
	movq	-16(%r15), %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	call	memset
.LVL482:
	movq	-8(%r15), %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	call	memset
.LVL483:
	cmpl	%r14d, 20(%rsp)
	jg	.L739
	movl	24(%rsp), %ebx
.LVL484:
.L910:
	movl	52(%rsp), %edx
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	xorl	%r15d, %r15d
.LVL485:
	shrl	$3, %edx
	.loc 1 280 0
	cmpl	20(%rsp), %r15d
	leal	8(,%rdx,8), %edx
	jl	.L909
	movq	$1, 8(%rsp)
.LVL486:
	.p2align 4,,10
	.p2align 3
.L747:
	.loc 1 279 0
	addl	$1, %r15d
.LVL487:
	addq	$8, %r8
	cmpl	20(%rsp), %r15d
	movq	8(%rsp), %rcx
	jge	.L726
.LVL488:
.L909:
	movl	48(%rsp), %r14d
	addq	$1, %rcx
	movq	%rcx, 8(%rsp)
	subl	%r15d, %r14d
	addq	%rcx, %r14
	.loc 1 280 0
	movq	%r8, %rcx
	salq	$3, %r14
.LVL489:
	.p2align 4,,10
	.p2align 3
.L749:
	.loc 1 281 0 discriminator 1
	testl	%ebx, %ebx
	jle	.L744
	movq	%rcx, %rax
	addq	0(%r13,%r8), %rax
	.loc 1 281 0 is_stmt 0
	xorl	%edi, %edi
	cmpl	$8, %ebx
	leaq	128(%rbp), %r10
	movsd	(%rax), %xmm8
	jle	.L746
.LVL490:
	.p2align 4,,10
	.p2align 3
.L755:
	.loc 1 282 0 is_stmt 1 discriminator 3
	movq	-128(%r10), %rsi
	movq	-120(%r10), %r11
	prefetcht0	(%r10)
	movq	-112(%r10), %r9
	addl	$8, %edi
	addq	$64, %r10
	movsd	(%rsi,%r8), %xmm9
	mulsd	(%rsi,%rcx), %xmm9
	movq	-168(%r10), %rsi
	addsd	%xmm8, %xmm9
	movsd	%xmm9, (%rax)
	movapd	%xmm9, %xmm11
	movsd	(%r11,%r8), %xmm10
	mulsd	(%r11,%rcx), %xmm10
	movq	-160(%r10), %r11
	addsd	%xmm10, %xmm11
	movsd	%xmm11, (%rax)
	movsd	(%r9,%r8), %xmm12
	mulsd	(%r9,%rcx), %xmm12
	movq	-152(%r10), %r9
	movapd	%xmm12, %xmm1
	addsd	%xmm11, %xmm1
	movsd	%xmm1, (%rax)
	movsd	(%rsi,%r8), %xmm13
	mulsd	(%rsi,%rcx), %xmm13
	movq	-144(%r10), %rsi
	addsd	%xmm1, %xmm13
	movsd	%xmm13, (%rax)
	movsd	(%r11,%r8), %xmm15
	mulsd	(%r11,%rcx), %xmm15
	movq	-136(%r10), %r11
	cmpl	%edx, %edi
	addsd	%xmm13, %xmm15
	movsd	%xmm15, (%rax)
	movapd	%xmm15, %xmm0
	movsd	(%r9,%r8), %xmm2
	mulsd	(%r9,%rcx), %xmm2
	addsd	%xmm2, %xmm0
	movsd	%xmm0, (%rax)
	movsd	(%rsi,%r8), %xmm4
	mulsd	(%rsi,%rcx), %xmm4
	movapd	%xmm4, %xmm6
	addsd	%xmm0, %xmm6
	movsd	%xmm6, (%rax)
	movsd	(%r11,%r8), %xmm7
	mulsd	(%r11,%rcx), %xmm7
	addsd	%xmm7, %xmm6
	movapd	%xmm6, %xmm8
	movsd	%xmm6, (%rax)
	jne	.L755
.L746:
	movslq	%edi, %r10
	leaq	0(%rbp,%r10,8), %r11
	movl	%edi, %r10d
	notl	%r10d
	.loc 1 282 0 is_stmt 0
	movq	(%r11), %r9
	addl	%ebx, %r10d
	leaq	8(%r11), %rsi
	andl	$7, %r10d
	movsd	(%r9,%r8), %xmm5
	mulsd	(%r9,%rcx), %xmm5
	.loc 1 281 0 is_stmt 1
	leal	1(%rdi), %r9d
	cmpl	%r9d, %ebx
	.loc 1 282 0
	addsd	%xmm8, %xmm5
	movsd	%xmm5, (%rax)
	.loc 1 281 0
	jle	.L744
	testl	%r10d, %r10d
	je	.L743
	cmpl	$1, %r10d
	je	.L857
	cmpl	$2, %r10d
	je	.L858
	cmpl	$3, %r10d
	je	.L859
	cmpl	$4, %r10d
	je	.L860
	cmpl	$5, %r10d
	je	.L861
	cmpl	$6, %r10d
	je	.L862
	.loc 1 282 0
	movq	8(%r11), %rsi
	.loc 1 281 0
	leal	2(%rdi), %r9d
	.loc 1 282 0
	movsd	(%rsi,%r8), %xmm8
	mulsd	(%rsi,%rcx), %xmm8
	leaq	16(%r11), %rsi
	addsd	%xmm8, %xmm5
	movsd	%xmm5, (%rax)
.L862:
	movq	(%rsi), %rdi
	.loc 1 281 0
	addl	$1, %r9d
	addq	$8, %rsi
	.loc 1 282 0
	movsd	(%rdi,%r8), %xmm9
	mulsd	(%rdi,%rcx), %xmm9
	addsd	%xmm9, %xmm5
	movsd	%xmm5, (%rax)
.L861:
	movq	(%rsi), %r11
	.loc 1 281 0
	addl	$1, %r9d
	addq	$8, %rsi
	.loc 1 282 0
	movsd	(%r11,%r8), %xmm10
	mulsd	(%r11,%rcx), %xmm10
	addsd	%xmm10, %xmm5
	movsd	%xmm5, (%rax)
.L860:
	movq	(%rsi), %r10
	.loc 1 281 0
	addl	$1, %r9d
	addq	$8, %rsi
	.loc 1 282 0
	movsd	(%r10,%r8), %xmm11
	mulsd	(%r10,%rcx), %xmm11
	addsd	%xmm11, %xmm5
	movsd	%xmm5, (%rax)
.L859:
	movq	(%rsi), %rdi
	.loc 1 281 0
	addl	$1, %r9d
	addq	$8, %rsi
	.loc 1 282 0
	movsd	(%rdi,%r8), %xmm12
	mulsd	(%rdi,%rcx), %xmm12
	addsd	%xmm12, %xmm5
	movsd	%xmm5, (%rax)
.L858:
	movq	(%rsi), %r11
	.loc 1 281 0
	addl	$1, %r9d
	addq	$8, %rsi
	.loc 1 282 0
	movsd	(%r11,%r8), %xmm1
	mulsd	(%r11,%rcx), %xmm1
	addsd	%xmm1, %xmm5
	movsd	%xmm5, (%rax)
.L857:
	movq	(%rsi), %r10
	.loc 1 281 0
	addl	$1, %r9d
	addq	$8, %rsi
	cmpl	%r9d, %ebx
	.loc 1 282 0
	movsd	(%r10,%r8), %xmm13
	mulsd	(%r10,%rcx), %xmm13
	addsd	%xmm13, %xmm5
	movsd	%xmm5, (%rax)
	.loc 1 281 0
	jle	.L744
.L743:
	.loc 1 282 0
	movq	(%rsi), %rdi
	movq	8(%rsi), %r11
	.loc 1 281 0
	addl	$8, %r9d
	.loc 1 282 0
	movq	16(%rsi), %r10
	addq	$64, %rsi
	movsd	(%rdi,%r8), %xmm14
	mulsd	(%rdi,%rcx), %xmm14
	movq	-40(%rsi), %rdi
	addsd	%xmm14, %xmm5
	movsd	%xmm5, (%rax)
	movsd	(%r11,%r8), %xmm15
	mulsd	(%r11,%rcx), %xmm15
	movq	-32(%rsi), %r11
	addsd	%xmm5, %xmm15
	movsd	%xmm15, (%rax)
	movsd	(%r10,%r8), %xmm0
	mulsd	(%r10,%rcx), %xmm0
	movq	-24(%rsi), %r10
	addsd	%xmm0, %xmm15
	movsd	%xmm15, (%rax)
	movapd	%xmm15, %xmm4
	movsd	(%rdi,%r8), %xmm3
	mulsd	(%rdi,%rcx), %xmm3
	movq	-16(%rsi), %rdi
	addsd	%xmm3, %xmm4
	movsd	%xmm4, (%rax)
	movapd	%xmm4, %xmm7
	movsd	(%r11,%r8), %xmm6
	mulsd	(%r11,%rcx), %xmm6
	movq	-8(%rsi), %r11
	.loc 1 281 0
	cmpl	%r9d, %ebx
	.loc 1 282 0
	addsd	%xmm6, %xmm7
	movsd	%xmm7, (%rax)
	movsd	(%r10,%r8), %xmm5
	mulsd	(%r10,%rcx), %xmm5
	addsd	%xmm5, %xmm7
	movsd	%xmm7, (%rax)
	movapd	%xmm7, %xmm8
	movsd	(%rdi,%r8), %xmm9
	mulsd	(%rdi,%rcx), %xmm9
	addsd	%xmm9, %xmm8
	movsd	%xmm8, (%rax)
	movsd	(%r11,%r8), %xmm5
	mulsd	(%r11,%rcx), %xmm5
	addsd	%xmm8, %xmm5
	movsd	%xmm5, (%rax)
	.loc 1 281 0
	jg	.L743
.L744:
	addq	$8, %rcx
	.loc 1 280 0
	cmpq	%r14, %rcx
	jne	.L749
	jmp	.L747
.LVL491:
.L726:
	.loc 1 284 0
	movq	32(%rsp), %r14
	movq	%r12, %rdi
	xorl	%esi, %esi
	movq	%r14, %rdx
	call	_Z12free_dvectorPdll
.LVL492:
	.loc 1 285 0
	movq	40(%rsp), %rdx
	movq	%r14, %r8
	movq	%rbp, %rdi
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	call	_Z12free_dmatrixPPdllll
.LVL493:
.LBE46:
	.loc 1 288 0
	addq	$88, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
.LVL494:
	popq	%r13
	.cfi_def_cfa_offset 24
.LVL495:
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL496:
.L750:
	.cfi_restore_state
.LBB47:
	.loc 1 263 0
	movapd	%xmm5, %xmm1
	.loc 1 265 0
	sqrtsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm0
	jnp	.L731
.LVL497:
.L922:
	.loc 1 265 0 is_stmt 0 discriminator 2
	movapd	%xmm1, %xmm0
	movq	%r8, 72(%rsp)
	movq	%r10, 64(%rsp)
	movl	%edi, 56(%rsp)
	movsd	%xmm5, 8(%rsp)
	call	sqrt
.LVL498:
	movq	72(%rsp), %r8
	movq	64(%rsp), %r10
	movl	56(%rsp), %edi
	movsd	8(%rsp), %xmm5
	jmp	.L731
.LVL499:
.L751:
	.loc 1 263 0 is_stmt 1
	movapd	%xmm5, %xmm0
	xorl	%edx, %edx
	jmp	.L728
.LVL500:
.L753:
	.loc 1 269 0
	xorl	%ecx, %ecx
	jmp	.L741
.LBE47:
	.cfi_endproc
.LFE79:
	.size	_Z16HJM_CorrelationsPPdiiS0_, .-_Z16HJM_CorrelationsPPdiiS0_
	.section	.text.unlikely
.LCOLDE12:
	.text
.LHOTE12:
	.section	.text.unlikely
.LCOLDB13:
	.text
.LHOTB13:
	.p2align 4,,15
	.globl	_Z20HJM_Forward_to_YieldPdiS_
	.type	_Z20HJM_Forward_to_YieldPdiS_, @function
_Z20HJM_Forward_to_YieldPdiS_:
.LFB80:
	.loc 1 294 0
	.cfi_startproc
.LVL501:
.LBB48:
	.loc 1 301 0
	movsd	(%rdx), %xmm13
	.loc 1 302 0
	cmpl	$1, %esi
	.loc 1 301 0
	movsd	%xmm13, (%rdi)
.LVL502:
	.loc 1 302 0
	jle	.L968
	cmpl	$9, %esi
	leal	-7(%rsi), %r11d
	jle	.L929
	pxor	%xmm14, %xmm14
	movl	$1, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rax
	movl	$2, %r10d
	cvtsi2sd	%r8d, %xmm14
.LVL503:
	.p2align 4,,10
	.p2align 3
.L926:
	.loc 1 303 0 discriminator 3
	pxor	%xmm1, %xmm1
	leal	2(%r8), %r9d
	prefetcht0	80(%rcx)
	mulsd	%xmm14, %xmm13
	prefetcht0	80(%rax)
	addq	$64, %rcx
	pxor	%xmm0, %xmm0
	addq	$64, %rax
	cvtsi2sd	%r10d, %xmm1
	pxor	%xmm3, %xmm3
	pxor	%xmm6, %xmm6
	addl	$8, %r10d
	addsd	-56(%rcx), %xmm13
	cvtsi2sd	%r9d, %xmm0
	leal	3(%r8), %r9d
	pxor	%xmm8, %xmm8
	pxor	%xmm10, %xmm10
	cvtsi2sd	%r9d, %xmm3
	leal	4(%r8), %r9d
	pxor	%xmm12, %xmm12
	cvtsi2sd	%r9d, %xmm6
	leal	5(%r8), %r9d
	movapd	%xmm13, %xmm2
	pxor	%xmm14, %xmm14
	cvtsi2sd	%r9d, %xmm8
	leal	6(%r8), %r9d
	divsd	%xmm1, %xmm2
	cvtsi2sd	%r9d, %xmm10
	leal	7(%r8), %r9d
	addl	$8, %r8d
	cvtsi2sd	%r8d, %xmm14
	cvtsi2sd	%r9d, %xmm12
	movsd	%xmm2, -56(%rax)
.LVL504:
	mulsd	%xmm1, %xmm2
	addsd	-48(%rcx), %xmm2
	movapd	%xmm2, %xmm4
	divsd	%xmm0, %xmm4
	movsd	%xmm4, -48(%rax)
.LVL505:
	mulsd	%xmm0, %xmm4
	addsd	-40(%rcx), %xmm4
	divsd	%xmm3, %xmm4
	movapd	%xmm4, %xmm5
	movsd	%xmm4, -40(%rax)
	mulsd	%xmm3, %xmm5
	addsd	-32(%rcx), %xmm5
	movapd	%xmm5, %xmm7
	divsd	%xmm6, %xmm7
	movsd	%xmm7, -32(%rax)
	mulsd	%xmm6, %xmm7
	addsd	-24(%rcx), %xmm7
	divsd	%xmm8, %xmm7
	movapd	%xmm7, %xmm9
	movsd	%xmm7, -24(%rax)
	mulsd	%xmm8, %xmm9
	addsd	-16(%rcx), %xmm9
	movapd	%xmm9, %xmm11
	divsd	%xmm10, %xmm11
	movsd	%xmm11, -16(%rax)
	mulsd	%xmm10, %xmm11
	addsd	-8(%rcx), %xmm11
	divsd	%xmm12, %xmm11
	movapd	%xmm11, %xmm13
	movsd	%xmm11, -8(%rax)
	mulsd	%xmm12, %xmm13
	addsd	(%rcx), %xmm13
	divsd	%xmm14, %xmm13
	movsd	%xmm13, (%rax)
	cmpl	%r10d, %r11d
	jg	.L926
.L925:
	.loc 1 303 0 is_stmt 0
	pxor	%xmm2, %xmm2
	leal	1(%r8), %ecx
	movslq	%r8d, %r11
	salq	$3, %r11
	mulsd	%xmm14, %xmm13
	movl	%r8d, %r10d
	addq	%r11, %rdx
.LVL506:
	notl	%r10d
	addq	%r11, %rdi
.LVL507:
	cvtsi2sd	%ecx, %xmm2
	addl	%esi, %r10d
	movsd	(%rdx), %xmm15
	andl	$7, %r10d
	.loc 1 302 0 is_stmt 1
	cmpl	%esi, %ecx
	movl	$8, %eax
	.loc 1 303 0
	addsd	%xmm13, %xmm15
	divsd	%xmm2, %xmm15
	movapd	%xmm15, %xmm0
	movsd	%xmm15, (%rdi)
	.loc 1 302 0
	jge	.L968
	testl	%r10d, %r10d
	je	.L927
	cmpl	$1, %r10d
	je	.L955
	cmpl	$2, %r10d
	je	.L956
	cmpl	$3, %r10d
	je	.L957
	cmpl	$4, %r10d
	je	.L958
	cmpl	$5, %r10d
	je	.L959
	cmpl	$6, %r10d
	je	.L960
	.loc 1 303 0
	mulsd	%xmm2, %xmm0
	leal	2(%r8), %ecx
	movl	$16, %eax
	pxor	%xmm2, %xmm2
	cvtsi2sd	%ecx, %xmm2
	addsd	8(%rdx), %xmm0
	divsd	%xmm2, %xmm0
	movsd	%xmm0, 8(%rdi)
.L960:
	mulsd	%xmm2, %xmm0
	addl	$1, %ecx
	pxor	%xmm2, %xmm2
	movsd	(%rdx,%rax), %xmm1
	cvtsi2sd	%ecx, %xmm2
	addsd	%xmm0, %xmm1
	divsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm1, (%rdi,%rax)
	addq	$8, %rax
.L959:
	mulsd	%xmm2, %xmm0
	addl	$1, %ecx
	pxor	%xmm2, %xmm2
	movsd	(%rdx,%rax), %xmm4
	cvtsi2sd	%ecx, %xmm2
	addsd	%xmm0, %xmm4
	divsd	%xmm2, %xmm4
	movapd	%xmm4, %xmm0
	movsd	%xmm4, (%rdi,%rax)
	addq	$8, %rax
.L958:
	mulsd	%xmm2, %xmm0
	addl	$1, %ecx
	pxor	%xmm2, %xmm2
	movsd	(%rdx,%rax), %xmm3
	cvtsi2sd	%ecx, %xmm2
	addsd	%xmm0, %xmm3
	divsd	%xmm2, %xmm3
	movapd	%xmm3, %xmm0
	movsd	%xmm3, (%rdi,%rax)
	addq	$8, %rax
.L957:
	mulsd	%xmm2, %xmm0
	addl	$1, %ecx
	pxor	%xmm2, %xmm2
	movsd	(%rdx,%rax), %xmm5
	cvtsi2sd	%ecx, %xmm2
	addsd	%xmm0, %xmm5
	divsd	%xmm2, %xmm5
	movapd	%xmm5, %xmm0
	movsd	%xmm5, (%rdi,%rax)
	addq	$8, %rax
.L956:
	mulsd	%xmm2, %xmm0
	addl	$1, %ecx
	pxor	%xmm2, %xmm2
	movsd	(%rdx,%rax), %xmm6
	cvtsi2sd	%ecx, %xmm2
	addsd	%xmm0, %xmm6
	divsd	%xmm2, %xmm6
	movapd	%xmm6, %xmm0
	movsd	%xmm6, (%rdi,%rax)
	addq	$8, %rax
.L955:
	mulsd	%xmm2, %xmm0
	addl	$1, %ecx
	pxor	%xmm2, %xmm2
	movsd	(%rdx,%rax), %xmm7
	cvtsi2sd	%ecx, %xmm2
	addsd	%xmm0, %xmm7
	divsd	%xmm2, %xmm7
	movsd	%xmm7, (%rdi,%rax)
	addq	$8, %rax
	.loc 1 302 0
	cmpl	%esi, %ecx
	.loc 1 303 0
	movapd	%xmm7, %xmm0
	.loc 1 302 0
	jge	.L968
.L927:
	.loc 1 303 0
	pxor	%xmm9, %xmm9
	leal	1(%rcx), %r9d
	mulsd	%xmm2, %xmm0
	leal	2(%rcx), %r8d
	leal	3(%rcx), %r11d
	movsd	(%rdx,%rax), %xmm8
	leal	4(%rcx), %r10d
	cvtsi2sd	%r9d, %xmm9
	leal	5(%rcx), %r9d
	pxor	%xmm12, %xmm12
	addsd	%xmm0, %xmm8
	pxor	%xmm15, %xmm15
	pxor	%xmm3, %xmm3
	cvtsi2sd	%r8d, %xmm12
	pxor	%xmm7, %xmm7
	cvtsi2sd	%r11d, %xmm15
	leal	6(%rcx), %r8d
	cvtsi2sd	%r10d, %xmm3
	leal	7(%rcx), %r11d
	cvtsi2sd	%r9d, %xmm7
	addl	$8, %ecx
	divsd	%xmm9, %xmm8
	movapd	%xmm8, %xmm10
	movsd	%xmm8, (%rdi,%rax)
	pxor	%xmm8, %xmm8
	mulsd	%xmm9, %xmm10
	movsd	8(%rdx,%rax), %xmm11
	cvtsi2sd	%r8d, %xmm8
	addsd	%xmm10, %xmm11
	divsd	%xmm12, %xmm11
	movapd	%xmm11, %xmm13
	movsd	%xmm11, 8(%rdi,%rax)
	pxor	%xmm11, %xmm11
	mulsd	%xmm12, %xmm13
	movsd	16(%rdx,%rax), %xmm14
	cvtsi2sd	%r11d, %xmm11
	addsd	%xmm13, %xmm14
	divsd	%xmm15, %xmm14
	movapd	%xmm14, %xmm4
	movsd	%xmm14, 16(%rdi,%rax)
	mulsd	%xmm15, %xmm4
	movsd	24(%rdx,%rax), %xmm1
	addsd	%xmm4, %xmm1
	divsd	%xmm3, %xmm1
	movapd	%xmm1, %xmm5
	movsd	%xmm1, 24(%rdi,%rax)
	mulsd	%xmm3, %xmm5
	movsd	32(%rdx,%rax), %xmm6
	addsd	%xmm5, %xmm6
	divsd	%xmm7, %xmm6
	movapd	%xmm6, %xmm2
	movsd	%xmm6, 32(%rdi,%rax)
	mulsd	%xmm7, %xmm2
	movsd	40(%rdx,%rax), %xmm0
	addsd	%xmm2, %xmm0
	pxor	%xmm2, %xmm2
	cvtsi2sd	%ecx, %xmm2
	divsd	%xmm8, %xmm0
	movapd	%xmm0, %xmm9
	movsd	%xmm0, 40(%rdi,%rax)
	mulsd	%xmm8, %xmm9
	movsd	48(%rdx,%rax), %xmm10
	addsd	%xmm9, %xmm10
	divsd	%xmm11, %xmm10
	movapd	%xmm10, %xmm12
	movsd	%xmm10, 48(%rdi,%rax)
	mulsd	%xmm11, %xmm12
	movsd	56(%rdx,%rax), %xmm13
	addsd	%xmm12, %xmm13
	divsd	%xmm2, %xmm13
	movsd	%xmm13, 56(%rdi,%rax)
	addq	$64, %rax
	.loc 1 302 0
	cmpl	%esi, %ecx
	.loc 1 303 0
	movapd	%xmm13, %xmm0
	.loc 1 302 0
	jl	.L927
.L968:
.LBE48:
	.loc 1 307 0
	movl	$1, %eax
	ret
.LVL508:
	.p2align 4,,10
	.p2align 3
.L929:
	pxor	%xmm14, %xmm14
.LBB49:
	.loc 1 302 0
	movl	$1, %r8d
	cvtsi2sd	%r8d, %xmm14
	jmp	.L925
.LBE49:
	.cfi_endproc
.LFE80:
	.size	_Z20HJM_Forward_to_YieldPdiS_, .-_Z20HJM_Forward_to_YieldPdiS_
	.section	.text.unlikely
.LCOLDE13:
	.text
.LHOTE13:
	.section	.text.unlikely
.LCOLDB17:
	.text
.LHOTB17:
	.p2align 4,,15
	.globl	_Z16Discount_FactorsPdidS_
	.type	_Z16Discount_FactorsPdidS_, @function
_Z16Discount_FactorsPdidS_:
.LFB81:
	.loc 1 313 0
	.cfi_startproc
.LVL509:
.LBB50:
	.loc 1 318 0
	pxor	%xmm1, %xmm1
.LBE50:
	.loc 1 313 0
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
.LBB51:
	.loc 1 318 0
	cvtsi2sd	%esi, %xmm1
.LBE51:
	.loc 1 313 0
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
.LBB52:
	.loc 1 321 0
	testl	%esi, %esi
	.loc 1 318 0
	divsd	%xmm1, %xmm0
.LVL510:
	movsd	%xmm0, 8(%rsp)
.LVL511:
	.loc 1 321 0
	jle	.L997
	movq	%rdi, %rax
	salq	$60, %rax
	shrq	$63, %rax
	cmpl	%esi, %eax
	cmova	%esi, %eax
	cmpl	$6, %esi
	jg	.L1094
	movl	%esi, %eax
.L988:
	.loc 1 322 0
	movsd	.LC14(%rip), %xmm6
	cmpl	$1, %eax
	movsd	%xmm6, (%rdi)
.LVL512:
	je	.L990
	cmpl	$2, %eax
	movsd	%xmm6, 8(%rdi)
.LVL513:
	je	.L991
	cmpl	$3, %eax
	movsd	%xmm6, 16(%rdi)
.LVL514:
	je	.L992
	cmpl	$4, %eax
	movsd	%xmm6, 24(%rdi)
.LVL515:
	je	.L993
	cmpl	$6, %eax
	movsd	%xmm6, 32(%rdi)
.LVL516:
	jne	.L994
	movsd	%xmm6, 40(%rdi)
.LVL517:
	.loc 1 321 0
	movl	$6, %r9d
.LVL518:
.L973:
	cmpl	%esi, %eax
	je	.L974
.L972:
	movl	%esi, %r11d
	movl	%eax, %r8d
	subl	%eax, %r11d
	leal	-2(%r11), %ecx
	shrl	%ecx
	cmpl	$1, %r11d
	leal	1(%rcx), %r10d
	leal	(%r10,%r10), %ebx
	je	.L975
	subl	$4, %ecx
	leaq	(%rdi,%r8,8), %r13
	cmpl	$-6, %ecx
	ja	.L995
	shrl	$2, %ecx
	movapd	.LC15(%rip), %xmm2
	prefetcht0	640(%r13)
	leal	4(,%rcx,4), %r12d
	movl	$4, %ebp
	andl	$7, %ecx
	.loc 1 322 0
	movaps	%xmm2, 0(%r13)
	addq	$64, %r13
	movaps	%xmm2, -48(%r13)
	movaps	%xmm2, -32(%r13)
	movaps	%xmm2, -16(%r13)
	cmpl	%r12d, %ebp
	je	.L976
	testl	%ecx, %ecx
	je	.L977
	cmpl	$1, %ecx
	je	.L1068
	cmpl	$2, %ecx
	je	.L1069
	cmpl	$3, %ecx
	je	.L1070
	cmpl	$4, %ecx
	je	.L1071
	cmpl	$5, %ecx
	je	.L1072
	cmpl	$6, %ecx
	je	.L1073
	prefetcht0	640(%r13)
	movaps	%xmm2, 0(%r13)
	movl	$8, %ebp
	addq	$64, %r13
	movaps	%xmm2, -48(%r13)
	movaps	%xmm2, -32(%r13)
	movaps	%xmm2, -16(%r13)
.L1073:
	prefetcht0	640(%r13)
	addl	$4, %ebp
	addq	$64, %r13
	movaps	%xmm2, -64(%r13)
	movaps	%xmm2, -48(%r13)
	movaps	%xmm2, -32(%r13)
	movaps	%xmm2, -16(%r13)
.L1072:
	prefetcht0	640(%r13)
	addl	$4, %ebp
	addq	$64, %r13
	movaps	%xmm2, -64(%r13)
	movaps	%xmm2, -48(%r13)
	movaps	%xmm2, -32(%r13)
	movaps	%xmm2, -16(%r13)
.L1071:
	prefetcht0	640(%r13)
	addl	$4, %ebp
	addq	$64, %r13
	movaps	%xmm2, -64(%r13)
	movaps	%xmm2, -48(%r13)
	movaps	%xmm2, -32(%r13)
	movaps	%xmm2, -16(%r13)
.L1070:
	prefetcht0	640(%r13)
	addl	$4, %ebp
	addq	$64, %r13
	movaps	%xmm2, -64(%r13)
	movaps	%xmm2, -48(%r13)
	movaps	%xmm2, -32(%r13)
	movaps	%xmm2, -16(%r13)
.L1069:
	prefetcht0	640(%r13)
	addl	$4, %ebp
	addq	$64, %r13
	movaps	%xmm2, -64(%r13)
	movaps	%xmm2, -48(%r13)
	movaps	%xmm2, -32(%r13)
	movaps	%xmm2, -16(%r13)
.L1068:
	addl	$4, %ebp
	prefetcht0	640(%r13)
	addq	$64, %r13
	movaps	%xmm2, -64(%r13)
	movaps	%xmm2, -48(%r13)
	movaps	%xmm2, -32(%r13)
	movaps	%xmm2, -16(%r13)
	cmpl	%r12d, %ebp
	je	.L976
.L977:
	addl	$32, %ebp
	prefetcht0	640(%r13)
	prefetcht0	704(%r13)
	.loc 1 322 0 is_stmt 0 discriminator 3
	movaps	%xmm2, 0(%r13)
	prefetcht0	768(%r13)
	prefetcht0	832(%r13)
	prefetcht0	896(%r13)
	prefetcht0	960(%r13)
	prefetcht0	1024(%r13)
	movaps	%xmm2, 16(%r13)
	prefetcht0	1088(%r13)
	addq	$512, %r13
	movaps	%xmm2, -480(%r13)
	movaps	%xmm2, -464(%r13)
	movaps	%xmm2, -448(%r13)
	movaps	%xmm2, -432(%r13)
	movaps	%xmm2, -416(%r13)
	movaps	%xmm2, -400(%r13)
	movaps	%xmm2, -384(%r13)
	movaps	%xmm2, -368(%r13)
	movaps	%xmm2, -352(%r13)
	movaps	%xmm2, -336(%r13)
	movaps	%xmm2, -320(%r13)
	movaps	%xmm2, -304(%r13)
	movaps	%xmm2, -288(%r13)
	movaps	%xmm2, -272(%r13)
	movaps	%xmm2, -256(%r13)
	movaps	%xmm2, -240(%r13)
	movaps	%xmm2, -224(%r13)
	movaps	%xmm2, -208(%r13)
	movaps	%xmm2, -192(%r13)
	movaps	%xmm2, -176(%r13)
	movaps	%xmm2, -160(%r13)
	movaps	%xmm2, -144(%r13)
	movaps	%xmm2, -128(%r13)
	movaps	%xmm2, -112(%r13)
	movaps	%xmm2, -96(%r13)
	movaps	%xmm2, -80(%r13)
	movaps	%xmm2, -64(%r13)
	movaps	%xmm2, -48(%r13)
	movaps	%xmm2, -32(%r13)
	movaps	%xmm2, -16(%r13)
	cmpl	%r12d, %ebp
	jne	.L977
.L976:
	movl	%r12d, %r14d
	leal	1(%r12), %eax
	leaq	16(%r13), %r15
	notl	%r14d
	addl	%r10d, %r14d
	andl	$7, %r14d
	cmpl	%r10d, %eax
	.loc 1 322 0
	movaps	%xmm2, 0(%r13)
	jae	.L1092
	testl	%r14d, %r14d
	je	.L980
	cmpl	$1, %r14d
	je	.L1062
	cmpl	$2, %r14d
	je	.L1063
	cmpl	$3, %r14d
	je	.L1064
	cmpl	$4, %r14d
	je	.L1065
	cmpl	$5, %r14d
	je	.L1066
	cmpl	$6, %r14d
	je	.L1067
	movaps	%xmm2, (%r15)
	leal	2(%r12), %eax
	leaq	32(%r13), %r15
.L1067:
	movaps	%xmm2, (%r15)
	addl	$1, %eax
	addq	$16, %r15
.L1066:
	movaps	%xmm2, (%r15)
	addl	$1, %eax
	addq	$16, %r15
.L1065:
	movaps	%xmm2, (%r15)
	addl	$1, %eax
	addq	$16, %r15
.L1064:
	movaps	%xmm2, (%r15)
	addl	$1, %eax
	addq	$16, %r15
.L1063:
	movaps	%xmm2, (%r15)
	addl	$1, %eax
	addq	$16, %r15
.L1062:
	addl	$1, %eax
	addq	$16, %r15
	movaps	%xmm2, -16(%r15)
	cmpl	%r10d, %eax
	jae	.L1092
.L980:
	addl	$8, %eax
	subq	$-128, %r15
	movaps	%xmm2, -128(%r15)
	movaps	%xmm2, -112(%r15)
	movaps	%xmm2, -96(%r15)
	movaps	%xmm2, -80(%r15)
	movaps	%xmm2, -64(%r15)
	movaps	%xmm2, -48(%r15)
	movaps	%xmm2, -32(%r15)
	movaps	%xmm2, -16(%r15)
	cmpl	%r10d, %eax
	jb	.L980
.L1092:
	addl	%ebx, %r9d
	cmpl	%ebx, %r11d
	je	.L974
.L975:
	movsd	.LC14(%rip), %xmm3
	movslq	%r9d, %r8
	movsd	%xmm3, (%rdi,%r8,8)
.L974:
.LVL519:
	.loc 1 324 0 is_stmt 1
	cmpl	$1, %esi
	jle	.L997
	leaq	8(%rdi), %rbx
	movq	%rdx, 32(%rsp)
	movl	%esi, 44(%rsp)
	movl	$1, %r12d
.LVL520:
	.p2align 4,,10
	.p2align 3
.L982:
	.loc 1 325 0 discriminator 1
	testl	%r12d, %r12d
	jle	.L984
	cmpl	$8, %r12d
	jle	.L1095
	movq	32(%rsp), %rdx
	leal	-9(%r12), %esi
	.loc 1 325 0 is_stmt 0
	xorl	%r14d, %r14d
	movsd	.LC16(%rip), %xmm7
	shrl	$3, %esi
	movaps	%xmm7, 16(%rsp)
	leaq	72(%rdx), %rbp
	leal	8(,%rsi,8), %r13d
.LVL521:
	.p2align 4,,10
	.p2align 3
.L985:
	prefetcht0	0(%rbp)
	addl	$8, %r14d
	addq	$64, %rbp
	.loc 1 326 0 is_stmt 1 discriminator 3
	movsd	-136(%rbp), %xmm0
	xorpd	.LC16(%rip), %xmm0
	mulsd	8(%rsp), %xmm0
	call	exp
.LVL522:
	mulsd	(%rbx), %xmm0
	movsd	%xmm0, (%rbx)
	movsd	-128(%rbp), %xmm0
	xorpd	.LC16(%rip), %xmm0
	mulsd	8(%rsp), %xmm0
	call	exp
.LVL523:
	mulsd	(%rbx), %xmm0
	movsd	%xmm0, (%rbx)
	movsd	-120(%rbp), %xmm0
	xorpd	.LC16(%rip), %xmm0
	mulsd	8(%rsp), %xmm0
	call	exp
.LVL524:
	mulsd	(%rbx), %xmm0
	movsd	%xmm0, (%rbx)
	movsd	-112(%rbp), %xmm0
	xorpd	.LC16(%rip), %xmm0
	mulsd	8(%rsp), %xmm0
	call	exp
.LVL525:
	mulsd	(%rbx), %xmm0
	movsd	%xmm0, (%rbx)
	movsd	-104(%rbp), %xmm0
	xorpd	.LC16(%rip), %xmm0
	mulsd	8(%rsp), %xmm0
	call	exp
.LVL526:
	mulsd	(%rbx), %xmm0
	movsd	%xmm0, (%rbx)
	movsd	-96(%rbp), %xmm0
	xorpd	.LC16(%rip), %xmm0
	mulsd	8(%rsp), %xmm0
	call	exp
.LVL527:
	mulsd	(%rbx), %xmm0
	movsd	%xmm0, (%rbx)
	movsd	-88(%rbp), %xmm0
	xorpd	.LC16(%rip), %xmm0
	mulsd	8(%rsp), %xmm0
	call	exp
.LVL528:
	mulsd	(%rbx), %xmm0
	movsd	%xmm0, (%rbx)
	movsd	-80(%rbp), %xmm0
	xorpd	.LC16(%rip), %xmm0
	mulsd	8(%rsp), %xmm0
	call	exp
.LVL529:
	mulsd	(%rbx), %xmm0
	cmpl	%r13d, %r14d
	movsd	%xmm0, (%rbx)
	jne	.L985
.L986:
	movq	32(%rsp), %rcx
	movslq	%r14d, %rdi
	movl	%r14d, %r10d
	notl	%r10d
	.loc 1 325 0
	leal	1(%r14), %r15d
	addl	%r12d, %r10d
	leaq	(%rcx,%rdi,8), %r13
	andl	$3, %r10d
	movl	%r10d, 40(%rsp)
	.loc 1 326 0
	movsd	0(%r13), %xmm0
	leaq	8(%r13), %rbp
	xorpd	16(%rsp), %xmm0
	mulsd	8(%rsp), %xmm0
	call	exp
.LVL530:
	mulsd	(%rbx), %xmm0
	.loc 1 325 0
	cmpl	%r15d, %r12d
	movl	40(%rsp), %eax
	.loc 1 326 0
	movsd	%xmm0, (%rbx)
	.loc 1 325 0
	jle	.L984
	testl	%eax, %eax
	je	.L983
	cmpl	$1, %eax
	je	.L1060
	cmpl	$2, %eax
	je	.L1061
	.loc 1 326 0
	movsd	8(%r13), %xmm0
	.loc 1 325 0
	leal	2(%r14), %r15d
	leaq	16(%r13), %rbp
	.loc 1 326 0
	xorpd	16(%rsp), %xmm0
	mulsd	8(%rsp), %xmm0
	call	exp
.LVL531:
	mulsd	(%rbx), %xmm0
	movsd	%xmm0, (%rbx)
.L1061:
	movsd	0(%rbp), %xmm0
	.loc 1 325 0
	addl	$1, %r15d
	addq	$8, %rbp
	.loc 1 326 0
	xorpd	16(%rsp), %xmm0
	mulsd	8(%rsp), %xmm0
	call	exp
.LVL532:
	mulsd	(%rbx), %xmm0
	movsd	%xmm0, (%rbx)
.L1060:
	movsd	0(%rbp), %xmm0
	.loc 1 325 0
	addl	$1, %r15d
	addq	$8, %rbp
	.loc 1 326 0
	xorpd	16(%rsp), %xmm0
	mulsd	8(%rsp), %xmm0
	call	exp
.LVL533:
	mulsd	(%rbx), %xmm0
	.loc 1 325 0
	cmpl	%r15d, %r12d
	.loc 1 326 0
	movsd	%xmm0, (%rbx)
	.loc 1 325 0
	jle	.L984
.L983:
	.loc 1 326 0
	movsd	0(%rbp), %xmm0
	.loc 1 325 0
	addl	$4, %r15d
	addq	$32, %rbp
	.loc 1 326 0
	xorpd	16(%rsp), %xmm0
	mulsd	8(%rsp), %xmm0
	call	exp
.LVL534:
	mulsd	(%rbx), %xmm0
	movsd	%xmm0, (%rbx)
	movsd	-24(%rbp), %xmm0
	xorpd	16(%rsp), %xmm0
	mulsd	8(%rsp), %xmm0
	call	exp
.LVL535:
	mulsd	(%rbx), %xmm0
	movsd	%xmm0, (%rbx)
	movsd	-16(%rbp), %xmm0
	xorpd	16(%rsp), %xmm0
	mulsd	8(%rsp), %xmm0
	call	exp
.LVL536:
	mulsd	(%rbx), %xmm0
	movsd	%xmm0, (%rbx)
	movsd	-8(%rbp), %xmm0
	xorpd	16(%rsp), %xmm0
	mulsd	8(%rsp), %xmm0
	call	exp
.LVL537:
	mulsd	(%rbx), %xmm0
	.loc 1 325 0
	cmpl	%r15d, %r12d
	.loc 1 326 0
	movsd	%xmm0, (%rbx)
	.loc 1 325 0
	jg	.L983
.L984:
	.loc 1 324 0
	addl	$1, %r12d
.LVL538:
	addq	$8, %rbx
	cmpl	44(%rsp), %r12d
	jne	.L982
.LVL539:
.L997:
.LBE52:
	.loc 1 330 0
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	$1, %eax
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
.LVL540:
	.p2align 4,,10
	.p2align 3
.L1095:
	.cfi_restore_state
	movsd	.LC16(%rip), %xmm4
.LBB53:
	.loc 1 325 0
	xorl	%r14d, %r14d
	movaps	%xmm4, 16(%rsp)
	jmp	.L986
.LVL541:
.L1094:
	testl	%eax, %eax
	jne	.L988
	.loc 1 321 0
	xorl	%r9d, %r9d
	jmp	.L972
.LVL542:
.L990:
	movl	$1, %r9d
	jmp	.L973
.LVL543:
.L991:
	movl	$2, %r9d
	jmp	.L973
.LVL544:
.L992:
	movl	$3, %r9d
	jmp	.L973
.LVL545:
.L993:
	movl	$4, %r9d
	jmp	.L973
.LVL546:
.L994:
	movl	$5, %r9d
	jmp	.L973
.LVL547:
.L995:
	xorl	%r12d, %r12d
	movapd	.LC15(%rip), %xmm2
	jmp	.L976
.LBE53:
	.cfi_endproc
.LFE81:
	.size	_Z16Discount_FactorsPdidS_, .-_Z16Discount_FactorsPdidS_
	.section	.text.unlikely
.LCOLDE17:
	.text
.LHOTE17:
	.section	.text.unlikely
.LCOLDB19:
	.text
.LHOTB19:
	.p2align 4,,15
	.globl	_Z20Discount_Factors_optPdidS_
	.type	_Z20Discount_Factors_optPdidS_, @function
_Z20Discount_Factors_optPdidS_:
.LFB82:
	.loc 1 336 0
	.cfi_startproc
.LVL548:
.LBB54:
	.loc 1 341 0
	pxor	%xmm1, %xmm1
.LBE54:
	.loc 1 336 0
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
.LBB55:
	.loc 1 344 0
	leal	-2(%rsi), %r14d
.LBE55:
	.loc 1 336 0
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%esi, %r12d
.LBB56:
	.loc 1 341 0
	cvtsi2sd	%esi, %xmm1
.LBE56:
	.loc 1 336 0
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
.LBB57:
	.loc 1 344 0
	movslq	%r14d, %rax
.LBE57:
	.loc 1 336 0
	movq	%rdi, %rbx
.LBB58:
	.loc 1 344 0
	xorl	%edi, %edi
.LVL549:
.LBE58:
	.loc 1 336 0
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
.LBB59:
	.loc 1 344 0
	movq	%rax, %rsi
.LVL550:
.LBE59:
	.loc 1 336 0
	movq	%rdx, 16(%rsp)
.LBB60:
	.loc 1 344 0
	movq	%rax, 8(%rsp)
	.loc 1 341 0
	divsd	%xmm1, %xmm0
.LVL551:
	movsd	%xmm0, (%rsp)
.LVL552:
	.loc 1 344 0
	call	_Z7dvectorll
.LVL553:
	.loc 1 347 0
	testl	%r12d, %r12d
	.loc 1 344 0
	movq	%rax, %rbp
.LVL554:
	.loc 1 347 0
	movq	16(%rsp), %rdx
	movsd	(%rsp), %xmm0
	jle	.L1098
	movq	%rbx, %rcx
	salq	$60, %rcx
	shrq	$63, %rcx
	cmpl	%r12d, %ecx
	cmova	%r12d, %ecx
	cmpl	$6, %r12d
	jg	.L1415
	movl	%r12d, %ecx
.L1131:
	.loc 1 348 0
	movsd	.LC14(%rip), %xmm4
	cmpl	$1, %ecx
	movsd	%xmm4, (%rbx)
.LVL555:
	je	.L1133
	cmpl	$2, %ecx
	movsd	%xmm4, 8(%rbx)
.LVL556:
	je	.L1134
	cmpl	$3, %ecx
	movsd	%xmm4, 16(%rbx)
.LVL557:
	je	.L1135
	cmpl	$4, %ecx
	movsd	%xmm4, 24(%rbx)
.LVL558:
	je	.L1136
	cmpl	$6, %ecx
	movsd	%xmm4, 32(%rbx)
.LVL559:
	jne	.L1137
	movsd	%xmm4, 40(%rbx)
.LVL560:
	.loc 1 347 0
	movl	$6, %esi
.LVL561:
.L1102:
	cmpl	%ecx, %r12d
	je	.L1103
.L1101:
	movl	%r12d, %r8d
	movl	%ecx, %r10d
	subl	%ecx, %r8d
	leal	-2(%r8), %r13d
	shrl	%r13d
	cmpl	$1, %r8d
	leal	1(%r13), %edi
	leal	(%rdi,%rdi), %r9d
	je	.L1104
	subl	$4, %r13d
	leaq	(%rbx,%r10,8), %r14
	cmpl	$-6, %r13d
	ja	.L1138
	shrl	$2, %r13d
	movapd	.LC15(%rip), %xmm2
	prefetcht0	640(%r14)
	leal	4(,%r13,4), %r11d
	movl	$4, %r15d
	andl	$7, %r13d
	.loc 1 348 0
	movaps	%xmm2, (%r14)
	addq	$64, %r14
	movaps	%xmm2, -48(%r14)
	movaps	%xmm2, -32(%r14)
	movaps	%xmm2, -16(%r14)
	cmpl	%r11d, %r15d
	je	.L1105
	testl	%r13d, %r13d
	je	.L1106
	cmpl	$1, %r13d
	je	.L1339
	cmpl	$2, %r13d
	je	.L1340
	cmpl	$3, %r13d
	je	.L1341
	cmpl	$4, %r13d
	je	.L1342
	cmpl	$5, %r13d
	je	.L1343
	cmpl	$6, %r13d
	je	.L1344
	prefetcht0	640(%r14)
	movaps	%xmm2, (%r14)
	movl	$8, %r15d
	addq	$64, %r14
	movaps	%xmm2, -48(%r14)
	movaps	%xmm2, -32(%r14)
	movaps	%xmm2, -16(%r14)
.L1344:
	prefetcht0	640(%r14)
	addl	$4, %r15d
	addq	$64, %r14
	movaps	%xmm2, -64(%r14)
	movaps	%xmm2, -48(%r14)
	movaps	%xmm2, -32(%r14)
	movaps	%xmm2, -16(%r14)
.L1343:
	prefetcht0	640(%r14)
	addl	$4, %r15d
	addq	$64, %r14
	movaps	%xmm2, -64(%r14)
	movaps	%xmm2, -48(%r14)
	movaps	%xmm2, -32(%r14)
	movaps	%xmm2, -16(%r14)
.L1342:
	prefetcht0	640(%r14)
	addl	$4, %r15d
	addq	$64, %r14
	movaps	%xmm2, -64(%r14)
	movaps	%xmm2, -48(%r14)
	movaps	%xmm2, -32(%r14)
	movaps	%xmm2, -16(%r14)
.L1341:
	prefetcht0	640(%r14)
	addl	$4, %r15d
	addq	$64, %r14
	movaps	%xmm2, -64(%r14)
	movaps	%xmm2, -48(%r14)
	movaps	%xmm2, -32(%r14)
	movaps	%xmm2, -16(%r14)
.L1340:
	prefetcht0	640(%r14)
	addl	$4, %r15d
	addq	$64, %r14
	movaps	%xmm2, -64(%r14)
	movaps	%xmm2, -48(%r14)
	movaps	%xmm2, -32(%r14)
	movaps	%xmm2, -16(%r14)
.L1339:
	addl	$4, %r15d
	prefetcht0	640(%r14)
	addq	$64, %r14
	movaps	%xmm2, -64(%r14)
	movaps	%xmm2, -48(%r14)
	movaps	%xmm2, -32(%r14)
	movaps	%xmm2, -16(%r14)
	cmpl	%r11d, %r15d
	je	.L1105
.L1106:
	addl	$32, %r15d
	prefetcht0	640(%r14)
	prefetcht0	704(%r14)
	.loc 1 348 0 is_stmt 0 discriminator 3
	movaps	%xmm2, (%r14)
	prefetcht0	768(%r14)
	prefetcht0	832(%r14)
	prefetcht0	896(%r14)
	prefetcht0	960(%r14)
	prefetcht0	1024(%r14)
	movaps	%xmm2, 16(%r14)
	prefetcht0	1088(%r14)
	addq	$512, %r14
	movaps	%xmm2, -480(%r14)
	movaps	%xmm2, -464(%r14)
	movaps	%xmm2, -448(%r14)
	movaps	%xmm2, -432(%r14)
	movaps	%xmm2, -416(%r14)
	movaps	%xmm2, -400(%r14)
	movaps	%xmm2, -384(%r14)
	movaps	%xmm2, -368(%r14)
	movaps	%xmm2, -352(%r14)
	movaps	%xmm2, -336(%r14)
	movaps	%xmm2, -320(%r14)
	movaps	%xmm2, -304(%r14)
	movaps	%xmm2, -288(%r14)
	movaps	%xmm2, -272(%r14)
	movaps	%xmm2, -256(%r14)
	movaps	%xmm2, -240(%r14)
	movaps	%xmm2, -224(%r14)
	movaps	%xmm2, -208(%r14)
	movaps	%xmm2, -192(%r14)
	movaps	%xmm2, -176(%r14)
	movaps	%xmm2, -160(%r14)
	movaps	%xmm2, -144(%r14)
	movaps	%xmm2, -128(%r14)
	movaps	%xmm2, -112(%r14)
	movaps	%xmm2, -96(%r14)
	movaps	%xmm2, -80(%r14)
	movaps	%xmm2, -64(%r14)
	movaps	%xmm2, -48(%r14)
	movaps	%xmm2, -32(%r14)
	movaps	%xmm2, -16(%r14)
	cmpl	%r11d, %r15d
	jne	.L1106
	.p2align 4,,10
	.p2align 3
.L1105:
	movl	%r11d, %eax
.LVL562:
	leal	1(%r11), %r10d
	leaq	16(%r14), %rcx
	notl	%eax
	addl	%edi, %eax
	andl	$7, %eax
	cmpl	%r10d, %edi
	.loc 1 348 0
	movaps	%xmm2, (%r14)
	jbe	.L1394
	testl	%eax, %eax
	je	.L1108
	cmpl	$1, %eax
	je	.L1333
	cmpl	$2, %eax
	je	.L1334
	cmpl	$3, %eax
	je	.L1335
	cmpl	$4, %eax
	je	.L1336
	cmpl	$5, %eax
	je	.L1337
	cmpl	$6, %eax
	je	.L1338
	movaps	%xmm2, (%rcx)
	leal	2(%r11), %r10d
	leaq	32(%r14), %rcx
.L1338:
	movaps	%xmm2, (%rcx)
	addl	$1, %r10d
	addq	$16, %rcx
.L1337:
	movaps	%xmm2, (%rcx)
	addl	$1, %r10d
	addq	$16, %rcx
.L1336:
	movaps	%xmm2, (%rcx)
	addl	$1, %r10d
	addq	$16, %rcx
.L1335:
	movaps	%xmm2, (%rcx)
	addl	$1, %r10d
	addq	$16, %rcx
.L1334:
	movaps	%xmm2, (%rcx)
	addl	$1, %r10d
	addq	$16, %rcx
.L1333:
	addl	$1, %r10d
	addq	$16, %rcx
	movaps	%xmm2, -16(%rcx)
	cmpl	%r10d, %edi
	jbe	.L1394
.L1108:
	addl	$8, %r10d
	subq	$-128, %rcx
	movaps	%xmm2, -128(%rcx)
	movaps	%xmm2, -112(%rcx)
	movaps	%xmm2, -96(%rcx)
	movaps	%xmm2, -80(%rcx)
	movaps	%xmm2, -64(%rcx)
	movaps	%xmm2, -48(%rcx)
	movaps	%xmm2, -32(%rcx)
	movaps	%xmm2, -16(%rcx)
	cmpl	%r10d, %edi
	ja	.L1108
	.p2align 4,,10
	.p2align 3
.L1394:
	addl	%r9d, %esi
	cmpl	%r9d, %r8d
	je	.L1103
.L1104:
	movsd	.LC14(%rip), %xmm3
	movslq	%esi, %r13
	movsd	%xmm3, (%rbx,%r13,8)
.L1103:
.LVL563:
	.loc 1 351 0 is_stmt 1
	movl	%r12d, %r15d
	subl	$1, %r15d
	movl	%r15d, (%rsp)
.LVL564:
	je	.L1110
	leaq	16(%rbp), %rdi
	leaq	16(%rdx), %rax
	cmpq	%rdi, %rdx
	setae	%r11b
	cmpq	%rax, %rbp
	setae	%cl
	orb	%cl, %r11b
	je	.L1111
	cmpl	$10, %r15d
	jbe	.L1111
	movq	%rdx, %r8
	salq	$60, %r8
	shrq	$63, %r8
	cmpl	%r8d, %r15d
	cmovbe	%r15d, %r8d
	xorl	%r9d, %r9d
	testl	%r8d, %r8d
	je	.L1112
	movsd	(%rdx), %xmm8
	movb	$1, %r9b
	movsd	.LC16(%rip), %xmm9
	xorpd	%xmm9, %xmm8
	mulsd	%xmm0, %xmm8
	movsd	%xmm8, 0(%rbp)
.LVL565:
.L1112:
	movl	(%rsp), %esi
	movl	%r8d, %eax
	movl	$4, %r10d
	salq	$3, %rax
	movapd	%xmm0, %xmm1
	movapd	.LC18(%rip), %xmm6
	subl	%r8d, %esi
	leaq	(%rdx,%rax), %r8
	addq	%rbp, %rax
	unpcklpd	%xmm1, %xmm1
	leal	-2(%rsi), %edi
	movapd	(%r8), %xmm10
	prefetcht0	368(%r8)
	movl	%esi, %r14d
	shrl	%edi
	leaq	64(%r8), %rcx
	leaq	64(%rax), %rsi
	xorpd	%xmm6, %xmm10
	leal	1(%rdi), %r15d
	leal	-4(%rdi), %edi
	leal	(%r15,%r15), %r13d
	mulpd	%xmm1, %xmm10
	shrl	$2, %edi
	leal	4(,%rdi,4), %r11d
	andl	$1, %edi
	cmpl	%r11d, %r10d
	movups	%xmm10, (%rax)
	movapd	16(%r8), %xmm11
	xorpd	%xmm6, %xmm11
	mulpd	%xmm1, %xmm11
	movups	%xmm11, 16(%rax)
	movapd	32(%r8), %xmm12
	xorpd	%xmm6, %xmm12
	mulpd	%xmm1, %xmm12
	movups	%xmm12, 32(%rax)
	movapd	48(%r8), %xmm13
	xorpd	%xmm6, %xmm13
	mulpd	%xmm1, %xmm13
	movups	%xmm13, 48(%rax)
	je	.L1395
	testl	%edi, %edi
	je	.L1113
	movapd	(%rcx), %xmm14
	prefetcht0	432(%r8)
	movl	$8, %r10d
	cmpl	%r11d, %r10d
	xorpd	%xmm6, %xmm14
	mulpd	%xmm1, %xmm14
	movups	%xmm14, (%rsi)
	movapd	16(%rcx), %xmm15
	xorpd	%xmm6, %xmm15
	mulpd	%xmm1, %xmm15
	movups	%xmm15, 16(%rsi)
	movapd	32(%rcx), %xmm4
	xorpd	%xmm6, %xmm4
	mulpd	%xmm1, %xmm4
	movups	%xmm4, 32(%rsi)
	movapd	48(%rcx), %xmm5
	leaq	128(%r8), %rcx
	xorpd	%xmm6, %xmm5
	mulpd	%xmm1, %xmm5
	movups	%xmm5, 48(%rsi)
	leaq	128(%rax), %rsi
	je	.L1395
.L1113:
	prefetcht0	368(%rcx)
	prefetcht0	432(%rcx)
	addl	$8, %r10d
	subq	$-128, %rcx
	subq	$-128, %rsi
	.loc 1 351 0 is_stmt 0 discriminator 3
	movapd	-128(%rcx), %xmm7
	xorpd	%xmm6, %xmm7
	mulpd	%xmm1, %xmm7
	movups	%xmm7, -128(%rsi)
	movapd	-112(%rcx), %xmm2
	xorpd	%xmm6, %xmm2
	mulpd	%xmm1, %xmm2
	movups	%xmm2, -112(%rsi)
	movapd	-96(%rcx), %xmm3
	xorpd	%xmm6, %xmm3
	mulpd	%xmm1, %xmm3
	movups	%xmm3, -96(%rsi)
	movapd	-80(%rcx), %xmm8
	xorpd	%xmm6, %xmm8
	mulpd	%xmm1, %xmm8
	movups	%xmm8, -80(%rsi)
	movapd	-64(%rcx), %xmm9
	xorpd	%xmm6, %xmm9
	mulpd	%xmm1, %xmm9
	movups	%xmm9, -64(%rsi)
	movapd	-48(%rcx), %xmm10
	xorpd	%xmm6, %xmm10
	mulpd	%xmm1, %xmm10
	movups	%xmm10, -48(%rsi)
	movapd	-32(%rcx), %xmm11
	xorpd	%xmm6, %xmm11
	mulpd	%xmm1, %xmm11
	movups	%xmm11, -32(%rsi)
	movapd	-16(%rcx), %xmm12
	xorpd	%xmm6, %xmm12
	mulpd	%xmm1, %xmm12
	movups	%xmm12, -16(%rsi)
	cmpl	%r11d, %r10d
	jne	.L1113
.L1395:
	movl	%r11d, %r8d
	leal	1(%r11), %edi
	movl	$16, %eax
	.loc 1 351 0
	movapd	(%rcx), %xmm13
	notl	%r8d
	addl	%r15d, %r8d
	xorpd	%xmm6, %xmm13
	andl	$7, %r8d
	cmpl	%edi, %r15d
	mulpd	%xmm1, %xmm13
	movups	%xmm13, (%rsi)
	jbe	.L1397
	testl	%r8d, %r8d
	je	.L1116
	cmpl	$1, %r8d
	je	.L1327
	cmpl	$2, %r8d
	je	.L1328
	cmpl	$3, %r8d
	je	.L1329
	cmpl	$4, %r8d
	je	.L1330
	cmpl	$5, %r8d
	je	.L1331
	cmpl	$6, %r8d
	je	.L1332
	movapd	16(%rcx), %xmm14
	leal	2(%r11), %edi
	movl	$32, %eax
	xorpd	%xmm6, %xmm14
	mulpd	%xmm1, %xmm14
	movups	%xmm14, 16(%rsi)
.L1332:
	addl	$1, %edi
	movapd	(%rcx,%rax), %xmm15
	xorpd	%xmm6, %xmm15
	mulpd	%xmm1, %xmm15
	movups	%xmm15, (%rsi,%rax)
	addq	$16, %rax
.L1331:
	addl	$1, %edi
	movapd	(%rcx,%rax), %xmm4
	xorpd	%xmm6, %xmm4
	mulpd	%xmm1, %xmm4
	movups	%xmm4, (%rsi,%rax)
	addq	$16, %rax
.L1330:
	addl	$1, %edi
	movapd	(%rcx,%rax), %xmm5
	xorpd	%xmm6, %xmm5
	mulpd	%xmm1, %xmm5
	movups	%xmm5, (%rsi,%rax)
	addq	$16, %rax
.L1329:
	addl	$1, %edi
	movapd	(%rcx,%rax), %xmm7
	xorpd	%xmm6, %xmm7
	mulpd	%xmm1, %xmm7
	movups	%xmm7, (%rsi,%rax)
	addq	$16, %rax
.L1328:
	addl	$1, %edi
	movapd	(%rcx,%rax), %xmm2
	xorpd	%xmm6, %xmm2
	mulpd	%xmm1, %xmm2
	movups	%xmm2, (%rsi,%rax)
	addq	$16, %rax
.L1327:
	addl	$1, %edi
	movapd	(%rcx,%rax), %xmm3
	xorpd	%xmm6, %xmm3
	mulpd	%xmm1, %xmm3
	movups	%xmm3, (%rsi,%rax)
	addq	$16, %rax
	cmpl	%edi, %r15d
	jbe	.L1397
.L1116:
	addl	$8, %edi
	movapd	(%rcx,%rax), %xmm8
	xorpd	%xmm6, %xmm8
	mulpd	%xmm1, %xmm8
	movups	%xmm8, (%rsi,%rax)
	movapd	16(%rcx,%rax), %xmm9
	xorpd	%xmm6, %xmm9
	mulpd	%xmm1, %xmm9
	movups	%xmm9, 16(%rsi,%rax)
	movapd	32(%rcx,%rax), %xmm10
	xorpd	%xmm6, %xmm10
	mulpd	%xmm1, %xmm10
	movups	%xmm10, 32(%rsi,%rax)
	movapd	48(%rcx,%rax), %xmm11
	xorpd	%xmm6, %xmm11
	mulpd	%xmm1, %xmm11
	movups	%xmm11, 48(%rsi,%rax)
	movapd	64(%rcx,%rax), %xmm12
	xorpd	%xmm6, %xmm12
	mulpd	%xmm1, %xmm12
	movups	%xmm12, 64(%rsi,%rax)
	movapd	80(%rcx,%rax), %xmm13
	xorpd	%xmm6, %xmm13
	mulpd	%xmm1, %xmm13
	movups	%xmm13, 80(%rsi,%rax)
	movapd	96(%rcx,%rax), %xmm14
	xorpd	%xmm6, %xmm14
	mulpd	%xmm1, %xmm14
	movups	%xmm14, 96(%rsi,%rax)
	movapd	112(%rcx,%rax), %xmm15
	xorpd	%xmm6, %xmm15
	mulpd	%xmm1, %xmm15
	movups	%xmm15, 112(%rsi,%rax)
	subq	$-128, %rax
	cmpl	%edi, %r15d
	ja	.L1116
.L1397:
	movl	%r13d, %eax
	addl	%r9d, %eax
	cmpl	%r13d, %r14d
	je	.L1413
.LVL566:
	cltq
	movsd	.LC16(%rip), %xmm6
	movsd	(%rdx,%rax,8), %xmm1
	xorpd	%xmm6, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 0(%rbp,%rax,8)
.LVL567:
.L1413:
	leal	-8(%r12), %r15d
.LVL568:
.L1121:
	cmpl	$1, %r15d
	jle	.L1141
	leaq	88(%rbp), %r14
	xorl	%r13d, %r13d
	.p2align 4,,10
	.p2align 3
.L1123:
	.loc 1 352 0 is_stmt 1 discriminator 3
	movsd	-88(%r14), %xmm0
	prefetcht0	(%r14)
	addl	$8, %r13d
	addq	$64, %r14
	call	exp
.LVL569:
	movsd	%xmm0, -152(%r14)
	movsd	-144(%r14), %xmm0
	call	exp
.LVL570:
	movsd	%xmm0, -144(%r14)
	movsd	-136(%r14), %xmm0
	call	exp
.LVL571:
	movsd	%xmm0, -136(%r14)
	movsd	-128(%r14), %xmm0
	call	exp
.LVL572:
	movsd	%xmm0, -128(%r14)
	movsd	-120(%r14), %xmm0
	call	exp
.LVL573:
	movsd	%xmm0, -120(%r14)
	movsd	-112(%r14), %xmm0
	call	exp
.LVL574:
	movsd	%xmm0, -112(%r14)
	movsd	-104(%r14), %xmm0
	call	exp
.LVL575:
	movsd	%xmm0, -104(%r14)
	movsd	-96(%r14), %xmm0
	call	exp
.LVL576:
	leal	1(%r13), %edx
	movsd	%xmm0, -96(%r14)
	cmpl	%edx, %r15d
	jg	.L1123
.L1122:
	movl	%r13d, %r8d
	movslq	%r13d, %rax
	.loc 1 352 0 is_stmt 0
	leal	1(%r13), %r14d
	notl	%r8d
	addl	(%rsp), %r8d
	leaq	0(%rbp,%rax,8), %r15
	movsd	(%r15), %xmm0
	movq	%r15, 16(%rsp)
.LVL577:
	andl	$7, %r8d
	movl	%r8d, 28(%rsp)
	call	exp
.LVL578:
	cmpl	%r14d, (%rsp)
	movq	16(%rsp), %r9
	movl	28(%rsp), %edi
	movsd	%xmm0, (%r9)
	leaq	8(%r9), %r15
	jle	.L1110
	testl	%edi, %edi
	movq	%r9, 16(%rsp)
	je	.L1124
	cmpl	$1, %edi
	je	.L1315
	cmpl	$2, %edi
	je	.L1316
	cmpl	$3, %edi
	je	.L1317
	cmpl	$4, %edi
	je	.L1318
	cmpl	$5, %edi
	je	.L1319
	cmpl	$6, %edi
	je	.L1320
	movsd	(%r15), %xmm0
	leal	2(%r13), %r14d
	call	exp
.LVL579:
	movq	16(%rsp), %rsi
	movsd	%xmm0, (%r15)
	leaq	16(%rsi), %r15
.L1320:
	movsd	(%r15), %xmm0
	addl	$1, %r14d
	addq	$8, %r15
	call	exp
.LVL580:
	movsd	%xmm0, -8(%r15)
.L1319:
	movsd	(%r15), %xmm0
	addl	$1, %r14d
	addq	$8, %r15
	call	exp
.LVL581:
	movsd	%xmm0, -8(%r15)
.L1318:
	movsd	(%r15), %xmm0
	addl	$1, %r14d
	addq	$8, %r15
	call	exp
.LVL582:
	movsd	%xmm0, -8(%r15)
.L1317:
	movsd	(%r15), %xmm0
	addl	$1, %r14d
	addq	$8, %r15
	call	exp
.LVL583:
	movsd	%xmm0, -8(%r15)
.L1316:
	movsd	(%r15), %xmm0
	addl	$1, %r14d
	addq	$8, %r15
	call	exp
.LVL584:
	movsd	%xmm0, -8(%r15)
.L1315:
	movsd	(%r15), %xmm0
	addl	$1, %r14d
	addq	$8, %r15
	call	exp
.LVL585:
	movsd	%xmm0, -8(%r15)
	cmpl	%r14d, (%rsp)
	jle	.L1110
.L1124:
	movsd	(%r15), %xmm0
	addl	$8, %r14d
	addq	$64, %r15
	call	exp
.LVL586:
	movsd	%xmm0, -64(%r15)
	movsd	-56(%r15), %xmm0
	call	exp
.LVL587:
	movsd	%xmm0, -56(%r15)
	movsd	-48(%r15), %xmm0
	call	exp
.LVL588:
	movsd	%xmm0, -48(%r15)
	movsd	-40(%r15), %xmm0
	call	exp
.LVL589:
	movsd	%xmm0, -40(%r15)
	movsd	-32(%r15), %xmm0
	call	exp
.LVL590:
	movsd	%xmm0, -32(%r15)
	movsd	-24(%r15), %xmm0
	call	exp
.LVL591:
	movsd	%xmm0, -24(%r15)
	movsd	-16(%r15), %xmm0
	call	exp
.LVL592:
	movsd	%xmm0, -16(%r15)
	movsd	-8(%r15), %xmm0
	call	exp
.LVL593:
	movsd	%xmm0, -8(%r15)
	cmpl	%r14d, (%rsp)
	jg	.L1124
.L1110:
.LVL594:
	.loc 1 354 0 is_stmt 1
	cmpl	$1, %r12d
	jle	.L1098
	addq	$8, %rbx
.LVL595:
	movl	$1, %r9d
.LVL596:
	.p2align 4,,10
	.p2align 3
.L1125:
	.loc 1 355 0 discriminator 1
	testl	%r9d, %r9d
	jle	.L1127
	.loc 1 355 0 is_stmt 0
	xorl	%r13d, %r13d
	cmpl	$8, %r9d
	movsd	(%rbx), %xmm0
	jle	.L1129
	.loc 1 356 0 is_stmt 1
	mulsd	0(%rbp), %xmm0
	leaq	200(%rbp), %rcx
	leal	-9(%r9), %r10d
	movl	$8, %r13d
	leaq	264(%rbp), %rax
	prefetcht0	(%rcx)
	shrl	$3, %r10d
	leal	8(,%r10,8), %r11d
	andl	$1, %r10d
.LVL597:
	cmpl	%r11d, %r13d
	movsd	%xmm0, (%rbx)
	mulsd	8(%rbp), %xmm0
	movsd	%xmm0, (%rbx)
	mulsd	16(%rbp), %xmm0
	movsd	%xmm0, (%rbx)
	mulsd	24(%rbp), %xmm0
	movsd	%xmm0, (%rbx)
	mulsd	32(%rbp), %xmm0
	movsd	%xmm0, (%rbx)
	mulsd	40(%rbp), %xmm0
	movsd	%xmm0, (%rbx)
	mulsd	48(%rbp), %xmm0
	movsd	%xmm0, (%rbx)
	mulsd	56(%rbp), %xmm0
	movsd	%xmm0, (%rbx)
.LVL598:
	je	.L1129
	testl	%r10d, %r10d
	je	.L1128
	mulsd	-200(%rax), %xmm0
	prefetcht0	(%rax)
	movl	$16, %r13d
	cmpl	%r11d, %r13d
	movsd	%xmm0, (%rbx)
.LVL599:
	mulsd	-192(%rax), %xmm0
	movsd	%xmm0, (%rbx)
.LVL600:
	mulsd	-184(%rax), %xmm0
	movsd	%xmm0, (%rbx)
.LVL601:
	mulsd	-176(%rax), %xmm0
	movsd	%xmm0, (%rbx)
.LVL602:
	mulsd	-168(%rax), %xmm0
	movsd	%xmm0, (%rbx)
.LVL603:
	mulsd	-160(%rax), %xmm0
	movsd	%xmm0, (%rbx)
.LVL604:
	mulsd	-152(%rax), %xmm0
	movsd	%xmm0, (%rbx)
.LVL605:
	mulsd	-144(%rax), %xmm0
	leaq	328(%rbp), %rax
	movsd	%xmm0, (%rbx)
.LVL606:
	je	.L1129
.LVL607:
.L1128:
	.loc 1 356 0 is_stmt 0 discriminator 3
	mulsd	-200(%rax), %xmm0
	prefetcht0	(%rax)
	leaq	64(%rax), %rdx
	addl	$16, %r13d
	subq	$-128, %rax
	prefetcht0	(%rdx)
	movsd	%xmm0, (%rbx)
	mulsd	-320(%rax), %xmm0
	movsd	%xmm0, (%rbx)
	mulsd	-312(%rax), %xmm0
	movsd	%xmm0, (%rbx)
	mulsd	-304(%rax), %xmm0
	movsd	%xmm0, (%rbx)
	mulsd	-296(%rax), %xmm0
	movsd	%xmm0, (%rbx)
	mulsd	-288(%rax), %xmm0
	movsd	%xmm0, (%rbx)
	mulsd	-280(%rax), %xmm0
	movsd	%xmm0, (%rbx)
	mulsd	-272(%rax), %xmm0
	movsd	%xmm0, (%rbx)
	mulsd	-264(%rax), %xmm0
	movsd	%xmm0, (%rbx)
	mulsd	-256(%rax), %xmm0
	movsd	%xmm0, (%rbx)
	mulsd	-248(%rax), %xmm0
	movsd	%xmm0, (%rbx)
	mulsd	-240(%rax), %xmm0
	movsd	%xmm0, (%rbx)
	mulsd	-232(%rax), %xmm0
	movsd	%xmm0, (%rbx)
	mulsd	-224(%rax), %xmm0
	movsd	%xmm0, (%rbx)
	mulsd	-216(%rax), %xmm0
	movsd	%xmm0, (%rbx)
	mulsd	-208(%rax), %xmm0
	cmpl	%r11d, %r13d
	movsd	%xmm0, (%rbx)
	jne	.L1128
.L1129:
	movslq	%r13d, %r8
	movl	%r13d, %edi
	.loc 1 355 0 is_stmt 1
	leal	1(%r13), %esi
	leaq	0(%rbp,%r8,8), %r14
	notl	%edi
	addl	%r9d, %edi
	.loc 1 356 0
	mulsd	(%r14), %xmm0
	andl	$7, %edi
	.loc 1 355 0
	cmpl	%esi, %r9d
	leaq	8(%r14), %r15
	.loc 1 356 0
	movsd	%xmm0, (%rbx)
	.loc 1 355 0
	jle	.L1127
	testl	%edi, %edi
	je	.L1126
	cmpl	$1, %edi
	je	.L1309
	cmpl	$2, %edi
	je	.L1310
	cmpl	$3, %edi
	je	.L1311
	cmpl	$4, %edi
	je	.L1312
	cmpl	$5, %edi
	je	.L1313
	cmpl	$6, %edi
	je	.L1314
	.loc 1 356 0
	mulsd	8(%r14), %xmm0
	.loc 1 355 0
	leal	2(%r13), %esi
	leaq	16(%r14), %r15
	.loc 1 356 0
	movsd	%xmm0, (%rbx)
.L1314:
	mulsd	(%r15), %xmm0
	.loc 1 355 0
	addl	$1, %esi
	addq	$8, %r15
	.loc 1 356 0
	movsd	%xmm0, (%rbx)
.L1313:
	mulsd	(%r15), %xmm0
	.loc 1 355 0
	addl	$1, %esi
	addq	$8, %r15
	.loc 1 356 0
	movsd	%xmm0, (%rbx)
.L1312:
	mulsd	(%r15), %xmm0
	.loc 1 355 0
	addl	$1, %esi
	addq	$8, %r15
	.loc 1 356 0
	movsd	%xmm0, (%rbx)
.L1311:
	mulsd	(%r15), %xmm0
	.loc 1 355 0
	addl	$1, %esi
	addq	$8, %r15
	.loc 1 356 0
	movsd	%xmm0, (%rbx)
.L1310:
	mulsd	(%r15), %xmm0
	.loc 1 355 0
	addl	$1, %esi
	addq	$8, %r15
	.loc 1 356 0
	movsd	%xmm0, (%rbx)
.L1309:
	mulsd	(%r15), %xmm0
	.loc 1 355 0
	addl	$1, %esi
	addq	$8, %r15
	cmpl	%esi, %r9d
	.loc 1 356 0
	movsd	%xmm0, (%rbx)
	.loc 1 355 0
	jle	.L1127
.L1126:
	.loc 1 356 0
	mulsd	(%r15), %xmm0
	.loc 1 355 0
	addl	$8, %esi
	addq	$64, %r15
	.loc 1 356 0
	movsd	%xmm0, (%rbx)
	mulsd	-56(%r15), %xmm0
	movsd	%xmm0, (%rbx)
	mulsd	-48(%r15), %xmm0
	movsd	%xmm0, (%rbx)
	mulsd	-40(%r15), %xmm0
	movsd	%xmm0, (%rbx)
	mulsd	-32(%r15), %xmm0
	movsd	%xmm0, (%rbx)
	mulsd	-24(%r15), %xmm0
	movsd	%xmm0, (%rbx)
	mulsd	-16(%r15), %xmm0
	movsd	%xmm0, (%rbx)
	mulsd	-8(%r15), %xmm0
	.loc 1 355 0
	cmpl	%esi, %r9d
	.loc 1 356 0
	movsd	%xmm0, (%rbx)
	.loc 1 355 0
	jg	.L1126
.L1127:
	.loc 1 354 0
	addl	$1, %r9d
.LVL608:
	addq	$8, %rbx
	cmpl	%r12d, %r9d
	jne	.L1125
.LVL609:
.L1098:
	.loc 1 358 0
	movq	8(%rsp), %rdx
	movq	%rbp, %rdi
	xorl	%esi, %esi
	call	_Z12free_dvectorPdll
.LVL610:
.LBE60:
	.loc 1 361 0
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
.LVL611:
	popq	%r12
	.cfi_def_cfa_offset 32
.LVL612:
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL613:
	.p2align 4,,10
	.p2align 3
.L1415:
	.cfi_restore_state
	testl	%ecx, %ecx
	jne	.L1131
.LBB61:
	.loc 1 347 0
	xorl	%esi, %esi
	jmp	.L1101
.LVL614:
	.p2align 4,,10
	.p2align 3
.L1111:
	leal	-8(%r12), %r15d
	cmpl	$1, %r15d
	jle	.L1140
	leaq	160(%rdx), %r10
	leaq	160(%rbp), %r11
	.loc 1 351 0
	xorl	%r13d, %r13d
	movsd	.LC16(%rip), %xmm11
.LVL615:
	.p2align 4,,10
	.p2align 3
.L1119:
	movsd	-160(%r10), %xmm4
	prefetcht0	(%r10)
	addl	$8, %r13d
.LVL616:
	leal	1(%r13), %r8d
	prefetcht0	(%r11)
	addq	$64, %r10
	xorpd	%xmm11, %xmm4
	addq	$64, %r11
	mulsd	%xmm0, %xmm4
	movsd	%xmm4, -224(%r11)
.LVL617:
	movsd	-216(%r10), %xmm5
	xorpd	%xmm11, %xmm5
	mulsd	%xmm0, %xmm5
	movsd	%xmm5, -216(%r11)
	movsd	-208(%r10), %xmm7
	xorpd	%xmm11, %xmm7
	mulsd	%xmm0, %xmm7
	movsd	%xmm7, -208(%r11)
	movsd	-200(%r10), %xmm2
	xorpd	%xmm11, %xmm2
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, -200(%r11)
	movsd	-192(%r10), %xmm3
	xorpd	%xmm11, %xmm3
	mulsd	%xmm0, %xmm3
	movsd	%xmm3, -192(%r11)
	movsd	-184(%r10), %xmm8
	xorpd	%xmm11, %xmm8
	mulsd	%xmm0, %xmm8
	movsd	%xmm8, -184(%r11)
	movsd	-176(%r10), %xmm9
	xorpd	%xmm11, %xmm9
	mulsd	%xmm0, %xmm9
	movsd	%xmm9, -176(%r11)
.LVL618:
	movsd	-168(%r10), %xmm10
	xorpd	%xmm11, %xmm10
	mulsd	%xmm0, %xmm10
	movsd	%xmm10, -168(%r11)
	cmpl	%r15d, %r8d
	jl	.L1119
.LVL619:
.L1118:
	movslq	%r13d, %r14
	movl	(%rsp), %r9d
	leal	1(%r13), %ecx
	salq	$3, %r14
	movl	$1, %eax
	addq	%r14, %rdx
	addq	%rbp, %r14
	movsd	(%rdx), %xmm12
	leal	-1(%r9), %esi
	xorpd	%xmm11, %xmm12
	subl	%r13d, %esi
	andl	$7, %esi
.LVL620:
	cmpl	%ecx, %r9d
	mulsd	%xmm0, %xmm12
	movsd	%xmm12, (%r14)
.LVL621:
	jle	.L1121
	testl	%esi, %esi
	je	.L1120
	cmpl	$1, %esi
	je	.L1321
	cmpl	$2, %esi
	je	.L1322
	cmpl	$3, %esi
	je	.L1323
	cmpl	$4, %esi
	je	.L1324
	cmpl	$5, %esi
	je	.L1325
	cmpl	$6, %esi
	je	.L1326
.LVL622:
	movsd	8(%rdx), %xmm13
	movl	$2, %eax
	xorpd	%xmm11, %xmm13
	mulsd	%xmm0, %xmm13
	movsd	%xmm13, 8(%r14)
.LVL623:
.L1326:
	movsd	(%rdx,%rax,8), %xmm14
	xorpd	%xmm11, %xmm14
	mulsd	%xmm0, %xmm14
	movsd	%xmm14, (%r14,%rax,8)
.LVL624:
	addq	$1, %rax
.LVL625:
.L1325:
	movsd	(%rdx,%rax,8), %xmm15
	xorpd	%xmm11, %xmm15
	mulsd	%xmm0, %xmm15
	movsd	%xmm15, (%r14,%rax,8)
.LVL626:
	addq	$1, %rax
.LVL627:
.L1324:
	movsd	(%rdx,%rax,8), %xmm1
	xorpd	%xmm11, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, (%r14,%rax,8)
.LVL628:
	addq	$1, %rax
.LVL629:
.L1323:
	movsd	(%rdx,%rax,8), %xmm6
	xorpd	%xmm11, %xmm6
	mulsd	%xmm0, %xmm6
	movsd	%xmm6, (%r14,%rax,8)
.LVL630:
	addq	$1, %rax
.LVL631:
.L1322:
	movsd	(%rdx,%rax,8), %xmm4
	xorpd	%xmm11, %xmm4
	mulsd	%xmm0, %xmm4
	movsd	%xmm4, (%r14,%rax,8)
.LVL632:
	addq	$1, %rax
.LVL633:
.L1321:
	movsd	(%rdx,%rax,8), %xmm5
	xorpd	%xmm11, %xmm5
	mulsd	%xmm0, %xmm5
	movsd	%xmm5, (%r14,%rax,8)
.LVL634:
	addq	$1, %rax
	leal	0(%r13,%rax), %r10d
	cmpl	%r10d, (%rsp)
	jle	.L1121
.LVL635:
.L1120:
	movsd	(%rdx,%rax,8), %xmm7
	leaq	1(%rax), %r11
	leaq	2(%rax), %r8
	leaq	3(%rax), %r9
	leaq	4(%rax), %rdi
	leaq	5(%rax), %rsi
	xorpd	%xmm11, %xmm7
	leaq	6(%rax), %rcx
	leaq	7(%rax), %r10
	mulsd	%xmm0, %xmm7
	movsd	%xmm7, (%r14,%rax,8)
.LVL636:
	addq	$8, %rax
	movsd	(%rdx,%r11,8), %xmm2
	xorpd	%xmm11, %xmm2
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, (%r14,%r11,8)
.LVL637:
	leal	0(%r13,%rax), %r11d
	cmpl	%r11d, (%rsp)
	movsd	(%rdx,%r8,8), %xmm3
	xorpd	%xmm11, %xmm3
	mulsd	%xmm0, %xmm3
	movsd	%xmm3, (%r14,%r8,8)
.LVL638:
	movsd	(%rdx,%r9,8), %xmm8
	xorpd	%xmm11, %xmm8
	mulsd	%xmm0, %xmm8
	movsd	%xmm8, (%r14,%r9,8)
.LVL639:
	movsd	(%rdx,%rdi,8), %xmm9
	xorpd	%xmm11, %xmm9
	mulsd	%xmm0, %xmm9
	movsd	%xmm9, (%r14,%rdi,8)
.LVL640:
	movsd	(%rdx,%rsi,8), %xmm10
	xorpd	%xmm11, %xmm10
	mulsd	%xmm0, %xmm10
	movsd	%xmm10, (%r14,%rsi,8)
.LVL641:
	movsd	(%rdx,%rcx,8), %xmm12
	xorpd	%xmm11, %xmm12
	mulsd	%xmm0, %xmm12
	movsd	%xmm12, (%r14,%rcx,8)
.LVL642:
	movsd	(%rdx,%r10,8), %xmm13
	xorpd	%xmm11, %xmm13
	mulsd	%xmm0, %xmm13
	movsd	%xmm13, (%r14,%r10,8)
.LVL643:
	jg	.L1120
	jmp	.L1121
.LVL644:
.L1137:
	.loc 1 347 0
	movl	$5, %esi
	jmp	.L1102
.LVL645:
.L1133:
	movl	$1, %esi
	jmp	.L1102
.LVL646:
.L1134:
	movl	$2, %esi
	jmp	.L1102
.LVL647:
.L1135:
	movl	$3, %esi
	jmp	.L1102
.LVL648:
.L1136:
	movl	$4, %esi
	jmp	.L1102
.LVL649:
.L1141:
	.loc 1 351 0
	xorl	%r13d, %r13d
	jmp	.L1122
.LVL650:
.L1138:
	.loc 1 347 0
	xorl	%r11d, %r11d
	movapd	.LC15(%rip), %xmm2
	jmp	.L1105
.LVL651:
.L1140:
	.loc 1 351 0
	xorl	%r13d, %r13d
	movsd	.LC16(%rip), %xmm11
	jmp	.L1118
.LBE61:
	.cfi_endproc
.LFE82:
	.size	_Z20Discount_Factors_optPdidS_, .-_Z20Discount_Factors_optPdidS_
	.section	.text.unlikely
.LCOLDE19:
	.text
.LHOTE19:
	.section	.text.unlikely
.LCOLDB20:
	.text
.LHOTB20:
	.p2align 4,,15
	.globl	_Z25Discount_Factors_BlockingPdidS_i
	.type	_Z25Discount_Factors_BlockingPdidS_i, @function
_Z25Discount_Factors_BlockingPdidS_i:
.LFB83:
	.loc 1 372 0
	.cfi_startproc
.LVL652:
.LBB62:
	.loc 1 377 0
	pxor	%xmm1, %xmm1
.LBE62:
	.loc 1 372 0
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
.LBB63:
	.loc 1 380 0
	xorl	%edi, %edi
.LVL653:
	.loc 1 377 0
	cvtsi2sd	%esi, %xmm1
.LBE63:
	.loc 1 372 0
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
.LBB64:
	.loc 1 380 0
	leal	-1(%rsi), %ebx
.LBE64:
	.loc 1 372 0
	movl	%ecx, %r12d
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
.LBB65:
	.loc 1 380 0
	imull	%ecx, %ebx
.LBE65:
	.loc 1 372 0
	movl	%esi, 24(%rsp)
	movq	%rdx, 16(%rsp)
.LBB66:
	.loc 1 380 0
	leal	-1(%rbx), %eax
	cltq
	movq	%rax, %rsi
.LVL654:
	movq	%rax, (%rsp)
	.loc 1 377 0
	divsd	%xmm1, %xmm0
.LVL655:
	movsd	%xmm0, 8(%rsp)
.LVL656:
	.loc 1 380 0
	call	_Z7dvectorll
.LVL657:
	.loc 1 382 0
	testl	%ebx, %ebx
	.loc 1 380 0
	movq	%rax, %rbp
.LVL658:
	.loc 1 382 0
	movq	16(%rsp), %rdx
	movsd	8(%rsp), %xmm0
	jle	.L1435
	leaq	16(%rax), %rcx
	leaq	16(%rdx), %rdi
	cmpq	%rcx, %rdx
	setae	%sil
	cmpq	%rdi, %rax
	setae	%r8b
	orb	%r8b, %sil
	je	.L1420
	cmpl	$10, %ebx
	jbe	.L1420
	movq	%rdx, %r9
	salq	$60, %r9
	shrq	$63, %r9
	cmpl	%r9d, %ebx
	cmovbe	%ebx, %r9d
	xorl	%edi, %edi
	testl	%r9d, %r9d
	je	.L1421
	movsd	(%rdx), %xmm3
	movb	$1, %dil
	movsd	.LC16(%rip), %xmm2
	xorpd	%xmm2, %xmm3
	mulsd	%xmm0, %xmm3
	movsd	%xmm3, (%rax)
.LVL659:
.L1421:
	movl	%r9d, %esi
	movapd	.LC18(%rip), %xmm13
	salq	$3, %rsi
	movapd	%xmm0, %xmm12
	leaq	(%rdx,%rsi), %r8
	addq	%rbp, %rsi
	movl	%ebx, %r14d
	unpcklpd	%xmm12, %xmm12
	subl	%r9d, %r14d
	movapd	(%r8), %xmm4
	prefetcht0	368(%r8)
	leaq	64(%r8), %rax
.LVL660:
	movl	%r14d, 8(%rsp)
.LVL661:
	subl	$2, %r14d
	leaq	64(%rsi), %rcx
	xorpd	%xmm13, %xmm4
	shrl	%r14d
	leal	-4(%r14), %r15d
	leal	1(%r14), %r10d
	mulpd	%xmm12, %xmm4
	shrl	$2, %r15d
	leal	4(,%r15,4), %r9d
	andl	$1, %r15d
	leal	(%r10,%r10), %r11d
	movl	%r15d, %r14d
	movl	$4, %r15d
	cmpl	%r9d, %r15d
	movups	%xmm4, (%rsi)
	movapd	16(%r8), %xmm5
	xorpd	%xmm13, %xmm5
	mulpd	%xmm12, %xmm5
	movups	%xmm5, 16(%rsi)
	movapd	32(%r8), %xmm6
	xorpd	%xmm13, %xmm6
	mulpd	%xmm12, %xmm6
	movups	%xmm6, 32(%rsi)
	movapd	48(%r8), %xmm7
	xorpd	%xmm13, %xmm7
	mulpd	%xmm12, %xmm7
	movups	%xmm7, 48(%rsi)
	je	.L1712
	testl	%r14d, %r14d
	je	.L1422
	movapd	(%rax), %xmm8
	prefetcht0	432(%r8)
	movl	$8, %r15d
	cmpl	%r9d, %r15d
	xorpd	%xmm13, %xmm8
	mulpd	%xmm12, %xmm8
	movups	%xmm8, (%rcx)
	movapd	16(%rax), %xmm9
	xorpd	%xmm13, %xmm9
	mulpd	%xmm12, %xmm9
	movups	%xmm9, 16(%rcx)
	movapd	32(%rax), %xmm10
	xorpd	%xmm13, %xmm10
	mulpd	%xmm12, %xmm10
	movups	%xmm10, 32(%rcx)
	movapd	48(%rax), %xmm11
	leaq	128(%r8), %rax
	xorpd	%xmm13, %xmm11
	mulpd	%xmm12, %xmm11
	movups	%xmm11, 48(%rcx)
	leaq	128(%rsi), %rcx
	je	.L1712
.L1422:
	prefetcht0	368(%rax)
	prefetcht0	432(%rax)
	addl	$8, %r15d
	subq	$-128, %rax
	subq	$-128, %rcx
	.loc 1 382 0 is_stmt 0 discriminator 3
	movapd	-128(%rax), %xmm14
	xorpd	%xmm13, %xmm14
	mulpd	%xmm12, %xmm14
	movups	%xmm14, -128(%rcx)
	movapd	-112(%rax), %xmm15
	xorpd	%xmm13, %xmm15
	mulpd	%xmm12, %xmm15
	movups	%xmm15, -112(%rcx)
	movapd	-96(%rax), %xmm1
	xorpd	%xmm13, %xmm1
	mulpd	%xmm12, %xmm1
	movups	%xmm1, -96(%rcx)
	movapd	-80(%rax), %xmm3
	xorpd	%xmm13, %xmm3
	mulpd	%xmm12, %xmm3
	movups	%xmm3, -80(%rcx)
	movapd	-64(%rax), %xmm2
	xorpd	%xmm13, %xmm2
	mulpd	%xmm12, %xmm2
	movups	%xmm2, -64(%rcx)
	movapd	-48(%rax), %xmm4
	xorpd	%xmm13, %xmm4
	mulpd	%xmm12, %xmm4
	movups	%xmm4, -48(%rcx)
	movapd	-32(%rax), %xmm5
	xorpd	%xmm13, %xmm5
	mulpd	%xmm12, %xmm5
	movups	%xmm5, -32(%rcx)
	movapd	-16(%rax), %xmm6
	xorpd	%xmm13, %xmm6
	mulpd	%xmm12, %xmm6
	movups	%xmm6, -16(%rcx)
	cmpl	%r9d, %r15d
	jne	.L1422
.L1712:
	movl	%r9d, %r14d
	leal	1(%r9), %esi
	movl	$16, %r8d
	.loc 1 382 0
	movapd	(%rax), %xmm7
	notl	%r14d
	addl	%r10d, %r14d
	xorpd	%xmm13, %xmm7
	andl	$7, %r14d
	cmpl	%esi, %r10d
	mulpd	%xmm12, %xmm7
	movups	%xmm7, (%rcx)
	jbe	.L1713
	testl	%r14d, %r14d
	je	.L1425
	cmpl	$1, %r14d
	je	.L1657
	cmpl	$2, %r14d
	je	.L1658
	cmpl	$3, %r14d
	je	.L1659
	cmpl	$4, %r14d
	je	.L1660
	cmpl	$5, %r14d
	je	.L1661
	cmpl	$6, %r14d
	je	.L1662
	movapd	16(%rax), %xmm8
	leal	2(%r9), %esi
	movl	$32, %r8d
	xorpd	%xmm13, %xmm8
	mulpd	%xmm12, %xmm8
	movups	%xmm8, 16(%rcx)
.L1662:
	addl	$1, %esi
	movapd	(%rax,%r8), %xmm9
	xorpd	%xmm13, %xmm9
	mulpd	%xmm12, %xmm9
	movups	%xmm9, (%rcx,%r8)
	addq	$16, %r8
.L1661:
	addl	$1, %esi
	movapd	(%rax,%r8), %xmm10
	xorpd	%xmm13, %xmm10
	mulpd	%xmm12, %xmm10
	movups	%xmm10, (%rcx,%r8)
	addq	$16, %r8
.L1660:
	addl	$1, %esi
	movapd	(%rax,%r8), %xmm11
	xorpd	%xmm13, %xmm11
	mulpd	%xmm12, %xmm11
	movups	%xmm11, (%rcx,%r8)
	addq	$16, %r8
.L1659:
	addl	$1, %esi
	movapd	(%rax,%r8), %xmm14
	xorpd	%xmm13, %xmm14
	mulpd	%xmm12, %xmm14
	movups	%xmm14, (%rcx,%r8)
	addq	$16, %r8
.L1658:
	addl	$1, %esi
	movapd	(%rax,%r8), %xmm15
	xorpd	%xmm13, %xmm15
	mulpd	%xmm12, %xmm15
	movups	%xmm15, (%rcx,%r8)
	addq	$16, %r8
.L1657:
	addl	$1, %esi
	movapd	(%rax,%r8), %xmm1
	xorpd	%xmm13, %xmm1
	mulpd	%xmm12, %xmm1
	movups	%xmm1, (%rcx,%r8)
	addq	$16, %r8
	cmpl	%esi, %r10d
	jbe	.L1713
.L1425:
	addl	$8, %esi
	movapd	(%rax,%r8), %xmm3
	xorpd	%xmm13, %xmm3
	mulpd	%xmm12, %xmm3
	movups	%xmm3, (%rcx,%r8)
	movapd	16(%rax,%r8), %xmm2
	xorpd	%xmm13, %xmm2
	mulpd	%xmm12, %xmm2
	movups	%xmm2, 16(%rcx,%r8)
	movapd	32(%rax,%r8), %xmm4
	xorpd	%xmm13, %xmm4
	mulpd	%xmm12, %xmm4
	movups	%xmm4, 32(%rcx,%r8)
	movapd	48(%rax,%r8), %xmm5
	xorpd	%xmm13, %xmm5
	mulpd	%xmm12, %xmm5
	movups	%xmm5, 48(%rcx,%r8)
	movapd	64(%rax,%r8), %xmm6
	xorpd	%xmm13, %xmm6
	mulpd	%xmm12, %xmm6
	movups	%xmm6, 64(%rcx,%r8)
	movapd	80(%rax,%r8), %xmm7
	xorpd	%xmm13, %xmm7
	mulpd	%xmm12, %xmm7
	movups	%xmm7, 80(%rcx,%r8)
	movapd	96(%rax,%r8), %xmm8
	xorpd	%xmm13, %xmm8
	mulpd	%xmm12, %xmm8
	movups	%xmm8, 96(%rcx,%r8)
	movapd	112(%rax,%r8), %xmm9
	xorpd	%xmm13, %xmm9
	mulpd	%xmm12, %xmm9
	movups	%xmm9, 112(%rcx,%r8)
	subq	$-128, %r8
	cmpl	%esi, %r10d
	ja	.L1425
.L1713:
	leal	(%rdi,%r11), %eax
	cmpl	%r11d, 8(%rsp)
	je	.L1431
.LVL662:
	cltq
	movsd	.LC16(%rip), %xmm13
	movsd	(%rdx,%rax,8), %xmm12
	xorpd	%xmm13, %xmm12
	mulsd	%xmm12, %xmm0
	movsd	%xmm0, 0(%rbp,%rax,8)
.LVL663:
.L1431:
	leal	-9(%rbx), %esi
	xorl	%edx, %edx
	leaq	88(%rbp), %r14
	movl	%ebx, 8(%rsp)
	movl	%edx, %ebx
	shrl	$3, %esi
	leal	8(,%rsi,8), %r15d
	.p2align 4,,10
	.p2align 3
.L1433:
	.loc 1 383 0 is_stmt 1 discriminator 3
	movsd	-88(%r14), %xmm0
	prefetcht0	(%r14)
	addl	$8, %ebx
	addq	$64, %r14
	call	exp
.LVL664:
	movsd	%xmm0, -152(%r14)
	movsd	-144(%r14), %xmm0
	call	exp
.LVL665:
	movsd	%xmm0, -144(%r14)
	movsd	-136(%r14), %xmm0
	call	exp
.LVL666:
	movsd	%xmm0, -136(%r14)
	movsd	-128(%r14), %xmm0
	call	exp
.LVL667:
	movsd	%xmm0, -128(%r14)
	movsd	-120(%r14), %xmm0
	call	exp
.LVL668:
	movsd	%xmm0, -120(%r14)
	movsd	-112(%r14), %xmm0
	call	exp
.LVL669:
	movsd	%xmm0, -112(%r14)
	movsd	-104(%r14), %xmm0
	call	exp
.LVL670:
	movsd	%xmm0, -104(%r14)
	movsd	-96(%r14), %xmm0
	call	exp
.LVL671:
	movsd	%xmm0, -96(%r14)
	cmpl	%r15d, %ebx
	jne	.L1433
	movl	%ebx, %r9d
	movl	8(%rsp), %ebx
.L1432:
	movslq	%r9d, %rcx
	movl	%r9d, %r8d
	movl	%r9d, 28(%rsp)
	leaq	0(%rbp,%rcx,8), %rax
	notl	%r8d
	addl	%ebx, %r8d
	.loc 1 383 0 is_stmt 0
	movsd	(%rax), %xmm0
	andl	$7, %r8d
	movq	%rax, 8(%rsp)
	movl	%r8d, 16(%rsp)
.LVL672:
	call	exp
.LVL673:
	movl	28(%rsp), %r10d
	movq	8(%rsp), %rdi
	movl	16(%rsp), %r11d
	leal	1(%r10), %r14d
	movsd	%xmm0, (%rdi)
	leaq	8(%rdi), %r15
	cmpl	%r14d, %ebx
	jle	.L1435
	testl	%r11d, %r11d
	movq	%rdi, 16(%rsp)
	movl	%r10d, 8(%rsp)
	je	.L1434
	cmpl	$1, %r11d
	je	.L1645
	cmpl	$2, %r11d
	je	.L1646
	cmpl	$3, %r11d
	je	.L1647
	cmpl	$4, %r11d
	je	.L1648
	cmpl	$5, %r11d
	je	.L1649
	cmpl	$6, %r11d
	je	.L1650
	movsd	(%r15), %xmm0
	call	exp
.LVL674:
	movl	8(%rsp), %r14d
	movq	16(%rsp), %rsi
	movsd	%xmm0, (%r15)
	leal	2(%r14), %r14d
	leaq	16(%rsi), %r15
.L1650:
	movsd	(%r15), %xmm0
	addl	$1, %r14d
	addq	$8, %r15
	call	exp
.LVL675:
	movsd	%xmm0, -8(%r15)
.L1649:
	movsd	(%r15), %xmm0
	addl	$1, %r14d
	addq	$8, %r15
	call	exp
.LVL676:
	movsd	%xmm0, -8(%r15)
.L1648:
	movsd	(%r15), %xmm0
	addl	$1, %r14d
	addq	$8, %r15
	call	exp
.LVL677:
	movsd	%xmm0, -8(%r15)
.L1647:
	movsd	(%r15), %xmm0
	addl	$1, %r14d
	addq	$8, %r15
	call	exp
.LVL678:
	movsd	%xmm0, -8(%r15)
.L1646:
	movsd	(%r15), %xmm0
	addl	$1, %r14d
	addq	$8, %r15
	call	exp
.LVL679:
	movsd	%xmm0, -8(%r15)
.L1645:
	movsd	(%r15), %xmm0
	addl	$1, %r14d
	addq	$8, %r15
	call	exp
.LVL680:
	movsd	%xmm0, -8(%r15)
	cmpl	%r14d, %ebx
	jle	.L1435
.L1434:
	movsd	(%r15), %xmm0
	addl	$8, %r14d
	addq	$64, %r15
	call	exp
.LVL681:
	movsd	%xmm0, -64(%r15)
	movsd	-56(%r15), %xmm0
	call	exp
.LVL682:
	movsd	%xmm0, -56(%r15)
	movsd	-48(%r15), %xmm0
	call	exp
.LVL683:
	movsd	%xmm0, -48(%r15)
	movsd	-40(%r15), %xmm0
	call	exp
.LVL684:
	movsd	%xmm0, -40(%r15)
	movsd	-32(%r15), %xmm0
	call	exp
.LVL685:
	movsd	%xmm0, -32(%r15)
	movsd	-24(%r15), %xmm0
	call	exp
.LVL686:
	movsd	%xmm0, -24(%r15)
	movsd	-16(%r15), %xmm0
	call	exp
.LVL687:
	movsd	%xmm0, -16(%r15)
	movsd	-8(%r15), %xmm0
	call	exp
.LVL688:
	movsd	%xmm0, -8(%r15)
	cmpl	%r14d, %ebx
	jg	.L1434
.L1435:
.LVL689:
	.loc 1 387 0 is_stmt 1
	leal	(%rbx,%r12), %ecx
	testl	%ecx, %ecx
	jle	.L1419
	movq	%r13, %rdx
	salq	$60, %rdx
	shrq	$63, %rdx
	cmpl	%ecx, %edx
	cmova	%ecx, %edx
	cmpl	$6, %ecx
	jg	.L1733
	movl	%ecx, %edx
.L1453:
	.loc 1 388 0
	movsd	.LC14(%rip), %xmm0
	cmpl	$1, %edx
	movsd	%xmm0, 0(%r13)
.LVL690:
	je	.L1458
	cmpl	$2, %edx
	movsd	%xmm0, 8(%r13)
.LVL691:
	je	.L1459
	cmpl	$3, %edx
	movsd	%xmm0, 16(%r13)
.LVL692:
	je	.L1460
	cmpl	$4, %edx
	movsd	%xmm0, 24(%r13)
.LVL693:
	je	.L1461
	cmpl	$6, %edx
	movsd	%xmm0, 32(%r13)
.LVL694:
	jne	.L1462
	movsd	%xmm0, 40(%r13)
.LVL695:
	.loc 1 387 0
	movl	$6, %esi
.LVL696:
.L1440:
	cmpl	%ecx, %edx
	je	.L1419
.L1439:
	subl	%edx, %ecx
	movl	%edx, %r9d
	leal	-2(%rcx), %r11d
	shrl	%r11d
	cmpl	$1, %ecx
	leal	1(%r11), %edi
	leal	(%rdi,%rdi), %r8d
	je	.L1442
	subl	$4, %r11d
	leaq	0(%r13,%r9,8), %rax
	cmpl	$-6, %r11d
	ja	.L1463
	shrl	$2, %r11d
	movapd	.LC15(%rip), %xmm6
	prefetcht0	640(%rax)
	leal	4(,%r11,4), %r10d
	movl	$4, %r14d
	andl	$7, %r11d
	.loc 1 388 0
	movaps	%xmm6, (%rax)
	addq	$64, %rax
	movaps	%xmm6, -48(%rax)
	movaps	%xmm6, -32(%rax)
	movaps	%xmm6, -16(%rax)
	cmpl	%r10d, %r14d
	je	.L1443
	testl	%r11d, %r11d
	je	.L1444
	cmpl	$1, %r11d
	je	.L1639
	cmpl	$2, %r11d
	je	.L1640
	cmpl	$3, %r11d
	je	.L1641
	cmpl	$4, %r11d
	je	.L1642
	cmpl	$5, %r11d
	je	.L1643
	cmpl	$6, %r11d
	je	.L1644
	prefetcht0	640(%rax)
	movaps	%xmm6, (%rax)
	movl	$8, %r14d
	addq	$64, %rax
	movaps	%xmm6, -48(%rax)
	movaps	%xmm6, -32(%rax)
	movaps	%xmm6, -16(%rax)
.L1644:
	prefetcht0	640(%rax)
	addl	$4, %r14d
	addq	$64, %rax
	movaps	%xmm6, -64(%rax)
	movaps	%xmm6, -48(%rax)
	movaps	%xmm6, -32(%rax)
	movaps	%xmm6, -16(%rax)
.L1643:
	prefetcht0	640(%rax)
	addl	$4, %r14d
	addq	$64, %rax
	movaps	%xmm6, -64(%rax)
	movaps	%xmm6, -48(%rax)
	movaps	%xmm6, -32(%rax)
	movaps	%xmm6, -16(%rax)
.L1642:
	prefetcht0	640(%rax)
	addl	$4, %r14d
	addq	$64, %rax
	movaps	%xmm6, -64(%rax)
	movaps	%xmm6, -48(%rax)
	movaps	%xmm6, -32(%rax)
	movaps	%xmm6, -16(%rax)
.L1641:
	prefetcht0	640(%rax)
	addl	$4, %r14d
	addq	$64, %rax
	movaps	%xmm6, -64(%rax)
	movaps	%xmm6, -48(%rax)
	movaps	%xmm6, -32(%rax)
	movaps	%xmm6, -16(%rax)
.L1640:
	prefetcht0	640(%rax)
	addl	$4, %r14d
	addq	$64, %rax
	movaps	%xmm6, -64(%rax)
	movaps	%xmm6, -48(%rax)
	movaps	%xmm6, -32(%rax)
	movaps	%xmm6, -16(%rax)
.L1639:
	addl	$4, %r14d
	prefetcht0	640(%rax)
	addq	$64, %rax
	movaps	%xmm6, -64(%rax)
	movaps	%xmm6, -48(%rax)
	movaps	%xmm6, -32(%rax)
	movaps	%xmm6, -16(%rax)
	cmpl	%r10d, %r14d
	je	.L1443
.L1444:
	addl	$32, %r14d
	prefetcht0	640(%rax)
	prefetcht0	704(%rax)
	.loc 1 388 0 is_stmt 0 discriminator 3
	movaps	%xmm6, (%rax)
	prefetcht0	768(%rax)
	prefetcht0	832(%rax)
	prefetcht0	896(%rax)
	prefetcht0	960(%rax)
	prefetcht0	1024(%rax)
	movaps	%xmm6, 16(%rax)
	prefetcht0	1088(%rax)
	addq	$512, %rax
	movaps	%xmm6, -480(%rax)
	movaps	%xmm6, -464(%rax)
	movaps	%xmm6, -448(%rax)
	movaps	%xmm6, -432(%rax)
	movaps	%xmm6, -416(%rax)
	movaps	%xmm6, -400(%rax)
	movaps	%xmm6, -384(%rax)
	movaps	%xmm6, -368(%rax)
	movaps	%xmm6, -352(%rax)
	movaps	%xmm6, -336(%rax)
	movaps	%xmm6, -320(%rax)
	movaps	%xmm6, -304(%rax)
	movaps	%xmm6, -288(%rax)
	movaps	%xmm6, -272(%rax)
	movaps	%xmm6, -256(%rax)
	movaps	%xmm6, -240(%rax)
	movaps	%xmm6, -224(%rax)
	movaps	%xmm6, -208(%rax)
	movaps	%xmm6, -192(%rax)
	movaps	%xmm6, -176(%rax)
	movaps	%xmm6, -160(%rax)
	movaps	%xmm6, -144(%rax)
	movaps	%xmm6, -128(%rax)
	movaps	%xmm6, -112(%rax)
	movaps	%xmm6, -96(%rax)
	movaps	%xmm6, -80(%rax)
	movaps	%xmm6, -64(%rax)
	movaps	%xmm6, -48(%rax)
	movaps	%xmm6, -32(%rax)
	movaps	%xmm6, -16(%rax)
	cmpl	%r10d, %r14d
	jne	.L1444
.L1443:
	movl	%r10d, %r15d
	leal	1(%r10), %edx
	leaq	16(%rax), %rbx
	notl	%r15d
	addl	%edi, %r15d
	andl	$7, %r15d
	cmpl	%edx, %edi
	.loc 1 388 0
	movaps	%xmm6, (%rax)
	jbe	.L1715
	testl	%r15d, %r15d
	je	.L1446
	cmpl	$1, %r15d
	je	.L1633
	cmpl	$2, %r15d
	je	.L1634
	cmpl	$3, %r15d
	je	.L1635
	cmpl	$4, %r15d
	je	.L1636
	cmpl	$5, %r15d
	je	.L1637
	cmpl	$6, %r15d
	je	.L1638
	movaps	%xmm6, (%rbx)
	leal	2(%r10), %edx
	leaq	32(%rax), %rbx
.L1638:
	movaps	%xmm6, (%rbx)
	addl	$1, %edx
	addq	$16, %rbx
.L1637:
	movaps	%xmm6, (%rbx)
	addl	$1, %edx
	addq	$16, %rbx
.L1636:
	movaps	%xmm6, (%rbx)
	addl	$1, %edx
	addq	$16, %rbx
.L1635:
	movaps	%xmm6, (%rbx)
	addl	$1, %edx
	addq	$16, %rbx
.L1634:
	movaps	%xmm6, (%rbx)
	addl	$1, %edx
	addq	$16, %rbx
.L1633:
	addl	$1, %edx
	addq	$16, %rbx
	movaps	%xmm6, -16(%rbx)
	cmpl	%edx, %edi
	jbe	.L1715
.L1446:
	addl	$8, %edx
	subq	$-128, %rbx
	movaps	%xmm6, -128(%rbx)
	movaps	%xmm6, -112(%rbx)
	movaps	%xmm6, -96(%rbx)
	movaps	%xmm6, -80(%rbx)
	movaps	%xmm6, -64(%rbx)
	movaps	%xmm6, -48(%rbx)
	movaps	%xmm6, -32(%rbx)
	movaps	%xmm6, -16(%rbx)
	cmpl	%edx, %edi
	ja	.L1446
.L1715:
	addl	%r8d, %esi
	cmpl	%ecx, %r8d
	je	.L1419
.L1442:
	movsd	.LC14(%rip), %xmm7
	movslq	%esi, %r9
	movsd	%xmm7, 0(%r13,%r9,8)
.L1419:
.LVL697:
	.loc 1 390 0 is_stmt 1
	cmpl	$1, 24(%rsp)
	jle	.L1437
	leal	-1(%r12), %r11d
	movl	24(%rsp), %r9d
	movslq	%r12d, %rsi
	salq	$3, %rsi
	movl	%r12d, %r10d
	movl	$1, %edi
	leaq	8(,%r11,8), %r8
	addq	%rbp, %r8
.LVL698:
	.p2align 4,,10
	.p2align 3
.L1448:
	.loc 1 392 0 discriminator 1
	testl	%r12d, %r12d
	jle	.L1450
	movslq	%r10d, %rax
	movq	%rbp, %r14
	leaq	0(%r13,%rax,8), %r15
.LVL699:
	.p2align 4,,10
	.p2align 3
.L1452:
	.loc 1 394 0 discriminator 1
	testl	%edi, %edi
	jle	.L1451
	movsd	(%r15), %xmm8
	leal	-1(%rdi), %ebx
	.loc 1 394 0 is_stmt 0
	movl	$1, %ecx
	leaq	(%r14,%rsi), %rdx
	.loc 1 395 0 is_stmt 1
	mulsd	(%r14), %xmm8
	andl	$7, %ebx
.LVL700:
	.loc 1 394 0
	cmpl	%edi, %ecx
	.loc 1 395 0
	movsd	%xmm8, (%r15)
.LVL701:
	.loc 1 394 0
	je	.L1451
	testl	%ebx, %ebx
	je	.L1449
	cmpl	$1, %ebx
	je	.L1627
	cmpl	$2, %ebx
	je	.L1628
	cmpl	$3, %ebx
	je	.L1629
	cmpl	$4, %ebx
	je	.L1630
	cmpl	$5, %ebx
	je	.L1631
	cmpl	$6, %ebx
	je	.L1632
	.loc 1 395 0
	mulsd	(%rdx), %xmm8
	.loc 1 394 0
	movl	$2, %ecx
	addq	%rsi, %rdx
	.loc 1 395 0
	movsd	%xmm8, (%r15)
.LVL702:
.L1632:
	mulsd	(%rdx), %xmm8
	.loc 1 394 0
	addl	$1, %ecx
	addq	%rsi, %rdx
	.loc 1 395 0
	movsd	%xmm8, (%r15)
.L1631:
	mulsd	(%rdx), %xmm8
	.loc 1 394 0
	addl	$1, %ecx
	addq	%rsi, %rdx
	.loc 1 395 0
	movsd	%xmm8, (%r15)
.L1630:
	mulsd	(%rdx), %xmm8
	.loc 1 394 0
	addl	$1, %ecx
	addq	%rsi, %rdx
	.loc 1 395 0
	movsd	%xmm8, (%r15)
.L1629:
	mulsd	(%rdx), %xmm8
	.loc 1 394 0
	addl	$1, %ecx
	addq	%rsi, %rdx
	.loc 1 395 0
	movsd	%xmm8, (%r15)
.L1628:
	mulsd	(%rdx), %xmm8
	.loc 1 394 0
	addl	$1, %ecx
	addq	%rsi, %rdx
	.loc 1 395 0
	movsd	%xmm8, (%r15)
.L1627:
	mulsd	(%rdx), %xmm8
	.loc 1 394 0
	addl	$1, %ecx
	addq	%rsi, %rdx
	cmpl	%edi, %ecx
	.loc 1 395 0
	movsd	%xmm8, (%r15)
	.loc 1 394 0
	je	.L1451
.L1449:
	.loc 1 395 0 discriminator 3
	mulsd	(%rdx), %xmm8
	addq	%rsi, %rdx
	.loc 1 394 0 discriminator 3
	addl	$8, %ecx
	.loc 1 395 0 discriminator 3
	movsd	%xmm8, (%r15)
	mulsd	(%rdx), %xmm8
	addq	%rsi, %rdx
	movsd	%xmm8, (%r15)
	mulsd	(%rdx), %xmm8
	addq	%rsi, %rdx
	movsd	%xmm8, (%r15)
	mulsd	(%rdx), %xmm8
	addq	%rsi, %rdx
	movsd	%xmm8, (%r15)
	mulsd	(%rdx), %xmm8
	addq	%rsi, %rdx
	movsd	%xmm8, (%r15)
	mulsd	(%rdx), %xmm8
	addq	%rsi, %rdx
	movsd	%xmm8, (%r15)
	mulsd	(%rdx), %xmm8
	addq	%rsi, %rdx
	movsd	%xmm8, (%r15)
	mulsd	(%rdx), %xmm8
	addq	%rsi, %rdx
	.loc 1 394 0 discriminator 3
	cmpl	%edi, %ecx
	.loc 1 395 0 discriminator 3
	movsd	%xmm8, (%r15)
	.loc 1 394 0 discriminator 3
	jne	.L1449
.L1451:
	addq	$8, %r14
	addq	$8, %r15
	.loc 1 392 0
	cmpq	%r8, %r14
	jne	.L1452
.L1450:
	.loc 1 390 0
	addl	$1, %edi
.LVL703:
	addl	%r12d, %r10d
	cmpl	%r9d, %edi
	jne	.L1448
.LVL704:
.L1437:
	.loc 1 401 0
	movq	(%rsp), %rdx
	movq	%rbp, %rdi
	xorl	%esi, %esi
	call	_Z12free_dvectorPdll
.LVL705:
.LBE66:
	.loc 1 404 0
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
.LVL706:
	popq	%r12
	.cfi_def_cfa_offset 32
.LVL707:
	popq	%r13
	.cfi_def_cfa_offset 24
.LVL708:
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL709:
.L1733:
	.cfi_restore_state
.LBB67:
	.loc 1 387 0
	xorl	%esi, %esi
	testl	%edx, %edx
	je	.L1439
	jmp	.L1453
.LVL710:
	.p2align 4,,10
	.p2align 3
.L1420:
	cmpl	$8, %ebx
	jle	.L1455
	.loc 1 382 0
	movsd	(%rdx), %xmm10
	leaq	160(%rdx), %rcx
	leaq	160(%rbp), %r15
	movsd	.LC16(%rip), %xmm1
	leal	-9(%rbx), %r10d
	prefetcht0	(%rcx)
	prefetcht0	(%r15)
	movl	$8, %esi
	xorpd	%xmm1, %xmm10
	shrl	$3, %r10d
	leaq	224(%rdx), %r11
	leal	8(,%r10,8), %r9d
	movl	%r10d, %r14d
	leaq	224(%rbp), %rax
.LVL711:
	andl	$1, %r14d
	mulsd	%xmm0, %xmm10
	cmpl	%r9d, %esi
	movsd	%xmm10, 0(%rbp)
.LVL712:
	movsd	8(%rdx), %xmm11
	xorpd	%xmm1, %xmm11
	mulsd	%xmm0, %xmm11
	movsd	%xmm11, 8(%rbp)
.LVL713:
	movsd	16(%rdx), %xmm14
	xorpd	%xmm1, %xmm14
	mulsd	%xmm0, %xmm14
	movsd	%xmm14, 16(%rbp)
.LVL714:
	movsd	24(%rdx), %xmm15
	xorpd	%xmm1, %xmm15
	mulsd	%xmm0, %xmm15
	movsd	%xmm15, 24(%rbp)
.LVL715:
	movsd	32(%rdx), %xmm3
	xorpd	%xmm1, %xmm3
	mulsd	%xmm0, %xmm3
	movsd	%xmm3, 32(%rbp)
.LVL716:
	movsd	40(%rdx), %xmm2
	xorpd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, 40(%rbp)
.LVL717:
	movsd	48(%rdx), %xmm4
	xorpd	%xmm1, %xmm4
	mulsd	%xmm0, %xmm4
	movsd	%xmm4, 48(%rbp)
.LVL718:
	movsd	56(%rdx), %xmm5
	xorpd	%xmm1, %xmm5
	mulsd	%xmm0, %xmm5
	movsd	%xmm5, 56(%rbp)
	je	.L1427
	testl	%r14d, %r14d
	je	.L1428
	movsd	-160(%r11), %xmm6
	prefetcht0	(%r11)
	movl	$16, %esi
	cmpl	%r9d, %esi
	prefetcht0	(%rax)
	xorpd	%xmm1, %xmm6
	mulsd	%xmm0, %xmm6
	movsd	%xmm6, -160(%rax)
.LVL719:
	movsd	-152(%r11), %xmm7
	xorpd	%xmm1, %xmm7
	mulsd	%xmm0, %xmm7
	movsd	%xmm7, -152(%rax)
.LVL720:
	movsd	-144(%r11), %xmm8
	xorpd	%xmm1, %xmm8
	mulsd	%xmm0, %xmm8
	movsd	%xmm8, -144(%rax)
.LVL721:
	movsd	-136(%r11), %xmm9
	xorpd	%xmm1, %xmm9
	mulsd	%xmm0, %xmm9
	movsd	%xmm9, -136(%rax)
.LVL722:
	movsd	-128(%r11), %xmm12
	xorpd	%xmm1, %xmm12
	mulsd	%xmm0, %xmm12
	movsd	%xmm12, -128(%rax)
.LVL723:
	movsd	-120(%r11), %xmm13
	xorpd	%xmm1, %xmm13
	mulsd	%xmm0, %xmm13
	movsd	%xmm13, -120(%rax)
.LVL724:
	movsd	-112(%r11), %xmm10
	xorpd	%xmm1, %xmm10
	mulsd	%xmm0, %xmm10
	movsd	%xmm10, -112(%rax)
.LVL725:
	movsd	-104(%r11), %xmm11
	leaq	288(%rdx), %r11
	xorpd	%xmm1, %xmm11
	mulsd	%xmm0, %xmm11
	movsd	%xmm11, -104(%rax)
	leaq	288(%rbp), %rax
	je	.L1427
.L1428:
	movsd	-160(%r11), %xmm14
	prefetcht0	(%r11)
	leaq	64(%r11), %r8
	leaq	64(%rax), %rdi
	prefetcht0	(%rax)
	addl	$16, %esi
	xorpd	%xmm1, %xmm14
	prefetcht0	(%r8)
	subq	$-128, %r11
	prefetcht0	(%rdi)
	subq	$-128, %rax
	mulsd	%xmm0, %xmm14
	movsd	%xmm14, -288(%rax)
.LVL726:
	movsd	-280(%r11), %xmm15
	xorpd	%xmm1, %xmm15
	mulsd	%xmm0, %xmm15
	movsd	%xmm15, -280(%rax)
.LVL727:
	movsd	-272(%r11), %xmm3
	xorpd	%xmm1, %xmm3
	mulsd	%xmm0, %xmm3
	movsd	%xmm3, -272(%rax)
.LVL728:
	movsd	-264(%r11), %xmm2
	xorpd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, -264(%rax)
.LVL729:
	movsd	-256(%r11), %xmm4
	xorpd	%xmm1, %xmm4
	mulsd	%xmm0, %xmm4
	movsd	%xmm4, -256(%rax)
.LVL730:
	movsd	-248(%r11), %xmm5
	xorpd	%xmm1, %xmm5
	mulsd	%xmm0, %xmm5
	movsd	%xmm5, -248(%rax)
.LVL731:
	movsd	-240(%r11), %xmm6
	xorpd	%xmm1, %xmm6
	mulsd	%xmm0, %xmm6
	movsd	%xmm6, -240(%rax)
.LVL732:
	movsd	-232(%r11), %xmm7
	xorpd	%xmm1, %xmm7
	mulsd	%xmm0, %xmm7
	movsd	%xmm7, -232(%rax)
.LVL733:
	movsd	-224(%r11), %xmm8
	xorpd	%xmm1, %xmm8
	mulsd	%xmm0, %xmm8
	movsd	%xmm8, -224(%rax)
.LVL734:
	movsd	-216(%r11), %xmm9
	xorpd	%xmm1, %xmm9
	mulsd	%xmm0, %xmm9
	movsd	%xmm9, -216(%rax)
.LVL735:
	movsd	-208(%r11), %xmm12
	xorpd	%xmm1, %xmm12
	mulsd	%xmm0, %xmm12
	movsd	%xmm12, -208(%rax)
.LVL736:
	movsd	-200(%r11), %xmm13
	xorpd	%xmm1, %xmm13
	mulsd	%xmm0, %xmm13
	movsd	%xmm13, -200(%rax)
.LVL737:
	movsd	-192(%r11), %xmm10
	xorpd	%xmm1, %xmm10
	mulsd	%xmm0, %xmm10
	movsd	%xmm10, -192(%rax)
.LVL738:
	movsd	-184(%r11), %xmm11
	xorpd	%xmm1, %xmm11
	mulsd	%xmm0, %xmm11
	movsd	%xmm11, -184(%rax)
.LVL739:
	movsd	-176(%r11), %xmm14
	xorpd	%xmm1, %xmm14
	mulsd	%xmm0, %xmm14
	movsd	%xmm14, -176(%rax)
.LVL740:
	movsd	-168(%r11), %xmm15
	xorpd	%xmm1, %xmm15
	mulsd	%xmm0, %xmm15
	movsd	%xmm15, -168(%rax)
	cmpl	%r9d, %esi
	jne	.L1428
.LVL741:
.L1427:
	movslq	%esi, %rcx
	leal	-1(%rbx), %r15d
	leal	1(%rsi), %r10d
	salq	$3, %rcx
	movl	$1, %r9d
	addq	%rcx, %rdx
	subl	%esi, %r15d
	addq	%rbp, %rcx
	movsd	(%rdx), %xmm3
	andl	$7, %r15d
	cmpl	%r10d, %ebx
	xorpd	%xmm1, %xmm3
	mulsd	%xmm0, %xmm3
	movsd	%xmm3, (%rcx)
	jle	.L1714
	testl	%r15d, %r15d
	je	.L1429
	cmpl	$1, %r15d
	je	.L1651
	cmpl	$2, %r15d
	je	.L1652
	cmpl	$3, %r15d
	je	.L1653
	cmpl	$4, %r15d
	je	.L1654
	cmpl	$5, %r15d
	je	.L1655
	cmpl	$6, %r15d
	je	.L1656
	movsd	8(%rdx), %xmm2
	movl	$2, %r9d
	xorpd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, 8(%rcx)
.L1656:
	movsd	(%rdx,%r9,8), %xmm4
	xorpd	%xmm1, %xmm4
	mulsd	%xmm0, %xmm4
	movsd	%xmm4, (%rcx,%r9,8)
	addq	$1, %r9
.L1655:
	movsd	(%rdx,%r9,8), %xmm5
	xorpd	%xmm1, %xmm5
	mulsd	%xmm0, %xmm5
	movsd	%xmm5, (%rcx,%r9,8)
	addq	$1, %r9
.L1654:
	movsd	(%rdx,%r9,8), %xmm6
	xorpd	%xmm1, %xmm6
	mulsd	%xmm0, %xmm6
	movsd	%xmm6, (%rcx,%r9,8)
	addq	$1, %r9
.L1653:
	movsd	(%rdx,%r9,8), %xmm7
	xorpd	%xmm1, %xmm7
	mulsd	%xmm0, %xmm7
	movsd	%xmm7, (%rcx,%r9,8)
	addq	$1, %r9
.L1652:
	movsd	(%rdx,%r9,8), %xmm8
	xorpd	%xmm1, %xmm8
	mulsd	%xmm0, %xmm8
	movsd	%xmm8, (%rcx,%r9,8)
	addq	$1, %r9
.L1651:
	movsd	(%rdx,%r9,8), %xmm9
	xorpd	%xmm1, %xmm9
	mulsd	%xmm0, %xmm9
	movsd	%xmm9, (%rcx,%r9,8)
	addq	$1, %r9
	leal	(%rsi,%r9), %r14d
	cmpl	%r14d, %ebx
	jle	.L1714
.L1429:
	movsd	(%rdx,%r9,8), %xmm12
	leaq	1(%r9), %r11
	leaq	2(%r9), %rax
	leaq	3(%r9), %r8
	leaq	4(%r9), %rdi
	leaq	5(%r9), %r15
	xorpd	%xmm1, %xmm12
	leaq	6(%r9), %r10
	leaq	7(%r9), %r14
	mulsd	%xmm0, %xmm12
	movsd	%xmm12, (%rcx,%r9,8)
	addq	$8, %r9
	movsd	(%rdx,%r11,8), %xmm13
	xorpd	%xmm1, %xmm13
	mulsd	%xmm0, %xmm13
	movsd	%xmm13, (%rcx,%r11,8)
	leal	(%rsi,%r9), %r11d
	movsd	(%rdx,%rax,8), %xmm10
	cmpl	%r11d, %ebx
	xorpd	%xmm1, %xmm10
	mulsd	%xmm0, %xmm10
	movsd	%xmm10, (%rcx,%rax,8)
	movsd	(%rdx,%r8,8), %xmm11
	xorpd	%xmm1, %xmm11
	mulsd	%xmm0, %xmm11
	movsd	%xmm11, (%rcx,%r8,8)
	movsd	(%rdx,%rdi,8), %xmm14
	xorpd	%xmm1, %xmm14
	mulsd	%xmm0, %xmm14
	movsd	%xmm14, (%rcx,%rdi,8)
	movsd	(%rdx,%r15,8), %xmm15
	xorpd	%xmm1, %xmm15
	mulsd	%xmm0, %xmm15
	movsd	%xmm15, (%rcx,%r15,8)
	movsd	(%rdx,%r10,8), %xmm3
	xorpd	%xmm1, %xmm3
	mulsd	%xmm0, %xmm3
	movsd	%xmm3, (%rcx,%r10,8)
	movsd	(%rdx,%r14,8), %xmm2
	xorpd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, (%rcx,%r14,8)
	jg	.L1429
.L1714:
	xorl	%r9d, %r9d
	cmpl	$8, %ebx
	jg	.L1431
	jmp	.L1432
.LVL742:
.L1462:
	.loc 1 387 0
	movl	$5, %esi
	jmp	.L1440
.LVL743:
.L1461:
	movl	$4, %esi
	jmp	.L1440
.LVL744:
.L1460:
	movl	$3, %esi
	jmp	.L1440
.LVL745:
.L1459:
	movl	$2, %esi
	jmp	.L1440
.LVL746:
.L1458:
	movl	$1, %esi
	jmp	.L1440
.LVL747:
.L1455:
	.loc 1 382 0
	xorl	%esi, %esi
	movsd	.LC16(%rip), %xmm1
	jmp	.L1427
.LVL748:
.L1463:
	.loc 1 387 0
	xorl	%r10d, %r10d
	movapd	.LC15(%rip), %xmm6
	jmp	.L1443
.LBE67:
	.cfi_endproc
.LFE83:
	.size	_Z25Discount_Factors_BlockingPdidS_i, .-_Z25Discount_Factors_BlockingPdidS_i
	.section	.text.unlikely
.LCOLDE20:
	.text
.LHOTE20:
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 16
.LC1:
	.long	4
	.long	4
	.long	4
	.long	4
	.align 16
.LC2:
	.long	1
	.long	1
	.long	1
	.long	1
	.align 16
.LC3:
	.long	8
	.long	8
	.long	8
	.long	8
	.align 16
.LC4:
	.long	5
	.long	5
	.long	5
	.long	5
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC8:
	.long	0
	.long	1071644672
	.align 8
.LC14:
	.long	0
	.long	1072693248
	.section	.rodata.cst16
	.align 16
.LC15:
	.long	0
	.long	1072693248
	.long	0
	.long	1072693248
	.align 16
.LC16:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 16
.LC18:
	.long	0
	.long	-2147483648
	.long	0
	.long	-2147483648
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
	.file 8 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h"
	.file 9 "/if16/jad5ju/Progs/opensource/parsec-3.0//pkgs/apps/swaptions/src/nr_routines.h"
	.file 10 "/if16/jad5ju/Progs/opensource/parsec-3.0//pkgs/apps/swaptions/src/HJM.h"
	.file 11 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x19f7
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF116
	.byte	0x4
	.long	.LASF117
	.long	.LASF118
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF8
	.byte	0x2
	.byte	0xd4
	.long	0x3f
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.long	.LASF9
	.byte	0x3
	.byte	0x83
	.long	0x70
	.uleb128 0x3
	.long	.LASF10
	.byte	0x3
	.byte	0x84
	.long	0x70
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x7
	.long	.LASF42
	.byte	0xd8
	.byte	0x4
	.byte	0xf5
	.long	0x223
	.uleb128 0x8
	.long	.LASF13
	.byte	0x4
	.byte	0xf6
	.long	0x69
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x4
	.byte	0xfb
	.long	0x96
	.byte	0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0x4
	.byte	0xfc
	.long	0x96
	.byte	0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.byte	0xfd
	.long	0x96
	.byte	0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0x4
	.byte	0xfe
	.long	0x96
	.byte	0x20
	.uleb128 0x8
	.long	.LASF18
	.byte	0x4
	.byte	0xff
	.long	0x96
	.byte	0x28
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.value	0x100
	.long	0x96
	.byte	0x30
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.value	0x101
	.long	0x96
	.byte	0x38
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.value	0x102
	.long	0x96
	.byte	0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.value	0x104
	.long	0x96
	.byte	0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.value	0x105
	.long	0x96
	.byte	0x50
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.value	0x106
	.long	0x96
	.byte	0x58
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.value	0x108
	.long	0x25b
	.byte	0x60
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.value	0x10a
	.long	0x261
	.byte	0x68
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.value	0x10c
	.long	0x69
	.byte	0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.value	0x110
	.long	0x69
	.byte	0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.value	0x112
	.long	0x77
	.byte	0x78
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.value	0x116
	.long	0x4d
	.byte	0x80
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.value	0x117
	.long	0x5b
	.byte	0x82
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.value	0x118
	.long	0x267
	.byte	0x83
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.value	0x11c
	.long	0x277
	.byte	0x88
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.value	0x125
	.long	0x82
	.byte	0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.value	0x12e
	.long	0x94
	.byte	0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.value	0x12f
	.long	0x94
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.value	0x130
	.long	0x94
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.value	0x131
	.long	0x94
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.value	0x132
	.long	0x34
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.value	0x134
	.long	0x69
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x4
	.value	0x136
	.long	0x27d
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF119
	.byte	0x4
	.byte	0x9a
	.uleb128 0x7
	.long	.LASF43
	.byte	0x18
	.byte	0x4
	.byte	0xa0
	.long	0x25b
	.uleb128 0x8
	.long	.LASF44
	.byte	0x4
	.byte	0xa1
	.long	0x25b
	.byte	0
	.uleb128 0x8
	.long	.LASF45
	.byte	0x4
	.byte	0xa2
	.long	0x261
	.byte	0x8
	.uleb128 0x8
	.long	.LASF46
	.byte	0x4
	.byte	0xa6
	.long	0x69
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22a
	.uleb128 0x6
	.byte	0x8
	.long	0xa3
	.uleb128 0xb
	.long	0x9c
	.long	0x277
	.uleb128 0xc
	.long	0x8d
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x223
	.uleb128 0xb
	.long	0x9c
	.long	0x28d
	.uleb128 0xc
	.long	0x8d
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x293
	.uleb128 0xd
	.long	0x9c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF47
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF48
	.uleb128 0x6
	.byte	0x8
	.long	0x2ac
	.uleb128 0xe
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF49
	.uleb128 0x6
	.byte	0x8
	.long	0x2d
	.uleb128 0x6
	.byte	0x8
	.long	0x2b4
	.uleb128 0xf
	.string	"std"
	.byte	0xb
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
	.long	0x2a6
	.long	0x32e
	.uleb128 0x12
	.long	0x2a6
	.uleb128 0x12
	.long	0x69
	.uleb128 0x12
	.long	0x34
	.byte	0
	.uleb128 0x13
	.long	.LASF50
	.byte	0x6
	.byte	0x97
	.long	0x69
	.long	0x348
	.uleb128 0x12
	.long	0x28d
	.uleb128 0x12
	.long	0x28d
	.byte	0
	.uleb128 0x14
	.long	.LASF51
	.byte	0x6
	.value	0x19d
	.long	0x96
	.long	0x35e
	.uleb128 0x12
	.long	0x69
	.byte	0
	.uleb128 0x14
	.long	.LASF52
	.byte	0x6
	.value	0x15c
	.long	0x96
	.long	0x379
	.uleb128 0x12
	.long	0x96
	.uleb128 0x12
	.long	0x28d
	.byte	0
	.uleb128 0x13
	.long	.LASF53
	.byte	0x6
	.byte	0x9a
	.long	0x34
	.long	0x398
	.uleb128 0x12
	.long	0x96
	.uleb128 0x12
	.long	0x28d
	.uleb128 0x12
	.long	0x34
	.byte	0
	.uleb128 0x11
	.long	.LASF55
	.byte	0x6
	.byte	0xe5
	.long	.LASF55
	.long	0x28d
	.long	0x3b6
	.uleb128 0x12
	.long	0x28d
	.uleb128 0x12
	.long	0x69
	.byte	0
	.uleb128 0x15
	.long	.LASF56
	.byte	0x6
	.value	0x134
	.long	.LASF56
	.long	0x28d
	.long	0x3d5
	.uleb128 0x12
	.long	0x28d
	.uleb128 0x12
	.long	0x28d
	.byte	0
	.uleb128 0x15
	.long	.LASF57
	.byte	0x6
	.value	0x100
	.long	.LASF57
	.long	0x28d
	.long	0x3f4
	.uleb128 0x12
	.long	0x28d
	.uleb128 0x12
	.long	0x69
	.byte	0
	.uleb128 0x15
	.long	.LASF58
	.byte	0x6
	.value	0x14f
	.long	.LASF58
	.long	0x28d
	.long	0x413
	.uleb128 0x12
	.long	0x28d
	.uleb128 0x12
	.long	0x28d
	.byte	0
	.uleb128 0x16
	.long	.LASF59
	.byte	0x1
	.byte	0x58
	.long	0x69
	.byte	0x1
	.long	0x45a
	.uleb128 0x17
	.long	.LASF60
	.byte	0x1
	.byte	0x58
	.long	0x2b4
	.uleb128 0x18
	.string	"iN"
	.byte	0x1
	.byte	0x59
	.long	0x69
	.uleb128 0x17
	.long	.LASF61
	.byte	0x1
	.byte	0x5a
	.long	0x2b4
	.uleb128 0x19
	.uleb128 0x1a
	.long	.LASF62
	.byte	0x1
	.byte	0x5e
	.long	0x69
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x5f
	.long	0x69
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x413
	.long	.LASF120
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x4aa
	.uleb128 0x1d
	.long	0x423
	.long	.LLST0
	.uleb128 0x1d
	.long	0x42e
	.long	.LLST1
	.uleb128 0x1d
	.long	0x438
	.long	.LLST2
	.uleb128 0x1e
	.long	.Ldebug_ranges0+0
	.uleb128 0x1f
	.long	0x444
	.byte	0
	.uleb128 0x20
	.long	0x44f
	.long	.LLST3
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF67
	.byte	0x1
	.byte	0x6c
	.long	.LASF69
	.long	0x69
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x619
	.uleb128 0x22
	.long	.LASF63
	.byte	0x1
	.byte	0x6c
	.long	0x2ba
	.long	.LLST4
	.uleb128 0x23
	.string	"iN"
	.byte	0x1
	.byte	0x6d
	.long	0x69
	.long	.LLST5
	.uleb128 0x22
	.long	.LASF64
	.byte	0x1
	.byte	0x6e
	.long	0x69
	.long	.LLST6
	.uleb128 0x22
	.long	.LASF65
	.byte	0x1
	.byte	0x6f
	.long	0x2b4
	.long	.LLST7
	.uleb128 0x22
	.long	.LASF66
	.byte	0x1
	.byte	0x70
	.long	0x2ba
	.long	.LLST8
	.uleb128 0x1e
	.long	.Ldebug_ranges0+0x50
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.byte	0x84
	.long	0x69
	.long	.LLST9
	.uleb128 0x24
	.string	"j"
	.byte	0x1
	.byte	0x84
	.long	0x69
	.long	.LLST10
	.uleb128 0x25
	.long	.LASF62
	.byte	0x1
	.byte	0x85
	.long	0x69
	.long	.LLST11
	.uleb128 0x26
	.quad	.LVL51
	.long	0x18f7
	.uleb128 0x26
	.quad	.LVL52
	.long	0x18f7
	.uleb128 0x26
	.quad	.LVL53
	.long	0x18f7
	.uleb128 0x26
	.quad	.LVL54
	.long	0x18f7
	.uleb128 0x26
	.quad	.LVL55
	.long	0x18f7
	.uleb128 0x26
	.quad	.LVL56
	.long	0x18f7
	.uleb128 0x26
	.quad	.LVL57
	.long	0x18f7
	.uleb128 0x26
	.quad	.LVL58
	.long	0x18f7
	.uleb128 0x26
	.quad	.LVL59
	.long	0x18f7
	.uleb128 0x26
	.quad	.LVL60
	.long	0x18f7
	.uleb128 0x26
	.quad	.LVL61
	.long	0x18f7
	.uleb128 0x26
	.quad	.LVL62
	.long	0x18f7
	.uleb128 0x26
	.quad	.LVL63
	.long	0x18f7
	.uleb128 0x26
	.quad	.LVL64
	.long	0x18f7
	.uleb128 0x26
	.quad	.LVL65
	.long	0x18f7
	.uleb128 0x26
	.quad	.LVL66
	.long	0x18f7
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF68
	.byte	0x1
	.byte	0x91
	.long	.LASF70
	.long	0x69
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x6ed
	.uleb128 0x22
	.long	.LASF71
	.byte	0x1
	.byte	0x91
	.long	0x2b4
	.long	.LLST12
	.uleb128 0x27
	.long	.LASF72
	.byte	0x1
	.byte	0x92
	.long	0x2ba
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.string	"iN"
	.byte	0x1
	.byte	0x93
	.long	0x69
	.long	.LLST13
	.uleb128 0x22
	.long	.LASF64
	.byte	0x1
	.byte	0x94
	.long	0x69
	.long	.LLST14
	.uleb128 0x22
	.long	.LASF73
	.byte	0x1
	.byte	0x95
	.long	0x2d
	.long	.LLST15
	.uleb128 0x22
	.long	.LASF63
	.byte	0x1
	.byte	0x96
	.long	0x2ba
	.long	.LLST16
	.uleb128 0x1e
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x28
	.long	.LASF62
	.byte	0x1
	.byte	0x9a
	.long	0x69
	.byte	0
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.byte	0x9b
	.long	0x69
	.long	.LLST17
	.uleb128 0x24
	.string	"j"
	.byte	0x1
	.byte	0x9b
	.long	0x69
	.long	.LLST18
	.uleb128 0x24
	.string	"l"
	.byte	0x1
	.byte	0x9b
	.long	0x69
	.long	.LLST19
	.uleb128 0x25
	.long	.LASF74
	.byte	0x1
	.byte	0x9c
	.long	0x2d
	.long	.LLST20
	.uleb128 0x25
	.long	.LASF75
	.byte	0x1
	.byte	0x9d
	.long	0x2d
	.long	.LLST21
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF76
	.byte	0x1
	.byte	0xbc
	.long	.LASF77
	.long	0x69
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0xd65
	.uleb128 0x22
	.long	.LASF78
	.byte	0x1
	.byte	0xbc
	.long	0x2ba
	.long	.LLST22
	.uleb128 0x23
	.string	"iN"
	.byte	0x1
	.byte	0xbd
	.long	0x69
	.long	.LLST23
	.uleb128 0x22
	.long	.LASF64
	.byte	0x1
	.byte	0xbe
	.long	0x69
	.long	.LLST24
	.uleb128 0x22
	.long	.LASF73
	.byte	0x1
	.byte	0xbf
	.long	0x2d
	.long	.LLST25
	.uleb128 0x22
	.long	.LASF60
	.byte	0x1
	.byte	0xc0
	.long	0x2b4
	.long	.LLST26
	.uleb128 0x22
	.long	.LASF71
	.byte	0x1
	.byte	0xc1
	.long	0x2b4
	.long	.LLST27
	.uleb128 0x22
	.long	.LASF63
	.byte	0x1
	.byte	0xc2
	.long	0x2ba
	.long	.LLST28
	.uleb128 0x27
	.long	.LASF79
	.byte	0x1
	.byte	0xc3
	.long	0xd65
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.Ldebug_ranges0+0xe0
	.long	0xaa0
	.uleb128 0x25
	.long	.LASF62
	.byte	0x1
	.byte	0xc7
	.long	0x69
	.long	.LLST29
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.byte	0xc8
	.long	0x69
	.long	.LLST30
	.uleb128 0x24
	.string	"j"
	.byte	0x1
	.byte	0xc8
	.long	0x69
	.long	.LLST31
	.uleb128 0x24
	.string	"l"
	.byte	0x1
	.byte	0xc8
	.long	0x69
	.long	.LLST32
	.uleb128 0x25
	.long	.LASF74
	.byte	0x1
	.byte	0xca
	.long	0x2d
	.long	.LLST33
	.uleb128 0x25
	.long	.LASF80
	.byte	0x1
	.byte	0xcb
	.long	0x2d
	.long	.LLST34
	.uleb128 0x24
	.string	"pdZ"
	.byte	0x1
	.byte	0xcc
	.long	0x2b4
	.long	.LLST35
	.uleb128 0x2a
	.quad	.LVL268
	.long	0x190c
	.long	0x813
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.byte	0
	.uleb128 0x2a
	.quad	.LVL307
	.long	0x192a
	.long	0x82b
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL308
	.long	0x1943
	.uleb128 0x2a
	.quad	.LVL309
	.long	0x192a
	.long	0x850
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL310
	.long	0x1943
	.uleb128 0x2a
	.quad	.LVL311
	.long	0x192a
	.long	0x875
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL312
	.long	0x1943
	.uleb128 0x2a
	.quad	.LVL313
	.long	0x192a
	.long	0x89a
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL314
	.long	0x1943
	.uleb128 0x2a
	.quad	.LVL315
	.long	0x192a
	.long	0x8bf
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL316
	.long	0x1943
	.uleb128 0x2a
	.quad	.LVL317
	.long	0x192a
	.long	0x8e4
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL318
	.long	0x1943
	.uleb128 0x2a
	.quad	.LVL319
	.long	0x192a
	.long	0x909
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL320
	.long	0x1943
	.uleb128 0x2a
	.quad	.LVL321
	.long	0x192a
	.long	0x92e
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL322
	.long	0x1943
	.uleb128 0x2a
	.quad	.LVL323
	.long	0x192a
	.long	0x953
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL324
	.long	0x1943
	.uleb128 0x2a
	.quad	.LVL325
	.long	0x192a
	.long	0x978
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL326
	.long	0x1943
	.uleb128 0x2a
	.quad	.LVL327
	.long	0x192a
	.long	0x99d
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL328
	.long	0x1943
	.uleb128 0x2a
	.quad	.LVL329
	.long	0x192a
	.long	0x9c2
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL330
	.long	0x1943
	.uleb128 0x2a
	.quad	.LVL331
	.long	0x192a
	.long	0x9e7
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL332
	.long	0x1943
	.uleb128 0x2a
	.quad	.LVL333
	.long	0x192a
	.long	0xa0c
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL334
	.long	0x1943
	.uleb128 0x2a
	.quad	.LVL335
	.long	0x192a
	.long	0xa31
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL336
	.long	0x1943
	.uleb128 0x2a
	.quad	.LVL337
	.long	0x192a
	.long	0xa56
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL338
	.long	0x1943
	.uleb128 0x2a
	.quad	.LVL381
	.long	0x195c
	.long	0xa88
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.byte	0
	.uleb128 0x2c
	.quad	.LVL385
	.long	0x18f7
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x5
	.byte	0x77
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL273
	.long	0x197b
	.long	0xabd
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL274
	.long	0x197b
	.long	0xada
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL275
	.long	0x197b
	.long	0xaf7
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL276
	.long	0x197b
	.long	0xb14
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL277
	.long	0x197b
	.long	0xb31
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL278
	.long	0x197b
	.long	0xb4e
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL279
	.long	0x197b
	.long	0xb6b
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL280
	.long	0x197b
	.long	0xb88
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL283
	.long	0x197b
	.long	0xba7
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -144
	.byte	0x6
	.byte	0
	.uleb128 0x2a
	.quad	.LVL284
	.long	0x197b
	.long	0xbc6
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -144
	.byte	0x6
	.byte	0
	.uleb128 0x2a
	.quad	.LVL285
	.long	0x197b
	.long	0xbe5
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -144
	.byte	0x6
	.byte	0
	.uleb128 0x2a
	.quad	.LVL286
	.long	0x197b
	.long	0xc04
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -144
	.byte	0x6
	.byte	0
	.uleb128 0x2a
	.quad	.LVL287
	.long	0x197b
	.long	0xc23
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -144
	.byte	0x6
	.byte	0
	.uleb128 0x2a
	.quad	.LVL288
	.long	0x197b
	.long	0xc42
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -144
	.byte	0x6
	.byte	0
	.uleb128 0x2a
	.quad	.LVL289
	.long	0x197b
	.long	0xc61
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -144
	.byte	0x6
	.byte	0
	.uleb128 0x2a
	.quad	.LVL290
	.long	0x197b
	.long	0xc80
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -144
	.byte	0x6
	.byte	0
	.uleb128 0x2a
	.quad	.LVL291
	.long	0x197b
	.long	0xc9d
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL292
	.long	0x197b
	.long	0xcba
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL293
	.long	0x197b
	.long	0xcd7
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL294
	.long	0x197b
	.long	0xcf4
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL295
	.long	0x197b
	.long	0xd11
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL296
	.long	0x197b
	.long	0xd2e
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL297
	.long	0x197b
	.long	0xd4b
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.quad	.LVL298
	.long	0x197b
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x70
	.uleb128 0x2d
	.long	.LASF81
	.byte	0x1
	.byte	0x1e
	.long	.LASF82
	.long	0x69
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0xe52
	.uleb128 0x27
	.long	.LASF78
	.byte	0x1
	.byte	0x1e
	.long	0x2ba
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2e
	.string	"iN"
	.byte	0x1
	.byte	0x1f
	.long	0x69
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x27
	.long	.LASF64
	.byte	0x1
	.byte	0x20
	.long	0x69
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x27
	.long	.LASF73
	.byte	0x1
	.byte	0x21
	.long	0x2d
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x27
	.long	.LASF61
	.byte	0x1
	.byte	0x22
	.long	0x2b4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.long	.LASF63
	.byte	0x1
	.byte	0x23
	.long	0x2ba
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x27
	.long	.LASF79
	.byte	0x1
	.byte	0x24
	.long	0xd65
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1e
	.long	.Ldebug_ranges0+0x160
	.uleb128 0x1a
	.long	.LASF62
	.byte	0x1
	.byte	0x28
	.long	0x69
	.uleb128 0x2f
	.long	.LASF60
	.byte	0x1
	.byte	0x2a
	.long	0x2b4
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1a
	.long	.LASF72
	.byte	0x1
	.byte	0x2b
	.long	0x2ba
	.uleb128 0x1a
	.long	.LASF71
	.byte	0x1
	.byte	0x2c
	.long	0x2b4
	.uleb128 0x30
	.long	0x413
	.quad	.LBB26
	.long	.Ldebug_ranges0+0x1d0
	.byte	0x1
	.byte	0x33
	.uleb128 0x31
	.long	0x438
	.uleb128 0x31
	.long	0x42e
	.uleb128 0x31
	.long	0x423
	.uleb128 0x1e
	.long	.Ldebug_ranges0+0x1d0
	.uleb128 0x32
	.long	0x444
	.uleb128 0x32
	.long	0x44f
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF83
	.byte	0x1
	.byte	0xf3
	.long	.LASF84
	.long	0x69
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x127c
	.uleb128 0x22
	.long	.LASF85
	.byte	0x1
	.byte	0xf3
	.long	0x2ba
	.long	.LLST36
	.uleb128 0x23
	.string	"iN"
	.byte	0x1
	.byte	0xf4
	.long	0x69
	.long	.LLST37
	.uleb128 0x22
	.long	.LASF64
	.byte	0x1
	.byte	0xf5
	.long	0x69
	.long	.LLST38
	.uleb128 0x22
	.long	.LASF63
	.byte	0x1
	.byte	0xf6
	.long	0x2ba
	.long	.LLST39
	.uleb128 0x29
	.long	.Ldebug_ranges0+0x230
	.long	0xfb7
	.uleb128 0x25
	.long	.LASF62
	.byte	0x1
	.byte	0xfb
	.long	0x69
	.long	.LLST40
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.byte	0xfc
	.long	0x69
	.long	.LLST41
	.uleb128 0x24
	.string	"j"
	.byte	0x1
	.byte	0xfc
	.long	0x69
	.long	.LLST42
	.uleb128 0x24
	.string	"l"
	.byte	0x1
	.byte	0xfc
	.long	0x69
	.long	.LLST43
	.uleb128 0x25
	.long	.LASF86
	.byte	0x1
	.byte	0xfd
	.long	0x2b4
	.long	.LLST44
	.uleb128 0x25
	.long	.LASF87
	.byte	0x1
	.byte	0xfe
	.long	0x2ba
	.long	.LLST45
	.uleb128 0x2a
	.quad	.LVL424
	.long	0x190c
	.long	0xf2c
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL427
	.long	0x1998
	.long	0xf56
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL492
	.long	0x195c
	.long	0xf79
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL493
	.long	0x19c0
	.long	0xfa9
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL498
	.long	0x18f7
	.byte	0
	.uleb128 0x2a
	.quad	.LVL456
	.long	0x197b
	.long	0xfd4
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL457
	.long	0x197b
	.long	0xff1
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL458
	.long	0x197b
	.long	0x100e
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL459
	.long	0x197b
	.long	0x102b
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL460
	.long	0x197b
	.long	0x1048
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL461
	.long	0x197b
	.long	0x1065
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL462
	.long	0x197b
	.long	0x1082
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL463
	.long	0x197b
	.long	0x109f
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL467
	.long	0x197b
	.long	0x10be
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.byte	0
	.uleb128 0x2a
	.quad	.LVL468
	.long	0x197b
	.long	0x10dd
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.byte	0
	.uleb128 0x2a
	.quad	.LVL469
	.long	0x197b
	.long	0x10fc
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.byte	0
	.uleb128 0x2a
	.quad	.LVL470
	.long	0x197b
	.long	0x111b
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.byte	0
	.uleb128 0x2a
	.quad	.LVL471
	.long	0x197b
	.long	0x113a
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.byte	0
	.uleb128 0x2a
	.quad	.LVL472
	.long	0x197b
	.long	0x1159
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.byte	0
	.uleb128 0x2a
	.quad	.LVL473
	.long	0x197b
	.long	0x1178
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.byte	0
	.uleb128 0x2a
	.quad	.LVL474
	.long	0x197b
	.long	0x1197
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.byte	0
	.uleb128 0x2a
	.quad	.LVL476
	.long	0x197b
	.long	0x11b4
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL477
	.long	0x197b
	.long	0x11d1
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL478
	.long	0x197b
	.long	0x11ee
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL479
	.long	0x197b
	.long	0x120b
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL480
	.long	0x197b
	.long	0x1228
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL481
	.long	0x197b
	.long	0x1245
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL482
	.long	0x197b
	.long	0x1262
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.quad	.LVL483
	.long	0x197b
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF88
	.byte	0x1
	.value	0x123
	.long	.LASF90
	.long	0x69
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x12f1
	.uleb128 0x34
	.long	.LASF61
	.byte	0x1
	.value	0x123
	.long	0x2b4
	.long	.LLST46
	.uleb128 0x35
	.string	"iN"
	.byte	0x1
	.value	0x124
	.long	0x69
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x34
	.long	.LASF60
	.byte	0x1
	.value	0x125
	.long	0x2b4
	.long	.LLST47
	.uleb128 0x1e
	.long	.Ldebug_ranges0+0x2b0
	.uleb128 0x36
	.long	.LASF62
	.byte	0x1
	.value	0x129
	.long	0x69
	.byte	0
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.value	0x12a
	.long	0x69
	.long	.LLST48
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF89
	.byte	0x1
	.value	0x135
	.long	.LASF91
	.long	0x69
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x1465
	.uleb128 0x34
	.long	.LASF92
	.byte	0x1
	.value	0x135
	.long	0x2b4
	.long	.LLST49
	.uleb128 0x38
	.string	"iN"
	.byte	0x1
	.value	0x136
	.long	0x69
	.long	.LLST50
	.uleb128 0x34
	.long	.LASF73
	.byte	0x1
	.value	0x137
	.long	0x2d
	.long	.LLST51
	.uleb128 0x34
	.long	.LASF93
	.byte	0x1
	.value	0x138
	.long	0x2b4
	.long	.LLST52
	.uleb128 0x1e
	.long	.Ldebug_ranges0+0x2e0
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.value	0x13a
	.long	0x69
	.long	.LLST53
	.uleb128 0x37
	.string	"j"
	.byte	0x1
	.value	0x13a
	.long	0x69
	.long	.LLST54
	.uleb128 0x39
	.long	.LASF62
	.byte	0x1
	.value	0x13b
	.long	0x69
	.uleb128 0x3a
	.long	.LASF74
	.byte	0x1
	.value	0x13d
	.long	0x2d
	.long	.LLST55
	.uleb128 0x26
	.quad	.LVL522
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL523
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL524
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL525
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL526
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL527
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL528
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL529
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL530
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL531
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL532
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL533
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL534
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL535
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL536
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL537
	.long	0x19e9
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF94
	.byte	0x1
	.value	0x14c
	.long	.LASF95
	.long	0x69
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0x1695
	.uleb128 0x34
	.long	.LASF92
	.byte	0x1
	.value	0x14c
	.long	0x2b4
	.long	.LLST56
	.uleb128 0x38
	.string	"iN"
	.byte	0x1
	.value	0x14d
	.long	0x69
	.long	.LLST57
	.uleb128 0x34
	.long	.LASF73
	.byte	0x1
	.value	0x14e
	.long	0x2d
	.long	.LLST58
	.uleb128 0x34
	.long	.LASF93
	.byte	0x1
	.value	0x14f
	.long	0x2b4
	.long	.LLST59
	.uleb128 0x1e
	.long	.Ldebug_ranges0+0x330
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.value	0x151
	.long	0x69
	.long	.LLST60
	.uleb128 0x37
	.string	"j"
	.byte	0x1
	.value	0x151
	.long	0x69
	.long	.LLST61
	.uleb128 0x3a
	.long	.LASF62
	.byte	0x1
	.value	0x152
	.long	0x69
	.long	.LLST62
	.uleb128 0x3a
	.long	.LASF74
	.byte	0x1
	.value	0x154
	.long	0x2d
	.long	.LLST63
	.uleb128 0x3a
	.long	.LASF96
	.byte	0x1
	.value	0x157
	.long	0x2b4
	.long	.LLST64
	.uleb128 0x2a
	.quad	.LVL553
	.long	0x190c
	.long	0x153a
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.byte	0
	.uleb128 0x26
	.quad	.LVL569
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL570
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL571
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL572
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL573
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL574
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL575
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL576
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL578
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL579
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL580
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL581
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL582
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL583
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL584
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL585
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL586
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL587
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL588
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL589
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL590
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL591
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL592
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL593
	.long	0x19e9
	.uleb128 0x2c
	.quad	.LVL610
	.long	0x195c
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF97
	.byte	0x1
	.value	0x16f
	.long	.LASF98
	.long	0x69
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0x18e1
	.uleb128 0x34
	.long	.LASF92
	.byte	0x1
	.value	0x16f
	.long	0x2b4
	.long	.LLST65
	.uleb128 0x38
	.string	"iN"
	.byte	0x1
	.value	0x170
	.long	0x69
	.long	.LLST66
	.uleb128 0x34
	.long	.LASF73
	.byte	0x1
	.value	0x171
	.long	0x2d
	.long	.LLST67
	.uleb128 0x34
	.long	.LASF93
	.byte	0x1
	.value	0x172
	.long	0x2b4
	.long	.LLST68
	.uleb128 0x34
	.long	.LASF99
	.byte	0x1
	.value	0x173
	.long	0x69
	.long	.LLST69
	.uleb128 0x1e
	.long	.Ldebug_ranges0+0x3c0
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.value	0x175
	.long	0x69
	.long	.LLST70
	.uleb128 0x37
	.string	"j"
	.byte	0x1
	.value	0x175
	.long	0x69
	.long	.LLST71
	.uleb128 0x37
	.string	"b"
	.byte	0x1
	.value	0x175
	.long	0x69
	.long	.LLST72
	.uleb128 0x3a
	.long	.LASF62
	.byte	0x1
	.value	0x176
	.long	0x69
	.long	.LLST73
	.uleb128 0x3a
	.long	.LASF74
	.byte	0x1
	.value	0x178
	.long	0x2d
	.long	.LLST74
	.uleb128 0x3a
	.long	.LASF96
	.byte	0x1
	.value	0x17b
	.long	0x2b4
	.long	.LLST75
	.uleb128 0x2a
	.quad	.LVL657
	.long	0x190c
	.long	0x1787
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x77
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x26
	.quad	.LVL664
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL665
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL666
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL667
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL668
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL669
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL670
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL671
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL673
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL674
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL675
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL676
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL677
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL678
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL679
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL680
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL681
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL682
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL683
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL684
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL685
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL686
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL687
	.long	0x19e9
	.uleb128 0x26
	.quad	.LVL688
	.long	0x19e9
	.uleb128 0x2c
	.quad	.LVL705
	.long	0x195c
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x77
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	.LASF100
	.byte	0x7
	.byte	0xa8
	.long	0x261
	.uleb128 0x3b
	.long	.LASF101
	.byte	0x7
	.byte	0xa9
	.long	0x261
	.uleb128 0x13
	.long	.LASF102
	.byte	0x8
	.byte	0x9c
	.long	0x2d
	.long	0x190c
	.uleb128 0x12
	.long	0x2d
	.byte	0
	.uleb128 0x11
	.long	.LASF103
	.byte	0x9
	.byte	0x8
	.long	.LASF104
	.long	0x2b4
	.long	0x192a
	.uleb128 0x12
	.long	0x70
	.uleb128 0x12
	.long	0x70
	.byte	0
	.uleb128 0x11
	.long	.LASF105
	.byte	0xa
	.byte	0x6
	.long	.LASF106
	.long	0x2d
	.long	0x1943
	.uleb128 0x12
	.long	0xd65
	.byte	0
	.uleb128 0x11
	.long	.LASF107
	.byte	0xa
	.byte	0x7
	.long	.LASF108
	.long	0x2d
	.long	0x195c
	.uleb128 0x12
	.long	0x2d
	.byte	0
	.uleb128 0x3c
	.long	.LASF109
	.byte	0x9
	.byte	0x9
	.long	.LASF113
	.long	0x197b
	.uleb128 0x12
	.long	0x2b4
	.uleb128 0x12
	.long	0x70
	.uleb128 0x12
	.long	0x70
	.byte	0
	.uleb128 0x3d
	.long	.LASF115
	.long	0x94
	.long	0x1998
	.uleb128 0x12
	.long	0x94
	.uleb128 0x12
	.long	0x69
	.uleb128 0x12
	.long	0x8d
	.byte	0
	.uleb128 0x11
	.long	.LASF110
	.byte	0x9
	.byte	0xa
	.long	.LASF111
	.long	0x2ba
	.long	0x19c0
	.uleb128 0x12
	.long	0x70
	.uleb128 0x12
	.long	0x70
	.uleb128 0x12
	.long	0x70
	.uleb128 0x12
	.long	0x70
	.byte	0
	.uleb128 0x3c
	.long	.LASF112
	.byte	0x9
	.byte	0xb
	.long	.LASF114
	.long	0x19e9
	.uleb128 0x12
	.long	0x2ba
	.uleb128 0x12
	.long	0x70
	.uleb128 0x12
	.long	0x70
	.uleb128 0x12
	.long	0x70
	.uleb128 0x12
	.long	0x70
	.byte	0
	.uleb128 0x3e
	.string	"exp"
	.byte	0x8
	.byte	0x64
	.long	0x2d
	.uleb128 0x12
	.long	0x2d
	.byte	0
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
	.uleb128 0x3
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL14-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL38-.Ltext0
	.quad	.LFE75-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL6-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL8-.Ltext0
	.quad	.LFE75-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL0-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL13-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL38-.Ltext0
	.quad	.LFE75-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL1-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL3-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL4-.Ltext0
	.quad	.LVL5-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL5-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL9-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL11-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0x3
	.byte	0x7a
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL15-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL16-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL18-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL19-.Ltext0
	.quad	.LVL20-.Ltext0
	.value	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL21-.Ltext0
	.quad	.LVL22-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL22-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL24-.Ltext0
	.quad	.LVL25-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL25-.Ltext0
	.quad	.LVL26-.Ltext0
	.value	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL27-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL28-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL30-.Ltext0
	.quad	.LVL31-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL31-.Ltext0
	.quad	.LVL32-.Ltext0
	.value	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL34-.Ltext0
	.quad	.LVL35-.Ltext0
	.value	0x3
	.byte	0x72
	.sleb128 -7
	.byte	0x9f
	.quad	.LVL36-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	.LVL39-.Ltext0
	.quad	.LFE75-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL40-.Ltext0
	.quad	.LVL42-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL42-.Ltext0
	.quad	.LVL44-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL44-.Ltext0
	.quad	.LVL67-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL67-.Ltext0
	.quad	.LFE76-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL40-.Ltext0
	.quad	.LVL43-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL43-.Ltext0
	.quad	.LVL44-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL44-.Ltext0
	.quad	.LVL67-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -92
	.quad	.LVL67-.Ltext0
	.quad	.LFE76-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL40-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL41-.Ltext0
	.quad	.LVL67-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL67-.Ltext0
	.quad	.LFE76-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL40-.Ltext0
	.quad	.LVL44-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL44-.Ltext0
	.quad	.LVL67-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL67-.Ltext0
	.quad	.LFE76-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL40-.Ltext0
	.quad	.LVL44-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	.LVL44-.Ltext0
	.quad	.LVL67-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.quad	.LVL67-.Ltext0
	.quad	.LFE76-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL40-.Ltext0
	.quad	.LVL44-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL67-.Ltext0
	.quad	.LFE76-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL44-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL46-.Ltext0
	.quad	.LVL47-.Ltext0
	.value	0x3
	.byte	0x7e
	.sleb128 15
	.byte	0x9f
	.quad	.LVL47-.Ltext0
	.quad	.LVL48-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL40-.Ltext0
	.quad	.LVL49-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL49-.Ltext0
	.quad	.LVL50-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL50-.Ltext0
	.quad	.LVL67-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL67-.Ltext0
	.quad	.LFE76-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL68-.Ltext0
	.quad	.LVL221-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL221-.Ltext0
	.quad	.LVL255-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL255-.Ltext0
	.quad	.LVL258-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL258-.Ltext0
	.quad	.LVL259-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL259-.Ltext0
	.quad	.LFE77-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL68-.Ltext0
	.quad	.LVL73-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL73-.Ltext0
	.quad	.LVL220-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL220-.Ltext0
	.quad	.LVL255-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL255-.Ltext0
	.quad	.LVL258-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL258-.Ltext0
	.quad	.LVL259-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL259-.Ltext0
	.quad	.LVL261-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL261-.Ltext0
	.quad	.LFE77-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL68-.Ltext0
	.quad	.LVL72-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL72-.Ltext0
	.quad	.LVL254-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL254-.Ltext0
	.quad	.LVL255-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL255-.Ltext0
	.quad	.LVL259-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL259-.Ltext0
	.quad	.LVL260-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL260-.Ltext0
	.quad	.LFE77-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL68-.Ltext0
	.quad	.LVL69-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL69-.Ltext0
	.quad	.LVL70-.Ltext0
	.value	0x1
	.byte	0x63
	.quad	.LVL70-.Ltext0
	.quad	.LFE77-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x9f
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL68-.Ltext0
	.quad	.LVL74-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	.LVL74-.Ltext0
	.quad	.LVL219-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL219-.Ltext0
	.quad	.LVL255-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.quad	.LVL255-.Ltext0
	.quad	.LVL258-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL258-.Ltext0
	.quad	.LVL259-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.quad	.LVL259-.Ltext0
	.quad	.LVL261-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	.LVL261-.Ltext0
	.quad	.LFE77-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL70-.Ltext0
	.quad	.LVL74-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL74-.Ltext0
	.quad	.LVL75-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL75-.Ltext0
	.quad	.LVL76-.Ltext0
	.value	0x3
	.byte	0x72
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL77-.Ltext0
	.quad	.LVL78-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL79-.Ltext0
	.quad	.LVL80-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL80-.Ltext0
	.quad	.LVL81-.Ltext0
	.value	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.quad	.LVL81-.Ltext0
	.quad	.LVL88-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL88-.Ltext0
	.quad	.LVL89-.Ltext0
	.value	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.quad	.LVL89-.Ltext0
	.quad	.LVL97-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL97-.Ltext0
	.quad	.LVL98-.Ltext0
	.value	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.quad	.LVL99-.Ltext0
	.quad	.LVL217-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL217-.Ltext0
	.quad	.LVL218-.Ltext0
	.value	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.quad	.LVL219-.Ltext0
	.quad	.LVL221-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL255-.Ltext0
	.quad	.LVL258-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL259-.Ltext0
	.quad	.LVL261-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL261-.Ltext0
	.quad	.LFE77-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL99-.Ltext0
	.quad	.LVL100-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL100-.Ltext0
	.quad	.LVL217-.Ltext0
	.value	0x1
	.byte	0x5b
	.quad	.LVL222-.Ltext0
	.quad	.LVL223-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL223-.Ltext0
	.quad	.LVL224-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL224-.Ltext0
	.quad	.LVL225-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL225-.Ltext0
	.quad	.LVL226-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL226-.Ltext0
	.quad	.LVL227-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL227-.Ltext0
	.quad	.LVL228-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL228-.Ltext0
	.quad	.LVL229-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL229-.Ltext0
	.quad	.LVL230-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.quad	.LVL230-.Ltext0
	.quad	.LVL231-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL231-.Ltext0
	.quad	.LVL232-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL232-.Ltext0
	.quad	.LVL233-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL233-.Ltext0
	.quad	.LVL234-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL234-.Ltext0
	.quad	.LVL235-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL235-.Ltext0
	.quad	.LVL236-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL236-.Ltext0
	.quad	.LVL237-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL237-.Ltext0
	.quad	.LVL238-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL238-.Ltext0
	.quad	.LVL239-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL239-.Ltext0
	.quad	.LVL240-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL240-.Ltext0
	.quad	.LVL241-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL241-.Ltext0
	.quad	.LVL242-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL242-.Ltext0
	.quad	.LVL243-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL243-.Ltext0
	.quad	.LVL244-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL244-.Ltext0
	.quad	.LVL245-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.quad	.LVL245-.Ltext0
	.quad	.LVL246-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL246-.Ltext0
	.quad	.LVL247-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL247-.Ltext0
	.quad	.LVL248-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL248-.Ltext0
	.quad	.LVL249-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL249-.Ltext0
	.quad	.LVL250-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL250-.Ltext0
	.quad	.LVL251-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL251-.Ltext0
	.quad	.LVL252-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL252-.Ltext0
	.quad	.LVL253-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL255-.Ltext0
	.quad	.LVL258-.Ltext0
	.value	0x1
	.byte	0x5b
	.quad	.LVL258-.Ltext0
	.quad	.LVL259-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL261-.Ltext0
	.quad	.LFE77-.Ltext0
	.value	0x1
	.byte	0x5b
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL101-.Ltext0
	.quad	.LVL102-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL102-.Ltext0
	.quad	.LVL103-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL103-.Ltext0
	.quad	.LVL104-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL104-.Ltext0
	.quad	.LVL105-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL105-.Ltext0
	.quad	.LVL106-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL106-.Ltext0
	.quad	.LVL107-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL107-.Ltext0
	.quad	.LVL108-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL108-.Ltext0
	.quad	.LVL109-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL109-.Ltext0
	.quad	.LVL110-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL110-.Ltext0
	.quad	.LVL111-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL111-.Ltext0
	.quad	.LVL112-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL112-.Ltext0
	.quad	.LVL113-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL113-.Ltext0
	.quad	.LVL114-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL114-.Ltext0
	.quad	.LVL115-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL115-.Ltext0
	.quad	.LVL116-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL116-.Ltext0
	.quad	.LVL117-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL117-.Ltext0
	.quad	.LVL118-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL118-.Ltext0
	.quad	.LVL119-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL119-.Ltext0
	.quad	.LVL120-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL120-.Ltext0
	.quad	.LVL121-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL121-.Ltext0
	.quad	.LVL122-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL122-.Ltext0
	.quad	.LVL123-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.quad	.LVL123-.Ltext0
	.quad	.LVL124-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL124-.Ltext0
	.quad	.LVL125-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL125-.Ltext0
	.quad	.LVL126-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL126-.Ltext0
	.quad	.LVL127-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL127-.Ltext0
	.quad	.LVL128-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL128-.Ltext0
	.quad	.LVL129-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL129-.Ltext0
	.quad	.LVL130-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL130-.Ltext0
	.quad	.LVL131-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.quad	.LVL131-.Ltext0
	.quad	.LVL132-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL133-.Ltext0
	.quad	.LVL134-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL134-.Ltext0
	.quad	.LVL135-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL135-.Ltext0
	.quad	.LVL136-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL136-.Ltext0
	.quad	.LVL137-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL137-.Ltext0
	.quad	.LVL138-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL138-.Ltext0
	.quad	.LVL139-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL139-.Ltext0
	.quad	.LVL140-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL140-.Ltext0
	.quad	.LVL141-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.quad	.LVL141-.Ltext0
	.quad	.LVL142-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL142-.Ltext0
	.quad	.LVL143-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL143-.Ltext0
	.quad	.LVL144-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL144-.Ltext0
	.quad	.LVL145-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL145-.Ltext0
	.quad	.LVL146-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL146-.Ltext0
	.quad	.LVL147-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL147-.Ltext0
	.quad	.LVL148-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL148-.Ltext0
	.quad	.LVL149-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.quad	.LVL149-.Ltext0
	.quad	.LVL150-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL150-.Ltext0
	.quad	.LVL151-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL151-.Ltext0
	.quad	.LVL152-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL152-.Ltext0
	.quad	.LVL153-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL153-.Ltext0
	.quad	.LVL154-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL154-.Ltext0
	.quad	.LVL155-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL155-.Ltext0
	.quad	.LVL156-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL156-.Ltext0
	.quad	.LVL157-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.quad	.LVL157-.Ltext0
	.quad	.LVL158-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL158-.Ltext0
	.quad	.LVL159-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL159-.Ltext0
	.quad	.LVL160-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL160-.Ltext0
	.quad	.LVL161-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL161-.Ltext0
	.quad	.LVL162-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL162-.Ltext0
	.quad	.LVL163-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL163-.Ltext0
	.quad	.LVL164-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL164-.Ltext0
	.quad	.LVL165-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.quad	.LVL165-.Ltext0
	.quad	.LVL166-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL166-.Ltext0
	.quad	.LVL167-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL167-.Ltext0
	.quad	.LVL168-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL168-.Ltext0
	.quad	.LVL169-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL169-.Ltext0
	.quad	.LVL170-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL170-.Ltext0
	.quad	.LVL171-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL171-.Ltext0
	.quad	.LVL172-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL172-.Ltext0
	.quad	.LVL173-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.quad	.LVL173-.Ltext0
	.quad	.LVL174-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL174-.Ltext0
	.quad	.LVL175-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL175-.Ltext0
	.quad	.LVL176-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL176-.Ltext0
	.quad	.LVL177-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL177-.Ltext0
	.quad	.LVL178-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL178-.Ltext0
	.quad	.LVL179-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL179-.Ltext0
	.quad	.LVL180-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL180-.Ltext0
	.quad	.LVL181-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.quad	.LVL181-.Ltext0
	.quad	.LVL182-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL182-.Ltext0
	.quad	.LVL183-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL183-.Ltext0
	.quad	.LVL184-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL184-.Ltext0
	.quad	.LVL185-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL185-.Ltext0
	.quad	.LVL186-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL186-.Ltext0
	.quad	.LVL187-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL187-.Ltext0
	.quad	.LVL188-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL188-.Ltext0
	.quad	.LVL189-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.quad	.LVL189-.Ltext0
	.quad	.LVL190-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL190-.Ltext0
	.quad	.LVL191-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL191-.Ltext0
	.quad	.LVL192-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL192-.Ltext0
	.quad	.LVL193-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL193-.Ltext0
	.quad	.LVL194-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL194-.Ltext0
	.quad	.LVL195-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL195-.Ltext0
	.quad	.LVL196-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL196-.Ltext0
	.quad	.LVL197-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.quad	.LVL197-.Ltext0
	.quad	.LVL198-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL255-.Ltext0
	.quad	.LVL258-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL261-.Ltext0
	.quad	.LFE77-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL70-.Ltext0
	.quad	.LVL71-.Ltext0
	.value	0x1
	.byte	0x63
	.quad	.LVL71-.Ltext0
	.quad	.LVL74-.Ltext0
	.value	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL259-.Ltext0
	.quad	.LVL261-.Ltext0
	.value	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x1b
	.byte	0x9f
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL133-.Ltext0
	.quad	.LVL134-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.quad	.LVL199-.Ltext0
	.quad	.LVL200-.Ltext0
	.value	0xa
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x22
	.byte	0x9f
	.quad	.LVL200-.Ltext0
	.quad	.LVL201-.Ltext0
	.value	0x1
	.byte	0x66
	.quad	.LVL201-.Ltext0
	.quad	.LVL202-.Ltext0
	.value	0xa
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x22
	.byte	0x9f
	.quad	.LVL202-.Ltext0
	.quad	.LVL203-.Ltext0
	.value	0x1
	.byte	0x66
	.quad	.LVL203-.Ltext0
	.quad	.LVL204-.Ltext0
	.value	0xa
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x22
	.byte	0x9f
	.quad	.LVL204-.Ltext0
	.quad	.LVL205-.Ltext0
	.value	0x1
	.byte	0x66
	.quad	.LVL205-.Ltext0
	.quad	.LVL206-.Ltext0
	.value	0xa
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x22
	.byte	0x9f
	.quad	.LVL206-.Ltext0
	.quad	.LVL207-.Ltext0
	.value	0x1
	.byte	0x66
	.quad	.LVL207-.Ltext0
	.quad	.LVL208-.Ltext0
	.value	0xa
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x22
	.byte	0x9f
	.quad	.LVL208-.Ltext0
	.quad	.LVL209-.Ltext0
	.value	0x1
	.byte	0x66
	.quad	.LVL209-.Ltext0
	.quad	.LVL210-.Ltext0
	.value	0xa
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x22
	.byte	0x9f
	.quad	.LVL210-.Ltext0
	.quad	.LVL211-.Ltext0
	.value	0x1
	.byte	0x66
	.quad	.LVL211-.Ltext0
	.quad	.LVL212-.Ltext0
	.value	0xa
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x22
	.byte	0x9f
	.quad	.LVL212-.Ltext0
	.quad	.LVL213-.Ltext0
	.value	0x1
	.byte	0x66
	.quad	.LVL213-.Ltext0
	.quad	.LVL214-.Ltext0
	.value	0xa
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x22
	.byte	0x9f
	.quad	.LVL214-.Ltext0
	.quad	.LVL215-.Ltext0
	.value	0x1
	.byte	0x66
	.quad	.LVL255-.Ltext0
	.quad	.LVL256-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.quad	.LVL257-.Ltext0
	.quad	.LVL258-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.quad	.LVL261-.Ltext0
	.quad	.LFE77-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL262-.Ltext0
	.quad	.LVL264-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL264-.Ltext0
	.quad	.LVL305-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -128
	.quad	.LVL305-.Ltext0
	.quad	.LVL386-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL386-.Ltext0
	.quad	.LFE78-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -128
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL262-.Ltext0
	.quad	.LVL265-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL265-.Ltext0
	.quad	.LVL270-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL270-.Ltext0
	.quad	.LVL304-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -148
	.quad	.LVL304-.Ltext0
	.quad	.LVL386-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL386-.Ltext0
	.quad	.LVL418-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -148
	.quad	.LVL418-.Ltext0
	.quad	.LVL420-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL420-.Ltext0
	.quad	.LFE78-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -148
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL262-.Ltext0
	.quad	.LVL268-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL268-1-.Ltext0
	.quad	.LVL271-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL271-.Ltext0
	.quad	.LVL281-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -104
	.quad	.LVL281-.Ltext0
	.quad	.LVL418-.Ltext0
	.value	0x8
	.byte	0x91
	.sleb128 -96
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL418-.Ltext0
	.quad	.LVL420-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL420-.Ltext0
	.quad	.LFE78-.Ltext0
	.value	0x8
	.byte	0x91
	.sleb128 -96
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL262-.Ltext0
	.quad	.LVL266-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL266-.Ltext0
	.quad	.LFE78-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x9f
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL262-.Ltext0
	.quad	.LVL268-1-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL268-1-.Ltext0
	.quad	.LVL305-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -136
	.quad	.LVL305-.Ltext0
	.quad	.LVL386-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL386-.Ltext0
	.quad	.LFE78-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -136
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL262-.Ltext0
	.quad	.LVL268-1-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	.LVL268-1-.Ltext0
	.quad	.LFE78-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL262-.Ltext0
	.quad	.LVL268-1-.Ltext0
	.value	0x1
	.byte	0x59
	.quad	.LVL268-1-.Ltext0
	.quad	.LVL303-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL303-.Ltext0
	.quad	.LVL380-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -112
	.quad	.LVL380-.Ltext0
	.quad	.LVL384-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x59
	.byte	0x9f
	.quad	.LVL384-.Ltext0
	.quad	.LVL386-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -112
	.quad	.LVL386-.Ltext0
	.quad	.LFE78-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL263-.Ltext0
	.quad	.LVL381-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL381-.Ltext0
	.quad	.LVL384-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL384-.Ltext0
	.quad	.LFE78-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL269-.Ltext0
	.quad	.LVL272-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL299-.Ltext0
	.quad	.LVL300-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL301-.Ltext0
	.quad	.LVL302-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL340-.Ltext0
	.quad	.LVL342-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL342-.Ltext0
	.quad	.LVL343-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL343-.Ltext0
	.quad	.LVL344-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL344-.Ltext0
	.quad	.LVL346-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL346-.Ltext0
	.quad	.LVL347-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL347-.Ltext0
	.quad	.LVL348-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL348-.Ltext0
	.quad	.LVL350-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL350-.Ltext0
	.quad	.LVL351-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.quad	.LVL351-.Ltext0
	.quad	.LVL352-.Ltext0
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.quad	.LVL352-.Ltext0
	.quad	.LVL353-.Ltext0
	.value	0x2
	.byte	0x39
	.byte	0x9f
	.quad	.LVL353-.Ltext0
	.quad	.LVL354-.Ltext0
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.quad	.LVL354-.Ltext0
	.quad	.LVL355-.Ltext0
	.value	0x2
	.byte	0x3b
	.byte	0x9f
	.quad	.LVL355-.Ltext0
	.quad	.LVL356-.Ltext0
	.value	0x2
	.byte	0x3c
	.byte	0x9f
	.quad	.LVL356-.Ltext0
	.quad	.LVL357-.Ltext0
	.value	0x2
	.byte	0x3d
	.byte	0x9f
	.quad	.LVL357-.Ltext0
	.quad	.LVL358-.Ltext0
	.value	0x2
	.byte	0x3e
	.byte	0x9f
	.quad	.LVL358-.Ltext0
	.quad	.LVL359-.Ltext0
	.value	0x2
	.byte	0x3f
	.byte	0x9f
	.quad	.LVL359-.Ltext0
	.quad	.LVL360-.Ltext0
	.value	0x2
	.byte	0x40
	.byte	0x9f
	.quad	.LVL387-.Ltext0
	.quad	.LVL388-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL388-.Ltext0
	.quad	.LVL389-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL389-.Ltext0
	.quad	.LVL390-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL390-.Ltext0
	.quad	.LVL391-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL391-.Ltext0
	.quad	.LVL392-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL392-.Ltext0
	.quad	.LVL393-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL393-.Ltext0
	.quad	.LVL394-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL394-.Ltext0
	.quad	.LVL395-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL395-.Ltext0
	.quad	.LVL396-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL396-.Ltext0
	.quad	.LVL397-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL397-.Ltext0
	.quad	.LVL398-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL398-.Ltext0
	.quad	.LVL399-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL399-.Ltext0
	.quad	.LVL400-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL400-.Ltext0
	.quad	.LVL401-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL401-.Ltext0
	.quad	.LVL402-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL402-.Ltext0
	.quad	.LVL403-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL403-.Ltext0
	.quad	.LVL404-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL404-.Ltext0
	.quad	.LVL405-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL405-.Ltext0
	.quad	.LVL406-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL406-.Ltext0
	.quad	.LVL407-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL407-.Ltext0
	.quad	.LVL408-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL408-.Ltext0
	.quad	.LVL409-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.quad	.LVL409-.Ltext0
	.quad	.LVL410-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL410-.Ltext0
	.quad	.LVL411-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL411-.Ltext0
	.quad	.LVL412-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL412-.Ltext0
	.quad	.LVL413-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL413-.Ltext0
	.quad	.LVL414-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL414-.Ltext0
	.quad	.LVL415-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL415-.Ltext0
	.quad	.LVL416-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL416-.Ltext0
	.quad	.LVL417-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL418-.Ltext0
	.quad	.LVL420-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL272-.Ltext0
	.quad	.LVL281-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL282-.Ltext0
	.quad	.LVL302-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL302-.Ltext0
	.quad	.LVL305-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL305-.Ltext0
	.quad	.LVL379-.Ltext0
	.value	0xb
	.byte	0x91
	.sleb128 -148
	.byte	0x94
	.byte	0x4
	.byte	0x20
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x9f
	.quad	.LVL384-.Ltext0
	.quad	.LVL386-.Ltext0
	.value	0xb
	.byte	0x91
	.sleb128 -148
	.byte	0x94
	.byte	0x4
	.byte	0x20
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x9f
	.quad	.LVL386-.Ltext0
	.quad	.LVL418-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL420-.Ltext0
	.quad	.LFE78-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST32:
	.quad	.LVL305-.Ltext0
	.quad	.LVL306-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL339-.Ltext0
	.quad	.LVL340-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL378-.Ltext0
	.quad	.LVL380-.Ltext0
	.value	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST33:
	.quad	.LVL267-.Ltext0
	.quad	.LVL268-1-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL268-1-.Ltext0
	.quad	.LVL382-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL382-.Ltext0
	.quad	.LVL384-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -160
	.quad	.LVL384-.Ltext0
	.quad	.LFE78-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	0
	.quad	0
.LLST34:
	.quad	.LVL340-.Ltext0
	.quad	.LVL341-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.quad	.LVL342-.Ltext0
	.quad	.LVL343-.Ltext0
	.value	0x1
	.byte	0x67
	.quad	.LVL343-.Ltext0
	.quad	.LVL344-.Ltext0
	.value	0x1
	.byte	0x69
	.quad	.LVL344-.Ltext0
	.quad	.LVL345-.Ltext0
	.value	0x1
	.byte	0x6a
	.quad	.LVL345-.Ltext0
	.quad	.LVL346-.Ltext0
	.value	0x28
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 16
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 16
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x2d
	.byte	0x22
	.byte	0x22
	.byte	0x9f
	.quad	.LVL346-.Ltext0
	.quad	.LVL347-.Ltext0
	.value	0x1
	.byte	0x6a
	.quad	.LVL347-.Ltext0
	.quad	.LVL348-.Ltext0
	.value	0x1
	.byte	0x6d
	.quad	.LVL348-.Ltext0
	.quad	.LVL349-.Ltext0
	.value	0x1
	.byte	0x65
	.quad	.LVL349-.Ltext0
	.quad	.LVL350-.Ltext0
	.value	0x2
	.byte	0x90
	.uleb128 0x20
	.quad	.LVL350-.Ltext0
	.quad	.LVL351-.Ltext0
	.value	0x1
	.byte	0x65
	.quad	.LVL351-.Ltext0
	.quad	.LVL352-.Ltext0
	.value	0x8
	.byte	0xf5
	.uleb128 0x15
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x2d
	.byte	0x22
	.byte	0x9f
	.quad	.LVL352-.Ltext0
	.quad	.LVL353-.Ltext0
	.value	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x2d
	.byte	0x8
	.long	0
	.long	0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL353-.Ltext0
	.quad	.LVL354-.Ltext0
	.value	0x30
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x2d
	.byte	0x8
	.long	0
	.long	0
	.byte	0x22
	.byte	0x22
	.byte	0x9f
	.quad	.LVL354-.Ltext0
	.quad	.LVL355-.Ltext0
	.value	0x42
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 16
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 16
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x2d
	.byte	0x8
	.long	0
	.long	0
	.byte	0x22
	.byte	0x22
	.byte	0x22
	.byte	0x9f
	.quad	.LVL355-.Ltext0
	.quad	.LVL356-.Ltext0
	.value	0x54
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 16
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 16
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x2d
	.byte	0x8
	.long	0
	.long	0
	.byte	0x22
	.byte	0x22
	.byte	0x22
	.byte	0x7f
	.sleb128 24
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 24
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.quad	.LVL356-.Ltext0
	.quad	.LVL357-.Ltext0
	.value	0x66
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 16
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 16
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x2d
	.byte	0x8
	.long	0
	.long	0
	.byte	0x22
	.byte	0x22
	.byte	0x22
	.byte	0x7f
	.sleb128 24
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 24
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x22
	.byte	0x7f
	.sleb128 32
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.quad	.LVL357-.Ltext0
	.quad	.LVL358-.Ltext0
	.value	0x78
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 16
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 16
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x2d
	.byte	0x8
	.long	0
	.long	0
	.byte	0x22
	.byte	0x22
	.byte	0x22
	.byte	0x7f
	.sleb128 24
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 24
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x22
	.byte	0x7f
	.sleb128 32
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x22
	.byte	0x7f
	.sleb128 40
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 40
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.quad	.LVL358-.Ltext0
	.quad	.LVL359-.Ltext0
	.value	0x8a
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 16
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 16
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x2d
	.byte	0x8
	.long	0
	.long	0
	.byte	0x22
	.byte	0x22
	.byte	0x22
	.byte	0x7f
	.sleb128 24
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 24
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x22
	.byte	0x7f
	.sleb128 32
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x22
	.byte	0x7f
	.sleb128 40
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 40
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x22
	.byte	0x7f
	.sleb128 48
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 48
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.quad	.LVL359-.Ltext0
	.quad	.LVL360-.Ltext0
	.value	0x1
	.byte	0x6a
	.quad	.LVL361-.Ltext0
	.quad	.LVL362-.Ltext0
	.value	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x2d
	.byte	0x8
	.long	0
	.long	0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL362-.Ltext0
	.quad	.LVL363-.Ltext0
	.value	0x30
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x2d
	.byte	0x8
	.long	0
	.long	0
	.byte	0x22
	.byte	0x22
	.byte	0x9f
	.quad	.LVL363-.Ltext0
	.quad	.LVL364-.Ltext0
	.value	0x42
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 16
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 16
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x2d
	.byte	0x8
	.long	0
	.long	0
	.byte	0x22
	.byte	0x22
	.byte	0x22
	.byte	0x9f
	.quad	.LVL364-.Ltext0
	.quad	.LVL365-.Ltext0
	.value	0x54
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 16
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 16
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x2d
	.byte	0x8
	.long	0
	.long	0
	.byte	0x22
	.byte	0x22
	.byte	0x22
	.byte	0x7f
	.sleb128 24
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 24
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.quad	.LVL365-.Ltext0
	.quad	.LVL366-.Ltext0
	.value	0x66
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 16
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 16
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x2d
	.byte	0x8
	.long	0
	.long	0
	.byte	0x22
	.byte	0x22
	.byte	0x22
	.byte	0x7f
	.sleb128 24
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 24
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x22
	.byte	0x7f
	.sleb128 32
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.quad	.LVL366-.Ltext0
	.quad	.LVL367-.Ltext0
	.value	0x78
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 16
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 16
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x2d
	.byte	0x8
	.long	0
	.long	0
	.byte	0x22
	.byte	0x22
	.byte	0x22
	.byte	0x7f
	.sleb128 24
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 24
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x22
	.byte	0x7f
	.sleb128 32
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x22
	.byte	0x7f
	.sleb128 40
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 40
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.quad	.LVL367-.Ltext0
	.quad	.LVL368-.Ltext0
	.value	0x8a
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 16
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 16
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x2d
	.byte	0x8
	.long	0
	.long	0
	.byte	0x22
	.byte	0x22
	.byte	0x22
	.byte	0x7f
	.sleb128 24
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 24
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x22
	.byte	0x7f
	.sleb128 32
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x22
	.byte	0x7f
	.sleb128 40
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 40
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x22
	.byte	0x7f
	.sleb128 48
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 48
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.quad	.LVL369-.Ltext0
	.quad	.LVL370-.Ltext0
	.value	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x2d
	.byte	0x8
	.long	0
	.long	0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL370-.Ltext0
	.quad	.LVL371-.Ltext0
	.value	0x30
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x2d
	.byte	0x8
	.long	0
	.long	0
	.byte	0x22
	.byte	0x22
	.byte	0x9f
	.quad	.LVL371-.Ltext0
	.quad	.LVL372-.Ltext0
	.value	0x42
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 16
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 16
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x2d
	.byte	0x8
	.long	0
	.long	0
	.byte	0x22
	.byte	0x22
	.byte	0x22
	.byte	0x9f
	.quad	.LVL372-.Ltext0
	.quad	.LVL373-.Ltext0
	.value	0x54
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 16
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 16
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x2d
	.byte	0x8
	.long	0
	.long	0
	.byte	0x22
	.byte	0x22
	.byte	0x22
	.byte	0x7f
	.sleb128 24
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 24
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.quad	.LVL373-.Ltext0
	.quad	.LVL374-.Ltext0
	.value	0x66
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 16
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 16
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x2d
	.byte	0x8
	.long	0
	.long	0
	.byte	0x22
	.byte	0x22
	.byte	0x22
	.byte	0x7f
	.sleb128 24
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 24
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x22
	.byte	0x7f
	.sleb128 32
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.quad	.LVL374-.Ltext0
	.quad	.LVL375-.Ltext0
	.value	0x78
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 16
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 16
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x2d
	.byte	0x8
	.long	0
	.long	0
	.byte	0x22
	.byte	0x22
	.byte	0x22
	.byte	0x7f
	.sleb128 24
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 24
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x22
	.byte	0x7f
	.sleb128 32
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x22
	.byte	0x7f
	.sleb128 40
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 40
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.quad	.LVL375-.Ltext0
	.quad	.LVL376-.Ltext0
	.value	0x8a
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 16
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 16
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7f
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x2d
	.byte	0x8
	.long	0
	.long	0
	.byte	0x22
	.byte	0x22
	.byte	0x22
	.byte	0x7f
	.sleb128 24
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 24
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x22
	.byte	0x7f
	.sleb128 32
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x22
	.byte	0x7f
	.sleb128 40
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 40
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x22
	.byte	0x7f
	.sleb128 48
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 48
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.quad	.LVL376-.Ltext0
	.quad	.LVL377-.Ltext0
	.value	0x1
	.byte	0x65
	.quad	0
	.quad	0
.LLST35:
	.quad	.LVL269-.Ltext0
	.quad	.LVL272-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL272-.Ltext0
	.quad	.LVL305-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL305-.Ltext0
	.quad	.LVL380-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL380-.Ltext0
	.quad	.LVL383-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL384-.Ltext0
	.quad	.LVL386-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL386-.Ltext0
	.quad	.LVL418-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL418-.Ltext0
	.quad	.LVL419-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL419-.Ltext0
	.quad	.LFE78-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST36:
	.quad	.LVL421-.Ltext0
	.quad	.LVL422-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL422-.Ltext0
	.quad	.LVL495-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL495-.Ltext0
	.quad	.LVL496-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL496-.Ltext0
	.quad	.LFE79-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST37:
	.quad	.LVL421-.Ltext0
	.quad	.LVL423-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL423-.Ltext0
	.quad	.LVL429-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL429-.Ltext0
	.quad	.LVL465-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.quad	.LVL465-.Ltext0
	.quad	.LVL496-.Ltext0
	.value	0x8
	.byte	0x91
	.sleb128 -124
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL496-.Ltext0
	.quad	.LFE79-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.quad	0
	.quad	0
.LLST38:
	.quad	.LVL421-.Ltext0
	.quad	.LVL424-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL424-1-.Ltext0
	.quad	.LVL455-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL455-.Ltext0
	.quad	.LVL464-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL464-.Ltext0
	.quad	.LVL475-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL475-.Ltext0
	.quad	.LVL484-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.quad	.LVL484-.Ltext0
	.quad	.LVL491-.Ltext0
	.value	0x8
	.byte	0x91
	.sleb128 -92
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0x9
	.byte	0x9f
	.quad	.LVL491-.Ltext0
	.quad	.LVL496-.Ltext0
	.value	0x8
	.byte	0x91
	.sleb128 -104
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL496-.Ltext0
	.quad	.LFE79-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST39:
	.quad	.LVL421-.Ltext0
	.quad	.LVL424-1-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL424-1-.Ltext0
	.quad	.LVL430-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -136
	.quad	.LVL430-.Ltext0
	.quad	.LFE79-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST40:
	.quad	.LVL421-.Ltext0
	.quad	.LVL493-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL493-.Ltext0
	.quad	.LVL496-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL496-.Ltext0
	.quad	.LFE79-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST41:
	.quad	.LVL428-.Ltext0
	.quad	.LVL430-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL453-.Ltext0
	.quad	.LVL455-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL485-.Ltext0
	.quad	.LVL486-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL487-.Ltext0
	.quad	.LVL491-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL500-.Ltext0
	.quad	.LFE79-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST42:
	.quad	.LVL431-.Ltext0
	.quad	.LVL432-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL433-.Ltext0
	.quad	.LVL434-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL434-.Ltext0
	.quad	.LVL435-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL435-.Ltext0
	.quad	.LVL442-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL442-.Ltext0
	.quad	.LVL443-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL443-.Ltext0
	.quad	.LVL451-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL451-.Ltext0
	.quad	.LVL452-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL455-.Ltext0
	.quad	.LVL464-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL466-.Ltext0
	.quad	.LVL486-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL488-.Ltext0
	.quad	.LVL489-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL496-.Ltext0
	.quad	.LVL497-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL499-.Ltext0
	.quad	.LVL500-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST43:
	.quad	.LVL489-.Ltext0
	.quad	.LVL490-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST44:
	.quad	.LVL425-.Ltext0
	.quad	.LVL426-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL426-.Ltext0
	.quad	.LVL494-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL496-.Ltext0
	.quad	.LFE79-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST45:
	.quad	.LVL428-.Ltext0
	.quad	.LVL430-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL430-.Ltext0
	.quad	.LVL454-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL454-.Ltext0
	.quad	.LVL464-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	.LVL496-.Ltext0
	.quad	.LFE79-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST46:
	.quad	.LVL501-.Ltext0
	.quad	.LVL507-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL507-.Ltext0
	.quad	.LVL508-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL508-.Ltext0
	.quad	.LFE80-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST47:
	.quad	.LVL501-.Ltext0
	.quad	.LVL506-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL506-.Ltext0
	.quad	.LVL508-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL508-.Ltext0
	.quad	.LFE80-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST48:
	.quad	.LVL502-.Ltext0
	.quad	.LVL503-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL504-.Ltext0
	.quad	.LVL505-.Ltext0
	.value	0x3
	.byte	0x7a
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL508-.Ltext0
	.quad	.LFE80-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST49:
	.quad	.LVL509-.Ltext0
	.quad	.LVL520-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL520-.Ltext0
	.quad	.LVL541-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL541-.Ltext0
	.quad	.LFE81-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST50:
	.quad	.LVL509-.Ltext0
	.quad	.LVL520-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL520-.Ltext0
	.quad	.LVL539-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.quad	.LVL539-.Ltext0
	.quad	.LVL540-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL540-.Ltext0
	.quad	.LVL541-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.quad	.LVL541-.Ltext0
	.quad	.LFE81-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST51:
	.quad	.LVL509-.Ltext0
	.quad	.LVL510-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL510-.Ltext0
	.quad	.LFE81-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x9f
	.quad	0
	.quad	0
.LLST52:
	.quad	.LVL509-.Ltext0
	.quad	.LVL520-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL520-.Ltext0
	.quad	.LVL539-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	.LVL539-.Ltext0
	.quad	.LVL540-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL540-.Ltext0
	.quad	.LVL541-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	.LVL541-.Ltext0
	.quad	.LFE81-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST53:
	.quad	.LVL511-.Ltext0
	.quad	.LVL512-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL512-.Ltext0
	.quad	.LVL513-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL513-.Ltext0
	.quad	.LVL514-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL514-.Ltext0
	.quad	.LVL515-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL515-.Ltext0
	.quad	.LVL516-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL516-.Ltext0
	.quad	.LVL517-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL517-.Ltext0
	.quad	.LVL518-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL519-.Ltext0
	.quad	.LVL520-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL520-.Ltext0
	.quad	.LVL539-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL540-.Ltext0
	.quad	.LVL541-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL541-.Ltext0
	.quad	.LVL542-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL542-.Ltext0
	.quad	.LVL543-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL543-.Ltext0
	.quad	.LVL544-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL544-.Ltext0
	.quad	.LVL545-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL545-.Ltext0
	.quad	.LVL546-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL546-.Ltext0
	.quad	.LVL547-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	0
	.quad	0
.LLST54:
	.quad	.LVL520-.Ltext0
	.quad	.LVL521-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL540-.Ltext0
	.quad	.LVL541-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST55:
	.quad	.LVL511-.Ltext0
	.quad	.LVL520-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL520-.Ltext0
	.quad	.LVL541-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -104
	.quad	.LVL541-.Ltext0
	.quad	.LFE81-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST56:
	.quad	.LVL548-.Ltext0
	.quad	.LVL549-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL549-.Ltext0
	.quad	.LVL595-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL595-.Ltext0
	.quad	.LVL596-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL596-.Ltext0
	.quad	.LVL613-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL613-.Ltext0
	.quad	.LFE82-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST57:
	.quad	.LVL548-.Ltext0
	.quad	.LVL550-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL550-.Ltext0
	.quad	.LVL612-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL612-.Ltext0
	.quad	.LVL613-.Ltext0
	.value	0x8
	.byte	0x91
	.sleb128 -88
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0x2
	.byte	0x9f
	.quad	.LVL613-.Ltext0
	.quad	.LFE82-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST58:
	.quad	.LVL548-.Ltext0
	.quad	.LVL551-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL551-.Ltext0
	.quad	.LFE82-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x9f
	.quad	0
	.quad	0
.LLST59:
	.quad	.LVL548-.Ltext0
	.quad	.LVL553-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL553-1-.Ltext0
	.quad	.LVL577-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	.LVL577-.Ltext0
	.quad	.LVL613-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL613-.Ltext0
	.quad	.LFE82-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	0
	.quad	0
.LLST60:
	.quad	.LVL554-.Ltext0
	.quad	.LVL555-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL555-.Ltext0
	.quad	.LVL556-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL556-.Ltext0
	.quad	.LVL557-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL557-.Ltext0
	.quad	.LVL558-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL558-.Ltext0
	.quad	.LVL559-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL559-.Ltext0
	.quad	.LVL560-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL560-.Ltext0
	.quad	.LVL561-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL594-.Ltext0
	.quad	.LVL596-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL596-.Ltext0
	.quad	.LVL609-.Ltext0
	.value	0x1
	.byte	0x59
	.quad	.LVL613-.Ltext0
	.quad	.LVL614-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL644-.Ltext0
	.quad	.LVL645-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL645-.Ltext0
	.quad	.LVL646-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL646-.Ltext0
	.quad	.LVL647-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL647-.Ltext0
	.quad	.LVL648-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL648-.Ltext0
	.quad	.LVL649-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	0
	.quad	0
.LLST61:
	.quad	.LVL563-.Ltext0
	.quad	.LVL565-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL566-.Ltext0
	.quad	.LVL567-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL567-.Ltext0
	.quad	.LVL568-.Ltext0
	.value	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL596-.Ltext0
	.quad	.LVL597-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL598-.Ltext0
	.quad	.LVL599-.Ltext0
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.quad	.LVL599-.Ltext0
	.quad	.LVL600-.Ltext0
	.value	0x2
	.byte	0x39
	.byte	0x9f
	.quad	.LVL600-.Ltext0
	.quad	.LVL601-.Ltext0
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.quad	.LVL601-.Ltext0
	.quad	.LVL602-.Ltext0
	.value	0x2
	.byte	0x3b
	.byte	0x9f
	.quad	.LVL602-.Ltext0
	.quad	.LVL603-.Ltext0
	.value	0x2
	.byte	0x3c
	.byte	0x9f
	.quad	.LVL603-.Ltext0
	.quad	.LVL604-.Ltext0
	.value	0x2
	.byte	0x3d
	.byte	0x9f
	.quad	.LVL604-.Ltext0
	.quad	.LVL605-.Ltext0
	.value	0x2
	.byte	0x3e
	.byte	0x9f
	.quad	.LVL605-.Ltext0
	.quad	.LVL606-.Ltext0
	.value	0x2
	.byte	0x3f
	.byte	0x9f
	.quad	.LVL606-.Ltext0
	.quad	.LVL607-.Ltext0
	.value	0x2
	.byte	0x40
	.byte	0x9f
	.quad	.LVL614-.Ltext0
	.quad	.LVL615-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL615-.Ltext0
	.quad	.LVL616-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL616-.Ltext0
	.quad	.LVL617-.Ltext0
	.value	0x3
	.byte	0x7d
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL618-.Ltext0
	.quad	.LVL619-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL620-.Ltext0
	.quad	.LVL621-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL621-.Ltext0
	.quad	.LVL622-.Ltext0
	.value	0x3
	.byte	0x7d
	.sleb128 1
	.byte	0x9f
	.quad	.LVL622-.Ltext0
	.quad	.LVL624-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL624-.Ltext0
	.quad	.LVL625-.Ltext0
	.value	0x3
	.byte	0x7d
	.sleb128 1
	.byte	0x9f
	.quad	.LVL625-.Ltext0
	.quad	.LVL626-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL626-.Ltext0
	.quad	.LVL627-.Ltext0
	.value	0x3
	.byte	0x7d
	.sleb128 1
	.byte	0x9f
	.quad	.LVL627-.Ltext0
	.quad	.LVL628-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL628-.Ltext0
	.quad	.LVL629-.Ltext0
	.value	0x3
	.byte	0x7d
	.sleb128 1
	.byte	0x9f
	.quad	.LVL629-.Ltext0
	.quad	.LVL630-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL630-.Ltext0
	.quad	.LVL631-.Ltext0
	.value	0x3
	.byte	0x7d
	.sleb128 1
	.byte	0x9f
	.quad	.LVL631-.Ltext0
	.quad	.LVL632-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL632-.Ltext0
	.quad	.LVL633-.Ltext0
	.value	0x3
	.byte	0x7d
	.sleb128 1
	.byte	0x9f
	.quad	.LVL633-.Ltext0
	.quad	.LVL634-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL634-.Ltext0
	.quad	.LVL635-.Ltext0
	.value	0x3
	.byte	0x7d
	.sleb128 1
	.byte	0x9f
	.quad	.LVL635-.Ltext0
	.quad	.LVL643-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL643-.Ltext0
	.quad	.LVL644-.Ltext0
	.value	0x3
	.byte	0x7d
	.sleb128 1
	.byte	0x9f
	.quad	.LVL651-.Ltext0
	.quad	.LFE82-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST62:
	.quad	.LVL610-.Ltext0
	.quad	.LVL613-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST63:
	.quad	.LVL552-.Ltext0
	.quad	.LVL553-1-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL553-1-.Ltext0
	.quad	.LVL564-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL613-.Ltext0
	.quad	.LVL614-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL644-.Ltext0
	.quad	.LVL649-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL650-.Ltext0
	.quad	.LVL651-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	0
	.quad	0
.LLST64:
	.quad	.LVL554-.Ltext0
	.quad	.LVL562-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL562-.Ltext0
	.quad	.LVL611-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL613-.Ltext0
	.quad	.LVL614-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL614-.Ltext0
	.quad	.LVL644-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL644-.Ltext0
	.quad	.LVL649-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL649-.Ltext0
	.quad	.LVL650-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL650-.Ltext0
	.quad	.LVL651-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL651-.Ltext0
	.quad	.LFE82-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST65:
	.quad	.LVL652-.Ltext0
	.quad	.LVL653-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL653-.Ltext0
	.quad	.LVL708-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL708-.Ltext0
	.quad	.LVL709-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL709-.Ltext0
	.quad	.LFE83-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST66:
	.quad	.LVL652-.Ltext0
	.quad	.LVL654-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL654-.Ltext0
	.quad	.LFE83-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	0
	.quad	0
.LLST67:
	.quad	.LVL652-.Ltext0
	.quad	.LVL655-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL655-.Ltext0
	.quad	.LFE83-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x9f
	.quad	0
	.quad	0
.LLST68:
	.quad	.LVL652-.Ltext0
	.quad	.LVL657-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL657-1-.Ltext0
	.quad	.LVL672-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	.LVL672-.Ltext0
	.quad	.LVL710-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL710-.Ltext0
	.quad	.LVL742-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	.LVL742-.Ltext0
	.quad	.LVL747-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL747-.Ltext0
	.quad	.LVL748-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	.LVL748-.Ltext0
	.quad	.LFE83-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST69:
	.quad	.LVL652-.Ltext0
	.quad	.LVL657-1-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL657-1-.Ltext0
	.quad	.LVL707-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL707-.Ltext0
	.quad	.LVL709-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL709-.Ltext0
	.quad	.LFE83-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST70:
	.quad	.LVL689-.Ltext0
	.quad	.LVL690-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL690-.Ltext0
	.quad	.LVL691-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL691-.Ltext0
	.quad	.LVL692-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL692-.Ltext0
	.quad	.LVL693-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL693-.Ltext0
	.quad	.LVL694-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL694-.Ltext0
	.quad	.LVL695-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL695-.Ltext0
	.quad	.LVL696-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL697-.Ltext0
	.quad	.LVL698-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL698-.Ltext0
	.quad	.LVL704-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL709-.Ltext0
	.quad	.LVL710-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL742-.Ltext0
	.quad	.LVL743-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL743-.Ltext0
	.quad	.LVL744-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL744-.Ltext0
	.quad	.LVL745-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL745-.Ltext0
	.quad	.LVL746-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL746-.Ltext0
	.quad	.LVL747-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST71:
	.quad	.LVL658-.Ltext0
	.quad	.LVL659-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL662-.Ltext0
	.quad	.LVL663-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL699-.Ltext0
	.quad	.LVL700-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL701-.Ltext0
	.quad	.LVL702-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL710-.Ltext0
	.quad	.LVL712-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL712-.Ltext0
	.quad	.LVL713-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL713-.Ltext0
	.quad	.LVL714-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL714-.Ltext0
	.quad	.LVL715-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL715-.Ltext0
	.quad	.LVL716-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL716-.Ltext0
	.quad	.LVL717-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL717-.Ltext0
	.quad	.LVL718-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL718-.Ltext0
	.quad	.LVL719-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL719-.Ltext0
	.quad	.LVL720-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL720-.Ltext0
	.quad	.LVL721-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL721-.Ltext0
	.quad	.LVL722-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL722-.Ltext0
	.quad	.LVL723-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL723-.Ltext0
	.quad	.LVL724-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL724-.Ltext0
	.quad	.LVL725-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL725-.Ltext0
	.quad	.LVL726-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL726-.Ltext0
	.quad	.LVL727-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL727-.Ltext0
	.quad	.LVL728-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL728-.Ltext0
	.quad	.LVL729-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL729-.Ltext0
	.quad	.LVL730-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL730-.Ltext0
	.quad	.LVL731-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL731-.Ltext0
	.quad	.LVL732-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL732-.Ltext0
	.quad	.LVL733-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.quad	.LVL733-.Ltext0
	.quad	.LVL734-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL734-.Ltext0
	.quad	.LVL735-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL735-.Ltext0
	.quad	.LVL736-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL736-.Ltext0
	.quad	.LVL737-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL737-.Ltext0
	.quad	.LVL738-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL738-.Ltext0
	.quad	.LVL739-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL739-.Ltext0
	.quad	.LVL740-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL740-.Ltext0
	.quad	.LVL741-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL747-.Ltext0
	.quad	.LVL748-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST72:
	.quad	.LVL698-.Ltext0
	.quad	.LVL699-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST73:
	.quad	.LVL705-.Ltext0
	.quad	.LVL709-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST74:
	.quad	.LVL656-.Ltext0
	.quad	.LVL657-1-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL657-1-.Ltext0
	.quad	.LVL661-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	.LVL710-.Ltext0
	.quad	.LVL742-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	.LVL747-.Ltext0
	.quad	.LVL748-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	0
	.quad	0
.LLST75:
	.quad	.LVL658-.Ltext0
	.quad	.LVL660-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL660-.Ltext0
	.quad	.LVL706-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL709-.Ltext0
	.quad	.LVL710-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL710-.Ltext0
	.quad	.LVL711-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL711-.Ltext0
	.quad	.LVL747-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL747-.Ltext0
	.quad	.LVL748-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL748-.Ltext0
	.quad	.LFE83-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
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
	.quad	.LBB3-.Ltext0
	.quad	.LBE3-.Ltext0
	.quad	.LBB4-.Ltext0
	.quad	.LBE4-.Ltext0
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	.LBB6-.Ltext0
	.quad	.LBE6-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB7-.Ltext0
	.quad	.LBE7-.Ltext0
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	.LBB9-.Ltext0
	.quad	.LBE9-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB10-.Ltext0
	.quad	.LBE10-.Ltext0
	.quad	.LBB11-.Ltext0
	.quad	.LBE11-.Ltext0
	.quad	.LBB12-.Ltext0
	.quad	.LBE12-.Ltext0
	.quad	.LBB13-.Ltext0
	.quad	.LBE13-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB14-.Ltext0
	.quad	.LBE14-.Ltext0
	.quad	.LBB15-.Ltext0
	.quad	.LBE15-.Ltext0
	.quad	.LBB16-.Ltext0
	.quad	.LBE16-.Ltext0
	.quad	.LBB17-.Ltext0
	.quad	.LBE17-.Ltext0
	.quad	.LBB18-.Ltext0
	.quad	.LBE18-.Ltext0
	.quad	.LBB19-.Ltext0
	.quad	.LBE19-.Ltext0
	.quad	.LBB20-.Ltext0
	.quad	.LBE20-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB25-.Ltext0
	.quad	.LBE25-.Ltext0
	.quad	.LBB36-.Ltext0
	.quad	.LBE36-.Ltext0
	.quad	.LBB37-.Ltext0
	.quad	.LBE37-.Ltext0
	.quad	.LBB38-.Ltext0
	.quad	.LBE38-.Ltext0
	.quad	.LBB39-.Ltext0
	.quad	.LBE39-.Ltext0
	.quad	.LBB40-.Ltext0
	.quad	.LBE40-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB26-.Ltext0
	.quad	.LBE26-.Ltext0
	.quad	.LBB32-.Ltext0
	.quad	.LBE32-.Ltext0
	.quad	.LBB33-.Ltext0
	.quad	.LBE33-.Ltext0
	.quad	.LBB34-.Ltext0
	.quad	.LBE34-.Ltext0
	.quad	.LBB35-.Ltext0
	.quad	.LBE35-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB41-.Ltext0
	.quad	.LBE41-.Ltext0
	.quad	.LBB42-.Ltext0
	.quad	.LBE42-.Ltext0
	.quad	.LBB43-.Ltext0
	.quad	.LBE43-.Ltext0
	.quad	.LBB44-.Ltext0
	.quad	.LBE44-.Ltext0
	.quad	.LBB45-.Ltext0
	.quad	.LBE45-.Ltext0
	.quad	.LBB46-.Ltext0
	.quad	.LBE46-.Ltext0
	.quad	.LBB47-.Ltext0
	.quad	.LBE47-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB48-.Ltext0
	.quad	.LBE48-.Ltext0
	.quad	.LBB49-.Ltext0
	.quad	.LBE49-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB50-.Ltext0
	.quad	.LBE50-.Ltext0
	.quad	.LBB51-.Ltext0
	.quad	.LBE51-.Ltext0
	.quad	.LBB52-.Ltext0
	.quad	.LBE52-.Ltext0
	.quad	.LBB53-.Ltext0
	.quad	.LBE53-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB54-.Ltext0
	.quad	.LBE54-.Ltext0
	.quad	.LBB55-.Ltext0
	.quad	.LBE55-.Ltext0
	.quad	.LBB56-.Ltext0
	.quad	.LBE56-.Ltext0
	.quad	.LBB57-.Ltext0
	.quad	.LBE57-.Ltext0
	.quad	.LBB58-.Ltext0
	.quad	.LBE58-.Ltext0
	.quad	.LBB59-.Ltext0
	.quad	.LBE59-.Ltext0
	.quad	.LBB60-.Ltext0
	.quad	.LBE60-.Ltext0
	.quad	.LBB61-.Ltext0
	.quad	.LBE61-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB62-.Ltext0
	.quad	.LBE62-.Ltext0
	.quad	.LBB63-.Ltext0
	.quad	.LBE63-.Ltext0
	.quad	.LBB64-.Ltext0
	.quad	.LBE64-.Ltext0
	.quad	.LBB65-.Ltext0
	.quad	.LBE65-.Ltext0
	.quad	.LBB66-.Ltext0
	.quad	.LBE66-.Ltext0
	.quad	.LBB67-.Ltext0
	.quad	.LBE67-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF62:
	.string	"iSuccess"
.LASF32:
	.string	"_shortbuf"
.LASF57:
	.string	"strrchr"
.LASF119:
	.string	"_IO_lock_t"
.LASF98:
	.string	"_Z25Discount_Factors_BlockingPdidS_i"
.LASF21:
	.string	"_IO_buf_end"
.LASF71:
	.string	"pdTotalDrift"
.LASF120:
	.string	"_Z20HJM_Yield_to_ForwardPdiS_"
.LASF114:
	.string	"_Z12free_dmatrixPPdllll"
.LASF74:
	.string	"ddelt"
.LASF96:
	.string	"pdexpRes"
.LASF91:
	.string	"_Z16Discount_FactorsPdidS_"
.LASF19:
	.string	"_IO_write_end"
.LASF4:
	.string	"unsigned int"
.LASF63:
	.string	"ppdFactors"
.LASF13:
	.string	"_flags"
.LASF51:
	.string	"strerror"
.LASF65:
	.string	"pdVol"
.LASF25:
	.string	"_markers"
.LASF56:
	.string	"strpbrk"
.LASF75:
	.string	"dSumVol"
.LASF109:
	.string	"free_dvector"
.LASF89:
	.string	"Discount_Factors"
.LASF81:
	.string	"HJM_SimPath_Yield"
.LASF92:
	.string	"pdDiscountFactors"
.LASF46:
	.string	"_pos"
.LASF105:
	.string	"RanUnif"
.LASF101:
	.string	"stdout"
.LASF24:
	.string	"_IO_save_end"
.LASF49:
	.string	"float"
.LASF102:
	.string	"sqrt"
.LASF83:
	.string	"HJM_Correlations"
.LASF77:
	.string	"_Z19HJM_SimPath_ForwardPPdiidS_S_S0_Pl"
.LASF48:
	.string	"long long unsigned int"
.LASF82:
	.string	"_Z17HJM_SimPath_YieldPPdiidS_S0_Pl"
.LASF94:
	.string	"Discount_Factors_opt"
.LASF23:
	.string	"_IO_backup_base"
.LASF34:
	.string	"_offset"
.LASF107:
	.string	"CumNormalInv"
.LASF27:
	.string	"_fileno"
.LASF69:
	.string	"_Z11HJM_FactorsPPdiiS_S0_"
.LASF61:
	.string	"pdYield"
.LASF8:
	.string	"size_t"
.LASF53:
	.string	"strxfrm"
.LASF16:
	.string	"_IO_read_base"
.LASF100:
	.string	"stdin"
.LASF95:
	.string	"_Z20Discount_Factors_optPdidS_"
.LASF44:
	.string	"_next"
.LASF116:
	.string	"GNU C++ 4.9.2 -mtune=generic -march=x86-64 -g -O3 -funroll-loops -fprefetch-loop-arrays -fpermissive -fno-exceptions -fstack-protector"
.LASF64:
	.string	"iFactors"
.LASF67:
	.string	"HJM_Factors"
.LASF108:
	.string	"_Z12CumNormalInvd"
.LASF50:
	.string	"strcoll"
.LASF54:
	.string	"memchr"
.LASF73:
	.string	"dYears"
.LASF66:
	.string	"ppdFacBreak"
.LASF12:
	.string	"char"
.LASF40:
	.string	"_mode"
.LASF43:
	.string	"_IO_marker"
.LASF14:
	.string	"_IO_read_ptr"
.LASF70:
	.string	"_Z10HJM_DriftsPdPS_iidS0_"
.LASF76:
	.string	"HJM_SimPath_Forward"
.LASF117:
	.string	"/if16/jad5ju/Progs/opensource/parsec-3.0//pkgs/apps/swaptions/src/HJM.cpp"
.LASF17:
	.string	"_IO_write_base"
.LASF113:
	.string	"_Z12free_dvectorPdll"
.LASF47:
	.string	"long long int"
.LASF22:
	.string	"_IO_save_base"
.LASF90:
	.string	"_Z20HJM_Forward_to_YieldPdiS_"
.LASF115:
	.string	"memset"
.LASF80:
	.string	"dTotalShock"
.LASF118:
	.string	"/localtmp/jad5ju/goa2/benchmarks/swaptions"
.LASF111:
	.string	"_Z7dmatrixllll"
.LASF35:
	.string	"__pad1"
.LASF36:
	.string	"__pad2"
.LASF37:
	.string	"__pad3"
.LASF38:
	.string	"__pad4"
.LASF39:
	.string	"__pad5"
.LASF31:
	.string	"_vtable_offset"
.LASF110:
	.string	"dmatrix"
.LASF106:
	.string	"_Z7RanUnifPl"
.LASF60:
	.string	"pdForward"
.LASF85:
	.string	"ppdHJMCorr"
.LASF15:
	.string	"_IO_read_end"
.LASF55:
	.string	"strchr"
.LASF87:
	.string	"ppdWeights"
.LASF6:
	.string	"short int"
.LASF7:
	.string	"long int"
.LASF93:
	.string	"pdRatePath"
.LASF112:
	.string	"free_dmatrix"
.LASF78:
	.string	"ppdHJMPath"
.LASF88:
	.string	"HJM_Forward_to_Yield"
.LASF68:
	.string	"HJM_Drifts"
.LASF33:
	.string	"_lock"
.LASF11:
	.string	"sizetype"
.LASF1:
	.string	"long unsigned int"
.LASF29:
	.string	"_old_offset"
.LASF42:
	.string	"_IO_FILE"
.LASF58:
	.string	"strstr"
.LASF79:
	.string	"lRndSeed"
.LASF84:
	.string	"_Z16HJM_CorrelationsPPdiiS0_"
.LASF86:
	.string	"pdTotalVol"
.LASF2:
	.string	"unsigned char"
.LASF72:
	.string	"ppdDrifts"
.LASF45:
	.string	"_sbuf"
.LASF18:
	.string	"_IO_write_ptr"
.LASF59:
	.string	"HJM_Yield_to_Forward"
.LASF52:
	.string	"strtok"
.LASF104:
	.string	"_Z7dvectorll"
.LASF9:
	.string	"__off_t"
.LASF5:
	.string	"signed char"
.LASF3:
	.string	"short unsigned int"
.LASF99:
	.string	"BLOCKSIZE"
.LASF103:
	.string	"dvector"
.LASF0:
	.string	"double"
.LASF26:
	.string	"_chain"
.LASF28:
	.string	"_flags2"
.LASF30:
	.string	"_cur_column"
.LASF97:
	.string	"Discount_Factors_Blocking"
.LASF10:
	.string	"__off64_t"
.LASF41:
	.string	"_unused2"
.LASF20:
	.string	"_IO_buf_base"
	.ident	"GCC: (Ubuntu 4.9.2-0ubuntu1~14.04) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
