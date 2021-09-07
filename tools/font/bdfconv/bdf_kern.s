	.file	"bdf_kern.c"
	.text
.Ltext0:
	.comm	bdf_first_table_cnt,2,2
	.comm	bdf_first_encoding_table,122880,32
	.comm	bdf_index_to_second_table,122880,32
	.comm	bdf_second_table_cnt,2,2
	.comm	bdf_second_encoding_table,122880,32
	.comm	bdf_kerning_values,61440,32
	.section	.rodata
	.align 8
.LC0:
	.string	"static const uint16_t %s_%s[%u] = {\n  "
.LC1:
	.string	"%u"
.LC2:
	.string	", "
.LC3:
	.string	"\n  "
.LC4:
	.string	"};\n"
	.text
	.type	bdf_write_uint16_array, @function
bdf_write_uint16_array:
.LFB0:
	.file 1 "bdf_kern.c"
	.loc 1 36 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, %eax
	movq	%r8, -56(%rbp)
	movw	%ax, -44(%rbp)
	.loc 1 39 3
	movzwl	-44(%rbp), %esi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	%esi, %r8d
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 40 10
	movw	$0, -2(%rbp)
	.loc 1 40 3
	jmp	.L2
.L4:
	.loc 1 42 24
	movzwl	-2(%rbp), %eax
	leaq	(%rax,%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	.loc 1 42 5
	movzwl	%ax, %edx
	movq	-24(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 43 11
	movzwl	-2(%rbp), %eax
	leal	1(%rax), %edx
	.loc 1 43 14
	movzwl	-44(%rbp), %eax
	.loc 1 43 8
	cmpl	%eax, %edx
	jge	.L3
	.loc 1 45 7
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	leaq	.LC2(%rip), %rdi
	call	fwrite@PLT
	.loc 1 46 19
	movzwl	-2(%rbp), %eax
	andl	$15, %eax
	.loc 1 46 10
	testw	%ax, %ax
	jne	.L3
	.loc 1 46 24 discriminator 1
	cmpw	$0, -2(%rbp)
	je	.L3
	.loc 1 48 2
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$3, %edx
	movl	$1, %esi
	leaq	.LC3(%rip), %rdi
	call	fwrite@PLT
.L3:
	.loc 1 40 25 discriminator 2
	movzwl	-2(%rbp), %eax
	addl	$1, %eax
	movw	%ax, -2(%rbp)
.L2:
	.loc 1 40 3 discriminator 1
	movzwl	-2(%rbp), %eax
	cmpw	-44(%rbp), %ax
	jb	.L4
	.loc 1 52 3
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$3, %edx
	movl	$1, %esi
	leaq	.LC4(%rip), %rdi
	call	fwrite@PLT
	.loc 1 53 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	bdf_write_uint16_array, .-bdf_write_uint16_array
	.section	.rodata
	.align 8
.LC5:
	.string	"static const uint8_t %s_%s[%u] = {\n  "
	.text
	.type	bdf_write_uint8_array, @function
bdf_write_uint8_array:
.LFB1:
	.loc 1 56 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, %eax
	movq	%r8, -56(%rbp)
	movw	%ax, -44(%rbp)
	.loc 1 59 3
	movzwl	-44(%rbp), %esi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	%esi, %r8d
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 60 10
	movw	$0, -2(%rbp)
	.loc 1 60 3
	jmp	.L6
.L8:
	.loc 1 62 24
	movzwl	-2(%rbp), %edx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 62 5
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 63 11
	movzwl	-2(%rbp), %eax
	leal	1(%rax), %edx
	.loc 1 63 14
	movzwl	-44(%rbp), %eax
	.loc 1 63 8
	cmpl	%eax, %edx
	jge	.L7
	.loc 1 65 7
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	leaq	.LC2(%rip), %rdi
	call	fwrite@PLT
	.loc 1 66 19
	movzwl	-2(%rbp), %eax
	andl	$15, %eax
	.loc 1 66 10
	testw	%ax, %ax
	jne	.L7
	.loc 1 66 24 discriminator 1
	cmpw	$0, -2(%rbp)
	je	.L7
	.loc 1 68 2
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$3, %edx
	movl	$1, %esi
	leaq	.LC3(%rip), %rdi
	call	fwrite@PLT
.L7:
	.loc 1 60 25 discriminator 2
	movzwl	-2(%rbp), %eax
	addl	$1, %eax
	movw	%ax, -2(%rbp)
.L6:
	.loc 1 60 3 discriminator 1
	movzwl	-2(%rbp), %eax
	cmpw	-44(%rbp), %ax
	jb	.L8
	.loc 1 72 3
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$3, %edx
	movl	$1, %esi
	leaq	.LC4(%rip), %rdi
	call	fwrite@PLT
	.loc 1 73 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	bdf_write_uint8_array, .-bdf_write_uint8_array
	.section	.rodata
.LC6:
	.string	"w"
.LC7:
	.string	"/* %s, Size: %u Bytes */\n"
.LC8:
	.string	"first_encoding_table"
.LC9:
	.string	"index_to_second_table"
.LC10:
	.string	"second_encoding_table"
.LC11:
	.string	"kerning_values"
.LC12:
	.string	"u8g2_kerning_t %s_k = {\n"
.LC13:
	.string	"  %u, %u,\n"
.LC14:
	.string	"  %s_%s,\n"
.LC15:
	.string	"  %s_%s};\n\n"
	.text
	.globl	bdf_write_kerning_file
	.type	bdf_write_kerning_file, @function
bdf_write_kerning_file:
.LFB2:
	.loc 1 77 1
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
	.loc 1 79 8
	movq	-24(%rbp), %rax
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	.loc 1 81 70
	movzwl	bdf_first_table_cnt(%rip), %eax
	movzwl	%ax, %eax
	leal	0(,%rax,4), %ecx
	.loc 1 81 95
	movzwl	bdf_second_table_cnt(%rip), %eax
	movzwl	%ax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	.loc 1 81 73
	addl	%ecx, %eax
	.loc 1 81 3
	leal	12(%rax), %ecx
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 82 3
	movzwl	bdf_first_table_cnt(%rip), %eax
	movzwl	%ax, %edx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	leaq	bdf_first_encoding_table(%rip), %r8
	movl	%edx, %ecx
	leaq	.LC8(%rip), %rdx
	movq	%rax, %rdi
	call	bdf_write_uint16_array
	.loc 1 83 3
	movzwl	bdf_first_table_cnt(%rip), %eax
	movzwl	%ax, %edx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	leaq	bdf_index_to_second_table(%rip), %r8
	movl	%edx, %ecx
	leaq	.LC9(%rip), %rdx
	movq	%rax, %rdi
	call	bdf_write_uint16_array
	.loc 1 84 3
	movzwl	bdf_second_table_cnt(%rip), %eax
	movzwl	%ax, %edx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	leaq	bdf_second_encoding_table(%rip), %r8
	movl	%edx, %ecx
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rdi
	call	bdf_write_uint16_array
	.loc 1 85 3
	movzwl	bdf_second_table_cnt(%rip), %eax
	movzwl	%ax, %edx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	leaq	bdf_kerning_values(%rip), %r8
	movl	%edx, %ecx
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rdi
	call	bdf_write_uint8_array
	.loc 1 88 3
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 89 3
	movzwl	bdf_second_table_cnt(%rip), %eax
	movzwl	%ax, %ecx
	movzwl	bdf_first_table_cnt(%rip), %eax
	movzwl	%ax, %edx
	movq	-8(%rbp), %rax
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 90 3
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC8(%rip), %rcx
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 91 3
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC9(%rip), %rcx
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 92 3
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC10(%rip), %rcx
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 93 3
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC11(%rip), %rcx
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 94 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	.loc 1 95 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	bdf_write_kerning_file, .-bdf_write_kerning_file
	.type	bdf_is_glyph_overlap, @function
bdf_is_glyph_overlap:
.LFB3:
	.loc 1 105 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%edx, %eax
	movl	%ecx, %edx
	movl	%r8d, -40(%rbp)
	movl	%esi, %ecx
	movw	%cx, -28(%rbp)
	movw	%ax, -32(%rbp)
	movl	%edx, %eax
	movb	%al, -36(%rbp)
	.loc 1 107 3
	call	tga_clear@PLT
	.loc 1 109 5
	movl	$8, -8(%rbp)
	.loc 1 110 7
	call	tga_get_char_height@PLT
	.loc 1 110 5
	movl	%eax, -4(%rbp)
	.loc 1 111 8
	movzwl	-28(%rbp), %edx
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %eax
	movl	$0, %ecx
	movl	%eax, %edi
	call	tga_draw_glyph@PLT
	.loc 1 111 5
	addl	%eax, -8(%rbp)
	.loc 1 112 5
	movzbl	-36(%rbp), %eax
	subl	%eax, -8(%rbp)
	.loc 1 113 3
	call	tga_clear_pixel_intersection@PLT
	.loc 1 114 8
	movzwl	-32(%rbp), %edx
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %eax
	movl	$0, %ecx
	movl	%eax, %edi
	call	tga_draw_glyph@PLT
	.loc 1 114 5
	addl	%eax, -8(%rbp)
	.loc 1 123 10
	call	tga_is_pixel_intersection@PLT
	.loc 1 124 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	bdf_is_glyph_overlap, .-bdf_is_glyph_overlap
	.globl	bdf_calculate_kerning
	.type	bdf_calculate_kerning, @function
bdf_calculate_kerning:
.LFB4:
	.loc 1 127 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	%edx, %eax
	movl	%ecx, %edx
	movl	%esi, %ecx
	movw	%cx, -44(%rbp)
	movw	%ax, -48(%rbp)
	movl	%edx, %eax
	movb	%al, -52(%rbp)
	.loc 1 133 3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	tga_set_font@PLT
	.loc 1 134 43
	call	tga_get_char_height@PLT
	.loc 1 134 64
	addl	$8, %eax
	.loc 1 134 3
	addl	%eax, %eax
	movzwl	%ax, %ebx
	.loc 1 134 13
	call	tga_get_char_width@PLT
	.loc 1 134 33
	addl	$16, %eax
	.loc 1 134 3
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movzwl	%ax, %eax
	movl	%ebx, %esi
	movl	%eax, %edi
	call	tga_init@PLT
	.loc 1 136 38
	call	tga_get_char_width@PLT
	.loc 1 136 28
	movl	%eax, %edx
	.loc 1 136 59
	movzbl	-52(%rbp), %eax
	.loc 1 136 58
	imull	%edx, %eax
	.loc 1 136 109
	movl	%eax, %eax
	imulq	$1374389535, %rax, %rax
	shrq	$32, %rax
	shrl	$5, %eax
	.loc 1 136 25
	movb	%al, -18(%rbp)
	.loc 1 137 17
	call	tga_get_char_width@PLT
	.loc 1 137 15
	movb	%al, -17(%rbp)
	.loc 1 138 16
	movb	$0, -19(%rbp)
	.loc 1 138 3
	jmp	.L13
.L16:
	.loc 1 140 10
	movzbl	-19(%rbp), %ecx
	movzwl	-48(%rbp), %edx
	movzwl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	bdf_is_glyph_overlap
	.loc 1 140 8
	testl	%eax, %eax
	jne	.L22
	.loc 1 138 51 discriminator 2
	movzbl	-19(%rbp), %eax
	addl	$1, %eax
	movb	%al, -19(%rbp)
.L13:
	.loc 1 138 3 discriminator 1
	movzbl	-19(%rbp), %eax
	cmpb	-17(%rbp), %al
	jb	.L16
	jmp	.L15
.L22:
	.loc 1 141 7
	nop
.L15:
	.loc 1 143 6
	movzbl	-19(%rbp), %eax
	cmpb	-17(%rbp), %al
	jb	.L17
	.loc 1 144 13
	movb	$0, -19(%rbp)
.L17:
	.loc 1 145 6
	movzbl	-19(%rbp), %eax
	cmpb	-18(%rbp), %al
	jnb	.L18
	.loc 1 146 13
	movb	$0, -19(%rbp)
	jmp	.L19
.L18:
	.loc 1 148 13
	movzbl	-18(%rbp), %eax
	subb	%al, -19(%rbp)
.L19:
	.loc 1 150 6
	cmpb	$0, -19(%rbp)
	je	.L20
	.loc 1 152 5
	movzbl	-19(%rbp), %ecx
	movzwl	-48(%rbp), %edx
	movzwl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	bdf_is_glyph_overlap
.L20:
	.loc 1 156 10
	movzbl	-19(%rbp), %eax
	.loc 1 157 1
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	bdf_calculate_kerning, .-bdf_calculate_kerning
	.section	.rodata
	.align 8
.LC16:
	.string	"Kerning calculation aborted: bdf_first_table_cnt > BDF_KERNING_MAX\n"
	.align 8
.LC17:
	.string	"Kerning calculation aborted: bdf_second_table_cnt > BDF_KERNING_MAX\n"
	.text
	.globl	bdf_calculate_all_kerning
	.type	bdf_calculate_all_kerning, @function
bdf_calculate_all_kerning:
.LFB5:
	.loc 1 160 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, %eax
	movb	%al, -60(%rbp)
	.loc 1 168 23
	movw	$0, bdf_first_table_cnt(%rip)
	.loc 1 169 24
	movw	$0, bdf_second_table_cnt(%rip)
	.loc 1 171 13
	movl	$0, -28(%rbp)
	.loc 1 171 3
	jmp	.L24
.L32:
	.loc 1 173 29
	movl	$0, -20(%rbp)
	.loc 1 174 18
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 174 30
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 1 174 14
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 1 175 18
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	.loc 1 175 8
	testq	%rax, %rax
	je	.L25
	.loc 1 175 51 discriminator 1
	movq	-16(%rbp), %rax
	movl	80(%rax), %eax
	.loc 1 175 40 discriminator 1
	testl	%eax, %eax
	jne	.L25
	.loc 1 177 18
	movl	$0, -24(%rbp)
	.loc 1 177 7
	jmp	.L26
.L31:
	.loc 1 179 23
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 179 35
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 1 179 19
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 180 23
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	.loc 1 180 12
	testq	%rax, %rax
	je	.L27
	.loc 1 180 57 discriminator 1
	movq	-8(%rbp), %rax
	movl	80(%rax), %eax
	.loc 1 180 45 discriminator 1
	testl	%eax, %eax
	jne	.L27
	.loc 1 182 21
	movzbl	-60(%rbp), %ecx
	.loc 1 182 89
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 182 21
	movzwl	%ax, %edx
	.loc 1 182 68
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 182 21
	movzwl	%ax, %esi
	movq	-40(%rbp), %rax
	movq	1288(%rax), %rax
	movq	%rax, %rdi
	call	bdf_calculate_kerning
	.loc 1 182 19
	movb	%al, -29(%rbp)
	.loc 1 183 7
	cmpb	$1, -29(%rbp)
	jbe	.L27
	.loc 1 185 9
	cmpl	$0, -20(%rbp)
	jne	.L28
	.loc 1 187 64
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 187 32
	movzwl	bdf_first_table_cnt(%rip), %eax
	movzwl	%ax, %eax
	.loc 1 187 54
	movl	%edx, %ecx
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	bdf_first_encoding_table(%rip), %rax
	movw	%cx, (%rdx,%rax)
	.loc 1 188 33
	movzwl	bdf_first_table_cnt(%rip), %eax
	movzwl	%ax, %edx
	.loc 1 188 56
	movzwl	bdf_second_table_cnt(%rip), %eax
	movslq	%edx, %rdx
	leaq	(%rdx,%rdx), %rcx
	leaq	bdf_index_to_second_table(%rip), %rdx
	movw	%ax, (%rcx,%rdx)
	.loc 1 189 27
	movzwl	bdf_first_table_cnt(%rip), %eax
	addl	$1, %eax
	movw	%ax, bdf_first_table_cnt(%rip)
	.loc 1 190 32
	movzwl	bdf_first_table_cnt(%rip), %eax
	.loc 1 190 11
	cmpw	$-4096, %ax
	jbe	.L29
	.loc 1 192 9
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$67, %edx
	movl	$1, %esi
	leaq	.LC16(%rip), %rdi
	call	fwrite@PLT
	.loc 1 193 9
	jmp	.L23
.L29:
	.loc 1 195 32
	movl	$1, -20(%rbp)
.L28:
	.loc 1 197 65
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 197 31
	movzwl	bdf_second_table_cnt(%rip), %eax
	movzwl	%ax, %eax
	.loc 1 197 54
	movl	%edx, %ecx
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	bdf_second_encoding_table(%rip), %rax
	movw	%cx, (%rdx,%rax)
	.loc 1 198 24
	movzwl	bdf_second_table_cnt(%rip), %eax
	movzwl	%ax, %eax
	.loc 1 198 47
	cltq
	leaq	bdf_kerning_values(%rip), %rcx
	movzbl	-29(%rbp), %edx
	movb	%dl, (%rax,%rcx)
	.loc 1 199 26
	movzwl	bdf_second_table_cnt(%rip), %eax
	addl	$1, %eax
	movw	%ax, bdf_second_table_cnt(%rip)
	.loc 1 200 31
	movzwl	bdf_second_table_cnt(%rip), %eax
	.loc 1 200 9
	cmpw	$-4096, %ax
	jbe	.L27
	.loc 1 202 9
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$68, %edx
	movl	$1, %esi
	leaq	.LC17(%rip), %rdi
	call	fwrite@PLT
	.loc 1 203 9
	jmp	.L23
.L27:
	.loc 1 177 53 discriminator 2
	addl	$1, -24(%rbp)
.L26:
	.loc 1 177 34 discriminator 1
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 177 7 discriminator 1
	cmpl	%eax, -24(%rbp)
	jl	.L31
.L25:
	.loc 1 171 46 discriminator 2
	addl	$1, -28(%rbp)
.L24:
	.loc 1 171 28 discriminator 1
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 171 3 discriminator 1
	cmpl	%eax, -28(%rbp)
	jl	.L32
	.loc 1 211 27
	movzwl	bdf_first_table_cnt(%rip), %eax
	movzwl	%ax, %eax
	.loc 1 211 49
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	bdf_first_encoding_table(%rip), %rax
	movw	$-1, (%rdx,%rax)
	.loc 1 212 28
	movzwl	bdf_first_table_cnt(%rip), %eax
	movzwl	%ax, %edx
	.loc 1 212 51
	movzwl	bdf_second_table_cnt(%rip), %eax
	movslq	%edx, %rdx
	leaq	(%rdx,%rdx), %rcx
	leaq	bdf_index_to_second_table(%rip), %rdx
	movw	%ax, (%rcx,%rdx)
	.loc 1 213 22
	movzwl	bdf_first_table_cnt(%rip), %eax
	addl	$1, %eax
	movw	%ax, bdf_first_table_cnt(%rip)
	.loc 1 215 3
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bdf_write_kerning_file
.L23:
	.loc 1 216 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	bdf_calculate_all_kerning, .-bdf_calculate_all_kerning
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
	.long	0xace
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF142
	.byte	0xc
	.long	.LASF143
	.long	.LASF144
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
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x28
	.byte	0x1c
	.long	0x50
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.long	.LASF10
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x84
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x84
	.uleb128 0x6
	.byte	0x8
	.long	0xa9
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x7
	.long	0xa9
	.uleb128 0x8
	.long	.LASF56
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x23c
	.uleb128 0x9
	.long	.LASF13
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x7d
	.byte	0
	.uleb128 0x9
	.long	.LASF14
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0xa3
	.byte	0x8
	.uleb128 0x9
	.long	.LASF15
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0xa3
	.byte	0x10
	.uleb128 0x9
	.long	.LASF16
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0xa3
	.byte	0x18
	.uleb128 0x9
	.long	.LASF17
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0xa3
	.byte	0x20
	.uleb128 0x9
	.long	.LASF18
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0xa3
	.byte	0x28
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0xa3
	.byte	0x30
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0xa3
	.byte	0x38
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0xa3
	.byte	0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0xa3
	.byte	0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0xa3
	.byte	0x50
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0xa3
	.byte	0x58
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x255
	.byte	0x60
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x25b
	.byte	0x68
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x7d
	.byte	0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x7d
	.byte	0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0x8b
	.byte	0x78
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x261
	.byte	0x83
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x271
	.byte	0x88
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0x97
	.byte	0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x27c
	.byte	0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x287
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x25b
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x7d
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x28d
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF42
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xb5
	.uleb128 0xa
	.long	.LASF145
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0xb
	.long	.LASF43
	.uleb128 0x6
	.byte	0x8
	.long	0x250
	.uleb128 0x6
	.byte	0x8
	.long	0xb5
	.uleb128 0xc
	.long	0xa9
	.long	0x271
	.uleb128 0xd
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x248
	.uleb128 0xb
	.long	.LASF44
	.uleb128 0x6
	.byte	0x8
	.long	0x277
	.uleb128 0xb
	.long	.LASF45
	.uleb128 0x6
	.byte	0x8
	.long	0x282
	.uleb128 0xc
	.long	0xa9
	.long	0x29d
	.uleb128 0xd
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.long	.LASF46
	.byte	0x6
	.byte	0x89
	.byte	0xe
	.long	0x2a9
	.uleb128 0x6
	.byte	0x8
	.long	0x23c
	.uleb128 0xe
	.long	.LASF47
	.byte	0x6
	.byte	0x8a
	.byte	0xe
	.long	0x2a9
	.uleb128 0xe
	.long	.LASF48
	.byte	0x6
	.byte	0x8b
	.byte	0xe
	.long	0x2a9
	.uleb128 0xe
	.long	.LASF49
	.byte	0x7
	.byte	0x1a
	.byte	0xc
	.long	0x7d
	.uleb128 0xc
	.long	0x2e9
	.long	0x2de
	.uleb128 0xf
	.byte	0
	.uleb128 0x7
	.long	0x2d3
	.uleb128 0x6
	.byte	0x8
	.long	0xb0
	.uleb128 0x7
	.long	0x2e3
	.uleb128 0xe
	.long	.LASF50
	.byte	0x7
	.byte	0x1b
	.byte	0x1a
	.long	0x2de
	.uleb128 0x2
	.long	.LASF51
	.byte	0x8
	.byte	0x18
	.byte	0x13
	.long	0x5e
	.uleb128 0x7
	.long	0x2fa
	.uleb128 0x2
	.long	.LASF52
	.byte	0x8
	.byte	0x19
	.byte	0x14
	.long	0x71
	.uleb128 0x7
	.long	0x30b
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF53
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF54
	.uleb128 0x2
	.long	.LASF55
	.byte	0x9
	.byte	0x9
	.byte	0x21
	.long	0x336
	.uleb128 0x10
	.long	.LASF57
	.value	0x520
	.byte	0xa
	.byte	0x16
	.byte	0x8
	.long	0x57d
	.uleb128 0x9
	.long	.LASF58
	.byte	0xa
	.byte	0x18
	.byte	0x7
	.long	0x7d
	.byte	0
	.uleb128 0x9
	.long	.LASF59
	.byte	0xa
	.byte	0x1a
	.byte	0xa
	.long	0x706
	.byte	0x8
	.uleb128 0x9
	.long	.LASF60
	.byte	0xa
	.byte	0x1b
	.byte	0x7
	.long	0x7d
	.byte	0x10
	.uleb128 0x9
	.long	.LASF61
	.byte	0xa
	.byte	0x1c
	.byte	0x7
	.long	0x7d
	.byte	0x14
	.uleb128 0x9
	.long	.LASF62
	.byte	0xa
	.byte	0x1f
	.byte	0x8
	.long	0x712
	.byte	0x18
	.uleb128 0x11
	.long	.LASF63
	.byte	0xa
	.byte	0x20
	.byte	0x7
	.long	0x7d
	.value	0x418
	.uleb128 0x11
	.long	.LASF64
	.byte	0xa
	.byte	0x21
	.byte	0x7
	.long	0x7d
	.value	0x41c
	.uleb128 0x11
	.long	.LASF65
	.byte	0xa
	.byte	0x23
	.byte	0x8
	.long	0x84
	.value	0x420
	.uleb128 0x11
	.long	.LASF66
	.byte	0xa
	.byte	0x25
	.byte	0x8
	.long	0x84
	.value	0x428
	.uleb128 0x11
	.long	.LASF67
	.byte	0xa
	.byte	0x26
	.byte	0x8
	.long	0x84
	.value	0x430
	.uleb128 0x11
	.long	.LASF68
	.byte	0xa
	.byte	0x28
	.byte	0x8
	.long	0x84
	.value	0x438
	.uleb128 0x11
	.long	.LASF69
	.byte	0xa
	.byte	0x29
	.byte	0x8
	.long	0x84
	.value	0x440
	.uleb128 0x11
	.long	.LASF70
	.byte	0xa
	.byte	0x2a
	.byte	0x8
	.long	0x84
	.value	0x448
	.uleb128 0x11
	.long	.LASF71
	.byte	0xa
	.byte	0x2b
	.byte	0x8
	.long	0x84
	.value	0x450
	.uleb128 0x11
	.long	.LASF72
	.byte	0xa
	.byte	0x2d
	.byte	0x7
	.long	0x7d
	.value	0x458
	.uleb128 0x11
	.long	.LASF73
	.byte	0xa
	.byte	0x2e
	.byte	0x7
	.long	0x7d
	.value	0x45c
	.uleb128 0x11
	.long	.LASF74
	.byte	0xa
	.byte	0x2f
	.byte	0x7
	.long	0x7d
	.value	0x460
	.uleb128 0x12
	.string	"fp"
	.byte	0xa
	.byte	0x30
	.byte	0x9
	.long	0x2a9
	.value	0x468
	.uleb128 0x11
	.long	.LASF75
	.byte	0xa
	.byte	0x32
	.byte	0x9
	.long	0xa3
	.value	0x470
	.uleb128 0x11
	.long	.LASF76
	.byte	0xa
	.byte	0x33
	.byte	0x9
	.long	0xa3
	.value	0x478
	.uleb128 0x11
	.long	.LASF77
	.byte	0xa
	.byte	0x35
	.byte	0x8
	.long	0x84
	.value	0x480
	.uleb128 0x11
	.long	.LASF78
	.byte	0xa
	.byte	0x37
	.byte	0x7
	.long	0x7d
	.value	0x488
	.uleb128 0x12
	.string	"max"
	.byte	0xa
	.byte	0x39
	.byte	0x9
	.long	0x5b7
	.value	0x490
	.uleb128 0x11
	.long	.LASF79
	.byte	0xa
	.byte	0x3c
	.byte	0x8
	.long	0x84
	.value	0x4b0
	.uleb128 0x11
	.long	.LASF80
	.byte	0xa
	.byte	0x3d
	.byte	0x8
	.long	0x84
	.value	0x4b8
	.uleb128 0x11
	.long	.LASF81
	.byte	0xa
	.byte	0x3e
	.byte	0x8
	.long	0x84
	.value	0x4c0
	.uleb128 0x11
	.long	.LASF82
	.byte	0xa
	.byte	0x3f
	.byte	0x8
	.long	0x84
	.value	0x4c8
	.uleb128 0x11
	.long	.LASF83
	.byte	0xa
	.byte	0x42
	.byte	0x8
	.long	0x84
	.value	0x4d0
	.uleb128 0x11
	.long	.LASF84
	.byte	0xa
	.byte	0x43
	.byte	0x8
	.long	0x84
	.value	0x4d8
	.uleb128 0x11
	.long	.LASF85
	.byte	0xa
	.byte	0x46
	.byte	0x8
	.long	0x84
	.value	0x4e0
	.uleb128 0x11
	.long	.LASF86
	.byte	0xa
	.byte	0x47
	.byte	0x8
	.long	0x84
	.value	0x4e8
	.uleb128 0x11
	.long	.LASF87
	.byte	0xa
	.byte	0x4a
	.byte	0x7
	.long	0x7d
	.value	0x4f0
	.uleb128 0x11
	.long	.LASF88
	.byte	0xa
	.byte	0x4b
	.byte	0x7
	.long	0x7d
	.value	0x4f4
	.uleb128 0x11
	.long	.LASF89
	.byte	0xa
	.byte	0x4c
	.byte	0x7
	.long	0x7d
	.value	0x4f8
	.uleb128 0x11
	.long	.LASF90
	.byte	0xa
	.byte	0x4d
	.byte	0x7
	.long	0x7d
	.value	0x4fc
	.uleb128 0x11
	.long	.LASF91
	.byte	0xa
	.byte	0x4e
	.byte	0x7
	.long	0x7d
	.value	0x500
	.uleb128 0x11
	.long	.LASF92
	.byte	0xa
	.byte	0x51
	.byte	0xc
	.long	0x6f4
	.value	0x508
	.uleb128 0x11
	.long	.LASF93
	.byte	0xa
	.byte	0x52
	.byte	0x7
	.long	0x7d
	.value	0x510
	.uleb128 0x11
	.long	.LASF94
	.byte	0xa
	.byte	0x53
	.byte	0x7
	.long	0x7d
	.value	0x514
	.uleb128 0x11
	.long	.LASF95
	.byte	0xa
	.byte	0x56
	.byte	0x7
	.long	0x7d
	.value	0x518
	.uleb128 0x11
	.long	.LASF96
	.byte	0xa
	.byte	0x57
	.byte	0x7
	.long	0x7d
	.value	0x51c
	.byte	0
	.uleb128 0x8
	.long	.LASF97
	.byte	0x20
	.byte	0x9
	.byte	0xc
	.byte	0x8
	.long	0x5b7
	.uleb128 0x13
	.string	"w"
	.byte	0x9
	.byte	0xe
	.byte	0x8
	.long	0x84
	.byte	0
	.uleb128 0x13
	.string	"h"
	.byte	0x9
	.byte	0xf
	.byte	0x8
	.long	0x84
	.byte	0x8
	.uleb128 0x13
	.string	"x"
	.byte	0x9
	.byte	0x10
	.byte	0x8
	.long	0x84
	.byte	0x10
	.uleb128 0x13
	.string	"y"
	.byte	0x9
	.byte	0x11
	.byte	0x8
	.long	0x84
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.long	.LASF98
	.byte	0x9
	.byte	0x13
	.byte	0x1c
	.long	0x57d
	.uleb128 0x8
	.long	.LASF99
	.byte	0xa0
	.byte	0x9
	.byte	0x16
	.byte	0x8
	.long	0x6ee
	.uleb128 0x13
	.string	"bf"
	.byte	0x9
	.byte	0x18
	.byte	0x9
	.long	0x6ee
	.byte	0
	.uleb128 0x9
	.long	.LASF65
	.byte	0x9
	.byte	0x1a
	.byte	0x8
	.long	0x84
	.byte	0x8
	.uleb128 0x9
	.long	.LASF100
	.byte	0x9
	.byte	0x1b
	.byte	0x8
	.long	0x84
	.byte	0x10
	.uleb128 0x9
	.long	.LASF66
	.byte	0x9
	.byte	0x1d
	.byte	0x8
	.long	0x84
	.byte	0x18
	.uleb128 0x9
	.long	.LASF67
	.byte	0x9
	.byte	0x1e
	.byte	0x8
	.long	0x84
	.byte	0x20
	.uleb128 0x13
	.string	"bbx"
	.byte	0x9
	.byte	0x20
	.byte	0x9
	.long	0x5b7
	.byte	0x28
	.uleb128 0x9
	.long	.LASF101
	.byte	0x9
	.byte	0x21
	.byte	0x8
	.long	0x84
	.byte	0x48
	.uleb128 0x9
	.long	.LASF102
	.byte	0x9
	.byte	0x22
	.byte	0x7
	.long	0x7d
	.byte	0x50
	.uleb128 0x9
	.long	.LASF103
	.byte	0x9
	.byte	0x24
	.byte	0xc
	.long	0x6f4
	.byte	0x58
	.uleb128 0x9
	.long	.LASF104
	.byte	0x9
	.byte	0x25
	.byte	0x7
	.long	0x7d
	.byte	0x60
	.uleb128 0x9
	.long	.LASF105
	.byte	0x9
	.byte	0x26
	.byte	0x7
	.long	0x7d
	.byte	0x64
	.uleb128 0x9
	.long	.LASF92
	.byte	0x9
	.byte	0x2b
	.byte	0xc
	.long	0x6f4
	.byte	0x68
	.uleb128 0x9
	.long	.LASF93
	.byte	0x9
	.byte	0x2c
	.byte	0x7
	.long	0x7d
	.byte	0x70
	.uleb128 0x9
	.long	.LASF94
	.byte	0x9
	.byte	0x2d
	.byte	0x7
	.long	0x7d
	.byte	0x74
	.uleb128 0x9
	.long	.LASF106
	.byte	0x9
	.byte	0x2e
	.byte	0x7
	.long	0x7d
	.byte	0x78
	.uleb128 0x9
	.long	.LASF107
	.byte	0x9
	.byte	0x32
	.byte	0xc
	.long	0x40
	.byte	0x7c
	.uleb128 0x9
	.long	.LASF108
	.byte	0x9
	.byte	0x33
	.byte	0xc
	.long	0x40
	.byte	0x80
	.uleb128 0x9
	.long	.LASF109
	.byte	0x9
	.byte	0x35
	.byte	0x7
	.long	0x7d
	.byte	0x84
	.uleb128 0x9
	.long	.LASF110
	.byte	0x9
	.byte	0x36
	.byte	0xc
	.long	0x40
	.byte	0x88
	.uleb128 0x9
	.long	.LASF111
	.byte	0x9
	.byte	0x37
	.byte	0xc
	.long	0x40
	.byte	0x8c
	.uleb128 0x9
	.long	.LASF112
	.byte	0x9
	.byte	0x38
	.byte	0xc
	.long	0x40
	.byte	0x90
	.uleb128 0x9
	.long	.LASF113
	.byte	0x9
	.byte	0x3a
	.byte	0x8
	.long	0x84
	.byte	0x98
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x32a
	.uleb128 0x6
	.byte	0x8
	.long	0x2fa
	.uleb128 0x2
	.long	.LASF114
	.byte	0x9
	.byte	0x3d
	.byte	0x22
	.long	0x5c3
	.uleb128 0x6
	.byte	0x8
	.long	0x70c
	.uleb128 0x6
	.byte	0x8
	.long	0x6fa
	.uleb128 0xc
	.long	0xa9
	.long	0x723
	.uleb128 0x14
	.long	0x39
	.value	0x3ff
	.byte	0
	.uleb128 0x15
	.long	.LASF115
	.byte	0x1
	.byte	0xd
	.byte	0xa
	.long	0x30b
	.uleb128 0x9
	.byte	0x3
	.quad	bdf_first_table_cnt
	.uleb128 0xc
	.long	0x30b
	.long	0x74a
	.uleb128 0x14
	.long	0x39
	.value	0xefff
	.byte	0
	.uleb128 0x15
	.long	.LASF116
	.byte	0x1
	.byte	0xe
	.byte	0xa
	.long	0x739
	.uleb128 0x9
	.byte	0x3
	.quad	bdf_first_encoding_table
	.uleb128 0x15
	.long	.LASF117
	.byte	0x1
	.byte	0xf
	.byte	0xa
	.long	0x739
	.uleb128 0x9
	.byte	0x3
	.quad	bdf_index_to_second_table
	.uleb128 0x15
	.long	.LASF118
	.byte	0x1
	.byte	0x12
	.byte	0xa
	.long	0x30b
	.uleb128 0x9
	.byte	0x3
	.quad	bdf_second_table_cnt
	.uleb128 0x15
	.long	.LASF119
	.byte	0x1
	.byte	0x13
	.byte	0xa
	.long	0x739
	.uleb128 0x9
	.byte	0x3
	.quad	bdf_second_encoding_table
	.uleb128 0xc
	.long	0x2fa
	.long	0x7b3
	.uleb128 0x14
	.long	0x39
	.value	0xefff
	.byte	0
	.uleb128 0x15
	.long	.LASF120
	.byte	0x1
	.byte	0x14
	.byte	0x9
	.long	0x7a2
	.uleb128 0x9
	.byte	0x3
	.quad	bdf_kerning_values
	.uleb128 0x16
	.long	.LASF135
	.byte	0x1
	.byte	0x9f
	.byte	0x6
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x87f
	.uleb128 0x17
	.string	"bf"
	.byte	0x1
	.byte	0x9f
	.byte	0x26
	.long	0x6ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.long	.LASF121
	.byte	0x1
	.byte	0x9f
	.byte	0x36
	.long	0x2e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.long	.LASF122
	.byte	0x1
	.byte	0x9f
	.byte	0x4c
	.long	0x2e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.long	.LASF123
	.byte	0x1
	.byte	0x9f
	.byte	0x5e
	.long	0x2fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x19
	.long	.LASF124
	.byte	0x1
	.byte	0xa1
	.byte	0x7
	.long	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.long	.LASF125
	.byte	0x1
	.byte	0xa1
	.byte	0xe
	.long	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF126
	.byte	0x1
	.byte	0xa2
	.byte	0x9
	.long	0x70c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.long	.LASF127
	.byte	0x1
	.byte	0xa3
	.byte	0x9
	.long	0x70c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.long	.LASF128
	.byte	0x1
	.byte	0xa4
	.byte	0xb
	.long	0x2fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x19
	.long	.LASF129
	.byte	0x1
	.byte	0xa5
	.byte	0x7
	.long	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1a
	.long	.LASF146
	.byte	0x1
	.byte	0x7e
	.byte	0xa
	.long	0x40
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x90a
	.uleb128 0x18
	.long	.LASF130
	.byte	0x1
	.byte	0x7e
	.byte	0x29
	.long	0x6f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"e1"
	.byte	0x1
	.byte	0x7e
	.byte	0x38
	.long	0x30b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x17
	.string	"e2"
	.byte	0x1
	.byte	0x7e
	.byte	0x45
	.long	0x30b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.long	.LASF123
	.byte	0x1
	.byte	0x7e
	.byte	0x51
	.long	0x2fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x19
	.long	.LASF131
	.byte	0x1
	.byte	0x80
	.byte	0xb
	.long	0x2fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x19
	.long	.LASF128
	.byte	0x1
	.byte	0x81
	.byte	0xb
	.long	0x2fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x19
	.long	.LASF132
	.byte	0x1
	.byte	0x82
	.byte	0xb
	.long	0x2fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.byte	0
	.uleb128 0x1b
	.long	.LASF147
	.byte	0x1
	.byte	0x68
	.byte	0xc
	.long	0x7d
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x990
	.uleb128 0x18
	.long	.LASF130
	.byte	0x1
	.byte	0x68
	.byte	0x2a
	.long	0x6f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"e1"
	.byte	0x1
	.byte	0x68
	.byte	0x39
	.long	0x30b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.string	"e2"
	.byte	0x1
	.byte	0x68
	.byte	0x46
	.long	0x30b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.long	.LASF133
	.byte	0x1
	.byte	0x68
	.byte	0x52
	.long	0x2fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x18
	.long	.LASF134
	.byte	0x1
	.byte	0x68
	.byte	0x64
	.long	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.string	"x"
	.byte	0x1
	.byte	0x6a
	.byte	0x10
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.string	"y"
	.byte	0x1
	.byte	0x6a
	.byte	0x13
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.long	.LASF136
	.byte	0x1
	.byte	0x4c
	.byte	0x6
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x9db
	.uleb128 0x18
	.long	.LASF137
	.byte	0x1
	.byte	0x4c
	.byte	0x29
	.long	0x2e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.long	.LASF138
	.byte	0x1
	.byte	0x4c
	.byte	0x3f
	.long	0x2e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.string	"fp"
	.byte	0x1
	.byte	0x4e
	.byte	0x9
	.long	0x2a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LASF140
	.byte	0x1
	.byte	0x37
	.byte	0xd
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0xa50
	.uleb128 0x17
	.string	"fp"
	.byte	0x1
	.byte	0x37
	.byte	0x29
	.long	0x2a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"pre"
	.byte	0x1
	.byte	0x37
	.byte	0x39
	.long	0x2e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.long	.LASF139
	.byte	0x1
	.byte	0x37
	.byte	0x4a
	.long	0x2e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"cnt"
	.byte	0x1
	.byte	0x37
	.byte	0x59
	.long	0x30b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.byte	0x37
	.byte	0x6d
	.long	0xa50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0x39
	.byte	0xc
	.long	0x30b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x306
	.uleb128 0x1d
	.long	.LASF141
	.byte	0x1
	.byte	0x23
	.byte	0xd
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0xacb
	.uleb128 0x17
	.string	"fp"
	.byte	0x1
	.byte	0x23
	.byte	0x2a
	.long	0x2a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"pre"
	.byte	0x1
	.byte	0x23
	.byte	0x3a
	.long	0x2e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.long	.LASF139
	.byte	0x1
	.byte	0x23
	.byte	0x4b
	.long	0x2e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"cnt"
	.byte	0x1
	.byte	0x23
	.byte	0x5a
	.long	0x30b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.byte	0x23
	.byte	0x6f
	.long	0xacb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0x25
	.byte	0xc
	.long	0x30b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x317
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
.LASF144:
	.string	"/home/step/u8g2-2.29.11/tools/font/bdfconv"
.LASF10:
	.string	"__off_t"
.LASF115:
	.string	"bdf_first_table_cnt"
.LASF14:
	.string	"_IO_read_ptr"
.LASF86:
	.string	"x_max"
.LASF26:
	.string	"_chain"
.LASF5:
	.string	"size_t"
.LASF118:
	.string	"bdf_second_table_cnt"
.LASF32:
	.string	"_shortbuf"
.LASF85:
	.string	"x_min"
.LASF6:
	.string	"__uint8_t"
.LASF132:
	.string	"min_distance_in_pixel"
.LASF91:
	.string	"dx_max_bit_size"
.LASF83:
	.string	"dx_min"
.LASF128:
	.string	"kerning"
.LASF20:
	.string	"_IO_buf_base"
.LASF105:
	.string	"bitmap_height"
.LASF87:
	.string	"bbx_x_max_bit_size"
.LASF127:
	.string	"bg_second"
.LASF103:
	.string	"bitmap_data"
.LASF134:
	.string	"is_save"
.LASF78:
	.string	"bbx_mode"
.LASF35:
	.string	"_codecvt"
.LASF90:
	.string	"bbx_h_max_bit_size"
.LASF53:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF110:
	.string	"rle_bitcnt"
.LASF143:
	.string	"bdf_kern.c"
.LASF27:
	.string	"_fileno"
.LASF60:
	.string	"glyph_cnt"
.LASF15:
	.string	"_IO_read_end"
.LASF111:
	.string	"rle_last_0"
.LASF112:
	.string	"rle_last_1"
.LASF58:
	.string	"is_verbose"
.LASF9:
	.string	"long int"
.LASF13:
	.string	"_flags"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF44:
	.string	"_IO_codecvt"
.LASF52:
	.string	"uint16_t"
.LASF102:
	.string	"is_excluded_from_kerning"
.LASF123:
	.string	"min_distance_in_per_cent_of_char_width"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF72:
	.string	"bitmap_x"
.LASF73:
	.string	"bitmap_y"
.LASF136:
	.string	"bdf_write_kerning_file"
.LASF69:
	.string	"bbx_h"
.LASF109:
	.string	"rle_is_first"
.LASF95:
	.string	"tile_h_size"
.LASF98:
	.string	"bbx_t"
.LASF76:
	.string	"str_copyright"
.LASF68:
	.string	"bbx_w"
.LASF70:
	.string	"bbx_x"
.LASF71:
	.string	"bbx_y"
.LASF101:
	.string	"shift_x"
.LASF43:
	.string	"_IO_marker"
.LASF46:
	.string	"stdin"
.LASF133:
	.string	"kerning_test"
.LASF117:
	.string	"bdf_index_to_second_table"
.LASF1:
	.string	"unsigned int"
.LASF38:
	.string	"_freeres_buf"
.LASF140:
	.string	"bdf_write_uint8_array"
.LASF0:
	.string	"long unsigned int"
.LASF18:
	.string	"_IO_write_ptr"
.LASF138:
	.string	"name"
.LASF49:
	.string	"sys_nerr"
.LASF3:
	.string	"short unsigned int"
.LASF61:
	.string	"glyph_max"
.LASF22:
	.string	"_IO_save_base"
.LASF131:
	.string	"upper_bound"
.LASF33:
	.string	"_lock"
.LASF104:
	.string	"bitmap_width"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF47:
	.string	"stdout"
.LASF65:
	.string	"encoding"
.LASF57:
	.string	"_bdf_font_struct"
.LASF63:
	.string	"line_pos"
.LASF137:
	.string	"kernfile"
.LASF99:
	.string	"_bdf_glyph_struct"
.LASF97:
	.string	"_bbx_struct"
.LASF54:
	.string	"long double"
.LASF121:
	.string	"filename"
.LASF59:
	.string	"glyph_list"
.LASF94:
	.string	"target_cnt"
.LASF19:
	.string	"_IO_write_end"
.LASF89:
	.string	"bbx_w_max_bit_size"
.LASF145:
	.string	"_IO_lock_t"
.LASF56:
	.string	"_IO_FILE"
.LASF141:
	.string	"bdf_write_uint16_array"
.LASF122:
	.string	"fontname"
.LASF50:
	.string	"sys_errlist"
.LASF66:
	.string	"dwidth_x"
.LASF67:
	.string	"dwidth_y"
.LASF25:
	.string	"_markers"
.LASF80:
	.string	"enc_h"
.LASF2:
	.string	"unsigned char"
.LASF125:
	.string	"second"
.LASF79:
	.string	"enc_w"
.LASF81:
	.string	"enc_x"
.LASF82:
	.string	"enc_y"
.LASF77:
	.string	"selected_glyphs"
.LASF7:
	.string	"short int"
.LASF139:
	.string	"post"
.LASF45:
	.string	"_IO_wide_data"
.LASF135:
	.string	"bdf_calculate_all_kerning"
.LASF31:
	.string	"_vtable_offset"
.LASF93:
	.string	"target_max"
.LASF116:
	.string	"bdf_first_encoding_table"
.LASF92:
	.string	"target_data"
.LASF42:
	.string	"FILE"
.LASF129:
	.string	"is_first_encoding_added"
.LASF64:
	.string	"is_bitmap_parsing"
.LASF124:
	.string	"first"
.LASF100:
	.string	"map_to"
.LASF12:
	.string	"char"
.LASF62:
	.string	"line_buf"
.LASF8:
	.string	"__uint16_t"
.LASF55:
	.string	"bf_t"
.LASF96:
	.string	"tile_v_size"
.LASF142:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF114:
	.string	"bg_t"
.LASF11:
	.string	"__off64_t"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF107:
	.string	"rle_bits_per_0"
.LASF108:
	.string	"rle_bits_per_1"
.LASF146:
	.string	"bdf_calculate_kerning"
.LASF39:
	.string	"__pad5"
.LASF147:
	.string	"bdf_is_glyph_overlap"
.LASF41:
	.string	"_unused2"
.LASF48:
	.string	"stderr"
.LASF120:
	.string	"bdf_kerning_values"
.LASF106:
	.string	"target_bit_pos"
.LASF126:
	.string	"bg_first"
.LASF130:
	.string	"font"
.LASF51:
	.string	"uint8_t"
.LASF23:
	.string	"_IO_backup_base"
.LASF84:
	.string	"dx_max"
.LASF75:
	.string	"str_font"
.LASF37:
	.string	"_freeres_list"
.LASF88:
	.string	"bbx_y_max_bit_size"
.LASF113:
	.string	"width_deviation"
.LASF36:
	.string	"_wide_data"
.LASF74:
	.string	"glyph_pos"
.LASF17:
	.string	"_IO_write_base"
.LASF119:
	.string	"bdf_second_encoding_table"
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
