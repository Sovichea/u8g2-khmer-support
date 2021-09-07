	.file	"bdf_8x8.c"
	.text
.Ltext0:
	.type	bg_8x8_convert, @function
bg_8x8_convert:
.LFB6:
	.file 1 "bdf_8x8.c"
	.loc 1 23 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	.loc 1 28 6
	cmpq	$0, -32(%rbp)
	jne	.L2
	.loc 1 29 9
	movq	-24(%rbp), %rax
	addq	$40, %rax
	movq	%rax, -32(%rbp)
.L2:
	.loc 1 56 15
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 56 10
	movl	%eax, -12(%rbp)
	.loc 1 56 3
	jmp	.L3
.L9:
	.loc 1 58 7
	movl	$0, -4(%rbp)
	.loc 1 59 17
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 59 20
	movl	%eax, %edx
	.loc 1 59 24
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 59 20
	addl	%edx, %eax
	.loc 1 59 27
	subl	$1, %eax
	.loc 1 59 12
	movl	%eax, -8(%rbp)
	.loc 1 59 5
	jmp	.L4
.L6:
	.loc 1 61 9
	sarl	-4(%rbp)
	.loc 1 62 12
	movl	-8(%rbp), %edx
	movl	-40(%rbp), %eax
	addl	%eax, %edx
	movl	-12(%rbp), %ecx
	movl	-36(%rbp), %eax
	addl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bg_GetBBXPixel@PLT
	.loc 1 62 10
	testl	%eax, %eax
	je	.L5
	.loc 1 64 4
	orl	$128, -4(%rbp)
.L5:
	.loc 1 59 45 discriminator 2
	subl	$1, -8(%rbp)
.L4:
	.loc 1 59 33 discriminator 1
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 59 39 discriminator 1
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 59 5 discriminator 1
	cmpq	%rax, %rdx
	jge	.L6
	.loc 1 67 10
	movl	-4(%rbp), %eax
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bg_AddTargetData@PLT
	.loc 1 67 8
	testl	%eax, %eax
	jns	.L7
	.loc 1 68 14
	movl	$0, %eax
	jmp	.L8
.L7:
	.loc 1 56 42 discriminator 2
	addl	$1, -12(%rbp)
.L3:
	.loc 1 56 22 discriminator 1
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 56 27 discriminator 1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rcx
	.loc 1 56 36 discriminator 1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 56 31 discriminator 1
	addq	%rcx, %rax
	.loc 1 56 3 discriminator 1
	cmpq	%rax, %rdx
	jl	.L9
	.loc 1 71 10
	movl	$1, %eax
.L8:
	.loc 1 72 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	bg_8x8_convert, .-bg_8x8_convert
	.section	.rodata
	.align 8
.LC0:
	.string	"Generate8x8Font: Error, glyph width is not multiple of 8, width=%d, encoding=%d"
	.align 8
.LC1:
	.string	"Generate8x8Font: Error, glyph height is not multiple of 8, height=%d, encoding=%d"
	.align 8
.LC2:
	.string	"Generate8x8Font: Error, 8x8 conversion, encoding=%d"
	.align 8
.LC3:
	.string	"Generate8x8Font: Error, glyph size incorrect, size=%d, encoding=%d"
	.align 8
.LC4:
	.string	"Generate8x8Font: Tile size width=%d height=%d"
.LC5:
	.string	"Generate8x8Font: Font size %d"
	.text
	.globl	bf_Generate8x8Font
	.type	bf_Generate8x8Font, @function
bf_Generate8x8Font:
.LFB7:
	.loc 1 76 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	movl	%edx, -112(%rbp)
	.loc 1 76 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 86 10
	movl	$0, -88(%rbp)
	.loc 1 86 3
	jmp	.L11
.L20:
	.loc 1 88 12
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 88 24
	movl	-88(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 1 88 8
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	.loc 1 89 12
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 89 8
	testq	%rax, %rax
	js	.L12
	.loc 1 91 7
	movq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bf_copy_bbx_and_update_shift@PLT
	.loc 1 93 22
	movq	-48(%rbp), %rax
	.loc 1 93 25
	andl	$7, %eax
	.loc 1 93 10
	testq	%rax, %rax
	je	.L13
	.loc 1 95 2
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-104(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	bf_Log@PLT
	jmp	.L12
.L13:
	.loc 1 99 17
	movq	-40(%rbp), %rax
	.loc 1 99 20
	andl	$7, %eax
	.loc 1 99 5
	testq	%rax, %rax
	je	.L14
	.loc 1 101 4
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-104(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	bf_Log@PLT
	jmp	.L12
.L14:
	.loc 1 105 4
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	bg_ClearTargetData@PLT
	.loc 1 106 11
	movl	$0, -60(%rbp)
	.loc 1 106 4
	jmp	.L15
.L19:
	.loc 1 108 13
	movl	$0, -64(%rbp)
	.loc 1 108 6
	jmp	.L16
.L18:
	.loc 1 112 60
	movq	-104(%rbp), %rax
	movl	1308(%rax), %eax
	.loc 1 112 73
	subl	-60(%rbp), %eax
	.loc 1 112 75
	subl	$1, %eax
	.loc 1 112 56
	leal	0(,%rax,8), %edx
	.loc 1 112 13
	movl	-112(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	.loc 1 112 48
	movl	-64(%rbp), %eax
	leal	0(,%rax,8), %edx
	.loc 1 112 13
	movl	-108(%rbp), %eax
	addl	%eax, %edx
	leaq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	bg_8x8_convert
	.loc 1 112 11
	testl	%eax, %eax
	jne	.L17
	.loc 1 114 3
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-56(%rbp), %rax
	movl	116(%rax), %edx
	movq	-104(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	bf_Log@PLT
.L17:
	.loc 1 108 40 discriminator 2
	addl	$1, -64(%rbp)
.L16:
	.loc 1 108 24 discriminator 1
	movq	-104(%rbp), %rax
	movl	1304(%rax), %eax
	.loc 1 108 6 discriminator 1
	cmpl	%eax, -64(%rbp)
	jl	.L18
	.loc 1 106 38 discriminator 2
	addl	$1, -60(%rbp)
.L15:
	.loc 1 106 22 discriminator 1
	movq	-104(%rbp), %rax
	movl	1308(%rax), %eax
	.loc 1 106 4 discriminator 1
	cmpl	%eax, -60(%rbp)
	jl	.L19
.L12:
	.loc 1 86 35 discriminator 2
	addl	$1, -88(%rbp)
.L11:
	.loc 1 86 21 discriminator 1
	movq	-104(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 86 3 discriminator 1
	cmpl	%eax, -88(%rbp)
	jl	.L20
	.loc 1 125 9
	movl	$-1, -76(%rbp)
	.loc 1 126 8
	movl	$-1, -72(%rbp)
	.loc 1 128 10
	movl	$0, -84(%rbp)
	.loc 1 128 3
	jmp	.L21
.L27:
	.loc 1 130 12
	movl	$0, -88(%rbp)
	.loc 1 130 5
	jmp	.L22
.L26:
	.loc 1 132 14
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 132 26
	movl	-88(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 1 132 10
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	.loc 1 133 14
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 1 133 23
	movl	-84(%rbp), %eax
	cltq
	.loc 1 133 10
	cmpq	%rax, %rdx
	jne	.L23
	.loc 1 135 9
	movq	-56(%rbp), %rax
	movq	104(%rax), %rax
	.loc 1 135 5
	testq	%rax, %rax
	je	.L23
	.loc 1 139 11
	movq	-56(%rbp), %rax
	movl	116(%rax), %edx
	.loc 1 139 29
	movq	-104(%rbp), %rax
	movl	1304(%rax), %ecx
	.loc 1 139 45
	movq	-104(%rbp), %rax
	movl	1308(%rax), %eax
	.loc 1 139 42
	imull	%ecx, %eax
	.loc 1 139 58
	sall	$3, %eax
	.loc 1 139 7
	cmpl	%eax, %edx
	je	.L24
	.loc 1 141 6
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-56(%rbp), %rax
	movl	116(%rax), %edx
	movq	-104(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	bf_Log@PLT
	jmp	.L23
.L24:
	.loc 1 145 9
	cmpl	$0, -76(%rbp)
	jns	.L25
	.loc 1 146 14
	movl	-84(%rbp), %eax
	movl	%eax, -76(%rbp)
.L25:
	.loc 1 147 11
	movl	-84(%rbp), %eax
	movl	%eax, -72(%rbp)
.L23:
	.loc 1 130 37 discriminator 2
	addl	$1, -88(%rbp)
.L22:
	.loc 1 130 23 discriminator 1
	movq	-104(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 130 5 discriminator 1
	cmpl	%eax, -88(%rbp)
	jl	.L26
	.loc 1 128 25 discriminator 2
	addl	$1, -84(%rbp)
.L21:
	.loc 1 128 3 discriminator 1
	cmpl	$255, -84(%rbp)
	jle	.L27
	.loc 1 156 3
	movl	-76(%rbp), %eax
	movzbl	%al, %edx
	movq	-104(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bf_AddTargetData@PLT
	.loc 1 157 3
	movl	-72(%rbp), %eax
	movzbl	%al, %edx
	movq	-104(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bf_AddTargetData@PLT
	.loc 1 158 26
	movq	-104(%rbp), %rax
	movl	1304(%rax), %eax
	.loc 1 158 3
	movzbl	%al, %edx
	movq	-104(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bf_AddTargetData@PLT
	.loc 1 159 26
	movq	-104(%rbp), %rax
	movl	1308(%rax), %eax
	.loc 1 159 3
	movzbl	%al, %edx
	movq	-104(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bf_AddTargetData@PLT
	.loc 1 160 3
	movq	-104(%rbp), %rax
	movl	1308(%rax), %ecx
	movq	-104(%rbp), %rax
	movl	1304(%rax), %edx
	movq	-104(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	bf_Log@PLT
	.loc 1 163 10
	movl	-76(%rbp), %eax
	movl	%eax, -84(%rbp)
	.loc 1 163 3
	jmp	.L28
.L37:
	.loc 1 165 22
	movl	$0, -68(%rbp)
	.loc 1 166 12
	movl	$0, -88(%rbp)
	.loc 1 166 5
	jmp	.L29
.L33:
	.loc 1 168 14
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 168 26
	movl	-88(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 1 168 10
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	.loc 1 169 14
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 1 169 23
	movl	-84(%rbp), %eax
	cltq
	.loc 1 169 10
	cmpq	%rax, %rdx
	jne	.L30
	.loc 1 171 9
	movq	-56(%rbp), %rax
	movq	104(%rax), %rax
	.loc 1 171 5
	testq	%rax, %rax
	je	.L30
	.loc 1 174 11
	movq	-56(%rbp), %rax
	movl	116(%rax), %edx
	.loc 1 174 29
	movq	-104(%rbp), %rax
	movl	1304(%rax), %ecx
	.loc 1 174 45
	movq	-104(%rbp), %rax
	movl	1308(%rax), %eax
	.loc 1 174 42
	imull	%ecx, %eax
	.loc 1 174 58
	sall	$3, %eax
	.loc 1 174 7
	cmpl	%eax, %edx
	jne	.L30
	.loc 1 176 13
	movl	$0, -80(%rbp)
	.loc 1 176 6
	jmp	.L31
.L32:
	.loc 1 178 31 discriminator 3
	movq	-56(%rbp), %rax
	movq	104(%rax), %rdx
	.loc 1 178 44 discriminator 3
	movl	-80(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 178 8 discriminator 3
	movzbl	%al, %edx
	movq	-104(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bf_AddTargetData@PLT
	.loc 1 176 39 discriminator 3
	addl	$1, -80(%rbp)
.L31:
	.loc 1 176 24 discriminator 1
	movq	-56(%rbp), %rax
	movl	116(%rax), %eax
	.loc 1 176 6 discriminator 1
	cmpl	%eax, -80(%rbp)
	jl	.L32
	.loc 1 180 23
	movl	$1, -68(%rbp)
.L30:
	.loc 1 166 37 discriminator 2
	addl	$1, -88(%rbp)
.L29:
	.loc 1 166 23 discriminator 1
	movq	-104(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 166 5 discriminator 1
	cmpl	%eax, -88(%rbp)
	jl	.L33
	.loc 1 185 8
	cmpl	$0, -68(%rbp)
	jne	.L34
	.loc 1 187 14
	movl	$0, -80(%rbp)
	.loc 1 187 7
	jmp	.L35
.L36:
	.loc 1 189 2 discriminator 3
	movq	-104(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	bf_AddTargetData@PLT
	.loc 1 187 59 discriminator 3
	addl	$1, -80(%rbp)
.L35:
	.loc 1 187 25 discriminator 1
	movq	-104(%rbp), %rax
	movl	1304(%rax), %edx
	.loc 1 187 41 discriminator 1
	movq	-104(%rbp), %rax
	movl	1308(%rax), %eax
	.loc 1 187 38 discriminator 1
	imull	%edx, %eax
	.loc 1 187 54 discriminator 1
	sall	$3, %eax
	.loc 1 187 7 discriminator 1
	cmpl	%eax, -80(%rbp)
	jl	.L36
.L34:
	.loc 1 163 31 discriminator 2
	addl	$1, -84(%rbp)
.L28:
	.loc 1 163 3 discriminator 1
	movl	-84(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jle	.L37
	.loc 1 195 3
	movq	-104(%rbp), %rax
	movl	1300(%rax), %edx
	movq	-104(%rbp), %rax
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	bf_Log@PLT
	.loc 1 196 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L38
	call	__stack_chk_fail@PLT
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	bf_Generate8x8Font, .-bf_Generate8x8Font
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 9 "bdf_glyph.h"
	.file 10 "bdf_font.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x86e
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF118
	.byte	0xc
	.long	.LASF119
	.long	.LASF120
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF5
	.byte	0x2
	.byte	0xd1
	.byte	0x17
	.long	0x39
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x4
	.byte	0x8
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.long	.LASF6
	.byte	0x3
	.byte	0x26
	.byte	0x17
	.long	0x49
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x78
	.uleb128 0x2
	.long	.LASF10
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x78
	.uleb128 0x6
	.byte	0x8
	.long	0x9d
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x7
	.long	0x9d
	.uleb128 0x8
	.long	.LASF55
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x230
	.uleb128 0x9
	.long	.LASF12
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x71
	.byte	0
	.uleb128 0x9
	.long	.LASF13
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0x97
	.byte	0x8
	.uleb128 0x9
	.long	.LASF14
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0x97
	.byte	0x10
	.uleb128 0x9
	.long	.LASF15
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0x97
	.byte	0x18
	.uleb128 0x9
	.long	.LASF16
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0x97
	.byte	0x20
	.uleb128 0x9
	.long	.LASF17
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0x97
	.byte	0x28
	.uleb128 0x9
	.long	.LASF18
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0x97
	.byte	0x30
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0x97
	.byte	0x38
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0x97
	.byte	0x40
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0x97
	.byte	0x48
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0x97
	.byte	0x50
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0x97
	.byte	0x58
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x249
	.byte	0x60
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x24f
	.byte	0x68
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x71
	.byte	0x70
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x71
	.byte	0x74
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0x7f
	.byte	0x78
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x255
	.byte	0x83
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x265
	.byte	0x88
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0x8b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x270
	.byte	0x98
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x27b
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x24f
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x71
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x281
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF41
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xa9
	.uleb128 0xa
	.long	.LASF121
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0xb
	.long	.LASF42
	.uleb128 0x6
	.byte	0x8
	.long	0x244
	.uleb128 0x6
	.byte	0x8
	.long	0xa9
	.uleb128 0xc
	.long	0x9d
	.long	0x265
	.uleb128 0xd
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x23c
	.uleb128 0xb
	.long	.LASF43
	.uleb128 0x6
	.byte	0x8
	.long	0x26b
	.uleb128 0xb
	.long	.LASF44
	.uleb128 0x6
	.byte	0x8
	.long	0x276
	.uleb128 0xc
	.long	0x9d
	.long	0x291
	.uleb128 0xd
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.long	.LASF45
	.byte	0x6
	.byte	0x89
	.byte	0xe
	.long	0x29d
	.uleb128 0x6
	.byte	0x8
	.long	0x230
	.uleb128 0xe
	.long	.LASF46
	.byte	0x6
	.byte	0x8a
	.byte	0xe
	.long	0x29d
	.uleb128 0xe
	.long	.LASF47
	.byte	0x6
	.byte	0x8b
	.byte	0xe
	.long	0x29d
	.uleb128 0xe
	.long	.LASF48
	.byte	0x7
	.byte	0x1a
	.byte	0xc
	.long	0x71
	.uleb128 0xc
	.long	0x2dd
	.long	0x2d2
	.uleb128 0xf
	.byte	0
	.uleb128 0x7
	.long	0x2c7
	.uleb128 0x6
	.byte	0x8
	.long	0xa4
	.uleb128 0x7
	.long	0x2d7
	.uleb128 0xe
	.long	.LASF49
	.byte	0x7
	.byte	0x1b
	.byte	0x1a
	.long	0x2d2
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF50
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF51
	.uleb128 0x2
	.long	.LASF52
	.byte	0x8
	.byte	0x18
	.byte	0x13
	.long	0x5e
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF53
	.uleb128 0x2
	.long	.LASF54
	.byte	0x9
	.byte	0x9
	.byte	0x21
	.long	0x31b
	.uleb128 0x10
	.long	.LASF56
	.value	0x520
	.byte	0xa
	.byte	0x16
	.byte	0x8
	.long	0x562
	.uleb128 0x9
	.long	.LASF57
	.byte	0xa
	.byte	0x18
	.byte	0x7
	.long	0x71
	.byte	0
	.uleb128 0x9
	.long	.LASF58
	.byte	0xa
	.byte	0x1a
	.byte	0xa
	.long	0x6eb
	.byte	0x8
	.uleb128 0x9
	.long	.LASF59
	.byte	0xa
	.byte	0x1b
	.byte	0x7
	.long	0x71
	.byte	0x10
	.uleb128 0x9
	.long	.LASF60
	.byte	0xa
	.byte	0x1c
	.byte	0x7
	.long	0x71
	.byte	0x14
	.uleb128 0x9
	.long	.LASF61
	.byte	0xa
	.byte	0x1f
	.byte	0x8
	.long	0x6f7
	.byte	0x18
	.uleb128 0x11
	.long	.LASF62
	.byte	0xa
	.byte	0x20
	.byte	0x7
	.long	0x71
	.value	0x418
	.uleb128 0x11
	.long	.LASF63
	.byte	0xa
	.byte	0x21
	.byte	0x7
	.long	0x71
	.value	0x41c
	.uleb128 0x11
	.long	.LASF64
	.byte	0xa
	.byte	0x23
	.byte	0x8
	.long	0x78
	.value	0x420
	.uleb128 0x11
	.long	.LASF65
	.byte	0xa
	.byte	0x25
	.byte	0x8
	.long	0x78
	.value	0x428
	.uleb128 0x11
	.long	.LASF66
	.byte	0xa
	.byte	0x26
	.byte	0x8
	.long	0x78
	.value	0x430
	.uleb128 0x11
	.long	.LASF67
	.byte	0xa
	.byte	0x28
	.byte	0x8
	.long	0x78
	.value	0x438
	.uleb128 0x11
	.long	.LASF68
	.byte	0xa
	.byte	0x29
	.byte	0x8
	.long	0x78
	.value	0x440
	.uleb128 0x11
	.long	.LASF69
	.byte	0xa
	.byte	0x2a
	.byte	0x8
	.long	0x78
	.value	0x448
	.uleb128 0x11
	.long	.LASF70
	.byte	0xa
	.byte	0x2b
	.byte	0x8
	.long	0x78
	.value	0x450
	.uleb128 0x11
	.long	.LASF71
	.byte	0xa
	.byte	0x2d
	.byte	0x7
	.long	0x71
	.value	0x458
	.uleb128 0x11
	.long	.LASF72
	.byte	0xa
	.byte	0x2e
	.byte	0x7
	.long	0x71
	.value	0x45c
	.uleb128 0x11
	.long	.LASF73
	.byte	0xa
	.byte	0x2f
	.byte	0x7
	.long	0x71
	.value	0x460
	.uleb128 0x12
	.string	"fp"
	.byte	0xa
	.byte	0x30
	.byte	0x9
	.long	0x29d
	.value	0x468
	.uleb128 0x11
	.long	.LASF74
	.byte	0xa
	.byte	0x32
	.byte	0x9
	.long	0x97
	.value	0x470
	.uleb128 0x11
	.long	.LASF75
	.byte	0xa
	.byte	0x33
	.byte	0x9
	.long	0x97
	.value	0x478
	.uleb128 0x11
	.long	.LASF76
	.byte	0xa
	.byte	0x35
	.byte	0x8
	.long	0x78
	.value	0x480
	.uleb128 0x11
	.long	.LASF77
	.byte	0xa
	.byte	0x37
	.byte	0x7
	.long	0x71
	.value	0x488
	.uleb128 0x12
	.string	"max"
	.byte	0xa
	.byte	0x39
	.byte	0x9
	.long	0x59c
	.value	0x490
	.uleb128 0x11
	.long	.LASF78
	.byte	0xa
	.byte	0x3c
	.byte	0x8
	.long	0x78
	.value	0x4b0
	.uleb128 0x11
	.long	.LASF79
	.byte	0xa
	.byte	0x3d
	.byte	0x8
	.long	0x78
	.value	0x4b8
	.uleb128 0x11
	.long	.LASF80
	.byte	0xa
	.byte	0x3e
	.byte	0x8
	.long	0x78
	.value	0x4c0
	.uleb128 0x11
	.long	.LASF81
	.byte	0xa
	.byte	0x3f
	.byte	0x8
	.long	0x78
	.value	0x4c8
	.uleb128 0x11
	.long	.LASF82
	.byte	0xa
	.byte	0x42
	.byte	0x8
	.long	0x78
	.value	0x4d0
	.uleb128 0x11
	.long	.LASF83
	.byte	0xa
	.byte	0x43
	.byte	0x8
	.long	0x78
	.value	0x4d8
	.uleb128 0x11
	.long	.LASF84
	.byte	0xa
	.byte	0x46
	.byte	0x8
	.long	0x78
	.value	0x4e0
	.uleb128 0x11
	.long	.LASF85
	.byte	0xa
	.byte	0x47
	.byte	0x8
	.long	0x78
	.value	0x4e8
	.uleb128 0x11
	.long	.LASF86
	.byte	0xa
	.byte	0x4a
	.byte	0x7
	.long	0x71
	.value	0x4f0
	.uleb128 0x11
	.long	.LASF87
	.byte	0xa
	.byte	0x4b
	.byte	0x7
	.long	0x71
	.value	0x4f4
	.uleb128 0x11
	.long	.LASF88
	.byte	0xa
	.byte	0x4c
	.byte	0x7
	.long	0x71
	.value	0x4f8
	.uleb128 0x11
	.long	.LASF89
	.byte	0xa
	.byte	0x4d
	.byte	0x7
	.long	0x71
	.value	0x4fc
	.uleb128 0x11
	.long	.LASF90
	.byte	0xa
	.byte	0x4e
	.byte	0x7
	.long	0x71
	.value	0x500
	.uleb128 0x11
	.long	.LASF91
	.byte	0xa
	.byte	0x51
	.byte	0xc
	.long	0x6d9
	.value	0x508
	.uleb128 0x11
	.long	.LASF92
	.byte	0xa
	.byte	0x52
	.byte	0x7
	.long	0x71
	.value	0x510
	.uleb128 0x11
	.long	.LASF93
	.byte	0xa
	.byte	0x53
	.byte	0x7
	.long	0x71
	.value	0x514
	.uleb128 0x11
	.long	.LASF94
	.byte	0xa
	.byte	0x56
	.byte	0x7
	.long	0x71
	.value	0x518
	.uleb128 0x11
	.long	.LASF95
	.byte	0xa
	.byte	0x57
	.byte	0x7
	.long	0x71
	.value	0x51c
	.byte	0
	.uleb128 0x8
	.long	.LASF96
	.byte	0x20
	.byte	0x9
	.byte	0xc
	.byte	0x8
	.long	0x59c
	.uleb128 0x13
	.string	"w"
	.byte	0x9
	.byte	0xe
	.byte	0x8
	.long	0x78
	.byte	0
	.uleb128 0x13
	.string	"h"
	.byte	0x9
	.byte	0xf
	.byte	0x8
	.long	0x78
	.byte	0x8
	.uleb128 0x13
	.string	"x"
	.byte	0x9
	.byte	0x10
	.byte	0x8
	.long	0x78
	.byte	0x10
	.uleb128 0x13
	.string	"y"
	.byte	0x9
	.byte	0x11
	.byte	0x8
	.long	0x78
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.long	.LASF97
	.byte	0x9
	.byte	0x13
	.byte	0x1c
	.long	0x562
	.uleb128 0x8
	.long	.LASF98
	.byte	0xa0
	.byte	0x9
	.byte	0x16
	.byte	0x8
	.long	0x6d3
	.uleb128 0x13
	.string	"bf"
	.byte	0x9
	.byte	0x18
	.byte	0x9
	.long	0x6d3
	.byte	0
	.uleb128 0x9
	.long	.LASF64
	.byte	0x9
	.byte	0x1a
	.byte	0x8
	.long	0x78
	.byte	0x8
	.uleb128 0x9
	.long	.LASF99
	.byte	0x9
	.byte	0x1b
	.byte	0x8
	.long	0x78
	.byte	0x10
	.uleb128 0x9
	.long	.LASF65
	.byte	0x9
	.byte	0x1d
	.byte	0x8
	.long	0x78
	.byte	0x18
	.uleb128 0x9
	.long	.LASF66
	.byte	0x9
	.byte	0x1e
	.byte	0x8
	.long	0x78
	.byte	0x20
	.uleb128 0x13
	.string	"bbx"
	.byte	0x9
	.byte	0x20
	.byte	0x9
	.long	0x59c
	.byte	0x28
	.uleb128 0x9
	.long	.LASF100
	.byte	0x9
	.byte	0x21
	.byte	0x8
	.long	0x78
	.byte	0x48
	.uleb128 0x9
	.long	.LASF101
	.byte	0x9
	.byte	0x22
	.byte	0x7
	.long	0x71
	.byte	0x50
	.uleb128 0x9
	.long	.LASF102
	.byte	0x9
	.byte	0x24
	.byte	0xc
	.long	0x6d9
	.byte	0x58
	.uleb128 0x9
	.long	.LASF103
	.byte	0x9
	.byte	0x25
	.byte	0x7
	.long	0x71
	.byte	0x60
	.uleb128 0x9
	.long	.LASF104
	.byte	0x9
	.byte	0x26
	.byte	0x7
	.long	0x71
	.byte	0x64
	.uleb128 0x9
	.long	.LASF91
	.byte	0x9
	.byte	0x2b
	.byte	0xc
	.long	0x6d9
	.byte	0x68
	.uleb128 0x9
	.long	.LASF92
	.byte	0x9
	.byte	0x2c
	.byte	0x7
	.long	0x71
	.byte	0x70
	.uleb128 0x9
	.long	.LASF93
	.byte	0x9
	.byte	0x2d
	.byte	0x7
	.long	0x71
	.byte	0x74
	.uleb128 0x9
	.long	.LASF105
	.byte	0x9
	.byte	0x2e
	.byte	0x7
	.long	0x71
	.byte	0x78
	.uleb128 0x9
	.long	.LASF106
	.byte	0x9
	.byte	0x32
	.byte	0xc
	.long	0x40
	.byte	0x7c
	.uleb128 0x9
	.long	.LASF107
	.byte	0x9
	.byte	0x33
	.byte	0xc
	.long	0x40
	.byte	0x80
	.uleb128 0x9
	.long	.LASF108
	.byte	0x9
	.byte	0x35
	.byte	0x7
	.long	0x71
	.byte	0x84
	.uleb128 0x9
	.long	.LASF109
	.byte	0x9
	.byte	0x36
	.byte	0xc
	.long	0x40
	.byte	0x88
	.uleb128 0x9
	.long	.LASF110
	.byte	0x9
	.byte	0x37
	.byte	0xc
	.long	0x40
	.byte	0x8c
	.uleb128 0x9
	.long	.LASF111
	.byte	0x9
	.byte	0x38
	.byte	0xc
	.long	0x40
	.byte	0x90
	.uleb128 0x9
	.long	.LASF112
	.byte	0x9
	.byte	0x3a
	.byte	0x8
	.long	0x78
	.byte	0x98
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x30f
	.uleb128 0x6
	.byte	0x8
	.long	0x2fc
	.uleb128 0x2
	.long	.LASF113
	.byte	0x9
	.byte	0x3d
	.byte	0x22
	.long	0x5a8
	.uleb128 0x6
	.byte	0x8
	.long	0x6f1
	.uleb128 0x6
	.byte	0x8
	.long	0x6df
	.uleb128 0xc
	.long	0x9d
	.long	0x708
	.uleb128 0x14
	.long	0x39
	.value	0x3ff
	.byte	0
	.uleb128 0x15
	.long	.LASF122
	.byte	0x1
	.byte	0x4b
	.byte	0x6
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x7e8
	.uleb128 0x16
	.string	"bf"
	.byte	0x1
	.byte	0x4b
	.byte	0x1f
	.long	0x6d3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x16
	.string	"xo"
	.byte	0x1
	.byte	0x4b
	.byte	0x27
	.long	0x71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x16
	.string	"yo"
	.byte	0x1
	.byte	0x4b
	.byte	0x2f
	.long	0x71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x4d
	.byte	0x7
	.long	0x71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x17
	.string	"j"
	.byte	0x1
	.byte	0x4d
	.byte	0xa
	.long	0x71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x17
	.string	"k"
	.byte	0x1
	.byte	0x4d
	.byte	0xd
	.long	0x71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x17
	.string	"bg"
	.byte	0x1
	.byte	0x4e
	.byte	0x9
	.long	0x6f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.long	.LASF114
	.byte	0x1
	.byte	0x4f
	.byte	0x7
	.long	0x71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x18
	.long	.LASF115
	.byte	0x1
	.byte	0x4f
	.byte	0xe
	.long	0x71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x18
	.long	.LASF116
	.byte	0x1
	.byte	0x50
	.byte	0x9
	.long	0x59c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.long	.LASF117
	.byte	0x1
	.byte	0x51
	.byte	0x7
	.long	0x71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x17
	.string	"x"
	.byte	0x1
	.byte	0x52
	.byte	0x7
	.long	0x71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.string	"y"
	.byte	0x1
	.byte	0x52
	.byte	0xa
	.long	0x71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x19
	.long	.LASF123
	.byte	0x1
	.byte	0x16
	.byte	0xc
	.long	0x71
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x86b
	.uleb128 0x16
	.string	"bg"
	.byte	0x1
	.byte	0x16
	.byte	0x21
	.long	0x6f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.string	"bbx"
	.byte	0x1
	.byte	0x16
	.byte	0x2c
	.long	0x86b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.string	"xo"
	.byte	0x1
	.byte	0x16
	.byte	0x35
	.long	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x16
	.string	"yo"
	.byte	0x1
	.byte	0x16
	.byte	0x3d
	.long	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"x"
	.byte	0x1
	.byte	0x18
	.byte	0x7
	.long	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.string	"y"
	.byte	0x1
	.byte	0x19
	.byte	0x7
	.long	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.string	"d"
	.byte	0x1
	.byte	0x1a
	.byte	0x7
	.long	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x59c
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
	.uleb128 0x39
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF120:
	.string	"/home/step/u8g2-2.29.11/tools/font/bdfconv"
.LASF9:
	.string	"__off_t"
.LASF13:
	.string	"_IO_read_ptr"
.LASF85:
	.string	"x_max"
.LASF25:
	.string	"_chain"
.LASF5:
	.string	"size_t"
.LASF31:
	.string	"_shortbuf"
.LASF84:
	.string	"x_min"
.LASF6:
	.string	"__uint8_t"
.LASF90:
	.string	"dx_max_bit_size"
.LASF82:
	.string	"dx_min"
.LASF19:
	.string	"_IO_buf_base"
.LASF51:
	.string	"long long unsigned int"
.LASF86:
	.string	"bbx_x_max_bit_size"
.LASF102:
	.string	"bitmap_data"
.LASF77:
	.string	"bbx_mode"
.LASF34:
	.string	"_codecvt"
.LASF89:
	.string	"bbx_h_max_bit_size"
.LASF50:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF109:
	.string	"rle_bitcnt"
.LASF26:
	.string	"_fileno"
.LASF59:
	.string	"glyph_cnt"
.LASF14:
	.string	"_IO_read_end"
.LASF110:
	.string	"rle_last_0"
.LASF111:
	.string	"rle_last_1"
.LASF57:
	.string	"is_verbose"
.LASF8:
	.string	"long int"
.LASF12:
	.string	"_flags"
.LASF20:
	.string	"_IO_buf_end"
.LASF29:
	.string	"_cur_column"
.LASF43:
	.string	"_IO_codecvt"
.LASF101:
	.string	"is_excluded_from_kerning"
.LASF28:
	.string	"_old_offset"
.LASF33:
	.string	"_offset"
.LASF71:
	.string	"bitmap_x"
.LASF72:
	.string	"bitmap_y"
.LASF68:
	.string	"bbx_h"
.LASF108:
	.string	"rle_is_first"
.LASF94:
	.string	"tile_h_size"
.LASF97:
	.string	"bbx_t"
.LASF75:
	.string	"str_copyright"
.LASF67:
	.string	"bbx_w"
.LASF69:
	.string	"bbx_x"
.LASF70:
	.string	"bbx_y"
.LASF100:
	.string	"shift_x"
.LASF42:
	.string	"_IO_marker"
.LASF45:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF37:
	.string	"_freeres_buf"
.LASF123:
	.string	"bg_8x8_convert"
.LASF0:
	.string	"long unsigned int"
.LASF17:
	.string	"_IO_write_ptr"
.LASF104:
	.string	"bitmap_height"
.LASF48:
	.string	"sys_nerr"
.LASF3:
	.string	"short unsigned int"
.LASF60:
	.string	"glyph_max"
.LASF115:
	.string	"last"
.LASF21:
	.string	"_IO_save_base"
.LASF32:
	.string	"_lock"
.LASF103:
	.string	"bitmap_width"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF46:
	.string	"stdout"
.LASF116:
	.string	"local_bbx"
.LASF64:
	.string	"encoding"
.LASF56:
	.string	"_bdf_font_struct"
.LASF62:
	.string	"line_pos"
.LASF98:
	.string	"_bdf_glyph_struct"
.LASF96:
	.string	"_bbx_struct"
.LASF53:
	.string	"long double"
.LASF58:
	.string	"glyph_list"
.LASF93:
	.string	"target_cnt"
.LASF18:
	.string	"_IO_write_end"
.LASF88:
	.string	"bbx_w_max_bit_size"
.LASF121:
	.string	"_IO_lock_t"
.LASF55:
	.string	"_IO_FILE"
.LASF117:
	.string	"is_glyph_written"
.LASF49:
	.string	"sys_errlist"
.LASF65:
	.string	"dwidth_x"
.LASF66:
	.string	"dwidth_y"
.LASF24:
	.string	"_markers"
.LASF79:
	.string	"enc_h"
.LASF2:
	.string	"unsigned char"
.LASF78:
	.string	"enc_w"
.LASF80:
	.string	"enc_x"
.LASF81:
	.string	"enc_y"
.LASF76:
	.string	"selected_glyphs"
.LASF7:
	.string	"short int"
.LASF44:
	.string	"_IO_wide_data"
.LASF30:
	.string	"_vtable_offset"
.LASF92:
	.string	"target_max"
.LASF91:
	.string	"target_data"
.LASF41:
	.string	"FILE"
.LASF63:
	.string	"is_bitmap_parsing"
.LASF114:
	.string	"first"
.LASF99:
	.string	"map_to"
.LASF11:
	.string	"char"
.LASF61:
	.string	"line_buf"
.LASF54:
	.string	"bf_t"
.LASF95:
	.string	"tile_v_size"
.LASF118:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF113:
	.string	"bg_t"
.LASF10:
	.string	"__off64_t"
.LASF15:
	.string	"_IO_read_base"
.LASF23:
	.string	"_IO_save_end"
.LASF106:
	.string	"rle_bits_per_0"
.LASF107:
	.string	"rle_bits_per_1"
.LASF38:
	.string	"__pad5"
.LASF40:
	.string	"_unused2"
.LASF47:
	.string	"stderr"
.LASF105:
	.string	"target_bit_pos"
.LASF52:
	.string	"uint8_t"
.LASF22:
	.string	"_IO_backup_base"
.LASF83:
	.string	"dx_max"
.LASF74:
	.string	"str_font"
.LASF36:
	.string	"_freeres_list"
.LASF87:
	.string	"bbx_y_max_bit_size"
.LASF112:
	.string	"width_deviation"
.LASF35:
	.string	"_wide_data"
.LASF73:
	.string	"glyph_pos"
.LASF122:
	.string	"bf_Generate8x8Font"
.LASF119:
	.string	"bdf_8x8.c"
.LASF16:
	.string	"_IO_write_base"
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
