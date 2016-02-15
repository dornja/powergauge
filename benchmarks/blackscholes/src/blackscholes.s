	.file	"tmp.ddlL0rqXUR.cpp"
	.text
.Ltext0:
	.p2align 4,,15
	.globl	_Z9bs_threadPv
	.type	_Z9bs_threadPv, @function
_Z9bs_threadPv:
.LFB77:
	.file 1 "/tmp/tmp.ddlL0rqXUR.cpp"
	.loc 1 357 0
	.cfi_startproc
.LVL0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
.LVL1:
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
.LBB53:
	.loc 1 364 0
	movl	$100, %r13d
.LBE53:
	.loc 1 357 0
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
.LBB76:
	.loc 1 363 0
	movl	numOptions(%rip), %eax
	movl	(%rdi), %r14d
	cltd
	idivl	nThreads(%rip)
	imull	%eax, %r14d
.LVL2:
	.loc 1 364 0
	addl	%r14d, %eax
	movslq	%r14d, %rsi
	movl	%eax, %ebx
	leaq	0(,%rsi,4), %rcx
	movl	%eax, 36(%rsp)
.LVL3:
	subl	%r14d, %ebx
	subl	$1, %ebx
	movq	%rcx, 40(%rsp)
	leaq	1(%rsi,%rbx), %r12
	salq	$2, %r12
.LVL4:
	.p2align 4,,10
	.p2align 3
.L2:
	.loc 1 371 0 discriminator 1
	cmpl	36(%rsp), %r14d
	jge	.L15
	.loc 1 371 0 is_stmt 0
	movq	40(%rsp), %r15
	movss	.LC6(%rip), %xmm2
	jmp	.L16
.LVL5:
	.p2align 4,,10
	.p2align 3
.L11:
.LBB54:
.LBB55:
	.loc 1 293 0 is_stmt 1
	movaps	%xmm2, %xmm10
	.loc 1 294 0
	movaps	%xmm2, %xmm0
	.loc 1 293 0
	subss	24(%rsp), %xmm10
	.loc 1 294 0
	subss	%xmm4, %xmm0
	.loc 1 295 0
	mulss	%xmm9, %xmm0
	mulss	20(%rsp), %xmm10
	subss	%xmm10, %xmm0
.LVL6:
.L12:
.LBE55:
.LBE54:
	.loc 1 379 0
	movq	prices(%rip), %rax
	movss	%xmm0, (%rax,%r15)
	addq	$4, %r15
	.loc 1 371 0
	cmpq	%r12, %r15
	je	.L15
.LVL7:
.L16:
	.loc 1 378 0 discriminator 2
	movq	otime(%rip), %rbp
	movq	rate(%rip), %r9
	movq	strike(%rip), %r10
	movq	sptprice(%rip), %r11
	movq	otype(%rip), %rdi
	movq	volatility(%rip), %r8
	movss	0(%rbp,%r15), %xmm7
.LBB73:
.LBB70:
	.loc 1 265 0 discriminator 2
	sqrtss	%xmm7, %xmm4
	ucomiss	%xmm4, %xmm4
.LBE70:
.LBE73:
	.loc 1 378 0 discriminator 2
	movss	(%r9,%r15), %xmm6
	movl	(%rdi,%r15), %ebx
	movss	(%r10,%r15), %xmm0
	movss	(%r11,%r15), %xmm1
	movss	%xmm7, 8(%rsp)
	movss	(%r8,%r15), %xmm5
	movss	%xmm6, 12(%rsp)
	movss	%xmm0, 16(%rsp)
	movss	%xmm1, 20(%rsp)
.LVL8:
.LBB74:
.LBB71:
	.loc 1 265 0 discriminator 2
	jp	.L31
.LVL9:
.L3:
	.loc 1 267 0 discriminator 2
	movss	20(%rsp), %xmm0
	divss	16(%rsp), %xmm0
	movss	%xmm2, 32(%rsp)
	movss	%xmm4, 28(%rsp)
	movss	%xmm5, 24(%rsp)
.LVL10:
	call	logf
.LVL11:
	.loc 1 272 0 discriminator 2
	movss	24(%rsp), %xmm9
	movaps	%xmm9, %xmm3
	.loc 1 267 0 discriminator 2
	movaps	%xmm0, %xmm8
.LVL12:
	.loc 1 279 0 discriminator 2
	movss	28(%rsp), %xmm10
	.loc 1 272 0 discriminator 2
	mulss	%xmm9, %xmm3
.LVL13:
.LBB56:
.LBB57:
	.loc 1 184 0 discriminator 2
	movss	32(%rsp), %xmm14
.LBE57:
.LBE56:
	.loc 1 279 0 discriminator 2
	mulss	%xmm9, %xmm10
.LBB62:
.LBB58:
	.loc 1 184 0 discriminator 2
	xorps	%xmm13, %xmm13
.LBE58:
.LBE62:
	.loc 1 273 0 discriminator 2
	mulss	.LC0(%rip), %xmm3
.LVL14:
	.loc 1 275 0 discriminator 2
	addss	12(%rsp), %xmm3
.LVL15:
	.loc 1 276 0 discriminator 2
	mulss	8(%rsp), %xmm3
.LVL16:
	.loc 1 277 0 discriminator 2
	addss	%xmm3, %xmm8
.LVL17:
	.loc 1 280 0 discriminator 2
	divss	%xmm10, %xmm8
.LVL18:
	.loc 1 281 0 discriminator 2
	movaps	%xmm8, %xmm11
.LBB63:
.LBB59:
	.loc 1 184 0 discriminator 2
	ucomiss	%xmm8, %xmm13
.LBE59:
.LBE63:
	.loc 1 281 0 discriminator 2
	subss	%xmm10, %xmm11
	movaps	%xmm11, %xmm12
.LVL19:
.LBB64:
.LBB60:
	.loc 1 184 0 discriminator 2
	ja	.L32
	.loc 1 188 0
	xorl	%ebp, %ebp
.LVL20:
.L5:
	.loc 1 193 0
	movss	.LC3(%rip), %xmm15
	mulss	%xmm8, %xmm15
	movss	%xmm14, 32(%rsp)
	movss	%xmm12, 28(%rsp)
.LVL21:
	movss	%xmm8, 24(%rsp)
	mulss	%xmm8, %xmm15
	unpcklps	%xmm15, %xmm15
	cvtps2pd	%xmm15, %xmm0
.LVL22:
	call	exp
.LVL23:
	.loc 1 197 0
	movss	24(%rsp), %xmm7
	.loc 1 220 0
	testl	%ebp, %ebp
	.loc 1 197 0
	unpcklps	%xmm7, %xmm7
	.loc 1 198 0
	movss	32(%rsp), %xmm8
	.loc 1 193 0
	unpcklpd	%xmm0, %xmm0
.LVL24:
	.loc 1 199 0
	movaps	%xmm8, %xmm4
	.loc 1 197 0
	cvtps2pd	%xmm7, %xmm6
	.loc 1 193 0
	cvtpd2ps	%xmm0, %xmm2
	.loc 1 197 0
	mulsd	.LC5(%rip), %xmm6
	unpcklpd	%xmm6, %xmm6
	.loc 1 195 0
	unpcklps	%xmm2, %xmm2
	.loc 1 197 0
	cvtpd2ps	%xmm6, %xmm1
	.loc 1 195 0
	cvtps2pd	%xmm2, %xmm0
	mulsd	.LC4(%rip), %xmm0
.LVL25:
	.loc 1 198 0
	addss	%xmm8, %xmm1
.LVL26:
	.loc 1 195 0
	unpcklpd	%xmm0, %xmm0
.LVL27:
	.loc 1 199 0
	divss	%xmm1, %xmm4
.LVL28:
	.loc 1 195 0
	cvtpd2ps	%xmm0, %xmm0
	.loc 1 200 0
	movaps	%xmm4, %xmm9
	.loc 1 201 0
	movaps	%xmm4, %xmm3
	.loc 1 202 0
	movaps	%xmm4, %xmm10
	.loc 1 200 0
	mulss	%xmm4, %xmm9
.LVL29:
	.loc 1 205 0
	unpcklps	%xmm4, %xmm4
.LVL30:
	.loc 1 201 0
	mulss	%xmm9, %xmm3
.LVL31:
	.loc 1 205 0
	cvtps2pd	%xmm4, %xmm5
	.loc 1 206 0
	unpcklps	%xmm9, %xmm9
.LVL32:
	.loc 1 205 0
	mulsd	.LC7(%rip), %xmm5
	.loc 1 202 0
	mulss	%xmm3, %xmm10
.LVL33:
	.loc 1 206 0
	cvtps2pd	%xmm9, %xmm12
	.loc 1 207 0
	unpcklps	%xmm3, %xmm3
.LVL34:
	.loc 1 216 0
	movaps	%xmm8, %xmm9
	.loc 1 206 0
	mulsd	.LC8(%rip), %xmm12
	.loc 1 209 0
	unpcklps	%xmm10, %xmm10
.LVL35:
	.loc 1 207 0
	cvtps2pd	%xmm3, %xmm14
	.loc 1 205 0
	unpcklpd	%xmm5, %xmm5
	.loc 1 203 0
	mulss	%xmm10, %xmm4
	.loc 1 209 0
	cvtps2pd	%xmm10, %xmm2
	.loc 1 207 0
	mulsd	.LC9(%rip), %xmm14
	.loc 1 206 0
	unpcklpd	%xmm12, %xmm12
	.loc 1 209 0
	mulsd	.LC10(%rip), %xmm2
	.loc 1 211 0
	unpcklps	%xmm4, %xmm4
	.loc 1 206 0
	cvtpd2ps	%xmm12, %xmm13
	.loc 1 211 0
	cvtps2pd	%xmm4, %xmm6
	.loc 1 207 0
	unpcklpd	%xmm14, %xmm14
	.loc 1 209 0
	unpcklpd	%xmm2, %xmm2
	.loc 1 220 0
	movss	28(%rsp), %xmm4
	.loc 1 211 0
	mulsd	.LC11(%rip), %xmm6
	.loc 1 207 0
	cvtpd2ps	%xmm14, %xmm15
	.loc 1 209 0
	cvtpd2ps	%xmm2, %xmm7
	.loc 1 205 0
	cvtpd2ps	%xmm5, %xmm11
.LVL36:
	.loc 1 211 0
	unpcklpd	%xmm6, %xmm6
	.loc 1 208 0
	addss	%xmm15, %xmm13
.LVL37:
	.loc 1 211 0
	cvtpd2ps	%xmm6, %xmm1
.LVL38:
	.loc 1 210 0
	addss	%xmm7, %xmm13
.LVL39:
	.loc 1 212 0
	addss	%xmm1, %xmm13
	.loc 1 214 0
	addss	%xmm13, %xmm11
	.loc 1 215 0
	mulss	%xmm11, %xmm0
	.loc 1 216 0
	subss	%xmm0, %xmm9
	movss	%xmm9, 24(%rsp)
.LVL40:
	.loc 1 220 0
	je	.L7
	.loc 1 221 0
	movaps	%xmm8, %xmm3
	subss	%xmm9, %xmm3
	movss	%xmm3, 24(%rsp)
.LVL41:
.L7:
.LBE60:
.LBE64:
.LBB65:
.LBB66:
	.loc 1 184 0
	xorps	%xmm10, %xmm10
	.loc 1 188 0
	xorl	%ebp, %ebp
.LVL42:
	.loc 1 184 0
	ucomiss	%xmm4, %xmm10
	ja	.L33
.LVL43:
.L8:
	movss	%xmm8, 32(%rsp)
.LVL44:
	.loc 1 193 0
	movss	.LC3(%rip), %xmm8
	mulss	%xmm4, %xmm8
	movss	%xmm4, 28(%rsp)
.LVL45:
	mulss	%xmm4, %xmm8
	unpcklps	%xmm8, %xmm8
	cvtps2pd	%xmm8, %xmm0
	call	exp
.LVL46:
	.loc 1 197 0
	movss	28(%rsp), %xmm12
	.loc 1 220 0
	testl	%ebp, %ebp
	.loc 1 197 0
	unpcklps	%xmm12, %xmm12
	.loc 1 198 0
	movss	32(%rsp), %xmm15
	.loc 1 193 0
	unpcklpd	%xmm0, %xmm0
.LVL47:
	.loc 1 199 0
	movaps	%xmm15, %xmm2
	.loc 1 197 0
	cvtps2pd	%xmm12, %xmm13
	.loc 1 193 0
	cvtpd2ps	%xmm0, %xmm5
	.loc 1 197 0
	mulsd	.LC5(%rip), %xmm13
	unpcklpd	%xmm13, %xmm13
	.loc 1 195 0
	unpcklps	%xmm5, %xmm5
	.loc 1 197 0
	cvtpd2ps	%xmm13, %xmm14
	.loc 1 195 0
	cvtps2pd	%xmm5, %xmm11
	mulsd	.LC4(%rip), %xmm11
.LVL48:
	.loc 1 198 0
	addss	%xmm15, %xmm14
.LVL49:
	.loc 1 195 0
	unpcklpd	%xmm11, %xmm11
.LVL50:
	.loc 1 199 0
	divss	%xmm14, %xmm2
.LVL51:
	.loc 1 195 0
	cvtpd2ps	%xmm11, %xmm11
	.loc 1 200 0
	movaps	%xmm2, %xmm7
	.loc 1 201 0
	movaps	%xmm2, %xmm0
	.loc 1 202 0
	movaps	%xmm2, %xmm6
	.loc 1 200 0
	mulss	%xmm2, %xmm7
.LVL52:
	.loc 1 205 0
	unpcklps	%xmm2, %xmm2
.LVL53:
	.loc 1 201 0
	mulss	%xmm7, %xmm0
.LVL54:
	.loc 1 205 0
	cvtps2pd	%xmm2, %xmm1
	.loc 1 206 0
	unpcklps	%xmm7, %xmm7
.LVL55:
	.loc 1 205 0
	mulsd	.LC7(%rip), %xmm1
	.loc 1 202 0
	mulss	%xmm0, %xmm6
.LVL56:
	.loc 1 206 0
	cvtps2pd	%xmm7, %xmm4
	.loc 1 207 0
	unpcklps	%xmm0, %xmm0
.LVL57:
	.loc 1 216 0
	movaps	%xmm15, %xmm7
	.loc 1 206 0
	mulsd	.LC8(%rip), %xmm4
	.loc 1 209 0
	unpcklps	%xmm6, %xmm6
.LVL58:
	.loc 1 207 0
	cvtps2pd	%xmm0, %xmm3
	.loc 1 205 0
	unpcklpd	%xmm1, %xmm1
	.loc 1 203 0
	mulss	%xmm6, %xmm2
	.loc 1 209 0
	cvtps2pd	%xmm6, %xmm5
	.loc 1 207 0
	mulsd	.LC9(%rip), %xmm3
	.loc 1 206 0
	unpcklpd	%xmm4, %xmm4
	.loc 1 209 0
	mulsd	.LC10(%rip), %xmm5
	.loc 1 211 0
	unpcklps	%xmm2, %xmm2
	.loc 1 206 0
	cvtpd2ps	%xmm4, %xmm10
	.loc 1 211 0
	cvtps2pd	%xmm2, %xmm13
	.loc 1 207 0
	unpcklpd	%xmm3, %xmm3
	.loc 1 209 0
	unpcklpd	%xmm5, %xmm5
	.loc 1 211 0
	mulsd	.LC11(%rip), %xmm13
	.loc 1 207 0
	cvtpd2ps	%xmm3, %xmm8
	.loc 1 209 0
	cvtpd2ps	%xmm5, %xmm12
	.loc 1 205 0
	cvtpd2ps	%xmm1, %xmm9
.LVL59:
	.loc 1 211 0
	unpcklpd	%xmm13, %xmm13
	.loc 1 208 0
	addss	%xmm8, %xmm10
.LVL60:
	.loc 1 211 0
	cvtpd2ps	%xmm13, %xmm14
.LVL61:
	.loc 1 210 0
	addss	%xmm12, %xmm10
.LVL62:
	.loc 1 212 0
	addss	%xmm14, %xmm10
	.loc 1 214 0
	addss	%xmm10, %xmm9
	.loc 1 215 0
	mulss	%xmm9, %xmm11
	.loc 1 216 0
	subss	%xmm11, %xmm7
.LVL63:
	.loc 1 220 0
	je	.L10
	.loc 1 221 0
	movaps	%xmm15, %xmm2
	subss	%xmm7, %xmm2
	movaps	%xmm2, %xmm7
.LVL64:
.L10:
	movss	%xmm15, 32(%rsp)
.LBE66:
.LBE65:
	.loc 1 289 0
	movss	12(%rsp), %xmm15
.LVL65:
	movss	%xmm7, 28(%rsp)
.LVL66:
	xorps	.LC2(%rip), %xmm15
	mulss	8(%rsp), %xmm15
	unpcklps	%xmm15, %xmm15
	cvtps2pd	%xmm15, %xmm0
	call	exp
.LVL67:
	movss	16(%rsp), %xmm6
	.loc 1 290 0
	testl	%ebx, %ebx
	movss	28(%rsp), %xmm4
	.loc 1 289 0
	cvtps2pd	%xmm6, %xmm1
	.loc 1 290 0
	movss	32(%rsp), %xmm2
	.loc 1 289 0
	mulsd	%xmm0, %xmm1
	unpcklpd	%xmm1, %xmm1
	cvtpd2ps	%xmm1, %xmm9
.LVL68:
	.loc 1 290 0
	jne	.L11
	.loc 1 291 0
	movss	20(%rsp), %xmm0
	mulss	%xmm4, %xmm9
.LVL69:
	mulss	24(%rsp), %xmm0
	subss	%xmm9, %xmm0
.LVL70:
	jmp	.L12
.LVL71:
	.p2align 4,,10
	.p2align 3
.L33:
.LBB68:
.LBB67:
	.loc 1 185 0
	xorps	.LC2(%rip), %xmm4
.LVL72:
	.loc 1 186 0
	movl	$1, %ebp
	jmp	.L8
.LVL73:
	.p2align 4,,10
	.p2align 3
.L32:
.LBE67:
.LBE68:
.LBB69:
.LBB61:
	.loc 1 185 0
	xorps	.LC2(%rip), %xmm8
.LVL74:
	.loc 1 186 0
	movl	$1, %ebp
	jmp	.L5
.LVL75:
	.p2align 4,,10
	.p2align 3
.L15:
.LBE61:
.LBE69:
.LBE71:
.LBE74:
	.loc 1 366 0
	subl	$1, %r13d
.LBE76:
	.loc 1 393 0
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
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
.LVL76:
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL77:
.L31:
	.cfi_restore_state
.LBB77:
.LBB75:
.LBB72:
	.loc 1 265 0 discriminator 2
	movaps	%xmm7, %xmm0
.LVL78:
	movss	%xmm2, 28(%rsp)
	movss	%xmm5, 24(%rsp)
	call	sqrtf
.LVL79:
	movss	28(%rsp), %xmm2
	movaps	%xmm0, %xmm4
	movss	24(%rsp), %xmm5
	jmp	.L3
.LBE72:
.LBE75:
.LBE77:
	.cfi_endproc
.LFE77:
	.size	_Z9bs_threadPv, .-_Z9bs_threadPv
	.p2align 4,,15
	.globl	_Z4CNDFf
	.type	_Z4CNDFf, @function
_Z4CNDFf:
.LFB75:
	.loc 1 170 0
	.cfi_startproc
.LVL80:
	movaps	%xmm0, %xmm1
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
.LBB79:
	.loc 1 184 0
	xorps	%xmm0, %xmm0
.LVL81:
	.loc 1 188 0
	xorl	%ebx, %ebx
.LBE79:
	.loc 1 170 0
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
.LBB80:
	.loc 1 184 0
	ucomiss	%xmm1, %xmm0
	ja	.L45
.LVL82:
.L35:
	.loc 1 193 0
	movss	.LC3(%rip), %xmm3
	mulss	%xmm1, %xmm3
	movss	%xmm1, 12(%rsp)
	mulss	%xmm1, %xmm3
	unpcklps	%xmm3, %xmm3
	cvtps2pd	%xmm3, %xmm0
	call	exp
.LVL83:
	.loc 1 197 0
	movss	12(%rsp), %xmm5
	.loc 1 220 0
	testl	%ebx, %ebx
	.loc 1 197 0
	unpcklps	%xmm5, %xmm5
	.loc 1 198 0
	movss	.LC6(%rip), %xmm9
	.loc 1 193 0
	unpcklpd	%xmm0, %xmm0
.LVL84:
	.loc 1 199 0
	movaps	%xmm9, %xmm10
	.loc 1 197 0
	cvtps2pd	%xmm5, %xmm6
	.loc 1 193 0
	cvtpd2ps	%xmm0, %xmm4
	.loc 1 197 0
	mulsd	.LC5(%rip), %xmm6
	unpcklpd	%xmm6, %xmm6
	.loc 1 195 0
	unpcklps	%xmm4, %xmm4
	.loc 1 197 0
	cvtpd2ps	%xmm6, %xmm8
	.loc 1 195 0
	cvtps2pd	%xmm4, %xmm7
	mulsd	.LC4(%rip), %xmm7
.LVL85:
	.loc 1 198 0
	addss	%xmm9, %xmm8
.LVL86:
	.loc 1 195 0
	unpcklpd	%xmm7, %xmm7
.LVL87:
	.loc 1 199 0
	divss	%xmm8, %xmm10
.LVL88:
	.loc 1 195 0
	cvtpd2ps	%xmm7, %xmm7
	.loc 1 200 0
	movaps	%xmm10, %xmm11
	mulss	%xmm10, %xmm11
.LVL89:
	.loc 1 201 0
	movaps	%xmm11, %xmm12
	.loc 1 206 0
	unpcklps	%xmm11, %xmm11
.LVL90:
	.loc 1 201 0
	mulss	%xmm10, %xmm12
.LVL91:
	.loc 1 206 0
	cvtps2pd	%xmm11, %xmm1
	.loc 1 202 0
	movaps	%xmm12, %xmm13
	.loc 1 207 0
	unpcklps	%xmm12, %xmm12
.LVL92:
	.loc 1 202 0
	mulss	%xmm10, %xmm13
.LVL93:
	.loc 1 205 0
	unpcklps	%xmm10, %xmm10
.LVL94:
	.loc 1 207 0
	cvtps2pd	%xmm12, %xmm0
	.loc 1 206 0
	mulsd	.LC8(%rip), %xmm1
	.loc 1 209 0
	unpcklps	%xmm13, %xmm13
.LVL95:
	.loc 1 205 0
	cvtps2pd	%xmm10, %xmm14
	.loc 1 207 0
	mulsd	.LC9(%rip), %xmm0
	.loc 1 203 0
	mulss	%xmm13, %xmm10
	.loc 1 209 0
	cvtps2pd	%xmm13, %xmm4
	.loc 1 206 0
	unpcklpd	%xmm1, %xmm1
	.loc 1 205 0
	mulsd	.LC7(%rip), %xmm14
	.loc 1 209 0
	mulsd	.LC10(%rip), %xmm4
	.loc 1 211 0
	unpcklps	%xmm10, %xmm10
	.loc 1 207 0
	unpcklpd	%xmm0, %xmm0
	.loc 1 206 0
	cvtpd2ps	%xmm1, %xmm3
	.loc 1 211 0
	cvtps2pd	%xmm10, %xmm6
	.loc 1 209 0
	unpcklpd	%xmm4, %xmm4
	.loc 1 207 0
	cvtpd2ps	%xmm0, %xmm2
	.loc 1 211 0
	mulsd	.LC11(%rip), %xmm6
	.loc 1 216 0
	movaps	%xmm9, %xmm0
	.loc 1 209 0
	cvtpd2ps	%xmm4, %xmm5
	.loc 1 205 0
	unpcklpd	%xmm14, %xmm14
	.loc 1 211 0
	unpcklpd	%xmm6, %xmm6
	.loc 1 208 0
	addss	%xmm2, %xmm3
	.loc 1 205 0
	cvtpd2ps	%xmm14, %xmm15
.LVL96:
	.loc 1 211 0
	cvtpd2ps	%xmm6, %xmm8
.LVL97:
	.loc 1 210 0
	addss	%xmm5, %xmm3
.LVL98:
	.loc 1 212 0
	addss	%xmm8, %xmm3
	.loc 1 214 0
	addss	%xmm15, %xmm3
	.loc 1 215 0
	mulss	%xmm7, %xmm3
	.loc 1 216 0
	subss	%xmm3, %xmm0
.LVL99:
	.loc 1 220 0
	je	.L37
	.loc 1 221 0
	subss	%xmm0, %xmm9
	movaps	%xmm9, %xmm0
.LVL100:
.L37:
.LBE80:
	.loc 1 225 0
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL101:
	ret
.LVL102:
	.p2align 4,,10
	.p2align 3
.L45:
	.cfi_restore_state
.LBB81:
	.loc 1 185 0
	movss	.LC2(%rip), %xmm2
	.loc 1 186 0
	movl	$1, %ebx
	.loc 1 185 0
	xorps	%xmm2, %xmm1
.LVL103:
	jmp	.L35
.LBE81:
	.cfi_endproc
.LFE75:
	.size	_Z4CNDFf, .-_Z4CNDFf
	.p2align 4,,15
	.globl	_Z19BlkSchlsEqEuroNoDivfffffif
	.type	_Z19BlkSchlsEqEuroNoDivfffffif, @function
_Z19BlkSchlsEqEuroNoDivfffffif:
.LFB76:
	.loc 1 234 0
	.cfi_startproc
.LVL104:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	%edi, %ebx
	subq	$56, %rsp
	.cfi_def_cfa_offset 80
.LVL105:
	.loc 1 234 0
	movss	%xmm4, 4(%rsp)
.LBB89:
	.loc 1 265 0
	sqrtss	%xmm4, %xmm4
.LVL106:
	ucomiss	%xmm4, %xmm4
.LBE89:
	.loc 1 234 0
	movss	%xmm0, 8(%rsp)
.LVL107:
	movss	%xmm1, 12(%rsp)
.LVL108:
	movss	%xmm2, 32(%rsp)
.LVL109:
.LBB102:
	.loc 1 265 0
	jp	.L70
.LVL110:
.L47:
	.loc 1 267 0
	divss	12(%rsp), %xmm0
	movss	%xmm3, 36(%rsp)
.LVL111:
	movss	%xmm4, 16(%rsp)
.LVL112:
	call	logf
.LVL113:
	.loc 1 272 0
	movss	36(%rsp), %xmm3
	movaps	%xmm3, %xmm2
	.loc 1 267 0
	movaps	%xmm0, %xmm1
.LVL114:
	.loc 1 279 0
	movss	16(%rsp), %xmm0
.LVL115:
	.loc 1 272 0
	mulss	%xmm3, %xmm2
.LVL116:
	.loc 1 279 0
	mulss	%xmm3, %xmm0
.LBB90:
.LBB91:
	.loc 1 184 0
	xorps	%xmm6, %xmm6
.LBE91:
.LBE90:
	.loc 1 273 0
	mulss	.LC0(%rip), %xmm2
.LVL117:
	.loc 1 275 0
	addss	32(%rsp), %xmm2
.LVL118:
	.loc 1 276 0
	mulss	4(%rsp), %xmm2
.LVL119:
	.loc 1 277 0
	addss	%xmm2, %xmm1
.LVL120:
	.loc 1 280 0
	divss	%xmm0, %xmm1
.LVL121:
	.loc 1 281 0
	movaps	%xmm1, %xmm7
.LBB95:
.LBB92:
	.loc 1 184 0
	ucomiss	%xmm1, %xmm6
.LBE92:
.LBE95:
	.loc 1 281 0
	subss	%xmm0, %xmm7
	movaps	%xmm7, %xmm5
.LVL122:
.LBB96:
.LBB93:
	.loc 1 184 0
	ja	.L71
	movss	.LC2(%rip), %xmm8
	.loc 1 188 0
	xorl	%ebp, %ebp
	movaps	%xmm8, 16(%rsp)
.LVL123:
.L49:
	movss	%xmm5, 40(%rsp)
.LVL124:
	.loc 1 193 0
	movss	%xmm1, 36(%rsp)
	movss	.LC3(%rip), %xmm10
	mulss	%xmm1, %xmm10
	mulss	%xmm1, %xmm10
	unpcklps	%xmm10, %xmm10
	cvtps2pd	%xmm10, %xmm0
.LVL125:
	call	exp
.LVL126:
	.loc 1 197 0
	movss	36(%rsp), %xmm13
	.loc 1 220 0
	testl	%ebp, %ebp
	.loc 1 197 0
	unpcklps	%xmm13, %xmm13
	.loc 1 198 0
	movss	.LC6(%rip), %xmm2
	.loc 1 193 0
	unpcklpd	%xmm0, %xmm0
.LVL127:
	.loc 1 199 0
	movaps	%xmm2, %xmm4
	.loc 1 197 0
	cvtps2pd	%xmm13, %xmm14
	.loc 1 193 0
	cvtpd2ps	%xmm0, %xmm11
	.loc 1 197 0
	mulsd	.LC5(%rip), %xmm14
	unpcklpd	%xmm14, %xmm14
	.loc 1 195 0
	unpcklps	%xmm11, %xmm11
	.loc 1 197 0
	cvtpd2ps	%xmm14, %xmm15
	.loc 1 195 0
	cvtps2pd	%xmm11, %xmm12
	mulsd	.LC4(%rip), %xmm12
.LVL128:
	.loc 1 198 0
	addss	%xmm2, %xmm15
.LVL129:
	.loc 1 195 0
	unpcklpd	%xmm12, %xmm12
.LVL130:
	.loc 1 199 0
	divss	%xmm15, %xmm4
.LVL131:
	.loc 1 195 0
	cvtpd2ps	%xmm12, %xmm12
	.loc 1 200 0
	movaps	%xmm4, %xmm1
	.loc 1 201 0
	movaps	%xmm4, %xmm3
	.loc 1 202 0
	movaps	%xmm4, %xmm7
	.loc 1 200 0
	mulss	%xmm4, %xmm1
.LVL132:
	.loc 1 205 0
	unpcklps	%xmm4, %xmm4
.LVL133:
	.loc 1 201 0
	mulss	%xmm1, %xmm3
.LVL134:
	.loc 1 205 0
	cvtps2pd	%xmm4, %xmm0
	.loc 1 206 0
	unpcklps	%xmm1, %xmm1
.LVL135:
	.loc 1 205 0
	mulsd	.LC7(%rip), %xmm0
	.loc 1 202 0
	mulss	%xmm3, %xmm7
.LVL136:
	.loc 1 206 0
	cvtps2pd	%xmm1, %xmm6
	.loc 1 207 0
	unpcklps	%xmm3, %xmm3
.LVL137:
	.loc 1 216 0
	movaps	%xmm2, %xmm1
	.loc 1 206 0
	mulsd	.LC8(%rip), %xmm6
	.loc 1 209 0
	unpcklps	%xmm7, %xmm7
.LVL138:
	.loc 1 207 0
	cvtps2pd	%xmm3, %xmm9
	.loc 1 205 0
	unpcklpd	%xmm0, %xmm0
	.loc 1 203 0
	mulss	%xmm7, %xmm4
	.loc 1 209 0
	cvtps2pd	%xmm7, %xmm11
	.loc 1 207 0
	mulsd	.LC9(%rip), %xmm9
	.loc 1 206 0
	unpcklpd	%xmm6, %xmm6
	.loc 1 209 0
	mulsd	.LC10(%rip), %xmm11
	.loc 1 211 0
	unpcklps	%xmm4, %xmm4
	.loc 1 206 0
	cvtpd2ps	%xmm6, %xmm8
	.loc 1 211 0
	cvtps2pd	%xmm4, %xmm14
	.loc 1 207 0
	unpcklpd	%xmm9, %xmm9
	.loc 1 209 0
	unpcklpd	%xmm11, %xmm11
	.loc 1 220 0
	movss	40(%rsp), %xmm4
	.loc 1 211 0
	mulsd	.LC11(%rip), %xmm14
	.loc 1 207 0
	cvtpd2ps	%xmm9, %xmm10
	.loc 1 209 0
	cvtpd2ps	%xmm11, %xmm13
	.loc 1 205 0
	cvtpd2ps	%xmm0, %xmm5
.LVL139:
	.loc 1 211 0
	unpcklpd	%xmm14, %xmm14
	.loc 1 208 0
	addss	%xmm10, %xmm8
.LVL140:
	.loc 1 211 0
	cvtpd2ps	%xmm14, %xmm15
.LVL141:
	.loc 1 210 0
	addss	%xmm13, %xmm8
.LVL142:
	.loc 1 212 0
	addss	%xmm15, %xmm8
	.loc 1 214 0
	addss	%xmm8, %xmm5
	.loc 1 215 0
	mulss	%xmm5, %xmm12
	.loc 1 216 0
	subss	%xmm12, %xmm1
	movss	%xmm1, 36(%rsp)
.LVL143:
	.loc 1 220 0
	je	.L51
	.loc 1 221 0
	movaps	%xmm2, %xmm3
	subss	%xmm1, %xmm3
	movss	%xmm3, 36(%rsp)
.LVL144:
.L51:
.LBE93:
.LBE96:
.LBB97:
.LBB98:
	.loc 1 184 0
	xorps	%xmm7, %xmm7
	.loc 1 188 0
	xorl	%ebp, %ebp
.LVL145:
	.loc 1 184 0
	ucomiss	%xmm4, %xmm7
	ja	.L72
.LVL146:
.L52:
	movss	%xmm2, 44(%rsp)
.LVL147:
	.loc 1 193 0
	movss	.LC3(%rip), %xmm2
	mulss	%xmm4, %xmm2
	movss	%xmm4, 40(%rsp)
.LVL148:
	mulss	%xmm4, %xmm2
	unpcklps	%xmm2, %xmm2
	cvtps2pd	%xmm2, %xmm0
	call	exp
.LVL149:
	.loc 1 197 0
	movss	40(%rsp), %xmm5
	.loc 1 220 0
	testl	%ebp, %ebp
	.loc 1 197 0
	unpcklps	%xmm5, %xmm5
	.loc 1 198 0
	movss	44(%rsp), %xmm10
	.loc 1 193 0
	unpcklpd	%xmm0, %xmm0
.LVL150:
	.loc 1 199 0
	movaps	%xmm10, %xmm11
	.loc 1 197 0
	cvtps2pd	%xmm5, %xmm6
	.loc 1 193 0
	cvtpd2ps	%xmm0, %xmm0
	.loc 1 197 0
	mulsd	.LC5(%rip), %xmm6
	unpcklpd	%xmm6, %xmm6
	.loc 1 195 0
	unpcklps	%xmm0, %xmm0
	.loc 1 197 0
	cvtpd2ps	%xmm6, %xmm9
	.loc 1 195 0
	cvtps2pd	%xmm0, %xmm8
	mulsd	.LC4(%rip), %xmm8
.LVL151:
	.loc 1 198 0
	addss	%xmm10, %xmm9
.LVL152:
	.loc 1 195 0
	unpcklpd	%xmm8, %xmm8
.LVL153:
	.loc 1 199 0
	divss	%xmm9, %xmm11
.LVL154:
	.loc 1 195 0
	cvtpd2ps	%xmm8, %xmm8
	.loc 1 200 0
	movaps	%xmm11, %xmm13
	.loc 1 201 0
	movaps	%xmm11, %xmm12
	.loc 1 202 0
	movaps	%xmm11, %xmm14
	.loc 1 200 0
	mulss	%xmm11, %xmm13
.LVL155:
	.loc 1 205 0
	unpcklps	%xmm11, %xmm11
.LVL156:
	.loc 1 201 0
	mulss	%xmm13, %xmm12
.LVL157:
	.loc 1 205 0
	cvtps2pd	%xmm11, %xmm15
	.loc 1 206 0
	unpcklps	%xmm13, %xmm13
.LVL158:
	.loc 1 205 0
	mulsd	.LC7(%rip), %xmm15
	.loc 1 202 0
	mulss	%xmm12, %xmm14
.LVL159:
	.loc 1 206 0
	cvtps2pd	%xmm13, %xmm1
	.loc 1 207 0
	unpcklps	%xmm12, %xmm12
.LVL160:
	.loc 1 216 0
	movaps	%xmm10, %xmm13
	.loc 1 206 0
	mulsd	.LC8(%rip), %xmm1
	.loc 1 209 0
	unpcklps	%xmm14, %xmm14
.LVL161:
	.loc 1 207 0
	cvtps2pd	%xmm12, %xmm3
	.loc 1 205 0
	unpcklpd	%xmm15, %xmm15
	.loc 1 203 0
	mulss	%xmm14, %xmm11
	.loc 1 209 0
	cvtps2pd	%xmm14, %xmm0
	.loc 1 207 0
	mulsd	.LC9(%rip), %xmm3
	.loc 1 206 0
	unpcklpd	%xmm1, %xmm1
	.loc 1 209 0
	mulsd	.LC10(%rip), %xmm0
	.loc 1 211 0
	unpcklps	%xmm11, %xmm11
	.loc 1 206 0
	cvtpd2ps	%xmm1, %xmm7
	.loc 1 211 0
	cvtps2pd	%xmm11, %xmm6
	.loc 1 207 0
	unpcklpd	%xmm3, %xmm3
	.loc 1 209 0
	unpcklpd	%xmm0, %xmm0
	.loc 1 211 0
	mulsd	.LC11(%rip), %xmm6
	.loc 1 207 0
	cvtpd2ps	%xmm3, %xmm2
	.loc 1 209 0
	cvtpd2ps	%xmm0, %xmm5
	.loc 1 205 0
	cvtpd2ps	%xmm15, %xmm4
.LVL162:
	.loc 1 211 0
	unpcklpd	%xmm6, %xmm6
	.loc 1 208 0
	addss	%xmm2, %xmm7
.LVL163:
	.loc 1 211 0
	cvtpd2ps	%xmm6, %xmm9
.LVL164:
	.loc 1 210 0
	addss	%xmm5, %xmm7
.LVL165:
	.loc 1 212 0
	addss	%xmm9, %xmm7
	.loc 1 214 0
	addss	%xmm7, %xmm4
	.loc 1 215 0
	mulss	%xmm4, %xmm8
	.loc 1 216 0
	subss	%xmm8, %xmm13
.LVL166:
	.loc 1 220 0
	je	.L54
	.loc 1 221 0
	movaps	%xmm10, %xmm11
	subss	%xmm13, %xmm11
	movaps	%xmm11, %xmm13
.LVL167:
.L54:
	movss	%xmm10, 44(%rsp)
.LBE98:
.LBE97:
	.loc 1 289 0
	movss	32(%rsp), %xmm10
.LVL168:
	movss	%xmm13, 40(%rsp)
.LVL169:
	xorps	16(%rsp), %xmm10
	mulss	4(%rsp), %xmm10
	unpcklps	%xmm10, %xmm10
	cvtps2pd	%xmm10, %xmm0
	call	exp
.LVL170:
	movss	12(%rsp), %xmm12
	.loc 1 290 0
	testl	%ebx, %ebx
	movss	40(%rsp), %xmm4
	.loc 1 289 0
	cvtps2pd	%xmm12, %xmm14
	.loc 1 290 0
	movss	44(%rsp), %xmm1
	.loc 1 289 0
	mulsd	%xmm0, %xmm14
	unpcklpd	%xmm14, %xmm14
	cvtpd2ps	%xmm14, %xmm15
.LVL171:
	.loc 1 290 0
	je	.L73
.LVL172:
	.loc 1 294 0
	movaps	%xmm1, %xmm0
	.loc 1 293 0
	subss	36(%rsp), %xmm1
	.loc 1 294 0
	subss	%xmm4, %xmm0
	.loc 1 295 0
	mulss	%xmm15, %xmm0
	mulss	8(%rsp), %xmm1
.LBE102:
	.loc 1 299 0
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
.LVL173:
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL174:
.LBB103:
	.loc 1 295 0
	subss	%xmm1, %xmm0
.LVL175:
.LBE103:
	.loc 1 299 0
	ret
.LVL176:
	.p2align 4,,10
	.p2align 3
.L73:
	.cfi_restore_state
.LBB104:
	.loc 1 291 0
	movss	8(%rsp), %xmm0
	mulss	%xmm4, %xmm15
.LVL177:
	mulss	36(%rsp), %xmm0
.LBE104:
	.loc 1 299 0
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
.LVL178:
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL179:
.LBB105:
	.loc 1 291 0
	subss	%xmm15, %xmm0
.LVL180:
.LBE105:
	.loc 1 299 0
	ret
.LVL181:
	.p2align 4,,10
	.p2align 3
.L72:
	.cfi_restore_state
.LBB106:
.LBB100:
.LBB99:
	.loc 1 185 0
	xorps	16(%rsp), %xmm4
.LVL182:
	.loc 1 186 0
	movl	$1, %ebp
	jmp	.L52
.LVL183:
	.p2align 4,,10
	.p2align 3
.L71:
.LBE99:
.LBE100:
.LBB101:
.LBB94:
	.loc 1 185 0
	movss	.LC2(%rip), %xmm9
	.loc 1 186 0
	movl	$1, %ebp
	.loc 1 185 0
	movaps	%xmm9, 16(%rsp)
	xorps	%xmm9, %xmm1
.LVL184:
	jmp	.L49
.LVL185:
.L70:
.LBE94:
.LBE101:
	.loc 1 265 0
	movss	4(%rsp), %xmm0
.LVL186:
	movss	%xmm3, 36(%rsp)
	call	sqrtf
.LVL187:
	movss	36(%rsp), %xmm3
	movaps	%xmm0, %xmm4
	movss	8(%rsp), %xmm0
	jmp	.L47
.LBE106:
	.cfi_endproc
.LFE76:
	.size	_Z19BlkSchlsEqEuroNoDivfffffif, .-_Z19BlkSchlsEqEuroNoDivfffffif
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC12:
	.string	"PARSEC Benchmark Suite Version 3.0-beta-20120904"
	.align 8
.LC13:
	.string	"Usage:\n\t%s <nthreads> <inputFile> <outputFile>\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC14:
	.string	"r"
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"ERROR: Unable to open file %s.\n"
	.section	.rodata.str1.1
.LC16:
	.string	"%i"
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"ERROR: Unable to read from file %s.\n"
	.align 8
.LC18:
	.string	"WARNING: Not enough work, reducing number of threads to match number of options."
	.section	.rodata.str1.1
.LC19:
	.string	"%f %f %f %f %f %f %c %f %f"
	.section	.rodata.str1.8
	.align 8
.LC20:
	.string	"ERROR: Unable to close file %s.\n"
	.section	.rodata.str1.1
.LC21:
	.string	"Num of Options: %d\n"
.LC22:
	.string	"Num of Runs: %d\n"
.LC23:
	.string	"Size of data: %d\n"
.LC24:
	.string	"w"
.LC25:
	.string	"%i\n"
	.section	.rodata.str1.8
	.align 8
.LC26:
	.string	"ERROR: Unable to write to file %s.\n"
	.section	.rodata.str1.1
.LC27:
	.string	"%.18f\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB78:
	.loc 1 397 0
	.cfi_startproc
.LVL188:
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
	movl	%edi, %ebp
.LBB107:
.LBB108:
.LBB109:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 104 0
	movl	$.LC12, %edi
.LVL189:
.LBE109:
.LBE108:
.LBE107:
	.loc 1 397 0
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
.LBB161:
.LBB111:
.LBB110:
	.loc 2 104 0
	call	puts
.LVL190:
.LBE110:
.LBE111:
	.loc 1 409 0
	xorl	%edi, %edi
	call	fflush
.LVL191:
	.loc 1 418 0
	cmpl	$4, %ebp
	jne	.L146
.LVL192:
.LBB112:
.LBB113:
	.file 3 "/usr/include/stdlib.h"
	.loc 3 280 0
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	call	strtol
.LVL193:
.LBE113:
.LBE112:
	.loc 1 424 0
	movq	16(%rbx), %r14
.LVL194:
	.loc 1 428 0
	movl	$.LC14, %esi
.LBB115:
.LBB114:
	.loc 3 280 0
	movl	%eax, nThreads(%rip)
.LBE114:
.LBE115:
	.loc 1 425 0
	movq	24(%rbx), %rbx
.LVL195:
	.loc 1 428 0
	movq	%r14, %rdi
	call	fopen
.LVL196:
	.loc 1 429 0
	testq	%rax, %rax
	.loc 1 428 0
	movq	%rax, %r13
.LVL197:
	.loc 1 429 0
	je	.L147
	.loc 1 433 0
	movq	%rax, %rdi
	movl	$numOptions, %edx
	xorl	%eax, %eax
.LVL198:
	movl	$.LC16, %esi
	call	fscanf
.LVL199:
	.loc 1 434 0
	cmpl	$1, %eax
	jne	.L145
	.loc 1 439 0
	movl	numOptions(%rip), %r15d
	cmpl	%r15d, nThreads(%rip)
	jg	.L148
.LVL200:
.L78:
	.loc 1 452 0
	movslq	%r15d, %rbp
.LVL201:
	leaq	0(%rbp,%rbp,8), %rdi
	salq	$2, %rdi
	call	malloc
.LVL202:
	.loc 1 453 0
	leaq	0(,%rbp,4), %rdi
	.loc 1 452 0
	movq	%rax, %r12
	movq	%rax, data(%rip)
	.loc 1 454 0
	xorl	%ebp, %ebp
	.loc 1 453 0
	call	malloc
.LVL203:
	.loc 1 454 0
	movq	%r12, %r9
	xorl	%r12d, %r12d
	testl	%r15d, %r15d
	.loc 1 453 0
	movq	%rax, prices(%rip)
.LVL204:
	.loc 1 454 0
	jg	.L131
	jmp	.L83
.LVL205:
	.p2align 4,,10
	.p2align 3
.L149:
	movq	data(%rip), %r9
.LVL206:
.L131:
	.loc 1 456 0
	leaq	(%r9,%r12), %rdx
	leaq	20(%rdx), %r8
	leaq	16(%rdx), %r9
	leaq	32(%rdx), %rax
	leaq	28(%rdx), %rsi
	leaq	24(%rdx), %rdi
	leaq	4(%rdx), %rcx
	movq	%r8, 8(%rsp)
	movq	%r9, (%rsp)
	leaq	8(%rdx), %r8
	leaq	12(%rdx), %r9
	movq	%rax, 32(%rsp)
	movq	%rsi, 24(%rsp)
	movq	%rdi, 16(%rsp)
	xorl	%eax, %eax
	movl	$.LC19, %esi
	movq	%r13, %rdi
	call	fscanf
.LVL207:
	.loc 1 457 0
	cmpl	$9, %eax
	jne	.L145
	.loc 1 454 0
	addl	$1, %ebp
.LVL208:
	addq	$36, %r12
	cmpl	%ebp, numOptions(%rip)
	jg	.L149
.LVL209:
.L83:
	.loc 1 463 0
	movq	%r13, %rdi
	call	fclose
.LVL210:
	.loc 1 464 0
	testl	%eax, %eax
	jne	.L150
	.loc 1 471 0
	movl	$_M4_normalMutexAttr, %edi
	call	pthread_mutexattr_init
.LVL211:
	movl	$_M4_threadsTableAllocated, %r10d
	xorl	%eax, %eax
	movl	$64, %ecx
	movq	%r10, %rdi
	.loc 1 473 0
	movl	nThreads(%rip), %edx
.LBB116:
.LBB117:
	.loc 2 104 0
	movl	$.LC21, %esi
	rep stosq
	movl	$1, %edi
.LBE117:
.LBE116:
	.loc 1 473 0
	movl	%edx, _M4_numThreads(%rip)
.LVL212:
.LBB119:
.LBB118:
	.loc 2 104 0
	movl	numOptions(%rip), %edx
	call	__printf_chk
.LVL213:
.LBE118:
.LBE119:
.LBB120:
.LBB121:
	movl	$100, %edx
	movl	$.LC22, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
.LVL214:
.LBE121:
.LBE120:
	.loc 1 488 0
	movl	numOptions(%rip), %ebp
	leal	0(%rbp,%rbp,4), %eax
	.loc 1 490 0
	movslq	%ebp, %r12
	.loc 1 488 0
	cltq
	leaq	256(,%rax,4), %rdi
	call	malloc
.LVL215:
	.loc 1 489 0
	leaq	256(%rax), %r13
.LVL216:
	.loc 1 490 0
	leaq	0(,%r12,4), %r11
	.loc 1 489 0
	andq	$-64, %r13
	.loc 1 495 0
	leaq	256(%r11), %rdi
	.loc 1 490 0
	leaq	0(%r13,%r11), %r14
.LVL217:
	.loc 1 489 0
	movq	%r13, sptprice(%rip)
	.loc 1 491 0
	leaq	(%r14,%r11), %rsi
	.loc 1 490 0
	movq	%r14, strike(%rip)
	.loc 1 491 0
	movq	%r14, 56(%rsp)
	.loc 1 492 0
	leaq	(%rsi,%r11), %r15
	.loc 1 491 0
	movq	%rsi, rate(%rip)
	.loc 1 492 0
	movq	%rsi, 48(%rsp)
	.loc 1 493 0
	leaq	(%r15,%r11), %r14
	.loc 1 492 0
	movq	%r15, volatility(%rip)
	.loc 1 493 0
	movq	%r14, otime(%rip)
	.loc 1 495 0
	call	malloc
.LVL218:
	.loc 1 496 0
	leaq	256(%rax), %rcx
	andq	$-64, %rcx
	.loc 1 498 0
	testl	%ebp, %ebp
	.loc 1 496 0
	movq	%rcx, otype(%rip)
.LVL219:
	.loc 1 498 0
	jle	.L85
	movslq	numOptions(%rip), %r12
	movq	data(%rip), %rbp
	movq	%r13, %r11
	movq	56(%rsp), %r10
	movq	48(%rsp), %r9
	movq	%rcx, %rdi
	negq	%rdi
	subq	%rcx, %r11
	.loc 1 499 0
	xorl	%edx, %edx
	leaq	(%r15,%rdi), %r8
	leaq	4(%rcx), %rax
.LVL220:
	.loc 1 498 0
	movl	$1, %r15d
	leal	-1(%r12), %r13d
	addq	%rdi, %r10
	addq	%rdi, %r9
	addq	%r14, %rdi
	leaq	36(%rbp), %r14
	andl	$1, %r13d
	.loc 1 499 0
	cmpb	$80, 24(%rbp)
	sete	%dl
	.loc 1 498 0
	cmpl	$1, %r12d
	.loc 1 499 0
	movl	%edx, (%rcx)
	.loc 1 500 0
	movss	0(%rbp), %xmm0
	movss	%xmm0, (%r11,%rcx)
	.loc 1 501 0
	movss	4(%rbp), %xmm1
	movss	%xmm1, (%r10,%rcx)
	.loc 1 502 0
	movss	8(%rbp), %xmm2
	movss	%xmm2, (%r9,%rcx)
	.loc 1 503 0
	movss	16(%rbp), %xmm3
	movss	%xmm3, (%r8,%rcx)
	.loc 1 504 0
	movss	20(%rbp), %xmm4
	movss	%xmm4, (%rdi,%rcx)
	.loc 1 498 0
	jle	.L85
	testl	%r13d, %r13d
	je	.L86
	.loc 1 499 0
	xorl	%esi, %esi
	cmpb	$80, 24(%r14)
	.loc 1 498 0
	movl	$2, %r15d
	.loc 1 499 0
	sete	%sil
	.loc 1 498 0
	cmpl	$2, %r12d
	.loc 1 499 0
	movl	%esi, (%rax)
	.loc 1 500 0
	movss	(%r14), %xmm5
	movss	%xmm5, (%r11,%rax)
	.loc 1 501 0
	movss	4(%r14), %xmm6
	movss	%xmm6, (%r10,%rax)
	.loc 1 502 0
	movss	8(%r14), %xmm7
	movss	%xmm7, (%r9,%rax)
	.loc 1 503 0
	movss	16(%r14), %xmm8
	movss	%xmm8, (%r8,%rax)
	.loc 1 504 0
	movss	20(%r14), %xmm9
	leaq	72(%rbp), %r14
	movss	%xmm9, (%rdi,%rax)
	leaq	8(%rcx), %rax
	.loc 1 498 0
	jle	.L85
	.p2align 4,,10
	.p2align 3
.L86:
	.loc 1 499 0
	xorl	%ecx, %ecx
	cmpb	$80, 24(%r14)
	sete	%cl
	xorl	%ebp, %ebp
	movl	%ecx, (%rax)
	.loc 1 500 0
	movss	(%r14), %xmm10
	movss	%xmm10, (%r11,%rax)
	.loc 1 501 0
	movss	4(%r14), %xmm11
	movss	%xmm11, (%r10,%rax)
	.loc 1 502 0
	movss	8(%r14), %xmm12
	movss	%xmm12, (%r9,%rax)
	.loc 1 503 0
	movss	16(%r14), %xmm13
	movss	%xmm13, (%r8,%rax)
	.loc 1 504 0
	movss	20(%r14), %xmm14
	movss	%xmm14, (%rdi,%rax)
	.loc 1 499 0
	cmpb	$80, 60(%r14)
	sete	%bpl
	.loc 1 498 0
	addl	$2, %r15d
	addq	$72, %r14
	.loc 1 499 0
	movl	%ebp, 4(%rax)
	.loc 1 500 0
	movss	-36(%r14), %xmm15
	movss	%xmm15, 4(%r11,%rax)
	.loc 1 501 0
	movss	-32(%r14), %xmm0
	movss	%xmm0, 4(%r10,%rax)
	.loc 1 502 0
	movss	-28(%r14), %xmm1
	movss	%xmm1, 4(%r9,%rax)
	.loc 1 503 0
	movss	-20(%r14), %xmm2
	movss	%xmm2, 4(%r8,%rax)
	.loc 1 504 0
	movss	-16(%r14), %xmm3
	movss	%xmm3, 4(%rdi,%rax)
	addq	$8, %rax
	.loc 1 498 0
	cmpl	%r15d, %r12d
	jg	.L86
.LVL221:
.L85:
	.loc 1 507 0
	leaq	(%r12,%r12,4), %rdx
.LBB122:
.LBB123:
	.loc 2 104 0
	movl	$.LC23, %esi
	movl	$1, %edi
	xorl	%eax, %eax
.LBE123:
.LBE122:
	.loc 1 507 0
	salq	$3, %rdx
.LBB125:
.LBB124:
	.loc 2 104 0
	call	__printf_chk
.LVL222:
.LBE124:
.LBE125:
	.loc 1 529 0
	movl	nThreads(%rip), %r13d
	movslq	%r13d, %rdi
	salq	$2, %rdi
	call	malloc
.LVL223:
.LBB126:
	.loc 1 531 0
	testl	%r13d, %r13d
.LBE126:
	.loc 1 529 0
	movq	%rax, %rbp
.LVL224:
.LBB135:
	.loc 1 531 0
	jle	.L87
	movq	%rax, %r13
	xorl	%r12d, %r12d
.LVL225:
	.p2align 4,,10
	.p2align 3
.L90:
.LBB127:
	.loc 1 532 0
	movl	%r12d, 0(%r13)
.LVL226:
	xorl	%r11d, %r11d
.LVL227:
.L89:
.LBB128:
	.loc 1 537 0
	movl	_M4_threadsTableAllocated(,%r11,4), %edi
	movl	%r11d, %r8d
	testl	%edi, %edi
	je	.L88
	leaq	1(%r11), %r10
	movl	_M4_threadsTableAllocated(,%r10,4), %r9d
	movl	%r10d, %r8d
	testl	%r9d, %r9d
	je	.L88
	leaq	2(%r11), %rdx
	movl	_M4_threadsTableAllocated(,%rdx,4), %esi
	movl	%edx, %r8d
	testl	%esi, %esi
	je	.L88
	leaq	3(%r11), %r15
	movl	_M4_threadsTableAllocated(,%r15,4), %r14d
	movl	%r15d, %r8d
	testl	%r14d, %r14d
	je	.L88
	leaq	4(%r11), %rax
	movl	_M4_threadsTableAllocated(,%rax,4), %ecx
	movl	%eax, %r8d
	testl	%ecx, %ecx
	je	.L88
	leaq	5(%r11), %rdi
	movl	_M4_threadsTableAllocated(,%rdi,4), %r10d
	movl	%edi, %r8d
	testl	%r10d, %r10d
	je	.L88
	leaq	6(%r11), %r9
	movl	_M4_threadsTableAllocated(,%r9,4), %edx
	movl	%r9d, %r8d
	testl	%edx, %edx
	je	.L88
	leaq	7(%r11), %rsi
	movl	_M4_threadsTableAllocated(,%rsi,4), %r15d
	movl	%esi, %r8d
	testl	%r15d, %r15d
	je	.L88
	addq	$8, %r11
	.loc 1 536 0
	cmpq	$128, %r11
	jne	.L89
	movl	$128, %r8d
	.p2align 4,,10
	.p2align 3
.L88:
	.loc 1 539 0
	movslq	%r8d, %r14
	movq	%r13, %rcx
	xorl	%esi, %esi
	leaq	_M4_threadsTable(,%r14,8), %rdi
	movl	$_Z9bs_threadPv, %edx
.LBE128:
.LBE127:
	.loc 1 531 0
	addl	$1, %r12d
.LVL228:
	addq	$4, %r13
.LVL229:
.LBB132:
.LBB129:
	.loc 1 539 0
	call	pthread_create
.LVL230:
.LBE129:
.LBE132:
	.loc 1 531 0
	cmpl	%r12d, nThreads(%rip)
.LBB133:
.LBB130:
	.loc 1 540 0
	movl	$1, _M4_threadsTableAllocated(,%r14,4)
.LBE130:
.LBE133:
	.loc 1 531 0
	jg	.L90
.LVL231:
.L87:
.LBB134:
.LBB131:
	xorl	%r12d, %r12d
.LVL232:
.L103:
.LBE131:
.LBE134:
.LBE135:
.LBB136:
	.loc 1 549 0
	movl	_M4_threadsTableAllocated(%r12), %r11d
	testl	%r11d, %r11d
	je	.L95
	.loc 1 550 0
	movq	_M4_threadsTable(%r12,%r12), %rdi
	leaq	64(%rsp), %rsi
	call	pthread_join
.LVL233:
	leaq	4(%r12), %rax
	.loc 1 549 0
	movl	_M4_threadsTableAllocated(%rax), %ecx
	testl	%ecx, %ecx
	je	.L95
	.loc 1 550 0
	movq	_M4_threadsTable(%rax,%rax), %rdi
	leaq	64(%rsp), %rsi
	call	pthread_join
.LVL234:
	.loc 1 549 0
	movl	_M4_threadsTableAllocated+8(%r12), %r10d
	leaq	8(%r12), %rdi
	testl	%r10d, %r10d
	je	.L95
	.loc 1 550 0
	movq	_M4_threadsTable(%rdi,%rdi), %rdi
	leaq	64(%rsp), %rsi
	call	pthread_join
.LVL235:
	.loc 1 549 0
	movl	_M4_threadsTableAllocated+12(%r12), %edx
	leaq	12(%r12), %r9
	testl	%edx, %edx
	je	.L95
	.loc 1 550 0
	movq	_M4_threadsTable(%r9,%r9), %rdi
	leaq	64(%rsp), %rsi
	call	pthread_join
.LVL236:
	.loc 1 549 0
	movl	_M4_threadsTableAllocated+16(%r12), %r8d
	leaq	16(%r12), %rsi
	testl	%r8d, %r8d
	je	.L95
	.loc 1 550 0
	movq	_M4_threadsTable(%rsi,%rsi), %rdi
	leaq	64(%rsp), %rsi
	leaq	20(%r12), %r15
	call	pthread_join
.LVL237:
	.loc 1 549 0
	movl	_M4_threadsTableAllocated+20(%r12), %r13d
	testl	%r13d, %r13d
	je	.L95
	.loc 1 550 0
	movq	_M4_threadsTable(%r15,%r15), %rdi
	leaq	64(%rsp), %rsi
	leaq	24(%r12), %r14
	call	pthread_join
.LVL238:
	.loc 1 549 0
	movl	_M4_threadsTableAllocated+24(%r12), %r11d
	testl	%r11d, %r11d
	je	.L95
	.loc 1 550 0
	movq	_M4_threadsTable(%r14,%r14), %rdi
	leaq	64(%rsp), %rsi
	call	pthread_join
.LVL239:
	.loc 1 549 0
	movl	_M4_threadsTableAllocated+28(%r12), %ecx
	leaq	28(%r12), %rax
	testl	%ecx, %ecx
	je	.L95
	.loc 1 550 0
	movq	_M4_threadsTable(%rax,%rax), %rdi
	leaq	64(%rsp), %rsi
	addq	$32, %r12
	call	pthread_join
.LVL240:
	.loc 1 548 0
	cmpq	$512, %r12
	jne	.L103
	.p2align 4,,10
	.p2align 3
.L95:
.LBE136:
	.loc 1 554 0
	movq	%rbp, %rdi
	call	free
.LVL241:
	.loc 1 582 0
	movl	$.LC24, %esi
	movq	%rbx, %rdi
	call	fopen
.LVL242:
	.loc 1 583 0
	testq	%rax, %rax
	.loc 1 582 0
	movq	%rax, %r13
.LVL243:
	.loc 1 583 0
	je	.L151
.LVL244:
.LBB137:
.LBB138:
	.loc 2 98 0
	movl	numOptions(%rip), %ecx
	movq	%rax, %rdi
	movl	$.LC25, %edx
	xorl	%eax, %eax
.LVL245:
	movl	$1, %esi
	call	__fprintf_chk
.LVL246:
.LBE138:
.LBE137:
	.loc 1 588 0
	testl	%eax, %eax
	js	.L143
.LVL247:
	.loc 1 593 0 discriminator 1
	movl	numOptions(%rip), %edi
	xorl	%r12d, %r12d
	xorl	%ebp, %ebp
.LVL248:
	testl	%edi, %edi
	jle	.L101
.LVL249:
	.p2align 4,,10
	.p2align 3
.L132:
	.loc 1 594 0
	movq	prices(%rip), %r10
.LBB139:
.LBB140:
	.loc 2 98 0
	movl	$.LC27, %edx
	movl	$1, %esi
	movq	%r13, %rdi
	movl	$1, %eax
.LBE140:
.LBE139:
	.loc 1 594 0
	movss	(%r10,%r12), %xmm4
	cvtps2pd	%xmm4, %xmm0
.LBB142:
.LBB141:
	.loc 2 98 0
	call	__fprintf_chk
.LVL250:
.LBE141:
.LBE142:
	.loc 1 595 0
	testl	%eax, %eax
	js	.L143
	.loc 1 593 0
	addl	$1, %ebp
.LVL251:
	addq	$4, %r12
	cmpl	%ebp, numOptions(%rip)
	jg	.L132
.LVL252:
.L101:
	.loc 1 601 0
	movq	%r13, %rdi
	call	fclose
.LVL253:
	.loc 1 602 0
	testl	%eax, %eax
	jne	.L152
	.loc 1 610 0
	movq	data(%rip), %rdi
	call	free
.LVL254:
	.loc 1 611 0
	movq	prices(%rip), %rdi
	call	free
.LVL255:
.LBE161:
	.loc 1 618 0
	addq	$88, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
.LVL256:
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
.LVL257:
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL258:
.L148:
	.cfi_restore_state
.LBB162:
.LBB143:
.LBB144:
	.loc 2 104 0
	movl	$.LC18, %edi
	call	puts
.LVL259:
.LBE144:
.LBE143:
	.loc 1 441 0
	movl	numOptions(%rip), %r15d
	movl	%r15d, nThreads(%rip)
	jmp	.L78
.LVL260:
.L145:
.LBB145:
.LBB146:
	.loc 2 104 0
	movq	%r14, %rdx
	movl	$.LC17, %esi
.LVL261:
.L142:
.LBE146:
.LBE145:
.LBB147:
.LBB148:
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
.LVL262:
.LBE148:
.LBE147:
	.loc 1 597 0
	movq	%r13, %rdi
	call	fclose
.LVL263:
	.loc 1 598 0
	movl	$1, %edi
	call	exit
.LVL264:
.L147:
.LBB150:
.LBB151:
	.loc 2 104 0
	movq	%r14, %rdx
.LVL265:
.L144:
	movl	$.LC15, %esi
.LVL266:
.L141:
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
.LVL267:
.LBE151:
.LBE150:
	.loc 1 431 0
	movl	$1, %edi
	call	exit
.LVL268:
.L146:
.LBB152:
.LBB153:
	.loc 2 104 0
	movq	(%rbx), %rdx
	movl	$.LC13, %esi
	jmp	.L141
.LVL269:
.L152:
.LBE153:
.LBE152:
.LBB154:
.LBB155:
	movq	%rbx, %rdx
	movl	$.LC20, %esi
	jmp	.L141
.LVL270:
.L143:
.LBE155:
.LBE154:
.LBB156:
.LBB149:
	movq	%rbx, %rdx
	movl	$.LC26, %esi
	jmp	.L142
.LVL271:
.L151:
.LBE149:
.LBE156:
.LBB157:
.LBB158:
	movq	%rbx, %rdx
	jmp	.L144
.LVL272:
.L150:
.LBE158:
.LBE157:
.LBB159:
.LBB160:
	movq	%r14, %rdx
	movl	$.LC20, %esi
	jmp	.L141
.LBE160:
.LBE159:
.LBE162:
	.cfi_endproc
.LFE78:
	.size	main, .-main
	.globl	nThreads
	.bss
	.align 16
	.type	nThreads, @object
	.size	nThreads, 4
nThreads:
	.zero	4
	.globl	numError
	.align 4
	.type	numError, @object
	.size	numError, 4
numError:
	.zero	4
	.globl	otime
	.align 16
	.type	otime, @object
	.size	otime, 8
otime:
	.zero	8
	.globl	volatility
	.align 16
	.type	volatility, @object
	.size	volatility, 8
volatility:
	.zero	8
	.globl	rate
	.align 16
	.type	rate, @object
	.size	rate, 8
rate:
	.zero	8
	.globl	strike
	.align 16
	.type	strike, @object
	.size	strike, 8
strike:
	.zero	8
	.globl	sptprice
	.align 16
	.type	sptprice, @object
	.size	sptprice, 8
sptprice:
	.zero	8
	.globl	otype
	.align 16
	.type	otype, @object
	.size	otype, 8
otype:
	.zero	8
	.globl	numOptions
	.align 16
	.type	numOptions, @object
	.size	numOptions, 4
numOptions:
	.zero	4
	.globl	prices
	.align 16
	.type	prices, @object
	.size	prices, 8
prices:
	.zero	8
	.globl	data
	.align 16
	.type	data, @object
	.size	data, 8
data:
	.zero	8
	.globl	_M4_numThreads
	.data
	.align 4
	.type	_M4_numThreads, @object
	.size	_M4_numThreads, 4
_M4_numThreads:
	.long	128
	.globl	_M4_normalMutexAttr
	.bss
	.align 4
	.type	_M4_normalMutexAttr, @object
	.size	_M4_normalMutexAttr, 4
_M4_normalMutexAttr:
	.zero	4
	.globl	_M4_threadsTableAllocated
	.align 32
	.type	_M4_threadsTableAllocated, @object
	.size	_M4_threadsTableAllocated, 512
_M4_threadsTableAllocated:
	.zero	512
	.globl	_M4_threadsTable
	.align 32
	.type	_M4_threadsTable, @object
	.size	_M4_threadsTable, 1024
_M4_threadsTable:
	.zero	1024
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	1056964608
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC2:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst4
	.align 4
.LC3:
	.long	3204448256
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC4:
	.long	869545553
	.long	1071220805
	.align 8
.LC5:
	.long	410062862
	.long	1070442097
	.section	.rodata.cst4
	.align 4
.LC6:
	.long	1065353216
	.section	.rodata.cst8
	.align 8
.LC7:
	.long	982710508
	.long	1070887103
	.align 8
.LC8:
	.long	3853005403
	.long	-1076440592
	.align 8
.LC9:
	.long	39804520
	.long	1073512687
	.align 8
.LC10:
	.long	1324513488
	.long	-1073929251
	.align 8
.LC11:
	.long	3606325571
	.long	1073039565
	.text
.Letext0:
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/libio.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h"
	.file 9 "/usr/include/pthread.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x182e
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF170
	.byte	0x4
	.long	.LASF171
	.long	.LASF172
	.long	.Ldebug_ranges0+0x400
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF1
	.uleb128 0x3
	.long	.LASF9
	.byte	0x4
	.byte	0xd4
	.long	0x42
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
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x3
	.long	.LASF10
	.byte	0x5
	.byte	0x83
	.long	0x73
	.uleb128 0x3
	.long	.LASF11
	.byte	0x5
	.byte	0x84
	.long	0x73
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x9f
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x3
	.long	.LASF14
	.byte	0x6
	.byte	0x30
	.long	0xb1
	.uleb128 0x7
	.long	.LASF44
	.byte	0xd8
	.byte	0x7
	.byte	0xf5
	.long	0x231
	.uleb128 0x8
	.long	.LASF15
	.byte	0x7
	.byte	0xf6
	.long	0x6c
	.byte	0
	.uleb128 0x8
	.long	.LASF16
	.byte	0x7
	.byte	0xfb
	.long	0x99
	.byte	0x8
	.uleb128 0x8
	.long	.LASF17
	.byte	0x7
	.byte	0xfc
	.long	0x99
	.byte	0x10
	.uleb128 0x8
	.long	.LASF18
	.byte	0x7
	.byte	0xfd
	.long	0x99
	.byte	0x18
	.uleb128 0x8
	.long	.LASF19
	.byte	0x7
	.byte	0xfe
	.long	0x99
	.byte	0x20
	.uleb128 0x8
	.long	.LASF20
	.byte	0x7
	.byte	0xff
	.long	0x99
	.byte	0x28
	.uleb128 0x9
	.long	.LASF21
	.byte	0x7
	.value	0x100
	.long	0x99
	.byte	0x30
	.uleb128 0x9
	.long	.LASF22
	.byte	0x7
	.value	0x101
	.long	0x99
	.byte	0x38
	.uleb128 0x9
	.long	.LASF23
	.byte	0x7
	.value	0x102
	.long	0x99
	.byte	0x40
	.uleb128 0x9
	.long	.LASF24
	.byte	0x7
	.value	0x104
	.long	0x99
	.byte	0x48
	.uleb128 0x9
	.long	.LASF25
	.byte	0x7
	.value	0x105
	.long	0x99
	.byte	0x50
	.uleb128 0x9
	.long	.LASF26
	.byte	0x7
	.value	0x106
	.long	0x99
	.byte	0x58
	.uleb128 0x9
	.long	.LASF27
	.byte	0x7
	.value	0x108
	.long	0x279
	.byte	0x60
	.uleb128 0x9
	.long	.LASF28
	.byte	0x7
	.value	0x10a
	.long	0x27f
	.byte	0x68
	.uleb128 0x9
	.long	.LASF29
	.byte	0x7
	.value	0x10c
	.long	0x6c
	.byte	0x70
	.uleb128 0x9
	.long	.LASF30
	.byte	0x7
	.value	0x110
	.long	0x6c
	.byte	0x74
	.uleb128 0x9
	.long	.LASF31
	.byte	0x7
	.value	0x112
	.long	0x7a
	.byte	0x78
	.uleb128 0x9
	.long	.LASF32
	.byte	0x7
	.value	0x116
	.long	0x50
	.byte	0x80
	.uleb128 0x9
	.long	.LASF33
	.byte	0x7
	.value	0x117
	.long	0x5e
	.byte	0x82
	.uleb128 0x9
	.long	.LASF34
	.byte	0x7
	.value	0x118
	.long	0x285
	.byte	0x83
	.uleb128 0x9
	.long	.LASF35
	.byte	0x7
	.value	0x11c
	.long	0x295
	.byte	0x88
	.uleb128 0x9
	.long	.LASF36
	.byte	0x7
	.value	0x125
	.long	0x85
	.byte	0x90
	.uleb128 0x9
	.long	.LASF37
	.byte	0x7
	.value	0x12e
	.long	0x97
	.byte	0x98
	.uleb128 0x9
	.long	.LASF38
	.byte	0x7
	.value	0x12f
	.long	0x97
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x7
	.value	0x130
	.long	0x97
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x7
	.value	0x131
	.long	0x97
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x7
	.value	0x132
	.long	0x37
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF42
	.byte	0x7
	.value	0x134
	.long	0x6c
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF43
	.byte	0x7
	.value	0x136
	.long	0x29b
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	0x9f
	.long	0x241
	.uleb128 0xb
	.long	0x90
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.long	.LASF173
	.byte	0x7
	.byte	0x9a
	.uleb128 0x7
	.long	.LASF45
	.byte	0x18
	.byte	0x7
	.byte	0xa0
	.long	0x279
	.uleb128 0x8
	.long	.LASF46
	.byte	0x7
	.byte	0xa1
	.long	0x279
	.byte	0
	.uleb128 0x8
	.long	.LASF47
	.byte	0x7
	.byte	0xa2
	.long	0x27f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF48
	.byte	0x7
	.byte	0xa6
	.long	0x6c
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x248
	.uleb128 0x6
	.byte	0x8
	.long	0xb1
	.uleb128 0xa
	.long	0x9f
	.long	0x295
	.uleb128 0xb
	.long	0x90
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x241
	.uleb128 0xa
	.long	0x9f
	.long	0x2ab
	.uleb128 0xb
	.long	0x90
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2b1
	.uleb128 0xd
	.long	0x9f
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF49
	.uleb128 0x3
	.long	.LASF50
	.byte	0x8
	.byte	0x3c
	.long	0x42
	.uleb128 0xe
	.long	.LASF53
	.byte	0x38
	.byte	0x8
	.byte	0x3f
	.long	0x2eb
	.uleb128 0xf
	.long	.LASF51
	.byte	0x8
	.byte	0x41
	.long	0x2eb
	.uleb128 0xf
	.long	.LASF52
	.byte	0x8
	.byte	0x42
	.long	0x73
	.byte	0
	.uleb128 0xa
	.long	0x9f
	.long	0x2fb
	.uleb128 0xb
	.long	0x90
	.byte	0x37
	.byte	0
	.uleb128 0x3
	.long	.LASF53
	.byte	0x8
	.byte	0x45
	.long	0x2c8
	.uleb128 0x10
	.byte	0x4
	.byte	0x8
	.byte	0x82
	.long	.LASF174
	.long	0x329
	.uleb128 0xf
	.long	.LASF51
	.byte	0x8
	.byte	0x83
	.long	0x231
	.uleb128 0xf
	.long	.LASF52
	.byte	0x8
	.byte	0x84
	.long	0x6c
	.byte	0
	.uleb128 0x3
	.long	.LASF54
	.byte	0x8
	.byte	0x85
	.long	0x306
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF55
	.uleb128 0x11
	.byte	0x4
	.byte	0x9
	.byte	0x2b
	.long	0x37a
	.uleb128 0x12
	.long	.LASF56
	.sleb128 0
	.uleb128 0x12
	.long	.LASF57
	.sleb128 1
	.uleb128 0x12
	.long	.LASF58
	.sleb128 2
	.uleb128 0x12
	.long	.LASF59
	.sleb128 3
	.uleb128 0x12
	.long	.LASF60
	.sleb128 0
	.uleb128 0x12
	.long	.LASF61
	.sleb128 1
	.uleb128 0x12
	.long	.LASF62
	.sleb128 2
	.uleb128 0x12
	.long	.LASF63
	.sleb128 0
	.uleb128 0x12
	.long	.LASF64
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.byte	0x9
	.byte	0x41
	.long	0x39b
	.uleb128 0x12
	.long	.LASF65
	.sleb128 0
	.uleb128 0x12
	.long	.LASF66
	.sleb128 0
	.uleb128 0x12
	.long	.LASF67
	.sleb128 1
	.uleb128 0x12
	.long	.LASF68
	.sleb128 1
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.byte	0x9
	.byte	0x7e
	.long	0x3bc
	.uleb128 0x12
	.long	.LASF69
	.sleb128 0
	.uleb128 0x12
	.long	.LASF70
	.sleb128 1
	.uleb128 0x12
	.long	.LASF71
	.sleb128 2
	.uleb128 0x12
	.long	.LASF72
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.long	.LASF73
	.byte	0x24
	.byte	0x1
	.byte	0x87
	.long	0x42d
	.uleb128 0x13
	.string	"s"
	.byte	0x1
	.byte	0x88
	.long	0x29
	.byte	0
	.uleb128 0x8
	.long	.LASF74
	.byte	0x1
	.byte	0x89
	.long	0x29
	.byte	0x4
	.uleb128 0x13
	.string	"r"
	.byte	0x1
	.byte	0x8a
	.long	0x29
	.byte	0x8
	.uleb128 0x8
	.long	.LASF75
	.byte	0x1
	.byte	0x8b
	.long	0x29
	.byte	0xc
	.uleb128 0x13
	.string	"v"
	.byte	0x1
	.byte	0x8c
	.long	0x29
	.byte	0x10
	.uleb128 0x13
	.string	"t"
	.byte	0x1
	.byte	0x8d
	.long	0x29
	.byte	0x14
	.uleb128 0x8
	.long	.LASF76
	.byte	0x1
	.byte	0x8f
	.long	0x9f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF77
	.byte	0x1
	.byte	0x90
	.long	0x29
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF78
	.byte	0x1
	.byte	0x91
	.long	0x29
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.long	.LASF79
	.byte	0x1
	.byte	0x92
	.long	0x3bc
	.uleb128 0x14
	.long	.LASF82
	.byte	0x2
	.byte	0x66
	.long	0x6c
	.byte	0x3
	.long	0x455
	.uleb128 0x15
	.long	.LASF80
	.byte	0x2
	.byte	0x66
	.long	0x2ab
	.uleb128 0x16
	.byte	0
	.uleb128 0x17
	.long	.LASF85
	.byte	0x3
	.value	0x116
	.long	0x6c
	.byte	0x3
	.long	0x473
	.uleb128 0x18
	.long	.LASF81
	.byte	0x3
	.value	0x116
	.long	0x2ab
	.byte	0
	.uleb128 0x14
	.long	.LASF83
	.byte	0x2
	.byte	0x5f
	.long	0x6c
	.byte	0x3
	.long	0x49b
	.uleb128 0x15
	.long	.LASF84
	.byte	0x2
	.byte	0x5f
	.long	0x49b
	.uleb128 0x15
	.long	.LASF80
	.byte	0x2
	.byte	0x5f
	.long	0x2ab
	.uleb128 0x16
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa6
	.uleb128 0x19
	.long	.LASF86
	.byte	0x1
	.byte	0xe7
	.long	0x29
	.byte	0x1
	.long	0x5dd
	.uleb128 0x15
	.long	.LASF87
	.byte	0x1
	.byte	0xe7
	.long	0x29
	.uleb128 0x15
	.long	.LASF74
	.byte	0x1
	.byte	0xe8
	.long	0x29
	.uleb128 0x15
	.long	.LASF88
	.byte	0x1
	.byte	0xe8
	.long	0x29
	.uleb128 0x15
	.long	.LASF89
	.byte	0x1
	.byte	0xe8
	.long	0x29
	.uleb128 0x15
	.long	.LASF90
	.byte	0x1
	.byte	0xe9
	.long	0x29
	.uleb128 0x15
	.long	.LASF91
	.byte	0x1
	.byte	0xe9
	.long	0x6c
	.uleb128 0x15
	.long	.LASF92
	.byte	0x1
	.byte	0xe9
	.long	0x29
	.uleb128 0x1a
	.uleb128 0x1b
	.long	.LASF93
	.byte	0x1
	.byte	0xeb
	.long	0x29
	.uleb128 0x1b
	.long	.LASF94
	.byte	0x1
	.byte	0xee
	.long	0x29
	.uleb128 0x1b
	.long	.LASF95
	.byte	0x1
	.byte	0xef
	.long	0x29
	.uleb128 0x1b
	.long	.LASF96
	.byte	0x1
	.byte	0xf0
	.long	0x29
	.uleb128 0x1b
	.long	.LASF97
	.byte	0x1
	.byte	0xf1
	.long	0x29
	.uleb128 0x1b
	.long	.LASF98
	.byte	0x1
	.byte	0xf2
	.long	0x29
	.uleb128 0x1b
	.long	.LASF99
	.byte	0x1
	.byte	0xf3
	.long	0x29
	.uleb128 0x1b
	.long	.LASF100
	.byte	0x1
	.byte	0xf5
	.long	0x29
	.uleb128 0x1b
	.long	.LASF101
	.byte	0x1
	.byte	0xf6
	.long	0x29
	.uleb128 0x1c
	.string	"xD1"
	.byte	0x1
	.byte	0xf7
	.long	0x29
	.uleb128 0x1c
	.string	"xD2"
	.byte	0x1
	.byte	0xf8
	.long	0x29
	.uleb128 0x1b
	.long	.LASF102
	.byte	0x1
	.byte	0xf9
	.long	0x29
	.uleb128 0x1b
	.long	.LASF103
	.byte	0x1
	.byte	0xfa
	.long	0x29
	.uleb128 0x1c
	.string	"d1"
	.byte	0x1
	.byte	0xfb
	.long	0x29
	.uleb128 0x1c
	.string	"d2"
	.byte	0x1
	.byte	0xfc
	.long	0x29
	.uleb128 0x1b
	.long	.LASF104
	.byte	0x1
	.byte	0xfd
	.long	0x29
	.uleb128 0x1b
	.long	.LASF105
	.byte	0x1
	.byte	0xfe
	.long	0x29
	.uleb128 0x1b
	.long	.LASF106
	.byte	0x1
	.byte	0xff
	.long	0x29
	.uleb128 0x1d
	.long	.LASF107
	.byte	0x1
	.value	0x100
	.long	0x29
	.uleb128 0x1d
	.long	.LASF108
	.byte	0x1
	.value	0x101
	.long	0x29
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF109
	.byte	0x1
	.byte	0xa9
	.long	0x29
	.byte	0x1
	.long	0x695
	.uleb128 0x15
	.long	.LASF110
	.byte	0x1
	.byte	0xa9
	.long	0x29
	.uleb128 0x1a
	.uleb128 0x1b
	.long	.LASF111
	.byte	0x1
	.byte	0xab
	.long	0x6c
	.uleb128 0x1b
	.long	.LASF112
	.byte	0x1
	.byte	0xad
	.long	0x29
	.uleb128 0x1b
	.long	.LASF113
	.byte	0x1
	.byte	0xae
	.long	0x29
	.uleb128 0x1b
	.long	.LASF114
	.byte	0x1
	.byte	0xaf
	.long	0x29
	.uleb128 0x1b
	.long	.LASF115
	.byte	0x1
	.byte	0xb0
	.long	0x29
	.uleb128 0x1c
	.string	"xK2"
	.byte	0x1
	.byte	0xb1
	.long	0x29
	.uleb128 0x1b
	.long	.LASF116
	.byte	0x1
	.byte	0xb2
	.long	0x29
	.uleb128 0x1b
	.long	.LASF117
	.byte	0x1
	.byte	0xb2
	.long	0x29
	.uleb128 0x1b
	.long	.LASF118
	.byte	0x1
	.byte	0xb3
	.long	0x29
	.uleb128 0x1b
	.long	.LASF119
	.byte	0x1
	.byte	0xb3
	.long	0x29
	.uleb128 0x1b
	.long	.LASF120
	.byte	0x1
	.byte	0xb4
	.long	0x29
	.uleb128 0x1b
	.long	.LASF121
	.byte	0x1
	.byte	0xb4
	.long	0x29
	.uleb128 0x1b
	.long	.LASF122
	.byte	0x1
	.byte	0xb5
	.long	0x29
	.uleb128 0x1b
	.long	.LASF123
	.byte	0x1
	.byte	0xb5
	.long	0x29
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LASF175
	.byte	0x1
	.value	0x165
	.long	.LASF176
	.long	0x6c
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x9de
	.uleb128 0x1f
	.long	.LASF129
	.byte	0x1
	.value	0x165
	.long	0x97
	.long	.LLST0
	.uleb128 0x20
	.long	.Ldebug_ranges0+0
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0x167
	.long	0x6c
	.long	.LLST1
	.uleb128 0x21
	.string	"j"
	.byte	0x1
	.value	0x167
	.long	0x6c
	.long	.LLST2
	.uleb128 0x22
	.long	.LASF124
	.byte	0x1
	.value	0x168
	.long	0x29
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x1d
	.long	.LASF125
	.byte	0x1
	.value	0x169
	.long	0x29
	.uleb128 0x21
	.string	"tid"
	.byte	0x1
	.value	0x16a
	.long	0x6c
	.long	.LLST3
	.uleb128 0x23
	.long	.LASF126
	.byte	0x1
	.value	0x16b
	.long	0x6c
	.long	.LLST4
	.uleb128 0x21
	.string	"end"
	.byte	0x1
	.value	0x16c
	.long	0x6c
	.long	.LLST5
	.uleb128 0x24
	.long	0x4a1
	.quad	.LBB54
	.long	.Ldebug_ranges0+0x40
	.byte	0x1
	.value	0x17a
	.uleb128 0x25
	.long	0x4f3
	.long	.LLST6
	.uleb128 0x25
	.long	0x4e8
	.long	.LLST7
	.uleb128 0x25
	.long	0x4dd
	.long	.LLST8
	.uleb128 0x25
	.long	0x4d2
	.long	.LLST9
	.uleb128 0x25
	.long	0x4c7
	.long	.LLST10
	.uleb128 0x25
	.long	0x4bc
	.long	.LLST11
	.uleb128 0x25
	.long	0x4b1
	.long	.LLST12
	.uleb128 0x20
	.long	.Ldebug_ranges0+0x40
	.uleb128 0x26
	.long	0x4ff
	.long	.LLST13
	.uleb128 0x26
	.long	0x50a
	.long	.LLST12
	.uleb128 0x26
	.long	0x515
	.long	.LLST11
	.uleb128 0x26
	.long	0x520
	.long	.LLST10
	.uleb128 0x26
	.long	0x52b
	.long	.LLST9
	.uleb128 0x26
	.long	0x536
	.long	.LLST8
	.uleb128 0x26
	.long	0x541
	.long	.LLST19
	.uleb128 0x26
	.long	0x54c
	.long	.LLST20
	.uleb128 0x26
	.long	0x557
	.long	.LLST20
	.uleb128 0x26
	.long	0x562
	.long	.LLST22
	.uleb128 0x26
	.long	0x56d
	.long	.LLST23
	.uleb128 0x26
	.long	0x578
	.long	.LLST24
	.uleb128 0x26
	.long	0x583
	.long	.LLST25
	.uleb128 0x26
	.long	0x58e
	.long	.LLST26
	.uleb128 0x26
	.long	0x598
	.long	.LLST23
	.uleb128 0x26
	.long	0x5a2
	.long	.LLST28
	.uleb128 0x27
	.long	0x5ad
	.uleb128 0x28
	.long	0x5b8
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x26
	.long	0x5c3
	.long	.LLST29
	.uleb128 0x26
	.long	0x5cf
	.long	.LLST30
	.uleb128 0x29
	.long	0x5dd
	.quad	.LBB56
	.long	.Ldebug_ranges0+0x90
	.byte	0x1
	.value	0x11e
	.long	0x8e7
	.uleb128 0x25
	.long	0x5ed
	.long	.LLST31
	.uleb128 0x20
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x26
	.long	0x5f9
	.long	.LLST32
	.uleb128 0x26
	.long	0x604
	.long	.LLST33
	.uleb128 0x26
	.long	0x60f
	.long	.LLST34
	.uleb128 0x26
	.long	0x61a
	.long	.LLST35
	.uleb128 0x26
	.long	0x625
	.long	.LLST36
	.uleb128 0x26
	.long	0x630
	.long	.LLST37
	.uleb128 0x26
	.long	0x63b
	.long	.LLST38
	.uleb128 0x26
	.long	0x646
	.long	.LLST39
	.uleb128 0x26
	.long	0x651
	.long	.LLST40
	.uleb128 0x27
	.long	0x65c
	.uleb128 0x26
	.long	0x667
	.long	.LLST41
	.uleb128 0x26
	.long	0x672
	.long	.LLST42
	.uleb128 0x26
	.long	0x67d
	.long	.LLST43
	.uleb128 0x27
	.long	0x688
	.uleb128 0x2a
	.quad	.LVL23
	.long	0x165f
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	0x5dd
	.quad	.LBB65
	.long	.Ldebug_ranges0+0xf0
	.byte	0x1
	.value	0x11f
	.long	0x992
	.uleb128 0x25
	.long	0x5ed
	.long	.LLST44
	.uleb128 0x20
	.long	.Ldebug_ranges0+0xf0
	.uleb128 0x26
	.long	0x5f9
	.long	.LLST45
	.uleb128 0x26
	.long	0x604
	.long	.LLST46
	.uleb128 0x26
	.long	0x60f
	.long	.LLST47
	.uleb128 0x26
	.long	0x61a
	.long	.LLST48
	.uleb128 0x26
	.long	0x625
	.long	.LLST49
	.uleb128 0x26
	.long	0x630
	.long	.LLST50
	.uleb128 0x26
	.long	0x63b
	.long	.LLST51
	.uleb128 0x26
	.long	0x646
	.long	.LLST52
	.uleb128 0x26
	.long	0x651
	.long	.LLST53
	.uleb128 0x27
	.long	0x65c
	.uleb128 0x26
	.long	0x667
	.long	.LLST54
	.uleb128 0x26
	.long	0x672
	.long	.LLST55
	.uleb128 0x26
	.long	0x67d
	.long	.LLST56
	.uleb128 0x27
	.long	0x688
	.uleb128 0x2a
	.quad	.LVL46
	.long	0x165f
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LVL11
	.long	0x1674
	.long	0x9b5
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xd
	.byte	0x91
	.sleb128 -92
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x91
	.sleb128 -96
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1b
	.byte	0
	.uleb128 0x2a
	.quad	.LVL67
	.long	0x165f
	.uleb128 0x2d
	.quad	.LVL79
	.long	0x168b
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x6
	.byte	0x91
	.sleb128 -104
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	0x5dd
	.long	.LASF127
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0xa94
	.uleb128 0x25
	.long	0x5ed
	.long	.LLST57
	.uleb128 0x20
	.long	.Ldebug_ranges0+0x120
	.uleb128 0x26
	.long	0x5f9
	.long	.LLST58
	.uleb128 0x26
	.long	0x604
	.long	.LLST59
	.uleb128 0x26
	.long	0x60f
	.long	.LLST60
	.uleb128 0x26
	.long	0x61a
	.long	.LLST61
	.uleb128 0x26
	.long	0x625
	.long	.LLST62
	.uleb128 0x26
	.long	0x630
	.long	.LLST63
	.uleb128 0x26
	.long	0x63b
	.long	.LLST64
	.uleb128 0x26
	.long	0x646
	.long	.LLST65
	.uleb128 0x26
	.long	0x651
	.long	.LLST66
	.uleb128 0x26
	.long	0x65c
	.long	.LLST67
	.uleb128 0x26
	.long	0x667
	.long	.LLST68
	.uleb128 0x26
	.long	0x672
	.long	.LLST69
	.uleb128 0x26
	.long	0x67d
	.long	.LLST70
	.uleb128 0x27
	.long	0x688
	.uleb128 0x2a
	.quad	.LVL83
	.long	0x165f
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	0x4a1
	.long	.LASF128
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0xd2f
	.uleb128 0x25
	.long	0x4b1
	.long	.LLST71
	.uleb128 0x25
	.long	0x4bc
	.long	.LLST72
	.uleb128 0x25
	.long	0x4c7
	.long	.LLST73
	.uleb128 0x25
	.long	0x4d2
	.long	.LLST74
	.uleb128 0x25
	.long	0x4dd
	.long	.LLST75
	.uleb128 0x25
	.long	0x4e8
	.long	.LLST76
	.uleb128 0x25
	.long	0x4f3
	.long	.LLST77
	.uleb128 0x20
	.long	.Ldebug_ranges0+0x160
	.uleb128 0x26
	.long	0x4ff
	.long	.LLST78
	.uleb128 0x26
	.long	0x50a
	.long	.LLST79
	.uleb128 0x26
	.long	0x515
	.long	.LLST80
	.uleb128 0x26
	.long	0x520
	.long	.LLST81
	.uleb128 0x26
	.long	0x52b
	.long	.LLST82
	.uleb128 0x26
	.long	0x536
	.long	.LLST83
	.uleb128 0x26
	.long	0x541
	.long	.LLST84
	.uleb128 0x26
	.long	0x54c
	.long	.LLST85
	.uleb128 0x26
	.long	0x557
	.long	.LLST85
	.uleb128 0x26
	.long	0x562
	.long	.LLST87
	.uleb128 0x26
	.long	0x56d
	.long	.LLST88
	.uleb128 0x26
	.long	0x578
	.long	.LLST89
	.uleb128 0x26
	.long	0x583
	.long	.LLST90
	.uleb128 0x26
	.long	0x58e
	.long	.LLST91
	.uleb128 0x26
	.long	0x598
	.long	.LLST88
	.uleb128 0x26
	.long	0x5a2
	.long	.LLST93
	.uleb128 0x27
	.long	0x5ad
	.uleb128 0x28
	.long	0x5b8
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x26
	.long	0x5c3
	.long	.LLST94
	.uleb128 0x26
	.long	0x5cf
	.long	.LLST95
	.uleb128 0x29
	.long	0x5dd
	.quad	.LBB90
	.long	.Ldebug_ranges0+0x1d0
	.byte	0x1
	.value	0x11e
	.long	0xc50
	.uleb128 0x25
	.long	0x5ed
	.long	.LLST96
	.uleb128 0x20
	.long	.Ldebug_ranges0+0x1d0
	.uleb128 0x26
	.long	0x5f9
	.long	.LLST97
	.uleb128 0x26
	.long	0x604
	.long	.LLST98
	.uleb128 0x26
	.long	0x60f
	.long	.LLST99
	.uleb128 0x26
	.long	0x61a
	.long	.LLST100
	.uleb128 0x26
	.long	0x625
	.long	.LLST101
	.uleb128 0x26
	.long	0x630
	.long	.LLST102
	.uleb128 0x26
	.long	0x63b
	.long	.LLST103
	.uleb128 0x26
	.long	0x646
	.long	.LLST104
	.uleb128 0x26
	.long	0x651
	.long	.LLST105
	.uleb128 0x27
	.long	0x65c
	.uleb128 0x26
	.long	0x667
	.long	.LLST106
	.uleb128 0x26
	.long	0x672
	.long	.LLST107
	.uleb128 0x26
	.long	0x67d
	.long	.LLST108
	.uleb128 0x27
	.long	0x688
	.uleb128 0x2a
	.quad	.LVL126
	.long	0x165f
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	0x5dd
	.quad	.LBB97
	.long	.Ldebug_ranges0+0x220
	.byte	0x1
	.value	0x11f
	.long	0xcfb
	.uleb128 0x25
	.long	0x5ed
	.long	.LLST109
	.uleb128 0x20
	.long	.Ldebug_ranges0+0x220
	.uleb128 0x26
	.long	0x5f9
	.long	.LLST110
	.uleb128 0x26
	.long	0x604
	.long	.LLST111
	.uleb128 0x26
	.long	0x60f
	.long	.LLST112
	.uleb128 0x26
	.long	0x61a
	.long	.LLST113
	.uleb128 0x26
	.long	0x625
	.long	.LLST114
	.uleb128 0x26
	.long	0x630
	.long	.LLST115
	.uleb128 0x26
	.long	0x63b
	.long	.LLST116
	.uleb128 0x26
	.long	0x646
	.long	.LLST117
	.uleb128 0x26
	.long	0x651
	.long	.LLST118
	.uleb128 0x27
	.long	0x65c
	.uleb128 0x26
	.long	0x667
	.long	.LLST119
	.uleb128 0x26
	.long	0x672
	.long	.LLST120
	.uleb128 0x26
	.long	0x67d
	.long	.LLST121
	.uleb128 0x27
	.long	0x688
	.uleb128 0x2a
	.quad	.LVL149
	.long	0x165f
	.byte	0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL113
	.long	0x1674
	.uleb128 0x2a
	.quad	.LVL170
	.long	0x165f
	.uleb128 0x2d
	.quad	.LVL187
	.long	0x168b
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x6
	.byte	0x91
	.sleb128 -76
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF177
	.byte	0x1
	.value	0x18c
	.long	0x6c
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x14d6
	.uleb128 0x1f
	.long	.LASF130
	.byte	0x1
	.value	0x18c
	.long	0x6c
	.long	.LLST122
	.uleb128 0x1f
	.long	.LASF131
	.byte	0x1
	.value	0x18c
	.long	0x14d6
	.long	.LLST123
	.uleb128 0x20
	.long	.Ldebug_ranges0+0x250
	.uleb128 0x23
	.long	.LASF132
	.byte	0x1
	.value	0x18e
	.long	0x49b
	.long	.LLST124
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0x18f
	.long	0x6c
	.long	.LLST125
	.uleb128 0x23
	.long	.LASF133
	.byte	0x1
	.value	0x190
	.long	0x6c
	.long	.LLST126
	.uleb128 0x23
	.long	.LASF134
	.byte	0x1
	.value	0x191
	.long	0x14dc
	.long	.LLST127
	.uleb128 0x23
	.long	.LASF135
	.byte	0x1
	.value	0x192
	.long	0x14e2
	.long	.LLST128
	.uleb128 0x21
	.string	"rv"
	.byte	0x1
	.value	0x193
	.long	0x6c
	.long	.LLST129
	.uleb128 0x23
	.long	.LASF136
	.byte	0x1
	.value	0x1a8
	.long	0x99
	.long	.LLST130
	.uleb128 0x23
	.long	.LASF137
	.byte	0x1
	.value	0x1a9
	.long	0x99
	.long	.LLST131
	.uleb128 0x23
	.long	.LASF138
	.byte	0x1
	.value	0x210
	.long	0x14e2
	.long	.LLST132
	.uleb128 0x29
	.long	0x438
	.quad	.LBB108
	.long	.Ldebug_ranges0+0x290
	.byte	0x1
	.value	0x198
	.long	0xe3c
	.uleb128 0x30
	.long	0x448
	.uleb128 0x2d
	.quad	.LVL190
	.long	0x16a2
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC12
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	0x455
	.quad	.LBB112
	.long	.Ldebug_ranges0+0x2c0
	.byte	0x1
	.value	0x1a7
	.long	0xe76
	.uleb128 0x25
	.long	0x466
	.long	.LLST133
	.uleb128 0x2d
	.quad	.LVL193
	.long	0x16b9
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	0x438
	.quad	.LBB116
	.long	.Ldebug_ranges0+0x2f0
	.byte	0x1
	.value	0x1e2
	.long	0xeb8
	.uleb128 0x25
	.long	0x448
	.long	.LLST134
	.uleb128 0x2d
	.quad	.LVL213
	.long	0x16d8
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC21
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	0x438
	.quad	.LBB120
	.quad	.LBE120-.LBB120
	.byte	0x1
	.value	0x1e3
	.long	0xf04
	.uleb128 0x25
	.long	0x448
	.long	.LLST135
	.uleb128 0x2d
	.quad	.LVL214
	.long	0x16d8
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC22
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	0x438
	.quad	.LBB122
	.long	.Ldebug_ranges0+0x320
	.byte	0x1
	.value	0x1fb
	.long	0xf53
	.uleb128 0x25
	.long	0x448
	.long	.LLST136
	.uleb128 0x2d
	.quad	.LVL222
	.long	0x16d8
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC23
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x7c
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.Ldebug_ranges0+0x350
	.long	0xfa5
	.uleb128 0x23
	.long	.LASF139
	.byte	0x1
	.value	0x217
	.long	0x6c
	.long	.LLST137
	.uleb128 0x2d
	.quad	.LVL230
	.long	0x16f3
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xe
	.byte	0x7e
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.quad	_M4_threadsTable
	.byte	0x22
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	_Z9bs_threadPv
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -4
	.byte	0
	.byte	0
	.uleb128 0x33
	.quad	.LBB136
	.quad	.LBE136-.LBB136
	.long	0x109f
	.uleb128 0x23
	.long	.LASF139
	.byte	0x1
	.value	0x222
	.long	0x6c
	.long	.LLST138
	.uleb128 0x22
	.long	.LASF140
	.byte	0x1
	.value	0x223
	.long	0x97
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.quad	.LVL233
	.long	0x173d
	.long	0xff3
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2b
	.quad	.LVL234
	.long	0x173d
	.long	0x100c
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2b
	.quad	.LVL235
	.long	0x173d
	.long	0x1025
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2b
	.quad	.LVL236
	.long	0x173d
	.long	0x103e
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2b
	.quad	.LVL237
	.long	0x173d
	.long	0x1057
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2b
	.quad	.LVL238
	.long	0x173d
	.long	0x1070
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2b
	.quad	.LVL239
	.long	0x173d
	.long	0x1089
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2d
	.quad	.LVL240
	.long	0x173d
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	0x473
	.quad	.LBB137
	.quad	.LBE137-.LBB137
	.byte	0x1
	.value	0x24b
	.long	0x10f4
	.uleb128 0x25
	.long	0x48e
	.long	.LLST139
	.uleb128 0x25
	.long	0x483
	.long	.LLST140
	.uleb128 0x2d
	.quad	.LVL246
	.long	0x175e
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	0x473
	.quad	.LBB139
	.long	.Ldebug_ranges0+0x3a0
	.byte	0x1
	.value	0x252
	.long	0x1145
	.uleb128 0x25
	.long	0x48e
	.long	.LLST141
	.uleb128 0x25
	.long	0x483
	.long	.LLST142
	.uleb128 0x2d
	.quad	.LVL250
	.long	0x175e
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC27
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	0x438
	.quad	.LBB143
	.quad	.LBE143-.LBB143
	.byte	0x1
	.value	0x1b8
	.long	0x1182
	.uleb128 0x30
	.long	0x448
	.uleb128 0x2d
	.quad	.LVL259
	.long	0x16a2
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC18
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	0x438
	.quad	.LBB145
	.quad	.LBE145-.LBB145
	.byte	0x1
	.value	0x1ca
	.long	0x11a8
	.uleb128 0x25
	.long	0x448
	.long	.LLST144
	.byte	0
	.uleb128 0x29
	.long	0x438
	.quad	.LBB147
	.long	.Ldebug_ranges0+0x3d0
	.byte	0x1
	.value	0x254
	.long	0x11dd
	.uleb128 0x25
	.long	0x448
	.long	.LLST145
	.uleb128 0x2d
	.quad	.LVL262
	.long	0x16d8
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	0x438
	.quad	.LBB150
	.quad	.LBE150-.LBB150
	.byte	0x1
	.value	0x1ae
	.long	0x1216
	.uleb128 0x25
	.long	0x448
	.long	.LLST146
	.uleb128 0x2d
	.quad	.LVL267
	.long	0x16d8
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	0x438
	.quad	.LBB152
	.quad	.LBE152-.LBB152
	.byte	0x1
	.value	0x1a4
	.long	0x123c
	.uleb128 0x25
	.long	0x448
	.long	.LLST147
	.byte	0
	.uleb128 0x31
	.long	0x438
	.quad	.LBB154
	.quad	.LBE154-.LBB154
	.byte	0x1
	.value	0x25b
	.long	0x1262
	.uleb128 0x25
	.long	0x448
	.long	.LLST148
	.byte	0
	.uleb128 0x31
	.long	0x438
	.quad	.LBB157
	.quad	.LBE157-.LBB157
	.byte	0x1
	.value	0x248
	.long	0x1288
	.uleb128 0x25
	.long	0x448
	.long	.LLST149
	.byte	0
	.uleb128 0x31
	.long	0x438
	.quad	.LBB159
	.quad	.LBE159-.LBB159
	.byte	0x1
	.value	0x1d1
	.long	0x12b5
	.uleb128 0x34
	.long	0x448
	.uleb128 0xa
	.byte	0x3
	.quad	.LC20
	.byte	0x9f
	.byte	0
	.uleb128 0x2b
	.quad	.LVL191
	.long	0x177e
	.long	0x12cc
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.quad	.LVL196
	.long	0x1793
	.long	0x12f1
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC14
	.byte	0
	.uleb128 0x2b
	.quad	.LVL199
	.long	0x17ae
	.long	0x1323
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC16
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	numOptions
	.byte	0
	.uleb128 0x2b
	.quad	.LVL202
	.long	0x17ca
	.long	0x1342
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x76
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0
	.uleb128 0x2b
	.quad	.LVL203
	.long	0x17ca
	.long	0x1362
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xa
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x32
	.byte	0x24
	.byte	0
	.uleb128 0x2b
	.quad	.LVL207
	.long	0x17ae
	.long	0x1387
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC19
	.byte	0
	.uleb128 0x2b
	.quad	.LVL210
	.long	0x17e0
	.long	0x139f
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.quad	.LVL211
	.long	0x17f5
	.long	0x13be
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	_M4_normalMutexAttr
	.byte	0
	.uleb128 0x2b
	.quad	.LVL215
	.long	0x17ca
	.long	0x13e6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x12
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x100
	.byte	0
	.uleb128 0x2b
	.quad	.LVL218
	.long	0x17ca
	.long	0x1403
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x7
	.byte	0x7c
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x100
	.byte	0
	.uleb128 0x2b
	.quad	.LVL223
	.long	0x17ca
	.long	0x1423
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xa
	.byte	0x7d
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x32
	.byte	0x24
	.byte	0
	.uleb128 0x2b
	.quad	.LVL241
	.long	0x1811
	.long	0x143b
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.quad	.LVL242
	.long	0x1793
	.long	0x1460
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC24
	.byte	0
	.uleb128 0x2b
	.quad	.LVL253
	.long	0x17e0
	.long	0x1478
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL254
	.long	0x1811
	.uleb128 0x2a
	.quad	.LVL255
	.long	0x1811
	.uleb128 0x2b
	.quad	.LVL263
	.long	0x17e0
	.long	0x14aa
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.quad	.LVL264
	.long	0x1823
	.long	0x14c1
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2d
	.quad	.LVL268
	.long	0x1823
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x99
	.uleb128 0x6
	.byte	0x8
	.long	0x29
	.uleb128 0x6
	.byte	0x8
	.long	0x6c
	.uleb128 0x35
	.long	.LASF141
	.byte	0x6
	.byte	0xa8
	.long	0x27f
	.uleb128 0x35
	.long	.LASF142
	.byte	0x6
	.byte	0xa9
	.long	0x27f
	.uleb128 0xa
	.long	0x42
	.long	0x150e
	.uleb128 0xb
	.long	0x90
	.byte	0x7f
	.byte	0
	.uleb128 0x36
	.long	.LASF143
	.byte	0x1
	.byte	0x64
	.long	0x14fe
	.uleb128 0x9
	.byte	0x3
	.quad	_M4_threadsTable
	.uleb128 0xa
	.long	0x6c
	.long	0x1533
	.uleb128 0xb
	.long	0x90
	.byte	0x7f
	.byte	0
	.uleb128 0x36
	.long	.LASF144
	.byte	0x1
	.byte	0x65
	.long	0x1523
	.uleb128 0x9
	.byte	0x3
	.quad	_M4_threadsTableAllocated
	.uleb128 0x36
	.long	.LASF145
	.byte	0x1
	.byte	0x66
	.long	0x329
	.uleb128 0x9
	.byte	0x3
	.quad	_M4_normalMutexAttr
	.uleb128 0x36
	.long	.LASF146
	.byte	0x1
	.byte	0x67
	.long	0x6c
	.uleb128 0x9
	.byte	0x3
	.quad	_M4_numThreads
	.uleb128 0x36
	.long	.LASF147
	.byte	0x1
	.byte	0x94
	.long	0x1587
	.uleb128 0x9
	.byte	0x3
	.quad	data
	.uleb128 0x6
	.byte	0x8
	.long	0x42d
	.uleb128 0x36
	.long	.LASF148
	.byte	0x1
	.byte	0x95
	.long	0x14dc
	.uleb128 0x9
	.byte	0x3
	.quad	prices
	.uleb128 0x36
	.long	.LASF149
	.byte	0x1
	.byte	0x96
	.long	0x6c
	.uleb128 0x9
	.byte	0x3
	.quad	numOptions
	.uleb128 0x36
	.long	.LASF91
	.byte	0x1
	.byte	0x98
	.long	0x14e2
	.uleb128 0x9
	.byte	0x3
	.quad	otype
	.uleb128 0x36
	.long	.LASF87
	.byte	0x1
	.byte	0x99
	.long	0x14dc
	.uleb128 0x9
	.byte	0x3
	.quad	sptprice
	.uleb128 0x36
	.long	.LASF74
	.byte	0x1
	.byte	0x9a
	.long	0x14dc
	.uleb128 0x9
	.byte	0x3
	.quad	strike
	.uleb128 0x36
	.long	.LASF88
	.byte	0x1
	.byte	0x9b
	.long	0x14dc
	.uleb128 0x9
	.byte	0x3
	.quad	rate
	.uleb128 0x36
	.long	.LASF89
	.byte	0x1
	.byte	0x9c
	.long	0x14dc
	.uleb128 0x9
	.byte	0x3
	.quad	volatility
	.uleb128 0x36
	.long	.LASF150
	.byte	0x1
	.byte	0x9d
	.long	0x14dc
	.uleb128 0x9
	.byte	0x3
	.quad	otime
	.uleb128 0x36
	.long	.LASF151
	.byte	0x1
	.byte	0x9e
	.long	0x6c
	.uleb128 0x9
	.byte	0x3
	.quad	numError
	.uleb128 0x36
	.long	.LASF152
	.byte	0x1
	.byte	0x9f
	.long	0x6c
	.uleb128 0x9
	.byte	0x3
	.quad	nThreads
	.uleb128 0x37
	.string	"exp"
	.byte	0xa
	.byte	0x64
	.long	0x30
	.long	0x1674
	.uleb128 0x38
	.long	0x30
	.byte	0
	.uleb128 0x39
	.long	.LASF153
	.long	.LASF155
	.long	0x29
	.long	0x168b
	.uleb128 0x38
	.long	0x29
	.byte	0
	.uleb128 0x39
	.long	.LASF154
	.long	.LASF156
	.long	0x29
	.long	0x16a2
	.uleb128 0x38
	.long	0x29
	.byte	0
	.uleb128 0x39
	.long	.LASF157
	.long	.LASF158
	.long	0x6c
	.long	0x16b9
	.uleb128 0x38
	.long	0x2ab
	.byte	0
	.uleb128 0x3a
	.long	.LASF159
	.byte	0x3
	.byte	0xb7
	.long	0x73
	.long	0x16d8
	.uleb128 0x38
	.long	0x2ab
	.uleb128 0x38
	.long	0x14d6
	.uleb128 0x38
	.long	0x6c
	.byte	0
	.uleb128 0x3a
	.long	.LASF160
	.byte	0x2
	.byte	0x57
	.long	0x6c
	.long	0x16f3
	.uleb128 0x38
	.long	0x6c
	.uleb128 0x38
	.long	0x2ab
	.uleb128 0x16
	.byte	0
	.uleb128 0x3a
	.long	.LASF161
	.byte	0x9
	.byte	0xf4
	.long	0x6c
	.long	0x1717
	.uleb128 0x38
	.long	0x1717
	.uleb128 0x38
	.long	0x171d
	.uleb128 0x38
	.long	0x1728
	.uleb128 0x38
	.long	0x97
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2bd
	.uleb128 0x6
	.byte	0x8
	.long	0x1723
	.uleb128 0xd
	.long	0x2fb
	.uleb128 0x6
	.byte	0x8
	.long	0x172e
	.uleb128 0x3b
	.long	0x97
	.long	0x173d
	.uleb128 0x38
	.long	0x97
	.byte	0
	.uleb128 0x3c
	.long	.LASF162
	.byte	0x9
	.value	0x105
	.long	0x6c
	.long	0x1758
	.uleb128 0x38
	.long	0x2bd
	.uleb128 0x38
	.long	0x1758
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x97
	.uleb128 0x3a
	.long	.LASF163
	.byte	0x2
	.byte	0x55
	.long	0x6c
	.long	0x177e
	.uleb128 0x38
	.long	0x49b
	.uleb128 0x38
	.long	0x6c
	.uleb128 0x38
	.long	0x2ab
	.uleb128 0x16
	.byte	0
	.uleb128 0x3a
	.long	.LASF164
	.byte	0x6
	.byte	0xf2
	.long	0x6c
	.long	0x1793
	.uleb128 0x38
	.long	0x49b
	.byte	0
	.uleb128 0x3c
	.long	.LASF165
	.byte	0x6
	.value	0x110
	.long	0x49b
	.long	0x17ae
	.uleb128 0x38
	.long	0x2ab
	.uleb128 0x38
	.long	0x2ab
	.byte	0
	.uleb128 0x3c
	.long	.LASF166
	.byte	0x6
	.value	0x1a9
	.long	0x6c
	.long	0x17ca
	.uleb128 0x38
	.long	0x49b
	.uleb128 0x38
	.long	0x2ab
	.uleb128 0x16
	.byte	0
	.uleb128 0x3c
	.long	.LASF167
	.byte	0x3
	.value	0x1d2
	.long	0x97
	.long	0x17e0
	.uleb128 0x38
	.long	0x37
	.byte	0
	.uleb128 0x3a
	.long	.LASF168
	.byte	0x6
	.byte	0xed
	.long	0x6c
	.long	0x17f5
	.uleb128 0x38
	.long	0x49b
	.byte	0
	.uleb128 0x3c
	.long	.LASF169
	.byte	0x9
	.value	0x331
	.long	0x6c
	.long	0x180b
	.uleb128 0x38
	.long	0x180b
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x329
	.uleb128 0x3d
	.long	.LASF178
	.byte	0x3
	.value	0x1e3
	.long	0x1823
	.uleb128 0x38
	.long	0x97
	.byte	0
	.uleb128 0x3e
	.long	.LASF179
	.byte	0x3
	.value	0x21f
	.uleb128 0x38
	.long	0x6c
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
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x17
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4
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
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x5
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
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3e
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
	.quad	.LVL0
	.quad	.LVL4
	.value	0x1
	.byte	0x55
	.quad	.LVL4
	.quad	.LFE77
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL4
	.quad	.LVL5
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL3
	.quad	.LVL4
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL0
	.quad	.LVL1
	.value	0x2
	.byte	0x75
	.sleb128 0
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL2
	.quad	.LVL76
	.value	0x1
	.byte	0x5e
	.quad	.LVL77
	.quad	.LFE77
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL3
	.quad	.LVL4
	.value	0x1
	.byte	0x50
	.quad	.LVL4
	.quad	.LFE77
	.value	0x3
	.byte	0x91
	.sleb128 -76
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL5
	.quad	.LVL7
	.value	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.quad	.LVL8
	.quad	.LVL75
	.value	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.quad	.LVL77
	.quad	.LFE77
	.value	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL5
	.quad	.LVL7
	.value	0x1
	.byte	0x53
	.quad	.LVL8
	.quad	.LVL75
	.value	0x1
	.byte	0x53
	.quad	.LVL77
	.quad	.LFE77
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL5
	.quad	.LVL7
	.value	0x3
	.byte	0x91
	.sleb128 -104
	.quad	.LVL8
	.quad	.LVL9
	.value	0x1
	.byte	0x68
	.quad	.LVL9
	.quad	.LVL75
	.value	0x3
	.byte	0x91
	.sleb128 -104
	.quad	.LVL77
	.quad	.LVL79-1
	.value	0x1
	.byte	0x68
	.quad	.LVL79-1
	.quad	.LFE77
	.value	0x3
	.byte	0x91
	.sleb128 -104
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL8
	.quad	.LVL9
	.value	0x1
	.byte	0x66
	.quad	.LVL77
	.quad	.LVL79-1
	.value	0x1
	.byte	0x66
	.quad	.LVL79-1
	.quad	.LFE77
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL5
	.quad	.LVL7
	.value	0x3
	.byte	0x91
	.sleb128 -100
	.quad	.LVL8
	.quad	.LVL9
	.value	0x1
	.byte	0x67
	.quad	.LVL9
	.quad	.LVL75
	.value	0x3
	.byte	0x91
	.sleb128 -100
	.quad	.LVL77
	.quad	.LVL79-1
	.value	0x1
	.byte	0x67
	.quad	.LVL79-1
	.quad	.LFE77
	.value	0x3
	.byte	0x91
	.sleb128 -100
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL5
	.quad	.LVL7
	.value	0x3
	.byte	0x91
	.sleb128 -96
	.quad	.LVL8
	.quad	.LVL9
	.value	0x1
	.byte	0x61
	.quad	.LVL9
	.quad	.LVL75
	.value	0x3
	.byte	0x91
	.sleb128 -96
	.quad	.LVL77
	.quad	.LVL78
	.value	0x1
	.byte	0x61
	.quad	.LVL78
	.quad	.LVL79-1
	.value	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.quad	.LVL79-1
	.quad	.LFE77
	.value	0x3
	.byte	0x91
	.sleb128 -96
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL5
	.quad	.LVL7
	.value	0x3
	.byte	0x91
	.sleb128 -92
	.quad	.LVL8
	.quad	.LVL9
	.value	0x1
	.byte	0x62
	.quad	.LVL9
	.quad	.LVL75
	.value	0x3
	.byte	0x91
	.sleb128 -92
	.quad	.LVL77
	.quad	.LVL79-1
	.value	0x1
	.byte	0x62
	.quad	.LVL79-1
	.quad	.LFE77
	.value	0x3
	.byte	0x91
	.sleb128 -92
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL6
	.quad	.LVL7
	.value	0x1
	.byte	0x61
	.quad	.LVL70
	.quad	.LVL71
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL10
	.quad	.LVL11-1
	.value	0x1
	.byte	0x65
	.quad	.LVL11-1
	.quad	.LVL21
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.quad	.LVL73
	.quad	.LVL75
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL12
	.quad	.LVL22
	.value	0x1
	.byte	0x61
	.quad	.LVL73
	.quad	.LVL75
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL15
	.quad	.LVL16
	.value	0x1
	.byte	0x64
	.quad	.LVL16
	.quad	.LVL17
	.value	0x8
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x29
	.byte	0x22
	.byte	0x9f
	.quad	.LVL17
	.quad	.LVL20
	.value	0x1
	.byte	0x69
	.quad	.LVL20
	.quad	.LVL22
	.value	0xc
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x29
	.byte	0x22
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x29
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL73
	.quad	.LVL74
	.value	0x1
	.byte	0x69
	.quad	.LVL74
	.quad	.LVL75
	.value	0xc
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x29
	.byte	0x22
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x29
	.byte	0x1b
	.byte	0x9f
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL19
	.quad	.LVL23-1
	.value	0x1
	.byte	0x6c
	.quad	.LVL23-1
	.quad	.LVL45
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.quad	.LVL71
	.quad	.LVL73
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.quad	.LVL73
	.quad	.LVL75
	.value	0x1
	.byte	0x6c
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL13
	.quad	.LVL14
	.value	0xc
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.long	0x3f000000
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL14
	.quad	.LVL15
	.value	0x1
	.byte	0x64
	.quad	.LVL15
	.quad	.LVL23-1
	.value	0x10
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x29
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.long	0x3f000000
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL73
	.quad	.LVL75
	.value	0x10
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x29
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.long	0x3f000000
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL16
	.quad	.LVL23-1
	.value	0x1
	.byte	0x6b
	.quad	.LVL73
	.quad	.LVL75
	.value	0x1
	.byte	0x6b
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL19
	.quad	.LVL20
	.value	0x1
	.byte	0x69
	.quad	.LVL20
	.quad	.LVL22
	.value	0xc
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x29
	.byte	0x22
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x29
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL73
	.quad	.LVL74
	.value	0x1
	.byte	0x69
	.quad	.LVL74
	.quad	.LVL75
	.value	0xc
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x29
	.byte	0x22
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x29
	.byte	0x1b
	.byte	0x9f
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL5
	.quad	.LVL6
	.value	0x1
	.byte	0x6a
	.quad	.LVL68
	.quad	.LVL69
	.value	0x1
	.byte	0x6a
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL5
	.quad	.LVL6
	.value	0xf
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.long	0x3f800000
	.byte	0x91
	.sleb128 -88
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL5
	.quad	.LVL6
	.value	0xc
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.long	0x3f800000
	.byte	0xf5
	.uleb128 0x15
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL19
	.quad	.LVL20
	.value	0x1
	.byte	0x69
	.quad	.LVL21
	.quad	.LVL23-1
	.value	0x1
	.byte	0x69
	.quad	.LVL23-1
	.quad	.LVL40
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	.LVL73
	.quad	.LVL74
	.value	0x1
	.byte	0x69
	.quad	.LVL74
	.quad	.LVL75
	.value	0xd
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x29
	.byte	0x22
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x29
	.byte	0x1b
	.byte	0x1f
	.byte	0x9f
	.quad	0
	.quad	0
.LLST32:
	.quad	.LVL21
	.quad	.LVL42
	.value	0x1
	.byte	0x56
	.quad	.LVL74
	.quad	.LVL75
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST33:
	.quad	.LVL5
	.quad	.LVL7
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	.LVL40
	.quad	.LVL41
	.value	0x1
	.byte	0x6a
	.quad	.LVL41
	.quad	.LVL73
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	0
	.quad	0
.LLST34:
	.quad	.LVL21
	.quad	.LVL23-1
	.value	0x1
	.byte	0x69
	.quad	.LVL23-1
	.quad	.LVL40
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	0
	.quad	0
.LLST35:
	.quad	.LVL23
	.quad	.LVL24
	.value	0x6
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0x9f
	.quad	.LVL25
	.quad	.LVL27
	.value	0x6
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0x9f
	.quad	0
	.quad	0
.LLST36:
	.quad	.LVL23
	.quad	.LVL24
	.value	0x6
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0x9f
	.quad	0
	.quad	0
.LLST37:
	.quad	.LVL25
	.quad	.LVL28
	.value	0x1
	.byte	0x62
	.quad	.LVL28
	.quad	.LVL30
	.value	0x1
	.byte	0x65
	.quad	.LVL30
	.quad	.LVL31
	.value	0x1
	.byte	0x64
	.quad	.LVL31
	.quad	.LVL33
	.value	0x1
	.byte	0x6b
	.quad	.LVL33
	.quad	.LVL38
	.value	0x8
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x29
	.byte	0x1b
	.byte	0x9f
	.quad	0
	.quad	0
.LLST38:
	.quad	.LVL29
	.quad	.LVL32
	.value	0x1
	.byte	0x6a
	.quad	.LVL32
	.quad	.LVL33
	.value	0x8
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x29
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL33
	.quad	.LVL38
	.value	0x10
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x29
	.byte	0x1b
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST39:
	.quad	.LVL31
	.quad	.LVL34
	.value	0x1
	.byte	0x64
	.quad	.LVL34
	.quad	.LVL38
	.value	0x18
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x29
	.byte	0x1b
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x29
	.byte	0x1b
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST40:
	.quad	.LVL33
	.quad	.LVL35
	.value	0x1
	.byte	0x6b
	.quad	.LVL35
	.quad	.LVL38
	.value	0x20
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x29
	.byte	0x1b
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x29
	.byte	0x1b
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x29
	.byte	0x1b
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST41:
	.quad	.LVL40
	.quad	.LVL46-1
	.value	0x1
	.byte	0x6a
	.quad	.LVL71
	.quad	.LVL73
	.value	0x1
	.byte	0x6a
	.quad	0
	.quad	0
.LLST42:
	.quad	.LVL36
	.quad	.LVL39
	.value	0x1
	.byte	0x6c
	.quad	0
	.quad	0
.LLST43:
	.quad	.LVL36
	.quad	.LVL39
	.value	0x1
	.byte	0x6e
	.quad	0
	.quad	0
.LLST44:
	.quad	.LVL41
	.quad	.LVL43
	.value	0x1
	.byte	0x65
	.quad	.LVL44
	.quad	.LVL46-1
	.value	0x1
	.byte	0x65
	.quad	.LVL46-1
	.quad	.LVL66
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.quad	.LVL71
	.quad	.LVL72
	.value	0x1
	.byte	0x65
	.quad	.LVL72
	.quad	.LVL73
	.value	0x8
	.byte	0x91
	.sleb128 -84
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1f
	.byte	0x9f
	.quad	0
	.quad	0
.LLST45:
	.quad	.LVL5
	.quad	.LVL7
	.value	0x1
	.byte	0x56
	.quad	.LVL44
	.quad	.LVL71
	.value	0x1
	.byte	0x56
	.quad	.LVL72
	.quad	.LVL73
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST46:
	.quad	.LVL5
	.quad	.LVL7
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.quad	.LVL63
	.quad	.LVL66
	.value	0x1
	.byte	0x68
	.quad	.LVL66
	.quad	.LVL71
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.quad	0
	.quad	0
.LLST47:
	.quad	.LVL44
	.quad	.LVL46-1
	.value	0x1
	.byte	0x65
	.quad	.LVL46-1
	.quad	.LVL66
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.quad	0
	.quad	0
.LLST48:
	.quad	.LVL46
	.quad	.LVL47
	.value	0x6
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0x9f
	.quad	.LVL48
	.quad	.LVL50
	.value	0x6
	.byte	0xf5
	.uleb128 0x1c
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0x9f
	.quad	0
	.quad	0
.LLST49:
	.quad	.LVL46
	.quad	.LVL47
	.value	0x6
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0x9f
	.quad	0
	.quad	0
.LLST50:
	.quad	.LVL48
	.quad	.LVL51
	.value	0x1
	.byte	0x6f
	.quad	.LVL51
	.quad	.LVL53
	.value	0x1
	.byte	0x63
	.quad	.LVL53
	.quad	.LVL54
	.value	0x1
	.byte	0x61
	.quad	.LVL54
	.quad	.LVL56
	.value	0x1
	.byte	0x67
	.quad	.LVL56
	.quad	.LVL61
	.value	0x8
	.byte	0xf5
	.uleb128 0x20
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x1f
	.uleb128 0x29
	.byte	0x1b
	.byte	0x9f
	.quad	0
	.quad	0
.LLST51:
	.quad	.LVL52
	.quad	.LVL55
	.value	0x1
	.byte	0x68
	.quad	.LVL55
	.quad	.LVL56
	.value	0x8
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x29
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL56
	.quad	.LVL61
	.value	0x10
	.byte	0xf5
	.uleb128 0x20
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x1f
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf5
	.uleb128 0x20
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x1f
	.uleb128 0x29
	.byte	0x1b
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST52:
	.quad	.LVL54
	.quad	.LVL57
	.value	0x1
	.byte	0x61
	.quad	.LVL57
	.quad	.LVL61
	.value	0x18
	.byte	0xf5
	.uleb128 0x20
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x1f
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf5
	.uleb128 0x20
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x1f
	.uleb128 0x29
	.byte	0x1b
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x20
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x1f
	.uleb128 0x29
	.byte	0x1b
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST53:
	.quad	.LVL56
	.quad	.LVL58
	.value	0x1
	.byte	0x67
	.quad	.LVL58
	.quad	.LVL61
	.value	0x20
	.byte	0xf5
	.uleb128 0x20
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x1f
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf5
	.uleb128 0x20
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x1f
	.uleb128 0x29
	.byte	0x1b
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x20
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x1f
	.uleb128 0x29
	.byte	0x1b
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x20
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x1f
	.uleb128 0x29
	.byte	0x1b
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST54:
	.quad	.LVL63
	.quad	.LVL64
	.value	0x1
	.byte	0x68
	.quad	.LVL64
	.quad	.LVL65
	.value	0x8
	.byte	0xf5
	.uleb128 0x20
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x1c
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL65
	.quad	.LVL67-1
	.value	0xb
	.byte	0x91
	.sleb128 -80
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x1c
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST55:
	.quad	.LVL59
	.quad	.LVL62
	.value	0x1
	.byte	0x6a
	.quad	0
	.quad	0
.LLST56:
	.quad	.LVL59
	.quad	.LVL62
	.value	0x1
	.byte	0x6b
	.quad	0
	.quad	0
.LLST57:
	.quad	.LVL80
	.quad	.LVL81
	.value	0x1
	.byte	0x61
	.quad	.LVL81
	.quad	.LVL83-1
	.value	0x1
	.byte	0x62
	.quad	.LVL83-1
	.quad	.LVL102
	.value	0x2
	.byte	0x91
	.sleb128 -20
	.quad	.LVL102
	.quad	.LVL103
	.value	0x1
	.byte	0x62
	.quad	.LVL103
	.quad	.LFE75
	.value	0x7
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x29
	.byte	0x1f
	.byte	0x9f
	.quad	0
	.quad	0
.LLST58:
	.quad	.LVL82
	.quad	.LVL101
	.value	0x1
	.byte	0x53
	.quad	.LVL103
	.quad	.LFE75
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST59:
	.quad	.LVL99
	.quad	.LVL102
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST60:
	.quad	.LVL82
	.quad	.LVL83-1
	.value	0x1
	.byte	0x62
	.quad	.LVL83-1
	.quad	.LVL102
	.value	0x2
	.byte	0x91
	.sleb128 -20
	.quad	0
	.quad	0
.LLST61:
	.quad	.LVL83
	.quad	.LVL84
	.value	0x6
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0x9f
	.quad	.LVL85
	.quad	.LVL87
	.value	0x6
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0x9f
	.quad	0
	.quad	0
.LLST62:
	.quad	.LVL83
	.quad	.LVL84
	.value	0x6
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0x9f
	.quad	0
	.quad	0
.LLST63:
	.quad	.LVL85
	.quad	.LVL88
	.value	0x1
	.byte	0x69
	.quad	.LVL88
	.quad	.LVL94
	.value	0x1
	.byte	0x6b
	.quad	.LVL94
	.quad	.LVL97
	.value	0x8
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x29
	.byte	0x1b
	.byte	0x9f
	.quad	0
	.quad	0
.LLST64:
	.quad	.LVL89
	.quad	.LVL90
	.value	0x1
	.byte	0x6c
	.quad	.LVL90
	.quad	.LVL91
	.value	0x1
	.byte	0x6d
	.quad	.LVL91
	.quad	.LVL94
	.value	0x8
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x29
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL94
	.quad	.LVL97
	.value	0x10
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x29
	.byte	0x1b
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST65:
	.quad	.LVL91
	.quad	.LVL92
	.value	0x1
	.byte	0x6d
	.quad	.LVL92
	.quad	.LVL93
	.value	0x1
	.byte	0x6e
	.quad	.LVL93
	.quad	.LVL94
	.value	0xc
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x29
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x29
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL94
	.quad	.LVL97
	.value	0x18
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x29
	.byte	0x1b
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x29
	.byte	0x1b
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST66:
	.quad	.LVL93
	.quad	.LVL95
	.value	0x1
	.byte	0x6e
	.quad	.LVL95
	.quad	.LVL97
	.value	0x20
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x29
	.byte	0x1b
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x29
	.byte	0x1b
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x29
	.byte	0x1b
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST67:
	.quad	.LVL93
	.quad	.LVL94
	.value	0x8
	.byte	0xf5
	.uleb128 0x1e
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x29
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL94
	.quad	.LVL95
	.value	0xc
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf5
	.uleb128 0x1e
	.uleb128 0x29
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL95
	.quad	.LVL97
	.value	0x28
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x29
	.byte	0x1b
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x29
	.byte	0x1b
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x29
	.byte	0x1b
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x29
	.byte	0x1b
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST68:
	.quad	.LVL99
	.quad	.LVL100
	.value	0x1
	.byte	0x61
	.quad	.LVL100
	.quad	.LVL102
	.value	0xc
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.long	0x3f800000
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST69:
	.quad	.LVL96
	.quad	.LVL98
	.value	0x2
	.byte	0x90
	.uleb128 0x20
	.quad	0
	.quad	0
.LLST70:
	.quad	.LVL96
	.quad	.LVL98
	.value	0x1
	.byte	0x64
	.quad	0
	.quad	0
.LLST71:
	.quad	.LVL104
	.quad	.LVL110
	.value	0x1
	.byte	0x61
	.quad	.LVL110
	.quad	.LVL185
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	.LVL185
	.quad	.LVL186
	.value	0x1
	.byte	0x61
	.quad	.LVL186
	.quad	.LFE76
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	0
	.quad	0
.LLST72:
	.quad	.LVL104
	.quad	.LVL110
	.value	0x1
	.byte	0x62
	.quad	.LVL110
	.quad	.LVL185
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.quad	.LVL185
	.quad	.LVL187-1
	.value	0x1
	.byte	0x62
	.quad	.LVL187-1
	.quad	.LFE76
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.quad	0
	.quad	0
.LLST73:
	.quad	.LVL104
	.quad	.LVL110
	.value	0x1
	.byte	0x63
	.quad	.LVL110
	.quad	.LVL185
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.quad	.LVL185
	.quad	.LVL187-1
	.value	0x1
	.byte	0x63
	.quad	.LVL187-1
	.quad	.LFE76
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.quad	0
	.quad	0
.LLST74:
	.quad	.LVL104
	.quad	.LVL110
	.value	0x1
	.byte	0x64
	.quad	.LVL110
	.quad	.LVL185
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x29
	.byte	0x9f
	.quad	.LVL185
	.quad	.LVL187-1
	.value	0x1
	.byte	0x64
	.quad	.LVL187-1
	.quad	.LFE76
	.value	0x2
	.byte	0x91
	.sleb128 -44
	.quad	0
	.quad	0
.LLST75:
	.quad	.LVL104
	.quad	.LVL106
	.value	0x1
	.byte	0x65
	.quad	.LVL106
	.quad	.LFE76
	.value	0x3
	.byte	0x91
	.sleb128 -76
	.quad	0
	.quad	0
.LLST76:
	.quad	.LVL104
	.quad	.LVL110
	.value	0x1
	.byte	0x55
	.quad	.LVL110
	.quad	.LVL173
	.value	0x1
	.byte	0x53
	.quad	.LVL173
	.quad	.LVL176
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL176
	.quad	.LVL178
	.value	0x1
	.byte	0x53
	.quad	.LVL178
	.quad	.LVL181
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL181
	.quad	.LFE76
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST77:
	.quad	.LVL104
	.quad	.LVL110
	.value	0x1
	.byte	0x66
	.quad	.LVL110
	.quad	.LVL185
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x29
	.byte	0x9f
	.quad	.LVL185
	.quad	.LVL187-1
	.value	0x1
	.byte	0x66
	.quad	.LVL187-1
	.quad	.LFE76
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x29
	.byte	0x9f
	.quad	0
	.quad	0
.LLST78:
	.quad	.LVL175
	.quad	.LVL176
	.value	0x1
	.byte	0x61
	.quad	.LVL180
	.quad	.LVL181
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST79:
	.quad	.LVL105
	.quad	.LVL107
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	0
	.quad	0
.LLST80:
	.quad	.LVL105
	.quad	.LVL108
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.quad	0
	.quad	0
.LLST81:
	.quad	.LVL105
	.quad	.LVL109
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.quad	0
	.quad	0
.LLST82:
	.quad	.LVL105
	.quad	.LVL110
	.value	0x1
	.byte	0x64
	.quad	.LVL110
	.quad	.LVL185
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x29
	.byte	0x9f
	.quad	.LVL185
	.quad	.LVL187-1
	.value	0x1
	.byte	0x64
	.quad	.LVL187-1
	.quad	.LFE76
	.value	0x2
	.byte	0x91
	.sleb128 -44
	.quad	0
	.quad	0
.LLST83:
	.quad	.LVL105
	.quad	.LVL106
	.value	0x1
	.byte	0x65
	.quad	.LVL106
	.quad	.LFE76
	.value	0x3
	.byte	0x91
	.sleb128 -76
	.quad	0
	.quad	0
.LLST84:
	.quad	.LVL111
	.quad	.LVL112
	.value	0x2
	.byte	0x91
	.sleb128 -64
	.quad	0
	.quad	0
.LLST85:
	.quad	.LVL114
	.quad	.LVL115
	.value	0x1
	.byte	0x61
	.quad	.LVL115
	.quad	.LVL120
	.value	0x1
	.byte	0x62
	.quad	0
	.quad	0
.LLST87:
	.quad	.LVL118
	.quad	.LVL119
	.value	0x1
	.byte	0x63
	.quad	.LVL119
	.quad	.LVL120
	.value	0x8
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x29
	.byte	0x22
	.byte	0x9f
	.quad	.LVL120
	.quad	.LVL123
	.value	0x1
	.byte	0x62
	.quad	.LVL183
	.quad	.LVL184
	.value	0x1
	.byte	0x62
	.quad	0
	.quad	0
.LLST88:
	.quad	.LVL122
	.quad	.LVL126-1
	.value	0x1
	.byte	0x66
	.quad	.LVL126-1
	.quad	.LVL148
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.quad	.LVL181
	.quad	.LVL183
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.quad	.LVL183
	.quad	.LVL185
	.value	0x1
	.byte	0x66
	.quad	0
	.quad	0
.LLST89:
	.quad	.LVL116
	.quad	.LVL117
	.value	0xc
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.long	0x3f000000
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL117
	.quad	.LVL118
	.value	0x1
	.byte	0x63
	.quad	.LVL118
	.quad	.LVL126-1
	.value	0x10
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x29
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.long	0x3f000000
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL183
	.quad	.LVL185
	.value	0x10
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x29
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.long	0x3f000000
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST90:
	.quad	.LVL119
	.quad	.LVL125
	.value	0x1
	.byte	0x61
	.quad	.LVL183
	.quad	.LVL185
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST91:
	.quad	.LVL122
	.quad	.LVL123
	.value	0x1
	.byte	0x62
	.quad	.LVL183
	.quad	.LVL184
	.value	0x1
	.byte	0x62
	.quad	0
	.quad	0
.LLST93:
	.quad	.LVL171
	.quad	.LVL177
	.value	0x2
	.byte	0x90
	.uleb128 0x20
	.quad	0
	.quad	0
.LLST94:
	.quad	.LVL172
	.quad	.LVL176
	.value	0xe
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.long	0x3f800000
	.byte	0x91
	.sleb128 -44
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST95:
	.quad	.LVL172
	.quad	.LVL176
	.value	0xc
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.long	0x3f800000
	.byte	0xf5
	.uleb128 0x15
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST96:
	.quad	.LVL122
	.quad	.LVL123
	.value	0x1
	.byte	0x62
	.quad	.LVL124
	.quad	.LVL126-1
	.value	0x1
	.byte	0x62
	.quad	.LVL126-1
	.quad	.LVL143
	.value	0x2
	.byte	0x91
	.sleb128 -44
	.quad	.LVL183
	.quad	.LVL184
	.value	0x1
	.byte	0x62
	.quad	0
	.quad	0
.LLST97:
	.quad	.LVL124
	.quad	.LVL145
	.value	0x1
	.byte	0x56
	.quad	.LVL184
	.quad	.LVL185
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST98:
	.quad	.LVL143
	.quad	.LVL144
	.value	0x1
	.byte	0x62
	.quad	.LVL144
	.quad	.LVL183
	.value	0x2
	.byte	0x91
	.sleb128 -44
	.quad	0
	.quad	0
.LLST99:
	.quad	.LVL124
	.quad	.LVL126-1
	.value	0x1
	.byte	0x62
	.quad	.LVL126-1
	.quad	.LVL143
	.value	0x2
	.byte	0x91
	.sleb128 -44
	.quad	0
	.quad	0
.LLST100:
	.quad	.LVL126
	.quad	.LVL127
	.value	0x6
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0x9f
	.quad	.LVL128
	.quad	.LVL130
	.value	0x6
	.byte	0xf5
	.uleb128 0x1d
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0x9f
	.quad	0
	.quad	0
.LLST101:
	.quad	.LVL126
	.quad	.LVL127
	.value	0x6
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0x9f
	.quad	0
	.quad	0
.LLST102:
	.quad	.LVL128
	.quad	.LVL131
	.value	0x2
	.byte	0x90
	.uleb128 0x20
	.quad	.LVL131
	.quad	.LVL133
	.value	0x1
	.byte	0x65
	.quad	.LVL133
	.quad	.LVL134
	.value	0x1
	.byte	0x64
	.quad	.LVL134
	.quad	.LVL136
	.value	0x1
	.byte	0x68
	.quad	.LVL136
	.quad	.LVL141
	.value	0x8
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x20
	.uleb128 0x29
	.byte	0x1b
	.byte	0x9f
	.quad	0
	.quad	0
.LLST103:
	.quad	.LVL132
	.quad	.LVL135
	.value	0x1
	.byte	0x62
	.quad	.LVL135
	.quad	.LVL136
	.value	0x8
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x29
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL136
	.quad	.LVL141
	.value	0x10
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x20
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x20
	.uleb128 0x29
	.byte	0x1b
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST104:
	.quad	.LVL134
	.quad	.LVL137
	.value	0x1
	.byte	0x64
	.quad	.LVL137
	.quad	.LVL141
	.value	0x18
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x20
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x20
	.uleb128 0x29
	.byte	0x1b
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x20
	.uleb128 0x29
	.byte	0x1b
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST105:
	.quad	.LVL136
	.quad	.LVL138
	.value	0x1
	.byte	0x68
	.quad	.LVL138
	.quad	.LVL141
	.value	0x20
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x20
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x20
	.uleb128 0x29
	.byte	0x1b
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x20
	.uleb128 0x29
	.byte	0x1b
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x20
	.uleb128 0x29
	.byte	0x1b
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST106:
	.quad	.LVL143
	.quad	.LVL149-1
	.value	0x1
	.byte	0x62
	.quad	.LVL181
	.quad	.LVL183
	.value	0x1
	.byte	0x62
	.quad	0
	.quad	0
.LLST107:
	.quad	.LVL139
	.quad	.LVL142
	.value	0x1
	.byte	0x66
	.quad	0
	.quad	0
.LLST108:
	.quad	.LVL139
	.quad	.LVL142
	.value	0x1
	.byte	0x69
	.quad	0
	.quad	0
.LLST109:
	.quad	.LVL144
	.quad	.LVL146
	.value	0x1
	.byte	0x65
	.quad	.LVL147
	.quad	.LVL149-1
	.value	0x1
	.byte	0x65
	.quad	.LVL149-1
	.quad	.LVL169
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.quad	.LVL181
	.quad	.LVL182
	.value	0x1
	.byte	0x65
	.quad	.LVL182
	.quad	.LVL183
	.value	0x7
	.byte	0x91
	.sleb128 -40
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1f
	.byte	0x9f
	.quad	0
	.quad	0
.LLST110:
	.quad	.LVL147
	.quad	.LVL174
	.value	0x1
	.byte	0x56
	.quad	.LVL176
	.quad	.LVL179
	.value	0x1
	.byte	0x56
	.quad	.LVL182
	.quad	.LVL183
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST111:
	.quad	.LVL166
	.quad	.LVL169
	.value	0x1
	.byte	0x6e
	.quad	.LVL169
	.quad	.LVL181
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.quad	0
	.quad	0
.LLST112:
	.quad	.LVL147
	.quad	.LVL149-1
	.value	0x1
	.byte	0x65
	.quad	.LVL149-1
	.quad	.LVL169
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.quad	0
	.quad	0
.LLST113:
	.quad	.LVL149
	.quad	.LVL150
	.value	0x6
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0x9f
	.quad	.LVL151
	.quad	.LVL153
	.value	0x6
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0x9f
	.quad	0
	.quad	0
.LLST114:
	.quad	.LVL149
	.quad	.LVL150
	.value	0x6
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0x9f
	.quad	0
	.quad	0
.LLST115:
	.quad	.LVL151
	.quad	.LVL154
	.value	0x1
	.byte	0x6a
	.quad	.LVL154
	.quad	.LVL156
	.value	0x1
	.byte	0x6c
	.quad	.LVL156
	.quad	.LVL157
	.value	0x1
	.byte	0x6d
	.quad	.LVL157
	.quad	.LVL159
	.value	0x1
	.byte	0x6f
	.quad	.LVL159
	.quad	.LVL164
	.value	0x8
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x29
	.byte	0x1b
	.byte	0x9f
	.quad	0
	.quad	0
.LLST116:
	.quad	.LVL155
	.quad	.LVL158
	.value	0x1
	.byte	0x6e
	.quad	.LVL158
	.quad	.LVL159
	.value	0x8
	.byte	0xf5
	.uleb128 0x1f
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x1f
	.uleb128 0x29
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL159
	.quad	.LVL164
	.value	0x10
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x29
	.byte	0x1b
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST117:
	.quad	.LVL157
	.quad	.LVL160
	.value	0x1
	.byte	0x6d
	.quad	.LVL160
	.quad	.LVL164
	.value	0x18
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x29
	.byte	0x1b
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x29
	.byte	0x1b
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST118:
	.quad	.LVL159
	.quad	.LVL161
	.value	0x1
	.byte	0x6f
	.quad	.LVL161
	.quad	.LVL164
	.value	0x20
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x29
	.byte	0x1b
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x29
	.byte	0x1b
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x29
	.byte	0x1b
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST119:
	.quad	.LVL166
	.quad	.LVL167
	.value	0x1
	.byte	0x6e
	.quad	.LVL167
	.quad	.LVL168
	.value	0x8
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL168
	.quad	.LVL170-1
	.value	0xa
	.byte	0x91
	.sleb128 -36
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST120:
	.quad	.LVL162
	.quad	.LVL165
	.value	0x1
	.byte	0x65
	.quad	0
	.quad	0
.LLST121:
	.quad	.LVL162
	.quad	.LVL165
	.value	0x1
	.byte	0x68
	.quad	0
	.quad	0
.LLST122:
	.quad	.LVL188
	.quad	.LVL189
	.value	0x1
	.byte	0x55
	.quad	.LVL189
	.quad	.LVL201
	.value	0x1
	.byte	0x56
	.quad	.LVL201
	.quad	.LVL258
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL258
	.quad	.LVL260
	.value	0x1
	.byte	0x56
	.quad	.LVL260
	.quad	.LVL264
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL264
	.quad	.LVL265
	.value	0x1
	.byte	0x56
	.quad	.LVL265
	.quad	.LVL268
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL268
	.quad	.LVL269
	.value	0x1
	.byte	0x56
	.quad	.LVL269
	.quad	.LFE78
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST123:
	.quad	.LVL188
	.quad	.LVL190-1
	.value	0x1
	.byte	0x54
	.quad	.LVL190-1
	.quad	.LVL195
	.value	0x1
	.byte	0x53
	.quad	.LVL195
	.quad	.LVL268
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL268
	.quad	.LVL269
	.value	0x1
	.byte	0x53
	.quad	.LVL269
	.quad	.LFE78
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST124:
	.quad	.LVL197
	.quad	.LVL198
	.value	0x1
	.byte	0x50
	.quad	.LVL198
	.quad	.LVL199-1
	.value	0x1
	.byte	0x55
	.quad	.LVL199-1
	.quad	.LVL216
	.value	0x1
	.byte	0x5d
	.quad	.LVL243
	.quad	.LVL245
	.value	0x1
	.byte	0x50
	.quad	.LVL245
	.quad	.LVL246-1
	.value	0x1
	.byte	0x55
	.quad	.LVL246-1
	.quad	.LVL257
	.value	0x1
	.byte	0x5d
	.quad	.LVL258
	.quad	.LVL264
	.value	0x1
	.byte	0x5d
	.quad	.LVL264
	.quad	.LVL266
	.value	0x1
	.byte	0x50
	.quad	.LVL269
	.quad	.LVL271
	.value	0x1
	.byte	0x5d
	.quad	.LVL271
	.quad	.LVL272
	.value	0x1
	.byte	0x50
	.quad	.LVL272
	.quad	.LFE78
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST125:
	.quad	.LVL219
	.quad	.LVL221
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL224
	.quad	.LVL225
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL225
	.quad	.LVL228
	.value	0x1
	.byte	0x5c
	.quad	.LVL228
	.quad	.LVL229
	.value	0x2
	.byte	0x7d
	.sleb128 0
	.quad	.LVL229
	.quad	.LVL230-1
	.value	0x2
	.byte	0x72
	.sleb128 0
	.quad	.LVL230-1
	.quad	.LVL230
	.value	0x3
	.byte	0x7c
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL230
	.quad	.LVL231
	.value	0x1
	.byte	0x5c
	.quad	.LVL247
	.quad	.LVL249
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL249
	.quad	.LVL252
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST126:
	.quad	.LVL204
	.quad	.LVL205
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL205
	.quad	.LVL209
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST127:
	.quad	.LVL215
	.quad	.LVL218-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST128:
	.quad	.LVL218
	.quad	.LVL220
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST129:
	.quad	.LVL199
	.quad	.LVL200
	.value	0x1
	.byte	0x50
	.quad	.LVL205
	.quad	.LVL206
	.value	0x1
	.byte	0x50
	.quad	.LVL207
	.quad	.LVL209
	.value	0x1
	.byte	0x50
	.quad	.LVL210
	.quad	.LVL211-1
	.value	0x1
	.byte	0x50
	.quad	.LVL253
	.quad	.LVL254-1
	.value	0x1
	.byte	0x50
	.quad	.LVL258
	.quad	.LVL259-1
	.value	0x1
	.byte	0x50
	.quad	.LVL260
	.quad	.LVL261
	.value	0x1
	.byte	0x50
	.quad	.LVL269
	.quad	.LVL270
	.value	0x1
	.byte	0x50
	.quad	.LVL272
	.quad	.LFE78
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST130:
	.quad	.LVL194
	.quad	.LVL217
	.value	0x1
	.byte	0x5e
	.quad	.LVL258
	.quad	.LVL261
	.value	0x1
	.byte	0x5e
	.quad	.LVL264
	.quad	.LVL265
	.value	0x1
	.byte	0x5e
	.quad	.LVL272
	.quad	.LFE78
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST131:
	.quad	.LVL195
	.quad	.LVL256
	.value	0x1
	.byte	0x53
	.quad	.LVL258
	.quad	.LVL266
	.value	0x1
	.byte	0x53
	.quad	.LVL269
	.quad	.LFE78
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST132:
	.quad	.LVL224
	.quad	.LVL225
	.value	0x1
	.byte	0x50
	.quad	.LVL225
	.quad	.LVL248
	.value	0x1
	.byte	0x56
	.quad	.LVL271
	.quad	.LVL272
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST133:
	.quad	.LVL192
	.quad	.LVL193-1
	.value	0x2
	.byte	0x73
	.sleb128 8
	.quad	0
	.quad	0
.LLST134:
	.quad	.LVL212
	.quad	.LVL258
	.value	0xa
	.byte	0x3
	.quad	.LC21
	.byte	0x9f
	.quad	.LVL269
	.quad	.LVL272
	.value	0xa
	.byte	0x3
	.quad	.LC21
	.byte	0x9f
	.quad	0
	.quad	0
.LLST135:
	.quad	.LVL213
	.quad	.LVL258
	.value	0xa
	.byte	0x3
	.quad	.LC22
	.byte	0x9f
	.quad	.LVL269
	.quad	.LVL272
	.value	0xa
	.byte	0x3
	.quad	.LC22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST136:
	.quad	.LVL221
	.quad	.LVL258
	.value	0xa
	.byte	0x3
	.quad	.LC23
	.byte	0x9f
	.quad	.LVL269
	.quad	.LVL272
	.value	0xa
	.byte	0x3
	.quad	.LC23
	.byte	0x9f
	.quad	0
	.quad	0
.LLST137:
	.quad	.LVL226
	.quad	.LVL227
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST138:
	.quad	.LVL231
	.quad	.LVL232
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST139:
	.quad	.LVL244
	.quad	.LVL258
	.value	0xa
	.byte	0x3
	.quad	.LC25
	.byte	0x9f
	.quad	.LVL269
	.quad	.LVL271
	.value	0xa
	.byte	0x3
	.quad	.LC25
	.byte	0x9f
	.quad	0
	.quad	0
.LLST140:
	.quad	.LVL244
	.quad	.LVL245
	.value	0x1
	.byte	0x50
	.quad	.LVL245
	.quad	.LVL246-1
	.value	0x1
	.byte	0x55
	.quad	.LVL246-1
	.quad	.LVL257
	.value	0x1
	.byte	0x5d
	.quad	.LVL269
	.quad	.LVL271
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST141:
	.quad	.LVL249
	.quad	.LVL252
	.value	0xa
	.byte	0x3
	.quad	.LC27
	.byte	0x9f
	.quad	0
	.quad	0
.LLST142:
	.quad	.LVL249
	.quad	.LVL252
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST144:
	.quad	.LVL260
	.quad	.LVL261
	.value	0xa
	.byte	0x3
	.quad	.LC17
	.byte	0x9f
	.quad	0
	.quad	0
.LLST145:
	.quad	.LVL270
	.quad	.LVL271
	.value	0xa
	.byte	0x3
	.quad	.LC26
	.byte	0x9f
	.quad	0
	.quad	0
.LLST146:
	.quad	.LVL264
	.quad	.LVL265
	.value	0xa
	.byte	0x3
	.quad	.LC15
	.byte	0x9f
	.quad	0
	.quad	0
.LLST147:
	.quad	.LVL268
	.quad	.LVL269
	.value	0xa
	.byte	0x3
	.quad	.LC13
	.byte	0x9f
	.quad	0
	.quad	0
.LLST148:
	.quad	.LVL269
	.quad	.LVL270
	.value	0xa
	.byte	0x3
	.quad	.LC20
	.byte	0x9f
	.quad	0
	.quad	0
.LLST149:
	.quad	.LVL271
	.quad	.LVL272
	.value	0xa
	.byte	0x3
	.quad	.LC15
	.byte	0x9f
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB53
	.quad	.LBE53
	.quad	.LBB76
	.quad	.LBE76
	.quad	.LBB77
	.quad	.LBE77
	.quad	0
	.quad	0
	.quad	.LBB54
	.quad	.LBE54
	.quad	.LBB73
	.quad	.LBE73
	.quad	.LBB74
	.quad	.LBE74
	.quad	.LBB75
	.quad	.LBE75
	.quad	0
	.quad	0
	.quad	.LBB56
	.quad	.LBE56
	.quad	.LBB62
	.quad	.LBE62
	.quad	.LBB63
	.quad	.LBE63
	.quad	.LBB64
	.quad	.LBE64
	.quad	.LBB69
	.quad	.LBE69
	.quad	0
	.quad	0
	.quad	.LBB65
	.quad	.LBE65
	.quad	.LBB68
	.quad	.LBE68
	.quad	0
	.quad	0
	.quad	.LBB79
	.quad	.LBE79
	.quad	.LBB80
	.quad	.LBE80
	.quad	.LBB81
	.quad	.LBE81
	.quad	0
	.quad	0
	.quad	.LBB89
	.quad	.LBE89
	.quad	.LBB102
	.quad	.LBE102
	.quad	.LBB103
	.quad	.LBE103
	.quad	.LBB104
	.quad	.LBE104
	.quad	.LBB105
	.quad	.LBE105
	.quad	.LBB106
	.quad	.LBE106
	.quad	0
	.quad	0
	.quad	.LBB90
	.quad	.LBE90
	.quad	.LBB95
	.quad	.LBE95
	.quad	.LBB96
	.quad	.LBE96
	.quad	.LBB101
	.quad	.LBE101
	.quad	0
	.quad	0
	.quad	.LBB97
	.quad	.LBE97
	.quad	.LBB100
	.quad	.LBE100
	.quad	0
	.quad	0
	.quad	.LBB107
	.quad	.LBE107
	.quad	.LBB161
	.quad	.LBE161
	.quad	.LBB162
	.quad	.LBE162
	.quad	0
	.quad	0
	.quad	.LBB108
	.quad	.LBE108
	.quad	.LBB111
	.quad	.LBE111
	.quad	0
	.quad	0
	.quad	.LBB112
	.quad	.LBE112
	.quad	.LBB115
	.quad	.LBE115
	.quad	0
	.quad	0
	.quad	.LBB116
	.quad	.LBE116
	.quad	.LBB119
	.quad	.LBE119
	.quad	0
	.quad	0
	.quad	.LBB122
	.quad	.LBE122
	.quad	.LBB125
	.quad	.LBE125
	.quad	0
	.quad	0
	.quad	.LBB128
	.quad	.LBE128
	.quad	.LBB129
	.quad	.LBE129
	.quad	.LBB130
	.quad	.LBE130
	.quad	.LBB131
	.quad	.LBE131
	.quad	0
	.quad	0
	.quad	.LBB139
	.quad	.LBE139
	.quad	.LBB142
	.quad	.LBE142
	.quad	0
	.quad	0
	.quad	.LBB147
	.quad	.LBE147
	.quad	.LBB156
	.quad	.LBE156
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB78
	.quad	.LFE78
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF50:
	.string	"pthread_t"
.LASF34:
	.string	"_shortbuf"
.LASF173:
	.string	"_IO_lock_t"
.LASF79:
	.string	"OptionData"
.LASF157:
	.string	"__builtin_puts"
.LASF23:
	.string	"_IO_buf_end"
.LASF58:
	.string	"PTHREAD_MUTEX_ERRORCHECK_NP"
.LASF54:
	.string	"pthread_mutexattr_t"
.LASF164:
	.string	"fflush"
.LASF110:
	.string	"InputX"
.LASF127:
	.string	"_Z4CNDFf"
.LASF21:
	.string	"_IO_write_end"
.LASF5:
	.string	"unsigned int"
.LASF150:
	.string	"otime"
.LASF15:
	.string	"_flags"
.LASF175:
	.string	"bs_thread"
.LASF162:
	.string	"pthread_join"
.LASF70:
	.string	"PTHREAD_RWLOCK_PREFER_WRITER_NP"
.LASF27:
	.string	"_markers"
.LASF161:
	.string	"pthread_create"
.LASF63:
	.string	"PTHREAD_MUTEX_DEFAULT"
.LASF148:
	.string	"prices"
.LASF144:
	.string	"_M4_threadsTableAllocated"
.LASF56:
	.string	"PTHREAD_MUTEX_TIMED_NP"
.LASF64:
	.string	"PTHREAD_MUTEX_FAST_NP"
.LASF48:
	.string	"_pos"
.LASF133:
	.string	"loopnum"
.LASF136:
	.string	"inputFile"
.LASF26:
	.string	"_IO_save_end"
.LASF0:
	.string	"float"
.LASF122:
	.string	"xLocal_2"
.LASF123:
	.string	"xLocal_3"
.LASF167:
	.string	"malloc"
.LASF139:
	.string	"_M4_i"
.LASF74:
	.string	"strike"
.LASF90:
	.string	"time"
.LASF95:
	.string	"xStrikePrice"
.LASF55:
	.string	"long long unsigned int"
.LASF132:
	.string	"file"
.LASF72:
	.string	"PTHREAD_RWLOCK_DEFAULT_NP"
.LASF120:
	.string	"xLocal"
.LASF170:
	.string	"GNU C++ 4.8.4 -mtune=generic -march=x86-64 -g -O3 -funroll-loops -fprefetch-loop-arrays -fpermissive -fno-exceptions -fstack-protector"
.LASF61:
	.string	"PTHREAD_MUTEX_RECURSIVE"
.LASF25:
	.string	"_IO_backup_base"
.LASF36:
	.string	"_offset"
.LASF53:
	.string	"pthread_attr_t"
.LASF83:
	.string	"fprintf"
.LASF29:
	.string	"_fileno"
.LASF158:
	.string	"puts"
.LASF9:
	.string	"size_t"
.LASF111:
	.string	"sign"
.LASF152:
	.string	"nThreads"
.LASF159:
	.string	"strtol"
.LASF18:
	.string	"_IO_read_base"
.LASF73:
	.string	"OptionData_"
.LASF113:
	.string	"xInput"
.LASF130:
	.string	"argc"
.LASF141:
	.string	"stdin"
.LASF46:
	.string	"_next"
.LASF178:
	.string	"free"
.LASF80:
	.string	"__fmt"
.LASF179:
	.string	"exit"
.LASF98:
	.string	"xTime"
.LASF103:
	.string	"xDen"
.LASF84:
	.string	"__stream"
.LASF117:
	.string	"xK2_3"
.LASF118:
	.string	"xK2_4"
.LASF119:
	.string	"xK2_5"
.LASF13:
	.string	"char"
.LASF163:
	.string	"__fprintf_chk"
.LASF88:
	.string	"rate"
.LASF42:
	.string	"_mode"
.LASF71:
	.string	"PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP"
.LASF45:
	.string	"_IO_marker"
.LASF16:
	.string	"_IO_read_ptr"
.LASF105:
	.string	"NofXd1"
.LASF65:
	.string	"PTHREAD_MUTEX_STALLED"
.LASF147:
	.string	"data"
.LASF62:
	.string	"PTHREAD_MUTEX_ERRORCHECK"
.LASF94:
	.string	"xStockPrice"
.LASF116:
	.string	"xK2_2"
.LASF107:
	.string	"NegNofXd1"
.LASF108:
	.string	"NegNofXd2"
.LASF100:
	.string	"logValues"
.LASF19:
	.string	"_IO_write_base"
.LASF81:
	.string	"__nptr"
.LASF106:
	.string	"NofXd2"
.LASF49:
	.string	"long long int"
.LASF82:
	.string	"printf"
.LASF24:
	.string	"_IO_save_base"
.LASF160:
	.string	"__printf_chk"
.LASF171:
	.string	"/tmp/tmp.ddlL0rqXUR.cpp"
.LASF76:
	.string	"OptionType"
.LASF166:
	.string	"fscanf"
.LASF134:
	.string	"buffer"
.LASF129:
	.string	"tid_ptr"
.LASF153:
	.string	"__builtin_logf"
.LASF128:
	.string	"_Z19BlkSchlsEqEuroNoDivfffffif"
.LASF176:
	.string	"_Z9bs_threadPv"
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
.LASF99:
	.string	"xSqrtTime"
.LASF96:
	.string	"xRiskFreeRate"
.LASF165:
	.string	"fopen"
.LASF33:
	.string	"_vtable_offset"
.LASF112:
	.string	"OutputX"
.LASF131:
	.string	"argv"
.LASF121:
	.string	"xLocal_1"
.LASF59:
	.string	"PTHREAD_MUTEX_ADAPTIVE_NP"
.LASF91:
	.string	"otype"
.LASF60:
	.string	"PTHREAD_MUTEX_NORMAL"
.LASF17:
	.string	"_IO_read_end"
.LASF7:
	.string	"short int"
.LASF78:
	.string	"DGrefval"
.LASF8:
	.string	"long int"
.LASF145:
	.string	"_M4_normalMutexAttr"
.LASF109:
	.string	"CNDF"
.LASF174:
	.string	"19pthread_mutexattr_t"
.LASF86:
	.string	"BlkSchlsEqEuroNoDiv"
.LASF138:
	.string	"tids"
.LASF146:
	.string	"_M4_numThreads"
.LASF114:
	.string	"xNPrimeofX"
.LASF168:
	.string	"fclose"
.LASF89:
	.string	"volatility"
.LASF140:
	.string	"_M4_ret"
.LASF126:
	.string	"start"
.LASF75:
	.string	"divq"
.LASF77:
	.string	"divs"
.LASF35:
	.string	"_lock"
.LASF12:
	.string	"sizetype"
.LASF68:
	.string	"PTHREAD_MUTEX_ROBUST_NP"
.LASF2:
	.string	"long unsigned int"
.LASF31:
	.string	"_old_offset"
.LASF44:
	.string	"_IO_FILE"
.LASF115:
	.string	"expValues"
.LASF93:
	.string	"OptionPrice"
.LASF69:
	.string	"PTHREAD_RWLOCK_PREFER_READER_NP"
.LASF149:
	.string	"numOptions"
.LASF87:
	.string	"sptprice"
.LASF67:
	.string	"PTHREAD_MUTEX_ROBUST"
.LASF135:
	.string	"buffer2"
.LASF172:
	.string	"/home/jad5ju/Projects/goa2/benchmarks/blackscholes"
.LASF154:
	.string	"__builtin_sqrtf"
.LASF3:
	.string	"unsigned char"
.LASF47:
	.string	"_sbuf"
.LASF102:
	.string	"xPowerTerm"
.LASF20:
	.string	"_IO_write_ptr"
.LASF57:
	.string	"PTHREAD_MUTEX_RECURSIVE_NP"
.LASF101:
	.string	"xLogTerm"
.LASF66:
	.string	"PTHREAD_MUTEX_STALLED_NP"
.LASF142:
	.string	"stdout"
.LASF156:
	.string	"sqrtf"
.LASF10:
	.string	"__off_t"
.LASF6:
	.string	"signed char"
.LASF4:
	.string	"short unsigned int"
.LASF177:
	.string	"main"
.LASF85:
	.string	"atoi"
.LASF124:
	.string	"price"
.LASF97:
	.string	"xVolatility"
.LASF1:
	.string	"double"
.LASF104:
	.string	"FutureValueX"
.LASF52:
	.string	"__align"
.LASF28:
	.string	"_chain"
.LASF125:
	.string	"priceDelta"
.LASF143:
	.string	"_M4_threadsTable"
.LASF14:
	.string	"FILE"
.LASF30:
	.string	"_flags2"
.LASF92:
	.string	"timet"
.LASF151:
	.string	"numError"
.LASF51:
	.string	"__size"
.LASF137:
	.string	"outputFile"
.LASF32:
	.string	"_cur_column"
.LASF169:
	.string	"pthread_mutexattr_init"
.LASF11:
	.string	"__off64_t"
.LASF43:
	.string	"_unused2"
.LASF22:
	.string	"_IO_buf_base"
.LASF155:
	.string	"logf"
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
