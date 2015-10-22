	.file	"HJM_SimPath_Forward_Blocking.cpp"
	.text
.Ltext0:
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.section	.text.unlikely
.Ltext_cold0:
	.text
	.globl	_Z7serialBPPdS0_iii
	.type	_Z7serialBPPdS0_iii, @function
_Z7serialBPPdS0_iii:
.LFB74:
	.file 1 "/if16/jad5ju/Progs/opensource/parsec-3.0//pkgs/apps/swaptions/src/HJM_SimPath_Forward_Blocking.cpp"
	.loc 1 61 0
	.cfi_startproc
.LBB5:
	.loc 1 64 0
	testl	%r8d, %r8d
	jle	.L32
.LBE5:
	.loc 1 61 0
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%r8d, %eax
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	subl	$1, %eax
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	addq	$1, %rax
	movq	%rsi, %r14
	movq	%rdi, %rbp
.LBB8:
	.loc 1 64 0
	xorl	%r15d, %r15d
.LBE8:
	.loc 1 61 0
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movl	%ecx, 40(%rsp)
	movl	%edx, 44(%rsp)
	movslq	%edx, %rcx
	subl	$1, %edx
	leaq	0(,%rcx,8), %rbx
	movq	%rax, 32(%rsp)
	leaq	1(%rcx,%rdx), %rdx
	salq	$3, %rdx
	movq	%rdx, 24(%rsp)
	.p2align 4,,10
	.p2align 3
.L3:
.LBB9:
.LBB6:
	.loc 1 65 0 discriminator 1
	movl	44(%rsp), %esi
	movq	%rbx, 8(%rsp)
	testl	%esi, %esi
	jle	.L6
	.p2align 4,,10
	.p2align 3
.L10:
.LBB7:
	.loc 1 66 0 discriminator 1
	cmpl	$1, 40(%rsp)
	jle	.L7
	movl	40(%rsp), %edi
	.loc 1 67 0 discriminator 3
	movq	8(%rsp), %r9
	.loc 1 66 0 discriminator 3
	movl	$2, %r13d
	.loc 1 67 0 discriminator 3
	movq	(%r14,%r15,8), %r10
	leal	-2(%rdi), %r8d
	movq	%r9, %r12
	addq	0(%rbp,%r15,8), %r12
	movsd	(%r10,%r9), %xmm0
	andl	$3, %r8d
	movl	%r8d, 16(%rsp)
	call	_Z12CumNormalInvd
	.loc 1 66 0 discriminator 3
	cmpl	40(%rsp), %r13d
	movq	8(%rsp), %r11
	.loc 1 67 0 discriminator 3
	movsd	%xmm0, (%r12)
	.loc 1 66 0 discriminator 3
	movl	16(%rsp), %eax
	leaq	(%r11,%rbx), %r12
	je	.L7
	testl	%eax, %eax
	je	.L11
	cmpl	$1, %eax
	je	.L25
	cmpl	$2, %eax
	je	.L26
	.loc 1 67 0
	movq	(%r14,%r15,8), %rcx
	movq	%r12, %r13
	addq	0(%rbp,%r15,8), %r13
	movsd	(%rcx,%r12), %xmm0
	addq	%rbx, %r12
	call	_Z12CumNormalInvd
	movsd	%xmm0, 0(%r13)
	.loc 1 66 0
	movl	$3, %r13d
.L26:
	.loc 1 67 0
	movq	(%r14,%r15,8), %rsi
	movq	%r12, %rdx
	addq	0(%rbp,%r15,8), %rdx
	.loc 1 66 0
	addl	$1, %r13d
	.loc 1 67 0
	movsd	(%rsi,%r12), %xmm0
	addq	%rbx, %r12
	movq	%rdx, 16(%rsp)
	call	_Z12CumNormalInvd
	movq	16(%rsp), %rdi
	movsd	%xmm0, (%rdi)
.L25:
	movq	(%r14,%r15,8), %r9
	movq	%r12, %r8
	addq	0(%rbp,%r15,8), %r8
	.loc 1 66 0
	addl	$1, %r13d
	.loc 1 67 0
	movsd	(%r9,%r12), %xmm0
	addq	%rbx, %r12
	movq	%r8, 16(%rsp)
	call	_Z12CumNormalInvd
	.loc 1 66 0
	cmpl	40(%rsp), %r13d
	.loc 1 67 0
	movq	16(%rsp), %r10
	movsd	%xmm0, (%r10)
	.loc 1 66 0
	je	.L7
.L11:
	.loc 1 67 0 discriminator 3
	movq	(%r14,%r15,8), %rax
	movq	%r12, %r11
	.loc 1 66 0 discriminator 3
	addl	$4, %r13d
	.loc 1 67 0 discriminator 3
	addq	0(%rbp,%r15,8), %r11
	movsd	(%rax,%r12), %xmm0
	addq	%rbx, %r12
	movq	%r11, 16(%rsp)
	call	_Z12CumNormalInvd
	movq	16(%rsp), %rcx
	movq	(%r14,%r15,8), %rsi
	movq	%r12, %rdx
	addq	0(%rbp,%r15,8), %rdx
	movsd	%xmm0, (%rcx)
	movsd	(%rsi,%r12), %xmm0
	addq	%rbx, %r12
	movq	%rdx, 16(%rsp)
	call	_Z12CumNormalInvd
	movq	16(%rsp), %rdi
	movq	(%r14,%r15,8), %r9
	movq	%r12, %r8
	addq	0(%rbp,%r15,8), %r8
	movsd	%xmm0, (%rdi)
	movsd	(%r9,%r12), %xmm0
	addq	%rbx, %r12
	movq	%r8, 16(%rsp)
	call	_Z12CumNormalInvd
	movq	16(%rsp), %r10
	movq	(%r14,%r15,8), %rax
	movq	%r12, %r11
	addq	0(%rbp,%r15,8), %r11
	movsd	%xmm0, (%r10)
	movsd	(%rax,%r12), %xmm0
	addq	%rbx, %r12
	movq	%r11, 16(%rsp)
	call	_Z12CumNormalInvd
	.loc 1 66 0 discriminator 3
	cmpl	40(%rsp), %r13d
	.loc 1 67 0 discriminator 3
	movq	16(%rsp), %rcx
	movsd	%xmm0, (%rcx)
	.loc 1 66 0 discriminator 3
	jne	.L11
.L7:
	addq	$8, 8(%rsp)
	movq	8(%rsp), %r12
.LBE7:
	.loc 1 65 0
	cmpq	24(%rsp), %r12
	jne	.L10
.L6:
	addq	$1, %r15
.LBE6:
	.loc 1 64 0
	cmpq	32(%rsp), %r15
	jne	.L3
.LBE9:
	.loc 1 71 0
	addq	$56, %rsp
	.cfi_def_cfa_offset 56
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
.L32:
	rep ret
	.cfi_endproc
.LFE74:
	.size	_Z7serialBPPdS0_iii, .-_Z7serialBPPdS0_iii
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.text.unlikely
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4,,15
	.globl	_Z28HJM_SimPath_Forward_BlockingPPdiidS_S_S0_Pli
	.type	_Z28HJM_SimPath_Forward_BlockingPPdiidS_S_S0_Pli, @function
_Z28HJM_SimPath_Forward_BlockingPPdiidS_S_S0_Pli:
.LFB75:
	.loc 1 82 0
	.cfi_startproc
.LVL0:
.LBB20:
	.loc 1 92 0
	pxor	%xmm1, %xmm1
.LBE20:
	.loc 1 82 0
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%edx, %r14d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
.LBB36:
	.loc 1 92 0
	cvtsi2sd	%esi, %xmm1
.LBE36:
	.loc 1 82 0
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rcx, %rbx
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	.loc 1 82 0
	movq	%rdi, 112(%rsp)
	movl	%esi, 60(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r9, 152(%rsp)
	movq	224(%rsp), %r12
.LBB37:
	.loc 1 92 0
	divsd	%xmm1, %xmm0
.LVL1:
	.loc 1 93 0
	sqrtsd	%xmm0, %xmm7
	ucomisd	%xmm7, %xmm7
	.loc 1 92 0
	movsd	%xmm0, 24(%rsp)
.LVL2:
	.loc 1 93 0
	movsd	%xmm7, 32(%rsp)
	jp	.L252
.LVL3:
.L35:
	.loc 1 95 0
	movl	60(%rsp), %ebp
	movl	232(%rsp), %eax
	xorl	%edx, %edx
	xorl	%edi, %edi
	imull	%ebp, %eax
	subl	$1, %eax
	cltq
	movq	%rax, %r15
	movq	%rax, 128(%rsp)
	leal	-1(%r14), %eax
	movq	%r15, %rcx
	cltq
	movq	%rax, %r13
	movq	%rax, %rsi
	movq	%rax, 136(%rsp)
	call	_Z7dmatrixllll
.LVL4:
	.loc 1 96 0
	xorl	%edx, %edx
	movq	%r15, %rcx
	xorl	%edi, %edi
	movq	%r13, %rsi
	.loc 1 95 0
	movq	%rax, 104(%rsp)
.LVL5:
	.loc 1 96 0
	call	_Z7dmatrixllll
.LVL6:
.LBB21:
	.loc 1 102 0
	movl	232(%rsp), %ecx
.LBE21:
	.loc 1 96 0
	movq	%rax, 64(%rsp)
.LVL7:
	movl	232(%rsp), %edx
.LBB22:
	.loc 1 102 0
	testl	%ecx, %ecx
	jle	.L37
	movslq	232(%rsp), %r8
	leal	-1(%rdx), %esi
	leal	-10(%rbp), %r11d
	movq	112(%rsp), %r13
	movl	%ebp, %r10d
	movq	%r12, 224(%rsp)
	andl	$-8, %r11d
	leaq	8(,%rsi,8), %r15
	movl	%esi, 124(%rsp)
	addl	$9, %r11d
	xorl	%ebp, %ebp
	movq	%rsi, 8(%rsp)
	movq	%r8, 88(%rsp)
	salq	$3, %r8
	movl	%r14d, 16(%rsp)
	movq	%r8, %r9
	movq	%r8, 72(%rsp)
	movl	%r10d, %r8d
	movq	%r9, %r12
.LVL8:
.L38:
	.loc 1 103 0 discriminator 1
	testl	%r8d, %r8d
	jle	.L40
	movq	0(%r13), %r14
	.loc 1 103 0 is_stmt 0
	movq	%rbp, %rax
	xorl	%r10d, %r10d
.LVL9:
	.p2align 4,,10
	.p2align 3
.L41:
	.loc 1 104 0 is_stmt 1
	movsd	(%rbx,%r10,8), %xmm0
	.loc 1 106 0
	cmpl	$1, %r8d
	.loc 1 104 0
	movsd	%xmm0, (%r14,%rax)
.LVL10:
	.loc 1 106 0
	je	.L40
	cmpl	$9, %r8d
	jle	.L75
	.loc 1 107 0
	movq	8(%r13), %rsi
	leaq	208(%r13), %rdx
	movq	16(%r13), %rdi
	movq	24(%r13), %r9
	leal	-9(%r11), %ecx
	prefetcht0	(%rdx)
	movq	32(%r13), %rdx
	movq	$0, (%rsi,%rax)
	movq	40(%r13), %rsi
	shrl	$3, %ecx
	movq	$0, (%rdi,%rax)
	movq	$0, (%r9,%rax)
	andl	$1, %ecx
.LVL11:
	movq	$0, (%rdx,%rax)
.LVL12:
	movq	48(%r13), %rdi
	movq	56(%r13), %r9
	movq	64(%r13), %rdx
	movq	$0, (%rsi,%rax)
.LVL13:
	movl	$9, %esi
	cmpl	%r11d, %esi
	movq	$0, (%rdi,%rax)
.LVL14:
	movq	$0, (%r9,%rax)
.LVL15:
	movq	$0, (%rdx,%rax)
	leaq	272(%r13), %rdx
	je	.L42
	testl	%ecx, %ecx
	je	.L43
	movq	-200(%rdx), %rcx
	movq	-192(%rdx), %rsi
	prefetcht0	(%rdx)
	movq	-184(%rdx), %rdi
	movq	-176(%rdx), %r9
	movq	$0, (%rcx,%rax)
.LVL16:
	movq	$0, (%rsi,%rax)
.LVL17:
	movq	-168(%rdx), %rcx
	movq	-160(%rdx), %rsi
	movq	$0, (%rdi,%rax)
.LVL18:
	movq	-152(%rdx), %rdi
	movq	-144(%rdx), %rdx
	movq	$0, (%r9,%rax)
.LVL19:
	movq	$0, (%rcx,%rax)
.LVL20:
	movq	$0, (%rsi,%rax)
.LVL21:
	movl	$17, %esi
	cmpl	%r11d, %esi
	movq	$0, (%rdi,%rax)
.LVL22:
	movq	$0, (%rdx,%rax)
	leaq	336(%r13), %rdx
	je	.L42
.L43:
	.loc 1 107 0 is_stmt 0 discriminator 3
	movq	-200(%rdx), %r9
	movq	-192(%rdx), %rcx
	prefetcht0	(%rdx)
	movq	-184(%rdx), %rdi
	addl	$16, %esi
	movq	$0, (%r9,%rax)
.LVL23:
	movq	-176(%rdx), %r9
	movq	$0, (%rcx,%rax)
.LVL24:
	movq	-168(%rdx), %rcx
	movq	$0, (%rdi,%rax)
.LVL25:
	movq	-160(%rdx), %rdi
	movq	$0, (%r9,%rax)
.LVL26:
	movq	-152(%rdx), %r9
	movq	$0, (%rcx,%rax)
.LVL27:
	movq	-144(%rdx), %rcx
	movq	$0, (%rdi,%rax)
.LVL28:
	leaq	64(%rdx), %rdi
	subq	$-128, %rdx
	movq	$0, (%r9,%rax)
.LVL29:
	movq	-264(%rdx), %r9
	movq	$0, (%rcx,%rax)
.LVL30:
	movq	-256(%rdx), %rcx
	prefetcht0	(%rdi)
	movq	-248(%rdx), %rdi
	movq	$0, (%r9,%rax)
.LVL31:
	movq	-240(%rdx), %r9
	movq	$0, (%rcx,%rax)
.LVL32:
	movq	-232(%rdx), %rcx
	movq	$0, (%rdi,%rax)
.LVL33:
	movq	-224(%rdx), %rdi
	movq	$0, (%r9,%rax)
.LVL34:
	movq	-216(%rdx), %r9
	movq	$0, (%rcx,%rax)
.LVL35:
	movq	-208(%rdx), %rcx
	cmpl	%r11d, %esi
	movq	$0, (%rdi,%rax)
.LVL36:
	movq	$0, (%r9,%rax)
.LVL37:
	movq	$0, (%rcx,%rax)
.LVL38:
	jne	.L43
.LVL39:
.L42:
	movslq	%esi, %rdx
	movl	%esi, %edi
	leaq	0(%r13,%rdx,8), %r9
	notl	%edi
	addl	%r8d, %edi
	.loc 1 107 0
	movq	(%r9), %rcx
	andl	$7, %edi
	leaq	8(%r9), %rdx
	movq	$0, (%rcx,%rax)
	.loc 1 106 0 is_stmt 1
	leal	1(%rsi), %ecx
	cmpl	%ecx, %r8d
	jle	.L231
	testl	%edi, %edi
	je	.L44
	cmpl	$1, %edi
	je	.L199
	cmpl	$2, %edi
	je	.L200
	cmpl	$3, %edi
	je	.L201
	cmpl	$4, %edi
	je	.L202
	cmpl	$5, %edi
	je	.L203
	cmpl	$6, %edi
	je	.L204
	.loc 1 107 0
	movq	8(%r9), %rdx
	.loc 1 106 0
	leal	2(%rsi), %ecx
	.loc 1 107 0
	movq	$0, (%rdx,%rax)
	leaq	16(%r9), %rdx
.L204:
	movq	(%rdx), %rsi
	.loc 1 106 0
	addl	$1, %ecx
	addq	$8, %rdx
	.loc 1 107 0
	movq	$0, (%rsi,%rax)
.L203:
	movq	(%rdx), %r9
	.loc 1 106 0
	addl	$1, %ecx
	addq	$8, %rdx
	.loc 1 107 0
	movq	$0, (%r9,%rax)
.L202:
	movq	(%rdx), %rdi
	.loc 1 106 0
	addl	$1, %ecx
	addq	$8, %rdx
	.loc 1 107 0
	movq	$0, (%rdi,%rax)
.L201:
	movq	(%rdx), %rsi
	.loc 1 106 0
	addl	$1, %ecx
	addq	$8, %rdx
	.loc 1 107 0
	movq	$0, (%rsi,%rax)
.L200:
	movq	(%rdx), %r9
	.loc 1 106 0
	addl	$1, %ecx
	addq	$8, %rdx
	.loc 1 107 0
	movq	$0, (%r9,%rax)
.L199:
	movq	(%rdx), %rdi
	.loc 1 106 0
	addl	$1, %ecx
	addq	$8, %rdx
	cmpl	%ecx, %r8d
	.loc 1 107 0
	movq	$0, (%rdi,%rax)
	.loc 1 106 0
	jle	.L231
.L44:
	.loc 1 107 0
	movq	(%rdx), %rsi
	movq	8(%rdx), %r9
	.loc 1 106 0
	addl	$8, %ecx
	.loc 1 107 0
	movq	16(%rdx), %rdi
	addq	$64, %rdx
	movq	$0, (%rsi,%rax)
	movq	-40(%rdx), %rsi
	movq	$0, (%r9,%rax)
	movq	-32(%rdx), %r9
	movq	$0, (%rdi,%rax)
	movq	-24(%rdx), %rdi
	movq	$0, (%rsi,%rax)
	movq	-16(%rdx), %rsi
	movq	$0, (%r9,%rax)
	movq	-8(%rdx), %r9
	.loc 1 106 0
	cmpl	%ecx, %r8d
	.loc 1 107 0
	movq	$0, (%rdi,%rax)
	movq	$0, (%rsi,%rax)
	movq	$0, (%r9,%rax)
	.loc 1 106 0
	jg	.L44
.L231:
.LVL40:
	addq	$1, %r10
.LVL41:
	addq	%r12, %rax
	.loc 1 103 0
	cmpl	%r10d, %r8d
	jg	.L41
.L40:
	addq	$8, %rbp
	.loc 1 102 0
	cmpq	%r15, %rbp
	jne	.L38
	movl	16(%rsp), %r14d
	movq	8(%rsp), %r10
	movq	88(%rsp), %rax
	movq	72(%rsp), %rbp
	movq	224(%rsp), %r12
	leal	-9(%r14), %edx
	leaq	1(%r10,%rax), %rcx
	movq	%rbp, 80(%rsp)
	movl	%edx, 96(%rsp)
	shrl	$3, %edx
	leal	8(,%rdx,8), %ebx
.LVL42:
	salq	$3, %rcx
	movq	%rcx, 144(%rsp)
	movl	%ebx, 120(%rsp)
.LVL43:
.L46:
.LBE22:
.LBB23:
.LBB24:
	.loc 1 118 0
	cmpl	$1, 60(%rsp)
	movq	80(%rsp), %rbx
	movl	$1, 8(%rsp)
	jle	.L49
.LVL44:
	.p2align 4,,10
	.p2align 3
.L86:
	.loc 1 119 0
	testl	%r14d, %r14d
	jle	.L56
	cmpl	$8, %r14d
	jle	.L77
	movq	64(%rsp), %r8
	movl	120(%rsp), %r15d
	xorl	%r13d, %r13d
	movl	%r14d, 16(%rsp)
	leaq	80(%r8), %rbp
.LVL45:
	.p2align 4,,10
	.p2align 3
.L54:
	.loc 1 121 0
	movq	%rbx, %r14
	addq	-80(%rbp), %r14
	movq	%r12, %rdi
	prefetcht0	0(%rbp)
	call	_Z7RanUnifPl
.LVL46:
	movq	%r12, %rdi
	addl	$8, %r13d
	addq	$64, %rbp
	movsd	%xmm0, (%r14)
	movq	%rbx, %r14
	addq	-136(%rbp), %r14
	call	_Z7RanUnifPl
.LVL47:
	movq	%r12, %rdi
	movsd	%xmm0, (%r14)
	movq	%rbx, %r14
	addq	-128(%rbp), %r14
	call	_Z7RanUnifPl
.LVL48:
	movq	%r12, %rdi
	movsd	%xmm0, (%r14)
	movq	%rbx, %r14
	addq	-120(%rbp), %r14
	call	_Z7RanUnifPl
.LVL49:
	movq	%r12, %rdi
	movsd	%xmm0, (%r14)
	movq	%rbx, %r14
	addq	-112(%rbp), %r14
	call	_Z7RanUnifPl
.LVL50:
	movq	%r12, %rdi
	movsd	%xmm0, (%r14)
	movq	%rbx, %r14
	addq	-104(%rbp), %r14
	call	_Z7RanUnifPl
.LVL51:
	movq	%r12, %rdi
	movsd	%xmm0, (%r14)
	movq	%rbx, %r14
	addq	-96(%rbp), %r14
	call	_Z7RanUnifPl
.LVL52:
	movq	%r12, %rdi
	movsd	%xmm0, (%r14)
	movq	%rbx, %r14
	addq	-88(%rbp), %r14
	call	_Z7RanUnifPl
.LVL53:
	cmpl	%r15d, %r13d
	movsd	%xmm0, (%r14)
	jne	.L54
	movl	16(%rsp), %r14d
.L53:
	movq	64(%rsp), %rdi
	movslq	%r13d, %r11
	movl	%r13d, %r9d
	notl	%r9d
	movq	%rbx, %rbp
	.loc 1 119 0
	leal	1(%r13), %r15d
	addl	%r14d, %r9d
	leaq	(%rdi,%r11,8), %rsi
	andl	$7, %r9d
	.loc 1 121 0
	movq	%r12, %rdi
	movl	%r9d, 40(%rsp)
	addq	(%rsi), %rbp
	movq	%rsi, 16(%rsp)
	call	_Z7RanUnifPl
.LVL54:
	movq	16(%rsp), %r10
	.loc 1 119 0
	cmpl	%r15d, %r14d
	movl	40(%rsp), %eax
	.loc 1 121 0
	movsd	%xmm0, 0(%rbp)
	leaq	8(%r10), %rbp
	.loc 1 119 0
	jle	.L56
	testl	%eax, %eax
	je	.L55
	cmpl	$1, %eax
	je	.L193
	cmpl	$2, %eax
	je	.L194
	cmpl	$3, %eax
	je	.L195
	cmpl	$4, %eax
	je	.L196
	cmpl	$5, %eax
	je	.L197
	cmpl	$6, %eax
	je	.L198
	.loc 1 121 0
	movq	%rbx, %r15
	movq	%r12, %rdi
	addq	8(%r10), %r15
	movq	%r10, 16(%rsp)
	call	_Z7RanUnifPl
.LVL55:
	movq	16(%rsp), %rcx
	movsd	%xmm0, (%r15)
	.loc 1 119 0
	leal	2(%r13), %r15d
	leaq	16(%rcx), %rbp
.L198:
	.loc 1 121 0
	movq	%rbx, %rdx
	addq	0(%rbp), %rdx
	movq	%r12, %rdi
	.loc 1 119 0
	addl	$1, %r15d
	addq	$8, %rbp
	.loc 1 121 0
	movq	%rdx, 16(%rsp)
	call	_Z7RanUnifPl
.LVL56:
	movq	16(%rsp), %r8
	movsd	%xmm0, (%r8)
.L197:
	movq	%rbx, %r13
	addq	0(%rbp), %r13
	movq	%r12, %rdi
	.loc 1 119 0
	addl	$1, %r15d
	addq	$8, %rbp
	.loc 1 121 0
	movq	%r13, 16(%rsp)
	call	_Z7RanUnifPl
.LVL57:
	movq	16(%rsp), %r11
	movsd	%xmm0, (%r11)
.L196:
	movq	%rbx, %rdi
	addq	0(%rbp), %rdi
	.loc 1 119 0
	addl	$1, %r15d
	addq	$8, %rbp
	.loc 1 121 0
	movq	%rdi, 16(%rsp)
	movq	%r12, %rdi
	call	_Z7RanUnifPl
.LVL58:
	movq	16(%rsp), %rsi
	movsd	%xmm0, (%rsi)
.L195:
	movq	%rbx, %r9
	addq	0(%rbp), %r9
	movq	%r12, %rdi
	.loc 1 119 0
	addl	$1, %r15d
	addq	$8, %rbp
	.loc 1 121 0
	movq	%r9, 16(%rsp)
	call	_Z7RanUnifPl
.LVL59:
	movq	16(%rsp), %r10
	movsd	%xmm0, (%r10)
.L194:
	movq	%rbx, %rax
	addq	0(%rbp), %rax
	movq	%r12, %rdi
	.loc 1 119 0
	addl	$1, %r15d
	addq	$8, %rbp
	.loc 1 121 0
	movq	%rax, 16(%rsp)
	call	_Z7RanUnifPl
.LVL60:
	movq	16(%rsp), %rcx
	movsd	%xmm0, (%rcx)
.L193:
	movq	%rbx, %rdx
	addq	0(%rbp), %rdx
	movq	%r12, %rdi
	.loc 1 119 0
	addl	$1, %r15d
	addq	$8, %rbp
	.loc 1 121 0
	movq	%rdx, 16(%rsp)
	call	_Z7RanUnifPl
.LVL61:
	movq	16(%rsp), %r8
	.loc 1 119 0
	cmpl	%r15d, %r14d
	.loc 1 121 0
	movsd	%xmm0, (%r8)
	.loc 1 119 0
	jle	.L56
.L55:
	.loc 1 121 0
	movq	%rbx, %r13
	addq	0(%rbp), %r13
	movq	%r12, %rdi
	call	_Z7RanUnifPl
.LVL62:
	movq	%r12, %rdi
	.loc 1 119 0
	addl	$8, %r15d
	addq	$64, %rbp
	.loc 1 121 0
	movsd	%xmm0, 0(%r13)
	movq	%rbx, %r13
	addq	-56(%rbp), %r13
	call	_Z7RanUnifPl
.LVL63:
	movq	%r12, %rdi
	movsd	%xmm0, 0(%r13)
	movq	%rbx, %r13
	addq	-48(%rbp), %r13
	call	_Z7RanUnifPl
.LVL64:
	movq	%r12, %rdi
	movsd	%xmm0, 0(%r13)
	movq	%rbx, %r13
	addq	-40(%rbp), %r13
	call	_Z7RanUnifPl
.LVL65:
	movq	%r12, %rdi
	movsd	%xmm0, 0(%r13)
	movq	%rbx, %r13
	addq	-32(%rbp), %r13
	call	_Z7RanUnifPl
.LVL66:
	movq	%r12, %rdi
	movsd	%xmm0, 0(%r13)
	movq	%rbx, %r13
	addq	-24(%rbp), %r13
	call	_Z7RanUnifPl
.LVL67:
	movq	%r12, %rdi
	movsd	%xmm0, 0(%r13)
	movq	%rbx, %r13
	addq	-16(%rbp), %r13
	call	_Z7RanUnifPl
.LVL68:
	movq	%r12, %rdi
	movsd	%xmm0, 0(%r13)
	movq	%rbx, %r13
	addq	-8(%rbp), %r13
	call	_Z7RanUnifPl
.LVL69:
	.loc 1 119 0
	cmpl	%r15d, %r14d
	.loc 1 121 0
	movsd	%xmm0, 0(%r13)
	.loc 1 119 0
	jg	.L55
.L56:
	.loc 1 118 0
	addl	$1, 8(%rsp)
.LVL70:
	addq	72(%rsp), %rbx
	movl	8(%rsp), %r15d
.LVL71:
	cmpl	60(%rsp), %r15d
	jne	.L86
.LVL72:
.L49:
	addq	$8, 80(%rsp)
	movq	80(%rsp), %rbp
.LBE24:
	.loc 1 116 0
	cmpq	144(%rsp), %rbp
	jne	.L46
.LVL73:
.LBE23:
.LBB26:
.LBB27:
	.loc 1 64 0
	testl	%r14d, %r14d
	jle	.L64
.LVL74:
.L50:
	movl	124(%rsp), %esi
	movq	88(%rsp), %r11
.LBB28:
	.loc 1 65 0
	xorl	%eax, %eax
	movq	104(%rsp), %rbp
	movl	%r14d, 72(%rsp)
	movq	%rax, %rcx
	leaq	0(,%r11,8), %rbx
	leaq	1(%rsi,%r11), %r9
	leaq	0(,%r9,8), %r10
	movq	%r10, 40(%rsp)
.LVL75:
.L61:
	movl	232(%rsp), %edx
	movq	%rbx, 8(%rsp)
	testl	%edx, %edx
	jle	.L59
	movq	64(%rsp), %r14
	movq	%rcx, %r15
.LVL76:
	.p2align 4,,10
	.p2align 3
.L84:
.LBB29:
	.loc 1 66 0
	cmpl	$1, 60(%rsp)
	jle	.L60
	movl	60(%rsp), %r8d
	.loc 1 67 0
	movq	8(%rsp), %r13
	movq	(%r14,%r15,8), %r11
	leal	-2(%r8), %r12d
	movsd	(%r11,%r13), %xmm0
	andl	$3, %r12d
	movl	%r12d, 16(%rsp)
	movq	%r13, %r12
	.loc 1 66 0
	movl	$2, %r13d
	.loc 1 67 0
	addq	0(%rbp,%r15,8), %r12
	call	_Z12CumNormalInvd
.LVL77:
	.loc 1 66 0
	cmpl	60(%rsp), %r13d
	movq	8(%rsp), %rdi
	movl	16(%rsp), %esi
	.loc 1 67 0
	movsd	%xmm0, (%r12)
	leaq	(%rdi,%rbx), %r12
	.loc 1 66 0
	je	.L60
	testl	%esi, %esi
	je	.L85
	cmpl	$1, %esi
	je	.L191
	cmpl	$2, %esi
	je	.L192
	.loc 1 67 0
	movq	(%r14,%r15,8), %r9
	movq	%r12, %r13
	addq	0(%rbp,%r15,8), %r13
	movsd	(%r9,%r12), %xmm0
	addq	%rbx, %r12
	call	_Z12CumNormalInvd
.LVL78:
	movsd	%xmm0, 0(%r13)
	.loc 1 66 0
	movl	$3, %r13d
.L192:
	.loc 1 67 0
	movq	(%r14,%r15,8), %rax
	movq	%r12, %r10
	addq	0(%rbp,%r15,8), %r10
	.loc 1 66 0
	addl	$1, %r13d
	.loc 1 67 0
	movsd	(%rax,%r12), %xmm0
	addq	%rbx, %r12
	movq	%r10, 16(%rsp)
	call	_Z12CumNormalInvd
.LVL79:
	movq	16(%rsp), %rcx
	movsd	%xmm0, (%rcx)
.L191:
	movq	(%r14,%r15,8), %r8
	movq	%r12, %rdx
	addq	0(%rbp,%r15,8), %rdx
	.loc 1 66 0
	addl	$1, %r13d
	.loc 1 67 0
	movsd	(%r8,%r12), %xmm0
	addq	%rbx, %r12
	movq	%rdx, 16(%rsp)
	call	_Z12CumNormalInvd
.LVL80:
	.loc 1 66 0
	cmpl	60(%rsp), %r13d
	.loc 1 67 0
	movq	16(%rsp), %r11
	movsd	%xmm0, (%r11)
	.loc 1 66 0
	je	.L60
.L85:
	.loc 1 67 0
	movq	(%r14,%r15,8), %rsi
	movq	%r12, %rdi
	.loc 1 66 0
	addl	$4, %r13d
	.loc 1 67 0
	addq	0(%rbp,%r15,8), %rdi
	movsd	(%rsi,%r12), %xmm0
	addq	%rbx, %r12
	movq	%rdi, 16(%rsp)
	call	_Z12CumNormalInvd
.LVL81:
	movq	16(%rsp), %r9
	movq	(%r14,%r15,8), %rax
	movq	%r12, %r10
	addq	0(%rbp,%r15,8), %r10
	movsd	%xmm0, (%r9)
	movsd	(%rax,%r12), %xmm0
	addq	%rbx, %r12
	movq	%r10, 16(%rsp)
	call	_Z12CumNormalInvd
.LVL82:
	movq	16(%rsp), %rcx
	movq	(%r14,%r15,8), %r8
	movq	%r12, %rdx
	addq	0(%rbp,%r15,8), %rdx
	movsd	%xmm0, (%rcx)
	movsd	(%r8,%r12), %xmm0
	addq	%rbx, %r12
	movq	%rdx, 16(%rsp)
	call	_Z12CumNormalInvd
.LVL83:
	movq	16(%rsp), %r11
	movq	(%r14,%r15,8), %rsi
	movq	%r12, %rdi
	addq	0(%rbp,%r15,8), %rdi
	movsd	%xmm0, (%r11)
	movsd	(%rsi,%r12), %xmm0
	addq	%rbx, %r12
	movq	%rdi, 16(%rsp)
	call	_Z12CumNormalInvd
.LVL84:
	.loc 1 66 0
	cmpl	60(%rsp), %r13d
	.loc 1 67 0
	movq	16(%rsp), %r9
	movsd	%xmm0, (%r9)
	.loc 1 66 0
	jne	.L85
.LVL85:
.L60:
	addq	$8, 8(%rsp)
	movq	8(%rsp), %r12
.LBE29:
	.loc 1 65 0
	cmpq	40(%rsp), %r12
	jne	.L84
	movq	%r15, %rcx
.L59:
.LVL86:
	addq	$1, %rcx
.LVL87:
.LBE28:
	.loc 1 64 0
	cmpl	%ecx, 72(%rsp)
	jg	.L61
	movl	72(%rsp), %r14d
.LVL88:
.LBE27:
.LBE26:
.LBB31:
	.loc 1 144 0
	movl	232(%rsp), %ebp
	leal	-9(%r14), %ebx
	testl	%ebp, %ebp
	movl	%ebx, 96(%rsp)
	jle	.L51
.LVL89:
.L64:
	movl	96(%rsp), %r13d
	movq	88(%rsp), %r15
	pxor	%xmm5, %xmm5
	movq	104(%rsp), %rbp
	movq	152(%rsp), %rbx
	.loc 1 147 0
	movq	$0, 96(%rsp)
	shrl	$3, %r13d
	salq	$3, %r15
	leal	8(,%r13,8), %r13d
	movq	%r15, 80(%rsp)
	movq	%r15, 40(%rsp)
.LVL90:
.L73:
	.loc 1 145 0 discriminator 1
	movl	60(%rsp), %r10d
	cmpl	$1, %r10d
	jle	.L71
	movq	96(%rsp), %rcx
	movq	112(%rsp), %rax
	subl	$2, %r10d
	movl	232(%rsp), %edx
	movl	%r10d, 8(%rsp)
	movq	%rcx, %r8
	addq	$8, %rax
	addl	%ecx, %edx
	salq	$3, %r8
	movq	%rax, 72(%rsp)
	movl	%edx, 120(%rsp)
	movq	%r8, 88(%rsp)
.LVL91:
	.p2align 4,,10
	.p2align 3
.L74:
	movq	72(%rsp), %rdi
	movslq	120(%rsp), %rdx
	.loc 1 147 0 discriminator 1
	xorl	%r10d, %r10d
	movq	80(%rsp), %rsi
	movq	88(%rsp), %r12
	xorl	%eax, %eax
	xorl	%r11d, %r11d
	addq	-8(%rdi), %rsi
	addq	(%rdi), %r12
	salq	$3, %rdx
	movq	%rsi, 16(%rsp)
.LVL92:
	.p2align 4,,10
	.p2align 3
.L72:
	.loc 1 150 0 discriminator 1
	testl	%r14d, %r14d
	jle	.L79
	.loc 1 150 0 is_stmt 0
	xorl	%edi, %edi
	cmpl	$8, %r14d
	movapd	%xmm5, %xmm4
	jle	.L68
	leaq	120(%rbx), %r15
	leaq	120(%rbp), %rcx
	xorl	%edi, %edi
	movapd	%xmm5, %xmm4
.LVL93:
	.p2align 4,,10
	.p2align 3
.L67:
	.loc 1 151 0 is_stmt 1 discriminator 3
	movq	-120(%r15), %r9
	movq	-120(%rcx), %r8
	prefetcht0	(%r15)
	movq	-112(%r15), %rsi
	prefetcht0	(%rcx)
	addl	$8, %edi
.LVL94:
	addq	$64, %r15
	addq	$64, %rcx
	movsd	(%r9,%rax), %xmm2
	movq	-176(%rcx), %r9
	movsd	(%rsi,%rax), %xmm6
	movq	-168(%r15), %rsi
	mulsd	(%r8,%rdx), %xmm2
	movq	-168(%rcx), %r8
	movsd	(%r9,%rdx), %xmm8
	movq	-160(%r15), %r9
	movsd	(%rsi,%rax), %xmm10
	movq	-160(%rcx), %rsi
	mulsd	%xmm6, %xmm8
	movsd	(%r8,%rdx), %xmm11
	movq	-152(%rcx), %r8
	movsd	(%r9,%rax), %xmm13
	movq	-152(%r15), %r9
	addsd	%xmm2, %xmm4
.LVL95:
	mulsd	%xmm10, %xmm11
	mulsd	(%rsi,%rdx), %xmm13
	movq	-144(%r15), %rsi
	movsd	(%r9,%rax), %xmm15
	movq	-144(%rcx), %r9
	addsd	%xmm8, %xmm4
.LVL96:
	mulsd	(%r8,%rdx), %xmm15
	movq	-136(%rcx), %r8
	movsd	(%rsi,%rax), %xmm7
	movq	-136(%r15), %rsi
	mulsd	(%r9,%rdx), %xmm7
	movq	-128(%r15), %r9
	movapd	%xmm4, %xmm12
	movsd	(%rsi,%rax), %xmm3
	movq	-128(%rcx), %rsi
	cmpl	%r13d, %edi
	addsd	%xmm11, %xmm12
.LVL97:
	mulsd	(%r8,%rdx), %xmm3
	movsd	(%r9,%rax), %xmm2
	movapd	%xmm7, %xmm0
	mulsd	(%rsi,%rdx), %xmm2
	addsd	%xmm12, %xmm13
.LVL98:
	movapd	%xmm3, %xmm4
	addsd	%xmm13, %xmm15
.LVL99:
	addsd	%xmm15, %xmm0
.LVL100:
	addsd	%xmm0, %xmm4
.LVL101:
	addsd	%xmm4, %xmm2
	movapd	%xmm2, %xmm4
.LVL102:
	jne	.L67
.LVL103:
.L68:
	movslq	%edi, %rsi
	leal	-1(%r14), %r9d
	salq	$3, %rsi
	leaq	(%rbx,%rsi), %r8
	addq	%rbp, %rsi
	subl	%edi, %r9d
	.loc 1 151 0 is_stmt 0
	movq	(%rsi), %rcx
	andl	$7, %r9d
.LVL104:
	movq	(%r8), %r15
	movsd	(%r15,%rax), %xmm3
	leal	1(%rdi), %r15d
	mulsd	(%rcx,%rdx), %xmm3
	.loc 1 150 0 is_stmt 1
	cmpl	%r15d, %r14d
	movl	$1, %ecx
	.loc 1 151 0
	addsd	%xmm4, %xmm3
.LVL105:
	.loc 1 150 0
	jle	.L66
	testl	%r9d, %r9d
	je	.L65
	cmpl	$1, %r9d
	je	.L185
	cmpl	$2, %r9d
	je	.L186
	cmpl	$3, %r9d
	je	.L187
	cmpl	$4, %r9d
	je	.L188
	cmpl	$5, %r9d
	je	.L189
	cmpl	$6, %r9d
	je	.L190
.LVL106:
	.loc 1 151 0
	movq	8(%r8), %r9
	movq	8(%rsi), %rcx
	movsd	(%r9,%rax), %xmm6
	mulsd	(%rcx,%rdx), %xmm6
	movl	$2, %ecx
	addsd	%xmm6, %xmm3
.LVL107:
.L190:
	movq	(%r8,%rcx,8), %r15
	movq	(%rsi,%rcx,8), %r9
	addq	$1, %rcx
	movsd	(%r15,%rax), %xmm8
	mulsd	(%r9,%rdx), %xmm8
	addsd	%xmm8, %xmm3
.LVL108:
.L189:
	movq	(%r8,%rcx,8), %r15
	movq	(%rsi,%rcx,8), %r9
	addq	$1, %rcx
	movsd	(%r15,%rax), %xmm9
	mulsd	(%r9,%rdx), %xmm9
	addsd	%xmm9, %xmm3
.LVL109:
.L188:
	movq	(%r8,%rcx,8), %r15
	movq	(%rsi,%rcx,8), %r9
	addq	$1, %rcx
	movsd	(%r15,%rax), %xmm10
	mulsd	(%r9,%rdx), %xmm10
	addsd	%xmm10, %xmm3
.LVL110:
.L187:
	movq	(%r8,%rcx,8), %r15
	movq	(%rsi,%rcx,8), %r9
	addq	$1, %rcx
	movsd	(%r15,%rax), %xmm11
	mulsd	(%r9,%rdx), %xmm11
	addsd	%xmm11, %xmm3
.LVL111:
.L186:
	movq	(%r8,%rcx,8), %r15
	movq	(%rsi,%rcx,8), %r9
	addq	$1, %rcx
	movsd	(%r15,%rax), %xmm12
	mulsd	(%r9,%rdx), %xmm12
	addsd	%xmm12, %xmm3
.LVL112:
.L185:
	movq	(%r8,%rcx,8), %r15
	movq	(%rsi,%rcx,8), %r9
	addq	$1, %rcx
	movsd	(%r15,%rax), %xmm13
	leal	(%rdi,%rcx), %r15d
	mulsd	(%r9,%rdx), %xmm13
	.loc 1 150 0
	cmpl	%r15d, %r14d
	.loc 1 151 0
	addsd	%xmm13, %xmm3
.LVL113:
	.loc 1 150 0
	jle	.L66
.LVL114:
.L65:
	.loc 1 151 0
	movq	(%r8,%rcx,8), %r15
	movq	(%rsi,%rcx,8), %r9
	movsd	(%r15,%rax), %xmm14
	mulsd	(%r9,%rdx), %xmm14
	leaq	1(%rcx), %r9
	movq	(%r8,%r9,8), %r15
	movq	(%rsi,%r9,8), %r9
	movsd	(%r15,%rax), %xmm15
	addsd	%xmm14, %xmm3
.LVL115:
	mulsd	(%r9,%rdx), %xmm15
	leaq	2(%rcx), %r9
	movq	(%r8,%r9,8), %r15
	movq	(%rsi,%r9,8), %r9
	movsd	(%r9,%rdx), %xmm7
	leaq	3(%rcx), %r9
	movsd	(%r15,%rax), %xmm1
	addsd	%xmm15, %xmm3
.LVL116:
	movq	(%r8,%r9,8), %r15
	movq	(%rsi,%r9,8), %r9
	mulsd	%xmm1, %xmm7
	movsd	(%r15,%rax), %xmm0
	movsd	(%r9,%rdx), %xmm4
	leaq	4(%rcx), %r9
	addsd	%xmm7, %xmm3
.LVL117:
	movq	(%r8,%r9,8), %r15
	mulsd	%xmm0, %xmm4
	movq	(%rsi,%r9,8), %r9
	movsd	(%r9,%rdx), %xmm2
	leaq	5(%rcx), %r9
	addsd	%xmm4, %xmm3
.LVL118:
	movsd	(%r15,%rax), %xmm8
	movq	(%r8,%r9,8), %r15
	movq	(%rsi,%r9,8), %r9
	mulsd	%xmm8, %xmm2
	movapd	%xmm3, %xmm9
	movsd	(%r9,%rdx), %xmm11
	leaq	6(%rcx), %r9
	movsd	(%r15,%rax), %xmm10
	addsd	%xmm2, %xmm9
.LVL119:
	movq	(%r8,%r9,8), %r15
	movq	(%rsi,%r9,8), %r9
	mulsd	%xmm10, %xmm11
	movsd	(%r9,%rdx), %xmm14
	leaq	7(%rcx), %r9
	movapd	%xmm9, %xmm12
	addq	$8, %rcx
	movsd	(%r15,%rax), %xmm13
	movq	(%r8,%r9,8), %r15
	addsd	%xmm11, %xmm12
.LVL120:
	movq	(%rsi,%r9,8), %r9
	mulsd	%xmm13, %xmm14
	movsd	(%r15,%rax), %xmm3
	leal	(%rdi,%rcx), %r15d
	movapd	%xmm12, %xmm15
	mulsd	(%r9,%rdx), %xmm3
	.loc 1 150 0
	cmpl	%r15d, %r14d
	.loc 1 151 0
	addsd	%xmm14, %xmm15
.LVL121:
	addsd	%xmm15, %xmm3
.LVL122:
	.loc 1 150 0
	jg	.L65
.LVL123:
.L66:
	.loc 1 154 0 discriminator 2
	movq	48(%rsp), %rdi
	movsd	24(%rsp), %xmm1
	movq	16(%rsp), %rsi
	mulsd	32(%rsp), %xmm3
	addl	$1, %r11d
.LVL124:
	mulsd	(%rdi,%rax), %xmm1
	addq	$8, %rax
	addsd	(%rsi,%r10), %xmm1
	addsd	%xmm1, %xmm3
	movsd	%xmm3, (%r12,%r10)
.LVL125:
	addq	40(%rsp), %r10
	.loc 1 147 0 discriminator 2
	cmpl	%r11d, 8(%rsp)
	jge	.L72
	subl	$1, 8(%rsp)
	addq	$8, 72(%rsp)
	movl	8(%rsp), %r12d
	movl	232(%rsp), %edx
	addl	%edx, 120(%rsp)
	.loc 1 145 0
	cmpl	$-1, %r12d
	jne	.L74
.LVL126:
.L71:
	addq	$1, 96(%rsp)
.LVL127:
	addq	$8, 80(%rsp)
	movq	96(%rsp), %r10
	.loc 1 144 0
	cmpl	%r10d, 232(%rsp)
	jg	.L73
.L51:
.LBE31:
	.loc 1 161 0
	movq	128(%rsp), %r14
	movq	136(%rsp), %r13
	xorl	%ecx, %ecx
	movq	104(%rsp), %rdi
	xorl	%esi, %esi
	movq	%r14, %r8
	movq	%r13, %rdx
	call	_Z12free_dmatrixPPdllll
.LVL128:
	.loc 1 162 0
	movq	64(%rsp), %rdi
	movq	%r14, %r8
	movq	%r13, %rdx
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	call	_Z12free_dmatrixPPdllll
.LVL129:
.LBE37:
	.loc 1 165 0
	addq	$168, %rsp
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
.LVL130:
	.p2align 4,,10
	.p2align 3
.L79:
	.cfi_restore_state
.LBB38:
.LBB32:
	.loc 1 150 0
	movapd	%xmm5, %xmm3
	jmp	.L66
.LVL131:
.L77:
.LBE32:
.LBB33:
.LBB25:
	.loc 1 119 0
	xorl	%r13d, %r13d
	jmp	.L53
.LVL132:
.L75:
.LBE25:
.LBE33:
.LBB34:
	.loc 1 106 0
	movl	$1, %esi
	jmp	.L42
.LVL133:
.L37:
	movslq	232(%rsp), %rbx
.LVL134:
	subl	$1, %edx
.LBE34:
.LBB35:
.LBB30:
	.loc 1 64 0
	testl	%r14d, %r14d
	movl	%edx, 124(%rsp)
	movq	%rbx, 88(%rsp)
	jg	.L50
	jmp	.L51
.LVL135:
.L252:
.LBE30:
.LBE35:
	.loc 1 93 0
	call	sqrt
.LVL136:
	movsd	%xmm0, 32(%rsp)
	jmp	.L35
.LBE38:
	.cfi_endproc
.LFE75:
	.size	_Z28HJM_SimPath_Forward_BlockingPPdiidS_S_S0_Pli, .-_Z28HJM_SimPath_Forward_BlockingPPdiidS_S_S0_Pli
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
.Letext0:
	.section	.text.unlikely
.Letext_cold0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.9/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "/usr/include/c++/4.9/cstring"
	.file 6 "/usr/include/string.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/if16/jad5ju/Progs/opensource/parsec-3.0//pkgs/apps/swaptions/src/HJM.h"
	.file 9 "/if16/jad5ju/Progs/opensource/parsec-3.0//pkgs/apps/swaptions/src/nr_routines.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h"
	.file 11 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xb00
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF83
	.byte	0x4
	.long	.LASF84
	.long	.LASF85
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF13
	.uleb128 0x6
	.byte	0x8
	.long	0xb0
	.uleb128 0x7
	.long	0x9c
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF14
	.uleb128 0x6
	.byte	0x8
	.long	0xc2
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF44
	.byte	0xd8
	.byte	0x4
	.byte	0xf5
	.long	0x243
	.uleb128 0xa
	.long	.LASF15
	.byte	0x4
	.byte	0xf6
	.long	0x69
	.byte	0
	.uleb128 0xa
	.long	.LASF16
	.byte	0x4
	.byte	0xfb
	.long	0x96
	.byte	0x8
	.uleb128 0xa
	.long	.LASF17
	.byte	0x4
	.byte	0xfc
	.long	0x96
	.byte	0x10
	.uleb128 0xa
	.long	.LASF18
	.byte	0x4
	.byte	0xfd
	.long	0x96
	.byte	0x18
	.uleb128 0xa
	.long	.LASF19
	.byte	0x4
	.byte	0xfe
	.long	0x96
	.byte	0x20
	.uleb128 0xa
	.long	.LASF20
	.byte	0x4
	.byte	0xff
	.long	0x96
	.byte	0x28
	.uleb128 0xb
	.long	.LASF21
	.byte	0x4
	.value	0x100
	.long	0x96
	.byte	0x30
	.uleb128 0xb
	.long	.LASF22
	.byte	0x4
	.value	0x101
	.long	0x96
	.byte	0x38
	.uleb128 0xb
	.long	.LASF23
	.byte	0x4
	.value	0x102
	.long	0x96
	.byte	0x40
	.uleb128 0xb
	.long	.LASF24
	.byte	0x4
	.value	0x104
	.long	0x96
	.byte	0x48
	.uleb128 0xb
	.long	.LASF25
	.byte	0x4
	.value	0x105
	.long	0x96
	.byte	0x50
	.uleb128 0xb
	.long	.LASF26
	.byte	0x4
	.value	0x106
	.long	0x96
	.byte	0x58
	.uleb128 0xb
	.long	.LASF27
	.byte	0x4
	.value	0x108
	.long	0x27b
	.byte	0x60
	.uleb128 0xb
	.long	.LASF28
	.byte	0x4
	.value	0x10a
	.long	0x281
	.byte	0x68
	.uleb128 0xb
	.long	.LASF29
	.byte	0x4
	.value	0x10c
	.long	0x69
	.byte	0x70
	.uleb128 0xb
	.long	.LASF30
	.byte	0x4
	.value	0x110
	.long	0x69
	.byte	0x74
	.uleb128 0xb
	.long	.LASF31
	.byte	0x4
	.value	0x112
	.long	0x77
	.byte	0x78
	.uleb128 0xb
	.long	.LASF32
	.byte	0x4
	.value	0x116
	.long	0x4d
	.byte	0x80
	.uleb128 0xb
	.long	.LASF33
	.byte	0x4
	.value	0x117
	.long	0x5b
	.byte	0x82
	.uleb128 0xb
	.long	.LASF34
	.byte	0x4
	.value	0x118
	.long	0x287
	.byte	0x83
	.uleb128 0xb
	.long	.LASF35
	.byte	0x4
	.value	0x11c
	.long	0x297
	.byte	0x88
	.uleb128 0xb
	.long	.LASF36
	.byte	0x4
	.value	0x125
	.long	0x82
	.byte	0x90
	.uleb128 0xb
	.long	.LASF37
	.byte	0x4
	.value	0x12e
	.long	0x94
	.byte	0x98
	.uleb128 0xb
	.long	.LASF38
	.byte	0x4
	.value	0x12f
	.long	0x94
	.byte	0xa0
	.uleb128 0xb
	.long	.LASF39
	.byte	0x4
	.value	0x130
	.long	0x94
	.byte	0xa8
	.uleb128 0xb
	.long	.LASF40
	.byte	0x4
	.value	0x131
	.long	0x94
	.byte	0xb0
	.uleb128 0xb
	.long	.LASF41
	.byte	0x4
	.value	0x132
	.long	0x34
	.byte	0xb8
	.uleb128 0xb
	.long	.LASF42
	.byte	0x4
	.value	0x134
	.long	0x69
	.byte	0xc0
	.uleb128 0xb
	.long	.LASF43
	.byte	0x4
	.value	0x136
	.long	0x29d
	.byte	0xc4
	.byte	0
	.uleb128 0xc
	.long	.LASF86
	.byte	0x4
	.byte	0x9a
	.uleb128 0x9
	.long	.LASF45
	.byte	0x18
	.byte	0x4
	.byte	0xa0
	.long	0x27b
	.uleb128 0xa
	.long	.LASF46
	.byte	0x4
	.byte	0xa1
	.long	0x27b
	.byte	0
	.uleb128 0xa
	.long	.LASF47
	.byte	0x4
	.byte	0xa2
	.long	0x281
	.byte	0x8
	.uleb128 0xa
	.long	.LASF48
	.byte	0x4
	.byte	0xa6
	.long	0x69
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x24a
	.uleb128 0x6
	.byte	0x8
	.long	0xc3
	.uleb128 0xd
	.long	0x9c
	.long	0x297
	.uleb128 0xe
	.long	0x8d
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x243
	.uleb128 0xd
	.long	0x9c
	.long	0x2ad
	.uleb128 0xe
	.long	0x8d
	.byte	0x13
	.byte	0
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
	.long	0xbc
	.long	0x32e
	.uleb128 0x12
	.long	0xbc
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
	.long	0xaa
	.uleb128 0x12
	.long	0xaa
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
	.long	0xaa
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
	.long	0xaa
	.uleb128 0x12
	.long	0x34
	.byte	0
	.uleb128 0x11
	.long	.LASF55
	.byte	0x6
	.byte	0xe5
	.long	.LASF55
	.long	0xaa
	.long	0x3b6
	.uleb128 0x12
	.long	0xaa
	.uleb128 0x12
	.long	0x69
	.byte	0
	.uleb128 0x15
	.long	.LASF56
	.byte	0x6
	.value	0x134
	.long	.LASF56
	.long	0xaa
	.long	0x3d5
	.uleb128 0x12
	.long	0xaa
	.uleb128 0x12
	.long	0xaa
	.byte	0
	.uleb128 0x15
	.long	.LASF57
	.byte	0x6
	.value	0x100
	.long	.LASF57
	.long	0xaa
	.long	0x3f4
	.uleb128 0x12
	.long	0xaa
	.uleb128 0x12
	.long	0x69
	.byte	0
	.uleb128 0x15
	.long	.LASF58
	.byte	0x6
	.value	0x14f
	.long	.LASF58
	.long	0xaa
	.long	0x413
	.uleb128 0x12
	.long	0xaa
	.uleb128 0x12
	.long	0xaa
	.byte	0
	.uleb128 0x16
	.long	.LASF81
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.long	0x477
	.uleb128 0x17
	.string	"pdZ"
	.byte	0x1
	.byte	0x3c
	.long	0x2ba
	.uleb128 0x18
	.long	.LASF59
	.byte	0x1
	.byte	0x3c
	.long	0x2ba
	.uleb128 0x18
	.long	.LASF60
	.byte	0x1
	.byte	0x3c
	.long	0x69
	.uleb128 0x17
	.string	"iN"
	.byte	0x1
	.byte	0x3c
	.long	0x69
	.uleb128 0x18
	.long	.LASF61
	.byte	0x1
	.byte	0x3c
	.long	0x69
	.uleb128 0x19
	.uleb128 0x1a
	.string	"l"
	.byte	0x1
	.byte	0x40
	.long	0x69
	.uleb128 0x19
	.uleb128 0x1a
	.string	"b"
	.byte	0x1
	.byte	0x41
	.long	0x69
	.uleb128 0x19
	.uleb128 0x1a
	.string	"j"
	.byte	0x1
	.byte	0x42
	.long	0x69
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x413
	.long	.LASF87
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f3
	.uleb128 0x1c
	.long	0x41f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1c
	.long	0x42a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.long	0x435
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1c
	.long	0x440
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.long	0x44a
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1d
	.long	.Ldebug_ranges0+0
	.uleb128 0x1e
	.long	0x456
	.uleb128 0x1f
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x1e
	.long	0x460
	.uleb128 0x1f
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x1e
	.long	0x46a
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF88
	.byte	0x1
	.byte	0x49
	.long	.LASF89
	.long	0x69
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0xa53
	.uleb128 0x21
	.long	.LASF62
	.byte	0x1
	.byte	0x49
	.long	0x2ba
	.long	.LLST0
	.uleb128 0x22
	.string	"iN"
	.byte	0x1
	.byte	0x4a
	.long	0x69
	.long	.LLST1
	.uleb128 0x21
	.long	.LASF61
	.byte	0x1
	.byte	0x4b
	.long	0x69
	.long	.LLST2
	.uleb128 0x21
	.long	.LASF63
	.byte	0x1
	.byte	0x4c
	.long	0x2d
	.long	.LLST3
	.uleb128 0x21
	.long	.LASF64
	.byte	0x1
	.byte	0x4d
	.long	0x2b4
	.long	.LLST4
	.uleb128 0x21
	.long	.LASF65
	.byte	0x1
	.byte	0x4e
	.long	0x2b4
	.long	.LLST5
	.uleb128 0x21
	.long	.LASF66
	.byte	0x1
	.byte	0x4f
	.long	0x2ba
	.long	.LLST6
	.uleb128 0x23
	.long	.LASF67
	.byte	0x1
	.byte	0x50
	.long	0xa53
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.long	.LASF60
	.byte	0x1
	.byte	0x51
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.long	.Ldebug_ranges0+0x40
	.uleb128 0x24
	.long	.LASF68
	.byte	0x1
	.byte	0x55
	.long	0x69
	.long	.LLST7
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0x56
	.long	0x69
	.long	.LLST8
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.byte	0x56
	.long	0x69
	.long	.LLST9
	.uleb128 0x25
	.string	"l"
	.byte	0x1
	.byte	0x56
	.long	0x69
	.long	.LLST10
	.uleb128 0x25
	.string	"pdZ"
	.byte	0x1
	.byte	0x57
	.long	0x2ba
	.long	.LLST11
	.uleb128 0x24
	.long	.LASF59
	.byte	0x1
	.byte	0x58
	.long	0x2ba
	.long	.LLST12
	.uleb128 0x24
	.long	.LASF69
	.byte	0x1
	.byte	0x59
	.long	0x2d
	.long	.LLST13
	.uleb128 0x24
	.long	.LASF70
	.byte	0x1
	.byte	0x5a
	.long	0x2d
	.long	.LLST14
	.uleb128 0x24
	.long	.LASF71
	.byte	0x1
	.byte	0x5a
	.long	0x2d
	.long	.LLST15
	.uleb128 0x26
	.long	.Ldebug_ranges0+0x90
	.long	0x639
	.uleb128 0x25
	.string	"b"
	.byte	0x1
	.byte	0x66
	.long	0x69
	.long	.LLST16
	.byte	0
	.uleb128 0x26
	.long	.Ldebug_ranges0+0xd0
	.long	0x89f
	.uleb128 0x25
	.string	"b"
	.byte	0x1
	.byte	0x74
	.long	0x69
	.long	.LLST17
	.uleb128 0x1d
	.long	.Ldebug_ranges0+0x100
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.byte	0x75
	.long	0x69
	.long	.LLST18
	.uleb128 0x27
	.quad	.LVL46
	.long	0xa6f
	.long	0x679
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL47
	.long	0xa6f
	.long	0x691
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL48
	.long	0xa6f
	.long	0x6a9
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL49
	.long	0xa6f
	.long	0x6c1
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL50
	.long	0xa6f
	.long	0x6d9
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL51
	.long	0xa6f
	.long	0x6f1
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL52
	.long	0xa6f
	.long	0x709
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL53
	.long	0xa6f
	.long	0x721
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL54
	.long	0xa6f
	.long	0x739
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL55
	.long	0xa6f
	.long	0x751
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL56
	.long	0xa6f
	.long	0x769
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL57
	.long	0xa6f
	.long	0x781
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL58
	.long	0xa6f
	.long	0x799
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL59
	.long	0xa6f
	.long	0x7b1
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL60
	.long	0xa6f
	.long	0x7c9
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL61
	.long	0xa6f
	.long	0x7e1
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL62
	.long	0xa6f
	.long	0x7f9
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL63
	.long	0xa6f
	.long	0x811
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL64
	.long	0xa6f
	.long	0x829
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL65
	.long	0xa6f
	.long	0x841
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL66
	.long	0xa6f
	.long	0x859
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL67
	.long	0xa6f
	.long	0x871
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL68
	.long	0xa6f
	.long	0x889
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.quad	.LVL69
	.long	0xa6f
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x413
	.quad	.LBB26
	.long	.Ldebug_ranges0+0x130
	.byte	0x1
	.byte	0x8b
	.long	0x97d
	.uleb128 0x2b
	.long	0x44a
	.uleb128 0x2b
	.long	0x440
	.uleb128 0x2b
	.long	0x435
	.uleb128 0x2b
	.long	0x42a
	.uleb128 0x2b
	.long	0x41f
	.uleb128 0x1d
	.long	.Ldebug_ranges0+0x130
	.uleb128 0x2c
	.long	0x456
	.long	.LLST19
	.uleb128 0x1f
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x2c
	.long	0x460
	.long	.LLST20
	.uleb128 0x1f
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x2c
	.long	0x46a
	.long	.LLST21
	.uleb128 0x2d
	.quad	.LVL77
	.long	0xa88
	.uleb128 0x2d
	.quad	.LVL78
	.long	0xa88
	.uleb128 0x2d
	.quad	.LVL79
	.long	0xa88
	.uleb128 0x2d
	.quad	.LVL80
	.long	0xa88
	.uleb128 0x2d
	.quad	.LVL81
	.long	0xa88
	.uleb128 0x2d
	.quad	.LVL82
	.long	0xa88
	.uleb128 0x2d
	.quad	.LVL83
	.long	0xa88
	.uleb128 0x2d
	.quad	.LVL84
	.long	0xa88
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.Ldebug_ranges0+0x160
	.long	0x994
	.uleb128 0x25
	.string	"b"
	.byte	0x1
	.byte	0x90
	.long	0x69
	.long	.LLST22
	.byte	0
	.uleb128 0x27
	.quad	.LVL4
	.long	0xaa1
	.long	0x9bc
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL6
	.long	0xaa1
	.long	0x9e4
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL128
	.long	0xac9
	.long	0xa14
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -120
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL129
	.long	0xac9
	.long	0xa44
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -160
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.quad	.LVL136
	.long	0xaf2
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x70
	.uleb128 0x2e
	.long	.LASF72
	.byte	0x7
	.byte	0xa8
	.long	0x281
	.uleb128 0x2e
	.long	.LASF73
	.byte	0x7
	.byte	0xa9
	.long	0x281
	.uleb128 0x11
	.long	.LASF74
	.byte	0x8
	.byte	0x6
	.long	.LASF75
	.long	0x2d
	.long	0xa88
	.uleb128 0x12
	.long	0xa53
	.byte	0
	.uleb128 0x11
	.long	.LASF76
	.byte	0x8
	.byte	0x7
	.long	.LASF77
	.long	0x2d
	.long	0xaa1
	.uleb128 0x12
	.long	0x2d
	.byte	0
	.uleb128 0x11
	.long	.LASF78
	.byte	0x9
	.byte	0xa
	.long	.LASF79
	.long	0x2ba
	.long	0xac9
	.uleb128 0x12
	.long	0x70
	.uleb128 0x12
	.long	0x70
	.uleb128 0x12
	.long	0x70
	.uleb128 0x12
	.long	0x70
	.byte	0
	.uleb128 0x2f
	.long	.LASF80
	.byte	0x9
	.byte	0xb
	.long	.LASF90
	.long	0xaf2
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
	.uleb128 0x30
	.long	.LASF82
	.byte	0xa
	.byte	0x9c
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x8
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
	.uleb128 0xe
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL3-.Ltext0
	.quad	.LVL135-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -112
	.quad	.LVL135-.Ltext0
	.quad	.LVL136-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL136-1-.Ltext0
	.quad	.LFE75-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -112
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL3-.Ltext0
	.quad	.LVL135-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -164
	.quad	.LVL135-.Ltext0
	.quad	.LVL136-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL136-1-.Ltext0
	.quad	.LFE75-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -164
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL0-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL3-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL8-.Ltext0
	.quad	.LVL43-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -208
	.quad	.LVL43-.Ltext0
	.quad	.LVL132-.Ltext0
	.value	0x8
	.byte	0x91
	.sleb128 -88
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL132-.Ltext0
	.quad	.LVL133-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -208
	.quad	.LVL133-.Ltext0
	.quad	.LVL135-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL135-.Ltext0
	.quad	.LVL136-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL136-1-.Ltext0
	.quad	.LFE75-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL1-.Ltext0
	.quad	.LFE75-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL0-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL3-.Ltext0
	.quad	.LVL42-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL42-.Ltext0
	.quad	.LVL132-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL132-.Ltext0
	.quad	.LVL134-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL134-.Ltext0
	.quad	.LVL135-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL135-.Ltext0
	.quad	.LVL136-1-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL136-1-.Ltext0
	.quad	.LFE75-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL0-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	.LVL3-.Ltext0
	.quad	.LVL135-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -176
	.quad	.LVL135-.Ltext0
	.quad	.LVL136-1-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	.LVL136-1-.Ltext0
	.quad	.LFE75-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -176
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL0-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x1
	.byte	0x59
	.quad	.LVL3-.Ltext0
	.quad	.LVL135-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	.LVL135-.Ltext0
	.quad	.LVL136-1-.Ltext0
	.value	0x1
	.byte	0x59
	.quad	.LVL136-1-.Ltext0
	.quad	.LFE75-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL0-.Ltext0
	.quad	.LVL129-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL129-.Ltext0
	.quad	.LVL130-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL130-.Ltext0
	.quad	.LFE75-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL10-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL11-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL12-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL13-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL14-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.quad	.LVL15-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL16-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL17-.Ltext0
	.quad	.LVL18-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL18-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL19-.Ltext0
	.quad	.LVL20-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL20-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL21-.Ltext0
	.quad	.LVL22-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.quad	.LVL22-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL23-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL24-.Ltext0
	.quad	.LVL25-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL25-.Ltext0
	.quad	.LVL26-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL26-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL27-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL28-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.quad	.LVL29-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.quad	.LVL30-.Ltext0
	.quad	.LVL31-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL31-.Ltext0
	.quad	.LVL32-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL32-.Ltext0
	.quad	.LVL33-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL33-.Ltext0
	.quad	.LVL34-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL34-.Ltext0
	.quad	.LVL35-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL35-.Ltext0
	.quad	.LVL36-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL36-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.quad	.LVL37-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.quad	.LVL38-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL92-.Ltext0
	.quad	.LVL93-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL93-.Ltext0
	.quad	.LVL94-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL94-.Ltext0
	.quad	.LVL95-.Ltext0
	.value	0x3
	.byte	0x75
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL102-.Ltext0
	.quad	.LVL103-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL104-.Ltext0
	.quad	.LVL105-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL105-.Ltext0
	.quad	.LVL106-.Ltext0
	.value	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.quad	.LVL106-.Ltext0
	.quad	.LVL113-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL113-.Ltext0
	.quad	.LVL114-.Ltext0
	.value	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.quad	.LVL114-.Ltext0
	.quad	.LVL122-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL122-.Ltext0
	.quad	.LVL123-.Ltext0
	.value	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.quad	.LVL130-.Ltext0
	.quad	.LVL131-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL132-.Ltext0
	.quad	.LVL133-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL8-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL9-.Ltext0
	.quad	.LVL40-.Ltext0
	.value	0x1
	.byte	0x5a
	.quad	.LVL40-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.quad	.LVL43-.Ltext0
	.quad	.LVL44-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL44-.Ltext0
	.quad	.LVL70-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -216
	.quad	.LVL71-.Ltext0
	.quad	.LVL72-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL90-.Ltext0
	.quad	.LVL91-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL131-.Ltext0
	.quad	.LVL132-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -216
	.quad	.LVL132-.Ltext0
	.quad	.LVL133-.Ltext0
	.value	0x1
	.byte	0x5a
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL44-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL91-.Ltext0
	.quad	.LVL92-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL92-.Ltext0
	.quad	.LVL124-.Ltext0
	.value	0x1
	.byte	0x5b
	.quad	.LVL124-.Ltext0
	.quad	.LVL125-.Ltext0
	.value	0x3
	.byte	0x7b
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL125-.Ltext0
	.quad	.LVL126-.Ltext0
	.value	0x1
	.byte	0x5b
	.quad	.LVL130-.Ltext0
	.quad	.LVL131-.Ltext0
	.value	0x1
	.byte	0x5b
	.quad	.LVL131-.Ltext0
	.quad	.LVL132-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL5-.Ltext0
	.quad	.LVL6-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL6-1-.Ltext0
	.quad	.LVL135-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL7-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL8-.Ltext0
	.quad	.LVL133-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -160
	.quad	.LVL133-.Ltext0
	.quad	.LVL135-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL92-.Ltext0
	.quad	.LVL93-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.quad	.LVL93-.Ltext0
	.quad	.LVL97-.Ltext0
	.value	0x1
	.byte	0x65
	.quad	.LVL97-.Ltext0
	.quad	.LVL98-.Ltext0
	.value	0x1
	.byte	0x6d
	.quad	.LVL98-.Ltext0
	.quad	.LVL99-.Ltext0
	.value	0x1
	.byte	0x6e
	.quad	.LVL99-.Ltext0
	.quad	.LVL100-.Ltext0
	.value	0x2
	.byte	0x90
	.uleb128 0x20
	.quad	.LVL100-.Ltext0
	.quad	.LVL101-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL101-.Ltext0
	.quad	.LVL102-.Ltext0
	.value	0x1
	.byte	0x65
	.quad	.LVL102-.Ltext0
	.quad	.LVL103-.Ltext0
	.value	0x1
	.byte	0x63
	.quad	.LVL130-.Ltext0
	.quad	.LVL131-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL2-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL3-.Ltext0
	.quad	.LVL135-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -200
	.quad	.LVL135-.Ltext0
	.quad	.LVL136-1-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL136-1-.Ltext0
	.quad	.LFE75-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -200
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL3-.Ltext0
	.quad	.LVL135-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -192
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL7-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL133-.Ltext0
	.quad	.LVL135-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL133-.Ltext0
	.quad	.LVL135-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL72-.Ltext0
	.quad	.LVL74-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL73-.Ltext0
	.quad	.LVL75-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL75-.Ltext0
	.quad	.LVL76-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL86-.Ltext0
	.quad	.LVL87-.Ltext0
	.value	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.quad	.LVL133-.Ltext0
	.quad	.LVL135-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL75-.Ltext0
	.quad	.LVL76-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL76-.Ltext0
	.quad	.LVL85-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL88-.Ltext0
	.quad	.LVL90-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL90-.Ltext0
	.quad	.LVL126-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -128
	.quad	.LVL126-.Ltext0
	.quad	.LVL127-.Ltext0
	.value	0x8
	.byte	0x91
	.sleb128 -128
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL130-.Ltext0
	.quad	.LVL131-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -128
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
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	.LBB9-.Ltext0
	.quad	.LBE9-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB20-.Ltext0
	.quad	.LBE20-.Ltext0
	.quad	.LBB36-.Ltext0
	.quad	.LBE36-.Ltext0
	.quad	.LBB37-.Ltext0
	.quad	.LBE37-.Ltext0
	.quad	.LBB38-.Ltext0
	.quad	.LBE38-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB21-.Ltext0
	.quad	.LBE21-.Ltext0
	.quad	.LBB22-.Ltext0
	.quad	.LBE22-.Ltext0
	.quad	.LBB34-.Ltext0
	.quad	.LBE34-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB23-.Ltext0
	.quad	.LBE23-.Ltext0
	.quad	.LBB33-.Ltext0
	.quad	.LBE33-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB24-.Ltext0
	.quad	.LBE24-.Ltext0
	.quad	.LBB25-.Ltext0
	.quad	.LBE25-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB26-.Ltext0
	.quad	.LBE26-.Ltext0
	.quad	.LBB35-.Ltext0
	.quad	.LBE35-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB31-.Ltext0
	.quad	.LBE31-.Ltext0
	.quad	.LBB32-.Ltext0
	.quad	.LBE32-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF31:
	.string	"_old_offset"
.LASF71:
	.string	"sqrt_ddelt"
.LASF69:
	.string	"dTotalShock"
.LASF44:
	.string	"_IO_FILE"
.LASF26:
	.string	"_IO_save_end"
.LASF6:
	.string	"short int"
.LASF8:
	.string	"size_t"
.LASF79:
	.string	"_Z7dmatrixllll"
.LASF11:
	.string	"sizetype"
.LASF24:
	.string	"_IO_save_base"
.LASF36:
	.string	"_offset"
.LASF56:
	.string	"strpbrk"
.LASF20:
	.string	"_IO_write_ptr"
.LASF15:
	.string	"_flags"
.LASF89:
	.string	"_Z28HJM_SimPath_Forward_BlockingPPdiidS_S_S0_Pli"
.LASF22:
	.string	"_IO_buf_base"
.LASF62:
	.string	"ppdHJMPath"
.LASF27:
	.string	"_markers"
.LASF51:
	.string	"strerror"
.LASF67:
	.string	"lRndSeed"
.LASF66:
	.string	"ppdFactors"
.LASF49:
	.string	"float"
.LASF0:
	.string	"double"
.LASF13:
	.string	"long long int"
.LASF68:
	.string	"iSuccess"
.LASF60:
	.string	"BLOCKSIZE"
.LASF35:
	.string	"_lock"
.LASF90:
	.string	"_Z12free_dmatrixPPdllll"
.LASF52:
	.string	"strtok"
.LASF32:
	.string	"_cur_column"
.LASF75:
	.string	"_Z7RanUnifPl"
.LASF88:
	.string	"HJM_SimPath_Forward_Blocking"
.LASF77:
	.string	"_Z12CumNormalInvd"
.LASF78:
	.string	"dmatrix"
.LASF85:
	.string	"/localtmp/jad5ju/goa2/benchmarks/swaptions"
.LASF48:
	.string	"_pos"
.LASF83:
	.string	"GNU C++ 4.9.2 -mtune=generic -march=x86-64 -g -O3 -funroll-loops -fprefetch-loop-arrays -fpermissive -fno-exceptions -fstack-protector"
.LASF47:
	.string	"_sbuf"
.LASF2:
	.string	"unsigned char"
.LASF76:
	.string	"CumNormalInv"
.LASF5:
	.string	"signed char"
.LASF14:
	.string	"long long unsigned int"
.LASF55:
	.string	"strchr"
.LASF4:
	.string	"unsigned int"
.LASF45:
	.string	"_IO_marker"
.LASF34:
	.string	"_shortbuf"
.LASF17:
	.string	"_IO_read_end"
.LASF19:
	.string	"_IO_write_base"
.LASF39:
	.string	"__pad3"
.LASF16:
	.string	"_IO_read_ptr"
.LASF23:
	.string	"_IO_buf_end"
.LASF70:
	.string	"ddelt"
.LASF12:
	.string	"char"
.LASF7:
	.string	"long int"
.LASF64:
	.string	"pdForward"
.LASF74:
	.string	"RanUnif"
.LASF80:
	.string	"free_dmatrix"
.LASF50:
	.string	"strcoll"
.LASF46:
	.string	"_next"
.LASF37:
	.string	"__pad1"
.LASF38:
	.string	"__pad2"
.LASF63:
	.string	"dYears"
.LASF40:
	.string	"__pad4"
.LASF41:
	.string	"__pad5"
.LASF3:
	.string	"short unsigned int"
.LASF53:
	.string	"strxfrm"
.LASF1:
	.string	"long unsigned int"
.LASF21:
	.string	"_IO_write_end"
.LASF81:
	.string	"serialB"
.LASF10:
	.string	"__off64_t"
.LASF29:
	.string	"_fileno"
.LASF28:
	.string	"_chain"
.LASF82:
	.string	"sqrt"
.LASF9:
	.string	"__off_t"
.LASF25:
	.string	"_IO_backup_base"
.LASF72:
	.string	"stdin"
.LASF84:
	.string	"/if16/jad5ju/Progs/opensource/parsec-3.0//pkgs/apps/swaptions/src/HJM_SimPath_Forward_Blocking.cpp"
.LASF30:
	.string	"_flags2"
.LASF42:
	.string	"_mode"
.LASF18:
	.string	"_IO_read_base"
.LASF58:
	.string	"strstr"
.LASF65:
	.string	"pdTotalDrift"
.LASF33:
	.string	"_vtable_offset"
.LASF43:
	.string	"_unused2"
.LASF57:
	.string	"strrchr"
.LASF61:
	.string	"iFactors"
.LASF87:
	.string	"_Z7serialBPPdS0_iii"
.LASF73:
	.string	"stdout"
.LASF86:
	.string	"_IO_lock_t"
.LASF59:
	.string	"randZ"
.LASF54:
	.string	"memchr"
	.ident	"GCC: (Ubuntu 4.9.2-0ubuntu1~14.04) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
