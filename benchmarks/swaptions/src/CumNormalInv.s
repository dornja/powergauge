	.file	"CumNormalInv.cpp"
	.text
.Ltext0:
	.section	.text.unlikely,"ax",@progbits
.LCOLDB23:
	.text
.LHOTB23:
	.p2align 4,,15
	.section	.text.unlikely
.Ltext_cold0:
	.text
	.globl	_Z12CumNormalInvd
	.type	_Z12CumNormalInvd, @function
_Z12CumNormalInvd:
.LFB48:
	.file 1 "/if16/jad5ju/Progs/opensource/parsec-3.0//pkgs/apps/swaptions/src/CumNormalInv.cpp"
	.loc 1 41 0
	.cfi_startproc
.LVL0:
.LBB2:
	.loc 1 47 0
	movapd	%xmm0, %xmm2
	.loc 1 48 0
	movsd	.LC1(%rip), %xmm1
	.loc 1 47 0
	subsd	.LC0(%rip), %xmm2
.LVL1:
	.loc 1 48 0
	movsd	.LC2(%rip), %xmm3
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm3
	ja	.L16
.LVL2:
	.loc 1 57 0
	pxor	%xmm4, %xmm4
.LBE2:
	.loc 1 41 0
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
.LBB3:
	.loc 1 57 0
	ucomisd	%xmm4, %xmm2
	jbe	.L5
	.loc 1 57 0 is_stmt 0 discriminator 1
	movsd	.LC11(%rip), %xmm5
	subsd	%xmm0, %xmm5
	movapd	%xmm5, %xmm0
.LVL3:
.L5:
	movsd	%xmm2, 24(%rsp)
	.loc 1 58 0 is_stmt 1
	call	log
.LVL4:
	movsd	.LC13(%rip), %xmm6
	xorpd	%xmm6, %xmm0
	movaps	%xmm6, (%rsp)
	call	log
.LVL5:
	.loc 1 62 0
	pxor	%xmm8, %xmm8
	.loc 1 61 0
	movsd	.LC14(%rip), %xmm7
	.loc 1 62 0
	movsd	24(%rsp), %xmm9
	.loc 1 61 0
	mulsd	%xmm0, %xmm7
	.loc 1 62 0
	movapd	(%rsp), %xmm10
	ucomisd	%xmm9, %xmm8
	.loc 1 61 0
	addsd	.LC15(%rip), %xmm7
	mulsd	%xmm0, %xmm7
	addsd	.LC16(%rip), %xmm7
	mulsd	%xmm0, %xmm7
	addsd	.LC17(%rip), %xmm7
	mulsd	%xmm0, %xmm7
	addsd	.LC18(%rip), %xmm7
	.loc 1 60 0
	mulsd	%xmm0, %xmm7
	addsd	.LC19(%rip), %xmm7
	mulsd	%xmm0, %xmm7
	addsd	.LC20(%rip), %xmm7
	.loc 1 59 0
	mulsd	%xmm0, %xmm7
	addsd	.LC21(%rip), %xmm7
	mulsd	%xmm7, %xmm0
.LVL6:
	.loc 1 61 0
	addsd	.LC22(%rip), %xmm0
.LVL7:
	.loc 1 62 0
	ja	.L17
.LBE3:
	.loc 1 66 0
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
.LVL8:
	.p2align 4,,10
	.p2align 3
.L16:
.LBB4:
	.loc 1 50 0
	movapd	%xmm2, %xmm11
	.loc 1 52 0
	movsd	.LC7(%rip), %xmm12
	.loc 1 50 0
	mulsd	%xmm2, %xmm11
.LVL9:
	.loc 1 51 0
	movsd	.LC3(%rip), %xmm0
.LVL10:
	.loc 1 52 0
	mulsd	%xmm11, %xmm12
	.loc 1 51 0
	mulsd	%xmm11, %xmm0
	.loc 1 52 0
	subsd	.LC8(%rip), %xmm12
	.loc 1 51 0
	addsd	.LC4(%rip), %xmm0
	.loc 1 52 0
	mulsd	%xmm11, %xmm12
	.loc 1 51 0
	mulsd	%xmm11, %xmm0
	.loc 1 52 0
	addsd	.LC9(%rip), %xmm12
	.loc 1 51 0
	subsd	.LC5(%rip), %xmm0
	.loc 1 52 0
	mulsd	%xmm11, %xmm12
	.loc 1 51 0
	mulsd	%xmm11, %xmm0
	.loc 1 52 0
	subsd	.LC10(%rip), %xmm12
	.loc 1 51 0
	addsd	.LC6(%rip), %xmm0
	.loc 1 52 0
	mulsd	%xmm12, %xmm11
.LVL11:
	.loc 1 51 0
	mulsd	%xmm2, %xmm0
	.loc 1 52 0
	addsd	.LC11(%rip), %xmm11
	divsd	%xmm11, %xmm0
.LBE4:
	.loc 1 66 0
	ret
.LVL12:
	.p2align 4,,10
	.p2align 3
.L17:
	.cfi_def_cfa_offset 48
.LBB5:
	.loc 1 62 0 discriminator 1
	xorpd	%xmm10, %xmm0
.LVL13:
.LBE5:
	.loc 1 66 0 discriminator 1
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE48:
	.size	_Z12CumNormalInvd, .-_Z12CumNormalInvd
	.section	.text.unlikely
.LCOLDE23:
	.text
.LHOTE23:
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
	.text
.Letext0:
	.section	.text.unlikely
.Letext_cold0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.9/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x408
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF52
	.byte	0x4
	.long	.LASF53
	.long	.LASF54
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
	.long	.LASF55
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF47
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF48
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF49
	.uleb128 0xd
	.long	.LASF56
	.byte	0x1
	.byte	0x28
	.long	.LASF57
	.long	0x2d
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x30f
	.uleb128 0xe
	.string	"u"
	.byte	0x1
	.byte	0x28
	.long	0x2d
	.long	.LLST0
	.uleb128 0xf
	.long	.Ldebug_ranges0+0
	.uleb128 0x10
	.string	"x"
	.byte	0x1
	.byte	0x2d
	.long	0x2d
	.long	.LLST1
	.uleb128 0x10
	.string	"r"
	.byte	0x1
	.byte	0x2d
	.long	0x2d
	.long	.LLST2
	.uleb128 0x11
	.quad	.LVL4
	.long	0x3fa
	.uleb128 0x11
	.quad	.LVL5
	.long	0x3fa
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF50
	.byte	0x5
	.byte	0xa8
	.long	0x261
	.uleb128 0x12
	.long	.LASF51
	.byte	0x5
	.byte	0xa9
	.long	0x261
	.uleb128 0xb
	.long	0x2d
	.long	0x335
	.uleb128 0xc
	.long	0x8d
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.string	"a"
	.byte	0x1
	.byte	0xd
	.long	0x35f
	.byte	0x20
	.byte	0xd
	.byte	0x62
	.byte	0x28
	.byte	0x1b
	.byte	0x93
	.byte	0xd
	.byte	0x4
	.byte	0x40
	.byte	0xde
	.byte	0xa3
	.byte	0x54
	.byte	0xae
	.byte	0x70
	.byte	0x9d
	.byte	0x32
	.byte	0xc0
	.byte	0xfc
	.byte	0xc6
	.byte	0x73
	.byte	0xc4
	.byte	0x12
	.byte	0xb2
	.byte	0x44
	.byte	0x40
	.byte	0x78
	.byte	0x77
	.byte	0x37
	.byte	0x57
	.byte	0xe9
	.byte	0x70
	.byte	0x39
	.byte	0xc0
	.uleb128 0x14
	.long	0x325
	.uleb128 0x13
	.string	"b"
	.byte	0x1
	.byte	0x14
	.long	0x38e
	.byte	0x20
	.byte	0x2d
	.byte	0x7
	.byte	0x55
	.byte	0x6
	.byte	0x70
	.byte	0xf2
	.byte	0x20
	.byte	0xc0
	.byte	0x2c
	.byte	0x50
	.byte	0x81
	.byte	0x91
	.byte	0x57
	.byte	0x15
	.byte	0x37
	.byte	0x40
	.byte	0x7d
	.byte	0xe5
	.byte	0x1
	.byte	0x7
	.byte	0xef
	.byte	0xf
	.byte	0x35
	.byte	0xc0
	.byte	0x47
	.byte	0x8a
	.byte	0x55
	.byte	0x20
	.byte	0xf0
	.byte	0xb
	.byte	0x9
	.byte	0x40
	.uleb128 0x14
	.long	0x325
	.uleb128 0xb
	.long	0x2d
	.long	0x3a3
	.uleb128 0xc
	.long	0x8d
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.string	"c"
	.byte	0x1
	.byte	0x1b
	.long	0x3f5
	.byte	0x48
	.byte	0x68
	.byte	0x3
	.byte	0xe4
	.byte	0xc3
	.byte	0x32
	.byte	0x99
	.byte	0xd5
	.byte	0x3f
	.byte	0x2d
	.byte	0xc1
	.byte	0x8b
	.byte	0xcf
	.byte	0xc6
	.byte	0x3c
	.byte	0xef
	.byte	0x3f
	.byte	0x82
	.byte	0x6
	.byte	0x69
	.byte	0x26
	.byte	0x7
	.byte	0x95
	.byte	0xc4
	.byte	0x3f
	.byte	0x37
	.byte	0x42
	.byte	0xe4
	.byte	0x73
	.byte	0xad
	.byte	0x4e
	.byte	0x9c
	.byte	0x3f
	.byte	0x85
	.byte	0x67
	.byte	0x3e
	.byte	0xe5
	.byte	0x43
	.byte	0x76
	.byte	0x6f
	.byte	0x3f
	.byte	0x46
	.byte	0x88
	.byte	0xa9
	.byte	0xa0
	.byte	0x2e
	.byte	0xe6
	.byte	0x39
	.byte	0x3f
	.byte	0x8
	.byte	0x82
	.byte	0xf5
	.byte	0x5
	.byte	0xb2
	.byte	0xde
	.byte	0
	.byte	0x3f
	.byte	0x56
	.byte	0x7b
	.byte	0x9b
	.byte	0x70
	.byte	0xd5
	.byte	0x61
	.byte	0x93
	.byte	0x3e
	.byte	0xad
	.byte	0xd5
	.byte	0x2
	.byte	0xa
	.byte	0xc5
	.byte	0x93
	.byte	0x9a
	.byte	0x3e
	.uleb128 0x14
	.long	0x393
	.uleb128 0x15
	.string	"log"
	.byte	0x6
	.byte	0x6d
	.long	0x2d
	.uleb128 0x16
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL3-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x9f
	.quad	.LVL8-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL10-.Ltext0
	.quad	.LFE48-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL1-.Ltext0
	.quad	.LVL4-1-.Ltext0
	.value	0x1
	.byte	0x63
	.quad	.LVL4-1-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.quad	.LVL8-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0x1
	.byte	0x63
	.quad	.LVL12-.Ltext0
	.quad	.LFE48-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL2-.Ltext0
	.quad	.LVL4-1-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL5-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL7-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL9-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x1
	.byte	0x6c
	.quad	.LVL11-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0x8
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL12-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x5
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x1f
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
	.quad	.LBB2-.Ltext0
	.quad	.LBE2-.Ltext0
	.quad	.LBB3-.Ltext0
	.quad	.LBE3-.Ltext0
	.quad	.LBB4-.Ltext0
	.quad	.LBE4-.Ltext0
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF57:
	.string	"_Z12CumNormalInvd"
.LASF9:
	.string	"__off_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF26:
	.string	"_chain"
.LASF8:
	.string	"size_t"
.LASF32:
	.string	"_shortbuf"
.LASF20:
	.string	"_IO_buf_base"
.LASF49:
	.string	"long long unsigned int"
.LASF48:
	.string	"long long int"
.LASF5:
	.string	"signed char"
.LASF27:
	.string	"_fileno"
.LASF15:
	.string	"_IO_read_end"
.LASF7:
	.string	"long int"
.LASF13:
	.string	"_flags"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF0:
	.string	"double"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF52:
	.string	"GNU C++ 4.9.2 -mtune=generic -march=x86-64 -g -O3 -funroll-loops -fprefetch-loop-arrays -fpermissive -fno-exceptions -fstack-protector"
.LASF43:
	.string	"_IO_marker"
.LASF50:
	.string	"stdin"
.LASF4:
	.string	"unsigned int"
.LASF1:
	.string	"long unsigned int"
.LASF18:
	.string	"_IO_write_ptr"
.LASF45:
	.string	"_sbuf"
.LASF3:
	.string	"short unsigned int"
.LASF22:
	.string	"_IO_save_base"
.LASF56:
	.string	"CumNormalInv"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF51:
	.string	"stdout"
.LASF11:
	.string	"sizetype"
.LASF19:
	.string	"_IO_write_end"
.LASF55:
	.string	"_IO_lock_t"
.LASF42:
	.string	"_IO_FILE"
.LASF47:
	.string	"float"
.LASF46:
	.string	"_pos"
.LASF25:
	.string	"_markers"
.LASF2:
	.string	"unsigned char"
.LASF6:
	.string	"short int"
.LASF31:
	.string	"_vtable_offset"
.LASF12:
	.string	"char"
.LASF44:
	.string	"_next"
.LASF10:
	.string	"__off64_t"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
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
.LASF41:
	.string	"_unused2"
.LASF23:
	.string	"_IO_backup_base"
.LASF53:
	.string	"/if16/jad5ju/Progs/opensource/parsec-3.0//pkgs/apps/swaptions/src/CumNormalInv.cpp"
.LASF54:
	.string	"/localtmp/jad5ju/goa2/benchmarks/swaptions"
.LASF17:
	.string	"_IO_write_base"
	.ident	"GCC: (Ubuntu 4.9.2-0ubuntu1~14.04) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
