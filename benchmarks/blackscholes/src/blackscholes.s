	.file	"blackscholes.m4.cpp"
	.text
.Ltext0:
	.p2align 4,,15
	.globl	_Z4CNDFf
	.type	_Z4CNDFf, @function
_Z4CNDFf:
.LFB76:
	.file 1 "blackscholes.m4.cpp"
	.loc 1 170 0
	.cfi_startproc
.LVL0:
	movaps	%xmm0, %xmm1
	pushq	%rbx
.LCFI0:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
.LBB41:
	.loc 1 184 0
	xorps	%xmm0, %xmm0
.LVL1:
	.loc 1 188 0
	xorl	%ebx, %ebx
.LBE41:
	.loc 1 170 0
	subq	$16, %rsp
.LCFI1:
	.cfi_def_cfa_offset 32
.LBB42:
	.loc 1 184 0
	ucomiss	%xmm1, %xmm0
	ja	.L12
.L2:
.LVL2:
	.loc 1 193 0
	movss	.LC2(%rip), %xmm3
	mulss	%xmm1, %xmm3
	movss	%xmm1, (%rsp)
	mulss	%xmm1, %xmm3
	unpcklps	%xmm3, %xmm3
	cvtps2pd	%xmm3, %xmm0
	call	exp
.LVL3:
	.loc 1 197 0
	movss	(%rsp), %xmm4
	.loc 1 220 0
	testl	%ebx, %ebx
	.loc 1 197 0
	unpcklps	%xmm4, %xmm4
	.loc 1 198 0
	movss	.LC4(%rip), %xmm7
	.loc 1 193 0
	unpcklpd	%xmm0, %xmm0
.LVL4:
	.loc 1 199 0
	movaps	%xmm7, %xmm8
	.loc 1 197 0
	cvtps2pd	%xmm4, %xmm5
	.loc 1 193 0
	cvtpd2ps	%xmm0, %xmm0
	.loc 1 197 0
	mulsd	.LC3(%rip), %xmm5
	unpcklpd	%xmm5, %xmm5
	.loc 1 195 0
	unpcklps	%xmm0, %xmm0
	.loc 1 197 0
	cvtpd2ps	%xmm5, %xmm6
.LVL5:
	.loc 1 198 0
	addss	%xmm7, %xmm6
.LVL6:
	.loc 1 199 0
	divss	%xmm6, %xmm8
.LVL7:
	.loc 1 200 0
	movaps	%xmm8, %xmm9
	mulss	%xmm8, %xmm9
.LVL8:
	.loc 1 201 0
	movaps	%xmm9, %xmm10
	.loc 1 206 0
	unpcklps	%xmm9, %xmm9
.LVL9:
	.loc 1 201 0
	mulss	%xmm8, %xmm10
.LVL10:
	.loc 1 206 0
	cvtps2pd	%xmm9, %xmm14
	.loc 1 202 0
	movaps	%xmm10, %xmm11
	.loc 1 207 0
	unpcklps	%xmm10, %xmm10
.LVL11:
	.loc 1 202 0
	mulss	%xmm8, %xmm11
.LVL12:
	.loc 1 205 0
	unpcklps	%xmm8, %xmm8
.LVL13:
	.loc 1 207 0
	cvtps2pd	%xmm10, %xmm1
	.loc 1 206 0
	mulsd	.LC6(%rip), %xmm14
	.loc 1 209 0
	unpcklps	%xmm11, %xmm11
.LVL14:
	.loc 1 205 0
	cvtps2pd	%xmm8, %xmm12
	.loc 1 207 0
	mulsd	.LC7(%rip), %xmm1
	.loc 1 203 0
	mulss	%xmm11, %xmm8
	.loc 1 209 0
	cvtps2pd	%xmm11, %xmm3
	.loc 1 206 0
	unpcklpd	%xmm14, %xmm14
	.loc 1 205 0
	mulsd	.LC5(%rip), %xmm12
	.loc 1 209 0
	mulsd	.LC8(%rip), %xmm3
	.loc 1 211 0
	unpcklps	%xmm8, %xmm8
	.loc 1 207 0
	unpcklpd	%xmm1, %xmm1
	.loc 1 206 0
	cvtpd2ps	%xmm14, %xmm15
	.loc 1 211 0
	cvtps2pd	%xmm8, %xmm5
	.loc 1 209 0
	unpcklpd	%xmm3, %xmm3
	.loc 1 207 0
	cvtpd2ps	%xmm1, %xmm2
	.loc 1 211 0
	mulsd	.LC9(%rip), %xmm5
	.loc 1 195 0
	cvtps2pd	%xmm0, %xmm8
	.loc 1 205 0
	unpcklpd	%xmm12, %xmm12
	.loc 1 209 0
	cvtpd2ps	%xmm3, %xmm4
	.loc 1 195 0
	mulsd	.LC10(%rip), %xmm8
	.loc 1 216 0
	movaps	%xmm7, %xmm0
	.loc 1 205 0
	cvtpd2ps	%xmm12, %xmm13
.LVL15:
	.loc 1 211 0
	unpcklpd	%xmm5, %xmm5
	.loc 1 208 0
	addss	%xmm2, %xmm15
.LVL16:
	.loc 1 211 0
	cvtpd2ps	%xmm5, %xmm6
.LVL17:
	.loc 1 210 0
	addss	%xmm4, %xmm15
.LVL18:
	.loc 1 195 0
	unpcklpd	%xmm8, %xmm8
	cvtpd2ps	%xmm8, %xmm9
	.loc 1 212 0
	addss	%xmm6, %xmm15
	.loc 1 214 0
	addss	%xmm13, %xmm15
	.loc 1 215 0
	mulss	%xmm9, %xmm15
.LVL19:
	.loc 1 216 0
	subss	%xmm15, %xmm0
.LVL20:
	.loc 1 220 0
	je	.L4
	.loc 1 221 0
	subss	%xmm0, %xmm7
	movaps	%xmm7, %xmm0
.LVL21:
.L4:
.LBE42:
	.loc 1 225 0
	addq	$16, %rsp
.LCFI2:
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
.LCFI3:
	.cfi_def_cfa_offset 8
.LVL22:
	ret
.LVL23:
	.p2align 4,,10
	.p2align 3
.L12:
.LCFI4:
	.cfi_restore_state
.LBB43:
	.loc 1 185 0
	movss	.LC1(%rip), %xmm2
	.loc 1 186 0
	movl	$1, %ebx
	.loc 1 185 0
	xorps	%xmm2, %xmm1
.LVL24:
	jmp	.L2
.LBE43:
	.cfi_endproc
.LFE76:
	.size	_Z4CNDFf, .-_Z4CNDFf
	.p2align 4,,15
	.globl	_Z19BlkSchlsEqEuroNoDivfffffif
	.type	_Z19BlkSchlsEqEuroNoDivfffffif, @function
_Z19BlkSchlsEqEuroNoDivfffffif:
.LFB77:
	.loc 1 234 0
	.cfi_startproc
.LVL25:
	pushq	%rbp
.LCFI5:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
.LCFI6:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	%edi, %ebx
	subq	$104, %rsp
.LCFI7:
	.cfi_def_cfa_offset 128
.LVL26:
	.loc 1 234 0
	movss	%xmm4, 60(%rsp)
.LBB51:
	.loc 1 265 0
	sqrtss	%xmm4, %xmm4
.LVL27:
	ucomiss	%xmm4, %xmm4
.LBE51:
	.loc 1 234 0
	movss	%xmm0, 68(%rsp)
	movss	%xmm1, 72(%rsp)
	movss	%xmm2, 76(%rsp)
.LBB64:
	.loc 1 265 0
	jp	.L37
.LVL28:
.L14:
	.loc 1 267 0
	divss	72(%rsp), %xmm0
	movss	%xmm3, 16(%rsp)
	movss	%xmm4, (%rsp)
	call	logf
.LVL29:
	.loc 1 272 0
	movss	16(%rsp), %xmm3
	movaps	%xmm3, %xmm2
	.loc 1 267 0
	movaps	%xmm0, %xmm1
.LVL30:
	.loc 1 279 0
	movss	(%rsp), %xmm5
	.loc 1 272 0
	mulss	%xmm3, %xmm2
.LVL31:
	.loc 1 279 0
	mulss	%xmm3, %xmm5
.LBB52:
.LBB53:
	.loc 1 184 0
	xorps	%xmm7, %xmm7
.LBE53:
.LBE52:
	.loc 1 273 0
	mulss	.LC11(%rip), %xmm2
.LVL32:
	.loc 1 275 0
	addss	76(%rsp), %xmm2
.LVL33:
	.loc 1 276 0
	mulss	60(%rsp), %xmm2
.LVL34:
	.loc 1 277 0
	addss	%xmm2, %xmm1
.LVL35:
	.loc 1 280 0
	divss	%xmm5, %xmm1
.LVL36:
	.loc 1 281 0
	movaps	%xmm1, %xmm0
.LVL37:
.LBB57:
.LBB54:
	.loc 1 184 0
	ucomiss	%xmm1, %xmm7
.LBE54:
.LBE57:
	.loc 1 281 0
	subss	%xmm5, %xmm0
	movaps	%xmm0, %xmm6
.LVL38:
.LBB58:
.LBB55:
	.loc 1 184 0
	ja	.L38
	movss	.LC1(%rip), %xmm8
	.loc 1 188 0
	xorl	%ebp, %ebp
	movaps	%xmm8, 80(%rsp)
.LVL39:
.L16:
	.loc 1 193 0
	movss	.LC2(%rip), %xmm10
	mulss	%xmm1, %xmm10
	movss	%xmm1, 32(%rsp)
	movss	%xmm6, (%rsp)
	mulss	%xmm1, %xmm10
	unpcklps	%xmm10, %xmm10
	cvtps2pd	%xmm10, %xmm0
.LVL40:
	call	exp
.LVL41:
	.loc 1 197 0
	movss	32(%rsp), %xmm11
	.loc 1 220 0
	testl	%ebp, %ebp
	.loc 1 197 0
	unpcklps	%xmm11, %xmm11
	.loc 1 198 0
	movss	.LC4(%rip), %xmm14
	.loc 1 193 0
	unpcklpd	%xmm0, %xmm0
.LVL42:
	.loc 1 199 0
	movaps	%xmm14, %xmm15
	.loc 1 197 0
	cvtps2pd	%xmm11, %xmm12
	.loc 1 193 0
	cvtpd2ps	%xmm0, %xmm0
	.loc 1 197 0
	mulsd	.LC3(%rip), %xmm12
	unpcklpd	%xmm12, %xmm12
	.loc 1 195 0
	unpcklps	%xmm0, %xmm0
	.loc 1 197 0
	cvtpd2ps	%xmm12, %xmm13
.LVL43:
	.loc 1 195 0
	cvtps2pd	%xmm0, %xmm12
	mulsd	.LC10(%rip), %xmm12
	.loc 1 198 0
	addss	%xmm14, %xmm13
.LVL44:
	.loc 1 195 0
	unpcklpd	%xmm12, %xmm12
	.loc 1 199 0
	divss	%xmm13, %xmm15
.LVL45:
	.loc 1 195 0
	cvtpd2ps	%xmm12, %xmm13
	.loc 1 200 0
	movaps	%xmm15, %xmm4
	.loc 1 201 0
	movaps	%xmm15, %xmm3
	.loc 1 202 0
	movaps	%xmm15, %xmm2
	.loc 1 200 0
	mulss	%xmm15, %xmm4
.LVL46:
	.loc 1 205 0
	unpcklps	%xmm15, %xmm15
.LVL47:
	.loc 1 201 0
	mulss	%xmm4, %xmm3
.LVL48:
	.loc 1 205 0
	cvtps2pd	%xmm15, %xmm1
	.loc 1 206 0
	unpcklps	%xmm4, %xmm4
.LVL49:
	.loc 1 205 0
	mulsd	.LC5(%rip), %xmm1
	.loc 1 202 0
	mulss	%xmm3, %xmm2
.LVL50:
	.loc 1 206 0
	cvtps2pd	%xmm4, %xmm6
	.loc 1 207 0
	unpcklps	%xmm3, %xmm3
.LVL51:
	.loc 1 206 0
	mulsd	.LC6(%rip), %xmm6
	.loc 1 209 0
	unpcklps	%xmm2, %xmm2
.LVL52:
	.loc 1 207 0
	cvtps2pd	%xmm3, %xmm8
	.loc 1 205 0
	unpcklpd	%xmm1, %xmm1
	.loc 1 216 0
	movaps	%xmm14, %xmm3
	.loc 1 203 0
	mulss	%xmm2, %xmm15
	.loc 1 209 0
	cvtps2pd	%xmm2, %xmm10
	.loc 1 207 0
	mulsd	.LC7(%rip), %xmm8
	.loc 1 206 0
	unpcklpd	%xmm6, %xmm6
	.loc 1 220 0
	movss	(%rsp), %xmm2
	.loc 1 209 0
	mulsd	.LC8(%rip), %xmm10
	.loc 1 211 0
	unpcklps	%xmm15, %xmm15
	.loc 1 206 0
	cvtpd2ps	%xmm6, %xmm7
	.loc 1 211 0
	cvtps2pd	%xmm15, %xmm15
	.loc 1 207 0
	unpcklpd	%xmm8, %xmm8
	.loc 1 209 0
	unpcklpd	%xmm10, %xmm10
	.loc 1 211 0
	mulsd	.LC9(%rip), %xmm15
	.loc 1 207 0
	cvtpd2ps	%xmm8, %xmm9
	.loc 1 209 0
	cvtpd2ps	%xmm10, %xmm11
	.loc 1 205 0
	cvtpd2ps	%xmm1, %xmm5
.LVL53:
	.loc 1 211 0
	unpcklpd	%xmm15, %xmm15
	.loc 1 208 0
	addss	%xmm9, %xmm7
.LVL54:
	.loc 1 211 0
	cvtpd2ps	%xmm15, %xmm4
	.loc 1 210 0
	addss	%xmm11, %xmm7
.LVL55:
	.loc 1 212 0
	addss	%xmm4, %xmm7
	.loc 1 214 0
	addss	%xmm7, %xmm5
	.loc 1 215 0
	mulss	%xmm5, %xmm13
	.loc 1 216 0
	subss	%xmm13, %xmm3
	movss	%xmm3, 64(%rsp)
.LVL56:
	.loc 1 220 0
	je	.L18
	.loc 1 221 0
	movaps	%xmm14, %xmm1
	subss	%xmm3, %xmm1
	movss	%xmm1, 64(%rsp)
.LVL57:
.L18:
.LBE55:
.LBE58:
.LBB59:
.LBB60:
	.loc 1 184 0
	xorps	%xmm5, %xmm5
	.loc 1 188 0
	xorl	%ebp, %ebp
.LVL58:
	.loc 1 184 0
	ucomiss	%xmm2, %xmm5
	ja	.L39
.L19:
.LVL59:
	.loc 1 193 0
	movss	.LC2(%rip), %xmm6
	mulss	%xmm2, %xmm6
	movss	%xmm14, 32(%rsp)
	movss	%xmm2, (%rsp)
	mulss	%xmm2, %xmm6
	unpcklps	%xmm6, %xmm6
	cvtps2pd	%xmm6, %xmm0
	call	exp
.LVL60:
	.loc 1 197 0
	movss	(%rsp), %xmm14
	.loc 1 220 0
	testl	%ebp, %ebp
	.loc 1 197 0
	unpcklps	%xmm14, %xmm14
	.loc 1 198 0
	movss	32(%rsp), %xmm9
	.loc 1 193 0
	unpcklpd	%xmm0, %xmm0
.LVL61:
	.loc 1 199 0
	movaps	%xmm9, %xmm10
	.loc 1 197 0
	cvtps2pd	%xmm14, %xmm7
	.loc 1 193 0
	cvtpd2ps	%xmm0, %xmm0
	.loc 1 197 0
	mulsd	.LC3(%rip), %xmm7
	unpcklpd	%xmm7, %xmm7
	.loc 1 195 0
	unpcklps	%xmm0, %xmm0
	.loc 1 197 0
	cvtpd2ps	%xmm7, %xmm8
.LVL62:
	.loc 1 195 0
	cvtps2pd	%xmm0, %xmm7
	mulsd	.LC10(%rip), %xmm7
	.loc 1 198 0
	addss	%xmm9, %xmm8
.LVL63:
	.loc 1 195 0
	unpcklpd	%xmm7, %xmm7
	.loc 1 199 0
	divss	%xmm8, %xmm10
.LVL64:
	.loc 1 195 0
	cvtpd2ps	%xmm7, %xmm8
	.loc 1 200 0
	movaps	%xmm10, %xmm11
	.loc 1 201 0
	movaps	%xmm10, %xmm12
	.loc 1 202 0
	movaps	%xmm10, %xmm13
	.loc 1 200 0
	mulss	%xmm10, %xmm11
.LVL65:
	.loc 1 205 0
	unpcklps	%xmm10, %xmm10
.LVL66:
	.loc 1 201 0
	mulss	%xmm11, %xmm12
.LVL67:
	.loc 1 205 0
	cvtps2pd	%xmm10, %xmm15
	.loc 1 206 0
	unpcklps	%xmm11, %xmm11
.LVL68:
	.loc 1 205 0
	mulsd	.LC5(%rip), %xmm15
	.loc 1 202 0
	mulss	%xmm12, %xmm13
.LVL69:
	.loc 1 206 0
	cvtps2pd	%xmm11, %xmm3
	.loc 1 207 0
	unpcklps	%xmm12, %xmm12
.LVL70:
	.loc 1 206 0
	mulsd	.LC6(%rip), %xmm3
	.loc 1 209 0
	unpcklps	%xmm13, %xmm13
.LVL71:
	.loc 1 207 0
	cvtps2pd	%xmm12, %xmm1
	.loc 1 205 0
	unpcklpd	%xmm15, %xmm15
	.loc 1 203 0
	mulss	%xmm13, %xmm10
	.loc 1 209 0
	cvtps2pd	%xmm13, %xmm6
	.loc 1 207 0
	mulsd	.LC7(%rip), %xmm1
	.loc 1 216 0
	movaps	%xmm9, %xmm13
	.loc 1 206 0
	unpcklpd	%xmm3, %xmm3
	.loc 1 209 0
	mulsd	.LC8(%rip), %xmm6
	.loc 1 211 0
	unpcklps	%xmm10, %xmm10
	.loc 1 206 0
	cvtpd2ps	%xmm3, %xmm2
	.loc 1 211 0
	cvtps2pd	%xmm10, %xmm10
	.loc 1 207 0
	unpcklpd	%xmm1, %xmm1
	.loc 1 209 0
	unpcklpd	%xmm6, %xmm6
	.loc 1 211 0
	mulsd	.LC9(%rip), %xmm10
	.loc 1 207 0
	cvtpd2ps	%xmm1, %xmm5
	.loc 1 209 0
	cvtpd2ps	%xmm6, %xmm14
	.loc 1 205 0
	cvtpd2ps	%xmm15, %xmm4
.LVL72:
	.loc 1 211 0
	unpcklpd	%xmm10, %xmm10
	.loc 1 208 0
	addss	%xmm5, %xmm2
.LVL73:
	.loc 1 211 0
	cvtpd2ps	%xmm10, %xmm11
	.loc 1 210 0
	addss	%xmm14, %xmm2
.LVL74:
	.loc 1 212 0
	addss	%xmm11, %xmm2
	.loc 1 214 0
	addss	%xmm2, %xmm4
	.loc 1 215 0
	mulss	%xmm4, %xmm8
	.loc 1 216 0
	subss	%xmm8, %xmm13
.LVL75:
	.loc 1 220 0
	je	.L21
	.loc 1 221 0
	movaps	%xmm9, %xmm12
	subss	%xmm13, %xmm12
	movaps	%xmm12, %xmm13
.LVL76:
.L21:
.LBE60:
.LBE59:
	.loc 1 289 0
	movss	76(%rsp), %xmm15
	xorps	80(%rsp), %xmm15
	movss	%xmm9, 32(%rsp)
	movss	%xmm13, 16(%rsp)
	mulss	60(%rsp), %xmm15
	unpcklps	%xmm15, %xmm15
	cvtps2pd	%xmm15, %xmm0
	call	exp
.LVL77:
	movss	72(%rsp), %xmm9
	.loc 1 290 0
	testl	%ebx, %ebx
	movss	32(%rsp), %xmm2
	.loc 1 289 0
	cvtps2pd	%xmm9, %xmm4
	.loc 1 290 0
	movss	16(%rsp), %xmm3
	.loc 1 289 0
	mulsd	%xmm0, %xmm4
	unpcklpd	%xmm4, %xmm4
	cvtpd2ps	%xmm4, %xmm1
.LVL78:
	.loc 1 290 0
	je	.L40
.LVL79:
	.loc 1 294 0
	movaps	%xmm2, %xmm0
	.loc 1 293 0
	subss	64(%rsp), %xmm2
	.loc 1 294 0
	subss	%xmm3, %xmm0
	.loc 1 295 0
	mulss	%xmm1, %xmm0
	mulss	68(%rsp), %xmm2
.LBE64:
	.loc 1 299 0
	addq	$104, %rsp
.LCFI8:
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
.LCFI9:
	.cfi_def_cfa_offset 16
.LVL80:
	popq	%rbp
.LCFI10:
	.cfi_def_cfa_offset 8
.LVL81:
.LBB65:
	.loc 1 295 0
	subss	%xmm2, %xmm0
.LVL82:
.LBE65:
	.loc 1 299 0
	ret
.LVL83:
	.p2align 4,,10
	.p2align 3
.L40:
.LCFI11:
	.cfi_restore_state
.LBB66:
	.loc 1 291 0
	movss	68(%rsp), %xmm0
	mulss	%xmm3, %xmm1
.LVL84:
	mulss	64(%rsp), %xmm0
.LBE66:
	.loc 1 299 0
	addq	$104, %rsp
.LCFI12:
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
.LCFI13:
	.cfi_def_cfa_offset 16
.LVL85:
	popq	%rbp
.LCFI14:
	.cfi_def_cfa_offset 8
.LVL86:
.LBB67:
	.loc 1 291 0
	subss	%xmm1, %xmm0
.LVL87:
.LBE67:
	.loc 1 299 0
	ret
.LVL88:
	.p2align 4,,10
	.p2align 3
.L39:
.LCFI15:
	.cfi_restore_state
.LBB68:
.LBB62:
.LBB61:
	.loc 1 185 0
	xorps	80(%rsp), %xmm2
.LVL89:
	.loc 1 186 0
	movl	$1, %ebp
	jmp	.L19
.LVL90:
	.p2align 4,,10
	.p2align 3
.L38:
.LBE61:
.LBE62:
.LBB63:
.LBB56:
	.loc 1 185 0
	movss	.LC1(%rip), %xmm9
	.loc 1 186 0
	movl	$1, %ebp
	.loc 1 185 0
	movaps	%xmm9, 80(%rsp)
	xorps	%xmm9, %xmm1
.LVL91:
	jmp	.L16
.LVL92:
.L37:
.LBE56:
.LBE63:
	.loc 1 265 0
	movss	60(%rsp), %xmm0
.LVL93:
	movss	%xmm3, 16(%rsp)
	call	sqrtf
.LVL94:
	movss	16(%rsp), %xmm3
	movaps	%xmm0, %xmm4
	movss	68(%rsp), %xmm0
	jmp	.L14
.LBE68:
	.cfi_endproc
.LFE77:
	.size	_Z19BlkSchlsEqEuroNoDivfffffif, .-_Z19BlkSchlsEqEuroNoDivfffffif
	.p2align 4,,15
	.globl	_Z9bs_threadPv
	.type	_Z9bs_threadPv, @function
_Z9bs_threadPv:
.LFB78:
	.loc 1 357 0
	.cfi_startproc
.LVL95:
	pushq	%r15
.LCFI16:
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
.LCFI17:
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
.LCFI18:
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
.LBB79:
.LBB80:
.LBB81:
.LBB82:
.LBB83:
.LBB84:
	movl	$100, %r13d
.LBE84:
.LBE83:
.LBE82:
.LBE81:
.LBE80:
.LBE79:
	pushq	%r12
.LCFI19:
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
.LCFI20:
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
.LCFI21:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$88, %rsp
.LCFI22:
	.cfi_def_cfa_offset 144
.LBB113:
	.loc 1 363 0
	movl	numOptions(%rip), %eax
	movl	(%rdi), %r14d
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	nThreads(%rip)
	imull	%eax, %r14d
.LVL96:
	.loc 1 364 0
	addl	%r14d, %eax
	.loc 1 357 0
	movslq	%r14d, %rcx
	.loc 1 364 0
	movl	%eax, 68(%rsp)
.LVL97:
	.loc 1 357 0
	movl	68(%rsp), %esi
	leaq	0(,%rcx,4), %rbx
	movq	%rbx, 72(%rsp)
	subl	%r14d, %esi
	subl	$1, %esi
	leaq	1(%rcx,%rsi), %r12
	salq	$2, %r12
.LVL98:
	.p2align 4,,10
	.p2align 3
.L42:
	.loc 1 371 0 discriminator 1
	cmpl	68(%rsp), %r14d
	movq	72(%rsp), %r15
	movss	.LC4(%rip), %xmm2
	jl	.L53
	jmp	.L56
.LVL99:
	.p2align 4,,10
	.p2align 3
.L51:
.LBB109:
.LBB105:
.LBB101:
	.loc 1 293 0
	movaps	%xmm2, %xmm10
	.loc 1 294 0
	movaps	%xmm2, %xmm5
	.loc 1 293 0
	subss	52(%rsp), %xmm10
	.loc 1 294 0
	subss	%xmm7, %xmm5
	.loc 1 295 0
	mulss	%xmm6, %xmm5
	mulss	64(%rsp), %xmm10
	subss	%xmm10, %xmm5
.LVL100:
.L52:
.LBE101:
.LBE105:
.LBE109:
	.loc 1 379 0
	movq	prices(%rip), %rax
	movss	%xmm5, (%rax,%r15)
	addq	$4, %r15
	.loc 1 371 0
	cmpq	%r12, %r15
	je	.L56
.LVL101:
.L53:
	.loc 1 378 0 discriminator 2
	movq	otime(%rip), %rbp
	movq	rate(%rip), %r9
	movq	strike(%rip), %r10
	movq	sptprice(%rip), %r11
	movq	otype(%rip), %rdi
	movq	volatility(%rip), %r8
	movss	0(%rbp,%r15), %xmm1
	movss	%xmm1, 48(%rsp)
	movss	(%r9,%r15), %xmm0
	movl	(%rdi,%r15), %ebx
.LBB110:
.LBB106:
.LBB102:
	.loc 1 265 0 discriminator 2
	sqrtss	48(%rsp), %xmm6
	ucomiss	%xmm6, %xmm6
.LBE102:
.LBE106:
.LBE110:
	.loc 1 378 0 discriminator 2
	movss	(%r10,%r15), %xmm3
	movss	(%r11,%r15), %xmm4
	movss	(%r8,%r15), %xmm5
	movss	%xmm0, 56(%rsp)
	movss	%xmm3, 60(%rsp)
	movss	%xmm4, 64(%rsp)
.LVL102:
.LBB111:
.LBB107:
.LBB103:
	.loc 1 265 0 discriminator 2
	jp	.L71
.LVL103:
.L43:
	.loc 1 267 0 discriminator 2
	movss	64(%rsp), %xmm0
.LBB87:
.LBB88:
	.loc 1 188 0 discriminator 2
	xorl	%ebp, %ebp
.LBE88:
.LBE87:
	.loc 1 267 0 discriminator 2
	divss	60(%rsp), %xmm0
	movss	%xmm2, (%rsp)
	movss	%xmm6, 16(%rsp)
	movss	%xmm5, 32(%rsp)
	call	logf
.LVL104:
	.loc 1 272 0 discriminator 2
	movss	32(%rsp), %xmm8
	movaps	%xmm8, %xmm9
	.loc 1 267 0 discriminator 2
	movaps	%xmm0, %xmm7
.LVL105:
	.loc 1 279 0 discriminator 2
	movss	16(%rsp), %xmm10
	.loc 1 272 0 discriminator 2
	mulss	%xmm8, %xmm9
.LVL106:
.LBB94:
.LBB89:
	.loc 1 184 0 discriminator 2
	movss	(%rsp), %xmm14
.LBE89:
.LBE94:
	.loc 1 279 0 discriminator 2
	mulss	%xmm8, %xmm10
.LBB95:
.LBB90:
	.loc 1 184 0 discriminator 2
	xorps	%xmm13, %xmm13
.LBE90:
.LBE95:
	.loc 1 273 0 discriminator 2
	mulss	.LC11(%rip), %xmm9
.LVL107:
	.loc 1 275 0 discriminator 2
	addss	56(%rsp), %xmm9
.LVL108:
	.loc 1 276 0 discriminator 2
	mulss	48(%rsp), %xmm9
.LVL109:
	.loc 1 277 0 discriminator 2
	addss	%xmm9, %xmm7
.LVL110:
	.loc 1 280 0 discriminator 2
	divss	%xmm10, %xmm7
.LVL111:
	.loc 1 281 0 discriminator 2
	movaps	%xmm7, %xmm11
.LBB96:
.LBB91:
	.loc 1 184 0 discriminator 2
	ucomiss	%xmm7, %xmm13
.LBE91:
.LBE96:
	.loc 1 281 0 discriminator 2
	subss	%xmm10, %xmm11
	movaps	%xmm11, %xmm12
.LVL112:
.LBB97:
.LBB92:
	.loc 1 184 0 discriminator 2
	ja	.L72
.LVL113:
.L45:
	.loc 1 193 0
	movss	.LC2(%rip), %xmm15
	mulss	%xmm7, %xmm15
	movss	%xmm7, 32(%rsp)
	movss	%xmm14, (%rsp)
	movss	%xmm12, 16(%rsp)
	mulss	%xmm7, %xmm15
	unpcklps	%xmm15, %xmm15
	cvtps2pd	%xmm15, %xmm0
.LVL114:
	call	exp
.LVL115:
	.loc 1 197 0
	movss	32(%rsp), %xmm2
	.loc 1 220 0
	testl	%ebp, %ebp
	.loc 1 197 0
	unpcklps	%xmm2, %xmm2
	.loc 1 198 0
	movss	(%rsp), %xmm8
	.loc 1 193 0
	unpcklpd	%xmm0, %xmm0
.LVL116:
	.loc 1 199 0
	movaps	%xmm8, %xmm3
	.loc 1 197 0
	cvtps2pd	%xmm2, %xmm1
	.loc 1 193 0
	cvtpd2ps	%xmm0, %xmm0
	.loc 1 197 0
	mulsd	.LC3(%rip), %xmm1
	unpcklpd	%xmm1, %xmm1
	.loc 1 195 0
	unpcklps	%xmm0, %xmm0
	.loc 1 197 0
	cvtpd2ps	%xmm1, %xmm4
.LVL117:
	.loc 1 195 0
	cvtps2pd	%xmm0, %xmm1
	mulsd	.LC10(%rip), %xmm1
	.loc 1 198 0
	addss	%xmm8, %xmm4
.LVL118:
	.loc 1 195 0
	unpcklpd	%xmm1, %xmm1
	.loc 1 199 0
	divss	%xmm4, %xmm3
.LVL119:
	.loc 1 195 0
	cvtpd2ps	%xmm1, %xmm4
	.loc 1 200 0
	movaps	%xmm3, %xmm9
	.loc 1 201 0
	movaps	%xmm3, %xmm6
	.loc 1 202 0
	movaps	%xmm3, %xmm7
	.loc 1 200 0
	mulss	%xmm3, %xmm9
.LVL120:
	.loc 1 205 0
	unpcklps	%xmm3, %xmm3
.LVL121:
	.loc 1 201 0
	mulss	%xmm9, %xmm6
.LVL122:
	.loc 1 205 0
	cvtps2pd	%xmm3, %xmm5
	.loc 1 206 0
	unpcklps	%xmm9, %xmm9
.LVL123:
	.loc 1 205 0
	mulsd	.LC5(%rip), %xmm5
	.loc 1 202 0
	mulss	%xmm6, %xmm7
.LVL124:
	.loc 1 206 0
	cvtps2pd	%xmm9, %xmm11
	.loc 1 207 0
	unpcklps	%xmm6, %xmm6
.LVL125:
	.loc 1 206 0
	mulsd	.LC6(%rip), %xmm11
	.loc 1 209 0
	unpcklps	%xmm7, %xmm7
.LVL126:
	.loc 1 207 0
	cvtps2pd	%xmm6, %xmm13
	.loc 1 205 0
	unpcklpd	%xmm5, %xmm5
	.loc 1 216 0
	movaps	%xmm8, %xmm6
	.loc 1 203 0
	mulss	%xmm7, %xmm3
	.loc 1 209 0
	cvtps2pd	%xmm7, %xmm15
	.loc 1 207 0
	mulsd	.LC7(%rip), %xmm13
	.loc 1 206 0
	unpcklpd	%xmm11, %xmm11
	.loc 1 220 0
	movss	16(%rsp), %xmm7
	.loc 1 209 0
	mulsd	.LC8(%rip), %xmm15
	.loc 1 211 0
	unpcklps	%xmm3, %xmm3
	.loc 1 206 0
	cvtpd2ps	%xmm11, %xmm12
	.loc 1 211 0
	cvtps2pd	%xmm3, %xmm3
	.loc 1 207 0
	unpcklpd	%xmm13, %xmm13
	.loc 1 209 0
	unpcklpd	%xmm15, %xmm15
	.loc 1 211 0
	mulsd	.LC9(%rip), %xmm3
	.loc 1 207 0
	cvtpd2ps	%xmm13, %xmm14
	.loc 1 209 0
	cvtpd2ps	%xmm15, %xmm2
	.loc 1 205 0
	cvtpd2ps	%xmm5, %xmm10
.LVL127:
	.loc 1 211 0
	unpcklpd	%xmm3, %xmm3
	.loc 1 208 0
	addss	%xmm14, %xmm12
.LVL128:
	.loc 1 211 0
	cvtpd2ps	%xmm3, %xmm9
	.loc 1 210 0
	addss	%xmm2, %xmm12
.LVL129:
	.loc 1 212 0
	addss	%xmm9, %xmm12
	.loc 1 214 0
	addss	%xmm12, %xmm10
	.loc 1 215 0
	mulss	%xmm10, %xmm4
	.loc 1 216 0
	subss	%xmm4, %xmm6
	movss	%xmm6, 52(%rsp)
.LVL130:
	.loc 1 220 0
	je	.L47
	.loc 1 221 0
	movaps	%xmm8, %xmm5
	subss	%xmm6, %xmm5
	movss	%xmm5, 52(%rsp)
.LVL131:
.L47:
.LBE92:
.LBE97:
.LBB98:
.LBB85:
	.loc 1 184 0
	xorps	%xmm10, %xmm10
	.loc 1 188 0
	xorl	%ebp, %ebp
.LVL132:
	.loc 1 184 0
	ucomiss	%xmm7, %xmm10
	ja	.L73
.L48:
.LVL133:
	.loc 1 193 0
	movss	.LC2(%rip), %xmm11
	mulss	%xmm7, %xmm11
	movss	%xmm8, (%rsp)
	movss	%xmm7, 16(%rsp)
	mulss	%xmm7, %xmm11
	unpcklps	%xmm11, %xmm11
	cvtps2pd	%xmm11, %xmm0
	call	exp
.LVL134:
	.loc 1 197 0
	movss	16(%rsp), %xmm8
	.loc 1 220 0
	testl	%ebp, %ebp
	.loc 1 197 0
	unpcklps	%xmm8, %xmm8
	.loc 1 198 0
	movss	(%rsp), %xmm14
	.loc 1 193 0
	unpcklpd	%xmm0, %xmm0
.LVL135:
	.loc 1 199 0
	movaps	%xmm14, %xmm15
	.loc 1 197 0
	cvtps2pd	%xmm8, %xmm12
	.loc 1 193 0
	cvtpd2ps	%xmm0, %xmm0
	.loc 1 197 0
	mulsd	.LC3(%rip), %xmm12
	unpcklpd	%xmm12, %xmm12
	.loc 1 195 0
	unpcklps	%xmm0, %xmm0
	.loc 1 197 0
	cvtpd2ps	%xmm12, %xmm13
.LVL136:
	.loc 1 195 0
	cvtps2pd	%xmm0, %xmm12
	mulsd	.LC10(%rip), %xmm12
	.loc 1 198 0
	addss	%xmm14, %xmm13
.LVL137:
	.loc 1 195 0
	unpcklpd	%xmm12, %xmm12
	.loc 1 199 0
	divss	%xmm13, %xmm15
.LVL138:
	.loc 1 195 0
	cvtpd2ps	%xmm12, %xmm13
	.loc 1 200 0
	movaps	%xmm15, %xmm2
	.loc 1 201 0
	movaps	%xmm15, %xmm3
	.loc 1 202 0
	movaps	%xmm15, %xmm9
	.loc 1 200 0
	mulss	%xmm15, %xmm2
.LVL139:
	.loc 1 205 0
	unpcklps	%xmm15, %xmm15
.LVL140:
	.loc 1 201 0
	mulss	%xmm2, %xmm3
.LVL141:
	.loc 1 205 0
	cvtps2pd	%xmm15, %xmm1
	.loc 1 206 0
	unpcklps	%xmm2, %xmm2
.LVL142:
	.loc 1 205 0
	mulsd	.LC5(%rip), %xmm1
	.loc 1 202 0
	mulss	%xmm3, %xmm9
.LVL143:
	.loc 1 206 0
	cvtps2pd	%xmm2, %xmm6
	.loc 1 207 0
	unpcklps	%xmm3, %xmm3
.LVL144:
	.loc 1 206 0
	mulsd	.LC6(%rip), %xmm6
	.loc 1 209 0
	unpcklps	%xmm9, %xmm9
.LVL145:
	.loc 1 207 0
	cvtps2pd	%xmm3, %xmm5
	.loc 1 205 0
	unpcklpd	%xmm1, %xmm1
	.loc 1 216 0
	movaps	%xmm14, %xmm3
	.loc 1 203 0
	mulss	%xmm9, %xmm15
	.loc 1 209 0
	cvtps2pd	%xmm9, %xmm11
	.loc 1 207 0
	mulsd	.LC7(%rip), %xmm5
	.loc 1 206 0
	unpcklpd	%xmm6, %xmm6
	.loc 1 209 0
	mulsd	.LC8(%rip), %xmm11
	.loc 1 211 0
	unpcklps	%xmm15, %xmm15
	.loc 1 206 0
	cvtpd2ps	%xmm6, %xmm7
	.loc 1 211 0
	cvtps2pd	%xmm15, %xmm15
	.loc 1 207 0
	unpcklpd	%xmm5, %xmm5
	.loc 1 209 0
	unpcklpd	%xmm11, %xmm11
	.loc 1 211 0
	mulsd	.LC9(%rip), %xmm15
	.loc 1 207 0
	cvtpd2ps	%xmm5, %xmm10
	.loc 1 209 0
	cvtpd2ps	%xmm11, %xmm8
	.loc 1 205 0
	cvtpd2ps	%xmm1, %xmm4
.LVL146:
	.loc 1 211 0
	unpcklpd	%xmm15, %xmm15
	.loc 1 208 0
	addss	%xmm10, %xmm7
.LVL147:
	.loc 1 211 0
	cvtpd2ps	%xmm15, %xmm2
	.loc 1 210 0
	addss	%xmm8, %xmm7
.LVL148:
	.loc 1 212 0
	addss	%xmm2, %xmm7
	.loc 1 214 0
	addss	%xmm7, %xmm4
	.loc 1 215 0
	mulss	%xmm4, %xmm13
	.loc 1 216 0
	subss	%xmm13, %xmm3
.LVL149:
	.loc 1 220 0
	je	.L50
	.loc 1 221 0
	movaps	%xmm14, %xmm9
	subss	%xmm3, %xmm9
	movaps	%xmm9, %xmm3
.LVL150:
.L50:
.LBE85:
.LBE98:
	.loc 1 289 0
	movss	56(%rsp), %xmm1
	xorps	.LC1(%rip), %xmm1
	movss	%xmm14, (%rsp)
	movss	%xmm3, 32(%rsp)
	mulss	48(%rsp), %xmm1
	unpcklps	%xmm1, %xmm1
	cvtps2pd	%xmm1, %xmm0
	call	exp
.LVL151:
	movss	60(%rsp), %xmm14
	.loc 1 290 0
	testl	%ebx, %ebx
	movss	(%rsp), %xmm2
	.loc 1 289 0
	cvtps2pd	%xmm14, %xmm4
	.loc 1 290 0
	movss	32(%rsp), %xmm7
	.loc 1 289 0
	mulsd	%xmm0, %xmm4
	unpcklpd	%xmm4, %xmm4
	cvtpd2ps	%xmm4, %xmm6
.LVL152:
	.loc 1 290 0
	jne	.L51
	.loc 1 291 0
	movss	64(%rsp), %xmm5
	mulss	%xmm7, %xmm6
.LVL153:
	mulss	52(%rsp), %xmm5
	subss	%xmm6, %xmm5
.LVL154:
	jmp	.L52
.LVL155:
	.p2align 4,,10
	.p2align 3
.L73:
.LBB99:
.LBB86:
	.loc 1 185 0
	xorps	.LC1(%rip), %xmm7
.LVL156:
	.loc 1 186 0
	movl	$1, %ebp
	jmp	.L48
.LVL157:
	.p2align 4,,10
	.p2align 3
.L72:
.LBE86:
.LBE99:
.LBB100:
.LBB93:
	.loc 1 185 0
	xorps	.LC1(%rip), %xmm7
.LVL158:
	.loc 1 186 0
	movl	$1, %ebp
	jmp	.L45
.LVL159:
	.p2align 4,,10
	.p2align 3
.L56:
.LBE93:
.LBE100:
.LBE103:
.LBE107:
.LBE111:
	.loc 1 366 0
	subl	$1, %r13d
	jne	.L42
.LBE113:
	.loc 1 393 0
	addq	$88, %rsp
.LCFI23:
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
.LCFI24:
	.cfi_def_cfa_offset 48
	popq	%rbp
.LCFI25:
	.cfi_def_cfa_offset 40
	popq	%r12
.LCFI26:
	.cfi_def_cfa_offset 32
	popq	%r13
.LCFI27:
	.cfi_def_cfa_offset 24
	popq	%r14
.LCFI28:
	.cfi_def_cfa_offset 16
.LVL160:
	popq	%r15
.LCFI29:
	.cfi_def_cfa_offset 8
	ret
.LVL161:
.L71:
.LCFI30:
	.cfi_restore_state
.LBB114:
.LBB112:
.LBB108:
.LBB104:
	.loc 1 265 0 discriminator 2
	movss	48(%rsp), %xmm0
.LVL162:
	movss	%xmm2, (%rsp)
	movss	%xmm5, 32(%rsp)
	call	sqrtf
.LVL163:
	movss	32(%rsp), %xmm5
	movaps	%xmm0, %xmm6
	movss	(%rsp), %xmm2
	jmp	.L43
.LBE104:
.LBE108:
.LBE112:
.LBE114:
	.cfi_endproc
.LFE78:
	.size	_Z9bs_threadPv, .-_Z9bs_threadPv
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC12:
	.string	"PARSEC Benchmark Suite"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC13:
	.string	"Usage:\n\t%s <nthreads> <inputFile> <outputFile>\n"
	.section	.rodata.str1.1
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
	.align 8
.LC19:
	.string	"Error: <nthreads> must be 1 (serial version)"
	.section	.rodata.str1.1
.LC20:
	.string	"%f %f %f %f %f %f %c %f %f"
	.section	.rodata.str1.8
	.align 8
.LC21:
	.string	"ERROR: Unable to close file %s.\n"
	.section	.rodata.str1.1
.LC22:
	.string	"Num of Options: %d\n"
.LC23:
	.string	"Num of Runs: %d\n"
.LC24:
	.string	"Size of data: %d\n"
.LC25:
	.string	"w"
.LC26:
	.string	"%i\n"
	.section	.rodata.str1.8
	.align 8
.LC27:
	.string	"ERROR: Unable to write to file %s.\n"
	.section	.rodata.str1.1
.LC28:
	.string	"%.18f\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB79:
	.loc 1 397 0
	.cfi_startproc
.LVL164:
	pushq	%r15
.LCFI31:
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
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
	movl	%edi, %ebp
.LBB115:
.LBB116:
.LBB117:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 105 0
	movl	$.LC12, %edi
.LVL165:
.LBE117:
.LBE116:
.LBE115:
	.loc 1 397 0
	pushq	%rbx
.LCFI36:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$88, %rsp
.LCFI37:
	.cfi_def_cfa_offset 144
.LBB158:
.LBB119:
.LBB118:
	.loc 2 105 0
	call	puts
.LVL166:
.LBE118:
.LBE119:
	.loc 1 412 0
	xorl	%edi, %edi
	call	fflush
.LVL167:
	.loc 1 418 0
	cmpl	$4, %ebp
	jne	.L109
.LVL168:
.LBB120:
.LBB121:
	.file 3 "/usr/include/stdlib.h"
	.loc 3 286 0
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	call	strtol
.LVL169:
.LBE121:
.LBE120:
	.loc 1 424 0
	movq	16(%rbx), %r14
.LVL170:
.LBB123:
.LBB122:
	.loc 3 286 0
	movl	%eax, nThreads(%rip)
.LBE122:
.LBE123:
	.loc 1 428 0
	movl	$.LC14, %esi
	.loc 1 425 0
	movq	24(%rbx), %rax
	.loc 1 428 0
	movq	%r14, %rdi
	.loc 1 425 0
	movq	%rax, 56(%rsp)
.LVL171:
	.loc 1 428 0
	call	fopen
.LVL172:
	.loc 1 429 0
	testq	%rax, %rax
	.loc 1 428 0
	movq	%rax, %r13
.LVL173:
	.loc 1 429 0
	je	.L110
	.loc 1 433 0
	movq	%rax, %rdi
	movl	$numOptions, %edx
	xorl	%eax, %eax
.LVL174:
	movl	$.LC16, %esi
	call	fscanf
.LVL175:
	.loc 1 434 0
	cmpl	$1, %eax
	jne	.L108
	.loc 1 439 0
	movl	nThreads(%rip), %edx
	cmpl	numOptions(%rip), %edx
	jg	.L111
.LVL176:
.L78:
	.loc 1 445 0
	cmpl	$1, %edx
	jne	.L112
	.loc 1 452 0
	movl	numOptions(%rip), %r12d
	movslq	%r12d, %rbp
.LVL177:
	leaq	0(%rbp,%rbp,8), %rdi
	salq	$2, %rdi
	call	malloc
.LVL178:
	.loc 1 453 0
	leaq	0(,%rbp,4), %rdi
	.loc 1 452 0
	movq	%rax, %r15
	movq	%rax, data(%rip)
	.loc 1 453 0
	call	malloc
.LVL179:
	.loc 1 454 0
	testl	%r12d, %r12d
	.loc 1 453 0
	movq	%rax, prices(%rip)
.LVL180:
	.loc 1 454 0
	jle	.L80
	xorl	%ebx, %ebx
.LVL181:
	xorl	%r12d, %r12d
	jmp	.L82
.LVL182:
	.p2align 4,,10
	.p2align 3
.L113:
	movq	data(%rip), %r15
.LVL183:
.L82:
	.loc 1 456 0
	leaq	(%r15,%rbx), %rdx
	xorl	%eax, %eax
	leaq	24(%rdx), %r8
	leaq	20(%rdx), %r9
	leaq	32(%rdx), %rsi
	leaq	28(%rdx), %rdi
	leaq	16(%rdx), %r10
	leaq	4(%rdx), %rcx
	movq	%r8, 16(%rsp)
	movq	%r9, 8(%rsp)
	leaq	8(%rdx), %r8
	leaq	12(%rdx), %r9
	movq	%rsi, 32(%rsp)
	movq	%rdi, 24(%rsp)
	movq	%r10, (%rsp)
	movl	$.LC20, %esi
	movq	%r13, %rdi
	call	fscanf
.LVL184:
	.loc 1 457 0
	cmpl	$9, %eax
	jne	.L108
	.loc 1 454 0
	addl	$1, %r12d
.LVL185:
	addq	$36, %rbx
	cmpl	%r12d, numOptions(%rip)
	jg	.L113
.LVL186:
.L80:
	.loc 1 463 0
	movq	%r13, %rdi
	call	fclose
.LVL187:
	.loc 1 464 0
	testl	%eax, %eax
	jne	.L114
.LVL188:
.LBB124:
.LBB125:
	.loc 2 105 0
	movl	numOptions(%rip), %edx
	movl	$.LC22, %esi
	movl	$1, %edi
	xorl	%eax, %eax
.LVL189:
	call	__printf_chk
.LVL190:
.LBE125:
.LBE124:
.LBB126:
.LBB127:
	movl	$100, %edx
	movl	$.LC23, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
.LVL191:
.LBE127:
.LBE126:
	.loc 1 488 0
	movl	numOptions(%rip), %ebp
	leal	0(%rbp,%rbp,4), %eax
	.loc 1 490 0
	movslq	%ebp, %rbx
	.loc 1 488 0
	cltq
	leaq	256(,%rax,4), %rdi
	call	malloc
.LVL192:
	.loc 1 489 0
	leaq	256(%rax), %r13
.LVL193:
	.loc 1 490 0
	leaq	0(,%rbx,4), %rcx
	.loc 1 495 0
	leaq	256(,%rbx,4), %rdi
	.loc 1 489 0
	andq	$-64, %r13
	.loc 1 490 0
	leaq	0(%r13,%rcx), %r11
	.loc 1 489 0
	movq	%r13, sptprice(%rip)
	.loc 1 491 0
	leaq	(%r11,%rcx), %r12
	.loc 1 490 0
	movq	%r11, strike(%rip)
	.loc 1 495 0
	movq	%r11, 48(%rsp)
	.loc 1 492 0
	leaq	(%r12,%rcx), %r14
.LVL194:
	.loc 1 491 0
	movq	%r12, rate(%rip)
	.loc 1 493 0
	leaq	(%r14,%rcx), %r15
	.loc 1 492 0
	movq	%r14, volatility(%rip)
	.loc 1 493 0
	movq	%r15, otime(%rip)
	.loc 1 495 0
	call	malloc
.LVL195:
	.loc 1 496 0
	addq	$256, %rax
.LVL196:
	.loc 1 498 0
	movq	48(%rsp), %r10
	.loc 1 496 0
	andq	$-64, %rax
.LVL197:
	.loc 1 498 0
	testl	%ebp, %ebp
	.loc 1 496 0
	movq	%rax, otype(%rip)
.LVL198:
	.loc 1 498 0
	jle	.L84
	movslq	numOptions(%rip), %rbx
	movq	data(%rip), %rbp
	.loc 1 396 0
	movq	%r13, %r11
	movq	%rax, %rdi
	subq	%rax, %r11
	.loc 1 499 0
	xorl	%edx, %edx
	.loc 1 396 0
	negq	%rdi
	leaq	4(%rax), %rcx
	addq	%rdi, %r10
	leaq	(%r12,%rdi), %r9
	leaq	(%r14,%rdi), %r8
	leal	-1(%rbx), %r13d
	addq	%r15, %rdi
	.loc 1 498 0
	movl	$1, %r12d
.LVL199:
	leaq	36(%rbp), %r14
	andl	$1, %r13d
	.loc 1 499 0
	cmpb	$80, 24(%rbp)
	sete	%dl
	.loc 1 498 0
	cmpl	$1, %ebx
	.loc 1 499 0
	movl	%edx, (%rax)
	.loc 1 500 0
	movss	0(%rbp), %xmm0
	movss	%xmm0, (%r11,%rax)
	.loc 1 501 0
	movss	4(%rbp), %xmm1
	movss	%xmm1, (%r10,%rax)
	.loc 1 502 0
	movss	8(%rbp), %xmm2
	movss	%xmm2, (%r9,%rax)
	.loc 1 503 0
	movss	16(%rbp), %xmm3
	movss	%xmm3, (%r8,%rax)
	.loc 1 504 0
	movss	20(%rbp), %xmm4
	movss	%xmm4, (%rdi,%rax)
	.loc 1 498 0
	jle	.L84
	testl	%r13d, %r13d
	je	.L85
	.loc 1 499 0
	xorl	%esi, %esi
	cmpb	$80, 24(%r14)
	.loc 1 498 0
	movl	$2, %r12d
	.loc 1 499 0
	sete	%sil
	.loc 1 498 0
	cmpl	$2, %ebx
	.loc 1 499 0
	movl	%esi, (%rcx)
	.loc 1 500 0
	movss	(%r14), %xmm5
	movss	%xmm5, (%r11,%rcx)
	.loc 1 501 0
	movss	4(%r14), %xmm6
	movss	%xmm6, (%r10,%rcx)
	.loc 1 502 0
	movss	8(%r14), %xmm7
	movss	%xmm7, (%r9,%rcx)
	.loc 1 503 0
	movss	16(%r14), %xmm8
	movss	%xmm8, (%r8,%rcx)
	.loc 1 504 0
	movss	20(%r14), %xmm9
	leaq	72(%rbp), %r14
	movss	%xmm9, (%rdi,%rcx)
	leaq	8(%rax), %rcx
	.loc 1 498 0
	jle	.L84
	.p2align 4,,10
	.p2align 3
.L85:
	.loc 1 499 0
	xorl	%eax, %eax
	cmpb	$80, 24(%r14)
	sete	%al
	xorl	%r15d, %r15d
	movl	%eax, (%rcx)
	.loc 1 500 0
	movss	(%r14), %xmm10
	movss	%xmm10, (%r11,%rcx)
	.loc 1 501 0
	movss	4(%r14), %xmm11
	movss	%xmm11, (%r10,%rcx)
	.loc 1 502 0
	movss	8(%r14), %xmm12
	movss	%xmm12, (%r9,%rcx)
	.loc 1 503 0
	movss	16(%r14), %xmm13
	movss	%xmm13, (%r8,%rcx)
	.loc 1 504 0
	movss	20(%r14), %xmm14
	movss	%xmm14, (%rdi,%rcx)
	.loc 1 499 0
	cmpb	$80, 60(%r14)
	sete	%r15b
	.loc 1 498 0
	addl	$2, %r12d
	.loc 1 499 0
	movl	%r15d, 4(%rcx)
	.loc 1 500 0
	movss	36(%r14), %xmm15
	movss	%xmm15, 4(%r11,%rcx)
	.loc 1 501 0
	movss	40(%r14), %xmm0
	movss	%xmm0, 4(%r10,%rcx)
	.loc 1 502 0
	movss	44(%r14), %xmm1
	movss	%xmm1, 4(%r9,%rcx)
	.loc 1 503 0
	movss	52(%r14), %xmm2
	movss	%xmm2, 4(%r8,%rcx)
	.loc 1 504 0
	movss	56(%r14), %xmm3
	addq	$72, %r14
	movss	%xmm3, 4(%rdi,%rcx)
	addq	$8, %rcx
	.loc 1 498 0
	cmpl	%r12d, %ebx
	jg	.L85
.L84:
.LVL200:
	.loc 1 507 0
	leaq	(%rbx,%rbx,4), %rdx
.LBB128:
.LBB129:
	.loc 2 105 0
	movl	$.LC24, %esi
	movl	$1, %edi
	xorl	%eax, %eax
.LBE129:
.LBE128:
	.loc 1 507 0
	salq	$3, %rdx
.LBB131:
.LBB130:
	.loc 2 105 0
	call	__printf_chk
.LVL201:
.LBE130:
.LBE131:
	.loc 1 572 0
	leaq	76(%rsp), %rdi
	.loc 1 571 0
	movl	$0, 76(%rsp)
.LVL202:
	.loc 1 572 0
	call	_Z9bs_threadPv
.LVL203:
	.loc 1 582 0
	movq	56(%rsp), %rdi
	movl	$.LC25, %esi
	call	fopen
.LVL204:
	.loc 1 583 0
	testq	%rax, %rax
	.loc 1 582 0
	movq	%rax, %r13
.LVL205:
	.loc 1 583 0
	je	.L115
.LVL206:
.LBB132:
.LBB133:
	.loc 2 99 0
	movl	numOptions(%rip), %ecx
	movq	%rax, %rdi
	movl	$.LC26, %edx
	xorl	%eax, %eax
.LVL207:
	movl	$1, %esi
	call	__fprintf_chk
.LVL208:
.LBE133:
.LBE132:
	.loc 1 588 0
	testl	%eax, %eax
	js	.L106
.LVL209:
	.loc 1 593 0 discriminator 1
	movl	numOptions(%rip), %r10d
	xorl	%ebp, %ebp
	xorl	%r12d, %r12d
	testl	%r10d, %r10d
	jle	.L89
.LVL210:
	.p2align 4,,10
	.p2align 3
.L93:
	.loc 1 594 0
	movq	prices(%rip), %r11
.LBB134:
.LBB135:
	.loc 2 99 0
	movl	$.LC28, %edx
	movl	$1, %esi
	movq	%r13, %rdi
	movl	$1, %eax
.LBE135:
.LBE134:
	.loc 1 594 0
	movss	(%r11,%rbp), %xmm4
	cvtps2pd	%xmm4, %xmm0
.LBB137:
.LBB136:
	.loc 2 99 0
	call	__fprintf_chk
.LVL211:
.LBE136:
.LBE137:
	.loc 1 595 0
	testl	%eax, %eax
	js	.L106
	.loc 1 593 0
	addl	$1, %r12d
.LVL212:
	addq	$4, %rbp
	cmpl	%r12d, numOptions(%rip)
	jg	.L93
.LVL213:
.L89:
	.loc 1 601 0
	movq	%r13, %rdi
	call	fclose
.LVL214:
	.loc 1 602 0
	testl	%eax, %eax
	jne	.L116
	.loc 1 610 0
	movq	data(%rip), %rdi
	call	free
.LVL215:
	.loc 1 611 0
	movq	prices(%rip), %rdi
	call	free
.LVL216:
.LBE158:
	.loc 1 618 0
	addq	$88, %rsp
.LCFI38:
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
.LCFI39:
	.cfi_def_cfa_offset 48
	popq	%rbp
.LCFI40:
	.cfi_def_cfa_offset 40
	popq	%r12
.LCFI41:
	.cfi_def_cfa_offset 32
	popq	%r13
.LCFI42:
	.cfi_def_cfa_offset 24
.LVL217:
	popq	%r14
.LCFI43:
	.cfi_def_cfa_offset 16
	popq	%r15
.LCFI44:
	.cfi_def_cfa_offset 8
	ret
.LVL218:
.L111:
.LCFI45:
	.cfi_restore_state
.LBB159:
.LBB138:
.LBB139:
	.loc 2 105 0
	movl	$.LC18, %edi
	call	puts
.LVL219:
.LBE139:
.LBE138:
	.loc 1 441 0
	movl	numOptions(%rip), %edx
	movl	%edx, nThreads(%rip)
	jmp	.L78
.LVL220:
.L108:
.LBB140:
.LBB141:
	.loc 2 105 0
	movq	%r14, %rdx
	movl	$.LC17, %esi
.LVL221:
.L105:
.LBE141:
.LBE140:
.LBB142:
.LBB143:
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
.LVL222:
.LBE143:
.LBE142:
	.loc 1 597 0
	movq	%r13, %rdi
	call	fclose
.LVL223:
	.loc 1 598 0
	movl	$1, %edi
	call	exit
.LVL224:
.L106:
.LBB145:
.LBB144:
	.loc 2 105 0
	movq	56(%rsp), %rdx
	movl	$.LC27, %esi
	jmp	.L105
.LVL225:
.L110:
.LBE144:
.LBE145:
.LBB146:
.LBB147:
	movq	%r14, %rdx
.LVL226:
.L107:
	movl	$.LC15, %esi
.LVL227:
.L104:
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
.LVL228:
.LBE147:
.LBE146:
	.loc 1 431 0
	movl	$1, %edi
	call	exit
.LVL229:
.L109:
.LBB148:
.LBB149:
	.loc 2 105 0
	movq	(%rbx), %rdx
	movl	$.LC13, %esi
	jmp	.L104
.LVL230:
.L116:
.LBE149:
.LBE148:
.LBB150:
.LBB151:
	movq	56(%rsp), %rdx
	movl	$.LC21, %esi
	jmp	.L104
.LVL231:
.L114:
.LBE151:
.LBE150:
.LBB152:
.LBB153:
	movq	%r14, %rdx
	movl	$.LC21, %esi
	jmp	.L104
.LVL232:
.L112:
.LBE153:
.LBE152:
.LBB154:
.LBB155:
	movl	$.LC19, %edi
	call	puts
.LVL233:
.LBE155:
.LBE154:
	.loc 1 447 0
	movl	$1, %edi
	call	exit
.LVL234:
.L115:
.LBB156:
.LBB157:
	.loc 2 105 0
	movq	56(%rsp), %rdx
	jmp	.L107
.LBE157:
.LBE156:
.LBE159:
	.cfi_endproc
.LFE79:
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
	.align 8
	.type	otime, @object
	.size	otime, 8
otime:
	.zero	8
	.globl	volatility
	.align 8
	.type	volatility, @object
	.size	volatility, 8
volatility:
	.zero	8
	.globl	rate
	.align 8
	.type	rate, @object
	.size	rate, 8
rate:
	.zero	8
	.globl	strike
	.align 8
	.type	strike, @object
	.size	strike, 8
strike:
	.zero	8
	.globl	sptprice
	.align 8
	.type	sptprice, @object
	.size	sptprice, 8
sptprice:
	.zero	8
	.globl	otype
	.align 8
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
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC1:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC2:
	.long	3204448256
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC3:
	.long	410062862
	.long	1070442097
	.section	.rodata.cst4
	.align 4
.LC4:
	.long	1065353216
	.section	.rodata.cst8
	.align 8
.LC5:
	.long	982710508
	.long	1070887103
	.align 8
.LC6:
	.long	3853005403
	.long	-1076440592
	.align 8
.LC7:
	.long	39804520
	.long	1073512687
	.align 8
.LC8:
	.long	1324513488
	.long	-1073929251
	.align 8
.LC9:
	.long	3606325571
	.long	1073039565
	.align 8
.LC10:
	.long	869545553
	.long	1071220805
	.section	.rodata.cst4
	.align 4
.LC11:
	.long	1056964608
	.text
.Letext0:
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.7/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/libio.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1621
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF107
	.byte	0x4
	.long	.LASF108
	.long	.LASF109
	.long	.Ldebug_ranges0+0x5a0
	.quad	0
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
	.byte	0xd5
	.long	0x4a
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
	.byte	0x8d
	.long	0x7b
	.uleb128 0x3
	.long	.LASF11
	.byte	0x5
	.byte	0x8e
	.long	0x7b
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0xa7
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x3
	.long	.LASF14
	.byte	0x6
	.byte	0x31
	.long	0xb9
	.uleb128 0x7
	.long	.LASF44
	.byte	0xd8
	.byte	0x7
	.value	0x111
	.long	0x286
	.uleb128 0x8
	.long	.LASF15
	.byte	0x7
	.value	0x112
	.long	0x74
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF16
	.byte	0x7
	.value	0x117
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF17
	.byte	0x7
	.value	0x118
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF18
	.byte	0x7
	.value	0x119
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF19
	.byte	0x7
	.value	0x11a
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF20
	.byte	0x7
	.value	0x11b
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF21
	.byte	0x7
	.value	0x11c
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF22
	.byte	0x7
	.value	0x11d
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF23
	.byte	0x7
	.value	0x11e
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF24
	.byte	0x7
	.value	0x120
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF25
	.byte	0x7
	.value	0x121
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF26
	.byte	0x7
	.value	0x122
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF27
	.byte	0x7
	.value	0x124
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.long	.LASF28
	.byte	0x7
	.value	0x126
	.long	0x2d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.long	.LASF29
	.byte	0x7
	.value	0x128
	.long	0x74
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x8
	.long	.LASF30
	.byte	0x7
	.value	0x12c
	.long	0x74
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x8
	.long	.LASF31
	.byte	0x7
	.value	0x12e
	.long	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF32
	.byte	0x7
	.value	0x132
	.long	0x58
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.long	.LASF33
	.byte	0x7
	.value	0x133
	.long	0x66
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x8
	.long	.LASF34
	.byte	0x7
	.value	0x134
	.long	0x2dc
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x8
	.long	.LASF35
	.byte	0x7
	.value	0x138
	.long	0x2ec
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x8
	.long	.LASF36
	.byte	0x7
	.value	0x141
	.long	0x8d
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x8
	.long	.LASF37
	.byte	0x7
	.value	0x14a
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.long	.LASF38
	.byte	0x7
	.value	0x14b
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x8
	.long	.LASF39
	.byte	0x7
	.value	0x14c
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x8
	.long	.LASF40
	.byte	0x7
	.value	0x14d
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x8
	.long	.LASF41
	.byte	0x7
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x8
	.long	.LASF42
	.byte	0x7
	.value	0x150
	.long	0x74
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x8
	.long	.LASF43
	.byte	0x7
	.value	0x152
	.long	0x2f2
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0
	.uleb128 0x9
	.long	.LASF141
	.byte	0x7
	.byte	0xb6
	.uleb128 0xa
	.long	.LASF45
	.byte	0x18
	.byte	0x7
	.byte	0xbc
	.long	0x2c4
	.uleb128 0xb
	.long	.LASF46
	.byte	0x7
	.byte	0xbd
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF47
	.byte	0x7
	.byte	0xbe
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF48
	.byte	0x7
	.byte	0xc2
	.long	0x74
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x28d
	.uleb128 0x6
	.byte	0x8
	.long	0xb9
	.uleb128 0x6
	.byte	0x8
	.long	0x28d
	.uleb128 0x6
	.byte	0x8
	.long	0xb9
	.uleb128 0xc
	.long	0xa7
	.long	0x2ec
	.uleb128 0xd
	.long	0x98
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x286
	.uleb128 0xc
	.long	0xa7
	.long	0x302
	.uleb128 0xd
	.long	0x98
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x308
	.uleb128 0xe
	.long	0xa7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF49
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF50
	.uleb128 0xa
	.long	.LASF51
	.byte	0x24
	.byte	0x1
	.byte	0x87
	.long	0x39e
	.uleb128 0xf
	.string	"s"
	.byte	0x1
	.byte	0x88
	.long	0x31
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF52
	.byte	0x1
	.byte	0x89
	.long	0x31
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"r"
	.byte	0x1
	.byte	0x8a
	.long	0x31
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF53
	.byte	0x1
	.byte	0x8b
	.long	0x31
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"v"
	.byte	0x1
	.byte	0x8c
	.long	0x31
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"t"
	.byte	0x1
	.byte	0x8d
	.long	0x31
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.long	.LASF54
	.byte	0x1
	.byte	0x8f
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF55
	.byte	0x1
	.byte	0x90
	.long	0x31
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.long	.LASF56
	.byte	0x1
	.byte	0x91
	.long	0x31
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0x3
	.long	.LASF57
	.byte	0x1
	.byte	0x92
	.long	0x31b
	.uleb128 0x10
	.byte	0x1
	.long	.LASF60
	.byte	0x2
	.byte	0x67
	.long	0x74
	.byte	0x3
	.byte	0x1
	.long	0x3c8
	.uleb128 0x11
	.long	.LASF58
	.byte	0x2
	.byte	0x67
	.long	0x302
	.uleb128 0x12
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.long	.LASF63
	.byte	0x3
	.value	0x11c
	.long	0x74
	.byte	0x3
	.long	0x3e7
	.uleb128 0x14
	.long	.LASF59
	.byte	0x3
	.value	0x11c
	.long	0x302
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF61
	.byte	0x2
	.byte	0x60
	.long	0x74
	.byte	0x3
	.byte	0x1
	.long	0x411
	.uleb128 0x11
	.long	.LASF62
	.byte	0x2
	.byte	0x60
	.long	0x411
	.uleb128 0x11
	.long	.LASF58
	.byte	0x2
	.byte	0x60
	.long	0x302
	.uleb128 0x12
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xae
	.uleb128 0x15
	.byte	0x1
	.long	.LASF64
	.byte	0x1
	.byte	0xe7
	.long	0x31
	.byte	0x1
	.long	0x554
	.uleb128 0x11
	.long	.LASF65
	.byte	0x1
	.byte	0xe7
	.long	0x31
	.uleb128 0x11
	.long	.LASF52
	.byte	0x1
	.byte	0xe8
	.long	0x31
	.uleb128 0x11
	.long	.LASF66
	.byte	0x1
	.byte	0xe8
	.long	0x31
	.uleb128 0x11
	.long	.LASF67
	.byte	0x1
	.byte	0xe8
	.long	0x31
	.uleb128 0x11
	.long	.LASF68
	.byte	0x1
	.byte	0xe9
	.long	0x31
	.uleb128 0x11
	.long	.LASF69
	.byte	0x1
	.byte	0xe9
	.long	0x74
	.uleb128 0x11
	.long	.LASF70
	.byte	0x1
	.byte	0xe9
	.long	0x31
	.uleb128 0x16
	.uleb128 0x17
	.long	.LASF71
	.byte	0x1
	.byte	0xeb
	.long	0x31
	.uleb128 0x17
	.long	.LASF72
	.byte	0x1
	.byte	0xee
	.long	0x31
	.uleb128 0x17
	.long	.LASF73
	.byte	0x1
	.byte	0xef
	.long	0x31
	.uleb128 0x17
	.long	.LASF74
	.byte	0x1
	.byte	0xf0
	.long	0x31
	.uleb128 0x17
	.long	.LASF75
	.byte	0x1
	.byte	0xf1
	.long	0x31
	.uleb128 0x17
	.long	.LASF76
	.byte	0x1
	.byte	0xf2
	.long	0x31
	.uleb128 0x17
	.long	.LASF77
	.byte	0x1
	.byte	0xf3
	.long	0x31
	.uleb128 0x17
	.long	.LASF78
	.byte	0x1
	.byte	0xf5
	.long	0x31
	.uleb128 0x17
	.long	.LASF79
	.byte	0x1
	.byte	0xf6
	.long	0x31
	.uleb128 0x18
	.string	"xD1"
	.byte	0x1
	.byte	0xf7
	.long	0x31
	.uleb128 0x18
	.string	"xD2"
	.byte	0x1
	.byte	0xf8
	.long	0x31
	.uleb128 0x17
	.long	.LASF80
	.byte	0x1
	.byte	0xf9
	.long	0x31
	.uleb128 0x17
	.long	.LASF81
	.byte	0x1
	.byte	0xfa
	.long	0x31
	.uleb128 0x18
	.string	"d1"
	.byte	0x1
	.byte	0xfb
	.long	0x31
	.uleb128 0x18
	.string	"d2"
	.byte	0x1
	.byte	0xfc
	.long	0x31
	.uleb128 0x17
	.long	.LASF82
	.byte	0x1
	.byte	0xfd
	.long	0x31
	.uleb128 0x17
	.long	.LASF83
	.byte	0x1
	.byte	0xfe
	.long	0x31
	.uleb128 0x17
	.long	.LASF84
	.byte	0x1
	.byte	0xff
	.long	0x31
	.uleb128 0x19
	.long	.LASF85
	.byte	0x1
	.value	0x100
	.long	0x31
	.uleb128 0x19
	.long	.LASF86
	.byte	0x1
	.value	0x101
	.long	0x31
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF87
	.byte	0x1
	.byte	0xa9
	.long	0x31
	.byte	0x1
	.long	0x60d
	.uleb128 0x11
	.long	.LASF88
	.byte	0x1
	.byte	0xa9
	.long	0x31
	.uleb128 0x16
	.uleb128 0x17
	.long	.LASF89
	.byte	0x1
	.byte	0xab
	.long	0x74
	.uleb128 0x17
	.long	.LASF90
	.byte	0x1
	.byte	0xad
	.long	0x31
	.uleb128 0x17
	.long	.LASF91
	.byte	0x1
	.byte	0xae
	.long	0x31
	.uleb128 0x17
	.long	.LASF92
	.byte	0x1
	.byte	0xaf
	.long	0x31
	.uleb128 0x17
	.long	.LASF93
	.byte	0x1
	.byte	0xb0
	.long	0x31
	.uleb128 0x18
	.string	"xK2"
	.byte	0x1
	.byte	0xb1
	.long	0x31
	.uleb128 0x17
	.long	.LASF94
	.byte	0x1
	.byte	0xb2
	.long	0x31
	.uleb128 0x17
	.long	.LASF95
	.byte	0x1
	.byte	0xb2
	.long	0x31
	.uleb128 0x17
	.long	.LASF96
	.byte	0x1
	.byte	0xb3
	.long	0x31
	.uleb128 0x17
	.long	.LASF97
	.byte	0x1
	.byte	0xb3
	.long	0x31
	.uleb128 0x17
	.long	.LASF98
	.byte	0x1
	.byte	0xb4
	.long	0x31
	.uleb128 0x17
	.long	.LASF99
	.byte	0x1
	.byte	0xb4
	.long	0x31
	.uleb128 0x17
	.long	.LASF100
	.byte	0x1
	.byte	0xb5
	.long	0x31
	.uleb128 0x17
	.long	.LASF101
	.byte	0x1
	.byte	0xb5
	.long	0x31
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x554
	.long	.LASF102
	.quad	.LFB76
	.quad	.LFE76
	.long	.LLST0
	.byte	0x1
	.long	0x6c6
	.uleb128 0x1b
	.long	0x565
	.long	.LLST1
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0
	.uleb128 0x1d
	.long	0x571
	.long	.LLST2
	.uleb128 0x1d
	.long	0x57c
	.long	.LLST3
	.uleb128 0x1d
	.long	0x587
	.long	.LLST4
	.uleb128 0x1d
	.long	0x592
	.long	.LLST5
	.uleb128 0x1d
	.long	0x59d
	.long	.LLST6
	.uleb128 0x1d
	.long	0x5a8
	.long	.LLST7
	.uleb128 0x1d
	.long	0x5b3
	.long	.LLST8
	.uleb128 0x1d
	.long	0x5be
	.long	.LLST9
	.uleb128 0x1d
	.long	0x5c9
	.long	.LLST10
	.uleb128 0x1d
	.long	0x5d4
	.long	.LLST11
	.uleb128 0x1d
	.long	0x5df
	.long	.LLST12
	.uleb128 0x1d
	.long	0x5ea
	.long	.LLST13
	.uleb128 0x1d
	.long	0x5f5
	.long	.LLST14
	.uleb128 0x1e
	.long	0x600
	.uleb128 0x1f
	.quad	.LVL3
	.long	0x14ba
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x417
	.long	.LASF103
	.quad	.LFB77
	.quad	.LFE77
	.long	.LLST15
	.byte	0x1
	.long	0x965
	.uleb128 0x1b
	.long	0x428
	.long	.LLST16
	.uleb128 0x1b
	.long	0x433
	.long	.LLST17
	.uleb128 0x1b
	.long	0x43e
	.long	.LLST18
	.uleb128 0x1b
	.long	0x449
	.long	.LLST19
	.uleb128 0x1b
	.long	0x454
	.long	.LLST20
	.uleb128 0x1b
	.long	0x45f
	.long	.LLST21
	.uleb128 0x1b
	.long	0x46a
	.long	.LLST22
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x40
	.uleb128 0x1d
	.long	0x476
	.long	.LLST23
	.uleb128 0x20
	.long	0x481
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x20
	.long	0x48c
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	0x497
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1d
	.long	0x4a2
	.long	.LLST24
	.uleb128 0x20
	.long	0x4ad
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1d
	.long	0x4b8
	.long	.LLST25
	.uleb128 0x1d
	.long	0x4c3
	.long	.LLST26
	.uleb128 0x1d
	.long	0x4ce
	.long	.LLST26
	.uleb128 0x1d
	.long	0x4d9
	.long	.LLST28
	.uleb128 0x1d
	.long	0x4e4
	.long	.LLST29
	.uleb128 0x1d
	.long	0x4ef
	.long	.LLST30
	.uleb128 0x1d
	.long	0x4fa
	.long	.LLST31
	.uleb128 0x1d
	.long	0x505
	.long	.LLST32
	.uleb128 0x1d
	.long	0x50f
	.long	.LLST29
	.uleb128 0x1d
	.long	0x519
	.long	.LLST34
	.uleb128 0x20
	.long	0x524
	.byte	0x3
	.byte	0x77
	.sleb128 64
	.uleb128 0x20
	.long	0x52f
	.byte	0x1
	.byte	0x64
	.uleb128 0x1d
	.long	0x53a
	.long	.LLST35
	.uleb128 0x1d
	.long	0x546
	.long	.LLST36
	.uleb128 0x21
	.long	0x554
	.quad	.LBB52
	.long	.Ldebug_ranges0+0xb0
	.byte	0x1
	.value	0x11e
	.long	0x886
	.uleb128 0x1b
	.long	0x565
	.long	.LLST37
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x100
	.uleb128 0x1d
	.long	0x571
	.long	.LLST38
	.uleb128 0x1d
	.long	0x57c
	.long	.LLST39
	.uleb128 0x1d
	.long	0x592
	.long	.LLST40
	.uleb128 0x1d
	.long	0x59d
	.long	.LLST41
	.uleb128 0x1d
	.long	0x5a8
	.long	.LLST42
	.uleb128 0x1d
	.long	0x5b3
	.long	.LLST43
	.uleb128 0x1d
	.long	0x5be
	.long	.LLST44
	.uleb128 0x1d
	.long	0x5c9
	.long	.LLST45
	.uleb128 0x1e
	.long	0x5d4
	.uleb128 0x1d
	.long	0x5df
	.long	.LLST46
	.uleb128 0x1d
	.long	0x5ea
	.long	.LLST47
	.uleb128 0x1d
	.long	0x5f5
	.long	.LLST48
	.uleb128 0x1e
	.long	0x600
	.uleb128 0x1d
	.long	0x587
	.long	.LLST49
	.uleb128 0x1f
	.quad	.LVL41
	.long	0x14ba
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	0x554
	.quad	.LBB59
	.long	.Ldebug_ranges0+0x150
	.byte	0x1
	.value	0x11f
	.long	0x931
	.uleb128 0x1b
	.long	0x565
	.long	.LLST50
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x180
	.uleb128 0x1d
	.long	0x571
	.long	.LLST51
	.uleb128 0x1d
	.long	0x57c
	.long	.LLST52
	.uleb128 0x1d
	.long	0x592
	.long	.LLST53
	.uleb128 0x1d
	.long	0x59d
	.long	.LLST54
	.uleb128 0x1d
	.long	0x5a8
	.long	.LLST55
	.uleb128 0x1d
	.long	0x5b3
	.long	.LLST56
	.uleb128 0x1d
	.long	0x5be
	.long	.LLST57
	.uleb128 0x1d
	.long	0x5c9
	.long	.LLST58
	.uleb128 0x1e
	.long	0x5d4
	.uleb128 0x1d
	.long	0x5df
	.long	.LLST59
	.uleb128 0x1d
	.long	0x5ea
	.long	.LLST60
	.uleb128 0x1d
	.long	0x5f5
	.long	.LLST61
	.uleb128 0x1e
	.long	0x600
	.uleb128 0x1d
	.long	0x587
	.long	.LLST49
	.uleb128 0x1f
	.quad	.LVL60
	.long	0x14ba
	.byte	0
	.byte	0
	.uleb128 0x1f
	.quad	.LVL29
	.long	0x14d1
	.uleb128 0x1f
	.quad	.LVL77
	.long	0x14ba
	.uleb128 0x22
	.quad	.LVL94
	.long	0x14eb
	.uleb128 0x23
	.byte	0x1
	.byte	0x61
	.byte	0x6
	.byte	0x91
	.sleb128 -68
	.byte	0xf6
	.byte	0x4
	.uleb128 0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF142
	.byte	0x1
	.value	0x165
	.long	.LASF143
	.long	0x74
	.quad	.LFB78
	.quad	.LFE78
	.long	.LLST62
	.byte	0x1
	.long	0xcbb
	.uleb128 0x25
	.long	.LASF110
	.byte	0x1
	.value	0x165
	.long	0x9f
	.long	.LLST63
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x1b0
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.value	0x167
	.long	0x74
	.long	.LLST64
	.uleb128 0x26
	.string	"j"
	.byte	0x1
	.value	0x167
	.long	0x74
	.long	.LLST65
	.uleb128 0x27
	.long	.LASF104
	.byte	0x1
	.value	0x168
	.long	0x31
	.byte	0x1
	.byte	0x61
	.uleb128 0x19
	.long	.LASF105
	.byte	0x1
	.value	0x169
	.long	0x31
	.uleb128 0x26
	.string	"tid"
	.byte	0x1
	.value	0x16a
	.long	0x74
	.long	.LLST66
	.uleb128 0x28
	.long	.LASF106
	.byte	0x1
	.value	0x16b
	.long	0x74
	.long	.LLST67
	.uleb128 0x26
	.string	"end"
	.byte	0x1
	.value	0x16c
	.long	0x74
	.long	.LLST68
	.uleb128 0x29
	.long	0x417
	.quad	.LBB80
	.long	.Ldebug_ranges0+0x1f0
	.byte	0x1
	.value	0x17a
	.uleb128 0x1b
	.long	0x45f
	.long	.LLST69
	.uleb128 0x1b
	.long	0x454
	.long	.LLST70
	.uleb128 0x1b
	.long	0x449
	.long	.LLST71
	.uleb128 0x1b
	.long	0x43e
	.long	.LLST72
	.uleb128 0x1b
	.long	0x433
	.long	.LLST73
	.uleb128 0x1b
	.long	0x428
	.long	.LLST74
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x250
	.uleb128 0x1b
	.long	0x46a
	.long	.LLST75
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x2b0
	.uleb128 0x1d
	.long	0x476
	.long	.LLST76
	.uleb128 0x1d
	.long	0x481
	.long	.LLST74
	.uleb128 0x1d
	.long	0x48c
	.long	.LLST73
	.uleb128 0x1d
	.long	0x497
	.long	.LLST72
	.uleb128 0x1d
	.long	0x4a2
	.long	.LLST71
	.uleb128 0x1d
	.long	0x4ad
	.long	.LLST70
	.uleb128 0x1d
	.long	0x4b8
	.long	.LLST82
	.uleb128 0x1d
	.long	0x4c3
	.long	.LLST83
	.uleb128 0x1d
	.long	0x4ce
	.long	.LLST83
	.uleb128 0x1d
	.long	0x4d9
	.long	.LLST85
	.uleb128 0x1d
	.long	0x4e4
	.long	.LLST86
	.uleb128 0x1d
	.long	0x4ef
	.long	.LLST87
	.uleb128 0x1d
	.long	0x4fa
	.long	.LLST88
	.uleb128 0x1d
	.long	0x505
	.long	.LLST89
	.uleb128 0x1d
	.long	0x50f
	.long	.LLST86
	.uleb128 0x1d
	.long	0x519
	.long	.LLST91
	.uleb128 0x20
	.long	0x524
	.byte	0x2
	.byte	0x77
	.sleb128 52
	.uleb128 0x20
	.long	0x52f
	.byte	0x1
	.byte	0x64
	.uleb128 0x1d
	.long	0x53a
	.long	.LLST92
	.uleb128 0x1d
	.long	0x546
	.long	.LLST93
	.uleb128 0x21
	.long	0x554
	.quad	.LBB83
	.long	.Ldebug_ranges0+0x310
	.byte	0x1
	.value	0x11f
	.long	0xbc3
	.uleb128 0x1b
	.long	0x565
	.long	.LLST94
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x350
	.uleb128 0x1d
	.long	0x571
	.long	.LLST95
	.uleb128 0x1d
	.long	0x57c
	.long	.LLST96
	.uleb128 0x1d
	.long	0x592
	.long	.LLST97
	.uleb128 0x1d
	.long	0x59d
	.long	.LLST98
	.uleb128 0x1d
	.long	0x5a8
	.long	.LLST99
	.uleb128 0x1d
	.long	0x5b3
	.long	.LLST100
	.uleb128 0x1d
	.long	0x5be
	.long	.LLST101
	.uleb128 0x1d
	.long	0x5c9
	.long	.LLST102
	.uleb128 0x1e
	.long	0x5d4
	.uleb128 0x1d
	.long	0x5df
	.long	.LLST103
	.uleb128 0x1d
	.long	0x5ea
	.long	.LLST104
	.uleb128 0x1d
	.long	0x5f5
	.long	.LLST105
	.uleb128 0x1e
	.long	0x600
	.uleb128 0x1d
	.long	0x587
	.long	.LLST106
	.uleb128 0x1f
	.quad	.LVL134
	.long	0x14ba
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	0x554
	.quad	.LBB87
	.long	.Ldebug_ranges0+0x390
	.byte	0x1
	.value	0x11e
	.long	0xc6e
	.uleb128 0x1b
	.long	0x565
	.long	.LLST107
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x400
	.uleb128 0x1d
	.long	0x571
	.long	.LLST108
	.uleb128 0x1d
	.long	0x57c
	.long	.LLST109
	.uleb128 0x1d
	.long	0x592
	.long	.LLST110
	.uleb128 0x1d
	.long	0x59d
	.long	.LLST111
	.uleb128 0x1d
	.long	0x5a8
	.long	.LLST112
	.uleb128 0x1d
	.long	0x5b3
	.long	.LLST113
	.uleb128 0x1d
	.long	0x5be
	.long	.LLST114
	.uleb128 0x1d
	.long	0x5c9
	.long	.LLST115
	.uleb128 0x1e
	.long	0x5d4
	.uleb128 0x1d
	.long	0x5df
	.long	.LLST116
	.uleb128 0x1d
	.long	0x5ea
	.long	.LLST117
	.uleb128 0x1d
	.long	0x5f5
	.long	.LLST118
	.uleb128 0x1e
	.long	0x600
	.uleb128 0x1d
	.long	0x587
	.long	.LLST106
	.uleb128 0x1f
	.quad	.LVL115
	.long	0x14ba
	.byte	0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL104
	.long	0x14d1
	.long	0xc91
	.uleb128 0x23
	.byte	0x1
	.byte	0x61
	.byte	0xd
	.byte	0x91
	.sleb128 -80
	.byte	0xf6
	.byte	0x4
	.uleb128 0x31
	.byte	0x91
	.sleb128 -84
	.byte	0xf6
	.byte	0x4
	.uleb128 0x31
	.byte	0x1b
	.byte	0
	.uleb128 0x1f
	.quad	.LVL151
	.long	0x14ba
	.uleb128 0x22
	.quad	.LVL163
	.long	0x14eb
	.uleb128 0x23
	.byte	0x1
	.byte	0x61
	.byte	0x6
	.byte	0x91
	.sleb128 -96
	.byte	0xf6
	.byte	0x4
	.uleb128 0x31
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.long	.LASF144
	.byte	0x1
	.value	0x18c
	.long	0x74
	.quad	.LFB79
	.quad	.LFE79
	.long	.LLST119
	.byte	0x1
	.long	0x1396
	.uleb128 0x25
	.long	.LASF111
	.byte	0x1
	.value	0x18c
	.long	0x74
	.long	.LLST120
	.uleb128 0x25
	.long	.LASF112
	.byte	0x1
	.value	0x18c
	.long	0x1396
	.long	.LLST121
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x470
	.uleb128 0x28
	.long	.LASF113
	.byte	0x1
	.value	0x18e
	.long	0x411
	.long	.LLST122
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.value	0x18f
	.long	0x74
	.long	.LLST123
	.uleb128 0x28
	.long	.LASF114
	.byte	0x1
	.value	0x190
	.long	0x74
	.long	.LLST124
	.uleb128 0x28
	.long	.LASF115
	.byte	0x1
	.value	0x191
	.long	0x139c
	.long	.LLST125
	.uleb128 0x28
	.long	.LASF116
	.byte	0x1
	.value	0x192
	.long	0x13a2
	.long	.LLST126
	.uleb128 0x26
	.string	"rv"
	.byte	0x1
	.value	0x193
	.long	0x74
	.long	.LLST127
	.uleb128 0x28
	.long	.LASF117
	.byte	0x1
	.value	0x1a8
	.long	0xa1
	.long	.LLST128
	.uleb128 0x28
	.long	.LASF118
	.byte	0x1
	.value	0x1a9
	.long	0xa1
	.long	.LLST129
	.uleb128 0x26
	.string	"tid"
	.byte	0x1
	.value	0x23b
	.long	0x74
	.long	.LLST130
	.uleb128 0x21
	.long	0x3a9
	.quad	.LBB116
	.long	.Ldebug_ranges0+0x4b0
	.byte	0x1
	.value	0x19b
	.long	0xdcc
	.uleb128 0x2c
	.long	0x3bb
	.uleb128 0x22
	.quad	.LVL166
	.long	0x1505
	.uleb128 0x23
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC12
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	0x3c8
	.quad	.LBB120
	.long	.Ldebug_ranges0+0x4e0
	.byte	0x1
	.value	0x1a7
	.long	0xe06
	.uleb128 0x1b
	.long	0x3da
	.long	.LLST131
	.uleb128 0x22
	.quad	.LVL169
	.long	0x151f
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x23
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0x3a9
	.quad	.LBB124
	.quad	.LBE124
	.byte	0x1
	.value	0x1e2
	.long	0xe4c
	.uleb128 0x1b
	.long	0x3bb
	.long	.LLST132
	.uleb128 0x22
	.quad	.LVL190
	.long	0x1540
	.uleb128 0x23
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x9
	.byte	0x3
	.quad	.LC22
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0x3a9
	.quad	.LBB126
	.quad	.LBE126
	.byte	0x1
	.value	0x1e3
	.long	0xe98
	.uleb128 0x1b
	.long	0x3bb
	.long	.LLST133
	.uleb128 0x22
	.quad	.LVL191
	.long	0x1540
	.uleb128 0x23
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x9
	.byte	0x3
	.quad	.LC23
	.uleb128 0x23
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	0x3a9
	.quad	.LBB128
	.long	.Ldebug_ranges0+0x510
	.byte	0x1
	.value	0x1fb
	.long	0xee7
	.uleb128 0x1b
	.long	0x3bb
	.long	.LLST134
	.uleb128 0x22
	.quad	.LVL201
	.long	0x1540
	.uleb128 0x23
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x9
	.byte	0x3
	.quad	.LC24
	.uleb128 0x23
	.byte	0x1
	.byte	0x51
	.byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0x3e7
	.quad	.LBB132
	.quad	.LBE132
	.byte	0x1
	.value	0x24b
	.long	0xf3c
	.uleb128 0x1b
	.long	0x404
	.long	.LLST135
	.uleb128 0x1b
	.long	0x3f9
	.long	.LLST136
	.uleb128 0x22
	.quad	.LVL208
	.long	0x155d
	.uleb128 0x23
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x23
	.byte	0x1
	.byte	0x51
	.byte	0x9
	.byte	0x3
	.quad	.LC26
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	0x3e7
	.quad	.LBB134
	.long	.Ldebug_ranges0+0x540
	.byte	0x1
	.value	0x252
	.long	0xf8d
	.uleb128 0x1b
	.long	0x404
	.long	.LLST137
	.uleb128 0x1b
	.long	0x3f9
	.long	.LLST138
	.uleb128 0x22
	.quad	.LVL211
	.long	0x155d
	.uleb128 0x23
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x23
	.byte	0x1
	.byte	0x51
	.byte	0x9
	.byte	0x3
	.quad	.LC28
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0x3a9
	.quad	.LBB138
	.quad	.LBE138
	.byte	0x1
	.value	0x1b8
	.long	0xfca
	.uleb128 0x2c
	.long	0x3bb
	.uleb128 0x22
	.quad	.LVL219
	.long	0x1505
	.uleb128 0x23
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC18
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0x3a9
	.quad	.LBB140
	.quad	.LBE140
	.byte	0x1
	.value	0x1ca
	.long	0xff0
	.uleb128 0x1b
	.long	0x3bb
	.long	.LLST140
	.byte	0
	.uleb128 0x21
	.long	0x3a9
	.quad	.LBB142
	.long	.Ldebug_ranges0+0x570
	.byte	0x1
	.value	0x254
	.long	0x1025
	.uleb128 0x1b
	.long	0x3bb
	.long	.LLST141
	.uleb128 0x22
	.quad	.LVL222
	.long	0x1540
	.uleb128 0x23
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0x3a9
	.quad	.LBB146
	.quad	.LBE146
	.byte	0x1
	.value	0x1ae
	.long	0x105e
	.uleb128 0x1b
	.long	0x3bb
	.long	.LLST142
	.uleb128 0x22
	.quad	.LVL228
	.long	0x1540
	.uleb128 0x23
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0x3a9
	.quad	.LBB148
	.quad	.LBE148
	.byte	0x1
	.value	0x1a4
	.long	0x1084
	.uleb128 0x1b
	.long	0x3bb
	.long	.LLST143
	.byte	0
	.uleb128 0x2d
	.long	0x3a9
	.quad	.LBB150
	.quad	.LBE150
	.byte	0x1
	.value	0x25b
	.long	0x10aa
	.uleb128 0x1b
	.long	0x3bb
	.long	.LLST144
	.byte	0
	.uleb128 0x2d
	.long	0x3a9
	.quad	.LBB152
	.quad	.LBE152
	.byte	0x1
	.value	0x1d1
	.long	0x10d0
	.uleb128 0x1b
	.long	0x3bb
	.long	.LLST145
	.byte	0
	.uleb128 0x2d
	.long	0x3a9
	.quad	.LBB154
	.quad	.LBE154
	.byte	0x1
	.value	0x1be
	.long	0x110d
	.uleb128 0x2c
	.long	0x3bb
	.uleb128 0x22
	.quad	.LVL233
	.long	0x1505
	.uleb128 0x23
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.byte	0x3
	.quad	.LC19
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0x3a9
	.quad	.LBB156
	.quad	.LBE156
	.byte	0x1
	.value	0x248
	.long	0x113a
	.uleb128 0x2e
	.long	0x3bb
	.byte	0xa
	.byte	0x3
	.quad	.LC15
	.byte	0x9f
	.byte	0
	.uleb128 0x2a
	.quad	.LVL167
	.long	0x157f
	.long	0x1151
	.uleb128 0x23
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2a
	.quad	.LVL172
	.long	0x1596
	.long	0x1176
	.uleb128 0x23
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x9
	.byte	0x3
	.quad	.LC14
	.byte	0
	.uleb128 0x2a
	.quad	.LVL175
	.long	0x15b3
	.long	0x11a8
	.uleb128 0x23
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x9
	.byte	0x3
	.quad	.LC16
	.uleb128 0x23
	.byte	0x1
	.byte	0x51
	.byte	0x9
	.byte	0x3
	.quad	numOptions
	.byte	0
	.uleb128 0x2a
	.quad	.LVL178
	.long	0x15d1
	.long	0x11c7
	.uleb128 0x23
	.byte	0x1
	.byte	0x55
	.byte	0x9
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
	.uleb128 0x2a
	.quad	.LVL179
	.long	0x15d1
	.long	0x11e1
	.uleb128 0x23
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0
	.uleb128 0x2a
	.quad	.LVL184
	.long	0x15b3
	.long	0x126c
	.uleb128 0x23
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x9
	.byte	0x3
	.quad	.LC20
	.uleb128 0x23
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.uleb128 0x23
	.byte	0x1
	.byte	0x52
	.byte	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x23
	.byte	0x1
	.byte	0x58
	.byte	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x23
	.byte	0x1
	.byte	0x59
	.byte	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x23
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x23
	.byte	0x2
	.byte	0x77
	.sleb128 8
	.byte	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x23
	.byte	0x2
	.byte	0x77
	.sleb128 16
	.byte	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x23
	.byte	0x2
	.byte	0x77
	.sleb128 24
	.byte	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x23
	.byte	0x2
	.byte	0x77
	.sleb128 32
	.byte	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0x2a
	.quad	.LVL187
	.long	0x15e9
	.long	0x1284
	.uleb128 0x23
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL192
	.long	0x15d1
	.long	0x12ac
	.uleb128 0x23
	.byte	0x1
	.byte	0x55
	.byte	0x12
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
	.uleb128 0x2a
	.quad	.LVL195
	.long	0x15d1
	.long	0x12c9
	.uleb128 0x23
	.byte	0x1
	.byte	0x55
	.byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x100
	.byte	0
	.uleb128 0x2a
	.quad	.LVL203
	.long	0x965
	.long	0x12e2
	.uleb128 0x23
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x2a
	.quad	.LVL204
	.long	0x1596
	.long	0x1309
	.uleb128 0x23
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x9
	.byte	0x3
	.quad	.LC25
	.byte	0
	.uleb128 0x2a
	.quad	.LVL214
	.long	0x15e9
	.long	0x1321
	.uleb128 0x23
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.quad	.LVL215
	.long	0x1600
	.uleb128 0x1f
	.quad	.LVL216
	.long	0x1600
	.uleb128 0x2a
	.quad	.LVL223
	.long	0x15e9
	.long	0x1353
	.uleb128 0x23
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL224
	.long	0x1614
	.long	0x136a
	.uleb128 0x23
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2a
	.quad	.LVL229
	.long	0x1614
	.long	0x1381
	.uleb128 0x23
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x22
	.quad	.LVL234
	.long	0x1614
	.uleb128 0x23
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa1
	.uleb128 0x6
	.byte	0x8
	.long	0x31
	.uleb128 0x6
	.byte	0x8
	.long	0x74
	.uleb128 0x2f
	.long	.LASF119
	.byte	0x6
	.byte	0xa9
	.long	0x2ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.long	.LASF120
	.byte	0x6
	.byte	0xaa
	.long	0x2ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.long	.LASF121
	.byte	0x1
	.byte	0x94
	.long	0x13d8
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	data
	.uleb128 0x6
	.byte	0x8
	.long	0x39e
	.uleb128 0x30
	.long	.LASF122
	.byte	0x1
	.byte	0x95
	.long	0x139c
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	prices
	.uleb128 0x30
	.long	.LASF123
	.byte	0x1
	.byte	0x96
	.long	0x74
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	numOptions
	.uleb128 0x30
	.long	.LASF69
	.byte	0x1
	.byte	0x98
	.long	0x13a2
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	otype
	.uleb128 0x30
	.long	.LASF65
	.byte	0x1
	.byte	0x99
	.long	0x139c
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	sptprice
	.uleb128 0x30
	.long	.LASF52
	.byte	0x1
	.byte	0x9a
	.long	0x139c
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	strike
	.uleb128 0x30
	.long	.LASF66
	.byte	0x1
	.byte	0x9b
	.long	0x139c
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	rate
	.uleb128 0x30
	.long	.LASF67
	.byte	0x1
	.byte	0x9c
	.long	0x139c
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	volatility
	.uleb128 0x30
	.long	.LASF124
	.byte	0x1
	.byte	0x9d
	.long	0x139c
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	otime
	.uleb128 0x30
	.long	.LASF125
	.byte	0x1
	.byte	0x9e
	.long	0x74
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	numError
	.uleb128 0x30
	.long	.LASF126
	.byte	0x1
	.byte	0x9f
	.long	0x74
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	nThreads
	.uleb128 0x31
	.byte	0x1
	.string	"exp"
	.byte	0x8
	.byte	0x65
	.long	0x38
	.byte	0x1
	.long	0x14d1
	.uleb128 0x32
	.long	0x38
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.long	.LASF127
	.long	.LASF129
	.long	0x31
	.byte	0x1
	.byte	0x1
	.long	0x14eb
	.uleb128 0x32
	.long	0x31
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.long	.LASF128
	.long	.LASF130
	.long	0x31
	.byte	0x1
	.byte	0x1
	.long	0x1505
	.uleb128 0x32
	.long	0x31
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.long	.LASF131
	.long	.LASF132
	.long	0x74
	.byte	0x1
	.byte	0x1
	.long	0x151f
	.uleb128 0x32
	.long	0x302
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.long	.LASF133
	.byte	0x3
	.byte	0xb8
	.long	0x7b
	.byte	0x1
	.long	0x1540
	.uleb128 0x32
	.long	0x302
	.uleb128 0x32
	.long	0x1396
	.uleb128 0x32
	.long	0x74
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.long	.LASF134
	.byte	0x2
	.byte	0x58
	.long	0x74
	.byte	0x1
	.long	0x155d
	.uleb128 0x32
	.long	0x74
	.uleb128 0x32
	.long	0x302
	.uleb128 0x12
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.long	.LASF135
	.byte	0x2
	.byte	0x56
	.long	0x74
	.byte	0x1
	.long	0x157f
	.uleb128 0x32
	.long	0x411
	.uleb128 0x32
	.long	0x74
	.uleb128 0x32
	.long	0x302
	.uleb128 0x12
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.long	.LASF136
	.byte	0x6
	.byte	0xf3
	.long	0x74
	.byte	0x1
	.long	0x1596
	.uleb128 0x32
	.long	0x411
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.long	.LASF137
	.byte	0x6
	.value	0x111
	.long	0x411
	.byte	0x1
	.long	0x15b3
	.uleb128 0x32
	.long	0x302
	.uleb128 0x32
	.long	0x302
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.long	.LASF138
	.byte	0x6
	.value	0x1af
	.long	0x74
	.byte	0x1
	.long	0x15d1
	.uleb128 0x32
	.long	0x411
	.uleb128 0x32
	.long	0x302
	.uleb128 0x12
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.long	.LASF139
	.byte	0x3
	.value	0x1d7
	.long	0x9f
	.byte	0x1
	.long	0x15e9
	.uleb128 0x32
	.long	0x3f
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.long	.LASF140
	.byte	0x6
	.byte	0xee
	.long	0x74
	.byte	0x1
	.long	0x1600
	.uleb128 0x32
	.long	0x411
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.long	.LASF145
	.byte	0x3
	.value	0x1e8
	.byte	0x1
	.long	0x1614
	.uleb128 0x32
	.long	0x9f
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.long	.LASF146
	.byte	0x3
	.value	0x220
	.byte	0x1
	.uleb128 0x32
	.long	0x74
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
	.uleb128 0xa
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LFB76
	.quad	.LCFI0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI0
	.quad	.LCFI1
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI1
	.quad	.LCFI2
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI2
	.quad	.LCFI3
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI3
	.quad	.LCFI4
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI4
	.quad	.LFE76
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0
	.quad	.LVL1
	.value	0x1
	.byte	0x61
	.quad	.LVL1
	.quad	.LVL3-1
	.value	0x1
	.byte	0x62
	.quad	.LVL23
	.quad	.LFE76
	.value	0x1
	.byte	0x62
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL2
	.quad	.LVL22
	.value	0x1
	.byte	0x53
	.quad	.LVL24
	.quad	.LFE76
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL20
	.quad	.LVL23
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL2
	.quad	.LVL3-1
	.value	0x1
	.byte	0x62
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL3
	.quad	.LVL4
	.value	0x16
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf4
	.uleb128 0x38
	.byte	0x8
	.long	0x33d43651
	.long	0x3fd98845
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL3
	.quad	.LVL4
	.value	0x6
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL5
	.quad	.LVL7
	.value	0x1
	.byte	0x67
	.quad	.LVL7
	.quad	.LVL13
	.value	0x1
	.byte	0x69
	.quad	.LVL13
	.quad	.LVL17
	.value	0x8
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x31
	.byte	0x1b
	.byte	0x9f
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL8
	.quad	.LVL9
	.value	0x1
	.byte	0x6a
	.quad	.LVL9
	.quad	.LVL10
	.value	0x1
	.byte	0x6b
	.quad	.LVL10
	.quad	.LVL13
	.value	0x8
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x31
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL13
	.quad	.LVL17
	.value	0x10
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x31
	.byte	0x1b
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x31
	.byte	0x1b
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL10
	.quad	.LVL11
	.value	0x1
	.byte	0x6b
	.quad	.LVL11
	.quad	.LVL12
	.value	0x1
	.byte	0x6c
	.quad	.LVL12
	.quad	.LVL13
	.value	0xc
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x31
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x31
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL13
	.quad	.LVL17
	.value	0x18
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x31
	.byte	0x1b
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x31
	.byte	0x1b
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x31
	.byte	0x1b
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL12
	.quad	.LVL14
	.value	0x1
	.byte	0x6c
	.quad	.LVL14
	.quad	.LVL17
	.value	0x20
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x31
	.byte	0x1b
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x31
	.byte	0x1b
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x31
	.byte	0x1b
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x31
	.byte	0x1b
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL12
	.quad	.LVL13
	.value	0x8
	.byte	0xf5
	.uleb128 0x1c
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x31
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL13
	.quad	.LVL14
	.value	0xc
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x31
	.byte	0x1b
	.byte	0xf5
	.uleb128 0x1c
	.uleb128 0x31
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL14
	.quad	.LVL17
	.value	0x28
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x31
	.byte	0x1b
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x31
	.byte	0x1b
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x31
	.byte	0x1b
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x31
	.byte	0x1b
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x31
	.byte	0x1b
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL19
	.quad	.LVL20
	.value	0x2
	.byte	0x90
	.uleb128 0x20
	.quad	.LVL20
	.quad	.LVL21
	.value	0x1
	.byte	0x61
	.quad	.LVL21
	.quad	.LVL23
	.value	0xc
	.byte	0xf4
	.uleb128 0x31
	.byte	0x4
	.long	0x3f800000
	.byte	0xf5
	.uleb128 0x20
	.uleb128 0x31
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL15
	.quad	.LVL18
	.value	0x1
	.byte	0x6e
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL15
	.quad	.LVL18
	.value	0x2
	.byte	0x90
	.uleb128 0x20
	.quad	0
	.quad	0
.LLST15:
	.quad	.LFB77
	.quad	.LCFI5
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI5
	.quad	.LCFI6
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI6
	.quad	.LCFI7
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI7
	.quad	.LCFI8
	.value	0x3
	.byte	0x77
	.sleb128 128
	.quad	.LCFI8
	.quad	.LCFI9
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI9
	.quad	.LCFI10
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI10
	.quad	.LCFI11
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI11
	.quad	.LCFI12
	.value	0x3
	.byte	0x77
	.sleb128 128
	.quad	.LCFI12
	.quad	.LCFI13
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI13
	.quad	.LCFI14
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI14
	.quad	.LCFI15
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI15
	.quad	.LFE77
	.value	0x3
	.byte	0x77
	.sleb128 128
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL25
	.quad	.LVL28
	.value	0x1
	.byte	0x61
	.quad	.LVL28
	.quad	.LVL92
	.value	0x2
	.byte	0x91
	.sleb128 -60
	.quad	.LVL92
	.quad	.LVL93
	.value	0x1
	.byte	0x61
	.quad	.LVL93
	.quad	.LFE77
	.value	0x2
	.byte	0x91
	.sleb128 -60
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL25
	.quad	.LVL28
	.value	0x1
	.byte	0x62
	.quad	.LVL28
	.quad	.LVL92
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.quad	.LVL92
	.quad	.LVL94-1
	.value	0x1
	.byte	0x62
	.quad	.LVL94-1
	.quad	.LFE77
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL25
	.quad	.LVL28
	.value	0x1
	.byte	0x63
	.quad	.LVL28
	.quad	.LVL92
	.value	0x2
	.byte	0x91
	.sleb128 -52
	.quad	.LVL92
	.quad	.LVL94-1
	.value	0x1
	.byte	0x63
	.quad	.LVL94-1
	.quad	.LFE77
	.value	0x2
	.byte	0x91
	.sleb128 -52
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL25
	.quad	.LVL28
	.value	0x1
	.byte	0x64
	.quad	.LVL28
	.quad	.LVL92
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x31
	.byte	0x9f
	.quad	.LVL92
	.quad	.LVL94-1
	.value	0x1
	.byte	0x64
	.quad	.LVL94-1
	.quad	.LFE77
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL25
	.quad	.LVL27
	.value	0x1
	.byte	0x65
	.quad	.LVL27
	.quad	.LFE77
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL25
	.quad	.LVL28
	.value	0x1
	.byte	0x55
	.quad	.LVL28
	.quad	.LVL80
	.value	0x1
	.byte	0x53
	.quad	.LVL80
	.quad	.LVL83
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL83
	.quad	.LVL85
	.value	0x1
	.byte	0x53
	.quad	.LVL85
	.quad	.LVL88
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL88
	.quad	.LFE77
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL25
	.quad	.LVL28
	.value	0x1
	.byte	0x66
	.quad	.LVL28
	.quad	.LVL92
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x31
	.byte	0x9f
	.quad	.LVL92
	.quad	.LVL94-1
	.value	0x1
	.byte	0x66
	.quad	.LVL94-1
	.quad	.LFE77
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL82
	.quad	.LVL83
	.value	0x1
	.byte	0x61
	.quad	.LVL87
	.quad	.LVL88
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL26
	.quad	.LVL28
	.value	0x1
	.byte	0x64
	.quad	.LVL28
	.quad	.LVL92
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x31
	.byte	0x9f
	.quad	.LVL92
	.quad	.LVL94-1
	.value	0x1
	.byte	0x64
	.quad	.LVL94-1
	.quad	.LFE77
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL28
	.quad	.LVL29-1
	.value	0x1
	.byte	0x65
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL30
	.quad	.LVL37
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL33
	.quad	.LVL35
	.value	0x1
	.byte	0x63
	.quad	.LVL35
	.quad	.LVL39
	.value	0x1
	.byte	0x62
	.quad	.LVL90
	.quad	.LVL91
	.value	0x1
	.byte	0x62
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL38
	.quad	.LVL40
	.value	0x1
	.byte	0x61
	.quad	.LVL40
	.quad	.LVL41-1
	.value	0x1
	.byte	0x67
	.quad	.LVL90
	.quad	.LVL92
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL31
	.quad	.LVL32
	.value	0xc
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x31
	.byte	0xf4
	.uleb128 0x31
	.byte	0x4
	.long	0x3f000000
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL32
	.quad	.LVL33
	.value	0x1
	.byte	0x63
	.quad	.LVL33
	.quad	.LVL41-1
	.value	0x10
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x31
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x31
	.byte	0x4
	.long	0x3f000000
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL90
	.quad	.LVL92
	.value	0x10
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x31
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x31
	.byte	0x4
	.long	0x3f000000
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL35
	.quad	.LVL41-1
	.value	0x1
	.byte	0x66
	.quad	.LVL90
	.quad	.LVL92
	.value	0x1
	.byte	0x66
	.quad	0
	.quad	0
.LLST32:
	.quad	.LVL38
	.quad	.LVL39
	.value	0x1
	.byte	0x62
	.quad	.LVL90
	.quad	.LVL91
	.value	0x1
	.byte	0x62
	.quad	0
	.quad	0
.LLST34:
	.quad	.LVL78
	.quad	.LVL84
	.value	0x1
	.byte	0x62
	.quad	0
	.quad	0
.LLST35:
	.quad	.LVL79
	.quad	.LVL83
	.value	0xe
	.byte	0xf4
	.uleb128 0x31
	.byte	0x4
	.long	0x3f800000
	.byte	0x91
	.sleb128 -64
	.byte	0xf6
	.byte	0x4
	.uleb128 0x31
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST36:
	.quad	.LVL79
	.quad	.LVL83
	.value	0xc
	.byte	0xf4
	.uleb128 0x31
	.byte	0x4
	.long	0x3f800000
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x31
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST37:
	.quad	.LVL38
	.quad	.LVL41-1
	.value	0x1
	.byte	0x62
	.quad	.LVL90
	.quad	.LVL92
	.value	0x1
	.byte	0x62
	.quad	0
	.quad	0
.LLST38:
	.quad	.LVL39
	.quad	.LVL58
	.value	0x1
	.byte	0x56
	.quad	.LVL91
	.quad	.LVL92
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST39:
	.quad	.LVL56
	.quad	.LVL57
	.value	0x1
	.byte	0x64
	.quad	.LVL57
	.quad	.LVL90
	.value	0x2
	.byte	0x91
	.sleb128 -64
	.quad	0
	.quad	0
.LLST40:
	.quad	.LVL41
	.quad	.LVL42
	.value	0x16
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf4
	.uleb128 0x38
	.byte	0x8
	.long	0x33d43651
	.long	0x3fd98845
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST41:
	.quad	.LVL41
	.quad	.LVL42
	.value	0x6
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST42:
	.quad	.LVL43
	.quad	.LVL45
	.value	0x1
	.byte	0x6e
	.quad	.LVL45
	.quad	.LVL47
	.value	0x2
	.byte	0x90
	.uleb128 0x20
	.quad	.LVL47
	.quad	.LVL50
	.value	0x1
	.byte	0x63
	.quad	0
	.quad	0
.LLST43:
	.quad	.LVL46
	.quad	.LVL49
	.value	0x1
	.byte	0x65
	.quad	.LVL49
	.quad	.LVL50
	.value	0x8
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x31
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST44:
	.quad	.LVL48
	.quad	.LVL51
	.value	0x1
	.byte	0x64
	.quad	0
	.quad	0
.LLST45:
	.quad	.LVL50
	.quad	.LVL52
	.value	0x1
	.byte	0x63
	.quad	0
	.quad	0
.LLST46:
	.quad	.LVL56
	.quad	.LVL60-1
	.value	0x1
	.byte	0x64
	.quad	.LVL60-1
	.quad	.LVL88
	.value	0x2
	.byte	0x91
	.sleb128 -64
	.quad	.LVL88
	.quad	.LVL90
	.value	0x1
	.byte	0x64
	.quad	0
	.quad	0
.LLST47:
	.quad	.LVL53
	.quad	.LVL55
	.value	0x1
	.byte	0x66
	.quad	0
	.quad	0
.LLST48:
	.quad	.LVL53
	.quad	.LVL55
	.value	0x1
	.byte	0x68
	.quad	0
	.quad	0
.LLST49:
	.quad	.LVL39
	.quad	.LVL41-1
	.value	0x1
	.byte	0x62
	.quad	.LVL59
	.quad	.LVL60-1
	.value	0x1
	.byte	0x63
	.quad	0
	.quad	0
.LLST50:
	.quad	.LVL57
	.quad	.LVL60-1
	.value	0x1
	.byte	0x63
	.quad	.LVL88
	.quad	.LVL90
	.value	0x1
	.byte	0x63
	.quad	0
	.quad	0
.LLST51:
	.quad	.LVL59
	.quad	.LVL81
	.value	0x1
	.byte	0x56
	.quad	.LVL83
	.quad	.LVL86
	.value	0x1
	.byte	0x56
	.quad	.LVL89
	.quad	.LVL90
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST52:
	.quad	.LVL75
	.quad	.LVL77-1
	.value	0x1
	.byte	0x6e
	.quad	0
	.quad	0
.LLST53:
	.quad	.LVL60
	.quad	.LVL61
	.value	0x16
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf4
	.uleb128 0x38
	.byte	0x8
	.long	0x33d43651
	.long	0x3fd98845
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST54:
	.quad	.LVL60
	.quad	.LVL61
	.value	0x6
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST55:
	.quad	.LVL62
	.quad	.LVL64
	.value	0x1
	.byte	0x69
	.quad	.LVL64
	.quad	.LVL66
	.value	0x1
	.byte	0x6b
	.quad	.LVL66
	.quad	.LVL67
	.value	0x1
	.byte	0x6d
	.quad	.LVL67
	.quad	.LVL69
	.value	0x1
	.byte	0x6e
	.quad	0
	.quad	0
.LLST56:
	.quad	.LVL65
	.quad	.LVL68
	.value	0x1
	.byte	0x6c
	.quad	.LVL68
	.quad	.LVL69
	.value	0x8
	.byte	0xf5
	.uleb128 0x1e
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x1e
	.uleb128 0x31
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST57:
	.quad	.LVL67
	.quad	.LVL70
	.value	0x1
	.byte	0x6d
	.quad	0
	.quad	0
.LLST58:
	.quad	.LVL69
	.quad	.LVL71
	.value	0x1
	.byte	0x6e
	.quad	0
	.quad	0
.LLST59:
	.quad	.LVL75
	.quad	.LVL76
	.value	0x1
	.byte	0x6e
	.quad	.LVL76
	.quad	.LVL77-1
	.value	0x8
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x31
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST60:
	.quad	.LVL72
	.quad	.LVL74
	.value	0x1
	.byte	0x65
	.quad	0
	.quad	0
.LLST61:
	.quad	.LVL72
	.quad	.LVL74
	.value	0x1
	.byte	0x63
	.quad	0
	.quad	0
.LLST62:
	.quad	.LFB78
	.quad	.LCFI16
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI16
	.quad	.LCFI17
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI17
	.quad	.LCFI18
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI18
	.quad	.LCFI19
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI19
	.quad	.LCFI20
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI20
	.quad	.LCFI21
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI21
	.quad	.LCFI22
	.value	0x2
	.byte	0x77
	.sleb128 56
	.quad	.LCFI22
	.quad	.LCFI23
	.value	0x3
	.byte	0x77
	.sleb128 144
	.quad	.LCFI23
	.quad	.LCFI24
	.value	0x2
	.byte	0x77
	.sleb128 56
	.quad	.LCFI24
	.quad	.LCFI25
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI25
	.quad	.LCFI26
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI26
	.quad	.LCFI27
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI27
	.quad	.LCFI28
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI28
	.quad	.LCFI29
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI29
	.quad	.LCFI30
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI30
	.quad	.LFE78
	.value	0x3
	.byte	0x77
	.sleb128 144
	.quad	0
	.quad	0
.LLST63:
	.quad	.LVL95
	.quad	.LVL98
	.value	0x1
	.byte	0x55
	.quad	.LVL98
	.quad	.LFE78
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST64:
	.quad	.LVL98
	.quad	.LVL99
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST65:
	.quad	.LVL97
	.quad	.LVL98
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST66:
	.quad	.LVL95
	.quad	.LVL98
	.value	0x2
	.byte	0x75
	.sleb128 0
	.quad	0
	.quad	0
.LLST67:
	.quad	.LVL96
	.quad	.LVL160
	.value	0x1
	.byte	0x5e
	.quad	.LVL161
	.quad	.LFE78
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST68:
	.quad	.LVL97
	.quad	.LVL98
	.value	0x1
	.byte	0x50
	.quad	.LVL98
	.quad	.LFE78
	.value	0x3
	.byte	0x91
	.sleb128 -76
	.quad	0
	.quad	0
.LLST69:
	.quad	.LVL99
	.quad	.LVL101
	.value	0x1
	.byte	0x53
	.quad	.LVL102
	.quad	.LVL159
	.value	0x1
	.byte	0x53
	.quad	.LVL161
	.quad	.LFE78
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST70:
	.quad	.LVL99
	.quad	.LVL101
	.value	0x3
	.byte	0x91
	.sleb128 -96
	.quad	.LVL102
	.quad	.LVL103
	.value	0x1
	.byte	0x62
	.quad	.LVL103
	.quad	.LVL159
	.value	0x3
	.byte	0x91
	.sleb128 -96
	.quad	.LVL161
	.quad	.LVL163-1
	.value	0x1
	.byte	0x62
	.quad	.LVL163-1
	.quad	.LFE78
	.value	0x3
	.byte	0x91
	.sleb128 -96
	.quad	0
	.quad	0
.LLST71:
	.quad	.LVL102
	.quad	.LVL103
	.value	0x1
	.byte	0x66
	.quad	.LVL161
	.quad	.LVL163-1
	.value	0x1
	.byte	0x66
	.quad	0
	.quad	0
.LLST72:
	.quad	.LVL99
	.quad	.LVL101
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	.LVL102
	.quad	.LVL103
	.value	0x1
	.byte	0x61
	.quad	.LVL103
	.quad	.LVL159
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	.LVL161
	.quad	.LVL162
	.value	0x1
	.byte	0x61
	.quad	.LVL162
	.quad	.LVL163-1
	.value	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.quad	.LVL163-1
	.quad	.LFE78
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	0
	.quad	0
.LLST73:
	.quad	.LVL99
	.quad	.LVL101
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.quad	.LVL102
	.quad	.LVL103
	.value	0x1
	.byte	0x64
	.quad	.LVL103
	.quad	.LVL159
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.quad	.LVL161
	.quad	.LVL163-1
	.value	0x1
	.byte	0x64
	.quad	.LVL163-1
	.quad	.LFE78
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.quad	0
	.quad	0
.LLST74:
	.quad	.LVL99
	.quad	.LVL101
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	.LVL102
	.quad	.LVL103
	.value	0x1
	.byte	0x65
	.quad	.LVL103
	.quad	.LVL159
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	.LVL161
	.quad	.LVL163-1
	.value	0x1
	.byte	0x65
	.quad	.LVL163-1
	.quad	.LFE78
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	0
	.quad	0
.LLST75:
	.quad	.LVL99
	.quad	.LVL101
	.value	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.quad	.LVL102
	.quad	.LVL159
	.value	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.quad	.LVL161
	.quad	.LFE78
	.value	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.quad	0
	.quad	0
.LLST76:
	.quad	.LVL100
	.quad	.LVL101
	.value	0x1
	.byte	0x66
	.quad	.LVL154
	.quad	.LVL155
	.value	0x1
	.byte	0x66
	.quad	0
	.quad	0
.LLST82:
	.quad	.LVL103
	.quad	.LVL104-1
	.value	0x1
	.byte	0x67
	.quad	0
	.quad	0
.LLST83:
	.quad	.LVL105
	.quad	.LVL114
	.value	0x1
	.byte	0x61
	.quad	.LVL157
	.quad	.LVL159
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST85:
	.quad	.LVL108
	.quad	.LVL109
	.value	0x1
	.byte	0x6a
	.quad	.LVL109
	.quad	.LVL110
	.value	0x8
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x31
	.byte	0x22
	.byte	0x9f
	.quad	.LVL110
	.quad	.LVL113
	.value	0x1
	.byte	0x68
	.quad	.LVL113
	.quad	.LVL114
	.value	0xc
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x31
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL157
	.quad	.LVL158
	.value	0x1
	.byte	0x68
	.quad	.LVL158
	.quad	.LVL159
	.value	0xc
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x31
	.byte	0x1b
	.byte	0x9f
	.quad	0
	.quad	0
.LLST86:
	.quad	.LVL112
	.quad	.LVL115-1
	.value	0x1
	.byte	0x6c
	.quad	.LVL157
	.quad	.LVL159
	.value	0x1
	.byte	0x6c
	.quad	0
	.quad	0
.LLST87:
	.quad	.LVL106
	.quad	.LVL107
	.value	0xc
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x31
	.byte	0xf4
	.uleb128 0x31
	.byte	0x4
	.long	0x3f000000
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL107
	.quad	.LVL108
	.value	0x1
	.byte	0x6a
	.quad	.LVL108
	.quad	.LVL115-1
	.value	0x10
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x31
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x31
	.byte	0x4
	.long	0x3f000000
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL157
	.quad	.LVL159
	.value	0x10
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x31
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x31
	.byte	0x4
	.long	0x3f000000
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST88:
	.quad	.LVL109
	.quad	.LVL115-1
	.value	0x1
	.byte	0x6b
	.quad	.LVL157
	.quad	.LVL159
	.value	0x1
	.byte	0x6b
	.quad	0
	.quad	0
.LLST89:
	.quad	.LVL112
	.quad	.LVL113
	.value	0x1
	.byte	0x68
	.quad	.LVL113
	.quad	.LVL114
	.value	0xc
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x31
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL157
	.quad	.LVL158
	.value	0x1
	.byte	0x68
	.quad	.LVL158
	.quad	.LVL159
	.value	0xc
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x31
	.byte	0x1b
	.byte	0x9f
	.quad	0
	.quad	0
.LLST91:
	.quad	.LVL99
	.quad	.LVL100
	.value	0x1
	.byte	0x67
	.quad	.LVL152
	.quad	.LVL153
	.value	0x1
	.byte	0x67
	.quad	0
	.quad	0
.LLST92:
	.quad	.LVL99
	.quad	.LVL100
	.value	0xf
	.byte	0xf4
	.uleb128 0x31
	.byte	0x4
	.long	0x3f800000
	.byte	0x91
	.sleb128 -92
	.byte	0xf6
	.byte	0x4
	.uleb128 0x31
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST93:
	.quad	.LVL99
	.quad	.LVL100
	.value	0xc
	.byte	0xf4
	.uleb128 0x31
	.byte	0x4
	.long	0x3f800000
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x31
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST94:
	.quad	.LVL131
	.quad	.LVL134-1
	.value	0x1
	.byte	0x68
	.quad	.LVL155
	.quad	.LVL157
	.value	0x1
	.byte	0x68
	.quad	0
	.quad	0
.LLST95:
	.quad	.LVL99
	.quad	.LVL101
	.value	0x1
	.byte	0x56
	.quad	.LVL133
	.quad	.LVL155
	.value	0x1
	.byte	0x56
	.quad	.LVL156
	.quad	.LVL157
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST96:
	.quad	.LVL149
	.quad	.LVL151-1
	.value	0x1
	.byte	0x64
	.quad	0
	.quad	0
.LLST97:
	.quad	.LVL134
	.quad	.LVL135
	.value	0x16
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf4
	.uleb128 0x38
	.byte	0x8
	.long	0x33d43651
	.long	0x3fd98845
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST98:
	.quad	.LVL134
	.quad	.LVL135
	.value	0x6
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST99:
	.quad	.LVL136
	.quad	.LVL138
	.value	0x1
	.byte	0x6e
	.quad	.LVL138
	.quad	.LVL140
	.value	0x2
	.byte	0x90
	.uleb128 0x20
	.quad	.LVL140
	.quad	.LVL141
	.value	0x1
	.byte	0x64
	.quad	.LVL141
	.quad	.LVL143
	.value	0x1
	.byte	0x6a
	.quad	0
	.quad	0
.LLST100:
	.quad	.LVL139
	.quad	.LVL142
	.value	0x1
	.byte	0x63
	.quad	.LVL142
	.quad	.LVL143
	.value	0x8
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x31
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST101:
	.quad	.LVL141
	.quad	.LVL144
	.value	0x1
	.byte	0x64
	.quad	0
	.quad	0
.LLST102:
	.quad	.LVL143
	.quad	.LVL145
	.value	0x1
	.byte	0x6a
	.quad	0
	.quad	0
.LLST103:
	.quad	.LVL149
	.quad	.LVL150
	.value	0x1
	.byte	0x64
	.quad	.LVL150
	.quad	.LVL151-1
	.value	0x8
	.byte	0xf5
	.uleb128 0x1f
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x1e
	.uleb128 0x31
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST104:
	.quad	.LVL146
	.quad	.LVL148
	.value	0x1
	.byte	0x65
	.quad	0
	.quad	0
.LLST105:
	.quad	.LVL146
	.quad	.LVL148
	.value	0x1
	.byte	0x68
	.quad	0
	.quad	0
.LLST106:
	.quad	.LVL113
	.quad	.LVL115-1
	.value	0x1
	.byte	0x68
	.quad	.LVL133
	.quad	.LVL134-1
	.value	0x1
	.byte	0x68
	.quad	0
	.quad	0
.LLST107:
	.quad	.LVL112
	.quad	.LVL115-1
	.value	0x1
	.byte	0x68
	.quad	.LVL157
	.quad	.LVL159
	.value	0x1
	.byte	0x68
	.quad	0
	.quad	0
.LLST108:
	.quad	.LVL113
	.quad	.LVL132
	.value	0x1
	.byte	0x56
	.quad	.LVL158
	.quad	.LVL159
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST109:
	.quad	.LVL99
	.quad	.LVL101
	.value	0x3
	.byte	0x91
	.sleb128 -92
	.quad	.LVL130
	.quad	.LVL131
	.value	0x1
	.byte	0x67
	.quad	.LVL131
	.quad	.LVL157
	.value	0x3
	.byte	0x91
	.sleb128 -92
	.quad	0
	.quad	0
.LLST110:
	.quad	.LVL115
	.quad	.LVL116
	.value	0x16
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf4
	.uleb128 0x38
	.byte	0x8
	.long	0x33d43651
	.long	0x3fd98845
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST111:
	.quad	.LVL115
	.quad	.LVL116
	.value	0x6
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST112:
	.quad	.LVL117
	.quad	.LVL119
	.value	0x1
	.byte	0x65
	.quad	.LVL119
	.quad	.LVL121
	.value	0x1
	.byte	0x64
	.quad	.LVL121
	.quad	.LVL122
	.value	0x1
	.byte	0x67
	.quad	.LVL122
	.quad	.LVL124
	.value	0x1
	.byte	0x68
	.quad	0
	.quad	0
.LLST113:
	.quad	.LVL120
	.quad	.LVL123
	.value	0x1
	.byte	0x6a
	.quad	.LVL123
	.quad	.LVL124
	.value	0x8
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x31
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST114:
	.quad	.LVL122
	.quad	.LVL125
	.value	0x1
	.byte	0x67
	.quad	0
	.quad	0
.LLST115:
	.quad	.LVL124
	.quad	.LVL126
	.value	0x1
	.byte	0x68
	.quad	0
	.quad	0
.LLST116:
	.quad	.LVL99
	.quad	.LVL101
	.value	0x3
	.byte	0x91
	.sleb128 -92
	.quad	.LVL130
	.quad	.LVL134-1
	.value	0x1
	.byte	0x67
	.quad	.LVL134-1
	.quad	.LVL155
	.value	0x3
	.byte	0x91
	.sleb128 -92
	.quad	.LVL155
	.quad	.LVL157
	.value	0x1
	.byte	0x67
	.quad	0
	.quad	0
.LLST117:
	.quad	.LVL127
	.quad	.LVL129
	.value	0x1
	.byte	0x6b
	.quad	0
	.quad	0
.LLST118:
	.quad	.LVL127
	.quad	.LVL129
	.value	0x1
	.byte	0x6d
	.quad	0
	.quad	0
.LLST119:
	.quad	.LFB79
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
	.value	0x3
	.byte	0x77
	.sleb128 144
	.quad	.LCFI38
	.quad	.LCFI39
	.value	0x2
	.byte	0x77
	.sleb128 56
	.quad	.LCFI39
	.quad	.LCFI40
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI40
	.quad	.LCFI41
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI41
	.quad	.LCFI42
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI42
	.quad	.LCFI43
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI43
	.quad	.LCFI44
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI44
	.quad	.LCFI45
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI45
	.quad	.LFE79
	.value	0x3
	.byte	0x77
	.sleb128 144
	.quad	0
	.quad	0
.LLST120:
	.quad	.LVL164
	.quad	.LVL165
	.value	0x1
	.byte	0x55
	.quad	.LVL165
	.quad	.LVL177
	.value	0x1
	.byte	0x56
	.quad	.LVL177
	.quad	.LVL218
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL218
	.quad	.LVL220
	.value	0x1
	.byte	0x56
	.quad	.LVL220
	.quad	.LVL225
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL225
	.quad	.LVL226
	.value	0x1
	.byte	0x56
	.quad	.LVL226
	.quad	.LVL229
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL229
	.quad	.LVL230
	.value	0x1
	.byte	0x56
	.quad	.LVL230
	.quad	.LVL232
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL232
	.quad	.LVL234
	.value	0x1
	.byte	0x56
	.quad	.LVL234
	.quad	.LFE79
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST121:
	.quad	.LVL164
	.quad	.LVL166-1
	.value	0x1
	.byte	0x54
	.quad	.LVL166-1
	.quad	.LVL181
	.value	0x1
	.byte	0x53
	.quad	.LVL181
	.quad	.LVL218
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL218
	.quad	.LVL220
	.value	0x1
	.byte	0x53
	.quad	.LVL220
	.quad	.LVL225
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL225
	.quad	.LVL226
	.value	0x1
	.byte	0x53
	.quad	.LVL226
	.quad	.LVL229
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL229
	.quad	.LVL230
	.value	0x1
	.byte	0x53
	.quad	.LVL230
	.quad	.LVL232
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL232
	.quad	.LVL234
	.value	0x1
	.byte	0x53
	.quad	.LVL234
	.quad	.LFE79
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST122:
	.quad	.LVL173
	.quad	.LVL174
	.value	0x1
	.byte	0x50
	.quad	.LVL174
	.quad	.LVL175-1
	.value	0x1
	.byte	0x55
	.quad	.LVL175-1
	.quad	.LVL193
	.value	0x1
	.byte	0x5d
	.quad	.LVL205
	.quad	.LVL207
	.value	0x1
	.byte	0x50
	.quad	.LVL207
	.quad	.LVL208-1
	.value	0x1
	.byte	0x55
	.quad	.LVL208-1
	.quad	.LVL217
	.value	0x1
	.byte	0x5d
	.quad	.LVL218
	.quad	.LVL225
	.value	0x1
	.byte	0x5d
	.quad	.LVL225
	.quad	.LVL227
	.value	0x1
	.byte	0x50
	.quad	.LVL230
	.quad	.LVL234
	.value	0x1
	.byte	0x5d
	.quad	.LVL234
	.quad	.LFE79
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST123:
	.quad	.LVL198
	.quad	.LVL199
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL209
	.quad	.LVL210
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL212
	.quad	.LVL213
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST124:
	.quad	.LVL180
	.quad	.LVL182
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL182
	.quad	.LVL183
	.value	0x1
	.byte	0x5c
	.quad	.LVL185
	.quad	.LVL186
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST125:
	.quad	.LVL192
	.quad	.LVL195-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST126:
	.quad	.LVL195
	.quad	.LVL196
	.value	0x1
	.byte	0x50
	.quad	.LVL196
	.quad	.LVL197
	.value	0x4
	.byte	0x70
	.sleb128 -256
	.byte	0x9f
	.quad	0
	.quad	0
.LLST127:
	.quad	.LVL175
	.quad	.LVL176
	.value	0x1
	.byte	0x50
	.quad	.LVL182
	.quad	.LVL183
	.value	0x1
	.byte	0x50
	.quad	.LVL184
	.quad	.LVL186
	.value	0x1
	.byte	0x50
	.quad	.LVL187
	.quad	.LVL189
	.value	0x1
	.byte	0x50
	.quad	.LVL214
	.quad	.LVL215-1
	.value	0x1
	.byte	0x50
	.quad	.LVL218
	.quad	.LVL219-1
	.value	0x1
	.byte	0x50
	.quad	.LVL220
	.quad	.LVL221
	.value	0x1
	.byte	0x50
	.quad	.LVL230
	.quad	.LVL232
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST128:
	.quad	.LVL170
	.quad	.LVL194
	.value	0x1
	.byte	0x5e
	.quad	.LVL218
	.quad	.LVL221
	.value	0x1
	.byte	0x5e
	.quad	.LVL225
	.quad	.LVL226
	.value	0x1
	.byte	0x5e
	.quad	.LVL231
	.quad	.LVL234
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST129:
	.quad	.LVL171
	.quad	.LVL172-1
	.value	0x1
	.byte	0x50
	.quad	.LVL172-1
	.quad	.LVL227
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	.LVL230
	.quad	.LFE79
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	0
	.quad	0
.LLST130:
	.quad	.LVL202
	.quad	.LVL218
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.quad	.LVL221
	.quad	.LVL225
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.quad	.LVL226
	.quad	.LVL229
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.quad	.LVL230
	.quad	.LVL231
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.quad	.LVL234
	.quad	.LFE79
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.quad	0
	.quad	0
.LLST131:
	.quad	.LVL168
	.quad	.LVL169-1
	.value	0x2
	.byte	0x73
	.sleb128 8
	.quad	0
	.quad	0
.LLST132:
	.quad	.LVL188
	.quad	.LVL218
	.value	0xa
	.byte	0x3
	.quad	.LC22
	.byte	0x9f
	.quad	.LVL224
	.quad	.LVL225
	.value	0xa
	.byte	0x3
	.quad	.LC22
	.byte	0x9f
	.quad	.LVL230
	.quad	.LVL231
	.value	0xa
	.byte	0x3
	.quad	.LC22
	.byte	0x9f
	.quad	.LVL234
	.quad	.LFE79
	.value	0xa
	.byte	0x3
	.quad	.LC22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST133:
	.quad	.LVL190
	.quad	.LVL218
	.value	0xa
	.byte	0x3
	.quad	.LC23
	.byte	0x9f
	.quad	.LVL224
	.quad	.LVL225
	.value	0xa
	.byte	0x3
	.quad	.LC23
	.byte	0x9f
	.quad	.LVL230
	.quad	.LVL231
	.value	0xa
	.byte	0x3
	.quad	.LC23
	.byte	0x9f
	.quad	.LVL234
	.quad	.LFE79
	.value	0xa
	.byte	0x3
	.quad	.LC23
	.byte	0x9f
	.quad	0
	.quad	0
.LLST134:
	.quad	.LVL200
	.quad	.LVL218
	.value	0xa
	.byte	0x3
	.quad	.LC24
	.byte	0x9f
	.quad	.LVL224
	.quad	.LVL225
	.value	0xa
	.byte	0x3
	.quad	.LC24
	.byte	0x9f
	.quad	.LVL230
	.quad	.LVL231
	.value	0xa
	.byte	0x3
	.quad	.LC24
	.byte	0x9f
	.quad	.LVL234
	.quad	.LFE79
	.value	0xa
	.byte	0x3
	.quad	.LC24
	.byte	0x9f
	.quad	0
	.quad	0
.LLST135:
	.quad	.LVL206
	.quad	.LVL218
	.value	0xa
	.byte	0x3
	.quad	.LC26
	.byte	0x9f
	.quad	.LVL224
	.quad	.LVL225
	.value	0xa
	.byte	0x3
	.quad	.LC26
	.byte	0x9f
	.quad	.LVL230
	.quad	.LVL231
	.value	0xa
	.byte	0x3
	.quad	.LC26
	.byte	0x9f
	.quad	0
	.quad	0
.LLST136:
	.quad	.LVL206
	.quad	.LVL207
	.value	0x1
	.byte	0x50
	.quad	.LVL207
	.quad	.LVL208-1
	.value	0x1
	.byte	0x55
	.quad	.LVL208-1
	.quad	.LVL217
	.value	0x1
	.byte	0x5d
	.quad	.LVL224
	.quad	.LVL225
	.value	0x1
	.byte	0x5d
	.quad	.LVL230
	.quad	.LVL231
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST137:
	.quad	.LVL210
	.quad	.LVL213
	.value	0xa
	.byte	0x3
	.quad	.LC28
	.byte	0x9f
	.quad	0
	.quad	0
.LLST138:
	.quad	.LVL210
	.quad	.LVL213
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST140:
	.quad	.LVL220
	.quad	.LVL221
	.value	0xa
	.byte	0x3
	.quad	.LC17
	.byte	0x9f
	.quad	0
	.quad	0
.LLST141:
	.quad	.LVL224
	.quad	.LVL225
	.value	0xa
	.byte	0x3
	.quad	.LC27
	.byte	0x9f
	.quad	0
	.quad	0
.LLST142:
	.quad	.LVL225
	.quad	.LVL226
	.value	0xa
	.byte	0x3
	.quad	.LC15
	.byte	0x9f
	.quad	0
	.quad	0
.LLST143:
	.quad	.LVL229
	.quad	.LVL230
	.value	0xa
	.byte	0x3
	.quad	.LC13
	.byte	0x9f
	.quad	0
	.quad	0
.LLST144:
	.quad	.LVL230
	.quad	.LVL231
	.value	0xa
	.byte	0x3
	.quad	.LC21
	.byte	0x9f
	.quad	0
	.quad	0
.LLST145:
	.quad	.LVL231
	.quad	.LVL232
	.value	0xa
	.byte	0x3
	.quad	.LC21
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
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB41
	.quad	.LBE41
	.quad	.LBB42
	.quad	.LBE42
	.quad	.LBB43
	.quad	.LBE43
	.quad	0
	.quad	0
	.quad	.LBB51
	.quad	.LBE51
	.quad	.LBB64
	.quad	.LBE64
	.quad	.LBB65
	.quad	.LBE65
	.quad	.LBB66
	.quad	.LBE66
	.quad	.LBB67
	.quad	.LBE67
	.quad	.LBB68
	.quad	.LBE68
	.quad	0
	.quad	0
	.quad	.LBB52
	.quad	.LBE52
	.quad	.LBB57
	.quad	.LBE57
	.quad	.LBB58
	.quad	.LBE58
	.quad	.LBB63
	.quad	.LBE63
	.quad	0
	.quad	0
	.quad	.LBB53
	.quad	.LBE53
	.quad	.LBB54
	.quad	.LBE54
	.quad	.LBB55
	.quad	.LBE55
	.quad	.LBB56
	.quad	.LBE56
	.quad	0
	.quad	0
	.quad	.LBB59
	.quad	.LBE59
	.quad	.LBB62
	.quad	.LBE62
	.quad	0
	.quad	0
	.quad	.LBB60
	.quad	.LBE60
	.quad	.LBB61
	.quad	.LBE61
	.quad	0
	.quad	0
	.quad	.LBB79
	.quad	.LBE79
	.quad	.LBB113
	.quad	.LBE113
	.quad	.LBB114
	.quad	.LBE114
	.quad	0
	.quad	0
	.quad	.LBB80
	.quad	.LBE80
	.quad	.LBB109
	.quad	.LBE109
	.quad	.LBB110
	.quad	.LBE110
	.quad	.LBB111
	.quad	.LBE111
	.quad	.LBB112
	.quad	.LBE112
	.quad	0
	.quad	0
	.quad	.LBB81
	.quad	.LBE81
	.quad	.LBB105
	.quad	.LBE105
	.quad	.LBB106
	.quad	.LBE106
	.quad	.LBB107
	.quad	.LBE107
	.quad	.LBB108
	.quad	.LBE108
	.quad	0
	.quad	0
	.quad	.LBB82
	.quad	.LBE82
	.quad	.LBB101
	.quad	.LBE101
	.quad	.LBB102
	.quad	.LBE102
	.quad	.LBB103
	.quad	.LBE103
	.quad	.LBB104
	.quad	.LBE104
	.quad	0
	.quad	0
	.quad	.LBB83
	.quad	.LBE83
	.quad	.LBB98
	.quad	.LBE98
	.quad	.LBB99
	.quad	.LBE99
	.quad	0
	.quad	0
	.quad	.LBB84
	.quad	.LBE84
	.quad	.LBB85
	.quad	.LBE85
	.quad	.LBB86
	.quad	.LBE86
	.quad	0
	.quad	0
	.quad	.LBB87
	.quad	.LBE87
	.quad	.LBB94
	.quad	.LBE94
	.quad	.LBB95
	.quad	.LBE95
	.quad	.LBB96
	.quad	.LBE96
	.quad	.LBB97
	.quad	.LBE97
	.quad	.LBB100
	.quad	.LBE100
	.quad	0
	.quad	0
	.quad	.LBB88
	.quad	.LBE88
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
	.quad	.LBB115
	.quad	.LBE115
	.quad	.LBB158
	.quad	.LBE158
	.quad	.LBB159
	.quad	.LBE159
	.quad	0
	.quad	0
	.quad	.LBB116
	.quad	.LBE116
	.quad	.LBB119
	.quad	.LBE119
	.quad	0
	.quad	0
	.quad	.LBB120
	.quad	.LBE120
	.quad	.LBB123
	.quad	.LBE123
	.quad	0
	.quad	0
	.quad	.LBB128
	.quad	.LBE128
	.quad	.LBB131
	.quad	.LBE131
	.quad	0
	.quad	0
	.quad	.LBB134
	.quad	.LBE134
	.quad	.LBB137
	.quad	.LBE137
	.quad	0
	.quad	0
	.quad	.LBB142
	.quad	.LBE142
	.quad	.LBB145
	.quad	.LBE145
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB79
	.quad	.LFE79
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF34:
	.string	"_shortbuf"
.LASF141:
	.string	"_IO_lock_t"
.LASF57:
	.string	"OptionData"
.LASF131:
	.string	"__builtin_puts"
.LASF23:
	.string	"_IO_buf_end"
.LASF136:
	.string	"fflush"
.LASF88:
	.string	"InputX"
.LASF102:
	.string	"_Z4CNDFf"
.LASF21:
	.string	"_IO_write_end"
.LASF5:
	.string	"unsigned int"
.LASF124:
	.string	"otime"
.LASF15:
	.string	"_flags"
.LASF142:
	.string	"bs_thread"
.LASF27:
	.string	"_markers"
.LASF122:
	.string	"prices"
.LASF48:
	.string	"_pos"
.LASF114:
	.string	"loopnum"
.LASF117:
	.string	"inputFile"
.LASF26:
	.string	"_IO_save_end"
.LASF0:
	.string	"float"
.LASF100:
	.string	"xLocal_2"
.LASF101:
	.string	"xLocal_3"
.LASF139:
	.string	"malloc"
.LASF52:
	.string	"strike"
.LASF73:
	.string	"xStrikePrice"
.LASF50:
	.string	"long long unsigned int"
.LASF113:
	.string	"file"
.LASF98:
	.string	"xLocal"
.LASF109:
	.string	"/home/jad5ju/Progs/optimization/benchmarks/blackscholes"
.LASF25:
	.string	"_IO_backup_base"
.LASF36:
	.string	"_offset"
.LASF68:
	.string	"time"
.LASF61:
	.string	"fprintf"
.LASF29:
	.string	"_fileno"
.LASF132:
	.string	"puts"
.LASF9:
	.string	"size_t"
.LASF89:
	.string	"sign"
.LASF107:
	.string	"GNU C++ 4.7.2"
.LASF18:
	.string	"_IO_read_base"
.LASF51:
	.string	"OptionData_"
.LASF91:
	.string	"xInput"
.LASF111:
	.string	"argc"
.LASF119:
	.string	"stdin"
.LASF46:
	.string	"_next"
.LASF145:
	.string	"free"
.LASF58:
	.string	"__fmt"
.LASF146:
	.string	"exit"
.LASF76:
	.string	"xTime"
.LASF81:
	.string	"xDen"
.LASF62:
	.string	"__stream"
.LASF95:
	.string	"xK2_3"
.LASF96:
	.string	"xK2_4"
.LASF97:
	.string	"xK2_5"
.LASF13:
	.string	"char"
.LASF135:
	.string	"__fprintf_chk"
.LASF66:
	.string	"rate"
.LASF42:
	.string	"_mode"
.LASF45:
	.string	"_IO_marker"
.LASF16:
	.string	"_IO_read_ptr"
.LASF83:
	.string	"NofXd1"
.LASF84:
	.string	"NofXd2"
.LASF121:
	.string	"data"
.LASF72:
	.string	"xStockPrice"
.LASF94:
	.string	"xK2_2"
.LASF85:
	.string	"NegNofXd1"
.LASF86:
	.string	"NegNofXd2"
.LASF78:
	.string	"logValues"
.LASF19:
	.string	"_IO_write_base"
.LASF59:
	.string	"__nptr"
.LASF49:
	.string	"long long int"
.LASF60:
	.string	"printf"
.LASF24:
	.string	"_IO_save_base"
.LASF134:
	.string	"__printf_chk"
.LASF54:
	.string	"OptionType"
.LASF138:
	.string	"fscanf"
.LASF115:
	.string	"buffer"
.LASF110:
	.string	"tid_ptr"
.LASF127:
	.string	"__builtin_logf"
.LASF103:
	.string	"_Z19BlkSchlsEqEuroNoDivfffffif"
.LASF143:
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
.LASF77:
	.string	"xSqrtTime"
.LASF74:
	.string	"xRiskFreeRate"
.LASF137:
	.string	"fopen"
.LASF33:
	.string	"_vtable_offset"
.LASF90:
	.string	"OutputX"
.LASF112:
	.string	"argv"
.LASF99:
	.string	"xLocal_1"
.LASF69:
	.string	"otype"
.LASF17:
	.string	"_IO_read_end"
.LASF7:
	.string	"short int"
.LASF56:
	.string	"DGrefval"
.LASF8:
	.string	"long int"
.LASF87:
	.string	"CNDF"
.LASF64:
	.string	"BlkSchlsEqEuroNoDiv"
.LASF92:
	.string	"xNPrimeofX"
.LASF140:
	.string	"fclose"
.LASF67:
	.string	"volatility"
.LASF108:
	.string	"blackscholes.m4.cpp"
.LASF106:
	.string	"start"
.LASF53:
	.string	"divq"
.LASF55:
	.string	"divs"
.LASF35:
	.string	"_lock"
.LASF12:
	.string	"sizetype"
.LASF2:
	.string	"long unsigned int"
.LASF31:
	.string	"_old_offset"
.LASF44:
	.string	"_IO_FILE"
.LASF93:
	.string	"expValues"
.LASF71:
	.string	"OptionPrice"
.LASF123:
	.string	"numOptions"
.LASF65:
	.string	"sptprice"
.LASF116:
	.string	"buffer2"
.LASF126:
	.string	"nThreads"
.LASF128:
	.string	"__builtin_sqrtf"
.LASF3:
	.string	"unsigned char"
.LASF47:
	.string	"_sbuf"
.LASF80:
	.string	"xPowerTerm"
.LASF20:
	.string	"_IO_write_ptr"
.LASF79:
	.string	"xLogTerm"
.LASF133:
	.string	"strtol"
.LASF120:
	.string	"stdout"
.LASF130:
	.string	"sqrtf"
.LASF10:
	.string	"__off_t"
.LASF6:
	.string	"signed char"
.LASF4:
	.string	"short unsigned int"
.LASF144:
	.string	"main"
.LASF63:
	.string	"atoi"
.LASF104:
	.string	"price"
.LASF75:
	.string	"xVolatility"
.LASF1:
	.string	"double"
.LASF82:
	.string	"FutureValueX"
.LASF28:
	.string	"_chain"
.LASF105:
	.string	"priceDelta"
.LASF14:
	.string	"FILE"
.LASF30:
	.string	"_flags2"
.LASF70:
	.string	"timet"
.LASF125:
	.string	"numError"
.LASF118:
	.string	"outputFile"
.LASF32:
	.string	"_cur_column"
.LASF11:
	.string	"__off64_t"
.LASF43:
	.string	"_unused2"
.LASF22:
	.string	"_IO_buf_base"
.LASF129:
	.string	"logf"
	.ident	"GCC: (Ubuntu/Linaro 4.7.2-2ubuntu1) 4.7.2"
	.section	.note.GNU-stack,"",@progbits
