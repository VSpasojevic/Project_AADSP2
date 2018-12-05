	.public _coefficients_HPF
	.public _coefficients_LPF
	.public _gain
	.public _leftBuffer
	.public _mode1
	.public _mode2
	.public _rightBuffer
	.public _sampleBuffer
	.public _x_history
	.public _x_history1
	.public _x_history2
	.public _x_history3
	.public _x_history4
	.public _y_history
	.public _y_history1
	.public _y_history2
	.public _y_history3
	.public _y_history4
	.extern _cl_wavread_bits_per_sample
	.extern _cl_wavread_close
	.extern _cl_wavread_frame_rate
	.extern _cl_wavread_getnchannels
	.extern _cl_wavread_number_of_frames
	.extern _cl_wavread_open
	.extern _cl_wavread_recvsample
	.extern _cl_wavwrite_close
	.extern _cl_wavwrite_open
	.extern _cl_wavwrite_sendsample
	.public _main
	.extern _memset
	.extern _printf
	.public _processing
	.public _second_order_IIR
	.extern _strcpy
	.extern __div
	.xdata_ovly
_coefficients_HPF
	.dw  (0x3cd9dc03)
	.dw  (0x864c47fb)
	.dw  (0x3cd9dc03)
	.dw  (0x40000000)
	.dw  (0x8671523d)
	.dw  (0x39ddcea9)
	.xdata_ovly
_coefficients_LPF
	.dw  (0x4b92cd)
	.dw  (0x97259a)
	.dw  (0x4b92cd)
	.dw  (0x40000000)
	.dw  (0x8cdb9abc)
	.dw  (0x34521f8b)
	.ydata_ovly
_gain
	.dw  (0x40000000)
	.xdata_ovly
_leftBuffer
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.xdata_ovly
_mode1
	.dw  (0x0)
	.xdata_ovly
_mode2
	.dw  (0x0)
	.xdata_ovly
_rightBuffer
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.xdata_ovly
_sampleBuffer
	.bss (0x80)
	.xdata_ovly
_string_const_0
	.dw  (0x45)
	.dw  (0x72)
	.dw  (0x72)
	.dw  (0x6f)
	.dw  (0x72)
	.dw  (0x3a)
	.dw  (0x20)
	.dw  (0x43)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x6c)
	.dw  (0x64)
	.dw  (0x20)
	.dw  (0x6e)
	.dw  (0x6f)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x70)
	.dw  (0x65)
	.dw  (0x6e)
	.dw  (0x20)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x65)
	.dw  (0x66)
	.dw  (0x69)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x2e)
	.dw  (0xa)
	.dw  (0x0)
	.xdata_ovly
_string_const_1
	.dw  (0x45)
	.dw  (0x72)
	.dw  (0x72)
	.dw  (0x6f)
	.dw  (0x72)
	.dw  (0x3a)
	.dw  (0x20)
	.dw  (0x43)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x6c)
	.dw  (0x64)
	.dw  (0x20)
	.dw  (0x6e)
	.dw  (0x6f)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x70)
	.dw  (0x65)
	.dw  (0x6e)
	.dw  (0x20)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x65)
	.dw  (0x66)
	.dw  (0x69)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x2e)
	.dw  (0xa)
	.dw  (0x0)
	.ydata_ovly
_x_history
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.ydata_ovly
_x_history1
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.ydata_ovly
_x_history2
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.ydata_ovly
_x_history3
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.ydata_ovly
_x_history4
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.ydata_ovly
_y_history
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.ydata_ovly
_y_history1
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.ydata_ovly
_y_history2
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.ydata_ovly
_y_history3
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.ydata_ovly
_y_history4
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.code_ovly



	# This construction should ensure linking of crt0 in case when target is a standalone program without the OS
	.if defined(_OVLY_)
		.if .strcmp('standalone',_OVLY_)=0
		.if .strcmp('crystal32',_TARGET_FAMILY_)=0
			.extern __start         # dummy use of __start to force linkage of crt0
dummy		.equ(__start)
		.else
			.extern __intvec         # dummy use of __intvec to force linkage of intvec
dummy		.equ(__intvec)
		.endif
		.endif
	.endif

_main:			/* LN: 196 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 196 | 
	i7 += 1			# LN: 196 | 
	i7 = i7 + (0x20e)			# LN: 196 | 
	i1 = i7 - (0x1)			# LN: 196 | 
	xmem[i1] = a0h			# LN: 196 | 
	i1 = i7 - (0x2)			# LN: 196 | 
	xmem[i1] = i0			# LN: 196 | 
cline_196_0:			/* LN: 205 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 205 | 
	uhalfword(a0) = (0x5)			# LN: 205 | 
	xmem[i0] = a0h			# LN: 205 | 
cline_205_0:			/* LN: 213 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 213 | 
	a0 = 0			# LN: 213 | 
	xmem[i0] = a0h			# LN: 213 | 
	do (0x8), label_end_99			# LN: 213 | 
cline_213_0:			/* LN: 214 | CYCLE: 0 | RULES: () */ 
label_begin_99:			/* LN: 213 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 214 | 
	a1 = xmem[i0]; a0 = 0			# LN: 214, 214 | 
	a1 = a1 << 4			# LN: 214 | 
	i0 = a1			# LN: 214 | 
	uhalfword(a1) = (0x10)			# LN: 214 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 214 | 
	call (_memset)			# LN: 214 | 
cline_214_0:			/* LN: 213 | CYCLE: 0 | RULES: () */ 
init_latch_label_7:			/* LN: 214 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 213 | 
	a0 = xmem[i0]			# LN: 213 | 
	uhalfword(a1) = (0x1)			# LN: 213 | 
	a0 = a0 + a1			# LN: 213 | 
	i0 = i7 - (0x4)			# LN: 213 | 
label_end_99:			# LN: 213 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 213 | 
cline_213_1:			/* LN: 218 | CYCLE: 0 | RULES: () */ 
for_end_7:			/* LN: 213 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 218 | 
	i0 = xmem[i0]			# LN: 218 | 
	i1 = i7 - (260 - 0)			# LN: 218 | 
	i4 = xmem[i0]			# LN: 218 | 
	i0 = i1			# LN: 218 | 
	i1 = i4			# LN: 218 | 
	call (_strcpy)			# LN: 218 | 
cline_218_0:			/* LN: 219 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (260 - 0)			# LN: 219 | 
	call (_cl_wavread_open)			# LN: 219 | 
	AnyReg(i0, a0h)			# LN: 219 | 
	i1 = i7 - (0x105)			# LN: 219 | 
	xmem[i1] = i0			# LN: 219 | 
cline_219_0:			/* LN: 220 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 220 | 
	a0 = xmem[i0]			# LN: 220 | 
	a0 & a0			# LN: 220 | 
	if (a != 0) jmp (else_8)			# LN: 220 | 
cline_220_0:			/* LN: 222 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_0)			# LN: 222 | 
	call (_printf)			# LN: 222 | 
cline_222_0:			/* LN: 223 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 223 | 
	jmp (__epilogue_224)			# LN: 223 | 
cline_223_0:			/* LN: 230 | CYCLE: 0 | RULES: () */ 
endif_8:			/* LN: 220 | CYCLE: 0 | RULES: () */ 
else_8:			/* LN: 220 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 230 | 
	i0 = xmem[i0]			# LN: 230 | 
	call (_cl_wavread_getnchannels)			# LN: 230 | 
	i0 = i7 - (0x106)			# LN: 230 | 
	xmem[i0] = a0h			# LN: 230 | 
cline_230_0:			/* LN: 231 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 231 | 
	i0 = xmem[i0]			# LN: 231 | 
	call (_cl_wavread_bits_per_sample)			# LN: 231 | 
	i0 = i7 - (0x107)			# LN: 231 | 
	xmem[i0] = a0h			# LN: 231 | 
cline_231_0:			/* LN: 232 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 232 | 
	i0 = xmem[i0]			# LN: 232 | 
	call (_cl_wavread_frame_rate)			# LN: 232 | 
	i0 = i7 - (0x108)			# LN: 232 | 
	xmem[i0] = a0h			# LN: 232 | 
cline_232_0:			/* LN: 233 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 233 | 
	i0 = xmem[i0]			# LN: 233 | 
	call (_cl_wavread_number_of_frames)			# LN: 233 | 
	i0 = i7 - (0x109)			# LN: 233 | 
	xmem[i0] = a0h			# LN: 233 | 
cline_233_0:			/* LN: 238 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 238 | 
	i0 = xmem[i0]			# LN: 238 | 
	i1 = i7 - (521 - 0)			# LN: 238 | 
	i0 += 1			# LN: 238 | 
	i4 = xmem[i0]			# LN: 238 | 
	i0 = i1			# LN: 238 | 
	i1 = i4			# LN: 238 | 
	call (_strcpy)			# LN: 238 | 
cline_238_0:			/* LN: 239 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (521 - 0)			# LN: 239 | 
	i1 = i7 - (0x107)			# LN: 239 | 
	a0 = xmem[i1]			# LN: 239 | 
	i1 = i7 - (0x3)			# LN: 239 | 
	a1 = xmem[i1]			# LN: 239 | 
	i1 = i7 - (0x108)			# LN: 239 | 
	b0 = xmem[i1]			# LN: 239 | 
	call (_cl_wavwrite_open)			# LN: 239 | 
	AnyReg(i0, a0h)			# LN: 239 | 
	i1 = i7 - (0x20a)			# LN: 239 | 
	xmem[i1] = i0			# LN: 239 | 
cline_239_0:			/* LN: 240 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 240 | 
	a0 = xmem[i0]			# LN: 240 | 
	a0 & a0			# LN: 240 | 
	if (a != 0) jmp (else_9)			# LN: 240 | 
cline_240_0:			/* LN: 242 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_1)			# LN: 242 | 
	call (_printf)			# LN: 242 | 
cline_242_0:			/* LN: 243 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 243 | 
	jmp (__epilogue_224)			# LN: 243 | 
cline_243_0:			/* LN: 256 | CYCLE: 0 | RULES: () */ 
endif_9:			/* LN: 240 | CYCLE: 0 | RULES: () */ 
else_9:			/* LN: 240 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 256 | 
	a0 = 0			# LN: 256 | 
	xmem[i0] = a0h			# LN: 256 | 
for_8:			/* LN: 256 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x109)			# LN: 256 | 
	a0 = xmem[i0]			# LN: 256 | 
	uhalfword(a1) = (0x10)			# LN: 256 | 
	call (__div)			# LN: 256 | 
	i0 = i7 - (0x20b)			# LN: 256 | 
	a1 = xmem[i0]			# LN: 256 | 
	a1 - a0			# LN: 256 | 
	if (a >= 0) jmp (for_end_8)			# LN: 256 | 
cline_256_0:			/* LN: 258 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 258 | 
	a0 = 0			# LN: 258 | 
	xmem[i0] = a0h			# LN: 258 | 
	do (0x10), label_end_100			# LN: 258 | 
cline_258_0:			/* LN: 260 | CYCLE: 0 | RULES: () */ 
label_begin_100:			/* LN: 258 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 260 | 
	a0 = 0			# LN: 260 | 
	xmem[i0] = a0h			# LN: 260 | 
for_10:			/* LN: 260 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 260 | 
	a0 = xmem[i0]			# LN: 260 | 
	i0 = i7 - (0x106)			# LN: 260 | 
	a1 = xmem[i0]			# LN: 260 | 
	a0 - a1			# LN: 260 | 
	if (a >= 0) jmp (for_end_10)			# LN: 260 | 
cline_260_0:			/* LN: 262 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 262 | 
	i0 = xmem[i0]			# LN: 262 | 
	call (_cl_wavread_recvsample)			# LN: 262 | 
	i0 = i7 - (0x20e)			# LN: 262 | 
	xmem[i0] = a0h			# LN: 262 | 
cline_262_0:			/* LN: 263 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 263 | 
	a0 = xmem[i0]			# LN: 263 | 
	a0 = a0 << 4			# LN: 263 | 
	i0 = a0			# LN: 263 | 
	i1 = i7 - (0x20c)			# LN: 263 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 263 | 
	a0 = xmem[i1]			# LN: 263 | 
	a1 = i0			# LN: 263 | 
	a0 = a1 + a0			# LN: 263 | 
	AnyReg(i0, a0h)			# LN: 263 | 
	i1 = i7 - (0x20e)			# LN: 263 | 
	a0 = xmem[i1]			# LN: 263 | 
	xmem[i0] = a0h			# LN: 263 | 
cline_263_0:			/* LN: 260 | CYCLE: 0 | RULES: () */ 
init_latch_label_8:			/* LN: 264 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 260 | 
	a0 = xmem[i0]			# LN: 260 | 
	uhalfword(a1) = (0x1)			# LN: 260 | 
	a0 = a0 + a1			# LN: 260 | 
	i0 = i7 - (0x20d)			# LN: 260 | 
	xmem[i0] = a0h			# LN: 260 | 
	jmp (for_10)			# LN: 260 | 
cline_260_1:			/* LN: 258 | CYCLE: 0 | RULES: () */ 
init_latch_label_9:			/* LN: 265 | CYCLE: 0 | RULES: () */ 
for_end_10:			/* LN: 260 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 258 | 
	a0 = xmem[i0]			# LN: 258 | 
	uhalfword(a1) = (0x1)			# LN: 258 | 
	a0 = a0 + a1			# LN: 258 | 
	i0 = i7 - (0x20c)			# LN: 258 | 
label_end_100:			# LN: 258 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 258 | 
cline_258_1:			/* LN: 267 | CYCLE: 0 | RULES: () */ 
for_end_9:			/* LN: 258 | CYCLE: 0 | RULES: () */ 
	call (_processing)			# LN: 267 | 
cline_267_0:			/* LN: 269 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 269 | 
	a0 = 0			# LN: 269 | 
	xmem[i0] = a0h			# LN: 269 | 
	do (0x10), label_end_101			# LN: 269 | 
cline_269_0:			/* LN: 271 | CYCLE: 0 | RULES: () */ 
label_begin_101:			/* LN: 269 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 271 | 
	a0 = 0			# LN: 271 | 
	xmem[i0] = a0h			# LN: 271 | 
for_12:			/* LN: 271 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 271 | 
	a0 = xmem[i0]			# LN: 271 | 
	i0 = i7 - (0x3)			# LN: 271 | 
	a1 = xmem[i0]			# LN: 271 | 
	a0 - a1			# LN: 271 | 
	if (a >= 0) jmp (for_end_12)			# LN: 271 | 
cline_271_0:			/* LN: 273 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 273 | 
	a0 = xmem[i0]			# LN: 273 | 
	a0 = a0 << 4			# LN: 273 | 
	i0 = a0			# LN: 273 | 
	i1 = i7 - (0x20c)			# LN: 273 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 273 | 
	a0 = xmem[i1]			# LN: 273 | 
	a1 = i0			# LN: 273 | 
	a0 = a1 + a0			# LN: 273 | 
	AnyReg(i0, a0h)			# LN: 273 | 
	i1 = i7 - (0x20e)			# LN: 273 | 
	a0 = xmem[i0]			# LN: 273 | 
	xmem[i1] = a0h			# LN: 273 | 
cline_273_0:			/* LN: 274 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 274 | 
	i1 = i7 - (0x20e)			# LN: 274 | 
	a0 = xmem[i1]			# LN: 274 | 
	i0 = xmem[i0]			# LN: 274 | 
	call (_cl_wavwrite_sendsample)			# LN: 274 | 
cline_274_0:			/* LN: 271 | CYCLE: 0 | RULES: () */ 
init_latch_label_10:			/* LN: 275 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 271 | 
	a0 = xmem[i0]			# LN: 271 | 
	uhalfword(a1) = (0x1)			# LN: 271 | 
	a0 = a0 + a1			# LN: 271 | 
	i0 = i7 - (0x20d)			# LN: 271 | 
	xmem[i0] = a0h			# LN: 271 | 
	jmp (for_12)			# LN: 271 | 
cline_271_1:			/* LN: 269 | CYCLE: 0 | RULES: () */ 
init_latch_label_11:			/* LN: 276 | CYCLE: 0 | RULES: () */ 
for_end_12:			/* LN: 271 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 269 | 
	a0 = xmem[i0]			# LN: 269 | 
	uhalfword(a1) = (0x1)			# LN: 269 | 
	a0 = a0 + a1			# LN: 269 | 
	i0 = i7 - (0x20c)			# LN: 269 | 
label_end_101:			# LN: 269 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 269 | 
cline_269_1:			/* LN: 256 | CYCLE: 0 | RULES: () */ 
init_latch_label_12:			/* LN: 277 | CYCLE: 0 | RULES: () */ 
for_end_11:			/* LN: 269 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 256 | 
	a0 = xmem[i0]			# LN: 256 | 
	uhalfword(a1) = (0x1)			# LN: 256 | 
	a0 = a0 + a1			# LN: 256 | 
	i0 = i7 - (0x20b)			# LN: 256 | 
	xmem[i0] = a0h			# LN: 256 | 
	jmp (for_8)			# LN: 256 | 
cline_256_1:			/* LN: 282 | CYCLE: 0 | RULES: () */ 
for_end_8:			/* LN: 256 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 282 | 
	i0 = xmem[i0]			# LN: 282 | 
	call (_cl_wavread_close)			# LN: 282 | 
cline_282_0:			/* LN: 283 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 283 | 
	i0 = xmem[i0]			# LN: 283 | 
	call (_cl_wavwrite_close)			# LN: 283 | 
cline_283_0:			/* LN: 286 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 286 | 
	jmp (__epilogue_224)			# LN: 286 | 
cline_286_0:			/* LN: 287 | CYCLE: 0 | RULES: () */ 
__epilogue_224:			/* LN: 287 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x20e)			# LN: 287 | 
	i7 -= 1			# LN: 287 | 
	ret			# LN: 287 | 



_processing:			/* LN: 76 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 76 | 
	i7 += 1			# LN: 76 | 
	xmem[i7] = i2; i7 += 1			# LN: 76, 76 | 
	xmem[i7] = i3; i7 += 1			# LN: 76, 76 | 
	i7 = i7 + (0x8)			# LN: 76 | 
cline_76_0:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 80 | 
	uhalfword(a0) = (_leftBuffer + 0)			# LN: 80 | 
	xmem[i0] = a0			# LN: 80 | 
cline_80_0:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 81 | 
	uhalfword(a0) = (_rightBuffer + 0)			# LN: 81 | 
	xmem[i0] = a0			# LN: 81 | 
cline_81_0:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 84 | 
	uhalfword(a0) = (_sampleBuffer + 0)			# LN: 84 | 
	xmem[i0] = a0			# LN: 84 | 
cline_84_0:			/* LN: 85 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 85 | 
	uhalfword(a0) = (_sampleBuffer + 16)			# LN: 85 | 
	xmem[i0] = a0			# LN: 85 | 
cline_85_0:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 86 | 
	uhalfword(a0) = (_sampleBuffer + 32)			# LN: 86 | 
	xmem[i0] = a0			# LN: 86 | 
cline_86_0:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 87 | 
	uhalfword(a0) = (_sampleBuffer + 48)			# LN: 87 | 
	xmem[i0] = a0			# LN: 87 | 
cline_87_0:			/* LN: 88 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 88 | 
	uhalfword(a0) = (_sampleBuffer + 64)			# LN: 88 | 
	xmem[i0] = a0			# LN: 88 | 
cline_88_0:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 92 | 
	a0 = 0			# LN: 92 | 
	xmem[i0] = a0h			# LN: 92 | 
	do (0x10), label_end_92			# LN: 92 | 
cline_92_0:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 95 | 
	i1 = i7 - (0x3)			# LN: 95 | 
	i1 = xmem[i1]			# LN: 95 | 
	i0 = xmem[i0]			# LN: 95 | 
	x0 = xmem[i1]			# LN: 95 | 
	x1 = ymem[_gain + 0]			# LN: 95 | 
	a0 = x0 * x1			# LN: 95 | 
	xmem[i0] = a0			# LN: 95 | 
	i0 = i7 - (0x1)			# LN: 95 | 
	i0 = xmem[i0]			# LN: 95 | 
	i1 = i7 - (0x1)			# LN: 95 | 
	i0 += 1			# LN: 95 | 
	xmem[i1] = i0			# LN: 95 | 
cline_95_0:			/* LN: 97 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 97 | 
	i1 = i7 - (0x4)			# LN: 97 | 
	i1 = xmem[i1]			# LN: 97 | 
	i0 = xmem[i0]			# LN: 97 | 
	x0 = xmem[i1]			# LN: 97 | 
	x1 = ymem[_gain + 0]			# LN: 97 | 
	a0 = x0 * x1			# LN: 97 | 
	xmem[i0] = a0			# LN: 97 | 
	i0 = i7 - (0x2)			# LN: 97 | 
	i0 = xmem[i0]			# LN: 97 | 
	i1 = i7 - (0x2)			# LN: 97 | 
	i0 += 1			# LN: 97 | 
	xmem[i1] = i0			# LN: 97 | 
cline_97_0:			/* LN: 100 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 100 | 
	i1 = i7 - (0x3)			# LN: 100 | 
	i1 = xmem[i1]			# LN: 100 | 
	i0 = xmem[i0]			# LN: 100 | 
	x0 = xmem[i1]			# LN: 100 | 
	x1 = ymem[_gain + 0]			# LN: 100 | 
	a0 = x0 * x1			# LN: 100 | 
	xmem[i0] = a0			# LN: 100 | 
	i0 = i7 - (0x6)			# LN: 100 | 
	i0 = xmem[i0]			# LN: 100 | 
	i1 = i7 - (0x6)			# LN: 100 | 
	i0 += 1			# LN: 100 | 
	xmem[i1] = i0			# LN: 100 | 
cline_100_0:			/* LN: 103 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 103 | 
	i1 = i7 - (0x4)			# LN: 103 | 
	i1 = xmem[i1]			# LN: 103 | 
	i0 = xmem[i0]			# LN: 103 | 
	x0 = xmem[i1]			# LN: 103 | 
	x1 = ymem[_gain + 0]			# LN: 103 | 
	a0 = x0 * x1			# LN: 103 | 
	xmem[i0] = a0			# LN: 103 | 
	i0 = i7 - (0x7)			# LN: 103 | 
	i0 = xmem[i0]			# LN: 103 | 
	i1 = i7 - (0x7)			# LN: 103 | 
	i0 += 1			# LN: 103 | 
	xmem[i1] = i0			# LN: 103 | 
cline_103_0:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 106 | 
	i0 = xmem[i0]			# LN: 106 | 
	i1 = i7 - (0x3)			# LN: 106 | 
	i0 += 1			# LN: 106 | 
	xmem[i1] = i0			# LN: 106 | 
cline_106_0:			/* LN: 107 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 107 | 
	i0 = xmem[i0]			# LN: 107 | 
	i1 = i7 - (0x4)			# LN: 107 | 
	i0 += 1			# LN: 107 | 
	xmem[i1] = i0			# LN: 107 | 
cline_107_0:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 109 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 92 | 
	a0 = xmem[i0]			# LN: 92 | 
	uhalfword(a1) = (0x1)			# LN: 92 | 
	a0 = a0 + a1			# LN: 92 | 
	i0 = i7 - (0x8)			# LN: 92 | 
label_end_92:			# LN: 92 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 92 | 
cline_92_1:			/* LN: 113 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 113 | 
	uhalfword(a0) = (_leftBuffer + 0)			# LN: 113 | 
	xmem[i0] = a0			# LN: 113 | 
cline_113_0:			/* LN: 114 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 114 | 
	uhalfword(a0) = (_rightBuffer + 0)			# LN: 114 | 
	xmem[i0] = a0			# LN: 114 | 
cline_114_0:			/* LN: 117 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 117 | 
	uhalfword(a0) = (_sampleBuffer + 0)			# LN: 117 | 
	xmem[i0] = a0			# LN: 117 | 
cline_117_0:			/* LN: 118 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 118 | 
	uhalfword(a0) = (_sampleBuffer + 16)			# LN: 118 | 
	xmem[i0] = a0			# LN: 118 | 
cline_118_0:			/* LN: 119 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 119 | 
	uhalfword(a0) = (_sampleBuffer + 32)			# LN: 119 | 
	xmem[i0] = a0			# LN: 119 | 
cline_119_0:			/* LN: 124 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_mode1 + 0]			# LN: 124 | 
	a0 & a0			# LN: 124 | 
	if (a != 0) jmp (else_0)			# LN: 124 | 
cline_124_0:			/* LN: 126 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_mode2 + 0]			# LN: 126 | 
	a0 & a0			# LN: 126 | 
	if (a != 0) jmp (else_1)			# LN: 126 | 
cline_126_0:			/* LN: 128 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 128 | 
	a0 = 0			# LN: 128 | 
	xmem[i0] = a0h			# LN: 128 | 
	do (0x10), label_end_93			# LN: 128 | 
cline_128_0:			/* LN: 131 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 128 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 131 | 
	i1 = i7 - (0x1)			# LN: 131 | 
	i1 = xmem[i1]			# LN: 131 | 
	i2 = xmem[i0]			# LN: 131 | 
	a0 = xmem[i1]			# LN: 131 | 
	i1 = i7 - (0x1)			# LN: 131 | 
	i1 = xmem[i1]			# LN: 131 | 
	i4 = (0) + (_x_history)			# LN: 131 | 
	i1 += 1			# LN: 131 | 
	i5 = i7 - (0x1)			# LN: 131 | 
	xmem[i5] = i1			# LN: 131 | 
	i1 = i7 - (0x3)			# LN: 131 | 
	i1 = xmem[i1]			# LN: 131 | 
	i5 = (0) + (_y_history)			# LN: 131 | 
	i1 += 1			# LN: 131 | 
	i3 = i7 - (0x3)			# LN: 131 | 
	xmem[i3] = i1			# LN: 131 | 
	i1 = i4			# LN: 131 | 
	i4 = i5			# LN: 131 | 
	i0 = (0) + (_coefficients_HPF)			# LN: 131 | 
	call (_second_order_IIR)			# LN: 131 | 
	xmem[i2] = a0			# LN: 131 | 
cline_131_0:			/* LN: 128 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 133 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 128 | 
	a0 = xmem[i0]			# LN: 128 | 
	uhalfword(a1) = (0x1)			# LN: 128 | 
	a0 = a0 + a1			# LN: 128 | 
	i0 = i7 - (0x8)			# LN: 128 | 
label_end_93:			# LN: 128 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 128 | 
for_end_1:			/* LN: 128 | CYCLE: 0 | RULES: () */ 
	jmp (endif_1)			# LN: 128 | 
cline_128_1:			/* LN: 136 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 126 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 126 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_mode2 + 0]			# LN: 136 | 
	uhalfword(a1) = (0x1)			# LN: 136 | 
	a0 - a1			# LN: 136 | 
	if (a != 0) jmp (else_2)			# LN: 136 | 
cline_136_0:			/* LN: 138 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 138 | 
	a0 = 0			# LN: 138 | 
	xmem[i0] = a0h			# LN: 138 | 
	do (0x10), label_end_94			# LN: 138 | 
cline_138_0:			/* LN: 141 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 138 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 141 | 
	i1 = i7 - (0x1)			# LN: 141 | 
	i1 = xmem[i1]			# LN: 141 | 
	i0 = xmem[i0]			# LN: 141 | 
	a0 = xmem[i1]			# LN: 141 | 
	xmem[i0] = a0h			# LN: 141 | 
	i0 = i7 - (0x1)			# LN: 141 | 
	i0 = xmem[i0]			# LN: 141 | 
	i1 = i7 - (0x1)			# LN: 141 | 
	i0 += 1			# LN: 141 | 
	xmem[i1] = i0			# LN: 141 | 
	i0 = i7 - (0x3)			# LN: 141 | 
	i0 = xmem[i0]			# LN: 141 | 
	i1 = i7 - (0x3)			# LN: 141 | 
	i0 += 1			# LN: 141 | 
	xmem[i1] = i0			# LN: 141 | 
cline_141_0:			/* LN: 138 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 142 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 138 | 
	a0 = xmem[i0]			# LN: 138 | 
	uhalfword(a1) = (0x1)			# LN: 138 | 
	a0 = a0 + a1			# LN: 138 | 
	i0 = i7 - (0x8)			# LN: 138 | 
label_end_94:			# LN: 138 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 138 | 
for_end_2:			/* LN: 138 | CYCLE: 0 | RULES: () */ 
	jmp (endif_2)			# LN: 138 | 
cline_138_1:			/* LN: 136 | CYCLE: 0 | RULES: () */ 
endif_2:			/* LN: 136 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 136 | CYCLE: 0 | RULES: () */ 
	jmp (endif_0)			# LN: 136 | 
cline_136_1:			/* LN: 147 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 124 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 124 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_mode1 + 0]			# LN: 147 | 
	uhalfword(a1) = (0x1)			# LN: 147 | 
	a0 - a1			# LN: 147 | 
	if (a != 0) jmp (else_3)			# LN: 147 | 
cline_147_0:			/* LN: 149 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 149 | 
	a0 = 0			# LN: 149 | 
	xmem[i0] = a0h			# LN: 149 | 
	do (0x10), label_end_95			# LN: 149 | 
cline_149_0:			/* LN: 152 | CYCLE: 0 | RULES: () */ 
label_begin_95:			/* LN: 149 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 152 | 
	i1 = i7 - (0x1)			# LN: 152 | 
	i1 = xmem[i1]			# LN: 152 | 
	i2 = xmem[i0]			# LN: 152 | 
	a0 = xmem[i1]			# LN: 152 | 
	i0 = (0) + (_coefficients_LPF)			# LN: 152 | 
	i4 = i7 - (0x3)			# LN: 152 | 
	i4 = xmem[i4]			# LN: 152 | 
	i5 = (0) + (_y_history1)			# LN: 152 | 
	i4 += 1			# LN: 152 | 
	i3 = i7 - (0x3)			# LN: 152 | 
	xmem[i3] = i4			# LN: 152 | 
	i4 = i5			# LN: 152 | 
	i1 = (0) + (_x_history1)			# LN: 152 | 
	call (_second_order_IIR)			# LN: 152 | 
	xmem[i2] = a0			# LN: 152 | 
cline_152_0:			/* LN: 153 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 153 | 
	i1 = i7 - (0x1)			# LN: 153 | 
	i1 = xmem[i1]			# LN: 153 | 
	i2 = xmem[i0]			# LN: 153 | 
	a0 = xmem[i1]			# LN: 153 | 
	i0 = (0) + (_coefficients_LPF)			# LN: 153 | 
	i4 = i7 - (0x5)			# LN: 153 | 
	i4 = xmem[i4]			# LN: 153 | 
	i5 = (0) + (_y_history2)			# LN: 153 | 
	i4 += 1			# LN: 153 | 
	i3 = i7 - (0x5)			# LN: 153 | 
	xmem[i3] = i4			# LN: 153 | 
	i4 = i5			# LN: 153 | 
	i1 = (0) + (_x_history2)			# LN: 153 | 
	call (_second_order_IIR)			# LN: 153 | 
	xmem[i2] = a0			# LN: 153 | 
cline_153_0:			/* LN: 154 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 154 | 
	i0 = xmem[i0]			# LN: 154 | 
	i1 = i7 - (0x1)			# LN: 154 | 
	i0 += 1			# LN: 154 | 
	xmem[i1] = i0			# LN: 154 | 
cline_154_0:			/* LN: 149 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 156 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 149 | 
	a0 = xmem[i0]			# LN: 149 | 
	uhalfword(a1) = (0x1)			# LN: 149 | 
	a0 = a0 + a1			# LN: 149 | 
	i0 = i7 - (0x8)			# LN: 149 | 
label_end_95:			# LN: 149 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 149 | 
for_end_3:			/* LN: 149 | CYCLE: 0 | RULES: () */ 
	jmp (endif_3)			# LN: 149 | 
cline_149_1:			/* LN: 161 | CYCLE: 0 | RULES: () */ 
endif_3:			/* LN: 147 | CYCLE: 0 | RULES: () */ 
else_3:			/* LN: 147 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_mode1 + 0]			# LN: 161 | 
	a0 & a0			# LN: 161 | 
	if (a != 0) jmp (else_4)			# LN: 161 | 
cline_161_0:			/* LN: 163 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_mode2 + 0]			# LN: 163 | 
	a0 & a0			# LN: 163 | 
	if (a != 0) jmp (else_5)			# LN: 163 | 
cline_163_0:			/* LN: 165 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 165 | 
	a0 = 0			# LN: 165 | 
	xmem[i0] = a0h			# LN: 165 | 
	do (0x10), label_end_96			# LN: 165 | 
cline_165_0:			/* LN: 168 | CYCLE: 0 | RULES: () */ 
label_begin_96:			/* LN: 165 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 168 | 
	i1 = i7 - (0x2)			# LN: 168 | 
	i1 = xmem[i1]			# LN: 168 | 
	i2 = xmem[i0]			# LN: 168 | 
	a0 = xmem[i1]			# LN: 168 | 
	i1 = i7 - (0x2)			# LN: 168 | 
	i1 = xmem[i1]			# LN: 168 | 
	i4 = (0) + (_x_history3)			# LN: 168 | 
	i1 += 1			# LN: 168 | 
	i5 = i7 - (0x2)			# LN: 168 | 
	xmem[i5] = i1			# LN: 168 | 
	i1 = i7 - (0x4)			# LN: 168 | 
	i1 = xmem[i1]			# LN: 168 | 
	i5 = (0) + (_y_history3)			# LN: 168 | 
	i1 += 1			# LN: 168 | 
	i3 = i7 - (0x4)			# LN: 168 | 
	xmem[i3] = i1			# LN: 168 | 
	i1 = i4			# LN: 168 | 
	i4 = i5			# LN: 168 | 
	i0 = (0) + (_coefficients_HPF)			# LN: 168 | 
	call (_second_order_IIR)			# LN: 168 | 
	xmem[i2] = a0			# LN: 168 | 
cline_168_0:			/* LN: 165 | CYCLE: 0 | RULES: () */ 
init_latch_label_4:			/* LN: 169 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 165 | 
	a0 = xmem[i0]			# LN: 165 | 
	uhalfword(a1) = (0x1)			# LN: 165 | 
	a0 = a0 + a1			# LN: 165 | 
	i0 = i7 - (0x8)			# LN: 165 | 
label_end_96:			# LN: 165 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 165 | 
for_end_4:			/* LN: 165 | CYCLE: 0 | RULES: () */ 
	jmp (endif_5)			# LN: 165 | 
cline_165_1:			/* LN: 172 | CYCLE: 0 | RULES: () */ 
endif_5:			/* LN: 163 | CYCLE: 0 | RULES: () */ 
else_5:			/* LN: 163 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_mode2 + 0]			# LN: 172 | 
	uhalfword(a1) = (0x1)			# LN: 172 | 
	a0 - a1			# LN: 172 | 
	if (a != 0) jmp (else_6)			# LN: 172 | 
cline_172_0:			/* LN: 174 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 174 | 
	a0 = 0			# LN: 174 | 
	xmem[i0] = a0h			# LN: 174 | 
	do (0x10), label_end_97			# LN: 174 | 
cline_174_0:			/* LN: 177 | CYCLE: 0 | RULES: () */ 
label_begin_97:			/* LN: 174 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 177 | 
	i1 = i7 - (0x2)			# LN: 177 | 
	i1 = xmem[i1]			# LN: 177 | 
	i0 = xmem[i0]			# LN: 177 | 
	a0 = xmem[i1]			# LN: 177 | 
	xmem[i0] = a0h			# LN: 177 | 
	i0 = i7 - (0x2)			# LN: 177 | 
	i0 = xmem[i0]			# LN: 177 | 
	i1 = i7 - (0x2)			# LN: 177 | 
	i0 += 1			# LN: 177 | 
	xmem[i1] = i0			# LN: 177 | 
	i0 = i7 - (0x4)			# LN: 177 | 
	i0 = xmem[i0]			# LN: 177 | 
	i1 = i7 - (0x4)			# LN: 177 | 
	i0 += 1			# LN: 177 | 
	xmem[i1] = i0			# LN: 177 | 
cline_177_0:			/* LN: 174 | CYCLE: 0 | RULES: () */ 
init_latch_label_5:			/* LN: 178 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 174 | 
	a0 = xmem[i0]			# LN: 174 | 
	uhalfword(a1) = (0x1)			# LN: 174 | 
	a0 = a0 + a1			# LN: 174 | 
	i0 = i7 - (0x8)			# LN: 174 | 
label_end_97:			# LN: 174 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 174 | 
for_end_5:			/* LN: 174 | CYCLE: 0 | RULES: () */ 
	jmp (endif_6)			# LN: 174 | 
cline_174_1:			/* LN: 172 | CYCLE: 0 | RULES: () */ 
endif_6:			/* LN: 172 | CYCLE: 0 | RULES: () */ 
else_6:			/* LN: 172 | CYCLE: 0 | RULES: () */ 
	jmp (endif_4)			# LN: 172 | 
cline_172_1:			/* LN: 183 | CYCLE: 0 | RULES: () */ 
endif_4:			/* LN: 161 | CYCLE: 0 | RULES: () */ 
else_4:			/* LN: 161 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_mode1 + 0]			# LN: 183 | 
	uhalfword(a1) = (0x1)			# LN: 183 | 
	a0 - a1			# LN: 183 | 
	if (a != 0) jmp (else_7)			# LN: 183 | 
cline_183_0:			/* LN: 185 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 185 | 
	a0 = 0			# LN: 185 | 
	xmem[i0] = a0h			# LN: 185 | 
	do (0x10), label_end_98			# LN: 185 | 
cline_185_0:			/* LN: 188 | CYCLE: 0 | RULES: () */ 
label_begin_98:			/* LN: 185 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 188 | 
	i1 = i7 - (0x2)			# LN: 188 | 
	i1 = xmem[i1]			# LN: 188 | 
	i2 = xmem[i0]			# LN: 188 | 
	a0 = xmem[i1]			# LN: 188 | 
	i1 = i7 - (0x2)			# LN: 188 | 
	i1 = xmem[i1]			# LN: 188 | 
	i4 = (0) + (_x_history4)			# LN: 188 | 
	i1 += 1			# LN: 188 | 
	i5 = i7 - (0x2)			# LN: 188 | 
	xmem[i5] = i1			# LN: 188 | 
	i1 = i7 - (0x4)			# LN: 188 | 
	i1 = xmem[i1]			# LN: 188 | 
	i5 = (0) + (_y_history4)			# LN: 188 | 
	i1 += 1			# LN: 188 | 
	i3 = i7 - (0x4)			# LN: 188 | 
	xmem[i3] = i1			# LN: 188 | 
	i1 = i4			# LN: 188 | 
	i4 = i5			# LN: 188 | 
	i0 = (0) + (_coefficients_LPF)			# LN: 188 | 
	call (_second_order_IIR)			# LN: 188 | 
	xmem[i2] = a0			# LN: 188 | 
cline_188_0:			/* LN: 185 | CYCLE: 0 | RULES: () */ 
init_latch_label_6:			/* LN: 189 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 185 | 
	a0 = xmem[i0]			# LN: 185 | 
	uhalfword(a1) = (0x1)			# LN: 185 | 
	a0 = a0 + a1			# LN: 185 | 
	i0 = i7 - (0x8)			# LN: 185 | 
label_end_98:			# LN: 185 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 185 | 
for_end_6:			/* LN: 185 | CYCLE: 0 | RULES: () */ 
	jmp (endif_7)			# LN: 185 | 
cline_185_1:			/* LN: 192 | CYCLE: 0 | RULES: () */ 
endif_7:			/* LN: 183 | CYCLE: 0 | RULES: () */ 
else_7:			/* LN: 183 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_222)			# LN: 192 | 
__epilogue_222:			/* LN: 192 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x8)			# LN: 192 | 
	i7 -= 1			# LN: 192 | 
	i3 = xmem[i7]; i7 -= 1			# LN: 192, 192 | 
	i2 = xmem[i7]; i7 -= 1			# LN: 192, 192 | 
	ret			# LN: 192 | 



_second_order_IIR:			/* LN: 47 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 47 | 
	i7 += 1			# LN: 47 | 
	i7 = i7 + (0x7)			# LN: 47 | 
	i5 = i7 - (0x1)			# LN: 47 | 
	xmem[i5] = a0h			# LN: 47 | 
	i5 = i7 - (0x2)			# LN: 47 | 
	xmem[i5] = i0			# LN: 47 | 
	i0 = i7 - (0x3)			# LN: 47 | 
	xmem[i0] = i1			# LN: 47 | 
	i0 = i7 - (0x4)			# LN: 47 | 
	xmem[i0] = i4			# LN: 47 | 
cline_47_0:			/* LN: 49 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 49 | 
	a0 = 0			# LN: 49 | 
	xmem[i0] = a0g; i0 += 1			# LN: 49, 49 | 
	xmem[i0] = a0h; i0 += 1			# LN: 49, 49 | 
	xmem[i0] = a0l			# LN: 49 | 
cline_49_0:			/* LN: 51 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 51 | 
	i0 = xmem[i0]			# LN: 51 | 
	i1 = i7 - (0x1)			# LN: 51 | 
	x0 = xmem[i0]			# LN: 51 | 
	x1 = xmem[i1]			# LN: 51 | 
	i0 = i7 - (0x7)			# LN: 51 | 
	a0g = xmem[i0]; i0 += 1			# LN: 51, 51 | 
	a0h = xmem[i0]; i0 += 1			# LN: 51, 51 | 
	a0l = xmem[i0]			# LN: 51 | 
	a0 += x0 * x1			# LN: 51 | 
	i0 = i7 - (0x7)			# LN: 51 | 
	xmem[i0] = a0g; i0 += 1			# LN: 51, 51 | 
	xmem[i0] = a0h; i0 += 1			# LN: 51, 51 | 
	xmem[i0] = a0l			# LN: 51 | 
cline_51_0:			/* LN: 52 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 52 | 
	i0 = xmem[i0]			# LN: 52 | 
	i1 = i7 - (0x1)			# LN: 52 | 
	x0 = xmem[i0]			# LN: 52 | 
	x1 = xmem[i1]			# LN: 52 | 
	i0 = i7 - (0x7)			# LN: 52 | 
	a0g = xmem[i0]; i0 += 1			# LN: 52, 52 | 
	a0h = xmem[i0]; i0 += 1			# LN: 52, 52 | 
	a0l = xmem[i0]			# LN: 52 | 
	a0 += x0 * x1			# LN: 52 | 
	i0 = i7 - (0x7)			# LN: 52 | 
	xmem[i0] = a0g; i0 += 1			# LN: 52, 52 | 
	xmem[i0] = a0h; i0 += 1			# LN: 52, 52 | 
	xmem[i0] = a0l			# LN: 52 | 
cline_52_0:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 54 | 
	i0 = xmem[i0]			# LN: 54 | 
	i1 = i7 - (0x3)			# LN: 54 | 
	i0 += 1			# LN: 54 | 
	i1 = xmem[i1]			# LN: 54 | 
	x0 = xmem[i0]			# LN: 54 | 
	x1 = ymem[i1]			# LN: 54 | 
	i0 = i7 - (0x7)			# LN: 54 | 
	a0g = xmem[i0]; i0 += 1			# LN: 54, 54 | 
	a0h = xmem[i0]; i0 += 1			# LN: 54, 54 | 
	a0l = xmem[i0]			# LN: 54 | 
	a0 += x0 * x1			# LN: 54 | 
	i0 = i7 - (0x7)			# LN: 54 | 
	xmem[i0] = a0g; i0 += 1			# LN: 54, 54 | 
	xmem[i0] = a0h; i0 += 1			# LN: 54, 54 | 
	xmem[i0] = a0l			# LN: 54 | 
cline_54_0:			/* LN: 55 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 55 | 
	i0 = xmem[i0]			# LN: 55 | 
	i1 = i7 - (0x3)			# LN: 55 | 
	i0 += 1			# LN: 55 | 
	i1 = xmem[i1]			# LN: 55 | 
	x0 = xmem[i0]			# LN: 55 | 
	x1 = ymem[i1]			# LN: 55 | 
	i0 = i7 - (0x7)			# LN: 55 | 
	a0g = xmem[i0]; i0 += 1			# LN: 55, 55 | 
	a0h = xmem[i0]; i0 += 1			# LN: 55, 55 | 
	a0l = xmem[i0]			# LN: 55 | 
	a0 += x0 * x1			# LN: 55 | 
	i0 = i7 - (0x7)			# LN: 55 | 
	xmem[i0] = a0g; i0 += 1			# LN: 55, 55 | 
	xmem[i0] = a0h; i0 += 1			# LN: 55, 55 | 
	xmem[i0] = a0l			# LN: 55 | 
cline_55_0:			/* LN: 57 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 57 | 
	i0 = xmem[i0]			# LN: 57 | 
	i1 = i7 - (0x3)			# LN: 57 | 
	i0 += 2			# LN: 57 | 
	i1 = xmem[i1]			# LN: 57 | 
	x0 = xmem[i0]			# LN: 57 | 
	i1 += 1			# LN: 57 | 
	x1 = ymem[i1]			# LN: 57 | 
	i0 = i7 - (0x7)			# LN: 57 | 
	a0g = xmem[i0]; i0 += 1			# LN: 57, 57 | 
	a0h = xmem[i0]; i0 += 1			# LN: 57, 57 | 
	a0l = xmem[i0]			# LN: 57 | 
	a0 += x0 * x1			# LN: 57 | 
	i0 = i7 - (0x7)			# LN: 57 | 
	xmem[i0] = a0g; i0 += 1			# LN: 57, 57 | 
	xmem[i0] = a0h; i0 += 1			# LN: 57, 57 | 
	xmem[i0] = a0l			# LN: 57 | 
cline_57_0:			/* LN: 58 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 58 | 
	i0 = xmem[i0]			# LN: 58 | 
	i1 = i7 - (0x3)			# LN: 58 | 
	i0 += 2			# LN: 58 | 
	i1 = xmem[i1]			# LN: 58 | 
	x0 = xmem[i0]			# LN: 58 | 
	i1 += 1			# LN: 58 | 
	x1 = ymem[i1]			# LN: 58 | 
	i0 = i7 - (0x7)			# LN: 58 | 
	a0g = xmem[i0]; i0 += 1			# LN: 58, 58 | 
	a0h = xmem[i0]; i0 += 1			# LN: 58, 58 | 
	a0l = xmem[i0]			# LN: 58 | 
	a0 += x0 * x1			# LN: 58 | 
	i0 = i7 - (0x7)			# LN: 58 | 
	xmem[i0] = a0g; i0 += 1			# LN: 58, 58 | 
	xmem[i0] = a0h; i0 += 1			# LN: 58, 58 | 
	xmem[i0] = a0l			# LN: 58 | 
cline_58_0:			/* LN: 60 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 60 | 
	i0 = xmem[i0]			# LN: 60 | 
	i1 = i7 - (0x4)			# LN: 60 | 
	i0 = i0 + (0x4)			# LN: 60 | 
	i1 = xmem[i1]			# LN: 60 | 
	x0 = xmem[i0]			# LN: 60 | 
	x1 = ymem[i1]			# LN: 60 | 
	i0 = i7 - (0x7)			# LN: 60 | 
	a0g = xmem[i0]; i0 += 1			# LN: 60, 60 | 
	a0h = xmem[i0]; i0 += 1			# LN: 60, 60 | 
	a0l = xmem[i0]			# LN: 60 | 
	a0 -= x0 * x1			# LN: 60 | 
	i0 = i7 - (0x7)			# LN: 60 | 
	xmem[i0] = a0g; i0 += 1			# LN: 60, 60 | 
	xmem[i0] = a0h; i0 += 1			# LN: 60, 60 | 
	xmem[i0] = a0l			# LN: 60 | 
cline_60_0:			/* LN: 61 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 61 | 
	i0 = xmem[i0]			# LN: 61 | 
	i1 = i7 - (0x4)			# LN: 61 | 
	i0 = i0 + (0x4)			# LN: 61 | 
	i1 = xmem[i1]			# LN: 61 | 
	x0 = xmem[i0]			# LN: 61 | 
	x1 = ymem[i1]			# LN: 61 | 
	i0 = i7 - (0x7)			# LN: 61 | 
	a0g = xmem[i0]; i0 += 1			# LN: 61, 61 | 
	a0h = xmem[i0]; i0 += 1			# LN: 61, 61 | 
	a0l = xmem[i0]			# LN: 61 | 
	a0 -= x0 * x1			# LN: 61 | 
	i0 = i7 - (0x7)			# LN: 61 | 
	xmem[i0] = a0g; i0 += 1			# LN: 61, 61 | 
	xmem[i0] = a0h; i0 += 1			# LN: 61, 61 | 
	xmem[i0] = a0l			# LN: 61 | 
cline_61_0:			/* LN: 63 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 63 | 
	i0 = xmem[i0]			# LN: 63 | 
	i1 = i7 - (0x4)			# LN: 63 | 
	i0 = i0 + (0x5)			# LN: 63 | 
	i1 = xmem[i1]			# LN: 63 | 
	x0 = xmem[i0]			# LN: 63 | 
	i1 += 1			# LN: 63 | 
	x1 = ymem[i1]			# LN: 63 | 
	i0 = i7 - (0x7)			# LN: 63 | 
	a0g = xmem[i0]; i0 += 1			# LN: 63, 63 | 
	a0h = xmem[i0]; i0 += 1			# LN: 63, 63 | 
	a0l = xmem[i0]			# LN: 63 | 
	a0 -= x0 * x1			# LN: 63 | 
	i0 = i7 - (0x7)			# LN: 63 | 
	xmem[i0] = a0g; i0 += 1			# LN: 63, 63 | 
	xmem[i0] = a0h; i0 += 1			# LN: 63, 63 | 
	xmem[i0] = a0l			# LN: 63 | 
cline_63_0:			/* LN: 64 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 64 | 
	i0 = xmem[i0]			# LN: 64 | 
	i1 = i7 - (0x4)			# LN: 64 | 
	i0 = i0 + (0x5)			# LN: 64 | 
	i1 = xmem[i1]			# LN: 64 | 
	x0 = xmem[i0]			# LN: 64 | 
	i1 += 1			# LN: 64 | 
	x1 = ymem[i1]			# LN: 64 | 
	i0 = i7 - (0x7)			# LN: 64 | 
	a0g = xmem[i0]; i0 += 1			# LN: 64, 64 | 
	a0h = xmem[i0]; i0 += 1			# LN: 64, 64 | 
	a0l = xmem[i0]			# LN: 64 | 
	a0 -= x0 * x1			# LN: 64 | 
	i0 = i7 - (0x7)			# LN: 64 | 
	xmem[i0] = a0g; i0 += 1			# LN: 64, 64 | 
	xmem[i0] = a0h; i0 += 1			# LN: 64, 64 | 
	xmem[i0] = a0l			# LN: 64 | 
cline_64_0:			/* LN: 67 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 67 | 
	i0 = xmem[i0]			# LN: 67 | 
	i1 = i7 - (0x4)			# LN: 67 | 
	i1 = xmem[i1]			# LN: 67 | 
	i0 += 1			# LN: 67 | 
	a0 = ymem[i1]			# LN: 67 | 
	ymem[i0] = a0h			# LN: 67 | 
cline_67_0:			/* LN: 68 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 68 | 
	a0g = xmem[i0]; i0 += 1			# LN: 68, 68 | 
	a0h = xmem[i0]; i0 += 1			# LN: 68, 68 | 
	i1 = i7 - (0x4)			# LN: 68 | 
	i1 = xmem[i1]			# LN: 68 | 
	a0l = xmem[i0]			# LN: 68 | 
	ymem[i1] = a0			# LN: 68 | 
cline_68_0:			/* LN: 69 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 69 | 
	i0 = xmem[i0]			# LN: 69 | 
	i1 = i7 - (0x3)			# LN: 69 | 
	i1 = xmem[i1]			# LN: 69 | 
	i0 += 1			# LN: 69 | 
	a0 = ymem[i1]			# LN: 69 | 
	ymem[i0] = a0h			# LN: 69 | 
cline_69_0:			/* LN: 70 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 70 | 
	i1 = i7 - (0x3)			# LN: 70 | 
	i1 = xmem[i1]			# LN: 70 | 
	a0 = xmem[i0]			# LN: 70 | 
	ymem[i1] = a0h			# LN: 70 | 
cline_70_0:			/* LN: 72 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 72 | 
	a0g = xmem[i0]; i0 += 1			# LN: 72, 72 | 
	a0h = xmem[i0]; i0 += 1			# LN: 72, 72 | 
	a0l = xmem[i0]			# LN: 72 | 
	jmp (__epilogue_220)			# LN: 72 | 
cline_72_0:			/* LN: 73 | CYCLE: 0 | RULES: () */ 
__epilogue_220:			/* LN: 73 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x7)			# LN: 73 | 
	i7 -= 1			# LN: 73 | 
	ret			# LN: 73 | 
