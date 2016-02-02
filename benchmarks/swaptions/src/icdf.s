	.file	"icdf.cpp"
	.text
.Ltext0:
	.section	.text.unlikely,"ax",@progbits
.LCOLDB27:
	.text
.LHOTB27:
	.p2align 4,,15
	.section	.text.unlikely
.Ltext_cold0:
	.text
	.globl	_Z13icdf_baselineiPdS_
	.type	_Z13icdf_baselineiPdS_, @function
_Z13icdf_baselineiPdS_:
.LFB48:
	.file 1 "/if16/jad5ju/Progs/opensource/parsec-3.0//pkgs/apps/swaptions/src/icdf.cpp"
	.loc 1 9 0
	.cfi_startproc
.LBB2:
.LBB3:
	.loc 1 48 0
	testl	%edi, %edi
	jle	.L21
.LBE3:
.LBE2:
	.loc 1 9 0
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdx, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	leal	-1(%rdi), %ebp
	movq	%rsi, %r12
.LBB10:
.LBB7:
	.loc 1 48 0
	xorl	%ebx, %ebx
.LBE7:
.LBE10:
	.loc 1 9 0
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	addq	$1, %rbp
	movsd	.LC12(%rip), %xmm1
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L17:
.LBB11:
.LBB8:
.LBB4:
	.loc 1 56 0
	movsd	.LC13(%rip), %xmm5
	ucomisd	%xmm0, %xmm5
	jb	.L18
	.loc 1 57 0
	subsd	.LC14(%rip), %xmm0
	.loc 1 59 0
	movsd	.LC15(%rip), %xmm7
	movsd	.LC21(%rip), %xmm8
	.loc 1 58 0
	movapd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	.loc 1 59 0
	mulsd	%xmm3, %xmm7
	mulsd	%xmm3, %xmm8
	addsd	.LC16(%rip), %xmm7
	addsd	.LC22(%rip), %xmm8
	mulsd	%xmm3, %xmm7
	mulsd	%xmm3, %xmm8
	subsd	.LC17(%rip), %xmm7
	subsd	.LC23(%rip), %xmm8
	mulsd	%xmm3, %xmm7
	mulsd	%xmm3, %xmm8
	addsd	.LC18(%rip), %xmm7
	addsd	.LC24(%rip), %xmm8
	mulsd	%xmm3, %xmm7
	mulsd	%xmm3, %xmm8
	subsd	.LC19(%rip), %xmm7
	subsd	.LC25(%rip), %xmm8
	mulsd	%xmm3, %xmm7
	mulsd	%xmm3, %xmm8
	addsd	.LC20(%rip), %xmm7
	addsd	%xmm1, %xmm8
	mulsd	%xmm7, %xmm0
	divsd	%xmm8, %xmm0
	.loc 1 66 0
	movsd	%xmm0, 0(%r13,%rbx,8)
	addq	$1, %rbx
.LBE4:
	.loc 1 48 0
	cmpq	%rbp, %rbx
	je	.L24
.L12:
.LBB5:
	.loc 1 49 0
	movsd	(%r12,%rbx,8), %xmm0
	.loc 1 51 0
	movsd	.LC0(%rip), %xmm4
	ucomisd	%xmm0, %xmm4
	jbe	.L17
	movsd	%xmm1, 8(%rsp)
	.loc 1 52 0
	call	log
	mulsd	.LC1(%rip), %xmm0
	movsd	8(%rsp), %xmm1
	sqrtsd	%xmm0, %xmm2
	ucomisd	%xmm2, %xmm2
	jp	.L25
.L5:
	.loc 1 53 0
	movsd	.LC2(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	subsd	.LC3(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	subsd	.LC4(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	subsd	.LC5(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	.LC6(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	.LC7(%rip), %xmm0
.L22:
	.loc 1 64 0
	movsd	.LC8(%rip), %xmm9
	mulsd	%xmm2, %xmm9
	addsd	.LC9(%rip), %xmm9
	mulsd	%xmm2, %xmm9
	addsd	.LC10(%rip), %xmm9
	mulsd	%xmm2, %xmm9
	addsd	.LC11(%rip), %xmm9
	mulsd	%xmm9, %xmm2
	addsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	.loc 1 66 0
	movsd	%xmm0, 0(%r13,%rbx,8)
	addq	$1, %rbx
.LBE5:
	.loc 1 48 0
	cmpq	%rbp, %rbx
	jne	.L12
.L24:
.LBE8:
.LBE11:
	.loc 1 69 0
	addq	$24, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 8
.L21:
	rep ret
	.p2align 4,,10
	.p2align 3
.L18:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
.LBB12:
.LBB9:
.LBB6:
	.loc 1 63 0
	movapd	%xmm1, %xmm6
	movsd	%xmm1, 8(%rsp)
	subsd	%xmm0, %xmm6
	movapd	%xmm6, %xmm0
	call	log
	mulsd	.LC1(%rip), %xmm0
	movsd	8(%rsp), %xmm1
	sqrtsd	%xmm0, %xmm2
	ucomisd	%xmm2, %xmm2
	jp	.L26
.L10:
	.loc 1 64 0
	movsd	.LC2(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	subsd	.LC3(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	subsd	.LC4(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	subsd	.LC5(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	.LC6(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	.LC7(%rip), %xmm0
	xorpd	.LC26(%rip), %xmm0
	jmp	.L22
.L25:
	.loc 1 52 0
	call	sqrt
	movsd	8(%rsp), %xmm1
	movapd	%xmm0, %xmm2
	jmp	.L5
.L26:
	.loc 1 63 0
	call	sqrt
	movsd	8(%rsp), %xmm1
	movapd	%xmm0, %xmm2
	jmp	.L10
.LBE6:
.LBE9:
.LBE12:
	.cfi_endproc
.LFE48:
	.size	_Z13icdf_baselineiPdS_, .-_Z13icdf_baselineiPdS_
	.section	.text.unlikely
.LCOLDE27:
	.text
.LHOTE27:
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	4088808866
	.long	1066980605
	.align 8
.LC1:
	.long	0
	.long	-1073741824
	.align 8
.LC2:
	.long	2454376416
	.long	-1082137843
	.align 8
.LC3:
	.long	3236463032
	.long	1070899748
	.align 8
.LC4:
	.long	3245348696
	.long	1073951936
	.align 8
.LC5:
	.long	745552410
	.long	1074030042
	.align 8
.LC6:
	.long	4108996039
	.long	1074888615
	.align 8
.LC7:
	.long	507498402
	.long	1074233692
	.align 8
.LC8:
	.long	1470930900
	.long	1065345752
	.align 8
.LC9:
	.long	727253860
	.long	1070900045
	.align 8
.LC10:
	.long	2089477654
	.long	1073975202
	.align 8
.LC11:
	.long	1754640665
	.long	1074661639
	.align 8
.LC12:
	.long	0
	.long	1072693248
	.align 8
.LC13:
	.long	274877907
	.long	1072642392
	.align 8
.LC14:
	.long	0
	.long	1071644672
	.align 8
.LC15:
	.long	3156084005
	.long	-1069295311
	.align 8
.LC16:
	.long	1882456987
	.long	1080794694
	.align 8
.LC17:
	.long	767900569
	.long	1081163483
	.align 8
.LC18:
	.long	3020636187
	.long	1080118130
	.align 8
.LC19:
	.long	885033933
	.long	1077848624
	.align 8
.LC20:
	.long	542594169
	.long	1074007443
	.align 8
.LC21:
	.long	3459253444
	.long	-1068811024
	.align 8
.LC22:
	.long	753943159
	.long	1080308415
	.align 8
.LC23:
	.long	184735954
	.long	1080260190
	.align 8
.LC24:
	.long	2980571582
	.long	1079030600
	.align 8
.LC25:
	.long	2115270694
	.long	1076531125
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC26:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.text
.Letext0:
	.section	.text.unlikely
.Letext_cold0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.9/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x42d
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF54
	.byte	0x4
	.long	.LASF55
	.long	.LASF56
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
	.long	.LASF57
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
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF46
	.uleb128 0xd
	.long	0x62
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF47
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
	.long	0x2a0
	.uleb128 0xe
	.long	.LASF58
	.byte	0x1
	.byte	0x9
	.long	.LASF59
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x415
	.uleb128 0xf
	.string	"N"
	.byte	0x1
	.byte	0x9
	.long	0x28d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xf
	.string	"in"
	.byte	0x1
	.byte	0x9
	.long	0x2a7
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.string	"out"
	.byte	0x1
	.byte	0x9
	.long	0x2a7
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x10
	.long	.Ldebug_ranges0+0
	.uleb128 0x11
	.string	"z"
	.byte	0x1
	.byte	0xb
	.long	0x2a0
	.uleb128 0x12
	.string	"r"
	.byte	0x1
	.byte	0xb
	.long	0x2a0
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x11
	.string	"a1"
	.byte	0x1
	.byte	0xe
	.long	0x415
	.uleb128 0x11
	.string	"a2"
	.byte	0x1
	.byte	0xf
	.long	0x415
	.uleb128 0x11
	.string	"a3"
	.byte	0x1
	.byte	0x10
	.long	0x415
	.uleb128 0x11
	.string	"a4"
	.byte	0x1
	.byte	0x11
	.long	0x415
	.uleb128 0x11
	.string	"a5"
	.byte	0x1
	.byte	0x12
	.long	0x415
	.uleb128 0x11
	.string	"a6"
	.byte	0x1
	.byte	0x13
	.long	0x415
	.uleb128 0x11
	.string	"b1"
	.byte	0x1
	.byte	0x16
	.long	0x415
	.uleb128 0x11
	.string	"b2"
	.byte	0x1
	.byte	0x17
	.long	0x415
	.uleb128 0x11
	.string	"b3"
	.byte	0x1
	.byte	0x18
	.long	0x415
	.uleb128 0x11
	.string	"b4"
	.byte	0x1
	.byte	0x19
	.long	0x415
	.uleb128 0x11
	.string	"b5"
	.byte	0x1
	.byte	0x1a
	.long	0x415
	.uleb128 0x11
	.string	"c1"
	.byte	0x1
	.byte	0x1d
	.long	0x415
	.uleb128 0x11
	.string	"c2"
	.byte	0x1
	.byte	0x1e
	.long	0x415
	.uleb128 0x11
	.string	"c3"
	.byte	0x1
	.byte	0x1f
	.long	0x415
	.uleb128 0x11
	.string	"c4"
	.byte	0x1
	.byte	0x20
	.long	0x415
	.uleb128 0x11
	.string	"c5"
	.byte	0x1
	.byte	0x21
	.long	0x415
	.uleb128 0x11
	.string	"c6"
	.byte	0x1
	.byte	0x22
	.long	0x415
	.uleb128 0x11
	.string	"d1"
	.byte	0x1
	.byte	0x26
	.long	0x415
	.uleb128 0x11
	.string	"d2"
	.byte	0x1
	.byte	0x27
	.long	0x415
	.uleb128 0x11
	.string	"d3"
	.byte	0x1
	.byte	0x28
	.long	0x415
	.uleb128 0x11
	.string	"d4"
	.byte	0x1
	.byte	0x29
	.long	0x415
	.uleb128 0x13
	.long	.LASF50
	.byte	0x1
	.byte	0x2e
	.long	0x415
	.uleb128 0x13
	.long	.LASF51
	.byte	0x1
	.byte	0x2e
	.long	0x415
	.uleb128 0x10
	.long	.Ldebug_ranges0+0
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x30
	.long	0x62
	.uleb128 0x10
	.long	.Ldebug_ranges0+0x50
	.uleb128 0x12
	.string	"u"
	.byte	0x1
	.byte	0x31
	.long	0x2a0
	.uleb128 0x1
	.byte	0x61
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x2a0
	.uleb128 0x14
	.long	.LASF52
	.byte	0x5
	.byte	0xa8
	.long	0x25a
	.uleb128 0x14
	.long	.LASF53
	.byte	0x5
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.quad	.LBB10-.Ltext0
	.quad	.LBE10-.Ltext0
	.quad	.LBB11-.Ltext0
	.quad	.LBE11-.Ltext0
	.quad	.LBB12-.Ltext0
	.quad	.LBE12-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB4-.Ltext0
	.quad	.LBE4-.Ltext0
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	.LBB6-.Ltext0
	.quad	.LBE6-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"__off_t"
.LASF13:
	.string	"_IO_read_ptr"
.LASF25:
	.string	"_chain"
.LASF7:
	.string	"size_t"
.LASF31:
	.string	"_shortbuf"
.LASF59:
	.string	"_Z13icdf_baselineiPdS_"
.LASF19:
	.string	"_IO_buf_base"
.LASF47:
	.string	"long long unsigned int"
.LASF58:
	.string	"icdf_baseline"
.LASF55:
	.string	"/if16/jad5ju/Progs/opensource/parsec-3.0//pkgs/apps/swaptions/src/icdf.cpp"
.LASF46:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF50:
	.string	"u_low"
.LASF26:
	.string	"_fileno"
.LASF14:
	.string	"_IO_read_end"
.LASF6:
	.string	"long int"
.LASF12:
	.string	"_flags"
.LASF20:
	.string	"_IO_buf_end"
.LASF29:
	.string	"_cur_column"
.LASF49:
	.string	"double"
.LASF28:
	.string	"_old_offset"
.LASF33:
	.string	"_offset"
.LASF54:
	.string	"GNU C++ 4.9.2 -mtune=generic -march=x86-64 -g -O3 -funroll-loops -fprefetch-loop-arrays -fpermissive -fno-exceptions -fstack-protector"
.LASF42:
	.string	"_IO_marker"
.LASF52:
	.string	"stdin"
.LASF3:
	.string	"unsigned int"
.LASF0:
	.string	"long unsigned int"
.LASF17:
	.string	"_IO_write_ptr"
.LASF44:
	.string	"_sbuf"
.LASF2:
	.string	"short unsigned int"
.LASF21:
	.string	"_IO_save_base"
.LASF32:
	.string	"_lock"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF53:
	.string	"stdout"
.LASF10:
	.string	"sizetype"
.LASF18:
	.string	"_IO_write_end"
.LASF57:
	.string	"_IO_lock_t"
.LASF41:
	.string	"_IO_FILE"
.LASF51:
	.string	"u_high"
.LASF48:
	.string	"float"
.LASF45:
	.string	"_pos"
.LASF24:
	.string	"_markers"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"short int"
.LASF30:
	.string	"_vtable_offset"
.LASF11:
	.string	"char"
.LASF43:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF15:
	.string	"_IO_read_base"
.LASF23:
	.string	"_IO_save_end"
.LASF34:
	.string	"__pad1"
.LASF35:
	.string	"__pad2"
.LASF36:
	.string	"__pad3"
.LASF37:
	.string	"__pad4"
.LASF38:
	.string	"__pad5"
.LASF40:
	.string	"_unused2"
.LASF22:
	.string	"_IO_backup_base"
.LASF56:
	.string	"/localtmp/jad5ju/goa2/benchmarks/swaptions"
.LASF16:
	.string	"_IO_write_base"
	.ident	"GCC: (Ubuntu 4.9.2-0ubuntu1~14.04) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
