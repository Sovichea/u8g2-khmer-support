	.file	"bdf_glyph.c"
	.text
.Ltext0:
	.globl	bg_Open
	.type	bg_Open, @function
bg_Open:
.LFB6:
	.file 1 "bdf_glyph.c"
	.loc 1 11 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 14 16
	movl	$160, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	.loc 1 15 6
	cmpq	$0, -8(%rbp)
	je	.L2
	.loc 1 17 18
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 1 18 16
	movq	-8(%rbp), %rax
	movq	$-1, 16(%rax)
	.loc 1 19 21
	movq	-8(%rbp), %rax
	movq	$0, 88(%rax)
	.loc 1 20 21
	movq	-8(%rbp), %rax
	movq	$0, 104(%rax)
	.loc 1 21 20
	movq	-8(%rbp), %rax
	movl	$0, 112(%rax)
	.loc 1 22 20
	movq	-8(%rbp), %rax
	movl	$0, 116(%rax)
	.loc 1 23 17
	movq	-8(%rbp), %rax
	movq	$0, 72(%rax)
	.loc 1 24 34
	movq	-8(%rbp), %rax
	movl	$0, 80(%rax)
	.loc 1 26 12
	movq	-8(%rbp), %rax
	jmp	.L3
.L2:
	.loc 1 28 10
	movl	$0, %eax
.L3:
	.loc 1 29 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	bg_Open, .-bg_Open
	.globl	bg_Close
	.type	bg_Close, @function
bg_Close:
.LFB7:
	.loc 1 33 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 34 10
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	.loc 1 34 6
	testq	%rax, %rax
	je	.L5
	.loc 1 35 12
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	.loc 1 35 5
	movq	%rax, %rdi
	call	free@PLT
.L5:
	.loc 1 36 10
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	.loc 1 36 6
	testq	%rax, %rax
	je	.L6
	.loc 1 37 12
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	.loc 1 37 5
	movq	%rax, %rdi
	call	free@PLT
.L6:
	.loc 1 38 19
	movq	-8(%rbp), %rax
	movq	$0, 88(%rax)
	.loc 1 39 19
	movq	-8(%rbp), %rax
	movq	$0, 104(%rax)
	.loc 1 40 18
	movq	-8(%rbp), %rax
	movl	$0, 112(%rax)
	.loc 1 41 18
	movq	-8(%rbp), %rax
	movl	$0, 116(%rax)
	.loc 1 42 22
	movq	-8(%rbp), %rax
	movl	$0, 120(%rax)
	.loc 1 43 16
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 1 44 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 45 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	bg_Close, .-bg_Close
	.type	bg_extend_target_data, @function
bg_extend_target_data:
.LFB8:
	.loc 1 48 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 49 7
	movl	$16, -12(%rbp)
	.loc 1 52 10
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	.loc 1 52 6
	testq	%rax, %rax
	jne	.L8
	.loc 1 54 11
	movl	-12(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	.loc 1 55 20
	movq	-24(%rbp), %rax
	movl	$0, 112(%rax)
	jmp	.L9
.L8:
	.loc 1 59 39
	movq	-24(%rbp), %rax
	movl	112(%rax), %edx
	.loc 1 59 52
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	.loc 1 59 11
	movslq	%eax, %rdx
	.loc 1 59 21
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	.loc 1 59 11
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, -8(%rbp)
.L9:
	.loc 1 61 6
	cmpq	$0, -8(%rbp)
	jne	.L10
	.loc 1 62 12
	movl	$0, %eax
	jmp	.L11
.L10:
	.loc 1 63 19
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 104(%rax)
	.loc 1 64 10
	movq	-24(%rbp), %rax
	movl	112(%rax), %eax
	movl	%eax, -16(%rbp)
	.loc 1 64 3
	jmp	.L12
.L13:
	.loc 1 65 9 discriminator 3
	movq	-24(%rbp), %rax
	movq	104(%rax), %rdx
	.loc 1 65 22 discriminator 3
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	.loc 1 65 26 discriminator 3
	movb	$0, (%rax)
	.loc 1 64 58 discriminator 3
	addl	$1, -16(%rbp)
.L12:
	.loc 1 64 34 discriminator 1
	movq	-24(%rbp), %rax
	movl	112(%rax), %edx
	.loc 1 64 47 discriminator 1
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	.loc 1 64 3 discriminator 1
	cmpl	%eax, -16(%rbp)
	jl	.L13
	.loc 1 66 18
	movq	-24(%rbp), %rax
	movl	112(%rax), %edx
	movl	-12(%rbp), %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 112(%rax)
	.loc 1 67 10
	movl	$1, %eax
.L11:
	.loc 1 68 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	bg_extend_target_data, .-bg_extend_target_data
	.globl	bg_AddTargetData
	.type	bg_AddTargetData, @function
bg_AddTargetData:
.LFB9:
	.loc 1 71 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	.loc 1 72 8
	jmp	.L15
.L17:
	.loc 1 73 10
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	bg_extend_target_data
	.loc 1 73 8
	testl	%eax, %eax
	jne	.L15
	.loc 1 74 14
	movl	$-1, %eax
	jmp	.L16
.L15:
	.loc 1 72 12
	movq	-8(%rbp), %rax
	movl	112(%rax), %edx
	.loc 1 72 30
	movq	-8(%rbp), %rax
	movl	116(%rax), %eax
	.loc 1 72 8
	cmpl	%eax, %edx
	jle	.L17
	.loc 1 75 5
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdx
	.loc 1 75 21
	movq	-8(%rbp), %rax
	movl	116(%rax), %eax
	cltq
	.loc 1 75 18
	addq	%rax, %rdx
	.loc 1 75 35
	movzbl	-12(%rbp), %eax
	movb	%al, (%rdx)
	.loc 1 76 5
	movq	-8(%rbp), %rax
	movl	116(%rax), %eax
	.loc 1 76 17
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 116(%rax)
	.loc 1 77 12
	movq	-8(%rbp), %rax
	movl	116(%rax), %eax
	.loc 1 77 24
	subl	$1, %eax
.L16:
	.loc 1 78 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	bg_AddTargetData, .-bg_AddTargetData
	.globl	bg_ClearTargetData
	.type	bg_ClearTargetData, @function
bg_ClearTargetData:
.LFB10:
	.loc 1 81 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	.loc 1 83 10
	movl	$0, -4(%rbp)
	.loc 1 83 3
	jmp	.L19
.L20:
	.loc 1 84 7 discriminator 3
	movq	-24(%rbp), %rax
	movq	104(%rax), %rdx
	.loc 1 84 20 discriminator 3
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	.loc 1 84 24 discriminator 3
	movb	$0, (%rax)
	.loc 1 83 36 discriminator 3
	addl	$1, -4(%rbp)
.L19:
	.loc 1 83 21 discriminator 1
	movq	-24(%rbp), %rax
	movl	112(%rax), %eax
	.loc 1 83 3 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L20
	.loc 1 85 18
	movq	-24(%rbp), %rax
	movl	$0, 116(%rax)
	.loc 1 86 22
	movq	-24(%rbp), %rax
	movl	$0, 120(%rax)
	.loc 1 87 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	bg_ClearTargetData, .-bg_ClearTargetData
	.section	.rodata
.LC0:
	.string	"bdf_glyph.c"
.LC1:
	.string	"val < (1<<cnt)"
	.text
	.globl	bg_AddTargetBits
	.type	bg_AddTargetBits, @function
bg_AddTargetBits:
.LFB11:
	.loc 1 98 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	.loc 1 100 3
	movl	-12(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	cmpl	%eax, -16(%rbp)
	jb	.L23
	.loc 1 100 3 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.3169(%rip), %rcx
	movl	$100, %edx
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	call	__assert_fail@PLT
.L25:
	.loc 1 103 10 is_stmt 1
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	bg_extend_target_data
	.loc 1 103 8
	testl	%eax, %eax
	jne	.L23
	.loc 1 104 14
	movl	$0, %eax
	jmp	.L24
.L23:
	.loc 1 102 12
	movq	-8(%rbp), %rax
	movl	112(%rax), %edx
	.loc 1 102 30
	movq	-8(%rbp), %rax
	movl	116(%rax), %eax
	.loc 1 102 42
	addl	$1, %eax
	.loc 1 102 8
	cmpl	%eax, %edx
	jle	.L25
	.loc 1 106 5
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdx
	.loc 1 106 21
	movq	-8(%rbp), %rax
	movl	116(%rax), %eax
	.loc 1 106 35
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	.loc 1 106 48
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	.loc 1 106 43
	movl	-16(%rbp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	.loc 1 106 35
	movl	%eax, %ecx
	.loc 1 106 5
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdx
	.loc 1 106 21
	movq	-8(%rbp), %rax
	movl	116(%rax), %eax
	.loc 1 106 35
	cltq
	addq	%rdx, %rax
	orl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	.loc 1 108 10
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	movl	%eax, %edx
	.loc 1 108 26
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	.loc 1 108 6
	cmpl	$7, %eax
	jbe	.L26
	.loc 1 110 7
	movq	-8(%rbp), %rax
	movl	116(%rax), %eax
	.loc 1 110 19
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 116(%rax)
	.loc 1 112 17
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	.loc 1 112 14
	movl	$8, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 1 112 9
	movl	%eax, %ecx
	shrl	%cl, -16(%rbp)
	.loc 1 113 7
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdx
	.loc 1 113 23
	movq	-8(%rbp), %rax
	movl	116(%rax), %eax
	cltq
	.loc 1 113 20
	addq	%rdx, %rax
	.loc 1 113 37
	movl	-16(%rbp), %edx
	movb	%dl, (%rax)
	.loc 1 115 23
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 120(%rax)
	.loc 1 116 23
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	leal	-8(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 120(%rax)
	jmp	.L27
.L26:
	.loc 1 120 23
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 120(%rax)
.L27:
	.loc 1 123 10
	movl	$1, %eax
.L24:
	.loc 1 124 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	bg_AddTargetBits, .-bg_AddTargetBits
	.globl	bg_FlushTargetBits
	.type	bg_FlushTargetBits, @function
bg_FlushTargetBits:
.LFB12:
	.loc 1 127 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 128 8
	jmp	.L29
.L31:
	.loc 1 129 10
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	bg_AddTargetBits
	.loc 1 129 8
	testl	%eax, %eax
	jne	.L29
	.loc 1 130 14
	movl	$0, %eax
	jmp	.L30
.L29:
	.loc 1 128 12
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	.loc 1 128 8
	testl	%eax, %eax
	jne	.L31
	.loc 1 131 10
	movl	$1, %eax
.L30:
	.loc 1 132 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	bg_FlushTargetBits, .-bg_FlushTargetBits
	.globl	bg_SetBitmapSizeInBytes
	.type	bg_SetBitmapSizeInBytes, @function
bg_SetBitmapSizeInBytes:
.LFB13:
	.loc 1 136 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 137 10
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	.loc 1 137 6
	testq	%rax, %rax
	je	.L33
	.loc 1 138 12
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	.loc 1 138 5
	movq	%rax, %rdi
	call	free@PLT
.L33:
	.loc 1 139 32
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	.loc 1 139 19
	movq	-8(%rbp), %rax
	movq	%rdx, 88(%rax)
	.loc 1 140 10
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	.loc 1 140 6
	testq	%rax, %rax
	jne	.L34
	.loc 1 141 12
	movl	$0, %eax
	jmp	.L35
.L34:
	.loc 1 142 12
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	.loc 1 142 3
	movq	-16(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 1 143 10
	movl	$1, %eax
.L35:
	.loc 1 144 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	bg_SetBitmapSizeInBytes, .-bg_SetBitmapSizeInBytes
	.globl	bg_SetBitmapSize
	.type	bg_SetBitmapSize, @function
bg_SetBitmapSize:
.LFB14:
	.loc 1 147 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	.loc 1 148 39
	movl	-12(%rbp), %eax
	imull	-16(%rbp), %eax
	.loc 1 148 10
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bg_SetBitmapSizeInBytes
	.loc 1 149 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	bg_SetBitmapSize, .-bg_SetBitmapSize
	.section	.rodata
.LC2:
	.string	"Glyph size problem: "
.LC3:
	.string	"encoding=%ld/0x%lx, "
.LC4:
	.string	"width=%d, height=%d, "
	.align 8
.LC5:
	.string	"requested position x=%d, y=%d (use BBX %d ...?)\n"
	.align 8
.LC6:
	.string	"x < ((bg->bitmap_width+7)/8)*8"
.LC7:
	.string	"y < bg->bitmap_height"
.LC8:
	.string	"x >= 0"
.LC9:
	.string	"y >= 0"
	.text
	.globl	bg_SetBitmapPixel
	.type	bg_SetBitmapPixel, @function
bg_SetBitmapPixel:
.LFB15:
	.loc 1 152 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	.loc 1 156 15
	movq	-8(%rbp), %rax
	movl	96(%rax), %eax
	.loc 1 156 6
	cmpl	%eax, -12(%rbp)
	jge	.L39
	.loc 1 156 40 discriminator 1
	movq	-8(%rbp), %rax
	movl	100(%rax), %eax
	.loc 1 156 30 discriminator 1
	cmpl	%eax, -16(%rbp)
	jl	.L40
.L39:
	.loc 1 158 29
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 158 24
	movq	last_encoding.3194(%rip), %rax
	.loc 1 158 8
	cmpq	%rax, %rdx
	je	.L41
	.loc 1 160 17
	movl	-12(%rbp), %eax
	cltq
	movq	%rax, biggest_x.3195(%rip)
	.loc 1 161 7
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 162 7
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 163 7
	movq	-8(%rbp), %rax
	movl	100(%rax), %edx
	movq	-8(%rbp), %rax
	movl	96(%rax), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 164 7
	movl	-12(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 165 25
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 165 21
	movq	%rax, last_encoding.3194(%rip)
	jmp	.L40
.L41:
	.loc 1 167 25
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	biggest_x.3195(%rip), %rax
	.loc 1 167 13
	cmpq	%rax, %rdx
	jle	.L40
	.loc 1 169 17
	movl	-12(%rbp), %eax
	cltq
	movq	%rax, biggest_x.3195(%rip)
	.loc 1 170 7
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 171 7
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 172 7
	movq	-8(%rbp), %rax
	movl	100(%rax), %edx
	movq	-8(%rbp), %rax
	movl	96(%rax), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 173 7
	movl	-12(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L40:
	.loc 1 177 3
	movq	-8(%rbp), %rax
	movl	96(%rax), %eax
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	sall	$3, %eax
	cmpl	%eax, -12(%rbp)
	jl	.L42
	.loc 1 177 3 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.3196(%rip), %rcx
	movl	$177, %edx
	leaq	.LC0(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	call	__assert_fail@PLT
.L42:
	.loc 1 178 3 is_stmt 1
	movq	-8(%rbp), %rax
	movl	100(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jl	.L43
	.loc 1 178 3 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.3196(%rip), %rcx
	movl	$178, %edx
	leaq	.LC0(%rip), %rsi
	leaq	.LC7(%rip), %rdi
	call	__assert_fail@PLT
.L43:
	.loc 1 179 3 is_stmt 1
	cmpl	$0, -12(%rbp)
	jns	.L44
	.loc 1 179 3 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.3196(%rip), %rcx
	movl	$179, %edx
	leaq	.LC0(%rip), %rsi
	leaq	.LC8(%rip), %rdi
	call	__assert_fail@PLT
.L44:
	.loc 1 180 3 is_stmt 1
	cmpl	$0, -16(%rbp)
	jns	.L45
	.loc 1 180 3 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.3196(%rip), %rcx
	movl	$180, %edx
	leaq	.LC0(%rip), %rsi
	leaq	.LC9(%rip), %rdi
	call	__assert_fail@PLT
.L45:
	.loc 1 181 5 is_stmt 1
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdx
	.loc 1 181 23
	movq	-8(%rbp), %rax
	movl	96(%rax), %eax
	.loc 1 181 20
	imull	-16(%rbp), %eax
	movl	%eax, %ecx
	.loc 1 181 38
	movl	-12(%rbp), %eax
	addl	%ecx, %eax
	cltq
	.loc 1 181 18
	addq	%rdx, %rax
	.loc 1 181 43
	movl	-20(%rbp), %edx
	movb	%dl, (%rax)
	.loc 1 182 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	bg_SetBitmapPixel, .-bg_SetBitmapPixel
	.globl	bg_GetBitmapPixel
	.type	bg_GetBitmapPixel, @function
bg_GetBitmapPixel:
.LFB16:
	.loc 1 185 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	.loc 1 186 15
	movq	-8(%rbp), %rax
	movl	96(%rax), %eax
	.loc 1 186 6
	cmpl	%eax, -12(%rbp)
	jl	.L47
	.loc 1 187 12
	movl	$0, %eax
	jmp	.L48
.L47:
	.loc 1 189 15
	movq	-8(%rbp), %rax
	movl	100(%rax), %eax
	.loc 1 189 6
	cmpl	%eax, -16(%rbp)
	jl	.L49
	.loc 1 190 12
	movl	$0, %eax
	jmp	.L48
.L49:
	.loc 1 191 6
	cmpl	$0, -12(%rbp)
	jns	.L50
	.loc 1 192 12
	movl	$0, %eax
	jmp	.L48
.L50:
	.loc 1 193 6
	cmpl	$0, -16(%rbp)
	jns	.L51
	.loc 1 194 12
	movl	$0, %eax
	jmp	.L48
.L51:
	.loc 1 196 12
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdx
	.loc 1 196 30
	movq	-8(%rbp), %rax
	movl	96(%rax), %eax
	.loc 1 196 27
	imull	-16(%rbp), %eax
	movl	%eax, %ecx
	.loc 1 196 45
	movl	-12(%rbp), %eax
	addl	%ecx, %eax
	cltq
	.loc 1 196 25
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
.L48:
	.loc 1 197 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	bg_GetBitmapPixel, .-bg_GetBitmapPixel
	.globl	bg_GetBBXPixel
	.type	bg_GetBBXPixel, @function
bg_GetBBXPixel:
.LFB17:
	.loc 1 204 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	.loc 1 212 10
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	.loc 1 212 5
	movl	%eax, %edx
	movl	-60(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -60(%rbp)
	.loc 1 215 12
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -48(%rbp)
	.loc 1 216 12
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 1 217 21
	movq	-56(%rbp), %rax
	movq	56(%rax), %rdx
	.loc 1 217 31
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	.loc 1 217 12
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	.loc 1 218 21
	movq	-56(%rbp), %rax
	movq	64(%rax), %rdx
	.loc 1 218 31
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	.loc 1 218 12
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	.loc 1 220 10
	movl	-60(%rbp), %eax
	cltq
	.loc 1 220 6
	cmpq	%rax, -48(%rbp)
	jle	.L53
	.loc 1 221 12
	movl	$0, %eax
	jmp	.L54
.L53:
	.loc 1 222 10
	movl	-60(%rbp), %eax
	cltq
	.loc 1 222 6
	cmpq	%rax, -32(%rbp)
	jg	.L55
	.loc 1 223 12
	movl	$0, %eax
	jmp	.L54
.L55:
	.loc 1 225 10
	movl	-64(%rbp), %eax
	cltq
	.loc 1 225 6
	cmpq	%rax, -40(%rbp)
	jle	.L56
	.loc 1 226 12
	movl	$0, %eax
	jmp	.L54
.L56:
	.loc 1 227 10
	movl	-64(%rbp), %eax
	cltq
	.loc 1 227 6
	cmpq	%rax, -24(%rbp)
	jg	.L57
	.loc 1 228 12
	movl	$0, %eax
	jmp	.L54
.L57:
	.loc 1 230 16
	movl	-60(%rbp), %eax
	cltq
	.loc 1 230 12
	subq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 1 231 21
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	.loc 1 231 24
	leaq	-1(%rax), %rdx
	.loc 1 231 34
	movl	-64(%rbp), %eax
	cltq
	subq	-40(%rbp), %rax
	.loc 1 231 12
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 1 233 10
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bg_GetBitmapPixel
.L54:
	.loc 1 235 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	bg_GetBBXPixel, .-bg_GetBBXPixel
	.section	.rodata
	.align 8
.LC10:
	.string	"Encoding %ld, mapped to %ld, w=%ld, h=%ld, x=%ld, y=%ld\n"
.LC11:
	.string	"%03d "
.LC12:
	.string	" ."
.LC13:
	.string	" #"
	.text
	.globl	bg_ShowBitmap
	.type	bg_ShowBitmap, @function
bg_ShowBitmap:
.LFB18:
	.loc 1 239 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 242 6
	cmpq	$0, -32(%rbp)
	jne	.L59
	.loc 1 243 9
	movq	-24(%rbp), %rax
	addq	$40, %rax
	movq	%rax, -32(%rbp)
.L59:
	.loc 1 245 3
	movq	-24(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	56(%rax), %r8
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	subq	$8, %rsp
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$16, %rsp
	.loc 1 246 15
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 246 18
	movl	%eax, %edx
	.loc 1 246 22
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 246 18
	addl	%edx, %eax
	.loc 1 246 25
	subl	$1, %eax
	.loc 1 246 10
	movl	%eax, -4(%rbp)
	.loc 1 246 3
	jmp	.L60
.L65:
	.loc 1 248 5
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC11(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 249 17
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 249 12
	movl	%eax, -8(%rbp)
	.loc 1 249 5
	jmp	.L61
.L64:
	.loc 1 251 12
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bg_GetBBXPixel
	.loc 1 251 10
	testl	%eax, %eax
	jne	.L62
	.loc 1 253 2
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L63
.L62:
	.loc 1 257 2
	leaq	.LC13(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L63:
	.loc 1 249 44 discriminator 2
	addl	$1, -8(%rbp)
.L61:
	.loc 1 249 24 discriminator 1
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 249 29 discriminator 1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rcx
	.loc 1 249 38 discriminator 1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 249 33 discriminator 1
	addq	%rcx, %rax
	.loc 1 249 5 discriminator 1
	cmpq	%rax, %rdx
	jl	.L64
	.loc 1 261 5 discriminator 2
	movl	$10, %edi
	call	putchar@PLT
	.loc 1 246 43 discriminator 2
	subl	$1, -4(%rbp)
.L60:
	.loc 1 246 31 discriminator 1
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 246 37 discriminator 1
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 246 3 discriminator 1
	cmpq	%rax, %rdx
	jge	.L65
	.loc 1 263 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	bg_ShowBitmap, .-bg_ShowBitmap
	.globl	bg_IsColZero
	.type	bg_IsColZero, @function
bg_IsColZero:
.LFB19:
	.loc 1 266 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	.loc 1 268 10
	movl	$0, -4(%rbp)
	.loc 1 268 3
	jmp	.L67
.L70:
	.loc 1 270 10
	movl	-4(%rbp), %edx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bg_GetBitmapPixel
	.loc 1 270 8
	testl	%eax, %eax
	je	.L68
	.loc 1 271 14
	movl	$0, %eax
	jmp	.L69
.L68:
	.loc 1 268 39 discriminator 2
	addl	$1, -4(%rbp)
.L67:
	.loc 1 268 21 discriminator 1
	movq	-24(%rbp), %rax
	movl	100(%rax), %eax
	.loc 1 268 3 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L70
	.loc 1 273 10
	movl	$1, %eax
.L69:
	.loc 1 274 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	bg_IsColZero, .-bg_IsColZero
	.globl	bg_IsRowZero
	.type	bg_IsRowZero, @function
bg_IsRowZero:
.LFB20:
	.loc 1 277 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	.loc 1 279 10
	movl	$0, -4(%rbp)
	.loc 1 279 3
	jmp	.L72
.L75:
	.loc 1 281 10
	movl	-28(%rbp), %edx
	movl	-4(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bg_GetBitmapPixel
	.loc 1 281 8
	testl	%eax, %eax
	je	.L73
	.loc 1 282 14
	movl	$0, %eax
	jmp	.L74
.L73:
	.loc 1 279 38 discriminator 2
	addl	$1, -4(%rbp)
.L72:
	.loc 1 279 21 discriminator 1
	movq	-24(%rbp), %rax
	movl	96(%rax), %eax
	.loc 1 279 3 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L75
	.loc 1 284 10
	movl	$1, %eax
.L74:
	.loc 1 285 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	bg_IsRowZero, .-bg_IsRowZero
	.globl	bg_DeleteFirstCol
	.type	bg_DeleteFirstCol, @function
bg_DeleteFirstCol:
.LFB21:
	.loc 1 288 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 290 10
	movl	$0, -4(%rbp)
	.loc 1 290 3
	jmp	.L77
.L80:
	.loc 1 291 12
	movl	$0, -8(%rbp)
	.loc 1 291 5
	jmp	.L78
.L79:
	.loc 1 293 7 discriminator 3
	movl	-8(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bg_GetBitmapPixel
	movl	%eax, %ecx
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	bg_SetBitmapPixel
	.loc 1 291 42 discriminator 3
	addl	$1, -8(%rbp)
.L78:
	.loc 1 291 18 discriminator 1
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	.loc 1 291 25 discriminator 1
	movq	-24(%rbp), %rax
	movl	96(%rax), %eax
	.loc 1 291 5 discriminator 1
	cmpl	%eax, %edx
	jl	.L79
	.loc 1 290 39 discriminator 2
	addl	$1, -4(%rbp)
.L77:
	.loc 1 290 21 discriminator 1
	movq	-24(%rbp), %rax
	movl	100(%rax), %eax
	.loc 1 290 3 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L80
	.loc 1 295 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	bg_DeleteFirstCol, .-bg_DeleteFirstCol
	.globl	bg_DeleteFirstRow
	.type	bg_DeleteFirstRow, @function
bg_DeleteFirstRow:
.LFB22:
	.loc 1 298 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 300 10
	movl	$0, -4(%rbp)
	.loc 1 300 3
	jmp	.L82
.L85:
	.loc 1 301 12
	movl	$0, -8(%rbp)
	.loc 1 301 5
	jmp	.L83
.L84:
	.loc 1 303 7 discriminator 3
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	-8(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bg_GetBitmapPixel
	movl	%eax, %ecx
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	bg_SetBitmapPixel
	.loc 1 301 40 discriminator 3
	addl	$1, -8(%rbp)
.L83:
	.loc 1 301 23 discriminator 1
	movq	-24(%rbp), %rax
	movl	96(%rax), %eax
	.loc 1 301 5 discriminator 1
	cmpl	%eax, -8(%rbp)
	jl	.L84
	.loc 1 300 41 discriminator 2
	addl	$1, -4(%rbp)
.L82:
	.loc 1 300 16 discriminator 1
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	.loc 1 300 23 discriminator 1
	movq	-24(%rbp), %rax
	movl	100(%rax), %eax
	.loc 1 300 3 discriminator 1
	cmpl	%eax, %edx
	jl	.L85
	.loc 1 305 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	bg_DeleteFirstRow, .-bg_DeleteFirstRow
	.globl	bg_ReduceGlyph
	.type	bg_ReduceGlyph, @function
bg_ReduceGlyph:
.LFB23:
	.loc 1 308 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 319 8
	jmp	.L87
.L90:
	.loc 1 321 34
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	.loc 1 321 36
	subl	$1, %eax
	.loc 1 321 10
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bg_IsColZero
	.loc 1 321 8
	testl	%eax, %eax
	je	.L103
	.loc 1 323 12
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	.loc 1 323 14
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
.L87:
	.loc 1 319 17
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	.loc 1 319 8
	testq	%rax, %rax
	jg	.L90
	jmp	.L91
.L103:
	.loc 1 322 7
	nop
	.loc 1 326 8
	jmp	.L91
.L94:
	.loc 1 328 34
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	.loc 1 328 36
	subl	$1, %eax
	.loc 1 328 10
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bg_IsRowZero
	.loc 1 328 8
	testl	%eax, %eax
	je	.L104
	.loc 1 330 12
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	.loc 1 330 14
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 64(%rax)
	.loc 1 331 12
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	.loc 1 331 14
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
.L91:
	.loc 1 326 17
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	.loc 1 326 8
	testq	%rax, %rax
	jg	.L94
	jmp	.L95
.L104:
	.loc 1 329 7
	nop
	.loc 1 334 8
	jmp	.L95
.L98:
	.loc 1 336 10
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	bg_IsColZero
	.loc 1 336 8
	testl	%eax, %eax
	je	.L105
	.loc 1 338 5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	bg_DeleteFirstCol
	.loc 1 339 12
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	.loc 1 339 14
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 56(%rax)
	.loc 1 340 12
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	.loc 1 340 14
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
.L95:
	.loc 1 334 17
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	.loc 1 334 8
	testq	%rax, %rax
	jg	.L98
	jmp	.L99
.L105:
	.loc 1 337 7
	nop
	.loc 1 343 8
	jmp	.L99
.L102:
	.loc 1 345 10
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	bg_IsRowZero
	.loc 1 345 8
	testl	%eax, %eax
	je	.L106
	.loc 1 347 5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	bg_DeleteFirstRow
	.loc 1 348 12
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	.loc 1 348 14
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
.L99:
	.loc 1 343 17
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	.loc 1 343 8
	testq	%rax, %rax
	jg	.L102
	.loc 1 371 1
	jmp	.L107
.L106:
	.loc 1 346 7
	nop
.L107:
	.loc 1 371 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	bg_ReduceGlyph, .-bg_ReduceGlyph
	.globl	bg_Max
	.type	bg_Max, @function
bg_Max:
.LFB24:
	.loc 1 377 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	.loc 1 378 7
	movl	$0, -68(%rbp)
	.loc 1 390 12
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -32(%rbp)
	.loc 1 391 12
	movq	-88(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 392 21
	movq	-88(%rbp), %rax
	movq	56(%rax), %rdx
	.loc 1 392 31
	movq	-88(%rbp), %rax
	movq	40(%rax), %rax
	.loc 1 392 12
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 1 393 21
	movq	-88(%rbp), %rax
	movq	64(%rax), %rdx
	.loc 1 393 31
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	.loc 1 393 12
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 1 396 10
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	.loc 1 397 10
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	.loc 1 398 15
	movq	-96(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 1 398 22
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 398 10
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	.loc 1 399 15
	movq	-96(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 1 399 22
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 399 10
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	.loc 1 402 6
	movq	-64(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jle	.L109
	.loc 1 404 12
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	.loc 1 405 7
	movl	$3, -68(%rbp)
.L109:
	.loc 1 408 19
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 408 6
	cmpq	%rax, -64(%rbp)
	jle	.L110
	.loc 1 410 12
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)
	.loc 1 411 7
	movl	$3, -68(%rbp)
.L110:
	.loc 1 415 6
	movq	-56(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	.L111
	.loc 1 417 7
	movl	$1, -68(%rbp)
	.loc 1 418 12
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
.L111:
	.loc 1 421 6
	movq	-48(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jle	.L112
	.loc 1 423 7
	movl	$4, -68(%rbp)
	.loc 1 424 12
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
.L112:
	.loc 1 426 6
	movq	-40(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jge	.L113
	.loc 1 428 7
	movl	$2, -68(%rbp)
	.loc 1 429 12
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
.L113:
	.loc 1 433 10
	movq	-96(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 16(%rax)
	.loc 1 434 10
	movq	-96(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 24(%rax)
	.loc 1 435 24
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 435 19
	movq	-56(%rbp), %rdx
	subq	%rax, %rdx
	.loc 1 435 10
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 1 436 24
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 436 19
	movq	-40(%rbp), %rdx
	subq	%rax, %rdx
	.loc 1 436 10
	movq	-96(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 438 10
	movl	-68(%rbp), %eax
	.loc 1 439 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	bg_Max, .-bg_Max
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.3169, @object
	.size	__PRETTY_FUNCTION__.3169, 17
__PRETTY_FUNCTION__.3169:
	.string	"bg_AddTargetBits"
	.data
	.align 8
	.type	last_encoding.3194, @object
	.size	last_encoding.3194, 8
last_encoding.3194:
	.quad	4294967295
	.align 8
	.type	biggest_x.3195, @object
	.size	biggest_x.3195, 8
biggest_x.3195:
	.quad	-1
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.3196, @object
	.size	__PRETTY_FUNCTION__.3196, 18
__PRETTY_FUNCTION__.3196:
	.string	"bg_SetBitmapPixel"
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 9 "bdf_glyph.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xb41
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF116
	.byte	0xc
	.long	.LASF117
	.long	.LASF118
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd1
	.byte	0x17
	.long	0x39
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x26
	.byte	0x17
	.long	0x5c
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.long	.LASF10
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x4e
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x4e
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0xa4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x7
	.long	0xa4
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x8
	.long	.LASF56
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x23e
	.uleb128 0x9
	.long	.LASF14
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x40
	.byte	0
	.uleb128 0x9
	.long	.LASF15
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0x9e
	.byte	0x8
	.uleb128 0x9
	.long	.LASF16
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0x9e
	.byte	0x10
	.uleb128 0x9
	.long	.LASF17
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0x9e
	.byte	0x18
	.uleb128 0x9
	.long	.LASF18
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0x9e
	.byte	0x20
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0x9e
	.byte	0x28
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0x9e
	.byte	0x30
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0x9e
	.byte	0x38
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0x9e
	.byte	0x40
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0x9e
	.byte	0x48
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0x9e
	.byte	0x50
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0x9e
	.byte	0x58
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x257
	.byte	0x60
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x25d
	.byte	0x68
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x40
	.byte	0x70
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x40
	.byte	0x74
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0x84
	.byte	0x78
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x63
	.byte	0x80
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x6a
	.byte	0x82
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x263
	.byte	0x83
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x273
	.byte	0x88
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0x90
	.byte	0x90
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x27e
	.byte	0x98
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x289
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x25d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0x9c
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF41
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x40
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF42
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x28f
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF43
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xb7
	.uleb128 0xa
	.long	.LASF119
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0xb
	.long	.LASF44
	.uleb128 0x6
	.byte	0x8
	.long	0x252
	.uleb128 0x6
	.byte	0x8
	.long	0xb7
	.uleb128 0xc
	.long	0xa4
	.long	0x273
	.uleb128 0xd
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x24a
	.uleb128 0xb
	.long	.LASF45
	.uleb128 0x6
	.byte	0x8
	.long	0x279
	.uleb128 0xb
	.long	.LASF46
	.uleb128 0x6
	.byte	0x8
	.long	0x284
	.uleb128 0xc
	.long	0xa4
	.long	0x29f
	.uleb128 0xd
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.long	.LASF47
	.byte	0x6
	.byte	0x89
	.byte	0xe
	.long	0x2ab
	.uleb128 0x6
	.byte	0x8
	.long	0x23e
	.uleb128 0xe
	.long	.LASF48
	.byte	0x6
	.byte	0x8a
	.byte	0xe
	.long	0x2ab
	.uleb128 0xe
	.long	.LASF49
	.byte	0x6
	.byte	0x8b
	.byte	0xe
	.long	0x2ab
	.uleb128 0xe
	.long	.LASF50
	.byte	0x7
	.byte	0x1a
	.byte	0xc
	.long	0x40
	.uleb128 0xc
	.long	0x2eb
	.long	0x2e0
	.uleb128 0xf
	.byte	0
	.uleb128 0x7
	.long	0x2d5
	.uleb128 0x6
	.byte	0x8
	.long	0xab
	.uleb128 0x7
	.long	0x2e5
	.uleb128 0xe
	.long	.LASF51
	.byte	0x7
	.byte	0x1b
	.byte	0x1a
	.long	0x2e0
	.uleb128 0x2
	.long	.LASF52
	.byte	0x8
	.byte	0x18
	.byte	0x13
	.long	0x71
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
	.uleb128 0xb
	.long	.LASF55
	.uleb128 0x8
	.long	.LASF57
	.byte	0x20
	.byte	0x9
	.byte	0xc
	.byte	0x8
	.long	0x35a
	.uleb128 0x10
	.string	"w"
	.byte	0x9
	.byte	0xe
	.byte	0x8
	.long	0x4e
	.byte	0
	.uleb128 0x10
	.string	"h"
	.byte	0x9
	.byte	0xf
	.byte	0x8
	.long	0x4e
	.byte	0x8
	.uleb128 0x10
	.string	"x"
	.byte	0x9
	.byte	0x10
	.byte	0x8
	.long	0x4e
	.byte	0x10
	.uleb128 0x10
	.string	"y"
	.byte	0x9
	.byte	0x11
	.byte	0x8
	.long	0x4e
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.long	.LASF58
	.byte	0x9
	.byte	0x13
	.byte	0x1c
	.long	0x320
	.uleb128 0x8
	.long	.LASF59
	.byte	0xa0
	.byte	0x9
	.byte	0x16
	.byte	0x8
	.long	0x491
	.uleb128 0x10
	.string	"bf"
	.byte	0x9
	.byte	0x18
	.byte	0x9
	.long	0x491
	.byte	0
	.uleb128 0x9
	.long	.LASF60
	.byte	0x9
	.byte	0x1a
	.byte	0x8
	.long	0x4e
	.byte	0x8
	.uleb128 0x9
	.long	.LASF61
	.byte	0x9
	.byte	0x1b
	.byte	0x8
	.long	0x4e
	.byte	0x10
	.uleb128 0x9
	.long	.LASF62
	.byte	0x9
	.byte	0x1d
	.byte	0x8
	.long	0x4e
	.byte	0x18
	.uleb128 0x9
	.long	.LASF63
	.byte	0x9
	.byte	0x1e
	.byte	0x8
	.long	0x4e
	.byte	0x20
	.uleb128 0x10
	.string	"bbx"
	.byte	0x9
	.byte	0x20
	.byte	0x9
	.long	0x35a
	.byte	0x28
	.uleb128 0x9
	.long	.LASF64
	.byte	0x9
	.byte	0x21
	.byte	0x8
	.long	0x4e
	.byte	0x48
	.uleb128 0x9
	.long	.LASF65
	.byte	0x9
	.byte	0x22
	.byte	0x7
	.long	0x40
	.byte	0x50
	.uleb128 0x9
	.long	.LASF66
	.byte	0x9
	.byte	0x24
	.byte	0xc
	.long	0x497
	.byte	0x58
	.uleb128 0x9
	.long	.LASF67
	.byte	0x9
	.byte	0x25
	.byte	0x7
	.long	0x40
	.byte	0x60
	.uleb128 0x9
	.long	.LASF68
	.byte	0x9
	.byte	0x26
	.byte	0x7
	.long	0x40
	.byte	0x64
	.uleb128 0x9
	.long	.LASF69
	.byte	0x9
	.byte	0x2b
	.byte	0xc
	.long	0x497
	.byte	0x68
	.uleb128 0x9
	.long	.LASF70
	.byte	0x9
	.byte	0x2c
	.byte	0x7
	.long	0x40
	.byte	0x70
	.uleb128 0x9
	.long	.LASF71
	.byte	0x9
	.byte	0x2d
	.byte	0x7
	.long	0x40
	.byte	0x74
	.uleb128 0x9
	.long	.LASF72
	.byte	0x9
	.byte	0x2e
	.byte	0x7
	.long	0x40
	.byte	0x78
	.uleb128 0x9
	.long	.LASF73
	.byte	0x9
	.byte	0x32
	.byte	0xc
	.long	0x47
	.byte	0x7c
	.uleb128 0x9
	.long	.LASF74
	.byte	0x9
	.byte	0x33
	.byte	0xc
	.long	0x47
	.byte	0x80
	.uleb128 0x9
	.long	.LASF75
	.byte	0x9
	.byte	0x35
	.byte	0x7
	.long	0x40
	.byte	0x84
	.uleb128 0x9
	.long	.LASF76
	.byte	0x9
	.byte	0x36
	.byte	0xc
	.long	0x47
	.byte	0x88
	.uleb128 0x9
	.long	.LASF77
	.byte	0x9
	.byte	0x37
	.byte	0xc
	.long	0x47
	.byte	0x8c
	.uleb128 0x9
	.long	.LASF78
	.byte	0x9
	.byte	0x38
	.byte	0xc
	.long	0x47
	.byte	0x90
	.uleb128 0x9
	.long	.LASF79
	.byte	0x9
	.byte	0x3a
	.byte	0x8
	.long	0x4e
	.byte	0x98
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x30f
	.uleb128 0x6
	.byte	0x8
	.long	0x2fc
	.uleb128 0x2
	.long	.LASF80
	.byte	0x9
	.byte	0x3d
	.byte	0x22
	.long	0x366
	.uleb128 0x11
	.long	.LASF92
	.byte	0x1
	.value	0x178
	.byte	0x5
	.long	0x40
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x57f
	.uleb128 0x12
	.string	"bg"
	.byte	0x1
	.value	0x178
	.byte	0x12
	.long	0x57f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x12
	.string	"max"
	.byte	0x1
	.value	0x178
	.byte	0x1d
	.long	0x585
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x13
	.string	"r"
	.byte	0x1
	.value	0x17a
	.byte	0x7
	.long	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x14
	.long	.LASF81
	.byte	0x1
	.value	0x17d
	.byte	0x8
	.long	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.long	.LASF82
	.byte	0x1
	.value	0x17d
	.byte	0x12
	.long	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.long	.LASF83
	.byte	0x1
	.value	0x17d
	.byte	0x1c
	.long	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.long	.LASF84
	.byte	0x1
	.value	0x17d
	.byte	0x26
	.long	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.long	.LASF85
	.byte	0x1
	.value	0x180
	.byte	0x8
	.long	0x4e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x14
	.long	.LASF86
	.byte	0x1
	.value	0x180
	.byte	0x10
	.long	0x4e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x14
	.long	.LASF87
	.byte	0x1
	.value	0x180
	.byte	0x18
	.long	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.long	.LASF88
	.byte	0x1
	.value	0x180
	.byte	0x20
	.long	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x49d
	.uleb128 0x6
	.byte	0x8
	.long	0x35a
	.uleb128 0x15
	.long	.LASF89
	.byte	0x1
	.value	0x133
	.byte	0x6
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ba
	.uleb128 0x12
	.string	"bg"
	.byte	0x1
	.value	0x133
	.byte	0x1b
	.long	0x57f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.long	.LASF90
	.byte	0x1
	.value	0x129
	.byte	0x6
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x605
	.uleb128 0x12
	.string	"bg"
	.byte	0x1
	.value	0x129
	.byte	0x1e
	.long	0x57f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"x"
	.byte	0x1
	.value	0x12b
	.byte	0x7
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.string	"y"
	.byte	0x1
	.value	0x12b
	.byte	0x9
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.long	.LASF91
	.byte	0x1
	.value	0x11f
	.byte	0x6
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x650
	.uleb128 0x12
	.string	"bg"
	.byte	0x1
	.value	0x11f
	.byte	0x1e
	.long	0x57f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"x"
	.byte	0x1
	.value	0x121
	.byte	0x7
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.string	"y"
	.byte	0x1
	.value	0x121
	.byte	0x9
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.long	.LASF93
	.byte	0x1
	.value	0x114
	.byte	0x5
	.long	0x40
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x69f
	.uleb128 0x12
	.string	"bg"
	.byte	0x1
	.value	0x114
	.byte	0x18
	.long	0x57f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.string	"y"
	.byte	0x1
	.value	0x114
	.byte	0x20
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.string	"x"
	.byte	0x1
	.value	0x116
	.byte	0x7
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.long	.LASF94
	.byte	0x1
	.value	0x109
	.byte	0x5
	.long	0x40
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x6ee
	.uleb128 0x12
	.string	"bg"
	.byte	0x1
	.value	0x109
	.byte	0x18
	.long	0x57f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.string	"x"
	.byte	0x1
	.value	0x109
	.byte	0x20
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.string	"y"
	.byte	0x1
	.value	0x10b
	.byte	0x7
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.long	.LASF95
	.byte	0x1
	.byte	0xee
	.byte	0x6
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x744
	.uleb128 0x18
	.string	"bg"
	.byte	0x1
	.byte	0xee
	.byte	0x1a
	.long	0x57f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"bbx"
	.byte	0x1
	.byte	0xee
	.byte	0x25
	.long	0x585
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.string	"x"
	.byte	0x1
	.byte	0xf0
	.byte	0x7
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.string	"y"
	.byte	0x1
	.byte	0xf0
	.byte	0xa
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.long	.LASF96
	.byte	0x1
	.byte	0xcb
	.byte	0x5
	.long	0x40
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x7ec
	.uleb128 0x18
	.string	"bg"
	.byte	0x1
	.byte	0xcb
	.byte	0x1a
	.long	0x57f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.string	"x"
	.byte	0x1
	.byte	0xcb
	.byte	0x22
	.long	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x18
	.string	"y"
	.byte	0x1
	.byte	0xcb
	.byte	0x29
	.long	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1b
	.long	.LASF81
	.byte	0x1
	.byte	0xce
	.byte	0x8
	.long	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.long	.LASF82
	.byte	0x1
	.byte	0xce
	.byte	0x12
	.long	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.long	.LASF83
	.byte	0x1
	.byte	0xce
	.byte	0x1c
	.long	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.long	.LASF84
	.byte	0x1
	.byte	0xce
	.byte	0x26
	.long	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.long	.LASF97
	.byte	0x1
	.byte	0xd1
	.byte	0x8
	.long	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.long	.LASF98
	.byte	0x1
	.byte	0xd1
	.byte	0x12
	.long	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.long	.LASF99
	.byte	0x1
	.byte	0xb8
	.byte	0x5
	.long	0x40
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x837
	.uleb128 0x18
	.string	"bg"
	.byte	0x1
	.byte	0xb8
	.byte	0x1d
	.long	0x57f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"x"
	.byte	0x1
	.byte	0xb8
	.byte	0x25
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.string	"y"
	.byte	0x1
	.byte	0xb8
	.byte	0x2c
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x17
	.long	.LASF100
	.byte	0x1
	.byte	0x97
	.byte	0x6
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x8cc
	.uleb128 0x18
	.string	"bg"
	.byte	0x1
	.byte	0x97
	.byte	0x1e
	.long	0x57f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"x"
	.byte	0x1
	.byte	0x97
	.byte	0x26
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.string	"y"
	.byte	0x1
	.byte	0x97
	.byte	0x2d
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.long	.LASF101
	.byte	0x1
	.byte	0x97
	.byte	0x34
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.long	.LASF102
	.byte	0x1
	.byte	0x99
	.byte	0xf
	.long	0x4e
	.uleb128 0x9
	.byte	0x3
	.quad	last_encoding.3194
	.uleb128 0x1b
	.long	.LASF103
	.byte	0x1
	.byte	0x9a
	.byte	0xf
	.long	0x4e
	.uleb128 0x9
	.byte	0x3
	.quad	biggest_x.3195
	.uleb128 0x1e
	.long	.LASF109
	.long	0x8dc
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.3196
	.byte	0
	.uleb128 0xc
	.long	0xab
	.long	0x8dc
	.uleb128 0xd
	.long	0x39
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.long	0x8cc
	.uleb128 0x1a
	.long	.LASF104
	.byte	0x1
	.byte	0x92
	.byte	0x5
	.long	0x40
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x92c
	.uleb128 0x18
	.string	"bg"
	.byte	0x1
	.byte	0x92
	.byte	0x1c
	.long	0x57f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"w"
	.byte	0x1
	.byte	0x92
	.byte	0x24
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.string	"h"
	.byte	0x1
	.byte	0x92
	.byte	0x2b
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1a
	.long	.LASF105
	.byte	0x1
	.byte	0x87
	.byte	0x5
	.long	0x40
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x96c
	.uleb128 0x18
	.string	"bg"
	.byte	0x1
	.byte	0x87
	.byte	0x23
	.long	0x57f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.long	.LASF106
	.byte	0x1
	.byte	0x87
	.byte	0x2e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1a
	.long	.LASF107
	.byte	0x1
	.byte	0x7e
	.byte	0x5
	.long	0x40
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x99d
	.uleb128 0x18
	.string	"bg"
	.byte	0x1
	.byte	0x7e
	.byte	0x1e
	.long	0x57f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.long	.LASF108
	.byte	0x1
	.byte	0x61
	.byte	0x5
	.long	0x40
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x9ff
	.uleb128 0x18
	.string	"bg"
	.byte	0x1
	.byte	0x61
	.byte	0x1c
	.long	0x57f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"cnt"
	.byte	0x1
	.byte	0x61
	.byte	0x29
	.long	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.string	"val"
	.byte	0x1
	.byte	0x61
	.byte	0x37
	.long	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF109
	.long	0xa0f
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.3169
	.byte	0
	.uleb128 0xc
	.long	0xab
	.long	0xa0f
	.uleb128 0xd
	.long	0x39
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	0x9ff
	.uleb128 0x1f
	.long	.LASF110
	.byte	0x1
	.byte	0x50
	.byte	0x6
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xa4e
	.uleb128 0x18
	.string	"bg"
	.byte	0x1
	.byte	0x50
	.byte	0x1f
	.long	0x57f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x52
	.byte	0x7
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.long	.LASF111
	.byte	0x1
	.byte	0x46
	.byte	0x5
	.long	0x40
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xa8e
	.uleb128 0x18
	.string	"bg"
	.byte	0x1
	.byte	0x46
	.byte	0x1c
	.long	0x57f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.long	.LASF112
	.byte	0x1
	.byte	0x46
	.byte	0x28
	.long	0x2fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x20
	.long	.LASF120
	.byte	0x1
	.byte	0x2f
	.byte	0xc
	.long	0x40
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xaea
	.uleb128 0x18
	.string	"bg"
	.byte	0x1
	.byte	0x2f
	.byte	0x28
	.long	0x57f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.long	.LASF113
	.byte	0x1
	.byte	0x31
	.byte	0x7
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x32
	.byte	0x7
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.string	"ptr"
	.byte	0x1
	.byte	0x33
	.byte	0x9
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.long	.LASF114
	.byte	0x1
	.byte	0x20
	.byte	0x6
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xb17
	.uleb128 0x18
	.string	"bg"
	.byte	0x1
	.byte	0x20
	.byte	0x15
	.long	0x57f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x21
	.long	.LASF115
	.byte	0x1
	.byte	0xa
	.byte	0x7
	.long	0x57f
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.string	"bg"
	.byte	0x1
	.byte	0xc
	.byte	0x9
	.long	0x57f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
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
	.uleb128 0x5
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x5
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
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
.LASF33:
	.string	"_shortbuf"
.LASF119:
	.string	"_IO_lock_t"
.LASF49:
	.string	"stderr"
.LASF22:
	.string	"_IO_buf_end"
.LASF59:
	.string	"_bdf_glyph_struct"
.LASF55:
	.string	"_bdf_font_struct"
.LASF61:
	.string	"map_to"
.LASF20:
	.string	"_IO_write_end"
.LASF1:
	.string	"unsigned int"
.LASF113:
	.string	"extend"
.LASF38:
	.string	"_freeres_list"
.LASF14:
	.string	"_flags"
.LASF89:
	.string	"bg_ReduceGlyph"
.LASF26:
	.string	"_markers"
.LASF69:
	.string	"target_data"
.LASF77:
	.string	"rle_last_0"
.LASF78:
	.string	"rle_last_1"
.LASF115:
	.string	"bg_Open"
.LASF64:
	.string	"shift_x"
.LASF76:
	.string	"rle_bitcnt"
.LASF57:
	.string	"_bbx_struct"
.LASF48:
	.string	"stdout"
.LASF25:
	.string	"_IO_save_end"
.LASF45:
	.string	"_IO_codecvt"
.LASF111:
	.string	"bg_AddTargetData"
.LASF66:
	.string	"bitmap_data"
.LASF13:
	.string	"long long unsigned int"
.LASF51:
	.string	"sys_errlist"
.LASF108:
	.string	"bg_AddTargetBits"
.LASF24:
	.string	"_IO_backup_base"
.LASF35:
	.string	"_offset"
.LASF58:
	.string	"bbx_t"
.LASF50:
	.string	"sys_nerr"
.LASF101:
	.string	"value"
.LASF28:
	.string	"_fileno"
.LASF80:
	.string	"bg_t"
.LASF120:
	.string	"bg_extend_target_data"
.LASF7:
	.string	"size_t"
.LASF17:
	.string	"_IO_read_base"
.LASF62:
	.string	"dwidth_x"
.LASF63:
	.string	"dwidth_y"
.LASF47:
	.string	"stdin"
.LASF106:
	.string	"bytes"
.LASF118:
	.string	"/home/step/u8g2-2.29.11/tools/font/bdfconv"
.LASF75:
	.string	"rle_is_first"
.LASF12:
	.string	"char"
.LASF41:
	.string	"_mode"
.LASF94:
	.string	"bg_IsColZero"
.LASF60:
	.string	"encoding"
.LASF90:
	.string	"bg_DeleteFirstRow"
.LASF44:
	.string	"_IO_marker"
.LASF15:
	.string	"_IO_read_ptr"
.LASF112:
	.string	"data"
.LASF52:
	.string	"uint8_t"
.LASF91:
	.string	"bg_DeleteFirstCol"
.LASF18:
	.string	"_IO_write_base"
.LASF3:
	.string	"long long int"
.LASF23:
	.string	"_IO_save_base"
.LASF100:
	.string	"bg_SetBitmapPixel"
.LASF71:
	.string	"target_cnt"
.LASF105:
	.string	"bg_SetBitmapSizeInBytes"
.LASF85:
	.string	"max_x0"
.LASF86:
	.string	"max_x1"
.LASF102:
	.string	"last_encoding"
.LASF103:
	.string	"biggest_x"
.LASF39:
	.string	"_freeres_buf"
.LASF84:
	.string	"glyph_y1"
.LASF40:
	.string	"__pad5"
.LASF98:
	.string	"bitmap_y"
.LASF96:
	.string	"bg_GetBBXPixel"
.LASF72:
	.string	"target_bit_pos"
.LASF73:
	.string	"rle_bits_per_0"
.LASF74:
	.string	"rle_bits_per_1"
.LASF87:
	.string	"max_y0"
.LASF88:
	.string	"max_y1"
.LASF32:
	.string	"_vtable_offset"
.LASF53:
	.string	"long double"
.LASF70:
	.string	"target_max"
.LASF65:
	.string	"is_excluded_from_kerning"
.LASF16:
	.string	"_IO_read_end"
.LASF97:
	.string	"bitmap_x"
.LASF114:
	.string	"bg_Close"
.LASF9:
	.string	"short int"
.LASF2:
	.string	"long int"
.LASF46:
	.string	"_IO_wide_data"
.LASF79:
	.string	"width_deviation"
.LASF92:
	.string	"bg_Max"
.LASF95:
	.string	"bg_ShowBitmap"
.LASF99:
	.string	"bg_GetBitmapPixel"
.LASF8:
	.string	"__uint8_t"
.LASF116:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF37:
	.string	"_wide_data"
.LASF34:
	.string	"_lock"
.LASF0:
	.string	"long unsigned int"
.LASF30:
	.string	"_old_offset"
.LASF56:
	.string	"_IO_FILE"
.LASF107:
	.string	"bg_FlushTargetBits"
.LASF4:
	.string	"unsigned char"
.LASF67:
	.string	"bitmap_width"
.LASF81:
	.string	"glyph_x0"
.LASF82:
	.string	"glyph_x1"
.LASF19:
	.string	"_IO_write_ptr"
.LASF36:
	.string	"_codecvt"
.LASF10:
	.string	"__off_t"
.LASF83:
	.string	"glyph_y0"
.LASF6:
	.string	"signed char"
.LASF54:
	.string	"bf_t"
.LASF5:
	.string	"short unsigned int"
.LASF117:
	.string	"bdf_glyph.c"
.LASF109:
	.string	"__PRETTY_FUNCTION__"
.LASF93:
	.string	"bg_IsRowZero"
.LASF27:
	.string	"_chain"
.LASF43:
	.string	"FILE"
.LASF29:
	.string	"_flags2"
.LASF68:
	.string	"bitmap_height"
.LASF31:
	.string	"_cur_column"
.LASF104:
	.string	"bg_SetBitmapSize"
.LASF11:
	.string	"__off64_t"
.LASF110:
	.string	"bg_ClearTargetData"
.LASF42:
	.string	"_unused2"
.LASF21:
	.string	"_IO_buf_base"
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
