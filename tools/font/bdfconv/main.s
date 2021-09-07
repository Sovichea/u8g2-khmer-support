	.file	"main.c"
	.text
.Ltext0:
	.globl	get_str_arg
	.type	get_str_arg, @function
get_str_arg:
.LFB6:
	.file 1 "main.c"
	.loc 1 46 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 1 47 10
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 47 9
	movq	(%rax), %rax
	.loc 1 47 16
	movzbl	(%rax), %eax
	.loc 1 47 6
	cmpb	$45, %al
	jne	.L2
	.loc 1 49 12
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 49 11
	movq	(%rax), %rax
	.loc 1 49 18
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 1 49 8
	cmpl	%eax, -12(%rbp)
	jne	.L2
	.loc 1 51 14
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 51 13
	movq	(%rax), %rax
	.loc 1 51 20
	addq	$2, %rax
	movzbl	(%rax), %eax
	.loc 1 51 10
	testb	%al, %al
	jne	.L3
	.loc 1 53 3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 53 9
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 1 54 13
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 54 12
	movq	(%rax), %rdx
	.loc 1 54 10
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L4
.L3:
	.loc 1 58 14
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 58 13
	movq	(%rax), %rax
	.loc 1 58 20
	leaq	2(%rax), %rdx
	.loc 1 58 10
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L4:
	.loc 1 60 8
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 60 14
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 1 61 14
	movl	$1, %eax
	jmp	.L5
.L2:
	.loc 1 64 10
	movl	$0, %eax
.L5:
	.loc 1 65 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	get_str_arg, .-get_str_arg
	.globl	get_num_arg
	.type	get_num_arg, @function
get_num_arg:
.LFB7:
	.loc 1 69 1
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
	movq	%rdx, -24(%rbp)
	.loc 1 70 10
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 70 9
	movq	(%rax), %rax
	.loc 1 70 16
	movzbl	(%rax), %eax
	.loc 1 70 6
	cmpb	$45, %al
	jne	.L7
	.loc 1 72 12
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 72 11
	movq	(%rax), %rax
	.loc 1 72 18
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 1 72 8
	cmpl	%eax, -12(%rbp)
	jne	.L7
	.loc 1 75 14
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 75 13
	movq	(%rax), %rax
	.loc 1 75 20
	addq	$2, %rax
	movzbl	(%rax), %eax
	.loc 1 75 10
	testb	%al, %al
	jne	.L8
	.loc 1 77 10
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 77 16
	addq	$8, %rax
	.loc 1 77 7
	movq	(%rax), %rax
	.loc 1 77 5
	testq	%rax, %rax
	je	.L9
	.loc 1 79 5
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 79 11
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 1 80 24
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 80 14
	movq	(%rax), %rax
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtoul@PLT
	.loc 1 80 12
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L9
.L8:
	.loc 1 85 22
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 85 21
	movq	(%rax), %rax
	.loc 1 85 28
	addq	$2, %rax
	.loc 1 85 12
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtoul@PLT
	.loc 1 85 10
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
.L9:
	.loc 1 87 8
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 87 14
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 1 88 14
	movl	$1, %eax
	jmp	.L10
.L7:
	.loc 1 91 10
	movl	$0, %eax
.L10:
	.loc 1 92 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	get_num_arg, .-get_num_arg
	.globl	get_num_strarg
	.type	get_num_strarg, @function
get_num_strarg:
.LFB8:
	.loc 1 95 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 1 96 10
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 96 9
	movq	(%rax), %rax
	.loc 1 96 16
	movzbl	(%rax), %eax
	.loc 1 96 6
	cmpb	$45, %al
	jne	.L12
	.loc 1 99 20
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 99 19
	movq	(%rax), %rax
	.loc 1 99 26
	leaq	1(%rax), %rdx
	.loc 1 99 10
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	.loc 1 99 8
	testl	%eax, %eax
	jne	.L12
	.loc 1 102 15
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 102 21
	addq	$8, %rax
	.loc 1 102 12
	movq	(%rax), %rax
	.loc 1 102 10
	testq	%rax, %rax
	je	.L13
	.loc 1 104 3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 104 9
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 1 105 22
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 105 12
	movq	(%rax), %rax
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtoul@PLT
	.loc 1 105 10
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
.L13:
	.loc 1 107 8
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 107 14
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 1 108 14
	movl	$1, %eax
	jmp	.L14
.L12:
	.loc 1 111 10
	movl	$0, %eax
.L14:
	.loc 1 112 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	get_num_strarg, .-get_num_strarg
	.globl	is_arg
	.type	is_arg, @function
is_arg:
.LFB9:
	.loc 1 115 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	.loc 1 116 10
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 116 9
	movq	(%rax), %rax
	.loc 1 116 16
	movzbl	(%rax), %eax
	.loc 1 116 6
	cmpb	$45, %al
	jne	.L16
	.loc 1 118 12
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 118 11
	movq	(%rax), %rax
	.loc 1 118 18
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 1 118 8
	cmpl	%eax, -12(%rbp)
	jne	.L16
	.loc 1 120 8
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 120 14
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 1 121 14
	movl	$1, %eax
	jmp	.L17
.L16:
	.loc 1 124 10
	movl	$0, %eax
.L17:
	.loc 1 125 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	is_arg, .-is_arg
	.section	.rodata
.LC0:
	.string	"bdfconv [options] filename"
.LC1:
	.string	"-h          Display this help"
	.align 8
.LC2:
	.string	"-v          Print log messages"
	.align 8
.LC3:
	.string	"-b <n>      Font build mode, 0: proportional, 1: common height, 2: monospace, 3: multiple of 8, 4: 5x7 mode"
	.align 8
.LC4:
	.string	"-f <n>      Font format, 0: ucglib font, 1: u8g2 font, 2: u8g2 uncompressed 8x8 font (enforces -b 3)"
	.align 8
.LC5:
	.string	"-m 'map'    Unicode ASCII mapping"
	.align 8
.LC6:
	.string	"-M 'mapfile'    Read Unicode ASCII mapping from file 'mapname'"
	.align 8
.LC7:
	.string	"-o <file>   C output font file"
	.align 8
.LC8:
	.string	"-k <file>   C output file with kerning information"
	.align 8
.LC9:
	.string	"-p <%%>      Minimum distance for kerning in percent of the global char width (lower values: Smaller gaps, more data)\n"
	.align 8
.LC10:
	.string	"-x <n>      X-Offset for 8x8 font sub-glyph extraction (requires -f 2, default 0)"
	.align 8
.LC11:
	.string	"-y <n>      Y-Offset for 8x8 font sub-glyph extraction (requires -f 2, default 0)"
	.align 8
.LC12:
	.string	"-th <n>     Horizontal size of the 8x8 glyphs (requires -f 2, default 1)"
	.align 8
.LC13:
	.string	"-tv <n>     Vertical size of the 8x8 glyphs (requires -f 2, default 1)"
	.align 8
.LC14:
	.string	"-n <name>   C indentifier (font name)"
	.align 8
.LC15:
	.string	"-d <file>   Overview picture: Enable generation of bdf.tga and assign BDF font <file> for description"
	.align 8
.LC16:
	.string	"-l <margin> Overview picture: Set left margin"
	.align 8
.LC17:
	.string	"-g <glyphs> Overview picture: Set glyphs per line (default: 16)"
	.align 8
.LC18:
	.string	"-a          Overview picture: Additional font information (background, orange&blue dot)"
	.align 8
.LC19:
	.string	"-t          Overview picture: Test string (Woven silk pyjamas exchanged for blue quartz.)"
.LC20:
	.string	"-r          Runtime test"
	.align 8
.LC21:
	.string	"map := <mapcmd> { \",\" <mapcmd> }"
	.align 8
.LC22:
	.string	"mapcmd := <default> | <maprange> | <exclude> | <exclude-kerning>"
.LC23:
	.string	"default := \"*\""
	.align 8
.LC24:
	.string	"maprange := <range> [  \">\" <addexpr> ]        Move specified glyph <range> to target code <num>"
.LC25:
	.string	"exclude := \"~\" <range> "
	.align 8
.LC26:
	.string	"exclude-kerning:= \"x\" <range> "
	.align 8
.LC27:
	.string	"range := <addexpr> [ \"-\" <addexpr> ]          Select glyphs within specified range"
	.align 8
.LC28:
	.string	"addexpr := <mulexpr> [ \"+\" <mulexpr> ]"
	.align 8
.LC29:
	.string	"mulexpr := <num> [ \"*\" <num> ]"
.LC30:
	.string	"num := <hexnum> | <decnum>"
	.align 8
.LC31:
	.string	"hexnum := \"$\" <hexdigit> { <hexdigit> }"
	.align 8
.LC32:
	.string	"decnum := <decdigit> { <decdigit> }"
	.align 8
.LC33:
	.string	"decdigit := \"0\" | \"1\" | \"2\" | \"3\" | \"4\" | \"5\" | \"6\" | \"7\" | \"8\" | \"9\""
	.align 8
.LC34:
	.string	"hexdigit := \"a\" | \"b\" | \"c\" | \"d\" | \"e\" | \"f\" | \"A\" | \"B\" | \"C\" | \"D\" | \"E\" | \"F\" | <decdigit>"
	.align 8
.LC35:
	.string	"{ } zero, one ore more, [ ] zero or once, | alternative"
.LC36:
	.string	"example:"
	.align 8
.LC37:
	.string	"  -m '32-255'     select gylphs from encoding 32 to 255"
	.align 8
.LC38:
	.string	"  -m '32-255,~64' select gylphs from encoding 32 to 255, exclude '@'"
	.align 8
.LC39:
	.string	"  -m '32,48-57'   select space, '1', '2', ... '9'"
.LC40:
	.string	"build modes:"
	.align 8
.LC41:
	.string	" -b 0: Most compact, glyph bitmap is minimal"
	.align 8
.LC42:
	.string	" -b 1: Like -b 0, but glyph bitmap is extended to the height of the largest glyph within the selected glyph list."
	.align 8
.LC43:
	.string	"       Also the width of the gylphs is extended to cover the delta x advance."
	.align 8
.LC44:
	.string	" -b 2: Like -b 1, but glyph width is set to the width of the largest glyph within the selected gylph list."
	.align 8
.LC45:
	.string	" -b 3: Like -b 2, but width and height are forced to be a multiple of 8."
	.text
	.globl	help
	.type	help, @function
help:
.LFB10:
	.loc 1 129 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 130 3
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	.loc 1 131 3
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	.loc 1 132 3
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	.loc 1 133 3
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	.loc 1 134 3
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	.loc 1 135 3
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	.loc 1 136 3
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
	.loc 1 137 3
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	.loc 1 138 3
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	.loc 1 139 3
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 140 3
	leaq	.LC10(%rip), %rdi
	call	puts@PLT
	.loc 1 141 3
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
	.loc 1 142 3
	leaq	.LC12(%rip), %rdi
	call	puts@PLT
	.loc 1 143 3
	leaq	.LC13(%rip), %rdi
	call	puts@PLT
	.loc 1 145 3
	leaq	.LC14(%rip), %rdi
	call	puts@PLT
	.loc 1 146 3
	leaq	.LC15(%rip), %rdi
	call	puts@PLT
	.loc 1 147 3
	leaq	.LC16(%rip), %rdi
	call	puts@PLT
	.loc 1 148 3
	leaq	.LC17(%rip), %rdi
	call	puts@PLT
	.loc 1 149 3
	leaq	.LC18(%rip), %rdi
	call	puts@PLT
	.loc 1 150 3
	leaq	.LC19(%rip), %rdi
	call	puts@PLT
	.loc 1 151 3
	leaq	.LC20(%rip), %rdi
	call	puts@PLT
	.loc 1 152 3
	movl	$10, %edi
	call	putchar@PLT
	.loc 1 154 3
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
	.loc 1 155 3
	leaq	.LC22(%rip), %rdi
	call	puts@PLT
	.loc 1 156 3
	leaq	.LC23(%rip), %rdi
	call	puts@PLT
	.loc 1 157 3
	leaq	.LC24(%rip), %rdi
	call	puts@PLT
	.loc 1 158 3
	leaq	.LC25(%rip), %rdi
	call	puts@PLT
	.loc 1 159 3
	leaq	.LC26(%rip), %rdi
	call	puts@PLT
	.loc 1 160 3
	leaq	.LC27(%rip), %rdi
	call	puts@PLT
	.loc 1 161 3
	leaq	.LC28(%rip), %rdi
	call	puts@PLT
	.loc 1 162 3
	leaq	.LC29(%rip), %rdi
	call	puts@PLT
	.loc 1 163 3
	leaq	.LC30(%rip), %rdi
	call	puts@PLT
	.loc 1 164 3
	leaq	.LC31(%rip), %rdi
	call	puts@PLT
	.loc 1 165 3
	leaq	.LC32(%rip), %rdi
	call	puts@PLT
	.loc 1 166 3
	leaq	.LC33(%rip), %rdi
	call	puts@PLT
	.loc 1 167 3
	leaq	.LC34(%rip), %rdi
	call	puts@PLT
	.loc 1 169 3
	leaq	.LC35(%rip), %rdi
	call	puts@PLT
	.loc 1 171 3
	leaq	.LC36(%rip), %rdi
	call	puts@PLT
	.loc 1 172 3
	leaq	.LC37(%rip), %rdi
	call	puts@PLT
	.loc 1 173 3
	leaq	.LC38(%rip), %rdi
	call	puts@PLT
	.loc 1 174 3
	leaq	.LC39(%rip), %rdi
	call	puts@PLT
	.loc 1 175 3
	leaq	.LC40(%rip), %rdi
	call	puts@PLT
	.loc 1 176 3
	leaq	.LC41(%rip), %rdi
	call	puts@PLT
	.loc 1 177 3
	leaq	.LC42(%rip), %rdi
	call	puts@PLT
	.loc 1 178 3
	leaq	.LC43(%rip), %rdi
	call	puts@PLT
	.loc 1 179 3
	leaq	.LC44(%rip), %rdi
	call	puts@PLT
	.loc 1 180 3
	leaq	.LC45(%rip), %rdi
	call	puts@PLT
	.loc 1 182 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	help, .-help
	.globl	left_margin
	.data
	.align 8
	.type	left_margin, @object
	.size	left_margin, 8
left_margin:
	.quad	1
	.globl	build_bbx_mode
	.bss
	.align 8
	.type	build_bbx_mode, @object
	.size	build_bbx_mode, 8
build_bbx_mode:
	.zero	8
	.globl	font_format
	.align 8
	.type	font_format, @object
	.size	font_format, 8
font_format:
	.zero	8
	.globl	min_distance_in_per_cent_of_char_width
	.data
	.align 8
	.type	min_distance_in_per_cent_of_char_width, @object
	.size	min_distance_in_per_cent_of_char_width, 8
min_distance_in_per_cent_of_char_width:
	.quad	25
	.globl	cmdline_glyphs_per_line
	.align 8
	.type	cmdline_glyphs_per_line, @object
	.size	cmdline_glyphs_per_line, 8
cmdline_glyphs_per_line:
	.quad	16
	.globl	xoffset
	.bss
	.align 8
	.type	xoffset, @object
	.size	xoffset, 8
xoffset:
	.zero	8
	.globl	yoffset
	.align 8
	.type	yoffset, @object
	.size	yoffset, 8
yoffset:
	.zero	8
	.globl	tile_h_size
	.data
	.align 8
	.type	tile_h_size, @object
	.size	tile_h_size, 8
tile_h_size:
	.quad	1
	.globl	tile_v_size
	.align 8
	.type	tile_v_size, @object
	.size	tile_v_size, 8
tile_v_size:
	.quad	1
	.globl	font_picture_extra_info
	.bss
	.align 4
	.type	font_picture_extra_info, @object
	.size	font_picture_extra_info, 4
font_picture_extra_info:
	.zero	4
	.globl	font_picture_test_string
	.align 4
	.type	font_picture_test_string, @object
	.size	font_picture_test_string, 4
font_picture_test_string:
	.zero	4
	.globl	runtime_test
	.align 4
	.type	runtime_test, @object
	.size	runtime_test, 4
runtime_test:
	.zero	4
	.globl	c_filename
	.align 8
	.type	c_filename, @object
	.size	c_filename, 8
c_filename:
	.zero	8
	.globl	k_filename
	.align 8
	.type	k_filename, @object
	.size	k_filename, 8
k_filename:
	.zero	8
	.globl	target_fontname
	.section	.rodata
.LC46:
	.string	"bdf_font"
	.section	.data.rel.local,"aw"
	.align 8
	.type	target_fontname, @object
	.size	target_fontname, 8
target_fontname:
	.quad	.LC46
	.text
	.globl	tga_get_line_height
	.type	tga_get_line_height, @function
tga_get_line_height:
.LFB11:
	.loc 1 205 1
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
	.loc 1 207 3
	movq	-24(%rbp), %rax
	movq	1288(%rax), %rax
	movq	%rax, %rdi
	call	tga_set_font@PLT
	.loc 1 208 7
	call	tga_get_char_height@PLT
	.loc 1 208 5
	movl	%eax, -4(%rbp)
	.loc 1 209 3
	movq	-32(%rbp), %rax
	movq	1288(%rax), %rax
	movq	%rax, %rdi
	call	tga_set_font@PLT
	.loc 1 210 12
	call	tga_get_char_height@PLT
	.loc 1 210 6
	cmpl	%eax, -4(%rbp)
	jnb	.L20
	.loc 1 211 12
	call	tga_get_char_height@PLT
	jmp	.L21
.L20:
	.loc 1 212 10
	movl	-4(%rbp), %eax
.L21:
	.loc 1 213 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	tga_get_line_height, .-tga_get_line_height
	.section	.rodata
.LC47:
	.string	"%5ld/0x%04lx"
	.text
	.globl	tga_draw_font_line
	.type	tga_draw_font_line, @function
tga_draw_font_line:
.LFB12:
	.loc 1 216 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$112, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -84(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	.loc 1 216 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 1 222 12
	movl	$1, -76(%rbp)
	.loc 1 223 10
	movq	$0, -72(%rbp)
	.loc 1 223 3
	jmp	.L23
.L26:
	.loc 1 225 30
	movq	-72(%rbp), %rax
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	addl	%edx, %eax
	.loc 1 225 10
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	tga_get_glyph_data@PLT
	.loc 1 225 8
	testq	%rax, %rax
	je	.L24
	.loc 1 226 11
	movl	$0, -76(%rbp)
.L24:
	.loc 1 223 40 discriminator 2
	addq	$1, -72(%rbp)
.L23:
	.loc 1 223 3 discriminator 1
	cmpq	$15, -72(%rbp)
	jg	.L25
	.loc 1 223 21 discriminator 3
	cmpl	$0, -76(%rbp)
	jne	.L26
.L25:
	.loc 1 229 6
	cmpl	$0, -76(%rbp)
	je	.L27
	.loc 1 230 12
	movl	$0, %eax
	jmp	.L32
.L27:
	.loc 1 232 3
	movq	-96(%rbp), %rcx
	movq	-96(%rbp), %rdx
	leaq	-64(%rbp), %rax
	leaq	.LC47(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	.loc 1 234 5
	movq	left_margin(%rip), %rax
	movl	%eax, -80(%rbp)
	.loc 1 235 6
	cmpq	$0, -104(%rbp)
	je	.L29
	.loc 1 237 22
	movq	-104(%rbp), %rax
	movq	1288(%rax), %rax
	.loc 1 237 8
	testq	%rax, %rax
	je	.L29
	.loc 1 239 7
	movq	-104(%rbp), %rax
	movq	1288(%rax), %rax
	movq	%rax, %rdi
	call	tga_set_font@PLT
	.loc 1 240 12
	leaq	-64(%rbp), %rdx
	movl	-84(%rbp), %esi
	movl	-80(%rbp), %eax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	%eax, %edi
	call	tga_draw_string@PLT
	.loc 1 240 9
	addl	%eax, -80(%rbp)
.L29:
	.loc 1 243 5
	addl	$4, -80(%rbp)
	.loc 1 245 3
	movq	-112(%rbp), %rax
	movq	1288(%rax), %rax
	movq	%rax, %rdi
	call	tga_set_font@PLT
	.loc 1 246 10
	movq	$0, -72(%rbp)
	.loc 1 246 3
	jmp	.L30
.L31:
	.loc 1 248 5 discriminator 3
	movl	font_picture_extra_info(%rip), %r12d
	.loc 1 248 62 discriminator 3
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	addl	%edx, %eax
	.loc 1 248 5 discriminator 3
	movzwl	%ax, %ebx
	.loc 1 248 25 discriminator 3
	call	tga_get_char_width@PLT
	.loc 1 248 45 discriminator 3
	addl	$2, %eax
	.loc 1 248 5 discriminator 3
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	imull	%eax, %edx
	movl	-80(%rbp), %eax
	leal	(%rdx,%rax), %edi
	movl	-84(%rbp), %eax
	movl	%r12d, %ecx
	movl	%ebx, %edx
	movl	%eax, %esi
	call	tga_draw_glyph@PLT
	.loc 1 246 36 discriminator 3
	addq	$1, -72(%rbp)
.L30:
	.loc 1 246 3 discriminator 1
	movq	-72(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jl	.L31
	.loc 1 251 22
	movq	left_margin(%rip), %rax
	movl	%eax, %edx
	movl	-80(%rbp), %eax
	leal	(%rdx,%rax), %ebx
	.loc 1 251 29
	call	tga_get_char_width@PLT
	.loc 1 251 49
	addl	$2, %eax
	.loc 1 251 26
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	imull	%edx, %eax
	addl	%ebx, %eax
.L32:
	.loc 1 252 1 discriminator 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L33
	.loc 1 252 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L33:
	addq	$112, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	tga_draw_font_line, .-tga_draw_font_line
	.section	.rodata
.LC48:
	.string	"Max width %u, max height %u"
.LC49:
	.string	"'A' height %d, font size %d "
	.text
	.globl	tga_draw_font_info
	.type	tga_draw_font_info, @function
tga_draw_font_info:
.LFB13:
	.loc 1 255 1 is_stmt 1
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
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	.loc 1 260 16
	movl	$0, -28(%rbp)
	.loc 1 261 11
	movq	-64(%rbp), %rax
	movl	$65, %esi
	movq	%rax, %rdi
	call	bf_GetIndexByEncoding@PLT
	movl	%eax, -24(%rbp)
	.loc 1 262 6
	cmpl	$0, -24(%rbp)
	js	.L35
	.loc 1 264 22
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 264 34
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 1 264 46
	movq	48(%rax), %rax
	.loc 1 264 48
	movl	%eax, %ecx
	.loc 1 264 51
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 264 63
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 1 264 75
	movq	64(%rax), %rax
	.loc 1 264 48
	addl	%ecx, %eax
	.loc 1 264 18
	movl	%eax, -28(%rbp)
.L35:
	.loc 1 267 6
	cmpq	$0, -56(%rbp)
	je	.L36
	.loc 1 269 22
	movq	-56(%rbp), %rax
	movq	1288(%rax), %rax
	.loc 1 269 8
	testq	%rax, %rax
	je	.L36
	.loc 1 272 7
	movq	-56(%rbp), %rax
	movq	1288(%rax), %rax
	movq	%rax, %rdi
	call	tga_set_font@PLT
	.loc 1 274 13
	call	tga_get_char_height@PLT
	.loc 1 274 34
	addl	$1, %eax
	.loc 1 274 9
	addl	%eax, -36(%rbp)
	.loc 1 275 9
	movq	left_margin(%rip), %rax
	movl	%eax, -20(%rbp)
	.loc 1 276 12
	movq	-48(%rbp), %rdx
	movl	-36(%rbp), %esi
	movl	-20(%rbp), %eax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	%eax, %edi
	call	tga_draw_string@PLT
	.loc 1 276 9
	addl	%eax, -20(%rbp)
	.loc 1 278 13
	call	tga_get_char_height@PLT
	.loc 1 278 34
	addl	$1, %eax
	.loc 1 278 9
	addl	%eax, -36(%rbp)
	.loc 1 279 7
	call	tga_get_char_height@PLT
	movl	%eax, %ebx
	call	tga_get_char_width@PLT
	movl	%ebx, %ecx
	movl	%eax, %edx
	leaq	.LC48(%rip), %rsi
	leaq	s.3501(%rip), %rdi
	movl	$0, %eax
	call	sprintf@PLT
	.loc 1 280 9
	movq	left_margin(%rip), %rax
	movl	%eax, -20(%rbp)
	.loc 1 281 12
	movl	-36(%rbp), %esi
	movl	-20(%rbp), %eax
	movl	$0, %r8d
	movl	$0, %ecx
	leaq	s.3501(%rip), %rdx
	movl	%eax, %edi
	call	tga_draw_string@PLT
	.loc 1 281 9
	addl	%eax, -20(%rbp)
	.loc 1 283 13
	call	tga_get_char_height@PLT
	.loc 1 283 34
	addl	$1, %eax
	.loc 1 283 9
	addl	%eax, -36(%rbp)
	.loc 1 284 7
	movq	-64(%rbp), %rax
	movl	1300(%rax), %edx
	movl	-28(%rbp), %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	leaq	.LC49(%rip), %rsi
	leaq	s.3501(%rip), %rdi
	movl	$0, %eax
	call	sprintf@PLT
	.loc 1 285 9
	movq	left_margin(%rip), %rax
	movl	%eax, -20(%rbp)
	.loc 1 286 12
	movl	-36(%rbp), %esi
	movl	-20(%rbp), %eax
	movl	$0, %r8d
	movl	$0, %ecx
	leaq	s.3501(%rip), %rdx
	movl	%eax, %edi
	call	tga_draw_string@PLT
	.loc 1 286 9
	addl	%eax, -20(%rbp)
	.loc 1 287 15
	call	tga_get_char_height@PLT
	.loc 1 287 36
	leal	1(%rax), %edx
	.loc 1 287 39
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	jmp	.L37
.L36:
	.loc 1 290 10
	movl	$0, %eax
.L37:
	.loc 1 291 1
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	tga_draw_font_info, .-tga_draw_font_info
	.section	.rodata
.LC50:
	.string	"Draw TGA, line height %d"
.LC51:
	.string	"Draw TGA, xmax %d"
	.align 8
.LC52:
	.string	"Woven silk pyjamas exchanged for blue quartz."
	.text
	.globl	tga_draw_font
	.type	tga_draw_font, @function
tga_draw_font:
.LFB14:
	.loc 1 295 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	.loc 1 298 8
	movl	$0, -16(%rbp)
	.loc 1 300 3
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tga_get_line_height
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	leaq	.LC50(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	bf_Log@PLT
	.loc 1 302 8
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	tga_draw_font_info
	.loc 1 302 5
	addl	%eax, -20(%rbp)
	.loc 1 304 10
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tga_get_line_height
	.loc 1 304 47
	addl	$1, %eax
	.loc 1 304 5
	addl	%eax, -20(%rbp)
	.loc 1 308 10
	movq	$0, -8(%rbp)
	.loc 1 308 3
	jmp	.L39
.L42:
	.loc 1 310 9
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movl	-20(%rbp), %eax
	movq	%rdi, %r8
	movl	%eax, %edi
	call	tga_draw_font_line
	movl	%eax, -12(%rbp)
	.loc 1 311 8
	cmpl	$0, -12(%rbp)
	je	.L40
	.loc 1 313 10
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jnb	.L41
	.loc 1 314 7
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
.L41:
	.loc 1 315 13
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tga_get_line_height
	.loc 1 315 50
	addl	$1, %eax
	.loc 1 315 9
	addl	%eax, -20(%rbp)
.L40:
	.loc 1 308 30 discriminator 2
	movq	-56(%rbp), %rax
	addq	%rax, -8(%rbp)
.L39:
	.loc 1 308 3 discriminator 1
	cmpq	$65535, -8(%rbp)
	jle	.L42
	.loc 1 320 3
	movl	-16(%rbp), %edx
	movq	-48(%rbp), %rax
	leaq	.LC51(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	bf_Log@PLT
	.loc 1 322 3
	movq	-48(%rbp), %rax
	movq	1288(%rax), %rax
	movq	%rax, %rdi
	call	tga_set_font@PLT
	.loc 1 326 33
	movl	font_picture_test_string(%rip), %eax
	.loc 1 326 6
	testl	%eax, %eax
	je	.L43
	.loc 1 328 5
	movq	left_margin(%rip), %rax
	movl	%eax, %edi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %r8d
	movl	$0, %ecx
	leaq	.LC52(%rip), %rdx
	movl	%eax, %esi
	call	tga_draw_string@PLT
	.loc 1 329 11
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tga_get_line_height
	.loc 1 329 48
	addl	$1, %eax
	.loc 1 329 7
	addl	%eax, -20(%rbp)
.L43:
	.loc 1 331 10
	movl	-20(%rbp), %eax
	.loc 1 332 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	tga_draw_font, .-tga_draw_font
	.section	.rodata
.LC53:
	.string	"*"
.LC54:
	.string	""
.LC55:
	.string	"th"
.LC56:
	.string	"tv"
	.align 8
.LC57:
	.string	"Note: For font format 2 BBX mode has been set to 3"
	.align 8
.LC58:
	.string	"Note: Overview Picture not possible for font format 2, option -d ignored."
.LC60:
	.string	"Runtime test: %.2lf sec"
.LC61:
	.string	"bdf.tga"
.LC62:
	.string	"  "
	.text
	.globl	main
	.type	main, @function
main:
.LFB15:
	.loc 1 339 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset 3, -24
	movl	%edi, -196(%rbp)
	movq	%rsi, -208(%rbp)
	.loc 1 339 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 1 342 9
	movq	$0, -144(%rbp)
	.loc 1 343 7
	movl	$0, -184(%rbp)
	.loc 1 344 9
	leaq	.LC53(%rip), %rax
	movq	%rax, -176(%rbp)
	.loc 1 345 9
	leaq	.LC54(%rip), %rax
	movq	%rax, -168(%rbp)
	.loc 1 346 9
	leaq	.LC54(%rip), %rax
	movq	%rax, -160(%rbp)
	.loc 1 349 7
	movq	-208(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -208(%rbp)
.L54:
	.loc 1 359 10
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 359 8
	testq	%rax, %rax
	je	.L73
	.loc 1 361 10
	leaq	-208(%rbp), %rax
	movl	$104, %esi
	movq	%rax, %rdi
	call	is_arg
	.loc 1 361 8
	testl	%eax, %eax
	je	.L48
	.loc 1 363 7
	call	help
	.loc 1 364 7
	movl	$1, %edi
	call	exit@PLT
.L48:
	.loc 1 366 15
	leaq	-208(%rbp), %rax
	movl	$118, %esi
	movq	%rax, %rdi
	call	is_arg
	.loc 1 366 13
	testl	%eax, %eax
	je	.L49
	.loc 1 368 18
	movl	$1, -184(%rbp)
	jmp	.L54
.L49:
	.loc 1 370 15
	leaq	-208(%rbp), %rax
	movl	$97, %esi
	movq	%rax, %rdi
	call	is_arg
	.loc 1 370 13
	testl	%eax, %eax
	je	.L51
	.loc 1 372 31
	movl	$1, font_picture_extra_info(%rip)
	jmp	.L54
.L51:
	.loc 1 374 15
	leaq	-208(%rbp), %rax
	leaq	tile_h_size(%rip), %rdx
	leaq	.LC55(%rip), %rsi
	movq	%rax, %rdi
	call	get_num_strarg
	.loc 1 374 13
	testl	%eax, %eax
	jne	.L54
	.loc 1 377 15
	leaq	-208(%rbp), %rax
	leaq	tile_v_size(%rip), %rdx
	leaq	.LC56(%rip), %rsi
	movq	%rax, %rdi
	call	get_num_strarg
	.loc 1 377 13
	testl	%eax, %eax
	jne	.L54
	.loc 1 380 15
	leaq	-208(%rbp), %rax
	movl	$116, %esi
	movq	%rax, %rdi
	call	is_arg
	.loc 1 380 13
	testl	%eax, %eax
	je	.L52
	.loc 1 382 32
	movl	$1, font_picture_test_string(%rip)
	jmp	.L54
.L52:
	.loc 1 384 15
	leaq	-208(%rbp), %rax
	movl	$114, %esi
	movq	%rax, %rdi
	call	is_arg
	.loc 1 384 13
	testl	%eax, %eax
	je	.L53
	.loc 1 386 20
	movl	$1, runtime_test(%rip)
	jmp	.L54
.L53:
	.loc 1 388 15
	leaq	-208(%rbp), %rax
	leaq	cmdline_glyphs_per_line(%rip), %rdx
	movl	$103, %esi
	movq	%rax, %rdi
	call	get_num_arg
	.loc 1 388 13
	testl	%eax, %eax
	jne	.L54
	.loc 1 391 15
	leaq	-208(%rbp), %rax
	leaq	build_bbx_mode(%rip), %rdx
	movl	$98, %esi
	movq	%rax, %rdi
	call	get_num_arg
	.loc 1 391 13
	testl	%eax, %eax
	jne	.L54
	.loc 1 394 15
	leaq	-208(%rbp), %rax
	leaq	font_format(%rip), %rdx
	movl	$102, %esi
	movq	%rax, %rdi
	call	get_num_arg
	.loc 1 394 13
	testl	%eax, %eax
	jne	.L54
	.loc 1 397 15
	leaq	-208(%rbp), %rax
	leaq	xoffset(%rip), %rdx
	movl	$120, %esi
	movq	%rax, %rdi
	call	get_num_arg
	.loc 1 397 13
	testl	%eax, %eax
	jne	.L54
	.loc 1 400 15
	leaq	-208(%rbp), %rax
	leaq	yoffset(%rip), %rdx
	movl	$121, %esi
	movq	%rax, %rdi
	call	get_num_arg
	.loc 1 400 13
	testl	%eax, %eax
	jne	.L54
	.loc 1 403 15
	leaq	-208(%rbp), %rax
	leaq	left_margin(%rip), %rdx
	movl	$108, %esi
	movq	%rax, %rdi
	call	get_num_arg
	.loc 1 403 13
	testl	%eax, %eax
	jne	.L54
	.loc 1 406 15
	leaq	-208(%rbp), %rax
	leaq	min_distance_in_per_cent_of_char_width(%rip), %rdx
	movl	$112, %esi
	movq	%rax, %rdi
	call	get_num_arg
	.loc 1 406 13
	testl	%eax, %eax
	jne	.L54
	.loc 1 409 15
	leaq	-160(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movl	$100, %esi
	movq	%rax, %rdi
	call	get_str_arg
	.loc 1 409 13
	testl	%eax, %eax
	jne	.L54
	.loc 1 412 15
	leaq	-208(%rbp), %rax
	leaq	c_filename(%rip), %rdx
	movl	$111, %esi
	movq	%rax, %rdi
	call	get_str_arg
	.loc 1 412 13
	testl	%eax, %eax
	jne	.L54
	.loc 1 415 15
	leaq	-208(%rbp), %rax
	leaq	target_fontname(%rip), %rdx
	movl	$110, %esi
	movq	%rax, %rdi
	call	get_str_arg
	.loc 1 415 13
	testl	%eax, %eax
	jne	.L54
	.loc 1 418 15
	leaq	-176(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movl	$109, %esi
	movq	%rax, %rdi
	call	get_str_arg
	.loc 1 418 13
	testl	%eax, %eax
	jne	.L54
	.loc 1 421 15
	leaq	-208(%rbp), %rax
	leaq	k_filename(%rip), %rdx
	movl	$107, %esi
	movq	%rax, %rdi
	call	get_str_arg
	.loc 1 421 13
	testl	%eax, %eax
	jne	.L54
	.loc 1 424 15
	leaq	-168(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movl	$77, %esi
	movq	%rax, %rdi
	call	get_str_arg
	.loc 1 424 13
	testl	%eax, %eax
	jne	.L54
	.loc 1 429 22
	movq	-208(%rbp), %rax
	.loc 1 429 20
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	.loc 1 430 11
	movq	-208(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -208(%rbp)
	.loc 1 359 8
	jmp	.L54
.L73:
	.loc 1 360 7
	nop
	.loc 1 434 6
	cmpq	$0, -144(%rbp)
	jne	.L55
	.loc 1 436 5
	call	help
	.loc 1 437 5
	movl	$1, %edi
	call	exit@PLT
.L55:
	.loc 1 440 16
	movq	$0, -152(%rbp)
	.loc 1 441 21
	movq	-160(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 441 6
	testb	%al, %al
	je	.L56
	.loc 1 443 20
	movq	-160(%rbp), %rax
	pushq	$1
	pushq	$1
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	leaq	.LC54(%rip), %r8
	leaq	.LC53(%rip), %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	bf_OpenFromFile@PLT
	addq	$32, %rsp
	movq	%rax, -152(%rbp)
	.loc 1 444 8
	cmpq	$0, -152(%rbp)
	jne	.L56
	.loc 1 446 7
	movl	$1, %edi
	call	exit@PLT
.L56:
	.loc 1 450 20
	movq	font_format(%rip), %rax
	.loc 1 450 6
	cmpq	$2, %rax
	jne	.L57
	.loc 1 452 20
	movq	$3, build_bbx_mode(%rip)
.L57:
	.loc 1 458 8
	movq	tile_v_size(%rip), %rax
	movl	%eax, %r11d
	movq	tile_h_size(%rip), %rax
	movl	%eax, %r10d
	movq	yoffset(%rip), %rax
	movl	%eax, %r9d
	movq	xoffset(%rip), %rax
	movl	%eax, %r8d
	movq	font_format(%rip), %rax
	movl	%eax, %ebx
	movq	-168(%rbp), %rcx
	movq	-176(%rbp), %rdx
	movq	build_bbx_mode(%rip), %rax
	movl	%eax, %edi
	movl	-184(%rbp), %esi
	movq	-144(%rbp), %rax
	pushq	%r11
	pushq	%r10
	pushq	%r9
	pushq	%r8
	movl	%ebx, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	bf_OpenFromFile@PLT
	addq	$32, %rsp
	movq	%rax, -128(%rbp)
	.loc 1 460 6
	cmpq	$0, -128(%rbp)
	jne	.L58
	.loc 1 462 5
	movl	$1, %edi
	call	exit@PLT
.L58:
	.loc 1 465 20
	movq	font_format(%rip), %rax
	.loc 1 465 6
	cmpq	$2, %rax
	jne	.L59
	.loc 1 468 5
	movq	-128(%rbp), %rax
	leaq	.LC57(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	bf_Log@PLT
.L59:
	.loc 1 471 6
	cmpq	$0, -152(%rbp)
	je	.L60
	.loc 1 473 22
	movq	font_format(%rip), %rax
	.loc 1 473 8
	cmpq	$2, %rax
	jne	.L61
	.loc 1 475 7
	movq	-128(%rbp), %rax
	leaq	.LC58(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	bf_Log@PLT
	jmp	.L60
.L61:
	.loc 1 480 7
	movl	$12288, %esi
	movl	$1024, %edi
	call	tga_init@PLT
	.loc 1 481 27
	movq	target_fontname(%rip), %rax
	movzbl	(%rax), %eax
	.loc 1 481 10
	testb	%al, %al
	je	.L62
	.loc 1 482 6
	movq	cmdline_glyphs_per_line(%rip), %rax
	movq	%rax, %rsi
	movq	target_fontname(%rip), %rax
	movq	-128(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	tga_draw_font
	movl	%eax, -180(%rbp)
	jmp	.L63
.L62:
	.loc 1 484 6
	movq	cmdline_glyphs_per_line(%rip), %rax
	movq	%rax, %rsi
	movq	-128(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movq	-144(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	tga_draw_font
	movl	%eax, -180(%rbp)
.L63:
	.loc 1 486 25
	movl	runtime_test(%rip), %eax
	.loc 1 486 10
	testl	%eax, %eax
	je	.L64
.LBB2:
	.loc 1 489 14
	call	clock@PLT
	movq	%rax, -120(%rbp)
	.loc 1 491 2
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	fd_init@PLT
	.loc 1 492 2
	movq	-128(%rbp), %rax
	movq	1288(%rax), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fd_set_font@PLT
	.loc 1 493 9
	movq	$0, -136(%rbp)
	.loc 1 493 2
	jmp	.L65
.L66:
	.loc 1 494 4 discriminator 3
	movq	left_margin(%rip), %rax
	movl	%eax, %esi
	movl	-180(%rbp), %edx
	leaq	-112(%rbp), %rax
	leaq	.LC52(%rip), %rcx
	movq	%rax, %rdi
	call	fd_draw_string@PLT
	.loc 1 493 26 discriminator 3
	addq	$1, -136(%rbp)
.L65:
	.loc 1 493 2 discriminator 1
	cmpq	$9999, -136(%rbp)
	jle	.L66
	.loc 1 495 49
	call	clock@PLT
	.loc 1 495 56
	subq	-120(%rbp), %rax
	.loc 1 495 40
	cvtsi2sdq	%rax, %xmm0
	.loc 1 495 2
	movsd	.LC59(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	-128(%rbp), %rax
	leaq	.LC60(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	bf_Log@PLT
.L64:
.LBE2:
	.loc 1 498 7
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movl	$1, %edi
	call	tga_set_pixel@PLT
	.loc 1 500 7
	leaq	.LC61(%rip), %rdi
	call	tga_save@PLT
.L60:
	.loc 1 506 19
	movq	c_filename(%rip), %rax
	.loc 1 506 6
	testq	%rax, %rax
	je	.L67
	.loc 1 509 22
	movq	font_format(%rip), %rax
	.loc 1 509 8
	testq	%rax, %rax
	jne	.L68
	.loc 1 511 7
	movq	target_fontname(%rip), %rdx
	movq	c_filename(%rip), %rsi
	movq	-128(%rbp), %rax
	leaq	.LC62(%rip), %rcx
	movq	%rax, %rdi
	call	bf_WriteUCGCByFilename@PLT
	jmp	.L67
.L68:
	.loc 1 516 7
	movq	target_fontname(%rip), %rdx
	movq	c_filename(%rip), %rsi
	movq	-128(%rbp), %rax
	leaq	.LC62(%rip), %rcx
	movq	%rax, %rdi
	call	bf_WriteU8G2CByFilename@PLT
.L67:
	.loc 1 520 19
	movq	k_filename(%rip), %rax
	.loc 1 520 6
	testq	%rax, %rax
	je	.L69
	.loc 1 522 5
	movq	min_distance_in_per_cent_of_char_width(%rip), %rax
	movzbl	%al, %ecx
	movq	target_fontname(%rip), %rdx
	movq	k_filename(%rip), %rsi
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	bdf_calculate_all_kerning@PLT
.L69:
	.loc 1 527 3
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	bf_Close@PLT
	.loc 1 528 10
	movl	$0, %eax
	.loc 1 529 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L71
	call	__stack_chk_fail@PLT
.L71:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	main, .-main
	.local	s.3501
	.comm	s.3501,256,32
	.section	.rodata
	.align 8
.LC59:
	.long	0
	.long	1093567616
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h"
	.file 5 "/usr/include/time.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 11 "bdf_glyph.h"
	.file 12 "bdf_font.h"
	.file 13 "fd.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xecc
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF181
	.byte	0xc
	.long	.LASF182
	.long	.LASF183
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF8
	.byte	0x2
	.byte	0xd1
	.byte	0x17
	.long	0x39
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x8
	.long	0x60
	.uleb128 0x6
	.long	0x4e
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x6
	.long	0x59
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF4
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF6
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x26
	.byte	0x17
	.long	0x7a
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF10
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x6c
	.uleb128 0x2
	.long	.LASF12
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x6c
	.uleb128 0x2
	.long	.LASF13
	.byte	0x3
	.byte	0x9c
	.byte	0x1b
	.long	0x6c
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0x59
	.uleb128 0x2
	.long	.LASF14
	.byte	0x4
	.byte	0x7
	.byte	0x13
	.long	0xb3
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF15
	.uleb128 0x8
	.long	0x59
	.long	0xea
	.uleb128 0x9
	.long	0x39
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.long	0xc1
	.long	0xfa
	.uleb128 0x9
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.long	.LASF16
	.byte	0x5
	.byte	0x9f
	.byte	0xe
	.long	0xea
	.uleb128 0xa
	.long	.LASF17
	.byte	0x5
	.byte	0xa0
	.byte	0xc
	.long	0x47
	.uleb128 0xa
	.long	.LASF18
	.byte	0x5
	.byte	0xa1
	.byte	0x11
	.long	0x6c
	.uleb128 0xa
	.long	.LASF19
	.byte	0x5
	.byte	0xa6
	.byte	0xe
	.long	0xea
	.uleb128 0xa
	.long	.LASF20
	.byte	0x5
	.byte	0xae
	.byte	0xc
	.long	0x47
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.byte	0xaf
	.byte	0x11
	.long	0x6c
	.uleb128 0xb
	.long	.LASF63
	.byte	0xd8
	.byte	0x6
	.byte	0x31
	.byte	0x8
	.long	0x2c9
	.uleb128 0xc
	.long	.LASF22
	.byte	0x6
	.byte	0x33
	.byte	0x7
	.long	0x47
	.byte	0
	.uleb128 0xc
	.long	.LASF23
	.byte	0x6
	.byte	0x36
	.byte	0x9
	.long	0xc1
	.byte	0x8
	.uleb128 0xc
	.long	.LASF24
	.byte	0x6
	.byte	0x37
	.byte	0x9
	.long	0xc1
	.byte	0x10
	.uleb128 0xc
	.long	.LASF25
	.byte	0x6
	.byte	0x38
	.byte	0x9
	.long	0xc1
	.byte	0x18
	.uleb128 0xc
	.long	.LASF26
	.byte	0x6
	.byte	0x39
	.byte	0x9
	.long	0xc1
	.byte	0x20
	.uleb128 0xc
	.long	.LASF27
	.byte	0x6
	.byte	0x3a
	.byte	0x9
	.long	0xc1
	.byte	0x28
	.uleb128 0xc
	.long	.LASF28
	.byte	0x6
	.byte	0x3b
	.byte	0x9
	.long	0xc1
	.byte	0x30
	.uleb128 0xc
	.long	.LASF29
	.byte	0x6
	.byte	0x3c
	.byte	0x9
	.long	0xc1
	.byte	0x38
	.uleb128 0xc
	.long	.LASF30
	.byte	0x6
	.byte	0x3d
	.byte	0x9
	.long	0xc1
	.byte	0x40
	.uleb128 0xc
	.long	.LASF31
	.byte	0x6
	.byte	0x40
	.byte	0x9
	.long	0xc1
	.byte	0x48
	.uleb128 0xc
	.long	.LASF32
	.byte	0x6
	.byte	0x41
	.byte	0x9
	.long	0xc1
	.byte	0x50
	.uleb128 0xc
	.long	.LASF33
	.byte	0x6
	.byte	0x42
	.byte	0x9
	.long	0xc1
	.byte	0x58
	.uleb128 0xc
	.long	.LASF34
	.byte	0x6
	.byte	0x44
	.byte	0x16
	.long	0x2e2
	.byte	0x60
	.uleb128 0xc
	.long	.LASF35
	.byte	0x6
	.byte	0x46
	.byte	0x14
	.long	0x2e8
	.byte	0x68
	.uleb128 0xc
	.long	.LASF36
	.byte	0x6
	.byte	0x48
	.byte	0x7
	.long	0x47
	.byte	0x70
	.uleb128 0xc
	.long	.LASF37
	.byte	0x6
	.byte	0x49
	.byte	0x7
	.long	0x47
	.byte	0x74
	.uleb128 0xc
	.long	.LASF38
	.byte	0x6
	.byte	0x4a
	.byte	0xb
	.long	0x9b
	.byte	0x78
	.uleb128 0xc
	.long	.LASF39
	.byte	0x6
	.byte	0x4d
	.byte	0x12
	.long	0x40
	.byte	0x80
	.uleb128 0xc
	.long	.LASF40
	.byte	0x6
	.byte	0x4e
	.byte	0xf
	.long	0x81
	.byte	0x82
	.uleb128 0xc
	.long	.LASF41
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.long	0x2ee
	.byte	0x83
	.uleb128 0xc
	.long	.LASF42
	.byte	0x6
	.byte	0x51
	.byte	0xf
	.long	0x2fe
	.byte	0x88
	.uleb128 0xc
	.long	.LASF43
	.byte	0x6
	.byte	0x59
	.byte	0xd
	.long	0xa7
	.byte	0x90
	.uleb128 0xc
	.long	.LASF44
	.byte	0x6
	.byte	0x5b
	.byte	0x17
	.long	0x309
	.byte	0x98
	.uleb128 0xc
	.long	.LASF45
	.byte	0x6
	.byte	0x5c
	.byte	0x19
	.long	0x314
	.byte	0xa0
	.uleb128 0xc
	.long	.LASF46
	.byte	0x6
	.byte	0x5d
	.byte	0x14
	.long	0x2e8
	.byte	0xa8
	.uleb128 0xc
	.long	.LASF47
	.byte	0x6
	.byte	0x5e
	.byte	0x9
	.long	0xbf
	.byte	0xb0
	.uleb128 0xc
	.long	.LASF48
	.byte	0x6
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xc
	.long	.LASF49
	.byte	0x6
	.byte	0x60
	.byte	0x7
	.long	0x47
	.byte	0xc0
	.uleb128 0xc
	.long	.LASF50
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.long	0x31a
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF51
	.byte	0x7
	.byte	0x7
	.byte	0x19
	.long	0x142
	.uleb128 0xd
	.long	.LASF184
	.byte	0x6
	.byte	0x2b
	.byte	0xe
	.uleb128 0xe
	.long	.LASF52
	.uleb128 0x5
	.byte	0x8
	.long	0x2dd
	.uleb128 0x5
	.byte	0x8
	.long	0x142
	.uleb128 0x8
	.long	0x59
	.long	0x2fe
	.uleb128 0x9
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x2d5
	.uleb128 0xe
	.long	.LASF53
	.uleb128 0x5
	.byte	0x8
	.long	0x304
	.uleb128 0xe
	.long	.LASF54
	.uleb128 0x5
	.byte	0x8
	.long	0x30f
	.uleb128 0x8
	.long	0x59
	.long	0x32a
	.uleb128 0x9
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.long	.LASF55
	.byte	0x8
	.byte	0x89
	.byte	0xe
	.long	0x336
	.uleb128 0x5
	.byte	0x8
	.long	0x2c9
	.uleb128 0xa
	.long	.LASF56
	.byte	0x8
	.byte	0x8a
	.byte	0xe
	.long	0x336
	.uleb128 0xa
	.long	.LASF57
	.byte	0x8
	.byte	0x8b
	.byte	0xe
	.long	0x336
	.uleb128 0xa
	.long	.LASF58
	.byte	0x9
	.byte	0x1a
	.byte	0xc
	.long	0x47
	.uleb128 0x8
	.long	0x54
	.long	0x36b
	.uleb128 0xf
	.byte	0
	.uleb128 0x6
	.long	0x360
	.uleb128 0xa
	.long	.LASF59
	.byte	0x9
	.byte	0x1b
	.byte	0x1a
	.long	0x36b
	.uleb128 0x2
	.long	.LASF60
	.byte	0xa
	.byte	0x18
	.byte	0x13
	.long	0x88
	.uleb128 0x6
	.long	0x37c
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF61
	.uleb128 0x2
	.long	.LASF62
	.byte	0xb
	.byte	0x9
	.byte	0x21
	.long	0x3a0
	.uleb128 0x10
	.long	.LASF64
	.value	0x520
	.byte	0xc
	.byte	0x16
	.byte	0x8
	.long	0x5e7
	.uleb128 0xc
	.long	.LASF65
	.byte	0xc
	.byte	0x18
	.byte	0x7
	.long	0x47
	.byte	0
	.uleb128 0xc
	.long	.LASF66
	.byte	0xc
	.byte	0x1a
	.byte	0xa
	.long	0x770
	.byte	0x8
	.uleb128 0xc
	.long	.LASF67
	.byte	0xc
	.byte	0x1b
	.byte	0x7
	.long	0x47
	.byte	0x10
	.uleb128 0xc
	.long	.LASF68
	.byte	0xc
	.byte	0x1c
	.byte	0x7
	.long	0x47
	.byte	0x14
	.uleb128 0xc
	.long	.LASF69
	.byte	0xc
	.byte	0x1f
	.byte	0x8
	.long	0x77c
	.byte	0x18
	.uleb128 0x11
	.long	.LASF70
	.byte	0xc
	.byte	0x20
	.byte	0x7
	.long	0x47
	.value	0x418
	.uleb128 0x11
	.long	.LASF71
	.byte	0xc
	.byte	0x21
	.byte	0x7
	.long	0x47
	.value	0x41c
	.uleb128 0x11
	.long	.LASF72
	.byte	0xc
	.byte	0x23
	.byte	0x8
	.long	0x6c
	.value	0x420
	.uleb128 0x11
	.long	.LASF73
	.byte	0xc
	.byte	0x25
	.byte	0x8
	.long	0x6c
	.value	0x428
	.uleb128 0x11
	.long	.LASF74
	.byte	0xc
	.byte	0x26
	.byte	0x8
	.long	0x6c
	.value	0x430
	.uleb128 0x11
	.long	.LASF75
	.byte	0xc
	.byte	0x28
	.byte	0x8
	.long	0x6c
	.value	0x438
	.uleb128 0x11
	.long	.LASF76
	.byte	0xc
	.byte	0x29
	.byte	0x8
	.long	0x6c
	.value	0x440
	.uleb128 0x11
	.long	.LASF77
	.byte	0xc
	.byte	0x2a
	.byte	0x8
	.long	0x6c
	.value	0x448
	.uleb128 0x11
	.long	.LASF78
	.byte	0xc
	.byte	0x2b
	.byte	0x8
	.long	0x6c
	.value	0x450
	.uleb128 0x11
	.long	.LASF79
	.byte	0xc
	.byte	0x2d
	.byte	0x7
	.long	0x47
	.value	0x458
	.uleb128 0x11
	.long	.LASF80
	.byte	0xc
	.byte	0x2e
	.byte	0x7
	.long	0x47
	.value	0x45c
	.uleb128 0x11
	.long	.LASF81
	.byte	0xc
	.byte	0x2f
	.byte	0x7
	.long	0x47
	.value	0x460
	.uleb128 0x12
	.string	"fp"
	.byte	0xc
	.byte	0x30
	.byte	0x9
	.long	0x336
	.value	0x468
	.uleb128 0x11
	.long	.LASF82
	.byte	0xc
	.byte	0x32
	.byte	0x9
	.long	0xc1
	.value	0x470
	.uleb128 0x11
	.long	.LASF83
	.byte	0xc
	.byte	0x33
	.byte	0x9
	.long	0xc1
	.value	0x478
	.uleb128 0x11
	.long	.LASF84
	.byte	0xc
	.byte	0x35
	.byte	0x8
	.long	0x6c
	.value	0x480
	.uleb128 0x11
	.long	.LASF85
	.byte	0xc
	.byte	0x37
	.byte	0x7
	.long	0x47
	.value	0x488
	.uleb128 0x12
	.string	"max"
	.byte	0xc
	.byte	0x39
	.byte	0x9
	.long	0x621
	.value	0x490
	.uleb128 0x11
	.long	.LASF86
	.byte	0xc
	.byte	0x3c
	.byte	0x8
	.long	0x6c
	.value	0x4b0
	.uleb128 0x11
	.long	.LASF87
	.byte	0xc
	.byte	0x3d
	.byte	0x8
	.long	0x6c
	.value	0x4b8
	.uleb128 0x11
	.long	.LASF88
	.byte	0xc
	.byte	0x3e
	.byte	0x8
	.long	0x6c
	.value	0x4c0
	.uleb128 0x11
	.long	.LASF89
	.byte	0xc
	.byte	0x3f
	.byte	0x8
	.long	0x6c
	.value	0x4c8
	.uleb128 0x11
	.long	.LASF90
	.byte	0xc
	.byte	0x42
	.byte	0x8
	.long	0x6c
	.value	0x4d0
	.uleb128 0x11
	.long	.LASF91
	.byte	0xc
	.byte	0x43
	.byte	0x8
	.long	0x6c
	.value	0x4d8
	.uleb128 0x11
	.long	.LASF92
	.byte	0xc
	.byte	0x46
	.byte	0x8
	.long	0x6c
	.value	0x4e0
	.uleb128 0x11
	.long	.LASF93
	.byte	0xc
	.byte	0x47
	.byte	0x8
	.long	0x6c
	.value	0x4e8
	.uleb128 0x11
	.long	.LASF94
	.byte	0xc
	.byte	0x4a
	.byte	0x7
	.long	0x47
	.value	0x4f0
	.uleb128 0x11
	.long	.LASF95
	.byte	0xc
	.byte	0x4b
	.byte	0x7
	.long	0x47
	.value	0x4f4
	.uleb128 0x11
	.long	.LASF96
	.byte	0xc
	.byte	0x4c
	.byte	0x7
	.long	0x47
	.value	0x4f8
	.uleb128 0x11
	.long	.LASF97
	.byte	0xc
	.byte	0x4d
	.byte	0x7
	.long	0x47
	.value	0x4fc
	.uleb128 0x11
	.long	.LASF98
	.byte	0xc
	.byte	0x4e
	.byte	0x7
	.long	0x47
	.value	0x500
	.uleb128 0x11
	.long	.LASF99
	.byte	0xc
	.byte	0x51
	.byte	0xc
	.long	0x75e
	.value	0x508
	.uleb128 0x11
	.long	.LASF100
	.byte	0xc
	.byte	0x52
	.byte	0x7
	.long	0x47
	.value	0x510
	.uleb128 0x11
	.long	.LASF101
	.byte	0xc
	.byte	0x53
	.byte	0x7
	.long	0x47
	.value	0x514
	.uleb128 0x11
	.long	.LASF102
	.byte	0xc
	.byte	0x56
	.byte	0x7
	.long	0x47
	.value	0x518
	.uleb128 0x11
	.long	.LASF103
	.byte	0xc
	.byte	0x57
	.byte	0x7
	.long	0x47
	.value	0x51c
	.byte	0
	.uleb128 0xb
	.long	.LASF104
	.byte	0x20
	.byte	0xb
	.byte	0xc
	.byte	0x8
	.long	0x621
	.uleb128 0x13
	.string	"w"
	.byte	0xb
	.byte	0xe
	.byte	0x8
	.long	0x6c
	.byte	0
	.uleb128 0x13
	.string	"h"
	.byte	0xb
	.byte	0xf
	.byte	0x8
	.long	0x6c
	.byte	0x8
	.uleb128 0x13
	.string	"x"
	.byte	0xb
	.byte	0x10
	.byte	0x8
	.long	0x6c
	.byte	0x10
	.uleb128 0x13
	.string	"y"
	.byte	0xb
	.byte	0x11
	.byte	0x8
	.long	0x6c
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.long	.LASF105
	.byte	0xb
	.byte	0x13
	.byte	0x1c
	.long	0x5e7
	.uleb128 0xb
	.long	.LASF106
	.byte	0xa0
	.byte	0xb
	.byte	0x16
	.byte	0x8
	.long	0x758
	.uleb128 0x13
	.string	"bf"
	.byte	0xb
	.byte	0x18
	.byte	0x9
	.long	0x758
	.byte	0
	.uleb128 0xc
	.long	.LASF72
	.byte	0xb
	.byte	0x1a
	.byte	0x8
	.long	0x6c
	.byte	0x8
	.uleb128 0xc
	.long	.LASF107
	.byte	0xb
	.byte	0x1b
	.byte	0x8
	.long	0x6c
	.byte	0x10
	.uleb128 0xc
	.long	.LASF73
	.byte	0xb
	.byte	0x1d
	.byte	0x8
	.long	0x6c
	.byte	0x18
	.uleb128 0xc
	.long	.LASF74
	.byte	0xb
	.byte	0x1e
	.byte	0x8
	.long	0x6c
	.byte	0x20
	.uleb128 0x13
	.string	"bbx"
	.byte	0xb
	.byte	0x20
	.byte	0x9
	.long	0x621
	.byte	0x28
	.uleb128 0xc
	.long	.LASF108
	.byte	0xb
	.byte	0x21
	.byte	0x8
	.long	0x6c
	.byte	0x48
	.uleb128 0xc
	.long	.LASF109
	.byte	0xb
	.byte	0x22
	.byte	0x7
	.long	0x47
	.byte	0x50
	.uleb128 0xc
	.long	.LASF110
	.byte	0xb
	.byte	0x24
	.byte	0xc
	.long	0x75e
	.byte	0x58
	.uleb128 0xc
	.long	.LASF111
	.byte	0xb
	.byte	0x25
	.byte	0x7
	.long	0x47
	.byte	0x60
	.uleb128 0xc
	.long	.LASF112
	.byte	0xb
	.byte	0x26
	.byte	0x7
	.long	0x47
	.byte	0x64
	.uleb128 0xc
	.long	.LASF99
	.byte	0xb
	.byte	0x2b
	.byte	0xc
	.long	0x75e
	.byte	0x68
	.uleb128 0xc
	.long	.LASF100
	.byte	0xb
	.byte	0x2c
	.byte	0x7
	.long	0x47
	.byte	0x70
	.uleb128 0xc
	.long	.LASF101
	.byte	0xb
	.byte	0x2d
	.byte	0x7
	.long	0x47
	.byte	0x74
	.uleb128 0xc
	.long	.LASF113
	.byte	0xb
	.byte	0x2e
	.byte	0x7
	.long	0x47
	.byte	0x78
	.uleb128 0xc
	.long	.LASF114
	.byte	0xb
	.byte	0x32
	.byte	0xc
	.long	0x65
	.byte	0x7c
	.uleb128 0xc
	.long	.LASF115
	.byte	0xb
	.byte	0x33
	.byte	0xc
	.long	0x65
	.byte	0x80
	.uleb128 0xc
	.long	.LASF116
	.byte	0xb
	.byte	0x35
	.byte	0x7
	.long	0x47
	.byte	0x84
	.uleb128 0xc
	.long	.LASF117
	.byte	0xb
	.byte	0x36
	.byte	0xc
	.long	0x65
	.byte	0x88
	.uleb128 0xc
	.long	.LASF118
	.byte	0xb
	.byte	0x37
	.byte	0xc
	.long	0x65
	.byte	0x8c
	.uleb128 0xc
	.long	.LASF119
	.byte	0xb
	.byte	0x38
	.byte	0xc
	.long	0x65
	.byte	0x90
	.uleb128 0xc
	.long	.LASF120
	.byte	0xb
	.byte	0x3a
	.byte	0x8
	.long	0x6c
	.byte	0x98
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x394
	.uleb128 0x5
	.byte	0x8
	.long	0x37c
	.uleb128 0x2
	.long	.LASF121
	.byte	0xb
	.byte	0x3d
	.byte	0x22
	.long	0x62d
	.uleb128 0x5
	.byte	0x8
	.long	0x776
	.uleb128 0x5
	.byte	0x8
	.long	0x764
	.uleb128 0x8
	.long	0x59
	.long	0x78d
	.uleb128 0x14
	.long	0x39
	.value	0x3ff
	.byte	0
	.uleb128 0xb
	.long	.LASF122
	.byte	0x50
	.byte	0xd
	.byte	0x8
	.byte	0x8
	.long	0x8cf
	.uleb128 0xc
	.long	.LASF123
	.byte	0xd
	.byte	0xa
	.byte	0xc
	.long	0x65
	.byte	0
	.uleb128 0xc
	.long	.LASF124
	.byte	0xd
	.byte	0xb
	.byte	0xc
	.long	0x65
	.byte	0x4
	.uleb128 0xc
	.long	.LASF125
	.byte	0xd
	.byte	0xc
	.byte	0xc
	.long	0x65
	.byte	0x8
	.uleb128 0x13
	.string	"x"
	.byte	0xd
	.byte	0xe
	.byte	0xc
	.long	0x65
	.byte	0xc
	.uleb128 0x13
	.string	"y"
	.byte	0xd
	.byte	0xf
	.byte	0xc
	.long	0x65
	.byte	0x10
	.uleb128 0xc
	.long	.LASF126
	.byte	0xd
	.byte	0x10
	.byte	0xc
	.long	0x65
	.byte	0x14
	.uleb128 0xc
	.long	.LASF127
	.byte	0xd
	.byte	0x11
	.byte	0xc
	.long	0x65
	.byte	0x18
	.uleb128 0xc
	.long	.LASF128
	.byte	0xd
	.byte	0x13
	.byte	0x12
	.long	0x8cf
	.byte	0x20
	.uleb128 0xc
	.long	.LASF129
	.byte	0xd
	.byte	0x14
	.byte	0xc
	.long	0x65
	.byte	0x28
	.uleb128 0xc
	.long	.LASF130
	.byte	0xd
	.byte	0x15
	.byte	0xc
	.long	0x65
	.byte	0x2c
	.uleb128 0xc
	.long	.LASF67
	.byte	0xd
	.byte	0x17
	.byte	0xb
	.long	0x37c
	.byte	0x30
	.uleb128 0xc
	.long	.LASF131
	.byte	0xd
	.byte	0x18
	.byte	0xb
	.long	0x37c
	.byte	0x31
	.uleb128 0xc
	.long	.LASF132
	.byte	0xd
	.byte	0x19
	.byte	0xb
	.long	0x37c
	.byte	0x32
	.uleb128 0xc
	.long	.LASF133
	.byte	0xd
	.byte	0x1a
	.byte	0xb
	.long	0x37c
	.byte	0x33
	.uleb128 0xc
	.long	.LASF134
	.byte	0xd
	.byte	0x1b
	.byte	0xb
	.long	0x37c
	.byte	0x34
	.uleb128 0xc
	.long	.LASF135
	.byte	0xd
	.byte	0x1c
	.byte	0xb
	.long	0x37c
	.byte	0x35
	.uleb128 0xc
	.long	.LASF136
	.byte	0xd
	.byte	0x1d
	.byte	0xb
	.long	0x37c
	.byte	0x36
	.uleb128 0xc
	.long	.LASF137
	.byte	0xd
	.byte	0x1e
	.byte	0xb
	.long	0x37c
	.byte	0x37
	.uleb128 0xc
	.long	.LASF138
	.byte	0xd
	.byte	0x1f
	.byte	0xb
	.long	0x37c
	.byte	0x38
	.uleb128 0xc
	.long	.LASF139
	.byte	0xd
	.byte	0x20
	.byte	0xb
	.long	0x37c
	.byte	0x39
	.uleb128 0xc
	.long	.LASF140
	.byte	0xd
	.byte	0x21
	.byte	0xb
	.long	0x37c
	.byte	0x3a
	.uleb128 0xc
	.long	.LASF141
	.byte	0xd
	.byte	0x22
	.byte	0xc
	.long	0x65
	.byte	0x3c
	.uleb128 0xc
	.long	.LASF142
	.byte	0xd
	.byte	0x23
	.byte	0xc
	.long	0x65
	.byte	0x40
	.uleb128 0xc
	.long	.LASF143
	.byte	0xd
	.byte	0x25
	.byte	0xc
	.long	0x75e
	.byte	0x48
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x388
	.uleb128 0x2
	.long	.LASF144
	.byte	0xd
	.byte	0x28
	.byte	0x1a
	.long	0x78d
	.uleb128 0x15
	.long	.LASF145
	.byte	0x1
	.byte	0xba
	.byte	0xf
	.long	0x39
	.uleb128 0x9
	.byte	0x3
	.quad	left_margin
	.uleb128 0x15
	.long	.LASF146
	.byte	0x1
	.byte	0xbb
	.byte	0xf
	.long	0x39
	.uleb128 0x9
	.byte	0x3
	.quad	build_bbx_mode
	.uleb128 0x15
	.long	.LASF147
	.byte	0x1
	.byte	0xbc
	.byte	0xf
	.long	0x39
	.uleb128 0x9
	.byte	0x3
	.quad	font_format
	.uleb128 0x15
	.long	.LASF148
	.byte	0x1
	.byte	0xbd
	.byte	0xf
	.long	0x39
	.uleb128 0x9
	.byte	0x3
	.quad	min_distance_in_per_cent_of_char_width
	.uleb128 0x15
	.long	.LASF149
	.byte	0x1
	.byte	0xbe
	.byte	0xf
	.long	0x39
	.uleb128 0x9
	.byte	0x3
	.quad	cmdline_glyphs_per_line
	.uleb128 0x15
	.long	.LASF150
	.byte	0x1
	.byte	0xbf
	.byte	0xf
	.long	0x39
	.uleb128 0x9
	.byte	0x3
	.quad	xoffset
	.uleb128 0x15
	.long	.LASF151
	.byte	0x1
	.byte	0xc0
	.byte	0xf
	.long	0x39
	.uleb128 0x9
	.byte	0x3
	.quad	yoffset
	.uleb128 0x15
	.long	.LASF102
	.byte	0x1
	.byte	0xc1
	.byte	0xf
	.long	0x39
	.uleb128 0x9
	.byte	0x3
	.quad	tile_h_size
	.uleb128 0x15
	.long	.LASF103
	.byte	0x1
	.byte	0xc2
	.byte	0xf
	.long	0x39
	.uleb128 0x9
	.byte	0x3
	.quad	tile_v_size
	.uleb128 0x15
	.long	.LASF152
	.byte	0x1
	.byte	0xc3
	.byte	0x5
	.long	0x47
	.uleb128 0x9
	.byte	0x3
	.quad	font_picture_extra_info
	.uleb128 0x15
	.long	.LASF153
	.byte	0x1
	.byte	0xc4
	.byte	0x5
	.long	0x47
	.uleb128 0x9
	.byte	0x3
	.quad	font_picture_test_string
	.uleb128 0x15
	.long	.LASF154
	.byte	0x1
	.byte	0xc5
	.byte	0x5
	.long	0x47
	.uleb128 0x9
	.byte	0x3
	.quad	runtime_test
	.uleb128 0x15
	.long	.LASF155
	.byte	0x1
	.byte	0xc6
	.byte	0x7
	.long	0xc1
	.uleb128 0x9
	.byte	0x3
	.quad	c_filename
	.uleb128 0x15
	.long	.LASF156
	.byte	0x1
	.byte	0xc7
	.byte	0x7
	.long	0xc1
	.uleb128 0x9
	.byte	0x3
	.quad	k_filename
	.uleb128 0x15
	.long	.LASF157
	.byte	0x1
	.byte	0xc8
	.byte	0x7
	.long	0xc1
	.uleb128 0x9
	.byte	0x3
	.quad	target_fontname
	.uleb128 0x16
	.long	.LASF165
	.byte	0x1
	.value	0x152
	.byte	0x5
	.long	0x47
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xb36
	.uleb128 0x17
	.long	.LASF158
	.byte	0x1
	.value	0x152
	.byte	0xe
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x17
	.long	.LASF159
	.byte	0x1
	.value	0x152
	.byte	0x1b
	.long	0xb36
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x18
	.long	.LASF160
	.byte	0x1
	.value	0x154
	.byte	0x9
	.long	0x758
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x19
	.string	"bf"
	.byte	0x1
	.value	0x155
	.byte	0x9
	.long	0x758
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x18
	.long	.LASF161
	.byte	0x1
	.value	0x156
	.byte	0x9
	.long	0xc1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x18
	.long	.LASF65
	.byte	0x1
	.value	0x157
	.byte	0x7
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x18
	.long	.LASF162
	.byte	0x1
	.value	0x158
	.byte	0x9
	.long	0xc1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x18
	.long	.LASF163
	.byte	0x1
	.value	0x159
	.byte	0x9
	.long	0xc1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x18
	.long	.LASF164
	.byte	0x1
	.value	0x15a
	.byte	0x9
	.long	0xc1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x19
	.string	"y"
	.byte	0x1
	.value	0x15b
	.byte	0xc
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x1a
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.value	0x1e8
	.byte	0x7
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x19
	.string	"c"
	.byte	0x1
	.value	0x1e9
	.byte	0xa
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x19
	.string	"fd"
	.byte	0x1
	.value	0x1ea
	.byte	0x7
	.long	0x8d5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0xc1
	.uleb128 0x16
	.long	.LASF166
	.byte	0x1
	.value	0x126
	.byte	0xa
	.long	0x65
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xbda
	.uleb128 0x1b
	.string	"y"
	.byte	0x1
	.value	0x126
	.byte	0x21
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.long	.LASF167
	.byte	0x1
	.value	0x126
	.byte	0x30
	.long	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.long	.LASF160
	.byte	0x1
	.value	0x126
	.byte	0x40
	.long	0x758
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.string	"bf"
	.byte	0x1
	.value	0x126
	.byte	0x54
	.long	0x758
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.long	.LASF168
	.byte	0x1
	.value	0x126
	.byte	0x5d
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.value	0x128
	.byte	0x8
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.string	"x"
	.byte	0x1
	.value	0x129
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.long	.LASF169
	.byte	0x1
	.value	0x129
	.byte	0xf
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1c
	.long	.LASF170
	.byte	0x1
	.byte	0xfe
	.byte	0xa
	.long	0x65
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xc7b
	.uleb128 0x1d
	.string	"y"
	.byte	0x1
	.byte	0xfe
	.byte	0x26
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1e
	.long	.LASF167
	.byte	0x1
	.byte	0xfe
	.byte	0x35
	.long	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.long	.LASF160
	.byte	0x1
	.byte	0xfe
	.byte	0x45
	.long	0x758
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.string	"bf"
	.byte	0x1
	.byte	0xfe
	.byte	0x59
	.long	0x758
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x19
	.string	"x"
	.byte	0x1
	.value	0x100
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.long	.LASF171
	.byte	0x1
	.value	0x101
	.byte	0x7
	.long	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.long	.LASF172
	.byte	0x1
	.value	0x101
	.byte	0xe
	.long	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.value	0x102
	.byte	0xf
	.long	0xc7b
	.uleb128 0x9
	.byte	0x3
	.quad	s.3501
	.byte	0
	.uleb128 0x8
	.long	0x59
	.long	0xc8b
	.uleb128 0x9
	.long	0x39
	.byte	0xff
	.byte	0
	.uleb128 0x1c
	.long	.LASF173
	.byte	0x1
	.byte	0xd7
	.byte	0xa
	.long	0x65
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xd37
	.uleb128 0x1d
	.string	"y"
	.byte	0x1
	.byte	0xd7
	.byte	0x26
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1e
	.long	.LASF174
	.byte	0x1
	.byte	0xd7
	.byte	0x2e
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1e
	.long	.LASF160
	.byte	0x1
	.byte	0xd7
	.byte	0x3f
	.long	0x758
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1d
	.string	"bf"
	.byte	0x1
	.byte	0xd7
	.byte	0x53
	.long	0x758
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1e
	.long	.LASF168
	.byte	0x1
	.byte	0xd7
	.byte	0x5c
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.byte	0xd9
	.byte	0x8
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1f
	.string	"x"
	.byte	0x1
	.byte	0xda
	.byte	0xc
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x20
	.long	.LASF175
	.byte	0x1
	.byte	0xdb
	.byte	0x7
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1f
	.string	"pre"
	.byte	0x1
	.byte	0xdc
	.byte	0x8
	.long	0xda
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x1c
	.long	.LASF176
	.byte	0x1
	.byte	0xcc
	.byte	0xa
	.long	0x65
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xd84
	.uleb128 0x1e
	.long	.LASF160
	.byte	0x1
	.byte	0xcc
	.byte	0x24
	.long	0x758
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"bf"
	.byte	0x1
	.byte	0xcc
	.byte	0x38
	.long	0x758
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.string	"h"
	.byte	0x1
	.byte	0xce
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x21
	.long	.LASF185
	.byte	0x1
	.byte	0x80
	.byte	0x6
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	.LASF177
	.byte	0x1
	.byte	0x72
	.byte	0x5
	.long	0x47
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xddd
	.uleb128 0x1e
	.long	.LASF159
	.byte	0x1
	.byte	0x72
	.byte	0x14
	.long	0xddd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"c"
	.byte	0x1
	.byte	0x72
	.byte	0x1e
	.long	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0xb36
	.uleb128 0x1c
	.long	.LASF178
	.byte	0x1
	.byte	0x5e
	.byte	0x5
	.long	0x47
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xe31
	.uleb128 0x1e
	.long	.LASF159
	.byte	0x1
	.byte	0x5e
	.byte	0x1c
	.long	0xddd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.byte	0x5e
	.byte	0x2e
	.long	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF179
	.byte	0x1
	.byte	0x5e
	.byte	0x40
	.long	0xe31
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x39
	.uleb128 0x1c
	.long	.LASF180
	.byte	0x1
	.byte	0x44
	.byte	0x5
	.long	0x47
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xe85
	.uleb128 0x1e
	.long	.LASF159
	.byte	0x1
	.byte	0x44
	.byte	0x19
	.long	0xddd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"c"
	.byte	0x1
	.byte	0x44
	.byte	0x23
	.long	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.long	.LASF179
	.byte	0x1
	.byte	0x44
	.byte	0x35
	.long	0xe31
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x23
	.long	.LASF186
	.byte	0x1
	.byte	0x2d
	.byte	0x5
	.long	0x47
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.long	.LASF159
	.byte	0x1
	.byte	0x2d
	.byte	0x19
	.long	0xddd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"c"
	.byte	0x1
	.byte	0x2d
	.byte	0x23
	.long	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.long	.LASF179
	.byte	0x1
	.byte	0x2d
	.byte	0x2d
	.long	0xb36
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x39
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
.LASF65:
	.string	"is_verbose"
.LASF41:
	.string	"_shortbuf"
.LASF182:
	.string	"main.c"
.LASF82:
	.string	"str_font"
.LASF184:
	.string	"_IO_lock_t"
.LASF137:
	.string	"bits_per_delta_x"
.LASF57:
	.string	"stderr"
.LASF30:
	.string	"_IO_buf_end"
.LASF106:
	.string	"_bdf_glyph_struct"
.LASF128:
	.string	"decode_ptr"
.LASF131:
	.string	"bits_per_0"
.LASF132:
	.string	"bits_per_1"
.LASF175:
	.string	"is_empty"
.LASF92:
	.string	"x_min"
.LASF141:
	.string	"capital_a_pos"
.LASF64:
	.string	"_bdf_font_struct"
.LASF107:
	.string	"map_to"
.LASF28:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF46:
	.string	"_freeres_list"
.LASF22:
	.string	"_flags"
.LASF136:
	.string	"bits_per_char_y"
.LASF69:
	.string	"line_buf"
.LASF162:
	.string	"map_str"
.LASF34:
	.string	"_markers"
.LASF99:
	.string	"target_data"
.LASF71:
	.string	"is_bitmap_parsing"
.LASF118:
	.string	"rle_last_0"
.LASF119:
	.string	"rle_last_1"
.LASF108:
	.string	"shift_x"
.LASF171:
	.string	"cap_a"
.LASF130:
	.string	"decode_byte"
.LASF18:
	.string	"__timezone"
.LASF102:
	.string	"tile_h_size"
.LASF173:
	.string	"tga_draw_font_line"
.LASF104:
	.string	"_bbx_struct"
.LASF56:
	.string	"stdout"
.LASF33:
	.string	"_IO_save_end"
.LASF172:
	.string	"cap_a_height"
.LASF145:
	.string	"left_margin"
.LASF53:
	.string	"_IO_codecvt"
.LASF186:
	.string	"get_str_arg"
.LASF179:
	.string	"result"
.LASF110:
	.string	"bitmap_data"
.LASF67:
	.string	"glyph_cnt"
.LASF15:
	.string	"long long unsigned int"
.LASF76:
	.string	"bbx_h"
.LASF59:
	.string	"sys_errlist"
.LASF32:
	.string	"_IO_backup_base"
.LASF150:
	.string	"xoffset"
.LASF43:
	.string	"_offset"
.LASF105:
	.string	"bbx_t"
.LASF75:
	.string	"bbx_w"
.LASF77:
	.string	"bbx_x"
.LASF78:
	.string	"bbx_y"
.LASF58:
	.string	"sys_nerr"
.LASF90:
	.string	"dx_min"
.LASF14:
	.string	"clock_t"
.LASF36:
	.string	"_fileno"
.LASF124:
	.string	"target_y"
.LASF121:
	.string	"bg_t"
.LASF127:
	.string	"glyph_height"
.LASF8:
	.string	"size_t"
.LASF142:
	.string	"small_a_pos"
.LASF25:
	.string	"_IO_read_base"
.LASF86:
	.string	"enc_w"
.LASF73:
	.string	"dwidth_x"
.LASF74:
	.string	"dwidth_y"
.LASF158:
	.string	"argc"
.LASF55:
	.string	"stdin"
.LASF68:
	.string	"glyph_max"
.LASF183:
	.string	"/home/step/u8g2-2.29.11/tools/font/bdfconv"
.LASF116:
	.string	"rle_is_first"
.LASF176:
	.string	"tga_get_line_height"
.LASF163:
	.string	"map_filename"
.LASF169:
	.string	"xmax"
.LASF2:
	.string	"char"
.LASF49:
	.string	"_mode"
.LASF17:
	.string	"__daylight"
.LASF123:
	.string	"target_x"
.LASF72:
	.string	"encoding"
.LASF144:
	.string	"fd_t"
.LASF19:
	.string	"tzname"
.LASF52:
	.string	"_IO_marker"
.LASF23:
	.string	"_IO_read_ptr"
.LASF157:
	.string	"target_fontname"
.LASF60:
	.string	"uint8_t"
.LASF134:
	.string	"bits_per_char_height"
.LASF98:
	.string	"dx_max_bit_size"
.LASF147:
	.string	"font_format"
.LASF81:
	.string	"glyph_pos"
.LASF153:
	.string	"font_picture_test_string"
.LASF140:
	.string	"char_descent"
.LASF149:
	.string	"cmdline_glyphs_per_line"
.LASF26:
	.string	"_IO_write_base"
.LASF5:
	.string	"long long int"
.LASF31:
	.string	"_IO_save_base"
.LASF101:
	.string	"target_cnt"
.LASF174:
	.string	"enc_start"
.LASF93:
	.string	"x_max"
.LASF66:
	.string	"glyph_list"
.LASF143:
	.string	"font"
.LASF47:
	.string	"_freeres_buf"
.LASF177:
	.string	"is_arg"
.LASF125:
	.string	"is_transparent"
.LASF48:
	.string	"__pad5"
.LASF80:
	.string	"bitmap_y"
.LASF13:
	.string	"__clock_t"
.LASF95:
	.string	"bbx_y_max_bit_size"
.LASF113:
	.string	"target_bit_pos"
.LASF114:
	.string	"rle_bits_per_0"
.LASF115:
	.string	"rle_bits_per_1"
.LASF135:
	.string	"bits_per_char_x"
.LASF40:
	.string	"_vtable_offset"
.LASF122:
	.string	"fd_struct"
.LASF159:
	.string	"argv"
.LASF94:
	.string	"bbx_x_max_bit_size"
.LASF61:
	.string	"long double"
.LASF100:
	.string	"target_max"
.LASF109:
	.string	"is_excluded_from_kerning"
.LASF21:
	.string	"timezone"
.LASF83:
	.string	"str_copyright"
.LASF138:
	.string	"char_width"
.LASF161:
	.string	"bdf_filename"
.LASF96:
	.string	"bbx_w_max_bit_size"
.LASF24:
	.string	"_IO_read_end"
.LASF79:
	.string	"bitmap_x"
.LASF129:
	.string	"decode_bit_pos"
.LASF139:
	.string	"char_height"
.LASF10:
	.string	"short int"
.LASF4:
	.string	"long int"
.LASF103:
	.string	"tile_v_size"
.LASF168:
	.string	"glyphs_per_line"
.LASF54:
	.string	"_IO_wide_data"
.LASF120:
	.string	"width_deviation"
.LASF84:
	.string	"selected_glyphs"
.LASF148:
	.string	"min_distance_in_per_cent_of_char_width"
.LASF9:
	.string	"__uint8_t"
.LASF167:
	.string	"fontname"
.LASF181:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF91:
	.string	"dx_max"
.LASF45:
	.string	"_wide_data"
.LASF164:
	.string	"desc_font_str"
.LASF42:
	.string	"_lock"
.LASF0:
	.string	"long unsigned int"
.LASF156:
	.string	"k_filename"
.LASF38:
	.string	"_old_offset"
.LASF146:
	.string	"build_bbx_mode"
.LASF63:
	.string	"_IO_FILE"
.LASF85:
	.string	"bbx_mode"
.LASF87:
	.string	"enc_h"
.LASF70:
	.string	"line_pos"
.LASF185:
	.string	"help"
.LASF154:
	.string	"runtime_test"
.LASF6:
	.string	"unsigned char"
.LASF88:
	.string	"enc_x"
.LASF89:
	.string	"enc_y"
.LASF111:
	.string	"bitmap_width"
.LASF16:
	.string	"__tzname"
.LASF151:
	.string	"yoffset"
.LASF27:
	.string	"_IO_write_ptr"
.LASF117:
	.string	"rle_bitcnt"
.LASF166:
	.string	"tga_draw_font"
.LASF133:
	.string	"bits_per_char_width"
.LASF44:
	.string	"_codecvt"
.LASF20:
	.string	"daylight"
.LASF152:
	.string	"font_picture_extra_info"
.LASF126:
	.string	"glyph_width"
.LASF97:
	.string	"bbx_h_max_bit_size"
.LASF11:
	.string	"__off_t"
.LASF7:
	.string	"signed char"
.LASF62:
	.string	"bf_t"
.LASF1:
	.string	"short unsigned int"
.LASF170:
	.string	"tga_draw_font_info"
.LASF165:
	.string	"main"
.LASF178:
	.string	"get_num_strarg"
.LASF160:
	.string	"bf_desc_font"
.LASF35:
	.string	"_chain"
.LASF51:
	.string	"FILE"
.LASF37:
	.string	"_flags2"
.LASF155:
	.string	"c_filename"
.LASF112:
	.string	"bitmap_height"
.LASF180:
	.string	"get_num_arg"
.LASF39:
	.string	"_cur_column"
.LASF12:
	.string	"__off64_t"
.LASF50:
	.string	"_unused2"
.LASF29:
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
