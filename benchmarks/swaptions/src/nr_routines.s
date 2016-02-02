	.file	"nr_routines.c"
	.text
.Ltext0:
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Numerical Recipes run-time error...\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"%s\n"
.LC2:
	.string	"...now exiting to system...\n"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4,,15
	.section	.text.unlikely
.Ltext_cold0:
	.text
	.globl	_Z7nrerrorPKc
	.type	_Z7nrerrorPKc, @function
_Z7nrerrorPKc:
.LFB48:
	.file 1 "/if16/jad5ju/Progs/opensource/parsec-3.0//pkgs/apps/swaptions/src/nr_routines.c"
	.loc 1 13 0
	.cfi_startproc
.LVL0:
.LBB16:
.LBB17:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 98 0
	movq	stderr(%rip), %rcx
.LBE17:
.LBE16:
	.loc 1 13 0
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
.LBB20:
.LBB18:
	.loc 2 98 0
	movl	$36, %edx
.LBE18:
.LBE20:
	.loc 1 13 0
	movq	%rdi, %rbx
.LBB21:
.LBB19:
	.loc 2 98 0
	movl	$1, %esi
	movl	$.LC0, %edi
.LVL1:
	call	fwrite
.LVL2:
.LBE19:
.LBE21:
.LBB22:
.LBB23:
	movq	stderr(%rip), %rdi
	movq	%rbx, %rcx
	movl	$.LC1, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk
.LVL3:
.LBE23:
.LBE22:
.LBB24:
.LBB25:
	movq	stderr(%rip), %rcx
	movl	$.LC2, %edi
	movl	$28, %edx
	movl	$1, %esi
	call	fwrite
.LVL4:
.LBE25:
.LBE24:
	.loc 1 18 0
	movl	$1, %edi
	call	exit
.LVL5:
	.cfi_endproc
.LFE48:
	.size	_Z7nrerrorPKc, .-_Z7nrerrorPKc
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely
.LCOLDB5:
	.text
.LHOTB5:
	.p2align 4,,15
	.globl	_Z6choldcPPdi
	.type	_Z6choldcPPdi, @function
_Z6choldcPPdi:
.LFB49:
	.loc 1 25 0
	.cfi_startproc
.LVL6:
.LBB26:
	.loc 1 36 0
	testl	%esi, %esi
	jle	.L82
.LBE26:
	.loc 1 25 0
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
.LBB27:
	.loc 1 36 0
	movq	$-160, %r11
.LBE27:
	.loc 1 25 0
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
.LBB28:
	.loc 1 36 0
	movl	$8, %r10d
	xorl	%r15d, %r15d
.LBE28:
	.loc 1 25 0
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movl	%esi, 12(%rsp)
.LBB29:
	.loc 1 36 0
	movl	$1, 8(%rsp)
.LVL7:
	.p2align 4,,10
	.p2align 3
.L4:
	movl	8(%rsp), %r14d
.LBE29:
	.loc 1 25 0 discriminator 1
	movq	%r10, %rbx
	movl	%r14d, %eax
	leal	-9(%r14), %r12d
	subl	$10, %eax
	andl	$-8, %eax
	subl	%eax, %r12d
.LVL8:
	.p2align 4,,10
	.p2align 3
.L15:
.LBB30:
	.loc 1 38 0
	movq	0(%r13,%r10), %rbp
	testl	%r15d, %r15d
	movsd	0(%rbp,%rbx), %xmm1
.LVL9:
	je	.L6
	cmpl	$9, 8(%rsp)
	movq	0(%r13,%rbx), %r9
	jle	.L21
	leaq	0(%rbp,%r11), %rdi
	leaq	(%r9,%r11), %rsi
	movl	%r15d, %r8d
	subl	%r12d, %r8d
	leal	-8(%r15), %ecx
	movsd	160(%rdi), %xmm0
	subl	$8, %r8d
	prefetcht0	(%rdi)
	movsd	152(%rdi), %xmm2
	shrl	$3, %r8d
	prefetcht0	(%rsi)
	mulsd	160(%rsi), %xmm0
	andl	$1, %r8d
	cmpl	%r12d, %ecx
	mulsd	152(%rsi), %xmm2
	leaq	-64(%rdi), %rdx
	leaq	-64(%rsi), %rax
	movsd	144(%rdi), %xmm3
	movsd	136(%rdi), %xmm4
	mulsd	144(%rsi), %xmm3
	mulsd	136(%rsi), %xmm4
	subsd	%xmm0, %xmm1
.LVL10:
	movsd	128(%rdi), %xmm5
	movsd	120(%rdi), %xmm6
	mulsd	128(%rsi), %xmm5
	mulsd	120(%rsi), %xmm6
	subsd	%xmm2, %xmm1
.LVL11:
	movsd	112(%rdi), %xmm7
	movsd	104(%rdi), %xmm8
	mulsd	112(%rsi), %xmm7
	mulsd	104(%rsi), %xmm8
	subsd	%xmm3, %xmm1
.LVL12:
	subsd	%xmm4, %xmm1
.LVL13:
	subsd	%xmm5, %xmm1
.LVL14:
	subsd	%xmm6, %xmm1
.LVL15:
	subsd	%xmm7, %xmm1
.LVL16:
	subsd	%xmm8, %xmm1
.LVL17:
	je	.L7
	testl	%r8d, %r8d
	je	.L8
	movsd	160(%rdx), %xmm9
	leal	-16(%r15), %ecx
	prefetcht0	(%rdx)
	movsd	152(%rdx), %xmm10
	prefetcht0	(%rax)
	mulsd	160(%rax), %xmm9
	cmpl	%r12d, %ecx
	mulsd	152(%rax), %xmm10
	movsd	144(%rdx), %xmm11
	movsd	136(%rdx), %xmm12
	mulsd	144(%rax), %xmm11
	mulsd	136(%rax), %xmm12
	subsd	%xmm9, %xmm1
.LVL18:
	movsd	128(%rdx), %xmm13
	movsd	120(%rdx), %xmm14
	mulsd	128(%rax), %xmm13
	mulsd	120(%rax), %xmm14
	subsd	%xmm10, %xmm1
.LVL19:
	movsd	112(%rdx), %xmm15
	movsd	104(%rdx), %xmm0
.LVL20:
	leaq	-128(%rdi), %rdx
	mulsd	112(%rax), %xmm15
	mulsd	104(%rax), %xmm0
	leaq	-128(%rsi), %rax
	subsd	%xmm11, %xmm1
.LVL21:
	subsd	%xmm12, %xmm1
.LVL22:
	subsd	%xmm13, %xmm1
.LVL23:
	subsd	%xmm14, %xmm1
.LVL24:
	subsd	%xmm15, %xmm1
.LVL25:
	subsd	%xmm0, %xmm1
.LVL26:
	je	.L7
.LVL27:
.L8:
	.loc 1 38 0 is_stmt 0 discriminator 3
	movsd	160(%rdx), %xmm2
	leaq	-64(%rdx), %rdi
	leaq	-64(%rax), %rsi
	movsd	152(%rdx), %xmm3
	prefetcht0	(%rdx)
	prefetcht0	(%rax)
	mulsd	160(%rax), %xmm2
	prefetcht0	(%rdi)
	prefetcht0	(%rsi)
	mulsd	152(%rax), %xmm3
	subl	$16, %ecx
	addq	$-128, %rdx
	movsd	272(%rdx), %xmm4
	addq	$-128, %rax
	movsd	264(%rdx), %xmm5
	mulsd	272(%rax), %xmm4
	mulsd	264(%rax), %xmm5
	subsd	%xmm2, %xmm1
.LVL28:
	movsd	256(%rdx), %xmm6
	movsd	248(%rdx), %xmm7
	mulsd	256(%rax), %xmm6
	mulsd	248(%rax), %xmm7
	subsd	%xmm3, %xmm1
.LVL29:
	movsd	240(%rdx), %xmm8
	movsd	232(%rdx), %xmm9
	mulsd	240(%rax), %xmm8
	mulsd	232(%rax), %xmm9
	subsd	%xmm4, %xmm1
.LVL30:
	movsd	224(%rdx), %xmm10
	movsd	216(%rdx), %xmm11
	mulsd	224(%rax), %xmm10
	mulsd	216(%rax), %xmm11
	subsd	%xmm5, %xmm1
.LVL31:
	movsd	208(%rdx), %xmm12
	movsd	200(%rdx), %xmm13
	mulsd	208(%rax), %xmm12
	mulsd	200(%rax), %xmm13
	subsd	%xmm6, %xmm1
.LVL32:
	movsd	192(%rdx), %xmm14
	movsd	184(%rdx), %xmm15
	mulsd	192(%rax), %xmm14
	mulsd	184(%rax), %xmm15
	subsd	%xmm7, %xmm1
.LVL33:
	movsd	176(%rdx), %xmm0
	mulsd	176(%rax), %xmm0
	movsd	168(%rdx), %xmm2
	subsd	%xmm8, %xmm1
.LVL34:
	mulsd	168(%rax), %xmm2
	cmpl	%r12d, %ecx
	subsd	%xmm9, %xmm1
.LVL35:
	subsd	%xmm10, %xmm1
.LVL36:
	subsd	%xmm11, %xmm1
.LVL37:
	subsd	%xmm12, %xmm1
.LVL38:
	subsd	%xmm13, %xmm1
.LVL39:
	subsd	%xmm14, %xmm1
.LVL40:
	subsd	%xmm15, %xmm1
.LVL41:
	subsd	%xmm0, %xmm1
.LVL42:
	subsd	%xmm2, %xmm1
.LVL43:
	jne	.L8
.LVL44:
.L7:
	movslq	%ecx, %r8
	leal	-1(%rcx), %edx
	movq	$-8, %rax
	salq	$3, %r8
	leaq	0(%rbp,%r8), %rsi
	addq	%r8, %r9
	movl	%edx, %edi
	andl	$7, %edi
	.loc 1 38 0
	testl	%edx, %edx
	movsd	(%rsi), %xmm3
	mulsd	(%r9), %xmm3
.LVL45:
	subsd	%xmm3, %xmm1
.LVL46:
	jle	.L6
	testl	%edi, %edi
	je	.L9
	cmpl	$1, %edi
	je	.L58
	cmpl	$2, %edi
	je	.L59
	cmpl	$3, %edi
	je	.L60
	cmpl	$4, %edi
	je	.L61
	cmpl	$5, %edi
	je	.L62
	cmpl	$6, %edi
	je	.L63
	movsd	-8(%rsi), %xmm4
	leal	-2(%rcx), %edx
	movq	$-16, %rax
	mulsd	-8(%r9), %xmm4
.LVL47:
	subsd	%xmm4, %xmm1
.LVL48:
.L63:
	movsd	(%rsi,%rax), %xmm5
	subl	$1, %edx
	mulsd	(%r9,%rax), %xmm5
.LVL49:
	subq	$8, %rax
	subsd	%xmm5, %xmm1
.LVL50:
.L62:
	movsd	(%rsi,%rax), %xmm6
	subl	$1, %edx
	mulsd	(%r9,%rax), %xmm6
.LVL51:
	subq	$8, %rax
	subsd	%xmm6, %xmm1
.LVL52:
.L61:
	movsd	(%rsi,%rax), %xmm7
	subl	$1, %edx
	mulsd	(%r9,%rax), %xmm7
.LVL53:
	subq	$8, %rax
	subsd	%xmm7, %xmm1
.LVL54:
.L60:
	movsd	(%rsi,%rax), %xmm8
	subl	$1, %edx
	mulsd	(%r9,%rax), %xmm8
.LVL55:
	subq	$8, %rax
	subsd	%xmm8, %xmm1
.LVL56:
.L59:
	movsd	(%rsi,%rax), %xmm9
	subl	$1, %edx
	mulsd	(%r9,%rax), %xmm9
.LVL57:
	subq	$8, %rax
	subsd	%xmm9, %xmm1
.LVL58:
.L58:
	movsd	(%rsi,%rax), %xmm10
	subl	$1, %edx
	mulsd	(%r9,%rax), %xmm10
.LVL59:
	subq	$8, %rax
	testl	%edx, %edx
	subsd	%xmm10, %xmm1
.LVL60:
	jle	.L6
.L9:
	movsd	(%rsi,%rax), %xmm11
	subl	$8, %edx
	movsd	-8(%rsi,%rax), %xmm12
	mulsd	(%r9,%rax), %xmm11
	mulsd	-8(%r9,%rax), %xmm12
	movsd	-16(%rsi,%rax), %xmm13
	movsd	-24(%rsi,%rax), %xmm14
	mulsd	-16(%r9,%rax), %xmm13
	mulsd	-24(%r9,%rax), %xmm14
	subsd	%xmm11, %xmm1
.LVL61:
	movsd	-32(%rsi,%rax), %xmm15
	movsd	-40(%rsi,%rax), %xmm0
	mulsd	-32(%r9,%rax), %xmm15
	mulsd	-40(%r9,%rax), %xmm0
	subsd	%xmm12, %xmm1
	movsd	-48(%rsi,%rax), %xmm2
	movsd	-56(%rsi,%rax), %xmm3
	mulsd	-48(%r9,%rax), %xmm2
	mulsd	-56(%r9,%rax), %xmm3
	subq	$64, %rax
	testl	%edx, %edx
	subsd	%xmm13, %xmm1
	subsd	%xmm14, %xmm1
	subsd	%xmm15, %xmm1
	subsd	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
.LVL62:
	subsd	%xmm3, %xmm1
.LVL63:
	jg	.L9
.L6:
	.loc 1 39 0 is_stmt 1
	cmpl	%r14d, 8(%rsp)
	je	.L83
	.loc 1 44 0
	divsd	0(%rbp,%r10), %xmm1
.LVL64:
	movq	0(%r13,%rbx), %rcx
	movsd	%xmm1, (%rcx,%r10)
.L14:
	.loc 1 37 0 discriminator 2
	addl	$1, %r14d
.LVL65:
	addq	$8, %rbx
	cmpl	%r14d, 12(%rsp)
	jge	.L15
	.loc 1 36 0 discriminator 2
	addl	$1, 8(%rsp)
.LVL66:
	addl	$1, %r15d
	addq	$8, %r10
	movl	8(%rsp), %r14d
.LVL67:
	addq	$8, %r11
	cmpl	%r14d, 12(%rsp)
	jge	.L4
.LVL68:
	.loc 1 48 0
	cmpl	$1, 12(%rsp)
	movl	$16, %r15d
	movl	$1, %ebx
	movl	12(%rsp), %r12d
	jle	.L5
.LVL69:
	.p2align 4,,10
	.p2align 3
.L57:
	.loc 1 49 0
	addl	$1, %ebx
.LVL70:
	cmpl	%ebx, %r12d
	jl	.L17
.LVL71:
	.loc 1 50 0
	movq	%r15, %rdi
	movl	%r12d, %r11d
	addq	-8(%r13,%r15), %rdi
	subl	%ebx, %r11d
	xorl	%esi, %esi
	addq	$8, %r15
	leaq	8(,%r11,8), %rdx
	call	memset
.LVL72:
	.loc 1 48 0
	cmpl	%r12d, %ebx
	jne	.L57
.LVL73:
.L5:
.LBE30:
	.loc 1 53 0
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
.LBB31:
	.loc 1 52 0
	movl	$1, %eax
.LBE31:
	.loc 1 53 0
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
.LVL74:
	popq	%r14
	.cfi_restore 14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
.LVL75:
	.p2align 4,,10
	.p2align 3
.L21:
	.cfi_restore_state
.LBB32:
	.loc 1 38 0
	movl	%r15d, %ecx
	jmp	.L7
.LVL76:
.L17:
	addq	$8, %r15
	jmp	.L57
.LVL77:
.L82:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	.loc 1 52 0
	movl	$1, %eax
.LBE32:
	.loc 1 53 0
	ret
.LVL78:
.L83:
	.cfi_def_cfa_offset 96
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
.LBB33:
	.loc 1 40 0
	pxor	%xmm4, %xmm4
	ucomisd	%xmm1, %xmm4
	jae	.L22
	.loc 1 43 0
	sqrtsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm0
	jnp	.L12
	movapd	%xmm1, %xmm0
	movq	%r11, 24(%rsp)
	movq	%r10, 16(%rsp)
	call	sqrt
.LVL79:
	movq	24(%rsp), %r11
	movq	16(%rsp), %r10
.L12:
	movsd	%xmm0, 0(%rbp,%r10)
	jmp	.L14
.LVL80:
.L22:
.LBE33:
	.loc 1 53 0
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
.LBB34:
	.loc 1 42 0
	xorl	%eax, %eax
.LBE34:
	.loc 1 53 0
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
.LVL81:
	popq	%r14
	.cfi_restore 14
	.cfi_def_cfa_offset 16
.LVL82:
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE49:
	.size	_Z6choldcPPdi, .-_Z6choldcPPdi
	.section	.text.unlikely
.LCOLDE5:
	.text
.LHOTE5:
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"allocation failure in ivector()"
	.section	.rodata.str1.1
.LC8:
	.string	"gaussj: Singular Matrix-1"
.LC9:
	.string	"gaussj: Singular Matrix-2"
	.section	.text.unlikely
.LCOLDB11:
	.text
.LHOTB11:
	.p2align 4,,15
	.globl	_Z6gaussjPPdiS0_i
	.type	_Z6gaussjPPdiS0_i, @function
_Z6gaussjPPdiS0_i:
.LFB50:
	.loc 1 56 0
	.cfi_startproc
.LVL83:
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movslq	%esi, %rax
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rax, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	.loc 1 56 0
	movq	%rdx, 40(%rsp)
.LBB51:
.LBB52:
.LBB53:
	.loc 1 119 0
	leaq	4(,%rax,4), %rdx
.LVL84:
.LBE53:
.LBE52:
.LBE51:
	.loc 1 56 0
	movq	%rdi, (%rsp)
.LVL85:
	movl	%ecx, 68(%rsp)
.LBB70:
.LBB56:
.LBB54:
	.loc 1 119 0
	movq	%rdx, %rdi
.LVL86:
	movq	%rdx, 136(%rsp)
	call	malloc
.LVL87:
	.loc 1 120 0
	testq	%rax, %rax
	.loc 1 119 0
	movq	%rax, 88(%rsp)
.LVL88:
	.loc 1 120 0
	movq	(%rsp), %rcx
	je	.L86
.LBE54:
.LBE56:
.LBB57:
.LBB58:
	.loc 1 119 0
	movq	136(%rsp), %rbx
	movq	%rcx, (%rsp)
.LVL89:
	movq	%rbx, %rdi
	call	malloc
.LVL90:
	.loc 1 120 0
	testq	%rax, %rax
	.loc 1 119 0
	movq	%rax, 96(%rsp)
.LVL91:
	.loc 1 120 0
	je	.L86
.LVL92:
.LBE58:
.LBE57:
.LBB59:
.LBB60:
	.loc 1 119 0
	movq	%rbx, %rdi
	call	malloc
.LVL93:
	.loc 1 120 0
	testq	%rax, %rax
	.loc 1 119 0
	movq	%rax, 80(%rsp)
.LVL94:
	.loc 1 120 0
	je	.L86
.LVL95:
.LBE60:
.LBE59:
	.loc 1 65 0 discriminator 1
	testl	%r13d, %r13d
	jle	.L87
	.loc 1 65 0 is_stmt 0
	leal	-1(%r13), %ebp
	movq	%rax, %r9
	xorl	%esi, %esi
	addq	$4, %r9
	leal	-9(%r13), %r12d
	addq	$1, %rbp
	movq	%r9, %rdi
	movq	%r9, 112(%rsp)
	leaq	0(,%rbp,4), %rdx
	movq	%rbp, 120(%rsp)
	andl	$-8, %r12d
	addl	$9, %r12d
	call	memset
.LVL96:
	movl	68(%rsp), %r10d
	pxor	%xmm4, %xmm4
	.loc 1 72 0 is_stmt 1
	movsd	.LC7(%rip), %xmm1
	movl	%r12d, 64(%rsp)
	.loc 1 87 0
	movsd	.LC10(%rip), %xmm3
	.loc 1 65 0
	movq	$0, 72(%rsp)
	movl	%r10d, %r14d
	movl	%r10d, %eax
	movq	(%rsp), %r10
	subl	$9, %r14d
.LBE70:
	.loc 1 56 0
	movapd	%xmm4, %xmm5
	andl	$-8, %r14d
	addl	$9, %r14d
	movl	%r14d, 104(%rsp)
.LBB71:
	.loc 1 65 0
	movl	$-1, %r14d
	addl	%r14d, %eax
	movl	%r14d, %r15d
	addq	$1, %rax
	movq	%rax, 128(%rsp)
.LVL97:
	.p2align 4,,10
	.p2align 3
.L88:
	movq	112(%rsp), %r9
	movq	80(%rsp), %rbx
.LBE71:
	.loc 1 56 0 discriminator 1
	xorl	%edi, %edi
	movapd	%xmm5, %xmm0
	movl	$1, %ebp
.LVL98:
	.p2align 4,,10
	.p2align 3
.L94:
.LBB72:
	.loc 1 69 0
	cmpl	$1, 4(%rbx,%rdi)
	je	.L89
	.loc 1 71 0
	movl	(%r9), %edx
	leal	-1(%r13), %esi
	andl	$3, %esi
.LVL99:
	testl	%edx, %edx
	jne	.L494
	.loc 1 72 0
	movq	8(%r10,%rdi,2), %rcx
	movsd	8(%rcx), %xmm2
	andpd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	jb	.L495
	.loc 1 73 0
	movapd	%xmm2, %xmm0
.LVL100:
	.loc 1 72 0
	movl	%ebp, %r14d
	movl	$1, %r15d
.L495:
.LVL101:
	.loc 1 70 0
	cmpl	$2, %r13d
	movl	$2, %r11d
	leaq	4(%r9), %rax
	movl	$16, %ecx
	jl	.L89
	testl	%esi, %esi
	je	.L93
	cmpl	$1, %esi
	je	.L609
	cmpl	$2, %esi
	je	.L610
	.loc 1 71 0
	movl	4(%r9), %r8d
	testl	%r8d, %r8d
	je	.L725
	.loc 1 77 0
	cmpl	$1, %r8d
	jg	.L724
.LVL102:
.L499:
	.loc 1 70 0
	addl	$1, %r11d
	addq	$4, %rax
	addq	$8, %rcx
.L610:
	.loc 1 71 0
	movl	(%rax), %esi
	testl	%esi, %esi
	je	.L726
	.loc 1 77 0
	cmpl	$1, %esi
	jg	.L724
.LVL103:
.L504:
	.loc 1 70 0
	addl	$1, %r11d
	addq	$4, %rax
	addq	$8, %rcx
.L609:
	.loc 1 71 0
	movl	(%rax), %r8d
	testl	%r8d, %r8d
	je	.L727
	.loc 1 77 0
	cmpl	$1, %r8d
	jg	.L724
.LVL104:
.L509:
	.loc 1 70 0
	addl	$1, %r11d
	addq	$4, %rax
	addq	$8, %rcx
	cmpl	%r11d, %r13d
	jge	.L93
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L770:
	.loc 1 72 0
	movq	8(%r10,%rdi,2), %rdx
	movsd	(%rdx,%rcx), %xmm9
	andpd	%xmm1, %xmm9
	ucomisd	%xmm0, %xmm9
	jb	.L91
	.loc 1 73 0
	movapd	%xmm9, %xmm0
.LVL105:
	.loc 1 72 0
	movl	%ebp, %r14d
	movl	%r11d, %r15d
.L91:
.LVL106:
	leaq	4(%rax), %r12
	.loc 1 71 0 discriminator 2
	movl	4(%rax), %eax
	.loc 1 70 0 discriminator 2
	addl	$1, %r11d
	leaq	8(%rcx), %r8
	.loc 1 71 0 discriminator 2
	testl	%eax, %eax
	jne	.L513
	.loc 1 72 0
	movq	8(%r10,%rdi,2), %rsi
	movsd	8(%rsi,%rcx), %xmm10
	andpd	%xmm1, %xmm10
	ucomisd	%xmm0, %xmm10
	jb	.L514
	.loc 1 73 0
	movapd	%xmm10, %xmm0
.LVL107:
	.loc 1 72 0
	movl	%ebp, %r14d
	movl	%r11d, %r15d
.L514:
.LVL108:
	.loc 1 71 0
	movl	4(%r12), %edx
	.loc 1 70 0
	leal	1(%r11), %ecx
	.loc 1 71 0
	testl	%edx, %edx
	je	.L728
.L771:
	.loc 1 77 0
	cmpl	$1, %edx
	jg	.L724
.L518:
	.loc 1 71 0
	movl	8(%r12), %ecx
	.loc 1 70 0
	leal	2(%r11), %esi
	.loc 1 71 0
	testl	%ecx, %ecx
	je	.L729
.L772:
	.loc 1 77 0
	cmpl	$1, %ecx
	jg	.L724
.LVL109:
.L522:
	.loc 1 70 0
	addl	$3, %r11d
	leaq	12(%r12), %rax
	leaq	24(%r8), %rcx
	cmpl	%r11d, %r13d
	jl	.L89
.L93:
	.loc 1 71 0
	movl	(%rax), %esi
	testl	%esi, %esi
	je	.L770
	.loc 1 77 0
	cmpl	$1, %esi
	jle	.L91
.L724:
	.loc 1 77 0 is_stmt 0 discriminator 1
	movl	$.LC8, %edi
	call	_Z7nrerrorPKc
.LVL110:
	.p2align 4,,10
	.p2align 3
.L513:
	.loc 1 77 0
	cmpl	$1, %eax
	jg	.L724
	.loc 1 71 0 is_stmt 1
	movl	4(%r12), %edx
	.loc 1 70 0
	leal	1(%r11), %ecx
	.loc 1 71 0
	testl	%edx, %edx
	jne	.L771
.L728:
	.loc 1 72 0
	movq	8(%r10,%rdi,2), %rax
	movsd	8(%rax,%r8), %xmm11
	andpd	%xmm1, %xmm11
	ucomisd	%xmm0, %xmm11
	jb	.L518
	movl	%ecx, %r15d
	.loc 1 71 0
	movl	8(%r12), %ecx
	.loc 1 72 0
	movl	%ebp, %r14d
	.loc 1 73 0
	movapd	%xmm11, %xmm0
.LVL111:
	.loc 1 70 0
	leal	2(%r11), %esi
	.loc 1 71 0
	testl	%ecx, %ecx
	jne	.L772
.L729:
	.loc 1 72 0
	movq	8(%r10,%rdi,2), %rdx
	movsd	16(%rdx,%r8), %xmm12
	andpd	%xmm1, %xmm12
	ucomisd	%xmm0, %xmm12
	jb	.L522
	.loc 1 73 0
	movapd	%xmm12, %xmm0
.LVL112:
	.loc 1 72 0
	movl	%ebp, %r14d
	movl	%esi, %r15d
	jmp	.L522
.LVL113:
	.p2align 4,,10
	.p2align 3
.L89:
	.loc 1 68 0 discriminator 2
	addl	$1, %ebp
.LVL114:
	addq	$4, %rdi
	cmpl	%ebp, %r13d
	jge	.L94
	.loc 1 79 0
	movq	80(%rsp), %rdi
	movslq	%r15d, %r8
	addl	$1, (%rdi,%r8,4)
	.loc 1 80 0
	cmpl	%r15d, %r14d
	je	.L773
	movslq	%r14d, %r11
	movq	(%r10,%r8,8), %rbp
.LVL115:
	leaq	0(,%r8,8), %r9
	movq	(%r10,%r11,8), %rdx
	movq	%r9, (%rsp)
	leaq	24(%rbp), %r12
	leaq	8(%rbp), %rcx
	leaq	8(%rdx), %rbx
	leaq	24(%rdx), %rsi
	cmpq	%r12, %rbx
	setae	%al
	cmpq	%rcx, %rsi
	setbe	%dil
	orb	%dil, %al
	je	.L163
	cmpl	$15, %r13d
	jbe	.L163
	movq	%rbx, %r9
	movl	$1, %r12d
	salq	$60, %r9
	shrq	$63, %r9
	cmpl	%r9d, %r13d
	cmovbe	%r13d, %r9d
	testl	%r9d, %r9d
	movl	%r9d, %esi
	je	.L98
.LVL116:
	.loc 1 81 0
	movsd	8(%rdx), %xmm13
.LVL117:
	movb	$2, %r12b
	movsd	8(%rbp), %xmm14
	movsd	%xmm14, 8(%rdx)
	movsd	%xmm13, 8(%rbp)
.LVL118:
.L98:
	movl	%r13d, %ebx
	movl	%esi, %ecx
	movl	$1, %edi
	subl	%esi, %ebx
	leaq	8(,%rcx,8), %rcx
	movl	%ebx, 12(%rsp)
	subl	$2, %ebx
	shrl	%ebx
	leaq	(%rdx,%rcx), %rsi
	addq	%rbp, %rcx
	movl	%ebx, %r9d
	leal	1(%rbx), %ebx
	movapd	(%rsi), %xmm15
	andl	$7, %r9d
	leal	(%rbx,%rbx), %eax
	cmpl	%ebx, %edi
	movupd	(%rcx), %xmm2
	movl	%eax, 16(%rsp)
	movl	$16, %eax
	movaps	%xmm2, (%rsi)
	movups	%xmm15, (%rcx)
	jae	.L717
	testl	%r9d, %r9d
	je	.L99
	cmpl	$1, %r9d
	je	.L602
	cmpl	$2, %r9d
	je	.L603
	cmpl	$3, %r9d
	je	.L604
	cmpl	$4, %r9d
	je	.L605
	cmpl	$5, %r9d
	je	.L606
	cmpl	$6, %r9d
	je	.L607
	movapd	16(%rsi), %xmm6
	movl	$2, %edi
	movl	$32, %eax
	movupd	16(%rcx), %xmm7
	movaps	%xmm7, 16(%rsi)
	movups	%xmm6, 16(%rcx)
.L607:
	addl	$1, %edi
	movapd	(%rsi,%rax), %xmm8
	movupd	(%rcx,%rax), %xmm9
	movaps	%xmm9, (%rsi,%rax)
	movups	%xmm8, (%rcx,%rax)
	addq	$16, %rax
.L606:
	addl	$1, %edi
	movapd	(%rsi,%rax), %xmm10
	movupd	(%rcx,%rax), %xmm11
	movaps	%xmm11, (%rsi,%rax)
	movups	%xmm10, (%rcx,%rax)
	addq	$16, %rax
.L605:
	addl	$1, %edi
	movapd	(%rsi,%rax), %xmm12
	movupd	(%rcx,%rax), %xmm0
.LVL119:
	movaps	%xmm0, (%rsi,%rax)
	movups	%xmm12, (%rcx,%rax)
	addq	$16, %rax
.L604:
	addl	$1, %edi
	movapd	(%rsi,%rax), %xmm13
	movupd	(%rcx,%rax), %xmm14
	movaps	%xmm14, (%rsi,%rax)
	movups	%xmm13, (%rcx,%rax)
	addq	$16, %rax
.L603:
	addl	$1, %edi
	movapd	(%rsi,%rax), %xmm15
	movupd	(%rcx,%rax), %xmm2
	movaps	%xmm2, (%rsi,%rax)
	movups	%xmm15, (%rcx,%rax)
	addq	$16, %rax
.L602:
	addl	$1, %edi
	movapd	(%rsi,%rax), %xmm6
	movupd	(%rcx,%rax), %xmm7
	movaps	%xmm7, (%rsi,%rax)
	movups	%xmm6, (%rcx,%rax)
	addq	$16, %rax
	cmpl	%ebx, %edi
	jae	.L717
.L99:
	addl	$8, %edi
	.loc 1 81 0 is_stmt 0 discriminator 3
	movapd	(%rsi,%rax), %xmm8
	movupd	(%rcx,%rax), %xmm9
	movaps	%xmm9, (%rsi,%rax)
	movups	%xmm8, (%rcx,%rax)
	movupd	16(%rcx,%rax), %xmm11
	movapd	16(%rsi,%rax), %xmm10
	movaps	%xmm11, 16(%rsi,%rax)
	movups	%xmm10, 16(%rcx,%rax)
	movupd	32(%rcx,%rax), %xmm0
	movapd	32(%rsi,%rax), %xmm12
	movaps	%xmm0, 32(%rsi,%rax)
	movups	%xmm12, 32(%rcx,%rax)
	movupd	48(%rcx,%rax), %xmm14
	movapd	48(%rsi,%rax), %xmm13
	movaps	%xmm14, 48(%rsi,%rax)
	movups	%xmm13, 48(%rcx,%rax)
	movupd	64(%rcx,%rax), %xmm2
	movapd	64(%rsi,%rax), %xmm15
	movaps	%xmm2, 64(%rsi,%rax)
	movups	%xmm15, 64(%rcx,%rax)
	movupd	80(%rcx,%rax), %xmm7
	movapd	80(%rsi,%rax), %xmm6
	movaps	%xmm7, 80(%rsi,%rax)
	movups	%xmm6, 80(%rcx,%rax)
	movupd	96(%rcx,%rax), %xmm9
	movapd	96(%rsi,%rax), %xmm8
	movaps	%xmm9, 96(%rsi,%rax)
	movups	%xmm8, 96(%rcx,%rax)
	movupd	112(%rcx,%rax), %xmm11
	movapd	112(%rsi,%rax), %xmm10
	movaps	%xmm11, 112(%rsi,%rax)
	movups	%xmm10, 112(%rcx,%rax)
	subq	$-128, %rax
	cmpl	%ebx, %edi
	jb	.L99
.L717:
	movl	16(%rsp), %r9d
	movl	%r9d, %eax
	addl	%r12d, %eax
	cmpl	%r9d, 12(%rsp)
	je	.L101
.LVL120:
	.loc 1 81 0
	cltq
	salq	$3, %rax
.LVL121:
	addq	%rax, %rdx
	addq	%rbp, %rax
	movsd	(%rdx), %xmm12
.LVL122:
	movsd	(%rax), %xmm0
	movsd	%xmm0, (%rdx)
	movsd	%xmm12, (%rax)
.LVL123:
.L101:
	.loc 1 82 0 is_stmt 1 discriminator 1
	movl	68(%rsp), %r9d
	testl	%r9d, %r9d
	jle	.L96
	movq	40(%rsp), %rdi
	movq	(%rdi,%r11,8), %rdx
	movq	(%rdi,%r8,8), %rcx
	leaq	8(%rdx), %r8
	leaq	24(%rcx), %r11
	leaq	24(%rdx), %rbx
	leaq	8(%rcx), %rsi
	cmpq	%r11, %r8
	setae	%al
	cmpq	%rsi, %rbx
	setbe	%r12b
	orb	%r12b, %al
	je	.L102
	cmpl	$15, %r9d
	jbe	.L102
	salq	$60, %r8
	.loc 1 82 0 is_stmt 0
	movl	$1, %ebx
	shrq	$63, %r8
	cmpl	%r8d, %r9d
	movl	%r8d, %esi
	cmovbe	%r9d, %esi
	testl	%esi, %esi
	je	.L103
	movsd	8(%rdx), %xmm10
.LVL124:
	movb	$2, %bl
	movsd	8(%rcx), %xmm11
	movsd	%xmm11, 8(%rdx)
	movsd	%xmm10, 8(%rcx)
.LVL125:
.L103:
	movl	68(%rsp), %r12d
	movl	%esi, %r8d
	subl	%esi, %r12d
	leaq	8(,%r8,8), %rsi
	movl	$1, %r8d
	leal	-2(%r12), %eax
	shrl	%eax
	leal	1(%rax), %r11d
	movl	%eax, %r9d
	movl	$16, %eax
	andl	$7, %r9d
	leal	(%r11,%r11), %edi
	movl	%edi, 12(%rsp)
	leaq	(%rdx,%rsi), %rdi
	addq	%rcx, %rsi
	movupd	(%rsi), %xmm0
	cmpl	%r11d, %r8d
	movapd	(%rdi), %xmm12
	movaps	%xmm0, (%rdi)
	movups	%xmm12, (%rsi)
	jae	.L718
	testl	%r9d, %r9d
	je	.L104
	cmpl	$1, %r9d
	je	.L590
	cmpl	$2, %r9d
	je	.L591
	cmpl	$3, %r9d
	je	.L592
	cmpl	$4, %r9d
	je	.L593
	cmpl	$5, %r9d
	je	.L594
	cmpl	$6, %r9d
	je	.L595
	movapd	16(%rdi), %xmm13
	movl	$2, %r8d
	movl	$32, %eax
	movupd	16(%rsi), %xmm14
	movaps	%xmm14, 16(%rdi)
	movups	%xmm13, 16(%rsi)
.L595:
	addl	$1, %r8d
	movapd	(%rdi,%rax), %xmm15
	movupd	(%rsi,%rax), %xmm2
	movaps	%xmm2, (%rdi,%rax)
	movups	%xmm15, (%rsi,%rax)
	addq	$16, %rax
.L594:
	addl	$1, %r8d
	movapd	(%rdi,%rax), %xmm6
	movupd	(%rsi,%rax), %xmm7
	movaps	%xmm7, (%rdi,%rax)
	movups	%xmm6, (%rsi,%rax)
	addq	$16, %rax
.L593:
	addl	$1, %r8d
	movapd	(%rdi,%rax), %xmm8
	movupd	(%rsi,%rax), %xmm9
	movaps	%xmm9, (%rdi,%rax)
	movups	%xmm8, (%rsi,%rax)
	addq	$16, %rax
.L592:
	addl	$1, %r8d
	movapd	(%rdi,%rax), %xmm10
	movupd	(%rsi,%rax), %xmm11
	movaps	%xmm11, (%rdi,%rax)
	movups	%xmm10, (%rsi,%rax)
	addq	$16, %rax
.L591:
	addl	$1, %r8d
	movapd	(%rdi,%rax), %xmm12
	movupd	(%rsi,%rax), %xmm0
	movaps	%xmm0, (%rdi,%rax)
	movups	%xmm12, (%rsi,%rax)
	addq	$16, %rax
.L590:
	addl	$1, %r8d
	movapd	(%rdi,%rax), %xmm13
	movupd	(%rsi,%rax), %xmm14
	movaps	%xmm14, (%rdi,%rax)
	movups	%xmm13, (%rsi,%rax)
	addq	$16, %rax
	cmpl	%r11d, %r8d
	jae	.L718
.L104:
	addl	$8, %r8d
	.loc 1 82 0 discriminator 3
	movapd	(%rdi,%rax), %xmm15
	movupd	(%rsi,%rax), %xmm2
	movaps	%xmm2, (%rdi,%rax)
	movups	%xmm15, (%rsi,%rax)
	movupd	16(%rsi,%rax), %xmm7
	movapd	16(%rdi,%rax), %xmm6
	movaps	%xmm7, 16(%rdi,%rax)
	movups	%xmm6, 16(%rsi,%rax)
	movupd	32(%rsi,%rax), %xmm9
	movapd	32(%rdi,%rax), %xmm8
	movaps	%xmm9, 32(%rdi,%rax)
	movups	%xmm8, 32(%rsi,%rax)
	movupd	48(%rsi,%rax), %xmm11
	movapd	48(%rdi,%rax), %xmm10
	movaps	%xmm11, 48(%rdi,%rax)
	movups	%xmm10, 48(%rsi,%rax)
	movupd	64(%rsi,%rax), %xmm0
	movapd	64(%rdi,%rax), %xmm12
	movaps	%xmm0, 64(%rdi,%rax)
	movups	%xmm12, 64(%rsi,%rax)
	movupd	80(%rsi,%rax), %xmm14
	movapd	80(%rdi,%rax), %xmm13
	movaps	%xmm14, 80(%rdi,%rax)
	movups	%xmm13, 80(%rsi,%rax)
	movupd	96(%rsi,%rax), %xmm2
	movapd	96(%rdi,%rax), %xmm15
	movaps	%xmm2, 96(%rdi,%rax)
	movups	%xmm15, 96(%rsi,%rax)
	movupd	112(%rsi,%rax), %xmm7
	movapd	112(%rdi,%rax), %xmm6
	movaps	%xmm7, 112(%rdi,%rax)
	movups	%xmm6, 112(%rsi,%rax)
	subq	$-128, %rax
	cmpl	%r11d, %r8d
	jb	.L104
.L718:
	movl	12(%rsp), %r9d
	movl	%r9d, %eax
	addl	%ebx, %eax
	cmpl	%r9d, %r12d
	je	.L96
.LVL126:
	.loc 1 82 0
	cltq
	salq	$3, %rax
.LVL127:
	addq	%rax, %rdx
	addq	%rcx, %rax
	movsd	(%rdx), %xmm8
.LVL128:
	movsd	(%rax), %xmm9
	movsd	%xmm9, (%rdx)
	movsd	%xmm8, (%rax)
.LVL129:
.L96:
	.loc 1 86 0 is_stmt 1
	movq	(%rsp), %rbx
	.loc 1 84 0
	movq	72(%rsp), %rcx
	movq	96(%rsp), %rdx
	.loc 1 85 0
	movq	88(%rsp), %r8
	.loc 1 86 0
	addq	%rbp, %rbx
	movsd	(%rbx), %xmm6
	.loc 1 84 0
	movl	%r14d, 4(%rdx,%rcx,4)
	.loc 1 85 0
	movl	%r15d, 4(%r8,%rcx,4)
	.loc 1 86 0
	ucomisd	%xmm4, %xmm6
	jp	.L108
	je	.L774
.L108:
	leaq	8(%rbp), %r12
	.loc 1 87 0
	movapd	%xmm3, %xmm2
	.loc 1 88 0
	movsd	%xmm3, (%rbx)
	movq	%r12, 32(%rsp)
	salq	$60, %r12
	.loc 1 87 0
	divsd	%xmm6, %xmm2
.LVL130:
	shrq	$63, %r12
	cmpl	%r12d, %r13d
	cmovbe	%r13d, %r12d
	cmpl	$3, %r13d
	jg	.L775
	.loc 1 88 0
	movl	%r13d, %r12d
.L162:
	cmpl	$1, %r12d
	.loc 1 89 0
	movl	$2, %edi
	movsd	8(%rbp), %xmm7
	mulsd	%xmm2, %xmm7
	movsd	%xmm7, 8(%rbp)
.LVL131:
	je	.L112
	movsd	16(%rbp), %xmm8
	cmpl	$3, %r12d
	movb	$3, %dil
	mulsd	%xmm2, %xmm8
	movsd	%xmm8, 16(%rbp)
.LVL132:
	jne	.L112
	movsd	24(%rbp), %xmm9
	movb	$4, %dil
	mulsd	%xmm2, %xmm9
	movsd	%xmm9, 24(%rbp)
.LVL133:
.L112:
	cmpl	%r12d, %r13d
	je	.L113
.L111:
	movl	%r13d, %ebx
	movl	%r12d, %eax
	subl	%r12d, %ebx
	leal	-2(%rbx), %esi
	shrl	%esi
	cmpl	$1, %ebx
	leal	1(%rsi), %r9d
	leal	(%r9,%r9), %r12d
	je	.L114
	leaq	8(,%rax,8), %rax
	movapd	%xmm2, %xmm0
	subl	$4, %esi
	addq	%rbp, %rax
	cmpl	$-6, %esi
	unpcklpd	%xmm0, %xmm0
	ja	.L169
	movapd	(%rax), %xmm10
	shrl	$2, %esi
	movl	$4, %r8d
	leal	4(,%rsi,4), %r11d
	.loc 1 88 0
	movq	%rax, %rcx
	andl	$3, %esi
	.loc 1 89 0
	movapd	16(%rax), %xmm11
	prefetcht0	400(%rax)
	addq	$64, %rax
	mulpd	%xmm0, %xmm10
	movapd	-32(%rax), %xmm12
	mulpd	%xmm0, %xmm11
	movapd	-16(%rax), %xmm13
	mulpd	%xmm0, %xmm12
	movaps	%xmm10, -64(%rax)
	mulpd	%xmm0, %xmm13
	movaps	%xmm11, -48(%rax)
	movaps	%xmm12, -32(%rax)
	movaps	%xmm13, -16(%rax)
	cmpl	%r11d, %r8d
	movq	%rax, %rdx
	je	.L115
	testl	%esi, %esi
	je	.L116
	cmpl	$1, %esi
	je	.L582
	cmpl	$2, %esi
	je	.L583
	movapd	(%rax), %xmm14
	prefetcht0	400(%rax)
	leaq	128(%rcx), %rdx
	addq	$64, %rax
	movl	$8, %r8d
	mulpd	%xmm0, %xmm14
	movaps	%xmm14, 64(%rcx)
	movapd	-48(%rax), %xmm15
	movapd	-32(%rax), %xmm6
	mulpd	%xmm0, %xmm15
	movapd	-16(%rax), %xmm7
	mulpd	%xmm0, %xmm6
	mulpd	%xmm0, %xmm7
	movaps	%xmm15, -48(%rax)
	movaps	%xmm6, -32(%rax)
	movaps	%xmm7, -16(%rax)
.L583:
	prefetcht0	400(%rax)
	addq	$64, %rdx
	addq	$64, %rax
	addl	$4, %r8d
	movapd	-64(%rax), %xmm8
	mulpd	%xmm0, %xmm8
	movaps	%xmm8, -64(%rdx)
	movapd	-48(%rax), %xmm9
	mulpd	%xmm0, %xmm9
	movaps	%xmm9, -48(%rdx)
	movapd	-32(%rax), %xmm10
	mulpd	%xmm0, %xmm10
	movaps	%xmm10, -32(%rdx)
	movapd	-16(%rax), %xmm11
	mulpd	%xmm0, %xmm11
	movaps	%xmm11, -16(%rdx)
.L582:
	prefetcht0	400(%rax)
	addl	$4, %r8d
	addq	$64, %rax
	addq	$64, %rdx
	movapd	-64(%rax), %xmm12
	mulpd	%xmm0, %xmm12
	movaps	%xmm12, -64(%rdx)
	movapd	-48(%rax), %xmm13
	mulpd	%xmm0, %xmm13
	movaps	%xmm13, -48(%rdx)
	movapd	-32(%rax), %xmm14
	mulpd	%xmm0, %xmm14
	movaps	%xmm14, -32(%rdx)
	movapd	-16(%rax), %xmm15
	mulpd	%xmm0, %xmm15
	movaps	%xmm15, -16(%rdx)
	cmpl	%r11d, %r8d
	je	.L115
.L116:
	prefetcht0	400(%rax)
	prefetcht0	464(%rax)
	prefetcht0	528(%rax)
	.loc 1 89 0 is_stmt 0 discriminator 3
	movapd	(%rax), %xmm6
	prefetcht0	592(%rax)
	addl	$16, %r8d
	addq	$256, %rax
	addq	$256, %rdx
	mulpd	%xmm0, %xmm6
	movaps	%xmm6, -256(%rdx)
	movapd	-240(%rax), %xmm7
	mulpd	%xmm0, %xmm7
	movaps	%xmm7, -240(%rdx)
	movapd	-224(%rax), %xmm8
	mulpd	%xmm0, %xmm8
	movaps	%xmm8, -224(%rdx)
	movapd	-208(%rax), %xmm9
	mulpd	%xmm0, %xmm9
	movaps	%xmm9, -208(%rdx)
	movapd	-192(%rax), %xmm10
	mulpd	%xmm0, %xmm10
	movaps	%xmm10, -192(%rdx)
	movapd	-176(%rax), %xmm11
	mulpd	%xmm0, %xmm11
	movaps	%xmm11, -176(%rdx)
	movapd	-160(%rax), %xmm12
	mulpd	%xmm0, %xmm12
	movaps	%xmm12, -160(%rdx)
	movapd	-144(%rax), %xmm13
	mulpd	%xmm0, %xmm13
	movaps	%xmm13, -144(%rdx)
	movapd	-128(%rax), %xmm14
	mulpd	%xmm0, %xmm14
	movaps	%xmm14, -128(%rdx)
	movapd	-112(%rax), %xmm15
	mulpd	%xmm0, %xmm15
	movaps	%xmm15, -112(%rdx)
	movapd	-96(%rax), %xmm6
	mulpd	%xmm0, %xmm6
	movaps	%xmm6, -96(%rdx)
	movapd	-80(%rax), %xmm7
	mulpd	%xmm0, %xmm7
	movaps	%xmm7, -80(%rdx)
	movapd	-64(%rax), %xmm8
	mulpd	%xmm0, %xmm8
	movaps	%xmm8, -64(%rdx)
	movapd	-48(%rax), %xmm9
	mulpd	%xmm0, %xmm9
	movaps	%xmm9, -48(%rdx)
	movapd	-32(%rax), %xmm10
	mulpd	%xmm0, %xmm10
	movaps	%xmm10, -32(%rdx)
	movapd	-16(%rax), %xmm11
	mulpd	%xmm0, %xmm11
	movaps	%xmm11, -16(%rdx)
	cmpl	%r11d, %r8d
	jne	.L116
.L115:
	movl	%r11d, %ecx
	leal	1(%r11), %esi
	.loc 1 89 0
	movapd	(%rax), %xmm12
	notl	%ecx
	addl	%r9d, %ecx
	mulpd	%xmm0, %xmm12
	andl	$7, %ecx
	cmpl	%r9d, %esi
	movl	%ecx, %r8d
	movl	$16, %ecx
	movaps	%xmm12, (%rdx)
	jae	.L719
	testl	%r8d, %r8d
	je	.L118
	cmpl	$1, %r8d
	je	.L576
	cmpl	$2, %r8d
	je	.L577
	cmpl	$3, %r8d
	je	.L578
	cmpl	$4, %r8d
	je	.L579
	cmpl	$5, %r8d
	je	.L580
	cmpl	$6, %r8d
	je	.L581
	movapd	16(%rax), %xmm13
	leal	2(%r11), %esi
	movl	$32, %ecx
	mulpd	%xmm0, %xmm13
	movaps	%xmm13, 16(%rdx)
.L581:
	addl	$1, %esi
	movapd	(%rax,%rcx), %xmm14
	mulpd	%xmm0, %xmm14
	movaps	%xmm14, (%rdx,%rcx)
	addq	$16, %rcx
.L580:
	addl	$1, %esi
	movapd	(%rax,%rcx), %xmm15
	mulpd	%xmm0, %xmm15
	movaps	%xmm15, (%rdx,%rcx)
	addq	$16, %rcx
.L579:
	addl	$1, %esi
	movapd	(%rax,%rcx), %xmm6
	mulpd	%xmm0, %xmm6
	movaps	%xmm6, (%rdx,%rcx)
	addq	$16, %rcx
.L578:
	addl	$1, %esi
	movapd	(%rax,%rcx), %xmm7
	mulpd	%xmm0, %xmm7
	movaps	%xmm7, (%rdx,%rcx)
	addq	$16, %rcx
.L577:
	addl	$1, %esi
	movapd	(%rax,%rcx), %xmm8
	mulpd	%xmm0, %xmm8
	movaps	%xmm8, (%rdx,%rcx)
	addq	$16, %rcx
.L576:
	addl	$1, %esi
	movapd	(%rax,%rcx), %xmm9
	mulpd	%xmm0, %xmm9
	movaps	%xmm9, (%rdx,%rcx)
	addq	$16, %rcx
	cmpl	%r9d, %esi
	jae	.L719
.L118:
	addl	$8, %esi
	movapd	(%rax,%rcx), %xmm10
	mulpd	%xmm0, %xmm10
	movaps	%xmm10, (%rdx,%rcx)
	movapd	16(%rax,%rcx), %xmm11
	mulpd	%xmm0, %xmm11
	movaps	%xmm11, 16(%rdx,%rcx)
	movapd	32(%rax,%rcx), %xmm12
	mulpd	%xmm0, %xmm12
	movaps	%xmm12, 32(%rdx,%rcx)
	movapd	48(%rax,%rcx), %xmm13
	mulpd	%xmm0, %xmm13
	movaps	%xmm13, 48(%rdx,%rcx)
	movapd	64(%rax,%rcx), %xmm14
	mulpd	%xmm0, %xmm14
	movaps	%xmm14, 64(%rdx,%rcx)
	movapd	80(%rax,%rcx), %xmm15
	mulpd	%xmm0, %xmm15
	movaps	%xmm15, 80(%rdx,%rcx)
	movapd	96(%rax,%rcx), %xmm6
	mulpd	%xmm0, %xmm6
	movaps	%xmm6, 96(%rdx,%rcx)
	movapd	112(%rax,%rcx), %xmm7
	mulpd	%xmm0, %xmm7
	movaps	%xmm7, 112(%rdx,%rcx)
	subq	$-128, %rcx
	cmpl	%r9d, %esi
	jb	.L118
.L719:
	addl	%r12d, %edi
	cmpl	%r12d, %ebx
	je	.L113
.L114:
	movslq	%edi, %rdx
	leaq	0(%rbp,%rdx,8), %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm2, %xmm0
	movsd	%xmm0, (%rax)
.L113:
.LVL134:
	.loc 1 90 0 is_stmt 1
	movl	68(%rsp), %r9d
	testl	%r9d, %r9d
	jle	.L130
	movq	40(%rsp), %r11
	movq	(%rsp), %r8
	movl	68(%rsp), %ecx
	movq	(%r11,%r8), %rdi
	leaq	8(%rdi), %rsi
	salq	$60, %rsi
	shrq	$63, %rsi
	cmpl	%ecx, %esi
	cmova	%ecx, %esi
	cmpl	$3, %ecx
	cmovbe	%ecx, %esi
	testl	%esi, %esi
	je	.L170
	movsd	8(%rdi), %xmm8
	cmpl	$1, %esi
	movl	$2, %ebx
	mulsd	%xmm2, %xmm8
	movsd	%xmm8, 8(%rdi)
.LVL135:
	je	.L124
	movsd	16(%rdi), %xmm9
	cmpl	$3, %esi
	movb	$3, %bl
	mulsd	%xmm2, %xmm9
	movsd	%xmm9, 16(%rdi)
.LVL136:
	jne	.L124
	movsd	24(%rdi), %xmm10
	movb	$4, %bl
	mulsd	%xmm2, %xmm10
	movsd	%xmm10, 24(%rdi)
.LVL137:
.L124:
	cmpl	%esi, 68(%rsp)
	je	.L130
.L123:
	movl	68(%rsp), %r12d
	movl	%esi, %r11d
	subl	%esi, %r12d
	leal	-2(%r12), %edx
	shrl	%edx
	cmpl	$1, %r12d
	leal	1(%rdx), %r9d
	leal	(%r9,%r9), %eax
	movl	%eax, 12(%rsp)
	je	.L126
	leaq	8(,%r11,8), %rax
	movapd	%xmm2, %xmm0
	subl	$4, %edx
	addq	%rdi, %rax
	cmpl	$-6, %edx
	unpcklpd	%xmm0, %xmm0
	ja	.L173
	movapd	(%rax), %xmm11
	shrl	$2, %edx
	movl	$4, %r8d
	leal	4(,%rdx,4), %r11d
	movl	%edx, %esi
	movq	%rax, %rcx
	movapd	16(%rax), %xmm12
	andl	$3, %esi
	prefetcht0	400(%rax)
	mulpd	%xmm0, %xmm11
	addq	$64, %rax
	movapd	-32(%rax), %xmm13
	mulpd	%xmm0, %xmm12
	movapd	-16(%rax), %xmm14
	mulpd	%xmm0, %xmm13
	movaps	%xmm11, -64(%rax)
	mulpd	%xmm0, %xmm14
	movaps	%xmm12, -48(%rax)
	movaps	%xmm13, -32(%rax)
	movaps	%xmm14, -16(%rax)
	cmpl	%r11d, %r8d
	movq	%rax, %rdx
	je	.L127
	testl	%esi, %esi
	je	.L128
	cmpl	$1, %esi
	je	.L574
	cmpl	$2, %esi
	je	.L575
	movapd	(%rax), %xmm15
	prefetcht0	400(%rax)
	leaq	128(%rcx), %rdx
	addq	$64, %rax
	movl	$8, %r8d
	mulpd	%xmm0, %xmm15
	movaps	%xmm15, 64(%rcx)
	movapd	-48(%rax), %xmm6
	movapd	-32(%rax), %xmm7
	mulpd	%xmm0, %xmm6
	movapd	-16(%rax), %xmm8
	mulpd	%xmm0, %xmm7
	mulpd	%xmm0, %xmm8
	movaps	%xmm6, -48(%rax)
	movaps	%xmm7, -32(%rax)
	movaps	%xmm8, -16(%rax)
.L575:
	prefetcht0	400(%rax)
	addq	$64, %rdx
	addq	$64, %rax
	addl	$4, %r8d
	movapd	-64(%rax), %xmm9
	mulpd	%xmm0, %xmm9
	movaps	%xmm9, -64(%rdx)
	movapd	-48(%rax), %xmm10
	mulpd	%xmm0, %xmm10
	movaps	%xmm10, -48(%rdx)
	movapd	-32(%rax), %xmm11
	mulpd	%xmm0, %xmm11
	movaps	%xmm11, -32(%rdx)
	movapd	-16(%rax), %xmm12
	mulpd	%xmm0, %xmm12
	movaps	%xmm12, -16(%rdx)
.L574:
	prefetcht0	400(%rax)
	addl	$4, %r8d
	addq	$64, %rax
	addq	$64, %rdx
	movapd	-64(%rax), %xmm13
	mulpd	%xmm0, %xmm13
	movaps	%xmm13, -64(%rdx)
	movapd	-48(%rax), %xmm14
	mulpd	%xmm0, %xmm14
	movaps	%xmm14, -48(%rdx)
	movapd	-32(%rax), %xmm15
	mulpd	%xmm0, %xmm15
	movaps	%xmm15, -32(%rdx)
	movapd	-16(%rax), %xmm6
	mulpd	%xmm0, %xmm6
	movaps	%xmm6, -16(%rdx)
	cmpl	%r11d, %r8d
	je	.L127
.L128:
	prefetcht0	400(%rax)
	prefetcht0	464(%rax)
	prefetcht0	528(%rax)
	.loc 1 90 0 is_stmt 0 discriminator 3
	movapd	(%rax), %xmm7
	prefetcht0	592(%rax)
	addl	$16, %r8d
	addq	$256, %rax
	addq	$256, %rdx
	mulpd	%xmm0, %xmm7
	movaps	%xmm7, -256(%rdx)
	movapd	-240(%rax), %xmm8
	mulpd	%xmm0, %xmm8
	movaps	%xmm8, -240(%rdx)
	movapd	-224(%rax), %xmm9
	mulpd	%xmm0, %xmm9
	movaps	%xmm9, -224(%rdx)
	movapd	-208(%rax), %xmm10
	mulpd	%xmm0, %xmm10
	movaps	%xmm10, -208(%rdx)
	movapd	-192(%rax), %xmm11
	mulpd	%xmm0, %xmm11
	movaps	%xmm11, -192(%rdx)
	movapd	-176(%rax), %xmm12
	mulpd	%xmm0, %xmm12
	movaps	%xmm12, -176(%rdx)
	movapd	-160(%rax), %xmm13
	mulpd	%xmm0, %xmm13
	movaps	%xmm13, -160(%rdx)
	movapd	-144(%rax), %xmm14
	mulpd	%xmm0, %xmm14
	movaps	%xmm14, -144(%rdx)
	movapd	-128(%rax), %xmm15
	mulpd	%xmm0, %xmm15
	movaps	%xmm15, -128(%rdx)
	movapd	-112(%rax), %xmm6
	mulpd	%xmm0, %xmm6
	movaps	%xmm6, -112(%rdx)
	movapd	-96(%rax), %xmm7
	mulpd	%xmm0, %xmm7
	movaps	%xmm7, -96(%rdx)
	movapd	-80(%rax), %xmm8
	mulpd	%xmm0, %xmm8
	movaps	%xmm8, -80(%rdx)
	movapd	-64(%rax), %xmm9
	mulpd	%xmm0, %xmm9
	movaps	%xmm9, -64(%rdx)
	movapd	-48(%rax), %xmm10
	mulpd	%xmm0, %xmm10
	movaps	%xmm10, -48(%rdx)
	movapd	-32(%rax), %xmm11
	mulpd	%xmm0, %xmm11
	movaps	%xmm11, -32(%rdx)
	movapd	-16(%rax), %xmm12
	mulpd	%xmm0, %xmm12
	movaps	%xmm12, -16(%rdx)
	cmpl	%r11d, %r8d
	jne	.L128
.L127:
	movl	%r11d, %ecx
	leal	1(%r11), %esi
	.loc 1 90 0
	movapd	(%rax), %xmm13
	notl	%ecx
	addl	%r9d, %ecx
	mulpd	%xmm0, %xmm13
	andl	$7, %ecx
	cmpl	%r9d, %esi
	movl	%ecx, %r8d
	movl	$16, %ecx
	movaps	%xmm13, (%rdx)
	jae	.L720
	testl	%r8d, %r8d
	je	.L131
	cmpl	$1, %r8d
	je	.L568
	cmpl	$2, %r8d
	je	.L569
	cmpl	$3, %r8d
	je	.L570
	cmpl	$4, %r8d
	je	.L571
	cmpl	$5, %r8d
	je	.L572
	cmpl	$6, %r8d
	je	.L573
	movapd	16(%rax), %xmm14
	leal	2(%r11), %esi
	movl	$32, %ecx
	mulpd	%xmm0, %xmm14
	movaps	%xmm14, 16(%rdx)
.L573:
	addl	$1, %esi
	movapd	(%rax,%rcx), %xmm15
	mulpd	%xmm0, %xmm15
	movaps	%xmm15, (%rdx,%rcx)
	addq	$16, %rcx
.L572:
	addl	$1, %esi
	movapd	(%rax,%rcx), %xmm6
	mulpd	%xmm0, %xmm6
	movaps	%xmm6, (%rdx,%rcx)
	addq	$16, %rcx
.L571:
	addl	$1, %esi
	movapd	(%rax,%rcx), %xmm7
	mulpd	%xmm0, %xmm7
	movaps	%xmm7, (%rdx,%rcx)
	addq	$16, %rcx
.L570:
	addl	$1, %esi
	movapd	(%rax,%rcx), %xmm8
	mulpd	%xmm0, %xmm8
	movaps	%xmm8, (%rdx,%rcx)
	addq	$16, %rcx
.L569:
	addl	$1, %esi
	movapd	(%rax,%rcx), %xmm9
	mulpd	%xmm0, %xmm9
	movaps	%xmm9, (%rdx,%rcx)
	addq	$16, %rcx
.L568:
	addl	$1, %esi
	movapd	(%rax,%rcx), %xmm10
	mulpd	%xmm0, %xmm10
	movaps	%xmm10, (%rdx,%rcx)
	addq	$16, %rcx
	cmpl	%r9d, %esi
	jae	.L720
.L131:
	addl	$8, %esi
	movapd	(%rax,%rcx), %xmm11
	mulpd	%xmm0, %xmm11
	movaps	%xmm11, (%rdx,%rcx)
	movapd	16(%rax,%rcx), %xmm12
	mulpd	%xmm0, %xmm12
	movaps	%xmm12, 16(%rdx,%rcx)
	movapd	32(%rax,%rcx), %xmm13
	mulpd	%xmm0, %xmm13
	movaps	%xmm13, 32(%rdx,%rcx)
	movapd	48(%rax,%rcx), %xmm14
	mulpd	%xmm0, %xmm14
	movaps	%xmm14, 48(%rdx,%rcx)
	movapd	64(%rax,%rcx), %xmm15
	mulpd	%xmm0, %xmm15
	movaps	%xmm15, 64(%rdx,%rcx)
	movapd	80(%rax,%rcx), %xmm6
	mulpd	%xmm0, %xmm6
	movaps	%xmm6, 80(%rdx,%rcx)
	movapd	96(%rax,%rcx), %xmm7
	mulpd	%xmm0, %xmm7
	movaps	%xmm7, 96(%rdx,%rcx)
	movapd	112(%rax,%rcx), %xmm8
	mulpd	%xmm0, %xmm8
	movaps	%xmm8, 112(%rdx,%rcx)
	subq	$-128, %rcx
	cmpl	%r9d, %esi
	jb	.L131
.L720:
	movl	12(%rsp), %edx
	addl	%edx, %ebx
	cmpl	%edx, %r12d
	je	.L130
.L126:
	movslq	%ebx, %rax
	leaq	(%rdi,%rax,8), %r9
	mulsd	(%r9), %xmm2
.LVL138:
	movsd	%xmm2, (%r9)
.L130:
.LVL139:
	leaq	24(%rbp), %r8
	movl	68(%rsp), %edi
	xorl	%r11d, %r11d
	movl	$1, %r9d
	movl	%r15d, 20(%rsp)
	movq	%r8, 48(%rsp)
	movl	%r14d, 108(%rsp)
	movq	%r10, 24(%rsp)
.LVL140:
	.p2align 4,,10
	.p2align 3
.L121:
	.loc 1 92 0 is_stmt 1
	cmpl	20(%rsp), %r9d
	je	.L146
	.loc 1 93 0
	movq	24(%rsp), %r10
	movq	(%rsp), %r14
	movq	8(%r10,%r11), %rcx
	addq	%rcx, %r14
	leaq	8(%rcx), %r15
	cmpq	48(%rsp), %r15
	leaq	24(%rcx), %rbx
	movsd	(%r14), %xmm0
.LVL141:
	.loc 1 94 0
	movq	$0, (%r14)
.LVL142:
	setae	%sil
	cmpq	%rbx, 32(%rsp)
	setae	%r12b
	orb	%r12b, %sil
	je	.L135
	cmpl	$8, %r13d
	jbe	.L135
	salq	$60, %r15
	movl	$1, %r8d
	shrq	$63, %r15
	cmpl	%r13d, %r15d
	cmova	%r13d, %r15d
	testl	%r15d, %r15d
	je	.L136
	.loc 1 95 0
	movsd	8(%rbp), %xmm9
	movb	$2, %r8b
	movsd	8(%rcx), %xmm10
	mulsd	%xmm0, %xmm9
	subsd	%xmm9, %xmm10
	movsd	%xmm10, 8(%rcx)
.LVL143:
.L136:
	movl	%r13d, %edx
	movl	%r15d, %r14d
	subl	%r15d, %edx
	movapd	%xmm0, %xmm2
	leal	-2(%rdx), %r10d
	movl	%edx, 56(%rsp)
	leaq	8(,%r14,8), %rdx
	unpcklpd	%xmm2, %xmm2
	shrl	%r10d
	leal	1(%r10), %eax
	subl	$4, %r10d
	movl	%eax, 12(%rsp)
	addl	%eax, %eax
	movl	%eax, 16(%rsp)
	leaq	(%rcx,%rdx), %rax
	addq	%rbp, %rdx
	cmpl	$-6, %r10d
	ja	.L175
	movupd	(%rdx), %xmm11
	shrl	$2, %r10d
	movl	$4, %ebx
	leal	4(,%r10,4), %r15d
	.loc 1 94 0
	movq	%rax, %r12
	andl	$1, %r10d
	.loc 1 95 0
	mulpd	%xmm2, %xmm11
	prefetcht0	304(%rax)
	addq	$64, %rdx
	movapd	(%rax), %xmm12
	addq	$64, %rax
	movapd	-48(%rax), %xmm14
	subpd	%xmm11, %xmm12
	movapd	-32(%rax), %xmm6
	movapd	-16(%rax), %xmm8
	movaps	%xmm12, -64(%rax)
	movupd	-48(%rdx), %xmm13
	mulpd	%xmm2, %xmm13
	subpd	%xmm13, %xmm14
	movaps	%xmm14, -48(%rax)
	movupd	-32(%rdx), %xmm15
	mulpd	%xmm2, %xmm15
	subpd	%xmm15, %xmm6
	movaps	%xmm6, -32(%rax)
	movupd	-16(%rdx), %xmm7
	mulpd	%xmm2, %xmm7
	subpd	%xmm7, %xmm8
	movaps	%xmm8, -16(%rax)
	cmpl	%r15d, %ebx
	movq	%rax, %rsi
	je	.L137
	testl	%r10d, %r10d
	je	.L138
	movupd	(%rdx), %xmm9
	prefetcht0	304(%rax)
	movl	$8, %ebx
	addq	$64, %rax
	addq	$64, %rdx
	leaq	128(%r12), %rsi
	mulpd	%xmm2, %xmm9
	movapd	-64(%rax), %xmm10
	subpd	%xmm9, %xmm10
	movaps	%xmm10, 64(%r12)
	movupd	-48(%rdx), %xmm11
	mulpd	%xmm2, %xmm11
	movapd	-48(%rax), %xmm12
	movapd	-32(%rax), %xmm14
	subpd	%xmm11, %xmm12
	movapd	-16(%rax), %xmm6
	movaps	%xmm12, -48(%rax)
	movupd	-32(%rdx), %xmm13
	mulpd	%xmm2, %xmm13
	subpd	%xmm13, %xmm14
	movaps	%xmm14, -32(%rax)
	movupd	-16(%rdx), %xmm15
	mulpd	%xmm2, %xmm15
	subpd	%xmm15, %xmm6
	movaps	%xmm6, -16(%rax)
	cmpl	%r15d, %ebx
	je	.L137
.L138:
	prefetcht0	304(%rax)
	prefetcht0	368(%rax)
	addl	$8, %ebx
	.loc 1 95 0 is_stmt 0 discriminator 3
	movupd	(%rdx), %xmm7
	subq	$-128, %rax
	subq	$-128, %rdx
	subq	$-128, %rsi
	mulpd	%xmm2, %xmm7
	movapd	-128(%rax), %xmm8
	subpd	%xmm7, %xmm8
	movaps	%xmm8, -128(%rsi)
	movupd	-112(%rdx), %xmm9
	mulpd	%xmm2, %xmm9
	movapd	-112(%rax), %xmm10
	subpd	%xmm9, %xmm10
	movaps	%xmm10, -112(%rsi)
	movupd	-96(%rdx), %xmm11
	mulpd	%xmm2, %xmm11
	movapd	-96(%rax), %xmm12
	subpd	%xmm11, %xmm12
	movaps	%xmm12, -96(%rsi)
	movupd	-80(%rdx), %xmm13
	mulpd	%xmm2, %xmm13
	movapd	-80(%rax), %xmm14
	subpd	%xmm13, %xmm14
	movaps	%xmm14, -80(%rsi)
	movupd	-64(%rdx), %xmm15
	mulpd	%xmm2, %xmm15
	movapd	-64(%rax), %xmm6
	subpd	%xmm15, %xmm6
	movaps	%xmm6, -64(%rsi)
	movupd	-48(%rdx), %xmm7
	mulpd	%xmm2, %xmm7
	movapd	-48(%rax), %xmm8
	subpd	%xmm7, %xmm8
	movaps	%xmm8, -48(%rsi)
	movupd	-32(%rdx), %xmm9
	mulpd	%xmm2, %xmm9
	movapd	-32(%rax), %xmm10
	subpd	%xmm9, %xmm10
	movaps	%xmm10, -32(%rsi)
	movupd	-16(%rdx), %xmm11
	mulpd	%xmm2, %xmm11
	movapd	-16(%rax), %xmm12
	subpd	%xmm11, %xmm12
	movaps	%xmm12, -16(%rsi)
	cmpl	%r15d, %ebx
	jne	.L138
.L137:
	movl	%r15d, %r12d
	leal	1(%r15), %ebx
	movl	$16, %r10d
	.loc 1 95 0
	movupd	(%rdx), %xmm13
	notl	%r12d
	movl	12(%rsp), %r14d
	mulpd	%xmm2, %xmm13
	movapd	(%rax), %xmm14
	addl	%r14d, %r12d
	andl	$7, %r12d
	cmpl	%ebx, %r14d
	subpd	%xmm13, %xmm14
	movaps	%xmm14, (%rsi)
	jbe	.L722
	testl	%r12d, %r12d
	je	.L140
	cmpl	$1, %r12d
	je	.L562
	cmpl	$2, %r12d
	je	.L563
	cmpl	$3, %r12d
	je	.L564
	cmpl	$4, %r12d
	je	.L565
	cmpl	$5, %r12d
	je	.L566
	cmpl	$6, %r12d
	je	.L567
	movupd	16(%rdx), %xmm15
	leal	2(%r15), %ebx
	movl	$32, %r10d
	mulpd	%xmm2, %xmm15
	movapd	16(%rax), %xmm6
	subpd	%xmm15, %xmm6
	movaps	%xmm6, 16(%rsi)
.L567:
	addl	$1, %ebx
	movupd	(%rdx,%r10), %xmm7
	mulpd	%xmm2, %xmm7
	movapd	(%rax,%r10), %xmm8
	subpd	%xmm7, %xmm8
	movaps	%xmm8, (%rsi,%r10)
	addq	$16, %r10
.L566:
	addl	$1, %ebx
	movupd	(%rdx,%r10), %xmm9
	mulpd	%xmm2, %xmm9
	movapd	(%rax,%r10), %xmm10
	subpd	%xmm9, %xmm10
	movaps	%xmm10, (%rsi,%r10)
	addq	$16, %r10
.L565:
	addl	$1, %ebx
	movupd	(%rdx,%r10), %xmm11
	mulpd	%xmm2, %xmm11
	movapd	(%rax,%r10), %xmm12
	subpd	%xmm11, %xmm12
	movaps	%xmm12, (%rsi,%r10)
	addq	$16, %r10
.L564:
	addl	$1, %ebx
	movupd	(%rdx,%r10), %xmm13
	mulpd	%xmm2, %xmm13
	movapd	(%rax,%r10), %xmm14
	subpd	%xmm13, %xmm14
	movaps	%xmm14, (%rsi,%r10)
	addq	$16, %r10
.L563:
	addl	$1, %ebx
	movupd	(%rdx,%r10), %xmm15
	mulpd	%xmm2, %xmm15
	movapd	(%rax,%r10), %xmm6
	subpd	%xmm15, %xmm6
	movaps	%xmm6, (%rsi,%r10)
	addq	$16, %r10
.L562:
	addl	$1, %ebx
	movupd	(%rdx,%r10), %xmm7
	mulpd	%xmm2, %xmm7
	movapd	(%rax,%r10), %xmm8
	subpd	%xmm7, %xmm8
	movaps	%xmm8, (%rsi,%r10)
	addq	$16, %r10
	cmpl	%ebx, 12(%rsp)
	jbe	.L722
.L140:
	movupd	(%rdx,%r10), %xmm9
	addl	$8, %ebx
	mulpd	%xmm2, %xmm9
	movapd	(%rax,%r10), %xmm10
	subpd	%xmm9, %xmm10
	movaps	%xmm10, (%rsi,%r10)
	movupd	16(%rdx,%r10), %xmm11
	mulpd	%xmm2, %xmm11
	movapd	16(%rax,%r10), %xmm12
	subpd	%xmm11, %xmm12
	movaps	%xmm12, 16(%rsi,%r10)
	movupd	32(%rdx,%r10), %xmm13
	mulpd	%xmm2, %xmm13
	movapd	32(%rax,%r10), %xmm14
	subpd	%xmm13, %xmm14
	movaps	%xmm14, 32(%rsi,%r10)
	movupd	48(%rdx,%r10), %xmm15
	mulpd	%xmm2, %xmm15
	movapd	48(%rax,%r10), %xmm6
	subpd	%xmm15, %xmm6
	movaps	%xmm6, 48(%rsi,%r10)
	movupd	64(%rdx,%r10), %xmm7
	mulpd	%xmm2, %xmm7
	movapd	64(%rax,%r10), %xmm8
	subpd	%xmm7, %xmm8
	movaps	%xmm8, 64(%rsi,%r10)
	movupd	80(%rdx,%r10), %xmm9
	mulpd	%xmm2, %xmm9
	movapd	80(%rax,%r10), %xmm10
	subpd	%xmm9, %xmm10
	movaps	%xmm10, 80(%rsi,%r10)
	movupd	96(%rdx,%r10), %xmm11
	mulpd	%xmm2, %xmm11
	movapd	96(%rax,%r10), %xmm12
	subpd	%xmm11, %xmm12
	movaps	%xmm12, 96(%rsi,%r10)
	movupd	112(%rdx,%r10), %xmm13
	mulpd	%xmm2, %xmm13
	movapd	112(%rax,%r10), %xmm14
	subpd	%xmm13, %xmm14
	movaps	%xmm14, 112(%rsi,%r10)
	subq	$-128, %r10
	cmpl	%ebx, 12(%rsp)
	ja	.L140
.L722:
	movl	16(%rsp), %esi
	addl	%esi, %r8d
	cmpl	56(%rsp), %esi
	je	.L145
.LVL144:
	movslq	%r8d, %rdx
	movsd	0(%rbp,%rdx,8), %xmm15
	leaq	(%rcx,%rdx,8), %rcx
	mulsd	%xmm0, %xmm15
	movsd	(%rcx), %xmm2
	subsd	%xmm15, %xmm2
	movsd	%xmm2, (%rcx)
.LVL145:
.L145:
	.loc 1 96 0 is_stmt 1 discriminator 1
	testl	%edi, %edi
	jle	.L146
	movq	40(%rsp), %rcx
	movq	(%rsp), %r8
	movq	8(%rcx,%r11), %rsi
	movq	(%rcx,%r8), %r8
	leaq	24(%rsi), %rax
	leaq	8(%r8), %r15
	leaq	8(%rsi), %r12
	leaq	24(%r8), %r10
	cmpq	%r15, %rax
	setbe	%r14b
	cmpq	%r10, %r12
	setae	%bl
	orb	%bl, %r14b
	je	.L147
	cmpl	$8, %edi
	jbe	.L147
	salq	$60, %r12
	.loc 1 96 0 is_stmt 0
	movl	$1, 12(%rsp)
	shrq	$63, %r12
	cmpl	%edi, %r12d
	cmova	%edi, %r12d
	testl	%r12d, %r12d
	je	.L148
	movsd	8(%r8), %xmm14
	movl	$2, 12(%rsp)
	movsd	8(%rsi), %xmm15
	mulsd	%xmm0, %xmm14
	subsd	%xmm14, %xmm15
	movsd	%xmm15, 8(%rsi)
.LVL146:
.L148:
	movl	%edi, %r15d
	movl	%r12d, %ecx
	subl	%r12d, %r15d
	leaq	8(,%rcx,8), %rax
	movl	%r15d, 60(%rsp)
	subl	$2, %r15d
	shrl	%r15d
	movapd	%xmm0, %xmm2
	leal	1(%r15), %edx
	subl	$4, %r15d
	unpcklpd	%xmm2, %xmm2
	movl	%edx, 16(%rsp)
	addl	%edx, %edx
	movl	%edx, 56(%rsp)
	leaq	(%rsi,%rax), %rdx
	addq	%r8, %rax
	cmpl	$-6, %r15d
	ja	.L178
	movupd	(%rax), %xmm7
	shrl	$2, %r15d
	leaq	64(%rdx), %rcx
	leal	4(,%r15,4), %r12d
	movl	$4, %r14d
	andl	$1, %r15d
	mulpd	%xmm2, %xmm7
	addq	$64, %rax
	prefetcht0	304(%rdx)
	movapd	(%rdx), %xmm6
	movapd	16(%rdx), %xmm9
	subpd	%xmm7, %xmm6
	movapd	32(%rdx), %xmm11
	movapd	48(%rdx), %xmm13
	movaps	%xmm6, (%rdx)
	movupd	-48(%rax), %xmm8
	mulpd	%xmm2, %xmm8
	subpd	%xmm8, %xmm9
	movaps	%xmm9, 16(%rdx)
	movupd	-32(%rax), %xmm10
	mulpd	%xmm2, %xmm10
	subpd	%xmm10, %xmm11
	movaps	%xmm11, 32(%rdx)
	movupd	-16(%rax), %xmm12
	cmpl	%r12d, %r14d
	mulpd	%xmm2, %xmm12
	subpd	%xmm12, %xmm13
	movaps	%xmm13, 48(%rdx)
	movq	%rcx, %rdx
	je	.L149
	testl	%r15d, %r15d
	je	.L150
	movupd	(%rax), %xmm14
	movl	$8, %r14d
	prefetcht0	304(%rcx)
	addq	$64, %rax
	addq	$64, %rcx
	addq	$64, %rdx
	mulpd	%xmm2, %xmm14
	movapd	-64(%rcx), %xmm15
	movapd	-48(%rcx), %xmm6
	subpd	%xmm14, %xmm15
	movapd	-32(%rcx), %xmm9
	movapd	-16(%rcx), %xmm11
	movaps	%xmm15, -64(%rcx)
	movupd	-48(%rax), %xmm7
	mulpd	%xmm2, %xmm7
	subpd	%xmm7, %xmm6
	movaps	%xmm6, -48(%rcx)
	movupd	-32(%rax), %xmm8
	mulpd	%xmm2, %xmm8
	subpd	%xmm8, %xmm9
	movaps	%xmm9, -32(%rcx)
	movupd	-16(%rax), %xmm10
	mulpd	%xmm2, %xmm10
	subpd	%xmm10, %xmm11
	movaps	%xmm11, -16(%rcx)
	cmpl	%r12d, %r14d
	je	.L149
.L150:
	prefetcht0	304(%rcx)
	prefetcht0	368(%rcx)
	addl	$8, %r14d
	.loc 1 96 0 discriminator 3
	movupd	(%rax), %xmm12
	subq	$-128, %rcx
	subq	$-128, %rax
	subq	$-128, %rdx
	mulpd	%xmm2, %xmm12
	movapd	-128(%rcx), %xmm13
	subpd	%xmm12, %xmm13
	movaps	%xmm13, -128(%rdx)
	movupd	-112(%rax), %xmm14
	mulpd	%xmm2, %xmm14
	movapd	-112(%rcx), %xmm15
	subpd	%xmm14, %xmm15
	movaps	%xmm15, -112(%rdx)
	movupd	-96(%rax), %xmm7
	mulpd	%xmm2, %xmm7
	movapd	-96(%rcx), %xmm6
	subpd	%xmm7, %xmm6
	movaps	%xmm6, -96(%rdx)
	movupd	-80(%rax), %xmm8
	mulpd	%xmm2, %xmm8
	movapd	-80(%rcx), %xmm9
	subpd	%xmm8, %xmm9
	movaps	%xmm9, -80(%rdx)
	movupd	-64(%rax), %xmm10
	mulpd	%xmm2, %xmm10
	movapd	-64(%rcx), %xmm11
	subpd	%xmm10, %xmm11
	movaps	%xmm11, -64(%rdx)
	movupd	-48(%rax), %xmm12
	mulpd	%xmm2, %xmm12
	movapd	-48(%rcx), %xmm13
	subpd	%xmm12, %xmm13
	movaps	%xmm13, -48(%rdx)
	movupd	-32(%rax), %xmm14
	mulpd	%xmm2, %xmm14
	movapd	-32(%rcx), %xmm15
	subpd	%xmm14, %xmm15
	movaps	%xmm15, -32(%rdx)
	movupd	-16(%rax), %xmm7
	mulpd	%xmm2, %xmm7
	movapd	-16(%rcx), %xmm6
	subpd	%xmm7, %xmm6
	movaps	%xmm6, -16(%rdx)
	cmpl	%r12d, %r14d
	jne	.L150
.L149:
	movl	%r12d, %r14d
	leal	1(%r12), %ebx
	movl	$16, %r10d
	.loc 1 96 0
	movupd	(%rax), %xmm8
	notl	%r14d
	movl	16(%rsp), %r15d
	mulpd	%xmm2, %xmm8
	movapd	(%rcx), %xmm9
	addl	%r15d, %r14d
	andl	$7, %r14d
	cmpl	%r15d, %ebx
	subpd	%xmm8, %xmm9
	movaps	%xmm9, (%rdx)
	jae	.L723
	testl	%r14d, %r14d
	je	.L152
	cmpl	$1, %r14d
	je	.L550
	cmpl	$2, %r14d
	je	.L551
	cmpl	$3, %r14d
	je	.L552
	cmpl	$4, %r14d
	je	.L553
	cmpl	$5, %r14d
	je	.L554
	cmpl	$6, %r14d
	je	.L555
	movupd	16(%rax), %xmm10
	leal	2(%r12), %ebx
	movl	$32, %r10d
	mulpd	%xmm2, %xmm10
	movapd	16(%rcx), %xmm11
	subpd	%xmm10, %xmm11
	movaps	%xmm11, 16(%rdx)
.L555:
	addl	$1, %ebx
	movupd	(%rax,%r10), %xmm12
	mulpd	%xmm2, %xmm12
	movapd	(%rcx,%r10), %xmm13
	subpd	%xmm12, %xmm13
	movaps	%xmm13, (%rdx,%r10)
	addq	$16, %r10
.L554:
	addl	$1, %ebx
	movupd	(%rax,%r10), %xmm14
	mulpd	%xmm2, %xmm14
	movapd	(%rcx,%r10), %xmm15
	subpd	%xmm14, %xmm15
	movaps	%xmm15, (%rdx,%r10)
	addq	$16, %r10
.L553:
	addl	$1, %ebx
	movupd	(%rax,%r10), %xmm7
	mulpd	%xmm2, %xmm7
	movapd	(%rcx,%r10), %xmm6
	subpd	%xmm7, %xmm6
	movaps	%xmm6, (%rdx,%r10)
	addq	$16, %r10
.L552:
	addl	$1, %ebx
	movupd	(%rax,%r10), %xmm8
	mulpd	%xmm2, %xmm8
	movapd	(%rcx,%r10), %xmm9
	subpd	%xmm8, %xmm9
	movaps	%xmm9, (%rdx,%r10)
	addq	$16, %r10
.L551:
	addl	$1, %ebx
	movupd	(%rax,%r10), %xmm10
	mulpd	%xmm2, %xmm10
	movapd	(%rcx,%r10), %xmm11
	subpd	%xmm10, %xmm11
	movaps	%xmm11, (%rdx,%r10)
	addq	$16, %r10
.L550:
	addl	$1, %ebx
	movupd	(%rax,%r10), %xmm12
	mulpd	%xmm2, %xmm12
	movapd	(%rcx,%r10), %xmm13
	subpd	%xmm12, %xmm13
	movaps	%xmm13, (%rdx,%r10)
	addq	$16, %r10
	cmpl	16(%rsp), %ebx
	jae	.L723
.L152:
	movupd	(%rax,%r10), %xmm14
	addl	$8, %ebx
	mulpd	%xmm2, %xmm14
	movapd	(%rcx,%r10), %xmm15
	subpd	%xmm14, %xmm15
	movaps	%xmm15, (%rdx,%r10)
	movupd	16(%rax,%r10), %xmm7
	mulpd	%xmm2, %xmm7
	movapd	16(%rcx,%r10), %xmm6
	subpd	%xmm7, %xmm6
	movaps	%xmm6, 16(%rdx,%r10)
	movupd	32(%rax,%r10), %xmm8
	mulpd	%xmm2, %xmm8
	movapd	32(%rcx,%r10), %xmm9
	subpd	%xmm8, %xmm9
	movaps	%xmm9, 32(%rdx,%r10)
	movupd	48(%rax,%r10), %xmm10
	mulpd	%xmm2, %xmm10
	movapd	48(%rcx,%r10), %xmm11
	subpd	%xmm10, %xmm11
	movaps	%xmm11, 48(%rdx,%r10)
	movupd	64(%rax,%r10), %xmm12
	mulpd	%xmm2, %xmm12
	movapd	64(%rcx,%r10), %xmm13
	subpd	%xmm12, %xmm13
	movaps	%xmm13, 64(%rdx,%r10)
	movupd	80(%rax,%r10), %xmm14
	mulpd	%xmm2, %xmm14
	movapd	80(%rcx,%r10), %xmm15
	subpd	%xmm14, %xmm15
	movaps	%xmm15, 80(%rdx,%r10)
	movupd	96(%rax,%r10), %xmm7
	mulpd	%xmm2, %xmm7
	movapd	96(%rcx,%r10), %xmm6
	subpd	%xmm7, %xmm6
	movaps	%xmm6, 96(%rdx,%r10)
	movupd	112(%rax,%r10), %xmm8
	mulpd	%xmm2, %xmm8
	movapd	112(%rcx,%r10), %xmm9
	subpd	%xmm8, %xmm9
	movaps	%xmm9, 112(%rdx,%r10)
	subq	$-128, %r10
	cmpl	16(%rsp), %ebx
	jb	.L152
	.p2align 4,,10
	.p2align 3
.L723:
	movl	56(%rsp), %edx
	movl	12(%rsp), %eax
	addl	%edx, %eax
	cmpl	60(%rsp), %edx
	je	.L146
.LVL147:
	cltq
	mulsd	(%r8,%rax,8), %xmm0
.LVL148:
	leaq	(%rsi,%rax,8), %rsi
	movapd	%xmm0, %xmm2
	movsd	(%rsi), %xmm0
	subsd	%xmm2, %xmm0
	movsd	%xmm0, (%rsi)
.LVL149:
.L146:
	.loc 1 91 0 is_stmt 1
	addl	$1, %r9d
.LVL150:
	addq	$8, %r11
	cmpl	%r9d, %r13d
	jge	.L121
	addq	$1, 72(%rsp)
.LVL151:
	movl	20(%rsp), %r15d
	movq	72(%rsp), %rbx
	movl	108(%rsp), %r14d
	movq	24(%rsp), %r10
.LVL152:
	addl	$1, %ebx
	.loc 1 66 0
	cmpl	%ebx, %r13d
	jge	.L88
.LVL153:
	movq	136(%rsp), %rsi
	movq	96(%rsp), %r8
	movl	%r13d, %ebp
	movq	88(%rsp), %rax
	xorl	%r9d, %r9d
.LVL154:
	subq	$4, %rsi
	leaq	(%r8,%rsi), %r11
	leaq	(%rax,%rsi), %rsi
.LVL155:
.L158:
	.loc 1 100 0
	movslq	(%r11,%r9), %rdi
	movslq	(%rsi,%r9), %rdx
	cmpl	%edx, %edi
	je	.L161
	.loc 1 102 0
	movq	8(%r10), %rcx
	leaq	0(,%rdi,8), %r14
	leaq	0(,%rdx,8), %r12
	leal	-1(%r13), %r15d
	.loc 1 101 0
	movl	$2, %edi
	leaq	16(%r10), %rdx
	.loc 1 102 0
	leaq	(%rcx,%r14), %rbx
	addq	%r12, %rcx
	andl	$3, %r15d
.LVL156:
	movsd	(%rcx), %xmm1
	.loc 1 101 0
	cmpl	$2, %r13d
	.loc 1 102 0
	movsd	(%rbx), %xmm0
.LVL157:
	movsd	%xmm1, (%rbx)
	movsd	%xmm0, (%rcx)
	.loc 1 101 0
	jl	.L161
	testl	%r15d, %r15d
	je	.L160
	cmpl	$1, %r15d
	je	.L542
	cmpl	$2, %r15d
	je	.L543
	.loc 1 102 0
	movq	16(%r10), %r8
	leaq	24(%r10), %rdx
	.loc 1 101 0
	movl	$3, %edi
	.loc 1 102 0
	leaq	(%r8,%r14), %rax
	addq	%r12, %r8
	movsd	(%r8), %xmm4
	movsd	(%rax), %xmm3
	movsd	%xmm4, (%rax)
	movsd	%xmm3, (%r8)
.L543:
	movq	(%rdx), %r15
	.loc 1 101 0
	addl	$1, %edi
	addq	$8, %rdx
	.loc 1 102 0
	leaq	(%r15,%r14), %rcx
	addq	%r12, %r15
	movsd	(%r15), %xmm8
	movsd	(%rcx), %xmm5
	movsd	%xmm8, (%rcx)
	movsd	%xmm5, (%r15)
.L542:
	movq	(%rdx), %r8
	.loc 1 101 0
	addl	$1, %edi
	addq	$8, %rdx
	.loc 1 102 0
	leaq	(%r8,%r14), %rbx
	addq	%r12, %r8
	.loc 1 101 0
	cmpl	%edi, %r13d
	.loc 1 102 0
	movsd	(%r8), %xmm10
	movsd	(%rbx), %xmm9
	movsd	%xmm10, (%rbx)
	movsd	%xmm9, (%r8)
	.loc 1 101 0
	jl	.L161
.L160:
	.loc 1 102 0 discriminator 3
	movq	(%rdx), %rax
	.loc 1 101 0 discriminator 3
	addl	$4, %edi
	addq	$32, %rdx
	.loc 1 102 0 discriminator 3
	movq	-24(%rdx), %rcx
	leaq	(%rax,%r14), %r15
	addq	%r12, %rax
	movsd	(%rax), %xmm12
	leaq	(%rcx,%r14), %r8
	addq	%r12, %rcx
	movsd	(%r15), %xmm11
	movsd	%xmm12, (%r15)
	movq	-8(%rdx), %r15
	movsd	%xmm11, (%rax)
	movq	-16(%rdx), %rax
	movsd	(%rcx), %xmm14
	movsd	(%r8), %xmm13
	leaq	(%rax,%r14), %rbx
	addq	%r12, %rax
	movsd	%xmm14, (%r8)
	movsd	%xmm13, (%rcx)
	leaq	(%r15,%r14), %rcx
	addq	%r12, %r15
	.loc 1 101 0 discriminator 3
	cmpl	%edi, %r13d
	.loc 1 102 0 discriminator 3
	movsd	(%rbx), %xmm15
	movsd	(%rax), %xmm7
	movsd	%xmm7, (%rbx)
	movsd	%xmm15, (%rax)
	movsd	(%rcx), %xmm6
	movsd	(%r15), %xmm2
	movsd	%xmm2, (%rcx)
	movsd	%xmm6, (%r15)
	.loc 1 101 0 discriminator 3
	jge	.L160
.LVL158:
.L161:
	.loc 1 99 0
	subl	$1, %ebp
.LVL159:
	subq	$4, %r9
	testl	%ebp, %ebp
	jg	.L158
.LVL160:
.L87:
.LBB61:
.LBB62:
	.loc 1 128 0
	movq	80(%rsp), %rdi
	call	free
.LVL161:
.LBE62:
.LBE61:
.LBB63:
.LBB64:
	movq	96(%rsp), %rdi
	call	free
.LVL162:
.LBE64:
.LBE63:
.LBB65:
.LBB66:
	movq	88(%rsp), %rdi
.LBE66:
.LBE65:
.LBE72:
	.loc 1 107 0
	addq	$152, %rsp
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
.LVL163:
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
.LBB73:
.LBB68:
.LBB67:
	.loc 1 128 0
	jmp	free
.LVL164:
	.p2align 4,,10
	.p2align 3
.L494:
	.cfi_restore_state
.LBE67:
.LBE68:
	.loc 1 77 0
	cmpl	$1, %edx
	jle	.L495
	movl	$.LC8, %edi
	call	_Z7nrerrorPKc
.LVL165:
	.p2align 4,,10
	.p2align 3
.L727:
	.loc 1 72 0
	movq	8(%r10,%rdi,2), %r12
	movsd	(%r12,%rcx), %xmm8
	andpd	%xmm1, %xmm8
	ucomisd	%xmm0, %xmm8
	jb	.L509
	.loc 1 73 0
	movapd	%xmm8, %xmm0
.LVL166:
	.loc 1 72 0
	movl	%ebp, %r14d
	movl	%r11d, %r15d
	jmp	.L509
.LVL167:
	.p2align 4,,10
	.p2align 3
.L726:
	movq	8(%r10,%rdi,2), %rdx
	movsd	(%rdx,%rcx), %xmm7
	andpd	%xmm1, %xmm7
	ucomisd	%xmm0, %xmm7
	jb	.L504
	.loc 1 73 0
	movapd	%xmm7, %xmm0
.LVL168:
	.loc 1 72 0
	movl	%ebp, %r14d
	movl	%r11d, %r15d
	jmp	.L504
.LVL169:
	.p2align 4,,10
	.p2align 3
.L725:
	movq	8(%r10,%rdi,2), %r12
	movsd	16(%r12), %xmm6
	andpd	%xmm1, %xmm6
	ucomisd	%xmm0, %xmm6
	jb	.L499
	.loc 1 73 0
	movapd	%xmm6, %xmm0
.LVL170:
	.loc 1 72 0
	movl	%ebp, %r14d
	movl	$2, %r15d
	jmp	.L499
.LVL171:
	.p2align 4,,10
	.p2align 3
.L135:
	cmpl	$8, %r13d
	jle	.L176
	.loc 1 95 0
	movsd	8(%rbp), %xmm6
	leaq	160(%rcx), %rax
	leaq	160(%rbp), %r15
	movsd	-152(%rax), %xmm7
	movl	64(%rsp), %r12d
	mulsd	%xmm0, %xmm6
	prefetcht0	(%r15)
	prefetcht0	(%rax)
	movsd	-144(%rax), %xmm9
	movl	$9, %r8d
	leaq	224(%rbp), %rsi
	movsd	-136(%rax), %xmm11
	leal	-9(%r12), %r14d
	movsd	-128(%rax), %xmm13
	subsd	%xmm6, %xmm7
	movsd	-120(%rax), %xmm15
	movsd	-112(%rax), %xmm2
	shrl	$3, %r14d
	andl	$1, %r14d
	cmpl	$9, %r12d
	movsd	%xmm7, -152(%rax)
.LVL172:
	movsd	16(%rbp), %xmm8
	mulsd	%xmm0, %xmm8
	subsd	%xmm8, %xmm9
	movsd	-104(%rax), %xmm8
	movsd	%xmm9, -144(%rax)
.LVL173:
	movsd	24(%rbp), %xmm10
	mulsd	%xmm0, %xmm10
	subsd	%xmm10, %xmm11
	movsd	-96(%rax), %xmm10
	movsd	%xmm11, -136(%rax)
.LVL174:
	movsd	32(%rbp), %xmm12
	mulsd	%xmm0, %xmm12
	subsd	%xmm12, %xmm13
	movsd	%xmm13, -128(%rax)
.LVL175:
	movsd	40(%rbp), %xmm14
	mulsd	%xmm0, %xmm14
	subsd	%xmm14, %xmm15
	movsd	%xmm15, -120(%rax)
.LVL176:
	movsd	48(%rbp), %xmm6
	mulsd	%xmm0, %xmm6
	subsd	%xmm6, %xmm2
	movsd	%xmm2, -112(%rax)
.LVL177:
	movsd	56(%rbp), %xmm7
	mulsd	%xmm0, %xmm7
	subsd	%xmm7, %xmm8
	movsd	%xmm8, -104(%rax)
.LVL178:
	movsd	64(%rbp), %xmm9
	mulsd	%xmm0, %xmm9
	subsd	%xmm9, %xmm10
	movsd	%xmm10, -96(%rax)
	leaq	224(%rcx), %rax
	je	.L142
	testl	%r14d, %r14d
	je	.L741
	movsd	-152(%rsi), %xmm11
	prefetcht0	(%rsi)
	cmpl	$17, 64(%rsp)
	movsd	-152(%rax), %xmm12
	prefetcht0	(%rax)
	movl	$17, %r8d
	mulsd	%xmm0, %xmm11
	movsd	-144(%rax), %xmm14
	movsd	-136(%rax), %xmm6
	movsd	-128(%rax), %xmm2
	subsd	%xmm11, %xmm12
	movsd	-120(%rax), %xmm9
	movsd	-112(%rax), %xmm11
	movsd	%xmm12, -152(%rax)
.LVL179:
	movsd	-144(%rsi), %xmm13
	mulsd	%xmm0, %xmm13
	subsd	%xmm13, %xmm14
	movsd	-104(%rax), %xmm13
	movsd	%xmm14, -144(%rax)
.LVL180:
	movsd	-136(%rsi), %xmm15
	mulsd	%xmm0, %xmm15
	subsd	%xmm15, %xmm6
	movsd	-96(%rax), %xmm15
	movsd	%xmm6, -136(%rax)
.LVL181:
	movsd	-128(%rsi), %xmm7
	mulsd	%xmm0, %xmm7
	subsd	%xmm7, %xmm2
	movsd	%xmm2, -128(%rax)
.LVL182:
	movsd	-120(%rsi), %xmm8
	mulsd	%xmm0, %xmm8
	subsd	%xmm8, %xmm9
	movsd	%xmm9, -120(%rax)
.LVL183:
	movsd	-112(%rsi), %xmm10
	mulsd	%xmm0, %xmm10
	subsd	%xmm10, %xmm11
	movsd	%xmm11, -112(%rax)
.LVL184:
	movsd	-104(%rsi), %xmm12
	mulsd	%xmm0, %xmm12
	subsd	%xmm12, %xmm13
	movsd	%xmm13, -104(%rax)
.LVL185:
	movsd	-96(%rsi), %xmm14
	leaq	288(%rbp), %rsi
	mulsd	%xmm0, %xmm14
	subsd	%xmm14, %xmm15
	movsd	%xmm15, -96(%rax)
	leaq	288(%rcx), %rax
	je	.L142
.L741:
	movl	64(%rsp), %ebx
.L143:
	movsd	-152(%rsi), %xmm6
	prefetcht0	(%rsi)
	leaq	64(%rax), %rdx
	movsd	-152(%rax), %xmm7
	leaq	64(%rsi), %r15
	prefetcht0	(%rax)
	mulsd	%xmm0, %xmm6
	prefetcht0	(%rdx)
	addl	$16, %r8d
	movsd	-144(%rax), %xmm2
	prefetcht0	(%r15)
	subq	$-128, %rax
	movsd	-264(%rax), %xmm10
	subq	$-128, %rsi
	movsd	-256(%rax), %xmm12
	subsd	%xmm6, %xmm7
	movsd	-248(%rax), %xmm14
	movsd	-240(%rax), %xmm6
	movsd	%xmm7, -280(%rax)
.LVL186:
	movsd	-272(%rsi), %xmm8
	mulsd	%xmm0, %xmm8
	subsd	%xmm8, %xmm2
	movsd	-232(%rax), %xmm8
	movsd	%xmm2, -272(%rax)
.LVL187:
	movsd	-224(%rax), %xmm2
	movsd	-264(%rsi), %xmm9
	mulsd	%xmm0, %xmm9
	subsd	%xmm9, %xmm10
	movsd	%xmm10, -264(%rax)
.LVL188:
	movsd	-256(%rsi), %xmm11
	mulsd	%xmm0, %xmm11
	subsd	%xmm11, %xmm12
	movsd	%xmm12, -256(%rax)
.LVL189:
	movsd	-248(%rsi), %xmm13
	mulsd	%xmm0, %xmm13
	subsd	%xmm13, %xmm14
	movsd	%xmm14, -248(%rax)
.LVL190:
	movsd	-240(%rsi), %xmm15
	mulsd	%xmm0, %xmm15
	subsd	%xmm15, %xmm6
	movsd	%xmm6, -240(%rax)
.LVL191:
	movsd	-232(%rsi), %xmm7
	mulsd	%xmm0, %xmm7
	subsd	%xmm7, %xmm8
	movsd	%xmm8, -232(%rax)
.LVL192:
	movsd	-224(%rsi), %xmm9
	mulsd	%xmm0, %xmm9
	subsd	%xmm9, %xmm2
	movsd	%xmm2, -224(%rax)
.LVL193:
	movsd	-216(%rsi), %xmm10
	movsd	-152(%rdx), %xmm11
	mulsd	%xmm0, %xmm10
	movsd	-144(%rdx), %xmm13
	subsd	%xmm10, %xmm11
	movsd	%xmm11, -152(%rdx)
.LVL194:
	movsd	-208(%rsi), %xmm12
	mulsd	%xmm0, %xmm12
	subsd	%xmm12, %xmm13
	movsd	%xmm13, -144(%rdx)
.LVL195:
	movsd	-200(%rsi), %xmm14
	movsd	-136(%rdx), %xmm15
	mulsd	%xmm0, %xmm14
	movsd	-128(%rdx), %xmm7
	movsd	-120(%rdx), %xmm9
	movsd	-112(%rdx), %xmm2
	subsd	%xmm14, %xmm15
	movsd	-104(%rdx), %xmm12
	movsd	-96(%rdx), %xmm14
	movsd	%xmm15, -136(%rdx)
.LVL196:
	movsd	-192(%rsi), %xmm6
	mulsd	%xmm0, %xmm6
	subsd	%xmm6, %xmm7
	movsd	%xmm7, -128(%rdx)
.LVL197:
	movsd	-184(%rsi), %xmm8
	mulsd	%xmm0, %xmm8
	subsd	%xmm8, %xmm9
	movsd	%xmm9, -120(%rdx)
.LVL198:
	movsd	-176(%rsi), %xmm10
	mulsd	%xmm0, %xmm10
	subsd	%xmm10, %xmm2
	movsd	%xmm2, -112(%rdx)
.LVL199:
	movsd	-168(%rsi), %xmm11
	mulsd	%xmm0, %xmm11
	subsd	%xmm11, %xmm12
	movsd	%xmm12, -104(%rdx)
.LVL200:
	movsd	-160(%rsi), %xmm13
	cmpl	%r8d, %ebx
	mulsd	%xmm0, %xmm13
	subsd	%xmm13, %xmm14
	movsd	%xmm14, -96(%rdx)
	jne	.L143
.LVL201:
.L142:
	movslq	%r8d, %r12
	movl	%r13d, %r14d
	leal	1(%r8), %r10d
	salq	$3, %r12
	subl	%r8d, %r14d
	movl	$1, %eax
	addq	%r12, %rcx
	addq	%rbp, %r12
	andl	$7, %r14d
	movsd	(%r12), %xmm15
	cmpl	%r10d, %r13d
	movsd	(%rcx), %xmm6
	mulsd	%xmm0, %xmm15
	subsd	%xmm15, %xmm6
	movsd	%xmm6, (%rcx)
	jl	.L145
	testl	%r14d, %r14d
	je	.L144
	cmpl	$1, %r14d
	je	.L556
	cmpl	$2, %r14d
	je	.L557
	cmpl	$3, %r14d
	je	.L558
	cmpl	$4, %r14d
	je	.L559
	cmpl	$5, %r14d
	je	.L560
	cmpl	$6, %r14d
	je	.L561
	movsd	8(%r12), %xmm7
	movl	$2, %eax
	movsd	8(%rcx), %xmm8
	mulsd	%xmm0, %xmm7
	subsd	%xmm7, %xmm8
	movsd	%xmm8, 8(%rcx)
.L561:
	movsd	(%r12,%rax,8), %xmm9
	movsd	(%rcx,%rax,8), %xmm10
	mulsd	%xmm0, %xmm9
	subsd	%xmm9, %xmm10
	movsd	%xmm10, (%rcx,%rax,8)
	addq	$1, %rax
.L560:
	movsd	(%r12,%rax,8), %xmm11
	movsd	(%rcx,%rax,8), %xmm2
	mulsd	%xmm0, %xmm11
	subsd	%xmm11, %xmm2
	movsd	%xmm2, (%rcx,%rax,8)
	addq	$1, %rax
.L559:
	movsd	(%r12,%rax,8), %xmm12
	movsd	(%rcx,%rax,8), %xmm13
	mulsd	%xmm0, %xmm12
	subsd	%xmm12, %xmm13
	movsd	%xmm13, (%rcx,%rax,8)
	addq	$1, %rax
.L558:
	movsd	(%r12,%rax,8), %xmm14
	movsd	(%rcx,%rax,8), %xmm15
	mulsd	%xmm0, %xmm14
	subsd	%xmm14, %xmm15
	movsd	%xmm15, (%rcx,%rax,8)
	addq	$1, %rax
.L557:
	movsd	(%r12,%rax,8), %xmm6
	movsd	(%rcx,%rax,8), %xmm7
	mulsd	%xmm0, %xmm6
	subsd	%xmm6, %xmm7
	movsd	%xmm7, (%rcx,%rax,8)
	addq	$1, %rax
.L556:
	movsd	(%r12,%rax,8), %xmm8
	movsd	(%rcx,%rax,8), %xmm9
	mulsd	%xmm0, %xmm8
	subsd	%xmm8, %xmm9
	movsd	%xmm9, (%rcx,%rax,8)
	addq	$1, %rax
	leal	(%r8,%rax), %esi
	cmpl	%esi, %r13d
	jl	.L145
.L144:
	movsd	(%r12,%rax,8), %xmm10
	leaq	1(%rax), %rbx
	leaq	2(%rax), %rdx
	movsd	(%rcx,%rax,8), %xmm11
	leaq	3(%rax), %r15
	mulsd	%xmm0, %xmm10
	leaq	4(%rax), %r14
	leaq	5(%rax), %r10
	leaq	6(%rax), %rsi
	subsd	%xmm10, %xmm11
	movsd	%xmm11, (%rcx,%rax,8)
	movsd	(%r12,%rbx,8), %xmm12
	movsd	(%rcx,%rbx,8), %xmm2
	mulsd	%xmm0, %xmm12
	subsd	%xmm12, %xmm2
	movsd	%xmm2, (%rcx,%rbx,8)
	leaq	7(%rax), %rbx
	addq	$8, %rax
	movsd	(%r12,%rdx,8), %xmm13
	movsd	(%rcx,%rdx,8), %xmm14
	mulsd	%xmm0, %xmm13
	subsd	%xmm13, %xmm14
	movsd	%xmm14, (%rcx,%rdx,8)
	leal	(%r8,%rax), %edx
	movsd	(%r12,%r15,8), %xmm15
	cmpl	%edx, %r13d
	movsd	(%rcx,%r15,8), %xmm6
	mulsd	%xmm0, %xmm15
	subsd	%xmm15, %xmm6
	movsd	%xmm6, (%rcx,%r15,8)
	movsd	(%r12,%r14,8), %xmm7
	movsd	(%rcx,%r14,8), %xmm8
	mulsd	%xmm0, %xmm7
	subsd	%xmm7, %xmm8
	movsd	%xmm8, (%rcx,%r14,8)
	movsd	(%r12,%r10,8), %xmm9
	movsd	(%rcx,%r10,8), %xmm10
	mulsd	%xmm0, %xmm9
	subsd	%xmm9, %xmm10
	movsd	%xmm10, (%rcx,%r10,8)
	movsd	(%r12,%rsi,8), %xmm11
	movsd	(%rcx,%rsi,8), %xmm12
	mulsd	%xmm0, %xmm11
	subsd	%xmm11, %xmm12
	movsd	%xmm12, (%rcx,%rsi,8)
	movsd	(%r12,%rbx,8), %xmm13
	movsd	(%rcx,%rbx,8), %xmm2
	mulsd	%xmm0, %xmm13
	subsd	%xmm13, %xmm2
	movsd	%xmm2, (%rcx,%rbx,8)
	jge	.L144
	jmp	.L145
.LVL202:
	.p2align 4,,10
	.p2align 3
.L147:
	cmpl	$8, %edi
	jle	.L179
	.loc 1 96 0
	movsd	8(%r8), %xmm10
	leaq	160(%rsi), %r12
	leaq	160(%r8), %r14
	movsd	-152(%r12), %xmm11
	movl	104(%rsp), %r15d
	mulsd	%xmm0, %xmm10
	prefetcht0	(%r14)
	movl	$9, %ebx
	movsd	-144(%r12), %xmm13
	prefetcht0	(%r12)
	leaq	224(%rsi), %rax
	movsd	-136(%r12), %xmm15
	leal	-9(%r15), %r10d
	leaq	224(%r8), %r14
	movsd	-128(%r12), %xmm6
	subsd	%xmm10, %xmm11
	movsd	-120(%r12), %xmm9
	movsd	-112(%r12), %xmm2
	shrl	$3, %r10d
	andl	$1, %r10d
	cmpl	%r15d, %ebx
	movsd	%xmm11, -152(%r12)
.LVL203:
	movsd	16(%r8), %xmm12
	mulsd	%xmm0, %xmm12
	subsd	%xmm12, %xmm13
	movsd	-104(%r12), %xmm12
	movsd	%xmm13, -144(%r12)
.LVL204:
	movsd	24(%r8), %xmm14
	mulsd	%xmm0, %xmm14
	subsd	%xmm14, %xmm15
	movsd	-96(%r12), %xmm14
	movsd	%xmm15, -136(%r12)
.LVL205:
	movsd	32(%r8), %xmm7
	mulsd	%xmm0, %xmm7
	subsd	%xmm7, %xmm6
	movsd	%xmm6, -128(%r12)
.LVL206:
	movsd	40(%r8), %xmm8
	mulsd	%xmm0, %xmm8
	subsd	%xmm8, %xmm9
	movsd	%xmm9, -120(%r12)
.LVL207:
	movsd	48(%r8), %xmm10
	mulsd	%xmm0, %xmm10
	subsd	%xmm10, %xmm2
	movsd	%xmm2, -112(%r12)
.LVL208:
	movsd	56(%r8), %xmm11
	mulsd	%xmm0, %xmm11
	subsd	%xmm11, %xmm12
	movsd	%xmm12, -104(%r12)
.LVL209:
	movsd	64(%r8), %xmm13
	mulsd	%xmm0, %xmm13
	subsd	%xmm13, %xmm14
	movsd	%xmm14, -96(%r12)
	je	.L154
	testl	%r10d, %r10d
	je	.L733
	movsd	-152(%r14), %xmm15
	prefetcht0	(%r14)
	movl	$17, %ebx
	movsd	-152(%rax), %xmm7
	cmpl	104(%rsp), %ebx
	prefetcht0	(%rax)
	mulsd	%xmm0, %xmm15
	movsd	-144(%rax), %xmm8
	movsd	-136(%rax), %xmm10
	movsd	-128(%rax), %xmm2
	subsd	%xmm15, %xmm7
	movsd	-120(%rax), %xmm13
	movsd	-112(%rax), %xmm15
	movsd	%xmm7, -152(%rax)
.LVL210:
	movsd	-144(%r14), %xmm6
	mulsd	%xmm0, %xmm6
	subsd	%xmm6, %xmm8
	movsd	-104(%rax), %xmm6
	movsd	%xmm8, -144(%rax)
.LVL211:
	movsd	-136(%r14), %xmm9
	mulsd	%xmm0, %xmm9
	subsd	%xmm9, %xmm10
	movsd	-96(%rax), %xmm9
	movsd	%xmm10, -136(%rax)
.LVL212:
	movsd	-128(%r14), %xmm11
	mulsd	%xmm0, %xmm11
	subsd	%xmm11, %xmm2
	movsd	%xmm2, -128(%rax)
.LVL213:
	movsd	-120(%r14), %xmm12
	mulsd	%xmm0, %xmm12
	subsd	%xmm12, %xmm13
	movsd	%xmm13, -120(%rax)
.LVL214:
	movsd	-112(%r14), %xmm14
	mulsd	%xmm0, %xmm14
	subsd	%xmm14, %xmm15
	movsd	%xmm15, -112(%rax)
.LVL215:
	movsd	-104(%r14), %xmm7
	mulsd	%xmm0, %xmm7
	subsd	%xmm7, %xmm6
	movsd	%xmm6, -104(%rax)
.LVL216:
	movsd	-96(%r14), %xmm8
	leaq	288(%r8), %r14
	mulsd	%xmm0, %xmm8
	subsd	%xmm8, %xmm9
	movsd	%xmm9, -96(%rax)
	leaq	288(%rsi), %rax
	je	.L154
.L733:
	movl	104(%rsp), %r12d
.L155:
	movsd	-152(%r14), %xmm10
	prefetcht0	(%r14)
	leaq	64(%rax), %r15
	movsd	-152(%rax), %xmm11
	leaq	64(%r14), %rcx
	prefetcht0	(%rax)
	mulsd	%xmm0, %xmm10
	prefetcht0	(%r15)
	addl	$16, %ebx
	movsd	-144(%rax), %xmm2
	prefetcht0	(%rcx)
	subq	$-128, %rax
	movsd	-264(%rax), %xmm14
	subq	$-128, %r14
	movsd	-256(%rax), %xmm7
	subsd	%xmm10, %xmm11
	movsd	-248(%rax), %xmm8
	movsd	-240(%rax), %xmm10
	movsd	%xmm11, -280(%rax)
.LVL217:
	movsd	-272(%r14), %xmm12
	mulsd	%xmm0, %xmm12
	subsd	%xmm12, %xmm2
	movsd	-232(%rax), %xmm12
	movsd	%xmm2, -272(%rax)
.LVL218:
	movsd	-224(%rax), %xmm2
	movsd	-264(%r14), %xmm13
	mulsd	%xmm0, %xmm13
	subsd	%xmm13, %xmm14
	movsd	%xmm14, -264(%rax)
.LVL219:
	movsd	-256(%r14), %xmm15
	mulsd	%xmm0, %xmm15
	subsd	%xmm15, %xmm7
	movsd	%xmm7, -256(%rax)
.LVL220:
	movsd	-248(%r14), %xmm6
	mulsd	%xmm0, %xmm6
	subsd	%xmm6, %xmm8
	movsd	%xmm8, -248(%rax)
.LVL221:
	movsd	-240(%r14), %xmm9
	mulsd	%xmm0, %xmm9
	subsd	%xmm9, %xmm10
	movsd	%xmm10, -240(%rax)
.LVL222:
	movsd	-232(%r14), %xmm11
	mulsd	%xmm0, %xmm11
	subsd	%xmm11, %xmm12
	movsd	%xmm12, -232(%rax)
.LVL223:
	movsd	-224(%r14), %xmm13
	mulsd	%xmm0, %xmm13
	subsd	%xmm13, %xmm2
	movsd	%xmm2, -224(%rax)
.LVL224:
	movsd	-216(%r14), %xmm14
	movsd	-152(%r15), %xmm15
	mulsd	%xmm0, %xmm14
	movsd	-144(%r15), %xmm6
	subsd	%xmm14, %xmm15
	movsd	%xmm15, -152(%r15)
.LVL225:
	movsd	-208(%r14), %xmm7
	mulsd	%xmm0, %xmm7
	subsd	%xmm7, %xmm6
	movsd	%xmm6, -144(%r15)
.LVL226:
	movsd	-200(%r14), %xmm8
	movsd	-136(%r15), %xmm9
	mulsd	%xmm0, %xmm8
	movsd	-128(%r15), %xmm11
	movsd	-120(%r15), %xmm13
	movsd	-112(%r15), %xmm2
	subsd	%xmm8, %xmm9
	movsd	-104(%r15), %xmm7
	movsd	-96(%r15), %xmm8
	movsd	%xmm9, -136(%r15)
.LVL227:
	movsd	-192(%r14), %xmm10
	mulsd	%xmm0, %xmm10
	subsd	%xmm10, %xmm11
	movsd	%xmm11, -128(%r15)
.LVL228:
	movsd	-184(%r14), %xmm12
	mulsd	%xmm0, %xmm12
	subsd	%xmm12, %xmm13
	movsd	%xmm13, -120(%r15)
.LVL229:
	movsd	-176(%r14), %xmm14
	mulsd	%xmm0, %xmm14
	subsd	%xmm14, %xmm2
	movsd	%xmm2, -112(%r15)
.LVL230:
	movsd	-168(%r14), %xmm15
	mulsd	%xmm0, %xmm15
	subsd	%xmm15, %xmm7
	movsd	%xmm7, -104(%r15)
.LVL231:
	movsd	-160(%r14), %xmm6
	cmpl	%r12d, %ebx
	mulsd	%xmm0, %xmm6
	subsd	%xmm6, %xmm8
	movsd	%xmm8, -96(%r15)
	jne	.L155
.LVL232:
.L154:
	movslq	%ebx, %r10
	movl	%edi, %edx
	leal	1(%rbx), %r14d
	salq	$3, %r10
	subl	%ebx, %edx
	movl	$1, %eax
	addq	%r10, %r8
	addq	%r10, %rsi
	andl	$7, %edx
	movsd	(%r8), %xmm9
	cmpl	%r14d, %edi
	movsd	(%rsi), %xmm10
	mulsd	%xmm0, %xmm9
	subsd	%xmm9, %xmm10
	movsd	%xmm10, (%rsi)
	jl	.L146
	testl	%edx, %edx
	je	.L156
	cmpl	$1, %edx
	je	.L544
	cmpl	$2, %edx
	je	.L545
	cmpl	$3, %edx
	je	.L546
	cmpl	$4, %edx
	je	.L547
	cmpl	$5, %edx
	je	.L548
	cmpl	$6, %edx
	je	.L549
	movsd	8(%r8), %xmm11
	movl	$2, %eax
	movsd	8(%rsi), %xmm12
	mulsd	%xmm0, %xmm11
	subsd	%xmm11, %xmm12
	movsd	%xmm12, 8(%rsi)
.L549:
	movsd	(%r8,%rax,8), %xmm13
	movsd	(%rsi,%rax,8), %xmm14
	mulsd	%xmm0, %xmm13
	subsd	%xmm13, %xmm14
	movsd	%xmm14, (%rsi,%rax,8)
	addq	$1, %rax
.L548:
	movsd	(%r8,%rax,8), %xmm15
	movsd	(%rsi,%rax,8), %xmm2
	mulsd	%xmm0, %xmm15
	subsd	%xmm15, %xmm2
	movsd	%xmm2, (%rsi,%rax,8)
	addq	$1, %rax
.L547:
	movsd	(%r8,%rax,8), %xmm7
	movsd	(%rsi,%rax,8), %xmm6
	mulsd	%xmm0, %xmm7
	subsd	%xmm7, %xmm6
	movsd	%xmm6, (%rsi,%rax,8)
	addq	$1, %rax
.L546:
	movsd	(%r8,%rax,8), %xmm8
	movsd	(%rsi,%rax,8), %xmm9
	mulsd	%xmm0, %xmm8
	subsd	%xmm8, %xmm9
	movsd	%xmm9, (%rsi,%rax,8)
	addq	$1, %rax
.L545:
	movsd	(%r8,%rax,8), %xmm10
	movsd	(%rsi,%rax,8), %xmm11
	mulsd	%xmm0, %xmm10
	subsd	%xmm10, %xmm11
	movsd	%xmm11, (%rsi,%rax,8)
	addq	$1, %rax
.L544:
	movsd	(%r8,%rax,8), %xmm12
	movsd	(%rsi,%rax,8), %xmm13
	mulsd	%xmm0, %xmm12
	subsd	%xmm12, %xmm13
	movsd	%xmm13, (%rsi,%rax,8)
	addq	$1, %rax
	leal	(%rbx,%rax), %r12d
	cmpl	%r12d, %edi
	jl	.L146
.L156:
	movsd	(%r8,%rax,8), %xmm14
	leaq	1(%rax), %r15
	leaq	2(%rax), %rcx
	movsd	(%rsi,%rax,8), %xmm15
	leaq	3(%rax), %r10
	mulsd	%xmm0, %xmm14
	leaq	4(%rax), %rdx
	leaq	5(%rax), %r14
	leaq	6(%rax), %r12
	subsd	%xmm14, %xmm15
	movsd	%xmm15, (%rsi,%rax,8)
	movsd	(%r8,%r15,8), %xmm7
	movsd	(%rsi,%r15,8), %xmm2
	mulsd	%xmm0, %xmm7
	subsd	%xmm7, %xmm2
	movsd	%xmm2, (%rsi,%r15,8)
	leaq	7(%rax), %r15
	addq	$8, %rax
	movsd	(%r8,%rcx,8), %xmm6
	movsd	(%rsi,%rcx,8), %xmm8
	mulsd	%xmm0, %xmm6
	subsd	%xmm6, %xmm8
	movsd	%xmm8, (%rsi,%rcx,8)
	leal	(%rbx,%rax), %ecx
	movsd	(%r8,%r10,8), %xmm9
	cmpl	%ecx, %edi
	movsd	(%rsi,%r10,8), %xmm10
	mulsd	%xmm0, %xmm9
	subsd	%xmm9, %xmm10
	movsd	%xmm10, (%rsi,%r10,8)
	movsd	(%r8,%rdx,8), %xmm11
	movsd	(%rsi,%rdx,8), %xmm12
	mulsd	%xmm0, %xmm11
	subsd	%xmm11, %xmm12
	movsd	%xmm12, (%rsi,%rdx,8)
	movsd	(%r8,%r14,8), %xmm13
	movsd	(%rsi,%r14,8), %xmm14
	mulsd	%xmm0, %xmm13
	subsd	%xmm13, %xmm14
	movsd	%xmm14, (%rsi,%r14,8)
	movsd	(%r8,%r12,8), %xmm15
	movsd	(%rsi,%r12,8), %xmm7
	mulsd	%xmm0, %xmm15
	subsd	%xmm15, %xmm7
	movsd	%xmm7, (%rsi,%r12,8)
	movsd	(%r8,%r15,8), %xmm6
	movsd	(%rsi,%r15,8), %xmm2
	mulsd	%xmm0, %xmm6
	subsd	%xmm6, %xmm2
	movsd	%xmm2, (%rsi,%r15,8)
	jge	.L156
	jmp	.L146
.L175:
	.loc 1 94 0
	movq	%rax, %rsi
	xorl	%r15d, %r15d
	jmp	.L137
.L178:
	.loc 1 96 0
	movq	%rdx, %rcx
	xorl	%r12d, %r12d
	jmp	.L149
.LVL233:
.L775:
	testl	%r12d, %r12d
	jne	.L162
	.loc 1 88 0
	movl	$1, %edi
	jmp	.L111
.L170:
	.loc 1 90 0
	movl	$1, %ebx
	jmp	.L123
.LVL234:
.L773:
	leaq	0(,%r8,8), %rbp
.LVL235:
	movq	%rbp, (%rsp)
	movq	(%r10,%r8,8), %rbp
	jmp	.L96
.LVL236:
.L176:
	.loc 1 94 0
	movl	$1, %r8d
	jmp	.L142
.L179:
	.loc 1 96 0
	movl	$1, %ebx
	jmp	.L154
.LVL237:
.L163:
	movq	120(%rsp), %rbx
	.loc 1 81 0
	movsd	8(%rdx), %xmm13
	movsd	8(%rbp), %xmm14
	movl	$1, %edi
	movq	%rbx, %rcx
	movsd	%xmm14, 8(%rdx)
	subq	$1, %rcx
	movsd	%xmm13, 8(%rbp)
	andl	$7, %ecx
.LVL238:
	cmpq	$1, %rbx
	je	.L101
	testq	%rcx, %rcx
	je	.L97
	cmpq	$1, %rcx
	je	.L596
	cmpq	$2, %rcx
	je	.L597
	cmpq	$3, %rcx
	je	.L598
	cmpq	$4, %rcx
	je	.L599
	cmpq	$5, %rcx
	je	.L600
	cmpq	$6, %rcx
	je	.L601
.LVL239:
	movsd	16(%rdx), %xmm15
	movl	$2, %edi
	movsd	16(%rbp), %xmm2
	movsd	%xmm2, 16(%rdx)
	movsd	%xmm15, 16(%rbp)
.LVL240:
.L601:
	movsd	8(%rdx,%rdi,8), %xmm6
	movsd	8(%rbp,%rdi,8), %xmm7
	movsd	%xmm7, 8(%rdx,%rdi,8)
	movsd	%xmm6, 8(%rbp,%rdi,8)
.LVL241:
	addq	$1, %rdi
.LVL242:
.L600:
	movsd	8(%rdx,%rdi,8), %xmm8
	movsd	8(%rbp,%rdi,8), %xmm9
	movsd	%xmm9, 8(%rdx,%rdi,8)
	movsd	%xmm8, 8(%rbp,%rdi,8)
.LVL243:
	addq	$1, %rdi
.LVL244:
.L599:
	movsd	8(%rdx,%rdi,8), %xmm10
	movsd	8(%rbp,%rdi,8), %xmm11
	movsd	%xmm11, 8(%rdx,%rdi,8)
	movsd	%xmm10, 8(%rbp,%rdi,8)
.LVL245:
	addq	$1, %rdi
.LVL246:
.L598:
	movsd	8(%rdx,%rdi,8), %xmm12
	movsd	8(%rbp,%rdi,8), %xmm0
.LVL247:
	movsd	%xmm0, 8(%rdx,%rdi,8)
	movsd	%xmm12, 8(%rbp,%rdi,8)
.LVL248:
	addq	$1, %rdi
.LVL249:
.L597:
	movsd	8(%rdx,%rdi,8), %xmm13
	movsd	8(%rbp,%rdi,8), %xmm14
	movsd	%xmm14, 8(%rdx,%rdi,8)
	movsd	%xmm13, 8(%rbp,%rdi,8)
.LVL250:
	addq	$1, %rdi
.LVL251:
.L596:
	movsd	8(%rdx,%rdi,8), %xmm15
	movsd	8(%rbp,%rdi,8), %xmm2
	movsd	%xmm2, 8(%rdx,%rdi,8)
	movsd	%xmm15, 8(%rbp,%rdi,8)
.LVL252:
	addq	$1, %rdi
	cmpq	%rdi, 120(%rsp)
	je	.L101
.LVL253:
.L97:
	movsd	8(%rdx,%rdi,8), %xmm6
	leaq	1(%rdi), %r12
	leaq	2(%rdi), %r9
	movsd	8(%rbp,%rdi,8), %xmm7
	leaq	3(%rdi), %rax
	leaq	4(%rdi), %rbx
	leaq	5(%rdi), %rcx
	leaq	6(%rdi), %rsi
	movsd	%xmm7, 8(%rdx,%rdi,8)
	movsd	%xmm6, 8(%rbp,%rdi,8)
.LVL254:
	movsd	8(%rdx,%r12,8), %xmm8
	movsd	8(%rbp,%r12,8), %xmm9
	movsd	%xmm9, 8(%rdx,%r12,8)
	movsd	%xmm8, 8(%rbp,%r12,8)
.LVL255:
	leaq	7(%rdi), %r12
	addq	$8, %rdi
	cmpq	%rdi, 120(%rsp)
	movsd	8(%rdx,%r9,8), %xmm10
	movsd	8(%rbp,%r9,8), %xmm11
	movsd	%xmm11, 8(%rdx,%r9,8)
	movsd	%xmm10, 8(%rbp,%r9,8)
.LVL256:
	movsd	8(%rdx,%rax,8), %xmm12
	movsd	8(%rbp,%rax,8), %xmm0
	movsd	%xmm0, 8(%rdx,%rax,8)
	movsd	%xmm12, 8(%rbp,%rax,8)
.LVL257:
	movsd	8(%rdx,%rbx,8), %xmm13
	movsd	8(%rbp,%rbx,8), %xmm14
	movsd	%xmm14, 8(%rdx,%rbx,8)
	movsd	%xmm13, 8(%rbp,%rbx,8)
.LVL258:
	movsd	8(%rdx,%rcx,8), %xmm15
	movsd	8(%rbp,%rcx,8), %xmm2
	movsd	%xmm2, 8(%rdx,%rcx,8)
	movsd	%xmm15, 8(%rbp,%rcx,8)
.LVL259:
	movsd	8(%rdx,%rsi,8), %xmm6
	movsd	8(%rbp,%rsi,8), %xmm7
	movsd	%xmm7, 8(%rdx,%rsi,8)
	movsd	%xmm6, 8(%rbp,%rsi,8)
.LVL260:
	movsd	8(%rdx,%r12,8), %xmm8
	movsd	8(%rbp,%r12,8), %xmm9
	movsd	%xmm9, 8(%rdx,%r12,8)
	movsd	%xmm8, 8(%rbp,%r12,8)
.LVL261:
	jne	.L97
	jmp	.L101
.LVL262:
	.p2align 4,,10
	.p2align 3
.L102:
	movq	128(%rsp), %r11
	.loc 1 82 0
	movsd	8(%rdx), %xmm10
	movsd	8(%rcx), %xmm11
	movl	$1, %r8d
	movq	%r11, %rsi
	movsd	%xmm11, 8(%rdx)
	subq	$1, %rsi
	movsd	%xmm10, 8(%rcx)
	andl	$7, %esi
.LVL263:
	cmpq	%r11, %r8
	je	.L96
	testq	%rsi, %rsi
	je	.L106
	cmpq	$1, %rsi
	je	.L584
	cmpq	$2, %rsi
	je	.L585
	cmpq	$3, %rsi
	je	.L586
	cmpq	$4, %rsi
	je	.L587
	cmpq	$5, %rsi
	je	.L588
	cmpq	$6, %rsi
	je	.L589
.LVL264:
	movsd	16(%rdx), %xmm12
	movl	$2, %r8d
	movsd	16(%rcx), %xmm0
	movsd	%xmm0, 16(%rdx)
	movsd	%xmm12, 16(%rcx)
.LVL265:
.L589:
	movsd	8(%rdx,%r8,8), %xmm13
	movsd	8(%rcx,%r8,8), %xmm14
	movsd	%xmm14, 8(%rdx,%r8,8)
	movsd	%xmm13, 8(%rcx,%r8,8)
.LVL266:
	addq	$1, %r8
.LVL267:
.L588:
	movsd	8(%rdx,%r8,8), %xmm15
	movsd	8(%rcx,%r8,8), %xmm2
	movsd	%xmm2, 8(%rdx,%r8,8)
	movsd	%xmm15, 8(%rcx,%r8,8)
.LVL268:
	addq	$1, %r8
.LVL269:
.L587:
	movsd	8(%rdx,%r8,8), %xmm6
	movsd	8(%rcx,%r8,8), %xmm7
	movsd	%xmm7, 8(%rdx,%r8,8)
	movsd	%xmm6, 8(%rcx,%r8,8)
.LVL270:
	addq	$1, %r8
.LVL271:
.L586:
	movsd	8(%rdx,%r8,8), %xmm8
	movsd	8(%rcx,%r8,8), %xmm9
	movsd	%xmm9, 8(%rdx,%r8,8)
	movsd	%xmm8, 8(%rcx,%r8,8)
.LVL272:
	addq	$1, %r8
.LVL273:
.L585:
	movsd	8(%rdx,%r8,8), %xmm10
	movsd	8(%rcx,%r8,8), %xmm11
	movsd	%xmm11, 8(%rdx,%r8,8)
	movsd	%xmm10, 8(%rcx,%r8,8)
.LVL274:
	addq	$1, %r8
.LVL275:
.L584:
	movsd	8(%rdx,%r8,8), %xmm12
	movsd	8(%rcx,%r8,8), %xmm0
	movsd	%xmm0, 8(%rdx,%r8,8)
	movsd	%xmm12, 8(%rcx,%r8,8)
.LVL276:
	addq	$1, %r8
	cmpq	128(%rsp), %r8
	je	.L96
.LVL277:
.L106:
	movsd	8(%rdx,%r8,8), %xmm13
	leaq	1(%r8), %rbx
	leaq	2(%r8), %r12
	movsd	8(%rcx,%r8,8), %xmm14
	leaq	3(%r8), %r9
	leaq	4(%r8), %rax
	leaq	5(%r8), %r11
	leaq	6(%r8), %rsi
	movsd	%xmm14, 8(%rdx,%r8,8)
	leaq	7(%r8), %rdi
	movsd	%xmm13, 8(%rcx,%r8,8)
.LVL278:
	addq	$8, %r8
	cmpq	128(%rsp), %r8
	movsd	8(%rdx,%rbx,8), %xmm15
	movsd	8(%rcx,%rbx,8), %xmm2
	movsd	%xmm2, 8(%rdx,%rbx,8)
	movsd	%xmm15, 8(%rcx,%rbx,8)
.LVL279:
	movsd	8(%rdx,%r12,8), %xmm6
	movsd	8(%rcx,%r12,8), %xmm7
	movsd	%xmm7, 8(%rdx,%r12,8)
	movsd	%xmm6, 8(%rcx,%r12,8)
.LVL280:
	movsd	8(%rdx,%r9,8), %xmm8
	movsd	8(%rcx,%r9,8), %xmm9
	movsd	%xmm9, 8(%rdx,%r9,8)
	movsd	%xmm8, 8(%rcx,%r9,8)
.LVL281:
	movsd	8(%rdx,%rax,8), %xmm10
	movsd	8(%rcx,%rax,8), %xmm11
	movsd	%xmm11, 8(%rdx,%rax,8)
	movsd	%xmm10, 8(%rcx,%rax,8)
.LVL282:
	movsd	8(%rdx,%r11,8), %xmm12
	movsd	8(%rcx,%r11,8), %xmm0
	movsd	%xmm0, 8(%rdx,%r11,8)
	movsd	%xmm12, 8(%rcx,%r11,8)
.LVL283:
	movsd	8(%rdx,%rsi,8), %xmm13
	movsd	8(%rcx,%rsi,8), %xmm14
	movsd	%xmm14, 8(%rdx,%rsi,8)
	movsd	%xmm13, 8(%rcx,%rsi,8)
.LVL284:
	movsd	8(%rdx,%rdi,8), %xmm15
	movsd	8(%rcx,%rdi,8), %xmm2
	movsd	%xmm2, 8(%rdx,%rdi,8)
	movsd	%xmm15, 8(%rcx,%rdi,8)
.LVL285:
	jne	.L106
	jmp	.L96
.LVL286:
	.p2align 4,,10
	.p2align 3
.L169:
	.loc 1 88 0
	movq	%rax, %rdx
	xorl	%r11d, %r11d
	jmp	.L115
.L173:
	.loc 1 90 0
	movq	%rax, %rdx
	xorl	%r11d, %r11d
	jmp	.L127
.LVL287:
.L86:
.LBB69:
.LBB55:
	.loc 1 120 0
	movl	$.LC6, %edi
	call	_Z7nrerrorPKc
.LVL288:
.L774:
.LBE55:
.LBE69:
	.loc 1 86 0 discriminator 1
	movl	$.LC9, %edi
	call	_Z7nrerrorPKc
.LVL289:
.LBE73:
	.cfi_endproc
.LFE50:
	.size	_Z6gaussjPPdiS0_i, .-_Z6gaussjPPdiS0_i
	.section	.text.unlikely
.LCOLDE11:
	.text
.LHOTE11:
	.section	.text.unlikely
.LCOLDB12:
	.text
.LHOTB12:
	.p2align 4,,15
	.globl	_Z7ivectorll
	.type	_Z7ivectorll, @function
_Z7ivectorll:
.LFB51:
	.loc 1 116 0
	.cfi_startproc
.LVL290:
.LBB74:
	.loc 1 119 0
	subq	%rdi, %rsi
.LVL291:
.LBE74:
	.loc 1 116 0
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 116 0
	movq	%rdi, %rbx
.LBB75:
	.loc 1 119 0
	leaq	8(,%rsi,4), %rdi
.LVL292:
	call	malloc
.LVL293:
	.loc 1 120 0
	testq	%rax, %rax
	je	.L779
	.loc 1 121 0
	negq	%rbx
.LVL294:
	leaq	4(,%rbx,4), %rdx
.LBE75:
	.loc 1 122 0
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
.LVL295:
.LBB76:
	.loc 1 121 0
	addq	%rdx, %rax
.LVL296:
.LBE76:
	.loc 1 122 0
	ret
.LVL297:
.L779:
	.cfi_restore_state
.LBB77:
	.loc 1 120 0 discriminator 1
	movl	$.LC6, %edi
	call	_Z7nrerrorPKc
.LVL298:
.LBE77:
	.cfi_endproc
.LFE51:
	.size	_Z7ivectorll, .-_Z7ivectorll
	.section	.text.unlikely
.LCOLDE12:
	.text
.LHOTE12:
	.section	.text.unlikely
.LCOLDB13:
	.text
.LHOTB13:
	.p2align 4,,15
	.globl	_Z12free_ivectorPill
	.type	_Z12free_ivectorPill, @function
_Z12free_ivectorPill:
.LFB52:
	.loc 1 127 0
	.cfi_startproc
.LVL299:
	.loc 1 128 0
	leaq	-4(,%rsi,4), %rax
	addq	%rax, %rdi
.LVL300:
	jmp	free
.LVL301:
	.cfi_endproc
.LFE52:
	.size	_Z12free_ivectorPill, .-_Z12free_ivectorPill
	.section	.text.unlikely
.LCOLDE13:
	.text
.LHOTE13:
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"allocation failure in dvector()"
	.section	.text.unlikely
.LCOLDB15:
	.text
.LHOTB15:
	.p2align 4,,15
	.globl	_Z7dvectorll
	.type	_Z7dvectorll, @function
_Z7dvectorll:
.LFB53:
	.loc 1 133 0
	.cfi_startproc
.LVL302:
.LBB78:
	.loc 1 138 0
	subq	%rdi, %rsi
.LVL303:
.LBE78:
	.loc 1 133 0
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 133 0
	movq	%rdi, %rbx
.LBB79:
	.loc 1 138 0
	leaq	16(,%rsi,8), %rdi
.LVL304:
	call	malloc
.LVL305:
	.loc 1 139 0
	testq	%rax, %rax
	je	.L784
	.loc 1 140 0
	negq	%rbx
.LVL306:
	leaq	8(,%rbx,8), %rdx
.LBE79:
	.loc 1 142 0
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
.LVL307:
.LBB80:
	.loc 1 140 0
	addq	%rdx, %rax
.LVL308:
.LBE80:
	.loc 1 142 0
	ret
.LVL309:
.L784:
	.cfi_restore_state
.LBB81:
	.loc 1 139 0 discriminator 1
	movl	$.LC14, %edi
	call	_Z7nrerrorPKc
.LVL310:
.LBE81:
	.cfi_endproc
.LFE53:
	.size	_Z7dvectorll, .-_Z7dvectorll
	.section	.text.unlikely
.LCOLDE15:
	.text
.LHOTE15:
	.section	.text.unlikely
.LCOLDB16:
	.text
.LHOTB16:
	.p2align 4,,15
	.globl	_Z12free_dvectorPdll
	.type	_Z12free_dvectorPdll, @function
_Z12free_dvectorPdll:
.LFB54:
	.loc 1 146 0
	.cfi_startproc
.LVL311:
	.loc 1 149 0
	leaq	-8(,%rsi,8), %rax
	addq	%rax, %rdi
.LVL312:
	jmp	free
.LVL313:
	.cfi_endproc
.LFE54:
	.size	_Z12free_dvectorPdll, .-_Z12free_dvectorPdll
	.section	.text.unlikely
.LCOLDE16:
	.text
.LHOTE16:
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"allocation failure 1 in dmatrix()"
	.align 8
.LC18:
	.string	"allocation failure 2 in dmatrix()"
	.section	.text.unlikely
.LCOLDB19:
	.text
.LHOTB19:
	.p2align 4,,15
	.globl	_Z7dmatrixllll
	.type	_Z7dmatrixllll, @function
_Z7dmatrixllll:
.LFB55:
	.loc 1 155 0
	.cfi_startproc
.LVL314:
.LBB82:
	.loc 1 158 0
	movq	%rsi, %rax
.LBE82:
	.loc 1 155 0
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
.LBB83:
	.loc 1 158 0
	subq	%rdi, %rax
.LBE83:
	.loc 1 155 0
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %r12
	movq	%rsi, %r13
.LBB84:
	.loc 1 162 0
	leaq	16(,%rax,8), %rdi
.LVL315:
	.loc 1 158 0
	leaq	1(%rax), %rsi
.LVL316:
.LBE84:
	.loc 1 155 0
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
.LBB85:
	.loc 1 158 0
	subq	%rdx, %rcx
.LVL317:
.LBE85:
	.loc 1 155 0
	movq	%rdx, %r15
.LBB86:
	.loc 1 158 0
	movq	%rsi, (%rsp)
.LVL318:
	leaq	1(%rcx), %rbx
.LVL319:
	.loc 1 162 0
	call	malloc
.LVL320:
	.loc 1 163 0
	testq	%rax, %rax
	movq	(%rsp), %rdi
	je	.L850
.LVL321:
	.loc 1 168 0
	imulq	%rbx, %rdi
	movl	$8, %edx
	.loc 1 165 0
	leaq	0(,%r12,8), %r14
	movq	%rdx, %rbp
	movq	%rdx, 8(%rsp)
	movq	%rax, (%rsp)
.LVL322:
	subq	%r14, %rbp
	addq	%rax, %rbp
.LVL323:
	.loc 1 168 0
	leaq	8(,%rdi,8), %rdi
	addq	%rbp, %r14
	call	malloc
.LVL324:
	.loc 1 169 0
	testq	%rax, %rax
	.loc 1 168 0
	movq	%rax, (%r14)
	.loc 1 169 0
	movq	(%rsp), %r9
	movq	8(%rsp), %r8
	je	.L851
	.loc 1 171 0
	salq	$3, %r15
.LVL325:
	.loc 1 173 0
	leaq	1(%r12), %rsi
	subq	%r15, %r8
	.loc 1 171 0
	addq	%rax, %r8
	.loc 1 173 0
	cmpq	%rsi, %r13
	.loc 1 171 0
	movq	%r8, (%r14)
.LVL326:
	.loc 1 173 0
	jl	.L844
	leaq	-6(%r13), %r15
	leaq	2(%r12), %r10
	leaq	0(,%rbx,8), %r8
	movq	8(%r9), %rdx
	cmpq	%r10, %r15
	jle	.L790
	movabsq	$-9223372036854775802, %r11
	cmpq	%r11, %r13
	jl	.L790
	salq	$4, %rbx
.LVL327:
	movq	%r8, %rdi
	leaq	(%rdx,%r8), %r11
	leaq	(%rbx,%r8,4), %rax
	leaq	(%rdx,%rbx), %r9
	negq	%rdi
	movq	%r15, %rbx
	salq	$2, %rdi
	movq	%r11, 8(%r14)
	leaq	(%rax,%r8,2), %rax
	subq	%rsi, %rbx
	subq	%r8, %rdi
	subq	$2, %rbx
	movq	%r9, 16(%r14)
	prefetcht0	192(%r14)
	leaq	(%rdx,%rax), %rcx
	shrq	$3, %rbx
	addq	%rax, %r11
	andl	$1, %ebx
	addq	%rax, %r9
	leaq	(%rcx,%rdi), %rsi
.LVL328:
	movq	%rbx, (%rsp)
.LVL329:
	leaq	10(%r12), %rbx
	movq	%rcx, %rdx
	movq	%rcx, 64(%r14)
	leaq	(%rcx,%rax), %r10
	movq	%rsi, 24(%r14)
.LVL330:
	addq	%r8, %rsi
	subq	%r8, %rdx
	movq	%rsi, 32(%r14)
.LVL331:
	addq	%r8, %rsi
	movq	%rdx, 56(%r14)
	movq	%rsi, 40(%r14)
.LVL332:
	addq	%r8, %rsi
	cmpq	%rbx, %r15
	movq	%rsi, 48(%r14)
.LVL333:
	movq	%rcx, %rdx
	leaq	9(%r12), %rsi
.LVL334:
	leaq	64(%r14), %rcx
	jle	.L790
	cmpq	$0, (%rsp)
	je	.L791
	leaq	(%r10,%rdi), %rsi
.LVL335:
	prefetcht0	256(%r14)
	movq	%r10, %rdx
	subq	%r8, %rdx
	movq	%r11, 8(%rcx)
.LVL336:
	movq	%r9, 16(%rcx)
.LVL337:
	movq	%rsi, 24(%rcx)
.LVL338:
	addq	%r8, %rsi
	movq	%rdx, 56(%rcx)
	movq	%rsi, 32(%rcx)
.LVL339:
	addq	%r8, %rsi
	movq	%r10, 64(%rcx)
	movq	%rsi, 40(%rcx)
.LVL340:
	addq	%r8, %rsi
	movq	%r10, %rdx
	movq	%rsi, 48(%rcx)
.LVL341:
	leaq	17(%r12), %rsi
.LVL342:
	addq	$18, %r12
.LVL343:
	addq	%rax, %r10
	addq	%rax, %r11
	addq	%rax, %r9
	cmpq	%r12, %r15
	leaq	128(%r14), %rcx
	jle	.L790
.LVL344:
.L791:
	leaq	(%r10,%rax), %rdx
	leaq	(%r10,%rdi), %r12
	.loc 1 173 0 is_stmt 0 discriminator 3
	movq	%r10, 64(%rcx)
	movq	%r10, %r14
	addq	$16, %rsi
	movq	%r11, 8(%rcx)
	movq	%r12, 24(%rcx)
	leaq	(%rdx,%rdi), %r10
	addq	%r8, %r12
	movq	%r12, 32(%rcx)
	addq	%r8, %r12
	movq	%rdx, %rbx
	movq	%r12, 40(%rcx)
	movq	%r10, 88(%rcx)
	addq	%r8, %r12
	addq	%r8, %r10
	movq	%r12, 48(%rcx)
	leaq	1(%rsi), %r12
	movq	%r10, 96(%rcx)
	addq	%r8, %r10
	movq	%r9, 16(%rcx)
	addq	%rax, %r11
	addq	%rax, %r9
	movq	%r10, 104(%rcx)
	subq	%r8, %r14
	addq	%r8, %r10
	subq	%r8, %rbx
	movq	%r11, 72(%rcx)
	movq	%r9, 80(%rcx)
	prefetcht0	192(%rcx)
	movq	%r10, 112(%rcx)
	movq	%r14, 56(%rcx)
	prefetcht0	256(%rcx)
	movq	%rbx, 120(%rcx)
	movq	%rdx, 128(%rcx)
	addq	%rax, %r11
	subq	$-128, %rcx
	addq	%rax, %r9
	cmpq	%r12, %r15
	leaq	(%rdx,%rax), %r10
	jg	.L791
.L790:
	movq	%r13, %r15
	.loc 1 173 0
	leaq	1(%rsi), %rax
	addq	%r8, %rdx
	subq	%rsi, %r15
	movq	%rdx, 0(%rbp,%rsi,8)
	addq	%r8, %rdx
	andl	$7, %r15d
	cmpq	%rax, %r13
	jl	.L844
	testq	%r15, %r15
	je	.L792
	cmpq	$1, %r15
	je	.L828
	cmpq	$2, %r15
	je	.L829
	cmpq	$3, %r15
	je	.L830
	cmpq	$4, %r15
	je	.L831
	cmpq	$5, %r15
	je	.L832
	cmpq	$6, %r15
	je	.L833
	movq	%rdx, 0(%rbp,%rax,8)
	leaq	2(%rsi), %rax
	addq	%r8, %rdx
.L833:
	movq	%rdx, 0(%rbp,%rax,8)
	addq	$1, %rax
	addq	%r8, %rdx
.L832:
	movq	%rdx, 0(%rbp,%rax,8)
	addq	$1, %rax
	addq	%r8, %rdx
.L831:
	movq	%rdx, 0(%rbp,%rax,8)
	addq	$1, %rax
	addq	%r8, %rdx
.L830:
	movq	%rdx, 0(%rbp,%rax,8)
	addq	$1, %rax
	addq	%r8, %rdx
.L829:
	movq	%rdx, 0(%rbp,%rax,8)
	addq	$1, %rax
	addq	%r8, %rdx
.L828:
	movq	%rdx, 0(%rbp,%rax,8)
	addq	$1, %rax
	addq	%r8, %rdx
	cmpq	%rax, %r13
	jl	.L844
.L792:
	movq	%rdx, 0(%rbp,%rax,8)
	addq	%r8, %rdx
	movq	%rdx, 8(%rbp,%rax,8)
	addq	%r8, %rdx
	movq	%rdx, 16(%rbp,%rax,8)
	addq	%r8, %rdx
	movq	%rdx, 24(%rbp,%rax,8)
	addq	%r8, %rdx
	movq	%rdx, 32(%rbp,%rax,8)
	addq	%r8, %rdx
	movq	%rdx, 40(%rbp,%rax,8)
	addq	%r8, %rdx
	movq	%rdx, 48(%rbp,%rax,8)
	addq	%r8, %rdx
	movq	%rdx, 56(%rbp,%rax,8)
	addq	$8, %rax
	addq	%r8, %rdx
	cmpq	%rax, %r13
	jge	.L792
.L844:
.LBE86:
	.loc 1 178 0 is_stmt 1
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
.LVL345:
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
.LVL346:
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL347:
.L850:
	.cfi_restore_state
.LBB87:
	.loc 1 163 0 discriminator 1
	movl	$.LC17, %edi
	call	_Z7nrerrorPKc
.LVL348:
.L851:
	.loc 1 169 0 discriminator 1
	movl	$.LC18, %edi
	call	_Z7nrerrorPKc
.LVL349:
.LBE87:
	.cfi_endproc
.LFE55:
	.size	_Z7dmatrixllll, .-_Z7dmatrixllll
	.section	.text.unlikely
.LCOLDE19:
	.text
.LHOTE19:
	.section	.text.unlikely
.LCOLDB20:
	.text
.LHOTB20:
	.p2align 4,,15
	.globl	_Z12free_dmatrixPPdllll
	.type	_Z12free_dmatrixPPdllll, @function
_Z12free_dmatrixPPdllll:
.LFB56:
	.loc 1 182 0
	.cfi_startproc
.LVL350:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.loc 1 185 0
	leaq	-8(,%rcx,8), %rax
	.loc 1 182 0
	movq	%rdi, %rbx
	.loc 1 185 0
	leaq	0(,%rsi,8), %rbp
	.loc 1 182 0
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 185 0
	addq	(%rdi,%rsi,8), %rax
	movq	%rax, %rdi
.LVL351:
	call	free
.LVL352:
	.loc 1 188 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	.loc 1 186 0
	leaq	-8(%rbx,%rbp), %rdi
	.loc 1 188 0
	popq	%rbx
	.cfi_def_cfa_offset 16
.LVL353:
	popq	%rbp
	.cfi_def_cfa_offset 8
	.loc 1 186 0
	jmp	free
.LVL354:
	.cfi_endproc
.LFE56:
	.size	_Z12free_dmatrixPPdllll, .-_Z12free_dmatrixPPdllll
	.section	.text.unlikely
.LCOLDE20:
	.text
.LHOTE20:
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC7:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC10:
	.long	0
	.long	1072693248
	.text
.Letext0:
	.section	.text.unlikely
.Letext_cold0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/4.9/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/stdlib.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xd18
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF90
	.byte	0x4
	.long	.LASF91
	.long	.LASF92
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF8
	.byte	0x3
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
	.byte	0x4
	.byte	0x83
	.long	0x70
	.uleb128 0x3
	.long	.LASF10
	.byte	0x4
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
	.uleb128 0x3
	.long	.LASF13
	.byte	0x5
	.byte	0x30
	.long	0xae
	.uleb128 0x7
	.long	.LASF43
	.byte	0xd8
	.byte	0x6
	.byte	0xf5
	.long	0x22e
	.uleb128 0x8
	.long	.LASF14
	.byte	0x6
	.byte	0xf6
	.long	0x69
	.byte	0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x6
	.byte	0xfb
	.long	0x96
	.byte	0x8
	.uleb128 0x8
	.long	.LASF16
	.byte	0x6
	.byte	0xfc
	.long	0x96
	.byte	0x10
	.uleb128 0x8
	.long	.LASF17
	.byte	0x6
	.byte	0xfd
	.long	0x96
	.byte	0x18
	.uleb128 0x8
	.long	.LASF18
	.byte	0x6
	.byte	0xfe
	.long	0x96
	.byte	0x20
	.uleb128 0x8
	.long	.LASF19
	.byte	0x6
	.byte	0xff
	.long	0x96
	.byte	0x28
	.uleb128 0x9
	.long	.LASF20
	.byte	0x6
	.value	0x100
	.long	0x96
	.byte	0x30
	.uleb128 0x9
	.long	.LASF21
	.byte	0x6
	.value	0x101
	.long	0x96
	.byte	0x38
	.uleb128 0x9
	.long	.LASF22
	.byte	0x6
	.value	0x102
	.long	0x96
	.byte	0x40
	.uleb128 0x9
	.long	.LASF23
	.byte	0x6
	.value	0x104
	.long	0x96
	.byte	0x48
	.uleb128 0x9
	.long	.LASF24
	.byte	0x6
	.value	0x105
	.long	0x96
	.byte	0x50
	.uleb128 0x9
	.long	.LASF25
	.byte	0x6
	.value	0x106
	.long	0x96
	.byte	0x58
	.uleb128 0x9
	.long	.LASF26
	.byte	0x6
	.value	0x108
	.long	0x266
	.byte	0x60
	.uleb128 0x9
	.long	.LASF27
	.byte	0x6
	.value	0x10a
	.long	0x26c
	.byte	0x68
	.uleb128 0x9
	.long	.LASF28
	.byte	0x6
	.value	0x10c
	.long	0x69
	.byte	0x70
	.uleb128 0x9
	.long	.LASF29
	.byte	0x6
	.value	0x110
	.long	0x69
	.byte	0x74
	.uleb128 0x9
	.long	.LASF30
	.byte	0x6
	.value	0x112
	.long	0x77
	.byte	0x78
	.uleb128 0x9
	.long	.LASF31
	.byte	0x6
	.value	0x116
	.long	0x4d
	.byte	0x80
	.uleb128 0x9
	.long	.LASF32
	.byte	0x6
	.value	0x117
	.long	0x5b
	.byte	0x82
	.uleb128 0x9
	.long	.LASF33
	.byte	0x6
	.value	0x118
	.long	0x272
	.byte	0x83
	.uleb128 0x9
	.long	.LASF34
	.byte	0x6
	.value	0x11c
	.long	0x282
	.byte	0x88
	.uleb128 0x9
	.long	.LASF35
	.byte	0x6
	.value	0x125
	.long	0x82
	.byte	0x90
	.uleb128 0x9
	.long	.LASF36
	.byte	0x6
	.value	0x12e
	.long	0x94
	.byte	0x98
	.uleb128 0x9
	.long	.LASF37
	.byte	0x6
	.value	0x12f
	.long	0x94
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF38
	.byte	0x6
	.value	0x130
	.long	0x94
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF39
	.byte	0x6
	.value	0x131
	.long	0x94
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x6
	.value	0x132
	.long	0x34
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF41
	.byte	0x6
	.value	0x134
	.long	0x69
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF42
	.byte	0x6
	.value	0x136
	.long	0x288
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF93
	.byte	0x6
	.byte	0x9a
	.uleb128 0x7
	.long	.LASF44
	.byte	0x18
	.byte	0x6
	.byte	0xa0
	.long	0x266
	.uleb128 0x8
	.long	.LASF45
	.byte	0x6
	.byte	0xa1
	.long	0x266
	.byte	0
	.uleb128 0x8
	.long	.LASF46
	.byte	0x6
	.byte	0xa2
	.long	0x26c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF47
	.byte	0x6
	.byte	0xa6
	.long	0x69
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x235
	.uleb128 0x6
	.byte	0x8
	.long	0xae
	.uleb128 0xb
	.long	0x9c
	.long	0x282
	.uleb128 0xc
	.long	0x8d
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22e
	.uleb128 0xb
	.long	0x9c
	.long	0x298
	.uleb128 0xc
	.long	0x8d
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x29e
	.uleb128 0xd
	.long	0x9c
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF48
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF49
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF50
	.uleb128 0x6
	.byte	0x8
	.long	0x2be
	.uleb128 0xe
	.uleb128 0x6
	.byte	0x8
	.long	0x2d
	.uleb128 0x6
	.byte	0x8
	.long	0x2bf
	.uleb128 0xf
	.long	.LASF94
	.byte	0x2
	.byte	0x5f
	.long	0x69
	.byte	0x3
	.long	0x2f3
	.uleb128 0x10
	.long	.LASF51
	.byte	0x2
	.byte	0x5f
	.long	0x2f3
	.uleb128 0x10
	.long	.LASF52
	.byte	0x2
	.byte	0x5f
	.long	0x298
	.uleb128 0x11
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa3
	.uleb128 0x12
	.long	.LASF85
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.long	0x323
	.uleb128 0x13
	.string	"v"
	.byte	0x1
	.byte	0x7d
	.long	0x323
	.uleb128 0x13
	.string	"nl"
	.byte	0x1
	.byte	0x7d
	.long	0x70
	.uleb128 0x13
	.string	"nh"
	.byte	0x1
	.byte	0x7d
	.long	0x70
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x69
	.uleb128 0x14
	.long	.LASF82
	.byte	0x1
	.byte	0x72
	.long	0x323
	.byte	0x1
	.long	0x359
	.uleb128 0x13
	.string	"nl"
	.byte	0x1
	.byte	0x72
	.long	0x70
	.uleb128 0x13
	.string	"nh"
	.byte	0x1
	.byte	0x72
	.long	0x70
	.uleb128 0x15
	.uleb128 0x16
	.string	"v"
	.byte	0x1
	.byte	0x75
	.long	0x323
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LASF54
	.byte	0x1
	.byte	0xc
	.long	.LASF56
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x49d
	.uleb128 0x18
	.long	.LASF53
	.byte	0x1
	.byte	0xc
	.long	0x298
	.long	.LLST0
	.uleb128 0x19
	.long	0x2cb
	.quad	.LBB16
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xf
	.long	0x3dc
	.uleb128 0x1a
	.long	0x2e6
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.uleb128 0x1b
	.long	0x2db
	.uleb128 0x1c
	.quad	.LVL2
	.long	0xc6d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0x2cb
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.byte	0x1
	.byte	0x10
	.long	0x433
	.uleb128 0x1a
	.long	0x2e6
	.uleb128 0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.uleb128 0x1b
	.long	0x2db
	.uleb128 0x1c
	.quad	.LVL3
	.long	0xc93
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0x2cb
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.byte	0x1
	.byte	0x11
	.long	0x489
	.uleb128 0x1a
	.long	0x2e6
	.uleb128 0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.uleb128 0x1b
	.long	0x2db
	.uleb128 0x1c
	.quad	.LVL4
	.long	0xc6d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x4c
	.byte	0
	.byte	0
	.uleb128 0x1c
	.quad	.LVL5
	.long	0xcb3
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF67
	.byte	0x1
	.byte	0x18
	.long	.LASF69
	.long	0x69
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x550
	.uleb128 0x20
	.string	"a"
	.byte	0x1
	.byte	0x18
	.long	0x2c5
	.long	.LLST1
	.uleb128 0x20
	.string	"n"
	.byte	0x1
	.byte	0x18
	.long	0x69
	.long	.LLST2
	.uleb128 0x21
	.long	.Ldebug_ranges0+0x40
	.long	0x529
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0x21
	.long	0x69
	.long	.LLST3
	.uleb128 0x22
	.string	"j"
	.byte	0x1
	.byte	0x21
	.long	0x69
	.long	.LLST4
	.uleb128 0x22
	.string	"k"
	.byte	0x1
	.byte	0x21
	.long	0x69
	.long	.LLST5
	.uleb128 0x22
	.string	"sum"
	.byte	0x1
	.byte	0x22
	.long	0x2d
	.long	.LLST6
	.uleb128 0x23
	.quad	.LVL79
	.long	0xcc5
	.byte	0
	.uleb128 0x1c
	.quad	.LVL72
	.long	0xcda
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x7c
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LASF55
	.byte	0x1
	.byte	0x37
	.long	.LASF57
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x8e5
	.uleb128 0x20
	.string	"a"
	.byte	0x1
	.byte	0x37
	.long	0x2c5
	.long	.LLST7
	.uleb128 0x20
	.string	"n"
	.byte	0x1
	.byte	0x37
	.long	0x69
	.long	.LLST8
	.uleb128 0x20
	.string	"b"
	.byte	0x1
	.byte	0x37
	.long	0x2c5
	.long	.LLST9
	.uleb128 0x20
	.string	"m"
	.byte	0x1
	.byte	0x37
	.long	0x69
	.long	.LLST10
	.uleb128 0x21
	.long	.Ldebug_ranges0+0xe0
	.long	0x8c1
	.uleb128 0x24
	.long	.LASF58
	.byte	0x1
	.byte	0x39
	.long	0x323
	.uleb128 0x24
	.long	.LASF59
	.byte	0x1
	.byte	0x39
	.long	0x323
	.uleb128 0x24
	.long	.LASF60
	.byte	0x1
	.byte	0x39
	.long	0x323
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0x3a
	.long	0x69
	.long	.LLST11
	.uleb128 0x25
	.long	.LASF61
	.byte	0x1
	.byte	0x3a
	.long	0x69
	.long	.LLST12
	.uleb128 0x25
	.long	.LASF62
	.byte	0x1
	.byte	0x3a
	.long	0x69
	.long	.LLST13
	.uleb128 0x22
	.string	"j"
	.byte	0x1
	.byte	0x3a
	.long	0x69
	.long	.LLST14
	.uleb128 0x22
	.string	"k"
	.byte	0x1
	.byte	0x3a
	.long	0x69
	.long	.LLST15
	.uleb128 0x22
	.string	"l"
	.byte	0x1
	.byte	0x3a
	.long	0x69
	.long	.LLST16
	.uleb128 0x22
	.string	"ll"
	.byte	0x1
	.byte	0x3a
	.long	0x69
	.long	.LLST17
	.uleb128 0x22
	.string	"big"
	.byte	0x1
	.byte	0x3b
	.long	0x2d
	.long	.LLST18
	.uleb128 0x22
	.string	"dum"
	.byte	0x1
	.byte	0x3b
	.long	0x2d
	.long	.LLST19
	.uleb128 0x25
	.long	.LASF63
	.byte	0x1
	.byte	0x3b
	.long	0x2d
	.long	.LLST20
	.uleb128 0x25
	.long	.LASF64
	.byte	0x1
	.byte	0x3b
	.long	0x2d
	.long	.LLST21
	.uleb128 0x19
	.long	0x329
	.quad	.LBB52
	.long	.Ldebug_ranges0+0x140
	.byte	0x1
	.byte	0x3d
	.long	0x6d6
	.uleb128 0x26
	.long	0x339
	.byte	0x1
	.uleb128 0x27
	.long	0x343
	.long	.LLST22
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x140
	.uleb128 0x29
	.long	0x34e
	.long	.LLST23
	.uleb128 0x2a
	.quad	.LVL87
	.long	0xcf7
	.long	0x6b9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0
	.uleb128 0x1c
	.quad	.LVL288
	.long	0x359
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0x329
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.byte	0x1
	.byte	0x3e
	.long	0x733
	.uleb128 0x27
	.long	0x339
	.long	.LLST24
	.uleb128 0x27
	.long	0x343
	.long	.LLST25
	.uleb128 0x2b
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.uleb128 0x29
	.long	0x34e
	.long	.LLST26
	.uleb128 0x1c
	.quad	.LVL90
	.long	0xcf7
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0x329
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.byte	0x1
	.byte	0x3f
	.long	0x790
	.uleb128 0x27
	.long	0x339
	.long	.LLST27
	.uleb128 0x27
	.long	0x343
	.long	.LLST28
	.uleb128 0x2b
	.quad	.LBB60
	.quad	.LBE60-.LBB60
	.uleb128 0x29
	.long	0x34e
	.long	.LLST29
	.uleb128 0x1c
	.quad	.LVL93
	.long	0xcf7
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0x2f9
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.byte	0x1
	.byte	0x68
	.long	0x7d9
	.uleb128 0x27
	.long	0x318
	.long	.LLST30
	.uleb128 0x27
	.long	0x30e
	.long	.LLST31
	.uleb128 0x1b
	.long	0x305
	.uleb128 0x1c
	.quad	.LVL161
	.long	0xd0d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0x2f9
	.quad	.LBB63
	.quad	.LBE63-.LBB63
	.byte	0x1
	.byte	0x69
	.long	0x822
	.uleb128 0x27
	.long	0x318
	.long	.LLST32
	.uleb128 0x27
	.long	0x30e
	.long	.LLST33
	.uleb128 0x1b
	.long	0x305
	.uleb128 0x1c
	.quad	.LVL162
	.long	0xd0d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	0x2f9
	.quad	.LBB65
	.long	.Ldebug_ranges0+0x180
	.byte	0x1
	.byte	0x6a
	.long	0x867
	.uleb128 0x27
	.long	0x318
	.long	.LLST34
	.uleb128 0x27
	.long	0x30e
	.long	.LLST35
	.uleb128 0x1b
	.long	0x305
	.uleb128 0x2c
	.quad	.LVL164
	.long	0xd0d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -120
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL110
	.long	0x359
	.long	0x886
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.byte	0
	.uleb128 0x2a
	.quad	.LVL165
	.long	0x359
	.long	0x8a5
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.byte	0
	.uleb128 0x1c
	.quad	.LVL289
	.long	0x359
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.byte	0
	.byte	0
	.uleb128 0x1c
	.quad	.LVL96
	.long	0xcda
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0x329
	.long	.LASF65
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x961
	.uleb128 0x27
	.long	0x339
	.long	.LLST36
	.uleb128 0x27
	.long	0x343
	.long	.LLST37
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x1b0
	.uleb128 0x29
	.long	0x34e
	.long	.LLST38
	.uleb128 0x2a
	.quad	.LVL293
	.long	0xcf7
	.long	0x944
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xa
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
	.uleb128 0x1c
	.quad	.LVL298
	.long	0x359
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0x2f9
	.long	.LASF66
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x9b9
	.uleb128 0x27
	.long	0x305
	.long	.LLST39
	.uleb128 0x27
	.long	0x30e
	.long	.LLST40
	.uleb128 0x27
	.long	0x318
	.long	.LLST41
	.uleb128 0x2c
	.quad	.LVL301
	.long	0xd0d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x32
	.byte	0x24
	.byte	0x34
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF68
	.byte	0x1
	.byte	0x84
	.long	.LASF70
	.long	0x2bf
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0xa49
	.uleb128 0x20
	.string	"nl"
	.byte	0x1
	.byte	0x84
	.long	0x70
	.long	.LLST42
	.uleb128 0x20
	.string	"nh"
	.byte	0x1
	.byte	0x84
	.long	0x70
	.long	.LLST43
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x200
	.uleb128 0x22
	.string	"v"
	.byte	0x1
	.byte	0x88
	.long	0x2bf
	.long	.LLST44
	.uleb128 0x2a
	.quad	.LVL305
	.long	0xcf7
	.long	0xa2c
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xa
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
	.uleb128 0x1c
	.quad	.LVL310
	.long	0x359
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LASF71
	.byte	0x1
	.byte	0x91
	.long	.LASF72
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0xab1
	.uleb128 0x20
	.string	"v"
	.byte	0x1
	.byte	0x91
	.long	0x2bf
	.long	.LLST45
	.uleb128 0x20
	.string	"nl"
	.byte	0x1
	.byte	0x91
	.long	0x70
	.long	.LLST46
	.uleb128 0x20
	.string	"nh"
	.byte	0x1
	.byte	0x91
	.long	0x70
	.long	.LLST47
	.uleb128 0x2c
	.quad	.LVL313
	.long	0xd0d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x33
	.byte	0x24
	.byte	0x38
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF73
	.byte	0x1
	.byte	0x9a
	.long	.LASF74
	.long	0x2c5
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0xbb7
	.uleb128 0x20
	.string	"nrl"
	.byte	0x1
	.byte	0x9a
	.long	0x70
	.long	.LLST48
	.uleb128 0x20
	.string	"nrh"
	.byte	0x1
	.byte	0x9a
	.long	0x70
	.long	.LLST49
	.uleb128 0x20
	.string	"ncl"
	.byte	0x1
	.byte	0x9a
	.long	0x70
	.long	.LLST50
	.uleb128 0x20
	.string	"nch"
	.byte	0x1
	.byte	0x9a
	.long	0x70
	.long	.LLST51
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x250
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0x9e
	.long	0x70
	.long	.LLST52
	.uleb128 0x25
	.long	.LASF75
	.byte	0x1
	.byte	0x9e
	.long	0x70
	.long	.LLST53
	.uleb128 0x25
	.long	.LASF76
	.byte	0x1
	.byte	0x9e
	.long	0x70
	.long	.LLST54
	.uleb128 0x22
	.string	"m"
	.byte	0x1
	.byte	0x9f
	.long	0x2c5
	.long	.LLST55
	.uleb128 0x2a
	.quad	.LVL320
	.long	0xcf7
	.long	0xb6e
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x77
	.sleb128 0
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x33
	.byte	0x24
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x23
	.quad	.LVL324
	.long	0xcf7
	.uleb128 0x2a
	.quad	.LVL348
	.long	0x359
	.long	0xb9a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC17
	.byte	0
	.uleb128 0x1c
	.quad	.LVL349
	.long	0x359
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LASF77
	.byte	0x1
	.byte	0xb5
	.long	.LASF78
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0xc4c
	.uleb128 0x20
	.string	"m"
	.byte	0x1
	.byte	0xb5
	.long	0x2c5
	.long	.LLST56
	.uleb128 0x20
	.string	"nrl"
	.byte	0x1
	.byte	0xb5
	.long	0x70
	.long	.LLST57
	.uleb128 0x20
	.string	"nrh"
	.byte	0x1
	.byte	0xb5
	.long	0x70
	.long	.LLST58
	.uleb128 0x20
	.string	"ncl"
	.byte	0x1
	.byte	0xb5
	.long	0x70
	.long	.LLST59
	.uleb128 0x20
	.string	"nch"
	.byte	0x1
	.byte	0xb5
	.long	0x70
	.long	.LLST60
	.uleb128 0x23
	.quad	.LVL352
	.long	0xd0d
	.uleb128 0x2c
	.quad	.LVL354
	.long	0xd0d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xb
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
	.uleb128 0x2e
	.long	.LASF79
	.byte	0x5
	.byte	0xa8
	.long	0x26c
	.uleb128 0x2e
	.long	.LASF80
	.byte	0x5
	.byte	0xa9
	.long	0x26c
	.uleb128 0x2e
	.long	.LASF81
	.byte	0x5
	.byte	0xaa
	.long	0x26c
	.uleb128 0x2f
	.long	.LASF83
	.long	.LASF95
	.long	0x3f
	.long	0xc93
	.uleb128 0x30
	.long	0x2b8
	.uleb128 0x30
	.long	0x34
	.uleb128 0x30
	.long	0x34
	.uleb128 0x30
	.long	0x2f3
	.byte	0
	.uleb128 0x31
	.long	.LASF84
	.byte	0x2
	.byte	0x55
	.long	0x69
	.long	0xcb3
	.uleb128 0x30
	.long	0x2f3
	.uleb128 0x30
	.long	0x69
	.uleb128 0x30
	.long	0x298
	.uleb128 0x11
	.byte	0
	.uleb128 0x32
	.long	.LASF86
	.byte	0x7
	.value	0x21f
	.long	0xcc5
	.uleb128 0x30
	.long	0x69
	.byte	0
	.uleb128 0x31
	.long	.LASF87
	.byte	0x8
	.byte	0x9c
	.long	0x2d
	.long	0xcda
	.uleb128 0x30
	.long	0x2d
	.byte	0
	.uleb128 0x33
	.long	.LASF88
	.long	0x94
	.long	0xcf7
	.uleb128 0x30
	.long	0x94
	.uleb128 0x30
	.long	0x69
	.uleb128 0x30
	.long	0x8d
	.byte	0
	.uleb128 0x34
	.long	.LASF89
	.byte	0x7
	.value	0x1d2
	.long	0x94
	.long	0xd0d
	.uleb128 0x30
	.long	0x34
	.byte	0
	.uleb128 0x35
	.long	.LASF96
	.byte	0x7
	.value	0x1e3
	.uleb128 0x30
	.long	0x94
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
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x6e
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
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL1-.Ltext0
	.quad	.LFE48-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL6-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL7-.Ltext0
	.quad	.LVL74-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL74-.Ltext0
	.quad	.LVL75-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL75-.Ltext0
	.quad	.LVL77-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL77-.Ltext0
	.quad	.LVL78-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL78-.Ltext0
	.quad	.LVL81-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL81-.Ltext0
	.quad	.LFE49-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL6-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL7-.Ltext0
	.quad	.LVL77-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.quad	.LVL77-.Ltext0
	.quad	.LVL78-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL78-.Ltext0
	.quad	.LFE49-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL6-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL7-.Ltext0
	.quad	.LVL66-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	.LVL67-.Ltext0
	.quad	.LVL68-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL68-.Ltext0
	.quad	.LVL69-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL69-.Ltext0
	.quad	.LVL70-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL70-.Ltext0
	.quad	.LVL71-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL71-.Ltext0
	.quad	.LVL73-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL75-.Ltext0
	.quad	.LVL76-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	.LVL76-.Ltext0
	.quad	.LVL77-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL77-.Ltext0
	.quad	.LVL78-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL78-.Ltext0
	.quad	.LFE49-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL7-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	.LVL8-.Ltext0
	.quad	.LVL67-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL70-.Ltext0
	.quad	.LVL73-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL75-.Ltext0
	.quad	.LVL76-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL76-.Ltext0
	.quad	.LVL77-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL78-.Ltext0
	.quad	.LVL82-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL9-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL10-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL11-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0x3
	.byte	0x7f
	.sleb128 -2
	.byte	0x9f
	.quad	.LVL12-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x3
	.byte	0x7f
	.sleb128 -3
	.byte	0x9f
	.quad	.LVL13-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x3
	.byte	0x7f
	.sleb128 -4
	.byte	0x9f
	.quad	.LVL14-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x3
	.byte	0x7f
	.sleb128 -5
	.byte	0x9f
	.quad	.LVL15-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x3
	.byte	0x7f
	.sleb128 -6
	.byte	0x9f
	.quad	.LVL16-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x3
	.byte	0x7f
	.sleb128 -7
	.byte	0x9f
	.quad	.LVL17-.Ltext0
	.quad	.LVL18-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL18-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL19-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0x3
	.byte	0x7f
	.sleb128 -2
	.byte	0x9f
	.quad	.LVL21-.Ltext0
	.quad	.LVL22-.Ltext0
	.value	0x3
	.byte	0x7f
	.sleb128 -3
	.byte	0x9f
	.quad	.LVL22-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x3
	.byte	0x7f
	.sleb128 -4
	.byte	0x9f
	.quad	.LVL23-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x3
	.byte	0x7f
	.sleb128 -5
	.byte	0x9f
	.quad	.LVL24-.Ltext0
	.quad	.LVL25-.Ltext0
	.value	0x3
	.byte	0x7f
	.sleb128 -6
	.byte	0x9f
	.quad	.LVL25-.Ltext0
	.quad	.LVL26-.Ltext0
	.value	0x3
	.byte	0x7f
	.sleb128 -7
	.byte	0x9f
	.quad	.LVL26-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL28-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL29-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0x3
	.byte	0x7f
	.sleb128 -2
	.byte	0x9f
	.quad	.LVL30-.Ltext0
	.quad	.LVL31-.Ltext0
	.value	0x3
	.byte	0x7f
	.sleb128 -3
	.byte	0x9f
	.quad	.LVL31-.Ltext0
	.quad	.LVL32-.Ltext0
	.value	0x3
	.byte	0x7f
	.sleb128 -4
	.byte	0x9f
	.quad	.LVL32-.Ltext0
	.quad	.LVL33-.Ltext0
	.value	0x3
	.byte	0x7f
	.sleb128 -5
	.byte	0x9f
	.quad	.LVL33-.Ltext0
	.quad	.LVL34-.Ltext0
	.value	0x3
	.byte	0x7f
	.sleb128 -6
	.byte	0x9f
	.quad	.LVL34-.Ltext0
	.quad	.LVL35-.Ltext0
	.value	0x3
	.byte	0x7f
	.sleb128 -7
	.byte	0x9f
	.quad	.LVL35-.Ltext0
	.quad	.LVL36-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL36-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL37-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x3
	.byte	0x7f
	.sleb128 -2
	.byte	0x9f
	.quad	.LVL38-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0x3
	.byte	0x7f
	.sleb128 -3
	.byte	0x9f
	.quad	.LVL39-.Ltext0
	.quad	.LVL40-.Ltext0
	.value	0x3
	.byte	0x7f
	.sleb128 -4
	.byte	0x9f
	.quad	.LVL40-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0x3
	.byte	0x7f
	.sleb128 -5
	.byte	0x9f
	.quad	.LVL41-.Ltext0
	.quad	.LVL42-.Ltext0
	.value	0x3
	.byte	0x7f
	.sleb128 -6
	.byte	0x9f
	.quad	.LVL42-.Ltext0
	.quad	.LVL43-.Ltext0
	.value	0x3
	.byte	0x7f
	.sleb128 -7
	.byte	0x9f
	.quad	.LVL43-.Ltext0
	.quad	.LVL44-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL75-.Ltext0
	.quad	.LVL76-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL9-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL17-.Ltext0
	.quad	.LVL18-.Ltext0
	.value	0x29
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x2d
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x2d
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x15
	.uleb128 0x2d
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x2d
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x2d
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x2d
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x2d
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL18-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0xd
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL19-.Ltext0
	.quad	.LVL20-.Ltext0
	.value	0x11
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x2d
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL20-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0x1b
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x75
	.sleb128 160
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x74
	.sleb128 160
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x2d
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL21-.Ltext0
	.quad	.LVL22-.Ltext0
	.value	0x1f
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x75
	.sleb128 160
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x74
	.sleb128 160
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x2d
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x2d
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL22-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x23
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x75
	.sleb128 160
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x74
	.sleb128 160
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x2d
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x2d
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x15
	.uleb128 0x2d
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL23-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x27
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x75
	.sleb128 160
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x74
	.sleb128 160
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x2d
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x2d
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x15
	.uleb128 0x2d
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x2d
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL24-.Ltext0
	.quad	.LVL25-.Ltext0
	.value	0x2b
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x75
	.sleb128 160
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x74
	.sleb128 160
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x2d
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x2d
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x15
	.uleb128 0x2d
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x2d
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x2d
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL25-.Ltext0
	.quad	.LVL26-.Ltext0
	.value	0x2f
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x75
	.sleb128 160
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x74
	.sleb128 160
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x2d
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x2d
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x15
	.uleb128 0x2d
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x2d
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x2d
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x2d
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL26-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL28-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x21
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL29-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0x39
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x98
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x98
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL30-.Ltext0
	.quad	.LVL31-.Ltext0
	.value	0x51
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x98
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x98
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x90
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x90
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL31-.Ltext0
	.quad	.LVL32-.Ltext0
	.value	0x69
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x98
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x98
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x90
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x90
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x88
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x88
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL32-.Ltext0
	.quad	.LVL33-.Ltext0
	.value	0x81
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x98
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x98
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x90
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x90
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x88
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x88
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x80
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x80
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL33-.Ltext0
	.quad	.LVL34-.Ltext0
	.value	0x97
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x98
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x98
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x90
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x90
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x88
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x88
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x80
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x80
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x78
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x78
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL34-.Ltext0
	.quad	.LVL35-.Ltext0
	.value	0xad
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x98
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x98
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x90
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x90
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x88
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x88
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x80
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x80
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x78
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x78
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x70
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x70
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL36-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x21
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL37-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x39
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x98
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x98
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL38-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0x51
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x98
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x98
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x90
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x90
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL39-.Ltext0
	.quad	.LVL40-.Ltext0
	.value	0x69
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x98
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x98
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x90
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x90
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x88
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x88
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL40-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0x81
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x98
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x98
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x90
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x90
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x88
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x88
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x80
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x80
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL41-.Ltext0
	.quad	.LVL42-.Ltext0
	.value	0x97
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x98
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x98
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x90
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x90
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x88
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x88
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x80
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x80
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x78
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x78
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL42-.Ltext0
	.quad	.LVL43-.Ltext0
	.value	0xad
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x98
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x98
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x90
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x90
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x88
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x88
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x80
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x80
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x78
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x78
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x70
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x70
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL43-.Ltext0
	.quad	.LVL44-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL45-.Ltext0
	.quad	.LVL46-.Ltext0
	.value	0x8
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x2d
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL46-.Ltext0
	.quad	.LVL47-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL47-.Ltext0
	.quad	.LVL48-.Ltext0
	.value	0x8
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x15
	.uleb128 0x2d
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL48-.Ltext0
	.quad	.LVL49-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL49-.Ltext0
	.quad	.LVL50-.Ltext0
	.value	0x8
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x2d
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL50-.Ltext0
	.quad	.LVL51-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL51-.Ltext0
	.quad	.LVL52-.Ltext0
	.value	0x8
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x2d
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL52-.Ltext0
	.quad	.LVL53-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL53-.Ltext0
	.quad	.LVL54-.Ltext0
	.value	0x8
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x2d
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL54-.Ltext0
	.quad	.LVL55-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL55-.Ltext0
	.quad	.LVL56-.Ltext0
	.value	0x8
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x2d
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL56-.Ltext0
	.quad	.LVL57-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL57-.Ltext0
	.quad	.LVL58-.Ltext0
	.value	0x8
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x2d
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL58-.Ltext0
	.quad	.LVL59-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL59-.Ltext0
	.quad	.LVL60-.Ltext0
	.value	0x8
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x2d
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL60-.Ltext0
	.quad	.LVL61-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL62-.Ltext0
	.quad	.LVL63-.Ltext0
	.value	0x8
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x2d
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL63-.Ltext0
	.quad	.LVL64-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL75-.Ltext0
	.quad	.LVL76-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL78-.Ltext0
	.quad	.LVL79-1-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL80-.Ltext0
	.quad	.LFE49-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL83-.Ltext0
	.quad	.LVL86-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL86-.Ltext0
	.quad	.LVL89-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL89-.Ltext0
	.quad	.LFE50-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL83-.Ltext0
	.quad	.LVL87-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL87-1-.Ltext0
	.quad	.LVL163-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL163-.Ltext0
	.quad	.LFE50-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL83-.Ltext0
	.quad	.LVL84-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL84-.Ltext0
	.quad	.LFE50-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -168
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL83-.Ltext0
	.quad	.LVL87-1-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL87-1-.Ltext0
	.quad	.LFE50-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -140
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL96-.Ltext0
	.quad	.LVL97-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL97-.Ltext0
	.quad	.LVL151-.Ltext0
	.value	0x8
	.byte	0x91
	.sleb128 -136
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL164-.Ltext0
	.quad	.LVL287-.Ltext0
	.value	0x8
	.byte	0x91
	.sleb128 -136
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL288-.Ltext0
	.quad	.LFE50-.Ltext0
	.value	0x8
	.byte	0x91
	.sleb128 -136
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL96-.Ltext0
	.quad	.LVL97-.Ltext0
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.quad	.LVL97-.Ltext0
	.quad	.LVL98-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL152-.Ltext0
	.quad	.LVL160-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -188
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL96-.Ltext0
	.quad	.LVL97-.Ltext0
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.quad	.LVL97-.Ltext0
	.quad	.LVL98-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL152-.Ltext0
	.quad	.LVL160-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -100
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL95-.Ltext0
	.quad	.LVL98-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL98-.Ltext0
	.quad	.LVL115-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL164-.Ltext0
	.quad	.LVL171-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL234-.Ltext0
	.quad	.LVL235-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL99-.Ltext0
	.quad	.LVL113-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL156-.Ltext0
	.quad	.LVL158-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL164-.Ltext0
	.quad	.LVL171-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL116-.Ltext0
	.quad	.LVL118-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL120-.Ltext0
	.quad	.LVL121-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL121-.Ltext0
	.quad	.LVL123-.Ltext0
	.value	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL123-.Ltext0
	.quad	.LVL125-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL126-.Ltext0
	.quad	.LVL127-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL127-.Ltext0
	.quad	.LVL129-.Ltext0
	.value	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL130-.Ltext0
	.quad	.LVL131-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL131-.Ltext0
	.quad	.LVL132-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL132-.Ltext0
	.quad	.LVL133-.Ltext0
	.value	0x2
	.byte	0x33
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
	.quad	.LVL142-.Ltext0
	.quad	.LVL143-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL144-.Ltext0
	.quad	.LVL145-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	.LVL145-.Ltext0
	.quad	.LVL146-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL147-.Ltext0
	.quad	.LVL149-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL153-.Ltext0
	.quad	.LVL155-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL155-.Ltext0
	.quad	.LVL160-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL171-.Ltext0
	.quad	.LVL172-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL172-.Ltext0
	.quad	.LVL173-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL173-.Ltext0
	.quad	.LVL174-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL174-.Ltext0
	.quad	.LVL175-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL175-.Ltext0
	.quad	.LVL176-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL176-.Ltext0
	.quad	.LVL177-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL177-.Ltext0
	.quad	.LVL178-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.quad	.LVL178-.Ltext0
	.quad	.LVL179-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL179-.Ltext0
	.quad	.LVL180-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL180-.Ltext0
	.quad	.LVL181-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL181-.Ltext0
	.quad	.LVL182-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL182-.Ltext0
	.quad	.LVL183-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL183-.Ltext0
	.quad	.LVL184-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL184-.Ltext0
	.quad	.LVL185-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.quad	.LVL185-.Ltext0
	.quad	.LVL186-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL186-.Ltext0
	.quad	.LVL187-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL187-.Ltext0
	.quad	.LVL188-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL188-.Ltext0
	.quad	.LVL189-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL189-.Ltext0
	.quad	.LVL190-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL190-.Ltext0
	.quad	.LVL191-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL191-.Ltext0
	.quad	.LVL192-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.quad	.LVL192-.Ltext0
	.quad	.LVL193-.Ltext0
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.quad	.LVL193-.Ltext0
	.quad	.LVL194-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL194-.Ltext0
	.quad	.LVL195-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL195-.Ltext0
	.quad	.LVL196-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL196-.Ltext0
	.quad	.LVL197-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL197-.Ltext0
	.quad	.LVL198-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL198-.Ltext0
	.quad	.LVL199-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL199-.Ltext0
	.quad	.LVL200-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.quad	.LVL200-.Ltext0
	.quad	.LVL201-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL202-.Ltext0
	.quad	.LVL203-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL203-.Ltext0
	.quad	.LVL204-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL204-.Ltext0
	.quad	.LVL205-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL205-.Ltext0
	.quad	.LVL206-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL206-.Ltext0
	.quad	.LVL207-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL207-.Ltext0
	.quad	.LVL208-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL208-.Ltext0
	.quad	.LVL209-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.quad	.LVL209-.Ltext0
	.quad	.LVL210-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL210-.Ltext0
	.quad	.LVL211-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL211-.Ltext0
	.quad	.LVL212-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL212-.Ltext0
	.quad	.LVL213-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL213-.Ltext0
	.quad	.LVL214-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL214-.Ltext0
	.quad	.LVL215-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL215-.Ltext0
	.quad	.LVL216-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.quad	.LVL216-.Ltext0
	.quad	.LVL217-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL217-.Ltext0
	.quad	.LVL218-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL218-.Ltext0
	.quad	.LVL219-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL219-.Ltext0
	.quad	.LVL220-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL220-.Ltext0
	.quad	.LVL221-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL221-.Ltext0
	.quad	.LVL222-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL222-.Ltext0
	.quad	.LVL223-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.quad	.LVL223-.Ltext0
	.quad	.LVL224-.Ltext0
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.quad	.LVL224-.Ltext0
	.quad	.LVL225-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL225-.Ltext0
	.quad	.LVL226-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL226-.Ltext0
	.quad	.LVL227-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL227-.Ltext0
	.quad	.LVL228-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL228-.Ltext0
	.quad	.LVL229-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL229-.Ltext0
	.quad	.LVL230-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	.LVL230-.Ltext0
	.quad	.LVL231-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.quad	.LVL231-.Ltext0
	.quad	.LVL232-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL233-.Ltext0
	.quad	.LVL234-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL236-.Ltext0
	.quad	.LVL237-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL238-.Ltext0
	.quad	.LVL239-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL239-.Ltext0
	.quad	.LVL241-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL241-.Ltext0
	.quad	.LVL242-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL242-.Ltext0
	.quad	.LVL243-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL243-.Ltext0
	.quad	.LVL244-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL244-.Ltext0
	.quad	.LVL245-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL245-.Ltext0
	.quad	.LVL246-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL246-.Ltext0
	.quad	.LVL248-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL248-.Ltext0
	.quad	.LVL249-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL249-.Ltext0
	.quad	.LVL250-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL250-.Ltext0
	.quad	.LVL251-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL251-.Ltext0
	.quad	.LVL252-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL252-.Ltext0
	.quad	.LVL253-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL253-.Ltext0
	.quad	.LVL261-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL261-.Ltext0
	.quad	.LVL262-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL262-.Ltext0
	.quad	.LVL263-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL263-.Ltext0
	.quad	.LVL264-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL264-.Ltext0
	.quad	.LVL266-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL266-.Ltext0
	.quad	.LVL267-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL267-.Ltext0
	.quad	.LVL268-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL268-.Ltext0
	.quad	.LVL269-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL269-.Ltext0
	.quad	.LVL270-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL270-.Ltext0
	.quad	.LVL271-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL271-.Ltext0
	.quad	.LVL272-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL272-.Ltext0
	.quad	.LVL273-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL273-.Ltext0
	.quad	.LVL274-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL274-.Ltext0
	.quad	.LVL275-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL275-.Ltext0
	.quad	.LVL276-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL276-.Ltext0
	.quad	.LVL277-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL277-.Ltext0
	.quad	.LVL285-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL285-.Ltext0
	.quad	.LVL286-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL139-.Ltext0
	.quad	.LVL140-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL140-.Ltext0
	.quad	.LVL154-.Ltext0
	.value	0x1
	.byte	0x59
	.quad	.LVL171-.Ltext0
	.quad	.LVL233-.Ltext0
	.value	0x1
	.byte	0x59
	.quad	.LVL236-.Ltext0
	.quad	.LVL237-.Ltext0
	.value	0x1
	.byte	0x59
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL97-.Ltext0
	.quad	.LVL98-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.quad	.LVL98-.Ltext0
	.quad	.LVL100-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL101-.Ltext0
	.quad	.LVL105-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL106-.Ltext0
	.quad	.LVL107-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL108-.Ltext0
	.quad	.LVL110-1-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL110-.Ltext0
	.quad	.LVL112-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL113-.Ltext0
	.quad	.LVL119-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL164-.Ltext0
	.quad	.LVL165-1-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL165-.Ltext0
	.quad	.LVL166-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL167-.Ltext0
	.quad	.LVL168-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL169-.Ltext0
	.quad	.LVL170-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL234-.Ltext0
	.quad	.LVL236-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL237-.Ltext0
	.quad	.LVL247-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL141-.Ltext0
	.quad	.LVL148-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL171-.Ltext0
	.quad	.LVL233-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL236-.Ltext0
	.quad	.LVL237-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL130-.Ltext0
	.quad	.LVL138-.Ltext0
	.value	0x1
	.byte	0x63
	.quad	.LVL233-.Ltext0
	.quad	.LVL234-.Ltext0
	.value	0x1
	.byte	0x63
	.quad	.LVL286-.Ltext0
	.quad	.LVL287-.Ltext0
	.value	0x1
	.byte	0x63
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL117-.Ltext0
	.quad	.LVL118-.Ltext0
	.value	0x1
	.byte	0x6e
	.quad	.LVL122-.Ltext0
	.quad	.LVL123-.Ltext0
	.value	0x1
	.byte	0x6d
	.quad	.LVL124-.Ltext0
	.quad	.LVL125-.Ltext0
	.value	0x1
	.byte	0x6b
	.quad	.LVL128-.Ltext0
	.quad	.LVL129-.Ltext0
	.value	0x1
	.byte	0x69
	.quad	.LVL157-.Ltext0
	.quad	.LVL158-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL85-.Ltext0
	.quad	.LVL87-1-.Ltext0
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
	.quad	.LVL87-1-.Ltext0
	.quad	.LVL163-.Ltext0
	.value	0x9
	.byte	0x7d
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL163-.Ltext0
	.quad	.LFE50-.Ltext0
	.value	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL88-.Ltext0
	.quad	.LVL90-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL90-1-.Ltext0
	.quad	.LFE50-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL89-.Ltext0
	.quad	.LVL287-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL288-.Ltext0
	.quad	.LFE50-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL89-.Ltext0
	.quad	.LVL163-.Ltext0
	.value	0x9
	.byte	0x7d
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL163-.Ltext0
	.quad	.LVL287-.Ltext0
	.value	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL288-.Ltext0
	.quad	.LFE50-.Ltext0
	.value	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL91-.Ltext0
	.quad	.LVL93-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL93-1-.Ltext0
	.quad	.LVL287-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -112
	.quad	.LVL288-.Ltext0
	.quad	.LFE50-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -112
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL92-.Ltext0
	.quad	.LVL287-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL288-.Ltext0
	.quad	.LFE50-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL92-.Ltext0
	.quad	.LVL163-.Ltext0
	.value	0x9
	.byte	0x7d
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL163-.Ltext0
	.quad	.LVL287-.Ltext0
	.value	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL288-.Ltext0
	.quad	.LFE50-.Ltext0
	.value	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL94-.Ltext0
	.quad	.LVL96-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL96-1-.Ltext0
	.quad	.LVL287-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -128
	.quad	.LVL288-.Ltext0
	.quad	.LFE50-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -128
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL160-.Ltext0
	.quad	.LVL163-.Ltext0
	.value	0x9
	.byte	0x7d
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL163-.Ltext0
	.quad	.LVL164-.Ltext0
	.value	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL160-.Ltext0
	.quad	.LVL164-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST32:
	.quad	.LVL161-.Ltext0
	.quad	.LVL163-.Ltext0
	.value	0x9
	.byte	0x7d
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL163-.Ltext0
	.quad	.LVL164-.Ltext0
	.value	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	0
	.quad	0
.LLST33:
	.quad	.LVL161-.Ltext0
	.quad	.LVL164-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST34:
	.quad	.LVL162-.Ltext0
	.quad	.LVL163-.Ltext0
	.value	0x9
	.byte	0x7d
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL163-.Ltext0
	.quad	.LVL164-.Ltext0
	.value	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	0
	.quad	0
.LLST35:
	.quad	.LVL162-.Ltext0
	.quad	.LVL164-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST36:
	.quad	.LVL290-.Ltext0
	.quad	.LVL292-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL292-.Ltext0
	.quad	.LVL294-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL294-.Ltext0
	.quad	.LVL295-.Ltext0
	.value	0x4
	.byte	0x73
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.quad	.LVL295-.Ltext0
	.quad	.LVL297-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL297-.Ltext0
	.quad	.LFE51-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST37:
	.quad	.LVL290-.Ltext0
	.quad	.LVL291-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL291-.Ltext0
	.quad	.LFE51-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST38:
	.quad	.LVL293-.Ltext0
	.quad	.LVL296-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL297-.Ltext0
	.quad	.LVL298-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST39:
	.quad	.LVL299-.Ltext0
	.quad	.LVL300-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL300-.Ltext0
	.quad	.LFE52-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST40:
	.quad	.LVL299-.Ltext0
	.quad	.LVL301-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL301-1-.Ltext0
	.quad	.LFE52-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST41:
	.quad	.LVL299-.Ltext0
	.quad	.LVL301-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL301-1-.Ltext0
	.quad	.LFE52-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST42:
	.quad	.LVL302-.Ltext0
	.quad	.LVL304-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL304-.Ltext0
	.quad	.LVL306-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL306-.Ltext0
	.quad	.LVL307-.Ltext0
	.value	0x4
	.byte	0x73
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.quad	.LVL307-.Ltext0
	.quad	.LVL309-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL309-.Ltext0
	.quad	.LFE53-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST43:
	.quad	.LVL302-.Ltext0
	.quad	.LVL303-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL303-.Ltext0
	.quad	.LFE53-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST44:
	.quad	.LVL305-.Ltext0
	.quad	.LVL308-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL309-.Ltext0
	.quad	.LVL310-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST45:
	.quad	.LVL311-.Ltext0
	.quad	.LVL312-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL312-.Ltext0
	.quad	.LFE54-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST46:
	.quad	.LVL311-.Ltext0
	.quad	.LVL313-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL313-1-.Ltext0
	.quad	.LFE54-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST47:
	.quad	.LVL311-.Ltext0
	.quad	.LVL313-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL313-1-.Ltext0
	.quad	.LFE54-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST48:
	.quad	.LVL314-.Ltext0
	.quad	.LVL315-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL315-.Ltext0
	.quad	.LVL343-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL343-.Ltext0
	.quad	.LVL344-.Ltext0
	.value	0x3
	.byte	0x7c
	.sleb128 -18
	.byte	0x9f
	.quad	.LVL344-.Ltext0
	.quad	.LVL347-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL347-.Ltext0
	.quad	.LFE55-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST49:
	.quad	.LVL314-.Ltext0
	.quad	.LVL316-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL316-.Ltext0
	.quad	.LVL346-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL346-.Ltext0
	.quad	.LVL347-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL347-.Ltext0
	.quad	.LFE55-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST50:
	.quad	.LVL314-.Ltext0
	.quad	.LVL320-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL320-1-.Ltext0
	.quad	.LVL325-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL325-.Ltext0
	.quad	.LVL347-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL347-.Ltext0
	.quad	.LFE55-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST51:
	.quad	.LVL314-.Ltext0
	.quad	.LVL317-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL317-.Ltext0
	.quad	.LFE55-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST52:
	.quad	.LVL326-.Ltext0
	.quad	.LVL328-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL328-.Ltext0
	.quad	.LVL329-.Ltext0
	.value	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.quad	.LVL329-.Ltext0
	.quad	.LVL330-.Ltext0
	.value	0x3
	.byte	0x7c
	.sleb128 3
	.byte	0x9f
	.quad	.LVL330-.Ltext0
	.quad	.LVL331-.Ltext0
	.value	0x3
	.byte	0x7c
	.sleb128 4
	.byte	0x9f
	.quad	.LVL331-.Ltext0
	.quad	.LVL332-.Ltext0
	.value	0x3
	.byte	0x7c
	.sleb128 5
	.byte	0x9f
	.quad	.LVL332-.Ltext0
	.quad	.LVL333-.Ltext0
	.value	0x3
	.byte	0x7c
	.sleb128 6
	.byte	0x9f
	.quad	.LVL333-.Ltext0
	.quad	.LVL334-.Ltext0
	.value	0x3
	.byte	0x7c
	.sleb128 16
	.byte	0x9f
	.quad	.LVL334-.Ltext0
	.quad	.LVL335-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL335-.Ltext0
	.quad	.LVL336-.Ltext0
	.value	0x3
	.byte	0x7c
	.sleb128 9
	.byte	0x9f
	.quad	.LVL336-.Ltext0
	.quad	.LVL337-.Ltext0
	.value	0x3
	.byte	0x7c
	.sleb128 10
	.byte	0x9f
	.quad	.LVL337-.Ltext0
	.quad	.LVL338-.Ltext0
	.value	0x3
	.byte	0x7c
	.sleb128 11
	.byte	0x9f
	.quad	.LVL338-.Ltext0
	.quad	.LVL339-.Ltext0
	.value	0x3
	.byte	0x7c
	.sleb128 12
	.byte	0x9f
	.quad	.LVL339-.Ltext0
	.quad	.LVL340-.Ltext0
	.value	0x3
	.byte	0x7c
	.sleb128 13
	.byte	0x9f
	.quad	.LVL340-.Ltext0
	.quad	.LVL341-.Ltext0
	.value	0x3
	.byte	0x7c
	.sleb128 14
	.byte	0x9f
	.quad	.LVL341-.Ltext0
	.quad	.LVL342-.Ltext0
	.value	0x3
	.byte	0x7c
	.sleb128 24
	.byte	0x9f
	.quad	.LVL342-.Ltext0
	.quad	.LVL344-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST53:
	.quad	.LVL318-.Ltext0
	.quad	.LVL320-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL320-1-.Ltext0
	.quad	.LVL322-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL322-.Ltext0
	.quad	.LVL343-.Ltext0
	.value	0x8
	.byte	0x7d
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL343-.Ltext0
	.quad	.LVL344-.Ltext0
	.value	0x8
	.byte	0x7d
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x13
	.byte	0x9f
	.quad	.LVL344-.Ltext0
	.quad	.LVL346-.Ltext0
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
	.quad	.LVL346-.Ltext0
	.quad	.LVL347-.Ltext0
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
	.quad	.LVL347-.Ltext0
	.quad	.LVL348-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL348-.Ltext0
	.quad	.LFE55-.Ltext0
	.value	0x8
	.byte	0x7d
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST54:
	.quad	.LVL319-.Ltext0
	.quad	.LVL327-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL327-.Ltext0
	.quad	.LVL347-.Ltext0
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
	.quad	.LVL347-.Ltext0
	.quad	.LFE55-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST55:
	.quad	.LVL320-.Ltext0
	.quad	.LVL321-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL321-.Ltext0
	.quad	.LVL323-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 8
	.byte	0x9f
	.quad	.LVL323-.Ltext0
	.quad	.LVL345-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL345-.Ltext0
	.quad	.LVL348-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL348-.Ltext0
	.quad	.LFE55-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST56:
	.quad	.LVL350-.Ltext0
	.quad	.LVL351-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL351-.Ltext0
	.quad	.LVL353-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL353-.Ltext0
	.quad	.LFE56-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST57:
	.quad	.LVL350-.Ltext0
	.quad	.LVL352-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL352-1-.Ltext0
	.quad	.LFE56-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST58:
	.quad	.LVL350-.Ltext0
	.quad	.LVL352-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL352-1-.Ltext0
	.quad	.LFE56-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST59:
	.quad	.LVL350-.Ltext0
	.quad	.LVL352-1-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL352-1-.Ltext0
	.quad	.LFE56-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST60:
	.quad	.LVL350-.Ltext0
	.quad	.LVL352-1-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	.LVL352-1-.Ltext0
	.quad	.LFE56-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
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
	.quad	.LBB16-.Ltext0
	.quad	.LBE16-.Ltext0
	.quad	.LBB20-.Ltext0
	.quad	.LBE20-.Ltext0
	.quad	.LBB21-.Ltext0
	.quad	.LBE21-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB26-.Ltext0
	.quad	.LBE26-.Ltext0
	.quad	.LBB27-.Ltext0
	.quad	.LBE27-.Ltext0
	.quad	.LBB28-.Ltext0
	.quad	.LBE28-.Ltext0
	.quad	.LBB29-.Ltext0
	.quad	.LBE29-.Ltext0
	.quad	.LBB30-.Ltext0
	.quad	.LBE30-.Ltext0
	.quad	.LBB31-.Ltext0
	.quad	.LBE31-.Ltext0
	.quad	.LBB32-.Ltext0
	.quad	.LBE32-.Ltext0
	.quad	.LBB33-.Ltext0
	.quad	.LBE33-.Ltext0
	.quad	.LBB34-.Ltext0
	.quad	.LBE34-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB51-.Ltext0
	.quad	.LBE51-.Ltext0
	.quad	.LBB70-.Ltext0
	.quad	.LBE70-.Ltext0
	.quad	.LBB71-.Ltext0
	.quad	.LBE71-.Ltext0
	.quad	.LBB72-.Ltext0
	.quad	.LBE72-.Ltext0
	.quad	.LBB73-.Ltext0
	.quad	.LBE73-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB52-.Ltext0
	.quad	.LBE52-.Ltext0
	.quad	.LBB56-.Ltext0
	.quad	.LBE56-.Ltext0
	.quad	.LBB69-.Ltext0
	.quad	.LBE69-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB65-.Ltext0
	.quad	.LBE65-.Ltext0
	.quad	.LBB68-.Ltext0
	.quad	.LBE68-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB74-.Ltext0
	.quad	.LBE74-.Ltext0
	.quad	.LBB75-.Ltext0
	.quad	.LBE75-.Ltext0
	.quad	.LBB76-.Ltext0
	.quad	.LBE76-.Ltext0
	.quad	.LBB77-.Ltext0
	.quad	.LBE77-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB78-.Ltext0
	.quad	.LBE78-.Ltext0
	.quad	.LBB79-.Ltext0
	.quad	.LBE79-.Ltext0
	.quad	.LBB80-.Ltext0
	.quad	.LBE80-.Ltext0
	.quad	.LBB81-.Ltext0
	.quad	.LBE81-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB82-.Ltext0
	.quad	.LBE82-.Ltext0
	.quad	.LBB83-.Ltext0
	.quad	.LBE83-.Ltext0
	.quad	.LBB84-.Ltext0
	.quad	.LBE84-.Ltext0
	.quad	.LBB85-.Ltext0
	.quad	.LBE85-.Ltext0
	.quad	.LBB86-.Ltext0
	.quad	.LBE86-.Ltext0
	.quad	.LBB87-.Ltext0
	.quad	.LBE87-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF29:
	.string	"_flags2"
.LASF66:
	.string	"_Z12free_ivectorPill"
.LASF43:
	.string	"_IO_FILE"
.LASF27:
	.string	"_chain"
.LASF25:
	.string	"_IO_save_end"
.LASF75:
	.string	"nrow"
.LASF64:
	.string	"temp"
.LASF6:
	.string	"short int"
.LASF8:
	.string	"size_t"
.LASF89:
	.string	"malloc"
.LASF74:
	.string	"_Z7dmatrixllll"
.LASF11:
	.string	"sizetype"
.LASF35:
	.string	"_offset"
.LASF19:
	.string	"_IO_write_ptr"
.LASF14:
	.string	"_flags"
.LASF21:
	.string	"_IO_buf_base"
.LASF0:
	.string	"double"
.LASF34:
	.string	"_lock"
.LASF53:
	.string	"error_text"
.LASF26:
	.string	"_markers"
.LASF16:
	.string	"_IO_read_end"
.LASF69:
	.string	"_Z6choldcPPdi"
.LASF58:
	.string	"indxc"
.LASF60:
	.string	"ipiv"
.LASF54:
	.string	"nrerror"
.LASF96:
	.string	"free"
.LASF59:
	.string	"indxr"
.LASF72:
	.string	"_Z12free_dvectorPdll"
.LASF31:
	.string	"_cur_column"
.LASF48:
	.string	"float"
.LASF81:
	.string	"stderr"
.LASF49:
	.string	"long long int"
.LASF88:
	.string	"memset"
.LASF70:
	.string	"_Z7dvectorll"
.LASF78:
	.string	"_Z12free_dmatrixPPdllll"
.LASF65:
	.string	"_Z7ivectorll"
.LASF73:
	.string	"dmatrix"
.LASF92:
	.string	"/localtmp/jad5ju/goa2/benchmarks/swaptions"
.LASF47:
	.string	"_pos"
.LASF94:
	.string	"fprintf"
.LASF90:
	.string	"GNU C++ 4.9.2 -mtune=generic -march=x86-64 -g -O3 -funroll-loops -fprefetch-loop-arrays -fpermissive -fno-exceptions -fstack-protector"
.LASF86:
	.string	"exit"
.LASF46:
	.string	"_sbuf"
.LASF61:
	.string	"icol"
.LASF2:
	.string	"unsigned char"
.LASF85:
	.string	"free_ivector"
.LASF56:
	.string	"_Z7nrerrorPKc"
.LASF5:
	.string	"signed char"
.LASF50:
	.string	"long long unsigned int"
.LASF4:
	.string	"unsigned int"
.LASF44:
	.string	"_IO_marker"
.LASF33:
	.string	"_shortbuf"
.LASF91:
	.string	"/if16/jad5ju/Progs/opensource/parsec-3.0//pkgs/apps/swaptions/src/nr_routines.c"
.LASF30:
	.string	"_old_offset"
.LASF18:
	.string	"_IO_write_base"
.LASF77:
	.string	"free_dmatrix"
.LASF15:
	.string	"_IO_read_ptr"
.LASF40:
	.string	"__pad5"
.LASF22:
	.string	"_IO_buf_end"
.LASF63:
	.string	"pivinv"
.LASF12:
	.string	"char"
.LASF7:
	.string	"long int"
.LASF45:
	.string	"_next"
.LASF36:
	.string	"__pad1"
.LASF37:
	.string	"__pad2"
.LASF38:
	.string	"__pad3"
.LASF39:
	.string	"__pad4"
.LASF83:
	.string	"__builtin_fwrite"
.LASF68:
	.string	"dvector"
.LASF57:
	.string	"_Z6gaussjPPdiS0_i"
.LASF3:
	.string	"short unsigned int"
.LASF52:
	.string	"__fmt"
.LASF95:
	.string	"fwrite"
.LASF1:
	.string	"long unsigned int"
.LASF55:
	.string	"gaussj"
.LASF20:
	.string	"_IO_write_end"
.LASF10:
	.string	"__off64_t"
.LASF76:
	.string	"ncol"
.LASF28:
	.string	"_fileno"
.LASF62:
	.string	"irow"
.LASF71:
	.string	"free_dvector"
.LASF9:
	.string	"__off_t"
.LASF24:
	.string	"_IO_backup_base"
.LASF79:
	.string	"stdin"
.LASF87:
	.string	"sqrt"
.LASF41:
	.string	"_mode"
.LASF17:
	.string	"_IO_read_base"
.LASF32:
	.string	"_vtable_offset"
.LASF42:
	.string	"_unused2"
.LASF23:
	.string	"_IO_save_base"
.LASF84:
	.string	"__fprintf_chk"
.LASF82:
	.string	"ivector"
.LASF13:
	.string	"FILE"
.LASF51:
	.string	"__stream"
.LASF67:
	.string	"choldc"
.LASF80:
	.string	"stdout"
.LASF93:
	.string	"_IO_lock_t"
	.ident	"GCC: (Ubuntu 4.9.2-0ubuntu1~14.04) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
