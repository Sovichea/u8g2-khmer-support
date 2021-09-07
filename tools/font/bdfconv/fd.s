	.file	"fd.c"
	.text
.Ltext0:
	.globl	fd_init
	.type	fd_init, @function
fd_init:
.LFB0:
	.file 1 "fd.c"
	.loc 1 16 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 1 17 22
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	.loc 1 18 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	fd_init, .-fd_init
	.globl	fd_set_font
	.type	fd_set_font, @function
fd_set_font:
.LFB1:
	.loc 1 21 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 22 26
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 1 22 21
	movzbl	(%rax), %edx
	.loc 1 22 19
	movq	-8(%rbp), %rax
	movb	%dl, 48(%rax)
	.loc 1 23 9
	addq	$1, -16(%rbp)
	.loc 1 24 27
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 1 24 22
	movzbl	(%rax), %edx
	.loc 1 24 20
	movq	-8(%rbp), %rax
	movb	%dl, 49(%rax)
	.loc 1 25 27
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 1 25 22
	movzbl	(%rax), %edx
	.loc 1 25 20
	movq	-8(%rbp), %rax
	movb	%dl, 50(%rax)
	.loc 1 26 36
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 1 26 31
	movzbl	(%rax), %edx
	.loc 1 26 29
	movq	-8(%rbp), %rax
	movb	%dl, 51(%rax)
	.loc 1 27 37
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 1 27 32
	movzbl	(%rax), %edx
	.loc 1 27 30
	movq	-8(%rbp), %rax
	movb	%dl, 52(%rax)
	.loc 1 28 32
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 1 28 27
	movzbl	(%rax), %edx
	.loc 1 28 25
	movq	-8(%rbp), %rax
	movb	%dl, 53(%rax)
	.loc 1 29 32
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 1 29 27
	movzbl	(%rax), %edx
	.loc 1 29 25
	movq	-8(%rbp), %rax
	movb	%dl, 54(%rax)
	.loc 1 30 33
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 1 30 28
	movzbl	(%rax), %edx
	.loc 1 30 26
	movq	-8(%rbp), %rax
	movb	%dl, 55(%rax)
	.loc 1 31 27
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 1 31 22
	movzbl	(%rax), %edx
	.loc 1 31 20
	movq	-8(%rbp), %rax
	movb	%dl, 56(%rax)
	.loc 1 32 28
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 1 32 23
	movzbl	(%rax), %edx
	.loc 1 32 21
	movq	-8(%rbp), %rax
	movb	%dl, 57(%rax)
	.loc 1 33 9
	addq	$1, -16(%rbp)
	.loc 1 34 24
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movl	%eax, %edx
	.loc 1 34 22
	movq	-8(%rbp), %rax
	movb	%dl, 58(%rax)
	.loc 1 35 9
	addq	$1, -16(%rbp)
	.loc 1 37 9
	addq	$1, -16(%rbp)
	.loc 1 38 9
	addq	$1, -16(%rbp)
	.loc 1 39 9
	addq	$1, -16(%rbp)
	.loc 1 40 9
	addq	$1, -16(%rbp)
	.loc 1 42 29
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 1 42 24
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	.loc 1 42 22
	movq	-8(%rbp), %rax
	movl	%edx, 60(%rax)
	.loc 1 43 23
	movq	-8(%rbp), %rax
	movl	60(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 60(%rax)
	.loc 1 44 31
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 1 44 26
	movzbl	(%rax), %ecx
	.loc 1 44 23
	movq	-8(%rbp), %rax
	movl	60(%rax), %edx
	.loc 1 44 26
	movzbl	%cl, %eax
	.loc 1 44 23
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 60(%rax)
	.loc 1 45 28
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 1 45 23
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	.loc 1 45 21
	movq	-8(%rbp), %rax
	movl	%edx, 64(%rax)
	.loc 1 46 21
	movq	-8(%rbp), %rax
	movl	64(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 64(%rax)
	.loc 1 47 29
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 1 47 24
	movzbl	(%rax), %ecx
	.loc 1 47 21
	movq	-8(%rbp), %rax
	movl	64(%rax), %edx
	.loc 1 47 24
	movzbl	%cl, %eax
	.loc 1 47 21
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 64(%rax)
	.loc 1 50 9
	addq	$1, -16(%rbp)
	.loc 1 51 9
	addq	$1, -16(%rbp)
	.loc 1 53 14
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 72(%rax)
	.loc 1 54 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	fd_set_font, .-fd_set_font
	.globl	fd_get_glyph_data
	.type	fd_get_glyph_data, @function
fd_get_glyph_data:
.LFB2:
	.loc 1 57 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movb	%al, -28(%rbp)
	.loc 1 59 12
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 60 6
	cmpb	$96, -28(%rbp)
	jbe	.L4
	.loc 1 62 15
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, %eax
	.loc 1 62 10
	addq	%rax, -8(%rbp)
	jmp	.L10
.L4:
	.loc 1 64 11
	cmpb	$64, -28(%rbp)
	jbe	.L10
	.loc 1 66 15
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, %eax
	.loc 1 66 10
	addq	%rax, -8(%rbp)
.L10:
	.loc 1 71 14
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 1 71 8
	testb	%al, %al
	je	.L12
	.loc 1 73 14
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 73 8
	cmpb	%al, -28(%rbp)
	jne	.L8
	.loc 1 75 14
	movq	-8(%rbp), %rax
	jmp	.L9
.L8:
	.loc 1 77 17
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 77 10
	addq	%rax, -8(%rbp)
	.loc 1 71 8
	jmp	.L10
.L12:
	.loc 1 72 7
	nop
	.loc 1 79 10
	movl	$0, %eax
.L9:
	.loc 1 80 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	fd_get_glyph_data, .-fd_get_glyph_data
	.globl	fd_get_unsigned_bits
	.type	fd_get_unsigned_bits, @function
fd_get_unsigned_bits:
.LFB3:
	.loc 1 83 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	.loc 1 85 12
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, -8(%rbp)
	.loc 1 88 7
	movq	-24(%rbp), %rax
	movl	44(%rax), %eax
	movl	%eax, -12(%rbp)
	.loc 1 89 12
	movl	$8, -4(%rbp)
	.loc 1 90 12
	movl	-8(%rbp), %eax
	subl	%eax, -4(%rbp)
	.loc 1 92 11
	movl	-28(%rbp), %eax
	addl	%eax, -8(%rbp)
	.loc 1 93 6
	movl	-28(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jb	.L14
	.loc 1 95 6
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	.loc 1 95 18
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 32(%rax)
	.loc 1 96 25
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	.loc 1 96 22
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	.loc 1 96 20
	movq	-24(%rbp), %rax
	movl	%edx, 44(%rax)
	.loc 1 98 13
	movq	-24(%rbp), %rax
	movl	44(%rax), %edx
	.loc 1 98 27
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	.loc 1 98 9
	orl	%eax, -12(%rbp)
	.loc 1 100 13
	subl	$8, -8(%rbp)
	.loc 1 101 20
	movq	-24(%rbp), %rax
	movl	44(%rax), %edx
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 44(%rax)
	jmp	.L15
.L14:
	.loc 1 105 20
	movq	-24(%rbp), %rax
	movl	44(%rax), %edx
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 44(%rax)
.L15:
	.loc 1 107 7
	movl	-28(%rbp), %eax
	movl	$-1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	notl	%eax
	andl	%eax, -12(%rbp)
	.loc 1 108 21
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 40(%rax)
	.loc 1 109 10
	movl	-12(%rbp), %eax
	.loc 1 110 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	fd_get_unsigned_bits, .-fd_get_unsigned_bits
	.globl	fd_get_signed_bits
	.type	fd_get_signed_bits, @function
fd_get_signed_bits:
.LFB4:
	.loc 1 113 1
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
	.loc 1 114 15
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	fd_get_unsigned_bits
	.loc 1 114 10
	movl	%eax, %edx
	.loc 1 114 50
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	.loc 1 114 56
	sarl	%eax
	.loc 1 114 45
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 1 115 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	fd_get_signed_bits, .-fd_get_signed_bits
	.globl	fd_draw_pixel
	.type	fd_draw_pixel, @function
fd_draw_pixel:
.LFB5:
	.loc 1 121 1
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
	.loc 1 122 9
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	.loc 1 122 6
	testl	%eax, %eax
	je	.L20
	.loc 1 122 31 discriminator 1
	cmpl	$0, -16(%rbp)
	je	.L22
.L20:
	.loc 1 124 37
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	.loc 1 124 49
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 124 3
	leal	(%rdx,%rax), %esi
	.loc 1 124 19
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 124 31
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	.loc 1 124 3
	leal	(%rdx,%rax), %edi
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	call	tga_draw_hline@PLT
	jmp	.L19
.L22:
	.loc 1 123 5
	nop
.L19:
	.loc 1 125 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	fd_draw_pixel, .-fd_draw_pixel
	.globl	fd_decode_len
	.type	fd_decode_len, @function
fd_decode_len:
.LFB6:
	.loc 1 128 1
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
	movl	%edx, -32(%rbp)
	.loc 1 130 7
	movl	-28(%rbp), %eax
	movl	%eax, -8(%rbp)
.L26:
	.loc 1 133 9
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -4(%rbp)
	.loc 1 134 14
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	.loc 1 134 9
	subl	%eax, -4(%rbp)
	.loc 1 135 8
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jb	.L28
	.loc 1 137 5
	movl	-32(%rbp), %edx
	movl	-4(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	fd_draw_pixel
	.loc 1 138 9
	movl	-4(%rbp), %eax
	subl	%eax, -8(%rbp)
	.loc 1 139 11
	movq	-24(%rbp), %rax
	movl	$0, 12(%rax)
	.loc 1 140 7
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 140 10
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 16(%rax)
	.loc 1 133 9
	jmp	.L26
.L28:
	.loc 1 136 7
	nop
	.loc 1 142 3
	movl	-32(%rbp), %edx
	movl	-8(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	fd_draw_pixel
	.loc 1 143 9
	movq	-24(%rbp), %rax
	movl	12(%rax), %edx
	movl	-8(%rbp), %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 12(%rax)
	.loc 1 144 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	fd_decode_len, .-fd_decode_len
	.globl	fd_decode
	.type	fd_decode, @function
fd_decode:
.LFB7:
	.loc 1 154 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 1 157 12
	movl	$0, -20(%rbp)
	.loc 1 159 21
	movq	-40(%rbp), %rax
	movl	$0, 40(%rax)
	.loc 1 161 17
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 32(%rax)
	.loc 1 162 17
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 32(%rax)
	.loc 1 164 23
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	.loc 1 164 20
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	.loc 1 164 18
	movq	-40(%rbp), %rax
	movl	%edx, 44(%rax)
	.loc 1 166 45
	movq	-40(%rbp), %rax
	movzbl	51(%rax), %eax
	.loc 1 166 20
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	fd_get_unsigned_bits
	.loc 1 166 18
	movq	-40(%rbp), %rdx
	movl	%eax, 20(%rdx)
	.loc 1 167 46
	movq	-40(%rbp), %rax
	movzbl	52(%rax), %eax
	.loc 1 167 21
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	fd_get_unsigned_bits
	.loc 1 167 19
	movq	-40(%rbp), %rdx
	movl	%eax, 24(%rdx)
	.loc 1 168 30
	movq	-40(%rbp), %rax
	movzbl	53(%rax), %eax
	.loc 1 168 7
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	fd_get_signed_bits
	movl	%eax, -16(%rbp)
	.loc 1 169 30
	movq	-40(%rbp), %rax
	movzbl	54(%rax), %eax
	.loc 1 169 7
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	fd_get_signed_bits
	movl	%eax, -12(%rbp)
	.loc 1 170 30
	movq	-40(%rbp), %rax
	movzbl	55(%rax), %eax
	.loc 1 170 7
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	fd_get_signed_bits
	.loc 1 170 5
	movl	%eax, -20(%rbp)
	.loc 1 172 9
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	.loc 1 172 6
	testl	%eax, %eax
	je	.L30
	.loc 1 175 17
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movl	-16(%rbp), %eax
	addl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 176 17
	movq	-40(%rbp), %rax
	movl	4(%rax), %edx
	.loc 1 176 21
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	.loc 1 176 17
	subl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 4(%rax)
	.loc 1 177 17
	movq	-40(%rbp), %rax
	movl	4(%rax), %edx
	movl	-12(%rbp), %eax
	subl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 4(%rax)
	.loc 1 179 10
	movq	-40(%rbp), %rax
	movl	$0, 12(%rax)
	.loc 1 180 10
	movq	-40(%rbp), %rax
	movl	$0, 16(%rax)
.L33:
	.loc 1 184 36
	movq	-40(%rbp), %rax
	movzbl	49(%rax), %eax
	.loc 1 184 11
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	fd_get_unsigned_bits
	movl	%eax, -8(%rbp)
	.loc 1 185 36
	movq	-40(%rbp), %rax
	movzbl	50(%rax), %eax
	.loc 1 185 11
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	fd_get_unsigned_bits
	movl	%eax, -4(%rbp)
.L31:
	.loc 1 188 2 discriminator 1
	movl	-8(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	fd_decode_len
	.loc 1 189 2 discriminator 1
	movl	-4(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	fd_decode_len
	.loc 1 190 16 discriminator 1
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fd_get_unsigned_bits
	.loc 1 190 7 discriminator 1
	testl	%eax, %eax
	jne	.L31
	.loc 1 192 13
	movq	-40(%rbp), %rax
	movl	16(%rax), %edx
	.loc 1 192 21
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	.loc 1 192 10
	cmpl	%eax, %edx
	jnb	.L35
	.loc 1 184 9
	jmp	.L33
.L35:
	.loc 1 193 2
	nop
.L30:
	.loc 1 196 10
	movl	-20(%rbp), %eax
	.loc 1 197 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	fd_decode, .-fd_decode
	.globl	fd_draw_glyph
	.type	fd_draw_glyph, @function
fd_draw_glyph:
.LFB8:
	.loc 1 200 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, %eax
	movb	%al, -36(%rbp)
	.loc 1 201 12
	movl	$0, -4(%rbp)
	.loc 1 202 16
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 203 16
	movq	-24(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, 4(%rax)
	.loc 1 204 20
	movzbl	-36(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	fd_get_glyph_data
	.loc 1 204 18
	movq	-24(%rbp), %rdx
	movq	%rax, 32(%rdx)
	.loc 1 205 10
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	.loc 1 205 6
	testq	%rax, %rax
	je	.L37
	.loc 1 207 10
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fd_decode
	movl	%eax, -4(%rbp)
.L37:
	.loc 1 209 10
	movl	-4(%rbp), %eax
	.loc 1 210 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	fd_draw_glyph, .-fd_draw_glyph
	.globl	fd_draw_string
	.type	fd_draw_string, @function
fd_draw_string:
.LFB9:
	.loc 1 213 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	.loc 1 214 12
	movl	$0, -4(%rbp)
	.loc 1 215 8
	jmp	.L40
.L41:
	.loc 1 217 36
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 217 11
	movzbl	%al, %ecx
	movl	-28(%rbp), %edx
	movl	-4(%rbp), %eax
	leal	(%rdx,%rax), %esi
	movl	-32(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fd_draw_glyph
	.loc 1 217 8
	addl	%eax, -4(%rbp)
	.loc 1 218 6
	addq	$1, -40(%rbp)
.L40:
	.loc 1 215 10
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 215 8
	testb	%al, %al
	jne	.L41
	.loc 1 220 10
	movl	-4(%rbp), %eax
	.loc 1 221 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	fd_draw_string, .-fd_draw_string
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 5 "fd.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x569
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF50
	.byte	0xc
	.long	.LASF51
	.long	.LASF52
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.long	.LASF5
	.byte	0x2
	.byte	0x25
	.byte	0x15
	.long	0x55
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.long	.LASF6
	.byte	0x2
	.byte	0x26
	.byte	0x17
	.long	0x2d
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x5
	.long	0x7d
	.uleb128 0x3
	.long	.LASF10
	.byte	0x3
	.byte	0x18
	.byte	0x12
	.long	0x49
	.uleb128 0x3
	.long	.LASF11
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.long	0x5c
	.uleb128 0x5
	.long	0x95
	.uleb128 0x6
	.long	.LASF53
	.byte	0x50
	.byte	0x5
	.byte	0x8
	.byte	0x8
	.long	0x1e8
	.uleb128 0x7
	.long	.LASF12
	.byte	0x5
	.byte	0xa
	.byte	0xc
	.long	0x3b
	.byte	0
	.uleb128 0x7
	.long	.LASF13
	.byte	0x5
	.byte	0xb
	.byte	0xc
	.long	0x3b
	.byte	0x4
	.uleb128 0x7
	.long	.LASF14
	.byte	0x5
	.byte	0xc
	.byte	0xc
	.long	0x3b
	.byte	0x8
	.uleb128 0x8
	.string	"x"
	.byte	0x5
	.byte	0xe
	.byte	0xc
	.long	0x3b
	.byte	0xc
	.uleb128 0x8
	.string	"y"
	.byte	0x5
	.byte	0xf
	.byte	0xc
	.long	0x3b
	.byte	0x10
	.uleb128 0x7
	.long	.LASF15
	.byte	0x5
	.byte	0x10
	.byte	0xc
	.long	0x3b
	.byte	0x14
	.uleb128 0x7
	.long	.LASF16
	.byte	0x5
	.byte	0x11
	.byte	0xc
	.long	0x3b
	.byte	0x18
	.uleb128 0x7
	.long	.LASF17
	.byte	0x5
	.byte	0x13
	.byte	0x12
	.long	0x1e8
	.byte	0x20
	.uleb128 0x7
	.long	.LASF18
	.byte	0x5
	.byte	0x14
	.byte	0xc
	.long	0x3b
	.byte	0x28
	.uleb128 0x7
	.long	.LASF19
	.byte	0x5
	.byte	0x15
	.byte	0xc
	.long	0x3b
	.byte	0x2c
	.uleb128 0x7
	.long	.LASF20
	.byte	0x5
	.byte	0x17
	.byte	0xb
	.long	0x95
	.byte	0x30
	.uleb128 0x7
	.long	.LASF21
	.byte	0x5
	.byte	0x18
	.byte	0xb
	.long	0x95
	.byte	0x31
	.uleb128 0x7
	.long	.LASF22
	.byte	0x5
	.byte	0x19
	.byte	0xb
	.long	0x95
	.byte	0x32
	.uleb128 0x7
	.long	.LASF23
	.byte	0x5
	.byte	0x1a
	.byte	0xb
	.long	0x95
	.byte	0x33
	.uleb128 0x7
	.long	.LASF24
	.byte	0x5
	.byte	0x1b
	.byte	0xb
	.long	0x95
	.byte	0x34
	.uleb128 0x7
	.long	.LASF25
	.byte	0x5
	.byte	0x1c
	.byte	0xb
	.long	0x95
	.byte	0x35
	.uleb128 0x7
	.long	.LASF26
	.byte	0x5
	.byte	0x1d
	.byte	0xb
	.long	0x95
	.byte	0x36
	.uleb128 0x7
	.long	.LASF27
	.byte	0x5
	.byte	0x1e
	.byte	0xb
	.long	0x95
	.byte	0x37
	.uleb128 0x7
	.long	.LASF28
	.byte	0x5
	.byte	0x1f
	.byte	0xb
	.long	0x95
	.byte	0x38
	.uleb128 0x7
	.long	.LASF29
	.byte	0x5
	.byte	0x20
	.byte	0xb
	.long	0x95
	.byte	0x39
	.uleb128 0x7
	.long	.LASF30
	.byte	0x5
	.byte	0x21
	.byte	0xb
	.long	0x95
	.byte	0x3a
	.uleb128 0x7
	.long	.LASF31
	.byte	0x5
	.byte	0x22
	.byte	0xc
	.long	0x3b
	.byte	0x3c
	.uleb128 0x7
	.long	.LASF32
	.byte	0x5
	.byte	0x23
	.byte	0xc
	.long	0x3b
	.byte	0x40
	.uleb128 0x7
	.long	.LASF33
	.byte	0x5
	.byte	0x25
	.byte	0xc
	.long	0x1ee
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0xa1
	.uleb128 0x9
	.byte	0x8
	.long	0x95
	.uleb128 0x3
	.long	.LASF34
	.byte	0x5
	.byte	0x28
	.byte	0x1a
	.long	0xa6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF35
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF36
	.uleb128 0xa
	.long	.LASF37
	.byte	0x1
	.byte	0xd4
	.byte	0xa
	.long	0x3b
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x274
	.uleb128 0xb
	.string	"fd"
	.byte	0x1
	.byte	0xd4
	.byte	0x1f
	.long	0x274
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"x"
	.byte	0x1
	.byte	0xd4
	.byte	0x2c
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.string	"y"
	.byte	0x1
	.byte	0xd4
	.byte	0x38
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.string	"s"
	.byte	0x1
	.byte	0xd4
	.byte	0x47
	.long	0x27a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.string	"dx"
	.byte	0x1
	.byte	0xd6
	.byte	0xc
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x1f4
	.uleb128 0x9
	.byte	0x8
	.long	0x84
	.uleb128 0xa
	.long	.LASF38
	.byte	0x1
	.byte	0xc7
	.byte	0xa
	.long	0x3b
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e8
	.uleb128 0xb
	.string	"fd"
	.byte	0x1
	.byte	0xc7
	.byte	0x1e
	.long	0x274
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"x"
	.byte	0x1
	.byte	0xc7
	.byte	0x2b
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.string	"y"
	.byte	0x1
	.byte	0xc7
	.byte	0x37
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xd
	.long	.LASF39
	.byte	0x1
	.byte	0xc7
	.byte	0x42
	.long	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xc
	.string	"dx"
	.byte	0x1
	.byte	0xc9
	.byte	0xc
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.long	.LASF40
	.byte	0x1
	.byte	0x99
	.byte	0xa
	.long	0x3b
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x359
	.uleb128 0xb
	.string	"f"
	.byte	0x1
	.byte	0x99
	.byte	0x1a
	.long	0x274
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x9b
	.byte	0xc
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x9b
	.byte	0xf
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.string	"x"
	.byte	0x1
	.byte	0x9c
	.byte	0x7
	.long	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.string	"y"
	.byte	0x1
	.byte	0x9c
	.byte	0xa
	.long	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.string	"d"
	.byte	0x1
	.byte	0x9d
	.byte	0xc
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xe
	.long	.LASF42
	.byte	0x1
	.byte	0x7f
	.byte	0x6
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c2
	.uleb128 0xb
	.string	"fd"
	.byte	0x1
	.byte	0x7f
	.byte	0x1a
	.long	0x274
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"len"
	.byte	0x1
	.byte	0x7f
	.byte	0x27
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.long	.LASF41
	.byte	0x1
	.byte	0x7f
	.byte	0x35
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"cnt"
	.byte	0x1
	.byte	0x81
	.byte	0xc
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.string	"rem"
	.byte	0x1
	.byte	0x81
	.byte	0x11
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.long	.LASF43
	.byte	0x1
	.byte	0x78
	.byte	0x6
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x40c
	.uleb128 0xb
	.string	"f"
	.byte	0x1
	.byte	0x78
	.byte	0x1a
	.long	0x274
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"cnt"
	.byte	0x1
	.byte	0x78
	.byte	0x26
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.long	.LASF41
	.byte	0x1
	.byte	0x78
	.byte	0x34
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xa
	.long	.LASF44
	.byte	0x1
	.byte	0x70
	.byte	0x5
	.long	0x6f
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x44c
	.uleb128 0xb
	.string	"fd"
	.byte	0x1
	.byte	0x70
	.byte	0x1e
	.long	0x274
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"cnt"
	.byte	0x1
	.byte	0x70
	.byte	0x26
	.long	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xf
	.long	.LASF45
	.byte	0x1
	.byte	0x52
	.byte	0x24
	.long	0x3b
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b8
	.uleb128 0xb
	.string	"f"
	.byte	0x1
	.byte	0x52
	.byte	0x3f
	.long	0x274
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"cnt"
	.byte	0x1
	.byte	0x52
	.byte	0x4b
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.string	"val"
	.byte	0x1
	.byte	0x54
	.byte	0xc
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.long	.LASF46
	.byte	0x1
	.byte	0x55
	.byte	0xc
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.long	.LASF47
	.byte	0x1
	.byte	0x56
	.byte	0xc
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.long	.LASF48
	.byte	0x1
	.byte	0x38
	.byte	0xa
	.long	0x1ee
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x507
	.uleb128 0xb
	.string	"fd"
	.byte	0x1
	.byte	0x38
	.byte	0x22
	.long	0x274
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.long	.LASF39
	.byte	0x1
	.byte	0x38
	.byte	0x2e
	.long	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.long	.LASF33
	.byte	0x1
	.byte	0x3b
	.byte	0xc
	.long	0x1ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.long	.LASF49
	.byte	0x1
	.byte	0x14
	.byte	0x6
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x543
	.uleb128 0xb
	.string	"fd"
	.byte	0x1
	.byte	0x14
	.byte	0x18
	.long	0x274
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.long	.LASF33
	.byte	0x1
	.byte	0x14
	.byte	0x25
	.long	0x1ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x12
	.long	.LASF54
	.byte	0x1
	.byte	0xf
	.byte	0x6
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.string	"fd"
	.byte	0x1
	.byte	0xf
	.byte	0x14
	.long	0x274
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
	.uleb128 0x39
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x10
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
.LASF28:
	.string	"char_width"
.LASF10:
	.string	"int8_t"
.LASF31:
	.string	"capital_a_pos"
.LASF33:
	.string	"font"
.LASF25:
	.string	"bits_per_char_x"
.LASF7:
	.string	"short int"
.LASF43:
	.string	"fd_draw_pixel"
.LASF49:
	.string	"fd_set_font"
.LASF45:
	.string	"fd_get_unsigned_bits"
.LASF23:
	.string	"bits_per_char_width"
.LASF51:
	.string	"fd.c"
.LASF11:
	.string	"uint8_t"
.LASF26:
	.string	"bits_per_char_y"
.LASF20:
	.string	"glyph_cnt"
.LASF37:
	.string	"fd_draw_string"
.LASF21:
	.string	"bits_per_0"
.LASF22:
	.string	"bits_per_1"
.LASF48:
	.string	"fd_get_glyph_data"
.LASF35:
	.string	"long long int"
.LASF27:
	.string	"bits_per_delta_x"
.LASF34:
	.string	"fd_t"
.LASF8:
	.string	"long int"
.LASF47:
	.string	"rem_bits"
.LASF6:
	.string	"__uint8_t"
.LASF14:
	.string	"is_transparent"
.LASF36:
	.string	"long double"
.LASF18:
	.string	"decode_bit_pos"
.LASF0:
	.string	"unsigned char"
.LASF16:
	.string	"glyph_height"
.LASF30:
	.string	"char_descent"
.LASF4:
	.string	"signed char"
.LASF38:
	.string	"fd_draw_glyph"
.LASF50:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF44:
	.string	"fd_get_signed_bits"
.LASF17:
	.string	"decode_ptr"
.LASF12:
	.string	"target_x"
.LASF13:
	.string	"target_y"
.LASF1:
	.string	"short unsigned int"
.LASF5:
	.string	"__int8_t"
.LASF32:
	.string	"small_a_pos"
.LASF9:
	.string	"char"
.LASF3:
	.string	"long unsigned int"
.LASF29:
	.string	"char_height"
.LASF41:
	.string	"is_foreground"
.LASF39:
	.string	"encoding"
.LASF40:
	.string	"fd_decode"
.LASF46:
	.string	"bit_pos"
.LASF42:
	.string	"fd_decode_len"
.LASF19:
	.string	"decode_byte"
.LASF2:
	.string	"unsigned int"
.LASF15:
	.string	"glyph_width"
.LASF52:
	.string	"/home/step/u8g2-2.29.11/tools/font/bdfconv"
.LASF54:
	.string	"fd_init"
.LASF53:
	.string	"fd_struct"
.LASF24:
	.string	"bits_per_char_height"
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
