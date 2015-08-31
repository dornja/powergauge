	.file	"all.cpp"
	.text
.Ltext0:
	.p2align 4,,15
	.globl	_Z12CumNormalInvd
	.type	_Z12CumNormalInvd, @function
_Z12CumNormalInvd:
.LFB50:
	.file 1 "all.cpp"
	.loc 1 41 0
	.cfi_startproc
.LVL0:
.LBB71:
	.loc 1 47 0
	movapd	%xmm0, %xmm2
.LBE71:
	.loc 1 41 0
	movapd	%xmm0, %xmm1
.LBB72:
	.loc 1 48 0
	movsd	.LC1(%rip), %xmm0
.LVL1:
	.loc 1 47 0
	subsd	.LC0(%rip), %xmm2
.LVL2:
	.loc 1 48 0
	movsd	.LC2(%rip), %xmm3
	andpd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm3
	ja	.L16
.LVL3:
	.loc 1 57 0
	xorpd	%xmm4, %xmm4
.LBE72:
	.loc 1 41 0
	subq	$40, %rsp
.LCFI0:
	.cfi_def_cfa_offset 48
.LBB73:
	.loc 1 57 0
	ucomisd	%xmm4, %xmm2
	jbe	.L13
	.loc 1 57 0 is_stmt 0 discriminator 1
	movsd	.LC11(%rip), %xmm0
	subsd	%xmm1, %xmm0
.LVL4:
.L5:
	.loc 1 58 0 is_stmt 1
	movsd	%xmm2, (%rsp)
	call	log
.LVL5:
	movsd	.LC13(%rip), %xmm5
	xorpd	%xmm5, %xmm0
	movapd	%xmm5, 16(%rsp)
	call	log
.LVL6:
	.loc 1 62 0
	xorpd	%xmm8, %xmm8
	.loc 1 61 0
	movsd	.LC14(%rip), %xmm6
	.loc 1 62 0
	movsd	(%rsp), %xmm7
	.loc 1 61 0
	mulsd	%xmm0, %xmm6
	.loc 1 62 0
	movapd	16(%rsp), %xmm9
	ucomisd	%xmm7, %xmm8
	.loc 1 61 0
	addsd	.LC15(%rip), %xmm6
	mulsd	%xmm0, %xmm6
	addsd	.LC16(%rip), %xmm6
	mulsd	%xmm0, %xmm6
	addsd	.LC17(%rip), %xmm6
	mulsd	%xmm0, %xmm6
	addsd	.LC18(%rip), %xmm6
	mulsd	%xmm0, %xmm6
	addsd	.LC19(%rip), %xmm6
	mulsd	%xmm0, %xmm6
	addsd	.LC20(%rip), %xmm6
	mulsd	%xmm0, %xmm6
	addsd	.LC21(%rip), %xmm6
	mulsd	%xmm0, %xmm6
	addsd	.LC22(%rip), %xmm6
.LVL7:
	.loc 1 62 0
	ja	.L17
.LBE73:
	.loc 1 66 0
	movapd	%xmm6, %xmm0
	addq	$40, %rsp
.LCFI1:
	.cfi_def_cfa_offset 8
	ret
.LVL8:
	.p2align 4,,10
	.p2align 3
.L16:
.LBB74:
	.loc 1 50 0
	movapd	%xmm2, %xmm10
	.loc 1 52 0
	movsd	.LC7(%rip), %xmm12
	.loc 1 50 0
	mulsd	%xmm2, %xmm10
.LVL9:
	.loc 1 52 0
	movsd	.LC3(%rip), %xmm11
	mulsd	%xmm10, %xmm12
	mulsd	%xmm10, %xmm11
	subsd	.LC8(%rip), %xmm12
	addsd	.LC4(%rip), %xmm11
	mulsd	%xmm10, %xmm12
	mulsd	%xmm10, %xmm11
	addsd	.LC9(%rip), %xmm12
	subsd	.LC5(%rip), %xmm11
	mulsd	%xmm10, %xmm12
	mulsd	%xmm10, %xmm11
	subsd	.LC10(%rip), %xmm12
	addsd	.LC6(%rip), %xmm11
	mulsd	%xmm10, %xmm12
	mulsd	%xmm2, %xmm11
	addsd	.LC11(%rip), %xmm12
	divsd	%xmm12, %xmm11
.LBE74:
	.loc 1 66 0
	movapd	%xmm11, %xmm0
	ret
.LVL10:
	.p2align 4,,10
	.p2align 3
.L13:
.LCFI2:
	.cfi_def_cfa_offset 48
.LBB75:
	.loc 1 56 0
	movapd	%xmm1, %xmm0
	jmp	.L5
.LVL11:
	.p2align 4,,10
	.p2align 3
.L17:
	.loc 1 62 0 discriminator 1
	xorpd	%xmm9, %xmm6
.LVL12:
.LBE75:
	.loc 1 66 0 discriminator 1
	addq	$40, %rsp
.LCFI3:
	.cfi_def_cfa_offset 8
	movapd	%xmm6, %xmm0
	ret
	.cfi_endproc
.LFE50:
	.size	_Z12CumNormalInvd, .-_Z12CumNormalInvd
	.p2align 4,,15
	.globl	_Z20HJM_Yield_to_ForwardPdiS_
	.type	_Z20HJM_Yield_to_ForwardPdiS_, @function
_Z20HJM_Yield_to_ForwardPdiS_:
.LFB78:
	.loc 1 160 0
	.cfi_startproc
.LBB77:
	.loc 1 167 0
	movsd	(%rdx), %xmm0
	.loc 1 168 0
	cmpl	$1, %esi
	.loc 1 167 0
	movsd	%xmm0, (%rdi)
	.loc 1 168 0
	jle	.L65
.LBE77:
	.loc 1 160 0
	pushq	%r13
.LCFI4:
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	leaq	8(%rdi), %rcx
.LBB78:
	.loc 1 157 0
	leaq	40(%rdx), %r8
	leaq	40(%rdi), %r10
	leaq	8(%rdx), %rax
	leaq	32(%rdx), %r13
.LBE78:
	.loc 1 160 0
	pushq	%r12
.LCFI5:
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
.LCFI6:
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
.LBB79:
	.loc 1 157 0
	leal	-1(%rsi), %ebp
.LBE79:
	.loc 1 160 0
	pushq	%rbx
.LCFI7:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movl	%ebp, %ebx
	shrl	$2, %ebx
.LBB80:
	.loc 1 157 0
	cmpq	%r8, %rcx
	setae	%r11b
	cmpq	%rax, %r10
	leal	0(,%rbx,4), %r12d
	setbe	%r9b
	orl	%r9d, %r11d
	cmpq	%r13, %rcx
	setae	%r8b
	cmpq	%r10, %rdx
	setae	%r10b
	orl	%r10d, %r8d
	andl	%r8d, %r11d
	cmpl	$4, %ebp
	seta	%r9b
	testb	%r9b, %r11b
	je	.L30
	testl	%r12d, %r12d
	je	.L30
	movdqa	.LC24(%rip), %xmm6
	cmpl	$2, %ebx
	movdqa	%xmm6, %xmm7
	jbe	.L31
	leal	-3(%rbx), %r11d
.LBE80:
	movdqa	.LC23(%rip), %xmm2
	xorl	%r10d, %r10d
.LBB81:
	shrl	%r11d
	movdqa	.LC25(%rip), %xmm4
	salq	$6, %r11
	leaq	72(%rdx,%r11), %r13
	.p2align 4,,10
	.p2align 3
.L22:
	.loc 1 169 0 discriminator 2
	movdqa	%xmm2, %xmm1
	prefetcht0	272(%rax)
	prefetcht0	264(%rax)
	movsd	16(%rax), %xmm8
	movdqa	%xmm2, %xmm3
	movsd	8(%rax), %xmm13
	paddd	%xmm4, %xmm1
	cvtdq2pd	%xmm1, %xmm15
	pshufd	$238, %xmm1, %xmm5
	movhpd	24(%rax), %xmm8
	paddd	%xmm7, %xmm3
	pshufd	$238, %xmm2, %xmm11
	movhpd	16(%rax), %xmm13
	cvtdq2pd	%xmm2, %xmm2
	movsd	(%rax), %xmm0
	addl	$2, %r10d
	cvtdq2pd	%xmm5, %xmm10
	movsd	-8(%rax), %xmm5
	cvtdq2pd	%xmm11, %xmm12
	mulpd	%xmm8, %xmm10
	movhpd	8(%rax), %xmm0
	movhpd	(%rax), %xmm5
	mulpd	%xmm13, %xmm12
	mulpd	%xmm5, %xmm2
	mulpd	%xmm0, %xmm15
	subpd	%xmm12, %xmm10
	pshufd	$238, %xmm3, %xmm14
	subpd	%xmm2, %xmm15
	movlpd	%xmm10, 16(%rcx)
	movdqa	%xmm3, %xmm2
	movhpd	%xmm10, 24(%rcx)
	movdqa	%xmm3, %xmm10
	cvtdq2pd	%xmm3, %xmm3
	paddd	%xmm7, %xmm2
	paddd	%xmm4, %xmm10
	pshufd	$238, %xmm10, %xmm9
	cvtdq2pd	%xmm10, %xmm10
	movlpd	%xmm15, (%rcx)
	movhpd	%xmm15, 8(%rcx)
	cvtdq2pd	%xmm14, %xmm15
	cvtdq2pd	%xmm9, %xmm11
	movsd	48(%rax), %xmm12
	movsd	40(%rax), %xmm0
	movsd	32(%rax), %xmm5
	movhpd	56(%rax), %xmm12
	movsd	24(%rax), %xmm9
	movhpd	48(%rax), %xmm0
	movhpd	40(%rax), %xmm5
	mulpd	%xmm12, %xmm11
	movhpd	32(%rax), %xmm9
	.loc 1 157 0 discriminator 2
	addq	$64, %rax
	.loc 1 169 0 discriminator 2
	mulpd	%xmm0, %xmm15
	.loc 1 157 0 discriminator 2
	leaq	-8(%rax), %r9
	.loc 1 169 0 discriminator 2
	mulpd	%xmm5, %xmm10
	mulpd	%xmm9, %xmm3
	subpd	%xmm15, %xmm11
	subpd	%xmm3, %xmm10
	movlpd	%xmm11, 48(%rcx)
	movhpd	%xmm11, 56(%rcx)
	movlpd	%xmm10, 32(%rcx)
	movhpd	%xmm10, 40(%rcx)
	.loc 1 157 0 discriminator 2
	addq	$64, %rcx
	cmpq	%r13, %rax
	jne	.L22
.L21:
	.loc 1 169 0
	movdqa	%xmm2, %xmm11
	movl	%r10d, %r13d
	movsd	16(%rax), %xmm14
	notl	%r13d
	movsd	16(%r9), %xmm10
	paddd	%xmm4, %xmm11
	cvtdq2pd	%xmm11, %xmm12
	movsd	(%rax), %xmm8
	movhpd	24(%rax), %xmm14
	leal	1(%r10), %r11d
	movsd	(%r9), %xmm9
	movhpd	24(%r9), %xmm10
	pshufd	$238, %xmm11, %xmm7
	movhpd	8(%rax), %xmm8
	cvtdq2pd	%xmm2, %xmm11
	pshufd	$238, %xmm2, %xmm0
	movhpd	8(%r9), %xmm9
	paddd	%xmm6, %xmm2
	mulpd	%xmm8, %xmm12
	addl	%ebx, %r13d
	cvtdq2pd	%xmm7, %xmm13
	andl	$1, %r13d
	cmpl	%r11d, %ebx
	mulpd	%xmm14, %xmm13
	cvtdq2pd	%xmm0, %xmm1
	movl	$32, %r8d
	mulpd	%xmm10, %xmm1
	mulpd	%xmm9, %xmm11
	subpd	%xmm1, %xmm13
	subpd	%xmm11, %xmm12
	movlpd	%xmm13, 16(%rcx)
	movhpd	%xmm13, 24(%rcx)
	movlpd	%xmm12, (%rcx)
	movhpd	%xmm12, 8(%rcx)
	jbe	.L63
	testl	%r13d, %r13d
	je	.L28
	movdqa	%xmm2, %xmm13
	leal	2(%r10), %r11d
	movsd	48(%rax), %xmm0
	movl	$64, %r8d
	movsd	48(%r9), %xmm5
	paddd	%xmm4, %xmm13
	cvtdq2pd	%xmm13, %xmm11
	movsd	32(%rax), %xmm3
	movhpd	56(%rax), %xmm0
	cmpl	%r11d, %ebx
	movsd	32(%r9), %xmm7
	movhpd	56(%r9), %xmm5
	pshufd	$238, %xmm13, %xmm14
	movhpd	40(%rax), %xmm3
	cvtdq2pd	%xmm2, %xmm13
	pshufd	$238, %xmm2, %xmm10
	movhpd	40(%r9), %xmm7
	paddd	%xmm6, %xmm2
	mulpd	%xmm3, %xmm11
	cvtdq2pd	%xmm14, %xmm15
	cvtdq2pd	%xmm10, %xmm12
	mulpd	%xmm0, %xmm15
	mulpd	%xmm5, %xmm12
	mulpd	%xmm7, %xmm13
	subpd	%xmm12, %xmm15
	subpd	%xmm13, %xmm11
	movlpd	%xmm15, 48(%rcx)
	movhpd	%xmm15, 56(%rcx)
	movlpd	%xmm11, 32(%rcx)
	movhpd	%xmm11, 40(%rcx)
	jbe	.L63
	.p2align 4,,10
	.p2align 3
.L28:
	movdqa	%xmm2, %xmm1
	addl	$2, %r11d
	movsd	16(%rax,%r8), %xmm12
	movsd	16(%r9,%r8), %xmm3
	paddd	%xmm4, %xmm1
	cvtdq2pd	%xmm1, %xmm13
	movsd	(%rax,%r8), %xmm7
	movhpd	24(%rax,%r8), %xmm12
	pshufd	$238, %xmm1, %xmm0
	movhpd	24(%r9,%r8), %xmm3
	movsd	(%r9,%r8), %xmm1
	movhpd	8(%rax,%r8), %xmm7
	pshufd	$238, %xmm2, %xmm8
	movdqa	%xmm2, %xmm15
	cvtdq2pd	%xmm2, %xmm2
	movhpd	8(%r9,%r8), %xmm1
	cvtdq2pd	%xmm0, %xmm10
	mulpd	%xmm7, %xmm13
	paddd	%xmm6, %xmm15
	cvtdq2pd	%xmm15, %xmm0
	mulpd	%xmm12, %xmm10
	cvtdq2pd	%xmm8, %xmm11
	mulpd	%xmm1, %xmm2
	mulpd	%xmm3, %xmm11
	pshufd	$238, %xmm15, %xmm3
	subpd	%xmm2, %xmm13
	subpd	%xmm11, %xmm10
	movlpd	%xmm13, (%rcx,%r8)
	movhpd	%xmm13, 8(%rcx,%r8)
	cvtdq2pd	%xmm3, %xmm13
	movlpd	%xmm10, 16(%rcx,%r8)
	movhpd	%xmm10, 24(%rcx,%r8)
	movdqa	%xmm15, %xmm10
	movsd	48(%rax,%r8), %xmm5
	paddd	%xmm4, %xmm10
	cvtdq2pd	%xmm10, %xmm14
	movsd	48(%r9,%r8), %xmm9
	movsd	32(%rax,%r8), %xmm2
	movhpd	56(%rax,%r8), %xmm5
	pshufd	$238, %xmm10, %xmm12
	movhpd	56(%r9,%r8), %xmm9
	movsd	32(%r9,%r8), %xmm10
	movhpd	40(%rax,%r8), %xmm2
	mulpd	%xmm9, %xmm13
	movhpd	40(%r9,%r8), %xmm10
	cvtdq2pd	%xmm12, %xmm11
	mulpd	%xmm2, %xmm14
	movdqa	%xmm15, %xmm2
	mulpd	%xmm5, %xmm11
	paddd	%xmm6, %xmm2
	mulpd	%xmm10, %xmm0
	subpd	%xmm13, %xmm11
	subpd	%xmm0, %xmm14
	movlpd	%xmm11, 48(%rcx,%r8)
	movhpd	%xmm11, 56(%rcx,%r8)
	movlpd	%xmm14, 32(%rcx,%r8)
	movhpd	%xmm14, 40(%rcx,%r8)
	addq	$64, %r8
	cmpl	%r11d, %ebx
	ja	.L28
.L63:
	cmpl	%r12d, %ebp
	leal	1(%r12), %ebx
	je	.L34
.L20:
	cmpl	%ebx, %esi
	.loc 1 157 0
	leal	1(%rbx), %r9d
	leal	-7(%rsi), %r13d
	jle	.L66
	cmpl	%r13d, %r9d
	jge	.L66
	cvtsi2sd	%ebx, %xmm0
	movslq	%ebx, %rcx
	salq	$3, %rcx
	leaq	(%rdx,%rcx), %rax
	addq	%rdi, %rcx
	.p2align 4,,10
	.p2align 3
.L25:
	.loc 1 169 0
	cvtsi2sd	%r9d, %xmm6
	mulsd	-8(%rax), %xmm0
	prefetcht0	96(%rax)
	movsd	(%rax), %xmm4
	.loc 1 157 0
	leal	2(%rbx), %r10d
	prefetcht0	88(%rax)
	leal	3(%rbx), %r8d
	leal	4(%rbx), %r11d
	leal	5(%rbx), %ebp
	.loc 1 169 0
	cvtsi2sd	%r10d, %xmm15
	.loc 1 157 0
	leal	6(%rbx), %r12d
	prefetcht0	96(%rcx)
	.loc 1 169 0
	cvtsi2sd	%r8d, %xmm5
	.loc 1 157 0
	leal	7(%rbx), %r10d
	.loc 1 169 0
	cvtsi2sd	%r11d, %xmm3
	addl	$8, %ebx
	cvtsi2sd	%ebp, %xmm9
	addl	$8, %r9d
	cvtsi2sd	%r12d, %xmm14
	cvtsi2sd	%r10d, %xmm10
	mulsd	%xmm6, %xmm4
	subsd	%xmm0, %xmm4
	cvtsi2sd	%ebx, %xmm0
	movsd	%xmm4, (%rcx)
	movsd	8(%rax), %xmm11
	mulsd	(%rax), %xmm6
	mulsd	%xmm15, %xmm11
	subsd	%xmm6, %xmm11
	movsd	%xmm11, 8(%rcx)
	movsd	16(%rax), %xmm8
	mulsd	8(%rax), %xmm15
	mulsd	%xmm5, %xmm8
	subsd	%xmm15, %xmm8
	movsd	%xmm8, 16(%rcx)
	movsd	24(%rax), %xmm13
	mulsd	16(%rax), %xmm5
	mulsd	%xmm3, %xmm13
	subsd	%xmm5, %xmm13
	movsd	%xmm13, 24(%rcx)
	movsd	32(%rax), %xmm7
	mulsd	24(%rax), %xmm3
	mulsd	%xmm9, %xmm7
	subsd	%xmm3, %xmm7
	movsd	%xmm7, 32(%rcx)
	movsd	40(%rax), %xmm2
	mulsd	32(%rax), %xmm9
	mulsd	%xmm14, %xmm2
	subsd	%xmm9, %xmm2
	movsd	%xmm2, 40(%rcx)
	movsd	48(%rax), %xmm1
	mulsd	40(%rax), %xmm14
	mulsd	%xmm10, %xmm1
	subsd	%xmm14, %xmm1
	movsd	%xmm1, 48(%rcx)
	movsd	56(%rax), %xmm12
	mulsd	48(%rax), %xmm10
	addq	$64, %rax
	mulsd	%xmm0, %xmm12
	subsd	%xmm10, %xmm12
	movsd	%xmm12, 56(%rcx)
	addq	$64, %rcx
	cmpl	%r9d, %r13d
	jg	.L25
	leal	1(%rbx), %r9d
.L24:
	.loc 1 157 0
	movslq	%ebx, %rbx
	leaq	-8(%rdx,%rbx,8), %r13
	leaq	(%rdi,%rbx,8), %rdx
	movl	%esi, %edi
	subl	%r9d, %edi
	andl	$3, %edi
	je	.L26
	.loc 1 169 0
	cvtsi2sd	%r9d, %xmm6
	mulsd	0(%r13), %xmm0
	movl	%r9d, %ecx
	mulsd	8(%r13), %xmm6
	addq	$8, %r13
	subsd	%xmm0, %xmm6
	movsd	%xmm6, (%rdx)
	addq	$8, %rdx
	.loc 1 168 0
	cmpl	%r9d, %esi
	jle	.L34
	addl	$1, %r9d
	cmpl	$1, %edi
	cvtsi2sd	%ecx, %xmm0
	je	.L26
	cmpl	$2, %edi
	je	.L55
	.loc 1 169 0
	cvtsi2sd	%r9d, %xmm4
	mulsd	0(%r13), %xmm0
	movl	%r9d, %eax
	addl	$1, %r9d
	mulsd	8(%r13), %xmm4
	addq	$8, %r13
	subsd	%xmm0, %xmm4
	cvtsi2sd	%eax, %xmm0
	movsd	%xmm4, (%rdx)
	addq	$8, %rdx
.L55:
	cvtsi2sd	%r9d, %xmm15
	mulsd	0(%r13), %xmm0
	movl	%r9d, %r8d
	addl	$1, %r9d
	mulsd	8(%r13), %xmm15
	addq	$8, %r13
	subsd	%xmm0, %xmm15
	cvtsi2sd	%r8d, %xmm0
	movsd	%xmm15, (%rdx)
	addq	$8, %rdx
	jmp	.L26
	.p2align 4,,10
	.p2align 3
.L67:
	leal	1(%r9), %r11d
	movsd	16(%r13), %xmm3
	mulsd	8(%r13), %xmm11
	leal	2(%r9), %ebp
	leal	3(%r9), %r12d
	cvtsi2sd	%r11d, %xmm8
	addl	$4, %r9d
	cvtsi2sd	%ebp, %xmm13
	cvtsi2sd	%r12d, %xmm0
	mulsd	%xmm8, %xmm3
	subsd	%xmm11, %xmm3
	movsd	%xmm3, 8(%rdx)
	movsd	24(%r13), %xmm9
	mulsd	16(%r13), %xmm8
	mulsd	%xmm13, %xmm9
	subsd	%xmm8, %xmm9
	movsd	%xmm9, 16(%rdx)
	movsd	32(%r13), %xmm7
	mulsd	24(%r13), %xmm13
	addq	$32, %r13
	mulsd	%xmm0, %xmm7
	subsd	%xmm13, %xmm7
	movsd	%xmm7, 24(%rdx)
	addq	$32, %rdx
.L26:
	cvtsi2sd	%r9d, %xmm11
	mulsd	0(%r13), %xmm0
	movsd	8(%r13), %xmm5
	.loc 1 168 0
	cmpl	%r9d, %esi
	.loc 1 169 0
	mulsd	%xmm11, %xmm5
	subsd	%xmm0, %xmm5
	movsd	%xmm5, (%rdx)
	.loc 1 168 0
	jg	.L67
.L34:
.LBE81:
	.loc 1 174 0
	popq	%rbx
.LCFI8:
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 32
	popq	%rbp
.LCFI9:
	.cfi_restore 6
	.cfi_def_cfa_offset 24
	popq	%r12
.LCFI10:
	.cfi_restore 12
	.cfi_def_cfa_offset 16
	movl	$1, %eax
	popq	%r13
.LCFI11:
	.cfi_restore 13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L66:
.LCFI12:
	.cfi_restore_state
	cvtsi2sd	%ebx, %xmm0
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L31:
	.loc 1 157 0
	movq	%rdx, %r9
	xorl	%r10d, %r10d
	movdqa	.LC23(%rip), %xmm2
	movdqa	.LC25(%rip), %xmm4
	jmp	.L21
	.p2align 4,,10
	.p2align 3
.L65:
.LCFI13:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.loc 1 174 0
	movl	$1, %eax
	ret
.L30:
.LCFI14:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
	.loc 1 168 0
	movl	$1, %ebx
	jmp	.L20
	.cfi_endproc
.LFE78:
	.size	_Z20HJM_Yield_to_ForwardPdiS_, .-_Z20HJM_Yield_to_ForwardPdiS_
	.p2align 4,,15
	.globl	_Z11HJM_FactorsPPdiiS_S0_
	.type	_Z11HJM_FactorsPPdiiS_S0_, @function
_Z11HJM_FactorsPPdiiS_S0_:
.LFB79:
	.loc 1 182 0
	.cfi_startproc
.LBB82:
	.loc 1 205 0
	testl	%edx, %edx
	jle	.L128
.LBE82:
	.loc 1 182 0
	pushq	%r15
.LCFI15:
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
.LBB83:
	.loc 1 177 0
	leal	-10(%rsi), %eax
	subl	$1, %edx
	movq	%rcx, %r15
	leal	-1(%rsi), %ecx
.LBE83:
	.loc 1 182 0
	pushq	%r14
.LCFI16:
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
.LBB84:
	.loc 1 177 0
	shrl	$3, %eax
.LBE84:
	.loc 1 182 0
	pushq	%r13
.LCFI17:
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%r8, %r13
.LBB85:
	.loc 1 177 0
	leaq	8(%rdi,%rdx,8), %r8
.LBE85:
	.loc 1 182 0
	pushq	%r12
.LCFI18:
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r12
.LBB86:
	.loc 1 177 0
	leal	8(,%rax,8), %edi
.LBE86:
	.loc 1 182 0
	pushq	%rbp
.LCFI19:
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
.LCFI20:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp
.LCFI21:
	.cfi_def_cfa_offset 112
	.p2align 4,,10
	.p2align 3
.L70:
.LBB87:
	.loc 1 206 0 discriminator 1
	testl	%ecx, %ecx
	jle	.L74
	.loc 1 177 0
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	cmpl	$9, %esi
	leaq	64(%r15), %rbp
	jle	.L92
	.p2align 4,,10
	.p2align 3
.L94:
	.loc 1 207 0 discriminator 2
	movq	0(%r13), %rdx
	movsd	-64(%rbp), %xmm1
	prefetcht0	0(%rbp)
	movq	(%r12), %r9
	movsd	(%rdx,%rbx), %xmm0
	addq	%rbx, %r9
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	sqrtsd	%xmm0, %xmm2
	ucomisd	%xmm2, %xmm2
	jp	.L129
.L75:
	movq	0(%r13), %r11
	movsd	%xmm2, (%r9)
	movq	(%r12), %r10
	movsd	-56(%rbp), %xmm3
	movsd	8(%r11,%rbx), %xmm0
	leaq	8(%r10,%rbx), %rax
	mulsd	%xmm3, %xmm0
	mulsd	%xmm3, %xmm0
	sqrtsd	%xmm0, %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L130
.L77:
	movq	0(%r13), %r9
	movsd	%xmm4, (%rax)
	movq	(%r12), %rdx
	movsd	-48(%rbp), %xmm5
	movsd	16(%r9,%rbx), %xmm0
	leaq	16(%rdx,%rbx), %r10
	mulsd	%xmm5, %xmm0
	mulsd	%xmm5, %xmm0
	sqrtsd	%xmm0, %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L131
.L79:
	movq	0(%r13), %rdx
	movsd	%xmm6, (%r10)
	movq	(%r12), %r11
	movsd	-40(%rbp), %xmm7
	movsd	24(%rdx,%rbx), %xmm0
	leaq	24(%r11,%rbx), %rax
	mulsd	%xmm7, %xmm0
	mulsd	%xmm7, %xmm0
	sqrtsd	%xmm0, %xmm8
	ucomisd	%xmm8, %xmm8
	jp	.L132
.L81:
	movq	0(%r13), %r10
	movsd	%xmm8, (%rax)
	movq	(%r12), %r9
	movsd	-32(%rbp), %xmm9
	movsd	32(%r10,%rbx), %xmm0
	leaq	32(%r9,%rbx), %r11
	mulsd	%xmm9, %xmm0
	mulsd	%xmm9, %xmm0
	sqrtsd	%xmm0, %xmm10
	ucomisd	%xmm10, %xmm10
	jp	.L133
.L83:
	movq	0(%r13), %r9
	movsd	%xmm10, (%r11)
	movq	(%r12), %rdx
	movsd	-24(%rbp), %xmm11
	movsd	40(%r9,%rbx), %xmm0
	leaq	40(%rdx,%rbx), %rax
	mulsd	%xmm11, %xmm0
	mulsd	%xmm11, %xmm0
	sqrtsd	%xmm0, %xmm12
	ucomisd	%xmm12, %xmm12
	jp	.L134
.L85:
	movq	0(%r13), %r11
	movsd	%xmm12, (%rax)
	movq	(%r12), %r10
	movsd	-16(%rbp), %xmm13
	movsd	48(%r11,%rbx), %xmm0
	leaq	48(%r10,%rbx), %rdx
	mulsd	%xmm13, %xmm0
	mulsd	%xmm13, %xmm0
	sqrtsd	%xmm0, %xmm14
	ucomisd	%xmm14, %xmm14
	jp	.L135
.L87:
	movq	0(%r13), %r10
	movsd	%xmm14, (%rdx)
	movq	(%r12), %r9
	movsd	-8(%rbp), %xmm15
	movsd	56(%r10,%rbx), %xmm0
	leaq	56(%r9,%rbx), %rax
	mulsd	%xmm15, %xmm0
	mulsd	%xmm15, %xmm0
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jp	.L136
.L89:
	.loc 1 206 0 discriminator 2
	addl	$8, %r14d
	addq	$64, %rbx
	addq	$64, %rbp
	cmpl	%edi, %r14d
	.loc 1 207 0 discriminator 2
	movsd	%xmm1, (%rax)
	jne	.L94
.L92:
	.loc 1 207 0 is_stmt 0
	movq	0(%r13), %rdx
	.loc 1 177 0 is_stmt 1
	movslq	%r14d, %r11
	movl	%r14d, %ebp
	.loc 1 207 0
	movsd	(%r15,%r11,8), %xmm2
	movq	(%r12), %rbx
	leaq	0(,%r11,8), %r9
	notl	%ebp
	movsd	(%rdx,%r11,8), %xmm0
	addl	%ecx, %ebp
	andl	$3, %ebp
	addq	%r9, %rbx
	mulsd	%xmm2, %xmm0
	mulsd	%xmm2, %xmm0
	sqrtsd	%xmm0, %xmm3
	ucomisd	%xmm3, %xmm3
	jp	.L137
.L120:
	.loc 1 206 0
	addl	$1, %r14d
	.loc 1 207 0
	movsd	%xmm3, (%rbx)
	leaq	8(%r9), %rbx
	.loc 1 206 0
	cmpl	%r14d, %ecx
	jle	.L74
	testl	%ebp, %ebp
	je	.L73
	cmpl	$1, %ebp
	je	.L115
	cmpl	$2, %ebp
	.p2align 4,,3
	je	.L116
	.loc 1 207 0
	movq	0(%r13), %r10
	movsd	8(%r15,%r9), %xmm4
	movq	(%r12), %rbp
	movsd	8(%r10,%r9), %xmm0
	addq	%rbx, %rbp
	mulsd	%xmm4, %xmm0
	mulsd	%xmm4, %xmm0
	sqrtsd	%xmm0, %xmm5
	ucomisd	%xmm5, %xmm5
	jp	.L138
.L122:
	movsd	%xmm5, 0(%rbp)
	.loc 1 206 0
	addl	$1, %r14d
	addq	$8, %rbx
.L116:
	.loc 1 207 0
	movq	0(%r13), %rax
	movsd	(%r15,%rbx), %xmm6
	movq	(%r12), %rbp
	movsd	(%rax,%rbx), %xmm0
	addq	%rbx, %rbp
	mulsd	%xmm6, %xmm0
	mulsd	%xmm6, %xmm0
	sqrtsd	%xmm0, %xmm7
	ucomisd	%xmm7, %xmm7
	jp	.L139
.L123:
	movsd	%xmm7, 0(%rbp)
	.loc 1 206 0
	addl	$1, %r14d
	addq	$8, %rbx
.L115:
	.loc 1 207 0
	movq	0(%r13), %r11
	movsd	(%r15,%rbx), %xmm8
	movq	(%r12), %rbp
	movsd	(%r11,%rbx), %xmm0
	addq	%rbx, %rbp
	mulsd	%xmm8, %xmm0
	mulsd	%xmm8, %xmm0
	sqrtsd	%xmm0, %xmm9
	ucomisd	%xmm9, %xmm9
	jp	.L140
.L124:
	.loc 1 206 0
	addl	$1, %r14d
	addq	$8, %rbx
	.loc 1 207 0
	movsd	%xmm9, 0(%rbp)
	.loc 1 206 0
	cmpl	%r14d, %ecx
	jle	.L74
.L73:
	.loc 1 207 0
	movq	0(%r13), %rdx
	movsd	(%r15,%rbx), %xmm10
	movq	(%r12), %rbp
	movsd	(%rdx,%rbx), %xmm0
	addq	%rbx, %rbp
	mulsd	%xmm10, %xmm0
	mulsd	%xmm10, %xmm0
	sqrtsd	%xmm0, %xmm11
	ucomisd	%xmm11, %xmm11
	jp	.L141
.L71:
	movq	0(%r13), %r9
	movsd	%xmm11, 0(%rbp)
	movq	(%r12), %r10
	leaq	8(%rbx), %rbp
	.loc 1 206 0
	addl	$1, %r14d
	.loc 1 207 0
	movsd	8(%r15,%rbx), %xmm12
	movsd	8(%r9,%rbx), %xmm0
	addq	%rbp, %r10
	mulsd	%xmm12, %xmm0
	mulsd	%xmm12, %xmm0
	sqrtsd	%xmm0, %xmm13
	ucomisd	%xmm13, %xmm13
	jp	.L142
.L121:
	movq	0(%r13), %rax
	movsd	%xmm13, (%r10)
	movq	(%r12), %rbx
	movsd	8(%r15,%rbp), %xmm14
	movsd	8(%rax,%rbp), %xmm0
	leaq	8(%rbx,%rbp), %rbx
	mulsd	%xmm14, %xmm0
	mulsd	%xmm14, %xmm0
	sqrtsd	%xmm0, %xmm15
	ucomisd	%xmm15, %xmm15
	jp	.L143
.L125:
	movq	0(%r13), %rdx
	movsd	%xmm15, (%rbx)
	movq	(%r12), %r11
	movsd	16(%r15,%rbp), %xmm1
	movsd	16(%rdx,%rbp), %xmm0
	leaq	16(%r11,%rbp), %rbx
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	sqrtsd	%xmm0, %xmm2
	ucomisd	%xmm2, %xmm2
	jp	.L144
.L126:
	.loc 1 206 0
	addl	$3, %r14d
	.loc 1 207 0
	movsd	%xmm2, (%rbx)
	leaq	24(%rbp), %rbx
	.loc 1 206 0
	cmpl	%r14d, %ecx
	jg	.L73
.L74:
	addq	$8, %r12
	addq	$8, %r13
	.loc 1 205 0
	cmpq	%r8, %r12
	jne	.L70
.LBE87:
	.loc 1 211 0
	addq	$56, %rsp
.LCFI22:
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	$1, %eax
	popq	%rbx
.LCFI23:
	.cfi_restore 3
	.cfi_def_cfa_offset 48
	popq	%rbp
.LCFI24:
	.cfi_restore 6
	.cfi_def_cfa_offset 40
	popq	%r12
.LCFI25:
	.cfi_restore 12
	.cfi_def_cfa_offset 32
	popq	%r13
.LCFI26:
	.cfi_restore 13
	.cfi_def_cfa_offset 24
	popq	%r14
.LCFI27:
	.cfi_restore 14
	.cfi_def_cfa_offset 16
	popq	%r15
.LCFI28:
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
.L129:
.LCFI29:
	.cfi_restore_state
.LBB88:
	.loc 1 207 0 discriminator 2
	movq	%r9, 40(%rsp)
	movl	%ecx, 32(%rsp)
	movl	%esi, 8(%rsp)
	movl	%edi, 16(%rsp)
	movq	%r8, 24(%rsp)
	call	sqrt
	movq	24(%rsp), %r8
	movapd	%xmm0, %xmm2
	movl	16(%rsp), %edi
	movl	8(%rsp), %esi
	movl	32(%rsp), %ecx
	movq	40(%rsp), %r9
	jmp	.L75
.L130:
	movq	%rax, 40(%rsp)
	movl	%ecx, 32(%rsp)
	movl	%esi, 8(%rsp)
	movl	%edi, 16(%rsp)
	movq	%r8, 24(%rsp)
	call	sqrt
	movq	24(%rsp), %r8
	movapd	%xmm0, %xmm4
	movl	16(%rsp), %edi
	movl	8(%rsp), %esi
	movl	32(%rsp), %ecx
	movq	40(%rsp), %rax
	jmp	.L77
.L131:
	movq	%r10, 40(%rsp)
	movl	%ecx, 32(%rsp)
	movl	%esi, 8(%rsp)
	movl	%edi, 16(%rsp)
	movq	%r8, 24(%rsp)
	call	sqrt
	movq	24(%rsp), %r8
	movapd	%xmm0, %xmm6
	movl	16(%rsp), %edi
	movl	8(%rsp), %esi
	movl	32(%rsp), %ecx
	movq	40(%rsp), %r10
	jmp	.L79
.L132:
	movq	%rax, 40(%rsp)
	movl	%ecx, 32(%rsp)
	movl	%esi, 8(%rsp)
	movl	%edi, 16(%rsp)
	movq	%r8, 24(%rsp)
	call	sqrt
	movq	24(%rsp), %r8
	movapd	%xmm0, %xmm8
	movl	16(%rsp), %edi
	movl	8(%rsp), %esi
	movl	32(%rsp), %ecx
	movq	40(%rsp), %rax
	jmp	.L81
.L133:
	movq	%r11, 40(%rsp)
	movl	%ecx, 32(%rsp)
	movl	%esi, 8(%rsp)
	movl	%edi, 16(%rsp)
	movq	%r8, 24(%rsp)
	call	sqrt
	movq	24(%rsp), %r8
	movapd	%xmm0, %xmm10
	movl	16(%rsp), %edi
	movl	8(%rsp), %esi
	movl	32(%rsp), %ecx
	movq	40(%rsp), %r11
	jmp	.L83
.L134:
	movq	%rax, 40(%rsp)
	movl	%ecx, 32(%rsp)
	movl	%esi, 8(%rsp)
	movl	%edi, 16(%rsp)
	movq	%r8, 24(%rsp)
	call	sqrt
	movq	24(%rsp), %r8
	movapd	%xmm0, %xmm12
	movl	16(%rsp), %edi
	movl	8(%rsp), %esi
	movl	32(%rsp), %ecx
	movq	40(%rsp), %rax
	jmp	.L85
.L135:
	movq	%rdx, 40(%rsp)
	movl	%ecx, 32(%rsp)
	movl	%esi, 8(%rsp)
	movl	%edi, 16(%rsp)
	movq	%r8, 24(%rsp)
	call	sqrt
	movq	24(%rsp), %r8
	movapd	%xmm0, %xmm14
	movl	16(%rsp), %edi
	movl	8(%rsp), %esi
	movl	32(%rsp), %ecx
	movq	40(%rsp), %rdx
	jmp	.L87
.L136:
	movq	%rax, 40(%rsp)
	movl	%ecx, 32(%rsp)
	movl	%esi, 8(%rsp)
	movl	%edi, 16(%rsp)
	movq	%r8, 24(%rsp)
	call	sqrt
	movq	24(%rsp), %r8
	movapd	%xmm0, %xmm1
	movl	16(%rsp), %edi
	movl	8(%rsp), %esi
	movl	32(%rsp), %ecx
	movq	40(%rsp), %rax
	jmp	.L89
.L144:
	.loc 1 207 0 is_stmt 0
	movl	%ecx, 32(%rsp)
	movl	%esi, 8(%rsp)
	movl	%edi, 16(%rsp)
	movq	%r8, 24(%rsp)
	call	sqrt
	movq	24(%rsp), %r8
	movapd	%xmm0, %xmm2
	movl	16(%rsp), %edi
	movl	8(%rsp), %esi
	movl	32(%rsp), %ecx
	jmp	.L126
.L143:
	movl	%ecx, 32(%rsp)
	movl	%esi, 8(%rsp)
	movl	%edi, 16(%rsp)
	movq	%r8, 24(%rsp)
	call	sqrt
	movq	24(%rsp), %r8
	movapd	%xmm0, %xmm15
	movl	16(%rsp), %edi
	movl	8(%rsp), %esi
	movl	32(%rsp), %ecx
	jmp	.L125
.L142:
	movq	%r10, 40(%rsp)
	movl	%ecx, 32(%rsp)
	movl	%esi, 8(%rsp)
	movl	%edi, 16(%rsp)
	movq	%r8, 24(%rsp)
	call	sqrt
	movq	24(%rsp), %r8
	movapd	%xmm0, %xmm13
	movl	16(%rsp), %edi
	movl	8(%rsp), %esi
	movl	32(%rsp), %ecx
	movq	40(%rsp), %r10
	jmp	.L121
.L141:
	movl	%ecx, 32(%rsp)
	movl	%esi, 8(%rsp)
	movl	%edi, 16(%rsp)
	movq	%r8, 24(%rsp)
	call	sqrt
	movq	24(%rsp), %r8
	movapd	%xmm0, %xmm11
	movl	16(%rsp), %edi
	movl	8(%rsp), %esi
	movl	32(%rsp), %ecx
	jmp	.L71
.L140:
	movl	%ecx, 32(%rsp)
	movl	%esi, 8(%rsp)
	movl	%edi, 16(%rsp)
	movq	%r8, 24(%rsp)
	call	sqrt
	movq	24(%rsp), %r8
	movapd	%xmm0, %xmm9
	movl	16(%rsp), %edi
	movl	8(%rsp), %esi
	movl	32(%rsp), %ecx
	jmp	.L124
.L137:
	movq	%r9, 40(%rsp)
	movl	%ecx, 32(%rsp)
	movl	%esi, 8(%rsp)
	movl	%edi, 16(%rsp)
	movq	%r8, 24(%rsp)
	call	sqrt
	movq	24(%rsp), %r8
	movapd	%xmm0, %xmm3
	movl	16(%rsp), %edi
	movl	8(%rsp), %esi
	movl	32(%rsp), %ecx
	movq	40(%rsp), %r9
	jmp	.L120
.L139:
	movl	%ecx, 32(%rsp)
	movl	%esi, 8(%rsp)
	movl	%edi, 16(%rsp)
	movq	%r8, 24(%rsp)
	call	sqrt
	movq	24(%rsp), %r8
	movapd	%xmm0, %xmm7
	movl	16(%rsp), %edi
	movl	8(%rsp), %esi
	movl	32(%rsp), %ecx
	jmp	.L123
.L138:
	movl	%ecx, 32(%rsp)
	movl	%esi, 8(%rsp)
	movl	%edi, 16(%rsp)
	movq	%r8, 24(%rsp)
	call	sqrt
	movq	24(%rsp), %r8
	movapd	%xmm0, %xmm5
	movl	16(%rsp), %edi
	movl	8(%rsp), %esi
	movl	32(%rsp), %ecx
	jmp	.L122
.L128:
.LCFI30:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
.LBE88:
	.loc 1 211 0 is_stmt 1
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE79:
	.size	_Z11HJM_FactorsPPdiiS_S0_, .-_Z11HJM_FactorsPPdiiS_S0_
	.p2align 4,,15
	.globl	_Z10HJM_DriftsPdPS_iidS0_
	.type	_Z10HJM_DriftsPdPS_iidS0_, @function
_Z10HJM_DriftsPdPS_iidS0_:
.LFB80:
	.loc 1 220 0
	.cfi_startproc
.LVL13:
.LBB89:
	.loc 1 225 0
	cvtsi2sd	%edx, %xmm1
.LBE89:
	.loc 1 220 0
	pushq	%r15
.LCFI31:
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
.LBB90:
	.loc 1 229 0
	testl	%ecx, %ecx
.LBE90:
	.loc 1 220 0
	pushq	%r14
.LCFI32:
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
.LCFI33:
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
.LCFI34:
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
.LCFI35:
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
.LCFI36:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	.loc 1 220 0
	movq	%rdi, %rbx
.LBB91:
	.loc 1 225 0
	divsd	%xmm1, %xmm0
.LVL14:
	.loc 1 229 0
	jle	.L146
	movsd	.LC0(%rip), %xmm4
	cmpl	$8, %ecx
	movq	%r8, %r12
	mulsd	%xmm0, %xmm4
	jle	.L171
	.loc 1 214 0
	leal	-9(%rcx), %ebp
	leaq	136(%rsi), %rdi
.LVL15:
	leaq	136(%r8), %rax
.LBE91:
	.loc 1 229 0
	xorl	%r9d, %r9d
.LBB92:
	.loc 1 214 0
	shrl	$3, %ebp
	leal	8(,%rbp,8), %r11d
.LVL16:
	.p2align 4,,10
	.p2align 3
.L148:
	.loc 1 230 0 discriminator 2
	movq	-136(%rax), %r10
	movq	-136(%rdi), %r13
	.loc 1 229 0 discriminator 2
	addl	$8, %r9d
	.loc 1 230 0 discriminator 2
	movq	-128(%rax), %r14
	movq	-128(%rdi), %r15
	prefetcht0	(%rdi)
	movq	-120(%rax), %r8
	movq	-120(%rdi), %rbp
	prefetcht0	(%rax)
	movsd	(%r10), %xmm2
	movq	-112(%rax), %r10
	movapd	%xmm2, %xmm0
	mulsd	%xmm4, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	%xmm0, 0(%r13)
	movq	-112(%rdi), %r13
	movsd	(%r14), %xmm3
	movq	-104(%rax), %r14
	movapd	%xmm3, %xmm5
	mulsd	%xmm4, %xmm5
	mulsd	%xmm3, %xmm5
	movsd	%xmm5, (%r15)
	movq	-104(%rdi), %r15
	movsd	(%r8), %xmm6
	movq	-96(%rax), %r8
	movapd	%xmm6, %xmm7
	mulsd	%xmm4, %xmm7
	mulsd	%xmm6, %xmm7
	movsd	%xmm7, 0(%rbp)
	movq	-96(%rdi), %rbp
	movsd	(%r10), %xmm8
	movq	-88(%rax), %r10
	movapd	%xmm8, %xmm9
	mulsd	%xmm4, %xmm9
	mulsd	%xmm8, %xmm9
	movsd	%xmm9, 0(%r13)
	movq	-88(%rdi), %r13
	movsd	(%r14), %xmm10
	movq	-80(%rax), %r14
	addq	$64, %rax
	movapd	%xmm10, %xmm11
	mulsd	%xmm4, %xmm11
	mulsd	%xmm10, %xmm11
	movsd	%xmm11, (%r15)
	movq	-80(%rdi), %r15
	addq	$64, %rdi
	cmpl	%r11d, %r9d
	movsd	(%r8), %xmm12
	movapd	%xmm12, %xmm13
	mulsd	%xmm4, %xmm13
	mulsd	%xmm12, %xmm13
	movsd	%xmm13, 0(%rbp)
	movsd	(%r10), %xmm14
	movapd	%xmm14, %xmm15
	mulsd	%xmm4, %xmm15
	mulsd	%xmm14, %xmm15
	movsd	%xmm15, 0(%r13)
.LVL17:
	movsd	(%r14), %xmm1
	movapd	%xmm1, %xmm2
	mulsd	%xmm4, %xmm2
	mulsd	%xmm1, %xmm2
	movsd	%xmm2, (%r15)
	jne	.L148
.LVL18:
.L147:
	.loc 1 214 0
	movslq	%r9d, %rbp
	movl	%r9d, %eax
	leal	1(%r9), %r13d
	salq	$3, %rbp
	notl	%eax
	leaq	(%rsi,%rbp), %rdi
	addq	%r12, %rbp
	leal	(%rax,%rcx), %r11d
	.loc 1 230 0
	movq	0(%rbp), %r8
	movl	$1, %eax
	movq	(%rdi), %r10
	andl	$7, %r11d
	.loc 1 229 0
	cmpl	%r13d, %ecx
	.loc 1 230 0
	movsd	(%r8), %xmm3
	movapd	%xmm3, %xmm0
	mulsd	%xmm4, %xmm0
	mulsd	%xmm3, %xmm0
	movsd	%xmm0, (%r10)
	.loc 1 229 0
	jle	.L356
	testl	%r11d, %r11d
	je	.L150
	cmpl	$1, %r11d
	je	.L317
	cmpl	$2, %r11d
	je	.L318
	cmpl	$3, %r11d
	je	.L319
	cmpl	$4, %r11d
	je	.L320
	cmpl	$5, %r11d
	je	.L321
	cmpl	$6, %r11d
	je	.L322
	.loc 1 230 0
	movq	8(%rbp), %r14
	movq	8(%rdi), %r15
	movl	$2, %eax
	movsd	(%r14), %xmm5
	movapd	%xmm5, %xmm6
	mulsd	%xmm4, %xmm6
	mulsd	%xmm5, %xmm6
	movsd	%xmm6, (%r15)
.L322:
	movq	0(%rbp,%rax,8), %r11
	movq	(%rdi,%rax,8), %r8
	addq	$1, %rax
	movsd	(%r11), %xmm7
	movapd	%xmm7, %xmm8
	mulsd	%xmm4, %xmm8
	mulsd	%xmm7, %xmm8
	movsd	%xmm8, (%r8)
.L321:
	movq	0(%rbp,%rax,8), %r10
	movq	(%rdi,%rax,8), %r13
	addq	$1, %rax
	movsd	(%r10), %xmm9
	movapd	%xmm9, %xmm10
	mulsd	%xmm4, %xmm10
	mulsd	%xmm9, %xmm10
	movsd	%xmm10, 0(%r13)
.L320:
	movq	0(%rbp,%rax,8), %r14
	movq	(%rdi,%rax,8), %r15
	addq	$1, %rax
	movsd	(%r14), %xmm11
	movapd	%xmm11, %xmm12
	mulsd	%xmm4, %xmm12
	mulsd	%xmm11, %xmm12
	movsd	%xmm12, (%r15)
.L319:
	movq	0(%rbp,%rax,8), %r11
	movq	(%rdi,%rax,8), %r8
	addq	$1, %rax
	movsd	(%r11), %xmm13
	movapd	%xmm13, %xmm14
	mulsd	%xmm4, %xmm14
	mulsd	%xmm13, %xmm14
	movsd	%xmm14, (%r8)
.L318:
	movq	0(%rbp,%rax,8), %r10
	movq	(%rdi,%rax,8), %r13
	addq	$1, %rax
	movsd	(%r10), %xmm15
	movapd	%xmm15, %xmm1
	mulsd	%xmm4, %xmm1
	mulsd	%xmm15, %xmm1
	movsd	%xmm1, 0(%r13)
.L317:
	movq	0(%rbp,%rax,8), %r14
	movq	(%rdi,%rax,8), %r15
	addq	$1, %rax
	.loc 1 214 0
	leal	(%r9,%rax), %r11d
	.loc 1 230 0
	movsd	(%r14), %xmm2
	.loc 1 229 0
	cmpl	%r11d, %ecx
	.loc 1 230 0
	movapd	%xmm2, %xmm3
	mulsd	%xmm4, %xmm3
	mulsd	%xmm2, %xmm3
	movsd	%xmm3, (%r15)
	.loc 1 229 0
	jle	.L356
.L150:
	.loc 1 230 0
	movq	0(%rbp,%rax,8), %r8
	movq	(%rdi,%rax,8), %r10
	leaq	1(%rax), %r13
	movq	0(%rbp,%r13,8), %r14
	movq	(%rdi,%r13,8), %r15
	leaq	3(%rax), %r13
	movsd	(%r8), %xmm5
	leaq	2(%rax), %r8
	movapd	%xmm5, %xmm0
	movq	0(%rbp,%r8,8), %r11
	mulsd	%xmm4, %xmm0
	mulsd	%xmm5, %xmm0
	movsd	%xmm0, (%r10)
	movq	(%rdi,%r8,8), %r10
	leaq	4(%rax), %r8
	movsd	(%r14), %xmm6
	movq	0(%rbp,%r13,8), %r14
	movapd	%xmm6, %xmm7
	mulsd	%xmm4, %xmm7
	mulsd	%xmm6, %xmm7
	movsd	%xmm7, (%r15)
	movq	(%rdi,%r13,8), %r15
	leaq	5(%rax), %r13
	movsd	(%r11), %xmm8
	movq	0(%rbp,%r8,8), %r11
	movapd	%xmm8, %xmm9
	mulsd	%xmm4, %xmm9
	mulsd	%xmm8, %xmm9
	movsd	%xmm9, (%r10)
	movq	(%rdi,%r8,8), %r10
	leaq	6(%rax), %r8
	movsd	(%r14), %xmm10
	movq	0(%rbp,%r13,8), %r14
	movapd	%xmm10, %xmm11
	mulsd	%xmm4, %xmm11
	mulsd	%xmm10, %xmm11
	movsd	%xmm11, (%r15)
	movq	(%rdi,%r13,8), %r15
	leaq	7(%rax), %r13
	addq	$8, %rax
	movsd	(%r11), %xmm12
	movq	0(%rbp,%r8,8), %r11
	movapd	%xmm12, %xmm13
	mulsd	%xmm4, %xmm13
	mulsd	%xmm12, %xmm13
	movsd	%xmm13, (%r10)
	movq	(%rdi,%r8,8), %r10
	.loc 1 214 0
	leal	(%r9,%rax), %r8d
	.loc 1 230 0
	movsd	(%r14), %xmm14
	.loc 1 229 0
	cmpl	%r8d, %ecx
	.loc 1 230 0
	movq	0(%rbp,%r13,8), %r14
	movapd	%xmm14, %xmm15
	mulsd	%xmm4, %xmm15
	mulsd	%xmm14, %xmm15
	movsd	%xmm15, (%r15)
	movq	(%rdi,%r13,8), %r15
	movsd	(%r11), %xmm1
	movapd	%xmm1, %xmm2
	mulsd	%xmm4, %xmm2
	mulsd	%xmm1, %xmm2
	movsd	%xmm2, (%r10)
	movsd	(%r14), %xmm3
	movapd	%xmm3, %xmm5
	mulsd	%xmm4, %xmm5
	mulsd	%xmm3, %xmm5
	movsd	%xmm5, (%r15)
	.loc 1 229 0
	jg	.L150
.L356:
	xorpd	%xmm7, %xmm7
	leal	-1(%rdx), %r8d
	xorl	%ebp, %ebp
.LVL19:
	.p2align 4,,10
	.p2align 3
.L149:
	.loc 1 234 0 discriminator 1
	cmpl	$1, %r8d
	jle	.L162
	movq	(%rsi,%rbp,8), %r11
	movq	(%r12,%rbp,8), %rdi
	.loc 1 214 0
	movl	$1, %r10d
	leaq	8(%r11), %rax
.LVL20:
	.p2align 4,,10
	.p2align 3
.L160:
	cmpl	$8, %r10d
	.loc 1 236 0
	movq	$0, (%rax)
.LVL21:
	jle	.L172
	.loc 1 238 0
	movapd	%xmm7, %xmm6
	.loc 1 214 0
	leal	-9(%r10), %r9d
	leaq	200(%r11), %rdx
	.loc 1 237 0
	movl	$8, %r13d
	leaq	264(%r11), %r15
	.loc 1 238 0
	subsd	(%r11), %xmm6
	.loc 1 214 0
	shrl	$3, %r9d
	leal	8(,%r9,8), %r14d
	andl	$1, %r9d
	prefetcht0	(%rdx)
	cmpl	%r14d, %r13d
	.loc 1 238 0
	movsd	%xmm6, (%rax)
.LVL22:
	subsd	8(%r11), %xmm6
	movsd	%xmm6, (%rax)
	subsd	16(%r11), %xmm6
	movsd	%xmm6, (%rax)
	subsd	24(%r11), %xmm6
	movsd	%xmm6, (%rax)
	subsd	32(%r11), %xmm6
	movsd	%xmm6, (%rax)
	subsd	40(%r11), %xmm6
	movsd	%xmm6, (%rax)
	subsd	48(%r11), %xmm6
	movsd	%xmm6, (%rax)
	subsd	56(%r11), %xmm6
	movsd	%xmm6, (%rax)
	je	.L152
	testl	%r9d, %r9d
	je	.L153
	subsd	-200(%r15), %xmm6
	.loc 1 237 0
	movl	$16, %r13d
	prefetcht0	(%r15)
	cmpl	%r14d, %r13d
	.loc 1 238 0
	movsd	%xmm6, (%rax)
	subsd	-192(%r15), %xmm6
	movsd	%xmm6, (%rax)
	subsd	-184(%r15), %xmm6
	movsd	%xmm6, (%rax)
	subsd	-176(%r15), %xmm6
	movsd	%xmm6, (%rax)
	subsd	-168(%r15), %xmm6
	movsd	%xmm6, (%rax)
	subsd	-160(%r15), %xmm6
	movsd	%xmm6, (%rax)
	subsd	-152(%r15), %xmm6
	movsd	%xmm6, (%rax)
	subsd	-144(%r15), %xmm6
	leaq	328(%r11), %r15
	movsd	%xmm6, (%rax)
	je	.L152
.L153:
	.loc 1 238 0 is_stmt 0 discriminator 2
	subsd	-200(%r15), %xmm6
	leaq	64(%r15), %rdx
	.loc 1 237 0 is_stmt 1 discriminator 2
	addl	$16, %r13d
	prefetcht0	(%r15)
	prefetcht0	(%rdx)
	.loc 1 238 0 discriminator 2
	movsd	%xmm6, (%rax)
	subsd	-192(%r15), %xmm6
	movsd	%xmm6, (%rax)
	subsd	-184(%r15), %xmm6
	movsd	%xmm6, (%rax)
	subsd	-176(%r15), %xmm6
	movsd	%xmm6, (%rax)
	subsd	-168(%r15), %xmm6
	movsd	%xmm6, (%rax)
	subsd	-160(%r15), %xmm6
	movsd	%xmm6, (%rax)
	subsd	-152(%r15), %xmm6
	movsd	%xmm6, (%rax)
	subsd	-144(%r15), %xmm6
	movsd	%xmm6, (%rax)
	subsd	-136(%r15), %xmm6
	movsd	%xmm6, (%rax)
	subsd	-128(%r15), %xmm6
	movsd	%xmm6, (%rax)
	subsd	-120(%r15), %xmm6
	movsd	%xmm6, (%rax)
	subsd	-112(%r15), %xmm6
	movsd	%xmm6, (%rax)
	subsd	-104(%r15), %xmm6
	movsd	%xmm6, (%rax)
	subsd	-96(%r15), %xmm6
	movsd	%xmm6, (%rax)
	subsd	-88(%r15), %xmm6
	movsd	%xmm6, (%rax)
	subsd	-80(%r15), %xmm6
	subq	$-128, %r15
	cmpl	%r14d, %r13d
	movsd	%xmm6, (%rax)
	jne	.L153
.L152:
	.loc 1 214 0
	movslq	%r13d, %r9
	movl	%r13d, %r14d
	leaq	(%r11,%r9,8), %r15
	notl	%r14d
	.loc 1 237 0
	leal	1(%r13), %r9d
	addl	%r10d, %r14d
	.loc 1 238 0
	subsd	(%r15), %xmm6
	andl	$7, %r14d
	.loc 1 237 0
	cmpl	%r9d, %r10d
	leaq	8(%r15), %rdx
	.loc 1 238 0
	movsd	%xmm6, (%rax)
	.loc 1 237 0
	jle	.L357
	testl	%r14d, %r14d
	je	.L156
	cmpl	$1, %r14d
	je	.L311
	cmpl	$2, %r14d
	je	.L312
	cmpl	$3, %r14d
	je	.L313
	cmpl	$4, %r14d
	je	.L314
	cmpl	$5, %r14d
	je	.L315
	cmpl	$6, %r14d
	je	.L316
	.loc 1 238 0
	subsd	8(%r15), %xmm6
	.loc 1 237 0
	leal	2(%r13), %r9d
	leaq	16(%r15), %rdx
	.loc 1 238 0
	movsd	%xmm6, (%rax)
.L316:
	subsd	(%rdx), %xmm6
	.loc 1 237 0
	addl	$1, %r9d
	addq	$8, %rdx
	.loc 1 238 0
	movsd	%xmm6, (%rax)
.L315:
	subsd	(%rdx), %xmm6
	.loc 1 237 0
	addl	$1, %r9d
	addq	$8, %rdx
	.loc 1 238 0
	movsd	%xmm6, (%rax)
.L314:
	subsd	(%rdx), %xmm6
	.loc 1 237 0
	addl	$1, %r9d
	addq	$8, %rdx
	.loc 1 238 0
	movsd	%xmm6, (%rax)
.L313:
	subsd	(%rdx), %xmm6
	.loc 1 237 0
	addl	$1, %r9d
	addq	$8, %rdx
	.loc 1 238 0
	movsd	%xmm6, (%rax)
.L312:
	subsd	(%rdx), %xmm6
	.loc 1 237 0
	addl	$1, %r9d
	addq	$8, %rdx
	.loc 1 238 0
	movsd	%xmm6, (%rax)
.L311:
	subsd	(%rdx), %xmm6
	.loc 1 237 0
	addl	$1, %r9d
	addq	$8, %rdx
	cmpl	%r9d, %r10d
	.loc 1 238 0
	movsd	%xmm6, (%rax)
	.loc 1 237 0
	jle	.L357
.L156:
	.loc 1 238 0
	subsd	(%rdx), %xmm6
	.loc 1 237 0
	addl	$8, %r9d
	.loc 1 238 0
	movsd	%xmm6, (%rax)
	subsd	8(%rdx), %xmm6
	movsd	%xmm6, (%rax)
	subsd	16(%rdx), %xmm6
	movsd	%xmm6, (%rax)
	subsd	24(%rdx), %xmm6
	movsd	%xmm6, (%rax)
	subsd	32(%rdx), %xmm6
	movsd	%xmm6, (%rax)
	subsd	40(%rdx), %xmm6
	movsd	%xmm6, (%rax)
	subsd	48(%rdx), %xmm6
	movsd	%xmm6, (%rax)
	subsd	56(%rdx), %xmm6
	addq	$64, %rdx
	.loc 1 237 0
	cmpl	%r9d, %r10d
	.loc 1 238 0
	movsd	%xmm6, (%rax)
	.loc 1 237 0
	jg	.L156
.L357:
	xorl	%r13d, %r13d
	cmpl	$7, %r10d
	movapd	%xmm7, %xmm0
	jle	.L155
	.loc 1 241 0
	movsd	(%rdi), %xmm0
	.loc 1 214 0
	leal	-8(%r10), %r15d
	leaq	232(%rdi), %r13
	leaq	296(%rdi), %rdx
	.loc 1 241 0
	addsd	%xmm7, %xmm0
.LVL23:
	.loc 1 214 0
	shrl	$3, %r15d
	leal	8(,%r15,8), %r14d
	prefetcht0	0(%r13)
	.loc 1 240 0
	movl	$8, %r13d
	andl	$3, %r15d
	cmpl	%r14d, %r13d
	.loc 1 241 0
	addsd	8(%rdi), %xmm0
.LVL24:
	addsd	16(%rdi), %xmm0
.LVL25:
	addsd	24(%rdi), %xmm0
.LVL26:
	addsd	32(%rdi), %xmm0
.LVL27:
	addsd	40(%rdi), %xmm0
.LVL28:
	addsd	48(%rdi), %xmm0
.LVL29:
	addsd	56(%rdi), %xmm0
.LVL30:
	je	.L155
	testl	%r15d, %r15d
	je	.L158
	cmpl	$1, %r15d
	je	.L309
	cmpl	$2, %r15d
	je	.L310
	addsd	-232(%rdx), %xmm0
.LVL31:
	prefetcht0	(%rdx)
	.loc 1 240 0
	movl	$16, %r13d
	.loc 1 241 0
	addsd	-224(%rdx), %xmm0
	addsd	-216(%rdx), %xmm0
	addsd	-208(%rdx), %xmm0
	addsd	-200(%rdx), %xmm0
	addsd	-192(%rdx), %xmm0
	addsd	-184(%rdx), %xmm0
	addsd	-176(%rdx), %xmm0
.LVL32:
	leaq	360(%rdi), %rdx
.L310:
	addsd	-232(%rdx), %xmm0
.LVL33:
	prefetcht0	(%rdx)
	.loc 1 240 0
	addl	$8, %r13d
.LVL34:
	.loc 1 241 0
	addsd	-224(%rdx), %xmm0
.LVL35:
	addsd	-216(%rdx), %xmm0
.LVL36:
	addsd	-208(%rdx), %xmm0
.LVL37:
	addsd	-200(%rdx), %xmm0
.LVL38:
	addsd	-192(%rdx), %xmm0
.LVL39:
	addsd	-184(%rdx), %xmm0
.LVL40:
	addsd	-176(%rdx), %xmm0
.LVL41:
	addq	$64, %rdx
.L309:
	addsd	-232(%rdx), %xmm0
.LVL42:
	.loc 1 240 0
	addl	$8, %r13d
.LVL43:
	prefetcht0	(%rdx)
	.loc 1 241 0
	addsd	-224(%rdx), %xmm0
.LVL44:
	addsd	-216(%rdx), %xmm0
.LVL45:
	addsd	-208(%rdx), %xmm0
.LVL46:
	addsd	-200(%rdx), %xmm0
.LVL47:
	addsd	-192(%rdx), %xmm0
.LVL48:
	addsd	-184(%rdx), %xmm0
.LVL49:
	addsd	-176(%rdx), %xmm0
.LVL50:
	addq	$64, %rdx
	cmpl	%r14d, %r13d
	je	.L155
.L158:
	.loc 1 241 0 is_stmt 0 discriminator 2
	addsd	-232(%rdx), %xmm0
.LVL51:
	leaq	64(%rdx), %r9
	leaq	128(%rdx), %r15
	.loc 1 240 0 is_stmt 1 discriminator 2
	addl	$32, %r13d
.LVL52:
	prefetcht0	(%rdx)
.LVL53:
	prefetcht0	(%r9)
	leaq	192(%rdx), %r9
	prefetcht0	(%r15)
	prefetcht0	(%r9)
	.loc 1 241 0 discriminator 2
	addsd	-224(%rdx), %xmm0
	addsd	-216(%rdx), %xmm0
	addsd	-208(%rdx), %xmm0
	addsd	-200(%rdx), %xmm0
	addsd	-192(%rdx), %xmm0
	addsd	-184(%rdx), %xmm0
	addsd	-176(%rdx), %xmm0
	addsd	-168(%rdx), %xmm0
	addsd	-160(%rdx), %xmm0
	addsd	-152(%rdx), %xmm0
	addsd	-144(%rdx), %xmm0
	addsd	-136(%rdx), %xmm0
	addsd	-128(%rdx), %xmm0
	addsd	-120(%rdx), %xmm0
	addsd	-112(%rdx), %xmm0
	addsd	-104(%rdx), %xmm0
	addsd	-96(%rdx), %xmm0
	addsd	-88(%rdx), %xmm0
	addsd	-80(%rdx), %xmm0
	addsd	-72(%rdx), %xmm0
	addsd	-64(%rdx), %xmm0
	addsd	-56(%rdx), %xmm0
	addsd	-48(%rdx), %xmm0
	addsd	-40(%rdx), %xmm0
	addsd	-32(%rdx), %xmm0
	addsd	-24(%rdx), %xmm0
	addsd	-16(%rdx), %xmm0
	addsd	-8(%rdx), %xmm0
	addsd	(%rdx), %xmm0
	addsd	8(%rdx), %xmm0
	addsd	16(%rdx), %xmm0
.LVL54:
	addq	$256, %rdx
	cmpl	%r14d, %r13d
	jne	.L158
.LVL55:
.L155:
	.loc 1 214 0
	movslq	%r13d, %r14
	.loc 1 240 0
	leal	1(%r13), %r9d
	.loc 1 214 0
	leaq	(%rdi,%r14,8), %r15
	movl	%r10d, %r14d
	subl	%r13d, %r14d
	andl	$7, %r14d
	.loc 1 240 0
	cmpl	%r9d, %r10d
	.loc 1 241 0
	addsd	(%r15), %xmm0
.LVL56:
	leaq	8(%r15), %rdx
	.loc 1 240 0
	jl	.L358
	testl	%r14d, %r14d
	je	.L159
	cmpl	$1, %r14d
	je	.L303
	cmpl	$2, %r14d
	je	.L304
	cmpl	$3, %r14d
	je	.L305
	cmpl	$4, %r14d
	je	.L306
	cmpl	$5, %r14d
	je	.L307
	cmpl	$6, %r14d
	je	.L308
	.loc 1 241 0
	addsd	8(%r15), %xmm0
	.loc 1 240 0
	leal	2(%r13), %r9d
	leaq	16(%r15), %rdx
.LVL57:
.L308:
	.loc 1 241 0
	addsd	(%rdx), %xmm0
	.loc 1 240 0
	addl	$1, %r9d
	addq	$8, %rdx
.L307:
	.loc 1 241 0
	addsd	(%rdx), %xmm0
	.loc 1 240 0
	addl	$1, %r9d
	addq	$8, %rdx
.L306:
	.loc 1 241 0
	addsd	(%rdx), %xmm0
	.loc 1 240 0
	addl	$1, %r9d
	addq	$8, %rdx
.L305:
	.loc 1 241 0
	addsd	(%rdx), %xmm0
	.loc 1 240 0
	addl	$1, %r9d
	addq	$8, %rdx
.L304:
	.loc 1 241 0
	addsd	(%rdx), %xmm0
	.loc 1 240 0
	addl	$1, %r9d
	addq	$8, %rdx
.L303:
	addl	$1, %r9d
	.loc 1 241 0
	addsd	(%rdx), %xmm0
	addq	$8, %rdx
	.loc 1 240 0
	cmpl	%r9d, %r10d
	jl	.L358
.L159:
	.loc 1 241 0
	addsd	(%rdx), %xmm0
	.loc 1 240 0
	addl	$8, %r9d
	.loc 1 241 0
	addsd	8(%rdx), %xmm0
	addsd	16(%rdx), %xmm0
	addsd	24(%rdx), %xmm0
	addsd	32(%rdx), %xmm0
	addsd	40(%rdx), %xmm0
	addsd	48(%rdx), %xmm0
	addsd	56(%rdx), %xmm0
	addq	$64, %rdx
	.loc 1 240 0
	cmpl	%r9d, %r10d
	jge	.L159
.L358:
	.loc 1 242 0
	movapd	%xmm4, %xmm8
	.loc 1 234 0
	addl	$1, %r10d
.LVL58:
	.loc 1 242 0
	mulsd	%xmm0, %xmm8
	mulsd	%xmm0, %xmm8
	addsd	%xmm6, %xmm8
	movsd	%xmm8, (%rax)
	addq	$8, %rax
	.loc 1 234 0
	cmpl	%r8d, %r10d
	jne	.L160
.LVL59:
.L162:
	addq	$1, %rbp
	.loc 1 233 0
	cmpl	%ebp, %ecx
	jg	.L149
.LVL60:
.L161:
	.loc 1 246 0 discriminator 1
	testl	%r8d, %r8d
	jle	.L359
	.loc 1 214 0
	subl	$1, %r8d
	xorpd	%xmm10, %xmm10
	leaq	8(%rbx,%r8,8), %rbp
	leal	-9(%rcx), %r8d
	movq	%rbx, %rax
	shrl	$3, %r8d
	leal	8(,%r8,8), %r11d
.LVL61:
	.p2align 4,,10
	.p2align 3
.L165:
	movq	%rax, %rdx
	.loc 1 248 0
	movq	$0, (%rax)
.LVL62:
	.loc 1 214 0
	subq	%rbx, %rdx
	.loc 1 249 0
	testl	%ecx, %ecx
	jle	.L170
	cmpl	$8, %ecx
	jle	.L173
	.loc 1 250 0
	movq	(%rsi), %rdi
	movq	8(%rsi), %r15
	.loc 1 214 0
	leaq	160(%rsi), %r10
	.loc 1 250 0
	movq	16(%rsi), %r14
	movq	24(%rsi), %r9
	leal	-8(%r11), %r13d
	movq	32(%rsi), %r12
	movq	40(%rsi), %r8
	prefetcht0	(%r10)
	movsd	(%rdi,%rdx), %xmm9
	movq	48(%rsi), %r10
	shrl	$3, %r13d
	movq	56(%rsi), %rdi
	andl	$1, %r13d
	addsd	%xmm10, %xmm9
	movsd	%xmm9, (%rax)
.LVL63:
	addsd	(%r15,%rdx), %xmm9
	.loc 1 249 0
	movl	$8, %r15d
	cmpl	%r11d, %r15d
	.loc 1 250 0
	movsd	%xmm9, (%rax)
	addsd	(%r14,%rdx), %xmm9
	movsd	%xmm9, (%rax)
	addsd	(%r9,%rdx), %xmm9
	movsd	%xmm9, (%rax)
	addsd	(%r12,%rdx), %xmm9
	movsd	%xmm9, (%rax)
	addsd	(%r8,%rdx), %xmm9
	movsd	%xmm9, (%rax)
	addsd	(%r10,%rdx), %xmm9
	movsd	%xmm9, (%rax)
	addsd	(%rdi,%rdx), %xmm9
	leaq	224(%rsi), %rdi
	movsd	%xmm9, (%rax)
	je	.L167
	testl	%r13d, %r13d
	je	.L168
	movq	-160(%rdi), %r13
	movq	-152(%rdi), %r15
	prefetcht0	(%rdi)
	movq	-144(%rdi), %r14
	movq	-136(%rdi), %r9
	movq	-128(%rdi), %r12
	movq	-120(%rdi), %r8
	addsd	0(%r13,%rdx), %xmm9
	movq	-112(%rdi), %r10
	movq	-104(%rdi), %rdi
	movsd	%xmm9, (%rax)
	addsd	(%r15,%rdx), %xmm9
	.loc 1 249 0
	movl	$16, %r15d
	cmpl	%r11d, %r15d
	.loc 1 250 0
	movsd	%xmm9, (%rax)
	addsd	(%r14,%rdx), %xmm9
	movsd	%xmm9, (%rax)
	addsd	(%r9,%rdx), %xmm9
	movsd	%xmm9, (%rax)
	addsd	(%r12,%rdx), %xmm9
	movsd	%xmm9, (%rax)
	addsd	(%r8,%rdx), %xmm9
	movsd	%xmm9, (%rax)
	addsd	(%r10,%rdx), %xmm9
	movsd	%xmm9, (%rax)
	addsd	(%rdi,%rdx), %xmm9
	leaq	288(%rsi), %rdi
	movsd	%xmm9, (%rax)
	je	.L167
.L168:
	.loc 1 250 0 is_stmt 0 discriminator 2
	movq	-160(%rdi), %r13
	movq	-152(%rdi), %r14
	.loc 1 249 0 is_stmt 1 discriminator 2
	addl	$16, %r15d
	.loc 1 250 0 discriminator 2
	movq	-144(%rdi), %r9
	movq	-136(%rdi), %r12
	prefetcht0	(%rdi)
	movq	-128(%rdi), %r8
	movq	-120(%rdi), %r10
	addsd	0(%r13,%rdx), %xmm9
	movq	-112(%rdi), %r13
	movsd	%xmm9, (%rax)
	addsd	(%r14,%rdx), %xmm9
	movq	-104(%rdi), %r14
	movsd	%xmm9, (%rax)
	addsd	(%r9,%rdx), %xmm9
	leaq	64(%rdi), %r9
	prefetcht0	(%r9)
	movsd	%xmm9, (%rax)
	addsd	(%r12,%rdx), %xmm9
	movq	-96(%rdi), %r12
	movsd	%xmm9, (%rax)
	addsd	(%r8,%rdx), %xmm9
	movq	-88(%rdi), %r8
	movsd	%xmm9, (%rax)
	addsd	(%r10,%rdx), %xmm9
	movq	-80(%rdi), %r10
	movsd	%xmm9, (%rax)
	addsd	0(%r13,%rdx), %xmm9
	movq	-72(%rdi), %r13
	movsd	%xmm9, (%rax)
	addsd	(%r14,%rdx), %xmm9
	movsd	%xmm9, (%rax)
	addsd	(%r12,%rdx), %xmm9
	movsd	%xmm9, (%rax)
	addsd	(%r8,%rdx), %xmm9
	movsd	%xmm9, (%rax)
	addsd	(%r10,%rdx), %xmm9
	movsd	%xmm9, (%rax)
	addsd	0(%r13,%rdx), %xmm9
	movsd	%xmm9, (%rax)
	movq	-64(%rdi), %r14
	movq	-56(%rdi), %r9
	movq	-48(%rdi), %r12
	movq	-40(%rdi), %r8
	subq	$-128, %rdi
	cmpl	%r11d, %r15d
	addsd	(%r14,%rdx), %xmm9
	movsd	%xmm9, (%rax)
	addsd	(%r9,%rdx), %xmm9
	movsd	%xmm9, (%rax)
	addsd	(%r12,%rdx), %xmm9
	movsd	%xmm9, (%rax)
	addsd	(%r8,%rdx), %xmm9
	movsd	%xmm9, (%rax)
	jne	.L168
.L167:
	.loc 1 214 0
	movslq	%r15d, %rdi
	movl	%r15d, %r10d
	.loc 1 249 0
	leal	1(%r15), %r12d
	.loc 1 214 0
	leaq	(%rsi,%rdi,8), %r13
	notl	%r10d
	addl	%ecx, %r10d
	.loc 1 250 0
	movq	0(%r13), %r14
	andl	$7, %r10d
	.loc 1 249 0
	cmpl	%ecx, %r12d
	leaq	8(%r13), %r8
	.loc 1 250 0
	addsd	(%r14,%rdx), %xmm9
	movsd	%xmm9, (%rax)
	.loc 1 249 0
	jge	.L170
	testl	%r10d, %r10d
	je	.L169
	cmpl	$1, %r10d
	je	.L297
	cmpl	$2, %r10d
	je	.L298
	cmpl	$3, %r10d
	je	.L299
	cmpl	$4, %r10d
	je	.L300
	cmpl	$5, %r10d
	je	.L301
	cmpl	$6, %r10d
	je	.L302
	.loc 1 250 0
	movq	8(%r13), %r9
	.loc 1 249 0
	leal	2(%r15), %r12d
	leaq	16(%r13), %r8
	.loc 1 250 0
	addsd	(%r9,%rdx), %xmm9
	movsd	%xmm9, (%rax)
.L302:
	movq	(%r8), %r15
	.loc 1 249 0
	addl	$1, %r12d
	addq	$8, %r8
	.loc 1 250 0
	addsd	(%r15,%rdx), %xmm9
	movsd	%xmm9, (%rax)
.L301:
	movq	(%r8), %rdi
	.loc 1 249 0
	addl	$1, %r12d
	addq	$8, %r8
	.loc 1 250 0
	addsd	(%rdi,%rdx), %xmm9
	movsd	%xmm9, (%rax)
.L300:
	movq	(%r8), %r13
	.loc 1 249 0
	addl	$1, %r12d
	addq	$8, %r8
	.loc 1 250 0
	addsd	0(%r13,%rdx), %xmm9
	movsd	%xmm9, (%rax)
.L299:
	movq	(%r8), %r10
	.loc 1 249 0
	addl	$1, %r12d
	addq	$8, %r8
	.loc 1 250 0
	addsd	(%r10,%rdx), %xmm9
	movsd	%xmm9, (%rax)
.L298:
	movq	(%r8), %r14
	.loc 1 249 0
	addl	$1, %r12d
	addq	$8, %r8
	.loc 1 250 0
	addsd	(%r14,%rdx), %xmm9
	movsd	%xmm9, (%rax)
.L297:
	movq	(%r8), %r9
	.loc 1 249 0
	addl	$1, %r12d
	addq	$8, %r8
	cmpl	%ecx, %r12d
	.loc 1 250 0
	addsd	(%r9,%rdx), %xmm9
	movsd	%xmm9, (%rax)
	.loc 1 249 0
	jge	.L170
.L169:
	.loc 1 250 0
	movq	(%r8), %r15
	movq	8(%r8), %rdi
	.loc 1 249 0
	addl	$8, %r12d
	.loc 1 250 0
	movq	16(%r8), %r13
	movq	24(%r8), %r10
	movq	32(%r8), %r14
	movq	40(%r8), %r9
	addsd	(%r15,%rdx), %xmm9
	movq	48(%r8), %r15
	movsd	%xmm9, (%rax)
	addsd	(%rdi,%rdx), %xmm9
	movq	56(%r8), %rdi
	addq	$64, %r8
	.loc 1 249 0
	cmpl	%ecx, %r12d
	.loc 1 250 0
	movsd	%xmm9, (%rax)
	addsd	0(%r13,%rdx), %xmm9
	movsd	%xmm9, (%rax)
	addsd	(%r10,%rdx), %xmm9
	movsd	%xmm9, (%rax)
	addsd	(%r14,%rdx), %xmm9
	movsd	%xmm9, (%rax)
	addsd	(%r9,%rdx), %xmm9
	movsd	%xmm9, (%rax)
	addsd	(%r15,%rdx), %xmm9
	movsd	%xmm9, (%rax)
	addsd	(%rdi,%rdx), %xmm9
	movsd	%xmm9, (%rax)
	.loc 1 249 0
	jl	.L169
.L170:
	addq	$8, %rax
	.loc 1 246 0
	cmpq	%rbp, %rax
	jne	.L165
.L359:
.LBE92:
	.loc 1 255 0
	popq	%rbx
.LCFI37:
	.cfi_remember_state
	.cfi_def_cfa_offset 48
.LVL64:
	popq	%rbp
.LCFI38:
	.cfi_def_cfa_offset 40
	popq	%r12
.LCFI39:
	.cfi_def_cfa_offset 32
	popq	%r13
.LCFI40:
	.cfi_def_cfa_offset 24
	popq	%r14
.LCFI41:
	.cfi_def_cfa_offset 16
	movl	$1, %eax
	popq	%r15
.LCFI42:
	.cfi_def_cfa_offset 8
	ret
.LVL65:
	.p2align 4,,10
	.p2align 3
.L172:
.LCFI43:
	.cfi_restore_state
.LBB93:
	.loc 1 236 0
	movapd	%xmm7, %xmm6
	xorl	%r13d, %r13d
	jmp	.L152
.LVL66:
.L173:
	.loc 1 249 0
	movapd	%xmm10, %xmm9
	xorl	%r15d, %r15d
	jmp	.L167
.LVL67:
.L146:
	leal	-1(%rdx), %r8d
.LVL68:
	jmp	.L161
.LVL69:
.L171:
	.loc 1 229 0
	xorl	%r9d, %r9d
	jmp	.L147
.LBE93:
	.cfi_endproc
.LFE80:
	.size	_Z10HJM_DriftsPdPS_iidS0_, .-_Z10HJM_DriftsPdPS_iidS0_
	.p2align 4,,15
	.globl	_Z20HJM_Forward_to_YieldPdiS_
	.type	_Z20HJM_Forward_to_YieldPdiS_, @function
_Z20HJM_Forward_to_YieldPdiS_:
.LFB83:
	.loc 1 363 0
	.cfi_startproc
.LVL70:
.LBB94:
	.loc 1 370 0
	movsd	(%rdx), %xmm0
	.loc 1 371 0
	cmpl	$1, %esi
	.loc 1 370 0
	movsd	%xmm0, (%rdi)
.LVL71:
	.loc 1 371 0
	jle	.L406
	cmpl	$9, %esi
	jle	.L367
.LBE94:
	movl	$1, %ecx
.LBB95:
	.loc 1 360 0
	leal	-10(%rsi), %r11d
	movq	%rdi, %rax
	cvtsi2sd	%ecx, %xmm8
	movq	%rdx, %r8
	andl	$-8, %r11d
	addl	$9, %r11d
.LVL72:
	.p2align 4,,10
	.p2align 3
.L364:
	.loc 1 360 0 is_stmt 0 discriminator 2
	leal	1(%rcx), %r10d
	.loc 1 372 0 is_stmt 1 discriminator 2
	mulsd	(%rax), %xmm8
	.loc 1 360 0 discriminator 2
	leaq	64(%rax), %r9
	prefetcht0	72(%r8)
	prefetcht0	72(%rax)
	.loc 1 372 0 discriminator 2
	cvtsi2sd	%r10d, %xmm1
	.loc 1 360 0 discriminator 2
	leal	2(%rcx), %r10d
	prefetcht0	(%r9)
	.loc 1 372 0 discriminator 2
	cvtsi2sd	%r10d, %xmm2
	.loc 1 360 0 discriminator 2
	leal	3(%rcx), %r10d
	.loc 1 372 0 discriminator 2
	addsd	8(%r8), %xmm8
	cvtsi2sd	%r10d, %xmm4
	.loc 1 360 0 discriminator 2
	leal	4(%rcx), %r10d
	.loc 1 372 0 discriminator 2
	cvtsi2sd	%r10d, %xmm5
	.loc 1 360 0 discriminator 2
	leal	5(%rcx), %r10d
	.loc 1 372 0 discriminator 2
	cvtsi2sd	%r10d, %xmm3
	.loc 1 360 0 discriminator 2
	leal	6(%rcx), %r10d
	.loc 1 372 0 discriminator 2
	divsd	%xmm1, %xmm8
	cvtsi2sd	%r10d, %xmm6
	.loc 1 360 0 discriminator 2
	leal	7(%rcx), %r10d
	.loc 1 372 0 discriminator 2
	addl	$8, %ecx
	cvtsi2sd	%r10d, %xmm7
	movsd	%xmm8, 8(%rax)
.LVL73:
	mulsd	%xmm1, %xmm8
	addsd	16(%r8), %xmm8
	divsd	%xmm2, %xmm8
	mulsd	%xmm8, %xmm2
	movsd	%xmm8, 16(%rax)
.LVL74:
	cvtsi2sd	%ecx, %xmm8
	addsd	24(%r8), %xmm2
	divsd	%xmm4, %xmm2
	movsd	%xmm2, 24(%rax)
	mulsd	%xmm4, %xmm2
	addsd	32(%r8), %xmm2
	divsd	%xmm5, %xmm2
	mulsd	%xmm2, %xmm5
	movsd	%xmm2, 32(%rax)
	addsd	40(%r8), %xmm5
	divsd	%xmm3, %xmm5
	movsd	%xmm5, 40(%rax)
	mulsd	%xmm3, %xmm5
	addsd	48(%r8), %xmm5
	divsd	%xmm6, %xmm5
	mulsd	%xmm5, %xmm6
	movsd	%xmm5, 48(%rax)
	addsd	56(%r8), %xmm6
	divsd	%xmm7, %xmm6
	movsd	%xmm6, 56(%rax)
	mulsd	%xmm7, %xmm6
	addsd	64(%r8), %xmm6
	addq	$64, %r8
	cmpl	%r11d, %ecx
	divsd	%xmm8, %xmm6
	movsd	%xmm6, 64(%rax)
.LVL75:
	movq	%r9, %rax
	jne	.L364
.LVL76:
.L363:
	.loc 1 360 0
	movslq	%ecx, %r8
	movl	%ecx, %r10d
	leaq	-8(%rdi,%r8,8), %r11
	leaq	(%rdx,%r8,8), %r9
	.loc 1 372 0
	leal	1(%rcx), %edx
.LVL77:
	notl	%r10d
	mulsd	(%r11), %xmm8
	cvtsi2sd	%edx, %xmm0
	addl	%esi, %r10d
	leaq	8(%r11), %rax
	leaq	8(%r9), %rdi
.LVL78:
	andl	$7, %r10d
	.loc 1 371 0
	cmpl	%edx, %esi
	.loc 1 372 0
	addsd	(%r9), %xmm8
	divsd	%xmm0, %xmm8
	movsd	%xmm8, 8(%r11)
.LVL79:
	.loc 1 371 0
	jle	.L406
	testl	%r10d, %r10d
	je	.L365
	cmpl	$1, %r10d
	je	.L393
	cmpl	$2, %r10d
	je	.L394
	cmpl	$3, %r10d
	je	.L395
	cmpl	$4, %r10d
	je	.L396
	cmpl	$5, %r10d
	je	.L397
	cmpl	$6, %r10d
	je	.L398
	.loc 1 372 0
	movsd	(%rax), %xmm9
	leal	2(%rcx), %edx
	mulsd	%xmm0, %xmm9
	cvtsi2sd	%edx, %xmm0
	addsd	(%rdi), %xmm9
	leaq	16(%r9), %rdi
	divsd	%xmm0, %xmm9
	movsd	%xmm9, 8(%rax)
	leaq	16(%r11), %rax
.LVL80:
.L398:
	movsd	(%rax), %xmm10
	addl	$1, %edx
	mulsd	%xmm0, %xmm10
	cvtsi2sd	%edx, %xmm0
	addsd	(%rdi), %xmm10
	addq	$8, %rdi
	divsd	%xmm0, %xmm10
	movsd	%xmm10, 8(%rax)
	addq	$8, %rax
.L397:
	movsd	(%rax), %xmm11
	addl	$1, %edx
	mulsd	%xmm0, %xmm11
	cvtsi2sd	%edx, %xmm0
	addsd	(%rdi), %xmm11
	addq	$8, %rdi
	divsd	%xmm0, %xmm11
	movsd	%xmm11, 8(%rax)
	addq	$8, %rax
.L396:
	movsd	(%rax), %xmm12
	addl	$1, %edx
	mulsd	%xmm0, %xmm12
	cvtsi2sd	%edx, %xmm0
	addsd	(%rdi), %xmm12
	addq	$8, %rdi
	divsd	%xmm0, %xmm12
	movsd	%xmm12, 8(%rax)
	addq	$8, %rax
.L395:
	movsd	(%rax), %xmm13
	addl	$1, %edx
	mulsd	%xmm0, %xmm13
	cvtsi2sd	%edx, %xmm0
	addsd	(%rdi), %xmm13
	addq	$8, %rdi
	divsd	%xmm0, %xmm13
	movsd	%xmm13, 8(%rax)
	addq	$8, %rax
.L394:
	movsd	(%rax), %xmm14
	addl	$1, %edx
	mulsd	%xmm0, %xmm14
	cvtsi2sd	%edx, %xmm0
	addsd	(%rdi), %xmm14
	addq	$8, %rdi
	divsd	%xmm0, %xmm14
	movsd	%xmm14, 8(%rax)
	addq	$8, %rax
.L393:
	movsd	(%rax), %xmm15
	addl	$1, %edx
	mulsd	%xmm0, %xmm15
	cvtsi2sd	%edx, %xmm0
	addsd	(%rdi), %xmm15
	addq	$8, %rdi
	divsd	%xmm0, %xmm15
	movsd	%xmm15, 8(%rax)
	addq	$8, %rax
	.loc 1 371 0
	cmpl	%edx, %esi
	jle	.L406
.L365:
	.loc 1 372 0
	leal	1(%rdx), %ecx
	mulsd	(%rax), %xmm0
	leal	2(%rdx), %r8d
	leal	3(%rdx), %r11d
	leal	4(%rdx), %r9d
	leal	5(%rdx), %r10d
	cvtsi2sd	%ecx, %xmm1
	leal	6(%rdx), %ecx
	cvtsi2sd	%r8d, %xmm2
	leal	7(%rdx), %r8d
	cvtsi2sd	%r11d, %xmm4
	addl	$8, %edx
	cvtsi2sd	%r9d, %xmm5
	addsd	(%rdi), %xmm0
	cvtsi2sd	%r10d, %xmm3
	cvtsi2sd	%ecx, %xmm6
	cvtsi2sd	%r8d, %xmm7
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 8(%rax)
	mulsd	%xmm1, %xmm0
	addsd	8(%rdi), %xmm0
	divsd	%xmm2, %xmm0
	movsd	%xmm0, 16(%rax)
	mulsd	%xmm2, %xmm0
	addsd	16(%rdi), %xmm0
	divsd	%xmm4, %xmm0
	movsd	%xmm0, 24(%rax)
	mulsd	%xmm4, %xmm0
	addsd	24(%rdi), %xmm0
	divsd	%xmm5, %xmm0
	movsd	%xmm0, 32(%rax)
	mulsd	%xmm5, %xmm0
	addsd	32(%rdi), %xmm0
	divsd	%xmm3, %xmm0
	movsd	%xmm0, 40(%rax)
	mulsd	%xmm3, %xmm0
	addsd	40(%rdi), %xmm0
	divsd	%xmm6, %xmm0
	movsd	%xmm0, 48(%rax)
	mulsd	%xmm6, %xmm0
	addsd	48(%rdi), %xmm0
	divsd	%xmm7, %xmm0
	movsd	%xmm0, 56(%rax)
	mulsd	%xmm0, %xmm7
	cvtsi2sd	%edx, %xmm0
	addsd	56(%rdi), %xmm7
	addq	$64, %rdi
	divsd	%xmm0, %xmm7
	movsd	%xmm7, 64(%rax)
	addq	$64, %rax
	.loc 1 371 0
	cmpl	%edx, %esi
	jg	.L365
.L406:
.LBE95:
	.loc 1 376 0
	movl	$1, %eax
	ret
.LVL81:
	.p2align 4,,10
	.p2align 3
.L367:
.LBB96:
	.loc 1 371 0
	movl	$1, %ecx
	cvtsi2sd	%ecx, %xmm8
	jmp	.L363
.LBE96:
	.cfi_endproc
.LFE83:
	.size	_Z20HJM_Forward_to_YieldPdiS_, .-_Z20HJM_Forward_to_YieldPdiS_
	.p2align 4,,15
	.globl	_Z16Discount_FactorsPdidS_
	.type	_Z16Discount_FactorsPdidS_, @function
_Z16Discount_FactorsPdidS_:
.LFB84:
	.loc 1 382 0
	.cfi_startproc
.LVL82:
	pushq	%r15
.LCFI44:
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
.LCFI45:
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
.LCFI46:
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
.LCFI47:
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
.LCFI48:
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
.LCFI49:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
.LCFI50:
	.cfi_def_cfa_offset 96
.LBB97:
	.loc 1 390 0
	testl	%esi, %esi
.LBE97:
	.loc 1 382 0
	movsd	%xmm0, 8(%rsp)
	movl	%esi, 20(%rsp)
	movq	%rdx, 24(%rsp)
.LBB98:
	.loc 1 387 0
	cvtsi2sd	%esi, %xmm0
.LVL83:
	movsd	8(%rsp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rsp)
.LVL84:
	.loc 1 390 0
	jle	.L408
	.loc 1 378 0
	movq	%rdi, %rax
	salq	$60, %rax
	shrq	$63, %rax
	cmpl	%eax, %esi
	cmovb	%esi, %eax
.LBE98:
	cmpl	$6, %esi
	cmova	%eax, %esi
.LVL85:
	testl	%esi, %esi
	je	.L431
	cmpl	$8, %esi
	jbe	.L432
.LBB99:
	leal	-9(%rsi), %edx
.LVL86:
	leaq	232(%rdi), %rcx
	.loc 1 391 0
	movabsq	$4607182418800017408, %r9
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %r13
	movabsq	$4607182418800017408, %r14
	.loc 1 378 0
	shrl	$3, %edx
	.loc 1 391 0
	movabsq	$4607182418800017408, %r15
	movabsq	$4607182418800017408, %rbx
	.loc 1 378 0
	leaq	1(%rdx), %r10
	movl	$64, %edx
	.loc 1 391 0
	movabsq	$4607182418800017408, %rbp
	movabsq	$4607182418800017408, %r11
	prefetcht0	(%rcx)
	movq	%r9, 48(%rdi)
	.loc 1 378 0
	salq	$6, %r10
	.loc 1 391 0
	movq	%r12, (%rdi)
.LVL87:
	movq	%r13, 8(%rdi)
	leaq	-64(%r10), %r8
	movq	%r14, 16(%rdi)
	movq	%r15, 24(%rdi)
	movq	%rbx, 32(%rdi)
	movq	%rbp, 40(%rdi)
	.loc 1 390 0
	movl	$8, %ecx
	shrq	$6, %r8
	.loc 1 391 0
	movq	%r11, 56(%rdi)
	movl	$8, %r9d
	andl	$3, %r8d
	cmpq	%r10, %rdx
	leaq	296(%rdi), %rax
	je	.L411
	testq	%r8, %r8
	je	.L412
	cmpq	$1, %r8
	je	.L582
	cmpq	$2, %r8
	je	.L583
	movabsq	$4607182418800017408, %rcx
	movabsq	$4607182418800017408, %rdx
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %r13
	movabsq	$4607182418800017408, %r14
	movabsq	$4607182418800017408, %r15
	movabsq	$4607182418800017408, %rbx
	movq	%rcx, -232(%rax)
	movq	%rdx, -224(%rax)
	prefetcht0	(%rax)
	movq	%r8, -216(%rax)
	movq	%r12, -208(%rax)
	movq	%r13, -200(%rax)
	.loc 1 390 0
	movl	$16, %ecx
	.loc 1 391 0
	movq	%r14, -192(%rax)
	movq	%r15, -184(%rax)
	movl	$128, %edx
	movq	%rbx, -176(%rax)
	leaq	360(%rdi), %rax
.L583:
	movabsq	$4607182418800017408, %rbp
	movabsq	$4607182418800017408, %r9
	movabsq	$4607182418800017408, %r11
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %r13
	movabsq	$4607182418800017408, %r14
	movabsq	$4607182418800017408, %r15
	prefetcht0	(%rax)
	movq	%rbp, -232(%rax)
	movq	%r9, -224(%rax)
	.loc 1 390 0
	addl	$8, %ecx
	.loc 1 391 0
	movq	%r11, -216(%rax)
	movq	%r8, -208(%rax)
	addq	$64, %rdx
	movq	%r12, -200(%rax)
	movq	%r13, -192(%rax)
	movq	%r14, -184(%rax)
	movq	%r15, -176(%rax)
	addq	$64, %rax
.L582:
	movabsq	$4607182418800017408, %r9
	movabsq	$4607182418800017408, %rbx
	movabsq	$4607182418800017408, %rbp
	movabsq	$4607182418800017408, %r11
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %r13
	movabsq	$4607182418800017408, %r14
	addq	$64, %rdx
	movq	%r9, -216(%rax)
	.loc 1 390 0
	addl	$8, %ecx
	prefetcht0	(%rax)
	.loc 1 391 0
	movq	%rbx, -232(%rax)
	movq	%rbp, -224(%rax)
	movl	%ecx, %r9d
	movq	%r11, -208(%rax)
	movq	%r8, -200(%rax)
	movq	%r12, -192(%rax)
	movq	%r13, -184(%rax)
	movq	%r14, -176(%rax)
	addq	$64, %rax
	cmpq	%r10, %rdx
	je	.L411
.L412:
	leaq	64(%rax), %r9
	movabsq	$4607182418800017408, %r15
	movabsq	$4607182418800017408, %rbx
	movabsq	$4607182418800017408, %rbp
	movabsq	$4607182418800017408, %r11
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %r13
	movabsq	$4607182418800017408, %r14
	movq	%r15, -232(%rax)
	movq	%rbx, -224(%rax)
	movabsq	$4607182418800017408, %r15
	movq	%rbp, -216(%rax)
	movq	%r11, -208(%rax)
	movabsq	$4607182418800017408, %rbx
	movq	%r8, -200(%rax)
	movq	%r12, -192(%rax)
	movabsq	$4607182418800017408, %rbp
	movq	%r13, -184(%rax)
	movq	%r14, -176(%rax)
	movabsq	$4607182418800017408, %r11
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %r13
	movabsq	$4607182418800017408, %r14
	prefetcht0	(%r9)
	leaq	128(%rax), %r9
	movq	%r15, -168(%rax)
	movq	%rbx, -160(%rax)
	movabsq	$4607182418800017408, %r15
	movq	%rbp, -152(%rax)
	movq	%r11, -144(%rax)
	movabsq	$4607182418800017408, %rbx
	movq	%r8, -136(%rax)
	movq	%r12, -128(%rax)
	movabsq	$4607182418800017408, %rbp
	movq	%r13, -120(%rax)
	movq	%r14, -112(%rax)
	movabsq	$4607182418800017408, %r11
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %r13
	movabsq	$4607182418800017408, %r14
	movq	%r15, -104(%rax)
	movq	%rbx, -96(%rax)
	movq	%rbp, -88(%rax)
	movq	%r11, -80(%rax)
	prefetcht0	(%r9)
	movq	%r8, -72(%rax)
	leaq	192(%rax), %r9
	movq	%r12, -64(%rax)
	movq	%r13, -56(%rax)
	movq	%r14, -48(%rax)
	movabsq	$4607182418800017408, %r15
	movabsq	$4607182418800017408, %rbx
	movabsq	$4607182418800017408, %rbp
	movabsq	$4607182418800017408, %r11
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %r13
	movabsq	$4607182418800017408, %r14
	addq	$256, %rdx
	.loc 1 390 0
	addl	$32, %ecx
	prefetcht0	(%rax)
	.loc 1 391 0
	movq	%r15, -40(%rax)
	movq	%rbx, -32(%rax)
	movq	%rbp, -24(%rax)
	movq	%r11, -16(%rax)
	prefetcht0	(%r9)
	movq	%r8, -8(%rax)
	movq	%r12, (%rax)
	movl	%ecx, %r9d
	movq	%r13, 8(%rax)
	movq	%r14, 16(%rax)
	addq	$256, %rax
	cmpq	%r10, %rdx
	jne	.L412
.L411:
.LVL88:
	movl	%r9d, %ebp
	.loc 1 378 0
	movslq	%ecx, %r10
	leal	1(%r9), %r15d
	notl	%ebp
	leaq	(%rdi,%r10,8), %rbx
	.loc 1 391 0
	movabsq	$4607182418800017408, %rax
	addl	%esi, %ebp
	.loc 1 378 0
	leal	1(%rcx), %edx
	andl	$7, %ebp
	cmpl	%r15d, %esi
	.loc 1 391 0
	movq	%rax, (%rbx)
	leaq	8(%rbx), %rax
	jbe	.L619
	testl	%ebp, %ebp
	je	.L413
	cmpl	$1, %ebp
	je	.L576
	cmpl	$2, %ebp
	.p2align 4,,3
	je	.L577
	cmpl	$3, %ebp
	.p2align 4,,2
	je	.L578
	cmpl	$4, %ebp
	.p2align 4,,2
	je	.L579
	cmpl	$5, %ebp
	.p2align 4,,2
	je	.L580
	cmpl	$6, %ebp
	.p2align 4,,2
	je	.L581
	movabsq	$4607182418800017408, %rdx
	movq	%rdx, (%rax)
	.loc 1 390 0
	leal	2(%rcx), %edx
.LVL89:
	leaq	16(%rbx), %rax
.L581:
	.loc 1 391 0
	movabsq	$4607182418800017408, %r11
	.loc 1 390 0
	addl	$1, %edx
	.loc 1 391 0
	movq	%r11, (%rax)
	addq	$8, %rax
.L580:
	movabsq	$4607182418800017408, %r8
	.loc 1 390 0
	addl	$1, %edx
	.loc 1 391 0
	movq	%r8, (%rax)
	addq	$8, %rax
.L579:
	movabsq	$4607182418800017408, %r12
	.loc 1 390 0
	addl	$1, %edx
	.loc 1 391 0
	movq	%r12, (%rax)
	addq	$8, %rax
.L578:
	movabsq	$4607182418800017408, %r13
	.loc 1 390 0
	addl	$1, %edx
	.loc 1 391 0
	movq	%r13, (%rax)
	addq	$8, %rax
.L577:
	movabsq	$4607182418800017408, %r14
	.loc 1 390 0
	addl	$1, %edx
	.loc 1 391 0
	movq	%r14, (%rax)
	addq	$8, %rax
.L576:
	.loc 1 390 0
	addl	$1, %edx
	.loc 1 391 0
	movabsq	$4607182418800017408, %r10
	.loc 1 378 0
	leal	(%r9,%rdx), %ebx
	.loc 1 391 0
	movq	%r10, (%rax)
	addq	$8, %rax
	subl	%ecx, %ebx
	cmpl	%ebx, %esi
	jbe	.L619
.L413:
	.loc 1 390 0
	addl	$8, %edx
	.loc 1 391 0
	movabsq	$4607182418800017408, %rbp
	movabsq	$4607182418800017408, %r15
	.loc 1 378 0
	leal	(%r9,%rdx), %ebx
	.loc 1 391 0
	movabsq	$4607182418800017408, %r11
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %r13
	movabsq	$4607182418800017408, %r14
	movabsq	$4607182418800017408, %r10
	subl	%ecx, %ebx
	movq	%rbp, (%rax)
	movq	%r15, 8(%rax)
	movq	%r11, 16(%rax)
	movq	%r8, 24(%rax)
	movq	%r12, 32(%rax)
	movq	%r13, 40(%rax)
	movq	%r14, 48(%rax)
	movq	%r10, 56(%rax)
	addq	$64, %rax
	cmpl	%ebx, %esi
	ja	.L413
.L619:
	cmpl	%esi, 20(%rsp)
	je	.L414
.L410:
	movl	20(%rsp), %r11d
	movl	%esi, %ecx
	subl	%esi, %r11d
	movl	%r11d, %r8d
	shrl	%r8d
	movl	%r8d, %ebx
	addl	%ebx, %ebx
	je	.L415
	cmpl	$4, %r8d
	leaq	(%rdi,%rcx,8), %rax
	.loc 1 378 0
	leal	-3(%r8), %r9d
	jbe	.L433
	leal	-5(%r8), %esi
	movapd	.LC26(%rip), %xmm2
	prefetcht0	640(%rax)
	movl	$4, %ebp
	movl	$4, %r12d
	shrl	$2, %esi
	andl	$3, %esi
	.loc 1 391 0
	movapd	%xmm2, (%rax)
	movapd	%xmm2, 16(%rax)
	movapd	%xmm2, 32(%rax)
	movapd	%xmm2, 48(%rax)
	.loc 1 378 0
	addq	$64, %rax
	cmpl	$5, %r9d
	jbe	.L416
	testl	%esi, %esi
	je	.L417
	cmpl	$1, %esi
	je	.L574
	cmpl	$2, %esi
	.p2align 4,,3
	je	.L575
	prefetcht0	640(%rax)
	.loc 1 391 0
	movapd	%xmm2, (%rax)
	movl	$8, %r12d
	movapd	%xmm2, 16(%rax)
	movapd	%xmm2, 32(%rax)
	movapd	%xmm2, 48(%rax)
	.loc 1 378 0
	addq	$64, %rax
.L575:
	prefetcht0	640(%rax)
	.loc 1 391 0
	movapd	%xmm2, (%rax)
	addl	$4, %r12d
	movapd	%xmm2, 16(%rax)
	movapd	%xmm2, 32(%rax)
	movapd	%xmm2, 48(%rax)
	.loc 1 378 0
	addq	$64, %rax
.L574:
	leal	5(%r12), %r15d
	leal	4(%r12), %ebp
	prefetcht0	640(%rax)
	.loc 1 391 0
	movapd	%xmm2, (%rax)
	movl	%ebp, %r12d
	movapd	%xmm2, 16(%rax)
	movapd	%xmm2, 32(%rax)
	movapd	%xmm2, 48(%rax)
	.loc 1 378 0
	addq	$64, %rax
	cmpl	%r9d, %r15d
	jae	.L416
.L417:
	leal	17(%r12), %r13d
	leal	16(%r12), %ebp
	prefetcht0	640(%rax)
	.loc 1 391 0 discriminator 2
	movapd	%xmm2, (%rax)
	prefetcht0	704(%rax)
	prefetcht0	768(%rax)
	prefetcht0	832(%rax)
	movl	%ebp, %r12d
	movapd	%xmm2, 16(%rax)
	movapd	%xmm2, 32(%rax)
	movapd	%xmm2, 48(%rax)
	movapd	%xmm2, 64(%rax)
	movapd	%xmm2, 80(%rax)
	movapd	%xmm2, 96(%rax)
	movapd	%xmm2, 112(%rax)
	movapd	%xmm2, 128(%rax)
	movapd	%xmm2, 144(%rax)
	movapd	%xmm2, 160(%rax)
	movapd	%xmm2, 176(%rax)
	movapd	%xmm2, 192(%rax)
	movapd	%xmm2, 208(%rax)
	movapd	%xmm2, 224(%rax)
	movapd	%xmm2, 240(%rax)
	.loc 1 378 0 discriminator 2
	addq	$256, %rax
	cmpl	%r9d, %r13d
	jb	.L417
.L416:
	movl	%ebp, %r14d
	leal	1(%rbp), %ecx
	leaq	16(%rax), %r10
	notl	%r14d
	addl	%r8d, %r14d
	andl	$7, %r14d
	cmpl	%ecx, %r8d
	.loc 1 391 0
	movapd	%xmm2, (%rax)
	jbe	.L622
	testl	%r14d, %r14d
	je	.L423
	cmpl	$1, %r14d
	je	.L568
	cmpl	$2, %r14d
	je	.L569
	cmpl	$3, %r14d
	je	.L570
	cmpl	$4, %r14d
	je	.L571
	cmpl	$5, %r14d
	je	.L572
	cmpl	$6, %r14d
	je	.L573
	movapd	%xmm2, (%r10)
	leal	2(%rbp), %ecx
	leaq	32(%rax), %r10
.L573:
	movapd	%xmm2, (%r10)
	addl	$1, %ecx
	addq	$16, %r10
.L572:
	movapd	%xmm2, (%r10)
	addl	$1, %ecx
	addq	$16, %r10
.L571:
	movapd	%xmm2, (%r10)
	addl	$1, %ecx
	addq	$16, %r10
.L570:
	movapd	%xmm2, (%r10)
	addl	$1, %ecx
	addq	$16, %r10
.L569:
	movapd	%xmm2, (%r10)
	addl	$1, %ecx
	addq	$16, %r10
.L568:
	addl	$1, %ecx
	movapd	%xmm2, (%r10)
	addq	$16, %r10
	cmpl	%ecx, %r8d
	jbe	.L622
.L423:
	addl	$8, %ecx
	movapd	%xmm2, (%r10)
	movapd	%xmm2, 16(%r10)
	movapd	%xmm2, 32(%r10)
	movapd	%xmm2, 48(%r10)
	movapd	%xmm2, 64(%r10)
	movapd	%xmm2, 80(%r10)
	movapd	%xmm2, 96(%r10)
	movapd	%xmm2, 112(%r10)
	subq	$-128, %r10
	cmpl	%ecx, %r8d
	ja	.L423
.L622:
	addl	%ebx, %edx
	cmpl	%ebx, %r11d
	je	.L414
.L415:
	.loc 1 378 0
	movl	20(%rsp), %r9d
	leal	1(%rdx), %ecx
	subl	$7, %r9d
	cmpl	%edx, 20(%rsp)
	jle	.L419
	cmpl	%r9d, %ecx
	jge	.L419
	movslq	%edx, %rsi
	movl	%r9d, %ebp
	.loc 1 391 0
	movabsq	$4607182418800017408, %rcx
	.loc 1 378 0
	leaq	272(%rdi,%rsi,8), %r13
	subl	%edx, %ebp
	.loc 1 390 0
	addl	$8, %edx
	subl	$2, %ebp
	.loc 1 391 0
	movabsq	$4607182418800017408, %rax
	movabsq	$4607182418800017408, %r15
	movq	%rcx, -224(%r13)
	.loc 1 378 0
	leal	1(%rdx), %ecx
	shrl	$3, %ebp
	andl	$3, %ebp
	.loc 1 391 0
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %r14
	movabsq	$4607182418800017408, %r10
	movabsq	$4607182418800017408, %rbx
	cmpl	%ecx, %r9d
	movq	%rax, -256(%r13)
	prefetcht0	0(%r13)
	movq	%r15, -272(%r13)
	movq	%r12, -264(%r13)
	leaq	64(%r13), %rax
	movq	%r8, -248(%r13)
	movq	%r14, -240(%r13)
	movq	%r10, -232(%r13)
	movq	%rbx, -216(%r13)
	jle	.L419
	testl	%ebp, %ebp
	je	.L420
	cmpl	$1, %ebp
	je	.L566
	cmpl	$2, %ebp
	.p2align 4,,3
	je	.L567
	movabsq	$4607182418800017408, %r11
	movabsq	$4607182418800017408, %rsi
	movabsq	$4607182418800017408, %rbp
	movabsq	$4607182418800017408, %r15
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %r14
	movabsq	$4607182418800017408, %r10
	prefetcht0	(%rax)
	movq	%r11, -272(%rax)
	movq	%rsi, -264(%rax)
	.loc 1 390 0
	addl	$8, %edx
	.loc 1 391 0
	movq	%rbp, -256(%rax)
	movq	%r15, -248(%rax)
	movq	%r12, -240(%rax)
	movq	%r8, -232(%rax)
	movq	%r14, -224(%rax)
	movq	%r10, -216(%rax)
	leaq	128(%r13), %rax
.L567:
	movabsq	$4607182418800017408, %r13
	movabsq	$4607182418800017408, %rcx
	movabsq	$4607182418800017408, %rbx
	movabsq	$4607182418800017408, %r11
	movabsq	$4607182418800017408, %rsi
	movabsq	$4607182418800017408, %rbp
	movabsq	$4607182418800017408, %r15
	movabsq	$4607182418800017408, %r12
	prefetcht0	(%rax)
	movq	%r13, -272(%rax)
	movq	%rcx, -264(%rax)
	.loc 1 390 0
	addl	$8, %edx
	.loc 1 391 0
	movq	%rbx, -256(%rax)
	movq	%r11, -248(%rax)
	movq	%rsi, -240(%rax)
	movq	%rbp, -232(%rax)
	movq	%r15, -224(%rax)
	movq	%r12, -216(%rax)
	addq	$64, %rax
.L566:
	movabsq	$4607182418800017408, %rcx
	.loc 1 390 0
	addl	$8, %edx
	.loc 1 391 0
	movabsq	$4607182418800017408, %r8
	movq	%rcx, -240(%rax)
	.loc 1 378 0
	leal	1(%rdx), %ecx
	.loc 1 391 0
	movabsq	$4607182418800017408, %r14
	movabsq	$4607182418800017408, %r10
	movabsq	$4607182418800017408, %r13
	movabsq	$4607182418800017408, %rbx
	movabsq	$4607182418800017408, %r11
	movabsq	$4607182418800017408, %rsi
	prefetcht0	(%rax)
	movq	%r8, -272(%rax)
	movq	%r14, -264(%rax)
	movq	%r10, -256(%rax)
	movq	%r13, -248(%rax)
	movq	%rbx, -232(%rax)
	movq	%r11, -224(%rax)
	movq	%rsi, -216(%rax)
	addq	$64, %rax
	cmpl	%ecx, %r9d
	jle	.L419
.L420:
	movabsq	$4607182418800017408, %rcx
	leaq	64(%rax), %r11
	movabsq	$4607182418800017408, %rbp
	movabsq	$4607182418800017408, %r15
	movabsq	$4607182418800017408, %r13
	movq	%rcx, -200(%rax)
	movabsq	$4607182418800017408, %rcx
	movq	%rbp, -272(%rax)
	movq	%r15, -264(%rax)
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %r14
	movabsq	$4607182418800017408, %r10
	movq	%r13, -224(%rax)
	movabsq	$4607182418800017408, %rbx
	leaq	128(%rax), %r13
	movabsq	$4607182418800017408, %rsi
	movabsq	$4607182418800017408, %rbp
	movabsq	$4607182418800017408, %r15
	movq	%rcx, -120(%rax)
	.loc 1 390 0
	addl	$32, %edx
	.loc 1 391 0
	movabsq	$4607182418800017408, %rcx
	movq	%r12, -256(%rax)
	movq	%r8, -248(%rax)
	movq	%r14, -240(%rax)
	movq	%r10, -232(%rax)
	movabsq	$4607182418800017408, %r12
	movq	%rbx, -216(%rax)
	movq	%rsi, -208(%rax)
	movabsq	$4607182418800017408, %r8
	movq	%rbp, -192(%rax)
	movq	%r15, -184(%rax)
	movabsq	$4607182418800017408, %r14
	movabsq	$4607182418800017408, %r10
	movabsq	$4607182418800017408, %rbx
	movabsq	$4607182418800017408, %rsi
	movabsq	$4607182418800017408, %rbp
	movabsq	$4607182418800017408, %r15
	movq	%rcx, -40(%rax)
	prefetcht0	(%r11)
	.loc 1 378 0
	leal	1(%rdx), %ecx
	.loc 1 391 0
	movabsq	$4607182418800017408, %r11
	movq	%r12, -176(%rax)
	movq	%r8, -168(%rax)
	prefetcht0	0(%r13)
	movq	%r14, -160(%rax)
	movq	%r10, -152(%rax)
	leaq	192(%rax), %r14
	movq	%rbx, -144(%rax)
	movq	%r11, -136(%rax)
	movabsq	$4607182418800017408, %r12
	movq	%rsi, -128(%rax)
	movq	%rbp, -112(%rax)
	movabsq	$4607182418800017408, %r8
	movq	%r15, -104(%rax)
	movabsq	$4607182418800017408, %r10
	movabsq	$4607182418800017408, %r13
	movabsq	$4607182418800017408, %rbx
	movabsq	$4607182418800017408, %r11
	movabsq	$4607182418800017408, %rsi
	movabsq	$4607182418800017408, %rbp
	movabsq	$4607182418800017408, %r15
	prefetcht0	(%rax)
	movq	%r12, -96(%rax)
	movq	%r8, -88(%rax)
	prefetcht0	(%r14)
	movq	%r10, -80(%rax)
	movq	%r13, -72(%rax)
	movq	%rbx, -64(%rax)
	movq	%r11, -56(%rax)
	movq	%rsi, -48(%rax)
	movq	%rbp, -32(%rax)
	movq	%r15, -24(%rax)
	addq	$256, %rax
	cmpl	%ecx, %r9d
	jg	.L420
.L419:
	movl	20(%rsp), %r12d
	.loc 1 378 0
	movslq	%edx, %rdx
	leaq	(%rdi,%rdx,8), %rax
	subl	%ecx, %r12d
	andl	$7, %r12d
	je	.L421
	.loc 1 391 0
	movabsq	$4607182418800017408, %r9
	movq	%r9, (%rax)
.LVL90:
	addq	$8, %rax
	.loc 1 390 0
	cmpl	%ecx, 20(%rsp)
	jle	.L414
	addl	$1, %ecx
.LVL91:
	cmpl	$1, %r12d
	je	.L421
	cmpl	$2, %r12d
	je	.L561
	cmpl	$3, %r12d
	je	.L562
	cmpl	$4, %r12d
	je	.L563
	cmpl	$5, %r12d
	je	.L564
	cmpl	$6, %r12d
	je	.L565
	.loc 1 391 0
	movabsq	$4607182418800017408, %r8
	addl	$1, %ecx
.LVL92:
	movq	%r8, (%rax)
.LVL93:
	addq	$8, %rax
.L565:
	movabsq	$4607182418800017408, %r14
	addl	$1, %ecx
	movq	%r14, (%rax)
	addq	$8, %rax
.L564:
	movabsq	$4607182418800017408, %r10
	addl	$1, %ecx
	movq	%r10, (%rax)
	addq	$8, %rax
.L563:
	movabsq	$4607182418800017408, %r13
	addl	$1, %ecx
	movq	%r13, (%rax)
	addq	$8, %rax
.L562:
	movabsq	$4607182418800017408, %rbx
	addl	$1, %ecx
	movq	%rbx, (%rax)
	addq	$8, %rax
.L561:
	movabsq	$4607182418800017408, %r11
	addl	$1, %ecx
	movq	%r11, (%rax)
	addq	$8, %rax
	jmp	.L421
.LVL94:
	.p2align 4,,10
	.p2align 3
.L627:
	movabsq	$4607182418800017408, %r9
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %r10
	movabsq	$4607182418800017408, %r11
	movabsq	$4607182418800017408, %rsi
	movabsq	$4607182418800017408, %rdx
	movabsq	$4607182418800017408, %rbp
	movq	%r9, 8(%rax)
	movq	%r8, 16(%rax)
	movq	%r10, 24(%rax)
	movq	%r11, 32(%rax)
	addl	$8, %ecx
.LVL95:
	movq	%rsi, 40(%rax)
.LVL96:
	movq	%rdx, 48(%rax)
	movq	%rbp, 56(%rax)
	addq	$64, %rax
.L421:
	.loc 1 390 0
	cmpl	%ecx, 20(%rsp)
	.loc 1 391 0
	movabsq	$4607182418800017408, %rsi
	movq	%rsi, (%rax)
.LVL97:
	.loc 1 390 0
	jg	.L627
.LVL98:
.L414:
	.loc 1 393 0
	cmpl	$1, 20(%rsp)
	jle	.L408
	.loc 1 378 0
	leaq	8(%rdi), %rbx
.LVL99:
	movl	$1, %r12d
.LVL100:
.L626:
	xorl	%r14d, %r14d
.LVL101:
	.p2align 4,,10
	.p2align 3
.L624:
	movq	24(%rsp), %rcx
	movslq	%r14d, %rdi
	movl	%r14d, %ebp
	notl	%ebp
	.loc 1 394 0
	leal	1(%r14), %r15d
	addl	%r12d, %ebp
	.loc 1 378 0
	leaq	(%rcx,%rdi,8), %r13
	andl	$3, %ebp
	.loc 1 395 0
	movsd	0(%r13), %xmm0
	movl	%ebp, (%rsp)
	leaq	8(%r13), %rbp
	xorpd	.LC13(%rip), %xmm0
	mulsd	8(%rsp), %xmm0
	call	exp
.LVL102:
	mulsd	(%rbx), %xmm0
	.loc 1 394 0
	cmpl	%r15d, %r12d
	movl	(%rsp), %edx
	.loc 1 395 0
	movsd	%xmm0, (%rbx)
	.loc 1 394 0
	jle	.L623
	testl	%edx, %edx
	je	.L426
	cmpl	$1, %edx
	je	.L559
	cmpl	$2, %edx
	.p2align 4,,3
	je	.L560
	.loc 1 395 0
	movsd	8(%r13), %xmm0
	.loc 1 394 0
	leal	2(%r14), %r15d
	leaq	16(%r13), %rbp
	.loc 1 395 0
	xorpd	.LC13(%rip), %xmm0
	mulsd	8(%rsp), %xmm0
	call	exp
.LVL103:
	mulsd	(%rbx), %xmm0
	movsd	%xmm0, (%rbx)
.LVL104:
.L560:
	movsd	0(%rbp), %xmm0
	.loc 1 394 0
	addl	$1, %r15d
	addq	$8, %rbp
	.loc 1 395 0
	xorpd	.LC13(%rip), %xmm0
	mulsd	8(%rsp), %xmm0
	call	exp
.LVL105:
	mulsd	(%rbx), %xmm0
	movsd	%xmm0, (%rbx)
.L559:
	movsd	0(%rbp), %xmm0
	.loc 1 394 0
	addl	$1, %r15d
	addq	$8, %rbp
	.loc 1 395 0
	xorpd	.LC13(%rip), %xmm0
	mulsd	8(%rsp), %xmm0
	call	exp
.LVL106:
	mulsd	(%rbx), %xmm0
	.loc 1 394 0
	cmpl	%r15d, %r12d
	.loc 1 395 0
	movsd	%xmm0, (%rbx)
	.loc 1 394 0
	jle	.L623
.L426:
	.loc 1 395 0
	movsd	0(%rbp), %xmm0
	.loc 1 394 0
	addl	$4, %r15d
	.loc 1 395 0
	xorpd	.LC13(%rip), %xmm0
	mulsd	8(%rsp), %xmm0
	call	exp
.LVL107:
	mulsd	(%rbx), %xmm0
	movsd	%xmm0, (%rbx)
	movsd	8(%rbp), %xmm0
	xorpd	.LC13(%rip), %xmm0
	mulsd	8(%rsp), %xmm0
	call	exp
.LVL108:
	mulsd	(%rbx), %xmm0
	movsd	%xmm0, (%rbx)
	movsd	16(%rbp), %xmm0
	xorpd	.LC13(%rip), %xmm0
	mulsd	8(%rsp), %xmm0
	call	exp
.LVL109:
	mulsd	(%rbx), %xmm0
	movsd	%xmm0, (%rbx)
	movsd	24(%rbp), %xmm0
	addq	$32, %rbp
	xorpd	.LC13(%rip), %xmm0
	mulsd	8(%rsp), %xmm0
	call	exp
.LVL110:
	mulsd	(%rbx), %xmm0
	.loc 1 394 0
	cmpl	%r15d, %r12d
	.loc 1 395 0
	movsd	%xmm0, (%rbx)
	.loc 1 394 0
	jg	.L426
.L623:
	.loc 1 393 0
	addl	$1, %r12d
.LVL111:
	addq	$8, %rbx
	cmpl	20(%rsp), %r12d
	je	.L408
.LVL112:
	cmpl	$8, %r12d
	jle	.L626
	.loc 1 378 0
	leal	-9(%r12), %eax
	movq	24(%rsp), %r13
	xorl	%r14d, %r14d
	shrl	$3, %eax
	leal	8(,%rax,8), %r15d
	addq	$72, %r13
.LVL113:
	.p2align 4,,10
	.p2align 3
.L428:
	.loc 1 395 0 discriminator 2
	movsd	-72(%r13), %xmm0
	.loc 1 394 0 discriminator 2
	addl	$8, %r14d
	prefetcht0	0(%r13)
	.loc 1 395 0 discriminator 2
	xorpd	.LC13(%rip), %xmm0
	mulsd	8(%rsp), %xmm0
	call	exp
.LVL114:
	mulsd	(%rbx), %xmm0
	movsd	%xmm0, (%rbx)
	movsd	-64(%r13), %xmm0
	xorpd	.LC13(%rip), %xmm0
	mulsd	8(%rsp), %xmm0
	call	exp
.LVL115:
	mulsd	(%rbx), %xmm0
	movsd	%xmm0, (%rbx)
	movsd	-56(%r13), %xmm0
	xorpd	.LC13(%rip), %xmm0
	mulsd	8(%rsp), %xmm0
	call	exp
.LVL116:
	mulsd	(%rbx), %xmm0
	movsd	%xmm0, (%rbx)
	movsd	-48(%r13), %xmm0
	xorpd	.LC13(%rip), %xmm0
	mulsd	8(%rsp), %xmm0
	call	exp
.LVL117:
	mulsd	(%rbx), %xmm0
	movsd	%xmm0, (%rbx)
	movsd	-40(%r13), %xmm0
	xorpd	.LC13(%rip), %xmm0
	mulsd	8(%rsp), %xmm0
	call	exp
.LVL118:
	mulsd	(%rbx), %xmm0
	movsd	%xmm0, (%rbx)
	movsd	-32(%r13), %xmm0
	xorpd	.LC13(%rip), %xmm0
	mulsd	8(%rsp), %xmm0
	call	exp
.LVL119:
	mulsd	(%rbx), %xmm0
	movsd	%xmm0, (%rbx)
	movsd	-24(%r13), %xmm0
	xorpd	.LC13(%rip), %xmm0
	mulsd	8(%rsp), %xmm0
	call	exp
.LVL120:
	mulsd	(%rbx), %xmm0
	movsd	%xmm0, (%rbx)
	movsd	-16(%r13), %xmm0
	addq	$64, %r13
	xorpd	.LC13(%rip), %xmm0
	mulsd	8(%rsp), %xmm0
	call	exp
.LVL121:
	mulsd	(%rbx), %xmm0
	cmpl	%r15d, %r14d
	movsd	%xmm0, (%rbx)
	jne	.L428
	jmp	.L624
.LVL122:
	.p2align 4,,10
	.p2align 3
.L408:
.LBE99:
	.loc 1 399 0
	addq	$40, %rsp
.LCFI51:
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	$1, %eax
	popq	%rbx
.LCFI52:
	.cfi_def_cfa_offset 48
	popq	%rbp
.LCFI53:
	.cfi_def_cfa_offset 40
	popq	%r12
.LCFI54:
	.cfi_def_cfa_offset 32
	popq	%r13
.LCFI55:
	.cfi_def_cfa_offset 24
	popq	%r14
.LCFI56:
	.cfi_def_cfa_offset 16
	popq	%r15
.LCFI57:
	.cfi_def_cfa_offset 8
	ret
.LVL123:
.L433:
.LCFI58:
	.cfi_restore_state
	.loc 1 378 0
	xorl	%ebp, %ebp
	movapd	.LC26(%rip), %xmm2
	jmp	.L416
.LVL124:
.L432:
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	jmp	.L411
.L431:
	.loc 1 390 0
	xorl	%edx, %edx
.LVL125:
	jmp	.L410
	.cfi_endproc
.LFE84:
	.size	_Z16Discount_FactorsPdidS_, .-_Z16Discount_FactorsPdidS_
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC27:
	.string	"Usage: %s OPTION [OPTIONS]...\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC28:
	.string	"Options:\n"
	.section	.rodata.str1.8
	.align 8
.LC29:
	.string	"\t-ns [number of swaptions (should be > number of threads]\n"
	.section	.rodata.str1.1
.LC30:
	.string	"\t-sm [number of simulations]\n"
.LC31:
	.string	"\t-nt [number of threads]\n"
.LC32:
	.string	"\t-sd [random number seed]\n"
	.text
	.p2align 4,,15
	.globl	_Z11print_usagePc
	.type	_Z11print_usagePc, @function
_Z11print_usagePc:
.LFB1075:
	.loc 1 596 0
	.cfi_startproc
.LVL126:
	subq	$8, %rsp
.LCFI59:
	.cfi_def_cfa_offset 16
	.loc 1 596 0
	movq	%rdi, %rcx
.LBB100:
.LBB101:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 99 0
	movq	stderr(%rip), %rdi
.LVL127:
	movl	$.LC27, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk
.LVL128:
.LBE101:
.LBE100:
.LBB102:
.LBB103:
	movq	stderr(%rip), %rcx
	movl	$9, %edx
	movl	$1, %esi
	movl	$.LC28, %edi
	call	fwrite
.LVL129:
.LBE103:
.LBE102:
.LBB104:
.LBB105:
	movq	stderr(%rip), %rcx
	movl	$58, %edx
	movl	$1, %esi
	movl	$.LC29, %edi
	call	fwrite
.LVL130:
.LBE105:
.LBE104:
.LBB106:
.LBB107:
	movq	stderr(%rip), %rcx
	movl	$29, %edx
	movl	$1, %esi
	movl	$.LC30, %edi
	call	fwrite
.LVL131:
.LBE107:
.LBE106:
.LBB108:
.LBB109:
	movq	stderr(%rip), %rcx
	movl	$25, %edx
	movl	$1, %esi
	movl	$.LC31, %edi
	call	fwrite
.LVL132:
.LBE109:
.LBE108:
.LBB110:
.LBB111:
	movq	stderr(%rip), %rcx
	movl	$26, %edx
	movl	$1, %esi
	movl	$.LC32, %edi
.LBE111:
.LBE110:
	.loc 1 603 0
	addq	$8, %rsp
.LCFI60:
	.cfi_def_cfa_offset 8
.LBB113:
.LBB112:
	.loc 2 99 0
	jmp	fwrite
.LVL133:
.LBE112:
.LBE113:
	.cfi_endproc
.LFE1075:
	.size	_Z11print_usagePc, .-_Z11print_usagePc
	.p2align 4,,15
	.globl	_Z7serialBPPdS0_iii
	.type	_Z7serialBPPdS0_iii, @function
_Z7serialBPPdS0_iii:
.LFB1077:
	.loc 1 877 0
	.cfi_startproc
.LVL134:
	pushq	%r15
.LCFI61:
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
.LCFI62:
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
.LCFI63:
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
.LCFI64:
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
.LCFI65:
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
.LCFI66:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
.LCFI67:
	.cfi_def_cfa_offset 96
.LBB117:
	.loc 1 880 0
	testl	%r8d, %r8d
.LBE117:
	.loc 1 877 0
	movl	%edx, 20(%rsp)
	movl	%ecx, 16(%rsp)
.LBB120:
	.loc 1 880 0
	jle	.L630
	.loc 1 876 0
	movslq	%edx, %rax
	subl	$1, %edx
.LVL135:
	subl	$1, %r8d
.LVL136:
	leaq	1(%rax,%rdx), %r14
	leaq	8(%rdi,%r8,8), %r8
	leaq	0(,%rax,8), %rbp
	movq	%rdi, %rbx
	movq	%rsi, %r15
	salq	$3, %r14
	movq	%r8, 24(%rsp)
	movq	%r14, 8(%rsp)
.LVL137:
	.p2align 4,,10
	.p2align 3
.L632:
.LBB118:
	.loc 1 881 0 discriminator 1
	movl	20(%rsp), %edx
	movq	%rbp, %r12
	testl	%edx, %edx
	jle	.L635
.LVL138:
	.p2align 4,,10
	.p2align 3
.L639:
.LBB119:
	.loc 1 882 0 discriminator 1
	cmpl	$1, 16(%rsp)
	jle	.L636
	.loc 1 883 0 discriminator 2
	movq	(%r15), %rcx
	movl	16(%rsp), %esi
	.loc 1 882 0 discriminator 2
	movl	$2, %r14d
	.loc 1 883 0 discriminator 2
	movq	(%rbx), %r13
	subl	$2, %esi
	movsd	(%rcx,%r12), %xmm0
	andl	$3, %esi
	addq	%r12, %r13
	movl	%esi, (%rsp)
	call	_Z12CumNormalInvd
.LVL139:
	.loc 1 882 0 discriminator 2
	cmpl	16(%rsp), %r14d
	.loc 1 883 0 discriminator 2
	movsd	%xmm0, 0(%r13)
	.loc 1 882 0 discriminator 2
	movl	(%rsp), %edi
	leaq	(%r12,%rbp), %r13
	je	.L636
	testl	%edi, %edi
	je	.L640
	cmpl	$1, %edi
	je	.L654
	cmpl	$2, %edi
	.p2align 4,,3
	je	.L655
	.loc 1 883 0
	movq	(%r15), %r9
	movq	(%rbx), %r14
	movsd	(%r9,%r13), %xmm0
	addq	%r13, %r14
	addq	%rbp, %r13
	call	_Z12CumNormalInvd
.LVL140:
	movsd	%xmm0, (%r14)
	.loc 1 882 0
	movl	$3, %r14d
.L655:
	.loc 1 883 0
	movq	(%r15), %r11
	movq	(%rbx), %r10
	.loc 1 882 0
	addl	$1, %r14d
	.loc 1 883 0
	movsd	(%r11,%r13), %xmm0
	addq	%r13, %r10
	movq	%r10, (%rsp)
	addq	%rbp, %r13
	call	_Z12CumNormalInvd
.LVL141:
	movq	(%rsp), %r8
	movsd	%xmm0, (%r8)
.L654:
	movq	(%r15), %rdx
	movq	(%rbx), %rax
	.loc 1 882 0
	addl	$1, %r14d
	.loc 1 883 0
	movsd	(%rdx,%r13), %xmm0
	addq	%r13, %rax
	movq	%rax, (%rsp)
	addq	%rbp, %r13
	call	_Z12CumNormalInvd
.LVL142:
	.loc 1 882 0
	cmpl	16(%rsp), %r14d
	.loc 1 883 0
	movq	(%rsp), %rsi
	movsd	%xmm0, (%rsi)
	.loc 1 882 0
	je	.L636
.L640:
	.loc 1 883 0 discriminator 2
	movq	(%r15), %rdi
	movq	(%rbx), %rcx
	.loc 1 882 0 discriminator 2
	addl	$4, %r14d
	.loc 1 883 0 discriminator 2
	movsd	(%rdi,%r13), %xmm0
	addq	%r13, %rcx
	movq	%rcx, (%rsp)
	addq	%rbp, %r13
	call	_Z12CumNormalInvd
.LVL143:
	movq	(%rsp), %r9
	movq	(%r15), %r11
	movq	(%rbx), %r10
	movsd	%xmm0, (%r9)
	addq	%r13, %r10
	movsd	(%r11,%r13), %xmm0
	addq	%rbp, %r13
	movq	%r10, (%rsp)
	call	_Z12CumNormalInvd
.LVL144:
	movq	(%rsp), %r8
	movq	(%r15), %rdx
	movq	(%rbx), %rax
	movsd	%xmm0, (%r8)
	addq	%r13, %rax
	movsd	(%rdx,%r13), %xmm0
	addq	%rbp, %r13
	movq	%rax, (%rsp)
	call	_Z12CumNormalInvd
.LVL145:
	movq	(%rsp), %rsi
	movq	(%r15), %rdi
	movq	(%rbx), %rcx
	movsd	%xmm0, (%rsi)
	addq	%r13, %rcx
	movsd	(%rdi,%r13), %xmm0
	addq	%rbp, %r13
	movq	%rcx, (%rsp)
	call	_Z12CumNormalInvd
.LVL146:
	.loc 1 882 0 discriminator 2
	cmpl	16(%rsp), %r14d
	.loc 1 883 0 discriminator 2
	movq	(%rsp), %r9
	movsd	%xmm0, (%r9)
	.loc 1 882 0 discriminator 2
	jne	.L640
.L636:
	addq	$8, %r12
.LBE119:
	.loc 1 881 0
	cmpq	8(%rsp), %r12
	jne	.L639
.L635:
	addq	$8, %rbx
	addq	$8, %r15
.LBE118:
	.loc 1 880 0
	cmpq	24(%rsp), %rbx
	jne	.L632
.L630:
.LBE120:
	.loc 1 887 0
	addq	$40, %rsp
.LCFI68:
	.cfi_def_cfa_offset 56
	popq	%rbx
.LCFI69:
	.cfi_def_cfa_offset 48
	popq	%rbp
.LCFI70:
	.cfi_def_cfa_offset 40
	popq	%r12
.LCFI71:
	.cfi_def_cfa_offset 32
	popq	%r13
.LCFI72:
	.cfi_def_cfa_offset 24
	popq	%r14
.LCFI73:
	.cfi_def_cfa_offset 16
	popq	%r15
.LCFI74:
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1077:
	.size	_Z7serialBPPdS0_iii, .-_Z7serialBPPdS0_iii
	.p2align 4,,15
	.globl	_Z13icdf_baselineiPdS_
	.type	_Z13icdf_baselineiPdS_, @function
_Z13icdf_baselineiPdS_:
.LFB1080:
	.loc 1 1204 0
	.cfi_startproc
.LBB121:
.LBB122:
	.loc 1 1243 0
	testl	%edi, %edi
	jle	.L680
.LBE122:
.LBE121:
	.loc 1 1204 0
	pushq	%r13
.LCFI75:
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
.LBB128:
	subl	$1, %edi
	leaq	8(,%rdi,8), %r13
.LBE128:
	pushq	%r12
.LCFI76:
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdx, %r12
	pushq	%rbp
.LCFI77:
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI78:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	xorl	%ebx, %ebx
	subq	$24, %rsp
.LCFI79:
	.cfi_def_cfa_offset 64
	movsd	.LC11(%rip), %xmm4
	jmp	.L671
	.p2align 4,,10
	.p2align 3
.L676:
.LBB129:
.LBB126:
.LBB123:
	.loc 1 1251 0
	movsd	.LC45(%rip), %xmm2
	ucomisd	%xmm0, %xmm2
	jb	.L677
	.loc 1 1252 0
	subsd	.LC0(%rip), %xmm0
	.loc 1 1254 0
	movsd	.LC46(%rip), %xmm6
	movsd	.LC52(%rip), %xmm8
	.loc 1 1253 0
	movapd	%xmm0, %xmm7
	mulsd	%xmm0, %xmm7
	.loc 1 1254 0
	mulsd	%xmm7, %xmm6
	mulsd	%xmm7, %xmm8
	addsd	.LC47(%rip), %xmm6
	addsd	.LC53(%rip), %xmm8
	mulsd	%xmm7, %xmm6
	mulsd	%xmm7, %xmm8
	subsd	.LC48(%rip), %xmm6
	subsd	.LC54(%rip), %xmm8
	mulsd	%xmm7, %xmm6
	mulsd	%xmm7, %xmm8
	addsd	.LC49(%rip), %xmm6
	addsd	.LC55(%rip), %xmm8
	mulsd	%xmm7, %xmm6
	mulsd	%xmm7, %xmm8
	subsd	.LC50(%rip), %xmm6
	subsd	.LC56(%rip), %xmm8
	mulsd	%xmm7, %xmm6
	mulsd	%xmm7, %xmm8
	addsd	.LC51(%rip), %xmm6
	addsd	%xmm4, %xmm8
	mulsd	%xmm0, %xmm6
	divsd	%xmm8, %xmm6
	.loc 1 1261 0
	movsd	%xmm6, (%r12,%rbx)
	addq	$8, %rbx
.LBE123:
	.loc 1 1243 0
	cmpq	%r13, %rbx
	je	.L682
.L671:
.LBB124:
	.loc 1 1244 0
	movsd	0(%rbp,%rbx), %xmm0
	.loc 1 1246 0
	movsd	.LC33(%rip), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.L676
	.loc 1 1247 0
	movsd	%xmm4, (%rsp)
	call	log
	mulsd	.LC34(%rip), %xmm0
	movsd	(%rsp), %xmm4
	sqrtsd	%xmm0, %xmm5
	ucomisd	%xmm5, %xmm5
	jp	.L683
.L664:
	.loc 1 1248 0
	movsd	.LC35(%rip), %xmm6
	mulsd	%xmm5, %xmm6
	subsd	.LC36(%rip), %xmm6
	mulsd	%xmm5, %xmm6
	subsd	.LC37(%rip), %xmm6
	mulsd	%xmm5, %xmm6
	subsd	.LC38(%rip), %xmm6
	mulsd	%xmm5, %xmm6
	addsd	.LC39(%rip), %xmm6
	mulsd	%xmm5, %xmm6
	addsd	.LC40(%rip), %xmm6
.L681:
	.loc 1 1259 0
	movsd	.LC41(%rip), %xmm9
	mulsd	%xmm5, %xmm9
	addsd	.LC42(%rip), %xmm9
	mulsd	%xmm5, %xmm9
	addsd	.LC43(%rip), %xmm9
	mulsd	%xmm5, %xmm9
	addsd	.LC44(%rip), %xmm9
	mulsd	%xmm5, %xmm9
	addsd	%xmm4, %xmm9
	divsd	%xmm9, %xmm6
	.loc 1 1261 0
	movsd	%xmm6, (%r12,%rbx)
	addq	$8, %rbx
.LBE124:
	.loc 1 1243 0
	cmpq	%r13, %rbx
	jne	.L671
.L682:
.LBE126:
.LBE129:
	.loc 1 1264 0
	addq	$24, %rsp
.LCFI80:
	.cfi_def_cfa_offset 40
	popq	%rbx
.LCFI81:
	.cfi_restore 3
	.cfi_def_cfa_offset 32
	popq	%rbp
.LCFI82:
	.cfi_restore 6
	.cfi_def_cfa_offset 24
	popq	%r12
.LCFI83:
	.cfi_restore 12
	.cfi_def_cfa_offset 16
	popq	%r13
.LCFI84:
	.cfi_restore 13
	.cfi_def_cfa_offset 8
.L680:
	rep
	ret
	.p2align 4,,10
	.p2align 3
.L677:
.LCFI85:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
.LBB130:
.LBB127:
.LBB125:
	.loc 1 1258 0
	movapd	%xmm4, %xmm3
	movsd	%xmm4, (%rsp)
	subsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm0
	call	log
	mulsd	.LC34(%rip), %xmm0
	movsd	(%rsp), %xmm4
	sqrtsd	%xmm0, %xmm5
	ucomisd	%xmm5, %xmm5
	jp	.L684
.L669:
	.loc 1 1259 0
	movsd	.LC35(%rip), %xmm6
	movsd	.LC13(%rip), %xmm0
	mulsd	%xmm5, %xmm6
	subsd	.LC36(%rip), %xmm6
	mulsd	%xmm5, %xmm6
	subsd	.LC37(%rip), %xmm6
	mulsd	%xmm5, %xmm6
	subsd	.LC38(%rip), %xmm6
	mulsd	%xmm5, %xmm6
	addsd	.LC39(%rip), %xmm6
	mulsd	%xmm5, %xmm6
	addsd	.LC40(%rip), %xmm6
	xorpd	%xmm0, %xmm6
	jmp	.L681
.L683:
	.loc 1 1247 0
	call	sqrt
	movsd	(%rsp), %xmm4
	movapd	%xmm0, %xmm5
	jmp	.L664
.L684:
	.loc 1 1258 0
	call	sqrt
	movsd	(%rsp), %xmm4
	movapd	%xmm0, %xmm5
	jmp	.L669
.LBE125:
.LBE127:
.LBE130:
	.cfi_endproc
.LFE1080:
	.size	_Z13icdf_baselineiPdS_, .-_Z13icdf_baselineiPdS_
	.p2align 4,,15
	.globl	_Z4dMaxdd
	.type	_Z4dMaxdd, @function
_Z4dMaxdd:
.LFB1081:
	.loc 1 1277 0
	.cfi_startproc
.LVL147:
	.loc 1 1278 0
	maxsd	%xmm1, %xmm0
.LVL148:
	.loc 1 1279 0
	ret
	.cfi_endproc
.LFE1081:
	.size	_Z4dMaxdd, .-_Z4dMaxdd
	.section	.rodata.str1.8
	.align 8
.LC57:
	.string	"Numerical Recipes run-time error...\n"
	.section	.rodata.str1.1
.LC58:
	.string	"%s\n"
.LC59:
	.string	"...now exiting to system...\n"
	.text
	.p2align 4,,15
	.globl	_Z7nrerrorPKc
	.type	_Z7nrerrorPKc, @function
_Z7nrerrorPKc:
.LFB1082:
	.loc 1 1292 0
	.cfi_startproc
.LVL149:
.LBB131:
.LBB132:
	.loc 2 99 0
	movq	stderr(%rip), %rcx
.LBE132:
.LBE131:
	.loc 1 1292 0
	pushq	%rbx
.LCFI86:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
.LBB135:
.LBB133:
	.loc 2 99 0
	movl	$36, %edx
.LBE133:
.LBE135:
	.loc 1 1292 0
	movq	%rdi, %rbx
.LBB136:
.LBB134:
	.loc 2 99 0
	movl	$1, %esi
	movl	$.LC57, %edi
.LVL150:
	call	fwrite
.LVL151:
.LBE134:
.LBE136:
.LBB137:
.LBB138:
	movq	stderr(%rip), %rdi
	movq	%rbx, %rcx
	movl	$.LC58, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk
.LVL152:
.LBE138:
.LBE137:
.LBB139:
.LBB140:
	movq	stderr(%rip), %rcx
	movl	$.LC59, %edi
	movl	$28, %edx
	movl	$1, %esi
	call	fwrite
.LVL153:
.LBE140:
.LBE139:
	.loc 1 1297 0
	movl	$1, %edi
	call	exit
.LVL154:
	.cfi_endproc
.LFE1082:
	.size	_Z7nrerrorPKc, .-_Z7nrerrorPKc
	.section	.rodata.str1.1
.LC60:
	.string	"PARSEC Benchmark Suite"
.LC61:
	.string	"-sm"
.LC62:
	.string	"-nt"
.LC63:
	.string	"-ns"
.LC64:
	.string	"-sd"
.LC65:
	.string	"Error: Unknown option: %s\n"
	.section	.rodata.str1.8
	.align 8
.LC66:
	.string	"Error: Fewer swaptions than threads.\n"
	.align 8
.LC67:
	.string	"Number of Simulations: %d,  Number of threads: %d Number of swaptions: %d\n"
	.align 8
.LC70:
	.string	"Number of threads must be between 1 and %d.\n"
	.align 8
.LC71:
	.string	"allocation failure 1 in dmatrix()"
	.align 8
.LC72:
	.string	"allocation failure 2 in dmatrix()"
	.align 8
.LC99:
	.string	"allocation failure in dvector()"
	.align 8
.LC101:
	.string	"Swaption %d: [SwaptionPrice: %.10lf StdError: %.10lf] \n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB1076:
	.loc 1 610 0
	.cfi_startproc
.LVL155:
	pushq	%rbp
.LCFI87:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
.LCFI88:
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	movq	%rsi, %r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	%edi, %ebx
.LBB184:
.LBB185:
.LBB186:
	.loc 2 105 0
	movl	$.LC60, %edi
.LVL156:
.LBE186:
.LBE185:
.LBE184:
	.loc 1 610 0
	subq	$248, %rsp
	.loc 1 610 0
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
.LVL157:
.LBB341:
.LBB188:
.LBB187:
	.loc 2 105 0
	call	puts
.LVL158:
.LBE187:
.LBE188:
	.loc 1 623 0
	xorl	%edi, %edi
	call	fflush
.LVL159:
	.loc 1 629 0
	cmpl	$1, %ebx
	je	.L1116
.LVL160:
.LBB189:
	.loc 1 635 0 discriminator 1
	.p2align 4,,3
	jle	.L702
.LBE189:
	.loc 1 609 0
	leal	-2(%rbx), %eax
	leaq	48(%r14), %r15
	movl	$.LC61, %r12d
.LBB214:
	.loc 1 636 0
	movl	$4, %ebx
.LVL161:
	movq	%r12, %rsi
.LBE214:
	.loc 1 609 0
	shrl	%eax
.LVL162:
.LBB215:
	.loc 1 636 0
	movq	-40(%r15), %r8
	movq	%rbx, %rcx
.LBE215:
	.loc 1 609 0
	salq	$4, %rax
	leaq	64(%r14,%rax), %r13
.LBB216:
	.loc 1 636 0
	movq	%r8, %rdi
	movq	%r13, %rdx
	subq	%r15, %rdx
	subq	$16, %rdx
	shrq	$4, %rdx
	andl	$1, %edx
	movq	%rdx, -120(%rbp)
	repz cmpsb
	je	.L1123
	.loc 1 637 0
	movl	$.LC62, %esi
	movq	%r8, %rdi
	movq	%rbx, %rcx
	repz cmpsb
	je	.L1072
	.loc 1 638 0
	movl	$.LC63, %esi
	movq	%r8, %rdi
	movq	%rbx, %rcx
	repz cmpsb
	je	.L1073
	.loc 1 639 0
	movl	$.LC64, %esi
	movq	%r8, %rdi
	movq	%rbx, %rcx
	repz cmpsb
	jne	.L700
.LVL163:
.LBB190:
.LBB191:
	.file 3 "/usr/include/stdlib.h"
	.loc 3 286 0
	movq	-32(%r15), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	prefetcht0	(%r15)
.LVL164:
	call	strtol
.LVL165:
.LBE191:
.LBE190:
	.loc 1 639 0
	cltq
	movq	%rax, seed(%rip)
.L1074:
	addq	$16, %r15
	.loc 1 635 0
	cmpq	%r13, %r15
	je	.L702
	cmpq	$0, -120(%rbp)
	je	.L701
	jmp	.L1122
	.p2align 4,,10
	.p2align 3
.L1127:
	.loc 1 637 0
	movl	$.LC62, %esi
	movq	%r8, %rdi
	movq	%rbx, %rcx
	repz cmpsb
	je	.L1079
	.loc 1 638 0
	movl	$.LC63, %esi
	movq	%r8, %rdi
	movq	%rbx, %rcx
	repz cmpsb
	je	.L1080
	.loc 1 639 0
	movl	$.LC64, %esi
	movq	%r8, %rdi
	movq	%rbx, %rcx
	repz cmpsb
	jne	.L700
.LBB194:
.LBB192:
	.loc 3 286 0
	movq	-32(%r15), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	prefetcht0	(%r15)
	call	strtol
.LVL166:
.LBE192:
.LBE194:
	.loc 1 639 0
	cltq
	movq	%rax, seed(%rip)
.L1081:
	addq	$16, %r15
	.loc 1 635 0
	cmpq	%r13, %r15
	je	.L702
.L701:
	.loc 1 636 0
	movq	-40(%r15), %r8
	movq	%r12, %rsi
	movq	%rbx, %rcx
	movq	%r8, %rdi
	repz cmpsb
	je	.L1124
	.loc 1 637 0
	movl	$.LC62, %esi
	movq	%r8, %rdi
	movq	%rbx, %rcx
	repz cmpsb
	je	.L1125
	.loc 1 638 0
	movl	$.LC63, %esi
	movq	%r8, %rdi
	movq	%rbx, %rcx
	repz cmpsb
	je	.L1126
	.loc 1 639 0
	movl	$.LC64, %esi
	movq	%r8, %rdi
	movq	%rbx, %rcx
	repz cmpsb
	jne	.L700
.LBB195:
.LBB193:
	.loc 3 286 0 discriminator 1
	movq	-32(%r15), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	prefetcht0	(%r15)
	call	strtol
.LVL167:
.LBE193:
.LBE195:
	.loc 1 639 0 discriminator 1
	cltq
	movq	%rax, seed(%rip)
.L697:
	addq	$16, %r15
.L1122:
	.loc 1 636 0
	movq	-40(%r15), %r8
	movq	%r12, %rsi
	movq	%rbx, %rcx
	movq	%r8, %rdi
	repz cmpsb
	jne	.L1127
.LBB196:
.LBB197:
	.loc 3 286 0
	movq	-32(%r15), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	addq	$16, %r15
	call	strtol
.LVL168:
.LBE197:
.LBE196:
	.loc 1 635 0
	cmpq	%r13, %r15
.LBB201:
.LBB198:
	.loc 3 286 0
	movl	%eax, NUM_TRIALS(%rip)
.LBE198:
.LBE201:
	.loc 1 635 0
	jne	.L701
.L702:
.LBE216:
	.loc 1 647 0
	movl	nSwaptions(%rip), %r8d
	movl	nThreads(%rip), %ecx
	cmpl	%ecx, %r8d
	jl	.L1128
.LVL169:
.LBB217:
.LBB218:
	.loc 2 105 0
	movl	NUM_TRIALS(%rip), %edx
	movl	$.LC67, %esi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk
.LVL170:
.LBE218:
.LBE217:
.LBB219:
.LBB220:
	.loc 1 1492 0
	movq	seed(%rip), %r9
.LVL171:
	.loc 1 1493 0
	movabsq	$4730756183288445817, %r10
.LBE220:
.LBE219:
	.loc 1 664 0
	movslq	nThreads(%rip), %r8
.LBB224:
.LBB221:
	.loc 1 1493 0
	movq	%r9, %rax
	movq	%r9, %r11
	imulq	%r10
	sarq	$63, %r11
.LBE221:
.LBE224:
	.loc 1 664 0
	leal	-1(%r8), %esi
.LBB225:
.LBB222:
	.loc 1 1493 0
	sarq	$15, %rdx
	subq	%r11, %rdx
.LVL172:
	.loc 1 1494 0
	imulq	$-127773, %rdx, %r14
.LVL173:
	imulq	$-2836, %rdx, %r13
	addq	%r9, %r14
	imulq	$16807, %r14, %r15
	addq	%r13, %r15
.LVL174:
	.loc 1 1495 0
	leaq	2147483647(%r15), %r12
	testq	%r15, %r15
	cmovs	%r12, %r15
.LVL175:
.LBE222:
.LBE225:
	.loc 1 664 0
	cmpl	$1023, %esi
.LBB226:
.LBB223:
	.loc 1 1497 0
	cvtsi2sdq	%r15, %xmm0
	.loc 1 1496 0
	movq	%r15, seed(%rip)
.LVL176:
	.loc 1 1497 0
	mulsd	.LC68(%rip), %xmm0
.LBE223:
.LBE226:
	.loc 1 654 0
	mulsd	.LC69(%rip), %xmm0
	cvttsd2siq	%xmm0, %rbx
	movq	%rbx, swaption_seed(%rip)
	.loc 1 664 0
	ja	.L1117
	.loc 1 669 0
	leaq	0(,%r8,8), %rdi
	call	malloc
.LVL177:
	.loc 1 670 0
	leaq	-112(%rbp), %rdi
	.loc 1 669 0
	movq	%rax, -280(%rbp)
.LVL178:
	.loc 1 670 0
	call	pthread_attr_init
.LVL179:
	.loc 1 674 0
	movl	nThreads(%rip), %edi
	movl	%edi, %ecx
	movl	%edi, -232(%rbp)
	subl	$1, %ecx
	cmpl	$1023, %ecx
	ja	.L1117
	.loc 1 689 0
	movl	iFactors(%rip), %r10d
	movl	iN(%rip), %r9d
	movl	%r10d, %eax
	movl	%r9d, %edx
	movl	%r9d, -132(%rbp)
	subl	$1, %eax
	subl	$2, %edx
	movl	%r10d, -136(%rbp)
	cltq
	movslq	%edx, %r15
.LBB227:
.LBB228:
.LBB229:
	.loc 1 1441 0
	leaq	16(,%rax,8), %r11
	.loc 1 1437 0
	movq	%rax, %r14
.LBE229:
.LBE228:
.LBE227:
	.loc 1 689 0
	movq	%rax, -168(%rbp)
.LVL180:
.LBB248:
.LBB239:
.LBB230:
	.loc 1 1437 0
	addq	$1, %r14
.LVL181:
	addq	$1, %r15
.LVL182:
	.loc 1 1441 0
	movq	%r11, %rdi
	movq	%r11, -240(%rbp)
	call	malloc
.LVL183:
	.loc 1 1442 0
	testq	%rax, %rax
	.loc 1 1441 0
	movq	%rax, %rbx
.LVL184:
	.loc 1 1442 0
	je	.L720
.LVL185:
	.loc 1 1447 0
	imulq	%r15, %r14
.LVL186:
	.loc 1 1444 0
	leaq	8(%rax), %r13
.LVL187:
	movq	%r13, -160(%rbp)
	.loc 1 1447 0
	leaq	8(,%r14,8), %r12
.LVL188:
	movq	%r12, %rdi
	movq	%r12, -248(%rbp)
	call	malloc
.LVL189:
	.loc 1 1448 0
	testq	%rax, %rax
	je	.L726
	.loc 1 1452 0
	cmpq	$0, -168(%rbp)
	.loc 1 1449 0
	leaq	8(%rax), %r8
	movq	%r8, 8(%rbx)
.LVL190:
	.loc 1 1452 0
	jle	.L714
.LBE230:
.LBE239:
.LBE248:
	.loc 1 609 0
	movq	-168(%rbp), %rsi
	leaq	0(,%r15,8), %rdx
	subq	$6, %rsi
	cmpl	$9, -136(%rbp)
	movq	%rsi, -144(%rbp)
	jle	.L758
	movq	%r15, %rcx
	leaq	(%r8,%rdx), %r10
.LBB249:
.LBB240:
.LBB231:
	.loc 1 1452 0
	movq	-160(%rbp), %rsi
.LBE231:
.LBE240:
.LBE249:
	.loc 1 609 0
	salq	$4, %rcx
	movq	-168(%rbp), %r13
.LVL191:
	prefetcht0	176(%rbx)
	leaq	(%rcx,%rdx,4), %rdi
	leaq	(%r8,%rcx), %r11
.LBB250:
.LBB241:
.LBB232:
	.loc 1 1452 0
	movq	%r10, 8(%rsi)
.LVL192:
.LBE232:
.LBE241:
.LBE250:
	.loc 1 609 0
	leaq	(%rdi,%rdx,2), %rdi
.LBB251:
.LBB242:
.LBB233:
	.loc 1 1452 0
	movq	%r11, 16(%rsi)
	subq	$9, %r13
	shrq	$3, %r13
.LBE233:
.LBE242:
.LBE251:
	.loc 1 609 0
	leaq	(%r8,%rdi), %r9
	movq	%rdx, %r8
	andl	$1, %r13d
	negq	%r8
	addq	%rdi, %r10
	addq	%rdi, %r11
	leaq	0(,%r8,4), %r12
	addq	%r8, %r8
	movq	%r8, -128(%rbp)
	movq	%r12, %rax
.LBB252:
.LBB243:
.LBB234:
	leaq	(%r9,%r12), %r8
.LBE234:
.LBE243:
.LBE252:
	leaq	(%r12,%rdx), %r14
	subq	%rdx, %rax
.LBB253:
.LBB244:
.LBB235:
	movq	%rax, %rcx
.LBE235:
.LBE244:
.LBE253:
	movq	%rax, -120(%rbp)
.LBB254:
.LBB245:
.LBB236:
	movq	-160(%rbp), %rax
	addq	%r9, %rcx
	leaq	(%r9,%r14), %rsi
	movq	%rcx, 24(%rax)
	movq	-128(%rbp), %rcx
	movq	%r8, 32(%rax)
	movq	%r9, %r8
	movq	%rsi, 40(%rax)
	subq	%rdx, %r8
	.loc 1 1452 0
	movq	%r9, 64(%rax)
	movl	$9, %esi
	.loc 1 609 0
	addq	%r9, %rcx
	movq	%r8, 56(%rax)
	.loc 1 1452 0
	movq	%r9, %r8
	.loc 1 609 0
	movq	%rcx, 48(%rax)
	leaq	(%r9,%rdi), %rax
	movl	$10, %r9d
	cmpq	-144(%rbp), %r9
	leaq	72(%rbx), %rcx
	jge	.L711
	testq	%r13, %r13
	je	.L1109
	movq	-120(%rbp), %r9
	movq	-128(%rbp), %r8
	leaq	(%rax,%r14), %rsi
	.loc 1 1452 0
	movq	%r10, 8(%rcx)
	movq	%r11, 16(%rcx)
	.loc 1 609 0
	leaq	(%rax,%r12), %r13
	.loc 1 1452 0
	movq	%rax, 64(%rcx)
	addq	%rdi, %r10
	addq	%rdi, %r11
	.loc 1 609 0
	addq	%rax, %r9
	addq	%rax, %r8
	movq	%rsi, 40(%rcx)
	movq	%r9, 24(%rcx)
	movq	%rax, %r9
	movq	%r8, 48(%rcx)
	subq	%rdx, %r9
	.loc 1 1452 0
	movq	%rax, %r8
	addq	%rdi, %rax
	.loc 1 609 0
	movq	%r9, 56(%rcx)
	movl	$18, %r9d
	cmpq	-144(%rbp), %r9
	movq	%r13, 32(%rcx)
	prefetcht0	240(%rbx)
	.loc 1 1452 0
	movl	$17, %esi
	leaq	136(%rbx), %rcx
	jge	.L711
.L1109:
	movq	-128(%rbp), %r13
.L712:
	.loc 1 609 0
	movq	-120(%rbp), %r8
	leaq	(%rax,%r12), %r9
	.loc 1 1452 0
	movq	%rax, 64(%rcx)
	movq	%r10, 8(%rcx)
	movq	%r11, 16(%rcx)
	addq	%rdi, %r10
	.loc 1 609 0
	movq	%r9, 32(%rcx)
	leaq	(%rax,%r13), %r9
	addq	%rdi, %r11
	addq	%rax, %r8
	.loc 1 1452 0
	addq	$16, %rsi
	movq	%r10, 72(%rcx)
	.loc 1 609 0
	movq	%r8, 24(%rcx)
	leaq	(%rax,%r14), %r8
	movq	%r9, 48(%rcx)
	.loc 1 1452 0
	movq	%r11, 80(%rcx)
	prefetcht0	168(%rcx)
	prefetcht0	232(%rcx)
	.loc 1 609 0
	movq	%r8, 40(%rcx)
	movq	%rax, %r8
	addq	%rdi, %r10
	subq	%rdx, %r8
	addq	%rdi, %r11
	movq	%r8, 56(%rcx)
	leaq	(%rax,%rdi), %r8
	movq	-120(%rbp), %rax
	leaq	(%r8,%r12), %r9
	.loc 1 1452 0
	movq	%r8, 128(%rcx)
	.loc 1 609 0
	addq	%r8, %rax
	movq	%rax, 88(%rcx)
	leaq	(%r8,%r14), %rax
	movq	%r9, 96(%rcx)
	leaq	(%r8,%r13), %r9
	movq	%rax, 104(%rcx)
	movq	%r8, %rax
	subq	%rdx, %rax
	movq	%r9, 112(%rcx)
	leaq	1(%rsi), %r9
	movq	%rax, 120(%rcx)
	subq	$-128, %rcx
	cmpq	-144(%rbp), %r9
	leaq	(%r8,%rdi), %rax
	jl	.L712
.L711:
	movq	-168(%rbp), %rdi
	addq	%rdx, %r8
	subq	%r9, %rdi
	addq	$1, %rdi
	andl	$7, %edi
	je	.L1107
	.loc 1 1452 0
	movq	-160(%rbp), %r10
	movq	%r8, (%r10,%rsi,8)
	addq	%rdx, %r8
	cmpq	%r9, -168(%rbp)
	movq	%r9, %rsi
.LVL193:
	jl	.L714
	addq	$1, %r9
	cmpq	$1, %rdi
	je	.L1107
	cmpq	$2, %rdi
	je	.L1002
	cmpq	$3, %rdi
	je	.L1003
	cmpq	$4, %rdi
	je	.L1004
	cmpq	$5, %rdi
	je	.L1005
	cmpq	$6, %rdi
	je	.L1006
	movq	%r8, (%r10,%rsi,8)
	movq	%r9, %rsi
.LVL194:
	addq	%rdx, %r8
	addq	$1, %r9
.L1006:
	movq	-160(%rbp), %r11
	movq	%r8, (%r11,%rsi,8)
	movq	%r9, %rsi
.LVL195:
	addq	%rdx, %r8
	addq	$1, %r9
.L1005:
	movq	-160(%rbp), %r12
	movq	%r8, (%r12,%rsi,8)
	movq	%r9, %rsi
.LVL196:
	addq	%rdx, %r8
	addq	$1, %r9
.L1004:
	movq	-160(%rbp), %r14
	movq	%r8, (%r14,%rsi,8)
	movq	%r9, %rsi
.LVL197:
	addq	%rdx, %r8
	addq	$1, %r9
.L1003:
	movq	-160(%rbp), %rcx
	movq	%r8, (%rcx,%rsi,8)
	movq	%r9, %rsi
.LVL198:
	addq	%rdx, %r8
	addq	$1, %r9
.L1002:
	movq	-160(%rbp), %r13
	movq	%r8, 0(%r13,%rsi,8)
	movq	%r13, %rax
	movq	%r9, %rsi
.LVL199:
	addq	%rdx, %r8
	addq	$1, %r9
	jmp	.L713
.LVL200:
.L1129:
	movq	%r8, (%rax,%r9,8)
	addq	%rdx, %r8
	leaq	7(%r9), %rsi
	movq	%r8, 8(%rax,%r9,8)
	addq	%rdx, %r8
	movq	%r8, 16(%rax,%r9,8)
	addq	%rdx, %r8
	movq	%r8, 24(%rax,%r9,8)
	addq	%rdx, %r8
	movq	%r8, 32(%rax,%r9,8)
	addq	%rdx, %r8
	movq	%r8, 40(%rax,%r9,8)
	addq	%rdx, %r8
	movq	%r8, 48(%rax,%r9,8)
	addq	%rdx, %r8
	addq	$8, %r9
.LVL201:
.L713:
	movq	%r8, (%rax,%rsi,8)
.LVL202:
	addq	%rdx, %r8
	cmpq	%r9, -168(%rbp)
	jge	.L1129
.LVL203:
.L714:
.LBE236:
.LBE245:
.LBE254:
	.loc 1 691 0
	movq	8(%rbx), %r8
	.loc 1 702 0
	movq	16(%rbx), %rax
	.loc 1 697 0
	movabsq	$4576918229304087675, %r12
	.loc 1 691 0
	movabsq	$4576918229304087675, %rsi
	.loc 1 692 0
	movabsq	$4576918229304087675, %rdx
	.loc 1 693 0
	movabsq	$4576918229304087675, %r9
	.loc 1 694 0
	movabsq	$4576918229304087675, %rdi
	.loc 1 695 0
	movabsq	$4576918229304087675, %r10
	.loc 1 696 0
	movabsq	$4576918229304087675, %r11
	.loc 1 697 0
	movq	%r12, 48(%r8)
	.loc 1 698 0
	movabsq	$4576918229304087675, %r14
	.loc 1 699 0
	movabsq	$4576918229304087675, %rcx
	.loc 1 700 0
	movabsq	$4576918229304087675, %r13
	.loc 1 709 0
	movabsq	$4571830098473881507, %r12
	.loc 1 691 0
	movq	%rsi, (%r8)
	.loc 1 692 0
	movq	%rdx, 8(%r8)
	.loc 1 693 0
	movq	%r9, 16(%r8)
	.loc 1 703 0
	movabsq	$4575873105960161568, %rsi
	.loc 1 694 0
	movq	%rdi, 24(%r8)
	.loc 1 695 0
	movq	%r10, 32(%r8)
	.loc 1 704 0
	movabsq	$4575190864659810466, %rdx
	.loc 1 696 0
	movq	%r11, 40(%r8)
	.loc 1 698 0
	movq	%r14, 56(%r8)
	.loc 1 705 0
	movabsq	$4574378054999062639, %r9
	.loc 1 699 0
	movq	%rcx, 64(%r8)
	.loc 1 700 0
	movq	%r13, 72(%r8)
	.loc 1 706 0
	movabsq	$4573642491079123471, %rdi
	.loc 1 709 0
	movq	%r12, 56(%rax)
	.loc 1 729 0
	movl	nSwaptions(%rip), %r12d
	.loc 1 702 0
	movabsq	$4576369438667894816, %r8
	.loc 1 707 0
	movabsq	$4572977255370965320, %r10
	.loc 1 708 0
	movabsq	$4572375430345560546, %r11
	.loc 1 710 0
	movabsq	$4571337800991414384, %r14
	.loc 1 711 0
	movabsq	$4570629618957209628, %rcx
	.loc 1 702 0
	movq	%r8, (%rax)
	.loc 1 703 0
	movq	%rsi, 8(%rax)
	.loc 1 704 0
	movq	%rdx, 16(%rax)
	.loc 1 705 0
	movq	%r9, 24(%rax)
	.loc 1 715 0
	movabsq	$4557750909289998844, %r8
	.loc 1 706 0
	movq	%rdi, 32(%rax)
	.loc 1 707 0
	movq	%r10, 40(%rax)
	.loc 1 720 0
	movabsq	$-4663315284555563270, %rdi
	.loc 1 708 0
	movq	%r11, 48(%rax)
	.loc 1 710 0
	movq	%r14, 64(%rax)
	.loc 1 729 0
	movslq	%r12d, %r14
	.loc 1 711 0
	movq	%rcx, 72(%rax)
	.loc 1 713 0
	movq	24(%rbx), %rax
	.loc 1 729 0
	leaq	(%r14,%r14,2), %rcx
	.loc 1 713 0
	movabsq	$4562254508917369340, %rbx
	.loc 1 716 0
	movabsq	$4553247309662628348, %rsi
	.loc 1 718 0
	movabsq	$-4670124727192147460, %rdx
	.loc 1 719 0
	movabsq	$-4665621127564776964, %r9
	.loc 1 721 0
	movabsq	$-4661117527937406468, %r10
	.loc 1 722 0
	movabsq	$-4659964606432799621, %r11
	.loc 1 720 0
	movq	%rdi, 56(%rax)
	.loc 1 729 0
	leaq	(%r14,%rcx,4), %rdi
	.loc 1 714 0
	movabsq	$4560056752299212538, %r13
	.loc 1 713 0
	movq	%rbx, (%rax)
	.loc 1 714 0
	movq	%r13, 8(%rax)
	.loc 1 729 0
	salq	$3, %rdi
	.loc 1 715 0
	movq	%r8, 16(%rax)
	.loc 1 716 0
	movq	%rsi, 24(%rax)
	.loc 1 717 0
	movq	$0, 32(%rax)
	.loc 1 718 0
	movq	%rdx, 40(%rax)
	.loc 1 719 0
	movq	%r9, 48(%rax)
	.loc 1 721 0
	movq	%r10, 64(%rax)
	.loc 1 722 0
	movq	%r11, 72(%rax)
	.loc 1 729 0
	movl	%r12d, -228(%rbp)
	call	malloc
.LVL204:
	.loc 1 733 0
	movl	-228(%rbp), %ebx
	.loc 1 729 0
	movq	%rax, swaptions(%rip)
.LVL205:
	.loc 1 733 0
	testl	%ebx, %ebx
	jle	.L710
	leaq	0(,%r15,8), %r9
	movl	-132(%rbp), %r13d
	movq	%rax, %r14
	.loc 1 609 0
	movl	-132(%rbp), %eax
	salq	$4, %r15
.LVL206:
	movq	seed(%rip), %rsi
	movq	%r9, %rdi
	movq	%r15, -264(%rbp)
	leaq	(%r15,%r9,2), %r15
	negq	%rdi
	subl	$1, %r13d
	movq	%r9, -152(%rbp)
	leaq	0(,%rdi,4), %r10
	movslq	%r13d, %r8
	subl	$10, %eax
	leaq	16(,%r8,8), %rdx
	andl	$-8, %eax
	addq	%rdi, %rdi
	movq	%r10, -192(%rbp)
	movq	-192(%rbp), %r11
	addl	$9, %eax
	subq	%r9, %r10
	addq	%r9, %r15
	movq	%rsi, -176(%rbp)
	movq	%rdx, -256(%rbp)
	movl	%eax, -184(%rbp)
	addq	%r9, %r11
	movq	%r10, -208(%rbp)
	movq	%rdi, -224(%rbp)
	movq	%r11, -216(%rbp)
.LBE341:
	.loc 1 733 0
	movl	$0, -180(%rbp)
.LBB342:
	.loc 1 609 0
	movq	%r15, -272(%rbp)
.LVL207:
	.p2align 4,,10
	.p2align 3
.L751:
.LBB255:
.LBB256:
	.loc 1 1493 0
	movq	-176(%rbp), %rax
	movabsq	$4730756183288445817, %rsi
	movq	-176(%rbp), %r9
.LBE256:
.LBE255:
	.loc 1 734 0
	movl	-180(%rbp), %ecx
	.loc 1 735 0
	movl	-132(%rbp), %ebx
	leaq	104(%r14), %r12
	.loc 1 736 0
	movl	-136(%rbp), %r8d
	.loc 1 740 0
	movq	$0, 32(%r14)
	prefetcht0	176(%r14)
.LBB263:
.LBB257:
	.loc 1 1493 0
	imulq	%rsi
	sarq	$63, %r9
	movq	%r12, -200(%rbp)
.LBE257:
.LBE263:
	.loc 1 734 0
	movl	%ecx, (%r14)
	.loc 1 735 0
	movl	%ebx, 64(%r14)
	prefetcht0	(%r12)
	.loc 1 736 0
	movl	%r8d, 80(%r14)
.LVL208:
.LBB264:
.LBB258:
	.loc 1 1493 0
	sarq	$15, %rdx
	subq	%r9, %rdx
.LVL209:
	.loc 1 1494 0
	imulq	$-127773, %rdx, %rdi
	addq	-176(%rbp), %rdi
	imulq	$-2836, %rdx, %r11
	imulq	$16807, %rdi, %r10
	addq	%r11, %r10
.LVL210:
.LBE258:
.LBE264:
	.loc 1 742 0
	movabsq	$4611686018427387904, %r11
.LBB265:
.LBB259:
	.loc 1 1495 0
	leaq	2147483647(%r10), %r15
	testq	%r10, %r10
.LBE259:
.LBE265:
	.loc 1 742 0
	movq	%r11, 48(%r14)
.LBB266:
.LBB260:
	.loc 1 1495 0
	cmovns	%r10, %r15
.LVL211:
.LBE260:
.LBE266:
	.loc 1 741 0
	movabsq	$4607182418800017408, %r10
.LVL212:
.LBB267:
.LBB268:
	.loc 1 1493 0
	movq	%r15, %rax
	movq	%r15, %rcx
.LBE268:
.LBE267:
	.loc 1 741 0
	movq	%r10, 40(%r14)
.LBB275:
.LBB269:
	.loc 1 1493 0
	imulq	%rsi
.LVL213:
	sarq	$63, %rcx
.LBE269:
.LBE275:
.LBB276:
.LBB261:
	.loc 1 1497 0
	cvtsi2sdq	%r15, %xmm1
.LBE261:
.LBE276:
.LBB277:
.LBB270:
	.loc 1 1493 0
	sarq	$15, %rdx
	subq	%rcx, %rdx
	.loc 1 1494 0
	imulq	$-127773, %rdx, %rbx
	imulq	$-2836, %rdx, %rsi
.LVL214:
	addq	%r15, %rbx
.LBE270:
.LBE277:
	.loc 1 743 0
	movabsq	$4607182418800017408, %r15
.LBB278:
.LBB271:
	.loc 1 1494 0
	imulq	$16807, %rbx, %r8
.LBE271:
.LBE278:
	.loc 1 743 0
	movq	%r15, 56(%r14)
.LBB279:
.LBB262:
	.loc 1 1497 0
	mulsd	.LC68(%rip), %xmm1
.LBE262:
.LBE279:
.LBB280:
.LBB272:
	.loc 1 1494 0
	addq	%rsi, %r8
	.loc 1 1495 0
	leaq	2147483647(%r8), %r9
.LVL215:
	testq	%r8, %r8
	cmovs	%r9, %r8
.LBE272:
.LBE280:
	.loc 1 737 0
	mulsd	.LC93(%rip), %xmm1
.LBB281:
.LBB273:
	.loc 1 1497 0
	cvtsi2sdq	%r8, %xmm3
	.loc 1 1495 0
	movq	%r8, -176(%rbp)
	.loc 1 1496 0
	movq	%r8, seed(%rip)
.LBE273:
.LBE281:
	.loc 1 737 0
	cvttsd2si	%xmm1, %r12d
.LBB282:
.LBB274:
	.loc 1 1497 0
	mulsd	.LC68(%rip), %xmm3
.LBE274:
.LBE282:
	.loc 1 737 0
	cvtsi2sd	%r12d, %xmm2
	.loc 1 739 0
	mulsd	.LC96(%rip), %xmm3
	cvttsd2si	%xmm3, %edi
.LVL216:
	.loc 1 737 0
	mulsd	.LC94(%rip), %xmm2
	addsd	.LC95(%rip), %xmm2
	.loc 1 739 0
	cvtsi2sd	%edi, %xmm4
.LBB283:
.LBB284:
.LBB285:
	.loc 1 1417 0
	movq	-256(%rbp), %rdi
.LBE285:
.LBE284:
.LBE283:
	.loc 1 737 0
	movsd	%xmm2, 72(%r14)
.LVL217:
	.loc 1 739 0
	mulsd	.LC97(%rip), %xmm4
	addsd	.LC97(%rip), %xmm4
	movsd	%xmm4, 24(%r14)
.LBB292:
.LBB289:
.LBB286:
	.loc 1 1417 0
	call	malloc
.LVL218:
	.loc 1 1418 0
	testq	%rax, %rax
	je	.L1130
.LBE286:
.LBE289:
.LBE292:
	.loc 1 747 0
	cmpl	$1, -132(%rbp)
.LBB293:
.LBB290:
.LBB287:
	.loc 1 745 0
	leaq	8(%rax), %r9
.LBE287:
.LBE290:
.LBE293:
	.loc 1 746 0
	movabsq	$4591870180066957722, %r12
	movq	%r12, 8(%rax)
.LVL219:
	.loc 1 745 0
	movq	%r9, 88(%r14)
	.loc 1 747 0
	jle	.L725
	cmpl	$9, -132(%rbp)
.LBB294:
.LBB295:
.LBB296:
	.loc 1 748 0
	movsd	.LC97(%rip), %xmm5
	jle	.L759
	movsd	.LC100(%rip), %xmm6
	movl	-184(%rbp), %ebx
.LBE296:
.LBE295:
.LBE294:
	.loc 1 747 0
	movl	$9, %ecx
.LBB315:
.LBB306:
.LBB297:
	.loc 1 609 0
	leaq	176(%rax), %rdx
	leaq	240(%rax), %r8
.LBE297:
.LBE306:
.LBE315:
	.loc 1 748 0
	addsd	%xmm6, %xmm5
	subl	$9, %ebx
	prefetcht0	(%rdx)
	shrl	$3, %ebx
	andl	$1, %ebx
	cmpl	-184(%rbp), %ecx
	movsd	%xmm5, 16(%rax)
.LVL220:
	addsd	%xmm6, %xmm5
	movsd	%xmm5, 24(%rax)
	addsd	%xmm6, %xmm5
	movsd	%xmm5, 32(%rax)
	addsd	%xmm6, %xmm5
	movsd	%xmm5, 40(%rax)
	addsd	%xmm6, %xmm5
	movsd	%xmm5, 48(%rax)
	addsd	%xmm6, %xmm5
	movsd	%xmm5, 56(%rax)
	addsd	%xmm6, %xmm5
	movsd	%xmm5, 64(%rax)
	addsd	%xmm6, %xmm5
	movsd	%xmm5, 72(%rax)
	je	.L722
	testl	%ebx, %ebx
	je	.L1106
	addsd	%xmm6, %xmm5
	.loc 1 747 0
	movl	$17, %ecx
	cmpl	-184(%rbp), %ecx
	prefetcht0	(%r8)
	.loc 1 748 0
	movsd	%xmm5, -160(%r8)
	addsd	%xmm6, %xmm5
	movsd	%xmm5, -152(%r8)
	addsd	%xmm6, %xmm5
	movsd	%xmm5, -144(%r8)
	addsd	%xmm6, %xmm5
	movsd	%xmm5, -136(%r8)
	addsd	%xmm6, %xmm5
	movsd	%xmm5, -128(%r8)
	addsd	%xmm6, %xmm5
	movsd	%xmm5, -120(%r8)
	addsd	%xmm6, %xmm5
	movsd	%xmm5, -112(%r8)
	addsd	%xmm6, %xmm5
	movsd	%xmm5, -104(%r8)
	leaq	304(%rax), %r8
	je	.L722
.L1106:
	movl	-184(%rbp), %esi
.LVL221:
.L723:
	.loc 1 748 0 is_stmt 0 discriminator 2
	addsd	%xmm6, %xmm5
	leaq	64(%r8), %rax
	.loc 1 747 0 is_stmt 1 discriminator 2
	addl	$16, %ecx
	prefetcht0	(%r8)
	prefetcht0	(%rax)
	.loc 1 748 0 discriminator 2
	movsd	%xmm5, -160(%r8)
	addsd	%xmm6, %xmm5
	movsd	%xmm5, -152(%r8)
	addsd	%xmm6, %xmm5
	movsd	%xmm5, -144(%r8)
	addsd	%xmm6, %xmm5
	movsd	%xmm5, -136(%r8)
	addsd	%xmm6, %xmm5
	movsd	%xmm5, -128(%r8)
	addsd	%xmm6, %xmm5
	movsd	%xmm5, -120(%r8)
	addsd	%xmm6, %xmm5
	movsd	%xmm5, -112(%r8)
	addsd	%xmm6, %xmm5
	movsd	%xmm5, -104(%r8)
	addsd	%xmm6, %xmm5
	movsd	%xmm5, -96(%r8)
	addsd	%xmm6, %xmm5
	movsd	%xmm5, -88(%r8)
	addsd	%xmm6, %xmm5
	movsd	%xmm5, -80(%r8)
	addsd	%xmm6, %xmm5
	movsd	%xmm5, -72(%r8)
	addsd	%xmm6, %xmm5
	movsd	%xmm5, -64(%r8)
	addsd	%xmm6, %xmm5
	movsd	%xmm5, -56(%r8)
	addsd	%xmm6, %xmm5
	movsd	%xmm5, -48(%r8)
	addsd	%xmm6, %xmm5
	movsd	%xmm5, -40(%r8)
	subq	$-128, %r8
	cmpl	%esi, %ecx
	jne	.L723
.LVL222:
.L722:
	movl	%ecx, %r11d
	.loc 1 748 0 is_stmt 0
	addsd	%xmm6, %xmm5
	.loc 1 747 0 is_stmt 1
	leal	1(%rcx), %r15d
	notl	%r11d
	addl	-132(%rbp), %r11d
	.loc 1 609 0
	movslq	%ecx, %rdi
	leaq	(%r9,%rdi,8), %r10
	.loc 1 748 0
	movsd	%xmm5, (%r10)
	leaq	8(%r10), %r12
	andl	$7, %r11d
	.loc 1 747 0
	cmpl	%r15d, -132(%rbp)
	jle	.L725
	testl	%r11d, %r11d
	je	.L724
	cmpl	$1, %r11d
	je	.L996
	cmpl	$2, %r11d
	je	.L997
	cmpl	$3, %r11d
	je	.L998
	cmpl	$4, %r11d
	je	.L999
	cmpl	$5, %r11d
	je	.L1000
	cmpl	$6, %r11d
	je	.L1001
	.loc 1 748 0
	addsd	%xmm6, %xmm5
	.loc 1 747 0
	leal	2(%rcx), %r15d
	leaq	16(%r10), %r12
	.loc 1 748 0
	movsd	%xmm5, 8(%r10)
.L1001:
	addsd	%xmm6, %xmm5
	.loc 1 747 0
	addl	$1, %r15d
	.loc 1 748 0
	movsd	%xmm5, (%r12)
	addq	$8, %r12
.L1000:
	addsd	%xmm6, %xmm5
	.loc 1 747 0
	addl	$1, %r15d
	.loc 1 748 0
	movsd	%xmm5, (%r12)
	addq	$8, %r12
.L999:
	addsd	%xmm6, %xmm5
	.loc 1 747 0
	addl	$1, %r15d
	.loc 1 748 0
	movsd	%xmm5, (%r12)
	addq	$8, %r12
.L998:
	addsd	%xmm6, %xmm5
	.loc 1 747 0
	addl	$1, %r15d
	.loc 1 748 0
	movsd	%xmm5, (%r12)
	addq	$8, %r12
.L997:
	addsd	%xmm6, %xmm5
	.loc 1 747 0
	addl	$1, %r15d
	.loc 1 748 0
	movsd	%xmm5, (%r12)
	addq	$8, %r12
.L996:
	addsd	%xmm6, %xmm5
	.loc 1 747 0
	addl	$1, %r15d
	.loc 1 748 0
	movsd	%xmm5, (%r12)
	addq	$8, %r12
	.loc 1 747 0
	cmpl	%r15d, -132(%rbp)
	jle	.L725
.L724:
	.loc 1 748 0
	addsd	%xmm6, %xmm5
	.loc 1 747 0
	addl	$8, %r15d
	.loc 1 748 0
	movsd	%xmm5, (%r12)
	addsd	%xmm6, %xmm5
	movsd	%xmm5, 8(%r12)
	addsd	%xmm6, %xmm5
	movsd	%xmm5, 16(%r12)
	addsd	%xmm6, %xmm5
	movsd	%xmm5, 24(%r12)
	addsd	%xmm6, %xmm5
	movsd	%xmm5, 32(%r12)
	addsd	%xmm6, %xmm5
	movsd	%xmm5, 40(%r12)
	addsd	%xmm6, %xmm5
	movsd	%xmm5, 48(%r12)
	addsd	%xmm6, %xmm5
	movsd	%xmm5, 56(%r12)
	addq	$64, %r12
	.loc 1 747 0
	cmpl	%r15d, -132(%rbp)
	jg	.L724
.L725:
.LVL223:
.LBB316:
.LBB307:
.LBB298:
	.loc 1 1441 0
	movq	-240(%rbp), %rdi
	call	malloc
.LVL224:
	.loc 1 1442 0
	testq	%rax, %rax
	.loc 1 1441 0
	movq	%rax, %rbx
.LVL225:
	.loc 1 1442 0
	je	.L720
.LVL226:
	.loc 1 1447 0
	movq	-248(%rbp), %rdi
	.loc 1 1444 0
	leaq	8(%rax), %rdx
.LVL227:
	movq	%rdx, -144(%rbp)
	.loc 1 1447 0
	call	malloc
.LVL228:
	.loc 1 1448 0
	testq	%rax, %rax
	.loc 1 1447 0
	movq	%rax, 8(%rbx)
	.loc 1 1448 0
	je	.L726
	.loc 1 1452 0
	cmpq	$0, -168(%rbp)
	.loc 1 1449 0
	leaq	8(%rax), %r9
	movq	%r9, 8(%rbx)
.LVL229:
	.loc 1 1452 0
	jle	.L733
.LBE298:
.LBE307:
.LBE316:
	.loc 1 609 0
	movq	-168(%rbp), %r12
	subq	$6, %r12
	cmpl	$9, -136(%rbp)
	jle	.L761
	movq	-152(%rbp), %rsi
	movq	-272(%rbp), %rcx
	prefetcht0	176(%rbx)
	movq	-264(%rbp), %rax
.LBB317:
.LBB308:
.LBB299:
	.loc 1 1452 0
	movq	-144(%rbp), %r15
	movq	-168(%rbp), %r11
	.loc 1 609 0
	movq	-192(%rbp), %rdx
.LBE299:
.LBE308:
.LBE317:
	leaq	(%rcx,%rsi,2), %r8
	movq	%rsi, %r10
.LBB318:
.LBB309:
.LBB300:
	movq	-224(%rbp), %rcx
.LBE300:
.LBE309:
.LBE318:
	addq	%r9, %r10
	addq	%r9, %rax
	addq	%rsi, %r8
.LBB319:
.LBB310:
.LBB301:
	movq	-216(%rbp), %rsi
	subq	$9, %r11
.LBE301:
.LBE310:
.LBE319:
	leaq	(%r9,%r8), %rdi
.LBB320:
.LBB311:
.LBB302:
	movq	-208(%rbp), %r9
	shrq	$3, %r11
	andl	$1, %r11d
	.loc 1 1452 0
	movq	%r10, 8(%r15)
.LVL230:
	movq	%rax, 16(%r15)
	.loc 1 609 0
	addq	%rdi, %rdx
	addq	%rdi, %rsi
	addq	%rdi, %rcx
	addq	%rdi, %r9
	addq	%r8, %r10
	addq	%r8, %rax
	movq	%r9, 24(%r15)
	movq	%rdi, %r9
	subq	-152(%rbp), %r9
	cmpq	$10, %r12
	movq	%rdx, 32(%r15)
	movq	%rsi, 40(%r15)
	movq	%rcx, 48(%r15)
	.loc 1 1452 0
	movq	%rdi, 64(%r15)
	leaq	72(%rbx), %rcx
	.loc 1 609 0
	movl	$10, %edx
	movq	%r9, 56(%r15)
	.loc 1 1452 0
	movq	%rdi, %r9
	movl	$9, %edi
	leaq	(%r9,%r8), %rsi
	jle	.L730
	testq	%r11, %r11
	je	.L1102
	.loc 1 609 0
	movq	%rsi, %r9
	subq	-152(%rbp), %r9
	movq	-208(%rbp), %rdi
	movq	-192(%rbp), %r11
	movq	-216(%rbp), %r15
	prefetcht0	240(%rbx)
	movq	-224(%rbp), %rdx
	.loc 1 1452 0
	movq	%r10, 8(%rcx)
	addq	%r8, %r10
	.loc 1 609 0
	addq	%rsi, %rdi
	.loc 1 1452 0
	movq	%rax, 16(%rcx)
	movq	%rsi, 64(%rcx)
	.loc 1 609 0
	addq	%rsi, %r11
	addq	%rsi, %r15
	movq	%r9, 56(%rcx)
	addq	%rsi, %rdx
	.loc 1 1452 0
	movq	%rsi, %r9
	addq	%r8, %rax
	addq	%r8, %rsi
	cmpq	$18, %r12
	.loc 1 609 0
	movq	%rdi, 24(%rcx)
	movq	%rdx, 48(%rcx)
	movq	%r11, 32(%rcx)
	.loc 1 1452 0
	movl	$17, %edi
	.loc 1 609 0
	movq	%r15, 40(%rcx)
	movl	$18, %edx
	leaq	136(%rbx), %rcx
	jle	.L730
.L1102:
	movl	%r13d, -120(%rbp)
	movq	-208(%rbp), %r15
	movq	-192(%rbp), %r13
	movq	-216(%rbp), %r11
	movq	-224(%rbp), %rbx
.L731:
	leaq	(%rsi,%r15), %r9
	leaq	(%rsi,%r13), %rdx
	.loc 1 1452 0
	movq	%rsi, 64(%rcx)
	addq	$16, %rdi
	movq	%r10, 8(%rcx)
	movq	%rax, 16(%rcx)
	.loc 1 609 0
	movq	%r9, 24(%rcx)
	leaq	(%rsi,%r11), %r9
	movq	%rdx, 32(%rcx)
	leaq	(%rsi,%rbx), %rdx
	addq	%r8, %r10
	addq	%r8, %rax
	movq	%r9, 40(%rcx)
	movq	%rsi, %r9
	subq	-152(%rbp), %r9
	movq	%rdx, 48(%rcx)
	.loc 1 1452 0
	movq	%r10, 72(%rcx)
	prefetcht0	168(%rcx)
	movq	%rax, 80(%rcx)
	prefetcht0	232(%rcx)
	addq	%r8, %r10
	addq	%r8, %rax
	.loc 1 609 0
	movq	%r9, 56(%rcx)
	leaq	(%rsi,%r8), %r9
	leaq	(%r9,%r15), %rsi
	leaq	(%r9,%r13), %rdx
	.loc 1 1452 0
	movq	%r9, 128(%rcx)
	.loc 1 609 0
	movq	%rsi, 88(%rcx)
	leaq	(%r9,%r11), %rsi
	movq	%rdx, 96(%rcx)
	leaq	(%r9,%rbx), %rdx
	movq	%rsi, 104(%rcx)
	movq	%r9, %rsi
	subq	-152(%rbp), %rsi
	movq	%rdx, 112(%rcx)
	leaq	1(%rdi), %rdx
	movq	%rsi, 120(%rcx)
	subq	$-128, %rcx
	cmpq	%rdx, %r12
	leaq	(%r9,%r8), %rsi
	jg	.L731
	movl	-120(%rbp), %r13d
.L730:
	movq	-168(%rbp), %r12
	addq	-152(%rbp), %r9
	subq	%rdx, %r12
	addq	$1, %r12
	andl	$7, %r12d
	je	.L1100
	.loc 1 1452 0
	movq	-144(%rbp), %r8
	movq	%r9, (%r8,%rdi,8)
	addq	-152(%rbp), %r9
	movq	%rdx, %rdi
.LVL231:
	cmpq	%rdx, -168(%rbp)
	jl	.L733
	addq	$1, %rdx
.LVL232:
	cmpq	$1, %r12
	je	.L1100
	cmpq	$2, %r12
	je	.L991
	cmpq	$3, %r12
	je	.L992
	cmpq	$4, %r12
	je	.L993
	cmpq	$5, %r12
	je	.L994
	cmpq	$6, %r12
	je	.L995
	movq	%r9, (%r8,%rdi,8)
	addq	-152(%rbp), %r9
	movq	%rdx, %rdi
.LVL233:
	addq	$1, %rdx
.LVL234:
.L995:
	movq	-144(%rbp), %rax
	movq	%r9, (%rax,%rdi,8)
	addq	-152(%rbp), %r9
	movq	%rdx, %rdi
.LVL235:
	addq	$1, %rdx
.LVL236:
.L994:
	movq	-144(%rbp), %rcx
	movq	%r9, (%rcx,%rdi,8)
	addq	-152(%rbp), %r9
	movq	%rdx, %rdi
.LVL237:
	addq	$1, %rdx
.LVL238:
.L993:
	movq	-144(%rbp), %r15
	movq	%r9, (%r15,%rdi,8)
	addq	-152(%rbp), %r9
	movq	%rdx, %rdi
.LVL239:
	addq	$1, %rdx
.LVL240:
.L992:
	movq	-144(%rbp), %r11
	movq	%r9, (%r11,%rdi,8)
	addq	-152(%rbp), %r9
	movq	%rdx, %rdi
.LVL241:
	addq	$1, %rdx
.LVL242:
.L991:
	movq	-144(%rbp), %rbx
	movq	-152(%rbp), %r12
	movq	%r9, (%rbx,%rdi,8)
	movq	%rbx, %rsi
	movq	%rdx, %rdi
.LVL243:
	addq	-152(%rbp), %r9
	addq	$1, %rdx
.LVL244:
	jmp	.L732
.LVL245:
	.p2align 4,,10
	.p2align 3
.L1131:
	movq	%r9, (%rsi,%rdx,8)
	addq	%r12, %r9
	leaq	7(%rdx), %rdi
	movq	%r9, 8(%rsi,%rdx,8)
	addq	%r12, %r9
	movq	%r9, 16(%rsi,%rdx,8)
	addq	%r12, %r9
	movq	%r9, 24(%rsi,%rdx,8)
	addq	%r12, %r9
	movq	%r9, 32(%rsi,%rdx,8)
	addq	%r12, %r9
	movq	%r9, 40(%rsi,%rdx,8)
	addq	%r12, %r9
	movq	%r9, 48(%rsi,%rdx,8)
	addq	%r12, %r9
	addq	$8, %rdx
.LVL246:
.L732:
	movq	%r9, (%rsi,%rdi,8)
.LVL247:
	addq	%r12, %r9
	cmpq	%rdx, -168(%rbp)
	jge	.L1131
.LVL248:
.L733:
.LBE302:
.LBE311:
.LBE320:
	.loc 1 750 0
	movq	-144(%rbp), %rdi
	.loc 1 751 0
	movl	-136(%rbp), %r9d
	xorl	%r15d, %r15d
	.loc 1 750 0
	movq	%rdi, 96(%r14)
.LVL249:
.LBB321:
.LBB312:
.LBB303:
	.loc 1 609 0
	movl	-132(%rbp), %r14d
	subl	$8, %r14d
.LBE303:
.LBE312:
.LBE321:
	.loc 1 751 0
	testl	%r9d, %r9d
	jle	.L729
.LVL250:
	.p2align 4,,10
	.p2align 3
.L1062:
	.loc 1 752 0 discriminator 1
	testl	%r13d, %r13d
	jle	.L742
	movq	-160(%rbp), %r8
	movq	-144(%rbp), %rdx
	movq	(%r8,%r15,8), %r8
	movq	(%rdx,%r15,8), %r10
	.loc 1 609 0
	movq	%r8, %r9
	salq	$60, %r9
	shrq	$63, %r9
	cmpl	%r9d, %r13d
	cmovb	%r13d, %r9d
	cmpl	$4, %r13d
	cmovbe	%r13d, %r9d
	testl	%r9d, %r9d
	je	.L762
	cmpl	$8, %r9d
	jbe	.L763
	.loc 1 753 0
	movsd	(%r8), %xmm7
	.loc 1 609 0
	leal	-9(%r9), %r11d
	leaq	184(%r8), %rbx
	leaq	184(%r10), %rax
	movl	$64, %esi
	.loc 1 753 0
	movsd	%xmm7, (%r10)
.LVL251:
	.loc 1 609 0
	shrl	$3, %r11d
	.loc 1 752 0
	movl	$8, %edi
	.loc 1 609 0
	addq	$1, %r11
	prefetcht0	(%rbx)
	prefetcht0	(%rax)
	.loc 1 753 0
	movsd	8(%r8), %xmm8
	.loc 1 609 0
	salq	$6, %r11
	movl	$8, %ebx
	leaq	-64(%r11), %rcx
	leaq	248(%r8), %r12
	leaq	248(%r10), %rdx
	.loc 1 753 0
	movsd	%xmm8, 8(%r10)
	shrq	$6, %rcx
	movsd	16(%r8), %xmm9
	andl	$1, %ecx
	cmpq	%r11, %rsi
	movsd	%xmm9, 16(%r10)
	movsd	24(%r8), %xmm10
	movsd	%xmm10, 24(%r10)
	movsd	32(%r8), %xmm11
	movsd	%xmm11, 32(%r10)
	movsd	40(%r8), %xmm12
	movsd	%xmm12, 40(%r10)
	movsd	48(%r8), %xmm13
	movsd	%xmm13, 48(%r10)
	movsd	56(%r8), %xmm14
	movsd	%xmm14, 56(%r10)
	je	.L745
	testq	%rcx, %rcx
	je	.L746
	movsd	-184(%r12), %xmm15
	movl	$128, %esi
	prefetcht0	(%r12)
	cmpq	%r11, %rsi
	prefetcht0	(%rdx)
	.loc 1 752 0
	movl	$16, %edi
	.loc 1 753 0
	movsd	%xmm15, -184(%rdx)
	movl	$16, %ebx
	movsd	-176(%r12), %xmm0
	movsd	%xmm0, -176(%rdx)
	movsd	-168(%r12), %xmm1
	movsd	%xmm1, -168(%rdx)
	movsd	-160(%r12), %xmm2
	movsd	%xmm2, -160(%rdx)
	movsd	-152(%r12), %xmm3
	movsd	%xmm3, -152(%rdx)
	movsd	-144(%r12), %xmm4
	movsd	%xmm4, -144(%rdx)
	movsd	-136(%r12), %xmm5
	movsd	%xmm5, -136(%rdx)
	movsd	-128(%r12), %xmm6
	leaq	312(%r8), %r12
	movsd	%xmm6, -128(%rdx)
	leaq	312(%r10), %rdx
	je	.L745
.L746:
	movsd	-184(%r12), %xmm7
	leaq	64(%r12), %rax
	prefetcht0	(%r12)
	leaq	64(%rdx), %rcx
	subq	$-128, %rsi
	.loc 1 752 0
	addl	$16, %edi
	.loc 1 753 0
	movsd	%xmm7, -184(%rdx)
	prefetcht0	(%rdx)
	prefetcht0	(%rax)
	prefetcht0	(%rcx)
	movl	%edi, %ebx
	movsd	-176(%r12), %xmm8
	movsd	%xmm8, -176(%rdx)
	movsd	-168(%r12), %xmm9
	movsd	%xmm9, -168(%rdx)
	movsd	-160(%r12), %xmm10
	movsd	%xmm10, -160(%rdx)
	movsd	-152(%r12), %xmm11
	movsd	%xmm11, -152(%rdx)
	movsd	-144(%r12), %xmm12
	movsd	%xmm12, -144(%rdx)
	movsd	-136(%r12), %xmm13
	movsd	%xmm13, -136(%rdx)
	movsd	-128(%r12), %xmm14
	movsd	%xmm14, -128(%rdx)
	movsd	-120(%r12), %xmm15
	movsd	%xmm15, -120(%rdx)
	movsd	-112(%r12), %xmm0
	movsd	%xmm0, -112(%rdx)
	movsd	-104(%r12), %xmm1
	movsd	%xmm1, -104(%rdx)
	movsd	-96(%r12), %xmm2
	movsd	%xmm2, -96(%rdx)
	movsd	-88(%r12), %xmm3
	movsd	%xmm3, -88(%rdx)
	movsd	-80(%r12), %xmm4
	movsd	%xmm4, -80(%rdx)
	movsd	-72(%r12), %xmm5
	movsd	%xmm5, -72(%rdx)
	movsd	-64(%r12), %xmm6
	subq	$-128, %r12
	movsd	%xmm6, -64(%rdx)
	subq	$-128, %rdx
	cmpq	%r11, %rsi
	jne	.L746
.L745:
.LVL252:
	.loc 1 609 0
	movslq	%edi, %rdx
	movl	%ebx, %r11d
	leal	1(%rbx), %r12d
	salq	$3, %rdx
	notl	%r11d
	movl	$8, %eax
	leaq	(%r8,%rdx), %rsi
	addl	%r9d, %r11d
	addq	%r10, %rdx
	andl	$7, %r11d
	cmpl	%r12d, %r9d
	leal	1(%rdi), %ecx
.LVL253:
	.loc 1 753 0
	movsd	(%rsi), %xmm7
	movsd	%xmm7, (%rdx)
	jbe	.L1070
	testl	%r11d, %r11d
	je	.L749
	cmpl	$1, %r11d
	je	.L985
	cmpl	$2, %r11d
	je	.L986
	cmpl	$3, %r11d
	je	.L987
	cmpl	$4, %r11d
	je	.L988
	cmpl	$5, %r11d
	je	.L989
	cmpl	$6, %r11d
	je	.L990
	movsd	8(%rsi), %xmm8
	.loc 1 752 0
	leal	2(%rdi), %ecx
.LVL254:
	movl	$16, %eax
	.loc 1 753 0
	movsd	%xmm8, 8(%rdx)
.L990:
	movsd	(%rsi,%rax), %xmm9
	.loc 1 752 0
	addl	$1, %ecx
.LVL255:
	.loc 1 753 0
	movsd	%xmm9, (%rdx,%rax)
	addq	$8, %rax
.L989:
	movsd	(%rsi,%rax), %xmm10
	.loc 1 752 0
	addl	$1, %ecx
.LVL256:
	.loc 1 753 0
	movsd	%xmm10, (%rdx,%rax)
	addq	$8, %rax
.L988:
	movsd	(%rsi,%rax), %xmm11
	.loc 1 752 0
	addl	$1, %ecx
.LVL257:
	.loc 1 753 0
	movsd	%xmm11, (%rdx,%rax)
	addq	$8, %rax
.L987:
	movsd	(%rsi,%rax), %xmm12
	.loc 1 752 0
	addl	$1, %ecx
.LVL258:
	.loc 1 753 0
	movsd	%xmm12, (%rdx,%rax)
	addq	$8, %rax
.L986:
	movsd	(%rsi,%rax), %xmm13
	.loc 1 752 0
	addl	$1, %ecx
.LVL259:
	.loc 1 753 0
	movsd	%xmm13, (%rdx,%rax)
	addq	$8, %rax
.L985:
	.loc 1 752 0
	addl	$1, %ecx
.LVL260:
	.loc 1 753 0
	movsd	(%rsi,%rax), %xmm14
	.loc 1 609 0
	leal	(%rbx,%rcx), %r11d
	.loc 1 753 0
	movsd	%xmm14, (%rdx,%rax)
	addq	$8, %rax
	subl	%edi, %r11d
	cmpl	%r11d, %r9d
	jbe	.L1070
.L749:
	.loc 1 752 0
	addl	$8, %ecx
.LVL261:
	.loc 1 753 0
	movsd	(%rsi,%rax), %xmm15
	.loc 1 609 0
	leal	(%rbx,%rcx), %r12d
	.loc 1 753 0
	movsd	8(%rsi,%rax), %xmm0
	movsd	16(%rsi,%rax), %xmm1
	movsd	24(%rsi,%rax), %xmm2
	subl	%edi, %r12d
	movsd	32(%rsi,%rax), %xmm3
	movsd	40(%rsi,%rax), %xmm4
	movsd	48(%rsi,%rax), %xmm5
	movsd	56(%rsi,%rax), %xmm6
	movsd	%xmm15, (%rdx,%rax)
.LVL262:
	movsd	%xmm0, 8(%rdx,%rax)
	movsd	%xmm1, 16(%rdx,%rax)
	movsd	%xmm2, 24(%rdx,%rax)
	movsd	%xmm3, 32(%rdx,%rax)
	movsd	%xmm4, 40(%rdx,%rax)
	movsd	%xmm5, 48(%rdx,%rax)
.LVL263:
	movsd	%xmm6, 56(%rdx,%rax)
	addq	$64, %rax
	cmpl	%r12d, %r9d
	ja	.L749
.L1070:
	cmpl	%r9d, %r13d
	je	.L742
.LVL264:
.L744:
	movl	%r13d, %esi
	movl	%r9d, %eax
	subl	%r9d, %esi
	movl	%esi, -128(%rbp)
	shrl	%esi
	movl	%esi, %edi
	addl	%edi, %edi
	movl	%edi, -120(%rbp)
	je	.L748
	salq	$3, %rax
.LBE342:
	.loc 1 609 0
	xorl	%r11d, %r11d
.LBB343:
	leal	-3(%rsi), %r12d
	leaq	(%r8,%rax), %rdx
	addq	%r10, %rax
	cmpl	$4, %esi
	jbe	.L737
	leal	-5(%rsi), %ebx
.LBB322:
.LBB313:
.LBB304:
	.loc 1 753 0 discriminator 2
	movapd	(%rdx), %xmm7
	prefetcht0	464(%rdx)
	.loc 1 609 0 discriminator 2
	leaq	64(%rax), %r9
	movl	$4, %r11d
	movl	$4, %edi
	.loc 1 753 0 discriminator 2
	movapd	16(%rdx), %xmm8
	shrl	$2, %ebx
	andl	$1, %ebx
	movapd	32(%rdx), %xmm9
	movapd	48(%rdx), %xmm10
	.loc 1 609 0 discriminator 2
	addq	$64, %rdx
	cmpl	$5, %r12d
	.loc 1 753 0 discriminator 2
	movlpd	%xmm7, (%rax)
	movhpd	%xmm7, 8(%rax)
	movlpd	%xmm8, 16(%rax)
	movhpd	%xmm8, 24(%rax)
	movlpd	%xmm9, 32(%rax)
	movhpd	%xmm9, 40(%rax)
	movlpd	%xmm10, 48(%rax)
	movhpd	%xmm10, 56(%rax)
	.loc 1 609 0 discriminator 2
	movq	%r9, %rax
	jbe	.L737
	testl	%ebx, %ebx
	je	.L779
	.loc 1 753 0
	movapd	(%rdx), %xmm11
	prefetcht0	464(%rdx)
	.loc 1 609 0
	addq	$64, %rax
	movl	$8, %r11d
	movl	$8, %edi
	.loc 1 753 0
	movapd	16(%rdx), %xmm12
	movapd	32(%rdx), %xmm13
	movapd	48(%rdx), %xmm14
	.loc 1 609 0
	addq	$64, %rdx
	cmpl	$9, %r12d
	.loc 1 753 0
	movlpd	%xmm11, (%r9)
	movhpd	%xmm11, 8(%r9)
	movlpd	%xmm12, 16(%r9)
	movhpd	%xmm12, 24(%r9)
	movlpd	%xmm13, 32(%r9)
	movhpd	%xmm13, 40(%r9)
	movlpd	%xmm14, 48(%r9)
	movhpd	%xmm14, 56(%r9)
	jbe	.L737
.L779:
	.loc 1 753 0 is_stmt 0 discriminator 2
	movapd	(%rdx), %xmm15
	leal	9(%rdi), %ebx
	prefetcht0	464(%rdx)
	leal	8(%rdi), %r11d
	prefetcht0	528(%rdx)
	movapd	16(%rdx), %xmm0
	movl	%r11d, %edi
	movapd	32(%rdx), %xmm1
	movapd	48(%rdx), %xmm2
	movapd	64(%rdx), %xmm3
	movapd	80(%rdx), %xmm4
	movapd	96(%rdx), %xmm5
	movapd	112(%rdx), %xmm6
	.loc 1 609 0 is_stmt 1 discriminator 2
	subq	$-128, %rdx
	.loc 1 753 0 discriminator 2
	movlpd	%xmm15, (%rax)
	movhpd	%xmm15, 8(%rax)
	movlpd	%xmm0, 16(%rax)
	movhpd	%xmm0, 24(%rax)
	movlpd	%xmm1, 32(%rax)
	movhpd	%xmm1, 40(%rax)
	movlpd	%xmm2, 48(%rax)
	movhpd	%xmm2, 56(%rax)
	movlpd	%xmm3, 64(%rax)
	movhpd	%xmm3, 72(%rax)
	movlpd	%xmm4, 80(%rax)
	movhpd	%xmm4, 88(%rax)
	movlpd	%xmm5, 96(%rax)
	movhpd	%xmm5, 104(%rax)
	movlpd	%xmm6, 112(%rax)
	movhpd	%xmm6, 120(%rax)
	.loc 1 609 0 discriminator 2
	subq	$-128, %rax
	cmpl	%r12d, %ebx
	jb	.L779
.L737:
	movl	%r11d, %r12d
	leal	1(%r11), %r9d
	movl	$16, %edi
	notl	%r12d
	.loc 1 753 0
	movapd	(%rdx), %xmm7
	addl	%esi, %r12d
	andl	$7, %r12d
	cmpl	%r9d, %esi
	movlpd	%xmm7, (%rax)
	movhpd	%xmm7, 8(%rax)
	jbe	.L1069
	testl	%r12d, %r12d
	je	.L734
	cmpl	$1, %r12d
	je	.L979
	cmpl	$2, %r12d
	je	.L980
	cmpl	$3, %r12d
	je	.L981
	cmpl	$4, %r12d
	je	.L982
	cmpl	$5, %r12d
	je	.L983
	cmpl	$6, %r12d
	je	.L984
	movapd	16(%rdx), %xmm8
	leal	2(%r11), %r9d
	movl	$32, %edi
	movlpd	%xmm8, 16(%rax)
	movhpd	%xmm8, 24(%rax)
.L984:
	movapd	(%rdx,%rdi), %xmm9
	addl	$1, %r9d
	movlpd	%xmm9, (%rax,%rdi)
	movhpd	%xmm9, 8(%rax,%rdi)
	addq	$16, %rdi
.L983:
	movapd	(%rdx,%rdi), %xmm10
	addl	$1, %r9d
	movlpd	%xmm10, (%rax,%rdi)
	movhpd	%xmm10, 8(%rax,%rdi)
	addq	$16, %rdi
.L982:
	movapd	(%rdx,%rdi), %xmm11
	addl	$1, %r9d
	movlpd	%xmm11, (%rax,%rdi)
	movhpd	%xmm11, 8(%rax,%rdi)
	addq	$16, %rdi
.L981:
	movapd	(%rdx,%rdi), %xmm12
	addl	$1, %r9d
	movlpd	%xmm12, (%rax,%rdi)
	movhpd	%xmm12, 8(%rax,%rdi)
	addq	$16, %rdi
.L980:
	movapd	(%rdx,%rdi), %xmm13
	addl	$1, %r9d
	movlpd	%xmm13, (%rax,%rdi)
	movhpd	%xmm13, 8(%rax,%rdi)
	addq	$16, %rdi
.L979:
	movapd	(%rdx,%rdi), %xmm14
	addl	$1, %r9d
	movlpd	%xmm14, (%rax,%rdi)
	movhpd	%xmm14, 8(%rax,%rdi)
	addq	$16, %rdi
	cmpl	%r9d, %esi
	jbe	.L1069
.L734:
	movapd	(%rdx,%rdi), %xmm15
	addl	$8, %r9d
	movapd	16(%rdx,%rdi), %xmm0
	movapd	32(%rdx,%rdi), %xmm1
	movapd	48(%rdx,%rdi), %xmm2
	movapd	64(%rdx,%rdi), %xmm3
	movapd	80(%rdx,%rdi), %xmm4
	movapd	96(%rdx,%rdi), %xmm5
	movapd	112(%rdx,%rdi), %xmm6
	movlpd	%xmm15, (%rax,%rdi)
	movhpd	%xmm15, 8(%rax,%rdi)
	movlpd	%xmm0, 16(%rax,%rdi)
	movhpd	%xmm0, 24(%rax,%rdi)
	movlpd	%xmm1, 32(%rax,%rdi)
	movhpd	%xmm1, 40(%rax,%rdi)
	movlpd	%xmm2, 48(%rax,%rdi)
	movhpd	%xmm2, 56(%rax,%rdi)
	movlpd	%xmm3, 64(%rax,%rdi)
	movhpd	%xmm3, 72(%rax,%rdi)
	movlpd	%xmm4, 80(%rax,%rdi)
	movhpd	%xmm4, 88(%rax,%rdi)
	movlpd	%xmm5, 96(%rax,%rdi)
	movhpd	%xmm5, 104(%rax,%rdi)
	movlpd	%xmm6, 112(%rax,%rdi)
	movhpd	%xmm6, 120(%rax,%rdi)
	subq	$-128, %rdi
	cmpl	%r9d, %esi
	ja	.L734
.L1069:
	addl	-120(%rbp), %ecx
	movl	-128(%rbp), %eax
	cmpl	%eax, -120(%rbp)
	je	.L742
.L748:
	.loc 1 609 0
	leal	1(%rcx), %esi
	cmpl	%esi, -132(%rbp)
	setg	%dl
	cmpl	%r14d, %esi
	setl	%r11b
	testb	%r11b, %dl
	je	.L739
	cmpl	$-2147483640, -132(%rbp)
	jl	.L739
	movslq	%ecx, %rbx
	movl	%r14d, %r9d
	leaq	200(,%rbx,8), %r12
	subl	%ecx, %r9d
.LBE304:
.LBE313:
.LBE322:
	.loc 1 752 0
	addl	$8, %ecx
	subl	$2, %r9d
	.loc 1 609 0
	leal	1(%rcx), %esi
.LBB323:
.LBB314:
.LBB305:
	leaq	(%r8,%r12), %rdi
	addq	%r10, %r12
	shrl	$3, %r9d
	andl	$1, %r9d
	cmpl	%esi, %r14d
	prefetcht0	(%r12)
.LBE305:
.LBE314:
.LBE323:
	.loc 1 753 0
	movsd	-200(%rdi), %xmm7
	prefetcht0	(%rdi)
	leaq	64(%rdi), %rdx
	leaq	64(%r12), %rax
	movsd	%xmm7, -200(%r12)
	movsd	-192(%rdi), %xmm8
	movsd	%xmm8, -192(%r12)
	movsd	-184(%rdi), %xmm9
	movsd	%xmm9, -184(%r12)
	movsd	-176(%rdi), %xmm10
	movsd	%xmm10, -176(%r12)
	movsd	-168(%rdi), %xmm11
	movsd	%xmm11, -168(%r12)
	movsd	-160(%rdi), %xmm12
	movsd	%xmm12, -160(%r12)
	movsd	-152(%rdi), %xmm13
	movsd	%xmm13, -152(%r12)
.LVL265:
	movsd	-144(%rdi), %xmm14
	movsd	%xmm14, -144(%r12)
	jle	.L739
	testl	%r9d, %r9d
	je	.L740
	movsd	-200(%rdx), %xmm15
	.loc 1 752 0
	addl	$8, %ecx
.LVL266:
	prefetcht0	(%rdx)
	.loc 1 609 0
	leal	1(%rcx), %r11d
	prefetcht0	(%rax)
	.loc 1 753 0
	movsd	%xmm15, -200(%rax)
.LVL267:
	cmpl	%r11d, %r14d
	movsd	-192(%rdx), %xmm0
	movsd	%xmm0, -192(%rax)
	movsd	-184(%rdx), %xmm1
	movsd	%xmm1, -184(%rax)
	movsd	-176(%rdx), %xmm2
	movsd	%xmm2, -176(%rax)
	movsd	-168(%rdx), %xmm3
	movsd	%xmm3, -168(%rax)
	movsd	-160(%rdx), %xmm4
	movsd	%xmm4, -160(%rax)
	movsd	-152(%rdx), %xmm5
	movsd	%xmm5, -152(%rax)
.LVL268:
	movsd	-144(%rdx), %xmm6
	leaq	128(%rdi), %rdx
	movsd	%xmm6, -144(%rax)
	leaq	128(%r12), %rax
	jle	.L739
.L740:
	movsd	-200(%rdx), %xmm7
	.loc 1 752 0
	addl	$16, %ecx
.LVL269:
	prefetcht0	(%rdx)
	.loc 1 609 0
	leal	1(%rcx), %edi
	leaq	64(%rdx), %rbx
	leaq	64(%rax), %r12
	.loc 1 753 0
	movsd	%xmm7, -200(%rax)
.LVL270:
	prefetcht0	(%rax)
	prefetcht0	(%rbx)
	prefetcht0	(%r12)
	movsd	-192(%rdx), %xmm8
	movsd	%xmm8, -192(%rax)
	movsd	-184(%rdx), %xmm9
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
	movsd	%xmm0, -128(%rax)
	movsd	-120(%rdx), %xmm1
	movsd	%xmm1, -120(%rax)
	movsd	-112(%rdx), %xmm2
	movsd	%xmm2, -112(%rax)
	movsd	-104(%rdx), %xmm3
	movsd	%xmm3, -104(%rax)
	movsd	-96(%rdx), %xmm4
	movsd	%xmm4, -96(%rax)
	movsd	-88(%rdx), %xmm5
	movsd	%xmm5, -88(%rax)
.LVL271:
	movsd	-80(%rdx), %xmm6
	subq	$-128, %rdx
	movsd	%xmm6, -80(%rax)
	subq	$-128, %rax
	cmpl	%edi, %r14d
	jg	.L740
.LVL272:
.L739:
	.loc 1 609 0
	movslq	%ecx, %r9
	movl	%ecx, %esi
	leal	1(%rcx), %r11d
	salq	$3, %r9
	notl	%esi
	movl	$1, %eax
	addq	%r9, %r8
	leal	(%rsi,%r13), %edx
	addq	%r9, %r10
	.loc 1 753 0
	movsd	(%r8), %xmm7
	andl	$7, %edx
	.loc 1 752 0
	cmpl	%r11d, %r13d
	.loc 1 753 0
	movsd	%xmm7, (%r10)
	.loc 1 752 0
	jle	.L742
	testl	%edx, %edx
	je	.L741
	cmpl	$1, %edx
	je	.L973
	cmpl	$2, %edx
	.p2align 4,,3
	je	.L974
	cmpl	$3, %edx
	.p2align 4,,2
	je	.L975
	cmpl	$4, %edx
	.p2align 4,,2
	je	.L976
	cmpl	$5, %edx
	.p2align 4,,2
	je	.L977
	cmpl	$6, %edx
	.p2align 4,,2
	je	.L978
	.loc 1 753 0
	movsd	8(%r8), %xmm8
	movl	$2, %eax
	movsd	%xmm8, 8(%r10)
.L978:
	movsd	(%r8,%rax,8), %xmm9
	movsd	%xmm9, (%r10,%rax,8)
	addq	$1, %rax
.L977:
	movsd	(%r8,%rax,8), %xmm10
	movsd	%xmm10, (%r10,%rax,8)
	addq	$1, %rax
.L976:
	movsd	(%r8,%rax,8), %xmm11
	movsd	%xmm11, (%r10,%rax,8)
	addq	$1, %rax
.L975:
	movsd	(%r8,%rax,8), %xmm12
	movsd	%xmm12, (%r10,%rax,8)
	addq	$1, %rax
.L974:
	movsd	(%r8,%rax,8), %xmm13
	movsd	%xmm13, (%r10,%rax,8)
	addq	$1, %rax
.L973:
	movsd	(%r8,%rax,8), %xmm14
	movsd	%xmm14, (%r10,%rax,8)
	addq	$1, %rax
	.loc 1 609 0
	leal	(%rcx,%rax), %ebx
	.loc 1 752 0
	cmpl	%ebx, %r13d
	jle	.L742
.L741:
	leaq	1(%rax), %r12
	.loc 1 753 0
	movsd	(%r8,%rax,8), %xmm15
	leaq	2(%rax), %rdi
	leaq	3(%rax), %r9
	leaq	4(%rax), %rsi
	movsd	(%r8,%r12,8), %xmm0
	leaq	5(%rax), %rdx
	movsd	%xmm15, (%r10,%rax,8)
	leaq	6(%rax), %r11
	leaq	7(%rax), %rbx
	addq	$8, %rax
	movsd	%xmm0, (%r10,%r12,8)
	.loc 1 609 0
	leal	(%rcx,%rax), %r12d
	.loc 1 753 0
	movsd	(%r8,%rdi,8), %xmm1
	movsd	(%r8,%r9,8), %xmm2
	movsd	(%r8,%rsi,8), %xmm3
	.loc 1 752 0
	cmpl	%r12d, %r13d
	.loc 1 753 0
	movsd	(%r8,%rdx,8), %xmm4
	movsd	(%r8,%r11,8), %xmm5
	movsd	(%r8,%rbx,8), %xmm6
	movsd	%xmm1, (%r10,%rdi,8)
	movsd	%xmm2, (%r10,%r9,8)
	movsd	%xmm3, (%r10,%rsi,8)
	movsd	%xmm4, (%r10,%rdx,8)
	movsd	%xmm5, (%r10,%r11,8)
	movsd	%xmm6, (%r10,%rbx,8)
	.loc 1 752 0
	jg	.L741
.L742:
	addq	$1, %r15
	.loc 1 751 0
	cmpl	%r15d, -136(%rbp)
	jg	.L1062
.L729:
	.loc 1 733 0
	addl	$1, -180(%rbp)
.LVL273:
	movl	-228(%rbp), %ecx
	cmpl	%ecx, -180(%rbp)
	movq	-200(%rbp), %r14
	jne	.L751
.LVL274:
.L710:
	.loc 1 769 0
	movslq	-232(%rbp), %r8
	movq	-280(%rbp), %r12
	.loc 1 770 0
	xorl	%ebx, %ebx
	.loc 1 769 0
	movq	%r12, %r13
	leaq	18(,%r8,4), %r10
	andq	$-16, %r10
	subq	%r10, %rsp
	movq	%rsp, %r14
.LVL275:
	movq	%rsp, %r15
.LVL276:
	.p2align 4,,10
	.p2align 3
.L715:
	.loc 1 772 0 discriminator 2
	movslq	%ebx, %rax
	leaq	-112(%rbp), %rsi
	.loc 1 771 0 discriminator 2
	movl	%ebx, (%r15)
	.loc 1 772 0 discriminator 2
	leaq	(%r14,%rax,4), %rcx
	movq	%r13, %rdi
	movl	$_Z6workerPv, %edx
	.loc 1 770 0 discriminator 2
	addl	$1, %ebx
	addq	$4, %r15
	addq	$8, %r13
	.loc 1 772 0 discriminator 2
	call	pthread_create
.LVL277:
	.loc 1 770 0 discriminator 2
	movl	nThreads(%rip), %edi
	cmpl	%ebx, %edi
	jg	.L715
.LVL278:
	.loc 1 774 0 discriminator 1
	testl	%edi, %edi
	jle	.L754
	.loc 1 774 0 is_stmt 0
	xorl	%r14d, %r14d
.LVL279:
	.p2align 4,,10
	.p2align 3
.L755:
	.loc 1 775 0 is_stmt 1 discriminator 2
	movq	(%r12), %rdi
	xorl	%esi, %esi
	.loc 1 774 0 discriminator 2
	addl	$1, %r14d
	addq	$8, %r12
	.loc 1 775 0 discriminator 2
	call	pthread_join
.LVL280:
	.loc 1 774 0 discriminator 2
	cmpl	%r14d, nThreads(%rip)
	jg	.L755
.LVL281:
.L754:
	.loc 1 778 0
	movq	-280(%rbp), %rdi
	.loc 1 791 0
	xorl	%r15d, %r15d
	xorl	%r12d, %r12d
	.loc 1 778 0
	call	free
.LVL282:
	.loc 1 791 0
	movl	nSwaptions(%rip), %r9d
	testl	%r9d, %r9d
	jle	.L753
.LVL283:
	.p2align 4,,10
	.p2align 3
.L778:
	.loc 1 793 0 discriminator 2
	movq	swaptions(%rip), %rsi
.LBB324:
.LBB325:
	.loc 2 99 0 discriminator 2
	movq	stderr(%rip), %rdi
	movl	%r12d, %ecx
	movl	$.LC101, %edx
	movl	$2, %eax
.LBE325:
.LBE324:
	.loc 1 791 0 discriminator 2
	addl	$1, %r12d
	.loc 1 793 0 discriminator 2
	addq	%r15, %rsi
.LVL284:
	addq	$104, %r15
.LBB327:
.LBB326:
	.loc 2 99 0 discriminator 2
	movsd	8(%rsi), %xmm0
	movsd	16(%rsi), %xmm1
	movl	$1, %esi
	call	__fprintf_chk
.LVL285:
.LBE326:
.LBE327:
	.loc 1 791 0 discriminator 2
	movl	nSwaptions(%rip), %edx
	cmpl	%r12d, %edx
	jg	.L778
.LVL286:
	.loc 1 797 0 discriminator 1
	testl	%edx, %edx
	jle	.L753
	.loc 1 797 0 is_stmt 0
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
.LVL287:
	.p2align 4,,10
	.p2align 3
.L756:
	.loc 1 798 0 is_stmt 1 discriminator 2
	movq	swaptions(%rip), %r11
	.loc 1 797 0 discriminator 2
	addl	$1, %r14d
.LBB328:
.LBB329:
	.loc 1 1428 0 discriminator 2
	movq	88(%r11,%rbx), %rdi
	subq	$8, %rdi
	call	free
.LVL288:
.LBE329:
.LBE328:
	.loc 1 799 0 discriminator 2
	movq	swaptions(%rip), %rcx
	movq	96(%rcx,%rbx), %r13
.LVL289:
	addq	$104, %rbx
.LBB330:
.LBB331:
	.loc 1 1464 0 discriminator 2
	movq	0(%r13), %rdi
	subq	$8, %rdi
	call	free
.LVL290:
	.loc 1 1465 0 discriminator 2
	leaq	-8(%r13), %rdi
	call	free
.LVL291:
.LBE331:
.LBE330:
	.loc 1 797 0 discriminator 2
	cmpl	%r14d, nSwaptions(%rip)
	jg	.L756
.LVL292:
.L753:
	.loc 1 806 0
	movq	swaptions(%rip), %rdi
	call	free
.LVL293:
.LBE343:
	.loc 1 816 0
	xorl	%eax, %eax
	movq	-56(%rbp), %rsi
	xorq	%fs:40, %rsi
	jne	.L1132
	leaq	-40(%rbp), %rsp
.LVL294:
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
.LCFI89:
	.cfi_remember_state
	.cfi_def_cfa 7, 8
.LVL295:
	ret
.LVL296:
	.p2align 4,,10
	.p2align 3
.L763:
.LCFI90:
	.cfi_restore_state
.LBB344:
	.loc 1 609 0
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	jmp	.L745
.LVL297:
	.p2align 4,,10
	.p2align 3
.L1100:
	movq	-144(%rbp), %rsi
	movq	-152(%rbp), %r12
	jmp	.L732
.LVL298:
.L759:
.LBE344:
	.loc 1 748 0
	movl	$1, %ecx
	movsd	.LC100(%rip), %xmm6
	jmp	.L722
.LVL299:
.L761:
	.loc 1 609 0
	movl	$1, %edi
	movl	$2, %edx
	jmp	.L730
.LVL300:
	.p2align 4,,10
	.p2align 3
.L1124:
.LBB345:
.LBB332:
.LBB202:
.LBB199:
	.loc 3 286 0 discriminator 1
	movq	-32(%r15), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
.LVL301:
	movl	%eax, NUM_TRIALS(%rip)
	jmp	.L697
	.p2align 4,,10
	.p2align 3
.L1079:
.LBE199:
.LBE202:
.LBB203:
.LBB204:
	.loc 3 286 0 is_stmt 0
	movq	-32(%r15), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
.LVL302:
	movl	%eax, nThreads(%rip)
	jmp	.L1081
	.p2align 4,,10
	.p2align 3
.L1125:
	.loc 3 286 0 discriminator 1
	movq	-32(%r15), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
.LVL303:
	movl	%eax, nThreads(%rip)
	jmp	.L697
.L1080:
.LBE204:
.LBE203:
.LBB206:
.LBB207:
	.loc 3 286 0
	movq	-32(%r15), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
.LVL304:
	movl	%eax, nSwaptions(%rip)
	jmp	.L1081
.L1126:
	.loc 3 286 0 discriminator 1
	movq	-32(%r15), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
.LVL305:
	movl	%eax, nSwaptions(%rip)
	jmp	.L697
.LVL306:
.L1123:
.LBE207:
.LBE206:
.LBB209:
.LBB200:
	.loc 3 286 0
	movq	-32(%r15), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
.LVL307:
	movl	%eax, NUM_TRIALS(%rip)
	jmp	.L1074
.LVL308:
.L1072:
.LBE200:
.LBE209:
.LBB210:
.LBB205:
	movq	-32(%r15), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
.LVL309:
	movl	%eax, nThreads(%rip)
	jmp	.L1074
.LVL310:
.L1107:
	movq	-160(%rbp), %rax
	jmp	.L713
.LVL311:
.L758:
.LBE205:
.LBE210:
.LBE332:
.LBE345:
	.loc 1 609 0 is_stmt 1
	movl	$1, %esi
	movl	$2, %r9d
	jmp	.L711
.LVL312:
.L1073:
.LBB346:
.LBB333:
.LBB211:
.LBB208:
	.loc 3 286 0
	movq	-32(%r15), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
.LVL313:
	movl	%eax, nSwaptions(%rip)
	jmp	.L1074
.L700:
.LVL314:
.LBE208:
.LBE211:
.LBB212:
.LBB213:
	.loc 2 99 0
	movq	stderr(%rip), %rdi
	movq	%r8, %rcx
	movl	$.LC65, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk
.LVL315:
.L1116:
.LBE213:
.LBE212:
	.loc 1 642 0
	movq	(%r14), %rdi
	call	_Z11print_usagePc
.LVL316:
	.loc 1 643 0
	movl	$1, %edi
	call	exit
.LVL317:
.L1128:
.LBE333:
.LBB334:
.LBB335:
	.loc 2 99 0
	movq	stderr(%rip), %rcx
	movl	$37, %edx
	movl	$1, %esi
	movl	$.LC66, %edi
	call	fwrite
.LVL318:
.LBE335:
.LBE334:
	.loc 1 649 0
	movq	(%r14), %rdi
	call	_Z11print_usagePc
.LVL319:
	.loc 1 650 0
	movl	$1, %edi
	call	exit
.LVL320:
.L1117:
.LBB336:
.LBB337:
	.loc 2 99 0
	movq	stderr(%rip), %rdi
	movl	$1024, %ecx
	movl	$.LC70, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk
.LVL321:
.LBE337:
.LBE336:
	.loc 1 677 0
	movl	$1, %edi
	call	exit
.LVL322:
.L720:
.LBB338:
.LBB246:
.LBB237:
	.loc 1 1442 0
	movl	$.LC71, %edi
	call	_Z7nrerrorPKc
.LVL323:
.L762:
.LBE237:
.LBE246:
.LBE338:
	.loc 1 609 0
	xorl	%ecx, %ecx
	jmp	.L744
.LVL324:
.L1132:
.LBE346:
	.loc 1 816 0
	call	__stack_chk_fail
.LVL325:
.L726:
.LBB347:
.LBB339:
.LBB247:
.LBB238:
	.loc 1 1448 0
	movl	$.LC72, %edi
	call	_Z7nrerrorPKc
.LVL326:
.L1130:
.LBE238:
.LBE247:
.LBE339:
.LBB340:
.LBB291:
.LBB288:
	.loc 1 1418 0
	movl	$.LC99, %edi
	call	_Z7nrerrorPKc
.LVL327:
.LBE288:
.LBE291:
.LBE340:
.LBE347:
	.cfi_endproc
.LFE1076:
	.size	main, .-main
	.text
	.p2align 4,,15
	.globl	_Z19HJM_SimPath_ForwardPPdiidS_S_S0_Pl
	.type	_Z19HJM_SimPath_ForwardPPdiidS_S_S0_Pl, @function
_Z19HJM_SimPath_ForwardPPdiidS_S_S0_Pl:
.LFB81:
	.loc 1 265 0
	.cfi_startproc
.LVL328:
	pushq	%r15
.LCFI91:
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
.LBB356:
	.loc 1 277 0
	leal	-1(%rdx), %eax
.LBE356:
	.loc 1 265 0
	movl	%esi, %r15d
	pushq	%r14
.LCFI92:
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%r9, %r14
	pushq	%r13
.LCFI93:
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
.LCFI94:
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
.LCFI95:
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%edx, %ebp
	pushq	%rbx
.LCFI96:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$168, %rsp
.LCFI97:
	.cfi_def_cfa_offset 224
	.loc 1 265 0
	movsd	%xmm0, 88(%rsp)
.LBB382:
	.loc 1 277 0
	movl	%eax, 112(%rsp)
	cltq
	.loc 1 275 0
	cvtsi2sd	%esi, %xmm0
.LVL329:
.LBE382:
	.loc 1 265 0
	movq	%rdi, 104(%rsp)
.LBB383:
	.loc 1 275 0
	movsd	88(%rsp), %xmm1
.LBB357:
.LBB358:
.LBB359:
	.loc 1 1417 0
	leaq	16(,%rax,8), %rdi
.LVL330:
.LBE359:
.LBE358:
.LBE357:
.LBE383:
	.loc 1 265 0
	movq	%rcx, 96(%rsp)
	movq	%r8, 128(%rsp)
	movq	224(%rsp), %rbx
.LBB384:
	.loc 1 275 0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 88(%rsp)
.LVL331:
.LBB364:
.LBB362:
.LBB360:
	.loc 1 1417 0
	call	malloc
.LVL332:
	.loc 1 1418 0
	testq	%rax, %rax
	.loc 1 1417 0
	movq	%rax, 136(%rsp)
.LVL333:
	.loc 1 1418 0
	je	.L1473
	movq	%rax, %r13
	.loc 1 277 0
	addq	$8, %r13
.LVL334:
.LBE360:
.LBE362:
.LBE364:
	.loc 1 279 0
	testl	%r15d, %r15d
	jle	.L1135
	movq	%rbx, 152(%rsp)
	.loc 1 281 0
	xorpd	%xmm2, %xmm2
	movq	104(%rsp), %rbx
	.loc 1 257 0
	leal	-7(%r15), %r8d
.LBE384:
	xorl	%r11d, %r11d
	movq	%r13, 120(%rsp)
	movl	%ebp, 148(%rsp)
.LVL335:
	.p2align 4,,10
	.p2align 3
.L1136:
	movq	(%rbx,%r11,8), %r9
	.loc 1 257 0 is_stmt 0 discriminator 1
	movl	%r15d, %esi
.LBB385:
	movq	%r9, %rdx
	salq	$60, %rdx
	shrq	$63, %rdx
	cmpl	%edx, %r15d
	cmovb	%r15d, %edx
.LBE385:
	cmpl	$6, %r15d
	cmova	%edx, %esi
	testl	%esi, %esi
	je	.L1171
	cmpl	$8, %esi
	jbe	.L1172
.LBB386:
	.loc 1 257 0
	leal	-9(%rsi), %edi
	leaq	232(%r9), %rcx
	movl	$64, %edx
	.loc 1 281 0 is_stmt 1
	movq	$0, (%r9)
.LVL336:
	movq	$0, 8(%r9)
	.loc 1 280 0
	movl	$8, %r13d
	.loc 1 257 0
	shrl	$3, %edi
	prefetcht0	(%rcx)
	.loc 1 281 0
	movq	$0, 16(%r9)
	.loc 1 257 0
	leaq	1(%rdi), %r12
	.loc 1 281 0
	movq	$0, 24(%r9)
	movq	$0, 32(%r9)
	movq	$0, 40(%r9)
	movq	$0, 48(%r9)
	movl	$8, %r10d
	.loc 1 257 0
	salq	$6, %r12
	.loc 1 281 0
	movq	$0, 56(%r9)
	leaq	296(%r9), %rax
	leaq	-64(%r12), %rbp
	shrq	$6, %rbp
	andl	$3, %ebp
	cmpq	%r12, %rdx
	je	.L1148
	testq	%rbp, %rbp
	je	.L1149
	cmpq	$1, %rbp
	je	.L1392
	cmpq	$2, %rbp
	je	.L1393
	prefetcht0	(%rax)
	movq	$0, -232(%rax)
	movq	$0, -224(%rax)
	movq	$0, -216(%rax)
	movq	$0, -208(%rax)
	.loc 1 280 0
	movl	$16, %r13d
	.loc 1 281 0
	movq	$0, -200(%rax)
	movq	$0, -192(%rax)
	movl	$128, %edx
	movq	$0, -184(%rax)
	movq	$0, -176(%rax)
	leaq	360(%r9), %rax
.L1393:
	prefetcht0	(%rax)
	movq	$0, -232(%rax)
	movq	$0, -224(%rax)
	movq	$0, -216(%rax)
	movq	$0, -208(%rax)
	.loc 1 280 0
	addl	$8, %r13d
	.loc 1 281 0
	movq	$0, -200(%rax)
	movq	$0, -192(%rax)
	addq	$64, %rdx
	movq	$0, -184(%rax)
	movq	$0, -176(%rax)
	addq	$64, %rax
.L1392:
	addq	$64, %rdx
	.loc 1 280 0
	addl	$8, %r13d
	prefetcht0	(%rax)
	.loc 1 281 0
	movq	$0, -232(%rax)
	movq	$0, -224(%rax)
	movl	%r13d, %r10d
	movq	$0, -216(%rax)
	movq	$0, -208(%rax)
	movq	$0, -200(%rax)
	movq	$0, -192(%rax)
	movq	$0, -184(%rax)
	movq	$0, -176(%rax)
	addq	$64, %rax
	cmpq	%r12, %rdx
	je	.L1148
.L1149:
	leaq	64(%rax), %rcx
	leaq	128(%rax), %rdi
	leaq	192(%rax), %rbp
	addq	$256, %rdx
	.loc 1 280 0
	addl	$32, %r13d
	prefetcht0	(%rax)
	.loc 1 281 0
	movq	$0, -232(%rax)
	movq	$0, -224(%rax)
	prefetcht0	(%rcx)
	movq	$0, -216(%rax)
	movq	$0, -208(%rax)
	prefetcht0	(%rdi)
	movq	$0, -200(%rax)
	movq	$0, -192(%rax)
	prefetcht0	0(%rbp)
	movq	$0, -184(%rax)
	movq	$0, -176(%rax)
	movl	%r13d, %r10d
	movq	$0, -168(%rax)
	movq	$0, -160(%rax)
	movq	$0, -152(%rax)
	movq	$0, -144(%rax)
	movq	$0, -136(%rax)
	movq	$0, -128(%rax)
	movq	$0, -120(%rax)
	movq	$0, -112(%rax)
	movq	$0, -104(%rax)
	movq	$0, -96(%rax)
	movq	$0, -88(%rax)
	movq	$0, -80(%rax)
	movq	$0, -72(%rax)
	movq	$0, -64(%rax)
	movq	$0, -56(%rax)
	movq	$0, -48(%rax)
	movq	$0, -40(%rax)
	movq	$0, -32(%rax)
	movq	$0, -24(%rax)
	movq	$0, -16(%rax)
	movq	$0, -8(%rax)
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	addq	$256, %rax
	cmpq	%r12, %rdx
	jne	.L1149
.L1148:
.LVL337:
	movl	%r10d, %edi
	.loc 1 257 0
	movslq	%r13d, %r12
	leal	1(%r10), %ebp
	notl	%edi
	leaq	(%r9,%r12,8), %rcx
	leal	1(%r13), %edx
.LVL338:
	addl	%esi, %edi
	andl	$7, %edi
	cmpl	%ebp, %esi
	.loc 1 281 0
	movq	$0, (%rcx)
	leaq	8(%rcx), %rax
	jbe	.L1447
	testl	%edi, %edi
	je	.L1152
	cmpl	$1, %edi
	je	.L1386
	cmpl	$2, %edi
	.p2align 4,,3
	je	.L1387
	cmpl	$3, %edi
	.p2align 4,,2
	je	.L1388
	cmpl	$4, %edi
	.p2align 4,,2
	je	.L1389
	cmpl	$5, %edi
	.p2align 4,,2
	je	.L1390
	cmpl	$6, %edi
	.p2align 4,,2
	je	.L1391
	.loc 1 280 0
	leal	2(%r13), %edx
.LVL339:
	leaq	16(%rcx), %rax
	.loc 1 281 0
	movq	$0, 8(%rcx)
.L1391:
	movq	$0, (%rax)
	.loc 1 280 0
	addl	$1, %edx
.LVL340:
	addq	$8, %rax
.L1390:
	.loc 1 281 0
	movq	$0, (%rax)
	.loc 1 280 0
	addl	$1, %edx
.LVL341:
	addq	$8, %rax
.L1389:
	.loc 1 281 0
	movq	$0, (%rax)
	.loc 1 280 0
	addl	$1, %edx
.LVL342:
	addq	$8, %rax
.L1388:
	.loc 1 281 0
	movq	$0, (%rax)
	.loc 1 280 0
	addl	$1, %edx
.LVL343:
	addq	$8, %rax
.L1387:
	.loc 1 281 0
	movq	$0, (%rax)
	.loc 1 280 0
	addl	$1, %edx
.LVL344:
	addq	$8, %rax
.L1386:
	addl	$1, %edx
.LVL345:
	.loc 1 281 0
	movq	$0, (%rax)
	addq	$8, %rax
	.loc 1 257 0
	leal	(%r10,%rdx), %r12d
	subl	%r13d, %r12d
	cmpl	%r12d, %esi
	jbe	.L1447
.L1152:
	.loc 1 280 0
	addl	$8, %edx
.LVL346:
	.loc 1 281 0
	movq	$0, (%rax)
.LVL347:
	movq	$0, 8(%rax)
	.loc 1 257 0
	leal	(%r10,%rdx), %ecx
	.loc 1 281 0
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	$0, 32(%rax)
	movq	$0, 40(%rax)
	subl	%r13d, %ecx
	movq	$0, 48(%rax)
.LVL348:
	movq	$0, 56(%rax)
	addq	$64, %rax
	cmpl	%ecx, %esi
	ja	.L1152
.L1447:
	cmpl	%r15d, %esi
	je	.L1150
.LVL349:
.L1147:
	movl	%r15d, %ebp
	movl	%esi, %r13d
	subl	%esi, %ebp
	movl	%ebp, %edi
	shrl	%edi
	movl	%edi, %r12d
	addl	%r12d, %r12d
	je	.L1151
.LBE386:
	.loc 1 257 0
	xorl	%r10d, %r10d
	cmpl	$4, %edi
	leaq	(%r9,%r13,8), %rax
.LBB387:
	leal	-3(%rdi), %r13d
	jbe	.L1140
	leal	-5(%rdi), %esi
	prefetcht0	640(%rax)
	movl	$4, %r10d
	.loc 1 281 0 discriminator 2
	movapd	%xmm2, (%rax)
	shrl	$2, %esi
	movl	$4, %ecx
	andl	$3, %esi
	movapd	%xmm2, 16(%rax)
	movapd	%xmm2, 32(%rax)
	movapd	%xmm2, 48(%rax)
	.loc 1 257 0 discriminator 2
	addq	$64, %rax
	cmpl	$5, %r13d
	jbe	.L1140
	testl	%esi, %esi
	je	.L1187
	cmpl	$1, %esi
	je	.L1384
	cmpl	$2, %esi
	.p2align 4,,3
	je	.L1385
	prefetcht0	640(%rax)
	.loc 1 281 0
	movapd	%xmm2, (%rax)
	movl	$8, %ecx
	movapd	%xmm2, 16(%rax)
	movapd	%xmm2, 32(%rax)
	movapd	%xmm2, 48(%rax)
	.loc 1 257 0
	addq	$64, %rax
.L1385:
	prefetcht0	640(%rax)
	.loc 1 281 0
	movapd	%xmm2, (%rax)
	addl	$4, %ecx
	movapd	%xmm2, 16(%rax)
	movapd	%xmm2, 32(%rax)
	movapd	%xmm2, 48(%rax)
	.loc 1 257 0
	addq	$64, %rax
.L1384:
	leal	5(%rcx), %esi
	leal	4(%rcx), %r10d
	prefetcht0	640(%rax)
	.loc 1 281 0
	movapd	%xmm2, (%rax)
	movl	%r10d, %ecx
	movapd	%xmm2, 16(%rax)
	movapd	%xmm2, 32(%rax)
	movapd	%xmm2, 48(%rax)
	.loc 1 257 0
	addq	$64, %rax
	cmpl	%r13d, %esi
	jae	.L1140
.L1187:
	leal	17(%rcx), %esi
	leal	16(%rcx), %r10d
	prefetcht0	640(%rax)
	.loc 1 281 0 discriminator 2
	movapd	%xmm2, (%rax)
	prefetcht0	704(%rax)
	prefetcht0	768(%rax)
	prefetcht0	832(%rax)
	movl	%r10d, %ecx
	movapd	%xmm2, 16(%rax)
	movapd	%xmm2, 32(%rax)
	movapd	%xmm2, 48(%rax)
	movapd	%xmm2, 64(%rax)
	movapd	%xmm2, 80(%rax)
	movapd	%xmm2, 96(%rax)
	movapd	%xmm2, 112(%rax)
	movapd	%xmm2, 128(%rax)
	movapd	%xmm2, 144(%rax)
	movapd	%xmm2, 160(%rax)
	movapd	%xmm2, 176(%rax)
	movapd	%xmm2, 192(%rax)
	movapd	%xmm2, 208(%rax)
	movapd	%xmm2, 224(%rax)
	movapd	%xmm2, 240(%rax)
	.loc 1 257 0 discriminator 2
	addq	$256, %rax
	cmpl	%r13d, %esi
	jb	.L1187
.L1140:
	movl	%r10d, %r13d
	leal	1(%r10), %esi
	leaq	16(%rax), %rcx
	notl	%r13d
	addl	%edi, %r13d
	andl	$7, %r13d
	cmpl	%esi, %edi
	.loc 1 281 0
	movapd	%xmm2, (%rax)
	jbe	.L1445
	testl	%r13d, %r13d
	je	.L1137
	cmpl	$1, %r13d
	je	.L1378
	cmpl	$2, %r13d
	je	.L1379
	cmpl	$3, %r13d
	je	.L1380
	cmpl	$4, %r13d
	je	.L1381
	cmpl	$5, %r13d
	je	.L1382
	cmpl	$6, %r13d
	je	.L1383
	movapd	%xmm2, (%rcx)
	leal	2(%r10), %esi
	leaq	32(%rax), %rcx
.L1383:
	movapd	%xmm2, (%rcx)
	addl	$1, %esi
	addq	$16, %rcx
.L1382:
	movapd	%xmm2, (%rcx)
	addl	$1, %esi
	addq	$16, %rcx
.L1381:
	movapd	%xmm2, (%rcx)
	addl	$1, %esi
	addq	$16, %rcx
.L1380:
	movapd	%xmm2, (%rcx)
	addl	$1, %esi
	addq	$16, %rcx
.L1379:
	movapd	%xmm2, (%rcx)
	addl	$1, %esi
	addq	$16, %rcx
.L1378:
	addl	$1, %esi
	movapd	%xmm2, (%rcx)
	addq	$16, %rcx
	cmpl	%esi, %edi
	jbe	.L1445
.L1137:
	addl	$8, %esi
	movapd	%xmm2, (%rcx)
	movapd	%xmm2, 16(%rcx)
	movapd	%xmm2, 32(%rcx)
	movapd	%xmm2, 48(%rcx)
	movapd	%xmm2, 64(%rcx)
	movapd	%xmm2, 80(%rcx)
	movapd	%xmm2, 96(%rcx)
	movapd	%xmm2, 112(%rcx)
	subq	$-128, %rcx
	cmpl	%esi, %edi
	ja	.L1137
.L1445:
	addl	%r12d, %edx
	cmpl	%r12d, %ebp
	je	.L1150
.L1151:
	.loc 1 257 0
	leal	1(%rdx), %r10d
	cmpl	%r8d, %r10d
	jge	.L1142
	cmpl	%edx, %r15d
	jle	.L1142
	movl	%r8d, %edi
	movslq	%edx, %rbp
	subl	%edx, %edi
	.loc 1 280 0
	addl	$8, %edx
	.loc 1 257 0
	leaq	272(%r9,%rbp,8), %r12
	subl	$2, %edi
	leal	1(%rdx), %r10d
	shrl	$3, %edi
	prefetcht0	(%r12)
	.loc 1 281 0
	movq	$0, -272(%r12)
	andl	$3, %edi
	cmpl	%r8d, %r10d
	movq	$0, -264(%r12)
	movq	$0, -256(%r12)
	movq	$0, -248(%r12)
	leaq	64(%r12), %rax
	movq	$0, -240(%r12)
	movq	$0, -232(%r12)
	movq	$0, -224(%r12)
.LVL350:
	movq	$0, -216(%r12)
	jge	.L1142
	testl	%edi, %edi
	je	.L1143
	cmpl	$1, %edi
	je	.L1376
	cmpl	$2, %edi
	.p2align 4,,3
	je	.L1377
	prefetcht0	(%rax)
	movq	$0, -272(%rax)
.LVL351:
	movq	$0, -264(%rax)
.LVL352:
	movq	$0, -256(%rax)
.LVL353:
	movq	$0, -248(%rax)
.LVL354:
	.loc 1 280 0
	addl	$8, %edx
	.loc 1 281 0
	movq	$0, -240(%rax)
.LVL355:
	movq	$0, -232(%rax)
.LVL356:
	movq	$0, -224(%rax)
.LVL357:
	movq	$0, -216(%rax)
	leaq	128(%r12), %rax
.L1377:
	prefetcht0	(%rax)
	movq	$0, -272(%rax)
.LVL358:
	movq	$0, -264(%rax)
.LVL359:
	movq	$0, -256(%rax)
.LVL360:
	movq	$0, -248(%rax)
.LVL361:
	.loc 1 280 0
	addl	$8, %edx
.LVL362:
	.loc 1 281 0
	movq	$0, -240(%rax)
.LVL363:
	movq	$0, -232(%rax)
.LVL364:
	movq	$0, -224(%rax)
.LVL365:
	movq	$0, -216(%rax)
	addq	$64, %rax
.L1376:
	.loc 1 280 0
	addl	$8, %edx
.LVL366:
	prefetcht0	(%rax)
	.loc 1 281 0
	movq	$0, -272(%rax)
.LVL367:
	.loc 1 257 0
	leal	1(%rdx), %r10d
	.loc 1 281 0
	movq	$0, -264(%rax)
	movq	$0, -256(%rax)
	movq	$0, -248(%rax)
	movq	$0, -240(%rax)
	movq	$0, -232(%rax)
	movq	$0, -224(%rax)
.LVL368:
	movq	$0, -216(%rax)
	addq	$64, %rax
	cmpl	%r8d, %r10d
	jge	.L1142
.L1143:
	.loc 1 280 0
	addl	$32, %edx
.LVL369:
	leaq	64(%rax), %r13
	leaq	128(%rax), %rcx
	.loc 1 257 0
	leal	1(%rdx), %r10d
	leaq	192(%rax), %rsi
	prefetcht0	(%rax)
	.loc 1 281 0
	movq	$0, -272(%rax)
.LVL370:
	movq	$0, -264(%rax)
	prefetcht0	0(%r13)
	movq	$0, -256(%rax)
	movq	$0, -248(%rax)
	prefetcht0	(%rcx)
	movq	$0, -240(%rax)
	movq	$0, -232(%rax)
	prefetcht0	(%rsi)
	movq	$0, -224(%rax)
	movq	$0, -216(%rax)
	movq	$0, -208(%rax)
	movq	$0, -200(%rax)
	movq	$0, -192(%rax)
	movq	$0, -184(%rax)
	movq	$0, -176(%rax)
	movq	$0, -168(%rax)
	movq	$0, -160(%rax)
	movq	$0, -152(%rax)
	movq	$0, -144(%rax)
	movq	$0, -136(%rax)
	movq	$0, -128(%rax)
	movq	$0, -120(%rax)
	movq	$0, -112(%rax)
	movq	$0, -104(%rax)
	movq	$0, -96(%rax)
	movq	$0, -88(%rax)
	movq	$0, -80(%rax)
	movq	$0, -72(%rax)
	movq	$0, -64(%rax)
	movq	$0, -56(%rax)
	movq	$0, -48(%rax)
	movq	$0, -40(%rax)
	movq	$0, -32(%rax)
.LVL371:
	movq	$0, -24(%rax)
	addq	$256, %rax
	cmpl	%r8d, %r10d
	jl	.L1143
.LVL372:
.L1142:
	movl	%r15d, %ebp
	.loc 1 257 0
	movslq	%edx, %rdx
	subl	%r10d, %ebp
	leaq	(%r9,%rdx,8), %r9
	andl	$7, %ebp
	je	.L1144
	.loc 1 281 0
	movq	$0, (%r9)
.LVL373:
	addq	$8, %r9
	.loc 1 280 0
	cmpl	%r10d, %r15d
	jle	.L1150
	addl	$1, %r10d
.LVL374:
	cmpl	$1, %ebp
	je	.L1144
	cmpl	$2, %ebp
	je	.L1371
	cmpl	$3, %ebp
	je	.L1372
	cmpl	$4, %ebp
	.p2align 4,,2
	je	.L1373
	cmpl	$5, %ebp
	.p2align 4,,2
	je	.L1374
	cmpl	$6, %ebp
	.p2align 4,,2
	je	.L1375
	.loc 1 281 0
	movq	$0, (%r9)
.LVL375:
	addl	$1, %r10d
.LVL376:
	addq	$8, %r9
.LVL377:
.L1375:
	movq	$0, (%r9)
.LVL378:
	addl	$1, %r10d
.LVL379:
	addq	$8, %r9
.LVL380:
.L1374:
	movq	$0, (%r9)
.LVL381:
	addl	$1, %r10d
.LVL382:
	addq	$8, %r9
.LVL383:
.L1373:
	movq	$0, (%r9)
.LVL384:
	addl	$1, %r10d
.LVL385:
	addq	$8, %r9
.LVL386:
.L1372:
	movq	$0, (%r9)
.LVL387:
	addl	$1, %r10d
.LVL388:
	addq	$8, %r9
.LVL389:
.L1371:
	movq	$0, (%r9)
.LVL390:
	addl	$1, %r10d
.LVL391:
	addq	$8, %r9
	jmp	.L1144
.LVL392:
	.p2align 4,,10
	.p2align 3
.L1474:
	movq	$0, 8(%r9)
	movq	$0, 16(%r9)
	addl	$8, %r10d
.LVL393:
	movq	$0, 24(%r9)
.LVL394:
	movq	$0, 32(%r9)
	movq	$0, 40(%r9)
	movq	$0, 48(%r9)
	movq	$0, 56(%r9)
	addq	$64, %r9
.L1144:
	.loc 1 280 0
	cmpl	%r10d, %r15d
	.loc 1 281 0
	movq	$0, (%r9)
.LVL395:
	.loc 1 280 0
	jg	.L1474
.LVL396:
.L1150:
	addq	$1, %r11
	.loc 1 279 0
	cmpl	%r11d, %r15d
	jg	.L1136
	movq	104(%rsp), %r8
	cmpl	$8, %r15d
	movq	120(%rsp), %r13
	movl	148(%rsp), %ebp
	movq	152(%rsp), %rbx
	movq	(%r8), %r9
	jle	.L1174
	.loc 1 257 0
	movq	96(%rsp), %r11
	leal	-9(%r15), %edi
	movq	96(%rsp), %rdx
	leaq	200(%r9), %r12
	.loc 1 284 0
	movl	$8, %ecx
	leaq	264(%r9), %rax
	.loc 1 257 0
	shrl	$3, %edi
	addq	$200, %r11
	leal	8(,%rdi,8), %r10d
	addq	$264, %rdx
	.loc 1 285 0
	movsd	-200(%r11), %xmm3
	andl	$1, %edi
	prefetcht0	(%r11)
	cmpl	%r10d, %ecx
	prefetcht0	(%r12)
	movsd	%xmm3, (%r9)
	movsd	-192(%r11), %xmm4
	movsd	%xmm4, 8(%r9)
	movsd	-184(%r11), %xmm5
	movsd	%xmm5, 16(%r9)
	movsd	-176(%r11), %xmm6
	movsd	%xmm6, 24(%r9)
	movsd	-168(%r11), %xmm7
	movsd	%xmm7, 32(%r9)
	movsd	-160(%r11), %xmm8
	movsd	%xmm8, 40(%r9)
	movsd	-152(%r11), %xmm9
	movsd	%xmm9, 48(%r9)
	movsd	-144(%r11), %xmm10
	movsd	%xmm10, 56(%r9)
	je	.L1154
	testl	%edi, %edi
	je	.L1155
	movsd	-200(%rdx), %xmm11
	prefetcht0	(%rdx)
	.loc 1 284 0
	movl	$16, %ecx
	prefetcht0	(%rax)
	.loc 1 285 0
	movsd	%xmm11, -200(%rax)
	movsd	-192(%rdx), %xmm12
	movsd	%xmm12, -192(%rax)
	movsd	-184(%rdx), %xmm13
	movsd	%xmm13, -184(%rax)
	movsd	-176(%rdx), %xmm14
	movsd	%xmm14, -176(%rax)
	movsd	-168(%rdx), %xmm15
	movsd	%xmm15, -168(%rax)
	movsd	-160(%rdx), %xmm0
	movsd	%xmm0, -160(%rax)
	movsd	-152(%rdx), %xmm1
	movsd	%xmm1, -152(%rax)
	movsd	-144(%rdx), %xmm2
	movq	96(%rsp), %rdx
	movsd	%xmm2, -144(%rax)
	leaq	328(%r9), %rax
	addq	$328, %rdx
	cmpl	%r10d, %ecx
	je	.L1154
.L1155:
	.loc 1 285 0 is_stmt 0 discriminator 2
	movsd	-200(%rdx), %xmm3
	leaq	64(%rdx), %r8
	prefetcht0	(%rdx)
	leaq	64(%rax), %rsi
	.loc 1 284 0 is_stmt 1 discriminator 2
	addl	$16, %ecx
	prefetcht0	(%rax)
	.loc 1 285 0 discriminator 2
	movsd	%xmm3, -200(%rax)
	prefetcht0	(%r8)
	prefetcht0	(%rsi)
	movsd	-192(%rdx), %xmm4
	movsd	%xmm4, -192(%rax)
	movsd	-184(%rdx), %xmm5
	movsd	%xmm5, -184(%rax)
	movsd	-176(%rdx), %xmm6
	movsd	%xmm6, -176(%rax)
	movsd	-168(%rdx), %xmm7
	movsd	%xmm7, -168(%rax)
	movsd	-160(%rdx), %xmm8
	movsd	%xmm8, -160(%rax)
	movsd	-152(%rdx), %xmm9
	movsd	%xmm9, -152(%rax)
	movsd	-144(%rdx), %xmm10
	movsd	%xmm10, -144(%rax)
	movsd	-136(%rdx), %xmm11
	movsd	%xmm11, -136(%rax)
	movsd	-128(%rdx), %xmm12
	movsd	%xmm12, -128(%rax)
	movsd	-120(%rdx), %xmm13
	movsd	%xmm13, -120(%rax)
	movsd	-112(%rdx), %xmm14
	movsd	%xmm14, -112(%rax)
	movsd	-104(%rdx), %xmm15
	movsd	%xmm15, -104(%rax)
	movsd	-96(%rdx), %xmm0
	movsd	%xmm0, -96(%rax)
	movsd	-88(%rdx), %xmm1
	movsd	%xmm1, -88(%rax)
	movsd	-80(%rdx), %xmm2
	subq	$-128, %rdx
	movsd	%xmm2, -80(%rax)
	subq	$-128, %rax
	cmpl	%r10d, %ecx
	jne	.L1155
.L1154:
	.loc 1 257 0
	movq	96(%rsp), %r12
	movslq	%ecx, %r11
	movl	%ecx, %edi
	salq	$3, %r11
	notl	%edi
	leal	1(%rcx), %edx
	leal	(%rdi,%r15), %r10d
	addq	%r11, %r9
	movl	$1, %eax
	addq	%r11, %r12
	.loc 1 285 0
	movsd	(%r12), %xmm3
	andl	$7, %r10d
	.loc 1 284 0
	cmpl	%edx, %r15d
	.loc 1 285 0
	movsd	%xmm3, (%r9)
	.loc 1 284 0
	jle	.L1448
	testl	%r10d, %r10d
	je	.L1156
	cmpl	$1, %r10d
	je	.L1365
	cmpl	$2, %r10d
	je	.L1366
	cmpl	$3, %r10d
	je	.L1367
	cmpl	$4, %r10d
	je	.L1368
	cmpl	$5, %r10d
	je	.L1369
	cmpl	$6, %r10d
	je	.L1370
	.loc 1 285 0
	movsd	8(%r12), %xmm4
	movl	$2, %eax
	movsd	%xmm4, 8(%r9)
.L1370:
	movsd	(%r12,%rax,8), %xmm5
	movsd	%xmm5, (%r9,%rax,8)
	addq	$1, %rax
.L1369:
	movsd	(%r12,%rax,8), %xmm6
	movsd	%xmm6, (%r9,%rax,8)
	addq	$1, %rax
.L1368:
	movsd	(%r12,%rax,8), %xmm7
	movsd	%xmm7, (%r9,%rax,8)
	addq	$1, %rax
.L1367:
	movsd	(%r12,%rax,8), %xmm8
	movsd	%xmm8, (%r9,%rax,8)
	addq	$1, %rax
.L1366:
	movsd	(%r12,%rax,8), %xmm9
	movsd	%xmm9, (%r9,%rax,8)
	addq	$1, %rax
.L1365:
	movsd	(%r12,%rax,8), %xmm10
	movsd	%xmm10, (%r9,%rax,8)
	addq	$1, %rax
	.loc 1 257 0
	leal	(%rcx,%rax), %r8d
	.loc 1 284 0
	cmpl	%r8d, %r15d
	jle	.L1448
.L1156:
	.loc 1 285 0
	movsd	(%r12,%rax,8), %xmm11
	leaq	1(%rax), %rsi
	leaq	2(%rax), %r11
	leaq	3(%rax), %rdi
	leaq	4(%rax), %r10
	movsd	%xmm11, (%r9,%rax,8)
	leaq	5(%rax), %rdx
	leaq	6(%rax), %r8
	movsd	(%r12,%rsi,8), %xmm12
	movsd	%xmm12, (%r9,%rsi,8)
	leaq	7(%rax), %rsi
	addq	$8, %rax
	movsd	(%r12,%r11,8), %xmm13
	movsd	%xmm13, (%r9,%r11,8)
	.loc 1 257 0
	leal	(%rcx,%rax), %r11d
	.loc 1 285 0
	movsd	(%r12,%rdi,8), %xmm14
	.loc 1 284 0
	cmpl	%r11d, %r15d
	.loc 1 285 0
	movsd	%xmm14, (%r9,%rdi,8)
	movsd	(%r12,%r10,8), %xmm15
	movsd	%xmm15, (%r9,%r10,8)
	movsd	(%r12,%rdx,8), %xmm0
	movsd	%xmm0, (%r9,%rdx,8)
	movsd	(%r12,%r8,8), %xmm1
	movsd	%xmm1, (%r9,%r8,8)
	movsd	(%r12,%rsi,8), %xmm2
	movsd	%xmm2, (%r9,%rsi,8)
	.loc 1 284 0
	jg	.L1156
.L1448:
.LVL397:
	.loc 1 288 0 discriminator 1
	cmpl	$1, %r15d
	jle	.L1135
	.loc 1 257 0
	movl	112(%rsp), %r9d
	movq	104(%rsp), %rcx
	leal	-9(%rbp), %eax
	subl	$2, %r15d
.LVL398:
	movq	%rbx, %rdi
	shrl	$3, %eax
	movl	%r15d, 96(%rsp)
	addq	$8, %rcx
	leaq	8(%r13,%r9,8), %r12
	movq	%rcx, %r15
.LVL399:
	movq	%r12, 104(%rsp)
	leal	8(,%rax,8), %r12d
.LVL400:
	.p2align 4,,10
	.p2align 3
.L1157:
	.loc 1 291 0 discriminator 1
	testl	%ebp, %ebp
	jle	.L1170
.LBB365:
.LBB366:
	.loc 1 1492 0 discriminator 2
	movq	(%rdi), %r10
	.loc 1 1493 0 discriminator 2
	movabsq	$4730756183288445817, %rax
	movq	104(%rsp), %rbx
	imulq	%r10
	movq	%r10, %r8
	subq	%r13, %rbx
	sarq	$63, %r8
	subq	$8, %rbx
	shrq	$3, %rbx
	andl	$1, %ebx
.LVL401:
	sarq	$15, %rdx
	subq	%r8, %rdx
.LVL402:
	.loc 1 1494 0 discriminator 2
	imulq	$-127773, %rdx, %rsi
	imulq	$-2836, %rdx, %rcx
	addq	%r10, %rsi
	imulq	$16807, %rsi, %r11
	addq	%rcx, %r11
.LVL403:
	.loc 1 1495 0 discriminator 2
	leaq	2147483647(%r11), %r9
	testq	%r11, %r11
	cmovs	%r9, %r11
.LVL404:
	.loc 1 1497 0 discriminator 2
	cvtsi2sdq	%r11, %xmm0
	.loc 1 1496 0 discriminator 2
	movq	%r11, (%rdi)
.LVL405:
.LBE366:
.LBE365:
	.loc 1 292 0 discriminator 2
	movq	%rbx, 80(%rsp)
	movq	%rdi, 64(%rsp)
	leaq	8(%r13), %rbx
.LBB373:
.LBB367:
	.loc 1 1497 0 discriminator 2
	mulsd	.LC68(%rip), %xmm0
.LBE367:
.LBE373:
	.loc 1 292 0 discriminator 2
	call	_Z12CumNormalInvd
.LVL406:
	.loc 1 291 0 discriminator 2
	cmpq	104(%rsp), %rbx
	.loc 1 292 0 discriminator 2
	movsd	%xmm0, 0(%r13)
.LVL407:
	.loc 1 291 0 discriminator 2
	movq	80(%rsp), %r10
	movq	64(%rsp), %rdi
	je	.L1170
	testq	%r10, %r10
	je	.L1456
.LVL408:
.LBB374:
.LBB368:
	.loc 1 1492 0
	movq	(%rdi), %rbx
	.loc 1 1493 0
	movabsq	$4730756183288445817, %rax
	imulq	%rbx
	movq	%rbx, %r8
	sarq	$63, %r8
	sarq	$15, %rdx
	subq	%r8, %rdx
	.loc 1 1494 0
	imulq	$-127773, %rdx, %rsi
	imulq	$-2836, %rdx, %rcx
	addq	%rbx, %rsi
	leaq	16(%r13), %rbx
	imulq	$16807, %rsi, %r11
	addq	%rcx, %r11
	.loc 1 1495 0
	leaq	2147483647(%r11), %r9
	testq	%r11, %r11
	cmovs	%r9, %r11
	.loc 1 1497 0
	cvtsi2sdq	%r11, %xmm0
	.loc 1 1496 0
	movq	%r11, (%rdi)
.LBE368:
.LBE374:
	.loc 1 292 0
	movq	%rdi, 64(%rsp)
.LBB375:
.LBB369:
	.loc 1 1497 0
	mulsd	.LC68(%rip), %xmm0
.LBE369:
.LBE375:
	.loc 1 292 0
	call	_Z12CumNormalInvd
.LVL409:
	.loc 1 291 0
	cmpq	104(%rsp), %rbx
	.loc 1 292 0
	movsd	%xmm0, 8(%r13)
	.loc 1 291 0
	movq	64(%rsp), %rdi
	je	.L1170
.L1456:
	movl	%r12d, 112(%rsp)
	movq	%rbx, %r12
	movq	104(%rsp), %rbx
	movl	%ebp, 120(%rsp)
	movq	%rdi, %rbp
.L1186:
.LVL410:
.LBB376:
.LBB370:
	.loc 1 1492 0 discriminator 2
	movq	0(%rbp), %r10
	.loc 1 1493 0 discriminator 2
	movabsq	$4730756183288445817, %rax
	imulq	%r10
	movq	%r10, %r8
	sarq	$63, %r8
	sarq	$15, %rdx
	subq	%r8, %rdx
	.loc 1 1494 0 discriminator 2
	imulq	$-127773, %rdx, %rsi
	imulq	$-2836, %rdx, %rcx
	addq	%rsi, %r10
	imulq	$16807, %r10, %r11
	addq	%r11, %rcx
	.loc 1 1495 0 discriminator 2
	leaq	2147483647(%rcx), %r9
	testq	%rcx, %rcx
	cmovs	%r9, %rcx
	.loc 1 1497 0 discriminator 2
	cvtsi2sdq	%rcx, %xmm0
	.loc 1 1496 0 discriminator 2
	movq	%rcx, 0(%rbp)
	.loc 1 1497 0 discriminator 2
	mulsd	.LC68(%rip), %xmm0
.LBE370:
.LBE376:
	.loc 1 292 0 discriminator 2
	call	_Z12CumNormalInvd
.LVL411:
.LBB377:
.LBB371:
	.loc 1 1492 0 discriminator 2
	movq	0(%rbp), %rdi
	.loc 1 1493 0 discriminator 2
	movabsq	$4730756183288445817, %rax
.LBE371:
.LBE377:
	.loc 1 292 0 discriminator 2
	movsd	%xmm0, (%r12)
.LBB378:
.LBB372:
	.loc 1 1493 0 discriminator 2
	imulq	%rdi
	movq	%rdi, %r10
	sarq	$63, %r10
	sarq	$15, %rdx
	subq	%r10, %rdx
	.loc 1 1494 0 discriminator 2
	imulq	$-127773, %rdx, %r8
	imulq	$-2836, %rdx, %r11
	addq	%r8, %rdi
	imulq	$16807, %rdi, %rsi
	addq	%rsi, %r11
	.loc 1 1495 0 discriminator 2
	leaq	2147483647(%r11), %rcx
	testq	%r11, %r11
	cmovs	%rcx, %r11
	.loc 1 1497 0 discriminator 2
	cvtsi2sdq	%r11, %xmm0
	.loc 1 1496 0 discriminator 2
	movq	%r11, 0(%rbp)
	.loc 1 1497 0 discriminator 2
	mulsd	.LC68(%rip), %xmm0
.LBE372:
.LBE378:
	.loc 1 292 0 discriminator 2
	call	_Z12CumNormalInvd
.LVL412:
	movsd	%xmm0, 8(%r12)
	addq	$16, %r12
	.loc 1 291 0 discriminator 2
	cmpq	%rbx, %r12
	jne	.L1186
	movq	%rbp, %rdi
	movl	112(%rsp), %r12d
	movl	120(%rsp), %ebp
.LVL413:
.L1170:
	.loc 1 294 0 discriminator 1
	movl	96(%rsp), %ebx
	testl	%ebx, %ebx
	js	.L1161
	movl	96(%rsp), %ebx
	movq	128(%rsp), %r9
	.loc 1 294 0 is_stmt 0
	xorl	%r11d, %r11d
	movq	%rdi, 112(%rsp)
	sqrtsd	88(%rsp), %xmm4
.LVL414:
	.p2align 4,,10
	.p2align 3
.L1160:
	.loc 1 297 0 is_stmt 1 discriminator 1
	testl	%ebp, %ebp
	leaq	0(,%r11,8), %rax
	xorpd	%xmm5, %xmm5
	jle	.L1163
	.loc 1 297 0 is_stmt 0
	xorl	%r8d, %r8d
	cmpl	$8, %ebp
	xorpd	%xmm3, %xmm3
	jle	.L1165
	.loc 1 298 0 is_stmt 1
	movq	(%r14), %r8
	movq	8(%r14), %rsi
	.loc 1 257 0
	leaq	136(%r14), %rdi
	.loc 1 298 0
	movq	16(%r14), %rcx
	xorpd	%xmm6, %xmm6
	prefetcht0	(%rdi)
	movq	24(%r14), %rdi
	.loc 1 257 0
	leaq	136(%r13), %rdx
	.loc 1 298 0
	movsd	(%r8,%r11,8), %xmm3
	movq	40(%r14), %r8
	leal	-8(%r12), %r10d
	movsd	(%rsi,%r11,8), %xmm7
	prefetcht0	(%rdx)
	movq	32(%r14), %rdx
	mulsd	0(%r13), %xmm3
	movq	48(%r14), %rsi
	shrl	$3, %r10d
	mulsd	8(%r13), %xmm7
	andl	$1, %r10d
	movsd	(%rcx,%r11,8), %xmm8
	movq	56(%r14), %rcx
	movsd	(%rdi,%r11,8), %xmm9
	mulsd	16(%r13), %xmm8
	mulsd	24(%r13), %xmm9
	addsd	%xmm6, %xmm3
.LVL415:
	movsd	(%rdx,%r11,8), %xmm10
	movsd	(%r8,%r11,8), %xmm11
	.loc 1 297 0
	movl	$8, %r8d
	.loc 1 298 0
	mulsd	32(%r13), %xmm10
	cmpl	%r12d, %r8d
	leaq	200(%r13), %rdx
	mulsd	40(%r13), %xmm11
	addsd	%xmm7, %xmm3
.LVL416:
	movsd	(%rsi,%r11,8), %xmm12
	movsd	(%rcx,%r11,8), %xmm13
	leaq	200(%r14), %rcx
	mulsd	48(%r13), %xmm12
	mulsd	56(%r13), %xmm13
	addsd	%xmm8, %xmm3
.LVL417:
	addsd	%xmm9, %xmm3
.LVL418:
	addsd	%xmm10, %xmm3
.LVL419:
	addsd	%xmm11, %xmm3
.LVL420:
	addsd	%xmm12, %xmm3
.LVL421:
	addsd	%xmm13, %xmm3
.LVL422:
	je	.L1165
	testl	%r10d, %r10d
	je	.L1164
	movq	-136(%rcx), %r10
	movq	-128(%rcx), %rdi
	prefetcht0	(%rcx)
	movq	-120(%rcx), %r8
.LVL423:
	movq	-112(%rcx), %rsi
	prefetcht0	(%rdx)
	movsd	(%r10,%rax), %xmm14
	movq	-104(%rcx), %r10
	movsd	(%rdi,%rax), %xmm15
	movq	-96(%rcx), %rdi
	mulsd	-136(%rdx), %xmm14
	mulsd	-128(%rdx), %xmm15
	movsd	(%r8,%rax), %xmm0
	movq	-88(%rcx), %r8
	movsd	(%rsi,%rax), %xmm1
	movq	-80(%rcx), %rcx
	mulsd	-120(%rdx), %xmm0
	mulsd	-112(%rdx), %xmm1
	addsd	%xmm14, %xmm3
.LVL424:
	movsd	(%r10,%rax), %xmm2
	movsd	(%rdi,%rax), %xmm5
	mulsd	-104(%rdx), %xmm2
	mulsd	-96(%rdx), %xmm5
	addsd	%xmm15, %xmm3
	movsd	(%r8,%rax), %xmm6
	movsd	(%rcx,%rax), %xmm7
	.loc 1 297 0
	movl	$16, %r8d
	.loc 1 298 0
	mulsd	-88(%rdx), %xmm6
	cmpl	%r12d, %r8d
	leaq	264(%r14), %rcx
	mulsd	-80(%rdx), %xmm7
	leaq	264(%r13), %rdx
	addsd	%xmm0, %xmm3
	addsd	%xmm1, %xmm3
	addsd	%xmm2, %xmm3
	addsd	%xmm5, %xmm3
	addsd	%xmm6, %xmm3
	addsd	%xmm7, %xmm3
.LVL425:
	je	.L1165
.L1164:
	.loc 1 298 0 is_stmt 0 discriminator 2
	movq	-136(%rcx), %rsi
	movq	-128(%rcx), %r10
	.loc 1 297 0 is_stmt 1 discriminator 2
	addl	$16, %r8d
.LVL426:
	.loc 1 298 0 discriminator 2
	movq	-120(%rcx), %rdi
	prefetcht0	(%rcx)
	prefetcht0	(%rdx)
	movsd	(%rsi,%rax), %xmm8
	movq	-112(%rcx), %rsi
	movsd	(%rdi,%rax), %xmm9
	movq	-96(%rcx), %rdi
	mulsd	-136(%rdx), %xmm8
	mulsd	-120(%rdx), %xmm9
	movsd	(%rsi,%rax), %xmm10
	movq	-88(%rcx), %rsi
	movsd	(%rdi,%rax), %xmm12
	leaq	64(%rcx), %rdi
	mulsd	-112(%rdx), %xmm10
	mulsd	-96(%rdx), %xmm12
	prefetcht0	(%rdi)
	movq	-64(%rcx), %rdi
	addsd	%xmm3, %xmm8
.LVL427:
	movsd	(%r10,%rax), %xmm3
	movq	-104(%rcx), %r10
	movsd	(%rsi,%rax), %xmm13
	mulsd	-128(%rdx), %xmm3
	leaq	64(%rdx), %rsi
	mulsd	-88(%rdx), %xmm13
	movsd	(%r10,%rax), %xmm11
	movq	-80(%rcx), %r10
	prefetcht0	(%rsi)
	movsd	(%rdi,%rax), %xmm15
	movq	-56(%rcx), %rsi
	mulsd	-104(%rdx), %xmm11
	movq	-40(%rcx), %rdi
	movsd	(%r10,%rax), %xmm14
	movq	-72(%rcx), %r10
	addsd	%xmm3, %xmm8
	mulsd	-64(%rdx), %xmm15
	mulsd	-80(%rdx), %xmm14
	movsd	(%r10,%rax), %xmm3
	movq	-48(%rcx), %r10
	movsd	(%rsi,%rax), %xmm0
	movq	-32(%rcx), %rsi
	addsd	%xmm9, %xmm8
	mulsd	-72(%rdx), %xmm3
	mulsd	-56(%rdx), %xmm0
	movsd	(%r10,%rax), %xmm1
	movq	-24(%rcx), %r10
	movsd	(%rdi,%rax), %xmm2
	movq	-16(%rcx), %rdi
	subq	$-128, %rcx
	addsd	%xmm10, %xmm8
	mulsd	-48(%rdx), %xmm1
	mulsd	-40(%rdx), %xmm2
	movsd	(%rsi,%rax), %xmm5
	movsd	(%r10,%rax), %xmm6
	addsd	%xmm11, %xmm8
	mulsd	-32(%rdx), %xmm5
	mulsd	-24(%rdx), %xmm6
	movsd	(%rdi,%rax), %xmm7
	addsd	%xmm12, %xmm8
	mulsd	-16(%rdx), %xmm7
	subq	$-128, %rdx
	cmpl	%r12d, %r8d
	addsd	%xmm13, %xmm8
	addsd	%xmm14, %xmm8
	addsd	%xmm8, %xmm3
	addsd	%xmm15, %xmm3
	addsd	%xmm0, %xmm3
	addsd	%xmm1, %xmm3
	addsd	%xmm2, %xmm3
	addsd	%xmm5, %xmm3
	addsd	%xmm6, %xmm3
	addsd	%xmm7, %xmm3
.LVL428:
	jne	.L1164
.LVL429:
.L1165:
	.loc 1 257 0
	movslq	%r8d, %rcx
	movl	%r8d, %edx
	salq	$3, %rcx
	notl	%edx
	leaq	(%r14,%rcx), %rsi
	addq	%r13, %rcx
	leal	(%rdx,%rbp), %edi
	movl	$1, %edx
	.loc 1 298 0
	movq	(%rsi), %r10
	andl	$7, %edi
	movsd	(%r10,%rax), %xmm5
	.loc 1 257 0
	leal	1(%r8), %r10d
	.loc 1 298 0
	mulsd	(%rcx), %xmm5
	.loc 1 297 0
	cmpl	%r10d, %ebp
	.loc 1 298 0
	addsd	%xmm3, %xmm5
.LVL430:
	.loc 1 297 0
	jle	.L1163
	testl	%edi, %edi
	je	.L1162
	cmpl	$1, %edi
	je	.L1359
	cmpl	$2, %edi
	.p2align 4,,3
	je	.L1360
	cmpl	$3, %edi
	.p2align 4,,2
	je	.L1361
	cmpl	$4, %edi
	.p2align 4,,2
	je	.L1362
	cmpl	$5, %edi
	.p2align 4,,2
	je	.L1363
	cmpl	$6, %edi
	.p2align 4,,2
	je	.L1364
	.loc 1 298 0
	movq	8(%rsi), %rdx
	movsd	(%rdx,%rax), %xmm8
	movl	$2, %edx
	mulsd	8(%rcx), %xmm8
	addsd	%xmm8, %xmm5
.LVL431:
.L1364:
	movq	(%rsi,%rdx,8), %rdi
	movsd	(%rdi,%rax), %xmm3
	mulsd	(%rcx,%rdx,8), %xmm3
	addq	$1, %rdx
	addsd	%xmm3, %xmm5
.L1363:
	movq	(%rsi,%rdx,8), %r10
	movsd	(%r10,%rax), %xmm9
	mulsd	(%rcx,%rdx,8), %xmm9
	addq	$1, %rdx
	addsd	%xmm9, %xmm5
.L1362:
	movq	(%rsi,%rdx,8), %rdi
	movsd	(%rdi,%rax), %xmm10
	mulsd	(%rcx,%rdx,8), %xmm10
	addq	$1, %rdx
	addsd	%xmm10, %xmm5
.L1361:
	movq	(%rsi,%rdx,8), %r10
	movsd	(%r10,%rax), %xmm11
	mulsd	(%rcx,%rdx,8), %xmm11
	addq	$1, %rdx
	addsd	%xmm11, %xmm5
.L1360:
	movq	(%rsi,%rdx,8), %rdi
	movsd	(%rdi,%rax), %xmm12
	mulsd	(%rcx,%rdx,8), %xmm12
	addq	$1, %rdx
	addsd	%xmm12, %xmm5
.L1359:
	movq	(%rsi,%rdx,8), %r10
	movsd	(%r10,%rax), %xmm13
	mulsd	(%rcx,%rdx,8), %xmm13
	addq	$1, %rdx
	.loc 1 257 0
	leal	(%r8,%rdx), %edi
	.loc 1 297 0
	cmpl	%edi, %ebp
	.loc 1 298 0
	addsd	%xmm13, %xmm5
	.loc 1 297 0
	jle	.L1163
.L1162:
	.loc 1 298 0
	movq	(%rsi,%rdx,8), %r10
	leaq	1(%rdx), %rdi
	movsd	(%r10,%rax), %xmm14
	movq	(%rsi,%rdi,8), %r10
	mulsd	(%rcx,%rdx,8), %xmm14
	movsd	(%r10,%rax), %xmm15
	mulsd	(%rcx,%rdi,8), %xmm15
	leaq	2(%rdx), %rdi
	movq	(%rsi,%rdi,8), %r10
	addsd	%xmm14, %xmm5
	movsd	(%r10,%rax), %xmm0
	mulsd	(%rcx,%rdi,8), %xmm0
	leaq	3(%rdx), %rdi
	addsd	%xmm15, %xmm5
	movq	(%rsi,%rdi,8), %r10
	movsd	(%r10,%rax), %xmm1
	addsd	%xmm0, %xmm5
	mulsd	(%rcx,%rdi,8), %xmm1
	leaq	4(%rdx), %rdi
	movq	(%rsi,%rdi,8), %r10
	movsd	(%r10,%rax), %xmm2
	addsd	%xmm1, %xmm5
	mulsd	(%rcx,%rdi,8), %xmm2
	leaq	5(%rdx), %rdi
	movq	(%rsi,%rdi,8), %r10
	movsd	(%r10,%rax), %xmm6
	addsd	%xmm2, %xmm5
	mulsd	(%rcx,%rdi,8), %xmm6
	leaq	6(%rdx), %rdi
	movq	(%rsi,%rdi,8), %r10
	movsd	(%r10,%rax), %xmm7
	addsd	%xmm6, %xmm5
	mulsd	(%rcx,%rdi,8), %xmm7
	leaq	7(%rdx), %rdi
	addq	$8, %rdx
	movq	(%rsi,%rdi,8), %r10
	movsd	(%r10,%rax), %xmm8
	addsd	%xmm7, %xmm5
	mulsd	(%rcx,%rdi,8), %xmm8
	.loc 1 257 0
	leal	(%r8,%rdx), %edi
	.loc 1 297 0
	cmpl	%edi, %ebp
	.loc 1 298 0
	addsd	%xmm8, %xmm5
	.loc 1 297 0
	jg	.L1162
.L1163:
	.loc 1 299 0
	movsd	88(%rsp), %xmm3
	addq	(%r15), %rax
	ucomisd	%xmm4, %xmm4
	mulsd	(%r9,%r11,8), %xmm3
	movq	-8(%r15), %r8
	.loc 1 257 0
	leaq	1(%r11), %rcx
	.loc 1 299 0
	movapd	%xmm4, %xmm0
	addsd	(%r8,%rcx,8), %xmm3
	jp	.L1475
.L1166:
	mulsd	%xmm0, %xmm5
	.loc 1 294 0
	cmpl	%ecx, %ebx
	.loc 1 299 0
	addsd	%xmm3, %xmm5
	movsd	%xmm5, (%rax)
	.loc 1 294 0
	jl	.L1450
	movq	%rcx, %r11
	jmp	.L1160
	.p2align 4,,10
	.p2align 3
.L1450:
	movq	112(%rsp), %rdi
.L1161:
	subl	$1, 96(%rsp)
	addq	$8, %r15
	.loc 1 288 0
	cmpl	$-1, 96(%rsp)
	jne	.L1157
.LVL432:
.L1135:
.LBB379:
.LBB380:
	.loc 1 1428 0
	movq	136(%rsp), %rdi
	call	free
.LVL433:
.LBE380:
.LBE379:
.LBE387:
	.loc 1 307 0
	addq	$168, %rsp
.LCFI98:
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	$1, %eax
	popq	%rbx
.LCFI99:
	.cfi_def_cfa_offset 48
	popq	%rbp
.LCFI100:
	.cfi_def_cfa_offset 40
	popq	%r12
.LCFI101:
	.cfi_def_cfa_offset 32
	popq	%r13
.LCFI102:
	.cfi_def_cfa_offset 24
	popq	%r14
.LCFI103:
	.cfi_def_cfa_offset 16
.LVL434:
	popq	%r15
.LCFI104:
	.cfi_def_cfa_offset 8
	ret
.LVL435:
.L1172:
.LCFI105:
	.cfi_restore_state
	.loc 1 257 0
	xorl	%r10d, %r10d
	xorl	%r13d, %r13d
	jmp	.L1148
.LVL436:
.L1174:
.LBB388:
	.loc 1 279 0
	xorl	%ecx, %ecx
	jmp	.L1154
.LVL437:
.L1171:
.LBE388:
	.loc 1 257 0
	xorl	%edx, %edx
	jmp	.L1147
.LVL438:
.L1475:
.LBB389:
	.loc 1 299 0
	movsd	88(%rsp), %xmm0
	movq	%rax, 80(%rsp)
	movq	%rcx, 56(%rsp)
	movsd	%xmm5, 16(%rsp)
	movq	%r9, 8(%rsp)
	movsd	%xmm4, 32(%rsp)
	movsd	%xmm3, 64(%rsp)
	call	sqrt
.LVL439:
	movq	8(%rsp), %r9
	movsd	64(%rsp), %xmm3
	movq	56(%rsp), %rcx
	movsd	32(%rsp), %xmm4
	movq	80(%rsp), %rax
	movsd	16(%rsp), %xmm5
	jmp	.L1166
.LVL440:
.L1473:
.LBB381:
.LBB363:
.LBB361:
	.loc 1 1418 0
	movl	$.LC99, %edi
	call	_Z7nrerrorPKc
.LVL441:
.LBE361:
.LBE363:
.LBE381:
.LBE389:
	.cfi_endproc
.LFE81:
	.size	_Z19HJM_SimPath_ForwardPPdiidS_S_S0_Pl, .-_Z19HJM_SimPath_ForwardPPdiidS_S_S0_Pl
	.p2align 4,,15
	.globl	_Z20Discount_Factors_optPdidS_
	.type	_Z20Discount_Factors_optPdidS_, @function
_Z20Discount_Factors_optPdidS_:
.LFB85:
	.loc 1 405 0
	.cfi_startproc
.LVL442:
.LBB396:
	.loc 1 410 0
	cvtsi2sd	%esi, %xmm1
.LBE396:
	.loc 1 405 0
	pushq	%r15
.LCFI106:
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
.LBB405:
	.loc 1 413 0
	leal	-2(%rsi), %eax
.LBE405:
	.loc 1 405 0
	pushq	%r14
.LCFI107:
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
.LBB406:
	.loc 1 413 0
	cltq
.LBE406:
	.loc 1 405 0
	pushq	%r13
.LCFI108:
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
.LCFI109:
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
.LCFI110:
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
.LCFI111:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%esi, %ebx
.LBB407:
	.loc 1 410 0
	divsd	%xmm1, %xmm0
.LVL443:
.LBE407:
	.loc 1 405 0
	subq	$72, %rsp
.LCFI112:
	.cfi_def_cfa_offset 128
	.loc 1 405 0
	movq	%rdi, 40(%rsp)
.LBB408:
.LBB397:
.LBB398:
.LBB399:
	.loc 1 1417 0
	leaq	16(,%rax,8), %rdi
.LVL444:
	movq	%rdx, 8(%rsp)
	movsd	%xmm0, 16(%rsp)
	call	malloc
.LVL445:
	.loc 1 1418 0
	testq	%rax, %rax
	.loc 1 1417 0
	movq	%rax, 56(%rsp)
.LVL446:
	.loc 1 1418 0
	movq	8(%rsp), %rdx
	movsd	16(%rsp), %xmm0
	je	.L1958
	movq	%rax, %r14
	.loc 1 413 0
	addq	$8, %r14
.LVL447:
.LBE399:
.LBE398:
.LBE397:
	.loc 1 416 0
	testl	%ebx, %ebx
	jle	.L1519
	.loc 1 401 0
	movq	40(%rsp), %rcx
.LBE408:
	movl	%ebx, %edi
.LBB409:
	salq	$60, %rcx
	shrq	$63, %rcx
	cmpl	%ecx, %ebx
	cmovb	%ebx, %ecx
.LBE409:
	cmpl	$6, %ebx
	cmova	%ecx, %edi
	testl	%edi, %edi
	je	.L1520
	cmpl	$8, %edi
	jbe	.L1521
.LBB410:
	leal	-9(%rdi), %esi
	movq	40(%rsp), %rax
.LVL448:
	.loc 1 417 0
	movabsq	$4607182418800017408, %r9
	movabsq	$4607182418800017408, %rcx
	movabsq	$4607182418800017408, %rbp
	movabsq	$4607182418800017408, %r11
	.loc 1 401 0
	shrl	$3, %esi
	.loc 1 417 0
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %r13
	.loc 1 401 0
	leaq	1(%rsi), %r10
	addq	$232, %rax
	.loc 1 417 0
	movabsq	$4607182418800017408, %rsi
	movabsq	$4607182418800017408, %r15
	movq	%r9, -224(%rax)
	movq	%rcx, -184(%rax)
	.loc 1 401 0
	salq	$6, %r10
	.loc 1 417 0
	movq	%rsi, -176(%rax)
	prefetcht0	(%rax)
	leaq	-64(%r10), %r8
	movq	%rbp, -232(%rax)
.LVL449:
	movq	%r11, -216(%rax)
	movq	%r12, -208(%rax)
	movq	%r13, -200(%rax)
	movl	$64, %ecx
	movq	%r15, -192(%rax)
	movq	40(%rsp), %rax
	shrq	$6, %r8
	andl	$3, %r8d
	.loc 1 416 0
	movl	$8, %esi
	movl	$8, %r9d
	addq	$296, %rax
	cmpq	%r10, %rcx
	je	.L1481
	testq	%r8, %r8
	je	.L1482
	cmpq	$1, %r8
	je	.L1845
	cmpq	$2, %r8
	je	.L1846
	.loc 1 417 0
	movabsq	$4607182418800017408, %rcx
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %rbp
	movabsq	$4607182418800017408, %r9
	movabsq	$4607182418800017408, %r11
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %r13
	movabsq	$4607182418800017408, %r15
	movq	%rcx, -176(%rax)
	prefetcht0	(%rax)
	movq	%r8, -232(%rax)
	movq	%rbp, -224(%rax)
	movq	%r9, -216(%rax)
	movq	%r11, -208(%rax)
	.loc 1 416 0
	movl	$16, %esi
	.loc 1 417 0
	movq	%r12, -200(%rax)
	movq	%r13, -192(%rax)
	movl	$128, %ecx
	movq	%r15, -184(%rax)
	movq	40(%rsp), %rax
	addq	$360, %rax
.L1846:
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %rbp
	movabsq	$4607182418800017408, %r9
	movq	%r8, -232(%rax)
	movabsq	$4607182418800017408, %r11
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %r13
	movabsq	$4607182418800017408, %r15
	movabsq	$4607182418800017408, %r8
	prefetcht0	(%rax)
	movq	%rbp, -224(%rax)
	movq	%r9, -216(%rax)
	movq	%r11, -208(%rax)
	movq	%r12, -200(%rax)
	.loc 1 416 0
	addl	$8, %esi
	.loc 1 417 0
	movq	%r13, -192(%rax)
	movq	%r15, -184(%rax)
	addq	$64, %rcx
	movq	%r8, -176(%rax)
	addq	$64, %rax
.L1845:
	movabsq	$4607182418800017408, %rbp
	movabsq	$4607182418800017408, %r9
	movabsq	$4607182418800017408, %r11
	movq	%rbp, -232(%rax)
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %r13
	movabsq	$4607182418800017408, %r15
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %rbp
	addq	$64, %rcx
	movq	%r9, -224(%rax)
	.loc 1 416 0
	addl	$8, %esi
	prefetcht0	(%rax)
	.loc 1 417 0
	movq	%r11, -216(%rax)
	movq	%r12, -208(%rax)
	movq	%r13, -200(%rax)
	movq	%r15, -192(%rax)
	movl	%esi, %r9d
	movq	%r8, -184(%rax)
	movq	%rbp, -176(%rax)
	addq	$64, %rax
	cmpq	%r10, %rcx
	je	.L1481
.L1482:
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %r15
	movabsq	$4607182418800017408, %rbp
	movabsq	$4607182418800017408, %r11
	movq	%r12, -224(%rax)
	movabsq	$4607182418800017408, %r13
	leaq	64(%rax), %r12
	movq	%r15, -208(%rax)
	movabsq	$4607182418800017408, %r8
	movq	%rbp, -192(%rax)
	movabsq	$4607182418800017408, %r9
	movabsq	$4607182418800017408, %r15
	movabsq	$4607182418800017408, %rbp
	movq	%r11, -232(%rax)
	movq	%r13, -216(%rax)
	movq	%r8, -200(%rax)
	movq	%r9, -184(%rax)
	movabsq	$4607182418800017408, %r11
	movabsq	$4607182418800017408, %r13
	movq	%r15, -160(%rax)
	movabsq	$4607182418800017408, %r8
	leaq	128(%rax), %r15
	movq	%rbp, -144(%rax)
	movabsq	$4607182418800017408, %r9
	movabsq	$4607182418800017408, %rbp
	movq	%r11, -176(%rax)
	movq	%r13, -168(%rax)
	movq	%r8, -152(%rax)
	movq	%r9, -136(%rax)
	movabsq	$4607182418800017408, %r11
	movabsq	$4607182418800017408, %r13
	movabsq	$4607182418800017408, %r8
	movq	%rbp, -96(%rax)
	movabsq	$4607182418800017408, %r9
	leaq	192(%rax), %rbp
	prefetcht0	(%r12)
	movabsq	$4607182418800017408, %r12
	movq	%r11, -128(%rax)
	movq	%r13, -112(%rax)
	movq	%r12, -120(%rax)
	movq	%r8, -104(%rax)
	movabsq	$4607182418800017408, %r11
	movq	%r9, -88(%rax)
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %r13
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %r9
	prefetcht0	(%r15)
	movabsq	$4607182418800017408, %r15
	movq	%r11, -80(%rax)
	movq	%r12, -72(%rax)
	movq	%r13, -64(%rax)
	movq	%r15, -56(%rax)
	prefetcht0	0(%rbp)
	movq	%r8, -48(%rax)
	movq	%r9, -40(%rax)
	movabsq	$4607182418800017408, %r11
	movabsq	$4607182418800017408, %r9
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %r13
	movabsq	$4607182418800017408, %r15
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %rbp
	addq	$256, %rcx
	movq	%r9, 16(%rax)
	.loc 1 416 0
	addl	$32, %esi
	prefetcht0	(%rax)
	.loc 1 417 0
	movq	%r11, -32(%rax)
	movq	%r12, -24(%rax)
	movq	%r13, -16(%rax)
	movq	%r15, -8(%rax)
	movl	%esi, %r9d
	movq	%r8, (%rax)
	movq	%rbp, 8(%rax)
	addq	$256, %rax
	cmpq	%r10, %rcx
	jne	.L1482
.L1481:
.LVL450:
	.loc 1 401 0
	movq	40(%rsp), %rax
	movl	%r9d, %r13d
	movslq	%esi, %r10
	notl	%r13d
	leal	1(%r9), %r11d
	.loc 1 417 0
	movabsq	$4607182418800017408, %rcx
	addl	%edi, %r13d
	.loc 1 401 0
	leaq	(%rax,%r10,8), %r12
	andl	$7, %r13d
	cmpl	%r11d, %edi
	.loc 1 417 0
	movq	%rcx, (%r12)
	leaq	8(%r12), %rax
	.loc 1 401 0
	leal	1(%rsi), %ecx
	jbe	.L1921
	testl	%r13d, %r13d
	je	.L1483
	cmpl	$1, %r13d
	je	.L1839
	cmpl	$2, %r13d
	je	.L1840
	cmpl	$3, %r13d
	je	.L1841
	cmpl	$4, %r13d
	je	.L1842
	cmpl	$5, %r13d
	je	.L1843
	cmpl	$6, %r13d
	je	.L1844
	.loc 1 417 0
	movabsq	$4607182418800017408, %r15
	.loc 1 416 0
	leal	2(%rsi), %ecx
.LVL451:
	.loc 1 417 0
	movq	%r15, (%rax)
	leaq	16(%r12), %rax
.L1844:
	movabsq	$4607182418800017408, %r8
	.loc 1 416 0
	addl	$1, %ecx
	.loc 1 417 0
	movq	%r8, (%rax)
	addq	$8, %rax
.L1843:
	movabsq	$4607182418800017408, %rbp
	.loc 1 416 0
	addl	$1, %ecx
	.loc 1 417 0
	movq	%rbp, (%rax)
	addq	$8, %rax
.L1842:
	movabsq	$4607182418800017408, %r10
	.loc 1 416 0
	addl	$1, %ecx
	.loc 1 417 0
	movq	%r10, (%rax)
	addq	$8, %rax
.L1841:
	movabsq	$4607182418800017408, %r12
	.loc 1 416 0
	addl	$1, %ecx
	.loc 1 417 0
	movq	%r12, (%rax)
	addq	$8, %rax
.L1840:
	movabsq	$4607182418800017408, %r13
	.loc 1 416 0
	addl	$1, %ecx
	.loc 1 417 0
	movq	%r13, (%rax)
	addq	$8, %rax
.L1839:
	.loc 1 416 0
	addl	$1, %ecx
	.loc 1 417 0
	movabsq	$4607182418800017408, %r11
	.loc 1 401 0
	leal	(%r9,%rcx), %r15d
	.loc 1 417 0
	movq	%r11, (%rax)
	addq	$8, %rax
	subl	%esi, %r15d
	cmpl	%r15d, %edi
	jbe	.L1921
.L1483:
	movabsq	$4607182418800017408, %rbp
	.loc 1 416 0
	addl	$8, %ecx
	.loc 1 417 0
	movabsq	$4607182418800017408, %r8
	movq	%rbp, 8(%rax)
	.loc 1 401 0
	leal	(%r9,%rcx), %ebp
	.loc 1 417 0
	movq	%r8, (%rax)
	movabsq	$4607182418800017408, %r10
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %r13
	movabsq	$4607182418800017408, %r11
	movabsq	$4607182418800017408, %r15
	movabsq	$4607182418800017408, %r8
	subl	%esi, %ebp
	movq	%r10, 16(%rax)
	movq	%r12, 24(%rax)
	movq	%r13, 32(%rax)
	movq	%r11, 40(%rax)
	movq	%r15, 48(%rax)
	movq	%r8, 56(%rax)
	addq	$64, %rax
	cmpl	%ebp, %edi
	ja	.L1483
.L1921:
	cmpl	%edi, %ebx
	je	.L1484
.L1480:
	movl	%ebx, %r11d
	movl	%edi, %esi
	subl	%edi, %r11d
	movl	%r11d, %r8d
	shrl	%r8d
	movl	%r8d, %ebp
	addl	%ebp, %ebp
	je	.L1485
	movq	40(%rsp), %r9
	cmpl	$4, %r8d
	.loc 1 401 0
	leal	-3(%r8), %r12d
	leaq	(%r9,%rsi,8), %rax
	jbe	.L1522
	leal	-5(%r8), %edi
	movapd	.LC26(%rip), %xmm2
	prefetcht0	640(%rax)
	movl	$4, %r10d
	movl	$4, %r15d
	shrl	$2, %edi
	andl	$3, %edi
	.loc 1 417 0
	movapd	%xmm2, (%rax)
	movapd	%xmm2, 16(%rax)
	movapd	%xmm2, 32(%rax)
	movapd	%xmm2, 48(%rax)
	.loc 1 401 0
	addq	$64, %rax
	cmpl	$5, %r12d
	jbe	.L1486
	testl	%edi, %edi
	je	.L1487
	cmpl	$1, %edi
	je	.L1837
	cmpl	$2, %edi
	.p2align 4,,3
	je	.L1838
	prefetcht0	640(%rax)
	.loc 1 417 0
	movapd	%xmm2, (%rax)
	movl	$8, %r15d
	movapd	%xmm2, 16(%rax)
	movapd	%xmm2, 32(%rax)
	movapd	%xmm2, 48(%rax)
	.loc 1 401 0
	addq	$64, %rax
.L1838:
	prefetcht0	640(%rax)
	.loc 1 417 0
	movapd	%xmm2, (%rax)
	addl	$4, %r15d
	movapd	%xmm2, 16(%rax)
	movapd	%xmm2, 32(%rax)
	movapd	%xmm2, 48(%rax)
	.loc 1 401 0
	addq	$64, %rax
.L1837:
	leal	5(%r15), %r13d
	leal	4(%r15), %r10d
	prefetcht0	640(%rax)
	.loc 1 417 0
	movapd	%xmm2, (%rax)
	movl	%r10d, %r15d
	movapd	%xmm2, 16(%rax)
	movapd	%xmm2, 32(%rax)
	movapd	%xmm2, 48(%rax)
	.loc 1 401 0
	addq	$64, %rax
	cmpl	%r12d, %r13d
	jae	.L1486
.L1487:
	leal	17(%r15), %esi
	leal	16(%r15), %r10d
	prefetcht0	640(%rax)
	.loc 1 417 0 discriminator 2
	movapd	%xmm2, (%rax)
	prefetcht0	704(%rax)
	prefetcht0	768(%rax)
	prefetcht0	832(%rax)
	movl	%r10d, %r15d
	movapd	%xmm2, 16(%rax)
	movapd	%xmm2, 32(%rax)
	movapd	%xmm2, 48(%rax)
	movapd	%xmm2, 64(%rax)
	movapd	%xmm2, 80(%rax)
	movapd	%xmm2, 96(%rax)
	movapd	%xmm2, 112(%rax)
	movapd	%xmm2, 128(%rax)
	movapd	%xmm2, 144(%rax)
	movapd	%xmm2, 160(%rax)
	movapd	%xmm2, 176(%rax)
	movapd	%xmm2, 192(%rax)
	movapd	%xmm2, 208(%rax)
	movapd	%xmm2, 224(%rax)
	movapd	%xmm2, 240(%rax)
	.loc 1 401 0 discriminator 2
	addq	$256, %rax
	cmpl	%r12d, %esi
	jb	.L1487
.L1486:
	movl	%r10d, %r9d
	leal	1(%r10), %edi
	leaq	16(%rax), %r12
	notl	%r9d
	addl	%r8d, %r9d
	andl	$7, %r9d
	cmpl	%edi, %r8d
	.loc 1 417 0
	movapd	%xmm2, (%rax)
	jbe	.L1924
	testl	%r9d, %r9d
	je	.L1492
	cmpl	$1, %r9d
	je	.L1831
	cmpl	$2, %r9d
	je	.L1832
	cmpl	$3, %r9d
	je	.L1833
	cmpl	$4, %r9d
	je	.L1834
	cmpl	$5, %r9d
	je	.L1835
	cmpl	$6, %r9d
	je	.L1836
	movapd	%xmm2, (%r12)
	leal	2(%r10), %edi
	leaq	32(%rax), %r12
.L1836:
	movapd	%xmm2, (%r12)
	addl	$1, %edi
	addq	$16, %r12
.L1835:
	movapd	%xmm2, (%r12)
	addl	$1, %edi
	addq	$16, %r12
.L1834:
	movapd	%xmm2, (%r12)
	addl	$1, %edi
	addq	$16, %r12
.L1833:
	movapd	%xmm2, (%r12)
	addl	$1, %edi
	addq	$16, %r12
.L1832:
	movapd	%xmm2, (%r12)
	addl	$1, %edi
	addq	$16, %r12
.L1831:
	addl	$1, %edi
	movapd	%xmm2, (%r12)
	addq	$16, %r12
	cmpl	%edi, %r8d
	jbe	.L1924
.L1492:
	addl	$8, %edi
	movapd	%xmm2, (%r12)
	movapd	%xmm2, 16(%r12)
	movapd	%xmm2, 32(%r12)
	movapd	%xmm2, 48(%r12)
	movapd	%xmm2, 64(%r12)
	movapd	%xmm2, 80(%r12)
	movapd	%xmm2, 96(%r12)
	movapd	%xmm2, 112(%r12)
	subq	$-128, %r12
	cmpl	%edi, %r8d
	ja	.L1492
.L1924:
	addl	%ebp, %ecx
	cmpl	%ebp, %r11d
	je	.L1484
.L1485:
	cmpl	%ecx, %ebx
	.loc 1 401 0
	leal	-7(%rbx), %r9d
	leal	1(%rcx), %esi
	jle	.L1489
	cmpl	%r9d, %esi
	jge	.L1489
	movq	40(%rsp), %r13
	movslq	%ecx, %r10
	movl	%r9d, %r8d
	subl	%ecx, %r8d
	.loc 1 417 0
	movabsq	$4607182418800017408, %rsi
	.loc 1 416 0
	addl	$8, %ecx
	subl	$2, %r8d
	.loc 1 417 0
	movabsq	$4607182418800017408, %rax
	movabsq	$4607182418800017408, %r15
	.loc 1 401 0
	leaq	272(%r13,%r10,8), %rdi
	shrl	$3, %r8d
	.loc 1 417 0
	movabsq	$4607182418800017408, %r12
	andl	$3, %r8d
	movabsq	$4607182418800017408, %rbp
	movabsq	$4607182418800017408, %r11
	movq	%rsi, -256(%rdi)
	.loc 1 401 0
	leal	1(%rcx), %esi
	.loc 1 417 0
	movabsq	$4607182418800017408, %r10
	movabsq	$4607182418800017408, %r13
	movq	%rax, -264(%rdi)
	prefetcht0	(%rdi)
	cmpl	%esi, %r9d
	movq	%r15, -272(%rdi)
	movq	%r12, -248(%rdi)
	movq	%rbp, -240(%rdi)
	movq	%r11, -232(%rdi)
	leaq	64(%rdi), %rax
	movq	%r10, -224(%rdi)
	movq	%r13, -216(%rdi)
	jle	.L1489
	testl	%r8d, %r8d
	je	.L1490
	cmpl	$1, %r8d
	je	.L1829
	cmpl	$2, %r8d
	je	.L1830
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %r15
	movabsq	$4607182418800017408, %rsi
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %rbp
	movabsq	$4607182418800017408, %r11
	movabsq	$4607182418800017408, %r10
	movabsq	$4607182418800017408, %r13
	prefetcht0	(%rax)
	movq	%r8, -272(%rax)
	movq	%r15, -264(%rax)
	.loc 1 416 0
	addl	$8, %ecx
	.loc 1 417 0
	movq	%rsi, -256(%rax)
	movq	%r12, -248(%rax)
	movq	%rbp, -240(%rax)
	movq	%r11, -232(%rax)
	movq	%r10, -224(%rax)
	movq	%r13, -216(%rax)
	leaq	128(%rdi), %rax
.L1830:
	movabsq	$4607182418800017408, %rdi
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %r15
	movabsq	$4607182418800017408, %rsi
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %rbp
	movabsq	$4607182418800017408, %r11
	movabsq	$4607182418800017408, %r10
	prefetcht0	(%rax)
	movq	%rdi, -272(%rax)
	movq	%r8, -264(%rax)
	.loc 1 416 0
	addl	$8, %ecx
	.loc 1 417 0
	movq	%r15, -256(%rax)
	movq	%rsi, -248(%rax)
	movq	%r12, -240(%rax)
	movq	%rbp, -232(%rax)
	movq	%r11, -224(%rax)
	movq	%r10, -216(%rax)
	addq	$64, %rax
.L1829:
	movabsq	$4607182418800017408, %rsi
	.loc 1 416 0
	addl	$8, %ecx
	.loc 1 417 0
	movabsq	$4607182418800017408, %r13
	movq	%rsi, -240(%rax)
	.loc 1 401 0
	leal	1(%rcx), %esi
	.loc 1 417 0
	movabsq	$4607182418800017408, %rdi
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %r15
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %rbp
	movabsq	$4607182418800017408, %r11
	prefetcht0	(%rax)
	movq	%r13, -272(%rax)
	movq	%rdi, -264(%rax)
	movq	%r8, -256(%rax)
	movq	%r15, -248(%rax)
	movq	%r12, -232(%rax)
	movq	%rbp, -224(%rax)
	movq	%r11, -216(%rax)
	addq	$64, %rax
	cmpl	%esi, %r9d
	jle	.L1489
.L1490:
	leaq	64(%rax), %rsi
	movabsq	$4607182418800017408, %r10
	movabsq	$4607182418800017408, %r13
	movabsq	$4607182418800017408, %rdi
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %r15
	prefetcht0	(%rsi)
	leaq	128(%rax), %rsi
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %rbp
	movabsq	$4607182418800017408, %r11
	movq	%r10, -272(%rax)
	prefetcht0	(%rsi)
	leaq	192(%rax), %rsi
	movq	%r13, -264(%rax)
	movq	%rdi, -256(%rax)
	movq	%r8, -248(%rax)
	movabsq	$4607182418800017408, %r10
	movq	%r15, -240(%rax)
	movq	%r12, -232(%rax)
	movabsq	$4607182418800017408, %r13
	movq	%rbp, -224(%rax)
	movq	%r11, -216(%rax)
	movabsq	$4607182418800017408, %rdi
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %r15
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %rbp
	movabsq	$4607182418800017408, %r11
	.loc 1 416 0
	addl	$32, %ecx
	.loc 1 417 0
	movq	%r10, -208(%rax)
	movq	%r13, -200(%rax)
	movabsq	$4607182418800017408, %r10
	movq	%rdi, -192(%rax)
	movq	%r8, -184(%rax)
	movabsq	$4607182418800017408, %r13
	movq	%r15, -176(%rax)
	movq	%r12, -168(%rax)
	movabsq	$4607182418800017408, %rdi
	movq	%rbp, -160(%rax)
	movq	%r11, -152(%rax)
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %r15
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %rbp
	movabsq	$4607182418800017408, %r11
	prefetcht0	(%rsi)
	.loc 1 401 0
	leal	1(%rcx), %esi
	.loc 1 417 0
	movq	%r10, -144(%rax)
	movq	%r13, -136(%rax)
	movabsq	$4607182418800017408, %r10
	movq	%rdi, -128(%rax)
	movq	%r8, -120(%rax)
	movabsq	$4607182418800017408, %r13
	movq	%r15, -112(%rax)
	movq	%r12, -104(%rax)
	movabsq	$4607182418800017408, %rdi
	movq	%rbp, -96(%rax)
	movq	%r11, -88(%rax)
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %r15
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %rbp
	movabsq	$4607182418800017408, %r11
	prefetcht0	(%rax)
	movq	%r10, -80(%rax)
	movq	%r13, -72(%rax)
	movq	%rdi, -64(%rax)
	movq	%r8, -56(%rax)
	movq	%r15, -48(%rax)
	movq	%r12, -40(%rax)
	movq	%rbp, -32(%rax)
	movq	%r11, -24(%rax)
	addq	$256, %rax
	cmpl	%esi, %r9d
	jg	.L1490
.L1489:
	.loc 1 401 0
	movq	40(%rsp), %r9
	movl	%ebx, %r13d
	movslq	%ecx, %rcx
	subl	%esi, %r13d
	andl	$7, %r13d
	leaq	(%r9,%rcx,8), %rax
	je	.L1491
	.loc 1 417 0
	movabsq	$4607182418800017408, %r10
	movq	%r10, (%rax)
.LVL452:
	addq	$8, %rax
	.loc 1 416 0
	cmpl	%esi, %ebx
	jle	.L1484
	addl	$1, %esi
.LVL453:
	cmpl	$1, %r13d
	je	.L1491
	cmpl	$2, %r13d
	je	.L1824
	cmpl	$3, %r13d
	je	.L1825
	cmpl	$4, %r13d
	je	.L1826
	cmpl	$5, %r13d
	je	.L1827
	cmpl	$6, %r13d
	je	.L1828
	.loc 1 417 0
	movabsq	$4607182418800017408, %rdi
	addl	$1, %esi
.LVL454:
	movq	%rdi, (%rax)
.LVL455:
	addq	$8, %rax
.L1828:
	movabsq	$4607182418800017408, %r8
	addl	$1, %esi
	movq	%r8, (%rax)
	addq	$8, %rax
.L1827:
	movabsq	$4607182418800017408, %r15
	addl	$1, %esi
	movq	%r15, (%rax)
	addq	$8, %rax
.L1826:
	movabsq	$4607182418800017408, %r12
	addl	$1, %esi
	movq	%r12, (%rax)
	addq	$8, %rax
.L1825:
	movabsq	$4607182418800017408, %rbp
	addl	$1, %esi
	movq	%rbp, (%rax)
	addq	$8, %rax
.L1824:
	movabsq	$4607182418800017408, %r11
	addl	$1, %esi
	movq	%r11, (%rax)
	addq	$8, %rax
	jmp	.L1491
.LVL456:
	.p2align 4,,10
	.p2align 3
.L1959:
	movabsq	$4607182418800017408, %r10
	movabsq	$4607182418800017408, %rcx
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %r13
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %rdi
	movabsq	$4607182418800017408, %r15
	movq	%r10, 8(%rax)
	movq	%rcx, 16(%rax)
	movq	%r8, 24(%rax)
	movq	%r13, 32(%rax)
	addl	$8, %esi
.LVL457:
	movq	%r12, 40(%rax)
.LVL458:
	movq	%rdi, 48(%rax)
	movq	%r15, 56(%rax)
	addq	$64, %rax
.L1491:
	movabsq	$4607182418800017408, %rcx
	.loc 1 416 0
	cmpl	%esi, %ebx
	.loc 1 417 0
	movq	%rcx, (%rax)
.LVL459:
	.loc 1 416 0
	jg	.L1959
.LVL460:
.L1484:
	.loc 1 420 0
	movl	%ebx, %ebp
	subl	$1, %ebp
	je	.L1519
	.loc 1 401 0
	movq	%rdx, %rsi
.LBE410:
	movl	%ebp, %r9d
.LBB411:
	salq	$60, %rsi
	shrq	$63, %rsi
	cmpl	%esi, %ebp
	cmovbe	%ebp, %esi
.LBE411:
	cmpl	$3, %ebp
	cmova	%esi, %r9d
	testl	%r9d, %r9d
	je	.L1523
	cmpl	$8, %r9d
	jbe	.L1524
.LBB412:
	leal	-9(%r9), %r10d
	movq	56(%rsp), %rax
	leaq	152(%rdx), %r13
	movsd	.LC13(%rip), %xmm11
.LBE412:
	xorl	%r15d, %r15d
.LBB413:
	shrl	$3, %r10d
.LBE413:
	xorl	%edi, %edi
.LBB414:
	leaq	1(%r10), %r8
	addq	$160, %rax
	salq	$6, %r8
.LVL461:
	.p2align 4,,10
	.p2align 3
.L1497:
	.loc 1 420 0
	movsd	-152(%r13), %xmm3
	addq	$64, %r15
	prefetcht0	0(%r13)
	addl	$8, %edi
	prefetcht0	(%rax)
	xorpd	%xmm11, %xmm3
	movl	%edi, %r12d
	mulsd	%xmm0, %xmm3
	movsd	%xmm3, -152(%rax)
	movsd	-144(%r13), %xmm4
	xorpd	%xmm11, %xmm4
	mulsd	%xmm0, %xmm4
	movsd	%xmm4, -144(%rax)
	movsd	-136(%r13), %xmm5
	xorpd	%xmm11, %xmm5
	mulsd	%xmm0, %xmm5
	movsd	%xmm5, -136(%rax)
	movsd	-128(%r13), %xmm6
	xorpd	%xmm11, %xmm6
	mulsd	%xmm0, %xmm6
	movsd	%xmm6, -128(%rax)
	movsd	-120(%r13), %xmm7
	xorpd	%xmm11, %xmm7
	mulsd	%xmm0, %xmm7
	movsd	%xmm7, -120(%rax)
	movsd	-112(%r13), %xmm8
	xorpd	%xmm11, %xmm8
	mulsd	%xmm0, %xmm8
	movsd	%xmm8, -112(%rax)
	movsd	-104(%r13), %xmm9
	xorpd	%xmm11, %xmm9
	mulsd	%xmm0, %xmm9
	movsd	%xmm9, -104(%rax)
.LVL462:
	movsd	-96(%r13), %xmm10
	addq	$64, %r13
	xorpd	%xmm11, %xmm10
	mulsd	%xmm0, %xmm10
	movsd	%xmm10, -96(%rax)
	addq	$64, %rax
	cmpq	%r8, %r15
	jne	.L1497
.LVL463:
.L1496:
	.loc 1 401 0
	movslq	%edi, %rcx
	movl	%r12d, %r11d
	leal	1(%r12), %r10d
	salq	$3, %rcx
	notl	%r11d
	movl	$8, %eax
	leaq	(%rdx,%rcx), %r13
	addl	%r9d, %r11d
	addq	%r14, %rcx
	andl	$7, %r11d
	cmpl	%r10d, %r9d
	leal	1(%rdi), %esi
	.loc 1 420 0
	movsd	0(%r13), %xmm12
	xorpd	%xmm11, %xmm12
	mulsd	%xmm0, %xmm12
	movsd	%xmm12, (%rcx)
	jbe	.L1925
	testl	%r11d, %r11d
	je	.L1498
	cmpl	$1, %r11d
	je	.L1818
	cmpl	$2, %r11d
	je	.L1819
	cmpl	$3, %r11d
	je	.L1820
	cmpl	$4, %r11d
	je	.L1821
	cmpl	$5, %r11d
	je	.L1822
	cmpl	$6, %r11d
	je	.L1823
	movsd	8(%r13), %xmm13
	leal	2(%rdi), %esi
.LVL464:
	movl	$16, %eax
	xorpd	%xmm11, %xmm13
	mulsd	%xmm0, %xmm13
	movsd	%xmm13, 8(%rcx)
.L1823:
	movsd	0(%r13,%rax), %xmm14
	addl	$1, %esi
	xorpd	%xmm11, %xmm14
	mulsd	%xmm0, %xmm14
	movsd	%xmm14, (%rcx,%rax)
	addq	$8, %rax
.L1822:
	movsd	0(%r13,%rax), %xmm15
	addl	$1, %esi
	xorpd	%xmm11, %xmm15
	mulsd	%xmm0, %xmm15
	movsd	%xmm15, (%rcx,%rax)
	addq	$8, %rax
.L1821:
	movsd	0(%r13,%rax), %xmm1
	addl	$1, %esi
	xorpd	%xmm11, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, (%rcx,%rax)
	addq	$8, %rax
.L1820:
	movsd	0(%r13,%rax), %xmm2
	addl	$1, %esi
	xorpd	%xmm11, %xmm2
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, (%rcx,%rax)
	addq	$8, %rax
.L1819:
	movsd	0(%r13,%rax), %xmm3
	addl	$1, %esi
	xorpd	%xmm11, %xmm3
	mulsd	%xmm0, %xmm3
	movsd	%xmm3, (%rcx,%rax)
	addq	$8, %rax
.L1818:
	movsd	0(%r13,%rax), %xmm4
	addl	$1, %esi
	.loc 1 401 0
	leal	(%r12,%rsi), %r8d
	.loc 1 420 0
	xorpd	%xmm11, %xmm4
	subl	%edi, %r8d
	mulsd	%xmm0, %xmm4
	movsd	%xmm4, (%rcx,%rax)
	addq	$8, %rax
	cmpl	%r8d, %r9d
	jbe	.L1925
.L1498:
	movsd	0(%r13,%rax), %xmm5
	addl	$8, %esi
	movsd	8(%r13,%rax), %xmm6
	.loc 1 401 0
	leal	(%r12,%rsi), %r15d
	.loc 1 420 0
	movsd	16(%r13,%rax), %xmm7
	movsd	24(%r13,%rax), %xmm8
	subl	%edi, %r15d
	movsd	32(%r13,%rax), %xmm9
	movsd	40(%r13,%rax), %xmm10
	movsd	48(%r13,%rax), %xmm12
	movsd	56(%r13,%rax), %xmm13
	xorpd	%xmm11, %xmm5
	xorpd	%xmm11, %xmm6
	xorpd	%xmm11, %xmm7
	xorpd	%xmm11, %xmm8
	xorpd	%xmm11, %xmm9
	xorpd	%xmm11, %xmm10
	xorpd	%xmm11, %xmm12
	xorpd	%xmm11, %xmm13
	mulsd	%xmm0, %xmm5
	mulsd	%xmm0, %xmm6
	mulsd	%xmm0, %xmm7
	mulsd	%xmm0, %xmm8
	mulsd	%xmm0, %xmm9
	movsd	%xmm5, (%rcx,%rax)
	mulsd	%xmm0, %xmm10
	movsd	%xmm6, 8(%rcx,%rax)
	mulsd	%xmm0, %xmm12
	movsd	%xmm7, 16(%rcx,%rax)
	mulsd	%xmm0, %xmm13
	movsd	%xmm8, 24(%rcx,%rax)
	movsd	%xmm9, 32(%rcx,%rax)
	movsd	%xmm10, 40(%rcx,%rax)
	movsd	%xmm12, 48(%rcx,%rax)
	movsd	%xmm13, 56(%rcx,%rax)
	addq	$64, %rax
	cmpl	%r15d, %r9d
	ja	.L1498
.L1925:
	cmpl	%r9d, %ebp
	je	.L1957
.L1495:
	movl	%ebp, %r12d
	movl	%r9d, %ecx
	subl	%r9d, %r12d
	movl	%r12d, %r9d
	shrl	%r9d
	movl	%r9d, %r10d
	addl	%r10d, %r10d
	je	.L1500
	movapd	%xmm0, %xmm11
	salq	$3, %rcx
	leaq	(%rdx,%rcx), %rax
	addq	%r14, %rcx
	cmpl	$4, %r9d
	unpcklpd	%xmm11, %xmm11
	.loc 1 401 0
	leal	-3(%r9), %r13d
	movapd	%xmm11, %xmm1
	jbe	.L1525
	movapd	.LC102(%rip), %xmm2
	leal	-5(%r9), %edi
	prefetcht0	368(%rax)
	movl	$4, %r11d
	movl	$4, %r8d
	.loc 1 420 0
	movapd	(%rax), %xmm14
	shrl	$2, %edi
	andl	$1, %edi
	movapd	16(%rax), %xmm15
	xorpd	%xmm2, %xmm14
	movapd	32(%rax), %xmm3
	xorpd	%xmm2, %xmm15
	movapd	48(%rax), %xmm4
	xorpd	%xmm2, %xmm3
	mulpd	%xmm11, %xmm14
	.loc 1 401 0
	addq	$64, %rax
	.loc 1 420 0
	xorpd	%xmm2, %xmm4
	mulpd	%xmm11, %xmm15
	mulpd	%xmm11, %xmm3
	movlpd	%xmm14, (%rcx)
	movhpd	%xmm14, 8(%rcx)
	mulpd	%xmm11, %xmm4
	movlpd	%xmm15, 16(%rcx)
	movhpd	%xmm15, 24(%rcx)
	movlpd	%xmm3, 32(%rcx)
	movhpd	%xmm3, 40(%rcx)
	movlpd	%xmm4, 48(%rcx)
	movhpd	%xmm4, 56(%rcx)
	.loc 1 401 0
	addq	$64, %rcx
	cmpl	$5, %r13d
	jbe	.L1501
	testl	%edi, %edi
	je	.L1502
	.loc 1 420 0
	movapd	(%rax), %xmm5
	prefetcht0	368(%rax)
	movl	$8, %r11d
	movl	$8, %r8d
	movapd	16(%rax), %xmm6
	xorpd	%xmm2, %xmm5
	movapd	32(%rax), %xmm7
	xorpd	%xmm2, %xmm6
	movapd	48(%rax), %xmm8
	xorpd	%xmm2, %xmm7
	mulpd	%xmm11, %xmm5
	.loc 1 401 0
	addq	$64, %rax
	.loc 1 420 0
	xorpd	%xmm2, %xmm8
	mulpd	%xmm11, %xmm6
	mulpd	%xmm11, %xmm7
	movlpd	%xmm5, (%rcx)
	movhpd	%xmm5, 8(%rcx)
	mulpd	%xmm11, %xmm8
	movlpd	%xmm6, 16(%rcx)
	movhpd	%xmm6, 24(%rcx)
	movlpd	%xmm7, 32(%rcx)
	movhpd	%xmm7, 40(%rcx)
	movlpd	%xmm8, 48(%rcx)
	movhpd	%xmm8, 56(%rcx)
	.loc 1 401 0
	addq	$64, %rcx
	cmpl	$9, %r13d
	jbe	.L1501
.L1502:
	.loc 1 420 0 discriminator 2
	movapd	(%rax), %xmm9
	leal	9(%r8), %r15d
	prefetcht0	368(%rax)
	leal	8(%r8), %r11d
	prefetcht0	432(%rax)
	movapd	16(%rax), %xmm10
	xorpd	%xmm2, %xmm9
	movl	%r11d, %r8d
	movapd	32(%rax), %xmm12
	xorpd	%xmm2, %xmm10
	mulpd	%xmm1, %xmm9
	movapd	48(%rax), %xmm13
	xorpd	%xmm2, %xmm12
	movapd	64(%rax), %xmm11
	xorpd	%xmm2, %xmm13
	mulpd	%xmm1, %xmm10
	movapd	80(%rax), %xmm14
	xorpd	%xmm2, %xmm11
	movapd	96(%rax), %xmm15
	xorpd	%xmm2, %xmm14
	mulpd	%xmm1, %xmm12
	movapd	112(%rax), %xmm3
	.loc 1 401 0 discriminator 2
	subq	$-128, %rax
	.loc 1 420 0 discriminator 2
	xorpd	%xmm2, %xmm15
	xorpd	%xmm2, %xmm3
	movlpd	%xmm9, (%rcx)
	mulpd	%xmm1, %xmm13
	movhpd	%xmm9, 8(%rcx)
	movlpd	%xmm10, 16(%rcx)
	mulpd	%xmm1, %xmm11
	movhpd	%xmm10, 24(%rcx)
	movlpd	%xmm12, 32(%rcx)
	mulpd	%xmm1, %xmm14
	movhpd	%xmm12, 40(%rcx)
	movlpd	%xmm13, 48(%rcx)
	mulpd	%xmm1, %xmm15
	movhpd	%xmm13, 56(%rcx)
	movlpd	%xmm11, 64(%rcx)
	mulpd	%xmm1, %xmm3
	movhpd	%xmm11, 72(%rcx)
	movlpd	%xmm14, 80(%rcx)
	movhpd	%xmm14, 88(%rcx)
	movlpd	%xmm15, 96(%rcx)
	movhpd	%xmm15, 104(%rcx)
	movlpd	%xmm3, 112(%rcx)
	movhpd	%xmm3, 120(%rcx)
	.loc 1 401 0 discriminator 2
	subq	$-128, %rcx
	cmpl	%r13d, %r15d
	jb	.L1502
.L1501:
	.loc 1 420 0
	movapd	(%rax), %xmm4
	movl	%r11d, %r13d
	notl	%r13d
	leal	1(%r11), %edi
	movl	$16, %r8d
	xorpd	%xmm2, %xmm4
	addl	%r9d, %r13d
	andl	$7, %r13d
	cmpl	%edi, %r9d
	mulpd	%xmm1, %xmm4
	movlpd	%xmm4, (%rcx)
	movhpd	%xmm4, 8(%rcx)
	jbe	.L1928
	testl	%r13d, %r13d
	je	.L1507
	cmpl	$1, %r13d
	je	.L1812
	cmpl	$2, %r13d
	je	.L1813
	cmpl	$3, %r13d
	je	.L1814
	cmpl	$4, %r13d
	je	.L1815
	cmpl	$5, %r13d
	je	.L1816
	cmpl	$6, %r13d
	je	.L1817
	movapd	16(%rax), %xmm5
	leal	2(%r11), %edi
	movl	$32, %r8d
	xorpd	%xmm2, %xmm5
	mulpd	%xmm1, %xmm5
	movlpd	%xmm5, 16(%rcx)
	movhpd	%xmm5, 24(%rcx)
.L1817:
	movapd	(%rax,%r8), %xmm6
	addl	$1, %edi
	xorpd	%xmm2, %xmm6
	mulpd	%xmm1, %xmm6
	movlpd	%xmm6, (%rcx,%r8)
	movhpd	%xmm6, 8(%rcx,%r8)
	addq	$16, %r8
.L1816:
	movapd	(%rax,%r8), %xmm7
	addl	$1, %edi
	xorpd	%xmm2, %xmm7
	mulpd	%xmm1, %xmm7
	movlpd	%xmm7, (%rcx,%r8)
	movhpd	%xmm7, 8(%rcx,%r8)
	addq	$16, %r8
.L1815:
	movapd	(%rax,%r8), %xmm8
	addl	$1, %edi
	xorpd	%xmm2, %xmm8
	mulpd	%xmm1, %xmm8
	movlpd	%xmm8, (%rcx,%r8)
	movhpd	%xmm8, 8(%rcx,%r8)
	addq	$16, %r8
.L1814:
	movapd	(%rax,%r8), %xmm9
	addl	$1, %edi
	xorpd	%xmm2, %xmm9
	mulpd	%xmm1, %xmm9
	movlpd	%xmm9, (%rcx,%r8)
	movhpd	%xmm9, 8(%rcx,%r8)
	addq	$16, %r8
.L1813:
	movapd	(%rax,%r8), %xmm10
	addl	$1, %edi
	xorpd	%xmm2, %xmm10
	mulpd	%xmm1, %xmm10
	movlpd	%xmm10, (%rcx,%r8)
	movhpd	%xmm10, 8(%rcx,%r8)
	addq	$16, %r8
.L1812:
	movapd	(%rax,%r8), %xmm12
	addl	$1, %edi
	xorpd	%xmm2, %xmm12
	mulpd	%xmm1, %xmm12
	movlpd	%xmm12, (%rcx,%r8)
	movhpd	%xmm12, 8(%rcx,%r8)
	addq	$16, %r8
	cmpl	%edi, %r9d
	jbe	.L1928
.L1507:
	movapd	(%rax,%r8), %xmm13
	addl	$8, %edi
	movapd	16(%rax,%r8), %xmm11
	xorpd	%xmm2, %xmm13
	movapd	32(%rax,%r8), %xmm14
	xorpd	%xmm2, %xmm11
	movapd	48(%rax,%r8), %xmm15
	xorpd	%xmm2, %xmm14
	movapd	64(%rax,%r8), %xmm3
	xorpd	%xmm2, %xmm15
	mulpd	%xmm1, %xmm13
	movapd	80(%rax,%r8), %xmm4
	xorpd	%xmm2, %xmm3
	movapd	96(%rax,%r8), %xmm5
	xorpd	%xmm2, %xmm4
	mulpd	%xmm1, %xmm11
	movapd	112(%rax,%r8), %xmm6
	xorpd	%xmm2, %xmm5
	xorpd	%xmm2, %xmm6
	movlpd	%xmm13, (%rcx,%r8)
	mulpd	%xmm1, %xmm14
	movhpd	%xmm13, 8(%rcx,%r8)
	movlpd	%xmm11, 16(%rcx,%r8)
	mulpd	%xmm1, %xmm15
	movhpd	%xmm11, 24(%rcx,%r8)
	mulpd	%xmm1, %xmm3
	movlpd	%xmm14, 32(%rcx,%r8)
	mulpd	%xmm1, %xmm4
	movhpd	%xmm14, 40(%rcx,%r8)
	movlpd	%xmm15, 48(%rcx,%r8)
	mulpd	%xmm1, %xmm5
	movhpd	%xmm15, 56(%rcx,%r8)
	movlpd	%xmm3, 64(%rcx,%r8)
	mulpd	%xmm1, %xmm6
	movhpd	%xmm3, 72(%rcx,%r8)
	movlpd	%xmm4, 80(%rcx,%r8)
	movhpd	%xmm4, 88(%rcx,%r8)
	movlpd	%xmm5, 96(%rcx,%r8)
	movhpd	%xmm5, 104(%rcx,%r8)
	movlpd	%xmm6, 112(%rcx,%r8)
	movhpd	%xmm6, 120(%rcx,%r8)
	subq	$-128, %r8
	cmpl	%edi, %r9d
	ja	.L1507
.L1928:
	addl	%r10d, %esi
	cmpl	%r10d, %r12d
	je	.L1957
.L1500:
	.loc 1 401 0
	leal	-8(%rbx), %r11d
	leal	1(%rsi), %eax
	cmpl	%r11d, %eax
	movl	%r11d, 52(%rsp)
	jge	.L1956
	cmpl	%esi, %ebp
	jle	.L1956
	movslq	%esi, %rcx
	movsd	.LC13(%rip), %xmm1
	leaq	160(,%rcx,8), %r15
	movl	52(%rsp), %r9d
	leaq	(%rdx,%r15), %r13
	addq	%r14, %r15
	subl	%esi, %r9d
	.loc 1 420 0
	addl	$8, %esi
	prefetcht0	(%r15)
	movsd	-160(%r13), %xmm2
	subl	$2, %r9d
	.loc 1 401 0
	leal	1(%rsi), %r8d
	shrl	$3, %r9d
	prefetcht0	0(%r13)
	leaq	64(%r13), %r10
	.loc 1 420 0
	xorpd	%xmm1, %xmm2
	andl	$1, %r9d
	cmpl	52(%rsp), %r8d
	leaq	64(%r15), %r12
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, -160(%r15)
	movsd	-152(%r13), %xmm7
	xorpd	%xmm1, %xmm7
	mulsd	%xmm0, %xmm7
	movsd	%xmm7, -152(%r15)
	movsd	-144(%r13), %xmm8
	xorpd	%xmm1, %xmm8
	mulsd	%xmm0, %xmm8
	movsd	%xmm8, -144(%r15)
	movsd	-136(%r13), %xmm9
	xorpd	%xmm1, %xmm9
	mulsd	%xmm0, %xmm9
	movsd	%xmm9, -136(%r15)
	movsd	-128(%r13), %xmm10
	xorpd	%xmm1, %xmm10
	mulsd	%xmm0, %xmm10
	movsd	%xmm10, -128(%r15)
	movsd	-120(%r13), %xmm12
	xorpd	%xmm1, %xmm12
	mulsd	%xmm0, %xmm12
	movsd	%xmm12, -120(%r15)
	movsd	-112(%r13), %xmm13
	xorpd	%xmm1, %xmm13
	mulsd	%xmm0, %xmm13
	movsd	%xmm13, -112(%r15)
	movsd	-104(%r13), %xmm11
	xorpd	%xmm1, %xmm11
	mulsd	%xmm0, %xmm11
	movsd	%xmm11, -104(%r15)
	jge	.L1504
	testl	%r9d, %r9d
	je	.L1937
	movsd	-160(%r10), %xmm14
	addl	$8, %esi
	prefetcht0	(%r10)
	.loc 1 401 0
	leal	1(%rsi), %edi
	cmpl	52(%rsp), %edi
	prefetcht0	(%r12)
	.loc 1 420 0
	xorpd	%xmm1, %xmm14
	mulsd	%xmm0, %xmm14
	movsd	%xmm14, -160(%r12)
	movsd	-152(%r10), %xmm15
	xorpd	%xmm1, %xmm15
	mulsd	%xmm0, %xmm15
	movsd	%xmm15, -152(%r12)
	movsd	-144(%r10), %xmm3
	xorpd	%xmm1, %xmm3
	mulsd	%xmm0, %xmm3
	movsd	%xmm3, -144(%r12)
	movsd	-136(%r10), %xmm4
	xorpd	%xmm1, %xmm4
	mulsd	%xmm0, %xmm4
	movsd	%xmm4, -136(%r12)
	movsd	-128(%r10), %xmm5
	xorpd	%xmm1, %xmm5
	mulsd	%xmm0, %xmm5
	movsd	%xmm5, -128(%r12)
	movsd	-120(%r10), %xmm6
	xorpd	%xmm1, %xmm6
	mulsd	%xmm0, %xmm6
	movsd	%xmm6, -120(%r12)
	movsd	-112(%r10), %xmm2
	xorpd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, -112(%r12)
	movsd	-104(%r10), %xmm7
	leaq	128(%r13), %r10
	xorpd	%xmm1, %xmm7
	mulsd	%xmm0, %xmm7
	movsd	%xmm7, -104(%r12)
	leaq	128(%r15), %r12
	jge	.L1504
.L1937:
	movl	52(%rsp), %r11d
.L1505:
	movsd	-160(%r10), %xmm8
	addl	$16, %esi
	prefetcht0	(%r10)
	.loc 1 401 0
	leal	1(%rsi), %r15d
	leaq	64(%r10), %rax
	leaq	64(%r12), %rcx
	.loc 1 420 0
	xorpd	%xmm1, %xmm8
	prefetcht0	(%r12)
	prefetcht0	(%rax)
	prefetcht0	(%rcx)
	mulsd	%xmm0, %xmm8
	movsd	%xmm8, -160(%r12)
	movsd	-152(%r10), %xmm9
	xorpd	%xmm1, %xmm9
	mulsd	%xmm0, %xmm9
	movsd	%xmm9, -152(%r12)
	movsd	-144(%r10), %xmm10
	xorpd	%xmm1, %xmm10
	mulsd	%xmm0, %xmm10
	movsd	%xmm10, -144(%r12)
	movsd	-136(%r10), %xmm12
	xorpd	%xmm1, %xmm12
	mulsd	%xmm0, %xmm12
	movsd	%xmm12, -136(%r12)
	movsd	-128(%r10), %xmm13
	xorpd	%xmm1, %xmm13
	mulsd	%xmm0, %xmm13
	movsd	%xmm13, -128(%r12)
	movsd	-120(%r10), %xmm11
	xorpd	%xmm1, %xmm11
	mulsd	%xmm0, %xmm11
	movsd	%xmm11, -120(%r12)
	movsd	-112(%r10), %xmm14
	xorpd	%xmm1, %xmm14
	mulsd	%xmm0, %xmm14
	movsd	%xmm14, -112(%r12)
	movsd	-104(%r10), %xmm15
	xorpd	%xmm1, %xmm15
	mulsd	%xmm0, %xmm15
	movsd	%xmm15, -104(%r12)
	movsd	-96(%r10), %xmm3
	xorpd	%xmm1, %xmm3
	mulsd	%xmm0, %xmm3
	movsd	%xmm3, -96(%r12)
	movsd	-88(%r10), %xmm4
	xorpd	%xmm1, %xmm4
	mulsd	%xmm0, %xmm4
	movsd	%xmm4, -88(%r12)
	movsd	-80(%r10), %xmm5
	xorpd	%xmm1, %xmm5
	mulsd	%xmm0, %xmm5
	movsd	%xmm5, -80(%r12)
	movsd	-72(%r10), %xmm6
	xorpd	%xmm1, %xmm6
	mulsd	%xmm0, %xmm6
	movsd	%xmm6, -72(%r12)
	movsd	-64(%r10), %xmm2
	xorpd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, -64(%r12)
	movsd	-56(%r10), %xmm7
	xorpd	%xmm1, %xmm7
	mulsd	%xmm0, %xmm7
	movsd	%xmm7, -56(%r12)
	movsd	-48(%r10), %xmm8
	xorpd	%xmm1, %xmm8
	mulsd	%xmm0, %xmm8
	movsd	%xmm8, -48(%r12)
	movsd	-40(%r10), %xmm9
	subq	$-128, %r10
	xorpd	%xmm1, %xmm9
	mulsd	%xmm0, %xmm9
	movsd	%xmm9, -40(%r12)
	subq	$-128, %r12
	cmpl	%r11d, %r15d
	jl	.L1505
.L1504:
	.loc 1 401 0
	movslq	%esi, %r13
	movl	%esi, %r9d
	leal	1(%rsi), %r8d
	salq	$3, %r13
	notl	%r9d
	movl	$1, %r12d
	addq	%r13, %rdx
	leal	(%r9,%rbp), %r10d
	addq	%r14, %r13
	.loc 1 420 0
	movsd	(%rdx), %xmm10
	andl	$7, %r10d
	cmpl	%r8d, %ebp
	xorpd	%xmm1, %xmm10
	mulsd	%xmm0, %xmm10
	movsd	%xmm10, 0(%r13)
	jle	.L1499
	testl	%r10d, %r10d
	je	.L1506
	cmpl	$1, %r10d
	je	.L1806
	cmpl	$2, %r10d
	je	.L1807
	cmpl	$3, %r10d
	je	.L1808
	cmpl	$4, %r10d
	je	.L1809
	cmpl	$5, %r10d
	je	.L1810
	cmpl	$6, %r10d
	je	.L1811
	movsd	8(%rdx), %xmm12
	movl	$2, %r12d
	xorpd	%xmm1, %xmm12
	mulsd	%xmm0, %xmm12
	movsd	%xmm12, 8(%r13)
.L1811:
	movsd	(%rdx,%r12,8), %xmm13
	xorpd	%xmm1, %xmm13
	mulsd	%xmm0, %xmm13
	movsd	%xmm13, 0(%r13,%r12,8)
	addq	$1, %r12
.L1810:
	movsd	(%rdx,%r12,8), %xmm11
	xorpd	%xmm1, %xmm11
	mulsd	%xmm0, %xmm11
	movsd	%xmm11, 0(%r13,%r12,8)
	addq	$1, %r12
.L1809:
	movsd	(%rdx,%r12,8), %xmm14
	xorpd	%xmm1, %xmm14
	mulsd	%xmm0, %xmm14
	movsd	%xmm14, 0(%r13,%r12,8)
	addq	$1, %r12
.L1808:
	movsd	(%rdx,%r12,8), %xmm15
	xorpd	%xmm1, %xmm15
	mulsd	%xmm0, %xmm15
	movsd	%xmm15, 0(%r13,%r12,8)
	addq	$1, %r12
.L1807:
	movsd	(%rdx,%r12,8), %xmm3
	xorpd	%xmm1, %xmm3
	mulsd	%xmm0, %xmm3
	movsd	%xmm3, 0(%r13,%r12,8)
	addq	$1, %r12
.L1806:
	movsd	(%rdx,%r12,8), %xmm4
	xorpd	%xmm1, %xmm4
	mulsd	%xmm0, %xmm4
	movsd	%xmm4, 0(%r13,%r12,8)
	addq	$1, %r12
	.loc 1 401 0
	leal	(%rsi,%r12), %edi
	.loc 1 420 0
	cmpl	%edi, %ebp
	jle	.L1499
.L1506:
	movsd	(%rdx,%r12,8), %xmm5
	leaq	1(%r12), %r11
	leaq	2(%r12), %rax
	leaq	3(%r12), %rcx
	leaq	4(%r12), %r15
	leaq	5(%r12), %r9
	leaq	6(%r12), %r10
	leaq	7(%r12), %r8
	xorpd	%xmm1, %xmm5
	movsd	(%rdx,%r11,8), %xmm6
	movsd	(%rdx,%rax,8), %xmm2
	movsd	(%rdx,%rcx,8), %xmm7
	movsd	(%rdx,%r15,8), %xmm8
	movsd	(%rdx,%r9,8), %xmm9
	movsd	(%rdx,%r10,8), %xmm10
	movsd	(%rdx,%r8,8), %xmm12
	mulsd	%xmm0, %xmm5
	xorpd	%xmm1, %xmm6
	xorpd	%xmm1, %xmm2
	xorpd	%xmm1, %xmm7
	xorpd	%xmm1, %xmm8
	movsd	%xmm5, 0(%r13,%r12,8)
	addq	$8, %r12
	xorpd	%xmm1, %xmm9
	.loc 1 401 0
	leal	(%rsi,%r12), %edi
	.loc 1 420 0
	xorpd	%xmm1, %xmm10
	xorpd	%xmm1, %xmm12
	cmpl	%edi, %ebp
	mulsd	%xmm0, %xmm6
	mulsd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm7
	mulsd	%xmm0, %xmm8
	mulsd	%xmm0, %xmm9
	movsd	%xmm6, 0(%r13,%r11,8)
	mulsd	%xmm0, %xmm10
	movsd	%xmm2, 0(%r13,%rax,8)
	mulsd	%xmm0, %xmm12
	movsd	%xmm7, 0(%r13,%rcx,8)
	movsd	%xmm8, 0(%r13,%r15,8)
	movsd	%xmm9, 0(%r13,%r9,8)
	movsd	%xmm10, 0(%r13,%r10,8)
	movsd	%xmm12, 0(%r13,%r8,8)
	jg	.L1506
.L1499:
	cmpl	$1, 52(%rsp)
	jle	.L1526
	.loc 1 401 0
	movq	56(%rsp), %r15
.LBE414:
	movl	52(%rsp), %r13d
	xorl	%r12d, %r12d
.LBB415:
	addq	$96, %r15
	.p2align 4,,10
	.p2align 3
.L1510:
	.loc 1 421 0 discriminator 2
	movsd	-88(%r15), %xmm0
	addl	$8, %r12d
	prefetcht0	(%r15)
	call	exp
.LVL465:
	movsd	%xmm0, -88(%r15)
	movsd	-80(%r15), %xmm0
	call	exp
.LVL466:
	movsd	%xmm0, -80(%r15)
	movsd	-72(%r15), %xmm0
	call	exp
.LVL467:
	movsd	%xmm0, -72(%r15)
	movsd	-64(%r15), %xmm0
	call	exp
.LVL468:
	movsd	%xmm0, -64(%r15)
	movsd	-56(%r15), %xmm0
	call	exp
.LVL469:
	movsd	%xmm0, -56(%r15)
	movsd	-48(%r15), %xmm0
	call	exp
.LVL470:
	movsd	%xmm0, -48(%r15)
	movsd	-40(%r15), %xmm0
	call	exp
.LVL471:
	movsd	%xmm0, -40(%r15)
	movsd	-32(%r15), %xmm0
	call	exp
.LVL472:
	.loc 1 401 0 discriminator 2
	leal	1(%r12), %edx
	.loc 1 421 0 discriminator 2
	movsd	%xmm0, -32(%r15)
	addq	$64, %r15
	cmpl	%r13d, %edx
	jl	.L1510
	movl	%edx, %r13d
.LVL473:
.L1509:
	movl	%ebp, %r11d
	.loc 1 401 0
	movslq	%r12d, %rsi
	subl	%r13d, %r11d
	leaq	(%r14,%rsi,8), %r15
	andl	$7, %r11d
	je	.L1511
	.loc 1 421 0
	movsd	(%r15), %xmm0
	movl	%r11d, 16(%rsp)
	call	exp
.LVL474:
	movsd	%xmm0, (%r15)
.LVL475:
	addq	$8, %r15
	cmpl	%r13d, %ebp
	movl	16(%rsp), %eax
	jle	.L1519
	addl	$1, %r13d
.LVL476:
	cmpl	$1, %eax
	je	.L1511
	cmpl	$2, %eax
	je	.L1801
	cmpl	$3, %eax
	je	.L1802
	cmpl	$4, %eax
	.p2align 4,,2
	je	.L1803
	cmpl	$5, %eax
	.p2align 4,,2
	je	.L1804
	cmpl	$6, %eax
	.p2align 4,,2
	je	.L1805
	movsd	(%r15), %xmm0
	addl	$1, %r13d
.LVL477:
	call	exp
.LVL478:
	movsd	%xmm0, (%r15)
.LVL479:
	addq	$8, %r15
.L1805:
	movsd	(%r15), %xmm0
	addl	$1, %r13d
	call	exp
.LVL480:
	movsd	%xmm0, (%r15)
	addq	$8, %r15
.L1804:
	movsd	(%r15), %xmm0
	addl	$1, %r13d
	call	exp
.LVL481:
	movsd	%xmm0, (%r15)
	addq	$8, %r15
.L1803:
	movsd	(%r15), %xmm0
	addl	$1, %r13d
	call	exp
.LVL482:
	movsd	%xmm0, (%r15)
	addq	$8, %r15
.L1802:
	movsd	(%r15), %xmm0
	addl	$1, %r13d
	call	exp
.LVL483:
	movsd	%xmm0, (%r15)
	addq	$8, %r15
.L1801:
	movsd	(%r15), %xmm0
	addl	$1, %r13d
	call	exp
.LVL484:
	movsd	%xmm0, (%r15)
	addq	$8, %r15
	jmp	.L1511
.LVL485:
	.p2align 4,,10
	.p2align 3
.L1960:
	movsd	8(%r15), %xmm0
	addl	$8, %r13d
.LVL486:
	call	exp
.LVL487:
	movsd	%xmm0, 8(%r15)
.LVL488:
	movsd	16(%r15), %xmm0
	call	exp
.LVL489:
	movsd	%xmm0, 16(%r15)
	movsd	24(%r15), %xmm0
	call	exp
.LVL490:
	movsd	%xmm0, 24(%r15)
	movsd	32(%r15), %xmm0
	call	exp
.LVL491:
	movsd	%xmm0, 32(%r15)
	movsd	40(%r15), %xmm0
	call	exp
.LVL492:
	movsd	%xmm0, 40(%r15)
	movsd	48(%r15), %xmm0
	call	exp
.LVL493:
	movsd	%xmm0, 48(%r15)
	movsd	56(%r15), %xmm0
	call	exp
.LVL494:
	movsd	%xmm0, 56(%r15)
	addq	$64, %r15
.L1511:
	movsd	(%r15), %xmm0
	call	exp
.LVL495:
	cmpl	%r13d, %ebp
	movsd	%xmm0, (%r15)
.LVL496:
	jg	.L1960
.LVL497:
.L1519:
	.loc 1 423 0 discriminator 1
	cmpl	$1, %ebx
	jle	.L1512
	.loc 1 401 0
	movq	40(%rsp), %r12
.LBE415:
	movl	$1, %r13d
.LBB416:
	addq	$8, %r12
.LVL498:
	.p2align 4,,10
	.p2align 3
.L1513:
.LBE416:
	.loc 1 401 0 is_stmt 0 discriminator 1
	xorl	%ecx, %ecx
	cmpl	$8, %r13d
	movsd	(%r12), %xmm0
	jle	.L1517
.LBB417:
	.loc 1 425 0 is_stmt 1
	mulsd	(%r14), %xmm0
.LVL499:
	.loc 1 401 0
	leal	-9(%r13), %r9d
	leaq	232(%r14), %rbp
	.loc 1 424 0
	movl	$8, %ecx
	leaq	296(%r14), %r8
	.loc 1 401 0
	shrl	$3, %r9d
	prefetcht0	0(%rbp)
	leal	8(,%r9,8), %r10d
	andl	$3, %r9d
	cmpl	%r10d, %ecx
	.loc 1 425 0
	mulsd	8(%r14), %xmm0
	mulsd	16(%r14), %xmm0
	mulsd	24(%r14), %xmm0
	mulsd	32(%r14), %xmm0
	mulsd	40(%r14), %xmm0
	mulsd	48(%r14), %xmm0
.LVL500:
	mulsd	56(%r14), %xmm0
	je	.L1517
	testl	%r9d, %r9d
	je	.L1516
	cmpl	$1, %r9d
	je	.L1799
	cmpl	$2, %r9d
	je	.L1800
	mulsd	-232(%r8), %xmm0
.LVL501:
	prefetcht0	(%r8)
	.loc 1 424 0
	movl	$16, %ecx
	.loc 1 425 0
	mulsd	-224(%r8), %xmm0
	mulsd	-216(%r8), %xmm0
	mulsd	-208(%r8), %xmm0
	mulsd	-200(%r8), %xmm0
	mulsd	-192(%r8), %xmm0
	mulsd	-184(%r8), %xmm0
.LVL502:
	mulsd	-176(%r8), %xmm0
	leaq	360(%r14), %r8
.L1800:
	mulsd	-232(%r8), %xmm0
.LVL503:
	prefetcht0	(%r8)
	.loc 1 424 0
	addl	$8, %ecx
.LVL504:
	.loc 1 425 0
	mulsd	-224(%r8), %xmm0
.LVL505:
	mulsd	-216(%r8), %xmm0
.LVL506:
	mulsd	-208(%r8), %xmm0
.LVL507:
	mulsd	-200(%r8), %xmm0
.LVL508:
	mulsd	-192(%r8), %xmm0
.LVL509:
	mulsd	-184(%r8), %xmm0
.LVL510:
	mulsd	-176(%r8), %xmm0
	addq	$64, %r8
.L1799:
	mulsd	-232(%r8), %xmm0
.LVL511:
	.loc 1 424 0
	addl	$8, %ecx
.LVL512:
	prefetcht0	(%r8)
	.loc 1 425 0
	mulsd	-224(%r8), %xmm0
.LVL513:
	mulsd	-216(%r8), %xmm0
.LVL514:
	mulsd	-208(%r8), %xmm0
.LVL515:
	mulsd	-200(%r8), %xmm0
.LVL516:
	mulsd	-192(%r8), %xmm0
.LVL517:
	mulsd	-184(%r8), %xmm0
.LVL518:
	mulsd	-176(%r8), %xmm0
	addq	$64, %r8
	cmpl	%r10d, %ecx
	je	.L1517
.L1516:
	.loc 1 425 0 is_stmt 0 discriminator 2
	mulsd	-232(%r8), %xmm0
.LVL519:
	leaq	64(%r8), %rdi
	leaq	128(%r8), %rdx
	leaq	192(%r8), %rsi
	.loc 1 424 0 is_stmt 1 discriminator 2
	addl	$32, %ecx
.LVL520:
	prefetcht0	(%r8)
	prefetcht0	(%rdi)
	prefetcht0	(%rdx)
	prefetcht0	(%rsi)
	.loc 1 425 0 discriminator 2
	mulsd	-224(%r8), %xmm0
.LVL521:
	mulsd	-216(%r8), %xmm0
.LVL522:
	mulsd	-208(%r8), %xmm0
.LVL523:
	mulsd	-200(%r8), %xmm0
.LVL524:
	mulsd	-192(%r8), %xmm0
.LVL525:
	mulsd	-184(%r8), %xmm0
.LVL526:
	mulsd	-176(%r8), %xmm0
.LVL527:
	mulsd	-168(%r8), %xmm0
	mulsd	-160(%r8), %xmm0
	mulsd	-152(%r8), %xmm0
	mulsd	-144(%r8), %xmm0
	mulsd	-136(%r8), %xmm0
	mulsd	-128(%r8), %xmm0
	mulsd	-120(%r8), %xmm0
	mulsd	-112(%r8), %xmm0
	mulsd	-104(%r8), %xmm0
	mulsd	-96(%r8), %xmm0
	mulsd	-88(%r8), %xmm0
	mulsd	-80(%r8), %xmm0
	mulsd	-72(%r8), %xmm0
	mulsd	-64(%r8), %xmm0
	mulsd	-56(%r8), %xmm0
	mulsd	-48(%r8), %xmm0
	mulsd	-40(%r8), %xmm0
	mulsd	-32(%r8), %xmm0
	mulsd	-24(%r8), %xmm0
	mulsd	-16(%r8), %xmm0
	mulsd	-8(%r8), %xmm0
	mulsd	(%r8), %xmm0
	mulsd	8(%r8), %xmm0
.LVL528:
	mulsd	16(%r8), %xmm0
	addq	$256, %r8
	cmpl	%r10d, %ecx
	jne	.L1516
.LVL529:
.L1517:
	movl	%ecx, %ebp
	.loc 1 401 0
	movslq	%ecx, %r15
	.loc 1 424 0
	leal	1(%rcx), %r9d
.LVL530:
	notl	%ebp
	.loc 1 401 0
	leaq	(%r14,%r15,8), %r11
	addl	%r13d, %ebp
	andl	$7, %ebp
	.loc 1 424 0
	cmpl	%r9d, %r13d
	.loc 1 425 0
	mulsd	(%r11), %xmm0
	leaq	8(%r11), %rax
	.loc 1 424 0
	jle	.L1930
	testl	%ebp, %ebp
	je	.L1514
	cmpl	$1, %ebp
	je	.L1793
	cmpl	$2, %ebp
	.p2align 4,,3
	je	.L1794
	cmpl	$3, %ebp
	.p2align 4,,2
	je	.L1795
	cmpl	$4, %ebp
	.p2align 4,,2
	je	.L1796
	cmpl	$5, %ebp
	.p2align 4,,2
	je	.L1797
	cmpl	$6, %ebp
	.p2align 4,,2
	je	.L1798
	.loc 1 425 0
	mulsd	8(%r11), %xmm0
	.loc 1 424 0
	leal	2(%rcx), %r9d
	leaq	16(%r11), %rax
.LVL531:
.L1798:
	.loc 1 425 0
	mulsd	(%rax), %xmm0
	.loc 1 424 0
	addl	$1, %r9d
	addq	$8, %rax
.L1797:
	.loc 1 425 0
	mulsd	(%rax), %xmm0
	.loc 1 424 0
	addl	$1, %r9d
	addq	$8, %rax
.L1796:
	.loc 1 425 0
	mulsd	(%rax), %xmm0
	.loc 1 424 0
	addl	$1, %r9d
	addq	$8, %rax
.L1795:
	.loc 1 425 0
	mulsd	(%rax), %xmm0
	.loc 1 424 0
	addl	$1, %r9d
	addq	$8, %rax
.L1794:
	.loc 1 425 0
	mulsd	(%rax), %xmm0
	.loc 1 424 0
	addl	$1, %r9d
	addq	$8, %rax
.L1793:
	addl	$1, %r9d
	.loc 1 425 0
	mulsd	(%rax), %xmm0
	addq	$8, %rax
	.loc 1 424 0
	cmpl	%r9d, %r13d
	jle	.L1930
.L1514:
	.loc 1 425 0
	mulsd	(%rax), %xmm0
	.loc 1 424 0
	addl	$8, %r9d
	.loc 1 425 0
	mulsd	8(%rax), %xmm0
	mulsd	16(%rax), %xmm0
	mulsd	24(%rax), %xmm0
	mulsd	32(%rax), %xmm0
	mulsd	40(%rax), %xmm0
	mulsd	48(%rax), %xmm0
	mulsd	56(%rax), %xmm0
	addq	$64, %rax
	.loc 1 424 0
	cmpl	%r9d, %r13d
	jg	.L1514
.L1930:
	.loc 1 423 0
	addl	$1, %r13d
.LVL532:
	movsd	%xmm0, (%r12)
	addq	$8, %r12
	cmpl	%ebx, %r13d
	jne	.L1513
.LVL533:
.L1512:
.LBB402:
.LBB403:
	.loc 1 1428 0
	movq	56(%rsp), %rdi
	call	free
.LVL534:
.LBE403:
.LBE402:
.LBE417:
	.loc 1 430 0
	addq	$72, %rsp
.LCFI113:
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	$1, %eax
	popq	%rbx
.LCFI114:
	.cfi_def_cfa_offset 48
.LVL535:
	popq	%rbp
.LCFI115:
	.cfi_def_cfa_offset 40
	popq	%r12
.LCFI116:
	.cfi_def_cfa_offset 32
	popq	%r13
.LCFI117:
	.cfi_def_cfa_offset 24
	popq	%r14
.LCFI118:
	.cfi_def_cfa_offset 16
	popq	%r15
.LCFI119:
	.cfi_def_cfa_offset 8
	ret
.LVL536:
	.p2align 4,,10
	.p2align 3
.L1956:
.LCFI120:
	.cfi_restore_state
	movsd	.LC13(%rip), %xmm1
	jmp	.L1504
.LVL537:
.L1524:
	.loc 1 401 0
	xorl	%r12d, %r12d
	xorl	%edi, %edi
	movsd	.LC13(%rip), %xmm11
	jmp	.L1496
.LVL538:
.L1525:
	xorl	%r11d, %r11d
	movapd	.LC102(%rip), %xmm2
	jmp	.L1501
.LVL539:
.L1521:
	xorl	%r9d, %r9d
	xorl	%esi, %esi
	jmp	.L1481
.LVL540:
.L1522:
	xorl	%r10d, %r10d
	movapd	.LC26(%rip), %xmm2
	jmp	.L1486
.L1526:
	xorl	%r12d, %r12d
	movl	$1, %r13d
	jmp	.L1509
.LVL541:
.L1958:
.LBB418:
.LBB404:
.LBB401:
.LBB400:
	.loc 1 1418 0
	movl	$.LC99, %edi
	call	_Z7nrerrorPKc
.LVL542:
.L1523:
.LBE400:
.LBE401:
.LBE404:
.LBE418:
	.loc 1 401 0
	xorl	%esi, %esi
	jmp	.L1495
.LVL543:
.L1520:
	.loc 1 416 0
	xorl	%ecx, %ecx
	jmp	.L1480
.LVL544:
.L1957:
	leal	-8(%rbx), %esi
	movl	%esi, 52(%rsp)
	jmp	.L1499
	.cfi_endproc
.LFE85:
	.size	_Z20Discount_Factors_optPdidS_, .-_Z20Discount_Factors_optPdidS_
	.p2align 4,,15
	.globl	_Z25Discount_Factors_BlockingPdidS_i
	.type	_Z25Discount_Factors_BlockingPdidS_i, @function
_Z25Discount_Factors_BlockingPdidS_i:
.LFB86:
	.loc 1 441 0
	.cfi_startproc
.LVL545:
.LBB425:
	.loc 1 446 0
	cvtsi2sd	%esi, %xmm1
.LBE425:
	.loc 1 441 0
	pushq	%r15
.LCFI121:
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
.LCFI122:
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
.LCFI123:
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%ecx, %r13d
	pushq	%r12
.LCFI124:
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
.LCFI125:
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
.LCFI126:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
.LBB437:
	.loc 1 449 0
	movl	%esi, %ebx
	.loc 1 446 0
	divsd	%xmm1, %xmm0
.LVL546:
	.loc 1 449 0
	subl	$1, %ebx
	imull	%ecx, %ebx
.LVL547:
.LBE437:
	.loc 1 441 0
	subq	$72, %rsp
.LCFI127:
	.cfi_def_cfa_offset 128
	.loc 1 441 0
	movq	%rdi, 40(%rsp)
.LBB438:
.LBB426:
.LBB427:
.LBB428:
	.loc 1 1417 0
	movq	%rdx, 8(%rsp)
.LBE428:
.LBE427:
.LBE426:
.LBE438:
	.loc 1 441 0
	movl	%esi, 60(%rsp)
.LBB439:
	.loc 1 449 0
	leal	-1(%rbx), %eax
	cltq
.LVL548:
.LBB433:
.LBB431:
.LBB429:
	.loc 1 1417 0
	leaq	16(,%rax,8), %rdi
.LVL549:
	movsd	%xmm0, 16(%rsp)
	call	malloc
.LVL550:
	.loc 1 1418 0
	testq	%rax, %rax
	.loc 1 1417 0
	movq	%rax, 48(%rsp)
.LVL551:
	.loc 1 1418 0
	movq	8(%rsp), %rdx
	movsd	16(%rsp), %xmm0
	je	.L2423
	movq	%rax, %rbp
	.loc 1 449 0
	addq	$8, %rbp
.LVL552:
.LBE429:
.LBE431:
.LBE433:
	.loc 1 451 0
	testl	%ebx, %ebx
	jle	.L1984
	.loc 1 436 0
	movq	%rdx, %rcx
.LBE439:
	movl	%ebx, %r9d
.LBB440:
	salq	$60, %rcx
	shrq	$63, %rcx
	cmpl	%ecx, %ebx
	cmovb	%ebx, %ecx
.LBE440:
	cmpl	$3, %ebx
	cmova	%ecx, %r9d
	testl	%r9d, %r9d
	je	.L2006
	cmpl	$8, %r9d
	jbe	.L2007
.LBB441:
	leal	-9(%r9), %esi
	movq	48(%rsp), %r12
	leaq	152(%rdx), %r10
	movsd	.LC13(%rip), %xmm10
.LBE441:
	xorl	%edi, %edi
.LBB442:
	shrl	$3, %esi
.LBE442:
	xorl	%r14d, %r14d
.LBB443:
	leaq	1(%rsi), %r8
	addq	$160, %r12
	salq	$6, %r8
.LVL553:
	.p2align 4,,10
	.p2align 3
.L1969:
	.loc 1 451 0
	movsd	-152(%r10), %xmm2
	addq	$64, %rdi
	prefetcht0	(%r10)
	addl	$8, %r14d
	prefetcht0	(%r12)
	xorpd	%xmm10, %xmm2
	movl	%r14d, %r11d
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, -152(%r12)
	movsd	-144(%r10), %xmm3
	xorpd	%xmm10, %xmm3
	mulsd	%xmm0, %xmm3
	movsd	%xmm3, -144(%r12)
	movsd	-136(%r10), %xmm4
	xorpd	%xmm10, %xmm4
	mulsd	%xmm0, %xmm4
	movsd	%xmm4, -136(%r12)
	movsd	-128(%r10), %xmm5
	xorpd	%xmm10, %xmm5
	mulsd	%xmm0, %xmm5
	movsd	%xmm5, -128(%r12)
	movsd	-120(%r10), %xmm6
	xorpd	%xmm10, %xmm6
	mulsd	%xmm0, %xmm6
	movsd	%xmm6, -120(%r12)
	movsd	-112(%r10), %xmm7
	xorpd	%xmm10, %xmm7
	mulsd	%xmm0, %xmm7
	movsd	%xmm7, -112(%r12)
	movsd	-104(%r10), %xmm8
	xorpd	%xmm10, %xmm8
	mulsd	%xmm0, %xmm8
	movsd	%xmm8, -104(%r12)
.LVL554:
	movsd	-96(%r10), %xmm9
	addq	$64, %r10
	xorpd	%xmm10, %xmm9
	mulsd	%xmm0, %xmm9
	movsd	%xmm9, -96(%r12)
	addq	$64, %r12
	cmpq	%r8, %rdi
	jne	.L1969
.LVL555:
.L1968:
	.loc 1 436 0
	movslq	%r14d, %r12
	movl	%r11d, %r10d
	leal	1(%r11), %r15d
	salq	$3, %r12
	notl	%r10d
	movl	$8, %eax
.LVL556:
	leaq	(%rdx,%r12), %rsi
	addl	%r9d, %r10d
	addq	%rbp, %r12
	andl	$7, %r10d
	cmpl	%r15d, %r9d
	leal	1(%r14), %ecx
	.loc 1 451 0
	movsd	(%rsi), %xmm11
	xorpd	%xmm10, %xmm11
	mulsd	%xmm0, %xmm11
	movsd	%xmm11, (%r12)
	jbe	.L2389
	testl	%r10d, %r10d
	je	.L1970
	cmpl	$1, %r10d
	je	.L2312
	cmpl	$2, %r10d
	je	.L2313
	cmpl	$3, %r10d
	je	.L2314
	cmpl	$4, %r10d
	je	.L2315
	cmpl	$5, %r10d
	je	.L2316
	cmpl	$6, %r10d
	je	.L2317
	movsd	8(%rsi), %xmm12
	leal	2(%r14), %ecx
.LVL557:
	movl	$16, %eax
	xorpd	%xmm10, %xmm12
	mulsd	%xmm0, %xmm12
	movsd	%xmm12, 8(%r12)
.L2317:
	movsd	(%rsi,%rax), %xmm13
	addl	$1, %ecx
	xorpd	%xmm10, %xmm13
	mulsd	%xmm0, %xmm13
	movsd	%xmm13, (%r12,%rax)
	addq	$8, %rax
.L2316:
	movsd	(%rsi,%rax), %xmm14
	addl	$1, %ecx
	xorpd	%xmm10, %xmm14
	mulsd	%xmm0, %xmm14
	movsd	%xmm14, (%r12,%rax)
	addq	$8, %rax
.L2315:
	movsd	(%rsi,%rax), %xmm15
	addl	$1, %ecx
	xorpd	%xmm10, %xmm15
	mulsd	%xmm0, %xmm15
	movsd	%xmm15, (%r12,%rax)
	addq	$8, %rax
.L2314:
	movsd	(%rsi,%rax), %xmm1
	addl	$1, %ecx
	xorpd	%xmm10, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, (%r12,%rax)
	addq	$8, %rax
.L2313:
	movsd	(%rsi,%rax), %xmm2
	addl	$1, %ecx
	xorpd	%xmm10, %xmm2
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, (%r12,%rax)
	addq	$8, %rax
.L2312:
	movsd	(%rsi,%rax), %xmm3
	addl	$1, %ecx
	.loc 1 436 0
	leal	(%r11,%rcx), %r8d
	.loc 1 451 0
	xorpd	%xmm10, %xmm3
	subl	%r14d, %r8d
	mulsd	%xmm0, %xmm3
	movsd	%xmm3, (%r12,%rax)
	addq	$8, %rax
	cmpl	%r8d, %r9d
	jbe	.L2389
.L1970:
	movsd	(%rsi,%rax), %xmm4
	addl	$8, %ecx
	movsd	8(%rsi,%rax), %xmm5
	.loc 1 436 0
	leal	(%r11,%rcx), %edi
	.loc 1 451 0
	movsd	16(%rsi,%rax), %xmm6
	movsd	24(%rsi,%rax), %xmm7
	subl	%r14d, %edi
	movsd	32(%rsi,%rax), %xmm8
	movsd	40(%rsi,%rax), %xmm9
	movsd	48(%rsi,%rax), %xmm11
	movsd	56(%rsi,%rax), %xmm12
	xorpd	%xmm10, %xmm4
	xorpd	%xmm10, %xmm5
	xorpd	%xmm10, %xmm6
	xorpd	%xmm10, %xmm7
	xorpd	%xmm10, %xmm8
	xorpd	%xmm10, %xmm9
	xorpd	%xmm10, %xmm11
	xorpd	%xmm10, %xmm12
	mulsd	%xmm0, %xmm4
	mulsd	%xmm0, %xmm5
	mulsd	%xmm0, %xmm6
	mulsd	%xmm0, %xmm7
	mulsd	%xmm0, %xmm8
	movsd	%xmm4, (%r12,%rax)
	mulsd	%xmm0, %xmm9
	movsd	%xmm5, 8(%r12,%rax)
	mulsd	%xmm0, %xmm11
	movsd	%xmm6, 16(%r12,%rax)
	mulsd	%xmm0, %xmm12
	movsd	%xmm7, 24(%r12,%rax)
	movsd	%xmm8, 32(%r12,%rax)
	movsd	%xmm9, 40(%r12,%rax)
	movsd	%xmm11, 48(%r12,%rax)
	movsd	%xmm12, 56(%r12,%rax)
	addq	$64, %rax
	cmpl	%edi, %r9d
	ja	.L1970
.L2389:
	cmpl	%r9d, %ebx
	je	.L1971
.L1967:
	movl	%ebx, %r12d
	movl	%r9d, %eax
	subl	%r9d, %r12d
	movl	%r12d, %r9d
	shrl	%r9d
	movl	%r9d, %r15d
	addl	%r15d, %r15d
	je	.L1972
	movapd	%xmm0, %xmm10
	salq	$3, %rax
	leaq	(%rdx,%rax), %rdi
	addq	%rbp, %rax
	cmpl	$4, %r9d
	unpcklpd	%xmm10, %xmm10
	.loc 1 436 0
	leal	-3(%r9), %r14d
	movapd	%xmm10, %xmm2
	jbe	.L2008
	movapd	.LC102(%rip), %xmm1
	leal	-5(%r9), %esi
	prefetcht0	368(%rdi)
	movl	$4, %r11d
	movl	$4, %r10d
	.loc 1 451 0
	movapd	(%rdi), %xmm13
	shrl	$2, %esi
	andl	$1, %esi
	movapd	16(%rdi), %xmm14
	xorpd	%xmm1, %xmm13
	movapd	32(%rdi), %xmm15
	xorpd	%xmm1, %xmm14
	movapd	48(%rdi), %xmm3
	xorpd	%xmm1, %xmm15
	mulpd	%xmm10, %xmm13
	.loc 1 436 0
	addq	$64, %rdi
	.loc 1 451 0
	xorpd	%xmm1, %xmm3
	mulpd	%xmm10, %xmm14
	mulpd	%xmm10, %xmm15
	movlpd	%xmm13, (%rax)
	movhpd	%xmm13, 8(%rax)
	mulpd	%xmm10, %xmm3
	movlpd	%xmm14, 16(%rax)
	movhpd	%xmm14, 24(%rax)
	movlpd	%xmm15, 32(%rax)
	movhpd	%xmm15, 40(%rax)
	movlpd	%xmm3, 48(%rax)
	movhpd	%xmm3, 56(%rax)
	.loc 1 436 0
	addq	$64, %rax
	cmpl	$5, %r14d
	jbe	.L1973
	testl	%esi, %esi
	je	.L1974
	.loc 1 451 0
	movapd	(%rdi), %xmm4
	prefetcht0	368(%rdi)
	movl	$8, %r11d
	movl	$8, %r10d
	movapd	16(%rdi), %xmm5
	xorpd	%xmm1, %xmm4
	movapd	32(%rdi), %xmm6
	xorpd	%xmm1, %xmm5
	movapd	48(%rdi), %xmm7
	xorpd	%xmm1, %xmm6
	mulpd	%xmm10, %xmm4
	.loc 1 436 0
	addq	$64, %rdi
	.loc 1 451 0
	xorpd	%xmm1, %xmm7
	mulpd	%xmm10, %xmm5
	mulpd	%xmm10, %xmm6
	movlpd	%xmm4, (%rax)
	movhpd	%xmm4, 8(%rax)
	mulpd	%xmm10, %xmm7
	movlpd	%xmm5, 16(%rax)
	movhpd	%xmm5, 24(%rax)
	movlpd	%xmm6, 32(%rax)
	movhpd	%xmm6, 40(%rax)
	movlpd	%xmm7, 48(%rax)
	movhpd	%xmm7, 56(%rax)
	.loc 1 436 0
	addq	$64, %rax
	cmpl	$9, %r14d
	jbe	.L1973
.L1974:
	.loc 1 451 0 discriminator 2
	movapd	(%rdi), %xmm8
	leal	9(%r10), %r8d
	prefetcht0	368(%rdi)
	leal	8(%r10), %r11d
	prefetcht0	432(%rdi)
	movapd	16(%rdi), %xmm9
	xorpd	%xmm1, %xmm8
	movl	%r11d, %r10d
	movapd	32(%rdi), %xmm11
	xorpd	%xmm1, %xmm9
	mulpd	%xmm2, %xmm8
	movapd	48(%rdi), %xmm12
	xorpd	%xmm1, %xmm11
	movapd	64(%rdi), %xmm10
	xorpd	%xmm1, %xmm12
	mulpd	%xmm2, %xmm9
	movapd	80(%rdi), %xmm13
	xorpd	%xmm1, %xmm10
	movapd	96(%rdi), %xmm14
	xorpd	%xmm1, %xmm13
	mulpd	%xmm2, %xmm11
	movapd	112(%rdi), %xmm15
	.loc 1 436 0 discriminator 2
	subq	$-128, %rdi
	.loc 1 451 0 discriminator 2
	xorpd	%xmm1, %xmm14
	xorpd	%xmm1, %xmm15
	movlpd	%xmm8, (%rax)
	mulpd	%xmm2, %xmm12
	movhpd	%xmm8, 8(%rax)
	movlpd	%xmm9, 16(%rax)
	mulpd	%xmm2, %xmm10
	movhpd	%xmm9, 24(%rax)
	movlpd	%xmm11, 32(%rax)
	mulpd	%xmm2, %xmm13
	movhpd	%xmm11, 40(%rax)
	movlpd	%xmm12, 48(%rax)
	mulpd	%xmm2, %xmm14
	movhpd	%xmm12, 56(%rax)
	movlpd	%xmm10, 64(%rax)
	mulpd	%xmm2, %xmm15
	movhpd	%xmm10, 72(%rax)
	movlpd	%xmm13, 80(%rax)
	movhpd	%xmm13, 88(%rax)
	movlpd	%xmm14, 96(%rax)
	movhpd	%xmm14, 104(%rax)
	movlpd	%xmm15, 112(%rax)
	movhpd	%xmm15, 120(%rax)
	.loc 1 436 0 discriminator 2
	subq	$-128, %rax
	cmpl	%r14d, %r8d
	jb	.L1974
.L1973:
	.loc 1 451 0
	movapd	(%rdi), %xmm3
	movl	%r11d, %r14d
	notl	%r14d
	leal	1(%r11), %r10d
	movl	$16, %esi
	xorpd	%xmm1, %xmm3
	addl	%r9d, %r14d
	andl	$7, %r14d
	cmpl	%r10d, %r9d
	mulpd	%xmm2, %xmm3
	movlpd	%xmm3, (%rax)
	movhpd	%xmm3, 8(%rax)
	jbe	.L2392
	testl	%r14d, %r14d
	je	.L1979
	cmpl	$1, %r14d
	je	.L2306
	cmpl	$2, %r14d
	je	.L2307
	cmpl	$3, %r14d
	je	.L2308
	cmpl	$4, %r14d
	je	.L2309
	cmpl	$5, %r14d
	je	.L2310
	cmpl	$6, %r14d
	je	.L2311
	movapd	16(%rdi), %xmm4
	leal	2(%r11), %r10d
	movl	$32, %esi
	xorpd	%xmm1, %xmm4
	mulpd	%xmm2, %xmm4
	movlpd	%xmm4, 16(%rax)
	movhpd	%xmm4, 24(%rax)
.L2311:
	movapd	(%rdi,%rsi), %xmm5
	addl	$1, %r10d
	xorpd	%xmm1, %xmm5
	mulpd	%xmm2, %xmm5
	movlpd	%xmm5, (%rax,%rsi)
	movhpd	%xmm5, 8(%rax,%rsi)
	addq	$16, %rsi
.L2310:
	movapd	(%rdi,%rsi), %xmm6
	addl	$1, %r10d
	xorpd	%xmm1, %xmm6
	mulpd	%xmm2, %xmm6
	movlpd	%xmm6, (%rax,%rsi)
	movhpd	%xmm6, 8(%rax,%rsi)
	addq	$16, %rsi
.L2309:
	movapd	(%rdi,%rsi), %xmm7
	addl	$1, %r10d
	xorpd	%xmm1, %xmm7
	mulpd	%xmm2, %xmm7
	movlpd	%xmm7, (%rax,%rsi)
	movhpd	%xmm7, 8(%rax,%rsi)
	addq	$16, %rsi
.L2308:
	movapd	(%rdi,%rsi), %xmm8
	addl	$1, %r10d
	xorpd	%xmm1, %xmm8
	mulpd	%xmm2, %xmm8
	movlpd	%xmm8, (%rax,%rsi)
	movhpd	%xmm8, 8(%rax,%rsi)
	addq	$16, %rsi
.L2307:
	movapd	(%rdi,%rsi), %xmm9
	addl	$1, %r10d
	xorpd	%xmm1, %xmm9
	mulpd	%xmm2, %xmm9
	movlpd	%xmm9, (%rax,%rsi)
	movhpd	%xmm9, 8(%rax,%rsi)
	addq	$16, %rsi
.L2306:
	movapd	(%rdi,%rsi), %xmm11
	addl	$1, %r10d
	xorpd	%xmm1, %xmm11
	mulpd	%xmm2, %xmm11
	movlpd	%xmm11, (%rax,%rsi)
	movhpd	%xmm11, 8(%rax,%rsi)
	addq	$16, %rsi
	cmpl	%r10d, %r9d
	jbe	.L2392
.L1979:
	movapd	(%rdi,%rsi), %xmm12
	addl	$8, %r10d
	movapd	16(%rdi,%rsi), %xmm10
	xorpd	%xmm1, %xmm12
	movapd	32(%rdi,%rsi), %xmm13
	xorpd	%xmm1, %xmm10
	movapd	48(%rdi,%rsi), %xmm14
	xorpd	%xmm1, %xmm13
	movapd	64(%rdi,%rsi), %xmm15
	xorpd	%xmm1, %xmm14
	mulpd	%xmm2, %xmm12
	movapd	80(%rdi,%rsi), %xmm3
	xorpd	%xmm1, %xmm15
	movapd	96(%rdi,%rsi), %xmm4
	xorpd	%xmm1, %xmm3
	mulpd	%xmm2, %xmm10
	movapd	112(%rdi,%rsi), %xmm5
	xorpd	%xmm1, %xmm4
	xorpd	%xmm1, %xmm5
	movlpd	%xmm12, (%rax,%rsi)
	mulpd	%xmm2, %xmm13
	movhpd	%xmm12, 8(%rax,%rsi)
	movlpd	%xmm10, 16(%rax,%rsi)
	mulpd	%xmm2, %xmm14
	movhpd	%xmm10, 24(%rax,%rsi)
	mulpd	%xmm2, %xmm15
	movlpd	%xmm13, 32(%rax,%rsi)
	mulpd	%xmm2, %xmm3
	movhpd	%xmm13, 40(%rax,%rsi)
	movlpd	%xmm14, 48(%rax,%rsi)
	mulpd	%xmm2, %xmm4
	movhpd	%xmm14, 56(%rax,%rsi)
	movlpd	%xmm15, 64(%rax,%rsi)
	mulpd	%xmm2, %xmm5
	movhpd	%xmm15, 72(%rax,%rsi)
	movlpd	%xmm3, 80(%rax,%rsi)
	movhpd	%xmm3, 88(%rax,%rsi)
	movlpd	%xmm4, 96(%rax,%rsi)
	movhpd	%xmm4, 104(%rax,%rsi)
	movlpd	%xmm5, 112(%rax,%rsi)
	movhpd	%xmm5, 120(%rax,%rsi)
	subq	$-128, %rsi
	cmpl	%r10d, %r9d
	ja	.L1979
.L2392:
	addl	%r15d, %ecx
	cmpl	%r15d, %r12d
	je	.L1971
.L1972:
	cmpl	%ecx, %ebx
	.loc 1 436 0
	leal	-7(%rbx), %r9d
	jle	.L2422
	leal	1(%rcx), %r11d
	cmpl	%r9d, %r11d
	jge	.L2422
	movslq	%ecx, %rax
	movsd	.LC13(%rip), %xmm1
	leaq	160(,%rax,8), %rdi
	movl	%r9d, %r14d
	subl	%ecx, %r14d
	.loc 1 451 0
	addl	$8, %ecx
	.loc 1 436 0
	leaq	(%rdx,%rdi), %r8
	addq	%rbp, %rdi
	subl	$2, %r14d
	leal	1(%rcx), %r10d
	shrl	$3, %r14d
	prefetcht0	(%rdi)
	.loc 1 451 0
	movsd	-160(%r8), %xmm2
	andl	$1, %r14d
	prefetcht0	(%r8)
	cmpl	%r10d, %r9d
	leaq	64(%r8), %rsi
	leaq	64(%rdi), %r12
	xorpd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, -160(%rdi)
	movsd	-152(%r8), %xmm6
	xorpd	%xmm1, %xmm6
	mulsd	%xmm0, %xmm6
	movsd	%xmm6, -152(%rdi)
	movsd	-144(%r8), %xmm7
	xorpd	%xmm1, %xmm7
	mulsd	%xmm0, %xmm7
	movsd	%xmm7, -144(%rdi)
	movsd	-136(%r8), %xmm8
	xorpd	%xmm1, %xmm8
	mulsd	%xmm0, %xmm8
	movsd	%xmm8, -136(%rdi)
	movsd	-128(%r8), %xmm9
	xorpd	%xmm1, %xmm9
	mulsd	%xmm0, %xmm9
	movsd	%xmm9, -128(%rdi)
	movsd	-120(%r8), %xmm11
	xorpd	%xmm1, %xmm11
	mulsd	%xmm0, %xmm11
	movsd	%xmm11, -120(%rdi)
	movsd	-112(%r8), %xmm12
	xorpd	%xmm1, %xmm12
	mulsd	%xmm0, %xmm12
	movsd	%xmm12, -112(%rdi)
	movsd	-104(%r8), %xmm10
	xorpd	%xmm1, %xmm10
	mulsd	%xmm0, %xmm10
	movsd	%xmm10, -104(%rdi)
	jle	.L1976
	testl	%r14d, %r14d
	je	.L1977
	movsd	-160(%rsi), %xmm13
	addl	$8, %ecx
	prefetcht0	(%rsi)
	.loc 1 436 0
	leal	1(%rcx), %r15d
	prefetcht0	(%r12)
	.loc 1 451 0
	xorpd	%xmm1, %xmm13
	cmpl	%r15d, %r9d
	mulsd	%xmm0, %xmm13
	movsd	%xmm13, -160(%r12)
	movsd	-152(%rsi), %xmm14
	xorpd	%xmm1, %xmm14
	mulsd	%xmm0, %xmm14
	movsd	%xmm14, -152(%r12)
	movsd	-144(%rsi), %xmm15
	xorpd	%xmm1, %xmm15
	mulsd	%xmm0, %xmm15
	movsd	%xmm15, -144(%r12)
	movsd	-136(%rsi), %xmm3
	xorpd	%xmm1, %xmm3
	mulsd	%xmm0, %xmm3
	movsd	%xmm3, -136(%r12)
	movsd	-128(%rsi), %xmm4
	xorpd	%xmm1, %xmm4
	mulsd	%xmm0, %xmm4
	movsd	%xmm4, -128(%r12)
	movsd	-120(%rsi), %xmm5
	xorpd	%xmm1, %xmm5
	mulsd	%xmm0, %xmm5
	movsd	%xmm5, -120(%r12)
	movsd	-112(%rsi), %xmm2
	xorpd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, -112(%r12)
	movsd	-104(%rsi), %xmm6
	leaq	128(%r8), %rsi
	xorpd	%xmm1, %xmm6
	mulsd	%xmm0, %xmm6
	movsd	%xmm6, -104(%r12)
	leaq	128(%rdi), %r12
	jle	.L1976
.L1977:
	movsd	-160(%rsi), %xmm7
	addl	$16, %ecx
	prefetcht0	(%rsi)
	.loc 1 436 0
	leal	1(%rcx), %edi
	leaq	64(%rsi), %r11
	leaq	64(%r12), %rax
	.loc 1 451 0
	xorpd	%xmm1, %xmm7
	prefetcht0	(%r12)
	prefetcht0	(%r11)
	prefetcht0	(%rax)
	mulsd	%xmm0, %xmm7
	movsd	%xmm7, -160(%r12)
	movsd	-152(%rsi), %xmm8
	xorpd	%xmm1, %xmm8
	mulsd	%xmm0, %xmm8
	movsd	%xmm8, -152(%r12)
	movsd	-144(%rsi), %xmm9
	xorpd	%xmm1, %xmm9
	mulsd	%xmm0, %xmm9
	movsd	%xmm9, -144(%r12)
	movsd	-136(%rsi), %xmm11
	xorpd	%xmm1, %xmm11
	mulsd	%xmm0, %xmm11
	movsd	%xmm11, -136(%r12)
	movsd	-128(%rsi), %xmm12
	xorpd	%xmm1, %xmm12
	mulsd	%xmm0, %xmm12
	movsd	%xmm12, -128(%r12)
	movsd	-120(%rsi), %xmm10
	xorpd	%xmm1, %xmm10
	mulsd	%xmm0, %xmm10
	movsd	%xmm10, -120(%r12)
	movsd	-112(%rsi), %xmm13
	xorpd	%xmm1, %xmm13
	mulsd	%xmm0, %xmm13
	movsd	%xmm13, -112(%r12)
	movsd	-104(%rsi), %xmm14
	xorpd	%xmm1, %xmm14
	mulsd	%xmm0, %xmm14
	movsd	%xmm14, -104(%r12)
	movsd	-96(%rsi), %xmm15
	xorpd	%xmm1, %xmm15
	mulsd	%xmm0, %xmm15
	movsd	%xmm15, -96(%r12)
	movsd	-88(%rsi), %xmm3
	xorpd	%xmm1, %xmm3
	mulsd	%xmm0, %xmm3
	movsd	%xmm3, -88(%r12)
	movsd	-80(%rsi), %xmm4
	xorpd	%xmm1, %xmm4
	mulsd	%xmm0, %xmm4
	movsd	%xmm4, -80(%r12)
	movsd	-72(%rsi), %xmm5
	xorpd	%xmm1, %xmm5
	mulsd	%xmm0, %xmm5
	movsd	%xmm5, -72(%r12)
	movsd	-64(%rsi), %xmm2
	xorpd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, -64(%r12)
	movsd	-56(%rsi), %xmm6
	xorpd	%xmm1, %xmm6
	mulsd	%xmm0, %xmm6
	movsd	%xmm6, -56(%r12)
	movsd	-48(%rsi), %xmm7
	xorpd	%xmm1, %xmm7
	mulsd	%xmm0, %xmm7
	movsd	%xmm7, -48(%r12)
	movsd	-40(%rsi), %xmm8
	subq	$-128, %rsi
	xorpd	%xmm1, %xmm8
	mulsd	%xmm0, %xmm8
	movsd	%xmm8, -40(%r12)
	subq	$-128, %r12
	cmpl	%edi, %r9d
	jg	.L1977
.L1976:
	.loc 1 436 0
	movslq	%ecx, %r9
	movl	%ecx, %r8d
	leal	1(%rcx), %r10d
	salq	$3, %r9
	notl	%r8d
	movl	$1, %esi
	addq	%r9, %rdx
	leal	(%r8,%rbx), %r14d
	addq	%rbp, %r9
	.loc 1 451 0
	movsd	(%rdx), %xmm9
	andl	$7, %r14d
	cmpl	%r10d, %ebx
	xorpd	%xmm1, %xmm9
	mulsd	%xmm0, %xmm9
	movsd	%xmm9, (%r9)
	jle	.L1971
	testl	%r14d, %r14d
	je	.L1978
	cmpl	$1, %r14d
	je	.L2300
	cmpl	$2, %r14d
	je	.L2301
	cmpl	$3, %r14d
	je	.L2302
	cmpl	$4, %r14d
	je	.L2303
	cmpl	$5, %r14d
	je	.L2304
	cmpl	$6, %r14d
	je	.L2305
	movsd	8(%rdx), %xmm11
	movl	$2, %esi
	xorpd	%xmm1, %xmm11
	mulsd	%xmm0, %xmm11
	movsd	%xmm11, 8(%r9)
.L2305:
	movsd	(%rdx,%rsi,8), %xmm12
	xorpd	%xmm1, %xmm12
	mulsd	%xmm0, %xmm12
	movsd	%xmm12, (%r9,%rsi,8)
	addq	$1, %rsi
.L2304:
	movsd	(%rdx,%rsi,8), %xmm10
	xorpd	%xmm1, %xmm10
	mulsd	%xmm0, %xmm10
	movsd	%xmm10, (%r9,%rsi,8)
	addq	$1, %rsi
.L2303:
	movsd	(%rdx,%rsi,8), %xmm13
	xorpd	%xmm1, %xmm13
	mulsd	%xmm0, %xmm13
	movsd	%xmm13, (%r9,%rsi,8)
	addq	$1, %rsi
.L2302:
	movsd	(%rdx,%rsi,8), %xmm14
	xorpd	%xmm1, %xmm14
	mulsd	%xmm0, %xmm14
	movsd	%xmm14, (%r9,%rsi,8)
	addq	$1, %rsi
.L2301:
	movsd	(%rdx,%rsi,8), %xmm15
	xorpd	%xmm1, %xmm15
	mulsd	%xmm0, %xmm15
	movsd	%xmm15, (%r9,%rsi,8)
	addq	$1, %rsi
.L2300:
	movsd	(%rdx,%rsi,8), %xmm3
	xorpd	%xmm1, %xmm3
	mulsd	%xmm0, %xmm3
	movsd	%xmm3, (%r9,%rsi,8)
	addq	$1, %rsi
	.loc 1 436 0
	leal	(%rcx,%rsi), %r12d
	.loc 1 451 0
	cmpl	%r12d, %ebx
	jle	.L1971
.L1978:
	movsd	(%rdx,%rsi,8), %xmm4
	leaq	1(%rsi), %r15
	leaq	2(%rsi), %r11
	leaq	3(%rsi), %rax
	leaq	4(%rsi), %rdi
	leaq	5(%rsi), %r8
	leaq	6(%rsi), %r14
	leaq	7(%rsi), %r10
	xorpd	%xmm1, %xmm4
	movsd	(%rdx,%r15,8), %xmm5
	movsd	(%rdx,%r11,8), %xmm2
	movsd	(%rdx,%rax,8), %xmm6
	movsd	(%rdx,%rdi,8), %xmm7
	movsd	(%rdx,%r8,8), %xmm8
	movsd	(%rdx,%r14,8), %xmm9
	movsd	(%rdx,%r10,8), %xmm11
	mulsd	%xmm0, %xmm4
	xorpd	%xmm1, %xmm5
	xorpd	%xmm1, %xmm2
	xorpd	%xmm1, %xmm6
	xorpd	%xmm1, %xmm7
	movsd	%xmm4, (%r9,%rsi,8)
	addq	$8, %rsi
	xorpd	%xmm1, %xmm8
	.loc 1 436 0
	leal	(%rcx,%rsi), %r12d
	.loc 1 451 0
	xorpd	%xmm1, %xmm9
	xorpd	%xmm1, %xmm11
	cmpl	%r12d, %ebx
	mulsd	%xmm0, %xmm5
	mulsd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm6
	mulsd	%xmm0, %xmm7
	mulsd	%xmm0, %xmm8
	movsd	%xmm5, (%r9,%r15,8)
	mulsd	%xmm0, %xmm9
	movsd	%xmm2, (%r9,%r11,8)
	mulsd	%xmm0, %xmm11
	movsd	%xmm6, (%r9,%rax,8)
	movsd	%xmm7, (%r9,%rdi,8)
	movsd	%xmm8, (%r9,%r8,8)
	movsd	%xmm9, (%r9,%r14,8)
	movsd	%xmm11, (%r9,%r10,8)
	jg	.L1978
.L1971:
	cmpl	$8, %ebx
	jle	.L2009
	.loc 1 436 0
	leal	-9(%rbx), %ecx
	movq	48(%rsp), %r14
.LBE443:
	xorl	%r12d, %r12d
.LBB444:
	shrl	$3, %ecx
	leal	8(,%rcx,8), %r15d
	addq	$96, %r14
	.p2align 4,,10
	.p2align 3
.L1982:
	.loc 1 452 0 discriminator 2
	movsd	-88(%r14), %xmm0
	addl	$8, %r12d
	prefetcht0	(%r14)
	call	exp
.LVL558:
	movsd	%xmm0, -88(%r14)
	movsd	-80(%r14), %xmm0
	call	exp
.LVL559:
	movsd	%xmm0, -80(%r14)
	movsd	-72(%r14), %xmm0
	call	exp
.LVL560:
	movsd	%xmm0, -72(%r14)
	movsd	-64(%r14), %xmm0
	call	exp
.LVL561:
	movsd	%xmm0, -64(%r14)
	movsd	-56(%r14), %xmm0
	call	exp
.LVL562:
	movsd	%xmm0, -56(%r14)
	movsd	-48(%r14), %xmm0
	call	exp
.LVL563:
	movsd	%xmm0, -48(%r14)
	movsd	-40(%r14), %xmm0
	call	exp
.LVL564:
	movsd	%xmm0, -40(%r14)
	movsd	-32(%r14), %xmm0
	call	exp
.LVL565:
	movsd	%xmm0, -32(%r14)
	addq	$64, %r14
	cmpl	%r15d, %r12d
	jne	.L1982
.LVL566:
.L1981:
	.loc 1 436 0
	movslq	%r12d, %rdx
	movl	%r12d, %esi
	.loc 1 452 0
	leal	1(%r12), %r14d
	.loc 1 436 0
	leaq	0(%rbp,%rdx,8), %r9
	notl	%esi
	addl	%ebx, %esi
	.loc 1 452 0
	movsd	(%r9), %xmm0
	andl	$7, %esi
	movq	%r9, 8(%rsp)
	movl	%esi, 16(%rsp)
	call	exp
.LVL567:
	movq	8(%rsp), %r11
	cmpl	%r14d, %ebx
	movl	16(%rsp), %eax
	movsd	%xmm0, (%r11)
	leaq	8(%r11), %r15
	jle	.L1984
	testl	%eax, %eax
	je	.L1983
	cmpl	$1, %eax
	je	.L2294
	cmpl	$2, %eax
	.p2align 4,,3
	je	.L2295
	cmpl	$3, %eax
	.p2align 4,,2
	je	.L2296
	cmpl	$4, %eax
	.p2align 4,,2
	je	.L2297
	cmpl	$5, %eax
	.p2align 4,,2
	je	.L2298
	cmpl	$6, %eax
	.p2align 4,,2
	je	.L2299
	movsd	(%r15), %xmm0
	movq	%r11, 8(%rsp)
	leal	2(%r12), %r14d
	call	exp
.LVL568:
	movq	8(%rsp), %rdi
	movsd	%xmm0, (%r15)
	leaq	16(%rdi), %r15
.LVL569:
.L2299:
	movsd	(%r15), %xmm0
	addl	$1, %r14d
	call	exp
.LVL570:
	movsd	%xmm0, (%r15)
	addq	$8, %r15
.L2298:
	movsd	(%r15), %xmm0
	addl	$1, %r14d
	call	exp
.LVL571:
	movsd	%xmm0, (%r15)
	addq	$8, %r15
.L2297:
	movsd	(%r15), %xmm0
	addl	$1, %r14d
	call	exp
.LVL572:
	movsd	%xmm0, (%r15)
	addq	$8, %r15
.L2296:
	movsd	(%r15), %xmm0
	addl	$1, %r14d
	call	exp
.LVL573:
	movsd	%xmm0, (%r15)
	addq	$8, %r15
.L2295:
	movsd	(%r15), %xmm0
	addl	$1, %r14d
	call	exp
.LVL574:
	movsd	%xmm0, (%r15)
	addq	$8, %r15
.L2294:
	movsd	(%r15), %xmm0
	addl	$1, %r14d
	call	exp
.LVL575:
	movsd	%xmm0, (%r15)
	addq	$8, %r15
	cmpl	%r14d, %ebx
	jle	.L1984
.L1983:
	movsd	(%r15), %xmm0
	addl	$8, %r14d
	call	exp
.LVL576:
	movsd	%xmm0, (%r15)
	movsd	8(%r15), %xmm0
	call	exp
.LVL577:
	movsd	%xmm0, 8(%r15)
	movsd	16(%r15), %xmm0
	call	exp
.LVL578:
	movsd	%xmm0, 16(%r15)
	movsd	24(%r15), %xmm0
	call	exp
.LVL579:
	movsd	%xmm0, 24(%r15)
	movsd	32(%r15), %xmm0
	call	exp
.LVL580:
	movsd	%xmm0, 32(%r15)
	movsd	40(%r15), %xmm0
	call	exp
.LVL581:
	movsd	%xmm0, 40(%r15)
	movsd	48(%r15), %xmm0
	call	exp
.LVL582:
	movsd	%xmm0, 48(%r15)
	movsd	56(%r15), %xmm0
	call	exp
.LVL583:
	movsd	%xmm0, 56(%r15)
	addq	$64, %r15
	cmpl	%r14d, %ebx
	jg	.L1983
.L1984:
.LVL584:
	.loc 1 456 0
	movl	60(%rsp), %edi
	imull	%r13d, %edi
	testl	%edi, %edi
	jle	.L1965
	.loc 1 436 0
	movq	40(%rsp), %rbx
.LVL585:
.LBE444:
	movl	%edi, %esi
.LBB445:
	salq	$60, %rbx
	shrq	$63, %rbx
	cmpl	%ebx, %edi
	cmovb	%edi, %ebx
.LBE445:
	cmpl	$6, %edi
	cmova	%ebx, %esi
	testl	%esi, %esi
	je	.L2010
	cmpl	$8, %esi
	jbe	.L2011
.LBB446:
	leal	-9(%rsi), %r8d
	movq	40(%rsp), %rax
	.loc 1 457 0
	movabsq	$4607182418800017408, %r10
	movabsq	$4607182418800017408, %rcx
	movabsq	$4607182418800017408, %rdx
	movabsq	$4607182418800017408, %r12
	.loc 1 436 0
	shrl	$3, %r8d
	.loc 1 457 0
	movabsq	$4607182418800017408, %r11
	movabsq	$4607182418800017408, %r14
	.loc 1 436 0
	leaq	1(%r8), %r9
	addq	$232, %rax
	.loc 1 457 0
	movabsq	$4607182418800017408, %r15
	movabsq	$4607182418800017408, %rbx
	movq	%r10, -232(%rax)
.LVL586:
	movq	%rcx, -224(%rax)
	.loc 1 436 0
	salq	$6, %r9
	.loc 1 457 0
	movq	%rdx, -208(%rax)
	prefetcht0	(%rax)
	leaq	-64(%r9), %r8
	movq	%r12, -216(%rax)
	movq	%r11, -200(%rax)
	movq	%r14, -192(%rax)
	movq	%r15, -184(%rax)
	movl	$64, %edx
	movq	%rbx, -176(%rax)
	movq	40(%rsp), %rax
	shrq	$6, %r8
	andl	$3, %r8d
	.loc 1 456 0
	movl	$8, %ecx
	movl	$8, %r10d
	addq	$296, %rax
	cmpq	%r9, %rdx
	je	.L1989
	testq	%r8, %r8
	je	.L1990
	cmpq	$1, %r8
	je	.L2292
	cmpq	$2, %r8
	je	.L2293
	.loc 1 457 0
	movabsq	$4607182418800017408, %rcx
	movabsq	$4607182418800017408, %rdx
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %r10
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %r11
	movabsq	$4607182418800017408, %r14
	movabsq	$4607182418800017408, %r15
	movq	%rcx, -216(%rax)
	movq	%rdx, -200(%rax)
	prefetcht0	(%rax)
	movq	%r8, -232(%rax)
	movq	%r10, -224(%rax)
	movq	%r12, -208(%rax)
	.loc 1 456 0
	movl	$16, %ecx
	.loc 1 457 0
	movq	%r11, -192(%rax)
	movq	%r14, -184(%rax)
	movl	$128, %edx
	movq	%r15, -176(%rax)
	movq	40(%rsp), %rax
	addq	$360, %rax
.L2293:
	movabsq	$4607182418800017408, %rbx
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %r10
	movq	%rbx, -232(%rax)
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %r11
	movabsq	$4607182418800017408, %r14
	movabsq	$4607182418800017408, %r15
	movabsq	$4607182418800017408, %rbx
	prefetcht0	(%rax)
	movq	%r8, -224(%rax)
	movq	%r10, -216(%rax)
	movq	%r12, -208(%rax)
	movq	%r11, -200(%rax)
	.loc 1 456 0
	addl	$8, %ecx
	.loc 1 457 0
	movq	%r14, -192(%rax)
	movq	%r15, -184(%rax)
	addq	$64, %rdx
	movq	%rbx, -176(%rax)
	addq	$64, %rax
.L2292:
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %r10
	movabsq	$4607182418800017408, %r12
	movq	%r8, -232(%rax)
	movabsq	$4607182418800017408, %r11
	movabsq	$4607182418800017408, %r14
	movabsq	$4607182418800017408, %r15
	movabsq	$4607182418800017408, %rbx
	movabsq	$4607182418800017408, %r8
	addq	$64, %rdx
	movq	%r10, -224(%rax)
	.loc 1 456 0
	addl	$8, %ecx
	prefetcht0	(%rax)
	.loc 1 457 0
	movq	%r12, -216(%rax)
	movq	%r11, -208(%rax)
	movq	%r14, -200(%rax)
	movq	%r15, -192(%rax)
	movl	%ecx, %r10d
	movq	%rbx, -184(%rax)
	movq	%r8, -176(%rax)
	addq	$64, %rax
	cmpq	%r9, %rdx
	je	.L1989
.L1990:
	movabsq	$4607182418800017408, %r11
	movabsq	$4607182418800017408, %r15
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %r12
	movq	%r11, -224(%rax)
	movabsq	$4607182418800017408, %r14
	leaq	64(%rax), %r11
	movq	%r15, -208(%rax)
	movabsq	$4607182418800017408, %rbx
	movq	%r8, -192(%rax)
	movabsq	$4607182418800017408, %r10
	movabsq	$4607182418800017408, %r15
	movabsq	$4607182418800017408, %r8
	movq	%r12, -232(%rax)
	movq	%r14, -216(%rax)
	movq	%rbx, -200(%rax)
	movq	%r10, -184(%rax)
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %r14
	movq	%r15, -160(%rax)
	movabsq	$4607182418800017408, %rbx
	leaq	128(%rax), %r15
	movq	%r8, -144(%rax)
	movabsq	$4607182418800017408, %r10
	movabsq	$4607182418800017408, %r8
	movq	%r12, -176(%rax)
	movq	%r14, -168(%rax)
	movq	%rbx, -152(%rax)
	movq	%r10, -136(%rax)
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %r14
	movabsq	$4607182418800017408, %rbx
	movq	%r8, -96(%rax)
	movabsq	$4607182418800017408, %r10
	leaq	192(%rax), %r8
	prefetcht0	(%r11)
	movabsq	$4607182418800017408, %r11
	movq	%r12, -128(%rax)
	movq	%r14, -112(%rax)
	movq	%r11, -120(%rax)
	movq	%rbx, -104(%rax)
	movabsq	$4607182418800017408, %r12
	movq	%r10, -88(%rax)
	movabsq	$4607182418800017408, %r11
	movabsq	$4607182418800017408, %r14
	movabsq	$4607182418800017408, %rbx
	movabsq	$4607182418800017408, %r10
	prefetcht0	(%r15)
	movabsq	$4607182418800017408, %r15
	movq	%r12, -80(%rax)
	movq	%r11, -72(%rax)
	movq	%r14, -64(%rax)
	movq	%r15, -56(%rax)
	prefetcht0	(%r8)
	movq	%rbx, -48(%rax)
	movq	%r10, -40(%rax)
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %r10
	movabsq	$4607182418800017408, %r11
	movabsq	$4607182418800017408, %r14
	movabsq	$4607182418800017408, %r15
	movabsq	$4607182418800017408, %rbx
	movabsq	$4607182418800017408, %r8
	addq	$256, %rdx
	movq	%r10, 16(%rax)
	.loc 1 456 0
	addl	$32, %ecx
	prefetcht0	(%rax)
	.loc 1 457 0
	movq	%r12, -32(%rax)
	movq	%r11, -24(%rax)
	movq	%r14, -16(%rax)
	movq	%r15, -8(%rax)
	movl	%ecx, %r10d
	movq	%rbx, (%rax)
	movq	%r8, 8(%rax)
	addq	$256, %rax
	cmpq	%r9, %rdx
	jne	.L1990
.L1989:
.LVL587:
	.loc 1 436 0
	movq	40(%rsp), %rax
	movl	%r10d, %r14d
	movslq	%ecx, %r9
	notl	%r14d
	leal	1(%r10), %r11d
	.loc 1 457 0
	movabsq	$4607182418800017408, %rdx
	addl	%esi, %r14d
	.loc 1 436 0
	leaq	(%rax,%r9,8), %r12
	andl	$7, %r14d
	cmpl	%r11d, %esi
	.loc 1 457 0
	movq	%rdx, (%r12)
	leaq	8(%r12), %rax
	.loc 1 436 0
	leal	1(%rcx), %edx
	jbe	.L2393
	testl	%r14d, %r14d
	je	.L1991
	cmpl	$1, %r14d
	je	.L2286
	cmpl	$2, %r14d
	je	.L2287
	cmpl	$3, %r14d
	je	.L2288
	cmpl	$4, %r14d
	je	.L2289
	cmpl	$5, %r14d
	je	.L2290
	cmpl	$6, %r14d
	je	.L2291
	.loc 1 457 0
	movabsq	$4607182418800017408, %r15
	.loc 1 456 0
	leal	2(%rcx), %edx
.LVL588:
	.loc 1 457 0
	movq	%r15, (%rax)
	leaq	16(%r12), %rax
.L2291:
	movabsq	$4607182418800017408, %rbx
	.loc 1 456 0
	addl	$1, %edx
	.loc 1 457 0
	movq	%rbx, (%rax)
	addq	$8, %rax
.L2290:
	movabsq	$4607182418800017408, %r8
	.loc 1 456 0
	addl	$1, %edx
	.loc 1 457 0
	movq	%r8, (%rax)
	addq	$8, %rax
.L2289:
	movabsq	$4607182418800017408, %r9
	.loc 1 456 0
	addl	$1, %edx
	.loc 1 457 0
	movq	%r9, (%rax)
	addq	$8, %rax
.L2288:
	movabsq	$4607182418800017408, %r12
	.loc 1 456 0
	addl	$1, %edx
	.loc 1 457 0
	movq	%r12, (%rax)
	addq	$8, %rax
.L2287:
	movabsq	$4607182418800017408, %r14
	.loc 1 456 0
	addl	$1, %edx
	.loc 1 457 0
	movq	%r14, (%rax)
	addq	$8, %rax
.L2286:
	.loc 1 456 0
	addl	$1, %edx
	.loc 1 457 0
	movabsq	$4607182418800017408, %r11
	.loc 1 436 0
	leal	(%r10,%rdx), %r15d
	.loc 1 457 0
	movq	%r11, (%rax)
	addq	$8, %rax
	subl	%ecx, %r15d
	cmpl	%r15d, %esi
	jbe	.L2393
.L1991:
	movabsq	$4607182418800017408, %r8
	.loc 1 456 0
	addl	$8, %edx
	.loc 1 457 0
	movabsq	$4607182418800017408, %rbx
	movq	%r8, 8(%rax)
	.loc 1 436 0
	leal	(%r10,%rdx), %r8d
	.loc 1 457 0
	movq	%rbx, (%rax)
	movabsq	$4607182418800017408, %r9
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %r14
	movabsq	$4607182418800017408, %r11
	movabsq	$4607182418800017408, %r15
	movabsq	$4607182418800017408, %rbx
	subl	%ecx, %r8d
	movq	%r9, 16(%rax)
	movq	%r12, 24(%rax)
	movq	%r14, 32(%rax)
	movq	%r11, 40(%rax)
	movq	%r15, 48(%rax)
	movq	%rbx, 56(%rax)
	addq	$64, %rax
	cmpl	%r8d, %esi
	ja	.L1991
.L2393:
	cmpl	%esi, %edi
	je	.L1965
.L1988:
	movl	%edi, %r10d
	movl	%esi, %eax
	subl	%esi, %r10d
	movl	%r10d, %r8d
	shrl	%r8d
	movl	%r8d, %r11d
	addl	%r11d, %r11d
	je	.L1993
	movq	40(%rsp), %rcx
	cmpl	$4, %r8d
	.loc 1 436 0
	leal	-3(%r8), %r12d
	leaq	(%rcx,%rax,8), %rax
	jbe	.L2012
	leal	-5(%r8), %esi
	movapd	.LC26(%rip), %xmm0
	prefetcht0	640(%rax)
	movl	$4, %r9d
	movl	$4, %r15d
	shrl	$2, %esi
	andl	$3, %esi
	.loc 1 457 0
	movapd	%xmm0, (%rax)
	movapd	%xmm0, 16(%rax)
	movapd	%xmm0, 32(%rax)
	movapd	%xmm0, 48(%rax)
	.loc 1 436 0
	addq	$64, %rax
	cmpl	$5, %r12d
	jbe	.L1994
	testl	%esi, %esi
	je	.L1995
	cmpl	$1, %esi
	je	.L2284
	cmpl	$2, %esi
	.p2align 4,,3
	je	.L2285
	prefetcht0	640(%rax)
	.loc 1 457 0
	movapd	%xmm0, (%rax)
	movl	$8, %r15d
	movapd	%xmm0, 16(%rax)
	movapd	%xmm0, 32(%rax)
	movapd	%xmm0, 48(%rax)
	.loc 1 436 0
	addq	$64, %rax
.L2285:
	prefetcht0	640(%rax)
	.loc 1 457 0
	movapd	%xmm0, (%rax)
	addl	$4, %r15d
	movapd	%xmm0, 16(%rax)
	movapd	%xmm0, 32(%rax)
	movapd	%xmm0, 48(%rax)
	.loc 1 436 0
	addq	$64, %rax
.L2284:
	leal	5(%r15), %r14d
	leal	4(%r15), %r9d
	prefetcht0	640(%rax)
	.loc 1 457 0
	movapd	%xmm0, (%rax)
	movl	%r9d, %r15d
	movapd	%xmm0, 16(%rax)
	movapd	%xmm0, 32(%rax)
	movapd	%xmm0, 48(%rax)
	.loc 1 436 0
	addq	$64, %rax
	cmpl	%r12d, %r14d
	jae	.L1994
.L1995:
	leal	17(%r15), %ebx
	leal	16(%r15), %r9d
	prefetcht0	640(%rax)
	.loc 1 457 0 discriminator 2
	movapd	%xmm0, (%rax)
	prefetcht0	704(%rax)
	prefetcht0	768(%rax)
	prefetcht0	832(%rax)
	movl	%r9d, %r15d
	movapd	%xmm0, 16(%rax)
	movapd	%xmm0, 32(%rax)
	movapd	%xmm0, 48(%rax)
	movapd	%xmm0, 64(%rax)
	movapd	%xmm0, 80(%rax)
	movapd	%xmm0, 96(%rax)
	movapd	%xmm0, 112(%rax)
	movapd	%xmm0, 128(%rax)
	movapd	%xmm0, 144(%rax)
	movapd	%xmm0, 160(%rax)
	movapd	%xmm0, 176(%rax)
	movapd	%xmm0, 192(%rax)
	movapd	%xmm0, 208(%rax)
	movapd	%xmm0, 224(%rax)
	movapd	%xmm0, 240(%rax)
	.loc 1 436 0 discriminator 2
	addq	$256, %rax
	cmpl	%r12d, %ebx
	jb	.L1995
.L1994:
	movl	%r9d, %r12d
	leal	1(%r9), %esi
	leaq	16(%rax), %rcx
	notl	%r12d
	addl	%r8d, %r12d
	andl	$7, %r12d
	cmpl	%esi, %r8d
	.loc 1 457 0
	movapd	%xmm0, (%rax)
	jbe	.L2395
	testl	%r12d, %r12d
	je	.L2000
	cmpl	$1, %r12d
	je	.L2278
	cmpl	$2, %r12d
	je	.L2279
	cmpl	$3, %r12d
	je	.L2280
	cmpl	$4, %r12d
	je	.L2281
	cmpl	$5, %r12d
	je	.L2282
	cmpl	$6, %r12d
	je	.L2283
	movapd	%xmm0, (%rcx)
	leal	2(%r9), %esi
	leaq	32(%rax), %rcx
.L2283:
	movapd	%xmm0, (%rcx)
	addl	$1, %esi
	addq	$16, %rcx
.L2282:
	movapd	%xmm0, (%rcx)
	addl	$1, %esi
	addq	$16, %rcx
.L2281:
	movapd	%xmm0, (%rcx)
	addl	$1, %esi
	addq	$16, %rcx
.L2280:
	movapd	%xmm0, (%rcx)
	addl	$1, %esi
	addq	$16, %rcx
.L2279:
	movapd	%xmm0, (%rcx)
	addl	$1, %esi
	addq	$16, %rcx
.L2278:
	addl	$1, %esi
	movapd	%xmm0, (%rcx)
	addq	$16, %rcx
	cmpl	%esi, %r8d
	jbe	.L2395
.L2000:
	addl	$8, %esi
	movapd	%xmm0, (%rcx)
	movapd	%xmm0, 16(%rcx)
	movapd	%xmm0, 32(%rcx)
	movapd	%xmm0, 48(%rcx)
	movapd	%xmm0, 64(%rcx)
	movapd	%xmm0, 80(%rcx)
	movapd	%xmm0, 96(%rcx)
	movapd	%xmm0, 112(%rcx)
	subq	$-128, %rcx
	cmpl	%esi, %r8d
	ja	.L2000
.L2395:
	addl	%r11d, %edx
	cmpl	%r11d, %r10d
	je	.L1965
.L1993:
	.loc 1 436 0
	leal	-7(%rdi), %r9d
	leal	1(%rdx), %ecx
	cmpl	%r9d, %ecx
	jge	.L1997
	cmpl	%edx, %edi
	jle	.L1997
	movq	40(%rsp), %r15
	movslq	%edx, %r14
	movl	%r9d, %r8d
	subl	%edx, %r8d
	.loc 1 457 0
	movabsq	$4607182418800017408, %rcx
	.loc 1 456 0
	addl	$8, %edx
	subl	$2, %r8d
	.loc 1 457 0
	movabsq	$4607182418800017408, %rax
	movabsq	$4607182418800017408, %rbx
	.loc 1 436 0
	leaq	272(%r15,%r14,8), %rsi
	shrl	$3, %r8d
	.loc 1 457 0
	movabsq	$4607182418800017408, %r12
	andl	$3, %r8d
	movabsq	$4607182418800017408, %r10
	movabsq	$4607182418800017408, %r11
	movq	%rcx, -248(%rsi)
	.loc 1 436 0
	leal	1(%rdx), %ecx
	.loc 1 457 0
	movabsq	$4607182418800017408, %r14
	movabsq	$4607182418800017408, %r15
	movq	%rax, -272(%rsi)
	prefetcht0	(%rsi)
	cmpl	%r9d, %ecx
	movq	%rbx, -264(%rsi)
	movq	%r12, -256(%rsi)
	movq	%r10, -240(%rsi)
	movq	%r11, -232(%rsi)
	leaq	64(%rsi), %rax
	movq	%r14, -224(%rsi)
	movq	%r15, -216(%rsi)
	jge	.L1997
	testl	%r8d, %r8d
	je	.L1998
	cmpl	$1, %r8d
	je	.L2276
	cmpl	$2, %r8d
	je	.L2277
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %rbx
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %rcx
	movabsq	$4607182418800017408, %r10
	movabsq	$4607182418800017408, %r11
	movabsq	$4607182418800017408, %r14
	movabsq	$4607182418800017408, %r15
	prefetcht0	(%rax)
	movq	%r8, -272(%rax)
	movq	%rbx, -264(%rax)
	.loc 1 456 0
	addl	$8, %edx
	.loc 1 457 0
	movq	%r12, -256(%rax)
	movq	%rcx, -248(%rax)
	movq	%r10, -240(%rax)
	movq	%r11, -232(%rax)
	movq	%r14, -224(%rax)
	movq	%r15, -216(%rax)
	leaq	128(%rsi), %rax
.L2277:
	movabsq	$4607182418800017408, %rsi
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %rbx
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %rcx
	movabsq	$4607182418800017408, %r10
	movabsq	$4607182418800017408, %r11
	movabsq	$4607182418800017408, %r14
	prefetcht0	(%rax)
	movq	%rsi, -272(%rax)
	movq	%r8, -264(%rax)
	.loc 1 456 0
	addl	$8, %edx
	.loc 1 457 0
	movq	%rbx, -256(%rax)
	movq	%r12, -248(%rax)
	movq	%rcx, -240(%rax)
	movq	%r10, -232(%rax)
	movq	%r11, -224(%rax)
	movq	%r14, -216(%rax)
	addq	$64, %rax
.L2276:
	movabsq	$4607182418800017408, %rcx
	.loc 1 456 0
	addl	$8, %edx
	.loc 1 457 0
	movabsq	$4607182418800017408, %r15
	movq	%rcx, -232(%rax)
	.loc 1 436 0
	leal	1(%rdx), %ecx
	.loc 1 457 0
	movabsq	$4607182418800017408, %rsi
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %rbx
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %r10
	movabsq	$4607182418800017408, %r11
	prefetcht0	(%rax)
	movq	%r15, -272(%rax)
	movq	%rsi, -264(%rax)
	movq	%r8, -256(%rax)
	movq	%rbx, -248(%rax)
	movq	%r12, -240(%rax)
	movq	%r10, -224(%rax)
	movq	%r11, -216(%rax)
	addq	$64, %rax
	cmpl	%r9d, %ecx
	jge	.L1997
.L1998:
	leaq	64(%rax), %rcx
	movabsq	$4607182418800017408, %r14
	movabsq	$4607182418800017408, %r15
	movabsq	$4607182418800017408, %rsi
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %rbx
	prefetcht0	(%rcx)
	leaq	128(%rax), %rcx
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %r10
	movabsq	$4607182418800017408, %r11
	movq	%r14, -272(%rax)
	prefetcht0	(%rcx)
	leaq	192(%rax), %rcx
	movq	%r15, -264(%rax)
	movq	%rsi, -256(%rax)
	movq	%r8, -248(%rax)
	movabsq	$4607182418800017408, %r14
	movq	%rbx, -240(%rax)
	movq	%r12, -232(%rax)
	movabsq	$4607182418800017408, %r15
	movq	%r10, -224(%rax)
	movq	%r11, -216(%rax)
	movabsq	$4607182418800017408, %rsi
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %rbx
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %r10
	movabsq	$4607182418800017408, %r11
	.loc 1 456 0
	addl	$32, %edx
	.loc 1 457 0
	movq	%r14, -208(%rax)
	movq	%r15, -200(%rax)
	movabsq	$4607182418800017408, %r14
	movq	%rsi, -192(%rax)
	movq	%r8, -184(%rax)
	movabsq	$4607182418800017408, %r15
	movq	%rbx, -176(%rax)
	movq	%r12, -168(%rax)
	movabsq	$4607182418800017408, %rsi
	movq	%r10, -160(%rax)
	movq	%r11, -152(%rax)
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %rbx
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %r10
	movabsq	$4607182418800017408, %r11
	prefetcht0	(%rcx)
	.loc 1 436 0
	leal	1(%rdx), %ecx
	.loc 1 457 0
	movq	%r14, -144(%rax)
	movq	%r15, -136(%rax)
	movabsq	$4607182418800017408, %r14
	movq	%rsi, -128(%rax)
	movq	%r8, -120(%rax)
	movabsq	$4607182418800017408, %r15
	movq	%rbx, -112(%rax)
	movq	%r12, -104(%rax)
	movabsq	$4607182418800017408, %rsi
	movq	%r10, -96(%rax)
	movq	%r11, -88(%rax)
	movabsq	$4607182418800017408, %r8
	movabsq	$4607182418800017408, %rbx
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %r10
	movabsq	$4607182418800017408, %r11
	prefetcht0	(%rax)
	movq	%r14, -80(%rax)
	movq	%r15, -72(%rax)
	movq	%rsi, -64(%rax)
	movq	%r8, -56(%rax)
	movq	%rbx, -48(%rax)
	movq	%r12, -40(%rax)
	movq	%r10, -32(%rax)
	movq	%r11, -24(%rax)
	addq	$256, %rax
	cmpl	%r9d, %ecx
	jl	.L1998
.L1997:
	.loc 1 436 0
	movq	40(%rsp), %r9
	movl	%edi, %r14d
	movslq	%edx, %rdx
	subl	%ecx, %r14d
	andl	$7, %r14d
	leaq	(%r9,%rdx,8), %rax
	je	.L1999
	.loc 1 457 0
	movabsq	$4607182418800017408, %r15
	movq	%r15, (%rax)
.LVL589:
	addq	$8, %rax
	.loc 1 456 0
	cmpl	%ecx, %edi
	jle	.L1965
	addl	$1, %ecx
.LVL590:
	cmpl	$1, %r14d
	je	.L1999
	cmpl	$2, %r14d
	je	.L2271
	cmpl	$3, %r14d
	je	.L2272
	cmpl	$4, %r14d
	je	.L2273
	cmpl	$5, %r14d
	je	.L2274
	cmpl	$6, %r14d
	je	.L2275
	.loc 1 457 0
	movabsq	$4607182418800017408, %rsi
	addl	$1, %ecx
.LVL591:
	movq	%rsi, (%rax)
.LVL592:
	addq	$8, %rax
.L2275:
	movabsq	$4607182418800017408, %r8
	addl	$1, %ecx
	movq	%r8, (%rax)
	addq	$8, %rax
.L2274:
	movabsq	$4607182418800017408, %rbx
	addl	$1, %ecx
	movq	%rbx, (%rax)
	addq	$8, %rax
.L2273:
	movabsq	$4607182418800017408, %r12
	addl	$1, %ecx
	movq	%r12, (%rax)
	addq	$8, %rax
.L2272:
	movabsq	$4607182418800017408, %r10
	addl	$1, %ecx
	movq	%r10, (%rax)
	addq	$8, %rax
.L2271:
	movabsq	$4607182418800017408, %r11
	addl	$1, %ecx
	movq	%r11, (%rax)
	addq	$8, %rax
	jmp	.L1999
.LVL593:
	.p2align 4,,10
	.p2align 3
.L2424:
	movabsq	$4607182418800017408, %r9
	movabsq	$4607182418800017408, %r14
	movabsq	$4607182418800017408, %r15
	movabsq	$4607182418800017408, %rsi
	movabsq	$4607182418800017408, %r12
	movabsq	$4607182418800017408, %rdx
	movabsq	$4607182418800017408, %rbx
	movq	%r9, 8(%rax)
	movq	%r14, 16(%rax)
	movq	%r15, 24(%rax)
	movq	%rsi, 32(%rax)
	addl	$8, %ecx
.LVL594:
	movq	%r12, 40(%rax)
.LVL595:
	movq	%rdx, 48(%rax)
	movq	%rbx, 56(%rax)
	addq	$64, %rax
.L1999:
	movabsq	$4607182418800017408, %rdx
	.loc 1 456 0
	cmpl	%ecx, %edi
	.loc 1 457 0
	movq	%rdx, (%rax)
.LVL596:
	.loc 1 456 0
	jg	.L2424
.LVL597:
.L1965:
	.loc 1 459 0
	cmpl	$1, 60(%rsp)
	jle	.L1986
	.loc 1 436 0
	leal	-1(%r13), %r9d
	movq	40(%rsp), %rax
	movslq	%r13d, %rdi
	leaq	0(,%rdi,8), %rcx
	movl	60(%rsp), %ebx
.LBE446:
	movl	$1, %r8d
.LBB447:
	addq	%r9, %rdi
	negq	%r9
	leaq	8(%rax,%rdi,8), %r10
	leaq	-8(,%r9,8), %r11
.LVL598:
	.p2align 4,,10
	.p2align 3
.L2002:
	.loc 1 461 0 discriminator 1
	testl	%r13d, %r13d
	jle	.L2004
	.loc 1 436 0
	leaq	(%r11,%r10), %r14
	movq	%rbp, %r15
.LVL599:
	.p2align 4,,10
	.p2align 3
.L2005:
	leal	-1(%r8), %esi
	movsd	(%r14), %xmm1
	.loc 1 463 0 discriminator 1
	movl	$1, %edx
.LVL600:
	leaq	(%r15,%rcx), %r12
	andl	$7, %esi
	cmpl	%r8d, %edx
	.loc 1 464 0 discriminator 1
	mulsd	(%r15), %xmm1
	.loc 1 463 0 discriminator 1
	je	.L2396
	testl	%esi, %esi
	je	.L2003
	cmpl	$1, %esi
	je	.L2265
	cmpl	$2, %esi
	.p2align 4,,3
	je	.L2266
	cmpl	$3, %esi
	.p2align 4,,2
	je	.L2267
	cmpl	$4, %esi
	.p2align 4,,2
	je	.L2268
	cmpl	$5, %esi
	.p2align 4,,2
	je	.L2269
	cmpl	$6, %esi
	.p2align 4,,2
	je	.L2270
	.loc 1 464 0
	mulsd	(%r12), %xmm1
	.loc 1 463 0
	movl	$2, %edx
.LVL601:
	addq	%rcx, %r12
.L2270:
	.loc 1 464 0
	mulsd	(%r12), %xmm1
	.loc 1 463 0
	addl	$1, %edx
.LVL602:
	addq	%rcx, %r12
.L2269:
	.loc 1 464 0
	mulsd	(%r12), %xmm1
	.loc 1 463 0
	addl	$1, %edx
.LVL603:
	addq	%rcx, %r12
.L2268:
	.loc 1 464 0
	mulsd	(%r12), %xmm1
	.loc 1 463 0
	addl	$1, %edx
.LVL604:
	addq	%rcx, %r12
.L2267:
	.loc 1 464 0
	mulsd	(%r12), %xmm1
	.loc 1 463 0
	addl	$1, %edx
.LVL605:
	addq	%rcx, %r12
.L2266:
	.loc 1 464 0
	mulsd	(%r12), %xmm1
	.loc 1 463 0
	addl	$1, %edx
.LVL606:
	addq	%rcx, %r12
.L2265:
	addl	$1, %edx
.LVL607:
	.loc 1 464 0
	mulsd	(%r12), %xmm1
	addq	%rcx, %r12
	.loc 1 463 0
	cmpl	%r8d, %edx
	je	.L2396
.L2003:
	.loc 1 464 0 discriminator 2
	mulsd	(%r12), %xmm1
	addq	%rcx, %r12
	.loc 1 463 0 discriminator 2
	addl	$8, %edx
.LVL608:
	.loc 1 464 0 discriminator 2
	mulsd	(%r12), %xmm1
.LVL609:
	addq	%rcx, %r12
	mulsd	(%r12), %xmm1
	addq	%rcx, %r12
	mulsd	(%r12), %xmm1
	addq	%rcx, %r12
	mulsd	(%r12), %xmm1
	addq	%rcx, %r12
	mulsd	(%r12), %xmm1
	addq	%rcx, %r12
	mulsd	(%r12), %xmm1
.LVL610:
	addq	%rcx, %r12
	mulsd	(%r12), %xmm1
	addq	%rcx, %r12
	.loc 1 463 0 discriminator 2
	cmpl	%r8d, %edx
	jne	.L2003
.L2396:
	movsd	%xmm1, (%r14)
	addq	$8, %r14
	addq	$8, %r15
	.loc 1 461 0
	cmpq	%r10, %r14
	jne	.L2005
.LVL611:
.L2004:
	.loc 1 459 0
	addl	$1, %r8d
.LVL612:
	addq	%rcx, %r10
	cmpl	%ebx, %r8d
	jne	.L2002
.LVL613:
.L1986:
.LBB434:
.LBB435:
	.loc 1 1428 0
	movq	48(%rsp), %rdi
	call	free
.LVL614:
.LBE435:
.LBE434:
.LBE447:
	.loc 1 473 0
	addq	$72, %rsp
.LCFI128:
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	$1, %eax
	popq	%rbx
.LCFI129:
	.cfi_def_cfa_offset 48
	popq	%rbp
.LCFI130:
	.cfi_def_cfa_offset 40
	popq	%r12
.LCFI131:
	.cfi_def_cfa_offset 32
	popq	%r13
.LCFI132:
	.cfi_def_cfa_offset 24
.LVL615:
	popq	%r14
.LCFI133:
	.cfi_def_cfa_offset 16
	popq	%r15
.LCFI134:
	.cfi_def_cfa_offset 8
	ret
.LVL616:
.L2422:
.LCFI135:
	.cfi_restore_state
	movsd	.LC13(%rip), %xmm1
	jmp	.L1976
.L2008:
	.loc 1 436 0
	xorl	%r11d, %r11d
	movapd	.LC102(%rip), %xmm1
	jmp	.L1973
.LVL617:
.L2007:
	xorl	%r11d, %r11d
	xorl	%r14d, %r14d
	movsd	.LC13(%rip), %xmm10
	jmp	.L1968
.LVL618:
.L2012:
	xorl	%r9d, %r9d
	movapd	.LC26(%rip), %xmm0
	jmp	.L1994
.LVL619:
.L2011:
	xorl	%r10d, %r10d
	xorl	%ecx, %ecx
	jmp	.L1989
.LVL620:
.L2009:
	xorl	%r12d, %r12d
	jmp	.L1981
.LVL621:
.L2010:
	xorl	%edx, %edx
	jmp	.L1988
.LVL622:
.L2423:
.LBB448:
.LBB436:
.LBB432:
.LBB430:
	.loc 1 1418 0
	movl	$.LC99, %edi
	call	_Z7nrerrorPKc
.LVL623:
.L2006:
.LBE430:
.LBE432:
.LBE436:
.LBE448:
	.loc 1 451 0
	xorl	%ecx, %ecx
	jmp	.L1967
	.cfi_endproc
.LFE86:
	.size	_Z25Discount_Factors_BlockingPdidS_i, .-_Z25Discount_Factors_BlockingPdidS_i
	.p2align 4,,15
	.globl	_Z17HJM_SimPath_YieldPPdiidS_S0_Pl
	.type	_Z17HJM_SimPath_YieldPPdiidS_S0_Pl, @function
_Z17HJM_SimPath_YieldPPdiidS_S0_Pl:
.LFB77:
	.loc 1 106 0
	.cfi_startproc
.LVL624:
	pushq	%r15
.LCFI136:
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rcx, %r15
	pushq	%r14
.LCFI137:
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%esi, %r14d
	pushq	%r13
.LCFI138:
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
.LCFI139:
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
.LCFI140:
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
.LCFI141:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$152, %rsp
.LCFI142:
	.cfi_def_cfa_offset 208
	.loc 1 106 0
	movl	%edx, 68(%rsp)
.LBB486:
	.loc 1 115 0
	leal	-1(%rsi), %edx
.LVL625:
.LBE486:
	.loc 1 106 0
	movq	%rdi, 128(%rsp)
	movsd	%xmm0, 104(%rsp)
	movq	%r8, 112(%rsp)
	movq	%r9, 136(%rsp)
.LBB551:
	.loc 1 115 0
	movslq	%edx, %rax
.LVL626:
	movl	%edx, 64(%rsp)
.LBB487:
.LBB488:
.LBB489:
	.loc 1 1417 0
	leaq	16(,%rax,8), %rdi
.LVL627:
	call	malloc
.LVL628:
	.loc 1 1418 0
	testq	%rax, %rax
	.loc 1 1417 0
	movq	%rax, 40(%rsp)
.LVL629:
	.loc 1 1418 0
	je	.L2430
	movq	%rax, %rdi
.LBE489:
.LBE488:
.LBE487:
	.loc 1 116 0
	leal	-2(%r14), %eax
.LVL630:
.LBB496:
.LBB493:
.LBB490:
	.loc 1 115 0
	addq	$8, %rdi
.LVL631:
.LBE490:
.LBE493:
.LBE496:
	.loc 1 116 0
	cltq
.LBB497:
.LBB494:
.LBB491:
	.loc 1 115 0
	movq	%rdi, 96(%rsp)
.LBE491:
.LBE494:
.LBE497:
	.loc 1 116 0
	movq	%rax, 88(%rsp)
	movl	68(%rsp), %eax
.LBB498:
.LBB499:
.LBB500:
	.loc 1 1437 0
	movq	88(%rsp), %rbp
.LBE500:
.LBE499:
.LBE498:
	.loc 1 116 0
	subl	$1, %eax
	cltq
.LBB515:
.LBB508:
.LBB501:
	.loc 1 1437 0
	addq	$1, %rbp
	.loc 1 1441 0
	leaq	16(,%rax,8), %rdi
	.loc 1 1437 0
	movq	%rax, %r12
.LBE501:
.LBE508:
.LBE515:
	.loc 1 116 0
	movq	%rax, 32(%rsp)
.LVL632:
.LBB516:
.LBB509:
.LBB502:
	.loc 1 1437 0
	addq	$1, %r12
.LVL633:
	.loc 1 1441 0
	call	malloc
.LVL634:
	.loc 1 1442 0
	testq	%rax, %rax
	.loc 1 1441 0
	movq	%rax, %r13
.LVL635:
	.loc 1 1442 0
	je	.L2543
.LVL636:
	.loc 1 1447 0
	imulq	%rbp, %r12
.LVL637:
	.loc 1 1444 0
	leaq	8(%rax), %rbx
.LVL638:
	.loc 1 1447 0
	leaq	8(,%r12,8), %rdi
	call	malloc
.LVL639:
	.loc 1 1448 0
	testq	%rax, %rax
	.loc 1 1447 0
	movq	%rax, 8(%r13)
	.loc 1 1448 0
	je	.L2544
	.loc 1 1452 0
	cmpq	$0, 32(%rsp)
	.loc 1 1449 0
	leaq	8(%rax), %r9
	movq	%r9, 8(%r13)
.LVL640:
	.loc 1 1452 0
	jle	.L2435
.LBE502:
.LBE509:
.LBE516:
.LBB517:
.LBB518:
.LBB519:
	.loc 1 99 0
	movq	32(%rsp), %rsi
	leaq	0(,%rbp,8), %rcx
	subq	$6, %rsi
	cmpl	$9, 68(%rsp)
	movq	%rsi, 56(%rsp)
	jle	.L2451
	movq	%rbp, %r10
	movq	%rcx, %r12
	leaq	(%r9,%rcx), %r11
	salq	$4, %r10
	negq	%r12
	movq	32(%rsp), %rdi
	leaq	(%r10,%rcx,4), %r8
	leaq	0(,%r12,4), %rbp
.LVL641:
	addq	%r9, %r10
	addq	%r12, %r12
.LBE519:
.LBE518:
.LBE517:
.LBB526:
.LBB510:
.LBB503:
	.loc 1 1452 0
	movq	%r11, 8(%rbx)
.LVL642:
	movq	%r10, 16(%rbx)
.LBE503:
.LBE510:
.LBE526:
.LBB527:
.LBB523:
.LBB520:
	.loc 1 99 0
	leaq	(%r8,%rcx,2), %r8
	leaq	0(%rbp,%rcx), %rdx
	subq	$9, %rdi
	shrq	$3, %rdi
	prefetcht0	176(%r13)
	leaq	(%r9,%r8), %rax
	movq	%rbp, %r9
	movq	%rdx, 80(%rsp)
	subq	%rcx, %r9
.LBE520:
.LBE523:
.LBE527:
.LBB528:
.LBB511:
.LBB504:
	movq	80(%rsp), %rdx
	andl	$1, %edi
	movq	%r9, %rsi
	addq	%r8, %r11
	addq	%r8, %r10
	addq	%rax, %rsi
.LBE504:
.LBE511:
.LBE528:
.LBB529:
.LBB524:
.LBB521:
	movq	%r9, 72(%rsp)
	movq	%rdi, 48(%rsp)
.LBE521:
.LBE524:
.LBE529:
.LBB530:
.LBB512:
.LBB505:
	movq	%rsi, 24(%rbx)
	movq	%rax, %rsi
	addq	%rax, %rdx
	subq	%rcx, %rsi
	cmpq	$10, 56(%rsp)
	leaq	(%rax,%rbp), %r9
	leaq	(%rax,%r12), %rdi
	movq	%rdx, 40(%rbx)
	movq	%rsi, 56(%rbx)
	movq	%r9, 32(%rbx)
	.loc 1 1452 0
	movq	%rax, 64(%rbx)
	movq	%rax, %r9
	.loc 1 99 0
	movq	%rdi, 48(%rbx)
	.loc 1 1452 0
	movl	$9, %esi
	leaq	(%rax,%r8), %rdi
	leaq	72(%r13), %rdx
	.loc 1 99 0
	movl	$10, %eax
	jle	.L2432
	cmpq	$0, 48(%rsp)
	je	.L2539
	leaq	(%rdi,%rbp), %r9
	movq	72(%rsp), %rax
	movq	80(%rsp), %rsi
	.loc 1 1452 0
	movq	%r11, 8(%rdx)
	movq	%r10, 16(%rdx)
	addq	%r8, %r11
	.loc 1 99 0
	movq	%r9, 32(%rdx)
	movq	%rdi, %r9
	.loc 1 1452 0
	movq	%rdi, 64(%rdx)
	.loc 1 99 0
	addq	%rdi, %rax
	subq	%rcx, %r9
	addq	%rdi, %rsi
	movq	%rax, 24(%rdx)
	movq	%r9, 56(%rdx)
	leaq	(%rdi,%r12), %rax
	.loc 1 1452 0
	movq	%rdi, %r9
	addq	%r8, %r10
	addq	%r8, %rdi
	cmpq	$18, 56(%rsp)
	.loc 1 99 0
	movq	%rsi, 40(%rdx)
	prefetcht0	240(%r13)
	movq	%rax, 48(%rdx)
	.loc 1 1452 0
	movl	$17, %esi
	leaq	136(%r13), %rdx
	.loc 1 99 0
	movl	$18, %eax
	jle	.L2432
.L2539:
	movq	%r13, 48(%rsp)
	movq	%rbx, 120(%rsp)
	movq	80(%rsp), %r13
	movq	72(%rsp), %rbx
.LVL643:
.L2433:
	leaq	(%rdi,%rbx), %r9
	leaq	(%rdi,%rbp), %rax
	.loc 1 1452 0
	movq	%rdi, 64(%rdx)
	movq	%r11, 8(%rdx)
	movq	%r10, 16(%rdx)
	addq	%r8, %r11
	.loc 1 99 0
	movq	%r9, 24(%rdx)
	leaq	(%rdi,%r13), %r9
	movq	%rax, 32(%rdx)
	leaq	(%rdi,%r12), %rax
	addq	%r8, %r10
	.loc 1 1452 0
	addq	$16, %rsi
	.loc 1 99 0
	movq	%r9, 40(%rdx)
	movq	%rdi, %r9
	.loc 1 1452 0
	movq	%r11, 72(%rdx)
	.loc 1 99 0
	subq	%rcx, %r9
	movq	%rax, 48(%rdx)
	.loc 1 1452 0
	movq	%r10, 80(%rdx)
	.loc 1 99 0
	movq	%r9, 56(%rdx)
	leaq	(%rdi,%r8), %r9
	prefetcht0	168(%rdx)
	prefetcht0	232(%rdx)
	addq	%r8, %r11
	addq	%r8, %r10
	leaq	(%r9,%rbx), %rdi
	leaq	(%r9,%rbp), %rax
	.loc 1 1452 0
	movq	%r9, 128(%rdx)
	.loc 1 99 0
	movq	%rdi, 88(%rdx)
	leaq	(%r9,%r13), %rdi
	movq	%rax, 96(%rdx)
	leaq	(%r9,%r12), %rax
	movq	%rdi, 104(%rdx)
	movq	%r9, %rdi
	subq	%rcx, %rdi
	movq	%rax, 112(%rdx)
	leaq	1(%rsi), %rax
	movq	%rdi, 120(%rdx)
	subq	$-128, %rdx
	cmpq	%rax, 56(%rsp)
	leaq	(%r9,%r8), %rdi
	jg	.L2433
	movq	48(%rsp), %r13
	movq	120(%rsp), %rbx
.LVL644:
.L2432:
	movq	32(%rsp), %r10
	addq	%rcx, %r9
	subq	%rax, %r10
	addq	$1, %r10
	andl	$7, %r10d
	je	.L2434
	.loc 1 1452 0
	movq	%r9, (%rbx,%rsi,8)
	addq	%rcx, %r9
	cmpq	%rax, 32(%rsp)
	movq	%rax, %rsi
.LVL645:
	jl	.L2435
	addq	$1, %rax
.LVL646:
	cmpq	$1, %r10
	je	.L2434
	cmpq	$2, %r10
	je	.L2507
	cmpq	$3, %r10
	je	.L2508
	cmpq	$4, %r10
	je	.L2509
	cmpq	$5, %r10
	je	.L2510
	cmpq	$6, %r10
	je	.L2511
	movq	%r9, (%rbx,%rsi,8)
	movq	%rax, %rsi
.LVL647:
	addq	%rcx, %r9
	addq	$1, %rax
.LVL648:
.L2511:
	movq	%r9, (%rbx,%rsi,8)
	movq	%rax, %rsi
.LVL649:
	addq	%rcx, %r9
	addq	$1, %rax
.LVL650:
.L2510:
	movq	%r9, (%rbx,%rsi,8)
	movq	%rax, %rsi
.LVL651:
	addq	%rcx, %r9
	addq	$1, %rax
.LVL652:
.L2509:
	movq	%r9, (%rbx,%rsi,8)
	movq	%rax, %rsi
.LVL653:
	addq	%rcx, %r9
	addq	$1, %rax
.LVL654:
.L2508:
	movq	%r9, (%rbx,%rsi,8)
	movq	%rax, %rsi
.LVL655:
	addq	%rcx, %r9
	addq	$1, %rax
.LVL656:
.L2507:
	movq	%r9, (%rbx,%rsi,8)
	addq	%rcx, %r9
	movq	%rax, %rsi
.LVL657:
	movq	%r9, (%rbx,%rsi,8)
	addq	$1, %rax
.LVL658:
	addq	%rcx, %r9
	cmpq	%rax, 32(%rsp)
	jl	.L2435
.L2545:
	movq	%r9, (%rbx,%rax,8)
	addq	%rcx, %r9
	leaq	7(%rax), %rsi
	movq	%r9, 8(%rbx,%rax,8)
	addq	%rcx, %r9
	movq	%r9, 16(%rbx,%rax,8)
	addq	%rcx, %r9
	movq	%r9, 24(%rbx,%rax,8)
	addq	%rcx, %r9
	movq	%r9, 32(%rbx,%rax,8)
	addq	%rcx, %r9
	movq	%r9, 40(%rbx,%rax,8)
	addq	%rcx, %r9
	movq	%r9, 48(%rbx,%rax,8)
	addq	%rcx, %r9
	addq	$8, %rax
.LVL659:
.L2434:
	movq	%r9, (%rbx,%rsi,8)
.LVL660:
	addq	%rcx, %r9
	cmpq	%rax, 32(%rsp)
	jge	.L2545
.LVL661:
	.p2align 4,,10
	.p2align 3
.L2435:
.LBE505:
.LBE512:
.LBE530:
.LBB531:
.LBB525:
.LBB522:
	.loc 1 1417 0
	movq	88(%rsp), %r8
	leaq	16(,%r8,8), %rdi
	call	malloc
.LVL662:
	.loc 1 1418 0
	testq	%rax, %rax
	.loc 1 1417 0
	movq	%rax, %rbp
.LVL663:
	.loc 1 1418 0
	je	.L2430
.LBE522:
.LBE525:
.LBE531:
.LBB532:
.LBB533:
	.loc 1 167 0
	movq	40(%rsp), %r11
	movsd	(%r15), %xmm0
	.loc 1 168 0
	cmpl	$1, %r14d
.LBE533:
.LBE532:
.LBB537:
.LBB513:
.LBB506:
	.loc 1 117 0
	leaq	8(%rax), %r12
.LVL664:
.LBE506:
.LBE513:
.LBE537:
.LBB538:
.LBB534:
	.loc 1 167 0
	movsd	%xmm0, 8(%r11)
.LVL665:
	.loc 1 168 0
	jle	.L2446
	movl	64(%rsp), %r9d
	movq	%r11, %rcx
.LBE534:
.LBE538:
	.loc 1 99 0
	leaq	40(%r15), %rsi
	movq	%r11, %rdi
	addq	$16, %rcx
	leaq	8(%r15), %rdx
	addq	$48, %rdi
	leaq	32(%r15), %r11
	shrl	$2, %r9d
	cmpq	%rsi, %rcx
	setae	%al
.LVL666:
	cmpq	%rdx, %rdi
	leal	0(,%r9,4), %r10d
	setbe	%r8b
	orl	%r8d, %eax
	cmpq	%r11, %rcx
	setae	%sil
	cmpq	%rdi, %r15
	setae	%dil
	orl	%edi, %esi
	andl	%esi, %eax
	cmpl	$4, 64(%rsp)
	seta	%r8b
	testb	%r8b, %al
	je	.L2452
	testl	%r10d, %r10d
	je	.L2452
	movdqa	.LC24(%rip), %xmm6
	cmpl	$2, %r9d
	movdqa	%xmm6, %xmm7
	jbe	.L2453
	leal	-3(%r9), %eax
.LBE551:
	movdqa	.LC23(%rip), %xmm2
	xorl	%r8d, %r8d
.LBB552:
	shrl	%eax
	movdqa	.LC25(%rip), %xmm4
	salq	$6, %rax
	leaq	72(%r15,%rax), %r11
.LVL667:
	.p2align 4,,10
	.p2align 3
.L2441:
	.loc 1 169 0
	movdqa	%xmm2, %xmm1
	prefetcht0	272(%rdx)
	prefetcht0	264(%rdx)
	movsd	16(%rdx), %xmm8
	movdqa	%xmm2, %xmm3
	movsd	8(%rdx), %xmm13
	paddd	%xmm4, %xmm1
	cvtdq2pd	%xmm1, %xmm15
	pshufd	$238, %xmm1, %xmm5
	movhpd	24(%rdx), %xmm8
	paddd	%xmm7, %xmm3
	pshufd	$238, %xmm2, %xmm11
	movhpd	16(%rdx), %xmm13
	cvtdq2pd	%xmm2, %xmm2
	movsd	(%rdx), %xmm0
	addl	$2, %r8d
	cvtdq2pd	%xmm5, %xmm10
	movsd	-8(%rdx), %xmm5
	cvtdq2pd	%xmm11, %xmm12
	mulpd	%xmm8, %xmm10
	movhpd	8(%rdx), %xmm0
	movhpd	(%rdx), %xmm5
	mulpd	%xmm13, %xmm12
	mulpd	%xmm5, %xmm2
	mulpd	%xmm0, %xmm15
	subpd	%xmm12, %xmm10
	pshufd	$238, %xmm3, %xmm14
	subpd	%xmm2, %xmm15
	movlpd	%xmm10, 16(%rcx)
	movdqa	%xmm3, %xmm2
	movhpd	%xmm10, 24(%rcx)
	movdqa	%xmm3, %xmm10
	cvtdq2pd	%xmm3, %xmm3
	paddd	%xmm7, %xmm2
	paddd	%xmm4, %xmm10
	pshufd	$238, %xmm10, %xmm9
	cvtdq2pd	%xmm10, %xmm10
	movlpd	%xmm15, (%rcx)
	movhpd	%xmm15, 8(%rcx)
	cvtdq2pd	%xmm14, %xmm15
	cvtdq2pd	%xmm9, %xmm11
	movsd	48(%rdx), %xmm12
	movsd	40(%rdx), %xmm0
	movsd	32(%rdx), %xmm5
	movhpd	56(%rdx), %xmm12
	movsd	24(%rdx), %xmm9
	movhpd	48(%rdx), %xmm0
	movhpd	40(%rdx), %xmm5
	mulpd	%xmm12, %xmm11
	movhpd	32(%rdx), %xmm9
	.loc 1 99 0
	addq	$64, %rdx
	.loc 1 169 0
	mulpd	%xmm0, %xmm15
	.loc 1 99 0
	leaq	-8(%rdx), %rsi
	.loc 1 169 0
	mulpd	%xmm5, %xmm10
	mulpd	%xmm9, %xmm3
	subpd	%xmm15, %xmm11
	subpd	%xmm3, %xmm10
	movlpd	%xmm11, 48(%rcx)
	movhpd	%xmm11, 56(%rcx)
	movlpd	%xmm10, 32(%rcx)
	movhpd	%xmm10, 40(%rcx)
	.loc 1 99 0
	addq	$64, %rcx
	cmpq	%r11, %rdx
	jne	.L2441
.L2440:
.LBB539:
.LBB535:
	.loc 1 169 0
	movdqa	%xmm2, %xmm11
	movl	%r8d, %r11d
	movsd	16(%rdx), %xmm14
	notl	%r11d
	movsd	16(%rsi), %xmm10
	paddd	%xmm4, %xmm11
	cvtdq2pd	%xmm11, %xmm12
	movsd	(%rdx), %xmm8
	movhpd	24(%rdx), %xmm14
	leal	1(%r8), %edi
	movsd	(%rsi), %xmm9
	movhpd	24(%rsi), %xmm10
	pshufd	$238, %xmm11, %xmm7
	movhpd	8(%rdx), %xmm8
	cvtdq2pd	%xmm2, %xmm11
	pshufd	$238, %xmm2, %xmm0
	movhpd	8(%rsi), %xmm9
	paddd	%xmm6, %xmm2
	mulpd	%xmm8, %xmm12
	addl	%r9d, %r11d
	cvtdq2pd	%xmm7, %xmm13
	andl	$1, %r11d
	cmpl	%edi, %r9d
	mulpd	%xmm14, %xmm13
	cvtdq2pd	%xmm0, %xmm1
	movl	$32, %eax
	mulpd	%xmm10, %xmm1
	mulpd	%xmm9, %xmm11
	subpd	%xmm1, %xmm13
	subpd	%xmm11, %xmm12
	movlpd	%xmm13, 16(%rcx)
	movhpd	%xmm13, 24(%rcx)
	movlpd	%xmm12, (%rcx)
	movhpd	%xmm12, 8(%rcx)
	jbe	.L2531
	testl	%r11d, %r11d
	je	.L2447
	movdqa	%xmm2, %xmm13
	cvtdq2pd	%xmm2, %xmm7
	leal	2(%r8), %edi
	movsd	48(%rdx), %xmm0
	movl	$64, %eax
	movsd	48(%rsi), %xmm5
	paddd	%xmm4, %xmm13
	cvtdq2pd	%xmm13, %xmm11
	movsd	32(%rdx), %xmm3
	movhpd	56(%rdx), %xmm0
	cmpl	%edi, %r9d
	pshufd	$238, %xmm13, %xmm14
	movhpd	56(%rsi), %xmm5
	movsd	32(%rsi), %xmm13
	movhpd	40(%rdx), %xmm3
	pshufd	$238, %xmm2, %xmm10
	paddd	%xmm6, %xmm2
	movhpd	40(%rsi), %xmm13
	cvtdq2pd	%xmm14, %xmm15
	mulpd	%xmm3, %xmm11
	mulpd	%xmm0, %xmm15
	cvtdq2pd	%xmm10, %xmm12
	mulpd	%xmm13, %xmm7
	mulpd	%xmm5, %xmm12
	subpd	%xmm7, %xmm11
	subpd	%xmm12, %xmm15
	movlpd	%xmm11, 32(%rcx)
	movhpd	%xmm11, 40(%rcx)
	movlpd	%xmm15, 48(%rcx)
	movhpd	%xmm15, 56(%rcx)
	jbe	.L2531
	.p2align 4,,10
	.p2align 3
.L2447:
	movdqa	%xmm2, %xmm1
	addl	$2, %edi
	movsd	16(%rdx,%rax), %xmm12
	movsd	16(%rsi,%rax), %xmm3
	paddd	%xmm4, %xmm1
	cvtdq2pd	%xmm1, %xmm13
	movsd	(%rdx,%rax), %xmm7
	movhpd	24(%rdx,%rax), %xmm12
	pshufd	$238, %xmm1, %xmm0
	movhpd	24(%rsi,%rax), %xmm3
	movsd	(%rsi,%rax), %xmm1
	movhpd	8(%rdx,%rax), %xmm7
	pshufd	$238, %xmm2, %xmm8
	movdqa	%xmm2, %xmm15
	cvtdq2pd	%xmm2, %xmm2
	movhpd	8(%rsi,%rax), %xmm1
	cvtdq2pd	%xmm0, %xmm10
	mulpd	%xmm7, %xmm13
	paddd	%xmm6, %xmm15
	cvtdq2pd	%xmm15, %xmm0
	mulpd	%xmm12, %xmm10
	cvtdq2pd	%xmm8, %xmm11
	mulpd	%xmm1, %xmm2
	mulpd	%xmm3, %xmm11
	pshufd	$238, %xmm15, %xmm3
	subpd	%xmm2, %xmm13
	subpd	%xmm11, %xmm10
	movlpd	%xmm13, (%rcx,%rax)
	movhpd	%xmm13, 8(%rcx,%rax)
	cvtdq2pd	%xmm3, %xmm13
	movlpd	%xmm10, 16(%rcx,%rax)
	movhpd	%xmm10, 24(%rcx,%rax)
	movdqa	%xmm15, %xmm10
	movsd	48(%rdx,%rax), %xmm5
	paddd	%xmm4, %xmm10
	cvtdq2pd	%xmm10, %xmm14
	movsd	48(%rsi,%rax), %xmm9
	movsd	32(%rdx,%rax), %xmm2
	movhpd	56(%rdx,%rax), %xmm5
	pshufd	$238, %xmm10, %xmm12
	movhpd	56(%rsi,%rax), %xmm9
	movsd	32(%rsi,%rax), %xmm10
	movhpd	40(%rdx,%rax), %xmm2
	mulpd	%xmm9, %xmm13
	movhpd	40(%rsi,%rax), %xmm10
	cvtdq2pd	%xmm12, %xmm11
	mulpd	%xmm2, %xmm14
	movdqa	%xmm15, %xmm2
	mulpd	%xmm5, %xmm11
	paddd	%xmm6, %xmm2
	mulpd	%xmm10, %xmm0
	subpd	%xmm13, %xmm11
	subpd	%xmm0, %xmm14
	movlpd	%xmm11, 48(%rcx,%rax)
	movhpd	%xmm11, 56(%rcx,%rax)
	movlpd	%xmm14, 32(%rcx,%rax)
	movhpd	%xmm14, 40(%rcx,%rax)
	addq	$64, %rax
	cmpl	%edi, %r9d
	ja	.L2447
.L2531:
	cmpl	%r10d, 64(%rsp)
	leal	1(%r10), %ecx
	je	.L2446
.L2439:
.LBE535:
.LBE539:
	.loc 1 99 0
	leal	1(%rcx), %esi
	leal	-7(%r14), %r9d
	cmpl	%r9d, %esi
	jge	.L2541
	cmpl	%ecx, %r14d
	jle	.L2541
	cvtsi2sd	%ecx, %xmm11
	movslq	%ecx, %rdx
	salq	$3, %rdx
	leaq	(%r15,%rdx), %r8
	addq	96(%rsp), %rdx
	.p2align 4,,10
	.p2align 3
.L2444:
.LBB540:
.LBB536:
	.loc 1 169 0
	cvtsi2sd	%esi, %xmm6
	mulsd	-8(%r8), %xmm11
	prefetcht0	96(%r8)
	.loc 1 99 0
	leal	2(%rcx), %r11d
	leal	3(%rcx), %eax
	leal	4(%rcx), %edi
	leal	5(%rcx), %r10d
	addl	$8, %esi
	prefetcht0	88(%r8)
	.loc 1 169 0
	cvtsi2sd	%eax, %xmm8
	.loc 1 99 0
	leal	7(%rcx), %eax
	prefetcht0	96(%rdx)
	.loc 1 169 0
	cvtsi2sd	%edi, %xmm13
	cvtsi2sd	%r10d, %xmm7
	cvtsi2sd	%eax, %xmm10
	mulsd	(%r8), %xmm6
	movapd	%xmm6, %xmm4
	subsd	%xmm11, %xmm4
	cvtsi2sd	%r11d, %xmm11
	.loc 1 99 0
	leal	6(%rcx), %r11d
	.loc 1 169 0
	addl	$8, %ecx
	cvtsi2sd	%r11d, %xmm1
	movsd	%xmm4, (%rdx)
.LVL668:
	movsd	8(%r8), %xmm5
	mulsd	%xmm11, %xmm5
	subsd	%xmm6, %xmm5
	movsd	%xmm5, 8(%rdx)
.LVL669:
	mulsd	8(%r8), %xmm11
	movsd	16(%r8), %xmm3
	mulsd	%xmm8, %xmm3
	subsd	%xmm11, %xmm3
	cvtsi2sd	%ecx, %xmm11
	movsd	%xmm3, 16(%rdx)
	movsd	24(%r8), %xmm9
	mulsd	16(%r8), %xmm8
	mulsd	%xmm13, %xmm9
	subsd	%xmm8, %xmm9
	movsd	%xmm9, 24(%rdx)
	movsd	32(%r8), %xmm14
	mulsd	24(%r8), %xmm13
	mulsd	%xmm7, %xmm14
	subsd	%xmm13, %xmm14
	movsd	%xmm14, 32(%rdx)
	movsd	40(%r8), %xmm2
	mulsd	32(%r8), %xmm7
	mulsd	%xmm1, %xmm2
	subsd	%xmm7, %xmm2
	movsd	%xmm2, 40(%rdx)
	movsd	48(%r8), %xmm0
	mulsd	40(%r8), %xmm1
	mulsd	%xmm10, %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 48(%rdx)
	movsd	56(%r8), %xmm12
	mulsd	48(%r8), %xmm10
	addq	$64, %r8
	mulsd	%xmm11, %xmm12
	subsd	%xmm10, %xmm12
	movsd	%xmm12, 56(%rdx)
.LVL670:
	addq	$64, %rdx
	cmpl	%esi, %r9d
	jg	.L2444
	leal	1(%rcx), %esi
.LVL671:
.L2443:
	.loc 1 99 0
	movq	96(%rsp), %r9
	movl	%r14d, %r8d
	movslq	%ecx, %rcx
	subl	%esi, %r8d
	leaq	-8(%r15,%rcx,8), %r15
.LVL672:
	andl	$3, %r8d
	leaq	(%r9,%rcx,8), %rdx
	je	.L2445
	.loc 1 169 0
	cvtsi2sd	%esi, %xmm6
	mulsd	(%r15), %xmm11
	movl	%esi, %edi
	mulsd	8(%r15), %xmm6
	addq	$8, %r15
	subsd	%xmm11, %xmm6
	movsd	%xmm6, (%rdx)
.LVL673:
	addq	$8, %rdx
	.loc 1 168 0
	cmpl	%esi, %r14d
	jle	.L2446
	addl	$1, %esi
.LVL674:
	cmpl	$1, %r8d
	cvtsi2sd	%edi, %xmm11
	je	.L2445
	cmpl	$2, %r8d
	je	.L2506
	.loc 1 169 0
	cvtsi2sd	%esi, %xmm4
	mulsd	(%r15), %xmm11
	movl	%esi, %r10d
	addl	$1, %esi
	mulsd	8(%r15), %xmm4
	addq	$8, %r15
	subsd	%xmm11, %xmm4
	cvtsi2sd	%r10d, %xmm11
	movsd	%xmm4, (%rdx)
.LVL675:
	addq	$8, %rdx
.L2506:
	cvtsi2sd	%esi, %xmm15
	mulsd	(%r15), %xmm11
	movl	%esi, %r11d
	addl	$1, %esi
	mulsd	8(%r15), %xmm15
	addq	$8, %r15
	subsd	%xmm11, %xmm15
	cvtsi2sd	%r11d, %xmm11
	movsd	%xmm15, (%rdx)
	addq	$8, %rdx
	jmp	.L2445
.LVL676:
	.p2align 4,,10
	.p2align 3
.L2546:
	leal	1(%rsi), %eax
	movsd	16(%r15), %xmm13
	mulsd	8(%r15), %xmm5
	leal	2(%rsi), %ecx
	leal	3(%rsi), %r9d
	cvtsi2sd	%eax, %xmm3
	addl	$4, %esi
.LVL677:
	cvtsi2sd	%ecx, %xmm9
	cvtsi2sd	%r9d, %xmm11
	mulsd	%xmm3, %xmm13
	subsd	%xmm5, %xmm13
	movsd	%xmm13, 8(%rdx)
.LVL678:
	movsd	24(%r15), %xmm7
	mulsd	16(%r15), %xmm3
	mulsd	%xmm9, %xmm7
	subsd	%xmm3, %xmm7
	movsd	%xmm7, 16(%rdx)
	movsd	32(%r15), %xmm14
	mulsd	24(%r15), %xmm9
	addq	$32, %r15
	mulsd	%xmm11, %xmm14
	subsd	%xmm9, %xmm14
	movsd	%xmm14, 24(%rdx)
	addq	$32, %rdx
.L2445:
	cvtsi2sd	%esi, %xmm5
	mulsd	(%r15), %xmm11
	movsd	8(%r15), %xmm8
	.loc 1 168 0
	cmpl	%esi, %r14d
	.loc 1 169 0
	mulsd	%xmm5, %xmm8
	subsd	%xmm11, %xmm8
	movsd	%xmm8, (%rdx)
.LVL679:
	.loc 1 168 0
	jg	.L2546
.LVL680:
.L2446:
.LBE536:
.LBE540:
	.loc 1 130 0
	movq	112(%rsp), %r8
	movl	68(%rsp), %ecx
	movl	%r14d, %edx
	movsd	104(%rsp), %xmm0
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	_Z10HJM_DriftsPdPS_iidS0_
.LVL681:
	.loc 1 131 0
	cmpl	$1, %eax
	je	.L2547
.LVL682:
.L2542:
.LBB541:
.LBB542:
	.loc 1 1428 0
	movq	40(%rsp), %rdi
	movl	%eax, 24(%rsp)
.LVL683:
.LBE542:
.LBE541:
.LBB543:
.LBB544:
	call	free
.LVL684:
.LBE544:
.LBE543:
.LBB545:
.LBB546:
	.loc 1 1464 0
	movq	8(%r13), %rdi
	subq	$8, %rdi
	call	free
.LVL685:
	.loc 1 1465 0
	movq	%r13, %rdi
	call	free
.LVL686:
.LBE546:
.LBE545:
.LBB547:
.LBB548:
	.loc 1 1428 0
	movq	%rbp, %rdi
	call	free
.LVL687:
	movl	24(%rsp), %eax
.LBE548:
.LBE547:
.LBE552:
	.loc 1 154 0
	addq	$152, %rsp
.LCFI143:
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
.LCFI144:
	.cfi_def_cfa_offset 48
	popq	%rbp
.LCFI145:
	.cfi_def_cfa_offset 40
.LVL688:
	popq	%r12
.LCFI146:
	.cfi_def_cfa_offset 32
.LVL689:
	popq	%r13
.LCFI147:
	.cfi_def_cfa_offset 24
	popq	%r14
.LCFI148:
	.cfi_def_cfa_offset 16
.LVL690:
	popq	%r15
.LCFI149:
	.cfi_def_cfa_offset 8
	ret
.LVL691:
	.p2align 4,,10
	.p2align 3
.L2541:
.LCFI150:
	.cfi_restore_state
	cvtsi2sd	%ecx, %xmm11
	jmp	.L2443
.LVL692:
	.p2align 4,,10
	.p2align 3
.L2547:
.LBB553:
	.loc 1 140 0
	movq	136(%rsp), %rbx
	movq	112(%rsp), %r9
	movq	%r12, %r8
	movq	96(%rsp), %rcx
	movl	68(%rsp), %edx
	movl	%r14d, %esi
	movq	128(%rsp), %rdi
	movsd	104(%rsp), %xmm0
	movq	%rbx, (%rsp)
	call	_Z19HJM_SimPath_ForwardPPdiidS_S_S0_Pl
.LVL693:
	jmp	.L2542
.LVL694:
	.p2align 4,,10
	.p2align 3
.L2453:
.LBE553:
	.loc 1 99 0
	movq	%r15, %rsi
	xorl	%r8d, %r8d
	movdqa	.LC23(%rip), %xmm2
	movdqa	.LC25(%rip), %xmm4
	jmp	.L2440
.LVL695:
	.p2align 4,,10
	.p2align 3
.L2451:
	movl	$1, %esi
	movl	$2, %eax
	jmp	.L2432
.LVL696:
.L2430:
.LBB554:
.LBB549:
.LBB495:
.LBB492:
	.loc 1 1418 0
	movl	$.LC99, %edi
	call	_Z7nrerrorPKc
.LVL697:
.L2544:
.LBE492:
.LBE495:
.LBE549:
.LBB550:
.LBB514:
.LBB507:
	.loc 1 1448 0
	movl	$.LC72, %edi
	call	_Z7nrerrorPKc
.LVL698:
.L2543:
	.loc 1 1442 0
	movl	$.LC71, %edi
	call	_Z7nrerrorPKc
.LVL699:
.L2452:
.LBE507:
.LBE514:
.LBE550:
.LBE554:
	.loc 1 168 0
	movl	$1, %ecx
	jmp	.L2439
	.cfi_endproc
.LFE77:
	.size	_Z17HJM_SimPath_YieldPPdiidS_S0_Pl, .-_Z17HJM_SimPath_YieldPPdiidS_S0_Pl
	.p2align 4,,15
	.globl	_Z16HJM_CorrelationsPPdiiS0_
	.type	_Z16HJM_CorrelationsPPdiiS0_, @function
_Z16HJM_CorrelationsPPdiiS0_:
.LFB82:
	.loc 1 316 0
	.cfi_startproc
.LVL700:
	pushq	%r15
.LCFI151:
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rcx, %r15
	pushq	%r14
.LCFI152:
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r14
	pushq	%r13
.LCFI153:
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
.LCFI154:
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
.LCFI155:
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
.LCFI156:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edx, %ebx
	subq	$136, %rsp
.LCFI157:
	.cfi_def_cfa_offset 192
	.loc 1 316 0
	movl	%esi, 84(%rsp)
.LBB566:
	.loc 1 325 0
	subl	$2, %esi
.LVL701:
	movslq	%esi, %rbp
.LVL702:
	movl	%esi, 80(%rsp)
.LBB567:
.LBB568:
.LBB569:
	.loc 1 1417 0
	leaq	16(,%rbp,8), %rdi
.LVL703:
	call	malloc
.LVL704:
	.loc 1 1418 0
	testq	%rax, %rax
	.loc 1 1417 0
	movq	%rax, 112(%rsp)
.LVL705:
	.loc 1 1418 0
	je	.L2981
.LBE569:
.LBE568:
.LBE567:
	.loc 1 326 0
	leal	-1(%rbx), %r13d
	movq	%rax, %rcx
.LBB574:
.LBB575:
.LBB576:
	.loc 1 1437 0
	addq	$1, %rbp
.LVL706:
.LBE576:
.LBE575:
.LBE574:
.LBB583:
.LBB572:
.LBB570:
	.loc 1 325 0
	addq	$8, %rcx
.LBE570:
.LBE572:
.LBE583:
	.loc 1 326 0
	movslq	%r13d, %r13
.LVL707:
.LBB584:
.LBB580:
.LBB577:
	.loc 1 1441 0
	movq	%rcx, (%rsp)
	.loc 1 1437 0
	leaq	1(%r13), %rdx
.LVL708:
	.loc 1 1441 0
	leaq	16(,%r13,8), %rdi
	movq	%rdx, 40(%rsp)
	call	malloc
.LVL709:
	.loc 1 1442 0
	testq	%rax, %rax
	.loc 1 1441 0
	movq	%rax, 64(%rsp)
.LVL710:
	.loc 1 1442 0
	movq	40(%rsp), %rsi
	movq	(%rsp), %r8
	je	.L2982
	.loc 1 1447 0
	imulq	%rbp, %rsi
	movq	%rax, %r12
.LVL711:
	movq	%r8, (%rsp)
	.loc 1 1444 0
	addq	$8, %r12
.LVL712:
	.loc 1 1447 0
	leaq	8(,%rsi,8), %rdi
	call	malloc
.LVL713:
	.loc 1 1448 0
	testq	%rax, %rax
	movq	(%rsp), %rcx
	je	.L2983
	.loc 1 1449 0
	leaq	8(%rax), %r8
	movq	64(%rsp), %rax
	.loc 1 1452 0
	testq	%r13, %r13
	.loc 1 1449 0
	movq	%r8, 8(%rax)
.LVL714:
	.loc 1 1452 0
	jle	.L2552
	.loc 1 312 0
	leaq	-6(%r13), %rdi
	cmpl	$9, %ebx
	leaq	0(,%rbp,8), %rax
	movq	%rdi, 120(%rsp)
	jle	.L2596
	salq	$4, %rbp
.LVL715:
	movq	%rax, %rdx
	leaq	(%r8,%rax), %r11
	leaq	0(%rbp,%rax,4), %r9
	negq	%rdx
	addq	%r8, %rbp
	leaq	0(,%rdx,4), %rsi
	addq	%rdx, %rdx
	.loc 1 1452 0
	movq	%r11, 8(%r12)
.LVL716:
	.loc 1 312 0
	leaq	(%r9,%rax,2), %rdi
	movq	%rdx, 104(%rsp)
	movq	64(%rsp), %rdx
	movq	%rsi, 56(%rsp)
	leaq	-9(%r13), %r9
	subq	%rax, %rsi
	leaq	(%r8,%rdi), %r10
	movq	56(%rsp), %r8
	movq	%rsi, 88(%rsp)
	prefetcht0	176(%rdx)
	movq	104(%rsp), %rdx
	shrq	$3, %r9
	andl	$1, %r9d
	movq	88(%rsp), %rsi
	.loc 1 1452 0
	movq	%rbp, 16(%r12)
	.loc 1 312 0
	addq	%rax, %r8
	movq	%r9, 72(%rsp)
	.loc 1 1452 0
	movq	%r10, 64(%r12)
	.loc 1 312 0
	addq	%r10, %rdx
	movq	%r8, 96(%rsp)
	movq	56(%rsp), %r8
	movq	96(%rsp), %r9
	movq	%rdx, 48(%r12)
	addq	%r10, %rsi
	movq	64(%rsp), %rdx
	movq	%rsi, 24(%r12)
	movq	%r10, %rsi
	addq	%r10, %r8
	subq	%rax, %rsi
	addq	%rdi, %r11
	addq	%r10, %r9
	movq	%r8, 32(%r12)
	addq	%rdi, %rbp
	movq	%r9, 40(%r12)
	.loc 1 1452 0
	movq	%r10, %r8
	leaq	(%r10,%rdi), %r9
	addq	$72, %rdx
	.loc 1 312 0
	movl	$10, %r10d
	cmpq	120(%rsp), %r10
	movq	%rsi, 56(%r12)
	.loc 1 1452 0
	movl	$9, %esi
	jge	.L2553
	cmpq	$0, 72(%rsp)
	je	.L2554
	.loc 1 312 0
	movq	88(%rsp), %r8
	movq	64(%rsp), %r10
	movq	56(%rsp), %rsi
	.loc 1 1452 0
	movq	%r11, 8(%rdx)
	addq	%rdi, %r11
	movq	%rbp, 16(%rdx)
	movq	%r9, 64(%rdx)
	addq	%rdi, %rbp
	.loc 1 312 0
	addq	%r9, %r8
	prefetcht0	240(%r10)
	movq	96(%rsp), %r10
	movq	%r8, 24(%rdx)
	movq	104(%rsp), %r8
	addq	%r9, %rsi
	movq	%rsi, 32(%rdx)
	movq	%r9, %rsi
	addq	%r9, %r10
	subq	%rax, %rsi
	addq	%r9, %r8
	movq	%r10, 40(%rdx)
	movq	%rsi, 56(%rdx)
	movq	%r8, 48(%rdx)
	movq	64(%rsp), %rdx
	.loc 1 1452 0
	movq	%r9, %r8
	.loc 1 312 0
	movl	$18, %r10d
	addq	%rdi, %r9
	.loc 1 1452 0
	movl	$17, %esi
	addq	$136, %rdx
	cmpq	120(%rsp), %r10
	jge	.L2553
.L2554:
	.loc 1 312 0
	movq	88(%rsp), %r8
	movq	56(%rsp), %r10
	.loc 1 1452 0
	addq	$16, %rsi
	movq	%r9, 64(%rdx)
	movq	%r11, 8(%rdx)
	addq	%rdi, %r11
	movq	%rbp, 16(%rdx)
	addq	%rdi, %rbp
	movq	%r11, 72(%rdx)
	.loc 1 312 0
	addq	%r9, %r8
	addq	%r9, %r10
	.loc 1 1452 0
	movq	%rbp, 80(%rdx)
	.loc 1 312 0
	movq	%r8, 24(%rdx)
	movq	96(%rsp), %r8
	prefetcht0	168(%rdx)
	movq	%r10, 32(%rdx)
	movq	104(%rsp), %r10
	prefetcht0	232(%rdx)
	addq	%rdi, %r11
	addq	%rdi, %rbp
	addq	%r9, %r8
	movq	%r8, 40(%rdx)
	movq	%r9, %r8
	addq	%r9, %r10
	subq	%rax, %r8
	movq	%r10, 48(%rdx)
	movq	56(%rsp), %r10
	movq	%r8, 56(%rdx)
	leaq	(%r9,%rdi), %r8
	movq	88(%rsp), %r9
	addq	%r8, %r10
	.loc 1 1452 0
	movq	%r8, 128(%rdx)
	.loc 1 312 0
	addq	%r8, %r9
	movq	%r10, 96(%rdx)
	movq	104(%rsp), %r10
	movq	%r9, 88(%rdx)
	movq	96(%rsp), %r9
	addq	%r8, %r10
	addq	%r8, %r9
	movq	%r10, 112(%rdx)
	leaq	1(%rsi), %r10
	movq	%r9, 104(%rdx)
	movq	%r8, %r9
	subq	%rax, %r9
	movq	%r9, 120(%rdx)
	subq	$-128, %rdx
	cmpq	120(%rsp), %r10
	leaq	(%r8,%rdi), %r9
	jl	.L2554
.L2553:
	movq	%r13, %rbp
	addq	%rax, %r8
	subq	%r10, %rbp
	addq	$1, %rbp
	andl	$7, %ebp
	je	.L2555
	.loc 1 1452 0
	movq	%r8, (%r12,%rsi,8)
	addq	%rax, %r8
	cmpq	%r10, %r13
	movq	%r10, %rsi
.LVL717:
	jl	.L2552
	addq	$1, %r10
	cmpq	$1, %rbp
	je	.L2555
	cmpq	$2, %rbp
	je	.L2875
	cmpq	$3, %rbp
	je	.L2876
	cmpq	$4, %rbp
	je	.L2877
	cmpq	$5, %rbp
	je	.L2878
	cmpq	$6, %rbp
	je	.L2879
	movq	%r8, (%r12,%rsi,8)
	movq	%r10, %rsi
.LVL718:
	addq	%rax, %r8
	addq	$1, %r10
.L2879:
	movq	%r8, (%r12,%rsi,8)
	movq	%r10, %rsi
.LVL719:
	addq	%rax, %r8
	addq	$1, %r10
.L2878:
	movq	%r8, (%r12,%rsi,8)
	movq	%r10, %rsi
.LVL720:
	addq	%rax, %r8
	addq	$1, %r10
.L2877:
	movq	%r8, (%r12,%rsi,8)
	movq	%r10, %rsi
.LVL721:
	addq	%rax, %r8
	addq	$1, %r10
.L2876:
	movq	%r8, (%r12,%rsi,8)
	movq	%r10, %rsi
.LVL722:
	addq	%rax, %r8
	addq	$1, %r10
.L2875:
	movq	%r8, (%r12,%rsi,8)
	movq	%r10, %rsi
.LVL723:
	addq	%rax, %r8
	addq	$1, %r10
	jmp	.L2555
.LVL724:
.L2984:
	movq	%r8, (%r12,%r10,8)
	addq	%rax, %r8
	leaq	7(%r10), %rsi
	movq	%r8, 8(%r12,%r10,8)
	addq	%rax, %r8
	movq	%r8, 16(%r12,%r10,8)
	addq	%rax, %r8
	movq	%r8, 24(%r12,%r10,8)
	addq	%rax, %r8
	movq	%r8, 32(%r12,%r10,8)
	addq	%rax, %r8
	movq	%r8, 40(%r12,%r10,8)
	addq	%rax, %r8
	movq	%r8, 48(%r12,%r10,8)
	addq	%rax, %r8
	addq	$8, %r10
.LVL725:
.L2555:
	movq	%r8, (%r12,%rsi,8)
.LVL726:
	addq	%rax, %r8
	cmpq	%r10, %r13
	jge	.L2984
.LVL727:
.L2552:
.LBE577:
.LBE580:
.LBE584:
	.loc 1 329 0 discriminator 1
	movl	84(%rsp), %r13d
.LVL728:
	subl	$1, %r13d
	testl	%r13d, %r13d
	jle	.L2556
	.loc 1 312 0
	movl	80(%rsp), %edi
	leal	-9(%rbx), %esi
.LBE566:
	xorl	%eax, %eax
	xorpd	%xmm3, %xmm3
.LBB592:
	shrl	$3, %esi
	leal	8(,%rsi,8), %ebp
	leaq	8(,%rdi,8), %r11
	movq	%rdi, 56(%rsp)
.LVL729:
	.p2align 4,,10
	.p2align 3
.L2563:
	.loc 1 332 0
	testl	%ebx, %ebx
	.loc 1 331 0
	movq	$0, (%rcx,%rax)
.LVL730:
	.loc 1 332 0
	jle	.L2597
	cmpl	$8, %ebx
	jle	.L2598
	.loc 1 333 0
	movq	(%r15), %r10
	movq	8(%r15), %r9
	.loc 1 312 0
	leaq	160(%r15), %rdx
	.loc 1 333 0
	movq	16(%r15), %rdi
	movq	24(%r15), %rsi
	leal	-8(%rbp), %r8d
	prefetcht0	(%rdx)
	movq	32(%r15), %rdx
	movsd	(%r10,%rax), %xmm1
	movq	40(%r15), %r10
	shrl	$3, %r8d
	movsd	(%r9,%rax), %xmm0
	movq	48(%r15), %r9
	mulsd	%xmm1, %xmm1
	andl	$1, %r8d
	mulsd	%xmm0, %xmm0
	movsd	(%rdi,%rax), %xmm4
	movq	56(%r15), %rdi
	movsd	(%rsi,%rax), %xmm5
	addsd	%xmm3, %xmm1
.LVL731:
	mulsd	%xmm4, %xmm4
	mulsd	%xmm5, %xmm5
	movsd	(%rdx,%rax), %xmm6
	leaq	224(%r15), %rdx
	movsd	(%r10,%rax), %xmm7
	.loc 1 332 0
	movl	$8, %r10d
	.loc 1 333 0
	addsd	%xmm0, %xmm1
	mulsd	%xmm6, %xmm6
	cmpl	%ebp, %r10d
	mulsd	%xmm7, %xmm7
	movsd	(%r9,%rax), %xmm8
	movsd	(%rdi,%rax), %xmm9
	addsd	%xmm4, %xmm1
	mulsd	%xmm8, %xmm8
	mulsd	%xmm9, %xmm9
	addsd	%xmm5, %xmm1
	addsd	%xmm6, %xmm1
	addsd	%xmm7, %xmm1
	addsd	%xmm8, %xmm1
	addsd	%xmm9, %xmm1
	je	.L2558
	testl	%r8d, %r8d
	je	.L2559
	movq	-160(%rdx), %r8
	movq	-152(%rdx), %rsi
	prefetcht0	(%rdx)
	movq	-144(%rdx), %r10
	movq	-136(%rdx), %r9
	movq	-128(%rdx), %rdi
	movsd	(%r8,%rax), %xmm10
	movq	-120(%rdx), %r8
	movsd	(%rsi,%rax), %xmm11
	movq	-112(%rdx), %rsi
	mulsd	%xmm10, %xmm10
	movq	-104(%rdx), %rdx
	mulsd	%xmm11, %xmm11
	movsd	(%r10,%rax), %xmm12
	.loc 1 332 0
	movl	$16, %r10d
	.loc 1 333 0
	movsd	(%r9,%rax), %xmm13
	cmpl	%ebp, %r10d
	addsd	%xmm10, %xmm1
	mulsd	%xmm12, %xmm12
	mulsd	%xmm13, %xmm13
	movsd	(%rdi,%rax), %xmm14
	movsd	(%r8,%rax), %xmm15
	addsd	%xmm11, %xmm1
	mulsd	%xmm14, %xmm14
	mulsd	%xmm15, %xmm15
	movsd	(%rsi,%rax), %xmm2
	movsd	(%rdx,%rax), %xmm0
	leaq	288(%r15), %rdx
	addsd	%xmm12, %xmm1
	mulsd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm0
	addsd	%xmm13, %xmm1
	addsd	%xmm14, %xmm1
	addsd	%xmm15, %xmm1
	addsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	je	.L2558
.L2559:
	.loc 1 333 0 is_stmt 0 discriminator 2
	movq	-160(%rdx), %r9
	movq	-152(%rdx), %rdi
	.loc 1 332 0 is_stmt 1 discriminator 2
	addl	$16, %r10d
	.loc 1 333 0 discriminator 2
	movq	-144(%rdx), %r8
	movq	-136(%rdx), %rsi
	prefetcht0	(%rdx)
	movsd	(%r9,%rax), %xmm4
	movq	-128(%rdx), %r9
	movsd	(%r8,%rax), %xmm5
	movq	-112(%rdx), %r8
	mulsd	%xmm4, %xmm4
	mulsd	%xmm5, %xmm5
	movsd	(%rsi,%rax), %xmm6
	movq	-104(%rdx), %rsi
	movsd	(%r9,%rax), %xmm7
	leaq	64(%rdx), %r9
	addsd	%xmm1, %xmm4
	movsd	(%rdi,%rax), %xmm1
	mulsd	%xmm6, %xmm6
	movq	-120(%rdx), %rdi
	prefetcht0	(%r9)
	mulsd	%xmm1, %xmm1
	movq	-72(%rdx), %r9
	mulsd	%xmm7, %xmm7
	movsd	(%rdi,%rax), %xmm8
	movq	-96(%rdx), %rdi
	movsd	(%r8,%rax), %xmm9
	movq	-88(%rdx), %r8
	addsd	%xmm1, %xmm4
	mulsd	%xmm8, %xmm8
	mulsd	%xmm9, %xmm9
	movsd	(%rsi,%rax), %xmm10
	movq	-80(%rdx), %rsi
	movsd	(%rdi,%rax), %xmm1
	movq	-64(%rdx), %rdi
	addsd	%xmm5, %xmm4
	mulsd	%xmm10, %xmm10
	mulsd	%xmm1, %xmm1
	movsd	(%r8,%rax), %xmm11
	movq	-56(%rdx), %r8
	movsd	(%rsi,%rax), %xmm12
	movq	-48(%rdx), %rsi
	addsd	%xmm6, %xmm4
	mulsd	%xmm11, %xmm11
	mulsd	%xmm12, %xmm12
	movsd	(%r9,%rax), %xmm13
	movq	-40(%rdx), %r9
	subq	$-128, %rdx
	movsd	(%rdi,%rax), %xmm14
	cmpl	%ebp, %r10d
	addsd	%xmm7, %xmm4
	mulsd	%xmm13, %xmm13
	mulsd	%xmm14, %xmm14
	movsd	(%r8,%rax), %xmm15
	movsd	(%rsi,%rax), %xmm2
	addsd	%xmm8, %xmm4
	mulsd	%xmm15, %xmm15
	mulsd	%xmm2, %xmm2
	movsd	(%r9,%rax), %xmm0
	addsd	%xmm9, %xmm4
	mulsd	%xmm0, %xmm0
	addsd	%xmm10, %xmm4
	addsd	%xmm4, %xmm1
	addsd	%xmm11, %xmm1
	addsd	%xmm12, %xmm1
	addsd	%xmm13, %xmm1
	addsd	%xmm14, %xmm1
	addsd	%xmm15, %xmm1
	addsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	jne	.L2559
.L2558:
	.loc 1 312 0
	movslq	%r10d, %rdx
	movl	%r10d, %r8d
	leaq	(%r15,%rdx,8), %rdi
	notl	%r8d
	addl	%ebx, %r8d
	.loc 1 333 0
	movq	(%rdi), %rsi
	andl	$7, %r8d
	leaq	8(%rdi), %rdx
	movsd	(%rsi,%rax), %xmm2
	.loc 1 332 0
	leal	1(%r10), %esi
	.loc 1 333 0
	mulsd	%xmm2, %xmm2
	.loc 1 332 0
	cmpl	%esi, %ebx
	.loc 1 333 0
	addsd	%xmm1, %xmm2
	.loc 1 332 0
	jle	.L2945
	testl	%r8d, %r8d
	je	.L2560
	cmpl	$1, %r8d
	je	.L2869
	cmpl	$2, %r8d
	je	.L2870
	cmpl	$3, %r8d
	je	.L2871
	cmpl	$4, %r8d
	je	.L2872
	cmpl	$5, %r8d
	je	.L2873
	cmpl	$6, %r8d
	je	.L2874
	.loc 1 333 0
	movq	8(%rdi), %r9
	.loc 1 332 0
	leal	2(%r10), %esi
	leaq	16(%rdi), %rdx
	.loc 1 333 0
	movsd	(%r9,%rax), %xmm4
	mulsd	%xmm4, %xmm4
	addsd	%xmm4, %xmm2
.L2874:
	movq	(%rdx), %r10
	.loc 1 332 0
	addl	$1, %esi
	addq	$8, %rdx
	.loc 1 333 0
	movsd	(%r10,%rax), %xmm5
	mulsd	%xmm5, %xmm5
	addsd	%xmm5, %xmm2
.L2873:
	movq	(%rdx), %rdi
	.loc 1 332 0
	addl	$1, %esi
	addq	$8, %rdx
	.loc 1 333 0
	movsd	(%rdi,%rax), %xmm6
	mulsd	%xmm6, %xmm6
	addsd	%xmm6, %xmm2
.L2872:
	movq	(%rdx), %r8
	.loc 1 332 0
	addl	$1, %esi
	addq	$8, %rdx
	.loc 1 333 0
	movsd	(%r8,%rax), %xmm7
	mulsd	%xmm7, %xmm7
	addsd	%xmm7, %xmm2
.L2871:
	movq	(%rdx), %r9
	.loc 1 332 0
	addl	$1, %esi
	addq	$8, %rdx
	.loc 1 333 0
	movsd	(%r9,%rax), %xmm8
	mulsd	%xmm8, %xmm8
	addsd	%xmm8, %xmm2
.L2870:
	movq	(%rdx), %r10
	.loc 1 332 0
	addl	$1, %esi
	addq	$8, %rdx
	.loc 1 333 0
	movsd	(%r10,%rax), %xmm9
	mulsd	%xmm9, %xmm9
	addsd	%xmm9, %xmm2
.L2869:
	movq	(%rdx), %rdi
	.loc 1 332 0
	addl	$1, %esi
	addq	$8, %rdx
	cmpl	%esi, %ebx
	.loc 1 333 0
	movsd	(%rdi,%rax), %xmm10
	mulsd	%xmm10, %xmm10
	addsd	%xmm10, %xmm2
	.loc 1 332 0
	jle	.L2945
.L2560:
	.loc 1 333 0
	movq	(%rdx), %r8
	movq	8(%rdx), %r9
	.loc 1 332 0
	addl	$8, %esi
	.loc 1 333 0
	movq	16(%rdx), %r10
	movq	24(%rdx), %rdi
	movsd	(%r8,%rax), %xmm11
	movq	32(%rdx), %r8
	movsd	(%r9,%rax), %xmm12
	movq	40(%rdx), %r9
	mulsd	%xmm11, %xmm11
	mulsd	%xmm12, %xmm12
	movsd	(%r10,%rax), %xmm13
	movq	48(%rdx), %r10
	movsd	(%rdi,%rax), %xmm14
	movq	56(%rdx), %rdi
	addq	$64, %rdx
	addsd	%xmm11, %xmm2
	mulsd	%xmm13, %xmm13
	.loc 1 332 0
	cmpl	%esi, %ebx
	.loc 1 333 0
	mulsd	%xmm14, %xmm14
	movsd	(%r8,%rax), %xmm15
	movsd	(%r9,%rax), %xmm0
	addsd	%xmm12, %xmm2
	mulsd	%xmm15, %xmm15
	mulsd	%xmm0, %xmm0
	movsd	(%r10,%rax), %xmm1
	movsd	(%rdi,%rax), %xmm4
	addsd	%xmm13, %xmm2
	mulsd	%xmm1, %xmm1
	mulsd	%xmm4, %xmm4
	addsd	%xmm14, %xmm2
	addsd	%xmm15, %xmm2
	addsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	addsd	%xmm4, %xmm2
	.loc 1 332 0
	jg	.L2560
.L2945:
	.loc 1 334 0
	sqrtsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm0
	movsd	%xmm2, (%rcx,%rax)
	jp	.L2985
.L2561:
	movsd	%xmm0, (%rcx,%rax)
	addq	$8, %rax
	.loc 1 329 0
	cmpq	%r11, %rax
	jne	.L2563
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L2564:
.LVL732:
	.loc 1 339 0 discriminator 1
	testl	%ebx, %ebx
	jle	.L2566
	.loc 1 312 0
	xorl	%edi, %edi
	cmpl	$8, %ebx
	leaq	80(%r12), %rsi
	movsd	(%rcx,%rax), %xmm2
	leaq	80(%r15), %rdx
	jle	.L2568
.LVL733:
	.p2align 4,,10
	.p2align 3
.L2614:
	.loc 1 340 0 discriminator 2
	movq	-80(%rdx), %r9
	movq	-80(%rsi), %r8
	.loc 1 339 0 discriminator 2
	addl	$8, %edi
	.loc 1 340 0 discriminator 2
	movq	-72(%rsi), %r10
	prefetcht0	(%rsi)
	prefetcht0	(%rdx)
	movsd	(%r9,%rax), %xmm5
	movq	-64(%rdx), %r9
	divsd	%xmm2, %xmm5
	movsd	(%r9,%rax), %xmm7
	movq	-48(%rdx), %r9
	divsd	%xmm2, %xmm7
	movsd	%xmm5, (%r8,%rax)
	movq	-72(%rdx), %r8
	movsd	(%r8,%rax), %xmm6
	movq	-56(%rsi), %r8
	movsd	(%r9,%rax), %xmm9
	movq	-32(%rdx), %r9
	divsd	%xmm2, %xmm6
	divsd	%xmm2, %xmm9
	movsd	%xmm6, (%r10,%rax)
	movq	-64(%rsi), %r10
	movsd	%xmm7, (%r10,%rax)
	movq	-56(%rdx), %r10
	movsd	(%r10,%rax), %xmm8
	movq	-40(%rsi), %r10
	movsd	(%r9,%rax), %xmm11
	divsd	%xmm2, %xmm8
	divsd	%xmm2, %xmm11
	movsd	%xmm8, (%r8,%rax)
	movq	-48(%rsi), %r8
	movsd	%xmm9, (%r8,%rax)
	movq	-40(%rdx), %r8
	movsd	(%r8,%rax), %xmm10
	movq	-24(%rsi), %r8
	divsd	%xmm2, %xmm10
	movsd	%xmm10, (%r10,%rax)
	movq	-32(%rsi), %r10
	addq	$64, %rsi
	movsd	%xmm11, (%r10,%rax)
.LVL734:
	movq	-24(%rdx), %r10
	addq	$64, %rdx
	cmpl	%ebp, %edi
	movsd	(%r10,%rax), %xmm12
	divsd	%xmm2, %xmm12
	movsd	%xmm12, (%r8,%rax)
	jne	.L2614
.LVL735:
.L2568:
	.loc 1 312 0
	movslq	%edi, %rsi
	movl	%edi, %edx
	salq	$3, %rsi
	notl	%edx
	leaq	(%r12,%rsi), %r8
	addq	%r15, %rsi
	leal	(%rdx,%rbx), %r9d
	.loc 1 340 0
	movq	(%rsi), %r10
	movq	(%r8), %rdx
	andl	$7, %r9d
	movsd	(%r10,%rax), %xmm13
	.loc 1 312 0
	leal	1(%rdi), %r10d
	.loc 1 340 0
	divsd	%xmm2, %xmm13
	.loc 1 339 0
	cmpl	%r10d, %ebx
	.loc 1 340 0
	movsd	%xmm13, (%rdx,%rax)
	movl	$1, %edx
	.loc 1 339 0
	jle	.L2566
	testl	%r9d, %r9d
	je	.L2565
	cmpl	$1, %r9d
	je	.L2863
	cmpl	$2, %r9d
	je	.L2864
	cmpl	$3, %r9d
	je	.L2865
	cmpl	$4, %r9d
	je	.L2866
	cmpl	$5, %r9d
	je	.L2867
	cmpl	$6, %r9d
	je	.L2868
	.loc 1 340 0
	movq	8(%rsi), %r9
	movq	8(%r8), %rdx
	movsd	(%r9,%rax), %xmm14
	divsd	%xmm2, %xmm14
	movsd	%xmm14, (%rdx,%rax)
	movl	$2, %edx
.L2868:
	movq	(%rsi,%rdx,8), %r10
	movq	(%r8,%rdx,8), %r9
	addq	$1, %rdx
	movsd	(%r10,%rax), %xmm15
	divsd	%xmm2, %xmm15
	movsd	%xmm15, (%r9,%rax)
.L2867:
	movq	(%rsi,%rdx,8), %r10
	movq	(%r8,%rdx,8), %r9
	addq	$1, %rdx
	movsd	(%r10,%rax), %xmm0
	divsd	%xmm2, %xmm0
	movsd	%xmm0, (%r9,%rax)
.L2866:
	movq	(%rsi,%rdx,8), %r10
	movq	(%r8,%rdx,8), %r9
	addq	$1, %rdx
	movsd	(%r10,%rax), %xmm1
	divsd	%xmm2, %xmm1
	movsd	%xmm1, (%r9,%rax)
.L2865:
	movq	(%rsi,%rdx,8), %r10
	movq	(%r8,%rdx,8), %r9
	addq	$1, %rdx
	movsd	(%r10,%rax), %xmm4
	divsd	%xmm2, %xmm4
	movsd	%xmm4, (%r9,%rax)
.L2864:
	movq	(%rsi,%rdx,8), %r10
	movq	(%r8,%rdx,8), %r9
	addq	$1, %rdx
	movsd	(%r10,%rax), %xmm3
	divsd	%xmm2, %xmm3
	movsd	%xmm3, (%r9,%rax)
.L2863:
	movq	(%rsi,%rdx,8), %r10
	movq	(%r8,%rdx,8), %r9
	addq	$1, %rdx
	movsd	(%r10,%rax), %xmm5
	divsd	%xmm2, %xmm5
	movsd	%xmm5, (%r9,%rax)
	.loc 1 312 0
	leal	(%rdi,%rdx), %r9d
	.loc 1 339 0
	cmpl	%r9d, %ebx
	jle	.L2566
.L2565:
	.loc 1 340 0
	movq	(%rsi,%rdx,8), %r10
	movq	(%r8,%rdx,8), %r9
	movsd	(%r10,%rax), %xmm6
	divsd	%xmm2, %xmm6
	movsd	%xmm6, (%r9,%rax)
	leaq	1(%rdx), %r9
	movq	(%r8,%r9,8), %r10
	movq	(%rsi,%r9,8), %r9
	movsd	(%r9,%rax), %xmm7
	leaq	2(%rdx), %r9
	divsd	%xmm2, %xmm7
	movsd	%xmm7, (%r10,%rax)
	movq	(%r8,%r9,8), %r10
	movq	(%rsi,%r9,8), %r9
	movsd	(%r9,%rax), %xmm8
	leaq	3(%rdx), %r9
	divsd	%xmm2, %xmm8
	movsd	%xmm8, (%r10,%rax)
	movq	(%r8,%r9,8), %r10
	movq	(%rsi,%r9,8), %r9
	movsd	(%r9,%rax), %xmm9
	leaq	4(%rdx), %r9
	divsd	%xmm2, %xmm9
	movsd	%xmm9, (%r10,%rax)
	movq	(%r8,%r9,8), %r10
	movq	(%rsi,%r9,8), %r9
	movsd	(%r9,%rax), %xmm10
	leaq	5(%rdx), %r9
	divsd	%xmm2, %xmm10
	movsd	%xmm10, (%r10,%rax)
	movq	(%r8,%r9,8), %r10
	movq	(%rsi,%r9,8), %r9
	movsd	(%r9,%rax), %xmm11
	leaq	6(%rdx), %r9
	divsd	%xmm2, %xmm11
	movsd	%xmm11, (%r10,%rax)
	movq	(%r8,%r9,8), %r10
	movq	(%rsi,%r9,8), %r9
	movsd	(%r9,%rax), %xmm12
	leaq	7(%rdx), %r9
	addq	$8, %rdx
	divsd	%xmm2, %xmm12
	movsd	%xmm12, (%r10,%rax)
	movq	(%r8,%r9,8), %r10
	movq	(%rsi,%r9,8), %r9
	movsd	(%r9,%rax), %xmm13
	divsd	%xmm2, %xmm13
	movsd	%xmm13, (%r10,%rax)
	.loc 1 312 0
	leal	(%rdi,%rdx), %r10d
	.loc 1 339 0
	cmpl	%r10d, %ebx
	jg	.L2565
.L2566:
	addq	$8, %rax
	.loc 1 338 0
	cmpq	%r11, %rax
	jne	.L2564
	.loc 1 312 0
	movl	84(%rsp), %r10d
	.loc 1 345 0
	xorpd	%xmm2, %xmm2
	movq	%r12, 72(%rsp)
	.loc 1 312 0
	xorl	%r11d, %r11d
	movl	84(%rsp), %r12d
.LVL736:
	movl	%ebp, 88(%rsp)
	movl	%ebx, 84(%rsp)
	subl	$8, %r10d
.LVL737:
	.p2align 4,,10
	.p2align 3
.L2569:
	movq	(%r14,%r11,8), %r8
	.loc 1 312 0 is_stmt 0 discriminator 1
	movl	%r13d, %esi
	movq	%r8, %rdi
	salq	$60, %rdi
	shrq	$63, %rdi
	cmpl	%edi, %r13d
	cmovb	%r13d, %edi
	cmpl	$6, %r13d
	cmova	%edi, %esi
	testl	%esi, %esi
	je	.L2600
	cmpl	$8, %esi
	jbe	.L2601
	.loc 1 312 0
	leal	-9(%rsi), %ecx
	leaq	232(%r8), %rax
	movl	$64, %edx
	.loc 1 345 0 is_stmt 1
	movq	$0, (%r8)
.LVL738:
	movq	$0, 8(%r8)
	.loc 1 344 0
	movl	$8, %r15d
	.loc 1 312 0
	shrl	$3, %ecx
	prefetcht0	(%rax)
	.loc 1 345 0
	movq	$0, 16(%r8)
	.loc 1 312 0
	leaq	1(%rcx), %rbp
	.loc 1 345 0
	movq	$0, 24(%r8)
	movq	$0, 32(%r8)
	movq	$0, 40(%r8)
	movq	$0, 48(%r8)
	movl	$8, %r9d
	.loc 1 312 0
	salq	$6, %rbp
	.loc 1 345 0
	movq	$0, 56(%r8)
	leaq	296(%r8), %rdi
	leaq	-64(%rbp), %rbx
	shrq	$6, %rbx
	andl	$3, %ebx
	cmpq	%rbp, %rdx
	je	.L2582
	testq	%rbx, %rbx
	je	.L2583
	cmpq	$1, %rbx
	je	.L2861
	cmpq	$2, %rbx
	je	.L2862
	prefetcht0	(%rdi)
	movq	$0, -232(%rdi)
	movq	$0, -224(%rdi)
	movq	$0, -216(%rdi)
	movq	$0, -208(%rdi)
	.loc 1 344 0
	movl	$16, %r15d
	.loc 1 345 0
	movq	$0, -200(%rdi)
	movq	$0, -192(%rdi)
	movl	$128, %edx
	movq	$0, -184(%rdi)
	movq	$0, -176(%rdi)
	leaq	360(%r8), %rdi
.L2862:
	prefetcht0	(%rdi)
	movq	$0, -232(%rdi)
	movq	$0, -224(%rdi)
	movq	$0, -216(%rdi)
	movq	$0, -208(%rdi)
	.loc 1 344 0
	addl	$8, %r15d
	.loc 1 345 0
	movq	$0, -200(%rdi)
	movq	$0, -192(%rdi)
	addq	$64, %rdx
	movq	$0, -184(%rdi)
	movq	$0, -176(%rdi)
	addq	$64, %rdi
.L2861:
	addq	$64, %rdx
	.loc 1 344 0
	addl	$8, %r15d
	prefetcht0	(%rdi)
	.loc 1 345 0
	movq	$0, -232(%rdi)
	movq	$0, -224(%rdi)
	movl	%r15d, %r9d
	movq	$0, -216(%rdi)
	movq	$0, -208(%rdi)
	movq	$0, -200(%rdi)
	movq	$0, -192(%rdi)
	movq	$0, -184(%rdi)
	movq	$0, -176(%rdi)
	addq	$64, %rdi
	cmpq	%rbp, %rdx
	je	.L2582
.L2583:
	leaq	64(%rdi), %rax
	leaq	128(%rdi), %rcx
	leaq	192(%rdi), %rbx
	addq	$256, %rdx
	.loc 1 344 0
	addl	$32, %r15d
	prefetcht0	(%rdi)
	.loc 1 345 0
	movq	$0, -232(%rdi)
	movq	$0, -224(%rdi)
	prefetcht0	(%rax)
	movq	$0, -216(%rdi)
	movq	$0, -208(%rdi)
	prefetcht0	(%rcx)
	movq	$0, -200(%rdi)
	movq	$0, -192(%rdi)
	prefetcht0	(%rbx)
	movq	$0, -184(%rdi)
	movq	$0, -176(%rdi)
	movl	%r15d, %r9d
	movq	$0, -168(%rdi)
	movq	$0, -160(%rdi)
	movq	$0, -152(%rdi)
	movq	$0, -144(%rdi)
	movq	$0, -136(%rdi)
	movq	$0, -128(%rdi)
	movq	$0, -120(%rdi)
	movq	$0, -112(%rdi)
	movq	$0, -104(%rdi)
	movq	$0, -96(%rdi)
	movq	$0, -88(%rdi)
	movq	$0, -80(%rdi)
	movq	$0, -72(%rdi)
	movq	$0, -64(%rdi)
	movq	$0, -56(%rdi)
	movq	$0, -48(%rdi)
	movq	$0, -40(%rdi)
	movq	$0, -32(%rdi)
	movq	$0, -24(%rdi)
	movq	$0, -16(%rdi)
	movq	$0, -8(%rdi)
	movq	$0, (%rdi)
	movq	$0, 8(%rdi)
	movq	$0, 16(%rdi)
	addq	$256, %rdi
	cmpq	%rbp, %rdx
	jne	.L2583
.L2582:
.LVL739:
	movl	%r9d, %edi
	.loc 1 312 0
	movslq	%r15d, %rbp
	leal	1(%r9), %ebx
	notl	%edi
	leaq	(%r8,%rbp,8), %rcx
	leal	1(%r15), %edx
.LVL740:
	addl	%esi, %edi
	andl	$7, %edi
	cmpl	%ebx, %esi
	.loc 1 345 0
	movq	$0, (%rcx)
	leaq	8(%rcx), %rax
	jbe	.L2948
	testl	%edi, %edi
	je	.L2586
	cmpl	$1, %edi
	je	.L2855
	cmpl	$2, %edi
	.p2align 4,,3
	je	.L2856
	cmpl	$3, %edi
	.p2align 4,,2
	je	.L2857
	cmpl	$4, %edi
	.p2align 4,,2
	je	.L2858
	cmpl	$5, %edi
	.p2align 4,,2
	je	.L2859
	cmpl	$6, %edi
	.p2align 4,,2
	je	.L2860
	.loc 1 344 0
	leal	2(%r15), %edx
.LVL741:
	leaq	16(%rcx), %rax
	.loc 1 345 0
	movq	$0, 8(%rcx)
.L2860:
	movq	$0, (%rax)
	.loc 1 344 0
	addl	$1, %edx
.LVL742:
	addq	$8, %rax
.L2859:
	.loc 1 345 0
	movq	$0, (%rax)
	.loc 1 344 0
	addl	$1, %edx
.LVL743:
	addq	$8, %rax
.L2858:
	.loc 1 345 0
	movq	$0, (%rax)
	.loc 1 344 0
	addl	$1, %edx
.LVL744:
	addq	$8, %rax
.L2857:
	.loc 1 345 0
	movq	$0, (%rax)
	.loc 1 344 0
	addl	$1, %edx
.LVL745:
	addq	$8, %rax
.L2856:
	.loc 1 345 0
	movq	$0, (%rax)
	.loc 1 344 0
	addl	$1, %edx
.LVL746:
	addq	$8, %rax
.L2855:
	addl	$1, %edx
.LVL747:
	.loc 1 345 0
	movq	$0, (%rax)
	addq	$8, %rax
	.loc 1 312 0
	leal	(%r9,%rdx), %ebp
	subl	%r15d, %ebp
	cmpl	%ebp, %esi
	jbe	.L2948
.L2586:
	.loc 1 344 0
	addl	$8, %edx
.LVL748:
	.loc 1 345 0
	movq	$0, (%rax)
.LVL749:
	movq	$0, 8(%rax)
	.loc 1 312 0
	leal	(%r9,%rdx), %ecx
	.loc 1 345 0
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	$0, 32(%rax)
	movq	$0, 40(%rax)
	subl	%r15d, %ecx
	movq	$0, 48(%rax)
.LVL750:
	movq	$0, 56(%rax)
	addq	$64, %rax
	cmpl	%ecx, %esi
	ja	.L2586
.L2948:
	cmpl	%r13d, %esi
	je	.L2584
.LVL751:
.L2581:
	movl	%r13d, %ebx
	movl	%esi, %r15d
	subl	%esi, %ebx
	movl	%ebx, %edi
	shrl	%edi
	movl	%edi, %ebp
	addl	%ebp, %ebp
	je	.L2585
	.loc 1 312 0
	xorl	%r9d, %r9d
	cmpl	$4, %edi
	leaq	(%r8,%r15,8), %rax
	leal	-3(%rdi), %r15d
	jbe	.L2574
	leal	-5(%rdi), %esi
	prefetcht0	640(%rax)
	movl	$4, %r9d
	.loc 1 345 0 discriminator 2
	movapd	%xmm2, (%rax)
	shrl	$2, %esi
	movl	$4, %ecx
	andl	$3, %esi
	movapd	%xmm2, 16(%rax)
	movapd	%xmm2, 32(%rax)
	movapd	%xmm2, 48(%rax)
	.loc 1 312 0 discriminator 2
	addq	$64, %rax
	cmpl	$5, %r15d
	jbe	.L2574
	testl	%esi, %esi
	je	.L2613
	cmpl	$1, %esi
	je	.L2853
	cmpl	$2, %esi
	.p2align 4,,3
	je	.L2854
	prefetcht0	640(%rax)
	.loc 1 345 0
	movapd	%xmm2, (%rax)
	movl	$8, %ecx
	movapd	%xmm2, 16(%rax)
	movapd	%xmm2, 32(%rax)
	movapd	%xmm2, 48(%rax)
	.loc 1 312 0
	addq	$64, %rax
.L2854:
	prefetcht0	640(%rax)
	.loc 1 345 0
	movapd	%xmm2, (%rax)
	addl	$4, %ecx
	movapd	%xmm2, 16(%rax)
	movapd	%xmm2, 32(%rax)
	movapd	%xmm2, 48(%rax)
	.loc 1 312 0
	addq	$64, %rax
.L2853:
	leal	5(%rcx), %esi
	leal	4(%rcx), %r9d
	prefetcht0	640(%rax)
	.loc 1 345 0
	movapd	%xmm2, (%rax)
	movl	%r9d, %ecx
	movapd	%xmm2, 16(%rax)
	movapd	%xmm2, 32(%rax)
	movapd	%xmm2, 48(%rax)
	.loc 1 312 0
	addq	$64, %rax
	cmpl	%r15d, %esi
	jae	.L2574
.L2613:
	leal	17(%rcx), %esi
	leal	16(%rcx), %r9d
	prefetcht0	640(%rax)
	.loc 1 345 0 discriminator 2
	movapd	%xmm2, (%rax)
	prefetcht0	704(%rax)
	prefetcht0	768(%rax)
	prefetcht0	832(%rax)
	movl	%r9d, %ecx
	movapd	%xmm2, 16(%rax)
	movapd	%xmm2, 32(%rax)
	movapd	%xmm2, 48(%rax)
	movapd	%xmm2, 64(%rax)
	movapd	%xmm2, 80(%rax)
	movapd	%xmm2, 96(%rax)
	movapd	%xmm2, 112(%rax)
	movapd	%xmm2, 128(%rax)
	movapd	%xmm2, 144(%rax)
	movapd	%xmm2, 160(%rax)
	movapd	%xmm2, 176(%rax)
	movapd	%xmm2, 192(%rax)
	movapd	%xmm2, 208(%rax)
	movapd	%xmm2, 224(%rax)
	movapd	%xmm2, 240(%rax)
	.loc 1 312 0 discriminator 2
	addq	$256, %rax
	cmpl	%r15d, %esi
	jb	.L2613
.L2574:
	movl	%r9d, %r15d
	leal	1(%r9), %esi
	leaq	16(%rax), %rcx
	notl	%r15d
	addl	%edi, %r15d
	andl	$7, %r15d
	cmpl	%edi, %esi
	.loc 1 345 0
	movapd	%xmm2, (%rax)
	jae	.L2946
	testl	%r15d, %r15d
	je	.L2571
	cmpl	$1, %r15d
	je	.L2847
	cmpl	$2, %r15d
	je	.L2848
	cmpl	$3, %r15d
	je	.L2849
	cmpl	$4, %r15d
	je	.L2850
	cmpl	$5, %r15d
	je	.L2851
	cmpl	$6, %r15d
	je	.L2852
	movapd	%xmm2, (%rcx)
	leal	2(%r9), %esi
	leaq	32(%rax), %rcx
.L2852:
	movapd	%xmm2, (%rcx)
	addl	$1, %esi
	addq	$16, %rcx
.L2851:
	movapd	%xmm2, (%rcx)
	addl	$1, %esi
	addq	$16, %rcx
.L2850:
	movapd	%xmm2, (%rcx)
	addl	$1, %esi
	addq	$16, %rcx
.L2849:
	movapd	%xmm2, (%rcx)
	addl	$1, %esi
	addq	$16, %rcx
.L2848:
	movapd	%xmm2, (%rcx)
	addl	$1, %esi
	addq	$16, %rcx
.L2847:
	addl	$1, %esi
	movapd	%xmm2, (%rcx)
	addq	$16, %rcx
	cmpl	%edi, %esi
	jae	.L2946
.L2571:
	addl	$8, %esi
	movapd	%xmm2, (%rcx)
	movapd	%xmm2, 16(%rcx)
	movapd	%xmm2, 32(%rcx)
	movapd	%xmm2, 48(%rcx)
	movapd	%xmm2, 64(%rcx)
	movapd	%xmm2, 80(%rcx)
	movapd	%xmm2, 96(%rcx)
	movapd	%xmm2, 112(%rcx)
	subq	$-128, %rcx
	cmpl	%edi, %esi
	jb	.L2571
.L2946:
	addl	%ebp, %edx
	cmpl	%ebp, %ebx
	je	.L2584
.L2585:
	.loc 1 312 0
	leal	1(%rdx), %ecx
	cmpl	%r10d, %ecx
	setl	%bl
	cmpl	%ecx, %r12d
	setg	%dil
	testb	%dil, %bl
	je	.L2576
	cmpl	$-2147483640, %r12d
	jl	.L2576
	movl	%r10d, %r15d
	movslq	%edx, %rbp
	subl	%edx, %r15d
	.loc 1 344 0
	addl	$8, %edx
	.loc 1 312 0
	leaq	272(%r8,%rbp,8), %r9
	subl	$2, %r15d
	leal	1(%rdx), %ecx
	shrl	$3, %r15d
	prefetcht0	(%r9)
	.loc 1 345 0
	movq	$0, -272(%r9)
	andl	$3, %r15d
	cmpl	%ecx, %r10d
	movq	$0, -264(%r9)
	movq	$0, -256(%r9)
	movq	$0, -248(%r9)
	leaq	64(%r9), %rax
	movq	$0, -240(%r9)
	movq	$0, -232(%r9)
	movq	$0, -224(%r9)
.LVL752:
	movq	$0, -216(%r9)
	jle	.L2576
	testl	%r15d, %r15d
	je	.L2577
	cmpl	$1, %r15d
	je	.L2845
	cmpl	$2, %r15d
	je	.L2846
	prefetcht0	(%rax)
	movq	$0, -272(%rax)
.LVL753:
	movq	$0, -264(%rax)
.LVL754:
	movq	$0, -256(%rax)
.LVL755:
	movq	$0, -248(%rax)
.LVL756:
	.loc 1 344 0
	addl	$8, %edx
	.loc 1 345 0
	movq	$0, -240(%rax)
.LVL757:
	movq	$0, -232(%rax)
.LVL758:
	movq	$0, -224(%rax)
.LVL759:
	movq	$0, -216(%rax)
	leaq	128(%r9), %rax
.L2846:
	prefetcht0	(%rax)
	movq	$0, -272(%rax)
.LVL760:
	movq	$0, -264(%rax)
.LVL761:
	movq	$0, -256(%rax)
.LVL762:
	movq	$0, -248(%rax)
.LVL763:
	.loc 1 344 0
	addl	$8, %edx
.LVL764:
	.loc 1 345 0
	movq	$0, -240(%rax)
.LVL765:
	movq	$0, -232(%rax)
.LVL766:
	movq	$0, -224(%rax)
.LVL767:
	movq	$0, -216(%rax)
	addq	$64, %rax
.L2845:
	.loc 1 344 0
	addl	$8, %edx
.LVL768:
	prefetcht0	(%rax)
	.loc 1 345 0
	movq	$0, -272(%rax)
.LVL769:
	.loc 1 312 0
	leal	1(%rdx), %ecx
	.loc 1 345 0
	movq	$0, -264(%rax)
	movq	$0, -256(%rax)
	movq	$0, -248(%rax)
	movq	$0, -240(%rax)
	movq	$0, -232(%rax)
	movq	$0, -224(%rax)
.LVL770:
	movq	$0, -216(%rax)
	addq	$64, %rax
	cmpl	%ecx, %r10d
	jle	.L2576
.L2577:
	.loc 1 344 0
	addl	$32, %edx
.LVL771:
	leaq	64(%rax), %rsi
	leaq	128(%rax), %rbx
	.loc 1 312 0
	leal	1(%rdx), %ecx
	leaq	192(%rax), %rdi
	prefetcht0	(%rax)
	.loc 1 345 0
	movq	$0, -272(%rax)
.LVL772:
	movq	$0, -264(%rax)
	prefetcht0	(%rsi)
	movq	$0, -256(%rax)
	movq	$0, -248(%rax)
	prefetcht0	(%rbx)
	movq	$0, -240(%rax)
	movq	$0, -232(%rax)
	prefetcht0	(%rdi)
	movq	$0, -224(%rax)
	movq	$0, -216(%rax)
	movq	$0, -208(%rax)
	movq	$0, -200(%rax)
	movq	$0, -192(%rax)
	movq	$0, -184(%rax)
	movq	$0, -176(%rax)
	movq	$0, -168(%rax)
	movq	$0, -160(%rax)
	movq	$0, -152(%rax)
	movq	$0, -144(%rax)
	movq	$0, -136(%rax)
	movq	$0, -128(%rax)
	movq	$0, -120(%rax)
	movq	$0, -112(%rax)
	movq	$0, -104(%rax)
	movq	$0, -96(%rax)
	movq	$0, -88(%rax)
	movq	$0, -80(%rax)
	movq	$0, -72(%rax)
	movq	$0, -64(%rax)
	movq	$0, -56(%rax)
	movq	$0, -48(%rax)
	movq	$0, -40(%rax)
	movq	$0, -32(%rax)
.LVL773:
	movq	$0, -24(%rax)
	addq	$256, %rax
	cmpl	%ecx, %r10d
	jg	.L2577
.LVL774:
.L2576:
	movl	%r13d, %ebp
	.loc 1 312 0
	movslq	%edx, %rdx
	subl	%ecx, %ebp
	leaq	(%r8,%rdx,8), %r8
	andl	$7, %ebp
	je	.L2578
	.loc 1 345 0
	movq	$0, (%r8)
.LVL775:
	addq	$8, %r8
	.loc 1 344 0
	cmpl	%ecx, %r13d
	jle	.L2584
	addl	$1, %ecx
.LVL776:
	cmpl	$1, %ebp
	je	.L2578
	cmpl	$2, %ebp
	je	.L2840
	cmpl	$3, %ebp
	je	.L2841
	cmpl	$4, %ebp
	.p2align 4,,2
	je	.L2842
	cmpl	$5, %ebp
	.p2align 4,,2
	je	.L2843
	cmpl	$6, %ebp
	.p2align 4,,2
	je	.L2844
	.loc 1 345 0
	movq	$0, (%r8)
.LVL777:
	addl	$1, %ecx
.LVL778:
	addq	$8, %r8
.LVL779:
.L2844:
	movq	$0, (%r8)
.LVL780:
	addl	$1, %ecx
.LVL781:
	addq	$8, %r8
.LVL782:
.L2843:
	movq	$0, (%r8)
.LVL783:
	addl	$1, %ecx
.LVL784:
	addq	$8, %r8
.LVL785:
.L2842:
	movq	$0, (%r8)
.LVL786:
	addl	$1, %ecx
.LVL787:
	addq	$8, %r8
.LVL788:
.L2841:
	movq	$0, (%r8)
.LVL789:
	addl	$1, %ecx
.LVL790:
	addq	$8, %r8
.LVL791:
.L2840:
	movq	$0, (%r8)
.LVL792:
	addl	$1, %ecx
.LVL793:
	addq	$8, %r8
	jmp	.L2578
.LVL794:
	.p2align 4,,10
	.p2align 3
.L2986:
	movq	$0, 8(%r8)
	movq	$0, 16(%r8)
	addl	$8, %ecx
.LVL795:
	movq	$0, 24(%r8)
.LVL796:
	movq	$0, 32(%r8)
	movq	$0, 40(%r8)
	movq	$0, 48(%r8)
	movq	$0, 56(%r8)
	addq	$64, %r8
.L2578:
	.loc 1 344 0
	cmpl	%ecx, %r13d
	.loc 1 345 0
	movq	$0, (%r8)
.LVL797:
	.loc 1 344 0
	jg	.L2986
.LVL798:
.L2584:
	addq	$1, %r11
	.loc 1 343 0
	cmpl	%r11d, %r13d
	jg	.L2569
	xorl	%edx, %edx
	xorl	%r15d, %r15d
	.loc 1 349 0
	cmpl	$0, %r13d
	movq	72(%rsp), %r12
	movl	88(%rsp), %ebp
	movl	84(%rsp), %ebx
	jg	.L2950
	movb	$1, %r15b
	addq	$8, %rdx
	subl	$1, 80(%rsp)
	.loc 1 348 0
	cmpl	%r15d, %r13d
	jle	.L2556
	.p2align 4,,10
	.p2align 3
.L2987:
	movl	80(%rsp), %r11d
	movq	%r11, 56(%rsp)
.L2950:
	.loc 1 312 0
	movq	56(%rsp), %r11
	addq	$1, %r15
	movq	%rdx, %rax
	addq	%r15, %r11
	salq	$3, %r11
	.p2align 4,,10
	.p2align 3
.L2595:
.LVL799:
	.loc 1 350 0 discriminator 1
	testl	%ebx, %ebx
	jle	.L2593
	.loc 1 351 0
	movq	(%r14,%rdx), %r8
	xorl	%edi, %edi
	.loc 1 312 0
	leaq	136(%r12), %r10
	.loc 1 351 0
	addq	%rax, %r8
	cmpl	$8, %ebx
	movsd	(%r8), %xmm14
	jle	.L2591
	.loc 1 351 0 is_stmt 0 discriminator 2
	movq	-136(%r10), %rcx
	movq	-128(%r10), %rsi
	prefetcht0	(%r10)
	movq	-120(%r10), %rdi
	leal	-8(%rbp), %r9d
	movsd	(%rcx,%rdx), %xmm15
	shrl	$3, %r9d
	movsd	(%rsi,%rdx), %xmm0
	andl	$1, %r9d
	mulsd	(%rcx,%rax), %xmm15
	movq	-112(%r10), %rcx
	mulsd	(%rsi,%rax), %xmm0
	movq	-104(%r10), %rsi
	movsd	(%rdi,%rdx), %xmm1
	movsd	(%rcx,%rdx), %xmm4
	mulsd	(%rdi,%rax), %xmm1
	movq	-96(%r10), %rdi
	mulsd	(%rcx,%rax), %xmm4
	movq	-88(%r10), %rcx
	addsd	%xmm15, %xmm14
.LVL800:
	movsd	(%rsi,%rdx), %xmm3
	movsd	(%rdi,%rdx), %xmm5
	movq	-80(%r10), %r10
	mulsd	(%rsi,%rax), %xmm3
	mulsd	(%rdi,%rax), %xmm5
	.loc 1 350 0 is_stmt 1 discriminator 2
	movl	$8, %edi
	.loc 1 351 0 discriminator 2
	addsd	%xmm0, %xmm14
	movsd	(%rcx,%rdx), %xmm6
	movsd	(%r10,%rdx), %xmm7
	cmpl	%ebp, %edi
	mulsd	(%rcx,%rax), %xmm6
	leaq	200(%r12), %rcx
	mulsd	(%r10,%rax), %xmm7
	addsd	%xmm1, %xmm14
	addsd	%xmm4, %xmm14
	addsd	%xmm3, %xmm14
	addsd	%xmm5, %xmm14
	addsd	%xmm6, %xmm14
.LVL801:
	addsd	%xmm7, %xmm14
	je	.L2591
	testl	%r9d, %r9d
	je	.L2612
	.loc 1 351 0 is_stmt 0
	movq	-136(%rcx), %r9
	movq	-128(%rcx), %rsi
	prefetcht0	(%rcx)
	movq	-120(%rcx), %rdi
.LVL802:
	movq	-112(%rcx), %r10
	movsd	(%r9,%rdx), %xmm8
	movsd	(%rsi,%rdx), %xmm9
	mulsd	(%r9,%rax), %xmm8
	movq	-104(%rcx), %r9
	mulsd	(%rsi,%rax), %xmm9
	movq	-96(%rcx), %rsi
	movsd	(%rdi,%rdx), %xmm10
	movsd	(%r10,%rdx), %xmm11
	mulsd	(%rdi,%rax), %xmm10
	movq	-88(%rcx), %rdi
	mulsd	(%r10,%rax), %xmm11
	movq	-80(%rcx), %rcx
	addsd	%xmm8, %xmm14
.LVL803:
	movsd	(%r9,%rdx), %xmm12
	movsd	(%rsi,%rdx), %xmm13
	mulsd	(%r9,%rax), %xmm12
	mulsd	(%rsi,%rax), %xmm13
	addsd	%xmm9, %xmm14
	movsd	(%rdi,%rdx), %xmm2
	movsd	(%rcx,%rdx), %xmm15
	mulsd	(%rdi,%rax), %xmm2
	.loc 1 350 0 is_stmt 1
	movl	$16, %edi
	.loc 1 351 0
	mulsd	(%rcx,%rax), %xmm15
	cmpl	%ebp, %edi
	leaq	264(%r12), %rcx
	addsd	%xmm10, %xmm14
	addsd	%xmm11, %xmm14
	addsd	%xmm12, %xmm14
	addsd	%xmm13, %xmm14
	addsd	%xmm2, %xmm14
.LVL804:
	addsd	%xmm15, %xmm14
	je	.L2591
.L2612:
	.loc 1 351 0 is_stmt 0 discriminator 2
	movq	-136(%rcx), %r10
	movq	-128(%rcx), %r9
	.loc 1 350 0 is_stmt 1 discriminator 2
	addl	$16, %edi
.LVL805:
	.loc 1 351 0 discriminator 2
	movq	-120(%rcx), %rsi
	prefetcht0	(%rcx)
	movsd	(%r10,%rdx), %xmm1
	movsd	(%rsi,%rdx), %xmm0
	mulsd	(%r10,%rax), %xmm1
	movq	-112(%rcx), %r10
	mulsd	(%rsi,%rax), %xmm0
	movq	-96(%rcx), %rsi
	movsd	(%r10,%rdx), %xmm4
	movsd	(%rsi,%rdx), %xmm5
	mulsd	(%r10,%rax), %xmm4
	movq	-88(%rcx), %r10
	addsd	%xmm14, %xmm1
.LVL806:
	movsd	(%r9,%rdx), %xmm14
	mulsd	(%rsi,%rax), %xmm5
	leaq	64(%rcx), %rsi
	mulsd	(%r9,%rax), %xmm14
	movq	-104(%rcx), %r9
	movsd	(%r10,%rdx), %xmm6
	prefetcht0	(%rsi)
	movq	-56(%rcx), %rsi
	movsd	(%r9,%rdx), %xmm3
	mulsd	(%r10,%rax), %xmm6
	movq	-72(%rcx), %r10
	mulsd	(%r9,%rax), %xmm3
	movq	-80(%rcx), %r9
	addsd	%xmm14, %xmm1
	movsd	(%rsi,%rdx), %xmm9
	movsd	(%r10,%rdx), %xmm14
	movsd	(%r9,%rdx), %xmm7
	mulsd	(%r10,%rax), %xmm14
	movq	-48(%rcx), %r10
	addsd	%xmm0, %xmm1
	mulsd	(%r9,%rax), %xmm7
	movq	-64(%rcx), %r9
	mulsd	(%rsi,%rax), %xmm9
	movq	-32(%rcx), %rsi
	movsd	(%r10,%rdx), %xmm10
	movsd	(%r9,%rdx), %xmm8
	addsd	%xmm4, %xmm1
	mulsd	(%r10,%rax), %xmm10
	movq	-24(%rcx), %r10
	mulsd	(%r9,%rax), %xmm8
	movq	-40(%rcx), %r9
	movsd	(%rsi,%rdx), %xmm12
	movsd	(%r10,%rdx), %xmm13
	addsd	%xmm3, %xmm1
	movsd	(%r9,%rdx), %xmm11
	mulsd	(%rsi,%rax), %xmm12
	mulsd	(%r9,%rax), %xmm11
	movq	-16(%rcx), %r9
	subq	$-128, %rcx
	mulsd	(%r10,%rax), %xmm13
	cmpl	%ebp, %edi
	addsd	%xmm5, %xmm1
	movsd	(%r9,%rdx), %xmm2
	mulsd	(%r9,%rax), %xmm2
	addsd	%xmm6, %xmm1
	addsd	%xmm7, %xmm1
	addsd	%xmm1, %xmm14
	addsd	%xmm8, %xmm14
	addsd	%xmm9, %xmm14
	addsd	%xmm10, %xmm14
	addsd	%xmm11, %xmm14
	addsd	%xmm12, %xmm14
	addsd	%xmm13, %xmm14
.LVL807:
	addsd	%xmm2, %xmm14
	jne	.L2612
.LVL808:
.L2591:
	.loc 1 312 0
	movslq	%edi, %rcx
	movl	%edi, %r9d
	leaq	(%r12,%rcx,8), %r10
	notl	%r9d
	addl	%ebx, %r9d
	.loc 1 351 0
	movq	(%r10), %rsi
	andl	$7, %r9d
	leaq	8(%r10), %rcx
	movsd	(%rsi,%rdx), %xmm1
	mulsd	(%rsi,%rax), %xmm1
	.loc 1 350 0
	leal	1(%rdi), %esi
.LVL809:
	cmpl	%esi, %ebx
	.loc 1 351 0
	addsd	%xmm14, %xmm1
	.loc 1 350 0
	jle	.L2949
	testl	%r9d, %r9d
	je	.L2588
	cmpl	$1, %r9d
	je	.L2834
	cmpl	$2, %r9d
	je	.L2835
	cmpl	$3, %r9d
	je	.L2836
	cmpl	$4, %r9d
	je	.L2837
	cmpl	$5, %r9d
	je	.L2838
	cmpl	$6, %r9d
	je	.L2839
	.loc 1 351 0
	movq	8(%r10), %rcx
	.loc 1 350 0
	leal	2(%rdi), %esi
	.loc 1 351 0
	movsd	(%rcx,%rdx), %xmm15
	mulsd	(%rcx,%rax), %xmm15
	leaq	16(%r10), %rcx
	addsd	%xmm15, %xmm1
.LVL810:
.L2839:
	movq	(%rcx), %rdi
	.loc 1 350 0
	addl	$1, %esi
	addq	$8, %rcx
	.loc 1 351 0
	movsd	(%rdi,%rdx), %xmm14
	mulsd	(%rdi,%rax), %xmm14
	addsd	%xmm14, %xmm1
.L2838:
	movq	(%rcx), %r10
	.loc 1 350 0
	addl	$1, %esi
	addq	$8, %rcx
	.loc 1 351 0
	movsd	(%r10,%rdx), %xmm0
	mulsd	(%r10,%rax), %xmm0
	addsd	%xmm0, %xmm1
.L2837:
	movq	(%rcx), %r9
	.loc 1 350 0
	addl	$1, %esi
	addq	$8, %rcx
	.loc 1 351 0
	movsd	(%r9,%rdx), %xmm4
	mulsd	(%r9,%rax), %xmm4
	addsd	%xmm4, %xmm1
.L2836:
	movq	(%rcx), %rdi
	.loc 1 350 0
	addl	$1, %esi
	addq	$8, %rcx
	.loc 1 351 0
	movsd	(%rdi,%rdx), %xmm3
	mulsd	(%rdi,%rax), %xmm3
	addsd	%xmm3, %xmm1
.L2835:
	movq	(%rcx), %r10
	.loc 1 350 0
	addl	$1, %esi
	addq	$8, %rcx
	.loc 1 351 0
	movsd	(%r10,%rdx), %xmm5
	mulsd	(%r10,%rax), %xmm5
	addsd	%xmm5, %xmm1
.L2834:
	movq	(%rcx), %r9
	.loc 1 350 0
	addl	$1, %esi
	addq	$8, %rcx
	cmpl	%esi, %ebx
	.loc 1 351 0
	movsd	(%r9,%rdx), %xmm6
	mulsd	(%r9,%rax), %xmm6
	addsd	%xmm6, %xmm1
	.loc 1 350 0
	jle	.L2949
.L2588:
	.loc 1 351 0
	movq	(%rcx), %rdi
	movq	8(%rcx), %r10
	.loc 1 350 0
	addl	$8, %esi
	.loc 1 351 0
	movq	16(%rcx), %r9
	movsd	(%rdi,%rdx), %xmm7
	movsd	(%r10,%rdx), %xmm8
	mulsd	(%rdi,%rax), %xmm7
	movq	24(%rcx), %rdi
	mulsd	(%r10,%rax), %xmm8
	movq	32(%rcx), %r10
	movsd	(%r9,%rdx), %xmm9
	movsd	(%rdi,%rdx), %xmm10
	mulsd	(%r9,%rax), %xmm9
	movq	40(%rcx), %r9
	mulsd	(%rdi,%rax), %xmm10
	movq	48(%rcx), %rdi
	addsd	%xmm7, %xmm1
	movsd	(%r10,%rdx), %xmm11
	movsd	(%r9,%rdx), %xmm12
	mulsd	(%r10,%rax), %xmm11
	movq	56(%rcx), %r10
	addq	$64, %rcx
	mulsd	(%r9,%rax), %xmm12
	.loc 1 350 0
	cmpl	%esi, %ebx
	.loc 1 351 0
	addsd	%xmm8, %xmm1
	movsd	(%rdi,%rdx), %xmm13
	movsd	(%r10,%rdx), %xmm2
	mulsd	(%rdi,%rax), %xmm13
	mulsd	(%r10,%rax), %xmm2
	addsd	%xmm9, %xmm1
	addsd	%xmm10, %xmm1
	addsd	%xmm11, %xmm1
	addsd	%xmm12, %xmm1
	addsd	%xmm13, %xmm1
	addsd	%xmm2, %xmm1
	.loc 1 350 0
	jg	.L2588
.L2949:
	movsd	%xmm1, (%r8)
.L2593:
	addq	$8, %rax
	.loc 1 349 0
	cmpq	%r11, %rax
	jne	.L2595
	addq	$8, %rdx
	subl	$1, 80(%rsp)
	.loc 1 348 0
	cmpl	%r15d, %r13d
	jg	.L2987
.LVL811:
.L2556:
.LBB585:
.LBB586:
	.loc 1 1428 0
	movq	112(%rsp), %rdi
	call	free
.LVL812:
.LBE586:
.LBE585:
.LBB587:
.LBB588:
	.loc 1 1464 0
	movq	64(%rsp), %r13
	movq	8(%r13), %r14
.LVL813:
	movq	%r14, %rdi
	subq	$8, %rdi
	call	free
.LVL814:
	.loc 1 1465 0
	movq	64(%rsp), %rdi
	call	free
.LVL815:
.LBE588:
.LBE587:
.LBE592:
	.loc 1 357 0
	addq	$136, %rsp
.LCFI158:
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	$1, %eax
	popq	%rbx
.LCFI159:
	.cfi_def_cfa_offset 48
	popq	%rbp
.LCFI160:
	.cfi_def_cfa_offset 40
	popq	%r12
.LCFI161:
	.cfi_def_cfa_offset 32
	popq	%r13
.LCFI162:
	.cfi_def_cfa_offset 24
	popq	%r14
.LCFI163:
	.cfi_def_cfa_offset 16
	popq	%r15
.LCFI164:
	.cfi_def_cfa_offset 8
	ret
.LVL816:
.L2597:
.LCFI165:
	.cfi_restore_state
.LBB593:
	.loc 1 332 0
	movapd	%xmm3, %xmm2
	.loc 1 334 0
	sqrtsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm0
	jnp	.L2561
.LVL817:
.L2985:
	movapd	%xmm2, %xmm0
	movq	%rax, 40(%rsp)
	movq	%rcx, (%rsp)
	movsd	%xmm3, 16(%rsp)
	movq	%r11, 8(%rsp)
	call	sqrt
.LVL818:
	movq	8(%rsp), %r11
	movsd	16(%rsp), %xmm3
	movq	(%rsp), %rcx
	movq	40(%rsp), %rax
	jmp	.L2561
.LVL819:
	.p2align 4,,10
	.p2align 3
.L2601:
	.loc 1 312 0
	xorl	%r9d, %r9d
	xorl	%r15d, %r15d
	jmp	.L2582
.LVL820:
.L2598:
	.loc 1 332 0
	movapd	%xmm3, %xmm1
	xorl	%r10d, %r10d
	jmp	.L2558
.LVL821:
.L2596:
.LBE593:
	.loc 1 312 0
	movl	$1, %esi
	movl	$2, %r10d
	jmp	.L2553
.LVL822:
.L2983:
.LBB594:
.LBB589:
.LBB581:
.LBB578:
	.loc 1 1448 0
	movl	$.LC72, %edi
	call	_Z7nrerrorPKc
.LVL823:
.L2600:
.LBE578:
.LBE581:
.LBE589:
	.loc 1 312 0
	xorl	%edx, %edx
	jmp	.L2581
.LVL824:
.L2981:
.LBB590:
.LBB573:
.LBB571:
	.loc 1 1418 0
	movl	$.LC99, %edi
	call	_Z7nrerrorPKc
.LVL825:
.L2982:
.LBE571:
.LBE573:
.LBE590:
.LBB591:
.LBB582:
.LBB579:
	.loc 1 1442 0
	movl	$.LC71, %edi
	call	_Z7nrerrorPKc
.LVL826:
.LBE579:
.LBE582:
.LBE591:
.LBE594:
	.cfi_endproc
.LFE82:
	.size	_Z16HJM_CorrelationsPPdiiS0_, .-_Z16HJM_CorrelationsPPdiiS0_
	.p2align 4,,15
	.globl	_Z28HJM_SimPath_Forward_BlockingPPdiidS_S_S0_Pli
	.type	_Z28HJM_SimPath_Forward_BlockingPPdiidS_S_S0_Pli, @function
_Z28HJM_SimPath_Forward_BlockingPPdiidS_S_S0_Pli:
.LFB1078:
	.loc 1 898 0
	.cfi_startproc
.LVL827:
	pushq	%r15
.LCFI166:
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
.LCFI167:
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
.LCFI168:
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%edx, %r13d
	pushq	%r12
.LCFI169:
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
.LCFI170:
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
.LCFI171:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rcx, %rbx
	subq	$168, %rsp
.LCFI172:
	.cfi_def_cfa_offset 224
	.loc 1 898 0
	movsd	%xmm0, 56(%rsp)
	movq	%rdi, 144(%rsp)
	movl	%esi, 84(%rsp)
.LBB617:
	.loc 1 908 0
	cvtsi2sd	%esi, %xmm0
.LVL828:
.LBE617:
	.loc 1 898 0
	movq	%r8, 72(%rsp)
.LBB722:
	.loc 1 908 0
	movsd	56(%rsp), %xmm1
.LBE722:
	.loc 1 898 0
	movq	%r9, 152(%rsp)
.LBB723:
	.loc 1 908 0
	divsd	%xmm0, %xmm1
	.loc 1 909 0
	sqrtsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm2
	.loc 1 908 0
	movsd	%xmm1, 56(%rsp)
.LVL829:
	.loc 1 909 0
	movsd	%xmm2, 64(%rsp)
	jp	.L3320
.LVL830:
.L2989:
	.loc 1 911 0
	movl	84(%rsp), %eax
	leal	-1(%r13), %ecx
	imull	232(%rsp), %eax
	movslq	%ecx, %rbp
.LVL831:
	movl	%ecx, 136(%rsp)
.LBB618:
.LBB619:
.LBB620:
	.loc 1 1441 0
	leaq	16(,%rbp,8), %rdi
	.loc 1 1437 0
	leaq	1(%rbp), %r12
.LVL832:
	.loc 1 1441 0
	movq	%rdi, 120(%rsp)
.LBE620:
.LBE619:
.LBE618:
	.loc 1 911 0
	subl	$1, %eax
	cltq
.LVL833:
.LBB625:
.LBB623:
.LBB621:
	.loc 1 1437 0
	addq	$1, %rax
.LVL834:
	movq	%rax, 32(%rsp)
.LVL835:
	.loc 1 1441 0
	call	malloc
.LVL836:
	.loc 1 1442 0
	testq	%rax, %rax
	.loc 1 1441 0
	movq	%rax, 128(%rsp)
.LVL837:
	.loc 1 1442 0
	je	.L2997
	.loc 1 1447 0
	imulq	32(%rsp), %r12
.LVL838:
	movq	%rax, %r14
.LVL839:
	.loc 1 1444 0
	addq	$8, %r14
.LVL840:
	.loc 1 1447 0
	leaq	8(,%r12,8), %rdx
	movq	%rdx, %rdi
	movq	%rdx, 112(%rsp)
	call	malloc
.LVL841:
	.loc 1 1448 0
	testq	%rax, %rax
	je	.L2998
	.loc 1 1449 0
	movq	128(%rsp), %rsi
	leaq	8(%rax), %r10
	.loc 1 1452 0
	testq	%rbp, %rbp
	.loc 1 1449 0
	movq	%r10, 8(%rsi)
.LVL842:
	.loc 1 1452 0
	jle	.L2993
	movq	32(%rsp), %rax
	.loc 1 889 0
	leaq	-6(%rbp), %rdi
	movq	%rdi, 104(%rsp)
	salq	$3, %rax
	cmpl	$9, %r13d
	jle	.L3056
	movq	32(%rsp), %r8
	leaq	-9(%rbp), %rdx
	movq	128(%rsp), %rsi
	shrq	$3, %rdx
	salq	$4, %r8
	andl	$1, %edx
	prefetcht0	176(%rsi)
	leaq	(%r8,%rax,4), %r9
	addq	%r10, %r8
	movq	%rdx, 40(%rsp)
	.loc 1 1452 0
	movq	%r8, 16(%r14)
	.loc 1 889 0
	leaq	(%r9,%rax,2), %r11
	leaq	(%r10,%rax), %r9
	leaq	(%r10,%r11), %rcx
	movq	%rax, %r10
	.loc 1 1452 0
	movq	%r9, 8(%r14)
.LVL843:
	.loc 1 889 0
	negq	%r10
	addq	%r11, %r9
	leaq	(%r8,%r11), %r8
	leaq	0(,%r10,4), %r12
	addq	%r10, %r10
	.loc 1 1452 0
	movq	%rcx, 64(%r14)
	.loc 1 889 0
	movq	%r10, 96(%rsp)
	movq	96(%rsp), %rsi
	movq	%r12, %r15
	leaq	(%rcx,%r12), %r10
	subq	%rax, %r15
	movq	%r15, 88(%rsp)
	leaq	(%r12,%rax), %r15
	movq	88(%rsp), %rdi
	addq	%rcx, %rsi
	movq	%r10, 32(%r14)
	.loc 1 1452 0
	movq	%rcx, %r10
	.loc 1 889 0
	leaq	(%rcx,%r15), %rdx
	movq	%rsi, 48(%r14)
	movl	$10, %esi
	addq	%rcx, %rdi
	movq	%rdx, 40(%r14)
	movq	128(%rsp), %rdx
	movq	%rdi, 24(%r14)
	movq	%rcx, %rdi
	.loc 1 1452 0
	movl	$9, %ecx
	.loc 1 889 0
	subq	%rax, %rdi
	addq	$72, %rdx
	cmpq	104(%rsp), %rsi
	movq	%rdi, 56(%r14)
	leaq	(%r10,%r11), %rdi
	jge	.L2994
	cmpq	$0, 40(%rsp)
	je	.L2995
	movq	88(%rsp), %rcx
	leaq	(%rdi,%r12), %r10
	movq	128(%rsp), %rsi
	.loc 1 1452 0
	movq	%r9, 8(%rdx)
	movq	%r8, 16(%rdx)
	addq	%r11, %r9
	.loc 1 889 0
	movq	%r10, 32(%rdx)
	movq	96(%rsp), %r10
	addq	%r11, %r8
	addq	%rdi, %rcx
	.loc 1 1452 0
	movq	%rdi, 64(%rdx)
	prefetcht0	240(%rsi)
	.loc 1 889 0
	movq	%rcx, 24(%rdx)
	leaq	(%rdi,%r15), %rcx
	addq	%rdi, %r10
	movq	%rcx, 40(%rdx)
	movq	%rdi, %rcx
	movq	%r10, 48(%rdx)
	subq	%rax, %rcx
	.loc 1 1452 0
	movq	%rdi, %r10
	addq	%r11, %rdi
	.loc 1 889 0
	movq	%rcx, 56(%rdx)
	movq	%rsi, %rdx
	movl	$18, %esi
	addq	$136, %rdx
	cmpq	104(%rsp), %rsi
	.loc 1 1452 0
	movl	$17, %ecx
	jge	.L2994
.L2995:
	.loc 1 889 0
	leaq	(%rdi,%r12), %rsi
	movq	88(%rsp), %r10
	.loc 1 1452 0
	movq	%rdi, 64(%rdx)
	movq	%r9, 8(%rdx)
	movq	%r8, 16(%rdx)
	addq	%r11, %r9
	.loc 1 889 0
	movq	%rsi, 32(%rdx)
	movq	96(%rsp), %rsi
	addq	%r11, %r8
	addq	%rdi, %r10
	.loc 1 1452 0
	addq	$16, %rcx
	movq	%r9, 72(%rdx)
	.loc 1 889 0
	movq	%r10, 24(%rdx)
	leaq	(%rdi,%r15), %r10
	.loc 1 1452 0
	movq	%r8, 80(%rdx)
	.loc 1 889 0
	addq	%rdi, %rsi
	prefetcht0	168(%rdx)
	prefetcht0	232(%rdx)
	movq	%r10, 40(%rdx)
	movq	%rsi, 48(%rdx)
	movq	%rdi, %r10
	movq	88(%rsp), %rsi
	addq	%r11, %rdi
	subq	%rax, %r10
	movq	%r10, 56(%rdx)
	leaq	(%rdi,%r12), %r10
	.loc 1 1452 0
	movq	%rdi, 128(%rdx)
	addq	%r11, %r9
	addq	%r11, %r8
	.loc 1 889 0
	addq	%rdi, %rsi
	movq	%r10, 96(%rdx)
	movq	96(%rsp), %r10
	movq	%rsi, 88(%rdx)
	leaq	(%rdi,%r15), %rsi
	movq	%rsi, 104(%rdx)
	movq	%rdi, %rsi
	addq	%rdi, %r10
	subq	%rax, %rsi
	movq	%r10, 112(%rdx)
	.loc 1 1452 0
	movq	%rdi, %r10
	.loc 1 889 0
	movq	%rsi, 120(%rdx)
	subq	$-128, %rdx
	leaq	1(%rcx), %rsi
	cmpq	104(%rsp), %rsi
	leaq	(%rdi,%r11), %rdi
	jl	.L2995
.L2994:
	movq	%rbp, %r11
	addq	%rax, %r10
	subq	%rsi, %r11
	addq	$1, %r11
	andl	$7, %r11d
	je	.L2996
	.loc 1 1452 0
	movq	%r10, (%r14,%rcx,8)
	addq	%rax, %r10
	cmpq	%rsi, %rbp
	movq	%rsi, %rcx
.LVL844:
	jl	.L2993
	addq	$1, %rsi
	cmpq	$1, %r11
	je	.L2996
	cmpq	$2, %r11
	je	.L3238
	cmpq	$3, %r11
	je	.L3239
	cmpq	$4, %r11
	je	.L3240
	cmpq	$5, %r11
	je	.L3241
	cmpq	$6, %r11
	je	.L3242
	movq	%r10, (%r14,%rcx,8)
	movq	%rsi, %rcx
.LVL845:
	addq	%rax, %r10
	addq	$1, %rsi
.L3242:
	movq	%r10, (%r14,%rcx,8)
	movq	%rsi, %rcx
.LVL846:
	addq	%rax, %r10
	addq	$1, %rsi
.L3241:
	movq	%r10, (%r14,%rcx,8)
	movq	%rsi, %rcx
.LVL847:
	addq	%rax, %r10
	addq	$1, %rsi
.L3240:
	movq	%r10, (%r14,%rcx,8)
	movq	%rsi, %rcx
.LVL848:
	addq	%rax, %r10
	addq	$1, %rsi
.L3239:
	movq	%r10, (%r14,%rcx,8)
	movq	%rsi, %rcx
.LVL849:
	addq	%rax, %r10
	addq	$1, %rsi
.L3238:
	movq	%r10, (%r14,%rcx,8)
	movq	%rsi, %rcx
.LVL850:
	addq	%rax, %r10
	addq	$1, %rsi
	jmp	.L2996
.LVL851:
.L3321:
	movq	%r10, (%r14,%rsi,8)
	addq	%rax, %r10
	leaq	7(%rsi), %rcx
	movq	%r10, 8(%r14,%rsi,8)
	addq	%rax, %r10
	movq	%r10, 16(%r14,%rsi,8)
	addq	%rax, %r10
	movq	%r10, 24(%r14,%rsi,8)
	addq	%rax, %r10
	movq	%r10, 32(%r14,%rsi,8)
	addq	%rax, %r10
	movq	%r10, 40(%r14,%rsi,8)
	addq	%rax, %r10
	movq	%r10, 48(%r14,%rsi,8)
	addq	%rax, %r10
	addq	$8, %rsi
.LVL852:
.L2996:
	movq	%r10, (%r14,%rcx,8)
.LVL853:
	addq	%rax, %r10
	cmpq	%rsi, %rbp
	jge	.L3321
.LVL854:
.L2993:
.LBE621:
.LBE623:
.LBE625:
.LBB626:
.LBB627:
.LBB628:
	.loc 1 1441 0
	movq	120(%rsp), %rdi
	call	malloc
.LVL855:
	.loc 1 1442 0
	testq	%rax, %rax
	.loc 1 1441 0
	movq	%rax, 120(%rsp)
.LVL856:
	.loc 1 1442 0
	je	.L2997
.LVL857:
	.loc 1 1447 0
	movq	112(%rsp), %rdi
	.loc 1 1444 0
	movq	%rax, %r12
	addq	$8, %r12
.LVL858:
	.loc 1 1447 0
	call	malloc
.LVL859:
	.loc 1 1448 0
	testq	%rax, %rax
	je	.L2998
	.loc 1 1449 0
	movq	120(%rsp), %r9
	leaq	8(%rax), %r10
	.loc 1 1452 0
	testq	%rbp, %rbp
	.loc 1 1449 0
	movq	%r10, 8(%r9)
.LVL860:
	.loc 1 1452 0
	jle	.L2999
	movq	32(%rsp), %rax
	.loc 1 889 0
	leaq	-6(%rbp), %r15
	movq	%r15, 104(%rsp)
	salq	$3, %rax
	cmpl	$9, %r13d
	jle	.L3057
	movq	32(%rsp), %r8
	movq	%rax, %rdx
	leaq	(%r10,%rax), %r9
	negq	%rdx
	leaq	0(,%rdx,4), %r15
	addq	%rdx, %rdx
	.loc 1 1452 0
	movq	%r9, 8(%r12)
.LVL861:
	.loc 1 889 0
	salq	$4, %r8
	movq	%rdx, 96(%rsp)
	movq	120(%rsp), %rdx
	leaq	(%r8,%rax,4), %rdi
	addq	%r10, %r8
	leaq	(%r15,%rax), %rsi
	.loc 1 1452 0
	movq	%r8, 16(%r12)
	.loc 1 889 0
	leaq	(%rdi,%rax,2), %r11
	prefetcht0	176(%rdx)
	leaq	-9(%rbp), %rdi
	movq	96(%rsp), %rdx
	movq	%rsi, 88(%rsp)
	leaq	(%r10,%r11), %rcx
	movq	%r15, %r10
	shrq	$3, %rdi
	subq	%rax, %r10
	andl	$1, %edi
	addq	%r11, %r9
	movq	%r10, 40(%rsp)
	movq	40(%rsp), %r10
	addq	%rcx, %rdx
	movq	%rdi, 32(%rsp)
	movq	%rdx, 48(%r12)
	leaq	(%rcx,%r15), %rsi
	movq	88(%rsp), %rdi
	movq	120(%rsp), %rdx
	leaq	(%r8,%r11), %r8
	addq	%rcx, %r10
	movq	%rsi, 32(%r12)
	.loc 1 1452 0
	movq	%rcx, 64(%r12)
	.loc 1 889 0
	movq	%r10, 24(%r12)
	movq	%rcx, %r10
	movl	$10, %esi
	addq	%rcx, %rdi
	subq	%rax, %r10
	addq	$72, %rdx
	cmpq	$10, 104(%rsp)
	movq	%r10, 56(%r12)
	.loc 1 1452 0
	movq	%rcx, %r10
	.loc 1 889 0
	movq	%rdi, 40(%r12)
	.loc 1 1452 0
	movl	$9, %ecx
	leaq	(%r10,%r11), %rdi
	jle	.L3000
	cmpq	$0, 32(%rsp)
	je	.L3001
	.loc 1 889 0
	movq	40(%rsp), %rsi
	movq	120(%rsp), %rcx
	leaq	(%rdi,%r15), %r10
	.loc 1 1452 0
	movq	%r9, 8(%rdx)
	movq	%r8, 16(%rdx)
	addq	%r11, %r9
	.loc 1 889 0
	movq	%r10, 32(%rdx)
	movq	%rdi, %r10
	.loc 1 1452 0
	movq	%rdi, 64(%rdx)
	.loc 1 889 0
	addq	%rdi, %rsi
	prefetcht0	240(%rcx)
	movq	88(%rsp), %rcx
	movq	%rsi, 24(%rdx)
	movq	96(%rsp), %rsi
	subq	%rax, %r10
	movq	%r10, 56(%rdx)
	addq	%r11, %r8
	.loc 1 1452 0
	movq	%rdi, %r10
	.loc 1 889 0
	addq	%rdi, %rcx
	addq	%rdi, %rsi
	movq	%rcx, 40(%rdx)
	addq	%r11, %rdi
	movq	%rsi, 48(%rdx)
	movq	120(%rsp), %rdx
	.loc 1 1452 0
	movl	$17, %ecx
	.loc 1 889 0
	movl	$18, %esi
	addq	$136, %rdx
	cmpq	$18, 104(%rsp)
	jle	.L3000
.L3001:
	leaq	(%rdi,%r15), %rsi
	movq	40(%rsp), %r10
	.loc 1 1452 0
	movq	%rdi, 64(%rdx)
	movq	%r9, 8(%rdx)
	movq	%r8, 16(%rdx)
	addq	%r11, %r9
	.loc 1 889 0
	movq	%rsi, 32(%rdx)
	movq	96(%rsp), %rsi
	addq	%r11, %r8
	addq	%rdi, %r10
	.loc 1 1452 0
	addq	$16, %rcx
	movq	%r9, 72(%rdx)
	.loc 1 889 0
	movq	%r10, 24(%rdx)
	movq	88(%rsp), %r10
	prefetcht0	168(%rdx)
	addq	%rdi, %rsi
	.loc 1 1452 0
	movq	%r8, 80(%rdx)
	prefetcht0	232(%rdx)
	.loc 1 889 0
	movq	%rsi, 48(%rdx)
	movq	40(%rsp), %rsi
	addq	%r11, %r9
	addq	%rdi, %r10
	addq	%r11, %r8
	movq	%r10, 40(%rdx)
	movq	%rdi, %r10
	addq	%r11, %rdi
	addq	%rdi, %rsi
	subq	%rax, %r10
	.loc 1 1452 0
	movq	%rdi, 128(%rdx)
	.loc 1 889 0
	movq	%r10, 56(%rdx)
	movq	%rsi, 88(%rdx)
	leaq	(%rdi,%r15), %r10
	movq	88(%rsp), %rsi
	movq	%r10, 96(%rdx)
	movq	96(%rsp), %r10
	addq	%rdi, %rsi
	movq	%rsi, 104(%rdx)
	movq	%rdi, %rsi
	addq	%rdi, %r10
	subq	%rax, %rsi
	movq	%r10, 112(%rdx)
	.loc 1 1452 0
	movq	%rdi, %r10
	.loc 1 889 0
	movq	%rsi, 120(%rdx)
	subq	$-128, %rdx
	leaq	1(%rcx), %rsi
	cmpq	%rsi, 104(%rsp)
	leaq	(%rdi,%r11), %rdi
	jg	.L3001
.L3000:
	movq	%rbp, %r11
	addq	%rax, %r10
	subq	%rsi, %r11
	addq	$1, %r11
	andl	$7, %r11d
	je	.L3002
	.loc 1 1452 0
	movq	%r10, (%r12,%rcx,8)
	addq	%rax, %r10
	cmpq	%rsi, %rbp
	movq	%rsi, %rcx
.LVL862:
	jl	.L2999
	addq	$1, %rsi
	cmpq	$1, %r11
	je	.L3002
	cmpq	$2, %r11
	je	.L3233
	cmpq	$3, %r11
	je	.L3234
	cmpq	$4, %r11
	je	.L3235
	cmpq	$5, %r11
	je	.L3236
	cmpq	$6, %r11
	je	.L3237
	movq	%r10, (%r12,%rcx,8)
	movq	%rsi, %rcx
.LVL863:
	addq	%rax, %r10
	addq	$1, %rsi
.L3237:
	movq	%r10, (%r12,%rcx,8)
	movq	%rsi, %rcx
.LVL864:
	addq	%rax, %r10
	addq	$1, %rsi
.L3236:
	movq	%r10, (%r12,%rcx,8)
	movq	%rsi, %rcx
.LVL865:
	addq	%rax, %r10
	addq	$1, %rsi
.L3235:
	movq	%r10, (%r12,%rcx,8)
	movq	%rsi, %rcx
.LVL866:
	addq	%rax, %r10
	addq	$1, %rsi
.L3234:
	movq	%r10, (%r12,%rcx,8)
	movq	%rsi, %rcx
.LVL867:
	addq	%rax, %r10
	addq	$1, %rsi
.L3233:
	movq	%r10, (%r12,%rcx,8)
	movq	%rsi, %rcx
.LVL868:
	addq	%rax, %r10
	addq	$1, %rsi
	jmp	.L3002
.LVL869:
.L3322:
	movq	%r10, (%r12,%rsi,8)
	addq	%rax, %r10
	leaq	7(%rsi), %rcx
	movq	%r10, 8(%r12,%rsi,8)
	addq	%rax, %r10
	movq	%r10, 16(%r12,%rsi,8)
	addq	%rax, %r10
	movq	%r10, 24(%r12,%rsi,8)
	addq	%rax, %r10
	movq	%r10, 32(%r12,%rsi,8)
	addq	%rax, %r10
	movq	%r10, 40(%r12,%rsi,8)
	addq	%rax, %r10
	movq	%r10, 48(%r12,%rsi,8)
	addq	%rax, %r10
	addq	$8, %rsi
.LVL870:
.L3002:
	movq	%r10, (%r12,%rcx,8)
.LVL871:
	addq	%rax, %r10
	cmpq	%rsi, %rbp
	jge	.L3322
.LVL872:
.L2999:
.LBE628:
.LBE627:
.LBE626:
.LBB629:
	.loc 1 918 0 discriminator 1
	movl	232(%rsp), %r9d
	testl	%r9d, %r9d
	jle	.L3003
	.loc 1 889 0
	movl	232(%rsp), %r15d
	movl	84(%rsp), %r11d
.LBE629:
.LBE723:
	xorl	%ebp, %ebp
.LVL873:
	movq	%r12, 104(%rsp)
	movl	84(%rsp), %r8d
	movq	144(%rsp), %r12
.LVL874:
	movl	%r13d, 112(%rsp)
.LBB724:
.LBB630:
	subl	$1, %r15d
	subl	$10, %r11d
	movq	%r14, 96(%rsp)
	leaq	8(,%r15,8), %rdi
	movq	%r15, 32(%rsp)
	movslq	232(%rsp), %r15
	andl	$-8, %r11d
	movq	%rdi, 88(%rsp)
	addl	$9, %r11d
	leaq	0(,%r15,8), %rcx
	movq	%rcx, 40(%rsp)
	movq	%rcx, %r13
.LVL875:
.L3004:
	.loc 1 919 0 discriminator 1
	testl	%r8d, %r8d
	jle	.L3010
	movq	(%r12), %r14
	.loc 1 920 0
	movsd	(%rbx), %xmm3
	.loc 1 922 0
	cmpl	$1, %r8d
	.loc 1 920 0
	movsd	%xmm3, (%r14,%rbp)
.LVL876:
	.loc 1 922 0
	jne	.L3323
.LVL877:
.L3010:
	addq	$8, %rbp
	.loc 1 918 0
	cmpq	88(%rsp), %rbp
	jne	.L3004
	movl	112(%rsp), %r13d
	.loc 1 889 0
	movq	32(%rsp), %r14
.LBE630:
.LBB631:
.LBB632:
.LBB633:
.LBB634:
	.loc 1 1493 0
	movabsq	$4730756183288445817, %rsi
.LBE634:
.LBE633:
.LBE632:
.LBE631:
.LBB704:
	.loc 1 889 0
	movq	40(%rsp), %r10
	movsd	.LC68(%rip), %xmm4
	movq	104(%rsp), %r12
	leal	-9(%r13), %ecx
	leaq	1(%r14,%r15), %rax
	movq	224(%rsp), %r14
	movapd	%xmm4, %xmm5
	movq	%r10, 32(%rsp)
	shrl	$3, %ecx
	salq	$3, %rax
	leal	8(,%rcx,8), %r15d
	movq	%rax, 88(%rsp)
.LVL878:
.L3009:
.LBE704:
.LBB705:
.LBB701:
	.loc 1 934 0 discriminator 1
	cmpl	$1, 84(%rsp)
	movq	40(%rsp), %rcx
	movl	$1, %ebp
	jle	.L3034
.LVL879:
	.p2align 4,,10
	.p2align 3
.L3286:
	.loc 1 935 0 discriminator 1
	testl	%r13d, %r13d
	jle	.L3035
	.loc 1 889 0
	xorl	%r8d, %r8d
	cmpl	$8, %r13d
	movq	(%r14), %rdi
	leaq	88(%r12), %rbx
	movapd	%xmm4, %xmm14
	jle	.L3324
.LVL880:
	.p2align 4,,10
	.p2align 3
.L3072:
.LBB668:
.LBB635:
	.loc 1 1493 0 discriminator 2
	movq	%rdi, %rax
	movq	%rdi, %r11
	prefetcht0	(%rbx)
	imulq	%rsi
	sarq	$63, %r11
	sarq	$15, %rdx
	subq	%r11, %rdx
	.loc 1 1494 0 discriminator 2
	imulq	$-127773, %rdx, %r9
	imulq	$-2836, %rdx, %rax
.LBE635:
.LBE668:
	.loc 1 937 0 discriminator 2
	movq	-88(%rbx), %rdx
.LBB669:
.LBB636:
	.loc 1 1494 0 discriminator 2
	addq	%r9, %rdi
	imulq	$16807, %rdi, %r10
	addq	%r10, %rax
	.loc 1 1495 0 discriminator 2
	leaq	2147483647(%rax), %rdi
	testq	%rax, %rax
	cmovns	%rax, %rdi
.LVL881:
	.loc 1 1497 0 discriminator 2
	cvtsi2sdq	%rdi, %xmm6
	.loc 1 1493 0 discriminator 2
	movq	%rdi, %rax
	movq	%rdi, %r11
	sarq	$63, %r11
	.loc 1 1497 0 discriminator 2
	mulsd	%xmm4, %xmm6
.LBE636:
.LBE669:
	.loc 1 937 0 discriminator 2
	movsd	%xmm6, (%rdx,%rcx)
.LVL882:
.LBB670:
.LBB637:
	.loc 1 1493 0 discriminator 2
	imulq	%rsi
	sarq	$15, %rdx
	subq	%r11, %rdx
	.loc 1 1494 0 discriminator 2
	imulq	$-127773, %rdx, %r9
	imulq	$-2836, %rdx, %rax
.LBE637:
.LBE670:
	.loc 1 937 0 discriminator 2
	movq	-80(%rbx), %rdx
.LBB671:
.LBB638:
	.loc 1 1494 0 discriminator 2
	addq	%r9, %rdi
.LVL883:
	imulq	$16807, %rdi, %r10
	addq	%r10, %rax
	.loc 1 1495 0 discriminator 2
	leaq	2147483647(%rax), %rdi
	testq	%rax, %rax
	cmovns	%rax, %rdi
.LVL884:
	.loc 1 1497 0 discriminator 2
	cvtsi2sdq	%rdi, %xmm7
	.loc 1 1493 0 discriminator 2
	movq	%rdi, %rax
	movq	%rdi, %r11
	sarq	$63, %r11
	.loc 1 1497 0 discriminator 2
	mulsd	%xmm4, %xmm7
.LBE638:
.LBE671:
	.loc 1 937 0 discriminator 2
	movsd	%xmm7, (%rdx,%rcx)
.LVL885:
.LBB672:
.LBB639:
	.loc 1 1493 0 discriminator 2
	imulq	%rsi
	sarq	$15, %rdx
	subq	%r11, %rdx
	.loc 1 1494 0 discriminator 2
	imulq	$-127773, %rdx, %r9
	imulq	$-2836, %rdx, %rax
.LBE639:
.LBE672:
	.loc 1 937 0 discriminator 2
	movq	-72(%rbx), %rdx
.LBB673:
.LBB640:
	.loc 1 1494 0 discriminator 2
	addq	%r9, %rdi
.LVL886:
	imulq	$16807, %rdi, %r10
	addq	%r10, %rax
	.loc 1 1495 0 discriminator 2
	leaq	2147483647(%rax), %rdi
	testq	%rax, %rax
	cmovns	%rax, %rdi
.LVL887:
	.loc 1 1497 0 discriminator 2
	cvtsi2sdq	%rdi, %xmm8
	.loc 1 1493 0 discriminator 2
	movq	%rdi, %rax
	movq	%rdi, %r11
	sarq	$63, %r11
	.loc 1 1497 0 discriminator 2
	mulsd	%xmm4, %xmm8
.LBE640:
.LBE673:
	.loc 1 937 0 discriminator 2
	movsd	%xmm8, (%rdx,%rcx)
.LVL888:
.LBB674:
.LBB641:
	.loc 1 1493 0 discriminator 2
	imulq	%rsi
	sarq	$15, %rdx
	subq	%r11, %rdx
	.loc 1 1494 0 discriminator 2
	imulq	$-127773, %rdx, %r9
	imulq	$-2836, %rdx, %rax
.LBE641:
.LBE674:
	.loc 1 937 0 discriminator 2
	movq	-64(%rbx), %rdx
.LBB675:
.LBB642:
	.loc 1 1494 0 discriminator 2
	addq	%r9, %rdi
.LVL889:
	imulq	$16807, %rdi, %r10
	addq	%r10, %rax
	.loc 1 1495 0 discriminator 2
	leaq	2147483647(%rax), %rdi
	testq	%rax, %rax
	cmovns	%rax, %rdi
.LVL890:
	.loc 1 1497 0 discriminator 2
	cvtsi2sdq	%rdi, %xmm9
	.loc 1 1493 0 discriminator 2
	movq	%rdi, %rax
	movq	%rdi, %r11
	sarq	$63, %r11
	.loc 1 1497 0 discriminator 2
	mulsd	%xmm4, %xmm9
.LBE642:
.LBE675:
	.loc 1 937 0 discriminator 2
	movsd	%xmm9, (%rdx,%rcx)
.LVL891:
.LBB676:
.LBB643:
	.loc 1 1493 0 discriminator 2
	imulq	%rsi
	sarq	$15, %rdx
	subq	%r11, %rdx
	.loc 1 1494 0 discriminator 2
	imulq	$-127773, %rdx, %r9
	imulq	$-2836, %rdx, %rax
.LBE643:
.LBE676:
	.loc 1 937 0 discriminator 2
	movq	-56(%rbx), %rdx
.LBB677:
.LBB644:
	.loc 1 1494 0 discriminator 2
	addq	%r9, %rdi
.LVL892:
	imulq	$16807, %rdi, %r10
	addq	%r10, %rax
	.loc 1 1495 0 discriminator 2
	leaq	2147483647(%rax), %rdi
	testq	%rax, %rax
	cmovns	%rax, %rdi
.LVL893:
	.loc 1 1497 0 discriminator 2
	cvtsi2sdq	%rdi, %xmm10
	.loc 1 1493 0 discriminator 2
	movq	%rdi, %rax
	movq	%rdi, %r11
	sarq	$63, %r11
	.loc 1 1497 0 discriminator 2
	mulsd	%xmm4, %xmm10
.LBE644:
.LBE677:
	.loc 1 937 0 discriminator 2
	movsd	%xmm10, (%rdx,%rcx)
.LVL894:
.LBB678:
.LBB645:
	.loc 1 1493 0 discriminator 2
	imulq	%rsi
	sarq	$15, %rdx
	subq	%r11, %rdx
	.loc 1 1494 0 discriminator 2
	imulq	$-127773, %rdx, %r9
	imulq	$-2836, %rdx, %rax
.LBE645:
.LBE678:
	.loc 1 937 0 discriminator 2
	movq	-48(%rbx), %rdx
.LBB679:
.LBB646:
	.loc 1 1494 0 discriminator 2
	addq	%r9, %rdi
.LVL895:
	imulq	$16807, %rdi, %r10
	addq	%r10, %rax
	.loc 1 1495 0 discriminator 2
	leaq	2147483647(%rax), %rdi
	testq	%rax, %rax
	cmovns	%rax, %rdi
.LVL896:
	.loc 1 1497 0 discriminator 2
	cvtsi2sdq	%rdi, %xmm11
	.loc 1 1493 0 discriminator 2
	movq	%rdi, %rax
	movq	%rdi, %r11
	sarq	$63, %r11
	.loc 1 1497 0 discriminator 2
	mulsd	%xmm4, %xmm11
.LBE646:
.LBE679:
	.loc 1 937 0 discriminator 2
	movsd	%xmm11, (%rdx,%rcx)
.LVL897:
.LBB680:
.LBB647:
	.loc 1 1493 0 discriminator 2
	imulq	%rsi
	sarq	$15, %rdx
	subq	%r11, %rdx
	.loc 1 1494 0 discriminator 2
	imulq	$-127773, %rdx, %r9
	imulq	$-2836, %rdx, %rax
.LBE647:
.LBE680:
	.loc 1 937 0 discriminator 2
	movq	-40(%rbx), %rdx
.LBB681:
.LBB648:
	.loc 1 1494 0 discriminator 2
	addq	%r9, %rdi
.LVL898:
	imulq	$16807, %rdi, %r10
	addq	%r10, %rax
	.loc 1 1495 0 discriminator 2
	leaq	2147483647(%rax), %rdi
	testq	%rax, %rax
	cmovns	%rax, %rdi
.LVL899:
	.loc 1 1497 0 discriminator 2
	cvtsi2sdq	%rdi, %xmm12
	.loc 1 1493 0 discriminator 2
	movq	%rdi, %rax
	movq	%rdi, %r11
	sarq	$63, %r11
	.loc 1 1497 0 discriminator 2
	mulsd	%xmm4, %xmm12
.LBE648:
.LBE681:
	.loc 1 937 0 discriminator 2
	movsd	%xmm12, (%rdx,%rcx)
.LVL900:
.LBB682:
.LBB649:
	.loc 1 1493 0 discriminator 2
	imulq	%rsi
	sarq	$15, %rdx
	subq	%r11, %rdx
	.loc 1 1494 0 discriminator 2
	imulq	$-127773, %rdx, %r9
	imulq	$-2836, %rdx, %rax
.LBE649:
.LBE682:
	.loc 1 937 0 discriminator 2
	movq	-32(%rbx), %rdx
.LBB683:
.LBB650:
	.loc 1 1494 0 discriminator 2
	addq	%r9, %rdi
.LVL901:
	imulq	$16807, %rdi, %r10
	addq	%r10, %rax
	.loc 1 1495 0 discriminator 2
	leaq	2147483647(%rax), %rdi
	testq	%rax, %rax
	cmovns	%rax, %rdi
.LVL902:
.LBE650:
.LBE683:
	.loc 1 935 0 discriminator 2
	addl	$8, %r8d
.LVL903:
	addq	$64, %rbx
.LBB684:
.LBB651:
	.loc 1 1497 0 discriminator 2
	cvtsi2sdq	%rdi, %xmm13
	cmpl	%r15d, %r8d
	mulsd	%xmm4, %xmm13
.LBE651:
.LBE684:
	.loc 1 937 0 discriminator 2
	movsd	%xmm13, (%rdx,%rcx)
	jne	.L3072
.LVL904:
.L3033:
.LBB685:
.LBB652:
	.loc 1 1493 0
	movq	%rdi, %rax
	movq	%rdi, %r9
.LBE652:
.LBE685:
.LBE701:
.LBE705:
.LBB706:
	.loc 1 889 0
	movslq	%r8d, %rbx
.LBE706:
.LBB707:
.LBB702:
.LBB686:
.LBB653:
	.loc 1 1493 0
	imulq	%rsi
	sarq	$63, %r9
.LBE653:
.LBE686:
.LBE702:
.LBE707:
.LBB708:
	.loc 1 889 0
	leaq	(%r12,%rbx,8), %r11
	movl	%r8d, %ebx
	notl	%ebx
	addl	%r13d, %ebx
.LBE708:
.LBB709:
.LBB703:
.LBB687:
.LBB654:
	.loc 1 1493 0
	sarq	$15, %rdx
	andl	$1, %ebx
	subq	%r9, %rdx
	leaq	8(%r11), %r9
	.loc 1 1494 0
	imulq	$-127773, %rdx, %r10
	addq	%rdi, %r10
	imulq	$16807, %r10, %rax
.LBE654:
.LBE687:
	.loc 1 935 0
	leal	1(%r8), %r10d
.LBB688:
.LBB655:
	.loc 1 1494 0
	imulq	$-2836, %rdx, %rdi
.LBE655:
.LBE688:
	.loc 1 937 0
	movq	(%r11), %rdx
.LBB689:
.LBB656:
	.loc 1 1494 0
	addq	%rdi, %rax
	.loc 1 1495 0
	leaq	2147483647(%rax), %rdi
	testq	%rax, %rax
	cmovns	%rax, %rdi
.LVL905:
.LBE656:
.LBE689:
	.loc 1 935 0
	cmpl	%r10d, %r13d
.LBB690:
.LBB657:
	.loc 1 1497 0
	cvtsi2sdq	%rdi, %xmm15
	mulsd	%xmm14, %xmm15
.LBE657:
.LBE690:
	.loc 1 937 0
	movsd	%xmm15, (%rdx,%rcx)
	.loc 1 935 0
	jle	.L3290
	testl	%ebx, %ebx
	je	.L3014
.LVL906:
.LBB691:
.LBB658:
	.loc 1 1493 0
	movq	%rdi, %rax
	movq	%rdi, %rbx
	imulq	%rsi
	sarq	$63, %rbx
.LBE658:
.LBE691:
	.loc 1 937 0
	movq	8(%r11), %rax
.LBB692:
.LBB659:
	.loc 1 1493 0
	sarq	$15, %rdx
	subq	%rbx, %rdx
	.loc 1 1494 0
	imulq	$-127773, %rdx, %r9
	addq	%rdi, %r9
	imulq	$16807, %r9, %r10
	leaq	16(%r11), %r9
	imulq	$-2836, %rdx, %rdi
.LVL907:
	addq	%rdi, %r10
	.loc 1 1495 0
	leaq	2147483647(%r10), %rdi
	testq	%r10, %r10
	cmovns	%r10, %rdi
.LVL908:
.LBE659:
.LBE692:
	.loc 1 935 0
	leal	2(%r8), %r10d
.LBB693:
.LBB660:
	.loc 1 1497 0
	cvtsi2sdq	%rdi, %xmm0
.LBE660:
.LBE693:
	.loc 1 935 0
	cmpl	%r10d, %r13d
.LBB694:
.LBB661:
	.loc 1 1497 0
	mulsd	%xmm14, %xmm0
.LBE661:
.LBE694:
	.loc 1 937 0
	movsd	%xmm0, (%rax,%rcx)
	.loc 1 935 0
	jle	.L3290
.LVL909:
	.p2align 4,,10
	.p2align 3
.L3014:
.LBB695:
.LBB662:
	.loc 1 1493 0
	movq	%rdi, %rax
	movq	%rdi, %r8
	imulq	%rsi
	sarq	$63, %r8
	sarq	$15, %rdx
	subq	%r8, %rdx
	.loc 1 1494 0
	imulq	$-127773, %rdx, %r11
	imulq	$-2836, %rdx, %rax
.LBE662:
.LBE695:
	.loc 1 937 0
	movq	(%r9), %rdx
.LBB696:
.LBB663:
	.loc 1 1494 0
	addq	%r11, %rdi
	imulq	$16807, %rdi, %rbx
	addq	%rbx, %rax
	.loc 1 1495 0
	leaq	2147483647(%rax), %rdi
	testq	%rax, %rax
	cmovns	%rax, %rdi
	.loc 1 1497 0
	cvtsi2sdq	%rdi, %xmm1
	.loc 1 1493 0
	movq	%rdi, %rax
	movq	%rdi, %r8
	sarq	$63, %r8
	.loc 1 1497 0
	mulsd	%xmm14, %xmm1
.LBE663:
.LBE696:
	.loc 1 937 0
	movsd	%xmm1, (%rdx,%rcx)
.LBB697:
.LBB664:
	.loc 1 1493 0
	imulq	%rsi
	sarq	$15, %rdx
	subq	%r8, %rdx
	.loc 1 1494 0
	imulq	$-127773, %rdx, %r11
	imulq	$-2836, %rdx, %rax
.LBE664:
.LBE697:
	.loc 1 937 0
	movq	8(%r9), %rdx
.LBB698:
.LBB665:
	.loc 1 1494 0
	addq	%r11, %rdi
	imulq	$16807, %rdi, %rbx
	addq	%rbx, %rax
	.loc 1 1495 0
	leaq	2147483647(%rax), %rdi
	testq	%rax, %rax
	cmovns	%rax, %rdi
.LVL910:
.LBE665:
.LBE698:
	.loc 1 935 0
	addl	$2, %r10d
	addq	$16, %r9
.LBB699:
.LBB666:
	.loc 1 1497 0
	cvtsi2sdq	%rdi, %xmm2
.LBE666:
.LBE699:
	.loc 1 935 0
	cmpl	%r10d, %r13d
.LBB700:
.LBB667:
	.loc 1 1497 0
	mulsd	%xmm14, %xmm2
.LBE667:
.LBE700:
	.loc 1 937 0
	movsd	%xmm2, (%rdx,%rcx)
	.loc 1 935 0
	jg	.L3014
.LVL911:
.L3290:
	movq	%rdi, (%r14)
.LVL912:
.L3035:
	.loc 1 934 0
	addl	$1, %ebp
.LVL913:
	addq	32(%rsp), %rcx
	cmpl	84(%rsp), %ebp
	jne	.L3286
.LVL914:
.L3034:
	addq	$8, 40(%rsp)
.LBE703:
	.loc 1 932 0 discriminator 1
	movq	88(%rsp), %rcx
	cmpq	%rcx, 40(%rsp)
	jne	.L3009
	movq	96(%rsp), %r14
.LVL915:
.L3003:
.LBE709:
.LBB710:
.LBB711:
	.loc 1 880 0
	testl	%r13d, %r13d
	jle	.L3038
	movq	%r12, 40(%rsp)
	.loc 1 889 0
	movl	232(%rsp), %r15d
	movslq	232(%rsp), %r12
	movl	136(%rsp), %ebp
	movq	%r14, 32(%rsp)
	movq	%r14, 104(%rsp)
	subl	$1, %r15d
	movl	%r13d, 112(%rsp)
	leaq	1(%r12,%r15), %r10
	leaq	8(%r14,%rbp,8), %rsi
	leaq	0(,%r12,8), %rbx
	salq	$3, %r10
	movq	%rsi, 96(%rsp)
	movq	%r10, 88(%rsp)
.LVL916:
.L3039:
.LBB712:
	.loc 1 881 0
	movl	232(%rsp), %r13d
	movq	%rbx, %r12
	testl	%r13d, %r13d
	jle	.L3042
.LVL917:
	.p2align 4,,10
	.p2align 3
.L3071:
.LBB713:
	.loc 1 882 0
	cmpl	$1, 84(%rsp)
	jle	.L3043
	movq	40(%rsp), %r14
	movq	32(%rsp), %r9
	movq	%rbx, %r15
	movl	84(%rsp), %edi
	movq	(%r14), %r13
	movq	(%r9), %rbp
	movl	$2, %r14d
	subl	$2, %edi
	andl	$7, %edi
	addq	%r12, %r13
	addq	%r12, %rbp
	.loc 1 883 0
	movsd	0(%r13), %xmm0
	movl	%edi, 8(%rsp)
	call	_Z12CumNormalInvd
.LVL918:
	.loc 1 882 0
	cmpl	84(%rsp), %r14d
	.loc 1 883 0
	movsd	%xmm0, 0(%rbp)
	.loc 1 882 0
	movl	8(%rsp), %r8d
	je	.L3043
	testl	%r8d, %r8d
	je	.L3040
	cmpl	$1, %r8d
	je	.L3221
	cmpl	$2, %r8d
	je	.L3222
	cmpl	$3, %r8d
	je	.L3223
	cmpl	$4, %r8d
	je	.L3224
	cmpl	$5, %r8d
	je	.L3225
	cmpl	$6, %r8d
	je	.L3226
	.loc 1 883 0
	movsd	0(%r13,%rbx), %xmm0
	leaq	(%rbx,%rbx), %r15
	.loc 1 882 0
	movl	$3, %r14d
.LVL919:
	.loc 1 883 0
	call	_Z12CumNormalInvd
.LVL920:
	movsd	%xmm0, 0(%rbp,%rbx)
.L3226:
	movsd	0(%r13,%r15), %xmm0
	.loc 1 882 0
	addl	$1, %r14d
.LVL921:
	.loc 1 883 0
	call	_Z12CumNormalInvd
.LVL922:
	movsd	%xmm0, 0(%rbp,%r15)
	addq	%rbx, %r15
.L3225:
	movsd	0(%r13,%r15), %xmm0
	.loc 1 882 0
	addl	$1, %r14d
.LVL923:
	.loc 1 883 0
	call	_Z12CumNormalInvd
.LVL924:
	movsd	%xmm0, 0(%rbp,%r15)
	addq	%rbx, %r15
.L3224:
	movsd	0(%r13,%r15), %xmm0
	.loc 1 882 0
	addl	$1, %r14d
.LVL925:
	.loc 1 883 0
	call	_Z12CumNormalInvd
.LVL926:
	movsd	%xmm0, 0(%rbp,%r15)
	addq	%rbx, %r15
.L3223:
	movsd	0(%r13,%r15), %xmm0
	.loc 1 882 0
	addl	$1, %r14d
.LVL927:
	.loc 1 883 0
	call	_Z12CumNormalInvd
.LVL928:
	movsd	%xmm0, 0(%rbp,%r15)
	addq	%rbx, %r15
.L3222:
	movsd	0(%r13,%r15), %xmm0
	.loc 1 882 0
	addl	$1, %r14d
.LVL929:
	.loc 1 883 0
	call	_Z12CumNormalInvd
.LVL930:
	movsd	%xmm0, 0(%rbp,%r15)
	addq	%rbx, %r15
.L3221:
	movsd	0(%r13,%r15), %xmm0
	.loc 1 882 0
	addl	$1, %r14d
.LVL931:
	.loc 1 883 0
	call	_Z12CumNormalInvd
.LVL932:
	movsd	%xmm0, 0(%rbp,%r15)
	addq	%rbx, %r15
	.loc 1 882 0
	cmpl	84(%rsp), %r14d
	je	.L3043
.L3040:
	.loc 1 883 0
	movsd	0(%r13,%r15), %xmm0
	.loc 1 882 0
	addl	$8, %r14d
.LVL933:
	.loc 1 883 0
	call	_Z12CumNormalInvd
.LVL934:
	movsd	%xmm0, 0(%rbp,%r15)
.LVL935:
	addq	%rbx, %r15
	movsd	0(%r13,%r15), %xmm0
	call	_Z12CumNormalInvd
.LVL936:
	movsd	%xmm0, 0(%rbp,%r15)
	addq	%rbx, %r15
	movsd	0(%r13,%r15), %xmm0
	call	_Z12CumNormalInvd
.LVL937:
	movsd	%xmm0, 0(%rbp,%r15)
	addq	%rbx, %r15
	movsd	0(%r13,%r15), %xmm0
	call	_Z12CumNormalInvd
.LVL938:
	movsd	%xmm0, 0(%rbp,%r15)
	addq	%rbx, %r15
	movsd	0(%r13,%r15), %xmm0
	call	_Z12CumNormalInvd
.LVL939:
	movsd	%xmm0, 0(%rbp,%r15)
	addq	%rbx, %r15
	movsd	0(%r13,%r15), %xmm0
	call	_Z12CumNormalInvd
.LVL940:
	movsd	%xmm0, 0(%rbp,%r15)
	addq	%rbx, %r15
	movsd	0(%r13,%r15), %xmm0
	call	_Z12CumNormalInvd
.LVL941:
	movsd	%xmm0, 0(%rbp,%r15)
	addq	%rbx, %r15
	movsd	0(%r13,%r15), %xmm0
	call	_Z12CumNormalInvd
.LVL942:
	movsd	%xmm0, 0(%rbp,%r15)
	addq	%rbx, %r15
	.loc 1 882 0
	cmpl	84(%rsp), %r14d
	jne	.L3040
.LVL943:
.L3043:
	addq	$8, %r12
.LBE713:
	.loc 1 881 0
	cmpq	88(%rsp), %r12
	jne	.L3071
.L3042:
	addq	$8, 32(%rsp)
	addq	$8, 40(%rsp)
.LBE712:
	.loc 1 880 0
	movq	96(%rsp), %r11
	cmpq	%r11, 32(%rsp)
	jne	.L3039
	movq	104(%rsp), %r14
	movl	112(%rsp), %r13d
.L3038:
.LVL944:
.LBE711:
.LBE710:
.LBB714:
	.loc 1 960 0 discriminator 1
	movl	232(%rsp), %eax
	testl	%eax, %eax
	jle	.L3045
	.loc 1 889 0
	movslq	232(%rsp), %rdx
	movl	232(%rsp), %ecx
	leal	-9(%r13), %r12d
	xorpd	%xmm3, %xmm3
	movq	152(%rsp), %rbp
	shrl	$3, %r12d
	movq	$0, 104(%rsp)
	subl	$1, %ecx
	salq	$3, %rdx
	leaq	8(,%rcx,8), %rsi
	movq	%rdx, 96(%rsp)
	movq	96(%rsp), %r10
	movq	%rsi, 136(%rsp)
	movq	%r10, 112(%rsp)
	movq	%r10, 48(%rsp)
	leal	8(,%r12,8), %r10d
	movq	%r14, %r12
.LVL945:
.L3046:
	.loc 1 961 0 discriminator 1
	cmpl	$1, 84(%rsp)
	jle	.L3053
	.loc 1 889 0
	movl	84(%rsp), %r9d
	movq	144(%rsp), %rdi
	movq	96(%rsp), %rdx
	subl	$2, %r9d
	addq	$8, %rdi
	movl	%r9d, 32(%rsp)
	movq	%rdi, 88(%rsp)
.LVL946:
	.p2align 4,,10
	.p2align 3
.L3055:
	.loc 1 963 0 discriminator 1
	movl	32(%rsp), %r8d
	testl	%r8d, %r8d
	js	.L3051
	movq	88(%rsp), %r15
	movq	96(%rsp), %rcx
	.loc 1 889 0
	xorl	%r11d, %r11d
	movq	104(%rsp), %r14
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	addq	-8(%r15), %rcx
	addq	(%r15), %r14
	movq	%rcx, 40(%rsp)
.LVL947:
	.p2align 4,,10
	.p2align 3
.L3054:
	.loc 1 966 0 discriminator 1
	testl	%r13d, %r13d
	jle	.L3060
	.loc 1 966 0 is_stmt 0
	xorl	%esi, %esi
	cmpl	$8, %r13d
	movapd	%xmm3, %xmm5
	jle	.L3050
	.loc 1 889 0 is_stmt 1
	leaq	120(%rbp), %rdi
	leaq	120(%r12), %r15
	xorl	%esi, %esi
	movapd	%xmm3, %xmm5
.LVL948:
	.p2align 4,,10
	.p2align 3
.L3049:
	.loc 1 967 0 discriminator 2
	movq	-120(%rdi), %r9
	movq	-120(%r15), %r8
	.loc 1 966 0 discriminator 2
	addl	$8, %esi
	.loc 1 967 0 discriminator 2
	movq	-112(%rdi), %rcx
	prefetcht0	(%rdi)
	prefetcht0	(%r15)
	movsd	(%r9,%rax), %xmm6
	movq	-112(%r15), %r9
	movsd	(%rcx,%rax), %xmm7
	movq	-104(%rdi), %rcx
	mulsd	(%r8,%rdx), %xmm6
	movq	-104(%r15), %r8
	mulsd	(%r9,%rdx), %xmm7
	movq	-96(%rdi), %r9
	movsd	(%rcx,%rax), %xmm8
	movq	-96(%r15), %rcx
	mulsd	(%r8,%rdx), %xmm8
	movq	-88(%r15), %r8
	addsd	%xmm5, %xmm6
.LVL949:
	movsd	(%r9,%rax), %xmm5
	movq	-88(%rdi), %r9
	mulsd	(%rcx,%rdx), %xmm5
	movq	-80(%rdi), %rcx
	addsd	%xmm7, %xmm6
.LVL950:
	movsd	(%r9,%rax), %xmm9
	movq	-80(%r15), %r9
	movsd	(%rcx,%rax), %xmm10
	mulsd	(%r8,%rdx), %xmm9
	movq	-72(%rdi), %rcx
	movq	-72(%r15), %r8
	addsd	%xmm6, %xmm8
.LVL951:
	mulsd	(%r9,%rdx), %xmm10
	movq	-64(%rdi), %r9
	movsd	(%rcx,%rax), %xmm11
	movq	-64(%r15), %rcx
	addq	$64, %rdi
	addq	$64, %r15
	cmpl	%r10d, %esi
	mulsd	(%r8,%rdx), %xmm11
	addsd	%xmm8, %xmm5
.LVL952:
	movsd	(%r9,%rax), %xmm12
	mulsd	(%rcx,%rdx), %xmm12
	addsd	%xmm9, %xmm5
.LVL953:
	addsd	%xmm10, %xmm5
.LVL954:
	addsd	%xmm11, %xmm5
.LVL955:
	addsd	%xmm12, %xmm5
.LVL956:
	jne	.L3049
.LVL957:
.L3050:
	.loc 1 889 0
	movslq	%esi, %rdi
	movl	%esi, %r15d
	salq	$3, %rdi
	notl	%r15d
	leaq	0(%rbp,%rdi), %r8
	leal	(%r15,%r13), %r9d
	addq	%r12, %rdi
	.loc 1 967 0
	movq	(%rdi), %rcx
	movq	(%r8), %r15
	andl	$7, %r9d
	movsd	(%r15,%rax), %xmm4
	.loc 1 889 0
	leal	1(%rsi), %r15d
	.loc 1 967 0
	mulsd	(%rcx,%rdx), %xmm4
	.loc 1 966 0
	cmpl	%r15d, %r13d
	movl	$1, %ecx
	.loc 1 967 0
	addsd	%xmm5, %xmm4
.LVL958:
	.loc 1 966 0
	jle	.L3048
	testl	%r9d, %r9d
	je	.L3047
	cmpl	$1, %r9d
	je	.L3215
	cmpl	$2, %r9d
	je	.L3216
	cmpl	$3, %r9d
	je	.L3217
	cmpl	$4, %r9d
	je	.L3218
	cmpl	$5, %r9d
	je	.L3219
	cmpl	$6, %r9d
	je	.L3220
	.loc 1 967 0
	movq	8(%r8), %r9
	movq	8(%rdi), %rcx
	movsd	(%r9,%rax), %xmm13
	mulsd	(%rcx,%rdx), %xmm13
	movl	$2, %ecx
	addsd	%xmm13, %xmm4
.LVL959:
.L3220:
	movq	(%r8,%rcx,8), %r15
	movq	(%rdi,%rcx,8), %r9
	addq	$1, %rcx
	movsd	(%r15,%rax), %xmm14
	mulsd	(%r9,%rdx), %xmm14
	addsd	%xmm14, %xmm4
.L3219:
	movq	(%r8,%rcx,8), %r15
	movq	(%rdi,%rcx,8), %r9
	addq	$1, %rcx
	movsd	(%r15,%rax), %xmm15
	mulsd	(%r9,%rdx), %xmm15
	addsd	%xmm15, %xmm4
.L3218:
	movq	(%r8,%rcx,8), %r15
	movq	(%rdi,%rcx,8), %r9
	addq	$1, %rcx
	movsd	(%r15,%rax), %xmm0
	mulsd	(%r9,%rdx), %xmm0
	addsd	%xmm0, %xmm4
.L3217:
	movq	(%r8,%rcx,8), %r15
	movq	(%rdi,%rcx,8), %r9
	addq	$1, %rcx
	movsd	(%r15,%rax), %xmm1
	mulsd	(%r9,%rdx), %xmm1
	addsd	%xmm1, %xmm4
.L3216:
	movq	(%r8,%rcx,8), %r15
	movq	(%rdi,%rcx,8), %r9
	addq	$1, %rcx
	movsd	(%r15,%rax), %xmm2
	mulsd	(%r9,%rdx), %xmm2
	addsd	%xmm2, %xmm4
.L3215:
	movq	(%r8,%rcx,8), %r15
	movq	(%rdi,%rcx,8), %r9
	addq	$1, %rcx
	movsd	(%r15,%rax), %xmm5
	.loc 1 889 0
	leal	(%rsi,%rcx), %r15d
	.loc 1 967 0
	mulsd	(%r9,%rdx), %xmm5
	.loc 1 966 0
	cmpl	%r15d, %r13d
	.loc 1 967 0
	addsd	%xmm5, %xmm4
	.loc 1 966 0
	jle	.L3048
.L3047:
	.loc 1 967 0
	movq	(%r8,%rcx,8), %r15
	movq	(%rdi,%rcx,8), %r9
	movsd	(%r15,%rax), %xmm6
	mulsd	(%r9,%rdx), %xmm6
	leaq	1(%rcx), %r9
	movq	(%r8,%r9,8), %r15
	movq	(%rdi,%r9,8), %r9
	movsd	(%r15,%rax), %xmm7
	addsd	%xmm6, %xmm4
	mulsd	(%r9,%rdx), %xmm7
	leaq	2(%rcx), %r9
	movq	(%r8,%r9,8), %r15
	movq	(%rdi,%r9,8), %r9
	movsd	(%r15,%rax), %xmm8
	addsd	%xmm7, %xmm4
	mulsd	(%r9,%rdx), %xmm8
	leaq	3(%rcx), %r9
	movq	(%r8,%r9,8), %r15
	movq	(%rdi,%r9,8), %r9
	movsd	(%r15,%rax), %xmm9
	addsd	%xmm8, %xmm4
	mulsd	(%r9,%rdx), %xmm9
	leaq	4(%rcx), %r9
	movq	(%r8,%r9,8), %r15
	movq	(%rdi,%r9,8), %r9
	movsd	(%r15,%rax), %xmm10
	addsd	%xmm9, %xmm4
	mulsd	(%r9,%rdx), %xmm10
	leaq	5(%rcx), %r9
	movq	(%r8,%r9,8), %r15
	movq	(%rdi,%r9,8), %r9
	movsd	(%r15,%rax), %xmm11
	addsd	%xmm10, %xmm4
	mulsd	(%r9,%rdx), %xmm11
	leaq	6(%rcx), %r9
	movq	(%r8,%r9,8), %r15
	movq	(%rdi,%r9,8), %r9
	movsd	(%r15,%rax), %xmm12
	addsd	%xmm11, %xmm4
	mulsd	(%r9,%rdx), %xmm12
	leaq	7(%rcx), %r9
	addq	$8, %rcx
	movq	(%r8,%r9,8), %r15
	movq	(%rdi,%r9,8), %r9
	movsd	(%r15,%rax), %xmm13
	.loc 1 889 0
	leal	(%rsi,%rcx), %r15d
	.loc 1 967 0
	addsd	%xmm12, %xmm4
	mulsd	(%r9,%rdx), %xmm13
	.loc 1 966 0
	cmpl	%r15d, %r13d
	.loc 1 967 0
	addsd	%xmm13, %xmm4
	.loc 1 966 0
	jg	.L3047
.L3048:
	.loc 1 970 0
	movq	72(%rsp), %rsi
	movsd	56(%rsp), %xmm14
	movq	40(%rsp), %rdi
	mulsd	64(%rsp), %xmm4
	addl	$1, %ebx
	mulsd	(%rsi,%rax), %xmm14
	addq	$8, %rax
	addsd	(%rdi,%r11), %xmm14
	addsd	%xmm4, %xmm14
	movsd	%xmm14, (%r14,%r11)
.LVL960:
	addq	48(%rsp), %r11
	.loc 1 963 0
	cmpl	32(%rsp), %ebx
	jle	.L3054
.LVL961:
.L3051:
	subl	$1, 32(%rsp)
	addq	$8, 88(%rsp)
	addq	112(%rsp), %rdx
	.loc 1 961 0
	cmpl	$-1, 32(%rsp)
	jne	.L3055
.L3053:
	addq	$8, 104(%rsp)
	addq	$8, 96(%rsp)
	.loc 1 960 0
	movq	136(%rsp), %rdx
	cmpq	%rdx, 104(%rsp)
	jne	.L3046
.L3045:
.LVL962:
.LBE714:
.LBB715:
.LBB716:
	.loc 1 1464 0
	movq	128(%rsp), %r11
	movq	8(%r11), %rax
	movq	%rax, %rdi
	subq	$8, %rdi
	call	free
.LVL963:
	.loc 1 1465 0
	movq	128(%rsp), %rdi
	call	free
.LVL964:
.LBE716:
.LBE715:
.LBB717:
.LBB718:
	.loc 1 1464 0
	movq	120(%rsp), %rbx
	movq	8(%rbx), %r14
	movq	%r14, %rdi
	subq	$8, %rdi
	call	free
.LVL965:
	.loc 1 1465 0
	movq	120(%rsp), %rdi
	call	free
.LVL966:
.LBE718:
.LBE717:
.LBE724:
	.loc 1 981 0
	addq	$168, %rsp
.LCFI173:
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	$1, %eax
	popq	%rbx
.LCFI174:
	.cfi_def_cfa_offset 48
	popq	%rbp
.LCFI175:
	.cfi_def_cfa_offset 40
	popq	%r12
.LCFI176:
	.cfi_def_cfa_offset 32
	popq	%r13
.LCFI177:
	.cfi_def_cfa_offset 24
	popq	%r14
.LCFI178:
	.cfi_def_cfa_offset 16
	popq	%r15
.LCFI179:
	.cfi_def_cfa_offset 8
	ret
.LVL967:
	.p2align 4,,10
	.p2align 3
.L3060:
.LCFI180:
	.cfi_restore_state
.LBB725:
.LBB719:
	.loc 1 966 0
	movapd	%xmm3, %xmm4
	jmp	.L3048
.LVL968:
.L3324:
	movapd	%xmm5, %xmm14
	jmp	.L3033
.LVL969:
.L3057:
.LBE719:
.LBE725:
	.loc 1 889 0
	movl	$1, %ecx
	movl	$2, %esi
	jmp	.L3000
.LVL970:
.L3323:
.LBB726:
.LBB720:
	.loc 1 922 0
	xorl	%r10d, %r10d
	cmpl	$9, %r8d
	movq	%rbp, %rax
	jle	.L3058
.LVL971:
	.p2align 4,,10
	.p2align 3
.L3325:
	.loc 1 923 0
	movq	8(%r12), %rsi
	.loc 1 889 0
	leaq	208(%r12), %rdx
	.loc 1 923 0
	movq	16(%r12), %rdi
	movq	24(%r12), %rcx
	leal	-9(%r11), %r9d
	prefetcht0	(%rdx)
	movq	32(%r12), %rdx
	movq	$0, (%rsi,%rax)
.LVL972:
	movq	40(%r12), %rsi
	shrl	$3, %r9d
	movq	$0, (%rdi,%rax)
	movq	$0, (%rcx,%rax)
	andl	$1, %r9d
	movq	$0, (%rdx,%rax)
	movq	48(%r12), %rdi
	movq	56(%r12), %rcx
	movq	64(%r12), %rdx
	movq	$0, (%rsi,%rax)
	.loc 1 922 0
	movl	$9, %esi
	cmpl	%r11d, %esi
	.loc 1 923 0
	movq	$0, (%rdi,%rax)
	movq	$0, (%rcx,%rax)
	movq	$0, (%rdx,%rax)
	leaq	272(%r12), %rdx
	je	.L3005
	testl	%r9d, %r9d
	je	.L3006
	movq	-200(%rdx), %r9
	movq	-192(%rdx), %rsi
	prefetcht0	(%rdx)
	movq	-184(%rdx), %rdi
	movq	-176(%rdx), %rcx
	movq	$0, (%r9,%rax)
	movq	$0, (%rsi,%rax)
	movq	-168(%rdx), %r9
	movq	-160(%rdx), %rsi
	movq	$0, (%rdi,%rax)
	movq	-152(%rdx), %rdi
	movq	-144(%rdx), %rdx
	movq	$0, (%rcx,%rax)
	movq	$0, (%r9,%rax)
	movq	$0, (%rsi,%rax)
	.loc 1 922 0
	movl	$17, %esi
	cmpl	%r11d, %esi
	.loc 1 923 0
	movq	$0, (%rdi,%rax)
	movq	$0, (%rdx,%rax)
	leaq	336(%r12), %rdx
	je	.L3005
.L3006:
	.loc 1 923 0 is_stmt 0 discriminator 2
	movq	-200(%rdx), %rcx
	movq	-192(%rdx), %r9
	.loc 1 922 0 is_stmt 1 discriminator 2
	addl	$16, %esi
	.loc 1 923 0 discriminator 2
	movq	-184(%rdx), %rdi
	prefetcht0	(%rdx)
	movq	$0, (%rcx,%rax)
	movq	$0, (%r9,%rax)
	movq	-176(%rdx), %rcx
	movq	-168(%rdx), %r9
	movq	$0, (%rdi,%rax)
	movq	-160(%rdx), %rdi
	movq	$0, (%rcx,%rax)
	movq	$0, (%r9,%rax)
	movq	-152(%rdx), %rcx
	movq	-144(%rdx), %r9
	movq	$0, (%rdi,%rax)
	leaq	64(%rdx), %rdi
	movq	$0, (%rcx,%rax)
	movq	-136(%rdx), %rcx
	prefetcht0	(%rdi)
	movq	$0, (%r9,%rax)
	movq	-128(%rdx), %r9
	movq	-120(%rdx), %rdi
	movq	$0, (%rcx,%rax)
	movq	-112(%rdx), %rcx
	movq	$0, (%r9,%rax)
	movq	-104(%rdx), %r9
	movq	$0, (%rdi,%rax)
	movq	-96(%rdx), %rdi
	movq	$0, (%rcx,%rax)
	movq	-88(%rdx), %rcx
	movq	$0, (%r9,%rax)
	movq	-80(%rdx), %r9
	subq	$-128, %rdx
	cmpl	%r11d, %esi
	movq	$0, (%rdi,%rax)
	movq	$0, (%rcx,%rax)
	movq	$0, (%r9,%rax)
	jne	.L3006
.L3005:
	.loc 1 889 0
	movslq	%esi, %rdx
	movl	%esi, %edi
	leaq	(%r12,%rdx,8), %r9
	notl	%edi
	addl	%r8d, %edi
	.loc 1 923 0
	movq	(%r9), %rcx
	andl	$7, %edi
	leaq	8(%r9), %rdx
	movq	$0, (%rcx,%rax)
	.loc 1 922 0
	leal	1(%rsi), %ecx
	cmpl	%ecx, %r8d
	jle	.L3289
	testl	%edi, %edi
	je	.L3007
	cmpl	$1, %edi
	je	.L3227
	cmpl	$2, %edi
	.p2align 4,,3
	je	.L3228
	cmpl	$3, %edi
	.p2align 4,,2
	je	.L3229
	cmpl	$4, %edi
	.p2align 4,,2
	je	.L3230
	cmpl	$5, %edi
	.p2align 4,,2
	je	.L3231
	cmpl	$6, %edi
	.p2align 4,,2
	je	.L3232
	.loc 1 923 0
	movq	8(%r9), %rdx
	.loc 1 922 0
	leal	2(%rsi), %ecx
	.loc 1 923 0
	movq	$0, (%rdx,%rax)
	leaq	16(%r9), %rdx
.L3232:
	movq	(%rdx), %rsi
	.loc 1 922 0
	addl	$1, %ecx
	addq	$8, %rdx
	.loc 1 923 0
	movq	$0, (%rsi,%rax)
.L3231:
	movq	(%rdx), %r9
	.loc 1 922 0
	addl	$1, %ecx
	addq	$8, %rdx
	.loc 1 923 0
	movq	$0, (%r9,%rax)
.L3230:
	movq	(%rdx), %rdi
	.loc 1 922 0
	addl	$1, %ecx
	addq	$8, %rdx
	.loc 1 923 0
	movq	$0, (%rdi,%rax)
.L3229:
	movq	(%rdx), %rsi
	.loc 1 922 0
	addl	$1, %ecx
	addq	$8, %rdx
	.loc 1 923 0
	movq	$0, (%rsi,%rax)
.L3228:
	movq	(%rdx), %r9
	.loc 1 922 0
	addl	$1, %ecx
	addq	$8, %rdx
	.loc 1 923 0
	movq	$0, (%r9,%rax)
.L3227:
	movq	(%rdx), %rdi
	.loc 1 922 0
	addl	$1, %ecx
	addq	$8, %rdx
	cmpl	%ecx, %r8d
	.loc 1 923 0
	movq	$0, (%rdi,%rax)
	.loc 1 922 0
	jle	.L3289
.L3007:
	.loc 1 923 0
	movq	(%rdx), %rsi
	movq	8(%rdx), %r9
	.loc 1 922 0
	addl	$8, %ecx
	.loc 1 923 0
	movq	16(%rdx), %rdi
	movq	$0, (%rsi,%rax)
	movq	$0, (%r9,%rax)
	movq	24(%rdx), %rsi
	movq	32(%rdx), %r9
	movq	$0, (%rdi,%rax)
	movq	40(%rdx), %rdi
	movq	$0, (%rsi,%rax)
	movq	$0, (%r9,%rax)
	movq	48(%rdx), %rsi
	movq	56(%rdx), %r9
	addq	$64, %rdx
	.loc 1 922 0
	cmpl	%ecx, %r8d
	.loc 1 923 0
	movq	$0, (%rdi,%rax)
	movq	$0, (%rsi,%rax)
	movq	$0, (%r9,%rax)
	.loc 1 922 0
	jg	.L3007
.L3289:
	addq	$1, %r10
	addq	%r13, %rax
	.loc 1 919 0
	cmpl	%r10d, %r8d
	jle	.L3010
	.loc 1 920 0
	movsd	(%rbx,%r10,8), %xmm3
	cmpl	$9, %r8d
	movsd	%xmm3, (%r14,%rax)
.LVL973:
	jg	.L3325
.L3058:
.LBE720:
.LBE726:
	.loc 1 922 0
	movl	$1, %esi
	jmp	.L3005
.LVL974:
.L3056:
	.loc 1 889 0
	movl	$1, %ecx
	movl	$2, %esi
	jmp	.L2994
.LVL975:
.L2998:
.LBB727:
.LBB721:
.LBB624:
.LBB622:
	.loc 1 1448 0
	movl	$.LC72, %edi
	call	_Z7nrerrorPKc
.LVL976:
.L2997:
	.loc 1 1442 0
	movl	$.LC71, %edi
	call	_Z7nrerrorPKc
.LVL977:
.L3320:
.LBE622:
.LBE624:
.LBE721:
	.loc 1 909 0
	movapd	%xmm1, %xmm0
	call	sqrt
.LVL978:
	movsd	%xmm0, 64(%rsp)
	jmp	.L2989
.LBE727:
	.cfi_endproc
.LFE1078:
	.size	_Z28HJM_SimPath_Forward_BlockingPPdiidS_S_S0_Pli, .-_Z28HJM_SimPath_Forward_BlockingPPdiidS_S_S0_Pli
	.p2align 4,,15
	.globl	_Z21HJM_Swaption_BlockingPddddddiidS_PS_llii
	.type	_Z21HJM_Swaption_BlockingPddddddiidS_PS_llii, @function
_Z21HJM_Swaption_BlockingPddddddiidS_PS_llii:
.LFB1079:
	.loc 1 1020 0
	.cfi_startproc
.LVL979:
	pushq	%r15
.LCFI181:
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
.LCFI182:
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
.LCFI183:
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
.LCFI184:
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
.LCFI185:
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
.LCFI186:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$328, %rsp
.LCFI187:
	.cfi_def_cfa_offset 384
	.loc 1 1020 0
	movsd	%xmm2, 144(%rsp)
	movl	%edx, 240(%rsp)
	movq	%rdi, 248(%rsp)
.LBB761:
	.loc 1 1026 0
	cvtsi2sd	%esi, %xmm2
.LVL980:
.LBE761:
	.loc 1 1020 0
	movl	%esi, 112(%rsp)
	movsd	%xmm5, 208(%rsp)
	movq	%rcx, 80(%rsp)
	movsd	%xmm3, 184(%rsp)
.LBB877:
	.loc 1 1028 0
	movapd	%xmm4, %xmm3
.LVL981:
.LBE877:
	.loc 1 1020 0
	movsd	%xmm4, 176(%rsp)
.LBB878:
	.loc 1 1034 0
	xorpd	%xmm4, %xmm4
.LVL982:
.LBE878:
	.loc 1 1020 0
	movq	%r8, 224(%rsp)
	movq	%r9, 312(%rsp)
.LBB879:
	.loc 1 1034 0
	ucomisd	%xmm4, %xmm1
.LBE879:
	.loc 1 1020 0
	movl	392(%rsp), %r15d
.LBB880:
	.loc 1 1026 0
	divsd	%xmm2, %xmm5
.LVL983:
	movsd	%xmm2, 160(%rsp)
	.loc 1 1028 0
	divsd	%xmm5, %xmm3
.LVL984:
	.loc 1 1026 0
	movsd	%xmm5, 200(%rsp)
.LVL985:
	.loc 1 1028 0
	addsd	.LC0(%rip), %xmm3
	cvttsd2si	%xmm3, %edx
.LVL986:
	movl	%edx, 104(%rsp)
.LVL987:
	.loc 1 1034 0
	jp	.L3422
	.loc 1 1035 0
	movsd	%xmm0, 72(%rsp)
	.loc 1 1034 0
	jne	.L3422
.LVL988:
.L3327:
	.loc 1 1057 0
	movl	112(%rsp), %eax
	movl	112(%rsp), %esi
	imull	%r15d, %eax
	subl	$1, %esi
	movslq	%esi, %r14
.LVL989:
	movl	%esi, 116(%rsp)
.LBB762:
.LBB763:
.LBB764:
	.loc 1 1441 0
	leaq	16(,%r14,8), %rdi
	.loc 1 1437 0
	leaq	1(%r14), %r12
.LVL990:
.LBE764:
.LBE763:
.LBE762:
	.loc 1 1057 0
	subl	$1, %eax
	cltq
.LBB777:
.LBB771:
.LBB765:
	.loc 1 1441 0
	movq	%rdi, 136(%rsp)
	.loc 1 1437 0
	movq	%rax, %rbx
.LBE765:
.LBE771:
.LBE777:
	.loc 1 1057 0
	movq	%rax, 168(%rsp)
.LBB778:
.LBB772:
.LBB766:
	.loc 1 1437 0
	addq	$1, %rbx
.LVL991:
	.loc 1 1441 0
	call	malloc
.LVL992:
	.loc 1 1442 0
	testq	%rax, %rax
	.loc 1 1441 0
	movq	%rax, %rbp
.LVL993:
	.loc 1 1442 0
	je	.L3338
.LVL994:
	.loc 1 1447 0
	imulq	%rbx, %r12
.LVL995:
	.loc 1 1444 0
	leaq	8(%rax), %rcx
.LVL996:
	movq	%rcx, 128(%rsp)
	.loc 1 1447 0
	leaq	8(,%r12,8), %rdi
	call	malloc
.LVL997:
	.loc 1 1448 0
	testq	%rax, %rax
	.loc 1 1447 0
	movq	%rax, 8(%rbp)
	.loc 1 1448 0
	je	.L3339
	.loc 1 1449 0
	leaq	8(%rax), %r10
	.loc 1 1452 0
	testq	%r14, %r14
	.loc 1 1449 0
	movq	%r10, 8(%rbp)
.LVL998:
	.loc 1 1452 0
	jle	.L3337
	cmpl	$9, 112(%rsp)
.LBE766:
.LBE772:
.LBE778:
.LBB779:
.LBB780:
.LBB781:
	.loc 1 998 0
	leaq	-6(%r14), %rdi
	leaq	0(,%rbx,8), %rsi
	movq	%rdi, 96(%rsp)
	jle	.L3411
	movq	%rbx, %r11
	movq	%rsi, %r12
	leaq	(%r10,%rsi), %rbx
.LVL999:
	salq	$4, %r11
.LVL1000:
	negq	%r12
.LBE781:
.LBE780:
.LBE779:
.LBB792:
.LBB773:
.LBB767:
	.loc 1 1452 0
	movq	128(%rsp), %rdi
.LBE767:
.LBE773:
.LBE792:
.LBB793:
.LBB787:
.LBB782:
	.loc 1 998 0
	leaq	(%r11,%rsi,4), %r8
	leaq	0(,%r12,4), %rax
	addq	%r10, %r11
	leaq	-9(%r14), %rcx
	addq	%r12, %r12
	prefetcht0	176(%rbp)
	leaq	(%r8,%rsi,2), %r9
.LBE782:
.LBE787:
.LBE793:
.LBB794:
.LBB774:
.LBB768:
	.loc 1 1452 0
	movq	%rbx, 8(%rdi)
.LVL1001:
	movq	%r11, 16(%rdi)
	.loc 1 998 0
	movq	128(%rsp), %rdi
	shrq	$3, %rcx
.LBE768:
.LBE774:
.LBE794:
.LBB795:
.LBB788:
.LBB783:
	leaq	(%rax,%rsi), %r13
	leaq	(%r10,%r9), %rdx
	movq	%rax, %r10
	andl	$1, %ecx
	subq	%rsi, %r10
	movq	%rcx, 88(%rsp)
	addq	%r9, %rbx
	movq	%r10, 120(%rsp)
.LBE783:
.LBE788:
.LBE795:
.LBB796:
.LBB775:
.LBB769:
	movq	120(%rsp), %r8
	leaq	(%rdx,%rax), %r10
	leaq	(%rdx,%r13), %rcx
	.loc 1 1452 0
	movq	%rdx, 64(%rdi)
	addq	%r9, %r11
	.loc 1 998 0
	movq	%r10, 32(%rdi)
	movq	%rdx, %r10
	addq	%rdx, %r8
	subq	%rsi, %r10
	movq	%rcx, 40(%rdi)
	movq	%r8, 24(%rdi)
	leaq	(%rdx,%r12), %r8
	movq	%r10, 56(%rdi)
	.loc 1 1452 0
	movq	%rdx, %r10
	leaq	72(%rbp), %rcx
	.loc 1 998 0
	movq	%r8, 48(%rdi)
	leaq	(%rdx,%r9), %r8
	movl	$10, %edx
	cmpq	96(%rsp), %rdx
	.loc 1 1452 0
	movl	$9, %edi
	jge	.L3334
	cmpq	$0, 88(%rsp)
	je	.L3913
	.loc 1 998 0
	movq	120(%rsp), %rdx
	leaq	(%r8,%rax), %rdi
	leaq	(%r8,%r13), %r10
	.loc 1 1452 0
	movq	%rbx, 8(%rcx)
	movq	%r11, 16(%rcx)
	addq	%r9, %rbx
	.loc 1 998 0
	movq	%rdi, 32(%rcx)
	movq	%r8, %rdi
	movq	%r10, 40(%rcx)
	addq	%r8, %rdx
	subq	%rsi, %rdi
	.loc 1 1452 0
	movq	%r8, 64(%rcx)
	.loc 1 998 0
	movq	%rdx, 24(%rcx)
	leaq	(%r8,%r12), %rdx
	.loc 1 1452 0
	movq	%r8, %r10
	addq	%r9, %r11
	addq	%r9, %r8
	.loc 1 998 0
	movq	%rdi, 56(%rcx)
	movq	%rdx, 48(%rcx)
	movl	$18, %edx
	cmpq	96(%rsp), %rdx
	prefetcht0	240(%rbp)
	.loc 1 1452 0
	movl	$17, %edi
	leaq	136(%rbp), %rcx
	jge	.L3334
.L3913:
	movq	120(%rsp), %rbp
.L3335:
	.loc 1 998 0
	leaq	(%r8,%rbp), %r10
	leaq	(%r8,%rax), %rdx
	.loc 1 1452 0
	movq	%r8, 64(%rcx)
	movq	%rbx, 8(%rcx)
	movq	%r11, 16(%rcx)
	addq	%r9, %rbx
	.loc 1 998 0
	movq	%r10, 24(%rcx)
	leaq	(%r8,%r13), %r10
	movq	%rdx, 32(%rcx)
	leaq	(%r8,%r12), %rdx
	addq	%r9, %r11
	.loc 1 1452 0
	addq	$16, %rdi
	.loc 1 998 0
	movq	%r10, 40(%rcx)
	movq	%r8, %r10
	.loc 1 1452 0
	movq	%rbx, 72(%rcx)
	.loc 1 998 0
	subq	%rsi, %r10
	movq	%rdx, 48(%rcx)
	.loc 1 1452 0
	movq	%r11, 80(%rcx)
	.loc 1 998 0
	movq	%r10, 56(%rcx)
	leaq	(%r8,%r9), %r10
	prefetcht0	168(%rcx)
	prefetcht0	232(%rcx)
	addq	%r9, %rbx
	addq	%r9, %r11
	leaq	(%r10,%rbp), %r8
	leaq	(%r10,%rax), %rdx
	.loc 1 1452 0
	movq	%r10, 128(%rcx)
	.loc 1 998 0
	movq	%r8, 88(%rcx)
	leaq	(%r10,%r13), %r8
	movq	%rdx, 96(%rcx)
	leaq	(%r10,%r12), %rdx
	movq	%r8, 104(%rcx)
	movq	%r10, %r8
	subq	%rsi, %r8
	movq	%rdx, 112(%rcx)
	leaq	1(%rdi), %rdx
	movq	%r8, 120(%rcx)
	subq	$-128, %rcx
	cmpq	96(%rsp), %rdx
	leaq	(%r10,%r9), %r8
	jl	.L3335
.L3334:
	movq	%r14, %r11
	addq	%rsi, %r10
	subq	%rdx, %r11
	addq	$1, %r11
	andl	$7, %r11d
	je	.L3911
	.loc 1 1452 0
	movq	128(%rsp), %r9
	movq	%r10, (%r9,%rdi,8)
	addq	%rsi, %r10
	cmpq	%rdx, %r14
	movq	%rdx, %rdi
.LVL1002:
	jl	.L3337
	addq	$1, %rdx
.LVL1003:
	cmpq	$1, %r11
	je	.L3911
	cmpq	$2, %r11
	je	.L3771
	cmpq	$3, %r11
	je	.L3772
	cmpq	$4, %r11
	je	.L3773
	cmpq	$5, %r11
	je	.L3774
	cmpq	$6, %r11
	je	.L3775
	movq	%r10, (%r9,%rdi,8)
	movq	%rdx, %rdi
.LVL1004:
	addq	%rsi, %r10
	addq	$1, %rdx
.LVL1005:
.L3775:
	movq	128(%rsp), %r12
	movq	%r10, (%r12,%rdi,8)
	movq	%rdx, %rdi
.LVL1006:
	addq	%rsi, %r10
	addq	$1, %rdx
.LVL1007:
.L3774:
	movq	128(%rsp), %rax
	movq	%r10, (%rax,%rdi,8)
	movq	%rdx, %rdi
.LVL1008:
	addq	%rsi, %r10
	addq	$1, %rdx
.LVL1009:
.L3773:
	movq	128(%rsp), %r13
	movq	%r10, 0(%r13,%rdi,8)
	movq	%rdx, %rdi
.LVL1010:
	addq	%rsi, %r10
	addq	$1, %rdx
.LVL1011:
.L3772:
	movq	128(%rsp), %rcx
	movq	%r10, (%rcx,%rdi,8)
	movq	%rdx, %rdi
.LVL1012:
	addq	%rsi, %r10
	addq	$1, %rdx
.LVL1013:
.L3771:
	movq	128(%rsp), %rbp
	movq	%r10, 0(%rbp,%rdi,8)
	movq	%rbp, %r8
	movq	%rdx, %rdi
.LVL1014:
	addq	%rsi, %r10
	addq	$1, %rdx
.LVL1015:
	jmp	.L3336
.LVL1016:
	.p2align 4,,10
	.p2align 3
.L3916:
	movq	%r10, (%r8,%rdx,8)
	addq	%rsi, %r10
	leaq	7(%rdx), %rdi
	movq	%r10, 8(%r8,%rdx,8)
	addq	%rsi, %r10
	movq	%r10, 16(%r8,%rdx,8)
	addq	%rsi, %r10
	movq	%r10, 24(%r8,%rdx,8)
	addq	%rsi, %r10
	movq	%r10, 32(%r8,%rdx,8)
	addq	%rsi, %r10
	movq	%r10, 40(%r8,%rdx,8)
	addq	%rsi, %r10
	movq	%r10, 48(%r8,%rdx,8)
	addq	%rsi, %r10
	addq	$8, %rdx
.LVL1017:
.L3336:
	movq	%r10, (%r8,%rdi,8)
.LVL1018:
	addq	%rsi, %r10
	cmpq	%rdx, %r14
	jge	.L3916
.LVL1019:
.L3337:
.LBE769:
.LBE775:
.LBE796:
.LBB797:
.LBB789:
.LBB784:
	.loc 1 1417 0
	movq	136(%rsp), %rdi
	call	malloc
.LVL1020:
	.loc 1 1418 0
	testq	%rax, %rax
	.loc 1 1417 0
	movq	%rax, 88(%rsp)
.LVL1021:
	.loc 1 1418 0
	je	.L3332
	.loc 1 1058 0
	addq	$8, %rax
.LVL1022:
.LBE784:
.LBE789:
.LBE797:
	.loc 1 1059 0
	movl	240(%rsp), %edi
.LBB798:
.LBB790:
.LBB785:
	.loc 1 1058 0
	movq	%rax, 216(%rsp)
.LBE785:
.LBE790:
.LBE798:
	.loc 1 1059 0
	movl	112(%rsp), %eax
	subl	$1, %edi
	subl	$2, %eax
	movslq	%edi, %r14
.LVL1023:
	cltq
.LBB799:
.LBB800:
.LBB801:
	.loc 1 1441 0
	leaq	16(,%r14,8), %rdi
	.loc 1 1437 0
	leaq	1(%r14), %r12
.LVL1024:
.LBE801:
.LBE800:
.LBE799:
	.loc 1 1059 0
	movq	%rax, 192(%rsp)
.LBB814:
.LBB808:
.LBB802:
	.loc 1 1437 0
	movq	192(%rsp), %rbx
	.loc 1 1441 0
	call	malloc
.LVL1025:
	movq	%rax, %rbp
	.loc 1 1437 0
	addq	$1, %rbx
.LVL1026:
	.loc 1 1442 0
	testq	%rax, %rax
	je	.L3338
.LVL1027:
	.loc 1 1447 0
	imulq	%rbx, %r12
.LVL1028:
	.loc 1 1444 0
	leaq	8(%rax), %r13
.LVL1029:
	.loc 1 1447 0
	leaq	8(,%r12,8), %rdi
	call	malloc
.LVL1030:
	.loc 1 1448 0
	testq	%rax, %rax
	.loc 1 1447 0
	movq	%rax, 8(%rbp)
	.loc 1 1448 0
	je	.L3339
	.loc 1 1449 0
	leaq	8(%rax), %r10
	.loc 1 1452 0
	testq	%r14, %r14
	.loc 1 1449 0
	movq	%r10, 8(%rbp)
.LVL1031:
	.loc 1 1452 0
	jle	.L3345
	cmpl	$9, 240(%rsp)
.LBE802:
.LBE808:
.LBE814:
.LBB815:
.LBB816:
.LBB817:
	.loc 1 998 0
	leaq	-6(%r14), %rdx
	leaq	0(,%rbx,8), %rsi
	movq	%rdx, 120(%rsp)
	jle	.L3412
	movq	%rbx, %r11
	movq	%rsi, %r12
	leaq	(%r10,%rsi), %rbx
.LVL1032:
	salq	$4, %r11
.LVL1033:
	negq	%r12
	leaq	-9(%r14), %rdi
	leaq	(%r11,%rsi,4), %r9
	leaq	0(,%r12,4), %rax
	addq	%r10, %r11
	shrq	$3, %rdi
	addq	%r12, %r12
.LBE817:
.LBE816:
.LBE815:
.LBB826:
.LBB809:
.LBB803:
	.loc 1 1452 0
	movq	%rbx, 8(%r13)
.LVL1034:
.LBE803:
.LBE809:
.LBE826:
.LBB827:
.LBB822:
.LBB818:
	.loc 1 998 0
	leaq	(%r9,%rsi,2), %r9
	leaq	(%rax,%rsi), %rcx
	andl	$1, %edi
.LBE818:
.LBE822:
.LBE827:
.LBB828:
.LBB810:
.LBB804:
	.loc 1 1452 0
	movq	%r11, 16(%r13)
	movq	%rdi, 96(%rsp)
	prefetcht0	176(%rbp)
.LBE804:
.LBE810:
.LBE828:
.LBB829:
.LBB823:
.LBB819:
	.loc 1 998 0
	leaq	(%r10,%r9), %r8
	movq	%rax, %r10
	movq	%rcx, 152(%rsp)
	subq	%rsi, %r10
.LBE819:
.LBE823:
.LBE829:
.LBB830:
.LBB811:
.LBB805:
	movq	152(%rsp), %rcx
	addq	%r9, %rbx
.LBE805:
.LBE811:
.LBE830:
.LBB831:
.LBB824:
.LBB820:
	movq	%r10, 136(%rsp)
.LBE820:
.LBE824:
.LBE831:
.LBB832:
.LBB812:
.LBB806:
	movq	136(%rsp), %rdx
	addq	%r9, %r11
	leaq	(%r8,%rax), %r10
	leaq	(%r8,%r12), %rdi
	.loc 1 1452 0
	movq	%r8, 64(%r13)
	.loc 1 998 0
	addq	%r8, %rcx
	addq	%r8, %rdx
	movq	%r10, 32(%r13)
	.loc 1 1452 0
	movq	%r8, %r10
	.loc 1 998 0
	movq	%rdx, 24(%r13)
	movq	%r8, %rdx
	movq	%rcx, 40(%r13)
	subq	%rsi, %rdx
	movq	%rdi, 48(%r13)
	.loc 1 1452 0
	movl	$9, %r8d
	.loc 1 998 0
	movq	%rdx, 56(%r13)
	movl	$10, %edx
	cmpq	120(%rsp), %rdx
	leaq	(%r10,%r9), %rdi
	leaq	72(%rbp), %rcx
	jge	.L3342
	cmpq	$0, 96(%rsp)
	je	.L3910
	leaq	(%rdi,%rax), %r10
	movq	136(%rsp), %r8
	movq	152(%rsp), %rdx
	.loc 1 1452 0
	movq	%rbx, 8(%rcx)
	movq	%r11, 16(%rcx)
	addq	%r9, %rbx
	.loc 1 998 0
	movq	%r10, 32(%rcx)
	movq	%rdi, %r10
	.loc 1 1452 0
	movq	%rdi, 64(%rcx)
	.loc 1 998 0
	addq	%rdi, %r8
	addq	%rdi, %rdx
	subq	%rsi, %r10
	movq	%r8, 24(%rcx)
	movq	%rdx, 40(%rcx)
	leaq	(%rdi,%r12), %r8
	movq	%r10, 56(%rcx)
	addq	%r9, %r11
	.loc 1 1452 0
	movq	%rdi, %r10
	.loc 1 998 0
	movl	$18, %edx
	addq	%r9, %rdi
	cmpq	120(%rsp), %rdx
	movq	%r8, 48(%rcx)
	prefetcht0	240(%rbp)
	.loc 1 1452 0
	movl	$17, %r8d
	leaq	136(%rbp), %rcx
	jge	.L3342
.L3910:
	movq	%r13, 96(%rsp)
	movq	152(%rsp), %rbp
	movq	136(%rsp), %r13
.LVL1035:
.L3343:
	.loc 1 998 0
	leaq	(%rdi,%r13), %r10
	leaq	(%rdi,%rax), %rdx
	.loc 1 1452 0
	movq	%rdi, 64(%rcx)
	movq	%rbx, 8(%rcx)
	movq	%r11, 16(%rcx)
	addq	%r9, %rbx
	.loc 1 998 0
	movq	%r10, 24(%rcx)
	leaq	(%rdi,%rbp), %r10
	movq	%rdx, 32(%rcx)
	leaq	(%rdi,%r12), %rdx
	addq	%r9, %r11
	.loc 1 1452 0
	addq	$16, %r8
	.loc 1 998 0
	movq	%r10, 40(%rcx)
	movq	%rdi, %r10
	.loc 1 1452 0
	movq	%rbx, 72(%rcx)
	.loc 1 998 0
	subq	%rsi, %r10
	movq	%rdx, 48(%rcx)
	.loc 1 1452 0
	movq	%r11, 80(%rcx)
	.loc 1 998 0
	movq	%r10, 56(%rcx)
	leaq	(%rdi,%r9), %r10
	prefetcht0	168(%rcx)
	prefetcht0	232(%rcx)
	addq	%r9, %rbx
	addq	%r9, %r11
	leaq	(%r10,%r13), %rdi
	leaq	(%r10,%rax), %rdx
	.loc 1 1452 0
	movq	%r10, 128(%rcx)
	.loc 1 998 0
	movq	%rdi, 88(%rcx)
	leaq	(%r10,%rbp), %rdi
	movq	%rdx, 96(%rcx)
	leaq	(%r10,%r12), %rdx
	movq	%rdi, 104(%rcx)
	movq	%r10, %rdi
	subq	%rsi, %rdi
	movq	%rdx, 112(%rcx)
	leaq	1(%r8), %rdx
	movq	%rdi, 120(%rcx)
	subq	$-128, %rcx
	cmpq	120(%rsp), %rdx
	leaq	(%r10,%r9), %rdi
	jl	.L3343
	movq	96(%rsp), %r13
.LVL1036:
.L3342:
	movq	%r14, %r11
	addq	%rsi, %r10
	subq	%rdx, %r11
	addq	$1, %r11
	andl	$7, %r11d
	je	.L3344
	.loc 1 1452 0
	movq	%r10, 0(%r13,%r8,8)
	addq	%rsi, %r10
	cmpq	%rdx, %r14
	movq	%rdx, %r8
.LVL1037:
	jl	.L3345
	addq	$1, %rdx
.LVL1038:
	cmpq	$1, %r11
	je	.L3344
	cmpq	$2, %r11
	je	.L3766
	cmpq	$3, %r11
	je	.L3767
	cmpq	$4, %r11
	je	.L3768
	cmpq	$5, %r11
	je	.L3769
	cmpq	$6, %r11
	je	.L3770
	movq	%r10, 0(%r13,%r8,8)
	movq	%rdx, %r8
.LVL1039:
	addq	%rsi, %r10
	addq	$1, %rdx
.LVL1040:
.L3770:
	movq	%r10, 0(%r13,%r8,8)
	movq	%rdx, %r8
.LVL1041:
	addq	%rsi, %r10
	addq	$1, %rdx
.LVL1042:
.L3769:
	movq	%r10, 0(%r13,%r8,8)
	movq	%rdx, %r8
.LVL1043:
	addq	%rsi, %r10
	addq	$1, %rdx
.LVL1044:
.L3768:
	movq	%r10, 0(%r13,%r8,8)
	movq	%rdx, %r8
.LVL1045:
	addq	%rsi, %r10
	addq	$1, %rdx
.LVL1046:
.L3767:
	movq	%r10, 0(%r13,%r8,8)
	movq	%rdx, %r8
.LVL1047:
	addq	%rsi, %r10
	addq	$1, %rdx
.LVL1048:
.L3766:
	movq	%r10, 0(%r13,%r8,8)
	addq	%rsi, %r10
	movq	%rdx, %r8
.LVL1049:
	addq	$1, %rdx
.LVL1050:
	movq	%r10, 0(%r13,%r8,8)
.LVL1051:
	addq	%rsi, %r10
	cmpq	%rdx, %r14
	jl	.L3345
.L3917:
	movq	%r10, 0(%r13,%rdx,8)
	addq	%rsi, %r10
	leaq	7(%rdx), %r8
	movq	%r10, 8(%r13,%rdx,8)
	addq	%rsi, %r10
	movq	%r10, 16(%r13,%rdx,8)
	addq	%rsi, %r10
	movq	%r10, 24(%r13,%rdx,8)
	addq	%rsi, %r10
	movq	%r10, 32(%r13,%rdx,8)
	addq	%rsi, %r10
	movq	%r10, 40(%r13,%rdx,8)
	addq	%rsi, %r10
	movq	%r10, 48(%r13,%rdx,8)
	addq	%rsi, %r10
	addq	$8, %rdx
.LVL1052:
.L3344:
	movq	%r10, 0(%r13,%r8,8)
.LVL1053:
	addq	%rsi, %r10
	cmpq	%rdx, %r14
	jge	.L3917
.LVL1054:
	.p2align 4,,10
	.p2align 3
.L3345:
.LBE806:
.LBE812:
.LBE832:
.LBB833:
.LBB825:
.LBB821:
	.loc 1 1417 0
	movq	192(%rsp), %r9
	leaq	16(,%r9,8), %rdi
	call	malloc
.LVL1055:
	.loc 1 1418 0
	testq	%rax, %rax
	je	.L3332
.LBE821:
.LBE825:
.LBE833:
.LBB834:
.LBB835:
.LBB836:
	.loc 1 1417 0
	movq	168(%rsp), %rbx
.LBE836:
.LBE835:
.LBE834:
.LBB839:
.LBB813:
.LBB807:
	.loc 1 1060 0
	addq	$8, %rax
.LVL1056:
	movq	%rax, 192(%rsp)
.LVL1057:
.LBE807:
.LBE813:
.LBE839:
.LBB840:
.LBB838:
.LBB837:
	.loc 1 1417 0
	leaq	16(,%rbx,8), %r12
	movq	%r12, %rdi
	call	malloc
.LVL1058:
	.loc 1 1418 0
	testq	%rax, %rax
	.loc 1 1417 0
	movq	%rax, 120(%rsp)
.LVL1059:
	.loc 1 1418 0
	je	.L3332
.LVL1060:
.LBE837:
.LBE838:
.LBE840:
.LBB841:
.LBB842:
.LBB843:
	.loc 1 1417 0
	movq	%r12, %rdi
	call	malloc
.LVL1061:
	.loc 1 1418 0
	testq	%rax, %rax
	.loc 1 1417 0
	movq	%rax, 136(%rsp)
.LVL1062:
	.loc 1 1418 0
	je	.L3332
.LBE843:
.LBE842:
.LBE841:
	.loc 1 1094 0
	movsd	144(%rsp), %xmm6
	movsd	160(%rsp), %xmm0
	divsd	200(%rsp), %xmm6
	subsd	%xmm6, %xmm0
	movsd	%xmm6, 144(%rsp)
	addsd	.LC0(%rip), %xmm0
	cvttsd2si	%xmm0, %r14d
.LVL1063:
	.loc 1 1097 0
	movl	%r14d, %eax
.LVL1064:
	imull	%r15d, %eax
	subl	$1, %eax
	cltq
.LVL1065:
.LBB844:
.LBB845:
.LBB846:
	.loc 1 1417 0
	leaq	16(,%rax,8), %rbp
	movq	%rbp, %rdi
	call	malloc
.LVL1066:
	.loc 1 1418 0
	testq	%rax, %rax
	.loc 1 1417 0
	movq	%rax, 160(%rsp)
.LVL1067:
	.loc 1 1418 0
	je	.L3332
.LVL1068:
.LBE846:
.LBE845:
.LBE844:
.LBB847:
.LBB848:
.LBB849:
	.loc 1 1417 0
	movq	%rbp, %rdi
	call	malloc
.LVL1069:
	.loc 1 1418 0
	testq	%rax, %rax
	.loc 1 1417 0
	movq	%rax, 168(%rsp)
.LVL1070:
	.loc 1 1418 0
	je	.L3332
.LVL1071:
.LBE849:
.LBE848:
.LBE847:
	.loc 1 1100 0
	leal	-1(%r14), %eax
.LVL1072:
	cltq
.LVL1073:
.LBB850:
.LBB851:
.LBB852:
	.loc 1 1417 0
	leaq	16(,%rax,8), %rdi
	call	malloc
.LVL1074:
	.loc 1 1418 0
	testq	%rax, %rax
	je	.L3332
.LBE852:
.LBE851:
.LBE850:
	.loc 1 1104 0
	movsd	184(%rsp), %xmm7
.LBB857:
.LBB855:
.LBB853:
	.loc 1 1100 0
	leaq	8(%rax), %r8
.LBE853:
.LBE855:
.LBE857:
	.loc 1 1110 0
	testl	%r14d, %r14d
	.loc 1 1104 0
	divsd	200(%rsp), %xmm7
.LBB858:
.LBB856:
.LBB854:
	.loc 1 1100 0
	movq	%r8, 96(%rsp)
.LVL1075:
.LBE854:
.LBE856:
.LBE858:
	.loc 1 1104 0
	addsd	.LC0(%rip), %xmm7
	cvttsd2si	%xmm7, %r12d
.LVL1076:
	.loc 1 1110 0
	jle	.L3362
	.loc 1 998 0
	salq	$60, %r8
	movl	%r14d, %r10d
	shrq	$63, %r8
	cmpl	%r8d, %r14d
	cmovbe	%r14d, %r8d
	cmpl	$6, %r14d
	cmova	%r8d, %r10d
	testl	%r10d, %r10d
	je	.L3413
	cmpl	$8, %r10d
	jbe	.L3414
	leal	-9(%r10), %ecx
	leaq	240(%rax), %rdx
	movl	$64, %r9d
	.loc 1 1111 0
	movq	$0, 8(%rax)
.LVL1077:
	movq	$0, 16(%rax)
	.loc 1 1110 0
	movl	$8, %ebx
.LVL1078:
	.loc 1 998 0
	shrl	$3, %ecx
	.loc 1 1111 0
	movq	$0, 24(%rax)
	movq	$0, 32(%rax)
	.loc 1 998 0
	leaq	1(%rcx), %r11
	.loc 1 1111 0
	movq	$0, 40(%rax)
	movq	$0, 48(%rax)
	movq	$0, 56(%rax)
	movq	$0, 64(%rax)
	addq	$304, %rax
.LVL1079:
	.loc 1 998 0
	salq	$6, %r11
	prefetcht0	(%rdx)
	movl	$8, %edi
	leaq	-64(%r11), %rsi
	shrq	$6, %rsi
	andl	$3, %esi
	cmpq	%r11, %r9
	je	.L3351
	testq	%rsi, %rsi
	je	.L3352
	cmpq	$1, %rsi
	je	.L3764
	cmpq	$2, %rsi
	je	.L3765
	prefetcht0	(%rax)
	.loc 1 1111 0
	movq	$0, -232(%rax)
	movq	$0, -224(%rax)
	movq	$0, -216(%rax)
	movq	$0, -208(%rax)
	.loc 1 1110 0
	movl	$16, %ebx
	.loc 1 1111 0
	movq	$0, -200(%rax)
	movq	$0, -192(%rax)
	movl	$128, %r9d
	movq	$0, -184(%rax)
	movq	$0, -176(%rax)
	addq	$64, %rax
.LVL1080:
.L3765:
	prefetcht0	(%rax)
	movq	$0, -232(%rax)
	movq	$0, -224(%rax)
	movq	$0, -216(%rax)
	movq	$0, -208(%rax)
	.loc 1 1110 0
	addl	$8, %ebx
	.loc 1 1111 0
	movq	$0, -200(%rax)
	movq	$0, -192(%rax)
	addq	$64, %r9
	movq	$0, -184(%rax)
	movq	$0, -176(%rax)
	addq	$64, %rax
.L3764:
	addq	$64, %r9
	.loc 1 1110 0
	addl	$8, %ebx
	prefetcht0	(%rax)
	.loc 1 1111 0
	movq	$0, -232(%rax)
	movq	$0, -224(%rax)
	movl	%ebx, %edi
	movq	$0, -216(%rax)
	movq	$0, -208(%rax)
	movq	$0, -200(%rax)
	movq	$0, -192(%rax)
	movq	$0, -184(%rax)
	movq	$0, -176(%rax)
	addq	$64, %rax
	cmpq	%r11, %r9
	je	.L3351
.LVL1081:
.L3352:
	leaq	64(%rax), %rbp
	leaq	128(%rax), %r8
	leaq	192(%rax), %rdx
	addq	$256, %r9
	.loc 1 1110 0
	addl	$32, %ebx
	prefetcht0	(%rax)
	.loc 1 1111 0
	movq	$0, -232(%rax)
	movq	$0, -224(%rax)
	prefetcht0	0(%rbp)
	movq	$0, -216(%rax)
	movq	$0, -208(%rax)
	prefetcht0	(%r8)
	movq	$0, -200(%rax)
	movq	$0, -192(%rax)
	prefetcht0	(%rdx)
	movq	$0, -184(%rax)
	movq	$0, -176(%rax)
	movl	%ebx, %edi
	movq	$0, -168(%rax)
	movq	$0, -160(%rax)
	movq	$0, -152(%rax)
	movq	$0, -144(%rax)
	movq	$0, -136(%rax)
	movq	$0, -128(%rax)
	movq	$0, -120(%rax)
	movq	$0, -112(%rax)
	movq	$0, -104(%rax)
	movq	$0, -96(%rax)
	movq	$0, -88(%rax)
	movq	$0, -80(%rax)
	movq	$0, -72(%rax)
	movq	$0, -64(%rax)
	movq	$0, -56(%rax)
	movq	$0, -48(%rax)
	movq	$0, -40(%rax)
	movq	$0, -32(%rax)
	movq	$0, -24(%rax)
	movq	$0, -16(%rax)
	movq	$0, -8(%rax)
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	addq	$256, %rax
	cmpq	%r11, %r9
	jne	.L3352
.L3351:
.LVL1082:
	.loc 1 998 0
	movq	96(%rsp), %rcx
	movl	%edi, %esi
	movslq	%ebx, %rax
	notl	%esi
	leal	1(%rdi), %r9d
	addl	%r10d, %esi
	leaq	(%rcx,%rax,8), %r11
	andl	$7, %esi
	cmpl	%r9d, %r10d
	leal	1(%rbx), %eax
	.loc 1 1111 0
	movq	$0, (%r11)
	leaq	8(%r11), %rbp
	jbe	.L3865
	testl	%esi, %esi
	je	.L3353
	cmpl	$1, %esi
	je	.L3758
	cmpl	$2, %esi
	.p2align 4,,3
	je	.L3759
	cmpl	$3, %esi
	.p2align 4,,2
	je	.L3760
	cmpl	$4, %esi
	.p2align 4,,2
	je	.L3761
	cmpl	$5, %esi
	.p2align 4,,2
	je	.L3762
	cmpl	$6, %esi
	.p2align 4,,2
	je	.L3763
	movq	$0, 0(%rbp)
	.loc 1 1110 0
	leal	2(%rbx), %eax
.LVL1083:
	leaq	16(%r11), %rbp
.L3763:
	.loc 1 1111 0
	movq	$0, 0(%rbp)
	.loc 1 1110 0
	addl	$1, %eax
	addq	$8, %rbp
.L3762:
	.loc 1 1111 0
	movq	$0, 0(%rbp)
	.loc 1 1110 0
	addl	$1, %eax
	addq	$8, %rbp
.L3761:
	.loc 1 1111 0
	movq	$0, 0(%rbp)
	.loc 1 1110 0
	addl	$1, %eax
	addq	$8, %rbp
.L3760:
	.loc 1 1111 0
	movq	$0, 0(%rbp)
	.loc 1 1110 0
	addl	$1, %eax
	addq	$8, %rbp
.L3759:
	.loc 1 1111 0
	movq	$0, 0(%rbp)
	.loc 1 1110 0
	addl	$1, %eax
	addq	$8, %rbp
.L3758:
	addl	$1, %eax
	.loc 1 1111 0
	movq	$0, 0(%rbp)
	addq	$8, %rbp
	.loc 1 998 0
	leal	(%rdi,%rax), %r8d
	subl	%ebx, %r8d
	cmpl	%r8d, %r10d
	jbe	.L3865
.L3353:
	.loc 1 1110 0
	addl	$8, %eax
	.loc 1 1111 0
	movq	$0, 0(%rbp)
	movq	$0, 8(%rbp)
	.loc 1 998 0
	leal	(%rdi,%rax), %edx
	.loc 1 1111 0
	movq	$0, 16(%rbp)
	movq	$0, 24(%rbp)
	movq	$0, 32(%rbp)
	movq	$0, 40(%rbp)
	subl	%ebx, %edx
	movq	$0, 48(%rbp)
	movq	$0, 56(%rbp)
	addq	$64, %rbp
	cmpl	%edx, %r10d
	ja	.L3353
.L3865:
	cmpl	%r10d, %r14d
	je	.L3362
.L3350:
	movl	%r14d, %r11d
	movl	%r10d, %ebx
	subl	%r10d, %r11d
	movl	%r11d, %r9d
	shrl	%r9d
	movl	%r9d, %r10d
	addl	%r10d, %r10d
	je	.L3355
	movq	96(%rsp), %rdi
	cmpl	$4, %r9d
	.loc 1 998 0
	leal	-3(%r9), %ebp
	leaq	(%rdi,%rbx,8), %rdx
	jbe	.L3415
	.loc 1 1111 0
	xorpd	%xmm8, %xmm8
	leal	-5(%r9), %esi
	prefetcht0	640(%rdx)
	movl	$4, %r8d
	movl	$4, %ecx
	shrl	$2, %esi
	andl	$3, %esi
	movapd	%xmm8, (%rdx)
	movapd	%xmm8, 16(%rdx)
	movapd	%xmm8, 32(%rdx)
	movapd	%xmm8, 48(%rdx)
	.loc 1 998 0
	addq	$64, %rdx
	cmpl	$5, %ebp
	jbe	.L3356
	testl	%esi, %esi
	je	.L3357
	cmpl	$1, %esi
	je	.L3756
	cmpl	$2, %esi
	.p2align 4,,3
	je	.L3757
	prefetcht0	640(%rdx)
	.loc 1 1111 0
	movapd	%xmm8, (%rdx)
	movl	$8, %ecx
	movapd	%xmm8, 16(%rdx)
	movapd	%xmm8, 32(%rdx)
	movapd	%xmm8, 48(%rdx)
	.loc 1 998 0
	addq	$64, %rdx
.L3757:
	prefetcht0	640(%rdx)
	.loc 1 1111 0
	movapd	%xmm8, (%rdx)
	addl	$4, %ecx
	movapd	%xmm8, 16(%rdx)
	movapd	%xmm8, 32(%rdx)
	movapd	%xmm8, 48(%rdx)
	.loc 1 998 0
	addq	$64, %rdx
.L3756:
	leal	5(%rcx), %ebx
	leal	4(%rcx), %r8d
	prefetcht0	640(%rdx)
	.loc 1 1111 0
	movapd	%xmm8, (%rdx)
	movl	%r8d, %ecx
	movapd	%xmm8, 16(%rdx)
	movapd	%xmm8, 32(%rdx)
	movapd	%xmm8, 48(%rdx)
	.loc 1 998 0
	addq	$64, %rdx
	cmpl	%ebp, %ebx
	jae	.L3356
.L3357:
	leal	17(%rcx), %edi
	leal	16(%rcx), %r8d
	prefetcht0	640(%rdx)
	.loc 1 1111 0 discriminator 2
	movapd	%xmm8, (%rdx)
	prefetcht0	704(%rdx)
	prefetcht0	768(%rdx)
	prefetcht0	832(%rdx)
	movl	%r8d, %ecx
	movapd	%xmm8, 16(%rdx)
	movapd	%xmm8, 32(%rdx)
	movapd	%xmm8, 48(%rdx)
	movapd	%xmm8, 64(%rdx)
	movapd	%xmm8, 80(%rdx)
	movapd	%xmm8, 96(%rdx)
	movapd	%xmm8, 112(%rdx)
	movapd	%xmm8, 128(%rdx)
	movapd	%xmm8, 144(%rdx)
	movapd	%xmm8, 160(%rdx)
	movapd	%xmm8, 176(%rdx)
	movapd	%xmm8, 192(%rdx)
	movapd	%xmm8, 208(%rdx)
	movapd	%xmm8, 224(%rdx)
	movapd	%xmm8, 240(%rdx)
	.loc 1 998 0 discriminator 2
	addq	$256, %rdx
	cmpl	%ebp, %edi
	jb	.L3357
.L3356:
	movl	%r8d, %ebp
	.loc 1 1111 0
	xorpd	%xmm9, %xmm9
	notl	%ebp
	leal	1(%r8), %esi
	leaq	16(%rdx), %rbx
	addl	%r9d, %ebp
	andl	$7, %ebp
	cmpl	%esi, %r9d
	movapd	%xmm9, (%rdx)
	jbe	.L3868
	testl	%ebp, %ebp
	je	.L3363
	cmpl	$1, %ebp
	je	.L3750
	cmpl	$2, %ebp
	.p2align 4,,3
	je	.L3751
	cmpl	$3, %ebp
	.p2align 4,,2
	je	.L3752
	cmpl	$4, %ebp
	.p2align 4,,2
	je	.L3753
	cmpl	$5, %ebp
	.p2align 4,,2
	je	.L3754
	cmpl	$6, %ebp
	.p2align 4,,2
	je	.L3755
	movapd	%xmm9, (%rbx)
	leal	2(%r8), %esi
	leaq	32(%rdx), %rbx
.L3755:
	movapd	%xmm9, (%rbx)
	addl	$1, %esi
	addq	$16, %rbx
.L3754:
	movapd	%xmm9, (%rbx)
	addl	$1, %esi
	addq	$16, %rbx
.L3753:
	movapd	%xmm9, (%rbx)
	addl	$1, %esi
	addq	$16, %rbx
.L3752:
	movapd	%xmm9, (%rbx)
	addl	$1, %esi
	addq	$16, %rbx
.L3751:
	movapd	%xmm9, (%rbx)
	addl	$1, %esi
	addq	$16, %rbx
.L3750:
	addl	$1, %esi
	movapd	%xmm9, (%rbx)
	addq	$16, %rbx
	cmpl	%esi, %r9d
	jbe	.L3868
.L3363:
	addl	$8, %esi
	movapd	%xmm9, (%rbx)
	movapd	%xmm9, 16(%rbx)
	movapd	%xmm9, 32(%rbx)
	movapd	%xmm9, 48(%rbx)
	movapd	%xmm9, 64(%rbx)
	movapd	%xmm9, 80(%rbx)
	movapd	%xmm9, 96(%rbx)
	movapd	%xmm9, 112(%rbx)
	subq	$-128, %rbx
	cmpl	%esi, %r9d
	ja	.L3363
.L3868:
	addl	%r10d, %eax
	cmpl	%r10d, %r11d
	je	.L3362
.L3355:
	cmpl	%eax, %r14d
	.loc 1 998 0
	leal	-7(%r14), %r9d
	leal	1(%rax), %ebx
	jle	.L3359
	cmpl	%r9d, %ebx
	jge	.L3359
	movq	96(%rsp), %rcx
	movl	%r9d, %ebp
	movslq	%eax, %r8
	subl	%eax, %ebp
	.loc 1 1110 0
	addl	$8, %eax
	subl	$2, %ebp
	.loc 1 998 0
	leal	1(%rax), %ebx
	leaq	272(%rcx,%r8,8), %rdi
	shrl	$3, %ebp
	andl	$3, %ebp
	cmpl	%ebx, %r9d
	prefetcht0	(%rdi)
	.loc 1 1111 0
	movq	$0, -272(%rdi)
	movq	$0, -264(%rdi)
	movq	$0, -256(%rdi)
	movq	$0, -248(%rdi)
	leaq	64(%rdi), %rdx
	movq	$0, -240(%rdi)
	movq	$0, -232(%rdi)
	movq	$0, -224(%rdi)
	movq	$0, -216(%rdi)
	jle	.L3359
	testl	%ebp, %ebp
	je	.L3360
	cmpl	$1, %ebp
	je	.L3748
	cmpl	$2, %ebp
	.p2align 4,,3
	je	.L3749
	prefetcht0	(%rdx)
	movq	$0, -272(%rdx)
	movq	$0, -264(%rdx)
	movq	$0, -256(%rdx)
	movq	$0, -248(%rdx)
	.loc 1 1110 0
	addl	$8, %eax
	.loc 1 1111 0
	movq	$0, -240(%rdx)
	movq	$0, -232(%rdx)
	movq	$0, -224(%rdx)
	movq	$0, -216(%rdx)
	leaq	128(%rdi), %rdx
.L3749:
	prefetcht0	(%rdx)
	movq	$0, -272(%rdx)
	movq	$0, -264(%rdx)
	movq	$0, -256(%rdx)
	movq	$0, -248(%rdx)
	.loc 1 1110 0
	addl	$8, %eax
	.loc 1 1111 0
	movq	$0, -240(%rdx)
	movq	$0, -232(%rdx)
	movq	$0, -224(%rdx)
	movq	$0, -216(%rdx)
	addq	$64, %rdx
.L3748:
	.loc 1 1110 0
	addl	$8, %eax
	prefetcht0	(%rdx)
	.loc 1 1111 0
	movq	$0, -272(%rdx)
	.loc 1 998 0
	leal	1(%rax), %ebx
	.loc 1 1111 0
	movq	$0, -264(%rdx)
	movq	$0, -256(%rdx)
	movq	$0, -248(%rdx)
	movq	$0, -240(%rdx)
	movq	$0, -232(%rdx)
	movq	$0, -224(%rdx)
	movq	$0, -216(%rdx)
	addq	$64, %rdx
	cmpl	%ebx, %r9d
	jle	.L3359
.L3360:
	.loc 1 1110 0
	addl	$32, %eax
	leaq	64(%rdx), %rsi
	leaq	128(%rdx), %r10
	.loc 1 998 0
	leal	1(%rax), %ebx
	leaq	192(%rdx), %r11
	prefetcht0	(%rdx)
	.loc 1 1111 0
	movq	$0, -272(%rdx)
	movq	$0, -264(%rdx)
	prefetcht0	(%rsi)
	movq	$0, -256(%rdx)
	movq	$0, -248(%rdx)
	prefetcht0	(%r10)
	movq	$0, -240(%rdx)
	movq	$0, -232(%rdx)
	prefetcht0	(%r11)
	movq	$0, -224(%rdx)
	movq	$0, -216(%rdx)
	movq	$0, -208(%rdx)
	movq	$0, -200(%rdx)
	movq	$0, -192(%rdx)
	movq	$0, -184(%rdx)
	movq	$0, -176(%rdx)
	movq	$0, -168(%rdx)
	movq	$0, -160(%rdx)
	movq	$0, -152(%rdx)
	movq	$0, -144(%rdx)
	movq	$0, -136(%rdx)
	movq	$0, -128(%rdx)
	movq	$0, -120(%rdx)
	movq	$0, -112(%rdx)
	movq	$0, -104(%rdx)
	movq	$0, -96(%rdx)
	movq	$0, -88(%rdx)
	movq	$0, -80(%rdx)
	movq	$0, -72(%rdx)
	movq	$0, -64(%rdx)
	movq	$0, -56(%rdx)
	movq	$0, -48(%rdx)
	movq	$0, -40(%rdx)
	movq	$0, -32(%rdx)
	movq	$0, -24(%rdx)
	addq	$256, %rdx
	cmpl	%ebx, %r9d
	jg	.L3360
.L3359:
	.loc 1 998 0
	movq	96(%rsp), %r9
	movl	%r14d, %r8d
	cltq
	subl	%ebx, %r8d
	andl	$7, %r8d
	leaq	(%r9,%rax,8), %rax
	je	.L3361
	.loc 1 1111 0
	movq	$0, (%rax)
.LVL1084:
	addq	$8, %rax
	.loc 1 1110 0
	cmpl	%ebx, %r14d
	jle	.L3362
	addl	$1, %ebx
.LVL1085:
	cmpl	$1, %r8d
	je	.L3361
	cmpl	$2, %r8d
	je	.L3743
	cmpl	$3, %r8d
	je	.L3744
	cmpl	$4, %r8d
	je	.L3745
	cmpl	$5, %r8d
	je	.L3746
	cmpl	$6, %r8d
	je	.L3747
	.loc 1 1111 0
	movq	$0, (%rax)
.LVL1086:
	addl	$1, %ebx
.LVL1087:
	addq	$8, %rax
.LVL1088:
.L3747:
	movq	$0, (%rax)
.LVL1089:
	addl	$1, %ebx
.LVL1090:
	addq	$8, %rax
.LVL1091:
.L3746:
	movq	$0, (%rax)
.LVL1092:
	addl	$1, %ebx
.LVL1093:
	addq	$8, %rax
.LVL1094:
.L3745:
	movq	$0, (%rax)
.LVL1095:
	addl	$1, %ebx
.LVL1096:
	addq	$8, %rax
.LVL1097:
.L3744:
	movq	$0, (%rax)
.LVL1098:
	addl	$1, %ebx
.LVL1099:
	addq	$8, %rax
.LVL1100:
.L3743:
	addl	$1, %ebx
	movq	$0, (%rax)
	addq	$8, %rax
	.loc 1 1110 0
	cmpl	%ebx, %r14d
	.loc 1 1111 0
	movq	$0, (%rax)
.LVL1101:
	.loc 1 1110 0
	jle	.L3362
.L3918:
	.loc 1 1111 0
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	addl	$8, %ebx
.LVL1102:
	movq	$0, 24(%rax)
.LVL1103:
	movq	$0, 32(%rax)
	movq	$0, 40(%rax)
	movq	$0, 48(%rax)
	movq	$0, 56(%rax)
	addq	$64, %rax
.L3361:
	.loc 1 1110 0
	cmpl	%ebx, %r14d
	.loc 1 1111 0
	movq	$0, (%rax)
.LVL1104:
	.loc 1 1110 0
	jg	.L3918
.LVL1105:
	.p2align 4,,10
	.p2align 3
.L3362:
	.loc 1 1112 0
	cmpl	%r12d, 104(%rsp)
	jg	.L3348
.LBB859:
.LBB860:
	.loc 1 998 0
	movslq	104(%rsp), %rdi
	movsd	72(%rsp), %xmm10
	movq	96(%rsp), %rdx
.LBE860:
.LBE859:
	movl	104(%rsp), %ebx
	mulsd	176(%rsp), %xmm10
	.loc 1 1115 0
	movl	%r14d, 152(%rsp)
	movq	%r13, 176(%rsp)
	movl	%r15d, 184(%rsp)
	movl	%r12d, %r13d
.LBB867:
.LBB861:
	.loc 1 998 0
	movq	%rdi, %rbp
	leaq	0(,%rdi,8), %rsi
	movq	%rdi, %rcx
	negq	%rbp
	salq	$6, %rcx
.LBE861:
.LBE867:
	.loc 1 1115 0
	movl	%ebx, %r14d
.LVL1106:
.LBB868:
.LBB862:
	.loc 1 998 0
	leaq	(%rdi,%rbp,4), %r10
	subq	%rsi, %rcx
.LBE862:
.LBE868:
	.loc 1 1115 0
	movq	%rsi, %rbp
.LBB869:
.LBB863:
	.loc 1 998 0
	addq	%rcx, %rdx
	salq	$4, %r10
	movsd	%xmm10, 72(%rsp)
.LBE863:
.LBE869:
	.loc 1 1115 0
	movq	%rdx, %r15
.LVL1107:
	movq	%r10, %r12
.LVL1108:
	jmp	.L3369
.LVL1109:
	.p2align 4,,10
	.p2align 3
.L3367:
	.loc 1 1112 0
	addl	%ebx, %r14d
.LVL1110:
	prefetcht0	(%r15)
	.loc 1 1117 0
	call	exp
.LVL1111:
	movsd	%xmm0, (%r15,%r12)
	addq	%rbp, %r15
	.loc 1 1112 0
	cmpl	%r14d, %r13d
	jl	.L3919
	.p2align 4,,10
	.p2align 3
.L3369:
	.loc 1 1114 0
	cmpl	%r13d, %r14d
	.loc 1 1115 0
	movsd	72(%rsp), %xmm0
	.loc 1 1114 0
	je	.L3367
	.loc 1 1115 0
	call	exp
.LVL1112:
	subsd	.LC11(%rip), %xmm0
	.loc 1 1112 0
	addl	%ebx, %r14d
.LVL1113:
	.loc 1 1115 0
	movsd	%xmm0, (%r15,%r12)
	addq	%rbp, %r15
	.loc 1 1112 0
	cmpl	%r14d, %r13d
	jge	.L3369
.L3919:
	movl	152(%rsp), %r14d
.LVL1114:
	movq	176(%rsp), %r13
.LVL1115:
	movl	184(%rsp), %r15d
.LVL1116:
.L3348:
.LBB870:
.LBB864:
	.loc 1 167 0
	movq	80(%rsp), %r11
	.loc 1 168 0
	cmpl	$1, 112(%rsp)
	.loc 1 167 0
	movq	88(%rsp), %r9
	movsd	(%r11), %xmm11
	movsd	%xmm11, 8(%r9)
.LVL1117:
	.loc 1 168 0
	jle	.L3366
	movq	88(%rsp), %rdx
.LBE864:
.LBE870:
	.loc 1 998 0
	movq	80(%rsp), %rdi
	movq	%r11, %rax
	movq	88(%rsp), %r8
	movl	116(%rsp), %ebp
	addq	$8, %rax
	movq	80(%rsp), %r10
	addq	$16, %rdx
	addq	$40, %rdi
	addq	$48, %r8
	shrl	$2, %ebp
	cmpq	%rdi, %rdx
	setae	%cl
	cmpq	%rax, %r8
	leal	0(,%rbp,4), %r11d
	setbe	%sil
	addq	$32, %r10
	orl	%esi, %ecx
	cmpq	%r10, %rdx
	setae	%bl
	cmpq	%r8, 80(%rsp)
	setae	%r12b
	orl	%r12d, %ebx
	andl	%ebx, %ecx
	cmpl	$4, 116(%rsp)
	seta	%r9b
	testb	%r9b, %cl
	je	.L3416
	testl	%r11d, %r11d
	je	.L3416
	movdqa	.LC24(%rip), %xmm12
	cmpl	$2, %ebp
	movdqa	%xmm12, %xmm13
	jbe	.L3417
	leal	-3(%rbp), %r8d
	movq	80(%rsp), %rdi
	xorl	%ebx, %ebx
	movdqa	.LC23(%rip), %xmm2
	shrl	%r8d
	salq	$6, %r8
	movdqa	.LC25(%rip), %xmm4
	leaq	72(%rdi,%r8), %rcx
.LVL1118:
	.p2align 4,,10
	.p2align 3
.L3374:
	.loc 1 169 0
	movdqa	%xmm2, %xmm15
	prefetcht0	272(%rax)
	prefetcht0	264(%rax)
	movsd	16(%rax), %xmm1
	movdqa	%xmm2, %xmm14
	movsd	8(%rax), %xmm8
	paddd	%xmm4, %xmm15
	cvtdq2pd	%xmm15, %xmm10
	pshufd	$238, %xmm15, %xmm3
	movhpd	24(%rax), %xmm1
	paddd	%xmm13, %xmm14
	pshufd	$238, %xmm2, %xmm0
	movhpd	16(%rax), %xmm8
	cvtdq2pd	%xmm2, %xmm2
	movsd	(%rax), %xmm11
	addl	$2, %ebx
	cvtdq2pd	%xmm3, %xmm6
	movsd	-8(%rax), %xmm3
	mulpd	%xmm1, %xmm6
	cvtdq2pd	%xmm0, %xmm7
	movhpd	8(%rax), %xmm11
	movhpd	(%rax), %xmm3
	mulpd	%xmm8, %xmm7
	mulpd	%xmm3, %xmm2
	mulpd	%xmm11, %xmm10
	subpd	%xmm7, %xmm6
	pshufd	$238, %xmm14, %xmm9
	subpd	%xmm2, %xmm10
	movlpd	%xmm6, 16(%rdx)
	movdqa	%xmm14, %xmm2
	movhpd	%xmm6, 24(%rdx)
	movdqa	%xmm14, %xmm6
	cvtdq2pd	%xmm14, %xmm14
	paddd	%xmm13, %xmm2
	paddd	%xmm4, %xmm6
	pshufd	$238, %xmm6, %xmm5
	cvtdq2pd	%xmm6, %xmm1
	movlpd	%xmm10, (%rdx)
	movhpd	%xmm10, 8(%rdx)
	cvtdq2pd	%xmm9, %xmm10
	cvtdq2pd	%xmm5, %xmm0
	movsd	48(%rax), %xmm7
	movsd	40(%rax), %xmm11
	movsd	32(%rax), %xmm3
	movhpd	56(%rax), %xmm7
	movsd	24(%rax), %xmm5
	movhpd	48(%rax), %xmm11
	movhpd	40(%rax), %xmm3
	mulpd	%xmm7, %xmm0
	movhpd	32(%rax), %xmm5
	.loc 1 998 0
	addq	$64, %rax
	.loc 1 169 0
	mulpd	%xmm11, %xmm10
	.loc 1 998 0
	leaq	-8(%rax), %rsi
	.loc 1 169 0
	mulpd	%xmm3, %xmm1
	mulpd	%xmm5, %xmm14
	subpd	%xmm10, %xmm0
	subpd	%xmm14, %xmm1
	movlpd	%xmm0, 48(%rdx)
	movhpd	%xmm0, 56(%rdx)
	movlpd	%xmm1, 32(%rdx)
	movhpd	%xmm1, 40(%rdx)
	.loc 1 998 0
	addq	$64, %rdx
	cmpq	%rcx, %rax
	jne	.L3374
.L3373:
.LBB871:
.LBB865:
	.loc 1 169 0
	movdqa	%xmm2, %xmm13
	cvtdq2pd	%xmm2, %xmm7
	movl	%ebx, %r10d
	movsd	16(%rax), %xmm8
	notl	%r10d
	movsd	16(%rsi), %xmm1
	paddd	%xmm4, %xmm13
	cvtdq2pd	%xmm13, %xmm6
	movsd	(%rax), %xmm14
	movhpd	24(%rax), %xmm8
	leal	1(%rbx), %r9d
	pshufd	$238, %xmm13, %xmm0
	movhpd	24(%rsi), %xmm1
	movsd	(%rsi), %xmm13
	movhpd	8(%rax), %xmm14
	pshufd	$238, %xmm2, %xmm11
	addl	%ebp, %r10d
	paddd	%xmm12, %xmm2
	movhpd	8(%rsi), %xmm13
	cvtdq2pd	%xmm0, %xmm10
	mulpd	%xmm14, %xmm6
	andl	$1, %r10d
	cmpl	%r9d, %ebp
	movl	$32, %r12d
	mulpd	%xmm8, %xmm10
	cvtdq2pd	%xmm11, %xmm15
	mulpd	%xmm13, %xmm7
	mulpd	%xmm1, %xmm15
	subpd	%xmm7, %xmm6
	subpd	%xmm15, %xmm10
	movlpd	%xmm6, (%rdx)
	movhpd	%xmm6, 8(%rdx)
	movlpd	%xmm10, 16(%rdx)
	movhpd	%xmm10, 24(%rdx)
	jbe	.L3873
	testl	%r10d, %r10d
	je	.L3379
	movdqa	%xmm2, %xmm10
	cvtdq2pd	%xmm2, %xmm0
	leal	2(%rbx), %r9d
	movsd	48(%rax), %xmm9
	movl	$64, %r12d
	movsd	48(%rsi), %xmm6
	paddd	%xmm4, %xmm10
	cvtdq2pd	%xmm10, %xmm7
	movsd	32(%rax), %xmm5
	movhpd	56(%rax), %xmm9
	cmpl	%r9d, %ebp
	pshufd	$238, %xmm10, %xmm8
	movhpd	56(%rsi), %xmm6
	movsd	32(%rsi), %xmm10
	movhpd	40(%rax), %xmm5
	pshufd	$238, %xmm2, %xmm1
	paddd	%xmm12, %xmm2
	movhpd	40(%rsi), %xmm10
	cvtdq2pd	%xmm8, %xmm11
	mulpd	%xmm5, %xmm7
	mulpd	%xmm9, %xmm11
	cvtdq2pd	%xmm1, %xmm3
	mulpd	%xmm10, %xmm0
	mulpd	%xmm6, %xmm3
	subpd	%xmm0, %xmm7
	subpd	%xmm3, %xmm11
	movlpd	%xmm7, 32(%rdx)
	movhpd	%xmm7, 40(%rdx)
	movlpd	%xmm11, 48(%rdx)
	movhpd	%xmm11, 56(%rdx)
	jbe	.L3873
	.p2align 4,,10
	.p2align 3
.L3379:
	movdqa	%xmm2, %xmm9
	addl	$2, %r9d
	movsd	16(%rax,%r12), %xmm1
	movsd	16(%rsi,%r12), %xmm7
	paddd	%xmm4, %xmm9
	cvtdq2pd	%xmm9, %xmm0
	movsd	(%rax,%r12), %xmm10
	movhpd	24(%rax,%r12), %xmm1
	pshufd	$238, %xmm9, %xmm15
	movhpd	24(%rsi,%r12), %xmm7
	movsd	(%rsi,%r12), %xmm9
	movhpd	8(%rax,%r12), %xmm10
	pshufd	$238, %xmm2, %xmm14
	movdqa	%xmm2, %xmm11
	cvtdq2pd	%xmm2, %xmm2
	movhpd	8(%rsi,%r12), %xmm9
	cvtdq2pd	%xmm15, %xmm3
	mulpd	%xmm10, %xmm0
	paddd	%xmm12, %xmm11
	cvtdq2pd	%xmm11, %xmm15
	mulpd	%xmm1, %xmm3
	cvtdq2pd	%xmm14, %xmm5
	mulpd	%xmm9, %xmm2
	mulpd	%xmm7, %xmm5
	pshufd	$238, %xmm11, %xmm7
	subpd	%xmm2, %xmm0
	subpd	%xmm5, %xmm3
	cvtdq2pd	%xmm7, %xmm13
	movlpd	%xmm0, (%rdx,%r12)
	movhpd	%xmm0, 8(%rdx,%r12)
	movlpd	%xmm3, 16(%rdx,%r12)
	movhpd	%xmm3, 24(%rdx,%r12)
	movdqa	%xmm11, %xmm3
	movsd	48(%rax,%r12), %xmm14
	paddd	%xmm4, %xmm3
	cvtdq2pd	%xmm3, %xmm8
	movsd	48(%rsi,%r12), %xmm0
	movsd	32(%rax,%r12), %xmm2
	movhpd	56(%rax,%r12), %xmm14
	pshufd	$238, %xmm3, %xmm1
	movhpd	56(%rsi,%r12), %xmm0
	movsd	32(%rsi,%r12), %xmm3
	movhpd	40(%rax,%r12), %xmm2
	mulpd	%xmm0, %xmm13
	movhpd	40(%rsi,%r12), %xmm3
	cvtdq2pd	%xmm1, %xmm6
	mulpd	%xmm2, %xmm8
	movdqa	%xmm11, %xmm2
	mulpd	%xmm14, %xmm6
	paddd	%xmm12, %xmm2
	mulpd	%xmm3, %xmm15
	subpd	%xmm13, %xmm6
	subpd	%xmm15, %xmm8
	movlpd	%xmm6, 48(%rdx,%r12)
	movhpd	%xmm6, 56(%rdx,%r12)
	movlpd	%xmm8, 32(%rdx,%r12)
	movhpd	%xmm8, 40(%rdx,%r12)
	addq	$64, %r12
	cmpl	%r9d, %ebp
	ja	.L3379
.L3873:
	cmpl	%r11d, 116(%rsp)
	leal	1(%r11), %ebp
	je	.L3366
.L3372:
.LBE865:
.LBE871:
	.loc 1 998 0
	movl	112(%rsp), %r8d
	leal	1(%rbp), %r11d
	subl	$7, %r8d
	cmpl	%r8d, %r11d
	jge	.L3915
	cmpl	%ebp, 112(%rsp)
	jle	.L3915
	cvtsi2sd	%ebp, %xmm6
	movq	80(%rsp), %rax
	movslq	%ebp, %rdx
	movl	%r11d, %ecx
	salq	$3, %rdx
	addq	%rdx, %rax
	addq	216(%rsp), %rdx
	.p2align 4,,10
	.p2align 3
.L3377:
.LBB872:
.LBB866:
	.loc 1 169 0
	cvtsi2sd	%ecx, %xmm12
	mulsd	-8(%rax), %xmm6
	prefetcht0	96(%rax)
	.loc 1 998 0
	leal	2(%rbp), %edi
	leal	3(%rbp), %esi
	leal	4(%rbp), %ebx
	leal	5(%rbp), %r10d
	leal	6(%rbp), %r12d
	leal	7(%rbp), %r9d
	.loc 1 169 0
	cvtsi2sd	%esi, %xmm5
	addl	$8, %ebp
	prefetcht0	88(%rax)
	cvtsi2sd	%ebx, %xmm13
	addl	$8, %ecx
	prefetcht0	96(%rdx)
	cvtsi2sd	%r10d, %xmm10
	cvtsi2sd	%r12d, %xmm9
	cvtsi2sd	%r9d, %xmm15
	mulsd	(%rax), %xmm12
	movapd	%xmm12, %xmm4
	subsd	%xmm6, %xmm4
	cvtsi2sd	%edi, %xmm6
	movsd	%xmm4, (%rdx)
.LVL1119:
	movsd	8(%rax), %xmm14
	mulsd	%xmm6, %xmm14
	subsd	%xmm12, %xmm14
	movsd	%xmm14, 8(%rdx)
.LVL1120:
	mulsd	8(%rax), %xmm6
	movsd	16(%rax), %xmm7
	mulsd	%xmm5, %xmm7
	subsd	%xmm6, %xmm7
	cvtsi2sd	%ebp, %xmm6
	movsd	%xmm7, 16(%rdx)
	movsd	24(%rax), %xmm0
	mulsd	16(%rax), %xmm5
	mulsd	%xmm13, %xmm0
	subsd	%xmm5, %xmm0
	movsd	%xmm0, 24(%rdx)
	movsd	32(%rax), %xmm8
	mulsd	24(%rax), %xmm13
	mulsd	%xmm10, %xmm8
	subsd	%xmm13, %xmm8
	movsd	%xmm8, 32(%rdx)
	movsd	40(%rax), %xmm2
	mulsd	32(%rax), %xmm10
	mulsd	%xmm9, %xmm2
	subsd	%xmm10, %xmm2
	movsd	%xmm2, 40(%rdx)
	movsd	48(%rax), %xmm3
	mulsd	40(%rax), %xmm9
	mulsd	%xmm15, %xmm3
	subsd	%xmm9, %xmm3
	movsd	%xmm3, 48(%rdx)
	movsd	56(%rax), %xmm1
	mulsd	48(%rax), %xmm15
	addq	$64, %rax
	mulsd	%xmm6, %xmm1
	subsd	%xmm15, %xmm1
	movsd	%xmm1, 56(%rdx)
.LVL1121:
	addq	$64, %rdx
	cmpl	%ecx, %r8d
	jg	.L3377
	leal	1(%rbp), %r11d
.LVL1122:
.L3376:
	movl	112(%rsp), %esi
	.loc 1 998 0
	movq	80(%rsp), %r8
	movslq	%ebp, %rbp
	movq	216(%rsp), %rcx
	subl	%r11d, %esi
	leaq	-8(%r8,%rbp,8), %rdx
	andl	$3, %esi
	leaq	(%rcx,%rbp,8), %rax
	je	.L3894
	.loc 1 169 0
	cvtsi2sd	%r11d, %xmm12
	mulsd	(%rdx), %xmm6
	movl	%r11d, %edi
	mulsd	8(%rdx), %xmm12
	addq	$8, %rdx
	subsd	%xmm6, %xmm12
	movsd	%xmm12, (%rax)
.LVL1123:
	addq	$8, %rax
	.loc 1 168 0
	cmpl	%r11d, 112(%rsp)
	jle	.L3366
	addl	$1, %r11d
	cmpl	$1, %esi
	cvtsi2sd	%edi, %xmm6
	je	.L3894
	cmpl	$2, %esi
	je	.L3742
	.loc 1 169 0
	cvtsi2sd	%r11d, %xmm4
	mulsd	(%rdx), %xmm6
	movl	%r11d, %ebx
	addl	$1, %r11d
	mulsd	8(%rdx), %xmm4
	addq	$8, %rdx
	subsd	%xmm6, %xmm4
	cvtsi2sd	%ebx, %xmm6
	movsd	%xmm4, (%rax)
.LVL1124:
	addq	$8, %rax
.L3742:
	cvtsi2sd	%r11d, %xmm11
	mulsd	(%rdx), %xmm6
	movl	%r11d, %r10d
	movl	112(%rsp), %r12d
	addl	$1, %r11d
	mulsd	8(%rdx), %xmm11
	addq	$8, %rdx
	subsd	%xmm6, %xmm11
	cvtsi2sd	%r10d, %xmm6
	movsd	%xmm11, (%rax)
	addq	$8, %rax
	jmp	.L3378
.LVL1125:
	.p2align 4,,10
	.p2align 3
.L3920:
	leal	1(%r11), %r9d
	movsd	16(%rdx), %xmm9
	mulsd	8(%rdx), %xmm14
	leal	2(%r11), %r10d
	leal	3(%r11), %r8d
	cvtsi2sd	%r9d, %xmm8
	addl	$4, %r11d
.LVL1126:
	cvtsi2sd	%r10d, %xmm15
	cvtsi2sd	%r8d, %xmm6
	mulsd	%xmm8, %xmm9
	subsd	%xmm14, %xmm9
	movsd	%xmm9, 8(%rax)
.LVL1127:
	movsd	24(%rdx), %xmm12
	mulsd	16(%rdx), %xmm8
	mulsd	%xmm15, %xmm12
	subsd	%xmm8, %xmm12
	movsd	%xmm12, 16(%rax)
	movsd	32(%rdx), %xmm11
	mulsd	24(%rdx), %xmm15
	addq	$32, %rdx
	mulsd	%xmm6, %xmm11
	subsd	%xmm15, %xmm11
	movsd	%xmm11, 24(%rax)
	addq	$32, %rax
.L3378:
	cvtsi2sd	%r11d, %xmm14
	mulsd	(%rdx), %xmm6
	movsd	8(%rdx), %xmm5
	.loc 1 168 0
	cmpl	%r11d, %r12d
	.loc 1 169 0
	mulsd	%xmm14, %xmm5
	subsd	%xmm6, %xmm5
	movsd	%xmm5, (%rax)
.LVL1128:
	.loc 1 168 0
	jg	.L3920
.LVL1129:
.L3366:
.LBE866:
.LBE872:
	.loc 1 1126 0
	movq	224(%rsp), %r8
	movl	240(%rsp), %ecx
	movq	%r13, %rsi
	movl	112(%rsp), %edx
	movq	192(%rsp), %rdi
	movsd	208(%rsp), %xmm0
	call	_Z10HJM_DriftsPdPS_iidS0_
.LVL1130:
	.loc 1 1127 0
	cmpl	$1, %eax
	.loc 1 1126 0
	movl	%eax, 152(%rsp)
.LVL1131:
	.loc 1 1127 0
	je	.L3921
.LVL1132:
.L3370:
.LBE880:
	.loc 1 1194 0
	addq	$328, %rsp
.LCFI188:
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
.LCFI189:
	.cfi_def_cfa_offset 48
	popq	%rbp
.LCFI190:
	.cfi_def_cfa_offset 40
	popq	%r12
.LCFI191:
	.cfi_def_cfa_offset 32
	popq	%r13
.LCFI192:
	.cfi_def_cfa_offset 24
	popq	%r14
.LCFI193:
	.cfi_def_cfa_offset 16
	popq	%r15
.LCFI194:
	.cfi_def_cfa_offset 8
	ret
.LVL1133:
	.p2align 4,,10
	.p2align 3
.L3894:
.LCFI195:
	.cfi_restore_state
	movl	112(%rsp), %r12d
	jmp	.L3378
.LVL1134:
	.p2align 4,,10
	.p2align 3
.L3422:
.LBB881:
	.loc 1 1039 0
	mulsd	%xmm1, %xmm0
.LVL1135:
	movsd	%xmm1, 32(%rsp)
	addsd	.LC11(%rip), %xmm0
	call	log
.LVL1136:
	movsd	32(%rsp), %xmm1
	movsd	.LC11(%rip), %xmm5
	divsd	%xmm1, %xmm5
	mulsd	%xmm5, %xmm0
	movsd	%xmm0, 72(%rsp)
.LVL1137:
	jmp	.L3327
.LVL1138:
	.p2align 4,,10
	.p2align 3
.L3911:
	movq	128(%rsp), %r8
	jmp	.L3336
.LVL1139:
	.p2align 4,,10
	.p2align 3
.L3915:
	cvtsi2sd	%ebp, %xmm6
	jmp	.L3376
.LVL1140:
.L3411:
	.loc 1 998 0
	movl	$1, %edi
	movl	$2, %edx
	jmp	.L3334
.LVL1141:
.L3414:
	xorl	%edi, %edi
	xorl	%ebx, %ebx
.LVL1142:
	jmp	.L3351
.LVL1143:
.L3412:
	movl	$1, %r8d
	movl	$2, %edx
	jmp	.L3342
.LVL1144:
.L3415:
	xorl	%r8d, %r8d
	jmp	.L3356
.LVL1145:
.L3417:
	movq	80(%rsp), %rsi
	xorl	%ebx, %ebx
	movdqa	.LC23(%rip), %xmm2
	movdqa	.LC25(%rip), %xmm4
	jmp	.L3373
.LVL1146:
	.p2align 4,,10
	.p2align 3
.L3921:
	.loc 1 1134 0 discriminator 1
	cmpq	$0, 384(%rsp)
	jle	.L3418
	.loc 1 1103 0
	movsd	.LC0(%rip), %xmm13
	movq	128(%rsp), %rcx
	.loc 1 1097 0
	movq	160(%rsp), %r11
	.loc 1 1091 0
	movq	136(%rsp), %r9
	.loc 1 998 0
	leal	0(,%r15,8), %r10d
	.loc 1 1103 0
	addsd	144(%rsp), %xmm13
	.loc 1 1090 0
	movq	120(%rsp), %r13
	.loc 1 998 0
	leal	-9(%r15), %esi
	.loc 1 1098 0
	movq	168(%rsp), %rbp
	.loc 1 998 0
	xorpd	%xmm0, %xmm0
	.loc 1 1097 0
	addq	$8, %r11
	.loc 1 998 0
	movslq	%r10d, %rdi
	.loc 1 1091 0
	addq	$8, %r9
	.loc 1 1097 0
	movq	%r11, 232(%rsp)
	.loc 1 1090 0
	addq	$8, %r13
	.loc 1 998 0
	salq	$3, %rdi
	.loc 1 1090 0
	movq	%r13, 256(%rsp)
	.loc 1 998 0
	leal	-9(%r14), %r13d
	.loc 1 1098 0
	addq	$8, %rbp
	.loc 1 998 0
	shrl	$3, %esi
	.loc 1 1091 0
	movq	%r9, 176(%rsp)
	.loc 1 998 0
	movslq	%r15d, %r12
	.loc 1 1103 0
	cvttsd2si	%xmm13, %r8d
	.loc 1 998 0
	shrl	$3, %r13d
	leal	8(,%r13,8), %r9d
	movq	%rdi, 104(%rsp)
	subl	%r15d, %r10d
	.loc 1 1098 0
	movq	%rbp, 120(%rsp)
	.loc 1 998 0
	movslq	%r10d, %r10
	leal	8(,%rsi,8), %ebp
	leaq	0(,%r12,8), %rbx
	.loc 1 1171 0
	movsd	.LC11(%rip), %xmm5
	.loc 1 1168 0
	movapd	%xmm0, %xmm4
	movsd	%xmm0, 160(%rsp)
	movsd	%xmm0, 168(%rsp)
	.loc 1 998 0
	movl	%r9d, 88(%rsp)
	movq	%r10, 272(%rsp)
	movq	$0, 184(%rsp)
	movslq	%r8d, %rdx
	leaq	(%rcx,%rdx,8), %rax
.LVL1147:
	leal	0(,%r15,4), %ecx
	movq	%rax, 136(%rsp)
	leal	(%r15,%r15), %eax
	movslq	%ecx, %rdi
	addl	%r15d, %ecx
	.loc 1 1168 0
	movq	%rdi, 304(%rsp)
	.loc 1 998 0
	movslq	%eax, %r11
	addl	%r15d, %eax
	movslq	%ecx, %rsi
	movslq	%eax, %rdx
	addl	%eax, %eax
	movq	%r11, 264(%rsp)
	cltq
	movq	%rdx, 296(%rsp)
	movq	%rsi, 288(%rsp)
	movq	%rax, 280(%rsp)
	movl	%r15d, %eax
	imull	%r8d, %eax
	movq	256(%rsp), %r8
	cltq
	leaq	(%r8,%rax,8), %r13
	movq	%r13, 144(%rsp)
.LVL1148:
	.p2align 4,,10
	.p2align 3
.L3405:
	.loc 1 1136 0
	leaq	312(%rsp), %r9
	movq	192(%rsp), %r8
	movq	216(%rsp), %rcx
	movl	240(%rsp), %edx
	movl	112(%rsp), %esi
	movsd	%xmm4, 16(%rsp)
	movq	%r9, (%rsp)
	movq	128(%rsp), %rdi
	movsd	%xmm5, 48(%rsp)
	movq	224(%rsp), %r9
	movsd	208(%rsp), %xmm0
	movl	%r15d, 8(%rsp)
	call	_Z28HJM_SimPath_Forward_BlockingPPdiidS_S_S0_Pli
.LVL1149:
	.loc 1 1137 0
	cmpl	$1, %eax
	movsd	16(%rsp), %xmm4
	movsd	48(%rsp), %xmm5
	jne	.L3421
.LVL1150:
	.loc 1 1142 0 discriminator 1
	movl	112(%rsp), %r11d
	testl	%r11d, %r11d
	jle	.L3382
	.loc 1 998 0
	movq	176(%rsp), %r8
	movq	176(%rsp), %r11
	xorl	%r10d, %r10d
	movq	128(%rsp), %r13
	xorl	%r9d, %r9d
	movl	%r14d, 72(%rsp)
	addq	$160, %r8
.LVL1151:
	.p2align 4,,10
	.p2align 3
.L3383:
	.loc 1 1143 0 discriminator 1
	testl	%r15d, %r15d
	jle	.L3385
	movq	0(%r13,%r9,8), %r14
	.loc 1 1143 0 is_stmt 0
	xorl	%edi, %edi
	cmpl	$8, %r15d
	.loc 1 998 0 is_stmt 1
	leaq	160(%r14), %rdx
	jle	.L3387
	.loc 1 1144 0 discriminator 2
	movsd	-160(%rdx), %xmm8
	leal	-8(%rbp), %ecx
	prefetcht0	(%rdx)
	.loc 1 1143 0 discriminator 2
	movl	$8, %edi
	prefetcht0	(%r8)
	leaq	64(%r8), %rax
	.loc 1 1144 0 discriminator 2
	movsd	%xmm8, -160(%r8)
.LVL1152:
	shrl	$3, %ecx
	andl	$1, %ecx
	cmpl	%ebp, %edi
	movsd	-152(%rdx), %xmm9
	movsd	%xmm9, -152(%r8)
	movsd	-144(%rdx), %xmm2
	movsd	%xmm2, -144(%r8)
	movsd	-136(%rdx), %xmm15
	movsd	%xmm15, -136(%r8)
	movsd	-128(%rdx), %xmm3
	movsd	%xmm3, -128(%r8)
	movsd	-120(%rdx), %xmm1
	movsd	%xmm1, -120(%r8)
	movsd	-112(%rdx), %xmm12
	movsd	%xmm12, -112(%r8)
.LVL1153:
	movsd	-104(%rdx), %xmm11
	leaq	224(%r14), %rdx
	movsd	%xmm11, -104(%r8)
	je	.L3387
	testl	%ecx, %ecx
	je	.L3455
	.loc 1 1144 0 is_stmt 0
	movsd	-160(%rdx), %xmm6
	.loc 1 1143 0 is_stmt 1
	movl	$16, %edi
.LVL1154:
	prefetcht0	(%rdx)
	cmpl	%ebp, %edi
	prefetcht0	(%rax)
	.loc 1 1144 0
	movsd	%xmm6, -160(%rax)
.LVL1155:
	movsd	-152(%rdx), %xmm14
	movsd	%xmm14, -152(%rax)
	movsd	-144(%rdx), %xmm7
	movsd	%xmm7, -144(%rax)
	movsd	-136(%rdx), %xmm13
	movsd	%xmm13, -136(%rax)
	movsd	-128(%rdx), %xmm0
	movsd	%xmm0, -128(%rax)
	movsd	-120(%rdx), %xmm10
	movsd	%xmm10, -120(%rax)
	movsd	-112(%rdx), %xmm8
	movsd	%xmm8, -112(%rax)
.LVL1156:
	movsd	-104(%rdx), %xmm9
	leaq	288(%r14), %rdx
	movsd	%xmm9, -104(%rax)
	leaq	128(%r8), %rax
	je	.L3387
.L3455:
	.loc 1 1144 0 is_stmt 0 discriminator 2
	movsd	-160(%rdx), %xmm2
	leaq	64(%rdx), %rsi
	prefetcht0	(%rdx)
	leaq	64(%rax), %rcx
	.loc 1 1143 0 is_stmt 1 discriminator 2
	addl	$16, %edi
.LVL1157:
	prefetcht0	(%rax)
	.loc 1 1144 0 discriminator 2
	movsd	%xmm2, -160(%rax)
.LVL1158:
	prefetcht0	(%rsi)
	prefetcht0	(%rcx)
	movsd	-152(%rdx), %xmm15
	movsd	%xmm15, -152(%rax)
	movsd	-144(%rdx), %xmm3
	movsd	%xmm3, -144(%rax)
	movsd	-136(%rdx), %xmm1
	movsd	%xmm1, -136(%rax)
	movsd	-128(%rdx), %xmm12
	movsd	%xmm12, -128(%rax)
	movsd	-120(%rdx), %xmm11
	movsd	%xmm11, -120(%rax)
	movsd	-112(%rdx), %xmm6
	movsd	%xmm6, -112(%rax)
	movsd	-104(%rdx), %xmm14
	movsd	%xmm14, -104(%rax)
	movsd	-96(%rdx), %xmm7
	movsd	%xmm7, -96(%rax)
	movsd	-88(%rdx), %xmm13
	movsd	%xmm13, -88(%rax)
	movsd	-80(%rdx), %xmm0
	movsd	%xmm0, -80(%rax)
	movsd	-72(%rdx), %xmm10
	movsd	%xmm10, -72(%rax)
	movsd	-64(%rdx), %xmm8
	movsd	%xmm8, -64(%rax)
	movsd	-56(%rdx), %xmm9
	movsd	%xmm9, -56(%rax)
	movsd	-48(%rdx), %xmm2
	movsd	%xmm2, -48(%rax)
.LVL1159:
	movsd	-40(%rdx), %xmm15
	subq	$-128, %rdx
	movsd	%xmm15, -40(%rax)
	subq	$-128, %rax
	cmpl	%ebp, %edi
	jne	.L3455
.LVL1160:
.L3387:
	.loc 1 998 0
	movslq	%edi, %rdx
	movl	$1, %eax
	leaq	(%r14,%rdx,8), %rcx
	movl	%edi, %r14d
	addq	%r10, %rdx
	notl	%r14d
	leaq	(%r11,%rdx,8), %rdx
	leal	(%r14,%r15), %esi
	leal	1(%rdi), %r14d
	.loc 1 1144 0
	movsd	(%rcx), %xmm3
	andl	$7, %esi
	.loc 1 1143 0
	cmpl	%r14d, %r15d
	.loc 1 1144 0
	movsd	%xmm3, (%rdx)
	.loc 1 1143 0
	jle	.L3385
	testl	%esi, %esi
	je	.L3384
	cmpl	$1, %esi
	je	.L3736
	cmpl	$2, %esi
	.p2align 4,,3
	je	.L3737
	cmpl	$3, %esi
	.p2align 4,,2
	je	.L3738
	cmpl	$4, %esi
	.p2align 4,,2
	je	.L3739
	cmpl	$5, %esi
	.p2align 4,,2
	je	.L3740
	cmpl	$6, %esi
	.p2align 4,,2
	je	.L3741
	.loc 1 1144 0
	movsd	8(%rcx), %xmm1
	movl	$2, %eax
	movsd	%xmm1, 8(%rdx)
.L3741:
	movsd	(%rcx,%rax,8), %xmm12
	movsd	%xmm12, (%rdx,%rax,8)
	addq	$1, %rax
.L3740:
	movsd	(%rcx,%rax,8), %xmm11
	movsd	%xmm11, (%rdx,%rax,8)
	addq	$1, %rax
.L3739:
	movsd	(%rcx,%rax,8), %xmm6
	movsd	%xmm6, (%rdx,%rax,8)
	addq	$1, %rax
.L3738:
	movsd	(%rcx,%rax,8), %xmm14
	movsd	%xmm14, (%rdx,%rax,8)
	addq	$1, %rax
.L3737:
	movsd	(%rcx,%rax,8), %xmm7
	movsd	%xmm7, (%rdx,%rax,8)
	addq	$1, %rax
.L3736:
	movsd	(%rcx,%rax,8), %xmm13
	movsd	%xmm13, (%rdx,%rax,8)
	addq	$1, %rax
	.loc 1 998 0
	leal	(%rdi,%rax), %esi
	.loc 1 1143 0
	cmpl	%esi, %r15d
	jle	.L3385
.L3384:
	.loc 1 1144 0
	movsd	(%rcx,%rax,8), %xmm0
	leaq	1(%rax), %r14
	leaq	2(%rax), %rsi
	movsd	%xmm0, (%rdx,%rax,8)
	movsd	(%rcx,%r14,8), %xmm10
	movsd	%xmm10, (%rdx,%r14,8)
	leaq	3(%rax), %r14
	movsd	(%rcx,%rsi,8), %xmm8
	movsd	%xmm8, (%rdx,%rsi,8)
	leaq	4(%rax), %rsi
	movsd	(%rcx,%r14,8), %xmm9
	movsd	%xmm9, (%rdx,%r14,8)
	leaq	5(%rax), %r14
	movsd	(%rcx,%rsi,8), %xmm2
	movsd	%xmm2, (%rdx,%rsi,8)
	leaq	6(%rax), %rsi
	movsd	(%rcx,%r14,8), %xmm15
	movsd	%xmm15, (%rdx,%r14,8)
	leaq	7(%rax), %r14
	addq	$8, %rax
	movsd	(%rcx,%rsi,8), %xmm3
	movsd	%xmm3, (%rdx,%rsi,8)
	.loc 1 998 0
	leal	(%rdi,%rax), %esi
	.loc 1 1144 0
	movsd	(%rcx,%r14,8), %xmm1
	.loc 1 1143 0
	cmpl	%esi, %r15d
	.loc 1 1144 0
	movsd	%xmm1, (%rdx,%r14,8)
	.loc 1 1143 0
	jg	.L3384
.L3385:
	addq	$1, %r9
	addq	%r12, %r10
	addq	%rbx, %r8
	.loc 1 1142 0
	cmpl	%r9d, 112(%rsp)
	jg	.L3383
	movl	72(%rsp), %r14d
.L3382:
	.loc 1 1147 0
	movq	176(%rsp), %rdx
	movl	112(%rsp), %esi
	movl	%r15d, %ecx
	movq	256(%rsp), %rdi
	movsd	208(%rsp), %xmm0
	movsd	%xmm4, 16(%rsp)
	movsd	%xmm5, 48(%rsp)
	call	_Z25Discount_Factors_BlockingPdidS_i
.LVL1161:
	.loc 1 1149 0
	cmpl	$1, %eax
	movsd	16(%rsp), %xmm4
	movsd	48(%rsp), %xmm5
	jne	.L3421
.LVL1162:
	.loc 1 1153 0 discriminator 1
	testl	%r14d, %r14d
	jle	.L3389
	.loc 1 998 0
	movq	232(%rsp), %rdi
	movq	232(%rsp), %r10
	xorl	%r9d, %r9d
	xorl	%r11d, %r11d
	addq	$184, %rdi
.LVL1163:
	.p2align 4,,10
	.p2align 3
.L3390:
	.loc 1 1154 0 discriminator 1
	testl	%r15d, %r15d
	jle	.L3392
	movq	136(%rsp), %r8
	movq	(%r8), %r13
	.loc 1 1154 0 is_stmt 0
	xorl	%r8d, %r8d
	cmpl	$8, %r15d
	jle	.L3394
	.loc 1 998 0 is_stmt 1
	movq	%rdi, %rcx
	leal	-8(%rbp), %esi
	prefetcht0	(%rdi)
	subq	%r10, %rcx
	.loc 1 1154 0
	movl	$8, %r8d
	leaq	64(%rdi), %rax
	.loc 1 998 0
	addq	%r13, %rcx
	shrl	$3, %esi
	.loc 1 1156 0
	movsd	-184(%rcx), %xmm12
	andl	$1, %esi
	cmpl	$8, %ebp
	prefetcht0	(%rcx)
	leaq	64(%rcx), %rdx
	movsd	%xmm12, -184(%rdi)
.LVL1164:
	movsd	-176(%rcx), %xmm11
	movsd	%xmm11, -176(%rdi)
	movsd	-168(%rcx), %xmm6
	movsd	%xmm6, -168(%rdi)
	movsd	-160(%rcx), %xmm14
	movsd	%xmm14, -160(%rdi)
	movsd	-152(%rcx), %xmm7
	movsd	%xmm7, -152(%rdi)
	movsd	-144(%rcx), %xmm13
	movsd	%xmm13, -144(%rdi)
	movsd	-136(%rcx), %xmm0
	movsd	%xmm0, -136(%rdi)
.LVL1165:
	movsd	-128(%rcx), %xmm10
	movsd	%xmm10, -128(%rdi)
	je	.L3394
	testl	%esi, %esi
	je	.L3393
	movsd	-184(%rdx), %xmm8
	cmpl	$16, %ebp
	prefetcht0	(%rdx)
	prefetcht0	(%rax)
	.loc 1 1154 0
	movl	$16, %r8d
.LVL1166:
	.loc 1 1156 0
	movsd	%xmm8, -184(%rax)
.LVL1167:
	movsd	-176(%rdx), %xmm9
	movsd	%xmm9, -176(%rax)
	movsd	-168(%rdx), %xmm2
	movsd	%xmm2, -168(%rax)
	movsd	-160(%rdx), %xmm15
	movsd	%xmm15, -160(%rax)
	movsd	-152(%rdx), %xmm3
	movsd	%xmm3, -152(%rax)
	movsd	-144(%rdx), %xmm1
	movsd	%xmm1, -144(%rax)
	movsd	-136(%rdx), %xmm12
	movsd	%xmm12, -136(%rax)
.LVL1168:
	movsd	-128(%rdx), %xmm11
	leaq	128(%rcx), %rdx
	movsd	%xmm11, -128(%rax)
	leaq	128(%rdi), %rax
	je	.L3394
.L3393:
	.loc 1 1156 0 is_stmt 0 discriminator 2
	movsd	-184(%rdx), %xmm6
	leaq	64(%rdx), %rsi
	prefetcht0	(%rdx)
	leaq	64(%rax), %rcx
	.loc 1 1154 0 is_stmt 1 discriminator 2
	addl	$16, %r8d
.LVL1169:
	prefetcht0	(%rax)
	.loc 1 1156 0 discriminator 2
	movsd	%xmm6, -184(%rax)
.LVL1170:
	prefetcht0	(%rsi)
	prefetcht0	(%rcx)
	movsd	-176(%rdx), %xmm14
	movsd	%xmm14, -176(%rax)
	movsd	-168(%rdx), %xmm7
	movsd	%xmm7, -168(%rax)
	movsd	-160(%rdx), %xmm13
	movsd	%xmm13, -160(%rax)
	movsd	-152(%rdx), %xmm0
	movsd	%xmm0, -152(%rax)
	movsd	-144(%rdx), %xmm10
	movsd	%xmm10, -144(%rax)
	movsd	-136(%rdx), %xmm8
	movsd	%xmm8, -136(%rax)
	movsd	-128(%rdx), %xmm9
	movsd	%xmm9, -128(%rax)
	movsd	-120(%rdx), %xmm2
	movsd	%xmm2, -120(%rax)
	movsd	-112(%rdx), %xmm15
	movsd	%xmm15, -112(%rax)
	movsd	-104(%rdx), %xmm3
	movsd	%xmm3, -104(%rax)
	movsd	-96(%rdx), %xmm1
	movsd	%xmm1, -96(%rax)
	movsd	-88(%rdx), %xmm12
	movsd	%xmm12, -88(%rax)
	movsd	-80(%rdx), %xmm11
	movsd	%xmm11, -80(%rax)
	movsd	-72(%rdx), %xmm6
	movsd	%xmm6, -72(%rax)
.LVL1171:
	movsd	-64(%rdx), %xmm14
	subq	$-128, %rdx
	movsd	%xmm14, -64(%rax)
	subq	$-128, %rax
	cmpl	%r8d, %ebp
	jne	.L3393
.LVL1172:
.L3394:
	.loc 1 998 0
	movslq	%r8d, %rdx
	movl	$1, %eax
	addq	%r9, %rdx
	salq	$3, %rdx
	leaq	0(%r13,%rdx), %rcx
	movl	%r8d, %r13d
	addq	%r10, %rdx
	notl	%r13d
	leal	0(%r13,%r15), %esi
	leal	1(%r8), %r13d
	.loc 1 1156 0
	movsd	(%rcx), %xmm7
	andl	$7, %esi
	.loc 1 1154 0
	cmpl	%r13d, %r15d
	.loc 1 1156 0
	movsd	%xmm7, (%rdx)
	.loc 1 1154 0
	jle	.L3392
	testl	%esi, %esi
	je	.L3391
	cmpl	$1, %esi
	je	.L3730
	cmpl	$2, %esi
	.p2align 4,,3
	je	.L3731
	cmpl	$3, %esi
	.p2align 4,,2
	je	.L3732
	cmpl	$4, %esi
	.p2align 4,,2
	je	.L3733
	cmpl	$5, %esi
	.p2align 4,,2
	je	.L3734
	cmpl	$6, %esi
	.p2align 4,,2
	je	.L3735
	.loc 1 1156 0
	movsd	8(%rcx), %xmm13
	movl	$2, %eax
	movsd	%xmm13, 8(%rdx)
.L3735:
	movsd	(%rcx,%rax,8), %xmm0
	movsd	%xmm0, (%rdx,%rax,8)
	addq	$1, %rax
.L3734:
	movsd	(%rcx,%rax,8), %xmm10
	movsd	%xmm10, (%rdx,%rax,8)
	addq	$1, %rax
.L3733:
	movsd	(%rcx,%rax,8), %xmm8
	movsd	%xmm8, (%rdx,%rax,8)
	addq	$1, %rax
.L3732:
	movsd	(%rcx,%rax,8), %xmm9
	movsd	%xmm9, (%rdx,%rax,8)
	addq	$1, %rax
.L3731:
	movsd	(%rcx,%rax,8), %xmm2
	movsd	%xmm2, (%rdx,%rax,8)
	addq	$1, %rax
.L3730:
	movsd	(%rcx,%rax,8), %xmm15
	movsd	%xmm15, (%rdx,%rax,8)
	addq	$1, %rax
	.loc 1 998 0
	leal	(%r8,%rax), %esi
	.loc 1 1154 0
	cmpl	%esi, %r15d
	jle	.L3392
.L3391:
	.loc 1 1156 0
	movsd	(%rcx,%rax,8), %xmm3
	leaq	1(%rax), %r13
	leaq	2(%rax), %rsi
	movsd	%xmm3, (%rdx,%rax,8)
	movsd	(%rcx,%r13,8), %xmm1
	movsd	%xmm1, (%rdx,%r13,8)
	leaq	3(%rax), %r13
	movsd	(%rcx,%rsi,8), %xmm12
	movsd	%xmm12, (%rdx,%rsi,8)
	leaq	4(%rax), %rsi
	movsd	(%rcx,%r13,8), %xmm11
	movsd	%xmm11, (%rdx,%r13,8)
	leaq	5(%rax), %r13
	movsd	(%rcx,%rsi,8), %xmm6
	movsd	%xmm6, (%rdx,%rsi,8)
	leaq	6(%rax), %rsi
	movsd	(%rcx,%r13,8), %xmm14
	movsd	%xmm14, (%rdx,%r13,8)
	leaq	7(%rax), %r13
	addq	$8, %rax
	movsd	(%rcx,%rsi,8), %xmm7
	movsd	%xmm7, (%rdx,%rsi,8)
	.loc 1 998 0
	leal	(%r8,%rax), %esi
	.loc 1 1156 0
	movsd	(%rcx,%r13,8), %xmm13
	.loc 1 1154 0
	cmpl	%esi, %r15d
	.loc 1 1156 0
	movsd	%xmm13, (%rdx,%r13,8)
	.loc 1 1154 0
	jg	.L3391
.L3392:
	.loc 1 1153 0
	addl	$1, %r11d
.LVL1173:
	addq	%r12, %r9
	addq	%rbx, %rdi
	cmpl	%r14d, %r11d
	jne	.L3390
.LVL1174:
.L3389:
	.loc 1 1105 0
	cvtsi2sd	%r14d, %xmm0
	.loc 1 1159 0
	movq	232(%rsp), %rdx
	movq	120(%rsp), %rdi
	movl	%r15d, %ecx
	movl	%r14d, %esi
	movsd	%xmm4, 16(%rsp)
	movsd	%xmm5, 48(%rsp)
	.loc 1 1105 0
	mulsd	200(%rsp), %xmm0
	.loc 1 1159 0
	call	_Z25Discount_Factors_BlockingPdidS_i
.LVL1175:
	.loc 1 1160 0
	cmpl	$1, %eax
	movsd	16(%rsp), %xmm4
	movsd	48(%rsp), %xmm5
	jne	.L3421
.LVL1176:
	.loc 1 1166 0 discriminator 1
	testl	%r15d, %r15d
	jle	.L3396
	movl	%ebp, 244(%rsp)
	movl	%r15d, 116(%rsp)
	.loc 1 1166 0 is_stmt 0
	xorl	%r8d, %r8d
	movq	120(%rsp), %rdi
	movq	272(%rsp), %r9
	movq	280(%rsp), %r11
	movq	304(%rsp), %r13
	movq	296(%rsp), %r10
	movq	288(%rsp), %rbp
	movq	264(%rsp), %r15
	movsd	160(%rsp), %xmm2
	movsd	168(%rsp), %xmm3
	movq	%r8, 72(%rsp)
.LVL1177:
	.p2align 4,,10
	.p2align 3
.L3397:
	.loc 1 1168 0 is_stmt 1 discriminator 1
	testl	%r14d, %r14d
	jle	.L3403
	.loc 1 1168 0 is_stmt 0
	xorl	%esi, %esi
	cmpl	$8, %r14d
	movapd	%xmm4, %xmm0
	jle	.L3401
	.loc 1 998 0 is_stmt 1
	movq	96(%rsp), %rdx
	movl	88(%rsp), %ecx
	.loc 1 1168 0
	movl	$8, %esi
	movq	96(%rsp), %rax
	.loc 1 998 0
	subq	$-128, %rdx
	subl	$8, %ecx
	.loc 1 1169 0
	movsd	-128(%rdx), %xmm0
	prefetcht0	(%rdx)
	shrl	$3, %ecx
	movsd	-120(%rdx), %xmm10
	andl	$1, %ecx
	addq	$192, %rax
	mulsd	(%rdi), %xmm0
	mulsd	(%rdi,%r12,8), %xmm10
	movsd	-112(%rdx), %xmm8
	movsd	-104(%rdx), %xmm9
	mulsd	(%rdi,%r15,8), %xmm8
	mulsd	(%rdi,%r10,8), %xmm9
	addsd	%xmm4, %xmm0
.LVL1178:
	movsd	-96(%rdx), %xmm15
	movsd	-88(%rdx), %xmm1
	mulsd	(%rdi,%r13,8), %xmm15
	mulsd	(%rdi,%rbp,8), %xmm1
	addsd	%xmm10, %xmm0
.LVL1179:
	movsd	-80(%rdx), %xmm12
	movsd	-72(%rdx), %xmm11
	movq	104(%rsp), %rdx
	mulsd	(%rdi,%r11,8), %xmm12
	mulsd	(%rdi,%r9,8), %xmm11
	addsd	%xmm8, %xmm0
.LVL1180:
	addq	%rdi, %rdx
	cmpl	88(%rsp), %esi
	addsd	%xmm9, %xmm0
.LVL1181:
	addsd	%xmm15, %xmm0
.LVL1182:
	addsd	%xmm1, %xmm0
.LVL1183:
	addsd	%xmm12, %xmm0
.LVL1184:
	addsd	%xmm11, %xmm0
.LVL1185:
	je	.L3401
	testl	%ecx, %ecx
	je	.L3885
	movsd	-128(%rax), %xmm6
	prefetcht0	(%rax)
	.loc 1 1168 0
	movl	$16, %esi
.LVL1186:
	.loc 1 1169 0
	movsd	-120(%rax), %xmm14
	mulsd	(%rdx), %xmm6
	mulsd	(%rdx,%r12,8), %xmm14
	movsd	-112(%rax), %xmm7
	movsd	-104(%rax), %xmm13
	mulsd	(%rdx,%r15,8), %xmm7
	mulsd	(%rdx,%r10,8), %xmm13
	addsd	%xmm6, %xmm0
.LVL1187:
	movsd	-96(%rax), %xmm10
	movsd	-88(%rax), %xmm8
	mulsd	(%rdx,%r13,8), %xmm10
	mulsd	(%rdx,%rbp,8), %xmm8
	addsd	%xmm14, %xmm0
	movsd	-80(%rax), %xmm9
	movsd	-72(%rax), %xmm15
	movq	96(%rsp), %rax
	mulsd	(%rdx,%r11,8), %xmm9
	mulsd	(%rdx,%r9,8), %xmm15
	addq	104(%rsp), %rdx
	addsd	%xmm7, %xmm0
	addq	$256, %rax
	cmpl	88(%rsp), %esi
	addsd	%xmm13, %xmm0
	addsd	%xmm10, %xmm0
	addsd	%xmm8, %xmm0
	addsd	%xmm9, %xmm0
	addsd	%xmm15, %xmm0
.LVL1188:
	je	.L3401
.L3885:
	movq	104(%rsp), %r8
.L3400:
	.loc 1 1169 0 is_stmt 0 discriminator 2
	movsd	-128(%rax), %xmm1
	leaq	64(%rax), %rcx
	prefetcht0	(%rax)
	movsd	-112(%rax), %xmm12
	.loc 1 1168 0 is_stmt 1 discriminator 2
	addl	$16, %esi
.LVL1189:
	.loc 1 1169 0 discriminator 2
	mulsd	(%rdx), %xmm1
	prefetcht0	(%rcx)
	mulsd	(%rdx,%r15,8), %xmm12
	movsd	-104(%rax), %xmm11
	movsd	-96(%rax), %xmm6
	mulsd	(%rdx,%r10,8), %xmm11
	mulsd	(%rdx,%r13,8), %xmm6
	addsd	%xmm0, %xmm1
.LVL1190:
	movsd	-120(%rax), %xmm0
	movsd	-88(%rax), %xmm14
	mulsd	(%rdx,%r12,8), %xmm0
	mulsd	(%rdx,%rbp,8), %xmm14
	movsd	-80(%rax), %xmm7
	movsd	-72(%rax), %xmm13
	mulsd	(%rdx,%r11,8), %xmm7
	mulsd	(%rdx,%r9,8), %xmm13
	addq	%r8, %rdx
	addsd	%xmm0, %xmm1
	movsd	-64(%rax), %xmm0
	movsd	-56(%rax), %xmm10
	mulsd	(%rdx), %xmm0
	mulsd	(%rdx,%r12,8), %xmm10
	addsd	%xmm12, %xmm1
	movsd	-48(%rax), %xmm8
	movsd	-40(%rax), %xmm9
	mulsd	(%rdx,%r15,8), %xmm8
	mulsd	(%rdx,%r10,8), %xmm9
	addsd	%xmm11, %xmm1
	movsd	-32(%rax), %xmm15
	movsd	-16(%rax), %xmm12
	mulsd	(%rdx,%r13,8), %xmm15
	mulsd	(%rdx,%r11,8), %xmm12
	addsd	%xmm6, %xmm1
	movsd	-8(%rax), %xmm11
	mulsd	(%rdx,%r9,8), %xmm11
	addsd	%xmm14, %xmm1
	addsd	%xmm7, %xmm1
	addsd	%xmm13, %xmm1
	addsd	%xmm1, %xmm0
	movsd	-24(%rax), %xmm1
	subq	$-128, %rax
	mulsd	(%rdx,%rbp,8), %xmm1
	addq	%r8, %rdx
	cmpl	88(%rsp), %esi
	addsd	%xmm10, %xmm0
	addsd	%xmm8, %xmm0
	addsd	%xmm9, %xmm0
	addsd	%xmm15, %xmm0
	addsd	%xmm1, %xmm0
	addsd	%xmm12, %xmm0
	addsd	%xmm11, %xmm0
.LVL1191:
	jne	.L3400
.LVL1192:
.L3401:
	.loc 1 998 0
	movq	96(%rsp), %rdx
	movslq	%esi, %rax
	movq	120(%rsp), %rcx
	leaq	(%rdx,%rax,8), %r8
	movl	116(%rsp), %eax
	movq	%r8, 80(%rsp)
	movl	%esi, %r8d
	imull	%esi, %eax
	notl	%r8d
	addl	%r14d, %r8d
	andl	$7, %r8d
	cltq
	addq	72(%rsp), %rax
	leaq	(%rcx,%rax,8), %rdx
	.loc 1 1169 0
	movq	80(%rsp), %rax
	.loc 1 1168 0
	leal	1(%rsi), %ecx
	.loc 1 1169 0
	movsd	(%rax), %xmm1
	addq	$8, %rax
	mulsd	(%rdx), %xmm1
	addq	%rbx, %rdx
	.loc 1 1168 0
	cmpl	%ecx, %r14d
	.loc 1 1169 0
	addsd	%xmm0, %xmm1
.LVL1193:
	.loc 1 1168 0
	jle	.L3874
	testl	%r8d, %r8d
	je	.L3398
	cmpl	$1, %r8d
	je	.L3724
	cmpl	$2, %r8d
	je	.L3725
	cmpl	$3, %r8d
	je	.L3726
	cmpl	$4, %r8d
	je	.L3727
	cmpl	$5, %r8d
	je	.L3728
	cmpl	$6, %r8d
	je	.L3729
	.loc 1 1169 0
	movq	80(%rsp), %rax
	.loc 1 1168 0
	leal	2(%rsi), %ecx
	.loc 1 1169 0
	movsd	8(%rax), %xmm0
.LVL1194:
	addq	$16, %rax
	mulsd	(%rdx), %xmm0
	addq	%rbx, %rdx
	addsd	%xmm0, %xmm1
.LVL1195:
.L3729:
	movsd	(%rax), %xmm6
	.loc 1 1168 0
	addl	$1, %ecx
	addq	$8, %rax
	.loc 1 1169 0
	mulsd	(%rdx), %xmm6
	addq	%rbx, %rdx
	addsd	%xmm6, %xmm1
.L3728:
	movsd	(%rax), %xmm14
	.loc 1 1168 0
	addl	$1, %ecx
	addq	$8, %rax
	.loc 1 1169 0
	mulsd	(%rdx), %xmm14
	addq	%rbx, %rdx
	addsd	%xmm14, %xmm1
.L3727:
	movsd	(%rax), %xmm7
	.loc 1 1168 0
	addl	$1, %ecx
	addq	$8, %rax
	.loc 1 1169 0
	mulsd	(%rdx), %xmm7
	addq	%rbx, %rdx
	addsd	%xmm7, %xmm1
.L3726:
	movsd	(%rax), %xmm13
	.loc 1 1168 0
	addl	$1, %ecx
	addq	$8, %rax
	.loc 1 1169 0
	mulsd	(%rdx), %xmm13
	addq	%rbx, %rdx
	addsd	%xmm13, %xmm1
.L3725:
	movsd	(%rax), %xmm10
	.loc 1 1168 0
	addl	$1, %ecx
	addq	$8, %rax
	.loc 1 1169 0
	mulsd	(%rdx), %xmm10
	addq	%rbx, %rdx
	addsd	%xmm10, %xmm1
.L3724:
	movsd	(%rax), %xmm8
	.loc 1 1168 0
	addl	$1, %ecx
	addq	$8, %rax
	.loc 1 1169 0
	mulsd	(%rdx), %xmm8
	addq	%rbx, %rdx
	.loc 1 1168 0
	cmpl	%ecx, %r14d
	.loc 1 1169 0
	addsd	%xmm8, %xmm1
	.loc 1 1168 0
	jle	.L3874
.L3398:
	.loc 1 1169 0
	movsd	(%rax), %xmm9
	.loc 1 1168 0
	addl	$8, %ecx
	.loc 1 1169 0
	movsd	8(%rax), %xmm15
	mulsd	(%rdx), %xmm9
	addq	%rbx, %rdx
	mulsd	(%rdx), %xmm15
	addq	%rbx, %rdx
	movsd	16(%rax), %xmm12
	movsd	24(%rax), %xmm11
	mulsd	(%rdx), %xmm12
	addq	%rbx, %rdx
	mulsd	(%rdx), %xmm11
	addq	%rbx, %rdx
	addsd	%xmm9, %xmm1
	movsd	32(%rax), %xmm0
	movsd	40(%rax), %xmm6
	mulsd	(%rdx), %xmm0
	addq	%rbx, %rdx
	mulsd	(%rdx), %xmm6
	addq	%rbx, %rdx
	addsd	%xmm15, %xmm1
	movsd	48(%rax), %xmm14
	movsd	56(%rax), %xmm7
	addq	$64, %rax
	mulsd	(%rdx), %xmm14
	addq	%rbx, %rdx
	mulsd	(%rdx), %xmm7
	addq	%rbx, %rdx
	.loc 1 1168 0
	cmpl	%ecx, %r14d
	.loc 1 1169 0
	addsd	%xmm12, %xmm1
	addsd	%xmm11, %xmm1
	addsd	%xmm0, %xmm1
	addsd	%xmm6, %xmm1
	addsd	%xmm14, %xmm1
	addsd	%xmm7, %xmm1
	.loc 1 1168 0
	jg	.L3398
.L3874:
	.loc 1 1171 0
	subsd	%xmm5, %xmm1
.LVL1196:
.LBB873:
.LBB874:
	.loc 1 1278 0
	xorpd	%xmm13, %xmm13
	ucomisd	%xmm13, %xmm1
	jbe	.L3403
.LVL1197:
.L3402:
.LBE874:
.LBE873:
	.loc 1 1173 0
	movq	72(%rsp), %rsi
	movq	144(%rsp), %rdx
	addq	$8, %rdi
	mulsd	(%rdx,%rsi,8), %xmm1
.LVL1198:
	addq	$1, %rsi
	.loc 1 1166 0
	cmpl	%esi, 116(%rsp)
	movq	%rsi, 72(%rsp)
	.loc 1 1178 0
	addsd	%xmm1, %xmm2
.LVL1199:
	.loc 1 1179 0
	mulsd	%xmm1, %xmm1
.LVL1200:
	addsd	%xmm1, %xmm3
.LVL1201:
	.loc 1 1166 0
	jg	.L3397
	movl	244(%rsp), %ebp
	movl	116(%rsp), %r15d
	movsd	%xmm2, 160(%rsp)
	movsd	%xmm3, 168(%rsp)
.LVL1202:
.L3396:
	.loc 1 998 0
	addq	%r12, 184(%rsp)
.LVL1203:
	.loc 1 1134 0
	movq	184(%rsp), %rdi
	cmpq	%rdi, 384(%rsp)
	jg	.L3405
	movsd	160(%rsp), %xmm2
	movsd	168(%rsp), %xmm7
.LVL1204:
.L3381:
	.loc 1 1186 0
	movapd	%xmm2, %xmm3
	.loc 1 1184 0
	cvtsi2sdq	384(%rsp), %xmm10
.LVL1205:
	.loc 1 1186 0
	movapd	%xmm10, %xmm4
	mulsd	%xmm2, %xmm3
	subsd	.LC11(%rip), %xmm4
	divsd	%xmm10, %xmm3
	subsd	%xmm3, %xmm7
	movapd	%xmm7, %xmm0
	divsd	%xmm4, %xmm0
	sqrtsd	%xmm0, %xmm5
	ucomisd	%xmm5, %xmm5
	jp	.L3922
.LVL1206:
.L3406:
	sqrtsd	%xmm10, %xmm0
	ucomisd	%xmm0, %xmm0
	jp	.L3923
.L3408:
.LVL1207:
	.loc 1 1184 0
	divsd	%xmm10, %xmm2
	.loc 1 1189 0
	movq	248(%rsp), %rbx
	movl	152(%rsp), %eax
	.loc 1 1186 0
	divsd	%xmm0, %xmm5
.LVL1208:
	.loc 1 1189 0
	movsd	%xmm2, (%rbx)
	.loc 1 1190 0
	movsd	%xmm5, 8(%rbx)
.LVL1209:
	.loc 1 1193 0
	jmp	.L3370
.LVL1210:
	.p2align 4,,10
	.p2align 3
.L3403:
	.loc 1 1278 0
	movapd	%xmm4, %xmm1
	jmp	.L3402
.LVL1211:
.L3421:
	.loc 1 1159 0
	movl	%eax, 152(%rsp)
	jmp	.L3370
.LVL1212:
.L3418:
	.loc 1 1134 0
	xorpd	%xmm7, %xmm7
	movapd	%xmm7, %xmm2
	jmp	.L3381
.LVL1213:
.L3416:
	.loc 1 168 0
	movl	$1, %ebp
	jmp	.L3372
.LVL1214:
.L3923:
	.loc 1 1186 0
	movapd	%xmm10, %xmm0
	movsd	%xmm10, 32(%rsp)
	movsd	%xmm2, 48(%rsp)
	movsd	%xmm5, 16(%rsp)
	call	sqrt
.LVL1215:
	movsd	16(%rsp), %xmm5
	movsd	48(%rsp), %xmm2
	movsd	32(%rsp), %xmm10
	jmp	.L3408
.LVL1216:
.L3922:
	movsd	%xmm10, 32(%rsp)
	movsd	%xmm2, 48(%rsp)
	call	sqrt
.LVL1217:
	movsd	48(%rsp), %xmm2
	movapd	%xmm0, %xmm5
	movsd	32(%rsp), %xmm10
	jmp	.L3406
.LVL1218:
.L3413:
	.loc 1 1110 0
	xorl	%eax, %eax
.LVL1219:
	jmp	.L3350
.LVL1220:
.L3339:
.LBB875:
.LBB776:
.LBB770:
	.loc 1 1448 0
	movl	$.LC72, %edi
	call	_Z7nrerrorPKc
.LVL1221:
.L3338:
	.loc 1 1442 0
	movl	$.LC71, %edi
	call	_Z7nrerrorPKc
.LVL1222:
.L3332:
.LBE770:
.LBE776:
.LBE875:
.LBB876:
.LBB791:
.LBB786:
	.loc 1 1418 0
	movl	$.LC99, %edi
	call	_Z7nrerrorPKc
.LVL1223:
.LBE786:
.LBE791:
.LBE876:
.LBE881:
	.cfi_endproc
.LFE1079:
	.size	_Z21HJM_Swaption_BlockingPddddddiidS_PS_llii, .-_Z21HJM_Swaption_BlockingPddddddiidS_PS_llii
	.section	.rodata.str1.1
.LC103:
	.string	"all.cpp"
.LC104:
	.string	"iSuccess == 1"
	.text
	.p2align 4,,15
	.globl	_Z6workerPv
	.type	_Z6workerPv, @function
_Z6workerPv:
.LFB1074:
	.loc 1 559 0
	.cfi_startproc
.LVL1224:
	pushq	%r13
.LCFI196:
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
.LCFI197:
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
.LCFI198:
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
.LCFI199:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$56, %rsp
.LCFI200:
	.cfi_def_cfa_offset 96
.LBB882:
.LBB883:
	.loc 1 564 0
	movl	nSwaptions(%rip), %esi
.LBE883:
	.loc 1 560 0
	movl	(%rdi), %ecx
.LVL1225:
.LBB885:
	.loc 1 564 0
	movl	nThreads(%rip), %edi
.LVL1226:
	movl	%esi, %edx
	movl	%esi, %eax
	sarl	$31, %edx
	idivl	%edi
	cmpl	%edx, %ecx
	jge	.L3925
	.loc 1 567 0
	leal	1(%rcx), %ebx
	.loc 1 565 0
	addl	$1, %eax
.LVL1227:
	.loc 1 566 0
	movl	%ecx, %r13d
	imull	%eax, %r13d
.LVL1228:
	.loc 1 567 0
	imull	%eax, %ebx
.LVL1229:
.L3926:
.LBE885:
	.loc 1 576 0
	subl	$1, %edi
	.loc 1 577 0
	cmpl	%ecx, %edi
	cmovne	%ebx, %esi
.LVL1230:
.LBB886:
	.loc 1 579 0
	cmpl	%esi, %r13d
	jge	.L3934
.LBE886:
	.loc 1 559 0
	movslq	%r13d, %r12
	movq	swaptions(%rip), %r11
	notl	%r13d
.LVL1231:
	leaq	(%r12,%r12,2), %rbp
	addl	%esi, %r13d
.LVL1232:
	xorl	%ebx, %ebx
.LVL1233:
	addq	$1, %r13
	leaq	(%r12,%rbp,4), %rbp
	salq	$3, %rbp
.LVL1234:
	.p2align 4,,10
	.p2align 3
.L3930:
.LBB890:
.LBB887:
	.loc 1 585 0
	movslq	NUM_TRIALS(%rip), %r10
	.loc 1 584 0
	addq	%rbp, %r11
	.loc 1 559 0
	leaq	(%rbx,%r12), %r9
	.loc 1 585 0
	addq	swaption_seed(%rip), %r9
	movq	96(%r11), %r8
	leaq	32(%rsp), %rdi
	movq	88(%r11), %rcx
	movl	80(%r11), %edx
	movl	64(%r11), %esi
	movsd	72(%r11), %xmm5
	movsd	56(%r11), %xmm4
	movsd	48(%r11), %xmm3
	movsd	40(%r11), %xmm2
	movsd	32(%r11), %xmm1
	movsd	24(%r11), %xmm0
	movl	$0, 16(%rsp)
	movl	$16, 8(%rsp)
	movq	%r10, (%rsp)
	call	_Z21HJM_Swaption_BlockingPddddddiidS_PS_llii
.LVL1235:
	.loc 1 586 0
	cmpl	$1, %eax
	jne	.L3936
	.loc 1 587 0
	movq	swaptions(%rip), %r11
	addq	$1, %rbx
	movapd	32(%rsp), %xmm0
	leaq	(%r11,%rbp), %rcx
	addq	$104, %rbp
.LBE887:
	.loc 1 579 0
	cmpq	%r13, %rbx
.LBB888:
	.loc 1 587 0
	movlpd	%xmm0, 8(%rcx)
	movhpd	%xmm0, 16(%rcx)
.LBE888:
	.loc 1 579 0
	jne	.L3930
.LVL1236:
.L3934:
.LBE890:
.LBE882:
	.loc 1 592 0
	addq	$56, %rsp
.LCFI201:
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbx
.LCFI202:
	.cfi_def_cfa_offset 32
	popq	%rbp
.LCFI203:
	.cfi_def_cfa_offset 24
	popq	%r12
.LCFI204:
	.cfi_def_cfa_offset 16
	popq	%r13
.LCFI205:
	.cfi_def_cfa_offset 8
	ret
.LVL1237:
	.p2align 4,,10
	.p2align 3
.L3925:
.LCFI206:
	.cfi_restore_state
.LBB893:
.LBB891:
.LBB884:
	.loc 1 572 0
	movl	%ecx, %r9d
	.loc 1 571 0
	leal	1(%rax), %r8d
	.loc 1 572 0
	subl	%edx, %r9d
	movl	%r9d, %ebx
	movl	%r9d, %r13d
	.loc 1 573 0
	addl	$1, %ebx
	.loc 1 571 0
	imull	%edx, %r8d
.LVL1238:
	.loc 1 572 0
	imull	%eax, %r13d
	.loc 1 573 0
	imull	%eax, %ebx
	.loc 1 572 0
	addl	%r8d, %r13d
.LVL1239:
	.loc 1 573 0
	addl	%r8d, %ebx
.LVL1240:
	jmp	.L3926
.LVL1241:
.L3936:
.LBE884:
.LBE891:
.LBB892:
.LBB889:
	.loc 1 586 0 discriminator 1
	movl	$_ZZ6workerPvE19__PRETTY_FUNCTION__, %ecx
	movl	$586, %edx
	movl	$.LC103, %esi
	movl	$.LC104, %edi
	call	__assert_fail
.LVL1242:
.LBE889:
.LBE892:
.LBE893:
	.cfi_endproc
.LFE1074:
	.size	_Z6workerPv, .-_Z6workerPv
	.p2align 4,,15
	.globl	_Z6choldcPPdi
	.type	_Z6choldcPPdi, @function
_Z6choldcPPdi:
.LFB1083:
	.loc 1 1304 0
	.cfi_startproc
.LVL1243:
	pushq	%r15
.LCFI207:
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
.LCFI208:
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
.LCFI209:
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
.LCFI210:
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
.LCFI211:
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
.LCFI212:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp
.LCFI213:
	.cfi_def_cfa_offset 112
.LBB894:
	.loc 1 1315 0
	testl	%esi, %esi
.LBE894:
	.loc 1 1304 0
	movl	%esi, 44(%rsp)
.LBB895:
	.loc 1 1315 0
	jle	.L3975
	movl	$1, 32(%rsp)
	.loc 1 1319 0
	xorpd	%xmm2, %xmm2
	movl	32(%rsp), %eax
	.loc 1 1315 0
	movq	$-160, %r11
	movl	$8, %r15d
	xorl	%r14d, %r14d
.LVL1244:
.L3938:
	.loc 1 1303 0 discriminator 1
	movl	32(%rsp), %r12d
	subl	$10, %eax
.LBE895:
	movl	32(%rsp), %r13d
.LBB896:
	andl	$-8, %eax
.LBE896:
	movq	%r15, %rbp
.LBB897:
	subl	%eax, %r12d
	subl	$9, %r12d
.LVL1245:
	.p2align 4,,10
	.p2align 3
.L3948:
	.loc 1 1317 0
	movq	(%rdi,%r15), %rbx
	testl	%r14d, %r14d
	movsd	(%rbx,%rbp), %xmm1
.LVL1246:
	jle	.L3940
	cmpl	$9, 32(%rsp)
	movq	(%rdi,%rbp), %r10
	jle	.L3969
	.loc 1 1303 0
	leaq	(%rbx,%r11), %r8
	leaq	(%r10,%r11), %rsi
	movl	%r14d, %r9d
	subl	%r12d, %r9d
	.loc 1 1317 0
	leal	-8(%r14), %ecx
	movsd	160(%r8), %xmm0
	subl	$8, %r9d
	prefetcht0	(%r8)
	movsd	152(%r8), %xmm3
	shrl	$3, %r9d
	prefetcht0	(%rsi)
	mulsd	160(%rsi), %xmm0
	andl	$1, %r9d
	cmpl	%r12d, %ecx
	mulsd	152(%rsi), %xmm3
	leaq	-64(%r8), %rdx
	leaq	-64(%rsi), %rax
	movsd	144(%r8), %xmm4
	movsd	136(%r8), %xmm5
	mulsd	144(%rsi), %xmm4
	mulsd	136(%rsi), %xmm5
	subsd	%xmm0, %xmm1
.LVL1247:
	movsd	128(%r8), %xmm6
	movsd	120(%r8), %xmm7
	mulsd	128(%rsi), %xmm6
	mulsd	120(%rsi), %xmm7
	subsd	%xmm3, %xmm1
.LVL1248:
	movsd	112(%r8), %xmm8
	movsd	104(%r8), %xmm9
	mulsd	112(%rsi), %xmm8
	mulsd	104(%rsi), %xmm9
	subsd	%xmm4, %xmm1
.LVL1249:
	subsd	%xmm5, %xmm1
.LVL1250:
	subsd	%xmm6, %xmm1
.LVL1251:
	subsd	%xmm7, %xmm1
.LVL1252:
	subsd	%xmm8, %xmm1
.LVL1253:
	subsd	%xmm9, %xmm1
.LVL1254:
	je	.L3941
	testl	%r9d, %r9d
	je	.L3942
	movsd	160(%rdx), %xmm10
	leal	-16(%r14), %ecx
	prefetcht0	(%rdx)
	movsd	152(%rdx), %xmm11
	prefetcht0	(%rax)
	mulsd	160(%rax), %xmm10
	cmpl	%r12d, %ecx
	mulsd	152(%rax), %xmm11
	movsd	144(%rdx), %xmm12
	movsd	136(%rdx), %xmm13
	mulsd	144(%rax), %xmm12
	mulsd	136(%rax), %xmm13
	subsd	%xmm10, %xmm1
.LVL1255:
	movsd	128(%rdx), %xmm14
	movsd	120(%rdx), %xmm15
	mulsd	128(%rax), %xmm14
	mulsd	120(%rax), %xmm15
	subsd	%xmm11, %xmm1
	movsd	112(%rdx), %xmm0
	movsd	104(%rdx), %xmm3
	leaq	-128(%r8), %rdx
	mulsd	112(%rax), %xmm0
	mulsd	104(%rax), %xmm3
	leaq	-128(%rsi), %rax
	subsd	%xmm12, %xmm1
	subsd	%xmm13, %xmm1
	subsd	%xmm14, %xmm1
	subsd	%xmm15, %xmm1
	subsd	%xmm0, %xmm1
	subsd	%xmm3, %xmm1
.LVL1256:
	je	.L3941
.L3942:
	.loc 1 1317 0 is_stmt 0 discriminator 2
	movsd	160(%rdx), %xmm4
	leaq	-64(%rdx), %r8
	prefetcht0	(%rdx)
	movsd	152(%rdx), %xmm5
	leaq	-64(%rax), %rsi
	prefetcht0	(%rax)
	mulsd	160(%rax), %xmm4
	subl	$16, %ecx
	prefetcht0	(%r8)
	mulsd	152(%rax), %xmm5
	prefetcht0	(%rsi)
	movsd	144(%rdx), %xmm6
	movsd	136(%rdx), %xmm7
	mulsd	144(%rax), %xmm6
	mulsd	136(%rax), %xmm7
	subsd	%xmm4, %xmm1
.LVL1257:
	movsd	128(%rdx), %xmm8
	movsd	120(%rdx), %xmm9
	mulsd	128(%rax), %xmm8
	mulsd	120(%rax), %xmm9
	subsd	%xmm5, %xmm1
	movsd	112(%rdx), %xmm10
	movsd	104(%rdx), %xmm11
	mulsd	112(%rax), %xmm10
	mulsd	104(%rax), %xmm11
	subsd	%xmm6, %xmm1
	movsd	96(%rdx), %xmm12
	movsd	88(%rdx), %xmm13
	mulsd	96(%rax), %xmm12
	mulsd	88(%rax), %xmm13
	subsd	%xmm7, %xmm1
	movsd	80(%rdx), %xmm14
	movsd	72(%rdx), %xmm15
	mulsd	80(%rax), %xmm14
	mulsd	72(%rax), %xmm15
	subsd	%xmm8, %xmm1
	movsd	64(%rdx), %xmm0
	movsd	56(%rdx), %xmm3
	mulsd	64(%rax), %xmm0
	mulsd	56(%rax), %xmm3
	subsd	%xmm9, %xmm1
	movsd	48(%rdx), %xmm4
	movsd	40(%rdx), %xmm5
	addq	$-128, %rdx
	mulsd	48(%rax), %xmm4
	mulsd	40(%rax), %xmm5
	addq	$-128, %rax
	cmpl	%r12d, %ecx
	subsd	%xmm10, %xmm1
	subsd	%xmm11, %xmm1
	subsd	%xmm12, %xmm1
	subsd	%xmm13, %xmm1
	subsd	%xmm14, %xmm1
	subsd	%xmm15, %xmm1
	subsd	%xmm0, %xmm1
	subsd	%xmm3, %xmm1
	subsd	%xmm4, %xmm1
	subsd	%xmm5, %xmm1
.LVL1258:
	jne	.L3942
.L3941:
	.loc 1 1303 0 is_stmt 1
	movslq	%ecx, %r9
	leal	-1(%rcx), %edx
	movq	$-8, %rax
	salq	$3, %r9
	leaq	(%rbx,%r9), %rsi
	addq	%r9, %r10
	movl	%edx, %r8d
	andl	$7, %r8d
	.loc 1 1317 0
	testl	%edx, %edx
	movsd	(%rsi), %xmm6
	mulsd	(%r10), %xmm6
	subsd	%xmm6, %xmm1
.LVL1259:
	jle	.L3940
	testl	%r8d, %r8d
	je	.L3943
	cmpl	$1, %r8d
	je	.L4142
	cmpl	$2, %r8d
	je	.L4143
	cmpl	$3, %r8d
	je	.L4144
	cmpl	$4, %r8d
	je	.L4145
	cmpl	$5, %r8d
	je	.L4146
	cmpl	$6, %r8d
	je	.L4147
	movsd	-8(%rsi), %xmm7
	leal	-2(%rcx), %edx
	movq	$-16, %rax
	mulsd	-8(%r10), %xmm7
	subsd	%xmm7, %xmm1
.LVL1260:
.L4147:
	movsd	(%rsi,%rax), %xmm8
	subl	$1, %edx
	mulsd	(%r10,%rax), %xmm8
	subq	$8, %rax
	subsd	%xmm8, %xmm1
.LVL1261:
.L4146:
	movsd	(%rsi,%rax), %xmm9
	subl	$1, %edx
	mulsd	(%r10,%rax), %xmm9
	subq	$8, %rax
	subsd	%xmm9, %xmm1
.LVL1262:
.L4145:
	movsd	(%rsi,%rax), %xmm10
	subl	$1, %edx
	mulsd	(%r10,%rax), %xmm10
	subq	$8, %rax
	subsd	%xmm10, %xmm1
.LVL1263:
.L4144:
	movsd	(%rsi,%rax), %xmm11
	subl	$1, %edx
	mulsd	(%r10,%rax), %xmm11
	subq	$8, %rax
	subsd	%xmm11, %xmm1
.LVL1264:
.L4143:
	movsd	(%rsi,%rax), %xmm12
	subl	$1, %edx
	mulsd	(%r10,%rax), %xmm12
	subq	$8, %rax
	subsd	%xmm12, %xmm1
.LVL1265:
.L4142:
	movsd	(%rsi,%rax), %xmm13
	subl	$1, %edx
	mulsd	(%r10,%rax), %xmm13
	subq	$8, %rax
	testl	%edx, %edx
	subsd	%xmm13, %xmm1
.LVL1266:
	jle	.L3940
.L3943:
	movsd	(%rsi,%rax), %xmm14
	subl	$8, %edx
	movsd	-8(%rsi,%rax), %xmm15
	mulsd	(%r10,%rax), %xmm14
	mulsd	-8(%r10,%rax), %xmm15
	movsd	-16(%rsi,%rax), %xmm0
	movsd	-24(%rsi,%rax), %xmm3
	mulsd	-16(%r10,%rax), %xmm0
	mulsd	-24(%r10,%rax), %xmm3
	subsd	%xmm14, %xmm1
.LVL1267:
	movsd	-32(%rsi,%rax), %xmm4
	movsd	-40(%rsi,%rax), %xmm5
	mulsd	-32(%r10,%rax), %xmm4
	mulsd	-40(%r10,%rax), %xmm5
	subsd	%xmm15, %xmm1
	movsd	-48(%rsi,%rax), %xmm6
	movsd	-56(%rsi,%rax), %xmm7
	mulsd	-48(%r10,%rax), %xmm6
	mulsd	-56(%r10,%rax), %xmm7
	subq	$64, %rax
	testl	%edx, %edx
	subsd	%xmm0, %xmm1
	subsd	%xmm3, %xmm1
	subsd	%xmm4, %xmm1
	subsd	%xmm5, %xmm1
	subsd	%xmm6, %xmm1
	subsd	%xmm7, %xmm1
.LVL1268:
	jg	.L3943
.L3940:
	.loc 1 1318 0
	cmpl	%r13d, 32(%rsp)
	je	.L4210
	.loc 1 1323 0
	divsd	(%rbx,%r15), %xmm1
.LVL1269:
	movq	(%rdi,%rbp), %rcx
	movsd	%xmm1, (%rcx,%r15)
.L3947:
	.loc 1 1316 0
	addl	$1, %r13d
.LVL1270:
	addq	$8, %rbp
	cmpl	%r13d, 44(%rsp)
	jge	.L3948
.LVL1271:
	.loc 1 1315 0
	movl	32(%rsp), %eax
	addl	$1, %r14d
	addq	$8, %r15
	addq	$8, %r11
	addl	$1, %eax
.LVL1272:
	cmpl	%eax, 44(%rsp)
	movl	%eax, 32(%rsp)
	jge	.L3938
.LVL1273:
	.loc 1 1327 0 discriminator 1
	cmpl	$1, 44(%rsp)
	jle	.L3975
	movl	44(%rsp), %ecx
	.loc 1 1303 0
	movl	44(%rsp), %r14d
	movl	$8, %r15d
	movl	$1, %r13d
.LVL1274:
	.loc 1 1329 0
	xorpd	%xmm2, %xmm2
	subl	$1, %ecx
	.loc 1 1303 0
	subl	$6, %r14d
	jmp	.L4193
.LVL1275:
	.p2align 4,,10
	.p2align 3
.L3950:
	subl	$1, %ecx
	addq	$8, %r15
	.loc 1 1328 0
	movl	%r11d, %r13d
.LVL1276:
.L4193:
	leal	1(%r13), %r11d
.LVL1277:
	cmpl	%r11d, 44(%rsp)
	jl	.L3950
	movq	(%rdi,%r15), %r12
	.loc 1 1303 0
	movl	%ecx, %r9d
	leaq	(%r12,%r15), %rbp
	movq	%rbp, %r10
	movq	%rbp, 32(%rsp)
	addq	$8, %r10
	salq	$60, %r10
	shrq	$63, %r10
	cmpl	%r10d, %ecx
	cmovb	%ecx, %r10d
	cmpl	$6, %ecx
	cmova	%r10d, %r9d
	testl	%r9d, %r9d
	je	.L3971
	cmpl	$8, %r9d
	jbe	.L3972
	leal	-9(%r9), %esi
	leaq	240(%r12,%r15), %r8
	movl	$64, %r10d
	.loc 1 1328 0
	leal	9(%r13), %edx
	.loc 1 1303 0
	shrl	$3, %esi
	prefetcht0	(%r8)
	.loc 1 1329 0
	movq	$0, -232(%r8)
.LVL1278:
	.loc 1 1303 0
	leaq	1(%rsi), %rbp
	.loc 1 1329 0
	movq	$0, -224(%r8)
.LVL1279:
	movq	$0, -216(%r8)
.LVL1280:
	movq	$0, -208(%r8)
.LVL1281:
	movq	$0, -200(%r8)
.LVL1282:
	.loc 1 1303 0
	movl	$8, %esi
	salq	$6, %rbp
	.loc 1 1329 0
	movq	$0, -192(%r8)
.LVL1283:
	movq	$0, -184(%r8)
.LVL1284:
	leaq	-64(%rbp), %rbx
	movq	$0, -176(%r8)
	leaq	64(%r8), %rax
	shrq	$6, %rbx
	andl	$3, %ebx
	cmpq	%rbp, %r10
	je	.L3953
	testq	%rbx, %rbx
	je	.L3954
	cmpq	$1, %rbx
	je	.L4140
	cmpq	$2, %rbx
	je	.L4141
	prefetcht0	(%rax)
	movq	$0, -232(%rax)
.LVL1285:
	movq	$0, -224(%rax)
	movq	$0, -216(%rax)
	movq	$0, -208(%rax)
	.loc 1 1328 0
	leal	17(%r13), %edx
	.loc 1 1329 0
	movq	$0, -200(%rax)
	movq	$0, -192(%rax)
	movl	$128, %r10d
	movq	$0, -184(%rax)
	movq	$0, -176(%rax)
	leaq	128(%r8), %rax
.L4141:
	prefetcht0	(%rax)
	movq	$0, -232(%rax)
	movq	$0, -224(%rax)
	movq	$0, -216(%rax)
	movq	$0, -208(%rax)
	.loc 1 1328 0
	addl	$8, %edx
	.loc 1 1329 0
	movq	$0, -200(%rax)
	movq	$0, -192(%rax)
	addq	$64, %r10
	movq	$0, -184(%rax)
	movq	$0, -176(%rax)
	addq	$64, %rax
.L4140:
	.loc 1 1328 0
	addl	$8, %edx
	addq	$64, %r10
	prefetcht0	(%rax)
	.loc 1 1303 0
	leal	-1(%rdx), %esi
	.loc 1 1329 0
	movq	$0, -232(%rax)
	movq	$0, -224(%rax)
	movq	$0, -216(%rax)
	movq	$0, -208(%rax)
	movq	$0, -200(%rax)
	movq	$0, -192(%rax)
	.loc 1 1303 0
	subl	%r13d, %esi
	.loc 1 1329 0
	movq	$0, -184(%rax)
	movq	$0, -176(%rax)
	addq	$64, %rax
	cmpq	%rbp, %r10
	je	.L3953
.L3954:
	leaq	192(%rax), %rsi
	.loc 1 1328 0
	addl	$32, %edx
	leaq	64(%rax), %r8
	leaq	128(%rax), %rbx
	addq	$256, %r10
	prefetcht0	(%rax)
	prefetcht0	(%rsi)
	.loc 1 1303 0
	leal	-1(%rdx), %esi
	.loc 1 1329 0
	movq	$0, -232(%rax)
	movq	$0, -224(%rax)
	movq	$0, -216(%rax)
	prefetcht0	(%r8)
	movq	$0, -208(%rax)
	movq	$0, -200(%rax)
	.loc 1 1303 0
	subl	%r13d, %esi
	.loc 1 1329 0
	movq	$0, -192(%rax)
	movq	$0, -184(%rax)
	prefetcht0	(%rbx)
	movq	$0, -176(%rax)
	movq	$0, -168(%rax)
	movq	$0, -160(%rax)
	movq	$0, -152(%rax)
	movq	$0, -144(%rax)
	movq	$0, -136(%rax)
	movq	$0, -128(%rax)
	movq	$0, -120(%rax)
	movq	$0, -112(%rax)
	movq	$0, -104(%rax)
	movq	$0, -96(%rax)
	movq	$0, -88(%rax)
	movq	$0, -80(%rax)
	movq	$0, -72(%rax)
	movq	$0, -64(%rax)
	movq	$0, -56(%rax)
	movq	$0, -48(%rax)
	movq	$0, -40(%rax)
	movq	$0, -32(%rax)
	movq	$0, -24(%rax)
	movq	$0, -16(%rax)
	movq	$0, -8(%rax)
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	addq	$256, %rax
	cmpq	%rbp, %r10
	jne	.L3954
.L3953:
.LVL1286:
	movl	%esi, %r10d
	.loc 1 1303 0
	movslq	%edx, %r13
	leal	1(%rsi), %ebp
	notl	%r10d
	leaq	(%r12,%r13,8), %rbx
	leal	1(%rdx), %r8d
	addl	%r9d, %r10d
	andl	$7, %r10d
	cmpl	%ebp, %r9d
	.loc 1 1329 0
	movq	$0, (%rbx)
	leaq	8(%rbx), %rax
	ja	.L4211
.LVL1287:
.L4189:
	cmpl	%ecx, %r9d
	je	.L3956
.L3952:
	movl	%ecx, %r10d
	movl	%r9d, %esi
	subl	%r9d, %r10d
	movl	%r10d, %r9d
	shrl	%r9d
	movl	%r9d, %ebx
	addl	%ebx, %ebx
	je	.L3957
	movq	32(%rsp), %rdx
	cmpl	$4, %r9d
	.loc 1 1303 0
	leal	-3(%r9), %r13d
	leaq	8(%rdx,%rsi,8), %rax
	jbe	.L3973
	leal	-5(%r9), %esi
	prefetcht0	640(%rax)
	movl	$4, %ebp
	.loc 1 1329 0
	movapd	%xmm2, (%rax)
	shrl	$2, %esi
	movl	$4, %edx
	andl	$3, %esi
	movapd	%xmm2, 16(%rax)
	movapd	%xmm2, 32(%rax)
	movapd	%xmm2, 48(%rax)
	.loc 1 1303 0
	addq	$64, %rax
	cmpl	$5, %r13d
	jbe	.L3958
	testl	%esi, %esi
	je	.L3959
	cmpl	$1, %esi
	je	.L4132
	cmpl	$2, %esi
	.p2align 4,,3
	je	.L4133
	prefetcht0	640(%rax)
	.loc 1 1329 0
	movapd	%xmm2, (%rax)
	movl	$8, %edx
	movapd	%xmm2, 16(%rax)
	movapd	%xmm2, 32(%rax)
	movapd	%xmm2, 48(%rax)
	.loc 1 1303 0
	addq	$64, %rax
.L4133:
	prefetcht0	640(%rax)
	.loc 1 1329 0
	movapd	%xmm2, (%rax)
	addl	$4, %edx
	movapd	%xmm2, 16(%rax)
	movapd	%xmm2, 32(%rax)
	movapd	%xmm2, 48(%rax)
	.loc 1 1303 0
	addq	$64, %rax
.L4132:
	leal	5(%rdx), %esi
	leal	4(%rdx), %ebp
	prefetcht0	640(%rax)
	.loc 1 1329 0
	movapd	%xmm2, (%rax)
	movl	%ebp, %edx
	movapd	%xmm2, 16(%rax)
	movapd	%xmm2, 32(%rax)
	movapd	%xmm2, 48(%rax)
	.loc 1 1303 0
	addq	$64, %rax
	cmpl	%r13d, %esi
	jae	.L3958
.L3959:
	leal	17(%rdx), %esi
	leal	16(%rdx), %ebp
	prefetcht0	640(%rax)
	.loc 1 1329 0 discriminator 2
	movapd	%xmm2, (%rax)
	prefetcht0	704(%rax)
	prefetcht0	768(%rax)
	prefetcht0	832(%rax)
	movl	%ebp, %edx
	movapd	%xmm2, 16(%rax)
	movapd	%xmm2, 32(%rax)
	movapd	%xmm2, 48(%rax)
	movapd	%xmm2, 64(%rax)
	movapd	%xmm2, 80(%rax)
	movapd	%xmm2, 96(%rax)
	movapd	%xmm2, 112(%rax)
	movapd	%xmm2, 128(%rax)
	movapd	%xmm2, 144(%rax)
	movapd	%xmm2, 160(%rax)
	movapd	%xmm2, 176(%rax)
	movapd	%xmm2, 192(%rax)
	movapd	%xmm2, 208(%rax)
	movapd	%xmm2, 224(%rax)
	movapd	%xmm2, 240(%rax)
	.loc 1 1303 0 discriminator 2
	addq	$256, %rax
	cmpl	%r13d, %esi
	jb	.L3959
.L3958:
	movl	%ebp, %r13d
	leal	1(%rbp), %esi
	leaq	16(%rax), %rdx
	notl	%r13d
	addl	%r9d, %r13d
	andl	$7, %r13d
	cmpl	%esi, %r9d
	.loc 1 1329 0
	movapd	%xmm2, (%rax)
	ja	.L4212
.L4192:
	addl	%ebx, %r8d
	cmpl	%ebx, %r10d
	je	.L3956
.L3957:
	cmpl	%r8d, 44(%rsp)
	leal	1(%r8), %edx
	jl	.L3961
	cmpl	%r14d, %edx
	jge	.L3961
	movl	%r14d, %r9d
	.loc 1 1303 0
	movslq	%r8d, %rbp
	subl	%r8d, %r9d
	.loc 1 1328 0
	addl	$8, %r8d
	.loc 1 1303 0
	leaq	272(%r12,%rbp,8), %r13
	subl	$2, %r9d
	leal	1(%r8), %edx
	shrl	$3, %r9d
	prefetcht0	0(%r13)
	.loc 1 1329 0
	movq	$0, -272(%r13)
	andl	$3, %r9d
	cmpl	%edx, %r14d
	movq	$0, -264(%r13)
	movq	$0, -256(%r13)
	movq	$0, -248(%r13)
	leaq	64(%r13), %rax
	movq	$0, -240(%r13)
	movq	$0, -232(%r13)
	movq	$0, -224(%r13)
	movq	$0, -216(%r13)
	jle	.L3961
	testl	%r9d, %r9d
	je	.L3962
	cmpl	$1, %r9d
	je	.L4124
	cmpl	$2, %r9d
	je	.L4125
	prefetcht0	(%rax)
	movq	$0, -272(%rax)
	movq	$0, -264(%rax)
	movq	$0, -256(%rax)
	movq	$0, -248(%rax)
	.loc 1 1328 0
	addl	$8, %r8d
	.loc 1 1329 0
	movq	$0, -240(%rax)
	movq	$0, -232(%rax)
	movq	$0, -224(%rax)
	movq	$0, -216(%rax)
	leaq	128(%r13), %rax
.L4125:
	prefetcht0	(%rax)
	movq	$0, -272(%rax)
	movq	$0, -264(%rax)
	movq	$0, -256(%rax)
	movq	$0, -248(%rax)
	.loc 1 1328 0
	addl	$8, %r8d
	.loc 1 1329 0
	movq	$0, -240(%rax)
	movq	$0, -232(%rax)
	movq	$0, -224(%rax)
	movq	$0, -216(%rax)
	addq	$64, %rax
.L4124:
	.loc 1 1328 0
	addl	$8, %r8d
	prefetcht0	(%rax)
	.loc 1 1329 0
	movq	$0, -272(%rax)
	.loc 1 1303 0
	leal	1(%r8), %edx
	.loc 1 1329 0
	movq	$0, -264(%rax)
	movq	$0, -256(%rax)
	movq	$0, -248(%rax)
	movq	$0, -240(%rax)
	movq	$0, -232(%rax)
	movq	$0, -224(%rax)
	movq	$0, -216(%rax)
	addq	$64, %rax
	cmpl	%edx, %r14d
	jle	.L3961
.L3962:
	.loc 1 1328 0
	addl	$32, %r8d
	leaq	64(%rax), %rsi
	leaq	128(%rax), %rbx
	.loc 1 1303 0
	leal	1(%r8), %edx
	leaq	192(%rax), %r10
	prefetcht0	(%rax)
	.loc 1 1329 0
	movq	$0, -272(%rax)
	movq	$0, -264(%rax)
	prefetcht0	(%rsi)
	movq	$0, -256(%rax)
	movq	$0, -248(%rax)
	prefetcht0	(%rbx)
	movq	$0, -240(%rax)
	movq	$0, -232(%rax)
	prefetcht0	(%r10)
	movq	$0, -224(%rax)
	movq	$0, -216(%rax)
	movq	$0, -208(%rax)
	movq	$0, -200(%rax)
	movq	$0, -192(%rax)
	movq	$0, -184(%rax)
	movq	$0, -176(%rax)
	movq	$0, -168(%rax)
	movq	$0, -160(%rax)
	movq	$0, -152(%rax)
	movq	$0, -144(%rax)
	movq	$0, -136(%rax)
	movq	$0, -128(%rax)
	movq	$0, -120(%rax)
	movq	$0, -112(%rax)
	movq	$0, -104(%rax)
	movq	$0, -96(%rax)
	movq	$0, -88(%rax)
	movq	$0, -80(%rax)
	movq	$0, -72(%rax)
	movq	$0, -64(%rax)
	movq	$0, -56(%rax)
	movq	$0, -48(%rax)
	movq	$0, -40(%rax)
	movq	$0, -32(%rax)
	movq	$0, -24(%rax)
	addq	$256, %rax
	cmpl	%edx, %r14d
	jg	.L3962
.L3961:
	movl	44(%rsp), %ebp
	.loc 1 1303 0
	movslq	%r8d, %r8
	leaq	(%r12,%r8,8), %r12
	subl	%edx, %ebp
	addl	$1, %ebp
	andl	$7, %ebp
	je	.L3963
	.loc 1 1329 0
	movq	$0, (%r12)
.LVL1288:
	addq	$8, %r12
	.loc 1 1328 0
	cmpl	%edx, 44(%rsp)
	jge	.L4213
.LVL1289:
.L3956:
	subl	$1, %ecx
	addq	$8, %r15
	.loc 1 1327 0
	cmpl	44(%rsp), %r11d
	je	.L3975
	.loc 1 1328 0
	movl	%r11d, %r13d
	jmp	.L4193
.LVL1290:
	.p2align 4,,10
	.p2align 3
.L4210:
	.loc 1 1319 0
	ucomisd	%xmm1, %xmm2
	jae	.L3970
	.loc 1 1322 0
	sqrtsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm0
	jp	.L4214
.LVL1291:
.L3945:
	movsd	%xmm0, (%rbx,%r15)
	jmp	.L3947
.LVL1292:
	.p2align 4,,10
	.p2align 3
.L3969:
	.loc 1 1317 0
	movl	%r14d, %ecx
	jmp	.L3941
.L3970:
.LBE897:
	.loc 1 1332 0
	addq	$56, %rsp
.LCFI214:
	.cfi_remember_state
	.cfi_def_cfa_offset 56
.LBB898:
	.loc 1 1321 0
	xorl	%eax, %eax
.LBE898:
	.loc 1 1332 0
	popq	%rbx
.LCFI215:
	.cfi_def_cfa_offset 48
	popq	%rbp
.LCFI216:
	.cfi_def_cfa_offset 40
	popq	%r12
.LCFI217:
	.cfi_def_cfa_offset 32
	popq	%r13
.LCFI218:
	.cfi_def_cfa_offset 24
.LVL1293:
	popq	%r14
.LCFI219:
	.cfi_def_cfa_offset 16
	popq	%r15
.LCFI220:
	.cfi_def_cfa_offset 8
	ret
.LVL1294:
.L3975:
.LCFI221:
	.cfi_restore_state
	addq	$56, %rsp
.LCFI222:
	.cfi_remember_state
	.cfi_def_cfa_offset 56
.LBB899:
	.loc 1 1331 0
	movl	$1, %eax
.LBE899:
	.loc 1 1332 0
	popq	%rbx
.LCFI223:
	.cfi_def_cfa_offset 48
	popq	%rbp
.LCFI224:
	.cfi_def_cfa_offset 40
	popq	%r12
.LCFI225:
	.cfi_def_cfa_offset 32
	popq	%r13
.LCFI226:
	.cfi_def_cfa_offset 24
	popq	%r14
.LCFI227:
	.cfi_def_cfa_offset 16
	popq	%r15
.LCFI228:
	.cfi_def_cfa_offset 8
	ret
.L4212:
.LCFI229:
	.cfi_restore_state
	testl	%r13d, %r13d
	je	.L3964
	cmpl	$1, %r13d
	je	.L4126
	cmpl	$2, %r13d
	je	.L4127
	cmpl	$3, %r13d
	je	.L4128
	cmpl	$4, %r13d
	je	.L4129
	cmpl	$5, %r13d
	je	.L4130
	cmpl	$6, %r13d
	je	.L4131
.LBB900:
	.loc 1 1329 0
	movapd	%xmm2, (%rdx)
	leal	2(%rbp), %esi
	leaq	32(%rax), %rdx
.L4131:
	movapd	%xmm2, (%rdx)
	addl	$1, %esi
	addq	$16, %rdx
.L4130:
	movapd	%xmm2, (%rdx)
	addl	$1, %esi
	addq	$16, %rdx
.L4129:
	movapd	%xmm2, (%rdx)
	addl	$1, %esi
	addq	$16, %rdx
.L4128:
	movapd	%xmm2, (%rdx)
	addl	$1, %esi
	addq	$16, %rdx
.L4127:
	movapd	%xmm2, (%rdx)
	addl	$1, %esi
	addq	$16, %rdx
.L4126:
	addl	$1, %esi
	movapd	%xmm2, (%rdx)
	addq	$16, %rdx
	cmpl	%esi, %r9d
	jbe	.L4192
.L3964:
	addl	$8, %esi
	movapd	%xmm2, (%rdx)
	movapd	%xmm2, 16(%rdx)
	movapd	%xmm2, 32(%rdx)
	movapd	%xmm2, 48(%rdx)
	movapd	%xmm2, 64(%rdx)
	movapd	%xmm2, 80(%rdx)
	movapd	%xmm2, 96(%rdx)
	movapd	%xmm2, 112(%rdx)
	subq	$-128, %rdx
	cmpl	%esi, %r9d
	jbe	.L4192
	jmp	.L3964
.LVL1295:
	.p2align 4,,10
	.p2align 3
.L4213:
	addl	$1, %edx
.LVL1296:
	cmpl	$1, %ebp
	je	.L3963
	cmpl	$2, %ebp
	.p2align 4,,2
	je	.L4119
	cmpl	$3, %ebp
	je	.L4120
	cmpl	$4, %ebp
	.p2align 4,,2
	je	.L4121
	cmpl	$5, %ebp
	.p2align 4,,2
	je	.L4122
	cmpl	$6, %ebp
	.p2align 4,,2
	je	.L4123
	movq	$0, (%r12)
.LVL1297:
	addl	$1, %edx
.LVL1298:
	addq	$8, %r12
.LVL1299:
.L4123:
	movq	$0, (%r12)
.LVL1300:
	addl	$1, %edx
.LVL1301:
	addq	$8, %r12
.LVL1302:
.L4122:
	movq	$0, (%r12)
.LVL1303:
	addl	$1, %edx
.LVL1304:
	addq	$8, %r12
.LVL1305:
.L4121:
	movq	$0, (%r12)
.LVL1306:
	addl	$1, %edx
.LVL1307:
	addq	$8, %r12
.LVL1308:
.L4120:
	movq	$0, (%r12)
.LVL1309:
	addl	$1, %edx
.LVL1310:
	addq	$8, %r12
.LVL1311:
.L4119:
	movq	$0, (%r12)
.LVL1312:
	addl	$1, %edx
.LVL1313:
	addq	$8, %r12
.LVL1314:
.L3963:
	.loc 1 1328 0
	cmpl	%edx, 44(%rsp)
	.loc 1 1329 0
	movq	$0, (%r12)
.LVL1315:
	.loc 1 1328 0
	jl	.L3956
.L4215:
	.loc 1 1329 0
	movq	$0, 8(%r12)
	movq	$0, 16(%r12)
	addl	$8, %edx
.LVL1316:
	movq	$0, 24(%r12)
.LVL1317:
	movq	$0, 32(%r12)
	movq	$0, 40(%r12)
	movq	$0, 48(%r12)
	movq	$0, 56(%r12)
	addq	$64, %r12
	.loc 1 1328 0
	cmpl	%edx, 44(%rsp)
	.loc 1 1329 0
	movq	$0, (%r12)
.LVL1318:
	.loc 1 1328 0
	jl	.L3956
	jmp	.L4215
	.p2align 4,,10
	.p2align 3
.L4211:
	testl	%r10d, %r10d
	je	.L3955
	cmpl	$1, %r10d
	.p2align 4,,4
	je	.L4134
	cmpl	$2, %r10d
	je	.L4135
	cmpl	$3, %r10d
	je	.L4136
	cmpl	$4, %r10d
	je	.L4137
	cmpl	$5, %r10d
	je	.L4138
	cmpl	$6, %r10d
	je	.L4139
	leal	2(%rdx), %r8d
.LVL1319:
	leaq	16(%rbx), %rax
	.loc 1 1329 0
	movq	$0, 8(%rbx)
.L4139:
	movq	$0, (%rax)
	.loc 1 1328 0
	addl	$1, %r8d
	addq	$8, %rax
.L4138:
	.loc 1 1329 0
	movq	$0, (%rax)
	.loc 1 1328 0
	addl	$1, %r8d
	addq	$8, %rax
.L4137:
	.loc 1 1329 0
	movq	$0, (%rax)
	.loc 1 1328 0
	addl	$1, %r8d
	addq	$8, %rax
.L4136:
	.loc 1 1329 0
	movq	$0, (%rax)
	.loc 1 1328 0
	addl	$1, %r8d
	addq	$8, %rax
.L4135:
	.loc 1 1329 0
	movq	$0, (%rax)
	.loc 1 1328 0
	addl	$1, %r8d
	addq	$8, %rax
.L4134:
	addl	$1, %r8d
	.loc 1 1329 0
	movq	$0, (%rax)
	addq	$8, %rax
	.loc 1 1303 0
	leal	(%rsi,%r8), %r13d
	subl	%edx, %r13d
	cmpl	%r13d, %r9d
	jbe	.L4189
.L3955:
	.loc 1 1328 0
	addl	$8, %r8d
	.loc 1 1329 0
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	.loc 1 1303 0
	leal	(%rsi,%r8), %ebx
	.loc 1 1329 0
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	$0, 32(%rax)
	movq	$0, 40(%rax)
	subl	%edx, %ebx
	movq	$0, 48(%rax)
	movq	$0, 56(%rax)
	addq	$64, %rax
	cmpl	%ebx, %r9d
	jbe	.L4189
	jmp	.L3955
.L3973:
	.loc 1 1303 0
	xorl	%ebp, %ebp
	jmp	.L3958
.LVL1320:
.L3972:
	movl	%r11d, %edx
	xorl	%esi, %esi
	.p2align 4,,4
	jmp	.L3953
.L3971:
	movl	%r11d, %r8d
	jmp	.L3952
.LVL1321:
.L4214:
	.loc 1 1322 0
	movapd	%xmm1, %xmm0
	movq	%rdi, (%rsp)
	movsd	%xmm2, 16(%rsp)
	movq	%r11, 8(%rsp)
	call	sqrt
.LVL1322:
	movq	8(%rsp), %r11
	movsd	16(%rsp), %xmm2
	movq	(%rsp), %rdi
	jmp	.L3945
.LBE900:
	.cfi_endproc
.LFE1083:
	.size	_Z6choldcPPdi, .-_Z6choldcPPdi
	.section	.rodata.str1.8
	.align 8
.LC105:
	.string	"allocation failure in ivector()"
	.section	.rodata.str1.1
.LC106:
	.string	"gaussj: Singular Matrix-1"
.LC107:
	.string	"gaussj: Singular Matrix-2"
	.text
	.p2align 4,,15
	.globl	_Z6gaussjPPdiS0_i
	.type	_Z6gaussjPPdiS0_i, @function
_Z6gaussjPPdiS0_i:
.LFB1084:
	.loc 1 1335 0
	.cfi_startproc
.LVL1323:
	pushq	%r15
.LCFI230:
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15
	pushq	%r14
.LCFI231:
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
.LCFI232:
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
.LCFI233:
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%ecx, %r12d
	pushq	%rbp
.LCFI234:
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
.LCFI235:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%esi, %ebx
	subq	$200, %rsp
.LCFI236:
	.cfi_def_cfa_offset 256
	.loc 1 1335 0
	movq	%rdx, 40(%rsp)
.LBB917:
	.loc 1 1340 0
	movslq	%esi, %rdx
.LVL1324:
.LBB918:
.LBB919:
.LBB920:
	.loc 1 1398 0
	leaq	4(,%rdx,4), %rbp
.LBE920:
.LBE919:
.LBE918:
	.loc 1 1340 0
	movq	%rdx, 184(%rsp)
.LBB925:
.LBB923:
.LBB921:
	.loc 1 1398 0
	movq	%rbp, %rdi
.LVL1325:
	call	malloc
.LVL1326:
	.loc 1 1399 0
	testq	%rax, %rax
	.loc 1 1398 0
	movq	%rax, 144(%rsp)
.LVL1327:
	.loc 1 1399 0
	je	.L4218
.LVL1328:
.LBE921:
.LBE923:
.LBE925:
.LBB926:
.LBB927:
.LBB928:
	.loc 1 1398 0
	movq	%rbp, %rdi
	call	malloc
.LVL1329:
	.loc 1 1399 0
	testq	%rax, %rax
	.loc 1 1398 0
	movq	%rax, 152(%rsp)
.LVL1330:
	.loc 1 1399 0
	je	.L4218
.LVL1331:
.LBE928:
.LBE927:
.LBE926:
.LBB929:
.LBB930:
.LBB931:
	.loc 1 1398 0
	movq	%rbp, %rdi
	call	malloc
.LVL1332:
	.loc 1 1399 0
	testq	%rax, %rax
	.loc 1 1398 0
	movq	%rax, 80(%rsp)
.LVL1333:
	.loc 1 1399 0
	je	.L4218
.LVL1334:
.LBE931:
.LBE930:
.LBE929:
	.loc 1 1344 0 discriminator 1
	testl	%ebx, %ebx
	jle	.L4219
	.loc 1 1334 0
	movq	%rax, %r14
.LBE917:
	movl	%ebx, %esi
.LBB941:
	addq	$4, %r14
	movq	%r14, %rax
.LVL1335:
	andl	$15, %eax
	shrq	$2, %rax
	negq	%rax
	andl	$3, %eax
	cmpl	%eax, %ebx
	cmovb	%ebx, %eax
.LBE941:
	cmpl	$6, %ebx
	cmova	%eax, %esi
	testl	%esi, %esi
	je	.L4307
	cmpl	$16, %esi
.LBB942:
	leal	-15(%rsi), %edi
	jbe	.L4308
	movq	80(%rsp), %rcx
	leal	-17(%rsi), %r9d
	movq	80(%rsp), %r10
	.loc 1 1344 0
	movl	$17, %r11d
	.loc 1 1334 0
	movl	$16, %r8d
	shrl	$4, %r9d
	addq	$120, %rcx
	andl	$1, %r9d
	addq	$184, %r10
	cmpl	%edi, %r11d
	prefetcht0	(%rcx)
	.loc 1 1344 0
	movl	$0, -116(%rcx)
.LVL1336:
	movl	$0, -112(%rcx)
	movl	$0, -108(%rcx)
	movl	$0, -104(%rcx)
	movl	$0, -100(%rcx)
	movl	$0, -96(%rcx)
	movl	$0, -92(%rcx)
	movl	$0, -88(%rcx)
	movl	$0, -84(%rcx)
	movl	$0, -80(%rcx)
	movl	$0, -76(%rcx)
	movl	$0, -72(%rcx)
	movl	$0, -68(%rcx)
	movl	$0, -64(%rcx)
	movl	$0, -60(%rcx)
	movl	$0, -56(%rcx)
	jae	.L4222
	testl	%r9d, %r9d
	je	.L4223
	prefetcht0	(%r10)
	movl	$0, -116(%r10)
	movl	$0, -112(%r10)
	movl	$0, -108(%r10)
	movl	$0, -104(%r10)
	movl	$33, %r11d
	movl	$0, -100(%r10)
	movl	$0, -96(%r10)
	.loc 1 1334 0
	movl	$32, %r8d
	.loc 1 1344 0
	movl	$0, -92(%r10)
	movl	$0, -88(%r10)
	movl	$0, -84(%r10)
	movl	$0, -80(%r10)
	movl	$0, -76(%r10)
	movl	$0, -72(%r10)
	movl	$0, -68(%r10)
	movl	$0, -64(%r10)
	movl	$0, -60(%r10)
	movl	$0, -56(%r10)
	movq	80(%rsp), %r10
	addq	$248, %r10
	cmpl	%edi, %r11d
	jae	.L4222
.L4223:
	leaq	64(%r10), %r13
	addl	$32, %r11d
	movl	$0, -116(%r10)
	movl	$0, -112(%r10)
	movl	$0, -108(%r10)
	prefetcht0	(%r10)
	movl	$0, -104(%r10)
	movl	$0, -100(%r10)
	prefetcht0	0(%r13)
	movl	$0, -96(%r10)
	movl	$0, -92(%r10)
	.loc 1 1334 0
	leal	-1(%r11), %r8d
	.loc 1 1344 0
	movl	$0, -88(%r10)
	movl	$0, -84(%r10)
	movl	$0, -80(%r10)
	movl	$0, -76(%r10)
	movl	$0, -72(%r10)
	movl	$0, -68(%r10)
	movl	$0, -64(%r10)
	movl	$0, -60(%r10)
	movl	$0, -56(%r10)
	subq	$-128, %r10
	cmpl	%edi, %r11d
	movl	$0, -116(%r13)
	movl	$0, -112(%r13)
	movl	$0, -108(%r13)
	movl	$0, -104(%r13)
	movl	$0, -100(%r13)
	movl	$0, -96(%r13)
	movl	$0, -92(%r13)
	movl	$0, -88(%r13)
	movl	$0, -84(%r13)
	movl	$0, -80(%r13)
	movl	$0, -76(%r13)
	movl	$0, -72(%r13)
	movl	$0, -68(%r13)
	movl	$0, -64(%r13)
	movl	$0, -60(%r13)
	movl	$0, -56(%r13)
	jb	.L4223
.L4222:
.LVL1337:
	movl	%r11d, %eax
	.loc 1 1334 0
	movq	80(%rsp), %rdx
	movslq	%r11d, %rbp
	notl	%eax
	leal	1(%r8), %r9d
	subl	%r8d, %eax
	addl	%esi, %eax
	leaq	(%rdx,%rbp,4), %rcx
	leal	(%rax,%r11), %edi
	leal	1(%r11), %eax
	.loc 1 1344 0
	movl	$0, (%rcx)
	leaq	4(%rcx), %r10
	andl	$7, %edi
	cmpl	%r9d, %esi
	jbe	.L5064
	testl	%edi, %edi
	je	.L4224
	cmpl	$1, %edi
	je	.L4919
	cmpl	$2, %edi
	.p2align 4,,3
	je	.L4920
	cmpl	$3, %edi
	.p2align 4,,2
	je	.L4921
	cmpl	$4, %edi
	.p2align 4,,2
	je	.L4922
	cmpl	$5, %edi
	.p2align 4,,2
	je	.L4923
	cmpl	$6, %edi
	.p2align 4,,2
	je	.L4924
	movl	$0, (%r10)
	leal	2(%r11), %eax
.LVL1338:
	leaq	8(%rcx), %r10
.L4924:
	movl	$0, (%r10)
	addl	$1, %eax
	addq	$4, %r10
.L4923:
	movl	$0, (%r10)
	addl	$1, %eax
	addq	$4, %r10
.L4922:
	movl	$0, (%r10)
	addl	$1, %eax
	addq	$4, %r10
.L4921:
	movl	$0, (%r10)
	addl	$1, %eax
	addq	$4, %r10
.L4920:
	movl	$0, (%r10)
	addl	$1, %eax
	addq	$4, %r10
.L4919:
	addl	$1, %eax
	movl	$0, (%r10)
	addq	$4, %r10
	.loc 1 1334 0
	leal	(%r8,%rax), %r13d
	subl	%r11d, %r13d
	cmpl	%r13d, %esi
	jbe	.L5064
.L4224:
	.loc 1 1344 0
	addl	$8, %eax
	movl	$0, (%r10)
	movl	$0, 4(%r10)
	.loc 1 1334 0
	leal	(%r8,%rax), %ebp
	.loc 1 1344 0
	movl	$0, 8(%r10)
	movl	$0, 12(%r10)
	movl	$0, 16(%r10)
	movl	$0, 20(%r10)
	subl	%r11d, %ebp
	movl	$0, 24(%r10)
	movl	$0, 28(%r10)
	addq	$32, %r10
	cmpl	%ebp, %esi
	ja	.L4224
.L5064:
	cmpl	%esi, %ebx
	je	.L4225
.L4221:
	movl	%ebx, %r11d
	movl	%esi, %edx
	subl	%esi, %r11d
	movl	%r11d, %r8d
	shrl	$2, %r8d
	leal	0(,%r8,4), %r10d
	testl	%r10d, %r10d
	je	.L4226
	movq	80(%rsp), %rcx
	cmpl	$4, %r8d
	.loc 1 1334 0
	leal	-3(%r8), %edi
	leaq	4(%rcx,%rdx,4), %rdx
	jbe	.L4309
	.loc 1 1344 0
	pxor	%xmm0, %xmm0
	leal	-5(%r8), %r13d
	prefetcht0	640(%rdx)
	movl	$4, %r9d
	movl	$4, %ebp
	shrl	$2, %r13d
	andl	$3, %r13d
	movdqa	%xmm0, (%rdx)
	movdqa	%xmm0, 16(%rdx)
	movdqa	%xmm0, 32(%rdx)
	movdqa	%xmm0, 48(%rdx)
	.loc 1 1334 0
	addq	$64, %rdx
	cmpl	$5, %edi
	jbe	.L4227
	testl	%r13d, %r13d
	je	.L4228
	cmpl	$1, %r13d
	je	.L4917
	cmpl	$2, %r13d
	je	.L4918
	prefetcht0	640(%rdx)
	.loc 1 1344 0
	movdqa	%xmm0, (%rdx)
	movl	$8, %ebp
	movdqa	%xmm0, 16(%rdx)
	movdqa	%xmm0, 32(%rdx)
	movdqa	%xmm0, 48(%rdx)
	.loc 1 1334 0
	addq	$64, %rdx
.L4918:
	prefetcht0	640(%rdx)
	.loc 1 1344 0
	movdqa	%xmm0, (%rdx)
	addl	$4, %ebp
	movdqa	%xmm0, 16(%rdx)
	movdqa	%xmm0, 32(%rdx)
	movdqa	%xmm0, 48(%rdx)
	.loc 1 1334 0
	addq	$64, %rdx
.L4917:
	leal	5(%rbp), %esi
	leal	4(%rbp), %r9d
	prefetcht0	640(%rdx)
	.loc 1 1344 0
	movdqa	%xmm0, (%rdx)
	movl	%r9d, %ebp
	movdqa	%xmm0, 16(%rdx)
	movdqa	%xmm0, 32(%rdx)
	movdqa	%xmm0, 48(%rdx)
	.loc 1 1334 0
	addq	$64, %rdx
	cmpl	%edi, %esi
	jae	.L4227
.L4228:
	leal	17(%rbp), %ecx
	leal	16(%rbp), %r9d
	prefetcht0	640(%rdx)
	.loc 1 1344 0 discriminator 2
	movdqa	%xmm0, (%rdx)
	prefetcht0	704(%rdx)
	prefetcht0	768(%rdx)
	prefetcht0	832(%rdx)
	movl	%r9d, %ebp
	movdqa	%xmm0, 16(%rdx)
	movdqa	%xmm0, 32(%rdx)
	movdqa	%xmm0, 48(%rdx)
	movdqa	%xmm0, 64(%rdx)
	movdqa	%xmm0, 80(%rdx)
	movdqa	%xmm0, 96(%rdx)
	movdqa	%xmm0, 112(%rdx)
	movdqa	%xmm0, 128(%rdx)
	movdqa	%xmm0, 144(%rdx)
	movdqa	%xmm0, 160(%rdx)
	movdqa	%xmm0, 176(%rdx)
	movdqa	%xmm0, 192(%rdx)
	movdqa	%xmm0, 208(%rdx)
	movdqa	%xmm0, 224(%rdx)
	movdqa	%xmm0, 240(%rdx)
	.loc 1 1334 0 discriminator 2
	addq	$256, %rdx
	cmpl	%edi, %ecx
	jb	.L4228
.L4227:
	movl	%r9d, %edi
	.loc 1 1344 0
	pxor	%xmm1, %xmm1
	notl	%edi
	leal	1(%r9), %esi
	leaq	16(%rdx), %r13
	addl	%r8d, %edi
	andl	$7, %edi
	cmpl	%esi, %r8d
	movdqa	%xmm1, (%rdx)
	jbe	.L5066
	testl	%edi, %edi
	je	.L4233
	cmpl	$1, %edi
	je	.L4911
	cmpl	$2, %edi
	.p2align 4,,3
	je	.L4912
	cmpl	$3, %edi
	.p2align 4,,2
	je	.L4913
	cmpl	$4, %edi
	.p2align 4,,2
	je	.L4914
	cmpl	$5, %edi
	.p2align 4,,2
	je	.L4915
	cmpl	$6, %edi
	.p2align 4,,2
	je	.L4916
	movdqa	%xmm1, 0(%r13)
	leal	2(%r9), %esi
	leaq	32(%rdx), %r13
.L4916:
	movdqa	%xmm1, 0(%r13)
	addl	$1, %esi
	addq	$16, %r13
.L4915:
	movdqa	%xmm1, 0(%r13)
	addl	$1, %esi
	addq	$16, %r13
.L4914:
	movdqa	%xmm1, 0(%r13)
	addl	$1, %esi
	addq	$16, %r13
.L4913:
	movdqa	%xmm1, 0(%r13)
	addl	$1, %esi
	addq	$16, %r13
.L4912:
	movdqa	%xmm1, 0(%r13)
	addl	$1, %esi
	addq	$16, %r13
.L4911:
	addl	$1, %esi
	movdqa	%xmm1, 0(%r13)
	addq	$16, %r13
	cmpl	%esi, %r8d
	jbe	.L5066
.L4233:
	addl	$8, %esi
	movdqa	%xmm1, 0(%r13)
	movdqa	%xmm1, 16(%r13)
	movdqa	%xmm1, 32(%r13)
	movdqa	%xmm1, 48(%r13)
	movdqa	%xmm1, 64(%r13)
	movdqa	%xmm1, 80(%r13)
	movdqa	%xmm1, 96(%r13)
	movdqa	%xmm1, 112(%r13)
	subq	$-128, %r13
	cmpl	%esi, %r8d
	ja	.L4233
.L5066:
	addl	%r10d, %eax
	cmpl	%r10d, %r11d
	je	.L4225
.L4226:
	.loc 1 1334 0
	leal	-14(%rbx), %r9d
	leal	1(%rax), %ecx
	cmpl	%r9d, %ecx
	jge	.L4230
	cmpl	%eax, %ebx
	jl	.L4230
	movq	80(%rsp), %rdx
	movl	%r9d, %r8d
	movslq	%eax, %rbp
	subl	%eax, %r8d
	.loc 1 1344 0
	addl	$16, %eax
	subl	$2, %r8d
	.loc 1 1334 0
	leal	1(%rax), %ecx
	leaq	136(%rdx,%rbp,4), %rdi
	shrl	$4, %r8d
	andl	$1, %r8d
	cmpl	%ecx, %r9d
	prefetcht0	(%rdi)
	.loc 1 1344 0
	movl	$0, -136(%rdi)
	movl	$0, -132(%rdi)
	movl	$0, -128(%rdi)
	movl	$0, -124(%rdi)
	leaq	64(%rdi), %r13
	movl	$0, -120(%rdi)
	movl	$0, -116(%rdi)
	movl	$0, -112(%rdi)
	movl	$0, -108(%rdi)
	movl	$0, -104(%rdi)
	movl	$0, -100(%rdi)
	movl	$0, -96(%rdi)
	movl	$0, -92(%rdi)
	movl	$0, -88(%rdi)
	movl	$0, -84(%rdi)
	movl	$0, -80(%rdi)
	movl	$0, -76(%rdi)
	jle	.L4230
	testl	%r8d, %r8d
	je	.L4231
	addl	$16, %eax
	prefetcht0	0(%r13)
	movl	$0, -136(%r13)
	.loc 1 1334 0
	leal	1(%rax), %ecx
	.loc 1 1344 0
	movl	$0, -132(%r13)
	movl	$0, -128(%r13)
	movl	$0, -124(%r13)
	movl	$0, -120(%r13)
	cmpl	%ecx, %r9d
	movl	$0, -116(%r13)
	movl	$0, -112(%r13)
	movl	$0, -108(%r13)
	movl	$0, -104(%r13)
	movl	$0, -100(%r13)
	movl	$0, -96(%r13)
	movl	$0, -92(%r13)
	movl	$0, -88(%r13)
	movl	$0, -84(%r13)
	movl	$0, -80(%r13)
	movl	$0, -76(%r13)
	leaq	128(%rdi), %r13
	jle	.L4230
.L4231:
	addl	$32, %eax
	leaq	64(%r13), %rsi
	movl	$0, -136(%r13)
	.loc 1 1334 0
	leal	1(%rax), %ecx
	.loc 1 1344 0
	movl	$0, -132(%r13)
	movl	$0, -128(%r13)
	movl	$0, -124(%r13)
	movl	$0, -120(%r13)
	prefetcht0	0(%r13)
	movl	$0, -116(%r13)
	movl	$0, -112(%r13)
	prefetcht0	(%rsi)
	movl	$0, -108(%r13)
	movl	$0, -104(%r13)
	movl	$0, -100(%r13)
	movl	$0, -96(%r13)
	movl	$0, -92(%r13)
	movl	$0, -88(%r13)
	movl	$0, -84(%r13)
	movl	$0, -80(%r13)
	movl	$0, -76(%r13)
	subq	$-128, %r13
	cmpl	%ecx, %r9d
	movl	$0, -136(%rsi)
	movl	$0, -132(%rsi)
	movl	$0, -128(%rsi)
	movl	$0, -124(%rsi)
	movl	$0, -120(%rsi)
	movl	$0, -116(%rsi)
	movl	$0, -112(%rsi)
	movl	$0, -108(%rsi)
	movl	$0, -104(%rsi)
	movl	$0, -100(%rsi)
	movl	$0, -96(%rsi)
	movl	$0, -92(%rsi)
	movl	$0, -88(%rsi)
	movl	$0, -84(%rsi)
	movl	$0, -80(%rsi)
	movl	$0, -76(%rsi)
	jg	.L4231
.L4230:
	movl	%ebx, %r11d
	.loc 1 1334 0
	movq	80(%rsp), %r10
	cltq
	subl	%ecx, %r11d
	addl	$1, %r11d
	andl	$7, %r11d
	leaq	(%r10,%rax,4), %rax
	je	.L4232
	.loc 1 1344 0
	movl	$0, (%rax)
.LVL1339:
	addq	$4, %rax
	cmpl	%ecx, %ebx
	jl	.L4225
	addl	$1, %ecx
.LVL1340:
	cmpl	$1, %r11d
	je	.L4232
	cmpl	$2, %r11d
	je	.L4906
	cmpl	$3, %r11d
	je	.L4907
	cmpl	$4, %r11d
	je	.L4908
	cmpl	$5, %r11d
	je	.L4909
	cmpl	$6, %r11d
	je	.L4910
	movl	$0, (%rax)
.LVL1341:
	addl	$1, %ecx
.LVL1342:
	addq	$4, %rax
.LVL1343:
.L4910:
	movl	$0, (%rax)
.LVL1344:
	addl	$1, %ecx
.LVL1345:
	addq	$4, %rax
.LVL1346:
.L4909:
	movl	$0, (%rax)
.LVL1347:
	addl	$1, %ecx
.LVL1348:
	addq	$4, %rax
.LVL1349:
.L4908:
	movl	$0, (%rax)
.LVL1350:
	addl	$1, %ecx
.LVL1351:
	addq	$4, %rax
.LVL1352:
.L4907:
	movl	$0, (%rax)
.LVL1353:
	addl	$1, %ecx
.LVL1354:
	addq	$4, %rax
.LVL1355:
.L4906:
	movl	$0, (%rax)
.LVL1356:
	addl	$1, %ecx
.LVL1357:
	addq	$4, %rax
	jmp	.L4232
.LVL1358:
.L5149:
	movl	$0, 4(%rax)
	movl	$0, 8(%rax)
	addl	$8, %ecx
.LVL1359:
	movl	$0, 12(%rax)
.LVL1360:
	movl	$0, 16(%rax)
	movl	$0, 20(%rax)
	movl	$0, 24(%rax)
	movl	$0, 28(%rax)
	addq	$32, %rax
.L4232:
	cmpl	%ecx, %ebx
	movl	$0, (%rax)
.LVL1361:
	jge	.L5149
.LVL1362:
.L4225:
	movl	%ebx, %r8d
	movl	%r12d, %ecx
	.loc 1 1334 0
	leal	-1(%rbx), %r9d
	shrl	%r8d
	leal	-1(%r12), %edx
	leal	-6(%rbx), %r10d
	movl	%r8d, 160(%rsp)
	movl	160(%rsp), %r13d
	addl	%r8d, %r8d
	sete	94(%rsp)
	shrl	%ecx
	movl	%r8d, 76(%rsp)
	movl	%ecx, 140(%rsp)
	movl	140(%rsp), %esi
	addl	$1, %r8d
	subl	$5, %r13d
	xorpd	%xmm5, %xmm5
	shrl	$2, %r13d
	leaq	8(,%r9,8), %rbp
	leaq	8(,%rdx,8), %rdi
	salq	$6, %r13
	leal	-6(%r12), %eax
	movq	%r9, 176(%rsp)
	addq	$72, %r13
	addl	%ecx, %ecx
	movq	%rbp, 128(%rsp)
	sete	95(%rsp)
	subl	$5, %esi
	movq	%r13, 96(%rsp)
	shrl	$2, %esi
	movl	%ecx, 72(%rsp)
	movl	$-1, %r13d
	salq	$6, %rsi
	addl	$1, %ecx
	movq	%rdi, 120(%rsp)
	addq	$72, %rsi
.LBE942:
	movapd	%xmm5, %xmm6
.LBB943:
	.loc 1 1351 0
	movsd	.LC1(%rip), %xmm2
	movl	%r8d, 136(%rsp)
	.loc 1 1366 0
	movsd	.LC11(%rip), %xmm4
	.loc 1 1334 0
	movq	%rsi, 104(%rsp)
	movl	%ecx, 88(%rsp)
	movq	$0, 112(%rsp)
	movl	%r13d, %ebp
	movl	%r10d, 20(%rsp)
	movl	%eax, 16(%rsp)
	movl	%r12d, 60(%rsp)
.LVL1363:
	.p2align 4,,10
	.p2align 3
.L4235:
	movq	80(%rsp), %r9
.LBE943:
	.loc 1 1334 0 is_stmt 0 discriminator 1
	movapd	%xmm6, %xmm14
	xorl	%r12d, %r12d
	movl	$1, %r11d
.LVL1364:
	.p2align 4,,10
	.p2align 3
.L4241:
.LBB944:
	.loc 1 1348 0 is_stmt 1
	cmpl	$1, 4(%r9,%r12)
	je	.L4236
	.loc 1 1350 0
	movl	(%r14), %edx
	leal	-1(%rbx), %edi
	andl	$3, %edi
	testl	%edx, %edx
	jne	.L4695
	.loc 1 1351 0
	movq	8(%r15,%r12,2), %r8
	movsd	8(%r8), %xmm3
	andpd	%xmm2, %xmm3
	ucomisd	%xmm14, %xmm3
	jb	.L4696
	.loc 1 1352 0
	movapd	%xmm3, %xmm14
	.loc 1 1351 0
	movl	%r11d, %r13d
	movl	$1, %ebp
.L4696:
.LVL1365:
	.loc 1 1349 0
	cmpl	$2, %ebx
	movl	$2, %r10d
	leaq	4(%r14), %rax
	movl	$16, %ecx
	jl	.L4236
	testl	%edi, %edi
	je	.L4240
	cmpl	$1, %edi
	je	.L4904
	cmpl	$2, %edi
	.p2align 4,,3
	je	.L4905
	.loc 1 1350 0
	movl	4(%r14), %esi
	testl	%esi, %esi
	je	.L5084
	.loc 1 1356 0
	cmpl	$1, %esi
	jg	.L5083
.LVL1366:
.L4700:
	.loc 1 1349 0
	addl	$1, %r10d
	addq	$4, %rax
	addq	$8, %rcx
.L4905:
	.loc 1 1350 0
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L5085
	.loc 1 1356 0
	cmpl	$1, %edx
	jg	.L5083
.LVL1367:
.L4705:
	.loc 1 1349 0
	addl	$1, %r10d
	addq	$4, %rax
	addq	$8, %rcx
.L4904:
	.loc 1 1350 0
	movl	(%rax), %esi
	testl	%esi, %esi
	je	.L5086
	.loc 1 1356 0
	cmpl	$1, %esi
	jg	.L5083
.LVL1368:
.L4710:
	.loc 1 1349 0
	addl	$1, %r10d
	addq	$4, %rax
	addq	$8, %rcx
	cmpl	%r10d, %ebx
	jge	.L4240
	jmp	.L4236
	.p2align 4,,10
	.p2align 3
.L5150:
	.loc 1 1351 0
	movq	8(%r15,%r12,2), %r8
	movsd	(%r8,%rcx), %xmm10
	andpd	%xmm2, %xmm10
	ucomisd	%xmm14, %xmm10
	jb	.L4238
	.loc 1 1352 0
	movapd	%xmm10, %xmm14
.LVL1369:
	.loc 1 1351 0
	movl	%r11d, %r13d
	movl	%r10d, %ebp
.L4238:
.LVL1370:
	leaq	4(%rax), %rsi
	.loc 1 1350 0
	movl	4(%rax), %eax
	.loc 1 1349 0
	addl	$1, %r10d
	leaq	8(%rcx), %rdi
	.loc 1 1350 0
	testl	%eax, %eax
	jne	.L4714
	.loc 1 1351 0
	movq	8(%r15,%r12,2), %rdx
	movsd	8(%rdx,%rcx), %xmm11
	andpd	%xmm2, %xmm11
	ucomisd	%xmm14, %xmm11
	jb	.L4715
	.loc 1 1352 0
	movapd	%xmm11, %xmm14
.LVL1371:
	.loc 1 1351 0
	movl	%r11d, %r13d
	movl	%r10d, %ebp
.L4715:
.LVL1372:
	.loc 1 1350 0
	movl	4(%rsi), %r8d
	.loc 1 1349 0
	leal	1(%r10), %ecx
	.loc 1 1350 0
	testl	%r8d, %r8d
	je	.L5087
	.loc 1 1356 0
	cmpl	$1, %r8d
	jg	.L5083
.LVL1373:
.L4719:
	.loc 1 1350 0
	movl	8(%rsi), %ecx
	.loc 1 1349 0
	leal	2(%r10), %edx
	.loc 1 1350 0
	testl	%ecx, %ecx
	je	.L5088
	.loc 1 1356 0
	cmpl	$1, %ecx
	jg	.L5083
.LVL1374:
.L4723:
	.loc 1 1349 0
	addl	$3, %r10d
	leaq	12(%rsi), %rax
	leaq	24(%rdi), %rcx
	cmpl	%r10d, %ebx
	jl	.L4236
.L4240:
	.loc 1 1350 0
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L5150
	.loc 1 1356 0
	cmpl	$1, %edx
	jle	.L4238
.L5083:
	.loc 1 1356 0 is_stmt 0 discriminator 1
	movl	$.LC106, %edi
	call	_Z7nrerrorPKc
.LVL1375:
	.p2align 4,,10
	.p2align 3
.L5088:
	.loc 1 1351 0 is_stmt 1
	movq	8(%r15,%r12,2), %r8
	movsd	16(%r8,%rdi), %xmm13
	andpd	%xmm2, %xmm13
	ucomisd	%xmm14, %xmm13
	jb	.L4723
	.loc 1 1352 0
	movapd	%xmm13, %xmm14
.LVL1376:
	.loc 1 1351 0
	movl	%r11d, %r13d
	movl	%edx, %ebp
	jmp	.L4723
.LVL1377:
	.p2align 4,,10
	.p2align 3
.L5087:
	movq	8(%r15,%r12,2), %rax
	movsd	8(%rax,%rdi), %xmm12
	andpd	%xmm2, %xmm12
	ucomisd	%xmm14, %xmm12
	jb	.L4719
	.loc 1 1352 0
	movapd	%xmm12, %xmm14
.LVL1378:
	.loc 1 1351 0
	movl	%r11d, %r13d
	movl	%ecx, %ebp
	jmp	.L4719
.LVL1379:
	.p2align 4,,10
	.p2align 3
.L4714:
	.loc 1 1356 0
	cmpl	$1, %eax
	jle	.L4715
	movl	$.LC106, %edi
	call	_Z7nrerrorPKc
.LVL1380:
	.p2align 4,,10
	.p2align 3
.L4236:
	.loc 1 1347 0
	addl	$1, %r11d
.LVL1381:
	addq	$4, %r12
	cmpl	%r11d, %ebx
	jge	.L4241
	.loc 1 1358 0
	movq	80(%rsp), %r12
	movslq	%ebp, %rdi
	addl	$1, (%r12,%rdi,4)
	.loc 1 1359 0
	cmpl	%r13d, %ebp
	je	.L5151
	movq	128(%rsp), %rcx
	movslq	%r13d, %rsi
	movq	(%r15,%rdi,8), %r8
	movq	(%r15,%rsi,8), %r10
	movl	$8, %r12d
	leaq	0(,%rdi,8), %rdx
	subq	$8, %rcx
	.loc 1 1360 0
	movsd	8(%r8), %xmm0
	shrq	$3, %rcx
	movsd	8(%r10), %xmm15
.LVL1382:
	andl	$7, %ecx
	cmpq	128(%rsp), %r12
	movsd	%xmm0, 8(%r10)
	movq	%rdx, 32(%rsp)
	movq	%r8, 24(%rsp)
	movsd	%xmm15, 8(%r8)
.LVL1383:
	je	.L5069
	testq	%rcx, %rcx
	je	.L5132
	cmpq	$1, %rcx
	je	.L4897
	cmpq	$2, %rcx
	je	.L4898
	cmpq	$3, %rcx
	je	.L4899
	cmpq	$4, %rcx
	je	.L4900
	cmpq	$5, %rcx
	je	.L4901
	cmpq	$6, %rcx
	je	.L4902
	movq	24(%rsp), %rax
	movsd	16(%r10), %xmm3
.LVL1384:
	movl	$16, %r12d
	movsd	16(%rax), %xmm1
	movsd	%xmm1, 16(%r10)
	movsd	%xmm3, 16(%rax)
.L4902:
	movq	24(%rsp), %r11
.LVL1385:
	movsd	8(%r10,%r12), %xmm7
	movsd	8(%r11,%r12), %xmm8
	movsd	%xmm8, 8(%r10,%r12)
	movsd	%xmm7, 8(%r11,%r12)
	addq	$8, %r12
.L4901:
	movq	24(%rsp), %r9
	movsd	8(%r10,%r12), %xmm9
	movsd	8(%r9,%r12), %xmm10
	movsd	%xmm10, 8(%r10,%r12)
	movsd	%xmm9, 8(%r9,%r12)
	addq	$8, %r12
.L4900:
	movq	24(%rsp), %rdx
	movsd	8(%r10,%r12), %xmm11
	movsd	8(%rdx,%r12), %xmm12
	movsd	%xmm12, 8(%r10,%r12)
	movsd	%xmm11, 8(%rdx,%r12)
	addq	$8, %r12
.L4899:
	movq	24(%rsp), %r8
	movsd	8(%r10,%r12), %xmm13
	movsd	8(%r8,%r12), %xmm14
.LVL1386:
	movsd	%xmm14, 8(%r10,%r12)
	movsd	%xmm13, 8(%r8,%r12)
	addq	$8, %r12
.L4898:
	movq	24(%rsp), %rcx
	movsd	8(%r10,%r12), %xmm15
	movsd	8(%rcx,%r12), %xmm0
	movsd	%xmm0, 8(%r10,%r12)
	movsd	%xmm15, 8(%rcx,%r12)
	addq	$8, %r12
.L4897:
	movq	24(%rsp), %rax
	movsd	8(%r10,%r12), %xmm3
	movsd	8(%rax,%r12), %xmm1
	movsd	%xmm1, 8(%r10,%r12)
	movsd	%xmm3, 8(%rax,%r12)
	addq	$8, %r12
	cmpq	128(%rsp), %r12
	je	.L5069
.L4244:
	.loc 1 1360 0 is_stmt 0 discriminator 2
	movsd	8(%r10,%r12), %xmm7
	movsd	8(%rax,%r12), %xmm8
	movsd	%xmm8, 8(%r10,%r12)
	movsd	%xmm7, 8(%rax,%r12)
	movsd	16(%rax,%r12), %xmm10
	movsd	16(%r10,%r12), %xmm9
	movsd	%xmm10, 16(%r10,%r12)
	movsd	%xmm9, 16(%rax,%r12)
	movsd	24(%rax,%r12), %xmm12
	movsd	24(%r10,%r12), %xmm11
	movsd	%xmm12, 24(%r10,%r12)
	movsd	%xmm11, 24(%rax,%r12)
	movsd	32(%rax,%r12), %xmm14
	movsd	32(%r10,%r12), %xmm13
	movsd	%xmm14, 32(%r10,%r12)
	movsd	%xmm13, 32(%rax,%r12)
	movsd	40(%rax,%r12), %xmm0
	movsd	40(%r10,%r12), %xmm15
	movsd	%xmm0, 40(%r10,%r12)
	movsd	%xmm15, 40(%rax,%r12)
	movsd	48(%rax,%r12), %xmm1
	movsd	48(%r10,%r12), %xmm3
	movsd	%xmm1, 48(%r10,%r12)
	movsd	%xmm3, 48(%rax,%r12)
	movsd	56(%rax,%r12), %xmm8
	movsd	56(%r10,%r12), %xmm7
	movsd	%xmm8, 56(%r10,%r12)
	movsd	%xmm7, 56(%rax,%r12)
	movsd	64(%rax,%r12), %xmm10
	movsd	64(%r10,%r12), %xmm9
	movsd	%xmm10, 64(%r10,%r12)
	movsd	%xmm9, 64(%rax,%r12)
	addq	$64, %r12
	cmpq	128(%rsp), %r12
	jne	.L4244
.L5069:
.LVL1387:
	.loc 1 1361 0 is_stmt 1 discriminator 1
	movl	60(%rsp), %r10d
	testl	%r10d, %r10d
	jle	.L4243
	movq	120(%rsp), %r9
	movq	40(%rsp), %r12
	movl	$8, %edx
	subq	$8, %r9
	movq	(%r12,%rsi,8), %rsi
	movq	(%r12,%rdi,8), %rdi
	shrq	$3, %r9
	andl	$7, %r9d
	.loc 1 1361 0 is_stmt 0
	cmpq	120(%rsp), %rdx
	movsd	8(%rsi), %xmm11
.LVL1388:
	movsd	8(%rdi), %xmm12
	movsd	%xmm12, 8(%rsi)
	movsd	%xmm11, 8(%rdi)
.LVL1389:
	je	.L4243
	testq	%r9, %r9
	je	.L4245
	cmpq	$1, %r9
	je	.L4891
	cmpq	$2, %r9
	je	.L4892
	cmpq	$3, %r9
	je	.L4893
	cmpq	$4, %r9
	je	.L4894
	cmpq	$5, %r9
	je	.L4895
	cmpq	$6, %r9
	je	.L4896
	movsd	16(%rsi), %xmm13
.LVL1390:
	movl	$16, %edx
	movsd	16(%rdi), %xmm14
	movsd	%xmm14, 16(%rsi)
	movsd	%xmm13, 16(%rdi)
.L4896:
	movsd	8(%rsi,%rdx), %xmm15
	movsd	8(%rdi,%rdx), %xmm0
	movsd	%xmm0, 8(%rsi,%rdx)
	movsd	%xmm15, 8(%rdi,%rdx)
	addq	$8, %rdx
.L4895:
	movsd	8(%rsi,%rdx), %xmm3
	movsd	8(%rdi,%rdx), %xmm1
	movsd	%xmm1, 8(%rsi,%rdx)
	movsd	%xmm3, 8(%rdi,%rdx)
	addq	$8, %rdx
.L4894:
	movsd	8(%rsi,%rdx), %xmm7
	movsd	8(%rdi,%rdx), %xmm8
	movsd	%xmm8, 8(%rsi,%rdx)
	movsd	%xmm7, 8(%rdi,%rdx)
	addq	$8, %rdx
.L4893:
	movsd	8(%rsi,%rdx), %xmm9
	movsd	8(%rdi,%rdx), %xmm10
	movsd	%xmm10, 8(%rsi,%rdx)
	movsd	%xmm9, 8(%rdi,%rdx)
	addq	$8, %rdx
.L4892:
	movsd	8(%rsi,%rdx), %xmm11
	movsd	8(%rdi,%rdx), %xmm12
	movsd	%xmm12, 8(%rsi,%rdx)
	movsd	%xmm11, 8(%rdi,%rdx)
	addq	$8, %rdx
.L4891:
	movsd	8(%rsi,%rdx), %xmm13
	movsd	8(%rdi,%rdx), %xmm14
	movsd	%xmm14, 8(%rsi,%rdx)
	movsd	%xmm13, 8(%rdi,%rdx)
	addq	$8, %rdx
	cmpq	120(%rsp), %rdx
	je	.L4243
.L4245:
	.loc 1 1361 0 discriminator 2
	movsd	8(%rsi,%rdx), %xmm15
	movsd	8(%rdi,%rdx), %xmm0
	movsd	%xmm0, 8(%rsi,%rdx)
	movsd	%xmm15, 8(%rdi,%rdx)
	movsd	16(%rdi,%rdx), %xmm1
	movsd	16(%rsi,%rdx), %xmm3
	movsd	%xmm1, 16(%rsi,%rdx)
	movsd	%xmm3, 16(%rdi,%rdx)
	movsd	24(%rdi,%rdx), %xmm8
	movsd	24(%rsi,%rdx), %xmm7
	movsd	%xmm8, 24(%rsi,%rdx)
	movsd	%xmm7, 24(%rdi,%rdx)
	movsd	32(%rdi,%rdx), %xmm10
	movsd	32(%rsi,%rdx), %xmm9
	movsd	%xmm10, 32(%rsi,%rdx)
	movsd	%xmm9, 32(%rdi,%rdx)
	movsd	40(%rdi,%rdx), %xmm12
	movsd	40(%rsi,%rdx), %xmm11
	movsd	%xmm12, 40(%rsi,%rdx)
	movsd	%xmm11, 40(%rdi,%rdx)
	movsd	48(%rdi,%rdx), %xmm14
	movsd	48(%rsi,%rdx), %xmm13
	movsd	%xmm14, 48(%rsi,%rdx)
	movsd	%xmm13, 48(%rdi,%rdx)
	movsd	56(%rdi,%rdx), %xmm0
	movsd	56(%rsi,%rdx), %xmm15
	movsd	%xmm0, 56(%rsi,%rdx)
	movsd	%xmm15, 56(%rdi,%rdx)
	movsd	64(%rdi,%rdx), %xmm1
	movsd	64(%rsi,%rdx), %xmm3
	movsd	%xmm1, 64(%rsi,%rdx)
	movsd	%xmm3, 64(%rdi,%rdx)
	addq	$64, %rdx
	cmpq	120(%rsp), %rdx
	jne	.L4245
.L4243:
	.loc 1 1365 0 is_stmt 1
	movq	24(%rsp), %r10
	addq	32(%rsp), %r10
	.loc 1 1363 0
	movq	112(%rsp), %r8
	movq	152(%rsp), %rcx
	.loc 1 1364 0
	movq	144(%rsp), %rax
	.loc 1 1365 0
	movsd	(%r10), %xmm7
	.loc 1 1363 0
	movl	%r13d, 4(%rcx,%r8,4)
	.loc 1 1364 0
	movl	%ebp, 4(%rax,%r8,4)
	.loc 1 1365 0
	ucomisd	%xmm5, %xmm7
	jnp	.L5152
.L4246:
	.loc 1 1366 0
	movapd	%xmm4, %xmm8
	movq	24(%rsp), %r8
	.loc 1 1334 0
	movl	%ebx, %esi
	.loc 1 1367 0
	movsd	%xmm4, (%r10)
	.loc 1 1366 0
	divsd	%xmm7, %xmm8
	addq	$8, %r8
	.loc 1 1334 0
	movq	%r8, %r12
	salq	$60, %r12
	shrq	$63, %r12
	cmpl	%r12d, %ebx
	cmovb	%ebx, %r12d
	cmpl	$3, %ebx
	cmova	%r12d, %esi
	testl	%esi, %esi
	.loc 1 1366 0
	movapd	%xmm8, %xmm0
.LVL1391:
	je	.L4311
	cmpl	$8, %esi
	.loc 1 1334 0
	leal	-7(%rsi), %r11d
	jbe	.L4312
	movq	24(%rsp), %rdi
	leal	-9(%rsi), %edx
	movq	24(%rsp), %rax
	.loc 1 1368 0
	movl	$9, %ecx
	.loc 1 1334 0
	movl	$8, %r9d
	shrl	$3, %edx
	addq	$192, %rdi
	andl	$1, %edx
	addq	$256, %rax
	.loc 1 1368 0
	movsd	-184(%rdi), %xmm9
	cmpl	%r11d, %ecx
	prefetcht0	(%rdi)
	movsd	-176(%rdi), %xmm10
	movsd	-168(%rdi), %xmm11
	movsd	-160(%rdi), %xmm12
	movsd	-152(%rdi), %xmm13
	movsd	-144(%rdi), %xmm14
	movsd	-136(%rdi), %xmm15
	movsd	-128(%rdi), %xmm3
	mulsd	%xmm8, %xmm9
	mulsd	%xmm8, %xmm10
	mulsd	%xmm8, %xmm11
	mulsd	%xmm8, %xmm12
	mulsd	%xmm8, %xmm13
	movsd	%xmm9, -184(%rdi)
.LVL1392:
	mulsd	%xmm8, %xmm14
	movsd	%xmm10, -176(%rdi)
	mulsd	%xmm8, %xmm15
	movsd	%xmm11, -168(%rdi)
	mulsd	%xmm8, %xmm3
	movsd	%xmm12, -160(%rdi)
	movsd	%xmm13, -152(%rdi)
	movsd	%xmm14, -144(%rdi)
	movsd	%xmm15, -136(%rdi)
	movsd	%xmm3, -128(%rdi)
	jae	.L4250
	testl	%edx, %edx
	je	.L4251
	movsd	-184(%rax), %xmm1
	prefetcht0	(%rax)
	movl	$17, %ecx
	movsd	-176(%rax), %xmm7
	.loc 1 1334 0
	movl	$16, %r9d
	.loc 1 1368 0
	movsd	-160(%rax), %xmm9
	movsd	-152(%rax), %xmm10
	movsd	-144(%rax), %xmm11
	movsd	-136(%rax), %xmm12
	movsd	-128(%rax), %xmm13
	mulsd	%xmm8, %xmm1
	mulsd	%xmm8, %xmm7
	movsd	-168(%rax), %xmm8
	mulsd	%xmm0, %xmm9
	mulsd	%xmm0, %xmm8
	movsd	%xmm1, -184(%rax)
	mulsd	%xmm0, %xmm10
	movsd	%xmm7, -176(%rax)
	mulsd	%xmm0, %xmm11
	mulsd	%xmm0, %xmm12
	movsd	%xmm9, -160(%rax)
	mulsd	%xmm0, %xmm13
	movsd	%xmm8, -168(%rax)
	movsd	%xmm10, -152(%rax)
	movsd	%xmm11, -144(%rax)
	movsd	%xmm12, -136(%rax)
	movsd	%xmm13, -128(%rax)
	movq	24(%rsp), %rax
	addq	$320, %rax
	cmpl	%r11d, %ecx
	jae	.L4250
.L4251:
	movsd	-184(%rax), %xmm14
	leaq	64(%rax), %r10
	prefetcht0	(%rax)
	movsd	-176(%rax), %xmm15
	addl	$16, %ecx
	movsd	-168(%rax), %xmm3
	prefetcht0	(%r10)
	.loc 1 1334 0
	leal	-1(%rcx), %r9d
	.loc 1 1368 0
	movsd	-160(%rax), %xmm1
	movsd	-152(%rax), %xmm7
	movsd	-144(%rax), %xmm8
	movsd	-136(%rax), %xmm9
	movsd	-128(%rax), %xmm10
	mulsd	%xmm0, %xmm14
	mulsd	%xmm0, %xmm15
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm7
	movsd	%xmm14, -184(%rax)
	mulsd	%xmm0, %xmm8
	movsd	%xmm15, -176(%rax)
	mulsd	%xmm0, %xmm9
	movsd	%xmm3, -168(%rax)
	mulsd	%xmm0, %xmm10
	movsd	%xmm1, -160(%rax)
	movsd	%xmm7, -152(%rax)
	movsd	%xmm8, -144(%rax)
	movsd	%xmm9, -136(%rax)
	movsd	%xmm10, -128(%rax)
	subq	$-128, %rax
	cmpl	%r11d, %ecx
	movsd	-184(%r10), %xmm11
	movsd	-176(%r10), %xmm12
	movsd	-168(%r10), %xmm13
	movsd	-160(%r10), %xmm14
	movsd	-152(%r10), %xmm15
	movsd	-144(%r10), %xmm3
	movsd	-136(%r10), %xmm1
	movsd	-128(%r10), %xmm7
	mulsd	%xmm0, %xmm11
	mulsd	%xmm0, %xmm12
	mulsd	%xmm0, %xmm13
	mulsd	%xmm0, %xmm14
	mulsd	%xmm0, %xmm15
	movsd	%xmm11, -184(%r10)
	mulsd	%xmm0, %xmm3
	movsd	%xmm12, -176(%r10)
	mulsd	%xmm0, %xmm1
	movsd	%xmm13, -168(%r10)
	mulsd	%xmm0, %xmm7
	movsd	%xmm14, -160(%r10)
	movsd	%xmm15, -152(%r10)
	movsd	%xmm3, -144(%r10)
	movsd	%xmm1, -136(%r10)
	movsd	%xmm7, -128(%r10)
	jb	.L4251
.L4250:
.LVL1393:
	.loc 1 1334 0
	movq	24(%rsp), %r11
	movslq	%ecx, %r12
	movl	%r9d, %edi
	notl	%edi
	leal	1(%r9), %edx
	leaq	(%r11,%r12,8), %r10
	leal	(%rdi,%rsi), %r12d
	leal	1(%rcx), %edi
	.loc 1 1368 0
	movsd	(%r10), %xmm8
	andl	$7, %r12d
	cmpl	%edx, %esi
	leaq	8(%r10), %rax
	mulsd	%xmm0, %xmm8
	movsd	%xmm8, (%r10)
	jbe	.L5070
	testl	%r12d, %r12d
	je	.L4252
	cmpl	$1, %r12d
	je	.L4885
	cmpl	$2, %r12d
	je	.L4886
	cmpl	$3, %r12d
	je	.L4887
	cmpl	$4, %r12d
	je	.L4888
	cmpl	$5, %r12d
	je	.L4889
	cmpl	$6, %r12d
	je	.L4890
	movsd	8(%r10), %xmm9
	leal	2(%rcx), %edi
.LVL1394:
	leaq	16(%r10), %rax
	mulsd	%xmm0, %xmm9
	movsd	%xmm9, 8(%r10)
.L4890:
	movsd	(%rax), %xmm10
	addl	$1, %edi
	mulsd	%xmm0, %xmm10
	movsd	%xmm10, (%rax)
	addq	$8, %rax
.L4889:
	movsd	(%rax), %xmm11
	addl	$1, %edi
	mulsd	%xmm0, %xmm11
	movsd	%xmm11, (%rax)
	addq	$8, %rax
.L4888:
	movsd	(%rax), %xmm12
	addl	$1, %edi
	mulsd	%xmm0, %xmm12
	movsd	%xmm12, (%rax)
	addq	$8, %rax
.L4887:
	movsd	(%rax), %xmm13
	addl	$1, %edi
	mulsd	%xmm0, %xmm13
	movsd	%xmm13, (%rax)
	addq	$8, %rax
.L4886:
	movsd	(%rax), %xmm14
	addl	$1, %edi
	mulsd	%xmm0, %xmm14
	movsd	%xmm14, (%rax)
	addq	$8, %rax
.L4885:
	movsd	(%rax), %xmm15
	addl	$1, %edi
	.loc 1 1334 0
	leal	(%r9,%rdi), %r11d
	.loc 1 1368 0
	mulsd	%xmm0, %xmm15
	subl	%ecx, %r11d
	movsd	%xmm15, (%rax)
	addq	$8, %rax
	cmpl	%r11d, %esi
	jbe	.L5070
.L4252:
	movsd	(%rax), %xmm3
	addl	$8, %edi
	movsd	8(%rax), %xmm1
	.loc 1 1334 0
	leal	(%r9,%rdi), %r10d
	.loc 1 1368 0
	movsd	16(%rax), %xmm7
	movsd	24(%rax), %xmm8
	subl	%ecx, %r10d
	movsd	32(%rax), %xmm9
	movsd	40(%rax), %xmm10
	movsd	48(%rax), %xmm11
	movsd	56(%rax), %xmm12
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm7
	mulsd	%xmm0, %xmm8
	mulsd	%xmm0, %xmm9
	movsd	%xmm3, (%rax)
	mulsd	%xmm0, %xmm10
	movsd	%xmm1, 8(%rax)
	mulsd	%xmm0, %xmm11
	movsd	%xmm7, 16(%rax)
	mulsd	%xmm0, %xmm12
	movsd	%xmm8, 24(%rax)
	movsd	%xmm9, 32(%rax)
	movsd	%xmm10, 40(%rax)
	movsd	%xmm11, 48(%rax)
	movsd	%xmm12, 56(%rax)
	addq	$64, %rax
	cmpl	%r10d, %esi
	ja	.L4252
.L5070:
	cmpl	%ebx, %esi
	je	.L4253
.L4249:
	movl	%ebx, %ecx
	movl	%esi, %r9d
	subl	%esi, %ecx
	movl	%ecx, %r10d
	movl	%ecx, 8(%rsp)
	shrl	%r10d
	movl	%r10d, %r12d
	addl	%r12d, %r12d
	movl	%r12d, 56(%rsp)
	je	.L4254
	movapd	%xmm0, %xmm13
	movq	24(%rsp), %rdx
	cmpl	$4, %r10d
	.loc 1 1334 0
	leal	-3(%r10), %esi
	unpcklpd	%xmm13, %xmm13
	leaq	8(%rdx,%r9,8), %rax
	movapd	%xmm13, %xmm1
	jbe	.L4313
	.loc 1 1368 0
	movapd	16(%rax), %xmm14
	leal	-5(%r10), %ecx
	prefetcht0	400(%rax)
	mulpd	(%rax), %xmm13
	movl	$4, %r11d
	movapd	32(%rax), %xmm15
	shrl	$2, %ecx
	mulpd	%xmm1, %xmm14
	andl	$3, %ecx
	movapd	48(%rax), %xmm3
	movl	$4, %r9d
	mulpd	%xmm1, %xmm15
	mulpd	%xmm1, %xmm3
	movapd	%xmm13, (%rax)
	movapd	%xmm14, 16(%rax)
	movapd	%xmm15, 32(%rax)
	movapd	%xmm3, 48(%rax)
	.loc 1 1334 0
	addq	$64, %rax
	cmpl	$5, %esi
	movq	%rax, %rdx
	jbe	.L4255
	testl	%ecx, %ecx
	je	.L4256
	cmpl	$1, %ecx
	je	.L4883
	cmpl	$2, %ecx
	.p2align 4,,3
	je	.L4884
	.loc 1 1368 0
	movapd	(%rax), %xmm7
	prefetcht0	400(%rax)
	.loc 1 1334 0
	addq	$64, %rdx
	movl	$8, %r9d
	.loc 1 1368 0
	movapd	16(%rax), %xmm8
	mulpd	%xmm1, %xmm7
	movapd	32(%rax), %xmm9
	mulpd	%xmm1, %xmm8
	movapd	48(%rax), %xmm10
	mulpd	%xmm1, %xmm9
	movapd	%xmm7, (%rax)
	mulpd	%xmm1, %xmm10
	movapd	%xmm8, 16(%rax)
	movapd	%xmm9, 32(%rax)
	movapd	%xmm10, 48(%rax)
	.loc 1 1334 0
	addq	$64, %rax
.L4884:
	.loc 1 1368 0
	movapd	(%rax), %xmm11
	prefetcht0	400(%rax)
	addl	$4, %r9d
	mulpd	%xmm1, %xmm11
	movapd	%xmm11, (%rdx)
	movapd	16(%rax), %xmm12
	mulpd	%xmm1, %xmm12
	movapd	%xmm12, 16(%rdx)
	movapd	32(%rax), %xmm13
	mulpd	%xmm1, %xmm13
	movapd	%xmm13, 32(%rdx)
	movapd	48(%rax), %xmm14
	.loc 1 1334 0
	addq	$64, %rax
	.loc 1 1368 0
	mulpd	%xmm1, %xmm14
	movapd	%xmm14, 48(%rdx)
	.loc 1 1334 0
	addq	$64, %rdx
.L4883:
	.loc 1 1368 0
	movapd	(%rax), %xmm15
	leal	5(%r9), %r12d
	prefetcht0	400(%rax)
	leal	4(%r9), %r11d
	mulpd	%xmm1, %xmm15
	movl	%r11d, %r9d
	movapd	%xmm15, (%rdx)
	movapd	16(%rax), %xmm3
	mulpd	%xmm1, %xmm3
	movapd	%xmm3, 16(%rdx)
	movapd	32(%rax), %xmm7
	mulpd	%xmm1, %xmm7
	movapd	%xmm7, 32(%rdx)
	movapd	48(%rax), %xmm8
	.loc 1 1334 0
	addq	$64, %rax
	.loc 1 1368 0
	mulpd	%xmm1, %xmm8
	movapd	%xmm8, 48(%rdx)
	.loc 1 1334 0
	addq	$64, %rdx
	cmpl	%esi, %r12d
	jae	.L4255
.L4256:
	.loc 1 1368 0 discriminator 2
	movapd	(%rax), %xmm9
	leal	17(%r9), %ecx
	prefetcht0	400(%rax)
	leal	16(%r9), %r11d
	prefetcht0	464(%rax)
	prefetcht0	528(%rax)
	mulpd	%xmm1, %xmm9
	prefetcht0	592(%rax)
	movl	%r11d, %r9d
	movapd	%xmm9, (%rdx)
	movapd	16(%rax), %xmm10
	mulpd	%xmm1, %xmm10
	movapd	%xmm10, 16(%rdx)
	movapd	32(%rax), %xmm11
	mulpd	%xmm1, %xmm11
	movapd	%xmm11, 32(%rdx)
	movapd	48(%rax), %xmm12
	mulpd	%xmm1, %xmm12
	movapd	%xmm12, 48(%rdx)
	movapd	64(%rax), %xmm13
	mulpd	%xmm1, %xmm13
	movapd	%xmm13, 64(%rdx)
	movapd	80(%rax), %xmm14
	mulpd	%xmm1, %xmm14
	movapd	%xmm14, 80(%rdx)
	movapd	96(%rax), %xmm15
	mulpd	%xmm1, %xmm15
	movapd	%xmm15, 96(%rdx)
	movapd	112(%rax), %xmm3
	mulpd	%xmm1, %xmm3
	movapd	%xmm3, 112(%rdx)
	movapd	128(%rax), %xmm7
	mulpd	%xmm1, %xmm7
	movapd	%xmm7, 128(%rdx)
	movapd	144(%rax), %xmm8
	mulpd	%xmm1, %xmm8
	movapd	%xmm8, 144(%rdx)
	movapd	160(%rax), %xmm9
	mulpd	%xmm1, %xmm9
	movapd	%xmm9, 160(%rdx)
	movapd	176(%rax), %xmm10
	mulpd	%xmm1, %xmm10
	movapd	%xmm10, 176(%rdx)
	movapd	192(%rax), %xmm11
	mulpd	%xmm1, %xmm11
	movapd	%xmm11, 192(%rdx)
	movapd	208(%rax), %xmm12
	mulpd	%xmm1, %xmm12
	movapd	%xmm12, 208(%rdx)
	movapd	224(%rax), %xmm13
	mulpd	%xmm1, %xmm13
	movapd	%xmm13, 224(%rdx)
	movapd	240(%rax), %xmm14
	.loc 1 1334 0 discriminator 2
	addq	$256, %rax
	.loc 1 1368 0 discriminator 2
	mulpd	%xmm1, %xmm14
	movapd	%xmm14, 240(%rdx)
	.loc 1 1334 0 discriminator 2
	addq	$256, %rdx
	cmpl	%esi, %ecx
	jb	.L4256
.L4255:
	.loc 1 1368 0
	movapd	(%rax), %xmm15
	movl	%r11d, %esi
	notl	%esi
	leal	1(%r11), %ecx
	movl	$16, %r9d
	mulpd	%xmm1, %xmm15
	leal	(%rsi,%r10), %r12d
	andl	$7, %r12d
	cmpl	%r10d, %ecx
	movapd	%xmm15, (%rdx)
	jae	.L5073
	testl	%r12d, %r12d
	je	.L4261
	cmpl	$1, %r12d
	je	.L4877
	cmpl	$2, %r12d
	je	.L4878
	cmpl	$3, %r12d
	je	.L4879
	cmpl	$4, %r12d
	je	.L4880
	cmpl	$5, %r12d
	je	.L4881
	cmpl	$6, %r12d
	je	.L4882
	movapd	16(%rax), %xmm3
	leal	2(%r11), %ecx
	movl	$32, %r9d
	mulpd	%xmm1, %xmm3
	movapd	%xmm3, 16(%rdx)
.L4882:
	movapd	(%rax,%r9), %xmm7
	addl	$1, %ecx
	mulpd	%xmm1, %xmm7
	movapd	%xmm7, (%rdx,%r9)
	addq	$16, %r9
.L4881:
	movapd	(%rax,%r9), %xmm8
	addl	$1, %ecx
	mulpd	%xmm1, %xmm8
	movapd	%xmm8, (%rdx,%r9)
	addq	$16, %r9
.L4880:
	movapd	(%rax,%r9), %xmm9
	addl	$1, %ecx
	mulpd	%xmm1, %xmm9
	movapd	%xmm9, (%rdx,%r9)
	addq	$16, %r9
.L4879:
	movapd	(%rax,%r9), %xmm10
	addl	$1, %ecx
	mulpd	%xmm1, %xmm10
	movapd	%xmm10, (%rdx,%r9)
	addq	$16, %r9
.L4878:
	movapd	(%rax,%r9), %xmm11
	addl	$1, %ecx
	mulpd	%xmm1, %xmm11
	movapd	%xmm11, (%rdx,%r9)
	addq	$16, %r9
.L4877:
	movapd	(%rax,%r9), %xmm12
	addl	$1, %ecx
	mulpd	%xmm1, %xmm12
	movapd	%xmm12, (%rdx,%r9)
	addq	$16, %r9
	cmpl	%r10d, %ecx
	jae	.L5073
.L4261:
	movapd	(%rax,%r9), %xmm13
	addl	$8, %ecx
	mulpd	%xmm1, %xmm13
	movapd	%xmm13, (%rdx,%r9)
	movapd	16(%rax,%r9), %xmm14
	mulpd	%xmm1, %xmm14
	movapd	%xmm14, 16(%rdx,%r9)
	movapd	32(%rax,%r9), %xmm15
	mulpd	%xmm1, %xmm15
	movapd	%xmm15, 32(%rdx,%r9)
	movapd	48(%rax,%r9), %xmm3
	mulpd	%xmm1, %xmm3
	movapd	%xmm3, 48(%rdx,%r9)
	movapd	64(%rax,%r9), %xmm7
	mulpd	%xmm1, %xmm7
	movapd	%xmm7, 64(%rdx,%r9)
	movapd	80(%rax,%r9), %xmm8
	mulpd	%xmm1, %xmm8
	movapd	%xmm8, 80(%rdx,%r9)
	movapd	96(%rax,%r9), %xmm9
	mulpd	%xmm1, %xmm9
	movapd	%xmm9, 96(%rdx,%r9)
	movapd	112(%rax,%r9), %xmm10
	mulpd	%xmm1, %xmm10
	movapd	%xmm10, 112(%rdx,%r9)
	subq	$-128, %r9
	cmpl	%r10d, %ecx
	jb	.L4261
.L5073:
	addl	56(%rsp), %edi
	movl	56(%rsp), %r11d
	cmpl	%r11d, 8(%rsp)
	je	.L4253
.L4254:
	.loc 1 1334 0
	cmpl	%edi, %ebx
	setge	%r10b
	cmpl	$-2147483642, %ebx
	setge	%al
	testb	%al, %r10b
	leal	1(%rdi), %r10d
	je	.L4258
	cmpl	20(%rsp), %r10d
	jge	.L4258
	movq	24(%rsp), %rdx
	movl	20(%rsp), %r9d
	movslq	%edi, %rsi
	leaq	200(%rdx,%rsi,8), %r12
	subl	%edi, %r9d
	.loc 1 1368 0
	addl	$8, %edi
	leal	-2(%r9), %ecx
	.loc 1 1334 0
	leal	1(%rdi), %r10d
	.loc 1 1368 0
	movsd	-200(%r12), %xmm1
	prefetcht0	(%r12)
	leaq	64(%r12), %r11
	movsd	-192(%r12), %xmm11
	shrl	$3, %ecx
	movsd	-184(%r12), %xmm12
	andl	$1, %ecx
	cmpl	20(%rsp), %r10d
	movsd	-176(%r12), %xmm13
	movsd	-168(%r12), %xmm14
	movsd	-160(%r12), %xmm15
	movsd	-152(%r12), %xmm3
	movsd	-144(%r12), %xmm7
	mulsd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm11
	mulsd	%xmm0, %xmm12
	mulsd	%xmm0, %xmm13
	mulsd	%xmm0, %xmm14
	movsd	%xmm1, -200(%r12)
	mulsd	%xmm0, %xmm15
	movsd	%xmm11, -192(%r12)
	mulsd	%xmm0, %xmm3
	movsd	%xmm12, -184(%r12)
	mulsd	%xmm0, %xmm7
	movsd	%xmm13, -176(%r12)
	movsd	%xmm14, -168(%r12)
	movsd	%xmm15, -160(%r12)
	movsd	%xmm3, -152(%r12)
	movsd	%xmm7, -144(%r12)
	jge	.L4258
	testl	%ecx, %ecx
	je	.L5121
	movsd	-200(%r11), %xmm8
	addl	$8, %edi
	prefetcht0	(%r11)
	movsd	-192(%r11), %xmm9
	.loc 1 1334 0
	leal	1(%rdi), %r10d
	.loc 1 1368 0
	movsd	-184(%r11), %xmm10
	cmpl	20(%rsp), %r10d
	movsd	-176(%r11), %xmm1
	movsd	-168(%r11), %xmm11
	movsd	-160(%r11), %xmm12
	movsd	-152(%r11), %xmm13
	movsd	-144(%r11), %xmm14
	mulsd	%xmm0, %xmm8
	mulsd	%xmm0, %xmm9
	mulsd	%xmm0, %xmm10
	mulsd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm11
	movsd	%xmm8, -200(%r11)
	mulsd	%xmm0, %xmm12
	movsd	%xmm9, -192(%r11)
	mulsd	%xmm0, %xmm13
	movsd	%xmm10, -184(%r11)
	mulsd	%xmm0, %xmm14
	movsd	%xmm1, -176(%r11)
	movsd	%xmm11, -168(%r11)
	movsd	%xmm12, -160(%r11)
	movsd	%xmm13, -152(%r11)
	movsd	%xmm14, -144(%r11)
	leaq	128(%r12), %r11
	jge	.L4258
.L5121:
	movl	20(%rsp), %eax
.L4259:
	movsd	-200(%r11), %xmm15
	leaq	64(%r11), %rsi
	prefetcht0	(%r11)
	movsd	-192(%r11), %xmm3
	addl	$16, %edi
	movsd	-184(%r11), %xmm7
	.loc 1 1334 0
	leal	1(%rdi), %r10d
	prefetcht0	(%rsi)
	.loc 1 1368 0
	movsd	-176(%r11), %xmm8
	movsd	-168(%r11), %xmm9
	movsd	-160(%r11), %xmm10
	movsd	-152(%r11), %xmm1
	movsd	-144(%r11), %xmm11
	mulsd	%xmm0, %xmm15
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm7
	mulsd	%xmm0, %xmm8
	mulsd	%xmm0, %xmm9
	movsd	%xmm15, -200(%r11)
	mulsd	%xmm0, %xmm10
	movsd	%xmm3, -192(%r11)
	mulsd	%xmm0, %xmm1
	movsd	%xmm7, -184(%r11)
	mulsd	%xmm0, %xmm11
	movsd	%xmm8, -176(%r11)
	movsd	%xmm9, -168(%r11)
	movsd	%xmm10, -160(%r11)
	movsd	%xmm1, -152(%r11)
	movsd	%xmm11, -144(%r11)
	subq	$-128, %r11
	cmpl	%eax, %r10d
	movsd	-200(%rsi), %xmm12
	movsd	-192(%rsi), %xmm13
	movsd	-184(%rsi), %xmm14
	movsd	-176(%rsi), %xmm15
	movsd	-168(%rsi), %xmm3
	movsd	-160(%rsi), %xmm7
	movsd	-152(%rsi), %xmm8
	movsd	-144(%rsi), %xmm9
	mulsd	%xmm0, %xmm12
	mulsd	%xmm0, %xmm13
	mulsd	%xmm0, %xmm14
	mulsd	%xmm0, %xmm15
	mulsd	%xmm0, %xmm3
	movsd	%xmm12, -200(%rsi)
	mulsd	%xmm0, %xmm7
	movsd	%xmm13, -192(%rsi)
	mulsd	%xmm0, %xmm8
	movsd	%xmm14, -184(%rsi)
	mulsd	%xmm0, %xmm9
	movsd	%xmm15, -176(%rsi)
	movsd	%xmm3, -168(%rsi)
	movsd	%xmm7, -160(%rsi)
	movsd	%xmm8, -152(%rsi)
	movsd	%xmm9, -144(%rsi)
	jl	.L4259
.L4258:
	movl	%ebx, %r9d
	.loc 1 1334 0
	movq	24(%rsp), %rdx
	movslq	%edi, %rdi
	subl	%r10d, %r9d
	addl	$1, %r9d
	andl	$7, %r9d
	leaq	(%rdx,%rdi,8), %r12
	je	.L4260
	.loc 1 1368 0
	movsd	(%r12), %xmm10
	mulsd	%xmm0, %xmm10
	movsd	%xmm10, (%r12)
.LVL1395:
	addq	$8, %r12
	cmpl	%r10d, %ebx
	jl	.L4253
	addl	$1, %r10d
.LVL1396:
	cmpl	$1, %r9d
	je	.L4260
	cmpl	$2, %r9d
	je	.L4872
	cmpl	$3, %r9d
	je	.L4873
	cmpl	$4, %r9d
	je	.L4874
	cmpl	$5, %r9d
	je	.L4875
	cmpl	$6, %r9d
	je	.L4876
	movsd	(%r12), %xmm1
	addl	$1, %r10d
.LVL1397:
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, (%r12)
.LVL1398:
	addq	$8, %r12
.L4876:
	movsd	(%r12), %xmm11
	addl	$1, %r10d
	mulsd	%xmm0, %xmm11
	movsd	%xmm11, (%r12)
	addq	$8, %r12
.L4875:
	movsd	(%r12), %xmm12
	addl	$1, %r10d
	mulsd	%xmm0, %xmm12
	movsd	%xmm12, (%r12)
	addq	$8, %r12
.L4874:
	movsd	(%r12), %xmm13
	addl	$1, %r10d
	mulsd	%xmm0, %xmm13
	movsd	%xmm13, (%r12)
	addq	$8, %r12
.L4873:
	movsd	(%r12), %xmm14
	addl	$1, %r10d
	mulsd	%xmm0, %xmm14
	movsd	%xmm14, (%r12)
	addq	$8, %r12
.L4872:
	movsd	(%r12), %xmm15
	addl	$1, %r10d
	mulsd	%xmm0, %xmm15
	movsd	%xmm15, (%r12)
	addq	$8, %r12
	jmp	.L4260
.LVL1399:
	.p2align 4,,10
	.p2align 3
.L5153:
	movsd	8(%r12), %xmm9
	addl	$8, %r10d
.LVL1400:
	movsd	16(%r12), %xmm7
	movsd	24(%r12), %xmm10
	movsd	32(%r12), %xmm8
	movsd	40(%r12), %xmm1
	movsd	48(%r12), %xmm11
	movsd	56(%r12), %xmm12
	mulsd	%xmm0, %xmm9
	mulsd	%xmm0, %xmm7
	mulsd	%xmm0, %xmm10
	mulsd	%xmm0, %xmm8
	mulsd	%xmm0, %xmm1
	movsd	%xmm9, 8(%r12)
.LVL1401:
	mulsd	%xmm0, %xmm11
	movsd	%xmm7, 16(%r12)
	mulsd	%xmm0, %xmm12
	movsd	%xmm10, 24(%r12)
	movsd	%xmm8, 32(%r12)
	movsd	%xmm1, 40(%r12)
	movsd	%xmm11, 48(%r12)
	movsd	%xmm12, 56(%r12)
	addq	$64, %r12
.L4260:
	movsd	(%r12), %xmm3
	cmpl	%r10d, %ebx
	mulsd	%xmm0, %xmm3
	movsd	%xmm3, (%r12)
.LVL1402:
	jge	.L5153
.LVL1403:
.L4253:
	.loc 1 1369 0
	movl	60(%rsp), %ecx
	testl	%ecx, %ecx
	jle	.L4278
	movq	40(%rsp), %r11
	movq	32(%rsp), %r10
	.loc 1 1334 0
	movl	60(%rsp), %esi
	.loc 1 1369 0
	movq	(%r11,%r10), %r10
	.loc 1 1334 0
	leaq	8(%r10), %rax
	salq	$60, %rax
	shrq	$63, %rax
	cmpl	%eax, 60(%rsp)
	cmovb	60(%rsp), %eax
	cmpl	$3, 60(%rsp)
	cmova	%eax, %esi
	testl	%esi, %esi
	je	.L4314
	cmpl	$8, %esi
	leal	-7(%rsi), %edi
	jbe	.L4315
	leaq	192(%r10), %r12
	leal	-9(%rsi), %edx
	.loc 1 1369 0
	movl	$9, %ecx
	.loc 1 1334 0
	movl	$8, %r9d
	leaq	256(%r10), %r11
	.loc 1 1369 0
	movsd	-184(%r12), %xmm7
	shrl	$3, %edx
	prefetcht0	(%r12)
	movsd	-176(%r12), %xmm8
	andl	$1, %edx
	cmpl	%edi, %ecx
	movsd	-168(%r12), %xmm9
	movsd	-160(%r12), %xmm10
	movsd	-152(%r12), %xmm1
	movsd	-144(%r12), %xmm11
	movsd	-136(%r12), %xmm12
	movsd	-128(%r12), %xmm13
	mulsd	%xmm0, %xmm7
	mulsd	%xmm0, %xmm8
	mulsd	%xmm0, %xmm9
	mulsd	%xmm0, %xmm10
	mulsd	%xmm0, %xmm1
	movsd	%xmm7, -184(%r12)
.LVL1404:
	mulsd	%xmm0, %xmm11
	movsd	%xmm8, -176(%r12)
	mulsd	%xmm0, %xmm12
	movsd	%xmm9, -168(%r12)
	mulsd	%xmm0, %xmm13
	movsd	%xmm10, -160(%r12)
	movsd	%xmm1, -152(%r12)
	movsd	%xmm11, -144(%r12)
	movsd	%xmm12, -136(%r12)
	movsd	%xmm13, -128(%r12)
	jae	.L4267
	testl	%edx, %edx
	je	.L4268
	movsd	-184(%r11), %xmm14
	movl	$17, %ecx
	prefetcht0	(%r11)
	movsd	-176(%r11), %xmm15
	cmpl	%edi, %ecx
	movsd	-168(%r11), %xmm3
	.loc 1 1334 0
	movl	$16, %r9d
	.loc 1 1369 0
	movsd	-160(%r11), %xmm7
	movsd	-152(%r11), %xmm8
	movsd	-144(%r11), %xmm9
	movsd	-136(%r11), %xmm10
	movsd	-128(%r11), %xmm1
	mulsd	%xmm0, %xmm14
	mulsd	%xmm0, %xmm15
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm7
	mulsd	%xmm0, %xmm8
	movsd	%xmm14, -184(%r11)
	mulsd	%xmm0, %xmm9
	movsd	%xmm15, -176(%r11)
	mulsd	%xmm0, %xmm10
	movsd	%xmm3, -168(%r11)
	mulsd	%xmm0, %xmm1
	movsd	%xmm7, -160(%r11)
	movsd	%xmm8, -152(%r11)
	movsd	%xmm9, -144(%r11)
	movsd	%xmm10, -136(%r11)
	movsd	%xmm1, -128(%r11)
	leaq	320(%r10), %r11
	jae	.L4267
.L4268:
	movsd	-184(%r11), %xmm11
	leaq	64(%r11), %rax
	prefetcht0	(%r11)
	movsd	-176(%r11), %xmm12
	addl	$16, %ecx
	movsd	-168(%r11), %xmm13
	prefetcht0	(%rax)
	.loc 1 1334 0
	leal	-1(%rcx), %r9d
	.loc 1 1369 0
	movsd	-160(%r11), %xmm14
	movsd	-152(%r11), %xmm15
	movsd	-144(%r11), %xmm3
	movsd	-136(%r11), %xmm7
	movsd	-128(%r11), %xmm8
	mulsd	%xmm0, %xmm11
	mulsd	%xmm0, %xmm12
	mulsd	%xmm0, %xmm13
	mulsd	%xmm0, %xmm14
	mulsd	%xmm0, %xmm15
	movsd	%xmm11, -184(%r11)
	mulsd	%xmm0, %xmm3
	movsd	%xmm12, -176(%r11)
	mulsd	%xmm0, %xmm7
	movsd	%xmm13, -168(%r11)
	mulsd	%xmm0, %xmm8
	movsd	%xmm14, -160(%r11)
	movsd	%xmm15, -152(%r11)
	movsd	%xmm3, -144(%r11)
	movsd	%xmm7, -136(%r11)
	movsd	%xmm8, -128(%r11)
	subq	$-128, %r11
	cmpl	%edi, %ecx
	movsd	-184(%rax), %xmm9
	movsd	-176(%rax), %xmm10
	movsd	-168(%rax), %xmm1
	movsd	-160(%rax), %xmm11
	movsd	-152(%rax), %xmm12
	movsd	-144(%rax), %xmm13
	movsd	-136(%rax), %xmm14
	movsd	-128(%rax), %xmm15
	mulsd	%xmm0, %xmm9
	mulsd	%xmm0, %xmm10
	mulsd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm11
	mulsd	%xmm0, %xmm12
	movsd	%xmm9, -184(%rax)
	mulsd	%xmm0, %xmm13
	movsd	%xmm10, -176(%rax)
	mulsd	%xmm0, %xmm14
	movsd	%xmm1, -168(%rax)
	mulsd	%xmm0, %xmm15
	movsd	%xmm11, -160(%rax)
	movsd	%xmm12, -152(%rax)
	movsd	%xmm13, -144(%rax)
	movsd	%xmm14, -136(%rax)
	movsd	%xmm15, -128(%rax)
	jb	.L4268
.L4267:
.LVL1405:
	.loc 1 1334 0
	movslq	%ecx, %rdi
	movl	%r9d, %r12d
	leal	1(%r9), %edx
	leaq	(%r10,%rdi,8), %r11
	notl	%r12d
	leal	1(%rcx), %edi
	leal	(%r12,%rsi), %r12d
	.loc 1 1369 0
	movsd	(%r11), %xmm3
	leaq	8(%r11), %rax
	andl	$7, %r12d
	cmpl	%edx, %esi
	mulsd	%xmm0, %xmm3
	movsd	%xmm3, (%r11)
	jbe	.L5074
	testl	%r12d, %r12d
	je	.L4269
	cmpl	$1, %r12d
	je	.L4866
	cmpl	$2, %r12d
	je	.L4867
	cmpl	$3, %r12d
	je	.L4868
	cmpl	$4, %r12d
	je	.L4869
	cmpl	$5, %r12d
	je	.L4870
	cmpl	$6, %r12d
	je	.L4871
	movsd	8(%r11), %xmm7
	leal	2(%rcx), %edi
.LVL1406:
	leaq	16(%r11), %rax
	mulsd	%xmm0, %xmm7
	movsd	%xmm7, 8(%r11)
.L4871:
	movsd	(%rax), %xmm8
	addl	$1, %edi
	mulsd	%xmm0, %xmm8
	movsd	%xmm8, (%rax)
	addq	$8, %rax
.L4870:
	movsd	(%rax), %xmm9
	addl	$1, %edi
	mulsd	%xmm0, %xmm9
	movsd	%xmm9, (%rax)
	addq	$8, %rax
.L4869:
	movsd	(%rax), %xmm10
	addl	$1, %edi
	mulsd	%xmm0, %xmm10
	movsd	%xmm10, (%rax)
	addq	$8, %rax
.L4868:
	movsd	(%rax), %xmm1
	addl	$1, %edi
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, (%rax)
	addq	$8, %rax
.L4867:
	movsd	(%rax), %xmm11
	addl	$1, %edi
	mulsd	%xmm0, %xmm11
	movsd	%xmm11, (%rax)
	addq	$8, %rax
.L4866:
	movsd	(%rax), %xmm12
	addl	$1, %edi
	.loc 1 1334 0
	leal	(%r9,%rdi), %r11d
	.loc 1 1369 0
	mulsd	%xmm0, %xmm12
	subl	%ecx, %r11d
	movsd	%xmm12, (%rax)
	addq	$8, %rax
	cmpl	%r11d, %esi
	jbe	.L5074
.L4269:
	movsd	(%rax), %xmm13
	addl	$8, %edi
	movsd	8(%rax), %xmm14
	.loc 1 1334 0
	leal	(%r9,%rdi), %r12d
	.loc 1 1369 0
	movsd	16(%rax), %xmm15
	movsd	24(%rax), %xmm3
	subl	%ecx, %r12d
	movsd	32(%rax), %xmm7
	movsd	40(%rax), %xmm8
	movsd	48(%rax), %xmm9
	movsd	56(%rax), %xmm10
	mulsd	%xmm0, %xmm13
	mulsd	%xmm0, %xmm14
	mulsd	%xmm0, %xmm15
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm7
	movsd	%xmm13, (%rax)
	mulsd	%xmm0, %xmm8
	movsd	%xmm14, 8(%rax)
	mulsd	%xmm0, %xmm9
	movsd	%xmm15, 16(%rax)
	mulsd	%xmm0, %xmm10
	movsd	%xmm3, 24(%rax)
	movsd	%xmm7, 32(%rax)
	movsd	%xmm8, 40(%rax)
	movsd	%xmm9, 48(%rax)
	movsd	%xmm10, 56(%rax)
	addq	$64, %rax
	cmpl	%r12d, %esi
	ja	.L4269
.L5074:
	cmpl	60(%rsp), %esi
	je	.L4278
.L4266:
	movl	60(%rsp), %ecx
	movl	%esi, %r9d
	subl	%esi, %ecx
	movl	%ecx, %r11d
	movl	%ecx, 56(%rsp)
	shrl	%r11d
	movl	%r11d, %edx
	addl	%edx, %edx
	movl	%edx, 48(%rsp)
	je	.L4271
	movapd	%xmm0, %xmm11
	.loc 1 1334 0
	leal	-3(%r11), %esi
	cmpl	$4, %r11d
	leaq	8(%r10,%r9,8), %rax
	unpcklpd	%xmm11, %xmm11
	movl	%esi, 8(%rsp)
	movapd	%xmm11, %xmm1
	jbe	.L4316
	.loc 1 1369 0
	movapd	16(%rax), %xmm12
	leal	-5(%r11), %ecx
	prefetcht0	400(%rax)
	mulpd	(%rax), %xmm11
	movl	$4, %r12d
	movapd	32(%rax), %xmm13
	shrl	$2, %ecx
	mulpd	%xmm1, %xmm12
	andl	$3, %ecx
	movapd	48(%rax), %xmm14
	movl	$4, %r9d
	mulpd	%xmm1, %xmm13
	mulpd	%xmm1, %xmm14
	movapd	%xmm11, (%rax)
	movapd	%xmm12, 16(%rax)
	movapd	%xmm13, 32(%rax)
	movapd	%xmm14, 48(%rax)
	.loc 1 1334 0
	addq	$64, %rax
	movq	%rax, %rdx
	cmpl	$5, 8(%rsp)
	jbe	.L4272
	testl	%ecx, %ecx
	je	.L4273
	cmpl	$1, %ecx
	je	.L4864
	cmpl	$2, %ecx
	.p2align 4,,3
	je	.L4865
	.loc 1 1369 0
	movapd	(%rax), %xmm15
	prefetcht0	400(%rax)
	.loc 1 1334 0
	addq	$64, %rdx
	movl	$8, %r9d
	.loc 1 1369 0
	movapd	16(%rax), %xmm3
	mulpd	%xmm1, %xmm15
	movapd	32(%rax), %xmm7
	mulpd	%xmm1, %xmm3
	movapd	48(%rax), %xmm8
	mulpd	%xmm1, %xmm7
	movapd	%xmm15, (%rax)
	mulpd	%xmm1, %xmm8
	movapd	%xmm3, 16(%rax)
	movapd	%xmm7, 32(%rax)
	movapd	%xmm8, 48(%rax)
	.loc 1 1334 0
	addq	$64, %rax
.L4865:
	.loc 1 1369 0
	movapd	(%rax), %xmm9
	prefetcht0	400(%rax)
	addl	$4, %r9d
	mulpd	%xmm1, %xmm9
	movapd	%xmm9, (%rdx)
	movapd	16(%rax), %xmm10
	mulpd	%xmm1, %xmm10
	movapd	%xmm10, 16(%rdx)
	movapd	32(%rax), %xmm11
	mulpd	%xmm1, %xmm11
	movapd	%xmm11, 32(%rdx)
	movapd	48(%rax), %xmm12
	.loc 1 1334 0
	addq	$64, %rax
	.loc 1 1369 0
	mulpd	%xmm1, %xmm12
	movapd	%xmm12, 48(%rdx)
	.loc 1 1334 0
	addq	$64, %rdx
.L4864:
	.loc 1 1369 0
	movapd	(%rax), %xmm13
	leal	5(%r9), %esi
	prefetcht0	400(%rax)
	leal	4(%r9), %r12d
	mulpd	%xmm1, %xmm13
	movl	%r12d, %r9d
	movapd	%xmm13, (%rdx)
	movapd	16(%rax), %xmm14
	mulpd	%xmm1, %xmm14
	movapd	%xmm14, 16(%rdx)
	movapd	32(%rax), %xmm15
	mulpd	%xmm1, %xmm15
	movapd	%xmm15, 32(%rdx)
	movapd	48(%rax), %xmm3
	.loc 1 1334 0
	addq	$64, %rax
	.loc 1 1369 0
	mulpd	%xmm1, %xmm3
	movapd	%xmm3, 48(%rdx)
	.loc 1 1334 0
	addq	$64, %rdx
	cmpl	8(%rsp), %esi
	jae	.L4272
.L4273:
	.loc 1 1369 0 discriminator 2
	movapd	(%rax), %xmm7
	leal	17(%r9), %ecx
	prefetcht0	400(%rax)
	prefetcht0	464(%rax)
	prefetcht0	528(%rax)
	prefetcht0	592(%rax)
	mulpd	%xmm1, %xmm7
	leal	16(%r9), %r12d
	movl	%r12d, %r9d
	movapd	%xmm7, (%rdx)
	movapd	16(%rax), %xmm8
	mulpd	%xmm1, %xmm8
	movapd	%xmm8, 16(%rdx)
	movapd	32(%rax), %xmm9
	mulpd	%xmm1, %xmm9
	movapd	%xmm9, 32(%rdx)
	movapd	48(%rax), %xmm10
	mulpd	%xmm1, %xmm10
	movapd	%xmm10, 48(%rdx)
	movapd	64(%rax), %xmm11
	mulpd	%xmm1, %xmm11
	movapd	%xmm11, 64(%rdx)
	movapd	80(%rax), %xmm12
	mulpd	%xmm1, %xmm12
	movapd	%xmm12, 80(%rdx)
	movapd	96(%rax), %xmm13
	mulpd	%xmm1, %xmm13
	movapd	%xmm13, 96(%rdx)
	movapd	112(%rax), %xmm14
	mulpd	%xmm1, %xmm14
	movapd	%xmm14, 112(%rdx)
	movapd	128(%rax), %xmm15
	mulpd	%xmm1, %xmm15
	movapd	%xmm15, 128(%rdx)
	movapd	144(%rax), %xmm3
	mulpd	%xmm1, %xmm3
	movapd	%xmm3, 144(%rdx)
	movapd	160(%rax), %xmm7
	mulpd	%xmm1, %xmm7
	movapd	%xmm7, 160(%rdx)
	movapd	176(%rax), %xmm8
	mulpd	%xmm1, %xmm8
	movapd	%xmm8, 176(%rdx)
	movapd	192(%rax), %xmm9
	mulpd	%xmm1, %xmm9
	movapd	%xmm9, 192(%rdx)
	movapd	208(%rax), %xmm10
	mulpd	%xmm1, %xmm10
	movapd	%xmm10, 208(%rdx)
	movapd	224(%rax), %xmm11
	mulpd	%xmm1, %xmm11
	movapd	%xmm11, 224(%rdx)
	movapd	240(%rax), %xmm12
	.loc 1 1334 0 discriminator 2
	addq	$256, %rax
	.loc 1 1369 0 discriminator 2
	mulpd	%xmm1, %xmm12
	movapd	%xmm12, 240(%rdx)
	.loc 1 1334 0 discriminator 2
	addq	$256, %rdx
	cmpl	8(%rsp), %ecx
	jb	.L4273
.L4272:
	.loc 1 1369 0
	movapd	(%rax), %xmm13
	movl	%r12d, %esi
	notl	%esi
	movl	$16, %ecx
	mulpd	%xmm1, %xmm13
	leal	(%rsi,%r11), %r9d
	leal	1(%r12), %esi
	andl	$7, %r9d
	cmpl	%esi, %r11d
	movapd	%xmm13, (%rdx)
	jbe	.L5076
	testl	%r9d, %r9d
	je	.L4279
	cmpl	$1, %r9d
	je	.L4858
	cmpl	$2, %r9d
	je	.L4859
	cmpl	$3, %r9d
	je	.L4860
	cmpl	$4, %r9d
	je	.L4861
	cmpl	$5, %r9d
	je	.L4862
	cmpl	$6, %r9d
	je	.L4863
	movapd	16(%rax), %xmm14
	leal	2(%r12), %esi
	movl	$32, %ecx
	mulpd	%xmm1, %xmm14
	movapd	%xmm14, 16(%rdx)
.L4863:
	movapd	(%rax,%rcx), %xmm15
	addl	$1, %esi
	mulpd	%xmm1, %xmm15
	movapd	%xmm15, (%rdx,%rcx)
	addq	$16, %rcx
.L4862:
	movapd	(%rax,%rcx), %xmm3
	addl	$1, %esi
	mulpd	%xmm1, %xmm3
	movapd	%xmm3, (%rdx,%rcx)
	addq	$16, %rcx
.L4861:
	movapd	(%rax,%rcx), %xmm7
	addl	$1, %esi
	mulpd	%xmm1, %xmm7
	movapd	%xmm7, (%rdx,%rcx)
	addq	$16, %rcx
.L4860:
	movapd	(%rax,%rcx), %xmm8
	addl	$1, %esi
	mulpd	%xmm1, %xmm8
	movapd	%xmm8, (%rdx,%rcx)
	addq	$16, %rcx
.L4859:
	movapd	(%rax,%rcx), %xmm9
	addl	$1, %esi
	mulpd	%xmm1, %xmm9
	movapd	%xmm9, (%rdx,%rcx)
	addq	$16, %rcx
.L4858:
	movapd	(%rax,%rcx), %xmm10
	addl	$1, %esi
	mulpd	%xmm1, %xmm10
	movapd	%xmm10, (%rdx,%rcx)
	addq	$16, %rcx
	cmpl	%esi, %r11d
	jbe	.L5076
.L4279:
	movapd	(%rax,%rcx), %xmm11
	addl	$8, %esi
	mulpd	%xmm1, %xmm11
	movapd	%xmm11, (%rdx,%rcx)
	movapd	16(%rax,%rcx), %xmm12
	mulpd	%xmm1, %xmm12
	movapd	%xmm12, 16(%rdx,%rcx)
	movapd	32(%rax,%rcx), %xmm13
	mulpd	%xmm1, %xmm13
	movapd	%xmm13, 32(%rdx,%rcx)
	movapd	48(%rax,%rcx), %xmm14
	mulpd	%xmm1, %xmm14
	movapd	%xmm14, 48(%rdx,%rcx)
	movapd	64(%rax,%rcx), %xmm15
	mulpd	%xmm1, %xmm15
	movapd	%xmm15, 64(%rdx,%rcx)
	movapd	80(%rax,%rcx), %xmm3
	mulpd	%xmm1, %xmm3
	movapd	%xmm3, 80(%rdx,%rcx)
	movapd	96(%rax,%rcx), %xmm7
	mulpd	%xmm1, %xmm7
	movapd	%xmm7, 96(%rdx,%rcx)
	movapd	112(%rax,%rcx), %xmm8
	mulpd	%xmm1, %xmm8
	movapd	%xmm8, 112(%rdx,%rcx)
	subq	$-128, %rcx
	cmpl	%esi, %r11d
	ja	.L4279
.L5076:
	addl	48(%rsp), %edi
	movl	48(%rsp), %r12d
	cmpl	%r12d, 56(%rsp)
	je	.L4278
.L4271:
	.loc 1 1334 0
	leal	1(%rdi), %r12d
	cmpl	16(%rsp), %r12d
	jge	.L4275
	cmpl	%edi, 60(%rsp)
	jl	.L4275
	movl	16(%rsp), %edx
	movslq	%edi, %rax
	leaq	200(%r10,%rax,8), %r11
	subl	%edi, %edx
	.loc 1 1369 0
	movsd	-200(%r11), %xmm1
	prefetcht0	(%r11)
	leal	-2(%rdx), %r9d
	movsd	-192(%r11), %xmm9
	movsd	-184(%r11), %xmm10
	addl	$8, %edi
	movsd	-176(%r11), %xmm11
	shrl	$3, %r9d
	movsd	-168(%r11), %xmm12
	andl	$1, %r9d
	movsd	-160(%r11), %xmm13
	.loc 1 1334 0
	leal	1(%rdi), %r12d
	.loc 1 1369 0
	movsd	-152(%r11), %xmm14
	cmpl	16(%rsp), %r12d
	movsd	-144(%r11), %xmm15
	leaq	64(%r11), %rsi
	mulsd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm9
	mulsd	%xmm0, %xmm10
	mulsd	%xmm0, %xmm11
	mulsd	%xmm0, %xmm12
	movsd	%xmm1, -200(%r11)
	mulsd	%xmm0, %xmm13
	movsd	%xmm9, -192(%r11)
	mulsd	%xmm0, %xmm14
	movsd	%xmm10, -184(%r11)
	mulsd	%xmm0, %xmm15
	movsd	%xmm11, -176(%r11)
	movsd	%xmm12, -168(%r11)
	movsd	%xmm13, -160(%r11)
	movsd	%xmm14, -152(%r11)
	movsd	%xmm15, -144(%r11)
	jge	.L4275
	testl	%r9d, %r9d
	je	.L5110
	movsd	-200(%rsi), %xmm3
	addl	$8, %edi
	prefetcht0	(%rsi)
	movsd	-192(%rsi), %xmm7
	.loc 1 1334 0
	leal	1(%rdi), %r12d
	.loc 1 1369 0
	movsd	-184(%rsi), %xmm8
	cmpl	16(%rsp), %r12d
	movsd	-176(%rsi), %xmm1
	movsd	-168(%rsi), %xmm9
	movsd	-160(%rsi), %xmm10
	movsd	-152(%rsi), %xmm11
	movsd	-144(%rsi), %xmm12
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm7
	mulsd	%xmm0, %xmm8
	mulsd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm9
	movsd	%xmm3, -200(%rsi)
	mulsd	%xmm0, %xmm10
	movsd	%xmm7, -192(%rsi)
	mulsd	%xmm0, %xmm11
	movsd	%xmm8, -184(%rsi)
	mulsd	%xmm0, %xmm12
	movsd	%xmm1, -176(%rsi)
	movsd	%xmm9, -168(%rsi)
	movsd	%xmm10, -160(%rsi)
	movsd	%xmm11, -152(%rsi)
	movsd	%xmm12, -144(%rsi)
	leaq	128(%r11), %rsi
	jge	.L4275
.L5110:
	movl	16(%rsp), %ecx
.L4276:
	movsd	-200(%rsi), %xmm13
	leaq	64(%rsi), %rax
	prefetcht0	(%rsi)
	movsd	-192(%rsi), %xmm14
	addl	$16, %edi
	movsd	-184(%rsi), %xmm15
	.loc 1 1334 0
	leal	1(%rdi), %r12d
	prefetcht0	(%rax)
	.loc 1 1369 0
	movsd	-176(%rsi), %xmm3
	movsd	-168(%rsi), %xmm7
	movsd	-160(%rsi), %xmm8
	movsd	-152(%rsi), %xmm1
	movsd	-144(%rsi), %xmm9
	mulsd	%xmm0, %xmm13
	mulsd	%xmm0, %xmm14
	mulsd	%xmm0, %xmm15
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm7
	movsd	%xmm13, -200(%rsi)
	mulsd	%xmm0, %xmm8
	movsd	%xmm14, -192(%rsi)
	mulsd	%xmm0, %xmm1
	movsd	%xmm15, -184(%rsi)
	mulsd	%xmm0, %xmm9
	movsd	%xmm3, -176(%rsi)
	movsd	%xmm7, -168(%rsi)
	movsd	%xmm8, -160(%rsi)
	movsd	%xmm1, -152(%rsi)
	movsd	%xmm9, -144(%rsi)
	subq	$-128, %rsi
	cmpl	%ecx, %r12d
	movsd	-200(%rax), %xmm10
	movsd	-192(%rax), %xmm11
	movsd	-184(%rax), %xmm12
	movsd	-176(%rax), %xmm13
	movsd	-168(%rax), %xmm14
	movsd	-160(%rax), %xmm15
	movsd	-152(%rax), %xmm3
	movsd	-144(%rax), %xmm7
	mulsd	%xmm0, %xmm10
	mulsd	%xmm0, %xmm11
	mulsd	%xmm0, %xmm12
	mulsd	%xmm0, %xmm13
	mulsd	%xmm0, %xmm14
	movsd	%xmm10, -200(%rax)
	mulsd	%xmm0, %xmm15
	movsd	%xmm11, -192(%rax)
	mulsd	%xmm0, %xmm3
	movsd	%xmm12, -184(%rax)
	mulsd	%xmm0, %xmm7
	movsd	%xmm13, -176(%rax)
	movsd	%xmm14, -168(%rax)
	movsd	%xmm15, -160(%rax)
	movsd	%xmm3, -152(%rax)
	movsd	%xmm7, -144(%rax)
	jl	.L4276
.L4275:
	movl	60(%rsp), %r11d
	.loc 1 1334 0
	movslq	%edi, %rdi
	leaq	(%r10,%rdi,8), %r10
	subl	%r12d, %r11d
	addl	$1, %r11d
	andl	$7, %r11d
	je	.L4277
	.loc 1 1369 0
	movsd	(%r10), %xmm8
	mulsd	%xmm0, %xmm8
	movsd	%xmm8, (%r10)
.LVL1407:
	addq	$8, %r10
	cmpl	%r12d, 60(%rsp)
	jl	.L4278
	addl	$1, %r12d
.LVL1408:
	cmpl	$1, %r11d
	je	.L4277
	cmpl	$2, %r11d
	je	.L4853
	cmpl	$3, %r11d
	je	.L4854
	cmpl	$4, %r11d
	je	.L4855
	cmpl	$5, %r11d
	je	.L4856
	cmpl	$6, %r11d
	je	.L4857
	movsd	(%r10), %xmm1
	addl	$1, %r12d
.LVL1409:
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, (%r10)
.LVL1410:
	addq	$8, %r10
.L4857:
	movsd	(%r10), %xmm9
	addl	$1, %r12d
	mulsd	%xmm0, %xmm9
	movsd	%xmm9, (%r10)
	addq	$8, %r10
.L4856:
	movsd	(%r10), %xmm10
	addl	$1, %r12d
	mulsd	%xmm0, %xmm10
	movsd	%xmm10, (%r10)
	addq	$8, %r10
.L4855:
	movsd	(%r10), %xmm11
	addl	$1, %r12d
	mulsd	%xmm0, %xmm11
	movsd	%xmm11, (%r10)
	addq	$8, %r10
.L4854:
	movsd	(%r10), %xmm12
	addl	$1, %r12d
	mulsd	%xmm0, %xmm12
	movsd	%xmm12, (%r10)
	addq	$8, %r10
.L4853:
	movsd	(%r10), %xmm13
	addl	$1, %r12d
	mulsd	%xmm0, %xmm13
	movsd	%xmm13, (%r10)
	addq	$8, %r10
	jmp	.L4277
.LVL1411:
	.p2align 4,,10
	.p2align 3
.L5154:
	movsd	8(%r10), %xmm1
	addl	$8, %r12d
.LVL1412:
	movsd	16(%r10), %xmm11
	movsd	24(%r10), %xmm12
	movsd	32(%r10), %xmm13
	movsd	40(%r10), %xmm14
	movsd	48(%r10), %xmm15
	movsd	56(%r10), %xmm3
	mulsd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm11
	mulsd	%xmm0, %xmm12
	mulsd	%xmm0, %xmm13
	mulsd	%xmm0, %xmm14
	movsd	%xmm1, 8(%r10)
.LVL1413:
	mulsd	%xmm0, %xmm15
	movsd	%xmm11, 16(%r10)
	mulsd	%xmm0, %xmm3
	movsd	%xmm12, 24(%r10)
	movsd	%xmm13, 32(%r10)
	movsd	%xmm14, 40(%r10)
	movsd	%xmm15, 48(%r10)
	movsd	%xmm3, 56(%r10)
	addq	$64, %r10
.L4277:
	movsd	(%r10), %xmm14
	cmpl	%r12d, 60(%rsp)
	mulsd	%xmm0, %xmm14
	movsd	%xmm14, (%r10)
.LVL1414:
	jge	.L5154
.LVL1415:
.L4278:
	.loc 1 1334 0
	leaq	16(%r8), %rdx
	movl	%ebp, 56(%rsp)
	movl	%r13d, 164(%rsp)
	movl	160(%rsp), %r12d
	movl	140(%rsp), %r13d
	movl	$1, %r9d
	movl	60(%rsp), %ebp
	movq	%r14, 168(%rsp)
	movl	%r9d, %r14d
	movq	$0, 8(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%r15, 48(%rsp)
.LVL1416:
	.p2align 4,,10
	.p2align 3
.L4264:
	.loc 1 1371 0
	cmpl	%r14d, 56(%rsp)
	je	.L4292
	.loc 1 1372 0
	movq	48(%rsp), %r15
	movq	8(%rsp), %rsi
	movq	32(%rsp), %rcx
	movq	8(%r15,%rsi), %r9
	.loc 1 1334 0
	leaq	24(%r9), %rdi
	.loc 1 1372 0
	addq	%r9, %rcx
	leaq	8(%r9), %rax
	movsd	(%rcx), %xmm0
.LVL1417:
	.loc 1 1373 0
	movq	$0, (%rcx)
.LVL1418:
	.loc 1 1334 0
	cmpq	%rdi, %r8
	setae	%r10b
	cmpq	64(%rsp), %rax
	setae	%r11b
	orl	%r11d, %r10d
	cmpl	$11, %ebx
	seta	%dl
	testb	%dl, %r10b
	je	.L4317
	cmpb	$0, 94(%rsp)
	jne	.L4317
	movapd	%xmm0, %xmm15
	cmpl	$4, %r12d
	unpcklpd	%xmm15, %xmm15
	movapd	%xmm15, %xmm1
	jbe	.L4318
	.loc 1 1374 0
	movsd	(%r8), %xmm7
	.loc 1 1334 0
	movq	96(%rsp), %r15
	prefetcht0	312(%r9)
	.loc 1 1374 0
	movsd	8(%r9), %xmm3
	.loc 1 1334 0
	leaq	64(%r8), %r10
	.loc 1 1374 0
	movhpd	8(%r8), %xmm7
	movl	$4, %edi
	movhpd	8(%rax), %xmm3
	.loc 1 1334 0
	addq	%r9, %r15
	movq	%r10, %rcx
	.loc 1 1374 0
	movapd	%xmm7, %xmm8
	movq	%r15, %rsi
	movapd	%xmm3, %xmm9
	subq	%rax, %rsi
	mulpd	%xmm15, %xmm8
	subq	$64, %rsi
	shrq	$6, %rsi
	andl	$1, %esi
	subpd	%xmm8, %xmm9
	movlpd	%xmm9, 8(%r9)
	movhpd	%xmm9, 8(%rax)
.LVL1419:
	movsd	16(%rax), %xmm10
	movsd	16(%r8), %xmm12
	movhpd	24(%rax), %xmm10
	movsd	32(%rax), %xmm14
	movhpd	24(%r8), %xmm12
	movsd	48(%rax), %xmm7
	movapd	%xmm10, %xmm11
	movhpd	40(%rax), %xmm14
	movapd	%xmm12, %xmm13
	movhpd	56(%rax), %xmm7
	mulpd	%xmm15, %xmm13
	movapd	%xmm14, %xmm15
	movapd	%xmm7, %xmm10
	subpd	%xmm13, %xmm11
	movlpd	%xmm11, 16(%rax)
	movhpd	%xmm11, 24(%rax)
	movsd	32(%r8), %xmm3
	movhpd	40(%r8), %xmm3
	movapd	%xmm3, %xmm9
	mulpd	%xmm1, %xmm9
	subpd	%xmm9, %xmm15
	movlpd	%xmm15, 32(%rax)
	movhpd	%xmm15, 40(%rax)
	movsd	48(%r8), %xmm8
	movhpd	56(%r8), %xmm8
	movapd	%xmm8, %xmm11
	mulpd	%xmm1, %xmm11
	subpd	%xmm11, %xmm10
	movlpd	%xmm10, 48(%rax)
	movhpd	%xmm10, 56(%rax)
	.loc 1 1334 0
	leaq	72(%r9), %rax
	cmpq	%r15, %rax
	je	.L4284
	testq	%rsi, %rsi
	je	.L4285
	.loc 1 1374 0
	movsd	64(%r8), %xmm14
	prefetcht0	376(%r9)
	.loc 1 1334 0
	leaq	128(%r8), %rcx
	.loc 1 1374 0
	movsd	72(%r9), %xmm12
	movl	$8, %edi
	movhpd	8(%r10), %xmm14
	movhpd	8(%rax), %xmm12
	movapd	%xmm14, %xmm15
	movapd	%xmm12, %xmm13
	mulpd	%xmm1, %xmm15
	subpd	%xmm15, %xmm13
	movlpd	%xmm13, 72(%r9)
	movhpd	%xmm13, 8(%rax)
	movsd	16(%rax), %xmm3
	movsd	16(%r10), %xmm7
	movhpd	24(%rax), %xmm3
	movsd	32(%rax), %xmm8
	movhpd	24(%r10), %xmm7
	movsd	48(%rax), %xmm14
	movapd	%xmm3, %xmm9
	movhpd	40(%rax), %xmm8
	movapd	%xmm7, %xmm10
	movhpd	56(%rax), %xmm14
	movapd	%xmm8, %xmm11
	mulpd	%xmm1, %xmm10
	movapd	%xmm14, %xmm15
	subpd	%xmm10, %xmm9
	movlpd	%xmm9, 16(%rax)
	movhpd	%xmm9, 24(%rax)
	movsd	32(%r10), %xmm12
	movhpd	40(%r10), %xmm12
	movapd	%xmm12, %xmm13
	mulpd	%xmm1, %xmm13
	subpd	%xmm13, %xmm11
	movlpd	%xmm11, 32(%rax)
	movhpd	%xmm11, 40(%rax)
	movsd	48(%r10), %xmm3
	movhpd	56(%r10), %xmm3
	movapd	%xmm3, %xmm9
	mulpd	%xmm1, %xmm9
	subpd	%xmm9, %xmm15
	movlpd	%xmm15, 48(%rax)
	movhpd	%xmm15, 56(%rax)
	.loc 1 1334 0
	leaq	136(%r9), %rax
	cmpq	%r15, %rax
	je	.L4284
.L4285:
	.loc 1 1374 0 discriminator 2
	movsd	(%rcx), %xmm8
	prefetcht0	304(%rax)
	prefetcht0	368(%rax)
	movsd	(%rax), %xmm7
	addl	$8, %edi
	movhpd	8(%rcx), %xmm8
	movsd	16(%rax), %xmm12
	movhpd	8(%rax), %xmm7
	movsd	32(%rax), %xmm3
	movapd	%xmm8, %xmm11
	movhpd	24(%rax), %xmm12
	movapd	%xmm7, %xmm10
	movhpd	40(%rax), %xmm3
	mulpd	%xmm1, %xmm11
	movapd	%xmm12, %xmm13
	movapd	%xmm3, %xmm9
	movsd	48(%rax), %xmm8
	movhpd	56(%rax), %xmm8
	subpd	%xmm11, %xmm10
	movapd	%xmm8, %xmm11
	movlpd	%xmm10, (%rax)
	movhpd	%xmm10, 8(%rax)
	movsd	16(%rcx), %xmm14
	movhpd	24(%rcx), %xmm14
	movapd	%xmm14, %xmm15
	movsd	64(%rax), %xmm14
	mulpd	%xmm1, %xmm15
	movhpd	72(%rax), %xmm14
	subpd	%xmm15, %xmm13
	movapd	%xmm14, %xmm15
	movlpd	%xmm13, 16(%rax)
	movhpd	%xmm13, 24(%rax)
	movsd	32(%rcx), %xmm7
	movhpd	40(%rcx), %xmm7
	movapd	%xmm7, %xmm10
	movsd	80(%rax), %xmm7
	mulpd	%xmm1, %xmm10
	movhpd	88(%rax), %xmm7
	subpd	%xmm10, %xmm9
	movapd	%xmm7, %xmm10
	movlpd	%xmm9, 32(%rax)
	movhpd	%xmm9, 40(%rax)
	movsd	48(%rcx), %xmm12
	movhpd	56(%rcx), %xmm12
	movapd	%xmm12, %xmm13
	mulpd	%xmm1, %xmm13
	subpd	%xmm13, %xmm11
	movlpd	%xmm11, 48(%rax)
	movhpd	%xmm11, 56(%rax)
	movsd	64(%rcx), %xmm3
	movhpd	72(%rcx), %xmm3
	movapd	%xmm3, %xmm9
	mulpd	%xmm1, %xmm9
	subpd	%xmm9, %xmm15
	movlpd	%xmm15, 64(%rax)
	movhpd	%xmm15, 72(%rax)
	movsd	80(%rcx), %xmm8
	movhpd	88(%rcx), %xmm8
	movapd	%xmm8, %xmm11
	mulpd	%xmm1, %xmm11
	subpd	%xmm11, %xmm10
	movlpd	%xmm10, 80(%rax)
	movhpd	%xmm10, 88(%rax)
	movsd	96(%rax), %xmm12
	movsd	96(%rcx), %xmm14
	movhpd	104(%rax), %xmm12
	movsd	112(%rax), %xmm3
	movhpd	104(%rcx), %xmm14
	movapd	%xmm12, %xmm13
	movhpd	120(%rax), %xmm3
	movapd	%xmm14, %xmm15
	movapd	%xmm3, %xmm9
	mulpd	%xmm1, %xmm15
	subpd	%xmm15, %xmm13
	movlpd	%xmm13, 96(%rax)
	movhpd	%xmm13, 104(%rax)
	movsd	112(%rcx), %xmm7
	movhpd	120(%rcx), %xmm7
	.loc 1 1334 0 discriminator 2
	subq	$-128, %rcx
	.loc 1 1374 0 discriminator 2
	movapd	%xmm7, %xmm10
	mulpd	%xmm1, %xmm10
	subpd	%xmm10, %xmm9
	movlpd	%xmm9, 112(%rax)
	movhpd	%xmm9, 120(%rax)
	.loc 1 1334 0 discriminator 2
	subq	$-128, %rax
	cmpq	%r15, %rax
	jne	.L4285
.L4284:
	.loc 1 1374 0
	movsd	(%rcx), %xmm12
	movl	%edi, %r11d
	movsd	(%rax), %xmm8
	notl	%r11d
	movhpd	8(%rcx), %xmm12
	leal	1(%rdi), %r15d
	addl	%r12d, %r11d
	movhpd	8(%rax), %xmm8
	andl	$3, %r11d
	movl	$16, %edx
	movapd	%xmm12, %xmm13
	cmpl	%r15d, %r12d
	movapd	%xmm8, %xmm11
	mulpd	%xmm1, %xmm13
	subpd	%xmm13, %xmm11
	movlpd	%xmm11, (%rax)
	movhpd	%xmm11, 8(%rax)
	jbe	.L5080
	testl	%r11d, %r11d
	je	.L4290
	cmpl	$1, %r11d
	je	.L4851
	cmpl	$2, %r11d
	je	.L4852
	movsd	16(%rcx), %xmm3
	leal	2(%rdi), %r15d
	movsd	16(%rax), %xmm14
	movl	$32, %edx
	movhpd	24(%rcx), %xmm3
	movhpd	24(%rax), %xmm14
	movapd	%xmm3, %xmm9
	movapd	%xmm14, %xmm15
	mulpd	%xmm1, %xmm9
	subpd	%xmm9, %xmm15
	movlpd	%xmm15, 16(%rax)
	movhpd	%xmm15, 24(%rax)
.L4852:
	movsd	(%rcx,%rdx), %xmm8
	addl	$1, %r15d
	movsd	(%rax,%rdx), %xmm7
	movhpd	8(%rcx,%rdx), %xmm8
	movhpd	8(%rax,%rdx), %xmm7
	movapd	%xmm8, %xmm11
	movapd	%xmm7, %xmm10
	mulpd	%xmm1, %xmm11
	subpd	%xmm11, %xmm10
	movlpd	%xmm10, (%rax,%rdx)
	movhpd	%xmm10, 8(%rax,%rdx)
	addq	$16, %rdx
.L4851:
	movsd	(%rcx,%rdx), %xmm14
	addl	$1, %r15d
	movsd	(%rax,%rdx), %xmm12
	movhpd	8(%rcx,%rdx), %xmm14
	movhpd	8(%rax,%rdx), %xmm12
	movapd	%xmm14, %xmm15
	movapd	%xmm12, %xmm13
	mulpd	%xmm1, %xmm15
	subpd	%xmm15, %xmm13
	movlpd	%xmm13, (%rax,%rdx)
	movhpd	%xmm13, 8(%rax,%rdx)
	addq	$16, %rdx
	cmpl	%r15d, %r12d
	jbe	.L5080
.L4290:
	movsd	(%rcx,%rdx), %xmm7
	addl	$4, %r15d
	movsd	(%rax,%rdx), %xmm3
	movhpd	8(%rcx,%rdx), %xmm7
	movsd	16(%rax,%rdx), %xmm8
	movhpd	8(%rax,%rdx), %xmm3
	movsd	32(%rax,%rdx), %xmm14
	movapd	%xmm7, %xmm10
	movhpd	24(%rax,%rdx), %xmm8
	movapd	%xmm3, %xmm9
	movhpd	40(%rax,%rdx), %xmm14
	mulpd	%xmm1, %xmm10
	movapd	%xmm8, %xmm11
	movapd	%xmm14, %xmm15
	movsd	48(%rax,%rdx), %xmm7
	movhpd	56(%rax,%rdx), %xmm7
	subpd	%xmm10, %xmm9
	movapd	%xmm7, %xmm10
	movlpd	%xmm9, (%rax,%rdx)
	movhpd	%xmm9, 8(%rax,%rdx)
	movsd	16(%rcx,%rdx), %xmm12
	movhpd	24(%rcx,%rdx), %xmm12
	movapd	%xmm12, %xmm13
	mulpd	%xmm1, %xmm13
	subpd	%xmm13, %xmm11
	movlpd	%xmm11, 16(%rax,%rdx)
	movhpd	%xmm11, 24(%rax,%rdx)
	movsd	32(%rcx,%rdx), %xmm3
	movhpd	40(%rcx,%rdx), %xmm3
	movapd	%xmm3, %xmm9
	mulpd	%xmm1, %xmm9
	subpd	%xmm9, %xmm15
	movlpd	%xmm15, 32(%rax,%rdx)
	movhpd	%xmm15, 40(%rax,%rdx)
	movsd	48(%rcx,%rdx), %xmm8
	movhpd	56(%rcx,%rdx), %xmm8
	movapd	%xmm8, %xmm11
	mulpd	%xmm1, %xmm11
	subpd	%xmm11, %xmm10
	movlpd	%xmm10, 48(%rax,%rdx)
	movhpd	%xmm10, 56(%rax,%rdx)
	addq	$64, %rdx
	cmpl	%r15d, %r12d
	ja	.L4290
.L5080:
	cmpl	%ebx, 76(%rsp)
	je	.L4286
	movl	136(%rsp), %edi
.L4283:
	.loc 1 1334 0
	cmpl	%edi, %ebx
	leal	1(%rdi), %ecx
	setge	%sil
	cmpl	$-2147483642, %ebx
	setge	%r10b
	testb	%r10b, %sil
	je	.L4287
	cmpl	20(%rsp), %ecx
	jge	.L4287
	movslq	%edi, %rax
	movl	20(%rsp), %r11d
	leaq	152(,%rax,8), %r15
	leaq	(%r9,%r15), %rsi
	addq	24(%rsp), %r15
	subl	%edi, %r11d
	subl	$2, %r11d
	.loc 1 1374 0
	addl	$8, %edi
	movsd	-152(%rsi), %xmm1
	shrl	$3, %r11d
	.loc 1 1334 0
	leal	1(%rdi), %ecx
	.loc 1 1374 0
	movsd	-144(%rsi), %xmm14
	andl	$1, %r11d
	prefetcht0	(%rsi)
	movsd	-152(%r15), %xmm12
	cmpl	20(%rsp), %ecx
	prefetcht0	(%r15)
	movsd	-136(%rsi), %xmm3
	leaq	64(%rsi), %rax
	mulsd	%xmm0, %xmm12
	leaq	64(%r15), %rdx
	movsd	-128(%rsi), %xmm7
	movsd	-120(%rsi), %xmm8
	subsd	%xmm12, %xmm1
	movsd	-112(%rsi), %xmm12
	movsd	%xmm1, -152(%rsi)
	movsd	-104(%rsi), %xmm1
	movsd	-144(%r15), %xmm13
	mulsd	%xmm0, %xmm13
	subsd	%xmm13, %xmm14
	movsd	%xmm14, -144(%rsi)
	movsd	-136(%r15), %xmm15
	mulsd	%xmm0, %xmm15
	subsd	%xmm15, %xmm3
	movsd	-96(%rsi), %xmm15
	movsd	%xmm3, -136(%rsi)
	movsd	-128(%r15), %xmm9
	mulsd	%xmm0, %xmm9
	subsd	%xmm9, %xmm7
	movsd	%xmm7, -128(%rsi)
	movsd	-120(%r15), %xmm10
	mulsd	%xmm0, %xmm10
	subsd	%xmm10, %xmm8
	movsd	%xmm8, -120(%rsi)
	movsd	-112(%r15), %xmm11
	mulsd	%xmm0, %xmm11
	subsd	%xmm11, %xmm12
	movsd	%xmm12, -112(%rsi)
	movsd	-104(%r15), %xmm13
	mulsd	%xmm0, %xmm13
	subsd	%xmm13, %xmm1
	movsd	%xmm1, -104(%rsi)
.LVL1420:
	movsd	-96(%r15), %xmm14
	mulsd	%xmm0, %xmm14
	subsd	%xmm14, %xmm15
	movsd	%xmm15, -96(%rsi)
	jge	.L4287
	testl	%r11d, %r11d
	je	.L5103
	movsd	-152(%rdx), %xmm3
	addl	$8, %edi
.LVL1421:
	prefetcht0	(%rax)
	movsd	-152(%rax), %xmm9
	.loc 1 1334 0
	leal	1(%rdi), %ecx
	prefetcht0	(%rdx)
	.loc 1 1374 0
	mulsd	%xmm0, %xmm3
	cmpl	20(%rsp), %ecx
	movsd	-144(%rax), %xmm10
	movsd	-136(%rax), %xmm11
	movsd	-128(%rax), %xmm13
	subsd	%xmm3, %xmm9
	movsd	-120(%rax), %xmm1
	movsd	-112(%rax), %xmm3
	movsd	%xmm9, -152(%rax)
.LVL1422:
	movsd	-144(%rdx), %xmm7
	mulsd	%xmm0, %xmm7
	subsd	%xmm7, %xmm10
	movsd	-104(%rax), %xmm7
	movsd	%xmm10, -144(%rax)
	movsd	-136(%rdx), %xmm8
	mulsd	%xmm0, %xmm8
	subsd	%xmm8, %xmm11
	movsd	-96(%rax), %xmm8
	movsd	%xmm11, -136(%rax)
	movsd	-128(%rdx), %xmm12
	mulsd	%xmm0, %xmm12
	subsd	%xmm12, %xmm13
	movsd	%xmm13, -128(%rax)
	movsd	-120(%rdx), %xmm14
	mulsd	%xmm0, %xmm14
	subsd	%xmm14, %xmm1
	movsd	%xmm1, -120(%rax)
	movsd	-112(%rdx), %xmm15
	mulsd	%xmm0, %xmm15
	subsd	%xmm15, %xmm3
	movsd	%xmm3, -112(%rax)
	movsd	-104(%rdx), %xmm9
	mulsd	%xmm0, %xmm9
	subsd	%xmm9, %xmm7
	movsd	%xmm7, -104(%rax)
.LVL1423:
	movsd	-96(%rdx), %xmm10
	leaq	128(%r15), %rdx
	mulsd	%xmm0, %xmm10
	subsd	%xmm10, %xmm8
	movsd	%xmm8, -96(%rax)
	leaq	128(%rsi), %rax
	jge	.L4287
.L5103:
	movl	20(%rsp), %r10d
.L4288:
	movsd	-152(%rdx), %xmm11
	leaq	64(%rax), %r15
	prefetcht0	(%rax)
	movsd	-152(%rax), %xmm12
	addl	$16, %edi
.LVL1424:
	prefetcht0	(%rdx)
	mulsd	%xmm0, %xmm11
	.loc 1 1334 0
	leal	1(%rdi), %ecx
	leaq	64(%rdx), %rsi
	.loc 1 1374 0
	movsd	-144(%rax), %xmm14
	prefetcht0	(%r15)
	movsd	-136(%rax), %xmm1
	prefetcht0	(%rsi)
	movsd	-128(%rax), %xmm9
	subsd	%xmm11, %xmm12
	movsd	-120(%rax), %xmm10
	movsd	-112(%rax), %xmm11
	movsd	%xmm12, -152(%rax)
.LVL1425:
	movsd	-144(%rdx), %xmm13
	mulsd	%xmm0, %xmm13
	subsd	%xmm13, %xmm14
	movsd	-104(%rax), %xmm13
	movsd	%xmm14, -144(%rax)
	movsd	-136(%rdx), %xmm15
	mulsd	%xmm0, %xmm15
	subsd	%xmm15, %xmm1
	movsd	-96(%rax), %xmm15
	movsd	%xmm1, -136(%rax)
	movsd	-128(%rdx), %xmm3
	mulsd	%xmm0, %xmm3
	subsd	%xmm3, %xmm9
	movsd	%xmm9, -128(%rax)
	movsd	-120(%rdx), %xmm7
	mulsd	%xmm0, %xmm7
	subsd	%xmm7, %xmm10
	movsd	%xmm10, -120(%rax)
	movsd	-112(%rdx), %xmm8
	mulsd	%xmm0, %xmm8
	subsd	%xmm8, %xmm11
	movsd	%xmm11, -112(%rax)
	movsd	-104(%rdx), %xmm12
	mulsd	%xmm0, %xmm12
	subsd	%xmm12, %xmm13
	movsd	%xmm13, -104(%rax)
	movsd	-96(%rdx), %xmm14
	mulsd	%xmm0, %xmm14
	subsd	%xmm14, %xmm15
	movsd	%xmm15, -96(%rax)
	subq	$-128, %rax
	movsd	-88(%rdx), %xmm3
	movsd	-152(%r15), %xmm1
	mulsd	%xmm0, %xmm3
	movsd	-144(%r15), %xmm7
	movsd	-136(%r15), %xmm8
	movsd	-128(%r15), %xmm12
	subsd	%xmm3, %xmm1
	movsd	%xmm1, -152(%r15)
	movsd	-80(%rdx), %xmm9
	mulsd	%xmm0, %xmm9
	subsd	%xmm9, %xmm7
	movsd	%xmm7, -144(%r15)
	movsd	-72(%rdx), %xmm10
	mulsd	%xmm0, %xmm10
	subsd	%xmm10, %xmm8
	movsd	%xmm8, -136(%r15)
	movsd	-64(%rdx), %xmm11
	mulsd	%xmm0, %xmm11
	subsd	%xmm11, %xmm12
	movsd	%xmm12, -128(%r15)
	movsd	-56(%rdx), %xmm13
	movsd	-120(%r15), %xmm14
	mulsd	%xmm0, %xmm13
	movsd	-112(%r15), %xmm3
	movsd	-104(%r15), %xmm1
	movsd	-96(%r15), %xmm10
	subsd	%xmm13, %xmm14
	movsd	%xmm14, -120(%r15)
	movsd	-48(%rdx), %xmm15
	mulsd	%xmm0, %xmm15
	subsd	%xmm15, %xmm3
	movsd	%xmm3, -112(%r15)
	movsd	-40(%rdx), %xmm9
	mulsd	%xmm0, %xmm9
	subsd	%xmm9, %xmm1
	movsd	%xmm1, -104(%r15)
.LVL1426:
	movsd	-32(%rdx), %xmm7
	subq	$-128, %rdx
	cmpl	%r10d, %ecx
	mulsd	%xmm0, %xmm7
	subsd	%xmm7, %xmm10
	movsd	%xmm10, -96(%r15)
	jl	.L4288
.LVL1427:
.L4287:
	movl	%ebx, %eax
	.loc 1 1334 0
	movslq	%edi, %r11
	subl	%ecx, %eax
	salq	$3, %r11
	addl	$1, %eax
	addq	%r11, %r9
	addq	24(%rsp), %r11
	andl	$7, %eax
	je	.L4289
	.loc 1 1374 0
	movsd	(%r11), %xmm8
	addq	$8, %r11
	movsd	(%r9), %xmm11
	mulsd	%xmm0, %xmm8
	subsd	%xmm8, %xmm11
	movsd	%xmm11, (%r9)
.LVL1428:
	addq	$8, %r9
	cmpl	%ecx, %ebx
	jl	.L4286
	addl	$1, %ecx
.LVL1429:
	cmpl	$1, %eax
	je	.L4289
	cmpl	$2, %eax
	je	.L4846
	cmpl	$3, %eax
	je	.L4847
	cmpl	$4, %eax
	.p2align 4,,2
	je	.L4848
	cmpl	$5, %eax
	.p2align 4,,2
	je	.L4849
	cmpl	$6, %eax
	.p2align 4,,2
	je	.L4850
	movsd	(%r11), %xmm12
	addl	$1, %ecx
.LVL1430:
	movsd	(%r9), %xmm13
	addq	$8, %r11
	mulsd	%xmm0, %xmm12
	subsd	%xmm12, %xmm13
	movsd	%xmm13, (%r9)
.LVL1431:
	addq	$8, %r9
.L4850:
	movsd	(%r11), %xmm14
	addl	$1, %ecx
	movsd	(%r9), %xmm15
	addq	$8, %r11
	mulsd	%xmm0, %xmm14
	subsd	%xmm14, %xmm15
	movsd	%xmm15, (%r9)
	addq	$8, %r9
.L4849:
	movsd	(%r11), %xmm3
	addl	$1, %ecx
	movsd	(%r9), %xmm9
	addq	$8, %r11
	mulsd	%xmm0, %xmm3
	subsd	%xmm3, %xmm9
	movsd	%xmm9, (%r9)
	addq	$8, %r9
.L4848:
	movsd	(%r11), %xmm7
	addl	$1, %ecx
	movsd	(%r9), %xmm1
	addq	$8, %r11
	mulsd	%xmm0, %xmm7
	subsd	%xmm7, %xmm1
	movsd	%xmm1, (%r9)
	addq	$8, %r9
.L4847:
	movsd	(%r11), %xmm10
	addl	$1, %ecx
	movsd	(%r9), %xmm8
	addq	$8, %r11
	mulsd	%xmm0, %xmm10
	subsd	%xmm10, %xmm8
	movsd	%xmm8, (%r9)
	addq	$8, %r9
.L4846:
	movsd	(%r11), %xmm11
	addl	$1, %ecx
	movsd	(%r9), %xmm12
	addq	$8, %r11
	mulsd	%xmm0, %xmm11
	subsd	%xmm11, %xmm12
	movsd	%xmm12, (%r9)
	addq	$8, %r9
	jmp	.L4289
.LVL1432:
	.p2align 4,,10
	.p2align 3
.L5155:
	movsd	8(%r11), %xmm7
	addl	$8, %ecx
.LVL1433:
	movsd	8(%r9), %xmm10
	mulsd	%xmm0, %xmm7
	movsd	16(%r9), %xmm1
	movsd	24(%r9), %xmm12
	movsd	32(%r9), %xmm14
	subsd	%xmm7, %xmm10
	movsd	40(%r9), %xmm3
	movsd	48(%r9), %xmm7
	movsd	%xmm10, 8(%r9)
.LVL1434:
	movsd	16(%r11), %xmm8
	mulsd	%xmm0, %xmm8
	subsd	%xmm8, %xmm1
	movsd	56(%r9), %xmm8
	movsd	%xmm1, 16(%r9)
	movsd	24(%r11), %xmm11
	mulsd	%xmm0, %xmm11
	subsd	%xmm11, %xmm12
	movsd	%xmm12, 24(%r9)
	movsd	32(%r11), %xmm13
	mulsd	%xmm0, %xmm13
	subsd	%xmm13, %xmm14
	movsd	%xmm14, 32(%r9)
	movsd	40(%r11), %xmm15
	mulsd	%xmm0, %xmm15
	subsd	%xmm15, %xmm3
	movsd	%xmm3, 40(%r9)
	movsd	48(%r11), %xmm9
	mulsd	%xmm0, %xmm9
	subsd	%xmm9, %xmm7
	movsd	%xmm7, 48(%r9)
	movsd	56(%r11), %xmm10
	addq	$64, %r11
	mulsd	%xmm0, %xmm10
	subsd	%xmm10, %xmm8
	movsd	%xmm8, 56(%r9)
	addq	$64, %r9
.L4289:
	movsd	(%r11), %xmm13
	cmpl	%ecx, %ebx
	movsd	(%r9), %xmm14
	mulsd	%xmm0, %xmm13
	subsd	%xmm13, %xmm14
	movsd	%xmm14, (%r9)
.LVL1435:
	jge	.L5155
.LVL1436:
.L4286:
	.loc 1 1375 0
	testl	%ebp, %ebp
	jle	.L4292
	movq	40(%rsp), %rdx
	movq	32(%rsp), %rcx
	movq	8(%rsp), %r9
	movq	(%rdx,%rcx), %r11
	movq	8(%rdx,%r9), %r9
	leaq	8(%r11), %rcx
	.loc 1 1334 0
	leaq	24(%r11), %r15
	leaq	24(%r9), %rdi
	leaq	8(%r9), %rax
	cmpq	%rdi, %rcx
	setae	%r10b
	cmpq	%r15, %rax
	setae	%sil
	orl	%esi, %r10d
	cmpl	$11, %ebp
	seta	%dl
	testb	%dl, %r10b
	je	.L4319
	cmpb	$0, 95(%rsp)
	jne	.L4319
	movapd	%xmm0, %xmm15
	cmpl	$4, %r13d
	unpcklpd	%xmm15, %xmm15
	movapd	%xmm15, %xmm1
	jbe	.L4320
	.loc 1 1375 0
	movsd	8(%r11), %xmm7
	.loc 1 1334 0
	movq	104(%rsp), %r10
	prefetcht0	312(%r9)
	.loc 1 1375 0
	movsd	8(%r9), %xmm3
	.loc 1 1334 0
	leaq	72(%r11), %rsi
	.loc 1 1375 0
	movhpd	8(%rcx), %xmm7
	movl	$4, %edi
	movhpd	8(%rax), %xmm3
	.loc 1 1334 0
	addq	%r9, %r10
	.loc 1 1375 0
	movapd	%xmm7, %xmm10
	movq	%r10, %r15
	movapd	%xmm3, %xmm9
	subq	%rax, %r15
	mulpd	%xmm15, %xmm10
	subq	$64, %r15
	shrq	$6, %r15
	andl	$1, %r15d
	subpd	%xmm10, %xmm9
	movlpd	%xmm9, 8(%r9)
	movhpd	%xmm9, 8(%rax)
.LVL1437:
	movsd	16(%rax), %xmm8
	movsd	16(%rcx), %xmm12
	movhpd	24(%rax), %xmm8
	movsd	32(%rax), %xmm14
	movhpd	24(%rcx), %xmm12
	movsd	48(%rax), %xmm7
	movapd	%xmm8, %xmm11
	movhpd	40(%rax), %xmm14
	movapd	%xmm12, %xmm13
	movhpd	56(%rax), %xmm7
	mulpd	%xmm15, %xmm13
	movapd	%xmm14, %xmm15
	movapd	%xmm7, %xmm10
	subpd	%xmm13, %xmm11
	movlpd	%xmm11, 16(%rax)
	movhpd	%xmm11, 24(%rax)
	movsd	32(%rcx), %xmm3
	movhpd	40(%rcx), %xmm3
	movapd	%xmm3, %xmm9
	mulpd	%xmm1, %xmm9
	subpd	%xmm9, %xmm15
	movlpd	%xmm15, 32(%rax)
	movhpd	%xmm15, 40(%rax)
	movsd	48(%rcx), %xmm8
	movhpd	56(%rcx), %xmm8
	.loc 1 1334 0
	movq	%rsi, %rcx
	.loc 1 1375 0
	movapd	%xmm8, %xmm11
	mulpd	%xmm1, %xmm11
	subpd	%xmm11, %xmm10
	movlpd	%xmm10, 48(%rax)
	movhpd	%xmm10, 56(%rax)
	.loc 1 1334 0
	leaq	72(%r9), %rax
	cmpq	%rax, %r10
	je	.L4294
	testq	%r15, %r15
	je	.L4295
	.loc 1 1375 0
	movsd	72(%r11), %xmm14
	prefetcht0	376(%r9)
	.loc 1 1334 0
	leaq	136(%r11), %rcx
	.loc 1 1375 0
	movsd	72(%r9), %xmm12
	movl	$8, %edi
	movhpd	8(%rsi), %xmm14
	movhpd	8(%rax), %xmm12
	movapd	%xmm14, %xmm15
	movapd	%xmm12, %xmm13
	mulpd	%xmm1, %xmm15
	subpd	%xmm15, %xmm13
	movlpd	%xmm13, 72(%r9)
	movhpd	%xmm13, 8(%rax)
	movsd	16(%rax), %xmm3
	movsd	16(%rsi), %xmm7
	movhpd	24(%rax), %xmm3
	movsd	32(%rax), %xmm8
	movhpd	24(%rsi), %xmm7
	movsd	48(%rax), %xmm14
	movapd	%xmm3, %xmm9
	movhpd	40(%rax), %xmm8
	movapd	%xmm7, %xmm10
	movhpd	56(%rax), %xmm14
	movapd	%xmm8, %xmm11
	mulpd	%xmm1, %xmm10
	movapd	%xmm14, %xmm15
	subpd	%xmm10, %xmm9
	movlpd	%xmm9, 16(%rax)
	movhpd	%xmm9, 24(%rax)
	movsd	32(%rsi), %xmm12
	movhpd	40(%rsi), %xmm12
	movapd	%xmm12, %xmm13
	mulpd	%xmm1, %xmm13
	subpd	%xmm13, %xmm11
	movlpd	%xmm11, 32(%rax)
	movhpd	%xmm11, 40(%rax)
	movsd	48(%rsi), %xmm3
	movhpd	56(%rsi), %xmm3
	movapd	%xmm3, %xmm9
	mulpd	%xmm1, %xmm9
	subpd	%xmm9, %xmm15
	movlpd	%xmm15, 48(%rax)
	movhpd	%xmm15, 56(%rax)
	.loc 1 1334 0
	leaq	136(%r9), %rax
	cmpq	%rax, %r10
	je	.L4294
.L4295:
	.loc 1 1375 0 discriminator 2
	movsd	(%rcx), %xmm8
	prefetcht0	304(%rax)
	prefetcht0	368(%rax)
	movsd	(%rax), %xmm7
	addl	$8, %edi
	movhpd	8(%rcx), %xmm8
	movsd	16(%rax), %xmm12
	movhpd	8(%rax), %xmm7
	movsd	32(%rax), %xmm3
	movapd	%xmm8, %xmm11
	movhpd	24(%rax), %xmm12
	movapd	%xmm7, %xmm10
	movhpd	40(%rax), %xmm3
	mulpd	%xmm1, %xmm11
	movapd	%xmm12, %xmm13
	movapd	%xmm3, %xmm9
	movsd	48(%rax), %xmm8
	movhpd	56(%rax), %xmm8
	subpd	%xmm11, %xmm10
	movapd	%xmm8, %xmm11
	movlpd	%xmm10, (%rax)
	movhpd	%xmm10, 8(%rax)
	movsd	16(%rcx), %xmm14
	movhpd	24(%rcx), %xmm14
	movapd	%xmm14, %xmm15
	movsd	64(%rax), %xmm14
	mulpd	%xmm1, %xmm15
	movhpd	72(%rax), %xmm14
	subpd	%xmm15, %xmm13
	movapd	%xmm14, %xmm15
	movlpd	%xmm13, 16(%rax)
	movhpd	%xmm13, 24(%rax)
	movsd	32(%rcx), %xmm7
	movhpd	40(%rcx), %xmm7
	movapd	%xmm7, %xmm10
	movsd	80(%rax), %xmm7
	mulpd	%xmm1, %xmm10
	movhpd	88(%rax), %xmm7
	subpd	%xmm10, %xmm9
	movapd	%xmm7, %xmm10
	movlpd	%xmm9, 32(%rax)
	movhpd	%xmm9, 40(%rax)
	movsd	48(%rcx), %xmm12
	movhpd	56(%rcx), %xmm12
	movapd	%xmm12, %xmm13
	mulpd	%xmm1, %xmm13
	subpd	%xmm13, %xmm11
	movlpd	%xmm11, 48(%rax)
	movhpd	%xmm11, 56(%rax)
	movsd	64(%rcx), %xmm3
	movhpd	72(%rcx), %xmm3
	movapd	%xmm3, %xmm9
	mulpd	%xmm1, %xmm9
	subpd	%xmm9, %xmm15
	movlpd	%xmm15, 64(%rax)
	movhpd	%xmm15, 72(%rax)
	movsd	80(%rcx), %xmm8
	movhpd	88(%rcx), %xmm8
	movapd	%xmm8, %xmm11
	mulpd	%xmm1, %xmm11
	subpd	%xmm11, %xmm10
	movlpd	%xmm10, 80(%rax)
	movhpd	%xmm10, 88(%rax)
	movsd	96(%rax), %xmm12
	movsd	96(%rcx), %xmm14
	movhpd	104(%rax), %xmm12
	movsd	112(%rax), %xmm3
	movhpd	104(%rcx), %xmm14
	movapd	%xmm12, %xmm13
	movhpd	120(%rax), %xmm3
	movapd	%xmm14, %xmm15
	movapd	%xmm3, %xmm9
	mulpd	%xmm1, %xmm15
	subpd	%xmm15, %xmm13
	movlpd	%xmm13, 96(%rax)
	movhpd	%xmm13, 104(%rax)
	movsd	112(%rcx), %xmm7
	movhpd	120(%rcx), %xmm7
	.loc 1 1334 0 discriminator 2
	subq	$-128, %rcx
	.loc 1 1375 0 discriminator 2
	movapd	%xmm7, %xmm10
	mulpd	%xmm1, %xmm10
	subpd	%xmm10, %xmm9
	movlpd	%xmm9, 112(%rax)
	movhpd	%xmm9, 120(%rax)
	.loc 1 1334 0 discriminator 2
	subq	$-128, %rax
	cmpq	%rax, %r10
	jne	.L4295
.L4294:
	.loc 1 1375 0
	movsd	(%rcx), %xmm12
	movl	%edi, %r10d
	movsd	(%rax), %xmm8
	notl	%r10d
	movhpd	8(%rcx), %xmm12
	leal	1(%rdi), %r15d
	addl	%r13d, %r10d
	movhpd	8(%rax), %xmm8
	andl	$3, %r10d
	movl	$16, %edx
	movapd	%xmm12, %xmm13
	cmpl	%r15d, %r13d
	movapd	%xmm8, %xmm11
	mulpd	%xmm1, %xmm13
	subpd	%xmm13, %xmm11
	movlpd	%xmm11, (%rax)
	movhpd	%xmm11, 8(%rax)
	jbe	.L5082
	testl	%r10d, %r10d
	je	.L4300
	cmpl	$1, %r10d
	je	.L4844
	cmpl	$2, %r10d
	je	.L4845
	movsd	16(%rcx), %xmm3
	leal	2(%rdi), %r15d
	movsd	16(%rax), %xmm14
	movl	$32, %edx
	movhpd	24(%rcx), %xmm3
	movhpd	24(%rax), %xmm14
	movapd	%xmm3, %xmm9
	movapd	%xmm14, %xmm15
	mulpd	%xmm1, %xmm9
	subpd	%xmm9, %xmm15
	movlpd	%xmm15, 16(%rax)
	movhpd	%xmm15, 24(%rax)
.L4845:
	movsd	(%rcx,%rdx), %xmm8
	addl	$1, %r15d
	movsd	(%rax,%rdx), %xmm7
	movhpd	8(%rcx,%rdx), %xmm8
	movhpd	8(%rax,%rdx), %xmm7
	movapd	%xmm8, %xmm11
	movapd	%xmm7, %xmm10
	mulpd	%xmm1, %xmm11
	subpd	%xmm11, %xmm10
	movlpd	%xmm10, (%rax,%rdx)
	movhpd	%xmm10, 8(%rax,%rdx)
	addq	$16, %rdx
.L4844:
	movsd	(%rcx,%rdx), %xmm14
	addl	$1, %r15d
	movsd	(%rax,%rdx), %xmm12
	movhpd	8(%rcx,%rdx), %xmm14
	movhpd	8(%rax,%rdx), %xmm12
	movapd	%xmm14, %xmm15
	movapd	%xmm12, %xmm13
	mulpd	%xmm1, %xmm15
	subpd	%xmm15, %xmm13
	movlpd	%xmm13, (%rax,%rdx)
	movhpd	%xmm13, 8(%rax,%rdx)
	addq	$16, %rdx
	cmpl	%r15d, %r13d
	jbe	.L5082
.L4300:
	movsd	(%rcx,%rdx), %xmm7
	addl	$4, %r15d
	movsd	(%rax,%rdx), %xmm3
	movhpd	8(%rcx,%rdx), %xmm7
	movsd	16(%rax,%rdx), %xmm8
	movhpd	8(%rax,%rdx), %xmm3
	movsd	32(%rax,%rdx), %xmm14
	movapd	%xmm7, %xmm10
	movhpd	24(%rax,%rdx), %xmm8
	movapd	%xmm3, %xmm9
	movhpd	40(%rax,%rdx), %xmm14
	mulpd	%xmm1, %xmm10
	movapd	%xmm8, %xmm11
	movapd	%xmm14, %xmm15
	movsd	48(%rax,%rdx), %xmm7
	movhpd	56(%rax,%rdx), %xmm7
	subpd	%xmm10, %xmm9
	movapd	%xmm7, %xmm10
	movlpd	%xmm9, (%rax,%rdx)
	movhpd	%xmm9, 8(%rax,%rdx)
	movsd	16(%rcx,%rdx), %xmm12
	movhpd	24(%rcx,%rdx), %xmm12
	movapd	%xmm12, %xmm13
	mulpd	%xmm1, %xmm13
	subpd	%xmm13, %xmm11
	movlpd	%xmm11, 16(%rax,%rdx)
	movhpd	%xmm11, 24(%rax,%rdx)
	movsd	32(%rcx,%rdx), %xmm3
	movhpd	40(%rcx,%rdx), %xmm3
	movapd	%xmm3, %xmm9
	mulpd	%xmm1, %xmm9
	subpd	%xmm9, %xmm15
	movlpd	%xmm15, 32(%rax,%rdx)
	movhpd	%xmm15, 40(%rax,%rdx)
	movsd	48(%rcx,%rdx), %xmm8
	movhpd	56(%rcx,%rdx), %xmm8
	movapd	%xmm8, %xmm11
	mulpd	%xmm1, %xmm11
	subpd	%xmm11, %xmm10
	movlpd	%xmm10, 48(%rax,%rdx)
	movhpd	%xmm10, 56(%rax,%rdx)
	addq	$64, %rdx
	cmpl	%r15d, %r13d
	ja	.L4300
.L5082:
	cmpl	%ebp, 72(%rsp)
	je	.L4292
	movl	88(%rsp), %edi
.L4293:
	.loc 1 1334 0
	leal	1(%rdi), %ecx
	cmpl	16(%rsp), %ecx
	jge	.L4297
	cmpl	%edi, %ebp
	jl	.L4297
	movslq	%edi, %rsi
	movl	16(%rsp), %r15d
	leaq	152(,%rsi,8), %r10
	leaq	(%r9,%r10), %rsi
	addq	%r11, %r10
	subl	%edi, %r15d
	.loc 1 1375 0
	movsd	-152(%r10), %xmm12
	subl	$2, %r15d
	prefetcht0	(%r10)
	movsd	-152(%rsi), %xmm1
	shrl	$3, %r15d
	prefetcht0	(%rsi)
	mulsd	%xmm0, %xmm12
	addl	$8, %edi
	andl	$1, %r15d
	movsd	-144(%rsi), %xmm14
	.loc 1 1334 0
	leal	1(%rdi), %ecx
	.loc 1 1375 0
	movsd	-136(%rsi), %xmm3
	cmpl	16(%rsp), %ecx
	movsd	-128(%rsi), %xmm7
	leaq	64(%rsi), %rax
	subsd	%xmm12, %xmm1
	movsd	-120(%rsi), %xmm8
	movsd	-112(%rsi), %xmm12
	leaq	64(%r10), %rdx
	movsd	%xmm1, -152(%rsi)
	movsd	-104(%rsi), %xmm1
	movsd	-144(%r10), %xmm13
	mulsd	%xmm0, %xmm13
	subsd	%xmm13, %xmm14
	movsd	%xmm14, -144(%rsi)
	movsd	-136(%r10), %xmm15
	mulsd	%xmm0, %xmm15
	subsd	%xmm15, %xmm3
	movsd	-96(%rsi), %xmm15
	movsd	%xmm3, -136(%rsi)
	movsd	-128(%r10), %xmm9
	mulsd	%xmm0, %xmm9
	subsd	%xmm9, %xmm7
	movsd	%xmm7, -128(%rsi)
	movsd	-120(%r10), %xmm10
	mulsd	%xmm0, %xmm10
	subsd	%xmm10, %xmm8
	movsd	%xmm8, -120(%rsi)
	movsd	-112(%r10), %xmm11
	mulsd	%xmm0, %xmm11
	subsd	%xmm11, %xmm12
	movsd	%xmm12, -112(%rsi)
	movsd	-104(%r10), %xmm13
	mulsd	%xmm0, %xmm13
	subsd	%xmm13, %xmm1
	movsd	%xmm1, -104(%rsi)
.LVL1438:
	movsd	-96(%r10), %xmm14
	mulsd	%xmm0, %xmm14
	subsd	%xmm14, %xmm15
	movsd	%xmm15, -96(%rsi)
	jge	.L4297
	testl	%r15d, %r15d
	je	.L5096
	movsd	-152(%rdx), %xmm3
	addl	$8, %edi
.LVL1439:
	prefetcht0	(%rax)
	movsd	-152(%rax), %xmm9
	.loc 1 1334 0
	leal	1(%rdi), %ecx
	prefetcht0	(%rdx)
	.loc 1 1375 0
	mulsd	%xmm0, %xmm3
	cmpl	16(%rsp), %ecx
	movsd	-144(%rax), %xmm10
	movsd	-136(%rax), %xmm11
	movsd	-128(%rax), %xmm13
	subsd	%xmm3, %xmm9
	movsd	-120(%rax), %xmm1
	movsd	-112(%rax), %xmm3
	movsd	%xmm9, -152(%rax)
.LVL1440:
	movsd	-144(%rdx), %xmm7
	mulsd	%xmm0, %xmm7
	subsd	%xmm7, %xmm10
	movsd	-104(%rax), %xmm7
	movsd	%xmm10, -144(%rax)
	movsd	-136(%rdx), %xmm8
	mulsd	%xmm0, %xmm8
	subsd	%xmm8, %xmm11
	movsd	-96(%rax), %xmm8
	movsd	%xmm11, -136(%rax)
	movsd	-128(%rdx), %xmm12
	mulsd	%xmm0, %xmm12
	subsd	%xmm12, %xmm13
	movsd	%xmm13, -128(%rax)
	movsd	-120(%rdx), %xmm14
	mulsd	%xmm0, %xmm14
	subsd	%xmm14, %xmm1
	movsd	%xmm1, -120(%rax)
	movsd	-112(%rdx), %xmm15
	mulsd	%xmm0, %xmm15
	subsd	%xmm15, %xmm3
	movsd	%xmm3, -112(%rax)
	movsd	-104(%rdx), %xmm9
	mulsd	%xmm0, %xmm9
	subsd	%xmm9, %xmm7
	movsd	%xmm7, -104(%rax)
.LVL1441:
	movsd	-96(%rdx), %xmm10
	leaq	128(%r10), %rdx
	mulsd	%xmm0, %xmm10
	subsd	%xmm10, %xmm8
	movsd	%xmm8, -96(%rax)
	leaq	128(%rsi), %rax
	jge	.L4297
.L5096:
	movl	16(%rsp), %r10d
.L4298:
	movsd	-152(%rdx), %xmm11
	leaq	64(%rax), %r15
	prefetcht0	(%rax)
	movsd	-152(%rax), %xmm12
	addl	$16, %edi
.LVL1442:
	prefetcht0	(%rdx)
	mulsd	%xmm0, %xmm11
	.loc 1 1334 0
	leal	1(%rdi), %ecx
	leaq	64(%rdx), %rsi
	.loc 1 1375 0
	movsd	-144(%rax), %xmm14
	prefetcht0	(%r15)
	movsd	-136(%rax), %xmm1
	prefetcht0	(%rsi)
	movsd	-128(%rax), %xmm9
	subsd	%xmm11, %xmm12
	movsd	-120(%rax), %xmm10
	movsd	-112(%rax), %xmm11
	movsd	%xmm12, -152(%rax)
.LVL1443:
	movsd	-144(%rdx), %xmm13
	mulsd	%xmm0, %xmm13
	subsd	%xmm13, %xmm14
	movsd	-104(%rax), %xmm13
	movsd	%xmm14, -144(%rax)
	movsd	-136(%rdx), %xmm15
	mulsd	%xmm0, %xmm15
	subsd	%xmm15, %xmm1
	movsd	-96(%rax), %xmm15
	movsd	%xmm1, -136(%rax)
	movsd	-128(%rdx), %xmm3
	mulsd	%xmm0, %xmm3
	subsd	%xmm3, %xmm9
	movsd	%xmm9, -128(%rax)
	movsd	-120(%rdx), %xmm7
	mulsd	%xmm0, %xmm7
	subsd	%xmm7, %xmm10
	movsd	%xmm10, -120(%rax)
	movsd	-112(%rdx), %xmm8
	mulsd	%xmm0, %xmm8
	subsd	%xmm8, %xmm11
	movsd	%xmm11, -112(%rax)
	movsd	-104(%rdx), %xmm12
	mulsd	%xmm0, %xmm12
	subsd	%xmm12, %xmm13
	movsd	%xmm13, -104(%rax)
	movsd	-96(%rdx), %xmm14
	mulsd	%xmm0, %xmm14
	subsd	%xmm14, %xmm15
	movsd	%xmm15, -96(%rax)
	subq	$-128, %rax
	movsd	-88(%rdx), %xmm3
	movsd	-152(%r15), %xmm1
	mulsd	%xmm0, %xmm3
	movsd	-144(%r15), %xmm7
	movsd	-136(%r15), %xmm8
	movsd	-128(%r15), %xmm12
	subsd	%xmm3, %xmm1
	movsd	%xmm1, -152(%r15)
	movsd	-80(%rdx), %xmm9
	mulsd	%xmm0, %xmm9
	subsd	%xmm9, %xmm7
	movsd	%xmm7, -144(%r15)
	movsd	-72(%rdx), %xmm10
	mulsd	%xmm0, %xmm10
	subsd	%xmm10, %xmm8
	movsd	%xmm8, -136(%r15)
	movsd	-64(%rdx), %xmm11
	mulsd	%xmm0, %xmm11
	subsd	%xmm11, %xmm12
	movsd	%xmm12, -128(%r15)
	movsd	-56(%rdx), %xmm13
	movsd	-120(%r15), %xmm14
	mulsd	%xmm0, %xmm13
	movsd	-112(%r15), %xmm3
	movsd	-104(%r15), %xmm1
	movsd	-96(%r15), %xmm10
	subsd	%xmm13, %xmm14
	movsd	%xmm14, -120(%r15)
	movsd	-48(%rdx), %xmm15
	mulsd	%xmm0, %xmm15
	subsd	%xmm15, %xmm3
	movsd	%xmm3, -112(%r15)
	movsd	-40(%rdx), %xmm9
	mulsd	%xmm0, %xmm9
	subsd	%xmm9, %xmm1
	movsd	%xmm1, -104(%r15)
.LVL1444:
	movsd	-32(%rdx), %xmm7
	subq	$-128, %rdx
	cmpl	%r10d, %ecx
	mulsd	%xmm0, %xmm7
	subsd	%xmm7, %xmm10
	movsd	%xmm10, -96(%r15)
	jl	.L4298
.LVL1445:
.L4297:
	.loc 1 1334 0
	movslq	%edi, %rdx
	salq	$3, %rdx
	addq	%rdx, %r9
	addq	%r11, %rdx
	movl	%ebp, %r11d
	subl	%ecx, %r11d
	addl	$1, %r11d
	andl	$7, %r11d
	je	.L4299
	.loc 1 1375 0
	movsd	(%rdx), %xmm8
	addq	$8, %rdx
	movsd	(%r9), %xmm11
	mulsd	%xmm0, %xmm8
	subsd	%xmm8, %xmm11
	movsd	%xmm11, (%r9)
.LVL1446:
	addq	$8, %r9
	cmpl	%ecx, %ebp
	jl	.L4292
	addl	$1, %ecx
.LVL1447:
	cmpl	$1, %r11d
	je	.L4299
	cmpl	$2, %r11d
	je	.L4839
	cmpl	$3, %r11d
	je	.L4840
	cmpl	$4, %r11d
	je	.L4841
	cmpl	$5, %r11d
	je	.L4842
	cmpl	$6, %r11d
	je	.L4843
	movsd	(%rdx), %xmm12
	addl	$1, %ecx
.LVL1448:
	movsd	(%r9), %xmm13
	addq	$8, %rdx
	mulsd	%xmm0, %xmm12
	subsd	%xmm12, %xmm13
	movsd	%xmm13, (%r9)
.LVL1449:
	addq	$8, %r9
.L4843:
	movsd	(%rdx), %xmm14
	addl	$1, %ecx
	movsd	(%r9), %xmm15
	addq	$8, %rdx
	mulsd	%xmm0, %xmm14
	subsd	%xmm14, %xmm15
	movsd	%xmm15, (%r9)
	addq	$8, %r9
.L4842:
	movsd	(%rdx), %xmm3
	addl	$1, %ecx
	movsd	(%r9), %xmm9
	addq	$8, %rdx
	mulsd	%xmm0, %xmm3
	subsd	%xmm3, %xmm9
	movsd	%xmm9, (%r9)
	addq	$8, %r9
.L4841:
	movsd	(%rdx), %xmm7
	addl	$1, %ecx
	movsd	(%r9), %xmm1
	addq	$8, %rdx
	mulsd	%xmm0, %xmm7
	subsd	%xmm7, %xmm1
	movsd	%xmm1, (%r9)
	addq	$8, %r9
.L4840:
	movsd	(%rdx), %xmm10
	addl	$1, %ecx
	movsd	(%r9), %xmm8
	addq	$8, %rdx
	mulsd	%xmm0, %xmm10
	subsd	%xmm10, %xmm8
	movsd	%xmm8, (%r9)
	addq	$8, %r9
.L4839:
	movsd	(%rdx), %xmm11
	addl	$1, %ecx
	movsd	(%r9), %xmm12
	addq	$8, %rdx
	mulsd	%xmm0, %xmm11
	subsd	%xmm11, %xmm12
	movsd	%xmm12, (%r9)
	addq	$8, %r9
	jmp	.L4299
.LVL1450:
	.p2align 4,,10
	.p2align 3
.L5156:
	movsd	8(%rdx), %xmm15
	addl	$8, %ecx
.LVL1451:
	movsd	8(%r9), %xmm3
	mulsd	%xmm0, %xmm15
	movsd	16(%r9), %xmm7
	movsd	24(%r9), %xmm1
	movsd	32(%r9), %xmm11
	subsd	%xmm15, %xmm3
	movsd	40(%r9), %xmm13
	movsd	48(%r9), %xmm15
	movsd	%xmm3, 8(%r9)
.LVL1452:
	movsd	16(%rdx), %xmm9
	mulsd	%xmm0, %xmm9
	subsd	%xmm9, %xmm7
	movsd	56(%r9), %xmm9
	movsd	%xmm7, 16(%r9)
	movsd	24(%rdx), %xmm10
	mulsd	%xmm0, %xmm10
	subsd	%xmm10, %xmm1
	movsd	%xmm1, 24(%r9)
	movsd	32(%rdx), %xmm8
	mulsd	%xmm0, %xmm8
	subsd	%xmm8, %xmm11
	movsd	%xmm11, 32(%r9)
	movsd	40(%rdx), %xmm12
	mulsd	%xmm0, %xmm12
	subsd	%xmm12, %xmm13
	movsd	%xmm13, 40(%r9)
	movsd	48(%rdx), %xmm14
	mulsd	%xmm0, %xmm14
	subsd	%xmm14, %xmm15
	movsd	%xmm15, 48(%r9)
	movsd	56(%rdx), %xmm3
	addq	$64, %rdx
	mulsd	%xmm0, %xmm3
	subsd	%xmm3, %xmm9
	movsd	%xmm9, 56(%r9)
	addq	$64, %r9
.L4299:
	movsd	(%rdx), %xmm13
	cmpl	%ecx, %ebp
	movsd	(%r9), %xmm14
	mulsd	%xmm0, %xmm13
	subsd	%xmm13, %xmm14
	movsd	%xmm14, (%r9)
.LVL1453:
	jge	.L5156
.LVL1454:
	.p2align 4,,10
	.p2align 3
.L4292:
	.loc 1 1370 0
	addl	$1, %r14d
.LVL1455:
	addq	$8, 8(%rsp)
	cmpl	%r14d, %ebx
	jge	.L4264
	addq	$1, 112(%rsp)
	movl	56(%rsp), %ebp
	.loc 1 1334 0
	movl	112(%rsp), %r8d
	movl	164(%rsp), %r13d
	movq	168(%rsp), %r14
.LVL1456:
	movq	48(%rsp), %r15
	addl	$1, %r8d
	.loc 1 1345 0
	cmpl	%r8d, %ebx
	jge	.L4235
	.loc 1 1334 0
	movq	176(%rsp), %rbx
.LVL1457:
	movq	184(%rsp), %rbp
	xorl	%edi, %edi
	movq	176(%rsp), %r12
	movq	152(%rsp), %r10
	movq	144(%rsp), %r11
	negq	%rbx
	salq	$2, %rbp
	leaq	-4(,%rbx,4), %r9
	leaq	16(%r15,%r12,8), %r8
	addq	%rbp, %r10
	addq	%rbp, %r11
.LVL1458:
.L4304:
	.loc 1 1379 0
	movslq	(%r10,%rdi), %r13
	movslq	(%r11,%rdi), %rax
	cmpl	%eax, %r13d
	je	.L4306
	.loc 1 1381 0
	movq	8(%r15), %rbp
	leaq	0(,%r13,8), %rcx
	movq	%r8, %rsi
	leaq	0(,%rax,8), %rdx
	subq	%r15, %rsi
	leaq	16(%r15), %rax
	leaq	-16(%rsi), %r14
	leaq	0(%rbp,%rcx), %rbx
	addq	%rdx, %rbp
	shrq	$3, %r14
	movsd	0(%rbp), %xmm2
	movsd	(%rbx), %xmm0
.LVL1459:
	andl	$7, %r14d
	.loc 1 1380 0
	cmpq	%r8, %rax
	.loc 1 1381 0
	movsd	%xmm2, (%rbx)
	movsd	%xmm0, 0(%rbp)
.LVL1460:
	.loc 1 1380 0
	je	.L4306
	testq	%r14, %r14
	je	.L4305
	cmpq	$1, %r14
	je	.L4833
	cmpq	$2, %r14
	je	.L4834
	cmpq	$3, %r14
	je	.L4835
	cmpq	$4, %r14
	je	.L4836
	cmpq	$5, %r14
	je	.L4837
	cmpq	$6, %r14
	je	.L4838
	.loc 1 1381 0
	movq	16(%r15), %r12
	leaq	24(%r15), %rax
	leaq	(%r12,%rcx), %r13
	addq	%rdx, %r12
	movsd	(%r12), %xmm5
	movsd	0(%r13), %xmm4
.LVL1461:
	movsd	%xmm5, 0(%r13)
	movsd	%xmm4, (%r12)
.L4838:
	movq	(%rax), %rsi
	addq	$8, %rax
	leaq	(%rsi,%rcx), %r14
	addq	%rdx, %rsi
	movsd	(%rsi), %xmm15
	movsd	(%r14), %xmm6
	movsd	%xmm15, (%r14)
	movsd	%xmm6, (%rsi)
.L4837:
	movq	(%rax), %rbp
	addq	$8, %rax
	leaq	0(%rbp,%rcx), %rbx
	addq	%rdx, %rbp
	movsd	0(%rbp), %xmm9
	movsd	(%rbx), %xmm3
	movsd	%xmm9, (%rbx)
	movsd	%xmm3, 0(%rbp)
.L4836:
	movq	(%rax), %r12
	addq	$8, %rax
	leaq	(%r12,%rcx), %r13
	addq	%rdx, %r12
	movsd	(%r12), %xmm1
	movsd	0(%r13), %xmm7
	movsd	%xmm1, 0(%r13)
	movsd	%xmm7, (%r12)
.L4835:
	movq	(%rax), %rsi
	addq	$8, %rax
	leaq	(%rsi,%rcx), %r14
	addq	%rdx, %rsi
	movsd	(%rsi), %xmm8
	movsd	(%r14), %xmm10
	movsd	%xmm8, (%r14)
	movsd	%xmm10, (%rsi)
.L4834:
	movq	(%rax), %rbp
	addq	$8, %rax
	leaq	0(%rbp,%rcx), %rbx
	addq	%rdx, %rbp
	movsd	0(%rbp), %xmm12
	movsd	(%rbx), %xmm11
	movsd	%xmm12, (%rbx)
	movsd	%xmm11, 0(%rbp)
.L4833:
	movq	(%rax), %r12
	addq	$8, %rax
	leaq	(%r12,%rcx), %r13
	addq	%rdx, %r12
	.loc 1 1380 0
	cmpq	%r8, %rax
	.loc 1 1381 0
	movsd	(%r12), %xmm14
	movsd	0(%r13), %xmm13
	movsd	%xmm14, 0(%r13)
	movsd	%xmm13, (%r12)
	.loc 1 1380 0
	je	.L4306
.L4305:
	.loc 1 1381 0 discriminator 2
	movq	(%rax), %rsi
	movq	8(%rax), %rbp
	movq	16(%rax), %r12
	leaq	(%rsi,%rcx), %r14
	addq	%rdx, %rsi
	leaq	0(%rbp,%rcx), %rbx
	movsd	(%rsi), %xmm2
	addq	%rdx, %rbp
	movsd	(%r14), %xmm0
	leaq	(%r12,%rcx), %r13
	movsd	%xmm2, (%r14)
	addq	%rdx, %r12
	movsd	%xmm0, (%rsi)
	movq	24(%rax), %rsi
	movsd	(%rbx), %xmm4
	movsd	0(%rbp), %xmm5
	leaq	(%rsi,%rcx), %r14
	addq	%rdx, %rsi
	movsd	%xmm5, (%rbx)
	movsd	%xmm4, 0(%rbp)
	movq	32(%rax), %rbp
	movsd	0(%r13), %xmm6
	movsd	(%r12), %xmm15
	leaq	0(%rbp,%rcx), %rbx
	addq	%rdx, %rbp
	movsd	%xmm15, 0(%r13)
	movsd	%xmm6, (%r12)
	movq	40(%rax), %r12
	movsd	(%r14), %xmm3
	movsd	(%rsi), %xmm9
	leaq	(%r12,%rcx), %r13
	addq	%rdx, %r12
	movsd	%xmm9, (%r14)
	movsd	%xmm3, (%rsi)
	movq	48(%rax), %rsi
	movsd	(%rbx), %xmm7
	movsd	0(%rbp), %xmm1
	leaq	(%rsi,%rcx), %r14
	addq	%rdx, %rsi
	movsd	%xmm1, (%rbx)
	movsd	%xmm7, 0(%rbp)
	movsd	0(%r13), %xmm10
	movsd	(%r12), %xmm8
	movsd	%xmm8, 0(%r13)
	movsd	%xmm10, (%r12)
	movsd	(%rsi), %xmm12
	movsd	(%r14), %xmm11
	movsd	%xmm12, (%r14)
	movq	56(%rax), %rbp
	addq	$64, %rax
	movsd	%xmm11, (%rsi)
	leaq	0(%rbp,%rcx), %rbx
	addq	%rdx, %rbp
	.loc 1 1380 0 discriminator 2
	cmpq	%r8, %rax
	.loc 1 1381 0 discriminator 2
	movsd	0(%rbp), %xmm14
	movsd	(%rbx), %xmm13
	movsd	%xmm14, (%rbx)
	movsd	%xmm13, 0(%rbp)
	.loc 1 1380 0 discriminator 2
	jne	.L4305
.L4306:
	subq	$4, %rdi
	.loc 1 1378 0
	cmpq	%r9, %rdi
	jne	.L4304
.LVL1462:
.L4219:
.LBB932:
.LBB933:
	.loc 1 1407 0
	movq	80(%rsp), %rdi
	call	free
.LVL1463:
.LBE933:
.LBE932:
.LBB934:
.LBB935:
	movq	152(%rsp), %rdi
	call	free
.LVL1464:
.LBE935:
.LBE934:
.LBB936:
.LBB937:
	movq	144(%rsp), %rdi
.LBE937:
.LBE936:
.LBE944:
	.loc 1 1386 0
	addq	$200, %rsp
.LCFI237:
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
.LCFI238:
	.cfi_def_cfa_offset 48
	popq	%rbp
.LCFI239:
	.cfi_def_cfa_offset 40
	popq	%r12
.LCFI240:
	.cfi_def_cfa_offset 32
	popq	%r13
.LCFI241:
	.cfi_def_cfa_offset 24
	popq	%r14
.LCFI242:
	.cfi_def_cfa_offset 16
	popq	%r15
.LCFI243:
	.cfi_def_cfa_offset 8
.LBB945:
.LBB939:
.LBB938:
	.loc 1 1407 0
	jmp	free
.LVL1465:
	.p2align 4,,10
	.p2align 3
.L4695:
.LCFI244:
	.cfi_restore_state
.LBE938:
.LBE939:
	.loc 1 1356 0
	cmpl	$1, %edx
	jle	.L4696
	movl	$.LC106, %edi
	call	_Z7nrerrorPKc
.LVL1466:
	.p2align 4,,10
	.p2align 3
.L5085:
	.loc 1 1351 0
	movq	8(%r15,%r12,2), %r8
	movsd	(%r8,%rcx), %xmm8
	andpd	%xmm2, %xmm8
	ucomisd	%xmm14, %xmm8
	jb	.L4705
	.loc 1 1352 0
	movapd	%xmm8, %xmm14
.LVL1467:
	.loc 1 1351 0
	movl	%r11d, %r13d
	movl	%r10d, %ebp
	jmp	.L4705
.LVL1468:
	.p2align 4,,10
	.p2align 3
.L5086:
	movq	8(%r15,%r12,2), %rdi
	movsd	(%rdi,%rcx), %xmm9
	andpd	%xmm2, %xmm9
	ucomisd	%xmm14, %xmm9
	jb	.L4710
	.loc 1 1352 0
	movapd	%xmm9, %xmm14
.LVL1469:
	.loc 1 1351 0
	movl	%r11d, %r13d
	movl	%r10d, %ebp
	jmp	.L4710
.LVL1470:
	.p2align 4,,10
	.p2align 3
.L5084:
	movq	8(%r15,%r12,2), %rdi
	movsd	16(%rdi), %xmm7
	andpd	%xmm2, %xmm7
	ucomisd	%xmm14, %xmm7
	jb	.L4700
	.loc 1 1352 0
	movapd	%xmm7, %xmm14
.LVL1471:
	.loc 1 1351 0
	movl	%r11d, %r13d
	movl	$2, %ebp
	jmp	.L4700
.LVL1472:
	.p2align 4,,10
	.p2align 3
.L4318:
	.loc 1 1334 0
	movq	%r8, %rcx
	xorl	%edi, %edi
	jmp	.L4284
.L4320:
	xorl	%edi, %edi
	jmp	.L4294
.LVL1473:
.L5151:
	movq	(%r15,%rdi,8), %r9
	leaq	0(,%rdi,8), %r11
.LVL1474:
	movq	%r11, 32(%rsp)
	movq	%r9, 24(%rsp)
	jmp	.L4243
.LVL1475:
.L4313:
	movq	%rax, %rdx
	xorl	%r11d, %r11d
	jmp	.L4255
.L4316:
	movq	%rax, %rdx
	xorl	%r12d, %r12d
	jmp	.L4272
.LVL1476:
.L4315:
	xorl	%r9d, %r9d
	movl	$1, %ecx
	jmp	.L4267
.L4312:
	xorl	%r9d, %r9d
	movl	$1, %ecx
	jmp	.L4250
.LVL1477:
.L5132:
	movq	24(%rsp), %rax
	jmp	.L4244
.LVL1478:
.L4218:
.LBB940:
.LBB924:
.LBB922:
	.loc 1 1399 0
	movl	$.LC105, %edi
	call	_Z7nrerrorPKc
.LVL1479:
.L4319:
.LBE922:
.LBE924:
.LBE940:
	.loc 1 1334 0
	movl	$1, %edi
	jmp	.L4293
.L4317:
	.loc 1 1374 0
	movl	$1, %edi
	jmp	.L4283
.LVL1480:
.L4314:
	.loc 1 1334 0
	movl	$1, %edi
	jmp	.L4266
.L4311:
	.loc 1 1368 0
	movl	$1, %edi
	jmp	.L4249
.LVL1481:
.L5152:
	.loc 1 1365 0
	jne	.L4246
	.loc 1 1365 0 is_stmt 0 discriminator 1
	movl	$.LC107, %edi
	call	_Z7nrerrorPKc
.LVL1482:
.L4309:
.LBE945:
	.loc 1 1334 0 is_stmt 1
	xorl	%r9d, %r9d
	jmp	.L4227
.LVL1483:
.L4308:
	xorl	%r8d, %r8d
	movl	$1, %r11d
	jmp	.L4222
.L4307:
	movl	$1, %eax
	jmp	.L4221
	.cfi_endproc
.LFE1084:
	.size	_Z6gaussjPPdiS0_i, .-_Z6gaussjPPdiS0_i
	.p2align 4,,15
	.globl	_Z7ivectorll
	.type	_Z7ivectorll, @function
_Z7ivectorll:
.LFB1085:
	.loc 1 1395 0
	.cfi_startproc
.LVL1484:
.LBB946:
	.loc 1 1398 0
	subq	%rdi, %rsi
.LVL1485:
.LBE946:
	.loc 1 1395 0
	pushq	%rbx
.LCFI245:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 1395 0
	movq	%rdi, %rbx
.LBB947:
	.loc 1 1398 0
	leaq	8(,%rsi,4), %rdi
.LVL1486:
	call	malloc
.LVL1487:
	.loc 1 1399 0
	testq	%rax, %rax
	je	.L5160
	.loc 1 1400 0
	negq	%rbx
.LVL1488:
	leaq	4(%rax,%rbx,4), %rax
.LVL1489:
.LBE947:
	.loc 1 1401 0
	popq	%rbx
.LCFI246:
	.cfi_remember_state
	.cfi_def_cfa_offset 8
.LVL1490:
	ret
.LVL1491:
.L5160:
.LCFI247:
	.cfi_restore_state
.LBB948:
	.loc 1 1399 0 discriminator 1
	movl	$.LC105, %edi
	call	_Z7nrerrorPKc
.LVL1492:
.LBE948:
	.cfi_endproc
.LFE1085:
	.size	_Z7ivectorll, .-_Z7ivectorll
	.p2align 4,,15
	.globl	_Z12free_ivectorPill
	.type	_Z12free_ivectorPill, @function
_Z12free_ivectorPill:
.LFB1086:
	.loc 1 1406 0
	.cfi_startproc
.LVL1493:
	.loc 1 1407 0
	leaq	-4(%rdi,%rsi,4), %rdi
.LVL1494:
	jmp	free
.LVL1495:
	.cfi_endproc
.LFE1086:
	.size	_Z12free_ivectorPill, .-_Z12free_ivectorPill
	.p2align 4,,15
	.globl	_Z7dvectorll
	.type	_Z7dvectorll, @function
_Z7dvectorll:
.LFB1087:
	.loc 1 1412 0
	.cfi_startproc
.LVL1496:
.LBB949:
	.loc 1 1417 0
	subq	%rdi, %rsi
.LVL1497:
.LBE949:
	.loc 1 1412 0
	pushq	%rbx
.LCFI248:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 1412 0
	movq	%rdi, %rbx
.LBB950:
	.loc 1 1417 0
	leaq	16(,%rsi,8), %rdi
.LVL1498:
	call	malloc
.LVL1499:
	.loc 1 1418 0
	testq	%rax, %rax
	je	.L5165
	.loc 1 1419 0
	negq	%rbx
.LVL1500:
	leaq	8(%rax,%rbx,8), %rax
.LVL1501:
.LBE950:
	.loc 1 1421 0
	popq	%rbx
.LCFI249:
	.cfi_remember_state
	.cfi_def_cfa_offset 8
.LVL1502:
	ret
.LVL1503:
.L5165:
.LCFI250:
	.cfi_restore_state
.LBB951:
	.loc 1 1418 0 discriminator 1
	movl	$.LC99, %edi
	call	_Z7nrerrorPKc
.LVL1504:
.LBE951:
	.cfi_endproc
.LFE1087:
	.size	_Z7dvectorll, .-_Z7dvectorll
	.p2align 4,,15
	.globl	_Z12free_dvectorPdll
	.type	_Z12free_dvectorPdll, @function
_Z12free_dvectorPdll:
.LFB1088:
	.loc 1 1425 0
	.cfi_startproc
.LVL1505:
	.loc 1 1428 0
	leaq	-8(%rdi,%rsi,8), %rdi
.LVL1506:
	jmp	free
.LVL1507:
	.cfi_endproc
.LFE1088:
	.size	_Z12free_dvectorPdll, .-_Z12free_dvectorPdll
	.p2align 4,,15
	.globl	_Z7dmatrixllll
	.type	_Z7dmatrixllll, @function
_Z7dmatrixllll:
.LFB1089:
	.loc 1 1434 0
	.cfi_startproc
.LVL1508:
	pushq	%r15
.LCFI251:
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
.LBB952:
	.loc 1 1437 0
	movq	%rsi, %rax
	subq	%rdi, %rax
.LBE952:
	.loc 1 1434 0
	pushq	%r14
.LCFI252:
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdx, %r14
.LBB953:
	.loc 1 1437 0
	leaq	1(%rax), %rdx
.LVL1509:
	subq	%r14, %rcx
.LVL1510:
.LBE953:
	.loc 1 1434 0
	pushq	%r13
.LCFI253:
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rsi, %r13
	pushq	%r12
.LCFI254:
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
.LBB954:
	.loc 1 1437 0
	leaq	1(%rcx), %r12
.LVL1511:
.LBE954:
	.loc 1 1434 0
	pushq	%rbp
.LCFI255:
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
.LBB955:
	.loc 1 1441 0
	leaq	16(,%rax,8), %rdi
.LVL1512:
.LBE955:
	.loc 1 1434 0
	pushq	%rbx
.LCFI256:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp
.LCFI257:
	.cfi_def_cfa_offset 112
.LBB956:
	.loc 1 1441 0
	movq	%rdx, 8(%rsp)
	call	malloc
.LVL1513:
	.loc 1 1442 0
	testq	%rax, %rax
	movq	8(%rsp), %rcx
	je	.L5229
	.loc 1 1447 0
	imulq	%r12, %rcx
	.loc 1 1443 0
	leaq	8(%rax), %rbx
.LVL1514:
	.loc 1 1444 0
	leaq	0(,%rbp,8), %r15
	subq	%r15, %rbx
.LVL1515:
	.loc 1 1447 0
	addq	%rbx, %r15
	leaq	8(,%rcx,8), %rdi
	call	malloc
.LVL1516:
	.loc 1 1448 0
	testq	%rax, %rax
	.loc 1 1447 0
	movq	%rax, (%r15)
	.loc 1 1448 0
	je	.L5230
	.loc 1 1452 0
	leaq	1(%rbp), %r9
.LVL1517:
	.loc 1 1449 0
	addq	$8, %rax
	.loc 1 1450 0
	salq	$3, %r14
.LVL1518:
	subq	%r14, %rax
	.loc 1 1452 0
	cmpq	%r9, %r13
	.loc 1 1450 0
	movq	%rax, (%r15)
	.loc 1 1452 0
	jl	.L5220
	.loc 1 1433 0
	leaq	-6(%r13), %rsi
	leaq	2(%rbp), %rdx
	leaq	0(,%r12,8), %r8
	movq	%rsi, 16(%rsp)
	cmpq	16(%rsp), %rdx
	jge	.L5171
	movabsq	$-9223372036854775802, %rdi
	cmpq	%rdi, %r13
	jl	.L5231
	salq	$4, %r12
.LVL1519:
	leaq	(%rax,%r8), %rsi
	prefetcht0	168(%r15)
	leaq	(%r12,%r8,4), %r10
	addq	%rax, %r12
	.loc 1 1452 0
	movq	%rsi, 8(%r15)
	movq	%r12, 16(%r15)
	.loc 1 1433 0
	leaq	(%r10,%r8,2), %r11
	movq	16(%rsp), %r10
	leaq	(%rax,%r11), %rdx
	movq	%r8, %rax
	addq	%r11, %rsi
	negq	%rax
	subq	%r9, %r10
	addq	%r11, %r12
	leaq	0(,%rax,4), %rdi
	subq	$2, %r10
	addq	%rax, %rax
	movq	%r10, 24(%rsp)
	movq	%rax, 40(%rsp)
.LVL1520:
	movq	%rdi, %rcx
	movq	40(%rsp), %r10
	leaq	(%rdx,%rdi), %rax
	subq	%r8, %rcx
	leaq	(%rdi,%r8), %r14
	shrq	$3, 24(%rsp)
	movq	%rcx, %r9
.LVL1521:
	movq	%rcx, 32(%rsp)
	andq	$1, 24(%rsp)
	addq	%rdx, %r9
	addq	%rdx, %r10
	leaq	(%rdx,%r14), %rcx
	movq	%r9, 24(%r15)
.LVL1522:
	movq	%rdx, %r9
	subq	%r8, %r9
	movq	%rax, 32(%r15)
.LVL1523:
	.loc 1 1452 0
	movq	%rdx, %rax
	.loc 1 1433 0
	movq	%r10, 48(%r15)
	.loc 1 1452 0
	movq	%rdx, 64(%r15)
	leaq	(%rdx,%r11), %r10
	.loc 1 1433 0
	leaq	10(%rbp), %rdx
	cmpq	%rdx, 16(%rsp)
	movq	%rcx, 40(%r15)
.LVL1524:
	movq	%r9, 56(%r15)
.LVL1525:
	leaq	64(%r15), %rcx
	.loc 1 1452 0
	leaq	9(%rbp), %r9
.LVL1526:
	jle	.L5171
	cmpq	$0, 24(%rsp)
	je	.L5227
	.loc 1 1433 0
	movq	32(%rsp), %rdx
	leaq	(%r10,%rdi), %rax
	leaq	(%r10,%r14), %r9
.LVL1527:
	.loc 1 1452 0
	movq	%rsi, 8(%rcx)
.LVL1528:
	movq	%r12, 16(%rcx)
	addq	%r11, %rsi
	.loc 1 1433 0
	movq	%rax, 32(%rcx)
	movq	%r10, %rax
	.loc 1 1452 0
	movq	%r10, 64(%rcx)
	.loc 1 1433 0
	addq	%r10, %rdx
	subq	%r8, %rax
	addq	%r11, %r12
	movq	%rdx, 24(%rcx)
	movq	40(%rsp), %rdx
	prefetcht0	232(%r15)
	movq	%rax, 56(%rcx)
	.loc 1 1452 0
	movq	%r10, %rax
	.loc 1 1433 0
	movq	%r9, 40(%rcx)
	.loc 1 1452 0
	leaq	17(%rbp), %r9
	.loc 1 1433 0
	addq	%r10, %rdx
	addq	%r11, %r10
	movq	%rdx, 48(%rcx)
.LVL1529:
	leaq	18(%rbp), %rdx
	cmpq	%rdx, 16(%rsp)
	leaq	128(%r15), %rcx
	jle	.L5171
.L5227:
	movq	32(%rsp), %r15
	movq	40(%rsp), %rbp
.LVL1530:
.L5172:
	.loc 1 1433 0 is_stmt 0 discriminator 2
	leaq	(%r10,%r15), %rax
	leaq	(%r10,%rdi), %rdx
	.loc 1 1452 0 is_stmt 1 discriminator 2
	movq	%r10, 64(%rcx)
	movq	%rsi, 8(%rcx)
.LVL1531:
	movq	%r12, 16(%rcx)
.LVL1532:
	addq	%r11, %rsi
	.loc 1 1433 0 discriminator 2
	movq	%rax, 24(%rcx)
.LVL1533:
	leaq	(%r10,%r14), %rax
	movq	%rdx, 32(%rcx)
.LVL1534:
	leaq	(%r10,%rbp), %rdx
	addq	%r11, %r12
	.loc 1 1452 0 discriminator 2
	addq	$16, %r9
.LVL1535:
	.loc 1 1433 0 discriminator 2
	movq	%rax, 40(%rcx)
.LVL1536:
	movq	%r10, %rax
	.loc 1 1452 0 discriminator 2
	movq	%rsi, 72(%rcx)
	.loc 1 1433 0 discriminator 2
	subq	%r8, %rax
	movq	%rdx, 48(%rcx)
.LVL1537:
	.loc 1 1452 0 discriminator 2
	movq	%r12, 80(%rcx)
	.loc 1 1433 0 discriminator 2
	movq	%rax, 56(%rcx)
.LVL1538:
	leaq	(%r10,%r11), %rax
	prefetcht0	168(%rcx)
	prefetcht0	232(%rcx)
	addq	%r11, %rsi
	addq	%r11, %r12
	leaq	(%rax,%r15), %r10
	leaq	(%rax,%rdi), %rdx
	.loc 1 1452 0 discriminator 2
	movq	%rax, 128(%rcx)
	.loc 1 1433 0 discriminator 2
	movq	%r10, 88(%rcx)
	leaq	(%rax,%r14), %r10
	movq	%rdx, 96(%rcx)
	leaq	(%rax,%rbp), %rdx
	movq	%r10, 104(%rcx)
	movq	%rax, %r10
	subq	%r8, %r10
	movq	%rdx, 112(%rcx)
	leaq	1(%r9), %rdx
	movq	%r10, 120(%rcx)
.LVL1539:
	subq	$-128, %rcx
	cmpq	%rdx, 16(%rsp)
	leaq	(%rax,%r11), %r10
	jg	.L5172
.L5171:
	movq	%r13, %r12
	.loc 1 1433 0 is_stmt 0
	addq	%r8, %rax
	subq	%rdx, %r12
	addq	$1, %r12
	andl	$7, %r12d
	je	.L5173
	.loc 1 1452 0 is_stmt 1
	movq	%rax, (%rbx,%r9,8)
	addq	%r8, %rax
	cmpq	%rdx, %r13
	movq	%rdx, %r9
.LVL1540:
	jl	.L5220
	addq	$1, %rdx
.LVL1541:
	cmpq	$1, %r12
	je	.L5173
	cmpq	$2, %r12
	je	.L5207
	cmpq	$3, %r12
	je	.L5208
	cmpq	$4, %r12
	je	.L5209
	cmpq	$5, %r12
	je	.L5210
	cmpq	$6, %r12
	je	.L5211
	movq	%rax, (%rbx,%r9,8)
	movq	%rdx, %r9
.LVL1542:
	addq	%r8, %rax
	addq	$1, %rdx
.LVL1543:
.L5211:
	movq	%rax, (%rbx,%r9,8)
	movq	%rdx, %r9
.LVL1544:
	addq	%r8, %rax
	addq	$1, %rdx
.LVL1545:
.L5210:
	movq	%rax, (%rbx,%r9,8)
	movq	%rdx, %r9
.LVL1546:
	addq	%r8, %rax
	addq	$1, %rdx
.LVL1547:
.L5209:
	movq	%rax, (%rbx,%r9,8)
	movq	%rdx, %r9
.LVL1548:
	addq	%r8, %rax
	addq	$1, %rdx
.LVL1549:
.L5208:
	movq	%rax, (%rbx,%r9,8)
	movq	%rdx, %r9
.LVL1550:
	addq	%r8, %rax
	addq	$1, %rdx
.LVL1551:
.L5207:
	movq	%rax, (%rbx,%r9,8)
	addq	%r8, %rax
	movq	%rdx, %r9
.LVL1552:
	addq	$1, %rdx
.LVL1553:
	movq	%rax, (%rbx,%r9,8)
.LVL1554:
	addq	%r8, %rax
	cmpq	%rdx, %r13
	jl	.L5220
.L5232:
	movq	%rax, (%rbx,%rdx,8)
	addq	%r8, %rax
	leaq	7(%rdx), %r9
	movq	%rax, 8(%rbx,%rdx,8)
	addq	%r8, %rax
	movq	%rax, 16(%rbx,%rdx,8)
	addq	%r8, %rax
	movq	%rax, 24(%rbx,%rdx,8)
	addq	%r8, %rax
	movq	%rax, 32(%rbx,%rdx,8)
	addq	%r8, %rax
	movq	%rax, 40(%rbx,%rdx,8)
	addq	%r8, %rax
	movq	%rax, 48(%rbx,%rdx,8)
	addq	%r8, %rax
	addq	$8, %rdx
.LVL1555:
.L5173:
	movq	%rax, (%rbx,%r9,8)
.LVL1556:
	addq	%r8, %rax
	cmpq	%rdx, %r13
	jge	.L5232
.LVL1557:
	.p2align 4,,10
	.p2align 3
.L5220:
.LBE956:
	.loc 1 1457 0
	addq	$56, %rsp
.LCFI258:
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rax
	popq	%rbx
.LCFI259:
	.cfi_def_cfa_offset 48
.LVL1558:
	popq	%rbp
.LCFI260:
	.cfi_def_cfa_offset 40
	popq	%r12
.LCFI261:
	.cfi_def_cfa_offset 32
	popq	%r13
.LCFI262:
	.cfi_def_cfa_offset 24
.LVL1559:
	popq	%r14
.LCFI263:
	.cfi_def_cfa_offset 16
	popq	%r15
.LCFI264:
	.cfi_def_cfa_offset 8
	ret
.LVL1560:
	.p2align 4,,10
	.p2align 3
.L5231:
.LCFI265:
	.cfi_restore_state
	leaq	2(%rbp), %rdx
	jmp	.L5171
.LVL1561:
.L5229:
.LBB957:
	.loc 1 1442 0 discriminator 1
	movl	$.LC71, %edi
	call	_Z7nrerrorPKc
.LVL1562:
.L5230:
	.loc 1 1448 0 discriminator 1
	movl	$.LC72, %edi
	call	_Z7nrerrorPKc
.LVL1563:
.LBE957:
	.cfi_endproc
.LFE1089:
	.size	_Z7dmatrixllll, .-_Z7dmatrixllll
	.p2align 4,,15
	.globl	_Z12free_dmatrixPPdllll
	.type	_Z12free_dmatrixPPdllll, @function
_Z12free_dmatrixPPdllll:
.LFB1090:
	.loc 1 1461 0
	.cfi_startproc
.LVL1564:
	movq	%rbx, -16(%rsp)
	movq	%rbp, -8(%rsp)
	subq	$24, %rsp
.LCFI266:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	.loc 1 1464 0
	movq	(%rdi,%rsi,8), %rax
	.loc 1 1461 0
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	.loc 1 1464 0
	leaq	-8(%rax,%rcx,8), %rdi
.LVL1565:
	call	free
.LVL1566:
	.loc 1 1465 0
	leaq	-8(%rbx,%rbp,8), %rdi
	.loc 1 1467 0
	movq	8(%rsp), %rbx
.LVL1567:
	movq	16(%rsp), %rbp
.LVL1568:
	addq	$24, %rsp
.LCFI267:
	.cfi_def_cfa_offset 8
	.loc 1 1465 0
	jmp	free
.LVL1569:
	.cfi_endproc
.LFE1090:
	.size	_Z12free_dmatrixPPdllll, .-_Z12free_dmatrixPPdllll
	.p2align 4,,15
	.globl	_Z7RanUnifPl
	.type	_Z7RanUnifPl, @function
_Z7RanUnifPl:
.LFB1091:
	.loc 1 1486 0
	.cfi_startproc
.LVL1570:
.LBB958:
	.loc 1 1492 0
	movq	(%rdi), %rcx
.LVL1571:
	.loc 1 1493 0
	movabsq	$4730756183288445817, %rdx
	movq	%rcx, %rax
	movq	%rcx, %rsi
	imulq	%rdx
	sarq	$63, %rsi
	sarq	$15, %rdx
	subq	%rsi, %rdx
.LVL1572:
	.loc 1 1494 0
	imulq	$-127773, %rdx, %r8
	imulq	$-2836, %rdx, %r10
	addq	%r8, %rcx
.LVL1573:
	imulq	$16807, %rcx, %r9
	addq	%r9, %r10
.LVL1574:
	.loc 1 1495 0
	leaq	2147483647(%r10), %r11
	testq	%r10, %r10
	cmovs	%r11, %r10
.LVL1575:
	.loc 1 1497 0
	cvtsi2sdq	%r10, %xmm0
	.loc 1 1496 0
	movq	%r10, (%rdi)
.LVL1576:
	.loc 1 1497 0
	mulsd	.LC68(%rip), %xmm0
.LBE958:
	.loc 1 1500 0
	ret
	.cfi_endproc
.LFE1091:
	.size	_Z7RanUnifPl, .-_Z7RanUnifPl
	.section	.text.startup
	.p2align 4,,15
	.type	_GLOBAL__sub_I__Z12CumNormalInvd, @function
_GLOBAL__sub_I__Z12CumNormalInvd:
.LFB1093:
	.loc 1 1500 0
	.cfi_startproc
.LVL1577:
	subq	$8, %rsp
.LCFI268:
	.cfi_def_cfa_offset 16
.LBB961:
.LBB962:
	.file 4 "/usr/include/c++/4.7/iostream"
	.loc 4 75 0
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
.LVL1578:
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
.LBE962:
.LBE961:
	.loc 1 1500 0
	addq	$8, %rsp
.LCFI269:
	.cfi_def_cfa_offset 8
.LBB964:
.LBB963:
	.loc 4 75 0
	jmp	__cxa_atexit
.LVL1579:
.LBE963:
.LBE964:
	.cfi_endproc
.LFE1093:
	.size	_GLOBAL__sub_I__Z12CumNormalInvd, .-_GLOBAL__sub_I__Z12CumNormalInvd
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z12CumNormalInvd
	.globl	chunksize
	.bss
	.align 4
	.type	chunksize, @object
	.size	chunksize, 4
chunksize:
	.zero	4
	.globl	dSumSquareSimSwaptionPrice_global_ptr
	.align 8
	.type	dSumSquareSimSwaptionPrice_global_ptr, @object
	.size	dSumSquareSimSwaptionPrice_global_ptr, 8
dSumSquareSimSwaptionPrice_global_ptr:
	.zero	8
	.globl	dSumSimSwaptionPrice_global_ptr
	.align 8
	.type	dSumSimSwaptionPrice_global_ptr, @object
	.size	dSumSimSwaptionPrice_global_ptr, 8
dSumSimSwaptionPrice_global_ptr:
	.zero	8
	.globl	swaption_seed
	.align 16
	.type	swaption_seed, @object
	.size	swaption_seed, 8
swaption_seed:
	.zero	8
	.globl	seed
	.data
	.align 16
	.type	seed, @object
	.size	seed, 8
seed:
	.quad	1979
	.globl	swaptions
	.bss
	.align 16
	.type	swaptions, @object
	.size	swaptions, 8
swaptions:
	.zero	8
	.globl	iFactors
	.data
	.align 4
	.type	iFactors, @object
	.size	iFactors, 4
iFactors:
	.long	3
	.globl	iN
	.align 4
	.type	iN, @object
	.size	iN, 4
iN:
	.long	11
	.globl	nSwaptions
	.align 16
	.type	nSwaptions, @object
	.size	nSwaptions, 4
nSwaptions:
	.long	1
	.globl	nThreads
	.align 16
	.type	nThreads, @object
	.size	nThreads, 4
nThreads:
	.long	1
	.globl	NUM_TRIALS
	.align 4
	.type	NUM_TRIALS, @object
	.size	NUM_TRIALS, 4
NUM_TRIALS:
	.long	102400
	.section	.rodata
	.align 16
	.type	_ZZ6workerPvE19__PRETTY_FUNCTION__, @object
	.size	_ZZ6workerPvE19__PRETTY_FUNCTION__, 20
_ZZ6workerPvE19__PRETTY_FUNCTION__:
	.string	"void* worker(void*)"
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1071644672
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC1:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC2:
	.long	2920577761
	.long	1071309127
	.align 8
.LC3:
	.long	1463252856
	.long	-1069977367
	.align 8
.LC4:
	.long	3295921916
	.long	1078243858
	.align 8
.LC5:
	.long	2924782558
	.long	1077058928
	.align 8
.LC6:
	.long	455631373
	.long	1074007443
	.align 8
.LC7:
	.long	542476871
	.long	1074334704
	.align 8
.LC8:
	.long	117564797
	.long	1077219311
	.align 8
.LC9:
	.long	2441170988
	.long	1077351767
	.align 8
.LC10:
	.long	106235693
	.long	1075901040
	.align 8
.LC11:
	.long	0
	.long	1072693248
	.section	.rodata.cst16
	.align 16
.LC13:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC14:
	.long	167957933
	.long	1050317765
	.align 8
.LC15:
	.long	1889237846
	.long	1049846229
	.align 8
.LC16:
	.long	99975688
	.long	1057021618
	.align 8
.LC17:
	.long	2695465030
	.long	1060759086
	.align 8
.LC18:
	.long	3846072197
	.long	1064269379
	.align 8
.LC19:
	.long	1944338999
	.long	1067208365
	.align 8
.LC20:
	.long	644417154
	.long	1069847815
	.align 8
.LC21:
	.long	3482042669
	.long	1072643270
	.align 8
.LC22:
	.long	3286500200
	.long	1070962994
	.section	.rodata.cst16
	.align 16
.LC23:
	.long	1
	.long	2
	.long	3
	.long	4
	.align 16
.LC24:
	.long	4
	.long	4
	.long	4
	.long	4
	.align 16
.LC25:
	.long	1
	.long	1
	.long	1
	.long	1
	.align 16
.LC26:
	.long	0
	.long	1072693248
	.long	0
	.long	1072693248
	.section	.rodata.cst8
	.align 8
.LC33:
	.long	4088808866
	.long	1066980605
	.align 8
.LC34:
	.long	0
	.long	-1073741824
	.align 8
.LC35:
	.long	2454376416
	.long	-1082137843
	.align 8
.LC36:
	.long	3236463032
	.long	1070899748
	.align 8
.LC37:
	.long	3245348696
	.long	1073951936
	.align 8
.LC38:
	.long	745552410
	.long	1074030042
	.align 8
.LC39:
	.long	4108996039
	.long	1074888615
	.align 8
.LC40:
	.long	507498402
	.long	1074233692
	.align 8
.LC41:
	.long	1470930900
	.long	1065345752
	.align 8
.LC42:
	.long	727253860
	.long	1070900045
	.align 8
.LC43:
	.long	2089477654
	.long	1073975202
	.align 8
.LC44:
	.long	1754640665
	.long	1074661639
	.align 8
.LC45:
	.long	274877907
	.long	1072642392
	.align 8
.LC46:
	.long	3156084005
	.long	-1069295311
	.align 8
.LC47:
	.long	1882456987
	.long	1080794694
	.align 8
.LC48:
	.long	767900569
	.long	1081163483
	.align 8
.LC49:
	.long	3020636187
	.long	1080118130
	.align 8
.LC50:
	.long	885033933
	.long	1077848624
	.align 8
.LC51:
	.long	542594169
	.long	1074007443
	.align 8
.LC52:
	.long	3459253444
	.long	-1068811024
	.align 8
.LC53:
	.long	753943159
	.long	1080308415
	.align 8
.LC54:
	.long	184735954
	.long	1080260190
	.align 8
.LC55:
	.long	2980571582
	.long	1079030600
	.align 8
.LC56:
	.long	2115270694
	.long	1076531125
	.align 8
.LC68:
	.long	1859432
	.long	1040187392
	.align 8
.LC69:
	.long	4290772992
	.long	1105199103
	.align 8
.LC93:
	.long	0
	.long	1078853632
	.align 8
.LC94:
	.long	0
	.long	1070596096
	.align 8
.LC95:
	.long	0
	.long	1075052544
	.align 8
.LC96:
	.long	0
	.long	1078493184
	.align 8
.LC97:
	.long	2576980378
	.long	1069128089
	.align 8
.LC100:
	.long	1202590843
	.long	1064598241
	.section	.rodata.cst16
	.align 16
.LC102:
	.long	0
	.long	-2147483648
	.long	0
	.long	-2147483648
	.text
.Letext0:
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/4.7/include/stddef.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/libio.h"
	.file 9 "/usr/include/wchar.h"
	.file 10 "<built-in>"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h"
	.file 12 "HJM_type.h"
	.file 13 "/usr/include/time.h"
	.file 14 "/usr/include/c++/4.7/cstring"
	.file 15 "/usr/include/c++/4.7/cwchar"
	.file 16 "/usr/include/c++/4.7/x86_64-linux-gnu/bits/c++config.h"
	.file 17 "/usr/include/c++/4.7/clocale"
	.file 18 "/usr/include/c++/4.7/bits/ios_base.h"
	.file 19 "/usr/include/c++/4.7/cwctype"
	.file 20 "/usr/include/x86_64-linux-gnu/bits/string3.h"
	.file 21 "/usr/include/string.h"
	.file 22 "/usr/include/x86_64-linux-gnu/bits/wchar2.h"
	.file 23 "/usr/include/c++/4.7/ext/new_allocator.h"
	.file 24 "/usr/include/c++/4.7/ext/numeric_traits.h"
	.file 25 "/usr/include/c++/4.7/debug/debug.h"
	.file 26 "/usr/include/locale.h"
	.file 27 "/usr/include/c++/4.7/x86_64-linux-gnu/bits/atomic_word.h"
	.file 28 "/usr/include/wctype.h"
	.file 29 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h"
	.file 30 "/usr/include/pthread.h"
	.file 31 "/usr/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x590f
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF290
	.byte	0x4
	.long	.LASF291
	.long	.LASF292
	.long	.Ldebug_ranges0+0x2cd0
	.quad	0
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x4
	.long	.LASF8
	.byte	0x5
	.byte	0xd5
	.long	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x4
	.long	.LASF9
	.byte	0x6
	.byte	0x29
	.long	0x38
	.uleb128 0x4
	.long	.LASF10
	.byte	0x6
	.byte	0x8d
	.long	0x3f
	.uleb128 0x4
	.long	.LASF11
	.byte	0x6
	.byte	0x8e
	.long	0x3f
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0xab
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x4
	.long	.LASF14
	.byte	0x7
	.byte	0x31
	.long	0xbd
	.uleb128 0x7
	.long	.LASF50
	.byte	0xd8
	.byte	0x8
	.value	0x111
	.long	0x28a
	.uleb128 0x8
	.long	.LASF15
	.byte	0x8
	.value	0x112
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF16
	.byte	0x8
	.value	0x117
	.long	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF17
	.byte	0x8
	.value	0x118
	.long	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF18
	.byte	0x8
	.value	0x119
	.long	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF19
	.byte	0x8
	.value	0x11a
	.long	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF20
	.byte	0x8
	.value	0x11b
	.long	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF21
	.byte	0x8
	.value	0x11c
	.long	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF22
	.byte	0x8
	.value	0x11d
	.long	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF23
	.byte	0x8
	.value	0x11e
	.long	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF24
	.byte	0x8
	.value	0x120
	.long	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF25
	.byte	0x8
	.value	0x121
	.long	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF26
	.byte	0x8
	.value	0x122
	.long	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF27
	.byte	0x8
	.value	0x124
	.long	0x387
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.long	.LASF28
	.byte	0x8
	.value	0x126
	.long	0x38d
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.long	.LASF29
	.byte	0x8
	.value	0x128
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x8
	.long	.LASF30
	.byte	0x8
	.value	0x12c
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x8
	.long	.LASF31
	.byte	0x8
	.value	0x12e
	.long	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF32
	.byte	0x8
	.value	0x132
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.long	.LASF33
	.byte	0x8
	.value	0x133
	.long	0x6d
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x8
	.long	.LASF34
	.byte	0x8
	.value	0x134
	.long	0x393
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x8
	.long	.LASF35
	.byte	0x8
	.value	0x138
	.long	0x3a3
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x8
	.long	.LASF36
	.byte	0x8
	.value	0x141
	.long	0x91
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x8
	.long	.LASF37
	.byte	0x8
	.value	0x14a
	.long	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.long	.LASF38
	.byte	0x8
	.value	0x14b
	.long	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x8
	.long	.LASF39
	.byte	0x8
	.value	0x14c
	.long	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x8
	.long	.LASF40
	.byte	0x8
	.value	0x14d
	.long	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x8
	.long	.LASF41
	.byte	0x8
	.value	0x14e
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x8
	.long	.LASF42
	.byte	0x8
	.value	0x150
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x8
	.long	.LASF43
	.byte	0x8
	.value	0x152
	.long	0x3a9
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0
	.uleb128 0x4
	.long	.LASF44
	.byte	0x7
	.byte	0x41
	.long	0xbd
	.uleb128 0x9
	.byte	0x8
	.byte	0x9
	.byte	0x54
	.long	.LASF67
	.long	0x2dd
	.uleb128 0xa
	.byte	0x4
	.byte	0x9
	.byte	0x57
	.long	0x2c0
	.uleb128 0xb
	.long	.LASF45
	.byte	0x9
	.byte	0x59
	.long	0x66
	.uleb128 0xb
	.long	.LASF46
	.byte	0x9
	.byte	0x5d
	.long	0x2dd
	.byte	0
	.uleb128 0xc
	.long	.LASF47
	.byte	0x9
	.byte	0x55
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF48
	.byte	0x9
	.byte	0x5e
	.long	0x2a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xd
	.long	0xab
	.long	0x2ed
	.uleb128 0xe
	.long	0x9c
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	.LASF49
	.byte	0x9
	.byte	0x5f
	.long	0x295
	.uleb128 0xf
	.long	.LASF51
	.byte	0x18
	.byte	0xa
	.byte	0
	.long	0x33d
	.uleb128 0xc
	.long	.LASF52
	.byte	0xa
	.byte	0
	.long	0x66
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF53
	.byte	0xa
	.byte	0
	.long	0x66
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF54
	.byte	0xa
	.byte	0
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF55
	.byte	0xa
	.byte	0
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x10
	.long	.LASF389
	.byte	0x8
	.byte	0xb6
	.uleb128 0xf
	.long	.LASF56
	.byte	0x18
	.byte	0x8
	.byte	0xbc
	.long	0x37b
	.uleb128 0xc
	.long	.LASF57
	.byte	0x8
	.byte	0xbd
	.long	0x37b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF58
	.byte	0x8
	.byte	0xbe
	.long	0x381
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF59
	.byte	0x8
	.byte	0xc2
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x344
	.uleb128 0x6
	.byte	0x8
	.long	0xbd
	.uleb128 0x6
	.byte	0x8
	.long	0x344
	.uleb128 0x6
	.byte	0x8
	.long	0xbd
	.uleb128 0xd
	.long	0xab
	.long	0x3a3
	.uleb128 0xe
	.long	0x9c
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x33d
	.uleb128 0xd
	.long	0xab
	.long	0x3b9
	.uleb128 0xe
	.long	0x9c
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3bf
	.uleb128 0x11
	.long	0xab
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF60
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF61
	.uleb128 0x11
	.long	0x38
	.uleb128 0x4
	.long	.LASF62
	.byte	0xb
	.byte	0x32
	.long	0x51
	.uleb128 0x12
	.byte	0x38
	.byte	0xb
	.byte	0x36
	.long	.LASF390
	.long	0x405
	.uleb128 0xb
	.long	.LASF63
	.byte	0xb
	.byte	0x37
	.long	0x405
	.uleb128 0xb
	.long	.LASF64
	.byte	0xb
	.byte	0x38
	.long	0x3f
	.byte	0
	.uleb128 0xd
	.long	0xab
	.long	0x415
	.uleb128 0xe
	.long	0x9c
	.byte	0x37
	.byte	0
	.uleb128 0x4
	.long	.LASF65
	.byte	0xb
	.byte	0x39
	.long	0x3e2
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF66
	.uleb128 0x6
	.byte	0x8
	.long	0x42d
	.uleb128 0x13
	.uleb128 0x9
	.byte	0x68
	.byte	0xc
	.byte	0x10
	.long	.LASF68
	.long	0x4ef
	.uleb128 0x14
	.string	"Id"
	.byte	0xc
	.byte	0x11
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF69
	.byte	0xc
	.byte	0x12
	.long	0x31
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF70
	.byte	0xc
	.byte	0x13
	.long	0x31
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.long	.LASF71
	.byte	0xc
	.byte	0x14
	.long	0x31
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.long	.LASF72
	.byte	0xc
	.byte	0x15
	.long	0x31
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.long	.LASF73
	.byte	0xc
	.byte	0x16
	.long	0x31
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.long	.LASF74
	.byte	0xc
	.byte	0x17
	.long	0x31
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.long	.LASF75
	.byte	0xc
	.byte	0x18
	.long	0x31
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x14
	.string	"iN"
	.byte	0xc
	.byte	0x19
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.long	.LASF76
	.byte	0xc
	.byte	0x1a
	.long	0x31
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xc
	.long	.LASF77
	.byte	0xc
	.byte	0x1b
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xc
	.long	.LASF78
	.byte	0xc
	.byte	0x1c
	.long	0x4ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xc
	.long	.LASF79
	.byte	0xc
	.byte	0x1d
	.long	0x4f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x31
	.uleb128 0x6
	.byte	0x8
	.long	0x4ef
	.uleb128 0x4
	.long	.LASF80
	.byte	0xc
	.byte	0x1e
	.long	0x42e
	.uleb128 0x15
	.string	"tm"
	.byte	0x38
	.byte	0xd
	.byte	0x85
	.long	0x5ac
	.uleb128 0xc
	.long	.LASF81
	.byte	0xd
	.byte	0x87
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF82
	.byte	0xd
	.byte	0x88
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF83
	.byte	0xd
	.byte	0x89
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF84
	.byte	0xd
	.byte	0x8a
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.long	.LASF85
	.byte	0xd
	.byte	0x8b
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.long	.LASF86
	.byte	0xd
	.byte	0x8c
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.long	.LASF87
	.byte	0xd
	.byte	0x8d
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.long	.LASF88
	.byte	0xd
	.byte	0x8e
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.long	.LASF89
	.byte	0xd
	.byte	0x8f
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.long	.LASF90
	.byte	0xd
	.byte	0x92
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.long	.LASF91
	.byte	0xd
	.byte	0x93
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0
	.uleb128 0x16
	.string	"std"
	.byte	0xa
	.byte	0
	.long	0x8ac
	.uleb128 0x17
	.byte	0xe
	.byte	0x4d
	.long	0x8ac
	.uleb128 0x17
	.byte	0xe
	.byte	0x4f
	.long	0x8d1
	.uleb128 0x17
	.byte	0xe
	.byte	0x50
	.long	0x8f2
	.uleb128 0x17
	.byte	0xe
	.byte	0x51
	.long	0x913
	.uleb128 0x17
	.byte	0xe
	.byte	0x52
	.long	0x934
	.uleb128 0x17
	.byte	0xe
	.byte	0x54
	.long	0x950
	.uleb128 0x17
	.byte	0xe
	.byte	0x55
	.long	0x96c
	.uleb128 0x17
	.byte	0xe
	.byte	0x57
	.long	0x988
	.uleb128 0x17
	.byte	0xe
	.byte	0x59
	.long	0x9a0
	.uleb128 0x17
	.byte	0xe
	.byte	0x5b
	.long	0x9c1
	.uleb128 0x17
	.byte	0xe
	.byte	0x5d
	.long	0x9e2
	.uleb128 0x17
	.byte	0xe
	.byte	0x5e
	.long	0x9ff
	.uleb128 0x17
	.byte	0xe
	.byte	0x5f
	.long	0xa20
	.uleb128 0x17
	.byte	0xe
	.byte	0x60
	.long	0xa40
	.uleb128 0x17
	.byte	0xe
	.byte	0x61
	.long	0xa61
	.uleb128 0x17
	.byte	0xe
	.byte	0x62
	.long	0xa81
	.uleb128 0x17
	.byte	0xf
	.byte	0x42
	.long	0xaae
	.uleb128 0x17
	.byte	0xf
	.byte	0x8d
	.long	0xaa2
	.uleb128 0x17
	.byte	0xf
	.byte	0x8f
	.long	0xab9
	.uleb128 0x17
	.byte	0xf
	.byte	0x90
	.long	0xad1
	.uleb128 0x17
	.byte	0xf
	.byte	0x91
	.long	0xaef
	.uleb128 0x17
	.byte	0xf
	.byte	0x92
	.long	0xb1e
	.uleb128 0x17
	.byte	0xf
	.byte	0x93
	.long	0xb3b
	.uleb128 0x17
	.byte	0xf
	.byte	0x94
	.long	0xb63
	.uleb128 0x17
	.byte	0xf
	.byte	0x95
	.long	0xb80
	.uleb128 0x17
	.byte	0xf
	.byte	0x96
	.long	0xb9e
	.uleb128 0x17
	.byte	0xf
	.byte	0x97
	.long	0xbbc
	.uleb128 0x17
	.byte	0xf
	.byte	0x98
	.long	0xbd4
	.uleb128 0x17
	.byte	0xf
	.byte	0x99
	.long	0xbe2
	.uleb128 0x17
	.byte	0xf
	.byte	0x9a
	.long	0xc0a
	.uleb128 0x17
	.byte	0xf
	.byte	0x9b
	.long	0xc31
	.uleb128 0x17
	.byte	0xf
	.byte	0x9c
	.long	0xc54
	.uleb128 0x17
	.byte	0xf
	.byte	0x9d
	.long	0xc81
	.uleb128 0x17
	.byte	0xf
	.byte	0x9e
	.long	0xc9e
	.uleb128 0x17
	.byte	0xf
	.byte	0xa0
	.long	0xcb6
	.uleb128 0x17
	.byte	0xf
	.byte	0xa2
	.long	0xcd9
	.uleb128 0x17
	.byte	0xf
	.byte	0xa3
	.long	0xcf7
	.uleb128 0x17
	.byte	0xf
	.byte	0xa4
	.long	0xd14
	.uleb128 0x17
	.byte	0xf
	.byte	0xa6
	.long	0xd3c
	.uleb128 0x17
	.byte	0xf
	.byte	0xa9
	.long	0xd5e
	.uleb128 0x17
	.byte	0xf
	.byte	0xac
	.long	0xd85
	.uleb128 0x17
	.byte	0xf
	.byte	0xae
	.long	0xda7
	.uleb128 0x17
	.byte	0xf
	.byte	0xb0
	.long	0xdc4
	.uleb128 0x17
	.byte	0xf
	.byte	0xb2
	.long	0xde1
	.uleb128 0x17
	.byte	0xf
	.byte	0xb3
	.long	0xe03
	.uleb128 0x17
	.byte	0xf
	.byte	0xb4
	.long	0xe1f
	.uleb128 0x17
	.byte	0xf
	.byte	0xb5
	.long	0xe3b
	.uleb128 0x17
	.byte	0xf
	.byte	0xb6
	.long	0xe57
	.uleb128 0x17
	.byte	0xf
	.byte	0xb7
	.long	0xe73
	.uleb128 0x17
	.byte	0xf
	.byte	0xb8
	.long	0xe8f
	.uleb128 0x17
	.byte	0xf
	.byte	0xb9
	.long	0xec1
	.uleb128 0x17
	.byte	0xf
	.byte	0xba
	.long	0xed9
	.uleb128 0x17
	.byte	0xf
	.byte	0xbb
	.long	0xefb
	.uleb128 0x17
	.byte	0xf
	.byte	0xbc
	.long	0xf1c
	.uleb128 0x17
	.byte	0xf
	.byte	0xbd
	.long	0xf3d
	.uleb128 0x17
	.byte	0xf
	.byte	0xbe
	.long	0xf6a
	.uleb128 0x17
	.byte	0xf
	.byte	0xbf
	.long	0xf86
	.uleb128 0x17
	.byte	0xf
	.byte	0xc1
	.long	0xfa9
	.uleb128 0x17
	.byte	0xf
	.byte	0xc3
	.long	0xfc6
	.uleb128 0x17
	.byte	0xf
	.byte	0xc4
	.long	0xfe8
	.uleb128 0x17
	.byte	0xf
	.byte	0xc5
	.long	0x100a
	.uleb128 0x17
	.byte	0xf
	.byte	0xc6
	.long	0x102c
	.uleb128 0x17
	.byte	0xf
	.byte	0xc7
	.long	0x104d
	.uleb128 0x17
	.byte	0xf
	.byte	0xc8
	.long	0x1065
	.uleb128 0x17
	.byte	0xf
	.byte	0xc9
	.long	0x1087
	.uleb128 0x17
	.byte	0xf
	.byte	0xca
	.long	0x10a8
	.uleb128 0x17
	.byte	0xf
	.byte	0xcb
	.long	0x10c9
	.uleb128 0x17
	.byte	0xf
	.byte	0xcc
	.long	0x10ea
	.uleb128 0x17
	.byte	0xf
	.byte	0xcd
	.long	0x1103
	.uleb128 0x17
	.byte	0xf
	.byte	0xce
	.long	0x111c
	.uleb128 0x17
	.byte	0xf
	.byte	0xcf
	.long	0x113c
	.uleb128 0x17
	.byte	0xf
	.byte	0xd0
	.long	0x115d
	.uleb128 0x17
	.byte	0xf
	.byte	0xd1
	.long	0x117d
	.uleb128 0x17
	.byte	0xf
	.byte	0xd2
	.long	0x119e
	.uleb128 0x18
	.byte	0xf
	.value	0x10a
	.long	0x12f4
	.uleb128 0x18
	.byte	0xf
	.value	0x10b
	.long	0x1318
	.uleb128 0x18
	.byte	0xf
	.value	0x10c
	.long	0x133a
	.uleb128 0x19
	.long	.LASF391
	.byte	0x19
	.byte	0x31
	.uleb128 0x4
	.long	.LASF8
	.byte	0x10
	.byte	0xad
	.long	0x51
	.uleb128 0x17
	.byte	0x11
	.byte	0x37
	.long	0x1376
	.uleb128 0x17
	.byte	0x11
	.byte	0x38
	.long	0x14d3
	.uleb128 0x17
	.byte	0x11
	.byte	0x39
	.long	0x14ef
	.uleb128 0x4
	.long	.LASF92
	.byte	0x10
	.byte	0xae
	.long	0x3f
	.uleb128 0x1a
	.long	.LASF392
	.byte	0x1
	.long	0x86e
	.uleb128 0x1b
	.long	.LASF95
	.byte	0x1
	.byte	0x12
	.value	0x217
	.uleb128 0x1c
	.long	.LASF93
	.byte	0x12
	.value	0x21f
	.long	0x1513
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF94
	.byte	0x12
	.value	0x220
	.long	0x136f
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF95
	.byte	0x12
	.value	0x21b
	.byte	0x1
	.long	0x84a
	.long	0x851
	.uleb128 0x1e
	.long	0x1524
	.byte	0x1
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF229
	.byte	0x12
	.value	0x21c
	.byte	0x1
	.long	0x85f
	.uleb128 0x1e
	.long	0x1524
	.byte	0x1
	.uleb128 0x1e
	.long	0x38
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x13
	.byte	0x54
	.long	0x1535
	.uleb128 0x17
	.byte	0x13
	.byte	0x55
	.long	0x152a
	.uleb128 0x17
	.byte	0x13
	.byte	0x56
	.long	0xaa2
	.uleb128 0x17
	.byte	0x13
	.byte	0x5e
	.long	0x154b
	.uleb128 0x17
	.byte	0x13
	.byte	0x67
	.long	0x1567
	.uleb128 0x17
	.byte	0x13
	.byte	0x6a
	.long	0x1583
	.uleb128 0x17
	.byte	0x13
	.byte	0x6b
	.long	0x159a
	.uleb128 0x20
	.long	.LASF240
	.byte	0x4
	.byte	0x4b
	.long	0x811
	.byte	0x1
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF107
	.byte	0x15
	.byte	0x58
	.long	.LASF107
	.long	0x427
	.byte	0x1
	.long	0x8d1
	.uleb128 0x22
	.long	0x427
	.uleb128 0x22
	.long	0x38
	.uleb128 0x22
	.long	0x46
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF96
	.byte	0x14
	.byte	0x31
	.long	0xa3
	.byte	0x1
	.long	0x8f2
	.uleb128 0x22
	.long	0xa3
	.uleb128 0x22
	.long	0x427
	.uleb128 0x22
	.long	0x46
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF97
	.byte	0x14
	.byte	0x38
	.long	0xa3
	.byte	0x1
	.long	0x913
	.uleb128 0x22
	.long	0xa3
	.uleb128 0x22
	.long	0x427
	.uleb128 0x22
	.long	0x46
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF98
	.byte	0x14
	.byte	0x4d
	.long	0xa3
	.byte	0x1
	.long	0x934
	.uleb128 0x22
	.long	0xa3
	.uleb128 0x22
	.long	0x38
	.uleb128 0x22
	.long	0x46
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF99
	.byte	0x14
	.byte	0x8e
	.long	0xa5
	.byte	0x1
	.long	0x950
	.uleb128 0x22
	.long	0xa5
	.uleb128 0x22
	.long	0x3b9
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF100
	.byte	0x15
	.byte	0x96
	.long	0x38
	.byte	0x1
	.long	0x96c
	.uleb128 0x22
	.long	0x3b9
	.uleb128 0x22
	.long	0x3b9
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF101
	.byte	0x14
	.byte	0x67
	.long	0xa5
	.byte	0x1
	.long	0x988
	.uleb128 0x22
	.long	0xa5
	.uleb128 0x22
	.long	0x3b9
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF102
	.byte	0x15
	.value	0x19d
	.long	0xa5
	.byte	0x1
	.long	0x9a0
	.uleb128 0x22
	.long	0x38
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF103
	.byte	0x14
	.byte	0x95
	.long	0xa5
	.byte	0x1
	.long	0x9c1
	.uleb128 0x22
	.long	0xa5
	.uleb128 0x22
	.long	0x3b9
	.uleb128 0x22
	.long	0x46
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF104
	.byte	0x14
	.byte	0x76
	.long	0xa5
	.byte	0x1
	.long	0x9e2
	.uleb128 0x22
	.long	0xa5
	.uleb128 0x22
	.long	0x3b9
	.uleb128 0x22
	.long	0x46
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF105
	.byte	0x15
	.value	0x15c
	.long	0xa5
	.byte	0x1
	.long	0x9ff
	.uleb128 0x22
	.long	0xa5
	.uleb128 0x22
	.long	0x3b9
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF106
	.byte	0x15
	.byte	0x99
	.long	0x46
	.byte	0x1
	.long	0xa20
	.uleb128 0x22
	.long	0xa5
	.uleb128 0x22
	.long	0x3b9
	.uleb128 0x22
	.long	0x46
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF108
	.byte	0x15
	.byte	0xe4
	.long	.LASF108
	.long	0x3b9
	.byte	0x1
	.long	0xa40
	.uleb128 0x22
	.long	0x3b9
	.uleb128 0x22
	.long	0x38
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF109
	.byte	0x15
	.value	0x133
	.long	.LASF109
	.long	0x3b9
	.byte	0x1
	.long	0xa61
	.uleb128 0x22
	.long	0x3b9
	.uleb128 0x22
	.long	0x3b9
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF110
	.byte	0x15
	.byte	0xff
	.long	.LASF110
	.long	0x3b9
	.byte	0x1
	.long	0xa81
	.uleb128 0x22
	.long	0x3b9
	.uleb128 0x22
	.long	0x38
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF111
	.byte	0x15
	.value	0x14f
	.long	.LASF111
	.long	0x3b9
	.byte	0x1
	.long	0xaa2
	.uleb128 0x22
	.long	0x3b9
	.uleb128 0x22
	.long	0x3b9
	.byte	0
	.uleb128 0x26
	.long	.LASF112
	.byte	0x5
	.value	0x162
	.long	0x66
	.uleb128 0x4
	.long	.LASF113
	.byte	0x9
	.byte	0x6a
	.long	0x2ed
	.uleb128 0x24
	.byte	0x1
	.long	.LASF114
	.byte	0x9
	.value	0x181
	.long	0xaa2
	.byte	0x1
	.long	0xad1
	.uleb128 0x22
	.long	0x38
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF115
	.byte	0x9
	.value	0x2e6
	.long	0xaa2
	.byte	0x1
	.long	0xae9
	.uleb128 0x22
	.long	0xae9
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x28a
	.uleb128 0x24
	.byte	0x1
	.long	.LASF116
	.byte	0x16
	.value	0x181
	.long	0xb11
	.byte	0x1
	.long	0xb11
	.uleb128 0x22
	.long	0xb11
	.uleb128 0x22
	.long	0x38
	.uleb128 0x22
	.long	0xae9
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb17
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF117
	.uleb128 0x24
	.byte	0x1
	.long	.LASF118
	.byte	0x9
	.value	0x2f4
	.long	0xaa2
	.byte	0x1
	.long	0xb3b
	.uleb128 0x22
	.long	0xb17
	.uleb128 0x22
	.long	0xae9
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF119
	.byte	0x9
	.value	0x30a
	.long	0x38
	.byte	0x1
	.long	0xb58
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0xae9
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb5e
	.uleb128 0x11
	.long	0xb17
	.uleb128 0x24
	.byte	0x1
	.long	.LASF120
	.byte	0x9
	.value	0x248
	.long	0x38
	.byte	0x1
	.long	0xb80
	.uleb128 0x22
	.long	0xae9
	.uleb128 0x22
	.long	0x38
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF121
	.byte	0x16
	.value	0x15a
	.long	0x38
	.byte	0x1
	.long	0xb9e
	.uleb128 0x22
	.long	0xae9
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x27
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF122
	.byte	0x9
	.value	0x278
	.long	0x38
	.byte	0x1
	.long	0xbbc
	.uleb128 0x22
	.long	0xae9
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x27
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF123
	.byte	0x9
	.value	0x2e7
	.long	0xaa2
	.byte	0x1
	.long	0xbd4
	.uleb128 0x22
	.long	0xae9
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF211
	.byte	0x9
	.value	0x2ed
	.long	0xaa2
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.long	.LASF124
	.byte	0x9
	.value	0x18c
	.long	0x46
	.byte	0x1
	.long	0xc04
	.uleb128 0x22
	.long	0x3b9
	.uleb128 0x22
	.long	0x46
	.uleb128 0x22
	.long	0xc04
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xaae
	.uleb128 0x24
	.byte	0x1
	.long	.LASF125
	.byte	0x9
	.value	0x16a
	.long	0x46
	.byte	0x1
	.long	0xc31
	.uleb128 0x22
	.long	0xb11
	.uleb128 0x22
	.long	0x3b9
	.uleb128 0x22
	.long	0x46
	.uleb128 0x22
	.long	0xc04
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF126
	.byte	0x9
	.value	0x166
	.long	0x38
	.byte	0x1
	.long	0xc49
	.uleb128 0x22
	.long	0xc49
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc4f
	.uleb128 0x11
	.long	0xaae
	.uleb128 0x24
	.byte	0x1
	.long	.LASF127
	.byte	0x16
	.value	0x1db
	.long	0x46
	.byte	0x1
	.long	0xc7b
	.uleb128 0x22
	.long	0xb11
	.uleb128 0x22
	.long	0xc7b
	.uleb128 0x22
	.long	0x46
	.uleb128 0x22
	.long	0xc04
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3b9
	.uleb128 0x24
	.byte	0x1
	.long	.LASF128
	.byte	0x9
	.value	0x2f5
	.long	0xaa2
	.byte	0x1
	.long	0xc9e
	.uleb128 0x22
	.long	0xb17
	.uleb128 0x22
	.long	0xae9
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF129
	.byte	0x9
	.value	0x2fb
	.long	0xaa2
	.byte	0x1
	.long	0xcb6
	.uleb128 0x22
	.long	0xb17
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF130
	.byte	0x16
	.value	0x11e
	.long	0x38
	.byte	0x1
	.long	0xcd9
	.uleb128 0x22
	.long	0xb11
	.uleb128 0x22
	.long	0x46
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x27
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF131
	.byte	0x9
	.value	0x282
	.long	0x38
	.byte	0x1
	.long	0xcf7
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x27
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF132
	.byte	0x9
	.value	0x312
	.long	0xaa2
	.byte	0x1
	.long	0xd14
	.uleb128 0x22
	.long	0xaa2
	.uleb128 0x22
	.long	0xae9
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF133
	.byte	0x16
	.value	0x16d
	.long	0x38
	.byte	0x1
	.long	0xd36
	.uleb128 0x22
	.long	0xae9
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0xd36
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2f8
	.uleb128 0x24
	.byte	0x1
	.long	.LASF134
	.byte	0x9
	.value	0x2ae
	.long	0x38
	.byte	0x1
	.long	0xd5e
	.uleb128 0x22
	.long	0xae9
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0xd36
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF135
	.byte	0x16
	.value	0x13c
	.long	0x38
	.byte	0x1
	.long	0xd85
	.uleb128 0x22
	.long	0xb11
	.uleb128 0x22
	.long	0x46
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0xd36
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF136
	.byte	0x9
	.value	0x2ba
	.long	0x38
	.byte	0x1
	.long	0xda7
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0xd36
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF137
	.byte	0x16
	.value	0x167
	.long	0x38
	.byte	0x1
	.long	0xdc4
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0xd36
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF138
	.byte	0x9
	.value	0x2b6
	.long	0x38
	.byte	0x1
	.long	0xde1
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0xd36
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF139
	.byte	0x16
	.value	0x1b9
	.long	0x46
	.byte	0x1
	.long	0xe03
	.uleb128 0x22
	.long	0xa5
	.uleb128 0x22
	.long	0xb17
	.uleb128 0x22
	.long	0xc04
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF140
	.byte	0x16
	.byte	0xf7
	.long	0xb11
	.byte	0x1
	.long	0xe1f
	.uleb128 0x22
	.long	0xb11
	.uleb128 0x22
	.long	0xb58
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF141
	.byte	0x9
	.byte	0xa0
	.long	0x38
	.byte	0x1
	.long	0xe3b
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0xb58
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF142
	.byte	0x9
	.byte	0xbd
	.long	0x38
	.byte	0x1
	.long	0xe57
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0xb58
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF143
	.byte	0x16
	.byte	0x99
	.long	0xb11
	.byte	0x1
	.long	0xe73
	.uleb128 0x22
	.long	0xb11
	.uleb128 0x22
	.long	0xb58
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF144
	.byte	0x9
	.byte	0xf9
	.long	0x46
	.byte	0x1
	.long	0xe8f
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0xb58
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF145
	.byte	0x9
	.value	0x354
	.long	0x46
	.byte	0x1
	.long	0xeb6
	.uleb128 0x22
	.long	0xb11
	.uleb128 0x22
	.long	0x46
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0xeb6
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xebc
	.uleb128 0x11
	.long	0x506
	.uleb128 0x24
	.byte	0x1
	.long	.LASF146
	.byte	0x9
	.value	0x11c
	.long	0x46
	.byte	0x1
	.long	0xed9
	.uleb128 0x22
	.long	0xb58
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF147
	.byte	0x16
	.value	0x108
	.long	0xb11
	.byte	0x1
	.long	0xefb
	.uleb128 0x22
	.long	0xb11
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0x46
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF148
	.byte	0x9
	.byte	0xa3
	.long	0x38
	.byte	0x1
	.long	0xf1c
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0x46
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF149
	.byte	0x16
	.byte	0xc0
	.long	0xb11
	.byte	0x1
	.long	0xf3d
	.uleb128 0x22
	.long	0xb11
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0x46
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF150
	.byte	0x16
	.value	0x1fd
	.long	0x46
	.byte	0x1
	.long	0xf64
	.uleb128 0x22
	.long	0xa5
	.uleb128 0x22
	.long	0xf64
	.uleb128 0x22
	.long	0x46
	.uleb128 0x22
	.long	0xc04
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb58
	.uleb128 0x23
	.byte	0x1
	.long	.LASF151
	.byte	0x9
	.byte	0xfd
	.long	0x46
	.byte	0x1
	.long	0xf86
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0xb58
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF152
	.byte	0x9
	.value	0x1bf
	.long	0x31
	.byte	0x1
	.long	0xfa3
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0xfa3
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb11
	.uleb128 0x24
	.byte	0x1
	.long	.LASF153
	.byte	0x9
	.value	0x1c6
	.long	0x3c4
	.byte	0x1
	.long	0xfc6
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0xfa3
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF154
	.byte	0x9
	.value	0x117
	.long	0xb11
	.byte	0x1
	.long	0xfe8
	.uleb128 0x22
	.long	0xb11
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0xfa3
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF155
	.byte	0x9
	.value	0x1d1
	.long	0x3f
	.byte	0x1
	.long	0x100a
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0xfa3
	.uleb128 0x22
	.long	0x38
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF156
	.byte	0x9
	.value	0x1d6
	.long	0x51
	.byte	0x1
	.long	0x102c
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0xfa3
	.uleb128 0x22
	.long	0x38
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF157
	.byte	0x9
	.byte	0xc1
	.long	0x46
	.byte	0x1
	.long	0x104d
	.uleb128 0x22
	.long	0xb11
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0x46
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF158
	.byte	0x9
	.value	0x187
	.long	0x38
	.byte	0x1
	.long	0x1065
	.uleb128 0x22
	.long	0xaa2
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF159
	.byte	0x9
	.value	0x142
	.long	0x38
	.byte	0x1
	.long	0x1087
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0x46
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF160
	.byte	0x16
	.byte	0x28
	.long	0xb11
	.byte	0x1
	.long	0x10a8
	.uleb128 0x22
	.long	0xb11
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0x46
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF161
	.byte	0x16
	.byte	0x45
	.long	0xb11
	.byte	0x1
	.long	0x10c9
	.uleb128 0x22
	.long	0xb11
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0x46
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF162
	.byte	0x16
	.byte	0x82
	.long	0xb11
	.byte	0x1
	.long	0x10ea
	.uleb128 0x22
	.long	0xb11
	.uleb128 0x22
	.long	0xb17
	.uleb128 0x22
	.long	0x46
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF163
	.byte	0x16
	.value	0x154
	.long	0x38
	.byte	0x1
	.long	0x1103
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x27
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF164
	.byte	0x9
	.value	0x27f
	.long	0x38
	.byte	0x1
	.long	0x111c
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x27
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF165
	.byte	0x9
	.byte	0xdd
	.long	.LASF165
	.long	0xb58
	.byte	0x1
	.long	0x113c
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0xb17
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF166
	.byte	0x9
	.value	0x103
	.long	.LASF166
	.long	0xb58
	.byte	0x1
	.long	0x115d
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0xb58
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF167
	.byte	0x9
	.byte	0xe7
	.long	.LASF167
	.long	0xb58
	.byte	0x1
	.long	0x117d
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0xb17
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF168
	.byte	0x9
	.value	0x10e
	.long	.LASF168
	.long	0xb58
	.byte	0x1
	.long	0x119e
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0xb58
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF169
	.byte	0x9
	.value	0x139
	.long	.LASF169
	.long	0xb58
	.byte	0x1
	.long	0x11c4
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0xb17
	.uleb128 0x22
	.long	0x46
	.byte	0
	.uleb128 0x29
	.long	.LASF170
	.byte	0xf
	.byte	0xf4
	.long	0x12f4
	.uleb128 0x17
	.byte	0xf
	.byte	0xfa
	.long	0x12f4
	.uleb128 0x18
	.byte	0xf
	.value	0x103
	.long	0x1318
	.uleb128 0x18
	.byte	0xf
	.value	0x104
	.long	0x133a
	.uleb128 0x17
	.byte	0x17
	.byte	0x2a
	.long	0x7dc
	.uleb128 0x17
	.byte	0x17
	.byte	0x2b
	.long	0x7fc
	.uleb128 0xf
	.long	.LASF171
	.byte	0x1
	.byte	0x18
	.byte	0x37
	.long	0x122d
	.uleb128 0x2a
	.long	.LASF172
	.byte	0x18
	.byte	0x3a
	.long	0x3d2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.long	.LASF173
	.byte	0x18
	.byte	0x3b
	.long	0x3d2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF174
	.long	0x38
	.uleb128 0x2b
	.long	.LASF174
	.long	0x38
	.byte	0
	.uleb128 0xf
	.long	.LASF175
	.byte	0x1
	.byte	0x18
	.byte	0x37
	.long	0x1259
	.uleb128 0x2a
	.long	.LASF176
	.byte	0x18
	.byte	0x40
	.long	0x3d2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF174
	.long	0x51
	.uleb128 0x2b
	.long	.LASF174
	.long	0x51
	.byte	0
	.uleb128 0xf
	.long	.LASF177
	.byte	0x1
	.byte	0x18
	.byte	0x37
	.long	0x1285
	.uleb128 0x2a
	.long	.LASF173
	.byte	0x18
	.byte	0x3b
	.long	0x3bf
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF174
	.long	0xab
	.uleb128 0x2b
	.long	.LASF174
	.long	0xab
	.byte	0
	.uleb128 0xf
	.long	.LASF178
	.byte	0x1
	.byte	0x18
	.byte	0x37
	.long	0x12be
	.uleb128 0x2a
	.long	.LASF172
	.byte	0x18
	.byte	0x3a
	.long	0x15b1
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.long	.LASF173
	.byte	0x18
	.byte	0x3b
	.long	0x15b1
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF174
	.long	0x74
	.uleb128 0x2b
	.long	.LASF174
	.long	0x74
	.byte	0
	.uleb128 0x2c
	.long	.LASF393
	.byte	0x1
	.byte	0x18
	.byte	0x37
	.uleb128 0x2a
	.long	.LASF172
	.byte	0x18
	.byte	0x3a
	.long	0x15b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.long	.LASF173
	.byte	0x18
	.byte	0x3b
	.long	0x15b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF174
	.long	0x3f
	.uleb128 0x2b
	.long	.LASF174
	.long	0x3f
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF179
	.byte	0x9
	.value	0x1c8
	.long	0x1311
	.byte	0x1
	.long	0x1311
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0xfa3
	.byte	0
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF180
	.uleb128 0x24
	.byte	0x1
	.long	.LASF181
	.byte	0x9
	.value	0x1e0
	.long	0x3cb
	.byte	0x1
	.long	0x133a
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0xfa3
	.uleb128 0x22
	.long	0x38
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF182
	.byte	0x9
	.value	0x1e7
	.long	0x420
	.byte	0x1
	.long	0x135c
	.uleb128 0x22
	.long	0xb58
	.uleb128 0x22
	.long	0xfa3
	.uleb128 0x22
	.long	0x38
	.byte	0
	.uleb128 0x29
	.long	.LASF183
	.byte	0x19
	.byte	0x38
	.long	0x136f
	.uleb128 0x2d
	.byte	0x19
	.byte	0x39
	.long	0x7d5
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF184
	.uleb128 0xf
	.long	.LASF185
	.byte	0x60
	.byte	0x1a
	.byte	0x36
	.long	0x14d3
	.uleb128 0xc
	.long	.LASF186
	.byte	0x1a
	.byte	0x3a
	.long	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF187
	.byte	0x1a
	.byte	0x3b
	.long	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF188
	.byte	0x1a
	.byte	0x41
	.long	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.long	.LASF189
	.byte	0x1a
	.byte	0x47
	.long	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.long	.LASF190
	.byte	0x1a
	.byte	0x48
	.long	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.long	.LASF191
	.byte	0x1a
	.byte	0x49
	.long	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.long	.LASF192
	.byte	0x1a
	.byte	0x4a
	.long	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.long	.LASF193
	.byte	0x1a
	.byte	0x4b
	.long	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.long	.LASF194
	.byte	0x1a
	.byte	0x4c
	.long	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.long	.LASF195
	.byte	0x1a
	.byte	0x4d
	.long	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xc
	.long	.LASF196
	.byte	0x1a
	.byte	0x4e
	.long	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xc
	.long	.LASF197
	.byte	0x1a
	.byte	0x4f
	.long	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x51
	.uleb128 0xc
	.long	.LASF198
	.byte	0x1a
	.byte	0x51
	.long	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x52
	.uleb128 0xc
	.long	.LASF199
	.byte	0x1a
	.byte	0x53
	.long	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x53
	.uleb128 0xc
	.long	.LASF200
	.byte	0x1a
	.byte	0x55
	.long	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xc
	.long	.LASF201
	.byte	0x1a
	.byte	0x57
	.long	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x55
	.uleb128 0xc
	.long	.LASF202
	.byte	0x1a
	.byte	0x5e
	.long	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x56
	.uleb128 0xc
	.long	.LASF203
	.byte	0x1a
	.byte	0x5f
	.long	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x57
	.uleb128 0xc
	.long	.LASF204
	.byte	0x1a
	.byte	0x62
	.long	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xc
	.long	.LASF205
	.byte	0x1a
	.byte	0x64
	.long	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x59
	.uleb128 0xc
	.long	.LASF206
	.byte	0x1a
	.byte	0x66
	.long	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x5a
	.uleb128 0xc
	.long	.LASF207
	.byte	0x1a
	.byte	0x68
	.long	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x5b
	.uleb128 0xc
	.long	.LASF208
	.byte	0x1a
	.byte	0x6f
	.long	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xc
	.long	.LASF209
	.byte	0x1a
	.byte	0x70
	.long	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x5d
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF210
	.byte	0x1a
	.byte	0x7d
	.long	0xa5
	.byte	0x1
	.long	0x14ef
	.uleb128 0x22
	.long	0x38
	.uleb128 0x22
	.long	0x3b9
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF212
	.byte	0x1a
	.byte	0x80
	.long	0x14fc
	.byte	0x1
	.uleb128 0x6
	.byte	0x8
	.long	0x1376
	.uleb128 0x2f
	.long	0x150d
	.uleb128 0x22
	.long	0xa3
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1502
	.uleb128 0x4
	.long	.LASF213
	.byte	0x1b
	.byte	0x20
	.long	0x38
	.uleb128 0x6
	.byte	0x8
	.long	0xa5
	.uleb128 0x6
	.byte	0x8
	.long	0x811
	.uleb128 0x4
	.long	.LASF214
	.byte	0x1c
	.byte	0x35
	.long	0x51
	.uleb128 0x4
	.long	.LASF215
	.byte	0x1c
	.byte	0xbb
	.long	0x1540
	.uleb128 0x6
	.byte	0x8
	.long	0x1546
	.uleb128 0x11
	.long	0x7b
	.uleb128 0x23
	.byte	0x1
	.long	.LASF216
	.byte	0x1c
	.byte	0xb0
	.long	0x38
	.byte	0x1
	.long	0x1567
	.uleb128 0x22
	.long	0xaa2
	.uleb128 0x22
	.long	0x152a
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF217
	.byte	0x1c
	.byte	0xde
	.long	0xaa2
	.byte	0x1
	.long	0x1583
	.uleb128 0x22
	.long	0xaa2
	.uleb128 0x22
	.long	0x1535
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF218
	.byte	0x1c
	.byte	0xdb
	.long	0x1535
	.byte	0x1
	.long	0x159a
	.uleb128 0x22
	.long	0x3b9
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF219
	.byte	0x1c
	.byte	0xac
	.long	0x152a
	.byte	0x1
	.long	0x15b1
	.uleb128 0x22
	.long	0x3b9
	.byte	0
	.uleb128 0x11
	.long	0x74
	.uleb128 0x11
	.long	0x3f
	.uleb128 0x30
	.byte	0x1
	.long	.LASF220
	.byte	0x2
	.byte	0x60
	.long	0x38
	.byte	0x3
	.byte	0x1
	.long	0x15e5
	.uleb128 0x31
	.long	.LASF221
	.byte	0x2
	.byte	0x60
	.long	0x15e5
	.uleb128 0x31
	.long	.LASF222
	.byte	0x2
	.byte	0x60
	.long	0x3b9
	.uleb128 0x27
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb2
	.uleb128 0x32
	.byte	0x1
	.long	.LASF223
	.byte	0x1
	.value	0x5cd
	.long	0x31
	.byte	0x1
	.long	0x162c
	.uleb128 0x33
	.string	"s"
	.byte	0x1
	.value	0x5cd
	.long	0x162c
	.uleb128 0x34
	.uleb128 0x35
	.string	"ix"
	.byte	0x1
	.value	0x5d1
	.long	0x3f
	.uleb128 0x35
	.string	"k1"
	.byte	0x1
	.value	0x5d1
	.long	0x3f
	.uleb128 0x36
	.long	.LASF224
	.byte	0x1
	.value	0x5d2
	.long	0x31
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3f
	.uleb128 0x32
	.byte	0x1
	.long	.LASF225
	.byte	0x1
	.value	0x4fc
	.long	0x31
	.byte	0x1
	.long	0x165b
	.uleb128 0x33
	.string	"dA"
	.byte	0x1
	.value	0x4fc
	.long	0x31
	.uleb128 0x33
	.string	"dB"
	.byte	0x1
	.value	0x4fc
	.long	0x31
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.long	.LASF226
	.byte	0x2
	.byte	0x67
	.long	0x38
	.byte	0x3
	.byte	0x1
	.long	0x167a
	.uleb128 0x31
	.long	.LASF222
	.byte	0x2
	.byte	0x67
	.long	0x3b9
	.uleb128 0x27
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.long	.LASF227
	.byte	0x3
	.value	0x11c
	.long	0x38
	.byte	0x3
	.long	0x1699
	.uleb128 0x37
	.long	.LASF228
	.byte	0x3
	.value	0x11c
	.long	0x3b9
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.long	.LASF230
	.byte	0x1
	.value	0x590
	.byte	0x1
	.long	0x16c8
	.uleb128 0x33
	.string	"v"
	.byte	0x1
	.value	0x590
	.long	0x4ef
	.uleb128 0x33
	.string	"nl"
	.byte	0x1
	.value	0x590
	.long	0x3f
	.uleb128 0x33
	.string	"nh"
	.byte	0x1
	.value	0x590
	.long	0x3f
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.long	.LASF231
	.byte	0x1
	.value	0x5b4
	.byte	0x1
	.long	0x1711
	.uleb128 0x33
	.string	"m"
	.byte	0x1
	.value	0x5b4
	.long	0x4f5
	.uleb128 0x33
	.string	"nrl"
	.byte	0x1
	.value	0x5b4
	.long	0x3f
	.uleb128 0x33
	.string	"nrh"
	.byte	0x1
	.value	0x5b4
	.long	0x3f
	.uleb128 0x33
	.string	"ncl"
	.byte	0x1
	.value	0x5b4
	.long	0x3f
	.uleb128 0x33
	.string	"nch"
	.byte	0x1
	.value	0x5b4
	.long	0x3f
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.long	.LASF232
	.byte	0x1
	.value	0x583
	.long	0x4ef
	.byte	0x1
	.long	0x1746
	.uleb128 0x33
	.string	"nl"
	.byte	0x1
	.value	0x583
	.long	0x3f
	.uleb128 0x33
	.string	"nh"
	.byte	0x1
	.value	0x583
	.long	0x3f
	.uleb128 0x34
	.uleb128 0x35
	.string	"v"
	.byte	0x1
	.value	0x587
	.long	0x4ef
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.long	.LASF233
	.byte	0x1
	.value	0x599
	.long	0x4f5
	.byte	0x1
	.long	0x17b7
	.uleb128 0x33
	.string	"nrl"
	.byte	0x1
	.value	0x599
	.long	0x3f
	.uleb128 0x33
	.string	"nrh"
	.byte	0x1
	.value	0x599
	.long	0x3f
	.uleb128 0x33
	.string	"ncl"
	.byte	0x1
	.value	0x599
	.long	0x3f
	.uleb128 0x33
	.string	"nch"
	.byte	0x1
	.value	0x599
	.long	0x3f
	.uleb128 0x34
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x59d
	.long	0x3f
	.uleb128 0x36
	.long	.LASF234
	.byte	0x1
	.value	0x59d
	.long	0x3f
	.uleb128 0x36
	.long	.LASF235
	.byte	0x1
	.value	0x59d
	.long	0x3f
	.uleb128 0x35
	.string	"m"
	.byte	0x1
	.value	0x59e
	.long	0x4f5
	.byte	0
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.long	.LASF236
	.byte	0x1
	.value	0x57c
	.byte	0x1
	.long	0x17e6
	.uleb128 0x33
	.string	"v"
	.byte	0x1
	.value	0x57c
	.long	0x17e6
	.uleb128 0x33
	.string	"nl"
	.byte	0x1
	.value	0x57c
	.long	0x3f
	.uleb128 0x33
	.string	"nh"
	.byte	0x1
	.value	0x57c
	.long	0x3f
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x38
	.uleb128 0x32
	.byte	0x1
	.long	.LASF237
	.byte	0x1
	.value	0x571
	.long	0x17e6
	.byte	0x1
	.long	0x1821
	.uleb128 0x33
	.string	"nl"
	.byte	0x1
	.value	0x571
	.long	0x3f
	.uleb128 0x33
	.string	"nh"
	.byte	0x1
	.value	0x571
	.long	0x3f
	.uleb128 0x34
	.uleb128 0x35
	.string	"v"
	.byte	0x1
	.value	0x574
	.long	0x17e6
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF394
	.byte	0x1
	.byte	0x1
	.long	0x1845
	.uleb128 0x37
	.long	.LASF238
	.byte	0x1
	.value	0x5dc
	.long	0x38
	.uleb128 0x37
	.long	.LASF239
	.byte	0x1
	.value	0x5dc
	.long	0x38
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.long	.LASF244
	.byte	0x1
	.byte	0x28
	.long	.LASF246
	.long	0x31
	.quad	.LFB50
	.quad	.LFE50
	.long	.LLST0
	.byte	0x1
	.long	0x18b6
	.uleb128 0x3b
	.string	"u"
	.byte	0x1
	.byte	0x28
	.long	0x31
	.long	.LLST1
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0
	.uleb128 0x3d
	.string	"x"
	.byte	0x1
	.byte	0x2d
	.long	0x31
	.long	.LLST2
	.uleb128 0x3d
	.string	"r"
	.byte	0x1
	.byte	0x2d
	.long	0x31
	.long	.LLST3
	.uleb128 0x3e
	.quad	.LVL5
	.long	0x56ff
	.uleb128 0x3e
	.quad	.LVL6
	.long	0x56ff
	.byte	0
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.long	.LASF241
	.byte	0x1
	.byte	0x9d
	.long	0x38
	.byte	0x1
	.long	0x18fe
	.uleb128 0x31
	.long	.LASF242
	.byte	0x1
	.byte	0x9d
	.long	0x4ef
	.uleb128 0x40
	.string	"iN"
	.byte	0x1
	.byte	0x9e
	.long	0x38
	.uleb128 0x31
	.long	.LASF78
	.byte	0x1
	.byte	0x9f
	.long	0x4ef
	.uleb128 0x34
	.uleb128 0x41
	.long	.LASF243
	.byte	0x1
	.byte	0xa3
	.long	0x38
	.uleb128 0x42
	.string	"i"
	.byte	0x1
	.byte	0xa4
	.long	0x38
	.byte	0
	.byte	0
	.uleb128 0x43
	.long	0x18b6
	.long	.LASF266
	.quad	.LFB78
	.quad	.LFE78
	.long	.LLST4
	.byte	0x1
	.long	0x1946
	.uleb128 0x44
	.long	0x18c7
	.byte	0x1
	.byte	0x55
	.uleb128 0x44
	.long	0x18d2
	.byte	0x1
	.byte	0x54
	.uleb128 0x44
	.long	0x18dc
	.byte	0x1
	.byte	0x51
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x45
	.long	0x18e8
	.uleb128 0x45
	.long	0x18f3
	.byte	0
	.byte	0
	.uleb128 0x46
	.byte	0x1
	.long	.LASF245
	.byte	0x1
	.byte	0xb1
	.long	.LASF247
	.long	0x38
	.quad	.LFB79
	.quad	.LFE79
	.long	.LLST5
	.byte	0x1
	.long	0x19d5
	.uleb128 0x47
	.long	.LASF79
	.byte	0x1
	.byte	0xb1
	.long	0x4f5
	.byte	0x1
	.byte	0x55
	.uleb128 0x48
	.string	"iN"
	.byte	0x1
	.byte	0xb2
	.long	0x38
	.byte	0x1
	.byte	0x54
	.uleb128 0x47
	.long	.LASF77
	.byte	0x1
	.byte	0xb3
	.long	0x38
	.byte	0x1
	.byte	0x51
	.uleb128 0x47
	.long	.LASF248
	.byte	0x1
	.byte	0xb4
	.long	0x4ef
	.byte	0x1
	.byte	0x5f
	.uleb128 0x47
	.long	.LASF249
	.byte	0x1
	.byte	0xb5
	.long	0x4f5
	.byte	0x1
	.byte	0x58
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0xc0
	.uleb128 0x42
	.string	"i"
	.byte	0x1
	.byte	0xc9
	.long	0x38
	.uleb128 0x49
	.string	"j"
	.byte	0x1
	.byte	0xc9
	.long	0x38
	.byte	0x1
	.byte	0x5e
	.uleb128 0x41
	.long	.LASF243
	.byte	0x1
	.byte	0xca
	.long	0x38
	.byte	0
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.long	.LASF250
	.byte	0x1
	.byte	0xd6
	.long	.LASF251
	.long	0x38
	.quad	.LFB80
	.quad	.LFE80
	.long	.LLST6
	.byte	0x1
	.long	0x1aab
	.uleb128 0x4a
	.long	.LASF252
	.byte	0x1
	.byte	0xd6
	.long	0x4ef
	.long	.LLST7
	.uleb128 0x47
	.long	.LASF253
	.byte	0x1
	.byte	0xd7
	.long	0x4f5
	.byte	0x1
	.byte	0x54
	.uleb128 0x3b
	.string	"iN"
	.byte	0x1
	.byte	0xd8
	.long	0x38
	.long	.LLST8
	.uleb128 0x47
	.long	.LASF77
	.byte	0x1
	.byte	0xd9
	.long	0x38
	.byte	0x1
	.byte	0x52
	.uleb128 0x4a
	.long	.LASF76
	.byte	0x1
	.byte	0xda
	.long	0x31
	.long	.LLST9
	.uleb128 0x4a
	.long	.LASF79
	.byte	0x1
	.byte	0xdb
	.long	0x4f5
	.long	.LLST10
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x140
	.uleb128 0x4b
	.long	.LASF243
	.byte	0x1
	.byte	0xdf
	.long	0x38
	.byte	0
	.uleb128 0x3d
	.string	"i"
	.byte	0x1
	.byte	0xe0
	.long	0x38
	.long	.LLST11
	.uleb128 0x3d
	.string	"j"
	.byte	0x1
	.byte	0xe0
	.long	0x38
	.long	.LLST12
	.uleb128 0x3d
	.string	"l"
	.byte	0x1
	.byte	0xe0
	.long	0x38
	.long	.LLST13
	.uleb128 0x4c
	.long	.LASF254
	.byte	0x1
	.byte	0xe1
	.long	0x31
	.long	.LLST14
	.uleb128 0x4c
	.long	.LASF255
	.byte	0x1
	.byte	0xe2
	.long	0x31
	.long	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x4d
	.byte	0x1
	.long	.LASF256
	.byte	0x1
	.value	0x168
	.long	.LASF258
	.long	0x38
	.quad	.LFB83
	.quad	.LFE83
	.byte	0x2
	.byte	0x77
	.sleb128 8
	.byte	0x1
	.long	0x1b23
	.uleb128 0x4e
	.long	.LASF78
	.byte	0x1
	.value	0x168
	.long	0x4ef
	.long	.LLST16
	.uleb128 0x4f
	.string	"iN"
	.byte	0x1
	.value	0x169
	.long	0x38
	.byte	0x1
	.byte	0x54
	.uleb128 0x4e
	.long	.LASF242
	.byte	0x1
	.value	0x16a
	.long	0x4ef
	.long	.LLST17
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x1a0
	.uleb128 0x50
	.long	.LASF243
	.byte	0x1
	.value	0x16e
	.long	0x38
	.byte	0
	.uleb128 0x51
	.string	"i"
	.byte	0x1
	.value	0x16f
	.long	0x38
	.long	.LLST18
	.byte	0
	.byte	0
	.uleb128 0x52
	.byte	0x1
	.long	.LASF257
	.byte	0x1
	.value	0x17a
	.long	.LASF259
	.long	0x38
	.quad	.LFB84
	.quad	.LFE84
	.long	.LLST19
	.byte	0x1
	.long	0x1c9f
	.uleb128 0x4e
	.long	.LASF260
	.byte	0x1
	.value	0x17a
	.long	0x4ef
	.long	.LLST20
	.uleb128 0x53
	.string	"iN"
	.byte	0x1
	.value	0x17b
	.long	0x38
	.long	.LLST21
	.uleb128 0x4e
	.long	.LASF76
	.byte	0x1
	.value	0x17c
	.long	0x31
	.long	.LLST22
	.uleb128 0x4e
	.long	.LASF261
	.byte	0x1
	.value	0x17d
	.long	0x4ef
	.long	.LLST23
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x1e0
	.uleb128 0x51
	.string	"i"
	.byte	0x1
	.value	0x17f
	.long	0x38
	.long	.LLST24
	.uleb128 0x51
	.string	"j"
	.byte	0x1
	.value	0x17f
	.long	0x38
	.long	.LLST25
	.uleb128 0x54
	.long	.LASF243
	.byte	0x1
	.value	0x180
	.long	0x38
	.long	.LLST26
	.uleb128 0x54
	.long	.LASF254
	.byte	0x1
	.value	0x182
	.long	0x31
	.long	.LLST27
	.uleb128 0x3e
	.quad	.LVL102
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL103
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL105
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL106
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL107
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL108
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL109
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL110
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL114
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL115
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL116
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL117
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL118
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL119
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL120
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL121
	.long	0x5716
	.byte	0
	.byte	0
	.uleb128 0x55
	.byte	0x1
	.long	.LASF268
	.byte	0x1
	.value	0x254
	.long	.LASF270
	.quad	.LFB1075
	.quad	.LFE1075
	.long	.LLST28
	.byte	0x1
	.long	0x1edc
	.uleb128 0x4e
	.long	.LASF262
	.byte	0x1
	.value	0x254
	.long	0xa5
	.long	.LLST29
	.uleb128 0x56
	.long	0x15bb
	.quad	.LBB100
	.quad	.LBE100
	.byte	0x1
	.value	0x255
	.long	0x1d2e
	.uleb128 0x44
	.long	0x15d8
	.byte	0xa
	.byte	0x3
	.quad	.LC27
	.byte	0x9f
	.uleb128 0x57
	.long	0x15cd
	.uleb128 0x58
	.quad	.LVL128
	.long	0x572d
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x59
	.byte	0x1
	.byte	0x51
	.byte	0x9
	.byte	0x3
	.quad	.LC27
	.uleb128 0x59
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x56
	.long	0x15bb
	.quad	.LBB102
	.quad	.LBE102
	.byte	0x1
	.value	0x256
	.long	0x1d85
	.uleb128 0x44
	.long	0x15d8
	.byte	0xa
	.byte	0x3
	.quad	.LC28
	.byte	0x9f
	.uleb128 0x57
	.long	0x15cd
	.uleb128 0x58
	.quad	.LVL129
	.long	0x574f
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC28
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x59
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x39
	.byte	0
	.byte	0
	.uleb128 0x56
	.long	0x15bb
	.quad	.LBB104
	.quad	.LBE104
	.byte	0x1
	.value	0x257
	.long	0x1ddd
	.uleb128 0x44
	.long	0x15d8
	.byte	0xa
	.byte	0x3
	.quad	.LC29
	.byte	0x9f
	.uleb128 0x57
	.long	0x15cd
	.uleb128 0x58
	.quad	.LVL130
	.long	0x574f
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC29
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x59
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x8
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x56
	.long	0x15bb
	.quad	.LBB106
	.quad	.LBE106
	.byte	0x1
	.value	0x258
	.long	0x1e34
	.uleb128 0x44
	.long	0x15d8
	.byte	0xa
	.byte	0x3
	.quad	.LC30
	.byte	0x9f
	.uleb128 0x57
	.long	0x15cd
	.uleb128 0x58
	.quad	.LVL131
	.long	0x574f
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC30
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x59
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x4d
	.byte	0
	.byte	0
	.uleb128 0x56
	.long	0x15bb
	.quad	.LBB108
	.quad	.LBE108
	.byte	0x1
	.value	0x259
	.long	0x1e8b
	.uleb128 0x44
	.long	0x15d8
	.byte	0xa
	.byte	0x3
	.quad	.LC31
	.byte	0x9f
	.uleb128 0x57
	.long	0x15cd
	.uleb128 0x58
	.quad	.LVL132
	.long	0x574f
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC31
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x59
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x49
	.byte	0
	.byte	0
	.uleb128 0x5a
	.long	0x15bb
	.quad	.LBB110
	.long	.Ldebug_ranges0+0x220
	.byte	0x1
	.value	0x25a
	.uleb128 0x44
	.long	0x15d8
	.byte	0xa
	.byte	0x3
	.quad	.LC32
	.byte	0x9f
	.uleb128 0x57
	.long	0x15cd
	.uleb128 0x5b
	.quad	.LVL133
	.byte	0x1
	.long	0x574f
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC32
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x59
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x4a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.long	.LASF263
	.byte	0x1
	.value	0x36c
	.byte	0x1
	.long	0x1f4a
	.uleb128 0x33
	.string	"pdZ"
	.byte	0x1
	.value	0x36c
	.long	0x4f5
	.uleb128 0x37
	.long	.LASF264
	.byte	0x1
	.value	0x36c
	.long	0x4f5
	.uleb128 0x37
	.long	.LASF265
	.byte	0x1
	.value	0x36c
	.long	0x38
	.uleb128 0x33
	.string	"iN"
	.byte	0x1
	.value	0x36c
	.long	0x38
	.uleb128 0x37
	.long	.LASF77
	.byte	0x1
	.value	0x36c
	.long	0x38
	.uleb128 0x34
	.uleb128 0x35
	.string	"l"
	.byte	0x1
	.value	0x370
	.long	0x38
	.uleb128 0x34
	.uleb128 0x35
	.string	"b"
	.byte	0x1
	.value	0x371
	.long	0x38
	.uleb128 0x34
	.uleb128 0x35
	.string	"j"
	.byte	0x1
	.value	0x372
	.long	0x38
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x43
	.long	0x1edc
	.long	.LASF267
	.quad	.LFB1077
	.quad	.LFE1077
	.long	.LLST30
	.byte	0x1
	.long	0x2047
	.uleb128 0x5c
	.long	0x1eea
	.long	.LLST31
	.uleb128 0x5c
	.long	0x1ef6
	.long	.LLST32
	.uleb128 0x5c
	.long	0x1f02
	.long	.LLST33
	.uleb128 0x5c
	.long	0x1f0e
	.long	.LLST34
	.uleb128 0x5c
	.long	0x1f19
	.long	.LLST35
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x250
	.uleb128 0x5d
	.long	0x1f26
	.long	.LLST36
	.uleb128 0x5e
	.quad	.LBB118
	.quad	.LBE118
	.uleb128 0x5d
	.long	0x1f31
	.long	.LLST37
	.uleb128 0x5e
	.quad	.LBB119
	.quad	.LBE119
	.uleb128 0x5d
	.long	0x1f3c
	.long	.LLST38
	.uleb128 0x3e
	.quad	.LVL139
	.long	0x1845
	.uleb128 0x3e
	.quad	.LVL140
	.long	0x1845
	.uleb128 0x3e
	.quad	.LVL141
	.long	0x1845
	.uleb128 0x3e
	.quad	.LVL142
	.long	0x1845
	.uleb128 0x3e
	.quad	.LVL143
	.long	0x1845
	.uleb128 0x3e
	.quad	.LVL144
	.long	0x1845
	.uleb128 0x3e
	.quad	.LVL145
	.long	0x1845
	.uleb128 0x3e
	.quad	.LVL146
	.long	0x1845
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.long	.LASF269
	.byte	0x1
	.value	0x4b4
	.long	.LASF271
	.quad	.LFB1080
	.quad	.LFE1080
	.long	.LLST39
	.byte	0x1
	.long	0x21d2
	.uleb128 0x4f
	.string	"N"
	.byte	0x1
	.value	0x4b4
	.long	0x3d2
	.byte	0x1
	.byte	0x55
	.uleb128 0x4f
	.string	"in"
	.byte	0x1
	.value	0x4b4
	.long	0x4ef
	.byte	0x1
	.byte	0x56
	.uleb128 0x4f
	.string	"out"
	.byte	0x1
	.value	0x4b4
	.long	0x4ef
	.byte	0x1
	.byte	0x5c
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x280
	.uleb128 0x35
	.string	"z"
	.byte	0x1
	.value	0x4b6
	.long	0x31
	.uleb128 0x60
	.string	"r"
	.byte	0x1
	.value	0x4b6
	.long	0x31
	.byte	0x1
	.byte	0x63
	.uleb128 0x35
	.string	"a1"
	.byte	0x1
	.value	0x4b9
	.long	0x21d2
	.uleb128 0x35
	.string	"a2"
	.byte	0x1
	.value	0x4ba
	.long	0x21d2
	.uleb128 0x35
	.string	"a3"
	.byte	0x1
	.value	0x4bb
	.long	0x21d2
	.uleb128 0x35
	.string	"a4"
	.byte	0x1
	.value	0x4bc
	.long	0x21d2
	.uleb128 0x35
	.string	"a5"
	.byte	0x1
	.value	0x4bd
	.long	0x21d2
	.uleb128 0x35
	.string	"a6"
	.byte	0x1
	.value	0x4be
	.long	0x21d2
	.uleb128 0x35
	.string	"b1"
	.byte	0x1
	.value	0x4c1
	.long	0x21d2
	.uleb128 0x35
	.string	"b2"
	.byte	0x1
	.value	0x4c2
	.long	0x21d2
	.uleb128 0x35
	.string	"b3"
	.byte	0x1
	.value	0x4c3
	.long	0x21d2
	.uleb128 0x35
	.string	"b4"
	.byte	0x1
	.value	0x4c4
	.long	0x21d2
	.uleb128 0x35
	.string	"b5"
	.byte	0x1
	.value	0x4c5
	.long	0x21d2
	.uleb128 0x35
	.string	"c1"
	.byte	0x1
	.value	0x4c8
	.long	0x21d2
	.uleb128 0x35
	.string	"c2"
	.byte	0x1
	.value	0x4c9
	.long	0x21d2
	.uleb128 0x35
	.string	"c3"
	.byte	0x1
	.value	0x4ca
	.long	0x21d2
	.uleb128 0x35
	.string	"c4"
	.byte	0x1
	.value	0x4cb
	.long	0x21d2
	.uleb128 0x35
	.string	"c5"
	.byte	0x1
	.value	0x4cc
	.long	0x21d2
	.uleb128 0x35
	.string	"c6"
	.byte	0x1
	.value	0x4cd
	.long	0x21d2
	.uleb128 0x35
	.string	"d1"
	.byte	0x1
	.value	0x4d1
	.long	0x21d2
	.uleb128 0x35
	.string	"d2"
	.byte	0x1
	.value	0x4d2
	.long	0x21d2
	.uleb128 0x35
	.string	"d3"
	.byte	0x1
	.value	0x4d3
	.long	0x21d2
	.uleb128 0x35
	.string	"d4"
	.byte	0x1
	.value	0x4d4
	.long	0x21d2
	.uleb128 0x36
	.long	.LASF272
	.byte	0x1
	.value	0x4d9
	.long	0x21d2
	.uleb128 0x36
	.long	.LASF273
	.byte	0x1
	.value	0x4d9
	.long	0x21d2
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x2d0
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x4db
	.long	0x38
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x310
	.uleb128 0x60
	.string	"u"
	.byte	0x1
	.value	0x4dc
	.long	0x31
	.byte	0x1
	.byte	0x61
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x31
	.uleb128 0x61
	.long	0x1632
	.long	.LASF274
	.quad	.LFB1081
	.quad	.LFE1081
	.byte	0x2
	.byte	0x77
	.sleb128 8
	.byte	0x1
	.long	0x2209
	.uleb128 0x5c
	.long	0x1644
	.long	.LLST40
	.uleb128 0x44
	.long	0x164f
	.byte	0x1
	.byte	0x62
	.byte	0
	.uleb128 0x55
	.byte	0x1
	.long	.LASF275
	.byte	0x1
	.value	0x50b
	.long	.LASF276
	.quad	.LFB1082
	.quad	.LFE1082
	.long	.LLST41
	.byte	0x1
	.long	0x2356
	.uleb128 0x4e
	.long	.LASF277
	.byte	0x1
	.value	0x50b
	.long	0x3b9
	.long	.LLST42
	.uleb128 0x62
	.long	0x15bb
	.quad	.LBB131
	.long	.Ldebug_ranges0+0x350
	.byte	0x1
	.value	0x50e
	.long	0x2293
	.uleb128 0x44
	.long	0x15d8
	.byte	0xa
	.byte	0x3
	.quad	.LC57
	.byte	0x9f
	.uleb128 0x57
	.long	0x15cd
	.uleb128 0x58
	.quad	.LVL151
	.long	0x574f
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC57
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x59
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x56
	.long	0x15bb
	.quad	.LBB137
	.quad	.LBE137
	.byte	0x1
	.value	0x50f
	.long	0x22eb
	.uleb128 0x44
	.long	0x15d8
	.byte	0xa
	.byte	0x3
	.quad	.LC58
	.byte	0x9f
	.uleb128 0x57
	.long	0x15cd
	.uleb128 0x58
	.quad	.LVL152
	.long	0x572d
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x59
	.byte	0x1
	.byte	0x51
	.byte	0x9
	.byte	0x3
	.quad	.LC58
	.uleb128 0x59
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x56
	.long	0x15bb
	.quad	.LBB139
	.quad	.LBE139
	.byte	0x1
	.value	0x510
	.long	0x2342
	.uleb128 0x44
	.long	0x15d8
	.byte	0xa
	.byte	0x3
	.quad	.LC59
	.byte	0x9f
	.uleb128 0x57
	.long	0x15cd
	.uleb128 0x58
	.quad	.LVL153
	.long	0x574f
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC59
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x59
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x4c
	.byte	0
	.byte	0
	.uleb128 0x58
	.quad	.LVL154
	.long	0x5779
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x63
	.byte	0x1
	.long	.LASF278
	.byte	0x1
	.value	0x261
	.long	0x38
	.quad	.LFB1076
	.quad	.LFE1076
	.long	.LLST43
	.byte	0x1
	.long	0x2c72
	.uleb128 0x4e
	.long	.LASF279
	.byte	0x1
	.value	0x261
	.long	0x38
	.long	.LLST44
	.uleb128 0x4e
	.long	.LASF280
	.byte	0x1
	.value	0x261
	.long	0x151e
	.long	.LLST45
	.uleb128 0x64
	.long	.Ldebug_ranges0+0x390
	.long	0x2c5a
	.uleb128 0x50
	.long	.LASF243
	.byte	0x1
	.value	0x263
	.long	0x38
	.byte	0
	.uleb128 0x51
	.string	"i"
	.byte	0x1
	.value	0x264
	.long	0x38
	.long	.LLST46
	.uleb128 0x51
	.string	"j"
	.byte	0x1
	.value	0x264
	.long	0x38
	.long	.LLST47
	.uleb128 0x54
	.long	.LASF281
	.byte	0x1
	.value	0x266
	.long	0x4f5
	.long	.LLST48
	.uleb128 0x54
	.long	.LASF282
	.byte	0x1
	.value	0x295
	.long	0x2c72
	.long	.LLST49
	.uleb128 0x65
	.long	.LASF283
	.byte	0x1
	.value	0x296
	.long	0x415
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x51
	.string	"k"
	.byte	0x1
	.value	0x2dc
	.long	0x38
	.long	.LLST50
	.uleb128 0x54
	.long	.LASF284
	.byte	0x1
	.value	0x301
	.long	0x2c78
	.long	.LLST52
	.uleb128 0x62
	.long	0x165b
	.quad	.LBB185
	.long	.Ldebug_ranges0+0x420
	.byte	0x1
	.value	0x26e
	.long	0x2455
	.uleb128 0x57
	.long	0x166d
	.uleb128 0x58
	.quad	.LVL158
	.long	0x578e
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC60
	.byte	0
	.byte	0
	.uleb128 0x64
	.long	.Ldebug_ranges0+0x450
	.long	0x26a0
	.uleb128 0x51
	.string	"j"
	.byte	0x1
	.value	0x27b
	.long	0x38
	.long	.LLST53
	.uleb128 0x62
	.long	0x167a
	.quad	.LBB190
	.long	.Ldebug_ranges0+0x4c0
	.byte	0x1
	.value	0x27f
	.long	0x24de
	.uleb128 0x5c
	.long	0x168c
	.long	.LLST54
	.uleb128 0x66
	.quad	.LVL165
	.long	0x57a9
	.long	0x24a9
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x59
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x66
	.quad	.LVL166
	.long	0x57a9
	.long	0x24c5
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x59
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x58
	.quad	.LVL167
	.long	0x57a9
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x59
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x62
	.long	0x167a
	.quad	.LBB196
	.long	.Ldebug_ranges0+0x500
	.byte	0x1
	.value	0x27c
	.long	0x2550
	.uleb128 0x5c
	.long	0x168c
	.long	.LLST55
	.uleb128 0x66
	.quad	.LVL168
	.long	0x57a9
	.long	0x251b
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x59
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x66
	.quad	.LVL301
	.long	0x57a9
	.long	0x2537
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x59
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x58
	.quad	.LVL307
	.long	0x57a9
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x59
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x62
	.long	0x167a
	.quad	.LBB203
	.long	.Ldebug_ranges0+0x550
	.byte	0x1
	.value	0x27d
	.long	0x25c2
	.uleb128 0x5c
	.long	0x168c
	.long	.LLST56
	.uleb128 0x66
	.quad	.LVL302
	.long	0x57a9
	.long	0x258d
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x59
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x66
	.quad	.LVL303
	.long	0x57a9
	.long	0x25a9
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x59
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x58
	.quad	.LVL309
	.long	0x57a9
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x59
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x62
	.long	0x167a
	.quad	.LBB206
	.long	.Ldebug_ranges0+0x580
	.byte	0x1
	.value	0x27e
	.long	0x2634
	.uleb128 0x5c
	.long	0x168c
	.long	.LLST57
	.uleb128 0x66
	.quad	.LVL304
	.long	0x57a9
	.long	0x25ff
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x59
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x66
	.quad	.LVL305
	.long	0x57a9
	.long	0x261b
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x59
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x58
	.quad	.LVL313
	.long	0x57a9
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x59
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x56
	.long	0x15bb
	.quad	.LBB212
	.quad	.LBE212
	.byte	0x1
	.value	0x281
	.long	0x267f
	.uleb128 0x5c
	.long	0x15d8
	.long	.LLST58
	.uleb128 0x57
	.long	0x15cd
	.uleb128 0x58
	.quad	.LVL315
	.long	0x572d
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x59
	.byte	0x1
	.byte	0x51
	.byte	0x9
	.byte	0x3
	.quad	.LC65
	.byte	0
	.byte	0
	.uleb128 0x3e
	.quad	.LVL316
	.long	0x1c9f
	.uleb128 0x58
	.quad	.LVL317
	.long	0x5779
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x56
	.long	0x165b
	.quad	.LBB217
	.quad	.LBE217
	.byte	0x1
	.value	0x28d
	.long	0x26e6
	.uleb128 0x5c
	.long	0x166d
	.long	.LLST59
	.uleb128 0x58
	.quad	.LVL170
	.long	0x57ca
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x9
	.byte	0x3
	.quad	.LC67
	.byte	0
	.byte	0
	.uleb128 0x62
	.long	0x15eb
	.quad	.LBB219
	.long	.Ldebug_ranges0+0x5b0
	.byte	0x1
	.value	0x28e
	.long	0x2729
	.uleb128 0x5c
	.long	0x15fd
	.long	.LLST60
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x600
	.uleb128 0x5d
	.long	0x1608
	.long	.LLST61
	.uleb128 0x5d
	.long	0x1613
	.long	.LLST62
	.uleb128 0x5d
	.long	0x161e
	.long	.LLST63
	.byte	0
	.byte	0
	.uleb128 0x62
	.long	0x1746
	.quad	.LBB227
	.long	.Ldebug_ranges0+0x650
	.byte	0x1
	.value	0x2b1
	.long	0x2802
	.uleb128 0x5c
	.long	0x177c
	.long	.LLST64
	.uleb128 0x5c
	.long	0x1764
	.long	.LLST65
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x700
	.uleb128 0x5c
	.long	0x1770
	.long	.LLST66
	.uleb128 0x5c
	.long	0x1758
	.long	.LLST66
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x7b0
	.uleb128 0x5d
	.long	0x1789
	.long	.LLST68
	.uleb128 0x5d
	.long	0x1793
	.long	.LLST69
	.uleb128 0x5d
	.long	0x179f
	.long	.LLST70
	.uleb128 0x5d
	.long	0x17ab
	.long	.LLST71
	.uleb128 0x66
	.quad	.LVL183
	.long	0x57e7
	.long	0x27ad
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x91
	.sleb128 -256
	.byte	0x6
	.byte	0
	.uleb128 0x66
	.quad	.LVL189
	.long	0x57e7
	.long	0x27c5
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x66
	.quad	.LVL323
	.long	0x2209
	.long	0x27e4
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC71
	.byte	0
	.uleb128 0x58
	.quad	.LVL326
	.long	0x2209
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC72
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x62
	.long	0x15eb
	.quad	.LBB255
	.long	.Ldebug_ranges0+0x860
	.byte	0x1
	.value	0x2e1
	.long	0x2845
	.uleb128 0x5c
	.long	0x15fd
	.long	.LLST72
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x8e0
	.uleb128 0x5d
	.long	0x1608
	.long	.LLST73
	.uleb128 0x5d
	.long	0x1613
	.long	.LLST74
	.uleb128 0x5d
	.long	0x161e
	.long	.LLST75
	.byte	0
	.byte	0
	.uleb128 0x62
	.long	0x15eb
	.quad	.LBB267
	.long	.Ldebug_ranges0+0x960
	.byte	0x1
	.value	0x2e3
	.long	0x2888
	.uleb128 0x5c
	.long	0x15fd
	.long	.LLST76
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x9e0
	.uleb128 0x5d
	.long	0x1608
	.long	.LLST77
	.uleb128 0x5d
	.long	0x1613
	.long	.LLST78
	.uleb128 0x5d
	.long	0x161e
	.long	.LLST79
	.byte	0
	.byte	0
	.uleb128 0x62
	.long	0x1711
	.quad	.LBB283
	.long	.Ldebug_ranges0+0xa60
	.byte	0x1
	.value	0x2e9
	.long	0x28f9
	.uleb128 0x57
	.long	0x172e
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0xab0
	.uleb128 0x5c
	.long	0x1723
	.long	.LLST80
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0xb00
	.uleb128 0x5d
	.long	0x173a
	.long	.LLST81
	.uleb128 0x66
	.quad	.LVL218
	.long	0x57e7
	.long	0x28db
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x91
	.sleb128 -272
	.byte	0x6
	.byte	0
	.uleb128 0x58
	.quad	.LVL327
	.long	0x2209
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC99
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x62
	.long	0x1746
	.quad	.LBB294
	.long	.Ldebug_ranges0+0xb50
	.byte	0x1
	.value	0x2ee
	.long	0x298a
	.uleb128 0x5c
	.long	0x177c
	.long	.LLST82
	.uleb128 0x57
	.long	0x1764
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0xc00
	.uleb128 0x5c
	.long	0x1770
	.long	.LLST83
	.uleb128 0x5c
	.long	0x1758
	.long	.LLST83
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0xcb0
	.uleb128 0x5d
	.long	0x1789
	.long	.LLST85
	.uleb128 0x45
	.long	0x1793
	.uleb128 0x45
	.long	0x179f
	.uleb128 0x5d
	.long	0x17ab
	.long	.LLST86
	.uleb128 0x66
	.quad	.LVL224
	.long	0x57e7
	.long	0x2971
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x91
	.sleb128 -256
	.byte	0x6
	.byte	0
	.uleb128 0x58
	.quad	.LVL228
	.long	0x57e7
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x91
	.sleb128 -264
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x62
	.long	0x15bb
	.quad	.LBB324
	.long	.Ldebug_ranges0+0xd60
	.byte	0x1
	.value	0x319
	.long	0x29db
	.uleb128 0x5c
	.long	0x15d8
	.long	.LLST87
	.uleb128 0x5c
	.long	0x15cd
	.long	.LLST88
	.uleb128 0x58
	.quad	.LVL285
	.long	0x572d
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x59
	.byte	0x1
	.byte	0x51
	.byte	0x9
	.byte	0x3
	.quad	.LC101
	.uleb128 0x59
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x7c
	.sleb128 -1
	.byte	0
	.byte	0
	.uleb128 0x56
	.long	0x1699
	.quad	.LBB328
	.quad	.LBE328
	.byte	0x1
	.value	0x31e
	.long	0x2a2e
	.uleb128 0x5c
	.long	0x16a7
	.long	.LLST89
	.uleb128 0x5e
	.quad	.LBB329
	.quad	.LBE329
	.uleb128 0x57
	.long	0x16bc
	.uleb128 0x5c
	.long	0x16b1
	.long	.LLST90
	.uleb128 0x3e
	.quad	.LVL288
	.long	0x57ff
	.byte	0
	.byte	0
	.uleb128 0x56
	.long	0x16c8
	.quad	.LBB330
	.quad	.LBE330
	.byte	0x1
	.value	0x31f
	.long	0x2aa3
	.uleb128 0x5c
	.long	0x16d6
	.long	.LLST91
	.uleb128 0x5e
	.quad	.LBB331
	.quad	.LBE331
	.uleb128 0x57
	.long	0x1704
	.uleb128 0x57
	.long	0x16ec
	.uleb128 0x5c
	.long	0x16f8
	.long	.LLST92
	.uleb128 0x5c
	.long	0x16e0
	.long	.LLST92
	.uleb128 0x3e
	.quad	.LVL290
	.long	0x57ff
	.uleb128 0x58
	.quad	.LVL291
	.long	0x57ff
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7d
	.sleb128 -8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x56
	.long	0x15bb
	.quad	.LBB334
	.quad	.LBE334
	.byte	0x1
	.value	0x288
	.long	0x2af4
	.uleb128 0x5c
	.long	0x15d8
	.long	.LLST94
	.uleb128 0x57
	.long	0x15cd
	.uleb128 0x58
	.quad	.LVL318
	.long	0x574f
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC66
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x59
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x8
	.byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x56
	.long	0x15bb
	.quad	.LBB336
	.quad	.LBE336
	.byte	0x1
	.value	0x2a4
	.long	0x2b46
	.uleb128 0x5c
	.long	0x15d8
	.long	.LLST95
	.uleb128 0x57
	.long	0x15cd
	.uleb128 0x58
	.quad	.LVL321
	.long	0x572d
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x59
	.byte	0x1
	.byte	0x51
	.byte	0x9
	.byte	0x3
	.quad	.LC70
	.uleb128 0x59
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xa
	.value	0x400
	.byte	0
	.byte	0
	.uleb128 0x66
	.quad	.LVL159
	.long	0x5814
	.long	0x2b5d
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3e
	.quad	.LVL177
	.long	0x57e7
	.uleb128 0x66
	.quad	.LVL179
	.long	0x582b
	.long	0x2b83
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x66
	.quad	.LVL204
	.long	0x57e7
	.long	0x2ba7
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0xe
	.byte	0x7e
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x7e
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x7e
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0
	.uleb128 0x66
	.quad	.LVL277
	.long	0x5849
	.long	0x2be4
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7d
	.sleb128 -8
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x59
	.byte	0x1
	.byte	0x51
	.byte	0x9
	.byte	0x3
	.quad	_Z6workerPv
	.uleb128 0x59
	.byte	0x1
	.byte	0x52
	.byte	0xd
	.byte	0x73
	.sleb128 -1
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x32
	.byte	0x24
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x66
	.quad	.LVL280
	.long	0x5890
	.long	0x2bfb
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x66
	.quad	.LVL282
	.long	0x57ff
	.long	0x2c15
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x91
	.sleb128 -296
	.byte	0x6
	.byte	0
	.uleb128 0x3e
	.quad	.LVL293
	.long	0x57ff
	.uleb128 0x3e
	.quad	.LVL319
	.long	0x1c9f
	.uleb128 0x66
	.quad	.LVL320
	.long	0x5779
	.long	0x2c46
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x58
	.quad	.LVL322
	.long	0x5779
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x67
	.byte	0x1
	.long	0x2c8b
	.long	.LLST51
	.uleb128 0x3e
	.quad	.LVL325
	.long	0x58b2
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3d7
	.uleb128 0xd
	.long	0x38
	.long	0x2c8b
	.uleb128 0x68
	.long	0x9c
	.long	0x2c5a
	.byte	0
	.uleb128 0x11
	.long	0x9c
	.uleb128 0x52
	.byte	0x1
	.long	.LASF285
	.byte	0x1
	.value	0x101
	.long	.LASF286
	.long	0x38
	.quad	.LFB81
	.quad	.LFE81
	.long	.LLST96
	.byte	0x1
	.long	0x2f0b
	.uleb128 0x4e
	.long	.LASF287
	.byte	0x1
	.value	0x101
	.long	0x4f5
	.long	.LLST97
	.uleb128 0x53
	.string	"iN"
	.byte	0x1
	.value	0x102
	.long	0x38
	.long	.LLST98
	.uleb128 0x4e
	.long	.LASF77
	.byte	0x1
	.value	0x103
	.long	0x38
	.long	.LLST99
	.uleb128 0x4e
	.long	.LASF76
	.byte	0x1
	.value	0x104
	.long	0x31
	.long	.LLST100
	.uleb128 0x4e
	.long	.LASF242
	.byte	0x1
	.value	0x105
	.long	0x4ef
	.long	.LLST101
	.uleb128 0x4e
	.long	.LASF252
	.byte	0x1
	.value	0x106
	.long	0x4ef
	.long	.LLST102
	.uleb128 0x4e
	.long	.LASF79
	.byte	0x1
	.value	0x107
	.long	0x4f5
	.long	.LLST103
	.uleb128 0x69
	.long	.LASF288
	.byte	0x1
	.value	0x108
	.long	0x162c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0xd90
	.uleb128 0x54
	.long	.LASF243
	.byte	0x1
	.value	0x10c
	.long	0x38
	.long	.LLST104
	.uleb128 0x51
	.string	"i"
	.byte	0x1
	.value	0x10d
	.long	0x38
	.long	.LLST105
	.uleb128 0x51
	.string	"j"
	.byte	0x1
	.value	0x10d
	.long	0x38
	.long	.LLST106
	.uleb128 0x51
	.string	"l"
	.byte	0x1
	.value	0x10d
	.long	0x38
	.long	.LLST107
	.uleb128 0x54
	.long	.LASF254
	.byte	0x1
	.value	0x10f
	.long	0x31
	.long	.LLST108
	.uleb128 0x54
	.long	.LASF289
	.byte	0x1
	.value	0x110
	.long	0x31
	.long	.LLST109
	.uleb128 0x60
	.string	"pdZ"
	.byte	0x1
	.value	0x111
	.long	0x4ef
	.byte	0x1
	.byte	0x5d
	.uleb128 0x62
	.long	0x1711
	.quad	.LBB357
	.long	.Ldebug_ranges0+0xe30
	.byte	0x1
	.value	0x115
	.long	0x2e22
	.uleb128 0x5c
	.long	0x172e
	.long	.LLST110
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0xe70
	.uleb128 0x6a
	.long	0x1723
	.byte	0
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0xeb0
	.uleb128 0x5d
	.long	0x173a
	.long	.LLST111
	.uleb128 0x66
	.quad	.LVL332
	.long	0x57e7
	.long	0x2e04
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0xf
	.byte	0x91
	.sleb128 -112
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x33
	.byte	0x24
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x58
	.quad	.LVL441
	.long	0x2209
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC99
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x62
	.long	0x15eb
	.quad	.LBB365
	.long	.Ldebug_ranges0+0xef0
	.byte	0x1
	.value	0x124
	.long	0x2e65
	.uleb128 0x5c
	.long	0x15fd
	.long	.LLST112
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0xf70
	.uleb128 0x5d
	.long	0x1608
	.long	.LLST113
	.uleb128 0x5d
	.long	0x1613
	.long	.LLST114
	.uleb128 0x5d
	.long	0x161e
	.long	.LLST115
	.byte	0
	.byte	0
	.uleb128 0x56
	.long	0x1699
	.quad	.LBB379
	.quad	.LBE379
	.byte	0x1
	.value	0x130
	.long	0x2ebd
	.uleb128 0x57
	.long	0x16a7
	.uleb128 0x5e
	.quad	.LBB380
	.quad	.LBE380
	.uleb128 0x57
	.long	0x16bc
	.uleb128 0x5c
	.long	0x16b1
	.long	.LLST116
	.uleb128 0x58
	.quad	.LVL433
	.long	0x57ff
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.quad	.LVL406
	.long	0x1845
	.uleb128 0x3e
	.quad	.LVL409
	.long	0x1845
	.uleb128 0x3e
	.quad	.LVL411
	.long	0x1845
	.uleb128 0x3e
	.quad	.LVL412
	.long	0x1845
	.uleb128 0x58
	.quad	.LVL439
	.long	0x58bb
	.uleb128 0x59
	.byte	0x1
	.byte	0x61
	.byte	0x6
	.byte	0x91
	.sleb128 -136
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x52
	.byte	0x1
	.long	.LASF293
	.byte	0x1
	.value	0x191
	.long	.LASF294
	.long	0x38
	.quad	.LFB85
	.quad	.LFE85
	.long	.LLST117
	.byte	0x1
	.long	0x31c2
	.uleb128 0x4e
	.long	.LASF260
	.byte	0x1
	.value	0x191
	.long	0x4ef
	.long	.LLST118
	.uleb128 0x53
	.string	"iN"
	.byte	0x1
	.value	0x192
	.long	0x38
	.long	.LLST119
	.uleb128 0x4e
	.long	.LASF76
	.byte	0x1
	.value	0x193
	.long	0x31
	.long	.LLST120
	.uleb128 0x4e
	.long	.LASF261
	.byte	0x1
	.value	0x194
	.long	0x4ef
	.long	.LLST121
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0xff0
	.uleb128 0x51
	.string	"i"
	.byte	0x1
	.value	0x196
	.long	0x38
	.long	.LLST122
	.uleb128 0x51
	.string	"j"
	.byte	0x1
	.value	0x196
	.long	0x38
	.long	.LLST123
	.uleb128 0x54
	.long	.LASF243
	.byte	0x1
	.value	0x197
	.long	0x38
	.long	.LLST124
	.uleb128 0x54
	.long	.LASF254
	.byte	0x1
	.value	0x199
	.long	0x31
	.long	.LLST125
	.uleb128 0x65
	.long	.LASF295
	.byte	0x1
	.value	0x19c
	.long	0x4ef
	.byte	0x1
	.byte	0x5e
	.uleb128 0x62
	.long	0x1711
	.quad	.LBB397
	.long	.Ldebug_ranges0+0x10f0
	.byte	0x1
	.value	0x19d
	.long	0x303d
	.uleb128 0x5c
	.long	0x172e
	.long	.LLST126
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x1120
	.uleb128 0x6a
	.long	0x1723
	.byte	0
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x1150
	.uleb128 0x5d
	.long	0x173a
	.long	.LLST127
	.uleb128 0x66
	.quad	.LVL445
	.long	0x57e7
	.long	0x301f
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0xc
	.byte	0x73
	.sleb128 -2
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x33
	.byte	0x24
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x58
	.quad	.LVL542
	.long	0x2209
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC99
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x56
	.long	0x1699
	.quad	.LBB402
	.quad	.LBE402
	.byte	0x1
	.value	0x1ab
	.long	0x3095
	.uleb128 0x57
	.long	0x16a7
	.uleb128 0x5e
	.quad	.LBB403
	.quad	.LBE403
	.uleb128 0x57
	.long	0x16bc
	.uleb128 0x5c
	.long	0x16b1
	.long	.LLST128
	.uleb128 0x58
	.quad	.LVL534
	.long	0x57ff
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.quad	.LVL465
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL466
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL467
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL468
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL469
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL470
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL471
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL472
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL474
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL478
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL480
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL481
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL482
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL483
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL484
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL487
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL489
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL490
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL491
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL492
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL493
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL494
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL495
	.long	0x5716
	.byte	0
	.byte	0
	.uleb128 0x52
	.byte	0x1
	.long	.LASF296
	.byte	0x1
	.value	0x1b4
	.long	.LASF297
	.long	0x38
	.quad	.LFB86
	.quad	.LFE86
	.long	.LLST129
	.byte	0x1
	.long	0x34a4
	.uleb128 0x4e
	.long	.LASF260
	.byte	0x1
	.value	0x1b4
	.long	0x4ef
	.long	.LLST130
	.uleb128 0x53
	.string	"iN"
	.byte	0x1
	.value	0x1b5
	.long	0x38
	.long	.LLST131
	.uleb128 0x4e
	.long	.LASF76
	.byte	0x1
	.value	0x1b6
	.long	0x31
	.long	.LLST132
	.uleb128 0x4e
	.long	.LASF261
	.byte	0x1
	.value	0x1b7
	.long	0x4ef
	.long	.LLST133
	.uleb128 0x4e
	.long	.LASF265
	.byte	0x1
	.value	0x1b8
	.long	0x38
	.long	.LLST134
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x1180
	.uleb128 0x51
	.string	"i"
	.byte	0x1
	.value	0x1ba
	.long	0x38
	.long	.LLST135
	.uleb128 0x51
	.string	"j"
	.byte	0x1
	.value	0x1ba
	.long	0x38
	.long	.LLST136
	.uleb128 0x51
	.string	"b"
	.byte	0x1
	.value	0x1ba
	.long	0x38
	.long	.LLST137
	.uleb128 0x54
	.long	.LASF243
	.byte	0x1
	.value	0x1bb
	.long	0x38
	.long	.LLST138
	.uleb128 0x54
	.long	.LASF254
	.byte	0x1
	.value	0x1bd
	.long	0x31
	.long	.LLST139
	.uleb128 0x65
	.long	.LASF295
	.byte	0x1
	.value	0x1c0
	.long	0x4ef
	.byte	0x1
	.byte	0x56
	.uleb128 0x62
	.long	0x1711
	.quad	.LBB426
	.long	.Ldebug_ranges0+0x1260
	.byte	0x1
	.value	0x1c1
	.long	0x3312
	.uleb128 0x5c
	.long	0x172e
	.long	.LLST140
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x12a0
	.uleb128 0x6a
	.long	0x1723
	.byte	0
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x12e0
	.uleb128 0x5d
	.long	0x173a
	.long	.LLST141
	.uleb128 0x66
	.quad	.LVL550
	.long	0x57e7
	.long	0x32f4
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0xc
	.byte	0x73
	.sleb128 -1
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x33
	.byte	0x24
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x58
	.quad	.LVL623
	.long	0x2209
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC99
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x56
	.long	0x1699
	.quad	.LBB434
	.quad	.LBE434
	.byte	0x1
	.value	0x1d6
	.long	0x336a
	.uleb128 0x57
	.long	0x16a7
	.uleb128 0x5e
	.quad	.LBB435
	.quad	.LBE435
	.uleb128 0x57
	.long	0x16bc
	.uleb128 0x5c
	.long	0x16b1
	.long	.LLST142
	.uleb128 0x58
	.quad	.LVL614
	.long	0x57ff
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.quad	.LVL558
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL559
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL560
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL561
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL562
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL563
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL564
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL565
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL567
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL568
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL570
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL571
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL572
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL573
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL574
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL575
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL576
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL577
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL578
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL579
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL580
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL581
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL582
	.long	0x5716
	.uleb128 0x3e
	.quad	.LVL583
	.long	0x5716
	.byte	0
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.long	.LASF298
	.byte	0x1
	.byte	0x63
	.long	.LASF299
	.long	0x38
	.quad	.LFB77
	.quad	.LFE77
	.long	.LLST143
	.byte	0x1
	.long	0x3955
	.uleb128 0x4a
	.long	.LASF287
	.byte	0x1
	.byte	0x63
	.long	0x4f5
	.long	.LLST144
	.uleb128 0x3b
	.string	"iN"
	.byte	0x1
	.byte	0x64
	.long	0x38
	.long	.LLST145
	.uleb128 0x4a
	.long	.LASF77
	.byte	0x1
	.byte	0x65
	.long	0x38
	.long	.LLST146
	.uleb128 0x4a
	.long	.LASF76
	.byte	0x1
	.byte	0x66
	.long	0x31
	.long	.LLST147
	.uleb128 0x4a
	.long	.LASF78
	.byte	0x1
	.byte	0x67
	.long	0x4ef
	.long	.LLST148
	.uleb128 0x4a
	.long	.LASF79
	.byte	0x1
	.byte	0x68
	.long	0x4f5
	.long	.LLST149
	.uleb128 0x4a
	.long	.LASF288
	.byte	0x1
	.byte	0x69
	.long	0x162c
	.long	.LLST150
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x1320
	.uleb128 0x4c
	.long	.LASF243
	.byte	0x1
	.byte	0x6d
	.long	0x38
	.long	.LLST151
	.uleb128 0x6b
	.long	.LASF242
	.byte	0x1
	.byte	0x6f
	.long	0x4ef
	.byte	0x3
	.byte	0x77
	.sleb128 96
	.uleb128 0x6b
	.long	.LASF253
	.byte	0x1
	.byte	0x70
	.long	0x4f5
	.byte	0x1
	.byte	0x53
	.uleb128 0x6b
	.long	.LASF252
	.byte	0x1
	.byte	0x71
	.long	0x4ef
	.byte	0x1
	.byte	0x5c
	.uleb128 0x6c
	.long	0x1711
	.quad	.LBB487
	.long	.Ldebug_ranges0+0x1380
	.byte	0x1
	.byte	0x73
	.long	0x35eb
	.uleb128 0x5c
	.long	0x172e
	.long	.LLST152
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x13d0
	.uleb128 0x6a
	.long	0x1723
	.byte	0
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x1420
	.uleb128 0x5d
	.long	0x173a
	.long	.LLST153
	.uleb128 0x66
	.quad	.LVL628
	.long	0x57e7
	.long	0x35cd
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0xc
	.byte	0x7e
	.sleb128 -1
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x33
	.byte	0x24
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x58
	.quad	.LVL697
	.long	0x2209
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC99
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6c
	.long	0x1746
	.quad	.LBB498
	.long	.Ldebug_ranges0+0x1470
	.byte	0x1
	.byte	0x74
	.long	0x36cb
	.uleb128 0x5c
	.long	0x177c
	.long	.LLST154
	.uleb128 0x5c
	.long	0x1764
	.long	.LLST155
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x1500
	.uleb128 0x5c
	.long	0x1770
	.long	.LLST156
	.uleb128 0x5c
	.long	0x1758
	.long	.LLST156
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x1590
	.uleb128 0x5d
	.long	0x1789
	.long	.LLST158
	.uleb128 0x5d
	.long	0x1793
	.long	.LLST159
	.uleb128 0x5d
	.long	0x179f
	.long	.LLST160
	.uleb128 0x5d
	.long	0x17ab
	.long	.LLST161
	.uleb128 0x66
	.quad	.LVL634
	.long	0x57e7
	.long	0x3672
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x8
	.byte	0x91
	.sleb128 -176
	.byte	0x6
	.byte	0x33
	.byte	0x24
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x66
	.quad	.LVL639
	.long	0x57e7
	.long	0x368e
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x66
	.quad	.LVL698
	.long	0x2209
	.long	0x36ad
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC72
	.byte	0
	.uleb128 0x58
	.quad	.LVL699
	.long	0x2209
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC71
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6c
	.long	0x1711
	.quad	.LBB517
	.long	.Ldebug_ranges0+0x1620
	.byte	0x1
	.byte	0x75
	.long	0x3724
	.uleb128 0x5c
	.long	0x172e
	.long	.LLST162
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x1670
	.uleb128 0x5c
	.long	0x1723
	.long	.LLST163
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x16c0
	.uleb128 0x5d
	.long	0x173a
	.long	.LLST164
	.uleb128 0x58
	.quad	.LVL662
	.long	0x57e7
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x8
	.byte	0x91
	.sleb128 -120
	.byte	0x6
	.byte	0x33
	.byte	0x24
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6c
	.long	0x18b6
	.quad	.LBB532
	.long	.Ldebug_ranges0+0x1710
	.byte	0x1
	.byte	0x78
	.long	0x376f
	.uleb128 0x5c
	.long	0x18dc
	.long	.LLST165
	.uleb128 0x5c
	.long	0x18d2
	.long	.LLST166
	.uleb128 0x5c
	.long	0x18c7
	.long	.LLST167
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x1760
	.uleb128 0x5d
	.long	0x18f3
	.long	.LLST168
	.uleb128 0x5d
	.long	0x18e8
	.long	.LLST169
	.byte	0
	.byte	0
	.uleb128 0x6d
	.long	0x1699
	.quad	.LBB541
	.quad	.LBE541
	.byte	0x1
	.byte	0x8f
	.long	0x37ac
	.uleb128 0x57
	.long	0x16a7
	.uleb128 0x5e
	.quad	.LBB542
	.quad	.LBE542
	.uleb128 0x57
	.long	0x16bc
	.uleb128 0x57
	.long	0x16b1
	.byte	0
	.byte	0
	.uleb128 0x6d
	.long	0x1699
	.quad	.LBB543
	.quad	.LBE543
	.byte	0x1
	.byte	0x95
	.long	0x3803
	.uleb128 0x57
	.long	0x16a7
	.uleb128 0x5e
	.quad	.LBB544
	.quad	.LBE544
	.uleb128 0x57
	.long	0x16bc
	.uleb128 0x5c
	.long	0x16b1
	.long	.LLST170
	.uleb128 0x58
	.quad	.LVL684
	.long	0x57ff
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x91
	.sleb128 -168
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6d
	.long	0x16c8
	.quad	.LBB545
	.quad	.LBE545
	.byte	0x1
	.byte	0x96
	.long	0x3873
	.uleb128 0x57
	.long	0x16d6
	.uleb128 0x5e
	.quad	.LBB546
	.quad	.LBE546
	.uleb128 0x57
	.long	0x1704
	.uleb128 0x57
	.long	0x16ec
	.uleb128 0x5c
	.long	0x16f8
	.long	.LLST171
	.uleb128 0x5c
	.long	0x16e0
	.long	.LLST171
	.uleb128 0x3e
	.quad	.LVL685
	.long	0x57ff
	.uleb128 0x58
	.quad	.LVL686
	.long	0x57ff
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6d
	.long	0x1699
	.quad	.LBB547
	.quad	.LBE547
	.byte	0x1
	.byte	0x97
	.long	0x38c8
	.uleb128 0x57
	.long	0x16a7
	.uleb128 0x5e
	.quad	.LBB548
	.quad	.LBE548
	.uleb128 0x57
	.long	0x16bc
	.uleb128 0x5c
	.long	0x16b1
	.long	.LLST173
	.uleb128 0x58
	.quad	.LVL687
	.long	0x57ff
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x66
	.quad	.LVL681
	.long	0x19d5
	.long	0x3907
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x59
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x59
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x91
	.sleb128 -140
	.byte	0x94
	.byte	0x4
	.uleb128 0x59
	.byte	0x1
	.byte	0x61
	.byte	0x6
	.byte	0x91
	.sleb128 -104
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.uleb128 0x59
	.byte	0x1
	.byte	0x58
	.byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.byte	0
	.uleb128 0x58
	.quad	.LVL693
	.long	0x2c90
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x59
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x91
	.sleb128 -140
	.byte	0x94
	.byte	0x4
	.uleb128 0x59
	.byte	0x1
	.byte	0x61
	.byte	0x6
	.byte	0x91
	.sleb128 -104
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.uleb128 0x59
	.byte	0x1
	.byte	0x52
	.byte	0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x6
	.uleb128 0x59
	.byte	0x1
	.byte	0x58
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x59
	.byte	0x1
	.byte	0x59
	.byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.uleb128 0x59
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x52
	.byte	0x1
	.long	.LASF300
	.byte	0x1
	.value	0x138
	.long	.LASF301
	.long	0x38
	.quad	.LFB82
	.quad	.LFE82
	.long	.LLST174
	.byte	0x1
	.long	0x3c3e
	.uleb128 0x4e
	.long	.LASF302
	.byte	0x1
	.value	0x138
	.long	0x4f5
	.long	.LLST175
	.uleb128 0x53
	.string	"iN"
	.byte	0x1
	.value	0x139
	.long	0x38
	.long	.LLST176
	.uleb128 0x4e
	.long	.LASF77
	.byte	0x1
	.value	0x13a
	.long	0x38
	.long	.LLST177
	.uleb128 0x4e
	.long	.LASF79
	.byte	0x1
	.value	0x13b
	.long	0x4f5
	.long	.LLST178
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x17b0
	.uleb128 0x54
	.long	.LASF243
	.byte	0x1
	.value	0x140
	.long	0x38
	.long	.LLST179
	.uleb128 0x51
	.string	"i"
	.byte	0x1
	.value	0x141
	.long	0x38
	.long	.LLST180
	.uleb128 0x51
	.string	"j"
	.byte	0x1
	.value	0x141
	.long	0x38
	.long	.LLST181
	.uleb128 0x51
	.string	"l"
	.byte	0x1
	.value	0x141
	.long	0x38
	.long	.LLST182
	.uleb128 0x65
	.long	.LASF303
	.byte	0x1
	.value	0x142
	.long	0x4ef
	.byte	0x1
	.byte	0x52
	.uleb128 0x65
	.long	.LASF304
	.byte	0x1
	.value	0x143
	.long	0x4f5
	.byte	0x1
	.byte	0x5c
	.uleb128 0x62
	.long	0x1711
	.quad	.LBB567
	.long	.Ldebug_ranges0+0x1800
	.byte	0x1
	.value	0x145
	.long	0x3a8d
	.uleb128 0x5c
	.long	0x172e
	.long	.LLST183
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x1840
	.uleb128 0x6a
	.long	0x1723
	.byte	0
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x1880
	.uleb128 0x5d
	.long	0x173a
	.long	.LLST184
	.uleb128 0x66
	.quad	.LVL704
	.long	0x57e7
	.long	0x3a6f
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x58
	.quad	.LVL825
	.long	0x2209
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC99
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x62
	.long	0x1746
	.quad	.LBB574
	.long	.Ldebug_ranges0+0x18c0
	.byte	0x1
	.value	0x146
	.long	0x3b59
	.uleb128 0x57
	.long	0x177c
	.uleb128 0x5c
	.long	0x1764
	.long	.LLST185
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x1910
	.uleb128 0x5c
	.long	0x1770
	.long	.LLST186
	.uleb128 0x5c
	.long	0x1758
	.long	.LLST186
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x1960
	.uleb128 0x5d
	.long	0x1789
	.long	.LLST188
	.uleb128 0x5d
	.long	0x1793
	.long	.LLST189
	.uleb128 0x5d
	.long	0x179f
	.long	.LLST190
	.uleb128 0x5d
	.long	0x17ab
	.long	.LLST191
	.uleb128 0x66
	.quad	.LVL709
	.long	0x57e7
	.long	0x3b0f
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x3e
	.quad	.LVL713
	.long	0x57e7
	.uleb128 0x66
	.quad	.LVL823
	.long	0x2209
	.long	0x3b3b
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC72
	.byte	0
	.uleb128 0x58
	.quad	.LVL826
	.long	0x2209
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC71
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x56
	.long	0x1699
	.quad	.LBB585
	.quad	.LBE585
	.byte	0x1
	.value	0x161
	.long	0x3bb1
	.uleb128 0x57
	.long	0x16a7
	.uleb128 0x5e
	.quad	.LBB586
	.quad	.LBE586
	.uleb128 0x57
	.long	0x16bc
	.uleb128 0x5c
	.long	0x16b1
	.long	.LLST192
	.uleb128 0x58
	.quad	.LVL812
	.long	0x57ff
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x56
	.long	0x16c8
	.quad	.LBB587
	.quad	.LBE587
	.byte	0x1
	.value	0x162
	.long	0x3c2f
	.uleb128 0x57
	.long	0x16d6
	.uleb128 0x5e
	.quad	.LBB588
	.quad	.LBE588
	.uleb128 0x57
	.long	0x1704
	.uleb128 0x57
	.long	0x16ec
	.uleb128 0x5c
	.long	0x16f8
	.long	.LLST193
	.uleb128 0x5c
	.long	0x16e0
	.long	.LLST193
	.uleb128 0x66
	.quad	.LVL814
	.long	0x57ff
	.long	0x3c17
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7e
	.sleb128 -8
	.byte	0
	.uleb128 0x58
	.quad	.LVL815
	.long	0x57ff
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.quad	.LVL818
	.long	0x58bb
	.byte	0
	.byte	0
	.uleb128 0x52
	.byte	0x1
	.long	.LASF305
	.byte	0x1
	.value	0x379
	.long	.LASF306
	.long	0x38
	.quad	.LFB1078
	.quad	.LFE1078
	.long	.LLST195
	.byte	0x1
	.long	0x4201
	.uleb128 0x4e
	.long	.LASF287
	.byte	0x1
	.value	0x379
	.long	0x4f5
	.long	.LLST196
	.uleb128 0x53
	.string	"iN"
	.byte	0x1
	.value	0x37a
	.long	0x38
	.long	.LLST197
	.uleb128 0x4e
	.long	.LASF77
	.byte	0x1
	.value	0x37b
	.long	0x38
	.long	.LLST198
	.uleb128 0x4e
	.long	.LASF76
	.byte	0x1
	.value	0x37c
	.long	0x31
	.long	.LLST199
	.uleb128 0x4e
	.long	.LASF242
	.byte	0x1
	.value	0x37d
	.long	0x4ef
	.long	.LLST200
	.uleb128 0x4e
	.long	.LASF252
	.byte	0x1
	.value	0x37e
	.long	0x4ef
	.long	.LLST201
	.uleb128 0x4e
	.long	.LASF79
	.byte	0x1
	.value	0x37f
	.long	0x4f5
	.long	.LLST202
	.uleb128 0x69
	.long	.LASF288
	.byte	0x1
	.value	0x380
	.long	0x162c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x69
	.long	.LASF265
	.byte	0x1
	.value	0x381
	.long	0x38
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x19b0
	.uleb128 0x54
	.long	.LASF243
	.byte	0x1
	.value	0x385
	.long	0x38
	.long	.LLST203
	.uleb128 0x51
	.string	"i"
	.byte	0x1
	.value	0x386
	.long	0x38
	.long	.LLST204
	.uleb128 0x51
	.string	"j"
	.byte	0x1
	.value	0x386
	.long	0x38
	.long	.LLST205
	.uleb128 0x51
	.string	"l"
	.byte	0x1
	.value	0x386
	.long	0x38
	.long	.LLST206
	.uleb128 0x60
	.string	"pdZ"
	.byte	0x1
	.value	0x387
	.long	0x4f5
	.byte	0x1
	.byte	0x5e
	.uleb128 0x65
	.long	.LASF264
	.byte	0x1
	.value	0x388
	.long	0x4f5
	.byte	0x1
	.byte	0x5c
	.uleb128 0x54
	.long	.LASF289
	.byte	0x1
	.value	0x389
	.long	0x31
	.long	.LLST207
	.uleb128 0x54
	.long	.LASF254
	.byte	0x1
	.value	0x38a
	.long	0x31
	.long	.LLST208
	.uleb128 0x54
	.long	.LASF307
	.byte	0x1
	.value	0x38a
	.long	0x31
	.long	.LLST209
	.uleb128 0x62
	.long	0x1746
	.quad	.LBB618
	.long	.Ldebug_ranges0+0x1a30
	.byte	0x1
	.value	0x38f
	.long	0x3e5b
	.uleb128 0x5c
	.long	0x177c
	.long	.LLST210
	.uleb128 0x5c
	.long	0x1764
	.long	.LLST211
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x1a70
	.uleb128 0x5c
	.long	0x1770
	.long	.LLST212
	.uleb128 0x5c
	.long	0x1758
	.long	.LLST212
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x1ab0
	.uleb128 0x5d
	.long	0x1789
	.long	.LLST214
	.uleb128 0x5d
	.long	0x1793
	.long	.LLST215
	.uleb128 0x5d
	.long	0x179f
	.long	.LLST216
	.uleb128 0x5d
	.long	0x17ab
	.long	.LLST217
	.uleb128 0x66
	.quad	.LVL836
	.long	0x57e7
	.long	0x3e04
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.byte	0
	.uleb128 0x66
	.quad	.LVL841
	.long	0x57e7
	.long	0x3e1e
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x6
	.byte	0
	.uleb128 0x66
	.quad	.LVL976
	.long	0x2209
	.long	0x3e3d
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC72
	.byte	0
	.uleb128 0x58
	.quad	.LVL977
	.long	0x2209
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC71
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x56
	.long	0x1746
	.quad	.LBB626
	.quad	.LBE626
	.byte	0x1
	.value	0x390
	.long	0x3f10
	.uleb128 0x5c
	.long	0x177c
	.long	.LLST218
	.uleb128 0x5c
	.long	0x1764
	.long	.LLST219
	.uleb128 0x5e
	.quad	.LBB627
	.quad	.LBE627
	.uleb128 0x5c
	.long	0x1770
	.long	.LLST220
	.uleb128 0x5c
	.long	0x1758
	.long	.LLST220
	.uleb128 0x5e
	.quad	.LBB628
	.quad	.LBE628
	.uleb128 0x5d
	.long	0x1789
	.long	.LLST222
	.uleb128 0x45
	.long	0x1793
	.uleb128 0x5d
	.long	0x179f
	.long	.LLST223
	.uleb128 0x5d
	.long	0x17ab
	.long	.LLST224
	.uleb128 0x66
	.quad	.LVL855
	.long	0x57e7
	.long	0x3ef7
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.byte	0
	.uleb128 0x58
	.quad	.LVL859
	.long	0x57e7
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x64
	.long	.Ldebug_ranges0+0x1af0
	.long	0x3f28
	.uleb128 0x51
	.string	"b"
	.byte	0x1
	.value	0x396
	.long	0x38
	.long	.LLST225
	.byte	0
	.uleb128 0x64
	.long	.Ldebug_ranges0+0x1b60
	.long	0x3f87
	.uleb128 0x35
	.string	"b"
	.byte	0x1
	.value	0x3a4
	.long	0x38
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x1bb0
	.uleb128 0x51
	.string	"s"
	.byte	0x1
	.value	0x3a5
	.long	0x38
	.long	.LLST226
	.uleb128 0x5a
	.long	0x15eb
	.quad	.LBB633
	.long	.Ldebug_ranges0+0x1c00
	.byte	0x1
	.value	0x3a9
	.uleb128 0x57
	.long	0x15fd
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x1e30
	.uleb128 0x5d
	.long	0x1608
	.long	.LLST227
	.uleb128 0x45
	.long	0x1613
	.uleb128 0x5d
	.long	0x161e
	.long	.LLST228
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x56
	.long	0x1edc
	.quad	.LBB710
	.quad	.LBE710
	.byte	0x1
	.value	0x3bb
	.long	0x40de
	.uleb128 0x57
	.long	0x1f19
	.uleb128 0x57
	.long	0x1f0e
	.uleb128 0x57
	.long	0x1f02
	.uleb128 0x57
	.long	0x1ef6
	.uleb128 0x57
	.long	0x1eea
	.uleb128 0x5e
	.quad	.LBB711
	.quad	.LBE711
	.uleb128 0x5d
	.long	0x1f26
	.long	.LLST229
	.uleb128 0x5e
	.quad	.LBB712
	.quad	.LBE712
	.uleb128 0x5d
	.long	0x1f31
	.long	.LLST230
	.uleb128 0x5e
	.quad	.LBB713
	.quad	.LBE713
	.uleb128 0x5d
	.long	0x1f3c
	.long	.LLST231
	.uleb128 0x3e
	.quad	.LVL918
	.long	0x1845
	.uleb128 0x3e
	.quad	.LVL920
	.long	0x1845
	.uleb128 0x3e
	.quad	.LVL922
	.long	0x1845
	.uleb128 0x3e
	.quad	.LVL924
	.long	0x1845
	.uleb128 0x3e
	.quad	.LVL926
	.long	0x1845
	.uleb128 0x3e
	.quad	.LVL928
	.long	0x1845
	.uleb128 0x3e
	.quad	.LVL930
	.long	0x1845
	.uleb128 0x3e
	.quad	.LVL932
	.long	0x1845
	.uleb128 0x3e
	.quad	.LVL934
	.long	0x1845
	.uleb128 0x3e
	.quad	.LVL936
	.long	0x1845
	.uleb128 0x3e
	.quad	.LVL937
	.long	0x1845
	.uleb128 0x3e
	.quad	.LVL938
	.long	0x1845
	.uleb128 0x3e
	.quad	.LVL939
	.long	0x1845
	.uleb128 0x3e
	.quad	.LVL940
	.long	0x1845
	.uleb128 0x3e
	.quad	.LVL941
	.long	0x1845
	.uleb128 0x3e
	.quad	.LVL942
	.long	0x1845
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x64
	.long	.Ldebug_ranges0+0x2060
	.long	0x40f6
	.uleb128 0x51
	.string	"b"
	.byte	0x1
	.value	0x3c0
	.long	0x38
	.long	.LLST232
	.byte	0
	.uleb128 0x56
	.long	0x16c8
	.quad	.LBB715
	.quad	.LBE715
	.byte	0x1
	.value	0x3d1
	.long	0x4169
	.uleb128 0x57
	.long	0x16d6
	.uleb128 0x5e
	.quad	.LBB716
	.quad	.LBE716
	.uleb128 0x57
	.long	0x1704
	.uleb128 0x57
	.long	0x16ec
	.uleb128 0x5c
	.long	0x16f8
	.long	.LLST233
	.uleb128 0x5c
	.long	0x16e0
	.long	.LLST233
	.uleb128 0x3e
	.quad	.LVL963
	.long	0x57ff
	.uleb128 0x58
	.quad	.LVL964
	.long	0x57ff
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x56
	.long	0x16c8
	.quad	.LBB717
	.quad	.LBE717
	.byte	0x1
	.value	0x3d2
	.long	0x41e7
	.uleb128 0x57
	.long	0x16d6
	.uleb128 0x5e
	.quad	.LBB718
	.quad	.LBE718
	.uleb128 0x57
	.long	0x1704
	.uleb128 0x57
	.long	0x16ec
	.uleb128 0x5c
	.long	0x16f8
	.long	.LLST235
	.uleb128 0x5c
	.long	0x16e0
	.long	.LLST235
	.uleb128 0x66
	.quad	.LVL965
	.long	0x57ff
	.long	0x41cf
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7e
	.sleb128 -8
	.byte	0
	.uleb128 0x58
	.quad	.LVL966
	.long	0x57ff
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x58
	.quad	.LVL978
	.long	0x58bb
	.uleb128 0x59
	.byte	0x1
	.byte	0x61
	.byte	0x6
	.byte	0x91
	.sleb128 -168
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x52
	.byte	0x1
	.long	.LASF308
	.byte	0x1
	.value	0x3e6
	.long	.LASF309
	.long	0x38
	.quad	.LFB1079
	.quad	.LFE1079
	.long	.LLST237
	.byte	0x1
	.long	0x4b11
	.uleb128 0x4e
	.long	.LASF310
	.byte	0x1
	.value	0x3e6
	.long	0x4ef
	.long	.LLST238
	.uleb128 0x4e
	.long	.LASF71
	.byte	0x1
	.value	0x3ea
	.long	0x31
	.long	.LLST239
	.uleb128 0x4e
	.long	.LASF72
	.byte	0x1
	.value	0x3eb
	.long	0x31
	.long	.LLST240
	.uleb128 0x4e
	.long	.LASF73
	.byte	0x1
	.value	0x3ed
	.long	0x31
	.long	.LLST241
	.uleb128 0x4e
	.long	.LASF74
	.byte	0x1
	.value	0x3ee
	.long	0x31
	.long	.LLST242
	.uleb128 0x4e
	.long	.LASF75
	.byte	0x1
	.value	0x3ef
	.long	0x31
	.long	.LLST243
	.uleb128 0x53
	.string	"iN"
	.byte	0x1
	.value	0x3f2
	.long	0x38
	.long	.LLST244
	.uleb128 0x4e
	.long	.LASF77
	.byte	0x1
	.value	0x3f3
	.long	0x38
	.long	.LLST245
	.uleb128 0x4e
	.long	.LASF76
	.byte	0x1
	.value	0x3f4
	.long	0x31
	.long	.LLST246
	.uleb128 0x4e
	.long	.LASF78
	.byte	0x1
	.value	0x3f5
	.long	0x4ef
	.long	.LLST247
	.uleb128 0x4e
	.long	.LASF79
	.byte	0x1
	.value	0x3f6
	.long	0x4f5
	.long	.LLST248
	.uleb128 0x4e
	.long	.LASF311
	.byte	0x1
	.value	0x3f8
	.long	0x3f
	.long	.LLST249
	.uleb128 0x69
	.long	.LASF312
	.byte	0x1
	.value	0x3f9
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x69
	.long	.LASF265
	.byte	0x1
	.value	0x3fa
	.long	0x38
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x4f
	.string	"tid"
	.byte	0x1
	.value	0x3fa
	.long	0x38
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x2090
	.uleb128 0x54
	.long	.LASF243
	.byte	0x1
	.value	0x3fd
	.long	0x38
	.long	.LLST250
	.uleb128 0x51
	.string	"i"
	.byte	0x1
	.value	0x3fe
	.long	0x38
	.long	.LLST251
	.uleb128 0x51
	.string	"b"
	.byte	0x1
	.value	0x3ff
	.long	0x38
	.long	.LLST252
	.uleb128 0x51
	.string	"l"
	.byte	0x1
	.value	0x400
	.long	0x3f
	.long	.LLST253
	.uleb128 0x54
	.long	.LASF254
	.byte	0x1
	.value	0x402
	.long	0x31
	.long	.LLST254
	.uleb128 0x54
	.long	.LASF313
	.byte	0x1
	.value	0x404
	.long	0x38
	.long	.LLST255
	.uleb128 0x54
	.long	.LASF314
	.byte	0x1
	.value	0x408
	.long	0x31
	.long	.LLST256
	.uleb128 0x54
	.long	.LASF315
	.byte	0x1
	.value	0x417
	.long	0x38
	.long	.LLST257
	.uleb128 0x65
	.long	.LASF287
	.byte	0x1
	.value	0x419
	.long	0x4f5
	.byte	0x3
	.byte	0x77
	.sleb128 128
	.uleb128 0x65
	.long	.LASF242
	.byte	0x1
	.value	0x41b
	.long	0x4ef
	.byte	0x3
	.byte	0x77
	.sleb128 216
	.uleb128 0x65
	.long	.LASF253
	.byte	0x1
	.value	0x41c
	.long	0x4f5
	.byte	0x1
	.byte	0x5d
	.uleb128 0x65
	.long	.LASF252
	.byte	0x1
	.value	0x41d
	.long	0x4ef
	.byte	0x3
	.byte	0x77
	.sleb128 192
	.uleb128 0x65
	.long	.LASF316
	.byte	0x1
	.value	0x428
	.long	0x4ef
	.byte	0x3
	.byte	0x77
	.sleb128 176
	.uleb128 0x65
	.long	.LASF317
	.byte	0x1
	.value	0x429
	.long	0x4ef
	.byte	0x3
	.byte	0x77
	.sleb128 256
	.uleb128 0x65
	.long	.LASF318
	.byte	0x1
	.value	0x42b
	.long	0x4ef
	.byte	0x3
	.byte	0x77
	.sleb128 232
	.uleb128 0x65
	.long	.LASF319
	.byte	0x1
	.value	0x42c
	.long	0x4ef
	.byte	0x3
	.byte	0x77
	.sleb128 120
	.uleb128 0x65
	.long	.LASF320
	.byte	0x1
	.value	0x42e
	.long	0x4ef
	.byte	0x3
	.byte	0x77
	.sleb128 96
	.uleb128 0x54
	.long	.LASF321
	.byte	0x1
	.value	0x431
	.long	0x38
	.long	.LLST258
	.uleb128 0x54
	.long	.LASF322
	.byte	0x1
	.value	0x432
	.long	0x38
	.long	.LLST259
	.uleb128 0x54
	.long	.LASF323
	.byte	0x1
	.value	0x433
	.long	0x31
	.long	.LLST260
	.uleb128 0x65
	.long	.LASF324
	.byte	0x1
	.value	0x435
	.long	0x31
	.byte	0x1
	.byte	0x62
	.uleb128 0x54
	.long	.LASF325
	.byte	0x1
	.value	0x436
	.long	0x31
	.long	.LLST261
	.uleb128 0x54
	.long	.LASF326
	.byte	0x1
	.value	0x437
	.long	0x31
	.long	.LLST262
	.uleb128 0x54
	.long	.LASF327
	.byte	0x1
	.value	0x43a
	.long	0x31
	.long	.LLST263
	.uleb128 0x54
	.long	.LASF328
	.byte	0x1
	.value	0x43b
	.long	0x31
	.long	.LLST264
	.uleb128 0x54
	.long	.LASF69
	.byte	0x1
	.value	0x43e
	.long	0x31
	.long	.LLST265
	.uleb128 0x54
	.long	.LASF70
	.byte	0x1
	.value	0x43f
	.long	0x31
	.long	.LLST266
	.uleb128 0x62
	.long	0x1746
	.quad	.LBB762
	.long	.Ldebug_ranges0+0x2100
	.byte	0x1
	.value	0x421
	.long	0x459f
	.uleb128 0x5c
	.long	0x177c
	.long	.LLST267
	.uleb128 0x5c
	.long	0x1764
	.long	.LLST268
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x2180
	.uleb128 0x5c
	.long	0x1770
	.long	.LLST269
	.uleb128 0x5c
	.long	0x1758
	.long	.LLST269
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x2200
	.uleb128 0x5d
	.long	0x1789
	.long	.LLST271
	.uleb128 0x5d
	.long	0x1793
	.long	.LLST272
	.uleb128 0x5d
	.long	0x179f
	.long	.LLST273
	.uleb128 0x5d
	.long	0x17ab
	.long	.LLST274
	.uleb128 0x66
	.quad	.LVL992
	.long	0x57e7
	.long	0x4546
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x91
	.sleb128 -248
	.byte	0x6
	.byte	0
	.uleb128 0x66
	.quad	.LVL997
	.long	0x57e7
	.long	0x4562
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x66
	.quad	.LVL1221
	.long	0x2209
	.long	0x4581
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC72
	.byte	0
	.uleb128 0x58
	.quad	.LVL1222
	.long	0x2209
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC71
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x62
	.long	0x1711
	.quad	.LBB779
	.long	.Ldebug_ranges0+0x2280
	.byte	0x1
	.value	0x422
	.long	0x4610
	.uleb128 0x57
	.long	0x172e
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x22f0
	.uleb128 0x5c
	.long	0x1723
	.long	.LLST275
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x2360
	.uleb128 0x5d
	.long	0x173a
	.long	.LLST276
	.uleb128 0x66
	.quad	.LVL1020
	.long	0x57e7
	.long	0x45f2
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x91
	.sleb128 -248
	.byte	0x6
	.byte	0
	.uleb128 0x58
	.quad	.LVL1223
	.long	0x2209
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC99
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x62
	.long	0x1746
	.quad	.LBB799
	.long	.Ldebug_ranges0+0x23d0
	.byte	0x1
	.value	0x423
	.long	0x46b1
	.uleb128 0x5c
	.long	0x177c
	.long	.LLST277
	.uleb128 0x5c
	.long	0x1764
	.long	.LLST278
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x2450
	.uleb128 0x5c
	.long	0x1770
	.long	.LLST279
	.uleb128 0x5c
	.long	0x1758
	.long	.LLST279
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x24d0
	.uleb128 0x5d
	.long	0x1789
	.long	.LLST281
	.uleb128 0x5d
	.long	0x1793
	.long	.LLST282
	.uleb128 0x5d
	.long	0x179f
	.long	.LLST283
	.uleb128 0x5d
	.long	0x17ab
	.long	.LLST284
	.uleb128 0x66
	.quad	.LVL1025
	.long	0x57e7
	.long	0x4696
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x6
	.byte	0x7e
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x58
	.quad	.LVL1030
	.long	0x57e7
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x62
	.long	0x1711
	.quad	.LBB815
	.long	.Ldebug_ranges0+0x2550
	.byte	0x1
	.value	0x424
	.long	0x470b
	.uleb128 0x5c
	.long	0x172e
	.long	.LLST285
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x25b0
	.uleb128 0x5c
	.long	0x1723
	.long	.LLST286
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x2610
	.uleb128 0x5d
	.long	0x173a
	.long	.LLST287
	.uleb128 0x58
	.quad	.LVL1055
	.long	0x57e7
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x8
	.byte	0x91
	.sleb128 -192
	.byte	0x6
	.byte	0x33
	.byte	0x24
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x62
	.long	0x1711
	.quad	.LBB834
	.long	.Ldebug_ranges0+0x2670
	.byte	0x1
	.value	0x442
	.long	0x475f
	.uleb128 0x5c
	.long	0x172e
	.long	.LLST288
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x26a0
	.uleb128 0x5c
	.long	0x1723
	.long	.LLST289
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x26d0
	.uleb128 0x5d
	.long	0x173a
	.long	.LLST290
	.uleb128 0x58
	.quad	.LVL1058
	.long	0x57e7
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x56
	.long	0x1711
	.quad	.LBB841
	.quad	.LBE841
	.byte	0x1
	.value	0x443
	.long	0x47cb
	.uleb128 0x57
	.long	0x172e
	.uleb128 0x5e
	.quad	.LBB842
	.quad	.LBE842
	.uleb128 0x5c
	.long	0x1723
	.long	.LLST291
	.uleb128 0x5e
	.quad	.LBB843
	.quad	.LBE843
	.uleb128 0x5d
	.long	0x173a
	.long	.LLST292
	.uleb128 0x58
	.quad	.LVL1061
	.long	0x57e7
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x56
	.long	0x1711
	.quad	.LBB844
	.quad	.LBE844
	.byte	0x1
	.value	0x449
	.long	0x483b
	.uleb128 0x5c
	.long	0x172e
	.long	.LLST293
	.uleb128 0x5e
	.quad	.LBB845
	.quad	.LBE845
	.uleb128 0x5c
	.long	0x1723
	.long	.LLST294
	.uleb128 0x5e
	.quad	.LBB846
	.quad	.LBE846
	.uleb128 0x5d
	.long	0x173a
	.long	.LLST295
	.uleb128 0x58
	.quad	.LVL1066
	.long	0x57e7
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x56
	.long	0x1711
	.quad	.LBB847
	.quad	.LBE847
	.byte	0x1
	.value	0x44a
	.long	0x48ab
	.uleb128 0x5c
	.long	0x172e
	.long	.LLST296
	.uleb128 0x5e
	.quad	.LBB848
	.quad	.LBE848
	.uleb128 0x5c
	.long	0x1723
	.long	.LLST297
	.uleb128 0x5e
	.quad	.LBB849
	.quad	.LBE849
	.uleb128 0x5d
	.long	0x173a
	.long	.LLST298
	.uleb128 0x58
	.quad	.LVL1069
	.long	0x57e7
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x62
	.long	0x1711
	.quad	.LBB850
	.long	.Ldebug_ranges0+0x2700
	.byte	0x1
	.value	0x44c
	.long	0x4909
	.uleb128 0x5c
	.long	0x172e
	.long	.LLST299
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x2740
	.uleb128 0x5c
	.long	0x1723
	.long	.LLST300
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x2780
	.uleb128 0x5d
	.long	0x173a
	.long	.LLST301
	.uleb128 0x58
	.quad	.LVL1074
	.long	0x57e7
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0xc
	.byte	0x7e
	.sleb128 -1
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x33
	.byte	0x24
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x62
	.long	0x18b6
	.quad	.LBB859
	.long	.Ldebug_ranges0+0x27c0
	.byte	0x1
	.value	0x461
	.long	0x4955
	.uleb128 0x5c
	.long	0x18dc
	.long	.LLST302
	.uleb128 0x5c
	.long	0x18d2
	.long	.LLST303
	.uleb128 0x5c
	.long	0x18c7
	.long	.LLST304
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x2840
	.uleb128 0x5d
	.long	0x18f3
	.long	.LLST305
	.uleb128 0x5d
	.long	0x18e8
	.long	.LLST306
	.byte	0
	.byte	0
	.uleb128 0x56
	.long	0x1632
	.quad	.LBB873
	.quad	.LBE873
	.byte	0x1
	.value	0x493
	.long	0x4984
	.uleb128 0x5c
	.long	0x164f
	.long	.LLST307
	.uleb128 0x5c
	.long	0x1644
	.long	.LLST308
	.byte	0
	.uleb128 0x3e
	.quad	.LVL1111
	.long	0x5716
	.uleb128 0x66
	.quad	.LVL1112
	.long	0x5716
	.long	0x49ad
	.uleb128 0x59
	.byte	0x1
	.byte	0x61
	.byte	0x6
	.byte	0x91
	.sleb128 -312
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0
	.uleb128 0x66
	.quad	.LVL1130
	.long	0x19d5
	.long	0x49f1
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x91
	.sleb128 -192
	.byte	0x6
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x59
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x91
	.sleb128 -272
	.byte	0x94
	.byte	0x4
	.uleb128 0x59
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x91
	.sleb128 -144
	.byte	0x94
	.byte	0x4
	.uleb128 0x59
	.byte	0x1
	.byte	0x61
	.byte	0x6
	.byte	0x91
	.sleb128 -176
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.uleb128 0x59
	.byte	0x1
	.byte	0x58
	.byte	0x4
	.byte	0x91
	.sleb128 -160
	.byte	0x6
	.byte	0
	.uleb128 0x66
	.quad	.LVL1136
	.long	0x56ff
	.long	0x4a1e
	.uleb128 0x59
	.byte	0x1
	.byte	0x61
	.byte	0x17
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x31
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x31
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0
	.long	0x3ff00000
	.byte	0x22
	.byte	0
	.uleb128 0x66
	.quad	.LVL1149
	.long	0x3c3e
	.long	0x4a7b
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x91
	.sleb128 -256
	.byte	0x6
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0x91
	.sleb128 -272
	.byte	0x94
	.byte	0x4
	.uleb128 0x59
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x91
	.sleb128 -144
	.byte	0x94
	.byte	0x4
	.uleb128 0x59
	.byte	0x1
	.byte	0x61
	.byte	0x6
	.byte	0x91
	.sleb128 -176
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.uleb128 0x59
	.byte	0x1
	.byte	0x52
	.byte	0x4
	.byte	0x91
	.sleb128 -168
	.byte	0x6
	.uleb128 0x59
	.byte	0x1
	.byte	0x58
	.byte	0x4
	.byte	0x91
	.sleb128 -192
	.byte	0x6
	.uleb128 0x59
	.byte	0x1
	.byte	0x59
	.byte	0x4
	.byte	0x91
	.sleb128 -160
	.byte	0x6
	.uleb128 0x59
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x59
	.byte	0x2
	.byte	0x77
	.sleb128 8
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x66
	.quad	.LVL1161
	.long	0x31c2
	.long	0x4ab6
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x6
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0x91
	.sleb128 -272
	.byte	0x94
	.byte	0x4
	.uleb128 0x59
	.byte	0x1
	.byte	0x61
	.byte	0x6
	.byte	0x91
	.sleb128 -176
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.uleb128 0x59
	.byte	0x1
	.byte	0x51
	.byte	0x4
	.byte	0x91
	.sleb128 -208
	.byte	0x6
	.uleb128 0x59
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x66
	.quad	.LVL1175
	.long	0x31c2
	.long	0x4af5
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x91
	.sleb128 -264
	.byte	0x6
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x59
	.byte	0x1
	.byte	0x61
	.byte	0xd
	.byte	0x7e
	.sleb128 0
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0x91
	.sleb128 -184
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x1e
	.uleb128 0x59
	.byte	0x1
	.byte	0x51
	.byte	0x4
	.byte	0x91
	.sleb128 -152
	.byte	0x6
	.uleb128 0x59
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x3e
	.quad	.LVL1215
	.long	0x58bb
	.uleb128 0x3e
	.quad	.LVL1217
	.long	0x58bb
	.byte	0
	.byte	0
	.uleb128 0x52
	.byte	0x1
	.long	.LASF329
	.byte	0x1
	.value	0x22f
	.long	.LASF330
	.long	0xa3
	.quad	.LFB1074
	.quad	.LFE1074
	.long	.LLST309
	.byte	0x1
	.long	0x4c75
	.uleb128 0x53
	.string	"arg"
	.byte	0x1
	.value	0x22f
	.long	0xa3
	.long	.LLST310
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x28c0
	.uleb128 0x51
	.string	"tid"
	.byte	0x1
	.value	0x230
	.long	0x38
	.long	.LLST311
	.uleb128 0x65
	.long	.LASF310
	.byte	0x1
	.value	0x231
	.long	0x4c75
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x51
	.string	"beg"
	.byte	0x1
	.value	0x233
	.long	0x38
	.long	.LLST312
	.uleb128 0x51
	.string	"end"
	.byte	0x1
	.value	0x233
	.long	0x38
	.long	.LLST313
	.uleb128 0x54
	.long	.LASF331
	.byte	0x1
	.value	0x233
	.long	0x38
	.long	.LLST314
	.uleb128 0x6e
	.long	.LASF332
	.long	0x4c85
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	_ZZ6workerPvE19__PRETTY_FUNCTION__
	.uleb128 0x6f
	.quad	.LBB884
	.quad	.LBE884
	.long	0x4be9
	.uleb128 0x54
	.long	.LASF333
	.byte	0x1
	.value	0x23a
	.long	0x38
	.long	.LLST315
	.uleb128 0x54
	.long	.LASF334
	.byte	0x1
	.value	0x23b
	.long	0x38
	.long	.LLST316
	.byte	0
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x28f0
	.uleb128 0x51
	.string	"i"
	.byte	0x1
	.value	0x243
	.long	0x38
	.long	.LLST317
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x2930
	.uleb128 0x54
	.long	.LASF243
	.byte	0x1
	.value	0x244
	.long	0x38
	.long	.LLST318
	.uleb128 0x66
	.quad	.LVL1235
	.long	0x4201
	.long	0x4c35
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x59
	.byte	0x2
	.byte	0x77
	.sleb128 8
	.byte	0x1
	.byte	0x40
	.uleb128 0x59
	.byte	0x2
	.byte	0x77
	.sleb128 16
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x58
	.quad	.LVL1242
	.long	0x58d2
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC104
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x9
	.byte	0x3
	.quad	.LC103
	.uleb128 0x59
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xa
	.value	0x24a
	.uleb128 0x59
	.byte	0x1
	.byte	0x52
	.byte	0x9
	.byte	0x3
	.quad	_ZZ6workerPvE19__PRETTY_FUNCTION__
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x31
	.long	0x4c85
	.uleb128 0xe
	.long	0x9c
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.long	0x3a9
	.uleb128 0x52
	.byte	0x1
	.long	.LASF335
	.byte	0x1
	.value	0x517
	.long	.LASF336
	.long	0x38
	.quad	.LFB1083
	.quad	.LFE1083
	.long	.LLST319
	.byte	0x1
	.long	0x4d1e
	.uleb128 0x53
	.string	"a"
	.byte	0x1
	.value	0x517
	.long	0x4f5
	.long	.LLST320
	.uleb128 0x53
	.string	"n"
	.byte	0x1
	.value	0x517
	.long	0x38
	.long	.LLST321
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x2970
	.uleb128 0x51
	.string	"i"
	.byte	0x1
	.value	0x520
	.long	0x38
	.long	.LLST322
	.uleb128 0x51
	.string	"j"
	.byte	0x1
	.value	0x520
	.long	0x38
	.long	.LLST323
	.uleb128 0x51
	.string	"k"
	.byte	0x1
	.value	0x520
	.long	0x38
	.long	.LLST324
	.uleb128 0x51
	.string	"sum"
	.byte	0x1
	.value	0x521
	.long	0x31
	.long	.LLST325
	.uleb128 0x3e
	.quad	.LVL1322
	.long	0x58bb
	.byte	0
	.byte	0
	.uleb128 0x55
	.byte	0x1
	.long	.LASF337
	.byte	0x1
	.value	0x536
	.long	.LASF338
	.quad	.LFB1084
	.quad	.LFE1084
	.long	.LLST326
	.byte	0x1
	.long	0x5117
	.uleb128 0x53
	.string	"a"
	.byte	0x1
	.value	0x536
	.long	0x4f5
	.long	.LLST327
	.uleb128 0x53
	.string	"n"
	.byte	0x1
	.value	0x536
	.long	0x38
	.long	.LLST328
	.uleb128 0x53
	.string	"b"
	.byte	0x1
	.value	0x536
	.long	0x4f5
	.long	.LLST329
	.uleb128 0x53
	.string	"m"
	.byte	0x1
	.value	0x536
	.long	0x38
	.long	.LLST330
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x29f0
	.uleb128 0x36
	.long	.LASF339
	.byte	0x1
	.value	0x538
	.long	0x17e6
	.uleb128 0x36
	.long	.LASF340
	.byte	0x1
	.value	0x538
	.long	0x17e6
	.uleb128 0x36
	.long	.LASF341
	.byte	0x1
	.value	0x538
	.long	0x17e6
	.uleb128 0x51
	.string	"i"
	.byte	0x1
	.value	0x539
	.long	0x38
	.long	.LLST331
	.uleb128 0x54
	.long	.LASF342
	.byte	0x1
	.value	0x539
	.long	0x38
	.long	.LLST332
	.uleb128 0x54
	.long	.LASF343
	.byte	0x1
	.value	0x539
	.long	0x38
	.long	.LLST333
	.uleb128 0x51
	.string	"j"
	.byte	0x1
	.value	0x539
	.long	0x38
	.long	.LLST334
	.uleb128 0x35
	.string	"k"
	.byte	0x1
	.value	0x539
	.long	0x38
	.uleb128 0x51
	.string	"l"
	.byte	0x1
	.value	0x539
	.long	0x38
	.long	.LLST335
	.uleb128 0x51
	.string	"ll"
	.byte	0x1
	.value	0x539
	.long	0x38
	.long	.LLST336
	.uleb128 0x51
	.string	"big"
	.byte	0x1
	.value	0x53a
	.long	0x31
	.long	.LLST337
	.uleb128 0x51
	.string	"dum"
	.byte	0x1
	.value	0x53a
	.long	0x31
	.long	.LLST338
	.uleb128 0x54
	.long	.LASF344
	.byte	0x1
	.value	0x53a
	.long	0x31
	.long	.LLST339
	.uleb128 0x54
	.long	.LASF345
	.byte	0x1
	.value	0x53a
	.long	0x31
	.long	.LLST340
	.uleb128 0x62
	.long	0x17ec
	.quad	.LBB918
	.long	.Ldebug_ranges0+0x2a60
	.byte	0x1
	.value	0x53c
	.long	0x4eb8
	.uleb128 0x5c
	.long	0x1809
	.long	.LLST341
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x2aa0
	.uleb128 0x6a
	.long	0x17fe
	.byte	0x1
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x2ae0
	.uleb128 0x5d
	.long	0x1815
	.long	.LLST342
	.uleb128 0x66
	.quad	.LVL1326
	.long	0x57e7
	.long	0x4e9a
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x58
	.quad	.LVL1479
	.long	0x2209
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC105
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x56
	.long	0x17ec
	.quad	.LBB926
	.quad	.LBE926
	.byte	0x1
	.value	0x53d
	.long	0x4f28
	.uleb128 0x5c
	.long	0x1809
	.long	.LLST343
	.uleb128 0x5e
	.quad	.LBB927
	.quad	.LBE927
	.uleb128 0x5c
	.long	0x17fe
	.long	.LLST344
	.uleb128 0x5e
	.quad	.LBB928
	.quad	.LBE928
	.uleb128 0x5d
	.long	0x1815
	.long	.LLST345
	.uleb128 0x58
	.quad	.LVL1329
	.long	0x57e7
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x56
	.long	0x17ec
	.quad	.LBB929
	.quad	.LBE929
	.byte	0x1
	.value	0x53e
	.long	0x4f98
	.uleb128 0x5c
	.long	0x1809
	.long	.LLST346
	.uleb128 0x5e
	.quad	.LBB930
	.quad	.LBE930
	.uleb128 0x5c
	.long	0x17fe
	.long	.LLST347
	.uleb128 0x5e
	.quad	.LBB931
	.quad	.LBE931
	.uleb128 0x5d
	.long	0x1815
	.long	.LLST348
	.uleb128 0x58
	.quad	.LVL1332
	.long	0x57e7
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x56
	.long	0x17b7
	.quad	.LBB932
	.quad	.LBE932
	.byte	0x1
	.value	0x567
	.long	0x4ff4
	.uleb128 0x5c
	.long	0x17c5
	.long	.LLST349
	.uleb128 0x5e
	.quad	.LBB933
	.quad	.LBE933
	.uleb128 0x57
	.long	0x17da
	.uleb128 0x5c
	.long	0x17cf
	.long	.LLST350
	.uleb128 0x58
	.quad	.LVL1463
	.long	0x57ff
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x91
	.sleb128 -176
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x56
	.long	0x17b7
	.quad	.LBB934
	.quad	.LBE934
	.byte	0x1
	.value	0x568
	.long	0x5050
	.uleb128 0x5c
	.long	0x17c5
	.long	.LLST351
	.uleb128 0x5e
	.quad	.LBB935
	.quad	.LBE935
	.uleb128 0x57
	.long	0x17da
	.uleb128 0x5c
	.long	0x17cf
	.long	.LLST352
	.uleb128 0x58
	.quad	.LVL1464
	.long	0x57ff
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x62
	.long	0x17b7
	.quad	.LBB936
	.long	.Ldebug_ranges0+0x2b20
	.byte	0x1
	.value	0x569
	.long	0x509d
	.uleb128 0x5c
	.long	0x17c5
	.long	.LLST353
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x2b50
	.uleb128 0x57
	.long	0x17da
	.uleb128 0x5c
	.long	0x17cf
	.long	.LLST354
	.uleb128 0x5b
	.quad	.LVL1465
	.byte	0x1
	.long	0x57ff
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x66
	.quad	.LVL1375
	.long	0x2209
	.long	0x50bc
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC106
	.byte	0
	.uleb128 0x66
	.quad	.LVL1380
	.long	0x2209
	.long	0x50db
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC106
	.byte	0
	.uleb128 0x66
	.quad	.LVL1466
	.long	0x2209
	.long	0x50fa
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC106
	.byte	0
	.uleb128 0x58
	.quad	.LVL1482
	.long	0x2209
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC107
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x43
	.long	0x17ec
	.long	.LASF346
	.quad	.LFB1085
	.quad	.LFE1085
	.long	.LLST355
	.byte	0x1
	.long	0x5196
	.uleb128 0x5c
	.long	0x17fe
	.long	.LLST356
	.uleb128 0x5c
	.long	0x1809
	.long	.LLST357
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x2b80
	.uleb128 0x5d
	.long	0x1815
	.long	.LLST358
	.uleb128 0x66
	.quad	.LVL1487
	.long	0x57e7
	.long	0x5179
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x58
	.quad	.LVL1492
	.long	0x2209
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC105
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x61
	.long	0x17b7
	.long	.LASF347
	.quad	.LFB1086
	.quad	.LFE1086
	.byte	0x2
	.byte	0x77
	.sleb128 8
	.byte	0x1
	.long	0x51f1
	.uleb128 0x5c
	.long	0x17c5
	.long	.LLST359
	.uleb128 0x5c
	.long	0x17cf
	.long	.LLST360
	.uleb128 0x5c
	.long	0x17da
	.long	.LLST361
	.uleb128 0x5b
	.quad	.LVL1495
	.byte	0x1
	.long	0x57ff
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x32
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.byte	0
	.byte	0
	.uleb128 0x43
	.long	0x1711
	.long	.LASF348
	.quad	.LFB1087
	.quad	.LFE1087
	.long	.LLST362
	.byte	0x1
	.long	0x5270
	.uleb128 0x5c
	.long	0x1723
	.long	.LLST363
	.uleb128 0x5c
	.long	0x172e
	.long	.LLST364
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x2bc0
	.uleb128 0x5d
	.long	0x173a
	.long	.LLST365
	.uleb128 0x66
	.quad	.LVL1499
	.long	0x57e7
	.long	0x5253
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x33
	.byte	0x24
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x58
	.quad	.LVL1504
	.long	0x2209
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC99
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x61
	.long	0x1699
	.long	.LASF349
	.quad	.LFB1088
	.quad	.LFE1088
	.byte	0x2
	.byte	0x77
	.sleb128 8
	.byte	0x1
	.long	0x52cb
	.uleb128 0x5c
	.long	0x16a7
	.long	.LLST366
	.uleb128 0x5c
	.long	0x16b1
	.long	.LLST367
	.uleb128 0x5c
	.long	0x16bc
	.long	.LLST368
	.uleb128 0x5b
	.quad	.LVL1507
	.byte	0x1
	.long	0x57ff
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x33
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x22
	.byte	0x38
	.byte	0x1c
	.byte	0
	.byte	0
	.uleb128 0x43
	.long	0x1746
	.long	.LASF350
	.quad	.LFB1089
	.quad	.LFE1089
	.long	.LLST369
	.byte	0x1
	.long	0x53a2
	.uleb128 0x5c
	.long	0x1758
	.long	.LLST370
	.uleb128 0x5c
	.long	0x1764
	.long	.LLST371
	.uleb128 0x5c
	.long	0x1770
	.long	.LLST372
	.uleb128 0x5c
	.long	0x177c
	.long	.LLST373
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x2c00
	.uleb128 0x5d
	.long	0x1789
	.long	.LLST374
	.uleb128 0x5d
	.long	0x1793
	.long	.LLST375
	.uleb128 0x5d
	.long	0x179f
	.long	.LLST376
	.uleb128 0x5d
	.long	0x17ab
	.long	.LLST377
	.uleb128 0x66
	.quad	.LVL1513
	.long	0x57e7
	.long	0x5359
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x7d
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x33
	.byte	0x24
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x3e
	.quad	.LVL1516
	.long	0x57e7
	.uleb128 0x66
	.quad	.LVL1562
	.long	0x2209
	.long	0x5385
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC71
	.byte	0
	.uleb128 0x58
	.quad	.LVL1563
	.long	0x2209
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC72
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x43
	.long	0x16c8
	.long	.LASF351
	.quad	.LFB1090
	.quad	.LFE1090
	.long	.LLST378
	.byte	0x1
	.long	0x541d
	.uleb128 0x5c
	.long	0x16d6
	.long	.LLST379
	.uleb128 0x5c
	.long	0x16e0
	.long	.LLST380
	.uleb128 0x5c
	.long	0x16ec
	.long	.LLST381
	.uleb128 0x5c
	.long	0x16f8
	.long	.LLST382
	.uleb128 0x5c
	.long	0x1704
	.long	.LLST383
	.uleb128 0x3e
	.quad	.LVL1566
	.long	0x57ff
	.uleb128 0x5b
	.quad	.LVL1569
	.byte	0x1
	.long	0x57ff
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x33
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x22
	.byte	0x38
	.byte	0x1c
	.byte	0
	.byte	0
	.uleb128 0x61
	.long	0x15eb
	.long	.LASF352
	.quad	.LFB1091
	.quad	.LFE1091
	.byte	0x2
	.byte	0x77
	.sleb128 8
	.byte	0x1
	.long	0x5485
	.uleb128 0x44
	.long	0x15fd
	.byte	0x1
	.byte	0x55
	.uleb128 0x5e
	.quad	.LBB958
	.quad	.LBE958
	.uleb128 0x5d
	.long	0x1608
	.long	.LLST384
	.uleb128 0x70
	.long	0x1613
	.byte	0x1
	.byte	0x51
	.uleb128 0x70
	.long	0x161e
	.byte	0x17
	.byte	0x7b
	.sleb128 -2147483647
	.byte	0xf7
	.uleb128 0x3f
	.byte	0xf7
	.uleb128 0x31
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0x1c5f68
	.long	0x3e000000
	.byte	0x1e
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x71
	.long	.LASF395
	.byte	0x1
	.quad	.LFB1093
	.quad	.LFE1093
	.long	.LLST385
	.byte	0x1
	.long	0x5507
	.uleb128 0x5a
	.long	0x1821
	.quad	.LBB961
	.long	.Ldebug_ranges0+0x2c70
	.byte	0x1
	.value	0x5dc
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x2ca0
	.uleb128 0x72
	.long	0x1838
	.value	0xffff
	.uleb128 0x6a
	.long	0x182c
	.byte	0x1
	.uleb128 0x73
	.quad	.LVL1578
	.long	0x54e5
	.uleb128 0x59
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	_ZStL8__ioinit
	.byte	0
	.uleb128 0x5b
	.quad	.LVL1579
	.byte	0x1
	.long	0x58f5
	.uleb128 0x59
	.byte	0x1
	.byte	0x54
	.byte	0x9
	.byte	0x3
	.quad	_ZStL8__ioinit
	.uleb128 0x74
	.byte	0x1
	.byte	0x51
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x75
	.long	.LASF353
	.byte	0x7
	.byte	0xa9
	.long	0x381
	.byte	0x1
	.byte	0x1
	.uleb128 0x75
	.long	.LASF354
	.byte	0x7
	.byte	0xaa
	.long	0x381
	.byte	0x1
	.byte	0x1
	.uleb128 0x75
	.long	.LASF355
	.byte	0x7
	.byte	0xab
	.long	0x381
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x31
	.long	0x553e
	.uleb128 0xe
	.long	0x9c
	.byte	0x3
	.byte	0
	.uleb128 0x42
	.string	"a"
	.byte	0x1
	.byte	0xd
	.long	0x5547
	.uleb128 0x11
	.long	0x552e
	.uleb128 0x42
	.string	"b"
	.byte	0x1
	.byte	0x14
	.long	0x5555
	.uleb128 0x11
	.long	0x552e
	.uleb128 0xd
	.long	0x31
	.long	0x556a
	.uleb128 0xe
	.long	0x9c
	.byte	0x8
	.byte	0
	.uleb128 0x42
	.string	"c"
	.byte	0x1
	.byte	0x1b
	.long	0x5573
	.uleb128 0x11
	.long	0x555a
	.uleb128 0x76
	.long	.LASF356
	.byte	0x1
	.value	0x201
	.long	0x38
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	NUM_TRIALS
	.uleb128 0x76
	.long	.LASF357
	.byte	0x1
	.value	0x202
	.long	0x38
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	nThreads
	.uleb128 0x76
	.long	.LASF358
	.byte	0x1
	.value	0x203
	.long	0x38
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	nSwaptions
	.uleb128 0x77
	.string	"iN"
	.byte	0x1
	.value	0x204
	.long	0x38
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	iN
	.uleb128 0x76
	.long	.LASF77
	.byte	0x1
	.value	0x206
	.long	0x38
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	iFactors
	.uleb128 0x76
	.long	.LASF359
	.byte	0x1
	.value	0x207
	.long	0x5601
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	swaptions
	.uleb128 0x6
	.byte	0x8
	.long	0x4fb
	.uleb128 0x76
	.long	.LASF360
	.byte	0x1
	.value	0x209
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	seed
	.uleb128 0x76
	.long	.LASF361
	.byte	0x1
	.value	0x20a
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	swaption_seed
	.uleb128 0x76
	.long	.LASF362
	.byte	0x1
	.value	0x20d
	.long	0x4ef
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	dSumSimSwaptionPrice_global_ptr
	.uleb128 0x76
	.long	.LASF363
	.byte	0x1
	.value	0x20e
	.long	0x4ef
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	dSumSquareSimSwaptionPrice_global_ptr
	.uleb128 0x76
	.long	.LASF331
	.byte	0x1
	.value	0x20f
	.long	0x38
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	chunksize
	.uleb128 0x78
	.long	.LASF364
	.long	0xa3
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.uleb128 0x79
	.long	0x89f
	.byte	0x9
	.byte	0x3
	.quad	_ZStL8__ioinit
	.uleb128 0x7a
	.long	0x1200
	.long	.LASF365
	.sleb128 -2147483648
	.uleb128 0x7b
	.long	0x120d
	.long	.LASF366
	.long	0x7fffffff
	.uleb128 0x7c
	.long	0x1239
	.long	.LASF367
	.byte	0x40
	.uleb128 0x7c
	.long	0x1265
	.long	.LASF368
	.byte	0x7f
	.uleb128 0x7a
	.long	0x1291
	.long	.LASF369
	.sleb128 -32768
	.uleb128 0x7d
	.long	0x129e
	.long	.LASF370
	.value	0x7fff
	.uleb128 0x7a
	.long	0x12c6
	.long	.LASF371
	.sleb128 -9223372036854775808
	.uleb128 0x7e
	.long	0x12d3
	.long	.LASF372
	.quad	0x7fffffffffffffff
	.uleb128 0x7f
	.byte	0x1
	.string	"log"
	.byte	0x1d
	.byte	0x6e
	.long	0x31
	.byte	0x1
	.long	0x5716
	.uleb128 0x22
	.long	0x31
	.byte	0
	.uleb128 0x7f
	.byte	0x1
	.string	"exp"
	.byte	0x1d
	.byte	0x65
	.long	0x31
	.byte	0x1
	.long	0x572d
	.uleb128 0x22
	.long	0x31
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF373
	.byte	0x2
	.byte	0x56
	.long	0x38
	.byte	0x1
	.long	0x574f
	.uleb128 0x22
	.long	0x15e5
	.uleb128 0x22
	.long	0x38
	.uleb128 0x22
	.long	0x3b9
	.uleb128 0x27
	.byte	0
	.uleb128 0x80
	.byte	0x1
	.long	.LASF374
	.long	.LASF377
	.long	0x51
	.byte	0x1
	.byte	0x1
	.long	0x5779
	.uleb128 0x22
	.long	0x427
	.uleb128 0x22
	.long	0x46
	.uleb128 0x22
	.long	0x46
	.uleb128 0x22
	.long	0x15e5
	.byte	0
	.uleb128 0x81
	.byte	0x1
	.long	.LASF375
	.byte	0x3
	.value	0x220
	.byte	0x1
	.long	0x578e
	.uleb128 0x22
	.long	0x38
	.byte	0
	.uleb128 0x80
	.byte	0x1
	.long	.LASF376
	.long	.LASF378
	.long	0x38
	.byte	0x1
	.byte	0x1
	.long	0x57a9
	.uleb128 0x22
	.long	0x3b9
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF379
	.byte	0x3
	.byte	0xb8
	.long	0x3f
	.byte	0x1
	.long	0x57ca
	.uleb128 0x22
	.long	0x3b9
	.uleb128 0x22
	.long	0x151e
	.uleb128 0x22
	.long	0x38
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF380
	.byte	0x2
	.byte	0x58
	.long	0x38
	.byte	0x1
	.long	0x57e7
	.uleb128 0x22
	.long	0x38
	.uleb128 0x22
	.long	0x3b9
	.uleb128 0x27
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF381
	.byte	0x3
	.value	0x1d7
	.long	0xa3
	.byte	0x1
	.long	0x57ff
	.uleb128 0x22
	.long	0x46
	.byte	0
	.uleb128 0x81
	.byte	0x1
	.long	.LASF382
	.byte	0x3
	.value	0x1e8
	.byte	0x1
	.long	0x5814
	.uleb128 0x22
	.long	0xa3
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF383
	.byte	0x7
	.byte	0xf3
	.long	0x38
	.byte	0x1
	.long	0x582b
	.uleb128 0x22
	.long	0x15e5
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF384
	.byte	0x1e
	.value	0x116
	.long	0x38
	.byte	0x1
	.long	0x5843
	.uleb128 0x22
	.long	0x5843
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x415
	.uleb128 0x23
	.byte	0x1
	.long	.LASF385
	.byte	0x1e
	.byte	0xe1
	.long	0x38
	.byte	0x1
	.long	0x586f
	.uleb128 0x22
	.long	0x2c72
	.uleb128 0x22
	.long	0x586f
	.uleb128 0x22
	.long	0x587a
	.uleb128 0x22
	.long	0xa3
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5875
	.uleb128 0x11
	.long	0x415
	.uleb128 0x6
	.byte	0x8
	.long	0x5880
	.uleb128 0x82
	.long	0xa3
	.long	0x5890
	.uleb128 0x22
	.long	0xa3
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF386
	.byte	0x1e
	.byte	0xf2
	.long	0x38
	.byte	0x1
	.long	0x58ac
	.uleb128 0x22
	.long	0x3d7
	.uleb128 0x22
	.long	0x58ac
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa3
	.uleb128 0x83
	.byte	0x1
	.long	.LASF396
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.byte	0x1
	.long	.LASF387
	.byte	0x1d
	.byte	0x9e
	.long	0x31
	.byte	0x1
	.long	0x58d2
	.uleb128 0x22
	.long	0x31
	.byte	0
	.uleb128 0x84
	.byte	0x1
	.long	.LASF388
	.byte	0x1f
	.byte	0x47
	.byte	0x1
	.long	0x58f5
	.uleb128 0x22
	.long	0x3b9
	.uleb128 0x22
	.long	0x3b9
	.uleb128 0x22
	.long	0x66
	.uleb128 0x22
	.long	0x3b9
	.byte	0
	.uleb128 0x85
	.byte	0x1
	.long	.LASF397
	.long	0x38
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.long	0x150d
	.uleb128 0x22
	.long	0xa3
	.uleb128 0x22
	.long	0xa3
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
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x17
	.byte	0x1
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
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x16
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
	.uleb128 0x27
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
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
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4e
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x4f
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x50
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
	.uleb128 0x51
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x52
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x53
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x54
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x55
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x56
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x57
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x58
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x59
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x5a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x5b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x5d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x5e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x5f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x60
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x61
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x62
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x63
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x64
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x65
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x66
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
	.uleb128 0x67
	.uleb128 0x34
	.byte	0
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x68
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x69
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x6a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6b
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x6c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x6f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x70
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x71
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x72
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x73
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x74
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x75
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
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x76
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x77
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x78
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x79
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x7a
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x7b
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x7c
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7d
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x7e
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x7f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x80
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x81
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x82
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x83
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x84
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x85
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LFB50
	.quad	.LCFI0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI0
	.quad	.LCFI1
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI1
	.quad	.LCFI2
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI2
	.quad	.LCFI3
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI3
	.quad	.LFE50
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0
	.quad	.LVL1
	.value	0x1
	.byte	0x61
	.quad	.LVL1
	.quad	.LVL5-1
	.value	0x1
	.byte	0x62
	.quad	.LVL5-1
	.quad	.LVL8
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x31
	.byte	0x9f
	.quad	.LVL8
	.quad	.LVL11
	.value	0x1
	.byte	0x62
	.quad	.LVL11
	.quad	.LFE50
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL2
	.quad	.LVL5-1
	.value	0x1
	.byte	0x63
	.quad	.LVL5-1
	.quad	.LVL8
	.value	0x12
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x31
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0
	.long	0x3fe00000
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL8
	.quad	.LVL11
	.value	0x1
	.byte	0x63
	.quad	.LVL11
	.quad	.LFE50
	.value	0x12
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x31
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0
	.long	0x3fe00000
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL3
	.quad	.LVL4
	.value	0x1
	.byte	0x62
	.quad	.LVL4
	.quad	.LVL5-1
	.value	0x1
	.byte	0x61
	.quad	.LVL6
	.quad	.LVL7
	.value	0x1
	.byte	0x61
	.quad	.LVL7
	.quad	.LVL8
	.value	0x1
	.byte	0x67
	.quad	.LVL9
	.quad	.LVL10
	.value	0x1
	.byte	0x6b
	.quad	.LVL10
	.quad	.LVL11
	.value	0x1
	.byte	0x62
	.quad	.LVL11
	.quad	.LFE50
	.value	0x1
	.byte	0x67
	.quad	0
	.quad	0
.LLST4:
	.quad	.LFB78
	.quad	.LCFI4
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI4
	.quad	.LCFI5
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI5
	.quad	.LCFI6
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI6
	.quad	.LCFI7
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI7
	.quad	.LCFI8
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI8
	.quad	.LCFI9
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI9
	.quad	.LCFI10
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI10
	.quad	.LCFI11
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI11
	.quad	.LCFI12
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI12
	.quad	.LCFI13
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI13
	.quad	.LCFI14
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI14
	.quad	.LFE78
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	0
	.quad	0
.LLST5:
	.quad	.LFB79
	.quad	.LCFI15
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI15
	.quad	.LCFI16
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI16
	.quad	.LCFI17
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI17
	.quad	.LCFI18
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI18
	.quad	.LCFI19
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI19
	.quad	.LCFI20
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI20
	.quad	.LCFI21
	.value	0x2
	.byte	0x77
	.sleb128 56
	.quad	.LCFI21
	.quad	.LCFI22
	.value	0x3
	.byte	0x77
	.sleb128 112
	.quad	.LCFI22
	.quad	.LCFI23
	.value	0x2
	.byte	0x77
	.sleb128 56
	.quad	.LCFI23
	.quad	.LCFI24
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI24
	.quad	.LCFI25
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI25
	.quad	.LCFI26
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI26
	.quad	.LCFI27
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI27
	.quad	.LCFI28
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI28
	.quad	.LCFI29
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI29
	.quad	.LCFI30
	.value	0x3
	.byte	0x77
	.sleb128 112
	.quad	.LCFI30
	.quad	.LFE79
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST6:
	.quad	.LFB80
	.quad	.LCFI31
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI31
	.quad	.LCFI32
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI32
	.quad	.LCFI33
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI33
	.quad	.LCFI34
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI34
	.quad	.LCFI35
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI35
	.quad	.LCFI36
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI36
	.quad	.LCFI37
	.value	0x2
	.byte	0x77
	.sleb128 56
	.quad	.LCFI37
	.quad	.LCFI38
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI38
	.quad	.LCFI39
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI39
	.quad	.LCFI40
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI40
	.quad	.LCFI41
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI41
	.quad	.LCFI42
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI42
	.quad	.LCFI43
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI43
	.quad	.LFE80
	.value	0x2
	.byte	0x77
	.sleb128 56
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL13
	.quad	.LVL15
	.value	0x1
	.byte	0x55
	.quad	.LVL15
	.quad	.LVL64
	.value	0x1
	.byte	0x53
	.quad	.LVL64
	.quad	.LVL65
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL65
	.quad	.LFE80
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL13
	.quad	.LVL19
	.value	0x1
	.byte	0x51
	.quad	.LVL19
	.quad	.LVL60
	.value	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.quad	.LVL60
	.quad	.LVL65
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL65
	.quad	.LVL66
	.value	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.quad	.LVL66
	.quad	.LVL67
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL67
	.quad	.LFE80
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL13
	.quad	.LVL14
	.value	0x1
	.byte	0x61
	.quad	.LVL14
	.quad	.LFE80
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL13
	.quad	.LVL16
	.value	0x1
	.byte	0x58
	.quad	.LVL16
	.quad	.LVL60
	.value	0x1
	.byte	0x5c
	.quad	.LVL60
	.quad	.LVL65
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.quad	.LVL65
	.quad	.LVL66
	.value	0x1
	.byte	0x5c
	.quad	.LVL66
	.quad	.LVL67
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.quad	.LVL67
	.quad	.LVL68
	.value	0x1
	.byte	0x58
	.quad	.LVL68
	.quad	.LVL69
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.quad	.LVL69
	.quad	.LFE80
	.value	0x1
	.byte	0x58
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL14
	.quad	.LVL16
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL17
	.quad	.LVL18
	.value	0x1
	.byte	0x59
	.quad	.LVL60
	.quad	.LVL61
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL67
	.quad	.LFE80
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL19
	.quad	.LVL20
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL58
	.quad	.LVL59
	.value	0x1
	.byte	0x5a
	.quad	.LVL62
	.quad	.LVL63
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL66
	.quad	.LVL67
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL21
	.quad	.LVL22
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL30
	.quad	.LVL31
	.value	0x1
	.byte	0x5d
	.quad	.LVL32
	.quad	.LVL33
	.value	0x1
	.byte	0x5d
	.quad	.LVL33
	.quad	.LVL34
	.value	0x3
	.byte	0x7d
	.sleb128 1
	.byte	0x9f
	.quad	.LVL34
	.quad	.LVL35
	.value	0x3
	.byte	0x7d
	.sleb128 -7
	.byte	0x9f
	.quad	.LVL35
	.quad	.LVL36
	.value	0x3
	.byte	0x7d
	.sleb128 -6
	.byte	0x9f
	.quad	.LVL36
	.quad	.LVL37
	.value	0x3
	.byte	0x7d
	.sleb128 -5
	.byte	0x9f
	.quad	.LVL37
	.quad	.LVL38
	.value	0x3
	.byte	0x7d
	.sleb128 -4
	.byte	0x9f
	.quad	.LVL38
	.quad	.LVL39
	.value	0x3
	.byte	0x7d
	.sleb128 -3
	.byte	0x9f
	.quad	.LVL39
	.quad	.LVL40
	.value	0x3
	.byte	0x7d
	.sleb128 -2
	.byte	0x9f
	.quad	.LVL40
	.quad	.LVL41
	.value	0x3
	.byte	0x7d
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL41
	.quad	.LVL42
	.value	0x1
	.byte	0x5d
	.quad	.LVL42
	.quad	.LVL43
	.value	0x3
	.byte	0x7d
	.sleb128 1
	.byte	0x9f
	.quad	.LVL43
	.quad	.LVL44
	.value	0x3
	.byte	0x7d
	.sleb128 -7
	.byte	0x9f
	.quad	.LVL44
	.quad	.LVL45
	.value	0x3
	.byte	0x7d
	.sleb128 -6
	.byte	0x9f
	.quad	.LVL45
	.quad	.LVL46
	.value	0x3
	.byte	0x7d
	.sleb128 -5
	.byte	0x9f
	.quad	.LVL46
	.quad	.LVL47
	.value	0x3
	.byte	0x7d
	.sleb128 -4
	.byte	0x9f
	.quad	.LVL47
	.quad	.LVL48
	.value	0x3
	.byte	0x7d
	.sleb128 -3
	.byte	0x9f
	.quad	.LVL48
	.quad	.LVL49
	.value	0x3
	.byte	0x7d
	.sleb128 -2
	.byte	0x9f
	.quad	.LVL49
	.quad	.LVL50
	.value	0x3
	.byte	0x7d
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL50
	.quad	.LVL52
	.value	0x1
	.byte	0x5d
	.quad	.LVL52
	.quad	.LVL53
	.value	0x3
	.byte	0x7d
	.sleb128 -32
	.byte	0x9f
	.quad	.LVL54
	.quad	.LVL55
	.value	0x1
	.byte	0x5d
	.quad	.LVL56
	.quad	.LVL57
	.value	0x1
	.byte	0x5d
	.quad	.LVL65
	.quad	.LVL66
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL14
	.quad	.LVL16
	.value	0x1
	.byte	0x61
	.quad	.LVL16
	.quad	.LVL19
	.value	0xd
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x31
	.byte	0x71
	.sleb128 0
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL19
	.quad	.LVL60
	.value	0xd
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x31
	.byte	0x78
	.sleb128 1
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL60
	.quad	.LVL65
	.value	0xe
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x31
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL65
	.quad	.LVL66
	.value	0xd
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x31
	.byte	0x78
	.sleb128 1
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL66
	.quad	.LVL67
	.value	0xe
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x31
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL67
	.quad	.LFE80
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL23
	.quad	.LVL31
	.value	0x1
	.byte	0x61
	.quad	.LVL32
	.quad	.LVL33
	.value	0x1
	.byte	0x61
	.quad	.LVL41
	.quad	.LVL42
	.value	0x1
	.byte	0x61
	.quad	.LVL50
	.quad	.LVL51
	.value	0x1
	.byte	0x61
	.quad	.LVL54
	.quad	.LVL55
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL70
	.quad	.LVL78
	.value	0x1
	.byte	0x55
	.quad	.LVL78
	.quad	.LVL81
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL81
	.quad	.LFE83
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL70
	.quad	.LVL77
	.value	0x1
	.byte	0x51
	.quad	.LVL77
	.quad	.LVL81
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL81
	.quad	.LFE83
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL71
	.quad	.LVL72
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL73
	.quad	.LVL74
	.value	0x3
	.byte	0x72
	.sleb128 -7
	.byte	0x9f
	.quad	.LVL75
	.quad	.LVL76
	.value	0x1
	.byte	0x52
	.quad	.LVL79
	.quad	.LVL80
	.value	0x1
	.byte	0x52
	.quad	.LVL81
	.quad	.LFE83
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST19:
	.quad	.LFB84
	.quad	.LCFI44
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI44
	.quad	.LCFI45
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI45
	.quad	.LCFI46
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI46
	.quad	.LCFI47
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI47
	.quad	.LCFI48
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI48
	.quad	.LCFI49
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI49
	.quad	.LCFI50
	.value	0x2
	.byte	0x77
	.sleb128 56
	.quad	.LCFI50
	.quad	.LCFI51
	.value	0x3
	.byte	0x77
	.sleb128 96
	.quad	.LCFI51
	.quad	.LCFI52
	.value	0x2
	.byte	0x77
	.sleb128 56
	.quad	.LCFI52
	.quad	.LCFI53
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI53
	.quad	.LCFI54
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI54
	.quad	.LCFI55
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI55
	.quad	.LCFI56
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI56
	.quad	.LCFI57
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI57
	.quad	.LCFI58
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI58
	.quad	.LFE84
	.value	0x3
	.byte	0x77
	.sleb128 96
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL82
	.quad	.LVL100
	.value	0x1
	.byte	0x55
	.quad	.LVL100
	.quad	.LVL123
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL123
	.quad	.LFE84
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL82
	.quad	.LVL85
	.value	0x1
	.byte	0x54
	.quad	.LVL85
	.quad	.LFE84
	.value	0x3
	.byte	0x91
	.sleb128 -76
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL82
	.quad	.LVL83
	.value	0x1
	.byte	0x61
	.quad	.LVL83
	.quad	.LFE84
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL82
	.quad	.LVL86
	.value	0x1
	.byte	0x51
	.quad	.LVL86
	.quad	.LVL124
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	.LVL124
	.quad	.LVL125
	.value	0x1
	.byte	0x51
	.quad	.LVL125
	.quad	.LFE84
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL84
	.quad	.LVL87
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL88
	.quad	.LVL89
	.value	0x1
	.byte	0x52
	.quad	.LVL90
	.quad	.LVL91
	.value	0x1
	.byte	0x52
	.quad	.LVL91
	.quad	.LVL92
	.value	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL92
	.quad	.LVL93
	.value	0x3
	.byte	0x72
	.sleb128 -2
	.byte	0x9f
	.quad	.LVL94
	.quad	.LVL95
	.value	0x1
	.byte	0x52
	.quad	.LVL95
	.quad	.LVL96
	.value	0x3
	.byte	0x72
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL97
	.quad	.LVL98
	.value	0x1
	.byte	0x52
	.quad	.LVL98
	.quad	.LVL100
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL111
	.quad	.LVL122
	.value	0x1
	.byte	0x5c
	.quad	.LVL124
	.quad	.LFE84
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL99
	.quad	.LVL101
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL102
	.quad	.LVL104
	.value	0x1
	.byte	0x5e
	.quad	.LVL112
	.quad	.LVL113
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL121
	.quad	.LVL122
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL122
	.quad	.LVL123
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL84
	.quad	.LVL100
	.value	0x1
	.byte	0x62
	.quad	.LVL100
	.quad	.LVL123
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	.LVL123
	.quad	.LFE84
	.value	0x1
	.byte	0x62
	.quad	0
	.quad	0
.LLST28:
	.quad	.LFB1075
	.quad	.LCFI59
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI59
	.quad	.LCFI60
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI60
	.quad	.LFE1075
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL126
	.quad	.LVL127
	.value	0x1
	.byte	0x55
	.quad	.LVL127
	.quad	.LVL128-1
	.value	0x1
	.byte	0x52
	.quad	.LVL128-1
	.quad	.LFE1075
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST30:
	.quad	.LFB1077
	.quad	.LCFI61
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI61
	.quad	.LCFI62
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI62
	.quad	.LCFI63
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI63
	.quad	.LCFI64
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI64
	.quad	.LCFI65
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI65
	.quad	.LCFI66
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI66
	.quad	.LCFI67
	.value	0x2
	.byte	0x77
	.sleb128 56
	.quad	.LCFI67
	.quad	.LCFI68
	.value	0x3
	.byte	0x77
	.sleb128 96
	.quad	.LCFI68
	.quad	.LCFI69
	.value	0x2
	.byte	0x77
	.sleb128 56
	.quad	.LCFI69
	.quad	.LCFI70
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI70
	.quad	.LCFI71
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI71
	.quad	.LCFI72
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI72
	.quad	.LCFI73
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI73
	.quad	.LCFI74
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI74
	.quad	.LFE1077
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL134
	.quad	.LVL137
	.value	0x1
	.byte	0x55
	.quad	.LVL137
	.quad	.LFE1077
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST32:
	.quad	.LVL134
	.quad	.LVL137
	.value	0x1
	.byte	0x54
	.quad	.LVL137
	.quad	.LFE1077
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST33:
	.quad	.LVL134
	.quad	.LVL135
	.value	0x1
	.byte	0x51
	.quad	.LVL135
	.quad	.LFE1077
	.value	0x3
	.byte	0x91
	.sleb128 -76
	.quad	0
	.quad	0
.LLST34:
	.quad	.LVL134
	.quad	.LVL137
	.value	0x1
	.byte	0x52
	.quad	.LVL137
	.quad	.LFE1077
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	0
	.quad	0
.LLST35:
	.quad	.LVL134
	.quad	.LVL136
	.value	0x1
	.byte	0x58
	.quad	.LVL136
	.quad	.LFE1077
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.quad	0
	.quad	0
.LLST36:
	.quad	.LVL134
	.quad	.LVL137
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST37:
	.quad	.LVL137
	.quad	.LVL138
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST38:
	.quad	.LVL138
	.quad	.LVL139
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST39:
	.quad	.LFB1080
	.quad	.LCFI75
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI75
	.quad	.LCFI76
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI76
	.quad	.LCFI77
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI77
	.quad	.LCFI78
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI78
	.quad	.LCFI79
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI79
	.quad	.LCFI80
	.value	0x3
	.byte	0x77
	.sleb128 64
	.quad	.LCFI80
	.quad	.LCFI81
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI81
	.quad	.LCFI82
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI82
	.quad	.LCFI83
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI83
	.quad	.LCFI84
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI84
	.quad	.LCFI85
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI85
	.quad	.LFE1080
	.value	0x3
	.byte	0x77
	.sleb128 64
	.quad	0
	.quad	0
.LLST40:
	.quad	.LVL147
	.quad	.LVL148
	.value	0x1
	.byte	0x61
	.quad	.LVL148
	.quad	.LFE1081
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST41:
	.quad	.LFB1082
	.quad	.LCFI86
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI86
	.quad	.LFE1082
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	0
	.quad	0
.LLST42:
	.quad	.LVL149
	.quad	.LVL150
	.value	0x1
	.byte	0x55
	.quad	.LVL150
	.quad	.LFE1082
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST43:
	.quad	.LFB1076
	.quad	.LCFI87
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI87
	.quad	.LCFI88
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI88
	.quad	.LCFI89
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI89
	.quad	.LCFI90
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI90
	.quad	.LFE1076
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0
	.quad	0
.LLST44:
	.quad	.LVL155
	.quad	.LVL156
	.value	0x1
	.byte	0x55
	.quad	.LVL156
	.quad	.LVL161
	.value	0x1
	.byte	0x53
	.quad	.LVL161
	.quad	.LVL162
	.value	0x3
	.byte	0x70
	.sleb128 2
	.byte	0x9f
	.quad	.LVL162
	.quad	.LFE1076
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST45:
	.quad	.LVL155
	.quad	.LVL158-1
	.value	0x1
	.byte	0x54
	.quad	.LVL158-1
	.quad	.LVL173
	.value	0x1
	.byte	0x5e
	.quad	.LVL173
	.quad	.LVL300
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL300
	.quad	.LVL310
	.value	0x1
	.byte	0x5e
	.quad	.LVL310
	.quad	.LVL312
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL312
	.quad	.LVL320
	.value	0x1
	.byte	0x5e
	.quad	.LVL320
	.quad	.LFE1076
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST46:
	.quad	.LVL205
	.quad	.LVL207
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL273
	.quad	.LVL274
	.value	0x3
	.byte	0x91
	.sleb128 -196
	.quad	.LVL275
	.quad	.LVL276
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL277
	.quad	.LVL278
	.value	0x1
	.byte	0x53
	.quad	.LVL278
	.quad	.LVL279
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL280
	.quad	.LVL281
	.value	0x1
	.byte	0x5e
	.quad	.LVL282
	.quad	.LVL283
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL285
	.quad	.LVL286
	.value	0x1
	.byte	0x5c
	.quad	.LVL286
	.quad	.LVL287
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL291
	.quad	.LVL292
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST47:
	.quad	.LVL219
	.quad	.LVL220
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL250
	.quad	.LVL251
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL252
	.quad	.LVL253
	.value	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.quad	.LVL253
	.quad	.LVL261
	.value	0x1
	.byte	0x52
	.quad	.LVL261
	.quad	.LVL262
	.value	0x3
	.byte	0x72
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL263
	.quad	.LVL264
	.value	0x1
	.byte	0x52
	.quad	.LVL265
	.quad	.LVL266
	.value	0x1
	.byte	0x52
	.quad	.LVL266
	.quad	.LVL267
	.value	0x3
	.byte	0x72
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL268
	.quad	.LVL269
	.value	0x1
	.byte	0x52
	.quad	.LVL269
	.quad	.LVL270
	.value	0x3
	.byte	0x72
	.sleb128 -16
	.byte	0x9f
	.quad	.LVL271
	.quad	.LVL272
	.value	0x1
	.byte	0x52
	.quad	.LVL296
	.quad	.LVL297
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL298
	.quad	.LVL299
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL323
	.quad	.LVL324
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST48:
	.quad	.LVL157
	.quad	.LVL203
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL300
	.quad	.LVL322
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST49:
	.quad	.LVL178
	.quad	.LVL179-1
	.value	0x1
	.byte	0x50
	.quad	.LVL179-1
	.quad	.LVL300
	.value	0x3
	.byte	0x91
	.sleb128 -296
	.quad	.LVL310
	.quad	.LVL312
	.value	0x3
	.byte	0x91
	.sleb128 -296
	.quad	.LVL322
	.quad	.LFE1076
	.value	0x3
	.byte	0x91
	.sleb128 -296
	.quad	0
	.quad	0
.LLST50:
	.quad	.LVL249
	.quad	.LVL250
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST52:
	.quad	.LVL275
	.quad	.LVL294
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL294
	.quad	.LVL295
	.value	0x19
	.byte	0x76
	.sleb128 0
	.byte	0x91
	.sleb128 -248
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x12
	.byte	0x9
	.byte	0xf0
	.byte	0x1a
	.byte	0x1c
	.byte	0xa
	.value	0x120
	.byte	0x1c
	.quad	.LVL324
	.quad	.LVL325
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	0
	.quad	0
.LLST53:
	.quad	.LVL160
	.quad	.LVL163
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST54:
	.quad	.LVL164
	.quad	.LVL165-1
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST55:
	.quad	.LVL306
	.quad	.LVL307-1
	.value	0x2
	.byte	0x7f
	.sleb128 -32
	.quad	0
	.quad	0
.LLST56:
	.quad	.LVL308
	.quad	.LVL309-1
	.value	0x2
	.byte	0x7f
	.sleb128 -32
	.quad	0
	.quad	0
.LLST57:
	.quad	.LVL312
	.quad	.LVL313-1
	.value	0x2
	.byte	0x7f
	.sleb128 -32
	.quad	0
	.quad	0
.LLST58:
	.quad	.LVL314
	.quad	.LVL315
	.value	0xa
	.byte	0x3
	.quad	.LC65
	.byte	0x9f
	.quad	0
	.quad	0
.LLST59:
	.quad	.LVL169
	.quad	.LVL300
	.value	0xa
	.byte	0x3
	.quad	.LC67
	.byte	0x9f
	.quad	.LVL310
	.quad	.LVL312
	.value	0xa
	.byte	0x3
	.quad	.LC67
	.byte	0x9f
	.quad	.LVL320
	.quad	.LFE1076
	.value	0xa
	.byte	0x3
	.quad	.LC67
	.byte	0x9f
	.quad	0
	.quad	0
.LLST60:
	.quad	.LVL170
	.quad	.LVL300
	.value	0xa
	.byte	0x3
	.quad	seed
	.byte	0x9f
	.quad	.LVL310
	.quad	.LVL312
	.value	0xa
	.byte	0x3
	.quad	seed
	.byte	0x9f
	.quad	.LVL320
	.quad	.LFE1076
	.value	0xa
	.byte	0x3
	.quad	seed
	.byte	0x9f
	.quad	0
	.quad	0
.LLST61:
	.quad	.LVL171
	.quad	.LVL174
	.value	0x1
	.byte	0x59
	.quad	.LVL174
	.quad	.LVL175
	.value	0x1
	.byte	0x5f
	.quad	.LVL175
	.quad	.LVL188
	.value	0x7
	.byte	0x7c
	.sleb128 -2147483647
	.byte	0x9f
	.quad	.LVL320
	.quad	.LVL322
	.value	0x7
	.byte	0x7c
	.sleb128 -2147483647
	.byte	0x9f
	.quad	0
	.quad	0
.LLST62:
	.quad	.LVL172
	.quad	.LVL177-1
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST63:
	.quad	.LVL176
	.quad	.LVL188
	.value	0x17
	.byte	0x7c
	.sleb128 -2147483647
	.byte	0xf7
	.uleb128 0x3f
	.byte	0xf7
	.uleb128 0x31
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0x1c5f68
	.long	0x3e000000
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL320
	.quad	.LVL322
	.value	0x17
	.byte	0x7c
	.sleb128 -2147483647
	.byte	0xf7
	.uleb128 0x3f
	.byte	0xf7
	.uleb128 0x31
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0x1c5f68
	.long	0x3e000000
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST64:
	.quad	.LVL180
	.quad	.LVL182
	.value	0x1
	.byte	0x5f
	.quad	.LVL182
	.quad	.LVL206
	.value	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL206
	.quad	.LVL300
	.value	0xe
	.byte	0x91
	.sleb128 -148
	.byte	0x94
	.byte	0x4
	.byte	0x32
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL310
	.quad	.LVL312
	.value	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL322
	.quad	.LFE1076
	.value	0xe
	.byte	0x91
	.sleb128 -148
	.byte	0x94
	.byte	0x4
	.byte	0x32
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	0
	.quad	0
.LLST65:
	.quad	.LVL180
	.quad	.LVL183-1
	.value	0x1
	.byte	0x50
	.quad	.LVL183-1
	.quad	.LVL300
	.value	0x3
	.byte	0x91
	.sleb128 -184
	.quad	.LVL310
	.quad	.LVL312
	.value	0x3
	.byte	0x91
	.sleb128 -184
	.quad	.LVL322
	.quad	.LFE1076
	.value	0x3
	.byte	0x91
	.sleb128 -184
	.quad	0
	.quad	0
.LLST66:
	.quad	.LVL180
	.quad	.LVL300
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL310
	.quad	.LVL312
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL322
	.quad	.LFE1076
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST68:
	.quad	.LVL190
	.quad	.LVL192
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL193
	.quad	.LVL200
	.value	0x1
	.byte	0x54
	.quad	.LVL200
	.quad	.LVL201
	.value	0x1
	.byte	0x59
	.quad	.LVL202
	.quad	.LVL203
	.value	0x1
	.byte	0x59
	.quad	.LVL311
	.quad	.LVL312
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST69:
	.quad	.LVL181
	.quad	.LVL186
	.value	0x1
	.byte	0x5e
	.quad	.LVL186
	.quad	.LVL300
	.value	0x7
	.byte	0x91
	.sleb128 -184
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL310
	.quad	.LVL312
	.value	0x7
	.byte	0x91
	.sleb128 -184
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL322
	.quad	.LFE1076
	.value	0x7
	.byte	0x91
	.sleb128 -184
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST70:
	.quad	.LVL182
	.quad	.LVL206
	.value	0x1
	.byte	0x5f
	.quad	.LVL206
	.quad	.LVL300
	.value	0x10
	.byte	0x91
	.sleb128 -148
	.byte	0x94
	.byte	0x4
	.byte	0x32
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL310
	.quad	.LVL312
	.value	0x1
	.byte	0x5f
	.quad	.LVL322
	.quad	.LFE1076
	.value	0x10
	.byte	0x91
	.sleb128 -148
	.byte	0x94
	.byte	0x4
	.byte	0x32
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST71:
	.quad	.LVL184
	.quad	.LVL185
	.value	0x1
	.byte	0x50
	.quad	.LVL185
	.quad	.LVL187
	.value	0x3
	.byte	0x70
	.sleb128 8
	.byte	0x9f
	.quad	.LVL187
	.quad	.LVL191
	.value	0x1
	.byte	0x5d
	.quad	.LVL191
	.quad	.LVL300
	.value	0x3
	.byte	0x91
	.sleb128 -176
	.quad	.LVL310
	.quad	.LVL311
	.value	0x3
	.byte	0x91
	.sleb128 -176
	.quad	.LVL311
	.quad	.LVL312
	.value	0x1
	.byte	0x5d
	.quad	.LVL323
	.quad	.LFE1076
	.value	0x3
	.byte	0x91
	.sleb128 -176
	.quad	0
	.quad	0
.LLST72:
	.quad	.LVL208
	.quad	.LVL274
	.value	0xa
	.byte	0x3
	.quad	seed
	.byte	0x9f
	.quad	.LVL296
	.quad	.LVL300
	.value	0xa
	.byte	0x3
	.quad	seed
	.byte	0x9f
	.quad	.LVL323
	.quad	.LVL324
	.value	0xa
	.byte	0x3
	.quad	seed
	.byte	0x9f
	.quad	.LVL326
	.quad	.LFE1076
	.value	0xa
	.byte	0x3
	.quad	seed
	.byte	0x9f
	.quad	0
	.quad	0
.LLST73:
	.quad	.LVL208
	.quad	.LVL210
	.value	0x3
	.byte	0x91
	.sleb128 -192
	.quad	.LVL210
	.quad	.LVL212
	.value	0x1
	.byte	0x5a
	.quad	.LVL212
	.quad	.LVL213
	.value	0xe
	.byte	0x75
	.sleb128 0
	.byte	0xa
	.value	0x41a7
	.byte	0x1e
	.byte	0x71
	.sleb128 0
	.byte	0xb
	.value	0xf4ec
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.quad	.LVL213
	.quad	.LVL214
	.value	0x7
	.byte	0x75
	.sleb128 0
	.byte	0xa
	.value	0x41a7
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL214
	.quad	.LVL215
	.value	0x7
	.byte	0x75
	.sleb128 0
	.byte	0xa
	.value	0x41a7
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL215
	.quad	.LVL216
	.value	0x7
	.byte	0x75
	.sleb128 0
	.byte	0xa
	.value	0x41a7
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST74:
	.quad	.LVL209
	.quad	.LVL213
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST75:
	.quad	.LVL211
	.quad	.LVL212
	.value	0x13
	.byte	0x7a
	.sleb128 0
	.byte	0xf7
	.uleb128 0x3f
	.byte	0xf7
	.uleb128 0x31
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0x1c5f68
	.long	0x3e000000
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL212
	.quad	.LVL213
	.value	0x1e
	.byte	0x75
	.sleb128 0
	.byte	0xa
	.value	0x41a7
	.byte	0x1e
	.byte	0x71
	.sleb128 0
	.byte	0xb
	.value	0xf4ec
	.byte	0x1e
	.byte	0x22
	.byte	0xf7
	.uleb128 0x3f
	.byte	0xf7
	.uleb128 0x31
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0x1c5f68
	.long	0x3e000000
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL213
	.quad	.LVL214
	.value	0x17
	.byte	0x75
	.sleb128 0
	.byte	0xa
	.value	0x41a7
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x3f
	.byte	0xf7
	.uleb128 0x31
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0x1c5f68
	.long	0x3e000000
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL214
	.quad	.LVL215
	.value	0x17
	.byte	0x75
	.sleb128 0
	.byte	0xa
	.value	0x41a7
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x3f
	.byte	0xf7
	.uleb128 0x31
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0x1c5f68
	.long	0x3e000000
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL215
	.quad	.LVL216
	.value	0x17
	.byte	0x75
	.sleb128 0
	.byte	0xa
	.value	0x41a7
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x3f
	.byte	0xf7
	.uleb128 0x31
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0x1c5f68
	.long	0x3e000000
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST76:
	.quad	.LVL217
	.quad	.LVL274
	.value	0xa
	.byte	0x3
	.quad	seed
	.byte	0x9f
	.quad	.LVL296
	.quad	.LVL300
	.value	0xa
	.byte	0x3
	.quad	seed
	.byte	0x9f
	.quad	.LVL323
	.quad	.LVL324
	.value	0xa
	.byte	0x3
	.quad	seed
	.byte	0x9f
	.quad	.LVL326
	.quad	.LFE1076
	.value	0xa
	.byte	0x3
	.quad	seed
	.byte	0x9f
	.quad	0
	.quad	0
.LLST77:
	.quad	.LVL217
	.quad	.LVL218-1
	.value	0x1
	.byte	0x58
	.quad	.LVL218-1
	.quad	.LVL274
	.value	0x3
	.byte	0x91
	.sleb128 -192
	.quad	.LVL296
	.quad	.LVL300
	.value	0x3
	.byte	0x91
	.sleb128 -192
	.quad	.LVL323
	.quad	.LVL324
	.value	0x3
	.byte	0x91
	.sleb128 -192
	.quad	.LVL326
	.quad	.LFE1076
	.value	0x3
	.byte	0x91
	.sleb128 -192
	.quad	0
	.quad	0
.LLST78:
	.quad	.LVL217
	.quad	.LVL218-1
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST79:
	.quad	.LVL217
	.quad	.LVL218-1
	.value	0x13
	.byte	0x78
	.sleb128 0
	.byte	0xf7
	.uleb128 0x3f
	.byte	0xf7
	.uleb128 0x31
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0x1c5f68
	.long	0x3e000000
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL218-1
	.quad	.LVL274
	.value	0x15
	.byte	0x91
	.sleb128 -192
	.byte	0x6
	.byte	0xf7
	.uleb128 0x3f
	.byte	0xf7
	.uleb128 0x31
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0x1c5f68
	.long	0x3e000000
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL296
	.quad	.LVL300
	.value	0x15
	.byte	0x91
	.sleb128 -192
	.byte	0x6
	.byte	0xf7
	.uleb128 0x3f
	.byte	0xf7
	.uleb128 0x31
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0x1c5f68
	.long	0x3e000000
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL323
	.quad	.LVL324
	.value	0x15
	.byte	0x91
	.sleb128 -192
	.byte	0x6
	.byte	0xf7
	.uleb128 0x3f
	.byte	0xf7
	.uleb128 0x31
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0x1c5f68
	.long	0x3e000000
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL326
	.quad	.LFE1076
	.value	0x15
	.byte	0x91
	.sleb128 -192
	.byte	0x6
	.byte	0xf7
	.uleb128 0x3f
	.byte	0xf7
	.uleb128 0x31
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0x1c5f68
	.long	0x3e000000
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST80:
	.quad	.LVL217
	.quad	.LVL274
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL296
	.quad	.LVL300
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL323
	.quad	.LVL324
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL326
	.quad	.LFE1076
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST81:
	.quad	.LVL218
	.quad	.LVL221
	.value	0x1
	.byte	0x50
	.quad	.LVL221
	.quad	.LVL222
	.value	0x4
	.byte	0x71
	.sleb128 -176
	.byte	0x9f
	.quad	.LVL222
	.quad	.LVL224-1
	.value	0x3
	.byte	0x79
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL298
	.quad	.LVL299
	.value	0x1
	.byte	0x50
	.quad	.LVL326
	.quad	.LVL327-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST82:
	.quad	.LVL223
	.quad	.LVL274
	.value	0xe
	.byte	0x91
	.sleb128 -148
	.byte	0x94
	.byte	0x4
	.byte	0x32
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL296
	.quad	.LVL298
	.value	0xe
	.byte	0x91
	.sleb128 -148
	.byte	0x94
	.byte	0x4
	.byte	0x32
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL299
	.quad	.LVL300
	.value	0xe
	.byte	0x91
	.sleb128 -148
	.byte	0x94
	.byte	0x4
	.byte	0x32
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL323
	.quad	.LVL324
	.value	0xe
	.byte	0x91
	.sleb128 -148
	.byte	0x94
	.byte	0x4
	.byte	0x32
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	0
	.quad	0
.LLST83:
	.quad	.LVL223
	.quad	.LVL274
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL296
	.quad	.LVL298
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL299
	.quad	.LVL300
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL323
	.quad	.LVL324
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST85:
	.quad	.LVL229
	.quad	.LVL230
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL231
	.quad	.LVL232
	.value	0x1
	.byte	0x51
	.quad	.LVL232
	.quad	.LVL233
	.value	0x1
	.byte	0x55
	.quad	.LVL233
	.quad	.LVL234
	.value	0x1
	.byte	0x51
	.quad	.LVL234
	.quad	.LVL235
	.value	0x1
	.byte	0x55
	.quad	.LVL235
	.quad	.LVL236
	.value	0x1
	.byte	0x51
	.quad	.LVL236
	.quad	.LVL237
	.value	0x1
	.byte	0x55
	.quad	.LVL237
	.quad	.LVL238
	.value	0x1
	.byte	0x51
	.quad	.LVL238
	.quad	.LVL239
	.value	0x1
	.byte	0x55
	.quad	.LVL239
	.quad	.LVL240
	.value	0x1
	.byte	0x51
	.quad	.LVL240
	.quad	.LVL241
	.value	0x1
	.byte	0x55
	.quad	.LVL241
	.quad	.LVL242
	.value	0x1
	.byte	0x51
	.quad	.LVL242
	.quad	.LVL243
	.value	0x1
	.byte	0x55
	.quad	.LVL243
	.quad	.LVL244
	.value	0x1
	.byte	0x51
	.quad	.LVL244
	.quad	.LVL245
	.value	0x1
	.byte	0x55
	.quad	.LVL245
	.quad	.LVL246
	.value	0x1
	.byte	0x51
	.quad	.LVL247
	.quad	.LVL248
	.value	0x1
	.byte	0x51
	.quad	.LVL299
	.quad	.LVL300
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST86:
	.quad	.LVL225
	.quad	.LVL226
	.value	0x1
	.byte	0x50
	.quad	.LVL226
	.quad	.LVL227
	.value	0x3
	.byte	0x70
	.sleb128 8
	.byte	0x9f
	.quad	.LVL227
	.quad	.LVL228-1
	.value	0x1
	.byte	0x51
	.quad	.LVL228-1
	.quad	.LVL274
	.value	0x3
	.byte	0x91
	.sleb128 -160
	.quad	.LVL296
	.quad	.LVL298
	.value	0x3
	.byte	0x91
	.sleb128 -160
	.quad	.LVL299
	.quad	.LVL300
	.value	0x3
	.byte	0x91
	.sleb128 -160
	.quad	.LVL323
	.quad	.LVL324
	.value	0x3
	.byte	0x91
	.sleb128 -160
	.quad	0
	.quad	0
.LLST87:
	.quad	.LVL284
	.quad	.LVL292
	.value	0xa
	.byte	0x3
	.quad	.LC101
	.byte	0x9f
	.quad	0
	.quad	0
.LLST88:
	.quad	.LVL284
	.quad	.LVL285-1
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST89:
	.quad	.LVL287
	.quad	.LVL288-1
	.value	0xf
	.byte	0x3
	.quad	swaptions
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x58
	.quad	0
	.quad	0
.LLST90:
	.quad	.LVL287
	.quad	.LVL292
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST91:
	.quad	.LVL289
	.quad	.LVL292
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST92:
	.quad	.LVL289
	.quad	.LVL292
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST94:
	.quad	.LVL317
	.quad	.LVL320
	.value	0xa
	.byte	0x3
	.quad	.LC66
	.byte	0x9f
	.quad	0
	.quad	0
.LLST95:
	.quad	.LVL320
	.quad	.LVL322
	.value	0xa
	.byte	0x3
	.quad	.LC70
	.byte	0x9f
	.quad	0
	.quad	0
.LLST51:
	.quad	.LVL274
	.quad	.LVL296
	.value	0xe
	.byte	0x91
	.sleb128 -248
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL324
	.quad	.LVL325
	.value	0xe
	.byte	0x91
	.sleb128 -248
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST96:
	.quad	.LFB81
	.quad	.LCFI91
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI91
	.quad	.LCFI92
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI92
	.quad	.LCFI93
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI93
	.quad	.LCFI94
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI94
	.quad	.LCFI95
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI95
	.quad	.LCFI96
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI96
	.quad	.LCFI97
	.value	0x2
	.byte	0x77
	.sleb128 56
	.quad	.LCFI97
	.quad	.LCFI98
	.value	0x3
	.byte	0x77
	.sleb128 224
	.quad	.LCFI98
	.quad	.LCFI99
	.value	0x2
	.byte	0x77
	.sleb128 56
	.quad	.LCFI99
	.quad	.LCFI100
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI100
	.quad	.LCFI101
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI101
	.quad	.LCFI102
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI102
	.quad	.LCFI103
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI103
	.quad	.LCFI104
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI104
	.quad	.LCFI105
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI105
	.quad	.LFE81
	.value	0x3
	.byte	0x77
	.sleb128 224
	.quad	0
	.quad	0
.LLST97:
	.quad	.LVL328
	.quad	.LVL330
	.value	0x1
	.byte	0x55
	.quad	.LVL330
	.quad	.LFE81
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.quad	0
	.quad	0
.LLST98:
	.quad	.LVL328
	.quad	.LVL332-1
	.value	0x1
	.byte	0x54
	.quad	.LVL332-1
	.quad	.LVL398
	.value	0x1
	.byte	0x5f
	.quad	.LVL398
	.quad	.LVL399
	.value	0x3
	.byte	0x7f
	.sleb128 2
	.byte	0x9f
	.quad	.LVL399
	.quad	.LVL432
	.value	0x8
	.byte	0x91
	.sleb128 -128
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0x2
	.byte	0x9f
	.quad	.LVL432
	.quad	.LVL435
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL435
	.quad	.LVL438
	.value	0x1
	.byte	0x5f
	.quad	.LVL438
	.quad	.LVL440
	.value	0x8
	.byte	0x91
	.sleb128 -128
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0x2
	.byte	0x9f
	.quad	.LVL440
	.quad	.LFE81
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST99:
	.quad	.LVL328
	.quad	.LVL332-1
	.value	0x1
	.byte	0x51
	.quad	.LVL332-1
	.quad	.LVL335
	.value	0x1
	.byte	0x56
	.quad	.LVL335
	.quad	.LVL432
	.value	0x3
	.byte	0x91
	.sleb128 -76
	.quad	.LVL432
	.quad	.LVL435
	.value	0x8
	.byte	0x91
	.sleb128 -112
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL435
	.quad	.LVL440
	.value	0x3
	.byte	0x91
	.sleb128 -76
	.quad	.LVL440
	.quad	.LFE81
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST100:
	.quad	.LVL328
	.quad	.LVL329
	.value	0x1
	.byte	0x61
	.quad	.LVL329
	.quad	.LFE81
	.value	0x3
	.byte	0x91
	.sleb128 -136
	.quad	0
	.quad	0
.LLST101:
	.quad	.LVL328
	.quad	.LVL332-1
	.value	0x1
	.byte	0x52
	.quad	.LVL332-1
	.quad	.LFE81
	.value	0x3
	.byte	0x91
	.sleb128 -128
	.quad	0
	.quad	0
.LLST102:
	.quad	.LVL328
	.quad	.LVL332-1
	.value	0x1
	.byte	0x58
	.quad	.LVL332-1
	.quad	.LFE81
	.value	0x3
	.byte	0x91
	.sleb128 -96
	.quad	0
	.quad	0
.LLST103:
	.quad	.LVL328
	.quad	.LVL332-1
	.value	0x1
	.byte	0x59
	.quad	.LVL332-1
	.quad	.LVL434
	.value	0x1
	.byte	0x5e
	.quad	.LVL434
	.quad	.LVL435
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x59
	.byte	0x9f
	.quad	.LVL435
	.quad	.LFE81
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST104:
	.quad	.LVL328
	.quad	.LVL433
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL433
	.quad	.LVL435
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL435
	.quad	.LFE81
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST105:
	.quad	.LVL334
	.quad	.LVL335
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL414
	.quad	.LVL415
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL422
	.quad	.LVL423
	.value	0x1
	.byte	0x58
	.quad	.LVL423
	.quad	.LVL424
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.quad	.LVL425
	.quad	.LVL426
	.value	0x1
	.byte	0x58
	.quad	.LVL426
	.quad	.LVL427
	.value	0x3
	.byte	0x78
	.sleb128 -16
	.byte	0x9f
	.quad	.LVL428
	.quad	.LVL429
	.value	0x1
	.byte	0x58
	.quad	0
	.quad	0
.LLST106:
	.quad	.LVL335
	.quad	.LVL336
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL337
	.quad	.LVL338
	.value	0x3
	.byte	0x7d
	.sleb128 1
	.byte	0x9f
	.quad	.LVL338
	.quad	.LVL346
	.value	0x1
	.byte	0x51
	.quad	.LVL346
	.quad	.LVL347
	.value	0x3
	.byte	0x71
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL348
	.quad	.LVL349
	.value	0x1
	.byte	0x51
	.quad	.LVL350
	.quad	.LVL351
	.value	0x1
	.byte	0x51
	.quad	.LVL351
	.quad	.LVL352
	.value	0x1
	.byte	0x5a
	.quad	.LVL352
	.quad	.LVL353
	.value	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.quad	.LVL353
	.quad	.LVL354
	.value	0x3
	.byte	0x7a
	.sleb128 2
	.byte	0x9f
	.quad	.LVL354
	.quad	.LVL355
	.value	0x3
	.byte	0x7a
	.sleb128 3
	.byte	0x9f
	.quad	.LVL355
	.quad	.LVL356
	.value	0x3
	.byte	0x7a
	.sleb128 4
	.byte	0x9f
	.quad	.LVL356
	.quad	.LVL357
	.value	0x3
	.byte	0x7a
	.sleb128 5
	.byte	0x9f
	.quad	.LVL357
	.quad	.LVL358
	.value	0x1
	.byte	0x51
	.quad	.LVL358
	.quad	.LVL359
	.value	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.quad	.LVL359
	.quad	.LVL360
	.value	0x3
	.byte	0x71
	.sleb128 2
	.byte	0x9f
	.quad	.LVL360
	.quad	.LVL361
	.value	0x3
	.byte	0x71
	.sleb128 3
	.byte	0x9f
	.quad	.LVL361
	.quad	.LVL362
	.value	0x3
	.byte	0x71
	.sleb128 4
	.byte	0x9f
	.quad	.LVL362
	.quad	.LVL363
	.value	0x3
	.byte	0x71
	.sleb128 -4
	.byte	0x9f
	.quad	.LVL363
	.quad	.LVL364
	.value	0x3
	.byte	0x71
	.sleb128 -3
	.byte	0x9f
	.quad	.LVL364
	.quad	.LVL365
	.value	0x3
	.byte	0x71
	.sleb128 -2
	.byte	0x9f
	.quad	.LVL365
	.quad	.LVL366
	.value	0x1
	.byte	0x51
	.quad	.LVL366
	.quad	.LVL367
	.value	0x3
	.byte	0x71
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL368
	.quad	.LVL369
	.value	0x1
	.byte	0x51
	.quad	.LVL369
	.quad	.LVL370
	.value	0x3
	.byte	0x71
	.sleb128 -32
	.byte	0x9f
	.quad	.LVL371
	.quad	.LVL372
	.value	0x1
	.byte	0x51
	.quad	.LVL373
	.quad	.LVL374
	.value	0x1
	.byte	0x5a
	.quad	.LVL374
	.quad	.LVL375
	.value	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL375
	.quad	.LVL376
	.value	0x1
	.byte	0x5a
	.quad	.LVL376
	.quad	.LVL377
	.value	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL378
	.quad	.LVL379
	.value	0x1
	.byte	0x5a
	.quad	.LVL379
	.quad	.LVL380
	.value	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL381
	.quad	.LVL382
	.value	0x1
	.byte	0x5a
	.quad	.LVL382
	.quad	.LVL383
	.value	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL384
	.quad	.LVL385
	.value	0x1
	.byte	0x5a
	.quad	.LVL385
	.quad	.LVL386
	.value	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL387
	.quad	.LVL388
	.value	0x1
	.byte	0x5a
	.quad	.LVL388
	.quad	.LVL389
	.value	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL390
	.quad	.LVL391
	.value	0x1
	.byte	0x5a
	.quad	.LVL391
	.quad	.LVL392
	.value	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL392
	.quad	.LVL393
	.value	0x1
	.byte	0x5a
	.quad	.LVL393
	.quad	.LVL394
	.value	0x3
	.byte	0x7a
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL395
	.quad	.LVL396
	.value	0x1
	.byte	0x5a
	.quad	.LVL397
	.quad	.LVL400
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL435
	.quad	.LVL436
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL437
	.quad	.LVL438
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST107:
	.quad	.LVL400
	.quad	.LVL407
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL413
	.quad	.LVL414
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST108:
	.quad	.LVL331
	.quad	.LVL332-1
	.value	0x1
	.byte	0x62
	.quad	.LVL332-1
	.quad	.LFE81
	.value	0x3
	.byte	0x91
	.sleb128 -136
	.quad	0
	.quad	0
.LLST109:
	.quad	.LVL414
	.quad	.LVL415
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.quad	.LVL415
	.quad	.LVL424
	.value	0x1
	.byte	0x64
	.quad	.LVL425
	.quad	.LVL427
	.value	0x1
	.byte	0x64
	.quad	.LVL428
	.quad	.LVL429
	.value	0x1
	.byte	0x64
	.quad	.LVL430
	.quad	.LVL431
	.value	0x1
	.byte	0x64
	.quad	0
	.quad	0
.LLST110:
	.quad	.LVL331
	.quad	.LVL332-1
	.value	0x1
	.byte	0x50
	.quad	.LVL332-1
	.quad	.LFE81
	.value	0xc
	.byte	0x91
	.sleb128 -112
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	0
	.quad	0
.LLST111:
	.quad	.LVL333
	.quad	.LVL335
	.value	0x1
	.byte	0x50
	.quad	.LVL335
	.quad	.LVL440
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	.LVL440
	.quad	.LVL441-1
	.value	0x1
	.byte	0x50
	.quad	.LVL441-1
	.quad	.LFE81
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	0
	.quad	0
.LLST112:
	.quad	.LVL401
	.quad	.LVL406-1
	.value	0x1
	.byte	0x55
	.quad	.LVL408
	.quad	.LVL409-1
	.value	0x1
	.byte	0x55
	.quad	.LVL410
	.quad	.LVL413
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST113:
	.quad	.LVL401
	.quad	.LVL403
	.value	0x1
	.byte	0x5a
	.quad	.LVL403
	.quad	.LVL404
	.value	0x1
	.byte	0x5b
	.quad	.LVL404
	.quad	.LVL406-1
	.value	0x7
	.byte	0x79
	.sleb128 -2147483647
	.byte	0x9f
	.quad	0
	.quad	0
.LLST114:
	.quad	.LVL402
	.quad	.LVL406-1
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST115:
	.quad	.LVL405
	.quad	.LVL406-1
	.value	0x17
	.byte	0x79
	.sleb128 -2147483647
	.byte	0xf7
	.uleb128 0x3f
	.byte	0xf7
	.uleb128 0x31
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0x1c5f68
	.long	0x3e000000
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST116:
	.quad	.LVL432
	.quad	.LVL435
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST117:
	.quad	.LFB85
	.quad	.LCFI106
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI106
	.quad	.LCFI107
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI107
	.quad	.LCFI108
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI108
	.quad	.LCFI109
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI109
	.quad	.LCFI110
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI110
	.quad	.LCFI111
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI111
	.quad	.LCFI112
	.value	0x2
	.byte	0x77
	.sleb128 56
	.quad	.LCFI112
	.quad	.LCFI113
	.value	0x3
	.byte	0x77
	.sleb128 128
	.quad	.LCFI113
	.quad	.LCFI114
	.value	0x2
	.byte	0x77
	.sleb128 56
	.quad	.LCFI114
	.quad	.LCFI115
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI115
	.quad	.LCFI116
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI116
	.quad	.LCFI117
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI117
	.quad	.LCFI118
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI118
	.quad	.LCFI119
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI119
	.quad	.LCFI120
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI120
	.quad	.LFE85
	.value	0x3
	.byte	0x77
	.sleb128 128
	.quad	0
	.quad	0
.LLST118:
	.quad	.LVL442
	.quad	.LVL444
	.value	0x1
	.byte	0x55
	.quad	.LVL444
	.quad	.LFE85
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	0
	.quad	0
.LLST119:
	.quad	.LVL442
	.quad	.LVL445-1
	.value	0x1
	.byte	0x54
	.quad	.LVL445-1
	.quad	.LVL535
	.value	0x1
	.byte	0x53
	.quad	.LVL535
	.quad	.LVL536
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL536
	.quad	.LFE85
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST120:
	.quad	.LVL442
	.quad	.LVL443
	.value	0x1
	.byte	0x61
	.quad	.LVL443
	.quad	.LFE85
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST121:
	.quad	.LVL442
	.quad	.LVL445-1
	.value	0x1
	.byte	0x51
	.quad	.LVL445-1
	.quad	.LFE85
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST122:
	.quad	.LVL447
	.quad	.LVL449
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL450
	.quad	.LVL451
	.value	0x1
	.byte	0x54
	.quad	.LVL452
	.quad	.LVL453
	.value	0x1
	.byte	0x54
	.quad	.LVL453
	.quad	.LVL454
	.value	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL454
	.quad	.LVL455
	.value	0x3
	.byte	0x74
	.sleb128 -2
	.byte	0x9f
	.quad	.LVL456
	.quad	.LVL457
	.value	0x1
	.byte	0x54
	.quad	.LVL457
	.quad	.LVL458
	.value	0x3
	.byte	0x74
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL459
	.quad	.LVL460
	.value	0x1
	.byte	0x54
	.quad	.LVL497
	.quad	.LVL498
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL532
	.quad	.LVL533
	.value	0x1
	.byte	0x5d
	.quad	.LVL539
	.quad	.LVL540
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL543
	.quad	.LVL544
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST123:
	.quad	.LVL460
	.quad	.LVL461
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL462
	.quad	.LVL464
	.value	0x1
	.byte	0x55
	.quad	.LVL472
	.quad	.LVL473
	.value	0x1
	.byte	0x5c
	.quad	.LVL475
	.quad	.LVL476
	.value	0x1
	.byte	0x5d
	.quad	.LVL476
	.quad	.LVL477
	.value	0x3
	.byte	0x7d
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL477
	.quad	.LVL479
	.value	0x3
	.byte	0x7d
	.sleb128 -2
	.byte	0x9f
	.quad	.LVL485
	.quad	.LVL486
	.value	0x1
	.byte	0x5d
	.quad	.LVL486
	.quad	.LVL488
	.value	0x3
	.byte	0x7d
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL496
	.quad	.LVL497
	.value	0x1
	.byte	0x5d
	.quad	.LVL498
	.quad	.LVL499
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL500
	.quad	.LVL501
	.value	0x1
	.byte	0x52
	.quad	.LVL502
	.quad	.LVL503
	.value	0x1
	.byte	0x52
	.quad	.LVL503
	.quad	.LVL504
	.value	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.quad	.LVL504
	.quad	.LVL505
	.value	0x3
	.byte	0x72
	.sleb128 -7
	.byte	0x9f
	.quad	.LVL505
	.quad	.LVL506
	.value	0x3
	.byte	0x72
	.sleb128 -6
	.byte	0x9f
	.quad	.LVL506
	.quad	.LVL507
	.value	0x3
	.byte	0x72
	.sleb128 -5
	.byte	0x9f
	.quad	.LVL507
	.quad	.LVL508
	.value	0x3
	.byte	0x72
	.sleb128 -4
	.byte	0x9f
	.quad	.LVL508
	.quad	.LVL509
	.value	0x3
	.byte	0x72
	.sleb128 -3
	.byte	0x9f
	.quad	.LVL509
	.quad	.LVL510
	.value	0x3
	.byte	0x72
	.sleb128 -2
	.byte	0x9f
	.quad	.LVL510
	.quad	.LVL511
	.value	0x1
	.byte	0x52
	.quad	.LVL511
	.quad	.LVL512
	.value	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.quad	.LVL512
	.quad	.LVL513
	.value	0x3
	.byte	0x72
	.sleb128 -7
	.byte	0x9f
	.quad	.LVL513
	.quad	.LVL514
	.value	0x3
	.byte	0x72
	.sleb128 -6
	.byte	0x9f
	.quad	.LVL514
	.quad	.LVL515
	.value	0x3
	.byte	0x72
	.sleb128 -5
	.byte	0x9f
	.quad	.LVL515
	.quad	.LVL516
	.value	0x3
	.byte	0x72
	.sleb128 -4
	.byte	0x9f
	.quad	.LVL516
	.quad	.LVL517
	.value	0x3
	.byte	0x72
	.sleb128 -3
	.byte	0x9f
	.quad	.LVL517
	.quad	.LVL518
	.value	0x3
	.byte	0x72
	.sleb128 -2
	.byte	0x9f
	.quad	.LVL518
	.quad	.LVL519
	.value	0x1
	.byte	0x52
	.quad	.LVL519
	.quad	.LVL520
	.value	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.quad	.LVL520
	.quad	.LVL521
	.value	0x3
	.byte	0x72
	.sleb128 -31
	.byte	0x9f
	.quad	.LVL521
	.quad	.LVL522
	.value	0x3
	.byte	0x72
	.sleb128 -30
	.byte	0x9f
	.quad	.LVL522
	.quad	.LVL523
	.value	0x3
	.byte	0x72
	.sleb128 -29
	.byte	0x9f
	.quad	.LVL523
	.quad	.LVL524
	.value	0x3
	.byte	0x72
	.sleb128 -28
	.byte	0x9f
	.quad	.LVL524
	.quad	.LVL525
	.value	0x3
	.byte	0x72
	.sleb128 -27
	.byte	0x9f
	.quad	.LVL525
	.quad	.LVL526
	.value	0x3
	.byte	0x72
	.sleb128 -26
	.byte	0x9f
	.quad	.LVL526
	.quad	.LVL527
	.value	0x3
	.byte	0x72
	.sleb128 -25
	.byte	0x9f
	.quad	.LVL528
	.quad	.LVL529
	.value	0x1
	.byte	0x52
	.quad	.LVL530
	.quad	.LVL531
	.value	0x1
	.byte	0x52
	.quad	.LVL537
	.quad	.LVL538
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL542
	.quad	.LVL543
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST124:
	.quad	.LVL534
	.quad	.LVL536
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST125:
	.quad	.LVL443
	.quad	.LVL445-1
	.value	0x1
	.byte	0x61
	.quad	.LVL445-1
	.quad	.LVL535
	.value	0xd
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x31
	.byte	0x73
	.sleb128 0
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL535
	.quad	.LVL536
	.value	0xe
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x31
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL536
	.quad	.LFE85
	.value	0xd
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x31
	.byte	0x73
	.sleb128 0
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0x1b
	.byte	0x9f
	.quad	0
	.quad	0
.LLST126:
	.quad	.LVL443
	.quad	.LVL445-1
	.value	0x1
	.byte	0x50
	.quad	.LVL445-1
	.quad	.LVL535
	.value	0x9
	.byte	0x73
	.sleb128 -2
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL535
	.quad	.LVL536
	.value	0xc
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x32
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL536
	.quad	.LFE85
	.value	0x9
	.byte	0x73
	.sleb128 -2
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	0
	.quad	0
.LLST127:
	.quad	.LVL446
	.quad	.LVL448
	.value	0x1
	.byte	0x50
	.quad	.LVL448
	.quad	.LVL539
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	.LVL539
	.quad	.LVL540
	.value	0x1
	.byte	0x50
	.quad	.LVL540
	.quad	.LVL541
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	.LVL541
	.quad	.LVL542-1
	.value	0x1
	.byte	0x50
	.quad	.LVL542-1
	.quad	.LVL543
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	.LVL543
	.quad	.LVL544
	.value	0x1
	.byte	0x50
	.quad	.LVL544
	.quad	.LFE85
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	0
	.quad	0
.LLST128:
	.quad	.LVL533
	.quad	.LVL536
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST129:
	.quad	.LFB86
	.quad	.LCFI121
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI121
	.quad	.LCFI122
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI122
	.quad	.LCFI123
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI123
	.quad	.LCFI124
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI124
	.quad	.LCFI125
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI125
	.quad	.LCFI126
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI126
	.quad	.LCFI127
	.value	0x2
	.byte	0x77
	.sleb128 56
	.quad	.LCFI127
	.quad	.LCFI128
	.value	0x3
	.byte	0x77
	.sleb128 128
	.quad	.LCFI128
	.quad	.LCFI129
	.value	0x2
	.byte	0x77
	.sleb128 56
	.quad	.LCFI129
	.quad	.LCFI130
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI130
	.quad	.LCFI131
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI131
	.quad	.LCFI132
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI132
	.quad	.LCFI133
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI133
	.quad	.LCFI134
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI134
	.quad	.LCFI135
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI135
	.quad	.LFE86
	.value	0x3
	.byte	0x77
	.sleb128 128
	.quad	0
	.quad	0
.LLST130:
	.quad	.LVL545
	.quad	.LVL549
	.value	0x1
	.byte	0x55
	.quad	.LVL549
	.quad	.LFE86
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	0
	.quad	0
.LLST131:
	.quad	.LVL545
	.quad	.LVL550-1
	.value	0x1
	.byte	0x54
	.quad	.LVL550-1
	.quad	.LFE86
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.quad	0
	.quad	0
.LLST132:
	.quad	.LVL545
	.quad	.LVL546
	.value	0x1
	.byte	0x61
	.quad	.LVL546
	.quad	.LFE86
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST133:
	.quad	.LVL545
	.quad	.LVL550-1
	.value	0x1
	.byte	0x51
	.quad	.LVL550-1
	.quad	.LFE86
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST134:
	.quad	.LVL545
	.quad	.LVL550-1
	.value	0x1
	.byte	0x52
	.quad	.LVL550-1
	.quad	.LVL615
	.value	0x1
	.byte	0x5d
	.quad	.LVL615
	.quad	.LVL616
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL616
	.quad	.LFE86
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST135:
	.quad	.LVL584
	.quad	.LVL586
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL587
	.quad	.LVL588
	.value	0x1
	.byte	0x52
	.quad	.LVL589
	.quad	.LVL590
	.value	0x1
	.byte	0x52
	.quad	.LVL590
	.quad	.LVL591
	.value	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL591
	.quad	.LVL592
	.value	0x3
	.byte	0x72
	.sleb128 -2
	.byte	0x9f
	.quad	.LVL593
	.quad	.LVL594
	.value	0x1
	.byte	0x52
	.quad	.LVL594
	.quad	.LVL595
	.value	0x3
	.byte	0x72
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL596
	.quad	.LVL597
	.value	0x1
	.byte	0x52
	.quad	.LVL597
	.quad	.LVL598
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL612
	.quad	.LVL613
	.value	0x1
	.byte	0x58
	.quad	.LVL619
	.quad	.LVL620
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL621
	.quad	.LVL622
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST136:
	.quad	.LVL552
	.quad	.LVL553
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL554
	.quad	.LVL555
	.value	0x1
	.byte	0x5b
	.quad	.LVL555
	.quad	.LVL557
	.value	0x1
	.byte	0x5e
	.quad	.LVL565
	.quad	.LVL566
	.value	0x1
	.byte	0x5c
	.quad	.LVL567
	.quad	.LVL569
	.value	0x1
	.byte	0x5c
	.quad	.LVL599
	.quad	.LVL600
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL600
	.quad	.LVL608
	.value	0x1
	.byte	0x51
	.quad	.LVL608
	.quad	.LVL609
	.value	0x3
	.byte	0x71
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL610
	.quad	.LVL611
	.value	0x1
	.byte	0x51
	.quad	.LVL617
	.quad	.LVL618
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL623
	.quad	.LFE86
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST137:
	.quad	.LVL598
	.quad	.LVL599
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST138:
	.quad	.LVL614
	.quad	.LVL616
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST139:
	.quad	.LVL546
	.quad	.LVL550-1
	.value	0x1
	.byte	0x61
	.quad	.LVL550-1
	.quad	.LFE86
	.value	0x10
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x31
	.byte	0x91
	.sleb128 -68
	.byte	0x94
	.byte	0x4
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0x1b
	.byte	0x9f
	.quad	0
	.quad	0
.LLST140:
	.quad	.LVL547
	.quad	.LVL548
	.value	0x9
	.byte	0x73
	.sleb128 -1
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL548
	.quad	.LVL550-1
	.value	0x1
	.byte	0x50
	.quad	.LVL550-1
	.quad	.LVL585
	.value	0x9
	.byte	0x73
	.sleb128 -1
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL585
	.quad	.LVL615
	.value	0x13
	.byte	0x91
	.sleb128 -68
	.byte	0x94
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.byte	0x7d
	.sleb128 0
	.byte	0x1e
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL615
	.quad	.LVL616
	.value	0x14
	.byte	0x91
	.sleb128 -68
	.byte	0x94
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1e
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL616
	.quad	.LVL618
	.value	0x9
	.byte	0x73
	.sleb128 -1
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL618
	.quad	.LVL620
	.value	0x13
	.byte	0x91
	.sleb128 -68
	.byte	0x94
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.byte	0x7d
	.sleb128 0
	.byte	0x1e
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL620
	.quad	.LVL621
	.value	0x9
	.byte	0x73
	.sleb128 -1
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL621
	.quad	.LVL622
	.value	0x13
	.byte	0x91
	.sleb128 -68
	.byte	0x94
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.byte	0x7d
	.sleb128 0
	.byte	0x1e
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL622
	.quad	.LFE86
	.value	0x9
	.byte	0x73
	.sleb128 -1
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	0
	.quad	0
.LLST141:
	.quad	.LVL551
	.quad	.LVL556
	.value	0x1
	.byte	0x50
	.quad	.LVL556
	.quad	.LVL617
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	.LVL617
	.quad	.LVL618
	.value	0x1
	.byte	0x50
	.quad	.LVL618
	.quad	.LVL622
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	.LVL622
	.quad	.LVL623-1
	.value	0x1
	.byte	0x50
	.quad	.LVL623-1
	.quad	.LVL623
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	.LVL623
	.quad	.LFE86
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST142:
	.quad	.LVL613
	.quad	.LVL616
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST143:
	.quad	.LFB77
	.quad	.LCFI136
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI136
	.quad	.LCFI137
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI137
	.quad	.LCFI138
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI138
	.quad	.LCFI139
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI139
	.quad	.LCFI140
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI140
	.quad	.LCFI141
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI141
	.quad	.LCFI142
	.value	0x2
	.byte	0x77
	.sleb128 56
	.quad	.LCFI142
	.quad	.LCFI143
	.value	0x3
	.byte	0x77
	.sleb128 208
	.quad	.LCFI143
	.quad	.LCFI144
	.value	0x2
	.byte	0x77
	.sleb128 56
	.quad	.LCFI144
	.quad	.LCFI145
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI145
	.quad	.LCFI146
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI146
	.quad	.LCFI147
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI147
	.quad	.LCFI148
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI148
	.quad	.LCFI149
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI149
	.quad	.LCFI150
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI150
	.quad	.LFE77
	.value	0x3
	.byte	0x77
	.sleb128 208
	.quad	0
	.quad	0
.LLST144:
	.quad	.LVL624
	.quad	.LVL627
	.value	0x1
	.byte	0x55
	.quad	.LVL627
	.quad	.LFE77
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	0
	.quad	0
.LLST145:
	.quad	.LVL624
	.quad	.LVL628-1
	.value	0x1
	.byte	0x54
	.quad	.LVL628-1
	.quad	.LVL690
	.value	0x1
	.byte	0x5e
	.quad	.LVL690
	.quad	.LVL691
	.value	0x8
	.byte	0x91
	.sleb128 -120
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0x2
	.byte	0x9f
	.quad	.LVL691
	.quad	.LFE77
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST146:
	.quad	.LVL624
	.quad	.LVL625
	.value	0x1
	.byte	0x51
	.quad	.LVL625
	.quad	.LFE77
	.value	0x3
	.byte	0x91
	.sleb128 -140
	.quad	0
	.quad	0
.LLST147:
	.quad	.LVL624
	.quad	.LVL628-1
	.value	0x1
	.byte	0x61
	.quad	.LVL628-1
	.quad	.LFE77
	.value	0x3
	.byte	0x91
	.sleb128 -104
	.quad	0
	.quad	0
.LLST148:
	.quad	.LVL624
	.quad	.LVL628-1
	.value	0x1
	.byte	0x52
	.quad	.LVL628-1
	.quad	.LVL672
	.value	0x1
	.byte	0x5f
	.quad	.LVL672
	.quad	.LVL691
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL691
	.quad	.LVL692
	.value	0x1
	.byte	0x5f
	.quad	.LVL692
	.quad	.LVL694
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL694
	.quad	.LFE77
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST149:
	.quad	.LVL624
	.quad	.LVL628-1
	.value	0x1
	.byte	0x58
	.quad	.LVL628-1
	.quad	.LFE77
	.value	0x3
	.byte	0x91
	.sleb128 -96
	.quad	0
	.quad	0
.LLST150:
	.quad	.LVL624
	.quad	.LVL628-1
	.value	0x1
	.byte	0x59
	.quad	.LVL628-1
	.quad	.LFE77
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	0
	.quad	0
.LLST151:
	.quad	.LVL624
	.quad	.LVL680
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL681
	.quad	.LVL684-1
	.value	0x1
	.byte	0x50
	.quad	.LVL691
	.quad	.LVL692
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL692
	.quad	.LVL693-1
	.value	0x1
	.byte	0x50
	.quad	.LVL694
	.quad	.LFE77
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST152:
	.quad	.LVL624
	.quad	.LVL626
	.value	0x9
	.byte	0x74
	.sleb128 -1
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL626
	.quad	.LVL628-1
	.value	0x1
	.byte	0x50
	.quad	.LVL628-1
	.quad	.LVL690
	.value	0x9
	.byte	0x7e
	.sleb128 -1
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL690
	.quad	.LVL691
	.value	0xe
	.byte	0x91
	.sleb128 -120
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0x1
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL691
	.quad	.LFE77
	.value	0x9
	.byte	0x7e
	.sleb128 -1
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	0
	.quad	0
.LLST153:
	.quad	.LVL629
	.quad	.LVL630
	.value	0x1
	.byte	0x50
	.quad	.LVL630
	.quad	.LVL631
	.value	0x1
	.byte	0x55
	.quad	.LVL631
	.quad	.LFE77
	.value	0x3
	.byte	0x91
	.sleb128 -168
	.quad	0
	.quad	0
.LLST154:
	.quad	.LVL632
	.quad	.LVL696
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.quad	.LVL697
	.quad	.LFE77
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.quad	0
	.quad	0
.LLST155:
	.quad	.LVL632
	.quad	.LVL634-1
	.value	0x1
	.byte	0x50
	.quad	.LVL634-1
	.quad	.LVL696
	.value	0x3
	.byte	0x91
	.sleb128 -176
	.quad	.LVL697
	.quad	.LFE77
	.value	0x3
	.byte	0x91
	.sleb128 -176
	.quad	0
	.quad	0
.LLST156:
	.quad	.LVL632
	.quad	.LVL696
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL697
	.quad	.LFE77
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST158:
	.quad	.LVL640
	.quad	.LVL642
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL645
	.quad	.LVL646
	.value	0x1
	.byte	0x50
	.quad	.LVL646
	.quad	.LVL647
	.value	0x1
	.byte	0x54
	.quad	.LVL647
	.quad	.LVL648
	.value	0x1
	.byte	0x50
	.quad	.LVL648
	.quad	.LVL649
	.value	0x1
	.byte	0x54
	.quad	.LVL649
	.quad	.LVL650
	.value	0x1
	.byte	0x50
	.quad	.LVL650
	.quad	.LVL651
	.value	0x1
	.byte	0x54
	.quad	.LVL651
	.quad	.LVL652
	.value	0x1
	.byte	0x50
	.quad	.LVL652
	.quad	.LVL653
	.value	0x1
	.byte	0x54
	.quad	.LVL653
	.quad	.LVL654
	.value	0x1
	.byte	0x50
	.quad	.LVL654
	.quad	.LVL655
	.value	0x1
	.byte	0x54
	.quad	.LVL655
	.quad	.LVL656
	.value	0x1
	.byte	0x50
	.quad	.LVL656
	.quad	.LVL657
	.value	0x1
	.byte	0x54
	.quad	.LVL657
	.quad	.LVL659
	.value	0x1
	.byte	0x50
	.quad	.LVL660
	.quad	.LVL661
	.value	0x1
	.byte	0x50
	.quad	.LVL695
	.quad	.LVL696
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST159:
	.quad	.LVL633
	.quad	.LVL637
	.value	0x1
	.byte	0x5c
	.quad	.LVL637
	.quad	.LVL696
	.value	0x7
	.byte	0x91
	.sleb128 -176
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL697
	.quad	.LVL698
	.value	0x7
	.byte	0x91
	.sleb128 -176
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL698
	.quad	.LVL699
	.value	0x1
	.byte	0x5c
	.quad	.LVL699
	.quad	.LFE77
	.value	0x7
	.byte	0x91
	.sleb128 -176
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST160:
	.quad	.LVL633
	.quad	.LVL641
	.value	0x1
	.byte	0x56
	.quad	.LVL641
	.quad	.LVL695
	.value	0x7
	.byte	0x91
	.sleb128 -120
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL695
	.quad	.LVL696
	.value	0x1
	.byte	0x56
	.quad	.LVL697
	.quad	.LVL699
	.value	0x1
	.byte	0x56
	.quad	.LVL699
	.quad	.LFE77
	.value	0x7
	.byte	0x91
	.sleb128 -120
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST161:
	.quad	.LVL635
	.quad	.LVL636
	.value	0x1
	.byte	0x50
	.quad	.LVL636
	.quad	.LVL638
	.value	0x3
	.byte	0x70
	.sleb128 8
	.byte	0x9f
	.quad	.LVL638
	.quad	.LVL643
	.value	0x1
	.byte	0x53
	.quad	.LVL643
	.quad	.LVL644
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	.LVL695
	.quad	.LVL696
	.value	0x1
	.byte	0x53
	.quad	.LVL697
	.quad	.LVL698
	.value	0x1
	.byte	0x53
	.quad	.LVL698
	.quad	.LVL699-1
	.value	0x1
	.byte	0x50
	.quad	.LVL699-1
	.quad	.LVL699
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST162:
	.quad	.LVL661
	.quad	.LVL695
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.quad	.LVL699
	.quad	.LFE77
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.quad	0
	.quad	0
.LLST163:
	.quad	.LVL661
	.quad	.LVL695
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL699
	.quad	.LFE77
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST164:
	.quad	.LVL663
	.quad	.LVL666
	.value	0x1
	.byte	0x50
	.quad	.LVL666
	.quad	.LVL688
	.value	0x1
	.byte	0x56
	.quad	.LVL688
	.quad	.LVL689
	.value	0x3
	.byte	0x7c
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL691
	.quad	.LVL695
	.value	0x1
	.byte	0x56
	.quad	.LVL699
	.quad	.LFE77
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST165:
	.quad	.LVL664
	.quad	.LVL672
	.value	0x1
	.byte	0x5f
	.quad	.LVL672
	.quad	.LVL691
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL691
	.quad	.LVL692
	.value	0x1
	.byte	0x5f
	.quad	.LVL692
	.quad	.LVL694
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL694
	.quad	.LVL695
	.value	0x1
	.byte	0x5f
	.quad	.LVL699
	.quad	.LFE77
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST166:
	.quad	.LVL664
	.quad	.LVL690
	.value	0x1
	.byte	0x5e
	.quad	.LVL690
	.quad	.LVL691
	.value	0x8
	.byte	0x91
	.sleb128 -120
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0x2
	.byte	0x9f
	.quad	.LVL691
	.quad	.LVL695
	.value	0x1
	.byte	0x5e
	.quad	.LVL699
	.quad	.LFE77
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST167:
	.quad	.LVL664
	.quad	.LVL695
	.value	0x3
	.byte	0x91
	.sleb128 -112
	.quad	.LVL699
	.quad	.LFE77
	.value	0x3
	.byte	0x91
	.sleb128 -112
	.quad	0
	.quad	0
.LLST168:
	.quad	.LVL665
	.quad	.LVL667
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL668
	.quad	.LVL669
	.value	0x3
	.byte	0x74
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL670
	.quad	.LVL671
	.value	0x1
	.byte	0x52
	.quad	.LVL673
	.quad	.LVL674
	.value	0x1
	.byte	0x54
	.quad	.LVL674
	.quad	.LVL675
	.value	0x1
	.byte	0x55
	.quad	.LVL676
	.quad	.LVL677
	.value	0x1
	.byte	0x54
	.quad	.LVL677
	.quad	.LVL678
	.value	0x3
	.byte	0x74
	.sleb128 -4
	.byte	0x9f
	.quad	.LVL679
	.quad	.LVL680
	.value	0x1
	.byte	0x54
	.quad	.LVL694
	.quad	.LVL695
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL699
	.quad	.LFE77
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST169:
	.quad	.LVL664
	.quad	.LVL680
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL680
	.quad	.LVL691
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL691
	.quad	.LVL692
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL692
	.quad	.LVL694
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL694
	.quad	.LVL695
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL699
	.quad	.LFE77
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST170:
	.quad	.LVL683
	.quad	.LVL691
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST171:
	.quad	.LVL684
	.quad	.LVL691
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST173:
	.quad	.LVL686
	.quad	.LVL691
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST174:
	.quad	.LFB82
	.quad	.LCFI151
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI151
	.quad	.LCFI152
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI152
	.quad	.LCFI153
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI153
	.quad	.LCFI154
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI154
	.quad	.LCFI155
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI155
	.quad	.LCFI156
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI156
	.quad	.LCFI157
	.value	0x2
	.byte	0x77
	.sleb128 56
	.quad	.LCFI157
	.quad	.LCFI158
	.value	0x3
	.byte	0x77
	.sleb128 192
	.quad	.LCFI158
	.quad	.LCFI159
	.value	0x2
	.byte	0x77
	.sleb128 56
	.quad	.LCFI159
	.quad	.LCFI160
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI160
	.quad	.LCFI161
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI161
	.quad	.LCFI162
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI162
	.quad	.LCFI163
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI163
	.quad	.LCFI164
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI164
	.quad	.LCFI165
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI165
	.quad	.LFE82
	.value	0x3
	.byte	0x77
	.sleb128 192
	.quad	0
	.quad	0
.LLST175:
	.quad	.LVL700
	.quad	.LVL703
	.value	0x1
	.byte	0x55
	.quad	.LVL703
	.quad	.LVL813
	.value	0x1
	.byte	0x5e
	.quad	.LVL813
	.quad	.LVL816
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL816
	.quad	.LFE82
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST176:
	.quad	.LVL700
	.quad	.LVL701
	.value	0x1
	.byte	0x54
	.quad	.LVL701
	.quad	.LFE82
	.value	0x3
	.byte	0x91
	.sleb128 -108
	.quad	0
	.quad	0
.LLST177:
	.quad	.LVL700
	.quad	.LVL704-1
	.value	0x1
	.byte	0x51
	.quad	.LVL704-1
	.quad	.LVL737
	.value	0x1
	.byte	0x53
	.quad	.LVL737
	.quad	.LVL811
	.value	0x3
	.byte	0x91
	.sleb128 -108
	.quad	.LVL811
	.quad	.LVL816
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL816
	.quad	.LVL819
	.value	0x1
	.byte	0x53
	.quad	.LVL819
	.quad	.LVL820
	.value	0x3
	.byte	0x91
	.sleb128 -108
	.quad	.LVL820
	.quad	.LVL823
	.value	0x1
	.byte	0x53
	.quad	.LVL823
	.quad	.LVL824
	.value	0x3
	.byte	0x91
	.sleb128 -108
	.quad	.LVL824
	.quad	.LFE82
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST178:
	.quad	.LVL700
	.quad	.LVL704-1
	.value	0x1
	.byte	0x52
	.quad	.LVL704-1
	.quad	.LVL737
	.value	0x1
	.byte	0x5f
	.quad	.LVL737
	.quad	.LVL816
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL816
	.quad	.LVL819
	.value	0x1
	.byte	0x5f
	.quad	.LVL819
	.quad	.LVL820
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL820
	.quad	.LVL823
	.value	0x1
	.byte	0x5f
	.quad	.LVL823
	.quad	.LVL824
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL824
	.quad	.LFE82
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST179:
	.quad	.LVL700
	.quad	.LVL815
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL815
	.quad	.LVL816
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL816
	.quad	.LFE82
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST180:
	.quad	.LVL727
	.quad	.LVL729
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST181:
	.quad	.LVL730
	.quad	.LVL731
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL732
	.quad	.LVL733
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL734
	.quad	.LVL735
	.value	0x1
	.byte	0x55
	.quad	.LVL737
	.quad	.LVL738
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL739
	.quad	.LVL740
	.value	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.quad	.LVL740
	.quad	.LVL748
	.value	0x1
	.byte	0x51
	.quad	.LVL748
	.quad	.LVL749
	.value	0x3
	.byte	0x71
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL750
	.quad	.LVL751
	.value	0x1
	.byte	0x51
	.quad	.LVL752
	.quad	.LVL753
	.value	0x1
	.byte	0x51
	.quad	.LVL753
	.quad	.LVL754
	.value	0x1
	.byte	0x52
	.quad	.LVL754
	.quad	.LVL755
	.value	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.quad	.LVL755
	.quad	.LVL756
	.value	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.quad	.LVL756
	.quad	.LVL757
	.value	0x3
	.byte	0x72
	.sleb128 3
	.byte	0x9f
	.quad	.LVL757
	.quad	.LVL758
	.value	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.quad	.LVL758
	.quad	.LVL759
	.value	0x3
	.byte	0x72
	.sleb128 5
	.byte	0x9f
	.quad	.LVL759
	.quad	.LVL760
	.value	0x1
	.byte	0x51
	.quad	.LVL760
	.quad	.LVL761
	.value	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.quad	.LVL761
	.quad	.LVL762
	.value	0x3
	.byte	0x71
	.sleb128 2
	.byte	0x9f
	.quad	.LVL762
	.quad	.LVL763
	.value	0x3
	.byte	0x71
	.sleb128 3
	.byte	0x9f
	.quad	.LVL763
	.quad	.LVL764
	.value	0x3
	.byte	0x71
	.sleb128 4
	.byte	0x9f
	.quad	.LVL764
	.quad	.LVL765
	.value	0x3
	.byte	0x71
	.sleb128 -4
	.byte	0x9f
	.quad	.LVL765
	.quad	.LVL766
	.value	0x3
	.byte	0x71
	.sleb128 -3
	.byte	0x9f
	.quad	.LVL766
	.quad	.LVL767
	.value	0x3
	.byte	0x71
	.sleb128 -2
	.byte	0x9f
	.quad	.LVL767
	.quad	.LVL768
	.value	0x1
	.byte	0x51
	.quad	.LVL768
	.quad	.LVL769
	.value	0x3
	.byte	0x71
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL770
	.quad	.LVL771
	.value	0x1
	.byte	0x51
	.quad	.LVL771
	.quad	.LVL772
	.value	0x3
	.byte	0x71
	.sleb128 -32
	.byte	0x9f
	.quad	.LVL773
	.quad	.LVL774
	.value	0x1
	.byte	0x51
	.quad	.LVL775
	.quad	.LVL776
	.value	0x1
	.byte	0x52
	.quad	.LVL776
	.quad	.LVL777
	.value	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL777
	.quad	.LVL778
	.value	0x1
	.byte	0x52
	.quad	.LVL778
	.quad	.LVL779
	.value	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL780
	.quad	.LVL781
	.value	0x1
	.byte	0x52
	.quad	.LVL781
	.quad	.LVL782
	.value	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL783
	.quad	.LVL784
	.value	0x1
	.byte	0x52
	.quad	.LVL784
	.quad	.LVL785
	.value	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL786
	.quad	.LVL787
	.value	0x1
	.byte	0x52
	.quad	.LVL787
	.quad	.LVL788
	.value	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL789
	.quad	.LVL790
	.value	0x1
	.byte	0x52
	.quad	.LVL790
	.quad	.LVL791
	.value	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL792
	.quad	.LVL793
	.value	0x1
	.byte	0x52
	.quad	.LVL793
	.quad	.LVL794
	.value	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL794
	.quad	.LVL795
	.value	0x1
	.byte	0x52
	.quad	.LVL795
	.quad	.LVL796
	.value	0x3
	.byte	0x72
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL797
	.quad	.LVL798
	.value	0x1
	.byte	0x52
	.quad	.LVL816
	.quad	.LVL817
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL819
	.quad	.LVL821
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL823
	.quad	.LVL824
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST182:
	.quad	.LVL799
	.quad	.LVL800
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL801
	.quad	.LVL802
	.value	0x1
	.byte	0x55
	.quad	.LVL802
	.quad	.LVL803
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.quad	.LVL804
	.quad	.LVL805
	.value	0x1
	.byte	0x55
	.quad	.LVL805
	.quad	.LVL806
	.value	0x3
	.byte	0x75
	.sleb128 -16
	.byte	0x9f
	.quad	.LVL807
	.quad	.LVL808
	.value	0x1
	.byte	0x55
	.quad	.LVL809
	.quad	.LVL810
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST183:
	.quad	.LVL702
	.quad	.LVL706
	.value	0x1
	.byte	0x56
	.quad	.LVL706
	.quad	.LVL715
	.value	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL715
	.quad	.LVL824
	.value	0xc
	.byte	0x91
	.sleb128 -112
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL824
	.quad	.LVL825
	.value	0x1
	.byte	0x56
	.quad	.LVL825
	.quad	.LFE82
	.value	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST184:
	.quad	.LVL705
	.quad	.LVL709-1
	.value	0x1
	.byte	0x50
	.quad	.LVL709-1
	.quad	.LVL824
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	.LVL824
	.quad	.LVL825-1
	.value	0x1
	.byte	0x50
	.quad	.LVL825-1
	.quad	.LFE82
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	0
	.quad	0
.LLST185:
	.quad	.LVL707
	.quad	.LVL728
	.value	0x1
	.byte	0x5d
	.quad	.LVL728
	.quad	.LVL737
	.value	0x9
	.byte	0x73
	.sleb128 -1
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL737
	.quad	.LVL811
	.value	0xe
	.byte	0x91
	.sleb128 -108
	.byte	0x94
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL811
	.quad	.LVL816
	.value	0xc
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL816
	.quad	.LVL819
	.value	0x9
	.byte	0x73
	.sleb128 -1
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL819
	.quad	.LVL820
	.value	0xe
	.byte	0x91
	.sleb128 -108
	.byte	0x94
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL820
	.quad	.LVL821
	.value	0x9
	.byte	0x73
	.sleb128 -1
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL821
	.quad	.LVL823
	.value	0x1
	.byte	0x5d
	.quad	.LVL823
	.quad	.LVL824
	.value	0xe
	.byte	0x91
	.sleb128 -108
	.byte	0x94
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL825
	.quad	.LFE82
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST186:
	.quad	.LVL707
	.quad	.LVL824
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL825
	.quad	.LFE82
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST188:
	.quad	.LVL714
	.quad	.LVL716
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL717
	.quad	.LVL724
	.value	0x1
	.byte	0x54
	.quad	.LVL724
	.quad	.LVL725
	.value	0x1
	.byte	0x5a
	.quad	.LVL726
	.quad	.LVL727
	.value	0x1
	.byte	0x5a
	.quad	.LVL821
	.quad	.LVL822
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST189:
	.quad	.LVL708
	.quad	.LVL709-1
	.value	0x1
	.byte	0x51
	.quad	.LVL709-1
	.quad	.LVL728
	.value	0x3
	.byte	0x7d
	.sleb128 1
	.byte	0x9f
	.quad	.LVL728
	.quad	.LVL737
	.value	0xb
	.byte	0x73
	.sleb128 -1
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL737
	.quad	.LVL811
	.value	0x10
	.byte	0x91
	.sleb128 -108
	.byte	0x94
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL811
	.quad	.LVL816
	.value	0xe
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL816
	.quad	.LVL819
	.value	0xb
	.byte	0x73
	.sleb128 -1
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL819
	.quad	.LVL820
	.value	0x10
	.byte	0x91
	.sleb128 -108
	.byte	0x94
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL820
	.quad	.LVL821
	.value	0xb
	.byte	0x73
	.sleb128 -1
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL821
	.quad	.LVL823
	.value	0x3
	.byte	0x7d
	.sleb128 1
	.byte	0x9f
	.quad	.LVL823
	.quad	.LVL824
	.value	0x10
	.byte	0x91
	.sleb128 -108
	.byte	0x94
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL825
	.quad	.LFE82
	.value	0x3
	.byte	0x7d
	.sleb128 1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST190:
	.quad	.LVL708
	.quad	.LVL715
	.value	0x1
	.byte	0x56
	.quad	.LVL715
	.quad	.LVL821
	.value	0xe
	.byte	0x91
	.sleb128 -112
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL821
	.quad	.LVL823
	.value	0x1
	.byte	0x56
	.quad	.LVL823
	.quad	.LVL824
	.value	0xe
	.byte	0x91
	.sleb128 -112
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL825
	.quad	.LFE82
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST191:
	.quad	.LVL710
	.quad	.LVL711
	.value	0x1
	.byte	0x50
	.quad	.LVL711
	.quad	.LVL712
	.value	0x3
	.byte	0x70
	.sleb128 8
	.byte	0x9f
	.quad	.LVL712
	.quad	.LVL736
	.value	0x1
	.byte	0x5c
	.quad	.LVL736
	.quad	.LVL811
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.quad	.LVL811
	.quad	.LVL816
	.value	0x7
	.byte	0x91
	.sleb128 -128
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.quad	.LVL816
	.quad	.LVL819
	.value	0x1
	.byte	0x5c
	.quad	.LVL819
	.quad	.LVL820
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.quad	.LVL820
	.quad	.LVL823
	.value	0x1
	.byte	0x5c
	.quad	.LVL823
	.quad	.LVL824
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.quad	.LVL825
	.quad	.LVL826-1
	.value	0x1
	.byte	0x50
	.quad	.LVL826-1
	.quad	.LFE82
	.value	0x3
	.byte	0x91
	.sleb128 -128
	.quad	0
	.quad	0
.LLST192:
	.quad	.LVL811
	.quad	.LVL816
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST193:
	.quad	.LVL812
	.quad	.LVL816
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST195:
	.quad	.LFB1078
	.quad	.LCFI166
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI166
	.quad	.LCFI167
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI167
	.quad	.LCFI168
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI168
	.quad	.LCFI169
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI169
	.quad	.LCFI170
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI170
	.quad	.LCFI171
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI171
	.quad	.LCFI172
	.value	0x2
	.byte	0x77
	.sleb128 56
	.quad	.LCFI172
	.quad	.LCFI173
	.value	0x3
	.byte	0x77
	.sleb128 224
	.quad	.LCFI173
	.quad	.LCFI174
	.value	0x2
	.byte	0x77
	.sleb128 56
	.quad	.LCFI174
	.quad	.LCFI175
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI175
	.quad	.LCFI176
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI176
	.quad	.LCFI177
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI177
	.quad	.LCFI178
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI178
	.quad	.LCFI179
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI179
	.quad	.LCFI180
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI180
	.quad	.LFE1078
	.value	0x3
	.byte	0x77
	.sleb128 224
	.quad	0
	.quad	0
.LLST196:
	.quad	.LVL827
	.quad	.LVL830
	.value	0x1
	.byte	0x55
	.quad	.LVL830
	.quad	.LVL977
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	.LVL977
	.quad	.LVL978-1
	.value	0x1
	.byte	0x55
	.quad	.LVL978-1
	.quad	.LFE1078
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	0
	.quad	0
.LLST197:
	.quad	.LVL827
	.quad	.LVL830
	.value	0x1
	.byte	0x54
	.quad	.LVL830
	.quad	.LVL977
	.value	0x3
	.byte	0x91
	.sleb128 -140
	.quad	.LVL977
	.quad	.LVL978-1
	.value	0x1
	.byte	0x54
	.quad	.LVL978-1
	.quad	.LFE1078
	.value	0x3
	.byte	0x91
	.sleb128 -140
	.quad	0
	.quad	0
.LLST198:
	.quad	.LVL827
	.quad	.LVL830
	.value	0x1
	.byte	0x51
	.quad	.LVL830
	.quad	.LVL875
	.value	0x1
	.byte	0x5d
	.quad	.LVL875
	.quad	.LVL915
	.value	0x3
	.byte	0x91
	.sleb128 -112
	.quad	.LVL915
	.quad	.LVL968
	.value	0x8
	.byte	0x91
	.sleb128 -88
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL968
	.quad	.LVL969
	.value	0x3
	.byte	0x91
	.sleb128 -112
	.quad	.LVL969
	.quad	.LVL970
	.value	0x1
	.byte	0x5d
	.quad	.LVL970
	.quad	.LVL974
	.value	0x3
	.byte	0x91
	.sleb128 -112
	.quad	.LVL974
	.quad	.LVL977
	.value	0x1
	.byte	0x5d
	.quad	.LVL977
	.quad	.LVL978-1
	.value	0x1
	.byte	0x51
	.quad	.LVL978-1
	.quad	.LFE1078
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST199:
	.quad	.LVL827
	.quad	.LVL828
	.value	0x1
	.byte	0x61
	.quad	.LVL828
	.quad	.LFE1078
	.value	0x3
	.byte	0x91
	.sleb128 -168
	.quad	0
	.quad	0
.LLST200:
	.quad	.LVL827
	.quad	.LVL830
	.value	0x1
	.byte	0x52
	.quad	.LVL830
	.quad	.LVL878
	.value	0x1
	.byte	0x53
	.quad	.LVL878
	.quad	.LVL969
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL969
	.quad	.LVL977
	.value	0x1
	.byte	0x53
	.quad	.LVL977
	.quad	.LVL978-1
	.value	0x1
	.byte	0x52
	.quad	.LVL978-1
	.quad	.LFE1078
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST201:
	.quad	.LVL827
	.quad	.LVL830
	.value	0x1
	.byte	0x58
	.quad	.LVL830
	.quad	.LVL977
	.value	0x3
	.byte	0x91
	.sleb128 -152
	.quad	.LVL977
	.quad	.LVL978-1
	.value	0x1
	.byte	0x58
	.quad	.LVL978-1
	.quad	.LFE1078
	.value	0x3
	.byte	0x91
	.sleb128 -152
	.quad	0
	.quad	0
.LLST202:
	.quad	.LVL827
	.quad	.LVL830
	.value	0x1
	.byte	0x59
	.quad	.LVL830
	.quad	.LVL977
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	.LVL977
	.quad	.LVL978-1
	.value	0x1
	.byte	0x59
	.quad	.LVL978-1
	.quad	.LFE1078
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	0
	.quad	0
.LLST203:
	.quad	.LVL827
	.quad	.LVL966
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL966
	.quad	.LVL967
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL967
	.quad	.LFE1078
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST204:
	.quad	.LVL876
	.quad	.LVL877
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL947
	.quad	.LVL948
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL956
	.quad	.LVL957
	.value	0x1
	.byte	0x54
	.quad	.LVL967
	.quad	.LVL968
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL970
	.quad	.LVL972
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL973
	.quad	.LVL974
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST205:
	.quad	.LVL875
	.quad	.LVL877
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL878
	.quad	.LVL879
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL913
	.quad	.LVL914
	.value	0x1
	.byte	0x56
	.quad	.LVL945
	.quad	.LVL946
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL970
	.quad	.LVL971
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST206:
	.quad	.LVL879
	.quad	.LVL880
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL882
	.quad	.LVL885
	.value	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.quad	.LVL885
	.quad	.LVL888
	.value	0x3
	.byte	0x78
	.sleb128 2
	.byte	0x9f
	.quad	.LVL888
	.quad	.LVL891
	.value	0x3
	.byte	0x78
	.sleb128 3
	.byte	0x9f
	.quad	.LVL891
	.quad	.LVL894
	.value	0x3
	.byte	0x78
	.sleb128 4
	.byte	0x9f
	.quad	.LVL894
	.quad	.LVL897
	.value	0x3
	.byte	0x78
	.sleb128 5
	.byte	0x9f
	.quad	.LVL897
	.quad	.LVL900
	.value	0x3
	.byte	0x78
	.sleb128 6
	.byte	0x9f
	.quad	.LVL900
	.quad	.LVL903
	.value	0x3
	.byte	0x78
	.sleb128 7
	.byte	0x9f
	.quad	.LVL903
	.quad	.LVL904
	.value	0x1
	.byte	0x58
	.quad	.LVL905
	.quad	.LVL909
	.value	0x1
	.byte	0x58
	.quad	.LVL946
	.quad	.LVL947
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL960
	.quad	.LVL961
	.value	0x1
	.byte	0x53
	.quad	.LVL968
	.quad	.LVL969
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST207:
	.quad	.LVL947
	.quad	.LVL948
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.quad	.LVL949
	.quad	.LVL951
	.value	0x1
	.byte	0x67
	.quad	.LVL951
	.quad	.LVL952
	.value	0x1
	.byte	0x69
	.quad	.LVL952
	.quad	.LVL957
	.value	0x1
	.byte	0x66
	.quad	.LVL958
	.quad	.LVL959
	.value	0x1
	.byte	0x66
	.quad	.LVL967
	.quad	.LVL968
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.quad	0
	.quad	0
.LLST208:
	.quad	.LVL829
	.quad	.LVL830
	.value	0x1
	.byte	0x62
	.quad	.LVL830
	.quad	.LVL977
	.value	0x3
	.byte	0x91
	.sleb128 -168
	.quad	.LVL977
	.quad	.LVL978-1
	.value	0x1
	.byte	0x62
	.quad	.LVL978-1
	.quad	.LFE1078
	.value	0x3
	.byte	0x91
	.sleb128 -168
	.quad	0
	.quad	0
.LLST209:
	.quad	.LVL830
	.quad	.LVL977
	.value	0x3
	.byte	0x91
	.sleb128 -160
	.quad	0
	.quad	0
.LLST210:
	.quad	.LVL831
	.quad	.LVL833
	.value	0x13
	.byte	0x91
	.sleb128 -140
	.byte	0x94
	.byte	0x4
	.byte	0x91
	.sleb128 8
	.byte	0x94
	.byte	0x4
	.byte	0x1e
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL833
	.quad	.LVL834
	.value	0x1
	.byte	0x50
	.quad	.LVL834
	.quad	.LVL836-1
	.value	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL836-1
	.quad	.LVL977
	.value	0x7
	.byte	0x91
	.sleb128 -192
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST211:
	.quad	.LVL831
	.quad	.LVL873
	.value	0x1
	.byte	0x56
	.quad	.LVL873
	.quad	.LVL969
	.value	0xc
	.byte	0x91
	.sleb128 -88
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL969
	.quad	.LVL970
	.value	0x1
	.byte	0x56
	.quad	.LVL970
	.quad	.LVL974
	.value	0xc
	.byte	0x91
	.sleb128 -88
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL974
	.quad	.LVL977
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST212:
	.quad	.LVL831
	.quad	.LVL977
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST214:
	.quad	.LVL842
	.quad	.LVL843
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL844
	.quad	.LVL851
	.value	0x1
	.byte	0x52
	.quad	.LVL851
	.quad	.LVL852
	.value	0x1
	.byte	0x54
	.quad	.LVL853
	.quad	.LVL854
	.value	0x1
	.byte	0x54
	.quad	.LVL974
	.quad	.LVL975
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST215:
	.quad	.LVL832
	.quad	.LVL838
	.value	0x1
	.byte	0x5c
	.quad	.LVL838
	.quad	.LVL873
	.value	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.quad	.LVL873
	.quad	.LVL969
	.value	0xe
	.byte	0x91
	.sleb128 -88
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL969
	.quad	.LVL970
	.value	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.quad	.LVL970
	.quad	.LVL974
	.value	0xe
	.byte	0x91
	.sleb128 -88
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL974
	.quad	.LVL977
	.value	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST216:
	.quad	.LVL835
	.quad	.LVL836-1
	.value	0x1
	.byte	0x50
	.quad	.LVL836-1
	.quad	.LVL977
	.value	0x3
	.byte	0x91
	.sleb128 -192
	.quad	0
	.quad	0
.LLST217:
	.quad	.LVL837
	.quad	.LVL839
	.value	0x1
	.byte	0x50
	.quad	.LVL839
	.quad	.LVL840
	.value	0x3
	.byte	0x70
	.sleb128 8
	.byte	0x9f
	.quad	.LVL840
	.quad	.LVL875
	.value	0x1
	.byte	0x5e
	.quad	.LVL875
	.quad	.LVL915
	.value	0x3
	.byte	0x91
	.sleb128 -128
	.quad	.LVL915
	.quad	.LVL968
	.value	0x7
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.quad	.LVL968
	.quad	.LVL969
	.value	0x3
	.byte	0x91
	.sleb128 -128
	.quad	.LVL969
	.quad	.LVL970
	.value	0x1
	.byte	0x5e
	.quad	.LVL970
	.quad	.LVL974
	.value	0x3
	.byte	0x91
	.sleb128 -128
	.quad	.LVL974
	.quad	.LVL976
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST218:
	.quad	.LVL854
	.quad	.LVL974
	.value	0x7
	.byte	0x91
	.sleb128 -192
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST219:
	.quad	.LVL854
	.quad	.LVL873
	.value	0x1
	.byte	0x56
	.quad	.LVL873
	.quad	.LVL969
	.value	0xc
	.byte	0x91
	.sleb128 -88
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL969
	.quad	.LVL970
	.value	0x1
	.byte	0x56
	.quad	.LVL970
	.quad	.LVL974
	.value	0xc
	.byte	0x91
	.sleb128 -88
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	0
	.quad	0
.LLST220:
	.quad	.LVL854
	.quad	.LVL974
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST222:
	.quad	.LVL860
	.quad	.LVL861
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL862
	.quad	.LVL869
	.value	0x1
	.byte	0x52
	.quad	.LVL869
	.quad	.LVL870
	.value	0x1
	.byte	0x54
	.quad	.LVL871
	.quad	.LVL872
	.value	0x1
	.byte	0x54
	.quad	.LVL969
	.quad	.LVL970
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST223:
	.quad	.LVL854
	.quad	.LVL974
	.value	0x3
	.byte	0x91
	.sleb128 -192
	.quad	0
	.quad	0
.LLST224:
	.quad	.LVL856
	.quad	.LVL857
	.value	0x1
	.byte	0x50
	.quad	.LVL857
	.quad	.LVL858
	.value	0x3
	.byte	0x70
	.sleb128 8
	.byte	0x9f
	.quad	.LVL858
	.quad	.LVL874
	.value	0x1
	.byte	0x5c
	.quad	.LVL874
	.quad	.LVL915
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.quad	.LVL915
	.quad	.LVL968
	.value	0x7
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.quad	.LVL968
	.quad	.LVL969
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.quad	.LVL969
	.quad	.LVL970
	.value	0x1
	.byte	0x5c
	.quad	.LVL970
	.quad	.LVL974
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.quad	0
	.quad	0
.LLST225:
	.quad	.LVL872
	.quad	.LVL875
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST226:
	.quad	.LVL878
	.quad	.LVL914
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL914
	.quad	.LVL915
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL968
	.quad	.LVL969
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST227:
	.quad	.LVL881
	.quad	.LVL882
	.value	0x1
	.byte	0x55
	.quad	.LVL884
	.quad	.LVL885
	.value	0x1
	.byte	0x55
	.quad	.LVL887
	.quad	.LVL888
	.value	0x1
	.byte	0x55
	.quad	.LVL890
	.quad	.LVL891
	.value	0x1
	.byte	0x55
	.quad	.LVL893
	.quad	.LVL894
	.value	0x1
	.byte	0x55
	.quad	.LVL896
	.quad	.LVL897
	.value	0x1
	.byte	0x55
	.quad	.LVL899
	.quad	.LVL900
	.value	0x1
	.byte	0x55
	.quad	.LVL902
	.quad	.LVL904
	.value	0x1
	.byte	0x55
	.quad	.LVL905
	.quad	.LVL906
	.value	0x1
	.byte	0x55
	.quad	.LVL908
	.quad	.LVL909
	.value	0x1
	.byte	0x55
	.quad	.LVL910
	.quad	.LVL912
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST228:
	.quad	.LVL881
	.quad	.LVL883
	.value	0x13
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x3f
	.byte	0xf7
	.uleb128 0x31
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0x1c5f68
	.long	0x3e000000
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL884
	.quad	.LVL886
	.value	0x13
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x3f
	.byte	0xf7
	.uleb128 0x31
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0x1c5f68
	.long	0x3e000000
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL887
	.quad	.LVL889
	.value	0x13
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x3f
	.byte	0xf7
	.uleb128 0x31
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0x1c5f68
	.long	0x3e000000
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL890
	.quad	.LVL892
	.value	0x13
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x3f
	.byte	0xf7
	.uleb128 0x31
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0x1c5f68
	.long	0x3e000000
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL893
	.quad	.LVL895
	.value	0x13
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x3f
	.byte	0xf7
	.uleb128 0x31
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0x1c5f68
	.long	0x3e000000
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL896
	.quad	.LVL898
	.value	0x13
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x3f
	.byte	0xf7
	.uleb128 0x31
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0x1c5f68
	.long	0x3e000000
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL899
	.quad	.LVL901
	.value	0x13
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x3f
	.byte	0xf7
	.uleb128 0x31
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0x1c5f68
	.long	0x3e000000
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL902
	.quad	.LVL904
	.value	0x13
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x3f
	.byte	0xf7
	.uleb128 0x31
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0x1c5f68
	.long	0x3e000000
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL905
	.quad	.LVL907
	.value	0x13
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x3f
	.byte	0xf7
	.uleb128 0x31
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0x1c5f68
	.long	0x3e000000
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL908
	.quad	.LVL909
	.value	0x13
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x3f
	.byte	0xf7
	.uleb128 0x31
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0x1c5f68
	.long	0x3e000000
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL910
	.quad	.LVL911
	.value	0x13
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x3f
	.byte	0xf7
	.uleb128 0x31
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0x1c5f68
	.long	0x3e000000
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST229:
	.quad	.LVL915
	.quad	.LVL916
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST230:
	.quad	.LVL916
	.quad	.LVL917
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST231:
	.quad	.LVL917
	.quad	.LVL918
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL918
	.quad	.LVL919
	.value	0x1
	.byte	0x5e
	.quad	.LVL919
	.quad	.LVL920
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL920
	.quad	.LVL921
	.value	0x1
	.byte	0x5e
	.quad	.LVL921
	.quad	.LVL922
	.value	0x3
	.byte	0x7e
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL922
	.quad	.LVL923
	.value	0x1
	.byte	0x5e
	.quad	.LVL923
	.quad	.LVL924
	.value	0x3
	.byte	0x7e
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL924
	.quad	.LVL925
	.value	0x1
	.byte	0x5e
	.quad	.LVL925
	.quad	.LVL926
	.value	0x3
	.byte	0x7e
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL926
	.quad	.LVL927
	.value	0x1
	.byte	0x5e
	.quad	.LVL927
	.quad	.LVL928
	.value	0x3
	.byte	0x7e
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL928
	.quad	.LVL929
	.value	0x1
	.byte	0x5e
	.quad	.LVL929
	.quad	.LVL930
	.value	0x3
	.byte	0x7e
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL930
	.quad	.LVL931
	.value	0x1
	.byte	0x5e
	.quad	.LVL931
	.quad	.LVL932
	.value	0x3
	.byte	0x7e
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL932
	.quad	.LVL933
	.value	0x1
	.byte	0x5e
	.quad	.LVL933
	.quad	.LVL935
	.value	0x3
	.byte	0x7e
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL942
	.quad	.LVL943
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST232:
	.quad	.LVL944
	.quad	.LVL945
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST233:
	.quad	.LVL962
	.quad	.LVL967
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST235:
	.quad	.LVL964
	.quad	.LVL967
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST237:
	.quad	.LFB1079
	.quad	.LCFI181
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI181
	.quad	.LCFI182
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI182
	.quad	.LCFI183
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI183
	.quad	.LCFI184
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI184
	.quad	.LCFI185
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI185
	.quad	.LCFI186
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI186
	.quad	.LCFI187
	.value	0x2
	.byte	0x77
	.sleb128 56
	.quad	.LCFI187
	.quad	.LCFI188
	.value	0x3
	.byte	0x77
	.sleb128 384
	.quad	.LCFI188
	.quad	.LCFI189
	.value	0x2
	.byte	0x77
	.sleb128 56
	.quad	.LCFI189
	.quad	.LCFI190
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI190
	.quad	.LCFI191
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI191
	.quad	.LCFI192
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI192
	.quad	.LCFI193
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI193
	.quad	.LCFI194
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI194
	.quad	.LCFI195
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI195
	.quad	.LFE1079
	.value	0x3
	.byte	0x77
	.sleb128 384
	.quad	0
	.quad	0
.LLST238:
	.quad	.LVL979
	.quad	.LVL988
	.value	0x1
	.byte	0x55
	.quad	.LVL988
	.quad	.LVL1134
	.value	0x3
	.byte	0x91
	.sleb128 -136
	.quad	.LVL1134
	.quad	.LVL1136-1
	.value	0x1
	.byte	0x55
	.quad	.LVL1136-1
	.quad	.LFE1079
	.value	0x3
	.byte	0x91
	.sleb128 -136
	.quad	0
	.quad	0
.LLST239:
	.quad	.LVL979
	.quad	.LVL988
	.value	0x1
	.byte	0x61
	.quad	.LVL988
	.quad	.LVL1134
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x31
	.byte	0x9f
	.quad	.LVL1134
	.quad	.LVL1135
	.value	0x1
	.byte	0x61
	.quad	.LVL1135
	.quad	.LFE1079
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST240:
	.quad	.LVL979
	.quad	.LVL988
	.value	0x1
	.byte	0x62
	.quad	.LVL988
	.quad	.LVL1134
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x31
	.byte	0x9f
	.quad	.LVL1134
	.quad	.LVL1136-1
	.value	0x1
	.byte	0x62
	.quad	.LVL1136-1
	.quad	.LFE1079
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST241:
	.quad	.LVL979
	.quad	.LVL980
	.value	0x1
	.byte	0x63
	.quad	.LVL980
	.quad	.LFE1079
	.value	0x3
	.byte	0x91
	.sleb128 -240
	.quad	0
	.quad	0
.LLST242:
	.quad	.LVL979
	.quad	.LVL981
	.value	0x1
	.byte	0x64
	.quad	.LVL981
	.quad	.LFE1079
	.value	0x3
	.byte	0x91
	.sleb128 -200
	.quad	0
	.quad	0
.LLST243:
	.quad	.LVL979
	.quad	.LVL982
	.value	0x1
	.byte	0x65
	.quad	.LVL982
	.quad	.LVL984
	.value	0x1
	.byte	0x64
	.quad	.LVL984
	.quad	.LFE1079
	.value	0x3
	.byte	0x91
	.sleb128 -208
	.quad	0
	.quad	0
.LLST244:
	.quad	.LVL979
	.quad	.LVL988
	.value	0x1
	.byte	0x54
	.quad	.LVL988
	.quad	.LVL1134
	.value	0x3
	.byte	0x91
	.sleb128 -272
	.quad	.LVL1134
	.quad	.LVL1136-1
	.value	0x1
	.byte	0x54
	.quad	.LVL1136-1
	.quad	.LFE1079
	.value	0x3
	.byte	0x91
	.sleb128 -272
	.quad	0
	.quad	0
.LLST245:
	.quad	.LVL979
	.quad	.LVL986
	.value	0x1
	.byte	0x51
	.quad	.LVL986
	.quad	.LFE1079
	.value	0x3
	.byte	0x91
	.sleb128 -144
	.quad	0
	.quad	0
.LLST246:
	.quad	.LVL979
	.quad	.LVL983
	.value	0x1
	.byte	0x66
	.quad	.LVL983
	.quad	.LFE1079
	.value	0x3
	.byte	0x91
	.sleb128 -176
	.quad	0
	.quad	0
.LLST247:
	.quad	.LVL979
	.quad	.LVL988
	.value	0x1
	.byte	0x52
	.quad	.LVL988
	.quad	.LVL1134
	.value	0x3
	.byte	0x91
	.sleb128 -304
	.quad	.LVL1134
	.quad	.LVL1136-1
	.value	0x1
	.byte	0x52
	.quad	.LVL1136-1
	.quad	.LFE1079
	.value	0x3
	.byte	0x91
	.sleb128 -304
	.quad	0
	.quad	0
.LLST248:
	.quad	.LVL979
	.quad	.LVL988
	.value	0x1
	.byte	0x58
	.quad	.LVL988
	.quad	.LVL1134
	.value	0x3
	.byte	0x91
	.sleb128 -160
	.quad	.LVL1134
	.quad	.LVL1136-1
	.value	0x1
	.byte	0x58
	.quad	.LVL1136-1
	.quad	.LFE1079
	.value	0x3
	.byte	0x91
	.sleb128 -160
	.quad	0
	.quad	0
.LLST249:
	.quad	.LVL979
	.quad	.LVL1134
	.value	0x1
	.byte	0x59
	.quad	.LVL1134
	.quad	.LFE1079
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	0
	.quad	0
.LLST250:
	.quad	.LVL979
	.quad	.LVL1129
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1131
	.quad	.LVL1132
	.value	0x1
	.byte	0x50
	.quad	.LVL1133
	.quad	.LVL1146
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1146
	.quad	.LVL1147
	.value	0x1
	.byte	0x50
	.quad	.LVL1147
	.quad	.LVL1148
	.value	0x3
	.byte	0x91
	.sleb128 -232
	.quad	.LVL1149
	.quad	.LVL1151
	.value	0x1
	.byte	0x50
	.quad	.LVL1161
	.quad	.LVL1163
	.value	0x1
	.byte	0x50
	.quad	.LVL1175
	.quad	.LVL1177
	.value	0x1
	.byte	0x50
	.quad	.LVL1209
	.quad	.LVL1210
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL1211
	.quad	.LVL1213
	.value	0x1
	.byte	0x50
	.quad	.LVL1213
	.quad	.LVL1214
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1218
	.quad	.LFE1079
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST251:
	.quad	.LVL1076
	.quad	.LVL1077
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1082
	.quad	.LVL1083
	.value	0x1
	.byte	0x53
	.quad	.LVL1084
	.quad	.LVL1085
	.value	0x1
	.byte	0x53
	.quad	.LVL1085
	.quad	.LVL1086
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL1086
	.quad	.LVL1087
	.value	0x1
	.byte	0x53
	.quad	.LVL1087
	.quad	.LVL1088
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL1089
	.quad	.LVL1090
	.value	0x1
	.byte	0x53
	.quad	.LVL1090
	.quad	.LVL1091
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL1092
	.quad	.LVL1093
	.value	0x1
	.byte	0x53
	.quad	.LVL1093
	.quad	.LVL1094
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL1095
	.quad	.LVL1096
	.value	0x1
	.byte	0x53
	.quad	.LVL1096
	.quad	.LVL1097
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL1098
	.quad	.LVL1099
	.value	0x1
	.byte	0x53
	.quad	.LVL1099
	.quad	.LVL1100
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL1101
	.quad	.LVL1102
	.value	0x1
	.byte	0x53
	.quad	.LVL1102
	.quad	.LVL1103
	.value	0x3
	.byte	0x73
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL1104
	.quad	.LVL1105
	.value	0x1
	.byte	0x53
	.quad	.LVL1105
	.quad	.LVL1109
	.value	0x3
	.byte	0x91
	.sleb128 -280
	.quad	.LVL1109
	.quad	.LVL1110
	.value	0x1
	.byte	0x5e
	.quad	.LVL1111
	.quad	.LVL1114
	.value	0x1
	.byte	0x5e
	.quad	.LVL1141
	.quad	.LVL1143
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1150
	.quad	.LVL1151
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1162
	.quad	.LVL1163
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1173
	.quad	.LVL1174
	.value	0x1
	.byte	0x5b
	.quad	.LVL1177
	.quad	.LVL1178
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1185
	.quad	.LVL1186
	.value	0x1
	.byte	0x54
	.quad	.LVL1186
	.quad	.LVL1187
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.quad	.LVL1188
	.quad	.LVL1189
	.value	0x1
	.byte	0x54
	.quad	.LVL1189
	.quad	.LVL1190
	.value	0x3
	.byte	0x74
	.sleb128 -16
	.byte	0x9f
	.quad	.LVL1191
	.quad	.LVL1192
	.value	0x1
	.byte	0x54
	.quad	.LVL1193
	.quad	.LVL1195
	.value	0x1
	.byte	0x54
	.quad	.LVL1218
	.quad	.LVL1220
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST252:
	.quad	.LVL1151
	.quad	.LVL1152
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1153
	.quad	.LVL1154
	.value	0x1
	.byte	0x55
	.quad	.LVL1154
	.quad	.LVL1155
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.quad	.LVL1156
	.quad	.LVL1157
	.value	0x1
	.byte	0x55
	.quad	.LVL1157
	.quad	.LVL1158
	.value	0x3
	.byte	0x75
	.sleb128 -16
	.byte	0x9f
	.quad	.LVL1159
	.quad	.LVL1160
	.value	0x1
	.byte	0x55
	.quad	.LVL1163
	.quad	.LVL1164
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1165
	.quad	.LVL1166
	.value	0x1
	.byte	0x58
	.quad	.LVL1166
	.quad	.LVL1167
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.quad	.LVL1168
	.quad	.LVL1169
	.value	0x1
	.byte	0x58
	.quad	.LVL1169
	.quad	.LVL1170
	.value	0x3
	.byte	0x78
	.sleb128 -16
	.byte	0x9f
	.quad	.LVL1171
	.quad	.LVL1172
	.value	0x1
	.byte	0x58
	.quad	.LVL1176
	.quad	.LVL1177
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST253:
	.quad	.LVL1146
	.quad	.LVL1148
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1203
	.quad	.LVL1204
	.value	0x3
	.byte	0x91
	.sleb128 -200
	.quad	.LVL1212
	.quad	.LVL1213
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST254:
	.quad	.LVL985
	.quad	.LVL988
	.value	0x1
	.byte	0x66
	.quad	.LVL988
	.quad	.LVL1134
	.value	0x3
	.byte	0x91
	.sleb128 -184
	.quad	.LVL1134
	.quad	.LVL1136-1
	.value	0x1
	.byte	0x66
	.quad	.LVL1136-1
	.quad	.LFE1079
	.value	0x3
	.byte	0x91
	.sleb128 -184
	.quad	0
	.quad	0
.LLST255:
	.quad	.LVL987
	.quad	.LVL988
	.value	0x1
	.byte	0x51
	.quad	.LVL988
	.quad	.LVL1134
	.value	0x3
	.byte	0x91
	.sleb128 -280
	.quad	.LVL1134
	.quad	.LVL1136-1
	.value	0x1
	.byte	0x51
	.quad	.LVL1136-1
	.quad	.LFE1079
	.value	0x3
	.byte	0x91
	.sleb128 -280
	.quad	0
	.quad	0
.LLST256:
	.quad	.LVL988
	.quad	.LVL1134
	.value	0x3
	.byte	0x91
	.sleb128 -312
	.quad	.LVL1137
	.quad	.LVL1138
	.value	0x1
	.byte	0x61
	.quad	.LVL1138
	.quad	.LFE1079
	.value	0x3
	.byte	0x91
	.sleb128 -312
	.quad	0
	.quad	0
.LLST257:
	.quad	.LVL1063
	.quad	.LVL1106
	.value	0x1
	.byte	0x5e
	.quad	.LVL1106
	.quad	.LVL1116
	.value	0x3
	.byte	0x91
	.sleb128 -232
	.quad	.LVL1116
	.quad	.LVL1134
	.value	0x1e
	.byte	0x91
	.sleb128 -224
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x91
	.sleb128 -240
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x1c
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0
	.long	0x3fe00000
	.byte	0x22
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.quad	.LVL1139
	.quad	.LVL1140
	.value	0x1e
	.byte	0x91
	.sleb128 -224
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x91
	.sleb128 -240
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x1c
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0
	.long	0x3fe00000
	.byte	0x22
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.quad	.LVL1141
	.quad	.LVL1143
	.value	0x1
	.byte	0x5e
	.quad	.LVL1144
	.quad	.LVL1145
	.value	0x1
	.byte	0x5e
	.quad	.LVL1145
	.quad	.LVL1218
	.value	0x1e
	.byte	0x91
	.sleb128 -224
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x91
	.sleb128 -240
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x1c
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0
	.long	0x3fe00000
	.byte	0x22
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.quad	.LVL1218
	.quad	.LVL1220
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST258:
	.quad	.LVL1075
	.quad	.LVL1134
	.value	0x17
	.byte	0x91
	.sleb128 -240
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0
	.long	0x3fe00000
	.byte	0x22
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.quad	.LVL1139
	.quad	.LVL1140
	.value	0x17
	.byte	0x91
	.sleb128 -240
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0
	.long	0x3fe00000
	.byte	0x22
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.quad	.LVL1141
	.quad	.LVL1143
	.value	0x17
	.byte	0x91
	.sleb128 -240
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0
	.long	0x3fe00000
	.byte	0x22
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.quad	.LVL1144
	.quad	.LVL1220
	.value	0x17
	.byte	0x91
	.sleb128 -240
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0
	.long	0x3fe00000
	.byte	0x22
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.quad	0
	.quad	0
.LLST259:
	.quad	.LVL1076
	.quad	.LVL1108
	.value	0x1
	.byte	0x5c
	.quad	.LVL1108
	.quad	.LVL1115
	.value	0x1
	.byte	0x5d
	.quad	.LVL1115
	.quad	.LVL1134
	.value	0x1e
	.byte	0x91
	.sleb128 -200
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x91
	.sleb128 -184
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0
	.long	0x3fe00000
	.byte	0x22
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.quad	.LVL1139
	.quad	.LVL1140
	.value	0x1e
	.byte	0x91
	.sleb128 -200
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x91
	.sleb128 -184
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0
	.long	0x3fe00000
	.byte	0x22
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.quad	.LVL1141
	.quad	.LVL1143
	.value	0x1
	.byte	0x5c
	.quad	.LVL1144
	.quad	.LVL1145
	.value	0x1
	.byte	0x5c
	.quad	.LVL1145
	.quad	.LVL1218
	.value	0x1e
	.byte	0x91
	.sleb128 -200
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x91
	.sleb128 -184
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0
	.long	0x3fe00000
	.byte	0x22
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.quad	.LVL1218
	.quad	.LVL1220
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST260:
	.quad	.LVL1076
	.quad	.LVL1106
	.value	0xe
	.byte	0x7e
	.sleb128 0
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0x91
	.sleb128 -184
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL1106
	.quad	.LVL1116
	.value	0x11
	.byte	0x91
	.sleb128 -232
	.byte	0x94
	.byte	0x4
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0x91
	.sleb128 -184
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL1116
	.quad	.LVL1134
	.value	0x29
	.byte	0x91
	.sleb128 -224
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x91
	.sleb128 -240
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x1c
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0
	.long	0x3fe00000
	.byte	0x22
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0x91
	.sleb128 -184
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL1139
	.quad	.LVL1140
	.value	0x29
	.byte	0x91
	.sleb128 -224
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x91
	.sleb128 -240
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x1c
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0
	.long	0x3fe00000
	.byte	0x22
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0x91
	.sleb128 -184
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL1141
	.quad	.LVL1143
	.value	0xe
	.byte	0x7e
	.sleb128 0
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0x91
	.sleb128 -184
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL1144
	.quad	.LVL1145
	.value	0xe
	.byte	0x7e
	.sleb128 0
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0x91
	.sleb128 -184
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL1145
	.quad	.LVL1218
	.value	0x29
	.byte	0x91
	.sleb128 -224
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x91
	.sleb128 -240
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x1c
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0
	.long	0x3fe00000
	.byte	0x22
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0x91
	.sleb128 -184
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL1218
	.quad	.LVL1220
	.value	0xe
	.byte	0x7e
	.sleb128 0
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0x91
	.sleb128 -184
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST261:
	.quad	.LVL1198
	.quad	.LVL1200
	.value	0x1
	.byte	0x62
	.quad	0
	.quad	0
.LLST262:
	.quad	.LVL1177
	.quad	.LVL1178
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.quad	.LVL1178
	.quad	.LVL1187
	.value	0x1
	.byte	0x61
	.quad	.LVL1188
	.quad	.LVL1190
	.value	0x1
	.byte	0x61
	.quad	.LVL1191
	.quad	.LVL1192
	.value	0x1
	.byte	0x61
	.quad	.LVL1193
	.quad	.LVL1194
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST263:
	.quad	.LVL1146
	.quad	.LVL1148
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.quad	.LVL1176
	.quad	.LVL1177
	.value	0x3
	.byte	0x91
	.sleb128 -224
	.quad	.LVL1177
	.quad	.LVL1202
	.value	0x1
	.byte	0x63
	.quad	.LVL1202
	.quad	.LVL1204
	.value	0x3
	.byte	0x91
	.sleb128 -224
	.quad	.LVL1210
	.quad	.LVL1211
	.value	0x1
	.byte	0x63
	.quad	.LVL1212
	.quad	.LVL1213
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.quad	0
	.quad	0
.LLST264:
	.quad	.LVL1146
	.quad	.LVL1148
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.quad	.LVL1176
	.quad	.LVL1177
	.value	0x3
	.byte	0x91
	.sleb128 -216
	.quad	.LVL1177
	.quad	.LVL1202
	.value	0x1
	.byte	0x64
	.quad	.LVL1202
	.quad	.LVL1204
	.value	0x3
	.byte	0x91
	.sleb128 -216
	.quad	.LVL1210
	.quad	.LVL1211
	.value	0x1
	.byte	0x64
	.quad	.LVL1212
	.quad	.LVL1213
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.quad	0
	.quad	0
.LLST265:
	.quad	.LVL1205
	.quad	.LVL1206
	.value	0x8
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x31
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL1216
	.quad	.LVL1217-1
	.value	0x8
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x31
	.byte	0x1b
	.byte	0x9f
	.quad	0
	.quad	0
.LLST266:
	.quad	.LVL1207
	.quad	.LVL1208
	.value	0x8
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x31
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL1208
	.quad	.LVL1210
	.value	0x1
	.byte	0x66
	.quad	0
	.quad	0
.LLST267:
	.quad	.LVL989
	.quad	.LVL1134
	.value	0x3
	.byte	0x91
	.sleb128 -216
	.quad	.LVL1138
	.quad	.LFE1079
	.value	0x3
	.byte	0x91
	.sleb128 -216
	.quad	0
	.quad	0
.LLST268:
	.quad	.LVL989
	.quad	.LVL1023
	.value	0x1
	.byte	0x5e
	.quad	.LVL1023
	.quad	.LVL1134
	.value	0xc
	.byte	0x91
	.sleb128 -268
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL1138
	.quad	.LVL1139
	.value	0x1
	.byte	0x5e
	.quad	.LVL1139
	.quad	.LVL1140
	.value	0xc
	.byte	0x91
	.sleb128 -268
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL1140
	.quad	.LVL1141
	.value	0x1
	.byte	0x5e
	.quad	.LVL1141
	.quad	.LFE1079
	.value	0xc
	.byte	0x91
	.sleb128 -268
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	0
	.quad	0
.LLST269:
	.quad	.LVL989
	.quad	.LVL1134
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1138
	.quad	.LFE1079
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST271:
	.quad	.LVL998
	.quad	.LVL1001
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL1002
	.quad	.LVL1003
	.value	0x1
	.byte	0x51
	.quad	.LVL1003
	.quad	.LVL1004
	.value	0x1
	.byte	0x55
	.quad	.LVL1004
	.quad	.LVL1005
	.value	0x1
	.byte	0x51
	.quad	.LVL1005
	.quad	.LVL1006
	.value	0x1
	.byte	0x55
	.quad	.LVL1006
	.quad	.LVL1007
	.value	0x1
	.byte	0x51
	.quad	.LVL1007
	.quad	.LVL1008
	.value	0x1
	.byte	0x55
	.quad	.LVL1008
	.quad	.LVL1009
	.value	0x1
	.byte	0x51
	.quad	.LVL1009
	.quad	.LVL1010
	.value	0x1
	.byte	0x55
	.quad	.LVL1010
	.quad	.LVL1011
	.value	0x1
	.byte	0x51
	.quad	.LVL1011
	.quad	.LVL1012
	.value	0x1
	.byte	0x55
	.quad	.LVL1012
	.quad	.LVL1013
	.value	0x1
	.byte	0x51
	.quad	.LVL1013
	.quad	.LVL1014
	.value	0x1
	.byte	0x55
	.quad	.LVL1014
	.quad	.LVL1015
	.value	0x1
	.byte	0x51
	.quad	.LVL1015
	.quad	.LVL1016
	.value	0x1
	.byte	0x55
	.quad	.LVL1016
	.quad	.LVL1017
	.value	0x1
	.byte	0x51
	.quad	.LVL1018
	.quad	.LVL1019
	.value	0x1
	.byte	0x51
	.quad	.LVL1140
	.quad	.LVL1141
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST272:
	.quad	.LVL990
	.quad	.LVL995
	.value	0x1
	.byte	0x5c
	.quad	.LVL995
	.quad	.LVL1023
	.value	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.quad	.LVL1023
	.quad	.LVL1134
	.value	0xe
	.byte	0x91
	.sleb128 -268
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL1138
	.quad	.LVL1139
	.value	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.quad	.LVL1139
	.quad	.LVL1140
	.value	0xe
	.byte	0x91
	.sleb128 -268
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL1140
	.quad	.LVL1141
	.value	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.quad	.LVL1141
	.quad	.LFE1079
	.value	0xe
	.byte	0x91
	.sleb128 -268
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST273:
	.quad	.LVL991
	.quad	.LVL999
	.value	0x1
	.byte	0x53
	.quad	.LVL999
	.quad	.LVL1000
	.value	0x1
	.byte	0x5b
	.quad	.LVL1000
	.quad	.LVL1134
	.value	0x7
	.byte	0x91
	.sleb128 -216
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL1138
	.quad	.LVL1140
	.value	0x7
	.byte	0x91
	.sleb128 -216
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL1140
	.quad	.LVL1141
	.value	0x1
	.byte	0x53
	.quad	.LVL1141
	.quad	.LFE1079
	.value	0x7
	.byte	0x91
	.sleb128 -216
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST274:
	.quad	.LVL993
	.quad	.LVL994
	.value	0x1
	.byte	0x50
	.quad	.LVL994
	.quad	.LVL996
	.value	0x3
	.byte	0x70
	.sleb128 8
	.byte	0x9f
	.quad	.LVL996
	.quad	.LVL997-1
	.value	0x1
	.byte	0x52
	.quad	.LVL997-1
	.quad	.LVL1134
	.value	0x3
	.byte	0x91
	.sleb128 -256
	.quad	.LVL1138
	.quad	.LVL1221
	.value	0x3
	.byte	0x91
	.sleb128 -256
	.quad	.LVL1222
	.quad	.LFE1079
	.value	0x3
	.byte	0x91
	.sleb128 -256
	.quad	0
	.quad	0
.LLST275:
	.quad	.LVL1019
	.quad	.LVL1134
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1139
	.quad	.LVL1140
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1141
	.quad	.LVL1220
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1222
	.quad	.LFE1079
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST276:
	.quad	.LVL1021
	.quad	.LVL1022
	.value	0x1
	.byte	0x50
	.quad	.LVL1022
	.quad	.LVL1134
	.value	0x3
	.byte	0x91
	.sleb128 -296
	.quad	.LVL1139
	.quad	.LVL1140
	.value	0x3
	.byte	0x91
	.sleb128 -296
	.quad	.LVL1141
	.quad	.LVL1220
	.value	0x3
	.byte	0x91
	.sleb128 -296
	.quad	.LVL1222
	.quad	.LFE1079
	.value	0x3
	.byte	0x91
	.sleb128 -296
	.quad	0
	.quad	0
.LLST277:
	.quad	.LVL1023
	.quad	.LVL1134
	.value	0x3
	.byte	0x91
	.sleb128 -192
	.quad	.LVL1139
	.quad	.LVL1140
	.value	0x3
	.byte	0x91
	.sleb128 -192
	.quad	.LVL1141
	.quad	.LVL1220
	.value	0x3
	.byte	0x91
	.sleb128 -192
	.quad	0
	.quad	0
.LLST278:
	.quad	.LVL1023
	.quad	.LVL1063
	.value	0x1
	.byte	0x5e
	.quad	.LVL1063
	.quad	.LVL1134
	.value	0xe
	.byte	0x91
	.sleb128 -144
	.byte	0x94
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL1139
	.quad	.LVL1140
	.value	0xe
	.byte	0x91
	.sleb128 -144
	.byte	0x94
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL1141
	.quad	.LVL1143
	.value	0xe
	.byte	0x91
	.sleb128 -144
	.byte	0x94
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL1143
	.quad	.LVL1144
	.value	0x1
	.byte	0x5e
	.quad	.LVL1144
	.quad	.LVL1220
	.value	0xe
	.byte	0x91
	.sleb128 -144
	.byte	0x94
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	0
	.quad	0
.LLST279:
	.quad	.LVL1023
	.quad	.LVL1134
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1139
	.quad	.LVL1140
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1141
	.quad	.LVL1220
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST281:
	.quad	.LVL1031
	.quad	.LVL1034
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL1037
	.quad	.LVL1038
	.value	0x1
	.byte	0x51
	.quad	.LVL1038
	.quad	.LVL1039
	.value	0x1
	.byte	0x58
	.quad	.LVL1039
	.quad	.LVL1040
	.value	0x1
	.byte	0x51
	.quad	.LVL1040
	.quad	.LVL1041
	.value	0x1
	.byte	0x58
	.quad	.LVL1041
	.quad	.LVL1042
	.value	0x1
	.byte	0x51
	.quad	.LVL1042
	.quad	.LVL1043
	.value	0x1
	.byte	0x58
	.quad	.LVL1043
	.quad	.LVL1044
	.value	0x1
	.byte	0x51
	.quad	.LVL1044
	.quad	.LVL1045
	.value	0x1
	.byte	0x58
	.quad	.LVL1045
	.quad	.LVL1046
	.value	0x1
	.byte	0x51
	.quad	.LVL1046
	.quad	.LVL1047
	.value	0x1
	.byte	0x58
	.quad	.LVL1047
	.quad	.LVL1048
	.value	0x1
	.byte	0x51
	.quad	.LVL1048
	.quad	.LVL1049
	.value	0x1
	.byte	0x58
	.quad	.LVL1049
	.quad	.LVL1050
	.value	0x1
	.byte	0x51
	.quad	.LVL1050
	.quad	.LVL1051
	.value	0x1
	.byte	0x58
	.quad	.LVL1051
	.quad	.LVL1052
	.value	0x1
	.byte	0x51
	.quad	.LVL1053
	.quad	.LVL1054
	.value	0x1
	.byte	0x51
	.quad	.LVL1143
	.quad	.LVL1144
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST282:
	.quad	.LVL1024
	.quad	.LVL1028
	.value	0x1
	.byte	0x5c
	.quad	.LVL1028
	.quad	.LVL1063
	.value	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.quad	.LVL1063
	.quad	.LVL1134
	.value	0x10
	.byte	0x91
	.sleb128 -144
	.byte	0x94
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL1139
	.quad	.LVL1140
	.value	0x10
	.byte	0x91
	.sleb128 -144
	.byte	0x94
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL1141
	.quad	.LVL1143
	.value	0x10
	.byte	0x91
	.sleb128 -144
	.byte	0x94
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL1143
	.quad	.LVL1144
	.value	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.quad	.LVL1144
	.quad	.LVL1220
	.value	0x10
	.byte	0x91
	.sleb128 -144
	.byte	0x94
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST283:
	.quad	.LVL1026
	.quad	.LVL1032
	.value	0x1
	.byte	0x53
	.quad	.LVL1032
	.quad	.LVL1033
	.value	0x1
	.byte	0x5b
	.quad	.LVL1033
	.quad	.LVL1134
	.value	0x7
	.byte	0x91
	.sleb128 -192
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL1139
	.quad	.LVL1140
	.value	0x7
	.byte	0x91
	.sleb128 -192
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL1141
	.quad	.LVL1143
	.value	0x7
	.byte	0x91
	.sleb128 -192
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL1143
	.quad	.LVL1144
	.value	0x1
	.byte	0x53
	.quad	.LVL1144
	.quad	.LVL1220
	.value	0x7
	.byte	0x91
	.sleb128 -192
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST284:
	.quad	.LVL1026
	.quad	.LVL1027
	.value	0x1
	.byte	0x50
	.quad	.LVL1027
	.quad	.LVL1029
	.value	0x3
	.byte	0x70
	.sleb128 8
	.byte	0x9f
	.quad	.LVL1029
	.quad	.LVL1035
	.value	0x1
	.byte	0x5d
	.quad	.LVL1035
	.quad	.LVL1036
	.value	0x3
	.byte	0x91
	.sleb128 -288
	.quad	.LVL1143
	.quad	.LVL1144
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST285:
	.quad	.LVL1054
	.quad	.LVL1134
	.value	0x3
	.byte	0x91
	.sleb128 -192
	.quad	.LVL1139
	.quad	.LVL1140
	.value	0x3
	.byte	0x91
	.sleb128 -192
	.quad	.LVL1141
	.quad	.LVL1143
	.value	0x3
	.byte	0x91
	.sleb128 -192
	.quad	.LVL1144
	.quad	.LVL1220
	.value	0x3
	.byte	0x91
	.sleb128 -192
	.quad	0
	.quad	0
.LLST286:
	.quad	.LVL1054
	.quad	.LVL1134
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1139
	.quad	.LVL1140
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1141
	.quad	.LVL1143
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1144
	.quad	.LVL1220
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST287:
	.quad	.LVL1055
	.quad	.LVL1056
	.value	0x1
	.byte	0x50
	.quad	.LVL1056
	.quad	.LVL1058-1
	.value	0x3
	.byte	0x70
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL1058-1
	.quad	.LVL1134
	.value	0x7
	.byte	0x91
	.sleb128 -192
	.byte	0x6
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL1139
	.quad	.LVL1140
	.value	0x7
	.byte	0x91
	.sleb128 -192
	.byte	0x6
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL1141
	.quad	.LVL1143
	.value	0x7
	.byte	0x91
	.sleb128 -192
	.byte	0x6
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL1144
	.quad	.LVL1220
	.value	0x7
	.byte	0x91
	.sleb128 -192
	.byte	0x6
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST288:
	.quad	.LVL1057
	.quad	.LVL1078
	.value	0x1
	.byte	0x53
	.quad	.LVL1078
	.quad	.LVL1134
	.value	0x3
	.byte	0x91
	.sleb128 -216
	.quad	.LVL1139
	.quad	.LVL1140
	.value	0x3
	.byte	0x91
	.sleb128 -216
	.quad	.LVL1141
	.quad	.LVL1142
	.value	0x1
	.byte	0x53
	.quad	.LVL1142
	.quad	.LVL1143
	.value	0x3
	.byte	0x91
	.sleb128 -216
	.quad	.LVL1144
	.quad	.LVL1218
	.value	0x3
	.byte	0x91
	.sleb128 -216
	.quad	.LVL1218
	.quad	.LVL1220
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST289:
	.quad	.LVL1057
	.quad	.LVL1134
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1139
	.quad	.LVL1140
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1141
	.quad	.LVL1143
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1144
	.quad	.LVL1220
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST290:
	.quad	.LVL1059
	.quad	.LVL1061-1
	.value	0x1
	.byte	0x50
	.quad	.LVL1061-1
	.quad	.LVL1134
	.value	0x3
	.byte	0x91
	.sleb128 -264
	.quad	.LVL1139
	.quad	.LVL1140
	.value	0x3
	.byte	0x91
	.sleb128 -264
	.quad	.LVL1141
	.quad	.LVL1143
	.value	0x3
	.byte	0x91
	.sleb128 -264
	.quad	.LVL1144
	.quad	.LVL1220
	.value	0x3
	.byte	0x91
	.sleb128 -264
	.quad	0
	.quad	0
.LLST291:
	.quad	.LVL1060
	.quad	.LVL1134
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1139
	.quad	.LVL1140
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1141
	.quad	.LVL1143
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1144
	.quad	.LVL1220
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST292:
	.quad	.LVL1062
	.quad	.LVL1064
	.value	0x1
	.byte	0x50
	.quad	.LVL1064
	.quad	.LVL1134
	.value	0x3
	.byte	0x91
	.sleb128 -248
	.quad	.LVL1139
	.quad	.LVL1140
	.value	0x3
	.byte	0x91
	.sleb128 -248
	.quad	.LVL1141
	.quad	.LVL1143
	.value	0x3
	.byte	0x91
	.sleb128 -248
	.quad	.LVL1144
	.quad	.LVL1220
	.value	0x3
	.byte	0x91
	.sleb128 -248
	.quad	0
	.quad	0
.LLST293:
	.quad	.LVL1063
	.quad	.LVL1065
	.value	0xe
	.byte	0x7e
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1e
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL1065
	.quad	.LVL1066-1
	.value	0x1
	.byte	0x50
	.quad	.LVL1066-1
	.quad	.LVL1106
	.value	0xe
	.byte	0x7e
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1e
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL1106
	.quad	.LVL1107
	.value	0x11
	.byte	0x91
	.sleb128 -232
	.byte	0x94
	.byte	0x4
	.byte	0x7f
	.sleb128 0
	.byte	0x1e
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL1107
	.quad	.LVL1116
	.value	0x13
	.byte	0x91
	.sleb128 -232
	.byte	0x94
	.byte	0x4
	.byte	0x91
	.sleb128 8
	.byte	0x94
	.byte	0x4
	.byte	0x1e
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL1116
	.quad	.LVL1134
	.value	0x2b
	.byte	0x91
	.sleb128 -224
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x91
	.sleb128 -240
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x1c
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0
	.long	0x3fe00000
	.byte	0x22
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0
	.byte	0x91
	.sleb128 8
	.byte	0x94
	.byte	0x4
	.byte	0x1e
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL1139
	.quad	.LVL1140
	.value	0x2b
	.byte	0x91
	.sleb128 -224
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x91
	.sleb128 -240
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x1c
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0
	.long	0x3fe00000
	.byte	0x22
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0
	.byte	0x91
	.sleb128 8
	.byte	0x94
	.byte	0x4
	.byte	0x1e
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL1141
	.quad	.LVL1143
	.value	0xe
	.byte	0x7e
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1e
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL1144
	.quad	.LVL1145
	.value	0xe
	.byte	0x7e
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1e
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL1145
	.quad	.LVL1218
	.value	0x2b
	.byte	0x91
	.sleb128 -224
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x91
	.sleb128 -240
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x1c
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0
	.long	0x3fe00000
	.byte	0x22
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0
	.byte	0x91
	.sleb128 8
	.byte	0x94
	.byte	0x4
	.byte	0x1e
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL1218
	.quad	.LVL1220
	.value	0xe
	.byte	0x7e
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1e
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	0
	.quad	0
.LLST294:
	.quad	.LVL1063
	.quad	.LVL1134
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1139
	.quad	.LVL1140
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1141
	.quad	.LVL1143
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1144
	.quad	.LVL1220
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST295:
	.quad	.LVL1067
	.quad	.LVL1069-1
	.value	0x1
	.byte	0x50
	.quad	.LVL1069-1
	.quad	.LVL1134
	.value	0x3
	.byte	0x91
	.sleb128 -224
	.quad	.LVL1139
	.quad	.LVL1140
	.value	0x3
	.byte	0x91
	.sleb128 -224
	.quad	.LVL1141
	.quad	.LVL1143
	.value	0x3
	.byte	0x91
	.sleb128 -224
	.quad	.LVL1144
	.quad	.LVL1220
	.value	0x3
	.byte	0x91
	.sleb128 -224
	.quad	0
	.quad	0
.LLST296:
	.quad	.LVL1068
	.quad	.LVL1106
	.value	0xe
	.byte	0x7e
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1e
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL1106
	.quad	.LVL1107
	.value	0x11
	.byte	0x91
	.sleb128 -232
	.byte	0x94
	.byte	0x4
	.byte	0x7f
	.sleb128 0
	.byte	0x1e
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL1107
	.quad	.LVL1116
	.value	0x13
	.byte	0x91
	.sleb128 -232
	.byte	0x94
	.byte	0x4
	.byte	0x91
	.sleb128 8
	.byte	0x94
	.byte	0x4
	.byte	0x1e
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL1116
	.quad	.LVL1134
	.value	0x2b
	.byte	0x91
	.sleb128 -224
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x91
	.sleb128 -240
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x1c
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0
	.long	0x3fe00000
	.byte	0x22
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0
	.byte	0x91
	.sleb128 8
	.byte	0x94
	.byte	0x4
	.byte	0x1e
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL1139
	.quad	.LVL1140
	.value	0x2b
	.byte	0x91
	.sleb128 -224
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x91
	.sleb128 -240
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x1c
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0
	.long	0x3fe00000
	.byte	0x22
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0
	.byte	0x91
	.sleb128 8
	.byte	0x94
	.byte	0x4
	.byte	0x1e
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL1141
	.quad	.LVL1143
	.value	0xe
	.byte	0x7e
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1e
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL1144
	.quad	.LVL1145
	.value	0xe
	.byte	0x7e
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1e
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL1145
	.quad	.LVL1218
	.value	0x2b
	.byte	0x91
	.sleb128 -224
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x91
	.sleb128 -240
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x1c
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0
	.long	0x3fe00000
	.byte	0x22
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0
	.byte	0x91
	.sleb128 8
	.byte	0x94
	.byte	0x4
	.byte	0x1e
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL1218
	.quad	.LVL1220
	.value	0xe
	.byte	0x7e
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1e
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	0
	.quad	0
.LLST297:
	.quad	.LVL1068
	.quad	.LVL1134
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1139
	.quad	.LVL1140
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1141
	.quad	.LVL1143
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1144
	.quad	.LVL1220
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST298:
	.quad	.LVL1070
	.quad	.LVL1072
	.value	0x1
	.byte	0x50
	.quad	.LVL1072
	.quad	.LVL1134
	.value	0x3
	.byte	0x91
	.sleb128 -216
	.quad	.LVL1139
	.quad	.LVL1140
	.value	0x3
	.byte	0x91
	.sleb128 -216
	.quad	.LVL1141
	.quad	.LVL1143
	.value	0x3
	.byte	0x91
	.sleb128 -216
	.quad	.LVL1144
	.quad	.LVL1220
	.value	0x3
	.byte	0x91
	.sleb128 -216
	.quad	0
	.quad	0
.LLST299:
	.quad	.LVL1071
	.quad	.LVL1073
	.value	0x9
	.byte	0x7e
	.sleb128 -1
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL1073
	.quad	.LVL1074-1
	.value	0x1
	.byte	0x50
	.quad	.LVL1074-1
	.quad	.LVL1106
	.value	0x9
	.byte	0x7e
	.sleb128 -1
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL1106
	.quad	.LVL1116
	.value	0xe
	.byte	0x91
	.sleb128 -232
	.byte	0x94
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL1116
	.quad	.LVL1134
	.value	0x26
	.byte	0x91
	.sleb128 -224
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x91
	.sleb128 -240
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x1c
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0
	.long	0x3fe00000
	.byte	0x22
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL1139
	.quad	.LVL1140
	.value	0x26
	.byte	0x91
	.sleb128 -224
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x91
	.sleb128 -240
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x1c
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0
	.long	0x3fe00000
	.byte	0x22
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL1141
	.quad	.LVL1143
	.value	0x9
	.byte	0x7e
	.sleb128 -1
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL1144
	.quad	.LVL1145
	.value	0x9
	.byte	0x7e
	.sleb128 -1
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL1145
	.quad	.LVL1218
	.value	0x26
	.byte	0x91
	.sleb128 -224
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x91
	.sleb128 -240
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x1c
	.byte	0xf4
	.uleb128 0x31
	.byte	0x8
	.long	0
	.long	0x3fe00000
	.byte	0x22
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL1218
	.quad	.LVL1220
	.value	0x9
	.byte	0x7e
	.sleb128 -1
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	0
	.quad	0
.LLST300:
	.quad	.LVL1071
	.quad	.LVL1134
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1139
	.quad	.LVL1140
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1141
	.quad	.LVL1143
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1144
	.quad	.LVL1220
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST301:
	.quad	.LVL1074
	.quad	.LVL1079
	.value	0x1
	.byte	0x50
	.quad	.LVL1079
	.quad	.LVL1080
	.value	0x4
	.byte	0x70
	.sleb128 -304
	.byte	0x9f
	.quad	.LVL1080
	.quad	.LVL1081
	.value	0x4
	.byte	0x71
	.sleb128 -240
	.byte	0x9f
	.quad	.LVL1081
	.quad	.LVL1134
	.value	0x7
	.byte	0x91
	.sleb128 -288
	.byte	0x6
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL1139
	.quad	.LVL1140
	.value	0x7
	.byte	0x91
	.sleb128 -288
	.byte	0x6
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL1141
	.quad	.LVL1143
	.value	0x1
	.byte	0x50
	.quad	.LVL1144
	.quad	.LVL1218
	.value	0x7
	.byte	0x91
	.sleb128 -288
	.byte	0x6
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL1218
	.quad	.LVL1219
	.value	0x1
	.byte	0x50
	.quad	.LVL1219
	.quad	.LVL1220
	.value	0x7
	.byte	0x91
	.sleb128 -288
	.byte	0x6
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST302:
	.quad	.LVL1116
	.quad	.LVL1134
	.value	0x3
	.byte	0x91
	.sleb128 -304
	.quad	.LVL1139
	.quad	.LVL1140
	.value	0x3
	.byte	0x91
	.sleb128 -304
	.quad	.LVL1145
	.quad	.LVL1218
	.value	0x3
	.byte	0x91
	.sleb128 -304
	.quad	0
	.quad	0
.LLST303:
	.quad	.LVL1116
	.quad	.LVL1134
	.value	0x3
	.byte	0x91
	.sleb128 -272
	.quad	.LVL1139
	.quad	.LVL1140
	.value	0x3
	.byte	0x91
	.sleb128 -272
	.quad	.LVL1145
	.quad	.LVL1218
	.value	0x3
	.byte	0x91
	.sleb128 -272
	.quad	0
	.quad	0
.LLST304:
	.quad	.LVL1116
	.quad	.LVL1134
	.value	0x3
	.byte	0x91
	.sleb128 -168
	.quad	.LVL1139
	.quad	.LVL1140
	.value	0x3
	.byte	0x91
	.sleb128 -168
	.quad	.LVL1145
	.quad	.LVL1218
	.value	0x3
	.byte	0x91
	.sleb128 -168
	.quad	0
	.quad	0
.LLST305:
	.quad	.LVL1117
	.quad	.LVL1118
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL1119
	.quad	.LVL1120
	.value	0x3
	.byte	0x72
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL1121
	.quad	.LVL1122
	.value	0x1
	.byte	0x56
	.quad	.LVL1123
	.quad	.LVL1124
	.value	0x1
	.byte	0x55
	.quad	.LVL1125
	.quad	.LVL1126
	.value	0x1
	.byte	0x5b
	.quad	.LVL1126
	.quad	.LVL1127
	.value	0x3
	.byte	0x7b
	.sleb128 -4
	.byte	0x9f
	.quad	.LVL1128
	.quad	.LVL1129
	.value	0x1
	.byte	0x5b
	.quad	.LVL1145
	.quad	.LVL1146
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL1213
	.quad	.LVL1214
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST306:
	.quad	.LVL1116
	.quad	.LVL1129
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1129
	.quad	.LVL1133
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL1133
	.quad	.LVL1134
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1139
	.quad	.LVL1140
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1145
	.quad	.LVL1146
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1146
	.quad	.LVL1213
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL1213
	.quad	.LVL1214
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1214
	.quad	.LVL1218
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST307:
	.quad	.LVL1196
	.quad	.LVL1197
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.quad	0
	.quad	0
.LLST308:
	.quad	.LVL1196
	.quad	.LVL1197
	.value	0x1
	.byte	0x62
	.quad	0
	.quad	0
.LLST309:
	.quad	.LFB1074
	.quad	.LCFI196
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI196
	.quad	.LCFI197
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI197
	.quad	.LCFI198
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI198
	.quad	.LCFI199
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI199
	.quad	.LCFI200
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI200
	.quad	.LCFI201
	.value	0x3
	.byte	0x77
	.sleb128 96
	.quad	.LCFI201
	.quad	.LCFI202
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI202
	.quad	.LCFI203
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI203
	.quad	.LCFI204
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI204
	.quad	.LCFI205
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI205
	.quad	.LCFI206
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI206
	.quad	.LFE1074
	.value	0x3
	.byte	0x77
	.sleb128 96
	.quad	0
	.quad	0
.LLST310:
	.quad	.LVL1224
	.quad	.LVL1226
	.value	0x1
	.byte	0x55
	.quad	.LVL1226
	.quad	.LFE1074
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST311:
	.quad	.LVL1225
	.quad	.LVL1234
	.value	0x1
	.byte	0x52
	.quad	.LVL1237
	.quad	.LVL1241
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST312:
	.quad	.LVL1228
	.quad	.LVL1231
	.value	0x1
	.byte	0x5d
	.quad	.LVL1231
	.quad	.LVL1232
	.value	0x4
	.byte	0x7d
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.quad	.LVL1232
	.quad	.LVL1236
	.value	0x1
	.byte	0x5c
	.quad	.LVL1239
	.quad	.LVL1241
	.value	0x1
	.byte	0x5d
	.quad	.LVL1241
	.quad	.LFE1074
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST313:
	.quad	.LVL1229
	.quad	.LVL1233
	.value	0x1
	.byte	0x53
	.quad	.LVL1240
	.quad	.LVL1241
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST314:
	.quad	.LVL1227
	.quad	.LVL1234
	.value	0x1
	.byte	0x50
	.quad	.LVL1237
	.quad	.LVL1241
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST315:
	.quad	.LVL1237
	.quad	.LVL1241
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST316:
	.quad	.LVL1238
	.quad	.LVL1241
	.value	0x1
	.byte	0x58
	.quad	0
	.quad	0
.LLST317:
	.quad	.LVL1230
	.quad	.LVL1231
	.value	0x1
	.byte	0x5d
	.quad	.LVL1231
	.quad	.LVL1232
	.value	0x4
	.byte	0x7d
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.quad	.LVL1232
	.quad	.LVL1234
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST318:
	.quad	.LVL1235
	.quad	.LVL1236
	.value	0x1
	.byte	0x50
	.quad	.LVL1241
	.quad	.LVL1242-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST319:
	.quad	.LFB1083
	.quad	.LCFI207
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI207
	.quad	.LCFI208
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI208
	.quad	.LCFI209
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI209
	.quad	.LCFI210
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI210
	.quad	.LCFI211
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI211
	.quad	.LCFI212
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI212
	.quad	.LCFI213
	.value	0x2
	.byte	0x77
	.sleb128 56
	.quad	.LCFI213
	.quad	.LCFI214
	.value	0x3
	.byte	0x77
	.sleb128 112
	.quad	.LCFI214
	.quad	.LCFI215
	.value	0x2
	.byte	0x77
	.sleb128 56
	.quad	.LCFI215
	.quad	.LCFI216
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI216
	.quad	.LCFI217
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI217
	.quad	.LCFI218
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI218
	.quad	.LCFI219
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI219
	.quad	.LCFI220
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI220
	.quad	.LCFI221
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI221
	.quad	.LCFI222
	.value	0x3
	.byte	0x77
	.sleb128 112
	.quad	.LCFI222
	.quad	.LCFI223
	.value	0x2
	.byte	0x77
	.sleb128 56
	.quad	.LCFI223
	.quad	.LCFI224
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI224
	.quad	.LCFI225
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI225
	.quad	.LCFI226
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI226
	.quad	.LCFI227
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI227
	.quad	.LCFI228
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI228
	.quad	.LCFI229
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI229
	.quad	.LFE1083
	.value	0x3
	.byte	0x77
	.sleb128 112
	.quad	0
	.quad	0
.LLST320:
	.quad	.LVL1243
	.quad	.LVL1244
	.value	0x1
	.byte	0x55
	.quad	.LVL1244
	.quad	.LFE1083
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST321:
	.quad	.LVL1243
	.quad	.LVL1244
	.value	0x1
	.byte	0x54
	.quad	.LVL1244
	.quad	.LFE1083
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.quad	0
	.quad	0
.LLST322:
	.quad	.LVL1243
	.quad	.LVL1244
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL1271
	.quad	.LVL1272
	.value	0x8
	.byte	0x91
	.sleb128 -80
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL1272
	.quad	.LVL1273
	.value	0x1
	.byte	0x50
	.quad	.LVL1273
	.quad	.LVL1275
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL1275
	.quad	.LVL1276
	.value	0x1
	.byte	0x5b
	.quad	.LVL1289
	.quad	.LVL1290
	.value	0x1
	.byte	0x5b
	.quad	0
	.quad	0
.LLST323:
	.quad	.LVL1244
	.quad	.LVL1245
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	.LVL1245
	.quad	.LVL1274
	.value	0x1
	.byte	0x5d
	.quad	.LVL1275
	.quad	.LVL1276
	.value	0x1
	.byte	0x5b
	.quad	.LVL1277
	.quad	.LVL1278
	.value	0x1
	.byte	0x5b
	.quad	.LVL1278
	.quad	.LVL1279
	.value	0x3
	.byte	0x7b
	.sleb128 1
	.byte	0x9f
	.quad	.LVL1279
	.quad	.LVL1280
	.value	0x3
	.byte	0x7b
	.sleb128 2
	.byte	0x9f
	.quad	.LVL1280
	.quad	.LVL1281
	.value	0x3
	.byte	0x7b
	.sleb128 3
	.byte	0x9f
	.quad	.LVL1281
	.quad	.LVL1282
	.value	0x3
	.byte	0x7b
	.sleb128 4
	.byte	0x9f
	.quad	.LVL1282
	.quad	.LVL1283
	.value	0x3
	.byte	0x7b
	.sleb128 5
	.byte	0x9f
	.quad	.LVL1283
	.quad	.LVL1284
	.value	0x3
	.byte	0x7b
	.sleb128 6
	.byte	0x9f
	.quad	.LVL1284
	.quad	.LVL1285
	.value	0x1
	.byte	0x5b
	.quad	.LVL1286
	.quad	.LVL1287
	.value	0x1
	.byte	0x51
	.quad	.LVL1288
	.quad	.LVL1289
	.value	0x1
	.byte	0x51
	.quad	.LVL1290
	.quad	.LVL1293
	.value	0x1
	.byte	0x5d
	.quad	.LVL1295
	.quad	.LVL1296
	.value	0x1
	.byte	0x51
	.quad	.LVL1296
	.quad	.LVL1297
	.value	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL1297
	.quad	.LVL1298
	.value	0x1
	.byte	0x51
	.quad	.LVL1298
	.quad	.LVL1299
	.value	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL1300
	.quad	.LVL1301
	.value	0x1
	.byte	0x51
	.quad	.LVL1301
	.quad	.LVL1302
	.value	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL1303
	.quad	.LVL1304
	.value	0x1
	.byte	0x51
	.quad	.LVL1304
	.quad	.LVL1305
	.value	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL1306
	.quad	.LVL1307
	.value	0x1
	.byte	0x51
	.quad	.LVL1307
	.quad	.LVL1308
	.value	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL1309
	.quad	.LVL1310
	.value	0x1
	.byte	0x51
	.quad	.LVL1310
	.quad	.LVL1311
	.value	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL1312
	.quad	.LVL1313
	.value	0x1
	.byte	0x51
	.quad	.LVL1313
	.quad	.LVL1314
	.value	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL1315
	.quad	.LVL1316
	.value	0x1
	.byte	0x51
	.quad	.LVL1316
	.quad	.LVL1317
	.value	0x3
	.byte	0x71
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL1318
	.quad	.LVL1319
	.value	0x1
	.byte	0x51
	.quad	.LVL1320
	.quad	.LVL1321
	.value	0x1
	.byte	0x5b
	.quad	.LVL1321
	.quad	.LFE1083
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST324:
	.quad	.LVL1247
	.quad	.LVL1248
	.value	0x3
	.byte	0x7e
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL1248
	.quad	.LVL1249
	.value	0x3
	.byte	0x7e
	.sleb128 -2
	.byte	0x9f
	.quad	.LVL1249
	.quad	.LVL1250
	.value	0x3
	.byte	0x7e
	.sleb128 -3
	.byte	0x9f
	.quad	.LVL1250
	.quad	.LVL1251
	.value	0x3
	.byte	0x7e
	.sleb128 -4
	.byte	0x9f
	.quad	.LVL1251
	.quad	.LVL1252
	.value	0x3
	.byte	0x7e
	.sleb128 -5
	.byte	0x9f
	.quad	.LVL1252
	.quad	.LVL1253
	.value	0x3
	.byte	0x7e
	.sleb128 -6
	.byte	0x9f
	.quad	.LVL1253
	.quad	.LVL1254
	.value	0x3
	.byte	0x7e
	.sleb128 -7
	.byte	0x9f
	.quad	.LVL1254
	.quad	.LVL1255
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST325:
	.quad	.LVL1246
	.quad	.LVL1255
	.value	0x1
	.byte	0x62
	.quad	.LVL1256
	.quad	.LVL1257
	.value	0x1
	.byte	0x62
	.quad	.LVL1258
	.quad	.LVL1267
	.value	0x1
	.byte	0x62
	.quad	.LVL1268
	.quad	.LVL1269
	.value	0x1
	.byte	0x62
	.quad	.LVL1290
	.quad	.LVL1291
	.value	0x1
	.byte	0x62
	.quad	.LVL1292
	.quad	.LVL1294
	.value	0x1
	.byte	0x62
	.quad	.LVL1321
	.quad	.LVL1322-1
	.value	0x1
	.byte	0x62
	.quad	0
	.quad	0
.LLST326:
	.quad	.LFB1084
	.quad	.LCFI230
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI230
	.quad	.LCFI231
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI231
	.quad	.LCFI232
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI232
	.quad	.LCFI233
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI233
	.quad	.LCFI234
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI234
	.quad	.LCFI235
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI235
	.quad	.LCFI236
	.value	0x2
	.byte	0x77
	.sleb128 56
	.quad	.LCFI236
	.quad	.LCFI237
	.value	0x3
	.byte	0x77
	.sleb128 256
	.quad	.LCFI237
	.quad	.LCFI238
	.value	0x2
	.byte	0x77
	.sleb128 56
	.quad	.LCFI238
	.quad	.LCFI239
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI239
	.quad	.LCFI240
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI240
	.quad	.LCFI241
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI241
	.quad	.LCFI242
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI242
	.quad	.LCFI243
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI243
	.quad	.LCFI244
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI244
	.quad	.LFE1084
	.value	0x3
	.byte	0x77
	.sleb128 256
	.quad	0
	.quad	0
.LLST327:
	.quad	.LVL1323
	.quad	.LVL1325
	.value	0x1
	.byte	0x55
	.quad	.LVL1325
	.quad	.LVL1363
	.value	0x1
	.byte	0x5f
	.quad	.LVL1363
	.quad	.LVL1478
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL1478
	.quad	.LVL1479
	.value	0x1
	.byte	0x5f
	.quad	.LVL1479
	.quad	.LVL1482
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL1482
	.quad	.LFE1084
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST328:
	.quad	.LVL1323
	.quad	.LVL1326-1
	.value	0x1
	.byte	0x54
	.quad	.LVL1326-1
	.quad	.LVL1457
	.value	0x1
	.byte	0x53
	.quad	.LVL1457
	.quad	.LVL1462
	.value	0x8
	.byte	0x91
	.sleb128 -236
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0x6
	.byte	0x9f
	.quad	.LVL1462
	.quad	.LVL1465
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	.LVL1465
	.quad	.LFE1084
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST329:
	.quad	.LVL1323
	.quad	.LVL1324
	.value	0x1
	.byte	0x51
	.quad	.LVL1324
	.quad	.LFE1084
	.value	0x3
	.byte	0x91
	.sleb128 -216
	.quad	0
	.quad	0
.LLST330:
	.quad	.LVL1323
	.quad	.LVL1326-1
	.value	0x1
	.byte	0x52
	.quad	.LVL1326-1
	.quad	.LVL1363
	.value	0x1
	.byte	0x5c
	.quad	.LVL1363
	.quad	.LVL1462
	.value	0x3
	.byte	0x91
	.sleb128 -196
	.quad	.LVL1462
	.quad	.LVL1465
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL1465
	.quad	.LVL1478
	.value	0x3
	.byte	0x91
	.sleb128 -196
	.quad	.LVL1478
	.quad	.LVL1479
	.value	0x1
	.byte	0x5c
	.quad	.LVL1479
	.quad	.LVL1482
	.value	0x3
	.byte	0x91
	.sleb128 -196
	.quad	.LVL1482
	.quad	.LFE1084
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST331:
	.quad	.LVL1362
	.quad	.LVL1363
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST332:
	.quad	.LVL1362
	.quad	.LVL1363
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.quad	.LVL1363
	.quad	.LVL1364
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST333:
	.quad	.LVL1362
	.quad	.LVL1363
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.quad	.LVL1363
	.quad	.LVL1364
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST334:
	.quad	.LVL1334
	.quad	.LVL1336
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL1337
	.quad	.LVL1338
	.value	0x1
	.byte	0x5b
	.quad	.LVL1339
	.quad	.LVL1340
	.value	0x1
	.byte	0x52
	.quad	.LVL1340
	.quad	.LVL1341
	.value	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL1341
	.quad	.LVL1342
	.value	0x1
	.byte	0x52
	.quad	.LVL1342
	.quad	.LVL1343
	.value	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL1344
	.quad	.LVL1345
	.value	0x1
	.byte	0x52
	.quad	.LVL1345
	.quad	.LVL1346
	.value	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL1347
	.quad	.LVL1348
	.value	0x1
	.byte	0x52
	.quad	.LVL1348
	.quad	.LVL1349
	.value	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL1350
	.quad	.LVL1351
	.value	0x1
	.byte	0x52
	.quad	.LVL1351
	.quad	.LVL1352
	.value	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL1353
	.quad	.LVL1354
	.value	0x1
	.byte	0x52
	.quad	.LVL1354
	.quad	.LVL1355
	.value	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL1356
	.quad	.LVL1357
	.value	0x1
	.byte	0x52
	.quad	.LVL1357
	.quad	.LVL1358
	.value	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL1358
	.quad	.LVL1359
	.value	0x1
	.byte	0x52
	.quad	.LVL1359
	.quad	.LVL1360
	.value	0x3
	.byte	0x72
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL1361
	.quad	.LVL1362
	.value	0x1
	.byte	0x52
	.quad	.LVL1363
	.quad	.LVL1364
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL1381
	.quad	.LVL1385
	.value	0x1
	.byte	0x5b
	.quad	.LVL1473
	.quad	.LVL1474
	.value	0x1
	.byte	0x5b
	.quad	.LVL1477
	.quad	.LVL1478
	.value	0x1
	.byte	0x5b
	.quad	.LVL1483
	.quad	.LFE1084
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST335:
	.quad	.LVL1387
	.quad	.LVL1389
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL1391
	.quad	.LVL1392
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL1393
	.quad	.LVL1394
	.value	0x1
	.byte	0x52
	.quad	.LVL1395
	.quad	.LVL1396
	.value	0x1
	.byte	0x5a
	.quad	.LVL1396
	.quad	.LVL1397
	.value	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL1397
	.quad	.LVL1398
	.value	0x3
	.byte	0x7a
	.sleb128 -2
	.byte	0x9f
	.quad	.LVL1399
	.quad	.LVL1400
	.value	0x1
	.byte	0x5a
	.quad	.LVL1400
	.quad	.LVL1401
	.value	0x3
	.byte	0x7a
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL1402
	.quad	.LVL1403
	.value	0x1
	.byte	0x5a
	.quad	.LVL1403
	.quad	.LVL1404
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL1405
	.quad	.LVL1406
	.value	0x1
	.byte	0x52
	.quad	.LVL1407
	.quad	.LVL1408
	.value	0x1
	.byte	0x5c
	.quad	.LVL1408
	.quad	.LVL1409
	.value	0x3
	.byte	0x7c
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL1409
	.quad	.LVL1410
	.value	0x3
	.byte	0x7c
	.sleb128 -2
	.byte	0x9f
	.quad	.LVL1411
	.quad	.LVL1412
	.value	0x1
	.byte	0x5c
	.quad	.LVL1412
	.quad	.LVL1413
	.value	0x3
	.byte	0x7c
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL1414
	.quad	.LVL1415
	.value	0x1
	.byte	0x5c
	.quad	.LVL1418
	.quad	.LVL1419
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL1420
	.quad	.LVL1421
	.value	0x1
	.byte	0x55
	.quad	.LVL1421
	.quad	.LVL1422
	.value	0x3
	.byte	0x75
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL1423
	.quad	.LVL1424
	.value	0x1
	.byte	0x55
	.quad	.LVL1424
	.quad	.LVL1425
	.value	0x3
	.byte	0x75
	.sleb128 -16
	.byte	0x9f
	.quad	.LVL1426
	.quad	.LVL1427
	.value	0x1
	.byte	0x55
	.quad	.LVL1428
	.quad	.LVL1429
	.value	0x1
	.byte	0x52
	.quad	.LVL1429
	.quad	.LVL1430
	.value	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL1430
	.quad	.LVL1431
	.value	0x3
	.byte	0x72
	.sleb128 -2
	.byte	0x9f
	.quad	.LVL1432
	.quad	.LVL1433
	.value	0x1
	.byte	0x52
	.quad	.LVL1433
	.quad	.LVL1434
	.value	0x3
	.byte	0x72
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL1435
	.quad	.LVL1436
	.value	0x1
	.byte	0x52
	.quad	.LVL1436
	.quad	.LVL1437
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL1438
	.quad	.LVL1439
	.value	0x1
	.byte	0x55
	.quad	.LVL1439
	.quad	.LVL1440
	.value	0x3
	.byte	0x75
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL1441
	.quad	.LVL1442
	.value	0x1
	.byte	0x55
	.quad	.LVL1442
	.quad	.LVL1443
	.value	0x3
	.byte	0x75
	.sleb128 -16
	.byte	0x9f
	.quad	.LVL1444
	.quad	.LVL1445
	.value	0x1
	.byte	0x55
	.quad	.LVL1446
	.quad	.LVL1447
	.value	0x1
	.byte	0x52
	.quad	.LVL1447
	.quad	.LVL1448
	.value	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL1448
	.quad	.LVL1449
	.value	0x3
	.byte	0x72
	.sleb128 -2
	.byte	0x9f
	.quad	.LVL1450
	.quad	.LVL1451
	.value	0x1
	.byte	0x52
	.quad	.LVL1451
	.quad	.LVL1452
	.value	0x3
	.byte	0x72
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL1453
	.quad	.LVL1454
	.value	0x1
	.byte	0x52
	.quad	.LVL1472
	.quad	.LVL1473
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL1476
	.quad	.LVL1477
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL1479
	.quad	.LVL1481
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST336:
	.quad	.LVL1455
	.quad	.LVL1456
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST337:
	.quad	.LVL1363
	.quad	.LVL1364
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.quad	.LVL1365
	.quad	.LVL1369
	.value	0x1
	.byte	0x6f
	.quad	.LVL1370
	.quad	.LVL1371
	.value	0x1
	.byte	0x6f
	.quad	.LVL1372
	.quad	.LVL1375-1
	.value	0x1
	.byte	0x6f
	.quad	.LVL1375
	.quad	.LVL1376
	.value	0x1
	.byte	0x6f
	.quad	.LVL1377
	.quad	.LVL1378
	.value	0x1
	.byte	0x6f
	.quad	.LVL1379
	.quad	.LVL1380-1
	.value	0x1
	.byte	0x6f
	.quad	.LVL1380
	.quad	.LVL1386
	.value	0x1
	.byte	0x6f
	.quad	.LVL1466
	.quad	.LVL1467
	.value	0x1
	.byte	0x6f
	.quad	.LVL1468
	.quad	.LVL1469
	.value	0x1
	.byte	0x6f
	.quad	.LVL1470
	.quad	.LVL1471
	.value	0x1
	.byte	0x6f
	.quad	.LVL1473
	.quad	.LVL1475
	.value	0x1
	.byte	0x6f
	.quad	.LVL1477
	.quad	.LVL1478
	.value	0x1
	.byte	0x6f
	.quad	0
	.quad	0
.LLST338:
	.quad	.LVL1417
	.quad	.LVL1454
	.value	0x1
	.byte	0x61
	.quad	.LVL1472
	.quad	.LVL1473
	.value	0x1
	.byte	0x61
	.quad	.LVL1479
	.quad	.LVL1480
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST339:
	.quad	.LVL1391
	.quad	.LVL1416
	.value	0x1
	.byte	0x61
	.quad	.LVL1416
	.quad	.LVL1458
	.value	0x11
	.byte	0xf5
	.uleb128 0x15
	.uleb128 0x31
	.byte	0x91
	.sleb128 -232
	.byte	0x6
	.byte	0x91
	.sleb128 -224
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL1458
	.quad	.LVL1462
	.value	0x1a
	.byte	0x91
	.sleb128 -232
	.byte	0x6
	.byte	0x91
	.sleb128 -224
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x91
	.sleb128 -232
	.byte	0x6
	.byte	0x91
	.sleb128 -224
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL1472
	.quad	.LVL1473
	.value	0x11
	.byte	0xf5
	.uleb128 0x15
	.uleb128 0x31
	.byte	0x91
	.sleb128 -232
	.byte	0x6
	.byte	0x91
	.sleb128 -224
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL1475
	.quad	.LVL1477
	.value	0x1
	.byte	0x61
	.quad	.LVL1479
	.quad	.LVL1480
	.value	0x11
	.byte	0xf5
	.uleb128 0x15
	.uleb128 0x31
	.byte	0x91
	.sleb128 -232
	.byte	0x6
	.byte	0x91
	.sleb128 -224
	.byte	0x6
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x31
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL1480
	.quad	.LVL1481
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST340:
	.quad	.LVL1382
	.quad	.LVL1384
	.value	0x2
	.byte	0x90
	.uleb128 0x20
	.quad	.LVL1388
	.quad	.LVL1390
	.value	0x1
	.byte	0x6c
	.quad	.LVL1459
	.quad	.LVL1461
	.value	0x1
	.byte	0x61
	.quad	.LVL1477
	.quad	.LVL1478
	.value	0x2
	.byte	0x90
	.uleb128 0x20
	.quad	0
	.quad	0
.LLST341:
	.quad	.LVL1323
	.quad	.LVL1324
	.value	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL1324
	.quad	.LVL1326-1
	.value	0x1
	.byte	0x51
	.quad	.LVL1326-1
	.quad	.LFE1084
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	0
	.quad	0
.LLST342:
	.quad	.LVL1327
	.quad	.LVL1329-1
	.value	0x1
	.byte	0x50
	.quad	.LVL1329-1
	.quad	.LFE1084
	.value	0x3
	.byte	0x91
	.sleb128 -112
	.quad	0
	.quad	0
.LLST343:
	.quad	.LVL1328
	.quad	.LVL1478
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	.LVL1479
	.quad	.LFE1084
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	0
	.quad	0
.LLST344:
	.quad	.LVL1328
	.quad	.LVL1478
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL1479
	.quad	.LFE1084
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST345:
	.quad	.LVL1330
	.quad	.LVL1332-1
	.value	0x1
	.byte	0x50
	.quad	.LVL1332-1
	.quad	.LVL1478
	.value	0x3
	.byte	0x91
	.sleb128 -104
	.quad	.LVL1479
	.quad	.LFE1084
	.value	0x3
	.byte	0x91
	.sleb128 -104
	.quad	0
	.quad	0
.LLST346:
	.quad	.LVL1331
	.quad	.LVL1478
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	.LVL1479
	.quad	.LFE1084
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	0
	.quad	0
.LLST347:
	.quad	.LVL1331
	.quad	.LVL1478
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL1479
	.quad	.LFE1084
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST348:
	.quad	.LVL1333
	.quad	.LVL1335
	.value	0x1
	.byte	0x50
	.quad	.LVL1335
	.quad	.LVL1478
	.value	0x3
	.byte	0x91
	.sleb128 -176
	.quad	.LVL1479
	.quad	.LFE1084
	.value	0x3
	.byte	0x91
	.sleb128 -176
	.quad	0
	.quad	0
.LLST349:
	.quad	.LVL1462
	.quad	.LVL1465
	.value	0x3
	.byte	0x91
	.sleb128 -176
	.quad	0
	.quad	0
.LLST350:
	.quad	.LVL1462
	.quad	.LVL1465
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST351:
	.quad	.LVL1463
	.quad	.LVL1465
	.value	0x3
	.byte	0x91
	.sleb128 -104
	.quad	0
	.quad	0
.LLST352:
	.quad	.LVL1463
	.quad	.LVL1465
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST353:
	.quad	.LVL1464
	.quad	.LVL1465
	.value	0x3
	.byte	0x91
	.sleb128 -112
	.quad	0
	.quad	0
.LLST354:
	.quad	.LVL1464
	.quad	.LVL1465
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST355:
	.quad	.LFB1085
	.quad	.LCFI245
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI245
	.quad	.LCFI246
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI246
	.quad	.LCFI247
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI247
	.quad	.LFE1085
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	0
	.quad	0
.LLST356:
	.quad	.LVL1484
	.quad	.LVL1486
	.value	0x1
	.byte	0x55
	.quad	.LVL1486
	.quad	.LVL1488
	.value	0x1
	.byte	0x53
	.quad	.LVL1488
	.quad	.LVL1490
	.value	0x4
	.byte	0x73
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.quad	.LVL1490
	.quad	.LVL1491
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL1491
	.quad	.LFE1085
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST357:
	.quad	.LVL1484
	.quad	.LVL1485
	.value	0x1
	.byte	0x54
	.quad	.LVL1485
	.quad	.LFE1085
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST358:
	.quad	.LVL1487
	.quad	.LVL1489
	.value	0x1
	.byte	0x50
	.quad	.LVL1491
	.quad	.LVL1492-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST359:
	.quad	.LVL1493
	.quad	.LVL1494
	.value	0x1
	.byte	0x55
	.quad	.LVL1494
	.quad	.LFE1086
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST360:
	.quad	.LVL1493
	.quad	.LVL1495-1
	.value	0x1
	.byte	0x54
	.quad	.LVL1495-1
	.quad	.LFE1086
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST361:
	.quad	.LVL1493
	.quad	.LVL1495-1
	.value	0x1
	.byte	0x51
	.quad	.LVL1495-1
	.quad	.LFE1086
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST362:
	.quad	.LFB1087
	.quad	.LCFI248
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI248
	.quad	.LCFI249
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI249
	.quad	.LCFI250
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI250
	.quad	.LFE1087
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	0
	.quad	0
.LLST363:
	.quad	.LVL1496
	.quad	.LVL1498
	.value	0x1
	.byte	0x55
	.quad	.LVL1498
	.quad	.LVL1500
	.value	0x1
	.byte	0x53
	.quad	.LVL1500
	.quad	.LVL1502
	.value	0x4
	.byte	0x73
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.quad	.LVL1502
	.quad	.LVL1503
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL1503
	.quad	.LFE1087
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST364:
	.quad	.LVL1496
	.quad	.LVL1497
	.value	0x1
	.byte	0x54
	.quad	.LVL1497
	.quad	.LFE1087
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST365:
	.quad	.LVL1499
	.quad	.LVL1501
	.value	0x1
	.byte	0x50
	.quad	.LVL1503
	.quad	.LVL1504-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST366:
	.quad	.LVL1505
	.quad	.LVL1506
	.value	0x1
	.byte	0x55
	.quad	.LVL1506
	.quad	.LFE1088
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST367:
	.quad	.LVL1505
	.quad	.LVL1507-1
	.value	0x1
	.byte	0x54
	.quad	.LVL1507-1
	.quad	.LFE1088
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST368:
	.quad	.LVL1505
	.quad	.LVL1507-1
	.value	0x1
	.byte	0x51
	.quad	.LVL1507-1
	.quad	.LFE1088
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST369:
	.quad	.LFB1089
	.quad	.LCFI251
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI251
	.quad	.LCFI252
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI252
	.quad	.LCFI253
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI253
	.quad	.LCFI254
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI254
	.quad	.LCFI255
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI255
	.quad	.LCFI256
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI256
	.quad	.LCFI257
	.value	0x2
	.byte	0x77
	.sleb128 56
	.quad	.LCFI257
	.quad	.LCFI258
	.value	0x3
	.byte	0x77
	.sleb128 112
	.quad	.LCFI258
	.quad	.LCFI259
	.value	0x2
	.byte	0x77
	.sleb128 56
	.quad	.LCFI259
	.quad	.LCFI260
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI260
	.quad	.LCFI261
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI261
	.quad	.LCFI262
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI262
	.quad	.LCFI263
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI263
	.quad	.LCFI264
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI264
	.quad	.LCFI265
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI265
	.quad	.LFE1089
	.value	0x3
	.byte	0x77
	.sleb128 112
	.quad	0
	.quad	0
.LLST370:
	.quad	.LVL1508
	.quad	.LVL1512
	.value	0x1
	.byte	0x55
	.quad	.LVL1512
	.quad	.LVL1530
	.value	0x1
	.byte	0x56
	.quad	.LVL1530
	.quad	.LVL1560
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL1560
	.quad	.LFE1089
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST371:
	.quad	.LVL1508
	.quad	.LVL1513-1
	.value	0x1
	.byte	0x54
	.quad	.LVL1513-1
	.quad	.LVL1559
	.value	0x1
	.byte	0x5d
	.quad	.LVL1559
	.quad	.LVL1560
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL1560
	.quad	.LFE1089
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST372:
	.quad	.LVL1508
	.quad	.LVL1509
	.value	0x1
	.byte	0x51
	.quad	.LVL1509
	.quad	.LVL1518
	.value	0x1
	.byte	0x5e
	.quad	.LVL1518
	.quad	.LVL1561
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL1561
	.quad	.LFE1089
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST373:
	.quad	.LVL1508
	.quad	.LVL1510
	.value	0x1
	.byte	0x52
	.quad	.LVL1510
	.quad	.LFE1089
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST374:
	.quad	.LVL1517
	.quad	.LVL1520
	.value	0x1
	.byte	0x59
	.quad	.LVL1520
	.quad	.LVL1521
	.value	0x3
	.byte	0x79
	.sleb128 2
	.byte	0x9f
	.quad	.LVL1521
	.quad	.LVL1522
	.value	0x3
	.byte	0x76
	.sleb128 3
	.byte	0x9f
	.quad	.LVL1522
	.quad	.LVL1523
	.value	0x3
	.byte	0x76
	.sleb128 4
	.byte	0x9f
	.quad	.LVL1523
	.quad	.LVL1524
	.value	0x3
	.byte	0x76
	.sleb128 5
	.byte	0x9f
	.quad	.LVL1524
	.quad	.LVL1525
	.value	0x3
	.byte	0x76
	.sleb128 7
	.byte	0x9f
	.quad	.LVL1525
	.quad	.LVL1526
	.value	0x3
	.byte	0x76
	.sleb128 8
	.byte	0x9f
	.quad	.LVL1526
	.quad	.LVL1527
	.value	0x1
	.byte	0x59
	.quad	.LVL1527
	.quad	.LVL1528
	.value	0x3
	.byte	0x76
	.sleb128 9
	.byte	0x9f
	.quad	.LVL1529
	.quad	.LVL1531
	.value	0x1
	.byte	0x59
	.quad	.LVL1531
	.quad	.LVL1532
	.value	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.quad	.LVL1532
	.quad	.LVL1533
	.value	0x3
	.byte	0x79
	.sleb128 2
	.byte	0x9f
	.quad	.LVL1533
	.quad	.LVL1534
	.value	0x3
	.byte	0x79
	.sleb128 3
	.byte	0x9f
	.quad	.LVL1534
	.quad	.LVL1535
	.value	0x3
	.byte	0x79
	.sleb128 4
	.byte	0x9f
	.quad	.LVL1535
	.quad	.LVL1536
	.value	0x3
	.byte	0x79
	.sleb128 -12
	.byte	0x9f
	.quad	.LVL1536
	.quad	.LVL1537
	.value	0x3
	.byte	0x79
	.sleb128 -11
	.byte	0x9f
	.quad	.LVL1537
	.quad	.LVL1538
	.value	0x3
	.byte	0x79
	.sleb128 -10
	.byte	0x9f
	.quad	.LVL1539
	.quad	.LVL1540
	.value	0x1
	.byte	0x59
	.quad	.LVL1540
	.quad	.LVL1541
	.value	0x1
	.byte	0x51
	.quad	.LVL1541
	.quad	.LVL1542
	.value	0x1
	.byte	0x59
	.quad	.LVL1542
	.quad	.LVL1543
	.value	0x1
	.byte	0x51
	.quad	.LVL1543
	.quad	.LVL1544
	.value	0x1
	.byte	0x59
	.quad	.LVL1544
	.quad	.LVL1545
	.value	0x1
	.byte	0x51
	.quad	.LVL1545
	.quad	.LVL1546
	.value	0x1
	.byte	0x59
	.quad	.LVL1546
	.quad	.LVL1547
	.value	0x1
	.byte	0x51
	.quad	.LVL1547
	.quad	.LVL1548
	.value	0x1
	.byte	0x59
	.quad	.LVL1548
	.quad	.LVL1549
	.value	0x1
	.byte	0x51
	.quad	.LVL1549
	.quad	.LVL1550
	.value	0x1
	.byte	0x59
	.quad	.LVL1550
	.quad	.LVL1551
	.value	0x1
	.byte	0x51
	.quad	.LVL1551
	.quad	.LVL1552
	.value	0x1
	.byte	0x59
	.quad	.LVL1552
	.quad	.LVL1553
	.value	0x1
	.byte	0x51
	.quad	.LVL1553
	.quad	.LVL1554
	.value	0x1
	.byte	0x59
	.quad	.LVL1554
	.quad	.LVL1555
	.value	0x1
	.byte	0x51
	.quad	.LVL1556
	.quad	.LVL1557
	.value	0x1
	.byte	0x51
	.quad	.LVL1560
	.quad	.LVL1561
	.value	0x1
	.byte	0x59
	.quad	0
	.quad	0
.LLST375:
	.quad	.LVL1509
	.quad	.LVL1513-1
	.value	0x1
	.byte	0x51
	.quad	.LVL1513-1
	.quad	.LVL1530
	.value	0x8
	.byte	0x7d
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL1530
	.quad	.LVL1559
	.value	0x9
	.byte	0x7d
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL1559
	.quad	.LVL1560
	.value	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL1560
	.quad	.LFE1089
	.value	0x8
	.byte	0x7d
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST376:
	.quad	.LVL1511
	.quad	.LVL1519
	.value	0x1
	.byte	0x5c
	.quad	.LVL1519
	.quad	.LVL1560
	.value	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL1560
	.quad	.LFE1089
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST377:
	.quad	.LVL1513
	.quad	.LVL1514
	.value	0x1
	.byte	0x50
	.quad	.LVL1514
	.quad	.LVL1558
	.value	0x1
	.byte	0x53
	.quad	.LVL1558
	.quad	.LVL1560
	.value	0x1
	.byte	0x50
	.quad	.LVL1560
	.quad	.LVL1561
	.value	0x1
	.byte	0x53
	.quad	.LVL1561
	.quad	.LVL1562-1
	.value	0x1
	.byte	0x50
	.quad	.LVL1562
	.quad	.LFE1089
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST378:
	.quad	.LFB1090
	.quad	.LCFI266
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI266
	.quad	.LCFI267
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI267
	.quad	.LFE1090
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST379:
	.quad	.LVL1564
	.quad	.LVL1565
	.value	0x1
	.byte	0x55
	.quad	.LVL1565
	.quad	.LVL1567
	.value	0x1
	.byte	0x53
	.quad	.LVL1567
	.quad	.LFE1090
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST380:
	.quad	.LVL1564
	.quad	.LVL1566-1
	.value	0x1
	.byte	0x54
	.quad	.LVL1566-1
	.quad	.LVL1568
	.value	0x1
	.byte	0x56
	.quad	.LVL1568
	.quad	.LFE1090
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST381:
	.quad	.LVL1564
	.quad	.LVL1566-1
	.value	0x1
	.byte	0x51
	.quad	.LVL1566-1
	.quad	.LFE1090
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST382:
	.quad	.LVL1564
	.quad	.LVL1566-1
	.value	0x1
	.byte	0x52
	.quad	.LVL1566-1
	.quad	.LFE1090
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST383:
	.quad	.LVL1564
	.quad	.LVL1566-1
	.value	0x1
	.byte	0x58
	.quad	.LVL1566-1
	.quad	.LFE1090
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.quad	0
	.quad	0
.LLST384:
	.quad	.LVL1571
	.quad	.LVL1573
	.value	0x1
	.byte	0x52
	.quad	.LVL1573
	.quad	.LVL1574
	.value	0x2
	.byte	0x75
	.sleb128 0
	.quad	.LVL1574
	.quad	.LVL1575
	.value	0x1
	.byte	0x5a
	.quad	.LVL1575
	.quad	.LFE1091
	.value	0x7
	.byte	0x7b
	.sleb128 -2147483647
	.byte	0x9f
	.quad	0
	.quad	0
.LLST385:
	.quad	.LFB1093
	.quad	.LCFI268
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI268
	.quad	.LCFI269
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI269
	.quad	.LFE1093
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x4c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB1076
	.quad	.LFE1076-.LFB1076
	.quad	.LFB1093
	.quad	.LFE1093-.LFB1093
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB71
	.quad	.LBE71
	.quad	.LBB72
	.quad	.LBE72
	.quad	.LBB73
	.quad	.LBE73
	.quad	.LBB74
	.quad	.LBE74
	.quad	.LBB75
	.quad	.LBE75
	.quad	0
	.quad	0
	.quad	.LBB77
	.quad	.LBE77
	.quad	.LBB78
	.quad	.LBE78
	.quad	.LBB79
	.quad	.LBE79
	.quad	.LBB80
	.quad	.LBE80
	.quad	.LBB81
	.quad	.LBE81
	.quad	0
	.quad	0
	.quad	.LBB82
	.quad	.LBE82
	.quad	.LBB83
	.quad	.LBE83
	.quad	.LBB84
	.quad	.LBE84
	.quad	.LBB85
	.quad	.LBE85
	.quad	.LBB86
	.quad	.LBE86
	.quad	.LBB87
	.quad	.LBE87
	.quad	.LBB88
	.quad	.LBE88
	.quad	0
	.quad	0
	.quad	.LBB89
	.quad	.LBE89
	.quad	.LBB90
	.quad	.LBE90
	.quad	.LBB91
	.quad	.LBE91
	.quad	.LBB92
	.quad	.LBE92
	.quad	.LBB93
	.quad	.LBE93
	.quad	0
	.quad	0
	.quad	.LBB94
	.quad	.LBE94
	.quad	.LBB95
	.quad	.LBE95
	.quad	.LBB96
	.quad	.LBE96
	.quad	0
	.quad	0
	.quad	.LBB97
	.quad	.LBE97
	.quad	.LBB98
	.quad	.LBE98
	.quad	.LBB99
	.quad	.LBE99
	.quad	0
	.quad	0
	.quad	.LBB110
	.quad	.LBE110
	.quad	.LBB113
	.quad	.LBE113
	.quad	0
	.quad	0
	.quad	.LBB117
	.quad	.LBE117
	.quad	.LBB120
	.quad	.LBE120
	.quad	0
	.quad	0
	.quad	.LBB121
	.quad	.LBE121
	.quad	.LBB128
	.quad	.LBE128
	.quad	.LBB129
	.quad	.LBE129
	.quad	.LBB130
	.quad	.LBE130
	.quad	0
	.quad	0
	.quad	.LBB122
	.quad	.LBE122
	.quad	.LBB126
	.quad	.LBE126
	.quad	.LBB127
	.quad	.LBE127
	.quad	0
	.quad	0
	.quad	.LBB123
	.quad	.LBE123
	.quad	.LBB124
	.quad	.LBE124
	.quad	.LBB125
	.quad	.LBE125
	.quad	0
	.quad	0
	.quad	.LBB131
	.quad	.LBE131
	.quad	.LBB135
	.quad	.LBE135
	.quad	.LBB136
	.quad	.LBE136
	.quad	0
	.quad	0
	.quad	.LBB184
	.quad	.LBE184
	.quad	.LBB341
	.quad	.LBE341
	.quad	.LBB342
	.quad	.LBE342
	.quad	.LBB343
	.quad	.LBE343
	.quad	.LBB344
	.quad	.LBE344
	.quad	.LBB345
	.quad	.LBE345
	.quad	.LBB346
	.quad	.LBE346
	.quad	.LBB347
	.quad	.LBE347
	.quad	0
	.quad	0
	.quad	.LBB185
	.quad	.LBE185
	.quad	.LBB188
	.quad	.LBE188
	.quad	0
	.quad	0
	.quad	.LBB189
	.quad	.LBE189
	.quad	.LBB214
	.quad	.LBE214
	.quad	.LBB215
	.quad	.LBE215
	.quad	.LBB216
	.quad	.LBE216
	.quad	.LBB332
	.quad	.LBE332
	.quad	.LBB333
	.quad	.LBE333
	.quad	0
	.quad	0
	.quad	.LBB190
	.quad	.LBE190
	.quad	.LBB194
	.quad	.LBE194
	.quad	.LBB195
	.quad	.LBE195
	.quad	0
	.quad	0
	.quad	.LBB196
	.quad	.LBE196
	.quad	.LBB201
	.quad	.LBE201
	.quad	.LBB202
	.quad	.LBE202
	.quad	.LBB209
	.quad	.LBE209
	.quad	0
	.quad	0
	.quad	.LBB203
	.quad	.LBE203
	.quad	.LBB210
	.quad	.LBE210
	.quad	0
	.quad	0
	.quad	.LBB206
	.quad	.LBE206
	.quad	.LBB211
	.quad	.LBE211
	.quad	0
	.quad	0
	.quad	.LBB219
	.quad	.LBE219
	.quad	.LBB224
	.quad	.LBE224
	.quad	.LBB225
	.quad	.LBE225
	.quad	.LBB226
	.quad	.LBE226
	.quad	0
	.quad	0
	.quad	.LBB220
	.quad	.LBE220
	.quad	.LBB221
	.quad	.LBE221
	.quad	.LBB222
	.quad	.LBE222
	.quad	.LBB223
	.quad	.LBE223
	.quad	0
	.quad	0
	.quad	.LBB227
	.quad	.LBE227
	.quad	.LBB248
	.quad	.LBE248
	.quad	.LBB249
	.quad	.LBE249
	.quad	.LBB250
	.quad	.LBE250
	.quad	.LBB251
	.quad	.LBE251
	.quad	.LBB252
	.quad	.LBE252
	.quad	.LBB253
	.quad	.LBE253
	.quad	.LBB254
	.quad	.LBE254
	.quad	.LBB338
	.quad	.LBE338
	.quad	.LBB339
	.quad	.LBE339
	.quad	0
	.quad	0
	.quad	.LBB228
	.quad	.LBE228
	.quad	.LBB239
	.quad	.LBE239
	.quad	.LBB240
	.quad	.LBE240
	.quad	.LBB241
	.quad	.LBE241
	.quad	.LBB242
	.quad	.LBE242
	.quad	.LBB243
	.quad	.LBE243
	.quad	.LBB244
	.quad	.LBE244
	.quad	.LBB245
	.quad	.LBE245
	.quad	.LBB246
	.quad	.LBE246
	.quad	.LBB247
	.quad	.LBE247
	.quad	0
	.quad	0
	.quad	.LBB229
	.quad	.LBE229
	.quad	.LBB230
	.quad	.LBE230
	.quad	.LBB231
	.quad	.LBE231
	.quad	.LBB232
	.quad	.LBE232
	.quad	.LBB233
	.quad	.LBE233
	.quad	.LBB234
	.quad	.LBE234
	.quad	.LBB235
	.quad	.LBE235
	.quad	.LBB236
	.quad	.LBE236
	.quad	.LBB237
	.quad	.LBE237
	.quad	.LBB238
	.quad	.LBE238
	.quad	0
	.quad	0
	.quad	.LBB255
	.quad	.LBE255
	.quad	.LBB263
	.quad	.LBE263
	.quad	.LBB264
	.quad	.LBE264
	.quad	.LBB265
	.quad	.LBE265
	.quad	.LBB266
	.quad	.LBE266
	.quad	.LBB276
	.quad	.LBE276
	.quad	.LBB279
	.quad	.LBE279
	.quad	0
	.quad	0
	.quad	.LBB256
	.quad	.LBE256
	.quad	.LBB257
	.quad	.LBE257
	.quad	.LBB258
	.quad	.LBE258
	.quad	.LBB259
	.quad	.LBE259
	.quad	.LBB260
	.quad	.LBE260
	.quad	.LBB261
	.quad	.LBE261
	.quad	.LBB262
	.quad	.LBE262
	.quad	0
	.quad	0
	.quad	.LBB267
	.quad	.LBE267
	.quad	.LBB275
	.quad	.LBE275
	.quad	.LBB277
	.quad	.LBE277
	.quad	.LBB278
	.quad	.LBE278
	.quad	.LBB280
	.quad	.LBE280
	.quad	.LBB281
	.quad	.LBE281
	.quad	.LBB282
	.quad	.LBE282
	.quad	0
	.quad	0
	.quad	.LBB268
	.quad	.LBE268
	.quad	.LBB269
	.quad	.LBE269
	.quad	.LBB270
	.quad	.LBE270
	.quad	.LBB271
	.quad	.LBE271
	.quad	.LBB272
	.quad	.LBE272
	.quad	.LBB273
	.quad	.LBE273
	.quad	.LBB274
	.quad	.LBE274
	.quad	0
	.quad	0
	.quad	.LBB283
	.quad	.LBE283
	.quad	.LBB292
	.quad	.LBE292
	.quad	.LBB293
	.quad	.LBE293
	.quad	.LBB340
	.quad	.LBE340
	.quad	0
	.quad	0
	.quad	.LBB284
	.quad	.LBE284
	.quad	.LBB289
	.quad	.LBE289
	.quad	.LBB290
	.quad	.LBE290
	.quad	.LBB291
	.quad	.LBE291
	.quad	0
	.quad	0
	.quad	.LBB285
	.quad	.LBE285
	.quad	.LBB286
	.quad	.LBE286
	.quad	.LBB287
	.quad	.LBE287
	.quad	.LBB288
	.quad	.LBE288
	.quad	0
	.quad	0
	.quad	.LBB294
	.quad	.LBE294
	.quad	.LBB315
	.quad	.LBE315
	.quad	.LBB316
	.quad	.LBE316
	.quad	.LBB317
	.quad	.LBE317
	.quad	.LBB318
	.quad	.LBE318
	.quad	.LBB319
	.quad	.LBE319
	.quad	.LBB320
	.quad	.LBE320
	.quad	.LBB321
	.quad	.LBE321
	.quad	.LBB322
	.quad	.LBE322
	.quad	.LBB323
	.quad	.LBE323
	.quad	0
	.quad	0
	.quad	.LBB295
	.quad	.LBE295
	.quad	.LBB306
	.quad	.LBE306
	.quad	.LBB307
	.quad	.LBE307
	.quad	.LBB308
	.quad	.LBE308
	.quad	.LBB309
	.quad	.LBE309
	.quad	.LBB310
	.quad	.LBE310
	.quad	.LBB311
	.quad	.LBE311
	.quad	.LBB312
	.quad	.LBE312
	.quad	.LBB313
	.quad	.LBE313
	.quad	.LBB314
	.quad	.LBE314
	.quad	0
	.quad	0
	.quad	.LBB296
	.quad	.LBE296
	.quad	.LBB297
	.quad	.LBE297
	.quad	.LBB298
	.quad	.LBE298
	.quad	.LBB299
	.quad	.LBE299
	.quad	.LBB300
	.quad	.LBE300
	.quad	.LBB301
	.quad	.LBE301
	.quad	.LBB302
	.quad	.LBE302
	.quad	.LBB303
	.quad	.LBE303
	.quad	.LBB304
	.quad	.LBE304
	.quad	.LBB305
	.quad	.LBE305
	.quad	0
	.quad	0
	.quad	.LBB324
	.quad	.LBE324
	.quad	.LBB327
	.quad	.LBE327
	.quad	0
	.quad	0
	.quad	.LBB356
	.quad	.LBE356
	.quad	.LBB382
	.quad	.LBE382
	.quad	.LBB383
	.quad	.LBE383
	.quad	.LBB384
	.quad	.LBE384
	.quad	.LBB385
	.quad	.LBE385
	.quad	.LBB386
	.quad	.LBE386
	.quad	.LBB387
	.quad	.LBE387
	.quad	.LBB388
	.quad	.LBE388
	.quad	.LBB389
	.quad	.LBE389
	.quad	0
	.quad	0
	.quad	.LBB357
	.quad	.LBE357
	.quad	.LBB364
	.quad	.LBE364
	.quad	.LBB381
	.quad	.LBE381
	.quad	0
	.quad	0
	.quad	.LBB358
	.quad	.LBE358
	.quad	.LBB362
	.quad	.LBE362
	.quad	.LBB363
	.quad	.LBE363
	.quad	0
	.quad	0
	.quad	.LBB359
	.quad	.LBE359
	.quad	.LBB360
	.quad	.LBE360
	.quad	.LBB361
	.quad	.LBE361
	.quad	0
	.quad	0
	.quad	.LBB365
	.quad	.LBE365
	.quad	.LBB373
	.quad	.LBE373
	.quad	.LBB374
	.quad	.LBE374
	.quad	.LBB375
	.quad	.LBE375
	.quad	.LBB376
	.quad	.LBE376
	.quad	.LBB377
	.quad	.LBE377
	.quad	.LBB378
	.quad	.LBE378
	.quad	0
	.quad	0
	.quad	.LBB366
	.quad	.LBE366
	.quad	.LBB367
	.quad	.LBE367
	.quad	.LBB368
	.quad	.LBE368
	.quad	.LBB369
	.quad	.LBE369
	.quad	.LBB370
	.quad	.LBE370
	.quad	.LBB371
	.quad	.LBE371
	.quad	.LBB372
	.quad	.LBE372
	.quad	0
	.quad	0
	.quad	.LBB396
	.quad	.LBE396
	.quad	.LBB405
	.quad	.LBE405
	.quad	.LBB406
	.quad	.LBE406
	.quad	.LBB407
	.quad	.LBE407
	.quad	.LBB408
	.quad	.LBE408
	.quad	.LBB409
	.quad	.LBE409
	.quad	.LBB410
	.quad	.LBE410
	.quad	.LBB411
	.quad	.LBE411
	.quad	.LBB412
	.quad	.LBE412
	.quad	.LBB413
	.quad	.LBE413
	.quad	.LBB414
	.quad	.LBE414
	.quad	.LBB415
	.quad	.LBE415
	.quad	.LBB416
	.quad	.LBE416
	.quad	.LBB417
	.quad	.LBE417
	.quad	.LBB418
	.quad	.LBE418
	.quad	0
	.quad	0
	.quad	.LBB397
	.quad	.LBE397
	.quad	.LBB404
	.quad	.LBE404
	.quad	0
	.quad	0
	.quad	.LBB398
	.quad	.LBE398
	.quad	.LBB401
	.quad	.LBE401
	.quad	0
	.quad	0
	.quad	.LBB399
	.quad	.LBE399
	.quad	.LBB400
	.quad	.LBE400
	.quad	0
	.quad	0
	.quad	.LBB425
	.quad	.LBE425
	.quad	.LBB437
	.quad	.LBE437
	.quad	.LBB438
	.quad	.LBE438
	.quad	.LBB439
	.quad	.LBE439
	.quad	.LBB440
	.quad	.LBE440
	.quad	.LBB441
	.quad	.LBE441
	.quad	.LBB442
	.quad	.LBE442
	.quad	.LBB443
	.quad	.LBE443
	.quad	.LBB444
	.quad	.LBE444
	.quad	.LBB445
	.quad	.LBE445
	.quad	.LBB446
	.quad	.LBE446
	.quad	.LBB447
	.quad	.LBE447
	.quad	.LBB448
	.quad	.LBE448
	.quad	0
	.quad	0
	.quad	.LBB426
	.quad	.LBE426
	.quad	.LBB433
	.quad	.LBE433
	.quad	.LBB436
	.quad	.LBE436
	.quad	0
	.quad	0
	.quad	.LBB427
	.quad	.LBE427
	.quad	.LBB431
	.quad	.LBE431
	.quad	.LBB432
	.quad	.LBE432
	.quad	0
	.quad	0
	.quad	.LBB428
	.quad	.LBE428
	.quad	.LBB429
	.quad	.LBE429
	.quad	.LBB430
	.quad	.LBE430
	.quad	0
	.quad	0
	.quad	.LBB486
	.quad	.LBE486
	.quad	.LBB551
	.quad	.LBE551
	.quad	.LBB552
	.quad	.LBE552
	.quad	.LBB553
	.quad	.LBE553
	.quad	.LBB554
	.quad	.LBE554
	.quad	0
	.quad	0
	.quad	.LBB487
	.quad	.LBE487
	.quad	.LBB496
	.quad	.LBE496
	.quad	.LBB497
	.quad	.LBE497
	.quad	.LBB549
	.quad	.LBE549
	.quad	0
	.quad	0
	.quad	.LBB488
	.quad	.LBE488
	.quad	.LBB493
	.quad	.LBE493
	.quad	.LBB494
	.quad	.LBE494
	.quad	.LBB495
	.quad	.LBE495
	.quad	0
	.quad	0
	.quad	.LBB489
	.quad	.LBE489
	.quad	.LBB490
	.quad	.LBE490
	.quad	.LBB491
	.quad	.LBE491
	.quad	.LBB492
	.quad	.LBE492
	.quad	0
	.quad	0
	.quad	.LBB498
	.quad	.LBE498
	.quad	.LBB515
	.quad	.LBE515
	.quad	.LBB516
	.quad	.LBE516
	.quad	.LBB526
	.quad	.LBE526
	.quad	.LBB528
	.quad	.LBE528
	.quad	.LBB530
	.quad	.LBE530
	.quad	.LBB537
	.quad	.LBE537
	.quad	.LBB550
	.quad	.LBE550
	.quad	0
	.quad	0
	.quad	.LBB499
	.quad	.LBE499
	.quad	.LBB508
	.quad	.LBE508
	.quad	.LBB509
	.quad	.LBE509
	.quad	.LBB510
	.quad	.LBE510
	.quad	.LBB511
	.quad	.LBE511
	.quad	.LBB512
	.quad	.LBE512
	.quad	.LBB513
	.quad	.LBE513
	.quad	.LBB514
	.quad	.LBE514
	.quad	0
	.quad	0
	.quad	.LBB500
	.quad	.LBE500
	.quad	.LBB501
	.quad	.LBE501
	.quad	.LBB502
	.quad	.LBE502
	.quad	.LBB503
	.quad	.LBE503
	.quad	.LBB504
	.quad	.LBE504
	.quad	.LBB505
	.quad	.LBE505
	.quad	.LBB506
	.quad	.LBE506
	.quad	.LBB507
	.quad	.LBE507
	.quad	0
	.quad	0
	.quad	.LBB517
	.quad	.LBE517
	.quad	.LBB527
	.quad	.LBE527
	.quad	.LBB529
	.quad	.LBE529
	.quad	.LBB531
	.quad	.LBE531
	.quad	0
	.quad	0
	.quad	.LBB518
	.quad	.LBE518
	.quad	.LBB523
	.quad	.LBE523
	.quad	.LBB524
	.quad	.LBE524
	.quad	.LBB525
	.quad	.LBE525
	.quad	0
	.quad	0
	.quad	.LBB519
	.quad	.LBE519
	.quad	.LBB520
	.quad	.LBE520
	.quad	.LBB521
	.quad	.LBE521
	.quad	.LBB522
	.quad	.LBE522
	.quad	0
	.quad	0
	.quad	.LBB532
	.quad	.LBE532
	.quad	.LBB538
	.quad	.LBE538
	.quad	.LBB539
	.quad	.LBE539
	.quad	.LBB540
	.quad	.LBE540
	.quad	0
	.quad	0
	.quad	.LBB533
	.quad	.LBE533
	.quad	.LBB534
	.quad	.LBE534
	.quad	.LBB535
	.quad	.LBE535
	.quad	.LBB536
	.quad	.LBE536
	.quad	0
	.quad	0
	.quad	.LBB566
	.quad	.LBE566
	.quad	.LBB592
	.quad	.LBE592
	.quad	.LBB593
	.quad	.LBE593
	.quad	.LBB594
	.quad	.LBE594
	.quad	0
	.quad	0
	.quad	.LBB567
	.quad	.LBE567
	.quad	.LBB583
	.quad	.LBE583
	.quad	.LBB590
	.quad	.LBE590
	.quad	0
	.quad	0
	.quad	.LBB568
	.quad	.LBE568
	.quad	.LBB572
	.quad	.LBE572
	.quad	.LBB573
	.quad	.LBE573
	.quad	0
	.quad	0
	.quad	.LBB569
	.quad	.LBE569
	.quad	.LBB570
	.quad	.LBE570
	.quad	.LBB571
	.quad	.LBE571
	.quad	0
	.quad	0
	.quad	.LBB574
	.quad	.LBE574
	.quad	.LBB584
	.quad	.LBE584
	.quad	.LBB589
	.quad	.LBE589
	.quad	.LBB591
	.quad	.LBE591
	.quad	0
	.quad	0
	.quad	.LBB575
	.quad	.LBE575
	.quad	.LBB580
	.quad	.LBE580
	.quad	.LBB581
	.quad	.LBE581
	.quad	.LBB582
	.quad	.LBE582
	.quad	0
	.quad	0
	.quad	.LBB576
	.quad	.LBE576
	.quad	.LBB577
	.quad	.LBE577
	.quad	.LBB578
	.quad	.LBE578
	.quad	.LBB579
	.quad	.LBE579
	.quad	0
	.quad	0
	.quad	.LBB617
	.quad	.LBE617
	.quad	.LBB722
	.quad	.LBE722
	.quad	.LBB723
	.quad	.LBE723
	.quad	.LBB724
	.quad	.LBE724
	.quad	.LBB725
	.quad	.LBE725
	.quad	.LBB726
	.quad	.LBE726
	.quad	.LBB727
	.quad	.LBE727
	.quad	0
	.quad	0
	.quad	.LBB618
	.quad	.LBE618
	.quad	.LBB625
	.quad	.LBE625
	.quad	.LBB721
	.quad	.LBE721
	.quad	0
	.quad	0
	.quad	.LBB619
	.quad	.LBE619
	.quad	.LBB623
	.quad	.LBE623
	.quad	.LBB624
	.quad	.LBE624
	.quad	0
	.quad	0
	.quad	.LBB620
	.quad	.LBE620
	.quad	.LBB621
	.quad	.LBE621
	.quad	.LBB622
	.quad	.LBE622
	.quad	0
	.quad	0
	.quad	.LBB629
	.quad	.LBE629
	.quad	.LBB630
	.quad	.LBE630
	.quad	.LBB704
	.quad	.LBE704
	.quad	.LBB706
	.quad	.LBE706
	.quad	.LBB708
	.quad	.LBE708
	.quad	.LBB720
	.quad	.LBE720
	.quad	0
	.quad	0
	.quad	.LBB631
	.quad	.LBE631
	.quad	.LBB705
	.quad	.LBE705
	.quad	.LBB707
	.quad	.LBE707
	.quad	.LBB709
	.quad	.LBE709
	.quad	0
	.quad	0
	.quad	.LBB632
	.quad	.LBE632
	.quad	.LBB701
	.quad	.LBE701
	.quad	.LBB702
	.quad	.LBE702
	.quad	.LBB703
	.quad	.LBE703
	.quad	0
	.quad	0
	.quad	.LBB633
	.quad	.LBE633
	.quad	.LBB668
	.quad	.LBE668
	.quad	.LBB669
	.quad	.LBE669
	.quad	.LBB670
	.quad	.LBE670
	.quad	.LBB671
	.quad	.LBE671
	.quad	.LBB672
	.quad	.LBE672
	.quad	.LBB673
	.quad	.LBE673
	.quad	.LBB674
	.quad	.LBE674
	.quad	.LBB675
	.quad	.LBE675
	.quad	.LBB676
	.quad	.LBE676
	.quad	.LBB677
	.quad	.LBE677
	.quad	.LBB678
	.quad	.LBE678
	.quad	.LBB679
	.quad	.LBE679
	.quad	.LBB680
	.quad	.LBE680
	.quad	.LBB681
	.quad	.LBE681
	.quad	.LBB682
	.quad	.LBE682
	.quad	.LBB683
	.quad	.LBE683
	.quad	.LBB684
	.quad	.LBE684
	.quad	.LBB685
	.quad	.LBE685
	.quad	.LBB686
	.quad	.LBE686
	.quad	.LBB687
	.quad	.LBE687
	.quad	.LBB688
	.quad	.LBE688
	.quad	.LBB689
	.quad	.LBE689
	.quad	.LBB690
	.quad	.LBE690
	.quad	.LBB691
	.quad	.LBE691
	.quad	.LBB692
	.quad	.LBE692
	.quad	.LBB693
	.quad	.LBE693
	.quad	.LBB694
	.quad	.LBE694
	.quad	.LBB695
	.quad	.LBE695
	.quad	.LBB696
	.quad	.LBE696
	.quad	.LBB697
	.quad	.LBE697
	.quad	.LBB698
	.quad	.LBE698
	.quad	.LBB699
	.quad	.LBE699
	.quad	.LBB700
	.quad	.LBE700
	.quad	0
	.quad	0
	.quad	.LBB634
	.quad	.LBE634
	.quad	.LBB635
	.quad	.LBE635
	.quad	.LBB636
	.quad	.LBE636
	.quad	.LBB637
	.quad	.LBE637
	.quad	.LBB638
	.quad	.LBE638
	.quad	.LBB639
	.quad	.LBE639
	.quad	.LBB640
	.quad	.LBE640
	.quad	.LBB641
	.quad	.LBE641
	.quad	.LBB642
	.quad	.LBE642
	.quad	.LBB643
	.quad	.LBE643
	.quad	.LBB644
	.quad	.LBE644
	.quad	.LBB645
	.quad	.LBE645
	.quad	.LBB646
	.quad	.LBE646
	.quad	.LBB647
	.quad	.LBE647
	.quad	.LBB648
	.quad	.LBE648
	.quad	.LBB649
	.quad	.LBE649
	.quad	.LBB650
	.quad	.LBE650
	.quad	.LBB651
	.quad	.LBE651
	.quad	.LBB652
	.quad	.LBE652
	.quad	.LBB653
	.quad	.LBE653
	.quad	.LBB654
	.quad	.LBE654
	.quad	.LBB655
	.quad	.LBE655
	.quad	.LBB656
	.quad	.LBE656
	.quad	.LBB657
	.quad	.LBE657
	.quad	.LBB658
	.quad	.LBE658
	.quad	.LBB659
	.quad	.LBE659
	.quad	.LBB660
	.quad	.LBE660
	.quad	.LBB661
	.quad	.LBE661
	.quad	.LBB662
	.quad	.LBE662
	.quad	.LBB663
	.quad	.LBE663
	.quad	.LBB664
	.quad	.LBE664
	.quad	.LBB665
	.quad	.LBE665
	.quad	.LBB666
	.quad	.LBE666
	.quad	.LBB667
	.quad	.LBE667
	.quad	0
	.quad	0
	.quad	.LBB714
	.quad	.LBE714
	.quad	.LBB719
	.quad	.LBE719
	.quad	0
	.quad	0
	.quad	.LBB761
	.quad	.LBE761
	.quad	.LBB877
	.quad	.LBE877
	.quad	.LBB878
	.quad	.LBE878
	.quad	.LBB879
	.quad	.LBE879
	.quad	.LBB880
	.quad	.LBE880
	.quad	.LBB881
	.quad	.LBE881
	.quad	0
	.quad	0
	.quad	.LBB762
	.quad	.LBE762
	.quad	.LBB777
	.quad	.LBE777
	.quad	.LBB778
	.quad	.LBE778
	.quad	.LBB792
	.quad	.LBE792
	.quad	.LBB794
	.quad	.LBE794
	.quad	.LBB796
	.quad	.LBE796
	.quad	.LBB875
	.quad	.LBE875
	.quad	0
	.quad	0
	.quad	.LBB763
	.quad	.LBE763
	.quad	.LBB771
	.quad	.LBE771
	.quad	.LBB772
	.quad	.LBE772
	.quad	.LBB773
	.quad	.LBE773
	.quad	.LBB774
	.quad	.LBE774
	.quad	.LBB775
	.quad	.LBE775
	.quad	.LBB776
	.quad	.LBE776
	.quad	0
	.quad	0
	.quad	.LBB764
	.quad	.LBE764
	.quad	.LBB765
	.quad	.LBE765
	.quad	.LBB766
	.quad	.LBE766
	.quad	.LBB767
	.quad	.LBE767
	.quad	.LBB768
	.quad	.LBE768
	.quad	.LBB769
	.quad	.LBE769
	.quad	.LBB770
	.quad	.LBE770
	.quad	0
	.quad	0
	.quad	.LBB779
	.quad	.LBE779
	.quad	.LBB793
	.quad	.LBE793
	.quad	.LBB795
	.quad	.LBE795
	.quad	.LBB797
	.quad	.LBE797
	.quad	.LBB798
	.quad	.LBE798
	.quad	.LBB876
	.quad	.LBE876
	.quad	0
	.quad	0
	.quad	.LBB780
	.quad	.LBE780
	.quad	.LBB787
	.quad	.LBE787
	.quad	.LBB788
	.quad	.LBE788
	.quad	.LBB789
	.quad	.LBE789
	.quad	.LBB790
	.quad	.LBE790
	.quad	.LBB791
	.quad	.LBE791
	.quad	0
	.quad	0
	.quad	.LBB781
	.quad	.LBE781
	.quad	.LBB782
	.quad	.LBE782
	.quad	.LBB783
	.quad	.LBE783
	.quad	.LBB784
	.quad	.LBE784
	.quad	.LBB785
	.quad	.LBE785
	.quad	.LBB786
	.quad	.LBE786
	.quad	0
	.quad	0
	.quad	.LBB799
	.quad	.LBE799
	.quad	.LBB814
	.quad	.LBE814
	.quad	.LBB826
	.quad	.LBE826
	.quad	.LBB828
	.quad	.LBE828
	.quad	.LBB830
	.quad	.LBE830
	.quad	.LBB832
	.quad	.LBE832
	.quad	.LBB839
	.quad	.LBE839
	.quad	0
	.quad	0
	.quad	.LBB800
	.quad	.LBE800
	.quad	.LBB808
	.quad	.LBE808
	.quad	.LBB809
	.quad	.LBE809
	.quad	.LBB810
	.quad	.LBE810
	.quad	.LBB811
	.quad	.LBE811
	.quad	.LBB812
	.quad	.LBE812
	.quad	.LBB813
	.quad	.LBE813
	.quad	0
	.quad	0
	.quad	.LBB801
	.quad	.LBE801
	.quad	.LBB802
	.quad	.LBE802
	.quad	.LBB803
	.quad	.LBE803
	.quad	.LBB804
	.quad	.LBE804
	.quad	.LBB805
	.quad	.LBE805
	.quad	.LBB806
	.quad	.LBE806
	.quad	.LBB807
	.quad	.LBE807
	.quad	0
	.quad	0
	.quad	.LBB815
	.quad	.LBE815
	.quad	.LBB827
	.quad	.LBE827
	.quad	.LBB829
	.quad	.LBE829
	.quad	.LBB831
	.quad	.LBE831
	.quad	.LBB833
	.quad	.LBE833
	.quad	0
	.quad	0
	.quad	.LBB816
	.quad	.LBE816
	.quad	.LBB822
	.quad	.LBE822
	.quad	.LBB823
	.quad	.LBE823
	.quad	.LBB824
	.quad	.LBE824
	.quad	.LBB825
	.quad	.LBE825
	.quad	0
	.quad	0
	.quad	.LBB817
	.quad	.LBE817
	.quad	.LBB818
	.quad	.LBE818
	.quad	.LBB819
	.quad	.LBE819
	.quad	.LBB820
	.quad	.LBE820
	.quad	.LBB821
	.quad	.LBE821
	.quad	0
	.quad	0
	.quad	.LBB834
	.quad	.LBE834
	.quad	.LBB840
	.quad	.LBE840
	.quad	0
	.quad	0
	.quad	.LBB835
	.quad	.LBE835
	.quad	.LBB838
	.quad	.LBE838
	.quad	0
	.quad	0
	.quad	.LBB836
	.quad	.LBE836
	.quad	.LBB837
	.quad	.LBE837
	.quad	0
	.quad	0
	.quad	.LBB850
	.quad	.LBE850
	.quad	.LBB857
	.quad	.LBE857
	.quad	.LBB858
	.quad	.LBE858
	.quad	0
	.quad	0
	.quad	.LBB851
	.quad	.LBE851
	.quad	.LBB855
	.quad	.LBE855
	.quad	.LBB856
	.quad	.LBE856
	.quad	0
	.quad	0
	.quad	.LBB852
	.quad	.LBE852
	.quad	.LBB853
	.quad	.LBE853
	.quad	.LBB854
	.quad	.LBE854
	.quad	0
	.quad	0
	.quad	.LBB859
	.quad	.LBE859
	.quad	.LBB867
	.quad	.LBE867
	.quad	.LBB868
	.quad	.LBE868
	.quad	.LBB869
	.quad	.LBE869
	.quad	.LBB870
	.quad	.LBE870
	.quad	.LBB871
	.quad	.LBE871
	.quad	.LBB872
	.quad	.LBE872
	.quad	0
	.quad	0
	.quad	.LBB860
	.quad	.LBE860
	.quad	.LBB861
	.quad	.LBE861
	.quad	.LBB862
	.quad	.LBE862
	.quad	.LBB863
	.quad	.LBE863
	.quad	.LBB864
	.quad	.LBE864
	.quad	.LBB865
	.quad	.LBE865
	.quad	.LBB866
	.quad	.LBE866
	.quad	0
	.quad	0
	.quad	.LBB882
	.quad	.LBE882
	.quad	.LBB893
	.quad	.LBE893
	.quad	0
	.quad	0
	.quad	.LBB886
	.quad	.LBE886
	.quad	.LBB890
	.quad	.LBE890
	.quad	.LBB892
	.quad	.LBE892
	.quad	0
	.quad	0
	.quad	.LBB887
	.quad	.LBE887
	.quad	.LBB888
	.quad	.LBE888
	.quad	.LBB889
	.quad	.LBE889
	.quad	0
	.quad	0
	.quad	.LBB894
	.quad	.LBE894
	.quad	.LBB895
	.quad	.LBE895
	.quad	.LBB896
	.quad	.LBE896
	.quad	.LBB897
	.quad	.LBE897
	.quad	.LBB898
	.quad	.LBE898
	.quad	.LBB899
	.quad	.LBE899
	.quad	.LBB900
	.quad	.LBE900
	.quad	0
	.quad	0
	.quad	.LBB917
	.quad	.LBE917
	.quad	.LBB941
	.quad	.LBE941
	.quad	.LBB942
	.quad	.LBE942
	.quad	.LBB943
	.quad	.LBE943
	.quad	.LBB944
	.quad	.LBE944
	.quad	.LBB945
	.quad	.LBE945
	.quad	0
	.quad	0
	.quad	.LBB918
	.quad	.LBE918
	.quad	.LBB925
	.quad	.LBE925
	.quad	.LBB940
	.quad	.LBE940
	.quad	0
	.quad	0
	.quad	.LBB919
	.quad	.LBE919
	.quad	.LBB923
	.quad	.LBE923
	.quad	.LBB924
	.quad	.LBE924
	.quad	0
	.quad	0
	.quad	.LBB920
	.quad	.LBE920
	.quad	.LBB921
	.quad	.LBE921
	.quad	.LBB922
	.quad	.LBE922
	.quad	0
	.quad	0
	.quad	.LBB936
	.quad	.LBE936
	.quad	.LBB939
	.quad	.LBE939
	.quad	0
	.quad	0
	.quad	.LBB937
	.quad	.LBE937
	.quad	.LBB938
	.quad	.LBE938
	.quad	0
	.quad	0
	.quad	.LBB946
	.quad	.LBE946
	.quad	.LBB947
	.quad	.LBE947
	.quad	.LBB948
	.quad	.LBE948
	.quad	0
	.quad	0
	.quad	.LBB949
	.quad	.LBE949
	.quad	.LBB950
	.quad	.LBE950
	.quad	.LBB951
	.quad	.LBE951
	.quad	0
	.quad	0
	.quad	.LBB952
	.quad	.LBE952
	.quad	.LBB953
	.quad	.LBE953
	.quad	.LBB954
	.quad	.LBE954
	.quad	.LBB955
	.quad	.LBE955
	.quad	.LBB956
	.quad	.LBE956
	.quad	.LBB957
	.quad	.LBE957
	.quad	0
	.quad	0
	.quad	.LBB961
	.quad	.LBE961
	.quad	.LBB964
	.quad	.LBE964
	.quad	0
	.quad	0
	.quad	.LBB962
	.quad	.LBE962
	.quad	.LBB963
	.quad	.LBE963
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB1076
	.quad	.LFE1076
	.quad	.LFB1093
	.quad	.LFE1093
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF1:
	.string	"long int"
.LASF374:
	.string	"__builtin_fwrite"
.LASF336:
	.string	"_Z6choldcPPdi"
.LASF157:
	.string	"wcsxfrm"
.LASF62:
	.string	"pthread_t"
.LASF34:
	.string	"_shortbuf"
.LASF110:
	.string	"strrchr"
.LASF389:
	.string	"_IO_lock_t"
.LASF297:
	.string	"_Z25Discount_Factors_BlockingPdidS_i"
.LASF316:
	.string	"pdDiscountingRatePath"
.LASF52:
	.string	"gp_offset"
.LASF355:
	.string	"stderr"
.LASF88:
	.string	"tm_yday"
.LASF243:
	.string	"iSuccess"
.LASF164:
	.string	"wscanf"
.LASF252:
	.string	"pdTotalDrift"
.LASF266:
	.string	"_Z20HJM_Yield_to_ForwardPdiS_"
.LASF277:
	.string	"error_text"
.LASF351:
	.string	"_Z12free_dmatrixPPdllll"
.LASF254:
	.string	"ddelt"
.LASF295:
	.string	"pdexpRes"
.LASF134:
	.string	"vfwscanf"
.LASF259:
	.string	"_Z16Discount_FactorsPdidS_"
.LASF217:
	.string	"towctrans"
.LASF21:
	.string	"_IO_write_end"
.LASF5:
	.string	"unsigned int"
.LASF79:
	.string	"ppdFactors"
.LASF312:
	.string	"lTrials"
.LASF170:
	.string	"__gnu_cxx"
.LASF15:
	.string	"_flags"
.LASF228:
	.string	"__nptr"
.LASF9:
	.string	"__int32_t"
.LASF74:
	.string	"dTenor"
.LASF327:
	.string	"dSumSimSwaptionPrice"
.LASF93:
	.string	"_S_refcount"
.LASF386:
	.string	"pthread_join"
.LASF276:
	.string	"_Z7nrerrorPKc"
.LASF248:
	.string	"pdVol"
.LASF272:
	.string	"u_low"
.LASF303:
	.string	"pdTotalVol"
.LASF256:
	.string	"HJM_Forward_to_Yield"
.LASF385:
	.string	"pthread_create"
.LASF136:
	.string	"vswscanf"
.LASF109:
	.string	"strpbrk"
.LASF255:
	.string	"dSumVol"
.LASF230:
	.string	"free_dvector"
.LASF23:
	.string	"_IO_buf_end"
.LASF365:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerIiE5__minE"
.LASF143:
	.string	"wcscpy"
.LASF257:
	.string	"Discount_Factors"
.LASF390:
	.string	"14pthread_attr_t"
.LASF298:
	.string	"HJM_SimPath_Yield"
.LASF75:
	.string	"dPaymentInterval"
.LASF260:
	.string	"pdDiscountFactors"
.LASF140:
	.string	"wcscat"
.LASF186:
	.string	"decimal_point"
.LASF178:
	.string	"__numeric_traits_integer<short int>"
.LASF288:
	.string	"lRndSeed"
.LASF201:
	.string	"n_sep_by_space"
.LASF215:
	.string	"wctrans_t"
.LASF284:
	.string	"threadIDs"
.LASF86:
	.string	"tm_year"
.LASF160:
	.string	"wmemcpy"
.LASF183:
	.string	"__gnu_debug"
.LASF122:
	.string	"fwscanf"
.LASF59:
	.string	"_pos"
.LASF101:
	.string	"strcpy"
.LASF310:
	.string	"pdSwaptionPrice"
.LASF321:
	.string	"iSwapStartTimeIndex"
.LASF199:
	.string	"p_sep_by_space"
.LASF354:
	.string	"stdout"
.LASF371:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerIlE5__minE"
.LASF26:
	.string	"_IO_save_end"
.LASF47:
	.string	"__count"
.LASF177:
	.string	"__numeric_traits_integer<char>"
.LASF60:
	.string	"float"
.LASF85:
	.string	"tm_mon"
.LASF305:
	.string	"HJM_SimPath_Forward_Blocking"
.LASF97:
	.string	"memmove"
.LASF387:
	.string	"sqrt"
.LASF381:
	.string	"malloc"
.LASF319:
	.string	"pdSwapDiscountFactors"
.LASF300:
	.string	"HJM_Correlations"
.LASF306:
	.string	"_Z28HJM_SimPath_Forward_BlockingPPdiidS_S_S0_Pli"
.LASF66:
	.string	"long long unsigned int"
.LASF353:
	.string	"stdin"
.LASF123:
	.string	"getwc"
.LASF138:
	.string	"vwscanf"
.LASF80:
	.string	"parm"
.LASF299:
	.string	"_Z17HJM_SimPath_YieldPPdiidS_S0_Pl"
.LASF104:
	.string	"strncpy"
.LASF293:
	.string	"Discount_Factors_opt"
.LASF103:
	.string	"strncat"
.LASF209:
	.string	"int_n_sign_posn"
.LASF286:
	.string	"_Z19HJM_SimPath_ForwardPPdiidS_S_S0_Pl"
.LASF212:
	.string	"localeconv"
.LASF44:
	.string	"__FILE"
.LASF25:
	.string	"_IO_backup_base"
.LASF268:
	.string	"print_usage"
.LASF36:
	.string	"_offset"
.LASF159:
	.string	"wmemcmp"
.LASF225:
	.string	"dMax"
.LASF139:
	.string	"wcrtomb"
.LASF244:
	.string	"CumNormalInv"
.LASF220:
	.string	"fprintf"
.LASF29:
	.string	"_fileno"
.LASF346:
	.string	"_Z7ivectorll"
.LASF133:
	.string	"vfwprintf"
.LASF338:
	.string	"_Z6gaussjPPdiS0_i"
.LASF247:
	.string	"_Z11HJM_FactorsPPdiiS_S0_"
.LASF383:
	.string	"fflush"
.LASF397:
	.string	"__cxa_atexit"
.LASF202:
	.string	"p_sign_posn"
.LASF238:
	.string	"__initialize_p"
.LASF378:
	.string	"puts"
.LASF78:
	.string	"pdYield"
.LASF95:
	.string	"Init"
.LASF8:
	.string	"size_t"
.LASF204:
	.string	"int_p_cs_precedes"
.LASF33:
	.string	"_vtable_offset"
.LASF290:
	.string	"GNU C++ 4.7.2"
.LASF106:
	.string	"strxfrm"
.LASF334:
	.string	"offset"
.LASF128:
	.string	"putwc"
.LASF49:
	.string	"__mbstate_t"
.LASF18:
	.string	"_IO_read_base"
.LASF356:
	.string	"NUM_TRIALS"
.LASF239:
	.string	"__priority"
.LASF322:
	.string	"iSwapTimePoints"
.LASF182:
	.string	"wcstoull"
.LASF294:
	.string	"_Z20Discount_Factors_optPdidS_"
.LASF57:
	.string	"_next"
.LASF264:
	.string	"randZ"
.LASF196:
	.string	"int_frac_digits"
.LASF382:
	.string	"free"
.LASF309:
	.string	"_Z21HJM_Swaption_BlockingPddddddiidS_PS_llii"
.LASF245:
	.string	"HJM_Factors"
.LASF120:
	.string	"fwide"
.LASF206:
	.string	"int_n_cs_precedes"
.LASF173:
	.string	"__max"
.LASF246:
	.string	"_Z12CumNormalInvd"
.LASF222:
	.string	"__fmt"
.LASF352:
	.string	"_Z7RanUnifPl"
.LASF195:
	.string	"negative_sign"
.LASF83:
	.string	"tm_hour"
.LASF48:
	.string	"__value"
.LASF100:
	.string	"strcoll"
.LASF107:
	.string	"memchr"
.LASF76:
	.string	"dYears"
.LASF188:
	.string	"grouping"
.LASF73:
	.string	"dMaturity"
.LASF328:
	.string	"dSumSquareSimSwaptionPrice"
.LASF249:
	.string	"ppdFacBreak"
.LASF221:
	.string	"__stream"
.LASF191:
	.string	"mon_decimal_point"
.LASF13:
	.string	"char"
.LASF308:
	.string	"HJM_Swaption_Blocking"
.LASF373:
	.string	"__fprintf_chk"
.LASF42:
	.string	"_mode"
.LASF317:
	.string	"pdPayoffDiscountFactors"
.LASF131:
	.string	"swscanf"
.LASF92:
	.string	"ptrdiff_t"
.LASF56:
	.string	"_IO_marker"
.LASF19:
	.string	"_IO_write_base"
.LASF219:
	.string	"wctype"
.LASF375:
	.string	"exit"
.LASF395:
	.string	"_GLOBAL__sub_I__Z12CumNormalInvd"
.LASF117:
	.string	"wchar_t"
.LASF332:
	.string	"__PRETTY_FUNCTION__"
.LASF45:
	.string	"__wch"
.LASF251:
	.string	"_Z10HJM_DriftsPdPS_iidS0_"
.LASF393:
	.string	"__numeric_traits_integer<long int>"
.LASF339:
	.string	"indxc"
.LASF376:
	.string	"__builtin_puts"
.LASF285:
	.string	"HJM_SimPath_Forward"
.LASF32:
	.string	"_cur_column"
.LASF127:
	.string	"mbsrtowcs"
.LASF156:
	.string	"wcstoul"
.LASF231:
	.string	"free_dmatrix"
.LASF372:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerIlE5__maxE"
.LASF153:
	.string	"wcstof"
.LASF151:
	.string	"wcsspn"
.LASF370:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerIsE5__maxE"
.LASF150:
	.string	"wcsrtombs"
.LASF61:
	.string	"long long int"
.LASF155:
	.string	"wcstol"
.LASF269:
	.string	"icdf_baseline"
.LASF180:
	.string	"long double"
.LASF24:
	.string	"_IO_save_base"
.LASF324:
	.string	"dSwaptionPayoff"
.LASF315:
	.string	"iSwapVectorLength"
.LASF68:
	.string	"4parm"
.LASF193:
	.string	"mon_grouping"
.LASF380:
	.string	"__printf_chk"
.LASF184:
	.string	"bool"
.LASF224:
	.string	"dRes"
.LASF198:
	.string	"p_cs_precedes"
.LASF391:
	.string	"__debug"
.LASF27:
	.string	"_markers"
.LASF258:
	.string	"_Z20HJM_Forward_to_YieldPdiS_"
.LASF98:
	.string	"memset"
.LASF320:
	.string	"pdSwapPayoffs"
.LASF233:
	.string	"dmatrix"
.LASF116:
	.string	"fgetws"
.LASF289:
	.string	"dTotalShock"
.LASF99:
	.string	"strcat"
.LASF350:
	.string	"_Z7dmatrixllll"
.LASF291:
	.string	"all.cpp"
.LASF341:
	.string	"ipiv"
.LASF37:
	.string	"__pad1"
.LASF38:
	.string	"__pad2"
.LASF39:
	.string	"__pad3"
.LASF40:
	.string	"__pad4"
.LASF41:
	.string	"__pad5"
.LASF2:
	.string	"long unsigned int"
.LASF369:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerIsE5__minE"
.LASF72:
	.string	"dCompounding"
.LASF281:
	.string	"factors"
.LASF174:
	.string	"_Value"
.LASF360:
	.string	"seed"
.LASF132:
	.string	"ungetwc"
.LASF361:
	.string	"swaption_seed"
.LASF287:
	.string	"ppdHJMPath"
.LASF214:
	.string	"wctype_t"
.LASF279:
	.string	"argc"
.LASF84:
	.string	"tm_mday"
.LASF102:
	.string	"strerror"
.LASF111:
	.string	"strstr"
.LASF307:
	.string	"sqrt_ddelt"
.LASF271:
	.string	"_Z13icdf_baselineiPdS_"
.LASF359:
	.string	"swaptions"
.LASF366:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerIiE5__maxE"
.LASF165:
	.string	"wcschr"
.LASF280:
	.string	"argv"
.LASF71:
	.string	"dStrike"
.LASF118:
	.string	"fputwc"
.LASF65:
	.string	"pthread_attr_t"
.LASF142:
	.string	"wcscoll"
.LASF94:
	.string	"_S_synced_with_stdio"
.LASF119:
	.string	"fputws"
.LASF226:
	.string	"printf"
.LASF394:
	.string	"__static_initialization_and_destruction_0"
.LASF234:
	.string	"nrow"
.LASF242:
	.string	"pdForward"
.LASF318:
	.string	"pdSwapRatePath"
.LASF114:
	.string	"btowc"
.LASF137:
	.string	"vwprintf"
.LASF70:
	.string	"dSimSwaptionStdError"
.LASF347:
	.string	"_Z12free_ivectorPill"
.LASF77:
	.string	"iFactors"
.LASF302:
	.string	"ppdHJMCorr"
.LASF125:
	.string	"mbrtowc"
.LASF17:
	.string	"_IO_read_end"
.LASF108:
	.string	"strchr"
.LASF216:
	.string	"iswctype"
.LASF304:
	.string	"ppdWeights"
.LASF126:
	.string	"mbsinit"
.LASF169:
	.string	"wmemchr"
.LASF292:
	.string	"/home/jad5ju/Progs/optimization/benchmarks/swaptions"
.LASF7:
	.string	"short int"
.LASF229:
	.string	"~Init"
.LASF189:
	.string	"int_curr_symbol"
.LASF176:
	.string	"__digits"
.LASF235:
	.string	"ncol"
.LASF340:
	.string	"indxr"
.LASF197:
	.string	"frac_digits"
.LASF124:
	.string	"mbrlen"
.LASF213:
	.string	"_Atomic_word"
.LASF273:
	.string	"u_high"
.LASF311:
	.string	"iRndSeed"
.LASF396:
	.string	"__stack_chk_fail"
.LASF203:
	.string	"n_sign_posn"
.LASF67:
	.string	"11__mbstate_t"
.LASF69:
	.string	"dSimSwaptionMeanPrice"
.LASF345:
	.string	"temp"
.LASF167:
	.string	"wcsrchr"
.LASF51:
	.string	"typedef __va_list_tag __va_list_tag"
.LASF283:
	.string	"pthread_custom_attr"
.LASF211:
	.string	"getwchar"
.LASF261:
	.string	"pdRatePath"
.LASF46:
	.string	"__wchb"
.LASF207:
	.string	"int_n_sep_by_space"
.LASF171:
	.string	"__numeric_traits_integer<int>"
.LASF335:
	.string	"choldc"
.LASF329:
	.string	"worker"
.LASF148:
	.string	"wcsncmp"
.LASF349:
	.string	"_Z12free_dvectorPdll"
.LASF200:
	.string	"n_cs_precedes"
.LASF392:
	.string	"ios_base"
.LASF237:
	.string	"ivector"
.LASF267:
	.string	"_Z7serialBPPdS0_iii"
.LASF53:
	.string	"fp_offset"
.LASF145:
	.string	"wcsftime"
.LASF325:
	.string	"dDiscSwaptionPayoff"
.LASF194:
	.string	"positive_sign"
.LASF358:
	.string	"nSwaptions"
.LASF168:
	.string	"wcsstr"
.LASF262:
	.string	"name"
.LASF223:
	.string	"RanUnif"
.LASF343:
	.string	"irow"
.LASF22:
	.string	"_IO_buf_base"
.LASF250:
	.string	"HJM_Drifts"
.LASF161:
	.string	"wmemmove"
.LASF344:
	.string	"pivinv"
.LASF163:
	.string	"wprintf"
.LASF35:
	.string	"_lock"
.LASF263:
	.string	"serialB"
.LASF12:
	.string	"sizetype"
.LASF185:
	.string	"lconv"
.LASF31:
	.string	"_old_offset"
.LASF282:
	.string	"threads"
.LASF50:
	.string	"_IO_FILE"
.LASF313:
	.string	"iFreqRatio"
.LASF112:
	.string	"wint_t"
.LASF55:
	.string	"reg_save_area"
.LASF342:
	.string	"icol"
.LASF270:
	.string	"_Z11print_usagePc"
.LASF152:
	.string	"wcstod"
.LASF388:
	.string	"__assert_fail"
.LASF166:
	.string	"wcspbrk"
.LASF331:
	.string	"chunksize"
.LASF82:
	.string	"tm_min"
.LASF113:
	.string	"mbstate_t"
.LASF154:
	.string	"wcstok"
.LASF91:
	.string	"tm_zone"
.LASF323:
	.string	"dSwapVectorYears"
.LASF162:
	.string	"wmemset"
.LASF301:
	.string	"_Z16HJM_CorrelationsPPdiiS0_"
.LASF357:
	.string	"nThreads"
.LASF3:
	.string	"unsigned char"
.LASF253:
	.string	"ppdDrifts"
.LASF362:
	.string	"dSumSimSwaptionPrice_global_ptr"
.LASF326:
	.string	"dFixedLegValue"
.LASF58:
	.string	"_sbuf"
.LASF337:
	.string	"gaussj"
.LASF364:
	.string	"__dso_handle"
.LASF20:
	.string	"_IO_write_ptr"
.LASF187:
	.string	"thousands_sep"
.LASF367:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerImE8__digitsE"
.LASF241:
	.string	"HJM_Yield_to_Forward"
.LASF105:
	.string	"strtok"
.LASF379:
	.string	"strtol"
.LASF348:
	.string	"_Z7dvectorll"
.LASF121:
	.string	"fwprintf"
.LASF330:
	.string	"_Z6workerPv"
.LASF54:
	.string	"overflow_arg_area"
.LASF179:
	.string	"wcstold"
.LASF158:
	.string	"wctob"
.LASF377:
	.string	"fwrite"
.LASF190:
	.string	"currency_symbol"
.LASF181:
	.string	"wcstoll"
.LASF172:
	.string	"__min"
.LASF384:
	.string	"pthread_attr_init"
.LASF274:
	.string	"_Z4dMaxdd"
.LASF210:
	.string	"setlocale"
.LASF368:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerIcE5__maxE"
.LASF10:
	.string	"__off_t"
.LASF129:
	.string	"putwchar"
.LASF333:
	.string	"offsetThread"
.LASF6:
	.string	"signed char"
.LASF192:
	.string	"mon_thousands_sep"
.LASF4:
	.string	"short unsigned int"
.LASF81:
	.string	"tm_sec"
.LASF96:
	.string	"memcpy"
.LASF278:
	.string	"main"
.LASF144:
	.string	"wcscspn"
.LASF227:
	.string	"atoi"
.LASF265:
	.string	"BLOCKSIZE"
.LASF89:
	.string	"tm_isdst"
.LASF16:
	.string	"_IO_read_ptr"
.LASF149:
	.string	"wcsncpy"
.LASF115:
	.string	"fgetwc"
.LASF232:
	.string	"dvector"
.LASF205:
	.string	"int_p_sep_by_space"
.LASF0:
	.string	"double"
.LASF141:
	.string	"wcscmp"
.LASF147:
	.string	"wcsncat"
.LASF90:
	.string	"tm_gmtoff"
.LASF236:
	.string	"free_ivector"
.LASF64:
	.string	"__align"
.LASF28:
	.string	"_chain"
.LASF175:
	.string	"__numeric_traits_integer<long unsigned int>"
.LASF14:
	.string	"FILE"
.LASF218:
	.string	"wctrans"
.LASF135:
	.string	"vswprintf"
.LASF87:
	.string	"tm_wday"
.LASF30:
	.string	"_flags2"
.LASF130:
	.string	"swprintf"
.LASF363:
	.string	"dSumSquareSimSwaptionPrice_global_ptr"
.LASF275:
	.string	"nrerror"
.LASF63:
	.string	"__size"
.LASF208:
	.string	"int_p_sign_posn"
.LASF296:
	.string	"Discount_Factors_Blocking"
.LASF146:
	.string	"wcslen"
.LASF240:
	.string	"__ioinit"
.LASF43:
	.string	"_unused2"
.LASF314:
	.string	"dStrikeCont"
.LASF11:
	.string	"__off64_t"
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu/Linaro 4.7.2-2ubuntu1) 4.7.2"
	.section	.note.GNU-stack,"",@progbits
