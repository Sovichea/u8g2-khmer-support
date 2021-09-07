	.file	"bdf_tga.c"
	.text
.Ltext0:
	.local	tga_width
	.comm	tga_width,2,2
	.local	tga_height
	.comm	tga_height,2,2
	.local	tga_used_height
	.comm	tga_used_height,2,2
	.local	tga_data
	.comm	tga_data,8,8
	.local	tga_font
	.comm	tga_font,8,8
	.local	glyph_cnt
	.comm	glyph_cnt,4,4
	.local	bits_per_0
	.comm	bits_per_0,4,4
	.local	bits_per_1
	.comm	bits_per_1,4,4
	.local	bits_per_char_width
	.comm	bits_per_char_width,4,4
	.local	bits_per_char_height
	.comm	bits_per_char_height,4,4
	.local	bits_per_char_x
	.comm	bits_per_char_x,4,4
	.local	bits_per_char_y
	.comm	bits_per_char_y,4,4
	.local	bits_per_delta_x
	.comm	bits_per_delta_x,4,4
	.local	char_width
	.comm	char_width,4,4
	.local	char_height
	.comm	char_height,4,4
	.local	char_descent
	.comm	char_descent,4,4
	.local	unicode_start_pos
	.comm	unicode_start_pos,4,4
	.local	tga_pixel_intersection
	.comm	tga_pixel_intersection,4,4
	.globl	tga_get_char_width
	.type	tga_get_char_width, @function
tga_get_char_width:
.LFB6:
	.file 1 "bdf_tga.c"
	.loc 1 66 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 67 12
	movl	char_width(%rip), %eax
	.loc 1 68 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	tga_get_char_width, .-tga_get_char_width
	.globl	tga_get_char_height
	.type	tga_get_char_height, @function
tga_get_char_height:
.LFB7:
	.loc 1 71 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 72 12
	movl	char_height(%rip), %eax
	.loc 1 73 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	tga_get_char_height, .-tga_get_char_height
	.globl	tga_init
	.type	tga_init, @function
tga_init:
.LFB8:
	.loc 1 76 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %edx
	movl	%esi, %eax
	movw	%dx, -4(%rbp)
	movw	%ax, -8(%rbp)
	.loc 1 77 13
	movw	$0, tga_width(%rip)
	.loc 1 78 14
	movw	$0, tga_height(%rip)
	.loc 1 79 19
	movw	$0, tga_used_height(%rip)
	.loc 1 80 26
	movl	$0, tga_pixel_intersection(%rip)
	.loc 1 81 17
	movq	tga_data(%rip), %rax
	.loc 1 81 6
	testq	%rax, %rax
	je	.L6
	.loc 1 82 5
	movq	tga_data(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
.L6:
	.loc 1 83 32
	movzwl	-4(%rbp), %edx
	.loc 1 83 42
	movzwl	-8(%rbp), %eax
	.loc 1 83 41
	imulq	%rax, %rdx
	.loc 1 83 25
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	.loc 1 83 12
	movq	%rax, tga_data(%rip)
	.loc 1 84 17
	movq	tga_data(%rip), %rax
	.loc 1 84 6
	testq	%rax, %rax
	jne	.L7
	.loc 1 85 12
	movl	$0, %eax
	jmp	.L8
.L7:
	.loc 1 86 13
	movzwl	-4(%rbp), %eax
	movw	%ax, tga_width(%rip)
	.loc 1 87 14
	movzwl	-8(%rbp), %eax
	movw	%ax, tga_height(%rip)
	.loc 1 88 34
	movzwl	tga_width(%rip), %eax
	movzwl	%ax, %edx
	movzwl	tga_height(%rip), %eax
	movzwl	%ax, %eax
	imull	%eax, %edx
	.loc 1 88 45
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	.loc 1 88 3
	movslq	%eax, %rdx
	movq	tga_data(%rip), %rax
	movl	$255, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 1 89 10
	movl	$1, %eax
.L8:
	.loc 1 90 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	tga_init, .-tga_init
	.globl	tga_clear
	.type	tga_clear, @function
tga_clear:
.LFB9:
	.loc 1 93 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 94 34
	movzwl	tga_width(%rip), %eax
	movzwl	%ax, %edx
	movzwl	tga_height(%rip), %eax
	movzwl	%ax, %eax
	imull	%eax, %edx
	.loc 1 94 45
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	.loc 1 94 3
	movslq	%eax, %rdx
	movq	tga_data(%rip), %rax
	movl	$255, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 1 95 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	tga_clear, .-tga_clear
	.globl	tga_set_pixel
	.type	tga_set_pixel, @function
tga_set_pixel:
.LFB10:
	.loc 1 98 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%esi, %eax
	movl	%edx, %esi
	movl	%ecx, %edx
	movl	%edi, %ecx
	movw	%cx, -20(%rbp)
	movw	%ax, -24(%rbp)
	movl	%esi, %eax
	movb	%al, -28(%rbp)
	movl	%edx, %eax
	movb	%al, -32(%rbp)
	movl	%r8d, %eax
	movb	%al, -36(%rbp)
	.loc 1 100 9
	movzwl	tga_height(%rip), %eax
	.loc 1 100 6
	cmpw	%ax, -24(%rbp)
	jnb	.L17
	.loc 1 102 9
	movzwl	tga_width(%rip), %eax
	.loc 1 102 6
	cmpw	%ax, -20(%rbp)
	jnb	.L18
	.loc 1 104 24
	movzwl	tga_used_height(%rip), %eax
	.loc 1 104 6
	cmpw	%ax, -24(%rbp)
	jbe	.L14
	.loc 1 105 21
	movzwl	-24(%rbp), %eax
	movw	%ax, tga_used_height(%rip)
.L14:
	.loc 1 107 55
	movq	tga_data(%rip), %rcx
	.loc 1 107 29
	movzwl	tga_height(%rip), %eax
	movzwl	%ax, %edx
	movzwl	-24(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 1 107 31
	subl	$1, %eax
	movslq	%eax, %rdx
	.loc 1 107 35
	movzwl	tga_width(%rip), %eax
	movzwl	%ax, %eax
	.loc 1 107 34
	imulq	%rax, %rdx
	.loc 1 107 55
	movzwl	-20(%rbp), %eax
	addq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	.loc 1 107 5
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	.loc 1 109 9
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 109 6
	cmpb	$-1, %al
	jne	.L15
	.loc 1 109 24 discriminator 1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 1 109 20 discriminator 1
	cmpb	$-1, %al
	jne	.L15
	.loc 1 109 39 discriminator 2
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	.loc 1 109 35 discriminator 2
	cmpb	$-1, %al
	je	.L16
.L15:
	.loc 1 110 27
	movl	$1, tga_pixel_intersection(%rip)
.L16:
	.loc 1 114 5
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 1 114 8
	movzbl	-36(%rbp), %edx
	movb	%dl, (%rax)
	.loc 1 115 5
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 1 115 8
	movzbl	-32(%rbp), %edx
	movb	%dl, (%rax)
	.loc 1 116 5
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 1 116 8
	movzbl	-28(%rbp), %edx
	movb	%dl, (%rax)
	jmp	.L10
.L17:
	.loc 1 101 5
	nop
	jmp	.L10
.L18:
	.loc 1 103 5
	nop
.L10:
	.loc 1 117 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	tga_set_pixel, .-tga_set_pixel
	.globl	tga_is_pixel_intersection
	.type	tga_is_pixel_intersection, @function
tga_is_pixel_intersection:
.LFB11:
	.loc 1 120 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 121 9
	movl	tga_pixel_intersection(%rip), %eax
	.loc 1 122 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	tga_is_pixel_intersection, .-tga_is_pixel_intersection
	.globl	tga_clear_pixel_intersection
	.type	tga_clear_pixel_intersection, @function
tga_clear_pixel_intersection:
.LFB12:
	.loc 1 125 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 126 25
	movl	$0, tga_pixel_intersection(%rip)
	.loc 1 127 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	tga_clear_pixel_intersection, .-tga_clear_pixel_intersection
	.globl	tga_write_byte
	.type	tga_write_byte, @function
tga_write_byte:
.LFB13:
	.loc 1 130 1
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
	.loc 1 131 3
	movzbl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fputc@PLT
	.loc 1 132 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	tga_write_byte, .-tga_write_byte
	.globl	tga_write_word
	.type	tga_write_word, @function
tga_write_word:
.LFB14:
	.loc 1 135 1
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
	movw	%ax, -12(%rbp)
	.loc 1 136 3
	movzwl	-12(%rbp), %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tga_write_byte
	.loc 1 137 3
	movzwl	-12(%rbp), %eax
	shrw	$8, %ax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tga_write_byte
	.loc 1 138 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	tga_write_word, .-tga_write_word
	.section	.rodata
.LC0:
	.string	"wb"
.LC1:
	.string	"TRUEVISION-XFILE."
	.text
	.globl	tga_save
	.type	tga_save, @function
tga_save:
.LFB15:
	.loc 1 141 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 143 8
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	.loc 1 144 6
	cmpq	$0, -8(%rbp)
	je	.L26
	.loc 1 146 5
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	tga_write_byte
	.loc 1 147 5
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	tga_write_byte
	.loc 1 148 5
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	tga_write_byte
	.loc 1 149 5
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	tga_write_word
	.loc 1 150 5
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	tga_write_word
	.loc 1 151 5
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	tga_write_byte
	.loc 1 152 5
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	tga_write_word
	.loc 1 153 5
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	tga_write_word
	.loc 1 154 5
	movzwl	tga_width(%rip), %eax
	movzwl	%ax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tga_write_word
	.loc 1 155 39
	movzwl	tga_used_height(%rip), %eax
	addl	$1, %eax
	.loc 1 155 5
	movzwl	%ax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tga_write_word
	.loc 1 156 5
	movq	-8(%rbp), %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	tga_write_byte
	.loc 1 157 5
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	tga_write_byte
	.loc 1 158 100
	movzwl	tga_used_height(%rip), %eax
	movzwl	%ax, %eax
	addl	$1, %eax
	.loc 1 158 5
	movslq	%eax, %rdi
	.loc 1 158 81
	movzwl	tga_width(%rip), %eax
	movzwl	%ax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	.loc 1 158 5
	movslq	%eax, %rsi
	movq	tga_data(%rip), %rcx
	.loc 1 158 35
	movzwl	tga_height(%rip), %eax
	movzwl	%ax, %eax
	.loc 1 158 53
	movzwl	tga_used_height(%rip), %edx
	movzwl	%dx, %edx
	addl	$1, %edx
	.loc 1 158 35
	subl	%edx, %eax
	movl	%eax, %edx
	.loc 1 158 57
	movzwl	tga_width(%rip), %eax
	movzwl	%ax, %eax
	imull	%eax, %edx
	.loc 1 158 67
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	cltq
	.loc 1 158 21
	leaq	(%rcx,%rax), %r8
	.loc 1 158 5
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	movq	%rdi, %rdx
	movq	%r8, %rdi
	call	fwrite@PLT
	.loc 1 159 5
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	tga_write_word
	.loc 1 160 5
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	tga_write_word
	.loc 1 161 5
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	tga_write_word
	.loc 1 162 5
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	tga_write_word
	.loc 1 163 5
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$18, %esi
	leaq	.LC1(%rip), %rdi
	call	fwrite@PLT
	.loc 1 164 5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
.L26:
	.loc 1 166 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	tga_save, .-tga_save
	.globl	tga_set_font
	.type	tga_set_font, @function
tga_set_font:
.LFB16:
	.loc 1 205 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 1 206 22
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 1 206 17
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 206 15
	movl	%eax, glyph_cnt(%rip)
	.loc 1 207 9
	addq	$1, -8(%rbp)
	.loc 1 208 23
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 1 208 18
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 208 16
	movl	%eax, bits_per_0(%rip)
	.loc 1 209 23
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 1 209 18
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 209 16
	movl	%eax, bits_per_1(%rip)
	.loc 1 210 32
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 1 210 27
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 210 25
	movl	%eax, bits_per_char_width(%rip)
	.loc 1 211 33
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 1 211 28
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 211 26
	movl	%eax, bits_per_char_height(%rip)
	.loc 1 212 28
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 1 212 23
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 212 21
	movl	%eax, bits_per_char_x(%rip)
	.loc 1 213 28
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 1 213 23
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 213 21
	movl	%eax, bits_per_char_y(%rip)
	.loc 1 214 29
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 1 214 24
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 214 22
	movl	%eax, bits_per_delta_x(%rip)
	.loc 1 215 23
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 1 215 18
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 215 16
	movl	%eax, char_width(%rip)
	.loc 1 216 24
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 1 216 19
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 216 17
	movl	%eax, char_height(%rip)
	.loc 1 217 9
	addq	$1, -8(%rbp)
	.loc 1 218 20
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 1 218 18
	movl	%eax, char_descent(%rip)
	.loc 1 219 9
	addq	$1, -8(%rbp)
	.loc 1 221 9
	addq	$1, -8(%rbp)
	.loc 1 222 9
	addq	$1, -8(%rbp)
	.loc 1 223 9
	addq	$1, -8(%rbp)
	.loc 1 224 9
	addq	$1, -8(%rbp)
	.loc 1 226 9
	addq	$1, -8(%rbp)
	.loc 1 227 9
	addq	$1, -8(%rbp)
	.loc 1 228 9
	addq	$1, -8(%rbp)
	.loc 1 229 9
	addq	$1, -8(%rbp)
	.loc 1 231 30
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 1 231 25
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 231 23
	movl	%eax, unicode_start_pos(%rip)
	.loc 1 232 23
	movl	unicode_start_pos(%rip), %eax
	sall	$8, %eax
	movl	%eax, unicode_start_pos(%rip)
	.loc 1 233 31
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 1 233 26
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	.loc 1 233 23
	movl	unicode_start_pos(%rip), %eax
	orl	%edx, %eax
	movl	%eax, unicode_start_pos(%rip)
	.loc 1 235 14
	movq	-8(%rbp), %rax
	movq	%rax, tga_font(%rip)
	.loc 1 237 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	tga_set_font, .-tga_set_font
	.globl	tga_get_glyph_data
	.type	tga_get_glyph_data, @function
tga_get_glyph_data:
.LFB17:
	.loc 1 240 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movw	%ax, -36(%rbp)
	.loc 1 241 12
	movq	tga_font(%rip), %rax
	movq	%rax, -16(%rbp)
	.loc 1 242 6
	cmpw	$255, -36(%rbp)
	ja	.L29
.L34:
	.loc 1 246 16
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 1 246 10
	testb	%al, %al
	je	.L40
	.loc 1 248 16
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 248 10
	cmpw	%ax, -36(%rbp)
	jne	.L32
	.loc 1 250 9
	movq	-16(%rbp), %rax
	jmp	.L33
.L32:
	.loc 1 252 19
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 252 12
	addq	%rax, -16(%rbp)
	.loc 1 246 10
	jmp	.L34
.L29:
.LBB2:
	.loc 1 259 10
	movl	unicode_start_pos(%rip), %eax
	movl	%eax, %eax
	addq	%rax, -16(%rbp)
	.loc 1 260 26
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L36:
	.loc 1 266 37 discriminator 1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 266 40 discriminator 1
	sall	$8, %eax
	movl	%eax, %edx
	.loc 1 266 65 discriminator 1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 266 44 discriminator 1
	orl	%edx, %eax
	cltq
	.loc 1 266 12 discriminator 1
	addq	%rax, -16(%rbp)
	.loc 1 267 27 discriminator 1
	addq	$2, -8(%rbp)
	.loc 1 268 32 discriminator 1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 268 35 discriminator 1
	sall	$8, %eax
	.loc 1 268 39 discriminator 1
	movl	%eax, %edx
	.loc 1 268 60 discriminator 1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 268 39 discriminator 1
	orl	%edx, %eax
	.loc 1 268 9 discriminator 1
	movw	%ax, -18(%rbp)
	.loc 1 269 27 discriminator 1
	addq	$2, -8(%rbp)
	.loc 1 270 5 discriminator 1
	movzwl	-18(%rbp), %eax
	cmpw	-36(%rbp), %ax
	jb	.L36
.L39:
	.loc 1 275 17
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 275 20
	sall	$8, %eax
	.loc 1 275 24
	movl	%eax, %edx
	.loc 1 275 29
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 275 24
	orl	%edx, %eax
	.loc 1 275 9
	movw	%ax, -18(%rbp)
	.loc 1 276 10
	cmpw	$0, -18(%rbp)
	je	.L41
	.loc 1 278 10
	movzwl	-18(%rbp), %eax
	cmpw	-36(%rbp), %ax
	jne	.L38
	.loc 1 280 9
	movq	-16(%rbp), %rax
	jmp	.L33
.L38:
	.loc 1 282 19
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 282 12
	addq	%rax, -16(%rbp)
	.loc 1 275 9
	jmp	.L39
.L40:
.LBE2:
	.loc 1 247 2
	nop
	jmp	.L35
.L41:
.LBB3:
	.loc 1 277 2
	nop
.L35:
.LBE3:
	.loc 1 285 10
	movl	$0, %eax
.L33:
	.loc 1 286 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	tga_get_glyph_data, .-tga_get_glyph_data
	.globl	tga_fd_inc
	.type	tga_fd_inc, @function
tga_fd_inc:
.LFB18:
	.loc 1 317 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	.loc 1 318 12
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -4(%rbp)
	.loc 1 319 4
	addl	$1, -4(%rbp)
	.loc 1 320 14
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	.loc 1 320 6
	cmpl	%eax, -4(%rbp)
	jne	.L43
	.loc 1 322 7
	movl	$0, -4(%rbp)
	.loc 1 323 6
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 323 9
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 16(%rax)
.L43:
	.loc 1 325 8
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 12(%rax)
	.loc 1 326 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	tga_fd_inc, .-tga_fd_inc
	.globl	tga_fd_get_unsigned_bits
	.type	tga_fd_get_unsigned_bits, @function
tga_fd_get_unsigned_bits:
.LFB19:
	.loc 1 330 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	.loc 1 332 12
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, -4(%rbp)
	.loc 1 334 12
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	.loc 1 334 9
	movzbl	(%rax), %eax
	.loc 1 334 7
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	.loc 1 336 7
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	shrl	%cl, -8(%rbp)
	.loc 1 337 16
	movl	-4(%rbp), %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	.loc 1 337 6
	cmpl	$7, %eax
	jbe	.L45
	.loc 1 339 6
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	.loc 1 339 18
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 32(%rax)
	.loc 1 340 15
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	.loc 1 340 12
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	.loc 1 340 34
	movl	$8, %eax
	subl	-4(%rbp), %eax
	.loc 1 340 29
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	.loc 1 340 9
	orl	%eax, -8(%rbp)
	.loc 1 341 13
	subl	$8, -4(%rbp)
.L45:
	.loc 1 343 7
	movl	-28(%rbp), %eax
	movl	$-1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	notl	%eax
	andl	%eax, -8(%rbp)
	.loc 1 344 11
	movl	-28(%rbp), %eax
	addl	%eax, -4(%rbp)
	.loc 1 346 21
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 40(%rax)
	.loc 1 347 10
	movl	-8(%rbp), %eax
	.loc 1 348 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	tga_fd_get_unsigned_bits, .-tga_fd_get_unsigned_bits
	.globl	tga_fd_get_signed_bits
	.type	tga_fd_get_signed_bits, @function
tga_fd_get_signed_bits:
.LFB20:
	.loc 1 365 1
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
	.loc 1 366 15
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tga_fd_get_unsigned_bits
	.loc 1 366 10
	movl	%eax, %edx
	.loc 1 366 53
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	.loc 1 366 59
	sarl	%eax
	.loc 1 366 48
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 1 367 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	tga_fd_get_signed_bits, .-tga_fd_get_signed_bits
	.globl	tga_fd_draw_fg_pixel
	.type	tga_fd_draw_fg_pixel, @function
tga_fd_draw_fg_pixel:
.LFB21:
	.loc 1 371 1
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
	.loc 1 374 8
	jmp	.L50
.L51:
	.loc 1 376 8
	subl	$1, -12(%rbp)
	.loc 1 377 42
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 377 52
	movl	%eax, %edx
	.loc 1 377 54
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 377 52
	addl	%edx, %eax
	.loc 1 377 5
	movzwl	%ax, %esi
	.loc 1 377 20
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 377 30
	movl	%eax, %edx
	.loc 1 377 32
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	.loc 1 377 30
	addl	%eax, %edx
	.loc 1 377 35
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	.loc 1 377 5
	movzwl	%ax, %eax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	%eax, %edi
	call	tga_set_pixel
.L50:
	.loc 1 374 8
	cmpl	$0, -12(%rbp)
	jne	.L51
	.loc 1 379 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	tga_fd_draw_fg_pixel, .-tga_fd_draw_fg_pixel
	.globl	tga_fd_draw_bg_pixel
	.type	tga_fd_draw_bg_pixel, @function
tga_fd_draw_bg_pixel:
.LFB22:
	.loc 1 382 1
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
	.loc 1 385 8
	jmp	.L53
.L54:
	.loc 1 387 8
	subl	$1, -12(%rbp)
	.loc 1 388 11
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	.loc 1 388 8
	testl	%eax, %eax
	jne	.L53
	.loc 1 389 44
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 389 54
	movl	%eax, %edx
	.loc 1 389 56
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 389 54
	addl	%edx, %eax
	.loc 1 389 7
	movzwl	%ax, %esi
	.loc 1 389 22
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 389 32
	movl	%eax, %edx
	.loc 1 389 34
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	.loc 1 389 32
	addl	%eax, %edx
	.loc 1 389 37
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	.loc 1 389 7
	movzwl	%ax, %eax
	movl	$232, %r8d
	movl	$232, %ecx
	movl	$232, %edx
	movl	%eax, %edi
	call	tga_set_pixel
.L53:
	.loc 1 385 8
	cmpl	$0, -12(%rbp)
	jne	.L54
	.loc 1 391 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	tga_fd_draw_bg_pixel, .-tga_fd_draw_bg_pixel
	.globl	tga_draw_hline
	.type	tga_draw_hline, @function
tga_draw_hline:
.LFB23:
	.loc 1 394 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	.loc 1 395 8
	jmp	.L56
.L58:
	.loc 1 397 8
	subl	$1, -12(%rbp)
	.loc 1 398 8
	cmpl	$0, -16(%rbp)
	jne	.L57
	.loc 1 399 7
	movl	-8(%rbp), %eax
	movzwl	%ax, %esi
	.loc 1 399 22
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	.loc 1 399 7
	movzwl	%ax, %eax
	movl	$232, %r8d
	movl	$232, %ecx
	movl	$232, %edx
	movl	%eax, %edi
	call	tga_set_pixel
	jmp	.L56
.L57:
	.loc 1 401 7
	movl	-8(%rbp), %eax
	movzwl	%ax, %esi
	.loc 1 401 22
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	.loc 1 401 7
	movzwl	%ax, %eax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$255, %edx
	movl	%eax, %edi
	call	tga_set_pixel
.L56:
	.loc 1 395 8
	cmpl	$0, -12(%rbp)
	jne	.L58
	.loc 1 403 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	tga_draw_hline, .-tga_draw_hline
	.globl	tga_fd_draw_pixel
	.type	tga_fd_draw_pixel, @function
tga_fd_draw_pixel:
.LFB24:
	.loc 1 407 1
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
	.loc 1 408 6
	cmpl	$0, -16(%rbp)
	je	.L60
	.loc 1 410 5
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tga_fd_draw_fg_pixel
	.loc 1 416 1
	jmp	.L62
.L60:
	.loc 1 414 5
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tga_fd_draw_bg_pixel
.L62:
	.loc 1 416 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	tga_fd_draw_pixel, .-tga_fd_draw_pixel
	.globl	tga_fd_decode_len
	.type	tga_fd_decode_len, @function
tga_fd_decode_len:
.LFB25:
	.loc 1 419 1
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
	.loc 1 421 7
	movl	-28(%rbp), %eax
	movl	%eax, -8(%rbp)
.L66:
	.loc 1 424 9
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -4(%rbp)
	.loc 1 425 13
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	.loc 1 425 9
	subl	%eax, -4(%rbp)
	.loc 1 426 8
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jb	.L68
	.loc 1 428 5
	movl	-32(%rbp), %edx
	movl	-4(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	tga_fd_draw_pixel
	.loc 1 429 9
	movl	-4(%rbp), %eax
	subl	%eax, -8(%rbp)
	.loc 1 430 10
	movq	-24(%rbp), %rax
	movl	$0, 12(%rax)
	.loc 1 431 6
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 431 9
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 16(%rax)
	.loc 1 424 9
	jmp	.L66
.L68:
	.loc 1 427 7
	nop
	.loc 1 433 3
	movl	-32(%rbp), %edx
	movl	-8(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	tga_fd_draw_pixel
	.loc 1 434 8
	movq	-24(%rbp), %rax
	movl	12(%rax), %edx
	movl	-8(%rbp), %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 12(%rax)
	.loc 1 435 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	tga_fd_decode_len, .-tga_fd_decode_len
	.globl	tga_fd_decode
	.type	tga_fd_decode, @function
tga_fd_decode:
.LFB26:
	.loc 1 438 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$56, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	.loc 1 442 12
	movl	$0, -20(%rbp)
	.loc 1 444 17
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 32(%rax)
	.loc 1 445 21
	movq	-40(%rbp), %rax
	movl	$0, 40(%rax)
	.loc 1 447 17
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 32(%rax)
	.loc 1 448 17
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 32(%rax)
	.loc 1 449 6
	cmpl	$0, -52(%rbp)
	je	.L70
	.loc 1 450 19
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 32(%rax)
.L70:
	.loc 1 453 20
	movl	bits_per_char_width(%rip), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tga_fd_get_unsigned_bits
	.loc 1 453 18
	movq	-40(%rbp), %rdx
	movl	%eax, 20(%rdx)
	.loc 1 454 21
	movl	bits_per_char_height(%rip), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tga_fd_get_unsigned_bits
	.loc 1 454 19
	movq	-40(%rbp), %rdx
	movl	%eax, 24(%rdx)
	.loc 1 455 7
	movl	bits_per_char_x(%rip), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tga_fd_get_signed_bits
	movl	%eax, -16(%rbp)
	.loc 1 456 7
	movl	bits_per_char_y(%rip), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tga_fd_get_signed_bits
	movl	%eax, -12(%rbp)
	.loc 1 457 7
	movl	bits_per_delta_x(%rip), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tga_fd_get_signed_bits
	.loc 1 457 5
	movl	%eax, -20(%rbp)
	.loc 1 459 9
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	.loc 1 459 6
	testl	%eax, %eax
	je	.L71
	.loc 1 462 17
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movl	-16(%rbp), %eax
	addl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 463 17
	movq	-40(%rbp), %rax
	movl	4(%rax), %edx
	.loc 1 463 21
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	.loc 1 463 17
	subl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 4(%rax)
	.loc 1 464 17
	movq	-40(%rbp), %rax
	movl	4(%rax), %edx
	movl	-12(%rbp), %eax
	subl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 4(%rax)
	.loc 1 467 10
	movq	-40(%rbp), %rax
	movl	$0, 12(%rax)
	.loc 1 468 10
	movq	-40(%rbp), %rax
	movl	$0, 16(%rax)
.L74:
	.loc 1 473 11
	movl	bits_per_0(%rip), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tga_fd_get_unsigned_bits
	movl	%eax, -8(%rbp)
	.loc 1 474 11
	movl	bits_per_1(%rip), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tga_fd_get_unsigned_bits
	movl	%eax, -4(%rbp)
.L72:
	.loc 1 477 2 discriminator 1
	movl	-8(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	tga_fd_decode_len
	.loc 1 478 2 discriminator 1
	movl	-4(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	tga_fd_decode_len
	.loc 1 479 16 discriminator 1
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	tga_fd_get_unsigned_bits
	.loc 1 479 7 discriminator 1
	testl	%eax, %eax
	jne	.L72
	.loc 1 481 13
	movq	-40(%rbp), %rax
	movl	16(%rax), %edx
	.loc 1 481 21
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	.loc 1 481 10
	cmpl	%eax, %edx
	jnb	.L76
	.loc 1 473 9
	jmp	.L74
.L76:
	.loc 1 482 2
	nop
.L71:
	.loc 1 485 10
	movl	-20(%rbp), %eax
	.loc 1 486 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	tga_fd_decode, .-tga_fd_decode
	.globl	tga_draw_glyph
	.type	tga_draw_glyph, @function
tga_draw_glyph:
.LFB27:
	.loc 1 490 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	%edi, -84(%rbp)
	movl	%esi, -88(%rbp)
	movl	%edx, %eax
	movl	%ecx, -96(%rbp)
	movw	%ax, -92(%rbp)
	.loc 1 490 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 491 12
	movl	$0, -76(%rbp)
	.loc 1 493 14
	movl	-84(%rbp), %eax
	movl	%eax, -64(%rbp)
	.loc 1 494 14
	movl	-88(%rbp), %eax
	movl	%eax, -60(%rbp)
	.loc 1 495 22
	cmpl	$0, -96(%rbp)
	sete	%al
	movzbl	%al, %eax
	.loc 1 495 20
	movl	%eax, -56(%rbp)
	.loc 1 496 25
	movzwl	-92(%rbp), %eax
	movl	%eax, %edi
	call	tga_get_glyph_data
	movq	%rax, -72(%rbp)
	.loc 1 497 6
	cmpq	$0, -72(%rbp)
	je	.L78
	.loc 1 499 10
	cmpw	$254, -92(%rbp)
	seta	%al
	movzbl	%al, %edx
	movq	-72(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tga_fd_decode
	movl	%eax, -76(%rbp)
	.loc 1 500 8
	cmpl	$0, -96(%rbp)
	je	.L78
	.loc 1 502 7
	movl	-88(%rbp), %eax
	movzwl	%ax, %esi
	.loc 1 502 22
	movl	-84(%rbp), %eax
	movl	%eax, %edx
	movl	-76(%rbp), %eax
	addl	%edx, %eax
	.loc 1 502 7
	movzwl	%ax, %eax
	movl	$240, %r8d
	movl	$133, %ecx
	movl	$28, %edx
	movl	%eax, %edi
	call	tga_set_pixel
	.loc 1 503 7
	movl	-88(%rbp), %eax
	movzwl	%ax, %esi
	movl	-84(%rbp), %eax
	movzwl	%ax, %eax
	movl	$0, %r8d
	movl	$164, %ecx
	movl	$255, %edx
	movl	%eax, %edi
	call	tga_set_pixel
.L78:
	.loc 1 506 10
	movl	-76(%rbp), %eax
	.loc 1 507 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L80
	call	__stack_chk_fail@PLT
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	tga_draw_glyph, .-tga_draw_glyph
	.globl	tga_draw_string
	.type	tga_draw_string, @function
tga_draw_string:
.LFB28:
	.loc 1 510 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	.loc 1 511 12
	movl	$0, -4(%rbp)
	.loc 1 512 8
	jmp	.L82
.L85:
	.loc 1 514 33
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cbtw
	.loc 1 514 11
	movzwl	%ax, %edx
	movl	-20(%rbp), %ecx
	movl	-4(%rbp), %eax
	leal	(%rcx,%rax), %edi
	movl	-36(%rbp), %ecx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	call	tga_draw_glyph
	.loc 1 514 8
	addl	%eax, -4(%rbp)
	.loc 1 515 8
	cmpl	$0, -40(%rbp)
	je	.L83
	.loc 1 516 10
	movl	-4(%rbp), %eax
	cmpl	-40(%rbp), %eax
	ja	.L87
.L83:
	.loc 1 518 6
	addq	$1, -32(%rbp)
.L82:
	.loc 1 512 10
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 512 8
	testb	%al, %al
	jne	.L85
	jmp	.L84
.L87:
	.loc 1 517 2
	nop
.L84:
	.loc 1 520 10
	movl	-4(%rbp), %eax
	.loc 1 521 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	tga_draw_string, .-tga_draw_string
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xc51
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF125
	.byte	0xc
	.long	.LASF126
	.long	.LASF127
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
	.uleb128 0x3
	.long	.LASF8
	.byte	0x2
	.byte	0x28
	.byte	0x1c
	.long	0x34
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x3
	.long	.LASF10
	.byte	0x2
	.byte	0x98
	.byte	0x19
	.long	0x82
	.uleb128 0x3
	.long	.LASF11
	.byte	0x2
	.byte	0x99
	.byte	0x1b
	.long	0x82
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0xa9
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x7
	.long	0xa9
	.uleb128 0x3
	.long	.LASF13
	.byte	0x3
	.byte	0x18
	.byte	0x12
	.long	0x49
	.uleb128 0x3
	.long	.LASF14
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.long	0x5c
	.uleb128 0x7
	.long	0xc1
	.uleb128 0x3
	.long	.LASF15
	.byte	0x4
	.byte	0x19
	.byte	0x14
	.long	0x6f
	.uleb128 0x3
	.long	.LASF16
	.byte	0x5
	.byte	0xd1
	.byte	0x17
	.long	0x42
	.uleb128 0x8
	.long	.LASF75
	.byte	0xd8
	.byte	0x6
	.byte	0x31
	.byte	0x8
	.long	0x271
	.uleb128 0x9
	.long	.LASF17
	.byte	0x6
	.byte	0x33
	.byte	0x7
	.long	0x7b
	.byte	0
	.uleb128 0x9
	.long	.LASF18
	.byte	0x6
	.byte	0x36
	.byte	0x9
	.long	0xa3
	.byte	0x8
	.uleb128 0x9
	.long	.LASF19
	.byte	0x6
	.byte	0x37
	.byte	0x9
	.long	0xa3
	.byte	0x10
	.uleb128 0x9
	.long	.LASF20
	.byte	0x6
	.byte	0x38
	.byte	0x9
	.long	0xa3
	.byte	0x18
	.uleb128 0x9
	.long	.LASF21
	.byte	0x6
	.byte	0x39
	.byte	0x9
	.long	0xa3
	.byte	0x20
	.uleb128 0x9
	.long	.LASF22
	.byte	0x6
	.byte	0x3a
	.byte	0x9
	.long	0xa3
	.byte	0x28
	.uleb128 0x9
	.long	.LASF23
	.byte	0x6
	.byte	0x3b
	.byte	0x9
	.long	0xa3
	.byte	0x30
	.uleb128 0x9
	.long	.LASF24
	.byte	0x6
	.byte	0x3c
	.byte	0x9
	.long	0xa3
	.byte	0x38
	.uleb128 0x9
	.long	.LASF25
	.byte	0x6
	.byte	0x3d
	.byte	0x9
	.long	0xa3
	.byte	0x40
	.uleb128 0x9
	.long	.LASF26
	.byte	0x6
	.byte	0x40
	.byte	0x9
	.long	0xa3
	.byte	0x48
	.uleb128 0x9
	.long	.LASF27
	.byte	0x6
	.byte	0x41
	.byte	0x9
	.long	0xa3
	.byte	0x50
	.uleb128 0x9
	.long	.LASF28
	.byte	0x6
	.byte	0x42
	.byte	0x9
	.long	0xa3
	.byte	0x58
	.uleb128 0x9
	.long	.LASF29
	.byte	0x6
	.byte	0x44
	.byte	0x16
	.long	0x28a
	.byte	0x60
	.uleb128 0x9
	.long	.LASF30
	.byte	0x6
	.byte	0x46
	.byte	0x14
	.long	0x290
	.byte	0x68
	.uleb128 0x9
	.long	.LASF31
	.byte	0x6
	.byte	0x48
	.byte	0x7
	.long	0x7b
	.byte	0x70
	.uleb128 0x9
	.long	.LASF32
	.byte	0x6
	.byte	0x49
	.byte	0x7
	.long	0x7b
	.byte	0x74
	.uleb128 0x9
	.long	.LASF33
	.byte	0x6
	.byte	0x4a
	.byte	0xb
	.long	0x89
	.byte	0x78
	.uleb128 0x9
	.long	.LASF34
	.byte	0x6
	.byte	0x4d
	.byte	0x12
	.long	0x34
	.byte	0x80
	.uleb128 0x9
	.long	.LASF35
	.byte	0x6
	.byte	0x4e
	.byte	0xf
	.long	0x55
	.byte	0x82
	.uleb128 0x9
	.long	.LASF36
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.long	0x296
	.byte	0x83
	.uleb128 0x9
	.long	.LASF37
	.byte	0x6
	.byte	0x51
	.byte	0xf
	.long	0x2a6
	.byte	0x88
	.uleb128 0x9
	.long	.LASF38
	.byte	0x6
	.byte	0x59
	.byte	0xd
	.long	0x95
	.byte	0x90
	.uleb128 0x9
	.long	.LASF39
	.byte	0x6
	.byte	0x5b
	.byte	0x17
	.long	0x2b1
	.byte	0x98
	.uleb128 0x9
	.long	.LASF40
	.byte	0x6
	.byte	0x5c
	.byte	0x19
	.long	0x2bc
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x6
	.byte	0x5d
	.byte	0x14
	.long	0x290
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF42
	.byte	0x6
	.byte	0x5e
	.byte	0x9
	.long	0xa1
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF43
	.byte	0x6
	.byte	0x5f
	.byte	0xa
	.long	0xde
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF44
	.byte	0x6
	.byte	0x60
	.byte	0x7
	.long	0x7b
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF45
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.long	0x2c2
	.byte	0xc4
	.byte	0
	.uleb128 0x3
	.long	.LASF46
	.byte	0x7
	.byte	0x7
	.byte	0x19
	.long	0xea
	.uleb128 0xa
	.long	.LASF128
	.byte	0x6
	.byte	0x2b
	.byte	0xe
	.uleb128 0xb
	.long	.LASF47
	.uleb128 0x6
	.byte	0x8
	.long	0x285
	.uleb128 0x6
	.byte	0x8
	.long	0xea
	.uleb128 0xc
	.long	0xa9
	.long	0x2a6
	.uleb128 0xd
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x27d
	.uleb128 0xb
	.long	.LASF48
	.uleb128 0x6
	.byte	0x8
	.long	0x2ac
	.uleb128 0xb
	.long	.LASF49
	.uleb128 0x6
	.byte	0x8
	.long	0x2b7
	.uleb128 0xc
	.long	0xa9
	.long	0x2d2
	.uleb128 0xd
	.long	0x42
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.long	.LASF50
	.byte	0x8
	.byte	0x89
	.byte	0xe
	.long	0x2de
	.uleb128 0x6
	.byte	0x8
	.long	0x271
	.uleb128 0xe
	.long	.LASF51
	.byte	0x8
	.byte	0x8a
	.byte	0xe
	.long	0x2de
	.uleb128 0xe
	.long	.LASF52
	.byte	0x8
	.byte	0x8b
	.byte	0xe
	.long	0x2de
	.uleb128 0xe
	.long	.LASF53
	.byte	0x9
	.byte	0x1a
	.byte	0xc
	.long	0x7b
	.uleb128 0xc
	.long	0x31e
	.long	0x313
	.uleb128 0xf
	.byte	0
	.uleb128 0x7
	.long	0x308
	.uleb128 0x6
	.byte	0x8
	.long	0xb0
	.uleb128 0x7
	.long	0x318
	.uleb128 0xe
	.long	.LASF54
	.byte	0x9
	.byte	0x1b
	.byte	0x1a
	.long	0x313
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF55
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF56
	.uleb128 0x6
	.byte	0x8
	.long	0xcd
	.uleb128 0x6
	.byte	0x8
	.long	0xc1
	.uleb128 0x10
	.long	.LASF57
	.byte	0x1
	.byte	0x2c
	.byte	0x11
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	tga_width
	.uleb128 0x10
	.long	.LASF58
	.byte	0x1
	.byte	0x2d
	.byte	0x11
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	tga_height
	.uleb128 0x10
	.long	.LASF59
	.byte	0x1
	.byte	0x2e
	.byte	0x11
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	tga_used_height
	.uleb128 0x10
	.long	.LASF60
	.byte	0x1
	.byte	0x2f
	.byte	0x11
	.long	0x343
	.uleb128 0x9
	.byte	0x3
	.quad	tga_data
	.uleb128 0x10
	.long	.LASF61
	.byte	0x1
	.byte	0x31
	.byte	0x11
	.long	0x343
	.uleb128 0x9
	.byte	0x3
	.quad	tga_font
	.uleb128 0x10
	.long	.LASF62
	.byte	0x1
	.byte	0x32
	.byte	0xc
	.long	0x7b
	.uleb128 0x9
	.byte	0x3
	.quad	glyph_cnt
	.uleb128 0x10
	.long	.LASF63
	.byte	0x1
	.byte	0x33
	.byte	0xc
	.long	0x7b
	.uleb128 0x9
	.byte	0x3
	.quad	bits_per_0
	.uleb128 0x10
	.long	.LASF64
	.byte	0x1
	.byte	0x34
	.byte	0xc
	.long	0x7b
	.uleb128 0x9
	.byte	0x3
	.quad	bits_per_1
	.uleb128 0x10
	.long	.LASF65
	.byte	0x1
	.byte	0x35
	.byte	0xc
	.long	0x7b
	.uleb128 0x9
	.byte	0x3
	.quad	bits_per_char_width
	.uleb128 0x10
	.long	.LASF66
	.byte	0x1
	.byte	0x36
	.byte	0xc
	.long	0x7b
	.uleb128 0x9
	.byte	0x3
	.quad	bits_per_char_height
	.uleb128 0x10
	.long	.LASF67
	.byte	0x1
	.byte	0x37
	.byte	0xc
	.long	0x7b
	.uleb128 0x9
	.byte	0x3
	.quad	bits_per_char_x
	.uleb128 0x10
	.long	.LASF68
	.byte	0x1
	.byte	0x38
	.byte	0xc
	.long	0x7b
	.uleb128 0x9
	.byte	0x3
	.quad	bits_per_char_y
	.uleb128 0x10
	.long	.LASF69
	.byte	0x1
	.byte	0x39
	.byte	0xc
	.long	0x7b
	.uleb128 0x9
	.byte	0x3
	.quad	bits_per_delta_x
	.uleb128 0x10
	.long	.LASF70
	.byte	0x1
	.byte	0x3a
	.byte	0xc
	.long	0x7b
	.uleb128 0x9
	.byte	0x3
	.quad	char_width
	.uleb128 0x10
	.long	.LASF71
	.byte	0x1
	.byte	0x3b
	.byte	0xc
	.long	0x7b
	.uleb128 0x9
	.byte	0x3
	.quad	char_height
	.uleb128 0x10
	.long	.LASF72
	.byte	0x1
	.byte	0x3c
	.byte	0xc
	.long	0x7b
	.uleb128 0x9
	.byte	0x3
	.quad	char_descent
	.uleb128 0x10
	.long	.LASF73
	.byte	0x1
	.byte	0x3d
	.byte	0x11
	.long	0x3b
	.uleb128 0x9
	.byte	0x3
	.quad	unicode_start_pos
	.uleb128 0x10
	.long	.LASF74
	.byte	0x1
	.byte	0x3e
	.byte	0xc
	.long	0x7b
	.uleb128 0x9
	.byte	0x3
	.quad	tga_pixel_intersection
	.uleb128 0x11
	.long	.LASF76
	.byte	0x38
	.byte	0x1
	.value	0x122
	.byte	0x8
	.long	0x5a4
	.uleb128 0x12
	.long	.LASF77
	.byte	0x1
	.value	0x124
	.byte	0xc
	.long	0x3b
	.byte	0
	.uleb128 0x12
	.long	.LASF78
	.byte	0x1
	.value	0x125
	.byte	0xc
	.long	0x3b
	.byte	0x4
	.uleb128 0x12
	.long	.LASF79
	.byte	0x1
	.value	0x126
	.byte	0xc
	.long	0x3b
	.byte	0x8
	.uleb128 0x13
	.string	"x"
	.byte	0x1
	.value	0x128
	.byte	0xc
	.long	0x3b
	.byte	0xc
	.uleb128 0x13
	.string	"y"
	.byte	0x1
	.value	0x129
	.byte	0xc
	.long	0x3b
	.byte	0x10
	.uleb128 0x12
	.long	.LASF80
	.byte	0x1
	.value	0x12a
	.byte	0xc
	.long	0x3b
	.byte	0x14
	.uleb128 0x12
	.long	.LASF81
	.byte	0x1
	.value	0x12b
	.byte	0xc
	.long	0x3b
	.byte	0x18
	.uleb128 0x12
	.long	.LASF82
	.byte	0x1
	.value	0x12e
	.byte	0x12
	.long	0x33d
	.byte	0x20
	.uleb128 0x12
	.long	.LASF83
	.byte	0x1
	.value	0x12f
	.byte	0xc
	.long	0x3b
	.byte	0x28
	.uleb128 0x12
	.long	.LASF84
	.byte	0x1
	.value	0x131
	.byte	0xb
	.long	0xc1
	.byte	0x2c
	.uleb128 0x12
	.long	.LASF85
	.byte	0x1
	.value	0x132
	.byte	0xb
	.long	0xc1
	.byte	0x2d
	.uleb128 0x12
	.long	.LASF86
	.byte	0x1
	.value	0x133
	.byte	0xb
	.long	0xc1
	.byte	0x2e
	.uleb128 0x12
	.long	.LASF87
	.byte	0x1
	.value	0x134
	.byte	0xb
	.long	0xc1
	.byte	0x2f
	.uleb128 0x12
	.long	.LASF88
	.byte	0x1
	.value	0x135
	.byte	0xb
	.long	0xc1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.long	.LASF89
	.byte	0x1
	.value	0x138
	.byte	0x1e
	.long	0x4d5
	.uleb128 0x15
	.long	.LASF92
	.byte	0x1
	.value	0x1fd
	.byte	0xa
	.long	0x3b
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x62e
	.uleb128 0x16
	.string	"x"
	.byte	0x1
	.value	0x1fd
	.byte	0x23
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.string	"y"
	.byte	0x1
	.value	0x1fd
	.byte	0x2f
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.string	"s"
	.byte	0x1
	.value	0x1fd
	.byte	0x3e
	.long	0x318
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.long	.LASF90
	.byte	0x1
	.value	0x1fd
	.byte	0x45
	.long	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x17
	.long	.LASF91
	.byte	0x1
	.value	0x1fd
	.byte	0x58
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.string	"dx"
	.byte	0x1
	.value	0x1ff
	.byte	0xc
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.long	.LASF93
	.byte	0x1
	.value	0x1e9
	.byte	0xa
	.long	0x3b
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x6c2
	.uleb128 0x16
	.string	"x"
	.byte	0x1
	.value	0x1e9
	.byte	0x22
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x16
	.string	"y"
	.byte	0x1
	.value	0x1e9
	.byte	0x2e
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x17
	.long	.LASF94
	.byte	0x1
	.value	0x1e9
	.byte	0x3a
	.long	0xd2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x17
	.long	.LASF90
	.byte	0x1
	.value	0x1e9
	.byte	0x48
	.long	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x18
	.string	"dx"
	.byte	0x1
	.value	0x1eb
	.byte	0xc
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x18
	.string	"f"
	.byte	0x1
	.value	0x1ec
	.byte	0xc
	.long	0x5a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x19
	.long	.LASF95
	.byte	0x1
	.value	0x1f0
	.byte	0xc
	.long	0x343
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x15
	.long	.LASF96
	.byte	0x1
	.value	0x1b5
	.byte	0xa
	.long	0x3b
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x75b
	.uleb128 0x16
	.string	"f"
	.byte	0x1
	.value	0x1b5
	.byte	0x22
	.long	0x75b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.long	.LASF95
	.byte	0x1
	.value	0x1b5
	.byte	0x2e
	.long	0x343
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.long	.LASF97
	.byte	0x1
	.value	0x1b5
	.byte	0x3e
	.long	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x18
	.string	"a"
	.byte	0x1
	.value	0x1b7
	.byte	0xc
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"b"
	.byte	0x1
	.value	0x1b7
	.byte	0xf
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.string	"x"
	.byte	0x1
	.value	0x1b9
	.byte	0x7
	.long	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.string	"y"
	.byte	0x1
	.value	0x1b9
	.byte	0xa
	.long	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.string	"d"
	.byte	0x1
	.value	0x1ba
	.byte	0xc
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5a4
	.uleb128 0x1a
	.long	.LASF99
	.byte	0x1
	.value	0x1a2
	.byte	0x6
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x7cf
	.uleb128 0x16
	.string	"f"
	.byte	0x1
	.value	0x1a2
	.byte	0x22
	.long	0x75b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.string	"len"
	.byte	0x1
	.value	0x1a2
	.byte	0x2e
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.long	.LASF98
	.byte	0x1
	.value	0x1a2
	.byte	0x3c
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"cnt"
	.byte	0x1
	.value	0x1a4
	.byte	0xc
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"rem"
	.byte	0x1
	.value	0x1a4
	.byte	0x11
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.long	.LASF100
	.byte	0x1
	.value	0x196
	.byte	0x6
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x81d
	.uleb128 0x16
	.string	"f"
	.byte	0x1
	.value	0x196
	.byte	0x22
	.long	0x75b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.string	"cnt"
	.byte	0x1
	.value	0x196
	.byte	0x2e
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.long	.LASF98
	.byte	0x1
	.value	0x196
	.byte	0x3c
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1a
	.long	.LASF101
	.byte	0x1
	.value	0x189
	.byte	0x7
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x879
	.uleb128 0x16
	.string	"x"
	.byte	0x1
	.value	0x189
	.byte	0x1f
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.string	"y"
	.byte	0x1
	.value	0x189
	.byte	0x2a
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.string	"cnt"
	.byte	0x1
	.value	0x189
	.byte	0x36
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.long	.LASF98
	.byte	0x1
	.value	0x189
	.byte	0x45
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1a
	.long	.LASF102
	.byte	0x1
	.value	0x17d
	.byte	0x6
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x8b7
	.uleb128 0x16
	.string	"f"
	.byte	0x1
	.value	0x17d
	.byte	0x25
	.long	0x75b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.string	"cnt"
	.byte	0x1
	.value	0x17d
	.byte	0x31
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1a
	.long	.LASF103
	.byte	0x1
	.value	0x172
	.byte	0x6
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x8f5
	.uleb128 0x16
	.string	"f"
	.byte	0x1
	.value	0x172
	.byte	0x25
	.long	0x75b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.string	"cnt"
	.byte	0x1
	.value	0x172
	.byte	0x31
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x15
	.long	.LASF104
	.byte	0x1
	.value	0x16c
	.byte	0x5
	.long	0x7b
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x937
	.uleb128 0x16
	.string	"t"
	.byte	0x1
	.value	0x16c
	.byte	0x26
	.long	0x75b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.string	"cnt"
	.byte	0x1
	.value	0x16c
	.byte	0x2d
	.long	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1b
	.long	.LASF105
	.byte	0x1
	.value	0x149
	.byte	0xa
	.long	0x3b
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x999
	.uleb128 0x16
	.string	"f"
	.byte	0x1
	.value	0x149
	.byte	0x2d
	.long	0x75b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.string	"cnt"
	.byte	0x1
	.value	0x149
	.byte	0x39
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.string	"val"
	.byte	0x1
	.value	0x14b
	.byte	0xc
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.long	.LASF106
	.byte	0x1
	.value	0x14c
	.byte	0xc
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.long	.LASF107
	.byte	0x1
	.value	0x13c
	.byte	0x6
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x9d5
	.uleb128 0x16
	.string	"f"
	.byte	0x1
	.value	0x13c
	.byte	0x1b
	.long	0x75b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"x"
	.byte	0x1
	.value	0x13e
	.byte	0xc
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.long	.LASF108
	.byte	0x1
	.byte	0xef
	.byte	0xa
	.long	0x343
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xa3a
	.uleb128 0x1e
	.long	.LASF94
	.byte	0x1
	.byte	0xef
	.byte	0x26
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x10
	.long	.LASF109
	.byte	0x1
	.byte	0xf1
	.byte	0xc
	.long	0x343
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0
	.uleb128 0x18
	.string	"e"
	.byte	0x1
	.value	0x101
	.byte	0xe
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x19
	.long	.LASF110
	.byte	0x1
	.value	0x102
	.byte	0xe
	.long	0x343
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF111
	.byte	0x1
	.byte	0xcc
	.byte	0x6
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xa68
	.uleb128 0x1e
	.long	.LASF109
	.byte	0x1
	.byte	0xcc
	.byte	0x1c
	.long	0x343
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x21
	.long	.LASF112
	.byte	0x1
	.byte	0x8c
	.byte	0x6
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xaa4
	.uleb128 0x1e
	.long	.LASF113
	.byte	0x1
	.byte	0x8c
	.byte	0x1b
	.long	0x318
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"fp"
	.byte	0x1
	.byte	0x8e
	.byte	0x9
	.long	0x2de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x21
	.long	.LASF114
	.byte	0x1
	.byte	0x86
	.byte	0x6
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xae0
	.uleb128 0x23
	.string	"fp"
	.byte	0x1
	.byte	0x86
	.byte	0x1b
	.long	0x2de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF115
	.byte	0x1
	.byte	0x86
	.byte	0x28
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x21
	.long	.LASF116
	.byte	0x1
	.byte	0x81
	.byte	0x6
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xb1c
	.uleb128 0x23
	.string	"fp"
	.byte	0x1
	.byte	0x81
	.byte	0x1b
	.long	0x2de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF117
	.byte	0x1
	.byte	0x81
	.byte	0x27
	.long	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x24
	.long	.LASF119
	.byte	0x1
	.byte	0x7c
	.byte	0x6
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.long	.LASF122
	.byte	0x1
	.byte	0x77
	.byte	0x5
	.long	0x7b
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x20
	.long	.LASF118
	.byte	0x1
	.byte	0x61
	.byte	0x6
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xbc1
	.uleb128 0x23
	.string	"x"
	.byte	0x1
	.byte	0x61
	.byte	0x1d
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"y"
	.byte	0x1
	.byte	0x61
	.byte	0x29
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"r"
	.byte	0x1
	.byte	0x61
	.byte	0x34
	.long	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.string	"g"
	.byte	0x1
	.byte	0x61
	.byte	0x3f
	.long	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"b"
	.byte	0x1
	.byte	0x61
	.byte	0x4a
	.long	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x22
	.string	"p"
	.byte	0x1
	.byte	0x63
	.byte	0xc
	.long	0x343
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.long	.LASF120
	.byte	0x1
	.byte	0x5c
	.byte	0x6
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.long	.LASF121
	.byte	0x1
	.byte	0x4b
	.byte	0x5
	.long	0x7b
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xc18
	.uleb128 0x23
	.string	"w"
	.byte	0x1
	.byte	0x4b
	.byte	0x17
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.string	"h"
	.byte	0x1
	.byte	0x4b
	.byte	0x23
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF123
	.byte	0x1
	.byte	0x46
	.byte	0x5
	.long	0x7b
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.long	.LASF124
	.byte	0x1
	.byte	0x41
	.byte	0x5
	.long	0x7b
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x16
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1b
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.quad	.LBB3-.Ltext0
	.quad	.LBE3-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF36:
	.string	"_shortbuf"
.LASF128:
	.string	"_IO_lock_t"
.LASF69:
	.string	"bits_per_delta_x"
.LASF52:
	.string	"stderr"
.LASF25:
	.string	"_IO_buf_end"
.LASF82:
	.string	"decode_ptr"
.LASF63:
	.string	"bits_per_0"
.LASF64:
	.string	"bits_per_1"
.LASF76:
	.string	"tga_fd_struct"
.LASF23:
	.string	"_IO_write_end"
.LASF2:
	.string	"unsigned int"
.LASF105:
	.string	"tga_fd_get_unsigned_bits"
.LASF41:
	.string	"_freeres_list"
.LASF17:
	.string	"_flags"
.LASF68:
	.string	"bits_per_char_y"
.LASF29:
	.string	"_markers"
.LASF107:
	.string	"tga_fd_inc"
.LASF93:
	.string	"tga_draw_glyph"
.LASF108:
	.string	"tga_get_glyph_data"
.LASF13:
	.string	"int8_t"
.LASF51:
	.string	"stdout"
.LASF28:
	.string	"_IO_save_end"
.LASF48:
	.string	"_IO_codecvt"
.LASF62:
	.string	"glyph_cnt"
.LASF92:
	.string	"tga_draw_string"
.LASF56:
	.string	"long long unsigned int"
.LASF98:
	.string	"is_foreground"
.LASF8:
	.string	"__uint16_t"
.LASF54:
	.string	"sys_errlist"
.LASF27:
	.string	"_IO_backup_base"
.LASF38:
	.string	"_offset"
.LASF53:
	.string	"sys_nerr"
.LASF91:
	.string	"max_dx"
.LASF102:
	.string	"tga_fd_draw_bg_pixel"
.LASF100:
	.string	"tga_fd_draw_pixel"
.LASF31:
	.string	"_fileno"
.LASF74:
	.string	"tga_pixel_intersection"
.LASF118:
	.string	"tga_set_pixel"
.LASF112:
	.string	"tga_save"
.LASF81:
	.string	"glyph_height"
.LASF16:
	.string	"size_t"
.LASF99:
	.string	"tga_fd_decode_len"
.LASF101:
	.string	"tga_draw_hline"
.LASF20:
	.string	"_IO_read_base"
.LASF104:
	.string	"tga_fd_get_signed_bits"
.LASF50:
	.string	"stdin"
.LASF127:
	.string	"/home/step/u8g2-2.29.11/tools/font/bdfconv"
.LASF110:
	.string	"unicode_lookup_table"
.LASF126:
	.string	"bdf_tga.c"
.LASF12:
	.string	"char"
.LASF44:
	.string	"_mode"
.LASF77:
	.string	"target_x"
.LASF78:
	.string	"target_y"
.LASF47:
	.string	"_IO_marker"
.LASF18:
	.string	"_IO_read_ptr"
.LASF14:
	.string	"uint8_t"
.LASF66:
	.string	"bits_per_char_height"
.LASF88:
	.string	"dx_max_bit_size"
.LASF72:
	.string	"char_descent"
.LASF21:
	.string	"_IO_write_base"
.LASF55:
	.string	"long long int"
.LASF89:
	.string	"tga_fd_t"
.LASF26:
	.string	"_IO_save_base"
.LASF60:
	.string	"tga_data"
.LASF83:
	.string	"decode_bit_pos"
.LASF119:
	.string	"tga_clear_pixel_intersection"
.LASF42:
	.string	"_freeres_buf"
.LASF79:
	.string	"is_transparent"
.LASF43:
	.string	"__pad5"
.LASF85:
	.string	"bbx_y_max_bit_size"
.LASF67:
	.string	"bits_per_char_x"
.LASF35:
	.string	"_vtable_offset"
.LASF5:
	.string	"__int8_t"
.LASF84:
	.string	"bbx_x_max_bit_size"
.LASF120:
	.string	"tga_clear"
.LASF15:
	.string	"uint16_t"
.LASF73:
	.string	"unicode_start_pos"
.LASF111:
	.string	"tga_set_font"
.LASF70:
	.string	"char_width"
.LASF86:
	.string	"bbx_w_max_bit_size"
.LASF19:
	.string	"_IO_read_end"
.LASF71:
	.string	"char_height"
.LASF7:
	.string	"short int"
.LASF9:
	.string	"long int"
.LASF123:
	.string	"tga_get_char_height"
.LASF49:
	.string	"_IO_wide_data"
.LASF97:
	.string	"is_unicode"
.LASF115:
	.string	"word"
.LASF6:
	.string	"__uint8_t"
.LASF113:
	.string	"name"
.LASF57:
	.string	"tga_width"
.LASF125:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF109:
	.string	"font"
.LASF40:
	.string	"_wide_data"
.LASF37:
	.string	"_lock"
.LASF3:
	.string	"long unsigned int"
.LASF33:
	.string	"_old_offset"
.LASF116:
	.string	"tga_write_byte"
.LASF103:
	.string	"tga_fd_draw_fg_pixel"
.LASF75:
	.string	"_IO_FILE"
.LASF95:
	.string	"glyph_data"
.LASF114:
	.string	"tga_write_word"
.LASF117:
	.string	"byte"
.LASF0:
	.string	"unsigned char"
.LASF94:
	.string	"encoding"
.LASF61:
	.string	"tga_font"
.LASF22:
	.string	"_IO_write_ptr"
.LASF121:
	.string	"tga_init"
.LASF124:
	.string	"tga_get_char_width"
.LASF65:
	.string	"bits_per_char_width"
.LASF39:
	.string	"_codecvt"
.LASF106:
	.string	"bit_pos"
.LASF58:
	.string	"tga_height"
.LASF80:
	.string	"glyph_width"
.LASF87:
	.string	"bbx_h_max_bit_size"
.LASF10:
	.string	"__off_t"
.LASF90:
	.string	"is_hints"
.LASF96:
	.string	"tga_fd_decode"
.LASF4:
	.string	"signed char"
.LASF122:
	.string	"tga_is_pixel_intersection"
.LASF1:
	.string	"short unsigned int"
.LASF30:
	.string	"_chain"
.LASF46:
	.string	"FILE"
.LASF32:
	.string	"_flags2"
.LASF59:
	.string	"tga_used_height"
.LASF34:
	.string	"_cur_column"
.LASF11:
	.string	"__off64_t"
.LASF45:
	.string	"_unused2"
.LASF24:
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
