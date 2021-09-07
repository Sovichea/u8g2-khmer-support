	.file	"bdf_font.c"
	.text
.Ltext0:
	.globl	bf_Error
	.type	bf_Error, @function
bf_Error:
.LFB6:
	.file 1 "bdf_font.c"
	.loc 1 8 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L2
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L2:
	.loc 1 8 1
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	.loc 1 10 3
	movl	$16, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	.loc 1 11 3
	leaq	-208(%rbp), %rdx
	movq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	vprintf@PLT
	.loc 1 12 3
	movl	$10, %edi
	call	putchar@PLT
	.loc 1 14 1
	nop
	movq	-184(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	bf_Error, .-bf_Error
	.globl	bf_Log
	.type	bf_Log, @function
bf_Log:
.LFB7:
	.loc 1 17 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L5
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L5:
	.loc 1 17 1
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	.loc 1 19 3
	movl	$16, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	.loc 1 20 10
	movq	-216(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 20 6
	testl	%eax, %eax
	je	.L8
	.loc 1 22 5
	leaq	-208(%rbp), %rdx
	movq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	vprintf@PLT
	.loc 1 23 5
	movl	$10, %edi
	call	putchar@PLT
.L8:
	.loc 1 26 1
	nop
	movq	-184(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	bf_Log, .-bf_Log
	.globl	bf_Open
	.type	bf_Open, @function
bf_Open:
.LFB8:
	.loc 1 32 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	.loc 1 34 16
	movl	$1312, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	.loc 1 35 6
	cmpq	$0, -8(%rbp)
	je	.L10
	.loc 1 37 20
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 38 20
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 1 39 19
	movq	-8(%rbp), %rax
	movl	$0, 16(%rax)
	.loc 1 40 19
	movq	-8(%rbp), %rax
	movl	$0, 20(%rax)
	.loc 1 41 18
	movq	-8(%rbp), %rax
	movq	$0, 1136(%rax)
	.loc 1 42 23
	movq	-8(%rbp), %rax
	movq	$0, 1144(%rax)
	.loc 1 43 21
	movq	-8(%rbp), %rax
	movq	$0, 1288(%rax)
	.loc 1 44 20
	movq	-8(%rbp), %rax
	movl	$0, 1296(%rax)
	.loc 1 45 20
	movq	-8(%rbp), %rax
	movl	$0, 1300(%rax)
	.loc 1 46 25
	movq	-8(%rbp), %rax
	movq	$0, 1152(%rax)
	.loc 1 48 15
	movq	-8(%rbp), %rax
	movq	$0, 1200(%rax)
	.loc 1 49 15
	movq	-8(%rbp), %rax
	movq	$0, 1208(%rax)
	.loc 1 50 15
	movq	-8(%rbp), %rax
	movq	$0, 1216(%rax)
	.loc 1 51 15
	movq	-8(%rbp), %rax
	movq	$0, 1224(%rax)
	.loc 1 53 18
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, 1160(%rax)
	.loc 1 54 21
	movq	-8(%rbp), %rax
	movl	$1, 1304(%rax)
	.loc 1 55 21
	movq	-8(%rbp), %rax
	movl	$1, 1308(%rax)
	.loc 1 57 12
	movq	-8(%rbp), %rax
	jmp	.L11
.L10:
	.loc 1 59 10
	movl	$0, %eax
.L11:
	.loc 1 60 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	bf_Open, .-bf_Open
	.globl	bf_Clear
	.type	bf_Clear, @function
bf_Clear:
.LFB9:
	.loc 1 63 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 65 10
	movl	$0, -4(%rbp)
	.loc 1 65 3
	jmp	.L13
.L14:
	.loc 1 67 13 discriminator 3
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 67 25 discriminator 3
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 1 67 5 discriminator 3
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 65 35 discriminator 3
	addl	$1, -4(%rbp)
.L13:
	.loc 1 65 21 discriminator 1
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 65 3 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L14
	.loc 1 69 17
	movq	-24(%rbp), %rax
	movl	$0, 16(%rax)
	.loc 1 71 10
	movq	-24(%rbp), %rax
	movq	1136(%rax), %rax
	.loc 1 71 6
	testq	%rax, %rax
	je	.L15
	.loc 1 72 12
	movq	-24(%rbp), %rax
	movq	1136(%rax), %rax
	.loc 1 72 5
	movq	%rax, %rdi
	call	free@PLT
.L15:
	.loc 1 73 16
	movq	-24(%rbp), %rax
	movq	$0, 1136(%rax)
	.loc 1 74 10
	movq	-24(%rbp), %rax
	movq	1144(%rax), %rax
	.loc 1 74 6
	testq	%rax, %rax
	je	.L16
	.loc 1 75 12
	movq	-24(%rbp), %rax
	movq	1144(%rax), %rax
	.loc 1 75 5
	movq	%rax, %rdi
	call	free@PLT
.L16:
	.loc 1 76 21
	movq	-24(%rbp), %rax
	movq	$0, 1144(%rax)
	.loc 1 77 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	bf_Clear, .-bf_Clear
	.globl	bf_Close
	.type	bf_Close, @function
bf_Close:
.LFB10:
	.loc 1 80 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 81 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	bf_Clear
	.loc 1 82 10
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 82 6
	testq	%rax, %rax
	je	.L18
	.loc 1 83 12
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 83 5
	movq	%rax, %rdi
	call	free@PLT
.L18:
	.loc 1 84 10
	movq	-8(%rbp), %rax
	movq	1288(%rax), %rax
	.loc 1 84 6
	testq	%rax, %rax
	je	.L19
	.loc 1 85 12
	movq	-8(%rbp), %rax
	movq	1288(%rax), %rax
	.loc 1 85 5
	movq	%rax, %rdi
	call	free@PLT
.L19:
	.loc 1 86 18
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 1 87 17
	movq	-8(%rbp), %rax
	movl	$0, 20(%rax)
	.loc 1 88 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 89 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	bf_Close, .-bf_Close
	.type	bf_extend, @function
bf_extend:
.LFB11:
	.loc 1 92 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 93 7
	movl	$16, -12(%rbp)
	.loc 1 95 10
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 95 6
	testq	%rax, %rax
	jne	.L21
	.loc 1 97 11
	movl	-12(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	.loc 1 98 19
	movq	-24(%rbp), %rax
	movl	$0, 20(%rax)
	jmp	.L22
.L21:
	.loc 1 102 38
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	.loc 1 102 50
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	.loc 1 102 11
	leaq	0(,%rax,8), %rdx
	.loc 1 102 21
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 102 11
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, -8(%rbp)
.L22:
	.loc 1 104 6
	cmpq	$0, -8(%rbp)
	jne	.L23
	.loc 1 105 12
	movl	$0, %eax
	jmp	.L24
.L23:
	.loc 1 106 17
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	movl	-12(%rbp), %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 20(%rax)
	.loc 1 107 18
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 1 108 10
	movl	$1, %eax
.L24:
	.loc 1 109 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	bf_extend, .-bf_extend
	.globl	bf_AddGlyph
	.type	bf_AddGlyph, @function
bf_AddGlyph:
.LFB12:
	.loc 1 113 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	.loc 1 114 10
	jmp	.L26
.L28:
	.loc 1 115 12
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	bf_extend
	.loc 1 115 10
	testl	%eax, %eax
	jne	.L26
	.loc 1 116 9
	movl	$-1, %eax
	jmp	.L27
.L26:
	.loc 1 114 14
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	.loc 1 114 31
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 114 10
	cmpl	%eax, %edx
	jle	.L28
	.loc 1 117 7
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 117 22
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	cltq
	.loc 1 117 19
	salq	$3, %rax
	leaq	(%rdx,%rax), %rbx
	.loc 1 117 37
	call	bg_Open@PLT
	.loc 1 117 35
	movq	%rax, (%rbx)
	.loc 1 118 12
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 118 27
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	cltq
	.loc 1 118 24
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 1 118 8
	testq	%rax, %rax
	jne	.L29
	.loc 1 119 14
	movl	$-1, %eax
	jmp	.L27
.L29:
	.loc 1 120 7
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 120 22
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	cltq
	.loc 1 120 19
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 1 120 39
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 1 121 7
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 121 18
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 16(%rax)
	.loc 1 122 14
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 122 25
	subl	$1, %eax
.L27:
	.loc 1 123 1
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	bf_AddGlyph, .-bf_AddGlyph
	.type	bf_extend_target_data, @function
bf_extend_target_data:
.LFB13:
	.loc 1 127 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 128 7
	movl	$16, -12(%rbp)
	.loc 1 131 10
	movq	-24(%rbp), %rax
	movq	1288(%rax), %rax
	.loc 1 131 6
	testq	%rax, %rax
	jne	.L31
	.loc 1 133 11
	movl	-12(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	.loc 1 134 20
	movq	-24(%rbp), %rax
	movl	$0, 1296(%rax)
	jmp	.L32
.L31:
	.loc 1 138 39
	movq	-24(%rbp), %rax
	movl	1296(%rax), %edx
	.loc 1 138 52
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	.loc 1 138 11
	movslq	%eax, %rdx
	.loc 1 138 21
	movq	-24(%rbp), %rax
	movq	1288(%rax), %rax
	.loc 1 138 11
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, -8(%rbp)
.L32:
	.loc 1 140 6
	cmpq	$0, -8(%rbp)
	jne	.L33
	.loc 1 141 12
	movl	$0, %eax
	jmp	.L34
.L33:
	.loc 1 142 19
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 1288(%rax)
	.loc 1 143 10
	movq	-24(%rbp), %rax
	movl	1296(%rax), %eax
	movl	%eax, -16(%rbp)
	.loc 1 143 3
	jmp	.L35
.L36:
	.loc 1 144 9 discriminator 3
	movq	-24(%rbp), %rax
	movq	1288(%rax), %rdx
	.loc 1 144 22 discriminator 3
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	.loc 1 144 26 discriminator 3
	movb	$0, (%rax)
	.loc 1 143 58 discriminator 3
	addl	$1, -16(%rbp)
.L35:
	.loc 1 143 34 discriminator 1
	movq	-24(%rbp), %rax
	movl	1296(%rax), %edx
	.loc 1 143 47 discriminator 1
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	.loc 1 143 3 discriminator 1
	cmpl	%eax, -16(%rbp)
	jl	.L36
	.loc 1 145 18
	movq	-24(%rbp), %rax
	movl	1296(%rax), %edx
	movl	-12(%rbp), %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 1296(%rax)
	.loc 1 146 10
	movl	$1, %eax
.L34:
	.loc 1 147 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	bf_extend_target_data, .-bf_extend_target_data
	.globl	bf_AddTargetData
	.type	bf_AddTargetData, @function
bf_AddTargetData:
.LFB14:
	.loc 1 150 1
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
	.loc 1 151 8
	jmp	.L38
.L40:
	.loc 1 152 10
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	bf_extend_target_data
	.loc 1 152 8
	testl	%eax, %eax
	jne	.L38
	.loc 1 153 14
	movl	$-1, %eax
	jmp	.L39
.L38:
	.loc 1 151 12
	movq	-8(%rbp), %rax
	movl	1296(%rax), %edx
	.loc 1 151 30
	movq	-8(%rbp), %rax
	movl	1300(%rax), %eax
	.loc 1 151 8
	cmpl	%eax, %edx
	jle	.L40
	.loc 1 154 5
	movq	-8(%rbp), %rax
	movq	1288(%rax), %rdx
	.loc 1 154 21
	movq	-8(%rbp), %rax
	movl	1300(%rax), %eax
	cltq
	.loc 1 154 18
	addq	%rax, %rdx
	.loc 1 154 35
	movzbl	-12(%rbp), %eax
	movb	%al, (%rdx)
	.loc 1 155 5
	movq	-8(%rbp), %rax
	movl	1300(%rax), %eax
	.loc 1 155 17
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 1300(%rax)
	.loc 1 156 12
	movq	-8(%rbp), %rax
	movl	1300(%rax), %eax
	.loc 1 156 24
	subl	$1, %eax
.L39:
	.loc 1 157 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	bf_AddTargetData, .-bf_AddTargetData
	.globl	bf_ClearTargetData
	.type	bf_ClearTargetData, @function
bf_ClearTargetData:
.LFB15:
	.loc 1 160 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	.loc 1 162 10
	movl	$0, -4(%rbp)
	.loc 1 162 3
	jmp	.L42
.L43:
	.loc 1 163 7 discriminator 3
	movq	-24(%rbp), %rax
	movq	1288(%rax), %rdx
	.loc 1 163 20 discriminator 3
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	.loc 1 163 24 discriminator 3
	movb	$0, (%rax)
	.loc 1 162 36 discriminator 3
	addl	$1, -4(%rbp)
.L42:
	.loc 1 162 21 discriminator 1
	movq	-24(%rbp), %rax
	movl	1296(%rax), %eax
	.loc 1 162 3 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L43
	.loc 1 164 18
	movq	-24(%rbp), %rax
	movl	$0, 1300(%rax)
	.loc 1 165 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	bf_ClearTargetData, .-bf_ClearTargetData
	.globl	bf_CalculateSelectedNumberOfGlyphs
	.type	bf_CalculateSelectedNumberOfGlyphs, @function
bf_CalculateSelectedNumberOfGlyphs:
.LFB16:
	.loc 1 168 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	.loc 1 171 23
	movq	-24(%rbp), %rax
	movq	$0, 1152(%rax)
	.loc 1 174 10
	movl	$0, -12(%rbp)
	.loc 1 174 3
	jmp	.L45
.L47:
	.loc 1 176 12
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 176 24
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 1 176 8
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 177 12
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 177 8
	testq	%rax, %rax
	js	.L46
	.loc 1 179 9
	movq	-24(%rbp), %rax
	movq	1152(%rax), %rax
	.loc 1 179 26
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 1152(%rax)
.L46:
	.loc 1 174 35 discriminator 2
	addl	$1, -12(%rbp)
.L45:
	.loc 1 174 21 discriminator 1
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 174 3 discriminator 1
	cmpl	%eax, -12(%rbp)
	jl	.L47
	.loc 1 182 1
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	bf_CalculateSelectedNumberOfGlyphs, .-bf_CalculateSelectedNumberOfGlyphs
	.section	.rodata
.LC0:
	.string	"Reduce: Start"
.LC1:
	.string	"Reduce: End"
	.text
	.globl	bf_ReduceAllGlyph
	.type	bf_ReduceAllGlyph, @function
bf_ReduceAllGlyph:
.LFB17:
	.loc 1 186 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 1 191 3
	movq	-40(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	bf_Log
	.loc 1 193 10
	movl	$0, -20(%rbp)
	.loc 1 193 3
	jmp	.L49
.L51:
	.loc 1 195 12
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 195 24
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 1 195 8
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 196 12
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 196 8
	testq	%rax, %rax
	js	.L50
	.loc 1 198 7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	bg_ReduceGlyph@PLT
	.loc 1 200 17
	movq	-8(%rbp), %rax
	movl	96(%rax), %eax
	movl	%eax, %edx
	.loc 1 200 41
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	.loc 1 200 32
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 1 200 13
	movl	%eax, -16(%rbp)
	.loc 1 201 17
	movq	-8(%rbp), %rax
	movl	100(%rax), %eax
	movl	%eax, %edx
	.loc 1 201 42
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	.loc 1 201 33
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 1 201 13
	movl	%eax, -12(%rbp)
.L50:
	.loc 1 193 35 discriminator 2
	addl	$1, -20(%rbp)
.L49:
	.loc 1 193 21 discriminator 1
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 193 3 discriminator 1
	cmpl	%eax, -20(%rbp)
	jl	.L51
	.loc 1 208 3
	movq	-40(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	bf_Log
	.loc 1 210 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	bf_ReduceAllGlyph, .-bf_ReduceAllGlyph
	.globl	bf_ShowAllGlyphs
	.type	bf_ShowAllGlyphs, @function
bf_ShowAllGlyphs:
.LFB18:
	.loc 1 213 1
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
	.loc 1 216 10
	movl	$0, -12(%rbp)
	.loc 1 216 3
	jmp	.L53
.L55:
	.loc 1 218 12
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 218 24
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 1 218 8
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 219 12
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 219 8
	testq	%rax, %rax
	js	.L54
	.loc 1 221 7
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bg_ShowBitmap@PLT
.L54:
	.loc 1 216 35 discriminator 2
	addl	$1, -12(%rbp)
.L53:
	.loc 1 216 21 discriminator 1
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 216 3 discriminator 1
	cmpl	%eax, -12(%rbp)
	jl	.L55
	.loc 1 224 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	bf_ShowAllGlyphs, .-bf_ShowAllGlyphs
	.globl	bf_GetIndexByEncoding
	.type	bf_GetIndexByEncoding, @function
bf_GetIndexByEncoding:
.LFB19:
	.loc 1 227 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 230 10
	movl	$0, -12(%rbp)
	.loc 1 230 3
	jmp	.L57
.L60:
	.loc 1 232 12
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 232 24
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 1 232 8
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 233 12
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 233 8
	cmpq	%rax, -32(%rbp)
	jne	.L58
	.loc 1 234 14
	movl	-12(%rbp), %eax
	jmp	.L59
.L58:
	.loc 1 230 35 discriminator 2
	addl	$1, -12(%rbp)
.L57:
	.loc 1 230 21 discriminator 1
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 230 3 discriminator 1
	cmpl	%eax, -12(%rbp)
	jl	.L60
	.loc 1 236 10
	movl	$-1, %eax
.L59:
	.loc 1 237 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	bf_GetIndexByEncoding, .-bf_GetIndexByEncoding
	.section	.rodata
	.align 8
.LC2:
	.string	"CalculateMaxBBX: x=%ld, y=%ld, w=%ld, h=%ld"
	.align 8
.LC3:
	.string	"CalculateMaxBBX: Encodings x=%ld, y=%ld, w=%ld, h=%ld"
	.text
	.globl	bf_CalculateMaxBBX
	.type	bf_CalculateMaxBBX, @function
bf_CalculateMaxBBX:
.LFB20:
	.loc 1 240 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 1 242 7
	movl	$1, -16(%rbp)
	.loc 1 247 10
	movl	$0, -20(%rbp)
	.loc 1 247 3
	jmp	.L62
.L69:
	.loc 1 249 12
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 249 24
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 1 249 8
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 250 12
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 250 8
	testq	%rax, %rax
	js	.L71
	.loc 1 252 10
	cmpl	$0, -16(%rbp)
	je	.L64
	.loc 1 254 10
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rax
	movq	48(%rsi), %rdx
	movq	%rax, 1168(%rcx)
	movq	%rdx, 1176(%rcx)
	movq	56(%rsi), %rax
	movq	64(%rsi), %rdx
	movq	%rax, 1184(%rcx)
	movq	%rdx, 1192(%rcx)
	.loc 1 255 16
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 255 12
	movq	-40(%rbp), %rax
	movq	%rdx, 1216(%rax)
	.loc 1 256 16
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 256 12
	movq	-40(%rbp), %rax
	movq	%rdx, 1224(%rax)
	.loc 1 257 16
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 257 12
	movq	-40(%rbp), %rax
	movq	%rdx, 1200(%rax)
	.loc 1 258 16
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 258 12
	movq	-40(%rbp), %rax
	movq	%rdx, 1208(%rax)
	.loc 1 259 11
	movl	$0, -16(%rbp)
	jmp	.L63
.L64:
	.loc 1 263 12
	movq	-40(%rbp), %rax
	leaq	1168(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bg_Max@PLT
	movl	%eax, -12(%rbp)
	.loc 1 264 2
	cmpl	$4, -12(%rbp)
	je	.L65
	cmpl	$4, -12(%rbp)
	jg	.L63
	cmpl	$3, -12(%rbp)
	je	.L66
	cmpl	$3, -12(%rbp)
	jg	.L63
	cmpl	$1, -12(%rbp)
	je	.L67
	cmpl	$2, -12(%rbp)
	je	.L68
	jmp	.L63
.L67:
	.loc 1 267 20
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 267 16
	movq	-40(%rbp), %rax
	movq	%rdx, 1200(%rax)
	.loc 1 268 6
	jmp	.L63
.L68:
	.loc 1 270 20
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 270 16
	movq	-40(%rbp), %rax
	movq	%rdx, 1208(%rax)
	.loc 1 271 6
	jmp	.L63
.L66:
	.loc 1 273 20
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 273 16
	movq	-40(%rbp), %rax
	movq	%rdx, 1216(%rax)
	.loc 1 274 6
	jmp	.L63
.L65:
	.loc 1 276 20
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 276 16
	movq	-40(%rbp), %rax
	movq	%rdx, 1224(%rax)
	.loc 1 277 6
	jmp	.L63
.L71:
	.loc 1 279 7
	nop
.L63:
	.loc 1 247 35 discriminator 2
	addl	$1, -20(%rbp)
.L62:
	.loc 1 247 21 discriminator 1
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 247 3 discriminator 1
	cmpl	%eax, -20(%rbp)
	jl	.L69
	.loc 1 283 10
	movq	-40(%rbp), %rax
	movl	1160(%rax), %eax
	.loc 1 283 6
	cmpl	$3, %eax
	jne	.L70
	.loc 1 289 15
	movq	-40(%rbp), %rax
	movq	$8, 1168(%rax)
	.loc 1 290 15
	movq	-40(%rbp), %rax
	movq	$7, 1176(%rax)
.L70:
	.loc 1 294 3
	movq	-40(%rbp), %rax
	movq	1176(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	1168(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	1192(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	1184(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	bf_Log
	.loc 1 295 3
	movq	-40(%rbp), %rax
	movq	1208(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	1200(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	1224(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	1216(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	bf_Log
	.loc 1 296 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	bf_CalculateMaxBBX, .-bf_CalculateMaxBBX
	.section	.rodata
	.align 8
.LC4:
	.string	"bf_CalculateMinMaxDWidth: dx_min=%ld, dx_max=%ld"
	.align 8
.LC5:
	.string	"bf_CalculateMinMaxDWidth: x_min=%ld, x_max=%ld"
	.align 8
.LC6:
	.string	"bf_CalculateMinMaxDWidth: Monospaced font."
	.text
	.globl	bf_CalculateMinMaxDWidth
	.type	bf_CalculateMinMaxDWidth, @function
bf_CalculateMinMaxDWidth:
.LFB21:
	.loc 1 299 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 303 14
	movq	-24(%rbp), %rax
	movq	$32767, 1232(%rax)
	.loc 1 304 14
	movq	-24(%rbp), %rax
	movq	$-32767, 1240(%rax)
	.loc 1 306 13
	movq	-24(%rbp), %rax
	movq	$32767, 1248(%rax)
	.loc 1 307 13
	movq	-24(%rbp), %rax
	movq	$-32767, 1256(%rax)
	.loc 1 309 10
	movl	$0, -12(%rbp)
	.loc 1 309 3
	jmp	.L73
.L78:
	.loc 1 311 12
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 311 24
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 1 311 8
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 312 12
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 312 8
	testq	%rax, %rax
	js	.L74
	.loc 1 314 14
	movq	-24(%rbp), %rax
	movq	1232(%rax), %rdx
	.loc 1 314 27
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 314 10
	cmpq	%rax, %rdx
	jle	.L75
	.loc 1 315 17
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 1 315 13
	movq	-24(%rbp), %rax
	movq	%rdx, 1232(%rax)
.L75:
	.loc 1 316 14
	movq	-24(%rbp), %rax
	movq	1240(%rax), %rdx
	.loc 1 316 27
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 316 10
	cmpq	%rax, %rdx
	jge	.L76
	.loc 1 317 17
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 1 317 13
	movq	-24(%rbp), %rax
	movq	%rdx, 1240(%rax)
.L76:
	.loc 1 319 14
	movq	-24(%rbp), %rax
	movq	1248(%rax), %rdx
	.loc 1 319 31
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	.loc 1 319 10
	cmpq	%rax, %rdx
	jle	.L77
	.loc 1 320 21
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdx
	.loc 1 320 12
	movq	-24(%rbp), %rax
	movq	%rdx, 1248(%rax)
.L77:
	.loc 1 321 14
	movq	-24(%rbp), %rax
	movq	1256(%rax), %rdx
	.loc 1 321 31
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	.loc 1 321 10
	cmpq	%rax, %rdx
	jge	.L74
	.loc 1 322 21
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdx
	.loc 1 322 12
	movq	-24(%rbp), %rax
	movq	%rdx, 1256(%rax)
.L74:
	.loc 1 309 35 discriminator 2
	addl	$1, -12(%rbp)
.L73:
	.loc 1 309 21 discriminator 1
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 309 3 discriminator 1
	cmpl	%eax, -12(%rbp)
	jl	.L78
	.loc 1 326 3
	movq	-24(%rbp), %rax
	movq	1240(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	1232(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	bf_Log
	.loc 1 327 3
	movq	-24(%rbp), %rax
	movq	1256(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	1248(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	bf_Log
	.loc 1 328 10
	movq	-24(%rbp), %rax
	movq	1232(%rax), %rdx
	.loc 1 328 24
	movq	-24(%rbp), %rax
	movq	1240(%rax), %rax
	.loc 1 328 6
	cmpq	%rax, %rdx
	jne	.L80
	.loc 1 328 38 discriminator 1
	movq	-24(%rbp), %rax
	movq	1248(%rax), %rax
	.loc 1 328 33 discriminator 1
	testq	%rax, %rax
	js	.L80
	.loc 1 330 5
	movq	-24(%rbp), %rax
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	bf_Log
.L80:
	.loc 1 333 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	bf_CalculateMinMaxDWidth, .-bf_CalculateMinMaxDWidth
	.globl	get_unsigned_bit_size
	.type	get_unsigned_bit_size, @function
get_unsigned_bit_size:
.LFB22:
	.loc 1 336 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	.loc 1 337 7
	movl	$0, -4(%rbp)
	.loc 1 338 8
	jmp	.L82
.L83:
	.loc 1 340 7
	movq	-24(%rbp), %rax
	shrq	%rax
	movq	%rax, -24(%rbp)
	.loc 1 341 6
	addl	$1, -4(%rbp)
.L82:
	.loc 1 338 8
	cmpq	$0, -24(%rbp)
	jne	.L83
	.loc 1 343 10
	movl	-4(%rbp), %eax
	.loc 1 344 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	get_unsigned_bit_size, .-get_unsigned_bit_size
	.globl	get_signed_bit_size
	.type	get_signed_bit_size, @function
get_signed_bit_size:
.LFB23:
	.loc 1 347 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 348 6
	cmpq	$0, -8(%rbp)
	jns	.L86
	.loc 1 349 36
	movq	-8(%rbp), %rax
	notq	%rax
	.loc 1 349 12
	movq	%rax, %rdi
	call	get_unsigned_bit_size
	.loc 1 349 40
	addl	$1, %eax
	jmp	.L87
.L86:
	.loc 1 350 10
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	get_unsigned_bit_size
	.loc 1 350 35
	addl	$1, %eax
.L87:
	.loc 1 351 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	get_signed_bit_size, .-get_signed_bit_size
	.globl	bf_copy_bbx_and_update_shift
	.type	bf_copy_bbx_and_update_shift, @function
bf_copy_bbx_and_update_shift:
.LFB24:
	.loc 1 360 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 1 362 14
	movq	-8(%rbp), %rax
	movl	1160(%rax), %eax
	.loc 1 362 10
	testl	%eax, %eax
	jne	.L89
	.loc 1 364 14
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	40(%rsi), %rax
	movq	48(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	56(%rsi), %rax
	movq	64(%rsi), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	jmp	.L90
.L89:
	.loc 1 366 19
	movq	-8(%rbp), %rax
	movl	1160(%rax), %eax
	.loc 1 366 15
	cmpl	$2, %eax
	jne	.L91
	.loc 1 368 14
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	1168(%rsi), %rax
	movq	1176(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	1184(%rsi), %rax
	movq	1192(%rsi), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	.loc 1 369 16
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	.loc 1 370 14
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	.loc 1 370 5
	testq	%rax, %rax
	jns	.L92
	.loc 1 371 25
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdx
	.loc 1 371 16
	movq	-24(%rbp), %rax
	movq	%rdx, 72(%rax)
.L92:
	.loc 1 372 17
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 372 25
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 372 5
	cmpq	%rax, %rdx
	jge	.L90
	.loc 1 373 22
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 1 373 18
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L90
.L91:
	.loc 1 375 19
	movq	-8(%rbp), %rax
	movl	1160(%rax), %eax
	.loc 1 375 15
	cmpl	$4, %eax
	jne	.L93
	.loc 1 377 14
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	1168(%rsi), %rax
	movq	1176(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	1184(%rsi), %rax
	movq	1192(%rsi), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	.loc 1 378 16
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	.loc 1 379 14
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	.loc 1 379 5
	testq	%rax, %rax
	jns	.L94
	.loc 1 380 25
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdx
	.loc 1 380 16
	movq	-24(%rbp), %rax
	movq	%rdx, 72(%rax)
.L94:
	.loc 1 381 23
	movq	-16(%rbp), %rax
	movq	$5, (%rax)
	jmp	.L90
.L93:
	.loc 1 383 19
	movq	-8(%rbp), %rax
	movl	1160(%rax), %eax
	.loc 1 383 15
	cmpl	$3, %eax
	jne	.L95
	.loc 1 392 16
	movq	-16(%rbp), %rax
	movq	$8, (%rax)
	.loc 1 393 16
	movq	-16(%rbp), %rax
	movq	$8, 8(%rax)
	.loc 1 394 25
	movq	-8(%rbp), %rax
	movq	1184(%rax), %rdx
	.loc 1 394 16
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 1 395 25
	movq	-8(%rbp), %rax
	movq	1192(%rax), %rdx
	.loc 1 395 16
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	.loc 1 396 16
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	.loc 1 397 14
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	.loc 1 397 5
	testq	%rax, %rax
	jns	.L90
	.loc 1 398 25
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdx
	.loc 1 398 16
	movq	-24(%rbp), %rax
	movq	%rdx, 72(%rax)
	jmp	.L90
.L95:
	.loc 1 403 14
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	1168(%rsi), %rax
	movq	1176(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	1184(%rsi), %rax
	movq	1192(%rsi), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	.loc 1 404 25
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	.loc 1 404 16
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 1 405 25
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdx
	.loc 1 405 16
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 1 406 16
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	.loc 1 407 14
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	.loc 1 407 5
	testq	%rax, %rax
	jns	.L96
	.loc 1 410 18
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 410 28
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	.loc 1 410 18
	subq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 1 411 25
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdx
	.loc 1 411 16
	movq	-24(%rbp), %rax
	movq	%rdx, 72(%rax)
	jmp	.L97
.L96:
	.loc 1 416 18
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 416 28
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	.loc 1 416 18
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L97:
	.loc 1 419 17
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 419 25
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 419 5
	cmpq	%rax, %rdx
	jge	.L90
	.loc 1 420 22
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 1 420 18
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L90:
	.loc 1 423 35
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 423 48
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	.loc 1 423 39
	subq	%rax, %rdx
	.loc 1 423 23
	movq	-24(%rbp), %rax
	movq	%rdx, 152(%rax)
	.loc 1 424 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	bf_copy_bbx_and_update_shift, .-bf_copy_bbx_and_update_shift
	.section	.rodata
	.align 8
.LC7:
	.string	"bf_CalculateMaxBitFieldSize: bbx.x=%d, bbx.y=%d, bbx.w=%d, bbx.h=%d, dwidth=%d"
	.text
	.globl	bf_CalculateMaxBitFieldSize
	.type	bf_CalculateMaxBitFieldSize, @function
bf_CalculateMaxBitFieldSize:
.LFB25:
	.loc 1 427 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	.loc 1 427 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 432 26
	movq	-72(%rbp), %rax
	movl	$0, 1264(%rax)
	.loc 1 433 26
	movq	-72(%rbp), %rax
	movl	$0, 1268(%rax)
	.loc 1 434 26
	movq	-72(%rbp), %rax
	movl	$0, 1272(%rax)
	.loc 1 435 26
	movq	-72(%rbp), %rax
	movl	$0, 1276(%rax)
	.loc 1 436 23
	movq	-72(%rbp), %rax
	movl	$0, 1280(%rax)
	.loc 1 437 10
	movl	$0, -64(%rbp)
	.loc 1 437 3
	jmp	.L99
.L108:
	.loc 1 439 12
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 439 24
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 1 439 8
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	.loc 1 440 12
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 440 8
	testq	%rax, %rax
	js	.L100
	.loc 1 443 7
	movq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bf_copy_bbx_and_update_shift
	.loc 1 495 43
	movq	-48(%rbp), %rax
	.loc 1 495 12
	movq	%rax, %rdi
	call	get_unsigned_bit_size
	movl	%eax, -60(%rbp)
	.loc 1 496 14
	movq	-72(%rbp), %rax
	movl	1272(%rax), %eax
	.loc 1 496 10
	cmpl	%eax, -60(%rbp)
	jle	.L101
	.loc 1 497 25
	movq	-72(%rbp), %rax
	movl	-60(%rbp), %edx
	movl	%edx, 1272(%rax)
.L101:
	.loc 1 499 43
	movq	-40(%rbp), %rax
	.loc 1 499 12
	movq	%rax, %rdi
	call	get_unsigned_bit_size
	movl	%eax, -60(%rbp)
	.loc 1 500 14
	movq	-72(%rbp), %rax
	movl	1276(%rax), %eax
	.loc 1 500 10
	cmpl	%eax, -60(%rbp)
	jle	.L102
	.loc 1 501 25
	movq	-72(%rbp), %rax
	movl	-60(%rbp), %edx
	movl	%edx, 1276(%rax)
.L102:
	.loc 1 504 12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	get_signed_bit_size
	movl	%eax, -60(%rbp)
	.loc 1 505 14
	movq	-72(%rbp), %rax
	movl	1264(%rax), %eax
	.loc 1 505 10
	cmpl	%eax, -60(%rbp)
	jle	.L103
	.loc 1 506 25
	movq	-72(%rbp), %rax
	movl	-60(%rbp), %edx
	movl	%edx, 1264(%rax)
.L103:
	.loc 1 509 12
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	get_signed_bit_size
	movl	%eax, -60(%rbp)
	.loc 1 510 14
	movq	-72(%rbp), %rax
	movl	1268(%rax), %eax
	.loc 1 510 10
	cmpl	%eax, -60(%rbp)
	jle	.L104
	.loc 1 511 25
	movq	-72(%rbp), %rax
	movl	-60(%rbp), %edx
	movl	%edx, 1268(%rax)
.L104:
	.loc 1 513 14
	movq	-72(%rbp), %rax
	movl	1160(%rax), %eax
	.loc 1 513 10
	testl	%eax, %eax
	jne	.L105
	.loc 1 515 7
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	get_signed_bit_size
	movl	%eax, -60(%rbp)
	jmp	.L106
.L105:
	.loc 1 517 19
	movq	-72(%rbp), %rax
	movl	1160(%rax), %eax
	.loc 1 517 15
	cmpl	$2, %eax
	jne	.L107
	.loc 1 519 7
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	get_signed_bit_size
	movl	%eax, -60(%rbp)
	jmp	.L106
.L107:
	.loc 1 523 7
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	get_signed_bit_size
	movl	%eax, -60(%rbp)
.L106:
	.loc 1 525 14
	movq	-72(%rbp), %rax
	movl	1280(%rax), %eax
	.loc 1 525 10
	cmpl	%eax, -60(%rbp)
	jle	.L100
	.loc 1 526 22
	movq	-72(%rbp), %rax
	movl	-60(%rbp), %edx
	movl	%edx, 1280(%rax)
.L100:
	.loc 1 437 35 discriminator 2
	addl	$1, -64(%rbp)
.L99:
	.loc 1 437 21 discriminator 1
	movq	-72(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 437 3 discriminator 1
	cmpl	%eax, -64(%rbp)
	jl	.L108
	.loc 1 530 3
	movq	-72(%rbp), %rax
	movl	1280(%rax), %esi
	movq	-72(%rbp), %rax
	movl	1276(%rax), %r8d
	movq	-72(%rbp), %rax
	movl	1272(%rax), %edi
	movq	-72(%rbp), %rax
	movl	1268(%rax), %ecx
	movq	-72(%rbp), %rax
	movl	1264(%rax), %edx
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	pushq	%rsi
	movl	%r8d, %r9d
	movl	%edi, %r8d
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	bf_Log
	addq	$16, %rsp
	.loc 1 533 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L109
	call	__stack_chk_fail@PLT
.L109:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	bf_CalculateMaxBitFieldSize, .-bf_CalculateMaxBitFieldSize
	.section	.rodata
	.align 8
.LC8:
	.string	"Monospace Statistics: Max width extention %ld, average width extention %ld.%ld"
	.text
	.globl	bf_ShowMonospaceStatistics
	.type	bf_ShowMonospaceStatistics, @function
bf_ShowMonospaceStatistics:
.LFB26:
	.loc 1 536 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	.loc 1 539 8
	movq	$0, -32(%rbp)
	.loc 1 540 8
	movq	$0, -24(%rbp)
	.loc 1 541 8
	movq	$0, -16(%rbp)
	.loc 1 542 10
	movl	$0, -36(%rbp)
	.loc 1 542 3
	jmp	.L111
.L114:
	.loc 1 544 12
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 544 24
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 1 544 8
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 545 12
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 545 8
	testq	%rax, %rax
	js	.L112
	.loc 1 547 20
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	.loc 1 547 10
	cmpq	%rax, -24(%rbp)
	jge	.L113
	.loc 1 548 6
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -24(%rbp)
.L113:
	.loc 1 549 16
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	.loc 1 549 11
	addq	%rax, -16(%rbp)
	.loc 1 550 10
	addq	$1, -32(%rbp)
.L112:
	.loc 1 542 35 discriminator 2
	addl	$1, -36(%rbp)
.L111:
	.loc 1 542 21 discriminator 1
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 542 3 discriminator 1
	cmpl	%eax, -36(%rbp)
	jl	.L114
	.loc 1 553 6
	cmpq	$0, -32(%rbp)
	jne	.L115
	.loc 1 554 8
	addq	$1, -32(%rbp)
.L115:
	.loc 1 555 114
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	.loc 1 555 117
	cqto
	idivq	-32(%rbp)
	movq	%rax, %rsi
	.loc 1 555 3
	movabsq	$7378697629483820647, %rdx
	movq	%rsi, %rax
	imulq	%rdx
	sarq	$2, %rdx
	movq	%rsi, %rax
	sarq	$63, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	subq	%rax, %rsi
	movq	%rsi, %rcx
	movq	-16(%rbp), %rax
	cqto
	idivq	-32(%rbp)
	movq	%rax, %rsi
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %r8
	movq	%rsi, %rcx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	bf_Log
	.loc 1 575 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	bf_ShowMonospaceStatistics, .-bf_ShowMonospaceStatistics
	.section	.rodata
.LC9:
	.string	"/*\n"
.LC10:
	.string	"  Fontname: %s\n"
.LC11:
	.string	"  Copyright: %s\n"
.LC12:
	.string	"  Glyphs: %d/%d\n"
.LC13:
	.string	"  BBX Build Mode: %d\n"
.LC14:
	.string	"*/\n"
.LC15:
	.string	"#include \"ucg.h\"\n"
	.align 8
.LC16:
	.string	"const ucg_fntpgm_uint8_t %s[%d] UCG_FONT_SECTION(\"%s\") = {\n"
.LC17:
	.string	"  "
.LC18:
	.string	"%d"
.LC19:
	.string	"\n%s"
.LC20:
	.string	"};\n"
	.text
	.globl	bf_WriteUCGCByFP
	.type	bf_WriteUCGCByFP, @function
bf_WriteUCGCByFP:
.LFB27:
	.loc 1 579 1
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
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	.loc 1 581 7
	movl	$16, -4(%rbp)
	.loc 1 583 3
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	movl	$3, %edx
	movl	$1, %esi
	leaq	.LC9(%rip), %rdi
	call	fwrite@PLT
	.loc 1 584 3
	movq	-24(%rbp), %rax
	movq	1136(%rax), %rdx
	movq	-32(%rbp), %rax
	leaq	.LC10(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 585 3
	movq	-24(%rbp), %rax
	movq	1144(%rax), %rdx
	movq	-32(%rbp), %rax
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 586 3
	movq	-24(%rbp), %rax
	movl	16(%rax), %edx
	.loc 1 586 47
	movq	-24(%rbp), %rax
	movq	1152(%rax), %rax
	.loc 1 586 3
	movl	%eax, %esi
	movq	-32(%rbp), %rax
	movl	%edx, %ecx
	movl	%esi, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 587 3
	movq	-24(%rbp), %rax
	movl	1160(%rax), %edx
	movq	-32(%rbp), %rax
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 588 3
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	movl	$3, %edx
	movl	$1, %esi
	leaq	.LC14(%rip), %rdi
	call	fwrite@PLT
	.loc 1 589 3
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	movl	$17, %edx
	movl	$1, %esi
	leaq	.LC15(%rip), %rdi
	call	fwrite@PLT
	.loc 1 590 3
	movq	-24(%rbp), %rax
	movl	1300(%rax), %ecx
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rsi, %r8
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 591 3
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	leaq	.LC17(%rip), %rdi
	call	fwrite@PLT
	.loc 1 593 10
	movl	$0, -8(%rbp)
	.loc 1 593 3
	jmp	.L117
.L120:
	.loc 1 595 29
	movq	-24(%rbp), %rax
	movq	1288(%rax), %rdx
	.loc 1 595 42
	movl	-8(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 595 5
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 596 11
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	.loc 1 596 19
	movq	-24(%rbp), %rax
	movl	1300(%rax), %eax
	.loc 1 596 8
	cmpl	%eax, %edx
	je	.L118
	.loc 1 597 7
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$44, %edi
	call	fputc@PLT
.L118:
	.loc 1 598 12
	movl	-8(%rbp), %eax
	addl	$1, %eax
	.loc 1 598 16
	cltd
	idivl	-4(%rbp)
	movl	%edx, %eax
	.loc 1 598 8
	testl	%eax, %eax
	jne	.L119
	.loc 1 599 7
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L119:
	.loc 1 593 36 discriminator 2
	addl	$1, -8(%rbp)
.L117:
	.loc 1 593 21 discriminator 1
	movq	-24(%rbp), %rax
	movl	1300(%rax), %eax
	.loc 1 593 3 discriminator 1
	cmpl	%eax, -8(%rbp)
	jl	.L120
	.loc 1 602 3
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	movl	$3, %edx
	movl	$1, %esi
	leaq	.LC20(%rip), %rdi
	call	fwrite@PLT
	.loc 1 603 10
	movl	$1, %eax
	.loc 1 604 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	bf_WriteUCGCByFP, .-bf_WriteUCGCByFP
	.section	.rodata
.LC21:
	.string	"#ifdef U8G2_USE_LARGE_FONTS\n"
	.align 8
.LC22:
	.string	"const uint8_t %s[%d] U8X8_FONT_SECTION(\"%s\") = \n"
	.align 8
.LC23:
	.string	"const uint8_t %s[%d] U8G2_FONT_SECTION(\"%s\") = \n"
.LC24:
	.string	"%s\""
.LC25:
	.string	"\\%o"
.LC26:
	.string	"\"\n%s\""
.LC27:
	.string	"\";\n"
	.align 8
.LC28:
	.string	"#endif /* U8G2_USE_LARGE_FONTS */\n"
	.text
	.globl	bf_WriteU8G2CByFP
	.type	bf_WriteU8G2CByFP, @function
bf_WriteU8G2CByFP:
.LFB28:
	.loc 1 607 1
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
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	.loc 1 609 7
	movl	$32, -4(%rbp)
	.loc 1 612 3
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	movl	$3, %edx
	movl	$1, %esi
	leaq	.LC9(%rip), %rdi
	call	fwrite@PLT
	.loc 1 613 3
	movq	-24(%rbp), %rax
	movq	1136(%rax), %rdx
	movq	-32(%rbp), %rax
	leaq	.LC10(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 614 3
	movq	-24(%rbp), %rax
	movq	1144(%rax), %rdx
	movq	-32(%rbp), %rax
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 615 3
	movq	-24(%rbp), %rax
	movl	16(%rax), %edx
	.loc 1 615 47
	movq	-24(%rbp), %rax
	movq	1152(%rax), %rax
	.loc 1 615 3
	movl	%eax, %esi
	movq	-32(%rbp), %rax
	movl	%edx, %ecx
	movl	%esi, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 616 3
	movq	-24(%rbp), %rax
	movl	1160(%rax), %edx
	movq	-32(%rbp), %rax
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 617 3
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	movl	$3, %edx
	movl	$1, %esi
	leaq	.LC14(%rip), %rdi
	call	fwrite@PLT
	.loc 1 619 10
	movq	-24(%rbp), %rax
	movq	1288(%rax), %rdx
	.loc 1 619 26
	movq	-24(%rbp), %rax
	movl	1300(%rax), %eax
	cltq
	.loc 1 619 23
	subq	$1, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 619 6
	testb	%al, %al
	jne	.L123
	.loc 1 620 12
	movl	$0, -8(%rbp)
	jmp	.L124
.L123:
	.loc 1 622 12
	movl	$1, -8(%rbp)
.L124:
	.loc 1 624 10
	movq	-24(%rbp), %rax
	movl	1300(%rax), %eax
	.loc 1 624 22
	leal	-1(%rax), %edx
	.loc 1 624 24
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	.loc 1 624 6
	cmpl	$32760, %eax
	jle	.L125
	.loc 1 626 5
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	movl	$28, %edx
	movl	$1, %esi
	leaq	.LC21(%rip), %rdi
	call	fwrite@PLT
.L125:
	.loc 1 629 10
	movq	-24(%rbp), %rax
	movl	1160(%rax), %eax
	.loc 1 629 6
	cmpl	$3, %eax
	jne	.L126
	.loc 1 632 88
	movq	-24(%rbp), %rax
	movl	1300(%rax), %edx
	.loc 1 632 5
	movl	-8(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rsi, %r8
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L127
.L126:
	.loc 1 637 88
	movq	-24(%rbp), %rax
	movl	1300(%rax), %edx
	.loc 1 637 5
	movl	-8(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rsi, %r8
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L127:
	.loc 1 639 3
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	.LC24(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 641 10
	movl	$0, -12(%rbp)
	.loc 1 641 3
	jmp	.L128
.L134:
	.loc 1 643 12
	movq	-24(%rbp), %rax
	movq	1288(%rax), %rdx
	.loc 1 643 25
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 643 8
	cmpb	$31, %al
	jbe	.L129
	.loc 1 643 39 discriminator 1
	movq	-24(%rbp), %rax
	movq	1288(%rax), %rdx
	.loc 1 643 52 discriminator 1
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 643 34 discriminator 1
	cmpb	$34, %al
	je	.L129
	.loc 1 643 69 discriminator 2
	movq	-24(%rbp), %rax
	movq	1288(%rax), %rdx
	.loc 1 643 82 discriminator 2
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 643 64 discriminator 2
	cmpb	$92, %al
	je	.L129
	.loc 1 643 100 discriminator 3
	movq	-24(%rbp), %rax
	movq	1288(%rax), %rdx
	.loc 1 643 113 discriminator 3
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 643 95 discriminator 3
	cmpb	$63, %al
	je	.L129
	.loc 1 643 131 discriminator 4
	movq	-24(%rbp), %rax
	movq	1288(%rax), %rdx
	.loc 1 643 144 discriminator 4
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 643 124 discriminator 4
	cmpb	$47, %al
	jbe	.L130
	.loc 1 643 160 discriminator 5
	movq	-24(%rbp), %rax
	movq	1288(%rax), %rdx
	.loc 1 643 173 discriminator 5
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 643 155 discriminator 5
	cmpb	$57, %al
	ja	.L130
.L129:
	.loc 1 645 33
	movq	-24(%rbp), %rax
	movq	1288(%rax), %rdx
	.loc 1 645 46
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 645 7
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L131
.L130:
	.loc 1 648 17
	movq	-24(%rbp), %rax
	movq	1288(%rax), %rdx
	.loc 1 648 30
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 648 13
	cmpb	$126, %al
	ja	.L132
	.loc 1 650 31
	movq	-24(%rbp), %rax
	movq	1288(%rax), %rdx
	.loc 1 650 44
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 650 7
	movzbl	%al, %eax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fputc@PLT
	jmp	.L131
.L132:
	.loc 1 654 33
	movq	-24(%rbp), %rax
	movq	1288(%rax), %rdx
	.loc 1 654 46
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 654 7
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L131:
	.loc 1 656 12
	movl	-12(%rbp), %eax
	addl	$1, %eax
	.loc 1 656 16
	cltd
	idivl	-4(%rbp)
	movl	%edx, %eax
	.loc 1 656 8
	testl	%eax, %eax
	jne	.L133
	.loc 1 657 7
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	.LC26(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L133:
	.loc 1 641 45 discriminator 2
	addl	$1, -12(%rbp)
.L128:
	.loc 1 641 21 discriminator 1
	movq	-24(%rbp), %rax
	movl	1300(%rax), %eax
	.loc 1 641 33 discriminator 1
	leal	-1(%rax), %edx
	.loc 1 641 35 discriminator 1
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	.loc 1 641 3 discriminator 1
	cmpl	%eax, -12(%rbp)
	jl	.L134
	.loc 1 660 3
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	movl	$3, %edx
	movl	$1, %esi
	leaq	.LC27(%rip), %rdi
	call	fwrite@PLT
	.loc 1 662 10
	movq	-24(%rbp), %rax
	movl	1300(%rax), %eax
	.loc 1 662 22
	leal	-1(%rax), %edx
	.loc 1 662 24
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	.loc 1 662 6
	cmpl	$32760, %eax
	jle	.L135
	.loc 1 664 5
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	movl	$34, %edx
	movl	$1, %esi
	leaq	.LC28(%rip), %rdi
	call	fwrite@PLT
.L135:
	.loc 1 667 10
	movl	$1, %eax
	.loc 1 668 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	bf_WriteU8G2CByFP, .-bf_WriteU8G2CByFP
	.section	.rodata
.LC29:
	.string	"wb"
	.align 8
.LC30:
	.string	"bf_WriteUCGCByFilename: Open error '%s'"
	.align 8
.LC31:
	.string	"bf_WriteUCGCByFilename: Write file '%s'"
	.text
	.globl	bf_WriteUCGCByFilename
	.type	bf_WriteUCGCByFilename, @function
bf_WriteUCGCByFilename:
.LFB29:
	.loc 1 671 1
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
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	.loc 1 673 8
	movq	-32(%rbp), %rax
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	.loc 1 674 6
	cmpq	$0, -8(%rbp)
	jne	.L138
	.loc 1 676 5
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	bf_Log
	.loc 1 677 12
	movl	$0, %eax
	jmp	.L139
.L138:
	.loc 1 680 3
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	bf_WriteUCGCByFP
	.loc 1 681 3
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC31(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	bf_Log
	.loc 1 683 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	.loc 1 684 10
	movl	$1, %eax
.L139:
	.loc 1 685 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	bf_WriteUCGCByFilename, .-bf_WriteUCGCByFilename
	.section	.rodata
	.align 8
.LC32:
	.string	"bf_WriteU8G2CByFilename: Open error '%s'"
	.align 8
.LC33:
	.string	"bf_WriteU8G2CByFilename: Write file '%s'"
	.text
	.globl	bf_WriteU8G2CByFilename
	.type	bf_WriteU8G2CByFilename, @function
bf_WriteU8G2CByFilename:
.LFB30:
	.loc 1 689 1
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
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	.loc 1 691 8
	movq	-32(%rbp), %rax
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	.loc 1 692 6
	cmpq	$0, -8(%rbp)
	jne	.L141
	.loc 1 694 5
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC32(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	bf_Log
	.loc 1 695 12
	movl	$0, %eax
	jmp	.L142
.L141:
	.loc 1 698 3
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	bf_WriteU8G2CByFP
	.loc 1 699 3
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC33(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	bf_Log
	.loc 1 701 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	.loc 1 702 10
	movl	$1, %eax
.L142:
	.loc 1 703 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	bf_WriteU8G2CByFilename, .-bf_WriteU8G2CByFilename
	.globl	bf_OpenFromFile
	.type	bf_OpenFromFile, @function
bf_OpenFromFile:
.LFB31:
	.loc 1 711 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	.loc 1 714 8
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	bf_Open
	movq	%rax, -8(%rbp)
	.loc 1 715 6
	cmpq	$0, -8(%rbp)
	je	.L144
	.loc 1 717 21
	movq	-8(%rbp), %rax
	movl	32(%rbp), %edx
	movl	%edx, 1304(%rax)
	.loc 1 718 21
	movq	-8(%rbp), %rax
	movl	40(%rbp), %edx
	movl	%edx, 1308(%rax)
	.loc 1 720 10
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bf_ParseFile@PLT
	.loc 1 720 8
	testl	%eax, %eax
	je	.L145
	.loc 1 722 25
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 722 10
	testb	%al, %al
	je	.L146
	.loc 1 724 2
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bf_MapFile@PLT
	jmp	.L147
.L146:
	.loc 1 728 2
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bf_Map@PLT
.L147:
	.loc 1 730 7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	bf_CalculateSelectedNumberOfGlyphs
	.loc 1 732 7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	bf_ReduceAllGlyph
	.loc 1 733 7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	bf_CalculateMaxBBX
	.loc 1 735 7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	bf_CalculateMinMaxDWidth
	.loc 1 738 14
	movq	-8(%rbp), %rax
	movl	1160(%rax), %eax
	.loc 1 738 10
	cmpl	$2, %eax
	jne	.L148
	.loc 1 739 14
	movq	-8(%rbp), %rax
	movq	1168(%rax), %rdx
	.loc 1 739 21
	movq	-8(%rbp), %rax
	movq	1240(%rax), %rax
	.loc 1 739 5
	cmpq	%rax, %rdx
	jge	.L148
	.loc 1 740 18
	movq	-8(%rbp), %rax
	movq	1240(%rax), %rdx
	.loc 1 740 14
	movq	-8(%rbp), %rax
	movq	%rdx, 1168(%rax)
.L148:
	.loc 1 742 7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	bf_CalculateMaxBitFieldSize
	.loc 1 745 10
	cmpl	$0, -52(%rbp)
	je	.L149
	.loc 1 745 29 discriminator 1
	cmpl	$1, -52(%rbp)
	jne	.L150
.L149:
	.loc 1 747 2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	bf_RLECompressAllGlyphs@PLT
	jmp	.L151
.L150:
	.loc 1 751 2
	movl	24(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	16(%rbp), %esi
	movq	%rax, %rdi
	call	bf_Generate8x8Font@PLT
.L151:
	.loc 1 754 14
	movq	-8(%rbp), %rax
	movl	1160(%rax), %eax
	.loc 1 754 10
	testl	%eax, %eax
	je	.L152
	.loc 1 755 2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	bf_ShowMonospaceStatistics
.L152:
	.loc 1 757 14
	movq	-8(%rbp), %rax
	jmp	.L153
.L145:
	.loc 1 759 5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	bf_Close
.L144:
	.loc 1 761 10
	movl	$0, %eax
.L153:
	.loc 1 762 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	bf_OpenFromFile, .-bf_OpenFromFile
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h"
	.file 5 "<built-in>"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 11 "bdf_glyph.h"
	.file 12 "bdf_font.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x10a1
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF163
	.byte	0xc
	.long	.LASF164
	.long	.LASF165
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
	.uleb128 0x2
	.long	.LASF14
	.byte	0x4
	.byte	0x28
	.byte	0x1b
	.long	0xc3
	.uleb128 0x8
	.long	.LASF166
	.long	0xcc
	.uleb128 0x9
	.long	0xdc
	.long	0xdc
	.uleb128 0xa
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	.LASF167
	.byte	0x18
	.byte	0x5
	.byte	0
	.long	0x119
	.uleb128 0xc
	.long	.LASF15
	.byte	0x5
	.byte	0
	.long	0x47
	.byte	0
	.uleb128 0xc
	.long	.LASF16
	.byte	0x5
	.byte	0
	.long	0x47
	.byte	0x4
	.uleb128 0xc
	.long	.LASF17
	.byte	0x5
	.byte	0
	.long	0x9c
	.byte	0x8
	.uleb128 0xc
	.long	.LASF18
	.byte	0x5
	.byte	0
	.long	0x9c
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.long	.LASF19
	.byte	0x4
	.byte	0x63
	.byte	0x18
	.long	0xb7
	.uleb128 0xd
	.long	.LASF61
	.byte	0xd8
	.byte	0x6
	.byte	0x31
	.byte	0x8
	.long	0x2ac
	.uleb128 0xe
	.long	.LASF20
	.byte	0x6
	.byte	0x33
	.byte	0x7
	.long	0x40
	.byte	0
	.uleb128 0xe
	.long	.LASF21
	.byte	0x6
	.byte	0x36
	.byte	0x9
	.long	0x9e
	.byte	0x8
	.uleb128 0xe
	.long	.LASF22
	.byte	0x6
	.byte	0x37
	.byte	0x9
	.long	0x9e
	.byte	0x10
	.uleb128 0xe
	.long	.LASF23
	.byte	0x6
	.byte	0x38
	.byte	0x9
	.long	0x9e
	.byte	0x18
	.uleb128 0xe
	.long	.LASF24
	.byte	0x6
	.byte	0x39
	.byte	0x9
	.long	0x9e
	.byte	0x20
	.uleb128 0xe
	.long	.LASF25
	.byte	0x6
	.byte	0x3a
	.byte	0x9
	.long	0x9e
	.byte	0x28
	.uleb128 0xe
	.long	.LASF26
	.byte	0x6
	.byte	0x3b
	.byte	0x9
	.long	0x9e
	.byte	0x30
	.uleb128 0xe
	.long	.LASF27
	.byte	0x6
	.byte	0x3c
	.byte	0x9
	.long	0x9e
	.byte	0x38
	.uleb128 0xe
	.long	.LASF28
	.byte	0x6
	.byte	0x3d
	.byte	0x9
	.long	0x9e
	.byte	0x40
	.uleb128 0xe
	.long	.LASF29
	.byte	0x6
	.byte	0x40
	.byte	0x9
	.long	0x9e
	.byte	0x48
	.uleb128 0xe
	.long	.LASF30
	.byte	0x6
	.byte	0x41
	.byte	0x9
	.long	0x9e
	.byte	0x50
	.uleb128 0xe
	.long	.LASF31
	.byte	0x6
	.byte	0x42
	.byte	0x9
	.long	0x9e
	.byte	0x58
	.uleb128 0xe
	.long	.LASF32
	.byte	0x6
	.byte	0x44
	.byte	0x16
	.long	0x2c5
	.byte	0x60
	.uleb128 0xe
	.long	.LASF33
	.byte	0x6
	.byte	0x46
	.byte	0x14
	.long	0x2cb
	.byte	0x68
	.uleb128 0xe
	.long	.LASF34
	.byte	0x6
	.byte	0x48
	.byte	0x7
	.long	0x40
	.byte	0x70
	.uleb128 0xe
	.long	.LASF35
	.byte	0x6
	.byte	0x49
	.byte	0x7
	.long	0x40
	.byte	0x74
	.uleb128 0xe
	.long	.LASF36
	.byte	0x6
	.byte	0x4a
	.byte	0xb
	.long	0x84
	.byte	0x78
	.uleb128 0xe
	.long	.LASF37
	.byte	0x6
	.byte	0x4d
	.byte	0x12
	.long	0x63
	.byte	0x80
	.uleb128 0xe
	.long	.LASF38
	.byte	0x6
	.byte	0x4e
	.byte	0xf
	.long	0x6a
	.byte	0x82
	.uleb128 0xe
	.long	.LASF39
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.long	0x2d1
	.byte	0x83
	.uleb128 0xe
	.long	.LASF40
	.byte	0x6
	.byte	0x51
	.byte	0xf
	.long	0x2e1
	.byte	0x88
	.uleb128 0xe
	.long	.LASF41
	.byte	0x6
	.byte	0x59
	.byte	0xd
	.long	0x90
	.byte	0x90
	.uleb128 0xe
	.long	.LASF42
	.byte	0x6
	.byte	0x5b
	.byte	0x17
	.long	0x2ec
	.byte	0x98
	.uleb128 0xe
	.long	.LASF43
	.byte	0x6
	.byte	0x5c
	.byte	0x19
	.long	0x2f7
	.byte	0xa0
	.uleb128 0xe
	.long	.LASF44
	.byte	0x6
	.byte	0x5d
	.byte	0x14
	.long	0x2cb
	.byte	0xa8
	.uleb128 0xe
	.long	.LASF45
	.byte	0x6
	.byte	0x5e
	.byte	0x9
	.long	0x9c
	.byte	0xb0
	.uleb128 0xe
	.long	.LASF46
	.byte	0x6
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xe
	.long	.LASF47
	.byte	0x6
	.byte	0x60
	.byte	0x7
	.long	0x40
	.byte	0xc0
	.uleb128 0xe
	.long	.LASF48
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.long	0x2fd
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF49
	.byte	0x7
	.byte	0x7
	.byte	0x19
	.long	0x125
	.uleb128 0xf
	.long	.LASF168
	.byte	0x6
	.byte	0x2b
	.byte	0xe
	.uleb128 0x10
	.long	.LASF50
	.uleb128 0x6
	.byte	0x8
	.long	0x2c0
	.uleb128 0x6
	.byte	0x8
	.long	0x125
	.uleb128 0x9
	.long	0xa4
	.long	0x2e1
	.uleb128 0xa
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2b8
	.uleb128 0x10
	.long	.LASF51
	.uleb128 0x6
	.byte	0x8
	.long	0x2e7
	.uleb128 0x10
	.long	.LASF52
	.uleb128 0x6
	.byte	0x8
	.long	0x2f2
	.uleb128 0x9
	.long	0xa4
	.long	0x30d
	.uleb128 0xa
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x11
	.long	.LASF53
	.byte	0x8
	.byte	0x89
	.byte	0xe
	.long	0x319
	.uleb128 0x6
	.byte	0x8
	.long	0x2ac
	.uleb128 0x11
	.long	.LASF54
	.byte	0x8
	.byte	0x8a
	.byte	0xe
	.long	0x319
	.uleb128 0x11
	.long	.LASF55
	.byte	0x8
	.byte	0x8b
	.byte	0xe
	.long	0x319
	.uleb128 0x11
	.long	.LASF56
	.byte	0x9
	.byte	0x1a
	.byte	0xc
	.long	0x40
	.uleb128 0x9
	.long	0x359
	.long	0x34e
	.uleb128 0x12
	.byte	0
	.uleb128 0x7
	.long	0x343
	.uleb128 0x6
	.byte	0x8
	.long	0xab
	.uleb128 0x7
	.long	0x353
	.uleb128 0x11
	.long	.LASF57
	.byte	0x9
	.byte	0x1b
	.byte	0x1a
	.long	0x34e
	.uleb128 0x2
	.long	.LASF58
	.byte	0xa
	.byte	0x18
	.byte	0x13
	.long	0x71
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF59
	.uleb128 0x2
	.long	.LASF60
	.byte	0xb
	.byte	0x9
	.byte	0x21
	.long	0x389
	.uleb128 0x13
	.long	.LASF62
	.value	0x520
	.byte	0xc
	.byte	0x16
	.byte	0x8
	.long	0x5d0
	.uleb128 0xe
	.long	.LASF63
	.byte	0xc
	.byte	0x18
	.byte	0x7
	.long	0x40
	.byte	0
	.uleb128 0xe
	.long	.LASF64
	.byte	0xc
	.byte	0x1a
	.byte	0xa
	.long	0x759
	.byte	0x8
	.uleb128 0xe
	.long	.LASF65
	.byte	0xc
	.byte	0x1b
	.byte	0x7
	.long	0x40
	.byte	0x10
	.uleb128 0xe
	.long	.LASF66
	.byte	0xc
	.byte	0x1c
	.byte	0x7
	.long	0x40
	.byte	0x14
	.uleb128 0xe
	.long	.LASF67
	.byte	0xc
	.byte	0x1f
	.byte	0x8
	.long	0x765
	.byte	0x18
	.uleb128 0x14
	.long	.LASF68
	.byte	0xc
	.byte	0x20
	.byte	0x7
	.long	0x40
	.value	0x418
	.uleb128 0x14
	.long	.LASF69
	.byte	0xc
	.byte	0x21
	.byte	0x7
	.long	0x40
	.value	0x41c
	.uleb128 0x14
	.long	.LASF70
	.byte	0xc
	.byte	0x23
	.byte	0x8
	.long	0x4e
	.value	0x420
	.uleb128 0x14
	.long	.LASF71
	.byte	0xc
	.byte	0x25
	.byte	0x8
	.long	0x4e
	.value	0x428
	.uleb128 0x14
	.long	.LASF72
	.byte	0xc
	.byte	0x26
	.byte	0x8
	.long	0x4e
	.value	0x430
	.uleb128 0x14
	.long	.LASF73
	.byte	0xc
	.byte	0x28
	.byte	0x8
	.long	0x4e
	.value	0x438
	.uleb128 0x14
	.long	.LASF74
	.byte	0xc
	.byte	0x29
	.byte	0x8
	.long	0x4e
	.value	0x440
	.uleb128 0x14
	.long	.LASF75
	.byte	0xc
	.byte	0x2a
	.byte	0x8
	.long	0x4e
	.value	0x448
	.uleb128 0x14
	.long	.LASF76
	.byte	0xc
	.byte	0x2b
	.byte	0x8
	.long	0x4e
	.value	0x450
	.uleb128 0x14
	.long	.LASF77
	.byte	0xc
	.byte	0x2d
	.byte	0x7
	.long	0x40
	.value	0x458
	.uleb128 0x14
	.long	.LASF78
	.byte	0xc
	.byte	0x2e
	.byte	0x7
	.long	0x40
	.value	0x45c
	.uleb128 0x14
	.long	.LASF79
	.byte	0xc
	.byte	0x2f
	.byte	0x7
	.long	0x40
	.value	0x460
	.uleb128 0x15
	.string	"fp"
	.byte	0xc
	.byte	0x30
	.byte	0x9
	.long	0x319
	.value	0x468
	.uleb128 0x14
	.long	.LASF80
	.byte	0xc
	.byte	0x32
	.byte	0x9
	.long	0x9e
	.value	0x470
	.uleb128 0x14
	.long	.LASF81
	.byte	0xc
	.byte	0x33
	.byte	0x9
	.long	0x9e
	.value	0x478
	.uleb128 0x14
	.long	.LASF82
	.byte	0xc
	.byte	0x35
	.byte	0x8
	.long	0x4e
	.value	0x480
	.uleb128 0x14
	.long	.LASF83
	.byte	0xc
	.byte	0x37
	.byte	0x7
	.long	0x40
	.value	0x488
	.uleb128 0x15
	.string	"max"
	.byte	0xc
	.byte	0x39
	.byte	0x9
	.long	0x60a
	.value	0x490
	.uleb128 0x14
	.long	.LASF84
	.byte	0xc
	.byte	0x3c
	.byte	0x8
	.long	0x4e
	.value	0x4b0
	.uleb128 0x14
	.long	.LASF85
	.byte	0xc
	.byte	0x3d
	.byte	0x8
	.long	0x4e
	.value	0x4b8
	.uleb128 0x14
	.long	.LASF86
	.byte	0xc
	.byte	0x3e
	.byte	0x8
	.long	0x4e
	.value	0x4c0
	.uleb128 0x14
	.long	.LASF87
	.byte	0xc
	.byte	0x3f
	.byte	0x8
	.long	0x4e
	.value	0x4c8
	.uleb128 0x14
	.long	.LASF88
	.byte	0xc
	.byte	0x42
	.byte	0x8
	.long	0x4e
	.value	0x4d0
	.uleb128 0x14
	.long	.LASF89
	.byte	0xc
	.byte	0x43
	.byte	0x8
	.long	0x4e
	.value	0x4d8
	.uleb128 0x14
	.long	.LASF90
	.byte	0xc
	.byte	0x46
	.byte	0x8
	.long	0x4e
	.value	0x4e0
	.uleb128 0x14
	.long	.LASF91
	.byte	0xc
	.byte	0x47
	.byte	0x8
	.long	0x4e
	.value	0x4e8
	.uleb128 0x14
	.long	.LASF92
	.byte	0xc
	.byte	0x4a
	.byte	0x7
	.long	0x40
	.value	0x4f0
	.uleb128 0x14
	.long	.LASF93
	.byte	0xc
	.byte	0x4b
	.byte	0x7
	.long	0x40
	.value	0x4f4
	.uleb128 0x14
	.long	.LASF94
	.byte	0xc
	.byte	0x4c
	.byte	0x7
	.long	0x40
	.value	0x4f8
	.uleb128 0x14
	.long	.LASF95
	.byte	0xc
	.byte	0x4d
	.byte	0x7
	.long	0x40
	.value	0x4fc
	.uleb128 0x14
	.long	.LASF96
	.byte	0xc
	.byte	0x4e
	.byte	0x7
	.long	0x40
	.value	0x500
	.uleb128 0x14
	.long	.LASF97
	.byte	0xc
	.byte	0x51
	.byte	0xc
	.long	0x747
	.value	0x508
	.uleb128 0x14
	.long	.LASF98
	.byte	0xc
	.byte	0x52
	.byte	0x7
	.long	0x40
	.value	0x510
	.uleb128 0x14
	.long	.LASF99
	.byte	0xc
	.byte	0x53
	.byte	0x7
	.long	0x40
	.value	0x514
	.uleb128 0x14
	.long	.LASF100
	.byte	0xc
	.byte	0x56
	.byte	0x7
	.long	0x40
	.value	0x518
	.uleb128 0x14
	.long	.LASF101
	.byte	0xc
	.byte	0x57
	.byte	0x7
	.long	0x40
	.value	0x51c
	.byte	0
	.uleb128 0xd
	.long	.LASF102
	.byte	0x20
	.byte	0xb
	.byte	0xc
	.byte	0x8
	.long	0x60a
	.uleb128 0x16
	.string	"w"
	.byte	0xb
	.byte	0xe
	.byte	0x8
	.long	0x4e
	.byte	0
	.uleb128 0x16
	.string	"h"
	.byte	0xb
	.byte	0xf
	.byte	0x8
	.long	0x4e
	.byte	0x8
	.uleb128 0x16
	.string	"x"
	.byte	0xb
	.byte	0x10
	.byte	0x8
	.long	0x4e
	.byte	0x10
	.uleb128 0x16
	.string	"y"
	.byte	0xb
	.byte	0x11
	.byte	0x8
	.long	0x4e
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.long	.LASF103
	.byte	0xb
	.byte	0x13
	.byte	0x1c
	.long	0x5d0
	.uleb128 0xd
	.long	.LASF104
	.byte	0xa0
	.byte	0xb
	.byte	0x16
	.byte	0x8
	.long	0x741
	.uleb128 0x16
	.string	"bf"
	.byte	0xb
	.byte	0x18
	.byte	0x9
	.long	0x741
	.byte	0
	.uleb128 0xe
	.long	.LASF70
	.byte	0xb
	.byte	0x1a
	.byte	0x8
	.long	0x4e
	.byte	0x8
	.uleb128 0xe
	.long	.LASF105
	.byte	0xb
	.byte	0x1b
	.byte	0x8
	.long	0x4e
	.byte	0x10
	.uleb128 0xe
	.long	.LASF71
	.byte	0xb
	.byte	0x1d
	.byte	0x8
	.long	0x4e
	.byte	0x18
	.uleb128 0xe
	.long	.LASF72
	.byte	0xb
	.byte	0x1e
	.byte	0x8
	.long	0x4e
	.byte	0x20
	.uleb128 0x16
	.string	"bbx"
	.byte	0xb
	.byte	0x20
	.byte	0x9
	.long	0x60a
	.byte	0x28
	.uleb128 0xe
	.long	.LASF106
	.byte	0xb
	.byte	0x21
	.byte	0x8
	.long	0x4e
	.byte	0x48
	.uleb128 0xe
	.long	.LASF107
	.byte	0xb
	.byte	0x22
	.byte	0x7
	.long	0x40
	.byte	0x50
	.uleb128 0xe
	.long	.LASF108
	.byte	0xb
	.byte	0x24
	.byte	0xc
	.long	0x747
	.byte	0x58
	.uleb128 0xe
	.long	.LASF109
	.byte	0xb
	.byte	0x25
	.byte	0x7
	.long	0x40
	.byte	0x60
	.uleb128 0xe
	.long	.LASF110
	.byte	0xb
	.byte	0x26
	.byte	0x7
	.long	0x40
	.byte	0x64
	.uleb128 0xe
	.long	.LASF97
	.byte	0xb
	.byte	0x2b
	.byte	0xc
	.long	0x747
	.byte	0x68
	.uleb128 0xe
	.long	.LASF98
	.byte	0xb
	.byte	0x2c
	.byte	0x7
	.long	0x40
	.byte	0x70
	.uleb128 0xe
	.long	.LASF99
	.byte	0xb
	.byte	0x2d
	.byte	0x7
	.long	0x40
	.byte	0x74
	.uleb128 0xe
	.long	.LASF111
	.byte	0xb
	.byte	0x2e
	.byte	0x7
	.long	0x40
	.byte	0x78
	.uleb128 0xe
	.long	.LASF112
	.byte	0xb
	.byte	0x32
	.byte	0xc
	.long	0x47
	.byte	0x7c
	.uleb128 0xe
	.long	.LASF113
	.byte	0xb
	.byte	0x33
	.byte	0xc
	.long	0x47
	.byte	0x80
	.uleb128 0xe
	.long	.LASF114
	.byte	0xb
	.byte	0x35
	.byte	0x7
	.long	0x40
	.byte	0x84
	.uleb128 0xe
	.long	.LASF115
	.byte	0xb
	.byte	0x36
	.byte	0xc
	.long	0x47
	.byte	0x88
	.uleb128 0xe
	.long	.LASF116
	.byte	0xb
	.byte	0x37
	.byte	0xc
	.long	0x47
	.byte	0x8c
	.uleb128 0xe
	.long	.LASF117
	.byte	0xb
	.byte	0x38
	.byte	0xc
	.long	0x47
	.byte	0x90
	.uleb128 0xe
	.long	.LASF118
	.byte	0xb
	.byte	0x3a
	.byte	0x8
	.long	0x4e
	.byte	0x98
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x37d
	.uleb128 0x6
	.byte	0x8
	.long	0x36a
	.uleb128 0x2
	.long	.LASF119
	.byte	0xb
	.byte	0x3d
	.byte	0x22
	.long	0x616
	.uleb128 0x6
	.byte	0x8
	.long	0x75f
	.uleb128 0x6
	.byte	0x8
	.long	0x74d
	.uleb128 0x9
	.long	0xa4
	.long	0x776
	.uleb128 0x17
	.long	0x39
	.value	0x3ff
	.byte	0
	.uleb128 0x18
	.long	.LASF124
	.byte	0x1
	.value	0x2c6
	.byte	0x7
	.long	0x741
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x846
	.uleb128 0x19
	.long	.LASF120
	.byte	0x1
	.value	0x2c6
	.byte	0x23
	.long	0x353
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF63
	.byte	0x1
	.value	0x2c6
	.byte	0x35
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.long	.LASF83
	.byte	0x1
	.value	0x2c6
	.byte	0x45
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.long	.LASF121
	.byte	0x1
	.value	0x2c6
	.byte	0x5b
	.long	0x353
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.long	.LASF122
	.byte	0x1
	.value	0x2c6
	.byte	0x70
	.long	0x353
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x19
	.long	.LASF123
	.byte	0x1
	.value	0x2c6
	.byte	0x83
	.long	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1a
	.string	"xo"
	.byte	0x1
	.value	0x2c6
	.byte	0x94
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"yo"
	.byte	0x1
	.value	0x2c6
	.byte	0x9c
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1a
	.string	"th"
	.byte	0x1
	.value	0x2c6
	.byte	0xa4
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1a
	.string	"tv"
	.byte	0x1
	.value	0x2c6
	.byte	0xac
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x1b
	.string	"bf"
	.byte	0x1
	.value	0x2c8
	.byte	0x9
	.long	0x741
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.long	.LASF125
	.byte	0x1
	.value	0x2b0
	.byte	0x5
	.long	0x40
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x8b8
	.uleb128 0x1a
	.string	"bf"
	.byte	0x1
	.value	0x2b0
	.byte	0x23
	.long	0x741
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF126
	.byte	0x1
	.value	0x2b0
	.byte	0x33
	.long	0x353
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.long	.LASF127
	.byte	0x1
	.value	0x2b0
	.byte	0x49
	.long	0x353
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.long	.LASF128
	.byte	0x1
	.value	0x2b0
	.byte	0x5f
	.long	0x353
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.string	"fp"
	.byte	0x1
	.value	0x2b2
	.byte	0x9
	.long	0x319
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.long	.LASF129
	.byte	0x1
	.value	0x29e
	.byte	0x5
	.long	0x40
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x92a
	.uleb128 0x1a
	.string	"bf"
	.byte	0x1
	.value	0x29e
	.byte	0x22
	.long	0x741
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF126
	.byte	0x1
	.value	0x29e
	.byte	0x32
	.long	0x353
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.long	.LASF127
	.byte	0x1
	.value	0x29e
	.byte	0x48
	.long	0x353
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.long	.LASF128
	.byte	0x1
	.value	0x29e
	.byte	0x5e
	.long	0x353
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.string	"fp"
	.byte	0x1
	.value	0x2a0
	.byte	0x9
	.long	0x319
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.long	.LASF130
	.byte	0x1
	.value	0x25e
	.byte	0x5
	.long	0x40
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x9bb
	.uleb128 0x1a
	.string	"bf"
	.byte	0x1
	.value	0x25e
	.byte	0x1d
	.long	0x741
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF131
	.byte	0x1
	.value	0x25e
	.byte	0x27
	.long	0x319
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.long	.LASF127
	.byte	0x1
	.value	0x25e
	.byte	0x3b
	.long	0x353
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.long	.LASF128
	.byte	0x1
	.value	0x25e
	.byte	0x51
	.long	0x353
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x260
	.byte	0x7
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.long	.LASF132
	.byte	0x1
	.value	0x261
	.byte	0x7
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.long	.LASF133
	.byte	0x1
	.value	0x262
	.byte	0x7
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.long	.LASF134
	.byte	0x1
	.value	0x242
	.byte	0x5
	.long	0x40
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0xa3c
	.uleb128 0x1a
	.string	"bf"
	.byte	0x1
	.value	0x242
	.byte	0x1c
	.long	0x741
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF131
	.byte	0x1
	.value	0x242
	.byte	0x26
	.long	0x319
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.long	.LASF127
	.byte	0x1
	.value	0x242
	.byte	0x3a
	.long	0x353
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.long	.LASF128
	.byte	0x1
	.value	0x242
	.byte	0x50
	.long	0x353
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x244
	.byte	0x7
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.long	.LASF132
	.byte	0x1
	.value	0x245
	.byte	0x7
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.long	.LASF135
	.byte	0x1
	.value	0x217
	.byte	0x6
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0xab9
	.uleb128 0x1a
	.string	"bf"
	.byte	0x1
	.value	0x217
	.byte	0x27
	.long	0x741
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x219
	.byte	0x7
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.string	"bg"
	.byte	0x1
	.value	0x21a
	.byte	0x9
	.long	0x75f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"cnt"
	.byte	0x1
	.value	0x21b
	.byte	0x8
	.long	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"max"
	.byte	0x1
	.value	0x21c
	.byte	0x8
	.long	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"sum"
	.byte	0x1
	.value	0x21d
	.byte	0x8
	.long	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1d
	.long	.LASF136
	.byte	0x1
	.value	0x1aa
	.byte	0x6
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0xb28
	.uleb128 0x1a
	.string	"bf"
	.byte	0x1
	.value	0x1aa
	.byte	0x28
	.long	0x741
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x1ac
	.byte	0x7
	.long	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1b
	.string	"bg"
	.byte	0x1
	.value	0x1ad
	.byte	0x9
	.long	0x75f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1b
	.string	"bs"
	.byte	0x1
	.value	0x1ae
	.byte	0x7
	.long	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1c
	.long	.LASF137
	.byte	0x1
	.value	0x1af
	.byte	0x9
	.long	0x60a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1e
	.long	.LASF138
	.byte	0x1
	.value	0x167
	.byte	0x6
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0xb76
	.uleb128 0x1a
	.string	"bf"
	.byte	0x1
	.value	0x167
	.byte	0x29
	.long	0x741
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.long	.LASF139
	.byte	0x1
	.value	0x167
	.byte	0x34
	.long	0xb76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.string	"bg"
	.byte	0x1
	.value	0x167
	.byte	0x46
	.long	0x75f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x60a
	.uleb128 0x18
	.long	.LASF140
	.byte	0x1
	.value	0x15a
	.byte	0x5
	.long	0x40
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0xbae
	.uleb128 0x1a
	.string	"v"
	.byte	0x1
	.value	0x15a
	.byte	0x1e
	.long	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.long	.LASF141
	.byte	0x1
	.value	0x14f
	.byte	0x5
	.long	0x40
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0xbee
	.uleb128 0x1a
	.string	"v"
	.byte	0x1
	.value	0x14f
	.byte	0x29
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x151
	.byte	0x7
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.long	.LASF142
	.byte	0x1
	.value	0x12a
	.byte	0x6
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0xc3a
	.uleb128 0x1a
	.string	"bf"
	.byte	0x1
	.value	0x12a
	.byte	0x25
	.long	0x741
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x12c
	.byte	0x7
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.string	"bg"
	.byte	0x1
	.value	0x12d
	.byte	0x9
	.long	0x75f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.long	.LASF143
	.byte	0x1
	.byte	0xef
	.byte	0x6
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0xca0
	.uleb128 0x21
	.string	"bf"
	.byte	0x1
	.byte	0xef
	.byte	0x1f
	.long	0x741
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0xf1
	.byte	0x7
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.long	.LASF144
	.byte	0x1
	.byte	0xf2
	.byte	0x7
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.long	.LASF145
	.byte	0x1
	.byte	0xf3
	.byte	0x7
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.string	"bg"
	.byte	0x1
	.byte	0xf4
	.byte	0x9
	.long	0x75f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF146
	.byte	0x1
	.byte	0xe2
	.byte	0x5
	.long	0x40
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0xcfb
	.uleb128 0x21
	.string	"bf"
	.byte	0x1
	.byte	0xe2
	.byte	0x21
	.long	0x741
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF70
	.byte	0x1
	.byte	0xe2
	.byte	0x2a
	.long	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0xe4
	.byte	0x7
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.string	"bg"
	.byte	0x1
	.byte	0xe5
	.byte	0x9
	.long	0x75f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.long	.LASF147
	.byte	0x1
	.byte	0xd4
	.byte	0x6
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0xd52
	.uleb128 0x21
	.string	"bf"
	.byte	0x1
	.byte	0xd4
	.byte	0x1d
	.long	0x741
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.string	"bbx"
	.byte	0x1
	.byte	0xd4
	.byte	0x28
	.long	0xb76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0xd6
	.byte	0x7
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.string	"bg"
	.byte	0x1
	.byte	0xd7
	.byte	0x9
	.long	0x75f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.long	.LASF148
	.byte	0x1
	.byte	0xb9
	.byte	0x6
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xdb8
	.uleb128 0x21
	.string	"bf"
	.byte	0x1
	.byte	0xb9
	.byte	0x1e
	.long	0x741
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0xbb
	.byte	0x7
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x22
	.string	"bg"
	.byte	0x1
	.byte	0xbc
	.byte	0x9
	.long	0x75f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF149
	.byte	0x1
	.byte	0xbd
	.byte	0x7
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.long	.LASF150
	.byte	0x1
	.byte	0xbd
	.byte	0xe
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x26
	.long	.LASF151
	.byte	0x1
	.byte	0xa7
	.byte	0x6
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xe00
	.uleb128 0x21
	.string	"bf"
	.byte	0x1
	.byte	0xa7
	.byte	0x2f
	.long	0x741
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0xa9
	.byte	0x7
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.string	"bg"
	.byte	0x1
	.byte	0xaa
	.byte	0x9
	.long	0x75f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.long	.LASF152
	.byte	0x1
	.byte	0x9f
	.byte	0x6
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xe3a
	.uleb128 0x21
	.string	"bf"
	.byte	0x1
	.byte	0x9f
	.byte	0x1f
	.long	0x741
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0xa1
	.byte	0x7
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x27
	.long	.LASF153
	.byte	0x1
	.byte	0x95
	.byte	0x5
	.long	0x40
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xe7a
	.uleb128 0x21
	.string	"bf"
	.byte	0x1
	.byte	0x95
	.byte	0x1c
	.long	0x741
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	.LASF154
	.byte	0x1
	.byte	0x95
	.byte	0x28
	.long	0x36a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x28
	.long	.LASF157
	.byte	0x1
	.byte	0x7e
	.byte	0xc
	.long	0x40
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xed6
	.uleb128 0x21
	.string	"bf"
	.byte	0x1
	.byte	0x7e
	.byte	0x28
	.long	0x741
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF155
	.byte	0x1
	.byte	0x80
	.byte	0x7
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0x81
	.byte	0x7
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.string	"ptr"
	.byte	0x1
	.byte	0x82
	.byte	0x9
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF156
	.byte	0x1
	.byte	0x70
	.byte	0x5
	.long	0x40
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xf07
	.uleb128 0x21
	.string	"bf"
	.byte	0x1
	.byte	0x70
	.byte	0x17
	.long	0x741
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x28
	.long	.LASF158
	.byte	0x1
	.byte	0x5b
	.byte	0xc
	.long	0x40
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xf56
	.uleb128 0x21
	.string	"bf"
	.byte	0x1
	.byte	0x5b
	.byte	0x1c
	.long	0x741
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF155
	.byte	0x1
	.byte	0x5d
	.byte	0x7
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.string	"ptr"
	.byte	0x1
	.byte	0x5e
	.byte	0x9
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.long	.LASF159
	.byte	0x1
	.byte	0x4f
	.byte	0x6
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xf83
	.uleb128 0x21
	.string	"bf"
	.byte	0x1
	.byte	0x4f
	.byte	0x15
	.long	0x741
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.long	.LASF160
	.byte	0x1
	.byte	0x3e
	.byte	0x6
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xfbd
	.uleb128 0x21
	.string	"bf"
	.byte	0x1
	.byte	0x3e
	.byte	0x15
	.long	0x741
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0x40
	.byte	0x7
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x27
	.long	.LASF161
	.byte	0x1
	.byte	0x1f
	.byte	0x7
	.long	0x741
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x100c
	.uleb128 0x25
	.long	.LASF63
	.byte	0x1
	.byte	0x1f
	.byte	0x13
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.long	.LASF83
	.byte	0x1
	.byte	0x1f
	.byte	0x23
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"bf"
	.byte	0x1
	.byte	0x21
	.byte	0x9
	.long	0x741
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.long	.LASF162
	.byte	0x1
	.byte	0x10
	.byte	0x6
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x105a
	.uleb128 0x21
	.string	"bf"
	.byte	0x1
	.byte	0x10
	.byte	0x13
	.long	0x741
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x21
	.string	"fmt"
	.byte	0x1
	.byte	0x10
	.byte	0x1d
	.long	0x9e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x29
	.uleb128 0x22
	.string	"va"
	.byte	0x1
	.byte	0x12
	.byte	0xb
	.long	0x119
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x2a
	.long	.LASF169
	.byte	0x1
	.byte	0x7
	.byte	0x6
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.string	"bf"
	.byte	0x1
	.byte	0x7
	.byte	0x15
	.long	0x741
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x21
	.string	"fmt"
	.byte	0x1
	.byte	0x7
	.byte	0x1f
	.long	0x9e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x29
	.uleb128 0x22
	.string	"va"
	.byte	0x1
	.byte	0x9
	.byte	0xb
	.long	0x119
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
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
.LASF145:
	.string	"enc_idx"
.LASF63:
	.string	"is_verbose"
.LASF39:
	.string	"_shortbuf"
.LASF80:
	.string	"str_font"
.LASF168:
	.string	"_IO_lock_t"
.LASF15:
	.string	"gp_offset"
.LASF55:
	.string	"stderr"
.LASF28:
	.string	"_IO_buf_end"
.LASF104:
	.string	"_bdf_glyph_struct"
.LASF90:
	.string	"x_min"
.LASF62:
	.string	"_bdf_font_struct"
.LASF105:
	.string	"map_to"
.LASF26:
	.string	"_IO_write_end"
.LASF1:
	.string	"unsigned int"
.LASF155:
	.string	"extend"
.LASF44:
	.string	"_freeres_list"
.LASF20:
	.string	"_flags"
.LASF159:
	.string	"bf_Close"
.LASF67:
	.string	"line_buf"
.LASF121:
	.string	"map_str"
.LASF32:
	.string	"_markers"
.LASF144:
	.string	"is_first"
.LASF97:
	.string	"target_data"
.LASF69:
	.string	"is_bitmap_parsing"
.LASF129:
	.string	"bf_WriteUCGCByFilename"
.LASF116:
	.string	"rle_last_0"
.LASF117:
	.string	"rle_last_1"
.LASF106:
	.string	"shift_x"
.LASF146:
	.string	"bf_GetIndexByEncoding"
.LASF115:
	.string	"rle_bitcnt"
.LASF100:
	.string	"tile_h_size"
.LASF102:
	.string	"_bbx_struct"
.LASF54:
	.string	"stdout"
.LASF31:
	.string	"_IO_save_end"
.LASF51:
	.string	"_IO_codecvt"
.LASF108:
	.string	"bitmap_data"
.LASF17:
	.string	"overflow_arg_area"
.LASF65:
	.string	"glyph_cnt"
.LASF13:
	.string	"long long unsigned int"
.LASF153:
	.string	"bf_AddTargetData"
.LASF156:
	.string	"bf_AddGlyph"
.LASF122:
	.string	"map_file_name"
.LASF74:
	.string	"bbx_h"
.LASF57:
	.string	"sys_errlist"
.LASF30:
	.string	"_IO_backup_base"
.LASF41:
	.string	"_offset"
.LASF103:
	.string	"bbx_t"
.LASF73:
	.string	"bbx_w"
.LASF75:
	.string	"bbx_x"
.LASF76:
	.string	"bbx_y"
.LASF56:
	.string	"sys_nerr"
.LASF88:
	.string	"dx_min"
.LASF34:
	.string	"_fileno"
.LASF131:
	.string	"out_fp"
.LASF119:
	.string	"bg_t"
.LASF14:
	.string	"__gnuc_va_list"
.LASF7:
	.string	"size_t"
.LASF139:
	.string	"target_bbx"
.LASF133:
	.string	"extra1"
.LASF23:
	.string	"_IO_read_base"
.LASF84:
	.string	"enc_w"
.LASF71:
	.string	"dwidth_x"
.LASF72:
	.string	"dwidth_y"
.LASF130:
	.string	"bf_WriteU8G2CByFP"
.LASF53:
	.string	"stdin"
.LASF66:
	.string	"glyph_max"
.LASF132:
	.string	"bytes_per_line"
.LASF165:
	.string	"/home/step/u8g2-2.29.11/tools/font/bdfconv"
.LASF114:
	.string	"rle_is_first"
.LASF141:
	.string	"get_unsigned_bit_size"
.LASF149:
	.string	"red_x"
.LASF150:
	.string	"red_y"
.LASF12:
	.string	"char"
.LASF47:
	.string	"_mode"
.LASF126:
	.string	"filename"
.LASF70:
	.string	"encoding"
.LASF50:
	.string	"_IO_marker"
.LASF21:
	.string	"_IO_read_ptr"
.LASF154:
	.string	"data"
.LASF58:
	.string	"uint8_t"
.LASF142:
	.string	"bf_CalculateMinMaxDWidth"
.LASF96:
	.string	"dx_max_bit_size"
.LASF79:
	.string	"glyph_pos"
.LASF19:
	.string	"va_list"
.LASF24:
	.string	"_IO_write_base"
.LASF3:
	.string	"long long int"
.LASF29:
	.string	"_IO_save_base"
.LASF99:
	.string	"target_cnt"
.LASF161:
	.string	"bf_Open"
.LASF136:
	.string	"bf_CalculateMaxBitFieldSize"
.LASF91:
	.string	"x_max"
.LASF64:
	.string	"glyph_list"
.LASF45:
	.string	"_freeres_buf"
.LASF134:
	.string	"bf_WriteUCGCByFP"
.LASF46:
	.string	"__pad5"
.LASF78:
	.string	"bitmap_y"
.LASF162:
	.string	"bf_Log"
.LASF93:
	.string	"bbx_y_max_bit_size"
.LASF111:
	.string	"target_bit_pos"
.LASF112:
	.string	"rle_bits_per_0"
.LASF113:
	.string	"rle_bits_per_1"
.LASF151:
	.string	"bf_CalculateSelectedNumberOfGlyphs"
.LASF38:
	.string	"_vtable_offset"
.LASF124:
	.string	"bf_OpenFromFile"
.LASF92:
	.string	"bbx_x_max_bit_size"
.LASF59:
	.string	"long double"
.LASF98:
	.string	"target_max"
.LASF107:
	.string	"is_excluded_from_kerning"
.LASF81:
	.string	"str_copyright"
.LASF4:
	.string	"unsigned char"
.LASF120:
	.string	"bdf_filename"
.LASF94:
	.string	"bbx_w_max_bit_size"
.LASF22:
	.string	"_IO_read_end"
.LASF77:
	.string	"bitmap_x"
.LASF123:
	.string	"font_format"
.LASF9:
	.string	"short int"
.LASF2:
	.string	"long int"
.LASF101:
	.string	"tile_v_size"
.LASF147:
	.string	"bf_ShowAllGlyphs"
.LASF52:
	.string	"_IO_wide_data"
.LASF118:
	.string	"width_deviation"
.LASF167:
	.string	"__va_list_tag"
.LASF82:
	.string	"selected_glyphs"
.LASF16:
	.string	"fp_offset"
.LASF8:
	.string	"__uint8_t"
.LASF127:
	.string	"fontname"
.LASF138:
	.string	"bf_copy_bbx_and_update_shift"
.LASF125:
	.string	"bf_WriteU8G2CByFilename"
.LASF163:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF89:
	.string	"dx_max"
.LASF43:
	.string	"_wide_data"
.LASF152:
	.string	"bf_ClearTargetData"
.LASF40:
	.string	"_lock"
.LASF0:
	.string	"long unsigned int"
.LASF36:
	.string	"_old_offset"
.LASF61:
	.string	"_IO_FILE"
.LASF83:
	.string	"bbx_mode"
.LASF18:
	.string	"reg_save_area"
.LASF128:
	.string	"indent"
.LASF169:
	.string	"bf_Error"
.LASF158:
	.string	"bf_extend"
.LASF85:
	.string	"enc_h"
.LASF68:
	.string	"line_pos"
.LASF143:
	.string	"bf_CalculateMaxBBX"
.LASF164:
	.string	"bdf_font.c"
.LASF86:
	.string	"enc_x"
.LASF87:
	.string	"enc_y"
.LASF109:
	.string	"bitmap_width"
.LASF25:
	.string	"_IO_write_ptr"
.LASF135:
	.string	"bf_ShowMonospaceStatistics"
.LASF137:
	.string	"local_bbx"
.LASF42:
	.string	"_codecvt"
.LASF148:
	.string	"bf_ReduceAllGlyph"
.LASF140:
	.string	"get_signed_bit_size"
.LASF95:
	.string	"bbx_h_max_bit_size"
.LASF10:
	.string	"__off_t"
.LASF6:
	.string	"signed char"
.LASF60:
	.string	"bf_t"
.LASF5:
	.string	"short unsigned int"
.LASF166:
	.string	"__builtin_va_list"
.LASF33:
	.string	"_chain"
.LASF157:
	.string	"bf_extend_target_data"
.LASF49:
	.string	"FILE"
.LASF35:
	.string	"_flags2"
.LASF160:
	.string	"bf_Clear"
.LASF110:
	.string	"bitmap_height"
.LASF37:
	.string	"_cur_column"
.LASF11:
	.string	"__off64_t"
.LASF48:
	.string	"_unused2"
.LASF27:
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
