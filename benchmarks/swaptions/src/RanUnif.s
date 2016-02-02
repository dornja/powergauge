	.file	"RanUnif.cpp"
	.text
.Ltext0:
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.section	.text.unlikely
.Ltext_cold0:
	.text
	.globl	_Z7RanUnifPl
	.type	_Z7RanUnifPl, @function
_Z7RanUnifPl:
.LFB48:
	.file 1 "/if16/jad5ju/Progs/opensource/parsec-3.0//pkgs/apps/swaptions/src/RanUnif.cpp"
	.loc 1 16 0
	.cfi_startproc
.LVL0:
.LBB2:
	.loc 1 22 0
	movq	(%rdi), %rcx
.LVL1:
	.loc 1 23 0
	movabsq	$4730756183288445817, %rdx
	.loc 1 27 0
	pxor	%xmm0, %xmm0
	.loc 1 23 0
	movq	%rcx, %rax
	movq	%rcx, %rsi
	imulq	%rdx
	sarq	$63, %rsi
	sarq	$15, %rdx
	subq	%rsi, %rdx
.LVL2:
	.loc 1 24 0
	imulq	$-127773, %rdx, %r8
	imulq	$-2836, %rdx, %r10
	addq	%rcx, %r8
	imulq	$16807, %r8, %r9
	addq	%r10, %r9
.LVL3:
	.loc 1 25 0
	leaq	2147483647(%r9), %r11
	testq	%r9, %r9
	cmovs	%r11, %r9
.LVL4:
	.loc 1 27 0
	cvtsi2sdq	%r9, %xmm0
	.loc 1 26 0
	movq	%r9, (%rdi)
.LVL5:
	.loc 1 27 0
	mulsd	.LC0(%rip), %xmm0
.LBE2:
	.loc 1 30 0
	ret
	.cfi_endproc
.LFE48:
	.size	_Z7RanUnifPl, .-_Z7RanUnifPl
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	1859432
	.long	1040187392
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
	.long	0x33b
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF53
	.byte	0x4
	.long	.LASF54
	.long	.LASF55
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x3
	.long	.LASF8
	.byte	0x2
	.byte	0xd4
	.long	0x46
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
	.uleb128 0x3
	.long	.LASF9
	.byte	0x3
	.byte	0x83
	.long	0x34
	.uleb128 0x3
	.long	.LASF10
	.byte	0x3
	.byte	0x84
	.long	0x34
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
	.long	0x70
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
	.long	0x70
	.byte	0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.value	0x110
	.long	0x70
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
	.long	0x54
	.byte	0x80
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.value	0x117
	.long	0x62
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
	.long	0x3b
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.value	0x134
	.long	0x70
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x4
	.value	0x136
	.long	0x27d
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF56
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
	.long	0x70
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
	.long	.LASF57
	.byte	0x1
	.byte	0xf
	.long	.LASF58
	.long	0x2d
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x322
	.uleb128 0xe
	.string	"s"
	.byte	0x1
	.byte	0xf
	.long	0x322
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xf
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x10
	.string	"ix"
	.byte	0x1
	.byte	0x13
	.long	0x34
	.long	.LLST0
	.uleb128 0x11
	.string	"k1"
	.byte	0x1
	.byte	0x13
	.long	0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x12
	.long	.LASF50
	.byte	0x1
	.byte	0x14
	.long	0x2d
	.uleb128 0x17
	.byte	0x7b
	.sleb128 -2147483647
	.byte	0xf7
	.uleb128 0x34
	.byte	0xf7
	.uleb128 0x2d
	.byte	0xf4
	.uleb128 0x2d
	.byte	0x8
	.long	0x1c5f68
	.long	0x3e000000
	.byte	0x1e
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x34
	.uleb128 0x13
	.long	.LASF51
	.byte	0x5
	.byte	0xa8
	.long	0x261
	.uleb128 0x13
	.long	.LASF52
	.byte	0x5
	.byte	0xa9
	.long	0x261
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL1-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL3-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x1
	.byte	0x59
	.quad	.LVL4-.Ltext0
	.quad	.LFE48-.Ltext0
	.value	0x7
	.byte	0x7b
	.sleb128 -2147483647
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"__off64_t"
.LASF15:
	.string	"_IO_read_end"
.LASF8:
	.string	"size_t"
.LASF42:
	.string	"_IO_FILE"
.LASF35:
	.string	"__pad1"
.LASF21:
	.string	"_IO_buf_end"
.LASF36:
	.string	"__pad2"
.LASF37:
	.string	"__pad3"
.LASF14:
	.string	"_IO_read_ptr"
.LASF55:
	.string	"/localtmp/jad5ju/goa2/benchmarks/swaptions"
.LASF5:
	.string	"unsigned int"
.LASF34:
	.string	"_offset"
.LASF40:
	.string	"_mode"
.LASF57:
	.string	"RanUnif"
.LASF26:
	.string	"_chain"
.LASF47:
	.string	"float"
.LASF22:
	.string	"_IO_save_base"
.LASF50:
	.string	"dRes"
.LASF2:
	.string	"long unsigned int"
.LASF4:
	.string	"short unsigned int"
.LASF51:
	.string	"stdin"
.LASF24:
	.string	"_IO_save_end"
.LASF56:
	.string	"_IO_lock_t"
.LASF25:
	.string	"_markers"
.LASF46:
	.string	"_pos"
.LASF0:
	.string	"double"
.LASF54:
	.string	"/if16/jad5ju/Progs/opensource/parsec-3.0//pkgs/apps/swaptions/src/RanUnif.cpp"
.LASF28:
	.string	"_flags2"
.LASF45:
	.string	"_sbuf"
.LASF29:
	.string	"_old_offset"
.LASF33:
	.string	"_lock"
.LASF53:
	.string	"GNU C++ 4.9.2 -mtune=generic -march=x86-64 -g -O3 -funroll-loops -fprefetch-loop-arrays -fpermissive -fno-exceptions -fstack-protector"
.LASF43:
	.string	"_IO_marker"
.LASF30:
	.string	"_cur_column"
.LASF49:
	.string	"long long unsigned int"
.LASF27:
	.string	"_fileno"
.LASF58:
	.string	"_Z7RanUnifPl"
.LASF20:
	.string	"_IO_buf_base"
.LASF44:
	.string	"_next"
.LASF31:
	.string	"_vtable_offset"
.LASF3:
	.string	"unsigned char"
.LASF9:
	.string	"__off_t"
.LASF41:
	.string	"_unused2"
.LASF11:
	.string	"sizetype"
.LASF48:
	.string	"long long int"
.LASF52:
	.string	"stdout"
.LASF12:
	.string	"char"
.LASF17:
	.string	"_IO_write_base"
.LASF19:
	.string	"_IO_write_end"
.LASF7:
	.string	"short int"
.LASF23:
	.string	"_IO_backup_base"
.LASF13:
	.string	"_flags"
.LASF16:
	.string	"_IO_read_base"
.LASF1:
	.string	"long int"
.LASF18:
	.string	"_IO_write_ptr"
.LASF38:
	.string	"__pad4"
.LASF39:
	.string	"__pad5"
.LASF6:
	.string	"signed char"
.LASF32:
	.string	"_shortbuf"
	.ident	"GCC: (Ubuntu 4.9.2-0ubuntu1~14.04) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
